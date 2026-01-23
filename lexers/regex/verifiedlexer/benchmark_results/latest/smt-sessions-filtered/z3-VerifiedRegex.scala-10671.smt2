; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546552 () Bool)

(assert start!546552)

(declare-fun b!5166028 () Bool)

(declare-datatypes ((Unit!151462 0))(
  ( (Unit!151463) )
))
(declare-fun e!3218939 () Unit!151462)

(declare-fun Unit!151464 () Unit!151462)

(assert (=> b!5166028 (= e!3218939 Unit!151464)))

(declare-fun res!2196099 () Bool)

(declare-fun e!3218937 () Bool)

(assert (=> start!546552 (=> (not res!2196099) (not e!3218937))))

(declare-datatypes ((C!29448 0))(
  ( (C!29449 (val!24426 Int)) )
))
(declare-datatypes ((List!60133 0))(
  ( (Nil!60009) (Cons!60009 (h!66457 C!29448) (t!373286 List!60133)) )
))
(declare-fun testedP!294 () List!60133)

(declare-fun input!5817 () List!60133)

(declare-fun isPrefix!5722 (List!60133 List!60133) Bool)

(assert (=> start!546552 (= res!2196099 (isPrefix!5722 testedP!294 input!5817))))

(assert (=> start!546552 e!3218937))

(declare-fun e!3218940 () Bool)

(assert (=> start!546552 e!3218940))

(declare-fun e!3218936 () Bool)

(assert (=> start!546552 e!3218936))

(declare-fun condSetEmpty!31748 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14589 0))(
  ( (ElementMatch!14589 (c!888818 C!29448)) (Concat!23434 (regOne!29690 Regex!14589) (regTwo!29690 Regex!14589)) (EmptyExpr!14589) (Star!14589 (reg!14918 Regex!14589)) (EmptyLang!14589) (Union!14589 (regOne!29691 Regex!14589) (regTwo!29691 Regex!14589)) )
))
(declare-datatypes ((List!60134 0))(
  ( (Nil!60010) (Cons!60010 (h!66458 Regex!14589) (t!373287 List!60134)) )
))
(declare-datatypes ((Context!7946 0))(
  ( (Context!7947 (exprs!4473 List!60134)) )
))
(declare-fun baseZ!62 () (InoxSet Context!7946))

(assert (=> start!546552 (= condSetEmpty!31748 (= baseZ!62 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31747 () Bool)

(assert (=> start!546552 setRes!31747))

(declare-fun condSetEmpty!31747 () Bool)

(declare-fun z!4581 () (InoxSet Context!7946))

(assert (=> start!546552 (= condSetEmpty!31747 (= z!4581 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31748 () Bool)

(assert (=> start!546552 setRes!31748))

(declare-fun setIsEmpty!31747 () Bool)

(assert (=> setIsEmpty!31747 setRes!31747))

(declare-fun b!5166029 () Bool)

(declare-fun e!3218942 () Bool)

(declare-fun tp!1449357 () Bool)

(assert (=> b!5166029 (= e!3218942 tp!1449357)))

(declare-fun setNonEmpty!31747 () Bool)

(declare-fun setElem!31748 () Context!7946)

(declare-fun tp!1449354 () Bool)

(declare-fun inv!79719 (Context!7946) Bool)

(assert (=> setNonEmpty!31747 (= setRes!31747 (and tp!1449354 (inv!79719 setElem!31748) e!3218942))))

(declare-fun setRest!31748 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31747 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31748 true) setRest!31748))))

(declare-fun b!5166030 () Bool)

(declare-fun res!2196100 () Bool)

(declare-fun e!3218941 () Bool)

(assert (=> b!5166030 (=> (not res!2196100) (not e!3218941))))

(assert (=> b!5166030 (= res!2196100 (not (= testedP!294 input!5817)))))

(declare-fun b!5166031 () Bool)

(declare-fun tp_is_empty!38431 () Bool)

(declare-fun tp!1449359 () Bool)

(assert (=> b!5166031 (= e!3218936 (and tp_is_empty!38431 tp!1449359))))

(declare-fun b!5166032 () Bool)

(declare-fun Unit!151465 () Unit!151462)

(assert (=> b!5166032 (= e!3218939 Unit!151465)))

(declare-fun lt!2124779 () Unit!151462)

(declare-fun lemmaIsPrefixRefl!3729 (List!60133 List!60133) Unit!151462)

(assert (=> b!5166032 (= lt!2124779 (lemmaIsPrefixRefl!3729 input!5817 input!5817))))

(assert (=> b!5166032 (isPrefix!5722 input!5817 input!5817)))

(declare-fun lt!2124778 () Unit!151462)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1371 (List!60133 List!60133 List!60133) Unit!151462)

(assert (=> b!5166032 (= lt!2124778 (lemmaIsPrefixSameLengthThenSameList!1371 input!5817 testedP!294 input!5817))))

(assert (=> b!5166032 false))

(declare-fun lt!2124777 () List!60133)

(declare-fun lt!2124781 () Int)

(declare-fun b!5166033 () Bool)

(declare-fun lt!2124780 () Int)

(assert (=> b!5166033 (= e!3218941 (not (or (>= lt!2124781 lt!2124780) (not (= lt!2124777 Nil!60009)))))))

(declare-fun lt!2124776 () Unit!151462)

(assert (=> b!5166033 (= lt!2124776 e!3218939)))

(declare-fun c!888817 () Bool)

(assert (=> b!5166033 (= c!888817 (= lt!2124781 lt!2124780))))

(assert (=> b!5166033 (<= lt!2124781 lt!2124780)))

(declare-fun lt!2124782 () Unit!151462)

(declare-fun lemmaIsPrefixThenSmallerEqSize!885 (List!60133 List!60133) Unit!151462)

(assert (=> b!5166033 (= lt!2124782 (lemmaIsPrefixThenSmallerEqSize!885 testedP!294 input!5817))))

(declare-fun e!3218938 () Bool)

(declare-fun setNonEmpty!31748 () Bool)

(declare-fun setElem!31747 () Context!7946)

(declare-fun tp!1449355 () Bool)

(assert (=> setNonEmpty!31748 (= setRes!31748 (and tp!1449355 (inv!79719 setElem!31747) e!3218938))))

(declare-fun setRest!31747 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31748 (= z!4581 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31747 true) setRest!31747))))

(declare-fun b!5166034 () Bool)

(declare-fun tp!1449356 () Bool)

(assert (=> b!5166034 (= e!3218938 tp!1449356)))

(declare-fun b!5166035 () Bool)

(declare-fun tp!1449358 () Bool)

(assert (=> b!5166035 (= e!3218940 (and tp_is_empty!38431 tp!1449358))))

(declare-fun b!5166036 () Bool)

(assert (=> b!5166036 (= e!3218937 e!3218941)))

(declare-fun res!2196098 () Bool)

(assert (=> b!5166036 (=> (not res!2196098) (not e!3218941))))

(declare-fun isEmpty!32127 (List!60133) Bool)

(declare-datatypes ((tuple2!63732 0))(
  ( (tuple2!63733 (_1!35169 List!60133) (_2!35169 List!60133)) )
))
(declare-fun findLongestMatchInnerZipper!247 ((InoxSet Context!7946) List!60133 Int List!60133 List!60133 Int) tuple2!63732)

(assert (=> b!5166036 (= res!2196098 (not (isEmpty!32127 (_1!35169 (findLongestMatchInnerZipper!247 z!4581 testedP!294 lt!2124781 lt!2124777 input!5817 lt!2124780)))))))

(declare-fun size!39625 (List!60133) Int)

(assert (=> b!5166036 (= lt!2124780 (size!39625 input!5817))))

(declare-fun getSuffix!3372 (List!60133 List!60133) List!60133)

(assert (=> b!5166036 (= lt!2124777 (getSuffix!3372 input!5817 testedP!294))))

(assert (=> b!5166036 (= lt!2124781 (size!39625 testedP!294))))

(declare-fun b!5166037 () Bool)

(declare-fun res!2196097 () Bool)

(assert (=> b!5166037 (=> (not res!2196097) (not e!3218937))))

(declare-fun derivationZipper!212 ((InoxSet Context!7946) List!60133) (InoxSet Context!7946))

