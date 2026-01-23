; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695602 () Bool)

(assert start!695602)

(declare-fun bs!1887797 () Bool)

(declare-fun b!7138012 () Bool)

(declare-fun b!7138017 () Bool)

(assert (= bs!1887797 (and b!7138012 b!7138017)))

(declare-fun lambda!434055 () Int)

(declare-fun lambda!434053 () Int)

(assert (=> bs!1887797 (not (= lambda!434055 lambda!434053))))

(declare-fun b!7138006 () Bool)

(declare-fun res!2912583 () Bool)

(declare-fun e!4289819 () Bool)

(assert (=> b!7138006 (=> res!2912583 e!4289819)))

(declare-datatypes ((C!36558 0))(
  ( (C!36559 (val!28227 Int)) )
))
(declare-datatypes ((Regex!18142 0))(
  ( (ElementMatch!18142 (c!1331129 C!36558)) (Concat!26987 (regOne!36796 Regex!18142) (regTwo!36796 Regex!18142)) (EmptyExpr!18142) (Star!18142 (reg!18471 Regex!18142)) (EmptyLang!18142) (Union!18142 (regOne!36797 Regex!18142) (regTwo!36797 Regex!18142)) )
))
(declare-datatypes ((List!69362 0))(
  ( (Nil!69238) (Cons!69238 (h!75686 Regex!18142) (t!383379 List!69362)) )
))
(declare-datatypes ((Context!14272 0))(
  ( (Context!14273 (exprs!7636 List!69362)) )
))
(declare-fun lt!2566424 () Context!14272)

(declare-fun nullableContext!141 (Context!14272) Bool)

(assert (=> b!7138006 (= res!2912583 (not (nullableContext!141 lt!2566424)))))

(declare-fun b!7138007 () Bool)

(declare-fun e!4289820 () Bool)

(declare-fun tp_is_empty!45921 () Bool)

(assert (=> b!7138007 (= e!4289820 tp_is_empty!45921)))

(declare-fun b!7138008 () Bool)

(declare-fun res!2912590 () Bool)

(declare-fun e!4289821 () Bool)

(assert (=> b!7138008 (=> res!2912590 e!4289821)))

(declare-fun z!3189 () (Set Context!14272))

(declare-fun lambda!434054 () Int)

(declare-fun exists!3907 ((Set Context!14272) Int) Bool)

(assert (=> b!7138008 (= res!2912590 (not (exists!3907 z!3189 lambda!434054)))))

(declare-fun setRes!52432 () Bool)

(declare-fun tp!1968226 () Bool)

(declare-fun setElem!52432 () Context!14272)

(declare-fun setNonEmpty!52432 () Bool)

(declare-fun e!4289817 () Bool)

(declare-fun inv!88420 (Context!14272) Bool)

(assert (=> setNonEmpty!52432 (= setRes!52432 (and tp!1968226 (inv!88420 setElem!52432) e!4289817))))

(declare-fun setRest!52432 () (Set Context!14272))

(assert (=> setNonEmpty!52432 (= z!3189 (set.union (set.insert setElem!52432 (as set.empty (Set Context!14272))) setRest!52432))))

(declare-fun b!7138009 () Bool)

(declare-fun res!2912588 () Bool)

(assert (=> b!7138009 (=> res!2912588 e!4289821)))

(declare-fun lt!2566423 () List!69362)

(declare-fun exists!3908 (List!69362 Int) Bool)

(assert (=> b!7138009 (= res!2912588 (exists!3908 lt!2566423 lambda!434053))))

(declare-fun b!7138010 () Bool)

(declare-fun tp!1968223 () Bool)

(assert (=> b!7138010 (= e!4289820 tp!1968223)))

(declare-fun setIsEmpty!52432 () Bool)

(assert (=> setIsEmpty!52432 setRes!52432))

(declare-fun b!7138011 () Bool)

(declare-fun e!4289818 () Bool)

(declare-fun e!4289822 () Bool)

(assert (=> b!7138011 (= e!4289818 e!4289822)))

(declare-fun res!2912582 () Bool)

(assert (=> b!7138011 (=> (not res!2912582) (not e!4289822))))

(declare-fun r!11483 () Regex!18142)

(declare-datatypes ((List!69363 0))(
  ( (Nil!69239) (Cons!69239 (h!75687 Context!14272) (t!383380 List!69363)) )
))
(declare-fun lt!2566421 () List!69363)

(declare-fun unfocusZipper!2490 (List!69363) Regex!18142)

(assert (=> b!7138011 (= res!2912582 (= r!11483 (unfocusZipper!2490 lt!2566421)))))

(declare-fun toList!11173 ((Set Context!14272)) List!69363)

(assert (=> b!7138011 (= lt!2566421 (toList!11173 z!3189))))

(declare-fun res!2912585 () Bool)

(assert (=> start!695602 (=> (not res!2912585) (not e!4289818))))

(declare-fun validRegex!9309 (Regex!18142) Bool)

(assert (=> start!695602 (= res!2912585 (validRegex!9309 r!11483))))

(assert (=> start!695602 e!4289818))

(assert (=> start!695602 e!4289820))

(declare-fun condSetEmpty!52432 () Bool)

(assert (=> start!695602 (= condSetEmpty!52432 (= z!3189 (as set.empty (Set Context!14272))))))

(assert (=> start!695602 setRes!52432))

(declare-fun forall!16980 (List!69362 Int) Bool)

(assert (=> b!7138012 (= e!4289819 (forall!16980 (exprs!7636 lt!2566424) lambda!434055))))

(declare-fun lt!2566427 () Regex!18142)

(declare-fun nullable!7662 (Regex!18142) Bool)

(assert (=> b!7138012 (= (nullable!7662 lt!2566427) (forall!16980 (exprs!7636 lt!2566424) lambda!434053))))

(declare-datatypes ((Unit!163143 0))(
  ( (Unit!163144) )
))
(declare-fun lt!2566425 () Unit!163143)

(declare-fun nullableGenConcatSpec!3 (Regex!18142 List!69362) Unit!163143)

(assert (=> b!7138012 (= lt!2566425 (nullableGenConcatSpec!3 lt!2566427 (exprs!7636 lt!2566424)))))

(declare-fun contains!20584 (List!69362 Regex!18142) Bool)

(assert (=> b!7138012 (contains!20584 lt!2566423 lt!2566427)))

(declare-fun generalisedConcat!2333 (List!69362) Regex!18142)

(assert (=> b!7138012 (= lt!2566427 (generalisedConcat!2333 (exprs!7636 lt!2566424)))))

(declare-fun lt!2566426 () Unit!163143)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!7 (List!69363 Context!14272) Unit!163143)

(assert (=> b!7138012 (= lt!2566426 (lemmaZipperContainsContextThenUnfocusZipperListContains!7 lt!2566421 lt!2566424))))

(declare-fun b!7138013 () Bool)

(declare-fun tp!1968228 () Bool)

(declare-fun tp!1968225 () Bool)

(assert (=> b!7138013 (= e!4289820 (and tp!1968228 tp!1968225))))

(declare-fun b!7138014 () Bool)

(declare-fun res!2912587 () Bool)

(assert (=> b!7138014 (=> res!2912587 e!4289821)))

(declare-fun lt!2566420 () Bool)

(assert (=> b!7138014 (= res!2912587 lt!2566420)))

(declare-fun b!7138015 () Bool)

(declare-fun e!4289823 () Bool)

(assert (=> b!7138015 (= e!4289822 e!4289823)))

(declare-fun res!2912586 () Bool)

(assert (=> b!7138015 (=> (not res!2912586) (not e!4289823))))

(declare-fun lt!2566422 () Regex!18142)

(assert (=> b!7138015 (= res!2912586 (= r!11483 lt!2566422))))

(declare-fun generalisedUnion!2647 (List!69362) Regex!18142)

(assert (=> b!7138015 (= lt!2566422 (generalisedUnion!2647 lt!2566423))))

(declare-fun unfocusZipperList!2183 (List!69363) List!69362)

(assert (=> b!7138015 (= lt!2566423 (unfocusZipperList!2183 lt!2566421))))

(declare-fun b!7138016 () Bool)

(assert (=> b!7138016 (= e!4289821 e!4289819)))

(declare-fun res!2912584 () Bool)

(assert (=> b!7138016 (=> res!2912584 e!4289819)))

(assert (=> b!7138016 (= res!2912584 (not (set.member lt!2566424 z!3189)))))

(declare-fun getWitness!1905 ((Set Context!14272) Int) Context!14272)

(assert (=> b!7138016 (= lt!2566424 (getWitness!1905 z!3189 lambda!434054))))

