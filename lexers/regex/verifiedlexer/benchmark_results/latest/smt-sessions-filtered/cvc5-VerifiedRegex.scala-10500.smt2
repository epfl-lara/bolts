; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541652 () Bool)

(assert start!541652)

(declare-fun bs!1194671 () Bool)

(declare-fun b!5128159 () Bool)

(declare-fun b!5128148 () Bool)

(assert (= bs!1194671 (and b!5128159 b!5128148)))

(declare-fun lambda!252420 () Int)

(declare-fun lambda!252419 () Int)

(assert (=> bs!1194671 (not (= lambda!252420 lambda!252419))))

(declare-fun bs!1194672 () Bool)

(declare-fun b!5128150 () Bool)

(assert (= bs!1194672 (and b!5128150 b!5128148)))

(declare-fun lambda!252421 () Int)

(assert (=> bs!1194672 (not (= lambda!252421 lambda!252419))))

(declare-fun bs!1194673 () Bool)

(assert (= bs!1194673 (and b!5128150 b!5128159)))

(assert (=> bs!1194673 (not (= lambda!252421 lambda!252420))))

(declare-fun bs!1194674 () Bool)

(declare-fun b!5128157 () Bool)

(declare-fun b!5128153 () Bool)

(assert (= bs!1194674 (and b!5128157 b!5128153)))

(declare-fun lambda!252422 () Int)

(declare-fun lambda!252418 () Int)

(assert (=> bs!1194674 (not (= lambda!252422 lambda!252418))))

(declare-fun e!3198164 () Bool)

(declare-fun e!3198159 () Bool)

(assert (=> b!5128148 (= e!3198164 (not e!3198159))))

(declare-fun res!2183444 () Bool)

(assert (=> b!5128148 (=> res!2183444 e!3198159)))

(declare-datatypes ((C!28846 0))(
  ( (C!28847 (val!24075 Int)) )
))
(declare-datatypes ((Regex!14290 0))(
  ( (ElementMatch!14290 (c!881827 C!28846)) (Concat!23135 (regOne!29092 Regex!14290) (regTwo!29092 Regex!14290)) (EmptyExpr!14290) (Star!14290 (reg!14619 Regex!14290)) (EmptyLang!14290) (Union!14290 (regOne!29093 Regex!14290) (regTwo!29093 Regex!14290)) )
))
(declare-datatypes ((List!59511 0))(
  ( (Nil!59387) (Cons!59387 (h!65835 Regex!14290) (t!372538 List!59511)) )
))
(declare-datatypes ((Context!7348 0))(
  ( (Context!7349 (exprs!4174 List!59511)) )
))
(declare-fun lt!2115053 () Context!7348)

(declare-fun z!1113 () (Set Context!7348))

(assert (=> b!5128148 (= res!2183444 (not (set.member lt!2115053 z!1113)))))

(declare-fun forall!13681 (List!59511 Int) Bool)

(assert (=> b!5128148 (forall!13681 (exprs!4174 lt!2115053) lambda!252419)))

(declare-datatypes ((Unit!150587 0))(
  ( (Unit!150588) )
))
(declare-fun lt!2115052 () Unit!150587)

(declare-fun lemmaContextForallValidExprs!9 (Context!7348 List!59511) Unit!150587)

(assert (=> b!5128148 (= lt!2115052 (lemmaContextForallValidExprs!9 lt!2115053 (exprs!4174 lt!2115053)))))

(declare-fun b!5128149 () Bool)

(declare-fun e!3198162 () Bool)

(assert (=> b!5128149 (= e!3198159 e!3198162)))

(declare-fun res!2183443 () Bool)

(assert (=> b!5128149 (=> res!2183443 e!3198162)))

(declare-fun lt!2115057 () Bool)

(assert (=> b!5128149 (= res!2183443 lt!2115057)))

(declare-fun lt!2115058 () Unit!150587)

(declare-fun e!3198161 () Unit!150587)

(assert (=> b!5128149 (= lt!2115058 e!3198161)))

(declare-fun c!881826 () Bool)

(assert (=> b!5128149 (= c!881826 lt!2115057)))

(declare-fun lostCause!1230 (Context!7348) Bool)

(assert (=> b!5128149 (= lt!2115057 (lostCause!1230 lt!2115053))))

(declare-fun Unit!150589 () Unit!150587)

(assert (=> b!5128150 (= e!3198161 Unit!150589)))

(declare-fun lt!2115056 () Regex!14290)

(declare-fun getWitness!702 (List!59511 Int) Regex!14290)

(assert (=> b!5128150 (= lt!2115056 (getWitness!702 (exprs!4174 lt!2115053) lambda!252421))))

(declare-fun lt!2115059 () Unit!150587)

(declare-fun forallContained!4592 (List!59511 Int Regex!14290) Unit!150587)

(assert (=> b!5128150 (= lt!2115059 (forallContained!4592 (exprs!4174 lt!2115053) lambda!252420 lt!2115056))))

(declare-fun lt!2115051 () Unit!150587)

(assert (=> b!5128150 (= lt!2115051 (forallContained!4592 (exprs!4174 lt!2115053) lambda!252419 lt!2115056))))

(declare-fun lt!2115055 () Unit!150587)

(declare-fun lemmaNullableThenNotLostCause!15 (Regex!14290) Unit!150587)

(assert (=> b!5128150 (= lt!2115055 (lemmaNullableThenNotLostCause!15 lt!2115056))))

(declare-fun res!2183439 () Bool)

(declare-fun lostCause!1231 (Regex!14290) Bool)

(assert (=> b!5128150 (= res!2183439 (not (lostCause!1231 lt!2115056)))))

(declare-fun e!3198166 () Bool)

(assert (=> b!5128150 (=> (not res!2183439) (not e!3198166))))

(assert (=> b!5128150 e!3198166))

(declare-fun b!5128151 () Bool)

(declare-fun e!3198160 () Bool)

(declare-fun e!3198165 () Bool)

(assert (=> b!5128151 (= e!3198160 e!3198165)))

(declare-fun res!2183449 () Bool)

(assert (=> b!5128151 (=> (not res!2183449) (not e!3198165))))

(declare-datatypes ((List!59512 0))(
  ( (Nil!59388) (Cons!59388 (h!65836 Context!7348) (t!372539 List!59512)) )
))
(declare-fun lt!2115054 () List!59512)

(declare-fun forall!13682 (List!59512 Int) Bool)

(assert (=> b!5128151 (= res!2183449 (forall!13682 lt!2115054 lambda!252422))))

(declare-fun b!5128152 () Bool)

(declare-fun e!3198158 () Bool)

(declare-fun tp!1430694 () Bool)

(assert (=> b!5128152 (= e!3198158 tp!1430694)))

(declare-fun b!5128154 () Bool)

(declare-fun Unit!150590 () Unit!150587)

(assert (=> b!5128154 (= e!3198161 Unit!150590)))

(declare-fun b!5128155 () Bool)

(assert (=> b!5128155 (= e!3198166 false)))

(declare-fun b!5128156 () Bool)

