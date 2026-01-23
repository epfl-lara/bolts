; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695786 () Bool)

(assert start!695786)

(declare-fun b!7139240 () Bool)

(declare-fun e!4290530 () Bool)

(declare-fun tp!1968760 () Bool)

(declare-fun tp!1968757 () Bool)

(assert (=> b!7139240 (= e!4290530 (and tp!1968760 tp!1968757))))

(declare-fun b!7139241 () Bool)

(declare-fun e!4290525 () Bool)

(declare-fun tp!1968761 () Bool)

(assert (=> b!7139241 (= e!4290525 tp!1968761)))

(declare-fun setIsEmpty!52486 () Bool)

(declare-fun setRes!52486 () Bool)

(assert (=> setIsEmpty!52486 setRes!52486))

(declare-fun b!7139242 () Bool)

(declare-fun e!4290526 () Bool)

(declare-fun e!4290529 () Bool)

(assert (=> b!7139242 (= e!4290526 e!4290529)))

(declare-fun res!2913042 () Bool)

(assert (=> b!7139242 (=> (not res!2913042) (not e!4290529))))

(declare-datatypes ((C!36582 0))(
  ( (C!36583 (val!28239 Int)) )
))
(declare-datatypes ((Regex!18154 0))(
  ( (ElementMatch!18154 (c!1331343 C!36582)) (Concat!26999 (regOne!36820 Regex!18154) (regTwo!36820 Regex!18154)) (EmptyExpr!18154) (Star!18154 (reg!18483 Regex!18154)) (EmptyLang!18154) (Union!18154 (regOne!36821 Regex!18154) (regTwo!36821 Regex!18154)) )
))
(declare-fun r!11483 () Regex!18154)

(declare-fun lt!2566804 () Regex!18154)

(assert (=> b!7139242 (= res!2913042 (= r!11483 lt!2566804))))

(declare-datatypes ((List!69386 0))(
  ( (Nil!69262) (Cons!69262 (h!75710 Regex!18154) (t!383403 List!69386)) )
))
(declare-fun lt!2566801 () List!69386)

(declare-fun generalisedUnion!2659 (List!69386) Regex!18154)

(assert (=> b!7139242 (= lt!2566804 (generalisedUnion!2659 lt!2566801))))

(declare-datatypes ((Context!14296 0))(
  ( (Context!14297 (exprs!7648 List!69386)) )
))
(declare-datatypes ((List!69387 0))(
  ( (Nil!69263) (Cons!69263 (h!75711 Context!14296) (t!383404 List!69387)) )
))
(declare-fun lt!2566803 () List!69387)

(declare-fun unfocusZipperList!2195 (List!69387) List!69386)

(assert (=> b!7139242 (= lt!2566801 (unfocusZipperList!2195 lt!2566803))))

(declare-fun b!7139243 () Bool)

(declare-fun tp!1968756 () Bool)

(assert (=> b!7139243 (= e!4290530 tp!1968756)))

(declare-fun b!7139245 () Bool)

(declare-fun e!4290527 () Bool)

(assert (=> b!7139245 (= e!4290529 (not e!4290527))))

(declare-fun res!2913040 () Bool)

(assert (=> b!7139245 (=> res!2913040 e!4290527)))

(declare-fun lambda!434305 () Int)

(declare-fun lt!2566805 () Bool)

(declare-fun exists!3926 (List!69386 Int) Bool)

(assert (=> b!7139245 (= res!2913040 (not (= lt!2566805 (exists!3926 lt!2566801 lambda!434305))))))

(assert (=> b!7139245 (= lt!2566805 (exists!3926 lt!2566801 lambda!434305))))

(declare-fun nullable!7673 (Regex!18154) Bool)

(assert (=> b!7139245 (= lt!2566805 (nullable!7673 lt!2566804))))

(declare-datatypes ((Unit!163163 0))(
  ( (Unit!163164) )
))
(declare-fun lt!2566802 () Unit!163163)

(declare-fun nullableGenUnionSpec!41 (Regex!18154 List!69386) Unit!163163)

(assert (=> b!7139245 (= lt!2566802 (nullableGenUnionSpec!41 lt!2566804 lt!2566801))))

(declare-fun b!7139246 () Bool)

(declare-fun e!4290528 () Bool)

(assert (=> b!7139246 (= e!4290528 e!4290526)))

(declare-fun res!2913041 () Bool)

(assert (=> b!7139246 (=> (not res!2913041) (not e!4290526))))

(declare-fun unfocusZipper!2502 (List!69387) Regex!18154)

(assert (=> b!7139246 (= res!2913041 (= r!11483 (unfocusZipper!2502 lt!2566803)))))

(declare-fun z!3189 () (Set Context!14296))

(declare-fun toList!11185 ((Set Context!14296)) List!69387)

(assert (=> b!7139246 (= lt!2566803 (toList!11185 z!3189))))

(declare-fun b!7139247 () Bool)

(declare-fun res!2913044 () Bool)

(assert (=> b!7139247 (=> res!2913044 e!4290527)))

(assert (=> b!7139247 (= res!2913044 (not (exists!3926 lt!2566801 lambda!434305)))))

(declare-fun b!7139248 () Bool)

(declare-fun res!2913043 () Bool)

(assert (=> b!7139248 (=> res!2913043 e!4290527)))

(assert (=> b!7139248 (= res!2913043 (not lt!2566805))))

(declare-fun b!7139249 () Bool)

(declare-fun tp_is_empty!45945 () Bool)

(assert (=> b!7139249 (= e!4290530 tp_is_empty!45945)))

(declare-fun b!7139244 () Bool)

(declare-fun tp!1968758 () Bool)

(declare-fun tp!1968759 () Bool)

