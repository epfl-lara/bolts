; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520696 () Bool)

(assert start!520696)

(declare-fun b!4945994 () Bool)

(declare-fun res!2110493 () Bool)

(declare-fun e!3090252 () Bool)

(assert (=> b!4945994 (=> res!2110493 e!3090252)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4945994 (= res!2110493 (= testedPSize!70 totalInputSize!132))))

(declare-fun res!2110487 () Bool)

(declare-fun e!3090247 () Bool)

(assert (=> start!520696 (=> (not res!2110487) (not e!3090247))))

(declare-datatypes ((C!27208 0))(
  ( (C!27209 (val!22938 Int)) )
))
(declare-datatypes ((List!57095 0))(
  ( (Nil!56971) (Cons!56971 (h!63419 C!27208) (t!367631 List!57095)) )
))
(declare-fun lt!2039493 () List!57095)

(declare-fun lt!2039482 () List!57095)

(assert (=> start!520696 (= res!2110487 (= lt!2039493 lt!2039482))))

(declare-datatypes ((IArray!30057 0))(
  ( (IArray!30058 (innerList!15086 List!57095)) )
))
(declare-datatypes ((Conc!14998 0))(
  ( (Node!14998 (left!41563 Conc!14998) (right!41893 Conc!14998) (csize!30226 Int) (cheight!15209 Int)) (Leaf!24930 (xs!18324 IArray!30057) (csize!30227 Int)) (Empty!14998) )
))
(declare-datatypes ((BalanceConc!29426 0))(
  ( (BalanceConc!29427 (c!843964 Conc!14998)) )
))
(declare-fun totalInput!685 () BalanceConc!29426)

(declare-fun list!18157 (BalanceConc!29426) List!57095)

(assert (=> start!520696 (= lt!2039482 (list!18157 totalInput!685))))

(declare-fun testedP!110 () List!57095)

(declare-fun testedSuffix!70 () List!57095)

(declare-fun ++!12464 (List!57095 List!57095) List!57095)

(assert (=> start!520696 (= lt!2039493 (++!12464 testedP!110 testedSuffix!70))))

(assert (=> start!520696 e!3090247))

(declare-fun e!3090248 () Bool)

(assert (=> start!520696 e!3090248))

(declare-fun condSetEmpty!28040 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13479 0))(
  ( (ElementMatch!13479 (c!843965 C!27208)) (Concat!22052 (regOne!27470 Regex!13479) (regTwo!27470 Regex!13479)) (EmptyExpr!13479) (Star!13479 (reg!13808 Regex!13479)) (EmptyLang!13479) (Union!13479 (regOne!27471 Regex!13479) (regTwo!27471 Regex!13479)) )
))
(declare-datatypes ((List!57096 0))(
  ( (Nil!56972) (Cons!56972 (h!63420 Regex!13479) (t!367632 List!57096)) )
))
(declare-datatypes ((Context!6242 0))(
  ( (Context!6243 (exprs!3621 List!57096)) )
))
(declare-fun z!3568 () (InoxSet Context!6242))

(assert (=> start!520696 (= condSetEmpty!28040 (= z!3568 ((as const (Array Context!6242 Bool)) false)))))

(declare-fun setRes!28040 () Bool)

(assert (=> start!520696 setRes!28040))

(assert (=> start!520696 true))

(declare-fun e!3090254 () Bool)

(declare-fun inv!74202 (BalanceConc!29426) Bool)

(assert (=> start!520696 (and (inv!74202 totalInput!685) e!3090254)))

(declare-fun e!3090255 () Bool)

(assert (=> start!520696 e!3090255))

(declare-fun b!4945995 () Bool)

(declare-fun e!3090246 () Bool)

(assert (=> b!4945995 (= e!3090252 e!3090246)))

(declare-fun res!2110496 () Bool)

(assert (=> b!4945995 (=> res!2110496 e!3090246)))

(declare-fun lt!2039484 () List!57095)

(declare-fun lt!2039492 () List!57095)

(assert (=> b!4945995 (= res!2110496 (not (= (++!12464 lt!2039484 lt!2039492) lt!2039482)))))

(declare-datatypes ((tuple2!61516 0))(
  ( (tuple2!61517 (_1!34061 BalanceConc!29426) (_2!34061 BalanceConc!29426)) )
))
(declare-fun lt!2039490 () tuple2!61516)

