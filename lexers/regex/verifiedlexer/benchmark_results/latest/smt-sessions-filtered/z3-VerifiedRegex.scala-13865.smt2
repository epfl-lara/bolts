; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737000 () Bool)

(assert start!737000)

(declare-fun b!7700041 () Bool)

(assert (=> b!7700041 true))

(assert (=> b!7700041 true))

(declare-fun bs!1957012 () Bool)

(declare-fun b!7700046 () Bool)

(assert (= bs!1957012 (and b!7700046 b!7700041)))

(declare-fun lambda!470589 () Int)

(declare-fun lambda!470588 () Int)

(assert (=> bs!1957012 (not (= lambda!470589 lambda!470588))))

(assert (=> b!7700046 true))

(assert (=> b!7700046 true))

(declare-fun b!7700039 () Bool)

(declare-fun e!4569913 () Bool)

(declare-fun tp!2255888 () Bool)

(assert (=> b!7700039 (= e!4569913 tp!2255888)))

(declare-fun b!7700040 () Bool)

(declare-datatypes ((Unit!168092 0))(
  ( (Unit!168093) )
))
(declare-fun e!4569915 () Unit!168092)

(declare-fun Unit!168094 () Unit!168092)

(assert (=> b!7700040 (= e!4569915 Unit!168094)))

(declare-fun lt!2664726 () Unit!168092)

(declare-datatypes ((C!41376 0))(
  ( (C!41377 (val!31128 Int)) )
))
(declare-datatypes ((Regex!20525 0))(
  ( (ElementMatch!20525 (c!1419288 C!41376)) (Concat!29370 (regOne!41562 Regex!20525) (regTwo!41562 Regex!20525)) (EmptyExpr!20525) (Star!20525 (reg!20854 Regex!20525)) (EmptyLang!20525) (Union!20525 (regOne!41563 Regex!20525) (regTwo!41563 Regex!20525)) )
))
(declare-fun r!14126 () Regex!20525)

(declare-datatypes ((List!73376 0))(
  ( (Nil!73252) (Cons!73252 (h!79700 C!41376) (t!388111 List!73376)) )
))
(declare-fun s!9605 () List!73376)

(declare-fun lemmaStarAppConcat!40 (Regex!20525 List!73376) Unit!168092)

(assert (=> b!7700040 (= lt!2664726 (lemmaStarAppConcat!40 (reg!20854 r!14126) s!9605))))

(declare-fun matchR!10021 (Regex!20525 List!73376) Bool)

(assert (=> b!7700040 (matchR!10021 (Concat!29370 (reg!20854 r!14126) r!14126) s!9605)))

(declare-fun lt!2664721 () Unit!168092)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!298 (Regex!20525 Regex!20525 List!73376) Unit!168092)

(assert (=> b!7700040 (= lt!2664721 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!298 (reg!20854 r!14126) r!14126 s!9605))))

(assert (=> b!7700040 false))

(declare-fun e!4569912 () Bool)

(declare-fun e!4569916 () Bool)

(assert (=> b!7700041 (= e!4569912 (not e!4569916))))

(declare-fun res!3075204 () Bool)

(assert (=> b!7700041 (=> res!3075204 e!4569916)))

(declare-fun lt!2664720 () Bool)

(assert (=> b!7700041 (= res!3075204 lt!2664720)))

(declare-fun Exists!4650 (Int) Bool)

(assert (=> b!7700041 (= lt!2664720 (Exists!4650 lambda!470588))))

(declare-datatypes ((tuple2!69512 0))(
  ( (tuple2!69513 (_1!38059 List!73376) (_2!38059 List!73376)) )
))
(declare-datatypes ((Option!17550 0))(
  ( (None!17549) (Some!17549 (v!54684 tuple2!69512)) )
))
(declare-fun isDefined!14166 (Option!17550) Bool)

(declare-fun findConcatSeparation!3580 (Regex!20525 Regex!20525 List!73376 List!73376 List!73376) Option!17550)

(assert (=> b!7700041 (= lt!2664720 (isDefined!14166 (findConcatSeparation!3580 (reg!20854 r!14126) r!14126 Nil!73252 s!9605 s!9605)))))

(declare-fun lt!2664723 () Unit!168092)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3338 (Regex!20525 Regex!20525 List!73376) Unit!168092)

(assert (=> b!7700041 (= lt!2664723 (lemmaFindConcatSeparationEquivalentToExists!3338 (reg!20854 r!14126) r!14126 s!9605))))

(declare-fun b!7700042 () Bool)

(declare-fun res!3075205 () Bool)

(assert (=> b!7700042 (=> (not res!3075205) (not e!4569912))))

(declare-fun isEmpty!41902 (List!73376) Bool)

(assert (=> b!7700042 (= res!3075205 (not (isEmpty!41902 s!9605)))))

(declare-fun b!7700043 () Bool)

(declare-fun tp!2255884 () Bool)

(declare-fun tp!2255885 () Bool)

(assert (=> b!7700043 (= e!4569913 (and tp!2255884 tp!2255885))))

(declare-fun b!7700044 () Bool)

(declare-fun Unit!168095 () Unit!168092)

(assert (=> b!7700044 (= e!4569915 Unit!168095)))

(declare-fun b!7700045 () Bool)

(declare-fun e!4569917 () Bool)

(declare-fun validRegex!10943 (Regex!20525) Bool)

(assert (=> b!7700045 (= e!4569917 (validRegex!10943 r!14126))))

(declare-fun lt!2664722 () tuple2!69512)

(declare-fun matchRSpec!4615 (Regex!20525 List!73376) Bool)

(assert (=> b!7700045 (= (matchR!10021 (reg!20854 r!14126) (_1!38059 lt!2664722)) (matchRSpec!4615 (reg!20854 r!14126) (_1!38059 lt!2664722)))))

