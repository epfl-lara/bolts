; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211798 () Bool)

(assert start!211798)

(declare-fun b!2184419 () Bool)

(declare-fun e!1396091 () Bool)

(declare-datatypes ((C!12236 0))(
  ( (C!12237 (val!7104 Int)) )
))
(declare-datatypes ((List!25348 0))(
  ( (Nil!25264) (Cons!25264 (h!30665 C!12236) (t!197938 List!25348)) )
))
(declare-datatypes ((IArray!16367 0))(
  ( (IArray!16368 (innerList!8241 List!25348)) )
))
(declare-datatypes ((Conc!8181 0))(
  ( (Node!8181 (left!19394 Conc!8181) (right!19724 Conc!8181) (csize!16592 Int) (cheight!8392 Int)) (Leaf!11971 (xs!11123 IArray!16367) (csize!16593 Int)) (Empty!8181) )
))
(declare-datatypes ((BalanceConc!16124 0))(
  ( (BalanceConc!16125 (c!347156 Conc!8181)) )
))
(declare-fun input!5540 () BalanceConc!16124)

(declare-fun tp!681455 () Bool)

(declare-fun inv!33579 (Conc!8181) Bool)

(assert (=> b!2184419 (= e!1396091 (and (inv!33579 (c!347156 input!5540)) tp!681455))))

(declare-fun b!2184420 () Bool)

(declare-fun e!1396101 () Bool)

(declare-fun tp!681452 () Bool)

(assert (=> b!2184420 (= e!1396101 tp!681452)))

(declare-fun b!2184421 () Bool)

(declare-fun e!1396097 () Bool)

(declare-fun e!1396087 () Bool)

(assert (=> b!2184421 (= e!1396097 e!1396087)))

(declare-fun res!938731 () Bool)

(assert (=> b!2184421 (=> (not res!938731) (not e!1396087))))

(declare-fun lt!815035 () List!25348)

(declare-fun lt!815025 () List!25348)

(assert (=> b!2184421 (= res!938731 (= lt!815035 lt!815025))))

(declare-fun lt!815023 () List!25348)

(declare-fun lt!815021 () List!25348)

(declare-fun ++!6406 (List!25348 List!25348) List!25348)

(assert (=> b!2184421 (= lt!815035 (++!6406 lt!815023 lt!815021))))

(declare-datatypes ((tuple2!25062 0))(
  ( (tuple2!25063 (_1!14901 BalanceConc!16124) (_2!14901 BalanceConc!16124)) )
))
(declare-fun lt!815033 () tuple2!25062)

(declare-fun list!9698 (BalanceConc!16124) List!25348)

(assert (=> b!2184421 (= lt!815021 (list!9698 (_2!14901 lt!815033)))))

(assert (=> b!2184421 (= lt!815023 (list!9698 (_1!14901 lt!815033)))))

(declare-datatypes ((tuple2!25064 0))(
  ( (tuple2!25065 (_1!14902 List!25348) (_2!14902 List!25348)) )
))
(declare-fun lt!815037 () tuple2!25064)

(declare-datatypes ((Regex!6045 0))(
  ( (ElementMatch!6045 (c!347157 C!12236)) (Concat!10347 (regOne!12602 Regex!6045) (regTwo!12602 Regex!6045)) (EmptyExpr!6045) (Star!6045 (reg!6374 Regex!6045)) (EmptyLang!6045) (Union!6045 (regOne!12603 Regex!6045) (regTwo!12603 Regex!6045)) )
))
(declare-fun r!12534 () Regex!6045)

(declare-fun findLongestMatch!599 (Regex!6045 List!25348) tuple2!25064)

(assert (=> b!2184421 (= lt!815037 (findLongestMatch!599 r!12534 lt!815025))))

(declare-fun lt!815032 () Int)

(declare-fun lt!815018 () Int)

(declare-fun size!19738 (BalanceConc!16124) Int)

