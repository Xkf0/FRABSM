# FRABSM: Sample Mining Guided Adaptive Loss for Face Recognition

Github repository for FRABSM: A Robust Face Recognition Model based Sample Mining and Loss Functions.

# Installation

```
conda create --name FRABSM python=3.8.13 pytorch==1.13.1 torchvision cudatoolkit=11.7 -c pytorch
conda activate FRABSM
conda install scikit-image matplotlib pandas scikit-learn 
pip install -r requirements.txt
```

# Train (Preapring Dataset and Training Scripts)
- Please refer to [README_TRAIN.md](./README_TRAIN.md)

# Pretrained Models

| Arch | Dataset       | Method   | Link              |
|------|---------------|----------|-------------------|
| R50  | MS1MV2        | FRABSM  | [gdrive](https://drive.google.com/file/d/1-SLwrT7hP-aQazPchJTTTjq6crEZRUlX/view?usp=sharing)     |
| R100 | MS1MV2        | FRABSM  | [gdrive](https://drive.google.com/file/d/1-EPympkzOEuDuFkHqf5PFQzscDPZIKzO/view?usp=sharing)     |
| R100 | MS1MV2        | NFRABSM | [gdrive](https://drive.google.com/file/d/1-K25VMKqQw4zsqM_vnyLjD8-gBuMpc-j/view?usp=sharing)     |
| R100 | MS1MV3        | FRABSM  | [gdrive](https://drive.google.com/file/d/1-BRRYGs8ZuqY80gwhQQQ6y65bbCLZUYU/view?usp=sharing)     |
| R100 | MS1MV3        | NFRABSM | [gdrive](https://drive.google.com/file/d/1-C2g1Z2VlY0LJQDMuT8Wl7bDI6QjMacF/view?usp=sharing)     |
| R100 | WebFace4M     | FRABSM  | [gdrive](https://drive.google.com/file/d/1bEGuCK78RxB4IcG-kcxantdRkCvNmWRJ/view?usp=sharing)     |
| R100 | WebFace4M     | FRABSM* | [gdrive](https://drive.google.com/file/d/1--_CMVRK5uzTdHQ62-Dmf5xIe-e5SQD4/view?usp=sharing)     |
| R100 | WebFace4M     | NFRABSM | [gdrive](https://drive.google.com/file/d/1-7zYVk-dI4dOd90NK8bH_F6EFszOCtm5/view?usp=sharing)     |


# Inference

### Example using provided sample images

We provide the code for performing the preprocessing step. 
For using pretrained FRABSM model for inference, 

1. Download the pretrained FRABSM model, 
2. For using pretrained FRABSM on below 3 images, run 
```
python inference.py
```

|                                   img1                                    |                                   img2                                    |                                   img3                                    |
|:-------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| <img height="130" src="face_alignment/test_images/img1.jpg" width="130"/> | <img height="130" src="face_alignment/test_images/img2.jpg" width="130"/> | <img height="130" src="face_alignment/test_images/img3.jpg" width="130"/> |

The similarity score result should be 
```
tensor([[ 1.0000,  0.5357,  0.0398],
        [ 0.5357,  1.0000,  0.0898],
        [ 0.0398,  0.0898,  1.0000]], grad_fn=<MmBackward0>)
```

# Validation

## High Quality Image Validation Sets (LFW, CFPFP, CPLFW, CALFW, AGEDB, CFPFF, VGG2FP)
For evaluation on 7 HQ image validation sets with pretrained models,
refer to 
```
bash validation_hq/eval_5valsets_r50_ms1mv2.sh
```

## IJBB, IJBC Dataset

For IJBB, IJBC validation, refer to 
```
cd validation_ijb
bash eval_ijb_r50_ms1mv2.sh
```

## TinyFace

For TinyFace validation, refer to
```
cd ..
cd validation_tinyface
python validate_tinyface.py --data_root . --model_name ir50_ms1mv2
```
