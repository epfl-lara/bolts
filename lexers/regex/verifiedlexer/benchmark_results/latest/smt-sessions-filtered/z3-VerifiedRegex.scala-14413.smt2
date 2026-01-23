; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751152 () Bool)

(assert start!751152)

(declare-fun b!7964208 () Bool)

(declare-fun e!4696469 () Bool)

(declare-fun tp!2373395 () Bool)

(assert (=> b!7964208 (= e!4696469 tp!2373395)))

(declare-fun b!7964209 () Bool)

(declare-fun e!4696471 () Bool)

(declare-fun e!4696465 () Bool)

(assert (=> b!7964209 (= e!4696471 e!4696465)))

(declare-fun res!3156137 () Bool)

(assert (=> b!7964209 (=> res!3156137 e!4696465)))

(declare-datatypes ((C!43352 0))(
  ( (C!43353 (val!32224 Int)) )
))
(declare-datatypes ((Regex!21507 0))(
  ( (ElementMatch!21507 (c!1462584 C!43352)) (Concat!30506 (regOne!43526 Regex!21507) (regTwo!43526 Regex!21507)) (EmptyExpr!21507) (Star!21507 (reg!21836 Regex!21507)) (EmptyLang!21507) (Union!21507 (regOne!43527 Regex!21507) (regTwo!43527 Regex!21507)) )
))
(declare-fun r!24602 () Regex!21507)

(declare-fun nullable!9608 (Regex!21507) Bool)

(assert (=> b!7964209 (= res!3156137 (not (nullable!9608 r!24602)))))

(declare-datatypes ((List!74736 0))(
  ( (Nil!74612) (Cons!74612 (h!81060 C!43352) (t!390479 List!74736)) )
))
(declare-fun lt!2704783 () List!74736)

(declare-fun input!7927 () List!74736)

(declare-fun isPrefix!6607 (List!74736 List!74736) Bool)

(assert (=> b!7964209 (isPrefix!6607 lt!2704783 input!7927)))

(declare-datatypes ((Unit!170118 0))(
  ( (Unit!170119) )
))
(declare-fun lt!2704792 () Unit!170118)

(declare-fun testedP!447 () List!74736)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1334 (List!74736 List!74736) Unit!170118)

(assert (=> b!7964209 (= lt!2704792 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 testedP!447 input!7927))))

(declare-fun lt!2704781 () C!43352)

(declare-fun ++!18377 (List!74736 List!74736) List!74736)

(assert (=> b!7964209 (= lt!2704783 (++!18377 testedP!447 (Cons!74612 lt!2704781 Nil!74612)))))

(declare-fun lt!2704780 () List!74736)

(declare-fun head!16259 (List!74736) C!43352)

(assert (=> b!7964209 (= lt!2704781 (head!16259 lt!2704780))))

(declare-fun b!7964211 () Bool)

(declare-fun e!4696472 () Bool)

(declare-fun e!4696468 () Bool)

(assert (=> b!7964211 (= e!4696472 e!4696468)))

(declare-fun res!3156144 () Bool)

(assert (=> b!7964211 (=> (not res!3156144) (not e!4696468))))

(declare-fun lt!2704791 () Int)

(declare-fun lt!2704788 () Int)

(declare-fun isEmpty!42913 (List!74736) Bool)

(declare-datatypes ((tuple2!70676 0))(
  ( (tuple2!70677 (_1!38641 List!74736) (_2!38641 List!74736)) )
))
(declare-fun findLongestMatchInner!2288 (Regex!21507 List!74736 Int List!74736 List!74736 Int) tuple2!70676)

(assert (=> b!7964211 (= res!3156144 (not (isEmpty!42913 (_1!38641 (findLongestMatchInner!2288 r!24602 testedP!447 lt!2704788 lt!2704780 input!7927 lt!2704791)))))))

(declare-fun size!43443 (List!74736) Int)

(assert (=> b!7964211 (= lt!2704791 (size!43443 input!7927))))

(declare-fun getSuffix!3810 (List!74736 List!74736) List!74736)

(assert (=> b!7964211 (= lt!2704780 (getSuffix!3810 input!7927 testedP!447))))

(assert (=> b!7964211 (= lt!2704788 (size!43443 testedP!447))))

(declare-fun b!7964212 () Bool)

(declare-fun e!4696467 () Bool)

(declare-fun tp!2373389 () Bool)

(declare-fun tp!2373393 () Bool)

(assert (=> b!7964212 (= e!4696467 (and tp!2373389 tp!2373393))))

(declare-fun b!7964213 () Bool)

(declare-fun e!4696463 () Bool)

(assert (=> b!7964213 (= e!4696465 e!4696463)))

(declare-fun res!3156139 () Bool)

(assert (=> b!7964213 (=> res!3156139 e!4696463)))

(declare-fun lt!2704784 () Regex!21507)

(declare-fun tail!15796 (List!74736) List!74736)

(assert (=> b!7964213 (= res!3156139 (isEmpty!42913 (_1!38641 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (+ 1 lt!2704788) (tail!15796 lt!2704780) input!7927 lt!2704791))))))

(declare-fun derivativeStep!6535 (Regex!21507 C!43352) Regex!21507)

(assert (=> b!7964213 (= lt!2704784 (derivativeStep!6535 r!24602 lt!2704781))))

(declare-fun b!7964214 () Bool)

(declare-fun res!3156141 () Bool)

(assert (=> b!7964214 (=> (not res!3156141) (not e!4696472))))

(assert (=> b!7964214 (= res!3156141 (isPrefix!6607 testedP!447 input!7927))))

(declare-fun b!7964215 () Bool)

(declare-fun tp_is_empty!53557 () Bool)

(assert (=> b!7964215 (= e!4696467 tp_is_empty!53557)))

(declare-fun b!7964216 () Bool)

(declare-fun res!3156143 () Bool)

(assert (=> b!7964216 (=> (not res!3156143) (not e!4696472))))

(declare-fun baseR!116 () Regex!21507)

(declare-fun derivative!693 (Regex!21507 List!74736) Regex!21507)

(assert (=> b!7964216 (= res!3156143 (= (derivative!693 baseR!116 testedP!447) r!24602))))

(declare-fun b!7964217 () Bool)

(declare-fun tp!2373388 () Bool)

(assert (=> b!7964217 (= e!4696467 tp!2373388)))

(declare-fun b!7964218 () Bool)

(declare-fun tp!2373387 () Bool)

(declare-fun tp!2373392 () Bool)

(assert (=> b!7964218 (= e!4696469 (and tp!2373387 tp!2373392))))

(declare-fun res!3156138 () Bool)

(assert (=> start!751152 (=> (not res!3156138) (not e!4696472))))

(declare-fun validRegex!11811 (Regex!21507) Bool)

(assert (=> start!751152 (= res!3156138 (validRegex!11811 baseR!116))))

(assert (=> start!751152 e!4696472))

(assert (=> start!751152 e!4696469))

(declare-fun e!4696466 () Bool)

(assert (=> start!751152 e!4696466))

(declare-fun e!4696473 () Bool)

(assert (=> start!751152 e!4696473))

(assert (=> start!751152 e!4696467))

(declare-fun b!7964210 () Bool)

(declare-fun e!4696470 () Bool)

(declare-fun lt!2704787 () tuple2!70676)

(declare-fun matchR!10740 (Regex!21507 List!74736) Bool)

(assert (=> b!7964210 (= e!4696470 (matchR!10740 baseR!116 (_1!38641 lt!2704787)))))

(declare-fun b!7964219 () Bool)

(assert (=> b!7964219 (= e!4696469 tp_is_empty!53557)))

(declare-fun b!7964220 () Bool)

(declare-fun e!4696464 () Unit!170118)

(declare-fun Unit!170120 () Unit!170118)

(assert (=> b!7964220 (= e!4696464 Unit!170120)))

(declare-fun b!7964221 () Bool)

(assert (=> b!7964221 (= e!4696463 (validRegex!11811 r!24602))))

(assert (=> b!7964221 e!4696470))

(declare-fun res!3156136 () Bool)

(assert (=> b!7964221 (=> res!3156136 e!4696470)))

(assert (=> b!7964221 (= res!3156136 (isEmpty!42913 (_1!38641 lt!2704787)))))

(assert (=> b!7964221 (= lt!2704787 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (size!43443 lt!2704783) (getSuffix!3810 input!7927 lt!2704783) input!7927 lt!2704791))))

(declare-fun lt!2704782 () Unit!170118)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!51 (Regex!21507 Regex!21507 List!74736 List!74736) Unit!170118)

(assert (=> b!7964221 (= lt!2704782 (longestMatchIsAcceptedByMatchOrIsEmptyRec!51 baseR!116 lt!2704784 lt!2704783 input!7927))))

(assert (=> b!7964221 (= (derivative!693 baseR!116 lt!2704783) lt!2704784)))

(declare-fun lt!2704793 () Unit!170118)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!219 (Regex!21507 Regex!21507 List!74736 C!43352) Unit!170118)

(assert (=> b!7964221 (= lt!2704793 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!219 baseR!116 r!24602 testedP!447 lt!2704781))))

(declare-fun b!7964222 () Bool)

(assert (=> b!7964222 (= e!4696468 (not e!4696471))))

(declare-fun res!3156142 () Bool)

(assert (=> b!7964222 (=> res!3156142 e!4696471)))

(assert (=> b!7964222 (= res!3156142 (>= lt!2704788 lt!2704791))))

(declare-fun lt!2704790 () Unit!170118)

(assert (=> b!7964222 (= lt!2704790 e!4696464)))

(declare-fun c!1462583 () Bool)

(assert (=> b!7964222 (= c!1462583 (= lt!2704788 lt!2704791))))

(assert (=> b!7964222 (<= lt!2704788 lt!2704791)))

(declare-fun lt!2704786 () Unit!170118)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1124 (List!74736 List!74736) Unit!170118)

(assert (=> b!7964222 (= lt!2704786 (lemmaIsPrefixThenSmallerEqSize!1124 testedP!447 input!7927))))

(declare-fun b!7964223 () Bool)

(declare-fun tp!2373391 () Bool)

(declare-fun tp!2373394 () Bool)

(assert (=> b!7964223 (= e!4696469 (and tp!2373391 tp!2373394))))

(declare-fun b!7964224 () Bool)

(declare-fun tp!2373396 () Bool)

(assert (=> b!7964224 (= e!4696466 (and tp_is_empty!53557 tp!2373396))))

(declare-fun b!7964225 () Bool)

(declare-fun tp!2373390 () Bool)

(declare-fun tp!2373397 () Bool)

(assert (=> b!7964225 (= e!4696467 (and tp!2373390 tp!2373397))))

(declare-fun b!7964226 () Bool)

(declare-fun Unit!170121 () Unit!170118)

(assert (=> b!7964226 (= e!4696464 Unit!170121)))

(declare-fun lt!2704785 () Unit!170118)

(declare-fun lemmaIsPrefixRefl!4075 (List!74736 List!74736) Unit!170118)

(assert (=> b!7964226 (= lt!2704785 (lemmaIsPrefixRefl!4075 input!7927 input!7927))))

(assert (=> b!7964226 (isPrefix!6607 input!7927 input!7927)))

(declare-fun lt!2704789 () Unit!170118)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1655 (List!74736 List!74736 List!74736) Unit!170118)

(assert (=> b!7964226 (= lt!2704789 (lemmaIsPrefixSameLengthThenSameList!1655 input!7927 testedP!447 input!7927))))

(assert (=> b!7964226 false))

(declare-fun b!7964227 () Bool)

(declare-fun res!3156140 () Bool)

(assert (=> b!7964227 (=> (not res!3156140) (not e!4696468))))

(assert (=> b!7964227 (= res!3156140 (not (= testedP!447 input!7927)))))

(declare-fun b!7964228 () Bool)

(declare-fun tp!2373398 () Bool)

(assert (=> b!7964228 (= e!4696473 (and tp_is_empty!53557 tp!2373398))))

(assert (= (and start!751152 res!3156138) b!7964214))

(assert (= (and b!7964214 res!3156141) b!7964216))

(assert (= (and b!7964216 res!3156143) b!7964211))

(assert (= (and b!7964211 res!3156144) b!7964227))

(assert (= (and b!7964227 res!3156140) b!7964222))

(assert (= (and b!7964222 c!1462583) b!7964226))

(assert (= (and b!7964222 (not c!1462583)) b!7964220))

(assert (= (and b!7964222 (not res!3156142)) b!7964209))

(assert (= (and b!7964209 (not res!3156137)) b!7964213))

(assert (= (and b!7964213 (not res!3156139)) b!7964221))

(assert (= (and b!7964221 (not res!3156136)) b!7964210))

(get-info :version)

(assert (= (and start!751152 ((_ is ElementMatch!21507) baseR!116)) b!7964219))

(assert (= (and start!751152 ((_ is Concat!30506) baseR!116)) b!7964218))

(assert (= (and start!751152 ((_ is Star!21507) baseR!116)) b!7964208))

(assert (= (and start!751152 ((_ is Union!21507) baseR!116)) b!7964223))

(assert (= (and start!751152 ((_ is Cons!74612) testedP!447)) b!7964224))

(assert (= (and start!751152 ((_ is Cons!74612) input!7927)) b!7964228))

(assert (= (and start!751152 ((_ is ElementMatch!21507) r!24602)) b!7964215))

(assert (= (and start!751152 ((_ is Concat!30506) r!24602)) b!7964212))

(assert (= (and start!751152 ((_ is Star!21507) r!24602)) b!7964217))

(assert (= (and start!751152 ((_ is Union!21507) r!24602)) b!7964225))

(declare-fun m!8344298 () Bool)

(assert (=> b!7964213 m!8344298))

(assert (=> b!7964213 m!8344298))

(declare-fun m!8344300 () Bool)

(assert (=> b!7964213 m!8344300))

(declare-fun m!8344302 () Bool)

(assert (=> b!7964213 m!8344302))

(declare-fun m!8344304 () Bool)

(assert (=> b!7964213 m!8344304))

(declare-fun m!8344306 () Bool)

(assert (=> b!7964214 m!8344306))

(declare-fun m!8344308 () Bool)

(assert (=> b!7964226 m!8344308))

(declare-fun m!8344310 () Bool)

(assert (=> b!7964226 m!8344310))

(declare-fun m!8344312 () Bool)

(assert (=> b!7964226 m!8344312))

(declare-fun m!8344314 () Bool)

(assert (=> b!7964221 m!8344314))

(declare-fun m!8344316 () Bool)

(assert (=> b!7964221 m!8344316))

(declare-fun m!8344318 () Bool)

(assert (=> b!7964221 m!8344318))

(declare-fun m!8344320 () Bool)

(assert (=> b!7964221 m!8344320))

(declare-fun m!8344322 () Bool)

(assert (=> b!7964221 m!8344322))

(assert (=> b!7964221 m!8344320))

(assert (=> b!7964221 m!8344314))

(declare-fun m!8344324 () Bool)

(assert (=> b!7964221 m!8344324))

(declare-fun m!8344326 () Bool)

(assert (=> b!7964221 m!8344326))

(declare-fun m!8344328 () Bool)

(assert (=> b!7964221 m!8344328))

(declare-fun m!8344330 () Bool)

(assert (=> b!7964216 m!8344330))

(declare-fun m!8344332 () Bool)

(assert (=> b!7964209 m!8344332))

(declare-fun m!8344334 () Bool)

(assert (=> b!7964209 m!8344334))

(declare-fun m!8344336 () Bool)

(assert (=> b!7964209 m!8344336))

(declare-fun m!8344338 () Bool)

(assert (=> b!7964209 m!8344338))

(declare-fun m!8344340 () Bool)

(assert (=> b!7964209 m!8344340))

(declare-fun m!8344342 () Bool)

(assert (=> b!7964210 m!8344342))

(declare-fun m!8344344 () Bool)

(assert (=> b!7964211 m!8344344))

(declare-fun m!8344346 () Bool)

(assert (=> b!7964211 m!8344346))

(declare-fun m!8344348 () Bool)

(assert (=> b!7964211 m!8344348))

(declare-fun m!8344350 () Bool)

(assert (=> b!7964211 m!8344350))

(declare-fun m!8344352 () Bool)

(assert (=> b!7964211 m!8344352))

(declare-fun m!8344354 () Bool)

(assert (=> start!751152 m!8344354))

