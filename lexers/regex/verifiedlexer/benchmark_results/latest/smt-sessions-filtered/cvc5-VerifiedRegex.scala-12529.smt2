; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696074 () Bool)

(assert start!696074)

(declare-fun b!7141158 () Bool)

(assert (=> b!7141158 true))

(declare-fun b!7141146 () Bool)

(declare-fun e!4291619 () Bool)

(declare-fun tp!1969483 () Bool)

(assert (=> b!7141146 (= e!4291619 tp!1969483)))

(declare-fun b!7141147 () Bool)

(declare-fun e!4291617 () Bool)

(declare-fun e!4291613 () Bool)

(assert (=> b!7141147 (= e!4291617 e!4291613)))

(declare-fun res!2913733 () Bool)

(assert (=> b!7141147 (=> res!2913733 e!4291613)))

(declare-datatypes ((C!36606 0))(
  ( (C!36607 (val!28251 Int)) )
))
(declare-datatypes ((Regex!18166 0))(
  ( (ElementMatch!18166 (c!1331711 C!36606)) (Concat!27011 (regOne!36844 Regex!18166) (regTwo!36844 Regex!18166)) (EmptyExpr!18166) (Star!18166 (reg!18495 Regex!18166)) (EmptyLang!18166) (Union!18166 (regOne!36845 Regex!18166) (regTwo!36845 Regex!18166)) )
))
(declare-fun lt!2567356 () Regex!18166)

(declare-fun lt!2567354 () Regex!18166)

(assert (=> b!7141147 (= res!2913733 (not (= lt!2567356 lt!2567354)))))

(declare-datatypes ((List!69410 0))(
  ( (Nil!69286) (Cons!69286 (h!75734 Regex!18166) (t!383427 List!69410)) )
))
(declare-datatypes ((Context!14320 0))(
  ( (Context!14321 (exprs!7660 List!69410)) )
))
(declare-fun lt!2567355 () Context!14320)

(declare-fun generalisedConcat!2350 (List!69410) Regex!18166)

(assert (=> b!7141147 (= lt!2567356 (generalisedConcat!2350 (exprs!7660 lt!2567355)))))

(declare-fun b!7141148 () Bool)

(declare-fun e!4291618 () Bool)

(declare-fun e!4291612 () Bool)

(assert (=> b!7141148 (= e!4291618 e!4291612)))

(declare-fun res!2913737 () Bool)

(assert (=> b!7141148 (=> (not res!2913737) (not e!4291612))))

(declare-fun r!11483 () Regex!18166)

(declare-datatypes ((List!69411 0))(
  ( (Nil!69287) (Cons!69287 (h!75735 Context!14320) (t!383428 List!69411)) )
))
(declare-fun lt!2567352 () List!69411)

(declare-fun unfocusZipper!2514 (List!69411) Regex!18166)

(assert (=> b!7141148 (= res!2913737 (= r!11483 (unfocusZipper!2514 lt!2567352)))))

(declare-fun z!3189 () (Set Context!14320))

(declare-fun toList!11197 ((Set Context!14320)) List!69411)

(assert (=> b!7141148 (= lt!2567352 (toList!11197 z!3189))))

(declare-fun b!7141149 () Bool)

(declare-fun e!4291616 () Bool)

(declare-fun tp!1969480 () Bool)

(declare-fun tp!1969482 () Bool)

(assert (=> b!7141149 (= e!4291616 (and tp!1969480 tp!1969482))))

(declare-fun b!7141150 () Bool)

(declare-fun res!2913734 () Bool)

(assert (=> b!7141150 (=> res!2913734 e!4291613)))

(declare-fun nullable!7685 (Regex!18166) Bool)

(assert (=> b!7141150 (= res!2913734 (not (nullable!7685 lt!2567356)))))

(declare-fun b!7141152 () Bool)

(declare-fun res!2913736 () Bool)

(declare-fun e!4291611 () Bool)

(assert (=> b!7141152 (=> res!2913736 e!4291611)))

(declare-fun lt!2567353 () Bool)

(assert (=> b!7141152 (= res!2913736 (not lt!2567353))))

(declare-fun b!7141153 () Bool)

(declare-fun e!4291614 () Bool)

(assert (=> b!7141153 (= e!4291611 e!4291614)))

(declare-fun res!2913739 () Bool)

(assert (=> b!7141153 (=> res!2913739 e!4291614)))

(assert (=> b!7141153 (= res!2913739 (not (nullable!7685 lt!2567354)))))

(declare-fun lt!2567360 () List!69410)

(declare-fun lambda!434695 () Int)

(declare-fun getWitness!1935 (List!69410 Int) Regex!18166)

(assert (=> b!7141153 (= lt!2567354 (getWitness!1935 lt!2567360 lambda!434695))))

(declare-fun b!7141154 () Bool)

(declare-fun e!4291615 () Bool)

(assert (=> b!7141154 (= e!4291612 e!4291615)))

(declare-fun res!2913741 () Bool)

(assert (=> b!7141154 (=> (not res!2913741) (not e!4291615))))

(declare-fun lt!2567357 () Regex!18166)

(assert (=> b!7141154 (= res!2913741 (= r!11483 lt!2567357))))

(declare-fun generalisedUnion!2671 (List!69410) Regex!18166)

(assert (=> b!7141154 (= lt!2567357 (generalisedUnion!2671 lt!2567360))))

(declare-fun unfocusZipperList!2207 (List!69411) List!69410)

(assert (=> b!7141154 (= lt!2567360 (unfocusZipperList!2207 lt!2567352))))

(declare-fun b!7141155 () Bool)

(declare-fun res!2913732 () Bool)

(assert (=> b!7141155 (=> res!2913732 e!4291614)))

(declare-fun contains!20606 (List!69410 Regex!18166) Bool)

(assert (=> b!7141155 (= res!2913732 (not (contains!20606 lt!2567360 lt!2567354)))))

(declare-fun b!7141156 () Bool)

(declare-fun tp!1969481 () Bool)

(assert (=> b!7141156 (= e!4291616 tp!1969481)))

(declare-fun b!7141157 () Bool)

(declare-fun tp_is_empty!45969 () Bool)

(assert (=> b!7141157 (= e!4291616 tp_is_empty!45969)))

(declare-fun e!4291620 () Bool)

(assert (=> b!7141158 (= e!4291614 e!4291620)))

(declare-fun res!2913730 () Bool)

(assert (=> b!7141158 (=> res!2913730 e!4291620)))

(declare-fun lambda!434696 () Int)

(declare-fun exists!3954 ((Set Context!14320) Int) Bool)

(assert (=> b!7141158 (= res!2913730 (not (exists!3954 z!3189 lambda!434696)))))

(declare-fun exists!3955 (List!69411 Int) Bool)

(assert (=> b!7141158 (exists!3955 lt!2567352 lambda!434696)))

(declare-datatypes ((Unit!163197 0))(
  ( (Unit!163198) )
))
(declare-fun lt!2567358 () Unit!163197)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!25 (List!69411 Regex!18166) Unit!163197)

(assert (=> b!7141158 (= lt!2567358 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!25 lt!2567352 lt!2567354))))

(declare-fun b!7141159 () Bool)

(assert (=> b!7141159 (= e!4291620 e!4291617)))

(declare-fun res!2913738 () Bool)

(assert (=> b!7141159 (=> res!2913738 e!4291617)))

(assert (=> b!7141159 (= res!2913738 (not (set.member lt!2567355 z!3189)))))

(declare-fun getWitness!1936 ((Set Context!14320) Int) Context!14320)

(assert (=> b!7141159 (= lt!2567355 (getWitness!1936 z!3189 lambda!434696))))

(declare-fun b!7141160 () Bool)

(assert (=> b!7141160 (= e!4291615 (not e!4291611))))

(declare-fun res!2913731 () Bool)

(assert (=> b!7141160 (=> res!2913731 e!4291611)))

(declare-fun exists!3956 (List!69410 Int) Bool)

(assert (=> b!7141160 (= res!2913731 (not (= lt!2567353 (exists!3956 lt!2567360 lambda!434695))))))

(assert (=> b!7141160 (= lt!2567353 (exists!3956 lt!2567360 lambda!434695))))

(assert (=> b!7141160 (= lt!2567353 (nullable!7685 lt!2567357))))

(declare-fun lt!2567351 () Unit!163197)

(declare-fun nullableGenUnionSpec!53 (Regex!18166 List!69410) Unit!163197)

(assert (=> b!7141160 (= lt!2567351 (nullableGenUnionSpec!53 lt!2567357 lt!2567360))))

(declare-fun b!7141161 () Bool)

(declare-fun res!2913740 () Bool)

(assert (=> b!7141161 (=> res!2913740 e!4291611)))

(assert (=> b!7141161 (= res!2913740 (not (exists!3956 lt!2567360 lambda!434695)))))

(declare-fun b!7141162 () Bool)

(declare-fun nullableContext!147 (Context!14320) Bool)

(assert (=> b!7141162 (= e!4291613 (nullableContext!147 lt!2567355))))

(declare-fun forall!17004 (List!69410 Int) Bool)

(assert (=> b!7141162 (forall!17004 (exprs!7660 lt!2567355) lambda!434695)))