(assert (=> b!7139244 (= e!4290530 (and tp!1968758 tp!1968759))))

(declare-fun res!2913045 () Bool)

(assert (=> start!695786 (=> (not res!2913045) (not e!4290528))))

(declare-fun validRegex!9321 (Regex!18154) Bool)

(assert (=> start!695786 (= res!2913045 (validRegex!9321 r!11483))))

(assert (=> start!695786 e!4290528))

(assert (=> start!695786 e!4290530))

(declare-fun condSetEmpty!52486 () Bool)

(assert (=> start!695786 (= condSetEmpty!52486 (= z!3189 (as set.empty (Set Context!14296))))))

(assert (=> start!695786 setRes!52486))

(declare-fun setElem!52486 () Context!14296)

(declare-fun setNonEmpty!52486 () Bool)

(declare-fun tp!1968762 () Bool)

(declare-fun inv!88450 (Context!14296) Bool)

(assert (=> setNonEmpty!52486 (= setRes!52486 (and tp!1968762 (inv!88450 setElem!52486) e!4290525))))

(declare-fun setRest!52486 () (Set Context!14296))

(assert (=> setNonEmpty!52486 (= z!3189 (set.union (set.insert setElem!52486 (as set.empty (Set Context!14296))) setRest!52486))))

(declare-fun b!7139250 () Bool)

(declare-fun getWitness!1914 (List!69386 Int) Regex!18154)

(assert (=> b!7139250 (= e!4290527 (nullable!7673 (getWitness!1914 lt!2566801 lambda!434305)))))

(assert (= (and start!695786 res!2913045) b!7139246))

(assert (= (and b!7139246 res!2913041) b!7139242))

(assert (= (and b!7139242 res!2913042) b!7139245))

(assert (= (and b!7139245 (not res!2913040)) b!7139248))

(assert (= (and b!7139248 (not res!2913043)) b!7139247))

(assert (= (and b!7139247 (not res!2913044)) b!7139250))

(assert (= (and start!695786 (is-ElementMatch!18154 r!11483)) b!7139249))

(assert (= (and start!695786 (is-Concat!26999 r!11483)) b!7139240))

(assert (= (and start!695786 (is-Star!18154 r!11483)) b!7139243))

(assert (= (and start!695786 (is-Union!18154 r!11483)) b!7139244))

(assert (= (and start!695786 condSetEmpty!52486) setIsEmpty!52486))

(assert (= (and start!695786 (not condSetEmpty!52486)) setNonEmpty!52486))

(assert (= setNonEmpty!52486 b!7139241))

(declare-fun m!7854546 () Bool)

(assert (=> b!7139245 m!7854546))

(assert (=> b!7139245 m!7854546))

(declare-fun m!7854548 () Bool)

(assert (=> b!7139245 m!7854548))

(declare-fun m!7854550 () Bool)

(assert (=> b!7139245 m!7854550))

(declare-fun m!7854552 () Bool)

(assert (=> setNonEmpty!52486 m!7854552))

(declare-fun m!7854554 () Bool)

(assert (=> b!7139242 m!7854554))

(declare-fun m!7854556 () Bool)

(assert (=> b!7139242 m!7854556))

(declare-fun m!7854558 () Bool)

(assert (=> b!7139246 m!7854558))

(declare-fun m!7854560 () Bool)

(assert (=> b!7139246 m!7854560))

(declare-fun m!7854562 () Bool)

(assert (=> start!695786 m!7854562))

(declare-fun m!7854564 () Bool)

(assert (=> b!7139250 m!7854564))

(assert (=> b!7139250 m!7854564))

(declare-fun m!7854566 () Bool)

(assert (=> b!7139250 m!7854566))

(assert (=> b!7139247 m!7854546))

(push 1)

(assert (not b!7139247))

(assert (not b!7139244))

(assert (not setNonEmpty!52486))

(assert (not b!7139246))

(assert (not b!7139245))

(assert (not b!7139240))

(assert (not b!7139242))

(assert (not b!7139241))

(assert (not b!7139250))

(assert (not start!695786))

(assert (not b!7139243))

(assert tp_is_empty!45945)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2227004 () Bool)

(declare-fun nullableFct!2979 (Regex!18154) Bool)

(assert (=> d!2227004 (= (nullable!7673 (getWitness!1914 lt!2566801 lambda!434305)) (nullableFct!2979 (getWitness!1914 lt!2566801 lambda!434305)))))

(declare-fun bs!1888051 () Bool)

(assert (= bs!1888051 d!2227004))

(assert (=> bs!1888051 m!7854564))

(declare-fun m!7854590 () Bool)

(assert (=> bs!1888051 m!7854590))

(assert (=> b!7139250 d!2227004))

(declare-fun b!7139296 () Bool)

(declare-fun lt!2566825 () Unit!163163)

(declare-fun Unit!163167 () Unit!163163)

(assert (=> b!7139296 (= lt!2566825 Unit!163167)))

(assert (=> b!7139296 false))

(declare-fun e!4290560 () Regex!18154)

(declare-fun head!14498 (List!69386) Regex!18154)

(assert (=> b!7139296 (= e!4290560 (head!14498 lt!2566801))))

(declare-fun b!7139297 () Bool)

(declare-fun e!4290559 () Regex!18154)

(assert (=> b!7139297 (= e!4290559 e!4290560)))

(declare-fun c!1331349 () Bool)

(assert (=> b!7139297 (= c!1331349 (is-Cons!69262 lt!2566801))))

(declare-fun b!7139298 () Bool)

(declare-fun e!4290557 () Bool)

(declare-fun lt!2566826 () Regex!18154)

(declare-fun contains!20594 (List!69386 Regex!18154) Bool)

