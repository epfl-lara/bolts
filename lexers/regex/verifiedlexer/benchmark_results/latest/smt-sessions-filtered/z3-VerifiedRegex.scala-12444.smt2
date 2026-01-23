; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694240 () Bool)

(assert start!694240)

(declare-fun b!7126129 () Bool)

(declare-fun e!4282437 () Bool)

(declare-fun e!4282439 () Bool)

(assert (=> b!7126129 (= e!4282437 e!4282439)))

(declare-fun res!2907760 () Bool)

(assert (=> b!7126129 (=> (not res!2907760) (not e!4282439))))

(declare-datatypes ((C!36312 0))(
  ( (C!36313 (val!28082 Int)) )
))
(declare-datatypes ((List!69093 0))(
  ( (Nil!68969) (Cons!68969 (h!75417 C!36312) (t!383070 List!69093)) )
))
(declare-fun lt!2563446 () List!69093)

(declare-fun s!7390 () List!69093)

(assert (=> b!7126129 (= res!2907760 (= lt!2563446 s!7390))))

(declare-fun s1Rec!140 () List!69093)

(declare-fun s2Rec!140 () List!69093)

(declare-fun ++!16159 (List!69093 List!69093) List!69093)

(assert (=> b!7126129 (= lt!2563446 (++!16159 s1Rec!140 s2Rec!140))))

(declare-fun b!7126130 () Bool)

(declare-fun e!4282441 () Bool)

(declare-fun tp_is_empty!45643 () Bool)

(declare-fun tp!1962996 () Bool)

(assert (=> b!7126130 (= e!4282441 (and tp_is_empty!45643 tp!1962996))))

(declare-fun b!7126131 () Bool)

(declare-datatypes ((Unit!162899 0))(
  ( (Unit!162900) )
))
(declare-fun e!4282435 () Unit!162899)

(declare-fun Unit!162901 () Unit!162899)

(assert (=> b!7126131 (= e!4282435 Unit!162901)))

(declare-fun b!7126132 () Bool)

(declare-fun e!4282433 () Bool)

(declare-fun tp!1962993 () Bool)

(assert (=> b!7126132 (= e!4282433 (and tp_is_empty!45643 tp!1962993))))

(declare-fun b!7126133 () Bool)

(declare-fun e!4282431 () Bool)

(declare-fun tp!1963001 () Bool)

(assert (=> b!7126133 (= e!4282431 tp!1963001)))

(declare-fun setNonEmpty!51690 () Bool)

(declare-datatypes ((Regex!18021 0))(
  ( (ElementMatch!18021 (c!1329411 C!36312)) (Concat!26866 (regOne!36554 Regex!18021) (regTwo!36554 Regex!18021)) (EmptyExpr!18021) (Star!18021 (reg!18350 Regex!18021)) (EmptyLang!18021) (Union!18021 (regOne!36555 Regex!18021) (regTwo!36555 Regex!18021)) )
))
(declare-datatypes ((List!69094 0))(
  ( (Nil!68970) (Cons!68970 (h!75418 Regex!18021) (t!383071 List!69094)) )
))
(declare-datatypes ((Context!14030 0))(
  ( (Context!14031 (exprs!7515 List!69094)) )
))
(declare-fun setElem!51690 () Context!14030)

(declare-fun tp!1962997 () Bool)

(declare-fun setRes!51691 () Bool)

(declare-fun inv!88080 (Context!14030) Bool)

(assert (=> setNonEmpty!51690 (= setRes!51691 (and tp!1962997 (inv!88080 setElem!51690) e!4282431))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14030))

(declare-fun setRest!51691 () (InoxSet Context!14030))

(assert (=> setNonEmpty!51690 (= z2!471 ((_ map or) (store ((as const (Array Context!14030 Bool)) false) setElem!51690 true) setRest!51691))))

(declare-fun b!7126134 () Bool)

(declare-fun res!2907763 () Bool)

(assert (=> b!7126134 (=> (not res!2907763) (not e!4282439))))

(declare-fun e!4282434 () Bool)

(assert (=> b!7126134 (= res!2907763 e!4282434)))

(declare-fun res!2907762 () Bool)

(assert (=> b!7126134 (=> res!2907762 e!4282434)))

(declare-fun z1!552 () (InoxSet Context!14030))

(declare-fun matchZipper!3277 ((InoxSet Context!14030) List!69093) Bool)

(assert (=> b!7126134 (= res!2907762 (not (matchZipper!3277 z1!552 s1Rec!140)))))

(declare-fun b!7126135 () Bool)

(assert (=> b!7126135 (= e!4282439 (not true))))

(declare-fun lt!2563451 () List!69093)