(assert (=> b!5128156 (= e!3198162 e!3198160)))

(declare-fun res!2183440 () Bool)

(assert (=> b!5128156 (=> res!2183440 e!3198160)))

(assert (=> b!5128156 (= res!2183440 (not (forall!13682 lt!2115054 lambda!252422)))))

(declare-fun toList!8289 ((Set Context!7348)) List!59512)

(assert (=> b!5128156 (= lt!2115054 (toList!8289 z!1113))))

(declare-fun tp!1430695 () Bool)

(declare-fun setRes!30827 () Bool)

(declare-fun setElem!30827 () Context!7348)

(declare-fun setNonEmpty!30827 () Bool)

(declare-fun inv!78907 (Context!7348) Bool)

(assert (=> setNonEmpty!30827 (= setRes!30827 (and tp!1430695 (inv!78907 setElem!30827) e!3198158))))

(declare-fun setRest!30827 () (Set Context!7348))

(assert (=> setNonEmpty!30827 (= z!1113 (set.union (set.insert setElem!30827 (as set.empty (Set Context!7348))) setRest!30827))))

(declare-fun setIsEmpty!30827 () Bool)

(assert (=> setIsEmpty!30827 setRes!30827))

(declare-fun res!2183445 () Bool)

(assert (=> b!5128157 (=> res!2183445 e!3198162)))

(declare-fun forall!13683 ((Set Context!7348) Int) Bool)

(assert (=> b!5128157 (= res!2183445 (not (forall!13683 z!1113 lambda!252422)))))

(declare-fun b!5128158 () Bool)

(declare-fun e!3198163 () Bool)

(assert (=> b!5128158 (= e!3198163 e!3198164)))

(declare-fun res!2183448 () Bool)

(assert (=> b!5128158 (=> (not res!2183448) (not e!3198164))))

(declare-fun nullableContext!11 (Context!7348) Bool)

(assert (=> b!5128158 (= res!2183448 (nullableContext!11 lt!2115053))))

(declare-fun getWitness!703 ((Set Context!7348) Int) Context!7348)

(assert (=> b!5128158 (= lt!2115053 (getWitness!703 z!1113 lambda!252418))))

(declare-fun res!2183442 () Bool)

(assert (=> b!5128159 (=> res!2183442 e!3198159)))

(assert (=> b!5128159 (= res!2183442 (not (forall!13681 (exprs!4174 lt!2115053) lambda!252420)))))

(declare-fun res!2183441 () Bool)

(assert (=> start!541652 (=> (not res!2183441) (not e!3198163))))

(declare-fun nullableZipper!1075 ((Set Context!7348)) Bool)

(assert (=> start!541652 (= res!2183441 (nullableZipper!1075 z!1113))))

(assert (=> start!541652 e!3198163))

(declare-fun condSetEmpty!30827 () Bool)

(assert (=> start!541652 (= condSetEmpty!30827 (= z!1113 (as set.empty (Set Context!7348))))))

(assert (=> start!541652 setRes!30827))

(declare-fun res!2183446 () Bool)

(assert (=> b!5128153 (=> (not res!2183446) (not e!3198163))))

(declare-fun exists!1544 ((Set Context!7348) Int) Bool)

(assert (=> b!5128153 (= res!2183446 (exists!1544 z!1113 lambda!252418))))

(declare-fun b!5128160 () Bool)

(declare-fun res!2183447 () Bool)

(assert (=> b!5128160 (=> res!2183447 e!3198162)))

(declare-fun lostCauseZipper!1156 ((Set Context!7348)) Bool)

(assert (=> b!5128160 (= res!2183447 (not (lostCauseZipper!1156 z!1113)))))

(declare-fun b!5128161 () Bool)

(declare-fun contains!19614 (List!59512 Context!7348) Bool)

(assert (=> b!5128161 (= e!3198165 (contains!19614 lt!2115054 lt!2115053))))

(assert (= (and start!541652 res!2183441) b!5128153))

(assert (= (and b!5128153 res!2183446) b!5128158))

(assert (= (and b!5128158 res!2183448) b!5128148))

(assert (= (and b!5128148 (not res!2183444)) b!5128159))

(assert (= (and b!5128159 (not res!2183442)) b!5128149))

(assert (= (and b!5128149 c!881826) b!5128150))

(assert (= (and b!5128149 (not c!881826)) b!5128154))

(assert (= (and b!5128150 res!2183439) b!5128155))

(assert (= (and b!5128149 (not res!2183443)) b!5128160))

(assert (= (and b!5128160 (not res!2183447)) b!5128157))

(assert (= (and b!5128157 (not res!2183445)) b!5128156))

(assert (= (and b!5128156 (not res!2183440)) b!5128151))

(assert (= (and b!5128151 res!2183449) b!5128161))

(assert (= (and start!541652 condSetEmpty!30827) setIsEmpty!30827))

(assert (= (and start!541652 (not condSetEmpty!30827)) setNonEmpty!30827))

(assert (= setNonEmpty!30827 b!5128152))

(declare-fun m!6192326 () Bool)

(assert (=> b!5128153 m!6192326))

(declare-fun m!6192328 () Bool)

(assert (=> b!5128156 m!6192328))

(declare-fun m!6192330 () Bool)

(assert (=> b!5128156 m!6192330))

(assert (=> b!5128151 m!6192328))

(declare-fun m!6192332 () Bool)

(assert (=> start!541652 m!6192332))

(declare-fun m!6192334 () Bool)

(assert (=> b!5128159 m!6192334))

(declare-fun m!6192336 () Bool)

(assert (=> b!5128150 m!6192336))

(declare-fun m!6192338 () Bool)

(assert (=> b!5128150 m!6192338))

(declare-fun m!6192340 () Bool)

(assert (=> b!5128150 m!6192340))

(declare-fun m!6192342 () Bool)

(assert (=> b!5128150 m!6192342))

(declare-fun m!6192344 () Bool)

(assert (=> b!5128150 m!6192344))

(declare-fun m!6192346 () Bool)

(assert (=> b!5128157 m!6192346))

(declare-fun m!6192348 () Bool)

(assert (=> b!5128160 m!6192348))

(declare-fun m!6192350 () Bool)

(assert (=> b!5128149 m!6192350))

(declare-fun m!6192352 () Bool)

(assert (=> b!5128161 m!6192352))

(declare-fun m!6192354 () Bool)

(assert (=> setNonEmpty!30827 m!6192354))

(declare-fun m!6192356 () Bool)

(assert (=> b!5128148 m!6192356))

(declare-fun m!6192358 () Bool)

(assert (=> b!5128148 m!6192358))

(declare-fun m!6192360 () Bool)

(assert (=> b!5128148 m!6192360))

(declare-fun m!6192362 () Bool)

(assert (=> b!5128158 m!6192362))

(declare-fun m!6192364 () Bool)

(assert (=> b!5128158 m!6192364))

(push 1)

(assert (not b!5128153))

(assert (not b!5128158))

(assert (not b!5128156))

(assert (not start!541652))