(assert (=> b!7139298 (= e!4290557 (contains!20594 lt!2566801 lt!2566826))))

(declare-fun b!7139299 () Bool)

(assert (=> b!7139299 (= e!4290559 (h!75710 lt!2566801))))

(declare-fun b!7139300 () Bool)

(declare-fun e!4290558 () Bool)

(declare-fun dynLambda!28173 (Int Regex!18154) Bool)

(assert (=> b!7139300 (= e!4290558 (dynLambda!28173 lambda!434305 (h!75710 lt!2566801)))))

(declare-fun d!2227006 () Bool)

(assert (=> d!2227006 e!4290557))

(declare-fun res!2913068 () Bool)

(assert (=> d!2227006 (=> (not res!2913068) (not e!4290557))))

(assert (=> d!2227006 (= res!2913068 (dynLambda!28173 lambda!434305 lt!2566826))))

(assert (=> d!2227006 (= lt!2566826 e!4290559)))

(declare-fun c!1331350 () Bool)

(assert (=> d!2227006 (= c!1331350 e!4290558)))

(declare-fun res!2913069 () Bool)

(assert (=> d!2227006 (=> (not res!2913069) (not e!4290558))))

(assert (=> d!2227006 (= res!2913069 (is-Cons!69262 lt!2566801))))

(assert (=> d!2227006 (exists!3926 lt!2566801 lambda!434305)))

(assert (=> d!2227006 (= (getWitness!1914 lt!2566801 lambda!434305) lt!2566826)))

(declare-fun b!7139301 () Bool)

(assert (=> b!7139301 (= e!4290560 (getWitness!1914 (t!383403 lt!2566801) lambda!434305))))

(assert (= (and d!2227006 res!2913069) b!7139300))

(assert (= (and d!2227006 c!1331350) b!7139299))

(assert (= (and d!2227006 (not c!1331350)) b!7139297))

(assert (= (and b!7139297 c!1331349) b!7139301))

(assert (= (and b!7139297 (not c!1331349)) b!7139296))

(assert (= (and d!2227006 res!2913068) b!7139298))

(declare-fun b_lambda!272477 () Bool)

(assert (=> (not b_lambda!272477) (not b!7139300)))

(declare-fun b_lambda!272479 () Bool)

(assert (=> (not b_lambda!272479) (not d!2227006)))

(declare-fun m!7854592 () Bool)

(assert (=> b!7139300 m!7854592))

(declare-fun m!7854594 () Bool)

(assert (=> b!7139296 m!7854594))

(declare-fun m!7854596 () Bool)

(assert (=> d!2227006 m!7854596))

(assert (=> d!2227006 m!7854546))

(declare-fun m!7854598 () Bool)

(assert (=> b!7139298 m!7854598))

(declare-fun m!7854600 () Bool)

(assert (=> b!7139301 m!7854600))

(assert (=> b!7139250 d!2227006))

(declare-fun d!2227008 () Bool)

(declare-fun lt!2566829 () Regex!18154)

(assert (=> d!2227008 (validRegex!9321 lt!2566829)))

(assert (=> d!2227008 (= lt!2566829 (generalisedUnion!2659 (unfocusZipperList!2195 lt!2566803)))))

(assert (=> d!2227008 (= (unfocusZipper!2502 lt!2566803) lt!2566829)))

(declare-fun bs!1888052 () Bool)

(assert (= bs!1888052 d!2227008))

(declare-fun m!7854602 () Bool)

(assert (=> bs!1888052 m!7854602))

(assert (=> bs!1888052 m!7854556))

(assert (=> bs!1888052 m!7854556))

(declare-fun m!7854604 () Bool)

(assert (=> bs!1888052 m!7854604))

(assert (=> b!7139246 d!2227008))

(declare-fun d!2227012 () Bool)

(declare-fun e!4290563 () Bool)

(assert (=> d!2227012 e!4290563))

(declare-fun res!2913072 () Bool)

(assert (=> d!2227012 (=> (not res!2913072) (not e!4290563))))

(declare-fun lt!2566832 () List!69387)

(declare-fun noDuplicate!2820 (List!69387) Bool)

(assert (=> d!2227012 (= res!2913072 (noDuplicate!2820 lt!2566832))))

(declare-fun choose!55197 ((Set Context!14296)) List!69387)

(assert (=> d!2227012 (= lt!2566832 (choose!55197 z!3189))))

(assert (=> d!2227012 (= (toList!11185 z!3189) lt!2566832)))

(declare-fun b!7139304 () Bool)

(declare-fun content!14184 (List!69387) (Set Context!14296))

(assert (=> b!7139304 (= e!4290563 (= (content!14184 lt!2566832) z!3189))))

(assert (= (and d!2227012 res!2913072) b!7139304))

(declare-fun m!7854608 () Bool)

(assert (=> d!2227012 m!7854608))

(declare-fun m!7854610 () Bool)

(assert (=> d!2227012 m!7854610))

(declare-fun m!7854612 () Bool)

(assert (=> b!7139304 m!7854612))

(assert (=> b!7139246 d!2227012))

(declare-fun bs!1888054 () Bool)

(declare-fun d!2227016 () Bool)

(assert (= bs!1888054 (and d!2227016 b!7139245)))

(declare-fun lambda!434317 () Int)

(assert (=> bs!1888054 (not (= lambda!434317 lambda!434305))))

(assert (=> d!2227016 true))

(declare-fun order!28531 () Int)

(declare-fun dynLambda!28174 (Int Int) Int)

(assert (=> d!2227016 (< (dynLambda!28174 order!28531 lambda!434305) (dynLambda!28174 order!28531 lambda!434317))))

(declare-fun forall!16988 (List!69386 Int) Bool)