(declare-datatypes ((tuple2!68356 0))(
  ( (tuple2!68357 (_1!37481 List!69093) (_2!37481 List!69093)) )
))
(declare-datatypes ((Option!17010 0))(
  ( (None!17009) (Some!17009 (v!53503 tuple2!68356)) )
))
(declare-fun isDefined!13709 (Option!17010) Bool)

(declare-fun findConcatSeparationZippers!526 ((InoxSet Context!14030) (InoxSet Context!14030) List!69093 List!69093 List!69093) Option!17010)

(assert (=> b!7126135 (isDefined!13709 (findConcatSeparationZippers!526 z1!552 z2!471 lt!2563451 (t!383070 s2Rec!140) s!7390))))

(declare-fun lt!2563447 () Unit!162899)

(declare-fun s2!1620 () List!69093)

(declare-fun s1!1688 () List!69093)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!110 ((InoxSet Context!14030) (InoxSet Context!14030) List!69093 List!69093 List!69093 List!69093 List!69093) Unit!162899)

(assert (=> b!7126135 (= lt!2563447 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!110 z1!552 z2!471 s1!1688 s2!1620 s!7390 lt!2563451 (t!383070 s2Rec!140)))))

(declare-fun isPrefix!5890 (List!69093 List!69093) Bool)

(assert (=> b!7126135 (isPrefix!5890 lt!2563451 s1!1688)))

(declare-fun lt!2563457 () Unit!162899)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!785 (List!69093 List!69093 List!69093) Unit!162899)

(assert (=> b!7126135 (= lt!2563457 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!785 s1!1688 lt!2563451 s!7390))))

(declare-fun lt!2563445 () Unit!162899)

(assert (=> b!7126135 (= lt!2563445 e!4282435)))

(declare-fun c!1329409 () Bool)

(declare-fun size!41458 (List!69093) Int)

(assert (=> b!7126135 (= c!1329409 (= (size!41458 s1Rec!140) (size!41458 s1!1688)))))

(declare-fun lt!2563453 () List!69093)

(assert (=> b!7126135 (isPrefix!5890 lt!2563451 lt!2563453)))

(declare-fun lt!2563448 () Unit!162899)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3621 (List!69093 List!69093) Unit!162899)

(assert (=> b!7126135 (= lt!2563448 (lemmaConcatTwoListThenFirstIsPrefix!3621 lt!2563451 (t!383070 s2Rec!140)))))

(assert (=> b!7126135 (= lt!2563453 s!7390)))

(assert (=> b!7126135 (= lt!2563453 (++!16159 lt!2563451 (t!383070 s2Rec!140)))))

(assert (=> b!7126135 (= lt!2563451 (++!16159 s1Rec!140 (Cons!68969 (h!75417 s2Rec!140) Nil!68969)))))

(declare-fun lt!2563450 () Unit!162899)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3007 (List!69093 C!36312 List!69093 List!69093) Unit!162899)

(assert (=> b!7126135 (= lt!2563450 (lemmaMoveElementToOtherListKeepsConcatEq!3007 s1Rec!140 (h!75417 s2Rec!140) (t!383070 s2Rec!140) s!7390))))

(declare-fun lt!2563452 () Unit!162899)

(declare-fun e!4282432 () Unit!162899)

(assert (=> b!7126135 (= lt!2563452 e!4282432)))

(declare-fun c!1329410 () Bool)

(assert (=> b!7126135 (= c!1329410 (= s1Rec!140 s1!1688))))

(assert (=> b!7126135 (isPrefix!5890 s1Rec!140 lt!2563446)))

(declare-fun lt!2563455 () Unit!162899)