(assert (=> b!7138017 (= e!4289823 (not e!4289821))))

(declare-fun res!2912589 () Bool)

(assert (=> b!7138017 (=> res!2912589 e!4289821)))

(assert (=> b!7138017 (= res!2912589 (not (= lt!2566420 (exists!3908 lt!2566423 lambda!434053))))))

(assert (=> b!7138017 (= lt!2566420 (exists!3908 lt!2566423 lambda!434053))))

(assert (=> b!7138017 (= lt!2566420 (nullable!7662 lt!2566422))))

(declare-fun lt!2566419 () Unit!163143)

(declare-fun nullableGenUnionSpec!31 (Regex!18142 List!69362) Unit!163143)

(assert (=> b!7138017 (= lt!2566419 (nullableGenUnionSpec!31 lt!2566422 lt!2566423))))

(declare-fun b!7138018 () Bool)

(declare-fun tp!1968222 () Bool)

(assert (=> b!7138018 (= e!4289817 tp!1968222)))

(declare-fun b!7138019 () Bool)

(declare-fun tp!1968227 () Bool)

(declare-fun tp!1968224 () Bool)

(assert (=> b!7138019 (= e!4289820 (and tp!1968227 tp!1968224))))

(assert (= (and start!695602 res!2912585) b!7138011))

(assert (= (and b!7138011 res!2912582) b!7138015))

(assert (= (and b!7138015 res!2912586) b!7138017))

(assert (= (and b!7138017 (not res!2912589)) b!7138014))

(assert (= (and b!7138014 (not res!2912587)) b!7138009))

(assert (= (and b!7138009 (not res!2912588)) b!7138008))

(assert (= (and b!7138008 (not res!2912590)) b!7138016))

(assert (= (and b!7138016 (not res!2912584)) b!7138006))

(assert (= (and b!7138006 (not res!2912583)) b!7138012))

(assert (= (and start!695602 (is-ElementMatch!18142 r!11483)) b!7138007))

(assert (= (and start!695602 (is-Concat!26987 r!11483)) b!7138013))

(assert (= (and start!695602 (is-Star!18142 r!11483)) b!7138010))

(assert (= (and start!695602 (is-Union!18142 r!11483)) b!7138019))

(assert (= (and start!695602 condSetEmpty!52432) setIsEmpty!52432))

(assert (= (and start!695602 (not condSetEmpty!52432)) setNonEmpty!52432))

(assert (= setNonEmpty!52432 b!7138018))

(declare-fun m!7853638 () Bool)

(assert (=> b!7138006 m!7853638))

(declare-fun m!7853640 () Bool)

(assert (=> b!7138017 m!7853640))

(assert (=> b!7138017 m!7853640))

(declare-fun m!7853642 () Bool)

(assert (=> b!7138017 m!7853642))

(declare-fun m!7853644 () Bool)

(assert (=> b!7138017 m!7853644))

(declare-fun m!7853646 () Bool)

(assert (=> b!7138015 m!7853646))

(declare-fun m!7853648 () Bool)

(assert (=> b!7138015 m!7853648))

(declare-fun m!7853650 () Bool)

(assert (=> setNonEmpty!52432 m!7853650))

(declare-fun m!7853652 () Bool)

(assert (=> b!7138008 m!7853652))

(declare-fun m!7853654 () Bool)

(assert (=> start!695602 m!7853654))

(assert (=> b!7138009 m!7853640))

(declare-fun m!7853656 () Bool)

(assert (=> b!7138011 m!7853656))

(declare-fun m!7853658 () Bool)

(assert (=> b!7138011 m!7853658))

(declare-fun m!7853660 () Bool)

(assert (=> b!7138012 m!7853660))

(declare-fun m!7853662 () Bool)

(assert (=> b!7138012 m!7853662))

(declare-fun m!7853664 () Bool)

(assert (=> b!7138012 m!7853664))

(declare-fun m!7853666 () Bool)

(assert (=> b!7138012 m!7853666))

(declare-fun m!7853668 () Bool)

(assert (=> b!7138012 m!7853668))

(declare-fun m!7853670 () Bool)

(assert (=> b!7138012 m!7853670))

(declare-fun m!7853672 () Bool)

(assert (=> b!7138012 m!7853672))

(declare-fun m!7853674 () Bool)

(assert (=> b!7138016 m!7853674))

(declare-fun m!7853676 () Bool)

(assert (=> b!7138016 m!7853676))

(push 1)

(assert (not b!7138008))

(assert (not b!7138017))

(assert (not b!7138016))

(assert (not b!7138019))

(assert (not b!7138015))

(assert (not start!695602))

(assert (not b!7138013))

(assert (not b!7138011))

(assert (not b!7138006))

(assert (not b!7138009))

(assert (not b!7138012))

(assert tp_is_empty!45921)

(assert (not setNonEmpty!52432))

(assert (not b!7138010))

