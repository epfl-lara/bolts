; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725822 () Bool)

(assert start!725822)

(declare-fun b!7502078 () Bool)

(declare-fun e!4472758 () Bool)

(declare-fun tp_is_empty!49663 () Bool)

(declare-fun tp!2177759 () Bool)

(assert (=> b!7502078 (= e!4472758 (and tp_is_empty!49663 tp!2177759))))

(declare-fun b!7502079 () Bool)

(declare-datatypes ((Unit!166210 0))(
  ( (Unit!166211) )
))
(declare-fun e!4472760 () Unit!166210)

(declare-fun Unit!166212 () Unit!166210)

(assert (=> b!7502079 (= e!4472760 Unit!166212)))

(declare-fun b!7502080 () Bool)

(declare-fun res!3009582 () Bool)

(declare-fun e!4472754 () Bool)

(assert (=> b!7502080 (=> res!3009582 e!4472754)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7502080 (= res!3009582 (= testedPSize!164 totalInputSize!226))))

(declare-datatypes ((C!39648 0))(
  ( (C!39649 (val!30222 Int)) )
))
(declare-datatypes ((List!72412 0))(
  ( (Nil!72288) (Cons!72288 (h!78736 C!39648) (t!386981 List!72412)) )
))
(declare-fun testedSuffix!164 () List!72412)

(declare-fun b!7502081 () Bool)

(declare-fun lt!2632256 () Int)

(declare-fun lt!2632252 () Int)

(assert (=> b!7502081 (= e!4472754 (or (>= lt!2632256 lt!2632252) (not (= testedSuffix!164 Nil!72288))))))

(declare-fun lt!2632247 () Unit!166210)

(assert (=> b!7502081 (= lt!2632247 e!4472760)))

(declare-fun c!1384907 () Bool)

(assert (=> b!7502081 (= c!1384907 (= lt!2632256 lt!2632252))))

(assert (=> b!7502081 (<= lt!2632256 lt!2632252)))

(declare-fun lt!2632255 () Unit!166210)

(declare-fun testedP!204 () List!72412)

(declare-fun totalInput!779 () List!72412)

(declare-fun lemmaIsPrefixThenSmallerEqSize!962 (List!72412 List!72412) Unit!166210)

(assert (=> b!7502081 (= lt!2632255 (lemmaIsPrefixThenSmallerEqSize!962 testedP!204 totalInput!779))))

(declare-fun res!3009584 () Bool)

(declare-fun e!4472755 () Bool)

(assert (=> start!725822 (=> (not res!3009584) (not e!4472755))))

(declare-fun lt!2632253 () List!72412)

(assert (=> start!725822 (= res!3009584 (= lt!2632253 totalInput!779))))

(declare-fun ++!17290 (List!72412 List!72412) List!72412)

(assert (=> start!725822 (= lt!2632253 (++!17290 testedP!204 testedSuffix!164))))

(assert (=> start!725822 e!4472755))

(declare-fun e!4472757 () Bool)

(assert (=> start!725822 e!4472757))

(assert (=> start!725822 true))

(assert (=> start!725822 e!4472758))

(declare-fun e!4472753 () Bool)

(assert (=> start!725822 e!4472753))

(declare-fun condSetEmpty!56840 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19671 0))(
  ( (ElementMatch!19671 (c!1384908 C!39648)) (Concat!28516 (regOne!39854 Regex!19671) (regTwo!39854 Regex!19671)) (EmptyExpr!19671) (Star!19671 (reg!20000 Regex!19671)) (EmptyLang!19671) (Union!19671 (regOne!39855 Regex!19671) (regTwo!39855 Regex!19671)) )
))
(declare-datatypes ((List!72413 0))(
  ( (Nil!72289) (Cons!72289 (h!78737 Regex!19671) (t!386982 List!72413)) )
))
(declare-datatypes ((Context!16846 0))(
  ( (Context!16847 (exprs!8923 List!72413)) )
))
(declare-fun z!3716 () (InoxSet Context!16846))

(assert (=> start!725822 (= condSetEmpty!56840 (= z!3716 ((as const (Array Context!16846 Bool)) false)))))

(declare-fun setRes!56840 () Bool)

(assert (=> start!725822 setRes!56840))

(declare-fun b!7502082 () Bool)

(declare-fun e!4472756 () Bool)

(declare-fun e!4472759 () Bool)

(assert (=> b!7502082 (= e!4472756 (not e!4472759))))

(declare-fun res!3009585 () Bool)

(assert (=> b!7502082 (=> res!3009585 e!4472759)))

(declare-fun isPrefix!5957 (List!72412 List!72412) Bool)

(assert (=> b!7502082 (= res!3009585 (not (isPrefix!5957 testedP!204 totalInput!779)))))

(assert (=> b!7502082 (isPrefix!5957 testedP!204 lt!2632253)))

(declare-fun lt!2632251 () Unit!166210)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3670 (List!72412 List!72412) Unit!166210)

(assert (=> b!7502082 (= lt!2632251 (lemmaConcatTwoListThenFirstIsPrefix!3670 testedP!204 testedSuffix!164))))

(declare-fun b!7502083 () Bool)

(declare-fun e!4472751 () Bool)