(declare-fun lt!2567359 () Unit!163197)

(declare-fun nullableGenConcatSpec!9 (Regex!18166 List!69410) Unit!163197)

(assert (=> b!7141162 (= lt!2567359 (nullableGenConcatSpec!9 lt!2567354 (exprs!7660 lt!2567355)))))

(declare-fun res!2913735 () Bool)

(assert (=> start!696074 (=> (not res!2913735) (not e!4291618))))

(declare-fun validRegex!9333 (Regex!18166) Bool)

(assert (=> start!696074 (= res!2913735 (validRegex!9333 r!11483))))

(assert (=> start!696074 e!4291618))

(assert (=> start!696074 e!4291616))

(declare-fun condSetEmpty!52552 () Bool)

(assert (=> start!696074 (= condSetEmpty!52552 (= z!3189 (as set.empty (Set Context!14320))))))

(declare-fun setRes!52552 () Bool)

(assert (=> start!696074 setRes!52552))

(declare-fun b!7141151 () Bool)

(declare-fun tp!1969478 () Bool)

(declare-fun tp!1969484 () Bool)

(assert (=> b!7141151 (= e!4291616 (and tp!1969478 tp!1969484))))

(declare-fun setIsEmpty!52552 () Bool)

(assert (=> setIsEmpty!52552 setRes!52552))

(declare-fun setNonEmpty!52552 () Bool)

(declare-fun tp!1969479 () Bool)

(declare-fun setElem!52552 () Context!14320)

(declare-fun inv!88480 (Context!14320) Bool)

(assert (=> setNonEmpty!52552 (= setRes!52552 (and tp!1969479 (inv!88480 setElem!52552) e!4291619))))

(declare-fun setRest!52552 () (Set Context!14320))

(assert (=> setNonEmpty!52552 (= z!3189 (set.union (set.insert setElem!52552 (as set.empty (Set Context!14320))) setRest!52552))))

(assert (= (and start!696074 res!2913735) b!7141148))

(assert (= (and b!7141148 res!2913737) b!7141154))

(assert (= (and b!7141154 res!2913741) b!7141160))

(assert (= (and b!7141160 (not res!2913731)) b!7141152))

(assert (= (and b!7141152 (not res!2913736)) b!7141161))

(assert (= (and b!7141161 (not res!2913740)) b!7141153))

(assert (= (and b!7141153 (not res!2913739)) b!7141155))

(assert (= (and b!7141155 (not res!2913732)) b!7141158))

(assert (= (and b!7141158 (not res!2913730)) b!7141159))

(assert (= (and b!7141159 (not res!2913738)) b!7141147))

(assert (= (and b!7141147 (not res!2913733)) b!7141150))

(assert (= (and b!7141150 (not res!2913734)) b!7141162))

(assert (= (and start!696074 (is-ElementMatch!18166 r!11483)) b!7141157))

(assert (= (and start!696074 (is-Concat!27011 r!11483)) b!7141149))

(assert (= (and start!696074 (is-Star!18166 r!11483)) b!7141156))

(assert (= (and start!696074 (is-Union!18166 r!11483)) b!7141151))

(assert (= (and start!696074 condSetEmpty!52552) setIsEmpty!52552))

(assert (= (and start!696074 (not condSetEmpty!52552)) setNonEmpty!52552))

(assert (= setNonEmpty!52552 b!7141146))

(declare-fun m!7855806 () Bool)

(assert (=> b!7141159 m!7855806))

(declare-fun m!7855808 () Bool)

(assert (=> b!7141159 m!7855808))

(declare-fun m!7855810 () Bool)

(assert (=> b!7141153 m!7855810))

(declare-fun m!7855812 () Bool)

(assert (=> b!7141153 m!7855812))

(declare-fun m!7855814 () Bool)

(assert (=> b!7141150 m!7855814))

(declare-fun m!7855816 () Bool)

(assert (=> b!7141160 m!7855816))

(assert (=> b!7141160 m!7855816))

(declare-fun m!7855818 () Bool)

(assert (=> b!7141160 m!7855818))

(declare-fun m!7855820 () Bool)

(assert (=> b!7141160 m!7855820))

(declare-fun m!7855822 () Bool)

(assert (=> b!7141158 m!7855822))

(declare-fun m!7855824 () Bool)

(assert (=> b!7141158 m!7855824))

(declare-fun m!7855826 () Bool)

(assert (=> b!7141158 m!7855826))

(declare-fun m!7855828 () Bool)

(assert (=> b!7141148 m!7855828))

(declare-fun m!7855830 () Bool)

(assert (=> b!7141148 m!7855830))

(declare-fun m!7855832 () Bool)

(assert (=> setNonEmpty!52552 m!7855832))

(declare-fun m!7855834 () Bool)

(assert (=> b!7141162 m!7855834))

(declare-fun m!7855836 () Bool)

(assert (=> b!7141162 m!7855836))

(declare-fun m!7855838 () Bool)

(assert (=> b!7141162 m!7855838))

(declare-fun m!7855840 () Bool)

(assert (=> b!7141155 m!7855840))

(declare-fun m!7855842 () Bool)

(assert (=> b!7141147 m!7855842))

(declare-fun m!7855844 () Bool)

(assert (=> b!7141154 m!7855844))

(declare-fun m!7855846 () Bool)

(assert (=> b!7141154 m!7855846))

(declare-fun m!7855848 () Bool)

(assert (=> start!696074 m!7855848))

(assert (=> b!7141161 m!7855816))

(push 1)

(assert tp_is_empty!45969)

(assert (not b!7141149))

(assert (not b!7141159))

(assert (not b!7141151))

(assert (not b!7141154))

(assert (not b!7141146))

(assert (not b!7141150))

(assert (not b!7141161))

(assert (not b!7141148))

(assert (not b!7141162))

(assert (not b!7141147))

(assert (not setNonEmpty!52552))

(assert (not b!7141156))

(assert (not b!7141158))

(assert (not b!7141153))

(assert (not b!7141155))

(assert (not b!7141160))

