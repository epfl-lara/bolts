; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696702 () Bool)

(assert start!696702)

(declare-fun b!7145340 () Bool)

(declare-fun e!4294005 () Bool)

(declare-fun tp!1971133 () Bool)

(declare-fun tp!1971137 () Bool)

(assert (=> b!7145340 (= e!4294005 (and tp!1971133 tp!1971137))))

(declare-fun b!7145341 () Bool)

(declare-fun e!4294001 () Bool)

(declare-fun e!4294002 () Bool)

(assert (=> b!7145341 (= e!4294001 e!4294002)))

(declare-fun res!2915352 () Bool)

(assert (=> b!7145341 (=> (not res!2915352) (not e!4294002))))

(declare-datatypes ((C!36674 0))(
  ( (C!36675 (val!28285 Int)) )
))
(declare-datatypes ((Regex!18200 0))(
  ( (ElementMatch!18200 (c!1332509 C!36674)) (Concat!27045 (regOne!36912 Regex!18200) (regTwo!36912 Regex!18200)) (EmptyExpr!18200) (Star!18200 (reg!18529 Regex!18200)) (EmptyLang!18200) (Union!18200 (regOne!36913 Regex!18200) (regTwo!36913 Regex!18200)) )
))
(declare-fun r!11483 () Regex!18200)

(declare-datatypes ((List!69478 0))(
  ( (Nil!69354) (Cons!69354 (h!75802 Regex!18200) (t!383495 List!69478)) )
))
(declare-datatypes ((Context!14388 0))(
  ( (Context!14389 (exprs!7694 List!69478)) )
))
(declare-datatypes ((List!69479 0))(
  ( (Nil!69355) (Cons!69355 (h!75803 Context!14388) (t!383496 List!69479)) )
))
(declare-fun lt!2568647 () List!69479)

(declare-fun unfocusZipper!2548 (List!69479) Regex!18200)

(assert (=> b!7145341 (= res!2915352 (= r!11483 (unfocusZipper!2548 lt!2568647)))))

(declare-fun z!3189 () (Set Context!14388))

(declare-fun toList!11231 ((Set Context!14388)) List!69479)

(assert (=> b!7145341 (= lt!2568647 (toList!11231 z!3189))))

(declare-fun res!2915353 () Bool)

(assert (=> start!696702 (=> (not res!2915353) (not e!4294001))))

(declare-fun validRegex!9367 (Regex!18200) Bool)

(assert (=> start!696702 (= res!2915353 (validRegex!9367 r!11483))))

(assert (=> start!696702 e!4294001))

(assert (=> start!696702 e!4294005))

(declare-fun condSetEmpty!52714 () Bool)

(assert (=> start!696702 (= condSetEmpty!52714 (= z!3189 (as set.empty (Set Context!14388))))))

(declare-fun setRes!52714 () Bool)

(assert (=> start!696702 setRes!52714))

(declare-fun b!7145342 () Bool)

(declare-fun res!2915356 () Bool)

(declare-fun e!4294003 () Bool)

(assert (=> b!7145342 (=> res!2915356 e!4294003)))

(declare-fun lt!2568645 () Context!14388)

(declare-fun nullableContext!165 (Context!14388) Bool)

(assert (=> b!7145342 (= res!2915356 (not (nullableContext!165 lt!2568645)))))

(declare-fun b!7145343 () Bool)

(declare-fun e!4294004 () Bool)

(assert (=> b!7145343 (= e!4294002 e!4294004)))

(declare-fun res!2915358 () Bool)

(assert (=> b!7145343 (=> (not res!2915358) (not e!4294004))))

(declare-fun lt!2568648 () Regex!18200)

(assert (=> b!7145343 (= res!2915358 (= r!11483 lt!2568648))))

(declare-fun lt!2568649 () List!69478)

(declare-fun generalisedUnion!2705 (List!69478) Regex!18200)

(assert (=> b!7145343 (= lt!2568648 (generalisedUnion!2705 lt!2568649))))

(declare-fun unfocusZipperList!2241 (List!69479) List!69478)

(assert (=> b!7145343 (= lt!2568649 (unfocusZipperList!2241 lt!2568647))))

