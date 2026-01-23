; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726618 () Bool)

(assert start!726618)

(declare-fun setIsEmpty!57024 () Bool)

(declare-fun setRes!57024 () Bool)

(assert (=> setIsEmpty!57024 setRes!57024))

(declare-fun b!7506178 () Bool)

(declare-fun e!4475684 () Bool)

(declare-fun tp_is_empty!49763 () Bool)

(declare-fun tp!2178908 () Bool)

(assert (=> b!7506178 (= e!4475684 (and tp_is_empty!49763 tp!2178908))))

(declare-fun b!7506179 () Bool)

(declare-datatypes ((Unit!166394 0))(
  ( (Unit!166395) )
))
(declare-fun e!4475686 () Unit!166394)

(declare-fun Unit!166396 () Unit!166394)

(assert (=> b!7506179 (= e!4475686 Unit!166396)))

(declare-fun lt!2635131 () Unit!166394)

(declare-datatypes ((C!39748 0))(
  ( (C!39749 (val!30272 Int)) )
))
(declare-datatypes ((List!72521 0))(
  ( (Nil!72397) (Cons!72397 (h!78845 C!39748) (t!387090 List!72521)) )
))
(declare-fun totalInput!779 () List!72521)

(declare-fun lemmaIsPrefixRefl!3844 (List!72521 List!72521) Unit!166394)

(assert (=> b!7506179 (= lt!2635131 (lemmaIsPrefixRefl!3844 totalInput!779 totalInput!779))))

(declare-fun isPrefix!6005 (List!72521 List!72521) Bool)

(assert (=> b!7506179 (isPrefix!6005 totalInput!779 totalInput!779)))

(declare-fun lt!2635124 () Unit!166394)

(declare-fun testedP!204 () List!72521)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1494 (List!72521 List!72521 List!72521) Unit!166394)

(assert (=> b!7506179 (= lt!2635124 (lemmaIsPrefixSameLengthThenSameList!1494 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7506179 false))

(declare-fun lt!2635125 () Int)

(declare-fun b!7506180 () Bool)

(declare-fun lt!2635127 () List!72521)

(declare-fun lt!2635118 () Int)

(declare-fun e!4475681 () Bool)

(declare-fun size!42282 (List!72521) Int)

(assert (=> b!7506180 (= e!4475681 (< (- lt!2635118 (size!42282 lt!2635127)) (- lt!2635118 lt!2635125)))))

(declare-fun b!7506181 () Bool)

(declare-fun e!4475682 () Bool)

(declare-fun e!4475685 () Bool)

(assert (=> b!7506181 (= e!4475682 e!4475685)))

(declare-fun res!3011469 () Bool)

(assert (=> b!7506181 (=> res!3011469 e!4475685)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19711 0))(
  ( (ElementMatch!19711 (c!1385746 C!39748)) (Concat!28556 (regOne!39934 Regex!19711) (regTwo!39934 Regex!19711)) (EmptyExpr!19711) (Star!19711 (reg!20040 Regex!19711)) (EmptyLang!19711) (Union!19711 (regOne!39935 Regex!19711) (regTwo!39935 Regex!19711)) )
))
(declare-datatypes ((List!72522 0))(
  ( (Nil!72398) (Cons!72398 (h!78846 Regex!19711) (t!387091 List!72522)) )
))
(declare-datatypes ((Context!16926 0))(
  ( (Context!16927 (exprs!8963 List!72522)) )
))
(declare-fun z!3716 () (InoxSet Context!16926))

(declare-fun lostCauseZipper!1399 ((InoxSet Context!16926)) Bool)

(assert (=> b!7506181 (= res!3011469 (lostCauseZipper!1399 z!3716))))

(declare-fun testedSuffix!164 () List!72521)

(declare-fun lt!2635119 () List!72521)

(assert (=> b!7506181 (and (= testedSuffix!164 lt!2635119) (= lt!2635119 testedSuffix!164))))

(declare-fun lt!2635120 () Unit!166394)

(declare-fun lemmaSamePrefixThenSameSuffix!2804 (List!72521 List!72521 List!72521 List!72521 List!72521) Unit!166394)

(assert (=> b!7506181 (= lt!2635120 (lemmaSamePrefixThenSameSuffix!2804 testedP!204 testedSuffix!164 testedP!204 lt!2635119 totalInput!779))))

(declare-fun getSuffix!3505 (List!72521 List!72521) List!72521)

(assert (=> b!7506181 (= lt!2635119 (getSuffix!3505 totalInput!779 testedP!204))))

(declare-fun b!7506182 () Bool)

(declare-fun e!4475683 () Bool)

(declare-fun tp!2178907 () Bool)

(assert (=> b!7506182 (= e!4475683 (and tp_is_empty!49763 tp!2178907))))

(declare-fun res!3011475 () Bool)

(declare-fun e!4475677 () Bool)

(assert (=> start!726618 (=> (not res!3011475) (not e!4475677))))

(declare-fun lt!2635122 () List!72521)

(assert (=> start!726618 (= res!3011475 (= lt!2635122 totalInput!779))))

(declare-fun ++!17340 (List!72521 List!72521) List!72521)

(assert (=> start!726618 (= lt!2635122 (++!17340 testedP!204 testedSuffix!164))))

(assert (=> start!726618 e!4475677))

(assert (=> start!726618 e!4475683))

(assert (=> start!726618 true))

(assert (=> start!726618 e!4475684))

(declare-fun e!4475688 () Bool)

(assert (=> start!726618 e!4475688))

(declare-fun condSetEmpty!57024 () Bool)

(assert (=> start!726618 (= condSetEmpty!57024 (= z!3716 ((as const (Array Context!16926 Bool)) false)))))

(assert (=> start!726618 setRes!57024))

(declare-fun b!7506183 () Bool)

(declare-fun res!3011471 () Bool)

(assert (=> b!7506183 (=> res!3011471 e!4475685)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7506183 (= res!3011471 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7506184 () Bool)

(declare-fun e!4475680 () Bool)

(declare-fun e!4475678 () Bool)

(assert (=> b!7506184 (= e!4475680 e!4475678)))

(declare-fun res!3011476 () Bool)

(assert (=> b!7506184 (=> (not res!3011476) (not e!4475678))))

(assert (=> b!7506184 (= res!3011476 (= totalInputSize!226 lt!2635118))))

(assert (=> b!7506184 (= lt!2635118 (size!42282 totalInput!779))))

(declare-fun b!7506185 () Bool)

(declare-fun tp!2178911 () Bool)

(assert (=> b!7506185 (= e!4475688 (and tp_is_empty!49763 tp!2178911))))

(declare-fun b!7506186 () Bool)

(declare-fun e!4475679 () Bool)

(declare-fun tp!2178910 () Bool)

(assert (=> b!7506186 (= e!4475679 tp!2178910)))

(declare-fun b!7506187 () Bool)

(declare-fun Unit!166397 () Unit!166394)

(assert (=> b!7506187 (= e!4475686 Unit!166397)))

(declare-fun b!7506188 () Bool)

(declare-fun e!4475687 () Bool)

(assert (=> b!7506188 (= e!4475685 e!4475687)))

(declare-fun res!3011474 () Bool)

(assert (=> b!7506188 (=> res!3011474 e!4475687)))

(assert (=> b!7506188 (= res!3011474 (>= lt!2635125 lt!2635118))))

(declare-fun lt!2635129 () Unit!166394)

(assert (=> b!7506188 (= lt!2635129 e!4475686)))

(declare-fun c!1385745 () Bool)

(assert (=> b!7506188 (= c!1385745 (= lt!2635125 lt!2635118))))

(assert (=> b!7506188 (<= lt!2635125 lt!2635118)))

(declare-fun lt!2635121 () Unit!166394)

(declare-fun lemmaIsPrefixThenSmallerEqSize!992 (List!72521 List!72521) Unit!166394)

(assert (=> b!7506188 (= lt!2635121 (lemmaIsPrefixThenSmallerEqSize!992 testedP!204 totalInput!779))))

(declare-fun b!7506189 () Bool)

(assert (=> b!7506189 (= e!4475687 e!4475681)))

(declare-fun res!3011473 () Bool)

(assert (=> b!7506189 (=> res!3011473 e!4475681)))

(declare-fun nullableZipper!3177 ((InoxSet Context!16926)) Bool)

(assert (=> b!7506189 (= res!3011473 (not (nullableZipper!3177 z!3716)))))

(declare-fun lt!2635128 () List!72521)

(assert (=> b!7506189 (= (++!17340 lt!2635127 lt!2635128) totalInput!779)))

(declare-fun lt!2635132 () C!39748)

(declare-fun lt!2635123 () Unit!166394)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3153 (List!72521 C!39748 List!72521 List!72521) Unit!166394)

(assert (=> b!7506189 (= lt!2635123 (lemmaMoveElementToOtherListKeepsConcatEq!3153 testedP!204 lt!2635132 lt!2635128 totalInput!779))))

(declare-fun tail!14995 (List!72521) List!72521)

(assert (=> b!7506189 (= lt!2635128 (tail!14995 testedSuffix!164))))

(declare-fun head!15428 (List!72521) C!39748)

(assert (=> b!7506189 (isPrefix!6005 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) totalInput!779)))

(declare-fun lt!2635126 () Unit!166394)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1122 (List!72521 List!72521) Unit!166394)

(assert (=> b!7506189 (= lt!2635126 (lemmaAddHeadSuffixToPrefixStillPrefix!1122 testedP!204 totalInput!779))))

(assert (=> b!7506189 (= lt!2635127 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)))))

(assert (=> b!7506189 (= lt!2635132 (head!15428 testedSuffix!164))))

(declare-fun b!7506190 () Bool)

(assert (=> b!7506190 (= e!4475678 (not e!4475682))))

(declare-fun res!3011470 () Bool)

(assert (=> b!7506190 (=> res!3011470 e!4475682)))

(assert (=> b!7506190 (= res!3011470 (not (isPrefix!6005 testedP!204 totalInput!779)))))

(assert (=> b!7506190 (isPrefix!6005 testedP!204 lt!2635122)))

(declare-fun lt!2635130 () Unit!166394)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3718 (List!72521 List!72521) Unit!166394)

(assert (=> b!7506190 (= lt!2635130 (lemmaConcatTwoListThenFirstIsPrefix!3718 testedP!204 testedSuffix!164))))

(declare-fun b!7506191 () Bool)

(assert (=> b!7506191 (= e!4475677 e!4475680)))

(declare-fun res!3011472 () Bool)

(assert (=> b!7506191 (=> (not res!3011472) (not e!4475680))))

(assert (=> b!7506191 (= res!3011472 (= testedPSize!164 lt!2635125))))

(assert (=> b!7506191 (= lt!2635125 (size!42282 testedP!204))))

(declare-fun tp!2178909 () Bool)

(declare-fun setNonEmpty!57024 () Bool)

(declare-fun setElem!57024 () Context!16926)

(declare-fun inv!92507 (Context!16926) Bool)

(assert (=> setNonEmpty!57024 (= setRes!57024 (and tp!2178909 (inv!92507 setElem!57024) e!4475679))))

(declare-fun setRest!57024 () (InoxSet Context!16926))

(assert (=> setNonEmpty!57024 (= z!3716 ((_ map or) (store ((as const (Array Context!16926 Bool)) false) setElem!57024 true) setRest!57024))))

(assert (= (and start!726618 res!3011475) b!7506191))

(assert (= (and b!7506191 res!3011472) b!7506184))

(assert (= (and b!7506184 res!3011476) b!7506190))

(assert (= (and b!7506190 (not res!3011470)) b!7506181))

(assert (= (and b!7506181 (not res!3011469)) b!7506183))

(assert (= (and b!7506183 (not res!3011471)) b!7506188))

(assert (= (and b!7506188 c!1385745) b!7506179))

(assert (= (and b!7506188 (not c!1385745)) b!7506187))

(assert (= (and b!7506188 (not res!3011474)) b!7506189))

(assert (= (and b!7506189 (not res!3011473)) b!7506180))

(get-info :version)

(assert (= (and start!726618 ((_ is Cons!72397) testedSuffix!164)) b!7506182))

(assert (= (and start!726618 ((_ is Cons!72397) totalInput!779)) b!7506178))

(assert (= (and start!726618 ((_ is Cons!72397) testedP!204)) b!7506185))

(assert (= (and start!726618 condSetEmpty!57024) setIsEmpty!57024))

(assert (= (and start!726618 (not condSetEmpty!57024)) setNonEmpty!57024))

(assert (= setNonEmpty!57024 b!7506186))

(declare-fun m!8088452 () Bool)

(assert (=> b!7506180 m!8088452))

(declare-fun m!8088454 () Bool)

(assert (=> b!7506179 m!8088454))

(declare-fun m!8088456 () Bool)

(assert (=> b!7506179 m!8088456))

(declare-fun m!8088458 () Bool)

(assert (=> b!7506179 m!8088458))

(declare-fun m!8088460 () Bool)

(assert (=> b!7506191 m!8088460))

(declare-fun m!8088462 () Bool)

(assert (=> b!7506190 m!8088462))

(declare-fun m!8088464 () Bool)

(assert (=> b!7506190 m!8088464))

(declare-fun m!8088466 () Bool)

(assert (=> b!7506190 m!8088466))

(declare-fun m!8088468 () Bool)

(assert (=> b!7506189 m!8088468))

(declare-fun m!8088470 () Bool)

(assert (=> b!7506189 m!8088470))

(declare-fun m!8088472 () Bool)

(assert (=> b!7506189 m!8088472))

(assert (=> b!7506189 m!8088468))

(declare-fun m!8088474 () Bool)

(assert (=> b!7506189 m!8088474))

(declare-fun m!8088476 () Bool)

(assert (=> b!7506189 m!8088476))

(declare-fun m!8088478 () Bool)

(assert (=> b!7506189 m!8088478))

(declare-fun m!8088480 () Bool)

(assert (=> b!7506189 m!8088480))

(declare-fun m!8088482 () Bool)

(assert (=> b!7506189 m!8088482))

(declare-fun m!8088484 () Bool)

(assert (=> b!7506189 m!8088484))

(declare-fun m!8088486 () Bool)

(assert (=> b!7506189 m!8088486))

(declare-fun m!8088488 () Bool)

(assert (=> b!7506184 m!8088488))

(declare-fun m!8088490 () Bool)

(assert (=> start!726618 m!8088490))

(declare-fun m!8088492 () Bool)

(assert (=> b!7506188 m!8088492))

(declare-fun m!8088494 () Bool)

(assert (=> setNonEmpty!57024 m!8088494))

(declare-fun m!8088496 () Bool)

(assert (=> b!7506181 m!8088496))

(declare-fun m!8088498 () Bool)

(assert (=> b!7506181 m!8088498))

(declare-fun m!8088500 () Bool)

(assert (=> b!7506181 m!8088500))

(check-sat (not b!7506181) (not setNonEmpty!57024) (not b!7506191) (not b!7506184) (not b!7506180) (not b!7506186) (not b!7506182) tp_is_empty!49763 (not b!7506185) (not b!7506188) (not b!7506190) (not b!7506178) (not start!726618) (not b!7506179) (not b!7506189))
(check-sat)
(get-model)

(declare-fun d!2304074 () Bool)

(declare-fun e!4475694 () Bool)

(assert (=> d!2304074 e!4475694))

(declare-fun res!3011482 () Bool)

(assert (=> d!2304074 (=> (not res!3011482) (not e!4475694))))

(declare-fun lt!2635135 () List!72521)

(declare-fun content!15304 (List!72521) (InoxSet C!39748))

(assert (=> d!2304074 (= res!3011482 (= (content!15304 lt!2635135) ((_ map or) (content!15304 testedP!204) (content!15304 (Cons!72397 lt!2635132 Nil!72397)))))))

(declare-fun e!4475693 () List!72521)

(assert (=> d!2304074 (= lt!2635135 e!4475693)))

(declare-fun c!1385749 () Bool)

(assert (=> d!2304074 (= c!1385749 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304074 (= (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)) lt!2635135)))

(declare-fun b!7506202 () Bool)

(declare-fun res!3011481 () Bool)

(assert (=> b!7506202 (=> (not res!3011481) (not e!4475694))))

(assert (=> b!7506202 (= res!3011481 (= (size!42282 lt!2635135) (+ (size!42282 testedP!204) (size!42282 (Cons!72397 lt!2635132 Nil!72397)))))))

(declare-fun b!7506200 () Bool)

(assert (=> b!7506200 (= e!4475693 (Cons!72397 lt!2635132 Nil!72397))))

(declare-fun b!7506203 () Bool)

(assert (=> b!7506203 (= e!4475694 (or (not (= (Cons!72397 lt!2635132 Nil!72397) Nil!72397)) (= lt!2635135 testedP!204)))))

(declare-fun b!7506201 () Bool)

(assert (=> b!7506201 (= e!4475693 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) (Cons!72397 lt!2635132 Nil!72397))))))

(assert (= (and d!2304074 c!1385749) b!7506200))

(assert (= (and d!2304074 (not c!1385749)) b!7506201))

(assert (= (and d!2304074 res!3011482) b!7506202))

(assert (= (and b!7506202 res!3011481) b!7506203))

(declare-fun m!8088502 () Bool)

(assert (=> d!2304074 m!8088502))

(declare-fun m!8088504 () Bool)

(assert (=> d!2304074 m!8088504))

(declare-fun m!8088506 () Bool)

(assert (=> d!2304074 m!8088506))

(declare-fun m!8088508 () Bool)

(assert (=> b!7506202 m!8088508))

(assert (=> b!7506202 m!8088460))

(declare-fun m!8088510 () Bool)

(assert (=> b!7506202 m!8088510))

(declare-fun m!8088512 () Bool)

(assert (=> b!7506201 m!8088512))

(assert (=> b!7506189 d!2304074))

(declare-fun d!2304078 () Bool)

(declare-fun e!4475696 () Bool)

(assert (=> d!2304078 e!4475696))

(declare-fun res!3011484 () Bool)

(assert (=> d!2304078 (=> (not res!3011484) (not e!4475696))))

(declare-fun lt!2635136 () List!72521)

(assert (=> d!2304078 (= res!3011484 (= (content!15304 lt!2635136) ((_ map or) (content!15304 lt!2635127) (content!15304 lt!2635128))))))

(declare-fun e!4475695 () List!72521)

(assert (=> d!2304078 (= lt!2635136 e!4475695)))

(declare-fun c!1385750 () Bool)

(assert (=> d!2304078 (= c!1385750 ((_ is Nil!72397) lt!2635127))))

(assert (=> d!2304078 (= (++!17340 lt!2635127 lt!2635128) lt!2635136)))

(declare-fun b!7506206 () Bool)

(declare-fun res!3011483 () Bool)

(assert (=> b!7506206 (=> (not res!3011483) (not e!4475696))))

(assert (=> b!7506206 (= res!3011483 (= (size!42282 lt!2635136) (+ (size!42282 lt!2635127) (size!42282 lt!2635128))))))

(declare-fun b!7506204 () Bool)

(assert (=> b!7506204 (= e!4475695 lt!2635128)))

(declare-fun b!7506207 () Bool)

(assert (=> b!7506207 (= e!4475696 (or (not (= lt!2635128 Nil!72397)) (= lt!2635136 lt!2635127)))))

(declare-fun b!7506205 () Bool)