(assert (=> b!4945995 (= lt!2039492 (list!18157 (_2!34061 lt!2039490)))))

(assert (=> b!4945995 (= lt!2039484 (list!18157 (_1!34061 lt!2039490)))))

(declare-fun splitAt!392 (BalanceConc!29426 Int) tuple2!61516)

(assert (=> b!4945995 (= lt!2039490 (splitAt!392 totalInput!685 testedPSize!70))))

(declare-fun b!4945996 () Bool)

(declare-fun e!3090251 () Bool)

(assert (=> b!4945996 (= e!3090246 e!3090251)))

(declare-fun res!2110494 () Bool)

(assert (=> b!4945996 (=> res!2110494 e!3090251)))

(declare-fun apply!13807 (BalanceConc!29426 Int) C!27208)

(declare-fun head!10605 (List!57095) C!27208)

(assert (=> b!4945996 (= res!2110494 (not (= (apply!13807 totalInput!685 testedPSize!70) (head!10605 testedSuffix!70))))))

(declare-fun drop!2286 (List!57095 Int) List!57095)

(declare-fun apply!13808 (List!57095 Int) C!27208)

(assert (=> b!4945996 (= (head!10605 (drop!2286 lt!2039482 testedPSize!70)) (apply!13808 lt!2039482 testedPSize!70))))

(declare-datatypes ((Unit!147760 0))(
  ( (Unit!147761) )
))
(declare-fun lt!2039485 () Unit!147760)

(declare-fun lemmaDropApply!1340 (List!57095 Int) Unit!147760)

(assert (=> b!4945996 (= lt!2039485 (lemmaDropApply!1340 lt!2039482 testedPSize!70))))

(assert (=> b!4945996 (not (or (not (= lt!2039484 testedP!110)) (not (= lt!2039492 testedSuffix!70))))))

(declare-fun lt!2039495 () Unit!147760)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!723 (List!57095 List!57095 List!57095 List!57095) Unit!147760)

(assert (=> b!4945996 (= lt!2039495 (lemmaConcatSameAndSameSizesThenSameLists!723 lt!2039484 lt!2039492 testedP!110 testedSuffix!70))))

(declare-fun b!4945997 () Bool)

(declare-fun e!3090256 () Bool)

(declare-fun e!3090250 () Bool)

(assert (=> b!4945997 (= e!3090256 (not e!3090250))))

(declare-fun res!2110490 () Bool)

(assert (=> b!4945997 (=> res!2110490 e!3090250)))

(declare-fun isPrefix!5085 (List!57095 List!57095) Bool)

(assert (=> b!4945997 (= res!2110490 (not (isPrefix!5085 testedP!110 lt!2039482)))))

(assert (=> b!4945997 (isPrefix!5085 testedP!110 lt!2039493)))

(declare-fun lt!2039481 () Unit!147760)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3309 (List!57095 List!57095) Unit!147760)

(assert (=> b!4945997 (= lt!2039481 (lemmaConcatTwoListThenFirstIsPrefix!3309 testedP!110 testedSuffix!70))))

(declare-fun b!4945998 () Bool)

(declare-fun e!3090257 () Bool)

(declare-fun tp!1387401 () Bool)

(assert (=> b!4945998 (= e!3090257 tp!1387401)))

(declare-fun b!4945999 () Bool)

(declare-fun tp_is_empty!36155 () Bool)

(declare-fun tp!1387402 () Bool)

(assert (=> b!4945999 (= e!3090255 (and tp_is_empty!36155 tp!1387402))))

(declare-fun b!4946000 () Bool)

(declare-fun e!3090249 () Bool)

(assert (=> b!4946000 (= e!3090251 e!3090249)))

(declare-fun res!2110489 () Bool)

(assert (=> b!4946000 (=> res!2110489 e!3090249)))

(declare-fun lt!2039486 () Int)

(declare-fun lt!2039483 () Int)

(assert (=> b!4946000 (= res!2110489 (not (= lt!2039486 lt!2039483)))))

(declare-fun lt!2039488 () Int)

(assert (=> b!4946000 (<= lt!2039486 lt!2039488)))

(declare-fun size!37799 (List!57095) Int)

(assert (=> b!4946000 (= lt!2039488 (size!37799 lt!2039482))))

(declare-fun lt!2039491 () Unit!147760)

(declare-fun lemmaIsPrefixThenSmallerEqSize!740 (List!57095 List!57095) Unit!147760)

