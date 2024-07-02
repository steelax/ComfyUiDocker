FROM timpietruskyblibla/runpod-worker-comfy:2.2.0 as base

RUN git clone https://github.com/Fannovel16/comfyui_controlnet_aux.git comfyui/custom_nodes/comfyui_controlnet_aux
RUN git clone https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git comfyui/custom_nodes/Derfuu_ComfyUI_ModdedNodes
RUN git clone https://github.com/cubiq/ComfyUI_InstantID comfyui/custom_nodes/ComfyUI_InstantID
RUN git clone https://github.com/steelax/sdxl_prompt_styler.git comfyui/custom_nodes/sdxl_prompt_styler
RUN git clone https://github.com/BadCafeCode/masquerade-nodes-comfyui.git comfyui/custom_nodes/masquerade-nodes-comfyui
RUN git clone https://github.com/jitcoder/lora-info.git comfyui/custom_nodes/lora-info

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip3 install opencv-python==4.7.0.72
# Go back to the root


# Start the container
CMD /start.sh