(assert (=> b!7506205 (= e!4475695 (Cons!72397 (h!78845 lt!2635127) (++!17340 (t!387090 lt!2635127) lt!2635128)))))

(assert (= (and d!2304078 c!1385750) b!7506204))

(assert (= (and d!2304078 (not c!1385750)) b!7506205))

(assert (= (and d!2304078 res!3011484) b!7506206))

(assert (= (and b!7506206 res!3011483) b!7506207))

(declare-fun m!8088514 () Bool)

(assert (=> d!2304078 m!8088514))

(declare-fun m!8088516 () Bool)

(assert (=> d!2304078 m!8088516))

(declare-fun m!8088518 () Bool)

(assert (=> d!2304078 m!8088518))

(declare-fun m!8088520 () Bool)

(assert (=> b!7506206 m!8088520))

(assert (=> b!7506206 m!8088452))

(declare-fun m!8088522 () Bool)

(assert (=> b!7506206 m!8088522))

(declare-fun m!8088524 () Bool)

(assert (=> b!7506205 m!8088524))

(assert (=> b!7506189 d!2304078))

(declare-fun d!2304080 () Bool)

(declare-fun e!4475698 () Bool)

(assert (=> d!2304080 e!4475698))

(declare-fun res!3011486 () Bool)

(assert (=> d!2304080 (=> (not res!3011486) (not e!4475698))))

(declare-fun lt!2635137 () List!72521)

