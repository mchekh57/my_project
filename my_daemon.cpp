#include <unistd.h>
#include <sys/types.h>
#include <android/log.h>

#define LOG_TAG "MyDaemon"
#define LOGI(...)__android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_args__)

int main() {
    LOGI("MyDaemon started");

    while (true) {
        LOGI("Daemon is running...");
        sleep(10);
    }
    return 0;
}