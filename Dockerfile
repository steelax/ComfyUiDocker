from comfyui/base:latest as base
RUN apt-get update

RUN if cd /workspace/custom_nodes/comfyui_controlnet_aux; then git pull; else git clone \
https://github.com/Fannovel16/comfyui_controlnet_aux.git /workspace/custom_nodes/comfyui_controlnet_aux; fi

RUN if cd /workspace/custom_nodes/Derfuu_ComfyUI_ModdedNodes; then git pull; else git clone \
https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git /workspace/custom_nodes/Derfuu_ComfyUI_ModdedNodes; fi

RUN if cd /workspace/custom_nodes/ComfyUI_InstantID; then git pull; else git clone \
https://github.com/cubiq/ComfyUI_InstantID /workspace/custom_nodes/ComfyUI_InstantID; fi

RUN if cd /workspace/custom_nodes/sdxl_prompt_styler; then git pull; else git clone \
https://github.com/steelax/sdxl_prompt_styler.git /workspace/custom_nodes/sdxl_prompt_styler; fi

RUN if cd /workspace/custom_nodes/masquerade-nodes-comfyui; then git pull; else git clone \
https://github.com/BadCafeCode/masquerade-nodes-comfyui.git /workspace/custom_nodes/masquerade-nodes-comfyui; fi

RUN if cd /workspace/custom_nodes/lora-info; then git pull; else git clone \
https://github.com/jitcoder/lora-info.git /workspace/custom_nodes/lora-info; fi

RUN if cd /workspace/custom_nodes/comfyui-reactor-node; then git pull; else git clone \
https://github.com/Gourieff/comfyui-reactor-node.git /workspace/custom_nodes/comfyui-reactor-node; fi

RUN if cd /workspace/custom_nodes/masquerade-nodes-comfyui; then git pull; else git clone \
https://github.com/BadCafeCode/masquerade-nodes-comfyui.git /workspace/custom_nodes/masquerade-nodes-comfyui; fi

RUN if cd /workspace/custom_nodes/ComfyUI-Workflow-Component; then git pull; else git clone \
https://github.com/ltdrdata/ComfyUI-Workflow-Component.git /workspace/custom_nodes/ComfyUI-Workflow-Component; fi
RUN wget -O /1k3d68.onnx https://huggingface.co/MonsterMMORPG/tools/resolve/main/1k3d68.onnx
RUN wget -O /2d106det.onnx https://huggingface.co/MonsterMMORPG/tools/resolve/main/2d106det.onnx
RUN wget -O /genderage.onnx https://huggingface.co/MonsterMMORPG/tools/resolve/main/genderage.onnx
RUN wget -O /glintr100.onnx https://huggingface.co/MonsterMMORPG/tools/resolve/main/glintr100.onnx
RUN wget -O /scrfd_10g_bnkps.onnx https://huggingface.co/MonsterMMORPG/tools/resolve/main/scrfd_10g_bnkps.onnx

#RUN wget -O /leosamsHelloworldXL_helloworldXL70.safetensors \
# https://civitai.com/api/download/models/570138
#RUN wget -O /diffusion_pytorch_model.safetensors \
# https://huggingface.co/InstantX/InstantID/resolve/main/ControlNetModel/diffusion_pytorch_model.safetensors

#RUN wget -O /leosamsHelloworldXL_helloworldXL70.safetensors \
# https://civitai.com/api/download/models/570138

#RUN wget -O /ip-adapter.bin  https://huggingface.co/InstantX/InstantID/resolve/main/ip-adapter.bin
RUN mkdir -p /workspace/models/insightface/models/antelopev2/ \
&& mv /2d106det.onnx /workspace/models/insightface/models/antelopev2/2d106det.onnx \
&& mv /genderage.onnx /workspace/models/insightface/models/antelopev2/genderage.onnx \
&& mv /glintr100.onnx /workspace/models/insightface/models/antelopev2/glintr100.onnx \
&& mv /scrfd_10g_bnkps.onnx /workspace/models/insightface/models/antelopev2/scrfd_10g_bnkps.onnx \
&& mv /1k3d68.onnx /workspace/models/insightface/models/antelopev2/1k3d68.onnx

#RUN mkdir -p /workspace/models/instantid && mv /ip-adapter.bin /workspace/models/instantid/ip-adapter.bin


#RUN mv /diffusion_pytorch_model.safetensors /workspace/models/controlnet/diffusion_pytorch_model.safetensors

#RUN mkdir -p /workspace/models/checkpoints/ && \
#mv /leosamsHelloworldXL_helloworldXL70.safetensors /workspace/models/checkpoints/leosamsHelloworldXL_helloworldXL70.safetensors

#RUN wget -O /1987_Action_Figure_Playset_Packaging.safetensors https://civitai.com/api/download/models/153663
#RUN wget -O /Aether_Watercolor_and_Ink_v1_SDXL_LoRA.safetensors https://civitai.com/api/download/models/213650
#RUN wget -O /Clay_Animation.safetensors https://civitai.com/api/download/models/153730
#RUN wget -O /Dragon_Ball_XL.safetensors https://civitai.com/api/download/models/451414
#RUN wget -O /Felted_Doll_v1.0.safetensors https://civitai.com/api/download/models/174466
#RUN wget -O /LegoRay.safetensors https://civitai.com/api/download/models/371134
#RUN wget -O /PixarXL.safetensors https://civitai.com/api/download/models/211735
#RUN wget -O /PixelArtRedmond-Lite64.safetensors https://civitai.com/api/download/models/160844
#RUN wget -O /sk-kru3ger_style.safetensors https://civitai.com/api/download/models/142129

#RUN mv /1987_Action_Figure_Playset_Packaging.safetensors /workspace/models/loras/1987_Action_Figure_Playset_Packaging.safetensors
#RUN mv /Aether_Watercolor_and_Ink_v1_SDXL_LoRA.safetensors /workspace/models/loras/Aether_Watercolor_and_Ink_v1_SDXL_LoRA.safetensors
#RUN mv /Clay_Animation.safetensors /workspace/models/loras/Clay_Animation.safetensors
#RUN mv /Dragon_Ball_XL.safetensors /workspace/models/loras/Dragon_Ball_XL.safetensors
#RUN mv /Felted_Doll_v1.0.safetensors /workspace/models/loras/Felted_Doll_v1.0.safetensors
#RUN mv /LegoRay.safetensors /workspace/models/loras/LegoRay.safetensors
#RUN mv /PixarXL.safetensors /workspace/models/loras/PixarXL.safetensors
#RUN mv /PixelArtRedmond-Lite64.safetensors /workspace/models/loras/PixelArtRedmond-Lite64.safetensors
#RUN mv /sk-kru3ger_style.safetensors /workspace/models/loras/sk-kru3ger_style.safetensors

RUN rm /workspace/extra_model_paths.yaml
RUN git clone https://github.com/steelax/comfylocal /temp
RUN mv /temp/extra_model_paths.yaml /workspace/extra_model_paths.yaml


RUN pip install insightface==0.7.3
RUN pip install  -r https://raw.githubusercontent.com/comfyanonymous/ComfyUI/master/requirements.txt

#RUN pip install -r https://raw.githubusercontent.com/cubiq/ComfyUI_FaceAnalysis/main/requirements.txt 
RUN pip install -r https://raw.githubusercontent.com/cubiq/ComfyUI_InstantID/main/requirements.txt

RUN pip install mediapipe

RUN wget -O /workspace/models/insightface/inswapper_128.onnx https://github.com/facefusion/facefusion-assets/releases/download/models/inswapper_128.onnx

