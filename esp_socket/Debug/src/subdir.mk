################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/DigitalIoPin.cpp \
../src/Fmutex.cpp \
../src/FrontPage.cpp \
../src/GMP252.cpp \
../src/HMP60.cpp \
../src/IntegerItem.cpp \
../src/LiquidCrystal.cpp \
../src/MenuItem.cpp \
../src/SimpleMenu.cpp \
../src/TextItem.cpp \
../src/cr_cpp_config.cpp \
../src/cr_startup_lpc15xx.cpp \
../src/main.cpp \
../src/memory.cpp 

C_SRCS += \
../src/ITM_write.c \
../src/crp.c \
../src/heap_lock_monitor.c \
../src/sysinit.c 

OBJS += \
./src/DigitalIoPin.o \
./src/Fmutex.o \
./src/FrontPage.o \
./src/GMP252.o \
./src/HMP60.o \
./src/ITM_write.o \
./src/IntegerItem.o \
./src/LiquidCrystal.o \
./src/MenuItem.o \
./src/SimpleMenu.o \
./src/TextItem.o \
./src/cr_cpp_config.o \
./src/cr_startup_lpc15xx.o \
./src/crp.o \
./src/heap_lock_monitor.o \
./src/main.o \
./src/memory.o \
./src/sysinit.o 

CPP_DEPS += \
./src/DigitalIoPin.d \
./src/Fmutex.d \
./src/FrontPage.d \
./src/GMP252.d \
./src/HMP60.d \
./src/IntegerItem.d \
./src/LiquidCrystal.d \
./src/MenuItem.d \
./src/SimpleMenu.d \
./src/TextItem.d \
./src/cr_cpp_config.d \
./src/cr_startup_lpc15xx.d \
./src/main.d \
./src/memory.d 

C_DEPS += \
./src/ITM_write.d \
./src/crp.d \
./src/heap_lock_monitor.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=c++11 -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC15XX__ -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_board_nxp_lpcxpresso_1549\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\mqtt_demo" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_chip_15xx\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\portable\GCC\ARM_CM3" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\interface" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\backoffAlgorithm\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\networking" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\uart" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\modbus" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m3 -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC15XX__ -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_board_nxp_lpcxpresso_1549\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\mqtt_demo" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_chip_15xx\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\portable\GCC\ARM_CM3" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\interface" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\backoffAlgorithm\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\networking" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\uart" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\modbus" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m3 -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