(assert (not b!7138018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226798 () Bool)

(declare-fun e!4289847 () Bool)

(assert (=> d!2226798 e!4289847))

(declare-fun res!2912620 () Bool)

(assert (=> d!2226798 (=> (not res!2912620) (not e!4289847))))

(declare-fun lt!2566457 () Context!14272)

(declare-fun dynLambda!28162 (Int Context!14272) Bool)

(assert (=> d!2226798 (= res!2912620 (dynLambda!28162 lambda!434054 lt!2566457))))

(declare-fun getWitness!1907 (List!69363 Int) Context!14272)

(assert (=> d!2226798 (= lt!2566457 (getWitness!1907 (toList!11173 z!3189) lambda!434054))))

(assert (=> d!2226798 (exists!3907 z!3189 lambda!434054)))

(assert (=> d!2226798 (= (getWitness!1905 z!3189 lambda!434054) lt!2566457)))

(declare-fun b!7138064 () Bool)

(assert (=> b!7138064 (= e!4289847 (set.member lt!2566457 z!3189))))

(assert (= (and d!2226798 res!2912620) b!7138064))

(declare-fun b_lambda!272429 () Bool)

(assert (=> (not b_lambda!272429) (not d!2226798)))

(declare-fun m!7853718 () Bool)

(assert (=> d!2226798 m!7853718))

(assert (=> d!2226798 m!7853658))

(assert (=> d!2226798 m!7853658))

(declare-fun m!7853720 () Bool)

(assert (=> d!2226798 m!7853720))

(assert (=> d!2226798 m!7853652))

(declare-fun m!7853722 () Bool)

(assert (=> b!7138064 m!7853722))

(assert (=> b!7138016 d!2226798))

(declare-fun bs!1887799 () Bool)

(declare-fun d!2226802 () Bool)

(assert (= bs!1887799 (and d!2226802 b!7138017)))

(declare-fun lambda!434075 () Int)

(assert (=> bs!1887799 (not (= lambda!434075 lambda!434053))))

(declare-fun bs!1887800 () Bool)

(assert (= bs!1887800 (and d!2226802 b!7138012)))

(assert (=> bs!1887800 (= lambda!434075 lambda!434055)))

(declare-fun b!7138092 () Bool)

(declare-fun e!4289868 () Bool)

(declare-fun isEmpty!40052 (List!69362) Bool)

(assert (=> b!7138092 (= e!4289868 (isEmpty!40052 (t!383379 lt!2566423)))))

(declare-fun b!7138093 () Bool)

(declare-fun e!4289870 () Regex!18142)

(assert (=> b!7138093 (= e!4289870 (Union!18142 (h!75686 lt!2566423) (generalisedUnion!2647 (t!383379 lt!2566423))))))

(declare-fun b!7138094 () Bool)

(declare-fun e!4289867 () Regex!18142)

(assert (=> b!7138094 (= e!4289867 (h!75686 lt!2566423))))

(declare-fun b!7138095 () Bool)

(declare-fun e!4289871 () Bool)

(declare-fun lt!2566463 () Regex!18142)

(declare-fun isEmptyLang!2084 (Regex!18142) Bool)

(assert (=> b!7138095 (= e!4289871 (isEmptyLang!2084 lt!2566463))))

(declare-fun b!7138096 () Bool)

(declare-fun e!4289866 () Bool)

(declare-fun head!14493 (List!69362) Regex!18142)

(assert (=> b!7138096 (= e!4289866 (= lt!2566463 (head!14493 lt!2566423)))))

(declare-fun b!7138097 () Bool)

(declare-fun isUnion!1512 (Regex!18142) Bool)

(assert (=> b!7138097 (= e!4289866 (isUnion!1512 lt!2566463))))

(declare-fun b!7138098 () Bool)

(assert (=> b!7138098 (= e!4289870 EmptyLang!18142)))

(declare-fun b!7138099 () Bool)

(assert (=> b!7138099 (= e!4289867 e!4289870)))

(declare-fun c!1331144 () Bool)

(assert (=> b!7138099 (= c!1331144 (is-Cons!69238 lt!2566423))))

(declare-fun b!7138100 () Bool)

(declare-fun e!4289869 () Bool)

(assert (=> b!7138100 (= e!4289869 e!4289871)))

(declare-fun c!1331143 () Bool)

(assert (=> b!7138100 (= c!1331143 (isEmpty!40052 lt!2566423))))

(assert (=> d!2226802 e!4289869))

(declare-fun res!2912631 () Bool)

(assert (=> d!2226802 (=> (not res!2912631) (not e!4289869))))

(assert (=> d!2226802 (= res!2912631 (validRegex!9309 lt!2566463))))

(assert (=> d!2226802 (= lt!2566463 e!4289867)))

(declare-fun c!1331146 () Bool)

(assert (=> d!2226802 (= c!1331146 e!4289868)))

(declare-fun res!2912632 () Bool)

(assert (=> d!2226802 (=> (not res!2912632) (not e!4289868))))

(assert (=> d!2226802 (= res!2912632 (is-Cons!69238 lt!2566423))))

(assert (=> d!2226802 (forall!16980 lt!2566423 lambda!434075)))

(assert (=> d!2226802 (= (generalisedUnion!2647 lt!2566423) lt!2566463)))

(declare-fun b!7138091 () Bool)

(assert (=> b!7138091 (= e!4289871 e!4289866)))

(declare-fun c!1331145 () Bool)

(declare-fun tail!13963 (List!69362) List!69362)

(assert (=> b!7138091 (= c!1331145 (isEmpty!40052 (tail!13963 lt!2566423)))))

(assert (= (and d!2226802 res!2912632) b!7138092))

(assert (= (and d!2226802 c!1331146) b!7138094))

(assert (= (and d!2226802 (not c!1331146)) b!7138099))

(assert (= (and b!7138099 c!1331144) b!7138093))

(assert (= (and b!7138099 (not c!1331144)) b!7138098))

(assert (= (and d!2226802 res!2912631) b!7138100))

(assert (= (and b!7138100 c!1331143) b!7138095))

(assert (= (and b!7138100 (not c!1331143)) b!7138091))

(assert (= (and b!7138091 c!1331145) b!7138096))

(assert (= (and b!7138091 (not c!1331145)) b!7138097))

(declare-fun m!7853730 () Bool)

(assert (=> b!7138091 m!7853730))

(assert (=> b!7138091 m!7853730))

(declare-fun m!7853732 () Bool)

(assert (=> b!7138091 m!7853732))

(declare-fun m!7853734 () Bool)

(assert (=> b!7138097 m!7853734))

(declare-fun m!7853736 () Bool)

(assert (=> d!2226802 m!7853736))

(declare-fun m!7853738 () Bool)

(assert (=> d!2226802 m!7853738))

(declare-fun m!7853740 () Bool)

(assert (=> b!7138093 m!7853740))

(declare-fun m!7853742 () Bool)

(assert (=> b!7138092 m!7853742))

(declare-fun m!7853744 () Bool)

(assert (=> b!7138100 m!7853744))

(declare-fun m!7853746 () Bool)

(assert (=> b!7138095 m!7853746))

(declare-fun m!7853748 () Bool)

(assert (=> b!7138096 m!7853748))

(assert (=> b!7138015 d!2226802))

(declare-fun bs!1887803 () Bool)

(declare-fun d!2226806 () Bool)

(assert (= bs!1887803 (and d!2226806 b!7138017)))

(declare-fun lambda!434083 () Int)

(assert (=> bs!1887803 (not (= lambda!434083 lambda!434053))))

(declare-fun bs!1887804 () Bool)

(assert (= bs!1887804 (and d!2226806 b!7138012)))

(assert (=> bs!1887804 (= lambda!434083 lambda!434055)))

(declare-fun bs!1887805 () Bool)

(assert (= bs!1887805 (and d!2226806 d!2226802)))

(assert (=> bs!1887805 (= lambda!434083 lambda!434075)))

(declare-fun lt!2566469 () List!69362)

(assert (=> d!2226806 (forall!16980 lt!2566469 lambda!434083)))

(declare-fun e!4289874 () List!69362)

(assert (=> d!2226806 (= lt!2566469 e!4289874)))

(declare-fun c!1331149 () Bool)

(assert (=> d!2226806 (= c!1331149 (is-Cons!69239 lt!2566421))))

(assert (=> d!2226806 (= (unfocusZipperList!2183 lt!2566421) lt!2566469)))

(declare-fun b!7138105 () Bool)

(assert (=> b!7138105 (= e!4289874 (Cons!69238 (generalisedConcat!2333 (exprs!7636 (h!75687 lt!2566421))) (unfocusZipperList!2183 (t!383380 lt!2566421))))))

(declare-fun b!7138106 () Bool)

(assert (=> b!7138106 (= e!4289874 Nil!69238)))

(assert (= (and d!2226806 c!1331149) b!7138105))

(assert (= (and d!2226806 (not c!1331149)) b!7138106))

(declare-fun m!7853750 () Bool)

(assert (=> d!2226806 m!7853750))

(declare-fun m!7853752 () Bool)

(assert (=> b!7138105 m!7853752))

(declare-fun m!7853754 () Bool)

(assert (=> b!7138105 m!7853754))

(assert (=> b!7138015 d!2226806))

(declare-fun bs!1887807 () Bool)

(declare-fun d!2226808 () Bool)

(assert (= bs!1887807 (and d!2226808 b!7138017)))

(declare-fun lambda!434087 () Int)

(assert (=> bs!1887807 (= lambda!434087 lambda!434053)))

(declare-fun bs!1887808 () Bool)

(assert (= bs!1887808 (and d!2226808 b!7138012)))

(assert (=> bs!1887808 (not (= lambda!434087 lambda!434055))))

(declare-fun bs!1887809 () Bool)

(assert (= bs!1887809 (and d!2226808 d!2226802)))

(assert (=> bs!1887809 (not (= lambda!434087 lambda!434075))))

(declare-fun bs!1887810 () Bool)

(assert (= bs!1887810 (and d!2226808 d!2226806)))

(assert (=> bs!1887810 (not (= lambda!434087 lambda!434083))))

(assert (=> d!2226808 (= (nullableContext!141 lt!2566424) (forall!16980 (exprs!7636 lt!2566424) lambda!434087))))

(declare-fun bs!1887811 () Bool)

(assert (= bs!1887811 d!2226808))

(declare-fun m!7853762 () Bool)

(assert (=> bs!1887811 m!7853762))

(assert (=> b!7138006 d!2226808))

(declare-fun bs!1887812 () Bool)

(declare-fun d!2226812 () Bool)

(assert (= bs!1887812 (and d!2226812 b!7138012)))

(declare-fun lambda!434090 () Int)

(assert (=> bs!1887812 (not (= lambda!434090 lambda!434055))))

(declare-fun bs!1887813 () Bool)

(assert (= bs!1887813 (and d!2226812 d!2226802)))

(assert (=> bs!1887813 (not (= lambda!434090 lambda!434075))))

(declare-fun bs!1887814 () Bool)

(assert (= bs!1887814 (and d!2226812 d!2226806)))

(assert (=> bs!1887814 (not (= lambda!434090 lambda!434083))))

(declare-fun bs!1887815 () Bool)

(assert (= bs!1887815 (and d!2226812 d!2226808)))

(assert (=> bs!1887815 (not (= lambda!434090 lambda!434087))))

(declare-fun bs!1887816 () Bool)

(assert (= bs!1887816 (and d!2226812 b!7138017)))

(assert (=> bs!1887816 (not (= lambda!434090 lambda!434053))))

(assert (=> d!2226812 true))

(declare-fun order!28523 () Int)

(declare-fun dynLambda!28163 (Int Int) Int)

(assert (=> d!2226812 (< (dynLambda!28163 order!28523 lambda!434053) (dynLambda!28163 order!28523 lambda!434090))))

(assert (=> d!2226812 (= (exists!3908 lt!2566423 lambda!434053) (not (forall!16980 lt!2566423 lambda!434090)))))

(declare-fun bs!1887817 () Bool)

(assert (= bs!1887817 d!2226812))

(declare-fun m!7853764 () Bool)

(assert (=> bs!1887817 m!7853764))

(assert (=> b!7138009 d!2226812))

(declare-fun bs!1887818 () Bool)

(declare-fun d!2226814 () Bool)

(assert (= bs!1887818 (and d!2226814 d!2226812)))

(declare-fun lambda!434093 () Int)

(assert (=> bs!1887818 (not (= lambda!434093 lambda!434090))))

(declare-fun bs!1887819 () Bool)

(assert (= bs!1887819 (and d!2226814 b!7138012)))

(assert (=> bs!1887819 (= lambda!434093 lambda!434055)))

(declare-fun bs!1887820 () Bool)

(assert (= bs!1887820 (and d!2226814 d!2226802)))

(assert (=> bs!1887820 (= lambda!434093 lambda!434075)))

(declare-fun bs!1887821 () Bool)

(assert (= bs!1887821 (and d!2226814 d!2226806)))

(assert (=> bs!1887821 (= lambda!434093 lambda!434083)))

(declare-fun bs!1887822 () Bool)

(assert (= bs!1887822 (and d!2226814 d!2226808)))

(assert (=> bs!1887822 (not (= lambda!434093 lambda!434087))))

(declare-fun bs!1887823 () Bool)

(assert (= bs!1887823 (and d!2226814 b!7138017)))

(assert (=> bs!1887823 (not (= lambda!434093 lambda!434053))))

(assert (=> d!2226814 (= (inv!88420 setElem!52432) (forall!16980 (exprs!7636 setElem!52432) lambda!434093))))

(declare-fun bs!1887824 () Bool)

(assert (= bs!1887824 d!2226814))

(declare-fun m!7853766 () Bool)

(assert (=> bs!1887824 m!7853766))

(assert (=> setNonEmpty!52432 d!2226814))

(declare-fun bs!1887825 () Bool)

(declare-fun d!2226816 () Bool)

(assert (= bs!1887825 (and d!2226816 d!2226812)))

(declare-fun lambda!434098 () Int)

(assert (=> bs!1887825 (not (= lambda!434098 lambda!434090))))

(declare-fun bs!1887826 () Bool)

(assert (= bs!1887826 (and d!2226816 b!7138012)))

(assert (=> bs!1887826 (= lambda!434098 lambda!434055)))

(declare-fun bs!1887827 () Bool)

(assert (= bs!1887827 (and d!2226816 d!2226806)))

(assert (=> bs!1887827 (= lambda!434098 lambda!434083)))

(declare-fun bs!1887828 () Bool)

(assert (= bs!1887828 (and d!2226816 d!2226808)))

(assert (=> bs!1887828 (not (= lambda!434098 lambda!434087))))

(declare-fun bs!1887829 () Bool)

(assert (= bs!1887829 (and d!2226816 b!7138017)))

(assert (=> bs!1887829 (not (= lambda!434098 lambda!434053))))

(declare-fun bs!1887830 () Bool)

(assert (= bs!1887830 (and d!2226816 d!2226802)))

(assert (=> bs!1887830 (= lambda!434098 lambda!434075)))

(declare-fun bs!1887831 () Bool)

(assert (= bs!1887831 (and d!2226816 d!2226814)))

(assert (=> bs!1887831 (= lambda!434098 lambda!434093)))

(declare-fun lambda!434099 () Int)

(assert (=> bs!1887825 (not (= lambda!434099 lambda!434090))))

(assert (=> bs!1887826 (not (= lambda!434099 lambda!434055))))

(assert (=> bs!1887828 (= lambda!434099 lambda!434087)))

(assert (=> bs!1887829 (= lambda!434099 lambda!434053)))

(assert (=> bs!1887830 (not (= lambda!434099 lambda!434075))))

(assert (=> bs!1887831 (not (= lambda!434099 lambda!434093))))

(declare-fun bs!1887832 () Bool)

(assert (= bs!1887832 d!2226816))

(assert (=> bs!1887832 (not (= lambda!434099 lambda!434098))))

(assert (=> bs!1887827 (not (= lambda!434099 lambda!434083))))

(assert (=> d!2226816 (= (nullable!7662 lt!2566427) (forall!16980 (exprs!7636 lt!2566424) lambda!434099))))

(declare-fun lt!2566472 () Unit!163143)

(declare-fun choose!55176 (Regex!18142 List!69362) Unit!163143)

(assert (=> d!2226816 (= lt!2566472 (choose!55176 lt!2566427 (exprs!7636 lt!2566424)))))

(assert (=> d!2226816 (forall!16980 (exprs!7636 lt!2566424) lambda!434098)))

(assert (=> d!2226816 (= (nullableGenConcatSpec!3 lt!2566427 (exprs!7636 lt!2566424)) lt!2566472)))

(assert (=> bs!1887832 m!7853672))

(declare-fun m!7853768 () Bool)

(assert (=> bs!1887832 m!7853768))

(declare-fun m!7853770 () Bool)

(assert (=> bs!1887832 m!7853770))

(declare-fun m!7853772 () Bool)

(assert (=> bs!1887832 m!7853772))

(assert (=> b!7138012 d!2226816))

(declare-fun d!2226818 () Bool)

(declare-fun nullableFct!2975 (Regex!18142) Bool)

(assert (=> d!2226818 (= (nullable!7662 lt!2566427) (nullableFct!2975 lt!2566427))))

(declare-fun bs!1887833 () Bool)

(assert (= bs!1887833 d!2226818))

(declare-fun m!7853774 () Bool)

(assert (=> bs!1887833 m!7853774))

(assert (=> b!7138012 d!2226818))

(declare-fun bs!1887837 () Bool)

(declare-fun d!2226820 () Bool)

(assert (= bs!1887837 (and d!2226820 d!2226812)))

(declare-fun lambda!434105 () Int)

(assert (=> bs!1887837 (not (= lambda!434105 lambda!434090))))

(declare-fun bs!1887838 () Bool)

(assert (= bs!1887838 (and d!2226820 b!7138012)))

(assert (=> bs!1887838 (= lambda!434105 lambda!434055)))

(declare-fun bs!1887839 () Bool)

(assert (= bs!1887839 (and d!2226820 d!2226808)))

(assert (=> bs!1887839 (not (= lambda!434105 lambda!434087))))

(declare-fun bs!1887840 () Bool)

(assert (= bs!1887840 (and d!2226820 b!7138017)))

(assert (=> bs!1887840 (not (= lambda!434105 lambda!434053))))

(declare-fun bs!1887841 () Bool)

(assert (= bs!1887841 (and d!2226820 d!2226816)))

(assert (=> bs!1887841 (not (= lambda!434105 lambda!434099))))

(declare-fun bs!1887842 () Bool)

(assert (= bs!1887842 (and d!2226820 d!2226802)))

(assert (=> bs!1887842 (= lambda!434105 lambda!434075)))

(declare-fun bs!1887843 () Bool)

(assert (= bs!1887843 (and d!2226820 d!2226814)))

(assert (=> bs!1887843 (= lambda!434105 lambda!434093)))

(assert (=> bs!1887841 (= lambda!434105 lambda!434098)))

(declare-fun bs!1887844 () Bool)

(assert (= bs!1887844 (and d!2226820 d!2226806)))

(assert (=> bs!1887844 (= lambda!434105 lambda!434083)))

(declare-fun b!7138159 () Bool)

(declare-fun e!4289907 () Bool)

(declare-fun lt!2566478 () Regex!18142)

(declare-fun isConcat!1553 (Regex!18142) Bool)

(assert (=> b!7138159 (= e!4289907 (isConcat!1553 lt!2566478))))

(declare-fun e!4289906 () Bool)

(assert (=> d!2226820 e!4289906))

(declare-fun res!2912644 () Bool)

(assert (=> d!2226820 (=> (not res!2912644) (not e!4289906))))

(assert (=> d!2226820 (= res!2912644 (validRegex!9309 lt!2566478))))

(declare-fun e!4289909 () Regex!18142)

(assert (=> d!2226820 (= lt!2566478 e!4289909)))

(declare-fun c!1331174 () Bool)

(declare-fun e!4289905 () Bool)

(assert (=> d!2226820 (= c!1331174 e!4289905)))

(declare-fun res!2912643 () Bool)

(assert (=> d!2226820 (=> (not res!2912643) (not e!4289905))))

(assert (=> d!2226820 (= res!2912643 (is-Cons!69238 (exprs!7636 lt!2566424)))))

(assert (=> d!2226820 (forall!16980 (exprs!7636 lt!2566424) lambda!434105)))

(assert (=> d!2226820 (= (generalisedConcat!2333 (exprs!7636 lt!2566424)) lt!2566478)))

(declare-fun b!7138160 () Bool)

(assert (=> b!7138160 (= e!4289907 (= lt!2566478 (head!14493 (exprs!7636 lt!2566424))))))

(declare-fun b!7138161 () Bool)

(assert (=> b!7138161 (= e!4289909 (h!75686 (exprs!7636 lt!2566424)))))

(declare-fun b!7138162 () Bool)

(declare-fun e!4289910 () Regex!18142)

(assert (=> b!7138162 (= e!4289910 EmptyExpr!18142)))

(declare-fun b!7138163 () Bool)

(declare-fun e!4289908 () Bool)

(assert (=> b!7138163 (= e!4289908 e!4289907)))

(declare-fun c!1331172 () Bool)

(assert (=> b!7138163 (= c!1331172 (isEmpty!40052 (tail!13963 (exprs!7636 lt!2566424))))))

(declare-fun b!7138164 () Bool)

(declare-fun isEmptyExpr!2030 (Regex!18142) Bool)

(assert (=> b!7138164 (= e!4289908 (isEmptyExpr!2030 lt!2566478))))

(declare-fun b!7138165 () Bool)

(assert (=> b!7138165 (= e!4289910 (Concat!26987 (h!75686 (exprs!7636 lt!2566424)) (generalisedConcat!2333 (t!383379 (exprs!7636 lt!2566424)))))))

(declare-fun b!7138166 () Bool)

(assert (=> b!7138166 (= e!4289905 (isEmpty!40052 (t!383379 (exprs!7636 lt!2566424))))))

(declare-fun b!7138167 () Bool)

(assert (=> b!7138167 (= e!4289909 e!4289910)))

(declare-fun c!1331173 () Bool)

(assert (=> b!7138167 (= c!1331173 (is-Cons!69238 (exprs!7636 lt!2566424)))))

(declare-fun b!7138168 () Bool)

(assert (=> b!7138168 (= e!4289906 e!4289908)))

(declare-fun c!1331171 () Bool)

(assert (=> b!7138168 (= c!1331171 (isEmpty!40052 (exprs!7636 lt!2566424)))))

(assert (= (and d!2226820 res!2912643) b!7138166))

(assert (= (and d!2226820 c!1331174) b!7138161))

(assert (= (and d!2226820 (not c!1331174)) b!7138167))

(assert (= (and b!7138167 c!1331173) b!7138165))

(assert (= (and b!7138167 (not c!1331173)) b!7138162))

(assert (= (and d!2226820 res!2912644) b!7138168))

(assert (= (and b!7138168 c!1331171) b!7138164))

(assert (= (and b!7138168 (not c!1331171)) b!7138163))

(assert (= (and b!7138163 c!1331172) b!7138160))

(assert (= (and b!7138163 (not c!1331172)) b!7138159))

(declare-fun m!7853776 () Bool)

(assert (=> d!2226820 m!7853776))

(declare-fun m!7853778 () Bool)

(assert (=> d!2226820 m!7853778))

(declare-fun m!7853780 () Bool)

(assert (=> b!7138168 m!7853780))

(declare-fun m!7853782 () Bool)

(assert (=> b!7138166 m!7853782))

(declare-fun m!7853784 () Bool)

(assert (=> b!7138165 m!7853784))

(declare-fun m!7853786 () Bool)

(assert (=> b!7138164 m!7853786))

(declare-fun m!7853788 () Bool)

(assert (=> b!7138160 m!7853788))

(declare-fun m!7853790 () Bool)

(assert (=> b!7138159 m!7853790))

(declare-fun m!7853794 () Bool)

(assert (=> b!7138163 m!7853794))

(assert (=> b!7138163 m!7853794))

(declare-fun m!7853796 () Bool)

(assert (=> b!7138163 m!7853796))

(assert (=> b!7138012 d!2226820))

(declare-fun d!2226822 () Bool)

(assert (=> d!2226822 (contains!20584 (unfocusZipperList!2183 lt!2566421) (generalisedConcat!2333 (exprs!7636 lt!2566424)))))

(declare-fun lt!2566481 () Unit!163143)

(declare-fun choose!55177 (List!69363 Context!14272) Unit!163143)

(assert (=> d!2226822 (= lt!2566481 (choose!55177 lt!2566421 lt!2566424))))

(declare-fun contains!20586 (List!69363 Context!14272) Bool)

(assert (=> d!2226822 (contains!20586 lt!2566421 lt!2566424)))

(assert (=> d!2226822 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!7 lt!2566421 lt!2566424) lt!2566481)))