(assert (not start!696074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1888345 () Bool)

(declare-fun d!2227344 () Bool)

(assert (= bs!1888345 (and d!2227344 b!7141160)))

(declare-fun lambda!434719 () Int)

(assert (=> bs!1888345 (= lambda!434719 lambda!434695)))

(assert (=> d!2227344 (= (nullableContext!147 lt!2567355) (forall!17004 (exprs!7660 lt!2567355) lambda!434719))))

(declare-fun bs!1888346 () Bool)

(assert (= bs!1888346 d!2227344))

(declare-fun m!7855894 () Bool)

(assert (=> bs!1888346 m!7855894))

(assert (=> b!7141162 d!2227344))

(declare-fun d!2227346 () Bool)

(declare-fun res!2913782 () Bool)

(declare-fun e!4291655 () Bool)

(assert (=> d!2227346 (=> res!2913782 e!4291655)))

(assert (=> d!2227346 (= res!2913782 (is-Nil!69286 (exprs!7660 lt!2567355)))))

(assert (=> d!2227346 (= (forall!17004 (exprs!7660 lt!2567355) lambda!434695) e!4291655)))

(declare-fun b!7141222 () Bool)

(declare-fun e!4291656 () Bool)

(assert (=> b!7141222 (= e!4291655 e!4291656)))

(declare-fun res!2913783 () Bool)

(assert (=> b!7141222 (=> (not res!2913783) (not e!4291656))))

(declare-fun dynLambda!28202 (Int Regex!18166) Bool)

(assert (=> b!7141222 (= res!2913783 (dynLambda!28202 lambda!434695 (h!75734 (exprs!7660 lt!2567355))))))

(declare-fun b!7141223 () Bool)

(assert (=> b!7141223 (= e!4291656 (forall!17004 (t!383427 (exprs!7660 lt!2567355)) lambda!434695))))

(assert (= (and d!2227346 (not res!2913782)) b!7141222))

(assert (= (and b!7141222 res!2913783) b!7141223))

(declare-fun b_lambda!272573 () Bool)

(assert (=> (not b_lambda!272573) (not b!7141222)))

(declare-fun m!7855898 () Bool)

(assert (=> b!7141222 m!7855898))

(declare-fun m!7855900 () Bool)

(assert (=> b!7141223 m!7855900))

(assert (=> b!7141162 d!2227346))

(declare-fun bs!1888349 () Bool)

(declare-fun d!2227350 () Bool)

(assert (= bs!1888349 (and d!2227350 b!7141160)))

(declare-fun lambda!434725 () Int)

(assert (=> bs!1888349 (not (= lambda!434725 lambda!434695))))

(declare-fun bs!1888350 () Bool)

(assert (= bs!1888350 (and d!2227350 d!2227344)))

(assert (=> bs!1888350 (not (= lambda!434725 lambda!434719))))

(declare-fun lambda!434726 () Int)

(assert (=> bs!1888349 (= lambda!434726 lambda!434695)))

(assert (=> bs!1888350 (= lambda!434726 lambda!434719)))

(declare-fun bs!1888351 () Bool)

(assert (= bs!1888351 d!2227350))

(assert (=> bs!1888351 (not (= lambda!434726 lambda!434725))))

(assert (=> d!2227350 (= (nullable!7685 lt!2567354) (forall!17004 (exprs!7660 lt!2567355) lambda!434726))))

(declare-fun lt!2567393 () Unit!163197)

(declare-fun choose!55228 (Regex!18166 List!69410) Unit!163197)

(assert (=> d!2227350 (= lt!2567393 (choose!55228 lt!2567354 (exprs!7660 lt!2567355)))))

(assert (=> d!2227350 (forall!17004 (exprs!7660 lt!2567355) lambda!434725)))

(assert (=> d!2227350 (= (nullableGenConcatSpec!9 lt!2567354 (exprs!7660 lt!2567355)) lt!2567393)))

(assert (=> bs!1888351 m!7855810))

(declare-fun m!7855902 () Bool)

(assert (=> bs!1888351 m!7855902))

(declare-fun m!7855904 () Bool)

(assert (=> bs!1888351 m!7855904))

(declare-fun m!7855906 () Bool)

(assert (=> bs!1888351 m!7855906))

(assert (=> b!7141162 d!2227350))

(declare-fun bs!1888352 () Bool)

(declare-fun d!2227352 () Bool)

(assert (= bs!1888352 (and d!2227352 b!7141160)))

(declare-fun lambda!434729 () Int)

(assert (=> bs!1888352 (not (= lambda!434729 lambda!434695))))

(declare-fun bs!1888353 () Bool)

(assert (= bs!1888353 (and d!2227352 d!2227344)))

(assert (=> bs!1888353 (not (= lambda!434729 lambda!434719))))

(declare-fun bs!1888354 () Bool)

(assert (= bs!1888354 (and d!2227352 d!2227350)))

(assert (=> bs!1888354 (not (= lambda!434729 lambda!434725))))

(assert (=> bs!1888354 (not (= lambda!434729 lambda!434726))))

(assert (=> d!2227352 true))

(declare-fun order!28563 () Int)

(declare-fun dynLambda!28203 (Int Int) Int)

(assert (=> d!2227352 (< (dynLambda!28203 order!28563 lambda!434695) (dynLambda!28203 order!28563 lambda!434729))))

(assert (=> d!2227352 (= (exists!3956 lt!2567360 lambda!434695) (not (forall!17004 lt!2567360 lambda!434729)))))

(declare-fun bs!1888355 () Bool)

(assert (= bs!1888355 d!2227352))

(declare-fun m!7855912 () Bool)

(assert (=> bs!1888355 m!7855912))

(assert (=> b!7141161 d!2227352))

(declare-fun d!2227356 () Bool)

(declare-fun nullableFct!2989 (Regex!18166) Bool)

(assert (=> d!2227356 (= (nullable!7685 lt!2567356) (nullableFct!2989 lt!2567356))))

(declare-fun bs!1888356 () Bool)

(assert (= bs!1888356 d!2227356))

(declare-fun m!7855914 () Bool)

(assert (=> bs!1888356 m!7855914))

(assert (=> b!7141150 d!2227356))

(assert (=> b!7141160 d!2227352))

(declare-fun d!2227358 () Bool)

(assert (=> d!2227358 (= (nullable!7685 lt!2567357) (nullableFct!2989 lt!2567357))))

(declare-fun bs!1888357 () Bool)

(assert (= bs!1888357 d!2227358))

(declare-fun m!7855916 () Bool)

(assert (=> bs!1888357 m!7855916))

(assert (=> b!7141160 d!2227358))

(declare-fun bs!1888358 () Bool)

(declare-fun d!2227360 () Bool)

(assert (= bs!1888358 (and d!2227360 d!2227344)))

(declare-fun lambda!434737 () Int)

(assert (=> bs!1888358 (not (= lambda!434737 lambda!434719))))

(declare-fun bs!1888359 () Bool)

(assert (= bs!1888359 (and d!2227360 d!2227352)))

(assert (=> bs!1888359 (not (= lambda!434737 lambda!434729))))

(declare-fun bs!1888360 () Bool)

(assert (= bs!1888360 (and d!2227360 b!7141160)))

(assert (=> bs!1888360 (not (= lambda!434737 lambda!434695))))

(declare-fun bs!1888361 () Bool)

(assert (= bs!1888361 (and d!2227360 d!2227350)))

(assert (=> bs!1888361 (= lambda!434737 lambda!434725)))

(assert (=> bs!1888361 (not (= lambda!434737 lambda!434726))))

(declare-fun lambda!434739 () Int)

(assert (=> bs!1888358 (= lambda!434739 lambda!434719)))

(assert (=> bs!1888359 (not (= lambda!434739 lambda!434729))))

(declare-fun bs!1888362 () Bool)

(assert (= bs!1888362 d!2227360))

(assert (=> bs!1888362 (not (= lambda!434739 lambda!434737))))

(assert (=> bs!1888360 (= lambda!434739 lambda!434695)))

(assert (=> bs!1888361 (not (= lambda!434739 lambda!434725))))

(assert (=> bs!1888361 (= lambda!434739 lambda!434726)))

(assert (=> d!2227360 (= (nullable!7685 lt!2567357) (exists!3956 lt!2567360 lambda!434739))))

(declare-fun lt!2567398 () Unit!163197)

(declare-fun choose!55229 (Regex!18166 List!69410) Unit!163197)

(assert (=> d!2227360 (= lt!2567398 (choose!55229 lt!2567357 lt!2567360))))

(assert (=> d!2227360 (forall!17004 lt!2567360 lambda!434737)))

(assert (=> d!2227360 (= (nullableGenUnionSpec!53 lt!2567357 lt!2567360) lt!2567398)))

(assert (=> bs!1888362 m!7855818))

(declare-fun m!7855918 () Bool)

(assert (=> bs!1888362 m!7855918))

(declare-fun m!7855920 () Bool)

(assert (=> bs!1888362 m!7855920))

(declare-fun m!7855922 () Bool)

(assert (=> bs!1888362 m!7855922))

(assert (=> b!7141160 d!2227360))

(declare-fun d!2227362 () Bool)

(declare-fun e!4291665 () Bool)

(assert (=> d!2227362 e!4291665))

(declare-fun res!2913792 () Bool)

(assert (=> d!2227362 (=> (not res!2913792) (not e!4291665))))

(declare-fun lt!2567402 () Context!14320)

(declare-fun dynLambda!28204 (Int Context!14320) Bool)

(assert (=> d!2227362 (= res!2913792 (dynLambda!28204 lambda!434696 lt!2567402))))

(declare-fun getWitness!1939 (List!69411 Int) Context!14320)

(assert (=> d!2227362 (= lt!2567402 (getWitness!1939 (toList!11197 z!3189) lambda!434696))))

(assert (=> d!2227362 (exists!3954 z!3189 lambda!434696)))

(assert (=> d!2227362 (= (getWitness!1936 z!3189 lambda!434696) lt!2567402)))

(declare-fun b!7141234 () Bool)

(assert (=> b!7141234 (= e!4291665 (set.member lt!2567402 z!3189))))

(assert (= (and d!2227362 res!2913792) b!7141234))

(declare-fun b_lambda!272577 () Bool)

(assert (=> (not b_lambda!272577) (not d!2227362)))

(declare-fun m!7855930 () Bool)

(assert (=> d!2227362 m!7855930))

(assert (=> d!2227362 m!7855830))

(assert (=> d!2227362 m!7855830))

(declare-fun m!7855932 () Bool)

(assert (=> d!2227362 m!7855932))

(assert (=> d!2227362 m!7855822))

(declare-fun m!7855934 () Bool)

(assert (=> b!7141234 m!7855934))

(assert (=> b!7141159 d!2227362))

(declare-fun d!2227366 () Bool)

(declare-fun lt!2567405 () Regex!18166)

(assert (=> d!2227366 (validRegex!9333 lt!2567405)))

(assert (=> d!2227366 (= lt!2567405 (generalisedUnion!2671 (unfocusZipperList!2207 lt!2567352)))))

(assert (=> d!2227366 (= (unfocusZipper!2514 lt!2567352) lt!2567405)))

(declare-fun bs!1888366 () Bool)

(assert (= bs!1888366 d!2227366))

(declare-fun m!7855936 () Bool)

(assert (=> bs!1888366 m!7855936))

(assert (=> bs!1888366 m!7855846))

(assert (=> bs!1888366 m!7855846))

(declare-fun m!7855938 () Bool)

(assert (=> bs!1888366 m!7855938))

(assert (=> b!7141148 d!2227366))

(declare-fun d!2227368 () Bool)

(declare-fun e!4291668 () Bool)

(assert (=> d!2227368 e!4291668))

(declare-fun res!2913795 () Bool)

(assert (=> d!2227368 (=> (not res!2913795) (not e!4291668))))

(declare-fun lt!2567408 () List!69411)

(declare-fun noDuplicate!2829 (List!69411) Bool)

(assert (=> d!2227368 (= res!2913795 (noDuplicate!2829 lt!2567408))))

(declare-fun choose!55230 ((Set Context!14320)) List!69411)

(assert (=> d!2227368 (= lt!2567408 (choose!55230 z!3189))))

(assert (=> d!2227368 (= (toList!11197 z!3189) lt!2567408)))

(declare-fun b!7141237 () Bool)

(declare-fun content!14201 (List!69411) (Set Context!14320))

(assert (=> b!7141237 (= e!4291668 (= (content!14201 lt!2567408) z!3189))))

(assert (= (and d!2227368 res!2913795) b!7141237))

(declare-fun m!7855942 () Bool)

(assert (=> d!2227368 m!7855942))

(declare-fun m!7855944 () Bool)

(assert (=> d!2227368 m!7855944))

(declare-fun m!7855946 () Bool)

(assert (=> b!7141237 m!7855946))

(assert (=> b!7141148 d!2227368))

(declare-fun bs!1888371 () Bool)

(declare-fun d!2227372 () Bool)

(assert (= bs!1888371 (and d!2227372 d!2227360)))

(declare-fun lambda!434747 () Int)

(assert (=> bs!1888371 (not (= lambda!434747 lambda!434739))))

(declare-fun bs!1888372 () Bool)

(assert (= bs!1888372 (and d!2227372 d!2227344)))

(assert (=> bs!1888372 (not (= lambda!434747 lambda!434719))))

(declare-fun bs!1888373 () Bool)

(assert (= bs!1888373 (and d!2227372 d!2227352)))

(assert (=> bs!1888373 (not (= lambda!434747 lambda!434729))))

(assert (=> bs!1888371 (= lambda!434747 lambda!434737)))

(declare-fun bs!1888374 () Bool)

(assert (= bs!1888374 (and d!2227372 b!7141160)))

(assert (=> bs!1888374 (not (= lambda!434747 lambda!434695))))

(declare-fun bs!1888375 () Bool)

(assert (= bs!1888375 (and d!2227372 d!2227350)))

(assert (=> bs!1888375 (= lambda!434747 lambda!434725)))

(assert (=> bs!1888375 (not (= lambda!434747 lambda!434726))))

(declare-fun b!7141258 () Bool)

(declare-fun e!4291682 () Regex!18166)

(assert (=> b!7141258 (= e!4291682 (Concat!27011 (h!75734 (exprs!7660 lt!2567355)) (generalisedConcat!2350 (t!383427 (exprs!7660 lt!2567355)))))))

(declare-fun e!4291684 () Bool)

(assert (=> d!2227372 e!4291684))

(declare-fun res!2913801 () Bool)

(assert (=> d!2227372 (=> (not res!2913801) (not e!4291684))))

(declare-fun lt!2567411 () Regex!18166)

(assert (=> d!2227372 (= res!2913801 (validRegex!9333 lt!2567411))))

(declare-fun e!4291685 () Regex!18166)

(assert (=> d!2227372 (= lt!2567411 e!4291685)))

(declare-fun c!1331729 () Bool)

(declare-fun e!4291686 () Bool)

(assert (=> d!2227372 (= c!1331729 e!4291686)))

(declare-fun res!2913800 () Bool)

(assert (=> d!2227372 (=> (not res!2913800) (not e!4291686))))

(assert (=> d!2227372 (= res!2913800 (is-Cons!69286 (exprs!7660 lt!2567355)))))

(assert (=> d!2227372 (forall!17004 (exprs!7660 lt!2567355) lambda!434747)))

(assert (=> d!2227372 (= (generalisedConcat!2350 (exprs!7660 lt!2567355)) lt!2567411)))

(declare-fun b!7141259 () Bool)

(declare-fun e!4291683 () Bool)

(declare-fun e!4291681 () Bool)

(assert (=> b!7141259 (= e!4291683 e!4291681)))

(declare-fun c!1331730 () Bool)

(declare-fun isEmpty!40067 (List!69410) Bool)

(declare-fun tail!13978 (List!69410) List!69410)

(assert (=> b!7141259 (= c!1331730 (isEmpty!40067 (tail!13978 (exprs!7660 lt!2567355))))))

(declare-fun b!7141260 () Bool)

(assert (=> b!7141260 (= e!4291686 (isEmpty!40067 (t!383427 (exprs!7660 lt!2567355))))))

(declare-fun b!7141261 () Bool)

(assert (=> b!7141261 (= e!4291685 (h!75734 (exprs!7660 lt!2567355)))))

(declare-fun b!7141262 () Bool)

(declare-fun isEmptyExpr!2036 (Regex!18166) Bool)

(assert (=> b!7141262 (= e!4291683 (isEmptyExpr!2036 lt!2567411))))

(declare-fun b!7141263 () Bool)

(assert (=> b!7141263 (= e!4291684 e!4291683)))

(declare-fun c!1331731 () Bool)

(assert (=> b!7141263 (= c!1331731 (isEmpty!40067 (exprs!7660 lt!2567355)))))

(declare-fun b!7141264 () Bool)

(assert (=> b!7141264 (= e!4291682 EmptyExpr!18166)))

(declare-fun b!7141265 () Bool)

(assert (=> b!7141265 (= e!4291685 e!4291682)))

(declare-fun c!1331732 () Bool)

(assert (=> b!7141265 (= c!1331732 (is-Cons!69286 (exprs!7660 lt!2567355)))))

(declare-fun b!7141266 () Bool)

(declare-fun head!14508 (List!69410) Regex!18166)

(assert (=> b!7141266 (= e!4291681 (= lt!2567411 (head!14508 (exprs!7660 lt!2567355))))))

(declare-fun b!7141267 () Bool)

(declare-fun isConcat!1559 (Regex!18166) Bool)

(assert (=> b!7141267 (= e!4291681 (isConcat!1559 lt!2567411))))

(assert (= (and d!2227372 res!2913800) b!7141260))

(assert (= (and d!2227372 c!1331729) b!7141261))

(assert (= (and d!2227372 (not c!1331729)) b!7141265))

(assert (= (and b!7141265 c!1331732) b!7141258))

(assert (= (and b!7141265 (not c!1331732)) b!7141264))

(assert (= (and d!2227372 res!2913801) b!7141263))

(assert (= (and b!7141263 c!1331731) b!7141262))

(assert (= (and b!7141263 (not c!1331731)) b!7141259))

(assert (= (and b!7141259 c!1331730) b!7141266))

(assert (= (and b!7141259 (not c!1331730)) b!7141267))

(declare-fun m!7855948 () Bool)

(assert (=> b!7141263 m!7855948))

(declare-fun m!7855950 () Bool)

(assert (=> b!7141260 m!7855950))

(declare-fun m!7855952 () Bool)

(assert (=> d!2227372 m!7855952))

(declare-fun m!7855954 () Bool)

(assert (=> d!2227372 m!7855954))

(declare-fun m!7855956 () Bool)

(assert (=> b!7141258 m!7855956))

(declare-fun m!7855958 () Bool)

(assert (=> b!7141262 m!7855958))

(declare-fun m!7855960 () Bool)

(assert (=> b!7141267 m!7855960))

(declare-fun m!7855962 () Bool)

(assert (=> b!7141259 m!7855962))

(assert (=> b!7141259 m!7855962))

(declare-fun m!7855964 () Bool)

(assert (=> b!7141259 m!7855964))

(declare-fun m!7855966 () Bool)

(assert (=> b!7141266 m!7855966))

(assert (=> b!7141147 d!2227372))

(declare-fun d!2227374 () Bool)

(declare-fun lt!2567416 () Bool)

(assert (=> d!2227374 (= lt!2567416 (exists!3955 (toList!11197 z!3189) lambda!434696))))

(declare-fun choose!55231 ((Set Context!14320) Int) Bool)

(assert (=> d!2227374 (= lt!2567416 (choose!55231 z!3189 lambda!434696))))

(assert (=> d!2227374 (= (exists!3954 z!3189 lambda!434696) lt!2567416)))

(declare-fun bs!1888376 () Bool)

(assert (= bs!1888376 d!2227374))

(assert (=> bs!1888376 m!7855830))

(assert (=> bs!1888376 m!7855830))

(declare-fun m!7855968 () Bool)

(assert (=> bs!1888376 m!7855968))

(declare-fun m!7855970 () Bool)

(assert (=> bs!1888376 m!7855970))

(assert (=> b!7141158 d!2227374))

(declare-fun bs!1888377 () Bool)

(declare-fun d!2227376 () Bool)

(assert (= bs!1888377 (and d!2227376 b!7141158)))

(declare-fun lambda!434752 () Int)

(assert (=> bs!1888377 (not (= lambda!434752 lambda!434696))))

(assert (=> d!2227376 true))

(declare-fun order!28565 () Int)

(declare-fun dynLambda!28205 (Int Int) Int)

(assert (=> d!2227376 (< (dynLambda!28205 order!28565 lambda!434696) (dynLambda!28205 order!28565 lambda!434752))))

(declare-fun forall!17006 (List!69411 Int) Bool)

(assert (=> d!2227376 (= (exists!3955 lt!2567352 lambda!434696) (not (forall!17006 lt!2567352 lambda!434752)))))

(declare-fun bs!1888378 () Bool)

(assert (= bs!1888378 d!2227376))

(declare-fun m!7855972 () Bool)

(assert (=> bs!1888378 m!7855972))

(assert (=> b!7141158 d!2227376))

(declare-fun bs!1888379 () Bool)

(declare-fun d!2227378 () Bool)

(assert (= bs!1888379 (and d!2227378 b!7141158)))

(declare-fun lambda!434755 () Int)

(assert (=> bs!1888379 (= lambda!434755 lambda!434696)))

(declare-fun bs!1888380 () Bool)

(assert (= bs!1888380 (and d!2227378 d!2227376)))

(assert (=> bs!1888380 (not (= lambda!434755 lambda!434752))))

(assert (=> d!2227378 true))

(assert (=> d!2227378 (exists!3955 lt!2567352 lambda!434755)))

(declare-fun lt!2567419 () Unit!163197)

(declare-fun choose!55232 (List!69411 Regex!18166) Unit!163197)

(assert (=> d!2227378 (= lt!2567419 (choose!55232 lt!2567352 lt!2567354))))

(assert (=> d!2227378 (contains!20606 (unfocusZipperList!2207 lt!2567352) lt!2567354)))

(assert (=> d!2227378 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!25 lt!2567352 lt!2567354) lt!2567419)))

