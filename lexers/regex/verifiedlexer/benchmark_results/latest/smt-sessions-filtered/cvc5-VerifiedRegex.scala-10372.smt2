; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537858 () Bool)

(assert start!537858)

(declare-fun b!5100132 () Bool)

(declare-fun e!3180825 () Bool)

(declare-datatypes ((C!28334 0))(
  ( (C!28335 (val!23819 Int)) )
))
(declare-datatypes ((List!58900 0))(
  ( (Nil!58776) (Cons!58776 (h!65224 C!28334) (t!371901 List!58900)) )
))
(declare-datatypes ((tuple2!63462 0))(
  ( (tuple2!63463 (_1!35034 List!58900) (_2!35034 List!58900)) )
))
(declare-fun lt!2096508 () tuple2!63462)

(declare-fun isEmpty!31783 (List!58900) Bool)

(assert (=> b!5100132 (= e!3180825 (isEmpty!31783 (_1!35034 lt!2096508)))))

(declare-fun b!5100133 () Bool)

(declare-fun res!2170643 () Bool)

(declare-fun e!3180823 () Bool)

(assert (=> b!5100133 (=> (not res!2170643) (not e!3180823))))

(declare-datatypes ((Regex!14038 0))(
  ( (ElementMatch!14038 (c!876182 C!28334)) (Concat!22883 (regOne!28588 Regex!14038) (regTwo!28588 Regex!14038)) (EmptyExpr!14038) (Star!14038 (reg!14367 Regex!14038)) (EmptyLang!14038) (Union!14038 (regOne!28589 Regex!14038) (regTwo!28589 Regex!14038)) )
))
(declare-datatypes ((List!58901 0))(
  ( (Nil!58777) (Cons!58777 (h!65225 Regex!14038) (t!371902 List!58901)) )
))
(declare-datatypes ((Context!6844 0))(
  ( (Context!6845 (exprs!3922 List!58901)) )
))
(declare-fun z!4303 () (Set Context!6844))

(declare-fun r!12920 () Regex!14038)

(declare-datatypes ((List!58902 0))(
  ( (Nil!58778) (Cons!58778 (h!65226 Context!6844) (t!371903 List!58902)) )
))
(declare-fun unfocusZipper!380 (List!58902) Regex!14038)

(declare-fun toList!8172 ((Set Context!6844)) List!58902)

(assert (=> b!5100133 (= res!2170643 (= (unfocusZipper!380 (toList!8172 z!4303)) r!12920))))

(declare-fun b!5100134 () Bool)

(declare-fun e!3180826 () Bool)

(assert (=> b!5100134 (= e!3180823 e!3180826)))

(declare-fun res!2170649 () Bool)

(assert (=> b!5100134 (=> (not res!2170649) (not e!3180826))))

(declare-fun lt!2096503 () List!58900)

(declare-fun input!5654 () List!58900)

(assert (=> b!5100134 (= res!2170649 (= lt!2096503 input!5654))))

(declare-fun ++!12887 (List!58900 List!58900) List!58900)

(assert (=> b!5100134 (= lt!2096503 (++!12887 (_1!35034 lt!2096508) (_2!35034 lt!2096508)))))

(declare-fun lt!2096511 () tuple2!63462)

(declare-fun findLongestMatch!1868 (Regex!14038 List!58900) tuple2!63462)

(assert (=> b!5100134 (= lt!2096511 (findLongestMatch!1868 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!62 ((Set Context!6844) List!58900) tuple2!63462)

(assert (=> b!5100134 (= lt!2096508 (findLongestMatchZipper!62 z!4303 input!5654))))

(declare-fun setIsEmpty!29191 () Bool)

(declare-fun setRes!29191 () Bool)

(assert (=> setIsEmpty!29191 setRes!29191))

(declare-fun b!5100135 () Bool)

(declare-fun e!3180827 () Bool)

(declare-fun tp_is_empty!37341 () Bool)

(assert (=> b!5100135 (= e!3180827 tp_is_empty!37341)))

(declare-fun b!5100136 () Bool)

(declare-fun e!3180829 () Bool)

(assert (=> b!5100136 (= e!3180826 e!3180829)))

(declare-fun res!2170645 () Bool)

(assert (=> b!5100136 (=> (not res!2170645) (not e!3180829))))

(declare-fun lt!2096513 () List!58900)

(assert (=> b!5100136 (= res!2170645 (= lt!2096513 input!5654))))

(assert (=> b!5100136 (= lt!2096513 (++!12887 (_1!35034 lt!2096511) (_2!35034 lt!2096511)))))

(declare-fun b!5100137 () Bool)

(declare-fun e!3180824 () Bool)

(declare-fun tp!1422624 () Bool)

(assert (=> b!5100137 (= e!3180824 (and tp_is_empty!37341 tp!1422624))))

(declare-fun b!5100138 () Bool)

(declare-fun e!3180830 () Bool)

(declare-fun tp!1422626 () Bool)

(assert (=> b!5100138 (= e!3180830 tp!1422626)))

(declare-fun res!2170646 () Bool)

(assert (=> start!537858 (=> (not res!2170646) (not e!3180823))))

(declare-fun validRegex!6165 (Regex!14038) Bool)

(assert (=> start!537858 (= res!2170646 (validRegex!6165 r!12920))))

(assert (=> start!537858 e!3180823))

(assert (=> start!537858 e!3180827))

(declare-fun condSetEmpty!29191 () Bool)

(assert (=> start!537858 (= condSetEmpty!29191 (= z!4303 (as set.empty (Set Context!6844))))))

(assert (=> start!537858 setRes!29191))

(assert (=> start!537858 e!3180824))

(declare-fun b!5100139 () Bool)

(declare-fun tp!1422627 () Bool)

(declare-fun tp!1422630 () Bool)

(assert (=> b!5100139 (= e!3180827 (and tp!1422627 tp!1422630))))

(declare-fun setNonEmpty!29191 () Bool)

(declare-fun tp!1422628 () Bool)

(declare-fun setElem!29191 () Context!6844)

(declare-fun inv!78271 (Context!6844) Bool)

(assert (=> setNonEmpty!29191 (= setRes!29191 (and tp!1422628 (inv!78271 setElem!29191) e!3180830))))

(declare-fun setRest!29191 () (Set Context!6844))

(assert (=> setNonEmpty!29191 (= z!4303 (set.union (set.insert setElem!29191 (as set.empty (Set Context!6844))) setRest!29191))))

(declare-fun b!5100140 () Bool)

(declare-fun e!3180828 () Bool)

(declare-fun lt!2096506 () tuple2!63462)

(declare-fun matchZipper!710 ((Set Context!6844) List!58900) Bool)

(assert (=> b!5100140 (= e!3180828 (matchZipper!710 z!4303 (_1!35034 lt!2096506)))))

(declare-fun b!5100141 () Bool)

(declare-fun tp!1422625 () Bool)

(assert (=> b!5100141 (= e!3180827 tp!1422625)))

(declare-fun b!5100142 () Bool)

(declare-fun e!3180822 () Bool)

(declare-fun lt!2096507 () tuple2!63462)

(declare-fun matchR!6823 (Regex!14038 List!58900) Bool)

(assert (=> b!5100142 (= e!3180822 (matchR!6823 r!12920 (_1!35034 lt!2096507)))))

(declare-fun b!5100143 () Bool)

(declare-fun tp!1422629 () Bool)

(declare-fun tp!1422631 () Bool)

(assert (=> b!5100143 (= e!3180827 (and tp!1422629 tp!1422631))))

(declare-fun b!5100144 () Bool)

(assert (=> b!5100144 (= e!3180829 (not e!3180825))))

(declare-fun res!2170648 () Bool)

(assert (=> b!5100144 (=> res!2170648 e!3180825)))

(assert (=> b!5100144 (= res!2170648 (matchZipper!710 z!4303 (_1!35034 lt!2096508)))))

(assert (=> b!5100144 e!3180822))

(declare-fun res!2170647 () Bool)

(assert (=> b!5100144 (=> res!2170647 e!3180822)))

(assert (=> b!5100144 (= res!2170647 (isEmpty!31783 (_1!35034 lt!2096507)))))

(declare-fun lt!2096510 () Int)

(declare-fun lt!2096514 () Int)

(declare-fun findLongestMatchInner!2051 (Regex!14038 List!58900 Int List!58900 List!58900 Int) tuple2!63462)

(assert (=> b!5100144 (= lt!2096507 (findLongestMatchInner!2051 r!12920 Nil!58776 lt!2096514 input!5654 input!5654 lt!2096510))))

(declare-datatypes ((Unit!149800 0))(
  ( (Unit!149801) )
))
(declare-fun lt!2096504 () Unit!149800)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2022 (Regex!14038 List!58900) Unit!149800)

(assert (=> b!5100144 (= lt!2096504 (longestMatchIsAcceptedByMatchOrIsEmpty!2022 r!12920 input!5654))))

(assert (=> b!5100144 e!3180828))

(declare-fun res!2170644 () Bool)

(assert (=> b!5100144 (=> res!2170644 e!3180828)))

(assert (=> b!5100144 (= res!2170644 (isEmpty!31783 (_1!35034 lt!2096506)))))

(declare-fun findLongestMatchInnerZipper!112 ((Set Context!6844) List!58900 Int List!58900 List!58900 Int) tuple2!63462)

(assert (=> b!5100144 (= lt!2096506 (findLongestMatchInnerZipper!112 z!4303 Nil!58776 lt!2096514 input!5654 input!5654 lt!2096510))))

(declare-fun size!39340 (List!58900) Int)

(assert (=> b!5100144 (= lt!2096510 (size!39340 input!5654))))

(assert (=> b!5100144 (= lt!2096514 (size!39340 Nil!58776))))

(declare-fun lt!2096505 () Unit!149800)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2023 ((Set Context!6844) List!58900) Unit!149800)

(assert (=> b!5100144 (= lt!2096505 (longestMatchIsAcceptedByMatchOrIsEmpty!2023 z!4303 input!5654))))

(declare-fun isPrefix!5439 (List!58900 List!58900) Bool)

(assert (=> b!5100144 (isPrefix!5439 (_1!35034 lt!2096511) lt!2096513)))

(declare-fun lt!2096512 () Unit!149800)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3497 (List!58900 List!58900) Unit!149800)

(assert (=> b!5100144 (= lt!2096512 (lemmaConcatTwoListThenFirstIsPrefix!3497 (_1!35034 lt!2096511) (_2!35034 lt!2096511)))))

(assert (=> b!5100144 (isPrefix!5439 (_1!35034 lt!2096508) lt!2096503)))

(declare-fun lt!2096509 () Unit!149800)

(assert (=> b!5100144 (= lt!2096509 (lemmaConcatTwoListThenFirstIsPrefix!3497 (_1!35034 lt!2096508) (_2!35034 lt!2096508)))))

(assert (= (and start!537858 res!2170646) b!5100133))

(assert (= (and b!5100133 res!2170643) b!5100134))

(assert (= (and b!5100134 res!2170649) b!5100136))

(assert (= (and b!5100136 res!2170645) b!5100144))

(assert (= (and b!5100144 (not res!2170644)) b!5100140))

(assert (= (and b!5100144 (not res!2170647)) b!5100142))

(assert (= (and b!5100144 (not res!2170648)) b!5100132))

(assert (= (and start!537858 (is-ElementMatch!14038 r!12920)) b!5100135))

(assert (= (and start!537858 (is-Concat!22883 r!12920)) b!5100139))

(assert (= (and start!537858 (is-Star!14038 r!12920)) b!5100141))

(assert (= (and start!537858 (is-Union!14038 r!12920)) b!5100143))

(assert (= (and start!537858 condSetEmpty!29191) setIsEmpty!29191))

(assert (= (and start!537858 (not condSetEmpty!29191)) setNonEmpty!29191))

(assert (= setNonEmpty!29191 b!5100138))

(assert (= (and start!537858 (is-Cons!58776 input!5654)) b!5100137))

(declare-fun m!6157510 () Bool)

(assert (=> b!5100133 m!6157510))

(assert (=> b!5100133 m!6157510))

(declare-fun m!6157512 () Bool)

(assert (=> b!5100133 m!6157512))

(declare-fun m!6157514 () Bool)

(assert (=> start!537858 m!6157514))

(declare-fun m!6157516 () Bool)

(assert (=> setNonEmpty!29191 m!6157516))

(declare-fun m!6157518 () Bool)

(assert (=> b!5100136 m!6157518))

(declare-fun m!6157520 () Bool)