(assert (=> b!4946000 (= lt!2039491 (lemmaIsPrefixThenSmallerEqSize!740 testedP!110 lt!2039482))))

(declare-fun b!4946001 () Bool)

(declare-fun e!3090253 () Bool)

(assert (=> b!4946001 (= e!3090247 e!3090253)))

(declare-fun res!2110492 () Bool)

(assert (=> b!4946001 (=> (not res!2110492) (not e!3090253))))

(assert (=> b!4946001 (= res!2110492 (= testedPSize!70 lt!2039486))))

(assert (=> b!4946001 (= lt!2039486 (size!37799 testedP!110))))

(declare-fun b!4946002 () Bool)

(declare-fun tp!1387403 () Bool)

(assert (=> b!4946002 (= e!3090248 (and tp_is_empty!36155 tp!1387403))))

(declare-fun b!4946003 () Bool)

(assert (=> b!4946003 (= e!3090250 e!3090252)))

(declare-fun res!2110491 () Bool)

(assert (=> b!4946003 (=> res!2110491 e!3090252)))

(declare-fun lostCauseZipper!797 ((InoxSet Context!6242)) Bool)

(assert (=> b!4946003 (= res!2110491 (lostCauseZipper!797 z!3568))))

(declare-fun lt!2039494 () List!57095)

(assert (=> b!4946003 (and (= testedSuffix!70 lt!2039494) (= lt!2039494 testedSuffix!70))))

(declare-fun lt!2039489 () Unit!147760)

(declare-fun lemmaSamePrefixThenSameSuffix!2477 (List!57095 List!57095 List!57095 List!57095 List!57095) Unit!147760)

(assert (=> b!4946003 (= lt!2039489 (lemmaSamePrefixThenSameSuffix!2477 testedP!110 testedSuffix!70 testedP!110 lt!2039494 lt!2039482))))

(declare-fun getSuffix!3067 (List!57095 List!57095) List!57095)

(assert (=> b!4946003 (= lt!2039494 (getSuffix!3067 lt!2039482 testedP!110))))

(declare-fun setIsEmpty!28040 () Bool)

(assert (=> setIsEmpty!28040 setRes!28040))

(declare-fun b!4946004 () Bool)

(declare-fun tp!1387405 () Bool)

(declare-fun inv!74203 (Conc!14998) Bool)

(assert (=> b!4946004 (= e!3090254 (and (inv!74203 (c!843964 totalInput!685)) tp!1387405))))

(declare-fun b!4946005 () Bool)

(declare-fun res!2110495 () Bool)

(assert (=> b!4946005 (=> res!2110495 e!3090246)))

(declare-fun size!37800 (BalanceConc!29426) Int)

(assert (=> b!4946005 (= res!2110495 (not (= (size!37800 (_1!34061 lt!2039490)) testedPSize!70)))))

(declare-fun b!4946006 () Bool)

(assert (=> b!4946006 (= e!3090253 e!3090256)))

(declare-fun res!2110488 () Bool)

(assert (=> b!4946006 (=> (not res!2110488) (not e!3090256))))

(assert (=> b!4946006 (= res!2110488 (= totalInputSize!132 lt!2039483))))

(assert (=> b!4946006 (= lt!2039483 (size!37800 totalInput!685))))

(declare-fun b!4946007 () Bool)

(assert (=> b!4946007 (= e!3090249 (= lt!2039488 lt!2039486))))

(assert (=> b!4946007 (isPrefix!5085 lt!2039482 lt!2039482)))

(declare-fun lt!2039487 () Unit!147760)

(declare-fun lemmaIsPrefixRefl!3425 (List!57095 List!57095) Unit!147760)

(assert (=> b!4946007 (= lt!2039487 (lemmaIsPrefixRefl!3425 lt!2039482 lt!2039482))))

(declare-fun setElem!28040 () Context!6242)

(declare-fun tp!1387404 () Bool)

(declare-fun setNonEmpty!28040 () Bool)

(declare-fun inv!74204 (Context!6242) Bool)

(assert (=> setNonEmpty!28040 (= setRes!28040 (and tp!1387404 (inv!74204 setElem!28040) e!3090257))))

(declare-fun setRest!28040 () (InoxSet Context!6242))

(assert (=> setNonEmpty!28040 (= z!3568 ((_ map or) (store ((as const (Array Context!6242 Bool)) false) setElem!28040 true) setRest!28040))))