(declare-fun bs!1888381 () Bool)

(assert (= bs!1888381 d!2227378))

(declare-fun m!7855974 () Bool)

(assert (=> bs!1888381 m!7855974))

(declare-fun m!7855976 () Bool)

(assert (=> bs!1888381 m!7855976))

(assert (=> bs!1888381 m!7855846))

(assert (=> bs!1888381 m!7855846))

(declare-fun m!7855978 () Bool)

(assert (=> bs!1888381 m!7855978))

(assert (=> b!7141158 d!2227378))

(declare-fun b!7141318 () Bool)

(declare-fun res!2913822 () Bool)

(declare-fun e!4291720 () Bool)

(assert (=> b!7141318 (=> res!2913822 e!4291720)))

(assert (=> b!7141318 (= res!2913822 (not (is-Concat!27011 r!11483)))))

(declare-fun e!4291721 () Bool)

(assert (=> b!7141318 (= e!4291721 e!4291720)))

(declare-fun b!7141319 () Bool)

(declare-fun e!4291724 () Bool)

(assert (=> b!7141319 (= e!4291720 e!4291724)))

(declare-fun res!2913819 () Bool)

(assert (=> b!7141319 (=> (not res!2913819) (not e!4291724))))

(declare-fun call!651197 () Bool)

