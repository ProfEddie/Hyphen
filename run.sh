# for dataset in twitter15 twitter16 rumoureval pheme
for dataset in twitter16 pheme rumoureval antivax 
do
    for model in ssm4rc hyphen 
    do
        python run.py --manifold poincare --lr 0.001 --dataset $dataset --batch-size 32 --epochs 50 --max-sents 20 --max-coms 10 --max-com-len 10 --max-sent-len 20 --log-path logging/run --model $model --enable-log
    done
done