(assert (=> b!7502083 (= e!4472755 e!4472751)))

(declare-fun res!3009583 () Bool)

(assert (=> b!7502083 (=> (not res!3009583) (not e!4472751))))

(assert (=> b!7502083 (= res!3009583 (= testedPSize!164 lt!2632256))))

(declare-fun size!42232 (List!72412) Int)

(assert (=> b!7502083 (= lt!2632256 (size!42232 testedP!204))))

(declare-fun b!7502084 () Bool)

(declare-fun e!4472752 () Bool)

(declare-fun tp!2177757 () Bool)

(assert (=> b!7502084 (= e!4472752 tp!2177757)))

(declare-fun setNonEmpty!56840 () Bool)

(declare-fun tp!2177756 () Bool)

(declare-fun setElem!56840 () Context!16846)

(declare-fun inv!92392 (Context!16846) Bool)

(assert (=> setNonEmpty!56840 (= setRes!56840 (and tp!2177756 (inv!92392 setElem!56840) e!4472752))))

(declare-fun setRest!56840 () (InoxSet Context!16846))

(assert (=> setNonEmpty!56840 (= z!3716 ((_ map or) (store ((as const (Array Context!16846 Bool)) false) setElem!56840 true) setRest!56840))))

(declare-fun b!7502085 () Bool)

(declare-fun tp!2177755 () Bool)

(assert (=> b!7502085 (= e!4472757 (and tp_is_empty!49663 tp!2177755))))

(declare-fun b!7502086 () Bool)

(assert (=> b!7502086 (= e!4472751 e!4472756)))

(declare-fun res!3009586 () Bool)

(assert (=> b!7502086 (=> (not res!3009586) (not e!4472756))))

(assert (=> b!7502086 (= res!3009586 (= totalInputSize!226 lt!2632252))))

(assert (=> b!7502086 (= lt!2632252 (size!42232 totalInput!779))))

(declare-fun b!7502087 () Bool)

(declare-fun tp!2177758 () Bool)

(assert (=> b!7502087 (= e!4472753 (and tp_is_empty!49663 tp!2177758))))

(declare-fun b!7502088 () Bool)

(assert (=> b!7502088 (= e!4472759 e!4472754)))

(declare-fun res!3009581 () Bool)

(assert (=> b!7502088 (=> res!3009581 e!4472754)))

(declare-fun lostCauseZipper!1359 ((InoxSet Context!16846)) Bool)

(assert (=> b!7502088 (= res!3009581 (lostCauseZipper!1359 z!3716))))

(declare-fun lt!2632248 () List!72412)

(assert (=> b!7502088 (and (= testedSuffix!164 lt!2632248) (= lt!2632248 testedSuffix!164))))

(declare-fun lt!2632249 () Unit!166210)

(declare-fun lemmaSamePrefixThenSameSuffix!2762 (List!72412 List!72412 List!72412 List!72412 List!72412) Unit!166210)

(assert (=> b!7502088 (= lt!2632249 (lemmaSamePrefixThenSameSuffix!2762 testedP!204 testedSuffix!164 testedP!204 lt!2632248 totalInput!779))))

(declare-fun getSuffix!3459 (List!72412 List!72412) List!72412)

(assert (=> b!7502088 (= lt!2632248 (getSuffix!3459 totalInput!779 testedP!204))))

(declare-fun b!7502089 () Bool)

(declare-fun Unit!166213 () Unit!166210)

(assert (=> b!7502089 (= e!4472760 Unit!166213)))

(declare-fun lt!2632254 () Unit!166210)

(declare-fun lemmaIsPrefixRefl!3806 (List!72412 List!72412) Unit!166210)

(assert (=> b!7502089 (= lt!2632254 (lemmaIsPrefixRefl!3806 totalInput!779 totalInput!779))))

(assert (=> b!7502089 (isPrefix!5957 totalInput!779 totalInput!779)))

(declare-fun lt!2632250 () Unit!166210)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1460 (List!72412 List!72412 List!72412) Unit!166210)