(assert (=> d!2304080 (= res!3011486 (= (content!15304 lt!2635137) ((_ map or) (content!15304 testedP!204) (content!15304 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(declare-fun e!4475697 () List!72521)

(assert (=> d!2304080 (= lt!2635137 e!4475697)))

(declare-fun c!1385751 () Bool)

(assert (=> d!2304080 (= c!1385751 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304080 (= (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) lt!2635137)))

(declare-fun b!7506210 () Bool)

(declare-fun res!3011485 () Bool)

(assert (=> b!7506210 (=> (not res!3011485) (not e!4475698))))

(assert (=> b!7506210 (= res!3011485 (= (size!42282 lt!2635137) (+ (size!42282 testedP!204) (size!42282 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(declare-fun b!7506208 () Bool)

(assert (=> b!7506208 (= e!4475697 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))

(declare-fun b!7506211 () Bool)

(assert (=> b!7506211 (= e!4475698 (or (not (= (Cons!72397 (head!15428 lt!2635119) Nil!72397) Nil!72397)) (= lt!2635137 testedP!204)))))

(declare-fun b!7506209 () Bool)

(assert (=> b!7506209 (= e!4475697 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (= (and d!2304080 c!1385751) b!7506208))

(assert (= (and d!2304080 (not c!1385751)) b!7506209))

(assert (= (and d!2304080 res!3011486) b!7506210))

(assert (= (and b!7506210 res!3011485) b!7506211))

(declare-fun m!8088526 () Bool)

(assert (=> d!2304080 m!8088526))

(assert (=> d!2304080 m!8088504))

(declare-fun m!8088528 () Bool)

(assert (=> d!2304080 m!8088528))

(declare-fun m!8088530 () Bool)

(assert (=> b!7506210 m!8088530))

(assert (=> b!7506210 m!8088460))

(declare-fun m!8088532 () Bool)

(assert (=> b!7506210 m!8088532))

(declare-fun m!8088534 () Bool)

(assert (=> b!7506209 m!8088534))

(assert (=> b!7506189 d!2304080))

(declare-fun d!2304082 () Bool)

(declare-fun lambda!465409 () Int)

(declare-fun exists!4863 ((InoxSet Context!16926) Int) Bool)

(assert (=> d!2304082 (= (nullableZipper!3177 z!3716) (exists!4863 z!3716 lambda!465409))))

(declare-fun bs!1938175 () Bool)

(assert (= bs!1938175 d!2304082))

(declare-fun m!8088664 () Bool)

(assert (=> bs!1938175 m!8088664))

(assert (=> b!7506189 d!2304082))

(declare-fun d!2304132 () Bool)

(assert (=> d!2304132 (= (tail!14995 testedSuffix!164) (t!387090 testedSuffix!164))))

(assert (=> b!7506189 d!2304132))

(declare-fun d!2304134 () Bool)

(assert (=> d!2304134 (= (head!15428 lt!2635119) (h!78845 lt!2635119))))

(assert (=> b!7506189 d!2304134))

(declare-fun e!4475762 () Bool)

(declare-fun b!7506309 () Bool)

(assert (=> b!7506309 (= e!4475762 (isPrefix!6005 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) (tail!14995 totalInput!779)))))

(declare-fun d!2304136 () Bool)

(declare-fun e!4475763 () Bool)

(assert (=> d!2304136 e!4475763))

(declare-fun res!3011533 () Bool)

(assert (=> d!2304136 (=> res!3011533 e!4475763)))

(declare-fun lt!2635205 () Bool)

(assert (=> d!2304136 (= res!3011533 (not lt!2635205))))

(declare-fun e!4475761 () Bool)

(assert (=> d!2304136 (= lt!2635205 e!4475761)))

(declare-fun res!3011531 () Bool)

(assert (=> d!2304136 (=> res!3011531 e!4475761)))

(assert (=> d!2304136 (= res!3011531 ((_ is Nil!72397) (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (=> d!2304136 (= (isPrefix!6005 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) totalInput!779) lt!2635205)))

(declare-fun b!7506308 () Bool)

(declare-fun res!3011534 () Bool)

(assert (=> b!7506308 (=> (not res!3011534) (not e!4475762))))

(assert (=> b!7506308 (= res!3011534 (= (head!15428 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) (head!15428 totalInput!779)))))

(declare-fun b!7506307 () Bool)

(assert (=> b!7506307 (= e!4475761 e!4475762)))

(declare-fun res!3011532 () Bool)

(assert (=> b!7506307 (=> (not res!3011532) (not e!4475762))))

(assert (=> b!7506307 (= res!3011532 (not ((_ is Nil!72397) totalInput!779)))))

(declare-fun b!7506310 () Bool)

(assert (=> b!7506310 (= e!4475763 (>= (size!42282 totalInput!779) (size!42282 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(assert (= (and d!2304136 (not res!3011531)) b!7506307))

(assert (= (and b!7506307 res!3011532) b!7506308))

(assert (= (and b!7506308 res!3011534) b!7506309))

(assert (= (and d!2304136 (not res!3011533)) b!7506310))

(assert (=> b!7506309 m!8088468))

(declare-fun m!8088666 () Bool)

(assert (=> b!7506309 m!8088666))

(declare-fun m!8088668 () Bool)

(assert (=> b!7506309 m!8088668))

(assert (=> b!7506309 m!8088666))

(assert (=> b!7506309 m!8088668))

(declare-fun m!8088670 () Bool)

(assert (=> b!7506309 m!8088670))

(assert (=> b!7506308 m!8088468))

(declare-fun m!8088672 () Bool)

(assert (=> b!7506308 m!8088672))

(declare-fun m!8088674 () Bool)

(assert (=> b!7506308 m!8088674))

(assert (=> b!7506310 m!8088488))

(assert (=> b!7506310 m!8088468))

(declare-fun m!8088676 () Bool)

(assert (=> b!7506310 m!8088676))

(assert (=> b!7506189 d!2304136))

(declare-fun d!2304138 () Bool)

(assert (=> d!2304138 (isPrefix!6005 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)) totalInput!779)))

(declare-fun lt!2635208 () Unit!166394)

(declare-fun choose!58120 (List!72521 List!72521) Unit!166394)

(assert (=> d!2304138 (= lt!2635208 (choose!58120 testedP!204 totalInput!779))))

(assert (=> d!2304138 (isPrefix!6005 testedP!204 totalInput!779)))

(assert (=> d!2304138 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1122 testedP!204 totalInput!779) lt!2635208)))

(declare-fun bs!1938176 () Bool)

(assert (= bs!1938176 d!2304138))

(assert (=> bs!1938176 m!8088500))

(assert (=> bs!1938176 m!8088500))

(declare-fun m!8088678 () Bool)

(assert (=> bs!1938176 m!8088678))

(declare-fun m!8088680 () Bool)

(assert (=> bs!1938176 m!8088680))

(declare-fun m!8088682 () Bool)

(assert (=> bs!1938176 m!8088682))

(declare-fun m!8088684 () Bool)

(assert (=> bs!1938176 m!8088684))

(assert (=> bs!1938176 m!8088462))

(assert (=> bs!1938176 m!8088680))

(assert (=> b!7506189 d!2304138))

(declare-fun d!2304140 () Bool)

(assert (=> d!2304140 (= (head!15428 testedSuffix!164) (h!78845 testedSuffix!164))))

(assert (=> b!7506189 d!2304140))

(declare-fun d!2304142 () Bool)

(assert (=> d!2304142 (= (++!17340 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)) lt!2635128) totalInput!779)))

(declare-fun lt!2635211 () Unit!166394)

(declare-fun choose!58121 (List!72521 C!39748 List!72521 List!72521) Unit!166394)

(assert (=> d!2304142 (= lt!2635211 (choose!58121 testedP!204 lt!2635132 lt!2635128 totalInput!779))))

(assert (=> d!2304142 (= (++!17340 testedP!204 (Cons!72397 lt!2635132 lt!2635128)) totalInput!779)))

(assert (=> d!2304142 (= (lemmaMoveElementToOtherListKeepsConcatEq!3153 testedP!204 lt!2635132 lt!2635128 totalInput!779) lt!2635211)))

(declare-fun bs!1938177 () Bool)

(assert (= bs!1938177 d!2304142))

(assert (=> bs!1938177 m!8088480))

(assert (=> bs!1938177 m!8088480))

(declare-fun m!8088686 () Bool)

(assert (=> bs!1938177 m!8088686))

(declare-fun m!8088688 () Bool)

(assert (=> bs!1938177 m!8088688))

(declare-fun m!8088690 () Bool)

(assert (=> bs!1938177 m!8088690))

(assert (=> b!7506189 d!2304142))

(declare-fun d!2304144 () Bool)

(declare-fun lt!2635214 () Int)

(assert (=> d!2304144 (>= lt!2635214 0)))

(declare-fun e!4475766 () Int)

(assert (=> d!2304144 (= lt!2635214 e!4475766)))

(declare-fun c!1385783 () Bool)

(assert (=> d!2304144 (= c!1385783 ((_ is Nil!72397) totalInput!779))))

(assert (=> d!2304144 (= (size!42282 totalInput!779) lt!2635214)))

(declare-fun b!7506315 () Bool)

(assert (=> b!7506315 (= e!4475766 0)))

(declare-fun b!7506316 () Bool)

(assert (=> b!7506316 (= e!4475766 (+ 1 (size!42282 (t!387090 totalInput!779))))))

(assert (= (and d!2304144 c!1385783) b!7506315))

(assert (= (and d!2304144 (not c!1385783)) b!7506316))

(declare-fun m!8088692 () Bool)

(assert (=> b!7506316 m!8088692))

(assert (=> b!7506184 d!2304144))

(declare-fun d!2304146 () Bool)

(assert (=> d!2304146 (isPrefix!6005 totalInput!779 totalInput!779)))

(declare-fun lt!2635217 () Unit!166394)

(declare-fun choose!58122 (List!72521 List!72521) Unit!166394)

(assert (=> d!2304146 (= lt!2635217 (choose!58122 totalInput!779 totalInput!779))))

(assert (=> d!2304146 (= (lemmaIsPrefixRefl!3844 totalInput!779 totalInput!779) lt!2635217)))

(declare-fun bs!1938178 () Bool)

(assert (= bs!1938178 d!2304146))

(assert (=> bs!1938178 m!8088456))

(declare-fun m!8088694 () Bool)

(assert (=> bs!1938178 m!8088694))

(assert (=> b!7506179 d!2304146))

(declare-fun b!7506319 () Bool)

(declare-fun e!4475768 () Bool)

(assert (=> b!7506319 (= e!4475768 (isPrefix!6005 (tail!14995 totalInput!779) (tail!14995 totalInput!779)))))

(declare-fun d!2304148 () Bool)

(declare-fun e!4475769 () Bool)

(assert (=> d!2304148 e!4475769))

(declare-fun res!3011537 () Bool)

(assert (=> d!2304148 (=> res!3011537 e!4475769)))

(declare-fun lt!2635218 () Bool)

(assert (=> d!2304148 (= res!3011537 (not lt!2635218))))

(declare-fun e!4475767 () Bool)

(assert (=> d!2304148 (= lt!2635218 e!4475767)))

(declare-fun res!3011535 () Bool)

(assert (=> d!2304148 (=> res!3011535 e!4475767)))

(assert (=> d!2304148 (= res!3011535 ((_ is Nil!72397) totalInput!779))))

(assert (=> d!2304148 (= (isPrefix!6005 totalInput!779 totalInput!779) lt!2635218)))

(declare-fun b!7506318 () Bool)

(declare-fun res!3011538 () Bool)

(assert (=> b!7506318 (=> (not res!3011538) (not e!4475768))))

(assert (=> b!7506318 (= res!3011538 (= (head!15428 totalInput!779) (head!15428 totalInput!779)))))

(declare-fun b!7506317 () Bool)

(assert (=> b!7506317 (= e!4475767 e!4475768)))

(declare-fun res!3011536 () Bool)

(assert (=> b!7506317 (=> (not res!3011536) (not e!4475768))))

(assert (=> b!7506317 (= res!3011536 (not ((_ is Nil!72397) totalInput!779)))))

(declare-fun b!7506320 () Bool)

(assert (=> b!7506320 (= e!4475769 (>= (size!42282 totalInput!779) (size!42282 totalInput!779)))))

(assert (= (and d!2304148 (not res!3011535)) b!7506317))

(assert (= (and b!7506317 res!3011536) b!7506318))

(assert (= (and b!7506318 res!3011538) b!7506319))

(assert (= (and d!2304148 (not res!3011537)) b!7506320))

(assert (=> b!7506319 m!8088668))

(assert (=> b!7506319 m!8088668))

(assert (=> b!7506319 m!8088668))

(assert (=> b!7506319 m!8088668))

(declare-fun m!8088696 () Bool)

(assert (=> b!7506319 m!8088696))

(assert (=> b!7506318 m!8088674))

(assert (=> b!7506318 m!8088674))

(assert (=> b!7506320 m!8088488))

(assert (=> b!7506320 m!8088488))

(assert (=> b!7506179 d!2304148))

(declare-fun d!2304150 () Bool)

(assert (=> d!2304150 (= totalInput!779 testedP!204)))

(declare-fun lt!2635221 () Unit!166394)

(declare-fun choose!58123 (List!72521 List!72521 List!72521) Unit!166394)

(assert (=> d!2304150 (= lt!2635221 (choose!58123 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2304150 (isPrefix!6005 totalInput!779 totalInput!779)))

(assert (=> d!2304150 (= (lemmaIsPrefixSameLengthThenSameList!1494 totalInput!779 testedP!204 totalInput!779) lt!2635221)))

(declare-fun bs!1938179 () Bool)

(assert (= bs!1938179 d!2304150))

(declare-fun m!8088698 () Bool)

(assert (=> bs!1938179 m!8088698))

(assert (=> bs!1938179 m!8088456))

(assert (=> b!7506179 d!2304150))

(declare-fun b!7506323 () Bool)

(declare-fun e!4475771 () Bool)

(assert (=> b!7506323 (= e!4475771 (isPrefix!6005 (tail!14995 testedP!204) (tail!14995 totalInput!779)))))

(declare-fun d!2304152 () Bool)

(declare-fun e!4475772 () Bool)

(assert (=> d!2304152 e!4475772))

(declare-fun res!3011541 () Bool)

(assert (=> d!2304152 (=> res!3011541 e!4475772)))

(declare-fun lt!2635222 () Bool)

(assert (=> d!2304152 (= res!3011541 (not lt!2635222))))

(declare-fun e!4475770 () Bool)

(assert (=> d!2304152 (= lt!2635222 e!4475770)))

(declare-fun res!3011539 () Bool)

(assert (=> d!2304152 (=> res!3011539 e!4475770)))

(assert (=> d!2304152 (= res!3011539 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304152 (= (isPrefix!6005 testedP!204 totalInput!779) lt!2635222)))

(declare-fun b!7506322 () Bool)

(declare-fun res!3011542 () Bool)

(assert (=> b!7506322 (=> (not res!3011542) (not e!4475771))))

(assert (=> b!7506322 (= res!3011542 (= (head!15428 testedP!204) (head!15428 totalInput!779)))))

(declare-fun b!7506321 () Bool)

(assert (=> b!7506321 (= e!4475770 e!4475771)))

(declare-fun res!3011540 () Bool)

(assert (=> b!7506321 (=> (not res!3011540) (not e!4475771))))

(assert (=> b!7506321 (= res!3011540 (not ((_ is Nil!72397) totalInput!779)))))

(declare-fun b!7506324 () Bool)

(assert (=> b!7506324 (= e!4475772 (>= (size!42282 totalInput!779) (size!42282 testedP!204)))))

(assert (= (and d!2304152 (not res!3011539)) b!7506321))

(assert (= (and b!7506321 res!3011540) b!7506322))

(assert (= (and b!7506322 res!3011542) b!7506323))

(assert (= (and d!2304152 (not res!3011541)) b!7506324))

(declare-fun m!8088700 () Bool)

(assert (=> b!7506323 m!8088700))

(assert (=> b!7506323 m!8088668))

(assert (=> b!7506323 m!8088700))

(assert (=> b!7506323 m!8088668))

(declare-fun m!8088702 () Bool)

(assert (=> b!7506323 m!8088702))

(declare-fun m!8088704 () Bool)

(assert (=> b!7506322 m!8088704))

(assert (=> b!7506322 m!8088674))

(assert (=> b!7506324 m!8088488))

(assert (=> b!7506324 m!8088460))

(assert (=> b!7506190 d!2304152))

(declare-fun b!7506327 () Bool)

(declare-fun e!4475774 () Bool)

(assert (=> b!7506327 (= e!4475774 (isPrefix!6005 (tail!14995 testedP!204) (tail!14995 lt!2635122)))))

(declare-fun d!2304154 () Bool)

(declare-fun e!4475775 () Bool)

(assert (=> d!2304154 e!4475775))

(declare-fun res!3011545 () Bool)

(assert (=> d!2304154 (=> res!3011545 e!4475775)))

(declare-fun lt!2635223 () Bool)

(assert (=> d!2304154 (= res!3011545 (not lt!2635223))))

(declare-fun e!4475773 () Bool)

(assert (=> d!2304154 (= lt!2635223 e!4475773)))

(declare-fun res!3011543 () Bool)

(assert (=> d!2304154 (=> res!3011543 e!4475773)))

(assert (=> d!2304154 (= res!3011543 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304154 (= (isPrefix!6005 testedP!204 lt!2635122) lt!2635223)))

(declare-fun b!7506326 () Bool)

(declare-fun res!3011546 () Bool)

(assert (=> b!7506326 (=> (not res!3011546) (not e!4475774))))

(assert (=> b!7506326 (= res!3011546 (= (head!15428 testedP!204) (head!15428 lt!2635122)))))

(declare-fun b!7506325 () Bool)

(assert (=> b!7506325 (= e!4475773 e!4475774)))

(declare-fun res!3011544 () Bool)

(assert (=> b!7506325 (=> (not res!3011544) (not e!4475774))))

(assert (=> b!7506325 (= res!3011544 (not ((_ is Nil!72397) lt!2635122)))))

(declare-fun b!7506328 () Bool)

(assert (=> b!7506328 (= e!4475775 (>= (size!42282 lt!2635122) (size!42282 testedP!204)))))

(assert (= (and d!2304154 (not res!3011543)) b!7506325))

(assert (= (and b!7506325 res!3011544) b!7506326))

(assert (= (and b!7506326 res!3011546) b!7506327))

(assert (= (and d!2304154 (not res!3011545)) b!7506328))

(assert (=> b!7506327 m!8088700))

(declare-fun m!8088706 () Bool)

(assert (=> b!7506327 m!8088706))

(assert (=> b!7506327 m!8088700))

(assert (=> b!7506327 m!8088706))

(declare-fun m!8088708 () Bool)

(assert (=> b!7506327 m!8088708))

(assert (=> b!7506326 m!8088704))

(declare-fun m!8088710 () Bool)

(assert (=> b!7506326 m!8088710))

(declare-fun m!8088712 () Bool)

(assert (=> b!7506328 m!8088712))

(assert (=> b!7506328 m!8088460))

(assert (=> b!7506190 d!2304154))

(declare-fun d!2304156 () Bool)

(assert (=> d!2304156 (isPrefix!6005 testedP!204 (++!17340 testedP!204 testedSuffix!164))))

(declare-fun lt!2635226 () Unit!166394)

(declare-fun choose!58124 (List!72521 List!72521) Unit!166394)

(assert (=> d!2304156 (= lt!2635226 (choose!58124 testedP!204 testedSuffix!164))))

(assert (=> d!2304156 (= (lemmaConcatTwoListThenFirstIsPrefix!3718 testedP!204 testedSuffix!164) lt!2635226)))

(declare-fun bs!1938180 () Bool)

(assert (= bs!1938180 d!2304156))

(assert (=> bs!1938180 m!8088490))

(assert (=> bs!1938180 m!8088490))

(declare-fun m!8088714 () Bool)

(assert (=> bs!1938180 m!8088714))

(declare-fun m!8088716 () Bool)

(assert (=> bs!1938180 m!8088716))

(assert (=> b!7506190 d!2304156))

(declare-fun d!2304158 () Bool)

(declare-fun lt!2635227 () Int)

(assert (=> d!2304158 (>= lt!2635227 0)))

(declare-fun e!4475776 () Int)

(assert (=> d!2304158 (= lt!2635227 e!4475776)))

(declare-fun c!1385784 () Bool)

(assert (=> d!2304158 (= c!1385784 ((_ is Nil!72397) lt!2635127))))

(assert (=> d!2304158 (= (size!42282 lt!2635127) lt!2635227)))

(declare-fun b!7506329 () Bool)

(assert (=> b!7506329 (= e!4475776 0)))

(declare-fun b!7506330 () Bool)

(assert (=> b!7506330 (= e!4475776 (+ 1 (size!42282 (t!387090 lt!2635127))))))

(assert (= (and d!2304158 c!1385784) b!7506329))

(assert (= (and d!2304158 (not c!1385784)) b!7506330))

(declare-fun m!8088718 () Bool)

(assert (=> b!7506330 m!8088718))

(assert (=> b!7506180 d!2304158))

(declare-fun d!2304160 () Bool)

(declare-fun lt!2635228 () Int)

(assert (=> d!2304160 (>= lt!2635228 0)))

(declare-fun e!4475777 () Int)

(assert (=> d!2304160 (= lt!2635228 e!4475777)))

(declare-fun c!1385785 () Bool)

(assert (=> d!2304160 (= c!1385785 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304160 (= (size!42282 testedP!204) lt!2635228)))

(declare-fun b!7506331 () Bool)

(assert (=> b!7506331 (= e!4475777 0)))

(declare-fun b!7506332 () Bool)

(assert (=> b!7506332 (= e!4475777 (+ 1 (size!42282 (t!387090 testedP!204))))))

(assert (= (and d!2304160 c!1385785) b!7506331))

(assert (= (and d!2304160 (not c!1385785)) b!7506332))

(declare-fun m!8088720 () Bool)

(assert (=> b!7506332 m!8088720))

(assert (=> b!7506191 d!2304160))

(declare-fun bs!1938181 () Bool)

(declare-fun d!2304162 () Bool)

(assert (= bs!1938181 (and d!2304162 d!2304082)))

(declare-fun lambda!465422 () Int)

(assert (=> bs!1938181 (not (= lambda!465422 lambda!465409))))

(declare-fun bs!1938182 () Bool)

(declare-fun b!7506337 () Bool)

(assert (= bs!1938182 (and b!7506337 d!2304082)))

(declare-fun lambda!465423 () Int)

(assert (=> bs!1938182 (not (= lambda!465423 lambda!465409))))

(declare-fun bs!1938183 () Bool)

(assert (= bs!1938183 (and b!7506337 d!2304162)))

(assert (=> bs!1938183 (not (= lambda!465423 lambda!465422))))

(declare-fun bs!1938184 () Bool)

(declare-fun b!7506338 () Bool)

(assert (= bs!1938184 (and b!7506338 d!2304082)))

(declare-fun lambda!465424 () Int)

(assert (=> bs!1938184 (not (= lambda!465424 lambda!465409))))

(declare-fun bs!1938185 () Bool)

(assert (= bs!1938185 (and b!7506338 d!2304162)))

(assert (=> bs!1938185 (not (= lambda!465424 lambda!465422))))

(declare-fun bs!1938186 () Bool)

(assert (= bs!1938186 (and b!7506338 b!7506337)))

(assert (=> bs!1938186 (= lambda!465424 lambda!465423)))

(declare-fun bm!688722 () Bool)

(declare-datatypes ((List!72524 0))(
  ( (Nil!72400) (Cons!72400 (h!78848 Context!16926) (t!387093 List!72524)) )
))
(declare-fun call!688727 () List!72524)

(declare-fun toList!11832 ((InoxSet Context!16926)) List!72524)

(assert (=> bm!688722 (= call!688727 (toList!11832 z!3716))))

(declare-fun e!4475784 () Unit!166394)

(declare-fun Unit!166400 () Unit!166394)

(assert (=> b!7506338 (= e!4475784 Unit!166400)))

(declare-fun lt!2635245 () List!72524)

(assert (=> b!7506338 (= lt!2635245 call!688727)))

(declare-fun lt!2635251 () Unit!166394)

(declare-fun lemmaForallThenNotExists!470 (List!72524 Int) Unit!166394)

(assert (=> b!7506338 (= lt!2635251 (lemmaForallThenNotExists!470 lt!2635245 lambda!465422))))

(declare-fun call!688728 () Bool)

(assert (=> b!7506338 (not call!688728)))

(declare-fun lt!2635250 () Unit!166394)

(assert (=> b!7506338 (= lt!2635250 lt!2635251)))

(declare-fun lt!2635248 () Bool)

(declare-datatypes ((Option!17228 0))(
  ( (None!17227) (Some!17227 (v!54356 List!72521)) )
))
(declare-fun isEmpty!41312 (Option!17228) Bool)

(declare-fun getLanguageWitness!1050 ((InoxSet Context!16926)) Option!17228)

(assert (=> d!2304162 (= lt!2635248 (isEmpty!41312 (getLanguageWitness!1050 z!3716)))))

(declare-fun forall!18289 ((InoxSet Context!16926) Int) Bool)

(assert (=> d!2304162 (= lt!2635248 (forall!18289 z!3716 lambda!465422))))

(declare-fun lt!2635246 () Unit!166394)

(assert (=> d!2304162 (= lt!2635246 e!4475784)))

(declare-fun c!1385796 () Bool)

(assert (=> d!2304162 (= c!1385796 (not (forall!18289 z!3716 lambda!465422)))))

(assert (=> d!2304162 (= (lostCauseZipper!1399 z!3716) lt!2635248)))

(declare-fun bm!688723 () Bool)

(declare-fun lt!2635252 () List!72524)

(declare-fun exists!4864 (List!72524 Int) Bool)

(assert (=> bm!688723 (= call!688728 (exists!4864 (ite c!1385796 lt!2635252 lt!2635245) (ite c!1385796 lambda!465423 lambda!465424)))))

(declare-fun Unit!166401 () Unit!166394)

(assert (=> b!7506337 (= e!4475784 Unit!166401)))

(assert (=> b!7506337 (= lt!2635252 call!688727)))

(declare-fun lt!2635247 () Unit!166394)

(declare-fun lemmaNotForallThenExists!503 (List!72524 Int) Unit!166394)

(assert (=> b!7506337 (= lt!2635247 (lemmaNotForallThenExists!503 lt!2635252 lambda!465422))))

(assert (=> b!7506337 call!688728))

(declare-fun lt!2635249 () Unit!166394)

(assert (=> b!7506337 (= lt!2635249 lt!2635247)))

(assert (= (and d!2304162 c!1385796) b!7506337))

(assert (= (and d!2304162 (not c!1385796)) b!7506338))

(assert (= (or b!7506337 b!7506338) bm!688722))

(assert (= (or b!7506337 b!7506338) bm!688723))

(declare-fun m!8088722 () Bool)

(assert (=> bm!688723 m!8088722))

(declare-fun m!8088724 () Bool)

(assert (=> b!7506337 m!8088724))

(declare-fun m!8088726 () Bool)

(assert (=> d!2304162 m!8088726))

(assert (=> d!2304162 m!8088726))

(declare-fun m!8088728 () Bool)

(assert (=> d!2304162 m!8088728))

(declare-fun m!8088730 () Bool)

(assert (=> d!2304162 m!8088730))

(assert (=> d!2304162 m!8088730))

(declare-fun m!8088732 () Bool)

(assert (=> b!7506338 m!8088732))

(declare-fun m!8088734 () Bool)

(assert (=> bm!688722 m!8088734))

(assert (=> b!7506181 d!2304162))

(declare-fun d!2304164 () Bool)

(assert (=> d!2304164 (= testedSuffix!164 lt!2635119)))

(declare-fun lt!2635255 () Unit!166394)

(declare-fun choose!58125 (List!72521 List!72521 List!72521 List!72521 List!72521) Unit!166394)

(assert (=> d!2304164 (= lt!2635255 (choose!58125 testedP!204 testedSuffix!164 testedP!204 lt!2635119 totalInput!779))))

(assert (=> d!2304164 (isPrefix!6005 testedP!204 totalInput!779)))

(assert (=> d!2304164 (= (lemmaSamePrefixThenSameSuffix!2804 testedP!204 testedSuffix!164 testedP!204 lt!2635119 totalInput!779) lt!2635255)))

(declare-fun bs!1938187 () Bool)

(assert (= bs!1938187 d!2304164))

(declare-fun m!8088736 () Bool)

(assert (=> bs!1938187 m!8088736))

(assert (=> bs!1938187 m!8088462))

(assert (=> b!7506181 d!2304164))

(declare-fun d!2304166 () Bool)

(declare-fun lt!2635258 () List!72521)

(assert (=> d!2304166 (= (++!17340 testedP!204 lt!2635258) totalInput!779)))

(declare-fun e!4475787 () List!72521)

(assert (=> d!2304166 (= lt!2635258 e!4475787)))

(declare-fun c!1385799 () Bool)

(assert (=> d!2304166 (= c!1385799 ((_ is Cons!72397) testedP!204))))

(assert (=> d!2304166 (>= (size!42282 totalInput!779) (size!42282 testedP!204))))

(assert (=> d!2304166 (= (getSuffix!3505 totalInput!779 testedP!204) lt!2635258)))

(declare-fun b!7506343 () Bool)

(assert (=> b!7506343 (= e!4475787 (getSuffix!3505 (tail!14995 totalInput!779) (t!387090 testedP!204)))))

(declare-fun b!7506344 () Bool)

(assert (=> b!7506344 (= e!4475787 totalInput!779)))

(assert (= (and d!2304166 c!1385799) b!7506343))

(assert (= (and d!2304166 (not c!1385799)) b!7506344))

(declare-fun m!8088738 () Bool)

(assert (=> d!2304166 m!8088738))

(assert (=> d!2304166 m!8088488))

(assert (=> d!2304166 m!8088460))

(assert (=> b!7506343 m!8088668))

(assert (=> b!7506343 m!8088668))

(declare-fun m!8088740 () Bool)

(assert (=> b!7506343 m!8088740))

(assert (=> b!7506181 d!2304166))

(declare-fun d!2304168 () Bool)

(declare-fun lambda!465427 () Int)

(declare-fun forall!18290 (List!72522 Int) Bool)

(assert (=> d!2304168 (= (inv!92507 setElem!57024) (forall!18290 (exprs!8963 setElem!57024) lambda!465427))))

(declare-fun bs!1938188 () Bool)

(assert (= bs!1938188 d!2304168))

(declare-fun m!8088742 () Bool)

(assert (=> bs!1938188 m!8088742))

(assert (=> setNonEmpty!57024 d!2304168))

(declare-fun d!2304170 () Bool)

(assert (=> d!2304170 (<= (size!42282 testedP!204) (size!42282 totalInput!779))))

(declare-fun lt!2635261 () Unit!166394)

(declare-fun choose!58126 (List!72521 List!72521) Unit!166394)

(assert (=> d!2304170 (= lt!2635261 (choose!58126 testedP!204 totalInput!779))))

(assert (=> d!2304170 (isPrefix!6005 testedP!204 totalInput!779)))

(assert (=> d!2304170 (= (lemmaIsPrefixThenSmallerEqSize!992 testedP!204 totalInput!779) lt!2635261)))

(declare-fun bs!1938189 () Bool)

(assert (= bs!1938189 d!2304170))

(assert (=> bs!1938189 m!8088460))

(assert (=> bs!1938189 m!8088488))

(declare-fun m!8088744 () Bool)

(assert (=> bs!1938189 m!8088744))

(assert (=> bs!1938189 m!8088462))

(assert (=> b!7506188 d!2304170))

(declare-fun d!2304172 () Bool)

(declare-fun e!4475789 () Bool)

(assert (=> d!2304172 e!4475789))

(declare-fun res!3011548 () Bool)

(assert (=> d!2304172 (=> (not res!3011548) (not e!4475789))))

(declare-fun lt!2635262 () List!72521)

(assert (=> d!2304172 (= res!3011548 (= (content!15304 lt!2635262) ((_ map or) (content!15304 testedP!204) (content!15304 testedSuffix!164))))))

(declare-fun e!4475788 () List!72521)

(assert (=> d!2304172 (= lt!2635262 e!4475788)))

(declare-fun c!1385800 () Bool)

(assert (=> d!2304172 (= c!1385800 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304172 (= (++!17340 testedP!204 testedSuffix!164) lt!2635262)))

(declare-fun b!7506347 () Bool)

(declare-fun res!3011547 () Bool)

(assert (=> b!7506347 (=> (not res!3011547) (not e!4475789))))

(assert (=> b!7506347 (= res!3011547 (= (size!42282 lt!2635262) (+ (size!42282 testedP!204) (size!42282 testedSuffix!164))))))

(declare-fun b!7506345 () Bool)

(assert (=> b!7506345 (= e!4475788 testedSuffix!164)))

(declare-fun b!7506348 () Bool)

(assert (=> b!7506348 (= e!4475789 (or (not (= testedSuffix!164 Nil!72397)) (= lt!2635262 testedP!204)))))

(declare-fun b!7506346 () Bool)

(assert (=> b!7506346 (= e!4475788 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) testedSuffix!164)))))

(assert (= (and d!2304172 c!1385800) b!7506345))

(assert (= (and d!2304172 (not c!1385800)) b!7506346))

(assert (= (and d!2304172 res!3011548) b!7506347))

(assert (= (and b!7506347 res!3011547) b!7506348))

(declare-fun m!8088746 () Bool)

(assert (=> d!2304172 m!8088746))

(assert (=> d!2304172 m!8088504))

(declare-fun m!8088748 () Bool)

(assert (=> d!2304172 m!8088748))

(declare-fun m!8088750 () Bool)

(assert (=> b!7506347 m!8088750))

(assert (=> b!7506347 m!8088460))

(declare-fun m!8088752 () Bool)

(assert (=> b!7506347 m!8088752))

(declare-fun m!8088754 () Bool)

(assert (=> b!7506346 m!8088754))

(assert (=> start!726618 d!2304172))

(declare-fun b!7506353 () Bool)

(declare-fun e!4475792 () Bool)

(declare-fun tp!2178931 () Bool)

(assert (=> b!7506353 (= e!4475792 (and tp_is_empty!49763 tp!2178931))))

(assert (=> b!7506178 (= tp!2178908 e!4475792)))

(assert (= (and b!7506178 ((_ is Cons!72397) (t!387090 totalInput!779))) b!7506353))

(declare-fun b!7506354 () Bool)

(declare-fun e!4475793 () Bool)

(declare-fun tp!2178932 () Bool)

(assert (=> b!7506354 (= e!4475793 (and tp_is_empty!49763 tp!2178932))))

(assert (=> b!7506185 (= tp!2178911 e!4475793)))

(assert (= (and b!7506185 ((_ is Cons!72397) (t!387090 testedP!204))) b!7506354))

(declare-fun b!7506359 () Bool)

(declare-fun e!4475796 () Bool)

(declare-fun tp!2178937 () Bool)

(declare-fun tp!2178938 () Bool)

(assert (=> b!7506359 (= e!4475796 (and tp!2178937 tp!2178938))))

(assert (=> b!7506186 (= tp!2178910 e!4475796)))

(assert (= (and b!7506186 ((_ is Cons!72398) (exprs!8963 setElem!57024))) b!7506359))

(declare-fun condSetEmpty!57030 () Bool)

(assert (=> setNonEmpty!57024 (= condSetEmpty!57030 (= setRest!57024 ((as const (Array Context!16926 Bool)) false)))))

(declare-fun setRes!57030 () Bool)

(assert (=> setNonEmpty!57024 (= tp!2178909 setRes!57030)))

(declare-fun setIsEmpty!57030 () Bool)

(assert (=> setIsEmpty!57030 setRes!57030))

(declare-fun setNonEmpty!57030 () Bool)

(declare-fun setElem!57030 () Context!16926)

(declare-fun e!4475799 () Bool)

(declare-fun tp!2178944 () Bool)

(assert (=> setNonEmpty!57030 (= setRes!57030 (and tp!2178944 (inv!92507 setElem!57030) e!4475799))))

(declare-fun setRest!57030 () (InoxSet Context!16926))

(assert (=> setNonEmpty!57030 (= setRest!57024 ((_ map or) (store ((as const (Array Context!16926 Bool)) false) setElem!57030 true) setRest!57030))))

(declare-fun b!7506364 () Bool)

(declare-fun tp!2178943 () Bool)

(assert (=> b!7506364 (= e!4475799 tp!2178943)))

(assert (= (and setNonEmpty!57024 condSetEmpty!57030) setIsEmpty!57030))

(assert (= (and setNonEmpty!57024 (not condSetEmpty!57030)) setNonEmpty!57030))

(assert (= setNonEmpty!57030 b!7506364))

(declare-fun m!8088756 () Bool)

(assert (=> setNonEmpty!57030 m!8088756))

(declare-fun b!7506365 () Bool)

(declare-fun e!4475800 () Bool)

(declare-fun tp!2178945 () Bool)

(assert (=> b!7506365 (= e!4475800 (and tp_is_empty!49763 tp!2178945))))

(assert (=> b!7506182 (= tp!2178907 e!4475800)))

(assert (= (and b!7506182 ((_ is Cons!72397) (t!387090 testedSuffix!164))) b!7506365))

(check-sat (not b!7506205) (not b!7506322) (not b!7506326) (not b!7506202) (not d!2304074) (not setNonEmpty!57030) (not b!7506309) (not d!2304082) (not b!7506330) (not d!2304078) (not b!7506343) (not d!2304172) (not d!2304164) (not b!7506332) (not b!7506364) (not b!7506210) (not d!2304080) (not b!7506354) (not b!7506316) (not b!7506201) (not bm!688722) (not b!7506318) (not d!2304156) (not d!2304168) (not d!2304142) (not b!7506324) (not b!7506328) (not b!7506206) (not b!7506337) (not b!7506327) (not d!2304150) (not b!7506310) (not d!2304170) (not b!7506319) (not d!2304138) tp_is_empty!49763 (not bm!688723) (not b!7506209) (not b!7506338) (not b!7506353) (not d!2304162) (not b!7506347) (not b!7506365) (not b!7506308) (not b!7506320) (not d!2304146) (not b!7506346) (not b!7506359) (not d!2304166) (not b!7506323))
(check-sat)
(get-model)

(assert (=> b!7506320 d!2304144))

(assert (=> d!2304138 d!2304152))

(declare-fun b!7506436 () Bool)

(declare-fun e!4475839 () Bool)

(assert (=> b!7506436 (= e!4475839 (isPrefix!6005 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397))) (tail!14995 totalInput!779)))))

(declare-fun d!2304246 () Bool)

(declare-fun e!4475841 () Bool)

(assert (=> d!2304246 e!4475841))

(declare-fun res!3011569 () Bool)

(assert (=> d!2304246 (=> res!3011569 e!4475841)))

(declare-fun lt!2635290 () Bool)

(assert (=> d!2304246 (= res!3011569 (not lt!2635290))))

(declare-fun e!4475837 () Bool)

(assert (=> d!2304246 (= lt!2635290 e!4475837)))

(declare-fun res!3011567 () Bool)

(assert (=> d!2304246 (=> res!3011567 e!4475837)))

(assert (=> d!2304246 (= res!3011567 ((_ is Nil!72397) (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397))))))

(assert (=> d!2304246 (= (isPrefix!6005 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)) totalInput!779) lt!2635290)))

(declare-fun b!7506435 () Bool)

(declare-fun res!3011570 () Bool)

(assert (=> b!7506435 (=> (not res!3011570) (not e!4475839))))

(assert (=> b!7506435 (= res!3011570 (= (head!15428 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397))) (head!15428 totalInput!779)))))

(declare-fun b!7506434 () Bool)

(assert (=> b!7506434 (= e!4475837 e!4475839)))

(declare-fun res!3011568 () Bool)

(assert (=> b!7506434 (=> (not res!3011568) (not e!4475839))))

(assert (=> b!7506434 (= res!3011568 (not ((_ is Nil!72397) totalInput!779)))))

(declare-fun b!7506437 () Bool)

(assert (=> b!7506437 (= e!4475841 (>= (size!42282 totalInput!779) (size!42282 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)))))))

(assert (= (and d!2304246 (not res!3011567)) b!7506434))

(assert (= (and b!7506434 res!3011568) b!7506435))

(assert (= (and b!7506435 res!3011570) b!7506436))

(assert (= (and d!2304246 (not res!3011569)) b!7506437))

(assert (=> b!7506436 m!8088680))

(declare-fun m!8088882 () Bool)

(assert (=> b!7506436 m!8088882))

(assert (=> b!7506436 m!8088668))

(assert (=> b!7506436 m!8088882))

(assert (=> b!7506436 m!8088668))

(declare-fun m!8088884 () Bool)

(assert (=> b!7506436 m!8088884))

(assert (=> b!7506435 m!8088680))

(declare-fun m!8088886 () Bool)

(assert (=> b!7506435 m!8088886))

(assert (=> b!7506435 m!8088674))

(assert (=> b!7506437 m!8088488))

(assert (=> b!7506437 m!8088680))

(declare-fun m!8088888 () Bool)

(assert (=> b!7506437 m!8088888))

(assert (=> d!2304138 d!2304246))

(assert (=> d!2304138 d!2304166))

(declare-fun d!2304248 () Bool)

(assert (=> d!2304248 (isPrefix!6005 (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)) totalInput!779)))

(assert (=> d!2304248 true))

(declare-fun _$65!1868 () Unit!166394)

(assert (=> d!2304248 (= (choose!58120 testedP!204 totalInput!779) _$65!1868)))

(declare-fun bs!1938208 () Bool)

(assert (= bs!1938208 d!2304248))

(assert (=> bs!1938208 m!8088500))

(assert (=> bs!1938208 m!8088500))

(assert (=> bs!1938208 m!8088678))

(assert (=> bs!1938208 m!8088680))

(assert (=> bs!1938208 m!8088680))

(assert (=> bs!1938208 m!8088682))

(assert (=> d!2304138 d!2304248))

(declare-fun d!2304264 () Bool)

(declare-fun e!4475850 () Bool)

(assert (=> d!2304264 e!4475850))

(declare-fun res!3011578 () Bool)

(assert (=> d!2304264 (=> (not res!3011578) (not e!4475850))))

(declare-fun lt!2635296 () List!72521)

(assert (=> d!2304264 (= res!3011578 (= (content!15304 lt!2635296) ((_ map or) (content!15304 testedP!204) (content!15304 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)))))))

(declare-fun e!4475849 () List!72521)

(assert (=> d!2304264 (= lt!2635296 e!4475849)))

(declare-fun c!1385833 () Bool)

(assert (=> d!2304264 (= c!1385833 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304264 (= (++!17340 testedP!204 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)) lt!2635296)))

(declare-fun b!7506450 () Bool)

(declare-fun res!3011577 () Bool)

(assert (=> b!7506450 (=> (not res!3011577) (not e!4475850))))

(assert (=> b!7506450 (= res!3011577 (= (size!42282 lt!2635296) (+ (size!42282 testedP!204) (size!42282 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397)))))))

(declare-fun b!7506448 () Bool)

(assert (=> b!7506448 (= e!4475849 (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397))))

(declare-fun b!7506451 () Bool)

(assert (=> b!7506451 (= e!4475850 (or (not (= (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397) Nil!72397)) (= lt!2635296 testedP!204)))))

(declare-fun b!7506449 () Bool)

(assert (=> b!7506449 (= e!4475849 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) (Cons!72397 (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) Nil!72397))))))

(assert (= (and d!2304264 c!1385833) b!7506448))

(assert (= (and d!2304264 (not c!1385833)) b!7506449))

(assert (= (and d!2304264 res!3011578) b!7506450))

(assert (= (and b!7506450 res!3011577) b!7506451))

(declare-fun m!8088920 () Bool)

(assert (=> d!2304264 m!8088920))

(assert (=> d!2304264 m!8088504))

(declare-fun m!8088922 () Bool)

(assert (=> d!2304264 m!8088922))

(declare-fun m!8088924 () Bool)

(assert (=> b!7506450 m!8088924))

(assert (=> b!7506450 m!8088460))

(declare-fun m!8088926 () Bool)

(assert (=> b!7506450 m!8088926))

(declare-fun m!8088928 () Bool)

(assert (=> b!7506449 m!8088928))

(assert (=> d!2304138 d!2304264))

(declare-fun d!2304266 () Bool)

(assert (=> d!2304266 (= (head!15428 (getSuffix!3505 totalInput!779 testedP!204)) (h!78845 (getSuffix!3505 totalInput!779 testedP!204)))))

(assert (=> d!2304138 d!2304266))

(declare-fun b!7506454 () Bool)

(declare-fun e!4475852 () Bool)

(assert (=> b!7506454 (= e!4475852 (isPrefix!6005 (tail!14995 (tail!14995 totalInput!779)) (tail!14995 (tail!14995 totalInput!779))))))

(declare-fun d!2304268 () Bool)

(declare-fun e!4475853 () Bool)

(assert (=> d!2304268 e!4475853))

(declare-fun res!3011581 () Bool)

(assert (=> d!2304268 (=> res!3011581 e!4475853)))

(declare-fun lt!2635298 () Bool)

(assert (=> d!2304268 (= res!3011581 (not lt!2635298))))

(declare-fun e!4475851 () Bool)

(assert (=> d!2304268 (= lt!2635298 e!4475851)))

(declare-fun res!3011579 () Bool)

(assert (=> d!2304268 (=> res!3011579 e!4475851)))

(assert (=> d!2304268 (= res!3011579 ((_ is Nil!72397) (tail!14995 totalInput!779)))))

(assert (=> d!2304268 (= (isPrefix!6005 (tail!14995 totalInput!779) (tail!14995 totalInput!779)) lt!2635298)))

(declare-fun b!7506453 () Bool)

(declare-fun res!3011582 () Bool)

(assert (=> b!7506453 (=> (not res!3011582) (not e!4475852))))

(assert (=> b!7506453 (= res!3011582 (= (head!15428 (tail!14995 totalInput!779)) (head!15428 (tail!14995 totalInput!779))))))

(declare-fun b!7506452 () Bool)

(assert (=> b!7506452 (= e!4475851 e!4475852)))

(declare-fun res!3011580 () Bool)

(assert (=> b!7506452 (=> (not res!3011580) (not e!4475852))))

(assert (=> b!7506452 (= res!3011580 (not ((_ is Nil!72397) (tail!14995 totalInput!779))))))

(declare-fun b!7506455 () Bool)

(assert (=> b!7506455 (= e!4475853 (>= (size!42282 (tail!14995 totalInput!779)) (size!42282 (tail!14995 totalInput!779))))))

(assert (= (and d!2304268 (not res!3011579)) b!7506452))

(assert (= (and b!7506452 res!3011580) b!7506453))

(assert (= (and b!7506453 res!3011582) b!7506454))

(assert (= (and d!2304268 (not res!3011581)) b!7506455))

(assert (=> b!7506454 m!8088668))

(declare-fun m!8088936 () Bool)

(assert (=> b!7506454 m!8088936))

(assert (=> b!7506454 m!8088668))

(assert (=> b!7506454 m!8088936))

(assert (=> b!7506454 m!8088936))

(assert (=> b!7506454 m!8088936))

(declare-fun m!8088938 () Bool)

(assert (=> b!7506454 m!8088938))

(assert (=> b!7506453 m!8088668))

(declare-fun m!8088942 () Bool)

(assert (=> b!7506453 m!8088942))

(assert (=> b!7506453 m!8088668))

(assert (=> b!7506453 m!8088942))

(assert (=> b!7506455 m!8088668))

(declare-fun m!8088944 () Bool)

(assert (=> b!7506455 m!8088944))

(assert (=> b!7506455 m!8088668))

(assert (=> b!7506455 m!8088944))

(assert (=> b!7506319 d!2304268))

(declare-fun d!2304274 () Bool)

(assert (=> d!2304274 (= (tail!14995 totalInput!779) (t!387090 totalInput!779))))

(assert (=> b!7506319 d!2304274))

(declare-fun d!2304278 () Bool)

(declare-fun e!4475857 () Bool)

(assert (=> d!2304278 e!4475857))

(declare-fun res!3011586 () Bool)

(assert (=> d!2304278 (=> (not res!3011586) (not e!4475857))))

(declare-fun lt!2635300 () List!72521)

(assert (=> d!2304278 (= res!3011586 (= (content!15304 lt!2635300) ((_ map or) (content!15304 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397))) (content!15304 lt!2635128))))))

(declare-fun e!4475856 () List!72521)

(assert (=> d!2304278 (= lt!2635300 e!4475856)))

(declare-fun c!1385835 () Bool)

(assert (=> d!2304278 (= c!1385835 ((_ is Nil!72397) (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397))))))

(assert (=> d!2304278 (= (++!17340 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)) lt!2635128) lt!2635300)))