(assert (=> b!7141319 (= res!2913819 call!651197)))

(declare-fun b!7141320 () Bool)

(declare-fun call!651198 () Bool)

(assert (=> b!7141320 (= e!4291724 call!651198)))

(declare-fun b!7141321 () Bool)

(declare-fun e!4291722 () Bool)

(declare-fun call!651199 () Bool)

(assert (=> b!7141321 (= e!4291722 call!651199)))

(declare-fun b!7141322 () Bool)

(declare-fun e!4291725 () Bool)

(assert (=> b!7141322 (= e!4291725 e!4291722)))

(declare-fun res!2913818 () Bool)

(assert (=> b!7141322 (= res!2913818 (not (nullable!7685 (reg!18495 r!11483))))))

(assert (=> b!7141322 (=> (not res!2913818) (not e!4291722))))

(declare-fun b!7141323 () Bool)

(declare-fun res!2913820 () Bool)

(declare-fun e!4291723 () Bool)

(assert (=> b!7141323 (=> (not res!2913820) (not e!4291723))))

(assert (=> b!7141323 (= res!2913820 call!651197)))

(assert (=> b!7141323 (= e!4291721 e!4291723)))

(declare-fun bm!651192 () Bool)

(assert (=> bm!651192 (= call!651198 call!651199)))

(declare-fun b!7141324 () Bool)

(declare-fun e!4291719 () Bool)

(assert (=> b!7141324 (= e!4291719 e!4291725)))

(declare-fun c!1331752 () Bool)

(assert (=> b!7141324 (= c!1331752 (is-Star!18166 r!11483))))

(declare-fun d!2227380 () Bool)

(declare-fun res!2913821 () Bool)

(assert (=> d!2227380 (=> res!2913821 e!4291719)))

(assert (=> d!2227380 (= res!2913821 (is-ElementMatch!18166 r!11483))))

(assert (=> d!2227380 (= (validRegex!9333 r!11483) e!4291719)))

(declare-fun c!1331751 () Bool)

(declare-fun bm!651193 () Bool)

(assert (=> bm!651193 (= call!651199 (validRegex!9333 (ite c!1331752 (reg!18495 r!11483) (ite c!1331751 (regTwo!36845 r!11483) (regTwo!36844 r!11483)))))))

(declare-fun b!7141325 () Bool)

(assert (=> b!7141325 (= e!4291723 call!651198)))

(declare-fun bm!651194 () Bool)

(assert (=> bm!651194 (= call!651197 (validRegex!9333 (ite c!1331751 (regOne!36845 r!11483) (regOne!36844 r!11483))))))

(declare-fun b!7141326 () Bool)

(assert (=> b!7141326 (= e!4291725 e!4291721)))

(assert (=> b!7141326 (= c!1331751 (is-Union!18166 r!11483))))

(assert (= (and d!2227380 (not res!2913821)) b!7141324))

(assert (= (and b!7141324 c!1331752) b!7141322))

(assert (= (and b!7141324 (not c!1331752)) b!7141326))

(assert (= (and b!7141322 res!2913818) b!7141321))

(assert (= (and b!7141326 c!1331751) b!7141323))

(assert (= (and b!7141326 (not c!1331751)) b!7141318))

(assert (= (and b!7141323 res!2913820) b!7141325))

(assert (= (and b!7141318 (not res!2913822)) b!7141319))

(assert (= (and b!7141319 res!2913819) b!7141320))

(assert (= (or b!7141325 b!7141320) bm!651192))

(assert (= (or b!7141323 b!7141319) bm!651194))

(assert (= (or b!7141321 bm!651192) bm!651193))

(declare-fun m!7856000 () Bool)

(assert (=> b!7141322 m!7856000))

(declare-fun m!7856002 () Bool)

(assert (=> bm!651193 m!7856002))

(declare-fun m!7856004 () Bool)

(assert (=> bm!651194 m!7856004))

(assert (=> start!696074 d!2227380))

(declare-fun d!2227384 () Bool)

(declare-fun lt!2567425 () Bool)

(declare-fun content!14202 (List!69410) (Set Regex!18166))

(assert (=> d!2227384 (= lt!2567425 (set.member lt!2567354 (content!14202 lt!2567360)))))

(declare-fun e!4291732 () Bool)

(assert (=> d!2227384 (= lt!2567425 e!4291732)))

(declare-fun res!2913828 () Bool)

(assert (=> d!2227384 (=> (not res!2913828) (not e!4291732))))

(assert (=> d!2227384 (= res!2913828 (is-Cons!69286 lt!2567360))))

(assert (=> d!2227384 (= (contains!20606 lt!2567360 lt!2567354) lt!2567425)))

(declare-fun b!7141335 () Bool)

(declare-fun e!4291733 () Bool)

(assert (=> b!7141335 (= e!4291732 e!4291733)))

(declare-fun res!2913827 () Bool)

(assert (=> b!7141335 (=> res!2913827 e!4291733)))

(assert (=> b!7141335 (= res!2913827 (= (h!75734 lt!2567360) lt!2567354))))

(declare-fun b!7141336 () Bool)

(assert (=> b!7141336 (= e!4291733 (contains!20606 (t!383427 lt!2567360) lt!2567354))))

(assert (= (and d!2227384 res!2913828) b!7141335))

(assert (= (and b!7141335 (not res!2913827)) b!7141336))

(declare-fun m!7856006 () Bool)

(assert (=> d!2227384 m!7856006))

(declare-fun m!7856008 () Bool)

(assert (=> d!2227384 m!7856008))

(declare-fun m!7856010 () Bool)

(assert (=> b!7141336 m!7856010))

(assert (=> b!7141155 d!2227384))

(declare-fun bs!1888391 () Bool)

(declare-fun d!2227386 () Bool)

(assert (= bs!1888391 (and d!2227386 d!2227360)))

(declare-fun lambda!434762 () Int)

(assert (=> bs!1888391 (not (= lambda!434762 lambda!434739))))

(declare-fun bs!1888392 () Bool)

(assert (= bs!1888392 (and d!2227386 d!2227344)))

(assert (=> bs!1888392 (not (= lambda!434762 lambda!434719))))

(declare-fun bs!1888393 () Bool)

(assert (= bs!1888393 (and d!2227386 d!2227352)))

(assert (=> bs!1888393 (not (= lambda!434762 lambda!434729))))

(assert (=> bs!1888391 (= lambda!434762 lambda!434737)))

(declare-fun bs!1888394 () Bool)

(assert (= bs!1888394 (and d!2227386 d!2227372)))

(assert (=> bs!1888394 (= lambda!434762 lambda!434747)))

(declare-fun bs!1888395 () Bool)

(assert (= bs!1888395 (and d!2227386 b!7141160)))

(assert (=> bs!1888395 (not (= lambda!434762 lambda!434695))))

(declare-fun bs!1888396 () Bool)