(declare-fun setElem!52714 () Context!14388)

(declare-fun tp!1971136 () Bool)

(declare-fun setNonEmpty!52714 () Bool)

(declare-fun e!4294000 () Bool)

(declare-fun inv!88565 (Context!14388) Bool)

(assert (=> setNonEmpty!52714 (= setRes!52714 (and tp!1971136 (inv!88565 setElem!52714) e!4294000))))

(declare-fun setRest!52714 () (Set Context!14388))

(assert (=> setNonEmpty!52714 (= z!3189 (set.union (set.insert setElem!52714 (as set.empty (Set Context!14388))) setRest!52714))))

(declare-fun b!7145344 () Bool)

(declare-fun tp!1971132 () Bool)

(declare-fun tp!1971138 () Bool)

(assert (=> b!7145344 (= e!4294005 (and tp!1971132 tp!1971138))))

(declare-fun b!7145345 () Bool)

(declare-fun e!4293999 () Bool)

(assert (=> b!7145345 (= e!4294004 (not e!4293999))))

(declare-fun res!2915357 () Bool)

(assert (=> b!7145345 (=> res!2915357 e!4293999)))

(declare-fun lt!2568646 () Bool)

(declare-fun lambda!435605 () Int)

(declare-fun exists!4026 (List!69478 Int) Bool)

(assert (=> b!7145345 (= res!2915357 (not (= lt!2568646 (exists!4026 lt!2568649 lambda!435605))))))

(assert (=> b!7145345 (= lt!2568646 (exists!4026 lt!2568649 lambda!435605))))

(declare-fun nullable!7717 (Regex!18200) Bool)

(assert (=> b!7145345 (= lt!2568646 (nullable!7717 lt!2568648))))

(declare-datatypes ((Unit!163267 0))(
  ( (Unit!163268) )
))
(declare-fun lt!2568644 () Unit!163267)

(declare-fun nullableGenUnionSpec!81 (Regex!18200 List!69478) Unit!163267)

(assert (=> b!7145345 (= lt!2568644 (nullableGenUnionSpec!81 lt!2568648 lt!2568649))))

(declare-fun b!7145346 () Bool)

(declare-fun tp!1971134 () Bool)

(assert (=> b!7145346 (= e!4294000 tp!1971134)))

(declare-fun b!7145347 () Bool)

(declare-fun res!2915350 () Bool)

(assert (=> b!7145347 (=> res!2915350 e!4293999)))

(declare-fun lambda!435606 () Int)

(declare-fun exists!4027 ((Set Context!14388) Int) Bool)

(assert (=> b!7145347 (= res!2915350 (not (exists!4027 z!3189 lambda!435606)))))

(declare-fun b!7145348 () Bool)

(declare-fun tp!1971135 () Bool)

(assert (=> b!7145348 (= e!4294005 tp!1971135)))

(declare-fun b!7145349 () Bool)

(assert (=> b!7145349 (= e!4293999 e!4294003)))

(declare-fun res!2915351 () Bool)

(assert (=> b!7145349 (=> res!2915351 e!4294003)))

(assert (=> b!7145349 (= res!2915351 (not (set.member lt!2568645 z!3189)))))

(declare-fun getWitness!1987 ((Set Context!14388) Int) Context!14388)

(assert (=> b!7145349 (= lt!2568645 (getWitness!1987 z!3189 lambda!435606))))

(declare-fun setIsEmpty!52714 () Bool)

(assert (=> setIsEmpty!52714 setRes!52714))

(declare-fun b!7145350 () Bool)

(declare-fun res!2915354 () Bool)

(assert (=> b!7145350 (=> res!2915354 e!4293999)))

(assert (=> b!7145350 (= res!2915354 (exists!4026 lt!2568649 lambda!435605))))

(declare-fun b!7145351 () Bool)

(declare-fun res!2915355 () Bool)

(assert (=> b!7145351 (=> res!2915355 e!4293999)))

(assert (=> b!7145351 (= res!2915355 lt!2568646)))

(declare-fun b!7145352 () Bool)

(declare-fun tp_is_empty!46037 () Bool)