(assert (=> b!5166037 (= res!2196097 (= (derivationZipper!212 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31748 () Bool)

(assert (=> setIsEmpty!31748 setRes!31748))

(assert (= (and start!546552 res!2196099) b!5166037))

(assert (= (and b!5166037 res!2196097) b!5166036))

(assert (= (and b!5166036 res!2196098) b!5166030))

(assert (= (and b!5166030 res!2196100) b!5166033))

(assert (= (and b!5166033 c!888817) b!5166032))

(assert (= (and b!5166033 (not c!888817)) b!5166028))

(get-info :version)

(assert (= (and start!546552 ((_ is Cons!60009) testedP!294)) b!5166035))

(assert (= (and start!546552 ((_ is Cons!60009) input!5817)) b!5166031))

(assert (= (and start!546552 condSetEmpty!31748) setIsEmpty!31747))

(assert (= (and start!546552 (not condSetEmpty!31748)) setNonEmpty!31747))

(assert (= setNonEmpty!31747 b!5166029))

(assert (= (and start!546552 condSetEmpty!31747) setIsEmpty!31748))

(assert (= (and start!546552 (not condSetEmpty!31747)) setNonEmpty!31748))

(assert (= setNonEmpty!31748 b!5166034))

(declare-fun m!6216434 () Bool)

(assert (=> b!5166037 m!6216434))

(declare-fun m!6216436 () Bool)

(assert (=> b!5166032 m!6216436))

(declare-fun m!6216438 () Bool)

(assert (=> b!5166032 m!6216438))

(declare-fun m!6216440 () Bool)

(assert (=> b!5166032 m!6216440))

(declare-fun m!6216442 () Bool)

(assert (=> setNonEmpty!31748 m!6216442))

(declare-fun m!6216444 () Bool)

(assert (=> start!546552 m!6216444))

(declare-fun m!6216446 () Bool)

(assert (=> b!5166036 m!6216446))

(declare-fun m!6216448 () Bool)

(assert (=> b!5166036 m!6216448))

(declare-fun m!6216450 () Bool)

(assert (=> b!5166036 m!6216450))

(declare-fun m!6216452 () Bool)

(assert (=> b!5166036 m!6216452))

(declare-fun m!6216454 () Bool)

(assert (=> b!5166036 m!6216454))

(declare-fun m!6216456 () Bool)

(assert (=> setNonEmpty!31747 m!6216456))

(declare-fun m!6216458 () Bool)

(assert (=> b!5166033 m!6216458))

(check-sat (not start!546552) tp_is_empty!38431 (not setNonEmpty!31748) (not b!5166029) (not b!5166031) (not b!5166037) (not b!5166032) (not setNonEmpty!31747) (not b!5166035) (not b!5166036) (not b!5166033) (not b!5166034))
(check-sat)
(get-model)

(declare-fun d!1666520 () Bool)

(declare-fun lt!2124787 () Int)

(assert (=> d!1666520 (>= lt!2124787 0)))

(declare-fun e!3218951 () Int)

(assert (=> d!1666520 (= lt!2124787 e!3218951)))

(declare-fun c!888821 () Bool)

(assert (=> d!1666520 (= c!888821 ((_ is Nil!60009) input!5817))))

(assert (=> d!1666520 (= (size!39625 input!5817) lt!2124787)))

(declare-fun b!5166050 () Bool)

(assert (=> b!5166050 (= e!3218951 0)))

(declare-fun b!5166051 () Bool)

(assert (=> b!5166051 (= e!3218951 (+ 1 (size!39625 (t!373286 input!5817))))))

(assert (= (and d!1666520 c!888821) b!5166050))

(assert (= (and d!1666520 (not c!888821)) b!5166051))

(declare-fun m!6216460 () Bool)

(assert (=> b!5166051 m!6216460))

(assert (=> b!5166036 d!1666520))

(declare-fun d!1666522 () Bool)

(declare-fun lt!2124795 () List!60133)

(declare-fun ++!13113 (List!60133 List!60133) List!60133)

(assert (=> d!1666522 (= (++!13113 testedP!294 lt!2124795) input!5817)))

(declare-fun e!3218960 () List!60133)

(assert (=> d!1666522 (= lt!2124795 e!3218960)))

(declare-fun c!888824 () Bool)

(assert (=> d!1666522 (= c!888824 ((_ is Cons!60009) testedP!294))))

(assert (=> d!1666522 (>= (size!39625 input!5817) (size!39625 testedP!294))))

(assert (=> d!1666522 (= (getSuffix!3372 input!5817 testedP!294) lt!2124795)))

(declare-fun b!5166064 () Bool)

(declare-fun tail!10124 (List!60133) List!60133)

(assert (=> b!5166064 (= e!3218960 (getSuffix!3372 (tail!10124 input!5817) (t!373286 testedP!294)))))

(declare-fun b!5166065 () Bool)

(assert (=> b!5166065 (= e!3218960 input!5817)))

(assert (= (and d!1666522 c!888824) b!5166064))

(assert (= (and d!1666522 (not c!888824)) b!5166065))

(declare-fun m!6216476 () Bool)

(assert (=> d!1666522 m!6216476))

(assert (=> d!1666522 m!6216452))

(assert (=> d!1666522 m!6216448))

(declare-fun m!6216478 () Bool)

(assert (=> b!5166064 m!6216478))

(assert (=> b!5166064 m!6216478))

(declare-fun m!6216480 () Bool)

(assert (=> b!5166064 m!6216480))

(assert (=> b!5166036 d!1666522))

(declare-fun d!1666530 () Bool)

(assert (=> d!1666530 (= (isEmpty!32127 (_1!35169 (findLongestMatchInnerZipper!247 z!4581 testedP!294 lt!2124781 lt!2124777 input!5817 lt!2124780))) ((_ is Nil!60009) (_1!35169 (findLongestMatchInnerZipper!247 z!4581 testedP!294 lt!2124781 lt!2124777 input!5817 lt!2124780))))))

(assert (=> b!5166036 d!1666530))

(declare-fun bm!362415 () Bool)

(declare-fun call!362421 () List!60133)

(assert (=> bm!362415 (= call!362421 (tail!10124 lt!2124777))))

(declare-fun b!5166150 () Bool)

(declare-fun e!3219014 () Unit!151462)

(declare-fun Unit!151469 () Unit!151462)

(assert (=> b!5166150 (= e!3219014 Unit!151469)))

(declare-fun lt!2124956 () Unit!151462)

(declare-fun call!362423 () Unit!151462)

(assert (=> b!5166150 (= lt!2124956 call!362423)))

(declare-fun call!362425 () Bool)

(assert (=> b!5166150 call!362425))

(declare-fun lt!2124943 () Unit!151462)

(assert (=> b!5166150 (= lt!2124943 lt!2124956)))

(declare-fun lt!2124950 () Unit!151462)

(declare-fun call!362424 () Unit!151462)

(assert (=> b!5166150 (= lt!2124950 call!362424)))

(assert (=> b!5166150 (= input!5817 testedP!294)))

(declare-fun lt!2124939 () Unit!151462)

(assert (=> b!5166150 (= lt!2124939 lt!2124950)))

(assert (=> b!5166150 false))

(declare-fun bm!362416 () Bool)

(assert (=> bm!362416 (= call!362424 (lemmaIsPrefixSameLengthThenSameList!1371 input!5817 testedP!294 input!5817))))

(declare-fun b!5166151 () Bool)

(declare-fun e!3219008 () tuple2!63732)

(assert (=> b!5166151 (= e!3219008 (tuple2!63733 Nil!60009 input!5817))))

(declare-fun bm!362417 () Bool)

(declare-fun call!362426 () Bool)

(declare-fun nullableZipper!1137 ((InoxSet Context!7946)) Bool)

(assert (=> bm!362417 (= call!362426 (nullableZipper!1137 z!4581))))

(declare-fun b!5166152 () Bool)

(declare-fun Unit!151470 () Unit!151462)

(assert (=> b!5166152 (= e!3219014 Unit!151470)))

(declare-fun bm!362419 () Bool)

(assert (=> bm!362419 (= call!362423 (lemmaIsPrefixRefl!3729 input!5817 input!5817))))

(declare-fun lt!2124940 () List!60133)

(declare-fun call!362427 () (InoxSet Context!7946))

(declare-fun call!362420 () tuple2!63732)

(declare-fun bm!362420 () Bool)

(assert (=> bm!362420 (= call!362420 (findLongestMatchInnerZipper!247 call!362427 lt!2124940 (+ lt!2124781 1) call!362421 input!5817 lt!2124780))))

(declare-fun b!5166153 () Bool)

(declare-fun e!3219015 () tuple2!63732)

(assert (=> b!5166153 (= e!3219015 (tuple2!63733 Nil!60009 input!5817))))

(declare-fun b!5166154 () Bool)

(declare-fun e!3219011 () tuple2!63732)

(declare-fun lt!2124951 () tuple2!63732)

(assert (=> b!5166154 (= e!3219011 lt!2124951)))

(declare-fun b!5166155 () Bool)

(declare-fun e!3219009 () Bool)

(declare-fun lt!2124957 () tuple2!63732)

(assert (=> b!5166155 (= e!3219009 (>= (size!39625 (_1!35169 lt!2124957)) (size!39625 testedP!294)))))

(declare-fun b!5166156 () Bool)

(assert (=> b!5166156 (= e!3219008 (tuple2!63733 testedP!294 Nil!60009))))

(declare-fun bm!362421 () Bool)

(assert (=> bm!362421 (= call!362425 (isPrefix!5722 input!5817 input!5817))))

(declare-fun b!5166157 () Bool)

(declare-fun c!888865 () Bool)

(assert (=> b!5166157 (= c!888865 call!362426)))

(declare-fun lt!2124944 () Unit!151462)

(declare-fun lt!2124963 () Unit!151462)

(assert (=> b!5166157 (= lt!2124944 lt!2124963)))

(assert (=> b!5166157 (= input!5817 testedP!294)))

(assert (=> b!5166157 (= lt!2124963 call!362424)))

(declare-fun lt!2124955 () Unit!151462)

(declare-fun lt!2124959 () Unit!151462)

(assert (=> b!5166157 (= lt!2124955 lt!2124959)))

(assert (=> b!5166157 call!362425))

(assert (=> b!5166157 (= lt!2124959 call!362423)))

(declare-fun e!3219010 () tuple2!63732)

(assert (=> b!5166157 (= e!3219010 e!3219008)))

(declare-fun bm!362418 () Bool)

(declare-fun call!362422 () C!29448)

(declare-fun derivationStepZipper!947 ((InoxSet Context!7946) C!29448) (InoxSet Context!7946))

(assert (=> bm!362418 (= call!362427 (derivationStepZipper!947 z!4581 call!362422))))

(declare-fun d!1666532 () Bool)

(declare-fun e!3219012 () Bool)

(assert (=> d!1666532 e!3219012))

(declare-fun res!2196128 () Bool)

(assert (=> d!1666532 (=> (not res!2196128) (not e!3219012))))

(assert (=> d!1666532 (= res!2196128 (= (++!13113 (_1!35169 lt!2124957) (_2!35169 lt!2124957)) input!5817))))

(assert (=> d!1666532 (= lt!2124957 e!3219015)))

(declare-fun c!888863 () Bool)

(declare-fun lostCauseZipper!1314 ((InoxSet Context!7946)) Bool)

(assert (=> d!1666532 (= c!888863 (lostCauseZipper!1314 z!4581))))

(declare-fun lt!2124954 () Unit!151462)

(declare-fun Unit!151471 () Unit!151462)

(assert (=> d!1666532 (= lt!2124954 Unit!151471)))

(assert (=> d!1666532 (= (getSuffix!3372 input!5817 testedP!294) lt!2124777)))

(declare-fun lt!2124964 () Unit!151462)

(declare-fun lt!2124941 () Unit!151462)

(assert (=> d!1666532 (= lt!2124964 lt!2124941)))

(declare-fun lt!2124942 () List!60133)

(assert (=> d!1666532 (= lt!2124777 lt!2124942)))

(declare-fun lemmaSamePrefixThenSameSuffix!2681 (List!60133 List!60133 List!60133 List!60133 List!60133) Unit!151462)

(assert (=> d!1666532 (= lt!2124941 (lemmaSamePrefixThenSameSuffix!2681 testedP!294 lt!2124777 testedP!294 lt!2124942 input!5817))))

(assert (=> d!1666532 (= lt!2124942 (getSuffix!3372 input!5817 testedP!294))))

(declare-fun lt!2124953 () Unit!151462)

(declare-fun lt!2124945 () Unit!151462)

(assert (=> d!1666532 (= lt!2124953 lt!2124945)))

(assert (=> d!1666532 (isPrefix!5722 testedP!294 (++!13113 testedP!294 lt!2124777))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3575 (List!60133 List!60133) Unit!151462)

(assert (=> d!1666532 (= lt!2124945 (lemmaConcatTwoListThenFirstIsPrefix!3575 testedP!294 lt!2124777))))

(assert (=> d!1666532 (= (++!13113 testedP!294 lt!2124777) input!5817)))

(assert (=> d!1666532 (= (findLongestMatchInnerZipper!247 z!4581 testedP!294 lt!2124781 lt!2124777 input!5817 lt!2124780) lt!2124957)))

(declare-fun b!5166158 () Bool)

(declare-fun c!888862 () Bool)

(assert (=> b!5166158 (= c!888862 call!362426)))

(declare-fun lt!2124961 () Unit!151462)

(declare-fun lt!2124949 () Unit!151462)

(assert (=> b!5166158 (= lt!2124961 lt!2124949)))

(declare-fun lt!2124947 () List!60133)

(declare-fun lt!2124962 () C!29448)

(assert (=> b!5166158 (= (++!13113 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009)) lt!2124947) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1562 (List!60133 C!29448 List!60133 List!60133) Unit!151462)

(assert (=> b!5166158 (= lt!2124949 (lemmaMoveElementToOtherListKeepsConcatEq!1562 testedP!294 lt!2124962 lt!2124947 input!5817))))

(assert (=> b!5166158 (= lt!2124947 (tail!10124 lt!2124777))))

(declare-fun head!11013 (List!60133) C!29448)

(assert (=> b!5166158 (= lt!2124962 (head!11013 lt!2124777))))

(declare-fun lt!2124948 () Unit!151462)

(declare-fun lt!2124952 () Unit!151462)

(assert (=> b!5166158 (= lt!2124948 lt!2124952)))

(assert (=> b!5166158 (isPrefix!5722 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1037 (List!60133 List!60133) Unit!151462)

(assert (=> b!5166158 (= lt!2124952 (lemmaAddHeadSuffixToPrefixStillPrefix!1037 testedP!294 input!5817))))

(assert (=> b!5166158 (= lt!2124940 (++!13113 testedP!294 (Cons!60009 (head!11013 lt!2124777) Nil!60009)))))

(declare-fun lt!2124958 () Unit!151462)

(assert (=> b!5166158 (= lt!2124958 e!3219014)))

(declare-fun c!888864 () Bool)

(assert (=> b!5166158 (= c!888864 (= (size!39625 testedP!294) (size!39625 input!5817)))))

(declare-fun lt!2124960 () Unit!151462)

(declare-fun lt!2124946 () Unit!151462)

(assert (=> b!5166158 (= lt!2124960 lt!2124946)))

(assert (=> b!5166158 (<= (size!39625 testedP!294) (size!39625 input!5817))))

(assert (=> b!5166158 (= lt!2124946 (lemmaIsPrefixThenSmallerEqSize!885 testedP!294 input!5817))))

(declare-fun e!3219013 () tuple2!63732)

(assert (=> b!5166158 (= e!3219010 e!3219013)))

(declare-fun b!5166159 () Bool)

(assert (=> b!5166159 (= e!3219011 (tuple2!63733 testedP!294 lt!2124777))))

(declare-fun b!5166160 () Bool)

(assert (=> b!5166160 (= e!3219013 call!362420)))

(declare-fun b!5166161 () Bool)

(assert (=> b!5166161 (= e!3219015 e!3219010)))

(declare-fun c!888866 () Bool)

(assert (=> b!5166161 (= c!888866 (= lt!2124781 lt!2124780))))

(declare-fun bm!362422 () Bool)

(assert (=> bm!362422 (= call!362422 (head!11013 lt!2124777))))

(declare-fun b!5166162 () Bool)

(assert (=> b!5166162 (= e!3219012 e!3219009)))

(declare-fun res!2196127 () Bool)

(assert (=> b!5166162 (=> res!2196127 e!3219009)))

(assert (=> b!5166162 (= res!2196127 (isEmpty!32127 (_1!35169 lt!2124957)))))

(declare-fun b!5166163 () Bool)

(assert (=> b!5166163 (= e!3219013 e!3219011)))

(assert (=> b!5166163 (= lt!2124951 call!362420)))

(declare-fun c!888867 () Bool)

(assert (=> b!5166163 (= c!888867 (isEmpty!32127 (_1!35169 lt!2124951)))))

(assert (= (and d!1666532 c!888863) b!5166153))

(assert (= (and d!1666532 (not c!888863)) b!5166161))

(assert (= (and b!5166161 c!888866) b!5166157))

(assert (= (and b!5166161 (not c!888866)) b!5166158))

(assert (= (and b!5166157 c!888865) b!5166156))

(assert (= (and b!5166157 (not c!888865)) b!5166151))

(assert (= (and b!5166158 c!888864) b!5166150))

(assert (= (and b!5166158 (not c!888864)) b!5166152))

(assert (= (and b!5166158 c!888862) b!5166163))

(assert (= (and b!5166158 (not c!888862)) b!5166160))

(assert (= (and b!5166163 c!888867) b!5166159))

(assert (= (and b!5166163 (not c!888867)) b!5166154))

(assert (= (or b!5166163 b!5166160) bm!362415))

(assert (= (or b!5166163 b!5166160) bm!362422))

(assert (= (or b!5166163 b!5166160) bm!362418))

(assert (= (or b!5166163 b!5166160) bm!362420))

(assert (= (or b!5166157 b!5166150) bm!362419))

(assert (= (or b!5166157 b!5166158) bm!362417))

(assert (= (or b!5166157 b!5166150) bm!362421))

(assert (= (or b!5166157 b!5166150) bm!362416))

(assert (= (and d!1666532 res!2196128) b!5166162))

(assert (= (and b!5166162 (not res!2196127)) b!5166155))

(declare-fun m!6216538 () Bool)

(assert (=> bm!362418 m!6216538))

(declare-fun m!6216540 () Bool)

(assert (=> d!1666532 m!6216540))

(declare-fun m!6216542 () Bool)

(assert (=> d!1666532 m!6216542))

(assert (=> d!1666532 m!6216450))

(declare-fun m!6216544 () Bool)

(assert (=> d!1666532 m!6216544))

(declare-fun m!6216546 () Bool)

(assert (=> d!1666532 m!6216546))

(declare-fun m!6216548 () Bool)

(assert (=> d!1666532 m!6216548))

(declare-fun m!6216550 () Bool)

(assert (=> d!1666532 m!6216550))

(assert (=> d!1666532 m!6216546))

(declare-fun m!6216552 () Bool)

(assert (=> bm!362420 m!6216552))

(assert (=> bm!362421 m!6216438))

(declare-fun m!6216554 () Bool)

(assert (=> bm!362417 m!6216554))

(declare-fun m!6216556 () Bool)

(assert (=> b!5166163 m!6216556))

(assert (=> bm!362419 m!6216436))

(declare-fun m!6216558 () Bool)

(assert (=> b!5166155 m!6216558))

(assert (=> b!5166155 m!6216448))

(assert (=> bm!362416 m!6216440))

(declare-fun m!6216560 () Bool)

(assert (=> bm!362422 m!6216560))

(declare-fun m!6216562 () Bool)

(assert (=> b!5166162 m!6216562))

(declare-fun m!6216564 () Bool)

(assert (=> bm!362415 m!6216564))

(declare-fun m!6216566 () Bool)

(assert (=> b!5166158 m!6216566))

(declare-fun m!6216568 () Bool)

(assert (=> b!5166158 m!6216568))

(declare-fun m!6216570 () Bool)

(assert (=> b!5166158 m!6216570))

(declare-fun m!6216572 () Bool)

(assert (=> b!5166158 m!6216572))

(assert (=> b!5166158 m!6216560))

(assert (=> b!5166158 m!6216570))

(assert (=> b!5166158 m!6216450))

(assert (=> b!5166158 m!6216458))

(assert (=> b!5166158 m!6216452))

(declare-fun m!6216574 () Bool)

(assert (=> b!5166158 m!6216574))

(assert (=> b!5166158 m!6216448))

(declare-fun m!6216576 () Bool)

(assert (=> b!5166158 m!6216576))

(assert (=> b!5166158 m!6216450))

(declare-fun m!6216578 () Bool)

(assert (=> b!5166158 m!6216578))

(assert (=> b!5166158 m!6216564))

(assert (=> b!5166158 m!6216566))

(declare-fun m!6216580 () Bool)

(assert (=> b!5166158 m!6216580))

(assert (=> b!5166036 d!1666532))

(declare-fun d!1666548 () Bool)

(declare-fun lt!2124965 () Int)

(assert (=> d!1666548 (>= lt!2124965 0)))

(declare-fun e!3219016 () Int)

(assert (=> d!1666548 (= lt!2124965 e!3219016)))

(declare-fun c!888868 () Bool)

(assert (=> d!1666548 (= c!888868 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666548 (= (size!39625 testedP!294) lt!2124965)))

(declare-fun b!5166164 () Bool)

(assert (=> b!5166164 (= e!3219016 0)))

(declare-fun b!5166165 () Bool)

(assert (=> b!5166165 (= e!3219016 (+ 1 (size!39625 (t!373286 testedP!294))))))

(assert (= (and d!1666548 c!888868) b!5166164))

(assert (= (and d!1666548 (not c!888868)) b!5166165))

(declare-fun m!6216582 () Bool)

(assert (=> b!5166165 m!6216582))

(assert (=> b!5166036 d!1666548))

(declare-fun d!1666550 () Bool)

(assert (=> d!1666550 (isPrefix!5722 input!5817 input!5817)))

(declare-fun lt!2124968 () Unit!151462)

(declare-fun choose!38206 (List!60133 List!60133) Unit!151462)

(assert (=> d!1666550 (= lt!2124968 (choose!38206 input!5817 input!5817))))

(assert (=> d!1666550 (= (lemmaIsPrefixRefl!3729 input!5817 input!5817) lt!2124968)))

(declare-fun bs!1202819 () Bool)

(assert (= bs!1202819 d!1666550))

(assert (=> bs!1202819 m!6216438))

(declare-fun m!6216584 () Bool)

(assert (=> bs!1202819 m!6216584))

(assert (=> b!5166032 d!1666550))

(declare-fun b!5166176 () Bool)

(declare-fun e!3219024 () Bool)

(assert (=> b!5166176 (= e!3219024 (isPrefix!5722 (tail!10124 input!5817) (tail!10124 input!5817)))))

(declare-fun b!5166177 () Bool)

(declare-fun e!3219025 () Bool)

(assert (=> b!5166177 (= e!3219025 (>= (size!39625 input!5817) (size!39625 input!5817)))))

(declare-fun d!1666552 () Bool)

(assert (=> d!1666552 e!3219025))

(declare-fun res!2196137 () Bool)

(assert (=> d!1666552 (=> res!2196137 e!3219025)))

(declare-fun lt!2124971 () Bool)

(assert (=> d!1666552 (= res!2196137 (not lt!2124971))))

(declare-fun e!3219023 () Bool)

(assert (=> d!1666552 (= lt!2124971 e!3219023)))

(declare-fun res!2196140 () Bool)

(assert (=> d!1666552 (=> res!2196140 e!3219023)))

(assert (=> d!1666552 (= res!2196140 ((_ is Nil!60009) input!5817))))

(assert (=> d!1666552 (= (isPrefix!5722 input!5817 input!5817) lt!2124971)))

(declare-fun b!5166174 () Bool)

(assert (=> b!5166174 (= e!3219023 e!3219024)))

(declare-fun res!2196138 () Bool)

(assert (=> b!5166174 (=> (not res!2196138) (not e!3219024))))

(assert (=> b!5166174 (= res!2196138 (not ((_ is Nil!60009) input!5817)))))

(declare-fun b!5166175 () Bool)

(declare-fun res!2196139 () Bool)

(assert (=> b!5166175 (=> (not res!2196139) (not e!3219024))))

(assert (=> b!5166175 (= res!2196139 (= (head!11013 input!5817) (head!11013 input!5817)))))

(assert (= (and d!1666552 (not res!2196140)) b!5166174))

(assert (= (and b!5166174 res!2196138) b!5166175))

(assert (= (and b!5166175 res!2196139) b!5166176))

(assert (= (and d!1666552 (not res!2196137)) b!5166177))

(assert (=> b!5166176 m!6216478))

(assert (=> b!5166176 m!6216478))

(assert (=> b!5166176 m!6216478))

(assert (=> b!5166176 m!6216478))

(declare-fun m!6216586 () Bool)

(assert (=> b!5166176 m!6216586))

(assert (=> b!5166177 m!6216452))

(assert (=> b!5166177 m!6216452))

(declare-fun m!6216588 () Bool)

(assert (=> b!5166175 m!6216588))

(assert (=> b!5166175 m!6216588))

(assert (=> b!5166032 d!1666552))

(declare-fun d!1666554 () Bool)

(assert (=> d!1666554 (= input!5817 testedP!294)))

(declare-fun lt!2124974 () Unit!151462)

(declare-fun choose!38207 (List!60133 List!60133 List!60133) Unit!151462)

(assert (=> d!1666554 (= lt!2124974 (choose!38207 input!5817 testedP!294 input!5817))))

(assert (=> d!1666554 (isPrefix!5722 input!5817 input!5817)))

(assert (=> d!1666554 (= (lemmaIsPrefixSameLengthThenSameList!1371 input!5817 testedP!294 input!5817) lt!2124974)))

(declare-fun bs!1202820 () Bool)

(assert (= bs!1202820 d!1666554))

(declare-fun m!6216590 () Bool)

(assert (=> bs!1202820 m!6216590))

(assert (=> bs!1202820 m!6216438))

(assert (=> b!5166032 d!1666554))

(declare-fun d!1666556 () Bool)

(declare-fun c!888871 () Bool)

(assert (=> d!1666556 (= c!888871 ((_ is Cons!60009) testedP!294))))

(declare-fun e!3219028 () (InoxSet Context!7946))

(assert (=> d!1666556 (= (derivationZipper!212 baseZ!62 testedP!294) e!3219028)))

(declare-fun b!5166182 () Bool)

(assert (=> b!5166182 (= e!3219028 (derivationZipper!212 (derivationStepZipper!947 baseZ!62 (h!66457 testedP!294)) (t!373286 testedP!294)))))

(declare-fun b!5166183 () Bool)

(assert (=> b!5166183 (= e!3219028 baseZ!62)))

(assert (= (and d!1666556 c!888871) b!5166182))

(assert (= (and d!1666556 (not c!888871)) b!5166183))

(declare-fun m!6216592 () Bool)

(assert (=> b!5166182 m!6216592))

(assert (=> b!5166182 m!6216592))

(declare-fun m!6216594 () Bool)

(assert (=> b!5166182 m!6216594))

(assert (=> b!5166037 d!1666556))

(declare-fun d!1666558 () Bool)

(assert (=> d!1666558 (<= (size!39625 testedP!294) (size!39625 input!5817))))

(declare-fun lt!2124977 () Unit!151462)

(declare-fun choose!38208 (List!60133 List!60133) Unit!151462)

(assert (=> d!1666558 (= lt!2124977 (choose!38208 testedP!294 input!5817))))

(assert (=> d!1666558 (isPrefix!5722 testedP!294 input!5817)))

(assert (=> d!1666558 (= (lemmaIsPrefixThenSmallerEqSize!885 testedP!294 input!5817) lt!2124977)))

(declare-fun bs!1202821 () Bool)

(assert (= bs!1202821 d!1666558))

(assert (=> bs!1202821 m!6216448))

(assert (=> bs!1202821 m!6216452))

(declare-fun m!6216596 () Bool)

(assert (=> bs!1202821 m!6216596))

(assert (=> bs!1202821 m!6216444))

(assert (=> b!5166033 d!1666558))

(declare-fun d!1666560 () Bool)

(declare-fun lambda!257790 () Int)

(declare-fun forall!14107 (List!60134 Int) Bool)

(assert (=> d!1666560 (= (inv!79719 setElem!31747) (forall!14107 (exprs!4473 setElem!31747) lambda!257790))))

(declare-fun bs!1202825 () Bool)

(assert (= bs!1202825 d!1666560))

(declare-fun m!6216610 () Bool)

(assert (=> bs!1202825 m!6216610))

(assert (=> setNonEmpty!31748 d!1666560))

(declare-fun bs!1202826 () Bool)

(declare-fun d!1666566 () Bool)

(assert (= bs!1202826 (and d!1666566 d!1666560)))

(declare-fun lambda!257791 () Int)

(assert (=> bs!1202826 (= lambda!257791 lambda!257790)))

(assert (=> d!1666566 (= (inv!79719 setElem!31748) (forall!14107 (exprs!4473 setElem!31748) lambda!257791))))

(declare-fun bs!1202827 () Bool)

(assert (= bs!1202827 d!1666566))

(declare-fun m!6216612 () Bool)

(assert (=> bs!1202827 m!6216612))

(assert (=> setNonEmpty!31747 d!1666566))

(declare-fun b!5166210 () Bool)

(declare-fun e!3219045 () Bool)

(assert (=> b!5166210 (= e!3219045 (isPrefix!5722 (tail!10124 testedP!294) (tail!10124 input!5817)))))

(declare-fun b!5166211 () Bool)

(declare-fun e!3219046 () Bool)

(assert (=> b!5166211 (= e!3219046 (>= (size!39625 input!5817) (size!39625 testedP!294)))))

(declare-fun d!1666568 () Bool)

(assert (=> d!1666568 e!3219046))

(declare-fun res!2196141 () Bool)

(assert (=> d!1666568 (=> res!2196141 e!3219046)))

(declare-fun lt!2124978 () Bool)

(assert (=> d!1666568 (= res!2196141 (not lt!2124978))))

(declare-fun e!3219044 () Bool)

(assert (=> d!1666568 (= lt!2124978 e!3219044)))

(declare-fun res!2196144 () Bool)

(assert (=> d!1666568 (=> res!2196144 e!3219044)))

(assert (=> d!1666568 (= res!2196144 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666568 (= (isPrefix!5722 testedP!294 input!5817) lt!2124978)))

(declare-fun b!5166208 () Bool)

(assert (=> b!5166208 (= e!3219044 e!3219045)))

(declare-fun res!2196142 () Bool)

(assert (=> b!5166208 (=> (not res!2196142) (not e!3219045))))

(assert (=> b!5166208 (= res!2196142 (not ((_ is Nil!60009) input!5817)))))

(declare-fun b!5166209 () Bool)

(declare-fun res!2196143 () Bool)

(assert (=> b!5166209 (=> (not res!2196143) (not e!3219045))))

(assert (=> b!5166209 (= res!2196143 (= (head!11013 testedP!294) (head!11013 input!5817)))))

(assert (= (and d!1666568 (not res!2196144)) b!5166208))

(assert (= (and b!5166208 res!2196142) b!5166209))

(assert (= (and b!5166209 res!2196143) b!5166210))

(assert (= (and d!1666568 (not res!2196141)) b!5166211))

(declare-fun m!6216614 () Bool)

(assert (=> b!5166210 m!6216614))

(assert (=> b!5166210 m!6216478))

(assert (=> b!5166210 m!6216614))

(assert (=> b!5166210 m!6216478))

(declare-fun m!6216616 () Bool)

(assert (=> b!5166210 m!6216616))

(assert (=> b!5166211 m!6216452))

(assert (=> b!5166211 m!6216448))

(declare-fun m!6216618 () Bool)

(assert (=> b!5166209 m!6216618))

(assert (=> b!5166209 m!6216588))

(assert (=> start!546552 d!1666568))

(declare-fun b!5166216 () Bool)

(declare-fun e!3219049 () Bool)

(declare-fun tp!1449382 () Bool)

(assert (=> b!5166216 (= e!3219049 (and tp_is_empty!38431 tp!1449382))))

(assert (=> b!5166035 (= tp!1449358 e!3219049)))

(assert (= (and b!5166035 ((_ is Cons!60009) (t!373286 testedP!294))) b!5166216))

(declare-fun b!5166217 () Bool)

(declare-fun e!3219050 () Bool)

(declare-fun tp!1449383 () Bool)

(assert (=> b!5166217 (= e!3219050 (and tp_is_empty!38431 tp!1449383))))

(assert (=> b!5166031 (= tp!1449359 e!3219050)))

(assert (= (and b!5166031 ((_ is Cons!60009) (t!373286 input!5817))) b!5166217))

(declare-fun b!5166222 () Bool)

(declare-fun e!3219053 () Bool)

(declare-fun tp!1449388 () Bool)

(declare-fun tp!1449389 () Bool)

(assert (=> b!5166222 (= e!3219053 (and tp!1449388 tp!1449389))))

(assert (=> b!5166029 (= tp!1449357 e!3219053)))

(assert (= (and b!5166029 ((_ is Cons!60010) (exprs!4473 setElem!31748))) b!5166222))

(declare-fun condSetEmpty!31755 () Bool)

(assert (=> setNonEmpty!31748 (= condSetEmpty!31755 (= setRest!31747 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31755 () Bool)

(assert (=> setNonEmpty!31748 (= tp!1449355 setRes!31755)))

(declare-fun setIsEmpty!31755 () Bool)

(assert (=> setIsEmpty!31755 setRes!31755))

(declare-fun setNonEmpty!31755 () Bool)

(declare-fun e!3219056 () Bool)

(declare-fun setElem!31755 () Context!7946)

(declare-fun tp!1449395 () Bool)

(assert (=> setNonEmpty!31755 (= setRes!31755 (and tp!1449395 (inv!79719 setElem!31755) e!3219056))))

(declare-fun setRest!31755 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31755 (= setRest!31747 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31755 true) setRest!31755))))

(declare-fun b!5166227 () Bool)

(declare-fun tp!1449394 () Bool)

(assert (=> b!5166227 (= e!3219056 tp!1449394)))

(assert (= (and setNonEmpty!31748 condSetEmpty!31755) setIsEmpty!31755))

(assert (= (and setNonEmpty!31748 (not condSetEmpty!31755)) setNonEmpty!31755))

(assert (= setNonEmpty!31755 b!5166227))

(declare-fun m!6216620 () Bool)

(assert (=> setNonEmpty!31755 m!6216620))

(declare-fun condSetEmpty!31756 () Bool)

(assert (=> setNonEmpty!31747 (= condSetEmpty!31756 (= setRest!31748 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31756 () Bool)

(assert (=> setNonEmpty!31747 (= tp!1449354 setRes!31756)))

(declare-fun setIsEmpty!31756 () Bool)

(assert (=> setIsEmpty!31756 setRes!31756))

(declare-fun e!3219057 () Bool)

(declare-fun setNonEmpty!31756 () Bool)

(declare-fun tp!1449397 () Bool)

(declare-fun setElem!31756 () Context!7946)

(assert (=> setNonEmpty!31756 (= setRes!31756 (and tp!1449397 (inv!79719 setElem!31756) e!3219057))))

(declare-fun setRest!31756 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31756 (= setRest!31748 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31756 true) setRest!31756))))

(declare-fun b!5166228 () Bool)

(declare-fun tp!1449396 () Bool)

(assert (=> b!5166228 (= e!3219057 tp!1449396)))

(assert (= (and setNonEmpty!31747 condSetEmpty!31756) setIsEmpty!31756))

(assert (= (and setNonEmpty!31747 (not condSetEmpty!31756)) setNonEmpty!31756))

(assert (= setNonEmpty!31756 b!5166228))

(declare-fun m!6216622 () Bool)

(assert (=> setNonEmpty!31756 m!6216622))

(declare-fun b!5166229 () Bool)

(declare-fun e!3219058 () Bool)

(declare-fun tp!1449398 () Bool)

(declare-fun tp!1449399 () Bool)

(assert (=> b!5166229 (= e!3219058 (and tp!1449398 tp!1449399))))

(assert (=> b!5166034 (= tp!1449356 e!3219058)))

(assert (= (and b!5166034 ((_ is Cons!60010) (exprs!4473 setElem!31747))) b!5166229))

(check-sat (not b!5166210) (not b!5166051) (not bm!362418) (not d!1666566) tp_is_empty!38431 (not b!5166216) (not b!5166217) (not bm!362416) (not setNonEmpty!31755) (not setNonEmpty!31756) (not d!1666532) (not d!1666522) (not d!1666554) (not bm!362420) (not b!5166064) (not b!5166228) (not bm!362421) (not bm!362422) (not bm!362417) (not b!5166209) (not b!5166182) (not d!1666550) (not d!1666558) (not bm!362415) (not b!5166158) (not b!5166165) (not b!5166175) (not b!5166155) (not b!5166163) (not b!5166177) (not b!5166162) (not b!5166211) (not bm!362419) (not b!5166229) (not d!1666560) (not b!5166222) (not b!5166176) (not b!5166227))
(check-sat)
(get-model)

(assert (=> b!5166158 d!1666520))

(declare-fun b!5166273 () Bool)

(declare-fun lt!2125017 () List!60133)

(declare-fun e!3219084 () Bool)

(assert (=> b!5166273 (= e!3219084 (or (not (= (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009) Nil!60009)) (= lt!2125017 testedP!294)))))

(declare-fun b!5166272 () Bool)

(declare-fun res!2196162 () Bool)

(assert (=> b!5166272 (=> (not res!2196162) (not e!3219084))))

(assert (=> b!5166272 (= res!2196162 (= (size!39625 lt!2125017) (+ (size!39625 testedP!294) (size!39625 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)))))))

(declare-fun d!1666582 () Bool)

(assert (=> d!1666582 e!3219084))

(declare-fun res!2196161 () Bool)

(assert (=> d!1666582 (=> (not res!2196161) (not e!3219084))))

(declare-fun content!10631 (List!60133) (InoxSet C!29448))

(assert (=> d!1666582 (= res!2196161 (= (content!10631 lt!2125017) ((_ map or) (content!10631 testedP!294) (content!10631 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)))))))

(declare-fun e!3219083 () List!60133)

(assert (=> d!1666582 (= lt!2125017 e!3219083)))

(declare-fun c!888896 () Bool)

(assert (=> d!1666582 (= c!888896 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666582 (= (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)) lt!2125017)))

(declare-fun b!5166270 () Bool)

(assert (=> b!5166270 (= e!3219083 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009))))

(declare-fun b!5166271 () Bool)

(assert (=> b!5166271 (= e!3219083 (Cons!60009 (h!66457 testedP!294) (++!13113 (t!373286 testedP!294) (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009))))))

(assert (= (and d!1666582 c!888896) b!5166270))

(assert (= (and d!1666582 (not c!888896)) b!5166271))

(assert (= (and d!1666582 res!2196161) b!5166272))

(assert (= (and b!5166272 res!2196162) b!5166273))

(declare-fun m!6216690 () Bool)

(assert (=> b!5166272 m!6216690))

(assert (=> b!5166272 m!6216448))

(declare-fun m!6216694 () Bool)

(assert (=> b!5166272 m!6216694))

(declare-fun m!6216696 () Bool)

(assert (=> d!1666582 m!6216696))

(declare-fun m!6216700 () Bool)

(assert (=> d!1666582 m!6216700))

(declare-fun m!6216702 () Bool)

(assert (=> d!1666582 m!6216702))

(declare-fun m!6216706 () Bool)

(assert (=> b!5166271 m!6216706))

(assert (=> b!5166158 d!1666582))

(assert (=> b!5166158 d!1666558))

(assert (=> b!5166158 d!1666522))

(declare-fun lt!2125020 () List!60133)

(declare-fun b!5166281 () Bool)

(declare-fun e!3219088 () Bool)

(assert (=> b!5166281 (= e!3219088 (or (not (= lt!2124947 Nil!60009)) (= lt!2125020 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009)))))))

(declare-fun b!5166280 () Bool)

(declare-fun res!2196164 () Bool)

(assert (=> b!5166280 (=> (not res!2196164) (not e!3219088))))

(assert (=> b!5166280 (= res!2196164 (= (size!39625 lt!2125020) (+ (size!39625 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009))) (size!39625 lt!2124947))))))

(declare-fun d!1666608 () Bool)

(assert (=> d!1666608 e!3219088))

(declare-fun res!2196163 () Bool)

(assert (=> d!1666608 (=> (not res!2196163) (not e!3219088))))

(assert (=> d!1666608 (= res!2196163 (= (content!10631 lt!2125020) ((_ map or) (content!10631 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009))) (content!10631 lt!2124947))))))

