; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538704 () Bool)

(assert start!538704)

(declare-fun b!5108939 () Bool)

(declare-fun e!3186435 () Bool)

(declare-fun tp_is_empty!37523 () Bool)

(declare-fun tp!1425324 () Bool)

(assert (=> b!5108939 (= e!3186435 (and tp_is_empty!37523 tp!1425324))))

(declare-fun b!5108940 () Bool)

(declare-fun res!2174620 () Bool)

(declare-fun e!3186437 () Bool)

(assert (=> b!5108940 (=> res!2174620 e!3186437)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28516 0))(
  ( (C!28517 (val!23910 Int)) )
))
(declare-datatypes ((Regex!14125 0))(
  ( (ElementMatch!14125 (c!877623 C!28516)) (Concat!22970 (regOne!28762 Regex!14125) (regTwo!28762 Regex!14125)) (EmptyExpr!14125) (Star!14125 (reg!14454 Regex!14125)) (EmptyLang!14125) (Union!14125 (regOne!28763 Regex!14125) (regTwo!28763 Regex!14125)) )
))
(declare-datatypes ((List!59124 0))(
  ( (Nil!59000) (Cons!59000 (h!65448 Regex!14125) (t!372125 List!59124)) )
))
(declare-datatypes ((Context!7018 0))(
  ( (Context!7019 (exprs!4009 List!59124)) )
))
(declare-fun z!4463 () (InoxSet Context!7018))

(declare-fun lostCauseZipper!1011 ((InoxSet Context!7018)) Bool)

(assert (=> b!5108940 (= res!2174620 (lostCauseZipper!1011 z!4463))))

(declare-fun b!5108941 () Bool)

(declare-fun e!3186432 () Bool)

(declare-fun tp!1425321 () Bool)

(assert (=> b!5108941 (= e!3186432 (and tp_is_empty!37523 tp!1425321))))

(declare-fun b!5108942 () Bool)

(declare-fun res!2174619 () Bool)

(declare-fun e!3186439 () Bool)

(assert (=> b!5108942 (=> (not res!2174619) (not e!3186439))))

(declare-fun baseZ!46 () (InoxSet Context!7018))

(declare-datatypes ((List!59125 0))(
  ( (Nil!59001) (Cons!59001 (h!65449 C!28516) (t!372126 List!59125)) )
))
(declare-fun knownP!20 () List!59125)

(declare-fun matchZipper!793 ((InoxSet Context!7018) List!59125) Bool)

(assert (=> b!5108942 (= res!2174619 (matchZipper!793 baseZ!46 knownP!20))))

(declare-fun b!5108943 () Bool)

(declare-fun e!3186436 () Bool)

(declare-fun tp!1425320 () Bool)

(assert (=> b!5108943 (= e!3186436 tp!1425320)))

(declare-fun b!5108944 () Bool)

(declare-fun e!3186434 () Bool)

(assert (=> b!5108944 (= e!3186434 e!3186439)))

(declare-fun res!2174622 () Bool)

(assert (=> b!5108944 (=> (not res!2174622) (not e!3186439))))

(declare-fun lt!2103686 () Int)

(declare-fun lt!2103680 () Int)

(assert (=> b!5108944 (= res!2174622 (>= lt!2103686 lt!2103680))))

(declare-fun testedP!265 () List!59125)

(declare-fun size!39431 (List!59125) Int)

(assert (=> b!5108944 (= lt!2103680 (size!39431 testedP!265))))

(assert (=> b!5108944 (= lt!2103686 (size!39431 knownP!20))))

(declare-fun b!5108945 () Bool)

(declare-fun lt!2103681 () Int)

(declare-fun lt!2103684 () Int)

(assert (=> b!5108945 (= e!3186437 (or (< lt!2103684 lt!2103686) (>= lt!2103681 lt!2103680)))))

(assert (=> b!5108945 (>= lt!2103684 lt!2103680)))

(declare-fun input!5745 () List!59125)

(declare-fun lt!2103679 () List!59125)

(declare-datatypes ((tuple2!63608 0))(
  ( (tuple2!63609 (_1!35107 List!59125) (_2!35107 List!59125)) )
))
(declare-fun findLongestMatchInnerZipper!185 ((InoxSet Context!7018) List!59125 Int List!59125 List!59125 Int) tuple2!63608)

(assert (=> b!5108945 (= lt!2103684 (size!39431 (_1!35107 (findLongestMatchInnerZipper!185 z!4463 testedP!265 lt!2103680 lt!2103679 input!5745 lt!2103681))))))

(assert (=> b!5108945 (= lt!2103681 (size!39431 input!5745))))

(declare-fun getSuffix!3204 (List!59125 List!59125) List!59125)

(assert (=> b!5108945 (= lt!2103679 (getSuffix!3204 input!5745 testedP!265))))

(declare-datatypes ((Unit!150083 0))(
  ( (Unit!150084) )
))
(declare-fun lt!2103683 () Unit!150083)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!10 ((InoxSet Context!7018) (InoxSet Context!7018) List!59125 List!59125) Unit!150083)

(assert (=> b!5108945 (= lt!2103683 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!10 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> b!5108945 (= testedP!265 knownP!20)))

(declare-fun lt!2103685 () Unit!150083)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1338 (List!59125 List!59125 List!59125) Unit!150083)

(assert (=> b!5108945 (= lt!2103685 (lemmaIsPrefixSameLengthThenSameList!1338 testedP!265 knownP!20 input!5745))))

(declare-fun setRes!29593 () Bool)

(declare-fun tp!1425323 () Bool)

(declare-fun setElem!29593 () Context!7018)

(declare-fun setNonEmpty!29593 () Bool)

(declare-fun inv!78493 (Context!7018) Bool)

(assert (=> setNonEmpty!29593 (= setRes!29593 (and tp!1425323 (inv!78493 setElem!29593) e!3186436))))

(declare-fun setRest!29594 () (InoxSet Context!7018))

(assert (=> setNonEmpty!29593 (= z!4463 ((_ map or) (store ((as const (Array Context!7018 Bool)) false) setElem!29593 true) setRest!29594))))

(declare-fun setIsEmpty!29593 () Bool)

(declare-fun setRes!29594 () Bool)

(assert (=> setIsEmpty!29593 setRes!29594))

(declare-fun b!5108946 () Bool)

(declare-fun res!2174626 () Bool)

(assert (=> b!5108946 (=> res!2174626 e!3186437)))

(declare-fun derivationZipper!24 ((InoxSet Context!7018) List!59125) (InoxSet Context!7018))

(assert (=> b!5108946 (= res!2174626 (not (= (derivationZipper!24 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5108948 () Bool)

(assert (=> b!5108948 (= e!3186439 (not e!3186437))))

(declare-fun res!2174621 () Bool)

(assert (=> b!5108948 (=> res!2174621 e!3186437)))

(assert (=> b!5108948 (= res!2174621 (not (matchZipper!793 z!4463 (getSuffix!3204 knownP!20 testedP!265))))))

(declare-fun isPrefix!5530 (List!59125 List!59125) Bool)

(assert (=> b!5108948 (isPrefix!5530 testedP!265 knownP!20)))

(declare-fun lt!2103682 () Unit!150083)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!667 (List!59125 List!59125 List!59125) Unit!150083)

(assert (=> b!5108948 (= lt!2103682 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!667 knownP!20 testedP!265 input!5745))))

(declare-fun setElem!29594 () Context!7018)

(declare-fun setNonEmpty!29594 () Bool)

(declare-fun tp!1425325 () Bool)

(declare-fun e!3186433 () Bool)

(assert (=> setNonEmpty!29594 (= setRes!29594 (and tp!1425325 (inv!78493 setElem!29594) e!3186433))))

(declare-fun setRest!29593 () (InoxSet Context!7018))

(assert (=> setNonEmpty!29594 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7018 Bool)) false) setElem!29594 true) setRest!29593))))

(declare-fun b!5108949 () Bool)

(declare-fun e!3186438 () Bool)

(declare-fun tp!1425319 () Bool)

(assert (=> b!5108949 (= e!3186438 (and tp_is_empty!37523 tp!1425319))))

(declare-fun b!5108950 () Bool)

(declare-fun res!2174624 () Bool)