(declare-fun bs!1887846 () Bool)

(assert (= bs!1887846 d!2226822))

(assert (=> bs!1887846 m!7853670))

(declare-fun m!7853818 () Bool)

(assert (=> bs!1887846 m!7853818))

(declare-fun m!7853820 () Bool)

(assert (=> bs!1887846 m!7853820))

(assert (=> bs!1887846 m!7853648))

(assert (=> bs!1887846 m!7853670))

(declare-fun m!7853822 () Bool)

(assert (=> bs!1887846 m!7853822))

(assert (=> bs!1887846 m!7853648))

(assert (=> b!7138012 d!2226822))

(declare-fun d!2226828 () Bool)

(declare-fun res!2912653 () Bool)

(declare-fun e!4289919 () Bool)

(assert (=> d!2226828 (=> res!2912653 e!4289919)))

(assert (=> d!2226828 (= res!2912653 (is-Nil!69238 (exprs!7636 lt!2566424)))))

(assert (=> d!2226828 (= (forall!16980 (exprs!7636 lt!2566424) lambda!434055) e!4289919)))

(declare-fun b!7138177 () Bool)

(declare-fun e!4289920 () Bool)

(assert (=> b!7138177 (= e!4289919 e!4289920)))

(declare-fun res!2912654 () Bool)