(declare-fun e!3219087 () List!60133)

(assert (=> d!1666608 (= lt!2125020 e!3219087)))

(declare-fun c!888899 () Bool)

(assert (=> d!1666608 (= c!888899 ((_ is Nil!60009) (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009))))))

(assert (=> d!1666608 (= (++!13113 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009)) lt!2124947) lt!2125020)))

(declare-fun b!5166278 () Bool)

(assert (=> b!5166278 (= e!3219087 lt!2124947)))

(declare-fun b!5166279 () Bool)

(assert (=> b!5166279 (= e!3219087 (Cons!60009 (h!66457 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009))) (++!13113 (t!373286 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009))) lt!2124947)))))

(assert (= (and d!1666608 c!888899) b!5166278))

(assert (= (and d!1666608 (not c!888899)) b!5166279))

(assert (= (and d!1666608 res!2196163) b!5166280))

(assert (= (and b!5166280 res!2196164) b!5166281))

(declare-fun m!6216710 () Bool)

(assert (=> b!5166280 m!6216710))

(assert (=> b!5166280 m!6216566))

(declare-fun m!6216712 () Bool)

(assert (=> b!5166280 m!6216712))

(declare-fun m!6216714 () Bool)

(assert (=> b!5166280 m!6216714))

(declare-fun m!6216716 () Bool)