(assert (=> b!7126135 (= lt!2563455 (lemmaConcatTwoListThenFirstIsPrefix!3621 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563454 () List!69093)

(assert (=> b!7126135 (isPrefix!5890 s1!1688 lt!2563454)))

(declare-fun lt!2563456 () Unit!162899)

(assert (=> b!7126135 (= lt!2563456 (lemmaConcatTwoListThenFirstIsPrefix!3621 s1!1688 s2!1620))))

(declare-fun b!7126136 () Bool)

(declare-fun Unit!162902 () Unit!162899)

(assert (=> b!7126136 (= e!4282432 Unit!162902)))

(declare-fun b!7126137 () Bool)

(declare-fun e!4282442 () Bool)

(declare-fun tp!1962994 () Bool)

(assert (=> b!7126137 (= e!4282442 (and tp_is_empty!45643 tp!1962994))))

(declare-fun b!7126138 () Bool)

(declare-fun res!2907766 () Bool)

(assert (=> b!7126138 (=> (not res!2907766) (not e!4282437))))

(assert (=> b!7126138 (= res!2907766 (isPrefix!5890 s1Rec!140 s1!1688))))

(declare-fun b!7126140 () Bool)

(declare-fun e!4282440 () Bool)

(declare-fun tp!1962999 () Bool)

(assert (=> b!7126140 (= e!4282440 (and tp_is_empty!45643 tp!1962999))))

(declare-fun tp!1962998 () Bool)

(declare-fun setRes!51690 () Bool)

(declare-fun e!4282438 () Bool)

(declare-fun setElem!51691 () Context!14030)

(declare-fun setNonEmpty!51691 () Bool)

(assert (=> setNonEmpty!51691 (= setRes!51690 (and tp!1962998 (inv!88080 setElem!51691) e!4282438))))

(declare-fun setRest!51690 () (InoxSet Context!14030))

(assert (=> setNonEmpty!51691 (= z1!552 ((_ map or) (store ((as const (Array Context!14030 Bool)) false) setElem!51691 true) setRest!51690))))

(declare-fun b!7126141 () Bool)

(declare-fun e!4282436 () Bool)

(assert (=> b!7126141 (= e!4282436 e!4282437)))

(declare-fun res!2907761 () Bool)

(assert (=> b!7126141 (=> (not res!2907761) (not e!4282437))))

(assert (=> b!7126141 (= res!2907761 (= lt!2563454 s!7390))))

(assert (=> b!7126141 (= lt!2563454 (++!16159 s1!1688 s2!1620))))

(declare-fun b!7126142 () Bool)

(declare-fun Unit!162903 () Unit!162899)

(assert (=> b!7126142 (= e!4282432 Unit!162903)))

(declare-fun lt!2563449 () Unit!162899)

(declare-fun lemmaSamePrefixThenSameSuffix!2725 (List!69093 List!69093 List!69093 List!69093 List!69093) Unit!162899)

(assert (=> b!7126142 (= lt!2563449 (lemmaSamePrefixThenSameSuffix!2725 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7126142 false))

(declare-fun b!7126143 () Bool)

(declare-fun tp!1963000 () Bool)

(assert (=> b!7126143 (= e!4282438 tp!1963000)))

(declare-fun b!7126144 () Bool)

(declare-fun res!2907767 () Bool)

(assert (=> b!7126144 (=> (not res!2907767) (not e!4282439))))

(get-info :version)

(assert (=> b!7126144 (= res!2907767 (not ((_ is Nil!68969) s2Rec!140)))))

(declare-fun res!2907764 () Bool)

(assert (=> start!694240 (=> (not res!2907764) (not e!4282436))))

(assert (=> start!694240 (= res!2907764 (matchZipper!3277 z1!552 s1!1688))))

(assert (=> start!694240 e!4282436))

(declare-fun e!4282443 () Bool)

(assert (=> start!694240 e!4282443))

(declare-fun condSetEmpty!51691 () Bool)

(assert (=> start!694240 (= condSetEmpty!51691 (= z1!552 ((as const (Array Context!14030 Bool)) false)))))

(assert (=> start!694240 setRes!51690))

(assert (=> start!694240 e!4282442))

(declare-fun condSetEmpty!51690 () Bool)

(assert (=> start!694240 (= condSetEmpty!51690 (= z2!471 ((as const (Array Context!14030 Bool)) false)))))

(assert (=> start!694240 setRes!51691))

(assert (=> start!694240 e!4282440))

(assert (=> start!694240 e!4282441))

(assert (=> start!694240 e!4282433))

(declare-fun b!7126139 () Bool)

(assert (=> b!7126139 (= e!4282434 (not (matchZipper!3277 z2!471 s2Rec!140)))))

(declare-fun b!7126145 () Bool)

(declare-fun res!2907765 () Bool)

(assert (=> b!7126145 (=> (not res!2907765) (not e!4282436))))

(assert (=> b!7126145 (= res!2907765 (matchZipper!3277 z2!471 s2!1620))))

(declare-fun setIsEmpty!51690 () Bool)

(assert (=> setIsEmpty!51690 setRes!51691))

(declare-fun b!7126146 () Bool)

(declare-fun Unit!162904 () Unit!162899)

(assert (=> b!7126146 (= e!4282435 Unit!162904)))

(declare-fun lt!2563458 () Unit!162899)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1445 (List!69093 List!69093 List!69093) Unit!162899)

(assert (=> b!7126146 (= lt!2563458 (lemmaIsPrefixSameLengthThenSameList!1445 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7126146 false))

(declare-fun b!7126147 () Bool)

(declare-fun tp!1962995 () Bool)

(assert (=> b!7126147 (= e!4282443 (and tp_is_empty!45643 tp!1962995))))

(declare-fun setIsEmpty!51691 () Bool)

(assert (=> setIsEmpty!51691 setRes!51690))

(assert (= (and start!694240 res!2907764) b!7126145))

(assert (= (and b!7126145 res!2907765) b!7126141))

(assert (= (and b!7126141 res!2907761) b!7126138))

(assert (= (and b!7126138 res!2907766) b!7126129))

(assert (= (and b!7126129 res!2907760) b!7126134))

(assert (= (and b!7126134 (not res!2907762)) b!7126139))

(assert (= (and b!7126134 res!2907763) b!7126144))

(assert (= (and b!7126144 res!2907767) b!7126135))

(assert (= (and b!7126135 c!1329410) b!7126142))

(assert (= (and b!7126135 (not c!1329410)) b!7126136))

(assert (= (and b!7126135 c!1329409) b!7126146))

(assert (= (and b!7126135 (not c!1329409)) b!7126131))

(assert (= (and start!694240 ((_ is Cons!68969) s1Rec!140)) b!7126147))

(assert (= (and start!694240 condSetEmpty!51691) setIsEmpty!51691))

(assert (= (and start!694240 (not condSetEmpty!51691)) setNonEmpty!51691))

(assert (= setNonEmpty!51691 b!7126143))

(assert (= (and start!694240 ((_ is Cons!68969) s2Rec!140)) b!7126137))

(assert (= (and start!694240 condSetEmpty!51690) setIsEmpty!51690))

(assert (= (and start!694240 (not condSetEmpty!51690)) setNonEmpty!51690))

(assert (= setNonEmpty!51690 b!7126133))

(assert (= (and start!694240 ((_ is Cons!68969) s2!1620)) b!7126140))

(assert (= (and start!694240 ((_ is Cons!68969) s1!1688)) b!7126130))

(assert (= (and start!694240 ((_ is Cons!68969) s!7390)) b!7126132))

(declare-fun m!7843038 () Bool)

(assert (=> b!7126145 m!7843038))

(declare-fun m!7843040 () Bool)

(assert (=> start!694240 m!7843040))

(declare-fun m!7843042 () Bool)

(assert (=> b!7126146 m!7843042))

(declare-fun m!7843044 () Bool)

(assert (=> b!7126129 m!7843044))

(declare-fun m!7843046 () Bool)

(assert (=> setNonEmpty!51690 m!7843046))

(declare-fun m!7843048 () Bool)

(assert (=> b!7126141 m!7843048))

(declare-fun m!7843050 () Bool)

(assert (=> b!7126135 m!7843050))

(declare-fun m!7843052 () Bool)

(assert (=> b!7126135 m!7843052))

(declare-fun m!7843054 () Bool)

(assert (=> b!7126135 m!7843054))

(declare-fun m!7843056 () Bool)

(assert (=> b!7126135 m!7843056))

(declare-fun m!7843058 () Bool)

(assert (=> b!7126135 m!7843058))

(declare-fun m!7843060 () Bool)

(assert (=> b!7126135 m!7843060))

(declare-fun m!7843062 () Bool)

(assert (=> b!7126135 m!7843062))

(declare-fun m!7843064 () Bool)

(assert (=> b!7126135 m!7843064))

(declare-fun m!7843066 () Bool)

(assert (=> b!7126135 m!7843066))

(declare-fun m!7843068 () Bool)

(assert (=> b!7126135 m!7843068))

(declare-fun m!7843070 () Bool)

(assert (=> b!7126135 m!7843070))

(declare-fun m!7843072 () Bool)

(assert (=> b!7126135 m!7843072))

(declare-fun m!7843074 () Bool)

(assert (=> b!7126135 m!7843074))

(assert (=> b!7126135 m!7843060))

(declare-fun m!7843076 () Bool)

(assert (=> b!7126135 m!7843076))

(declare-fun m!7843078 () Bool)

(assert (=> b!7126135 m!7843078))

(declare-fun m!7843080 () Bool)

(assert (=> b!7126135 m!7843080))

(declare-fun m!7843082 () Bool)

(assert (=> b!7126138 m!7843082))

(declare-fun m!7843084 () Bool)

(assert (=> b!7126139 m!7843084))

(declare-fun m!7843086 () Bool)

(assert (=> b!7126134 m!7843086))

(declare-fun m!7843088 () Bool)

(assert (=> b!7126142 m!7843088))

(declare-fun m!7843090 () Bool)

(assert (=> setNonEmpty!51691 m!7843090))

(check-sat (not b!7126134) (not b!7126138) (not b!7126139) (not b!7126129) (not b!7126130) (not start!694240) (not b!7126147) tp_is_empty!45643 (not setNonEmpty!51691) (not b!7126143) (not b!7126140) (not b!7126137) (not b!7126145) (not b!7126135) (not b!7126142) (not b!7126133) (not b!7126146) (not setNonEmpty!51690) (not b!7126132) (not b!7126141))
(check-sat)