(declare-fun b!7506462 () Bool)

(declare-fun res!3011585 () Bool)

(assert (=> b!7506462 (=> (not res!3011585) (not e!4475857))))

(assert (=> b!7506462 (= res!3011585 (= (size!42282 lt!2635300) (+ (size!42282 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397))) (size!42282 lt!2635128))))))

(declare-fun b!7506460 () Bool)

(assert (=> b!7506460 (= e!4475856 lt!2635128)))

(declare-fun b!7506463 () Bool)

(assert (=> b!7506463 (= e!4475857 (or (not (= lt!2635128 Nil!72397)) (= lt!2635300 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)))))))

(declare-fun b!7506461 () Bool)

(assert (=> b!7506461 (= e!4475856 (Cons!72397 (h!78845 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397))) (++!17340 (t!387090 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397))) lt!2635128)))))

(assert (= (and d!2304278 c!1385835) b!7506460))

(assert (= (and d!2304278 (not c!1385835)) b!7506461))

(assert (= (and d!2304278 res!3011586) b!7506462))

(assert (= (and b!7506462 res!3011585) b!7506463))

(declare-fun m!8088950 () Bool)

(assert (=> d!2304278 m!8088950))

(assert (=> d!2304278 m!8088480))

(declare-fun m!8088952 () Bool)

(assert (=> d!2304278 m!8088952))

(assert (=> d!2304278 m!8088518))

(declare-fun m!8088954 () Bool)

(assert (=> b!7506462 m!8088954))

(assert (=> b!7506462 m!8088480))

(declare-fun m!8088956 () Bool)

(assert (=> b!7506462 m!8088956))

(assert (=> b!7506462 m!8088522))

(declare-fun m!8088958 () Bool)

(assert (=> b!7506461 m!8088958))

(assert (=> d!2304142 d!2304278))

(assert (=> d!2304142 d!2304074))

(declare-fun d!2304280 () Bool)

(assert (=> d!2304280 (= (++!17340 (++!17340 testedP!204 (Cons!72397 lt!2635132 Nil!72397)) lt!2635128) totalInput!779)))

(assert (=> d!2304280 true))

(declare-fun _$68!1387 () Unit!166394)

(assert (=> d!2304280 (= (choose!58121 testedP!204 lt!2635132 lt!2635128 totalInput!779) _$68!1387)))

(declare-fun bs!1938223 () Bool)

(assert (= bs!1938223 d!2304280))

(assert (=> bs!1938223 m!8088480))

(assert (=> bs!1938223 m!8088480))

(assert (=> bs!1938223 m!8088686))

(assert (=> d!2304142 d!2304280))

(declare-fun d!2304282 () Bool)

(declare-fun e!4475859 () Bool)

(assert (=> d!2304282 e!4475859))

(declare-fun res!3011588 () Bool)

(assert (=> d!2304282 (=> (not res!3011588) (not e!4475859))))

(declare-fun lt!2635301 () List!72521)

(assert (=> d!2304282 (= res!3011588 (= (content!15304 lt!2635301) ((_ map or) (content!15304 testedP!204) (content!15304 (Cons!72397 lt!2635132 lt!2635128)))))))

(declare-fun e!4475858 () List!72521)

(assert (=> d!2304282 (= lt!2635301 e!4475858)))

(declare-fun c!1385836 () Bool)

(assert (=> d!2304282 (= c!1385836 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304282 (= (++!17340 testedP!204 (Cons!72397 lt!2635132 lt!2635128)) lt!2635301)))

(declare-fun b!7506466 () Bool)

(declare-fun res!3011587 () Bool)

(assert (=> b!7506466 (=> (not res!3011587) (not e!4475859))))

(assert (=> b!7506466 (= res!3011587 (= (size!42282 lt!2635301) (+ (size!42282 testedP!204) (size!42282 (Cons!72397 lt!2635132 lt!2635128)))))))

(declare-fun b!7506464 () Bool)

(assert (=> b!7506464 (= e!4475858 (Cons!72397 lt!2635132 lt!2635128))))

(declare-fun b!7506467 () Bool)

(assert (=> b!7506467 (= e!4475859 (or (not (= (Cons!72397 lt!2635132 lt!2635128) Nil!72397)) (= lt!2635301 testedP!204)))))

(declare-fun b!7506465 () Bool)

(assert (=> b!7506465 (= e!4475858 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) (Cons!72397 lt!2635132 lt!2635128))))))

(assert (= (and d!2304282 c!1385836) b!7506464))

(assert (= (and d!2304282 (not c!1385836)) b!7506465))

(assert (= (and d!2304282 res!3011588) b!7506466))

(assert (= (and b!7506466 res!3011587) b!7506467))

(declare-fun m!8088964 () Bool)

(assert (=> d!2304282 m!8088964))

(assert (=> d!2304282 m!8088504))

(declare-fun m!8088966 () Bool)

(assert (=> d!2304282 m!8088966))

(declare-fun m!8088968 () Bool)

(assert (=> b!7506466 m!8088968))

(assert (=> b!7506466 m!8088460))

(declare-fun m!8088972 () Bool)

(assert (=> b!7506466 m!8088972))

(declare-fun m!8088974 () Bool)

(assert (=> b!7506465 m!8088974))

(assert (=> d!2304142 d!2304282))

(declare-fun d!2304290 () Bool)

(assert (=> d!2304290 (= (head!15428 totalInput!779) (h!78845 totalInput!779))))

(assert (=> b!7506318 d!2304290))

(declare-fun d!2304292 () Bool)

(declare-fun c!1385841 () Bool)

(assert (=> d!2304292 (= c!1385841 ((_ is Nil!72397) lt!2635262))))

(declare-fun e!4475866 () (InoxSet C!39748))

(assert (=> d!2304292 (= (content!15304 lt!2635262) e!4475866)))

(declare-fun b!7506478 () Bool)

(assert (=> b!7506478 (= e!4475866 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506479 () Bool)

(assert (=> b!7506479 (= e!4475866 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635262) true) (content!15304 (t!387090 lt!2635262))))))

(assert (= (and d!2304292 c!1385841) b!7506478))

(assert (= (and d!2304292 (not c!1385841)) b!7506479))

(declare-fun m!8088976 () Bool)

(assert (=> b!7506479 m!8088976))

(declare-fun m!8088978 () Bool)

(assert (=> b!7506479 m!8088978))

(assert (=> d!2304172 d!2304292))

(declare-fun d!2304294 () Bool)

(declare-fun c!1385842 () Bool)

(assert (=> d!2304294 (= c!1385842 ((_ is Nil!72397) testedP!204))))

(declare-fun e!4475867 () (InoxSet C!39748))

(assert (=> d!2304294 (= (content!15304 testedP!204) e!4475867)))

(declare-fun b!7506480 () Bool)

(assert (=> b!7506480 (= e!4475867 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506481 () Bool)

(assert (=> b!7506481 (= e!4475867 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 testedP!204) true) (content!15304 (t!387090 testedP!204))))))

(assert (= (and d!2304294 c!1385842) b!7506480))

(assert (= (and d!2304294 (not c!1385842)) b!7506481))

(declare-fun m!8088980 () Bool)

(assert (=> b!7506481 m!8088980))

(declare-fun m!8088982 () Bool)

(assert (=> b!7506481 m!8088982))