(assert (=> d!1666608 m!6216716))

(assert (=> d!1666608 m!6216566))

(declare-fun m!6216718 () Bool)

(assert (=> d!1666608 m!6216718))

(declare-fun m!6216720 () Bool)

(assert (=> d!1666608 m!6216720))

(declare-fun m!6216722 () Bool)

(assert (=> b!5166279 m!6216722))

(assert (=> b!5166158 d!1666608))

(declare-fun d!1666614 () Bool)

(assert (=> d!1666614 (= (head!11013 (getSuffix!3372 input!5817 testedP!294)) (h!66457 (getSuffix!3372 input!5817 testedP!294)))))

(assert (=> b!5166158 d!1666614))

(declare-fun b!5166285 () Bool)

(declare-fun e!3219090 () Bool)

(declare-fun lt!2125021 () List!60133)

(assert (=> b!5166285 (= e!3219090 (or (not (= (Cons!60009 (head!11013 lt!2124777) Nil!60009) Nil!60009)) (= lt!2125021 testedP!294)))))

(declare-fun b!5166284 () Bool)

(declare-fun res!2196166 () Bool)

(assert (=> b!5166284 (=> (not res!2196166) (not e!3219090))))

(assert (=> b!5166284 (= res!2196166 (= (size!39625 lt!2125021) (+ (size!39625 testedP!294) (size!39625 (Cons!60009 (head!11013 lt!2124777) Nil!60009)))))))

(declare-fun d!1666620 () Bool)

(assert (=> d!1666620 e!3219090))

(declare-fun res!2196165 () Bool)

(assert (=> d!1666620 (=> (not res!2196165) (not e!3219090))))

(assert (=> d!1666620 (= res!2196165 (= (content!10631 lt!2125021) ((_ map or) (content!10631 testedP!294) (content!10631 (Cons!60009 (head!11013 lt!2124777) Nil!60009)))))))

(declare-fun e!3219089 () List!60133)

(assert (=> d!1666620 (= lt!2125021 e!3219089)))

(declare-fun c!888900 () Bool)

(assert (=> d!1666620 (= c!888900 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666620 (= (++!13113 testedP!294 (Cons!60009 (head!11013 lt!2124777) Nil!60009)) lt!2125021)))

(declare-fun b!5166282 () Bool)

(assert (=> b!5166282 (= e!3219089 (Cons!60009 (head!11013 lt!2124777) Nil!60009))))

(declare-fun b!5166283 () Bool)

(assert (=> b!5166283 (= e!3219089 (Cons!60009 (h!66457 testedP!294) (++!13113 (t!373286 testedP!294) (Cons!60009 (head!11013 lt!2124777) Nil!60009))))))

(assert (= (and d!1666620 c!888900) b!5166282))

(assert (= (and d!1666620 (not c!888900)) b!5166283))

(assert (= (and d!1666620 res!2196165) b!5166284))

(assert (= (and b!5166284 res!2196166) b!5166285))

(declare-fun m!6216724 () Bool)

(assert (=> b!5166284 m!6216724))

(assert (=> b!5166284 m!6216448))

(declare-fun m!6216726 () Bool)

(assert (=> b!5166284 m!6216726))

(declare-fun m!6216728 () Bool)

(assert (=> d!1666620 m!6216728))

(assert (=> d!1666620 m!6216700))

(declare-fun m!6216730 () Bool)

(assert (=> d!1666620 m!6216730))

(declare-fun m!6216732 () Bool)

(assert (=> b!5166283 m!6216732))

(assert (=> b!5166158 d!1666620))

(assert (=> b!5166158 d!1666548))

(declare-fun d!1666622 () Bool)

(assert (=> d!1666622 (isPrefix!5722 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)) input!5817)))

(declare-fun lt!2125027 () Unit!151462)

(declare-fun choose!38211 (List!60133 List!60133) Unit!151462)

(assert (=> d!1666622 (= lt!2125027 (choose!38211 testedP!294 input!5817))))

(assert (=> d!1666622 (isPrefix!5722 testedP!294 input!5817)))

(assert (=> d!1666622 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1037 testedP!294 input!5817) lt!2125027)))

(declare-fun bs!1202848 () Bool)

(assert (= bs!1202848 d!1666622))

(assert (=> bs!1202848 m!6216570))

(assert (=> bs!1202848 m!6216572))

(declare-fun m!6216752 () Bool)

(assert (=> bs!1202848 m!6216752))

(assert (=> bs!1202848 m!6216444))

(assert (=> bs!1202848 m!6216450))

(assert (=> bs!1202848 m!6216570))

(assert (=> bs!1202848 m!6216450))

(assert (=> bs!1202848 m!6216578))

(assert (=> b!5166158 d!1666622))

(declare-fun d!1666636 () Bool)

(assert (=> d!1666636 (= (tail!10124 lt!2124777) (t!373286 lt!2124777))))

(assert (=> b!5166158 d!1666636))

(declare-fun lt!2125030 () List!60133)

(declare-fun b!5166307 () Bool)

(declare-fun e!3219102 () Bool)

(assert (=> b!5166307 (= e!3219102 (or (not (= (Cons!60009 lt!2124962 Nil!60009) Nil!60009)) (= lt!2125030 testedP!294)))))

(declare-fun b!5166306 () Bool)

(declare-fun res!2196178 () Bool)

(assert (=> b!5166306 (=> (not res!2196178) (not e!3219102))))

(assert (=> b!5166306 (= res!2196178 (= (size!39625 lt!2125030) (+ (size!39625 testedP!294) (size!39625 (Cons!60009 lt!2124962 Nil!60009)))))))

(declare-fun d!1666640 () Bool)

(assert (=> d!1666640 e!3219102))

(declare-fun res!2196177 () Bool)

(assert (=> d!1666640 (=> (not res!2196177) (not e!3219102))))

(assert (=> d!1666640 (= res!2196177 (= (content!10631 lt!2125030) ((_ map or) (content!10631 testedP!294) (content!10631 (Cons!60009 lt!2124962 Nil!60009)))))))

(declare-fun e!3219101 () List!60133)

(assert (=> d!1666640 (= lt!2125030 e!3219101)))

(declare-fun c!888907 () Bool)

(assert (=> d!1666640 (= c!888907 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666640 (= (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009)) lt!2125030)))

(declare-fun b!5166304 () Bool)

(assert (=> b!5166304 (= e!3219101 (Cons!60009 lt!2124962 Nil!60009))))

(declare-fun b!5166305 () Bool)

(assert (=> b!5166305 (= e!3219101 (Cons!60009 (h!66457 testedP!294) (++!13113 (t!373286 testedP!294) (Cons!60009 lt!2124962 Nil!60009))))))

(assert (= (and d!1666640 c!888907) b!5166304))

(assert (= (and d!1666640 (not c!888907)) b!5166305))

(assert (= (and d!1666640 res!2196177) b!5166306))

(assert (= (and b!5166306 res!2196178) b!5166307))

(declare-fun m!6216774 () Bool)

(assert (=> b!5166306 m!6216774))

(assert (=> b!5166306 m!6216448))

(declare-fun m!6216776 () Bool)

(assert (=> b!5166306 m!6216776))

(declare-fun m!6216778 () Bool)

(assert (=> d!1666640 m!6216778))

(assert (=> d!1666640 m!6216700))

(declare-fun m!6216780 () Bool)

(assert (=> d!1666640 m!6216780))

(declare-fun m!6216782 () Bool)

(assert (=> b!5166305 m!6216782))

(assert (=> b!5166158 d!1666640))

(declare-fun d!1666644 () Bool)

(assert (=> d!1666644 (= (++!13113 (++!13113 testedP!294 (Cons!60009 lt!2124962 Nil!60009)) lt!2124947) input!5817)))

(declare-fun lt!2125036 () Unit!151462)

(declare-fun choose!38212 (List!60133 C!29448 List!60133 List!60133) Unit!151462)

(assert (=> d!1666644 (= lt!2125036 (choose!38212 testedP!294 lt!2124962 lt!2124947 input!5817))))

(assert (=> d!1666644 (= (++!13113 testedP!294 (Cons!60009 lt!2124962 lt!2124947)) input!5817)))

(assert (=> d!1666644 (= (lemmaMoveElementToOtherListKeepsConcatEq!1562 testedP!294 lt!2124962 lt!2124947 input!5817) lt!2125036)))

(declare-fun bs!1202849 () Bool)

(assert (= bs!1202849 d!1666644))

(assert (=> bs!1202849 m!6216566))

(assert (=> bs!1202849 m!6216566))

(assert (=> bs!1202849 m!6216568))

(declare-fun m!6216798 () Bool)

(assert (=> bs!1202849 m!6216798))

(declare-fun m!6216800 () Bool)

(assert (=> bs!1202849 m!6216800))

(assert (=> b!5166158 d!1666644))

(declare-fun b!5166314 () Bool)

(declare-fun e!3219106 () Bool)

(assert (=> b!5166314 (= e!3219106 (isPrefix!5722 (tail!10124 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009))) (tail!10124 input!5817)))))

(declare-fun b!5166315 () Bool)

(declare-fun e!3219107 () Bool)

(assert (=> b!5166315 (= e!3219107 (>= (size!39625 input!5817) (size!39625 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)))))))

(declare-fun d!1666650 () Bool)

(assert (=> d!1666650 e!3219107))

(declare-fun res!2196181 () Bool)

(assert (=> d!1666650 (=> res!2196181 e!3219107)))

(declare-fun lt!2125037 () Bool)

(assert (=> d!1666650 (= res!2196181 (not lt!2125037))))

(declare-fun e!3219105 () Bool)

(assert (=> d!1666650 (= lt!2125037 e!3219105)))

(declare-fun res!2196184 () Bool)

(assert (=> d!1666650 (=> res!2196184 e!3219105)))

(assert (=> d!1666650 (= res!2196184 ((_ is Nil!60009) (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009))))))

(assert (=> d!1666650 (= (isPrefix!5722 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009)) input!5817) lt!2125037)))

(declare-fun b!5166312 () Bool)

(assert (=> b!5166312 (= e!3219105 e!3219106)))

(declare-fun res!2196182 () Bool)

(assert (=> b!5166312 (=> (not res!2196182) (not e!3219106))))

(assert (=> b!5166312 (= res!2196182 (not ((_ is Nil!60009) input!5817)))))

(declare-fun b!5166313 () Bool)

(declare-fun res!2196183 () Bool)

(assert (=> b!5166313 (=> (not res!2196183) (not e!3219106))))

(assert (=> b!5166313 (= res!2196183 (= (head!11013 (++!13113 testedP!294 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 testedP!294)) Nil!60009))) (head!11013 input!5817)))))

(assert (= (and d!1666650 (not res!2196184)) b!5166312))

(assert (= (and b!5166312 res!2196182) b!5166313))

(assert (= (and b!5166313 res!2196183) b!5166314))

(assert (= (and d!1666650 (not res!2196181)) b!5166315))

(assert (=> b!5166314 m!6216570))

(declare-fun m!6216804 () Bool)

(assert (=> b!5166314 m!6216804))

(assert (=> b!5166314 m!6216478))

(assert (=> b!5166314 m!6216804))

(assert (=> b!5166314 m!6216478))

(declare-fun m!6216806 () Bool)

(assert (=> b!5166314 m!6216806))

(assert (=> b!5166315 m!6216452))

(assert (=> b!5166315 m!6216570))

(declare-fun m!6216808 () Bool)

(assert (=> b!5166315 m!6216808))

(assert (=> b!5166313 m!6216570))

(declare-fun m!6216810 () Bool)

(assert (=> b!5166313 m!6216810))

(assert (=> b!5166313 m!6216588))

(assert (=> b!5166158 d!1666650))

(declare-fun d!1666654 () Bool)

(assert (=> d!1666654 (= (head!11013 lt!2124777) (h!66457 lt!2124777))))

(assert (=> b!5166158 d!1666654))

(assert (=> bm!362421 d!1666552))

(declare-fun bs!1202853 () Bool)

(declare-fun b!5166369 () Bool)

(declare-fun d!1666656 () Bool)

(assert (= bs!1202853 (and b!5166369 d!1666656)))

(declare-fun lambda!257829 () Int)

(declare-fun lambda!257828 () Int)

(assert (=> bs!1202853 (not (= lambda!257829 lambda!257828))))

(declare-fun bs!1202854 () Bool)

(declare-fun b!5166370 () Bool)

(assert (= bs!1202854 (and b!5166370 d!1666656)))

(declare-fun lambda!257830 () Int)

(assert (=> bs!1202854 (not (= lambda!257830 lambda!257828))))

(declare-fun bs!1202855 () Bool)

(assert (= bs!1202855 (and b!5166370 b!5166369)))

(assert (=> bs!1202855 (= lambda!257830 lambda!257829)))

(declare-fun lt!2125089 () Bool)

(declare-datatypes ((Option!14826 0))(
  ( (None!14825) (Some!14825 (v!50854 List!60133)) )
))
(declare-fun isEmpty!32129 (Option!14826) Bool)

(declare-fun getLanguageWitness!995 ((InoxSet Context!7946)) Option!14826)

(assert (=> d!1666656 (= lt!2125089 (isEmpty!32129 (getLanguageWitness!995 z!4581)))))

(declare-fun forall!14109 ((InoxSet Context!7946) Int) Bool)

(assert (=> d!1666656 (= lt!2125089 (forall!14109 z!4581 lambda!257828))))

(declare-fun lt!2125094 () Unit!151462)

(declare-fun e!3219142 () Unit!151462)

(assert (=> d!1666656 (= lt!2125094 e!3219142)))

(declare-fun c!888926 () Bool)

(assert (=> d!1666656 (= c!888926 (not (forall!14109 z!4581 lambda!257828)))))

(assert (=> d!1666656 (= (lostCauseZipper!1314 z!4581) lt!2125089)))

(declare-fun Unit!151474 () Unit!151462)

(assert (=> b!5166369 (= e!3219142 Unit!151474)))

(declare-datatypes ((List!60136 0))(
  ( (Nil!60012) (Cons!60012 (h!66460 Context!7946) (t!373289 List!60136)) )
))
(declare-fun lt!2125092 () List!60136)

(declare-fun call!362447 () List!60136)

(assert (=> b!5166369 (= lt!2125092 call!362447)))

(declare-fun lt!2125088 () Unit!151462)

(declare-fun lemmaNotForallThenExists!461 (List!60136 Int) Unit!151462)

(assert (=> b!5166369 (= lt!2125088 (lemmaNotForallThenExists!461 lt!2125092 lambda!257828))))

(declare-fun call!362446 () Bool)

(assert (=> b!5166369 call!362446))

(declare-fun lt!2125091 () Unit!151462)

(assert (=> b!5166369 (= lt!2125091 lt!2125088)))

(declare-fun bm!362442 () Bool)

(declare-fun lt!2125087 () List!60136)

