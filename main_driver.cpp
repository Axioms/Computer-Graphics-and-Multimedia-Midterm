


#include "GLM/gtc/type_ptr.hpp"

#include <glad/gl.h>


#include "cs4722/callbacks.h"
#include "cs4722/buffer_utilities.h"
#include "cs4722/window.h"
#include "cs4722/compile_shaders.h"


static cs4722::view *the_view;
static GLuint program;
static GLuint transform_loc;
static std::vector<cs4722::artifact*> artifact_list;





void init()
{

    the_view = new cs4722::view();



    program = cs4722::compile_shaders("vertex_shader.glsl","fragment_shader.glsl");
    glUseProgram(program);

    transform_loc = glGetUniformLocation(program, "transform");

    glEnable(GL_DEPTH_TEST);

    auto* torus = new cs4722::torus();
    torus->color_set_ = std::vector<cs4722::color>({cs4722::x11::wheat1, cs4722::x11::wheat4});

    auto* artf = new cs4722::artifact_rotating();
    artf->the_shape = torus;
    //artf->world_transform.translate = glm::vec3(0, 0, 0);
    artf->world_transform.translate = glm::vec3(-2, -2, -2);
    artf->world_transform.scale = glm::vec3(1.2, 1.2, 1.2);
    artf->animation_transform.rotation_axis = glm::vec3(-1, -1, -1);
    //artf->animation_transform.rotation_center = glm::vec3(0,0,0);
    artf->animation_transform.rotation_center = glm::vec3(-2, -2, -2);
    artf->rotation_rate = M_PI / 5;

    artifact_list.push_back(artf);

    cs4722::init_buffers(program, artifact_list, "bPosition", "bColor");



}


void display()
{

    auto view_transform = glm::lookAt(the_view->camera_position,
                                      the_view->camera_position + the_view->camera_forward,
                                      the_view->camera_up);
    auto projection_transform = glm::infinitePerspective(the_view->perspective_fovy,
                                                         the_view->perspective_aspect, the_view->perspective_near);

    auto vp_transform = projection_transform * view_transform;

    static auto last_time = 0.0;
    auto time = glfwGetTime();
    auto delta_time = time - last_time;
    last_time = time;


    for (auto artf : artifact_list) {
        artf->animate(time, delta_time);
        auto model_transform = artf->animation_transform.matrix() * artf->world_transform.matrix();
        auto transform = vp_transform * model_transform;
        glUniformMatrix4fv(transform_loc, 1, GL_FALSE, glm::value_ptr(transform));


        glDrawArrays(GL_TRIANGLES, artf->the_shape->buffer_start, artf->the_shape->buffer_size);
    }
}


int main(int argc, char** argv)
{
    glfwInit();
    auto* window = cs4722::setup_window("Midterm Application", 0.8, 4/3);
    gladLoadGL(glfwGetProcAddress);
    glDebugMessageCallback(cs4722::message_callback, nullptr);
    init();
    the_view->perspective_aspect = 4/3;

    glfwSetWindowUserPointer(window, the_view);
    glfwSetCursorPosCallback(window, cs4722::move_callback);
    glfwSetKeyCallback(window, cs4722::general_key_callback);
    glfwSetWindowSizeCallback(window, cs4722::window_size_callback);

	
    while (!glfwWindowShouldClose(window))
    {
        glClearBufferfv(GL_COLOR, 0, cs4722::x11::ghost_white.as_float());
        glClear(GL_DEPTH_BUFFER_BIT);

        display();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
}