(assert (=> b!5108950 (=> res!2174624 e!3186437)))

(assert (=> b!5108950 (= res!2174624 (not (= lt!2103680 lt!2103686)))))

(declare-fun b!5108951 () Bool)

(declare-fun tp!1425322 () Bool)

(assert (=> b!5108951 (= e!3186433 tp!1425322)))

(declare-fun setIsEmpty!29594 () Bool)

(assert (=> setIsEmpty!29594 setRes!29593))

(declare-fun b!5108947 () Bool)

(declare-fun res!2174623 () Bool)

(assert (=> b!5108947 (=> (not res!2174623) (not e!3186434))))

(assert (=> b!5108947 (= res!2174623 (isPrefix!5530 knownP!20 input!5745))))

(declare-fun res!2174625 () Bool)

(assert (=> start!538704 (=> (not res!2174625) (not e!3186434))))

(assert (=> start!538704 (= res!2174625 (isPrefix!5530 testedP!265 input!5745))))

(assert (=> start!538704 e!3186434))

(assert (=> start!538704 e!3186432))

(declare-fun condSetEmpty!29593 () Bool)

(assert (=> start!538704 (= condSetEmpty!29593 (= z!4463 ((as const (Array Context!7018 Bool)) false)))))

(assert (=> start!538704 setRes!29593))

(assert (=> start!538704 e!3186438))

(declare-fun condSetEmpty!29594 () Bool)

(assert (=> start!538704 (= condSetEmpty!29594 (= baseZ!46 ((as const (Array Context!7018 Bool)) false)))))

(assert (=> start!538704 setRes!29594))

(assert (=> start!538704 e!3186435))

(assert (= (and start!538704 res!2174625) b!5108947))

(assert (= (and b!5108947 res!2174623) b!5108944))

(assert (= (and b!5108944 res!2174622) b!5108942))

(assert (= (and b!5108942 res!2174619) b!5108948))

(assert (= (and b!5108948 (not res!2174621)) b!5108946))

(assert (= (and b!5108946 (not res!2174626)) b!5108940))

(assert (= (and b!5108940 (not res!2174620)) b!5108950))

(assert (= (and b!5108950 (not res!2174624)) b!5108945))

(get-info :version)

(assert (= (and start!538704 ((_ is Cons!59001) input!5745)) b!5108941))

(assert (= (and start!538704 condSetEmpty!29593) setIsEmpty!29594))

(assert (= (and start!538704 (not condSetEmpty!29593)) setNonEmpty!29593))

(assert (= setNonEmpty!29593 b!5108943))

(assert (= (and start!538704 ((_ is Cons!59001) testedP!265)) b!5108949))

(assert (= (and start!538704 condSetEmpty!29594) setIsEmpty!29593))

(assert (= (and start!538704 (not condSetEmpty!29594)) setNonEmpty!29594))

(assert (= setNonEmpty!29594 b!5108951))

(assert (= (and start!538704 ((_ is Cons!59001) knownP!20)) b!5108939))

(declare-fun m!6166096 () Bool)

(assert (=> setNonEmpty!29593 m!6166096))

(declare-fun m!6166098 () Bool)

(assert (=> b!5108945 m!6166098))

(declare-fun m!6166100 () Bool)

(assert (=> b!5108945 m!6166100))

(declare-fun m!6166102 () Bool)

(assert (=> b!5108945 m!6166102))

(declare-fun m!6166104 () Bool)

(assert (=> b!5108945 m!6166104))

(declare-fun m!6166106 () Bool)

(assert (=> b!5108945 m!6166106))

(declare-fun m!6166108 () Bool)

(assert (=> b!5108945 m!6166108))

(declare-fun m!6166110 () Bool)

(assert (=> b!5108946 m!6166110))

(declare-fun m!6166112 () Bool)

(assert (=> start!538704 m!6166112))

(declare-fun m!6166114 () Bool)

(assert (=> b!5108940 m!6166114))

(declare-fun m!6166116 () Bool)

(assert (=> setNonEmpty!29594 m!6166116))

(declare-fun m!6166118 () Bool)

(assert (=> b!5108942 m!6166118))

(declare-fun m!6166120 () Bool)

(assert (=> b!5108944 m!6166120))

(declare-fun m!6166122 () Bool)

(assert (=> b!5108944 m!6166122))

(declare-fun m!6166124 () Bool)

(assert (=> b!5108947 m!6166124))

(declare-fun m!6166126 () Bool)

(assert (=> b!5108948 m!6166126))

(assert (=> b!5108948 m!6166126))

(declare-fun m!6166128 () Bool)

(assert (=> b!5108948 m!6166128))

(declare-fun m!6166130 () Bool)

(assert (=> b!5108948 m!6166130))

(declare-fun m!6166132 () Bool)

(assert (=> b!5108948 m!6166132))

(check-sat (not b!5108946) (not b!5108944) (not b!5108951) (not b!5108940) (not b!5108949) (not setNonEmpty!29594) (not start!538704) (not setNonEmpty!29593) (not b!5108942) (not b!5108941) (not b!5108943) (not b!5108945) (not b!5108948) (not b!5108947) tp_is_empty!37523 (not b!5108939))
(check-sat)
(get-model)

(declare-fun d!1651110 () Bool)

(declare-fun lambda!250093 () Int)

(declare-fun forall!13514 (List!59124 Int) Bool)

(assert (=> d!1651110 (= (inv!78493 setElem!29594) (forall!13514 (exprs!4009 setElem!29594) lambda!250093))))

(declare-fun bs!1191734 () Bool)

(assert (= bs!1191734 d!1651110))

(declare-fun m!6166144 () Bool)

(assert (=> bs!1191734 m!6166144))

(assert (=> setNonEmpty!29594 d!1651110))

(declare-fun bs!1191735 () Bool)

(declare-fun d!1651116 () Bool)

(assert (= bs!1191735 (and d!1651116 d!1651110)))

(declare-fun lambda!250094 () Int)

(assert (=> bs!1191735 (= lambda!250094 lambda!250093)))

(assert (=> d!1651116 (= (inv!78493 setElem!29593) (forall!13514 (exprs!4009 setElem!29593) lambda!250094))))

(declare-fun bs!1191736 () Bool)

(assert (= bs!1191736 d!1651116))

(declare-fun m!6166146 () Bool)

(assert (=> bs!1191736 m!6166146))

(assert (=> setNonEmpty!29593 d!1651116))

(declare-fun d!1651118 () Bool)

(declare-fun c!877626 () Bool)

(declare-fun isEmpty!31843 (List!59125) Bool)

(assert (=> d!1651118 (= c!877626 (isEmpty!31843 knownP!20))))

(declare-fun e!3186451 () Bool)

(assert (=> d!1651118 (= (matchZipper!793 baseZ!46 knownP!20) e!3186451)))

(declare-fun b!5108968 () Bool)

(declare-fun nullableZipper!981 ((InoxSet Context!7018)) Bool)

(assert (=> b!5108968 (= e!3186451 (nullableZipper!981 baseZ!46))))

(declare-fun b!5108969 () Bool)

(declare-fun derivationStepZipper!769 ((InoxSet Context!7018) C!28516) (InoxSet Context!7018))

(declare-fun head!10858 (List!59125) C!28516)

(declare-fun tail!10013 (List!59125) List!59125)

(assert (=> b!5108969 (= e!3186451 (matchZipper!793 (derivationStepZipper!769 baseZ!46 (head!10858 knownP!20)) (tail!10013 knownP!20)))))

(assert (= (and d!1651118 c!877626) b!5108968))

(assert (= (and d!1651118 (not c!877626)) b!5108969))

(declare-fun m!6166148 () Bool)

(assert (=> d!1651118 m!6166148))

(declare-fun m!6166150 () Bool)

(assert (=> b!5108968 m!6166150))

(declare-fun m!6166152 () Bool)

(assert (=> b!5108969 m!6166152))

(assert (=> b!5108969 m!6166152))

(declare-fun m!6166154 () Bool)

(assert (=> b!5108969 m!6166154))

(declare-fun m!6166156 () Bool)

(assert (=> b!5108969 m!6166156))

(assert (=> b!5108969 m!6166154))

(assert (=> b!5108969 m!6166156))

(declare-fun m!6166158 () Bool)

(assert (=> b!5108969 m!6166158))