(declare-fun lt!2664725 () Unit!168092)

(declare-fun mainMatchTheorem!4590 (Regex!20525 List!73376) Unit!168092)

(assert (=> b!7700045 (= lt!2664725 (mainMatchTheorem!4590 (reg!20854 r!14126) (_1!38059 lt!2664722)))))

(declare-fun pickWitness!504 (Int) tuple2!69512)

(assert (=> b!7700045 (= lt!2664722 (pickWitness!504 lambda!470589))))

(declare-fun res!3075201 () Bool)

(assert (=> b!7700046 (=> res!3075201 e!4569917)))

(assert (=> b!7700046 (= res!3075201 (not (Exists!4650 lambda!470589)))))

(declare-fun b!7700047 () Bool)

(assert (=> b!7700047 (= e!4569916 e!4569917)))

(declare-fun res!3075203 () Bool)

(assert (=> b!7700047 (=> res!3075203 e!4569917)))

(assert (=> b!7700047 (= res!3075203 (Exists!4650 lambda!470588))))

(declare-fun lt!2664724 () Unit!168092)

(assert (=> b!7700047 (= lt!2664724 e!4569915)))

(declare-fun c!1419287 () Bool)

(assert (=> b!7700047 (= c!1419287 (matchR!10021 r!14126 s!9605))))

(declare-fun b!7700048 () Bool)

(declare-fun tp_is_empty!51405 () Bool)

(assert (=> b!7700048 (= e!4569913 tp_is_empty!51405)))

(declare-fun res!3075202 () Bool)

(assert (=> start!737000 (=> (not res!3075202) (not e!4569912))))

(assert (=> start!737000 (= res!3075202 (validRegex!10943 r!14126))))

(assert (=> start!737000 e!4569912))

(assert (=> start!737000 e!4569913))

(declare-fun e!4569914 () Bool)

(assert (=> start!737000 e!4569914))

(declare-fun b!7700049 () Bool)

(declare-fun tp!2255887 () Bool)

(assert (=> b!7700049 (= e!4569914 (and tp_is_empty!51405 tp!2255887))))

(declare-fun b!7700050 () Bool)

(declare-fun res!3075206 () Bool)

(assert (=> b!7700050 (=> (not res!3075206) (not e!4569912))))

(get-info :version)

(assert (=> b!7700050 (= res!3075206 (and (not ((_ is EmptyExpr!20525) r!14126)) (not ((_ is EmptyLang!20525) r!14126)) (not ((_ is ElementMatch!20525) r!14126)) (not ((_ is Union!20525) r!14126)) ((_ is Star!20525) r!14126)))))

(declare-fun b!7700051 () Bool)

(declare-fun tp!2255886 () Bool)

(declare-fun tp!2255889 () Bool)

(assert (=> b!7700051 (= e!4569913 (and tp!2255886 tp!2255889))))

(assert (= (and start!737000 res!3075202) b!7700050))

(assert (= (and b!7700050 res!3075206) b!7700042))

(assert (= (and b!7700042 res!3075205) b!7700041))

(assert (= (and b!7700041 (not res!3075204)) b!7700047))

(assert (= (and b!7700047 c!1419287) b!7700040))

(assert (= (and b!7700047 (not c!1419287)) b!7700044))

(assert (= (and b!7700047 (not res!3075203)) b!7700046))

(assert (= (and b!7700046 (not res!3075201)) b!7700045))

(assert (= (and start!737000 ((_ is ElementMatch!20525) r!14126)) b!7700048))

(assert (= (and start!737000 ((_ is Concat!29370) r!14126)) b!7700051))

(assert (= (and start!737000 ((_ is Star!20525) r!14126)) b!7700039))

(assert (= (and start!737000 ((_ is Union!20525) r!14126)) b!7700043))

(assert (= (and start!737000 ((_ is Cons!73252) s!9605)) b!7700049))

(declare-fun m!8190472 () Bool)

(assert (=> b!7700045 m!8190472))

(declare-fun m!8190474 () Bool)

(assert (=> b!7700045 m!8190474))

(declare-fun m!8190476 () Bool)

(assert (=> b!7700045 m!8190476))

(declare-fun m!8190478 () Bool)

(assert (=> b!7700045 m!8190478))

(declare-fun m!8190480 () Bool)

(assert (=> b!7700045 m!8190480))

(declare-fun m!8190482 () Bool)

(assert (=> b!7700042 m!8190482))

(declare-fun m!8190484 () Bool)

(assert (=> b!7700047 m!8190484))

(declare-fun m!8190486 () Bool)

(assert (=> b!7700047 m!8190486))

(assert (=> b!7700041 m!8190484))

(declare-fun m!8190488 () Bool)

(assert (=> b!7700041 m!8190488))

(assert (=> b!7700041 m!8190488))

(declare-fun m!8190490 () Bool)

(assert (=> b!7700041 m!8190490))

(declare-fun m!8190492 () Bool)

(assert (=> b!7700041 m!8190492))

(declare-fun m!8190494 () Bool)

(assert (=> b!7700040 m!8190494))

(declare-fun m!8190496 () Bool)

(assert (=> b!7700040 m!8190496))

(declare-fun m!8190498 () Bool)

(assert (=> b!7700040 m!8190498))

(declare-fun m!8190500 () Bool)

(assert (=> b!7700046 m!8190500))

(assert (=> start!737000 m!8190476))

(check-sat (not b!7700039) (not start!737000) (not b!7700051) (not b!7700045) (not b!7700043) (not b!7700042) (not b!7700047) (not b!7700049) (not b!7700046) (not b!7700041) tp_is_empty!51405 (not b!7700040))
(check-sat)