(assert (=> b!5100134 m!6157520))

(declare-fun m!6157522 () Bool)

(assert (=> b!5100134 m!6157522))

(declare-fun m!6157524 () Bool)

(assert (=> b!5100134 m!6157524))

(declare-fun m!6157526 () Bool)

(assert (=> b!5100144 m!6157526))

(declare-fun m!6157528 () Bool)

(assert (=> b!5100144 m!6157528))

(declare-fun m!6157530 () Bool)

(assert (=> b!5100144 m!6157530))

(declare-fun m!6157532 () Bool)

(assert (=> b!5100144 m!6157532))

(declare-fun m!6157534 () Bool)

(assert (=> b!5100144 m!6157534))

(declare-fun m!6157536 () Bool)

(assert (=> b!5100144 m!6157536))

(declare-fun m!6157538 () Bool)

(assert (=> b!5100144 m!6157538))

(declare-fun m!6157540 () Bool)

(assert (=> b!5100144 m!6157540))

(declare-fun m!6157542 () Bool)

(assert (=> b!5100144 m!6157542))

(declare-fun m!6157544 () Bool)

(assert (=> b!5100144 m!6157544))

(declare-fun m!6157546 () Bool)

(assert (=> b!5100144 m!6157546))

(declare-fun m!6157548 () Bool)

(assert (=> b!5100144 m!6157548))

(declare-fun m!6157550 () Bool)

(assert (=> b!5100144 m!6157550))

(declare-fun m!6157552 () Bool)

(assert (=> b!5100132 m!6157552))

(declare-fun m!6157554 () Bool)

(assert (=> b!5100142 m!6157554))

(declare-fun m!6157556 () Bool)

(assert (=> b!5100140 m!6157556))

(push 1)

(assert (not b!5100138))

(assert (not setNonEmpty!29191))

(assert (not b!5100137))

(assert (not start!537858))

(assert (not b!5100143))

(assert (not b!5100141))

(assert (not b!5100132))

(assert (not b!5100136))

(assert (not b!5100140))

(assert (not b!5100144))

(assert (not b!5100139))

(assert (not b!5100133))

(assert (not b!5100134))

(assert (not b!5100142))

(assert tp_is_empty!37341)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1649899 () Bool)

(assert (=> d!1649899 (= (isEmpty!31783 (_1!35034 lt!2096508)) (is-Nil!58776 (_1!35034 lt!2096508)))))

(assert (=> b!5100132 d!1649899))

(declare-fun d!1649901 () Bool)

(declare-fun lt!2096556 () Regex!14038)

(assert (=> d!1649901 (validRegex!6165 lt!2096556)))

(declare-fun generalisedUnion!599 (List!58901) Regex!14038)

(declare-fun unfocusZipperList!112 (List!58902) List!58901)

(assert (=> d!1649901 (= lt!2096556 (generalisedUnion!599 (unfocusZipperList!112 (toList!8172 z!4303))))))

(assert (=> d!1649901 (= (unfocusZipper!380 (toList!8172 z!4303)) lt!2096556)))

(declare-fun bs!1191504 () Bool)

(assert (= bs!1191504 d!1649901))

(declare-fun m!6157606 () Bool)

(assert (=> bs!1191504 m!6157606))

(assert (=> bs!1191504 m!6157510))

(declare-fun m!6157610 () Bool)

(assert (=> bs!1191504 m!6157610))

(assert (=> bs!1191504 m!6157610))

(declare-fun m!6157612 () Bool)

(assert (=> bs!1191504 m!6157612))

(assert (=> b!5100133 d!1649901))

(declare-fun d!1649903 () Bool)

(declare-fun e!3180860 () Bool)

(assert (=> d!1649903 e!3180860))

(declare-fun res!2170673 () Bool)

(assert (=> d!1649903 (=> (not res!2170673) (not e!3180860))))

(declare-fun lt!2096561 () List!58902)

(declare-fun noDuplicate!1058 (List!58902) Bool)

(assert (=> d!1649903 (= res!2170673 (noDuplicate!1058 lt!2096561))))

(declare-fun choose!37355 ((Set Context!6844)) List!58902)

(assert (=> d!1649903 (= lt!2096561 (choose!37355 z!4303))))

(assert (=> d!1649903 (= (toList!8172 z!4303) lt!2096561)))

(declare-fun b!5100186 () Bool)

(declare-fun content!10455 (List!58902) (Set Context!6844))

(assert (=> b!5100186 (= e!3180860 (= (content!10455 lt!2096561) z!4303))))

(assert (= (and d!1649903 res!2170673) b!5100186))

(declare-fun m!6157618 () Bool)

(assert (=> d!1649903 m!6157618))

(declare-fun m!6157620 () Bool)

(assert (=> d!1649903 m!6157620))

(declare-fun m!6157622 () Bool)

(assert (=> b!5100186 m!6157622))

(assert (=> b!5100133 d!1649903))

(declare-fun d!1649907 () Bool)

(declare-fun c!876188 () Bool)

(assert (=> d!1649907 (= c!876188 (isEmpty!31783 (_1!35034 lt!2096506)))))

(declare-fun e!3180868 () Bool)

(assert (=> d!1649907 (= (matchZipper!710 z!4303 (_1!35034 lt!2096506)) e!3180868)))

(declare-fun b!5100198 () Bool)

(declare-fun nullableZipper!955 ((Set Context!6844)) Bool)

(assert (=> b!5100198 (= e!3180868 (nullableZipper!955 z!4303))))

(declare-fun b!5100199 () Bool)

(declare-fun derivationStepZipper!743 ((Set Context!6844) C!28334) (Set Context!6844))

(declare-fun head!10830 (List!58900) C!28334)

(declare-fun tail!9985 (List!58900) List!58900)

(assert (=> b!5100199 (= e!3180868 (matchZipper!710 (derivationStepZipper!743 z!4303 (head!10830 (_1!35034 lt!2096506))) (tail!9985 (_1!35034 lt!2096506))))))

(assert (= (and d!1649907 c!876188) b!5100198))

(assert (= (and d!1649907 (not c!876188)) b!5100199))

(assert (=> d!1649907 m!6157528))

(declare-fun m!6157630 () Bool)

(assert (=> b!5100198 m!6157630))

(declare-fun m!6157632 () Bool)

(assert (=> b!5100199 m!6157632))

(assert (=> b!5100199 m!6157632))

(declare-fun m!6157636 () Bool)

(assert (=> b!5100199 m!6157636))

(declare-fun m!6157638 () Bool)

(assert (=> b!5100199 m!6157638))

(assert (=> b!5100199 m!6157636))

(assert (=> b!5100199 m!6157638))

(declare-fun m!6157640 () Bool)

(assert (=> b!5100199 m!6157640))

(assert (=> b!5100140 d!1649907))

(declare-fun d!1649913 () Bool)

(declare-fun e!3180875 () Bool)

(assert (=> d!1649913 e!3180875))

(declare-fun res!2170681 () Bool)

(assert (=> d!1649913 (=> (not res!2170681) (not e!3180875))))

(declare-fun lt!2096568 () List!58900)

(declare-fun content!10456 (List!58900) (Set C!28334))

(assert (=> d!1649913 (= res!2170681 (= (content!10456 lt!2096568) (set.union (content!10456 (_1!35034 lt!2096511)) (content!10456 (_2!35034 lt!2096511)))))))

(declare-fun e!3180874 () List!58900)

(assert (=> d!1649913 (= lt!2096568 e!3180874)))

(declare-fun c!876192 () Bool)

(assert (=> d!1649913 (= c!876192 (is-Nil!58776 (_1!35034 lt!2096511)))))

(assert (=> d!1649913 (= (++!12887 (_1!35034 lt!2096511) (_2!35034 lt!2096511)) lt!2096568)))

(declare-fun b!5100211 () Bool)

(assert (=> b!5100211 (= e!3180874 (Cons!58776 (h!65224 (_1!35034 lt!2096511)) (++!12887 (t!371901 (_1!35034 lt!2096511)) (_2!35034 lt!2096511))))))

(declare-fun b!5100213 () Bool)

(assert (=> b!5100213 (= e!3180875 (or (not (= (_2!35034 lt!2096511) Nil!58776)) (= lt!2096568 (_1!35034 lt!2096511))))))

(declare-fun b!5100210 () Bool)

(assert (=> b!5100210 (= e!3180874 (_2!35034 lt!2096511))))

(declare-fun b!5100212 () Bool)

(declare-fun res!2170682 () Bool)

(assert (=> b!5100212 (=> (not res!2170682) (not e!3180875))))

(assert (=> b!5100212 (= res!2170682 (= (size!39340 lt!2096568) (+ (size!39340 (_1!35034 lt!2096511)) (size!39340 (_2!35034 lt!2096511)))))))

(assert (= (and d!1649913 c!876192) b!5100210))

(assert (= (and d!1649913 (not c!876192)) b!5100211))

(assert (= (and d!1649913 res!2170681) b!5100212))

(assert (= (and b!5100212 res!2170682) b!5100213))

(declare-fun m!6157642 () Bool)

(assert (=> d!1649913 m!6157642))

(declare-fun m!6157644 () Bool)

(assert (=> d!1649913 m!6157644))

(declare-fun m!6157646 () Bool)

(assert (=> d!1649913 m!6157646))

(declare-fun m!6157648 () Bool)

(assert (=> b!5100211 m!6157648))

(declare-fun m!6157650 () Bool)

(assert (=> b!5100212 m!6157650))

(declare-fun m!6157652 () Bool)

(assert (=> b!5100212 m!6157652))

(declare-fun m!6157654 () Bool)

(assert (=> b!5100212 m!6157654))

(assert (=> b!5100136 d!1649913))

(declare-fun d!1649915 () Bool)

(assert (=> d!1649915 (= (isEmpty!31783 (_1!35034 lt!2096507)) (is-Nil!58776 (_1!35034 lt!2096507)))))

(assert (=> b!5100144 d!1649915))

(declare-fun b!5100242 () Bool)

(declare-fun e!3180897 () Unit!149800)

(declare-fun Unit!149804 () Unit!149800)

(assert (=> b!5100242 (= e!3180897 Unit!149804)))

(declare-fun b!5100243 () Bool)

(declare-fun e!3180894 () Bool)

(declare-fun lt!2096629 () tuple2!63462)

(assert (=> b!5100243 (= e!3180894 (>= (size!39340 (_1!35034 lt!2096629)) (size!39340 Nil!58776)))))

(declare-fun b!5100244 () Bool)

(declare-fun Unit!149805 () Unit!149800)

(assert (=> b!5100244 (= e!3180897 Unit!149805)))

(declare-fun lt!2096637 () Unit!149800)

(declare-fun call!355143 () Unit!149800)

(assert (=> b!5100244 (= lt!2096637 call!355143)))

(declare-fun call!355136 () Bool)

(assert (=> b!5100244 call!355136))

(declare-fun lt!2096639 () Unit!149800)

(assert (=> b!5100244 (= lt!2096639 lt!2096637)))

(declare-fun lt!2096636 () Unit!149800)

(declare-fun call!355140 () Unit!149800)

(assert (=> b!5100244 (= lt!2096636 call!355140)))

(assert (=> b!5100244 (= input!5654 Nil!58776)))

(declare-fun lt!2096643 () Unit!149800)

(assert (=> b!5100244 (= lt!2096643 lt!2096636)))

(assert (=> b!5100244 false))

(declare-fun bm!355132 () Bool)

(declare-fun call!355138 () List!58900)

(assert (=> bm!355132 (= call!355138 (tail!9985 input!5654))))

(declare-fun b!5100245 () Bool)

(declare-fun c!876210 () Bool)

(declare-fun call!355139 () Bool)

(assert (=> b!5100245 (= c!876210 call!355139)))

(declare-fun lt!2096625 () Unit!149800)

(declare-fun lt!2096635 () Unit!149800)

(assert (=> b!5100245 (= lt!2096625 lt!2096635)))

(declare-fun lt!2096641 () C!28334)

(declare-fun lt!2096644 () List!58900)