(assert (=> b!5108942 d!1651118))

(declare-fun d!1651120 () Bool)

(declare-fun c!877629 () Bool)

(assert (=> d!1651120 (= c!877629 ((_ is Cons!59001) testedP!265))))

(declare-fun e!3186454 () (InoxSet Context!7018))

(assert (=> d!1651120 (= (derivationZipper!24 baseZ!46 testedP!265) e!3186454)))

(declare-fun b!5108974 () Bool)

(assert (=> b!5108974 (= e!3186454 (derivationZipper!24 (derivationStepZipper!769 baseZ!46 (h!65449 testedP!265)) (t!372126 testedP!265)))))

(declare-fun b!5108975 () Bool)

(assert (=> b!5108975 (= e!3186454 baseZ!46)))

(assert (= (and d!1651120 c!877629) b!5108974))

(assert (= (and d!1651120 (not c!877629)) b!5108975))

(declare-fun m!6166160 () Bool)

(assert (=> b!5108974 m!6166160))

(assert (=> b!5108974 m!6166160))

(declare-fun m!6166162 () Bool)

(assert (=> b!5108974 m!6166162))

(assert (=> b!5108946 d!1651120))

(declare-fun b!5108984 () Bool)

(declare-fun e!3186463 () Bool)

(declare-fun e!3186462 () Bool)

(assert (=> b!5108984 (= e!3186463 e!3186462)))

(declare-fun res!2174647 () Bool)

(assert (=> b!5108984 (=> (not res!2174647) (not e!3186462))))

(assert (=> b!5108984 (= res!2174647 (not ((_ is Nil!59001) input!5745)))))

(declare-fun b!5108985 () Bool)

(declare-fun res!2174648 () Bool)

(assert (=> b!5108985 (=> (not res!2174648) (not e!3186462))))

(assert (=> b!5108985 (= res!2174648 (= (head!10858 knownP!20) (head!10858 input!5745)))))

(declare-fun d!1651122 () Bool)

(declare-fun e!3186461 () Bool)

(assert (=> d!1651122 e!3186461))

(declare-fun res!2174650 () Bool)

(assert (=> d!1651122 (=> res!2174650 e!3186461)))

(declare-fun lt!2103692 () Bool)

(assert (=> d!1651122 (= res!2174650 (not lt!2103692))))

(assert (=> d!1651122 (= lt!2103692 e!3186463)))

(declare-fun res!2174649 () Bool)

(assert (=> d!1651122 (=> res!2174649 e!3186463)))

(assert (=> d!1651122 (= res!2174649 ((_ is Nil!59001) knownP!20))))

(assert (=> d!1651122 (= (isPrefix!5530 knownP!20 input!5745) lt!2103692)))

(declare-fun b!5108987 () Bool)

(assert (=> b!5108987 (= e!3186461 (>= (size!39431 input!5745) (size!39431 knownP!20)))))

(declare-fun b!5108986 () Bool)

(assert (=> b!5108986 (= e!3186462 (isPrefix!5530 (tail!10013 knownP!20) (tail!10013 input!5745)))))

(assert (= (and d!1651122 (not res!2174649)) b!5108984))

(assert (= (and b!5108984 res!2174647) b!5108985))

(assert (= (and b!5108985 res!2174648) b!5108986))

(assert (= (and d!1651122 (not res!2174650)) b!5108987))

(assert (=> b!5108985 m!6166152))

(declare-fun m!6166164 () Bool)

(assert (=> b!5108985 m!6166164))

(assert (=> b!5108987 m!6166100))

(assert (=> b!5108987 m!6166122))

(assert (=> b!5108986 m!6166156))

(declare-fun m!6166166 () Bool)

(assert (=> b!5108986 m!6166166))

(assert (=> b!5108986 m!6166156))

(assert (=> b!5108986 m!6166166))

(declare-fun m!6166168 () Bool)

(assert (=> b!5108986 m!6166168))

(assert (=> b!5108947 d!1651122))

(declare-fun d!1651124 () Bool)

(declare-fun lt!2103695 () Int)

(assert (=> d!1651124 (>= lt!2103695 0)))

(declare-fun e!3186466 () Int)

(assert (=> d!1651124 (= lt!2103695 e!3186466)))

(declare-fun c!877632 () Bool)

(assert (=> d!1651124 (= c!877632 ((_ is Nil!59001) testedP!265))))

(assert (=> d!1651124 (= (size!39431 testedP!265) lt!2103695)))

(declare-fun b!5108992 () Bool)

(assert (=> b!5108992 (= e!3186466 0)))

(declare-fun b!5108993 () Bool)

(assert (=> b!5108993 (= e!3186466 (+ 1 (size!39431 (t!372126 testedP!265))))))

(assert (= (and d!1651124 c!877632) b!5108992))

(assert (= (and d!1651124 (not c!877632)) b!5108993))

(declare-fun m!6166170 () Bool)

(assert (=> b!5108993 m!6166170))

(assert (=> b!5108944 d!1651124))

(declare-fun d!1651126 () Bool)

(declare-fun lt!2103696 () Int)

(assert (=> d!1651126 (>= lt!2103696 0)))

(declare-fun e!3186467 () Int)

(assert (=> d!1651126 (= lt!2103696 e!3186467)))

(declare-fun c!877633 () Bool)

(assert (=> d!1651126 (= c!877633 ((_ is Nil!59001) knownP!20))))

(assert (=> d!1651126 (= (size!39431 knownP!20) lt!2103696)))

(declare-fun b!5108994 () Bool)

(assert (=> b!5108994 (= e!3186467 0)))

(declare-fun b!5108995 () Bool)

(assert (=> b!5108995 (= e!3186467 (+ 1 (size!39431 (t!372126 knownP!20))))))

(assert (= (and d!1651126 c!877633) b!5108994))

(assert (= (and d!1651126 (not c!877633)) b!5108995))

(declare-fun m!6166172 () Bool)

(assert (=> b!5108995 m!6166172))

(assert (=> b!5108944 d!1651126))

(declare-fun d!1651128 () Bool)

(declare-fun c!877634 () Bool)

(assert (=> d!1651128 (= c!877634 (isEmpty!31843 (getSuffix!3204 knownP!20 testedP!265)))))

(declare-fun e!3186468 () Bool)

(assert (=> d!1651128 (= (matchZipper!793 z!4463 (getSuffix!3204 knownP!20 testedP!265)) e!3186468)))

(declare-fun b!5108996 () Bool)

(assert (=> b!5108996 (= e!3186468 (nullableZipper!981 z!4463))))

(declare-fun b!5108997 () Bool)

(assert (=> b!5108997 (= e!3186468 (matchZipper!793 (derivationStepZipper!769 z!4463 (head!10858 (getSuffix!3204 knownP!20 testedP!265))) (tail!10013 (getSuffix!3204 knownP!20 testedP!265))))))

(assert (= (and d!1651128 c!877634) b!5108996))

(assert (= (and d!1651128 (not c!877634)) b!5108997))

(assert (=> d!1651128 m!6166126))

(declare-fun m!6166174 () Bool)

(assert (=> d!1651128 m!6166174))

(declare-fun m!6166176 () Bool)

(assert (=> b!5108996 m!6166176))

(assert (=> b!5108997 m!6166126))

(declare-fun m!6166178 () Bool)

(assert (=> b!5108997 m!6166178))

(assert (=> b!5108997 m!6166178))

(declare-fun m!6166180 () Bool)

(assert (=> b!5108997 m!6166180))

(assert (=> b!5108997 m!6166126))

(declare-fun m!6166182 () Bool)

(assert (=> b!5108997 m!6166182))

(assert (=> b!5108997 m!6166180))

(assert (=> b!5108997 m!6166182))

(declare-fun m!6166184 () Bool)

(assert (=> b!5108997 m!6166184))

(assert (=> b!5108948 d!1651128))

(declare-fun d!1651130 () Bool)

(declare-fun lt!2103699 () List!59125)

(declare-fun ++!12953 (List!59125 List!59125) List!59125)

(assert (=> d!1651130 (= (++!12953 testedP!265 lt!2103699) knownP!20)))

(declare-fun e!3186471 () List!59125)

(assert (=> d!1651130 (= lt!2103699 e!3186471)))