(assert (= (and start!520696 res!2110487) b!4946001))

(assert (= (and b!4946001 res!2110492) b!4946006))

(assert (= (and b!4946006 res!2110488) b!4945997))

(assert (= (and b!4945997 (not res!2110490)) b!4946003))

(assert (= (and b!4946003 (not res!2110491)) b!4945994))

(assert (= (and b!4945994 (not res!2110493)) b!4945995))

(assert (= (and b!4945995 (not res!2110496)) b!4946005))

(assert (= (and b!4946005 (not res!2110495)) b!4945996))

(assert (= (and b!4945996 (not res!2110494)) b!4946000))

(assert (= (and b!4946000 (not res!2110489)) b!4946007))

(get-info :version)

(assert (= (and start!520696 ((_ is Cons!56971) testedP!110)) b!4946002))

(assert (= (and start!520696 condSetEmpty!28040) setIsEmpty!28040))

(assert (= (and start!520696 (not condSetEmpty!28040)) setNonEmpty!28040))

(assert (= setNonEmpty!28040 b!4945998))

(assert (= start!520696 b!4946004))

(assert (= (and start!520696 ((_ is Cons!56971) testedSuffix!70)) b!4945999))

(declare-fun m!5969102 () Bool)

(assert (=> b!4945996 m!5969102))

(declare-fun m!5969104 () Bool)

(assert (=> b!4945996 m!5969104))

(declare-fun m!5969106 () Bool)

(assert (=> b!4945996 m!5969106))

(declare-fun m!5969108 () Bool)

(assert (=> b!4945996 m!5969108))

(declare-fun m!5969110 () Bool)

(assert (=> b!4945996 m!5969110))

(declare-fun m!5969112 () Bool)

(assert (=> b!4945996 m!5969112))

(assert (=> b!4945996 m!5969110))

(declare-fun m!5969114 () Bool)

(assert (=> b!4945996 m!5969114))

(declare-fun m!5969116 () Bool)

(assert (=> b!4946004 m!5969116))

(declare-fun m!5969118 () Bool)

(assert (=> b!4946007 m!5969118))

(declare-fun m!5969120 () Bool)

(assert (=> b!4946007 m!5969120))

(declare-fun m!5969122 () Bool)

(assert (=> b!4945995 m!5969122))

(declare-fun m!5969124 () Bool)

(assert (=> b!4945995 m!5969124))

(declare-fun m!5969126 () Bool)

(assert (=> b!4945995 m!5969126))

(declare-fun m!5969128 () Bool)

(assert (=> b!4945995 m!5969128))

(declare-fun m!5969130 () Bool)

(assert (=> start!520696 m!5969130))

(declare-fun m!5969132 () Bool)

(assert (=> start!520696 m!5969132))

(declare-fun m!5969134 () Bool)

(assert (=> start!520696 m!5969134))

(declare-fun m!5969136 () Bool)

(assert (=> b!4946000 m!5969136))

(declare-fun m!5969138 () Bool)

(assert (=> b!4946000 m!5969138))

(declare-fun m!5969140 () Bool)

(assert (=> b!4946005 m!5969140))

(declare-fun m!5969142 () Bool)

(assert (=> setNonEmpty!28040 m!5969142))

(declare-fun m!5969144 () Bool)

(assert (=> b!4946001 m!5969144))

(declare-fun m!5969146 () Bool)

(assert (=> b!4945997 m!5969146))

(declare-fun m!5969148 () Bool)

(assert (=> b!4945997 m!5969148))

(declare-fun m!5969150 () Bool)

(assert (=> b!4945997 m!5969150))

(declare-fun m!5969152 () Bool)

(assert (=> b!4946006 m!5969152))

(declare-fun m!5969154 () Bool)

(assert (=> b!4946003 m!5969154))

(declare-fun m!5969156 () Bool)

(assert (=> b!4946003 m!5969156))

(declare-fun m!5969158 () Bool)

(assert (=> b!4946003 m!5969158))

(check-sat (not b!4946007) (not b!4946003) (not b!4945999) (not b!4946006) (not b!4946000) (not b!4946004) (not b!4945995) (not setNonEmpty!28040) tp_is_empty!36155 (not b!4945998) (not b!4945996) (not b!4946005) (not b!4946001) (not b!4945997) (not b!4946002) (not start!520696))
(check-sat)