(assert (= bs!1888396 (and d!2227386 d!2227350)))

(assert (=> bs!1888396 (= lambda!434762 lambda!434725)))

(assert (=> bs!1888396 (not (= lambda!434762 lambda!434726))))

(declare-fun b!7141363 () Bool)

(declare-fun e!4291754 () Regex!18166)

(assert (=> b!7141363 (= e!4291754 EmptyLang!18166)))

(declare-fun b!7141364 () Bool)

(declare-fun e!4291752 () Bool)

(declare-fun e!4291751 () Bool)

(assert (=> b!7141364 (= e!4291752 e!4291751)))

(declare-fun c!1331767 () Bool)

(assert (=> b!7141364 (= c!1331767 (isEmpty!40067 lt!2567360))))

(declare-fun b!7141365 () Bool)

(declare-fun e!4291756 () Bool)

(declare-fun lt!2567431 () Regex!18166)

(declare-fun isUnion!1526 (Regex!18166) Bool)

(assert (=> b!7141365 (= e!4291756 (isUnion!1526 lt!2567431))))

(declare-fun b!7141366 () Bool)

(assert (=> b!7141366 (= e!4291754 (Union!18166 (h!75734 lt!2567360) (generalisedUnion!2671 (t!383427 lt!2567360))))))

(declare-fun b!7141367 () Bool)

(assert (=> b!7141367 (= e!4291756 (= lt!2567431 (head!14508 lt!2567360)))))

(declare-fun b!7141368 () Bool)

(declare-fun isEmptyLang!2099 (Regex!18166) Bool)

(assert (=> b!7141368 (= e!4291751 (isEmptyLang!2099 lt!2567431))))

(declare-fun b!7141369 () Bool)

(declare-fun e!4291755 () Regex!18166)

(assert (=> b!7141369 (= e!4291755 e!4291754)))

(declare-fun c!1331764 () Bool)

(assert (=> b!7141369 (= c!1331764 (is-Cons!69286 lt!2567360))))

(declare-fun b!7141370 () Bool)

(declare-fun e!4291753 () Bool)

(assert (=> b!7141370 (= e!4291753 (isEmpty!40067 (t!383427 lt!2567360)))))

(declare-fun b!7141372 () Bool)

(assert (=> b!7141372 (= e!4291751 e!4291756)))

(declare-fun c!1331765 () Bool)

(assert (=> b!7141372 (= c!1331765 (isEmpty!40067 (tail!13978 lt!2567360)))))

(declare-fun b!7141371 () Bool)

(assert (=> b!7141371 (= e!4291755 (h!75734 lt!2567360))))

(assert (=> d!2227386 e!4291752))

(declare-fun res!2913838 () Bool)

(assert (=> d!2227386 (=> (not res!2913838) (not e!4291752))))

(assert (=> d!2227386 (= res!2913838 (validRegex!9333 lt!2567431))))

(assert (=> d!2227386 (= lt!2567431 e!4291755)))

(declare-fun c!1331766 () Bool)

(assert (=> d!2227386 (= c!1331766 e!4291753)))

(declare-fun res!2913837 () Bool)

(assert (=> d!2227386 (=> (not res!2913837) (not e!4291753))))

(assert (=> d!2227386 (= res!2913837 (is-Cons!69286 lt!2567360))))

(assert (=> d!2227386 (forall!17004 lt!2567360 lambda!434762)))

(assert (=> d!2227386 (= (generalisedUnion!2671 lt!2567360) lt!2567431)))

(assert (= (and d!2227386 res!2913837) b!7141370))

(assert (= (and d!2227386 c!1331766) b!7141371))

(assert (= (and d!2227386 (not c!1331766)) b!7141369))

(assert (= (and b!7141369 c!1331764) b!7141366))

(assert (= (and b!7141369 (not c!1331764)) b!7141363))

(assert (= (and d!2227386 res!2913838) b!7141364))

(assert (= (and b!7141364 c!1331767) b!7141368))

(assert (= (and b!7141364 (not c!1331767)) b!7141372))

(assert (= (and b!7141372 c!1331765) b!7141367))

(assert (= (and b!7141372 (not c!1331765)) b!7141365))

(declare-fun m!7856018 () Bool)

(assert (=> b!7141368 m!7856018))

(declare-fun m!7856020 () Bool)

(assert (=> b!7141372 m!7856020))

(assert (=> b!7141372 m!7856020))

(declare-fun m!7856022 () Bool)

(assert (=> b!7141372 m!7856022))

(declare-fun m!7856024 () Bool)

(assert (=> b!7141364 m!7856024))

(declare-fun m!7856026 () Bool)

(assert (=> b!7141365 m!7856026))

(declare-fun m!7856028 () Bool)

(assert (=> b!7141367 m!7856028))

(declare-fun m!7856030 () Bool)

(assert (=> d!2227386 m!7856030))

(declare-fun m!7856032 () Bool)

(assert (=> d!2227386 m!7856032))

(declare-fun m!7856034 () Bool)

(assert (=> b!7141366 m!7856034))

(declare-fun m!7856036 () Bool)

(assert (=> b!7141370 m!7856036))

(assert (=> b!7141154 d!2227386))

(declare-fun bs!1888397 () Bool)

(declare-fun d!2227390 () Bool)

(assert (= bs!1888397 (and d!2227390 d!2227344)))

(declare-fun lambda!434765 () Int)

(assert (=> bs!1888397 (not (= lambda!434765 lambda!434719))))

(declare-fun bs!1888398 () Bool)

(assert (= bs!1888398 (and d!2227390 d!2227352)))

(assert (=> bs!1888398 (not (= lambda!434765 lambda!434729))))

(declare-fun bs!1888399 () Bool)

(assert (= bs!1888399 (and d!2227390 d!2227360)))

(assert (=> bs!1888399 (= lambda!434765 lambda!434737)))

(declare-fun bs!1888400 () Bool)

(assert (= bs!1888400 (and d!2227390 d!2227372)))

(assert (=> bs!1888400 (= lambda!434765 lambda!434747)))

(declare-fun bs!1888401 () Bool)

(assert (= bs!1888401 (and d!2227390 b!7141160)))

(assert (=> bs!1888401 (not (= lambda!434765 lambda!434695))))

(declare-fun bs!1888402 () Bool)

(assert (= bs!1888402 (and d!2227390 d!2227350)))

(assert (=> bs!1888402 (= lambda!434765 lambda!434725)))

(assert (=> bs!1888402 (not (= lambda!434765 lambda!434726))))

(declare-fun bs!1888403 () Bool)

(assert (= bs!1888403 (and d!2227390 d!2227386)))

(assert (=> bs!1888403 (= lambda!434765 lambda!434762)))

(assert (=> bs!1888399 (not (= lambda!434765 lambda!434739))))

(declare-fun lt!2567435 () List!69410)

(assert (=> d!2227390 (forall!17004 lt!2567435 lambda!434765)))

(declare-fun e!4291761 () List!69410)

(assert (=> d!2227390 (= lt!2567435 e!4291761)))

(declare-fun c!1331770 () Bool)

(assert (=> d!2227390 (= c!1331770 (is-Cons!69287 lt!2567352))))

(assert (=> d!2227390 (= (unfocusZipperList!2207 lt!2567352) lt!2567435)))

(declare-fun b!7141379 () Bool)

(assert (=> b!7141379 (= e!4291761 (Cons!69286 (generalisedConcat!2350 (exprs!7660 (h!75735 lt!2567352))) (unfocusZipperList!2207 (t!383428 lt!2567352))))))

(declare-fun b!7141380 () Bool)

(assert (=> b!7141380 (= e!4291761 Nil!69286)))

(assert (= (and d!2227390 c!1331770) b!7141379))

(assert (= (and d!2227390 (not c!1331770)) b!7141380))

(declare-fun m!7856044 () Bool)

(assert (=> d!2227390 m!7856044))

(declare-fun m!7856046 () Bool)

(assert (=> b!7141379 m!7856046))

(declare-fun m!7856048 () Bool)

(assert (=> b!7141379 m!7856048))

(assert (=> b!7141154 d!2227390))

(declare-fun d!2227394 () Bool)

(assert (=> d!2227394 (= (nullable!7685 lt!2567354) (nullableFct!2989 lt!2567354))))

(declare-fun bs!1888404 () Bool)

(assert (= bs!1888404 d!2227394))

(declare-fun m!7856050 () Bool)

(assert (=> bs!1888404 m!7856050))

(assert (=> b!7141153 d!2227394))

(declare-fun b!7141395 () Bool)

(declare-fun e!4291772 () Regex!18166)

(assert (=> b!7141395 (= e!4291772 (getWitness!1935 (t!383427 lt!2567360) lambda!434695))))

(declare-fun b!7141396 () Bool)

(declare-fun e!4291771 () Regex!18166)

(assert (=> b!7141396 (= e!4291771 (h!75734 lt!2567360))))

(declare-fun d!2227396 () Bool)

(declare-fun e!4291773 () Bool)

(assert (=> d!2227396 e!4291773))

(declare-fun res!2913846 () Bool)

(assert (=> d!2227396 (=> (not res!2913846) (not e!4291773))))

