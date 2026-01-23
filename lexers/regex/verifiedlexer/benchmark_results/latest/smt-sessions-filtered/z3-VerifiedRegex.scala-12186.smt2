; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686174 () Bool)

(assert start!686174)

(declare-fun b!7067043 () Bool)

(assert (=> b!7067043 true))

(declare-fun b!7067057 () Bool)

(assert (=> b!7067057 true))

(declare-fun b!7067066 () Bool)

(assert (=> b!7067066 true))

(declare-fun bs!1879924 () Bool)

(declare-fun b!7067039 () Bool)

(assert (= bs!1879924 (and b!7067039 b!7067043)))

(declare-fun lambda!424138 () Int)

(declare-fun lambda!424134 () Int)

(assert (=> bs!1879924 (not (= lambda!424138 lambda!424134))))

(declare-fun bs!1879925 () Bool)

(declare-fun b!7067046 () Bool)

(assert (= bs!1879925 (and b!7067046 b!7067043)))

(declare-fun lambda!424139 () Int)

(declare-datatypes ((C!35508 0))(
  ( (C!35509 (val!27456 Int)) )
))
(declare-datatypes ((List!68383 0))(
  ( (Nil!68259) (Cons!68259 (h!74707 C!35508) (t!382164 List!68383)) )
))
(declare-datatypes ((tuple2!68240 0))(
  ( (tuple2!68241 (_1!37423 List!68383) (_2!37423 List!68383)) )
))
(declare-fun lt!2542084 () tuple2!68240)

(declare-fun s!7408 () List!68383)

(assert (=> bs!1879925 (= (= (_1!37423 lt!2542084) s!7408) (= lambda!424139 lambda!424134))))

(declare-fun bs!1879926 () Bool)

(assert (= bs!1879926 (and b!7067046 b!7067039)))

(assert (=> bs!1879926 (not (= lambda!424139 lambda!424138))))

(assert (=> b!7067046 true))

(declare-fun setIsEmpty!50127 () Bool)

(declare-fun setRes!50127 () Bool)

(assert (=> setIsEmpty!50127 setRes!50127))

(declare-datatypes ((Unit!161944 0))(
  ( (Unit!161945) )
))
(declare-fun e!4248613 () Unit!161944)

(declare-fun Unit!161946 () Unit!161944)

(assert (=> b!7067039 (= e!4248613 Unit!161946)))

(declare-datatypes ((Regex!17619 0))(
  ( (ElementMatch!17619 (c!1317932 C!35508)) (Concat!26464 (regOne!35750 Regex!17619) (regTwo!35750 Regex!17619)) (EmptyExpr!17619) (Star!17619 (reg!17948 Regex!17619)) (EmptyLang!17619) (Union!17619 (regOne!35751 Regex!17619) (regTwo!35751 Regex!17619)) )
))
(declare-datatypes ((List!68384 0))(
  ( (Nil!68260) (Cons!68260 (h!74708 Regex!17619) (t!382165 List!68384)) )
))
(declare-datatypes ((Context!13230 0))(
  ( (Context!13231 (exprs!7115 List!68384)) )
))
(declare-fun lt!2542087 () Context!13230)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2542095 () (InoxSet Context!13230))

(declare-fun getWitness!1706 ((InoxSet Context!13230) Int) Context!13230)

(assert (=> b!7067039 (= lt!2542087 (getWitness!1706 lt!2542095 lambda!424138))))

(declare-fun lt!2542074 () Unit!161944)

(declare-fun lt!2542072 () Context!13230)

(declare-fun lemmaContainsThenExists!151 ((InoxSet Context!13230) Context!13230 Int) Unit!161944)

(assert (=> b!7067039 (= lt!2542074 (lemmaContainsThenExists!151 lt!2542095 lt!2542072 lambda!424138))))

(declare-fun exists!3648 ((InoxSet Context!13230) Int) Bool)

(assert (=> b!7067039 (exists!3648 lt!2542095 lambda!424138)))

(declare-fun lt!2542080 () (InoxSet Context!13230))

(declare-fun lt!2542070 () Context!13230)

(assert (=> b!7067039 (= lt!2542080 (store ((as const (Array Context!13230 Bool)) false) lt!2542070 true))))

(declare-fun lt!2542096 () Unit!161944)

(assert (=> b!7067039 (= lt!2542096 (lemmaContainsThenExists!151 lt!2542080 lt!2542070 lambda!424138))))

(assert (=> b!7067039 (exists!3648 lt!2542080 lambda!424138)))

(declare-fun lt!2542119 () Unit!161944)

(declare-fun call!642235 () Unit!161944)

(assert (=> b!7067039 (= lt!2542119 call!642235)))

(declare-fun call!642236 () Bool)

(assert (=> b!7067039 call!642236))

(declare-fun b!7067040 () Bool)

(declare-fun res!2885815 () Bool)

(declare-fun e!4248607 () Bool)

(assert (=> b!7067040 (=> res!2885815 e!4248607)))

(declare-fun lt!2542068 () Int)

(declare-datatypes ((List!68385 0))(
  ( (Nil!68261) (Cons!68261 (h!74709 Context!13230) (t!382166 List!68385)) )
))
(declare-fun zipperDepthTotal!584 (List!68385) Int)

(assert (=> b!7067040 (= res!2885815 (>= (zipperDepthTotal!584 (Cons!68261 lt!2542072 Nil!68261)) lt!2542068))))

(declare-fun b!7067041 () Bool)

(declare-fun e!4248602 () Bool)

(declare-fun lt!2542106 () (InoxSet Context!13230))

(declare-fun matchZipper!3159 ((InoxSet Context!13230) List!68383) Bool)