(assert (=> d!2304172 d!2304294))

(declare-fun d!2304296 () Bool)

(declare-fun c!1385843 () Bool)

(assert (=> d!2304296 (= c!1385843 ((_ is Nil!72397) testedSuffix!164))))

(declare-fun e!4475869 () (InoxSet C!39748))

(assert (=> d!2304296 (= (content!15304 testedSuffix!164) e!4475869)))

(declare-fun b!7506483 () Bool)

(assert (=> b!7506483 (= e!4475869 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506484 () Bool)

(assert (=> b!7506484 (= e!4475869 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 testedSuffix!164) true) (content!15304 (t!387090 testedSuffix!164))))))

(assert (= (and d!2304296 c!1385843) b!7506483))

(assert (= (and d!2304296 (not c!1385843)) b!7506484))

(declare-fun m!8088990 () Bool)

(assert (=> b!7506484 m!8088990))

(declare-fun m!8088992 () Bool)

(assert (=> b!7506484 m!8088992))

(assert (=> d!2304172 d!2304296))

(declare-fun d!2304300 () Bool)

(declare-fun lt!2635307 () Int)

(assert (=> d!2304300 (>= lt!2635307 0)))

(declare-fun e!4475870 () Int)

(assert (=> d!2304300 (= lt!2635307 e!4475870)))

(declare-fun c!1385844 () Bool)

(assert (=> d!2304300 (= c!1385844 ((_ is Nil!72397) (t!387090 testedP!204)))))

(assert (=> d!2304300 (= (size!42282 (t!387090 testedP!204)) lt!2635307)))

(declare-fun b!7506485 () Bool)

(assert (=> b!7506485 (= e!4475870 0)))

(declare-fun b!7506486 () Bool)

(assert (=> b!7506486 (= e!4475870 (+ 1 (size!42282 (t!387090 (t!387090 testedP!204)))))))

(assert (= (and d!2304300 c!1385844) b!7506485))

(assert (= (and d!2304300 (not c!1385844)) b!7506486))

(declare-fun m!8088994 () Bool)

(assert (=> b!7506486 m!8088994))

(assert (=> b!7506332 d!2304300))

(declare-fun b!7506493 () Bool)

(declare-fun e!4475874 () Bool)

(assert (=> b!7506493 (= e!4475874 (isPrefix!6005 (tail!14995 (tail!14995 testedP!204)) (tail!14995 (tail!14995 lt!2635122))))))

(declare-fun d!2304302 () Bool)

(declare-fun e!4475875 () Bool)

(assert (=> d!2304302 e!4475875))

(declare-fun res!3011596 () Bool)

(assert (=> d!2304302 (=> res!3011596 e!4475875)))

(declare-fun lt!2635309 () Bool)

(assert (=> d!2304302 (= res!3011596 (not lt!2635309))))

(declare-fun e!4475873 () Bool)

(assert (=> d!2304302 (= lt!2635309 e!4475873)))

(declare-fun res!3011594 () Bool)

(assert (=> d!2304302 (=> res!3011594 e!4475873)))

(assert (=> d!2304302 (= res!3011594 ((_ is Nil!72397) (tail!14995 testedP!204)))))

(assert (=> d!2304302 (= (isPrefix!6005 (tail!14995 testedP!204) (tail!14995 lt!2635122)) lt!2635309)))

(declare-fun b!7506492 () Bool)

(declare-fun res!3011597 () Bool)

(assert (=> b!7506492 (=> (not res!3011597) (not e!4475874))))

(assert (=> b!7506492 (= res!3011597 (= (head!15428 (tail!14995 testedP!204)) (head!15428 (tail!14995 lt!2635122))))))

(declare-fun b!7506491 () Bool)

(assert (=> b!7506491 (= e!4475873 e!4475874)))

(declare-fun res!3011595 () Bool)

(assert (=> b!7506491 (=> (not res!3011595) (not e!4475874))))

(assert (=> b!7506491 (= res!3011595 (not ((_ is Nil!72397) (tail!14995 lt!2635122))))))

(declare-fun b!7506494 () Bool)

(assert (=> b!7506494 (= e!4475875 (>= (size!42282 (tail!14995 lt!2635122)) (size!42282 (tail!14995 testedP!204))))))

(assert (= (and d!2304302 (not res!3011594)) b!7506491))

(assert (= (and b!7506491 res!3011595) b!7506492))

(assert (= (and b!7506492 res!3011597) b!7506493))

(assert (= (and d!2304302 (not res!3011596)) b!7506494))

(assert (=> b!7506493 m!8088700))

(declare-fun m!8089002 () Bool)

(assert (=> b!7506493 m!8089002))

(assert (=> b!7506493 m!8088706))

(declare-fun m!8089004 () Bool)

(assert (=> b!7506493 m!8089004))

(assert (=> b!7506493 m!8089002))

(assert (=> b!7506493 m!8089004))

(declare-fun m!8089006 () Bool)

(assert (=> b!7506493 m!8089006))

(assert (=> b!7506492 m!8088700))

(declare-fun m!8089008 () Bool)

(assert (=> b!7506492 m!8089008))

(assert (=> b!7506492 m!8088706))

(declare-fun m!8089010 () Bool)

(assert (=> b!7506492 m!8089010))

(assert (=> b!7506494 m!8088706))

(declare-fun m!8089012 () Bool)

(assert (=> b!7506494 m!8089012))

(assert (=> b!7506494 m!8088700))

(declare-fun m!8089014 () Bool)

(assert (=> b!7506494 m!8089014))

(assert (=> b!7506327 d!2304302))

(declare-fun d!2304306 () Bool)

(assert (=> d!2304306 (= (tail!14995 testedP!204) (t!387090 testedP!204))))

(assert (=> b!7506327 d!2304306))

(declare-fun d!2304308 () Bool)

(assert (=> d!2304308 (= (tail!14995 lt!2635122) (t!387090 lt!2635122))))

(assert (=> b!7506327 d!2304308))

(declare-fun d!2304310 () Bool)

(declare-fun lt!2635311 () Int)

(assert (=> d!2304310 (>= lt!2635311 0)))

(declare-fun e!4475879 () Int)

(assert (=> d!2304310 (= lt!2635311 e!4475879)))

(declare-fun c!1385846 () Bool)

(assert (=> d!2304310 (= c!1385846 ((_ is Nil!72397) lt!2635135))))

(assert (=> d!2304310 (= (size!42282 lt!2635135) lt!2635311)))

(declare-fun b!7506499 () Bool)

(assert (=> b!7506499 (= e!4475879 0)))

(declare-fun b!7506500 () Bool)

(assert (=> b!7506500 (= e!4475879 (+ 1 (size!42282 (t!387090 lt!2635135))))))

(assert (= (and d!2304310 c!1385846) b!7506499))

(assert (= (and d!2304310 (not c!1385846)) b!7506500))

(declare-fun m!8089018 () Bool)

(assert (=> b!7506500 m!8089018))

(assert (=> b!7506202 d!2304310))

(assert (=> b!7506202 d!2304160))

(declare-fun d!2304312 () Bool)

(declare-fun lt!2635312 () Int)

(assert (=> d!2304312 (>= lt!2635312 0)))

(declare-fun e!4475880 () Int)

(assert (=> d!2304312 (= lt!2635312 e!4475880)))

(declare-fun c!1385847 () Bool)

(assert (=> d!2304312 (= c!1385847 ((_ is Nil!72397) (Cons!72397 lt!2635132 Nil!72397)))))

(assert (=> d!2304312 (= (size!42282 (Cons!72397 lt!2635132 Nil!72397)) lt!2635312)))

(declare-fun b!7506501 () Bool)

(assert (=> b!7506501 (= e!4475880 0)))

(declare-fun b!7506502 () Bool)

(assert (=> b!7506502 (= e!4475880 (+ 1 (size!42282 (t!387090 (Cons!72397 lt!2635132 Nil!72397)))))))

(assert (= (and d!2304312 c!1385847) b!7506501))

(assert (= (and d!2304312 (not c!1385847)) b!7506502))

(declare-fun m!8089022 () Bool)

(assert (=> b!7506502 m!8089022))

(assert (=> b!7506202 d!2304312))

(declare-fun d!2304316 () Bool)