(declare-fun lt!2567444 () Regex!18166)

(assert (=> d!2227396 (= res!2913846 (dynLambda!28202 lambda!434695 lt!2567444))))

(assert (=> d!2227396 (= lt!2567444 e!4291771)))

(declare-fun c!1331775 () Bool)

(declare-fun e!4291770 () Bool)

(assert (=> d!2227396 (= c!1331775 e!4291770)))

(declare-fun res!2913845 () Bool)

(assert (=> d!2227396 (=> (not res!2913845) (not e!4291770))))

(assert (=> d!2227396 (= res!2913845 (is-Cons!69286 lt!2567360))))

(assert (=> d!2227396 (exists!3956 lt!2567360 lambda!434695)))

(assert (=> d!2227396 (= (getWitness!1935 lt!2567360 lambda!434695) lt!2567444)))

(declare-fun b!7141397 () Bool)

(assert (=> b!7141397 (= e!4291770 (dynLambda!28202 lambda!434695 (h!75734 lt!2567360)))))

(declare-fun b!7141398 () Bool)

(assert (=> b!7141398 (= e!4291773 (contains!20606 lt!2567360 lt!2567444))))

(declare-fun b!7141399 () Bool)

(declare-fun lt!2567443 () Unit!163197)

(declare-fun Unit!163201 () Unit!163197)

(assert (=> b!7141399 (= lt!2567443 Unit!163201)))

(assert (=> b!7141399 false))

(assert (=> b!7141399 (= e!4291772 (head!14508 lt!2567360))))

(declare-fun b!7141400 () Bool)

(assert (=> b!7141400 (= e!4291771 e!4291772)))

(declare-fun c!1331776 () Bool)

(assert (=> b!7141400 (= c!1331776 (is-Cons!69286 lt!2567360))))

(assert (= (and d!2227396 res!2913845) b!7141397))

(assert (= (and d!2227396 c!1331775) b!7141396))

(assert (= (and d!2227396 (not c!1331775)) b!7141400))

(assert (= (and b!7141400 c!1331776) b!7141395))

(assert (= (and b!7141400 (not c!1331776)) b!7141399))

(assert (= (and d!2227396 res!2913846) b!7141398))

(declare-fun b_lambda!272579 () Bool)

(assert (=> (not b_lambda!272579) (not d!2227396)))

(declare-fun b_lambda!272581 () Bool)

(assert (=> (not b_lambda!272581) (not b!7141397)))

(declare-fun m!7856058 () Bool)

(assert (=> b!7141395 m!7856058))

(declare-fun m!7856060 () Bool)

(assert (=> b!7141398 m!7856060))

(declare-fun m!7856062 () Bool)

(assert (=> d!2227396 m!7856062))

(assert (=> d!2227396 m!7855816))

(assert (=> b!7141399 m!7856028))

(declare-fun m!7856064 () Bool)

(assert (=> b!7141397 m!7856064))

(assert (=> b!7141153 d!2227396))

(declare-fun bs!1888408 () Bool)

(declare-fun d!2227402 () Bool)

(assert (= bs!1888408 (and d!2227402 d!2227390)))

(declare-fun lambda!434771 () Int)

(assert (=> bs!1888408 (= lambda!434771 lambda!434765)))

(declare-fun bs!1888409 () Bool)

(assert (= bs!1888409 (and d!2227402 d!2227344)))

(assert (=> bs!1888409 (not (= lambda!434771 lambda!434719))))

(declare-fun bs!1888410 () Bool)

(assert (= bs!1888410 (and d!2227402 d!2227352)))

(assert (=> bs!1888410 (not (= lambda!434771 lambda!434729))))

(declare-fun bs!1888411 () Bool)

(assert (= bs!1888411 (and d!2227402 d!2227360)))

(assert (=> bs!1888411 (= lambda!434771 lambda!434737)))

(declare-fun bs!1888412 () Bool)

(assert (= bs!1888412 (and d!2227402 d!2227372)))

(assert (=> bs!1888412 (= lambda!434771 lambda!434747)))

(declare-fun bs!1888413 () Bool)

(assert (= bs!1888413 (and d!2227402 b!7141160)))

(assert (=> bs!1888413 (not (= lambda!434771 lambda!434695))))

(declare-fun bs!1888414 () Bool)

(assert (= bs!1888414 (and d!2227402 d!2227350)))

(assert (=> bs!1888414 (= lambda!434771 lambda!434725)))

(assert (=> bs!1888414 (not (= lambda!434771 lambda!434726))))

(declare-fun bs!1888415 () Bool)

(assert (= bs!1888415 (and d!2227402 d!2227386)))

(assert (=> bs!1888415 (= lambda!434771 lambda!434762)))

(assert (=> bs!1888411 (not (= lambda!434771 lambda!434739))))

(assert (=> d!2227402 (= (inv!88480 setElem!52552) (forall!17004 (exprs!7660 setElem!52552) lambda!434771))))

(declare-fun bs!1888416 () Bool)

(assert (= bs!1888416 d!2227402))

(declare-fun m!7856066 () Bool)

(assert (=> bs!1888416 m!7856066))

(assert (=> setNonEmpty!52552 d!2227402))

(declare-fun b!7141413 () Bool)

(declare-fun e!4291776 () Bool)

(declare-fun tp!1969520 () Bool)

(assert (=> b!7141413 (= e!4291776 tp!1969520)))

(declare-fun b!7141411 () Bool)

(assert (=> b!7141411 (= e!4291776 tp_is_empty!45969)))

(assert (=> b!7141151 (= tp!1969478 e!4291776)))

(declare-fun b!7141414 () Bool)

(declare-fun tp!1969516 () Bool)

(declare-fun tp!1969519 () Bool)

(assert (=> b!7141414 (= e!4291776 (and tp!1969516 tp!1969519))))

(declare-fun b!7141412 () Bool)

(declare-fun tp!1969518 () Bool)

(declare-fun tp!1969517 () Bool)

(assert (=> b!7141412 (= e!4291776 (and tp!1969518 tp!1969517))))

(assert (= (and b!7141151 (is-ElementMatch!18166 (regOne!36845 r!11483))) b!7141411))

(assert (= (and b!7141151 (is-Concat!27011 (regOne!36845 r!11483))) b!7141412))

(assert (= (and b!7141151 (is-Star!18166 (regOne!36845 r!11483))) b!7141413))

(assert (= (and b!7141151 (is-Union!18166 (regOne!36845 r!11483))) b!7141414))

(declare-fun b!7141417 () Bool)

(declare-fun e!4291777 () Bool)

(declare-fun tp!1969525 () Bool)

(assert (=> b!7141417 (= e!4291777 tp!1969525)))

(declare-fun b!7141415 () Bool)

(assert (=> b!7141415 (= e!4291777 tp_is_empty!45969)))

(assert (=> b!7141151 (= tp!1969484 e!4291777)))

(declare-fun b!7141418 () Bool)

(declare-fun tp!1969521 () Bool)

(declare-fun tp!1969524 () Bool)

(assert (=> b!7141418 (= e!4291777 (and tp!1969521 tp!1969524))))

(declare-fun b!7141416 () Bool)

(declare-fun tp!1969523 () Bool)

(declare-fun tp!1969522 () Bool)

(assert (=> b!7141416 (= e!4291777 (and tp!1969523 tp!1969522))))

(assert (= (and b!7141151 (is-ElementMatch!18166 (regTwo!36845 r!11483))) b!7141415))

(assert (= (and b!7141151 (is-Concat!27011 (regTwo!36845 r!11483))) b!7141416))

(assert (= (and b!7141151 (is-Star!18166 (regTwo!36845 r!11483))) b!7141417))

(assert (= (and b!7141151 (is-Union!18166 (regTwo!36845 r!11483))) b!7141418))

(declare-fun b!7141423 () Bool)

(declare-fun e!4291780 () Bool)

(declare-fun tp!1969530 () Bool)

(declare-fun tp!1969531 () Bool)

(assert (=> b!7141423 (= e!4291780 (and tp!1969530 tp!1969531))))

(assert (=> b!7141146 (= tp!1969483 e!4291780)))

(assert (= (and b!7141146 (is-Cons!69286 (exprs!7660 setElem!52552))) b!7141423))

(declare-fun b!7141426 () Bool)

(declare-fun e!4291781 () Bool)

(declare-fun tp!1969536 () Bool)

(assert (=> b!7141426 (= e!4291781 tp!1969536)))

(declare-fun b!7141424 () Bool)

(assert (=> b!7141424 (= e!4291781 tp_is_empty!45969)))

(assert (=> b!7141156 (= tp!1969481 e!4291781)))

(declare-fun b!7141427 () Bool)

(declare-fun tp!1969532 () Bool)

(declare-fun tp!1969535 () Bool)

(assert (=> b!7141427 (= e!4291781 (and tp!1969532 tp!1969535))))

(declare-fun b!7141425 () Bool)

(declare-fun tp!1969534 () Bool)

(declare-fun tp!1969533 () Bool)

(assert (=> b!7141425 (= e!4291781 (and tp!1969534 tp!1969533))))

(assert (= (and b!7141156 (is-ElementMatch!18166 (reg!18495 r!11483))) b!7141424))