(declare-fun m!8344356 () Bool)

(assert (=> b!7964222 m!8344356))

(check-sat (not b!7964221) (not b!7964225) (not start!751152) (not b!7964226) (not b!7964213) (not b!7964210) (not b!7964228) (not b!7964223) (not b!7964214) (not b!7964211) (not b!7964222) (not b!7964216) (not b!7964218) (not b!7964217) (not b!7964208) (not b!7964209) (not b!7964224) (not b!7964212) tp_is_empty!53557)
(check-sat)
(get-model)

(declare-fun d!2378730 () Bool)

(assert (=> d!2378730 (= (isEmpty!42913 (_1!38641 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (+ 1 lt!2704788) (tail!15796 lt!2704780) input!7927 lt!2704791))) ((_ is Nil!74612) (_1!38641 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (+ 1 lt!2704788) (tail!15796 lt!2704780) input!7927 lt!2704791))))))

(assert (=> b!7964213 d!2378730))

(declare-fun b!7964363 () Bool)

(declare-fun e!4696558 () Unit!170118)

(declare-fun Unit!170125 () Unit!170118)

(assert (=> b!7964363 (= e!4696558 Unit!170125)))

(declare-fun bm!738718 () Bool)

(declare-fun call!738727 () Unit!170118)

(assert (=> bm!738718 (= call!738727 (lemmaIsPrefixSameLengthThenSameList!1655 input!7927 lt!2704783 input!7927))))

(declare-fun b!7964364 () Bool)

(declare-fun e!4696555 () tuple2!70676)