(assert (=> b!7138177 (=> (not res!2912654) (not e!4289920))))

(declare-fun dynLambda!28164 (Int Regex!18142) Bool)

(assert (=> b!7138177 (= res!2912654 (dynLambda!28164 lambda!434055 (h!75686 (exprs!7636 lt!2566424))))))

(declare-fun b!7138178 () Bool)

(assert (=> b!7138178 (= e!4289920 (forall!16980 (t!383379 (exprs!7636 lt!2566424)) lambda!434055))))

(assert (= (and d!2226828 (not res!2912653)) b!7138177))

(assert (= (and b!7138177 res!2912654) b!7138178))

(declare-fun b_lambda!272431 () Bool)

(assert (=> (not b_lambda!272431) (not b!7138177)))

(declare-fun m!7853824 () Bool)

(assert (=> b!7138177 m!7853824))

(declare-fun m!7853826 () Bool)

(assert (=> b!7138178 m!7853826))

(assert (=> b!7138012 d!2226828))

(declare-fun d!2226830 () Bool)

(declare-fun res!2912657 () Bool)

(declare-fun e!4289923 () Bool)

(assert (=> d!2226830 (=> res!2912657 e!4289923)))

(assert (=> d!2226830 (= res!2912657 (is-Nil!69238 (exprs!7636 lt!2566424)))))

(assert (=> d!2226830 (= (forall!16980 (exprs!7636 lt!2566424) lambda!434053) e!4289923)))

(declare-fun b!7138181 () Bool)

(declare-fun e!4289924 () Bool)

(assert (=> b!7138181 (= e!4289923 e!4289924)))

(declare-fun res!2912658 () Bool)

(assert (=> b!7138181 (=> (not res!2912658) (not e!4289924))))

(assert (=> b!7138181 (= res!2912658 (dynLambda!28164 lambda!434053 (h!75686 (exprs!7636 lt!2566424))))))

(declare-fun b!7138182 () Bool)

(assert (=> b!7138182 (= e!4289924 (forall!16980 (t!383379 (exprs!7636 lt!2566424)) lambda!434053))))

(assert (= (and d!2226830 (not res!2912657)) b!7138181))

(assert (= (and b!7138181 res!2912658) b!7138182))

(declare-fun b_lambda!272433 () Bool)

(assert (=> (not b_lambda!272433) (not b!7138181)))

(declare-fun m!7853828 () Bool)

(assert (=> b!7138181 m!7853828))

(declare-fun m!7853830 () Bool)

(assert (=> b!7138182 m!7853830))

(assert (=> b!7138012 d!2226830))

(declare-fun d!2226832 () Bool)

(declare-fun lt!2566484 () Bool)

(declare-fun content!14174 (List!69362) (Set Regex!18142))

(assert (=> d!2226832 (= lt!2566484 (set.member lt!2566427 (content!14174 lt!2566423)))))

(declare-fun e!4289932 () Bool)

(assert (=> d!2226832 (= lt!2566484 e!4289932)))

(declare-fun res!2912666 () Bool)

(assert (=> d!2226832 (=> (not res!2912666) (not e!4289932))))