(declare-fun exists!1893 (List!60136 Int) Bool)

(assert (=> bm!362442 (= call!362446 (exists!1893 (ite c!888926 lt!2125092 lt!2125087) (ite c!888926 lambda!257829 lambda!257830)))))

(declare-fun Unit!151475 () Unit!151462)

(assert (=> b!5166370 (= e!3219142 Unit!151475)))

(assert (=> b!5166370 (= lt!2125087 call!362447)))

(declare-fun lt!2125093 () Unit!151462)

(declare-fun lemmaForallThenNotExists!428 (List!60136 Int) Unit!151462)

(assert (=> b!5166370 (= lt!2125093 (lemmaForallThenNotExists!428 lt!2125087 lambda!257828))))

(assert (=> b!5166370 (not call!362446)))

(declare-fun lt!2125090 () Unit!151462)

(assert (=> b!5166370 (= lt!2125090 lt!2125093)))

(declare-fun bm!362441 () Bool)

(declare-fun toList!8441 ((InoxSet Context!7946)) List!60136)

(assert (=> bm!362441 (= call!362447 (toList!8441 z!4581))))

(assert (= (and d!1666656 c!888926) b!5166369))

(assert (= (and d!1666656 (not c!888926)) b!5166370))

(assert (= (or b!5166369 b!5166370) bm!362441))

(assert (= (or b!5166369 b!5166370) bm!362442))

(declare-fun m!6216910 () Bool)

(assert (=> d!1666656 m!6216910))

(assert (=> d!1666656 m!6216910))

(declare-fun m!6216912 () Bool)

(assert (=> d!1666656 m!6216912))

(declare-fun m!6216914 () Bool)

(assert (=> d!1666656 m!6216914))

(assert (=> d!1666656 m!6216914))

(declare-fun m!6216916 () Bool)

(assert (=> b!5166369 m!6216916))

(declare-fun m!6216918 () Bool)

(assert (=> bm!362442 m!6216918))

(declare-fun m!6216920 () Bool)

(assert (=> bm!362441 m!6216920))

(declare-fun m!6216922 () Bool)

(assert (=> b!5166370 m!6216922))

(assert (=> d!1666532 d!1666656))

(assert (=> d!1666532 d!1666522))

(declare-fun b!5166385 () Bool)

(declare-fun e!3219152 () Bool)

(declare-fun lt!2125095 () List!60133)

(assert (=> b!5166385 (= e!3219152 (or (not (= (_2!35169 lt!2124957) Nil!60009)) (= lt!2125095 (_1!35169 lt!2124957))))))

(declare-fun b!5166384 () Bool)

(declare-fun res!2196206 () Bool)

(assert (=> b!5166384 (=> (not res!2196206) (not e!3219152))))

(assert (=> b!5166384 (= res!2196206 (= (size!39625 lt!2125095) (+ (size!39625 (_1!35169 lt!2124957)) (size!39625 (_2!35169 lt!2124957)))))))

(declare-fun d!1666678 () Bool)

(assert (=> d!1666678 e!3219152))

(declare-fun res!2196205 () Bool)

(assert (=> d!1666678 (=> (not res!2196205) (not e!3219152))))

(assert (=> d!1666678 (= res!2196205 (= (content!10631 lt!2125095) ((_ map or) (content!10631 (_1!35169 lt!2124957)) (content!10631 (_2!35169 lt!2124957)))))))

(declare-fun e!3219151 () List!60133)

(assert (=> d!1666678 (= lt!2125095 e!3219151)))

(declare-fun c!888927 () Bool)

(assert (=> d!1666678 (= c!888927 ((_ is Nil!60009) (_1!35169 lt!2124957)))))

(assert (=> d!1666678 (= (++!13113 (_1!35169 lt!2124957) (_2!35169 lt!2124957)) lt!2125095)))

(declare-fun b!5166382 () Bool)

(assert (=> b!5166382 (= e!3219151 (_2!35169 lt!2124957))))

(declare-fun b!5166383 () Bool)

(assert (=> b!5166383 (= e!3219151 (Cons!60009 (h!66457 (_1!35169 lt!2124957)) (++!13113 (t!373286 (_1!35169 lt!2124957)) (_2!35169 lt!2124957))))))

(assert (= (and d!1666678 c!888927) b!5166382))

(assert (= (and d!1666678 (not c!888927)) b!5166383))

(assert (= (and d!1666678 res!2196205) b!5166384))

(assert (= (and b!5166384 res!2196206) b!5166385))

(declare-fun m!6216924 () Bool)

(assert (=> b!5166384 m!6216924))

(assert (=> b!5166384 m!6216558))

(declare-fun m!6216926 () Bool)

(assert (=> b!5166384 m!6216926))

(declare-fun m!6216928 () Bool)

(assert (=> d!1666678 m!6216928))

(declare-fun m!6216930 () Bool)

(assert (=> d!1666678 m!6216930))

(declare-fun m!6216932 () Bool)

(assert (=> d!1666678 m!6216932))

(declare-fun m!6216934 () Bool)

(assert (=> b!5166383 m!6216934))

(assert (=> d!1666532 d!1666678))

(declare-fun d!1666680 () Bool)

(assert (=> d!1666680 (isPrefix!5722 testedP!294 (++!13113 testedP!294 lt!2124777))))

(declare-fun lt!2125098 () Unit!151462)

(declare-fun choose!38213 (List!60133 List!60133) Unit!151462)

(assert (=> d!1666680 (= lt!2125098 (choose!38213 testedP!294 lt!2124777))))

(assert (=> d!1666680 (= (lemmaConcatTwoListThenFirstIsPrefix!3575 testedP!294 lt!2124777) lt!2125098)))

(declare-fun bs!1202858 () Bool)

(assert (= bs!1202858 d!1666680))

(assert (=> bs!1202858 m!6216546))

(assert (=> bs!1202858 m!6216546))

(assert (=> bs!1202858 m!6216548))

(declare-fun m!6216936 () Bool)

(assert (=> bs!1202858 m!6216936))

(assert (=> d!1666532 d!1666680))

(declare-fun b!5166388 () Bool)

(declare-fun e!3219154 () Bool)

(assert (=> b!5166388 (= e!3219154 (isPrefix!5722 (tail!10124 testedP!294) (tail!10124 (++!13113 testedP!294 lt!2124777))))))

(declare-fun b!5166389 () Bool)

(declare-fun e!3219155 () Bool)

(assert (=> b!5166389 (= e!3219155 (>= (size!39625 (++!13113 testedP!294 lt!2124777)) (size!39625 testedP!294)))))

(declare-fun d!1666682 () Bool)

(assert (=> d!1666682 e!3219155))

(declare-fun res!2196207 () Bool)

(assert (=> d!1666682 (=> res!2196207 e!3219155)))

(declare-fun lt!2125099 () Bool)

(assert (=> d!1666682 (= res!2196207 (not lt!2125099))))

(declare-fun e!3219153 () Bool)

(assert (=> d!1666682 (= lt!2125099 e!3219153)))

(declare-fun res!2196210 () Bool)

(assert (=> d!1666682 (=> res!2196210 e!3219153)))