(assert (=> d!2304316 (= (head!15428 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) (h!78845 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (=> b!7506308 d!2304316))

(assert (=> b!7506308 d!2304290))

(declare-fun d!2304318 () Bool)

(assert (=> d!2304318 (= (head!15428 testedP!204) (h!78845 testedP!204))))

(assert (=> b!7506326 d!2304318))

(declare-fun d!2304322 () Bool)

(assert (=> d!2304322 (= (head!15428 lt!2635122) (h!78845 lt!2635122))))

(assert (=> b!7506326 d!2304322))

(declare-fun d!2304324 () Bool)

(assert (=> d!2304324 (= totalInput!779 testedP!204)))

(assert (=> d!2304324 true))

(declare-fun _$60!1279 () Unit!166394)

(assert (=> d!2304324 (= (choose!58123 totalInput!779 testedP!204 totalInput!779) _$60!1279)))

(assert (=> d!2304150 d!2304324))

(assert (=> d!2304150 d!2304148))

(declare-fun d!2304328 () Bool)

(declare-fun c!1385849 () Bool)

(assert (=> d!2304328 (= c!1385849 ((_ is Nil!72397) lt!2635137))))

(declare-fun e!4475888 () (InoxSet C!39748))

(assert (=> d!2304328 (= (content!15304 lt!2635137) e!4475888)))

(declare-fun b!7506513 () Bool)

(assert (=> b!7506513 (= e!4475888 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506514 () Bool)

(assert (=> b!7506514 (= e!4475888 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635137) true) (content!15304 (t!387090 lt!2635137))))))

(assert (= (and d!2304328 c!1385849) b!7506513))

(assert (= (and d!2304328 (not c!1385849)) b!7506514))

(declare-fun m!8089028 () Bool)

(assert (=> b!7506514 m!8089028))

(declare-fun m!8089030 () Bool)

(assert (=> b!7506514 m!8089030))

(assert (=> d!2304080 d!2304328))

(assert (=> d!2304080 d!2304294))

(declare-fun d!2304330 () Bool)

(declare-fun c!1385850 () Bool)

(assert (=> d!2304330 (= c!1385850 ((_ is Nil!72397) (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))

(declare-fun e!4475889 () (InoxSet C!39748))

(assert (=> d!2304330 (= (content!15304 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) e!4475889)))

(declare-fun b!7506515 () Bool)

(assert (=> b!7506515 (= e!4475889 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506516 () Bool)

(assert (=> b!7506516 (= e!4475889 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) true) (content!15304 (t!387090 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(assert (= (and d!2304330 c!1385850) b!7506515))

(assert (= (and d!2304330 (not c!1385850)) b!7506516))

(declare-fun m!8089036 () Bool)

(assert (=> b!7506516 m!8089036))

(declare-fun m!8089040 () Bool)

(assert (=> b!7506516 m!8089040))

(assert (=> d!2304080 d!2304330))

(assert (=> b!7506324 d!2304144))

(assert (=> b!7506324 d!2304160))

(assert (=> b!7506310 d!2304144))

(declare-fun d!2304332 () Bool)

(declare-fun lt!2635316 () Int)

(assert (=> d!2304332 (>= lt!2635316 0)))

(declare-fun e!4475890 () Int)

(assert (=> d!2304332 (= lt!2635316 e!4475890)))

(declare-fun c!1385851 () Bool)

(assert (=> d!2304332 (= c!1385851 ((_ is Nil!72397) (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (=> d!2304332 (= (size!42282 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) lt!2635316)))

(declare-fun b!7506517 () Bool)

(assert (=> b!7506517 (= e!4475890 0)))

(declare-fun b!7506518 () Bool)

(assert (=> b!7506518 (= e!4475890 (+ 1 (size!42282 (t!387090 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))))

(assert (= (and d!2304332 c!1385851) b!7506517))

(assert (= (and d!2304332 (not c!1385851)) b!7506518))

(declare-fun m!8089044 () Bool)

(assert (=> b!7506518 m!8089044))

(assert (=> b!7506310 d!2304332))

(declare-fun b!7506523 () Bool)

(declare-fun e!4475893 () Bool)

(assert (=> b!7506523 (= e!4475893 (isPrefix!6005 (tail!14995 (tail!14995 testedP!204)) (tail!14995 (tail!14995 totalInput!779))))))

(declare-fun d!2304340 () Bool)

(declare-fun e!4475894 () Bool)

(assert (=> d!2304340 e!4475894))

(declare-fun res!3011612 () Bool)

(assert (=> d!2304340 (=> res!3011612 e!4475894)))

(declare-fun lt!2635317 () Bool)

(assert (=> d!2304340 (= res!3011612 (not lt!2635317))))

(declare-fun e!4475892 () Bool)

(assert (=> d!2304340 (= lt!2635317 e!4475892)))

(declare-fun res!3011610 () Bool)

(assert (=> d!2304340 (=> res!3011610 e!4475892)))

(assert (=> d!2304340 (= res!3011610 ((_ is Nil!72397) (tail!14995 testedP!204)))))

(assert (=> d!2304340 (= (isPrefix!6005 (tail!14995 testedP!204) (tail!14995 totalInput!779)) lt!2635317)))

(declare-fun b!7506522 () Bool)

(declare-fun res!3011613 () Bool)

(assert (=> b!7506522 (=> (not res!3011613) (not e!4475893))))

(assert (=> b!7506522 (= res!3011613 (= (head!15428 (tail!14995 testedP!204)) (head!15428 (tail!14995 totalInput!779))))))

(declare-fun b!7506521 () Bool)

(assert (=> b!7506521 (= e!4475892 e!4475893)))

(declare-fun res!3011611 () Bool)

(assert (=> b!7506521 (=> (not res!3011611) (not e!4475893))))

(assert (=> b!7506521 (= res!3011611 (not ((_ is Nil!72397) (tail!14995 totalInput!779))))))

(declare-fun b!7506524 () Bool)

(assert (=> b!7506524 (= e!4475894 (>= (size!42282 (tail!14995 totalInput!779)) (size!42282 (tail!14995 testedP!204))))))

(assert (= (and d!2304340 (not res!3011610)) b!7506521))

(assert (= (and b!7506521 res!3011611) b!7506522))

(assert (= (and b!7506522 res!3011613) b!7506523))

(assert (= (and d!2304340 (not res!3011612)) b!7506524))

(assert (=> b!7506523 m!8088700))

(assert (=> b!7506523 m!8089002))

(assert (=> b!7506523 m!8088668))

(assert (=> b!7506523 m!8088936))

(assert (=> b!7506523 m!8089002))

(assert (=> b!7506523 m!8088936))

(declare-fun m!8089050 () Bool)

(assert (=> b!7506523 m!8089050))

(assert (=> b!7506522 m!8088700))

(assert (=> b!7506522 m!8089008))

(assert (=> b!7506522 m!8088668))

(assert (=> b!7506522 m!8088942))

(assert (=> b!7506524 m!8088668))

(assert (=> b!7506524 m!8088944))

(assert (=> b!7506524 m!8088700))

(assert (=> b!7506524 m!8089014))

(assert (=> b!7506323 d!2304340))

(assert (=> b!7506323 d!2304306))

(assert (=> b!7506323 d!2304274))

(declare-fun d!2304346 () Bool)

(declare-fun lt!2635318 () Int)

(assert (=> d!2304346 (>= lt!2635318 0)))

(declare-fun e!4475896 () Int)

(assert (=> d!2304346 (= lt!2635318 e!4475896)))

(declare-fun c!1385854 () Bool)

(assert (=> d!2304346 (= c!1385854 ((_ is Nil!72397) lt!2635122))))

(assert (=> d!2304346 (= (size!42282 lt!2635122) lt!2635318)))

(declare-fun b!7506527 () Bool)

(assert (=> b!7506527 (= e!4475896 0)))

(declare-fun b!7506528 () Bool)

(assert (=> b!7506528 (= e!4475896 (+ 1 (size!42282 (t!387090 lt!2635122))))))

(assert (= (and d!2304346 c!1385854) b!7506527))

(assert (= (and d!2304346 (not c!1385854)) b!7506528))

(declare-fun m!8089056 () Bool)

(assert (=> b!7506528 m!8089056))

(assert (=> b!7506328 d!2304346))

(assert (=> b!7506328 d!2304160))

(declare-fun d!2304348 () Bool)

(declare-fun c!1385855 () Bool)

(assert (=> d!2304348 (= c!1385855 ((_ is Nil!72397) lt!2635136))))

(declare-fun e!4475897 () (InoxSet C!39748))

(assert (=> d!2304348 (= (content!15304 lt!2635136) e!4475897)))

(declare-fun b!7506529 () Bool)

(assert (=> b!7506529 (= e!4475897 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506530 () Bool)

(assert (=> b!7506530 (= e!4475897 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635136) true) (content!15304 (t!387090 lt!2635136))))))

(assert (= (and d!2304348 c!1385855) b!7506529))

(assert (= (and d!2304348 (not c!1385855)) b!7506530))

(declare-fun m!8089058 () Bool)

(assert (=> b!7506530 m!8089058))

(declare-fun m!8089060 () Bool)

(assert (=> b!7506530 m!8089060))

(assert (=> d!2304078 d!2304348))

(declare-fun d!2304350 () Bool)

(declare-fun c!1385856 () Bool)

(assert (=> d!2304350 (= c!1385856 ((_ is Nil!72397) lt!2635127))))

(declare-fun e!4475898 () (InoxSet C!39748))

(assert (=> d!2304350 (= (content!15304 lt!2635127) e!4475898)))

(declare-fun b!7506531 () Bool)

(assert (=> b!7506531 (= e!4475898 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506532 () Bool)

(assert (=> b!7506532 (= e!4475898 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635127) true) (content!15304 (t!387090 lt!2635127))))))

(assert (= (and d!2304350 c!1385856) b!7506531))

(assert (= (and d!2304350 (not c!1385856)) b!7506532))

(declare-fun m!8089062 () Bool)

(assert (=> b!7506532 m!8089062))

(declare-fun m!8089064 () Bool)

(assert (=> b!7506532 m!8089064))

(assert (=> d!2304078 d!2304350))

(declare-fun d!2304352 () Bool)

(declare-fun c!1385857 () Bool)

(assert (=> d!2304352 (= c!1385857 ((_ is Nil!72397) lt!2635128))))

(declare-fun e!4475899 () (InoxSet C!39748))

(assert (=> d!2304352 (= (content!15304 lt!2635128) e!4475899)))

(declare-fun b!7506533 () Bool)

(assert (=> b!7506533 (= e!4475899 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506534 () Bool)

(assert (=> b!7506534 (= e!4475899 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635128) true) (content!15304 (t!387090 lt!2635128))))))

(assert (= (and d!2304352 c!1385857) b!7506533))

(assert (= (and d!2304352 (not c!1385857)) b!7506534))

(declare-fun m!8089066 () Bool)

(assert (=> b!7506534 m!8089066))

(declare-fun m!8089068 () Bool)

(assert (=> b!7506534 m!8089068))

(assert (=> d!2304078 d!2304352))

(declare-fun d!2304354 () Bool)

(declare-fun e!4475901 () Bool)

(assert (=> d!2304354 e!4475901))

(declare-fun res!3011615 () Bool)

(assert (=> d!2304354 (=> (not res!3011615) (not e!4475901))))

(declare-fun lt!2635319 () List!72521)

(assert (=> d!2304354 (= res!3011615 (= (content!15304 lt!2635319) ((_ map or) (content!15304 (t!387090 testedP!204)) (content!15304 (Cons!72397 lt!2635132 Nil!72397)))))))

(declare-fun e!4475900 () List!72521)

(assert (=> d!2304354 (= lt!2635319 e!4475900)))

(declare-fun c!1385858 () Bool)

(assert (=> d!2304354 (= c!1385858 ((_ is Nil!72397) (t!387090 testedP!204)))))

(assert (=> d!2304354 (= (++!17340 (t!387090 testedP!204) (Cons!72397 lt!2635132 Nil!72397)) lt!2635319)))

(declare-fun b!7506537 () Bool)

(declare-fun res!3011614 () Bool)

(assert (=> b!7506537 (=> (not res!3011614) (not e!4475901))))

(assert (=> b!7506537 (= res!3011614 (= (size!42282 lt!2635319) (+ (size!42282 (t!387090 testedP!204)) (size!42282 (Cons!72397 lt!2635132 Nil!72397)))))))

(declare-fun b!7506535 () Bool)

(assert (=> b!7506535 (= e!4475900 (Cons!72397 lt!2635132 Nil!72397))))

(declare-fun b!7506538 () Bool)

(assert (=> b!7506538 (= e!4475901 (or (not (= (Cons!72397 lt!2635132 Nil!72397) Nil!72397)) (= lt!2635319 (t!387090 testedP!204))))))

(declare-fun b!7506536 () Bool)

(assert (=> b!7506536 (= e!4475900 (Cons!72397 (h!78845 (t!387090 testedP!204)) (++!17340 (t!387090 (t!387090 testedP!204)) (Cons!72397 lt!2635132 Nil!72397))))))

(assert (= (and d!2304354 c!1385858) b!7506535))

(assert (= (and d!2304354 (not c!1385858)) b!7506536))

(assert (= (and d!2304354 res!3011615) b!7506537))

(assert (= (and b!7506537 res!3011614) b!7506538))

(declare-fun m!8089070 () Bool)

(assert (=> d!2304354 m!8089070))

(assert (=> d!2304354 m!8088982))

(assert (=> d!2304354 m!8088506))

(declare-fun m!8089072 () Bool)

(assert (=> b!7506537 m!8089072))

(assert (=> b!7506537 m!8088720))

(assert (=> b!7506537 m!8088510))

(declare-fun m!8089074 () Bool)

(assert (=> b!7506536 m!8089074))

(assert (=> b!7506201 d!2304354))

(declare-fun e!4475903 () Bool)

(declare-fun b!7506541 () Bool)

(assert (=> b!7506541 (= e!4475903 (isPrefix!6005 (tail!14995 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))) (tail!14995 (tail!14995 totalInput!779))))))

(declare-fun d!2304358 () Bool)

(declare-fun e!4475904 () Bool)

(assert (=> d!2304358 e!4475904))

(declare-fun res!3011618 () Bool)

(assert (=> d!2304358 (=> res!3011618 e!4475904)))

(declare-fun lt!2635320 () Bool)

(assert (=> d!2304358 (= res!3011618 (not lt!2635320))))

(declare-fun e!4475902 () Bool)

(assert (=> d!2304358 (= lt!2635320 e!4475902)))

(declare-fun res!3011616 () Bool)

(assert (=> d!2304358 (=> res!3011616 e!4475902)))

(assert (=> d!2304358 (= res!3011616 ((_ is Nil!72397) (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(assert (=> d!2304358 (= (isPrefix!6005 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) (tail!14995 totalInput!779)) lt!2635320)))

(declare-fun b!7506540 () Bool)

(declare-fun res!3011619 () Bool)

(assert (=> b!7506540 (=> (not res!3011619) (not e!4475903))))

(assert (=> b!7506540 (= res!3011619 (= (head!15428 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))) (head!15428 (tail!14995 totalInput!779))))))

(declare-fun b!7506539 () Bool)

(assert (=> b!7506539 (= e!4475902 e!4475903)))

(declare-fun res!3011617 () Bool)

(assert (=> b!7506539 (=> (not res!3011617) (not e!4475903))))

(assert (=> b!7506539 (= res!3011617 (not ((_ is Nil!72397) (tail!14995 totalInput!779))))))

(declare-fun b!7506542 () Bool)

(assert (=> b!7506542 (= e!4475904 (>= (size!42282 (tail!14995 totalInput!779)) (size!42282 (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))))

(assert (= (and d!2304358 (not res!3011616)) b!7506539))

(assert (= (and b!7506539 res!3011617) b!7506540))

(assert (= (and b!7506540 res!3011619) b!7506541))

(assert (= (and d!2304358 (not res!3011618)) b!7506542))

(assert (=> b!7506541 m!8088666))

(declare-fun m!8089076 () Bool)

(assert (=> b!7506541 m!8089076))

(assert (=> b!7506541 m!8088668))

(assert (=> b!7506541 m!8088936))

(assert (=> b!7506541 m!8089076))

(assert (=> b!7506541 m!8088936))

(declare-fun m!8089078 () Bool)

(assert (=> b!7506541 m!8089078))

(assert (=> b!7506540 m!8088666))

(declare-fun m!8089080 () Bool)

(assert (=> b!7506540 m!8089080))

(assert (=> b!7506540 m!8088668))

(assert (=> b!7506540 m!8088942))

(assert (=> b!7506542 m!8088668))

(assert (=> b!7506542 m!8088944))

(assert (=> b!7506542 m!8088666))

(declare-fun m!8089082 () Bool)

(assert (=> b!7506542 m!8089082))

(assert (=> b!7506309 d!2304358))

(declare-fun d!2304360 () Bool)

(assert (=> d!2304360 (= (tail!14995 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))) (t!387090 (++!17340 testedP!204 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (=> b!7506309 d!2304360))

(assert (=> b!7506309 d!2304274))

(assert (=> b!7506322 d!2304318))

(assert (=> b!7506322 d!2304290))

(declare-fun d!2304362 () Bool)

(assert (=> d!2304362 (= (isEmpty!41312 (getLanguageWitness!1050 z!3716)) (not ((_ is Some!17227) (getLanguageWitness!1050 z!3716))))))

(assert (=> d!2304162 d!2304362))

(declare-fun bs!1938227 () Bool)

(declare-fun d!2304364 () Bool)

(assert (= bs!1938227 (and d!2304364 d!2304082)))

(declare-fun lambda!465451 () Int)

(assert (=> bs!1938227 (not (= lambda!465451 lambda!465409))))

(declare-fun bs!1938228 () Bool)

(assert (= bs!1938228 (and d!2304364 d!2304162)))

(assert (=> bs!1938228 (not (= lambda!465451 lambda!465422))))

(declare-fun bs!1938229 () Bool)

(assert (= bs!1938229 (and d!2304364 b!7506337)))

(assert (=> bs!1938229 (= lambda!465451 lambda!465423)))

(declare-fun bs!1938230 () Bool)

(assert (= bs!1938230 (and d!2304364 b!7506338)))

(assert (=> bs!1938230 (= lambda!465451 lambda!465424)))

(declare-fun lt!2635325 () Option!17228)

(declare-fun isDefined!13903 (Option!17228) Bool)

(assert (=> d!2304364 (= (isDefined!13903 lt!2635325) (exists!4863 z!3716 lambda!465451))))

(declare-fun e!4475926 () Option!17228)

(assert (=> d!2304364 (= lt!2635325 e!4475926)))

(declare-fun c!1385871 () Bool)

(assert (=> d!2304364 (= c!1385871 (exists!4863 z!3716 lambda!465451))))

(assert (=> d!2304364 (= (getLanguageWitness!1050 z!3716) lt!2635325)))

(declare-fun b!7506581 () Bool)

(declare-fun getLanguageWitness!1052 (Context!16926) Option!17228)

(declare-fun getWitness!2476 ((InoxSet Context!16926) Int) Context!16926)

(assert (=> b!7506581 (= e!4475926 (getLanguageWitness!1052 (getWitness!2476 z!3716 lambda!465451)))))

(declare-fun b!7506582 () Bool)

(assert (=> b!7506582 (= e!4475926 None!17227)))

(assert (= (and d!2304364 c!1385871) b!7506581))

(assert (= (and d!2304364 (not c!1385871)) b!7506582))

(declare-fun m!8089104 () Bool)

(assert (=> d!2304364 m!8089104))

(declare-fun m!8089106 () Bool)

(assert (=> d!2304364 m!8089106))

(assert (=> d!2304364 m!8089106))

(declare-fun m!8089108 () Bool)

(assert (=> b!7506581 m!8089108))

(assert (=> b!7506581 m!8089108))

(declare-fun m!8089110 () Bool)

(assert (=> b!7506581 m!8089110))

(assert (=> d!2304162 d!2304364))

(declare-fun d!2304376 () Bool)

(declare-fun lt!2635328 () Bool)

(declare-fun forall!18292 (List!72524 Int) Bool)

(assert (=> d!2304376 (= lt!2635328 (forall!18292 (toList!11832 z!3716) lambda!465422))))

(declare-fun choose!58131 ((InoxSet Context!16926) Int) Bool)

(assert (=> d!2304376 (= lt!2635328 (choose!58131 z!3716 lambda!465422))))

(assert (=> d!2304376 (= (forall!18289 z!3716 lambda!465422) lt!2635328)))

(declare-fun bs!1938231 () Bool)

(assert (= bs!1938231 d!2304376))

(assert (=> bs!1938231 m!8088734))

(assert (=> bs!1938231 m!8088734))

(declare-fun m!8089112 () Bool)

(assert (=> bs!1938231 m!8089112))

(declare-fun m!8089114 () Bool)

(assert (=> bs!1938231 m!8089114))

(assert (=> d!2304162 d!2304376))

(declare-fun d!2304378 () Bool)

(declare-fun e!4475928 () Bool)

(assert (=> d!2304378 e!4475928))

(declare-fun res!3011627 () Bool)

(assert (=> d!2304378 (=> (not res!3011627) (not e!4475928))))

(declare-fun lt!2635329 () List!72521)

(assert (=> d!2304378 (= res!3011627 (= (content!15304 lt!2635329) ((_ map or) (content!15304 (t!387090 testedP!204)) (content!15304 testedSuffix!164))))))

(declare-fun e!4475927 () List!72521)

(assert (=> d!2304378 (= lt!2635329 e!4475927)))

(declare-fun c!1385872 () Bool)

(assert (=> d!2304378 (= c!1385872 ((_ is Nil!72397) (t!387090 testedP!204)))))

(assert (=> d!2304378 (= (++!17340 (t!387090 testedP!204) testedSuffix!164) lt!2635329)))

(declare-fun b!7506585 () Bool)

(declare-fun res!3011626 () Bool)

(assert (=> b!7506585 (=> (not res!3011626) (not e!4475928))))

(assert (=> b!7506585 (= res!3011626 (= (size!42282 lt!2635329) (+ (size!42282 (t!387090 testedP!204)) (size!42282 testedSuffix!164))))))

(declare-fun b!7506583 () Bool)

(assert (=> b!7506583 (= e!4475927 testedSuffix!164)))

(declare-fun b!7506586 () Bool)

(assert (=> b!7506586 (= e!4475928 (or (not (= testedSuffix!164 Nil!72397)) (= lt!2635329 (t!387090 testedP!204))))))

(declare-fun b!7506584 () Bool)

(assert (=> b!7506584 (= e!4475927 (Cons!72397 (h!78845 (t!387090 testedP!204)) (++!17340 (t!387090 (t!387090 testedP!204)) testedSuffix!164)))))

(assert (= (and d!2304378 c!1385872) b!7506583))

(assert (= (and d!2304378 (not c!1385872)) b!7506584))

(assert (= (and d!2304378 res!3011627) b!7506585))

(assert (= (and b!7506585 res!3011626) b!7506586))

(declare-fun m!8089116 () Bool)

(assert (=> d!2304378 m!8089116))

(assert (=> d!2304378 m!8088982))

(assert (=> d!2304378 m!8088748))

(declare-fun m!8089118 () Bool)

(assert (=> b!7506585 m!8089118))

(assert (=> b!7506585 m!8088720))

(assert (=> b!7506585 m!8088752))

(declare-fun m!8089120 () Bool)

(assert (=> b!7506584 m!8089120))

(assert (=> b!7506346 d!2304378))

(declare-fun d!2304380 () Bool)

(declare-fun e!4475930 () Bool)

(assert (=> d!2304380 e!4475930))

(declare-fun res!3011629 () Bool)

(assert (=> d!2304380 (=> (not res!3011629) (not e!4475930))))

(declare-fun lt!2635330 () List!72521)

(assert (=> d!2304380 (= res!3011629 (= (content!15304 lt!2635330) ((_ map or) (content!15304 (t!387090 lt!2635127)) (content!15304 lt!2635128))))))

(declare-fun e!4475929 () List!72521)

(assert (=> d!2304380 (= lt!2635330 e!4475929)))

(declare-fun c!1385873 () Bool)

(assert (=> d!2304380 (= c!1385873 ((_ is Nil!72397) (t!387090 lt!2635127)))))

(assert (=> d!2304380 (= (++!17340 (t!387090 lt!2635127) lt!2635128) lt!2635330)))

(declare-fun b!7506589 () Bool)

(declare-fun res!3011628 () Bool)

(assert (=> b!7506589 (=> (not res!3011628) (not e!4475930))))

(assert (=> b!7506589 (= res!3011628 (= (size!42282 lt!2635330) (+ (size!42282 (t!387090 lt!2635127)) (size!42282 lt!2635128))))))

(declare-fun b!7506587 () Bool)

(assert (=> b!7506587 (= e!4475929 lt!2635128)))

(declare-fun b!7506590 () Bool)

(assert (=> b!7506590 (= e!4475930 (or (not (= lt!2635128 Nil!72397)) (= lt!2635330 (t!387090 lt!2635127))))))

(declare-fun b!7506588 () Bool)

(assert (=> b!7506588 (= e!4475929 (Cons!72397 (h!78845 (t!387090 lt!2635127)) (++!17340 (t!387090 (t!387090 lt!2635127)) lt!2635128)))))

(assert (= (and d!2304380 c!1385873) b!7506587))

(assert (= (and d!2304380 (not c!1385873)) b!7506588))

(assert (= (and d!2304380 res!3011629) b!7506589))

(assert (= (and b!7506589 res!3011628) b!7506590))

(declare-fun m!8089122 () Bool)

(assert (=> d!2304380 m!8089122))

(assert (=> d!2304380 m!8089064))

(assert (=> d!2304380 m!8088518))

(declare-fun m!8089124 () Bool)

(assert (=> b!7506589 m!8089124))

(assert (=> b!7506589 m!8088718))

(assert (=> b!7506589 m!8088522))

(declare-fun m!8089126 () Bool)

(assert (=> b!7506588 m!8089126))

(assert (=> b!7506205 d!2304380))

(declare-fun bs!1938232 () Bool)

(declare-fun d!2304382 () Bool)

(assert (= bs!1938232 (and d!2304382 d!2304168)))

(declare-fun lambda!465452 () Int)

(assert (=> bs!1938232 (= lambda!465452 lambda!465427)))

(assert (=> d!2304382 (= (inv!92507 setElem!57030) (forall!18290 (exprs!8963 setElem!57030) lambda!465452))))

(declare-fun bs!1938233 () Bool)

(assert (= bs!1938233 d!2304382))

(declare-fun m!8089128 () Bool)

(assert (=> bs!1938233 m!8089128))

(assert (=> setNonEmpty!57030 d!2304382))

(declare-fun d!2304384 () Bool)

(declare-fun lt!2635331 () List!72521)

(assert (=> d!2304384 (= (++!17340 (t!387090 testedP!204) lt!2635331) (tail!14995 totalInput!779))))

(declare-fun e!4475931 () List!72521)

(assert (=> d!2304384 (= lt!2635331 e!4475931)))

(declare-fun c!1385874 () Bool)

(assert (=> d!2304384 (= c!1385874 ((_ is Cons!72397) (t!387090 testedP!204)))))

(assert (=> d!2304384 (>= (size!42282 (tail!14995 totalInput!779)) (size!42282 (t!387090 testedP!204)))))

(assert (=> d!2304384 (= (getSuffix!3505 (tail!14995 totalInput!779) (t!387090 testedP!204)) lt!2635331)))

(declare-fun b!7506591 () Bool)

(assert (=> b!7506591 (= e!4475931 (getSuffix!3505 (tail!14995 (tail!14995 totalInput!779)) (t!387090 (t!387090 testedP!204))))))

(declare-fun b!7506592 () Bool)

(assert (=> b!7506592 (= e!4475931 (tail!14995 totalInput!779))))

(assert (= (and d!2304384 c!1385874) b!7506591))

(assert (= (and d!2304384 (not c!1385874)) b!7506592))

(declare-fun m!8089130 () Bool)

(assert (=> d!2304384 m!8089130))

(assert (=> d!2304384 m!8088668))

(assert (=> d!2304384 m!8088944))

(assert (=> d!2304384 m!8088720))

(assert (=> b!7506591 m!8088668))

(assert (=> b!7506591 m!8088936))

(assert (=> b!7506591 m!8088936))

(declare-fun m!8089132 () Bool)

(assert (=> b!7506591 m!8089132))

(assert (=> b!7506343 d!2304384))

(assert (=> b!7506343 d!2304274))

(declare-fun d!2304386 () Bool)

(declare-fun lt!2635334 () Bool)

(assert (=> d!2304386 (= lt!2635334 (exists!4864 (toList!11832 z!3716) lambda!465409))))

(declare-fun choose!58133 ((InoxSet Context!16926) Int) Bool)

(assert (=> d!2304386 (= lt!2635334 (choose!58133 z!3716 lambda!465409))))

(assert (=> d!2304386 (= (exists!4863 z!3716 lambda!465409) lt!2635334)))

(declare-fun bs!1938234 () Bool)

(assert (= bs!1938234 d!2304386))

(assert (=> bs!1938234 m!8088734))

(assert (=> bs!1938234 m!8088734))

(declare-fun m!8089134 () Bool)

(assert (=> bs!1938234 m!8089134))

(declare-fun m!8089136 () Bool)

(assert (=> bs!1938234 m!8089136))

(assert (=> d!2304082 d!2304386))

(declare-fun d!2304388 () Bool)

(declare-fun e!4475934 () Bool)

(assert (=> d!2304388 e!4475934))

(declare-fun res!3011632 () Bool)

(assert (=> d!2304388 (=> (not res!3011632) (not e!4475934))))

(declare-fun lt!2635337 () List!72524)

(declare-fun noDuplicate!3143 (List!72524) Bool)

(assert (=> d!2304388 (= res!3011632 (noDuplicate!3143 lt!2635337))))

(declare-fun choose!58134 ((InoxSet Context!16926)) List!72524)

(assert (=> d!2304388 (= lt!2635337 (choose!58134 z!3716))))

(assert (=> d!2304388 (= (toList!11832 z!3716) lt!2635337)))

(declare-fun b!7506595 () Bool)

(declare-fun content!15306 (List!72524) (InoxSet Context!16926))

(assert (=> b!7506595 (= e!4475934 (= (content!15306 lt!2635337) z!3716))))

(assert (= (and d!2304388 res!3011632) b!7506595))

(declare-fun m!8089138 () Bool)

(assert (=> d!2304388 m!8089138))

(declare-fun m!8089140 () Bool)

(assert (=> d!2304388 m!8089140))

(declare-fun m!8089142 () Bool)

(assert (=> b!7506595 m!8089142))

(assert (=> bm!688722 d!2304388))

(declare-fun bs!1938235 () Bool)

(declare-fun d!2304390 () Bool)

(assert (= bs!1938235 (and d!2304390 d!2304082)))

(declare-fun lambda!465455 () Int)

(assert (=> bs!1938235 (not (= lambda!465455 lambda!465409))))

(declare-fun bs!1938236 () Bool)

(assert (= bs!1938236 (and d!2304390 d!2304364)))

(assert (=> bs!1938236 (not (= lambda!465455 lambda!465451))))

(declare-fun bs!1938237 () Bool)

(assert (= bs!1938237 (and d!2304390 d!2304162)))

(assert (=> bs!1938237 (not (= lambda!465455 lambda!465422))))

(declare-fun bs!1938238 () Bool)

(assert (= bs!1938238 (and d!2304390 b!7506337)))

(assert (=> bs!1938238 (not (= lambda!465455 lambda!465423))))

(declare-fun bs!1938239 () Bool)

(assert (= bs!1938239 (and d!2304390 b!7506338)))

(assert (=> bs!1938239 (not (= lambda!465455 lambda!465424))))

(assert (=> d!2304390 true))

(declare-fun order!29647 () Int)

(declare-fun dynLambda!29777 (Int Int) Int)

(assert (=> d!2304390 (< (dynLambda!29777 order!29647 lambda!465422) (dynLambda!29777 order!29647 lambda!465455))))

(assert (=> d!2304390 (not (exists!4864 lt!2635245 lambda!465455))))

(declare-fun lt!2635340 () Unit!166394)

(declare-fun choose!58135 (List!72524 Int) Unit!166394)

(assert (=> d!2304390 (= lt!2635340 (choose!58135 lt!2635245 lambda!465422))))

(assert (=> d!2304390 (forall!18292 lt!2635245 lambda!465422)))

(assert (=> d!2304390 (= (lemmaForallThenNotExists!470 lt!2635245 lambda!465422) lt!2635340)))

(declare-fun bs!1938240 () Bool)

(assert (= bs!1938240 d!2304390))

(declare-fun m!8089144 () Bool)

(assert (=> bs!1938240 m!8089144))

(declare-fun m!8089146 () Bool)

(assert (=> bs!1938240 m!8089146))

(declare-fun m!8089148 () Bool)

(assert (=> bs!1938240 m!8089148))

(assert (=> b!7506338 d!2304390))

(assert (=> d!2304170 d!2304160))

(assert (=> d!2304170 d!2304144))

(declare-fun d!2304392 () Bool)

(assert (=> d!2304392 (<= (size!42282 testedP!204) (size!42282 totalInput!779))))

(assert (=> d!2304392 true))

(declare-fun _$64!871 () Unit!166394)

(assert (=> d!2304392 (= (choose!58126 testedP!204 totalInput!779) _$64!871)))

(declare-fun bs!1938241 () Bool)

(assert (= bs!1938241 d!2304392))

(assert (=> bs!1938241 m!8088460))

(assert (=> bs!1938241 m!8088488))

(assert (=> d!2304170 d!2304392))

(assert (=> d!2304170 d!2304152))

(declare-fun d!2304394 () Bool)

(declare-fun lt!2635341 () Int)

(assert (=> d!2304394 (>= lt!2635341 0)))

(declare-fun e!4475937 () Int)

(assert (=> d!2304394 (= lt!2635341 e!4475937)))

(declare-fun c!1385875 () Bool)

(assert (=> d!2304394 (= c!1385875 ((_ is Nil!72397) lt!2635262))))

(assert (=> d!2304394 (= (size!42282 lt!2635262) lt!2635341)))

(declare-fun b!7506598 () Bool)

(assert (=> b!7506598 (= e!4475937 0)))

(declare-fun b!7506599 () Bool)

(assert (=> b!7506599 (= e!4475937 (+ 1 (size!42282 (t!387090 lt!2635262))))))

(assert (= (and d!2304394 c!1385875) b!7506598))

(assert (= (and d!2304394 (not c!1385875)) b!7506599))

(declare-fun m!8089150 () Bool)

(assert (=> b!7506599 m!8089150))

(assert (=> b!7506347 d!2304394))

(assert (=> b!7506347 d!2304160))

(declare-fun d!2304396 () Bool)

(declare-fun lt!2635342 () Int)

(assert (=> d!2304396 (>= lt!2635342 0)))

(declare-fun e!4475938 () Int)

(assert (=> d!2304396 (= lt!2635342 e!4475938)))

(declare-fun c!1385876 () Bool)

(assert (=> d!2304396 (= c!1385876 ((_ is Nil!72397) testedSuffix!164))))

(assert (=> d!2304396 (= (size!42282 testedSuffix!164) lt!2635342)))

(declare-fun b!7506600 () Bool)

(assert (=> b!7506600 (= e!4475938 0)))

(declare-fun b!7506601 () Bool)

(assert (=> b!7506601 (= e!4475938 (+ 1 (size!42282 (t!387090 testedSuffix!164))))))

(assert (= (and d!2304396 c!1385876) b!7506600))

(assert (= (and d!2304396 (not c!1385876)) b!7506601))

(declare-fun m!8089152 () Bool)

(assert (=> b!7506601 m!8089152))

(assert (=> b!7506347 d!2304396))

(declare-fun d!2304398 () Bool)

(declare-fun e!4475940 () Bool)

(assert (=> d!2304398 e!4475940))

(declare-fun res!3011634 () Bool)

(assert (=> d!2304398 (=> (not res!3011634) (not e!4475940))))

(declare-fun lt!2635343 () List!72521)

(assert (=> d!2304398 (= res!3011634 (= (content!15304 lt!2635343) ((_ map or) (content!15304 testedP!204) (content!15304 lt!2635258))))))

(declare-fun e!4475939 () List!72521)

(assert (=> d!2304398 (= lt!2635343 e!4475939)))

(declare-fun c!1385877 () Bool)

(assert (=> d!2304398 (= c!1385877 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304398 (= (++!17340 testedP!204 lt!2635258) lt!2635343)))

(declare-fun b!7506604 () Bool)

(declare-fun res!3011633 () Bool)

(assert (=> b!7506604 (=> (not res!3011633) (not e!4475940))))

(assert (=> b!7506604 (= res!3011633 (= (size!42282 lt!2635343) (+ (size!42282 testedP!204) (size!42282 lt!2635258))))))

(declare-fun b!7506602 () Bool)

(assert (=> b!7506602 (= e!4475939 lt!2635258)))

(declare-fun b!7506605 () Bool)

(assert (=> b!7506605 (= e!4475940 (or (not (= lt!2635258 Nil!72397)) (= lt!2635343 testedP!204)))))

(declare-fun b!7506603 () Bool)

(assert (=> b!7506603 (= e!4475939 (Cons!72397 (h!78845 testedP!204) (++!17340 (t!387090 testedP!204) lt!2635258)))))

(assert (= (and d!2304398 c!1385877) b!7506602))

(assert (= (and d!2304398 (not c!1385877)) b!7506603))

(assert (= (and d!2304398 res!3011634) b!7506604))

(assert (= (and b!7506604 res!3011633) b!7506605))

(declare-fun m!8089154 () Bool)

(assert (=> d!2304398 m!8089154))

(assert (=> d!2304398 m!8088504))

(declare-fun m!8089156 () Bool)

(assert (=> d!2304398 m!8089156))

(declare-fun m!8089158 () Bool)

(assert (=> b!7506604 m!8089158))

(assert (=> b!7506604 m!8088460))

(declare-fun m!8089160 () Bool)

(assert (=> b!7506604 m!8089160))

(declare-fun m!8089162 () Bool)

(assert (=> b!7506603 m!8089162))

(assert (=> d!2304166 d!2304398))

(assert (=> d!2304166 d!2304144))

(assert (=> d!2304166 d!2304160))

(declare-fun bs!1938242 () Bool)

(declare-fun d!2304400 () Bool)

(assert (= bs!1938242 (and d!2304400 d!2304082)))

(declare-fun lambda!465458 () Int)

(assert (=> bs!1938242 (not (= lambda!465458 lambda!465409))))

(declare-fun bs!1938243 () Bool)

(assert (= bs!1938243 (and d!2304400 d!2304364)))

(assert (=> bs!1938243 (not (= lambda!465458 lambda!465451))))

(declare-fun bs!1938244 () Bool)

(assert (= bs!1938244 (and d!2304400 d!2304162)))

(assert (=> bs!1938244 (not (= lambda!465458 lambda!465422))))

(declare-fun bs!1938245 () Bool)

(assert (= bs!1938245 (and d!2304400 d!2304390)))

(assert (=> bs!1938245 (= lambda!465458 lambda!465455)))

(declare-fun bs!1938246 () Bool)

(assert (= bs!1938246 (and d!2304400 b!7506337)))

(assert (=> bs!1938246 (not (= lambda!465458 lambda!465423))))

(declare-fun bs!1938247 () Bool)

(assert (= bs!1938247 (and d!2304400 b!7506338)))

(assert (=> bs!1938247 (not (= lambda!465458 lambda!465424))))

(assert (=> d!2304400 true))

(assert (=> d!2304400 (< (dynLambda!29777 order!29647 lambda!465422) (dynLambda!29777 order!29647 lambda!465458))))

(assert (=> d!2304400 (exists!4864 lt!2635252 lambda!465458)))

(declare-fun lt!2635346 () Unit!166394)

(declare-fun choose!58136 (List!72524 Int) Unit!166394)

(assert (=> d!2304400 (= lt!2635346 (choose!58136 lt!2635252 lambda!465422))))

(assert (=> d!2304400 (not (forall!18292 lt!2635252 lambda!465422))))

(assert (=> d!2304400 (= (lemmaNotForallThenExists!503 lt!2635252 lambda!465422) lt!2635346)))

(declare-fun bs!1938248 () Bool)

(assert (= bs!1938248 d!2304400))

(declare-fun m!8089164 () Bool)

(assert (=> bs!1938248 m!8089164))

(declare-fun m!8089166 () Bool)

(assert (=> bs!1938248 m!8089166))

(declare-fun m!8089168 () Bool)

(assert (=> bs!1938248 m!8089168))

(assert (=> b!7506337 d!2304400))

(declare-fun d!2304402 () Bool)

(declare-fun lt!2635347 () Int)

(assert (=> d!2304402 (>= lt!2635347 0)))

(declare-fun e!4475943 () Int)

(assert (=> d!2304402 (= lt!2635347 e!4475943)))

(declare-fun c!1385878 () Bool)

(assert (=> d!2304402 (= c!1385878 ((_ is Nil!72397) lt!2635137))))

(assert (=> d!2304402 (= (size!42282 lt!2635137) lt!2635347)))

(declare-fun b!7506606 () Bool)

(assert (=> b!7506606 (= e!4475943 0)))

(declare-fun b!7506607 () Bool)

(assert (=> b!7506607 (= e!4475943 (+ 1 (size!42282 (t!387090 lt!2635137))))))

(assert (= (and d!2304402 c!1385878) b!7506606))

(assert (= (and d!2304402 (not c!1385878)) b!7506607))

(declare-fun m!8089170 () Bool)

(assert (=> b!7506607 m!8089170))

(assert (=> b!7506210 d!2304402))

(assert (=> b!7506210 d!2304160))

(declare-fun d!2304404 () Bool)

(declare-fun lt!2635348 () Int)

(assert (=> d!2304404 (>= lt!2635348 0)))

(declare-fun e!4475944 () Int)

(assert (=> d!2304404 (= lt!2635348 e!4475944)))

(declare-fun c!1385879 () Bool)

(assert (=> d!2304404 (= c!1385879 ((_ is Nil!72397) (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))

(assert (=> d!2304404 (= (size!42282 (Cons!72397 (head!15428 lt!2635119) Nil!72397)) lt!2635348)))

(declare-fun b!7506608 () Bool)

(assert (=> b!7506608 (= e!4475944 0)))

(declare-fun b!7506609 () Bool)

(assert (=> b!7506609 (= e!4475944 (+ 1 (size!42282 (t!387090 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(assert (= (and d!2304404 c!1385879) b!7506608))

(assert (= (and d!2304404 (not c!1385879)) b!7506609))

(declare-fun m!8089172 () Bool)

(assert (=> b!7506609 m!8089172))

(assert (=> b!7506210 d!2304404))

(declare-fun d!2304406 () Bool)

(declare-fun res!3011639 () Bool)

(declare-fun e!4475949 () Bool)

(assert (=> d!2304406 (=> res!3011639 e!4475949)))

(assert (=> d!2304406 (= res!3011639 ((_ is Nil!72398) (exprs!8963 setElem!57024)))))

(assert (=> d!2304406 (= (forall!18290 (exprs!8963 setElem!57024) lambda!465427) e!4475949)))

(declare-fun b!7506614 () Bool)

(declare-fun e!4475950 () Bool)

(assert (=> b!7506614 (= e!4475949 e!4475950)))

(declare-fun res!3011640 () Bool)

(assert (=> b!7506614 (=> (not res!3011640) (not e!4475950))))

(declare-fun dynLambda!29779 (Int Regex!19711) Bool)

(assert (=> b!7506614 (= res!3011640 (dynLambda!29779 lambda!465427 (h!78846 (exprs!8963 setElem!57024))))))

(declare-fun b!7506615 () Bool)

(assert (=> b!7506615 (= e!4475950 (forall!18290 (t!387091 (exprs!8963 setElem!57024)) lambda!465427))))

(assert (= (and d!2304406 (not res!3011639)) b!7506614))

(assert (= (and b!7506614 res!3011640) b!7506615))

(declare-fun b_lambda!287863 () Bool)

(assert (=> (not b_lambda!287863) (not b!7506614)))

(declare-fun m!8089174 () Bool)

(assert (=> b!7506614 m!8089174))

(declare-fun m!8089176 () Bool)

(assert (=> b!7506615 m!8089176))

(assert (=> d!2304168 d!2304406))

(declare-fun bs!1938249 () Bool)

(declare-fun d!2304408 () Bool)

(assert (= bs!1938249 (and d!2304408 d!2304082)))

(declare-fun lambda!465461 () Int)

(assert (=> bs!1938249 (not (= lambda!465461 lambda!465409))))

(declare-fun bs!1938250 () Bool)

(assert (= bs!1938250 (and d!2304408 d!2304400)))

(assert (=> bs!1938250 (= (= (ite c!1385796 lambda!465423 lambda!465424) lambda!465422) (= lambda!465461 lambda!465458))))

(declare-fun bs!1938251 () Bool)

(assert (= bs!1938251 (and d!2304408 d!2304364)))

(assert (=> bs!1938251 (not (= lambda!465461 lambda!465451))))

(declare-fun bs!1938252 () Bool)

(assert (= bs!1938252 (and d!2304408 d!2304162)))

(assert (=> bs!1938252 (not (= lambda!465461 lambda!465422))))

(declare-fun bs!1938253 () Bool)

(assert (= bs!1938253 (and d!2304408 d!2304390)))

(assert (=> bs!1938253 (= (= (ite c!1385796 lambda!465423 lambda!465424) lambda!465422) (= lambda!465461 lambda!465455))))

(declare-fun bs!1938254 () Bool)

(assert (= bs!1938254 (and d!2304408 b!7506337)))

(assert (=> bs!1938254 (not (= lambda!465461 lambda!465423))))

(declare-fun bs!1938255 () Bool)

(assert (= bs!1938255 (and d!2304408 b!7506338)))

(assert (=> bs!1938255 (not (= lambda!465461 lambda!465424))))

(assert (=> d!2304408 true))

(assert (=> d!2304408 (< (dynLambda!29777 order!29647 (ite c!1385796 lambda!465423 lambda!465424)) (dynLambda!29777 order!29647 lambda!465461))))

(assert (=> d!2304408 (= (exists!4864 (ite c!1385796 lt!2635252 lt!2635245) (ite c!1385796 lambda!465423 lambda!465424)) (not (forall!18292 (ite c!1385796 lt!2635252 lt!2635245) lambda!465461)))))

(declare-fun bs!1938256 () Bool)

(assert (= bs!1938256 d!2304408))

(declare-fun m!8089178 () Bool)

(assert (=> bs!1938256 m!8089178))

(assert (=> bm!688723 d!2304408))

(declare-fun d!2304410 () Bool)

(declare-fun lt!2635349 () Int)

(assert (=> d!2304410 (>= lt!2635349 0)))

(declare-fun e!4475951 () Int)

(assert (=> d!2304410 (= lt!2635349 e!4475951)))

(declare-fun c!1385880 () Bool)

(assert (=> d!2304410 (= c!1385880 ((_ is Nil!72397) (t!387090 lt!2635127)))))

(assert (=> d!2304410 (= (size!42282 (t!387090 lt!2635127)) lt!2635349)))

(declare-fun b!7506616 () Bool)

(assert (=> b!7506616 (= e!4475951 0)))

(declare-fun b!7506617 () Bool)

(assert (=> b!7506617 (= e!4475951 (+ 1 (size!42282 (t!387090 (t!387090 lt!2635127)))))))

(assert (= (and d!2304410 c!1385880) b!7506616))

(assert (= (and d!2304410 (not c!1385880)) b!7506617))

(declare-fun m!8089180 () Bool)

(assert (=> b!7506617 m!8089180))

(assert (=> b!7506330 d!2304410))

(declare-fun d!2304412 () Bool)

(declare-fun lt!2635350 () Int)

(assert (=> d!2304412 (>= lt!2635350 0)))

(declare-fun e!4475952 () Int)

(assert (=> d!2304412 (= lt!2635350 e!4475952)))

(declare-fun c!1385881 () Bool)

(assert (=> d!2304412 (= c!1385881 ((_ is Nil!72397) (t!387090 totalInput!779)))))

(assert (=> d!2304412 (= (size!42282 (t!387090 totalInput!779)) lt!2635350)))

(declare-fun b!7506618 () Bool)

(assert (=> b!7506618 (= e!4475952 0)))

(declare-fun b!7506619 () Bool)

(assert (=> b!7506619 (= e!4475952 (+ 1 (size!42282 (t!387090 (t!387090 totalInput!779)))))))

(assert (= (and d!2304412 c!1385881) b!7506618))

(assert (= (and d!2304412 (not c!1385881)) b!7506619))

(declare-fun m!8089182 () Bool)

(assert (=> b!7506619 m!8089182))

(assert (=> b!7506316 d!2304412))

(declare-fun d!2304414 () Bool)

(declare-fun lt!2635351 () Int)

(assert (=> d!2304414 (>= lt!2635351 0)))

(declare-fun e!4475953 () Int)

(assert (=> d!2304414 (= lt!2635351 e!4475953)))

(declare-fun c!1385882 () Bool)

(assert (=> d!2304414 (= c!1385882 ((_ is Nil!72397) lt!2635136))))

(assert (=> d!2304414 (= (size!42282 lt!2635136) lt!2635351)))

(declare-fun b!7506620 () Bool)

(assert (=> b!7506620 (= e!4475953 0)))

(declare-fun b!7506621 () Bool)

(assert (=> b!7506621 (= e!4475953 (+ 1 (size!42282 (t!387090 lt!2635136))))))

(assert (= (and d!2304414 c!1385882) b!7506620))

(assert (= (and d!2304414 (not c!1385882)) b!7506621))

(declare-fun m!8089184 () Bool)

(assert (=> b!7506621 m!8089184))

(assert (=> b!7506206 d!2304414))

(assert (=> b!7506206 d!2304158))

(declare-fun d!2304416 () Bool)

(declare-fun lt!2635352 () Int)

(assert (=> d!2304416 (>= lt!2635352 0)))

(declare-fun e!4475954 () Int)

(assert (=> d!2304416 (= lt!2635352 e!4475954)))

(declare-fun c!1385883 () Bool)

(assert (=> d!2304416 (= c!1385883 ((_ is Nil!72397) lt!2635128))))

(assert (=> d!2304416 (= (size!42282 lt!2635128) lt!2635352)))

(declare-fun b!7506622 () Bool)

(assert (=> b!7506622 (= e!4475954 0)))

(declare-fun b!7506623 () Bool)

(assert (=> b!7506623 (= e!4475954 (+ 1 (size!42282 (t!387090 lt!2635128))))))

(assert (= (and d!2304416 c!1385883) b!7506622))

(assert (= (and d!2304416 (not c!1385883)) b!7506623))

(declare-fun m!8089186 () Bool)

(assert (=> b!7506623 m!8089186))

(assert (=> b!7506206 d!2304416))

(declare-fun d!2304418 () Bool)

(declare-fun c!1385884 () Bool)

(assert (=> d!2304418 (= c!1385884 ((_ is Nil!72397) lt!2635135))))

(declare-fun e!4475955 () (InoxSet C!39748))

(assert (=> d!2304418 (= (content!15304 lt!2635135) e!4475955)))

(declare-fun b!7506624 () Bool)

(assert (=> b!7506624 (= e!4475955 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506625 () Bool)

(assert (=> b!7506625 (= e!4475955 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 lt!2635135) true) (content!15304 (t!387090 lt!2635135))))))

(assert (= (and d!2304418 c!1385884) b!7506624))

(assert (= (and d!2304418 (not c!1385884)) b!7506625))

(declare-fun m!8089188 () Bool)

(assert (=> b!7506625 m!8089188))

(declare-fun m!8089190 () Bool)

(assert (=> b!7506625 m!8089190))

(assert (=> d!2304074 d!2304418))

(assert (=> d!2304074 d!2304294))

(declare-fun d!2304420 () Bool)

(declare-fun c!1385885 () Bool)

(assert (=> d!2304420 (= c!1385885 ((_ is Nil!72397) (Cons!72397 lt!2635132 Nil!72397)))))

(declare-fun e!4475956 () (InoxSet C!39748))

(assert (=> d!2304420 (= (content!15304 (Cons!72397 lt!2635132 Nil!72397)) e!4475956)))

(declare-fun b!7506626 () Bool)

(assert (=> b!7506626 (= e!4475956 ((as const (Array C!39748 Bool)) false))))

(declare-fun b!7506627 () Bool)

(assert (=> b!7506627 (= e!4475956 ((_ map or) (store ((as const (Array C!39748 Bool)) false) (h!78845 (Cons!72397 lt!2635132 Nil!72397)) true) (content!15304 (t!387090 (Cons!72397 lt!2635132 Nil!72397)))))))

(assert (= (and d!2304420 c!1385885) b!7506626))

(assert (= (and d!2304420 (not c!1385885)) b!7506627))

(declare-fun m!8089192 () Bool)

(assert (=> b!7506627 m!8089192))

(declare-fun m!8089194 () Bool)

(assert (=> b!7506627 m!8089194))

(assert (=> d!2304074 d!2304420))

(declare-fun d!2304422 () Bool)

(assert (=> d!2304422 (= testedSuffix!164 lt!2635119)))

(assert (=> d!2304422 true))

(declare-fun _$63!1355 () Unit!166394)

(assert (=> d!2304422 (= (choose!58125 testedP!204 testedSuffix!164 testedP!204 lt!2635119 totalInput!779) _$63!1355)))

(assert (=> d!2304164 d!2304422))

(assert (=> d!2304164 d!2304152))

(assert (=> d!2304146 d!2304148))

(declare-fun d!2304424 () Bool)

(assert (=> d!2304424 (isPrefix!6005 totalInput!779 totalInput!779)))

(assert (=> d!2304424 true))

(declare-fun _$45!2395 () Unit!166394)

(assert (=> d!2304424 (= (choose!58122 totalInput!779 totalInput!779) _$45!2395)))

(declare-fun bs!1938257 () Bool)

(assert (= bs!1938257 d!2304424))

(assert (=> bs!1938257 m!8088456))

(assert (=> d!2304146 d!2304424))

(declare-fun d!2304426 () Bool)

(declare-fun e!4475958 () Bool)

(assert (=> d!2304426 e!4475958))

(declare-fun res!3011642 () Bool)

(assert (=> d!2304426 (=> (not res!3011642) (not e!4475958))))

(declare-fun lt!2635353 () List!72521)

(assert (=> d!2304426 (= res!3011642 (= (content!15304 lt!2635353) ((_ map or) (content!15304 (t!387090 testedP!204)) (content!15304 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(declare-fun e!4475957 () List!72521)

(assert (=> d!2304426 (= lt!2635353 e!4475957)))

(declare-fun c!1385886 () Bool)

(assert (=> d!2304426 (= c!1385886 ((_ is Nil!72397) (t!387090 testedP!204)))))

(assert (=> d!2304426 (= (++!17340 (t!387090 testedP!204) (Cons!72397 (head!15428 lt!2635119) Nil!72397)) lt!2635353)))

(declare-fun b!7506630 () Bool)

(declare-fun res!3011641 () Bool)

(assert (=> b!7506630 (=> (not res!3011641) (not e!4475958))))

(assert (=> b!7506630 (= res!3011641 (= (size!42282 lt!2635353) (+ (size!42282 (t!387090 testedP!204)) (size!42282 (Cons!72397 (head!15428 lt!2635119) Nil!72397)))))))

(declare-fun b!7506628 () Bool)

(assert (=> b!7506628 (= e!4475957 (Cons!72397 (head!15428 lt!2635119) Nil!72397))))

(declare-fun b!7506631 () Bool)

(assert (=> b!7506631 (= e!4475958 (or (not (= (Cons!72397 (head!15428 lt!2635119) Nil!72397) Nil!72397)) (= lt!2635353 (t!387090 testedP!204))))))

(declare-fun b!7506629 () Bool)

(assert (=> b!7506629 (= e!4475957 (Cons!72397 (h!78845 (t!387090 testedP!204)) (++!17340 (t!387090 (t!387090 testedP!204)) (Cons!72397 (head!15428 lt!2635119) Nil!72397))))))

(assert (= (and d!2304426 c!1385886) b!7506628))

(assert (= (and d!2304426 (not c!1385886)) b!7506629))

(assert (= (and d!2304426 res!3011642) b!7506630))

(assert (= (and b!7506630 res!3011641) b!7506631))

(declare-fun m!8089196 () Bool)

(assert (=> d!2304426 m!8089196))

(assert (=> d!2304426 m!8088982))

(assert (=> d!2304426 m!8088528))

(declare-fun m!8089198 () Bool)

(assert (=> b!7506630 m!8089198))

(assert (=> b!7506630 m!8088720))

(assert (=> b!7506630 m!8088532))

(declare-fun m!8089200 () Bool)

(assert (=> b!7506629 m!8089200))

(assert (=> b!7506209 d!2304426))

(declare-fun b!7506634 () Bool)

(declare-fun e!4475960 () Bool)

(assert (=> b!7506634 (= e!4475960 (isPrefix!6005 (tail!14995 testedP!204) (tail!14995 (++!17340 testedP!204 testedSuffix!164))))))

(declare-fun d!2304428 () Bool)

(declare-fun e!4475961 () Bool)

(assert (=> d!2304428 e!4475961))

(declare-fun res!3011645 () Bool)

(assert (=> d!2304428 (=> res!3011645 e!4475961)))

(declare-fun lt!2635354 () Bool)

(assert (=> d!2304428 (= res!3011645 (not lt!2635354))))

(declare-fun e!4475959 () Bool)

(assert (=> d!2304428 (= lt!2635354 e!4475959)))

(declare-fun res!3011643 () Bool)

(assert (=> d!2304428 (=> res!3011643 e!4475959)))

(assert (=> d!2304428 (= res!3011643 ((_ is Nil!72397) testedP!204))))

(assert (=> d!2304428 (= (isPrefix!6005 testedP!204 (++!17340 testedP!204 testedSuffix!164)) lt!2635354)))

(declare-fun b!7506633 () Bool)

(declare-fun res!3011646 () Bool)

(assert (=> b!7506633 (=> (not res!3011646) (not e!4475960))))

(assert (=> b!7506633 (= res!3011646 (= (head!15428 testedP!204) (head!15428 (++!17340 testedP!204 testedSuffix!164))))))

(declare-fun b!7506632 () Bool)

(assert (=> b!7506632 (= e!4475959 e!4475960)))

(declare-fun res!3011644 () Bool)

(assert (=> b!7506632 (=> (not res!3011644) (not e!4475960))))

(assert (=> b!7506632 (= res!3011644 (not ((_ is Nil!72397) (++!17340 testedP!204 testedSuffix!164))))))

(declare-fun b!7506635 () Bool)

(assert (=> b!7506635 (= e!4475961 (>= (size!42282 (++!17340 testedP!204 testedSuffix!164)) (size!42282 testedP!204)))))

(assert (= (and d!2304428 (not res!3011643)) b!7506632))

(assert (= (and b!7506632 res!3011644) b!7506633))

(assert (= (and b!7506633 res!3011646) b!7506634))

(assert (= (and d!2304428 (not res!3011645)) b!7506635))

(assert (=> b!7506634 m!8088700))

(assert (=> b!7506634 m!8088490))

(declare-fun m!8089202 () Bool)

(assert (=> b!7506634 m!8089202))

(assert (=> b!7506634 m!8088700))

(assert (=> b!7506634 m!8089202))

(declare-fun m!8089204 () Bool)

(assert (=> b!7506634 m!8089204))

(assert (=> b!7506633 m!8088704))

(assert (=> b!7506633 m!8088490))

(declare-fun m!8089206 () Bool)

(assert (=> b!7506633 m!8089206))

(assert (=> b!7506635 m!8088490))

(declare-fun m!8089208 () Bool)

(assert (=> b!7506635 m!8089208))

(assert (=> b!7506635 m!8088460))

(assert (=> d!2304156 d!2304428))

(assert (=> d!2304156 d!2304172))

(declare-fun d!2304430 () Bool)

(assert (=> d!2304430 (isPrefix!6005 testedP!204 (++!17340 testedP!204 testedSuffix!164))))

(assert (=> d!2304430 true))

(declare-fun _$46!2079 () Unit!166394)

(assert (=> d!2304430 (= (choose!58124 testedP!204 testedSuffix!164) _$46!2079)))

(declare-fun bs!1938258 () Bool)

(assert (= bs!1938258 d!2304430))

(assert (=> bs!1938258 m!8088490))

(assert (=> bs!1938258 m!8088490))

(assert (=> bs!1938258 m!8088714))

(assert (=> d!2304156 d!2304430))

(declare-fun e!4475964 () Bool)

(assert (=> b!7506359 (= tp!2178937 e!4475964)))

(declare-fun b!7506647 () Bool)

(declare-fun tp!2178980 () Bool)

(declare-fun tp!2178981 () Bool)

(assert (=> b!7506647 (= e!4475964 (and tp!2178980 tp!2178981))))

(declare-fun b!7506648 () Bool)

(declare-fun tp!2178984 () Bool)

(assert (=> b!7506648 (= e!4475964 tp!2178984)))

(declare-fun b!7506646 () Bool)

(assert (=> b!7506646 (= e!4475964 tp_is_empty!49763)))

(declare-fun b!7506649 () Bool)

(declare-fun tp!2178983 () Bool)

(declare-fun tp!2178982 () Bool)

(assert (=> b!7506649 (= e!4475964 (and tp!2178983 tp!2178982))))

(assert (= (and b!7506359 ((_ is ElementMatch!19711) (h!78846 (exprs!8963 setElem!57024)))) b!7506646))

(assert (= (and b!7506359 ((_ is Concat!28556) (h!78846 (exprs!8963 setElem!57024)))) b!7506647))

(assert (= (and b!7506359 ((_ is Star!19711) (h!78846 (exprs!8963 setElem!57024)))) b!7506648))

(assert (= (and b!7506359 ((_ is Union!19711) (h!78846 (exprs!8963 setElem!57024)))) b!7506649))

(declare-fun b!7506650 () Bool)

(declare-fun e!4475965 () Bool)

(declare-fun tp!2178985 () Bool)

(declare-fun tp!2178986 () Bool)

(assert (=> b!7506650 (= e!4475965 (and tp!2178985 tp!2178986))))

(assert (=> b!7506359 (= tp!2178938 e!4475965)))

(assert (= (and b!7506359 ((_ is Cons!72398) (t!387091 (exprs!8963 setElem!57024)))) b!7506650))

(declare-fun b!7506651 () Bool)

(declare-fun e!4475966 () Bool)

(declare-fun tp!2178987 () Bool)

(assert (=> b!7506651 (= e!4475966 (and tp_is_empty!49763 tp!2178987))))

(assert (=> b!7506365 (= tp!2178945 e!4475966)))

(assert (= (and b!7506365 ((_ is Cons!72397) (t!387090 (t!387090 testedSuffix!164)))) b!7506651))

(declare-fun b!7506652 () Bool)

(declare-fun e!4475967 () Bool)

(declare-fun tp!2178988 () Bool)

(declare-fun tp!2178989 () Bool)

(assert (=> b!7506652 (= e!4475967 (and tp!2178988 tp!2178989))))

(assert (=> b!7506364 (= tp!2178943 e!4475967)))

(assert (= (and b!7506364 ((_ is Cons!72398) (exprs!8963 setElem!57030))) b!7506652))

(declare-fun condSetEmpty!57032 () Bool)

(assert (=> setNonEmpty!57030 (= condSetEmpty!57032 (= setRest!57030 ((as const (Array Context!16926 Bool)) false)))))

(declare-fun setRes!57032 () Bool)

(assert (=> setNonEmpty!57030 (= tp!2178944 setRes!57032)))

(declare-fun setIsEmpty!57032 () Bool)

(assert (=> setIsEmpty!57032 setRes!57032))

(declare-fun setElem!57032 () Context!16926)

(declare-fun setNonEmpty!57032 () Bool)

(declare-fun e!4475968 () Bool)

(declare-fun tp!2178991 () Bool)

(assert (=> setNonEmpty!57032 (= setRes!57032 (and tp!2178991 (inv!92507 setElem!57032) e!4475968))))

(declare-fun setRest!57032 () (InoxSet Context!16926))

(assert (=> setNonEmpty!57032 (= setRest!57030 ((_ map or) (store ((as const (Array Context!16926 Bool)) false) setElem!57032 true) setRest!57032))))

(declare-fun b!7506653 () Bool)

(declare-fun tp!2178990 () Bool)

(assert (=> b!7506653 (= e!4475968 tp!2178990)))

(assert (= (and setNonEmpty!57030 condSetEmpty!57032) setIsEmpty!57032))

(assert (= (and setNonEmpty!57030 (not condSetEmpty!57032)) setNonEmpty!57032))

(assert (= setNonEmpty!57032 b!7506653))

(declare-fun m!8089210 () Bool)

(assert (=> setNonEmpty!57032 m!8089210))

(declare-fun b!7506654 () Bool)

(declare-fun e!4475969 () Bool)

(declare-fun tp!2178992 () Bool)

(assert (=> b!7506654 (= e!4475969 (and tp_is_empty!49763 tp!2178992))))

(assert (=> b!7506354 (= tp!2178932 e!4475969)))

(assert (= (and b!7506354 ((_ is Cons!72397) (t!387090 (t!387090 testedP!204)))) b!7506654))

(declare-fun b!7506655 () Bool)

(declare-fun e!4475970 () Bool)

(declare-fun tp!2178993 () Bool)

(assert (=> b!7506655 (= e!4475970 (and tp_is_empty!49763 tp!2178993))))

(assert (=> b!7506353 (= tp!2178931 e!4475970)))

(assert (= (and b!7506353 ((_ is Cons!72397) (t!387090 (t!387090 totalInput!779)))) b!7506655))

(declare-fun b_lambda!287865 () Bool)

(assert (= b_lambda!287863 (or d!2304168 b_lambda!287865)))

(declare-fun bs!1938259 () Bool)

(declare-fun d!2304432 () Bool)

(assert (= bs!1938259 (and d!2304432 d!2304168)))

(declare-fun validRegex!10178 (Regex!19711) Bool)

(assert (=> bs!1938259 (= (dynLambda!29779 lambda!465427 (h!78846 (exprs!8963 setElem!57024))) (validRegex!10178 (h!78846 (exprs!8963 setElem!57024))))))

(declare-fun m!8089212 () Bool)

(assert (=> bs!1938259 m!8089212))

(assert (=> b!7506614 d!2304432))

(check-sat (not b!7506493) (not b!7506492) (not d!2304278) (not b!7506585) (not d!2304426) (not d!2304392) (not b!7506518) (not b!7506621) (not b!7506454) (not b!7506630) (not b!7506461) (not b!7506530) (not d!2304354) (not d!2304282) (not b!7506652) (not b!7506655) (not b!7506466) (not d!2304388) (not d!2304386) (not d!2304384) (not b!7506633) (not b!7506635) (not b!7506619) (not d!2304430) (not b!7506494) (not b!7506532) (not b!7506534) (not b!7506540) (not b!7506615) (not b!7506462) (not d!2304364) (not d!2304378) (not b!7506623) (not b!7506514) (not setNonEmpty!57032) (not b!7506500) (not b!7506455) (not d!2304380) (not b!7506484) (not b!7506523) (not d!2304376) (not b!7506599) (not b!7506654) (not b!7506588) (not b!7506627) (not b!7506528) (not b_lambda!287865) (not b!7506617) (not b!7506536) (not d!2304408) (not b!7506650) (not d!2304398) (not b!7506502) (not b!7506651) (not b!7506486) (not b!7506603) (not b!7506625) (not d!2304400) (not b!7506604) tp_is_empty!49763 (not d!2304382) (not b!7506595) (not b!7506450) (not b!7506591) (not b!7506437) (not b!7506609) (not b!7506516) (not b!7506607) (not b!7506649) (not b!7506449) (not d!2304264) (not b!7506647) (not b!7506601) (not d!2304390) (not b!7506634) (not b!7506542) (not b!7506435) (not b!7506481) (not b!7506537) (not d!2304248) (not b!7506541) (not b!7506584) (not b!7506453) (not b!7506522) (not b!7506581) (not b!7506648) (not b!7506589) (not b!7506524) (not d!2304424) (not bs!1938259) (not b!7506436) (not b!7506465) (not d!2304280) (not b!7506653) (not b!7506479) (not b!7506629))
(check-sat)