(assert (=> d!2226832 (= res!2912666 (is-Cons!69238 lt!2566423))))

(assert (=> d!2226832 (= (contains!20584 lt!2566423 lt!2566427) lt!2566484)))

(declare-fun b!7138189 () Bool)

(declare-fun e!4289931 () Bool)

(assert (=> b!7138189 (= e!4289932 e!4289931)))

(declare-fun res!2912665 () Bool)

(assert (=> b!7138189 (=> res!2912665 e!4289931)))

(assert (=> b!7138189 (= res!2912665 (= (h!75686 lt!2566423) lt!2566427))))

(declare-fun b!7138190 () Bool)

(assert (=> b!7138190 (= e!4289931 (contains!20584 (t!383379 lt!2566423) lt!2566427))))

(assert (= (and d!2226832 res!2912666) b!7138189))

(assert (= (and b!7138189 (not res!2912665)) b!7138190))

(declare-fun m!7853840 () Bool)

(assert (=> d!2226832 m!7853840))

(declare-fun m!7853842 () Bool)

(assert (=> d!2226832 m!7853842))

(declare-fun m!7853844 () Bool)

(assert (=> b!7138190 m!7853844))

(assert (=> b!7138012 d!2226832))

(declare-fun b!7138209 () Bool)

(declare-fun e!4289952 () Bool)

(declare-fun e!4289949 () Bool)

(assert (=> b!7138209 (= e!4289952 e!4289949)))

(declare-fun res!2912679 () Bool)

(assert (=> b!7138209 (= res!2912679 (not (nullable!7662 (reg!18471 r!11483))))))

(assert (=> b!7138209 (=> (not res!2912679) (not e!4289949))))

(declare-fun d!2226838 () Bool)

(declare-fun res!2912678 () Bool)

(declare-fun e!4289953 () Bool)

(assert (=> d!2226838 (=> res!2912678 e!4289953)))

(assert (=> d!2226838 (= res!2912678 (is-ElementMatch!18142 r!11483))))

(assert (=> d!2226838 (= (validRegex!9309 r!11483) e!4289953)))

(declare-fun b!7138210 () Bool)

(assert (=> b!7138210 (= e!4289953 e!4289952)))

(declare-fun c!1331182 () Bool)

(assert (=> b!7138210 (= c!1331182 (is-Star!18142 r!11483))))

(declare-fun bm!651048 () Bool)

(declare-fun call!651054 () Bool)

(declare-fun call!651053 () Bool)

(assert (=> bm!651048 (= call!651054 call!651053)))

(declare-fun c!1331181 () Bool)

(declare-fun bm!651049 () Bool)

(assert (=> bm!651049 (= call!651053 (validRegex!9309 (ite c!1331182 (reg!18471 r!11483) (ite c!1331181 (regOne!36797 r!11483) (regOne!36796 r!11483)))))))

(declare-fun b!7138211 () Bool)

(declare-fun res!2912677 () Bool)

(declare-fun e!4289951 () Bool)

(assert (=> b!7138211 (=> res!2912677 e!4289951)))

(assert (=> b!7138211 (= res!2912677 (not (is-Concat!26987 r!11483)))))

(declare-fun e!4289948 () Bool)

(assert (=> b!7138211 (= e!4289948 e!4289951)))

(declare-fun b!7138212 () Bool)

(assert (=> b!7138212 (= e!4289949 call!651053)))

(declare-fun b!7138213 () Bool)

(assert (=> b!7138213 (= e!4289952 e!4289948)))

(assert (=> b!7138213 (= c!1331181 (is-Union!18142 r!11483))))

(declare-fun b!7138214 () Bool)

(declare-fun e!4289950 () Bool)

(declare-fun call!651055 () Bool)

(assert (=> b!7138214 (= e!4289950 call!651055)))

(declare-fun b!7138215 () Bool)

(declare-fun e!4289947 () Bool)

(assert (=> b!7138215 (= e!4289947 call!651055)))

(declare-fun b!7138216 () Bool)

(declare-fun res!2912681 () Bool)

(assert (=> b!7138216 (=> (not res!2912681) (not e!4289947))))

(assert (=> b!7138216 (= res!2912681 call!651054)))

(assert (=> b!7138216 (= e!4289948 e!4289947)))

(declare-fun bm!651050 () Bool)

(assert (=> bm!651050 (= call!651055 (validRegex!9309 (ite c!1331181 (regTwo!36797 r!11483) (regTwo!36796 r!11483))))))

(declare-fun b!7138217 () Bool)

(assert (=> b!7138217 (= e!4289951 e!4289950)))

(declare-fun res!2912680 () Bool)

(assert (=> b!7138217 (=> (not res!2912680) (not e!4289950))))

(assert (=> b!7138217 (= res!2912680 call!651054)))

(assert (= (and d!2226838 (not res!2912678)) b!7138210))

(assert (= (and b!7138210 c!1331182) b!7138209))

(assert (= (and b!7138210 (not c!1331182)) b!7138213))

(assert (= (and b!7138209 res!2912679) b!7138212))

(assert (= (and b!7138213 c!1331181) b!7138216))

(assert (= (and b!7138213 (not c!1331181)) b!7138211))

(assert (= (and b!7138216 res!2912681) b!7138215))

(assert (= (and b!7138211 (not res!2912677)) b!7138217))

(assert (= (and b!7138217 res!2912680) b!7138214))

(assert (= (or b!7138215 b!7138214) bm!651050))

(assert (= (or b!7138216 b!7138217) bm!651048))

(assert (= (or b!7138212 bm!651048) bm!651049))

(declare-fun m!7853852 () Bool)

(assert (=> b!7138209 m!7853852))

(declare-fun m!7853854 () Bool)

(assert (=> bm!651049 m!7853854))

(declare-fun m!7853856 () Bool)

(assert (=> bm!651050 m!7853856))

(assert (=> start!695602 d!2226838))

(assert (=> b!7138017 d!2226812))

(declare-fun d!2226842 () Bool)

(assert (=> d!2226842 (= (nullable!7662 lt!2566422) (nullableFct!2975 lt!2566422))))

(declare-fun bs!1887848 () Bool)

(assert (= bs!1887848 d!2226842))

(declare-fun m!7853858 () Bool)

(assert (=> bs!1887848 m!7853858))

(assert (=> b!7138017 d!2226842))

(declare-fun bs!1887853 () Bool)

(declare-fun d!2226844 () Bool)

(assert (= bs!1887853 (and d!2226844 d!2226812)))

(declare-fun lambda!434113 () Int)

(assert (=> bs!1887853 (not (= lambda!434113 lambda!434090))))

(declare-fun bs!1887854 () Bool)

(assert (= bs!1887854 (and d!2226844 b!7138012)))

(assert (=> bs!1887854 (= lambda!434113 lambda!434055)))

(declare-fun bs!1887856 () Bool)

(assert (= bs!1887856 (and d!2226844 d!2226808)))

(assert (=> bs!1887856 (not (= lambda!434113 lambda!434087))))

(declare-fun bs!1887857 () Bool)

(assert (= bs!1887857 (and d!2226844 b!7138017)))

(assert (=> bs!1887857 (not (= lambda!434113 lambda!434053))))

(declare-fun bs!1887858 () Bool)

(assert (= bs!1887858 (and d!2226844 d!2226816)))

(assert (=> bs!1887858 (not (= lambda!434113 lambda!434099))))

(declare-fun bs!1887859 () Bool)

(assert (= bs!1887859 (and d!2226844 d!2226820)))

(assert (=> bs!1887859 (= lambda!434113 lambda!434105)))

(declare-fun bs!1887860 () Bool)

(assert (= bs!1887860 (and d!2226844 d!2226802)))

(assert (=> bs!1887860 (= lambda!434113 lambda!434075)))

(declare-fun bs!1887861 () Bool)

(assert (= bs!1887861 (and d!2226844 d!2226814)))

(assert (=> bs!1887861 (= lambda!434113 lambda!434093)))

(assert (=> bs!1887858 (= lambda!434113 lambda!434098)))

(declare-fun bs!1887862 () Bool)

(assert (= bs!1887862 (and d!2226844 d!2226806)))

(assert (=> bs!1887862 (= lambda!434113 lambda!434083)))

(declare-fun lambda!434114 () Int)

(assert (=> bs!1887853 (not (= lambda!434114 lambda!434090))))

(assert (=> bs!1887854 (not (= lambda!434114 lambda!434055))))

(assert (=> bs!1887856 (= lambda!434114 lambda!434087)))

(declare-fun bs!1887863 () Bool)