(assert (=> d!1666682 (= res!2196210 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666682 (= (isPrefix!5722 testedP!294 (++!13113 testedP!294 lt!2124777)) lt!2125099)))

(declare-fun b!5166386 () Bool)

(assert (=> b!5166386 (= e!3219153 e!3219154)))

(declare-fun res!2196208 () Bool)

(assert (=> b!5166386 (=> (not res!2196208) (not e!3219154))))

(assert (=> b!5166386 (= res!2196208 (not ((_ is Nil!60009) (++!13113 testedP!294 lt!2124777))))))

(declare-fun b!5166387 () Bool)

(declare-fun res!2196209 () Bool)

(assert (=> b!5166387 (=> (not res!2196209) (not e!3219154))))

(assert (=> b!5166387 (= res!2196209 (= (head!11013 testedP!294) (head!11013 (++!13113 testedP!294 lt!2124777))))))

(assert (= (and d!1666682 (not res!2196210)) b!5166386))

(assert (= (and b!5166386 res!2196208) b!5166387))

(assert (= (and b!5166387 res!2196209) b!5166388))

(assert (= (and d!1666682 (not res!2196207)) b!5166389))

(assert (=> b!5166388 m!6216614))

(assert (=> b!5166388 m!6216546))

(declare-fun m!6216938 () Bool)

(assert (=> b!5166388 m!6216938))

(assert (=> b!5166388 m!6216614))

(assert (=> b!5166388 m!6216938))

(declare-fun m!6216940 () Bool)

(assert (=> b!5166388 m!6216940))

(assert (=> b!5166389 m!6216546))

(declare-fun m!6216942 () Bool)

(assert (=> b!5166389 m!6216942))

(assert (=> b!5166389 m!6216448))

(assert (=> b!5166387 m!6216618))

(assert (=> b!5166387 m!6216546))

(declare-fun m!6216944 () Bool)

(assert (=> b!5166387 m!6216944))

(assert (=> d!1666532 d!1666682))

(declare-fun d!1666684 () Bool)

(assert (=> d!1666684 (= lt!2124777 lt!2124942)))

(declare-fun lt!2125102 () Unit!151462)

(declare-fun choose!38214 (List!60133 List!60133 List!60133 List!60133 List!60133) Unit!151462)

(assert (=> d!1666684 (= lt!2125102 (choose!38214 testedP!294 lt!2124777 testedP!294 lt!2124942 input!5817))))

(assert (=> d!1666684 (isPrefix!5722 testedP!294 input!5817)))

(assert (=> d!1666684 (= (lemmaSamePrefixThenSameSuffix!2681 testedP!294 lt!2124777 testedP!294 lt!2124942 input!5817) lt!2125102)))

(declare-fun bs!1202859 () Bool)

(assert (= bs!1202859 d!1666684))

(declare-fun m!6216946 () Bool)

(assert (=> bs!1202859 m!6216946))

(assert (=> bs!1202859 m!6216444))

(assert (=> d!1666532 d!1666684))

(declare-fun e!3219157 () Bool)

(declare-fun lt!2125103 () List!60133)

(declare-fun b!5166393 () Bool)

(assert (=> b!5166393 (= e!3219157 (or (not (= lt!2124777 Nil!60009)) (= lt!2125103 testedP!294)))))

(declare-fun b!5166392 () Bool)

(declare-fun res!2196212 () Bool)

(assert (=> b!5166392 (=> (not res!2196212) (not e!3219157))))

(assert (=> b!5166392 (= res!2196212 (= (size!39625 lt!2125103) (+ (size!39625 testedP!294) (size!39625 lt!2124777))))))

(declare-fun d!1666686 () Bool)

(assert (=> d!1666686 e!3219157))

(declare-fun res!2196211 () Bool)

(assert (=> d!1666686 (=> (not res!2196211) (not e!3219157))))

(assert (=> d!1666686 (= res!2196211 (= (content!10631 lt!2125103) ((_ map or) (content!10631 testedP!294) (content!10631 lt!2124777))))))

(declare-fun e!3219156 () List!60133)

(assert (=> d!1666686 (= lt!2125103 e!3219156)))

(declare-fun c!888928 () Bool)

(assert (=> d!1666686 (= c!888928 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666686 (= (++!13113 testedP!294 lt!2124777) lt!2125103)))

(declare-fun b!5166390 () Bool)

(assert (=> b!5166390 (= e!3219156 lt!2124777)))

(declare-fun b!5166391 () Bool)

(assert (=> b!5166391 (= e!3219156 (Cons!60009 (h!66457 testedP!294) (++!13113 (t!373286 testedP!294) lt!2124777)))))

(assert (= (and d!1666686 c!888928) b!5166390))

(assert (= (and d!1666686 (not c!888928)) b!5166391))

(assert (= (and d!1666686 res!2196211) b!5166392))

(assert (= (and b!5166392 res!2196212) b!5166393))

(declare-fun m!6216948 () Bool)

(assert (=> b!5166392 m!6216948))

(assert (=> b!5166392 m!6216448))

(declare-fun m!6216950 () Bool)

(assert (=> b!5166392 m!6216950))

(declare-fun m!6216952 () Bool)

(assert (=> d!1666686 m!6216952))

(assert (=> d!1666686 m!6216700))

(declare-fun m!6216954 () Bool)

(assert (=> d!1666686 m!6216954))

(declare-fun m!6216956 () Bool)

(assert (=> b!5166391 m!6216956))

(assert (=> d!1666532 d!1666686))

(declare-fun d!1666688 () Bool)

(declare-fun c!888929 () Bool)

(assert (=> d!1666688 (= c!888929 ((_ is Cons!60009) (t!373286 testedP!294)))))

(declare-fun e!3219158 () (InoxSet Context!7946))

(assert (=> d!1666688 (= (derivationZipper!212 (derivationStepZipper!947 baseZ!62 (h!66457 testedP!294)) (t!373286 testedP!294)) e!3219158)))

(declare-fun b!5166394 () Bool)

(assert (=> b!5166394 (= e!3219158 (derivationZipper!212 (derivationStepZipper!947 (derivationStepZipper!947 baseZ!62 (h!66457 testedP!294)) (h!66457 (t!373286 testedP!294))) (t!373286 (t!373286 testedP!294))))))

(declare-fun b!5166395 () Bool)

(assert (=> b!5166395 (= e!3219158 (derivationStepZipper!947 baseZ!62 (h!66457 testedP!294)))))

(assert (= (and d!1666688 c!888929) b!5166394))

(assert (= (and d!1666688 (not c!888929)) b!5166395))

(assert (=> b!5166394 m!6216592))

(declare-fun m!6216958 () Bool)

(assert (=> b!5166394 m!6216958))

(assert (=> b!5166394 m!6216958))

(declare-fun m!6216960 () Bool)

(assert (=> b!5166394 m!6216960))

(assert (=> b!5166182 d!1666688))

(declare-fun d!1666690 () Bool)

(assert (=> d!1666690 true))

(declare-fun lambda!257833 () Int)

(declare-fun flatMap!434 ((InoxSet Context!7946) Int) (InoxSet Context!7946))

(assert (=> d!1666690 (= (derivationStepZipper!947 baseZ!62 (h!66457 testedP!294)) (flatMap!434 baseZ!62 lambda!257833))))

(declare-fun bs!1202860 () Bool)

(assert (= bs!1202860 d!1666690))

(declare-fun m!6216962 () Bool)

(assert (=> bs!1202860 m!6216962))

(assert (=> b!5166182 d!1666690))

(declare-fun d!1666692 () Bool)

(declare-fun lt!2125104 () List!60133)

(assert (=> d!1666692 (= (++!13113 (t!373286 testedP!294) lt!2125104) (tail!10124 input!5817))))

(declare-fun e!3219159 () List!60133)

(assert (=> d!1666692 (= lt!2125104 e!3219159)))

(declare-fun c!888932 () Bool)

(assert (=> d!1666692 (= c!888932 ((_ is Cons!60009) (t!373286 testedP!294)))))

(assert (=> d!1666692 (>= (size!39625 (tail!10124 input!5817)) (size!39625 (t!373286 testedP!294)))))

(assert (=> d!1666692 (= (getSuffix!3372 (tail!10124 input!5817) (t!373286 testedP!294)) lt!2125104)))

(declare-fun b!5166398 () Bool)

(assert (=> b!5166398 (= e!3219159 (getSuffix!3372 (tail!10124 (tail!10124 input!5817)) (t!373286 (t!373286 testedP!294))))))

(declare-fun b!5166399 () Bool)

(assert (=> b!5166399 (= e!3219159 (tail!10124 input!5817))))

(assert (= (and d!1666692 c!888932) b!5166398))

(assert (= (and d!1666692 (not c!888932)) b!5166399))

(declare-fun m!6216964 () Bool)

(assert (=> d!1666692 m!6216964))

(assert (=> d!1666692 m!6216478))

(declare-fun m!6216966 () Bool)

(assert (=> d!1666692 m!6216966))

(assert (=> d!1666692 m!6216582))

(assert (=> b!5166398 m!6216478))

(declare-fun m!6216968 () Bool)

(assert (=> b!5166398 m!6216968))

(assert (=> b!5166398 m!6216968))

(declare-fun m!6216970 () Bool)

(assert (=> b!5166398 m!6216970))

(assert (=> b!5166064 d!1666692))

(declare-fun d!1666694 () Bool)

(assert (=> d!1666694 (= (tail!10124 input!5817) (t!373286 input!5817))))

(assert (=> b!5166064 d!1666694))

(declare-fun bs!1202861 () Bool)

(declare-fun d!1666696 () Bool)

(assert (= bs!1202861 (and d!1666696 d!1666560)))

(declare-fun lambda!257834 () Int)

(assert (=> bs!1202861 (= lambda!257834 lambda!257790)))

(declare-fun bs!1202862 () Bool)

(assert (= bs!1202862 (and d!1666696 d!1666566)))

(assert (=> bs!1202862 (= lambda!257834 lambda!257791)))

(assert (=> d!1666696 (= (inv!79719 setElem!31755) (forall!14107 (exprs!4473 setElem!31755) lambda!257834))))

(declare-fun bs!1202863 () Bool)

(assert (= bs!1202863 d!1666696))

(declare-fun m!6216972 () Bool)

(assert (=> bs!1202863 m!6216972))

(assert (=> setNonEmpty!31755 d!1666696))

(assert (=> d!1666550 d!1666552))

(declare-fun d!1666698 () Bool)

(assert (=> d!1666698 (isPrefix!5722 input!5817 input!5817)))

(assert (=> d!1666698 true))

(declare-fun _$45!2317 () Unit!151462)

(assert (=> d!1666698 (= (choose!38206 input!5817 input!5817) _$45!2317)))

(declare-fun bs!1202864 () Bool)

(assert (= bs!1202864 d!1666698))

(assert (=> bs!1202864 m!6216438))

(assert (=> d!1666550 d!1666698))

(declare-fun d!1666700 () Bool)

(declare-fun lt!2125105 () Int)

(assert (=> d!1666700 (>= lt!2125105 0)))

(declare-fun e!3219160 () Int)

(assert (=> d!1666700 (= lt!2125105 e!3219160)))

(declare-fun c!888933 () Bool)

(assert (=> d!1666700 (= c!888933 ((_ is Nil!60009) (_1!35169 lt!2124957)))))

(assert (=> d!1666700 (= (size!39625 (_1!35169 lt!2124957)) lt!2125105)))

(declare-fun b!5166400 () Bool)

(assert (=> b!5166400 (= e!3219160 0)))

(declare-fun b!5166401 () Bool)

(assert (=> b!5166401 (= e!3219160 (+ 1 (size!39625 (t!373286 (_1!35169 lt!2124957)))))))

(assert (= (and d!1666700 c!888933) b!5166400))

(assert (= (and d!1666700 (not c!888933)) b!5166401))

(declare-fun m!6216974 () Bool)

(assert (=> b!5166401 m!6216974))

(assert (=> b!5166155 d!1666700))

(assert (=> b!5166155 d!1666548))

(declare-fun d!1666702 () Bool)

(declare-fun res!2196217 () Bool)

(declare-fun e!3219165 () Bool)

(assert (=> d!1666702 (=> res!2196217 e!3219165)))

(assert (=> d!1666702 (= res!2196217 ((_ is Nil!60010) (exprs!4473 setElem!31748)))))

(assert (=> d!1666702 (= (forall!14107 (exprs!4473 setElem!31748) lambda!257791) e!3219165)))

(declare-fun b!5166406 () Bool)

(declare-fun e!3219166 () Bool)

(assert (=> b!5166406 (= e!3219165 e!3219166)))

(declare-fun res!2196218 () Bool)

(assert (=> b!5166406 (=> (not res!2196218) (not e!3219166))))

(declare-fun dynLambda!23859 (Int Regex!14589) Bool)

(assert (=> b!5166406 (= res!2196218 (dynLambda!23859 lambda!257791 (h!66458 (exprs!4473 setElem!31748))))))

(declare-fun b!5166407 () Bool)

(assert (=> b!5166407 (= e!3219166 (forall!14107 (t!373287 (exprs!4473 setElem!31748)) lambda!257791))))

(assert (= (and d!1666702 (not res!2196217)) b!5166406))

(assert (= (and b!5166406 res!2196218) b!5166407))

(declare-fun b_lambda!200777 () Bool)

(assert (=> (not b_lambda!200777) (not b!5166406)))

(declare-fun m!6216976 () Bool)

(assert (=> b!5166406 m!6216976))

(declare-fun m!6216978 () Bool)

(assert (=> b!5166407 m!6216978))

(assert (=> d!1666566 d!1666702))

(declare-fun d!1666704 () Bool)

(assert (=> d!1666704 (= (isEmpty!32127 (_1!35169 lt!2124951)) ((_ is Nil!60009) (_1!35169 lt!2124951)))))

(assert (=> b!5166163 d!1666704))

(declare-fun b!5166410 () Bool)

(declare-fun e!3219168 () Bool)

(assert (=> b!5166410 (= e!3219168 (isPrefix!5722 (tail!10124 (tail!10124 input!5817)) (tail!10124 (tail!10124 input!5817))))))

(declare-fun b!5166411 () Bool)

(declare-fun e!3219169 () Bool)

(assert (=> b!5166411 (= e!3219169 (>= (size!39625 (tail!10124 input!5817)) (size!39625 (tail!10124 input!5817))))))

(declare-fun d!1666706 () Bool)

(assert (=> d!1666706 e!3219169))

(declare-fun res!2196219 () Bool)

(assert (=> d!1666706 (=> res!2196219 e!3219169)))

(declare-fun lt!2125106 () Bool)

(assert (=> d!1666706 (= res!2196219 (not lt!2125106))))

(declare-fun e!3219167 () Bool)

(assert (=> d!1666706 (= lt!2125106 e!3219167)))

(declare-fun res!2196222 () Bool)

(assert (=> d!1666706 (=> res!2196222 e!3219167)))

(assert (=> d!1666706 (= res!2196222 ((_ is Nil!60009) (tail!10124 input!5817)))))

(assert (=> d!1666706 (= (isPrefix!5722 (tail!10124 input!5817) (tail!10124 input!5817)) lt!2125106)))

(declare-fun b!5166408 () Bool)

(assert (=> b!5166408 (= e!3219167 e!3219168)))

(declare-fun res!2196220 () Bool)

(assert (=> b!5166408 (=> (not res!2196220) (not e!3219168))))

(assert (=> b!5166408 (= res!2196220 (not ((_ is Nil!60009) (tail!10124 input!5817))))))

(declare-fun b!5166409 () Bool)

(declare-fun res!2196221 () Bool)

(assert (=> b!5166409 (=> (not res!2196221) (not e!3219168))))

(assert (=> b!5166409 (= res!2196221 (= (head!11013 (tail!10124 input!5817)) (head!11013 (tail!10124 input!5817))))))

(assert (= (and d!1666706 (not res!2196222)) b!5166408))

(assert (= (and b!5166408 res!2196220) b!5166409))

(assert (= (and b!5166409 res!2196221) b!5166410))

(assert (= (and d!1666706 (not res!2196219)) b!5166411))

(assert (=> b!5166410 m!6216478))

(assert (=> b!5166410 m!6216968))

(assert (=> b!5166410 m!6216478))

(assert (=> b!5166410 m!6216968))

(assert (=> b!5166410 m!6216968))

(assert (=> b!5166410 m!6216968))

(declare-fun m!6216980 () Bool)

(assert (=> b!5166410 m!6216980))

(assert (=> b!5166411 m!6216478))

(assert (=> b!5166411 m!6216966))

(assert (=> b!5166411 m!6216478))

(assert (=> b!5166411 m!6216966))

(assert (=> b!5166409 m!6216478))

(declare-fun m!6216982 () Bool)

(assert (=> b!5166409 m!6216982))

(assert (=> b!5166409 m!6216478))

(assert (=> b!5166409 m!6216982))

(assert (=> b!5166176 d!1666706))

(assert (=> b!5166176 d!1666694))

(declare-fun d!1666708 () Bool)

(assert (=> d!1666708 (= (isEmpty!32127 (_1!35169 lt!2124957)) ((_ is Nil!60009) (_1!35169 lt!2124957)))))

(assert (=> b!5166162 d!1666708))

(assert (=> d!1666558 d!1666548))

(assert (=> d!1666558 d!1666520))

(declare-fun d!1666710 () Bool)

(assert (=> d!1666710 (<= (size!39625 testedP!294) (size!39625 input!5817))))

(assert (=> d!1666710 true))

(declare-fun _$64!667 () Unit!151462)

(assert (=> d!1666710 (= (choose!38208 testedP!294 input!5817) _$64!667)))

(declare-fun bs!1202865 () Bool)

(assert (= bs!1202865 d!1666710))

(assert (=> bs!1202865 m!6216448))

(assert (=> bs!1202865 m!6216452))

(assert (=> d!1666558 d!1666710))

(assert (=> d!1666558 d!1666568))

(declare-fun d!1666712 () Bool)

(assert (=> d!1666712 (= (head!11013 input!5817) (h!66457 input!5817))))

(assert (=> b!5166175 d!1666712))

(assert (=> bm!362422 d!1666654))

(assert (=> b!5166211 d!1666520))

(assert (=> b!5166211 d!1666548))

(declare-fun e!3219171 () Bool)

(declare-fun lt!2125107 () List!60133)

(declare-fun b!5166415 () Bool)

(assert (=> b!5166415 (= e!3219171 (or (not (= lt!2124795 Nil!60009)) (= lt!2125107 testedP!294)))))

(declare-fun b!5166414 () Bool)

(declare-fun res!2196224 () Bool)

(assert (=> b!5166414 (=> (not res!2196224) (not e!3219171))))

(assert (=> b!5166414 (= res!2196224 (= (size!39625 lt!2125107) (+ (size!39625 testedP!294) (size!39625 lt!2124795))))))

(declare-fun d!1666714 () Bool)

(assert (=> d!1666714 e!3219171))

(declare-fun res!2196223 () Bool)

(assert (=> d!1666714 (=> (not res!2196223) (not e!3219171))))

(assert (=> d!1666714 (= res!2196223 (= (content!10631 lt!2125107) ((_ map or) (content!10631 testedP!294) (content!10631 lt!2124795))))))

(declare-fun e!3219170 () List!60133)

(assert (=> d!1666714 (= lt!2125107 e!3219170)))

(declare-fun c!888934 () Bool)

(assert (=> d!1666714 (= c!888934 ((_ is Nil!60009) testedP!294))))

(assert (=> d!1666714 (= (++!13113 testedP!294 lt!2124795) lt!2125107)))

(declare-fun b!5166412 () Bool)

(assert (=> b!5166412 (= e!3219170 lt!2124795)))

(declare-fun b!5166413 () Bool)

(assert (=> b!5166413 (= e!3219170 (Cons!60009 (h!66457 testedP!294) (++!13113 (t!373286 testedP!294) lt!2124795)))))

(assert (= (and d!1666714 c!888934) b!5166412))

(assert (= (and d!1666714 (not c!888934)) b!5166413))

(assert (= (and d!1666714 res!2196223) b!5166414))

(assert (= (and b!5166414 res!2196224) b!5166415))

(declare-fun m!6216984 () Bool)

(assert (=> b!5166414 m!6216984))

(assert (=> b!5166414 m!6216448))

(declare-fun m!6216986 () Bool)

(assert (=> b!5166414 m!6216986))

(declare-fun m!6216988 () Bool)

(assert (=> d!1666714 m!6216988))

(assert (=> d!1666714 m!6216700))

(declare-fun m!6216990 () Bool)

(assert (=> d!1666714 m!6216990))

(declare-fun m!6216992 () Bool)

(assert (=> b!5166413 m!6216992))

(assert (=> d!1666522 d!1666714))

(assert (=> d!1666522 d!1666520))

(assert (=> d!1666522 d!1666548))

(declare-fun b!5166418 () Bool)

(declare-fun e!3219173 () Bool)

(assert (=> b!5166418 (= e!3219173 (isPrefix!5722 (tail!10124 (tail!10124 testedP!294)) (tail!10124 (tail!10124 input!5817))))))

(declare-fun b!5166419 () Bool)

(declare-fun e!3219174 () Bool)

(assert (=> b!5166419 (= e!3219174 (>= (size!39625 (tail!10124 input!5817)) (size!39625 (tail!10124 testedP!294))))))

(declare-fun d!1666716 () Bool)

(assert (=> d!1666716 e!3219174))

(declare-fun res!2196225 () Bool)

(assert (=> d!1666716 (=> res!2196225 e!3219174)))

(declare-fun lt!2125108 () Bool)

(assert (=> d!1666716 (= res!2196225 (not lt!2125108))))

(declare-fun e!3219172 () Bool)

(assert (=> d!1666716 (= lt!2125108 e!3219172)))

(declare-fun res!2196228 () Bool)

(assert (=> d!1666716 (=> res!2196228 e!3219172)))

(assert (=> d!1666716 (= res!2196228 ((_ is Nil!60009) (tail!10124 testedP!294)))))

(assert (=> d!1666716 (= (isPrefix!5722 (tail!10124 testedP!294) (tail!10124 input!5817)) lt!2125108)))

(declare-fun b!5166416 () Bool)

(assert (=> b!5166416 (= e!3219172 e!3219173)))

(declare-fun res!2196226 () Bool)

(assert (=> b!5166416 (=> (not res!2196226) (not e!3219173))))

(assert (=> b!5166416 (= res!2196226 (not ((_ is Nil!60009) (tail!10124 input!5817))))))

(declare-fun b!5166417 () Bool)

(declare-fun res!2196227 () Bool)

(assert (=> b!5166417 (=> (not res!2196227) (not e!3219173))))

(assert (=> b!5166417 (= res!2196227 (= (head!11013 (tail!10124 testedP!294)) (head!11013 (tail!10124 input!5817))))))

(assert (= (and d!1666716 (not res!2196228)) b!5166416))

(assert (= (and b!5166416 res!2196226) b!5166417))

(assert (= (and b!5166417 res!2196227) b!5166418))

(assert (= (and d!1666716 (not res!2196225)) b!5166419))

(assert (=> b!5166418 m!6216614))

(declare-fun m!6216994 () Bool)

(assert (=> b!5166418 m!6216994))

(assert (=> b!5166418 m!6216478))

(assert (=> b!5166418 m!6216968))

(assert (=> b!5166418 m!6216994))

(assert (=> b!5166418 m!6216968))

(declare-fun m!6216996 () Bool)

(assert (=> b!5166418 m!6216996))

(assert (=> b!5166419 m!6216478))

(assert (=> b!5166419 m!6216966))

(assert (=> b!5166419 m!6216614))

(declare-fun m!6216998 () Bool)

(assert (=> b!5166419 m!6216998))

(assert (=> b!5166417 m!6216614))

(declare-fun m!6217000 () Bool)

(assert (=> b!5166417 m!6217000))

(assert (=> b!5166417 m!6216478))

(assert (=> b!5166417 m!6216982))

(assert (=> b!5166210 d!1666716))

(declare-fun d!1666718 () Bool)

(assert (=> d!1666718 (= (tail!10124 testedP!294) (t!373286 testedP!294))))

(assert (=> b!5166210 d!1666718))

(assert (=> b!5166210 d!1666694))

(declare-fun d!1666720 () Bool)

(assert (=> d!1666720 (= (head!11013 testedP!294) (h!66457 testedP!294))))

(assert (=> b!5166209 d!1666720))

(assert (=> b!5166209 d!1666712))

(declare-fun bs!1202866 () Bool)

(declare-fun d!1666722 () Bool)

(assert (= bs!1202866 (and d!1666722 d!1666690)))

(declare-fun lambda!257835 () Int)

(assert (=> bs!1202866 (= (= call!362422 (h!66457 testedP!294)) (= lambda!257835 lambda!257833))))

(assert (=> d!1666722 true))

(assert (=> d!1666722 (= (derivationStepZipper!947 z!4581 call!362422) (flatMap!434 z!4581 lambda!257835))))

(declare-fun bs!1202867 () Bool)

(assert (= bs!1202867 d!1666722))

(declare-fun m!6217002 () Bool)

(assert (=> bs!1202867 m!6217002))

(assert (=> bm!362418 d!1666722))

(declare-fun bs!1202868 () Bool)

(declare-fun d!1666724 () Bool)

(assert (= bs!1202868 (and d!1666724 d!1666656)))

(declare-fun lambda!257838 () Int)

(assert (=> bs!1202868 (not (= lambda!257838 lambda!257828))))

(declare-fun bs!1202869 () Bool)

(assert (= bs!1202869 (and d!1666724 b!5166369)))

(assert (=> bs!1202869 (not (= lambda!257838 lambda!257829))))

(declare-fun bs!1202870 () Bool)

(assert (= bs!1202870 (and d!1666724 b!5166370)))

(assert (=> bs!1202870 (not (= lambda!257838 lambda!257830))))

(declare-fun exists!1894 ((InoxSet Context!7946) Int) Bool)

(assert (=> d!1666724 (= (nullableZipper!1137 z!4581) (exists!1894 z!4581 lambda!257838))))

(declare-fun bs!1202871 () Bool)

(assert (= bs!1202871 d!1666724))

(declare-fun m!6217004 () Bool)

(assert (=> bs!1202871 m!6217004))

(assert (=> bm!362417 d!1666724))

(declare-fun bs!1202872 () Bool)

(declare-fun d!1666726 () Bool)

(assert (= bs!1202872 (and d!1666726 d!1666560)))

(declare-fun lambda!257839 () Int)

(assert (=> bs!1202872 (= lambda!257839 lambda!257790)))

(declare-fun bs!1202873 () Bool)

(assert (= bs!1202873 (and d!1666726 d!1666566)))

(assert (=> bs!1202873 (= lambda!257839 lambda!257791)))

(declare-fun bs!1202874 () Bool)

(assert (= bs!1202874 (and d!1666726 d!1666696)))

(assert (=> bs!1202874 (= lambda!257839 lambda!257834)))

(assert (=> d!1666726 (= (inv!79719 setElem!31756) (forall!14107 (exprs!4473 setElem!31756) lambda!257839))))

(declare-fun bs!1202875 () Bool)

(assert (= bs!1202875 d!1666726))

(declare-fun m!6217006 () Bool)

(assert (=> bs!1202875 m!6217006))

(assert (=> setNonEmpty!31756 d!1666726))

(assert (=> bm!362416 d!1666554))

(declare-fun d!1666728 () Bool)

(declare-fun lt!2125109 () Int)

(assert (=> d!1666728 (>= lt!2125109 0)))

(declare-fun e!3219175 () Int)

(assert (=> d!1666728 (= lt!2125109 e!3219175)))

(declare-fun c!888937 () Bool)

(assert (=> d!1666728 (= c!888937 ((_ is Nil!60009) (t!373286 input!5817)))))

(assert (=> d!1666728 (= (size!39625 (t!373286 input!5817)) lt!2125109)))

(declare-fun b!5166420 () Bool)

(assert (=> b!5166420 (= e!3219175 0)))

(declare-fun b!5166421 () Bool)

(assert (=> b!5166421 (= e!3219175 (+ 1 (size!39625 (t!373286 (t!373286 input!5817)))))))

(assert (= (and d!1666728 c!888937) b!5166420))

(assert (= (and d!1666728 (not c!888937)) b!5166421))

(declare-fun m!6217008 () Bool)

(assert (=> b!5166421 m!6217008))

(assert (=> b!5166051 d!1666728))

(assert (=> b!5166177 d!1666520))

(assert (=> bm!362415 d!1666636))

(declare-fun d!1666730 () Bool)

(declare-fun res!2196229 () Bool)

(declare-fun e!3219176 () Bool)

(assert (=> d!1666730 (=> res!2196229 e!3219176)))

(assert (=> d!1666730 (= res!2196229 ((_ is Nil!60010) (exprs!4473 setElem!31747)))))

(assert (=> d!1666730 (= (forall!14107 (exprs!4473 setElem!31747) lambda!257790) e!3219176)))

(declare-fun b!5166422 () Bool)

(declare-fun e!3219177 () Bool)

(assert (=> b!5166422 (= e!3219176 e!3219177)))

(declare-fun res!2196230 () Bool)

(assert (=> b!5166422 (=> (not res!2196230) (not e!3219177))))

(assert (=> b!5166422 (= res!2196230 (dynLambda!23859 lambda!257790 (h!66458 (exprs!4473 setElem!31747))))))

(declare-fun b!5166423 () Bool)

(assert (=> b!5166423 (= e!3219177 (forall!14107 (t!373287 (exprs!4473 setElem!31747)) lambda!257790))))

(assert (= (and d!1666730 (not res!2196229)) b!5166422))

(assert (= (and b!5166422 res!2196230) b!5166423))

(declare-fun b_lambda!200779 () Bool)

(assert (=> (not b_lambda!200779) (not b!5166422)))

(declare-fun m!6217010 () Bool)

(assert (=> b!5166422 m!6217010))

(declare-fun m!6217012 () Bool)

(assert (=> b!5166423 m!6217012))

(assert (=> d!1666560 d!1666730))

(declare-fun bm!362443 () Bool)

(declare-fun call!362449 () List!60133)

(assert (=> bm!362443 (= call!362449 (tail!10124 call!362421))))

(declare-fun b!5166424 () Bool)

(declare-fun e!3219184 () Unit!151462)

(declare-fun Unit!151478 () Unit!151462)

(assert (=> b!5166424 (= e!3219184 Unit!151478)))

(declare-fun lt!2125127 () Unit!151462)

(declare-fun call!362451 () Unit!151462)

(assert (=> b!5166424 (= lt!2125127 call!362451)))

(declare-fun call!362453 () Bool)

(assert (=> b!5166424 call!362453))

(declare-fun lt!2125114 () Unit!151462)

(assert (=> b!5166424 (= lt!2125114 lt!2125127)))

(declare-fun lt!2125121 () Unit!151462)

(declare-fun call!362452 () Unit!151462)

(assert (=> b!5166424 (= lt!2125121 call!362452)))

(assert (=> b!5166424 (= input!5817 lt!2124940)))

(declare-fun lt!2125110 () Unit!151462)

(assert (=> b!5166424 (= lt!2125110 lt!2125121)))

(assert (=> b!5166424 false))

(declare-fun bm!362444 () Bool)

(assert (=> bm!362444 (= call!362452 (lemmaIsPrefixSameLengthThenSameList!1371 input!5817 lt!2124940 input!5817))))

(declare-fun b!5166425 () Bool)

(declare-fun e!3219178 () tuple2!63732)

(assert (=> b!5166425 (= e!3219178 (tuple2!63733 Nil!60009 input!5817))))

(declare-fun bm!362445 () Bool)

(declare-fun call!362454 () Bool)

(assert (=> bm!362445 (= call!362454 (nullableZipper!1137 call!362427))))

(declare-fun b!5166426 () Bool)

(declare-fun Unit!151480 () Unit!151462)

(assert (=> b!5166426 (= e!3219184 Unit!151480)))

(declare-fun bm!362447 () Bool)

(assert (=> bm!362447 (= call!362451 (lemmaIsPrefixRefl!3729 input!5817 input!5817))))

(declare-fun bm!362448 () Bool)

(declare-fun lt!2125111 () List!60133)

(declare-fun call!362455 () (InoxSet Context!7946))

(declare-fun call!362448 () tuple2!63732)

(assert (=> bm!362448 (= call!362448 (findLongestMatchInnerZipper!247 call!362455 lt!2125111 (+ lt!2124781 1 1) call!362449 input!5817 lt!2124780))))

(declare-fun b!5166427 () Bool)

(declare-fun e!3219185 () tuple2!63732)

(assert (=> b!5166427 (= e!3219185 (tuple2!63733 Nil!60009 input!5817))))

(declare-fun b!5166428 () Bool)

(declare-fun e!3219181 () tuple2!63732)

(declare-fun lt!2125122 () tuple2!63732)

(assert (=> b!5166428 (= e!3219181 lt!2125122)))

(declare-fun b!5166429 () Bool)

(declare-fun e!3219179 () Bool)

(declare-fun lt!2125128 () tuple2!63732)

(assert (=> b!5166429 (= e!3219179 (>= (size!39625 (_1!35169 lt!2125128)) (size!39625 lt!2124940)))))

(declare-fun b!5166430 () Bool)

(assert (=> b!5166430 (= e!3219178 (tuple2!63733 lt!2124940 Nil!60009))))

(declare-fun bm!362449 () Bool)

(assert (=> bm!362449 (= call!362453 (isPrefix!5722 input!5817 input!5817))))

(declare-fun b!5166431 () Bool)

(declare-fun c!888941 () Bool)

(assert (=> b!5166431 (= c!888941 call!362454)))

(declare-fun lt!2125115 () Unit!151462)

(declare-fun lt!2125134 () Unit!151462)

(assert (=> b!5166431 (= lt!2125115 lt!2125134)))

(assert (=> b!5166431 (= input!5817 lt!2124940)))

(assert (=> b!5166431 (= lt!2125134 call!362452)))

(declare-fun lt!2125126 () Unit!151462)

(declare-fun lt!2125130 () Unit!151462)

(assert (=> b!5166431 (= lt!2125126 lt!2125130)))

(assert (=> b!5166431 call!362453))

(assert (=> b!5166431 (= lt!2125130 call!362451)))

(declare-fun e!3219180 () tuple2!63732)

(assert (=> b!5166431 (= e!3219180 e!3219178)))

(declare-fun bm!362446 () Bool)

(declare-fun call!362450 () C!29448)

(assert (=> bm!362446 (= call!362455 (derivationStepZipper!947 call!362427 call!362450))))

(declare-fun d!1666732 () Bool)

(declare-fun e!3219182 () Bool)

(assert (=> d!1666732 e!3219182))

(declare-fun res!2196232 () Bool)

(assert (=> d!1666732 (=> (not res!2196232) (not e!3219182))))

(assert (=> d!1666732 (= res!2196232 (= (++!13113 (_1!35169 lt!2125128) (_2!35169 lt!2125128)) input!5817))))

(assert (=> d!1666732 (= lt!2125128 e!3219185)))

(declare-fun c!888939 () Bool)

(assert (=> d!1666732 (= c!888939 (lostCauseZipper!1314 call!362427))))

(declare-fun lt!2125125 () Unit!151462)

(declare-fun Unit!151481 () Unit!151462)

(assert (=> d!1666732 (= lt!2125125 Unit!151481)))

(assert (=> d!1666732 (= (getSuffix!3372 input!5817 lt!2124940) call!362421)))

(declare-fun lt!2125135 () Unit!151462)

(declare-fun lt!2125112 () Unit!151462)

(assert (=> d!1666732 (= lt!2125135 lt!2125112)))

(declare-fun lt!2125113 () List!60133)

(assert (=> d!1666732 (= call!362421 lt!2125113)))

(assert (=> d!1666732 (= lt!2125112 (lemmaSamePrefixThenSameSuffix!2681 lt!2124940 call!362421 lt!2124940 lt!2125113 input!5817))))

(assert (=> d!1666732 (= lt!2125113 (getSuffix!3372 input!5817 lt!2124940))))

(declare-fun lt!2125124 () Unit!151462)

(declare-fun lt!2125116 () Unit!151462)

(assert (=> d!1666732 (= lt!2125124 lt!2125116)))

(assert (=> d!1666732 (isPrefix!5722 lt!2124940 (++!13113 lt!2124940 call!362421))))

(assert (=> d!1666732 (= lt!2125116 (lemmaConcatTwoListThenFirstIsPrefix!3575 lt!2124940 call!362421))))

(assert (=> d!1666732 (= (++!13113 lt!2124940 call!362421) input!5817)))

(assert (=> d!1666732 (= (findLongestMatchInnerZipper!247 call!362427 lt!2124940 (+ lt!2124781 1) call!362421 input!5817 lt!2124780) lt!2125128)))

(declare-fun b!5166432 () Bool)

(declare-fun c!888938 () Bool)

(assert (=> b!5166432 (= c!888938 call!362454)))

(declare-fun lt!2125132 () Unit!151462)

(declare-fun lt!2125120 () Unit!151462)

(assert (=> b!5166432 (= lt!2125132 lt!2125120)))

(declare-fun lt!2125118 () List!60133)

(declare-fun lt!2125133 () C!29448)

(assert (=> b!5166432 (= (++!13113 (++!13113 lt!2124940 (Cons!60009 lt!2125133 Nil!60009)) lt!2125118) input!5817)))

(assert (=> b!5166432 (= lt!2125120 (lemmaMoveElementToOtherListKeepsConcatEq!1562 lt!2124940 lt!2125133 lt!2125118 input!5817))))

(assert (=> b!5166432 (= lt!2125118 (tail!10124 call!362421))))

(assert (=> b!5166432 (= lt!2125133 (head!11013 call!362421))))

(declare-fun lt!2125119 () Unit!151462)

(declare-fun lt!2125123 () Unit!151462)

(assert (=> b!5166432 (= lt!2125119 lt!2125123)))

(assert (=> b!5166432 (isPrefix!5722 (++!13113 lt!2124940 (Cons!60009 (head!11013 (getSuffix!3372 input!5817 lt!2124940)) Nil!60009)) input!5817)))

(assert (=> b!5166432 (= lt!2125123 (lemmaAddHeadSuffixToPrefixStillPrefix!1037 lt!2124940 input!5817))))

(assert (=> b!5166432 (= lt!2125111 (++!13113 lt!2124940 (Cons!60009 (head!11013 call!362421) Nil!60009)))))

(declare-fun lt!2125129 () Unit!151462)

(assert (=> b!5166432 (= lt!2125129 e!3219184)))

(declare-fun c!888940 () Bool)

(assert (=> b!5166432 (= c!888940 (= (size!39625 lt!2124940) (size!39625 input!5817)))))

(declare-fun lt!2125131 () Unit!151462)

(declare-fun lt!2125117 () Unit!151462)

(assert (=> b!5166432 (= lt!2125131 lt!2125117)))

(assert (=> b!5166432 (<= (size!39625 lt!2124940) (size!39625 input!5817))))

(assert (=> b!5166432 (= lt!2125117 (lemmaIsPrefixThenSmallerEqSize!885 lt!2124940 input!5817))))

(declare-fun e!3219183 () tuple2!63732)

(assert (=> b!5166432 (= e!3219180 e!3219183)))

(declare-fun b!5166433 () Bool)

(assert (=> b!5166433 (= e!3219181 (tuple2!63733 lt!2124940 call!362421))))

(declare-fun b!5166434 () Bool)

(assert (=> b!5166434 (= e!3219183 call!362448)))

(declare-fun b!5166435 () Bool)

(assert (=> b!5166435 (= e!3219185 e!3219180)))

(declare-fun c!888942 () Bool)

(assert (=> b!5166435 (= c!888942 (= (+ lt!2124781 1) lt!2124780))))

(declare-fun bm!362450 () Bool)

(assert (=> bm!362450 (= call!362450 (head!11013 call!362421))))

(declare-fun b!5166436 () Bool)

(assert (=> b!5166436 (= e!3219182 e!3219179)))

(declare-fun res!2196231 () Bool)

(assert (=> b!5166436 (=> res!2196231 e!3219179)))

(assert (=> b!5166436 (= res!2196231 (isEmpty!32127 (_1!35169 lt!2125128)))))

(declare-fun b!5166437 () Bool)

(assert (=> b!5166437 (= e!3219183 e!3219181)))

(assert (=> b!5166437 (= lt!2125122 call!362448)))

(declare-fun c!888943 () Bool)

(assert (=> b!5166437 (= c!888943 (isEmpty!32127 (_1!35169 lt!2125122)))))

(assert (= (and d!1666732 c!888939) b!5166427))

(assert (= (and d!1666732 (not c!888939)) b!5166435))

(assert (= (and b!5166435 c!888942) b!5166431))

(assert (= (and b!5166435 (not c!888942)) b!5166432))

(assert (= (and b!5166431 c!888941) b!5166430))

(assert (= (and b!5166431 (not c!888941)) b!5166425))

(assert (= (and b!5166432 c!888940) b!5166424))

(assert (= (and b!5166432 (not c!888940)) b!5166426))

(assert (= (and b!5166432 c!888938) b!5166437))

(assert (= (and b!5166432 (not c!888938)) b!5166434))

(assert (= (and b!5166437 c!888943) b!5166433))

(assert (= (and b!5166437 (not c!888943)) b!5166428))

(assert (= (or b!5166437 b!5166434) bm!362443))

(assert (= (or b!5166437 b!5166434) bm!362450))

(assert (= (or b!5166437 b!5166434) bm!362446))

(assert (= (or b!5166437 b!5166434) bm!362448))

(assert (= (or b!5166431 b!5166424) bm!362447))

(assert (= (or b!5166431 b!5166432) bm!362445))

(assert (= (or b!5166431 b!5166424) bm!362449))

(assert (= (or b!5166431 b!5166424) bm!362444))

(assert (= (and d!1666732 res!2196232) b!5166436))

(assert (= (and b!5166436 (not res!2196231)) b!5166429))

(declare-fun m!6217014 () Bool)

(assert (=> bm!362446 m!6217014))

(declare-fun m!6217016 () Bool)

(assert (=> d!1666732 m!6217016))

(declare-fun m!6217018 () Bool)

(assert (=> d!1666732 m!6217018))

(declare-fun m!6217020 () Bool)

(assert (=> d!1666732 m!6217020))

(declare-fun m!6217022 () Bool)

(assert (=> d!1666732 m!6217022))

(declare-fun m!6217024 () Bool)

(assert (=> d!1666732 m!6217024))

(declare-fun m!6217026 () Bool)

(assert (=> d!1666732 m!6217026))

(declare-fun m!6217028 () Bool)

(assert (=> d!1666732 m!6217028))

(assert (=> d!1666732 m!6217024))

(declare-fun m!6217030 () Bool)

(assert (=> bm!362448 m!6217030))

(assert (=> bm!362449 m!6216438))

(declare-fun m!6217032 () Bool)

(assert (=> bm!362445 m!6217032))

(declare-fun m!6217034 () Bool)

(assert (=> b!5166437 m!6217034))

(assert (=> bm!362447 m!6216436))

(declare-fun m!6217036 () Bool)

(assert (=> b!5166429 m!6217036))

(declare-fun m!6217038 () Bool)

(assert (=> b!5166429 m!6217038))

(declare-fun m!6217040 () Bool)

(assert (=> bm!362444 m!6217040))

(declare-fun m!6217042 () Bool)

(assert (=> bm!362450 m!6217042))

(declare-fun m!6217044 () Bool)

(assert (=> b!5166436 m!6217044))

(declare-fun m!6217046 () Bool)

(assert (=> bm!362443 m!6217046))

(declare-fun m!6217048 () Bool)

(assert (=> b!5166432 m!6217048))

(declare-fun m!6217050 () Bool)

(assert (=> b!5166432 m!6217050))

(declare-fun m!6217052 () Bool)

(assert (=> b!5166432 m!6217052))

(declare-fun m!6217054 () Bool)

(assert (=> b!5166432 m!6217054))

(assert (=> b!5166432 m!6217042))

(assert (=> b!5166432 m!6217052))

(assert (=> b!5166432 m!6217020))

(declare-fun m!6217056 () Bool)

(assert (=> b!5166432 m!6217056))

(assert (=> b!5166432 m!6216452))

(declare-fun m!6217058 () Bool)

(assert (=> b!5166432 m!6217058))

(assert (=> b!5166432 m!6217038))

(declare-fun m!6217060 () Bool)

(assert (=> b!5166432 m!6217060))

(assert (=> b!5166432 m!6217020))

(declare-fun m!6217062 () Bool)

(assert (=> b!5166432 m!6217062))

(assert (=> b!5166432 m!6217046))

(assert (=> b!5166432 m!6217048))

(declare-fun m!6217064 () Bool)

(assert (=> b!5166432 m!6217064))

(assert (=> bm!362420 d!1666732))

(declare-fun d!1666734 () Bool)

(declare-fun lt!2125136 () Int)

(assert (=> d!1666734 (>= lt!2125136 0)))

(declare-fun e!3219186 () Int)

(assert (=> d!1666734 (= lt!2125136 e!3219186)))

(declare-fun c!888944 () Bool)

(assert (=> d!1666734 (= c!888944 ((_ is Nil!60009) (t!373286 testedP!294)))))

(assert (=> d!1666734 (= (size!39625 (t!373286 testedP!294)) lt!2125136)))

(declare-fun b!5166438 () Bool)

(assert (=> b!5166438 (= e!3219186 0)))

(declare-fun b!5166439 () Bool)

(assert (=> b!5166439 (= e!3219186 (+ 1 (size!39625 (t!373286 (t!373286 testedP!294)))))))

(assert (= (and d!1666734 c!888944) b!5166438))

(assert (= (and d!1666734 (not c!888944)) b!5166439))

(declare-fun m!6217066 () Bool)

(assert (=> b!5166439 m!6217066))

(assert (=> b!5166165 d!1666734))

(assert (=> bm!362419 d!1666550))

(declare-fun d!1666736 () Bool)

(assert (=> d!1666736 (= input!5817 testedP!294)))

(assert (=> d!1666736 true))

(declare-fun _$60!937 () Unit!151462)

(assert (=> d!1666736 (= (choose!38207 input!5817 testedP!294 input!5817) _$60!937)))

(assert (=> d!1666554 d!1666736))

(assert (=> d!1666554 d!1666552))

(declare-fun e!3219189 () Bool)

(assert (=> b!5166229 (= tp!1449398 e!3219189)))

(declare-fun b!5166452 () Bool)

(declare-fun tp!1449447 () Bool)

(assert (=> b!5166452 (= e!3219189 tp!1449447)))

(declare-fun b!5166450 () Bool)

(assert (=> b!5166450 (= e!3219189 tp_is_empty!38431)))

(declare-fun b!5166451 () Bool)

(declare-fun tp!1449448 () Bool)

(declare-fun tp!1449446 () Bool)

(assert (=> b!5166451 (= e!3219189 (and tp!1449448 tp!1449446))))

(declare-fun b!5166453 () Bool)

(declare-fun tp!1449445 () Bool)

(declare-fun tp!1449444 () Bool)

(assert (=> b!5166453 (= e!3219189 (and tp!1449445 tp!1449444))))

(assert (= (and b!5166229 ((_ is ElementMatch!14589) (h!66458 (exprs!4473 setElem!31747)))) b!5166450))

(assert (= (and b!5166229 ((_ is Concat!23434) (h!66458 (exprs!4473 setElem!31747)))) b!5166451))

(assert (= (and b!5166229 ((_ is Star!14589) (h!66458 (exprs!4473 setElem!31747)))) b!5166452))

(assert (= (and b!5166229 ((_ is Union!14589) (h!66458 (exprs!4473 setElem!31747)))) b!5166453))

(declare-fun b!5166454 () Bool)

(declare-fun e!3219190 () Bool)

(declare-fun tp!1449449 () Bool)

(declare-fun tp!1449450 () Bool)

(assert (=> b!5166454 (= e!3219190 (and tp!1449449 tp!1449450))))

(assert (=> b!5166229 (= tp!1449399 e!3219190)))

(assert (= (and b!5166229 ((_ is Cons!60010) (t!373287 (exprs!4473 setElem!31747)))) b!5166454))

(declare-fun e!3219191 () Bool)

(assert (=> b!5166222 (= tp!1449388 e!3219191)))

(declare-fun b!5166457 () Bool)

(declare-fun tp!1449454 () Bool)

(assert (=> b!5166457 (= e!3219191 tp!1449454)))

(declare-fun b!5166455 () Bool)

(assert (=> b!5166455 (= e!3219191 tp_is_empty!38431)))

(declare-fun b!5166456 () Bool)

(declare-fun tp!1449455 () Bool)

(declare-fun tp!1449453 () Bool)

(assert (=> b!5166456 (= e!3219191 (and tp!1449455 tp!1449453))))

(declare-fun b!5166458 () Bool)

(declare-fun tp!1449452 () Bool)

(declare-fun tp!1449451 () Bool)

(assert (=> b!5166458 (= e!3219191 (and tp!1449452 tp!1449451))))

(assert (= (and b!5166222 ((_ is ElementMatch!14589) (h!66458 (exprs!4473 setElem!31748)))) b!5166455))

(assert (= (and b!5166222 ((_ is Concat!23434) (h!66458 (exprs!4473 setElem!31748)))) b!5166456))

(assert (= (and b!5166222 ((_ is Star!14589) (h!66458 (exprs!4473 setElem!31748)))) b!5166457))

(assert (= (and b!5166222 ((_ is Union!14589) (h!66458 (exprs!4473 setElem!31748)))) b!5166458))

(declare-fun b!5166459 () Bool)

(declare-fun e!3219192 () Bool)

(declare-fun tp!1449456 () Bool)

(declare-fun tp!1449457 () Bool)

(assert (=> b!5166459 (= e!3219192 (and tp!1449456 tp!1449457))))

(assert (=> b!5166222 (= tp!1449389 e!3219192)))

(assert (= (and b!5166222 ((_ is Cons!60010) (t!373287 (exprs!4473 setElem!31748)))) b!5166459))

(declare-fun b!5166460 () Bool)

(declare-fun e!3219193 () Bool)

(declare-fun tp!1449458 () Bool)

(declare-fun tp!1449459 () Bool)

(assert (=> b!5166460 (= e!3219193 (and tp!1449458 tp!1449459))))

(assert (=> b!5166228 (= tp!1449396 e!3219193)))

(assert (= (and b!5166228 ((_ is Cons!60010) (exprs!4473 setElem!31756))) b!5166460))

(declare-fun condSetEmpty!31759 () Bool)

(assert (=> setNonEmpty!31756 (= condSetEmpty!31759 (= setRest!31756 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31759 () Bool)

(assert (=> setNonEmpty!31756 (= tp!1449397 setRes!31759)))

(declare-fun setIsEmpty!31759 () Bool)

(assert (=> setIsEmpty!31759 setRes!31759))

(declare-fun tp!1449461 () Bool)

(declare-fun e!3219194 () Bool)

(declare-fun setNonEmpty!31759 () Bool)

(declare-fun setElem!31759 () Context!7946)

(assert (=> setNonEmpty!31759 (= setRes!31759 (and tp!1449461 (inv!79719 setElem!31759) e!3219194))))

(declare-fun setRest!31759 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31759 (= setRest!31756 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31759 true) setRest!31759))))

(declare-fun b!5166461 () Bool)

(declare-fun tp!1449460 () Bool)

(assert (=> b!5166461 (= e!3219194 tp!1449460)))

(assert (= (and setNonEmpty!31756 condSetEmpty!31759) setIsEmpty!31759))

(assert (= (and setNonEmpty!31756 (not condSetEmpty!31759)) setNonEmpty!31759))

(assert (= setNonEmpty!31759 b!5166461))

(declare-fun m!6217068 () Bool)

(assert (=> setNonEmpty!31759 m!6217068))

(declare-fun b!5166462 () Bool)

(declare-fun e!3219195 () Bool)

(declare-fun tp!1449462 () Bool)

(declare-fun tp!1449463 () Bool)

(assert (=> b!5166462 (= e!3219195 (and tp!1449462 tp!1449463))))

(assert (=> b!5166227 (= tp!1449394 e!3219195)))

(assert (= (and b!5166227 ((_ is Cons!60010) (exprs!4473 setElem!31755))) b!5166462))

(declare-fun b!5166463 () Bool)

(declare-fun e!3219196 () Bool)

(declare-fun tp!1449464 () Bool)

(assert (=> b!5166463 (= e!3219196 (and tp_is_empty!38431 tp!1449464))))

(assert (=> b!5166216 (= tp!1449382 e!3219196)))

(assert (= (and b!5166216 ((_ is Cons!60009) (t!373286 (t!373286 testedP!294)))) b!5166463))

(declare-fun condSetEmpty!31760 () Bool)

(assert (=> setNonEmpty!31755 (= condSetEmpty!31760 (= setRest!31755 ((as const (Array Context!7946 Bool)) false)))))

(declare-fun setRes!31760 () Bool)

(assert (=> setNonEmpty!31755 (= tp!1449395 setRes!31760)))

(declare-fun setIsEmpty!31760 () Bool)

(assert (=> setIsEmpty!31760 setRes!31760))

(declare-fun setNonEmpty!31760 () Bool)

(declare-fun tp!1449466 () Bool)

(declare-fun setElem!31760 () Context!7946)

(declare-fun e!3219197 () Bool)

(assert (=> setNonEmpty!31760 (= setRes!31760 (and tp!1449466 (inv!79719 setElem!31760) e!3219197))))

(declare-fun setRest!31760 () (InoxSet Context!7946))

(assert (=> setNonEmpty!31760 (= setRest!31755 ((_ map or) (store ((as const (Array Context!7946 Bool)) false) setElem!31760 true) setRest!31760))))

(declare-fun b!5166464 () Bool)

(declare-fun tp!1449465 () Bool)

(assert (=> b!5166464 (= e!3219197 tp!1449465)))

(assert (= (and setNonEmpty!31755 condSetEmpty!31760) setIsEmpty!31760))

(assert (= (and setNonEmpty!31755 (not condSetEmpty!31760)) setNonEmpty!31760))

(assert (= setNonEmpty!31760 b!5166464))

(declare-fun m!6217070 () Bool)

(assert (=> setNonEmpty!31760 m!6217070))

(declare-fun b!5166465 () Bool)

(declare-fun e!3219198 () Bool)

(declare-fun tp!1449467 () Bool)

(assert (=> b!5166465 (= e!3219198 (and tp_is_empty!38431 tp!1449467))))

(assert (=> b!5166217 (= tp!1449383 e!3219198)))

(assert (= (and b!5166217 ((_ is Cons!60009) (t!373286 (t!373286 input!5817)))) b!5166465))

(declare-fun b_lambda!200781 () Bool)

(assert (= b_lambda!200779 (or d!1666560 b_lambda!200781)))

(declare-fun bs!1202876 () Bool)

(declare-fun d!1666738 () Bool)

(assert (= bs!1202876 (and d!1666738 d!1666560)))

(declare-fun validRegex!6390 (Regex!14589) Bool)

(assert (=> bs!1202876 (= (dynLambda!23859 lambda!257790 (h!66458 (exprs!4473 setElem!31747))) (validRegex!6390 (h!66458 (exprs!4473 setElem!31747))))))

(declare-fun m!6217072 () Bool)

(assert (=> bs!1202876 m!6217072))

(assert (=> b!5166422 d!1666738))

(declare-fun b_lambda!200783 () Bool)

(assert (= b_lambda!200777 (or d!1666566 b_lambda!200783)))

(declare-fun bs!1202877 () Bool)

(declare-fun d!1666740 () Bool)

(assert (= bs!1202877 (and d!1666740 d!1666566)))

(assert (=> bs!1202877 (= (dynLambda!23859 lambda!257791 (h!66458 (exprs!4473 setElem!31748))) (validRegex!6390 (h!66458 (exprs!4473 setElem!31748))))))

(declare-fun m!6217074 () Bool)

(assert (=> bs!1202877 m!6217074))

(assert (=> b!5166406 d!1666740))

(check-sat (not b!5166279) (not b!5166413) (not b!5166436) (not d!1666622) (not b!5166401) (not b!5166306) (not b!5166451) (not b!5166465) (not b!5166464) (not bm!362441) (not d!1666724) (not b!5166407) (not b!5166383) (not bm!362446) (not b!5166463) (not b!5166458) (not b!5166459) (not b!5166370) (not b!5166460) (not d!1666714) (not b!5166384) (not b!5166457) (not b!5166418) (not b!5166387) (not b!5166272) (not b!5166456) (not b!5166429) (not bm!362445) (not d!1666678) (not b!5166271) (not bm!362442) (not b!5166391) (not b!5166453) (not b!5166283) (not setNonEmpty!31759) (not b!5166452) (not d!1666698) (not b!5166419) (not b!5166305) (not d!1666732) tp_is_empty!38431 (not bs!1202877) (not b!5166423) (not d!1666726) (not b!5166454) (not d!1666656) (not d!1666640) (not d!1666680) (not bs!1202876) (not bm!362448) (not b!5166280) (not b!5166432) (not d!1666686) (not d!1666582) (not b!5166461) (not bm!362444) (not bm!362450) (not b_lambda!200781) (not b_lambda!200783) (not d!1666608) (not bm!362443) (not b!5166421) (not b!5166437) (not b!5166409) (not b!5166411) (not b!5166315) (not b!5166389) (not b!5166314) (not d!1666620) (not d!1666710) (not b!5166313) (not d!1666722) (not b!5166414) (not b!5166462) (not b!5166369) (not b!5166417) (not d!1666692) (not d!1666696) (not b!5166392) (not b!5166410) (not b!5166388) (not bm!362447) (not b!5166284) (not d!1666684) (not b!5166398) (not bm!362449) (not b!5166439) (not setNonEmpty!31760) (not d!1666644) (not d!1666690) (not b!5166394))
(check-sat)
