; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538024 () Bool)

(assert start!538024)

(declare-fun b!5101933 () Bool)

(declare-fun e!3181984 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28364 0))(
  ( (C!28365 (val!23834 Int)) )
))
(declare-datatypes ((Regex!14053 0))(
  ( (ElementMatch!14053 (c!876455 C!28364)) (Concat!22898 (regOne!28618 Regex!14053) (regTwo!28618 Regex!14053)) (EmptyExpr!14053) (Star!14053 (reg!14382 Regex!14053)) (EmptyLang!14053) (Union!14053 (regOne!28619 Regex!14053) (regTwo!28619 Regex!14053)) )
))
(declare-datatypes ((List!58945 0))(
  ( (Nil!58821) (Cons!58821 (h!65269 Regex!14053) (t!371946 List!58945)) )
))
(declare-datatypes ((Context!6874 0))(
  ( (Context!6875 (exprs!3937 List!58945)) )
))
(declare-fun z!4303 () (InoxSet Context!6874))

(declare-datatypes ((List!58946 0))(
  ( (Nil!58822) (Cons!58822 (h!65270 C!28364) (t!371947 List!58946)) )
))
(declare-datatypes ((tuple2!63492 0))(
  ( (tuple2!63493 (_1!35049 List!58946) (_2!35049 List!58946)) )
))
(declare-fun lt!2098139 () tuple2!63492)

(declare-fun matchZipper!725 ((InoxSet Context!6874) List!58946) Bool)

(assert (=> b!5101933 (= e!3181984 (matchZipper!725 z!4303 (_1!35049 lt!2098139)))))

(declare-fun b!5101934 () Bool)

(declare-fun e!3181989 () Bool)

(declare-fun tp_is_empty!37371 () Bool)

(declare-fun tp!1423185 () Bool)

(assert (=> b!5101934 (= e!3181989 (and tp_is_empty!37371 tp!1423185))))

(declare-fun b!5101935 () Bool)

(declare-fun e!3181977 () Bool)

(declare-fun tp!1423190 () Bool)

(declare-fun tp!1423187 () Bool)

(assert (=> b!5101935 (= e!3181977 (and tp!1423190 tp!1423187))))

(declare-fun b!5101936 () Bool)

(declare-fun e!3181988 () Bool)

(declare-fun e!3181986 () Bool)

(assert (=> b!5101936 (= e!3181988 e!3181986)))

(declare-fun res!2171484 () Bool)

(assert (=> b!5101936 (=> res!2171484 e!3181986)))

(declare-fun lt!2098143 () Int)

(declare-fun lt!2098140 () Int)

(assert (=> b!5101936 (= res!2171484 (<= lt!2098143 lt!2098140))))

(declare-fun lt!2098131 () tuple2!63492)

(declare-fun size!39355 (List!58946) Int)

(assert (=> b!5101936 (= lt!2098140 (size!39355 (_1!35049 lt!2098131)))))

(declare-fun lt!2098141 () tuple2!63492)

(assert (=> b!5101936 (= lt!2098143 (size!39355 (_1!35049 lt!2098141)))))

(declare-fun r!12920 () Regex!14053)

(declare-fun lt!2098136 () Bool)

(declare-fun matchR!6838 (Regex!14053 List!58946) Bool)

(assert (=> b!5101936 (= (matchR!6838 r!12920 (_1!35049 lt!2098131)) lt!2098136)))

(declare-datatypes ((Unit!149854 0))(
  ( (Unit!149855) )
))
(declare-fun lt!2098142 () Unit!149854)

(declare-datatypes ((List!58947 0))(
  ( (Nil!58823) (Cons!58823 (h!65271 Context!6874) (t!371948 List!58947)) )
))
(declare-fun lt!2098133 () List!58947)

(declare-fun theoremZipperRegexEquiv!217 ((InoxSet Context!6874) List!58947 Regex!14053 List!58946) Unit!149854)

(assert (=> b!5101936 (= lt!2098142 (theoremZipperRegexEquiv!217 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098131)))))

(declare-fun lt!2098138 () Bool)

(assert (=> b!5101936 (= lt!2098138 (matchZipper!725 z!4303 (_1!35049 lt!2098141)))))

(declare-fun lt!2098134 () Unit!149854)

(assert (=> b!5101936 (= lt!2098134 (theoremZipperRegexEquiv!217 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098141)))))

(declare-fun b!5101937 () Bool)

(declare-fun tp!1423188 () Bool)

(declare-fun tp!1423186 () Bool)

(assert (=> b!5101937 (= e!3181977 (and tp!1423188 tp!1423186))))

(declare-fun setRes!29248 () Bool)

(declare-fun e!3181983 () Bool)

(declare-fun setNonEmpty!29248 () Bool)

(declare-fun setElem!29248 () Context!6874)

(declare-fun tp!1423191 () Bool)

(declare-fun inv!78307 (Context!6874) Bool)

(assert (=> setNonEmpty!29248 (= setRes!29248 (and tp!1423191 (inv!78307 setElem!29248) e!3181983))))

(declare-fun setRest!29248 () (InoxSet Context!6874))

(assert (=> setNonEmpty!29248 (= z!4303 ((_ map or) (store ((as const (Array Context!6874 Bool)) false) setElem!29248 true) setRest!29248))))

(declare-fun b!5101938 () Bool)

(declare-fun tp!1423189 () Bool)

(assert (=> b!5101938 (= e!3181977 tp!1423189)))

(declare-fun setIsEmpty!29248 () Bool)

(assert (=> setIsEmpty!29248 setRes!29248))

(declare-fun b!5101939 () Bool)

(declare-fun tp!1423184 () Bool)

(assert (=> b!5101939 (= e!3181983 tp!1423184)))

(declare-fun b!5101940 () Bool)

(declare-fun e!3181985 () Bool)

(declare-fun e!3181979 () Bool)

(assert (=> b!5101940 (= e!3181985 e!3181979)))

(declare-fun res!2171481 () Bool)

(assert (=> b!5101940 (=> (not res!2171481) (not e!3181979))))

(declare-fun lt!2098128 () List!58946)

(declare-fun input!5654 () List!58946)

(assert (=> b!5101940 (= res!2171481 (= lt!2098128 input!5654))))

(declare-fun ++!12902 (List!58946 List!58946) List!58946)

(assert (=> b!5101940 (= lt!2098128 (++!12902 (_1!35049 lt!2098141) (_2!35049 lt!2098141)))))

(declare-fun b!5101941 () Bool)

(declare-fun e!3181987 () Bool)

(declare-fun e!3181976 () Bool)

(assert (=> b!5101941 (= e!3181987 e!3181976)))

(declare-fun res!2171488 () Bool)

(assert (=> b!5101941 (=> (not res!2171488) (not e!3181976))))

(declare-fun unfocusZipper!395 (List!58947) Regex!14053)

(assert (=> b!5101941 (= res!2171488 (= (unfocusZipper!395 lt!2098133) r!12920))))

(declare-fun toList!8187 ((InoxSet Context!6874)) List!58947)

(assert (=> b!5101941 (= lt!2098133 (toList!8187 z!4303))))

(declare-fun b!5101942 () Bool)

(declare-fun e!3181978 () Bool)

(assert (=> b!5101942 (= e!3181978 e!3181988)))

(declare-fun res!2171487 () Bool)

(assert (=> b!5101942 (=> res!2171487 e!3181988)))

(declare-fun e!3181980 () Bool)

(assert (=> b!5101942 (= res!2171487 e!3181980)))

(declare-fun res!2171489 () Bool)

(assert (=> b!5101942 (=> (not res!2171489) (not e!3181980))))

(assert (=> b!5101942 (= res!2171489 (not lt!2098138))))

(assert (=> b!5101942 (= lt!2098138 (matchR!6838 r!12920 (_1!35049 lt!2098141)))))

(declare-fun b!5101943 () Bool)

(assert (=> b!5101943 (= e!3181986 (or (< lt!2098143 lt!2098140) (= (_1!35049 lt!2098139) (_1!35049 lt!2098131))))))

(declare-fun b!5101944 () Bool)

(assert (=> b!5101944 (= e!3181976 e!3181985)))

(declare-fun res!2171478 () Bool)

(assert (=> b!5101944 (=> (not res!2171478) (not e!3181985))))

(declare-fun lt!2098135 () List!58946)

(assert (=> b!5101944 (= res!2171478 (= lt!2098135 input!5654))))

(assert (=> b!5101944 (= lt!2098135 (++!12902 (_1!35049 lt!2098131) (_2!35049 lt!2098131)))))

(declare-fun findLongestMatch!1883 (Regex!14053 List!58946) tuple2!63492)

(assert (=> b!5101944 (= lt!2098141 (findLongestMatch!1883 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!77 ((InoxSet Context!6874) List!58946) tuple2!63492)

(assert (=> b!5101944 (= lt!2098131 (findLongestMatchZipper!77 z!4303 input!5654))))

(declare-fun b!5101945 () Bool)

(declare-fun res!2171482 () Bool)

(assert (=> b!5101945 (=> res!2171482 e!3181986)))

(declare-fun isPrefix!5454 (List!58946 List!58946) Bool)

(assert (=> b!5101945 (= res!2171482 (not (isPrefix!5454 (_1!35049 lt!2098141) input!5654)))))

(declare-fun res!2171483 () Bool)

(assert (=> start!538024 (=> (not res!2171483) (not e!3181987))))

(declare-fun validRegex!6180 (Regex!14053) Bool)

(assert (=> start!538024 (= res!2171483 (validRegex!6180 r!12920))))

(assert (=> start!538024 e!3181987))

(assert (=> start!538024 e!3181977))

(declare-fun condSetEmpty!29248 () Bool)

(assert (=> start!538024 (= condSetEmpty!29248 (= z!4303 ((as const (Array Context!6874 Bool)) false)))))

(assert (=> start!538024 setRes!29248))

(assert (=> start!538024 e!3181989))

(declare-fun b!5101946 () Bool)

(declare-fun isEmpty!31798 (List!58946) Bool)

(assert (=> b!5101946 (= e!3181980 (not (isEmpty!31798 (_1!35049 lt!2098141))))))

(declare-fun b!5101947 () Bool)

(declare-fun e!3181982 () Bool)

(declare-fun lt!2098132 () tuple2!63492)

(assert (=> b!5101947 (= e!3181982 (matchR!6838 r!12920 (_1!35049 lt!2098132)))))

(declare-fun b!5101948 () Bool)

(assert (=> b!5101948 (= e!3181979 (not e!3181978))))

(declare-fun res!2171486 () Bool)

(assert (=> b!5101948 (=> res!2171486 e!3181978)))

(declare-fun e!3181981 () Bool)

(assert (=> b!5101948 (= res!2171486 e!3181981)))

(declare-fun res!2171490 () Bool)

(assert (=> b!5101948 (=> (not res!2171490) (not e!3181981))))

(assert (=> b!5101948 (= res!2171490 (not lt!2098136))))

(assert (=> b!5101948 (= lt!2098136 (matchZipper!725 z!4303 (_1!35049 lt!2098131)))))

(assert (=> b!5101948 e!3181982))

(declare-fun res!2171485 () Bool)

(assert (=> b!5101948 (=> res!2171485 e!3181982)))

(assert (=> b!5101948 (= res!2171485 (isEmpty!31798 (_1!35049 lt!2098132)))))

(declare-fun lt!2098144 () Int)

(declare-fun lt!2098146 () Int)

(declare-fun findLongestMatchInner!2066 (Regex!14053 List!58946 Int List!58946 List!58946 Int) tuple2!63492)

(assert (=> b!5101948 (= lt!2098132 (findLongestMatchInner!2066 r!12920 Nil!58822 lt!2098144 input!5654 input!5654 lt!2098146))))

(declare-fun lt!2098130 () Unit!149854)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2052 (Regex!14053 List!58946) Unit!149854)

(assert (=> b!5101948 (= lt!2098130 (longestMatchIsAcceptedByMatchOrIsEmpty!2052 r!12920 input!5654))))

(assert (=> b!5101948 e!3181984))

(declare-fun res!2171479 () Bool)

(assert (=> b!5101948 (=> res!2171479 e!3181984)))

(assert (=> b!5101948 (= res!2171479 (isEmpty!31798 (_1!35049 lt!2098139)))))

(declare-fun findLongestMatchInnerZipper!127 ((InoxSet Context!6874) List!58946 Int List!58946 List!58946 Int) tuple2!63492)

(assert (=> b!5101948 (= lt!2098139 (findLongestMatchInnerZipper!127 z!4303 Nil!58822 lt!2098144 input!5654 input!5654 lt!2098146))))

(assert (=> b!5101948 (= lt!2098146 (size!39355 input!5654))))

(assert (=> b!5101948 (= lt!2098144 (size!39355 Nil!58822))))

(declare-fun lt!2098145 () Unit!149854)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2053 ((InoxSet Context!6874) List!58946) Unit!149854)

(assert (=> b!5101948 (= lt!2098145 (longestMatchIsAcceptedByMatchOrIsEmpty!2053 z!4303 input!5654))))

(assert (=> b!5101948 (isPrefix!5454 (_1!35049 lt!2098141) lt!2098128)))

(declare-fun lt!2098137 () Unit!149854)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3512 (List!58946 List!58946) Unit!149854)

(assert (=> b!5101948 (= lt!2098137 (lemmaConcatTwoListThenFirstIsPrefix!3512 (_1!35049 lt!2098141) (_2!35049 lt!2098141)))))

(assert (=> b!5101948 (isPrefix!5454 (_1!35049 lt!2098131) lt!2098135)))

(declare-fun lt!2098129 () Unit!149854)

(assert (=> b!5101948 (= lt!2098129 (lemmaConcatTwoListThenFirstIsPrefix!3512 (_1!35049 lt!2098131) (_2!35049 lt!2098131)))))

(declare-fun b!5101949 () Bool)

(assert (=> b!5101949 (= e!3181981 (not (isEmpty!31798 (_1!35049 lt!2098131))))))

(declare-fun b!5101950 () Bool)

(assert (=> b!5101950 (= e!3181977 tp_is_empty!37371)))

(declare-fun b!5101951 () Bool)

(declare-fun res!2171480 () Bool)

(assert (=> b!5101951 (=> res!2171480 e!3181986)))

(assert (=> b!5101951 (= res!2171480 (not (isPrefix!5454 (_1!35049 lt!2098131) input!5654)))))

(assert (= (and start!538024 res!2171483) b!5101941))

(assert (= (and b!5101941 res!2171488) b!5101944))

(assert (= (and b!5101944 res!2171478) b!5101940))

(assert (= (and b!5101940 res!2171481) b!5101948))

(assert (= (and b!5101948 (not res!2171479)) b!5101933))

(assert (= (and b!5101948 (not res!2171485)) b!5101947))

(assert (= (and b!5101948 res!2171490) b!5101949))

(assert (= (and b!5101948 (not res!2171486)) b!5101942))

(assert (= (and b!5101942 res!2171489) b!5101946))

(assert (= (and b!5101942 (not res!2171487)) b!5101936))

(assert (= (and b!5101936 (not res!2171484)) b!5101951))

(assert (= (and b!5101951 (not res!2171480)) b!5101945))

(assert (= (and b!5101945 (not res!2171482)) b!5101943))

(get-info :version)

(assert (= (and start!538024 ((_ is ElementMatch!14053) r!12920)) b!5101950))

(assert (= (and start!538024 ((_ is Concat!22898) r!12920)) b!5101935))

(assert (= (and start!538024 ((_ is Star!14053) r!12920)) b!5101938))

(assert (= (and start!538024 ((_ is Union!14053) r!12920)) b!5101937))

(assert (= (and start!538024 condSetEmpty!29248) setIsEmpty!29248))

(assert (= (and start!538024 (not condSetEmpty!29248)) setNonEmpty!29248))

(assert (= setNonEmpty!29248 b!5101939))

(assert (= (and start!538024 ((_ is Cons!58822) input!5654)) b!5101934))

(declare-fun m!6159314 () Bool)

(assert (=> b!5101948 m!6159314))

(declare-fun m!6159316 () Bool)

(assert (=> b!5101948 m!6159316))