(assert (=> d!2227016 (= (exists!3926 lt!2566801 lambda!434305) (not (forall!16988 lt!2566801 lambda!434317)))))

(declare-fun bs!1888055 () Bool)

(assert (= bs!1888055 d!2227016))

(declare-fun m!7854614 () Bool)

(assert (=> bs!1888055 m!7854614))

(assert (=> b!7139247 d!2227016))

(declare-fun bs!1888056 () Bool)

(declare-fun d!2227018 () Bool)

(assert (= bs!1888056 (and d!2227018 b!7139245)))

(declare-fun lambda!434320 () Int)

(assert (=> bs!1888056 (not (= lambda!434320 lambda!434305))))

(declare-fun bs!1888057 () Bool)

(assert (= bs!1888057 (and d!2227018 d!2227016)))

(assert (=> bs!1888057 (not (= lambda!434320 lambda!434317))))

(declare-fun b!7139339 () Bool)

(declare-fun e!4290586 () Bool)

(declare-fun lt!2566839 () Regex!18154)

(declare-fun isEmptyLang!2089 (Regex!18154) Bool)

(assert (=> b!7139339 (= e!4290586 (isEmptyLang!2089 lt!2566839))))

(declare-fun b!7139340 () Bool)

(declare-fun e!4290587 () Bool)

(assert (=> b!7139340 (= e!4290587 e!4290586)))

(declare-fun c!1331365 () Bool)

(declare-fun isEmpty!40057 (List!69386) Bool)

(assert (=> b!7139340 (= c!1331365 (isEmpty!40057 lt!2566801))))

(assert (=> d!2227018 e!4290587))

(declare-fun res!2913081 () Bool)

(assert (=> d!2227018 (=> (not res!2913081) (not e!4290587))))

(assert (=> d!2227018 (= res!2913081 (validRegex!9321 lt!2566839))))

(declare-fun e!4290584 () Regex!18154)

(assert (=> d!2227018 (= lt!2566839 e!4290584)))

(declare-fun c!1331363 () Bool)

(declare-fun e!4290588 () Bool)

(assert (=> d!2227018 (= c!1331363 e!4290588)))

(declare-fun res!2913082 () Bool)

(assert (=> d!2227018 (=> (not res!2913082) (not e!4290588))))

(assert (=> d!2227018 (= res!2913082 (is-Cons!69262 lt!2566801))))

(assert (=> d!2227018 (forall!16988 lt!2566801 lambda!434320)))

(assert (=> d!2227018 (= (generalisedUnion!2659 lt!2566801) lt!2566839)))

(declare-fun b!7139341 () Bool)

(declare-fun e!4290589 () Regex!18154)

(assert (=> b!7139341 (= e!4290584 e!4290589)))

(declare-fun c!1331366 () Bool)

(assert (=> b!7139341 (= c!1331366 (is-Cons!69262 lt!2566801))))

(declare-fun b!7139342 () Bool)

(declare-fun e!4290585 () Bool)

(assert (=> b!7139342 (= e!4290585 (= lt!2566839 (head!14498 lt!2566801)))))

(declare-fun b!7139343 () Bool)

(assert (=> b!7139343 (= e!4290584 (h!75710 lt!2566801))))

(declare-fun b!7139344 () Bool)

(declare-fun isUnion!1517 (Regex!18154) Bool)

(assert (=> b!7139344 (= e!4290585 (isUnion!1517 lt!2566839))))

(declare-fun b!7139345 () Bool)

(assert (=> b!7139345 (= e!4290588 (isEmpty!40057 (t!383403 lt!2566801)))))

(declare-fun b!7139346 () Bool)

(assert (=> b!7139346 (= e!4290589 EmptyLang!18154)))

(declare-fun b!7139347 () Bool)

(assert (=> b!7139347 (= e!4290589 (Union!18154 (h!75710 lt!2566801) (generalisedUnion!2659 (t!383403 lt!2566801))))))

(declare-fun b!7139348 () Bool)

(assert (=> b!7139348 (= e!4290586 e!4290585)))

(declare-fun c!1331364 () Bool)

(declare-fun tail!13968 (List!69386) List!69386)

(assert (=> b!7139348 (= c!1331364 (isEmpty!40057 (tail!13968 lt!2566801)))))

(assert (= (and d!2227018 res!2913082) b!7139345))

(assert (= (and d!2227018 c!1331363) b!7139343))

(assert (= (and d!2227018 (not c!1331363)) b!7139341))

(assert (= (and b!7139341 c!1331366) b!7139347))

(assert (= (and b!7139341 (not c!1331366)) b!7139346))

(assert (= (and d!2227018 res!2913081) b!7139340))

(assert (= (and b!7139340 c!1331365) b!7139339))

(assert (= (and b!7139340 (not c!1331365)) b!7139348))

(assert (= (and b!7139348 c!1331364) b!7139342))

(assert (= (and b!7139348 (not c!1331364)) b!7139344))

(assert (=> b!7139342 m!7854594))

(declare-fun m!7854616 () Bool)

(assert (=> b!7139345 m!7854616))

(declare-fun m!7854618 () Bool)

(assert (=> b!7139344 m!7854618))

(declare-fun m!7854620 () Bool)

(assert (=> d!2227018 m!7854620))

(declare-fun m!7854622 () Bool)

(assert (=> d!2227018 m!7854622))

(declare-fun m!7854624 () Bool)

(assert (=> b!7139347 m!7854624))

(declare-fun m!7854626 () Bool)

(assert (=> b!7139340 m!7854626))

(declare-fun m!7854628 () Bool)

(assert (=> b!7139339 m!7854628))

(declare-fun m!7854630 () Bool)

(assert (=> b!7139348 m!7854630))