(assert (not b!5128149))

(assert (not b!5128151))

(assert (not b!5128159))

(assert (not b!5128152))

(assert (not b!5128160))

(assert (not b!5128161))

(assert (not b!5128148))

(assert (not b!5128157))

(assert (not setNonEmpty!30827))

(assert (not b!5128150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194679 () Bool)

(declare-fun d!1658831 () Bool)

(assert (= bs!1194679 (and d!1658831 b!5128148)))

(declare-fun lambda!252450 () Int)

(assert (=> bs!1194679 (= lambda!252450 lambda!252419)))

(declare-fun bs!1194680 () Bool)

(assert (= bs!1194680 (and d!1658831 b!5128159)))

(assert (=> bs!1194680 (not (= lambda!252450 lambda!252420))))

(declare-fun bs!1194681 () Bool)

(assert (= bs!1194681 (and d!1658831 b!5128150)))

(assert (=> bs!1194681 (not (= lambda!252450 lambda!252421))))

(assert (=> d!1658831 (= (inv!78907 setElem!30827) (forall!13681 (exprs!4174 setElem!30827) lambda!252450))))

(declare-fun bs!1194682 () Bool)

(assert (= bs!1194682 d!1658831))

(declare-fun m!6192406 () Bool)

(assert (=> bs!1194682 m!6192406))

(assert (=> setNonEmpty!30827 d!1658831))

(declare-fun d!1658833 () Bool)

(declare-fun res!2183487 () Bool)

(declare-fun e!3198198 () Bool)

(assert (=> d!1658833 (=> res!2183487 e!3198198)))

(assert (=> d!1658833 (= res!2183487 (is-Nil!59387 (exprs!4174 lt!2115053)))))

(assert (=> d!1658833 (= (forall!13681 (exprs!4174 lt!2115053) lambda!252419) e!3198198)))

(declare-fun b!5128208 () Bool)

(declare-fun e!3198199 () Bool)

(assert (=> b!5128208 (= e!3198198 e!3198199)))

(declare-fun res!2183488 () Bool)

(assert (=> b!5128208 (=> (not res!2183488) (not e!3198199))))

(declare-fun dynLambda!23628 (Int Regex!14290) Bool)

(assert (=> b!5128208 (= res!2183488 (dynLambda!23628 lambda!252419 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun b!5128209 () Bool)

(assert (=> b!5128209 (= e!3198199 (forall!13681 (t!372538 (exprs!4174 lt!2115053)) lambda!252419))))

(assert (= (and d!1658833 (not res!2183487)) b!5128208))

(assert (= (and b!5128208 res!2183488) b!5128209))

(declare-fun b_lambda!199097 () Bool)

(assert (=> (not b_lambda!199097) (not b!5128208)))

(declare-fun m!6192408 () Bool)

(assert (=> b!5128208 m!6192408))

(declare-fun m!6192410 () Bool)

(assert (=> b!5128209 m!6192410))

(assert (=> b!5128148 d!1658833))

(declare-fun bs!1194683 () Bool)

(declare-fun d!1658835 () Bool)

(assert (= bs!1194683 (and d!1658835 b!5128148)))

(declare-fun lambda!252453 () Int)

(assert (=> bs!1194683 (= lambda!252453 lambda!252419)))

(declare-fun bs!1194684 () Bool)

(assert (= bs!1194684 (and d!1658835 b!5128159)))

(assert (=> bs!1194684 (not (= lambda!252453 lambda!252420))))

(declare-fun bs!1194685 () Bool)

(assert (= bs!1194685 (and d!1658835 b!5128150)))

(assert (=> bs!1194685 (not (= lambda!252453 lambda!252421))))

(declare-fun bs!1194686 () Bool)

(assert (= bs!1194686 (and d!1658835 d!1658831)))

(assert (=> bs!1194686 (= lambda!252453 lambda!252450)))

(assert (=> d!1658835 (forall!13681 (exprs!4174 lt!2115053) lambda!252453)))

(declare-fun lt!2115089 () Unit!150587)

(declare-fun choose!37782 (Context!7348 List!59511) Unit!150587)

(assert (=> d!1658835 (= lt!2115089 (choose!37782 lt!2115053 (exprs!4174 lt!2115053)))))

(assert (=> d!1658835 (= (exprs!4174 lt!2115053) (exprs!4174 lt!2115053))))

(assert (=> d!1658835 (= (lemmaContextForallValidExprs!9 lt!2115053 (exprs!4174 lt!2115053)) lt!2115089)))

(declare-fun bs!1194687 () Bool)

(assert (= bs!1194687 d!1658835))

(declare-fun m!6192412 () Bool)

(assert (=> bs!1194687 m!6192412))

(declare-fun m!6192414 () Bool)

(assert (=> bs!1194687 m!6192414))

(assert (=> b!5128148 d!1658835))

(declare-fun d!1658837 () Bool)

(declare-fun lt!2115092 () Bool)

(assert (=> d!1658837 (= lt!2115092 (forall!13682 (toList!8289 z!1113) lambda!252422))))

(declare-fun choose!37783 ((Set Context!7348) Int) Bool)

(assert (=> d!1658837 (= lt!2115092 (choose!37783 z!1113 lambda!252422))))

(assert (=> d!1658837 (= (forall!13683 z!1113 lambda!252422) lt!2115092)))

(declare-fun bs!1194688 () Bool)

(assert (= bs!1194688 d!1658837))

(assert (=> bs!1194688 m!6192330))

(assert (=> bs!1194688 m!6192330))

(declare-fun m!6192416 () Bool)

(assert (=> bs!1194688 m!6192416))

(declare-fun m!6192418 () Bool)

(assert (=> bs!1194688 m!6192418))

(assert (=> b!5128157 d!1658837))

(declare-fun d!1658839 () Bool)

(declare-fun res!2183493 () Bool)

(declare-fun e!3198204 () Bool)

(assert (=> d!1658839 (=> res!2183493 e!3198204)))

(assert (=> d!1658839 (= res!2183493 (is-Nil!59388 lt!2115054))))

(assert (=> d!1658839 (= (forall!13682 lt!2115054 lambda!252422) e!3198204)))

(declare-fun b!5128214 () Bool)

(declare-fun e!3198205 () Bool)

(assert (=> b!5128214 (= e!3198204 e!3198205)))

(declare-fun res!2183494 () Bool)

(assert (=> b!5128214 (=> (not res!2183494) (not e!3198205))))

(declare-fun dynLambda!23629 (Int Context!7348) Bool)

(assert (=> b!5128214 (= res!2183494 (dynLambda!23629 lambda!252422 (h!65836 lt!2115054)))))

(declare-fun b!5128215 () Bool)

(assert (=> b!5128215 (= e!3198205 (forall!13682 (t!372539 lt!2115054) lambda!252422))))

(assert (= (and d!1658839 (not res!2183493)) b!5128214))

(assert (= (and b!5128214 res!2183494) b!5128215))

(declare-fun b_lambda!199099 () Bool)

(assert (=> (not b_lambda!199099) (not b!5128214)))

(declare-fun m!6192420 () Bool)

(assert (=> b!5128214 m!6192420))

(declare-fun m!6192422 () Bool)

(assert (=> b!5128215 m!6192422))

(assert (=> b!5128156 d!1658839))

(declare-fun d!1658841 () Bool)

(declare-fun e!3198208 () Bool)

(assert (=> d!1658841 e!3198208))

(declare-fun res!2183497 () Bool)

(assert (=> d!1658841 (=> (not res!2183497) (not e!3198208))))

(declare-fun lt!2115095 () List!59512)

(declare-fun noDuplicate!1087 (List!59512) Bool)

(assert (=> d!1658841 (= res!2183497 (noDuplicate!1087 lt!2115095))))

(declare-fun choose!37784 ((Set Context!7348)) List!59512)

(assert (=> d!1658841 (= lt!2115095 (choose!37784 z!1113))))

(assert (=> d!1658841 (= (toList!8289 z!1113) lt!2115095)))

(declare-fun b!5128218 () Bool)

(declare-fun content!10558 (List!59512) (Set Context!7348))

(assert (=> b!5128218 (= e!3198208 (= (content!10558 lt!2115095) z!1113))))

(assert (= (and d!1658841 res!2183497) b!5128218))

(declare-fun m!6192424 () Bool)

(assert (=> d!1658841 m!6192424))

(declare-fun m!6192426 () Bool)

(assert (=> d!1658841 m!6192426))

(declare-fun m!6192428 () Bool)

(assert (=> b!5128218 m!6192428))

(assert (=> b!5128156 d!1658841))

(declare-fun d!1658843 () Bool)

(declare-fun lt!2115098 () Bool)

(assert (=> d!1658843 (= lt!2115098 (set.member lt!2115053 (content!10558 lt!2115054)))))

(declare-fun e!3198213 () Bool)

(assert (=> d!1658843 (= lt!2115098 e!3198213)))

(declare-fun res!2183503 () Bool)

(assert (=> d!1658843 (=> (not res!2183503) (not e!3198213))))

(assert (=> d!1658843 (= res!2183503 (is-Cons!59388 lt!2115054))))

(assert (=> d!1658843 (= (contains!19614 lt!2115054 lt!2115053) lt!2115098)))

(declare-fun b!5128223 () Bool)

(declare-fun e!3198214 () Bool)

(assert (=> b!5128223 (= e!3198213 e!3198214)))

(declare-fun res!2183502 () Bool)

(assert (=> b!5128223 (=> res!2183502 e!3198214)))

(assert (=> b!5128223 (= res!2183502 (= (h!65836 lt!2115054) lt!2115053))))

(declare-fun b!5128224 () Bool)

(assert (=> b!5128224 (= e!3198214 (contains!19614 (t!372539 lt!2115054) lt!2115053))))

(assert (= (and d!1658843 res!2183503) b!5128223))

(assert (= (and b!5128223 (not res!2183502)) b!5128224))

(declare-fun m!6192430 () Bool)

(assert (=> d!1658843 m!6192430))

(declare-fun m!6192432 () Bool)

(assert (=> d!1658843 m!6192432))

(declare-fun m!6192434 () Bool)

(assert (=> b!5128224 m!6192434))

(assert (=> b!5128161 d!1658843))

(declare-fun bs!1194693 () Bool)

(declare-fun d!1658845 () Bool)

(assert (= bs!1194693 (and d!1658845 b!5128153)))

(declare-fun lambda!252469 () Int)

(assert (=> bs!1194693 (not (= lambda!252469 lambda!252418))))

(declare-fun bs!1194694 () Bool)

(assert (= bs!1194694 (and d!1658845 b!5128157)))

(assert (=> bs!1194694 (= lambda!252469 lambda!252422)))

(declare-fun bs!1194695 () Bool)

(declare-fun b!5128229 () Bool)

(assert (= bs!1194695 (and b!5128229 b!5128153)))

(declare-fun lambda!252470 () Int)

(assert (=> bs!1194695 (not (= lambda!252470 lambda!252418))))

(declare-fun bs!1194696 () Bool)

(assert (= bs!1194696 (and b!5128229 b!5128157)))

(assert (=> bs!1194696 (not (= lambda!252470 lambda!252422))))

(declare-fun bs!1194697 () Bool)

(assert (= bs!1194697 (and b!5128229 d!1658845)))

(assert (=> bs!1194697 (not (= lambda!252470 lambda!252469))))

(declare-fun bs!1194698 () Bool)

(declare-fun b!5128230 () Bool)

(assert (= bs!1194698 (and b!5128230 b!5128153)))

(declare-fun lambda!252471 () Int)

(assert (=> bs!1194698 (not (= lambda!252471 lambda!252418))))

(declare-fun bs!1194699 () Bool)

(assert (= bs!1194699 (and b!5128230 b!5128157)))

(assert (=> bs!1194699 (not (= lambda!252471 lambda!252422))))

(declare-fun bs!1194700 () Bool)

(assert (= bs!1194700 (and b!5128230 d!1658845)))

(assert (=> bs!1194700 (not (= lambda!252471 lambda!252469))))

(declare-fun bs!1194701 () Bool)

(assert (= bs!1194701 (and b!5128230 b!5128229)))

(assert (=> bs!1194701 (= lambda!252471 lambda!252470)))

(declare-fun bm!356972 () Bool)

(declare-fun call!356977 () List!59512)

(assert (=> bm!356972 (= call!356977 (toList!8289 z!1113))))

(declare-fun e!3198221 () Unit!150587)

(declare-fun Unit!150595 () Unit!150587)

(assert (=> b!5128230 (= e!3198221 Unit!150595)))

(declare-fun lt!2115121 () List!59512)

(assert (=> b!5128230 (= lt!2115121 call!356977)))

(declare-fun lt!2115117 () Unit!150587)

(declare-fun lemmaForallThenNotExists!344 (List!59512 Int) Unit!150587)

(assert (=> b!5128230 (= lt!2115117 (lemmaForallThenNotExists!344 lt!2115121 lambda!252469))))

(declare-fun call!356976 () Bool)

(assert (=> b!5128230 (not call!356976)))

(declare-fun lt!2115116 () Unit!150587)

(assert (=> b!5128230 (= lt!2115116 lt!2115117)))

(declare-fun Unit!150596 () Unit!150587)

(assert (=> b!5128229 (= e!3198221 Unit!150596)))

(declare-fun lt!2115120 () List!59512)

(assert (=> b!5128229 (= lt!2115120 call!356977)))

(declare-fun lt!2115115 () Unit!150587)

(declare-fun lemmaNotForallThenExists!361 (List!59512 Int) Unit!150587)

(assert (=> b!5128229 (= lt!2115115 (lemmaNotForallThenExists!361 lt!2115120 lambda!252469))))

(assert (=> b!5128229 call!356976))

(declare-fun lt!2115119 () Unit!150587)

(assert (=> b!5128229 (= lt!2115119 lt!2115115)))

(declare-fun bm!356971 () Bool)

(declare-fun c!881853 () Bool)

(declare-fun exists!1546 (List!59512 Int) Bool)

(assert (=> bm!356971 (= call!356976 (exists!1546 (ite c!881853 lt!2115120 lt!2115121) (ite c!881853 lambda!252470 lambda!252471)))))

(declare-fun lt!2115122 () Bool)

(declare-datatypes ((List!59515 0))(
  ( (Nil!59391) (Cons!59391 (h!65839 C!28846) (t!372542 List!59515)) )
))
(declare-datatypes ((Option!14721 0))(
  ( (None!14720) (Some!14720 (v!50735 List!59515)) )
))
(declare-fun isEmpty!31982 (Option!14721) Bool)

(declare-fun getLanguageWitness!854 ((Set Context!7348)) Option!14721)

(assert (=> d!1658845 (= lt!2115122 (isEmpty!31982 (getLanguageWitness!854 z!1113)))))

(assert (=> d!1658845 (= lt!2115122 (forall!13683 z!1113 lambda!252469))))

(declare-fun lt!2115118 () Unit!150587)

(assert (=> d!1658845 (= lt!2115118 e!3198221)))

(assert (=> d!1658845 (= c!881853 (not (forall!13683 z!1113 lambda!252469)))))

(assert (=> d!1658845 (= (lostCauseZipper!1156 z!1113) lt!2115122)))

(assert (= (and d!1658845 c!881853) b!5128229))

(assert (= (and d!1658845 (not c!881853)) b!5128230))

(assert (= (or b!5128229 b!5128230) bm!356971))

(assert (= (or b!5128229 b!5128230) bm!356972))

(declare-fun m!6192438 () Bool)

(assert (=> b!5128230 m!6192438))

(declare-fun m!6192440 () Bool)

(assert (=> b!5128229 m!6192440))

(assert (=> bm!356972 m!6192330))

(declare-fun m!6192442 () Bool)

(assert (=> d!1658845 m!6192442))

(assert (=> d!1658845 m!6192442))

(declare-fun m!6192444 () Bool)

(assert (=> d!1658845 m!6192444))

(declare-fun m!6192446 () Bool)

(assert (=> d!1658845 m!6192446))

(assert (=> d!1658845 m!6192446))

(declare-fun m!6192448 () Bool)

(assert (=> bm!356971 m!6192448))

(assert (=> b!5128160 d!1658845))

(declare-fun d!1658851 () Bool)

(declare-fun lt!2115125 () Bool)

(assert (=> d!1658851 (= lt!2115125 (exists!1546 (toList!8289 z!1113) lambda!252418))))

(declare-fun choose!37785 ((Set Context!7348) Int) Bool)

(assert (=> d!1658851 (= lt!2115125 (choose!37785 z!1113 lambda!252418))))

(assert (=> d!1658851 (= (exists!1544 z!1113 lambda!252418) lt!2115125)))

(declare-fun bs!1194702 () Bool)

(assert (= bs!1194702 d!1658851))

(assert (=> bs!1194702 m!6192330))

(assert (=> bs!1194702 m!6192330))

(declare-fun m!6192450 () Bool)

(assert (=> bs!1194702 m!6192450))

(declare-fun m!6192452 () Bool)

(assert (=> bs!1194702 m!6192452))

(assert (=> b!5128153 d!1658851))

(declare-fun bs!1194706 () Bool)

(declare-fun d!1658853 () Bool)

(assert (= bs!1194706 (and d!1658853 d!1658831)))

(declare-fun lambda!252477 () Int)

(assert (=> bs!1194706 (not (= lambda!252477 lambda!252450))))

(declare-fun bs!1194707 () Bool)

(assert (= bs!1194707 (and d!1658853 d!1658835)))

(assert (=> bs!1194707 (not (= lambda!252477 lambda!252453))))

(declare-fun bs!1194708 () Bool)

(assert (= bs!1194708 (and d!1658853 b!5128159)))

(assert (=> bs!1194708 (= lambda!252477 lambda!252420)))

(declare-fun bs!1194709 () Bool)

(assert (= bs!1194709 (and d!1658853 b!5128150)))

(assert (=> bs!1194709 (not (= lambda!252477 lambda!252421))))

(declare-fun bs!1194710 () Bool)

(assert (= bs!1194710 (and d!1658853 b!5128148)))

(assert (=> bs!1194710 (not (= lambda!252477 lambda!252419))))

(assert (=> d!1658853 (= (nullableContext!11 lt!2115053) (forall!13681 (exprs!4174 lt!2115053) lambda!252477))))

(declare-fun bs!1194711 () Bool)

(assert (= bs!1194711 d!1658853))

(declare-fun m!6192456 () Bool)

(assert (=> bs!1194711 m!6192456))

(assert (=> b!5128158 d!1658853))

(declare-fun d!1658857 () Bool)

(declare-fun e!3198228 () Bool)

(assert (=> d!1658857 e!3198228))

(declare-fun res!2183510 () Bool)

(assert (=> d!1658857 (=> (not res!2183510) (not e!3198228))))

(declare-fun lt!2115128 () Context!7348)

(assert (=> d!1658857 (= res!2183510 (dynLambda!23629 lambda!252418 lt!2115128))))

(declare-fun getWitness!706 (List!59512 Int) Context!7348)

(assert (=> d!1658857 (= lt!2115128 (getWitness!706 (toList!8289 z!1113) lambda!252418))))

(assert (=> d!1658857 (exists!1544 z!1113 lambda!252418)))

(assert (=> d!1658857 (= (getWitness!703 z!1113 lambda!252418) lt!2115128)))

(declare-fun b!5128237 () Bool)

(assert (=> b!5128237 (= e!3198228 (set.member lt!2115128 z!1113))))

(assert (= (and d!1658857 res!2183510) b!5128237))

(declare-fun b_lambda!199101 () Bool)

(assert (=> (not b_lambda!199101) (not d!1658857)))

(declare-fun m!6192458 () Bool)

(assert (=> d!1658857 m!6192458))

(assert (=> d!1658857 m!6192330))

(assert (=> d!1658857 m!6192330))

(declare-fun m!6192460 () Bool)

(assert (=> d!1658857 m!6192460))

(assert (=> d!1658857 m!6192326))

(declare-fun m!6192462 () Bool)

(assert (=> b!5128237 m!6192462))

(assert (=> b!5128158 d!1658857))

(declare-fun bs!1194712 () Bool)

(declare-fun d!1658859 () Bool)

(assert (= bs!1194712 (and d!1658859 d!1658831)))

(declare-fun lambda!252480 () Int)

(assert (=> bs!1194712 (not (= lambda!252480 lambda!252450))))

(declare-fun bs!1194713 () Bool)

(assert (= bs!1194713 (and d!1658859 d!1658835)))

(assert (=> bs!1194713 (not (= lambda!252480 lambda!252453))))

(declare-fun bs!1194714 () Bool)

(assert (= bs!1194714 (and d!1658859 b!5128159)))

(assert (=> bs!1194714 (not (= lambda!252480 lambda!252420))))

(declare-fun bs!1194715 () Bool)

(assert (= bs!1194715 (and d!1658859 d!1658853)))

(assert (=> bs!1194715 (not (= lambda!252480 lambda!252477))))

(declare-fun bs!1194716 () Bool)

(assert (= bs!1194716 (and d!1658859 b!5128150)))

(assert (=> bs!1194716 (= lambda!252480 lambda!252421)))

(declare-fun bs!1194717 () Bool)

(assert (= bs!1194717 (and d!1658859 b!5128148)))

(assert (=> bs!1194717 (not (= lambda!252480 lambda!252419))))

(declare-fun exists!1547 (List!59511 Int) Bool)

(assert (=> d!1658859 (= (lostCause!1230 lt!2115053) (exists!1547 (exprs!4174 lt!2115053) lambda!252480))))

(declare-fun bs!1194718 () Bool)

(assert (= bs!1194718 d!1658859))

(declare-fun m!6192468 () Bool)

(assert (=> bs!1194718 m!6192468))

(assert (=> b!5128149 d!1658859))

(declare-fun bs!1194719 () Bool)

(declare-fun d!1658863 () Bool)

(assert (= bs!1194719 (and d!1658863 b!5128229)))

(declare-fun lambda!252483 () Int)

(assert (=> bs!1194719 (not (= lambda!252483 lambda!252470))))

(declare-fun bs!1194720 () Bool)

(assert (= bs!1194720 (and d!1658863 d!1658845)))

(assert (=> bs!1194720 (not (= lambda!252483 lambda!252469))))

(declare-fun bs!1194721 () Bool)

(assert (= bs!1194721 (and d!1658863 b!5128153)))

(assert (=> bs!1194721 (= lambda!252483 lambda!252418)))

(declare-fun bs!1194722 () Bool)

(assert (= bs!1194722 (and d!1658863 b!5128230)))

(assert (=> bs!1194722 (not (= lambda!252483 lambda!252471))))

(declare-fun bs!1194723 () Bool)

(assert (= bs!1194723 (and d!1658863 b!5128157)))

(assert (=> bs!1194723 (not (= lambda!252483 lambda!252422))))

(assert (=> d!1658863 (= (nullableZipper!1075 z!1113) (exists!1544 z!1113 lambda!252483))))

(declare-fun bs!1194724 () Bool)

(assert (= bs!1194724 d!1658863))

(declare-fun m!6192470 () Bool)

(assert (=> bs!1194724 m!6192470))

(assert (=> start!541652 d!1658863))

(assert (=> b!5128151 d!1658839))

(declare-fun d!1658865 () Bool)

(assert (=> d!1658865 (dynLambda!23628 lambda!252419 lt!2115056)))

(declare-fun lt!2115134 () Unit!150587)

(declare-fun choose!37786 (List!59511 Int Regex!14290) Unit!150587)

(assert (=> d!1658865 (= lt!2115134 (choose!37786 (exprs!4174 lt!2115053) lambda!252419 lt!2115056))))

(declare-fun e!3198236 () Bool)

(assert (=> d!1658865 e!3198236))

(declare-fun res!2183518 () Bool)

(assert (=> d!1658865 (=> (not res!2183518) (not e!3198236))))

(assert (=> d!1658865 (= res!2183518 (forall!13681 (exprs!4174 lt!2115053) lambda!252419))))

(assert (=> d!1658865 (= (forallContained!4592 (exprs!4174 lt!2115053) lambda!252419 lt!2115056) lt!2115134)))

(declare-fun b!5128245 () Bool)

(declare-fun contains!19616 (List!59511 Regex!14290) Bool)

(assert (=> b!5128245 (= e!3198236 (contains!19616 (exprs!4174 lt!2115053) lt!2115056))))

(assert (= (and d!1658865 res!2183518) b!5128245))

(declare-fun b_lambda!199105 () Bool)

(assert (=> (not b_lambda!199105) (not d!1658865)))

(declare-fun m!6192478 () Bool)

(assert (=> d!1658865 m!6192478))

(declare-fun m!6192480 () Bool)

(assert (=> d!1658865 m!6192480))

(assert (=> d!1658865 m!6192358))

(declare-fun m!6192482 () Bool)

(assert (=> b!5128245 m!6192482))

(assert (=> b!5128150 d!1658865))

(declare-fun d!1658869 () Bool)

(declare-fun e!3198247 () Bool)

(assert (=> d!1658869 e!3198247))

(declare-fun res!2183524 () Bool)

(assert (=> d!1658869 (=> (not res!2183524) (not e!3198247))))

(declare-fun lt!2115140 () Regex!14290)

(assert (=> d!1658869 (= res!2183524 (dynLambda!23628 lambda!252421 lt!2115140))))

(declare-fun e!3198246 () Regex!14290)

(assert (=> d!1658869 (= lt!2115140 e!3198246)))

(declare-fun c!881864 () Bool)

(declare-fun e!3198245 () Bool)

(assert (=> d!1658869 (= c!881864 e!3198245)))

(declare-fun res!2183523 () Bool)

(assert (=> d!1658869 (=> (not res!2183523) (not e!3198245))))

(assert (=> d!1658869 (= res!2183523 (is-Cons!59387 (exprs!4174 lt!2115053)))))

(assert (=> d!1658869 (exists!1547 (exprs!4174 lt!2115053) lambda!252421)))

(assert (=> d!1658869 (= (getWitness!702 (exprs!4174 lt!2115053) lambda!252421) lt!2115140)))

(declare-fun b!5128258 () Bool)

(assert (=> b!5128258 (= e!3198246 (h!65835 (exprs!4174 lt!2115053)))))

(declare-fun b!5128259 () Bool)

(assert (=> b!5128259 (= e!3198245 (dynLambda!23628 lambda!252421 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun b!5128260 () Bool)

(assert (=> b!5128260 (= e!3198247 (contains!19616 (exprs!4174 lt!2115053) lt!2115140))))

(declare-fun b!5128261 () Bool)

(declare-fun lt!2115139 () Unit!150587)

(declare-fun Unit!150597 () Unit!150587)

(assert (=> b!5128261 (= lt!2115139 Unit!150597)))

(assert (=> b!5128261 false))

(declare-fun e!3198248 () Regex!14290)

(declare-fun head!10970 (List!59511) Regex!14290)

(assert (=> b!5128261 (= e!3198248 (head!10970 (exprs!4174 lt!2115053)))))

(declare-fun b!5128262 () Bool)

(assert (=> b!5128262 (= e!3198248 (getWitness!702 (t!372538 (exprs!4174 lt!2115053)) lambda!252421))))

(declare-fun b!5128263 () Bool)

(assert (=> b!5128263 (= e!3198246 e!3198248)))

(declare-fun c!881865 () Bool)

(assert (=> b!5128263 (= c!881865 (is-Cons!59387 (exprs!4174 lt!2115053)))))

(assert (= (and d!1658869 res!2183523) b!5128259))

(assert (= (and d!1658869 c!881864) b!5128258))

(assert (= (and d!1658869 (not c!881864)) b!5128263))

(assert (= (and b!5128263 c!881865) b!5128262))

(assert (= (and b!5128263 (not c!881865)) b!5128261))

(assert (= (and d!1658869 res!2183524) b!5128260))

(declare-fun b_lambda!199107 () Bool)

(assert (=> (not b_lambda!199107) (not d!1658869)))

(declare-fun b_lambda!199109 () Bool)

(assert (=> (not b_lambda!199109) (not b!5128259)))

(declare-fun m!6192486 () Bool)

(assert (=> b!5128260 m!6192486))

(declare-fun m!6192488 () Bool)

(assert (=> b!5128259 m!6192488))

(declare-fun m!6192490 () Bool)

(assert (=> b!5128262 m!6192490))

(declare-fun m!6192492 () Bool)

(assert (=> d!1658869 m!6192492))

(declare-fun m!6192494 () Bool)

(assert (=> d!1658869 m!6192494))

(declare-fun m!6192496 () Bool)

(assert (=> b!5128261 m!6192496))

(assert (=> b!5128150 d!1658869))

(declare-fun d!1658873 () Bool)

(declare-fun lostCauseFct!305 (Regex!14290) Bool)

(assert (=> d!1658873 (= (lostCause!1231 lt!2115056) (lostCauseFct!305 lt!2115056))))

(declare-fun bs!1194730 () Bool)

(assert (= bs!1194730 d!1658873))

(declare-fun m!6192498 () Bool)

(assert (=> bs!1194730 m!6192498))

(assert (=> b!5128150 d!1658873))

(declare-fun d!1658875 () Bool)

(assert (=> d!1658875 (not (lostCause!1231 lt!2115056))))

(declare-fun lt!2115146 () Unit!150587)

(declare-fun choose!37787 (Regex!14290) Unit!150587)

(assert (=> d!1658875 (= lt!2115146 (choose!37787 lt!2115056))))

(declare-fun validRegex!6223 (Regex!14290) Bool)

(assert (=> d!1658875 (validRegex!6223 lt!2115056)))

(assert (=> d!1658875 (= (lemmaNullableThenNotLostCause!15 lt!2115056) lt!2115146)))

(declare-fun bs!1194731 () Bool)

(assert (= bs!1194731 d!1658875))

(assert (=> bs!1194731 m!6192342))

(declare-fun m!6192506 () Bool)

(assert (=> bs!1194731 m!6192506))

(declare-fun m!6192508 () Bool)

(assert (=> bs!1194731 m!6192508))

(assert (=> b!5128150 d!1658875))

(declare-fun d!1658879 () Bool)

(assert (=> d!1658879 (dynLambda!23628 lambda!252420 lt!2115056)))

(declare-fun lt!2115147 () Unit!150587)

(assert (=> d!1658879 (= lt!2115147 (choose!37786 (exprs!4174 lt!2115053) lambda!252420 lt!2115056))))

(declare-fun e!3198252 () Bool)

(assert (=> d!1658879 e!3198252))

(declare-fun res!2183528 () Bool)

(assert (=> d!1658879 (=> (not res!2183528) (not e!3198252))))

(assert (=> d!1658879 (= res!2183528 (forall!13681 (exprs!4174 lt!2115053) lambda!252420))))

(assert (=> d!1658879 (= (forallContained!4592 (exprs!4174 lt!2115053) lambda!252420 lt!2115056) lt!2115147)))

(declare-fun b!5128267 () Bool)

(assert (=> b!5128267 (= e!3198252 (contains!19616 (exprs!4174 lt!2115053) lt!2115056))))

(assert (= (and d!1658879 res!2183528) b!5128267))

(declare-fun b_lambda!199113 () Bool)

(assert (=> (not b_lambda!199113) (not d!1658879)))

(declare-fun m!6192510 () Bool)

(assert (=> d!1658879 m!6192510))

(declare-fun m!6192512 () Bool)

(assert (=> d!1658879 m!6192512))

(assert (=> d!1658879 m!6192334))

(assert (=> b!5128267 m!6192482))

(assert (=> b!5128150 d!1658879))

(declare-fun d!1658881 () Bool)

(declare-fun res!2183529 () Bool)

(declare-fun e!3198253 () Bool)

(assert (=> d!1658881 (=> res!2183529 e!3198253)))

(assert (=> d!1658881 (= res!2183529 (is-Nil!59387 (exprs!4174 lt!2115053)))))

(assert (=> d!1658881 (= (forall!13681 (exprs!4174 lt!2115053) lambda!252420) e!3198253)))

(declare-fun b!5128268 () Bool)

(declare-fun e!3198254 () Bool)

(assert (=> b!5128268 (= e!3198253 e!3198254)))

(declare-fun res!2183530 () Bool)

(assert (=> b!5128268 (=> (not res!2183530) (not e!3198254))))

(assert (=> b!5128268 (= res!2183530 (dynLambda!23628 lambda!252420 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun b!5128269 () Bool)

(assert (=> b!5128269 (= e!3198254 (forall!13681 (t!372538 (exprs!4174 lt!2115053)) lambda!252420))))

(assert (= (and d!1658881 (not res!2183529)) b!5128268))

(assert (= (and b!5128268 res!2183530) b!5128269))

(declare-fun b_lambda!199115 () Bool)

(assert (=> (not b_lambda!199115) (not b!5128268)))

(declare-fun m!6192514 () Bool)

(assert (=> b!5128268 m!6192514))

(declare-fun m!6192516 () Bool)

(assert (=> b!5128269 m!6192516))

(assert (=> b!5128159 d!1658881))

(declare-fun b!5128274 () Bool)

(declare-fun e!3198257 () Bool)

(declare-fun tp!1430706 () Bool)

(declare-fun tp!1430707 () Bool)

(assert (=> b!5128274 (= e!3198257 (and tp!1430706 tp!1430707))))

(assert (=> b!5128152 (= tp!1430694 e!3198257)))

(assert (= (and b!5128152 (is-Cons!59387 (exprs!4174 setElem!30827))) b!5128274))

(declare-fun condSetEmpty!30833 () Bool)

(assert (=> setNonEmpty!30827 (= condSetEmpty!30833 (= setRest!30827 (as set.empty (Set Context!7348))))))

(declare-fun setRes!30833 () Bool)

(assert (=> setNonEmpty!30827 (= tp!1430695 setRes!30833)))

(declare-fun setIsEmpty!30833 () Bool)

(assert (=> setIsEmpty!30833 setRes!30833))

(declare-fun e!3198260 () Bool)

(declare-fun tp!1430713 () Bool)

(declare-fun setElem!30833 () Context!7348)

(declare-fun setNonEmpty!30833 () Bool)

(assert (=> setNonEmpty!30833 (= setRes!30833 (and tp!1430713 (inv!78907 setElem!30833) e!3198260))))

(declare-fun setRest!30833 () (Set Context!7348))

(assert (=> setNonEmpty!30833 (= setRest!30827 (set.union (set.insert setElem!30833 (as set.empty (Set Context!7348))) setRest!30833))))

(declare-fun b!5128279 () Bool)

(declare-fun tp!1430712 () Bool)

(assert (=> b!5128279 (= e!3198260 tp!1430712)))

(assert (= (and setNonEmpty!30827 condSetEmpty!30833) setIsEmpty!30833))

(assert (= (and setNonEmpty!30827 (not condSetEmpty!30833)) setNonEmpty!30833))

(assert (= setNonEmpty!30833 b!5128279))

(declare-fun m!6192518 () Bool)

(assert (=> setNonEmpty!30833 m!6192518))

(declare-fun b_lambda!199117 () Bool)

(assert (= b_lambda!199109 (or b!5128150 b_lambda!199117)))

(declare-fun bs!1194732 () Bool)

(declare-fun d!1658883 () Bool)

(assert (= bs!1194732 (and d!1658883 b!5128150)))

(assert (=> bs!1194732 (= (dynLambda!23628 lambda!252421 (h!65835 (exprs!4174 lt!2115053))) (lostCause!1231 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun m!6192520 () Bool)

(assert (=> bs!1194732 m!6192520))

(assert (=> b!5128259 d!1658883))

(declare-fun b_lambda!199119 () Bool)

(assert (= b_lambda!199105 (or b!5128148 b_lambda!199119)))

(declare-fun bs!1194733 () Bool)

(declare-fun d!1658885 () Bool)

(assert (= bs!1194733 (and d!1658885 b!5128148)))

(assert (=> bs!1194733 (= (dynLambda!23628 lambda!252419 lt!2115056) (validRegex!6223 lt!2115056))))

(assert (=> bs!1194733 m!6192508))

(assert (=> d!1658865 d!1658885))

(declare-fun b_lambda!199121 () Bool)

(assert (= b_lambda!199097 (or b!5128148 b_lambda!199121)))

(declare-fun bs!1194734 () Bool)

(declare-fun d!1658887 () Bool)

(assert (= bs!1194734 (and d!1658887 b!5128148)))

(assert (=> bs!1194734 (= (dynLambda!23628 lambda!252419 (h!65835 (exprs!4174 lt!2115053))) (validRegex!6223 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun m!6192522 () Bool)

(assert (=> bs!1194734 m!6192522))

(assert (=> b!5128208 d!1658887))

(declare-fun b_lambda!199123 () Bool)

(assert (= b_lambda!199115 (or b!5128159 b_lambda!199123)))

(declare-fun bs!1194735 () Bool)

(declare-fun d!1658889 () Bool)

(assert (= bs!1194735 (and d!1658889 b!5128159)))

(declare-fun nullable!4728 (Regex!14290) Bool)

(assert (=> bs!1194735 (= (dynLambda!23628 lambda!252420 (h!65835 (exprs!4174 lt!2115053))) (nullable!4728 (h!65835 (exprs!4174 lt!2115053))))))

(declare-fun m!6192524 () Bool)

(assert (=> bs!1194735 m!6192524))

(assert (=> b!5128268 d!1658889))

(declare-fun b_lambda!199125 () Bool)

(assert (= b_lambda!199099 (or b!5128157 b_lambda!199125)))

(declare-fun bs!1194736 () Bool)

(declare-fun d!1658891 () Bool)

(assert (= bs!1194736 (and d!1658891 b!5128157)))

(assert (=> bs!1194736 (= (dynLambda!23629 lambda!252422 (h!65836 lt!2115054)) (lostCause!1230 (h!65836 lt!2115054)))))

(declare-fun m!6192526 () Bool)

(assert (=> bs!1194736 m!6192526))

(assert (=> b!5128214 d!1658891))

(declare-fun b_lambda!199127 () Bool)

(assert (= b_lambda!199107 (or b!5128150 b_lambda!199127)))

(declare-fun bs!1194737 () Bool)

(declare-fun d!1658893 () Bool)

(assert (= bs!1194737 (and d!1658893 b!5128150)))

(assert (=> bs!1194737 (= (dynLambda!23628 lambda!252421 lt!2115140) (lostCause!1231 lt!2115140))))

(declare-fun m!6192528 () Bool)

(assert (=> bs!1194737 m!6192528))

(assert (=> d!1658869 d!1658893))

(declare-fun b_lambda!199129 () Bool)

(assert (= b_lambda!199113 (or b!5128159 b_lambda!199129)))

(declare-fun bs!1194738 () Bool)

(declare-fun d!1658895 () Bool)

(assert (= bs!1194738 (and d!1658895 b!5128159)))

(assert (=> bs!1194738 (= (dynLambda!23628 lambda!252420 lt!2115056) (nullable!4728 lt!2115056))))

(declare-fun m!6192530 () Bool)

(assert (=> bs!1194738 m!6192530))

(assert (=> d!1658879 d!1658895))

(declare-fun b_lambda!199131 () Bool)

(assert (= b_lambda!199101 (or b!5128153 b_lambda!199131)))

(declare-fun bs!1194739 () Bool)

(declare-fun d!1658897 () Bool)

(assert (= bs!1194739 (and d!1658897 b!5128153)))

(assert (=> bs!1194739 (= (dynLambda!23629 lambda!252418 lt!2115128) (nullableContext!11 lt!2115128))))

(declare-fun m!6192532 () Bool)

(assert (=> bs!1194739 m!6192532))

(assert (=> d!1658857 d!1658897))

(push 1)

(assert (not b!5128209))

(assert (not bs!1194734))

(assert (not d!1658853))

(assert (not b!5128267))

(assert (not b!5128245))

(assert (not b_lambda!199117))

(assert (not d!1658865))

(assert (not d!1658859))

(assert (not b!5128230))

(assert (not d!1658831))

(assert (not d!1658851))

(assert (not d!1658845))

(assert (not b!5128262))

(assert (not d!1658857))

(assert (not b!5128279))

(assert (not d!1658837))

(assert (not b!5128260))

(assert (not b!5128229))

(assert (not setNonEmpty!30833))

(assert (not bs!1194733))

(assert (not b!5128274))

(assert (not bm!356971))

(assert (not bs!1194735))

(assert (not d!1658875))

(assert (not b_lambda!199123))

(assert (not bs!1194732))

(assert (not b!5128269))

(assert (not b_lambda!199131))

(assert (not d!1658873))

(assert (not b_lambda!199121))

(assert (not d!1658841))

(assert (not b!5128261))

(assert (not d!1658843))

(assert (not bs!1194738))

(assert (not d!1658879))

(assert (not b_lambda!199129))

(assert (not bs!1194739))

(assert (not d!1658835))

(assert (not b_lambda!199125))

(assert (not b!5128215))

(assert (not bs!1194737))

(assert (not b_lambda!199119))

(assert (not b_lambda!199127))

(assert (not bs!1194736))

(assert (not d!1658863))

(assert (not bm!356972))

(assert (not b!5128218))

(assert (not b!5128224))

(assert (not d!1658869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