(assert (= bs!1887863 d!2226844))

(assert (=> bs!1887863 (not (= lambda!434114 lambda!434113))))

(assert (=> bs!1887857 (= lambda!434114 lambda!434053)))

(assert (=> bs!1887858 (= lambda!434114 lambda!434099)))

(assert (=> bs!1887859 (not (= lambda!434114 lambda!434105))))

(assert (=> bs!1887860 (not (= lambda!434114 lambda!434075))))

(assert (=> bs!1887861 (not (= lambda!434114 lambda!434093))))

(assert (=> bs!1887858 (not (= lambda!434114 lambda!434098))))

(assert (=> bs!1887862 (not (= lambda!434114 lambda!434083))))

(assert (=> d!2226844 (= (nullable!7662 lt!2566422) (exists!3908 lt!2566423 lambda!434114))))

(declare-fun lt!2566490 () Unit!163143)

(declare-fun choose!55178 (Regex!18142 List!69362) Unit!163143)

(assert (=> d!2226844 (= lt!2566490 (choose!55178 lt!2566422 lt!2566423))))

(assert (=> d!2226844 (forall!16980 lt!2566423 lambda!434113)))

(assert (=> d!2226844 (= (nullableGenUnionSpec!31 lt!2566422 lt!2566423) lt!2566490)))

(assert (=> bs!1887863 m!7853642))

(declare-fun m!7853862 () Bool)

(assert (=> bs!1887863 m!7853862))

(declare-fun m!7853864 () Bool)

(assert (=> bs!1887863 m!7853864))

(declare-fun m!7853866 () Bool)

(assert (=> bs!1887863 m!7853866))

(assert (=> b!7138017 d!2226844))

(declare-fun d!2226848 () Bool)

(declare-fun lt!2566495 () Bool)

(declare-fun exists!3911 (List!69363 Int) Bool)

(assert (=> d!2226848 (= lt!2566495 (exists!3911 (toList!11173 z!3189) lambda!434054))))

(declare-fun choose!55179 ((Set Context!14272) Int) Bool)

(assert (=> d!2226848 (= lt!2566495 (choose!55179 z!3189 lambda!434054))))

(assert (=> d!2226848 (= (exists!3907 z!3189 lambda!434054) lt!2566495)))

(declare-fun bs!1887864 () Bool)

(assert (= bs!1887864 d!2226848))

(assert (=> bs!1887864 m!7853658))

(assert (=> bs!1887864 m!7853658))

(declare-fun m!7853868 () Bool)

(assert (=> bs!1887864 m!7853868))

(declare-fun m!7853870 () Bool)

(assert (=> bs!1887864 m!7853870))

(assert (=> b!7138008 d!2226848))

(declare-fun d!2226850 () Bool)

(declare-fun lt!2566499 () Regex!18142)

(assert (=> d!2226850 (validRegex!9309 lt!2566499)))

(assert (=> d!2226850 (= lt!2566499 (generalisedUnion!2647 (unfocusZipperList!2183 lt!2566421)))))

(assert (=> d!2226850 (= (unfocusZipper!2490 lt!2566421) lt!2566499)))

(declare-fun bs!1887866 () Bool)

(assert (= bs!1887866 d!2226850))

(declare-fun m!7853876 () Bool)

(assert (=> bs!1887866 m!7853876))

(assert (=> bs!1887866 m!7853648))

(assert (=> bs!1887866 m!7853648))

(declare-fun m!7853878 () Bool)

(assert (=> bs!1887866 m!7853878))

(assert (=> b!7138011 d!2226850))

(declare-fun d!2226854 () Bool)

(declare-fun e!4289958 () Bool)

(assert (=> d!2226854 e!4289958))

(declare-fun res!2912686 () Bool)

(assert (=> d!2226854 (=> (not res!2912686) (not e!4289958))))

(declare-fun lt!2566504 () List!69363)

(declare-fun noDuplicate!2814 (List!69363) Bool)

(assert (=> d!2226854 (= res!2912686 (noDuplicate!2814 lt!2566504))))

(declare-fun choose!55180 ((Set Context!14272)) List!69363)

(assert (=> d!2226854 (= lt!2566504 (choose!55180 z!3189))))

(assert (=> d!2226854 (= (toList!11173 z!3189) lt!2566504)))

(declare-fun b!7138224 () Bool)

(declare-fun content!14176 (List!69363) (Set Context!14272))

(assert (=> b!7138224 (= e!4289958 (= (content!14176 lt!2566504) z!3189))))

(assert (= (and d!2226854 res!2912686) b!7138224))

(declare-fun m!7853880 () Bool)

(assert (=> d!2226854 m!7853880))

(declare-fun m!7853882 () Bool)

(assert (=> d!2226854 m!7853882))

(declare-fun m!7853884 () Bool)

(assert (=> b!7138224 m!7853884))

(assert (=> b!7138011 d!2226854))

(declare-fun b!7138236 () Bool)

(declare-fun e!4289962 () Bool)

(assert (=> b!7138236 (= e!4289962 tp_is_empty!45921)))

(declare-fun b!7138237 () Bool)

(declare-fun tp!1968264 () Bool)

(declare-fun tp!1968263 () Bool)

(assert (=> b!7138237 (= e!4289962 (and tp!1968264 tp!1968263))))

(declare-fun b!7138239 () Bool)

(declare-fun tp!1968260 () Bool)

(declare-fun tp!1968262 () Bool)

(assert (=> b!7138239 (= e!4289962 (and tp!1968260 tp!1968262))))

(assert (=> b!7138010 (= tp!1968223 e!4289962)))

(declare-fun b!7138238 () Bool)

(declare-fun tp!1968261 () Bool)

(assert (=> b!7138238 (= e!4289962 tp!1968261)))

(assert (= (and b!7138010 (is-ElementMatch!18142 (reg!18471 r!11483))) b!7138236))

(assert (= (and b!7138010 (is-Concat!26987 (reg!18471 r!11483))) b!7138237))

(assert (= (and b!7138010 (is-Star!18142 (reg!18471 r!11483))) b!7138238))

(assert (= (and b!7138010 (is-Union!18142 (reg!18471 r!11483))) b!7138239))

(declare-fun b!7138240 () Bool)

(declare-fun e!4289963 () Bool)

(assert (=> b!7138240 (= e!4289963 tp_is_empty!45921)))

(declare-fun b!7138241 () Bool)

(declare-fun tp!1968269 () Bool)

(declare-fun tp!1968268 () Bool)

(assert (=> b!7138241 (= e!4289963 (and tp!1968269 tp!1968268))))

(declare-fun b!7138243 () Bool)

(declare-fun tp!1968265 () Bool)

(declare-fun tp!1968267 () Bool)

(assert (=> b!7138243 (= e!4289963 (and tp!1968265 tp!1968267))))

(assert (=> b!7138019 (= tp!1968227 e!4289963)))

(declare-fun b!7138242 () Bool)

(declare-fun tp!1968266 () Bool)

(assert (=> b!7138242 (= e!4289963 tp!1968266)))

(assert (= (and b!7138019 (is-ElementMatch!18142 (regOne!36797 r!11483))) b!7138240))

(assert (= (and b!7138019 (is-Concat!26987 (regOne!36797 r!11483))) b!7138241))

(assert (= (and b!7138019 (is-Star!18142 (regOne!36797 r!11483))) b!7138242))

(assert (= (and b!7138019 (is-Union!18142 (regOne!36797 r!11483))) b!7138243))

(declare-fun b!7138244 () Bool)

(declare-fun e!4289964 () Bool)

(assert (=> b!7138244 (= e!4289964 tp_is_empty!45921)))

(declare-fun b!7138245 () Bool)

(declare-fun tp!1968274 () Bool)

(declare-fun tp!1968273 () Bool)

(assert (=> b!7138245 (= e!4289964 (and tp!1968274 tp!1968273))))

(declare-fun b!7138247 () Bool)

(declare-fun tp!1968270 () Bool)

(declare-fun tp!1968272 () Bool)

(assert (=> b!7138247 (= e!4289964 (and tp!1968270 tp!1968272))))

(assert (=> b!7138019 (= tp!1968224 e!4289964)))

(declare-fun b!7138246 () Bool)

(declare-fun tp!1968271 () Bool)

(assert (=> b!7138246 (= e!4289964 tp!1968271)))

(assert (= (and b!7138019 (is-ElementMatch!18142 (regTwo!36797 r!11483))) b!7138244))

(assert (= (and b!7138019 (is-Concat!26987 (regTwo!36797 r!11483))) b!7138245))

(assert (= (and b!7138019 (is-Star!18142 (regTwo!36797 r!11483))) b!7138246))