(assert (=> b!7139348 m!7854630))

(declare-fun m!7854632 () Bool)

(assert (=> b!7139348 m!7854632))

(assert (=> b!7139242 d!2227018))

(declare-fun bs!1888058 () Bool)

(declare-fun d!2227020 () Bool)

(assert (= bs!1888058 (and d!2227020 b!7139245)))

(declare-fun lambda!434323 () Int)

(assert (=> bs!1888058 (not (= lambda!434323 lambda!434305))))

(declare-fun bs!1888059 () Bool)

(assert (= bs!1888059 (and d!2227020 d!2227016)))

(assert (=> bs!1888059 (not (= lambda!434323 lambda!434317))))

(declare-fun bs!1888060 () Bool)

(assert (= bs!1888060 (and d!2227020 d!2227018)))

(assert (=> bs!1888060 (= lambda!434323 lambda!434320)))

(declare-fun lt!2566844 () List!69386)

(assert (=> d!2227020 (forall!16988 lt!2566844 lambda!434323)))

(declare-fun e!4290596 () List!69386)

(assert (=> d!2227020 (= lt!2566844 e!4290596)))

(declare-fun c!1331371 () Bool)

(assert (=> d!2227020 (= c!1331371 (is-Cons!69263 lt!2566803))))

(assert (=> d!2227020 (= (unfocusZipperList!2195 lt!2566803) lt!2566844)))

(declare-fun b!7139359 () Bool)

(declare-fun generalisedConcat!2340 (List!69386) Regex!18154)

(assert (=> b!7139359 (= e!4290596 (Cons!69262 (generalisedConcat!2340 (exprs!7648 (h!75711 lt!2566803))) (unfocusZipperList!2195 (t!383404 lt!2566803))))))

(declare-fun b!7139360 () Bool)

(assert (=> b!7139360 (= e!4290596 Nil!69262)))

(assert (= (and d!2227020 c!1331371) b!7139359))

(assert (= (and d!2227020 (not c!1331371)) b!7139360))

(declare-fun m!7854644 () Bool)

(assert (=> d!2227020 m!7854644))

(declare-fun m!7854646 () Bool)

(assert (=> b!7139359 m!7854646))

(declare-fun m!7854648 () Bool)

(assert (=> b!7139359 m!7854648))

(assert (=> b!7139242 d!2227020))

(declare-fun d!2227024 () Bool)

(declare-fun res!2913098 () Bool)

(declare-fun e!4290616 () Bool)

(assert (=> d!2227024 (=> res!2913098 e!4290616)))

(assert (=> d!2227024 (= res!2913098 (is-ElementMatch!18154 r!11483))))

(assert (=> d!2227024 (= (validRegex!9321 r!11483) e!4290616)))

(declare-fun bm!651102 () Bool)

(declare-fun call!651107 () Bool)

(declare-fun c!1331376 () Bool)

(assert (=> bm!651102 (= call!651107 (validRegex!9321 (ite c!1331376 (regTwo!36821 r!11483) (regTwo!36820 r!11483))))))

(declare-fun b!7139381 () Bool)

(declare-fun e!4290615 () Bool)

(declare-fun e!4290614 () Bool)

(assert (=> b!7139381 (= e!4290615 e!4290614)))

(declare-fun res!2913101 () Bool)

(assert (=> b!7139381 (=> (not res!2913101) (not e!4290614))))

(declare-fun call!651108 () Bool)

(assert (=> b!7139381 (= res!2913101 call!651108)))

(declare-fun b!7139382 () Bool)

(assert (=> b!7139382 (= e!4290614 call!651107)))

(declare-fun b!7139383 () Bool)

(declare-fun e!4290619 () Bool)

(declare-fun e!4290613 () Bool)

(assert (=> b!7139383 (= e!4290619 e!4290613)))

(assert (=> b!7139383 (= c!1331376 (is-Union!18154 r!11483))))

(declare-fun b!7139384 () Bool)

(declare-fun e!4290617 () Bool)

(assert (=> b!7139384 (= e!4290619 e!4290617)))

(declare-fun res!2913100 () Bool)

(assert (=> b!7139384 (= res!2913100 (not (nullable!7673 (reg!18483 r!11483))))))

(assert (=> b!7139384 (=> (not res!2913100) (not e!4290617))))

(declare-fun b!7139385 () Bool)

(declare-fun e!4290618 () Bool)

(assert (=> b!7139385 (= e!4290618 call!651107)))

(declare-fun call!651109 () Bool)

(declare-fun bm!651103 () Bool)

(declare-fun c!1331377 () Bool)

(assert (=> bm!651103 (= call!651109 (validRegex!9321 (ite c!1331377 (reg!18483 r!11483) (ite c!1331376 (regOne!36821 r!11483) (regOne!36820 r!11483)))))))

(declare-fun b!7139386 () Bool)

(assert (=> b!7139386 (= e!4290616 e!4290619)))

(assert (=> b!7139386 (= c!1331377 (is-Star!18154 r!11483))))

(declare-fun bm!651104 () Bool)

(assert (=> bm!651104 (= call!651108 call!651109)))

(declare-fun b!7139387 () Bool)

(declare-fun res!2913097 () Bool)

(assert (=> b!7139387 (=> (not res!2913097) (not e!4290618))))

(assert (=> b!7139387 (= res!2913097 call!651108)))

(assert (=> b!7139387 (= e!4290613 e!4290618)))

(declare-fun b!7139388 () Bool)

(declare-fun res!2913099 () Bool)

(assert (=> b!7139388 (=> res!2913099 e!4290615)))

(assert (=> b!7139388 (= res!2913099 (not (is-Concat!26999 r!11483)))))