(declare-fun m!6159318 () Bool)

(assert (=> b!5101948 m!6159318))

(declare-fun m!6159320 () Bool)

(assert (=> b!5101948 m!6159320))

(declare-fun m!6159322 () Bool)

(assert (=> b!5101948 m!6159322))

(declare-fun m!6159324 () Bool)

(assert (=> b!5101948 m!6159324))

(declare-fun m!6159326 () Bool)

(assert (=> b!5101948 m!6159326))

(declare-fun m!6159328 () Bool)

(assert (=> b!5101948 m!6159328))

(declare-fun m!6159330 () Bool)

(assert (=> b!5101948 m!6159330))

(declare-fun m!6159332 () Bool)

(assert (=> b!5101948 m!6159332))

(declare-fun m!6159334 () Bool)

(assert (=> b!5101948 m!6159334))

(declare-fun m!6159336 () Bool)

(assert (=> b!5101948 m!6159336))

(declare-fun m!6159338 () Bool)

(assert (=> b!5101948 m!6159338))

(declare-fun m!6159340 () Bool)

(assert (=> start!538024 m!6159340))

(declare-fun m!6159342 () Bool)

(assert (=> b!5101940 m!6159342))

(declare-fun m!6159344 () Bool)

(assert (=> b!5101933 m!6159344))

(declare-fun m!6159346 () Bool)

(assert (=> b!5101942 m!6159346))

(declare-fun m!6159348 () Bool)

(assert (=> b!5101946 m!6159348))

(declare-fun m!6159350 () Bool)

(assert (=> b!5101945 m!6159350))

(declare-fun m!6159352 () Bool)

(assert (=> b!5101944 m!6159352))

(declare-fun m!6159354 () Bool)

(assert (=> b!5101944 m!6159354))

(declare-fun m!6159356 () Bool)

(assert (=> b!5101944 m!6159356))

(declare-fun m!6159358 () Bool)

(assert (=> b!5101949 m!6159358))

(declare-fun m!6159360 () Bool)

(assert (=> b!5101941 m!6159360))

(declare-fun m!6159362 () Bool)

(assert (=> b!5101941 m!6159362))

(declare-fun m!6159364 () Bool)

(assert (=> setNonEmpty!29248 m!6159364))

(declare-fun m!6159366 () Bool)

(assert (=> b!5101936 m!6159366))

(declare-fun m!6159368 () Bool)

(assert (=> b!5101936 m!6159368))

(declare-fun m!6159370 () Bool)

(assert (=> b!5101936 m!6159370))

(declare-fun m!6159372 () Bool)

(assert (=> b!5101936 m!6159372))

(declare-fun m!6159374 () Bool)

(assert (=> b!5101936 m!6159374))

(declare-fun m!6159376 () Bool)

(assert (=> b!5101936 m!6159376))

(declare-fun m!6159378 () Bool)

(assert (=> b!5101947 m!6159378))

(declare-fun m!6159380 () Bool)

(assert (=> b!5101951 m!6159380))

(check-sat (not start!538024) (not b!5101948) (not b!5101940) (not b!5101949) (not b!5101936) (not b!5101945) (not b!5101934) tp_is_empty!37371 (not b!5101939) (not b!5101935) (not b!5101944) (not b!5101947) (not b!5101951) (not setNonEmpty!29248) (not b!5101937) (not b!5101938) (not b!5101946) (not b!5101933) (not b!5101942) (not b!5101941))
(check-sat)
(get-model)

(declare-fun d!1650104 () Bool)

(assert (=> d!1650104 (= (isEmpty!31798 (_1!35049 lt!2098131)) ((_ is Nil!58822) (_1!35049 lt!2098131)))))

(assert (=> b!5101949 d!1650104))

(declare-fun d!1650108 () Bool)

(assert (=> d!1650108 (= (isEmpty!31798 (_1!35049 lt!2098132)) ((_ is Nil!58822) (_1!35049 lt!2098132)))))

(assert (=> b!5101948 d!1650108))

(declare-fun b!5101977 () Bool)

(declare-fun res!2171511 () Bool)

(declare-fun e!3182007 () Bool)

(assert (=> b!5101977 (=> (not res!2171511) (not e!3182007))))

(declare-fun head!10835 (List!58946) C!28364)

(assert (=> b!5101977 (= res!2171511 (= (head!10835 (_1!35049 lt!2098141)) (head!10835 lt!2098128)))))

(declare-fun b!5101978 () Bool)

(declare-fun tail!9990 (List!58946) List!58946)

(assert (=> b!5101978 (= e!3182007 (isPrefix!5454 (tail!9990 (_1!35049 lt!2098141)) (tail!9990 lt!2098128)))))

(declare-fun b!5101976 () Bool)

(declare-fun e!3182009 () Bool)

(assert (=> b!5101976 (= e!3182009 e!3182007)))

(declare-fun res!2171512 () Bool)

(assert (=> b!5101976 (=> (not res!2171512) (not e!3182007))))

(assert (=> b!5101976 (= res!2171512 (not ((_ is Nil!58822) lt!2098128)))))

(declare-fun b!5101979 () Bool)

(declare-fun e!3182008 () Bool)

(assert (=> b!5101979 (= e!3182008 (>= (size!39355 lt!2098128) (size!39355 (_1!35049 lt!2098141))))))

(declare-fun d!1650110 () Bool)

(assert (=> d!1650110 e!3182008))

(declare-fun res!2171514 () Bool)

(assert (=> d!1650110 (=> res!2171514 e!3182008)))

(declare-fun lt!2098154 () Bool)

(assert (=> d!1650110 (= res!2171514 (not lt!2098154))))

(assert (=> d!1650110 (= lt!2098154 e!3182009)))

(declare-fun res!2171513 () Bool)

(assert (=> d!1650110 (=> res!2171513 e!3182009)))

(assert (=> d!1650110 (= res!2171513 ((_ is Nil!58822) (_1!35049 lt!2098141)))))

(assert (=> d!1650110 (= (isPrefix!5454 (_1!35049 lt!2098141) lt!2098128) lt!2098154)))

(assert (= (and d!1650110 (not res!2171513)) b!5101976))

(assert (= (and b!5101976 res!2171512) b!5101977))

(assert (= (and b!5101977 res!2171511) b!5101978))

(assert (= (and d!1650110 (not res!2171514)) b!5101979))

(declare-fun m!6159392 () Bool)

(assert (=> b!5101977 m!6159392))

(declare-fun m!6159394 () Bool)

(assert (=> b!5101977 m!6159394))

(declare-fun m!6159396 () Bool)

(assert (=> b!5101978 m!6159396))

(declare-fun m!6159398 () Bool)

(assert (=> b!5101978 m!6159398))

(assert (=> b!5101978 m!6159396))

(assert (=> b!5101978 m!6159398))

(declare-fun m!6159400 () Bool)

(assert (=> b!5101978 m!6159400))

(declare-fun m!6159402 () Bool)

(assert (=> b!5101979 m!6159402))

(assert (=> b!5101979 m!6159376))

(assert (=> b!5101948 d!1650110))

(declare-fun d!1650114 () Bool)

(declare-fun e!3182016 () Bool)

(assert (=> d!1650114 e!3182016))

(declare-fun res!2171523 () Bool)

(assert (=> d!1650114 (=> res!2171523 e!3182016)))

(assert (=> d!1650114 (= res!2171523 (isEmpty!31798 (_1!35049 (findLongestMatchInnerZipper!127 z!4303 Nil!58822 (size!39355 Nil!58822) input!5654 input!5654 (size!39355 input!5654)))))))

(declare-fun lt!2098194 () Unit!149854)

(declare-fun choose!37372 ((InoxSet Context!6874) List!58946) Unit!149854)

(assert (=> d!1650114 (= lt!2098194 (choose!37372 z!4303 input!5654))))

(assert (=> d!1650114 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2053 z!4303 input!5654) lt!2098194)))

(declare-fun b!5101990 () Bool)

(assert (=> b!5101990 (= e!3182016 (matchZipper!725 z!4303 (_1!35049 (findLongestMatchInnerZipper!127 z!4303 Nil!58822 (size!39355 Nil!58822) input!5654 input!5654 (size!39355 input!5654)))))))

(assert (= (and d!1650114 (not res!2171523)) b!5101990))

(assert (=> d!1650114 m!6159334))

(declare-fun m!6159440 () Bool)

(assert (=> d!1650114 m!6159440))

(assert (=> d!1650114 m!6159328))

(assert (=> d!1650114 m!6159328))

(assert (=> d!1650114 m!6159334))

(declare-fun m!6159442 () Bool)

(assert (=> d!1650114 m!6159442))

(declare-fun m!6159444 () Bool)

(assert (=> d!1650114 m!6159444))

(assert (=> b!5101990 m!6159328))

(assert (=> b!5101990 m!6159334))

(assert (=> b!5101990 m!6159328))

(assert (=> b!5101990 m!6159334))

(assert (=> b!5101990 m!6159442))

(declare-fun m!6159446 () Bool)

(assert (=> b!5101990 m!6159446))

(assert (=> b!5101948 d!1650114))

(declare-fun d!1650122 () Bool)

(assert (=> d!1650122 (= (isEmpty!31798 (_1!35049 lt!2098139)) ((_ is Nil!58822) (_1!35049 lt!2098139)))))

(assert (=> b!5101948 d!1650122))

(declare-fun b!5101992 () Bool)

(declare-fun res!2171524 () Bool)

(declare-fun e!3182017 () Bool)

(assert (=> b!5101992 (=> (not res!2171524) (not e!3182017))))

(assert (=> b!5101992 (= res!2171524 (= (head!10835 (_1!35049 lt!2098131)) (head!10835 lt!2098135)))))

(declare-fun b!5101993 () Bool)

(assert (=> b!5101993 (= e!3182017 (isPrefix!5454 (tail!9990 (_1!35049 lt!2098131)) (tail!9990 lt!2098135)))))

(declare-fun b!5101991 () Bool)

(declare-fun e!3182019 () Bool)

(assert (=> b!5101991 (= e!3182019 e!3182017)))

(declare-fun res!2171525 () Bool)

(assert (=> b!5101991 (=> (not res!2171525) (not e!3182017))))

(assert (=> b!5101991 (= res!2171525 (not ((_ is Nil!58822) lt!2098135)))))

(declare-fun b!5101994 () Bool)

(declare-fun e!3182018 () Bool)

(assert (=> b!5101994 (= e!3182018 (>= (size!39355 lt!2098135) (size!39355 (_1!35049 lt!2098131))))))

(declare-fun d!1650124 () Bool)

(assert (=> d!1650124 e!3182018))

(declare-fun res!2171527 () Bool)

(assert (=> d!1650124 (=> res!2171527 e!3182018)))

(declare-fun lt!2098195 () Bool)

(assert (=> d!1650124 (= res!2171527 (not lt!2098195))))

(assert (=> d!1650124 (= lt!2098195 e!3182019)))

(declare-fun res!2171526 () Bool)

(assert (=> d!1650124 (=> res!2171526 e!3182019)))

(assert (=> d!1650124 (= res!2171526 ((_ is Nil!58822) (_1!35049 lt!2098131)))))

(assert (=> d!1650124 (= (isPrefix!5454 (_1!35049 lt!2098131) lt!2098135) lt!2098195)))

(assert (= (and d!1650124 (not res!2171526)) b!5101991))

(assert (= (and b!5101991 res!2171525) b!5101992))

(assert (= (and b!5101992 res!2171524) b!5101993))

(assert (= (and d!1650124 (not res!2171527)) b!5101994))

(declare-fun m!6159448 () Bool)

(assert (=> b!5101992 m!6159448))

(declare-fun m!6159450 () Bool)

(assert (=> b!5101992 m!6159450))

(declare-fun m!6159452 () Bool)

(assert (=> b!5101993 m!6159452))

(declare-fun m!6159454 () Bool)

(assert (=> b!5101993 m!6159454))

(assert (=> b!5101993 m!6159452))

(assert (=> b!5101993 m!6159454))

(declare-fun m!6159456 () Bool)

(assert (=> b!5101993 m!6159456))

(declare-fun m!6159458 () Bool)

(assert (=> b!5101994 m!6159458))

(assert (=> b!5101994 m!6159372))

(assert (=> b!5101948 d!1650124))

(declare-fun bm!355410 () Bool)

(declare-fun call!355415 () List!58946)

(declare-fun call!355417 () Regex!14053)

(declare-fun lt!2098370 () List!58946)

(declare-fun call!355422 () tuple2!63492)

(assert (=> bm!355410 (= call!355422 (findLongestMatchInner!2066 call!355417 lt!2098370 (+ lt!2098144 1) call!355415 input!5654 lt!2098146))))

(declare-fun b!5102171 () Bool)

(declare-fun e!3182129 () tuple2!63492)

(declare-fun e!3182125 () tuple2!63492)

(assert (=> b!5102171 (= e!3182129 e!3182125)))

(declare-fun c!876516 () Bool)

(assert (=> b!5102171 (= c!876516 (= lt!2098144 lt!2098146))))

(declare-fun b!5102172 () Bool)

(declare-fun e!3182127 () Bool)

(declare-fun e!3182128 () Bool)

(assert (=> b!5102172 (= e!3182127 e!3182128)))

(declare-fun res!2171593 () Bool)

(assert (=> b!5102172 (=> res!2171593 e!3182128)))

(declare-fun lt!2098350 () tuple2!63492)

(assert (=> b!5102172 (= res!2171593 (isEmpty!31798 (_1!35049 lt!2098350)))))

(declare-fun b!5102173 () Bool)

(assert (=> b!5102173 (= e!3182128 (>= (size!39355 (_1!35049 lt!2098350)) (size!39355 Nil!58822)))))

(declare-fun b!5102174 () Bool)

(declare-fun e!3182123 () Unit!149854)

(declare-fun Unit!149859 () Unit!149854)

(assert (=> b!5102174 (= e!3182123 Unit!149859)))

(declare-fun bm!355411 () Bool)

(declare-fun call!355416 () Unit!149854)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1303 (List!58946 List!58946 List!58946) Unit!149854)

(assert (=> bm!355411 (= call!355416 (lemmaIsPrefixSameLengthThenSameList!1303 input!5654 Nil!58822 input!5654))))

(declare-fun b!5102175 () Bool)