(declare-fun c!877637 () Bool)

(assert (=> d!1651130 (= c!877637 ((_ is Cons!59001) testedP!265))))

(assert (=> d!1651130 (>= (size!39431 knownP!20) (size!39431 testedP!265))))

(assert (=> d!1651130 (= (getSuffix!3204 knownP!20 testedP!265) lt!2103699)))

(declare-fun b!5109002 () Bool)

(assert (=> b!5109002 (= e!3186471 (getSuffix!3204 (tail!10013 knownP!20) (t!372126 testedP!265)))))

(declare-fun b!5109003 () Bool)

(assert (=> b!5109003 (= e!3186471 knownP!20)))

(assert (= (and d!1651130 c!877637) b!5109002))

(assert (= (and d!1651130 (not c!877637)) b!5109003))

(declare-fun m!6166186 () Bool)

(assert (=> d!1651130 m!6166186))

(assert (=> d!1651130 m!6166122))

(assert (=> d!1651130 m!6166120))

(assert (=> b!5109002 m!6166156))

(assert (=> b!5109002 m!6166156))

(declare-fun m!6166188 () Bool)

(assert (=> b!5109002 m!6166188))

(assert (=> b!5108948 d!1651130))

(declare-fun b!5109004 () Bool)

(declare-fun e!3186474 () Bool)

(declare-fun e!3186473 () Bool)

(assert (=> b!5109004 (= e!3186474 e!3186473)))

(declare-fun res!2174651 () Bool)

(assert (=> b!5109004 (=> (not res!2174651) (not e!3186473))))

(assert (=> b!5109004 (= res!2174651 (not ((_ is Nil!59001) knownP!20)))))

(declare-fun b!5109005 () Bool)

(declare-fun res!2174652 () Bool)

(assert (=> b!5109005 (=> (not res!2174652) (not e!3186473))))

(assert (=> b!5109005 (= res!2174652 (= (head!10858 testedP!265) (head!10858 knownP!20)))))

(declare-fun d!1651132 () Bool)

(declare-fun e!3186472 () Bool)

(assert (=> d!1651132 e!3186472))

(declare-fun res!2174654 () Bool)

(assert (=> d!1651132 (=> res!2174654 e!3186472)))

(declare-fun lt!2103700 () Bool)

(assert (=> d!1651132 (= res!2174654 (not lt!2103700))))

(assert (=> d!1651132 (= lt!2103700 e!3186474)))

(declare-fun res!2174653 () Bool)

(assert (=> d!1651132 (=> res!2174653 e!3186474)))

(assert (=> d!1651132 (= res!2174653 ((_ is Nil!59001) testedP!265))))

(assert (=> d!1651132 (= (isPrefix!5530 testedP!265 knownP!20) lt!2103700)))

(declare-fun b!5109007 () Bool)

(assert (=> b!5109007 (= e!3186472 (>= (size!39431 knownP!20) (size!39431 testedP!265)))))

(declare-fun b!5109006 () Bool)

(assert (=> b!5109006 (= e!3186473 (isPrefix!5530 (tail!10013 testedP!265) (tail!10013 knownP!20)))))

(assert (= (and d!1651132 (not res!2174653)) b!5109004))

(assert (= (and b!5109004 res!2174651) b!5109005))

(assert (= (and b!5109005 res!2174652) b!5109006))

(assert (= (and d!1651132 (not res!2174654)) b!5109007))

(declare-fun m!6166190 () Bool)

(assert (=> b!5109005 m!6166190))

(assert (=> b!5109005 m!6166152))

(assert (=> b!5109007 m!6166122))

(assert (=> b!5109007 m!6166120))

(declare-fun m!6166192 () Bool)

(assert (=> b!5109006 m!6166192))

(assert (=> b!5109006 m!6166156))

(assert (=> b!5109006 m!6166192))

(assert (=> b!5109006 m!6166156))

(declare-fun m!6166194 () Bool)

(assert (=> b!5109006 m!6166194))

(assert (=> b!5108948 d!1651132))

(declare-fun d!1651134 () Bool)

(assert (=> d!1651134 (isPrefix!5530 testedP!265 knownP!20)))

(declare-fun lt!2103703 () Unit!150083)

(declare-fun choose!37431 (List!59125 List!59125 List!59125) Unit!150083)

(assert (=> d!1651134 (= lt!2103703 (choose!37431 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651134 (isPrefix!5530 knownP!20 input!5745)))

(assert (=> d!1651134 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!667 knownP!20 testedP!265 input!5745) lt!2103703)))

(declare-fun bs!1191737 () Bool)

(assert (= bs!1191737 d!1651134))

(assert (=> bs!1191737 m!6166130))

(declare-fun m!6166196 () Bool)

(assert (=> bs!1191737 m!6166196))

(assert (=> bs!1191737 m!6166124))

(assert (=> b!5108948 d!1651134))

(declare-fun d!1651136 () Bool)

(declare-fun lt!2103704 () List!59125)

(assert (=> d!1651136 (= (++!12953 testedP!265 lt!2103704) input!5745)))

(declare-fun e!3186475 () List!59125)

(assert (=> d!1651136 (= lt!2103704 e!3186475)))

(declare-fun c!877638 () Bool)

(assert (=> d!1651136 (= c!877638 ((_ is Cons!59001) testedP!265))))

(assert (=> d!1651136 (>= (size!39431 input!5745) (size!39431 testedP!265))))

(assert (=> d!1651136 (= (getSuffix!3204 input!5745 testedP!265) lt!2103704)))

(declare-fun b!5109008 () Bool)

(assert (=> b!5109008 (= e!3186475 (getSuffix!3204 (tail!10013 input!5745) (t!372126 testedP!265)))))

(declare-fun b!5109009 () Bool)

(assert (=> b!5109009 (= e!3186475 input!5745)))

(assert (= (and d!1651136 c!877638) b!5109008))

(assert (= (and d!1651136 (not c!877638)) b!5109009))

(declare-fun m!6166198 () Bool)

(assert (=> d!1651136 m!6166198))

(assert (=> d!1651136 m!6166100))

(assert (=> d!1651136 m!6166120))

(assert (=> b!5109008 m!6166166))

(assert (=> b!5109008 m!6166166))

(declare-fun m!6166200 () Bool)

(assert (=> b!5109008 m!6166200))

(assert (=> b!5108945 d!1651136))

(declare-fun d!1651138 () Bool)

(assert (=> d!1651138 (>= (size!39431 (_1!35107 (findLongestMatchInnerZipper!185 z!4463 testedP!265 (size!39431 testedP!265) (getSuffix!3204 input!5745 testedP!265) input!5745 (size!39431 input!5745)))) (size!39431 testedP!265))))

(declare-fun lt!2103707 () Unit!150083)

(declare-fun choose!37432 ((InoxSet Context!7018) (InoxSet Context!7018) List!59125 List!59125) Unit!150083)