(assert (=> b!7139388 (= e!4290613 e!4290615)))

(declare-fun b!7139389 () Bool)

(assert (=> b!7139389 (= e!4290617 call!651109)))

(assert (= (and d!2227024 (not res!2913098)) b!7139386))

(assert (= (and b!7139386 c!1331377) b!7139384))

(assert (= (and b!7139386 (not c!1331377)) b!7139383))

(assert (= (and b!7139384 res!2913100) b!7139389))

(assert (= (and b!7139383 c!1331376) b!7139387))

(assert (= (and b!7139383 (not c!1331376)) b!7139388))

(assert (= (and b!7139387 res!2913097) b!7139385))

(assert (= (and b!7139388 (not res!2913099)) b!7139381))

(assert (= (and b!7139381 res!2913101) b!7139382))

(assert (= (or b!7139385 b!7139382) bm!651102))

(assert (= (or b!7139387 b!7139381) bm!651104))

(assert (= (or b!7139389 bm!651104) bm!651103))

(declare-fun m!7854654 () Bool)

(assert (=> bm!651102 m!7854654))

(declare-fun m!7854656 () Bool)

(assert (=> b!7139384 m!7854656))

(declare-fun m!7854658 () Bool)

(assert (=> bm!651103 m!7854658))

(assert (=> start!695786 d!2227024))

(declare-fun bs!1888062 () Bool)

(declare-fun d!2227028 () Bool)

(assert (= bs!1888062 (and d!2227028 b!7139245)))

(declare-fun lambda!434326 () Int)

(assert (=> bs!1888062 (not (= lambda!434326 lambda!434305))))

(declare-fun bs!1888063 () Bool)

(assert (= bs!1888063 (and d!2227028 d!2227016)))

(assert (=> bs!1888063 (not (= lambda!434326 lambda!434317))))

(declare-fun bs!1888064 () Bool)

(assert (= bs!1888064 (and d!2227028 d!2227018)))

(assert (=> bs!1888064 (= lambda!434326 lambda!434320)))

(declare-fun bs!1888065 () Bool)

(assert (= bs!1888065 (and d!2227028 d!2227020)))

(assert (=> bs!1888065 (= lambda!434326 lambda!434323)))

(assert (=> d!2227028 (= (inv!88450 setElem!52486) (forall!16988 (exprs!7648 setElem!52486) lambda!434326))))

(declare-fun bs!1888066 () Bool)

(assert (= bs!1888066 d!2227028))

(declare-fun m!7854666 () Bool)

(assert (=> bs!1888066 m!7854666))

(assert (=> setNonEmpty!52486 d!2227028))

(assert (=> b!7139245 d!2227016))

(declare-fun d!2227032 () Bool)

(assert (=> d!2227032 (= (nullable!7673 lt!2566804) (nullableFct!2979 lt!2566804))))

(declare-fun bs!1888067 () Bool)

(assert (= bs!1888067 d!2227032))

(declare-fun m!7854668 () Bool)

(assert (=> bs!1888067 m!7854668))

(assert (=> b!7139245 d!2227032))

(declare-fun bs!1888071 () Bool)

(declare-fun d!2227034 () Bool)

(assert (= bs!1888071 (and d!2227034 d!2227020)))

(declare-fun lambda!434334 () Int)

(assert (=> bs!1888071 (= lambda!434334 lambda!434323)))

(declare-fun bs!1888072 () Bool)

(assert (= bs!1888072 (and d!2227034 d!2227018)))

(assert (=> bs!1888072 (= lambda!434334 lambda!434320)))

(declare-fun bs!1888073 () Bool)

(assert (= bs!1888073 (and d!2227034 d!2227016)))

(assert (=> bs!1888073 (not (= lambda!434334 lambda!434317))))

(declare-fun bs!1888074 () Bool)

(assert (= bs!1888074 (and d!2227034 b!7139245)))

(assert (=> bs!1888074 (not (= lambda!434334 lambda!434305))))

(declare-fun bs!1888075 () Bool)

(assert (= bs!1888075 (and d!2227034 d!2227028)))

(assert (=> bs!1888075 (= lambda!434334 lambda!434326)))

(declare-fun lambda!434335 () Int)

(assert (=> bs!1888071 (not (= lambda!434335 lambda!434323))))

(assert (=> bs!1888072 (not (= lambda!434335 lambda!434320))))

(assert (=> bs!1888074 (= lambda!434335 lambda!434305)))

(assert (=> bs!1888075 (not (= lambda!434335 lambda!434326))))

(declare-fun bs!1888076 () Bool)

(assert (= bs!1888076 d!2227034))

(assert (=> bs!1888076 (not (= lambda!434335 lambda!434334))))

(assert (=> bs!1888073 (not (= lambda!434335 lambda!434317))))

(assert (=> d!2227034 (= (nullable!7673 lt!2566804) (exists!3926 lt!2566801 lambda!434335))))

(declare-fun lt!2566853 () Unit!163163)

(declare-fun choose!55198 (Regex!18154 List!69386) Unit!163163)

(assert (=> d!2227034 (= lt!2566853 (choose!55198 lt!2566804 lt!2566801))))

(assert (=> d!2227034 (forall!16988 lt!2566801 lambda!434334)))

(assert (=> d!2227034 (= (nullableGenUnionSpec!41 lt!2566804 lt!2566801) lt!2566853)))

(assert (=> bs!1888076 m!7854548))

(declare-fun m!7854674 () Bool)

(assert (=> bs!1888076 m!7854674))

(declare-fun m!7854676 () Bool)

(assert (=> bs!1888076 m!7854676))

(declare-fun m!7854678 () Bool)

(assert (=> bs!1888076 m!7854678))