(assert (=> b!7964364 (= e!4696555 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun bm!738719 () Bool)

(declare-fun call!738730 () List!74736)

(assert (=> bm!738719 (= call!738730 (tail!15796 (tail!15796 lt!2704780)))))

(declare-fun b!7964365 () Bool)

(declare-fun e!4696552 () tuple2!70676)

(declare-fun call!738726 () tuple2!70676)

(assert (=> b!7964365 (= e!4696552 call!738726)))

(declare-fun b!7964366 () Bool)

(declare-fun e!4696556 () tuple2!70676)

(declare-fun lt!2704986 () tuple2!70676)

(assert (=> b!7964366 (= e!4696556 lt!2704986)))

(declare-fun b!7964367 () Bool)

(assert (=> b!7964367 (= e!4696555 (tuple2!70677 lt!2704783 Nil!74612))))

(declare-fun b!7964369 () Bool)

(declare-fun Unit!170126 () Unit!170118)

(assert (=> b!7964369 (= e!4696558 Unit!170126)))

(declare-fun lt!2704984 () Unit!170118)

(declare-fun call!738728 () Unit!170118)

(assert (=> b!7964369 (= lt!2704984 call!738728)))

(declare-fun call!738724 () Bool)

(assert (=> b!7964369 call!738724))

(declare-fun lt!2704988 () Unit!170118)

(assert (=> b!7964369 (= lt!2704988 lt!2704984)))

(declare-fun lt!2704993 () Unit!170118)

(assert (=> b!7964369 (= lt!2704993 call!738727)))

(assert (=> b!7964369 (= input!7927 lt!2704783)))

(declare-fun lt!2704980 () Unit!170118)

(assert (=> b!7964369 (= lt!2704980 lt!2704993)))

(assert (=> b!7964369 false))

(declare-fun b!7964370 () Bool)

(declare-fun e!4696554 () tuple2!70676)

(assert (=> b!7964370 (= e!4696554 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun call!738725 () Regex!21507)

(declare-fun lt!2704985 () List!74736)

(declare-fun bm!738720 () Bool)

(assert (=> bm!738720 (= call!738726 (findLongestMatchInner!2288 call!738725 lt!2704985 (+ 1 lt!2704788 1) call!738730 input!7927 lt!2704791))))

(declare-fun b!7964371 () Bool)

(declare-fun e!4696557 () Bool)

(declare-fun lt!2704995 () tuple2!70676)

(assert (=> b!7964371 (= e!4696557 (>= (size!43443 (_1!38641 lt!2704995)) (size!43443 lt!2704783)))))

(declare-fun b!7964372 () Bool)

(declare-fun c!1462641 () Bool)

(declare-fun call!738723 () Bool)

(assert (=> b!7964372 (= c!1462641 call!738723)))

(declare-fun lt!2704999 () Unit!170118)

(declare-fun lt!2704982 () Unit!170118)

(assert (=> b!7964372 (= lt!2704999 lt!2704982)))

(declare-fun lt!2704989 () List!74736)

(declare-fun lt!2705000 () C!43352)

(assert (=> b!7964372 (= (++!18377 (++!18377 lt!2704783 (Cons!74612 lt!2705000 Nil!74612)) lt!2704989) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3536 (List!74736 C!43352 List!74736 List!74736) Unit!170118)

(assert (=> b!7964372 (= lt!2704982 (lemmaMoveElementToOtherListKeepsConcatEq!3536 lt!2704783 lt!2705000 lt!2704989 input!7927))))

(assert (=> b!7964372 (= lt!2704989 (tail!15796 (tail!15796 lt!2704780)))))

(assert (=> b!7964372 (= lt!2705000 (head!16259 (tail!15796 lt!2704780)))))

(declare-fun lt!2705003 () Unit!170118)

(declare-fun lt!2704990 () Unit!170118)

(assert (=> b!7964372 (= lt!2705003 lt!2704990)))

(assert (=> b!7964372 (isPrefix!6607 (++!18377 lt!2704783 (Cons!74612 (head!16259 (getSuffix!3810 input!7927 lt!2704783)) Nil!74612)) input!7927)))

(assert (=> b!7964372 (= lt!2704990 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 lt!2704783 input!7927))))

(declare-fun lt!2705002 () Unit!170118)

(declare-fun lt!2704981 () Unit!170118)

(assert (=> b!7964372 (= lt!2705002 lt!2704981)))

(assert (=> b!7964372 (= lt!2704981 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 lt!2704783 input!7927))))

(assert (=> b!7964372 (= lt!2704985 (++!18377 lt!2704783 (Cons!74612 (head!16259 (tail!15796 lt!2704780)) Nil!74612)))))

(declare-fun lt!2704983 () Unit!170118)

(assert (=> b!7964372 (= lt!2704983 e!4696558)))

(declare-fun c!1462643 () Bool)

(assert (=> b!7964372 (= c!1462643 (= (size!43443 lt!2704783) (size!43443 input!7927)))))

(declare-fun lt!2704979 () Unit!170118)

(declare-fun lt!2704992 () Unit!170118)

(assert (=> b!7964372 (= lt!2704979 lt!2704992)))

(assert (=> b!7964372 (<= (size!43443 lt!2704783) (size!43443 input!7927))))

(assert (=> b!7964372 (= lt!2704992 (lemmaIsPrefixThenSmallerEqSize!1124 lt!2704783 input!7927))))

(declare-fun e!4696553 () tuple2!70676)

(assert (=> b!7964372 (= e!4696553 e!4696552)))

(declare-fun bm!738721 () Bool)

(declare-fun call!738729 () C!43352)

(assert (=> bm!738721 (= call!738725 (derivativeStep!6535 lt!2704784 call!738729))))

(declare-fun bm!738722 () Bool)

(assert (=> bm!738722 (= call!738724 (isPrefix!6607 input!7927 input!7927))))

(declare-fun b!7964373 () Bool)

(declare-fun c!1462644 () Bool)

(assert (=> b!7964373 (= c!1462644 call!738723)))

(declare-fun lt!2704987 () Unit!170118)

(declare-fun lt!2705006 () Unit!170118)

(assert (=> b!7964373 (= lt!2704987 lt!2705006)))

(assert (=> b!7964373 (= input!7927 lt!2704783)))

(assert (=> b!7964373 (= lt!2705006 call!738727)))

(declare-fun lt!2704994 () Unit!170118)

(declare-fun lt!2705001 () Unit!170118)

(assert (=> b!7964373 (= lt!2704994 lt!2705001)))

(assert (=> b!7964373 call!738724))

(assert (=> b!7964373 (= lt!2705001 call!738728)))

(assert (=> b!7964373 (= e!4696553 e!4696555)))

(declare-fun bm!738723 () Bool)

(assert (=> bm!738723 (= call!738723 (nullable!9608 lt!2704784))))

(declare-fun bm!738724 () Bool)

(assert (=> bm!738724 (= call!738729 (head!16259 (tail!15796 lt!2704780)))))

(declare-fun d!2378732 () Bool)

(declare-fun e!4696551 () Bool)

(assert (=> d!2378732 e!4696551))

(declare-fun res!3156172 () Bool)

(assert (=> d!2378732 (=> (not res!3156172) (not e!4696551))))

(assert (=> d!2378732 (= res!3156172 (= (++!18377 (_1!38641 lt!2704995) (_2!38641 lt!2704995)) input!7927))))

(assert (=> d!2378732 (= lt!2704995 e!4696554)))

(declare-fun c!1462639 () Bool)

(declare-fun lostCause!1980 (Regex!21507) Bool)

(assert (=> d!2378732 (= c!1462639 (lostCause!1980 lt!2704784))))

(declare-fun lt!2704991 () Unit!170118)

(declare-fun Unit!170128 () Unit!170118)

(assert (=> d!2378732 (= lt!2704991 Unit!170128)))

(assert (=> d!2378732 (= (getSuffix!3810 input!7927 lt!2704783) (tail!15796 lt!2704780))))

(declare-fun lt!2704998 () Unit!170118)

(declare-fun lt!2704996 () Unit!170118)

(assert (=> d!2378732 (= lt!2704998 lt!2704996)))

(declare-fun lt!2704997 () List!74736)

(assert (=> d!2378732 (= (tail!15796 lt!2704780) lt!2704997)))

(declare-fun lemmaSamePrefixThenSameSuffix!2996 (List!74736 List!74736 List!74736 List!74736 List!74736) Unit!170118)

(assert (=> d!2378732 (= lt!2704996 (lemmaSamePrefixThenSameSuffix!2996 lt!2704783 (tail!15796 lt!2704780) lt!2704783 lt!2704997 input!7927))))

(assert (=> d!2378732 (= lt!2704997 (getSuffix!3810 input!7927 lt!2704783))))

(declare-fun lt!2705004 () Unit!170118)

(declare-fun lt!2705005 () Unit!170118)

(assert (=> d!2378732 (= lt!2705004 lt!2705005)))

(assert (=> d!2378732 (isPrefix!6607 lt!2704783 (++!18377 lt!2704783 (tail!15796 lt!2704780)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3858 (List!74736 List!74736) Unit!170118)

(assert (=> d!2378732 (= lt!2705005 (lemmaConcatTwoListThenFirstIsPrefix!3858 lt!2704783 (tail!15796 lt!2704780)))))

(assert (=> d!2378732 (validRegex!11811 lt!2704784)))

(assert (=> d!2378732 (= (findLongestMatchInner!2288 lt!2704784 lt!2704783 (+ 1 lt!2704788) (tail!15796 lt!2704780) input!7927 lt!2704791) lt!2704995)))

(declare-fun b!7964368 () Bool)

(assert (=> b!7964368 (= e!4696551 e!4696557)))

(declare-fun res!3156171 () Bool)

(assert (=> b!7964368 (=> res!3156171 e!4696557)))

(assert (=> b!7964368 (= res!3156171 (isEmpty!42913 (_1!38641 lt!2704995)))))

(declare-fun b!7964374 () Bool)

(assert (=> b!7964374 (= e!4696556 (tuple2!70677 lt!2704783 (tail!15796 lt!2704780)))))

(declare-fun b!7964375 () Bool)

(assert (=> b!7964375 (= e!4696554 e!4696553)))

(declare-fun c!1462642 () Bool)

(assert (=> b!7964375 (= c!1462642 (= (+ 1 lt!2704788) lt!2704791))))

(declare-fun bm!738725 () Bool)

(assert (=> bm!738725 (= call!738728 (lemmaIsPrefixRefl!4075 input!7927 input!7927))))

(declare-fun b!7964376 () Bool)

(assert (=> b!7964376 (= e!4696552 e!4696556)))

(assert (=> b!7964376 (= lt!2704986 call!738726)))

(declare-fun c!1462640 () Bool)

(assert (=> b!7964376 (= c!1462640 (isEmpty!42913 (_1!38641 lt!2704986)))))

(assert (= (and d!2378732 c!1462639) b!7964370))

(assert (= (and d!2378732 (not c!1462639)) b!7964375))

(assert (= (and b!7964375 c!1462642) b!7964373))

(assert (= (and b!7964375 (not c!1462642)) b!7964372))

(assert (= (and b!7964373 c!1462644) b!7964367))

(assert (= (and b!7964373 (not c!1462644)) b!7964364))

(assert (= (and b!7964372 c!1462643) b!7964369))

(assert (= (and b!7964372 (not c!1462643)) b!7964363))

(assert (= (and b!7964372 c!1462641) b!7964376))

(assert (= (and b!7964372 (not c!1462641)) b!7964365))

(assert (= (and b!7964376 c!1462640) b!7964374))

(assert (= (and b!7964376 (not c!1462640)) b!7964366))

(assert (= (or b!7964376 b!7964365) bm!738724))

(assert (= (or b!7964376 b!7964365) bm!738719))

(assert (= (or b!7964376 b!7964365) bm!738721))

(assert (= (or b!7964376 b!7964365) bm!738720))

(assert (= (or b!7964373 b!7964372) bm!738723))

(assert (= (or b!7964373 b!7964369) bm!738718))

(assert (= (or b!7964373 b!7964369) bm!738725))

(assert (= (or b!7964373 b!7964369) bm!738722))

(assert (= (and d!2378732 res!3156172) b!7964368))

(assert (= (and b!7964368 (not res!3156171)) b!7964371))

(assert (=> bm!738725 m!8344308))

(declare-fun m!8344466 () Bool)

(assert (=> d!2378732 m!8344466))

(declare-fun m!8344468 () Bool)

(assert (=> d!2378732 m!8344468))

(assert (=> d!2378732 m!8344298))

(declare-fun m!8344470 () Bool)

(assert (=> d!2378732 m!8344470))

(assert (=> d!2378732 m!8344298))

(declare-fun m!8344472 () Bool)

(assert (=> d!2378732 m!8344472))

(assert (=> d!2378732 m!8344470))

(declare-fun m!8344474 () Bool)

(assert (=> d!2378732 m!8344474))

(assert (=> d!2378732 m!8344314))

(declare-fun m!8344476 () Bool)

(assert (=> d!2378732 m!8344476))

(assert (=> d!2378732 m!8344298))

(declare-fun m!8344478 () Bool)

(assert (=> d!2378732 m!8344478))

(declare-fun m!8344480 () Bool)

(assert (=> b!7964376 m!8344480))

(declare-fun m!8344482 () Bool)

(assert (=> bm!738721 m!8344482))

(declare-fun m!8344484 () Bool)

(assert (=> b!7964372 m!8344484))

(assert (=> b!7964372 m!8344314))

(declare-fun m!8344486 () Bool)

(assert (=> b!7964372 m!8344486))

(declare-fun m!8344488 () Bool)

(assert (=> b!7964372 m!8344488))

(declare-fun m!8344490 () Bool)

(assert (=> b!7964372 m!8344490))

(assert (=> b!7964372 m!8344490))

(declare-fun m!8344492 () Bool)

(assert (=> b!7964372 m!8344492))

(declare-fun m!8344494 () Bool)

(assert (=> b!7964372 m!8344494))

(declare-fun m!8344496 () Bool)

(assert (=> b!7964372 m!8344496))

(assert (=> b!7964372 m!8344298))

(declare-fun m!8344500 () Bool)

(assert (=> b!7964372 m!8344500))

(assert (=> b!7964372 m!8344494))

(assert (=> b!7964372 m!8344344))

(assert (=> b!7964372 m!8344314))

(declare-fun m!8344504 () Bool)

(assert (=> b!7964372 m!8344504))

(declare-fun m!8344506 () Bool)

(assert (=> b!7964372 m!8344506))

(assert (=> b!7964372 m!8344320))

(assert (=> b!7964372 m!8344298))

(declare-fun m!8344508 () Bool)

(assert (=> b!7964372 m!8344508))

(declare-fun m!8344510 () Bool)

(assert (=> bm!738718 m!8344510))

(assert (=> bm!738722 m!8344310))

(declare-fun m!8344512 () Bool)

(assert (=> b!7964368 m!8344512))

(declare-fun m!8344514 () Bool)

(assert (=> bm!738723 m!8344514))

(assert (=> bm!738719 m!8344298))

(assert (=> bm!738719 m!8344508))

(declare-fun m!8344516 () Bool)

(assert (=> bm!738720 m!8344516))

(assert (=> bm!738724 m!8344298))

(assert (=> bm!738724 m!8344500))

(declare-fun m!8344518 () Bool)

(assert (=> b!7964371 m!8344518))

(assert (=> b!7964371 m!8344320))

(assert (=> b!7964213 d!2378732))

(declare-fun d!2378760 () Bool)

(assert (=> d!2378760 (= (tail!15796 lt!2704780) (t!390479 lt!2704780))))

(assert (=> b!7964213 d!2378760))

(declare-fun b!7964446 () Bool)

(declare-fun e!4696606 () Regex!21507)

(declare-fun call!738752 () Regex!21507)

(assert (=> b!7964446 (= e!4696606 (Concat!30506 call!738752 r!24602))))

(declare-fun b!7964447 () Bool)

(declare-fun e!4696605 () Regex!21507)

(assert (=> b!7964447 (= e!4696605 EmptyLang!21507)))

(declare-fun bm!738746 () Bool)

(declare-fun c!1462674 () Bool)

(declare-fun c!1462673 () Bool)

(declare-fun call!738753 () Regex!21507)

(declare-fun c!1462671 () Bool)

(assert (=> bm!738746 (= call!738753 (derivativeStep!6535 (ite c!1462674 (regTwo!43527 r!24602) (ite c!1462673 (reg!21836 r!24602) (ite c!1462671 (regTwo!43526 r!24602) (regOne!43526 r!24602)))) lt!2704781))))

(declare-fun b!7964448 () Bool)

(assert (=> b!7964448 (= c!1462674 ((_ is Union!21507) r!24602))))

(declare-fun e!4696604 () Regex!21507)

(declare-fun e!4696607 () Regex!21507)

(assert (=> b!7964448 (= e!4696604 e!4696607)))

(declare-fun d!2378762 () Bool)

(declare-fun lt!2705022 () Regex!21507)

(assert (=> d!2378762 (validRegex!11811 lt!2705022)))

(assert (=> d!2378762 (= lt!2705022 e!4696605)))

(declare-fun c!1462670 () Bool)

(assert (=> d!2378762 (= c!1462670 (or ((_ is EmptyExpr!21507) r!24602) ((_ is EmptyLang!21507) r!24602)))))

(assert (=> d!2378762 (validRegex!11811 r!24602)))

(assert (=> d!2378762 (= (derivativeStep!6535 r!24602 lt!2704781) lt!2705022)))

(declare-fun b!7964449 () Bool)

(assert (=> b!7964449 (= e!4696604 (ite (= lt!2704781 (c!1462584 r!24602)) EmptyExpr!21507 EmptyLang!21507))))

(declare-fun b!7964450 () Bool)

(assert (=> b!7964450 (= e!4696607 e!4696606)))

(assert (=> b!7964450 (= c!1462673 ((_ is Star!21507) r!24602))))

(declare-fun b!7964451 () Bool)

(declare-fun e!4696608 () Regex!21507)

(declare-fun call!738754 () Regex!21507)

(assert (=> b!7964451 (= e!4696608 (Union!21507 (Concat!30506 call!738754 (regTwo!43526 r!24602)) EmptyLang!21507))))

(declare-fun b!7964452 () Bool)

(declare-fun call!738751 () Regex!21507)

(assert (=> b!7964452 (= e!4696608 (Union!21507 (Concat!30506 call!738751 (regTwo!43526 r!24602)) call!738754))))

(declare-fun bm!738747 () Bool)

(assert (=> bm!738747 (= call!738751 (derivativeStep!6535 (ite c!1462674 (regOne!43527 r!24602) (regOne!43526 r!24602)) lt!2704781))))

(declare-fun b!7964453 () Bool)

(assert (=> b!7964453 (= e!4696605 e!4696604)))

(declare-fun c!1462672 () Bool)

(assert (=> b!7964453 (= c!1462672 ((_ is ElementMatch!21507) r!24602))))

(declare-fun bm!738748 () Bool)

(assert (=> bm!738748 (= call!738754 call!738752)))

(declare-fun b!7964454 () Bool)

(assert (=> b!7964454 (= c!1462671 (nullable!9608 (regOne!43526 r!24602)))))

(assert (=> b!7964454 (= e!4696606 e!4696608)))

(declare-fun b!7964455 () Bool)

(assert (=> b!7964455 (= e!4696607 (Union!21507 call!738751 call!738753))))

(declare-fun bm!738749 () Bool)

(assert (=> bm!738749 (= call!738752 call!738753)))

(assert (= (and d!2378762 c!1462670) b!7964447))

(assert (= (and d!2378762 (not c!1462670)) b!7964453))

(assert (= (and b!7964453 c!1462672) b!7964449))

(assert (= (and b!7964453 (not c!1462672)) b!7964448))

(assert (= (and b!7964448 c!1462674) b!7964455))

(assert (= (and b!7964448 (not c!1462674)) b!7964450))

(assert (= (and b!7964450 c!1462673) b!7964446))

(assert (= (and b!7964450 (not c!1462673)) b!7964454))

(assert (= (and b!7964454 c!1462671) b!7964452))

(assert (= (and b!7964454 (not c!1462671)) b!7964451))

(assert (= (or b!7964452 b!7964451) bm!738748))

(assert (= (or b!7964446 bm!738748) bm!738749))

(assert (= (or b!7964455 bm!738749) bm!738746))

(assert (= (or b!7964455 b!7964452) bm!738747))

(declare-fun m!8344544 () Bool)

(assert (=> bm!738746 m!8344544))

(declare-fun m!8344548 () Bool)

(assert (=> d!2378762 m!8344548))

(assert (=> d!2378762 m!8344326))

(declare-fun m!8344552 () Bool)

(assert (=> bm!738747 m!8344552))

(declare-fun m!8344554 () Bool)

(assert (=> b!7964454 m!8344554))

(assert (=> b!7964213 d!2378762))

(declare-fun b!7964501 () Bool)

(declare-fun res!3156211 () Bool)

(declare-fun e!4696643 () Bool)

(assert (=> b!7964501 (=> (not res!3156211) (not e!4696643))))

(declare-fun call!738769 () Bool)

(assert (=> b!7964501 (= res!3156211 call!738769)))

(declare-fun e!4696642 () Bool)

(assert (=> b!7964501 (= e!4696642 e!4696643)))

(declare-fun b!7964502 () Bool)

(declare-fun e!4696640 () Bool)

(assert (=> b!7964502 (= e!4696640 e!4696642)))

(declare-fun c!1462690 () Bool)

(assert (=> b!7964502 (= c!1462690 ((_ is Union!21507) baseR!116))))

(declare-fun bm!738764 () Bool)

(declare-fun call!738771 () Bool)

(assert (=> bm!738764 (= call!738771 (validRegex!11811 (ite c!1462690 (regTwo!43527 baseR!116) (regTwo!43526 baseR!116))))))

(declare-fun bm!738765 () Bool)

(declare-fun call!738770 () Bool)

(assert (=> bm!738765 (= call!738769 call!738770)))

(declare-fun b!7964503 () Bool)

(declare-fun e!4696644 () Bool)

(assert (=> b!7964503 (= e!4696640 e!4696644)))

(declare-fun res!3156210 () Bool)

(assert (=> b!7964503 (= res!3156210 (not (nullable!9608 (reg!21836 baseR!116))))))

(assert (=> b!7964503 (=> (not res!3156210) (not e!4696644))))

(declare-fun b!7964504 () Bool)

(declare-fun res!3156213 () Bool)

(declare-fun e!4696639 () Bool)

(assert (=> b!7964504 (=> res!3156213 e!4696639)))

(assert (=> b!7964504 (= res!3156213 (not ((_ is Concat!30506) baseR!116)))))

(assert (=> b!7964504 (= e!4696642 e!4696639)))

(declare-fun b!7964505 () Bool)

(declare-fun e!4696638 () Bool)

(assert (=> b!7964505 (= e!4696638 e!4696640)))

(declare-fun c!1462689 () Bool)

(assert (=> b!7964505 (= c!1462689 ((_ is Star!21507) baseR!116))))

(declare-fun bm!738766 () Bool)

(assert (=> bm!738766 (= call!738770 (validRegex!11811 (ite c!1462689 (reg!21836 baseR!116) (ite c!1462690 (regOne!43527 baseR!116) (regOne!43526 baseR!116)))))))

(declare-fun b!7964506 () Bool)

(assert (=> b!7964506 (= e!4696643 call!738771)))

(declare-fun b!7964507 () Bool)

(declare-fun e!4696641 () Bool)

(assert (=> b!7964507 (= e!4696641 call!738771)))

(declare-fun b!7964508 () Bool)

(assert (=> b!7964508 (= e!4696644 call!738770)))

(declare-fun b!7964500 () Bool)

(assert (=> b!7964500 (= e!4696639 e!4696641)))

(declare-fun res!3156212 () Bool)

(assert (=> b!7964500 (=> (not res!3156212) (not e!4696641))))

(assert (=> b!7964500 (= res!3156212 call!738769)))

(declare-fun d!2378776 () Bool)

(declare-fun res!3156214 () Bool)

(assert (=> d!2378776 (=> res!3156214 e!4696638)))

(assert (=> d!2378776 (= res!3156214 ((_ is ElementMatch!21507) baseR!116))))

(assert (=> d!2378776 (= (validRegex!11811 baseR!116) e!4696638)))

(assert (= (and d!2378776 (not res!3156214)) b!7964505))

(assert (= (and b!7964505 c!1462689) b!7964503))

(assert (= (and b!7964505 (not c!1462689)) b!7964502))

(assert (= (and b!7964503 res!3156210) b!7964508))

(assert (= (and b!7964502 c!1462690) b!7964501))

(assert (= (and b!7964502 (not c!1462690)) b!7964504))

(assert (= (and b!7964501 res!3156211) b!7964506))

(assert (= (and b!7964504 (not res!3156213)) b!7964500))

(assert (= (and b!7964500 res!3156212) b!7964507))

(assert (= (or b!7964506 b!7964507) bm!738764))

(assert (= (or b!7964501 b!7964500) bm!738765))

(assert (= (or b!7964508 bm!738765) bm!738766))

(declare-fun m!8344606 () Bool)

(assert (=> bm!738764 m!8344606))

(declare-fun m!8344608 () Bool)

(assert (=> b!7964503 m!8344608))

(declare-fun m!8344610 () Bool)

(assert (=> bm!738766 m!8344610))

(assert (=> start!751152 d!2378776))

(declare-fun b!7964548 () Bool)

(declare-fun e!4696667 () Bool)

(assert (=> b!7964548 (= e!4696667 (>= (size!43443 input!7927) (size!43443 testedP!447)))))

(declare-fun b!7964547 () Bool)

(declare-fun e!4696666 () Bool)

(assert (=> b!7964547 (= e!4696666 (isPrefix!6607 (tail!15796 testedP!447) (tail!15796 input!7927)))))

(declare-fun b!7964546 () Bool)

(declare-fun res!3156239 () Bool)

(assert (=> b!7964546 (=> (not res!3156239) (not e!4696666))))

(assert (=> b!7964546 (= res!3156239 (= (head!16259 testedP!447) (head!16259 input!7927)))))

(declare-fun b!7964545 () Bool)

(declare-fun e!4696665 () Bool)

(assert (=> b!7964545 (= e!4696665 e!4696666)))

(declare-fun res!3156240 () Bool)

(assert (=> b!7964545 (=> (not res!3156240) (not e!4696666))))

(assert (=> b!7964545 (= res!3156240 (not ((_ is Nil!74612) input!7927)))))

(declare-fun d!2378790 () Bool)

(assert (=> d!2378790 e!4696667))

(declare-fun res!3156241 () Bool)

(assert (=> d!2378790 (=> res!3156241 e!4696667)))

(declare-fun lt!2705060 () Bool)

(assert (=> d!2378790 (= res!3156241 (not lt!2705060))))

(assert (=> d!2378790 (= lt!2705060 e!4696665)))

(declare-fun res!3156242 () Bool)

(assert (=> d!2378790 (=> res!3156242 e!4696665)))

(assert (=> d!2378790 (= res!3156242 ((_ is Nil!74612) testedP!447))))

(assert (=> d!2378790 (= (isPrefix!6607 testedP!447 input!7927) lt!2705060)))

(assert (= (and d!2378790 (not res!3156242)) b!7964545))

(assert (= (and b!7964545 res!3156240) b!7964546))

(assert (= (and b!7964546 res!3156239) b!7964547))

(assert (= (and d!2378790 (not res!3156241)) b!7964548))

(assert (=> b!7964548 m!8344344))

(assert (=> b!7964548 m!8344352))

(declare-fun m!8344612 () Bool)

(assert (=> b!7964547 m!8344612))

(declare-fun m!8344614 () Bool)

(assert (=> b!7964547 m!8344614))

(assert (=> b!7964547 m!8344612))

(assert (=> b!7964547 m!8344614))

(declare-fun m!8344616 () Bool)

(assert (=> b!7964547 m!8344616))

(declare-fun m!8344618 () Bool)

(assert (=> b!7964546 m!8344618))

(declare-fun m!8344620 () Bool)

(assert (=> b!7964546 m!8344620))

(assert (=> b!7964214 d!2378790))

(declare-fun d!2378792 () Bool)

(declare-fun lt!2705063 () Int)

(assert (=> d!2378792 (>= lt!2705063 0)))

(declare-fun e!4696670 () Int)

(assert (=> d!2378792 (= lt!2705063 e!4696670)))

(declare-fun c!1462699 () Bool)

(assert (=> d!2378792 (= c!1462699 ((_ is Nil!74612) lt!2704783))))

(assert (=> d!2378792 (= (size!43443 lt!2704783) lt!2705063)))

(declare-fun b!7964553 () Bool)

(assert (=> b!7964553 (= e!4696670 0)))

(declare-fun b!7964554 () Bool)

(assert (=> b!7964554 (= e!4696670 (+ 1 (size!43443 (t!390479 lt!2704783))))))

(assert (= (and d!2378792 c!1462699) b!7964553))

(assert (= (and d!2378792 (not c!1462699)) b!7964554))

(declare-fun m!8344622 () Bool)

(assert (=> b!7964554 m!8344622))

(assert (=> b!7964221 d!2378792))

(declare-fun d!2378794 () Bool)

(assert (=> d!2378794 (= (isEmpty!42913 (_1!38641 lt!2704787)) ((_ is Nil!74612) (_1!38641 lt!2704787)))))

(assert (=> b!7964221 d!2378794))

(declare-fun d!2378796 () Bool)

(declare-fun lt!2705067 () Regex!21507)

(assert (=> d!2378796 (validRegex!11811 lt!2705067)))

(declare-fun e!4696680 () Regex!21507)

(assert (=> d!2378796 (= lt!2705067 e!4696680)))

(declare-fun c!1462705 () Bool)

(assert (=> d!2378796 (= c!1462705 ((_ is Cons!74612) lt!2704783))))

(assert (=> d!2378796 (validRegex!11811 baseR!116)))

(assert (=> d!2378796 (= (derivative!693 baseR!116 lt!2704783) lt!2705067)))

(declare-fun b!7964573 () Bool)

(assert (=> b!7964573 (= e!4696680 (derivative!693 (derivativeStep!6535 baseR!116 (h!81060 lt!2704783)) (t!390479 lt!2704783)))))

(declare-fun b!7964574 () Bool)

(assert (=> b!7964574 (= e!4696680 baseR!116)))

(assert (= (and d!2378796 c!1462705) b!7964573))

(assert (= (and d!2378796 (not c!1462705)) b!7964574))

(declare-fun m!8344636 () Bool)

(assert (=> d!2378796 m!8344636))

(assert (=> d!2378796 m!8344354))

(declare-fun m!8344638 () Bool)

(assert (=> b!7964573 m!8344638))

(assert (=> b!7964573 m!8344638))

(declare-fun m!8344640 () Bool)

(assert (=> b!7964573 m!8344640))

(assert (=> b!7964221 d!2378796))

(declare-fun d!2378800 () Bool)

(assert (=> d!2378800 (= (derivative!693 baseR!116 (++!18377 testedP!447 (Cons!74612 lt!2704781 Nil!74612))) (derivativeStep!6535 r!24602 lt!2704781))))

(declare-fun lt!2705074 () Unit!170118)

(declare-fun choose!60024 (Regex!21507 Regex!21507 List!74736 C!43352) Unit!170118)

(assert (=> d!2378800 (= lt!2705074 (choose!60024 baseR!116 r!24602 testedP!447 lt!2704781))))

(assert (=> d!2378800 (validRegex!11811 baseR!116)))

(assert (=> d!2378800 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!219 baseR!116 r!24602 testedP!447 lt!2704781) lt!2705074)))

(declare-fun bs!1969834 () Bool)

(assert (= bs!1969834 d!2378800))

(assert (=> bs!1969834 m!8344332))

(declare-fun m!8344650 () Bool)

(assert (=> bs!1969834 m!8344650))

(assert (=> bs!1969834 m!8344304))

(assert (=> bs!1969834 m!8344332))

(assert (=> bs!1969834 m!8344354))

(declare-fun m!8344652 () Bool)

(assert (=> bs!1969834 m!8344652))

(assert (=> b!7964221 d!2378800))

(declare-fun b!7964580 () Bool)

(declare-fun res!3156256 () Bool)

(declare-fun e!4696689 () Bool)

(assert (=> b!7964580 (=> (not res!3156256) (not e!4696689))))

(declare-fun call!738775 () Bool)

(assert (=> b!7964580 (= res!3156256 call!738775)))

(declare-fun e!4696688 () Bool)

(assert (=> b!7964580 (= e!4696688 e!4696689)))

(declare-fun b!7964581 () Bool)

(declare-fun e!4696686 () Bool)

(assert (=> b!7964581 (= e!4696686 e!4696688)))

(declare-fun c!1462708 () Bool)

(assert (=> b!7964581 (= c!1462708 ((_ is Union!21507) r!24602))))

(declare-fun bm!738770 () Bool)

(declare-fun call!738777 () Bool)

(assert (=> bm!738770 (= call!738777 (validRegex!11811 (ite c!1462708 (regTwo!43527 r!24602) (regTwo!43526 r!24602))))))

(declare-fun bm!738771 () Bool)

(declare-fun call!738776 () Bool)

(assert (=> bm!738771 (= call!738775 call!738776)))

(declare-fun b!7964582 () Bool)

(declare-fun e!4696690 () Bool)

(assert (=> b!7964582 (= e!4696686 e!4696690)))

(declare-fun res!3156255 () Bool)

(assert (=> b!7964582 (= res!3156255 (not (nullable!9608 (reg!21836 r!24602))))))

(assert (=> b!7964582 (=> (not res!3156255) (not e!4696690))))

(declare-fun b!7964583 () Bool)

(declare-fun res!3156258 () Bool)

(declare-fun e!4696685 () Bool)

(assert (=> b!7964583 (=> res!3156258 e!4696685)))

(assert (=> b!7964583 (= res!3156258 (not ((_ is Concat!30506) r!24602)))))

(assert (=> b!7964583 (= e!4696688 e!4696685)))

(declare-fun b!7964584 () Bool)

(declare-fun e!4696684 () Bool)

(assert (=> b!7964584 (= e!4696684 e!4696686)))

(declare-fun c!1462707 () Bool)

(assert (=> b!7964584 (= c!1462707 ((_ is Star!21507) r!24602))))

(declare-fun bm!738772 () Bool)

(assert (=> bm!738772 (= call!738776 (validRegex!11811 (ite c!1462707 (reg!21836 r!24602) (ite c!1462708 (regOne!43527 r!24602) (regOne!43526 r!24602)))))))

(declare-fun b!7964585 () Bool)

(assert (=> b!7964585 (= e!4696689 call!738777)))

(declare-fun b!7964586 () Bool)

(declare-fun e!4696687 () Bool)

(assert (=> b!7964586 (= e!4696687 call!738777)))

(declare-fun b!7964587 () Bool)

(assert (=> b!7964587 (= e!4696690 call!738776)))

(declare-fun b!7964579 () Bool)

(assert (=> b!7964579 (= e!4696685 e!4696687)))

(declare-fun res!3156257 () Bool)

(assert (=> b!7964579 (=> (not res!3156257) (not e!4696687))))

(assert (=> b!7964579 (= res!3156257 call!738775)))

(declare-fun d!2378808 () Bool)

(declare-fun res!3156259 () Bool)

(assert (=> d!2378808 (=> res!3156259 e!4696684)))

(assert (=> d!2378808 (= res!3156259 ((_ is ElementMatch!21507) r!24602))))

(assert (=> d!2378808 (= (validRegex!11811 r!24602) e!4696684)))

(assert (= (and d!2378808 (not res!3156259)) b!7964584))

(assert (= (and b!7964584 c!1462707) b!7964582))

(assert (= (and b!7964584 (not c!1462707)) b!7964581))

(assert (= (and b!7964582 res!3156255) b!7964587))

(assert (= (and b!7964581 c!1462708) b!7964580))

(assert (= (and b!7964581 (not c!1462708)) b!7964583))

(assert (= (and b!7964580 res!3156256) b!7964585))

(assert (= (and b!7964583 (not res!3156258)) b!7964579))

(assert (= (and b!7964579 res!3156257) b!7964586))

(assert (= (or b!7964585 b!7964586) bm!738770))

(assert (= (or b!7964580 b!7964579) bm!738771))

(assert (= (or b!7964587 bm!738771) bm!738772))

(declare-fun m!8344654 () Bool)

(assert (=> bm!738770 m!8344654))

(declare-fun m!8344656 () Bool)

(assert (=> b!7964582 m!8344656))

(declare-fun m!8344658 () Bool)

(assert (=> bm!738772 m!8344658))

(assert (=> b!7964221 d!2378808))

(declare-fun d!2378810 () Bool)

(declare-fun e!4696715 () Bool)

(assert (=> d!2378810 e!4696715))

(declare-fun res!3156268 () Bool)

(assert (=> d!2378810 (=> res!3156268 e!4696715)))

(assert (=> d!2378810 (= res!3156268 (isEmpty!42913 (_1!38641 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (size!43443 lt!2704783) (getSuffix!3810 input!7927 lt!2704783) input!7927 (size!43443 input!7927)))))))

(declare-fun lt!2705080 () Unit!170118)

(declare-fun choose!60026 (Regex!21507 Regex!21507 List!74736 List!74736) Unit!170118)

(assert (=> d!2378810 (= lt!2705080 (choose!60026 baseR!116 lt!2704784 lt!2704783 input!7927))))

(assert (=> d!2378810 (validRegex!11811 baseR!116)))

(assert (=> d!2378810 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!51 baseR!116 lt!2704784 lt!2704783 input!7927) lt!2705080)))

(declare-fun b!7964658 () Bool)

(assert (=> b!7964658 (= e!4696715 (matchR!10740 baseR!116 (_1!38641 (findLongestMatchInner!2288 lt!2704784 lt!2704783 (size!43443 lt!2704783) (getSuffix!3810 input!7927 lt!2704783) input!7927 (size!43443 input!7927)))))))

(assert (= (and d!2378810 (not res!3156268)) b!7964658))

(assert (=> d!2378810 m!8344320))

(assert (=> d!2378810 m!8344314))

(assert (=> d!2378810 m!8344344))

(declare-fun m!8344674 () Bool)

(assert (=> d!2378810 m!8344674))

(assert (=> d!2378810 m!8344344))

(assert (=> d!2378810 m!8344320))

(assert (=> d!2378810 m!8344354))

(declare-fun m!8344676 () Bool)

(assert (=> d!2378810 m!8344676))

(assert (=> d!2378810 m!8344314))

(declare-fun m!8344678 () Bool)

(assert (=> d!2378810 m!8344678))

(assert (=> b!7964658 m!8344320))

(assert (=> b!7964658 m!8344314))

(assert (=> b!7964658 m!8344344))

(assert (=> b!7964658 m!8344674))

(assert (=> b!7964658 m!8344344))

(assert (=> b!7964658 m!8344320))

(assert (=> b!7964658 m!8344314))

(declare-fun m!8344680 () Bool)

(assert (=> b!7964658 m!8344680))

(assert (=> b!7964221 d!2378810))

(declare-fun b!7964659 () Bool)

(declare-fun e!4696723 () Unit!170118)

(declare-fun Unit!170131 () Unit!170118)

(assert (=> b!7964659 (= e!4696723 Unit!170131)))

(declare-fun bm!738773 () Bool)

(declare-fun call!738782 () Unit!170118)

(assert (=> bm!738773 (= call!738782 (lemmaIsPrefixSameLengthThenSameList!1655 input!7927 lt!2704783 input!7927))))

(declare-fun b!7964660 () Bool)

(declare-fun e!4696720 () tuple2!70676)

(assert (=> b!7964660 (= e!4696720 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun bm!738774 () Bool)

(declare-fun call!738785 () List!74736)

(assert (=> bm!738774 (= call!738785 (tail!15796 (getSuffix!3810 input!7927 lt!2704783)))))

(declare-fun b!7964661 () Bool)

(declare-fun e!4696717 () tuple2!70676)

(declare-fun call!738781 () tuple2!70676)

(assert (=> b!7964661 (= e!4696717 call!738781)))

(declare-fun b!7964662 () Bool)

(declare-fun e!4696721 () tuple2!70676)

(declare-fun lt!2705088 () tuple2!70676)

(assert (=> b!7964662 (= e!4696721 lt!2705088)))

(declare-fun b!7964663 () Bool)

(assert (=> b!7964663 (= e!4696720 (tuple2!70677 lt!2704783 Nil!74612))))

(declare-fun b!7964665 () Bool)

(declare-fun Unit!170132 () Unit!170118)

(assert (=> b!7964665 (= e!4696723 Unit!170132)))

(declare-fun lt!2705086 () Unit!170118)

(declare-fun call!738783 () Unit!170118)

(assert (=> b!7964665 (= lt!2705086 call!738783)))

(declare-fun call!738779 () Bool)

(assert (=> b!7964665 call!738779))

(declare-fun lt!2705090 () Unit!170118)

(assert (=> b!7964665 (= lt!2705090 lt!2705086)))

(declare-fun lt!2705095 () Unit!170118)

(assert (=> b!7964665 (= lt!2705095 call!738782)))

(assert (=> b!7964665 (= input!7927 lt!2704783)))

(declare-fun lt!2705082 () Unit!170118)

(assert (=> b!7964665 (= lt!2705082 lt!2705095)))

(assert (=> b!7964665 false))

(declare-fun b!7964666 () Bool)

(declare-fun e!4696719 () tuple2!70676)

(assert (=> b!7964666 (= e!4696719 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun call!738780 () Regex!21507)

(declare-fun bm!738775 () Bool)

(declare-fun lt!2705087 () List!74736)

(assert (=> bm!738775 (= call!738781 (findLongestMatchInner!2288 call!738780 lt!2705087 (+ (size!43443 lt!2704783) 1) call!738785 input!7927 lt!2704791))))

(declare-fun b!7964667 () Bool)

(declare-fun e!4696722 () Bool)

(declare-fun lt!2705097 () tuple2!70676)

(assert (=> b!7964667 (= e!4696722 (>= (size!43443 (_1!38641 lt!2705097)) (size!43443 lt!2704783)))))

(declare-fun b!7964668 () Bool)

(declare-fun c!1462714 () Bool)

(declare-fun call!738778 () Bool)

(assert (=> b!7964668 (= c!1462714 call!738778)))

(declare-fun lt!2705101 () Unit!170118)

(declare-fun lt!2705084 () Unit!170118)

(assert (=> b!7964668 (= lt!2705101 lt!2705084)))

(declare-fun lt!2705091 () List!74736)

(declare-fun lt!2705102 () C!43352)

(assert (=> b!7964668 (= (++!18377 (++!18377 lt!2704783 (Cons!74612 lt!2705102 Nil!74612)) lt!2705091) input!7927)))

(assert (=> b!7964668 (= lt!2705084 (lemmaMoveElementToOtherListKeepsConcatEq!3536 lt!2704783 lt!2705102 lt!2705091 input!7927))))

(assert (=> b!7964668 (= lt!2705091 (tail!15796 (getSuffix!3810 input!7927 lt!2704783)))))

(assert (=> b!7964668 (= lt!2705102 (head!16259 (getSuffix!3810 input!7927 lt!2704783)))))

(declare-fun lt!2705105 () Unit!170118)

(declare-fun lt!2705092 () Unit!170118)

(assert (=> b!7964668 (= lt!2705105 lt!2705092)))

(assert (=> b!7964668 (isPrefix!6607 (++!18377 lt!2704783 (Cons!74612 (head!16259 (getSuffix!3810 input!7927 lt!2704783)) Nil!74612)) input!7927)))

(assert (=> b!7964668 (= lt!2705092 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 lt!2704783 input!7927))))

(declare-fun lt!2705104 () Unit!170118)

(declare-fun lt!2705083 () Unit!170118)

(assert (=> b!7964668 (= lt!2705104 lt!2705083)))

(assert (=> b!7964668 (= lt!2705083 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 lt!2704783 input!7927))))

(assert (=> b!7964668 (= lt!2705087 (++!18377 lt!2704783 (Cons!74612 (head!16259 (getSuffix!3810 input!7927 lt!2704783)) Nil!74612)))))

(declare-fun lt!2705085 () Unit!170118)

(assert (=> b!7964668 (= lt!2705085 e!4696723)))

(declare-fun c!1462716 () Bool)

(assert (=> b!7964668 (= c!1462716 (= (size!43443 lt!2704783) (size!43443 input!7927)))))

(declare-fun lt!2705081 () Unit!170118)

(declare-fun lt!2705094 () Unit!170118)

(assert (=> b!7964668 (= lt!2705081 lt!2705094)))

(assert (=> b!7964668 (<= (size!43443 lt!2704783) (size!43443 input!7927))))

(assert (=> b!7964668 (= lt!2705094 (lemmaIsPrefixThenSmallerEqSize!1124 lt!2704783 input!7927))))

(declare-fun e!4696718 () tuple2!70676)

(assert (=> b!7964668 (= e!4696718 e!4696717)))

(declare-fun bm!738776 () Bool)

(declare-fun call!738784 () C!43352)

(assert (=> bm!738776 (= call!738780 (derivativeStep!6535 lt!2704784 call!738784))))

(declare-fun bm!738777 () Bool)

(assert (=> bm!738777 (= call!738779 (isPrefix!6607 input!7927 input!7927))))

(declare-fun b!7964669 () Bool)

(declare-fun c!1462717 () Bool)

(assert (=> b!7964669 (= c!1462717 call!738778)))

(declare-fun lt!2705089 () Unit!170118)

(declare-fun lt!2705108 () Unit!170118)

(assert (=> b!7964669 (= lt!2705089 lt!2705108)))

(assert (=> b!7964669 (= input!7927 lt!2704783)))

(assert (=> b!7964669 (= lt!2705108 call!738782)))

(declare-fun lt!2705096 () Unit!170118)

(declare-fun lt!2705103 () Unit!170118)

(assert (=> b!7964669 (= lt!2705096 lt!2705103)))

(assert (=> b!7964669 call!738779))

(assert (=> b!7964669 (= lt!2705103 call!738783)))

(assert (=> b!7964669 (= e!4696718 e!4696720)))

(declare-fun bm!738778 () Bool)

(assert (=> bm!738778 (= call!738778 (nullable!9608 lt!2704784))))

(declare-fun bm!738779 () Bool)

(assert (=> bm!738779 (= call!738784 (head!16259 (getSuffix!3810 input!7927 lt!2704783)))))

(declare-fun d!2378814 () Bool)

(declare-fun e!4696716 () Bool)

(assert (=> d!2378814 e!4696716))

(declare-fun res!3156270 () Bool)

(assert (=> d!2378814 (=> (not res!3156270) (not e!4696716))))

(assert (=> d!2378814 (= res!3156270 (= (++!18377 (_1!38641 lt!2705097) (_2!38641 lt!2705097)) input!7927))))

(assert (=> d!2378814 (= lt!2705097 e!4696719)))

(declare-fun c!1462712 () Bool)

(assert (=> d!2378814 (= c!1462712 (lostCause!1980 lt!2704784))))

(declare-fun lt!2705093 () Unit!170118)

(declare-fun Unit!170133 () Unit!170118)

(assert (=> d!2378814 (= lt!2705093 Unit!170133)))

(assert (=> d!2378814 (= (getSuffix!3810 input!7927 lt!2704783) (getSuffix!3810 input!7927 lt!2704783))))

(declare-fun lt!2705100 () Unit!170118)

(declare-fun lt!2705098 () Unit!170118)

(assert (=> d!2378814 (= lt!2705100 lt!2705098)))

(declare-fun lt!2705099 () List!74736)

(assert (=> d!2378814 (= (getSuffix!3810 input!7927 lt!2704783) lt!2705099)))

(assert (=> d!2378814 (= lt!2705098 (lemmaSamePrefixThenSameSuffix!2996 lt!2704783 (getSuffix!3810 input!7927 lt!2704783) lt!2704783 lt!2705099 input!7927))))

(assert (=> d!2378814 (= lt!2705099 (getSuffix!3810 input!7927 lt!2704783))))

(declare-fun lt!2705106 () Unit!170118)

(declare-fun lt!2705107 () Unit!170118)

(assert (=> d!2378814 (= lt!2705106 lt!2705107)))

(assert (=> d!2378814 (isPrefix!6607 lt!2704783 (++!18377 lt!2704783 (getSuffix!3810 input!7927 lt!2704783)))))

(assert (=> d!2378814 (= lt!2705107 (lemmaConcatTwoListThenFirstIsPrefix!3858 lt!2704783 (getSuffix!3810 input!7927 lt!2704783)))))

(assert (=> d!2378814 (validRegex!11811 lt!2704784)))

(assert (=> d!2378814 (= (findLongestMatchInner!2288 lt!2704784 lt!2704783 (size!43443 lt!2704783) (getSuffix!3810 input!7927 lt!2704783) input!7927 lt!2704791) lt!2705097)))

(declare-fun b!7964664 () Bool)

(assert (=> b!7964664 (= e!4696716 e!4696722)))

(declare-fun res!3156269 () Bool)

(assert (=> b!7964664 (=> res!3156269 e!4696722)))

(assert (=> b!7964664 (= res!3156269 (isEmpty!42913 (_1!38641 lt!2705097)))))

(declare-fun b!7964670 () Bool)

(assert (=> b!7964670 (= e!4696721 (tuple2!70677 lt!2704783 (getSuffix!3810 input!7927 lt!2704783)))))

(declare-fun b!7964671 () Bool)

(assert (=> b!7964671 (= e!4696719 e!4696718)))

(declare-fun c!1462715 () Bool)

(assert (=> b!7964671 (= c!1462715 (= (size!43443 lt!2704783) lt!2704791))))

(declare-fun bm!738780 () Bool)

(assert (=> bm!738780 (= call!738783 (lemmaIsPrefixRefl!4075 input!7927 input!7927))))

(declare-fun b!7964672 () Bool)

(assert (=> b!7964672 (= e!4696717 e!4696721)))

(assert (=> b!7964672 (= lt!2705088 call!738781)))

(declare-fun c!1462713 () Bool)

(assert (=> b!7964672 (= c!1462713 (isEmpty!42913 (_1!38641 lt!2705088)))))

(assert (= (and d!2378814 c!1462712) b!7964666))

(assert (= (and d!2378814 (not c!1462712)) b!7964671))

(assert (= (and b!7964671 c!1462715) b!7964669))

(assert (= (and b!7964671 (not c!1462715)) b!7964668))

(assert (= (and b!7964669 c!1462717) b!7964663))

(assert (= (and b!7964669 (not c!1462717)) b!7964660))

(assert (= (and b!7964668 c!1462716) b!7964665))

(assert (= (and b!7964668 (not c!1462716)) b!7964659))

(assert (= (and b!7964668 c!1462714) b!7964672))

(assert (= (and b!7964668 (not c!1462714)) b!7964661))

(assert (= (and b!7964672 c!1462713) b!7964670))

(assert (= (and b!7964672 (not c!1462713)) b!7964662))

(assert (= (or b!7964672 b!7964661) bm!738779))

(assert (= (or b!7964672 b!7964661) bm!738774))

(assert (= (or b!7964672 b!7964661) bm!738776))

(assert (= (or b!7964672 b!7964661) bm!738775))

(assert (= (or b!7964669 b!7964668) bm!738778))

(assert (= (or b!7964669 b!7964665) bm!738773))

(assert (= (or b!7964669 b!7964665) bm!738780))

(assert (= (or b!7964669 b!7964665) bm!738777))

(assert (= (and d!2378814 res!3156270) b!7964664))

(assert (= (and b!7964664 (not res!3156269)) b!7964667))

(assert (=> bm!738780 m!8344308))

(declare-fun m!8344682 () Bool)

(assert (=> d!2378814 m!8344682))

(assert (=> d!2378814 m!8344468))

(assert (=> d!2378814 m!8344314))

(declare-fun m!8344684 () Bool)

(assert (=> d!2378814 m!8344684))

(assert (=> d!2378814 m!8344314))

(declare-fun m!8344686 () Bool)

(assert (=> d!2378814 m!8344686))

(assert (=> d!2378814 m!8344684))

(declare-fun m!8344688 () Bool)

(assert (=> d!2378814 m!8344688))

(assert (=> d!2378814 m!8344314))

(assert (=> d!2378814 m!8344476))

(assert (=> d!2378814 m!8344314))

(declare-fun m!8344690 () Bool)

(assert (=> d!2378814 m!8344690))

(declare-fun m!8344692 () Bool)

(assert (=> b!7964672 m!8344692))

(declare-fun m!8344694 () Bool)

(assert (=> bm!738776 m!8344694))

(assert (=> b!7964668 m!8344484))

(assert (=> b!7964668 m!8344314))

(assert (=> b!7964668 m!8344486))

(assert (=> b!7964668 m!8344488))

(assert (=> b!7964668 m!8344490))

(assert (=> b!7964668 m!8344490))

(assert (=> b!7964668 m!8344492))

(declare-fun m!8344696 () Bool)

(assert (=> b!7964668 m!8344696))

(declare-fun m!8344698 () Bool)

(assert (=> b!7964668 m!8344698))

(assert (=> b!7964668 m!8344314))

(assert (=> b!7964668 m!8344486))

(assert (=> b!7964668 m!8344696))

(assert (=> b!7964668 m!8344344))

(assert (=> b!7964668 m!8344314))

(declare-fun m!8344700 () Bool)

(assert (=> b!7964668 m!8344700))

(assert (=> b!7964668 m!8344490))

(assert (=> b!7964668 m!8344320))

(assert (=> b!7964668 m!8344314))

(declare-fun m!8344702 () Bool)

(assert (=> b!7964668 m!8344702))

(assert (=> bm!738773 m!8344510))

(assert (=> bm!738777 m!8344310))

(declare-fun m!8344704 () Bool)

(assert (=> b!7964664 m!8344704))

(assert (=> bm!738778 m!8344514))

(assert (=> bm!738774 m!8344314))

(assert (=> bm!738774 m!8344702))

(declare-fun m!8344706 () Bool)

(assert (=> bm!738775 m!8344706))

(assert (=> bm!738779 m!8344314))

(assert (=> bm!738779 m!8344486))

(declare-fun m!8344708 () Bool)

(assert (=> b!7964667 m!8344708))

(assert (=> b!7964667 m!8344320))

(assert (=> b!7964221 d!2378814))

(declare-fun d!2378816 () Bool)

(declare-fun lt!2705111 () List!74736)

(assert (=> d!2378816 (= (++!18377 lt!2704783 lt!2705111) input!7927)))

(declare-fun e!4696726 () List!74736)

(assert (=> d!2378816 (= lt!2705111 e!4696726)))

(declare-fun c!1462720 () Bool)

(assert (=> d!2378816 (= c!1462720 ((_ is Cons!74612) lt!2704783))))

(assert (=> d!2378816 (>= (size!43443 input!7927) (size!43443 lt!2704783))))

(assert (=> d!2378816 (= (getSuffix!3810 input!7927 lt!2704783) lt!2705111)))

(declare-fun b!7964677 () Bool)

(assert (=> b!7964677 (= e!4696726 (getSuffix!3810 (tail!15796 input!7927) (t!390479 lt!2704783)))))

(declare-fun b!7964678 () Bool)

(assert (=> b!7964678 (= e!4696726 input!7927)))

(assert (= (and d!2378816 c!1462720) b!7964677))

(assert (= (and d!2378816 (not c!1462720)) b!7964678))

(declare-fun m!8344710 () Bool)

(assert (=> d!2378816 m!8344710))

(assert (=> d!2378816 m!8344344))

(assert (=> d!2378816 m!8344320))

(assert (=> b!7964677 m!8344614))

(assert (=> b!7964677 m!8344614))

(declare-fun m!8344712 () Bool)

(assert (=> b!7964677 m!8344712))

(assert (=> b!7964221 d!2378816))

(declare-fun d!2378818 () Bool)

(declare-fun lt!2705112 () Regex!21507)

(assert (=> d!2378818 (validRegex!11811 lt!2705112)))

(declare-fun e!4696727 () Regex!21507)

(assert (=> d!2378818 (= lt!2705112 e!4696727)))

(declare-fun c!1462721 () Bool)

(assert (=> d!2378818 (= c!1462721 ((_ is Cons!74612) testedP!447))))

(assert (=> d!2378818 (validRegex!11811 baseR!116)))

(assert (=> d!2378818 (= (derivative!693 baseR!116 testedP!447) lt!2705112)))

(declare-fun b!7964679 () Bool)

(assert (=> b!7964679 (= e!4696727 (derivative!693 (derivativeStep!6535 baseR!116 (h!81060 testedP!447)) (t!390479 testedP!447)))))

(declare-fun b!7964680 () Bool)

(assert (=> b!7964680 (= e!4696727 baseR!116)))

(assert (= (and d!2378818 c!1462721) b!7964679))

(assert (= (and d!2378818 (not c!1462721)) b!7964680))

(declare-fun m!8344714 () Bool)

(assert (=> d!2378818 m!8344714))

(assert (=> d!2378818 m!8344354))

(declare-fun m!8344716 () Bool)

(assert (=> b!7964679 m!8344716))

(assert (=> b!7964679 m!8344716))

(declare-fun m!8344718 () Bool)

(assert (=> b!7964679 m!8344718))

(assert (=> b!7964216 d!2378818))

(declare-fun d!2378820 () Bool)

(declare-fun lt!2705113 () Int)

(assert (=> d!2378820 (>= lt!2705113 0)))

(declare-fun e!4696728 () Int)

(assert (=> d!2378820 (= lt!2705113 e!4696728)))

(declare-fun c!1462722 () Bool)

(assert (=> d!2378820 (= c!1462722 ((_ is Nil!74612) input!7927))))

(assert (=> d!2378820 (= (size!43443 input!7927) lt!2705113)))

(declare-fun b!7964681 () Bool)

(assert (=> b!7964681 (= e!4696728 0)))

(declare-fun b!7964682 () Bool)

(assert (=> b!7964682 (= e!4696728 (+ 1 (size!43443 (t!390479 input!7927))))))

(assert (= (and d!2378820 c!1462722) b!7964681))

(assert (= (and d!2378820 (not c!1462722)) b!7964682))

(declare-fun m!8344720 () Bool)

(assert (=> b!7964682 m!8344720))

(assert (=> b!7964211 d!2378820))

(declare-fun d!2378822 () Bool)

(assert (=> d!2378822 (= (isEmpty!42913 (_1!38641 (findLongestMatchInner!2288 r!24602 testedP!447 lt!2704788 lt!2704780 input!7927 lt!2704791))) ((_ is Nil!74612) (_1!38641 (findLongestMatchInner!2288 r!24602 testedP!447 lt!2704788 lt!2704780 input!7927 lt!2704791))))))

(assert (=> b!7964211 d!2378822))

(declare-fun d!2378824 () Bool)

(declare-fun lt!2705114 () List!74736)

(assert (=> d!2378824 (= (++!18377 testedP!447 lt!2705114) input!7927)))

(declare-fun e!4696729 () List!74736)

(assert (=> d!2378824 (= lt!2705114 e!4696729)))

(declare-fun c!1462723 () Bool)

(assert (=> d!2378824 (= c!1462723 ((_ is Cons!74612) testedP!447))))

(assert (=> d!2378824 (>= (size!43443 input!7927) (size!43443 testedP!447))))

(assert (=> d!2378824 (= (getSuffix!3810 input!7927 testedP!447) lt!2705114)))

(declare-fun b!7964683 () Bool)

(assert (=> b!7964683 (= e!4696729 (getSuffix!3810 (tail!15796 input!7927) (t!390479 testedP!447)))))

(declare-fun b!7964684 () Bool)

(assert (=> b!7964684 (= e!4696729 input!7927)))

(assert (= (and d!2378824 c!1462723) b!7964683))

(assert (= (and d!2378824 (not c!1462723)) b!7964684))

(declare-fun m!8344722 () Bool)

(assert (=> d!2378824 m!8344722))

(assert (=> d!2378824 m!8344344))

(assert (=> d!2378824 m!8344352))

(assert (=> b!7964683 m!8344614))

(assert (=> b!7964683 m!8344614))

(declare-fun m!8344724 () Bool)

(assert (=> b!7964683 m!8344724))

(assert (=> b!7964211 d!2378824))

(declare-fun d!2378826 () Bool)

(declare-fun lt!2705115 () Int)

(assert (=> d!2378826 (>= lt!2705115 0)))

(declare-fun e!4696730 () Int)

(assert (=> d!2378826 (= lt!2705115 e!4696730)))

(declare-fun c!1462724 () Bool)

(assert (=> d!2378826 (= c!1462724 ((_ is Nil!74612) testedP!447))))

(assert (=> d!2378826 (= (size!43443 testedP!447) lt!2705115)))

(declare-fun b!7964685 () Bool)

(assert (=> b!7964685 (= e!4696730 0)))

(declare-fun b!7964686 () Bool)

(assert (=> b!7964686 (= e!4696730 (+ 1 (size!43443 (t!390479 testedP!447))))))

(assert (= (and d!2378826 c!1462724) b!7964685))

(assert (= (and d!2378826 (not c!1462724)) b!7964686))

(declare-fun m!8344726 () Bool)

(assert (=> b!7964686 m!8344726))

(assert (=> b!7964211 d!2378826))

(declare-fun b!7964687 () Bool)

(declare-fun e!4696738 () Unit!170118)

(declare-fun Unit!170137 () Unit!170118)

(assert (=> b!7964687 (= e!4696738 Unit!170137)))

(declare-fun bm!738781 () Bool)

(declare-fun call!738790 () Unit!170118)

(assert (=> bm!738781 (= call!738790 (lemmaIsPrefixSameLengthThenSameList!1655 input!7927 testedP!447 input!7927))))

(declare-fun b!7964688 () Bool)

(declare-fun e!4696735 () tuple2!70676)

(assert (=> b!7964688 (= e!4696735 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun bm!738782 () Bool)

(declare-fun call!738793 () List!74736)

(assert (=> bm!738782 (= call!738793 (tail!15796 lt!2704780))))

(declare-fun b!7964689 () Bool)

(declare-fun e!4696732 () tuple2!70676)

(declare-fun call!738789 () tuple2!70676)

(assert (=> b!7964689 (= e!4696732 call!738789)))

(declare-fun b!7964690 () Bool)

(declare-fun e!4696736 () tuple2!70676)

(declare-fun lt!2705123 () tuple2!70676)

(assert (=> b!7964690 (= e!4696736 lt!2705123)))

(declare-fun b!7964691 () Bool)

(assert (=> b!7964691 (= e!4696735 (tuple2!70677 testedP!447 Nil!74612))))

(declare-fun b!7964693 () Bool)

(declare-fun Unit!170138 () Unit!170118)

(assert (=> b!7964693 (= e!4696738 Unit!170138)))

(declare-fun lt!2705121 () Unit!170118)

(declare-fun call!738791 () Unit!170118)

(assert (=> b!7964693 (= lt!2705121 call!738791)))

(declare-fun call!738787 () Bool)

(assert (=> b!7964693 call!738787))

(declare-fun lt!2705125 () Unit!170118)

(assert (=> b!7964693 (= lt!2705125 lt!2705121)))

(declare-fun lt!2705130 () Unit!170118)

(assert (=> b!7964693 (= lt!2705130 call!738790)))

(assert (=> b!7964693 (= input!7927 testedP!447)))

(declare-fun lt!2705117 () Unit!170118)

(assert (=> b!7964693 (= lt!2705117 lt!2705130)))

(assert (=> b!7964693 false))

(declare-fun b!7964694 () Bool)

(declare-fun e!4696734 () tuple2!70676)

(assert (=> b!7964694 (= e!4696734 (tuple2!70677 Nil!74612 input!7927))))

(declare-fun call!738788 () Regex!21507)

(declare-fun bm!738783 () Bool)

(declare-fun lt!2705122 () List!74736)

(assert (=> bm!738783 (= call!738789 (findLongestMatchInner!2288 call!738788 lt!2705122 (+ lt!2704788 1) call!738793 input!7927 lt!2704791))))

(declare-fun b!7964695 () Bool)

(declare-fun e!4696737 () Bool)

(declare-fun lt!2705132 () tuple2!70676)

(assert (=> b!7964695 (= e!4696737 (>= (size!43443 (_1!38641 lt!2705132)) (size!43443 testedP!447)))))

(declare-fun b!7964696 () Bool)

(declare-fun c!1462727 () Bool)

(declare-fun call!738786 () Bool)

(assert (=> b!7964696 (= c!1462727 call!738786)))

(declare-fun lt!2705136 () Unit!170118)

(declare-fun lt!2705119 () Unit!170118)

(assert (=> b!7964696 (= lt!2705136 lt!2705119)))

(declare-fun lt!2705137 () C!43352)

(declare-fun lt!2705126 () List!74736)

(assert (=> b!7964696 (= (++!18377 (++!18377 testedP!447 (Cons!74612 lt!2705137 Nil!74612)) lt!2705126) input!7927)))

(assert (=> b!7964696 (= lt!2705119 (lemmaMoveElementToOtherListKeepsConcatEq!3536 testedP!447 lt!2705137 lt!2705126 input!7927))))

(assert (=> b!7964696 (= lt!2705126 (tail!15796 lt!2704780))))

(assert (=> b!7964696 (= lt!2705137 (head!16259 lt!2704780))))

(declare-fun lt!2705140 () Unit!170118)

(declare-fun lt!2705127 () Unit!170118)

(assert (=> b!7964696 (= lt!2705140 lt!2705127)))

(assert (=> b!7964696 (isPrefix!6607 (++!18377 testedP!447 (Cons!74612 (head!16259 (getSuffix!3810 input!7927 testedP!447)) Nil!74612)) input!7927)))

(assert (=> b!7964696 (= lt!2705127 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 testedP!447 input!7927))))

(declare-fun lt!2705139 () Unit!170118)

(declare-fun lt!2705118 () Unit!170118)

(assert (=> b!7964696 (= lt!2705139 lt!2705118)))

(assert (=> b!7964696 (= lt!2705118 (lemmaAddHeadSuffixToPrefixStillPrefix!1334 testedP!447 input!7927))))

(assert (=> b!7964696 (= lt!2705122 (++!18377 testedP!447 (Cons!74612 (head!16259 lt!2704780) Nil!74612)))))

(declare-fun lt!2705120 () Unit!170118)

(assert (=> b!7964696 (= lt!2705120 e!4696738)))

(declare-fun c!1462729 () Bool)

(assert (=> b!7964696 (= c!1462729 (= (size!43443 testedP!447) (size!43443 input!7927)))))

(declare-fun lt!2705116 () Unit!170118)

(declare-fun lt!2705129 () Unit!170118)

(assert (=> b!7964696 (= lt!2705116 lt!2705129)))

(assert (=> b!7964696 (<= (size!43443 testedP!447) (size!43443 input!7927))))

(assert (=> b!7964696 (= lt!2705129 (lemmaIsPrefixThenSmallerEqSize!1124 testedP!447 input!7927))))

(declare-fun e!4696733 () tuple2!70676)

(assert (=> b!7964696 (= e!4696733 e!4696732)))

(declare-fun bm!738784 () Bool)

(declare-fun call!738792 () C!43352)

(assert (=> bm!738784 (= call!738788 (derivativeStep!6535 r!24602 call!738792))))

(declare-fun bm!738785 () Bool)

(assert (=> bm!738785 (= call!738787 (isPrefix!6607 input!7927 input!7927))))

(declare-fun b!7964697 () Bool)

(declare-fun c!1462730 () Bool)

(assert (=> b!7964697 (= c!1462730 call!738786)))

(declare-fun lt!2705124 () Unit!170118)

(declare-fun lt!2705143 () Unit!170118)

(assert (=> b!7964697 (= lt!2705124 lt!2705143)))

(assert (=> b!7964697 (= input!7927 testedP!447)))

(assert (=> b!7964697 (= lt!2705143 call!738790)))

(declare-fun lt!2705131 () Unit!170118)

(declare-fun lt!2705138 () Unit!170118)

(assert (=> b!7964697 (= lt!2705131 lt!2705138)))

(assert (=> b!7964697 call!738787))

(assert (=> b!7964697 (= lt!2705138 call!738791)))

(assert (=> b!7964697 (= e!4696733 e!4696735)))

(declare-fun bm!738786 () Bool)

(assert (=> bm!738786 (= call!738786 (nullable!9608 r!24602))))

(declare-fun bm!738787 () Bool)

(assert (=> bm!738787 (= call!738792 (head!16259 lt!2704780))))

(declare-fun d!2378828 () Bool)

(declare-fun e!4696731 () Bool)

(assert (=> d!2378828 e!4696731))

(declare-fun res!3156272 () Bool)

(assert (=> d!2378828 (=> (not res!3156272) (not e!4696731))))

(assert (=> d!2378828 (= res!3156272 (= (++!18377 (_1!38641 lt!2705132) (_2!38641 lt!2705132)) input!7927))))

(assert (=> d!2378828 (= lt!2705132 e!4696734)))

(declare-fun c!1462725 () Bool)

(assert (=> d!2378828 (= c!1462725 (lostCause!1980 r!24602))))

(declare-fun lt!2705128 () Unit!170118)

(declare-fun Unit!170139 () Unit!170118)

(assert (=> d!2378828 (= lt!2705128 Unit!170139)))

(assert (=> d!2378828 (= (getSuffix!3810 input!7927 testedP!447) lt!2704780)))

(declare-fun lt!2705135 () Unit!170118)

(declare-fun lt!2705133 () Unit!170118)

(assert (=> d!2378828 (= lt!2705135 lt!2705133)))

(declare-fun lt!2705134 () List!74736)

(assert (=> d!2378828 (= lt!2704780 lt!2705134)))

(assert (=> d!2378828 (= lt!2705133 (lemmaSamePrefixThenSameSuffix!2996 testedP!447 lt!2704780 testedP!447 lt!2705134 input!7927))))

(assert (=> d!2378828 (= lt!2705134 (getSuffix!3810 input!7927 testedP!447))))

(declare-fun lt!2705141 () Unit!170118)

(declare-fun lt!2705142 () Unit!170118)

(assert (=> d!2378828 (= lt!2705141 lt!2705142)))

(assert (=> d!2378828 (isPrefix!6607 testedP!447 (++!18377 testedP!447 lt!2704780))))

(assert (=> d!2378828 (= lt!2705142 (lemmaConcatTwoListThenFirstIsPrefix!3858 testedP!447 lt!2704780))))

(assert (=> d!2378828 (validRegex!11811 r!24602)))

(assert (=> d!2378828 (= (findLongestMatchInner!2288 r!24602 testedP!447 lt!2704788 lt!2704780 input!7927 lt!2704791) lt!2705132)))

(declare-fun b!7964692 () Bool)

(assert (=> b!7964692 (= e!4696731 e!4696737)))

(declare-fun res!3156271 () Bool)

(assert (=> b!7964692 (=> res!3156271 e!4696737)))

(assert (=> b!7964692 (= res!3156271 (isEmpty!42913 (_1!38641 lt!2705132)))))

(declare-fun b!7964698 () Bool)

(assert (=> b!7964698 (= e!4696736 (tuple2!70677 testedP!447 lt!2704780))))

(declare-fun b!7964699 () Bool)

(assert (=> b!7964699 (= e!4696734 e!4696733)))

(declare-fun c!1462728 () Bool)

(assert (=> b!7964699 (= c!1462728 (= lt!2704788 lt!2704791))))

(declare-fun bm!738788 () Bool)

(assert (=> bm!738788 (= call!738791 (lemmaIsPrefixRefl!4075 input!7927 input!7927))))

(declare-fun b!7964700 () Bool)

(assert (=> b!7964700 (= e!4696732 e!4696736)))

(assert (=> b!7964700 (= lt!2705123 call!738789)))

(declare-fun c!1462726 () Bool)

(assert (=> b!7964700 (= c!1462726 (isEmpty!42913 (_1!38641 lt!2705123)))))

(assert (= (and d!2378828 c!1462725) b!7964694))

(assert (= (and d!2378828 (not c!1462725)) b!7964699))

(assert (= (and b!7964699 c!1462728) b!7964697))

(assert (= (and b!7964699 (not c!1462728)) b!7964696))

(assert (= (and b!7964697 c!1462730) b!7964691))

(assert (= (and b!7964697 (not c!1462730)) b!7964688))

(assert (= (and b!7964696 c!1462729) b!7964693))

(assert (= (and b!7964696 (not c!1462729)) b!7964687))

(assert (= (and b!7964696 c!1462727) b!7964700))

(assert (= (and b!7964696 (not c!1462727)) b!7964689))

(assert (= (and b!7964700 c!1462726) b!7964698))

(assert (= (and b!7964700 (not c!1462726)) b!7964690))

(assert (= (or b!7964700 b!7964689) bm!738787))

(assert (= (or b!7964700 b!7964689) bm!738782))

(assert (= (or b!7964700 b!7964689) bm!738784))

(assert (= (or b!7964700 b!7964689) bm!738783))

(assert (= (or b!7964697 b!7964696) bm!738786))

(assert (= (or b!7964697 b!7964693) bm!738781))

(assert (= (or b!7964697 b!7964693) bm!738788))

(assert (= (or b!7964697 b!7964693) bm!738785))

(assert (= (and d!2378828 res!3156272) b!7964692))

(assert (= (and b!7964692 (not res!3156271)) b!7964695))

(assert (=> bm!738788 m!8344308))

(declare-fun m!8344728 () Bool)

(assert (=> d!2378828 m!8344728))

(assert (=> d!2378828 m!8344326))

(declare-fun m!8344730 () Bool)

(assert (=> d!2378828 m!8344730))

(declare-fun m!8344732 () Bool)

(assert (=> d!2378828 m!8344732))

(assert (=> d!2378828 m!8344730))

(declare-fun m!8344734 () Bool)

(assert (=> d!2378828 m!8344734))

(assert (=> d!2378828 m!8344348))

(declare-fun m!8344736 () Bool)

(assert (=> d!2378828 m!8344736))

(declare-fun m!8344738 () Bool)

(assert (=> d!2378828 m!8344738))

(declare-fun m!8344740 () Bool)

(assert (=> b!7964700 m!8344740))

(declare-fun m!8344742 () Bool)

(assert (=> bm!738784 m!8344742))

(assert (=> b!7964696 m!8344356))

(assert (=> b!7964696 m!8344348))

(declare-fun m!8344744 () Bool)

(assert (=> b!7964696 m!8344744))

(assert (=> b!7964696 m!8344336))

(declare-fun m!8344746 () Bool)

(assert (=> b!7964696 m!8344746))

(assert (=> b!7964696 m!8344746))

(declare-fun m!8344748 () Bool)

(assert (=> b!7964696 m!8344748))

(declare-fun m!8344750 () Bool)

(assert (=> b!7964696 m!8344750))

(declare-fun m!8344752 () Bool)

(assert (=> b!7964696 m!8344752))

(assert (=> b!7964696 m!8344338))

(assert (=> b!7964696 m!8344750))

(assert (=> b!7964696 m!8344344))

(assert (=> b!7964696 m!8344348))

(declare-fun m!8344754 () Bool)

(assert (=> b!7964696 m!8344754))

(declare-fun m!8344756 () Bool)

(assert (=> b!7964696 m!8344756))

(assert (=> b!7964696 m!8344352))

(assert (=> b!7964696 m!8344298))

(assert (=> bm!738781 m!8344312))

(assert (=> bm!738785 m!8344310))

(declare-fun m!8344758 () Bool)

(assert (=> b!7964692 m!8344758))

(assert (=> bm!738786 m!8344340))

(assert (=> bm!738782 m!8344298))

(declare-fun m!8344760 () Bool)

(assert (=> bm!738783 m!8344760))

(assert (=> bm!738787 m!8344338))

(declare-fun m!8344762 () Bool)

(assert (=> b!7964695 m!8344762))

(assert (=> b!7964695 m!8344352))

(assert (=> b!7964211 d!2378828))

(declare-fun d!2378830 () Bool)

(assert (=> d!2378830 (<= (size!43443 testedP!447) (size!43443 input!7927))))

(declare-fun lt!2705146 () Unit!170118)

(declare-fun choose!60028 (List!74736 List!74736) Unit!170118)

(assert (=> d!2378830 (= lt!2705146 (choose!60028 testedP!447 input!7927))))

(assert (=> d!2378830 (isPrefix!6607 testedP!447 input!7927)))

(assert (=> d!2378830 (= (lemmaIsPrefixThenSmallerEqSize!1124 testedP!447 input!7927) lt!2705146)))

(declare-fun bs!1969836 () Bool)

(assert (= bs!1969836 d!2378830))

(assert (=> bs!1969836 m!8344352))

(assert (=> bs!1969836 m!8344344))

(declare-fun m!8344764 () Bool)

(assert (=> bs!1969836 m!8344764))

(assert (=> bs!1969836 m!8344306))

(assert (=> b!7964222 d!2378830))

(declare-fun d!2378832 () Bool)

(assert (=> d!2378832 (isPrefix!6607 (++!18377 testedP!447 (Cons!74612 (head!16259 (getSuffix!3810 input!7927 testedP!447)) Nil!74612)) input!7927)))

(declare-fun lt!2705149 () Unit!170118)

(declare-fun choose!60029 (List!74736 List!74736) Unit!170118)

(assert (=> d!2378832 (= lt!2705149 (choose!60029 testedP!447 input!7927))))

(assert (=> d!2378832 (isPrefix!6607 testedP!447 input!7927)))

(assert (=> d!2378832 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1334 testedP!447 input!7927) lt!2705149)))

(declare-fun bs!1969837 () Bool)

(assert (= bs!1969837 d!2378832))

(assert (=> bs!1969837 m!8344746))

(assert (=> bs!1969837 m!8344306))

(assert (=> bs!1969837 m!8344348))

(assert (=> bs!1969837 m!8344746))

(assert (=> bs!1969837 m!8344748))

(assert (=> bs!1969837 m!8344348))

(assert (=> bs!1969837 m!8344744))

(declare-fun m!8344766 () Bool)

(assert (=> bs!1969837 m!8344766))

(assert (=> b!7964209 d!2378832))

(declare-fun d!2378834 () Bool)

(declare-fun nullableFct!3789 (Regex!21507) Bool)

(assert (=> d!2378834 (= (nullable!9608 r!24602) (nullableFct!3789 r!24602))))

(declare-fun bs!1969838 () Bool)

(assert (= bs!1969838 d!2378834))

(declare-fun m!8344768 () Bool)

(assert (=> bs!1969838 m!8344768))

(assert (=> b!7964209 d!2378834))

(declare-fun d!2378836 () Bool)

(assert (=> d!2378836 (= (head!16259 lt!2704780) (h!81060 lt!2704780))))

(assert (=> b!7964209 d!2378836))

(declare-fun d!2378838 () Bool)

(declare-fun e!4696744 () Bool)

(assert (=> d!2378838 e!4696744))

(declare-fun res!3156277 () Bool)

(assert (=> d!2378838 (=> (not res!3156277) (not e!4696744))))

(declare-fun lt!2705152 () List!74736)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15847 (List!74736) (InoxSet C!43352))

(assert (=> d!2378838 (= res!3156277 (= (content!15847 lt!2705152) ((_ map or) (content!15847 testedP!447) (content!15847 (Cons!74612 lt!2704781 Nil!74612)))))))

(declare-fun e!4696743 () List!74736)

(assert (=> d!2378838 (= lt!2705152 e!4696743)))

(declare-fun c!1462733 () Bool)

(assert (=> d!2378838 (= c!1462733 ((_ is Nil!74612) testedP!447))))

(assert (=> d!2378838 (= (++!18377 testedP!447 (Cons!74612 lt!2704781 Nil!74612)) lt!2705152)))

(declare-fun b!7964711 () Bool)

(declare-fun res!3156278 () Bool)

(assert (=> b!7964711 (=> (not res!3156278) (not e!4696744))))

(assert (=> b!7964711 (= res!3156278 (= (size!43443 lt!2705152) (+ (size!43443 testedP!447) (size!43443 (Cons!74612 lt!2704781 Nil!74612)))))))

(declare-fun b!7964712 () Bool)

(assert (=> b!7964712 (= e!4696744 (or (not (= (Cons!74612 lt!2704781 Nil!74612) Nil!74612)) (= lt!2705152 testedP!447)))))

(declare-fun b!7964710 () Bool)

(assert (=> b!7964710 (= e!4696743 (Cons!74612 (h!81060 testedP!447) (++!18377 (t!390479 testedP!447) (Cons!74612 lt!2704781 Nil!74612))))))

(declare-fun b!7964709 () Bool)

(assert (=> b!7964709 (= e!4696743 (Cons!74612 lt!2704781 Nil!74612))))

(assert (= (and d!2378838 c!1462733) b!7964709))

(assert (= (and d!2378838 (not c!1462733)) b!7964710))

(assert (= (and d!2378838 res!3156277) b!7964711))

(assert (= (and b!7964711 res!3156278) b!7964712))

(declare-fun m!8344770 () Bool)

(assert (=> d!2378838 m!8344770))

(declare-fun m!8344772 () Bool)

(assert (=> d!2378838 m!8344772))

(declare-fun m!8344774 () Bool)

(assert (=> d!2378838 m!8344774))

(declare-fun m!8344776 () Bool)

(assert (=> b!7964711 m!8344776))

(assert (=> b!7964711 m!8344352))

(declare-fun m!8344778 () Bool)

(assert (=> b!7964711 m!8344778))

(declare-fun m!8344780 () Bool)

(assert (=> b!7964710 m!8344780))

(assert (=> b!7964209 d!2378838))

(declare-fun b!7964716 () Bool)

(declare-fun e!4696747 () Bool)

(assert (=> b!7964716 (= e!4696747 (>= (size!43443 input!7927) (size!43443 lt!2704783)))))

(declare-fun b!7964715 () Bool)

(declare-fun e!4696746 () Bool)

(assert (=> b!7964715 (= e!4696746 (isPrefix!6607 (tail!15796 lt!2704783) (tail!15796 input!7927)))))

(declare-fun b!7964714 () Bool)

(declare-fun res!3156279 () Bool)

(assert (=> b!7964714 (=> (not res!3156279) (not e!4696746))))

(assert (=> b!7964714 (= res!3156279 (= (head!16259 lt!2704783) (head!16259 input!7927)))))

(declare-fun b!7964713 () Bool)

(declare-fun e!4696745 () Bool)

(assert (=> b!7964713 (= e!4696745 e!4696746)))

(declare-fun res!3156280 () Bool)

(assert (=> b!7964713 (=> (not res!3156280) (not e!4696746))))

(assert (=> b!7964713 (= res!3156280 (not ((_ is Nil!74612) input!7927)))))

(declare-fun d!2378840 () Bool)

(assert (=> d!2378840 e!4696747))

(declare-fun res!3156281 () Bool)

(assert (=> d!2378840 (=> res!3156281 e!4696747)))

(declare-fun lt!2705153 () Bool)

(assert (=> d!2378840 (= res!3156281 (not lt!2705153))))

(assert (=> d!2378840 (= lt!2705153 e!4696745)))

(declare-fun res!3156282 () Bool)

(assert (=> d!2378840 (=> res!3156282 e!4696745)))

(assert (=> d!2378840 (= res!3156282 ((_ is Nil!74612) lt!2704783))))

(assert (=> d!2378840 (= (isPrefix!6607 lt!2704783 input!7927) lt!2705153)))

(assert (= (and d!2378840 (not res!3156282)) b!7964713))

(assert (= (and b!7964713 res!3156280) b!7964714))

(assert (= (and b!7964714 res!3156279) b!7964715))

(assert (= (and d!2378840 (not res!3156281)) b!7964716))

(assert (=> b!7964716 m!8344344))

(assert (=> b!7964716 m!8344320))

(declare-fun m!8344782 () Bool)

(assert (=> b!7964715 m!8344782))

(assert (=> b!7964715 m!8344614))

(assert (=> b!7964715 m!8344782))

(assert (=> b!7964715 m!8344614))

(declare-fun m!8344784 () Bool)

(assert (=> b!7964715 m!8344784))

(declare-fun m!8344786 () Bool)

(assert (=> b!7964714 m!8344786))

(assert (=> b!7964714 m!8344620))

(assert (=> b!7964209 d!2378840))

(declare-fun bm!738791 () Bool)

(declare-fun call!738796 () Bool)

(assert (=> bm!738791 (= call!738796 (isEmpty!42913 (_1!38641 lt!2704787)))))

(declare-fun b!7964745 () Bool)

(declare-fun e!4696767 () Bool)

(assert (=> b!7964745 (= e!4696767 (matchR!10740 (derivativeStep!6535 baseR!116 (head!16259 (_1!38641 lt!2704787))) (tail!15796 (_1!38641 lt!2704787))))))

(declare-fun b!7964746 () Bool)

(declare-fun res!3156302 () Bool)

(declare-fun e!4696764 () Bool)

(assert (=> b!7964746 (=> (not res!3156302) (not e!4696764))))

(assert (=> b!7964746 (= res!3156302 (not call!738796))))

(declare-fun b!7964748 () Bool)

(declare-fun e!4696766 () Bool)

(declare-fun e!4696762 () Bool)

(assert (=> b!7964748 (= e!4696766 e!4696762)))

(declare-fun res!3156306 () Bool)

(assert (=> b!7964748 (=> res!3156306 e!4696762)))

(assert (=> b!7964748 (= res!3156306 call!738796)))

(declare-fun b!7964749 () Bool)

(declare-fun e!4696768 () Bool)

(assert (=> b!7964749 (= e!4696768 e!4696766)))

(declare-fun res!3156300 () Bool)

(assert (=> b!7964749 (=> (not res!3156300) (not e!4696766))))

(declare-fun lt!2705156 () Bool)

(assert (=> b!7964749 (= res!3156300 (not lt!2705156))))

(declare-fun b!7964750 () Bool)

(declare-fun res!3156301 () Bool)

(assert (=> b!7964750 (=> res!3156301 e!4696768)))

(assert (=> b!7964750 (= res!3156301 (not ((_ is ElementMatch!21507) baseR!116)))))

(declare-fun e!4696765 () Bool)

(assert (=> b!7964750 (= e!4696765 e!4696768)))

(declare-fun b!7964751 () Bool)

(declare-fun e!4696763 () Bool)

(assert (=> b!7964751 (= e!4696763 (= lt!2705156 call!738796))))

(declare-fun b!7964752 () Bool)

(assert (=> b!7964752 (= e!4696765 (not lt!2705156))))

(declare-fun b!7964753 () Bool)

(declare-fun res!3156299 () Bool)

(assert (=> b!7964753 (=> res!3156299 e!4696768)))

(assert (=> b!7964753 (= res!3156299 e!4696764)))

(declare-fun res!3156305 () Bool)

(assert (=> b!7964753 (=> (not res!3156305) (not e!4696764))))

(assert (=> b!7964753 (= res!3156305 lt!2705156)))

(declare-fun b!7964754 () Bool)

(assert (=> b!7964754 (= e!4696763 e!4696765)))

(declare-fun c!1462741 () Bool)

(assert (=> b!7964754 (= c!1462741 ((_ is EmptyLang!21507) baseR!116))))

(declare-fun b!7964755 () Bool)

(assert (=> b!7964755 (= e!4696764 (= (head!16259 (_1!38641 lt!2704787)) (c!1462584 baseR!116)))))

(declare-fun b!7964756 () Bool)

(declare-fun res!3156304 () Bool)

(assert (=> b!7964756 (=> (not res!3156304) (not e!4696764))))

(assert (=> b!7964756 (= res!3156304 (isEmpty!42913 (tail!15796 (_1!38641 lt!2704787))))))

(declare-fun d!2378842 () Bool)

(assert (=> d!2378842 e!4696763))

(declare-fun c!1462740 () Bool)

(assert (=> d!2378842 (= c!1462740 ((_ is EmptyExpr!21507) baseR!116))))

(assert (=> d!2378842 (= lt!2705156 e!4696767)))

(declare-fun c!1462742 () Bool)

(assert (=> d!2378842 (= c!1462742 (isEmpty!42913 (_1!38641 lt!2704787)))))

(assert (=> d!2378842 (validRegex!11811 baseR!116)))

(assert (=> d!2378842 (= (matchR!10740 baseR!116 (_1!38641 lt!2704787)) lt!2705156)))

(declare-fun b!7964747 () Bool)

(assert (=> b!7964747 (= e!4696767 (nullable!9608 baseR!116))))

(declare-fun b!7964757 () Bool)

(declare-fun res!3156303 () Bool)

(assert (=> b!7964757 (=> res!3156303 e!4696762)))

(assert (=> b!7964757 (= res!3156303 (not (isEmpty!42913 (tail!15796 (_1!38641 lt!2704787)))))))

(declare-fun b!7964758 () Bool)

(assert (=> b!7964758 (= e!4696762 (not (= (head!16259 (_1!38641 lt!2704787)) (c!1462584 baseR!116))))))

(assert (= (and d!2378842 c!1462742) b!7964747))

(assert (= (and d!2378842 (not c!1462742)) b!7964745))

(assert (= (and d!2378842 c!1462740) b!7964751))

(assert (= (and d!2378842 (not c!1462740)) b!7964754))

(assert (= (and b!7964754 c!1462741) b!7964752))

(assert (= (and b!7964754 (not c!1462741)) b!7964750))

(assert (= (and b!7964750 (not res!3156301)) b!7964753))

(assert (= (and b!7964753 res!3156305) b!7964746))

(assert (= (and b!7964746 res!3156302) b!7964756))

(assert (= (and b!7964756 res!3156304) b!7964755))

(assert (= (and b!7964753 (not res!3156299)) b!7964749))

(assert (= (and b!7964749 res!3156300) b!7964748))

(assert (= (and b!7964748 (not res!3156306)) b!7964757))

(assert (= (and b!7964757 (not res!3156303)) b!7964758))

(assert (= (or b!7964751 b!7964746 b!7964748) bm!738791))

(assert (=> d!2378842 m!8344328))

(assert (=> d!2378842 m!8344354))

(declare-fun m!8344788 () Bool)

(assert (=> b!7964745 m!8344788))

(assert (=> b!7964745 m!8344788))

(declare-fun m!8344790 () Bool)

(assert (=> b!7964745 m!8344790))

(declare-fun m!8344792 () Bool)

(assert (=> b!7964745 m!8344792))

(assert (=> b!7964745 m!8344790))

(assert (=> b!7964745 m!8344792))

(declare-fun m!8344794 () Bool)

(assert (=> b!7964745 m!8344794))

(declare-fun m!8344796 () Bool)

(assert (=> b!7964747 m!8344796))

(assert (=> b!7964758 m!8344788))

(assert (=> b!7964757 m!8344792))

(assert (=> b!7964757 m!8344792))

(declare-fun m!8344798 () Bool)

(assert (=> b!7964757 m!8344798))

(assert (=> b!7964756 m!8344792))

(assert (=> b!7964756 m!8344792))

(assert (=> b!7964756 m!8344798))

(assert (=> b!7964755 m!8344788))

(assert (=> bm!738791 m!8344328))

(assert (=> b!7964210 d!2378842))

(declare-fun d!2378844 () Bool)

(assert (=> d!2378844 (isPrefix!6607 input!7927 input!7927)))

(declare-fun lt!2705159 () Unit!170118)

(declare-fun choose!60030 (List!74736 List!74736) Unit!170118)

(assert (=> d!2378844 (= lt!2705159 (choose!60030 input!7927 input!7927))))

(assert (=> d!2378844 (= (lemmaIsPrefixRefl!4075 input!7927 input!7927) lt!2705159)))

(declare-fun bs!1969839 () Bool)

(assert (= bs!1969839 d!2378844))

(assert (=> bs!1969839 m!8344310))

(declare-fun m!8344800 () Bool)

(assert (=> bs!1969839 m!8344800))

(assert (=> b!7964226 d!2378844))

(declare-fun b!7964762 () Bool)

(declare-fun e!4696771 () Bool)

(assert (=> b!7964762 (= e!4696771 (>= (size!43443 input!7927) (size!43443 input!7927)))))

(declare-fun b!7964761 () Bool)

(declare-fun e!4696770 () Bool)

(assert (=> b!7964761 (= e!4696770 (isPrefix!6607 (tail!15796 input!7927) (tail!15796 input!7927)))))

(declare-fun b!7964760 () Bool)

(declare-fun res!3156307 () Bool)

(assert (=> b!7964760 (=> (not res!3156307) (not e!4696770))))

(assert (=> b!7964760 (= res!3156307 (= (head!16259 input!7927) (head!16259 input!7927)))))

(declare-fun b!7964759 () Bool)

(declare-fun e!4696769 () Bool)

(assert (=> b!7964759 (= e!4696769 e!4696770)))

(declare-fun res!3156308 () Bool)

(assert (=> b!7964759 (=> (not res!3156308) (not e!4696770))))

(assert (=> b!7964759 (= res!3156308 (not ((_ is Nil!74612) input!7927)))))

(declare-fun d!2378846 () Bool)

(assert (=> d!2378846 e!4696771))

(declare-fun res!3156309 () Bool)

(assert (=> d!2378846 (=> res!3156309 e!4696771)))

(declare-fun lt!2705160 () Bool)

(assert (=> d!2378846 (= res!3156309 (not lt!2705160))))

(assert (=> d!2378846 (= lt!2705160 e!4696769)))

(declare-fun res!3156310 () Bool)

(assert (=> d!2378846 (=> res!3156310 e!4696769)))

(assert (=> d!2378846 (= res!3156310 ((_ is Nil!74612) input!7927))))

(assert (=> d!2378846 (= (isPrefix!6607 input!7927 input!7927) lt!2705160)))

(assert (= (and d!2378846 (not res!3156310)) b!7964759))

(assert (= (and b!7964759 res!3156308) b!7964760))

(assert (= (and b!7964760 res!3156307) b!7964761))

(assert (= (and d!2378846 (not res!3156309)) b!7964762))

(assert (=> b!7964762 m!8344344))

(assert (=> b!7964762 m!8344344))

(assert (=> b!7964761 m!8344614))

(assert (=> b!7964761 m!8344614))

(assert (=> b!7964761 m!8344614))

(assert (=> b!7964761 m!8344614))

(declare-fun m!8344802 () Bool)

(assert (=> b!7964761 m!8344802))

(assert (=> b!7964760 m!8344620))

(assert (=> b!7964760 m!8344620))

(assert (=> b!7964226 d!2378846))

(declare-fun d!2378848 () Bool)

(assert (=> d!2378848 (= input!7927 testedP!447)))

(declare-fun lt!2705163 () Unit!170118)

(declare-fun choose!60031 (List!74736 List!74736 List!74736) Unit!170118)

(assert (=> d!2378848 (= lt!2705163 (choose!60031 input!7927 testedP!447 input!7927))))

(assert (=> d!2378848 (isPrefix!6607 input!7927 input!7927)))

(assert (=> d!2378848 (= (lemmaIsPrefixSameLengthThenSameList!1655 input!7927 testedP!447 input!7927) lt!2705163)))

(declare-fun bs!1969840 () Bool)

(assert (= bs!1969840 d!2378848))

(declare-fun m!8344804 () Bool)

(assert (=> bs!1969840 m!8344804))

(assert (=> bs!1969840 m!8344310))

(assert (=> b!7964226 d!2378848))

(declare-fun b!7964774 () Bool)

(declare-fun e!4696774 () Bool)

(declare-fun tp!2373475 () Bool)

(declare-fun tp!2373473 () Bool)

(assert (=> b!7964774 (= e!4696774 (and tp!2373475 tp!2373473))))

(declare-fun b!7964773 () Bool)

(assert (=> b!7964773 (= e!4696774 tp_is_empty!53557)))

(declare-fun b!7964775 () Bool)

(declare-fun tp!2373474 () Bool)

(assert (=> b!7964775 (= e!4696774 tp!2373474)))

(assert (=> b!7964208 (= tp!2373395 e!4696774)))

(declare-fun b!7964776 () Bool)

(declare-fun tp!2373476 () Bool)

(declare-fun tp!2373477 () Bool)

(assert (=> b!7964776 (= e!4696774 (and tp!2373476 tp!2373477))))

(assert (= (and b!7964208 ((_ is ElementMatch!21507) (reg!21836 baseR!116))) b!7964773))

(assert (= (and b!7964208 ((_ is Concat!30506) (reg!21836 baseR!116))) b!7964774))

(assert (= (and b!7964208 ((_ is Star!21507) (reg!21836 baseR!116))) b!7964775))

(assert (= (and b!7964208 ((_ is Union!21507) (reg!21836 baseR!116))) b!7964776))

(declare-fun b!7964781 () Bool)

(declare-fun e!4696777 () Bool)

(declare-fun tp!2373480 () Bool)

(assert (=> b!7964781 (= e!4696777 (and tp_is_empty!53557 tp!2373480))))

(assert (=> b!7964224 (= tp!2373396 e!4696777)))

(assert (= (and b!7964224 ((_ is Cons!74612) (t!390479 testedP!447))) b!7964781))

(declare-fun b!7964783 () Bool)

(declare-fun e!4696778 () Bool)

(declare-fun tp!2373483 () Bool)

(declare-fun tp!2373481 () Bool)

(assert (=> b!7964783 (= e!4696778 (and tp!2373483 tp!2373481))))

(declare-fun b!7964782 () Bool)

(assert (=> b!7964782 (= e!4696778 tp_is_empty!53557)))

(declare-fun b!7964784 () Bool)

(declare-fun tp!2373482 () Bool)

(assert (=> b!7964784 (= e!4696778 tp!2373482)))

(assert (=> b!7964217 (= tp!2373388 e!4696778)))

(declare-fun b!7964785 () Bool)

(declare-fun tp!2373484 () Bool)

(declare-fun tp!2373485 () Bool)

(assert (=> b!7964785 (= e!4696778 (and tp!2373484 tp!2373485))))

(assert (= (and b!7964217 ((_ is ElementMatch!21507) (reg!21836 r!24602))) b!7964782))

(assert (= (and b!7964217 ((_ is Concat!30506) (reg!21836 r!24602))) b!7964783))

(assert (= (and b!7964217 ((_ is Star!21507) (reg!21836 r!24602))) b!7964784))

(assert (= (and b!7964217 ((_ is Union!21507) (reg!21836 r!24602))) b!7964785))

(declare-fun b!7964787 () Bool)

(declare-fun e!4696779 () Bool)

(declare-fun tp!2373488 () Bool)

(declare-fun tp!2373486 () Bool)

(assert (=> b!7964787 (= e!4696779 (and tp!2373488 tp!2373486))))

(declare-fun b!7964786 () Bool)

(assert (=> b!7964786 (= e!4696779 tp_is_empty!53557)))

(declare-fun b!7964788 () Bool)

(declare-fun tp!2373487 () Bool)

(assert (=> b!7964788 (= e!4696779 tp!2373487)))

(assert (=> b!7964212 (= tp!2373389 e!4696779)))

(declare-fun b!7964789 () Bool)

(declare-fun tp!2373489 () Bool)

(declare-fun tp!2373490 () Bool)

(assert (=> b!7964789 (= e!4696779 (and tp!2373489 tp!2373490))))

(assert (= (and b!7964212 ((_ is ElementMatch!21507) (regOne!43526 r!24602))) b!7964786))

(assert (= (and b!7964212 ((_ is Concat!30506) (regOne!43526 r!24602))) b!7964787))

(assert (= (and b!7964212 ((_ is Star!21507) (regOne!43526 r!24602))) b!7964788))

(assert (= (and b!7964212 ((_ is Union!21507) (regOne!43526 r!24602))) b!7964789))

(declare-fun b!7964791 () Bool)

(declare-fun e!4696780 () Bool)

(declare-fun tp!2373493 () Bool)

(declare-fun tp!2373491 () Bool)

(assert (=> b!7964791 (= e!4696780 (and tp!2373493 tp!2373491))))

(declare-fun b!7964790 () Bool)

(assert (=> b!7964790 (= e!4696780 tp_is_empty!53557)))

(declare-fun b!7964792 () Bool)

(declare-fun tp!2373492 () Bool)

(assert (=> b!7964792 (= e!4696780 tp!2373492)))

(assert (=> b!7964212 (= tp!2373393 e!4696780)))

(declare-fun b!7964793 () Bool)

(declare-fun tp!2373494 () Bool)

(declare-fun tp!2373495 () Bool)

(assert (=> b!7964793 (= e!4696780 (and tp!2373494 tp!2373495))))

(assert (= (and b!7964212 ((_ is ElementMatch!21507) (regTwo!43526 r!24602))) b!7964790))

(assert (= (and b!7964212 ((_ is Concat!30506) (regTwo!43526 r!24602))) b!7964791))

(assert (= (and b!7964212 ((_ is Star!21507) (regTwo!43526 r!24602))) b!7964792))

(assert (= (and b!7964212 ((_ is Union!21507) (regTwo!43526 r!24602))) b!7964793))

(declare-fun b!7964794 () Bool)

(declare-fun e!4696781 () Bool)

(declare-fun tp!2373496 () Bool)

(assert (=> b!7964794 (= e!4696781 (and tp_is_empty!53557 tp!2373496))))

(assert (=> b!7964228 (= tp!2373398 e!4696781)))

(assert (= (and b!7964228 ((_ is Cons!74612) (t!390479 input!7927))) b!7964794))

(declare-fun b!7964796 () Bool)

(declare-fun e!4696782 () Bool)

(declare-fun tp!2373499 () Bool)

(declare-fun tp!2373497 () Bool)

(assert (=> b!7964796 (= e!4696782 (and tp!2373499 tp!2373497))))

(declare-fun b!7964795 () Bool)

(assert (=> b!7964795 (= e!4696782 tp_is_empty!53557)))

(declare-fun b!7964797 () Bool)

(declare-fun tp!2373498 () Bool)

(assert (=> b!7964797 (= e!4696782 tp!2373498)))

(assert (=> b!7964223 (= tp!2373391 e!4696782)))

(declare-fun b!7964798 () Bool)

(declare-fun tp!2373500 () Bool)

(declare-fun tp!2373501 () Bool)

(assert (=> b!7964798 (= e!4696782 (and tp!2373500 tp!2373501))))

(assert (= (and b!7964223 ((_ is ElementMatch!21507) (regOne!43527 baseR!116))) b!7964795))

(assert (= (and b!7964223 ((_ is Concat!30506) (regOne!43527 baseR!116))) b!7964796))

(assert (= (and b!7964223 ((_ is Star!21507) (regOne!43527 baseR!116))) b!7964797))

(assert (= (and b!7964223 ((_ is Union!21507) (regOne!43527 baseR!116))) b!7964798))

(declare-fun b!7964800 () Bool)

(declare-fun e!4696783 () Bool)

(declare-fun tp!2373504 () Bool)

(declare-fun tp!2373502 () Bool)

(assert (=> b!7964800 (= e!4696783 (and tp!2373504 tp!2373502))))

(declare-fun b!7964799 () Bool)

(assert (=> b!7964799 (= e!4696783 tp_is_empty!53557)))

(declare-fun b!7964801 () Bool)

(declare-fun tp!2373503 () Bool)

(assert (=> b!7964801 (= e!4696783 tp!2373503)))

(assert (=> b!7964223 (= tp!2373394 e!4696783)))

(declare-fun b!7964802 () Bool)

(declare-fun tp!2373505 () Bool)

(declare-fun tp!2373506 () Bool)

(assert (=> b!7964802 (= e!4696783 (and tp!2373505 tp!2373506))))

(assert (= (and b!7964223 ((_ is ElementMatch!21507) (regTwo!43527 baseR!116))) b!7964799))

(assert (= (and b!7964223 ((_ is Concat!30506) (regTwo!43527 baseR!116))) b!7964800))

(assert (= (and b!7964223 ((_ is Star!21507) (regTwo!43527 baseR!116))) b!7964801))

(assert (= (and b!7964223 ((_ is Union!21507) (regTwo!43527 baseR!116))) b!7964802))

(declare-fun b!7964804 () Bool)

(declare-fun e!4696784 () Bool)

(declare-fun tp!2373509 () Bool)

(declare-fun tp!2373507 () Bool)

(assert (=> b!7964804 (= e!4696784 (and tp!2373509 tp!2373507))))

(declare-fun b!7964803 () Bool)

(assert (=> b!7964803 (= e!4696784 tp_is_empty!53557)))

(declare-fun b!7964805 () Bool)

(declare-fun tp!2373508 () Bool)

(assert (=> b!7964805 (= e!4696784 tp!2373508)))

(assert (=> b!7964218 (= tp!2373387 e!4696784)))

(declare-fun b!7964806 () Bool)

(declare-fun tp!2373510 () Bool)

(declare-fun tp!2373511 () Bool)

(assert (=> b!7964806 (= e!4696784 (and tp!2373510 tp!2373511))))

(assert (= (and b!7964218 ((_ is ElementMatch!21507) (regOne!43526 baseR!116))) b!7964803))

(assert (= (and b!7964218 ((_ is Concat!30506) (regOne!43526 baseR!116))) b!7964804))

(assert (= (and b!7964218 ((_ is Star!21507) (regOne!43526 baseR!116))) b!7964805))

(assert (= (and b!7964218 ((_ is Union!21507) (regOne!43526 baseR!116))) b!7964806))

(declare-fun b!7964808 () Bool)

(declare-fun e!4696785 () Bool)

(declare-fun tp!2373514 () Bool)

(declare-fun tp!2373512 () Bool)

(assert (=> b!7964808 (= e!4696785 (and tp!2373514 tp!2373512))))

(declare-fun b!7964807 () Bool)

(assert (=> b!7964807 (= e!4696785 tp_is_empty!53557)))

(declare-fun b!7964809 () Bool)

(declare-fun tp!2373513 () Bool)

(assert (=> b!7964809 (= e!4696785 tp!2373513)))

(assert (=> b!7964218 (= tp!2373392 e!4696785)))

(declare-fun b!7964810 () Bool)

(declare-fun tp!2373515 () Bool)

(declare-fun tp!2373516 () Bool)

(assert (=> b!7964810 (= e!4696785 (and tp!2373515 tp!2373516))))

(assert (= (and b!7964218 ((_ is ElementMatch!21507) (regTwo!43526 baseR!116))) b!7964807))

(assert (= (and b!7964218 ((_ is Concat!30506) (regTwo!43526 baseR!116))) b!7964808))

(assert (= (and b!7964218 ((_ is Star!21507) (regTwo!43526 baseR!116))) b!7964809))

(assert (= (and b!7964218 ((_ is Union!21507) (regTwo!43526 baseR!116))) b!7964810))

(declare-fun b!7964812 () Bool)

(declare-fun e!4696786 () Bool)

(declare-fun tp!2373519 () Bool)

(declare-fun tp!2373517 () Bool)

(assert (=> b!7964812 (= e!4696786 (and tp!2373519 tp!2373517))))

(declare-fun b!7964811 () Bool)

(assert (=> b!7964811 (= e!4696786 tp_is_empty!53557)))

(declare-fun b!7964813 () Bool)

(declare-fun tp!2373518 () Bool)

(assert (=> b!7964813 (= e!4696786 tp!2373518)))

(assert (=> b!7964225 (= tp!2373390 e!4696786)))

(declare-fun b!7964814 () Bool)

(declare-fun tp!2373520 () Bool)

(declare-fun tp!2373521 () Bool)

(assert (=> b!7964814 (= e!4696786 (and tp!2373520 tp!2373521))))

(assert (= (and b!7964225 ((_ is ElementMatch!21507) (regOne!43527 r!24602))) b!7964811))

(assert (= (and b!7964225 ((_ is Concat!30506) (regOne!43527 r!24602))) b!7964812))

(assert (= (and b!7964225 ((_ is Star!21507) (regOne!43527 r!24602))) b!7964813))

(assert (= (and b!7964225 ((_ is Union!21507) (regOne!43527 r!24602))) b!7964814))

(declare-fun b!7964816 () Bool)

(declare-fun e!4696787 () Bool)

(declare-fun tp!2373524 () Bool)

(declare-fun tp!2373522 () Bool)

(assert (=> b!7964816 (= e!4696787 (and tp!2373524 tp!2373522))))

(declare-fun b!7964815 () Bool)

(assert (=> b!7964815 (= e!4696787 tp_is_empty!53557)))

(declare-fun b!7964817 () Bool)

(declare-fun tp!2373523 () Bool)

(assert (=> b!7964817 (= e!4696787 tp!2373523)))

(assert (=> b!7964225 (= tp!2373397 e!4696787)))

(declare-fun b!7964818 () Bool)

(declare-fun tp!2373525 () Bool)

(declare-fun tp!2373526 () Bool)

(assert (=> b!7964818 (= e!4696787 (and tp!2373525 tp!2373526))))

(assert (= (and b!7964225 ((_ is ElementMatch!21507) (regTwo!43527 r!24602))) b!7964815))

(assert (= (and b!7964225 ((_ is Concat!30506) (regTwo!43527 r!24602))) b!7964816))

(assert (= (and b!7964225 ((_ is Star!21507) (regTwo!43527 r!24602))) b!7964817))

(assert (= (and b!7964225 ((_ is Union!21507) (regTwo!43527 r!24602))) b!7964818))

(check-sat (not bm!738774) (not bm!738787) (not bm!738775) (not bm!738784) (not b!7964573) (not b!7964808) (not bm!738778) (not b!7964667) (not bm!738719) (not b!7964677) (not b!7964787) (not b!7964814) (not b!7964503) (not b!7964716) (not b!7964454) (not b!7964792) (not d!2378800) (not b!7964711) (not b!7964372) (not b!7964781) (not b!7964710) (not b!7964546) (not b!7964789) (not b!7964783) (not d!2378844) (not b!7964668) (not d!2378838) (not b!7964775) (not bm!738772) (not b!7964816) (not bm!738779) (not b!7964714) (not d!2378818) (not b!7964793) (not b!7964756) (not bm!738725) (not b!7964682) (not d!2378834) (not b!7964547) (not b!7964548) (not b!7964686) (not b!7964762) (not d!2378762) (not d!2378814) (not b!7964747) (not b!7964800) (not bm!738788) (not b!7964658) (not bm!738747) (not b!7964798) (not bm!738776) (not b!7964806) (not b!7964368) (not d!2378732) (not b!7964784) (not b!7964745) (not b!7964672) (not bm!738720) (not bm!738721) (not d!2378796) (not b!7964679) (not b!7964804) (not b!7964683) (not d!2378832) (not b!7964774) (not b!7964758) (not b!7964812) (not b!7964757) (not b!7964813) (not b!7964371) (not bm!738724) (not bm!738785) (not b!7964376) (not b!7964796) (not b!7964715) (not b!7964809) (not bm!738786) (not b!7964817) (not d!2378824) (not b!7964785) (not bm!738791) (not bm!738777) (not d!2378810) (not b!7964776) (not bm!738764) (not b!7964700) (not bm!738770) (not bm!738718) (not b!7964582) (not bm!738780) (not bm!738722) (not b!7964810) (not d!2378828) (not b!7964801) (not bm!738783) (not b!7964692) (not bm!738723) (not d!2378848) (not b!7964755) (not d!2378842) (not bm!738781) (not b!7964818) (not b!7964554) (not b!7964805) (not b!7964794) (not bm!738782) (not d!2378816) (not b!7964802) (not b!7964760) (not b!7964788) (not d!2378830) (not bm!738746) tp_is_empty!53557 (not bm!738766) (not b!7964761) (not b!7964664) (not b!7964695) (not bm!738773) (not b!7964791) (not b!7964696) (not b!7964797))
(check-sat)