(assert (=> d!1651138 (= lt!2103707 (choose!37432 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> d!1651138 (isPrefix!5530 testedP!265 input!5745)))

(assert (=> d!1651138 (= (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!10 baseZ!46 z!4463 input!5745 testedP!265) lt!2103707)))

(declare-fun bs!1191738 () Bool)

(assert (= bs!1191738 d!1651138))

(assert (=> bs!1191738 m!6166100))

(declare-fun m!6166202 () Bool)

(assert (=> bs!1191738 m!6166202))

(assert (=> bs!1191738 m!6166120))

(assert (=> bs!1191738 m!6166098))

(assert (=> bs!1191738 m!6166100))

(declare-fun m!6166204 () Bool)

(assert (=> bs!1191738 m!6166204))

(assert (=> bs!1191738 m!6166098))

(assert (=> bs!1191738 m!6166112))

(assert (=> bs!1191738 m!6166120))

(declare-fun m!6166206 () Bool)

(assert (=> bs!1191738 m!6166206))

(assert (=> b!5108945 d!1651138))

(declare-fun d!1651140 () Bool)

(declare-fun lt!2103708 () Int)

(assert (=> d!1651140 (>= lt!2103708 0)))

(declare-fun e!3186476 () Int)

(assert (=> d!1651140 (= lt!2103708 e!3186476)))

(declare-fun c!877639 () Bool)

(assert (=> d!1651140 (= c!877639 ((_ is Nil!59001) (_1!35107 (findLongestMatchInnerZipper!185 z!4463 testedP!265 lt!2103680 lt!2103679 input!5745 lt!2103681))))))

(assert (=> d!1651140 (= (size!39431 (_1!35107 (findLongestMatchInnerZipper!185 z!4463 testedP!265 lt!2103680 lt!2103679 input!5745 lt!2103681))) lt!2103708)))

(declare-fun b!5109010 () Bool)

(assert (=> b!5109010 (= e!3186476 0)))

(declare-fun b!5109011 () Bool)

(assert (=> b!5109011 (= e!3186476 (+ 1 (size!39431 (t!372126 (_1!35107 (findLongestMatchInnerZipper!185 z!4463 testedP!265 lt!2103680 lt!2103679 input!5745 lt!2103681))))))))

(assert (= (and d!1651140 c!877639) b!5109010))

(assert (= (and d!1651140 (not c!877639)) b!5109011))

(declare-fun m!6166208 () Bool)

(assert (=> b!5109011 m!6166208))

(assert (=> b!5108945 d!1651140))

(declare-fun b!5109082 () Bool)

(declare-fun e!3186523 () Unit!150083)

(declare-fun Unit!150085 () Unit!150083)

(assert (=> b!5109082 (= e!3186523 Unit!150085)))

(declare-fun b!5109083 () Bool)

(declare-fun e!3186525 () tuple2!63608)

(declare-fun e!3186524 () tuple2!63608)

(assert (=> b!5109083 (= e!3186525 e!3186524)))

(declare-fun c!877682 () Bool)

(assert (=> b!5109083 (= c!877682 (= lt!2103680 lt!2103681))))

(declare-fun b!5109084 () Bool)

(declare-fun e!3186521 () tuple2!63608)

(declare-fun e!3186519 () tuple2!63608)

(assert (=> b!5109084 (= e!3186521 e!3186519)))

(declare-fun lt!2103805 () tuple2!63608)

(declare-fun call!356258 () tuple2!63608)

(assert (=> b!5109084 (= lt!2103805 call!356258)))

(declare-fun c!877684 () Bool)

(assert (=> b!5109084 (= c!877684 (isEmpty!31843 (_1!35107 lt!2103805)))))

(declare-fun bm!356251 () Bool)

(declare-fun call!356257 () Bool)

(assert (=> bm!356251 (= call!356257 (isPrefix!5530 input!5745 input!5745))))

(declare-fun bm!356252 () Bool)

(declare-fun call!356261 () Unit!150083)

(assert (=> bm!356252 (= call!356261 (lemmaIsPrefixSameLengthThenSameList!1338 input!5745 testedP!265 input!5745))))

(declare-fun bm!356253 () Bool)

(declare-fun call!356262 () Bool)

(assert (=> bm!356253 (= call!356262 (nullableZipper!981 z!4463))))

(declare-fun b!5109085 () Bool)

(declare-fun e!3186522 () tuple2!63608)

(assert (=> b!5109085 (= e!3186522 (tuple2!63609 Nil!59001 input!5745))))

(declare-fun b!5109086 () Bool)

(assert (=> b!5109086 (= e!3186519 lt!2103805)))

(declare-fun bm!356254 () Bool)

(declare-fun call!356259 () List!59125)

(assert (=> bm!356254 (= call!356259 (tail!10013 lt!2103679))))

(declare-fun bm!356255 () Bool)

(declare-fun call!356260 () C!28516)

(assert (=> bm!356255 (= call!356260 (head!10858 lt!2103679))))

(declare-fun bm!356256 () Bool)

(declare-fun call!356256 () (InoxSet Context!7018))

(assert (=> bm!356256 (= call!356256 (derivationStepZipper!769 z!4463 call!356260))))

(declare-fun bm!356257 () Bool)

(declare-fun call!356263 () Unit!150083)

(declare-fun lemmaIsPrefixRefl!3701 (List!59125 List!59125) Unit!150083)

(assert (=> bm!356257 (= call!356263 (lemmaIsPrefixRefl!3701 input!5745 input!5745))))

(declare-fun b!5109087 () Bool)

(assert (=> b!5109087 (= e!3186522 (tuple2!63609 testedP!265 Nil!59001))))

(declare-fun b!5109088 () Bool)

(declare-fun c!877680 () Bool)

(assert (=> b!5109088 (= c!877680 call!356262)))

(declare-fun lt!2103820 () Unit!150083)

(declare-fun lt!2103806 () Unit!150083)

(assert (=> b!5109088 (= lt!2103820 lt!2103806)))

(assert (=> b!5109088 (= input!5745 testedP!265)))

(assert (=> b!5109088 (= lt!2103806 call!356261)))

(declare-fun lt!2103816 () Unit!150083)

(declare-fun lt!2103810 () Unit!150083)

(assert (=> b!5109088 (= lt!2103816 lt!2103810)))

(assert (=> b!5109088 call!356257))

(assert (=> b!5109088 (= lt!2103810 call!356263)))

(assert (=> b!5109088 (= e!3186524 e!3186522)))

(declare-fun b!5109089 () Bool)

(declare-fun e!3186526 () Bool)

(declare-fun e!3186520 () Bool)

(assert (=> b!5109089 (= e!3186526 e!3186520)))

(declare-fun res!2174664 () Bool)

(assert (=> b!5109089 (=> res!2174664 e!3186520)))

(declare-fun lt!2103824 () tuple2!63608)

(assert (=> b!5109089 (= res!2174664 (isEmpty!31843 (_1!35107 lt!2103824)))))

(declare-fun b!5109090 () Bool)

(assert (=> b!5109090 (= e!3186520 (>= (size!39431 (_1!35107 lt!2103824)) (size!39431 testedP!265)))))

(declare-fun b!5109091 () Bool)

(assert (=> b!5109091 (= e!3186521 call!356258)))

(declare-fun b!5109092 () Bool)

(assert (=> b!5109092 (= e!3186525 (tuple2!63609 Nil!59001 input!5745))))

(declare-fun lt!2103807 () List!59125)

(declare-fun bm!356258 () Bool)

(assert (=> bm!356258 (= call!356258 (findLongestMatchInnerZipper!185 call!356256 lt!2103807 (+ lt!2103680 1) call!356259 input!5745 lt!2103681))))

(declare-fun d!1651142 () Bool)

(assert (=> d!1651142 e!3186526))

(declare-fun res!2174663 () Bool)

(assert (=> d!1651142 (=> (not res!2174663) (not e!3186526))))

(assert (=> d!1651142 (= res!2174663 (= (++!12953 (_1!35107 lt!2103824) (_2!35107 lt!2103824)) input!5745))))

(assert (=> d!1651142 (= lt!2103824 e!3186525)))

(declare-fun c!877681 () Bool)

(assert (=> d!1651142 (= c!877681 (lostCauseZipper!1011 z!4463))))

(declare-fun lt!2103817 () Unit!150083)

(declare-fun Unit!150086 () Unit!150083)

(assert (=> d!1651142 (= lt!2103817 Unit!150086)))

(assert (=> d!1651142 (= (getSuffix!3204 input!5745 testedP!265) lt!2103679)))

(declare-fun lt!2103815 () Unit!150083)

(declare-fun lt!2103827 () Unit!150083)

(assert (=> d!1651142 (= lt!2103815 lt!2103827)))

(declare-fun lt!2103818 () List!59125)

(assert (=> d!1651142 (= lt!2103679 lt!2103818)))

(declare-fun lemmaSamePrefixThenSameSuffix!2603 (List!59125 List!59125 List!59125 List!59125 List!59125) Unit!150083)

(assert (=> d!1651142 (= lt!2103827 (lemmaSamePrefixThenSameSuffix!2603 testedP!265 lt!2103679 testedP!265 lt!2103818 input!5745))))

(assert (=> d!1651142 (= lt!2103818 (getSuffix!3204 input!5745 testedP!265))))

(declare-fun lt!2103809 () Unit!150083)

(declare-fun lt!2103825 () Unit!150083)

(assert (=> d!1651142 (= lt!2103809 lt!2103825)))

(assert (=> d!1651142 (isPrefix!5530 testedP!265 (++!12953 testedP!265 lt!2103679))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3553 (List!59125 List!59125) Unit!150083)

(assert (=> d!1651142 (= lt!2103825 (lemmaConcatTwoListThenFirstIsPrefix!3553 testedP!265 lt!2103679))))

(assert (=> d!1651142 (= (++!12953 testedP!265 lt!2103679) input!5745)))

(assert (=> d!1651142 (= (findLongestMatchInnerZipper!185 z!4463 testedP!265 lt!2103680 lt!2103679 input!5745 lt!2103681) lt!2103824)))

(declare-fun b!5109093 () Bool)

(assert (=> b!5109093 (= e!3186519 (tuple2!63609 testedP!265 lt!2103679))))

(declare-fun b!5109094 () Bool)

(declare-fun c!877679 () Bool)

(assert (=> b!5109094 (= c!877679 call!356262)))

(declare-fun lt!2103804 () Unit!150083)

(declare-fun lt!2103819 () Unit!150083)

(assert (=> b!5109094 (= lt!2103804 lt!2103819)))

(declare-fun lt!2103811 () C!28516)

(declare-fun lt!2103829 () List!59125)

(assert (=> b!5109094 (= (++!12953 (++!12953 testedP!265 (Cons!59001 lt!2103811 Nil!59001)) lt!2103829) input!5745)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1540 (List!59125 C!28516 List!59125 List!59125) Unit!150083)

(assert (=> b!5109094 (= lt!2103819 (lemmaMoveElementToOtherListKeepsConcatEq!1540 testedP!265 lt!2103811 lt!2103829 input!5745))))

(assert (=> b!5109094 (= lt!2103829 (tail!10013 lt!2103679))))

(assert (=> b!5109094 (= lt!2103811 (head!10858 lt!2103679))))

(declare-fun lt!2103812 () Unit!150083)

(declare-fun lt!2103813 () Unit!150083)

(assert (=> b!5109094 (= lt!2103812 lt!2103813)))

(assert (=> b!5109094 (isPrefix!5530 (++!12953 testedP!265 (Cons!59001 (head!10858 (getSuffix!3204 input!5745 testedP!265)) Nil!59001)) input!5745)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!929 (List!59125 List!59125) Unit!150083)

(assert (=> b!5109094 (= lt!2103813 (lemmaAddHeadSuffixToPrefixStillPrefix!929 testedP!265 input!5745))))

(assert (=> b!5109094 (= lt!2103807 (++!12953 testedP!265 (Cons!59001 (head!10858 lt!2103679) Nil!59001)))))

(declare-fun lt!2103828 () Unit!150083)

(assert (=> b!5109094 (= lt!2103828 e!3186523)))

(declare-fun c!877683 () Bool)

(assert (=> b!5109094 (= c!877683 (= (size!39431 testedP!265) (size!39431 input!5745)))))

(declare-fun lt!2103814 () Unit!150083)

(declare-fun lt!2103826 () Unit!150083)

(assert (=> b!5109094 (= lt!2103814 lt!2103826)))

(assert (=> b!5109094 (<= (size!39431 testedP!265) (size!39431 input!5745))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!855 (List!59125 List!59125) Unit!150083)

(assert (=> b!5109094 (= lt!2103826 (lemmaIsPrefixThenSmallerEqSize!855 testedP!265 input!5745))))

(assert (=> b!5109094 (= e!3186524 e!3186521)))

(declare-fun b!5109095 () Bool)

(declare-fun Unit!150087 () Unit!150083)

(assert (=> b!5109095 (= e!3186523 Unit!150087)))

(declare-fun lt!2103822 () Unit!150083)

(assert (=> b!5109095 (= lt!2103822 call!356263)))

(assert (=> b!5109095 call!356257))

(declare-fun lt!2103821 () Unit!150083)

(assert (=> b!5109095 (= lt!2103821 lt!2103822)))

(declare-fun lt!2103808 () Unit!150083)

(assert (=> b!5109095 (= lt!2103808 call!356261)))

(assert (=> b!5109095 (= input!5745 testedP!265)))

(declare-fun lt!2103823 () Unit!150083)

(assert (=> b!5109095 (= lt!2103823 lt!2103808)))

(assert (=> b!5109095 false))

(assert (= (and d!1651142 c!877681) b!5109092))

(assert (= (and d!1651142 (not c!877681)) b!5109083))

(assert (= (and b!5109083 c!877682) b!5109088))

(assert (= (and b!5109083 (not c!877682)) b!5109094))

(assert (= (and b!5109088 c!877680) b!5109087))

(assert (= (and b!5109088 (not c!877680)) b!5109085))

(assert (= (and b!5109094 c!877683) b!5109095))

(assert (= (and b!5109094 (not c!877683)) b!5109082))

(assert (= (and b!5109094 c!877679) b!5109084))

(assert (= (and b!5109094 (not c!877679)) b!5109091))

(assert (= (and b!5109084 c!877684) b!5109093))

(assert (= (and b!5109084 (not c!877684)) b!5109086))

(assert (= (or b!5109084 b!5109091) bm!356254))

(assert (= (or b!5109084 b!5109091) bm!356255))

(assert (= (or b!5109084 b!5109091) bm!356256))

(assert (= (or b!5109084 b!5109091) bm!356258))

(assert (= (or b!5109088 b!5109095) bm!356251))

(assert (= (or b!5109088 b!5109095) bm!356257))

(assert (= (or b!5109088 b!5109094) bm!356253))

(assert (= (or b!5109088 b!5109095) bm!356252))

(assert (= (and d!1651142 res!2174663) b!5109089))

(assert (= (and b!5109089 (not res!2174664)) b!5109090))

(declare-fun m!6166280 () Bool)

(assert (=> b!5109094 m!6166280))

(declare-fun m!6166282 () Bool)

(assert (=> b!5109094 m!6166282))

(declare-fun m!6166284 () Bool)

(assert (=> b!5109094 m!6166284))

(assert (=> b!5109094 m!6166282))

(declare-fun m!6166286 () Bool)

(assert (=> b!5109094 m!6166286))

(declare-fun m!6166288 () Bool)

(assert (=> b!5109094 m!6166288))

(assert (=> b!5109094 m!6166098))

(declare-fun m!6166290 () Bool)

(assert (=> b!5109094 m!6166290))

(assert (=> b!5109094 m!6166100))

(declare-fun m!6166292 () Bool)

(assert (=> b!5109094 m!6166292))

(assert (=> b!5109094 m!6166098))

(declare-fun m!6166294 () Bool)

(assert (=> b!5109094 m!6166294))

(assert (=> b!5109094 m!6166120))

(assert (=> b!5109094 m!6166280))

(declare-fun m!6166296 () Bool)

(assert (=> b!5109094 m!6166296))

(declare-fun m!6166298 () Bool)

(assert (=> b!5109094 m!6166298))

(declare-fun m!6166300 () Bool)

(assert (=> b!5109094 m!6166300))

(declare-fun m!6166302 () Bool)

(assert (=> bm!356251 m!6166302))

(assert (=> bm!356254 m!6166292))

(declare-fun m!6166304 () Bool)

(assert (=> b!5109084 m!6166304))

(assert (=> bm!356253 m!6166176))

(declare-fun m!6166306 () Bool)

(assert (=> b!5109090 m!6166306))

(assert (=> b!5109090 m!6166120))

(declare-fun m!6166308 () Bool)

(assert (=> bm!356256 m!6166308))

(assert (=> bm!356255 m!6166300))

(declare-fun m!6166310 () Bool)

(assert (=> d!1651142 m!6166310))

(declare-fun m!6166312 () Bool)

(assert (=> d!1651142 m!6166312))

(assert (=> d!1651142 m!6166310))

(assert (=> d!1651142 m!6166098))

(assert (=> d!1651142 m!6166114))

(declare-fun m!6166314 () Bool)

(assert (=> d!1651142 m!6166314))

(declare-fun m!6166316 () Bool)

(assert (=> d!1651142 m!6166316))

(declare-fun m!6166318 () Bool)

(assert (=> d!1651142 m!6166318))

(declare-fun m!6166320 () Bool)

(assert (=> bm!356252 m!6166320))

(declare-fun m!6166322 () Bool)

(assert (=> b!5109089 m!6166322))

(declare-fun m!6166324 () Bool)

(assert (=> bm!356257 m!6166324))

(declare-fun m!6166326 () Bool)

(assert (=> bm!356258 m!6166326))

(assert (=> b!5108945 d!1651142))

(declare-fun d!1651174 () Bool)

(assert (=> d!1651174 (= testedP!265 knownP!20)))

(declare-fun lt!2103832 () Unit!150083)

(declare-fun choose!37434 (List!59125 List!59125 List!59125) Unit!150083)

(assert (=> d!1651174 (= lt!2103832 (choose!37434 testedP!265 knownP!20 input!5745))))

(assert (=> d!1651174 (isPrefix!5530 testedP!265 input!5745)))

(assert (=> d!1651174 (= (lemmaIsPrefixSameLengthThenSameList!1338 testedP!265 knownP!20 input!5745) lt!2103832)))

(declare-fun bs!1191748 () Bool)

(assert (= bs!1191748 d!1651174))

(declare-fun m!6166328 () Bool)

(assert (=> bs!1191748 m!6166328))

(assert (=> bs!1191748 m!6166112))

(assert (=> b!5108945 d!1651174))

(declare-fun d!1651176 () Bool)

(declare-fun lt!2103833 () Int)

(assert (=> d!1651176 (>= lt!2103833 0)))

(declare-fun e!3186527 () Int)

(assert (=> d!1651176 (= lt!2103833 e!3186527)))

(declare-fun c!877685 () Bool)

(assert (=> d!1651176 (= c!877685 ((_ is Nil!59001) input!5745))))

(assert (=> d!1651176 (= (size!39431 input!5745) lt!2103833)))

(declare-fun b!5109096 () Bool)

(assert (=> b!5109096 (= e!3186527 0)))

(declare-fun b!5109097 () Bool)

(assert (=> b!5109097 (= e!3186527 (+ 1 (size!39431 (t!372126 input!5745))))))

(assert (= (and d!1651176 c!877685) b!5109096))

(assert (= (and d!1651176 (not c!877685)) b!5109097))

(declare-fun m!6166330 () Bool)

(assert (=> b!5109097 m!6166330))

(assert (=> b!5108945 d!1651176))

(declare-fun b!5109098 () Bool)

(declare-fun e!3186530 () Bool)

(declare-fun e!3186529 () Bool)

(assert (=> b!5109098 (= e!3186530 e!3186529)))

(declare-fun res!2174665 () Bool)

(assert (=> b!5109098 (=> (not res!2174665) (not e!3186529))))

(assert (=> b!5109098 (= res!2174665 (not ((_ is Nil!59001) input!5745)))))

(declare-fun b!5109099 () Bool)

(declare-fun res!2174666 () Bool)

(assert (=> b!5109099 (=> (not res!2174666) (not e!3186529))))

(assert (=> b!5109099 (= res!2174666 (= (head!10858 testedP!265) (head!10858 input!5745)))))

(declare-fun d!1651178 () Bool)

(declare-fun e!3186528 () Bool)

(assert (=> d!1651178 e!3186528))

(declare-fun res!2174668 () Bool)

(assert (=> d!1651178 (=> res!2174668 e!3186528)))

(declare-fun lt!2103834 () Bool)

(assert (=> d!1651178 (= res!2174668 (not lt!2103834))))

(assert (=> d!1651178 (= lt!2103834 e!3186530)))

(declare-fun res!2174667 () Bool)

(assert (=> d!1651178 (=> res!2174667 e!3186530)))

(assert (=> d!1651178 (= res!2174667 ((_ is Nil!59001) testedP!265))))

(assert (=> d!1651178 (= (isPrefix!5530 testedP!265 input!5745) lt!2103834)))

(declare-fun b!5109101 () Bool)

(assert (=> b!5109101 (= e!3186528 (>= (size!39431 input!5745) (size!39431 testedP!265)))))

(declare-fun b!5109100 () Bool)

(assert (=> b!5109100 (= e!3186529 (isPrefix!5530 (tail!10013 testedP!265) (tail!10013 input!5745)))))

(assert (= (and d!1651178 (not res!2174667)) b!5109098))

(assert (= (and b!5109098 res!2174665) b!5109099))

(assert (= (and b!5109099 res!2174666) b!5109100))

(assert (= (and d!1651178 (not res!2174668)) b!5109101))

(assert (=> b!5109099 m!6166190))

(assert (=> b!5109099 m!6166164))

(assert (=> b!5109101 m!6166100))

(assert (=> b!5109101 m!6166120))

(assert (=> b!5109100 m!6166192))

(assert (=> b!5109100 m!6166166))

(assert (=> b!5109100 m!6166192))

(assert (=> b!5109100 m!6166166))

(declare-fun m!6166332 () Bool)

(assert (=> b!5109100 m!6166332))

(assert (=> start!538704 d!1651178))

(declare-fun bs!1191749 () Bool)

(declare-fun b!5109106 () Bool)

(declare-fun d!1651180 () Bool)

(assert (= bs!1191749 (and b!5109106 d!1651180)))

(declare-fun lambda!250127 () Int)

(declare-fun lambda!250126 () Int)

(assert (=> bs!1191749 (not (= lambda!250127 lambda!250126))))

(declare-fun bs!1191750 () Bool)

(declare-fun b!5109107 () Bool)

(assert (= bs!1191750 (and b!5109107 d!1651180)))

(declare-fun lambda!250128 () Int)

(assert (=> bs!1191750 (not (= lambda!250128 lambda!250126))))

(declare-fun bs!1191751 () Bool)

(assert (= bs!1191751 (and b!5109107 b!5109106)))

(assert (=> bs!1191751 (= lambda!250128 lambda!250127)))

(declare-fun bm!356263 () Bool)

(declare-datatypes ((List!59127 0))(
  ( (Nil!59003) (Cons!59003 (h!65451 Context!7018) (t!372128 List!59127)) )
))
(declare-fun call!356268 () List!59127)

(declare-fun toList!8219 ((InoxSet Context!7018)) List!59127)

(assert (=> bm!356263 (= call!356268 (toList!8219 z!4463))))

(declare-fun lt!2103856 () List!59127)

(declare-fun c!877696 () Bool)

(declare-fun lt!2103857 () List!59127)

(declare-fun call!356269 () Bool)

(declare-fun bm!356264 () Bool)

(declare-fun exists!1426 (List!59127 Int) Bool)

(assert (=> bm!356264 (= call!356269 (exists!1426 (ite c!877696 lt!2103856 lt!2103857) (ite c!877696 lambda!250127 lambda!250128)))))

(declare-fun e!3186537 () Unit!150083)

(declare-fun Unit!150090 () Unit!150083)

(assert (=> b!5109107 (= e!3186537 Unit!150090)))

(assert (=> b!5109107 (= lt!2103857 call!356268)))

(declare-fun lt!2103852 () Unit!150083)

(declare-fun lemmaForallThenNotExists!276 (List!59127 Int) Unit!150083)

(assert (=> b!5109107 (= lt!2103852 (lemmaForallThenNotExists!276 lt!2103857 lambda!250126))))

(assert (=> b!5109107 (not call!356269)))

(declare-fun lt!2103851 () Unit!150083)

(assert (=> b!5109107 (= lt!2103851 lt!2103852)))

(declare-fun lt!2103858 () Bool)

(declare-datatypes ((Option!14653 0))(
  ( (None!14652) (Some!14652 (v!50665 List!59125)) )
))
(declare-fun isEmpty!31846 (Option!14653) Bool)

(declare-fun getLanguageWitness!766 ((InoxSet Context!7018)) Option!14653)

(assert (=> d!1651180 (= lt!2103858 (isEmpty!31846 (getLanguageWitness!766 z!4463)))))

(declare-fun forall!13517 ((InoxSet Context!7018) Int) Bool)

(assert (=> d!1651180 (= lt!2103858 (forall!13517 z!4463 lambda!250126))))

(declare-fun lt!2103853 () Unit!150083)

(assert (=> d!1651180 (= lt!2103853 e!3186537)))

(assert (=> d!1651180 (= c!877696 (not (forall!13517 z!4463 lambda!250126)))))

(assert (=> d!1651180 (= (lostCauseZipper!1011 z!4463) lt!2103858)))

(declare-fun Unit!150091 () Unit!150083)

(assert (=> b!5109106 (= e!3186537 Unit!150091)))

(assert (=> b!5109106 (= lt!2103856 call!356268)))

(declare-fun lt!2103854 () Unit!150083)

(declare-fun lemmaNotForallThenExists!293 (List!59127 Int) Unit!150083)

(assert (=> b!5109106 (= lt!2103854 (lemmaNotForallThenExists!293 lt!2103856 lambda!250126))))

(assert (=> b!5109106 call!356269))

(declare-fun lt!2103855 () Unit!150083)

(assert (=> b!5109106 (= lt!2103855 lt!2103854)))

(assert (= (and d!1651180 c!877696) b!5109106))

(assert (= (and d!1651180 (not c!877696)) b!5109107))

(assert (= (or b!5109106 b!5109107) bm!356263))

(assert (= (or b!5109106 b!5109107) bm!356264))

(declare-fun m!6166334 () Bool)

(assert (=> bm!356264 m!6166334))

(declare-fun m!6166336 () Bool)

(assert (=> bm!356263 m!6166336))

(declare-fun m!6166338 () Bool)

(assert (=> b!5109107 m!6166338))

(declare-fun m!6166340 () Bool)

(assert (=> d!1651180 m!6166340))

(assert (=> d!1651180 m!6166340))

(declare-fun m!6166342 () Bool)

(assert (=> d!1651180 m!6166342))

(declare-fun m!6166344 () Bool)

(assert (=> d!1651180 m!6166344))

(assert (=> d!1651180 m!6166344))

(declare-fun m!6166346 () Bool)

(assert (=> b!5109106 m!6166346))

(assert (=> b!5108940 d!1651180))

(declare-fun condSetEmpty!29597 () Bool)

(assert (=> setNonEmpty!29594 (= condSetEmpty!29597 (= setRest!29593 ((as const (Array Context!7018 Bool)) false)))))

(declare-fun setRes!29597 () Bool)

(assert (=> setNonEmpty!29594 (= tp!1425325 setRes!29597)))

(declare-fun setIsEmpty!29597 () Bool)

(assert (=> setIsEmpty!29597 setRes!29597))

(declare-fun tp!1425330 () Bool)

(declare-fun setElem!29597 () Context!7018)

(declare-fun setNonEmpty!29597 () Bool)

(declare-fun e!3186540 () Bool)

(assert (=> setNonEmpty!29597 (= setRes!29597 (and tp!1425330 (inv!78493 setElem!29597) e!3186540))))

(declare-fun setRest!29597 () (InoxSet Context!7018))

(assert (=> setNonEmpty!29597 (= setRest!29593 ((_ map or) (store ((as const (Array Context!7018 Bool)) false) setElem!29597 true) setRest!29597))))

(declare-fun b!5109112 () Bool)

(declare-fun tp!1425331 () Bool)

(assert (=> b!5109112 (= e!3186540 tp!1425331)))

(assert (= (and setNonEmpty!29594 condSetEmpty!29597) setIsEmpty!29597))

(assert (= (and setNonEmpty!29594 (not condSetEmpty!29597)) setNonEmpty!29597))

(assert (= setNonEmpty!29597 b!5109112))

(declare-fun m!6166348 () Bool)

(assert (=> setNonEmpty!29597 m!6166348))

(declare-fun condSetEmpty!29598 () Bool)

(assert (=> setNonEmpty!29593 (= condSetEmpty!29598 (= setRest!29594 ((as const (Array Context!7018 Bool)) false)))))

(declare-fun setRes!29598 () Bool)

(assert (=> setNonEmpty!29593 (= tp!1425323 setRes!29598)))

(declare-fun setIsEmpty!29598 () Bool)

(assert (=> setIsEmpty!29598 setRes!29598))

(declare-fun setElem!29598 () Context!7018)

(declare-fun tp!1425332 () Bool)

(declare-fun e!3186541 () Bool)

(declare-fun setNonEmpty!29598 () Bool)

(assert (=> setNonEmpty!29598 (= setRes!29598 (and tp!1425332 (inv!78493 setElem!29598) e!3186541))))

(declare-fun setRest!29598 () (InoxSet Context!7018))

(assert (=> setNonEmpty!29598 (= setRest!29594 ((_ map or) (store ((as const (Array Context!7018 Bool)) false) setElem!29598 true) setRest!29598))))

(declare-fun b!5109113 () Bool)

(declare-fun tp!1425333 () Bool)

(assert (=> b!5109113 (= e!3186541 tp!1425333)))

(assert (= (and setNonEmpty!29593 condSetEmpty!29598) setIsEmpty!29598))

(assert (= (and setNonEmpty!29593 (not condSetEmpty!29598)) setNonEmpty!29598))

(assert (= setNonEmpty!29598 b!5109113))

(declare-fun m!6166350 () Bool)

(assert (=> setNonEmpty!29598 m!6166350))

(declare-fun b!5109118 () Bool)

(declare-fun e!3186544 () Bool)

(declare-fun tp!1425336 () Bool)

(assert (=> b!5109118 (= e!3186544 (and tp_is_empty!37523 tp!1425336))))

(assert (=> b!5108941 (= tp!1425321 e!3186544)))

(assert (= (and b!5108941 ((_ is Cons!59001) (t!372126 input!5745))) b!5109118))

(declare-fun b!5109119 () Bool)

(declare-fun e!3186545 () Bool)

(declare-fun tp!1425337 () Bool)

(assert (=> b!5109119 (= e!3186545 (and tp_is_empty!37523 tp!1425337))))

(assert (=> b!5108949 (= tp!1425319 e!3186545)))

(assert (= (and b!5108949 ((_ is Cons!59001) (t!372126 testedP!265))) b!5109119))

(declare-fun b!5109124 () Bool)

(declare-fun e!3186548 () Bool)

(declare-fun tp!1425342 () Bool)

(declare-fun tp!1425343 () Bool)

(assert (=> b!5109124 (= e!3186548 (and tp!1425342 tp!1425343))))

(assert (=> b!5108943 (= tp!1425320 e!3186548)))

(assert (= (and b!5108943 ((_ is Cons!59000) (exprs!4009 setElem!29593))) b!5109124))

(declare-fun b!5109125 () Bool)

(declare-fun e!3186549 () Bool)

(declare-fun tp!1425344 () Bool)

(declare-fun tp!1425345 () Bool)

(assert (=> b!5109125 (= e!3186549 (and tp!1425344 tp!1425345))))

(assert (=> b!5108951 (= tp!1425322 e!3186549)))

(assert (= (and b!5108951 ((_ is Cons!59000) (exprs!4009 setElem!29594))) b!5109125))

(declare-fun b!5109126 () Bool)

(declare-fun e!3186550 () Bool)

(declare-fun tp!1425346 () Bool)

(assert (=> b!5109126 (= e!3186550 (and tp_is_empty!37523 tp!1425346))))

(assert (=> b!5108939 (= tp!1425324 e!3186550)))

(assert (= (and b!5108939 ((_ is Cons!59001) (t!372126 knownP!20))) b!5109126))

(check-sat (not b!5109124) (not b!5109125) (not b!5108993) (not bm!356258) (not bm!356257) (not b!5109008) (not bm!356256) tp_is_empty!37523 (not d!1651180) (not b!5108997) (not d!1651134) (not b!5108968) (not d!1651128) (not d!1651142) (not b!5108996) (not b!5109101) (not b!5109100) (not setNonEmpty!29598) (not b!5109119) (not d!1651118) (not bm!356264) (not b!5109089) (not b!5109007) (not b!5108985) (not bm!356253) (not setNonEmpty!29597) (not b!5108995) (not d!1651174) (not d!1651130) (not d!1651136) (not b!5109099) (not b!5109126) (not b!5109090) (not b!5108974) (not bm!356255) (not bm!356252) (not b!5108969) (not b!5108986) (not d!1651138) (not d!1651110) (not b!5109106) (not b!5109084) (not b!5108987) (not b!5109006) (not b!5109002) (not b!5109112) (not bm!356251) (not bm!356263) (not d!1651116) (not b!5109118) (not b!5109094) (not bm!356254) (not b!5109097) (not b!5109107) (not b!5109005) (not b!5109011) (not b!5109113))
(check-sat)