(assert (=> b!7139245 d!2227034))

(declare-fun e!4290623 () Bool)

(assert (=> b!7139243 (= tp!1968756 e!4290623)))

(declare-fun b!7139403 () Bool)

(assert (=> b!7139403 (= e!4290623 tp_is_empty!45945)))

(declare-fun b!7139406 () Bool)

(declare-fun tp!1968798 () Bool)

(declare-fun tp!1968794 () Bool)

(assert (=> b!7139406 (= e!4290623 (and tp!1968798 tp!1968794))))

(declare-fun b!7139405 () Bool)

(declare-fun tp!1968795 () Bool)

(assert (=> b!7139405 (= e!4290623 tp!1968795)))

(declare-fun b!7139404 () Bool)

(declare-fun tp!1968797 () Bool)

(declare-fun tp!1968796 () Bool)

(assert (=> b!7139404 (= e!4290623 (and tp!1968797 tp!1968796))))

(assert (= (and b!7139243 (is-ElementMatch!18154 (reg!18483 r!11483))) b!7139403))

(assert (= (and b!7139243 (is-Concat!26999 (reg!18483 r!11483))) b!7139404))

(assert (= (and b!7139243 (is-Star!18154 (reg!18483 r!11483))) b!7139405))

(assert (= (and b!7139243 (is-Union!18154 (reg!18483 r!11483))) b!7139406))

(declare-fun e!4290624 () Bool)

(assert (=> b!7139244 (= tp!1968758 e!4290624)))

(declare-fun b!7139407 () Bool)

(assert (=> b!7139407 (= e!4290624 tp_is_empty!45945)))

(declare-fun b!7139410 () Bool)

(declare-fun tp!1968803 () Bool)

(declare-fun tp!1968799 () Bool)

(assert (=> b!7139410 (= e!4290624 (and tp!1968803 tp!1968799))))

(declare-fun b!7139409 () Bool)

(declare-fun tp!1968800 () Bool)

(assert (=> b!7139409 (= e!4290624 tp!1968800)))

(declare-fun b!7139408 () Bool)

(declare-fun tp!1968802 () Bool)

(declare-fun tp!1968801 () Bool)

(assert (=> b!7139408 (= e!4290624 (and tp!1968802 tp!1968801))))

(assert (= (and b!7139244 (is-ElementMatch!18154 (regOne!36821 r!11483))) b!7139407))

(assert (= (and b!7139244 (is-Concat!26999 (regOne!36821 r!11483))) b!7139408))

(assert (= (and b!7139244 (is-Star!18154 (regOne!36821 r!11483))) b!7139409))

(assert (= (and b!7139244 (is-Union!18154 (regOne!36821 r!11483))) b!7139410))

(declare-fun e!4290625 () Bool)

(assert (=> b!7139244 (= tp!1968759 e!4290625)))

(declare-fun b!7139411 () Bool)

(assert (=> b!7139411 (= e!4290625 tp_is_empty!45945)))

(declare-fun b!7139414 () Bool)

(declare-fun tp!1968808 () Bool)

(declare-fun tp!1968804 () Bool)

(assert (=> b!7139414 (= e!4290625 (and tp!1968808 tp!1968804))))

(declare-fun b!7139413 () Bool)

(declare-fun tp!1968805 () Bool)

(assert (=> b!7139413 (= e!4290625 tp!1968805)))

(declare-fun b!7139412 () Bool)

(declare-fun tp!1968807 () Bool)

(declare-fun tp!1968806 () Bool)

(assert (=> b!7139412 (= e!4290625 (and tp!1968807 tp!1968806))))

(assert (= (and b!7139244 (is-ElementMatch!18154 (regTwo!36821 r!11483))) b!7139411))

(assert (= (and b!7139244 (is-Concat!26999 (regTwo!36821 r!11483))) b!7139412))

(assert (= (and b!7139244 (is-Star!18154 (regTwo!36821 r!11483))) b!7139413))

(assert (= (and b!7139244 (is-Union!18154 (regTwo!36821 r!11483))) b!7139414))

(declare-fun e!4290626 () Bool)

(assert (=> b!7139240 (= tp!1968760 e!4290626)))

(declare-fun b!7139415 () Bool)

(assert (=> b!7139415 (= e!4290626 tp_is_empty!45945)))

(declare-fun b!7139418 () Bool)

(declare-fun tp!1968813 () Bool)

(declare-fun tp!1968809 () Bool)

(assert (=> b!7139418 (= e!4290626 (and tp!1968813 tp!1968809))))

(declare-fun b!7139417 () Bool)

(declare-fun tp!1968810 () Bool)

(assert (=> b!7139417 (= e!4290626 tp!1968810)))

(declare-fun b!7139416 () Bool)

(declare-fun tp!1968812 () Bool)

(declare-fun tp!1968811 () Bool)

(assert (=> b!7139416 (= e!4290626 (and tp!1968812 tp!1968811))))

(assert (= (and b!7139240 (is-ElementMatch!18154 (regOne!36820 r!11483))) b!7139415))

(assert (= (and b!7139240 (is-Concat!26999 (regOne!36820 r!11483))) b!7139416))

(assert (= (and b!7139240 (is-Star!18154 (regOne!36820 r!11483))) b!7139417))

(assert (= (and b!7139240 (is-Union!18154 (regOne!36820 r!11483))) b!7139418))

(declare-fun e!4290627 () Bool)

(assert (=> b!7139240 (= tp!1968757 e!4290627)))

(declare-fun b!7139419 () Bool)

(assert (=> b!7139419 (= e!4290627 tp_is_empty!45945)))

(declare-fun b!7139422 () Bool)

(declare-fun tp!1968818 () Bool)

(declare-fun tp!1968814 () Bool)