(assert (= (and b!7141156 (is-Concat!27011 (reg!18495 r!11483))) b!7141425))

(assert (= (and b!7141156 (is-Star!18166 (reg!18495 r!11483))) b!7141426))

(assert (= (and b!7141156 (is-Union!18166 (reg!18495 r!11483))) b!7141427))

(declare-fun b!7141430 () Bool)

(declare-fun e!4291782 () Bool)

(declare-fun tp!1969541 () Bool)

(assert (=> b!7141430 (= e!4291782 tp!1969541)))

(declare-fun b!7141428 () Bool)

(assert (=> b!7141428 (= e!4291782 tp_is_empty!45969)))

(assert (=> b!7141149 (= tp!1969480 e!4291782)))

(declare-fun b!7141431 () Bool)

(declare-fun tp!1969537 () Bool)

(declare-fun tp!1969540 () Bool)

(assert (=> b!7141431 (= e!4291782 (and tp!1969537 tp!1969540))))

(declare-fun b!7141429 () Bool)

(declare-fun tp!1969539 () Bool)

(declare-fun tp!1969538 () Bool)

(assert (=> b!7141429 (= e!4291782 (and tp!1969539 tp!1969538))))

(assert (= (and b!7141149 (is-ElementMatch!18166 (regOne!36844 r!11483))) b!7141428))

(assert (= (and b!7141149 (is-Concat!27011 (regOne!36844 r!11483))) b!7141429))

(assert (= (and b!7141149 (is-Star!18166 (regOne!36844 r!11483))) b!7141430))

(assert (= (and b!7141149 (is-Union!18166 (regOne!36844 r!11483))) b!7141431))

(declare-fun b!7141434 () Bool)

(declare-fun e!4291783 () Bool)

(declare-fun tp!1969546 () Bool)

(assert (=> b!7141434 (= e!4291783 tp!1969546)))

(declare-fun b!7141432 () Bool)

(assert (=> b!7141432 (= e!4291783 tp_is_empty!45969)))

(assert (=> b!7141149 (= tp!1969482 e!4291783)))

(declare-fun b!7141435 () Bool)

(declare-fun tp!1969542 () Bool)

(declare-fun tp!1969545 () Bool)

(assert (=> b!7141435 (= e!4291783 (and tp!1969542 tp!1969545))))

(declare-fun b!7141433 () Bool)

(declare-fun tp!1969544 () Bool)

(declare-fun tp!1969543 () Bool)

(assert (=> b!7141433 (= e!4291783 (and tp!1969544 tp!1969543))))

(assert (= (and b!7141149 (is-ElementMatch!18166 (regTwo!36844 r!11483))) b!7141432))

(assert (= (and b!7141149 (is-Concat!27011 (regTwo!36844 r!11483))) b!7141433))

(assert (= (and b!7141149 (is-Star!18166 (regTwo!36844 r!11483))) b!7141434))

(assert (= (and b!7141149 (is-Union!18166 (regTwo!36844 r!11483))) b!7141435))

(declare-fun condSetEmpty!52558 () Bool)

(assert (=> setNonEmpty!52552 (= condSetEmpty!52558 (= setRest!52552 (as set.empty (Set Context!14320))))))

(declare-fun setRes!52558 () Bool)

(assert (=> setNonEmpty!52552 (= tp!1969479 setRes!52558)))

(declare-fun setIsEmpty!52558 () Bool)

(assert (=> setIsEmpty!52558 setRes!52558))

(declare-fun tp!1969551 () Bool)

(declare-fun setNonEmpty!52558 () Bool)

(declare-fun e!4291786 () Bool)

(declare-fun setElem!52558 () Context!14320)

(assert (=> setNonEmpty!52558 (= setRes!52558 (and tp!1969551 (inv!88480 setElem!52558) e!4291786))))

(declare-fun setRest!52558 () (Set Context!14320))

(assert (=> setNonEmpty!52558 (= setRest!52552 (set.union (set.insert setElem!52558 (as set.empty (Set Context!14320))) setRest!52558))))

(declare-fun b!7141440 () Bool)

(declare-fun tp!1969552 () Bool)

(assert (=> b!7141440 (= e!4291786 tp!1969552)))

(assert (= (and setNonEmpty!52552 condSetEmpty!52558) setIsEmpty!52558))

(assert (= (and setNonEmpty!52552 (not condSetEmpty!52558)) setNonEmpty!52558))

(assert (= setNonEmpty!52558 b!7141440))

(declare-fun m!7856068 () Bool)

(assert (=> setNonEmpty!52558 m!7856068))

(declare-fun b_lambda!272583 () Bool)

(assert (= b_lambda!272581 (or b!7141160 b_lambda!272583)))

(declare-fun bs!1888417 () Bool)

(declare-fun d!2227404 () Bool)

(assert (= bs!1888417 (and d!2227404 b!7141160)))

(assert (=> bs!1888417 (= (dynLambda!28202 lambda!434695 (h!75734 lt!2567360)) (nullable!7685 (h!75734 lt!2567360)))))

(declare-fun m!7856070 () Bool)

(assert (=> bs!1888417 m!7856070))

(assert (=> b!7141397 d!2227404))

(declare-fun b_lambda!272585 () Bool)

(assert (= b_lambda!272579 (or b!7141160 b_lambda!272585)))

(declare-fun bs!1888418 () Bool)

(declare-fun d!2227406 () Bool)

(assert (= bs!1888418 (and d!2227406 b!7141160)))

(assert (=> bs!1888418 (= (dynLambda!28202 lambda!434695 lt!2567444) (nullable!7685 lt!2567444))))

(declare-fun m!7856072 () Bool)

(assert (=> bs!1888418 m!7856072))

(assert (=> d!2227396 d!2227406))

(declare-fun b_lambda!272587 () Bool)

(assert (= b_lambda!272573 (or b!7141160 b_lambda!272587)))

(declare-fun bs!1888419 () Bool)

(declare-fun d!2227408 () Bool)

(assert (= bs!1888419 (and d!2227408 b!7141160)))

(assert (=> bs!1888419 (= (dynLambda!28202 lambda!434695 (h!75734 (exprs!7660 lt!2567355))) (nullable!7685 (h!75734 (exprs!7660 lt!2567355))))))

(declare-fun m!7856074 () Bool)

(assert (=> bs!1888419 m!7856074))

(assert (=> b!7141222 d!2227408))

(declare-fun b_lambda!272589 () Bool)

(assert (= b_lambda!272577 (or b!7141158 b_lambda!272589)))

(declare-fun bs!1888420 () Bool)

(declare-fun d!2227410 () Bool)

(assert (= bs!1888420 (and d!2227410 b!7141158)))

(assert (=> bs!1888420 (= (dynLambda!28204 lambda!434696 lt!2567402) (= (generalisedConcat!2350 (exprs!7660 lt!2567402)) lt!2567354))))

(declare-fun m!7856076 () Bool)

(assert (=> bs!1888420 m!7856076))

(assert (=> d!2227362 d!2227410))

(push 1)

(assert (not bs!1888420))

(assert (not b!7141398))

(assert (not b!7141425))

(assert (not b!7141416))

(assert (not b!7141263))

(assert (not b!7141417))

(assert (not d!2227386))

(assert (not b!7141414))

(assert (not d!2227376))

(assert (not d!2227362))

(assert (not b!7141440))

(assert (not b!7141434))

(assert (not bm!651193))

(assert (not b!7141372))

(assert (not b!7141413))

(assert (not b!7141370))

(assert tp_is_empty!45969)

(assert (not b!7141259))

(assert (not d!2227390))

(assert (not b_lambda!272583))

(assert (not b!7141260))

(assert (not b!7141412))

(assert (not d!2227356))

(assert (not d!2227396))

(assert (not d!2227402))

(assert (not b!7141267))

(assert (not bs!1888418))

(assert (not b!7141433))

(assert (not d!2227344))

(assert (not b!7141435))

(assert (not bm!651194))

(assert (not b_lambda!272585))

(assert (not b!7141379))

(assert (not b!7141266))

(assert (not b!7141364))

(assert (not b!7141365))

(assert (not b!7141431))

(assert (not b!7141426))

(assert (not b!7141262))

(assert (not setNonEmpty!52558))

(assert (not b!7141366))

(assert (not d!2227374))

(assert (not d!2227366))

(assert (not bs!1888417))

(assert (not b!7141336))

(assert (not b!7141223))

(assert (not b!7141367))

(assert (not d!2227378))

(assert (not d!2227358))

(assert (not b!7141237))

(assert (not d!2227394))

(assert (not b!7141430))

(assert (not b_lambda!272587))

(assert (not b!7141395))

(assert (not b!7141322))

(assert (not b!7141368))

(assert (not b!7141399))

(assert (not d!2227372))

(assert (not b_lambda!272589))

(assert (not d!2227350))

(assert (not b!7141258))

(assert (not d!2227352))

(assert (not b!7141418))

(assert (not bs!1888419))

(assert (not b!7141423))

(assert (not d!2227360))

(assert (not d!2227368))

(assert (not d!2227384))

(assert (not b!7141427))

(assert (not b!7141429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