(assert (= (and b!7138019 (is-Union!18142 (regTwo!36797 r!11483))) b!7138247))

(declare-fun b!7138248 () Bool)

(declare-fun e!4289965 () Bool)

(assert (=> b!7138248 (= e!4289965 tp_is_empty!45921)))

(declare-fun b!7138249 () Bool)

(declare-fun tp!1968279 () Bool)

(declare-fun tp!1968278 () Bool)

(assert (=> b!7138249 (= e!4289965 (and tp!1968279 tp!1968278))))

(declare-fun b!7138251 () Bool)

(declare-fun tp!1968275 () Bool)

(declare-fun tp!1968277 () Bool)

(assert (=> b!7138251 (= e!4289965 (and tp!1968275 tp!1968277))))

(assert (=> b!7138013 (= tp!1968228 e!4289965)))

(declare-fun b!7138250 () Bool)

(declare-fun tp!1968276 () Bool)

(assert (=> b!7138250 (= e!4289965 tp!1968276)))

(assert (= (and b!7138013 (is-ElementMatch!18142 (regOne!36796 r!11483))) b!7138248))

(assert (= (and b!7138013 (is-Concat!26987 (regOne!36796 r!11483))) b!7138249))

(assert (= (and b!7138013 (is-Star!18142 (regOne!36796 r!11483))) b!7138250))

(assert (= (and b!7138013 (is-Union!18142 (regOne!36796 r!11483))) b!7138251))

(declare-fun b!7138252 () Bool)

(declare-fun e!4289966 () Bool)

(assert (=> b!7138252 (= e!4289966 tp_is_empty!45921)))

(declare-fun b!7138253 () Bool)

(declare-fun tp!1968284 () Bool)

(declare-fun tp!1968283 () Bool)

(assert (=> b!7138253 (= e!4289966 (and tp!1968284 tp!1968283))))

(declare-fun b!7138255 () Bool)

(declare-fun tp!1968280 () Bool)

(declare-fun tp!1968282 () Bool)

(assert (=> b!7138255 (= e!4289966 (and tp!1968280 tp!1968282))))

(assert (=> b!7138013 (= tp!1968225 e!4289966)))

(declare-fun b!7138254 () Bool)

(declare-fun tp!1968281 () Bool)

(assert (=> b!7138254 (= e!4289966 tp!1968281)))

(assert (= (and b!7138013 (is-ElementMatch!18142 (regTwo!36796 r!11483))) b!7138252))

(assert (= (and b!7138013 (is-Concat!26987 (regTwo!36796 r!11483))) b!7138253))

(assert (= (and b!7138013 (is-Star!18142 (regTwo!36796 r!11483))) b!7138254))

(assert (= (and b!7138013 (is-Union!18142 (regTwo!36796 r!11483))) b!7138255))

(declare-fun b!7138260 () Bool)

(declare-fun e!4289969 () Bool)

(declare-fun tp!1968289 () Bool)

(declare-fun tp!1968290 () Bool)

(assert (=> b!7138260 (= e!4289969 (and tp!1968289 tp!1968290))))

(assert (=> b!7138018 (= tp!1968222 e!4289969)))

(assert (= (and b!7138018 (is-Cons!69238 (exprs!7636 setElem!52432))) b!7138260))

(declare-fun condSetEmpty!52438 () Bool)

(assert (=> setNonEmpty!52432 (= condSetEmpty!52438 (= setRest!52432 (as set.empty (Set Context!14272))))))

(declare-fun setRes!52438 () Bool)

(assert (=> setNonEmpty!52432 (= tp!1968226 setRes!52438)))

(declare-fun setIsEmpty!52438 () Bool)

(assert (=> setIsEmpty!52438 setRes!52438))

(declare-fun tp!1968295 () Bool)

(declare-fun setElem!52438 () Context!14272)

(declare-fun setNonEmpty!52438 () Bool)

(declare-fun e!4289972 () Bool)

(assert (=> setNonEmpty!52438 (= setRes!52438 (and tp!1968295 (inv!88420 setElem!52438) e!4289972))))

(declare-fun setRest!52438 () (Set Context!14272))

(assert (=> setNonEmpty!52438 (= setRest!52432 (set.union (set.insert setElem!52438 (as set.empty (Set Context!14272))) setRest!52438))))

(declare-fun b!7138265 () Bool)

(declare-fun tp!1968296 () Bool)

(assert (=> b!7138265 (= e!4289972 tp!1968296)))

(assert (= (and setNonEmpty!52432 condSetEmpty!52438) setIsEmpty!52438))

(assert (= (and setNonEmpty!52432 (not condSetEmpty!52438)) setNonEmpty!52438))

(assert (= setNonEmpty!52438 b!7138265))

(declare-fun m!7853894 () Bool)

(assert (=> setNonEmpty!52438 m!7853894))

(declare-fun b_lambda!272439 () Bool)

(assert (= b_lambda!272433 (or b!7138017 b_lambda!272439)))

(declare-fun bs!1887868 () Bool)

(declare-fun d!2226860 () Bool)

(assert (= bs!1887868 (and d!2226860 b!7138017)))

(assert (=> bs!1887868 (= (dynLambda!28164 lambda!434053 (h!75686 (exprs!7636 lt!2566424))) (nullable!7662 (h!75686 (exprs!7636 lt!2566424))))))

(declare-fun m!7853896 () Bool)

(assert (=> bs!1887868 m!7853896))

(assert (=> b!7138181 d!2226860))

(declare-fun b_lambda!272441 () Bool)

(assert (= b_lambda!272429 (or b!7138008 b_lambda!272441)))

(declare-fun bs!1887869 () Bool)

(declare-fun d!2226862 () Bool)

(assert (= bs!1887869 (and d!2226862 b!7138008)))

(assert (=> bs!1887869 (= (dynLambda!28162 lambda!434054 lt!2566457) (nullableContext!141 lt!2566457))))

(declare-fun m!7853898 () Bool)

(assert (=> bs!1887869 m!7853898))

(assert (=> d!2226798 d!2226862))

(declare-fun b_lambda!272443 () Bool)

(assert (= b_lambda!272431 (or b!7138012 b_lambda!272443)))

(declare-fun bs!1887870 () Bool)

(declare-fun d!2226864 () Bool)

(assert (= bs!1887870 (and d!2226864 b!7138012)))

(assert (=> bs!1887870 (= (dynLambda!28164 lambda!434055 (h!75686 (exprs!7636 lt!2566424))) (validRegex!9309 (h!75686 (exprs!7636 lt!2566424))))))

(declare-fun m!7853900 () Bool)

(assert (=> bs!1887870 m!7853900))

(assert (=> b!7138177 d!2226864))

(push 1)

(assert (not b!7138159))

(assert (not b!7138246))

(assert (not b!7138251))

(assert (not b!7138239))

(assert (not d!2226854))

(assert (not b!7138260))

(assert (not b!7138247))

(assert (not bs!1887869))

(assert (not d!2226832))

(assert (not d!2226812))

(assert (not d!2226802))

(assert (not b!7138091))

(assert (not bs!1887870))

(assert (not b!7138224))

(assert (not d!2226822))

(assert (not b!7138241))

(assert (not b!7138238))

(assert (not b!7138163))

(assert (not d!2226798))

(assert (not bm!651049))

(assert (not b!7138182))

(assert (not setNonEmpty!52438))

(assert (not b_lambda!272441))

(assert (not d!2226816))

(assert (not d!2226814))

(assert (not b!7138250))

(assert (not b!7138092))

(assert (not bs!1887868))

(assert (not b!7138168))

(assert (not b_lambda!272443))

(assert (not d!2226808))

(assert (not b!7138095))

(assert (not b!7138209))

(assert (not b!7138265))

(assert (not b!7138097))

(assert (not b_lambda!272439))

(assert (not b!7138249))

(assert (not b!7138245))

(assert (not b!7138178))

(assert (not b!7138254))

(assert (not d!2226818))

(assert (not d!2226850))

(assert (not b!7138096))

(assert (not b!7138160))

(assert (not b!7138242))

(assert (not b!7138166))

(assert (not bm!651050))

(assert (not b!7138100))

(assert (not d!2226806))

(assert (not d!2226820))

(assert (not d!2226848))

(assert (not b!7138255))

(assert (not b!7138164))

(assert (not d!2226844))

(assert (not b!7138093))

(assert (not b!7138243))

(assert tp_is_empty!45921)

(assert (not d!2226842))

(assert (not b!7138190))

(assert (not b!7138237))

(assert (not b!7138253))

(assert (not b!7138165))

(assert (not b!7138105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

