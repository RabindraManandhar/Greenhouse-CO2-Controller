################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/backoffAlgorithm/source/backoff_algorithm.c 

OBJS += \
./src/backoffAlgorithm/source/backoff_algorithm.o 

C_DEPS += \
./src/backoffAlgorithm/source/backoff_algorithm.d 


# Each subdirectory must supply rules for building sources it contributes
src/backoffAlgorithm/source/%.o: ../src/backoffAlgorithm/source/%.c src/backoffAlgorithm/source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -DDEBUG -D__CODE_RED -D__NEWLIB__ -DCORE_M3 -D__USE_LPCOPEN -DCPP_USE_HEAP -D__LPC15XX__ -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_board_nxp_lpcxpresso_1549\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\mqtt_demo" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\lpc_chip_15xx\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\inc" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\FreeRTOS\src\portable\GCC\ARM_CM3" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\coreMQTT\source\interface" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\backoffAlgorithm\source\include" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\networking" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\uart" -I"D:\ArmProcessorsAndEmbeddedOS\Project\freertos_project-main\esp_socket\src\modbus" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m3 -mthumb -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