(assert (=> b!5100245 (= (++!12887 (++!12887 Nil!58776 (Cons!58776 lt!2096641 Nil!58776)) lt!2096644) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1515 (List!58900 C!28334 List!58900 List!58900) Unit!149800)

(assert (=> b!5100245 (= lt!2096635 (lemmaMoveElementToOtherListKeepsConcatEq!1515 Nil!58776 lt!2096641 lt!2096644 input!5654))))

(assert (=> b!5100245 (= lt!2096644 (tail!9985 input!5654))))

(assert (=> b!5100245 (= lt!2096641 (head!10830 input!5654))))

(declare-fun lt!2096631 () Unit!149800)

(declare-fun lt!2096622 () Unit!149800)

(assert (=> b!5100245 (= lt!2096631 lt!2096622)))

(declare-fun getSuffix!3159 (List!58900 List!58900) List!58900)

(assert (=> b!5100245 (isPrefix!5439 (++!12887 Nil!58776 (Cons!58776 (head!10830 (getSuffix!3159 input!5654 Nil!58776)) Nil!58776)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!904 (List!58900 List!58900) Unit!149800)

(assert (=> b!5100245 (= lt!2096622 (lemmaAddHeadSuffixToPrefixStillPrefix!904 Nil!58776 input!5654))))

(declare-fun lt!2096633 () List!58900)

(assert (=> b!5100245 (= lt!2096633 (++!12887 Nil!58776 (Cons!58776 (head!10830 input!5654) Nil!58776)))))

(declare-fun lt!2096645 () Unit!149800)

(assert (=> b!5100245 (= lt!2096645 e!3180897)))

(declare-fun c!876205 () Bool)

(assert (=> b!5100245 (= c!876205 (= (size!39340 Nil!58776) (size!39340 input!5654)))))

(declare-fun lt!2096627 () Unit!149800)

(declare-fun lt!2096638 () Unit!149800)

(assert (=> b!5100245 (= lt!2096627 lt!2096638)))

(assert (=> b!5100245 (<= (size!39340 Nil!58776) (size!39340 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!830 (List!58900 List!58900) Unit!149800)

(assert (=> b!5100245 (= lt!2096638 (lemmaIsPrefixThenSmallerEqSize!830 Nil!58776 input!5654))))

(declare-fun e!3180898 () tuple2!63462)

(declare-fun e!3180892 () tuple2!63462)

(assert (=> b!5100245 (= e!3180898 e!3180892)))

(declare-fun b!5100246 () Bool)

(declare-fun e!3180893 () tuple2!63462)

(assert (=> b!5100246 (= e!3180893 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun b!5100247 () Bool)

(declare-fun e!3180895 () tuple2!63462)

(assert (=> b!5100247 (= e!3180895 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun b!5100248 () Bool)

(assert (=> b!5100248 (= e!3180893 (tuple2!63463 Nil!58776 Nil!58776))))

(declare-fun b!5100249 () Bool)

(declare-fun lt!2096626 () tuple2!63462)

(assert (=> b!5100249 (= e!3180895 lt!2096626)))

(declare-fun b!5100250 () Bool)

(declare-fun e!3180899 () tuple2!63462)

(assert (=> b!5100250 (= e!3180899 e!3180898)))

(declare-fun c!876209 () Bool)

(assert (=> b!5100250 (= c!876209 (= lt!2096514 lt!2096510))))

(declare-fun bm!355133 () Bool)

(assert (=> bm!355133 (= call!355139 (nullableZipper!955 z!4303))))

(declare-fun d!1649917 () Bool)

(declare-fun e!3180896 () Bool)

(assert (=> d!1649917 e!3180896))

(declare-fun res!2170687 () Bool)

(assert (=> d!1649917 (=> (not res!2170687) (not e!3180896))))

(assert (=> d!1649917 (= res!2170687 (= (++!12887 (_1!35034 lt!2096629) (_2!35034 lt!2096629)) input!5654))))

(assert (=> d!1649917 (= lt!2096629 e!3180899)))

(declare-fun c!876206 () Bool)

(declare-fun lostCauseZipper!970 ((Set Context!6844)) Bool)

(assert (=> d!1649917 (= c!876206 (lostCauseZipper!970 z!4303))))

(declare-fun lt!2096632 () Unit!149800)

(declare-fun Unit!149806 () Unit!149800)

(assert (=> d!1649917 (= lt!2096632 Unit!149806)))

(assert (=> d!1649917 (= (getSuffix!3159 input!5654 Nil!58776) input!5654)))

(declare-fun lt!2096646 () Unit!149800)

(declare-fun lt!2096642 () Unit!149800)

(assert (=> d!1649917 (= lt!2096646 lt!2096642)))

(declare-fun lt!2096623 () List!58900)

(assert (=> d!1649917 (= input!5654 lt!2096623)))

(declare-fun lemmaSamePrefixThenSameSuffix!2575 (List!58900 List!58900 List!58900 List!58900 List!58900) Unit!149800)

(assert (=> d!1649917 (= lt!2096642 (lemmaSamePrefixThenSameSuffix!2575 Nil!58776 input!5654 Nil!58776 lt!2096623 input!5654))))

(assert (=> d!1649917 (= lt!2096623 (getSuffix!3159 input!5654 Nil!58776))))

(declare-fun lt!2096628 () Unit!149800)

(declare-fun lt!2096630 () Unit!149800)

(assert (=> d!1649917 (= lt!2096628 lt!2096630)))

(assert (=> d!1649917 (isPrefix!5439 Nil!58776 (++!12887 Nil!58776 input!5654))))

(assert (=> d!1649917 (= lt!2096630 (lemmaConcatTwoListThenFirstIsPrefix!3497 Nil!58776 input!5654))))

(assert (=> d!1649917 (= (++!12887 Nil!58776 input!5654) input!5654)))

(assert (=> d!1649917 (= (findLongestMatchInnerZipper!112 z!4303 Nil!58776 lt!2096514 input!5654 input!5654 lt!2096510) lt!2096629)))

(declare-fun bm!355131 () Bool)

(declare-fun call!355142 () (Set Context!6844))

(declare-fun call!355137 () C!28334)

(assert (=> bm!355131 (= call!355142 (derivationStepZipper!743 z!4303 call!355137))))

(declare-fun b!5100251 () Bool)

(declare-fun call!355141 () tuple2!63462)

(assert (=> b!5100251 (= e!3180892 call!355141)))

(declare-fun b!5100252 () Bool)

(assert (=> b!5100252 (= e!3180899 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun bm!355134 () Bool)

(assert (=> bm!355134 (= call!355141 (findLongestMatchInnerZipper!112 call!355142 lt!2096633 (+ lt!2096514 1) call!355138 input!5654 lt!2096510))))

(declare-fun bm!355135 () Bool)

(declare-fun lemmaIsPrefixRefl!3676 (List!58900 List!58900) Unit!149800)

(assert (=> bm!355135 (= call!355143 (lemmaIsPrefixRefl!3676 input!5654 input!5654))))

(declare-fun b!5100253 () Bool)

(assert (=> b!5100253 (= e!3180892 e!3180895)))

(assert (=> b!5100253 (= lt!2096626 call!355141)))

(declare-fun c!876208 () Bool)

(assert (=> b!5100253 (= c!876208 (isEmpty!31783 (_1!35034 lt!2096626)))))

(declare-fun bm!355136 () Bool)

(assert (=> bm!355136 (= call!355136 (isPrefix!5439 input!5654 input!5654))))

(declare-fun bm!355137 () Bool)

(assert (=> bm!355137 (= call!355137 (head!10830 input!5654))))

(declare-fun b!5100254 () Bool)

(declare-fun c!876207 () Bool)

(assert (=> b!5100254 (= c!876207 call!355139)))

(declare-fun lt!2096634 () Unit!149800)

(declare-fun lt!2096624 () Unit!149800)

(assert (=> b!5100254 (= lt!2096634 lt!2096624)))

(assert (=> b!5100254 (= input!5654 Nil!58776)))

(assert (=> b!5100254 (= lt!2096624 call!355140)))

(declare-fun lt!2096640 () Unit!149800)

(declare-fun lt!2096621 () Unit!149800)

(assert (=> b!5100254 (= lt!2096640 lt!2096621)))

(assert (=> b!5100254 call!355136))

(assert (=> b!5100254 (= lt!2096621 call!355143)))

(assert (=> b!5100254 (= e!3180898 e!3180893)))

(declare-fun b!5100255 () Bool)

(assert (=> b!5100255 (= e!3180896 e!3180894)))

(declare-fun res!2170688 () Bool)

(assert (=> b!5100255 (=> res!2170688 e!3180894)))

(assert (=> b!5100255 (= res!2170688 (isEmpty!31783 (_1!35034 lt!2096629)))))

(declare-fun bm!355138 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1298 (List!58900 List!58900 List!58900) Unit!149800)

(assert (=> bm!355138 (= call!355140 (lemmaIsPrefixSameLengthThenSameList!1298 input!5654 Nil!58776 input!5654))))

(assert (= (and d!1649917 c!876206) b!5100252))

(assert (= (and d!1649917 (not c!876206)) b!5100250))

(assert (= (and b!5100250 c!876209) b!5100254))

(assert (= (and b!5100250 (not c!876209)) b!5100245))

(assert (= (and b!5100254 c!876207) b!5100248))

(assert (= (and b!5100254 (not c!876207)) b!5100246))

(assert (= (and b!5100245 c!876205) b!5100244))

(assert (= (and b!5100245 (not c!876205)) b!5100242))

(assert (= (and b!5100245 c!876210) b!5100253))

(assert (= (and b!5100245 (not c!876210)) b!5100251))

(assert (= (and b!5100253 c!876208) b!5100247))

(assert (= (and b!5100253 (not c!876208)) b!5100249))

(assert (= (or b!5100253 b!5100251) bm!355137))

(assert (= (or b!5100253 b!5100251) bm!355132))

(assert (= (or b!5100253 b!5100251) bm!355131))

(assert (= (or b!5100253 b!5100251) bm!355134))

(assert (= (or b!5100254 b!5100244) bm!355138))

(assert (= (or b!5100254 b!5100245) bm!355133))

(assert (= (or b!5100254 b!5100244) bm!355136))

(assert (= (or b!5100254 b!5100244) bm!355135))

(assert (= (and d!1649917 res!2170687) b!5100255))

(assert (= (and b!5100255 (not res!2170688)) b!5100243))

(declare-fun m!6157656 () Bool)

(assert (=> b!5100255 m!6157656))

(declare-fun m!6157658 () Bool)

(assert (=> bm!355138 m!6157658))

(declare-fun m!6157660 () Bool)

(assert (=> bm!355132 m!6157660))

(declare-fun m!6157662 () Bool)

(assert (=> b!5100253 m!6157662))

(declare-fun m!6157664 () Bool)

(assert (=> d!1649917 m!6157664))

(declare-fun m!6157666 () Bool)

(assert (=> d!1649917 m!6157666))

(declare-fun m!6157668 () Bool)

(assert (=> d!1649917 m!6157668))

(assert (=> d!1649917 m!6157668))

(declare-fun m!6157670 () Bool)

(assert (=> d!1649917 m!6157670))

(declare-fun m!6157672 () Bool)

(assert (=> d!1649917 m!6157672))

(declare-fun m!6157674 () Bool)

(assert (=> d!1649917 m!6157674))

(declare-fun m!6157676 () Bool)

(assert (=> d!1649917 m!6157676))

(assert (=> bm!355133 m!6157630))

(declare-fun m!6157678 () Bool)

(assert (=> bm!355134 m!6157678))

(declare-fun m!6157680 () Bool)

(assert (=> b!5100243 m!6157680))

(assert (=> b!5100243 m!6157548))

(declare-fun m!6157682 () Bool)

(assert (=> bm!355137 m!6157682))

(declare-fun m!6157684 () Bool)

(assert (=> bm!355135 m!6157684))

(declare-fun m!6157686 () Bool)

(assert (=> bm!355131 m!6157686))

(declare-fun m!6157688 () Bool)

(assert (=> bm!355136 m!6157688))

(declare-fun m!6157690 () Bool)

(assert (=> b!5100245 m!6157690))

(declare-fun m!6157692 () Bool)

(assert (=> b!5100245 m!6157692))

(assert (=> b!5100245 m!6157660))

(assert (=> b!5100245 m!6157676))

(declare-fun m!6157694 () Bool)

(assert (=> b!5100245 m!6157694))

(assert (=> b!5100245 m!6157682))

(declare-fun m!6157696 () Bool)

(assert (=> b!5100245 m!6157696))

(declare-fun m!6157698 () Bool)

(assert (=> b!5100245 m!6157698))

(declare-fun m!6157700 () Bool)

(assert (=> b!5100245 m!6157700))

(assert (=> b!5100245 m!6157700))

(declare-fun m!6157702 () Bool)

(assert (=> b!5100245 m!6157702))

(assert (=> b!5100245 m!6157676))

(assert (=> b!5100245 m!6157534))

(declare-fun m!6157704 () Bool)

(assert (=> b!5100245 m!6157704))

(assert (=> b!5100245 m!6157548))

(assert (=> b!5100245 m!6157704))

(declare-fun m!6157706 () Bool)

(assert (=> b!5100245 m!6157706))

(assert (=> b!5100144 d!1649917))

(declare-fun d!1649919 () Bool)

(assert (=> d!1649919 (isPrefix!5439 (_1!35034 lt!2096508) (++!12887 (_1!35034 lt!2096508) (_2!35034 lt!2096508)))))

(declare-fun lt!2096649 () Unit!149800)

(declare-fun choose!37356 (List!58900 List!58900) Unit!149800)

(assert (=> d!1649919 (= lt!2096649 (choose!37356 (_1!35034 lt!2096508) (_2!35034 lt!2096508)))))

(assert (=> d!1649919 (= (lemmaConcatTwoListThenFirstIsPrefix!3497 (_1!35034 lt!2096508) (_2!35034 lt!2096508)) lt!2096649)))

(declare-fun bs!1191506 () Bool)

(assert (= bs!1191506 d!1649919))

(assert (=> bs!1191506 m!6157520))

(assert (=> bs!1191506 m!6157520))

(declare-fun m!6157708 () Bool)

(assert (=> bs!1191506 m!6157708))

(declare-fun m!6157710 () Bool)

(assert (=> bs!1191506 m!6157710))

(assert (=> b!5100144 d!1649919))

(declare-fun d!1649921 () Bool)

(assert (=> d!1649921 (isPrefix!5439 (_1!35034 lt!2096511) (++!12887 (_1!35034 lt!2096511) (_2!35034 lt!2096511)))))

(declare-fun lt!2096650 () Unit!149800)

(assert (=> d!1649921 (= lt!2096650 (choose!37356 (_1!35034 lt!2096511) (_2!35034 lt!2096511)))))

(assert (=> d!1649921 (= (lemmaConcatTwoListThenFirstIsPrefix!3497 (_1!35034 lt!2096511) (_2!35034 lt!2096511)) lt!2096650)))

(declare-fun bs!1191507 () Bool)

(assert (= bs!1191507 d!1649921))

(assert (=> bs!1191507 m!6157518))

(assert (=> bs!1191507 m!6157518))

(declare-fun m!6157712 () Bool)

(assert (=> bs!1191507 m!6157712))

(declare-fun m!6157714 () Bool)

(assert (=> bs!1191507 m!6157714))

(assert (=> b!5100144 d!1649921))

(declare-fun b!5100267 () Bool)

(declare-fun e!3180907 () Bool)

(assert (=> b!5100267 (= e!3180907 (>= (size!39340 lt!2096503) (size!39340 (_1!35034 lt!2096508))))))

(declare-fun b!5100265 () Bool)

(declare-fun res!2170697 () Bool)

(declare-fun e!3180906 () Bool)

(assert (=> b!5100265 (=> (not res!2170697) (not e!3180906))))

(assert (=> b!5100265 (= res!2170697 (= (head!10830 (_1!35034 lt!2096508)) (head!10830 lt!2096503)))))

(declare-fun d!1649923 () Bool)

(assert (=> d!1649923 e!3180907))

(declare-fun res!2170698 () Bool)

(assert (=> d!1649923 (=> res!2170698 e!3180907)))

(declare-fun lt!2096653 () Bool)

(assert (=> d!1649923 (= res!2170698 (not lt!2096653))))

(declare-fun e!3180908 () Bool)

(assert (=> d!1649923 (= lt!2096653 e!3180908)))

(declare-fun res!2170699 () Bool)

(assert (=> d!1649923 (=> res!2170699 e!3180908)))

(assert (=> d!1649923 (= res!2170699 (is-Nil!58776 (_1!35034 lt!2096508)))))

(assert (=> d!1649923 (= (isPrefix!5439 (_1!35034 lt!2096508) lt!2096503) lt!2096653)))

(declare-fun b!5100264 () Bool)

(assert (=> b!5100264 (= e!3180908 e!3180906)))

(declare-fun res!2170700 () Bool)

(assert (=> b!5100264 (=> (not res!2170700) (not e!3180906))))

(assert (=> b!5100264 (= res!2170700 (not (is-Nil!58776 lt!2096503)))))

(declare-fun b!5100266 () Bool)

(assert (=> b!5100266 (= e!3180906 (isPrefix!5439 (tail!9985 (_1!35034 lt!2096508)) (tail!9985 lt!2096503)))))

(assert (= (and d!1649923 (not res!2170699)) b!5100264))

(assert (= (and b!5100264 res!2170700) b!5100265))

(assert (= (and b!5100265 res!2170697) b!5100266))

(assert (= (and d!1649923 (not res!2170698)) b!5100267))

(declare-fun m!6157716 () Bool)

(assert (=> b!5100267 m!6157716))

(declare-fun m!6157718 () Bool)

(assert (=> b!5100267 m!6157718))

(declare-fun m!6157720 () Bool)

(assert (=> b!5100265 m!6157720))

(declare-fun m!6157722 () Bool)

(assert (=> b!5100265 m!6157722))

(declare-fun m!6157724 () Bool)

(assert (=> b!5100266 m!6157724))

(declare-fun m!6157726 () Bool)

(assert (=> b!5100266 m!6157726))

(assert (=> b!5100266 m!6157724))

(assert (=> b!5100266 m!6157726))

(declare-fun m!6157728 () Bool)

(assert (=> b!5100266 m!6157728))

(assert (=> b!5100144 d!1649923))

(declare-fun b!5100271 () Bool)

(declare-fun e!3180910 () Bool)

(assert (=> b!5100271 (= e!3180910 (>= (size!39340 lt!2096513) (size!39340 (_1!35034 lt!2096511))))))

(declare-fun b!5100269 () Bool)

(declare-fun res!2170701 () Bool)

(declare-fun e!3180909 () Bool)

(assert (=> b!5100269 (=> (not res!2170701) (not e!3180909))))

(assert (=> b!5100269 (= res!2170701 (= (head!10830 (_1!35034 lt!2096511)) (head!10830 lt!2096513)))))

(declare-fun d!1649925 () Bool)

(assert (=> d!1649925 e!3180910))

(declare-fun res!2170702 () Bool)

(assert (=> d!1649925 (=> res!2170702 e!3180910)))

(declare-fun lt!2096654 () Bool)

(assert (=> d!1649925 (= res!2170702 (not lt!2096654))))

(declare-fun e!3180911 () Bool)

(assert (=> d!1649925 (= lt!2096654 e!3180911)))

(declare-fun res!2170703 () Bool)

(assert (=> d!1649925 (=> res!2170703 e!3180911)))

(assert (=> d!1649925 (= res!2170703 (is-Nil!58776 (_1!35034 lt!2096511)))))

(assert (=> d!1649925 (= (isPrefix!5439 (_1!35034 lt!2096511) lt!2096513) lt!2096654)))

(declare-fun b!5100268 () Bool)

(assert (=> b!5100268 (= e!3180911 e!3180909)))

(declare-fun res!2170704 () Bool)

(assert (=> b!5100268 (=> (not res!2170704) (not e!3180909))))

(assert (=> b!5100268 (= res!2170704 (not (is-Nil!58776 lt!2096513)))))

(declare-fun b!5100270 () Bool)

(assert (=> b!5100270 (= e!3180909 (isPrefix!5439 (tail!9985 (_1!35034 lt!2096511)) (tail!9985 lt!2096513)))))

(assert (= (and d!1649925 (not res!2170703)) b!5100268))

(assert (= (and b!5100268 res!2170704) b!5100269))

(assert (= (and b!5100269 res!2170701) b!5100270))

(assert (= (and d!1649925 (not res!2170702)) b!5100271))

(declare-fun m!6157730 () Bool)

(assert (=> b!5100271 m!6157730))

(assert (=> b!5100271 m!6157652))

(declare-fun m!6157732 () Bool)

(assert (=> b!5100269 m!6157732))

(declare-fun m!6157734 () Bool)

(assert (=> b!5100269 m!6157734))

(declare-fun m!6157736 () Bool)

(assert (=> b!5100270 m!6157736))

(declare-fun m!6157738 () Bool)

(assert (=> b!5100270 m!6157738))

(assert (=> b!5100270 m!6157736))

(assert (=> b!5100270 m!6157738))

(declare-fun m!6157740 () Bool)

(assert (=> b!5100270 m!6157740))

(assert (=> b!5100144 d!1649925))

(declare-fun d!1649927 () Bool)

(declare-fun lt!2096657 () Int)

(assert (=> d!1649927 (>= lt!2096657 0)))

(declare-fun e!3180914 () Int)

(assert (=> d!1649927 (= lt!2096657 e!3180914)))

(declare-fun c!876213 () Bool)

(assert (=> d!1649927 (= c!876213 (is-Nil!58776 input!5654))))

(assert (=> d!1649927 (= (size!39340 input!5654) lt!2096657)))

(declare-fun b!5100276 () Bool)

(assert (=> b!5100276 (= e!3180914 0)))

(declare-fun b!5100277 () Bool)

(assert (=> b!5100277 (= e!3180914 (+ 1 (size!39340 (t!371901 input!5654))))))

(assert (= (and d!1649927 c!876213) b!5100276))

(assert (= (and d!1649927 (not c!876213)) b!5100277))

(declare-fun m!6157742 () Bool)

(assert (=> b!5100277 m!6157742))

(assert (=> b!5100144 d!1649927))

(declare-fun d!1649929 () Bool)

(declare-fun c!876214 () Bool)

(assert (=> d!1649929 (= c!876214 (isEmpty!31783 (_1!35034 lt!2096508)))))

(declare-fun e!3180915 () Bool)

(assert (=> d!1649929 (= (matchZipper!710 z!4303 (_1!35034 lt!2096508)) e!3180915)))

(declare-fun b!5100278 () Bool)

(assert (=> b!5100278 (= e!3180915 (nullableZipper!955 z!4303))))

(declare-fun b!5100279 () Bool)

(assert (=> b!5100279 (= e!3180915 (matchZipper!710 (derivationStepZipper!743 z!4303 (head!10830 (_1!35034 lt!2096508))) (tail!9985 (_1!35034 lt!2096508))))))

(assert (= (and d!1649929 c!876214) b!5100278))

(assert (= (and d!1649929 (not c!876214)) b!5100279))

(assert (=> d!1649929 m!6157552))

(assert (=> b!5100278 m!6157630))

(assert (=> b!5100279 m!6157720))

(assert (=> b!5100279 m!6157720))

(declare-fun m!6157744 () Bool)

(assert (=> b!5100279 m!6157744))

(assert (=> b!5100279 m!6157724))

(assert (=> b!5100279 m!6157744))

(assert (=> b!5100279 m!6157724))

(declare-fun m!6157746 () Bool)

(assert (=> b!5100279 m!6157746))

(assert (=> b!5100144 d!1649929))

(declare-fun d!1649931 () Bool)

(assert (=> d!1649931 (= (isEmpty!31783 (_1!35034 lt!2096506)) (is-Nil!58776 (_1!35034 lt!2096506)))))

(assert (=> b!5100144 d!1649931))

(declare-fun b!5100353 () Bool)

(declare-fun e!3180963 () tuple2!63462)

(assert (=> b!5100353 (= e!3180963 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun d!1649933 () Bool)

(declare-fun e!3180965 () Bool)

(assert (=> d!1649933 e!3180965))

(declare-fun res!2170719 () Bool)

(assert (=> d!1649933 (=> (not res!2170719) (not e!3180965))))

(declare-fun lt!2096819 () tuple2!63462)

(assert (=> d!1649933 (= res!2170719 (= (++!12887 (_1!35034 lt!2096819) (_2!35034 lt!2096819)) input!5654))))

(assert (=> d!1649933 (= lt!2096819 e!3180963)))

(declare-fun c!876248 () Bool)

(declare-fun lostCause!1203 (Regex!14038) Bool)

(assert (=> d!1649933 (= c!876248 (lostCause!1203 r!12920))))

(declare-fun lt!2096799 () Unit!149800)

(declare-fun Unit!149807 () Unit!149800)

(assert (=> d!1649933 (= lt!2096799 Unit!149807)))

(assert (=> d!1649933 (= (getSuffix!3159 input!5654 Nil!58776) input!5654)))

(declare-fun lt!2096805 () Unit!149800)

(declare-fun lt!2096816 () Unit!149800)

(assert (=> d!1649933 (= lt!2096805 lt!2096816)))

(declare-fun lt!2096813 () List!58900)

(assert (=> d!1649933 (= input!5654 lt!2096813)))

(assert (=> d!1649933 (= lt!2096816 (lemmaSamePrefixThenSameSuffix!2575 Nil!58776 input!5654 Nil!58776 lt!2096813 input!5654))))

(assert (=> d!1649933 (= lt!2096813 (getSuffix!3159 input!5654 Nil!58776))))

(declare-fun lt!2096795 () Unit!149800)

(declare-fun lt!2096810 () Unit!149800)

(assert (=> d!1649933 (= lt!2096795 lt!2096810)))

(assert (=> d!1649933 (isPrefix!5439 Nil!58776 (++!12887 Nil!58776 input!5654))))

(assert (=> d!1649933 (= lt!2096810 (lemmaConcatTwoListThenFirstIsPrefix!3497 Nil!58776 input!5654))))

(assert (=> d!1649933 (validRegex!6165 r!12920)))

(assert (=> d!1649933 (= (findLongestMatchInner!2051 r!12920 Nil!58776 lt!2096514 input!5654 input!5654 lt!2096510) lt!2096819)))

(declare-fun b!5100354 () Bool)

(declare-fun e!3180966 () Unit!149800)

(declare-fun Unit!149808 () Unit!149800)

(assert (=> b!5100354 (= e!3180966 Unit!149808)))

(declare-fun lt!2096806 () Unit!149800)

(declare-fun call!355186 () Unit!149800)

(assert (=> b!5100354 (= lt!2096806 call!355186)))

(declare-fun call!355185 () Bool)

(assert (=> b!5100354 call!355185))

(declare-fun lt!2096818 () Unit!149800)

(assert (=> b!5100354 (= lt!2096818 lt!2096806)))

(declare-fun lt!2096814 () Unit!149800)

(declare-fun call!355188 () Unit!149800)

(assert (=> b!5100354 (= lt!2096814 call!355188)))

(assert (=> b!5100354 (= input!5654 Nil!58776)))

(declare-fun lt!2096807 () Unit!149800)

(assert (=> b!5100354 (= lt!2096807 lt!2096814)))

(assert (=> b!5100354 false))

(declare-fun bm!355179 () Bool)

(declare-fun call!355190 () List!58900)

(assert (=> bm!355179 (= call!355190 (tail!9985 input!5654))))

(declare-fun call!355187 () tuple2!63462)

(declare-fun call!355189 () Regex!14038)

(declare-fun bm!355180 () Bool)

(declare-fun lt!2096804 () List!58900)

(assert (=> bm!355180 (= call!355187 (findLongestMatchInner!2051 call!355189 lt!2096804 (+ lt!2096514 1) call!355190 input!5654 lt!2096510))))

(declare-fun bm!355181 () Bool)

(assert (=> bm!355181 (= call!355185 (isPrefix!5439 input!5654 input!5654))))

(declare-fun b!5100355 () Bool)

(declare-fun e!3180964 () tuple2!63462)

(assert (=> b!5100355 (= e!3180964 call!355187)))

(declare-fun b!5100356 () Bool)

(declare-fun Unit!149809 () Unit!149800)

(assert (=> b!5100356 (= e!3180966 Unit!149809)))

(declare-fun bm!355182 () Bool)

(declare-fun call!355184 () Bool)

(declare-fun nullable!4714 (Regex!14038) Bool)

(assert (=> bm!355182 (= call!355184 (nullable!4714 r!12920))))

(declare-fun b!5100357 () Bool)

(declare-fun e!3180962 () tuple2!63462)

(assert (=> b!5100357 (= e!3180962 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun bm!355183 () Bool)

(assert (=> bm!355183 (= call!355188 (lemmaIsPrefixSameLengthThenSameList!1298 input!5654 Nil!58776 input!5654))))

(declare-fun b!5100358 () Bool)

(declare-fun e!3180959 () tuple2!63462)

(assert (=> b!5100358 (= e!3180964 e!3180959)))

(declare-fun lt!2096811 () tuple2!63462)

(assert (=> b!5100358 (= lt!2096811 call!355187)))

(declare-fun c!876245 () Bool)

(assert (=> b!5100358 (= c!876245 (isEmpty!31783 (_1!35034 lt!2096811)))))

(declare-fun b!5100359 () Bool)

(declare-fun c!876247 () Bool)

(assert (=> b!5100359 (= c!876247 call!355184)))

(declare-fun lt!2096808 () Unit!149800)

(declare-fun lt!2096800 () Unit!149800)

(assert (=> b!5100359 (= lt!2096808 lt!2096800)))

(assert (=> b!5100359 (= input!5654 Nil!58776)))

(assert (=> b!5100359 (= lt!2096800 call!355188)))

(declare-fun lt!2096803 () Unit!149800)

(declare-fun lt!2096797 () Unit!149800)

(assert (=> b!5100359 (= lt!2096803 lt!2096797)))

(assert (=> b!5100359 call!355185))

(assert (=> b!5100359 (= lt!2096797 call!355186)))

(declare-fun e!3180961 () tuple2!63462)

(assert (=> b!5100359 (= e!3180961 e!3180962)))

(declare-fun b!5100360 () Bool)

(assert (=> b!5100360 (= e!3180959 (tuple2!63463 Nil!58776 input!5654))))

(declare-fun b!5100361 () Bool)

(assert (=> b!5100361 (= e!3180959 lt!2096811)))

(declare-fun b!5100362 () Bool)

(assert (=> b!5100362 (= e!3180963 e!3180961)))

(declare-fun c!876250 () Bool)

(assert (=> b!5100362 (= c!876250 (= lt!2096514 lt!2096510))))

(declare-fun b!5100363 () Bool)

(assert (=> b!5100363 (= e!3180962 (tuple2!63463 Nil!58776 Nil!58776))))

(declare-fun b!5100364 () Bool)

(declare-fun e!3180960 () Bool)

(assert (=> b!5100364 (= e!3180965 e!3180960)))

(declare-fun res!2170718 () Bool)

(assert (=> b!5100364 (=> res!2170718 e!3180960)))

(assert (=> b!5100364 (= res!2170718 (isEmpty!31783 (_1!35034 lt!2096819)))))

(declare-fun bm!355184 () Bool)

(assert (=> bm!355184 (= call!355186 (lemmaIsPrefixRefl!3676 input!5654 input!5654))))

(declare-fun bm!355185 () Bool)

(declare-fun call!355191 () C!28334)

(assert (=> bm!355185 (= call!355191 (head!10830 input!5654))))

(declare-fun b!5100365 () Bool)

(assert (=> b!5100365 (= e!3180960 (>= (size!39340 (_1!35034 lt!2096819)) (size!39340 Nil!58776)))))

(declare-fun b!5100366 () Bool)

(declare-fun c!876246 () Bool)

(assert (=> b!5100366 (= c!876246 call!355184)))

(declare-fun lt!2096821 () Unit!149800)

(declare-fun lt!2096798 () Unit!149800)

(assert (=> b!5100366 (= lt!2096821 lt!2096798)))

(declare-fun lt!2096822 () C!28334)

(declare-fun lt!2096809 () List!58900)

(assert (=> b!5100366 (= (++!12887 (++!12887 Nil!58776 (Cons!58776 lt!2096822 Nil!58776)) lt!2096809) input!5654)))

(assert (=> b!5100366 (= lt!2096798 (lemmaMoveElementToOtherListKeepsConcatEq!1515 Nil!58776 lt!2096822 lt!2096809 input!5654))))

(assert (=> b!5100366 (= lt!2096809 (tail!9985 input!5654))))

(assert (=> b!5100366 (= lt!2096822 (head!10830 input!5654))))

(declare-fun lt!2096815 () Unit!149800)

(declare-fun lt!2096802 () Unit!149800)

(assert (=> b!5100366 (= lt!2096815 lt!2096802)))

(assert (=> b!5100366 (isPrefix!5439 (++!12887 Nil!58776 (Cons!58776 (head!10830 (getSuffix!3159 input!5654 Nil!58776)) Nil!58776)) input!5654)))

(assert (=> b!5100366 (= lt!2096802 (lemmaAddHeadSuffixToPrefixStillPrefix!904 Nil!58776 input!5654))))

(declare-fun lt!2096796 () Unit!149800)

(declare-fun lt!2096820 () Unit!149800)

(assert (=> b!5100366 (= lt!2096796 lt!2096820)))

(assert (=> b!5100366 (= lt!2096820 (lemmaAddHeadSuffixToPrefixStillPrefix!904 Nil!58776 input!5654))))

(assert (=> b!5100366 (= lt!2096804 (++!12887 Nil!58776 (Cons!58776 (head!10830 input!5654) Nil!58776)))))

(declare-fun lt!2096801 () Unit!149800)

(assert (=> b!5100366 (= lt!2096801 e!3180966)))

(declare-fun c!876249 () Bool)

(assert (=> b!5100366 (= c!876249 (= (size!39340 Nil!58776) (size!39340 input!5654)))))

(declare-fun lt!2096812 () Unit!149800)

(declare-fun lt!2096817 () Unit!149800)

(assert (=> b!5100366 (= lt!2096812 lt!2096817)))

(assert (=> b!5100366 (<= (size!39340 Nil!58776) (size!39340 input!5654))))

(assert (=> b!5100366 (= lt!2096817 (lemmaIsPrefixThenSmallerEqSize!830 Nil!58776 input!5654))))

(assert (=> b!5100366 (= e!3180961 e!3180964)))

(declare-fun bm!355186 () Bool)

(declare-fun derivativeStep!3994 (Regex!14038 C!28334) Regex!14038)

(assert (=> bm!355186 (= call!355189 (derivativeStep!3994 r!12920 call!355191))))

(assert (= (and d!1649933 c!876248) b!5100353))

(assert (= (and d!1649933 (not c!876248)) b!5100362))

(assert (= (and b!5100362 c!876250) b!5100359))

(assert (= (and b!5100362 (not c!876250)) b!5100366))

(assert (= (and b!5100359 c!876247) b!5100363))

(assert (= (and b!5100359 (not c!876247)) b!5100357))

(assert (= (and b!5100366 c!876249) b!5100354))

(assert (= (and b!5100366 (not c!876249)) b!5100356))

(assert (= (and b!5100366 c!876246) b!5100358))

(assert (= (and b!5100366 (not c!876246)) b!5100355))

(assert (= (and b!5100358 c!876245) b!5100360))

(assert (= (and b!5100358 (not c!876245)) b!5100361))

(assert (= (or b!5100358 b!5100355) bm!355185))

(assert (= (or b!5100358 b!5100355) bm!355179))

(assert (= (or b!5100358 b!5100355) bm!355186))

(assert (= (or b!5100358 b!5100355) bm!355180))

(assert (= (or b!5100359 b!5100354) bm!355183))

(assert (= (or b!5100359 b!5100366) bm!355182))

(assert (= (or b!5100359 b!5100354) bm!355181))

(assert (= (or b!5100359 b!5100354) bm!355184))

(assert (= (and d!1649933 res!2170719) b!5100364))

(assert (= (and b!5100364 (not res!2170718)) b!5100365))

(assert (=> bm!355183 m!6157658))

(assert (=> bm!355181 m!6157688))

(assert (=> bm!355179 m!6157660))

(assert (=> bm!355184 m!6157684))

(declare-fun m!6157814 () Bool)

(assert (=> bm!355186 m!6157814))

(declare-fun m!6157816 () Bool)

(assert (=> b!5100365 m!6157816))

(assert (=> b!5100365 m!6157548))

(assert (=> b!5100366 m!6157698))

(assert (=> b!5100366 m!6157700))

(assert (=> b!5100366 m!6157702))

(declare-fun m!6157818 () Bool)

(assert (=> b!5100366 m!6157818))

(declare-fun m!6157820 () Bool)

(assert (=> b!5100366 m!6157820))

(assert (=> b!5100366 m!6157818))

(assert (=> b!5100366 m!6157696))

(declare-fun m!6157822 () Bool)

(assert (=> b!5100366 m!6157822))

(assert (=> b!5100366 m!6157700))

(assert (=> b!5100366 m!6157682))

(assert (=> b!5100366 m!6157676))

(assert (=> b!5100366 m!6157692))

(assert (=> b!5100366 m!6157660))

(assert (=> b!5100366 m!6157548))

(assert (=> b!5100366 m!6157676))

(assert (=> b!5100366 m!6157694))

(assert (=> b!5100366 m!6157534))

(declare-fun m!6157824 () Bool)

(assert (=> b!5100364 m!6157824))

(assert (=> d!1649933 m!6157676))

(assert (=> d!1649933 m!6157674))

(declare-fun m!6157826 () Bool)

(assert (=> d!1649933 m!6157826))

(assert (=> d!1649933 m!6157668))

(assert (=> d!1649933 m!6157670))

(assert (=> d!1649933 m!6157514))

(declare-fun m!6157828 () Bool)

(assert (=> d!1649933 m!6157828))

(assert (=> d!1649933 m!6157668))

(declare-fun m!6157830 () Bool)

(assert (=> d!1649933 m!6157830))

(declare-fun m!6157832 () Bool)

(assert (=> b!5100358 m!6157832))

(assert (=> bm!355185 m!6157682))

(declare-fun m!6157834 () Bool)

(assert (=> bm!355182 m!6157834))

(declare-fun m!6157836 () Bool)

(assert (=> bm!355180 m!6157836))

(assert (=> b!5100144 d!1649933))

(declare-fun d!1649941 () Bool)

(declare-fun e!3180969 () Bool)

(assert (=> d!1649941 e!3180969))

(declare-fun res!2170722 () Bool)

(assert (=> d!1649941 (=> res!2170722 e!3180969)))

(assert (=> d!1649941 (= res!2170722 (isEmpty!31783 (_1!35034 (findLongestMatchInnerZipper!112 z!4303 Nil!58776 (size!39340 Nil!58776) input!5654 input!5654 (size!39340 input!5654)))))))

(declare-fun lt!2096828 () Unit!149800)

(declare-fun choose!37358 ((Set Context!6844) List!58900) Unit!149800)

(assert (=> d!1649941 (= lt!2096828 (choose!37358 z!4303 input!5654))))

(assert (=> d!1649941 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2023 z!4303 input!5654) lt!2096828)))

(declare-fun b!5100369 () Bool)

(assert (=> b!5100369 (= e!3180969 (matchZipper!710 z!4303 (_1!35034 (findLongestMatchInnerZipper!112 z!4303 Nil!58776 (size!39340 Nil!58776) input!5654 input!5654 (size!39340 input!5654)))))))

(assert (= (and d!1649941 (not res!2170722)) b!5100369))

(declare-fun m!6157838 () Bool)

(assert (=> d!1649941 m!6157838))

(declare-fun m!6157840 () Bool)

(assert (=> d!1649941 m!6157840))

(assert (=> d!1649941 m!6157548))

(assert (=> d!1649941 m!6157534))

(declare-fun m!6157842 () Bool)

(assert (=> d!1649941 m!6157842))

(assert (=> d!1649941 m!6157534))

(assert (=> d!1649941 m!6157548))

(assert (=> b!5100369 m!6157548))

(assert (=> b!5100369 m!6157534))

(assert (=> b!5100369 m!6157548))

(assert (=> b!5100369 m!6157534))

(assert (=> b!5100369 m!6157842))

(declare-fun m!6157844 () Bool)

(assert (=> b!5100369 m!6157844))

(assert (=> b!5100144 d!1649941))

(declare-fun d!1649943 () Bool)

(declare-fun e!3180972 () Bool)

(assert (=> d!1649943 e!3180972))

(declare-fun res!2170725 () Bool)

(assert (=> d!1649943 (=> res!2170725 e!3180972)))

(assert (=> d!1649943 (= res!2170725 (isEmpty!31783 (_1!35034 (findLongestMatchInner!2051 r!12920 Nil!58776 (size!39340 Nil!58776) input!5654 input!5654 (size!39340 input!5654)))))))

(declare-fun lt!2096831 () Unit!149800)

(declare-fun choose!37359 (Regex!14038 List!58900) Unit!149800)

(assert (=> d!1649943 (= lt!2096831 (choose!37359 r!12920 input!5654))))

(assert (=> d!1649943 (validRegex!6165 r!12920)))

(assert (=> d!1649943 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2022 r!12920 input!5654) lt!2096831)))

(declare-fun b!5100372 () Bool)

(assert (=> b!5100372 (= e!3180972 (matchR!6823 r!12920 (_1!35034 (findLongestMatchInner!2051 r!12920 Nil!58776 (size!39340 Nil!58776) input!5654 input!5654 (size!39340 input!5654)))))))

(assert (= (and d!1649943 (not res!2170725)) b!5100372))

(assert (=> d!1649943 m!6157548))

(assert (=> d!1649943 m!6157534))

(declare-fun m!6157846 () Bool)

(assert (=> d!1649943 m!6157846))

(assert (=> d!1649943 m!6157514))

(assert (=> d!1649943 m!6157534))

(declare-fun m!6157848 () Bool)

(assert (=> d!1649943 m!6157848))

(declare-fun m!6157850 () Bool)

(assert (=> d!1649943 m!6157850))

(assert (=> d!1649943 m!6157548))

(assert (=> b!5100372 m!6157548))

(assert (=> b!5100372 m!6157534))

(assert (=> b!5100372 m!6157548))

(assert (=> b!5100372 m!6157534))

(assert (=> b!5100372 m!6157846))

(declare-fun m!6157852 () Bool)

(assert (=> b!5100372 m!6157852))

(assert (=> b!5100144 d!1649943))

(declare-fun d!1649945 () Bool)

(declare-fun lt!2096832 () Int)

(assert (=> d!1649945 (>= lt!2096832 0)))

(declare-fun e!3180973 () Int)

(assert (=> d!1649945 (= lt!2096832 e!3180973)))

(declare-fun c!876251 () Bool)

(assert (=> d!1649945 (= c!876251 (is-Nil!58776 Nil!58776))))

(assert (=> d!1649945 (= (size!39340 Nil!58776) lt!2096832)))

(declare-fun b!5100373 () Bool)

(assert (=> b!5100373 (= e!3180973 0)))

(declare-fun b!5100374 () Bool)

(assert (=> b!5100374 (= e!3180973 (+ 1 (size!39340 (t!371901 Nil!58776))))))

(assert (= (and d!1649945 c!876251) b!5100373))

(assert (= (and d!1649945 (not c!876251)) b!5100374))

(declare-fun m!6157854 () Bool)

(assert (=> b!5100374 m!6157854))

(assert (=> b!5100144 d!1649945))

(declare-fun d!1649947 () Bool)

(declare-fun lambda!249951 () Int)

(declare-fun forall!13486 (List!58901 Int) Bool)

(assert (=> d!1649947 (= (inv!78271 setElem!29191) (forall!13486 (exprs!3922 setElem!29191) lambda!249951))))

(declare-fun bs!1191512 () Bool)

(assert (= bs!1191512 d!1649947))

(declare-fun m!6157998 () Bool)

(assert (=> bs!1191512 m!6157998))

(assert (=> setNonEmpty!29191 d!1649947))

(declare-fun b!5100549 () Bool)

(declare-fun e!3181082 () Bool)

(declare-fun call!355234 () Bool)

(assert (=> b!5100549 (= e!3181082 call!355234)))

(declare-fun b!5100550 () Bool)

(declare-fun e!3181088 () Bool)

(assert (=> b!5100550 (= e!3181088 e!3181082)))

(declare-fun res!2170812 () Bool)

(assert (=> b!5100550 (=> (not res!2170812) (not e!3181082))))

(declare-fun call!355235 () Bool)

(assert (=> b!5100550 (= res!2170812 call!355235)))

(declare-fun c!876299 () Bool)

(declare-fun call!355236 () Bool)

(declare-fun bm!355229 () Bool)

(declare-fun c!876298 () Bool)

(assert (=> bm!355229 (= call!355236 (validRegex!6165 (ite c!876298 (reg!14367 r!12920) (ite c!876299 (regTwo!28589 r!12920) (regOne!28588 r!12920)))))))

(declare-fun b!5100551 () Bool)

(declare-fun e!3181085 () Bool)

(declare-fun e!3181084 () Bool)

(assert (=> b!5100551 (= e!3181085 e!3181084)))

(declare-fun res!2170808 () Bool)

(assert (=> b!5100551 (= res!2170808 (not (nullable!4714 (reg!14367 r!12920))))))

(assert (=> b!5100551 (=> (not res!2170808) (not e!3181084))))

(declare-fun b!5100552 () Bool)

(assert (=> b!5100552 (= e!3181084 call!355236)))

(declare-fun b!5100553 () Bool)

(declare-fun res!2170809 () Bool)

(assert (=> b!5100553 (=> res!2170809 e!3181088)))

(assert (=> b!5100553 (= res!2170809 (not (is-Concat!22883 r!12920)))))

(declare-fun e!3181087 () Bool)

(assert (=> b!5100553 (= e!3181087 e!3181088)))

(declare-fun b!5100554 () Bool)

(declare-fun res!2170811 () Bool)

(declare-fun e!3181083 () Bool)

(assert (=> b!5100554 (=> (not res!2170811) (not e!3181083))))

(assert (=> b!5100554 (= res!2170811 call!355234)))

(assert (=> b!5100554 (= e!3181087 e!3181083)))

(declare-fun d!1649983 () Bool)

(declare-fun res!2170810 () Bool)

(declare-fun e!3181086 () Bool)

(assert (=> d!1649983 (=> res!2170810 e!3181086)))

(assert (=> d!1649983 (= res!2170810 (is-ElementMatch!14038 r!12920))))

(assert (=> d!1649983 (= (validRegex!6165 r!12920) e!3181086)))

(declare-fun b!5100555 () Bool)

(assert (=> b!5100555 (= e!3181086 e!3181085)))

(assert (=> b!5100555 (= c!876298 (is-Star!14038 r!12920))))

(declare-fun bm!355230 () Bool)

(assert (=> bm!355230 (= call!355235 call!355236)))

(declare-fun b!5100556 () Bool)

(assert (=> b!5100556 (= e!3181085 e!3181087)))

(assert (=> b!5100556 (= c!876299 (is-Union!14038 r!12920))))

(declare-fun b!5100557 () Bool)

(assert (=> b!5100557 (= e!3181083 call!355235)))

(declare-fun bm!355231 () Bool)

(assert (=> bm!355231 (= call!355234 (validRegex!6165 (ite c!876299 (regOne!28589 r!12920) (regTwo!28588 r!12920))))))

(assert (= (and d!1649983 (not res!2170810)) b!5100555))

(assert (= (and b!5100555 c!876298) b!5100551))

(assert (= (and b!5100555 (not c!876298)) b!5100556))

(assert (= (and b!5100551 res!2170808) b!5100552))

(assert (= (and b!5100556 c!876299) b!5100554))

(assert (= (and b!5100556 (not c!876299)) b!5100553))

(assert (= (and b!5100554 res!2170811) b!5100557))

(assert (= (and b!5100553 (not res!2170809)) b!5100550))

(assert (= (and b!5100550 res!2170812) b!5100549))

(assert (= (or b!5100557 b!5100550) bm!355230))

(assert (= (or b!5100554 b!5100549) bm!355231))

(assert (= (or b!5100552 bm!355230) bm!355229))

(declare-fun m!6158000 () Bool)

(assert (=> bm!355229 m!6158000))

(declare-fun m!6158002 () Bool)

(assert (=> b!5100551 m!6158002))

(declare-fun m!6158004 () Bool)

(assert (=> bm!355231 m!6158004))

(assert (=> start!537858 d!1649983))

(declare-fun b!5100586 () Bool)

(declare-fun res!2170829 () Bool)

(declare-fun e!3181108 () Bool)

(assert (=> b!5100586 (=> (not res!2170829) (not e!3181108))))

(declare-fun call!355239 () Bool)

(assert (=> b!5100586 (= res!2170829 (not call!355239))))

(declare-fun b!5100587 () Bool)

(declare-fun e!3181103 () Bool)

(declare-fun lt!2096971 () Bool)

(assert (=> b!5100587 (= e!3181103 (not lt!2096971))))

(declare-fun b!5100588 () Bool)

(declare-fun e!3181104 () Bool)

(declare-fun e!3181106 () Bool)

(assert (=> b!5100588 (= e!3181104 e!3181106)))

(declare-fun res!2170832 () Bool)

(assert (=> b!5100588 (=> (not res!2170832) (not e!3181106))))

(assert (=> b!5100588 (= res!2170832 (not lt!2096971))))

(declare-fun b!5100590 () Bool)

(declare-fun e!3181105 () Bool)

(assert (=> b!5100590 (= e!3181105 (not (= (head!10830 (_1!35034 lt!2096507)) (c!876182 r!12920))))))

(declare-fun b!5100591 () Bool)

(declare-fun res!2170835 () Bool)

(assert (=> b!5100591 (=> res!2170835 e!3181105)))

(assert (=> b!5100591 (= res!2170835 (not (isEmpty!31783 (tail!9985 (_1!35034 lt!2096507)))))))

(declare-fun b!5100592 () Bool)

(declare-fun e!3181107 () Bool)

(assert (=> b!5100592 (= e!3181107 (nullable!4714 r!12920))))

(declare-fun b!5100593 () Bool)

(declare-fun e!3181109 () Bool)

(assert (=> b!5100593 (= e!3181109 e!3181103)))

(declare-fun c!876306 () Bool)

(assert (=> b!5100593 (= c!876306 (is-EmptyLang!14038 r!12920))))

(declare-fun b!5100594 () Bool)

(assert (=> b!5100594 (= e!3181109 (= lt!2096971 call!355239))))

(declare-fun b!5100595 () Bool)

(assert (=> b!5100595 (= e!3181107 (matchR!6823 (derivativeStep!3994 r!12920 (head!10830 (_1!35034 lt!2096507))) (tail!9985 (_1!35034 lt!2096507))))))

(declare-fun b!5100596 () Bool)

(declare-fun res!2170831 () Bool)

(assert (=> b!5100596 (=> res!2170831 e!3181104)))

(assert (=> b!5100596 (= res!2170831 e!3181108)))

(declare-fun res!2170834 () Bool)

(assert (=> b!5100596 (=> (not res!2170834) (not e!3181108))))

(assert (=> b!5100596 (= res!2170834 lt!2096971)))

(declare-fun b!5100597 () Bool)

(declare-fun res!2170836 () Bool)

(assert (=> b!5100597 (=> (not res!2170836) (not e!3181108))))

(assert (=> b!5100597 (= res!2170836 (isEmpty!31783 (tail!9985 (_1!35034 lt!2096507))))))

(declare-fun b!5100598 () Bool)

(declare-fun res!2170830 () Bool)

(assert (=> b!5100598 (=> res!2170830 e!3181104)))

(assert (=> b!5100598 (= res!2170830 (not (is-ElementMatch!14038 r!12920)))))

(assert (=> b!5100598 (= e!3181103 e!3181104)))

(declare-fun b!5100589 () Bool)

(assert (=> b!5100589 (= e!3181106 e!3181105)))

(declare-fun res!2170833 () Bool)

(assert (=> b!5100589 (=> res!2170833 e!3181105)))

(assert (=> b!5100589 (= res!2170833 call!355239)))

(declare-fun d!1649985 () Bool)

(assert (=> d!1649985 e!3181109))

(declare-fun c!876308 () Bool)

(assert (=> d!1649985 (= c!876308 (is-EmptyExpr!14038 r!12920))))

(assert (=> d!1649985 (= lt!2096971 e!3181107)))

(declare-fun c!876307 () Bool)

(assert (=> d!1649985 (= c!876307 (isEmpty!31783 (_1!35034 lt!2096507)))))

(assert (=> d!1649985 (validRegex!6165 r!12920)))

(assert (=> d!1649985 (= (matchR!6823 r!12920 (_1!35034 lt!2096507)) lt!2096971)))

(declare-fun bm!355234 () Bool)

(assert (=> bm!355234 (= call!355239 (isEmpty!31783 (_1!35034 lt!2096507)))))

(declare-fun b!5100599 () Bool)

(assert (=> b!5100599 (= e!3181108 (= (head!10830 (_1!35034 lt!2096507)) (c!876182 r!12920)))))

(assert (= (and d!1649985 c!876307) b!5100592))

(assert (= (and d!1649985 (not c!876307)) b!5100595))

(assert (= (and d!1649985 c!876308) b!5100594))

(assert (= (and d!1649985 (not c!876308)) b!5100593))

(assert (= (and b!5100593 c!876306) b!5100587))

(assert (= (and b!5100593 (not c!876306)) b!5100598))

(assert (= (and b!5100598 (not res!2170830)) b!5100596))

(assert (= (and b!5100596 res!2170834) b!5100586))

(assert (= (and b!5100586 res!2170829) b!5100597))

(assert (= (and b!5100597 res!2170836) b!5100599))

(assert (= (and b!5100596 (not res!2170831)) b!5100588))

(assert (= (and b!5100588 res!2170832) b!5100589))

(assert (= (and b!5100589 (not res!2170833)) b!5100591))

(assert (= (and b!5100591 (not res!2170835)) b!5100590))

(assert (= (or b!5100594 b!5100586 b!5100589) bm!355234))

(declare-fun m!6158006 () Bool)

(assert (=> b!5100599 m!6158006))

(assert (=> b!5100592 m!6157834))

(assert (=> b!5100595 m!6158006))

(assert (=> b!5100595 m!6158006))

(declare-fun m!6158008 () Bool)

(assert (=> b!5100595 m!6158008))

(declare-fun m!6158010 () Bool)

(assert (=> b!5100595 m!6158010))

(assert (=> b!5100595 m!6158008))

(assert (=> b!5100595 m!6158010))

(declare-fun m!6158012 () Bool)

(assert (=> b!5100595 m!6158012))

(assert (=> bm!355234 m!6157546))

(assert (=> b!5100597 m!6158010))

(assert (=> b!5100597 m!6158010))

(declare-fun m!6158014 () Bool)

(assert (=> b!5100597 m!6158014))

(assert (=> b!5100591 m!6158010))

(assert (=> b!5100591 m!6158010))

(assert (=> b!5100591 m!6158014))

(assert (=> d!1649985 m!6157546))

(assert (=> d!1649985 m!6157514))

(assert (=> b!5100590 m!6158006))

(assert (=> b!5100142 d!1649985))

(declare-fun d!1649987 () Bool)

(declare-fun e!3181111 () Bool)

(assert (=> d!1649987 e!3181111))

(declare-fun res!2170837 () Bool)

(assert (=> d!1649987 (=> (not res!2170837) (not e!3181111))))

(declare-fun lt!2096972 () List!58900)

(assert (=> d!1649987 (= res!2170837 (= (content!10456 lt!2096972) (set.union (content!10456 (_1!35034 lt!2096508)) (content!10456 (_2!35034 lt!2096508)))))))

(declare-fun e!3181110 () List!58900)

(assert (=> d!1649987 (= lt!2096972 e!3181110)))

(declare-fun c!876309 () Bool)

(assert (=> d!1649987 (= c!876309 (is-Nil!58776 (_1!35034 lt!2096508)))))

(assert (=> d!1649987 (= (++!12887 (_1!35034 lt!2096508) (_2!35034 lt!2096508)) lt!2096972)))

(declare-fun b!5100601 () Bool)

(assert (=> b!5100601 (= e!3181110 (Cons!58776 (h!65224 (_1!35034 lt!2096508)) (++!12887 (t!371901 (_1!35034 lt!2096508)) (_2!35034 lt!2096508))))))

(declare-fun b!5100603 () Bool)

(assert (=> b!5100603 (= e!3181111 (or (not (= (_2!35034 lt!2096508) Nil!58776)) (= lt!2096972 (_1!35034 lt!2096508))))))

(declare-fun b!5100600 () Bool)

(assert (=> b!5100600 (= e!3181110 (_2!35034 lt!2096508))))

(declare-fun b!5100602 () Bool)

(declare-fun res!2170838 () Bool)

(assert (=> b!5100602 (=> (not res!2170838) (not e!3181111))))

(assert (=> b!5100602 (= res!2170838 (= (size!39340 lt!2096972) (+ (size!39340 (_1!35034 lt!2096508)) (size!39340 (_2!35034 lt!2096508)))))))

(assert (= (and d!1649987 c!876309) b!5100600))

(assert (= (and d!1649987 (not c!876309)) b!5100601))

(assert (= (and d!1649987 res!2170837) b!5100602))

(assert (= (and b!5100602 res!2170838) b!5100603))

(declare-fun m!6158016 () Bool)

(assert (=> d!1649987 m!6158016))

(declare-fun m!6158018 () Bool)

(assert (=> d!1649987 m!6158018))

(declare-fun m!6158020 () Bool)

(assert (=> d!1649987 m!6158020))

(declare-fun m!6158022 () Bool)

(assert (=> b!5100601 m!6158022))

(declare-fun m!6158024 () Bool)

(assert (=> b!5100602 m!6158024))

(assert (=> b!5100602 m!6157718))

(declare-fun m!6158026 () Bool)

(assert (=> b!5100602 m!6158026))

(assert (=> b!5100134 d!1649987))

(declare-fun d!1649989 () Bool)

(declare-fun lt!2096992 () tuple2!63462)

(assert (=> d!1649989 (= (++!12887 (_1!35034 lt!2096992) (_2!35034 lt!2096992)) input!5654)))

(declare-fun sizeTr!424 (List!58900 Int) Int)

(assert (=> d!1649989 (= lt!2096992 (findLongestMatchInner!2051 r!12920 Nil!58776 0 input!5654 input!5654 (sizeTr!424 input!5654 0)))))

(declare-fun lt!2096989 () Unit!149800)

(declare-fun lt!2096996 () Unit!149800)

(assert (=> d!1649989 (= lt!2096989 lt!2096996)))

(declare-fun lt!2096991 () List!58900)

(declare-fun lt!2096993 () Int)

(assert (=> d!1649989 (= (sizeTr!424 lt!2096991 lt!2096993) (+ (size!39340 lt!2096991) lt!2096993))))

(declare-fun lemmaSizeTrEqualsSize!423 (List!58900 Int) Unit!149800)

(assert (=> d!1649989 (= lt!2096996 (lemmaSizeTrEqualsSize!423 lt!2096991 lt!2096993))))

(assert (=> d!1649989 (= lt!2096993 0)))

(assert (=> d!1649989 (= lt!2096991 Nil!58776)))

(declare-fun lt!2096995 () Unit!149800)

(declare-fun lt!2096994 () Unit!149800)

(assert (=> d!1649989 (= lt!2096995 lt!2096994)))

(declare-fun lt!2096990 () Int)

(assert (=> d!1649989 (= (sizeTr!424 input!5654 lt!2096990) (+ (size!39340 input!5654) lt!2096990))))

(assert (=> d!1649989 (= lt!2096994 (lemmaSizeTrEqualsSize!423 input!5654 lt!2096990))))

(assert (=> d!1649989 (= lt!2096990 0)))

(assert (=> d!1649989 (validRegex!6165 r!12920)))

(assert (=> d!1649989 (= (findLongestMatch!1868 r!12920 input!5654) lt!2096992)))

(declare-fun bs!1191513 () Bool)

(assert (= bs!1191513 d!1649989))

(declare-fun m!6158028 () Bool)

(assert (=> bs!1191513 m!6158028))

(declare-fun m!6158030 () Bool)

(assert (=> bs!1191513 m!6158030))

(assert (=> bs!1191513 m!6157514))

(declare-fun m!6158032 () Bool)

(assert (=> bs!1191513 m!6158032))

(assert (=> bs!1191513 m!6158032))

(declare-fun m!6158034 () Bool)

(assert (=> bs!1191513 m!6158034))

(assert (=> bs!1191513 m!6157534))

(declare-fun m!6158036 () Bool)

(assert (=> bs!1191513 m!6158036))

(declare-fun m!6158038 () Bool)

(assert (=> bs!1191513 m!6158038))

(declare-fun m!6158040 () Bool)

(assert (=> bs!1191513 m!6158040))

(declare-fun m!6158042 () Bool)

(assert (=> bs!1191513 m!6158042))

(assert (=> b!5100134 d!1649989))

(declare-fun d!1649991 () Bool)

(declare-fun lt!2097005 () tuple2!63462)

(assert (=> d!1649991 (= (++!12887 (_1!35034 lt!2097005) (_2!35034 lt!2097005)) input!5654)))

(assert (=> d!1649991 (= lt!2097005 (findLongestMatchInnerZipper!112 z!4303 Nil!58776 0 input!5654 input!5654 (sizeTr!424 input!5654 0)))))

(declare-fun lt!2097006 () Unit!149800)

(declare-fun lt!2097008 () Unit!149800)

(assert (=> d!1649991 (= lt!2097006 lt!2097008)))

(declare-fun lt!2097007 () Int)

(assert (=> d!1649991 (= (sizeTr!424 input!5654 lt!2097007) (+ (size!39340 input!5654) lt!2097007))))

(assert (=> d!1649991 (= lt!2097008 (lemmaSizeTrEqualsSize!423 input!5654 lt!2097007))))

(assert (=> d!1649991 (= lt!2097007 0)))

(assert (=> d!1649991 (= (findLongestMatchZipper!62 z!4303 input!5654) lt!2097005)))

(declare-fun bs!1191514 () Bool)

(assert (= bs!1191514 d!1649991))

(assert (=> bs!1191514 m!6158032))

(declare-fun m!6158044 () Bool)

(assert (=> bs!1191514 m!6158044))

(declare-fun m!6158046 () Bool)

(assert (=> bs!1191514 m!6158046))

(assert (=> bs!1191514 m!6157534))

(declare-fun m!6158048 () Bool)

(assert (=> bs!1191514 m!6158048))

(assert (=> bs!1191514 m!6158032))

(declare-fun m!6158050 () Bool)

(assert (=> bs!1191514 m!6158050))

(assert (=> b!5100134 d!1649991))

(declare-fun e!3181114 () Bool)

(assert (=> b!5100141 (= tp!1422625 e!3181114)))

(declare-fun b!5100617 () Bool)

(declare-fun tp!1422666 () Bool)

(declare-fun tp!1422667 () Bool)

(assert (=> b!5100617 (= e!3181114 (and tp!1422666 tp!1422667))))

(declare-fun b!5100614 () Bool)

(assert (=> b!5100614 (= e!3181114 tp_is_empty!37341)))

(declare-fun b!5100615 () Bool)

(declare-fun tp!1422668 () Bool)

(declare-fun tp!1422669 () Bool)

(assert (=> b!5100615 (= e!3181114 (and tp!1422668 tp!1422669))))

(declare-fun b!5100616 () Bool)

(declare-fun tp!1422670 () Bool)

(assert (=> b!5100616 (= e!3181114 tp!1422670)))

(assert (= (and b!5100141 (is-ElementMatch!14038 (reg!14367 r!12920))) b!5100614))

(assert (= (and b!5100141 (is-Concat!22883 (reg!14367 r!12920))) b!5100615))

(assert (= (and b!5100141 (is-Star!14038 (reg!14367 r!12920))) b!5100616))

(assert (= (and b!5100141 (is-Union!14038 (reg!14367 r!12920))) b!5100617))

(declare-fun b!5100622 () Bool)

(declare-fun e!3181117 () Bool)

(declare-fun tp!1422673 () Bool)

(assert (=> b!5100622 (= e!3181117 (and tp_is_empty!37341 tp!1422673))))

(assert (=> b!5100137 (= tp!1422624 e!3181117)))

(assert (= (and b!5100137 (is-Cons!58776 (t!371901 input!5654))) b!5100622))

(declare-fun e!3181118 () Bool)

(assert (=> b!5100139 (= tp!1422627 e!3181118)))

(declare-fun b!5100626 () Bool)

(declare-fun tp!1422674 () Bool)

(declare-fun tp!1422675 () Bool)

(assert (=> b!5100626 (= e!3181118 (and tp!1422674 tp!1422675))))

(declare-fun b!5100623 () Bool)

(assert (=> b!5100623 (= e!3181118 tp_is_empty!37341)))

(declare-fun b!5100624 () Bool)

(declare-fun tp!1422676 () Bool)

(declare-fun tp!1422677 () Bool)

(assert (=> b!5100624 (= e!3181118 (and tp!1422676 tp!1422677))))

(declare-fun b!5100625 () Bool)

(declare-fun tp!1422678 () Bool)

(assert (=> b!5100625 (= e!3181118 tp!1422678)))

(assert (= (and b!5100139 (is-ElementMatch!14038 (regOne!28588 r!12920))) b!5100623))

(assert (= (and b!5100139 (is-Concat!22883 (regOne!28588 r!12920))) b!5100624))

(assert (= (and b!5100139 (is-Star!14038 (regOne!28588 r!12920))) b!5100625))

(assert (= (and b!5100139 (is-Union!14038 (regOne!28588 r!12920))) b!5100626))

(declare-fun e!3181119 () Bool)

(assert (=> b!5100139 (= tp!1422630 e!3181119)))

(declare-fun b!5100630 () Bool)

(declare-fun tp!1422679 () Bool)

(declare-fun tp!1422680 () Bool)

(assert (=> b!5100630 (= e!3181119 (and tp!1422679 tp!1422680))))

(declare-fun b!5100627 () Bool)

(assert (=> b!5100627 (= e!3181119 tp_is_empty!37341)))

(declare-fun b!5100628 () Bool)

(declare-fun tp!1422681 () Bool)

(declare-fun tp!1422682 () Bool)

(assert (=> b!5100628 (= e!3181119 (and tp!1422681 tp!1422682))))

(declare-fun b!5100629 () Bool)

(declare-fun tp!1422683 () Bool)

(assert (=> b!5100629 (= e!3181119 tp!1422683)))

(assert (= (and b!5100139 (is-ElementMatch!14038 (regTwo!28588 r!12920))) b!5100627))

(assert (= (and b!5100139 (is-Concat!22883 (regTwo!28588 r!12920))) b!5100628))

(assert (= (and b!5100139 (is-Star!14038 (regTwo!28588 r!12920))) b!5100629))

(assert (= (and b!5100139 (is-Union!14038 (regTwo!28588 r!12920))) b!5100630))

(declare-fun condSetEmpty!29197 () Bool)

(assert (=> setNonEmpty!29191 (= condSetEmpty!29197 (= setRest!29191 (as set.empty (Set Context!6844))))))

(declare-fun setRes!29197 () Bool)

(assert (=> setNonEmpty!29191 (= tp!1422628 setRes!29197)))

(declare-fun setIsEmpty!29197 () Bool)

(assert (=> setIsEmpty!29197 setRes!29197))

(declare-fun setElem!29197 () Context!6844)

(declare-fun tp!1422688 () Bool)

(declare-fun e!3181122 () Bool)

(declare-fun setNonEmpty!29197 () Bool)

(assert (=> setNonEmpty!29197 (= setRes!29197 (and tp!1422688 (inv!78271 setElem!29197) e!3181122))))

(declare-fun setRest!29197 () (Set Context!6844))

(assert (=> setNonEmpty!29197 (= setRest!29191 (set.union (set.insert setElem!29197 (as set.empty (Set Context!6844))) setRest!29197))))

(declare-fun b!5100635 () Bool)

(declare-fun tp!1422689 () Bool)

(assert (=> b!5100635 (= e!3181122 tp!1422689)))

(assert (= (and setNonEmpty!29191 condSetEmpty!29197) setIsEmpty!29197))

(assert (= (and setNonEmpty!29191 (not condSetEmpty!29197)) setNonEmpty!29197))

(assert (= setNonEmpty!29197 b!5100635))

(declare-fun m!6158052 () Bool)

(assert (=> setNonEmpty!29197 m!6158052))

(declare-fun b!5100640 () Bool)

(declare-fun e!3181125 () Bool)

(declare-fun tp!1422694 () Bool)

(declare-fun tp!1422695 () Bool)

(assert (=> b!5100640 (= e!3181125 (and tp!1422694 tp!1422695))))

(assert (=> b!5100138 (= tp!1422626 e!3181125)))

(assert (= (and b!5100138 (is-Cons!58777 (exprs!3922 setElem!29191))) b!5100640))

(declare-fun e!3181126 () Bool)

(assert (=> b!5100143 (= tp!1422629 e!3181126)))

(declare-fun b!5100644 () Bool)

(declare-fun tp!1422696 () Bool)

(declare-fun tp!1422697 () Bool)

(assert (=> b!5100644 (= e!3181126 (and tp!1422696 tp!1422697))))

(declare-fun b!5100641 () Bool)

(assert (=> b!5100641 (= e!3181126 tp_is_empty!37341)))

(declare-fun b!5100642 () Bool)

(declare-fun tp!1422698 () Bool)

(declare-fun tp!1422699 () Bool)

(assert (=> b!5100642 (= e!3181126 (and tp!1422698 tp!1422699))))

(declare-fun b!5100643 () Bool)

(declare-fun tp!1422700 () Bool)

(assert (=> b!5100643 (= e!3181126 tp!1422700)))

(assert (= (and b!5100143 (is-ElementMatch!14038 (regOne!28589 r!12920))) b!5100641))

(assert (= (and b!5100143 (is-Concat!22883 (regOne!28589 r!12920))) b!5100642))

(assert (= (and b!5100143 (is-Star!14038 (regOne!28589 r!12920))) b!5100643))

(assert (= (and b!5100143 (is-Union!14038 (regOne!28589 r!12920))) b!5100644))

(declare-fun e!3181127 () Bool)

(assert (=> b!5100143 (= tp!1422631 e!3181127)))

(declare-fun b!5100648 () Bool)

(declare-fun tp!1422701 () Bool)

(declare-fun tp!1422702 () Bool)

(assert (=> b!5100648 (= e!3181127 (and tp!1422701 tp!1422702))))

(declare-fun b!5100645 () Bool)

(assert (=> b!5100645 (= e!3181127 tp_is_empty!37341)))

(declare-fun b!5100646 () Bool)

(declare-fun tp!1422703 () Bool)

(declare-fun tp!1422704 () Bool)

(assert (=> b!5100646 (= e!3181127 (and tp!1422703 tp!1422704))))

(declare-fun b!5100647 () Bool)

(declare-fun tp!1422705 () Bool)

(assert (=> b!5100647 (= e!3181127 tp!1422705)))

(assert (= (and b!5100143 (is-ElementMatch!14038 (regTwo!28589 r!12920))) b!5100645))

(assert (= (and b!5100143 (is-Concat!22883 (regTwo!28589 r!12920))) b!5100646))

(assert (= (and b!5100143 (is-Star!14038 (regTwo!28589 r!12920))) b!5100647))

(assert (= (and b!5100143 (is-Union!14038 (regTwo!28589 r!12920))) b!5100648))

(push 1)

(assert (not b!5100366))

(assert (not b!5100245))

(assert (not bm!355234))

(assert (not bm!355182))

(assert (not d!1649943))

(assert (not b!5100243))

(assert (not b!5100601))

(assert (not b!5100626))

(assert (not b!5100365))

(assert (not b!5100625))

(assert (not bm!355184))

(assert (not d!1649989))

(assert (not bm!355183))

(assert (not b!5100643))

(assert (not bm!355134))

(assert (not b!5100265))

(assert (not d!1649917))

(assert (not b!5100271))

(assert (not d!1649929))

(assert (not b!5100622))

(assert (not b!5100628))

(assert (not bm!355135))

(assert (not d!1649907))

(assert (not bm!355229))

(assert (not b!5100211))

(assert (not b!5100266))

(assert (not d!1649987))

(assert (not b!5100198))

(assert (not b!5100364))

(assert (not d!1649941))

(assert (not b!5100602))

(assert (not b!5100199))

(assert (not d!1649921))

(assert (not b!5100617))

(assert (not bm!355179))

(assert (not b!5100372))

(assert (not b!5100595))

(assert (not b!5100551))

(assert (not b!5100255))

(assert (not bm!355180))

(assert (not b!5100374))

(assert (not b!5100615))

(assert (not b!5100269))

(assert (not b!5100592))

(assert (not b!5100277))

(assert (not b!5100630))

(assert (not bm!355133))

(assert (not b!5100629))

(assert (not b!5100647))

(assert (not b!5100640))

(assert (not d!1649901))

(assert (not bm!355136))

(assert (not b!5100369))

(assert (not d!1649991))

(assert (not b!5100616))

(assert (not b!5100648))

(assert (not setNonEmpty!29197))

(assert (not d!1649947))

(assert (not b!5100270))

(assert (not b!5100646))

(assert (not b!5100590))

(assert (not b!5100624))

(assert (not b!5100642))

(assert (not b!5100635))

(assert (not bm!355137))

(assert (not b!5100599))

(assert (not b!5100591))

(assert (not b!5100358))

(assert (not d!1649913))

(assert (not bm!355186))

(assert (not bm!355132))

(assert (not d!1649933))

(assert (not bm!355138))

(assert (not b!5100186))

(assert (not bm!355181))

(assert (not b!5100212))

(assert (not b!5100278))

(assert tp_is_empty!37341)

(assert (not bm!355131))

(assert (not b!5100253))

(assert (not bm!355231))

(assert (not d!1649985))

(assert (not b!5100267))

(assert (not bm!355185))

(assert (not b!5100279))

(assert (not b!5100644))

(assert (not d!1649919))

(assert (not b!5100597))

(assert (not d!1649903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