(assert (=> b!7502089 (= lt!2632250 (lemmaIsPrefixSameLengthThenSameList!1460 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502089 false))

(declare-fun setIsEmpty!56840 () Bool)

(assert (=> setIsEmpty!56840 setRes!56840))

(assert (= (and start!725822 res!3009584) b!7502083))

(assert (= (and b!7502083 res!3009583) b!7502086))

(assert (= (and b!7502086 res!3009586) b!7502082))

(assert (= (and b!7502082 (not res!3009585)) b!7502088))

(assert (= (and b!7502088 (not res!3009581)) b!7502080))

(assert (= (and b!7502080 (not res!3009582)) b!7502081))

(assert (= (and b!7502081 c!1384907) b!7502089))

(assert (= (and b!7502081 (not c!1384907)) b!7502079))

(get-info :version)

(assert (= (and start!725822 ((_ is Cons!72288) testedSuffix!164)) b!7502085))

(assert (= (and start!725822 ((_ is Cons!72288) totalInput!779)) b!7502078))

(assert (= (and start!725822 ((_ is Cons!72288) testedP!204)) b!7502087))

(assert (= (and start!725822 condSetEmpty!56840) setIsEmpty!56840))

(assert (= (and start!725822 (not condSetEmpty!56840)) setNonEmpty!56840))

(assert (= setNonEmpty!56840 b!7502084))

(declare-fun m!8083622 () Bool)

(assert (=> b!7502089 m!8083622))

(declare-fun m!8083624 () Bool)

(assert (=> b!7502089 m!8083624))

(declare-fun m!8083626 () Bool)

(assert (=> b!7502089 m!8083626))

(declare-fun m!8083628 () Bool)

(assert (=> setNonEmpty!56840 m!8083628))

(declare-fun m!8083630 () Bool)

(assert (=> b!7502088 m!8083630))

(declare-fun m!8083632 () Bool)

(assert (=> b!7502088 m!8083632))

(declare-fun m!8083634 () Bool)

(assert (=> b!7502088 m!8083634))

(declare-fun m!8083636 () Bool)

(assert (=> b!7502081 m!8083636))

(declare-fun m!8083638 () Bool)

(assert (=> start!725822 m!8083638))

(declare-fun m!8083640 () Bool)

(assert (=> b!7502086 m!8083640))

(declare-fun m!8083642 () Bool)

(assert (=> b!7502083 m!8083642))

(declare-fun m!8083644 () Bool)

(assert (=> b!7502082 m!8083644))

(declare-fun m!8083646 () Bool)

(assert (=> b!7502082 m!8083646))

(declare-fun m!8083648 () Bool)

(assert (=> b!7502082 m!8083648))

(check-sat (not b!7502087) (not b!7502089) (not b!7502085) (not b!7502084) (not b!7502078) (not b!7502086) (not b!7502088) (not b!7502083) tp_is_empty!49663 (not start!725822) (not b!7502082) (not setNonEmpty!56840) (not b!7502081))
(check-sat)
(get-model)

(declare-fun d!2302665 () Bool)

(declare-fun lt!2632259 () Int)

(assert (=> d!2302665 (>= lt!2632259 0)))

(declare-fun e!4472763 () Int)

(assert (=> d!2302665 (= lt!2632259 e!4472763)))

(declare-fun c!1384911 () Bool)

(assert (=> d!2302665 (= c!1384911 ((_ is Nil!72288) testedP!204))))

(assert (=> d!2302665 (= (size!42232 testedP!204) lt!2632259)))

(declare-fun b!7502094 () Bool)

(assert (=> b!7502094 (= e!4472763 0)))

(declare-fun b!7502095 () Bool)

(assert (=> b!7502095 (= e!4472763 (+ 1 (size!42232 (t!386981 testedP!204))))))

(assert (= (and d!2302665 c!1384911) b!7502094))

(assert (= (and d!2302665 (not c!1384911)) b!7502095))

(declare-fun m!8083650 () Bool)

(assert (=> b!7502095 m!8083650))

(assert (=> b!7502083 d!2302665))

(declare-fun d!2302667 () Bool)

(declare-fun e!4472769 () Bool)

(assert (=> d!2302667 e!4472769))

(declare-fun res!3009592 () Bool)

(assert (=> d!2302667 (=> (not res!3009592) (not e!4472769))))

(declare-fun lt!2632262 () List!72412)

(declare-fun content!15278 (List!72412) (InoxSet C!39648))

(assert (=> d!2302667 (= res!3009592 (= (content!15278 lt!2632262) ((_ map or) (content!15278 testedP!204) (content!15278 testedSuffix!164))))))

(declare-fun e!4472768 () List!72412)

(assert (=> d!2302667 (= lt!2632262 e!4472768)))

(declare-fun c!1384914 () Bool)

(assert (=> d!2302667 (= c!1384914 ((_ is Nil!72288) testedP!204))))

(assert (=> d!2302667 (= (++!17290 testedP!204 testedSuffix!164) lt!2632262)))

(declare-fun b!7502107 () Bool)

(assert (=> b!7502107 (= e!4472769 (or (not (= testedSuffix!164 Nil!72288)) (= lt!2632262 testedP!204)))))

(declare-fun b!7502105 () Bool)

(assert (=> b!7502105 (= e!4472768 (Cons!72288 (h!78736 testedP!204) (++!17290 (t!386981 testedP!204) testedSuffix!164)))))

(declare-fun b!7502106 () Bool)

(declare-fun res!3009591 () Bool)

(assert (=> b!7502106 (=> (not res!3009591) (not e!4472769))))

(assert (=> b!7502106 (= res!3009591 (= (size!42232 lt!2632262) (+ (size!42232 testedP!204) (size!42232 testedSuffix!164))))))

(declare-fun b!7502104 () Bool)

(assert (=> b!7502104 (= e!4472768 testedSuffix!164)))

(assert (= (and d!2302667 c!1384914) b!7502104))

(assert (= (and d!2302667 (not c!1384914)) b!7502105))

(assert (= (and d!2302667 res!3009592) b!7502106))

(assert (= (and b!7502106 res!3009591) b!7502107))

(declare-fun m!8083652 () Bool)

(assert (=> d!2302667 m!8083652))

(declare-fun m!8083654 () Bool)

(assert (=> d!2302667 m!8083654))

(declare-fun m!8083656 () Bool)

(assert (=> d!2302667 m!8083656))

(declare-fun m!8083658 () Bool)

(assert (=> b!7502105 m!8083658))

(declare-fun m!8083660 () Bool)

(assert (=> b!7502106 m!8083660))

(assert (=> b!7502106 m!8083642))

(declare-fun m!8083662 () Bool)

(assert (=> b!7502106 m!8083662))

(assert (=> start!725822 d!2302667))

(declare-fun b!7502134 () Bool)

(declare-fun e!4472790 () Bool)

(declare-fun tail!14966 (List!72412) List!72412)

(assert (=> b!7502134 (= e!4472790 (isPrefix!5957 (tail!14966 testedP!204) (tail!14966 totalInput!779)))))

(declare-fun b!7502133 () Bool)

(declare-fun res!3009617 () Bool)

(assert (=> b!7502133 (=> (not res!3009617) (not e!4472790))))

(declare-fun head!15397 (List!72412) C!39648)

(assert (=> b!7502133 (= res!3009617 (= (head!15397 testedP!204) (head!15397 totalInput!779)))))

(declare-fun b!7502132 () Bool)

(declare-fun e!4472789 () Bool)

(assert (=> b!7502132 (= e!4472789 e!4472790)))

(declare-fun res!3009619 () Bool)

(assert (=> b!7502132 (=> (not res!3009619) (not e!4472790))))

(assert (=> b!7502132 (= res!3009619 (not ((_ is Nil!72288) totalInput!779)))))

(declare-fun d!2302671 () Bool)

(declare-fun e!4472788 () Bool)

(assert (=> d!2302671 e!4472788))

(declare-fun res!3009618 () Bool)

(assert (=> d!2302671 (=> res!3009618 e!4472788)))

(declare-fun lt!2632269 () Bool)

(assert (=> d!2302671 (= res!3009618 (not lt!2632269))))

(assert (=> d!2302671 (= lt!2632269 e!4472789)))

(declare-fun res!3009620 () Bool)

(assert (=> d!2302671 (=> res!3009620 e!4472789)))

(assert (=> d!2302671 (= res!3009620 ((_ is Nil!72288) testedP!204))))

(assert (=> d!2302671 (= (isPrefix!5957 testedP!204 totalInput!779) lt!2632269)))

(declare-fun b!7502135 () Bool)

(assert (=> b!7502135 (= e!4472788 (>= (size!42232 totalInput!779) (size!42232 testedP!204)))))

(assert (= (and d!2302671 (not res!3009620)) b!7502132))

(assert (= (and b!7502132 res!3009619) b!7502133))

(assert (= (and b!7502133 res!3009617) b!7502134))

(assert (= (and d!2302671 (not res!3009618)) b!7502135))

(declare-fun m!8083682 () Bool)

(assert (=> b!7502134 m!8083682))

(declare-fun m!8083684 () Bool)

(assert (=> b!7502134 m!8083684))

(assert (=> b!7502134 m!8083682))

(assert (=> b!7502134 m!8083684))

(declare-fun m!8083686 () Bool)

(assert (=> b!7502134 m!8083686))

(declare-fun m!8083688 () Bool)

(assert (=> b!7502133 m!8083688))

(declare-fun m!8083690 () Bool)

(assert (=> b!7502133 m!8083690))

(assert (=> b!7502135 m!8083640))

(assert (=> b!7502135 m!8083642))

(assert (=> b!7502082 d!2302671))

(declare-fun b!7502138 () Bool)

(declare-fun e!4472793 () Bool)

(assert (=> b!7502138 (= e!4472793 (isPrefix!5957 (tail!14966 testedP!204) (tail!14966 lt!2632253)))))

(declare-fun b!7502137 () Bool)

(declare-fun res!3009621 () Bool)

(assert (=> b!7502137 (=> (not res!3009621) (not e!4472793))))

(assert (=> b!7502137 (= res!3009621 (= (head!15397 testedP!204) (head!15397 lt!2632253)))))

(declare-fun b!7502136 () Bool)

(declare-fun e!4472792 () Bool)

(assert (=> b!7502136 (= e!4472792 e!4472793)))

(declare-fun res!3009623 () Bool)

(assert (=> b!7502136 (=> (not res!3009623) (not e!4472793))))

(assert (=> b!7502136 (= res!3009623 (not ((_ is Nil!72288) lt!2632253)))))

(declare-fun d!2302677 () Bool)

(declare-fun e!4472791 () Bool)

(assert (=> d!2302677 e!4472791))

(declare-fun res!3009622 () Bool)

(assert (=> d!2302677 (=> res!3009622 e!4472791)))

(declare-fun lt!2632270 () Bool)

(assert (=> d!2302677 (= res!3009622 (not lt!2632270))))

(assert (=> d!2302677 (= lt!2632270 e!4472792)))

(declare-fun res!3009624 () Bool)

(assert (=> d!2302677 (=> res!3009624 e!4472792)))

(assert (=> d!2302677 (= res!3009624 ((_ is Nil!72288) testedP!204))))

(assert (=> d!2302677 (= (isPrefix!5957 testedP!204 lt!2632253) lt!2632270)))

(declare-fun b!7502139 () Bool)

(assert (=> b!7502139 (= e!4472791 (>= (size!42232 lt!2632253) (size!42232 testedP!204)))))

(assert (= (and d!2302677 (not res!3009624)) b!7502136))

(assert (= (and b!7502136 res!3009623) b!7502137))

(assert (= (and b!7502137 res!3009621) b!7502138))

(assert (= (and d!2302677 (not res!3009622)) b!7502139))

(assert (=> b!7502138 m!8083682))

(declare-fun m!8083692 () Bool)

(assert (=> b!7502138 m!8083692))

(assert (=> b!7502138 m!8083682))

(assert (=> b!7502138 m!8083692))

(declare-fun m!8083694 () Bool)

(assert (=> b!7502138 m!8083694))

(assert (=> b!7502137 m!8083688))

(declare-fun m!8083696 () Bool)

(assert (=> b!7502137 m!8083696))

(declare-fun m!8083698 () Bool)

(assert (=> b!7502139 m!8083698))

(assert (=> b!7502139 m!8083642))

(assert (=> b!7502082 d!2302677))

(declare-fun d!2302679 () Bool)

(assert (=> d!2302679 (isPrefix!5957 testedP!204 (++!17290 testedP!204 testedSuffix!164))))

(declare-fun lt!2632276 () Unit!166210)

(declare-fun choose!57999 (List!72412 List!72412) Unit!166210)

(assert (=> d!2302679 (= lt!2632276 (choose!57999 testedP!204 testedSuffix!164))))

(assert (=> d!2302679 (= (lemmaConcatTwoListThenFirstIsPrefix!3670 testedP!204 testedSuffix!164) lt!2632276)))

(declare-fun bs!1937731 () Bool)

(assert (= bs!1937731 d!2302679))

(assert (=> bs!1937731 m!8083638))

(assert (=> bs!1937731 m!8083638))

(declare-fun m!8083704 () Bool)

(assert (=> bs!1937731 m!8083704))

(declare-fun m!8083706 () Bool)

(assert (=> bs!1937731 m!8083706))

(assert (=> b!7502082 d!2302679))

(declare-fun bs!1937740 () Bool)

(declare-fun b!7502197 () Bool)

(declare-fun d!2302683 () Bool)

(assert (= bs!1937740 (and b!7502197 d!2302683)))

(declare-fun lambda!464953 () Int)

(declare-fun lambda!464952 () Int)

(assert (=> bs!1937740 (not (= lambda!464953 lambda!464952))))

(declare-fun bs!1937741 () Bool)

(declare-fun b!7502198 () Bool)

(assert (= bs!1937741 (and b!7502198 d!2302683)))

(declare-fun lambda!464954 () Int)

(assert (=> bs!1937741 (not (= lambda!464954 lambda!464952))))

(declare-fun bs!1937742 () Bool)

(assert (= bs!1937742 (and b!7502198 b!7502197)))

(assert (=> bs!1937742 (= lambda!464954 lambda!464953)))

(declare-fun bm!688602 () Bool)

(declare-datatypes ((List!72415 0))(
  ( (Nil!72291) (Cons!72291 (h!78739 Context!16846) (t!386984 List!72415)) )
))
(declare-fun call!688608 () List!72415)

(declare-fun toList!11814 ((InoxSet Context!16846)) List!72415)

(assert (=> bm!688602 (= call!688608 (toList!11814 z!3716))))

(declare-fun e!4472834 () Unit!166210)

(declare-fun Unit!166216 () Unit!166210)

(assert (=> b!7502198 (= e!4472834 Unit!166216)))

(declare-fun lt!2632346 () List!72415)

(assert (=> b!7502198 (= lt!2632346 call!688608)))

(declare-fun lt!2632344 () Unit!166210)

(declare-fun lemmaForallThenNotExists!452 (List!72415 Int) Unit!166210)

(assert (=> b!7502198 (= lt!2632344 (lemmaForallThenNotExists!452 lt!2632346 lambda!464952))))

(declare-fun call!688607 () Bool)

(assert (=> b!7502198 (not call!688607)))

(declare-fun lt!2632342 () Unit!166210)

(assert (=> b!7502198 (= lt!2632342 lt!2632344)))

(declare-fun c!1384946 () Bool)

(declare-fun lt!2632345 () List!72415)

(declare-fun bm!688603 () Bool)

(declare-fun exists!4834 (List!72415 Int) Bool)

(assert (=> bm!688603 (= call!688607 (exists!4834 (ite c!1384946 lt!2632345 lt!2632346) (ite c!1384946 lambda!464953 lambda!464954)))))

(declare-fun Unit!166217 () Unit!166210)

(assert (=> b!7502197 (= e!4472834 Unit!166217)))

(assert (=> b!7502197 (= lt!2632345 call!688608)))

(declare-fun lt!2632343 () Unit!166210)

(declare-fun lemmaNotForallThenExists!485 (List!72415 Int) Unit!166210)

(assert (=> b!7502197 (= lt!2632343 (lemmaNotForallThenExists!485 lt!2632345 lambda!464952))))

(assert (=> b!7502197 call!688607))

(declare-fun lt!2632341 () Unit!166210)

(assert (=> b!7502197 (= lt!2632341 lt!2632343)))

(declare-fun lt!2632347 () Bool)

(declare-datatypes ((Option!17210 0))(
  ( (None!17209) (Some!17209 (v!54338 List!72412)) )
))
(declare-fun isEmpty!41294 (Option!17210) Bool)

(declare-fun getLanguageWitness!1028 ((InoxSet Context!16846)) Option!17210)

(assert (=> d!2302683 (= lt!2632347 (isEmpty!41294 (getLanguageWitness!1028 z!3716)))))

(declare-fun forall!18251 ((InoxSet Context!16846) Int) Bool)

(assert (=> d!2302683 (= lt!2632347 (forall!18251 z!3716 lambda!464952))))

(declare-fun lt!2632340 () Unit!166210)

(assert (=> d!2302683 (= lt!2632340 e!4472834)))

(assert (=> d!2302683 (= c!1384946 (not (forall!18251 z!3716 lambda!464952)))))

(assert (=> d!2302683 (= (lostCauseZipper!1359 z!3716) lt!2632347)))

(assert (= (and d!2302683 c!1384946) b!7502197))

(assert (= (and d!2302683 (not c!1384946)) b!7502198))

(assert (= (or b!7502197 b!7502198) bm!688602))

(assert (= (or b!7502197 b!7502198) bm!688603))

(declare-fun m!8083756 () Bool)

(assert (=> b!7502198 m!8083756))

(declare-fun m!8083758 () Bool)

(assert (=> bm!688603 m!8083758))

(declare-fun m!8083760 () Bool)

(assert (=> bm!688602 m!8083760))

(declare-fun m!8083762 () Bool)

(assert (=> b!7502197 m!8083762))

(declare-fun m!8083764 () Bool)

(assert (=> d!2302683 m!8083764))

(assert (=> d!2302683 m!8083764))

(declare-fun m!8083766 () Bool)

(assert (=> d!2302683 m!8083766))

(declare-fun m!8083768 () Bool)

(assert (=> d!2302683 m!8083768))

(assert (=> d!2302683 m!8083768))

(assert (=> b!7502088 d!2302683))

(declare-fun d!2302705 () Bool)

(assert (=> d!2302705 (= testedSuffix!164 lt!2632248)))

(declare-fun lt!2632350 () Unit!166210)

(declare-fun choose!58001 (List!72412 List!72412 List!72412 List!72412 List!72412) Unit!166210)

(assert (=> d!2302705 (= lt!2632350 (choose!58001 testedP!204 testedSuffix!164 testedP!204 lt!2632248 totalInput!779))))

(assert (=> d!2302705 (isPrefix!5957 testedP!204 totalInput!779)))

(assert (=> d!2302705 (= (lemmaSamePrefixThenSameSuffix!2762 testedP!204 testedSuffix!164 testedP!204 lt!2632248 totalInput!779) lt!2632350)))

(declare-fun bs!1937743 () Bool)

(assert (= bs!1937743 d!2302705))

(declare-fun m!8083770 () Bool)

(assert (=> bs!1937743 m!8083770))

(assert (=> bs!1937743 m!8083644))

(assert (=> b!7502088 d!2302705))

(declare-fun d!2302707 () Bool)

(declare-fun lt!2632353 () List!72412)

(assert (=> d!2302707 (= (++!17290 testedP!204 lt!2632353) totalInput!779)))

(declare-fun e!4472837 () List!72412)

(assert (=> d!2302707 (= lt!2632353 e!4472837)))

(declare-fun c!1384949 () Bool)

(assert (=> d!2302707 (= c!1384949 ((_ is Cons!72288) testedP!204))))

(assert (=> d!2302707 (>= (size!42232 totalInput!779) (size!42232 testedP!204))))

(assert (=> d!2302707 (= (getSuffix!3459 totalInput!779 testedP!204) lt!2632353)))

(declare-fun b!7502203 () Bool)

(assert (=> b!7502203 (= e!4472837 (getSuffix!3459 (tail!14966 totalInput!779) (t!386981 testedP!204)))))

(declare-fun b!7502204 () Bool)

(assert (=> b!7502204 (= e!4472837 totalInput!779)))

(assert (= (and d!2302707 c!1384949) b!7502203))

(assert (= (and d!2302707 (not c!1384949)) b!7502204))

(declare-fun m!8083772 () Bool)

(assert (=> d!2302707 m!8083772))

(assert (=> d!2302707 m!8083640))

(assert (=> d!2302707 m!8083642))

(assert (=> b!7502203 m!8083684))

(assert (=> b!7502203 m!8083684))

(declare-fun m!8083774 () Bool)

(assert (=> b!7502203 m!8083774))

(assert (=> b!7502088 d!2302707))

(declare-fun d!2302709 () Bool)

(declare-fun lambda!464957 () Int)

(declare-fun forall!18252 (List!72413 Int) Bool)

(assert (=> d!2302709 (= (inv!92392 setElem!56840) (forall!18252 (exprs!8923 setElem!56840) lambda!464957))))

(declare-fun bs!1937744 () Bool)

(assert (= bs!1937744 d!2302709))

(declare-fun m!8083776 () Bool)

(assert (=> bs!1937744 m!8083776))

(assert (=> setNonEmpty!56840 d!2302709))

(declare-fun d!2302711 () Bool)

(assert (=> d!2302711 (isPrefix!5957 totalInput!779 totalInput!779)))

(declare-fun lt!2632356 () Unit!166210)

(declare-fun choose!58002 (List!72412 List!72412) Unit!166210)

(assert (=> d!2302711 (= lt!2632356 (choose!58002 totalInput!779 totalInput!779))))

(assert (=> d!2302711 (= (lemmaIsPrefixRefl!3806 totalInput!779 totalInput!779) lt!2632356)))

(declare-fun bs!1937745 () Bool)

(assert (= bs!1937745 d!2302711))

(assert (=> bs!1937745 m!8083624))

(declare-fun m!8083778 () Bool)

(assert (=> bs!1937745 m!8083778))

(assert (=> b!7502089 d!2302711))

(declare-fun b!7502207 () Bool)

(declare-fun e!4472840 () Bool)

(assert (=> b!7502207 (= e!4472840 (isPrefix!5957 (tail!14966 totalInput!779) (tail!14966 totalInput!779)))))

(declare-fun b!7502206 () Bool)

(declare-fun res!3009635 () Bool)

(assert (=> b!7502206 (=> (not res!3009635) (not e!4472840))))

(assert (=> b!7502206 (= res!3009635 (= (head!15397 totalInput!779) (head!15397 totalInput!779)))))

(declare-fun b!7502205 () Bool)

(declare-fun e!4472839 () Bool)

(assert (=> b!7502205 (= e!4472839 e!4472840)))

(declare-fun res!3009637 () Bool)

(assert (=> b!7502205 (=> (not res!3009637) (not e!4472840))))

(assert (=> b!7502205 (= res!3009637 (not ((_ is Nil!72288) totalInput!779)))))

(declare-fun d!2302713 () Bool)

(declare-fun e!4472838 () Bool)

(assert (=> d!2302713 e!4472838))

(declare-fun res!3009636 () Bool)

(assert (=> d!2302713 (=> res!3009636 e!4472838)))

(declare-fun lt!2632357 () Bool)

(assert (=> d!2302713 (= res!3009636 (not lt!2632357))))

(assert (=> d!2302713 (= lt!2632357 e!4472839)))

(declare-fun res!3009638 () Bool)

(assert (=> d!2302713 (=> res!3009638 e!4472839)))

(assert (=> d!2302713 (= res!3009638 ((_ is Nil!72288) totalInput!779))))

(assert (=> d!2302713 (= (isPrefix!5957 totalInput!779 totalInput!779) lt!2632357)))

(declare-fun b!7502208 () Bool)

(assert (=> b!7502208 (= e!4472838 (>= (size!42232 totalInput!779) (size!42232 totalInput!779)))))

(assert (= (and d!2302713 (not res!3009638)) b!7502205))

(assert (= (and b!7502205 res!3009637) b!7502206))

(assert (= (and b!7502206 res!3009635) b!7502207))

(assert (= (and d!2302713 (not res!3009636)) b!7502208))

(assert (=> b!7502207 m!8083684))

(assert (=> b!7502207 m!8083684))

(assert (=> b!7502207 m!8083684))

(assert (=> b!7502207 m!8083684))

(declare-fun m!8083780 () Bool)

(assert (=> b!7502207 m!8083780))

(assert (=> b!7502206 m!8083690))

(assert (=> b!7502206 m!8083690))

(assert (=> b!7502208 m!8083640))

(assert (=> b!7502208 m!8083640))

(assert (=> b!7502089 d!2302713))

(declare-fun d!2302715 () Bool)

(assert (=> d!2302715 (= totalInput!779 testedP!204)))

(declare-fun lt!2632360 () Unit!166210)

(declare-fun choose!58003 (List!72412 List!72412 List!72412) Unit!166210)

(assert (=> d!2302715 (= lt!2632360 (choose!58003 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2302715 (isPrefix!5957 totalInput!779 totalInput!779)))

(assert (=> d!2302715 (= (lemmaIsPrefixSameLengthThenSameList!1460 totalInput!779 testedP!204 totalInput!779) lt!2632360)))

(declare-fun bs!1937746 () Bool)

(assert (= bs!1937746 d!2302715))

(declare-fun m!8083782 () Bool)

(assert (=> bs!1937746 m!8083782))

(assert (=> bs!1937746 m!8083624))

(assert (=> b!7502089 d!2302715))

(declare-fun d!2302717 () Bool)

(declare-fun lt!2632361 () Int)

(assert (=> d!2302717 (>= lt!2632361 0)))

(declare-fun e!4472841 () Int)

(assert (=> d!2302717 (= lt!2632361 e!4472841)))

(declare-fun c!1384950 () Bool)

(assert (=> d!2302717 (= c!1384950 ((_ is Nil!72288) totalInput!779))))

(assert (=> d!2302717 (= (size!42232 totalInput!779) lt!2632361)))

(declare-fun b!7502209 () Bool)

(assert (=> b!7502209 (= e!4472841 0)))

(declare-fun b!7502210 () Bool)

(assert (=> b!7502210 (= e!4472841 (+ 1 (size!42232 (t!386981 totalInput!779))))))

(assert (= (and d!2302717 c!1384950) b!7502209))

(assert (= (and d!2302717 (not c!1384950)) b!7502210))

(declare-fun m!8083784 () Bool)

(assert (=> b!7502210 m!8083784))

(assert (=> b!7502086 d!2302717))

(declare-fun d!2302719 () Bool)

(assert (=> d!2302719 (<= (size!42232 testedP!204) (size!42232 totalInput!779))))

(declare-fun lt!2632364 () Unit!166210)

(declare-fun choose!58004 (List!72412 List!72412) Unit!166210)

(assert (=> d!2302719 (= lt!2632364 (choose!58004 testedP!204 totalInput!779))))

(assert (=> d!2302719 (isPrefix!5957 testedP!204 totalInput!779)))

(assert (=> d!2302719 (= (lemmaIsPrefixThenSmallerEqSize!962 testedP!204 totalInput!779) lt!2632364)))

(declare-fun bs!1937747 () Bool)

(assert (= bs!1937747 d!2302719))

(assert (=> bs!1937747 m!8083642))

(assert (=> bs!1937747 m!8083640))

(declare-fun m!8083786 () Bool)

(assert (=> bs!1937747 m!8083786))

(assert (=> bs!1937747 m!8083644))

(assert (=> b!7502081 d!2302719))

(declare-fun b!7502215 () Bool)

(declare-fun e!4472844 () Bool)

(declare-fun tp!2177779 () Bool)

(assert (=> b!7502215 (= e!4472844 (and tp_is_empty!49663 tp!2177779))))

(assert (=> b!7502087 (= tp!2177758 e!4472844)))

(assert (= (and b!7502087 ((_ is Cons!72288) (t!386981 testedP!204))) b!7502215))

(declare-fun b!7502220 () Bool)

(declare-fun e!4472847 () Bool)

(declare-fun tp!2177784 () Bool)

(declare-fun tp!2177785 () Bool)

(assert (=> b!7502220 (= e!4472847 (and tp!2177784 tp!2177785))))

(assert (=> b!7502084 (= tp!2177757 e!4472847)))

(assert (= (and b!7502084 ((_ is Cons!72289) (exprs!8923 setElem!56840))) b!7502220))

(declare-fun b!7502221 () Bool)

(declare-fun e!4472848 () Bool)

(declare-fun tp!2177786 () Bool)

(assert (=> b!7502221 (= e!4472848 (and tp_is_empty!49663 tp!2177786))))

(assert (=> b!7502078 (= tp!2177759 e!4472848)))

(assert (= (and b!7502078 ((_ is Cons!72288) (t!386981 totalInput!779))) b!7502221))

(declare-fun condSetEmpty!56846 () Bool)

(assert (=> setNonEmpty!56840 (= condSetEmpty!56846 (= setRest!56840 ((as const (Array Context!16846 Bool)) false)))))

(declare-fun setRes!56846 () Bool)

(assert (=> setNonEmpty!56840 (= tp!2177756 setRes!56846)))

(declare-fun setIsEmpty!56846 () Bool)

(assert (=> setIsEmpty!56846 setRes!56846))

(declare-fun setElem!56846 () Context!16846)

(declare-fun tp!2177791 () Bool)

(declare-fun e!4472851 () Bool)

(declare-fun setNonEmpty!56846 () Bool)

(assert (=> setNonEmpty!56846 (= setRes!56846 (and tp!2177791 (inv!92392 setElem!56846) e!4472851))))

(declare-fun setRest!56846 () (InoxSet Context!16846))

(assert (=> setNonEmpty!56846 (= setRest!56840 ((_ map or) (store ((as const (Array Context!16846 Bool)) false) setElem!56846 true) setRest!56846))))

(declare-fun b!7502226 () Bool)

(declare-fun tp!2177792 () Bool)

(assert (=> b!7502226 (= e!4472851 tp!2177792)))

(assert (= (and setNonEmpty!56840 condSetEmpty!56846) setIsEmpty!56846))

(assert (= (and setNonEmpty!56840 (not condSetEmpty!56846)) setNonEmpty!56846))

(assert (= setNonEmpty!56846 b!7502226))

(declare-fun m!8083788 () Bool)

(assert (=> setNonEmpty!56846 m!8083788))

(declare-fun b!7502227 () Bool)

(declare-fun e!4472852 () Bool)

(declare-fun tp!2177793 () Bool)

(assert (=> b!7502227 (= e!4472852 (and tp_is_empty!49663 tp!2177793))))

(assert (=> b!7502085 (= tp!2177755 e!4472852)))

(assert (= (and b!7502085 ((_ is Cons!72288) (t!386981 testedSuffix!164))) b!7502227))

(check-sat (not b!7502226) (not b!7502105) (not b!7502227) (not b!7502095) (not b!7502137) (not b!7502138) (not b!7502134) (not b!7502206) (not d!2302709) (not d!2302679) (not d!2302715) (not bm!688603) (not b!7502215) tp_is_empty!49663 (not bm!688602) (not b!7502220) (not d!2302705) (not d!2302667) (not b!7502221) (not d!2302719) (not d!2302707) (not d!2302711) (not b!7502198) (not setNonEmpty!56846) (not b!7502139) (not b!7502203) (not b!7502210) (not b!7502106) (not b!7502208) (not b!7502207) (not b!7502133) (not b!7502135) (not b!7502197) (not d!2302683))
(check-sat)
