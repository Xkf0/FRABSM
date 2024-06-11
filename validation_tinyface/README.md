
# TinyFace Evaluation

1. Download the evaluation split from https://qmul-tinyface.github.io/
   1. Extract the zip file under `<data_root>`. 
2. TinyFace Evaluation images have to be aligned and resized. 
   1. You may perform the alignment yourself with MTCNN or download by completing this form [link](https://forms.gle/Mz1LNrQwn1Bwjvo86).
   2. Do not re-distribute the aligned data. It is released for encouraging reproducibility of research. 
   But if it infringes the copy-right of the original tinyface dataset, the aligned version may be retracted.
   5. Extract the zip file under `<data_root>`
3. You may run evaluation with the example script below.

```
python validate_tinyface.py --data_root <data_root> --model_name ir50_ms1mv2
```