(assert (=> b!7145352 (= e!4294005 tp_is_empty!46037)))

(declare-fun b!7145353 () Bool)

(assert (=> b!7145353 (= e!4294003 true)))

(declare-fun contains!20632 (List!69478 Regex!18200) Bool)

(declare-fun generalisedConcat!2377 (List!69478) Regex!18200)

(assert (=> b!7145353 (contains!20632 lt!2568649 (generalisedConcat!2377 (exprs!7694 lt!2568645)))))

(declare-fun lt!2568643 () Unit!163267)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!23 (List!69479 Context!14388) Unit!163267)

(assert (=> b!7145353 (= lt!2568643 (lemmaZipperContainsContextThenUnfocusZipperListContains!23 lt!2568647 lt!2568645))))

(assert (= (and start!696702 res!2915353) b!7145341))

(assert (= (and b!7145341 res!2915352) b!7145343))

(assert (= (and b!7145343 res!2915358) b!7145345))

(assert (= (and b!7145345 (not res!2915357)) b!7145351))

(assert (= (and b!7145351 (not res!2915355)) b!7145350))

(assert (= (and b!7145350 (not res!2915354)) b!7145347))

(assert (= (and b!7145347 (not res!2915350)) b!7145349))

(assert (= (and b!7145349 (not res!2915351)) b!7145342))

(assert (= (and b!7145342 (not res!2915356)) b!7145353))

(assert (= (and start!696702 (is-ElementMatch!18200 r!11483)) b!7145352))

(assert (= (and start!696702 (is-Concat!27045 r!11483)) b!7145344))

(assert (= (and start!696702 (is-Star!18200 r!11483)) b!7145348))

(assert (= (and start!696702 (is-Union!18200 r!11483)) b!7145340))

(assert (= (and start!696702 condSetEmpty!52714) setIsEmpty!52714))

(assert (= (and start!696702 (not condSetEmpty!52714)) setNonEmpty!52714))

(assert (= setNonEmpty!52714 b!7145346))

(declare-fun m!7858746 () Bool)

(assert (=> b!7145343 m!7858746))

(declare-fun m!7858748 () Bool)

(assert (=> b!7145343 m!7858748))

(declare-fun m!7858750 () Bool)

(assert (=> b!7145345 m!7858750))

(assert (=> b!7145345 m!7858750))

(declare-fun m!7858752 () Bool)

(assert (=> b!7145345 m!7858752))

(declare-fun m!7858754 () Bool)

(assert (=> b!7145345 m!7858754))

(assert (=> b!7145350 m!7858750))

(declare-fun m!7858756 () Bool)

(assert (=> setNonEmpty!52714 m!7858756))

(declare-fun m!7858758 () Bool)

(assert (=> b!7145342 m!7858758))

(declare-fun m!7858760 () Bool)

(assert (=> b!7145341 m!7858760))

(declare-fun m!7858762 () Bool)

(assert (=> b!7145341 m!7858762))

(declare-fun m!7858764 () Bool)

(assert (=> start!696702 m!7858764))

(declare-fun m!7858766 () Bool)

(assert (=> b!7145353 m!7858766))

(assert (=> b!7145353 m!7858766))

(declare-fun m!7858768 () Bool)

(assert (=> b!7145353 m!7858768))

(declare-fun m!7858770 () Bool)

(assert (=> b!7145353 m!7858770))

(declare-fun m!7858772 () Bool)

(assert (=> b!7145349 m!7858772))

(declare-fun m!7858774 () Bool)

(assert (=> b!7145349 m!7858774))

(declare-fun m!7858776 () Bool)

(assert (=> b!7145347 m!7858776))

(push 1)

(assert (not b!7145350))

(assert (not b!7145345))

(assert (not b!7145340))

(assert (not b!7145347))

(assert (not b!7145343))

(assert (not b!7145348))

(assert tp_is_empty!46037)

(assert (not start!696702))

(assert (not b!7145346))

(assert (not setNonEmpty!52714))

(assert (not b!7145349))

(assert (not b!7145341))

(assert (not b!7145353))

(assert (not b!7145344))

(assert (not b!7145342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