(assert (=> b!7067041 (= e!4248602 (matchZipper!3159 lt!2542106 (t!382164 s!7408)))))

(declare-fun b!7067042 () Bool)

(declare-fun e!4248603 () Bool)

(declare-fun e!4248617 () Bool)

(assert (=> b!7067042 (= e!4248603 e!4248617)))

(declare-fun res!2885803 () Bool)

(assert (=> b!7067042 (=> res!2885803 e!4248617)))

(declare-fun nullable!7302 (Regex!17619) Bool)

(assert (=> b!7067042 (= res!2885803 (not (nullable!7302 (h!74708 (exprs!7115 lt!2542070)))))))

(declare-fun lt!2542117 () List!68384)

(assert (=> b!7067042 (= lt!2542072 (Context!13231 lt!2542117))))

(declare-fun tail!13786 (List!68384) List!68384)

(assert (=> b!7067042 (= lt!2542117 (tail!13786 (exprs!7115 lt!2542070)))))

(declare-fun e!4248604 () Bool)

(declare-fun e!4248619 () Bool)

(assert (=> b!7067043 (= e!4248604 (not e!4248619))))

(declare-fun res!2885805 () Bool)

(assert (=> b!7067043 (=> res!2885805 e!4248619)))

(declare-fun lt!2542102 () (InoxSet Context!13230))

(assert (=> b!7067043 (= res!2885805 (not (matchZipper!3159 lt!2542102 s!7408)))))

(declare-fun lt!2542085 () Context!13230)

(assert (=> b!7067043 (= lt!2542102 (store ((as const (Array Context!13230 Bool)) false) lt!2542085 true))))

(declare-fun lt!2542105 () (InoxSet Context!13230))

(assert (=> b!7067043 (= lt!2542085 (getWitness!1706 lt!2542105 lambda!424134))))

(declare-fun lt!2542100 () List!68385)

(declare-fun exists!3649 (List!68385 Int) Bool)

(assert (=> b!7067043 (exists!3649 lt!2542100 lambda!424134)))

(declare-fun lt!2542073 () Unit!161944)

(declare-fun lemmaZipperMatchesExistsMatchingContext!540 (List!68385 List!68383) Unit!161944)

(assert (=> b!7067043 (= lt!2542073 (lemmaZipperMatchesExistsMatchingContext!540 lt!2542100 s!7408))))

(declare-fun toList!10960 ((InoxSet Context!13230)) List!68385)

(assert (=> b!7067043 (= lt!2542100 (toList!10960 lt!2542105))))

(declare-fun b!7067044 () Bool)

(declare-fun res!2885807 () Bool)

(declare-fun e!4248621 () Bool)

(assert (=> b!7067044 (=> res!2885807 e!4248621)))

(declare-fun lt!2542082 () (InoxSet Context!13230))

(assert (=> b!7067044 (= res!2885807 (not (matchZipper!3159 lt!2542082 (_2!37423 lt!2542084))))))

(declare-fun b!7067045 () Bool)

(declare-fun e!4248614 () Bool)

(assert (=> b!7067045 (= e!4248614 (not (matchZipper!3159 lt!2542106 (t!382164 s!7408))))))

(declare-fun lambda!424136 () Int)

(declare-fun ct2!306 () Context!13230)

(declare-fun lt!2542112 () Unit!161944)

(declare-fun lemmaConcatPreservesForall!930 (List!68384 List!68384 Int) Unit!161944)

(assert (=> b!7067045 (= lt!2542112 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(assert (=> b!7067046 (= e!4248621 true)))

(declare-fun z1!570 () (InoxSet Context!13230))

(declare-datatypes ((Option!16952 0))(
  ( (None!16951) (Some!16951 (v!53245 tuple2!68240)) )
))
(declare-fun isDefined!13653 (Option!16952) Bool)

(declare-fun findConcatSeparationZippers!468 ((InoxSet Context!13230) (InoxSet Context!13230) List!68383 List!68383 List!68383) Option!16952)

(assert (=> b!7067046 (isDefined!13653 (findConcatSeparationZippers!468 z1!570 lt!2542082 Nil!68259 s!7408 s!7408))))

(declare-fun lt!2542130 () Unit!161944)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!68 ((InoxSet Context!13230) (InoxSet Context!13230) List!68383 List!68383 List!68383 List!68383 List!68383) Unit!161944)

(assert (=> b!7067046 (= lt!2542130 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!68 z1!570 lt!2542082 (_1!37423 lt!2542084) (_2!37423 lt!2542084) s!7408 Nil!68259 s!7408))))

(declare-fun lt!2542093 () List!68385)

(declare-fun content!13754 (List!68385) (InoxSet Context!13230))

(assert (=> b!7067046 (matchZipper!3159 (content!13754 lt!2542093) (_1!37423 lt!2542084))))

(declare-fun lt!2542097 () Unit!161944)

(declare-fun lemmaExistsMatchingContextThenMatchingString!48 (List!68385 List!68383) Unit!161944)

(assert (=> b!7067046 (= lt!2542097 (lemmaExistsMatchingContextThenMatchingString!48 lt!2542093 (_1!37423 lt!2542084)))))

(assert (=> b!7067046 (exists!3648 z1!570 lambda!424139)))

(declare-fun lt!2542129 () Unit!161944)

(assert (=> b!7067046 (= lt!2542129 (lemmaContainsThenExists!151 z1!570 lt!2542070 lambda!424139))))

(declare-fun lt!2542125 () Unit!161944)

(assert (=> b!7067046 (= lt!2542125 e!4248613)))

(declare-fun c!1317931 () Bool)

(declare-fun isEmpty!39836 (List!68383) Bool)

(assert (=> b!7067046 (= c!1317931 (isEmpty!39836 (_1!37423 lt!2542084)))))

(declare-fun b!7067047 () Bool)

(declare-fun res!2885814 () Bool)

(assert (=> b!7067047 (=> res!2885814 e!4248621)))

(declare-fun ++!15735 (List!68383 List!68383) List!68383)

(assert (=> b!7067047 (= res!2885814 (not (= (++!15735 (_1!37423 lt!2542084) (_2!37423 lt!2542084)) s!7408)))))

(declare-fun bm!642229 () Bool)

(declare-fun lt!2542131 () (InoxSet Context!13230))

(assert (=> bm!642229 (= call!642235 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!68 (ite c!1317931 lt!2542080 lt!2542131) lt!2542082 (_1!37423 lt!2542084) (_2!37423 lt!2542084) s!7408 Nil!68259 s!7408))))