(assert (=> b!2184421 (= lt!815032 (- lt!815018 (size!19738 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16124)

(assert (=> b!2184421 (= lt!815018 (size!19738 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25349 0))(
  ( (Nil!25265) (Cons!25265 (h!30666 Regex!6045) (t!197939 List!25349)) )
))
(declare-datatypes ((Context!3230 0))(
  ( (Context!3231 (exprs!2115 List!25349)) )
))
(declare-fun z!4055 () (InoxSet Context!3230))

(declare-fun findLongestMatchZipperSequenceV3!94 ((InoxSet Context!3230) BalanceConc!16124 BalanceConc!16124) tuple2!25062)

(assert (=> b!2184421 (= lt!815033 (findLongestMatchZipperSequenceV3!94 z!4055 input!5540 totalInput!977))))

(declare-fun b!2184422 () Bool)

(declare-fun e!1396088 () Bool)

(declare-fun lt!815040 () tuple2!25064)

(declare-fun matchR!2794 (Regex!6045 List!25348) Bool)

(assert (=> b!2184422 (= e!1396088 (matchR!2794 r!12534 (_1!14902 lt!815040)))))

(declare-fun b!2184424 () Bool)

(declare-fun e!1396102 () Bool)

(declare-fun e!1396100 () Bool)

(assert (=> b!2184424 (= e!1396102 e!1396100)))

(declare-fun res!938735 () Bool)

(assert (=> b!2184424 (=> res!938735 e!1396100)))

(declare-fun lt!815022 () Int)

(declare-fun lt!815024 () Int)

(assert (=> b!2184424 (= res!938735 (or (> lt!815022 lt!815024) (<= lt!815024 lt!815022)))))

(assert (=> b!2184424 (= lt!815024 (size!19738 (_1!14901 lt!815033)))))

(declare-fun size!19739 (List!25348) Int)

(assert (=> b!2184424 (= lt!815022 (size!19739 (_1!14902 lt!815037)))))

(declare-fun lt!815020 () Bool)

(assert (=> b!2184424 (= (matchR!2794 r!12534 lt!815023) lt!815020)))

(declare-datatypes ((Unit!38381 0))(
  ( (Unit!38382) )
))
(declare-fun lt!815027 () Unit!38381)

(declare-datatypes ((List!25350 0))(
  ( (Nil!25266) (Cons!25266 (h!30667 Context!3230) (t!197940 List!25350)) )
))
(declare-fun lt!815017 () List!25350)

(declare-fun theoremZipperRegexEquiv!71 ((InoxSet Context!3230) List!25350 Regex!6045 List!25348) Unit!38381)

(assert (=> b!2184424 (= lt!815027 (theoremZipperRegexEquiv!71 z!4055 lt!815017 r!12534 lt!815023))))

(declare-fun lt!815016 () Bool)

(declare-fun matchZipper!161 ((InoxSet Context!3230) List!25348) Bool)

(assert (=> b!2184424 (= lt!815016 (matchZipper!161 z!4055 (_1!14902 lt!815037)))))

(declare-fun lt!815039 () Unit!38381)

(assert (=> b!2184424 (= lt!815039 (theoremZipperRegexEquiv!71 z!4055 lt!815017 r!12534 (_1!14902 lt!815037)))))

(declare-fun b!2184425 () Bool)

(declare-fun e!1396095 () Bool)

(declare-fun e!1396089 () Bool)

(assert (=> b!2184425 (= e!1396095 e!1396089)))

(declare-fun res!938727 () Bool)

(assert (=> b!2184425 (=> (not res!938727) (not e!1396089))))

(declare-fun unfocusZipper!152 (List!25350) Regex!6045)

(assert (=> b!2184425 (= res!938727 (= (unfocusZipper!152 lt!815017) r!12534))))

(declare-fun toList!1228 ((InoxSet Context!3230)) List!25350)

(assert (=> b!2184425 (= lt!815017 (toList!1228 z!4055))))

(declare-fun b!2184426 () Bool)

(declare-fun res!938733 () Bool)

(assert (=> b!2184426 (=> res!938733 e!1396100)))

(declare-fun isPrefix!2161 (List!25348 List!25348) Bool)

(assert (=> b!2184426 (= res!938733 (not (isPrefix!2161 (_1!14902 lt!815037) lt!815025)))))

(declare-fun b!2184427 () Bool)

(declare-fun e!1396098 () Int)

(assert (=> b!2184427 (= e!1396098 (- lt!815032 1))))

(declare-fun b!2184428 () Bool)

(declare-fun e!1396092 () Bool)

(declare-fun isEmpty!14517 (List!25348) Bool)

(assert (=> b!2184428 (= e!1396092 (not (isEmpty!14517 (_1!14902 lt!815037))))))

(declare-fun b!2184429 () Bool)

(declare-fun tp!681454 () Bool)

(declare-fun tp!681456 () Bool)

(assert (=> b!2184429 (= e!1396101 (and tp!681454 tp!681456))))

(declare-fun b!2184430 () Bool)

(declare-fun e!1396103 () Bool)

(declare-fun tp!681451 () Bool)

(assert (=> b!2184430 (= e!1396103 tp!681451)))

(declare-fun b!2184431 () Bool)

(declare-fun tp!681458 () Bool)

(declare-fun tp!681450 () Bool)

(assert (=> b!2184431 (= e!1396101 (and tp!681458 tp!681450))))

(declare-fun b!2184432 () Bool)

(declare-fun e!1396093 () Bool)

(assert (=> b!2184432 (= e!1396087 e!1396093)))

(declare-fun res!938736 () Bool)

(assert (=> b!2184432 (=> (not res!938736) (not e!1396093))))

(declare-fun lt!815026 () List!25348)

(assert (=> b!2184432 (= res!938736 (= lt!815026 lt!815025))))

(assert (=> b!2184432 (= lt!815026 (++!6406 (_1!14902 lt!815037) (_2!14902 lt!815037)))))

(declare-fun setIsEmpty!18334 () Bool)

(declare-fun setRes!18334 () Bool)

(assert (=> setIsEmpty!18334 setRes!18334))

(declare-fun b!2184423 () Bool)

(assert (=> b!2184423 (= e!1396100 (>= (size!19739 lt!815023) lt!815022))))

(declare-fun res!938738 () Bool)

(assert (=> start!211798 (=> (not res!938738) (not e!1396095))))

(declare-fun validRegex!2321 (Regex!6045) Bool)

(assert (=> start!211798 (= res!938738 (validRegex!2321 r!12534))))

(assert (=> start!211798 e!1396095))

(assert (=> start!211798 e!1396101))

(declare-fun e!1396096 () Bool)

(declare-fun inv!33580 (BalanceConc!16124) Bool)

(assert (=> start!211798 (and (inv!33580 totalInput!977) e!1396096)))

(assert (=> start!211798 (and (inv!33580 input!5540) e!1396091)))

(declare-fun condSetEmpty!18334 () Bool)

(assert (=> start!211798 (= condSetEmpty!18334 (= z!4055 ((as const (Array Context!3230 Bool)) false)))))

(assert (=> start!211798 setRes!18334))

(declare-fun b!2184433 () Bool)

(declare-fun e!1396090 () Bool)

(assert (=> b!2184433 (= e!1396093 (not e!1396090))))

(declare-fun res!938739 () Bool)

(assert (=> b!2184433 (=> res!938739 e!1396090)))

(declare-fun e!1396094 () Bool)

(assert (=> b!2184433 (= res!938739 e!1396094)))

(declare-fun res!938730 () Bool)

(assert (=> b!2184433 (=> (not res!938730) (not e!1396094))))

(assert (=> b!2184433 (= res!938730 (not lt!815020))))

(assert (=> b!2184433 (= lt!815020 (matchZipper!161 z!4055 lt!815023))))

(assert (=> b!2184433 e!1396088))

(declare-fun res!938728 () Bool)

(assert (=> b!2184433 (=> res!938728 e!1396088)))

(assert (=> b!2184433 (= res!938728 (isEmpty!14517 (_1!14902 lt!815040)))))

(declare-fun findLongestMatchInner!670 (Regex!6045 List!25348 Int List!25348 List!25348 Int) tuple2!25064)

(assert (=> b!2184433 (= lt!815040 (findLongestMatchInner!670 r!12534 Nil!25264 (size!19739 Nil!25264) lt!815025 lt!815025 (size!19739 lt!815025)))))

(declare-fun lt!815038 () Unit!38381)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!643 (Regex!6045 List!25348) Unit!38381)

(assert (=> b!2184433 (= lt!815038 (longestMatchIsAcceptedByMatchOrIsEmpty!643 r!12534 lt!815025))))

(declare-fun e!1396099 () Bool)

(assert (=> b!2184433 e!1396099))

(declare-fun res!938726 () Bool)

(assert (=> b!2184433 (=> res!938726 e!1396099)))

(declare-fun lt!815030 () Int)

(assert (=> b!2184433 (= res!938726 (<= lt!815030 0))))

(declare-fun lt!815034 () Int)

(declare-fun furthestNullablePosition!227 ((InoxSet Context!3230) Int BalanceConc!16124 Int Int) Int)

(assert (=> b!2184433 (= lt!815030 (+ 1 (- (furthestNullablePosition!227 z!4055 lt!815032 totalInput!977 lt!815018 lt!815034) lt!815032)))))

(declare-fun lt!815036 () Unit!38381)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!68 ((InoxSet Context!3230) Int BalanceConc!16124 Int) Unit!38381)

(assert (=> b!2184433 (= lt!815036 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!68 z!4055 lt!815032 totalInput!977 lt!815034))))

(assert (=> b!2184433 (= lt!815034 e!1396098)))

(declare-fun c!347155 () Bool)

(declare-fun nullableZipper!325 ((InoxSet Context!3230)) Bool)

(assert (=> b!2184433 (= c!347155 (nullableZipper!325 z!4055))))

(declare-fun lt!815028 () List!25348)

(declare-fun take!253 (List!25348 Int) List!25348)

(assert (=> b!2184433 (isPrefix!2161 (take!253 lt!815028 lt!815032) lt!815028)))

(declare-fun lt!815031 () Unit!38381)

(declare-fun lemmaTakeIsPrefix!76 (List!25348 Int) Unit!38381)

(assert (=> b!2184433 (= lt!815031 (lemmaTakeIsPrefix!76 lt!815028 lt!815032))))

(assert (=> b!2184433 (isPrefix!2161 (_1!14902 lt!815037) lt!815026)))

(declare-fun lt!815019 () Unit!38381)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1444 (List!25348 List!25348) Unit!38381)

(assert (=> b!2184433 (= lt!815019 (lemmaConcatTwoListThenFirstIsPrefix!1444 (_1!14902 lt!815037) (_2!14902 lt!815037)))))

(assert (=> b!2184433 (isPrefix!2161 lt!815023 lt!815035)))

(declare-fun lt!815029 () Unit!38381)

(assert (=> b!2184433 (= lt!815029 (lemmaConcatTwoListThenFirstIsPrefix!1444 lt!815023 lt!815021))))

(declare-fun b!2184434 () Bool)

(declare-fun tp_is_empty!9697 () Bool)

(assert (=> b!2184434 (= e!1396101 tp_is_empty!9697)))

(declare-fun b!2184435 () Bool)

(assert (=> b!2184435 (= e!1396098 (- 1))))

(declare-fun b!2184436 () Bool)

(declare-fun tp!681453 () Bool)

(assert (=> b!2184436 (= e!1396096 (and (inv!33579 (c!347156 totalInput!977)) tp!681453))))

(declare-fun b!2184437 () Bool)

(declare-fun isEmpty!14518 (BalanceConc!16124) Bool)

(assert (=> b!2184437 (= e!1396094 (not (isEmpty!14518 (_1!14901 lt!815033))))))

(declare-fun tp!681457 () Bool)

(declare-fun setElem!18334 () Context!3230)

(declare-fun setNonEmpty!18334 () Bool)

(declare-fun inv!33581 (Context!3230) Bool)

(assert (=> setNonEmpty!18334 (= setRes!18334 (and tp!681457 (inv!33581 setElem!18334) e!1396103))))

(declare-fun setRest!18334 () (InoxSet Context!3230))

(assert (=> setNonEmpty!18334 (= z!4055 ((_ map or) (store ((as const (Array Context!3230 Bool)) false) setElem!18334 true) setRest!18334))))

(declare-fun b!2184438 () Bool)

(declare-fun res!938732 () Bool)

(assert (=> b!2184438 (=> res!938732 e!1396100)))

(assert (=> b!2184438 (= res!938732 (not (isPrefix!2161 lt!815023 lt!815025)))))

(declare-fun b!2184439 () Bool)

(declare-fun drop!1263 (List!25348 Int) List!25348)

(assert (=> b!2184439 (= e!1396099 (matchZipper!161 z!4055 (take!253 (drop!1263 lt!815028 lt!815032) lt!815030)))))

(declare-fun b!2184440 () Bool)

(assert (=> b!2184440 (= e!1396090 e!1396102)))

(declare-fun res!938734 () Bool)

(assert (=> b!2184440 (=> res!938734 e!1396102)))

(assert (=> b!2184440 (= res!938734 e!1396092)))

(declare-fun res!938737 () Bool)

(assert (=> b!2184440 (=> (not res!938737) (not e!1396092))))

(assert (=> b!2184440 (= res!938737 (not lt!815016))))

(assert (=> b!2184440 (= lt!815016 (matchR!2794 r!12534 (_1!14902 lt!815037)))))

(declare-fun b!2184441 () Bool)

(assert (=> b!2184441 (= e!1396089 e!1396097)))

(declare-fun res!938729 () Bool)

(assert (=> b!2184441 (=> (not res!938729) (not e!1396097))))

(declare-fun isSuffix!712 (List!25348 List!25348) Bool)

(assert (=> b!2184441 (= res!938729 (isSuffix!712 lt!815025 lt!815028))))

(assert (=> b!2184441 (= lt!815028 (list!9698 totalInput!977))))

(assert (=> b!2184441 (= lt!815025 (list!9698 input!5540))))

(assert (= (and start!211798 res!938738) b!2184425))

(assert (= (and b!2184425 res!938727) b!2184441))

(assert (= (and b!2184441 res!938729) b!2184421))

(assert (= (and b!2184421 res!938731) b!2184432))

(assert (= (and b!2184432 res!938736) b!2184433))

(assert (= (and b!2184433 c!347155) b!2184427))

(assert (= (and b!2184433 (not c!347155)) b!2184435))

(assert (= (and b!2184433 (not res!938726)) b!2184439))

(assert (= (and b!2184433 (not res!938728)) b!2184422))

(assert (= (and b!2184433 res!938730) b!2184437))

(assert (= (and b!2184433 (not res!938739)) b!2184440))

(assert (= (and b!2184440 res!938737) b!2184428))

(assert (= (and b!2184440 (not res!938734)) b!2184424))

(assert (= (and b!2184424 (not res!938735)) b!2184426))

(assert (= (and b!2184426 (not res!938733)) b!2184438))

(assert (= (and b!2184438 (not res!938732)) b!2184423))

(get-info :version)

(assert (= (and start!211798 ((_ is ElementMatch!6045) r!12534)) b!2184434))

(assert (= (and start!211798 ((_ is Concat!10347) r!12534)) b!2184431))

(assert (= (and start!211798 ((_ is Star!6045) r!12534)) b!2184420))

(assert (= (and start!211798 ((_ is Union!6045) r!12534)) b!2184429))

(assert (= start!211798 b!2184436))

(assert (= start!211798 b!2184419))

(assert (= (and start!211798 condSetEmpty!18334) setIsEmpty!18334))

(assert (= (and start!211798 (not condSetEmpty!18334)) setNonEmpty!18334))

(assert (= setNonEmpty!18334 b!2184430))

(declare-fun m!2626973 () Bool)

(assert (=> b!2184437 m!2626973))

(declare-fun m!2626975 () Bool)

(assert (=> b!2184433 m!2626975))

(declare-fun m!2626977 () Bool)

(assert (=> b!2184433 m!2626977))

(declare-fun m!2626979 () Bool)

(assert (=> b!2184433 m!2626979))

(declare-fun m!2626981 () Bool)

(assert (=> b!2184433 m!2626981))

(declare-fun m!2626983 () Bool)

(assert (=> b!2184433 m!2626983))

(declare-fun m!2626985 () Bool)

(assert (=> b!2184433 m!2626985))

(declare-fun m!2626987 () Bool)

(assert (=> b!2184433 m!2626987))

(declare-fun m!2626989 () Bool)

(assert (=> b!2184433 m!2626989))

(assert (=> b!2184433 m!2626987))

(declare-fun m!2626991 () Bool)

(assert (=> b!2184433 m!2626991))

(declare-fun m!2626993 () Bool)

(assert (=> b!2184433 m!2626993))

(declare-fun m!2626995 () Bool)

(assert (=> b!2184433 m!2626995))

(assert (=> b!2184433 m!2626991))

(assert (=> b!2184433 m!2626977))

(declare-fun m!2626997 () Bool)

(assert (=> b!2184433 m!2626997))

(declare-fun m!2626999 () Bool)

(assert (=> b!2184433 m!2626999))

(declare-fun m!2627001 () Bool)

(assert (=> b!2184433 m!2627001))

(declare-fun m!2627003 () Bool)

(assert (=> b!2184433 m!2627003))

(declare-fun m!2627005 () Bool)

(assert (=> b!2184433 m!2627005))

(declare-fun m!2627007 () Bool)

(assert (=> b!2184424 m!2627007))

(declare-fun m!2627009 () Bool)

(assert (=> b!2184424 m!2627009))

(declare-fun m!2627011 () Bool)

(assert (=> b!2184424 m!2627011))

(declare-fun m!2627013 () Bool)

(assert (=> b!2184424 m!2627013))

(declare-fun m!2627015 () Bool)

(assert (=> b!2184424 m!2627015))

(declare-fun m!2627017 () Bool)

(assert (=> b!2184424 m!2627017))

(declare-fun m!2627019 () Bool)

(assert (=> b!2184425 m!2627019))

(declare-fun m!2627021 () Bool)

(assert (=> b!2184425 m!2627021))

(declare-fun m!2627023 () Bool)

(assert (=> b!2184441 m!2627023))

(declare-fun m!2627025 () Bool)

(assert (=> b!2184441 m!2627025))

(declare-fun m!2627027 () Bool)

(assert (=> b!2184441 m!2627027))

(declare-fun m!2627029 () Bool)

(assert (=> setNonEmpty!18334 m!2627029))

(declare-fun m!2627031 () Bool)

(assert (=> b!2184419 m!2627031))

(declare-fun m!2627033 () Bool)

(assert (=> b!2184438 m!2627033))

(declare-fun m!2627035 () Bool)

(assert (=> b!2184421 m!2627035))

(declare-fun m!2627037 () Bool)

(assert (=> b!2184421 m!2627037))

(declare-fun m!2627039 () Bool)

(assert (=> b!2184421 m!2627039))

(declare-fun m!2627041 () Bool)

(assert (=> b!2184421 m!2627041))

(declare-fun m!2627043 () Bool)

(assert (=> b!2184421 m!2627043))

(declare-fun m!2627045 () Bool)

(assert (=> b!2184421 m!2627045))

(declare-fun m!2627047 () Bool)

(assert (=> b!2184421 m!2627047))

(declare-fun m!2627049 () Bool)

(assert (=> b!2184422 m!2627049))

(declare-fun m!2627051 () Bool)

(assert (=> b!2184432 m!2627051))

(declare-fun m!2627053 () Bool)

(assert (=> b!2184440 m!2627053))

(declare-fun m!2627055 () Bool)

(assert (=> b!2184428 m!2627055))

(declare-fun m!2627057 () Bool)

(assert (=> b!2184426 m!2627057))

(declare-fun m!2627059 () Bool)

(assert (=> b!2184436 m!2627059))

(declare-fun m!2627061 () Bool)

(assert (=> b!2184423 m!2627061))

(declare-fun m!2627063 () Bool)

(assert (=> start!211798 m!2627063))

(declare-fun m!2627065 () Bool)

(assert (=> start!211798 m!2627065))

(declare-fun m!2627067 () Bool)

(assert (=> start!211798 m!2627067))

(declare-fun m!2627069 () Bool)

(assert (=> b!2184439 m!2627069))

(assert (=> b!2184439 m!2627069))

(declare-fun m!2627071 () Bool)

(assert (=> b!2184439 m!2627071))

(assert (=> b!2184439 m!2627071))

(declare-fun m!2627073 () Bool)

(assert (=> b!2184439 m!2627073))

(check-sat (not b!2184432) (not b!2184422) (not b!2184426) (not b!2184425) (not b!2184420) (not b!2184421) (not b!2184423) (not b!2184430) (not b!2184439) (not b!2184436) (not b!2184437) (not b!2184431) (not b!2184419) (not b!2184438) (not b!2184424) (not b!2184433) (not b!2184441) tp_is_empty!9697 (not b!2184429) (not b!2184440) (not b!2184428) (not setNonEmpty!18334) (not start!211798))
(check-sat)
(get-model)

(declare-fun b!2184452 () Bool)

(declare-fun res!938744 () Bool)

(declare-fun e!1396109 () Bool)

(assert (=> b!2184452 (=> (not res!938744) (not e!1396109))))

(declare-fun lt!815043 () List!25348)

(assert (=> b!2184452 (= res!938744 (= (size!19739 lt!815043) (+ (size!19739 (_1!14902 lt!815037)) (size!19739 (_2!14902 lt!815037)))))))

(declare-fun b!2184453 () Bool)

(assert (=> b!2184453 (= e!1396109 (or (not (= (_2!14902 lt!815037) Nil!25264)) (= lt!815043 (_1!14902 lt!815037))))))

(declare-fun b!2184450 () Bool)

(declare-fun e!1396108 () List!25348)

(assert (=> b!2184450 (= e!1396108 (_2!14902 lt!815037))))

(declare-fun d!654676 () Bool)

(assert (=> d!654676 e!1396109))

(declare-fun res!938745 () Bool)

(assert (=> d!654676 (=> (not res!938745) (not e!1396109))))

(declare-fun content!3444 (List!25348) (InoxSet C!12236))

(assert (=> d!654676 (= res!938745 (= (content!3444 lt!815043) ((_ map or) (content!3444 (_1!14902 lt!815037)) (content!3444 (_2!14902 lt!815037)))))))

(assert (=> d!654676 (= lt!815043 e!1396108)))

(declare-fun c!347160 () Bool)

(assert (=> d!654676 (= c!347160 ((_ is Nil!25264) (_1!14902 lt!815037)))))

(assert (=> d!654676 (= (++!6406 (_1!14902 lt!815037) (_2!14902 lt!815037)) lt!815043)))

(declare-fun b!2184451 () Bool)

(assert (=> b!2184451 (= e!1396108 (Cons!25264 (h!30665 (_1!14902 lt!815037)) (++!6406 (t!197938 (_1!14902 lt!815037)) (_2!14902 lt!815037))))))

(assert (= (and d!654676 c!347160) b!2184450))

(assert (= (and d!654676 (not c!347160)) b!2184451))

(assert (= (and d!654676 res!938745) b!2184452))

(assert (= (and b!2184452 res!938744) b!2184453))

(declare-fun m!2627075 () Bool)

(assert (=> b!2184452 m!2627075))

(assert (=> b!2184452 m!2627013))

(declare-fun m!2627077 () Bool)

(assert (=> b!2184452 m!2627077))

(declare-fun m!2627079 () Bool)

(assert (=> d!654676 m!2627079))

(declare-fun m!2627081 () Bool)

(assert (=> d!654676 m!2627081))

(declare-fun m!2627083 () Bool)

(assert (=> d!654676 m!2627083))

(declare-fun m!2627085 () Bool)

(assert (=> b!2184451 m!2627085))

(assert (=> b!2184432 d!654676))

(declare-fun d!654678 () Bool)

(declare-fun e!1396112 () Bool)

(assert (=> d!654678 e!1396112))

(declare-fun res!938748 () Bool)

(assert (=> d!654678 (=> res!938748 e!1396112)))

(declare-fun lt!815046 () Bool)

(assert (=> d!654678 (= res!938748 (not lt!815046))))

(assert (=> d!654678 (= lt!815046 (= lt!815025 (drop!1263 lt!815028 (- (size!19739 lt!815028) (size!19739 lt!815025)))))))

(assert (=> d!654678 (= (isSuffix!712 lt!815025 lt!815028) lt!815046)))

(declare-fun b!2184456 () Bool)

(assert (=> b!2184456 (= e!1396112 (>= (size!19739 lt!815028) (size!19739 lt!815025)))))

(assert (= (and d!654678 (not res!938748)) b!2184456))

(declare-fun m!2627087 () Bool)

(assert (=> d!654678 m!2627087))

(assert (=> d!654678 m!2626977))

(declare-fun m!2627089 () Bool)

(assert (=> d!654678 m!2627089))

(assert (=> b!2184456 m!2627087))

(assert (=> b!2184456 m!2626977))

(assert (=> b!2184441 d!654678))

(declare-fun d!654682 () Bool)

(declare-fun list!9700 (Conc!8181) List!25348)

(assert (=> d!654682 (= (list!9698 totalInput!977) (list!9700 (c!347156 totalInput!977)))))

(declare-fun bs!448045 () Bool)

(assert (= bs!448045 d!654682))

(declare-fun m!2627091 () Bool)

(assert (=> bs!448045 m!2627091))

(assert (=> b!2184441 d!654682))

(declare-fun d!654684 () Bool)

(assert (=> d!654684 (= (list!9698 input!5540) (list!9700 (c!347156 input!5540)))))

(declare-fun bs!448046 () Bool)

(assert (= bs!448046 d!654684))

(declare-fun m!2627093 () Bool)

(assert (=> bs!448046 m!2627093))

(assert (=> b!2184441 d!654684))

(declare-fun d!654686 () Bool)

(declare-fun e!1396193 () Bool)

(assert (=> d!654686 e!1396193))

(declare-fun c!347190 () Bool)

(assert (=> d!654686 (= c!347190 ((_ is EmptyExpr!6045) r!12534))))

(declare-fun lt!815065 () Bool)

(declare-fun e!1396194 () Bool)

(assert (=> d!654686 (= lt!815065 e!1396194)))

(declare-fun c!347189 () Bool)

(assert (=> d!654686 (= c!347189 (isEmpty!14517 (_1!14902 lt!815040)))))

(assert (=> d!654686 (validRegex!2321 r!12534)))

(assert (=> d!654686 (= (matchR!2794 r!12534 (_1!14902 lt!815040)) lt!815065)))

(declare-fun b!2184589 () Bool)

(declare-fun res!938830 () Bool)

(declare-fun e!1396196 () Bool)

(assert (=> b!2184589 (=> res!938830 e!1396196)))

(declare-fun e!1396191 () Bool)

(assert (=> b!2184589 (= res!938830 e!1396191)))

(declare-fun res!938827 () Bool)

(assert (=> b!2184589 (=> (not res!938827) (not e!1396191))))

(assert (=> b!2184589 (= res!938827 lt!815065)))

(declare-fun b!2184590 () Bool)

(declare-fun e!1396195 () Bool)

(assert (=> b!2184590 (= e!1396193 e!1396195)))

(declare-fun c!347188 () Bool)

(assert (=> b!2184590 (= c!347188 ((_ is EmptyLang!6045) r!12534))))

(declare-fun b!2184591 () Bool)

(declare-fun res!938834 () Bool)

(declare-fun e!1396192 () Bool)

(assert (=> b!2184591 (=> res!938834 e!1396192)))

(declare-fun tail!3138 (List!25348) List!25348)

(assert (=> b!2184591 (= res!938834 (not (isEmpty!14517 (tail!3138 (_1!14902 lt!815040)))))))

(declare-fun b!2184592 () Bool)

(declare-fun head!4666 (List!25348) C!12236)

(assert (=> b!2184592 (= e!1396191 (= (head!4666 (_1!14902 lt!815040)) (c!347157 r!12534)))))

(declare-fun b!2184593 () Bool)

(declare-fun call!131370 () Bool)

(assert (=> b!2184593 (= e!1396193 (= lt!815065 call!131370))))

(declare-fun b!2184594 () Bool)

(declare-fun e!1396197 () Bool)

(assert (=> b!2184594 (= e!1396196 e!1396197)))

(declare-fun res!938829 () Bool)

(assert (=> b!2184594 (=> (not res!938829) (not e!1396197))))

(assert (=> b!2184594 (= res!938829 (not lt!815065))))

(declare-fun b!2184595 () Bool)

(assert (=> b!2184595 (= e!1396195 (not lt!815065))))

(declare-fun b!2184596 () Bool)

(declare-fun nullable!1709 (Regex!6045) Bool)

(assert (=> b!2184596 (= e!1396194 (nullable!1709 r!12534))))

(declare-fun b!2184597 () Bool)

(assert (=> b!2184597 (= e!1396197 e!1396192)))

(declare-fun res!938831 () Bool)

(assert (=> b!2184597 (=> res!938831 e!1396192)))

(assert (=> b!2184597 (= res!938831 call!131370)))

(declare-fun b!2184598 () Bool)

(declare-fun res!938832 () Bool)

(assert (=> b!2184598 (=> (not res!938832) (not e!1396191))))

(assert (=> b!2184598 (= res!938832 (isEmpty!14517 (tail!3138 (_1!14902 lt!815040))))))

(declare-fun b!2184599 () Bool)

(declare-fun res!938833 () Bool)

(assert (=> b!2184599 (=> res!938833 e!1396196)))

(assert (=> b!2184599 (= res!938833 (not ((_ is ElementMatch!6045) r!12534)))))

(assert (=> b!2184599 (= e!1396195 e!1396196)))

(declare-fun b!2184600 () Bool)

(assert (=> b!2184600 (= e!1396192 (not (= (head!4666 (_1!14902 lt!815040)) (c!347157 r!12534))))))

(declare-fun b!2184601 () Bool)

(declare-fun res!938828 () Bool)

(assert (=> b!2184601 (=> (not res!938828) (not e!1396191))))

(assert (=> b!2184601 (= res!938828 (not call!131370))))

(declare-fun b!2184602 () Bool)

(declare-fun derivativeStep!1452 (Regex!6045 C!12236) Regex!6045)

(assert (=> b!2184602 (= e!1396194 (matchR!2794 (derivativeStep!1452 r!12534 (head!4666 (_1!14902 lt!815040))) (tail!3138 (_1!14902 lt!815040))))))

(declare-fun bm!131365 () Bool)

(assert (=> bm!131365 (= call!131370 (isEmpty!14517 (_1!14902 lt!815040)))))

(assert (= (and d!654686 c!347189) b!2184596))

(assert (= (and d!654686 (not c!347189)) b!2184602))

(assert (= (and d!654686 c!347190) b!2184593))

(assert (= (and d!654686 (not c!347190)) b!2184590))

(assert (= (and b!2184590 c!347188) b!2184595))

(assert (= (and b!2184590 (not c!347188)) b!2184599))

(assert (= (and b!2184599 (not res!938833)) b!2184589))

(assert (= (and b!2184589 res!938827) b!2184601))

(assert (= (and b!2184601 res!938828) b!2184598))

(assert (= (and b!2184598 res!938832) b!2184592))

(assert (= (and b!2184589 (not res!938830)) b!2184594))

(assert (= (and b!2184594 res!938829) b!2184597))

(assert (= (and b!2184597 (not res!938831)) b!2184591))

(assert (= (and b!2184591 (not res!938834)) b!2184600))

(assert (= (or b!2184593 b!2184597 b!2184601) bm!131365))

(declare-fun m!2627151 () Bool)

(assert (=> b!2184598 m!2627151))

(assert (=> b!2184598 m!2627151))

(declare-fun m!2627153 () Bool)

(assert (=> b!2184598 m!2627153))

(declare-fun m!2627155 () Bool)

(assert (=> b!2184596 m!2627155))

(assert (=> b!2184591 m!2627151))

(assert (=> b!2184591 m!2627151))

(assert (=> b!2184591 m!2627153))

(declare-fun m!2627157 () Bool)

(assert (=> b!2184592 m!2627157))

(assert (=> d!654686 m!2626993))

(assert (=> d!654686 m!2627063))

(assert (=> b!2184602 m!2627157))

(assert (=> b!2184602 m!2627157))

(declare-fun m!2627159 () Bool)

(assert (=> b!2184602 m!2627159))

(assert (=> b!2184602 m!2627151))

(assert (=> b!2184602 m!2627159))

(assert (=> b!2184602 m!2627151))

(declare-fun m!2627161 () Bool)

(assert (=> b!2184602 m!2627161))

(assert (=> bm!131365 m!2626993))

(assert (=> b!2184600 m!2627157))

(assert (=> b!2184422 d!654686))

(declare-fun b!2184621 () Bool)

(declare-fun e!1396215 () Bool)

(declare-fun call!131379 () Bool)

(assert (=> b!2184621 (= e!1396215 call!131379)))

(declare-fun b!2184622 () Bool)

(declare-fun e!1396214 () Bool)

(declare-fun e!1396213 () Bool)

(assert (=> b!2184622 (= e!1396214 e!1396213)))

(declare-fun c!347195 () Bool)

(assert (=> b!2184622 (= c!347195 ((_ is Star!6045) r!12534))))

(declare-fun c!347196 () Bool)

(declare-fun bm!131372 () Bool)

(assert (=> bm!131372 (= call!131379 (validRegex!2321 (ite c!347195 (reg!6374 r!12534) (ite c!347196 (regOne!12603 r!12534) (regTwo!12602 r!12534)))))))

(declare-fun b!2184623 () Bool)

(declare-fun e!1396216 () Bool)

(declare-fun call!131377 () Bool)

(assert (=> b!2184623 (= e!1396216 call!131377)))

(declare-fun b!2184625 () Bool)

(declare-fun e!1396212 () Bool)

(assert (=> b!2184625 (= e!1396213 e!1396212)))

(assert (=> b!2184625 (= c!347196 ((_ is Union!6045) r!12534))))

(declare-fun bm!131373 () Bool)

(assert (=> bm!131373 (= call!131377 (validRegex!2321 (ite c!347196 (regTwo!12603 r!12534) (regOne!12602 r!12534))))))

(declare-fun b!2184626 () Bool)

(declare-fun res!938849 () Bool)

(declare-fun e!1396217 () Bool)

(assert (=> b!2184626 (=> res!938849 e!1396217)))

(assert (=> b!2184626 (= res!938849 (not ((_ is Concat!10347) r!12534)))))

(assert (=> b!2184626 (= e!1396212 e!1396217)))

(declare-fun b!2184627 () Bool)

(declare-fun e!1396218 () Bool)

(declare-fun call!131378 () Bool)

(assert (=> b!2184627 (= e!1396218 call!131378)))

(declare-fun b!2184628 () Bool)

(assert (=> b!2184628 (= e!1396213 e!1396215)))

(declare-fun res!938847 () Bool)

(assert (=> b!2184628 (= res!938847 (not (nullable!1709 (reg!6374 r!12534))))))

(assert (=> b!2184628 (=> (not res!938847) (not e!1396215))))

(declare-fun b!2184629 () Bool)

(assert (=> b!2184629 (= e!1396217 e!1396218)))

(declare-fun res!938845 () Bool)

(assert (=> b!2184629 (=> (not res!938845) (not e!1396218))))

(assert (=> b!2184629 (= res!938845 call!131377)))

(declare-fun bm!131374 () Bool)

(assert (=> bm!131374 (= call!131378 call!131379)))

(declare-fun b!2184624 () Bool)

(declare-fun res!938846 () Bool)

(assert (=> b!2184624 (=> (not res!938846) (not e!1396216))))

(assert (=> b!2184624 (= res!938846 call!131378)))

(assert (=> b!2184624 (= e!1396212 e!1396216)))

(declare-fun d!654706 () Bool)

(declare-fun res!938848 () Bool)

(assert (=> d!654706 (=> res!938848 e!1396214)))

(assert (=> d!654706 (= res!938848 ((_ is ElementMatch!6045) r!12534))))

(assert (=> d!654706 (= (validRegex!2321 r!12534) e!1396214)))

(assert (= (and d!654706 (not res!938848)) b!2184622))

(assert (= (and b!2184622 c!347195) b!2184628))

(assert (= (and b!2184622 (not c!347195)) b!2184625))

(assert (= (and b!2184628 res!938847) b!2184621))

(assert (= (and b!2184625 c!347196) b!2184624))

(assert (= (and b!2184625 (not c!347196)) b!2184626))

(assert (= (and b!2184624 res!938846) b!2184623))

(assert (= (and b!2184626 (not res!938849)) b!2184629))

(assert (= (and b!2184629 res!938845) b!2184627))

(assert (= (or b!2184623 b!2184629) bm!131373))

(assert (= (or b!2184624 b!2184627) bm!131374))

(assert (= (or b!2184621 bm!131374) bm!131372))

(declare-fun m!2627189 () Bool)

(assert (=> bm!131372 m!2627189))

(declare-fun m!2627191 () Bool)

(assert (=> bm!131373 m!2627191))

(declare-fun m!2627193 () Bool)

(assert (=> b!2184628 m!2627193))

(assert (=> start!211798 d!654706))

(declare-fun d!654716 () Bool)

(declare-fun isBalanced!2542 (Conc!8181) Bool)

(assert (=> d!654716 (= (inv!33580 totalInput!977) (isBalanced!2542 (c!347156 totalInput!977)))))

(declare-fun bs!448054 () Bool)

(assert (= bs!448054 d!654716))

(declare-fun m!2627195 () Bool)

(assert (=> bs!448054 m!2627195))

(assert (=> start!211798 d!654716))

(declare-fun d!654718 () Bool)

(assert (=> d!654718 (= (inv!33580 input!5540) (isBalanced!2542 (c!347156 input!5540)))))

(declare-fun bs!448055 () Bool)

(assert (= bs!448055 d!654718))

(declare-fun m!2627197 () Bool)

(assert (=> bs!448055 m!2627197))

(assert (=> start!211798 d!654718))

(declare-fun d!654720 () Bool)

(declare-fun lt!815096 () Int)

(assert (=> d!654720 (>= lt!815096 0)))

(declare-fun e!1396221 () Int)

(assert (=> d!654720 (= lt!815096 e!1396221)))

(declare-fun c!347199 () Bool)

(assert (=> d!654720 (= c!347199 ((_ is Nil!25264) lt!815023))))

(assert (=> d!654720 (= (size!19739 lt!815023) lt!815096)))

(declare-fun b!2184634 () Bool)

(assert (=> b!2184634 (= e!1396221 0)))

(declare-fun b!2184635 () Bool)

(assert (=> b!2184635 (= e!1396221 (+ 1 (size!19739 (t!197938 lt!815023))))))

(assert (= (and d!654720 c!347199) b!2184634))

(assert (= (and d!654720 (not c!347199)) b!2184635))

(declare-fun m!2627199 () Bool)

(assert (=> b!2184635 m!2627199))

(assert (=> b!2184423 d!654720))

(declare-fun b!2184674 () Bool)

(declare-fun e!1396243 () Int)

(assert (=> b!2184674 (= e!1396243 lt!815034)))

(declare-fun e!1396244 () Int)

(declare-fun lt!815117 () (InoxSet Context!3230))

(declare-fun b!2184675 () Bool)

(assert (=> b!2184675 (= e!1396244 (furthestNullablePosition!227 lt!815117 (+ lt!815032 1) totalInput!977 lt!815018 e!1396243))))

(declare-fun derivationStepZipper!138 ((InoxSet Context!3230) C!12236) (InoxSet Context!3230))

(declare-fun apply!6089 (BalanceConc!16124 Int) C!12236)

(assert (=> b!2184675 (= lt!815117 (derivationStepZipper!138 z!4055 (apply!6089 totalInput!977 lt!815032)))))

(declare-fun c!347213 () Bool)

(assert (=> b!2184675 (= c!347213 (nullableZipper!325 lt!815117))))

(declare-fun b!2184676 () Bool)

(assert (=> b!2184676 (= e!1396243 lt!815032)))

(declare-fun lt!815118 () Int)

(declare-fun d!654722 () Bool)

(assert (=> d!654722 (and (>= lt!815118 (- 1)) (< lt!815118 lt!815018) (>= lt!815118 lt!815034) (or (= lt!815118 lt!815034) (>= lt!815118 lt!815032)))))

(assert (=> d!654722 (= lt!815118 e!1396244)))

(declare-fun c!347214 () Bool)

(declare-fun e!1396245 () Bool)

(assert (=> d!654722 (= c!347214 e!1396245)))

(declare-fun res!938862 () Bool)

(assert (=> d!654722 (=> res!938862 e!1396245)))

(assert (=> d!654722 (= res!938862 (= lt!815032 lt!815018))))

(assert (=> d!654722 (and (>= lt!815032 0) (<= lt!815032 lt!815018))))

(assert (=> d!654722 (= (furthestNullablePosition!227 z!4055 lt!815032 totalInput!977 lt!815018 lt!815034) lt!815118)))

(declare-fun b!2184677 () Bool)

(declare-fun lostCauseZipper!170 ((InoxSet Context!3230)) Bool)

(assert (=> b!2184677 (= e!1396245 (lostCauseZipper!170 z!4055))))

(declare-fun b!2184678 () Bool)

(assert (=> b!2184678 (= e!1396244 lt!815034)))

(assert (= (and d!654722 (not res!938862)) b!2184677))

(assert (= (and d!654722 c!347214) b!2184678))

(assert (= (and d!654722 (not c!347214)) b!2184675))

(assert (= (and b!2184675 c!347213) b!2184676))

(assert (= (and b!2184675 (not c!347213)) b!2184674))

(declare-fun m!2627229 () Bool)

(assert (=> b!2184675 m!2627229))

(declare-fun m!2627231 () Bool)

(assert (=> b!2184675 m!2627231))

(assert (=> b!2184675 m!2627231))

(declare-fun m!2627233 () Bool)

(assert (=> b!2184675 m!2627233))

(declare-fun m!2627235 () Bool)

(assert (=> b!2184675 m!2627235))

(declare-fun m!2627237 () Bool)

(assert (=> b!2184677 m!2627237))

(assert (=> b!2184433 d!654722))

(declare-fun d!654732 () Bool)

(declare-fun c!347217 () Bool)

(assert (=> d!654732 (= c!347217 (isEmpty!14517 lt!815023))))

(declare-fun e!1396248 () Bool)

(assert (=> d!654732 (= (matchZipper!161 z!4055 lt!815023) e!1396248)))

(declare-fun b!2184683 () Bool)

(assert (=> b!2184683 (= e!1396248 (nullableZipper!325 z!4055))))

(declare-fun b!2184684 () Bool)

(assert (=> b!2184684 (= e!1396248 (matchZipper!161 (derivationStepZipper!138 z!4055 (head!4666 lt!815023)) (tail!3138 lt!815023)))))

(assert (= (and d!654732 c!347217) b!2184683))

(assert (= (and d!654732 (not c!347217)) b!2184684))

(declare-fun m!2627239 () Bool)

(assert (=> d!654732 m!2627239))

(assert (=> b!2184683 m!2627005))

(declare-fun m!2627241 () Bool)

(assert (=> b!2184684 m!2627241))

(assert (=> b!2184684 m!2627241))

(declare-fun m!2627243 () Bool)

(assert (=> b!2184684 m!2627243))

(declare-fun m!2627245 () Bool)

(assert (=> b!2184684 m!2627245))

(assert (=> b!2184684 m!2627243))

(assert (=> b!2184684 m!2627245))

(declare-fun m!2627247 () Bool)

(assert (=> b!2184684 m!2627247))

(assert (=> b!2184433 d!654732))

(declare-fun b!2184694 () Bool)

(declare-fun res!938872 () Bool)

(declare-fun e!1396257 () Bool)

(assert (=> b!2184694 (=> (not res!938872) (not e!1396257))))

(assert (=> b!2184694 (= res!938872 (= (head!4666 lt!815023) (head!4666 lt!815035)))))

(declare-fun b!2184695 () Bool)

(assert (=> b!2184695 (= e!1396257 (isPrefix!2161 (tail!3138 lt!815023) (tail!3138 lt!815035)))))

(declare-fun b!2184693 () Bool)

(declare-fun e!1396255 () Bool)

(assert (=> b!2184693 (= e!1396255 e!1396257)))

(declare-fun res!938874 () Bool)

(assert (=> b!2184693 (=> (not res!938874) (not e!1396257))))

(assert (=> b!2184693 (= res!938874 (not ((_ is Nil!25264) lt!815035)))))

(declare-fun d!654734 () Bool)

(declare-fun e!1396256 () Bool)

(assert (=> d!654734 e!1396256))

(declare-fun res!938871 () Bool)

(assert (=> d!654734 (=> res!938871 e!1396256)))

(declare-fun lt!815121 () Bool)

(assert (=> d!654734 (= res!938871 (not lt!815121))))

(assert (=> d!654734 (= lt!815121 e!1396255)))

(declare-fun res!938873 () Bool)

(assert (=> d!654734 (=> res!938873 e!1396255)))

(assert (=> d!654734 (= res!938873 ((_ is Nil!25264) lt!815023))))

(assert (=> d!654734 (= (isPrefix!2161 lt!815023 lt!815035) lt!815121)))

(declare-fun b!2184696 () Bool)

(assert (=> b!2184696 (= e!1396256 (>= (size!19739 lt!815035) (size!19739 lt!815023)))))

(assert (= (and d!654734 (not res!938873)) b!2184693))

(assert (= (and b!2184693 res!938874) b!2184694))

(assert (= (and b!2184694 res!938872) b!2184695))

(assert (= (and d!654734 (not res!938871)) b!2184696))

(assert (=> b!2184694 m!2627241))

(declare-fun m!2627249 () Bool)

(assert (=> b!2184694 m!2627249))

(assert (=> b!2184695 m!2627245))

(declare-fun m!2627251 () Bool)

(assert (=> b!2184695 m!2627251))

(assert (=> b!2184695 m!2627245))

(assert (=> b!2184695 m!2627251))

(declare-fun m!2627253 () Bool)

(assert (=> b!2184695 m!2627253))

(declare-fun m!2627255 () Bool)

(assert (=> b!2184696 m!2627255))

(assert (=> b!2184696 m!2627061))

(assert (=> b!2184433 d!654734))

(declare-fun b!2184711 () Bool)

(declare-fun e!1396269 () Bool)

(declare-fun lt!815124 () List!25348)

(declare-fun e!1396266 () Int)

(assert (=> b!2184711 (= e!1396269 (= (size!19739 lt!815124) e!1396266))))

(declare-fun c!347225 () Bool)

(assert (=> b!2184711 (= c!347225 (<= lt!815032 0))))

(declare-fun b!2184712 () Bool)

(declare-fun e!1396267 () Int)

(assert (=> b!2184712 (= e!1396267 (size!19739 lt!815028))))

(declare-fun b!2184713 () Bool)

(assert (=> b!2184713 (= e!1396266 e!1396267)))

(declare-fun c!347224 () Bool)

(assert (=> b!2184713 (= c!347224 (>= lt!815032 (size!19739 lt!815028)))))

(declare-fun b!2184714 () Bool)

(assert (=> b!2184714 (= e!1396266 0)))

(declare-fun b!2184715 () Bool)

(declare-fun e!1396268 () List!25348)

(assert (=> b!2184715 (= e!1396268 (Cons!25264 (h!30665 lt!815028) (take!253 (t!197938 lt!815028) (- lt!815032 1))))))

(declare-fun b!2184716 () Bool)

(assert (=> b!2184716 (= e!1396268 Nil!25264)))

(declare-fun d!654736 () Bool)

(assert (=> d!654736 e!1396269))

(declare-fun res!938877 () Bool)

(assert (=> d!654736 (=> (not res!938877) (not e!1396269))))

(assert (=> d!654736 (= res!938877 (= ((_ map implies) (content!3444 lt!815124) (content!3444 lt!815028)) ((as const (InoxSet C!12236)) true)))))

(assert (=> d!654736 (= lt!815124 e!1396268)))

(declare-fun c!347226 () Bool)

(assert (=> d!654736 (= c!347226 (or ((_ is Nil!25264) lt!815028) (<= lt!815032 0)))))

(assert (=> d!654736 (= (take!253 lt!815028 lt!815032) lt!815124)))

(declare-fun b!2184717 () Bool)

(assert (=> b!2184717 (= e!1396267 lt!815032)))

(assert (= (and d!654736 c!347226) b!2184716))

(assert (= (and d!654736 (not c!347226)) b!2184715))

(assert (= (and d!654736 res!938877) b!2184711))

(assert (= (and b!2184711 c!347225) b!2184714))

(assert (= (and b!2184711 (not c!347225)) b!2184713))

(assert (= (and b!2184713 c!347224) b!2184712))

(assert (= (and b!2184713 (not c!347224)) b!2184717))

(declare-fun m!2627257 () Bool)

(assert (=> d!654736 m!2627257))

(declare-fun m!2627259 () Bool)

(assert (=> d!654736 m!2627259))

(assert (=> b!2184713 m!2627087))

(declare-fun m!2627261 () Bool)

(assert (=> b!2184711 m!2627261))

(assert (=> b!2184712 m!2627087))

(declare-fun m!2627263 () Bool)

(assert (=> b!2184715 m!2627263))

(assert (=> b!2184433 d!654736))

(declare-fun d!654738 () Bool)

(declare-fun e!1396289 () Bool)

(assert (=> d!654738 e!1396289))

(declare-fun res!938883 () Bool)

(assert (=> d!654738 (=> (not res!938883) (not e!1396289))))

(declare-fun lt!815194 () tuple2!25064)

(assert (=> d!654738 (= res!938883 (= (++!6406 (_1!14902 lt!815194) (_2!14902 lt!815194)) lt!815025))))

(declare-fun e!1396293 () tuple2!25064)

(assert (=> d!654738 (= lt!815194 e!1396293)))

(declare-fun c!347241 () Bool)

(declare-fun lostCause!680 (Regex!6045) Bool)

(assert (=> d!654738 (= c!347241 (lostCause!680 r!12534))))

(declare-fun lt!815189 () Unit!38381)

(declare-fun Unit!38383 () Unit!38381)

(assert (=> d!654738 (= lt!815189 Unit!38383)))

(declare-fun getSuffix!1045 (List!25348 List!25348) List!25348)

(assert (=> d!654738 (= (getSuffix!1045 lt!815025 Nil!25264) lt!815025)))

(declare-fun lt!815192 () Unit!38381)

(declare-fun lt!815203 () Unit!38381)

(assert (=> d!654738 (= lt!815192 lt!815203)))

(declare-fun lt!815197 () List!25348)

(assert (=> d!654738 (= lt!815025 lt!815197)))

(declare-fun lemmaSamePrefixThenSameSuffix!967 (List!25348 List!25348 List!25348 List!25348 List!25348) Unit!38381)

(assert (=> d!654738 (= lt!815203 (lemmaSamePrefixThenSameSuffix!967 Nil!25264 lt!815025 Nil!25264 lt!815197 lt!815025))))

(assert (=> d!654738 (= lt!815197 (getSuffix!1045 lt!815025 Nil!25264))))

(declare-fun lt!815183 () Unit!38381)

(declare-fun lt!815195 () Unit!38381)

(assert (=> d!654738 (= lt!815183 lt!815195)))

(assert (=> d!654738 (isPrefix!2161 Nil!25264 (++!6406 Nil!25264 lt!815025))))

(assert (=> d!654738 (= lt!815195 (lemmaConcatTwoListThenFirstIsPrefix!1444 Nil!25264 lt!815025))))

(assert (=> d!654738 (validRegex!2321 r!12534)))

(assert (=> d!654738 (= (findLongestMatchInner!670 r!12534 Nil!25264 (size!19739 Nil!25264) lt!815025 lt!815025 (size!19739 lt!815025)) lt!815194)))

(declare-fun bm!131394 () Bool)

(declare-fun call!131403 () Regex!6045)

(declare-fun call!131405 () C!12236)

(assert (=> bm!131394 (= call!131403 (derivativeStep!1452 r!12534 call!131405))))

(declare-fun b!2184746 () Bool)

(declare-fun e!1396292 () tuple2!25064)

(assert (=> b!2184746 (= e!1396292 (tuple2!25065 Nil!25264 lt!815025))))

(declare-fun bm!131395 () Bool)

(declare-fun call!131401 () List!25348)

(assert (=> bm!131395 (= call!131401 (tail!3138 lt!815025))))

(declare-fun b!2184747 () Bool)

(assert (=> b!2184747 (= e!1396293 (tuple2!25065 Nil!25264 lt!815025))))

(declare-fun bm!131396 () Bool)

(declare-fun call!131399 () Unit!38381)

(declare-fun lemmaIsPrefixSameLengthThenSameList!366 (List!25348 List!25348 List!25348) Unit!38381)

(assert (=> bm!131396 (= call!131399 (lemmaIsPrefixSameLengthThenSameList!366 lt!815025 Nil!25264 lt!815025))))

(declare-fun b!2184748 () Bool)

(declare-fun e!1396291 () Unit!38381)

(declare-fun Unit!38384 () Unit!38381)

(assert (=> b!2184748 (= e!1396291 Unit!38384)))

(declare-fun lt!815196 () Unit!38381)

(declare-fun call!131404 () Unit!38381)

(assert (=> b!2184748 (= lt!815196 call!131404)))

(declare-fun call!131406 () Bool)

(assert (=> b!2184748 call!131406))

(declare-fun lt!815206 () Unit!38381)

(assert (=> b!2184748 (= lt!815206 lt!815196)))

(declare-fun lt!815185 () Unit!38381)

(assert (=> b!2184748 (= lt!815185 call!131399)))

(assert (=> b!2184748 (= lt!815025 Nil!25264)))

(declare-fun lt!815191 () Unit!38381)

(assert (=> b!2184748 (= lt!815191 lt!815185)))

(assert (=> b!2184748 false))

(declare-fun b!2184749 () Bool)

(declare-fun e!1396288 () Bool)

(assert (=> b!2184749 (= e!1396289 e!1396288)))

(declare-fun res!938882 () Bool)

(assert (=> b!2184749 (=> res!938882 e!1396288)))

(assert (=> b!2184749 (= res!938882 (isEmpty!14517 (_1!14902 lt!815194)))))

(declare-fun b!2184750 () Bool)

(declare-fun e!1396286 () tuple2!25064)

(assert (=> b!2184750 (= e!1396286 e!1396292)))

(declare-fun lt!815207 () tuple2!25064)

(declare-fun call!131402 () tuple2!25064)

(assert (=> b!2184750 (= lt!815207 call!131402)))

(declare-fun c!347239 () Bool)

(assert (=> b!2184750 (= c!347239 (isEmpty!14517 (_1!14902 lt!815207)))))

(declare-fun b!2184751 () Bool)

(assert (=> b!2184751 (= e!1396286 call!131402)))

(declare-fun bm!131397 () Bool)

(declare-fun call!131400 () Bool)

(assert (=> bm!131397 (= call!131400 (nullable!1709 r!12534))))

(declare-fun b!2184752 () Bool)

(assert (=> b!2184752 (= e!1396292 lt!815207)))

(declare-fun b!2184753 () Bool)

(declare-fun Unit!38385 () Unit!38381)

(assert (=> b!2184753 (= e!1396291 Unit!38385)))

(declare-fun lt!815204 () List!25348)

(declare-fun bm!131398 () Bool)

(assert (=> bm!131398 (= call!131402 (findLongestMatchInner!670 call!131403 lt!815204 (+ (size!19739 Nil!25264) 1) call!131401 lt!815025 (size!19739 lt!815025)))))

(declare-fun b!2184754 () Bool)

(assert (=> b!2184754 (= e!1396288 (>= (size!19739 (_1!14902 lt!815194)) (size!19739 Nil!25264)))))

(declare-fun bm!131399 () Bool)

(assert (=> bm!131399 (= call!131405 (head!4666 lt!815025))))

(declare-fun b!2184755 () Bool)

(declare-fun e!1396290 () tuple2!25064)

(assert (=> b!2184755 (= e!1396290 (tuple2!25065 Nil!25264 Nil!25264))))

(declare-fun b!2184756 () Bool)

(declare-fun e!1396287 () tuple2!25064)

(assert (=> b!2184756 (= e!1396293 e!1396287)))

(declare-fun c!347242 () Bool)

(assert (=> b!2184756 (= c!347242 (= (size!19739 Nil!25264) (size!19739 lt!815025)))))

(declare-fun bm!131400 () Bool)

(assert (=> bm!131400 (= call!131406 (isPrefix!2161 lt!815025 lt!815025))))

(declare-fun b!2184757 () Bool)

(declare-fun c!347244 () Bool)

(assert (=> b!2184757 (= c!347244 call!131400)))

(declare-fun lt!815208 () Unit!38381)

(declare-fun lt!815205 () Unit!38381)

(assert (=> b!2184757 (= lt!815208 lt!815205)))

(declare-fun lt!815181 () C!12236)

(declare-fun lt!815198 () List!25348)

(assert (=> b!2184757 (= (++!6406 (++!6406 Nil!25264 (Cons!25264 lt!815181 Nil!25264)) lt!815198) lt!815025)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!518 (List!25348 C!12236 List!25348 List!25348) Unit!38381)

(assert (=> b!2184757 (= lt!815205 (lemmaMoveElementToOtherListKeepsConcatEq!518 Nil!25264 lt!815181 lt!815198 lt!815025))))

(assert (=> b!2184757 (= lt!815198 (tail!3138 lt!815025))))

(assert (=> b!2184757 (= lt!815181 (head!4666 lt!815025))))

(declare-fun lt!815182 () Unit!38381)

(declare-fun lt!815202 () Unit!38381)

(assert (=> b!2184757 (= lt!815182 lt!815202)))

(assert (=> b!2184757 (isPrefix!2161 (++!6406 Nil!25264 (Cons!25264 (head!4666 (getSuffix!1045 lt!815025 Nil!25264)) Nil!25264)) lt!815025)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!390 (List!25348 List!25348) Unit!38381)

(assert (=> b!2184757 (= lt!815202 (lemmaAddHeadSuffixToPrefixStillPrefix!390 Nil!25264 lt!815025))))

(declare-fun lt!815193 () Unit!38381)

(declare-fun lt!815188 () Unit!38381)

(assert (=> b!2184757 (= lt!815193 lt!815188)))

(assert (=> b!2184757 (= lt!815188 (lemmaAddHeadSuffixToPrefixStillPrefix!390 Nil!25264 lt!815025))))

(assert (=> b!2184757 (= lt!815204 (++!6406 Nil!25264 (Cons!25264 (head!4666 lt!815025) Nil!25264)))))

(declare-fun lt!815200 () Unit!38381)

(assert (=> b!2184757 (= lt!815200 e!1396291)))

(declare-fun c!347243 () Bool)

(assert (=> b!2184757 (= c!347243 (= (size!19739 Nil!25264) (size!19739 lt!815025)))))

(declare-fun lt!815190 () Unit!38381)

(declare-fun lt!815199 () Unit!38381)

(assert (=> b!2184757 (= lt!815190 lt!815199)))

(assert (=> b!2184757 (<= (size!19739 Nil!25264) (size!19739 lt!815025))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!193 (List!25348 List!25348) Unit!38381)

(assert (=> b!2184757 (= lt!815199 (lemmaIsPrefixThenSmallerEqSize!193 Nil!25264 lt!815025))))

(assert (=> b!2184757 (= e!1396287 e!1396286)))

(declare-fun bm!131401 () Bool)

(declare-fun lemmaIsPrefixRefl!1420 (List!25348 List!25348) Unit!38381)

(assert (=> bm!131401 (= call!131404 (lemmaIsPrefixRefl!1420 lt!815025 lt!815025))))

(declare-fun b!2184758 () Bool)

(assert (=> b!2184758 (= e!1396290 (tuple2!25065 Nil!25264 lt!815025))))

(declare-fun b!2184759 () Bool)

(declare-fun c!347240 () Bool)

(assert (=> b!2184759 (= c!347240 call!131400)))

(declare-fun lt!815184 () Unit!38381)

(declare-fun lt!815186 () Unit!38381)

(assert (=> b!2184759 (= lt!815184 lt!815186)))

(assert (=> b!2184759 (= lt!815025 Nil!25264)))

(assert (=> b!2184759 (= lt!815186 call!131399)))

(declare-fun lt!815187 () Unit!38381)

(declare-fun lt!815201 () Unit!38381)

(assert (=> b!2184759 (= lt!815187 lt!815201)))

(assert (=> b!2184759 call!131406))

(assert (=> b!2184759 (= lt!815201 call!131404)))

(assert (=> b!2184759 (= e!1396287 e!1396290)))

(assert (= (and d!654738 c!347241) b!2184747))

(assert (= (and d!654738 (not c!347241)) b!2184756))

(assert (= (and b!2184756 c!347242) b!2184759))

(assert (= (and b!2184756 (not c!347242)) b!2184757))

(assert (= (and b!2184759 c!347240) b!2184755))

(assert (= (and b!2184759 (not c!347240)) b!2184758))

(assert (= (and b!2184757 c!347243) b!2184748))

(assert (= (and b!2184757 (not c!347243)) b!2184753))

(assert (= (and b!2184757 c!347244) b!2184750))

(assert (= (and b!2184757 (not c!347244)) b!2184751))

(assert (= (and b!2184750 c!347239) b!2184746))

(assert (= (and b!2184750 (not c!347239)) b!2184752))

(assert (= (or b!2184750 b!2184751) bm!131399))

(assert (= (or b!2184750 b!2184751) bm!131395))

(assert (= (or b!2184750 b!2184751) bm!131394))

(assert (= (or b!2184750 b!2184751) bm!131398))

(assert (= (or b!2184759 b!2184748) bm!131400))

(assert (= (or b!2184759 b!2184748) bm!131401))

(assert (= (or b!2184759 b!2184748) bm!131396))

(assert (= (or b!2184759 b!2184757) bm!131397))

(assert (= (and d!654738 res!938883) b!2184749))

(assert (= (and b!2184749 (not res!938882)) b!2184754))

(assert (=> bm!131397 m!2627155))

(assert (=> bm!131398 m!2626977))

(declare-fun m!2627265 () Bool)

(assert (=> bm!131398 m!2627265))

(declare-fun m!2627267 () Bool)

(assert (=> b!2184749 m!2627267))

(declare-fun m!2627269 () Bool)

(assert (=> bm!131395 m!2627269))

(declare-fun m!2627271 () Bool)

(assert (=> b!2184757 m!2627271))

(declare-fun m!2627273 () Bool)

(assert (=> b!2184757 m!2627273))

(assert (=> b!2184757 m!2627269))

(declare-fun m!2627275 () Bool)

(assert (=> b!2184757 m!2627275))

(declare-fun m!2627277 () Bool)

(assert (=> b!2184757 m!2627277))

(declare-fun m!2627279 () Bool)

(assert (=> b!2184757 m!2627279))

(declare-fun m!2627281 () Bool)

(assert (=> b!2184757 m!2627281))

(declare-fun m!2627283 () Bool)

(assert (=> b!2184757 m!2627283))

(declare-fun m!2627285 () Bool)

(assert (=> b!2184757 m!2627285))

(assert (=> b!2184757 m!2627271))

(declare-fun m!2627287 () Bool)

(assert (=> b!2184757 m!2627287))

(assert (=> b!2184757 m!2627287))

(declare-fun m!2627289 () Bool)

(assert (=> b!2184757 m!2627289))

(assert (=> b!2184757 m!2626977))

(assert (=> b!2184757 m!2627277))

(declare-fun m!2627291 () Bool)

(assert (=> b!2184757 m!2627291))

(assert (=> b!2184757 m!2626991))

(declare-fun m!2627293 () Bool)

(assert (=> bm!131401 m!2627293))

(declare-fun m!2627295 () Bool)

(assert (=> bm!131400 m!2627295))

(declare-fun m!2627297 () Bool)

(assert (=> b!2184754 m!2627297))

(assert (=> b!2184754 m!2626991))

(assert (=> bm!131399 m!2627281))

(declare-fun m!2627299 () Bool)

(assert (=> bm!131396 m!2627299))

(declare-fun m!2627301 () Bool)

(assert (=> bm!131394 m!2627301))

(declare-fun m!2627303 () Bool)

(assert (=> d!654738 m!2627303))

(declare-fun m!2627305 () Bool)

(assert (=> d!654738 m!2627305))

(declare-fun m!2627307 () Bool)

(assert (=> d!654738 m!2627307))

(assert (=> d!654738 m!2627063))

(declare-fun m!2627309 () Bool)

(assert (=> d!654738 m!2627309))

(declare-fun m!2627311 () Bool)

(assert (=> d!654738 m!2627311))

(assert (=> d!654738 m!2627309))

(assert (=> d!654738 m!2627271))

(declare-fun m!2627313 () Bool)

(assert (=> d!654738 m!2627313))

(declare-fun m!2627315 () Bool)

(assert (=> b!2184750 m!2627315))

(assert (=> b!2184433 d!654738))

(declare-fun b!2184761 () Bool)

(declare-fun res!938885 () Bool)

(declare-fun e!1396296 () Bool)

(assert (=> b!2184761 (=> (not res!938885) (not e!1396296))))

(assert (=> b!2184761 (= res!938885 (= (head!4666 (take!253 lt!815028 lt!815032)) (head!4666 lt!815028)))))

(declare-fun b!2184762 () Bool)

(assert (=> b!2184762 (= e!1396296 (isPrefix!2161 (tail!3138 (take!253 lt!815028 lt!815032)) (tail!3138 lt!815028)))))

(declare-fun b!2184760 () Bool)

(declare-fun e!1396294 () Bool)

(assert (=> b!2184760 (= e!1396294 e!1396296)))

(declare-fun res!938887 () Bool)

(assert (=> b!2184760 (=> (not res!938887) (not e!1396296))))

(assert (=> b!2184760 (= res!938887 (not ((_ is Nil!25264) lt!815028)))))

(declare-fun d!654740 () Bool)

(declare-fun e!1396295 () Bool)

(assert (=> d!654740 e!1396295))

(declare-fun res!938884 () Bool)

(assert (=> d!654740 (=> res!938884 e!1396295)))

(declare-fun lt!815209 () Bool)

(assert (=> d!654740 (= res!938884 (not lt!815209))))

(assert (=> d!654740 (= lt!815209 e!1396294)))

(declare-fun res!938886 () Bool)

(assert (=> d!654740 (=> res!938886 e!1396294)))

(assert (=> d!654740 (= res!938886 ((_ is Nil!25264) (take!253 lt!815028 lt!815032)))))

(assert (=> d!654740 (= (isPrefix!2161 (take!253 lt!815028 lt!815032) lt!815028) lt!815209)))

(declare-fun b!2184763 () Bool)

(assert (=> b!2184763 (= e!1396295 (>= (size!19739 lt!815028) (size!19739 (take!253 lt!815028 lt!815032))))))

(assert (= (and d!654740 (not res!938886)) b!2184760))

(assert (= (and b!2184760 res!938887) b!2184761))

(assert (= (and b!2184761 res!938885) b!2184762))

(assert (= (and d!654740 (not res!938884)) b!2184763))

(assert (=> b!2184761 m!2626987))

(declare-fun m!2627317 () Bool)

(assert (=> b!2184761 m!2627317))

(declare-fun m!2627319 () Bool)

(assert (=> b!2184761 m!2627319))

(assert (=> b!2184762 m!2626987))

(declare-fun m!2627321 () Bool)

(assert (=> b!2184762 m!2627321))

(declare-fun m!2627323 () Bool)

(assert (=> b!2184762 m!2627323))

(assert (=> b!2184762 m!2627321))

(assert (=> b!2184762 m!2627323))

(declare-fun m!2627325 () Bool)

(assert (=> b!2184762 m!2627325))

(assert (=> b!2184763 m!2627087))

(assert (=> b!2184763 m!2626987))

(declare-fun m!2627327 () Bool)

(assert (=> b!2184763 m!2627327))

(assert (=> b!2184433 d!654740))

(declare-fun d!654742 () Bool)

(assert (=> d!654742 (isPrefix!2161 lt!815023 (++!6406 lt!815023 lt!815021))))

(declare-fun lt!815212 () Unit!38381)

(declare-fun choose!12913 (List!25348 List!25348) Unit!38381)

(assert (=> d!654742 (= lt!815212 (choose!12913 lt!815023 lt!815021))))

(assert (=> d!654742 (= (lemmaConcatTwoListThenFirstIsPrefix!1444 lt!815023 lt!815021) lt!815212)))

(declare-fun bs!448057 () Bool)

(assert (= bs!448057 d!654742))

(assert (=> bs!448057 m!2627043))

(assert (=> bs!448057 m!2627043))

(declare-fun m!2627329 () Bool)

(assert (=> bs!448057 m!2627329))

(declare-fun m!2627331 () Bool)

(assert (=> bs!448057 m!2627331))

(assert (=> b!2184433 d!654742))

(declare-fun d!654744 () Bool)

(declare-fun e!1396301 () Bool)

(assert (=> d!654744 e!1396301))

(declare-fun res!938892 () Bool)

(assert (=> d!654744 (=> res!938892 e!1396301)))

(declare-fun lt!815217 () Int)

(assert (=> d!654744 (= res!938892 (<= lt!815217 0))))

(assert (=> d!654744 (= lt!815217 (+ (- (furthestNullablePosition!227 z!4055 lt!815032 totalInput!977 (size!19738 totalInput!977) lt!815034) lt!815032) 1))))

(declare-fun lt!815218 () Unit!38381)

(declare-fun choose!12914 ((InoxSet Context!3230) Int BalanceConc!16124 Int) Unit!38381)

(assert (=> d!654744 (= lt!815218 (choose!12914 z!4055 lt!815032 totalInput!977 lt!815034))))

(declare-fun e!1396302 () Bool)

(assert (=> d!654744 e!1396302))

(declare-fun res!938893 () Bool)

(assert (=> d!654744 (=> (not res!938893) (not e!1396302))))

(assert (=> d!654744 (= res!938893 (>= lt!815032 0))))

(assert (=> d!654744 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!68 z!4055 lt!815032 totalInput!977 lt!815034) lt!815218)))

(declare-fun b!2184768 () Bool)

(assert (=> b!2184768 (= e!1396302 (<= lt!815032 (size!19738 totalInput!977)))))

(declare-fun b!2184769 () Bool)

(assert (=> b!2184769 (= e!1396301 (matchZipper!161 z!4055 (take!253 (drop!1263 (list!9698 totalInput!977) lt!815032) lt!815217)))))

(assert (= (and d!654744 res!938893) b!2184768))

(assert (= (and d!654744 (not res!938892)) b!2184769))

(assert (=> d!654744 m!2627037))

(assert (=> d!654744 m!2627037))

(declare-fun m!2627333 () Bool)

(assert (=> d!654744 m!2627333))

(declare-fun m!2627335 () Bool)

(assert (=> d!654744 m!2627335))

(assert (=> b!2184768 m!2627037))

(assert (=> b!2184769 m!2627025))

(assert (=> b!2184769 m!2627025))

(declare-fun m!2627337 () Bool)

(assert (=> b!2184769 m!2627337))

(assert (=> b!2184769 m!2627337))

(declare-fun m!2627339 () Bool)

(assert (=> b!2184769 m!2627339))

(assert (=> b!2184769 m!2627339))

(declare-fun m!2627341 () Bool)

(assert (=> b!2184769 m!2627341))

(assert (=> b!2184433 d!654744))

(declare-fun d!654746 () Bool)

(assert (=> d!654746 (isPrefix!2161 (take!253 lt!815028 lt!815032) lt!815028)))

(declare-fun lt!815221 () Unit!38381)

(declare-fun choose!12915 (List!25348 Int) Unit!38381)

(assert (=> d!654746 (= lt!815221 (choose!12915 lt!815028 lt!815032))))

(assert (=> d!654746 (>= lt!815032 0)))

(assert (=> d!654746 (= (lemmaTakeIsPrefix!76 lt!815028 lt!815032) lt!815221)))

(declare-fun bs!448058 () Bool)

(assert (= bs!448058 d!654746))

(assert (=> bs!448058 m!2626987))

(assert (=> bs!448058 m!2626987))

(assert (=> bs!448058 m!2626989))

(declare-fun m!2627343 () Bool)

(assert (=> bs!448058 m!2627343))

(assert (=> b!2184433 d!654746))

(declare-fun b!2184771 () Bool)

(declare-fun res!938895 () Bool)

(declare-fun e!1396305 () Bool)

(assert (=> b!2184771 (=> (not res!938895) (not e!1396305))))

(assert (=> b!2184771 (= res!938895 (= (head!4666 (_1!14902 lt!815037)) (head!4666 lt!815026)))))

(declare-fun b!2184772 () Bool)

(assert (=> b!2184772 (= e!1396305 (isPrefix!2161 (tail!3138 (_1!14902 lt!815037)) (tail!3138 lt!815026)))))

(declare-fun b!2184770 () Bool)

(declare-fun e!1396303 () Bool)

(assert (=> b!2184770 (= e!1396303 e!1396305)))

(declare-fun res!938897 () Bool)

(assert (=> b!2184770 (=> (not res!938897) (not e!1396305))))

(assert (=> b!2184770 (= res!938897 (not ((_ is Nil!25264) lt!815026)))))

(declare-fun d!654748 () Bool)

(declare-fun e!1396304 () Bool)

(assert (=> d!654748 e!1396304))

(declare-fun res!938894 () Bool)

(assert (=> d!654748 (=> res!938894 e!1396304)))

(declare-fun lt!815222 () Bool)

(assert (=> d!654748 (= res!938894 (not lt!815222))))

(assert (=> d!654748 (= lt!815222 e!1396303)))

(declare-fun res!938896 () Bool)

(assert (=> d!654748 (=> res!938896 e!1396303)))

(assert (=> d!654748 (= res!938896 ((_ is Nil!25264) (_1!14902 lt!815037)))))

(assert (=> d!654748 (= (isPrefix!2161 (_1!14902 lt!815037) lt!815026) lt!815222)))

(declare-fun b!2184773 () Bool)

(assert (=> b!2184773 (= e!1396304 (>= (size!19739 lt!815026) (size!19739 (_1!14902 lt!815037))))))

(assert (= (and d!654748 (not res!938896)) b!2184770))

(assert (= (and b!2184770 res!938897) b!2184771))

(assert (= (and b!2184771 res!938895) b!2184772))

(assert (= (and d!654748 (not res!938894)) b!2184773))

(declare-fun m!2627345 () Bool)

(assert (=> b!2184771 m!2627345))

(declare-fun m!2627347 () Bool)

(assert (=> b!2184771 m!2627347))

(declare-fun m!2627349 () Bool)

(assert (=> b!2184772 m!2627349))

(declare-fun m!2627351 () Bool)

(assert (=> b!2184772 m!2627351))

(assert (=> b!2184772 m!2627349))

(assert (=> b!2184772 m!2627351))

(declare-fun m!2627353 () Bool)

(assert (=> b!2184772 m!2627353))

(declare-fun m!2627355 () Bool)

(assert (=> b!2184773 m!2627355))

(assert (=> b!2184773 m!2627013))

(assert (=> b!2184433 d!654748))

(declare-fun d!654750 () Bool)

(assert (=> d!654750 (isPrefix!2161 (_1!14902 lt!815037) (++!6406 (_1!14902 lt!815037) (_2!14902 lt!815037)))))

(declare-fun lt!815223 () Unit!38381)

(assert (=> d!654750 (= lt!815223 (choose!12913 (_1!14902 lt!815037) (_2!14902 lt!815037)))))

(assert (=> d!654750 (= (lemmaConcatTwoListThenFirstIsPrefix!1444 (_1!14902 lt!815037) (_2!14902 lt!815037)) lt!815223)))

(declare-fun bs!448059 () Bool)

(assert (= bs!448059 d!654750))

(assert (=> bs!448059 m!2627051))

(assert (=> bs!448059 m!2627051))

(declare-fun m!2627357 () Bool)

(assert (=> bs!448059 m!2627357))

(declare-fun m!2627359 () Bool)

(assert (=> bs!448059 m!2627359))

(assert (=> b!2184433 d!654750))

(declare-fun d!654752 () Bool)

(declare-fun lt!815224 () Int)

(assert (=> d!654752 (>= lt!815224 0)))

(declare-fun e!1396306 () Int)

(assert (=> d!654752 (= lt!815224 e!1396306)))

(declare-fun c!347245 () Bool)

(assert (=> d!654752 (= c!347245 ((_ is Nil!25264) Nil!25264))))

(assert (=> d!654752 (= (size!19739 Nil!25264) lt!815224)))

(declare-fun b!2184774 () Bool)

(assert (=> b!2184774 (= e!1396306 0)))

(declare-fun b!2184775 () Bool)

(assert (=> b!2184775 (= e!1396306 (+ 1 (size!19739 (t!197938 Nil!25264))))))

(assert (= (and d!654752 c!347245) b!2184774))

(assert (= (and d!654752 (not c!347245)) b!2184775))

(declare-fun m!2627361 () Bool)

(assert (=> b!2184775 m!2627361))

(assert (=> b!2184433 d!654752))

(declare-fun d!654754 () Bool)

(declare-fun e!1396309 () Bool)

(assert (=> d!654754 e!1396309))

(declare-fun res!938900 () Bool)

(assert (=> d!654754 (=> res!938900 e!1396309)))

(assert (=> d!654754 (= res!938900 (isEmpty!14517 (_1!14902 (findLongestMatchInner!670 r!12534 Nil!25264 (size!19739 Nil!25264) lt!815025 lt!815025 (size!19739 lt!815025)))))))

(declare-fun lt!815227 () Unit!38381)

(declare-fun choose!12916 (Regex!6045 List!25348) Unit!38381)

(assert (=> d!654754 (= lt!815227 (choose!12916 r!12534 lt!815025))))

(assert (=> d!654754 (validRegex!2321 r!12534)))

(assert (=> d!654754 (= (longestMatchIsAcceptedByMatchOrIsEmpty!643 r!12534 lt!815025) lt!815227)))

(declare-fun b!2184778 () Bool)

(assert (=> b!2184778 (= e!1396309 (matchR!2794 r!12534 (_1!14902 (findLongestMatchInner!670 r!12534 Nil!25264 (size!19739 Nil!25264) lt!815025 lt!815025 (size!19739 lt!815025)))))))

(assert (= (and d!654754 (not res!938900)) b!2184778))

(assert (=> d!654754 m!2626991))

(assert (=> d!654754 m!2626977))

(assert (=> d!654754 m!2626997))

(declare-fun m!2627363 () Bool)

(assert (=> d!654754 m!2627363))

(assert (=> d!654754 m!2626991))

(declare-fun m!2627365 () Bool)

(assert (=> d!654754 m!2627365))

(assert (=> d!654754 m!2626977))

(assert (=> d!654754 m!2627063))

(assert (=> b!2184778 m!2626991))

(assert (=> b!2184778 m!2626977))

(assert (=> b!2184778 m!2626991))

(assert (=> b!2184778 m!2626977))

(assert (=> b!2184778 m!2626997))

(declare-fun m!2627367 () Bool)

(assert (=> b!2184778 m!2627367))

(assert (=> b!2184433 d!654754))

(declare-fun d!654756 () Bool)

(declare-fun lt!815228 () Int)

(assert (=> d!654756 (>= lt!815228 0)))

(declare-fun e!1396310 () Int)

(assert (=> d!654756 (= lt!815228 e!1396310)))

(declare-fun c!347246 () Bool)

(assert (=> d!654756 (= c!347246 ((_ is Nil!25264) lt!815025))))

(assert (=> d!654756 (= (size!19739 lt!815025) lt!815228)))

(declare-fun b!2184779 () Bool)

(assert (=> b!2184779 (= e!1396310 0)))

(declare-fun b!2184780 () Bool)

(assert (=> b!2184780 (= e!1396310 (+ 1 (size!19739 (t!197938 lt!815025))))))

(assert (= (and d!654756 c!347246) b!2184779))

(assert (= (and d!654756 (not c!347246)) b!2184780))

(declare-fun m!2627369 () Bool)

(assert (=> b!2184780 m!2627369))

(assert (=> b!2184433 d!654756))

(declare-fun d!654758 () Bool)

(assert (=> d!654758 (= (isEmpty!14517 (_1!14902 lt!815040)) ((_ is Nil!25264) (_1!14902 lt!815040)))))

(assert (=> b!2184433 d!654758))

(declare-fun d!654760 () Bool)

(declare-fun lambda!82076 () Int)

(declare-fun exists!775 ((InoxSet Context!3230) Int) Bool)

(assert (=> d!654760 (= (nullableZipper!325 z!4055) (exists!775 z!4055 lambda!82076))))

(declare-fun bs!448071 () Bool)

(assert (= bs!448071 d!654760))

(declare-fun m!2627597 () Bool)

(assert (=> bs!448071 m!2627597))

(assert (=> b!2184433 d!654760))

(declare-fun b!2185018 () Bool)

(declare-fun res!938956 () Bool)

(declare-fun e!1396444 () Bool)

(assert (=> b!2185018 (=> (not res!938956) (not e!1396444))))

(assert (=> b!2185018 (= res!938956 (= (head!4666 lt!815023) (head!4666 lt!815025)))))

(declare-fun b!2185019 () Bool)

(assert (=> b!2185019 (= e!1396444 (isPrefix!2161 (tail!3138 lt!815023) (tail!3138 lt!815025)))))

(declare-fun b!2185017 () Bool)

(declare-fun e!1396442 () Bool)

(assert (=> b!2185017 (= e!1396442 e!1396444)))

(declare-fun res!938958 () Bool)

(assert (=> b!2185017 (=> (not res!938958) (not e!1396444))))

(assert (=> b!2185017 (= res!938958 (not ((_ is Nil!25264) lt!815025)))))

(declare-fun d!654828 () Bool)

(declare-fun e!1396443 () Bool)

(assert (=> d!654828 e!1396443))

(declare-fun res!938955 () Bool)

(assert (=> d!654828 (=> res!938955 e!1396443)))

(declare-fun lt!815361 () Bool)

(assert (=> d!654828 (= res!938955 (not lt!815361))))

(assert (=> d!654828 (= lt!815361 e!1396442)))

(declare-fun res!938957 () Bool)

(assert (=> d!654828 (=> res!938957 e!1396442)))

(assert (=> d!654828 (= res!938957 ((_ is Nil!25264) lt!815023))))

(assert (=> d!654828 (= (isPrefix!2161 lt!815023 lt!815025) lt!815361)))

(declare-fun b!2185020 () Bool)

(assert (=> b!2185020 (= e!1396443 (>= (size!19739 lt!815025) (size!19739 lt!815023)))))

(assert (= (and d!654828 (not res!938957)) b!2185017))

(assert (= (and b!2185017 res!938958) b!2185018))

(assert (= (and b!2185018 res!938956) b!2185019))

(assert (= (and d!654828 (not res!938955)) b!2185020))

(assert (=> b!2185018 m!2627241))

(assert (=> b!2185018 m!2627281))

(assert (=> b!2185019 m!2627245))

(assert (=> b!2185019 m!2627269))

(assert (=> b!2185019 m!2627245))

(assert (=> b!2185019 m!2627269))

(declare-fun m!2627599 () Bool)

(assert (=> b!2185019 m!2627599))

(assert (=> b!2185020 m!2626977))

(assert (=> b!2185020 m!2627061))

(assert (=> b!2184438 d!654828))

(declare-fun d!654830 () Bool)

(declare-fun c!347317 () Bool)

(assert (=> d!654830 (= c!347317 ((_ is Node!8181) (c!347156 input!5540)))))

(declare-fun e!1396449 () Bool)

(assert (=> d!654830 (= (inv!33579 (c!347156 input!5540)) e!1396449)))

(declare-fun b!2185027 () Bool)

(declare-fun inv!33584 (Conc!8181) Bool)

(assert (=> b!2185027 (= e!1396449 (inv!33584 (c!347156 input!5540)))))

(declare-fun b!2185028 () Bool)

(declare-fun e!1396450 () Bool)

(assert (=> b!2185028 (= e!1396449 e!1396450)))

(declare-fun res!938961 () Bool)

(assert (=> b!2185028 (= res!938961 (not ((_ is Leaf!11971) (c!347156 input!5540))))))

(assert (=> b!2185028 (=> res!938961 e!1396450)))

(declare-fun b!2185029 () Bool)

(declare-fun inv!33585 (Conc!8181) Bool)

(assert (=> b!2185029 (= e!1396450 (inv!33585 (c!347156 input!5540)))))

(assert (= (and d!654830 c!347317) b!2185027))

(assert (= (and d!654830 (not c!347317)) b!2185028))

(assert (= (and b!2185028 (not res!938961)) b!2185029))

(declare-fun m!2627601 () Bool)

(assert (=> b!2185027 m!2627601))

(declare-fun m!2627603 () Bool)

(assert (=> b!2185029 m!2627603))

(assert (=> b!2184419 d!654830))

(declare-fun c!347318 () Bool)

(declare-fun d!654832 () Bool)

(assert (=> d!654832 (= c!347318 (isEmpty!14517 (take!253 (drop!1263 lt!815028 lt!815032) lt!815030)))))

(declare-fun e!1396451 () Bool)

(assert (=> d!654832 (= (matchZipper!161 z!4055 (take!253 (drop!1263 lt!815028 lt!815032) lt!815030)) e!1396451)))

(declare-fun b!2185030 () Bool)

(assert (=> b!2185030 (= e!1396451 (nullableZipper!325 z!4055))))

(declare-fun b!2185031 () Bool)

(assert (=> b!2185031 (= e!1396451 (matchZipper!161 (derivationStepZipper!138 z!4055 (head!4666 (take!253 (drop!1263 lt!815028 lt!815032) lt!815030))) (tail!3138 (take!253 (drop!1263 lt!815028 lt!815032) lt!815030))))))

(assert (= (and d!654832 c!347318) b!2185030))

(assert (= (and d!654832 (not c!347318)) b!2185031))

(assert (=> d!654832 m!2627071))

(declare-fun m!2627605 () Bool)

(assert (=> d!654832 m!2627605))

(assert (=> b!2185030 m!2627005))

(assert (=> b!2185031 m!2627071))

(declare-fun m!2627607 () Bool)

(assert (=> b!2185031 m!2627607))

(assert (=> b!2185031 m!2627607))

(declare-fun m!2627609 () Bool)

(assert (=> b!2185031 m!2627609))

(assert (=> b!2185031 m!2627071))

(declare-fun m!2627611 () Bool)

(assert (=> b!2185031 m!2627611))

(assert (=> b!2185031 m!2627609))

(assert (=> b!2185031 m!2627611))

(declare-fun m!2627613 () Bool)

(assert (=> b!2185031 m!2627613))

(assert (=> b!2184439 d!654832))

(declare-fun b!2185032 () Bool)

(declare-fun e!1396455 () Bool)

(declare-fun lt!815362 () List!25348)

(declare-fun e!1396452 () Int)

(assert (=> b!2185032 (= e!1396455 (= (size!19739 lt!815362) e!1396452))))

(declare-fun c!347320 () Bool)

(assert (=> b!2185032 (= c!347320 (<= lt!815030 0))))

(declare-fun b!2185033 () Bool)

(declare-fun e!1396453 () Int)

(assert (=> b!2185033 (= e!1396453 (size!19739 (drop!1263 lt!815028 lt!815032)))))

(declare-fun b!2185034 () Bool)

(assert (=> b!2185034 (= e!1396452 e!1396453)))

(declare-fun c!347319 () Bool)

(assert (=> b!2185034 (= c!347319 (>= lt!815030 (size!19739 (drop!1263 lt!815028 lt!815032))))))

(declare-fun b!2185035 () Bool)

(assert (=> b!2185035 (= e!1396452 0)))

(declare-fun e!1396454 () List!25348)

(declare-fun b!2185036 () Bool)

(assert (=> b!2185036 (= e!1396454 (Cons!25264 (h!30665 (drop!1263 lt!815028 lt!815032)) (take!253 (t!197938 (drop!1263 lt!815028 lt!815032)) (- lt!815030 1))))))

(declare-fun b!2185037 () Bool)

(assert (=> b!2185037 (= e!1396454 Nil!25264)))

(declare-fun d!654834 () Bool)

(assert (=> d!654834 e!1396455))

(declare-fun res!938962 () Bool)

(assert (=> d!654834 (=> (not res!938962) (not e!1396455))))

(assert (=> d!654834 (= res!938962 (= ((_ map implies) (content!3444 lt!815362) (content!3444 (drop!1263 lt!815028 lt!815032))) ((as const (InoxSet C!12236)) true)))))

(assert (=> d!654834 (= lt!815362 e!1396454)))

(declare-fun c!347321 () Bool)

(assert (=> d!654834 (= c!347321 (or ((_ is Nil!25264) (drop!1263 lt!815028 lt!815032)) (<= lt!815030 0)))))

(assert (=> d!654834 (= (take!253 (drop!1263 lt!815028 lt!815032) lt!815030) lt!815362)))

(declare-fun b!2185038 () Bool)

(assert (=> b!2185038 (= e!1396453 lt!815030)))

(assert (= (and d!654834 c!347321) b!2185037))

(assert (= (and d!654834 (not c!347321)) b!2185036))

(assert (= (and d!654834 res!938962) b!2185032))

(assert (= (and b!2185032 c!347320) b!2185035))

(assert (= (and b!2185032 (not c!347320)) b!2185034))

(assert (= (and b!2185034 c!347319) b!2185033))

(assert (= (and b!2185034 (not c!347319)) b!2185038))

(declare-fun m!2627615 () Bool)

(assert (=> d!654834 m!2627615))

(assert (=> d!654834 m!2627069))

(declare-fun m!2627617 () Bool)

(assert (=> d!654834 m!2627617))

(assert (=> b!2185034 m!2627069))

(declare-fun m!2627619 () Bool)

(assert (=> b!2185034 m!2627619))

(declare-fun m!2627621 () Bool)

(assert (=> b!2185032 m!2627621))

(assert (=> b!2185033 m!2627069))

(assert (=> b!2185033 m!2627619))

(declare-fun m!2627623 () Bool)

(assert (=> b!2185036 m!2627623))

(assert (=> b!2184439 d!654834))

(declare-fun bm!131432 () Bool)

(declare-fun call!131437 () Int)

(assert (=> bm!131432 (= call!131437 (size!19739 lt!815028))))

(declare-fun b!2185057 () Bool)

(declare-fun e!1396468 () List!25348)

(assert (=> b!2185057 (= e!1396468 lt!815028)))

(declare-fun b!2185058 () Bool)

(declare-fun e!1396469 () List!25348)

(assert (=> b!2185058 (= e!1396469 e!1396468)))

(declare-fun c!347332 () Bool)

(assert (=> b!2185058 (= c!347332 (<= lt!815032 0))))

(declare-fun d!654836 () Bool)

(declare-fun e!1396466 () Bool)

(assert (=> d!654836 e!1396466))

(declare-fun res!938965 () Bool)

(assert (=> d!654836 (=> (not res!938965) (not e!1396466))))

(declare-fun lt!815365 () List!25348)

(assert (=> d!654836 (= res!938965 (= ((_ map implies) (content!3444 lt!815365) (content!3444 lt!815028)) ((as const (InoxSet C!12236)) true)))))

(assert (=> d!654836 (= lt!815365 e!1396469)))

(declare-fun c!347330 () Bool)

(assert (=> d!654836 (= c!347330 ((_ is Nil!25264) lt!815028))))

(assert (=> d!654836 (= (drop!1263 lt!815028 lt!815032) lt!815365)))

(declare-fun b!2185059 () Bool)

(declare-fun e!1396467 () Int)

(assert (=> b!2185059 (= e!1396466 (= (size!19739 lt!815365) e!1396467))))

(declare-fun c!347331 () Bool)

(assert (=> b!2185059 (= c!347331 (<= lt!815032 0))))

(declare-fun b!2185060 () Bool)

(assert (=> b!2185060 (= e!1396467 call!131437)))

(declare-fun b!2185061 () Bool)

(assert (=> b!2185061 (= e!1396468 (drop!1263 (t!197938 lt!815028) (- lt!815032 1)))))

(declare-fun b!2185062 () Bool)

(assert (=> b!2185062 (= e!1396469 Nil!25264)))

(declare-fun b!2185063 () Bool)

(declare-fun e!1396470 () Int)

(assert (=> b!2185063 (= e!1396467 e!1396470)))

(declare-fun c!347333 () Bool)

(assert (=> b!2185063 (= c!347333 (>= lt!815032 call!131437))))

(declare-fun b!2185064 () Bool)

(assert (=> b!2185064 (= e!1396470 0)))

(declare-fun b!2185065 () Bool)

(assert (=> b!2185065 (= e!1396470 (- call!131437 lt!815032))))

(assert (= (and d!654836 c!347330) b!2185062))

(assert (= (and d!654836 (not c!347330)) b!2185058))

(assert (= (and b!2185058 c!347332) b!2185057))

(assert (= (and b!2185058 (not c!347332)) b!2185061))

(assert (= (and d!654836 res!938965) b!2185059))

(assert (= (and b!2185059 c!347331) b!2185060))

(assert (= (and b!2185059 (not c!347331)) b!2185063))

(assert (= (and b!2185063 c!347333) b!2185064))

(assert (= (and b!2185063 (not c!347333)) b!2185065))

(assert (= (or b!2185060 b!2185063 b!2185065) bm!131432))

(assert (=> bm!131432 m!2627087))

(declare-fun m!2627625 () Bool)

(assert (=> d!654836 m!2627625))

(assert (=> d!654836 m!2627259))

(declare-fun m!2627627 () Bool)

(assert (=> b!2185059 m!2627627))

(declare-fun m!2627629 () Bool)

(assert (=> b!2185061 m!2627629))

(assert (=> b!2184439 d!654836))

(declare-fun d!654838 () Bool)

(declare-fun e!1396473 () Bool)

(assert (=> d!654838 e!1396473))

(declare-fun c!347336 () Bool)

(assert (=> d!654838 (= c!347336 ((_ is EmptyExpr!6045) r!12534))))

(declare-fun lt!815366 () Bool)

(declare-fun e!1396474 () Bool)

(assert (=> d!654838 (= lt!815366 e!1396474)))

(declare-fun c!347335 () Bool)

(assert (=> d!654838 (= c!347335 (isEmpty!14517 (_1!14902 lt!815037)))))

(assert (=> d!654838 (validRegex!2321 r!12534)))

(assert (=> d!654838 (= (matchR!2794 r!12534 (_1!14902 lt!815037)) lt!815366)))

(declare-fun b!2185066 () Bool)

(declare-fun res!938969 () Bool)

(declare-fun e!1396476 () Bool)

(assert (=> b!2185066 (=> res!938969 e!1396476)))

(declare-fun e!1396471 () Bool)

(assert (=> b!2185066 (= res!938969 e!1396471)))

(declare-fun res!938966 () Bool)

(assert (=> b!2185066 (=> (not res!938966) (not e!1396471))))

(assert (=> b!2185066 (= res!938966 lt!815366)))

(declare-fun b!2185067 () Bool)

(declare-fun e!1396475 () Bool)

(assert (=> b!2185067 (= e!1396473 e!1396475)))

(declare-fun c!347334 () Bool)

(assert (=> b!2185067 (= c!347334 ((_ is EmptyLang!6045) r!12534))))

(declare-fun b!2185068 () Bool)

(declare-fun res!938973 () Bool)

(declare-fun e!1396472 () Bool)

(assert (=> b!2185068 (=> res!938973 e!1396472)))

(assert (=> b!2185068 (= res!938973 (not (isEmpty!14517 (tail!3138 (_1!14902 lt!815037)))))))

(declare-fun b!2185069 () Bool)

(assert (=> b!2185069 (= e!1396471 (= (head!4666 (_1!14902 lt!815037)) (c!347157 r!12534)))))

(declare-fun b!2185070 () Bool)

(declare-fun call!131438 () Bool)

(assert (=> b!2185070 (= e!1396473 (= lt!815366 call!131438))))

(declare-fun b!2185071 () Bool)

(declare-fun e!1396477 () Bool)

(assert (=> b!2185071 (= e!1396476 e!1396477)))

(declare-fun res!938968 () Bool)

(assert (=> b!2185071 (=> (not res!938968) (not e!1396477))))

(assert (=> b!2185071 (= res!938968 (not lt!815366))))

(declare-fun b!2185072 () Bool)

(assert (=> b!2185072 (= e!1396475 (not lt!815366))))

(declare-fun b!2185073 () Bool)

(assert (=> b!2185073 (= e!1396474 (nullable!1709 r!12534))))

(declare-fun b!2185074 () Bool)

(assert (=> b!2185074 (= e!1396477 e!1396472)))

(declare-fun res!938970 () Bool)

(assert (=> b!2185074 (=> res!938970 e!1396472)))

(assert (=> b!2185074 (= res!938970 call!131438)))

(declare-fun b!2185075 () Bool)

(declare-fun res!938971 () Bool)

(assert (=> b!2185075 (=> (not res!938971) (not e!1396471))))

(assert (=> b!2185075 (= res!938971 (isEmpty!14517 (tail!3138 (_1!14902 lt!815037))))))

(declare-fun b!2185076 () Bool)

(declare-fun res!938972 () Bool)

(assert (=> b!2185076 (=> res!938972 e!1396476)))

(assert (=> b!2185076 (= res!938972 (not ((_ is ElementMatch!6045) r!12534)))))

(assert (=> b!2185076 (= e!1396475 e!1396476)))

(declare-fun b!2185077 () Bool)

(assert (=> b!2185077 (= e!1396472 (not (= (head!4666 (_1!14902 lt!815037)) (c!347157 r!12534))))))

(declare-fun b!2185078 () Bool)

(declare-fun res!938967 () Bool)

(assert (=> b!2185078 (=> (not res!938967) (not e!1396471))))

(assert (=> b!2185078 (= res!938967 (not call!131438))))

(declare-fun b!2185079 () Bool)

(assert (=> b!2185079 (= e!1396474 (matchR!2794 (derivativeStep!1452 r!12534 (head!4666 (_1!14902 lt!815037))) (tail!3138 (_1!14902 lt!815037))))))

(declare-fun bm!131433 () Bool)

(assert (=> bm!131433 (= call!131438 (isEmpty!14517 (_1!14902 lt!815037)))))

(assert (= (and d!654838 c!347335) b!2185073))

(assert (= (and d!654838 (not c!347335)) b!2185079))

(assert (= (and d!654838 c!347336) b!2185070))

(assert (= (and d!654838 (not c!347336)) b!2185067))

(assert (= (and b!2185067 c!347334) b!2185072))

(assert (= (and b!2185067 (not c!347334)) b!2185076))

(assert (= (and b!2185076 (not res!938972)) b!2185066))

(assert (= (and b!2185066 res!938966) b!2185078))

(assert (= (and b!2185078 res!938967) b!2185075))

(assert (= (and b!2185075 res!938971) b!2185069))

(assert (= (and b!2185066 (not res!938969)) b!2185071))

(assert (= (and b!2185071 res!938968) b!2185074))

(assert (= (and b!2185074 (not res!938970)) b!2185068))

(assert (= (and b!2185068 (not res!938973)) b!2185077))

(assert (= (or b!2185070 b!2185074 b!2185078) bm!131433))

(assert (=> b!2185075 m!2627349))

(assert (=> b!2185075 m!2627349))

(declare-fun m!2627631 () Bool)

(assert (=> b!2185075 m!2627631))

(assert (=> b!2185073 m!2627155))

(assert (=> b!2185068 m!2627349))

(assert (=> b!2185068 m!2627349))

(assert (=> b!2185068 m!2627631))

(assert (=> b!2185069 m!2627345))

(assert (=> d!654838 m!2627055))

(assert (=> d!654838 m!2627063))

(assert (=> b!2185079 m!2627345))

(assert (=> b!2185079 m!2627345))

(declare-fun m!2627633 () Bool)

(assert (=> b!2185079 m!2627633))

(assert (=> b!2185079 m!2627349))

(assert (=> b!2185079 m!2627633))

(assert (=> b!2185079 m!2627349))

(declare-fun m!2627635 () Bool)

(assert (=> b!2185079 m!2627635))

(assert (=> bm!131433 m!2627055))

(assert (=> b!2185077 m!2627345))

(assert (=> b!2184440 d!654838))

(declare-fun b!2185082 () Bool)

(declare-fun res!938974 () Bool)

(declare-fun e!1396479 () Bool)

(assert (=> b!2185082 (=> (not res!938974) (not e!1396479))))

(declare-fun lt!815367 () List!25348)

(assert (=> b!2185082 (= res!938974 (= (size!19739 lt!815367) (+ (size!19739 lt!815023) (size!19739 lt!815021))))))

(declare-fun b!2185083 () Bool)

(assert (=> b!2185083 (= e!1396479 (or (not (= lt!815021 Nil!25264)) (= lt!815367 lt!815023)))))

(declare-fun b!2185080 () Bool)

(declare-fun e!1396478 () List!25348)

(assert (=> b!2185080 (= e!1396478 lt!815021)))

(declare-fun d!654840 () Bool)

(assert (=> d!654840 e!1396479))

(declare-fun res!938975 () Bool)

(assert (=> d!654840 (=> (not res!938975) (not e!1396479))))

(assert (=> d!654840 (= res!938975 (= (content!3444 lt!815367) ((_ map or) (content!3444 lt!815023) (content!3444 lt!815021))))))

(assert (=> d!654840 (= lt!815367 e!1396478)))

(declare-fun c!347337 () Bool)

(assert (=> d!654840 (= c!347337 ((_ is Nil!25264) lt!815023))))

(assert (=> d!654840 (= (++!6406 lt!815023 lt!815021) lt!815367)))

(declare-fun b!2185081 () Bool)

(assert (=> b!2185081 (= e!1396478 (Cons!25264 (h!30665 lt!815023) (++!6406 (t!197938 lt!815023) lt!815021)))))

(assert (= (and d!654840 c!347337) b!2185080))

(assert (= (and d!654840 (not c!347337)) b!2185081))

(assert (= (and d!654840 res!938975) b!2185082))

(assert (= (and b!2185082 res!938974) b!2185083))

(declare-fun m!2627637 () Bool)

(assert (=> b!2185082 m!2627637))

(assert (=> b!2185082 m!2627061))

(declare-fun m!2627639 () Bool)

(assert (=> b!2185082 m!2627639))

(declare-fun m!2627641 () Bool)

(assert (=> d!654840 m!2627641))

(declare-fun m!2627643 () Bool)

(assert (=> d!654840 m!2627643))

(declare-fun m!2627645 () Bool)

(assert (=> d!654840 m!2627645))

(declare-fun m!2627647 () Bool)

(assert (=> b!2185081 m!2627647))

(assert (=> b!2184421 d!654840))

(declare-fun d!654842 () Bool)

(assert (=> d!654842 (= (list!9698 (_1!14901 lt!815033)) (list!9700 (c!347156 (_1!14901 lt!815033))))))

(declare-fun bs!448072 () Bool)

(assert (= bs!448072 d!654842))

(declare-fun m!2627649 () Bool)

(assert (=> bs!448072 m!2627649))

(assert (=> b!2184421 d!654842))

(declare-fun d!654844 () Bool)

(declare-fun lt!815370 () Int)

(assert (=> d!654844 (= lt!815370 (size!19739 (list!9698 totalInput!977)))))

(declare-fun size!19741 (Conc!8181) Int)

(assert (=> d!654844 (= lt!815370 (size!19741 (c!347156 totalInput!977)))))

(assert (=> d!654844 (= (size!19738 totalInput!977) lt!815370)))

(declare-fun bs!448073 () Bool)

(assert (= bs!448073 d!654844))

(assert (=> bs!448073 m!2627025))

(assert (=> bs!448073 m!2627025))

(declare-fun m!2627651 () Bool)

(assert (=> bs!448073 m!2627651))

(declare-fun m!2627653 () Bool)

(assert (=> bs!448073 m!2627653))

(assert (=> b!2184421 d!654844))

(declare-fun d!654846 () Bool)

(declare-fun lt!815393 () tuple2!25064)

(assert (=> d!654846 (= (++!6406 (_1!14902 lt!815393) (_2!14902 lt!815393)) lt!815025)))

(declare-fun sizeTr!126 (List!25348 Int) Int)

(assert (=> d!654846 (= lt!815393 (findLongestMatchInner!670 r!12534 Nil!25264 0 lt!815025 lt!815025 (sizeTr!126 lt!815025 0)))))

(declare-fun lt!815394 () Unit!38381)

(declare-fun lt!815392 () Unit!38381)

(assert (=> d!654846 (= lt!815394 lt!815392)))

(declare-fun lt!815389 () List!25348)

(declare-fun lt!815387 () Int)

(assert (=> d!654846 (= (sizeTr!126 lt!815389 lt!815387) (+ (size!19739 lt!815389) lt!815387))))

(declare-fun lemmaSizeTrEqualsSize!125 (List!25348 Int) Unit!38381)

(assert (=> d!654846 (= lt!815392 (lemmaSizeTrEqualsSize!125 lt!815389 lt!815387))))

(assert (=> d!654846 (= lt!815387 0)))

(assert (=> d!654846 (= lt!815389 Nil!25264)))

(declare-fun lt!815390 () Unit!38381)

(declare-fun lt!815391 () Unit!38381)

(assert (=> d!654846 (= lt!815390 lt!815391)))

(declare-fun lt!815388 () Int)

(assert (=> d!654846 (= (sizeTr!126 lt!815025 lt!815388) (+ (size!19739 lt!815025) lt!815388))))

(assert (=> d!654846 (= lt!815391 (lemmaSizeTrEqualsSize!125 lt!815025 lt!815388))))

(assert (=> d!654846 (= lt!815388 0)))

(assert (=> d!654846 (validRegex!2321 r!12534)))

(assert (=> d!654846 (= (findLongestMatch!599 r!12534 lt!815025) lt!815393)))

(declare-fun bs!448074 () Bool)

(assert (= bs!448074 d!654846))

(declare-fun m!2627655 () Bool)

(assert (=> bs!448074 m!2627655))

(declare-fun m!2627657 () Bool)

(assert (=> bs!448074 m!2627657))

(declare-fun m!2627659 () Bool)

(assert (=> bs!448074 m!2627659))

(assert (=> bs!448074 m!2627063))

(declare-fun m!2627661 () Bool)

(assert (=> bs!448074 m!2627661))

(declare-fun m!2627663 () Bool)

(assert (=> bs!448074 m!2627663))

(declare-fun m!2627665 () Bool)

(assert (=> bs!448074 m!2627665))

(declare-fun m!2627667 () Bool)

(assert (=> bs!448074 m!2627667))

(assert (=> bs!448074 m!2626977))

(declare-fun m!2627669 () Bool)

(assert (=> bs!448074 m!2627669))

(assert (=> bs!448074 m!2627657))

(assert (=> b!2184421 d!654846))

(declare-fun d!654848 () Bool)

(assert (=> d!654848 (= (list!9698 (_2!14901 lt!815033)) (list!9700 (c!347156 (_2!14901 lt!815033))))))

(declare-fun bs!448075 () Bool)

(assert (= bs!448075 d!654848))

(declare-fun m!2627671 () Bool)

(assert (=> bs!448075 m!2627671))

(assert (=> b!2184421 d!654848))

(declare-fun d!654850 () Bool)

(declare-fun lt!815395 () Int)

(assert (=> d!654850 (= lt!815395 (size!19739 (list!9698 input!5540)))))

(assert (=> d!654850 (= lt!815395 (size!19741 (c!347156 input!5540)))))

(assert (=> d!654850 (= (size!19738 input!5540) lt!815395)))

(declare-fun bs!448076 () Bool)

(assert (= bs!448076 d!654850))

(assert (=> bs!448076 m!2627027))

(assert (=> bs!448076 m!2627027))

(declare-fun m!2627673 () Bool)

(assert (=> bs!448076 m!2627673))

(declare-fun m!2627675 () Bool)

(assert (=> bs!448076 m!2627675))

(assert (=> b!2184421 d!654850))

(declare-fun d!654852 () Bool)

(declare-fun lt!815404 () tuple2!25062)

(assert (=> d!654852 (= (++!6406 (list!9698 (_1!14901 lt!815404)) (list!9698 (_2!14901 lt!815404))) (list!9698 input!5540))))

(declare-fun e!1396484 () tuple2!25062)

(assert (=> d!654852 (= lt!815404 e!1396484)))

(declare-fun c!347342 () Bool)

(declare-fun lt!815406 () Int)

(assert (=> d!654852 (= c!347342 (< lt!815406 0))))

(declare-fun lt!815405 () Int)

(declare-fun e!1396485 () Int)

(declare-fun lt!815407 () Int)

(assert (=> d!654852 (= lt!815406 (+ (- (furthestNullablePosition!227 z!4055 lt!815405 totalInput!977 lt!815407 e!1396485) lt!815405) 1))))

(declare-fun c!347343 () Bool)

(assert (=> d!654852 (= c!347343 (nullableZipper!325 z!4055))))

(assert (=> d!654852 (= lt!815405 (- lt!815407 (size!19738 input!5540)))))

(assert (=> d!654852 (= lt!815407 (size!19738 totalInput!977))))

(assert (=> d!654852 (isSuffix!712 (list!9698 input!5540) (list!9698 totalInput!977))))

(assert (=> d!654852 (= (findLongestMatchZipperSequenceV3!94 z!4055 input!5540 totalInput!977) lt!815404)))

(declare-fun b!2185092 () Bool)

(declare-fun call!131441 () tuple2!25062)

(assert (=> b!2185092 (= e!1396484 call!131441)))

(declare-fun b!2185093 () Bool)

(assert (=> b!2185093 (= e!1396485 (- lt!815405 1))))

(declare-fun b!2185094 () Bool)

(assert (=> b!2185094 (= e!1396484 call!131441)))

(declare-fun b!2185095 () Bool)

(assert (=> b!2185095 (= e!1396485 (- 1))))

(declare-fun bm!131436 () Bool)

(declare-fun splitAt!53 (BalanceConc!16124 Int) tuple2!25062)

(assert (=> bm!131436 (= call!131441 (splitAt!53 input!5540 (ite c!347342 0 lt!815406)))))

(assert (= (and d!654852 c!347343) b!2185093))

(assert (= (and d!654852 (not c!347343)) b!2185095))

(assert (= (and d!654852 c!347342) b!2185094))

(assert (= (and d!654852 (not c!347342)) b!2185092))

(assert (= (or b!2185094 b!2185092) bm!131436))

(assert (=> d!654852 m!2627025))

(assert (=> d!654852 m!2627027))

(assert (=> d!654852 m!2627025))

(declare-fun m!2627677 () Bool)

(assert (=> d!654852 m!2627677))

(declare-fun m!2627679 () Bool)

(assert (=> d!654852 m!2627679))

(assert (=> d!654852 m!2627005))

(declare-fun m!2627681 () Bool)

(assert (=> d!654852 m!2627681))

(assert (=> d!654852 m!2627037))

(assert (=> d!654852 m!2627039))

(assert (=> d!654852 m!2627681))

(assert (=> d!654852 m!2627679))

(declare-fun m!2627683 () Bool)

(assert (=> d!654852 m!2627683))

(declare-fun m!2627685 () Bool)

(assert (=> d!654852 m!2627685))

(assert (=> d!654852 m!2627027))

(declare-fun m!2627687 () Bool)

(assert (=> bm!131436 m!2627687))

(assert (=> b!2184421 d!654852))

(declare-fun d!654854 () Bool)

(declare-fun lt!815410 () Bool)

(assert (=> d!654854 (= lt!815410 (isEmpty!14517 (list!9698 (_1!14901 lt!815033))))))

(declare-fun isEmpty!14520 (Conc!8181) Bool)

(assert (=> d!654854 (= lt!815410 (isEmpty!14520 (c!347156 (_1!14901 lt!815033))))))

(assert (=> d!654854 (= (isEmpty!14518 (_1!14901 lt!815033)) lt!815410)))

(declare-fun bs!448077 () Bool)

(assert (= bs!448077 d!654854))

(assert (=> bs!448077 m!2627047))

(assert (=> bs!448077 m!2627047))

(declare-fun m!2627689 () Bool)

(assert (=> bs!448077 m!2627689))

(declare-fun m!2627691 () Bool)

(assert (=> bs!448077 m!2627691))

(assert (=> b!2184437 d!654854))

(declare-fun d!654856 () Bool)

(assert (=> d!654856 (= (isEmpty!14517 (_1!14902 lt!815037)) ((_ is Nil!25264) (_1!14902 lt!815037)))))

(assert (=> b!2184428 d!654856))

(declare-fun d!654858 () Bool)

(declare-fun lambda!82079 () Int)

(declare-fun forall!5187 (List!25349 Int) Bool)

(assert (=> d!654858 (= (inv!33581 setElem!18334) (forall!5187 (exprs!2115 setElem!18334) lambda!82079))))

(declare-fun bs!448078 () Bool)

(assert (= bs!448078 d!654858))

(declare-fun m!2627693 () Bool)

(assert (=> bs!448078 m!2627693))

(assert (=> setNonEmpty!18334 d!654858))

(declare-fun d!654860 () Bool)

(declare-fun lt!815411 () Int)

(assert (=> d!654860 (>= lt!815411 0)))

(declare-fun e!1396486 () Int)

(assert (=> d!654860 (= lt!815411 e!1396486)))

(declare-fun c!347344 () Bool)

(assert (=> d!654860 (= c!347344 ((_ is Nil!25264) (_1!14902 lt!815037)))))

(assert (=> d!654860 (= (size!19739 (_1!14902 lt!815037)) lt!815411)))

(declare-fun b!2185096 () Bool)

(assert (=> b!2185096 (= e!1396486 0)))

(declare-fun b!2185097 () Bool)

(assert (=> b!2185097 (= e!1396486 (+ 1 (size!19739 (t!197938 (_1!14902 lt!815037)))))))

(assert (= (and d!654860 c!347344) b!2185096))

(assert (= (and d!654860 (not c!347344)) b!2185097))

(declare-fun m!2627695 () Bool)

(assert (=> b!2185097 m!2627695))

(assert (=> b!2184424 d!654860))

(declare-fun d!654862 () Bool)

(declare-fun c!347345 () Bool)

(assert (=> d!654862 (= c!347345 (isEmpty!14517 (_1!14902 lt!815037)))))

(declare-fun e!1396487 () Bool)

(assert (=> d!654862 (= (matchZipper!161 z!4055 (_1!14902 lt!815037)) e!1396487)))

(declare-fun b!2185098 () Bool)

(assert (=> b!2185098 (= e!1396487 (nullableZipper!325 z!4055))))

(declare-fun b!2185099 () Bool)

(assert (=> b!2185099 (= e!1396487 (matchZipper!161 (derivationStepZipper!138 z!4055 (head!4666 (_1!14902 lt!815037))) (tail!3138 (_1!14902 lt!815037))))))

(assert (= (and d!654862 c!347345) b!2185098))

(assert (= (and d!654862 (not c!347345)) b!2185099))

(assert (=> d!654862 m!2627055))

(assert (=> b!2185098 m!2627005))

(assert (=> b!2185099 m!2627345))

(assert (=> b!2185099 m!2627345))

(declare-fun m!2627697 () Bool)

(assert (=> b!2185099 m!2627697))

(assert (=> b!2185099 m!2627349))

(assert (=> b!2185099 m!2627697))

(assert (=> b!2185099 m!2627349))

(declare-fun m!2627699 () Bool)

(assert (=> b!2185099 m!2627699))

(assert (=> b!2184424 d!654862))

(declare-fun d!654864 () Bool)

(assert (=> d!654864 (= (matchR!2794 r!12534 lt!815023) (matchZipper!161 z!4055 lt!815023))))

(declare-fun lt!815414 () Unit!38381)

(declare-fun choose!12919 ((InoxSet Context!3230) List!25350 Regex!6045 List!25348) Unit!38381)

(assert (=> d!654864 (= lt!815414 (choose!12919 z!4055 lt!815017 r!12534 lt!815023))))

(assert (=> d!654864 (validRegex!2321 r!12534)))

(assert (=> d!654864 (= (theoremZipperRegexEquiv!71 z!4055 lt!815017 r!12534 lt!815023) lt!815414)))

(declare-fun bs!448079 () Bool)

(assert (= bs!448079 d!654864))

(assert (=> bs!448079 m!2627017))

(assert (=> bs!448079 m!2627001))

(declare-fun m!2627701 () Bool)

(assert (=> bs!448079 m!2627701))

(assert (=> bs!448079 m!2627063))

(assert (=> b!2184424 d!654864))

(declare-fun d!654866 () Bool)

(assert (=> d!654866 (= (matchR!2794 r!12534 (_1!14902 lt!815037)) (matchZipper!161 z!4055 (_1!14902 lt!815037)))))

(declare-fun lt!815415 () Unit!38381)

(assert (=> d!654866 (= lt!815415 (choose!12919 z!4055 lt!815017 r!12534 (_1!14902 lt!815037)))))

(assert (=> d!654866 (validRegex!2321 r!12534)))

(assert (=> d!654866 (= (theoremZipperRegexEquiv!71 z!4055 lt!815017 r!12534 (_1!14902 lt!815037)) lt!815415)))

(declare-fun bs!448080 () Bool)

(assert (= bs!448080 d!654866))

(assert (=> bs!448080 m!2627053))

(assert (=> bs!448080 m!2627009))

(declare-fun m!2627703 () Bool)

(assert (=> bs!448080 m!2627703))

(assert (=> bs!448080 m!2627063))

(assert (=> b!2184424 d!654866))

(declare-fun d!654868 () Bool)

(declare-fun lt!815416 () Int)

(assert (=> d!654868 (= lt!815416 (size!19739 (list!9698 (_1!14901 lt!815033))))))

(assert (=> d!654868 (= lt!815416 (size!19741 (c!347156 (_1!14901 lt!815033))))))

(assert (=> d!654868 (= (size!19738 (_1!14901 lt!815033)) lt!815416)))

(declare-fun bs!448081 () Bool)

(assert (= bs!448081 d!654868))

(assert (=> bs!448081 m!2627047))

(assert (=> bs!448081 m!2627047))

(declare-fun m!2627705 () Bool)

(assert (=> bs!448081 m!2627705))

(declare-fun m!2627707 () Bool)

(assert (=> bs!448081 m!2627707))

(assert (=> b!2184424 d!654868))

(declare-fun d!654870 () Bool)

(declare-fun e!1396490 () Bool)

(assert (=> d!654870 e!1396490))

(declare-fun c!347348 () Bool)

(assert (=> d!654870 (= c!347348 ((_ is EmptyExpr!6045) r!12534))))

(declare-fun lt!815417 () Bool)

(declare-fun e!1396491 () Bool)

(assert (=> d!654870 (= lt!815417 e!1396491)))

(declare-fun c!347347 () Bool)

(assert (=> d!654870 (= c!347347 (isEmpty!14517 lt!815023))))

(assert (=> d!654870 (validRegex!2321 r!12534)))

(assert (=> d!654870 (= (matchR!2794 r!12534 lt!815023) lt!815417)))

(declare-fun b!2185100 () Bool)

(declare-fun res!938979 () Bool)

(declare-fun e!1396493 () Bool)

(assert (=> b!2185100 (=> res!938979 e!1396493)))

(declare-fun e!1396488 () Bool)

(assert (=> b!2185100 (= res!938979 e!1396488)))

(declare-fun res!938976 () Bool)

(assert (=> b!2185100 (=> (not res!938976) (not e!1396488))))

(assert (=> b!2185100 (= res!938976 lt!815417)))

(declare-fun b!2185101 () Bool)

(declare-fun e!1396492 () Bool)

(assert (=> b!2185101 (= e!1396490 e!1396492)))

(declare-fun c!347346 () Bool)

(assert (=> b!2185101 (= c!347346 ((_ is EmptyLang!6045) r!12534))))

(declare-fun b!2185102 () Bool)

(declare-fun res!938983 () Bool)

(declare-fun e!1396489 () Bool)

(assert (=> b!2185102 (=> res!938983 e!1396489)))

(assert (=> b!2185102 (= res!938983 (not (isEmpty!14517 (tail!3138 lt!815023))))))

(declare-fun b!2185103 () Bool)

(assert (=> b!2185103 (= e!1396488 (= (head!4666 lt!815023) (c!347157 r!12534)))))

(declare-fun b!2185104 () Bool)

(declare-fun call!131442 () Bool)

(assert (=> b!2185104 (= e!1396490 (= lt!815417 call!131442))))

(declare-fun b!2185105 () Bool)

(declare-fun e!1396494 () Bool)

(assert (=> b!2185105 (= e!1396493 e!1396494)))

(declare-fun res!938978 () Bool)

(assert (=> b!2185105 (=> (not res!938978) (not e!1396494))))

(assert (=> b!2185105 (= res!938978 (not lt!815417))))

(declare-fun b!2185106 () Bool)

(assert (=> b!2185106 (= e!1396492 (not lt!815417))))

(declare-fun b!2185107 () Bool)

(assert (=> b!2185107 (= e!1396491 (nullable!1709 r!12534))))

(declare-fun b!2185108 () Bool)

(assert (=> b!2185108 (= e!1396494 e!1396489)))

(declare-fun res!938980 () Bool)

(assert (=> b!2185108 (=> res!938980 e!1396489)))

(assert (=> b!2185108 (= res!938980 call!131442)))

(declare-fun b!2185109 () Bool)

(declare-fun res!938981 () Bool)

(assert (=> b!2185109 (=> (not res!938981) (not e!1396488))))

(assert (=> b!2185109 (= res!938981 (isEmpty!14517 (tail!3138 lt!815023)))))

(declare-fun b!2185110 () Bool)

(declare-fun res!938982 () Bool)

(assert (=> b!2185110 (=> res!938982 e!1396493)))

(assert (=> b!2185110 (= res!938982 (not ((_ is ElementMatch!6045) r!12534)))))

(assert (=> b!2185110 (= e!1396492 e!1396493)))

(declare-fun b!2185111 () Bool)

(assert (=> b!2185111 (= e!1396489 (not (= (head!4666 lt!815023) (c!347157 r!12534))))))

(declare-fun b!2185112 () Bool)

(declare-fun res!938977 () Bool)

(assert (=> b!2185112 (=> (not res!938977) (not e!1396488))))

(assert (=> b!2185112 (= res!938977 (not call!131442))))

(declare-fun b!2185113 () Bool)

(assert (=> b!2185113 (= e!1396491 (matchR!2794 (derivativeStep!1452 r!12534 (head!4666 lt!815023)) (tail!3138 lt!815023)))))

(declare-fun bm!131437 () Bool)

(assert (=> bm!131437 (= call!131442 (isEmpty!14517 lt!815023))))

(assert (= (and d!654870 c!347347) b!2185107))

(assert (= (and d!654870 (not c!347347)) b!2185113))

(assert (= (and d!654870 c!347348) b!2185104))

(assert (= (and d!654870 (not c!347348)) b!2185101))

(assert (= (and b!2185101 c!347346) b!2185106))

(assert (= (and b!2185101 (not c!347346)) b!2185110))

(assert (= (and b!2185110 (not res!938982)) b!2185100))

(assert (= (and b!2185100 res!938976) b!2185112))

(assert (= (and b!2185112 res!938977) b!2185109))

(assert (= (and b!2185109 res!938981) b!2185103))

(assert (= (and b!2185100 (not res!938979)) b!2185105))

(assert (= (and b!2185105 res!938978) b!2185108))

(assert (= (and b!2185108 (not res!938980)) b!2185102))

(assert (= (and b!2185102 (not res!938983)) b!2185111))

(assert (= (or b!2185104 b!2185108 b!2185112) bm!131437))

(assert (=> b!2185109 m!2627245))

(assert (=> b!2185109 m!2627245))

(declare-fun m!2627709 () Bool)

(assert (=> b!2185109 m!2627709))

(assert (=> b!2185107 m!2627155))

(assert (=> b!2185102 m!2627245))

(assert (=> b!2185102 m!2627245))

(assert (=> b!2185102 m!2627709))

(assert (=> b!2185103 m!2627241))

(assert (=> d!654870 m!2627239))

(assert (=> d!654870 m!2627063))

(assert (=> b!2185113 m!2627241))

(assert (=> b!2185113 m!2627241))

(declare-fun m!2627711 () Bool)

(assert (=> b!2185113 m!2627711))

(assert (=> b!2185113 m!2627245))

(assert (=> b!2185113 m!2627711))

(assert (=> b!2185113 m!2627245))

(declare-fun m!2627713 () Bool)

(assert (=> b!2185113 m!2627713))

(assert (=> bm!131437 m!2627239))

(assert (=> b!2185111 m!2627241))

(assert (=> b!2184424 d!654870))

(declare-fun d!654872 () Bool)

(declare-fun lt!815420 () Regex!6045)

(assert (=> d!654872 (validRegex!2321 lt!815420)))

(declare-fun generalisedUnion!525 (List!25349) Regex!6045)

(declare-fun unfocusZipperList!49 (List!25350) List!25349)

(assert (=> d!654872 (= lt!815420 (generalisedUnion!525 (unfocusZipperList!49 lt!815017)))))

(assert (=> d!654872 (= (unfocusZipper!152 lt!815017) lt!815420)))

(declare-fun bs!448082 () Bool)

(assert (= bs!448082 d!654872))

(declare-fun m!2627715 () Bool)

(assert (=> bs!448082 m!2627715))

(declare-fun m!2627717 () Bool)

(assert (=> bs!448082 m!2627717))

(assert (=> bs!448082 m!2627717))

(declare-fun m!2627719 () Bool)

(assert (=> bs!448082 m!2627719))

(assert (=> b!2184425 d!654872))

(declare-fun d!654874 () Bool)

(declare-fun e!1396497 () Bool)

(assert (=> d!654874 e!1396497))

(declare-fun res!938986 () Bool)

(assert (=> d!654874 (=> (not res!938986) (not e!1396497))))

(declare-fun lt!815423 () List!25350)

(declare-fun noDuplicate!302 (List!25350) Bool)

(assert (=> d!654874 (= res!938986 (noDuplicate!302 lt!815423))))

(declare-fun choose!12920 ((InoxSet Context!3230)) List!25350)

(assert (=> d!654874 (= lt!815423 (choose!12920 z!4055))))

(assert (=> d!654874 (= (toList!1228 z!4055) lt!815423)))

(declare-fun b!2185116 () Bool)

(declare-fun content!3445 (List!25350) (InoxSet Context!3230))

(assert (=> b!2185116 (= e!1396497 (= (content!3445 lt!815423) z!4055))))

(assert (= (and d!654874 res!938986) b!2185116))

(declare-fun m!2627721 () Bool)

(assert (=> d!654874 m!2627721))

(declare-fun m!2627723 () Bool)

(assert (=> d!654874 m!2627723))

(declare-fun m!2627725 () Bool)

(assert (=> b!2185116 m!2627725))

(assert (=> b!2184425 d!654874))

(declare-fun b!2185118 () Bool)

(declare-fun res!938988 () Bool)

(declare-fun e!1396500 () Bool)

(assert (=> b!2185118 (=> (not res!938988) (not e!1396500))))

(assert (=> b!2185118 (= res!938988 (= (head!4666 (_1!14902 lt!815037)) (head!4666 lt!815025)))))

(declare-fun b!2185119 () Bool)

(assert (=> b!2185119 (= e!1396500 (isPrefix!2161 (tail!3138 (_1!14902 lt!815037)) (tail!3138 lt!815025)))))

(declare-fun b!2185117 () Bool)

(declare-fun e!1396498 () Bool)

(assert (=> b!2185117 (= e!1396498 e!1396500)))

(declare-fun res!938990 () Bool)

(assert (=> b!2185117 (=> (not res!938990) (not e!1396500))))

(assert (=> b!2185117 (= res!938990 (not ((_ is Nil!25264) lt!815025)))))

(declare-fun d!654876 () Bool)

(declare-fun e!1396499 () Bool)

(assert (=> d!654876 e!1396499))

(declare-fun res!938987 () Bool)

(assert (=> d!654876 (=> res!938987 e!1396499)))

(declare-fun lt!815424 () Bool)

(assert (=> d!654876 (= res!938987 (not lt!815424))))

(assert (=> d!654876 (= lt!815424 e!1396498)))

(declare-fun res!938989 () Bool)

(assert (=> d!654876 (=> res!938989 e!1396498)))

(assert (=> d!654876 (= res!938989 ((_ is Nil!25264) (_1!14902 lt!815037)))))

(assert (=> d!654876 (= (isPrefix!2161 (_1!14902 lt!815037) lt!815025) lt!815424)))

(declare-fun b!2185120 () Bool)

(assert (=> b!2185120 (= e!1396499 (>= (size!19739 lt!815025) (size!19739 (_1!14902 lt!815037))))))

(assert (= (and d!654876 (not res!938989)) b!2185117))

(assert (= (and b!2185117 res!938990) b!2185118))

(assert (= (and b!2185118 res!938988) b!2185119))

(assert (= (and d!654876 (not res!938987)) b!2185120))

(assert (=> b!2185118 m!2627345))

(assert (=> b!2185118 m!2627281))

(assert (=> b!2185119 m!2627349))

(assert (=> b!2185119 m!2627269))

(assert (=> b!2185119 m!2627349))

(assert (=> b!2185119 m!2627269))

(declare-fun m!2627727 () Bool)

(assert (=> b!2185119 m!2627727))

(assert (=> b!2185120 m!2626977))

(assert (=> b!2185120 m!2627013))

(assert (=> b!2184426 d!654876))

(declare-fun d!654878 () Bool)

(declare-fun c!347349 () Bool)

(assert (=> d!654878 (= c!347349 ((_ is Node!8181) (c!347156 totalInput!977)))))

(declare-fun e!1396501 () Bool)

(assert (=> d!654878 (= (inv!33579 (c!347156 totalInput!977)) e!1396501)))

(declare-fun b!2185121 () Bool)

(assert (=> b!2185121 (= e!1396501 (inv!33584 (c!347156 totalInput!977)))))

(declare-fun b!2185122 () Bool)

(declare-fun e!1396502 () Bool)

(assert (=> b!2185122 (= e!1396501 e!1396502)))

(declare-fun res!938991 () Bool)

(assert (=> b!2185122 (= res!938991 (not ((_ is Leaf!11971) (c!347156 totalInput!977))))))

(assert (=> b!2185122 (=> res!938991 e!1396502)))

(declare-fun b!2185123 () Bool)

(assert (=> b!2185123 (= e!1396502 (inv!33585 (c!347156 totalInput!977)))))

(assert (= (and d!654878 c!347349) b!2185121))

(assert (= (and d!654878 (not c!347349)) b!2185122))

(assert (= (and b!2185122 (not res!938991)) b!2185123))

(declare-fun m!2627729 () Bool)

(assert (=> b!2185121 m!2627729))

(declare-fun m!2627731 () Bool)

(assert (=> b!2185123 m!2627731))

(assert (=> b!2184436 d!654878))

(declare-fun condSetEmpty!18340 () Bool)

(assert (=> setNonEmpty!18334 (= condSetEmpty!18340 (= setRest!18334 ((as const (Array Context!3230 Bool)) false)))))

(declare-fun setRes!18340 () Bool)

(assert (=> setNonEmpty!18334 (= tp!681457 setRes!18340)))

(declare-fun setIsEmpty!18340 () Bool)

(assert (=> setIsEmpty!18340 setRes!18340))

(declare-fun e!1396505 () Bool)

(declare-fun tp!681522 () Bool)

(declare-fun setElem!18340 () Context!3230)

(declare-fun setNonEmpty!18340 () Bool)

(assert (=> setNonEmpty!18340 (= setRes!18340 (and tp!681522 (inv!33581 setElem!18340) e!1396505))))

(declare-fun setRest!18340 () (InoxSet Context!3230))

(assert (=> setNonEmpty!18340 (= setRest!18334 ((_ map or) (store ((as const (Array Context!3230 Bool)) false) setElem!18340 true) setRest!18340))))

(declare-fun b!2185128 () Bool)

(declare-fun tp!681523 () Bool)

(assert (=> b!2185128 (= e!1396505 tp!681523)))

(assert (= (and setNonEmpty!18334 condSetEmpty!18340) setIsEmpty!18340))

(assert (= (and setNonEmpty!18334 (not condSetEmpty!18340)) setNonEmpty!18340))

(assert (= setNonEmpty!18340 b!2185128))

(declare-fun m!2627733 () Bool)

(assert (=> setNonEmpty!18340 m!2627733))

(declare-fun b!2185141 () Bool)

(declare-fun e!1396508 () Bool)

(declare-fun tp!681536 () Bool)

(assert (=> b!2185141 (= e!1396508 tp!681536)))

(declare-fun b!2185139 () Bool)

(assert (=> b!2185139 (= e!1396508 tp_is_empty!9697)))

(assert (=> b!2184429 (= tp!681454 e!1396508)))

(declare-fun b!2185142 () Bool)

(declare-fun tp!681538 () Bool)

(declare-fun tp!681535 () Bool)

(assert (=> b!2185142 (= e!1396508 (and tp!681538 tp!681535))))

(declare-fun b!2185140 () Bool)

(declare-fun tp!681534 () Bool)

(declare-fun tp!681537 () Bool)

(assert (=> b!2185140 (= e!1396508 (and tp!681534 tp!681537))))

(assert (= (and b!2184429 ((_ is ElementMatch!6045) (regOne!12603 r!12534))) b!2185139))

(assert (= (and b!2184429 ((_ is Concat!10347) (regOne!12603 r!12534))) b!2185140))

(assert (= (and b!2184429 ((_ is Star!6045) (regOne!12603 r!12534))) b!2185141))

(assert (= (and b!2184429 ((_ is Union!6045) (regOne!12603 r!12534))) b!2185142))

(declare-fun b!2185145 () Bool)

(declare-fun e!1396509 () Bool)

(declare-fun tp!681541 () Bool)

(assert (=> b!2185145 (= e!1396509 tp!681541)))

(declare-fun b!2185143 () Bool)

(assert (=> b!2185143 (= e!1396509 tp_is_empty!9697)))

(assert (=> b!2184429 (= tp!681456 e!1396509)))

(declare-fun b!2185146 () Bool)

(declare-fun tp!681543 () Bool)

(declare-fun tp!681540 () Bool)

(assert (=> b!2185146 (= e!1396509 (and tp!681543 tp!681540))))

(declare-fun b!2185144 () Bool)

(declare-fun tp!681539 () Bool)

(declare-fun tp!681542 () Bool)

(assert (=> b!2185144 (= e!1396509 (and tp!681539 tp!681542))))

(assert (= (and b!2184429 ((_ is ElementMatch!6045) (regTwo!12603 r!12534))) b!2185143))

(assert (= (and b!2184429 ((_ is Concat!10347) (regTwo!12603 r!12534))) b!2185144))

(assert (= (and b!2184429 ((_ is Star!6045) (regTwo!12603 r!12534))) b!2185145))

(assert (= (and b!2184429 ((_ is Union!6045) (regTwo!12603 r!12534))) b!2185146))

(declare-fun tp!681552 () Bool)

(declare-fun e!1396515 () Bool)

(declare-fun tp!681551 () Bool)

(declare-fun b!2185155 () Bool)

(assert (=> b!2185155 (= e!1396515 (and (inv!33579 (left!19394 (c!347156 input!5540))) tp!681552 (inv!33579 (right!19724 (c!347156 input!5540))) tp!681551))))

(declare-fun b!2185157 () Bool)

(declare-fun e!1396514 () Bool)

(declare-fun tp!681550 () Bool)

(assert (=> b!2185157 (= e!1396514 tp!681550)))

(declare-fun b!2185156 () Bool)

(declare-fun inv!33587 (IArray!16367) Bool)

(assert (=> b!2185156 (= e!1396515 (and (inv!33587 (xs!11123 (c!347156 input!5540))) e!1396514))))

(assert (=> b!2184419 (= tp!681455 (and (inv!33579 (c!347156 input!5540)) e!1396515))))

(assert (= (and b!2184419 ((_ is Node!8181) (c!347156 input!5540))) b!2185155))

(assert (= b!2185156 b!2185157))

(assert (= (and b!2184419 ((_ is Leaf!11971) (c!347156 input!5540))) b!2185156))

(declare-fun m!2627735 () Bool)

(assert (=> b!2185155 m!2627735))

(declare-fun m!2627737 () Bool)

(assert (=> b!2185155 m!2627737))

(declare-fun m!2627739 () Bool)

(assert (=> b!2185156 m!2627739))

(assert (=> b!2184419 m!2627031))

(declare-fun b!2185162 () Bool)

(declare-fun e!1396518 () Bool)

(declare-fun tp!681557 () Bool)

(declare-fun tp!681558 () Bool)

(assert (=> b!2185162 (= e!1396518 (and tp!681557 tp!681558))))

(assert (=> b!2184430 (= tp!681451 e!1396518)))

(assert (= (and b!2184430 ((_ is Cons!25265) (exprs!2115 setElem!18334))) b!2185162))

(declare-fun b!2185165 () Bool)

(declare-fun e!1396519 () Bool)

(declare-fun tp!681561 () Bool)

(assert (=> b!2185165 (= e!1396519 tp!681561)))

(declare-fun b!2185163 () Bool)

(assert (=> b!2185163 (= e!1396519 tp_is_empty!9697)))

(assert (=> b!2184420 (= tp!681452 e!1396519)))

(declare-fun b!2185166 () Bool)

(declare-fun tp!681563 () Bool)

(declare-fun tp!681560 () Bool)

(assert (=> b!2185166 (= e!1396519 (and tp!681563 tp!681560))))

(declare-fun b!2185164 () Bool)

(declare-fun tp!681559 () Bool)

(declare-fun tp!681562 () Bool)

(assert (=> b!2185164 (= e!1396519 (and tp!681559 tp!681562))))

(assert (= (and b!2184420 ((_ is ElementMatch!6045) (reg!6374 r!12534))) b!2185163))

(assert (= (and b!2184420 ((_ is Concat!10347) (reg!6374 r!12534))) b!2185164))

(assert (= (and b!2184420 ((_ is Star!6045) (reg!6374 r!12534))) b!2185165))

(assert (= (and b!2184420 ((_ is Union!6045) (reg!6374 r!12534))) b!2185166))

(declare-fun b!2185169 () Bool)

(declare-fun e!1396520 () Bool)

(declare-fun tp!681566 () Bool)

(assert (=> b!2185169 (= e!1396520 tp!681566)))

(declare-fun b!2185167 () Bool)

(assert (=> b!2185167 (= e!1396520 tp_is_empty!9697)))

(assert (=> b!2184431 (= tp!681458 e!1396520)))

(declare-fun b!2185170 () Bool)

(declare-fun tp!681568 () Bool)

(declare-fun tp!681565 () Bool)

(assert (=> b!2185170 (= e!1396520 (and tp!681568 tp!681565))))

(declare-fun b!2185168 () Bool)

(declare-fun tp!681564 () Bool)

(declare-fun tp!681567 () Bool)

(assert (=> b!2185168 (= e!1396520 (and tp!681564 tp!681567))))

(assert (= (and b!2184431 ((_ is ElementMatch!6045) (regOne!12602 r!12534))) b!2185167))

(assert (= (and b!2184431 ((_ is Concat!10347) (regOne!12602 r!12534))) b!2185168))

(assert (= (and b!2184431 ((_ is Star!6045) (regOne!12602 r!12534))) b!2185169))

(assert (= (and b!2184431 ((_ is Union!6045) (regOne!12602 r!12534))) b!2185170))

(declare-fun b!2185173 () Bool)

(declare-fun e!1396521 () Bool)

(declare-fun tp!681571 () Bool)

(assert (=> b!2185173 (= e!1396521 tp!681571)))

(declare-fun b!2185171 () Bool)

(assert (=> b!2185171 (= e!1396521 tp_is_empty!9697)))

(assert (=> b!2184431 (= tp!681450 e!1396521)))

(declare-fun b!2185174 () Bool)

(declare-fun tp!681573 () Bool)

(declare-fun tp!681570 () Bool)

(assert (=> b!2185174 (= e!1396521 (and tp!681573 tp!681570))))

(declare-fun b!2185172 () Bool)

(declare-fun tp!681569 () Bool)

(declare-fun tp!681572 () Bool)

(assert (=> b!2185172 (= e!1396521 (and tp!681569 tp!681572))))

(assert (= (and b!2184431 ((_ is ElementMatch!6045) (regTwo!12602 r!12534))) b!2185171))

(assert (= (and b!2184431 ((_ is Concat!10347) (regTwo!12602 r!12534))) b!2185172))

(assert (= (and b!2184431 ((_ is Star!6045) (regTwo!12602 r!12534))) b!2185173))

(assert (= (and b!2184431 ((_ is Union!6045) (regTwo!12602 r!12534))) b!2185174))

(declare-fun b!2185175 () Bool)

(declare-fun e!1396523 () Bool)

(declare-fun tp!681576 () Bool)

(declare-fun tp!681575 () Bool)

(assert (=> b!2185175 (= e!1396523 (and (inv!33579 (left!19394 (c!347156 totalInput!977))) tp!681576 (inv!33579 (right!19724 (c!347156 totalInput!977))) tp!681575))))

(declare-fun b!2185177 () Bool)

(declare-fun e!1396522 () Bool)

(declare-fun tp!681574 () Bool)

(assert (=> b!2185177 (= e!1396522 tp!681574)))

(declare-fun b!2185176 () Bool)

(assert (=> b!2185176 (= e!1396523 (and (inv!33587 (xs!11123 (c!347156 totalInput!977))) e!1396522))))

(assert (=> b!2184436 (= tp!681453 (and (inv!33579 (c!347156 totalInput!977)) e!1396523))))

(assert (= (and b!2184436 ((_ is Node!8181) (c!347156 totalInput!977))) b!2185175))

(assert (= b!2185176 b!2185177))

(assert (= (and b!2184436 ((_ is Leaf!11971) (c!347156 totalInput!977))) b!2185176))

(declare-fun m!2627741 () Bool)

(assert (=> b!2185175 m!2627741))

(declare-fun m!2627743 () Bool)

(assert (=> b!2185175 m!2627743))

(declare-fun m!2627745 () Bool)

(assert (=> b!2185176 m!2627745))

(assert (=> b!2184436 m!2627059))

(check-sat (not bm!131401) (not b!2184456) (not b!2184754) (not bm!131373) (not b!2184600) (not bm!131432) (not d!654676) (not b!2185098) (not b!2185172) (not b!2184592) (not b!2184598) (not d!654686) (not b!2184628) (not b!2184635) (not bm!131372) (not b!2185156) (not d!654852) (not b!2185018) (not b!2185141) (not d!654868) (not d!654858) (not b!2185029) (not d!654862) (not b!2185061) (not d!654732) (not b!2184683) (not b!2185081) (not d!654844) (not bm!131399) (not b!2184780) (not b!2185166) (not b!2185164) (not b!2185068) (not b!2184771) (not b!2185020) (not d!654834) (not b!2185170) (not d!654744) (not b!2185145) (not bm!131400) (not b!2185097) (not b!2184684) (not bm!131397) (not bm!131365) (not bm!131396) (not b!2184749) (not b!2184713) (not b!2185082) (not b!2185107) (not b!2184772) tp_is_empty!9697 (not b!2185155) (not b!2185144) (not b!2185173) (not d!654750) (not setNonEmpty!18340) (not b!2185033) (not d!654846) (not b!2184775) (not b!2185146) (not b!2184591) (not b!2185073) (not b!2185118) (not bm!131394) (not b!2184757) (not b!2185176) (not b!2185019) (not b!2184768) (not d!654854) (not b!2185168) (not b!2184715) (not b!2185103) (not b!2184694) (not b!2185128) (not b!2185111) (not b!2184675) (not b!2185123) (not d!654850) (not d!654746) (not b!2185119) (not b!2185140) (not b!2184695) (not b!2185032) (not b!2184696) (not d!654684) (not b!2185102) (not b!2185174) (not b!2185116) (not d!654864) (not b!2184602) (not b!2185113) (not b!2185165) (not b!2185177) (not b!2184711) (not b!2185142) (not b!2185175) (not b!2184451) (not b!2185034) (not b!2184677) (not d!654836) (not d!654678) (not b!2184773) (not b!2185036) (not b!2184596) (not d!654742) (not b!2184778) (not d!654838) (not b!2185059) (not b!2184452) (not b!2185121) (not bm!131433) (not d!654840) (not b!2185069) (not d!654848) (not d!654866) (not b!2185162) (not b!2184436) (not b!2185120) (not b!2184761) (not b!2185075) (not b!2185077) (not d!654760) (not b!2185109) (not b!2185079) (not d!654874) (not bm!131436) (not d!654870) (not d!654872) (not b!2185169) (not b!2185027) (not d!654738) (not d!654682) (not d!654832) (not b!2185030) (not bm!131395) (not d!654716) (not b!2184750) (not d!654754) (not d!654718) (not b!2184712) (not b!2185099) (not bm!131398) (not bm!131437) (not b!2184769) (not d!654842) (not b!2184419) (not b!2185031) (not b!2184763) (not d!654736) (not b!2185157) (not b!2184762))
(check-sat)