(assert (=> b!7139422 (= e!4290627 (and tp!1968818 tp!1968814))))

(declare-fun b!7139421 () Bool)

(declare-fun tp!1968815 () Bool)

(assert (=> b!7139421 (= e!4290627 tp!1968815)))

(declare-fun b!7139420 () Bool)

(declare-fun tp!1968817 () Bool)

(declare-fun tp!1968816 () Bool)

(assert (=> b!7139420 (= e!4290627 (and tp!1968817 tp!1968816))))

(assert (= (and b!7139240 (is-ElementMatch!18154 (regTwo!36820 r!11483))) b!7139419))

(assert (= (and b!7139240 (is-Concat!26999 (regTwo!36820 r!11483))) b!7139420))

(assert (= (and b!7139240 (is-Star!18154 (regTwo!36820 r!11483))) b!7139421))

(assert (= (and b!7139240 (is-Union!18154 (regTwo!36820 r!11483))) b!7139422))

(declare-fun condSetEmpty!52492 () Bool)

(assert (=> setNonEmpty!52486 (= condSetEmpty!52492 (= setRest!52486 (as set.empty (Set Context!14296))))))

(declare-fun setRes!52492 () Bool)

(assert (=> setNonEmpty!52486 (= tp!1968762 setRes!52492)))

(declare-fun setIsEmpty!52492 () Bool)

(assert (=> setIsEmpty!52492 setRes!52492))

(declare-fun tp!1968824 () Bool)

(declare-fun setElem!52492 () Context!14296)

(declare-fun e!4290630 () Bool)

(declare-fun setNonEmpty!52492 () Bool)

(assert (=> setNonEmpty!52492 (= setRes!52492 (and tp!1968824 (inv!88450 setElem!52492) e!4290630))))

(declare-fun setRest!52492 () (Set Context!14296))

(assert (=> setNonEmpty!52492 (= setRest!52486 (set.union (set.insert setElem!52492 (as set.empty (Set Context!14296))) setRest!52492))))

(declare-fun b!7139427 () Bool)

(declare-fun tp!1968823 () Bool)

(assert (=> b!7139427 (= e!4290630 tp!1968823)))

(assert (= (and setNonEmpty!52486 condSetEmpty!52492) setIsEmpty!52492))

(assert (= (and setNonEmpty!52486 (not condSetEmpty!52492)) setNonEmpty!52492))

(assert (= setNonEmpty!52492 b!7139427))

(declare-fun m!7854680 () Bool)

(assert (=> setNonEmpty!52492 m!7854680))

(declare-fun b!7139432 () Bool)

(declare-fun e!4290633 () Bool)

(declare-fun tp!1968829 () Bool)

(declare-fun tp!1968830 () Bool)

(assert (=> b!7139432 (= e!4290633 (and tp!1968829 tp!1968830))))

(assert (=> b!7139241 (= tp!1968761 e!4290633)))

(assert (= (and b!7139241 (is-Cons!69262 (exprs!7648 setElem!52486))) b!7139432))

(declare-fun b_lambda!272485 () Bool)

(assert (= b_lambda!272479 (or b!7139245 b_lambda!272485)))

(declare-fun bs!1888077 () Bool)

(declare-fun d!2227040 () Bool)

(assert (= bs!1888077 (and d!2227040 b!7139245)))

(assert (=> bs!1888077 (= (dynLambda!28173 lambda!434305 lt!2566826) (nullable!7673 lt!2566826))))

(declare-fun m!7854682 () Bool)

(assert (=> bs!1888077 m!7854682))

(assert (=> d!2227006 d!2227040))

(declare-fun b_lambda!272487 () Bool)

(assert (= b_lambda!272477 (or b!7139245 b_lambda!272487)))

(declare-fun bs!1888078 () Bool)

(declare-fun d!2227042 () Bool)

(assert (= bs!1888078 (and d!2227042 b!7139245)))

(assert (=> bs!1888078 (= (dynLambda!28173 lambda!434305 (h!75710 lt!2566801)) (nullable!7673 (h!75710 lt!2566801)))))

(declare-fun m!7854684 () Bool)

(assert (=> bs!1888078 m!7854684))

(assert (=> b!7139300 d!2227042))

(push 1)

(assert (not bm!651102))

(assert (not b!7139417))

(assert (not b!7139298))

(assert (not d!2227006))

(assert (not b!7139301))

(assert (not bs!1888077))

(assert (not b!7139432))

(assert (not d!2227004))

(assert (not setNonEmpty!52492))

(assert (not b!7139410))

(assert (not b!7139422))

(assert (not b!7139384))

(assert (not b!7139340))

(assert (not b!7139414))

(assert (not b!7139418))

(assert (not d!2227016))

(assert (not b!7139339))

(assert (not b!7139405))

(assert (not b!7139347))

(assert (not b!7139342))

(assert (not b!7139420))

(assert (not b!7139408))

(assert (not d!2227020))

(assert (not d!2227018))

(assert (not d!2227008))

(assert (not b!7139427))

(assert (not b!7139345))

(assert (not d!2227034))

(assert (not d!2227028))

(assert (not b!7139421))

(assert (not bm!651103))

(assert (not b!7139406))

(assert (not b!7139413))

(assert (not b_lambda!272485))

(assert (not b_lambda!272487))

(assert (not b!7139359))

(assert (not b!7139348))

(assert (not b!7139409))

(assert (not b!7139304))

(assert (not bs!1888078))

(assert (not b!7139344))

(assert (not b!7139404))

(assert (not d!2227032))

(assert (not b!7139416))

(assert (not b!7139296))

(assert (not b!7139412))

(assert (not d!2227012))

(assert tp_is_empty!45945)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