(assert (=> b!5102175 (= e!3182129 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun b!5102176 () Bool)

(declare-fun e!3182130 () tuple2!63492)

(declare-fun lt!2098358 () tuple2!63492)

(assert (=> b!5102176 (= e!3182130 lt!2098358)))

(declare-fun bm!355412 () Bool)

(declare-fun call!355419 () Unit!149854)

(declare-fun lemmaIsPrefixRefl!3681 (List!58946 List!58946) Unit!149854)

(assert (=> bm!355412 (= call!355419 (lemmaIsPrefixRefl!3681 input!5654 input!5654))))

(declare-fun bm!355413 () Bool)

(declare-fun call!355421 () Bool)

(declare-fun nullable!4719 (Regex!14053) Bool)

(assert (=> bm!355413 (= call!355421 (nullable!4719 r!12920))))

(declare-fun bm!355414 () Bool)

(declare-fun call!355418 () C!28364)

(declare-fun derivativeStep!3999 (Regex!14053 C!28364) Regex!14053)

(assert (=> bm!355414 (= call!355417 (derivativeStep!3999 r!12920 call!355418))))

(declare-fun bm!355415 () Bool)

(declare-fun call!355420 () Bool)

(assert (=> bm!355415 (= call!355420 (isPrefix!5454 input!5654 input!5654))))

(declare-fun b!5102178 () Bool)

(declare-fun e!3182124 () tuple2!63492)

(assert (=> b!5102178 (= e!3182124 (tuple2!63493 Nil!58822 Nil!58822))))

(declare-fun b!5102179 () Bool)

(declare-fun c!876518 () Bool)

(assert (=> b!5102179 (= c!876518 call!355421)))

(declare-fun lt!2098348 () Unit!149854)

(declare-fun lt!2098361 () Unit!149854)

(assert (=> b!5102179 (= lt!2098348 lt!2098361)))

(declare-fun lt!2098373 () C!28364)

(declare-fun lt!2098356 () List!58946)

(assert (=> b!5102179 (= (++!12902 (++!12902 Nil!58822 (Cons!58822 lt!2098373 Nil!58822)) lt!2098356) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1520 (List!58946 C!28364 List!58946 List!58946) Unit!149854)

(assert (=> b!5102179 (= lt!2098361 (lemmaMoveElementToOtherListKeepsConcatEq!1520 Nil!58822 lt!2098373 lt!2098356 input!5654))))

(assert (=> b!5102179 (= lt!2098356 (tail!9990 input!5654))))

(assert (=> b!5102179 (= lt!2098373 (head!10835 input!5654))))

(declare-fun lt!2098355 () Unit!149854)

(declare-fun lt!2098360 () Unit!149854)

(assert (=> b!5102179 (= lt!2098355 lt!2098360)))

(declare-fun getSuffix!3164 (List!58946 List!58946) List!58946)

(assert (=> b!5102179 (isPrefix!5454 (++!12902 Nil!58822 (Cons!58822 (head!10835 (getSuffix!3164 input!5654 Nil!58822)) Nil!58822)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!909 (List!58946 List!58946) Unit!149854)

(assert (=> b!5102179 (= lt!2098360 (lemmaAddHeadSuffixToPrefixStillPrefix!909 Nil!58822 input!5654))))

(declare-fun lt!2098368 () Unit!149854)

(declare-fun lt!2098359 () Unit!149854)

(assert (=> b!5102179 (= lt!2098368 lt!2098359)))

(assert (=> b!5102179 (= lt!2098359 (lemmaAddHeadSuffixToPrefixStillPrefix!909 Nil!58822 input!5654))))

(assert (=> b!5102179 (= lt!2098370 (++!12902 Nil!58822 (Cons!58822 (head!10835 input!5654) Nil!58822)))))

(declare-fun lt!2098366 () Unit!149854)

(assert (=> b!5102179 (= lt!2098366 e!3182123)))

(declare-fun c!876520 () Bool)

(assert (=> b!5102179 (= c!876520 (= (size!39355 Nil!58822) (size!39355 input!5654)))))

(declare-fun lt!2098349 () Unit!149854)

(declare-fun lt!2098352 () Unit!149854)

(assert (=> b!5102179 (= lt!2098349 lt!2098352)))

(assert (=> b!5102179 (<= (size!39355 Nil!58822) (size!39355 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!835 (List!58946 List!58946) Unit!149854)

(assert (=> b!5102179 (= lt!2098352 (lemmaIsPrefixThenSmallerEqSize!835 Nil!58822 input!5654))))

(declare-fun e!3182126 () tuple2!63492)

(assert (=> b!5102179 (= e!3182125 e!3182126)))

(declare-fun b!5102180 () Bool)

(assert (=> b!5102180 (= e!3182126 e!3182130)))

(assert (=> b!5102180 (= lt!2098358 call!355422)))

(declare-fun c!876517 () Bool)

(assert (=> b!5102180 (= c!876517 (isEmpty!31798 (_1!35049 lt!2098358)))))

(declare-fun bm!355416 () Bool)

(assert (=> bm!355416 (= call!355418 (head!10835 input!5654))))

(declare-fun b!5102181 () Bool)

(assert (=> b!5102181 (= e!3182126 call!355422)))

(declare-fun bm!355417 () Bool)

(assert (=> bm!355417 (= call!355415 (tail!9990 input!5654))))

(declare-fun d!1650126 () Bool)

(assert (=> d!1650126 e!3182127))

(declare-fun res!2171592 () Bool)

(assert (=> d!1650126 (=> (not res!2171592) (not e!3182127))))

(assert (=> d!1650126 (= res!2171592 (= (++!12902 (_1!35049 lt!2098350) (_2!35049 lt!2098350)) input!5654))))

(assert (=> d!1650126 (= lt!2098350 e!3182129)))

(declare-fun c!876515 () Bool)

(declare-fun lostCause!1207 (Regex!14053) Bool)

(assert (=> d!1650126 (= c!876515 (lostCause!1207 r!12920))))

(declare-fun lt!2098357 () Unit!149854)

(declare-fun Unit!149860 () Unit!149854)

(assert (=> d!1650126 (= lt!2098357 Unit!149860)))

(assert (=> d!1650126 (= (getSuffix!3164 input!5654 Nil!58822) input!5654)))

(declare-fun lt!2098372 () Unit!149854)

(declare-fun lt!2098374 () Unit!149854)

(assert (=> d!1650126 (= lt!2098372 lt!2098374)))

(declare-fun lt!2098347 () List!58946)

(assert (=> d!1650126 (= input!5654 lt!2098347)))

(declare-fun lemmaSamePrefixThenSameSuffix!2580 (List!58946 List!58946 List!58946 List!58946 List!58946) Unit!149854)

(assert (=> d!1650126 (= lt!2098374 (lemmaSamePrefixThenSameSuffix!2580 Nil!58822 input!5654 Nil!58822 lt!2098347 input!5654))))

(assert (=> d!1650126 (= lt!2098347 (getSuffix!3164 input!5654 Nil!58822))))

(declare-fun lt!2098354 () Unit!149854)

(declare-fun lt!2098367 () Unit!149854)

(assert (=> d!1650126 (= lt!2098354 lt!2098367)))

(assert (=> d!1650126 (isPrefix!5454 Nil!58822 (++!12902 Nil!58822 input!5654))))

(assert (=> d!1650126 (= lt!2098367 (lemmaConcatTwoListThenFirstIsPrefix!3512 Nil!58822 input!5654))))

(assert (=> d!1650126 (validRegex!6180 r!12920)))

(assert (=> d!1650126 (= (findLongestMatchInner!2066 r!12920 Nil!58822 lt!2098144 input!5654 input!5654 lt!2098146) lt!2098350)))

(declare-fun b!5102177 () Bool)

(assert (=> b!5102177 (= e!3182124 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun b!5102182 () Bool)

(declare-fun c!876519 () Bool)

(assert (=> b!5102182 (= c!876519 call!355421)))

(declare-fun lt!2098371 () Unit!149854)

(declare-fun lt!2098353 () Unit!149854)

(assert (=> b!5102182 (= lt!2098371 lt!2098353)))

(assert (=> b!5102182 (= input!5654 Nil!58822)))

(assert (=> b!5102182 (= lt!2098353 call!355416)))

(declare-fun lt!2098365 () Unit!149854)

(declare-fun lt!2098362 () Unit!149854)

(assert (=> b!5102182 (= lt!2098365 lt!2098362)))

(assert (=> b!5102182 call!355420))

(assert (=> b!5102182 (= lt!2098362 call!355419)))

(assert (=> b!5102182 (= e!3182125 e!3182124)))

(declare-fun b!5102183 () Bool)

(assert (=> b!5102183 (= e!3182130 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun b!5102184 () Bool)

(declare-fun Unit!149862 () Unit!149854)

(assert (=> b!5102184 (= e!3182123 Unit!149862)))

(declare-fun lt!2098364 () Unit!149854)

(assert (=> b!5102184 (= lt!2098364 call!355419)))

(assert (=> b!5102184 call!355420))

(declare-fun lt!2098369 () Unit!149854)

(assert (=> b!5102184 (= lt!2098369 lt!2098364)))

(declare-fun lt!2098363 () Unit!149854)

(assert (=> b!5102184 (= lt!2098363 call!355416)))

(assert (=> b!5102184 (= input!5654 Nil!58822)))

(declare-fun lt!2098351 () Unit!149854)

(assert (=> b!5102184 (= lt!2098351 lt!2098363)))

(assert (=> b!5102184 false))

(assert (= (and d!1650126 c!876515) b!5102175))

(assert (= (and d!1650126 (not c!876515)) b!5102171))

(assert (= (and b!5102171 c!876516) b!5102182))

(assert (= (and b!5102171 (not c!876516)) b!5102179))

(assert (= (and b!5102182 c!876519) b!5102178))

(assert (= (and b!5102182 (not c!876519)) b!5102177))

(assert (= (and b!5102179 c!876520) b!5102184))

(assert (= (and b!5102179 (not c!876520)) b!5102174))

(assert (= (and b!5102179 c!876518) b!5102180))

(assert (= (and b!5102179 (not c!876518)) b!5102181))

(assert (= (and b!5102180 c!876517) b!5102183))

(assert (= (and b!5102180 (not c!876517)) b!5102176))

(assert (= (or b!5102180 b!5102181) bm!355416))

(assert (= (or b!5102180 b!5102181) bm!355417))

(assert (= (or b!5102180 b!5102181) bm!355414))

(assert (= (or b!5102180 b!5102181) bm!355410))

(assert (= (or b!5102182 b!5102184) bm!355411))

(assert (= (or b!5102182 b!5102179) bm!355413))

(assert (= (or b!5102182 b!5102184) bm!355415))

(assert (= (or b!5102182 b!5102184) bm!355412))

(assert (= (and d!1650126 res!2171592) b!5102172))

(assert (= (and b!5102172 (not res!2171593)) b!5102173))

(declare-fun m!6159568 () Bool)

(assert (=> bm!355414 m!6159568))

(declare-fun m!6159570 () Bool)

(assert (=> b!5102179 m!6159570))

(declare-fun m!6159572 () Bool)

(assert (=> b!5102179 m!6159572))

(declare-fun m!6159574 () Bool)

(assert (=> b!5102179 m!6159574))

(assert (=> b!5102179 m!6159334))

(assert (=> b!5102179 m!6159328))

(declare-fun m!6159576 () Bool)

(assert (=> b!5102179 m!6159576))

(declare-fun m!6159578 () Bool)

(assert (=> b!5102179 m!6159578))

(assert (=> b!5102179 m!6159576))

(declare-fun m!6159580 () Bool)

(assert (=> b!5102179 m!6159580))

(declare-fun m!6159582 () Bool)

(assert (=> b!5102179 m!6159582))

(declare-fun m!6159584 () Bool)

(assert (=> b!5102179 m!6159584))

(declare-fun m!6159586 () Bool)

(assert (=> b!5102179 m!6159586))

(assert (=> b!5102179 m!6159574))

(declare-fun m!6159588 () Bool)

(assert (=> b!5102179 m!6159588))

(declare-fun m!6159590 () Bool)

(assert (=> b!5102179 m!6159590))

(assert (=> b!5102179 m!6159572))

(declare-fun m!6159592 () Bool)

(assert (=> b!5102179 m!6159592))

(declare-fun m!6159594 () Bool)

(assert (=> bm!355412 m!6159594))

(declare-fun m!6159596 () Bool)

(assert (=> bm!355410 m!6159596))

(assert (=> bm!355416 m!6159570))

(assert (=> d!1650126 m!6159572))

(declare-fun m!6159598 () Bool)

(assert (=> d!1650126 m!6159598))

(declare-fun m!6159600 () Bool)

(assert (=> d!1650126 m!6159600))

(assert (=> d!1650126 m!6159340))

(assert (=> d!1650126 m!6159600))

(declare-fun m!6159602 () Bool)

(assert (=> d!1650126 m!6159602))

(declare-fun m!6159604 () Bool)

(assert (=> d!1650126 m!6159604))

(declare-fun m!6159606 () Bool)

(assert (=> d!1650126 m!6159606))

(declare-fun m!6159608 () Bool)

(assert (=> d!1650126 m!6159608))

(declare-fun m!6159610 () Bool)

(assert (=> b!5102173 m!6159610))

(assert (=> b!5102173 m!6159328))

(declare-fun m!6159612 () Bool)

(assert (=> bm!355413 m!6159612))

(declare-fun m!6159614 () Bool)

(assert (=> b!5102180 m!6159614))

(declare-fun m!6159616 () Bool)

(assert (=> bm!355411 m!6159616))

(assert (=> bm!355417 m!6159586))

(declare-fun m!6159618 () Bool)

(assert (=> bm!355415 m!6159618))

(declare-fun m!6159620 () Bool)

(assert (=> b!5102172 m!6159620))

(assert (=> b!5101948 d!1650126))

(declare-fun d!1650154 () Bool)

(declare-fun lt!2098377 () Int)

(assert (=> d!1650154 (>= lt!2098377 0)))

(declare-fun e!3182133 () Int)

(assert (=> d!1650154 (= lt!2098377 e!3182133)))

(declare-fun c!876523 () Bool)

(assert (=> d!1650154 (= c!876523 ((_ is Nil!58822) input!5654))))

(assert (=> d!1650154 (= (size!39355 input!5654) lt!2098377)))

(declare-fun b!5102189 () Bool)

(assert (=> b!5102189 (= e!3182133 0)))

(declare-fun b!5102190 () Bool)

(assert (=> b!5102190 (= e!3182133 (+ 1 (size!39355 (t!371947 input!5654))))))

(assert (= (and d!1650154 c!876523) b!5102189))

(assert (= (and d!1650154 (not c!876523)) b!5102190))

(declare-fun m!6159622 () Bool)

(assert (=> b!5102190 m!6159622))

(assert (=> b!5101948 d!1650154))

(declare-fun d!1650156 () Bool)

(assert (=> d!1650156 (isPrefix!5454 (_1!35049 lt!2098131) (++!12902 (_1!35049 lt!2098131) (_2!35049 lt!2098131)))))

(declare-fun lt!2098380 () Unit!149854)

(declare-fun choose!37374 (List!58946 List!58946) Unit!149854)

(assert (=> d!1650156 (= lt!2098380 (choose!37374 (_1!35049 lt!2098131) (_2!35049 lt!2098131)))))

(assert (=> d!1650156 (= (lemmaConcatTwoListThenFirstIsPrefix!3512 (_1!35049 lt!2098131) (_2!35049 lt!2098131)) lt!2098380)))

(declare-fun bs!1191546 () Bool)

(assert (= bs!1191546 d!1650156))

(assert (=> bs!1191546 m!6159352))

(assert (=> bs!1191546 m!6159352))

(declare-fun m!6159624 () Bool)

(assert (=> bs!1191546 m!6159624))

(declare-fun m!6159626 () Bool)

(assert (=> bs!1191546 m!6159626))

(assert (=> b!5101948 d!1650156))

(declare-fun d!1650158 () Bool)

(declare-fun c!876526 () Bool)

(assert (=> d!1650158 (= c!876526 (isEmpty!31798 (_1!35049 lt!2098131)))))

(declare-fun e!3182136 () Bool)

(assert (=> d!1650158 (= (matchZipper!725 z!4303 (_1!35049 lt!2098131)) e!3182136)))

(declare-fun b!5102195 () Bool)

(declare-fun nullableZipper!960 ((InoxSet Context!6874)) Bool)

(assert (=> b!5102195 (= e!3182136 (nullableZipper!960 z!4303))))

(declare-fun b!5102196 () Bool)

(declare-fun derivationStepZipper!748 ((InoxSet Context!6874) C!28364) (InoxSet Context!6874))

(assert (=> b!5102196 (= e!3182136 (matchZipper!725 (derivationStepZipper!748 z!4303 (head!10835 (_1!35049 lt!2098131))) (tail!9990 (_1!35049 lt!2098131))))))

(assert (= (and d!1650158 c!876526) b!5102195))

(assert (= (and d!1650158 (not c!876526)) b!5102196))

(assert (=> d!1650158 m!6159358))

(declare-fun m!6159628 () Bool)

(assert (=> b!5102195 m!6159628))

(assert (=> b!5102196 m!6159448))

(assert (=> b!5102196 m!6159448))

(declare-fun m!6159630 () Bool)

(assert (=> b!5102196 m!6159630))

(assert (=> b!5102196 m!6159452))

(assert (=> b!5102196 m!6159630))

(assert (=> b!5102196 m!6159452))

(declare-fun m!6159632 () Bool)

(assert (=> b!5102196 m!6159632))

(assert (=> b!5101948 d!1650158))

(declare-fun d!1650160 () Bool)

(assert (=> d!1650160 (isPrefix!5454 (_1!35049 lt!2098141) (++!12902 (_1!35049 lt!2098141) (_2!35049 lt!2098141)))))

(declare-fun lt!2098381 () Unit!149854)

(assert (=> d!1650160 (= lt!2098381 (choose!37374 (_1!35049 lt!2098141) (_2!35049 lt!2098141)))))

(assert (=> d!1650160 (= (lemmaConcatTwoListThenFirstIsPrefix!3512 (_1!35049 lt!2098141) (_2!35049 lt!2098141)) lt!2098381)))

(declare-fun bs!1191547 () Bool)

(assert (= bs!1191547 d!1650160))

(assert (=> bs!1191547 m!6159342))

(assert (=> bs!1191547 m!6159342))

(declare-fun m!6159634 () Bool)

(assert (=> bs!1191547 m!6159634))

(declare-fun m!6159636 () Bool)

(assert (=> bs!1191547 m!6159636))

(assert (=> b!5101948 d!1650160))

(declare-fun b!5102299 () Bool)

(declare-fun e!3182199 () tuple2!63492)

(assert (=> b!5102299 (= e!3182199 (tuple2!63493 Nil!58822 Nil!58822))))

(declare-fun bm!355459 () Bool)

(declare-fun call!355468 () C!28364)

(assert (=> bm!355459 (= call!355468 (head!10835 input!5654))))

(declare-fun b!5102300 () Bool)

(declare-fun e!3182200 () Bool)

(declare-fun lt!2098537 () tuple2!63492)

(assert (=> b!5102300 (= e!3182200 (>= (size!39355 (_1!35049 lt!2098537)) (size!39355 Nil!58822)))))

(declare-fun call!355464 () tuple2!63492)

(declare-fun call!355471 () (InoxSet Context!6874))

(declare-fun call!355465 () List!58946)

(declare-fun bm!355460 () Bool)

(declare-fun lt!2098556 () List!58946)

(assert (=> bm!355460 (= call!355464 (findLongestMatchInnerZipper!127 call!355471 lt!2098556 (+ lt!2098144 1) call!355465 input!5654 lt!2098146))))

(declare-fun b!5102301 () Bool)

(declare-fun e!3182198 () Unit!149854)

(declare-fun Unit!149865 () Unit!149854)

(assert (=> b!5102301 (= e!3182198 Unit!149865)))

(declare-fun b!5102302 () Bool)

(declare-fun e!3182204 () tuple2!63492)

(declare-fun lt!2098559 () tuple2!63492)

(assert (=> b!5102302 (= e!3182204 lt!2098559)))

(declare-fun b!5102303 () Bool)

(declare-fun e!3182197 () tuple2!63492)

(assert (=> b!5102303 (= e!3182197 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun b!5102304 () Bool)

(assert (=> b!5102304 (= e!3182199 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun d!1650162 () Bool)

(declare-fun e!3182202 () Bool)

(assert (=> d!1650162 e!3182202))

(declare-fun res!2171624 () Bool)

(assert (=> d!1650162 (=> (not res!2171624) (not e!3182202))))

(assert (=> d!1650162 (= res!2171624 (= (++!12902 (_1!35049 lt!2098537) (_2!35049 lt!2098537)) input!5654))))

(assert (=> d!1650162 (= lt!2098537 e!3182197)))

(declare-fun c!876568 () Bool)

(declare-fun lostCauseZipper!975 ((InoxSet Context!6874)) Bool)

(assert (=> d!1650162 (= c!876568 (lostCauseZipper!975 z!4303))))

(declare-fun lt!2098540 () Unit!149854)

(declare-fun Unit!149866 () Unit!149854)

(assert (=> d!1650162 (= lt!2098540 Unit!149866)))

(assert (=> d!1650162 (= (getSuffix!3164 input!5654 Nil!58822) input!5654)))

(declare-fun lt!2098541 () Unit!149854)

(declare-fun lt!2098545 () Unit!149854)

(assert (=> d!1650162 (= lt!2098541 lt!2098545)))

(declare-fun lt!2098542 () List!58946)

(assert (=> d!1650162 (= input!5654 lt!2098542)))

(assert (=> d!1650162 (= lt!2098545 (lemmaSamePrefixThenSameSuffix!2580 Nil!58822 input!5654 Nil!58822 lt!2098542 input!5654))))

(assert (=> d!1650162 (= lt!2098542 (getSuffix!3164 input!5654 Nil!58822))))

(declare-fun lt!2098560 () Unit!149854)

(declare-fun lt!2098554 () Unit!149854)

(assert (=> d!1650162 (= lt!2098560 lt!2098554)))

(assert (=> d!1650162 (isPrefix!5454 Nil!58822 (++!12902 Nil!58822 input!5654))))

(assert (=> d!1650162 (= lt!2098554 (lemmaConcatTwoListThenFirstIsPrefix!3512 Nil!58822 input!5654))))

(assert (=> d!1650162 (= (++!12902 Nil!58822 input!5654) input!5654)))

(assert (=> d!1650162 (= (findLongestMatchInnerZipper!127 z!4303 Nil!58822 lt!2098144 input!5654 input!5654 lt!2098146) lt!2098537)))

(declare-fun b!5102305 () Bool)

(declare-fun e!3182203 () tuple2!63492)

(assert (=> b!5102305 (= e!3182203 e!3182204)))

(assert (=> b!5102305 (= lt!2098559 call!355464)))

(declare-fun c!876565 () Bool)

(assert (=> b!5102305 (= c!876565 (isEmpty!31798 (_1!35049 lt!2098559)))))

(declare-fun b!5102306 () Bool)

(assert (=> b!5102306 (= e!3182204 (tuple2!63493 Nil!58822 input!5654))))

(declare-fun bm!355461 () Bool)

(declare-fun call!355466 () Unit!149854)

(assert (=> bm!355461 (= call!355466 (lemmaIsPrefixRefl!3681 input!5654 input!5654))))

(declare-fun b!5102307 () Bool)

(declare-fun e!3182201 () tuple2!63492)

(assert (=> b!5102307 (= e!3182197 e!3182201)))

(declare-fun c!876567 () Bool)

(assert (=> b!5102307 (= c!876567 (= lt!2098144 lt!2098146))))

(declare-fun bm!355462 () Bool)

(declare-fun call!355470 () Bool)

(assert (=> bm!355462 (= call!355470 (nullableZipper!960 z!4303))))

(declare-fun bm!355463 () Bool)

(assert (=> bm!355463 (= call!355465 (tail!9990 input!5654))))

(declare-fun b!5102308 () Bool)

(declare-fun Unit!149867 () Unit!149854)

(assert (=> b!5102308 (= e!3182198 Unit!149867)))

(declare-fun lt!2098546 () Unit!149854)

(assert (=> b!5102308 (= lt!2098546 call!355466)))

(declare-fun call!355467 () Bool)

(assert (=> b!5102308 call!355467))

(declare-fun lt!2098552 () Unit!149854)

(assert (=> b!5102308 (= lt!2098552 lt!2098546)))

(declare-fun lt!2098547 () Unit!149854)

(declare-fun call!355469 () Unit!149854)

(assert (=> b!5102308 (= lt!2098547 call!355469)))

(assert (=> b!5102308 (= input!5654 Nil!58822)))

(declare-fun lt!2098535 () Unit!149854)

(assert (=> b!5102308 (= lt!2098535 lt!2098547)))

(assert (=> b!5102308 false))

(declare-fun b!5102309 () Bool)

(declare-fun c!876564 () Bool)

(assert (=> b!5102309 (= c!876564 call!355470)))

(declare-fun lt!2098551 () Unit!149854)

(declare-fun lt!2098539 () Unit!149854)

(assert (=> b!5102309 (= lt!2098551 lt!2098539)))

(declare-fun lt!2098536 () C!28364)

(declare-fun lt!2098538 () List!58946)

(assert (=> b!5102309 (= (++!12902 (++!12902 Nil!58822 (Cons!58822 lt!2098536 Nil!58822)) lt!2098538) input!5654)))

(assert (=> b!5102309 (= lt!2098539 (lemmaMoveElementToOtherListKeepsConcatEq!1520 Nil!58822 lt!2098536 lt!2098538 input!5654))))

(assert (=> b!5102309 (= lt!2098538 (tail!9990 input!5654))))

(assert (=> b!5102309 (= lt!2098536 (head!10835 input!5654))))

(declare-fun lt!2098550 () Unit!149854)

(declare-fun lt!2098543 () Unit!149854)

(assert (=> b!5102309 (= lt!2098550 lt!2098543)))

(assert (=> b!5102309 (isPrefix!5454 (++!12902 Nil!58822 (Cons!58822 (head!10835 (getSuffix!3164 input!5654 Nil!58822)) Nil!58822)) input!5654)))

(assert (=> b!5102309 (= lt!2098543 (lemmaAddHeadSuffixToPrefixStillPrefix!909 Nil!58822 input!5654))))

(assert (=> b!5102309 (= lt!2098556 (++!12902 Nil!58822 (Cons!58822 (head!10835 input!5654) Nil!58822)))))

(declare-fun lt!2098544 () Unit!149854)

(assert (=> b!5102309 (= lt!2098544 e!3182198)))

(declare-fun c!876563 () Bool)

(assert (=> b!5102309 (= c!876563 (= (size!39355 Nil!58822) (size!39355 input!5654)))))

(declare-fun lt!2098553 () Unit!149854)

(declare-fun lt!2098558 () Unit!149854)

(assert (=> b!5102309 (= lt!2098553 lt!2098558)))

(assert (=> b!5102309 (<= (size!39355 Nil!58822) (size!39355 input!5654))))

(assert (=> b!5102309 (= lt!2098558 (lemmaIsPrefixThenSmallerEqSize!835 Nil!58822 input!5654))))

(assert (=> b!5102309 (= e!3182201 e!3182203)))

(declare-fun b!5102310 () Bool)

(assert (=> b!5102310 (= e!3182202 e!3182200)))

(declare-fun res!2171625 () Bool)

(assert (=> b!5102310 (=> res!2171625 e!3182200)))

(assert (=> b!5102310 (= res!2171625 (isEmpty!31798 (_1!35049 lt!2098537)))))

(declare-fun bm!355464 () Bool)

(assert (=> bm!355464 (= call!355467 (isPrefix!5454 input!5654 input!5654))))

(declare-fun bm!355465 () Bool)

(assert (=> bm!355465 (= call!355469 (lemmaIsPrefixSameLengthThenSameList!1303 input!5654 Nil!58822 input!5654))))

(declare-fun b!5102311 () Bool)

(assert (=> b!5102311 (= e!3182203 call!355464)))

(declare-fun bm!355466 () Bool)

(assert (=> bm!355466 (= call!355471 (derivationStepZipper!748 z!4303 call!355468))))

(declare-fun b!5102312 () Bool)

(declare-fun c!876566 () Bool)

(assert (=> b!5102312 (= c!876566 call!355470)))

(declare-fun lt!2098549 () Unit!149854)

(declare-fun lt!2098557 () Unit!149854)

(assert (=> b!5102312 (= lt!2098549 lt!2098557)))

(assert (=> b!5102312 (= input!5654 Nil!58822)))

(assert (=> b!5102312 (= lt!2098557 call!355469)))

(declare-fun lt!2098548 () Unit!149854)

(declare-fun lt!2098555 () Unit!149854)

(assert (=> b!5102312 (= lt!2098548 lt!2098555)))

(assert (=> b!5102312 call!355467))

(assert (=> b!5102312 (= lt!2098555 call!355466)))

(assert (=> b!5102312 (= e!3182201 e!3182199)))

(assert (= (and d!1650162 c!876568) b!5102303))

(assert (= (and d!1650162 (not c!876568)) b!5102307))

(assert (= (and b!5102307 c!876567) b!5102312))

(assert (= (and b!5102307 (not c!876567)) b!5102309))

(assert (= (and b!5102312 c!876566) b!5102299))

(assert (= (and b!5102312 (not c!876566)) b!5102304))

(assert (= (and b!5102309 c!876563) b!5102308))

(assert (= (and b!5102309 (not c!876563)) b!5102301))

(assert (= (and b!5102309 c!876564) b!5102305))

(assert (= (and b!5102309 (not c!876564)) b!5102311))

(assert (= (and b!5102305 c!876565) b!5102306))

(assert (= (and b!5102305 (not c!876565)) b!5102302))

(assert (= (or b!5102305 b!5102311) bm!355459))

(assert (= (or b!5102305 b!5102311) bm!355463))

(assert (= (or b!5102305 b!5102311) bm!355466))

(assert (= (or b!5102305 b!5102311) bm!355460))

(assert (= (or b!5102312 b!5102308) bm!355465))

(assert (= (or b!5102312 b!5102309) bm!355462))

(assert (= (or b!5102312 b!5102308) bm!355464))

(assert (= (or b!5102312 b!5102308) bm!355461))

(assert (= (and d!1650162 res!2171624) b!5102310))

(assert (= (and b!5102310 (not res!2171625)) b!5102300))

(declare-fun m!6159720 () Bool)

(assert (=> bm!355460 m!6159720))

(assert (=> bm!355459 m!6159570))

(assert (=> bm!355463 m!6159586))

(assert (=> bm!355464 m!6159618))

(declare-fun m!6159722 () Bool)

(assert (=> b!5102305 m!6159722))

(declare-fun m!6159724 () Bool)

(assert (=> b!5102300 m!6159724))

(assert (=> b!5102300 m!6159328))

(assert (=> d!1650162 m!6159598))

(declare-fun m!6159726 () Bool)

(assert (=> d!1650162 m!6159726))

(declare-fun m!6159728 () Bool)

(assert (=> d!1650162 m!6159728))

(assert (=> d!1650162 m!6159600))

(assert (=> d!1650162 m!6159602))

(assert (=> d!1650162 m!6159572))

(assert (=> d!1650162 m!6159600))

(declare-fun m!6159730 () Bool)

(assert (=> d!1650162 m!6159730))

(assert (=> bm!355461 m!6159594))

(declare-fun m!6159732 () Bool)

(assert (=> b!5102309 m!6159732))

(assert (=> b!5102309 m!6159574))

(assert (=> b!5102309 m!6159588))

(assert (=> b!5102309 m!6159572))

(assert (=> b!5102309 m!6159592))

(assert (=> b!5102309 m!6159570))

(assert (=> b!5102309 m!6159732))

(declare-fun m!6159734 () Bool)

(assert (=> b!5102309 m!6159734))

(assert (=> b!5102309 m!6159574))

(assert (=> b!5102309 m!6159328))

(assert (=> b!5102309 m!6159582))

(assert (=> b!5102309 m!6159572))

(declare-fun m!6159736 () Bool)

(assert (=> b!5102309 m!6159736))

(assert (=> b!5102309 m!6159580))

(assert (=> b!5102309 m!6159586))

(assert (=> b!5102309 m!6159590))

(assert (=> b!5102309 m!6159334))

(declare-fun m!6159738 () Bool)

(assert (=> b!5102310 m!6159738))

(declare-fun m!6159740 () Bool)

(assert (=> bm!355466 m!6159740))

(assert (=> bm!355465 m!6159616))

(assert (=> bm!355462 m!6159628))

(assert (=> b!5101948 d!1650162))

(declare-fun d!1650188 () Bool)

(declare-fun e!3182207 () Bool)

(assert (=> d!1650188 e!3182207))

(declare-fun res!2171628 () Bool)

(assert (=> d!1650188 (=> res!2171628 e!3182207)))

(assert (=> d!1650188 (= res!2171628 (isEmpty!31798 (_1!35049 (findLongestMatchInner!2066 r!12920 Nil!58822 (size!39355 Nil!58822) input!5654 input!5654 (size!39355 input!5654)))))))

(declare-fun lt!2098563 () Unit!149854)

(declare-fun choose!37377 (Regex!14053 List!58946) Unit!149854)

(assert (=> d!1650188 (= lt!2098563 (choose!37377 r!12920 input!5654))))

(assert (=> d!1650188 (validRegex!6180 r!12920)))

(assert (=> d!1650188 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2052 r!12920 input!5654) lt!2098563)))

(declare-fun b!5102315 () Bool)

(assert (=> b!5102315 (= e!3182207 (matchR!6838 r!12920 (_1!35049 (findLongestMatchInner!2066 r!12920 Nil!58822 (size!39355 Nil!58822) input!5654 input!5654 (size!39355 input!5654)))))))

(assert (= (and d!1650188 (not res!2171628)) b!5102315))

(assert (=> d!1650188 m!6159340))

(assert (=> d!1650188 m!6159334))

(declare-fun m!6159742 () Bool)

(assert (=> d!1650188 m!6159742))

(declare-fun m!6159744 () Bool)

(assert (=> d!1650188 m!6159744))

(assert (=> d!1650188 m!6159328))

(assert (=> d!1650188 m!6159328))

(assert (=> d!1650188 m!6159334))

(declare-fun m!6159746 () Bool)

(assert (=> d!1650188 m!6159746))

(assert (=> b!5102315 m!6159328))

(assert (=> b!5102315 m!6159334))

(assert (=> b!5102315 m!6159328))

(assert (=> b!5102315 m!6159334))

(assert (=> b!5102315 m!6159746))

(declare-fun m!6159748 () Bool)

(assert (=> b!5102315 m!6159748))

(assert (=> b!5101948 d!1650188))

(declare-fun d!1650190 () Bool)

(declare-fun lt!2098564 () Int)

(assert (=> d!1650190 (>= lt!2098564 0)))

(declare-fun e!3182208 () Int)

(assert (=> d!1650190 (= lt!2098564 e!3182208)))

(declare-fun c!876569 () Bool)

(assert (=> d!1650190 (= c!876569 ((_ is Nil!58822) Nil!58822))))

(assert (=> d!1650190 (= (size!39355 Nil!58822) lt!2098564)))

(declare-fun b!5102316 () Bool)

(assert (=> b!5102316 (= e!3182208 0)))

(declare-fun b!5102317 () Bool)

(assert (=> b!5102317 (= e!3182208 (+ 1 (size!39355 (t!371947 Nil!58822))))))

(assert (= (and d!1650190 c!876569) b!5102316))

(assert (= (and d!1650190 (not c!876569)) b!5102317))

(declare-fun m!6159750 () Bool)

(assert (=> b!5102317 m!6159750))

(assert (=> b!5101948 d!1650190))

(declare-fun d!1650192 () Bool)

(declare-fun lt!2098567 () Regex!14053)

(assert (=> d!1650192 (validRegex!6180 lt!2098567)))

(declare-fun generalisedUnion!604 (List!58945) Regex!14053)

(declare-fun unfocusZipperList!117 (List!58947) List!58945)

(assert (=> d!1650192 (= lt!2098567 (generalisedUnion!604 (unfocusZipperList!117 lt!2098133)))))

(assert (=> d!1650192 (= (unfocusZipper!395 lt!2098133) lt!2098567)))

(declare-fun bs!1191551 () Bool)

(assert (= bs!1191551 d!1650192))

(declare-fun m!6159752 () Bool)

(assert (=> bs!1191551 m!6159752))

(declare-fun m!6159754 () Bool)

(assert (=> bs!1191551 m!6159754))

(assert (=> bs!1191551 m!6159754))

(declare-fun m!6159756 () Bool)

(assert (=> bs!1191551 m!6159756))

(assert (=> b!5101941 d!1650192))

(declare-fun d!1650194 () Bool)

(declare-fun e!3182211 () Bool)

(assert (=> d!1650194 e!3182211))

(declare-fun res!2171631 () Bool)

(assert (=> d!1650194 (=> (not res!2171631) (not e!3182211))))

(declare-fun lt!2098570 () List!58947)

(declare-fun noDuplicate!1063 (List!58947) Bool)

(assert (=> d!1650194 (= res!2171631 (noDuplicate!1063 lt!2098570))))

(declare-fun choose!37379 ((InoxSet Context!6874)) List!58947)

(assert (=> d!1650194 (= lt!2098570 (choose!37379 z!4303))))

(assert (=> d!1650194 (= (toList!8187 z!4303) lt!2098570)))

(declare-fun b!5102320 () Bool)

(declare-fun content!10465 (List!58947) (InoxSet Context!6874))

(assert (=> b!5102320 (= e!3182211 (= (content!10465 lt!2098570) z!4303))))

(assert (= (and d!1650194 res!2171631) b!5102320))

(declare-fun m!6159758 () Bool)

(assert (=> d!1650194 m!6159758))

(declare-fun m!6159760 () Bool)

(assert (=> d!1650194 m!6159760))

(declare-fun m!6159762 () Bool)

(assert (=> b!5102320 m!6159762))

(assert (=> b!5101941 d!1650194))

(declare-fun b!5102332 () Bool)

(declare-fun e!3182216 () Bool)

(declare-fun lt!2098573 () List!58946)

(assert (=> b!5102332 (= e!3182216 (or (not (= (_2!35049 lt!2098141) Nil!58822)) (= lt!2098573 (_1!35049 lt!2098141))))))

(declare-fun b!5102331 () Bool)

(declare-fun res!2171636 () Bool)

(assert (=> b!5102331 (=> (not res!2171636) (not e!3182216))))

(assert (=> b!5102331 (= res!2171636 (= (size!39355 lt!2098573) (+ (size!39355 (_1!35049 lt!2098141)) (size!39355 (_2!35049 lt!2098141)))))))

(declare-fun b!5102330 () Bool)

(declare-fun e!3182217 () List!58946)

(assert (=> b!5102330 (= e!3182217 (Cons!58822 (h!65270 (_1!35049 lt!2098141)) (++!12902 (t!371947 (_1!35049 lt!2098141)) (_2!35049 lt!2098141))))))

(declare-fun b!5102329 () Bool)

(assert (=> b!5102329 (= e!3182217 (_2!35049 lt!2098141))))

(declare-fun d!1650196 () Bool)

(assert (=> d!1650196 e!3182216))

(declare-fun res!2171637 () Bool)

(assert (=> d!1650196 (=> (not res!2171637) (not e!3182216))))

(declare-fun content!10466 (List!58946) (InoxSet C!28364))

(assert (=> d!1650196 (= res!2171637 (= (content!10466 lt!2098573) ((_ map or) (content!10466 (_1!35049 lt!2098141)) (content!10466 (_2!35049 lt!2098141)))))))

(assert (=> d!1650196 (= lt!2098573 e!3182217)))

(declare-fun c!876572 () Bool)

(assert (=> d!1650196 (= c!876572 ((_ is Nil!58822) (_1!35049 lt!2098141)))))

(assert (=> d!1650196 (= (++!12902 (_1!35049 lt!2098141) (_2!35049 lt!2098141)) lt!2098573)))

(assert (= (and d!1650196 c!876572) b!5102329))

(assert (= (and d!1650196 (not c!876572)) b!5102330))

(assert (= (and d!1650196 res!2171637) b!5102331))

(assert (= (and b!5102331 res!2171636) b!5102332))

(declare-fun m!6159764 () Bool)

(assert (=> b!5102331 m!6159764))

(assert (=> b!5102331 m!6159376))

(declare-fun m!6159766 () Bool)

(assert (=> b!5102331 m!6159766))

(declare-fun m!6159768 () Bool)

(assert (=> b!5102330 m!6159768))

(declare-fun m!6159770 () Bool)

(assert (=> d!1650196 m!6159770))

(declare-fun m!6159772 () Bool)

(assert (=> d!1650196 m!6159772))

(declare-fun m!6159774 () Bool)

(assert (=> d!1650196 m!6159774))

(assert (=> b!5101940 d!1650196))

(declare-fun b!5102334 () Bool)

(declare-fun res!2171638 () Bool)

(declare-fun e!3182218 () Bool)

(assert (=> b!5102334 (=> (not res!2171638) (not e!3182218))))

(assert (=> b!5102334 (= res!2171638 (= (head!10835 (_1!35049 lt!2098131)) (head!10835 input!5654)))))

(declare-fun b!5102335 () Bool)

(assert (=> b!5102335 (= e!3182218 (isPrefix!5454 (tail!9990 (_1!35049 lt!2098131)) (tail!9990 input!5654)))))

(declare-fun b!5102333 () Bool)

(declare-fun e!3182220 () Bool)

(assert (=> b!5102333 (= e!3182220 e!3182218)))

(declare-fun res!2171639 () Bool)

(assert (=> b!5102333 (=> (not res!2171639) (not e!3182218))))

(assert (=> b!5102333 (= res!2171639 (not ((_ is Nil!58822) input!5654)))))

(declare-fun b!5102336 () Bool)

(declare-fun e!3182219 () Bool)

(assert (=> b!5102336 (= e!3182219 (>= (size!39355 input!5654) (size!39355 (_1!35049 lt!2098131))))))

(declare-fun d!1650198 () Bool)

(assert (=> d!1650198 e!3182219))

(declare-fun res!2171641 () Bool)

(assert (=> d!1650198 (=> res!2171641 e!3182219)))

(declare-fun lt!2098574 () Bool)

(assert (=> d!1650198 (= res!2171641 (not lt!2098574))))

(assert (=> d!1650198 (= lt!2098574 e!3182220)))

(declare-fun res!2171640 () Bool)

(assert (=> d!1650198 (=> res!2171640 e!3182220)))

(assert (=> d!1650198 (= res!2171640 ((_ is Nil!58822) (_1!35049 lt!2098131)))))

(assert (=> d!1650198 (= (isPrefix!5454 (_1!35049 lt!2098131) input!5654) lt!2098574)))

(assert (= (and d!1650198 (not res!2171640)) b!5102333))

(assert (= (and b!5102333 res!2171639) b!5102334))

(assert (= (and b!5102334 res!2171638) b!5102335))

(assert (= (and d!1650198 (not res!2171641)) b!5102336))

(assert (=> b!5102334 m!6159448))

(assert (=> b!5102334 m!6159570))

(assert (=> b!5102335 m!6159452))

(assert (=> b!5102335 m!6159586))

(assert (=> b!5102335 m!6159452))

(assert (=> b!5102335 m!6159586))

(declare-fun m!6159776 () Bool)

(assert (=> b!5102335 m!6159776))

(assert (=> b!5102336 m!6159334))

(assert (=> b!5102336 m!6159372))

(assert (=> b!5101951 d!1650198))

(declare-fun b!5102365 () Bool)

(declare-fun res!2171665 () Bool)

(declare-fun e!3182236 () Bool)

(assert (=> b!5102365 (=> (not res!2171665) (not e!3182236))))

(declare-fun call!355474 () Bool)

(assert (=> b!5102365 (= res!2171665 (not call!355474))))

(declare-fun b!5102366 () Bool)

(declare-fun res!2171658 () Bool)

(declare-fun e!3182235 () Bool)

(assert (=> b!5102366 (=> res!2171658 e!3182235)))

(assert (=> b!5102366 (= res!2171658 e!3182236)))

(declare-fun res!2171662 () Bool)

(assert (=> b!5102366 (=> (not res!2171662) (not e!3182236))))

(declare-fun lt!2098577 () Bool)

(assert (=> b!5102366 (= res!2171662 lt!2098577)))

(declare-fun b!5102367 () Bool)

(declare-fun e!3182241 () Bool)

(assert (=> b!5102367 (= e!3182241 (not lt!2098577))))

(declare-fun b!5102368 () Bool)

(declare-fun e!3182238 () Bool)

(assert (=> b!5102368 (= e!3182238 (not (= (head!10835 (_1!35049 lt!2098141)) (c!876455 r!12920))))))

(declare-fun b!5102369 () Bool)

(declare-fun res!2171659 () Bool)

(assert (=> b!5102369 (=> res!2171659 e!3182238)))

(assert (=> b!5102369 (= res!2171659 (not (isEmpty!31798 (tail!9990 (_1!35049 lt!2098141)))))))

(declare-fun b!5102370 () Bool)

(declare-fun res!2171661 () Bool)

(assert (=> b!5102370 (=> res!2171661 e!3182235)))

(assert (=> b!5102370 (= res!2171661 (not ((_ is ElementMatch!14053) r!12920)))))

(assert (=> b!5102370 (= e!3182241 e!3182235)))

(declare-fun b!5102371 () Bool)

(assert (=> b!5102371 (= e!3182236 (= (head!10835 (_1!35049 lt!2098141)) (c!876455 r!12920)))))

(declare-fun b!5102372 () Bool)

(declare-fun res!2171663 () Bool)

(assert (=> b!5102372 (=> (not res!2171663) (not e!3182236))))

(assert (=> b!5102372 (= res!2171663 (isEmpty!31798 (tail!9990 (_1!35049 lt!2098141))))))

(declare-fun b!5102373 () Bool)

(declare-fun e!3182239 () Bool)

(assert (=> b!5102373 (= e!3182235 e!3182239)))

(declare-fun res!2171660 () Bool)

(assert (=> b!5102373 (=> (not res!2171660) (not e!3182239))))

(assert (=> b!5102373 (= res!2171660 (not lt!2098577))))

(declare-fun b!5102374 () Bool)

(declare-fun e!3182237 () Bool)

(assert (=> b!5102374 (= e!3182237 e!3182241)))

(declare-fun c!876580 () Bool)

(assert (=> b!5102374 (= c!876580 ((_ is EmptyLang!14053) r!12920))))

(declare-fun b!5102375 () Bool)

(declare-fun e!3182240 () Bool)

(assert (=> b!5102375 (= e!3182240 (matchR!6838 (derivativeStep!3999 r!12920 (head!10835 (_1!35049 lt!2098141))) (tail!9990 (_1!35049 lt!2098141))))))

(declare-fun b!5102376 () Bool)

(assert (=> b!5102376 (= e!3182237 (= lt!2098577 call!355474))))

(declare-fun d!1650200 () Bool)

(assert (=> d!1650200 e!3182237))

(declare-fun c!876579 () Bool)

(assert (=> d!1650200 (= c!876579 ((_ is EmptyExpr!14053) r!12920))))

(assert (=> d!1650200 (= lt!2098577 e!3182240)))

(declare-fun c!876581 () Bool)

(assert (=> d!1650200 (= c!876581 (isEmpty!31798 (_1!35049 lt!2098141)))))

(assert (=> d!1650200 (validRegex!6180 r!12920)))

(assert (=> d!1650200 (= (matchR!6838 r!12920 (_1!35049 lt!2098141)) lt!2098577)))

(declare-fun b!5102377 () Bool)

(assert (=> b!5102377 (= e!3182240 (nullable!4719 r!12920))))

(declare-fun b!5102378 () Bool)

(assert (=> b!5102378 (= e!3182239 e!3182238)))

(declare-fun res!2171664 () Bool)

(assert (=> b!5102378 (=> res!2171664 e!3182238)))

(assert (=> b!5102378 (= res!2171664 call!355474)))

(declare-fun bm!355469 () Bool)

(assert (=> bm!355469 (= call!355474 (isEmpty!31798 (_1!35049 lt!2098141)))))

(assert (= (and d!1650200 c!876581) b!5102377))

(assert (= (and d!1650200 (not c!876581)) b!5102375))

(assert (= (and d!1650200 c!876579) b!5102376))

(assert (= (and d!1650200 (not c!876579)) b!5102374))

(assert (= (and b!5102374 c!876580) b!5102367))

(assert (= (and b!5102374 (not c!876580)) b!5102370))

(assert (= (and b!5102370 (not res!2171661)) b!5102366))

(assert (= (and b!5102366 res!2171662) b!5102365))

(assert (= (and b!5102365 res!2171665) b!5102372))

(assert (= (and b!5102372 res!2171663) b!5102371))

(assert (= (and b!5102366 (not res!2171658)) b!5102373))

(assert (= (and b!5102373 res!2171660) b!5102378))

(assert (= (and b!5102378 (not res!2171664)) b!5102369))

(assert (= (and b!5102369 (not res!2171659)) b!5102368))

(assert (= (or b!5102376 b!5102365 b!5102378) bm!355469))

(assert (=> bm!355469 m!6159348))

(assert (=> b!5102375 m!6159392))

(assert (=> b!5102375 m!6159392))

(declare-fun m!6159778 () Bool)

(assert (=> b!5102375 m!6159778))

(assert (=> b!5102375 m!6159396))

(assert (=> b!5102375 m!6159778))

(assert (=> b!5102375 m!6159396))

(declare-fun m!6159780 () Bool)

(assert (=> b!5102375 m!6159780))

(assert (=> b!5102371 m!6159392))

(assert (=> b!5102372 m!6159396))

(assert (=> b!5102372 m!6159396))

(declare-fun m!6159782 () Bool)

(assert (=> b!5102372 m!6159782))

(assert (=> d!1650200 m!6159348))

(assert (=> d!1650200 m!6159340))

(assert (=> b!5102368 m!6159392))

(assert (=> b!5102377 m!6159612))

(assert (=> b!5102369 m!6159396))

(assert (=> b!5102369 m!6159396))

(assert (=> b!5102369 m!6159782))

(assert (=> b!5101942 d!1650200))

(declare-fun d!1650202 () Bool)

(declare-fun c!876582 () Bool)

(assert (=> d!1650202 (= c!876582 (isEmpty!31798 (_1!35049 lt!2098139)))))

(declare-fun e!3182242 () Bool)

(assert (=> d!1650202 (= (matchZipper!725 z!4303 (_1!35049 lt!2098139)) e!3182242)))

(declare-fun b!5102379 () Bool)

(assert (=> b!5102379 (= e!3182242 (nullableZipper!960 z!4303))))

(declare-fun b!5102380 () Bool)

(assert (=> b!5102380 (= e!3182242 (matchZipper!725 (derivationStepZipper!748 z!4303 (head!10835 (_1!35049 lt!2098139))) (tail!9990 (_1!35049 lt!2098139))))))

(assert (= (and d!1650202 c!876582) b!5102379))

(assert (= (and d!1650202 (not c!876582)) b!5102380))

(assert (=> d!1650202 m!6159314))

(assert (=> b!5102379 m!6159628))

(declare-fun m!6159784 () Bool)

(assert (=> b!5102380 m!6159784))

(assert (=> b!5102380 m!6159784))

(declare-fun m!6159786 () Bool)

(assert (=> b!5102380 m!6159786))

(declare-fun m!6159788 () Bool)

(assert (=> b!5102380 m!6159788))

(assert (=> b!5102380 m!6159786))

(assert (=> b!5102380 m!6159788))

(declare-fun m!6159790 () Bool)

(assert (=> b!5102380 m!6159790))

(assert (=> b!5101933 d!1650202))

(declare-fun d!1650204 () Bool)

(declare-fun c!876583 () Bool)

(assert (=> d!1650204 (= c!876583 (isEmpty!31798 (_1!35049 lt!2098141)))))

(declare-fun e!3182243 () Bool)

(assert (=> d!1650204 (= (matchZipper!725 z!4303 (_1!35049 lt!2098141)) e!3182243)))

(declare-fun b!5102381 () Bool)

(assert (=> b!5102381 (= e!3182243 (nullableZipper!960 z!4303))))

(declare-fun b!5102382 () Bool)

(assert (=> b!5102382 (= e!3182243 (matchZipper!725 (derivationStepZipper!748 z!4303 (head!10835 (_1!35049 lt!2098141))) (tail!9990 (_1!35049 lt!2098141))))))

(assert (= (and d!1650204 c!876583) b!5102381))

(assert (= (and d!1650204 (not c!876583)) b!5102382))

(assert (=> d!1650204 m!6159348))

(assert (=> b!5102381 m!6159628))

(assert (=> b!5102382 m!6159392))

(assert (=> b!5102382 m!6159392))

(declare-fun m!6159792 () Bool)

(assert (=> b!5102382 m!6159792))

(assert (=> b!5102382 m!6159396))

(assert (=> b!5102382 m!6159792))

(assert (=> b!5102382 m!6159396))

(declare-fun m!6159794 () Bool)

(assert (=> b!5102382 m!6159794))

(assert (=> b!5101936 d!1650204))

(declare-fun d!1650206 () Bool)

(declare-fun lt!2098578 () Int)

(assert (=> d!1650206 (>= lt!2098578 0)))

(declare-fun e!3182244 () Int)

(assert (=> d!1650206 (= lt!2098578 e!3182244)))

(declare-fun c!876584 () Bool)

(assert (=> d!1650206 (= c!876584 ((_ is Nil!58822) (_1!35049 lt!2098131)))))

(assert (=> d!1650206 (= (size!39355 (_1!35049 lt!2098131)) lt!2098578)))

(declare-fun b!5102383 () Bool)

(assert (=> b!5102383 (= e!3182244 0)))

(declare-fun b!5102384 () Bool)

(assert (=> b!5102384 (= e!3182244 (+ 1 (size!39355 (t!371947 (_1!35049 lt!2098131)))))))

(assert (= (and d!1650206 c!876584) b!5102383))

(assert (= (and d!1650206 (not c!876584)) b!5102384))

(declare-fun m!6159796 () Bool)

(assert (=> b!5102384 m!6159796))

(assert (=> b!5101936 d!1650206))

(declare-fun d!1650208 () Bool)

(assert (=> d!1650208 (= (matchR!6838 r!12920 (_1!35049 lt!2098131)) (matchZipper!725 z!4303 (_1!35049 lt!2098131)))))

(declare-fun lt!2098581 () Unit!149854)

(declare-fun choose!37380 ((InoxSet Context!6874) List!58947 Regex!14053 List!58946) Unit!149854)

(assert (=> d!1650208 (= lt!2098581 (choose!37380 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098131)))))

(assert (=> d!1650208 (validRegex!6180 r!12920)))

(assert (=> d!1650208 (= (theoremZipperRegexEquiv!217 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098131)) lt!2098581)))

(declare-fun bs!1191552 () Bool)

(assert (= bs!1191552 d!1650208))

(assert (=> bs!1191552 m!6159370))

(assert (=> bs!1191552 m!6159336))

(declare-fun m!6159798 () Bool)

(assert (=> bs!1191552 m!6159798))

(assert (=> bs!1191552 m!6159340))

(assert (=> b!5101936 d!1650208))

(declare-fun d!1650210 () Bool)

(declare-fun lt!2098582 () Int)

(assert (=> d!1650210 (>= lt!2098582 0)))

(declare-fun e!3182245 () Int)

(assert (=> d!1650210 (= lt!2098582 e!3182245)))

(declare-fun c!876585 () Bool)

(assert (=> d!1650210 (= c!876585 ((_ is Nil!58822) (_1!35049 lt!2098141)))))

(assert (=> d!1650210 (= (size!39355 (_1!35049 lt!2098141)) lt!2098582)))

(declare-fun b!5102385 () Bool)

(assert (=> b!5102385 (= e!3182245 0)))

(declare-fun b!5102386 () Bool)

(assert (=> b!5102386 (= e!3182245 (+ 1 (size!39355 (t!371947 (_1!35049 lt!2098141)))))))

(assert (= (and d!1650210 c!876585) b!5102385))

(assert (= (and d!1650210 (not c!876585)) b!5102386))

(declare-fun m!6159800 () Bool)

(assert (=> b!5102386 m!6159800))

(assert (=> b!5101936 d!1650210))

(declare-fun d!1650212 () Bool)

(assert (=> d!1650212 (= (matchR!6838 r!12920 (_1!35049 lt!2098141)) (matchZipper!725 z!4303 (_1!35049 lt!2098141)))))

(declare-fun lt!2098583 () Unit!149854)

(assert (=> d!1650212 (= lt!2098583 (choose!37380 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098141)))))

(assert (=> d!1650212 (validRegex!6180 r!12920)))

(assert (=> d!1650212 (= (theoremZipperRegexEquiv!217 z!4303 lt!2098133 r!12920 (_1!35049 lt!2098141)) lt!2098583)))

(declare-fun bs!1191553 () Bool)

(assert (= bs!1191553 d!1650212))

(assert (=> bs!1191553 m!6159346))

(assert (=> bs!1191553 m!6159368))

(declare-fun m!6159802 () Bool)

(assert (=> bs!1191553 m!6159802))

(assert (=> bs!1191553 m!6159340))

(assert (=> b!5101936 d!1650212))

(declare-fun b!5102387 () Bool)

(declare-fun res!2171673 () Bool)

(declare-fun e!3182247 () Bool)

(assert (=> b!5102387 (=> (not res!2171673) (not e!3182247))))

(declare-fun call!355475 () Bool)

(assert (=> b!5102387 (= res!2171673 (not call!355475))))

(declare-fun b!5102388 () Bool)

(declare-fun res!2171666 () Bool)

(declare-fun e!3182246 () Bool)

(assert (=> b!5102388 (=> res!2171666 e!3182246)))

(assert (=> b!5102388 (= res!2171666 e!3182247)))

(declare-fun res!2171670 () Bool)

(assert (=> b!5102388 (=> (not res!2171670) (not e!3182247))))

(declare-fun lt!2098584 () Bool)

(assert (=> b!5102388 (= res!2171670 lt!2098584)))

(declare-fun b!5102389 () Bool)

(declare-fun e!3182252 () Bool)

(assert (=> b!5102389 (= e!3182252 (not lt!2098584))))

(declare-fun b!5102390 () Bool)

(declare-fun e!3182249 () Bool)

(assert (=> b!5102390 (= e!3182249 (not (= (head!10835 (_1!35049 lt!2098131)) (c!876455 r!12920))))))

(declare-fun b!5102391 () Bool)

(declare-fun res!2171667 () Bool)

(assert (=> b!5102391 (=> res!2171667 e!3182249)))

(assert (=> b!5102391 (= res!2171667 (not (isEmpty!31798 (tail!9990 (_1!35049 lt!2098131)))))))

(declare-fun b!5102392 () Bool)

(declare-fun res!2171669 () Bool)

(assert (=> b!5102392 (=> res!2171669 e!3182246)))

(assert (=> b!5102392 (= res!2171669 (not ((_ is ElementMatch!14053) r!12920)))))

(assert (=> b!5102392 (= e!3182252 e!3182246)))

(declare-fun b!5102393 () Bool)

(assert (=> b!5102393 (= e!3182247 (= (head!10835 (_1!35049 lt!2098131)) (c!876455 r!12920)))))

(declare-fun b!5102394 () Bool)

(declare-fun res!2171671 () Bool)

(assert (=> b!5102394 (=> (not res!2171671) (not e!3182247))))

(assert (=> b!5102394 (= res!2171671 (isEmpty!31798 (tail!9990 (_1!35049 lt!2098131))))))

(declare-fun b!5102395 () Bool)

(declare-fun e!3182250 () Bool)

(assert (=> b!5102395 (= e!3182246 e!3182250)))

(declare-fun res!2171668 () Bool)

(assert (=> b!5102395 (=> (not res!2171668) (not e!3182250))))

(assert (=> b!5102395 (= res!2171668 (not lt!2098584))))

(declare-fun b!5102396 () Bool)

(declare-fun e!3182248 () Bool)

(assert (=> b!5102396 (= e!3182248 e!3182252)))

(declare-fun c!876587 () Bool)

(assert (=> b!5102396 (= c!876587 ((_ is EmptyLang!14053) r!12920))))

(declare-fun b!5102397 () Bool)

(declare-fun e!3182251 () Bool)

(assert (=> b!5102397 (= e!3182251 (matchR!6838 (derivativeStep!3999 r!12920 (head!10835 (_1!35049 lt!2098131))) (tail!9990 (_1!35049 lt!2098131))))))

(declare-fun b!5102398 () Bool)

(assert (=> b!5102398 (= e!3182248 (= lt!2098584 call!355475))))

(declare-fun d!1650214 () Bool)

(assert (=> d!1650214 e!3182248))

(declare-fun c!876586 () Bool)

(assert (=> d!1650214 (= c!876586 ((_ is EmptyExpr!14053) r!12920))))

(assert (=> d!1650214 (= lt!2098584 e!3182251)))

(declare-fun c!876588 () Bool)

(assert (=> d!1650214 (= c!876588 (isEmpty!31798 (_1!35049 lt!2098131)))))

(assert (=> d!1650214 (validRegex!6180 r!12920)))

(assert (=> d!1650214 (= (matchR!6838 r!12920 (_1!35049 lt!2098131)) lt!2098584)))

(declare-fun b!5102399 () Bool)

(assert (=> b!5102399 (= e!3182251 (nullable!4719 r!12920))))

(declare-fun b!5102400 () Bool)

(assert (=> b!5102400 (= e!3182250 e!3182249)))

(declare-fun res!2171672 () Bool)

(assert (=> b!5102400 (=> res!2171672 e!3182249)))

(assert (=> b!5102400 (= res!2171672 call!355475)))

(declare-fun bm!355470 () Bool)

(assert (=> bm!355470 (= call!355475 (isEmpty!31798 (_1!35049 lt!2098131)))))

(assert (= (and d!1650214 c!876588) b!5102399))

(assert (= (and d!1650214 (not c!876588)) b!5102397))

(assert (= (and d!1650214 c!876586) b!5102398))

(assert (= (and d!1650214 (not c!876586)) b!5102396))

(assert (= (and b!5102396 c!876587) b!5102389))

(assert (= (and b!5102396 (not c!876587)) b!5102392))

(assert (= (and b!5102392 (not res!2171669)) b!5102388))

(assert (= (and b!5102388 res!2171670) b!5102387))

(assert (= (and b!5102387 res!2171673) b!5102394))

(assert (= (and b!5102394 res!2171671) b!5102393))

(assert (= (and b!5102388 (not res!2171666)) b!5102395))

(assert (= (and b!5102395 res!2171668) b!5102400))

(assert (= (and b!5102400 (not res!2171672)) b!5102391))

(assert (= (and b!5102391 (not res!2171667)) b!5102390))

(assert (= (or b!5102398 b!5102387 b!5102400) bm!355470))

(assert (=> bm!355470 m!6159358))

(assert (=> b!5102397 m!6159448))

(assert (=> b!5102397 m!6159448))

(declare-fun m!6159804 () Bool)

(assert (=> b!5102397 m!6159804))

(assert (=> b!5102397 m!6159452))

(assert (=> b!5102397 m!6159804))

(assert (=> b!5102397 m!6159452))

(declare-fun m!6159806 () Bool)

(assert (=> b!5102397 m!6159806))

(assert (=> b!5102393 m!6159448))

(assert (=> b!5102394 m!6159452))

(assert (=> b!5102394 m!6159452))

(declare-fun m!6159808 () Bool)

(assert (=> b!5102394 m!6159808))

(assert (=> d!1650214 m!6159358))

(assert (=> d!1650214 m!6159340))

(assert (=> b!5102390 m!6159448))

(assert (=> b!5102399 m!6159612))

(assert (=> b!5102391 m!6159452))

(assert (=> b!5102391 m!6159452))

(assert (=> b!5102391 m!6159808))

(assert (=> b!5101936 d!1650214))

(declare-fun b!5102402 () Bool)

(declare-fun res!2171674 () Bool)

(declare-fun e!3182253 () Bool)

(assert (=> b!5102402 (=> (not res!2171674) (not e!3182253))))

(assert (=> b!5102402 (= res!2171674 (= (head!10835 (_1!35049 lt!2098141)) (head!10835 input!5654)))))

(declare-fun b!5102403 () Bool)

(assert (=> b!5102403 (= e!3182253 (isPrefix!5454 (tail!9990 (_1!35049 lt!2098141)) (tail!9990 input!5654)))))

(declare-fun b!5102401 () Bool)

(declare-fun e!3182255 () Bool)

(assert (=> b!5102401 (= e!3182255 e!3182253)))

(declare-fun res!2171675 () Bool)

(assert (=> b!5102401 (=> (not res!2171675) (not e!3182253))))

(assert (=> b!5102401 (= res!2171675 (not ((_ is Nil!58822) input!5654)))))

(declare-fun b!5102404 () Bool)

(declare-fun e!3182254 () Bool)

(assert (=> b!5102404 (= e!3182254 (>= (size!39355 input!5654) (size!39355 (_1!35049 lt!2098141))))))

(declare-fun d!1650216 () Bool)

(assert (=> d!1650216 e!3182254))

(declare-fun res!2171677 () Bool)

(assert (=> d!1650216 (=> res!2171677 e!3182254)))

(declare-fun lt!2098585 () Bool)

(assert (=> d!1650216 (= res!2171677 (not lt!2098585))))

(assert (=> d!1650216 (= lt!2098585 e!3182255)))

(declare-fun res!2171676 () Bool)

(assert (=> d!1650216 (=> res!2171676 e!3182255)))

(assert (=> d!1650216 (= res!2171676 ((_ is Nil!58822) (_1!35049 lt!2098141)))))

(assert (=> d!1650216 (= (isPrefix!5454 (_1!35049 lt!2098141) input!5654) lt!2098585)))

(assert (= (and d!1650216 (not res!2171676)) b!5102401))

(assert (= (and b!5102401 res!2171675) b!5102402))

(assert (= (and b!5102402 res!2171674) b!5102403))

(assert (= (and d!1650216 (not res!2171677)) b!5102404))

(assert (=> b!5102402 m!6159392))

(assert (=> b!5102402 m!6159570))

(assert (=> b!5102403 m!6159396))

(assert (=> b!5102403 m!6159586))

(assert (=> b!5102403 m!6159396))

(assert (=> b!5102403 m!6159586))

(declare-fun m!6159810 () Bool)

(assert (=> b!5102403 m!6159810))

(assert (=> b!5102404 m!6159334))

(assert (=> b!5102404 m!6159376))

(assert (=> b!5101945 d!1650216))

(declare-fun b!5102408 () Bool)

(declare-fun e!3182256 () Bool)

(declare-fun lt!2098586 () List!58946)

(assert (=> b!5102408 (= e!3182256 (or (not (= (_2!35049 lt!2098131) Nil!58822)) (= lt!2098586 (_1!35049 lt!2098131))))))

(declare-fun b!5102407 () Bool)

(declare-fun res!2171678 () Bool)

(assert (=> b!5102407 (=> (not res!2171678) (not e!3182256))))

(assert (=> b!5102407 (= res!2171678 (= (size!39355 lt!2098586) (+ (size!39355 (_1!35049 lt!2098131)) (size!39355 (_2!35049 lt!2098131)))))))

(declare-fun b!5102406 () Bool)

(declare-fun e!3182257 () List!58946)

(assert (=> b!5102406 (= e!3182257 (Cons!58822 (h!65270 (_1!35049 lt!2098131)) (++!12902 (t!371947 (_1!35049 lt!2098131)) (_2!35049 lt!2098131))))))

(declare-fun b!5102405 () Bool)

(assert (=> b!5102405 (= e!3182257 (_2!35049 lt!2098131))))

(declare-fun d!1650218 () Bool)

(assert (=> d!1650218 e!3182256))

(declare-fun res!2171679 () Bool)

(assert (=> d!1650218 (=> (not res!2171679) (not e!3182256))))

(assert (=> d!1650218 (= res!2171679 (= (content!10466 lt!2098586) ((_ map or) (content!10466 (_1!35049 lt!2098131)) (content!10466 (_2!35049 lt!2098131)))))))

(assert (=> d!1650218 (= lt!2098586 e!3182257)))

(declare-fun c!876589 () Bool)

(assert (=> d!1650218 (= c!876589 ((_ is Nil!58822) (_1!35049 lt!2098131)))))

(assert (=> d!1650218 (= (++!12902 (_1!35049 lt!2098131) (_2!35049 lt!2098131)) lt!2098586)))

(assert (= (and d!1650218 c!876589) b!5102405))

(assert (= (and d!1650218 (not c!876589)) b!5102406))

(assert (= (and d!1650218 res!2171679) b!5102407))

(assert (= (and b!5102407 res!2171678) b!5102408))

(declare-fun m!6159812 () Bool)

(assert (=> b!5102407 m!6159812))

(assert (=> b!5102407 m!6159372))

(declare-fun m!6159814 () Bool)

(assert (=> b!5102407 m!6159814))

(declare-fun m!6159816 () Bool)

(assert (=> b!5102406 m!6159816))

(declare-fun m!6159818 () Bool)

(assert (=> d!1650218 m!6159818))

(declare-fun m!6159820 () Bool)

(assert (=> d!1650218 m!6159820))

(declare-fun m!6159822 () Bool)

(assert (=> d!1650218 m!6159822))

(assert (=> b!5101944 d!1650218))

(declare-fun d!1650220 () Bool)

(declare-fun lt!2098609 () tuple2!63492)

(assert (=> d!1650220 (= (++!12902 (_1!35049 lt!2098609) (_2!35049 lt!2098609)) input!5654)))

(declare-fun sizeTr!429 (List!58946 Int) Int)

(assert (=> d!1650220 (= lt!2098609 (findLongestMatchInner!2066 r!12920 Nil!58822 0 input!5654 input!5654 (sizeTr!429 input!5654 0)))))

(declare-fun lt!2098610 () Unit!149854)

(declare-fun lt!2098604 () Unit!149854)

(assert (=> d!1650220 (= lt!2098610 lt!2098604)))

(declare-fun lt!2098603 () List!58946)

(declare-fun lt!2098608 () Int)

(assert (=> d!1650220 (= (sizeTr!429 lt!2098603 lt!2098608) (+ (size!39355 lt!2098603) lt!2098608))))

(declare-fun lemmaSizeTrEqualsSize!428 (List!58946 Int) Unit!149854)

(assert (=> d!1650220 (= lt!2098604 (lemmaSizeTrEqualsSize!428 lt!2098603 lt!2098608))))

(assert (=> d!1650220 (= lt!2098608 0)))

(assert (=> d!1650220 (= lt!2098603 Nil!58822)))

(declare-fun lt!2098605 () Unit!149854)

(declare-fun lt!2098607 () Unit!149854)

(assert (=> d!1650220 (= lt!2098605 lt!2098607)))

(declare-fun lt!2098606 () Int)

(assert (=> d!1650220 (= (sizeTr!429 input!5654 lt!2098606) (+ (size!39355 input!5654) lt!2098606))))

(assert (=> d!1650220 (= lt!2098607 (lemmaSizeTrEqualsSize!428 input!5654 lt!2098606))))

(assert (=> d!1650220 (= lt!2098606 0)))

(assert (=> d!1650220 (validRegex!6180 r!12920)))

(assert (=> d!1650220 (= (findLongestMatch!1883 r!12920 input!5654) lt!2098609)))

(declare-fun bs!1191554 () Bool)

(assert (= bs!1191554 d!1650220))

(assert (=> bs!1191554 m!6159334))

(declare-fun m!6159824 () Bool)

(assert (=> bs!1191554 m!6159824))

(declare-fun m!6159826 () Bool)

(assert (=> bs!1191554 m!6159826))

(declare-fun m!6159828 () Bool)

(assert (=> bs!1191554 m!6159828))

(declare-fun m!6159830 () Bool)

(assert (=> bs!1191554 m!6159830))

(declare-fun m!6159832 () Bool)

(assert (=> bs!1191554 m!6159832))

(declare-fun m!6159834 () Bool)

(assert (=> bs!1191554 m!6159834))

(assert (=> bs!1191554 m!6159340))

(declare-fun m!6159836 () Bool)

(assert (=> bs!1191554 m!6159836))

(declare-fun m!6159838 () Bool)

(assert (=> bs!1191554 m!6159838))

(assert (=> bs!1191554 m!6159828))

(assert (=> b!5101944 d!1650220))

(declare-fun d!1650222 () Bool)

(declare-fun lt!2098619 () tuple2!63492)

(assert (=> d!1650222 (= (++!12902 (_1!35049 lt!2098619) (_2!35049 lt!2098619)) input!5654)))

(assert (=> d!1650222 (= lt!2098619 (findLongestMatchInnerZipper!127 z!4303 Nil!58822 0 input!5654 input!5654 (sizeTr!429 input!5654 0)))))

(declare-fun lt!2098620 () Unit!149854)

(declare-fun lt!2098622 () Unit!149854)

(assert (=> d!1650222 (= lt!2098620 lt!2098622)))

(declare-fun lt!2098621 () Int)

(assert (=> d!1650222 (= (sizeTr!429 input!5654 lt!2098621) (+ (size!39355 input!5654) lt!2098621))))

(assert (=> d!1650222 (= lt!2098622 (lemmaSizeTrEqualsSize!428 input!5654 lt!2098621))))

(assert (=> d!1650222 (= lt!2098621 0)))

(assert (=> d!1650222 (= (findLongestMatchZipper!77 z!4303 input!5654) lt!2098619)))

(declare-fun bs!1191555 () Bool)

(assert (= bs!1191555 d!1650222))

(assert (=> bs!1191555 m!6159828))

(declare-fun m!6159840 () Bool)

(assert (=> bs!1191555 m!6159840))

(declare-fun m!6159842 () Bool)

(assert (=> bs!1191555 m!6159842))

(assert (=> bs!1191555 m!6159334))

(assert (=> bs!1191555 m!6159828))

(declare-fun m!6159844 () Bool)

(assert (=> bs!1191555 m!6159844))

(declare-fun m!6159846 () Bool)

(assert (=> bs!1191555 m!6159846))

(assert (=> b!5101944 d!1650222))

(declare-fun d!1650224 () Bool)

(assert (=> d!1650224 (= (isEmpty!31798 (_1!35049 lt!2098141)) ((_ is Nil!58822) (_1!35049 lt!2098141)))))

(assert (=> b!5101946 d!1650224))

(declare-fun b!5102427 () Bool)

(declare-fun e!3182276 () Bool)

(declare-fun e!3182278 () Bool)

(assert (=> b!5102427 (= e!3182276 e!3182278)))

(declare-fun res!2171690 () Bool)

(assert (=> b!5102427 (= res!2171690 (not (nullable!4719 (reg!14382 r!12920))))))

(assert (=> b!5102427 (=> (not res!2171690) (not e!3182278))))

(declare-fun b!5102428 () Bool)

(declare-fun e!3182272 () Bool)

(assert (=> b!5102428 (= e!3182276 e!3182272)))

(declare-fun c!876595 () Bool)

(assert (=> b!5102428 (= c!876595 ((_ is Union!14053) r!12920))))

(declare-fun d!1650226 () Bool)

(declare-fun res!2171691 () Bool)

(declare-fun e!3182274 () Bool)

(assert (=> d!1650226 (=> res!2171691 e!3182274)))

(assert (=> d!1650226 (= res!2171691 ((_ is ElementMatch!14053) r!12920))))

(assert (=> d!1650226 (= (validRegex!6180 r!12920) e!3182274)))

(declare-fun b!5102429 () Bool)

(declare-fun e!3182273 () Bool)

(declare-fun e!3182275 () Bool)

(assert (=> b!5102429 (= e!3182273 e!3182275)))

(declare-fun res!2171693 () Bool)

(assert (=> b!5102429 (=> (not res!2171693) (not e!3182275))))

(declare-fun call!355483 () Bool)

(assert (=> b!5102429 (= res!2171693 call!355483)))

(declare-fun c!876594 () Bool)

(declare-fun call!355484 () Bool)

(declare-fun bm!355477 () Bool)

(assert (=> bm!355477 (= call!355484 (validRegex!6180 (ite c!876594 (reg!14382 r!12920) (ite c!876595 (regOne!28619 r!12920) (regTwo!28618 r!12920)))))))

(declare-fun b!5102430 () Bool)

(declare-fun res!2171694 () Bool)

(assert (=> b!5102430 (=> res!2171694 e!3182273)))

(assert (=> b!5102430 (= res!2171694 (not ((_ is Concat!22898) r!12920)))))

(assert (=> b!5102430 (= e!3182272 e!3182273)))

(declare-fun b!5102431 () Bool)

(declare-fun e!3182277 () Bool)

(assert (=> b!5102431 (= e!3182277 call!355483)))

(declare-fun b!5102432 () Bool)

(assert (=> b!5102432 (= e!3182278 call!355484)))

(declare-fun bm!355478 () Bool)

(assert (=> bm!355478 (= call!355483 (validRegex!6180 (ite c!876595 (regTwo!28619 r!12920) (regOne!28618 r!12920))))))

(declare-fun bm!355479 () Bool)

(declare-fun call!355482 () Bool)

(assert (=> bm!355479 (= call!355482 call!355484)))

(declare-fun b!5102433 () Bool)

(declare-fun res!2171692 () Bool)

(assert (=> b!5102433 (=> (not res!2171692) (not e!3182277))))

(assert (=> b!5102433 (= res!2171692 call!355482)))

(assert (=> b!5102433 (= e!3182272 e!3182277)))

(declare-fun b!5102434 () Bool)

(assert (=> b!5102434 (= e!3182275 call!355482)))

(declare-fun b!5102435 () Bool)

(assert (=> b!5102435 (= e!3182274 e!3182276)))

(assert (=> b!5102435 (= c!876594 ((_ is Star!14053) r!12920))))

(assert (= (and d!1650226 (not res!2171691)) b!5102435))

(assert (= (and b!5102435 c!876594) b!5102427))

(assert (= (and b!5102435 (not c!876594)) b!5102428))

(assert (= (and b!5102427 res!2171690) b!5102432))

(assert (= (and b!5102428 c!876595) b!5102433))

(assert (= (and b!5102428 (not c!876595)) b!5102430))

(assert (= (and b!5102433 res!2171692) b!5102431))

(assert (= (and b!5102430 (not res!2171694)) b!5102429))

(assert (= (and b!5102429 res!2171693) b!5102434))

(assert (= (or b!5102431 b!5102429) bm!355478))

(assert (= (or b!5102433 b!5102434) bm!355479))

(assert (= (or b!5102432 bm!355479) bm!355477))

(declare-fun m!6159848 () Bool)

(assert (=> b!5102427 m!6159848))

(declare-fun m!6159850 () Bool)

(assert (=> bm!355477 m!6159850))

(declare-fun m!6159852 () Bool)

(assert (=> bm!355478 m!6159852))

(assert (=> start!538024 d!1650226))

(declare-fun d!1650228 () Bool)

(declare-fun lambda!249966 () Int)

(declare-fun forall!13490 (List!58945 Int) Bool)

(assert (=> d!1650228 (= (inv!78307 setElem!29248) (forall!13490 (exprs!3937 setElem!29248) lambda!249966))))

(declare-fun bs!1191557 () Bool)

(assert (= bs!1191557 d!1650228))

(declare-fun m!6159868 () Bool)

(assert (=> bs!1191557 m!6159868))

(assert (=> setNonEmpty!29248 d!1650228))

(declare-fun b!5102487 () Bool)

(declare-fun res!2171706 () Bool)

(declare-fun e!3182300 () Bool)

(assert (=> b!5102487 (=> (not res!2171706) (not e!3182300))))

(declare-fun call!355485 () Bool)

(assert (=> b!5102487 (= res!2171706 (not call!355485))))

(declare-fun b!5102488 () Bool)

(declare-fun res!2171699 () Bool)

(declare-fun e!3182299 () Bool)

(assert (=> b!5102488 (=> res!2171699 e!3182299)))

(assert (=> b!5102488 (= res!2171699 e!3182300)))

(declare-fun res!2171703 () Bool)

(assert (=> b!5102488 (=> (not res!2171703) (not e!3182300))))

(declare-fun lt!2098624 () Bool)

(assert (=> b!5102488 (= res!2171703 lt!2098624)))

(declare-fun b!5102489 () Bool)

(declare-fun e!3182305 () Bool)

(assert (=> b!5102489 (= e!3182305 (not lt!2098624))))

(declare-fun b!5102490 () Bool)

(declare-fun e!3182302 () Bool)

(assert (=> b!5102490 (= e!3182302 (not (= (head!10835 (_1!35049 lt!2098132)) (c!876455 r!12920))))))

(declare-fun b!5102491 () Bool)

(declare-fun res!2171700 () Bool)

(assert (=> b!5102491 (=> res!2171700 e!3182302)))

(assert (=> b!5102491 (= res!2171700 (not (isEmpty!31798 (tail!9990 (_1!35049 lt!2098132)))))))

(declare-fun b!5102492 () Bool)

(declare-fun res!2171702 () Bool)

(assert (=> b!5102492 (=> res!2171702 e!3182299)))

(assert (=> b!5102492 (= res!2171702 (not ((_ is ElementMatch!14053) r!12920)))))

(assert (=> b!5102492 (= e!3182305 e!3182299)))

(declare-fun b!5102493 () Bool)

(assert (=> b!5102493 (= e!3182300 (= (head!10835 (_1!35049 lt!2098132)) (c!876455 r!12920)))))

(declare-fun b!5102494 () Bool)

(declare-fun res!2171704 () Bool)

(assert (=> b!5102494 (=> (not res!2171704) (not e!3182300))))

(assert (=> b!5102494 (= res!2171704 (isEmpty!31798 (tail!9990 (_1!35049 lt!2098132))))))

(declare-fun b!5102495 () Bool)

(declare-fun e!3182303 () Bool)

(assert (=> b!5102495 (= e!3182299 e!3182303)))

(declare-fun res!2171701 () Bool)

(assert (=> b!5102495 (=> (not res!2171701) (not e!3182303))))

(assert (=> b!5102495 (= res!2171701 (not lt!2098624))))

(declare-fun b!5102496 () Bool)

(declare-fun e!3182301 () Bool)

(assert (=> b!5102496 (= e!3182301 e!3182305)))

(declare-fun c!876598 () Bool)

(assert (=> b!5102496 (= c!876598 ((_ is EmptyLang!14053) r!12920))))

(declare-fun b!5102497 () Bool)

(declare-fun e!3182304 () Bool)

(assert (=> b!5102497 (= e!3182304 (matchR!6838 (derivativeStep!3999 r!12920 (head!10835 (_1!35049 lt!2098132))) (tail!9990 (_1!35049 lt!2098132))))))

(declare-fun b!5102498 () Bool)

(assert (=> b!5102498 (= e!3182301 (= lt!2098624 call!355485))))

(declare-fun d!1650238 () Bool)

(assert (=> d!1650238 e!3182301))

(declare-fun c!876597 () Bool)

(assert (=> d!1650238 (= c!876597 ((_ is EmptyExpr!14053) r!12920))))

(assert (=> d!1650238 (= lt!2098624 e!3182304)))

(declare-fun c!876599 () Bool)

(assert (=> d!1650238 (= c!876599 (isEmpty!31798 (_1!35049 lt!2098132)))))

(assert (=> d!1650238 (validRegex!6180 r!12920)))

(assert (=> d!1650238 (= (matchR!6838 r!12920 (_1!35049 lt!2098132)) lt!2098624)))

(declare-fun b!5102499 () Bool)

(assert (=> b!5102499 (= e!3182304 (nullable!4719 r!12920))))

(declare-fun b!5102500 () Bool)

(assert (=> b!5102500 (= e!3182303 e!3182302)))

(declare-fun res!2171705 () Bool)

(assert (=> b!5102500 (=> res!2171705 e!3182302)))

(assert (=> b!5102500 (= res!2171705 call!355485)))

(declare-fun bm!355480 () Bool)

(assert (=> bm!355480 (= call!355485 (isEmpty!31798 (_1!35049 lt!2098132)))))

(assert (= (and d!1650238 c!876599) b!5102499))

(assert (= (and d!1650238 (not c!876599)) b!5102497))

(assert (= (and d!1650238 c!876597) b!5102498))

(assert (= (and d!1650238 (not c!876597)) b!5102496))

(assert (= (and b!5102496 c!876598) b!5102489))

(assert (= (and b!5102496 (not c!876598)) b!5102492))

(assert (= (and b!5102492 (not res!2171702)) b!5102488))

(assert (= (and b!5102488 res!2171703) b!5102487))

(assert (= (and b!5102487 res!2171706) b!5102494))

(assert (= (and b!5102494 res!2171704) b!5102493))

(assert (= (and b!5102488 (not res!2171699)) b!5102495))

(assert (= (and b!5102495 res!2171701) b!5102500))

(assert (= (and b!5102500 (not res!2171705)) b!5102491))

(assert (= (and b!5102491 (not res!2171700)) b!5102490))

(assert (= (or b!5102498 b!5102487 b!5102500) bm!355480))

(assert (=> bm!355480 m!6159326))

(declare-fun m!6159870 () Bool)

(assert (=> b!5102497 m!6159870))

(assert (=> b!5102497 m!6159870))

(declare-fun m!6159872 () Bool)

(assert (=> b!5102497 m!6159872))

(declare-fun m!6159874 () Bool)

(assert (=> b!5102497 m!6159874))

(assert (=> b!5102497 m!6159872))

(assert (=> b!5102497 m!6159874))

(declare-fun m!6159876 () Bool)

(assert (=> b!5102497 m!6159876))

(assert (=> b!5102493 m!6159870))

(assert (=> b!5102494 m!6159874))

(assert (=> b!5102494 m!6159874))

(declare-fun m!6159878 () Bool)

(assert (=> b!5102494 m!6159878))

(assert (=> d!1650238 m!6159326))

(assert (=> d!1650238 m!6159340))

(assert (=> b!5102490 m!6159870))

(assert (=> b!5102499 m!6159612))

(assert (=> b!5102491 m!6159874))

(assert (=> b!5102491 m!6159874))

(assert (=> b!5102491 m!6159878))

(assert (=> b!5101947 d!1650238))

(declare-fun e!3182308 () Bool)

(assert (=> b!5101935 (= tp!1423190 e!3182308)))

(declare-fun b!5102514 () Bool)

(declare-fun tp!1423253 () Bool)

(declare-fun tp!1423252 () Bool)

(assert (=> b!5102514 (= e!3182308 (and tp!1423253 tp!1423252))))

(declare-fun b!5102512 () Bool)

(declare-fun tp!1423256 () Bool)

(declare-fun tp!1423254 () Bool)

(assert (=> b!5102512 (= e!3182308 (and tp!1423256 tp!1423254))))

(declare-fun b!5102513 () Bool)

(declare-fun tp!1423255 () Bool)

(assert (=> b!5102513 (= e!3182308 tp!1423255)))

(declare-fun b!5102511 () Bool)

(assert (=> b!5102511 (= e!3182308 tp_is_empty!37371)))

(assert (= (and b!5101935 ((_ is ElementMatch!14053) (regOne!28618 r!12920))) b!5102511))

(assert (= (and b!5101935 ((_ is Concat!22898) (regOne!28618 r!12920))) b!5102512))

(assert (= (and b!5101935 ((_ is Star!14053) (regOne!28618 r!12920))) b!5102513))

(assert (= (and b!5101935 ((_ is Union!14053) (regOne!28618 r!12920))) b!5102514))

(declare-fun e!3182309 () Bool)

(assert (=> b!5101935 (= tp!1423187 e!3182309)))

(declare-fun b!5102518 () Bool)

(declare-fun tp!1423258 () Bool)

(declare-fun tp!1423257 () Bool)

(assert (=> b!5102518 (= e!3182309 (and tp!1423258 tp!1423257))))

(declare-fun b!5102516 () Bool)

(declare-fun tp!1423261 () Bool)

(declare-fun tp!1423259 () Bool)

(assert (=> b!5102516 (= e!3182309 (and tp!1423261 tp!1423259))))

(declare-fun b!5102517 () Bool)

(declare-fun tp!1423260 () Bool)

(assert (=> b!5102517 (= e!3182309 tp!1423260)))

(declare-fun b!5102515 () Bool)

(assert (=> b!5102515 (= e!3182309 tp_is_empty!37371)))

(assert (= (and b!5101935 ((_ is ElementMatch!14053) (regTwo!28618 r!12920))) b!5102515))

(assert (= (and b!5101935 ((_ is Concat!22898) (regTwo!28618 r!12920))) b!5102516))

(assert (= (and b!5101935 ((_ is Star!14053) (regTwo!28618 r!12920))) b!5102517))

(assert (= (and b!5101935 ((_ is Union!14053) (regTwo!28618 r!12920))) b!5102518))

(declare-fun b!5102523 () Bool)

(declare-fun e!3182312 () Bool)

(declare-fun tp!1423264 () Bool)

(assert (=> b!5102523 (= e!3182312 (and tp_is_empty!37371 tp!1423264))))

(assert (=> b!5101934 (= tp!1423185 e!3182312)))

(assert (= (and b!5101934 ((_ is Cons!58822) (t!371947 input!5654))) b!5102523))

(declare-fun b!5102528 () Bool)

(declare-fun e!3182315 () Bool)

(declare-fun tp!1423269 () Bool)

(declare-fun tp!1423270 () Bool)

(assert (=> b!5102528 (= e!3182315 (and tp!1423269 tp!1423270))))

(assert (=> b!5101939 (= tp!1423184 e!3182315)))

(assert (= (and b!5101939 ((_ is Cons!58821) (exprs!3937 setElem!29248))) b!5102528))

(declare-fun e!3182316 () Bool)

(assert (=> b!5101937 (= tp!1423188 e!3182316)))

(declare-fun b!5102532 () Bool)

(declare-fun tp!1423272 () Bool)

(declare-fun tp!1423271 () Bool)

(assert (=> b!5102532 (= e!3182316 (and tp!1423272 tp!1423271))))

(declare-fun b!5102530 () Bool)

(declare-fun tp!1423275 () Bool)

(declare-fun tp!1423273 () Bool)

(assert (=> b!5102530 (= e!3182316 (and tp!1423275 tp!1423273))))

(declare-fun b!5102531 () Bool)

(declare-fun tp!1423274 () Bool)

(assert (=> b!5102531 (= e!3182316 tp!1423274)))

(declare-fun b!5102529 () Bool)

(assert (=> b!5102529 (= e!3182316 tp_is_empty!37371)))

(assert (= (and b!5101937 ((_ is ElementMatch!14053) (regOne!28619 r!12920))) b!5102529))

(assert (= (and b!5101937 ((_ is Concat!22898) (regOne!28619 r!12920))) b!5102530))

(assert (= (and b!5101937 ((_ is Star!14053) (regOne!28619 r!12920))) b!5102531))

(assert (= (and b!5101937 ((_ is Union!14053) (regOne!28619 r!12920))) b!5102532))

(declare-fun e!3182317 () Bool)

(assert (=> b!5101937 (= tp!1423186 e!3182317)))

(declare-fun b!5102536 () Bool)

(declare-fun tp!1423277 () Bool)

(declare-fun tp!1423276 () Bool)

(assert (=> b!5102536 (= e!3182317 (and tp!1423277 tp!1423276))))

(declare-fun b!5102534 () Bool)

(declare-fun tp!1423280 () Bool)

(declare-fun tp!1423278 () Bool)

(assert (=> b!5102534 (= e!3182317 (and tp!1423280 tp!1423278))))

(declare-fun b!5102535 () Bool)

(declare-fun tp!1423279 () Bool)

(assert (=> b!5102535 (= e!3182317 tp!1423279)))

(declare-fun b!5102533 () Bool)

(assert (=> b!5102533 (= e!3182317 tp_is_empty!37371)))

(assert (= (and b!5101937 ((_ is ElementMatch!14053) (regTwo!28619 r!12920))) b!5102533))

(assert (= (and b!5101937 ((_ is Concat!22898) (regTwo!28619 r!12920))) b!5102534))

(assert (= (and b!5101937 ((_ is Star!14053) (regTwo!28619 r!12920))) b!5102535))

(assert (= (and b!5101937 ((_ is Union!14053) (regTwo!28619 r!12920))) b!5102536))

(declare-fun e!3182318 () Bool)

(assert (=> b!5101938 (= tp!1423189 e!3182318)))

(declare-fun b!5102540 () Bool)

(declare-fun tp!1423282 () Bool)

(declare-fun tp!1423281 () Bool)

(assert (=> b!5102540 (= e!3182318 (and tp!1423282 tp!1423281))))

(declare-fun b!5102538 () Bool)

(declare-fun tp!1423285 () Bool)

(declare-fun tp!1423283 () Bool)

(assert (=> b!5102538 (= e!3182318 (and tp!1423285 tp!1423283))))

(declare-fun b!5102539 () Bool)

(declare-fun tp!1423284 () Bool)

(assert (=> b!5102539 (= e!3182318 tp!1423284)))

(declare-fun b!5102537 () Bool)

(assert (=> b!5102537 (= e!3182318 tp_is_empty!37371)))

(assert (= (and b!5101938 ((_ is ElementMatch!14053) (reg!14382 r!12920))) b!5102537))

(assert (= (and b!5101938 ((_ is Concat!22898) (reg!14382 r!12920))) b!5102538))

(assert (= (and b!5101938 ((_ is Star!14053) (reg!14382 r!12920))) b!5102539))

(assert (= (and b!5101938 ((_ is Union!14053) (reg!14382 r!12920))) b!5102540))

(declare-fun condSetEmpty!29254 () Bool)

(assert (=> setNonEmpty!29248 (= condSetEmpty!29254 (= setRest!29248 ((as const (Array Context!6874 Bool)) false)))))

(declare-fun setRes!29254 () Bool)

(assert (=> setNonEmpty!29248 (= tp!1423191 setRes!29254)))

(declare-fun setIsEmpty!29254 () Bool)

(assert (=> setIsEmpty!29254 setRes!29254))

(declare-fun tp!1423291 () Bool)

(declare-fun e!3182321 () Bool)

(declare-fun setNonEmpty!29254 () Bool)

(declare-fun setElem!29254 () Context!6874)

(assert (=> setNonEmpty!29254 (= setRes!29254 (and tp!1423291 (inv!78307 setElem!29254) e!3182321))))

(declare-fun setRest!29254 () (InoxSet Context!6874))

(assert (=> setNonEmpty!29254 (= setRest!29248 ((_ map or) (store ((as const (Array Context!6874 Bool)) false) setElem!29254 true) setRest!29254))))

(declare-fun b!5102545 () Bool)

(declare-fun tp!1423290 () Bool)

(assert (=> b!5102545 (= e!3182321 tp!1423290)))

(assert (= (and setNonEmpty!29248 condSetEmpty!29254) setIsEmpty!29254))

(assert (= (and setNonEmpty!29248 (not condSetEmpty!29254)) setNonEmpty!29254))

(assert (= setNonEmpty!29254 b!5102545))

(declare-fun m!6159880 () Bool)

(assert (=> setNonEmpty!29254 m!6159880))

(check-sat (not bm!355466) (not b!5101979) (not b!5102309) (not b!5102377) (not b!5102535) (not b!5102300) (not bm!355463) (not b!5102336) (not b!5102180) (not d!1650220) (not b!5102335) (not b!5102173) (not b!5102427) (not b!5102540) (not d!1650200) (not b!5102375) (not d!1650160) (not b!5102491) (not b!5102331) (not b!5101993) (not d!1650222) (not b!5102369) (not b!5102493) (not b!5102382) (not b!5102531) (not b!5102386) (not b!5101977) (not b!5102381) (not b!5102406) (not b!5102330) (not b!5102390) (not setNonEmpty!29254) (not d!1650114) (not b!5101978) (not d!1650214) (not d!1650156) (not b!5101992) (not b!5102523) (not b!5102499) (not b!5102393) (not d!1650192) (not b!5102371) (not b!5102403) (not d!1650208) (not b!5102494) (not bm!355470) (not b!5102532) (not b!5102538) (not b!5102315) (not b!5102404) (not d!1650202) (not b!5102320) (not b!5102305) (not bm!355461) (not bm!355462) (not b!5102317) (not bm!355465) (not b!5102514) (not b!5101990) (not b!5102379) (not b!5102516) (not b!5102397) (not b!5102407) (not b!5102528) (not bm!355414) (not d!1650204) (not d!1650238) (not d!1650126) (not d!1650196) (not bm!355469) (not b!5102399) (not b!5102380) (not b!5102534) (not d!1650212) (not b!5102545) (not bm!355460) (not bm!355410) (not bm!355478) (not bm!355459) (not bm!355464) (not b!5102513) (not bm!355411) (not b!5102179) (not bm!355415) (not b!5102195) (not b!5102334) (not bm!355412) (not d!1650228) (not d!1650158) tp_is_empty!37371 (not b!5102536) (not b!5102391) (not b!5102310) (not b!5102384) (not d!1650162) (not b!5102530) (not b!5102196) (not b!5102517) (not bm!355480) (not b!5102368) (not b!5101994) (not bm!355477) (not d!1650194) (not b!5102490) (not b!5102394) (not bm!355416) (not b!5102190) (not bm!355413) (not bm!355417) (not b!5102372) (not b!5102402) (not d!1650188) (not b!5102512) (not d!1650218) (not b!5102172) (not b!5102497) (not b!5102518) (not b!5102539))
(check-sat)