(declare-fun b!7067048 () Bool)

(declare-fun e!4248608 () Bool)

(assert (=> b!7067048 (= e!4248608 e!4248607)))

(declare-fun res!2885822 () Bool)

(assert (=> b!7067048 (=> res!2885822 e!4248607)))

(declare-fun lt!2542091 () Int)

(declare-fun contextDepthTotal!555 (Context!13230) Int)

(assert (=> b!7067048 (= res!2885822 (<= lt!2542091 (contextDepthTotal!555 lt!2542072)))))

(assert (=> b!7067048 (<= lt!2542091 lt!2542068)))

(assert (=> b!7067048 (= lt!2542068 (zipperDepthTotal!584 lt!2542093))))

(assert (=> b!7067048 (= lt!2542091 (contextDepthTotal!555 lt!2542070))))

(declare-fun lt!2542108 () Unit!161944)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!122 (List!68385 Context!13230) Unit!161944)

(assert (=> b!7067048 (= lt!2542108 (lemmaTotalDepthZipperLargerThanOfAnyContext!122 lt!2542093 lt!2542070))))

(assert (=> b!7067048 (= lt!2542093 (toList!10960 z1!570))))

(declare-fun lt!2542099 () Unit!161944)

(assert (=> b!7067048 (= lt!2542099 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542094 () Unit!161944)

(assert (=> b!7067048 (= lt!2542094 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542067 () Unit!161944)

(assert (=> b!7067048 (= lt!2542067 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lambda!424137 () Int)

(declare-fun flatMap!2545 ((InoxSet Context!13230) Int) (InoxSet Context!13230))

(declare-fun derivationStepZipperUp!2203 (Context!13230 C!35508) (InoxSet Context!13230))

(assert (=> b!7067048 (= (flatMap!2545 lt!2542095 lambda!424137) (derivationStepZipperUp!2203 lt!2542072 (h!74707 s!7408)))))

(declare-fun lt!2542069 () Unit!161944)

(declare-fun lemmaFlatMapOnSingletonSet!2054 ((InoxSet Context!13230) Context!13230 Int) Unit!161944)

(assert (=> b!7067048 (= lt!2542069 (lemmaFlatMapOnSingletonSet!2054 lt!2542095 lt!2542072 lambda!424137))))

(declare-fun lambda!424135 () Int)

(declare-fun map!15961 ((InoxSet Context!13230) Int) (InoxSet Context!13230))

(declare-fun ++!15736 (List!68384 List!68384) List!68384)

(assert (=> b!7067048 (= (map!15961 lt!2542095 lambda!424135) (store ((as const (Array Context!13230 Bool)) false) (Context!13231 (++!15736 lt!2542117 (exprs!7115 ct2!306))) true))))

(declare-fun lt!2542103 () Unit!161944)

(assert (=> b!7067048 (= lt!2542103 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542128 () Unit!161944)

(declare-fun lemmaMapOnSingletonSet!436 ((InoxSet Context!13230) Context!13230 Int) Unit!161944)

(assert (=> b!7067048 (= lt!2542128 (lemmaMapOnSingletonSet!436 lt!2542095 lt!2542072 lambda!424135))))

(assert (=> b!7067048 (= lt!2542095 (store ((as const (Array Context!13230 Bool)) false) lt!2542072 true))))

(declare-fun res!2885808 () Bool)

(assert (=> start!686174 (=> (not res!2885808) (not e!4248604))))

(assert (=> start!686174 (= res!2885808 (matchZipper!3159 lt!2542105 s!7408))))

(declare-fun appendTo!740 ((InoxSet Context!13230) Context!13230) (InoxSet Context!13230))

(assert (=> start!686174 (= lt!2542105 (appendTo!740 z1!570 ct2!306))))

(assert (=> start!686174 e!4248604))

(declare-fun condSetEmpty!50127 () Bool)

(assert (=> start!686174 (= condSetEmpty!50127 (= z1!570 ((as const (Array Context!13230 Bool)) false)))))

(assert (=> start!686174 setRes!50127))

(declare-fun e!4248609 () Bool)

(declare-fun inv!86906 (Context!13230) Bool)

(assert (=> start!686174 (and (inv!86906 ct2!306) e!4248609)))

(declare-fun e!4248606 () Bool)

(assert (=> start!686174 e!4248606))

(declare-fun b!7067049 () Bool)

(declare-fun e!4248616 () Bool)

(declare-fun e!4248612 () Bool)

(assert (=> b!7067049 (= e!4248616 e!4248612)))

(declare-fun res!2885812 () Bool)

(assert (=> b!7067049 (=> res!2885812 e!4248612)))

(declare-fun lt!2542121 () (InoxSet Context!13230))

(declare-fun derivationStepZipper!3069 ((InoxSet Context!13230) C!35508) (InoxSet Context!13230))

(assert (=> b!7067049 (= res!2885812 (not (= (derivationStepZipper!3069 lt!2542121 (h!74707 s!7408)) lt!2542106)))))

(declare-fun lt!2542101 () Unit!161944)

(assert (=> b!7067049 (= lt!2542101 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542071 () Unit!161944)

(assert (=> b!7067049 (= lt!2542071 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542127 () Context!13230)

(assert (=> b!7067049 (= (flatMap!2545 lt!2542121 lambda!424137) (derivationStepZipperUp!2203 lt!2542127 (h!74707 s!7408)))))

(declare-fun lt!2542126 () Unit!161944)

(assert (=> b!7067049 (= lt!2542126 (lemmaFlatMapOnSingletonSet!2054 lt!2542121 lt!2542127 lambda!424137))))

(assert (=> b!7067049 (= lt!2542121 (store ((as const (Array Context!13230 Bool)) false) lt!2542127 true))))

(declare-fun lt!2542113 () Unit!161944)

(assert (=> b!7067049 (= lt!2542113 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542086 () Unit!161944)

(assert (=> b!7067049 (= lt!2542086 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun bm!642230 () Bool)

(declare-fun call!642234 () Option!16952)

(assert (=> bm!642230 (= call!642236 (isDefined!13653 call!642234))))

(declare-fun b!7067050 () Bool)

(assert (=> b!7067050 (= e!4248607 e!4248621)))

(declare-fun res!2885806 () Bool)

(assert (=> b!7067050 (=> res!2885806 e!4248621)))

(assert (=> b!7067050 (= res!2885806 (not (matchZipper!3159 lt!2542095 (_1!37423 lt!2542084))))))

(declare-fun lt!2542107 () Option!16952)

(declare-fun get!23912 (Option!16952) tuple2!68240)

(assert (=> b!7067050 (= lt!2542084 (get!23912 lt!2542107))))

(assert (=> b!7067050 (isDefined!13653 lt!2542107)))

(assert (=> b!7067050 (= lt!2542107 (findConcatSeparationZippers!468 lt!2542095 lt!2542082 Nil!68259 s!7408 s!7408))))

(assert (=> b!7067050 (= lt!2542082 (store ((as const (Array Context!13230 Bool)) false) ct2!306 true))))

(declare-fun lt!2542088 () Unit!161944)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!456 ((InoxSet Context!13230) Context!13230 List!68383) Unit!161944)

(assert (=> b!7067050 (= lt!2542088 (lemmaConcatZipperMatchesStringThenFindConcatDefined!456 lt!2542095 ct2!306 s!7408))))

(declare-fun b!7067051 () Bool)

(assert (=> b!7067051 (= e!4248612 e!4248608)))

(declare-fun res!2885811 () Bool)

(assert (=> b!7067051 (=> res!2885811 e!4248608)))

(assert (=> b!7067051 (= res!2885811 (not (matchZipper!3159 lt!2542121 s!7408)))))

(declare-fun lt!2542089 () Unit!161944)

(assert (=> b!7067051 (= lt!2542089 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun b!7067052 () Bool)

(declare-fun tp!1941655 () Bool)

(assert (=> b!7067052 (= e!4248609 tp!1941655)))

(declare-fun b!7067053 () Bool)

(declare-fun e!4248605 () Bool)

(declare-fun lt!2542079 () (InoxSet Context!13230))

(declare-fun lt!2542075 () List!68383)

(assert (=> b!7067053 (= e!4248605 (matchZipper!3159 lt!2542079 lt!2542075))))

(declare-fun b!7067054 () Bool)

(declare-fun res!2885823 () Bool)

(assert (=> b!7067054 (=> res!2885823 e!4248619)))

(assert (=> b!7067054 (= res!2885823 (not (select lt!2542105 lt!2542085)))))

(declare-fun b!7067055 () Bool)

(declare-fun e!4248618 () Bool)

(declare-fun e!4248620 () Bool)

(assert (=> b!7067055 (= e!4248618 e!4248620)))

(declare-fun res!2885826 () Bool)

(assert (=> b!7067055 (=> res!2885826 e!4248620)))

(assert (=> b!7067055 (= res!2885826 e!4248614)))

(declare-fun res!2885825 () Bool)

(assert (=> b!7067055 (=> (not res!2885825) (not e!4248614))))

(declare-fun lt!2542124 () Bool)

(declare-fun lt!2542077 () Bool)

(assert (=> b!7067055 (= res!2885825 (not (= lt!2542124 lt!2542077)))))

(declare-fun lt!2542083 () (InoxSet Context!13230))

(assert (=> b!7067055 (= lt!2542124 (matchZipper!3159 lt!2542083 (t!382164 s!7408)))))

(declare-fun lt!2542122 () Unit!161944)

(assert (=> b!7067055 (= lt!2542122 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542116 () (InoxSet Context!13230))

(assert (=> b!7067055 (= (matchZipper!3159 lt!2542116 (t!382164 s!7408)) e!4248602)))

(declare-fun res!2885820 () Bool)

(assert (=> b!7067055 (=> res!2885820 e!4248602)))

(assert (=> b!7067055 (= res!2885820 lt!2542077)))

(declare-fun lt!2542066 () (InoxSet Context!13230))

(assert (=> b!7067055 (= lt!2542077 (matchZipper!3159 lt!2542066 (t!382164 s!7408)))))

(declare-fun lt!2542109 () Unit!161944)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1632 ((InoxSet Context!13230) (InoxSet Context!13230) List!68383) Unit!161944)

(assert (=> b!7067055 (= lt!2542109 (lemmaZipperConcatMatchesSameAsBothZippers!1632 lt!2542066 lt!2542106 (t!382164 s!7408)))))

(declare-fun lt!2542118 () Unit!161944)

(assert (=> b!7067055 (= lt!2542118 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542081 () Unit!161944)

(assert (=> b!7067055 (= lt!2542081 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun b!7067056 () Bool)

(declare-fun res!2885818 () Bool)

(assert (=> b!7067056 (=> res!2885818 e!4248603)))

(get-info :version)

(assert (=> b!7067056 (= res!2885818 (not ((_ is Cons!68260) (exprs!7115 lt!2542070))))))

(declare-fun e!4248615 () Bool)

(assert (=> b!7067057 (= e!4248619 e!4248615)))

(declare-fun res!2885813 () Bool)

(assert (=> b!7067057 (=> res!2885813 e!4248615)))

(declare-fun lt!2542115 () Context!13230)

(assert (=> b!7067057 (= res!2885813 (or (not (= lt!2542115 lt!2542085)) (not (select z1!570 lt!2542070))))))

(assert (=> b!7067057 (= lt!2542115 (Context!13231 (++!15736 (exprs!7115 lt!2542070) (exprs!7115 ct2!306))))))

(declare-fun lt!2542065 () Unit!161944)

(assert (=> b!7067057 (= lt!2542065 (lemmaConcatPreservesForall!930 (exprs!7115 lt!2542070) (exprs!7115 ct2!306) lambda!424136))))

(declare-fun mapPost2!448 ((InoxSet Context!13230) Int Context!13230) Context!13230)

(assert (=> b!7067057 (= lt!2542070 (mapPost2!448 z1!570 lambda!424135 lt!2542085))))

(declare-fun b!7067058 () Bool)

(declare-fun e!4248610 () Bool)

(declare-fun tp!1941653 () Bool)

(assert (=> b!7067058 (= e!4248610 tp!1941653)))

(declare-fun b!7067059 () Bool)

(assert (=> b!7067059 (= e!4248617 e!4248618)))

(declare-fun res!2885819 () Bool)

(assert (=> b!7067059 (=> res!2885819 e!4248618)))

(assert (=> b!7067059 (= res!2885819 (not (= lt!2542083 lt!2542116)))))

(assert (=> b!7067059 (= lt!2542116 ((_ map or) lt!2542066 lt!2542106))))

(assert (=> b!7067059 (= lt!2542106 (derivationStepZipperUp!2203 lt!2542127 (h!74707 s!7408)))))

(declare-fun derivationStepZipperDown!2253 (Regex!17619 Context!13230 C!35508) (InoxSet Context!13230))

(assert (=> b!7067059 (= lt!2542066 (derivationStepZipperDown!2253 (h!74708 (exprs!7115 lt!2542070)) lt!2542127 (h!74707 s!7408)))))

(assert (=> b!7067059 (= lt!2542127 (Context!13231 (++!15736 lt!2542117 (exprs!7115 ct2!306))))))

(declare-fun lt!2542114 () Unit!161944)

(assert (=> b!7067059 (= lt!2542114 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun lt!2542104 () Unit!161944)

(assert (=> b!7067059 (= lt!2542104 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun b!7067060 () Bool)

(declare-fun res!2885816 () Bool)

(assert (=> b!7067060 (=> res!2885816 e!4248603)))

(declare-fun isEmpty!39837 (List!68384) Bool)

(assert (=> b!7067060 (= res!2885816 (isEmpty!39837 (exprs!7115 lt!2542070)))))

(declare-fun tp!1941656 () Bool)

(declare-fun setElem!50127 () Context!13230)

(declare-fun setNonEmpty!50127 () Bool)

(assert (=> setNonEmpty!50127 (= setRes!50127 (and tp!1941656 (inv!86906 setElem!50127) e!4248610))))

(declare-fun setRest!50127 () (InoxSet Context!13230))

(assert (=> setNonEmpty!50127 (= z1!570 ((_ map or) (store ((as const (Array Context!13230 Bool)) false) setElem!50127 true) setRest!50127))))

(declare-fun b!7067061 () Bool)

(declare-fun tp_is_empty!44463 () Bool)

(declare-fun tp!1941654 () Bool)

(assert (=> b!7067061 (= e!4248606 (and tp_is_empty!44463 tp!1941654))))

(declare-fun bm!642231 () Bool)

(assert (=> bm!642231 (= call!642234 (findConcatSeparationZippers!468 (ite c!1317931 lt!2542080 lt!2542131) lt!2542082 Nil!68259 s!7408 s!7408))))

(declare-fun b!7067062 () Bool)

(declare-fun res!2885821 () Bool)

(assert (=> b!7067062 (=> res!2885821 e!4248620)))

(assert (=> b!7067062 (= res!2885821 (not lt!2542124))))

(declare-fun b!7067063 () Bool)

(assert (=> b!7067063 (= e!4248620 e!4248616)))

(declare-fun res!2885804 () Bool)

(assert (=> b!7067063 (=> res!2885804 e!4248616)))

(assert (=> b!7067063 (= res!2885804 (not (matchZipper!3159 lt!2542106 (t!382164 s!7408))))))

(declare-fun lt!2542110 () Unit!161944)

(assert (=> b!7067063 (= lt!2542110 (lemmaConcatPreservesForall!930 lt!2542117 (exprs!7115 ct2!306) lambda!424136))))

(declare-fun b!7067064 () Bool)

(declare-fun Unit!161947 () Unit!161944)

(assert (=> b!7067064 (= e!4248613 Unit!161947)))

(assert (=> b!7067064 (= lt!2542131 (store ((as const (Array Context!13230 Bool)) false) lt!2542070 true))))

(declare-fun lt!2542092 () Unit!161944)

(assert (=> b!7067064 (= lt!2542092 (lemmaFlatMapOnSingletonSet!2054 lt!2542131 lt!2542070 lambda!424137))))

(assert (=> b!7067064 (= (flatMap!2545 lt!2542131 lambda!424137) (derivationStepZipperUp!2203 lt!2542070 (h!74707 s!7408)))))

(declare-fun lt!2542064 () (InoxSet Context!13230))

(assert (=> b!7067064 (= lt!2542064 (derivationStepZipperDown!2253 (h!74708 (exprs!7115 lt!2542070)) lt!2542072 (h!74707 s!7408)))))

(assert (=> b!7067064 (= lt!2542079 (derivationStepZipperUp!2203 lt!2542072 (h!74707 s!7408)))))

(declare-fun tail!13787 (List!68383) List!68383)

(assert (=> b!7067064 (= lt!2542075 (tail!13787 (_1!37423 lt!2542084)))))

(declare-fun lt!2542123 () Unit!161944)

(assert (=> b!7067064 (= lt!2542123 (lemmaZipperConcatMatchesSameAsBothZippers!1632 lt!2542064 lt!2542079 lt!2542075))))

(declare-fun res!2885817 () Bool)

(assert (=> b!7067064 (= res!2885817 (matchZipper!3159 lt!2542064 lt!2542075))))

(assert (=> b!7067064 (=> res!2885817 e!4248605)))

(assert (=> b!7067064 (= (matchZipper!3159 ((_ map or) lt!2542064 lt!2542079) lt!2542075) e!4248605)))

(declare-fun lt!2542098 () Unit!161944)

(assert (=> b!7067064 (= lt!2542098 (lemmaFlatMapOnSingletonSet!2054 lt!2542095 lt!2542072 lambda!424137))))

(assert (=> b!7067064 (= (flatMap!2545 lt!2542095 lambda!424137) (derivationStepZipperUp!2203 lt!2542072 (h!74707 s!7408)))))

(declare-fun lt!2542090 () Unit!161944)

(assert (=> b!7067064 (= lt!2542090 call!642235)))

(assert (=> b!7067064 call!642236))

(declare-fun b!7067065 () Bool)

(declare-fun res!2885809 () Bool)

(assert (=> b!7067065 (=> (not res!2885809) (not e!4248604))))

(assert (=> b!7067065 (= res!2885809 ((_ is Cons!68259) s!7408))))

(declare-fun e!4248611 () Bool)

(assert (=> b!7067066 (= e!4248611 e!4248603)))

(declare-fun res!2885824 () Bool)

(assert (=> b!7067066 (=> res!2885824 e!4248603)))

(declare-fun lt!2542076 () (InoxSet Context!13230))

(assert (=> b!7067066 (= res!2885824 (not (= (derivationStepZipper!3069 lt!2542076 (h!74707 s!7408)) lt!2542083)))))

(assert (=> b!7067066 (= (flatMap!2545 lt!2542076 lambda!424137) (derivationStepZipperUp!2203 lt!2542115 (h!74707 s!7408)))))

(declare-fun lt!2542120 () Unit!161944)

(assert (=> b!7067066 (= lt!2542120 (lemmaFlatMapOnSingletonSet!2054 lt!2542076 lt!2542115 lambda!424137))))

(assert (=> b!7067066 (= lt!2542083 (derivationStepZipperUp!2203 lt!2542115 (h!74707 s!7408)))))

(declare-fun lt!2542078 () Unit!161944)

(assert (=> b!7067066 (= lt!2542078 (lemmaConcatPreservesForall!930 (exprs!7115 lt!2542070) (exprs!7115 ct2!306) lambda!424136))))

(declare-fun b!7067067 () Bool)

(assert (=> b!7067067 (= e!4248615 e!4248611)))

(declare-fun res!2885810 () Bool)

(assert (=> b!7067067 (=> res!2885810 e!4248611)))

(assert (=> b!7067067 (= res!2885810 (not (= lt!2542076 lt!2542102)))))

(assert (=> b!7067067 (= lt!2542076 (store ((as const (Array Context!13230 Bool)) false) lt!2542115 true))))

(declare-fun lt!2542111 () Unit!161944)

(assert (=> b!7067067 (= lt!2542111 (lemmaConcatPreservesForall!930 (exprs!7115 lt!2542070) (exprs!7115 ct2!306) lambda!424136))))

(assert (= (and start!686174 res!2885808) b!7067065))

(assert (= (and b!7067065 res!2885809) b!7067043))

(assert (= (and b!7067043 (not res!2885805)) b!7067054))

(assert (= (and b!7067054 (not res!2885823)) b!7067057))

(assert (= (and b!7067057 (not res!2885813)) b!7067067))

(assert (= (and b!7067067 (not res!2885810)) b!7067066))

(assert (= (and b!7067066 (not res!2885824)) b!7067056))

(assert (= (and b!7067056 (not res!2885818)) b!7067060))

(assert (= (and b!7067060 (not res!2885816)) b!7067042))

(assert (= (and b!7067042 (not res!2885803)) b!7067059))

(assert (= (and b!7067059 (not res!2885819)) b!7067055))

(assert (= (and b!7067055 (not res!2885820)) b!7067041))

(assert (= (and b!7067055 res!2885825) b!7067045))

(assert (= (and b!7067055 (not res!2885826)) b!7067062))

(assert (= (and b!7067062 (not res!2885821)) b!7067063))

(assert (= (and b!7067063 (not res!2885804)) b!7067049))

(assert (= (and b!7067049 (not res!2885812)) b!7067051))

(assert (= (and b!7067051 (not res!2885811)) b!7067048))

(assert (= (and b!7067048 (not res!2885822)) b!7067040))

(assert (= (and b!7067040 (not res!2885815)) b!7067050))

(assert (= (and b!7067050 (not res!2885806)) b!7067044))

(assert (= (and b!7067044 (not res!2885807)) b!7067047))

(assert (= (and b!7067047 (not res!2885814)) b!7067046))

(assert (= (and b!7067046 c!1317931) b!7067039))

(assert (= (and b!7067046 (not c!1317931)) b!7067064))

(assert (= (and b!7067064 (not res!2885817)) b!7067053))

(assert (= (or b!7067039 b!7067064) bm!642229))

(assert (= (or b!7067039 b!7067064) bm!642231))

(assert (= (or b!7067039 b!7067064) bm!642230))

(assert (= (and start!686174 condSetEmpty!50127) setIsEmpty!50127))

(assert (= (and start!686174 (not condSetEmpty!50127)) setNonEmpty!50127))

(assert (= setNonEmpty!50127 b!7067058))

(assert (= start!686174 b!7067052))

(assert (= (and start!686174 ((_ is Cons!68259) s!7408)) b!7067061))

(declare-fun m!7791100 () Bool)

(assert (=> b!7067040 m!7791100))

(declare-fun m!7791102 () Bool)

(assert (=> b!7067051 m!7791102))

(declare-fun m!7791104 () Bool)

(assert (=> b!7067051 m!7791104))

(declare-fun m!7791106 () Bool)

(assert (=> b!7067060 m!7791106))

(declare-fun m!7791108 () Bool)

(assert (=> b!7067054 m!7791108))

(declare-fun m!7791110 () Bool)

(assert (=> b!7067055 m!7791110))

(assert (=> b!7067055 m!7791104))

(assert (=> b!7067055 m!7791104))

(declare-fun m!7791112 () Bool)

(assert (=> b!7067055 m!7791112))

(assert (=> b!7067055 m!7791104))

(declare-fun m!7791114 () Bool)

(assert (=> b!7067055 m!7791114))

(declare-fun m!7791116 () Bool)

(assert (=> b!7067055 m!7791116))

(declare-fun m!7791118 () Bool)

(assert (=> b!7067064 m!7791118))

(declare-fun m!7791120 () Bool)

(assert (=> b!7067064 m!7791120))

(declare-fun m!7791122 () Bool)

(assert (=> b!7067064 m!7791122))

(declare-fun m!7791124 () Bool)

(assert (=> b!7067064 m!7791124))

(declare-fun m!7791126 () Bool)

(assert (=> b!7067064 m!7791126))

(declare-fun m!7791128 () Bool)

(assert (=> b!7067064 m!7791128))

(declare-fun m!7791130 () Bool)

(assert (=> b!7067064 m!7791130))

(declare-fun m!7791132 () Bool)

(assert (=> b!7067064 m!7791132))

(declare-fun m!7791134 () Bool)

(assert (=> b!7067064 m!7791134))

(declare-fun m!7791136 () Bool)

(assert (=> b!7067064 m!7791136))

(declare-fun m!7791138 () Bool)

(assert (=> b!7067064 m!7791138))

(declare-fun m!7791140 () Bool)

(assert (=> b!7067064 m!7791140))

(declare-fun m!7791142 () Bool)

(assert (=> b!7067039 m!7791142))

(declare-fun m!7791144 () Bool)

(assert (=> b!7067039 m!7791144))

(declare-fun m!7791146 () Bool)

(assert (=> b!7067039 m!7791146))

(assert (=> b!7067039 m!7791130))

(declare-fun m!7791148 () Bool)

(assert (=> b!7067039 m!7791148))

(declare-fun m!7791150 () Bool)

(assert (=> b!7067039 m!7791150))

(declare-fun m!7791152 () Bool)

(assert (=> b!7067057 m!7791152))

(declare-fun m!7791154 () Bool)

(assert (=> b!7067057 m!7791154))

(declare-fun m!7791156 () Bool)

(assert (=> b!7067057 m!7791156))

(declare-fun m!7791158 () Bool)

(assert (=> b!7067057 m!7791158))

(assert (=> b!7067049 m!7791104))

(declare-fun m!7791160 () Bool)

(assert (=> b!7067049 m!7791160))

(declare-fun m!7791162 () Bool)

(assert (=> b!7067049 m!7791162))

(assert (=> b!7067049 m!7791104))

(declare-fun m!7791164 () Bool)

(assert (=> b!7067049 m!7791164))

(assert (=> b!7067049 m!7791104))

(declare-fun m!7791166 () Bool)

(assert (=> b!7067049 m!7791166))

(assert (=> b!7067049 m!7791104))

(declare-fun m!7791168 () Bool)

(assert (=> b!7067049 m!7791168))

(declare-fun m!7791170 () Bool)

(assert (=> b!7067041 m!7791170))

(declare-fun m!7791172 () Bool)

(assert (=> b!7067066 m!7791172))

(declare-fun m!7791174 () Bool)

(assert (=> b!7067066 m!7791174))

(assert (=> b!7067066 m!7791156))

(declare-fun m!7791176 () Bool)

(assert (=> b!7067066 m!7791176))

(declare-fun m!7791178 () Bool)

(assert (=> b!7067066 m!7791178))

(declare-fun m!7791180 () Bool)

(assert (=> bm!642230 m!7791180))

(declare-fun m!7791182 () Bool)

(assert (=> b!7067050 m!7791182))

(declare-fun m!7791184 () Bool)

(assert (=> b!7067050 m!7791184))

(declare-fun m!7791186 () Bool)

(assert (=> b!7067050 m!7791186))

(declare-fun m!7791188 () Bool)

(assert (=> b!7067050 m!7791188))

(declare-fun m!7791190 () Bool)

(assert (=> b!7067050 m!7791190))

(declare-fun m!7791192 () Bool)

(assert (=> b!7067050 m!7791192))

(declare-fun m!7791194 () Bool)

(assert (=> setNonEmpty!50127 m!7791194))

(assert (=> b!7067063 m!7791170))

(assert (=> b!7067063 m!7791104))

(declare-fun m!7791196 () Bool)

(assert (=> b!7067046 m!7791196))

(declare-fun m!7791198 () Bool)

(assert (=> b!7067046 m!7791198))

(declare-fun m!7791200 () Bool)

(assert (=> b!7067046 m!7791200))

(declare-fun m!7791202 () Bool)

(assert (=> b!7067046 m!7791202))

(declare-fun m!7791204 () Bool)

(assert (=> b!7067046 m!7791204))

(assert (=> b!7067046 m!7791204))

(declare-fun m!7791206 () Bool)

(assert (=> b!7067046 m!7791206))

(assert (=> b!7067046 m!7791202))

(declare-fun m!7791208 () Bool)

(assert (=> b!7067046 m!7791208))

(declare-fun m!7791210 () Bool)

(assert (=> b!7067046 m!7791210))

(declare-fun m!7791212 () Bool)

(assert (=> b!7067046 m!7791212))

(declare-fun m!7791214 () Bool)

(assert (=> start!686174 m!7791214))

(declare-fun m!7791216 () Bool)

(assert (=> start!686174 m!7791216))

(declare-fun m!7791218 () Bool)

(assert (=> start!686174 m!7791218))

(declare-fun m!7791220 () Bool)

(assert (=> b!7067043 m!7791220))

(declare-fun m!7791222 () Bool)

(assert (=> b!7067043 m!7791222))

(declare-fun m!7791224 () Bool)

(assert (=> b!7067043 m!7791224))

(declare-fun m!7791226 () Bool)

(assert (=> b!7067043 m!7791226))

(declare-fun m!7791228 () Bool)

(assert (=> b!7067043 m!7791228))

(declare-fun m!7791230 () Bool)

(assert (=> b!7067043 m!7791230))

(declare-fun m!7791232 () Bool)

(assert (=> b!7067067 m!7791232))

(assert (=> b!7067067 m!7791156))

(declare-fun m!7791234 () Bool)

(assert (=> b!7067042 m!7791234))

(declare-fun m!7791236 () Bool)

(assert (=> b!7067042 m!7791236))

(declare-fun m!7791238 () Bool)

(assert (=> bm!642229 m!7791238))

(declare-fun m!7791240 () Bool)

(assert (=> b!7067053 m!7791240))

(declare-fun m!7791242 () Bool)

(assert (=> b!7067047 m!7791242))

(assert (=> b!7067048 m!7791104))

(declare-fun m!7791244 () Bool)

(assert (=> b!7067048 m!7791244))

(declare-fun m!7791246 () Bool)

(assert (=> b!7067048 m!7791246))

(declare-fun m!7791248 () Bool)

(assert (=> b!7067048 m!7791248))

(declare-fun m!7791250 () Bool)

(assert (=> b!7067048 m!7791250))

(assert (=> b!7067048 m!7791104))

(assert (=> b!7067048 m!7791132))

(assert (=> b!7067048 m!7791136))

(declare-fun m!7791252 () Bool)

(assert (=> b!7067048 m!7791252))

(declare-fun m!7791254 () Bool)

(assert (=> b!7067048 m!7791254))

(assert (=> b!7067048 m!7791120))

(assert (=> b!7067048 m!7791104))

(assert (=> b!7067048 m!7791104))

(declare-fun m!7791256 () Bool)

(assert (=> b!7067048 m!7791256))

(declare-fun m!7791258 () Bool)

(assert (=> b!7067048 m!7791258))

(declare-fun m!7791260 () Bool)

(assert (=> b!7067048 m!7791260))

(declare-fun m!7791262 () Bool)

(assert (=> b!7067048 m!7791262))

(assert (=> b!7067045 m!7791170))

(assert (=> b!7067045 m!7791104))

(declare-fun m!7791264 () Bool)

(assert (=> bm!642231 m!7791264))

(declare-fun m!7791266 () Bool)

(assert (=> b!7067044 m!7791266))

(declare-fun m!7791268 () Bool)

(assert (=> b!7067059 m!7791268))

(assert (=> b!7067059 m!7791104))

(assert (=> b!7067059 m!7791262))

(assert (=> b!7067059 m!7791104))

(assert (=> b!7067059 m!7791166))

(check-sat tp_is_empty!44463 (not b!7067061) (not b!7067044) (not b!7067064) (not b!7067043) (not b!7067049) (not b!7067057) (not b!7067058) (not b!7067055) (not b!7067059) (not b!7067040) (not b!7067052) (not b!7067060) (not bm!642231) (not b!7067045) (not b!7067063) (not b!7067047) (not b!7067046) (not bm!642229) (not b!7067050) (not b!7067048) (not bm!642230) (not b!7067051) (not b!7067042) (not b!7067067) (not b!7067053) (not start!686174) (not b!7067041) (not b!7067039) (not setNonEmpty!50127) (not b!7067066))
(check-sat)
