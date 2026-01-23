; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750764 () Bool)

(assert start!750764)

(declare-fun b!7959370 () Bool)

(declare-fun e!4694066 () Bool)

(declare-fun tp!2371298 () Bool)

(declare-fun tp!2371295 () Bool)

(assert (=> b!7959370 (= e!4694066 (and tp!2371298 tp!2371295))))

(declare-fun b!7959371 () Bool)

(declare-fun tp!2371299 () Bool)

(assert (=> b!7959371 (= e!4694066 tp!2371299)))

(declare-fun b!7959372 () Bool)

(declare-fun tp_is_empty!53525 () Bool)

(assert (=> b!7959372 (= e!4694066 tp_is_empty!53525)))

(declare-fun b!7959373 () Bool)

(declare-fun res!3154820 () Bool)

(declare-fun e!4694060 () Bool)

(assert (=> b!7959373 (=> (not res!3154820) (not e!4694060))))

(declare-datatypes ((C!43320 0))(
  ( (C!43321 (val!32208 Int)) )
))
(declare-datatypes ((List!74720 0))(
  ( (Nil!74596) (Cons!74596 (h!81044 C!43320) (t!390463 List!74720)) )
))
(declare-fun testedP!447 () List!74720)

(declare-fun input!7927 () List!74720)

(declare-fun isPrefix!6591 (List!74720 List!74720) Bool)

(assert (=> b!7959373 (= res!3154820 (isPrefix!6591 testedP!447 input!7927))))

(declare-fun b!7959374 () Bool)

(declare-datatypes ((Unit!169982 0))(
  ( (Unit!169983) )
))
(declare-fun e!4694058 () Unit!169982)

(declare-fun Unit!169984 () Unit!169982)

(assert (=> b!7959374 (= e!4694058 Unit!169984)))

(declare-fun b!7959375 () Bool)

(declare-fun e!4694057 () Bool)

(declare-fun tp!2371294 () Bool)

(declare-fun tp!2371292 () Bool)

(assert (=> b!7959375 (= e!4694057 (and tp!2371294 tp!2371292))))

(declare-fun b!7959376 () Bool)

(declare-fun tp!2371297 () Bool)

(assert (=> b!7959376 (= e!4694057 tp!2371297)))

(declare-fun res!3154824 () Bool)

(assert (=> start!750764 (=> (not res!3154824) (not e!4694060))))

(declare-datatypes ((Regex!21491 0))(
  ( (ElementMatch!21491 (c!1461670 C!43320)) (Concat!30490 (regOne!43494 Regex!21491) (regTwo!43494 Regex!21491)) (EmptyExpr!21491) (Star!21491 (reg!21820 Regex!21491)) (EmptyLang!21491) (Union!21491 (regOne!43495 Regex!21491) (regTwo!43495 Regex!21491)) )
))
(declare-fun baseR!116 () Regex!21491)

(declare-fun validRegex!11795 (Regex!21491) Bool)

(assert (=> start!750764 (= res!3154824 (validRegex!11795 baseR!116))))

(assert (=> start!750764 e!4694060))

(assert (=> start!750764 e!4694057))

(declare-fun e!4694062 () Bool)

(assert (=> start!750764 e!4694062))

(declare-fun e!4694064 () Bool)

(assert (=> start!750764 e!4694064))

(assert (=> start!750764 e!4694066))

(declare-fun b!7959377 () Bool)

(declare-fun e!4694059 () Bool)

(declare-fun e!4694065 () Bool)

(assert (=> b!7959377 (= e!4694059 e!4694065)))

(declare-fun res!3154821 () Bool)

(assert (=> b!7959377 (=> res!3154821 e!4694065)))

(declare-fun r!24602 () Regex!21491)

(assert (=> b!7959377 (= res!3154821 (not (validRegex!11795 r!24602)))))

(declare-fun lt!2702555 () Regex!21491)

(declare-fun matchR!10732 (Regex!21491 List!74720) Bool)

(assert (=> b!7959377 (= (matchR!10732 baseR!116 testedP!447) (matchR!10732 lt!2702555 Nil!74596))))

(declare-fun lt!2702554 () Unit!169982)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!300 (Regex!21491 List!74720) Unit!169982)

(assert (=> b!7959377 (= lt!2702554 (lemmaMatchRIsSameAsWholeDerivativeAndNil!300 baseR!116 testedP!447))))

(declare-fun b!7959378 () Bool)

(declare-fun Unit!169985 () Unit!169982)

(assert (=> b!7959378 (= e!4694058 Unit!169985)))

(declare-fun lt!2702552 () Unit!169982)

(declare-fun lemmaIsPrefixRefl!4059 (List!74720 List!74720) Unit!169982)

(assert (=> b!7959378 (= lt!2702552 (lemmaIsPrefixRefl!4059 input!7927 input!7927))))

(assert (=> b!7959378 (isPrefix!6591 input!7927 input!7927)))

(declare-fun lt!2702561 () Unit!169982)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1639 (List!74720 List!74720 List!74720) Unit!169982)

(assert (=> b!7959378 (= lt!2702561 (lemmaIsPrefixSameLengthThenSameList!1639 input!7927 testedP!447 input!7927))))

(assert (=> b!7959378 false))

(declare-fun b!7959379 () Bool)

(declare-fun e!4694061 () Bool)

(assert (=> b!7959379 (= e!4694061 e!4694059)))

(declare-fun res!3154826 () Bool)

(assert (=> b!7959379 (=> res!3154826 e!4694059)))

(declare-fun nullable!9592 (Regex!21491) Bool)

(assert (=> b!7959379 (= res!3154826 (not (nullable!9592 r!24602)))))

(declare-fun lt!2702560 () List!74720)

(assert (=> b!7959379 (isPrefix!6591 lt!2702560 input!7927)))

(declare-fun lt!2702558 () Unit!169982)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1318 (List!74720 List!74720) Unit!169982)

(assert (=> b!7959379 (= lt!2702558 (lemmaAddHeadSuffixToPrefixStillPrefix!1318 testedP!447 input!7927))))

(declare-fun lt!2702551 () C!43320)

(declare-fun ++!18361 (List!74720 List!74720) List!74720)

(assert (=> b!7959379 (= lt!2702560 (++!18361 testedP!447 (Cons!74596 lt!2702551 Nil!74596)))))

(declare-fun lt!2702559 () List!74720)

(declare-fun head!16243 (List!74720) C!43320)

(assert (=> b!7959379 (= lt!2702551 (head!16243 lt!2702559))))

(declare-fun b!7959380 () Bool)

(declare-fun e!4694063 () Bool)

(assert (=> b!7959380 (= e!4694060 e!4694063)))

(declare-fun res!3154822 () Bool)

(assert (=> b!7959380 (=> (not res!3154822) (not e!4694063))))

(assert (=> b!7959380 (= res!3154822 (= lt!2702555 r!24602))))

(declare-fun derivative!677 (Regex!21491 List!74720) Regex!21491)

(assert (=> b!7959380 (= lt!2702555 (derivative!677 baseR!116 testedP!447))))

(declare-fun b!7959381 () Bool)

(declare-fun tp!2371291 () Bool)

(assert (=> b!7959381 (= e!4694062 (and tp_is_empty!53525 tp!2371291))))

(declare-fun b!7959382 () Bool)

(declare-fun e!4694067 () Bool)

(assert (=> b!7959382 (= e!4694063 e!4694067)))

(declare-fun res!3154819 () Bool)

(assert (=> b!7959382 (=> (not res!3154819) (not e!4694067))))

(declare-fun lt!2702550 () Int)

(declare-fun lt!2702553 () Int)

(declare-fun isEmpty!42897 (List!74720) Bool)

(declare-datatypes ((tuple2!70644 0))(
  ( (tuple2!70645 (_1!38625 List!74720) (_2!38625 List!74720)) )
))
(declare-fun findLongestMatchInner!2272 (Regex!21491 List!74720 Int List!74720 List!74720 Int) tuple2!70644)

(assert (=> b!7959382 (= res!3154819 (not (isEmpty!42897 (_1!38625 (findLongestMatchInner!2272 r!24602 testedP!447 lt!2702553 lt!2702559 input!7927 lt!2702550)))))))

(declare-fun size!43427 (List!74720) Int)

(assert (=> b!7959382 (= lt!2702550 (size!43427 input!7927))))

(declare-fun getSuffix!3794 (List!74720 List!74720) List!74720)

(assert (=> b!7959382 (= lt!2702559 (getSuffix!3794 input!7927 testedP!447))))

(assert (=> b!7959382 (= lt!2702553 (size!43427 testedP!447))))

(declare-fun b!7959383 () Bool)

(assert (=> b!7959383 (= e!4694057 tp_is_empty!53525)))

(declare-fun b!7959384 () Bool)

(declare-fun res!3154823 () Bool)

(assert (=> b!7959384 (=> res!3154823 e!4694059)))

(declare-fun derivativeStep!6519 (Regex!21491 C!43320) Regex!21491)

(declare-fun tail!15780 (List!74720) List!74720)

(assert (=> b!7959384 (= res!3154823 (not (isEmpty!42897 (_1!38625 (findLongestMatchInner!2272 (derivativeStep!6519 r!24602 lt!2702551) lt!2702560 (+ 1 lt!2702553) (tail!15780 lt!2702559) input!7927 lt!2702550)))))))

(declare-fun b!7959385 () Bool)

(declare-fun res!3154818 () Bool)

(assert (=> b!7959385 (=> (not res!3154818) (not e!4694067))))

(assert (=> b!7959385 (= res!3154818 (not (= testedP!447 input!7927)))))

(declare-fun b!7959386 () Bool)

(declare-fun tp!2371293 () Bool)

(declare-fun tp!2371302 () Bool)

(assert (=> b!7959386 (= e!4694057 (and tp!2371293 tp!2371302))))

(declare-fun b!7959387 () Bool)

(assert (=> b!7959387 (= e!4694067 (not e!4694061))))

(declare-fun res!3154825 () Bool)

(assert (=> b!7959387 (=> res!3154825 e!4694061)))

(assert (=> b!7959387 (= res!3154825 (>= lt!2702553 lt!2702550))))

(declare-fun lt!2702556 () Unit!169982)

(assert (=> b!7959387 (= lt!2702556 e!4694058)))

(declare-fun c!1461669 () Bool)

(assert (=> b!7959387 (= c!1461669 (= lt!2702553 lt!2702550))))

(assert (=> b!7959387 (<= lt!2702553 lt!2702550)))

(declare-fun lt!2702557 () Unit!169982)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1108 (List!74720 List!74720) Unit!169982)

(assert (=> b!7959387 (= lt!2702557 (lemmaIsPrefixThenSmallerEqSize!1108 testedP!447 input!7927))))

(declare-fun b!7959388 () Bool)

(declare-fun tp!2371301 () Bool)

(assert (=> b!7959388 (= e!4694064 (and tp_is_empty!53525 tp!2371301))))

(declare-fun b!7959389 () Bool)

(assert (=> b!7959389 (= e!4694065 (= (++!18361 testedP!447 lt!2702559) input!7927))))

(declare-fun b!7959390 () Bool)

(declare-fun tp!2371296 () Bool)

(declare-fun tp!2371300 () Bool)

(assert (=> b!7959390 (= e!4694066 (and tp!2371296 tp!2371300))))

(assert (= (and start!750764 res!3154824) b!7959373))

(assert (= (and b!7959373 res!3154820) b!7959380))

(assert (= (and b!7959380 res!3154822) b!7959382))

(assert (= (and b!7959382 res!3154819) b!7959385))

(assert (= (and b!7959385 res!3154818) b!7959387))

(assert (= (and b!7959387 c!1461669) b!7959378))

(assert (= (and b!7959387 (not c!1461669)) b!7959374))

(assert (= (and b!7959387 (not res!3154825)) b!7959379))

(assert (= (and b!7959379 (not res!3154826)) b!7959384))

(assert (= (and b!7959384 (not res!3154823)) b!7959377))

(assert (= (and b!7959377 (not res!3154821)) b!7959389))

(get-info :version)

(assert (= (and start!750764 ((_ is ElementMatch!21491) baseR!116)) b!7959383))

(assert (= (and start!750764 ((_ is Concat!30490) baseR!116)) b!7959386))

(assert (= (and start!750764 ((_ is Star!21491) baseR!116)) b!7959376))

(assert (= (and start!750764 ((_ is Union!21491) baseR!116)) b!7959375))

(assert (= (and start!750764 ((_ is Cons!74596) testedP!447)) b!7959381))

(assert (= (and start!750764 ((_ is Cons!74596) input!7927)) b!7959388))

(assert (= (and start!750764 ((_ is ElementMatch!21491) r!24602)) b!7959372))

(assert (= (and start!750764 ((_ is Concat!30490) r!24602)) b!7959390))

(assert (= (and start!750764 ((_ is Star!21491) r!24602)) b!7959371))

(assert (= (and start!750764 ((_ is Union!21491) r!24602)) b!7959370))

(declare-fun m!8340142 () Bool)

(assert (=> b!7959378 m!8340142))

(declare-fun m!8340144 () Bool)

(assert (=> b!7959378 m!8340144))

(declare-fun m!8340146 () Bool)

(assert (=> b!7959378 m!8340146))

(declare-fun m!8340148 () Bool)

(assert (=> b!7959380 m!8340148))

(declare-fun m!8340150 () Bool)

(assert (=> b!7959384 m!8340150))

(declare-fun m!8340152 () Bool)

(assert (=> b!7959384 m!8340152))

(assert (=> b!7959384 m!8340150))

(assert (=> b!7959384 m!8340152))

(declare-fun m!8340154 () Bool)

(assert (=> b!7959384 m!8340154))

(declare-fun m!8340156 () Bool)

(assert (=> b!7959384 m!8340156))

(declare-fun m!8340158 () Bool)

(assert (=> b!7959389 m!8340158))

(declare-fun m!8340160 () Bool)

(assert (=> b!7959382 m!8340160))

(declare-fun m!8340162 () Bool)

(assert (=> b!7959382 m!8340162))

(declare-fun m!8340164 () Bool)

(assert (=> b!7959382 m!8340164))

(declare-fun m!8340166 () Bool)

(assert (=> b!7959382 m!8340166))

(declare-fun m!8340168 () Bool)

(assert (=> b!7959382 m!8340168))

(declare-fun m!8340170 () Bool)

(assert (=> b!7959387 m!8340170))

(declare-fun m!8340172 () Bool)

(assert (=> b!7959373 m!8340172))

(declare-fun m!8340174 () Bool)

(assert (=> b!7959379 m!8340174))

(declare-fun m!8340176 () Bool)

(assert (=> b!7959379 m!8340176))

(declare-fun m!8340178 () Bool)

(assert (=> b!7959379 m!8340178))

(declare-fun m!8340180 () Bool)

(assert (=> b!7959379 m!8340180))

(declare-fun m!8340182 () Bool)

(assert (=> b!7959379 m!8340182))

(declare-fun m!8340184 () Bool)

(assert (=> b!7959377 m!8340184))

(declare-fun m!8340186 () Bool)

(assert (=> b!7959377 m!8340186))

(declare-fun m!8340188 () Bool)

(assert (=> b!7959377 m!8340188))

(declare-fun m!8340190 () Bool)

(assert (=> b!7959377 m!8340190))

(declare-fun m!8340192 () Bool)

(assert (=> start!750764 m!8340192))

(check-sat (not b!7959377) (not b!7959384) (not b!7959388) (not b!7959387) (not b!7959390) (not b!7959375) (not b!7959382) (not b!7959373) tp_is_empty!53525 (not b!7959371) (not b!7959378) (not b!7959389) (not b!7959381) (not b!7959376) (not b!7959379) (not b!7959380) (not b!7959370) (not b!7959386) (not start!750764))
(check-sat)
(get-model)

(declare-fun d!2377690 () Bool)

(declare-fun lt!2702564 () Regex!21491)

(assert (=> d!2377690 (validRegex!11795 lt!2702564)))

(declare-fun e!4694070 () Regex!21491)

(assert (=> d!2377690 (= lt!2702564 e!4694070)))

(declare-fun c!1461673 () Bool)

(assert (=> d!2377690 (= c!1461673 ((_ is Cons!74596) testedP!447))))

(assert (=> d!2377690 (validRegex!11795 baseR!116)))

(assert (=> d!2377690 (= (derivative!677 baseR!116 testedP!447) lt!2702564)))

(declare-fun b!7959395 () Bool)

(assert (=> b!7959395 (= e!4694070 (derivative!677 (derivativeStep!6519 baseR!116 (h!81044 testedP!447)) (t!390463 testedP!447)))))

(declare-fun b!7959396 () Bool)

(assert (=> b!7959396 (= e!4694070 baseR!116)))

(assert (= (and d!2377690 c!1461673) b!7959395))

(assert (= (and d!2377690 (not c!1461673)) b!7959396))

(declare-fun m!8340194 () Bool)

(assert (=> d!2377690 m!8340194))

(assert (=> d!2377690 m!8340192))

(declare-fun m!8340196 () Bool)

(assert (=> b!7959395 m!8340196))

(assert (=> b!7959395 m!8340196))

(declare-fun m!8340198 () Bool)

(assert (=> b!7959395 m!8340198))

(assert (=> b!7959380 d!2377690))

(declare-fun d!2377692 () Bool)

(assert (=> d!2377692 (<= (size!43427 testedP!447) (size!43427 input!7927))))

(declare-fun lt!2702567 () Unit!169982)

(declare-fun choose!59971 (List!74720 List!74720) Unit!169982)

(assert (=> d!2377692 (= lt!2702567 (choose!59971 testedP!447 input!7927))))

(assert (=> d!2377692 (isPrefix!6591 testedP!447 input!7927)))

(assert (=> d!2377692 (= (lemmaIsPrefixThenSmallerEqSize!1108 testedP!447 input!7927) lt!2702567)))

(declare-fun bs!1969697 () Bool)

(assert (= bs!1969697 d!2377692))

(assert (=> bs!1969697 m!8340160))

(assert (=> bs!1969697 m!8340162))

(declare-fun m!8340200 () Bool)

(assert (=> bs!1969697 m!8340200))

(assert (=> bs!1969697 m!8340172))

(assert (=> b!7959387 d!2377692))

(declare-fun bm!737966 () Bool)

(declare-fun call!737971 () Bool)

(declare-fun c!1461678 () Bool)

(assert (=> bm!737966 (= call!737971 (validRegex!11795 (ite c!1461678 (regTwo!43495 baseR!116) (regTwo!43494 baseR!116))))))

(declare-fun bm!737967 () Bool)

(declare-fun call!737972 () Bool)

(declare-fun c!1461679 () Bool)

(assert (=> bm!737967 (= call!737972 (validRegex!11795 (ite c!1461679 (reg!21820 baseR!116) (ite c!1461678 (regOne!43495 baseR!116) (regOne!43494 baseR!116)))))))

(declare-fun b!7959415 () Bool)

(declare-fun res!3154838 () Bool)

(declare-fun e!4694090 () Bool)

(assert (=> b!7959415 (=> (not res!3154838) (not e!4694090))))

(declare-fun call!737973 () Bool)

(assert (=> b!7959415 (= res!3154838 call!737973)))

(declare-fun e!4694088 () Bool)

(assert (=> b!7959415 (= e!4694088 e!4694090)))

(declare-fun b!7959416 () Bool)

(declare-fun e!4694086 () Bool)

(declare-fun e!4694087 () Bool)

(assert (=> b!7959416 (= e!4694086 e!4694087)))

(declare-fun res!3154839 () Bool)

(assert (=> b!7959416 (=> (not res!3154839) (not e!4694087))))

(assert (=> b!7959416 (= res!3154839 call!737973)))

(declare-fun b!7959417 () Bool)

(declare-fun e!4694085 () Bool)

(declare-fun e!4694091 () Bool)

(assert (=> b!7959417 (= e!4694085 e!4694091)))

(assert (=> b!7959417 (= c!1461679 ((_ is Star!21491) baseR!116))))

(declare-fun d!2377694 () Bool)

(declare-fun res!3154837 () Bool)

(assert (=> d!2377694 (=> res!3154837 e!4694085)))

(assert (=> d!2377694 (= res!3154837 ((_ is ElementMatch!21491) baseR!116))))

(assert (=> d!2377694 (= (validRegex!11795 baseR!116) e!4694085)))

(declare-fun bm!737968 () Bool)

(assert (=> bm!737968 (= call!737973 call!737972)))

(declare-fun b!7959418 () Bool)

(assert (=> b!7959418 (= e!4694091 e!4694088)))

(assert (=> b!7959418 (= c!1461678 ((_ is Union!21491) baseR!116))))

(declare-fun b!7959419 () Bool)

(assert (=> b!7959419 (= e!4694090 call!737971)))

(declare-fun b!7959420 () Bool)

(declare-fun e!4694089 () Bool)

(assert (=> b!7959420 (= e!4694089 call!737972)))

(declare-fun b!7959421 () Bool)

(assert (=> b!7959421 (= e!4694087 call!737971)))

(declare-fun b!7959422 () Bool)

(declare-fun res!3154841 () Bool)

(assert (=> b!7959422 (=> res!3154841 e!4694086)))

(assert (=> b!7959422 (= res!3154841 (not ((_ is Concat!30490) baseR!116)))))

(assert (=> b!7959422 (= e!4694088 e!4694086)))

(declare-fun b!7959423 () Bool)

(assert (=> b!7959423 (= e!4694091 e!4694089)))

(declare-fun res!3154840 () Bool)

(assert (=> b!7959423 (= res!3154840 (not (nullable!9592 (reg!21820 baseR!116))))))

(assert (=> b!7959423 (=> (not res!3154840) (not e!4694089))))

(assert (= (and d!2377694 (not res!3154837)) b!7959417))

(assert (= (and b!7959417 c!1461679) b!7959423))

(assert (= (and b!7959417 (not c!1461679)) b!7959418))

(assert (= (and b!7959423 res!3154840) b!7959420))

(assert (= (and b!7959418 c!1461678) b!7959415))

(assert (= (and b!7959418 (not c!1461678)) b!7959422))

(assert (= (and b!7959415 res!3154838) b!7959419))

(assert (= (and b!7959422 (not res!3154841)) b!7959416))

(assert (= (and b!7959416 res!3154839) b!7959421))

(assert (= (or b!7959419 b!7959421) bm!737966))

(assert (= (or b!7959415 b!7959416) bm!737968))

(assert (= (or b!7959420 bm!737968) bm!737967))

(declare-fun m!8340202 () Bool)

(assert (=> bm!737966 m!8340202))

(declare-fun m!8340204 () Bool)

(assert (=> bm!737967 m!8340204))

(declare-fun m!8340206 () Bool)

(assert (=> b!7959423 m!8340206))

(assert (=> start!750764 d!2377694))

(declare-fun bm!738046 () Bool)

(declare-fun call!738054 () Regex!21491)

(declare-fun call!738052 () C!43320)

(assert (=> bm!738046 (= call!738054 (derivativeStep!6519 r!24602 call!738052))))

(declare-fun bm!738047 () Bool)

(declare-fun call!738053 () List!74720)

(assert (=> bm!738047 (= call!738053 (tail!15780 lt!2702559))))

(declare-fun bm!738048 () Bool)

(assert (=> bm!738048 (= call!738052 (head!16243 lt!2702559))))

(declare-fun bm!738049 () Bool)

(declare-fun call!738051 () Bool)

(assert (=> bm!738049 (= call!738051 (isPrefix!6591 input!7927 input!7927))))

(declare-fun b!7959742 () Bool)

(declare-fun e!4694261 () Bool)

(declare-fun e!4694262 () Bool)

(assert (=> b!7959742 (= e!4694261 e!4694262)))

(declare-fun res!3154934 () Bool)

(assert (=> b!7959742 (=> res!3154934 e!4694262)))

(declare-fun lt!2702784 () tuple2!70644)

(assert (=> b!7959742 (= res!3154934 (isEmpty!42897 (_1!38625 lt!2702784)))))

(declare-fun b!7959743 () Bool)

(declare-fun e!4694265 () tuple2!70644)

(assert (=> b!7959743 (= e!4694265 (tuple2!70645 Nil!74596 input!7927))))

(declare-fun b!7959744 () Bool)

(declare-fun e!4694260 () tuple2!70644)

(assert (=> b!7959744 (= e!4694260 (tuple2!70645 testedP!447 Nil!74596))))

(declare-fun bm!738050 () Bool)

(declare-fun call!738050 () Unit!169982)

(assert (=> bm!738050 (= call!738050 (lemmaIsPrefixRefl!4059 input!7927 input!7927))))

(declare-fun b!7959745 () Bool)

(declare-fun e!4694263 () tuple2!70644)

(assert (=> b!7959745 (= e!4694263 (tuple2!70645 testedP!447 lt!2702559))))

(declare-fun b!7959746 () Bool)

(declare-fun c!1461769 () Bool)

(declare-fun call!738055 () Bool)

(assert (=> b!7959746 (= c!1461769 call!738055)))

(declare-fun lt!2702792 () Unit!169982)

(declare-fun lt!2702786 () Unit!169982)

(assert (=> b!7959746 (= lt!2702792 lt!2702786)))

(declare-fun lt!2702802 () List!74720)

(declare-fun lt!2702781 () C!43320)

(assert (=> b!7959746 (= (++!18361 (++!18361 testedP!447 (Cons!74596 lt!2702781 Nil!74596)) lt!2702802) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3528 (List!74720 C!43320 List!74720 List!74720) Unit!169982)

(assert (=> b!7959746 (= lt!2702786 (lemmaMoveElementToOtherListKeepsConcatEq!3528 testedP!447 lt!2702781 lt!2702802 input!7927))))

(assert (=> b!7959746 (= lt!2702802 (tail!15780 lt!2702559))))

(assert (=> b!7959746 (= lt!2702781 (head!16243 lt!2702559))))

(declare-fun lt!2702777 () Unit!169982)

(declare-fun lt!2702791 () Unit!169982)

(assert (=> b!7959746 (= lt!2702777 lt!2702791)))

(assert (=> b!7959746 (isPrefix!6591 (++!18361 testedP!447 (Cons!74596 (head!16243 (getSuffix!3794 input!7927 testedP!447)) Nil!74596)) input!7927)))

(assert (=> b!7959746 (= lt!2702791 (lemmaAddHeadSuffixToPrefixStillPrefix!1318 testedP!447 input!7927))))

(declare-fun lt!2702800 () Unit!169982)

(declare-fun lt!2702788 () Unit!169982)

(assert (=> b!7959746 (= lt!2702800 lt!2702788)))

(assert (=> b!7959746 (= lt!2702788 (lemmaAddHeadSuffixToPrefixStillPrefix!1318 testedP!447 input!7927))))

(declare-fun lt!2702801 () List!74720)

(assert (=> b!7959746 (= lt!2702801 (++!18361 testedP!447 (Cons!74596 (head!16243 lt!2702559) Nil!74596)))))

(declare-fun lt!2702782 () Unit!169982)

(declare-fun e!4694264 () Unit!169982)

(assert (=> b!7959746 (= lt!2702782 e!4694264)))

(declare-fun c!1461765 () Bool)

(assert (=> b!7959746 (= c!1461765 (= (size!43427 testedP!447) (size!43427 input!7927)))))

(declare-fun lt!2702796 () Unit!169982)

(declare-fun lt!2702794 () Unit!169982)

(assert (=> b!7959746 (= lt!2702796 lt!2702794)))

(assert (=> b!7959746 (<= (size!43427 testedP!447) (size!43427 input!7927))))

(assert (=> b!7959746 (= lt!2702794 (lemmaIsPrefixThenSmallerEqSize!1108 testedP!447 input!7927))))

(declare-fun e!4694267 () tuple2!70644)

(declare-fun e!4694266 () tuple2!70644)

(assert (=> b!7959746 (= e!4694267 e!4694266)))

(declare-fun d!2377696 () Bool)

(assert (=> d!2377696 e!4694261))

(declare-fun res!3154935 () Bool)

(assert (=> d!2377696 (=> (not res!3154935) (not e!4694261))))

(assert (=> d!2377696 (= res!3154935 (= (++!18361 (_1!38625 lt!2702784) (_2!38625 lt!2702784)) input!7927))))

(assert (=> d!2377696 (= lt!2702784 e!4694265)))

(declare-fun c!1461767 () Bool)

(declare-fun lostCause!1972 (Regex!21491) Bool)

(assert (=> d!2377696 (= c!1461767 (lostCause!1972 r!24602))))

(declare-fun lt!2702797 () Unit!169982)

(declare-fun Unit!169989 () Unit!169982)

(assert (=> d!2377696 (= lt!2702797 Unit!169989)))

(assert (=> d!2377696 (= (getSuffix!3794 input!7927 testedP!447) lt!2702559)))

(declare-fun lt!2702790 () Unit!169982)

(declare-fun lt!2702779 () Unit!169982)

(assert (=> d!2377696 (= lt!2702790 lt!2702779)))

(declare-fun lt!2702780 () List!74720)

(assert (=> d!2377696 (= lt!2702559 lt!2702780)))

(declare-fun lemmaSamePrefixThenSameSuffix!2988 (List!74720 List!74720 List!74720 List!74720 List!74720) Unit!169982)

(assert (=> d!2377696 (= lt!2702779 (lemmaSamePrefixThenSameSuffix!2988 testedP!447 lt!2702559 testedP!447 lt!2702780 input!7927))))

(assert (=> d!2377696 (= lt!2702780 (getSuffix!3794 input!7927 testedP!447))))

(declare-fun lt!2702798 () Unit!169982)

(declare-fun lt!2702803 () Unit!169982)

(assert (=> d!2377696 (= lt!2702798 lt!2702803)))

(assert (=> d!2377696 (isPrefix!6591 testedP!447 (++!18361 testedP!447 lt!2702559))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3850 (List!74720 List!74720) Unit!169982)

(assert (=> d!2377696 (= lt!2702803 (lemmaConcatTwoListThenFirstIsPrefix!3850 testedP!447 lt!2702559))))

(assert (=> d!2377696 (validRegex!11795 r!24602)))

(assert (=> d!2377696 (= (findLongestMatchInner!2272 r!24602 testedP!447 lt!2702553 lt!2702559 input!7927 lt!2702550) lt!2702784)))

(declare-fun bm!738045 () Bool)

(declare-fun call!738056 () Unit!169982)

(assert (=> bm!738045 (= call!738056 (lemmaIsPrefixSameLengthThenSameList!1639 input!7927 testedP!447 input!7927))))

(declare-fun b!7959747 () Bool)

(declare-fun c!1461768 () Bool)

(assert (=> b!7959747 (= c!1461768 call!738055)))

(declare-fun lt!2702795 () Unit!169982)

(declare-fun lt!2702804 () Unit!169982)

(assert (=> b!7959747 (= lt!2702795 lt!2702804)))

(assert (=> b!7959747 (= input!7927 testedP!447)))

(assert (=> b!7959747 (= lt!2702804 call!738056)))

(declare-fun lt!2702787 () Unit!169982)

(declare-fun lt!2702783 () Unit!169982)

(assert (=> b!7959747 (= lt!2702787 lt!2702783)))

(assert (=> b!7959747 call!738051))

(assert (=> b!7959747 (= lt!2702783 call!738050)))

(assert (=> b!7959747 (= e!4694267 e!4694260)))

(declare-fun b!7959748 () Bool)

(declare-fun call!738057 () tuple2!70644)

(assert (=> b!7959748 (= e!4694266 call!738057)))

(declare-fun bm!738051 () Bool)

(assert (=> bm!738051 (= call!738055 (nullable!9592 r!24602))))

(declare-fun b!7959749 () Bool)

(assert (=> b!7959749 (= e!4694266 e!4694263)))

(declare-fun lt!2702789 () tuple2!70644)

(assert (=> b!7959749 (= lt!2702789 call!738057)))

(declare-fun c!1461766 () Bool)

(assert (=> b!7959749 (= c!1461766 (isEmpty!42897 (_1!38625 lt!2702789)))))

(declare-fun b!7959750 () Bool)

(assert (=> b!7959750 (= e!4694265 e!4694267)))

(declare-fun c!1461770 () Bool)

(assert (=> b!7959750 (= c!1461770 (= lt!2702553 lt!2702550))))

(declare-fun bm!738052 () Bool)

(assert (=> bm!738052 (= call!738057 (findLongestMatchInner!2272 call!738054 lt!2702801 (+ lt!2702553 1) call!738053 input!7927 lt!2702550))))

(declare-fun b!7959751 () Bool)

(assert (=> b!7959751 (= e!4694262 (>= (size!43427 (_1!38625 lt!2702784)) (size!43427 testedP!447)))))

(declare-fun b!7959752 () Bool)

(assert (=> b!7959752 (= e!4694263 lt!2702789)))

(declare-fun b!7959753 () Bool)

(declare-fun Unit!169990 () Unit!169982)

(assert (=> b!7959753 (= e!4694264 Unit!169990)))

(declare-fun b!7959754 () Bool)

(declare-fun Unit!169991 () Unit!169982)

(assert (=> b!7959754 (= e!4694264 Unit!169991)))

(declare-fun lt!2702799 () Unit!169982)

(assert (=> b!7959754 (= lt!2702799 call!738050)))

(assert (=> b!7959754 call!738051))

(declare-fun lt!2702785 () Unit!169982)

(assert (=> b!7959754 (= lt!2702785 lt!2702799)))

(declare-fun lt!2702793 () Unit!169982)

(assert (=> b!7959754 (= lt!2702793 call!738056)))

(assert (=> b!7959754 (= input!7927 testedP!447)))

(declare-fun lt!2702778 () Unit!169982)

(assert (=> b!7959754 (= lt!2702778 lt!2702793)))

(assert (=> b!7959754 false))

(declare-fun b!7959755 () Bool)

(assert (=> b!7959755 (= e!4694260 (tuple2!70645 Nil!74596 input!7927))))

(assert (= (and d!2377696 c!1461767) b!7959743))

(assert (= (and d!2377696 (not c!1461767)) b!7959750))

(assert (= (and b!7959750 c!1461770) b!7959747))

(assert (= (and b!7959750 (not c!1461770)) b!7959746))

(assert (= (and b!7959747 c!1461768) b!7959744))

(assert (= (and b!7959747 (not c!1461768)) b!7959755))

(assert (= (and b!7959746 c!1461765) b!7959754))

(assert (= (and b!7959746 (not c!1461765)) b!7959753))

(assert (= (and b!7959746 c!1461769) b!7959749))

(assert (= (and b!7959746 (not c!1461769)) b!7959748))

(assert (= (and b!7959749 c!1461766) b!7959745))

(assert (= (and b!7959749 (not c!1461766)) b!7959752))

(assert (= (or b!7959749 b!7959748) bm!738048))

(assert (= (or b!7959749 b!7959748) bm!738047))

(assert (= (or b!7959749 b!7959748) bm!738046))

(assert (= (or b!7959749 b!7959748) bm!738052))

(assert (= (or b!7959747 b!7959746) bm!738051))

(assert (= (or b!7959747 b!7959754) bm!738045))

(assert (= (or b!7959747 b!7959754) bm!738050))

(assert (= (or b!7959747 b!7959754) bm!738049))

(assert (= (and d!2377696 res!3154935) b!7959742))

(assert (= (and b!7959742 (not res!3154934)) b!7959751))

(declare-fun m!8340410 () Bool)

(assert (=> b!7959751 m!8340410))

(assert (=> b!7959751 m!8340160))

(assert (=> bm!738047 m!8340152))

(declare-fun m!8340412 () Bool)

(assert (=> b!7959746 m!8340412))

(declare-fun m!8340414 () Bool)

(assert (=> b!7959746 m!8340414))

(declare-fun m!8340416 () Bool)

(assert (=> b!7959746 m!8340416))

(assert (=> b!7959746 m!8340152))

(assert (=> b!7959746 m!8340162))

(declare-fun m!8340418 () Bool)

(assert (=> b!7959746 m!8340418))

(declare-fun m!8340420 () Bool)

(assert (=> b!7959746 m!8340420))

(assert (=> b!7959746 m!8340420))

(declare-fun m!8340422 () Bool)

(assert (=> b!7959746 m!8340422))

(assert (=> b!7959746 m!8340414))

(assert (=> b!7959746 m!8340178))

(assert (=> b!7959746 m!8340180))

(assert (=> b!7959746 m!8340160))

(assert (=> b!7959746 m!8340168))

(declare-fun m!8340424 () Bool)

(assert (=> b!7959746 m!8340424))

(assert (=> b!7959746 m!8340168))

(assert (=> b!7959746 m!8340170))

(assert (=> bm!738050 m!8340142))

(assert (=> bm!738045 m!8340146))

(assert (=> bm!738051 m!8340174))

(declare-fun m!8340426 () Bool)

(assert (=> b!7959749 m!8340426))

(declare-fun m!8340428 () Bool)

(assert (=> bm!738046 m!8340428))

(declare-fun m!8340430 () Bool)

(assert (=> b!7959742 m!8340430))

(assert (=> bm!738049 m!8340144))

(assert (=> bm!738048 m!8340178))

(declare-fun m!8340432 () Bool)

(assert (=> bm!738052 m!8340432))

(assert (=> d!2377696 m!8340184))

(declare-fun m!8340434 () Bool)

(assert (=> d!2377696 m!8340434))

(declare-fun m!8340436 () Bool)

(assert (=> d!2377696 m!8340436))

(assert (=> d!2377696 m!8340158))

(declare-fun m!8340438 () Bool)

(assert (=> d!2377696 m!8340438))

(declare-fun m!8340440 () Bool)

(assert (=> d!2377696 m!8340440))

(assert (=> d!2377696 m!8340158))

(declare-fun m!8340442 () Bool)

(assert (=> d!2377696 m!8340442))

(assert (=> d!2377696 m!8340168))

(assert (=> b!7959382 d!2377696))

(declare-fun d!2377746 () Bool)

(declare-fun lt!2702807 () List!74720)

(assert (=> d!2377746 (= (++!18361 testedP!447 lt!2702807) input!7927)))

(declare-fun e!4694270 () List!74720)

(assert (=> d!2377746 (= lt!2702807 e!4694270)))

(declare-fun c!1461773 () Bool)

(assert (=> d!2377746 (= c!1461773 ((_ is Cons!74596) testedP!447))))

(assert (=> d!2377746 (>= (size!43427 input!7927) (size!43427 testedP!447))))

(assert (=> d!2377746 (= (getSuffix!3794 input!7927 testedP!447) lt!2702807)))

(declare-fun b!7959760 () Bool)

(assert (=> b!7959760 (= e!4694270 (getSuffix!3794 (tail!15780 input!7927) (t!390463 testedP!447)))))

(declare-fun b!7959761 () Bool)

(assert (=> b!7959761 (= e!4694270 input!7927)))

(assert (= (and d!2377746 c!1461773) b!7959760))

(assert (= (and d!2377746 (not c!1461773)) b!7959761))

(declare-fun m!8340444 () Bool)

(assert (=> d!2377746 m!8340444))

(assert (=> d!2377746 m!8340162))

(assert (=> d!2377746 m!8340160))

(declare-fun m!8340446 () Bool)

(assert (=> b!7959760 m!8340446))

(assert (=> b!7959760 m!8340446))

(declare-fun m!8340448 () Bool)

(assert (=> b!7959760 m!8340448))

(assert (=> b!7959382 d!2377746))

(declare-fun d!2377748 () Bool)

(declare-fun lt!2702810 () Int)

(assert (=> d!2377748 (>= lt!2702810 0)))

(declare-fun e!4694273 () Int)

(assert (=> d!2377748 (= lt!2702810 e!4694273)))

(declare-fun c!1461776 () Bool)

(assert (=> d!2377748 (= c!1461776 ((_ is Nil!74596) testedP!447))))

(assert (=> d!2377748 (= (size!43427 testedP!447) lt!2702810)))

(declare-fun b!7959766 () Bool)

(assert (=> b!7959766 (= e!4694273 0)))

(declare-fun b!7959767 () Bool)

(assert (=> b!7959767 (= e!4694273 (+ 1 (size!43427 (t!390463 testedP!447))))))

(assert (= (and d!2377748 c!1461776) b!7959766))

(assert (= (and d!2377748 (not c!1461776)) b!7959767))

(declare-fun m!8340450 () Bool)

(assert (=> b!7959767 m!8340450))

(assert (=> b!7959382 d!2377748))

(declare-fun d!2377750 () Bool)

(declare-fun lt!2702811 () Int)

(assert (=> d!2377750 (>= lt!2702811 0)))

(declare-fun e!4694274 () Int)

(assert (=> d!2377750 (= lt!2702811 e!4694274)))

(declare-fun c!1461777 () Bool)

(assert (=> d!2377750 (= c!1461777 ((_ is Nil!74596) input!7927))))

(assert (=> d!2377750 (= (size!43427 input!7927) lt!2702811)))

(declare-fun b!7959768 () Bool)

(assert (=> b!7959768 (= e!4694274 0)))

(declare-fun b!7959769 () Bool)

(assert (=> b!7959769 (= e!4694274 (+ 1 (size!43427 (t!390463 input!7927))))))

(assert (= (and d!2377750 c!1461777) b!7959768))

(assert (= (and d!2377750 (not c!1461777)) b!7959769))

(declare-fun m!8340452 () Bool)

(assert (=> b!7959769 m!8340452))

(assert (=> b!7959382 d!2377750))

(declare-fun d!2377752 () Bool)

(assert (=> d!2377752 (= (isEmpty!42897 (_1!38625 (findLongestMatchInner!2272 r!24602 testedP!447 lt!2702553 lt!2702559 input!7927 lt!2702550))) ((_ is Nil!74596) (_1!38625 (findLongestMatchInner!2272 r!24602 testedP!447 lt!2702553 lt!2702559 input!7927 lt!2702550))))))

(assert (=> b!7959382 d!2377752))

(declare-fun bm!738053 () Bool)

(declare-fun call!738058 () Bool)

(declare-fun c!1461778 () Bool)

(assert (=> bm!738053 (= call!738058 (validRegex!11795 (ite c!1461778 (regTwo!43495 r!24602) (regTwo!43494 r!24602))))))

(declare-fun bm!738054 () Bool)

(declare-fun call!738059 () Bool)

(declare-fun c!1461779 () Bool)

(assert (=> bm!738054 (= call!738059 (validRegex!11795 (ite c!1461779 (reg!21820 r!24602) (ite c!1461778 (regOne!43495 r!24602) (regOne!43494 r!24602)))))))

(declare-fun b!7959770 () Bool)

(declare-fun res!3154937 () Bool)

(declare-fun e!4694280 () Bool)

(assert (=> b!7959770 (=> (not res!3154937) (not e!4694280))))

(declare-fun call!738060 () Bool)

(assert (=> b!7959770 (= res!3154937 call!738060)))

(declare-fun e!4694278 () Bool)

(assert (=> b!7959770 (= e!4694278 e!4694280)))

(declare-fun b!7959771 () Bool)

(declare-fun e!4694276 () Bool)

(declare-fun e!4694277 () Bool)

(assert (=> b!7959771 (= e!4694276 e!4694277)))

(declare-fun res!3154938 () Bool)

(assert (=> b!7959771 (=> (not res!3154938) (not e!4694277))))

(assert (=> b!7959771 (= res!3154938 call!738060)))

(declare-fun b!7959772 () Bool)

(declare-fun e!4694275 () Bool)

(declare-fun e!4694281 () Bool)

(assert (=> b!7959772 (= e!4694275 e!4694281)))

(assert (=> b!7959772 (= c!1461779 ((_ is Star!21491) r!24602))))

(declare-fun d!2377754 () Bool)

(declare-fun res!3154936 () Bool)

(assert (=> d!2377754 (=> res!3154936 e!4694275)))

(assert (=> d!2377754 (= res!3154936 ((_ is ElementMatch!21491) r!24602))))

(assert (=> d!2377754 (= (validRegex!11795 r!24602) e!4694275)))

(declare-fun bm!738055 () Bool)

(assert (=> bm!738055 (= call!738060 call!738059)))

(declare-fun b!7959773 () Bool)

(assert (=> b!7959773 (= e!4694281 e!4694278)))

(assert (=> b!7959773 (= c!1461778 ((_ is Union!21491) r!24602))))

(declare-fun b!7959774 () Bool)

(assert (=> b!7959774 (= e!4694280 call!738058)))

(declare-fun b!7959775 () Bool)

(declare-fun e!4694279 () Bool)

(assert (=> b!7959775 (= e!4694279 call!738059)))

(declare-fun b!7959776 () Bool)

(assert (=> b!7959776 (= e!4694277 call!738058)))

(declare-fun b!7959777 () Bool)

(declare-fun res!3154940 () Bool)

(assert (=> b!7959777 (=> res!3154940 e!4694276)))

(assert (=> b!7959777 (= res!3154940 (not ((_ is Concat!30490) r!24602)))))

(assert (=> b!7959777 (= e!4694278 e!4694276)))

(declare-fun b!7959778 () Bool)

(assert (=> b!7959778 (= e!4694281 e!4694279)))

(declare-fun res!3154939 () Bool)

(assert (=> b!7959778 (= res!3154939 (not (nullable!9592 (reg!21820 r!24602))))))

(assert (=> b!7959778 (=> (not res!3154939) (not e!4694279))))

(assert (= (and d!2377754 (not res!3154936)) b!7959772))

(assert (= (and b!7959772 c!1461779) b!7959778))

(assert (= (and b!7959772 (not c!1461779)) b!7959773))

(assert (= (and b!7959778 res!3154939) b!7959775))

(assert (= (and b!7959773 c!1461778) b!7959770))

(assert (= (and b!7959773 (not c!1461778)) b!7959777))

(assert (= (and b!7959770 res!3154937) b!7959774))

(assert (= (and b!7959777 (not res!3154940)) b!7959771))

(assert (= (and b!7959771 res!3154938) b!7959776))

(assert (= (or b!7959774 b!7959776) bm!738053))

(assert (= (or b!7959770 b!7959771) bm!738055))

(assert (= (or b!7959775 bm!738055) bm!738054))

(declare-fun m!8340454 () Bool)

(assert (=> bm!738053 m!8340454))

(declare-fun m!8340456 () Bool)

(assert (=> bm!738054 m!8340456))

(declare-fun m!8340458 () Bool)

(assert (=> b!7959778 m!8340458))

(assert (=> b!7959377 d!2377754))

(declare-fun b!7959807 () Bool)

(declare-fun res!3154964 () Bool)

(declare-fun e!4694298 () Bool)

(assert (=> b!7959807 (=> res!3154964 e!4694298)))

(assert (=> b!7959807 (= res!3154964 (not (isEmpty!42897 (tail!15780 testedP!447))))))

(declare-fun b!7959808 () Bool)

(declare-fun e!4694296 () Bool)

(declare-fun lt!2702814 () Bool)

(assert (=> b!7959808 (= e!4694296 (not lt!2702814))))

(declare-fun b!7959809 () Bool)

(declare-fun e!4694300 () Bool)

(declare-fun e!4694297 () Bool)

(assert (=> b!7959809 (= e!4694300 e!4694297)))

(declare-fun res!3154962 () Bool)

(assert (=> b!7959809 (=> (not res!3154962) (not e!4694297))))

(assert (=> b!7959809 (= res!3154962 (not lt!2702814))))

(declare-fun d!2377756 () Bool)

(declare-fun e!4694299 () Bool)

(assert (=> d!2377756 e!4694299))

(declare-fun c!1461787 () Bool)

(assert (=> d!2377756 (= c!1461787 ((_ is EmptyExpr!21491) baseR!116))))

(declare-fun e!4694301 () Bool)

(assert (=> d!2377756 (= lt!2702814 e!4694301)))

(declare-fun c!1461788 () Bool)

(assert (=> d!2377756 (= c!1461788 (isEmpty!42897 testedP!447))))

(assert (=> d!2377756 (validRegex!11795 baseR!116)))

(assert (=> d!2377756 (= (matchR!10732 baseR!116 testedP!447) lt!2702814)))

(declare-fun b!7959810 () Bool)

(assert (=> b!7959810 (= e!4694298 (not (= (head!16243 testedP!447) (c!1461670 baseR!116))))))

(declare-fun b!7959811 () Bool)

(declare-fun res!3154957 () Bool)

(declare-fun e!4694302 () Bool)

(assert (=> b!7959811 (=> (not res!3154957) (not e!4694302))))

(declare-fun call!738063 () Bool)

(assert (=> b!7959811 (= res!3154957 (not call!738063))))

(declare-fun b!7959812 () Bool)

(assert (=> b!7959812 (= e!4694301 (matchR!10732 (derivativeStep!6519 baseR!116 (head!16243 testedP!447)) (tail!15780 testedP!447)))))

(declare-fun b!7959813 () Bool)

(declare-fun res!3154963 () Bool)

(assert (=> b!7959813 (=> res!3154963 e!4694300)))

(assert (=> b!7959813 (= res!3154963 e!4694302)))

(declare-fun res!3154961 () Bool)

(assert (=> b!7959813 (=> (not res!3154961) (not e!4694302))))

(assert (=> b!7959813 (= res!3154961 lt!2702814)))

(declare-fun b!7959814 () Bool)

(assert (=> b!7959814 (= e!4694299 e!4694296)))

(declare-fun c!1461786 () Bool)

(assert (=> b!7959814 (= c!1461786 ((_ is EmptyLang!21491) baseR!116))))

(declare-fun b!7959815 () Bool)

(assert (=> b!7959815 (= e!4694297 e!4694298)))

(declare-fun res!3154959 () Bool)

(assert (=> b!7959815 (=> res!3154959 e!4694298)))

(assert (=> b!7959815 (= res!3154959 call!738063)))

(declare-fun b!7959816 () Bool)

(assert (=> b!7959816 (= e!4694299 (= lt!2702814 call!738063))))

(declare-fun b!7959817 () Bool)

(declare-fun res!3154958 () Bool)

(assert (=> b!7959817 (=> (not res!3154958) (not e!4694302))))

(assert (=> b!7959817 (= res!3154958 (isEmpty!42897 (tail!15780 testedP!447)))))

(declare-fun b!7959818 () Bool)

(declare-fun res!3154960 () Bool)

(assert (=> b!7959818 (=> res!3154960 e!4694300)))

(assert (=> b!7959818 (= res!3154960 (not ((_ is ElementMatch!21491) baseR!116)))))

(assert (=> b!7959818 (= e!4694296 e!4694300)))

(declare-fun b!7959819 () Bool)

(assert (=> b!7959819 (= e!4694302 (= (head!16243 testedP!447) (c!1461670 baseR!116)))))

(declare-fun b!7959820 () Bool)

(assert (=> b!7959820 (= e!4694301 (nullable!9592 baseR!116))))

(declare-fun bm!738058 () Bool)

(assert (=> bm!738058 (= call!738063 (isEmpty!42897 testedP!447))))

(assert (= (and d!2377756 c!1461788) b!7959820))

(assert (= (and d!2377756 (not c!1461788)) b!7959812))

(assert (= (and d!2377756 c!1461787) b!7959816))

(assert (= (and d!2377756 (not c!1461787)) b!7959814))

(assert (= (and b!7959814 c!1461786) b!7959808))

(assert (= (and b!7959814 (not c!1461786)) b!7959818))

(assert (= (and b!7959818 (not res!3154960)) b!7959813))

(assert (= (and b!7959813 res!3154961) b!7959811))

(assert (= (and b!7959811 res!3154957) b!7959817))

(assert (= (and b!7959817 res!3154958) b!7959819))

(assert (= (and b!7959813 (not res!3154963)) b!7959809))

(assert (= (and b!7959809 res!3154962) b!7959815))

(assert (= (and b!7959815 (not res!3154959)) b!7959807))

(assert (= (and b!7959807 (not res!3154964)) b!7959810))

(assert (= (or b!7959816 b!7959811 b!7959815) bm!738058))

(declare-fun m!8340460 () Bool)

(assert (=> b!7959810 m!8340460))

(declare-fun m!8340462 () Bool)

(assert (=> b!7959807 m!8340462))

(assert (=> b!7959807 m!8340462))

(declare-fun m!8340464 () Bool)

(assert (=> b!7959807 m!8340464))

(declare-fun m!8340466 () Bool)

(assert (=> bm!738058 m!8340466))

(assert (=> b!7959819 m!8340460))

(declare-fun m!8340468 () Bool)

(assert (=> b!7959820 m!8340468))

(assert (=> d!2377756 m!8340466))

(assert (=> d!2377756 m!8340192))

(assert (=> b!7959812 m!8340460))

(assert (=> b!7959812 m!8340460))

(declare-fun m!8340470 () Bool)

(assert (=> b!7959812 m!8340470))

(assert (=> b!7959812 m!8340462))

(assert (=> b!7959812 m!8340470))

(assert (=> b!7959812 m!8340462))

(declare-fun m!8340472 () Bool)

(assert (=> b!7959812 m!8340472))

(assert (=> b!7959817 m!8340462))

(assert (=> b!7959817 m!8340462))

(assert (=> b!7959817 m!8340464))

(assert (=> b!7959377 d!2377756))

(declare-fun b!7959821 () Bool)

(declare-fun res!3154972 () Bool)

(declare-fun e!4694305 () Bool)

(assert (=> b!7959821 (=> res!3154972 e!4694305)))

(assert (=> b!7959821 (= res!3154972 (not (isEmpty!42897 (tail!15780 Nil!74596))))))

(declare-fun b!7959822 () Bool)

(declare-fun e!4694303 () Bool)

(declare-fun lt!2702815 () Bool)

(assert (=> b!7959822 (= e!4694303 (not lt!2702815))))

(declare-fun b!7959823 () Bool)

(declare-fun e!4694307 () Bool)

(declare-fun e!4694304 () Bool)

(assert (=> b!7959823 (= e!4694307 e!4694304)))

(declare-fun res!3154970 () Bool)

(assert (=> b!7959823 (=> (not res!3154970) (not e!4694304))))

(assert (=> b!7959823 (= res!3154970 (not lt!2702815))))

(declare-fun d!2377758 () Bool)

(declare-fun e!4694306 () Bool)

(assert (=> d!2377758 e!4694306))

(declare-fun c!1461790 () Bool)

(assert (=> d!2377758 (= c!1461790 ((_ is EmptyExpr!21491) lt!2702555))))

(declare-fun e!4694308 () Bool)

(assert (=> d!2377758 (= lt!2702815 e!4694308)))

(declare-fun c!1461791 () Bool)

(assert (=> d!2377758 (= c!1461791 (isEmpty!42897 Nil!74596))))

(assert (=> d!2377758 (validRegex!11795 lt!2702555)))

(assert (=> d!2377758 (= (matchR!10732 lt!2702555 Nil!74596) lt!2702815)))

(declare-fun b!7959824 () Bool)

(assert (=> b!7959824 (= e!4694305 (not (= (head!16243 Nil!74596) (c!1461670 lt!2702555))))))

(declare-fun b!7959825 () Bool)

(declare-fun res!3154965 () Bool)

(declare-fun e!4694309 () Bool)

(assert (=> b!7959825 (=> (not res!3154965) (not e!4694309))))

(declare-fun call!738064 () Bool)

(assert (=> b!7959825 (= res!3154965 (not call!738064))))

(declare-fun b!7959826 () Bool)

(assert (=> b!7959826 (= e!4694308 (matchR!10732 (derivativeStep!6519 lt!2702555 (head!16243 Nil!74596)) (tail!15780 Nil!74596)))))

(declare-fun b!7959827 () Bool)

(declare-fun res!3154971 () Bool)

(assert (=> b!7959827 (=> res!3154971 e!4694307)))

(assert (=> b!7959827 (= res!3154971 e!4694309)))

(declare-fun res!3154969 () Bool)

(assert (=> b!7959827 (=> (not res!3154969) (not e!4694309))))

(assert (=> b!7959827 (= res!3154969 lt!2702815)))

(declare-fun b!7959828 () Bool)

(assert (=> b!7959828 (= e!4694306 e!4694303)))

(declare-fun c!1461789 () Bool)

(assert (=> b!7959828 (= c!1461789 ((_ is EmptyLang!21491) lt!2702555))))

(declare-fun b!7959829 () Bool)

(assert (=> b!7959829 (= e!4694304 e!4694305)))

(declare-fun res!3154967 () Bool)

(assert (=> b!7959829 (=> res!3154967 e!4694305)))

(assert (=> b!7959829 (= res!3154967 call!738064)))

(declare-fun b!7959830 () Bool)

(assert (=> b!7959830 (= e!4694306 (= lt!2702815 call!738064))))

(declare-fun b!7959831 () Bool)

(declare-fun res!3154966 () Bool)

(assert (=> b!7959831 (=> (not res!3154966) (not e!4694309))))

(assert (=> b!7959831 (= res!3154966 (isEmpty!42897 (tail!15780 Nil!74596)))))

(declare-fun b!7959832 () Bool)

(declare-fun res!3154968 () Bool)

(assert (=> b!7959832 (=> res!3154968 e!4694307)))

(assert (=> b!7959832 (= res!3154968 (not ((_ is ElementMatch!21491) lt!2702555)))))

(assert (=> b!7959832 (= e!4694303 e!4694307)))

(declare-fun b!7959833 () Bool)

(assert (=> b!7959833 (= e!4694309 (= (head!16243 Nil!74596) (c!1461670 lt!2702555)))))

(declare-fun b!7959834 () Bool)

(assert (=> b!7959834 (= e!4694308 (nullable!9592 lt!2702555))))

(declare-fun bm!738059 () Bool)

(assert (=> bm!738059 (= call!738064 (isEmpty!42897 Nil!74596))))

(assert (= (and d!2377758 c!1461791) b!7959834))

(assert (= (and d!2377758 (not c!1461791)) b!7959826))

(assert (= (and d!2377758 c!1461790) b!7959830))

(assert (= (and d!2377758 (not c!1461790)) b!7959828))

(assert (= (and b!7959828 c!1461789) b!7959822))

(assert (= (and b!7959828 (not c!1461789)) b!7959832))

(assert (= (and b!7959832 (not res!3154968)) b!7959827))

(assert (= (and b!7959827 res!3154969) b!7959825))

(assert (= (and b!7959825 res!3154965) b!7959831))

(assert (= (and b!7959831 res!3154966) b!7959833))

(assert (= (and b!7959827 (not res!3154971)) b!7959823))

(assert (= (and b!7959823 res!3154970) b!7959829))

(assert (= (and b!7959829 (not res!3154967)) b!7959821))

(assert (= (and b!7959821 (not res!3154972)) b!7959824))

(assert (= (or b!7959830 b!7959825 b!7959829) bm!738059))

(declare-fun m!8340474 () Bool)

(assert (=> b!7959824 m!8340474))

(declare-fun m!8340476 () Bool)

(assert (=> b!7959821 m!8340476))

(assert (=> b!7959821 m!8340476))

(declare-fun m!8340478 () Bool)

(assert (=> b!7959821 m!8340478))

(declare-fun m!8340480 () Bool)

(assert (=> bm!738059 m!8340480))

(assert (=> b!7959833 m!8340474))

(declare-fun m!8340482 () Bool)

(assert (=> b!7959834 m!8340482))

(assert (=> d!2377758 m!8340480))

(declare-fun m!8340484 () Bool)

(assert (=> d!2377758 m!8340484))

(assert (=> b!7959826 m!8340474))

(assert (=> b!7959826 m!8340474))

(declare-fun m!8340486 () Bool)

(assert (=> b!7959826 m!8340486))

(assert (=> b!7959826 m!8340476))

(assert (=> b!7959826 m!8340486))

(assert (=> b!7959826 m!8340476))

(declare-fun m!8340488 () Bool)

(assert (=> b!7959826 m!8340488))

(assert (=> b!7959831 m!8340476))

(assert (=> b!7959831 m!8340476))

(assert (=> b!7959831 m!8340478))

(assert (=> b!7959377 d!2377758))

(declare-fun d!2377760 () Bool)

(assert (=> d!2377760 (= (matchR!10732 baseR!116 testedP!447) (matchR!10732 (derivative!677 baseR!116 testedP!447) Nil!74596))))

(declare-fun lt!2702818 () Unit!169982)

(declare-fun choose!59976 (Regex!21491 List!74720) Unit!169982)

(assert (=> d!2377760 (= lt!2702818 (choose!59976 baseR!116 testedP!447))))

(assert (=> d!2377760 (validRegex!11795 baseR!116)))

(assert (=> d!2377760 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!300 baseR!116 testedP!447) lt!2702818)))

(declare-fun bs!1969704 () Bool)

(assert (= bs!1969704 d!2377760))

(assert (=> bs!1969704 m!8340186))

(assert (=> bs!1969704 m!8340148))

(assert (=> bs!1969704 m!8340192))

(assert (=> bs!1969704 m!8340148))

(declare-fun m!8340490 () Bool)

(assert (=> bs!1969704 m!8340490))

(declare-fun m!8340492 () Bool)

(assert (=> bs!1969704 m!8340492))

(assert (=> b!7959377 d!2377760))

(declare-fun d!2377762 () Bool)

(assert (=> d!2377762 (= (isEmpty!42897 (_1!38625 (findLongestMatchInner!2272 (derivativeStep!6519 r!24602 lt!2702551) lt!2702560 (+ 1 lt!2702553) (tail!15780 lt!2702559) input!7927 lt!2702550))) ((_ is Nil!74596) (_1!38625 (findLongestMatchInner!2272 (derivativeStep!6519 r!24602 lt!2702551) lt!2702560 (+ 1 lt!2702553) (tail!15780 lt!2702559) input!7927 lt!2702550))))))

(assert (=> b!7959384 d!2377762))

(declare-fun call!738067 () C!43320)

(declare-fun bm!738061 () Bool)

(declare-fun call!738069 () Regex!21491)

(assert (=> bm!738061 (= call!738069 (derivativeStep!6519 (derivativeStep!6519 r!24602 lt!2702551) call!738067))))

(declare-fun bm!738062 () Bool)

(declare-fun call!738068 () List!74720)

(assert (=> bm!738062 (= call!738068 (tail!15780 (tail!15780 lt!2702559)))))

(declare-fun bm!738063 () Bool)

(assert (=> bm!738063 (= call!738067 (head!16243 (tail!15780 lt!2702559)))))

(declare-fun bm!738064 () Bool)

(declare-fun call!738066 () Bool)

(assert (=> bm!738064 (= call!738066 (isPrefix!6591 input!7927 input!7927))))

(declare-fun b!7959835 () Bool)

(declare-fun e!4694311 () Bool)

(declare-fun e!4694312 () Bool)

(assert (=> b!7959835 (= e!4694311 e!4694312)))

(declare-fun res!3154973 () Bool)

(assert (=> b!7959835 (=> res!3154973 e!4694312)))

(declare-fun lt!2702826 () tuple2!70644)

(assert (=> b!7959835 (= res!3154973 (isEmpty!42897 (_1!38625 lt!2702826)))))

(declare-fun b!7959836 () Bool)

(declare-fun e!4694315 () tuple2!70644)

(assert (=> b!7959836 (= e!4694315 (tuple2!70645 Nil!74596 input!7927))))

(declare-fun b!7959837 () Bool)

(declare-fun e!4694310 () tuple2!70644)

(assert (=> b!7959837 (= e!4694310 (tuple2!70645 lt!2702560 Nil!74596))))

(declare-fun bm!738065 () Bool)

(declare-fun call!738065 () Unit!169982)

(assert (=> bm!738065 (= call!738065 (lemmaIsPrefixRefl!4059 input!7927 input!7927))))

(declare-fun b!7959838 () Bool)

(declare-fun e!4694313 () tuple2!70644)

(assert (=> b!7959838 (= e!4694313 (tuple2!70645 lt!2702560 (tail!15780 lt!2702559)))))

(declare-fun b!7959839 () Bool)

(declare-fun c!1461796 () Bool)

(declare-fun call!738070 () Bool)

(assert (=> b!7959839 (= c!1461796 call!738070)))

(declare-fun lt!2702834 () Unit!169982)

(declare-fun lt!2702828 () Unit!169982)

(assert (=> b!7959839 (= lt!2702834 lt!2702828)))

(declare-fun lt!2702823 () C!43320)

(declare-fun lt!2702844 () List!74720)

(assert (=> b!7959839 (= (++!18361 (++!18361 lt!2702560 (Cons!74596 lt!2702823 Nil!74596)) lt!2702844) input!7927)))

(assert (=> b!7959839 (= lt!2702828 (lemmaMoveElementToOtherListKeepsConcatEq!3528 lt!2702560 lt!2702823 lt!2702844 input!7927))))

(assert (=> b!7959839 (= lt!2702844 (tail!15780 (tail!15780 lt!2702559)))))

(assert (=> b!7959839 (= lt!2702823 (head!16243 (tail!15780 lt!2702559)))))

(declare-fun lt!2702819 () Unit!169982)

(declare-fun lt!2702833 () Unit!169982)

(assert (=> b!7959839 (= lt!2702819 lt!2702833)))

(assert (=> b!7959839 (isPrefix!6591 (++!18361 lt!2702560 (Cons!74596 (head!16243 (getSuffix!3794 input!7927 lt!2702560)) Nil!74596)) input!7927)))

(assert (=> b!7959839 (= lt!2702833 (lemmaAddHeadSuffixToPrefixStillPrefix!1318 lt!2702560 input!7927))))

(declare-fun lt!2702842 () Unit!169982)

(declare-fun lt!2702830 () Unit!169982)

(assert (=> b!7959839 (= lt!2702842 lt!2702830)))

(assert (=> b!7959839 (= lt!2702830 (lemmaAddHeadSuffixToPrefixStillPrefix!1318 lt!2702560 input!7927))))

(declare-fun lt!2702843 () List!74720)

(assert (=> b!7959839 (= lt!2702843 (++!18361 lt!2702560 (Cons!74596 (head!16243 (tail!15780 lt!2702559)) Nil!74596)))))

(declare-fun lt!2702824 () Unit!169982)

(declare-fun e!4694314 () Unit!169982)

(assert (=> b!7959839 (= lt!2702824 e!4694314)))

(declare-fun c!1461792 () Bool)

(assert (=> b!7959839 (= c!1461792 (= (size!43427 lt!2702560) (size!43427 input!7927)))))

(declare-fun lt!2702838 () Unit!169982)

(declare-fun lt!2702836 () Unit!169982)

(assert (=> b!7959839 (= lt!2702838 lt!2702836)))

(assert (=> b!7959839 (<= (size!43427 lt!2702560) (size!43427 input!7927))))

(assert (=> b!7959839 (= lt!2702836 (lemmaIsPrefixThenSmallerEqSize!1108 lt!2702560 input!7927))))

(declare-fun e!4694317 () tuple2!70644)

(declare-fun e!4694316 () tuple2!70644)

(assert (=> b!7959839 (= e!4694317 e!4694316)))

(declare-fun d!2377764 () Bool)

(assert (=> d!2377764 e!4694311))

(declare-fun res!3154974 () Bool)

(assert (=> d!2377764 (=> (not res!3154974) (not e!4694311))))

(assert (=> d!2377764 (= res!3154974 (= (++!18361 (_1!38625 lt!2702826) (_2!38625 lt!2702826)) input!7927))))

(assert (=> d!2377764 (= lt!2702826 e!4694315)))

(declare-fun c!1461794 () Bool)

(assert (=> d!2377764 (= c!1461794 (lostCause!1972 (derivativeStep!6519 r!24602 lt!2702551)))))

(declare-fun lt!2702839 () Unit!169982)

(declare-fun Unit!169995 () Unit!169982)

(assert (=> d!2377764 (= lt!2702839 Unit!169995)))

(assert (=> d!2377764 (= (getSuffix!3794 input!7927 lt!2702560) (tail!15780 lt!2702559))))

(declare-fun lt!2702832 () Unit!169982)

(declare-fun lt!2702821 () Unit!169982)

(assert (=> d!2377764 (= lt!2702832 lt!2702821)))

(declare-fun lt!2702822 () List!74720)

(assert (=> d!2377764 (= (tail!15780 lt!2702559) lt!2702822)))

(assert (=> d!2377764 (= lt!2702821 (lemmaSamePrefixThenSameSuffix!2988 lt!2702560 (tail!15780 lt!2702559) lt!2702560 lt!2702822 input!7927))))

(assert (=> d!2377764 (= lt!2702822 (getSuffix!3794 input!7927 lt!2702560))))

(declare-fun lt!2702840 () Unit!169982)

(declare-fun lt!2702845 () Unit!169982)

(assert (=> d!2377764 (= lt!2702840 lt!2702845)))

(assert (=> d!2377764 (isPrefix!6591 lt!2702560 (++!18361 lt!2702560 (tail!15780 lt!2702559)))))

(assert (=> d!2377764 (= lt!2702845 (lemmaConcatTwoListThenFirstIsPrefix!3850 lt!2702560 (tail!15780 lt!2702559)))))

(assert (=> d!2377764 (validRegex!11795 (derivativeStep!6519 r!24602 lt!2702551))))

(assert (=> d!2377764 (= (findLongestMatchInner!2272 (derivativeStep!6519 r!24602 lt!2702551) lt!2702560 (+ 1 lt!2702553) (tail!15780 lt!2702559) input!7927 lt!2702550) lt!2702826)))

(declare-fun bm!738060 () Bool)

(declare-fun call!738071 () Unit!169982)

(assert (=> bm!738060 (= call!738071 (lemmaIsPrefixSameLengthThenSameList!1639 input!7927 lt!2702560 input!7927))))

(declare-fun b!7959840 () Bool)

(declare-fun c!1461795 () Bool)

(assert (=> b!7959840 (= c!1461795 call!738070)))

(declare-fun lt!2702837 () Unit!169982)

(declare-fun lt!2702846 () Unit!169982)

(assert (=> b!7959840 (= lt!2702837 lt!2702846)))

(assert (=> b!7959840 (= input!7927 lt!2702560)))

(assert (=> b!7959840 (= lt!2702846 call!738071)))

(declare-fun lt!2702829 () Unit!169982)

(declare-fun lt!2702825 () Unit!169982)

(assert (=> b!7959840 (= lt!2702829 lt!2702825)))

(assert (=> b!7959840 call!738066))

(assert (=> b!7959840 (= lt!2702825 call!738065)))

(assert (=> b!7959840 (= e!4694317 e!4694310)))

(declare-fun b!7959841 () Bool)

(declare-fun call!738072 () tuple2!70644)

(assert (=> b!7959841 (= e!4694316 call!738072)))

(declare-fun bm!738066 () Bool)

(assert (=> bm!738066 (= call!738070 (nullable!9592 (derivativeStep!6519 r!24602 lt!2702551)))))

(declare-fun b!7959842 () Bool)

(assert (=> b!7959842 (= e!4694316 e!4694313)))

(declare-fun lt!2702831 () tuple2!70644)

(assert (=> b!7959842 (= lt!2702831 call!738072)))

(declare-fun c!1461793 () Bool)

(assert (=> b!7959842 (= c!1461793 (isEmpty!42897 (_1!38625 lt!2702831)))))

(declare-fun b!7959843 () Bool)

(assert (=> b!7959843 (= e!4694315 e!4694317)))

(declare-fun c!1461797 () Bool)

(assert (=> b!7959843 (= c!1461797 (= (+ 1 lt!2702553) lt!2702550))))

(declare-fun bm!738067 () Bool)

(assert (=> bm!738067 (= call!738072 (findLongestMatchInner!2272 call!738069 lt!2702843 (+ 1 lt!2702553 1) call!738068 input!7927 lt!2702550))))

(declare-fun b!7959844 () Bool)

(assert (=> b!7959844 (= e!4694312 (>= (size!43427 (_1!38625 lt!2702826)) (size!43427 lt!2702560)))))

(declare-fun b!7959845 () Bool)

(assert (=> b!7959845 (= e!4694313 lt!2702831)))

(declare-fun b!7959846 () Bool)

(declare-fun Unit!169996 () Unit!169982)

(assert (=> b!7959846 (= e!4694314 Unit!169996)))

(declare-fun b!7959847 () Bool)

(declare-fun Unit!169997 () Unit!169982)

(assert (=> b!7959847 (= e!4694314 Unit!169997)))

(declare-fun lt!2702841 () Unit!169982)

(assert (=> b!7959847 (= lt!2702841 call!738065)))

(assert (=> b!7959847 call!738066))

(declare-fun lt!2702827 () Unit!169982)

(assert (=> b!7959847 (= lt!2702827 lt!2702841)))

(declare-fun lt!2702835 () Unit!169982)

(assert (=> b!7959847 (= lt!2702835 call!738071)))

(assert (=> b!7959847 (= input!7927 lt!2702560)))

(declare-fun lt!2702820 () Unit!169982)

(assert (=> b!7959847 (= lt!2702820 lt!2702835)))

(assert (=> b!7959847 false))

(declare-fun b!7959848 () Bool)

(assert (=> b!7959848 (= e!4694310 (tuple2!70645 Nil!74596 input!7927))))

(assert (= (and d!2377764 c!1461794) b!7959836))

(assert (= (and d!2377764 (not c!1461794)) b!7959843))

(assert (= (and b!7959843 c!1461797) b!7959840))

(assert (= (and b!7959843 (not c!1461797)) b!7959839))

(assert (= (and b!7959840 c!1461795) b!7959837))

(assert (= (and b!7959840 (not c!1461795)) b!7959848))

(assert (= (and b!7959839 c!1461792) b!7959847))

(assert (= (and b!7959839 (not c!1461792)) b!7959846))

(assert (= (and b!7959839 c!1461796) b!7959842))

(assert (= (and b!7959839 (not c!1461796)) b!7959841))

(assert (= (and b!7959842 c!1461793) b!7959838))

(assert (= (and b!7959842 (not c!1461793)) b!7959845))

(assert (= (or b!7959842 b!7959841) bm!738063))

(assert (= (or b!7959842 b!7959841) bm!738062))

(assert (= (or b!7959842 b!7959841) bm!738061))

(assert (= (or b!7959842 b!7959841) bm!738067))

(assert (= (or b!7959840 b!7959839) bm!738066))

(assert (= (or b!7959840 b!7959847) bm!738060))

(assert (= (or b!7959840 b!7959847) bm!738065))

(assert (= (or b!7959840 b!7959847) bm!738064))

(assert (= (and d!2377764 res!3154974) b!7959835))

(assert (= (and b!7959835 (not res!3154973)) b!7959844))

(declare-fun m!8340494 () Bool)

(assert (=> b!7959844 m!8340494))

(declare-fun m!8340496 () Bool)

(assert (=> b!7959844 m!8340496))

(assert (=> bm!738062 m!8340152))

(declare-fun m!8340498 () Bool)

(assert (=> bm!738062 m!8340498))

(declare-fun m!8340500 () Bool)

(assert (=> b!7959839 m!8340500))

(declare-fun m!8340502 () Bool)

(assert (=> b!7959839 m!8340502))

(declare-fun m!8340504 () Bool)

(assert (=> b!7959839 m!8340504))

(assert (=> b!7959839 m!8340152))

(assert (=> b!7959839 m!8340498))

(assert (=> b!7959839 m!8340162))

(declare-fun m!8340506 () Bool)

(assert (=> b!7959839 m!8340506))

(declare-fun m!8340508 () Bool)

(assert (=> b!7959839 m!8340508))

(assert (=> b!7959839 m!8340508))

(declare-fun m!8340510 () Bool)

(assert (=> b!7959839 m!8340510))

(assert (=> b!7959839 m!8340502))

(assert (=> b!7959839 m!8340152))

(declare-fun m!8340512 () Bool)

(assert (=> b!7959839 m!8340512))

(declare-fun m!8340514 () Bool)

(assert (=> b!7959839 m!8340514))

(assert (=> b!7959839 m!8340496))

(declare-fun m!8340516 () Bool)

(assert (=> b!7959839 m!8340516))

(declare-fun m!8340518 () Bool)

(assert (=> b!7959839 m!8340518))

(assert (=> b!7959839 m!8340516))

(declare-fun m!8340520 () Bool)

(assert (=> b!7959839 m!8340520))

(assert (=> bm!738065 m!8340142))

(declare-fun m!8340522 () Bool)

(assert (=> bm!738060 m!8340522))

(assert (=> bm!738066 m!8340150))

(declare-fun m!8340524 () Bool)

(assert (=> bm!738066 m!8340524))

(declare-fun m!8340526 () Bool)

(assert (=> b!7959842 m!8340526))

(assert (=> bm!738061 m!8340150))

(declare-fun m!8340528 () Bool)

(assert (=> bm!738061 m!8340528))

(declare-fun m!8340530 () Bool)

(assert (=> b!7959835 m!8340530))

(assert (=> bm!738064 m!8340144))

(assert (=> bm!738063 m!8340152))

(assert (=> bm!738063 m!8340512))

(declare-fun m!8340532 () Bool)

(assert (=> bm!738067 m!8340532))

(assert (=> d!2377764 m!8340150))

(declare-fun m!8340534 () Bool)

(assert (=> d!2377764 m!8340534))

(assert (=> d!2377764 m!8340150))

(declare-fun m!8340536 () Bool)

(assert (=> d!2377764 m!8340536))

(assert (=> d!2377764 m!8340152))

(declare-fun m!8340538 () Bool)

(assert (=> d!2377764 m!8340538))

(assert (=> d!2377764 m!8340152))

(declare-fun m!8340540 () Bool)

(assert (=> d!2377764 m!8340540))

(assert (=> d!2377764 m!8340152))

(declare-fun m!8340542 () Bool)

(assert (=> d!2377764 m!8340542))

(declare-fun m!8340544 () Bool)

(assert (=> d!2377764 m!8340544))

(assert (=> d!2377764 m!8340540))

(declare-fun m!8340546 () Bool)

(assert (=> d!2377764 m!8340546))

(assert (=> d!2377764 m!8340516))

(assert (=> b!7959384 d!2377764))

(declare-fun b!7959869 () Bool)

(declare-fun c!1461808 () Bool)

(assert (=> b!7959869 (= c!1461808 (nullable!9592 (regOne!43494 r!24602)))))

(declare-fun e!4694328 () Regex!21491)

(declare-fun e!4694330 () Regex!21491)

(assert (=> b!7959869 (= e!4694328 e!4694330)))

(declare-fun d!2377766 () Bool)

(declare-fun lt!2702849 () Regex!21491)

(assert (=> d!2377766 (validRegex!11795 lt!2702849)))

(declare-fun e!4694332 () Regex!21491)

(assert (=> d!2377766 (= lt!2702849 e!4694332)))

(declare-fun c!1461811 () Bool)

(assert (=> d!2377766 (= c!1461811 (or ((_ is EmptyExpr!21491) r!24602) ((_ is EmptyLang!21491) r!24602)))))

(assert (=> d!2377766 (validRegex!11795 r!24602)))

(assert (=> d!2377766 (= (derivativeStep!6519 r!24602 lt!2702551) lt!2702849)))

(declare-fun bm!738076 () Bool)

(declare-fun call!738083 () Regex!21491)

(declare-fun call!738081 () Regex!21491)

(assert (=> bm!738076 (= call!738083 call!738081)))

(declare-fun b!7959870 () Bool)

(assert (=> b!7959870 (= e!4694330 (Union!21491 (Concat!30490 call!738083 (regTwo!43494 r!24602)) EmptyLang!21491))))

(declare-fun bm!738077 () Bool)

(declare-fun call!738082 () Regex!21491)

(assert (=> bm!738077 (= call!738081 call!738082)))

(declare-fun b!7959871 () Bool)

(declare-fun c!1461810 () Bool)

(assert (=> b!7959871 (= c!1461810 ((_ is Union!21491) r!24602))))

(declare-fun e!4694331 () Regex!21491)

(declare-fun e!4694329 () Regex!21491)

(assert (=> b!7959871 (= e!4694331 e!4694329)))

(declare-fun b!7959872 () Bool)

(assert (=> b!7959872 (= e!4694329 e!4694328)))

(declare-fun c!1461809 () Bool)

(assert (=> b!7959872 (= c!1461809 ((_ is Star!21491) r!24602))))

(declare-fun b!7959873 () Bool)

(declare-fun call!738084 () Regex!21491)

(assert (=> b!7959873 (= e!4694329 (Union!21491 call!738084 call!738082))))

(declare-fun b!7959874 () Bool)

(assert (=> b!7959874 (= e!4694331 (ite (= lt!2702551 (c!1461670 r!24602)) EmptyExpr!21491 EmptyLang!21491))))

(declare-fun bm!738078 () Bool)

(assert (=> bm!738078 (= call!738082 (derivativeStep!6519 (ite c!1461810 (regTwo!43495 r!24602) (ite c!1461809 (reg!21820 r!24602) (ite c!1461808 (regTwo!43494 r!24602) (regOne!43494 r!24602)))) lt!2702551))))

(declare-fun b!7959875 () Bool)

(assert (=> b!7959875 (= e!4694332 e!4694331)))

(declare-fun c!1461812 () Bool)

(assert (=> b!7959875 (= c!1461812 ((_ is ElementMatch!21491) r!24602))))

(declare-fun b!7959876 () Bool)

(assert (=> b!7959876 (= e!4694330 (Union!21491 (Concat!30490 call!738084 (regTwo!43494 r!24602)) call!738083))))

(declare-fun bm!738079 () Bool)

(assert (=> bm!738079 (= call!738084 (derivativeStep!6519 (ite c!1461810 (regOne!43495 r!24602) (regOne!43494 r!24602)) lt!2702551))))

(declare-fun b!7959877 () Bool)

(assert (=> b!7959877 (= e!4694332 EmptyLang!21491)))

(declare-fun b!7959878 () Bool)

(assert (=> b!7959878 (= e!4694328 (Concat!30490 call!738081 r!24602))))

(assert (= (and d!2377766 c!1461811) b!7959877))

(assert (= (and d!2377766 (not c!1461811)) b!7959875))

(assert (= (and b!7959875 c!1461812) b!7959874))

(assert (= (and b!7959875 (not c!1461812)) b!7959871))

(assert (= (and b!7959871 c!1461810) b!7959873))

(assert (= (and b!7959871 (not c!1461810)) b!7959872))

(assert (= (and b!7959872 c!1461809) b!7959878))

(assert (= (and b!7959872 (not c!1461809)) b!7959869))

(assert (= (and b!7959869 c!1461808) b!7959876))

(assert (= (and b!7959869 (not c!1461808)) b!7959870))

(assert (= (or b!7959876 b!7959870) bm!738076))

(assert (= (or b!7959878 bm!738076) bm!738077))

(assert (= (or b!7959873 bm!738077) bm!738078))

(assert (= (or b!7959873 b!7959876) bm!738079))

(declare-fun m!8340548 () Bool)

(assert (=> b!7959869 m!8340548))

(declare-fun m!8340550 () Bool)

(assert (=> d!2377766 m!8340550))

(assert (=> d!2377766 m!8340184))

(declare-fun m!8340552 () Bool)

(assert (=> bm!738078 m!8340552))

(declare-fun m!8340554 () Bool)

(assert (=> bm!738079 m!8340554))

(assert (=> b!7959384 d!2377766))

(declare-fun d!2377768 () Bool)

(assert (=> d!2377768 (= (tail!15780 lt!2702559) (t!390463 lt!2702559))))

(assert (=> b!7959384 d!2377768))

(declare-fun d!2377770 () Bool)

(assert (=> d!2377770 (isPrefix!6591 (++!18361 testedP!447 (Cons!74596 (head!16243 (getSuffix!3794 input!7927 testedP!447)) Nil!74596)) input!7927)))

(declare-fun lt!2702852 () Unit!169982)

(declare-fun choose!59977 (List!74720 List!74720) Unit!169982)

(assert (=> d!2377770 (= lt!2702852 (choose!59977 testedP!447 input!7927))))

(assert (=> d!2377770 (isPrefix!6591 testedP!447 input!7927)))

(assert (=> d!2377770 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1318 testedP!447 input!7927) lt!2702852)))

(declare-fun bs!1969705 () Bool)

(assert (= bs!1969705 d!2377770))

(assert (=> bs!1969705 m!8340168))

(assert (=> bs!1969705 m!8340424))

(declare-fun m!8340556 () Bool)

(assert (=> bs!1969705 m!8340556))

(assert (=> bs!1969705 m!8340168))

(assert (=> bs!1969705 m!8340420))

(assert (=> bs!1969705 m!8340422))

(assert (=> bs!1969705 m!8340172))

(assert (=> bs!1969705 m!8340420))

(assert (=> b!7959379 d!2377770))

(declare-fun d!2377772 () Bool)

(assert (=> d!2377772 (= (head!16243 lt!2702559) (h!81044 lt!2702559))))

(assert (=> b!7959379 d!2377772))

(declare-fun b!7959887 () Bool)

(declare-fun e!4694338 () List!74720)

(assert (=> b!7959887 (= e!4694338 (Cons!74596 lt!2702551 Nil!74596))))

(declare-fun d!2377774 () Bool)

(declare-fun e!4694337 () Bool)

(assert (=> d!2377774 e!4694337))

(declare-fun res!3154980 () Bool)

(assert (=> d!2377774 (=> (not res!3154980) (not e!4694337))))

(declare-fun lt!2702855 () List!74720)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15840 (List!74720) (InoxSet C!43320))

(assert (=> d!2377774 (= res!3154980 (= (content!15840 lt!2702855) ((_ map or) (content!15840 testedP!447) (content!15840 (Cons!74596 lt!2702551 Nil!74596)))))))

(assert (=> d!2377774 (= lt!2702855 e!4694338)))

(declare-fun c!1461815 () Bool)

(assert (=> d!2377774 (= c!1461815 ((_ is Nil!74596) testedP!447))))

(assert (=> d!2377774 (= (++!18361 testedP!447 (Cons!74596 lt!2702551 Nil!74596)) lt!2702855)))

(declare-fun b!7959890 () Bool)

(assert (=> b!7959890 (= e!4694337 (or (not (= (Cons!74596 lt!2702551 Nil!74596) Nil!74596)) (= lt!2702855 testedP!447)))))

(declare-fun b!7959888 () Bool)

(assert (=> b!7959888 (= e!4694338 (Cons!74596 (h!81044 testedP!447) (++!18361 (t!390463 testedP!447) (Cons!74596 lt!2702551 Nil!74596))))))

(declare-fun b!7959889 () Bool)

(declare-fun res!3154979 () Bool)

(assert (=> b!7959889 (=> (not res!3154979) (not e!4694337))))

(assert (=> b!7959889 (= res!3154979 (= (size!43427 lt!2702855) (+ (size!43427 testedP!447) (size!43427 (Cons!74596 lt!2702551 Nil!74596)))))))

(assert (= (and d!2377774 c!1461815) b!7959887))

(assert (= (and d!2377774 (not c!1461815)) b!7959888))

(assert (= (and d!2377774 res!3154980) b!7959889))

(assert (= (and b!7959889 res!3154979) b!7959890))

(declare-fun m!8340558 () Bool)

(assert (=> d!2377774 m!8340558))

(declare-fun m!8340560 () Bool)

(assert (=> d!2377774 m!8340560))

(declare-fun m!8340562 () Bool)

(assert (=> d!2377774 m!8340562))

(declare-fun m!8340564 () Bool)

(assert (=> b!7959888 m!8340564))

(declare-fun m!8340566 () Bool)

(assert (=> b!7959889 m!8340566))

(assert (=> b!7959889 m!8340160))

(declare-fun m!8340568 () Bool)

(assert (=> b!7959889 m!8340568))

(assert (=> b!7959379 d!2377774))

(declare-fun b!7959901 () Bool)

(declare-fun e!4694346 () Bool)

(assert (=> b!7959901 (= e!4694346 (isPrefix!6591 (tail!15780 lt!2702560) (tail!15780 input!7927)))))

(declare-fun b!7959899 () Bool)

(declare-fun e!4694345 () Bool)

(assert (=> b!7959899 (= e!4694345 e!4694346)))

(declare-fun res!3154989 () Bool)

(assert (=> b!7959899 (=> (not res!3154989) (not e!4694346))))

(assert (=> b!7959899 (= res!3154989 (not ((_ is Nil!74596) input!7927)))))

(declare-fun b!7959900 () Bool)

(declare-fun res!3154991 () Bool)

(assert (=> b!7959900 (=> (not res!3154991) (not e!4694346))))

(assert (=> b!7959900 (= res!3154991 (= (head!16243 lt!2702560) (head!16243 input!7927)))))

(declare-fun b!7959902 () Bool)

(declare-fun e!4694347 () Bool)

(assert (=> b!7959902 (= e!4694347 (>= (size!43427 input!7927) (size!43427 lt!2702560)))))

(declare-fun d!2377776 () Bool)

(assert (=> d!2377776 e!4694347))

(declare-fun res!3154990 () Bool)

(assert (=> d!2377776 (=> res!3154990 e!4694347)))

(declare-fun lt!2702858 () Bool)

(assert (=> d!2377776 (= res!3154990 (not lt!2702858))))

(assert (=> d!2377776 (= lt!2702858 e!4694345)))

(declare-fun res!3154992 () Bool)

(assert (=> d!2377776 (=> res!3154992 e!4694345)))

(assert (=> d!2377776 (= res!3154992 ((_ is Nil!74596) lt!2702560))))

(assert (=> d!2377776 (= (isPrefix!6591 lt!2702560 input!7927) lt!2702858)))

(assert (= (and d!2377776 (not res!3154992)) b!7959899))

(assert (= (and b!7959899 res!3154989) b!7959900))

(assert (= (and b!7959900 res!3154991) b!7959901))

(assert (= (and d!2377776 (not res!3154990)) b!7959902))

(declare-fun m!8340570 () Bool)

(assert (=> b!7959901 m!8340570))

(assert (=> b!7959901 m!8340446))

(assert (=> b!7959901 m!8340570))

(assert (=> b!7959901 m!8340446))

(declare-fun m!8340572 () Bool)

(assert (=> b!7959901 m!8340572))

(declare-fun m!8340574 () Bool)

(assert (=> b!7959900 m!8340574))

(declare-fun m!8340576 () Bool)

(assert (=> b!7959900 m!8340576))

(assert (=> b!7959902 m!8340162))

(assert (=> b!7959902 m!8340496))

(assert (=> b!7959379 d!2377776))

(declare-fun d!2377778 () Bool)

(declare-fun nullableFct!3782 (Regex!21491) Bool)

(assert (=> d!2377778 (= (nullable!9592 r!24602) (nullableFct!3782 r!24602))))

(declare-fun bs!1969706 () Bool)

(assert (= bs!1969706 d!2377778))

(declare-fun m!8340578 () Bool)

(assert (=> bs!1969706 m!8340578))

(assert (=> b!7959379 d!2377778))

(declare-fun d!2377780 () Bool)

(assert (=> d!2377780 (isPrefix!6591 input!7927 input!7927)))

(declare-fun lt!2702861 () Unit!169982)

(declare-fun choose!59978 (List!74720 List!74720) Unit!169982)

(assert (=> d!2377780 (= lt!2702861 (choose!59978 input!7927 input!7927))))

(assert (=> d!2377780 (= (lemmaIsPrefixRefl!4059 input!7927 input!7927) lt!2702861)))

(declare-fun bs!1969707 () Bool)

(assert (= bs!1969707 d!2377780))

(assert (=> bs!1969707 m!8340144))

(declare-fun m!8340580 () Bool)

(assert (=> bs!1969707 m!8340580))

(assert (=> b!7959378 d!2377780))

(declare-fun b!7959905 () Bool)

(declare-fun e!4694349 () Bool)

(assert (=> b!7959905 (= e!4694349 (isPrefix!6591 (tail!15780 input!7927) (tail!15780 input!7927)))))

(declare-fun b!7959903 () Bool)

(declare-fun e!4694348 () Bool)

(assert (=> b!7959903 (= e!4694348 e!4694349)))

(declare-fun res!3154993 () Bool)

(assert (=> b!7959903 (=> (not res!3154993) (not e!4694349))))

(assert (=> b!7959903 (= res!3154993 (not ((_ is Nil!74596) input!7927)))))

(declare-fun b!7959904 () Bool)

(declare-fun res!3154995 () Bool)

(assert (=> b!7959904 (=> (not res!3154995) (not e!4694349))))

(assert (=> b!7959904 (= res!3154995 (= (head!16243 input!7927) (head!16243 input!7927)))))

(declare-fun b!7959906 () Bool)

(declare-fun e!4694350 () Bool)

(assert (=> b!7959906 (= e!4694350 (>= (size!43427 input!7927) (size!43427 input!7927)))))

(declare-fun d!2377782 () Bool)

(assert (=> d!2377782 e!4694350))

(declare-fun res!3154994 () Bool)

(assert (=> d!2377782 (=> res!3154994 e!4694350)))

(declare-fun lt!2702862 () Bool)

(assert (=> d!2377782 (= res!3154994 (not lt!2702862))))

(assert (=> d!2377782 (= lt!2702862 e!4694348)))

(declare-fun res!3154996 () Bool)

(assert (=> d!2377782 (=> res!3154996 e!4694348)))

(assert (=> d!2377782 (= res!3154996 ((_ is Nil!74596) input!7927))))

(assert (=> d!2377782 (= (isPrefix!6591 input!7927 input!7927) lt!2702862)))

(assert (= (and d!2377782 (not res!3154996)) b!7959903))

(assert (= (and b!7959903 res!3154993) b!7959904))

(assert (= (and b!7959904 res!3154995) b!7959905))

(assert (= (and d!2377782 (not res!3154994)) b!7959906))

(assert (=> b!7959905 m!8340446))

(assert (=> b!7959905 m!8340446))

(assert (=> b!7959905 m!8340446))

(assert (=> b!7959905 m!8340446))

(declare-fun m!8340582 () Bool)

(assert (=> b!7959905 m!8340582))

(assert (=> b!7959904 m!8340576))

(assert (=> b!7959904 m!8340576))

(assert (=> b!7959906 m!8340162))

(assert (=> b!7959906 m!8340162))

(assert (=> b!7959378 d!2377782))

(declare-fun d!2377784 () Bool)

(assert (=> d!2377784 (= input!7927 testedP!447)))

(declare-fun lt!2702865 () Unit!169982)

(declare-fun choose!59979 (List!74720 List!74720 List!74720) Unit!169982)

(assert (=> d!2377784 (= lt!2702865 (choose!59979 input!7927 testedP!447 input!7927))))

(assert (=> d!2377784 (isPrefix!6591 input!7927 input!7927)))

(assert (=> d!2377784 (= (lemmaIsPrefixSameLengthThenSameList!1639 input!7927 testedP!447 input!7927) lt!2702865)))

(declare-fun bs!1969708 () Bool)

(assert (= bs!1969708 d!2377784))

(declare-fun m!8340584 () Bool)

(assert (=> bs!1969708 m!8340584))

(assert (=> bs!1969708 m!8340144))

(assert (=> b!7959378 d!2377784))

(declare-fun b!7959907 () Bool)

(declare-fun e!4694352 () List!74720)

(assert (=> b!7959907 (= e!4694352 lt!2702559)))

(declare-fun d!2377786 () Bool)

(declare-fun e!4694351 () Bool)

(assert (=> d!2377786 e!4694351))

(declare-fun res!3154998 () Bool)

(assert (=> d!2377786 (=> (not res!3154998) (not e!4694351))))

(declare-fun lt!2702866 () List!74720)

(assert (=> d!2377786 (= res!3154998 (= (content!15840 lt!2702866) ((_ map or) (content!15840 testedP!447) (content!15840 lt!2702559))))))

(assert (=> d!2377786 (= lt!2702866 e!4694352)))

(declare-fun c!1461816 () Bool)

(assert (=> d!2377786 (= c!1461816 ((_ is Nil!74596) testedP!447))))

(assert (=> d!2377786 (= (++!18361 testedP!447 lt!2702559) lt!2702866)))

(declare-fun b!7959910 () Bool)

(assert (=> b!7959910 (= e!4694351 (or (not (= lt!2702559 Nil!74596)) (= lt!2702866 testedP!447)))))

(declare-fun b!7959908 () Bool)

(assert (=> b!7959908 (= e!4694352 (Cons!74596 (h!81044 testedP!447) (++!18361 (t!390463 testedP!447) lt!2702559)))))

(declare-fun b!7959909 () Bool)

(declare-fun res!3154997 () Bool)

(assert (=> b!7959909 (=> (not res!3154997) (not e!4694351))))

(assert (=> b!7959909 (= res!3154997 (= (size!43427 lt!2702866) (+ (size!43427 testedP!447) (size!43427 lt!2702559))))))

(assert (= (and d!2377786 c!1461816) b!7959907))

(assert (= (and d!2377786 (not c!1461816)) b!7959908))

(assert (= (and d!2377786 res!3154998) b!7959909))

(assert (= (and b!7959909 res!3154997) b!7959910))

(declare-fun m!8340586 () Bool)

(assert (=> d!2377786 m!8340586))

(assert (=> d!2377786 m!8340560))

(declare-fun m!8340588 () Bool)

(assert (=> d!2377786 m!8340588))

(declare-fun m!8340590 () Bool)

(assert (=> b!7959908 m!8340590))

(declare-fun m!8340592 () Bool)

(assert (=> b!7959909 m!8340592))

(assert (=> b!7959909 m!8340160))

(declare-fun m!8340594 () Bool)

(assert (=> b!7959909 m!8340594))

(assert (=> b!7959389 d!2377786))

(declare-fun b!7959913 () Bool)

(declare-fun e!4694354 () Bool)

(assert (=> b!7959913 (= e!4694354 (isPrefix!6591 (tail!15780 testedP!447) (tail!15780 input!7927)))))

(declare-fun b!7959911 () Bool)

(declare-fun e!4694353 () Bool)

(assert (=> b!7959911 (= e!4694353 e!4694354)))

(declare-fun res!3154999 () Bool)

(assert (=> b!7959911 (=> (not res!3154999) (not e!4694354))))

(assert (=> b!7959911 (= res!3154999 (not ((_ is Nil!74596) input!7927)))))

(declare-fun b!7959912 () Bool)

(declare-fun res!3155001 () Bool)

(assert (=> b!7959912 (=> (not res!3155001) (not e!4694354))))

(assert (=> b!7959912 (= res!3155001 (= (head!16243 testedP!447) (head!16243 input!7927)))))

(declare-fun b!7959914 () Bool)

(declare-fun e!4694355 () Bool)

(assert (=> b!7959914 (= e!4694355 (>= (size!43427 input!7927) (size!43427 testedP!447)))))

(declare-fun d!2377788 () Bool)

(assert (=> d!2377788 e!4694355))

(declare-fun res!3155000 () Bool)

(assert (=> d!2377788 (=> res!3155000 e!4694355)))

(declare-fun lt!2702867 () Bool)

(assert (=> d!2377788 (= res!3155000 (not lt!2702867))))

(assert (=> d!2377788 (= lt!2702867 e!4694353)))

(declare-fun res!3155002 () Bool)

(assert (=> d!2377788 (=> res!3155002 e!4694353)))

(assert (=> d!2377788 (= res!3155002 ((_ is Nil!74596) testedP!447))))

(assert (=> d!2377788 (= (isPrefix!6591 testedP!447 input!7927) lt!2702867)))

(assert (= (and d!2377788 (not res!3155002)) b!7959911))

(assert (= (and b!7959911 res!3154999) b!7959912))

(assert (= (and b!7959912 res!3155001) b!7959913))

(assert (= (and d!2377788 (not res!3155000)) b!7959914))

(assert (=> b!7959913 m!8340462))

(assert (=> b!7959913 m!8340446))

(assert (=> b!7959913 m!8340462))

(assert (=> b!7959913 m!8340446))

(declare-fun m!8340596 () Bool)

(assert (=> b!7959913 m!8340596))

(assert (=> b!7959912 m!8340460))

(assert (=> b!7959912 m!8340576))

(assert (=> b!7959914 m!8340162))

(assert (=> b!7959914 m!8340160))

(assert (=> b!7959373 d!2377788))

(declare-fun b!7959928 () Bool)

(declare-fun e!4694358 () Bool)

(declare-fun tp!2371377 () Bool)

(declare-fun tp!2371379 () Bool)

(assert (=> b!7959928 (= e!4694358 (and tp!2371377 tp!2371379))))

(declare-fun b!7959926 () Bool)

(declare-fun tp!2371378 () Bool)

(declare-fun tp!2371380 () Bool)

(assert (=> b!7959926 (= e!4694358 (and tp!2371378 tp!2371380))))

(declare-fun b!7959925 () Bool)

(assert (=> b!7959925 (= e!4694358 tp_is_empty!53525)))

(declare-fun b!7959927 () Bool)

(declare-fun tp!2371381 () Bool)

(assert (=> b!7959927 (= e!4694358 tp!2371381)))

(assert (=> b!7959375 (= tp!2371294 e!4694358)))

(assert (= (and b!7959375 ((_ is ElementMatch!21491) (regOne!43495 baseR!116))) b!7959925))

(assert (= (and b!7959375 ((_ is Concat!30490) (regOne!43495 baseR!116))) b!7959926))

(assert (= (and b!7959375 ((_ is Star!21491) (regOne!43495 baseR!116))) b!7959927))

(assert (= (and b!7959375 ((_ is Union!21491) (regOne!43495 baseR!116))) b!7959928))

(declare-fun b!7959932 () Bool)

(declare-fun e!4694359 () Bool)

(declare-fun tp!2371382 () Bool)

(declare-fun tp!2371384 () Bool)

(assert (=> b!7959932 (= e!4694359 (and tp!2371382 tp!2371384))))

(declare-fun b!7959930 () Bool)

(declare-fun tp!2371383 () Bool)

(declare-fun tp!2371385 () Bool)

(assert (=> b!7959930 (= e!4694359 (and tp!2371383 tp!2371385))))

(declare-fun b!7959929 () Bool)

(assert (=> b!7959929 (= e!4694359 tp_is_empty!53525)))

(declare-fun b!7959931 () Bool)

(declare-fun tp!2371386 () Bool)

(assert (=> b!7959931 (= e!4694359 tp!2371386)))

(assert (=> b!7959375 (= tp!2371292 e!4694359)))

(assert (= (and b!7959375 ((_ is ElementMatch!21491) (regTwo!43495 baseR!116))) b!7959929))

(assert (= (and b!7959375 ((_ is Concat!30490) (regTwo!43495 baseR!116))) b!7959930))

(assert (= (and b!7959375 ((_ is Star!21491) (regTwo!43495 baseR!116))) b!7959931))

(assert (= (and b!7959375 ((_ is Union!21491) (regTwo!43495 baseR!116))) b!7959932))

(declare-fun b!7959936 () Bool)

(declare-fun e!4694360 () Bool)

(declare-fun tp!2371387 () Bool)

(declare-fun tp!2371389 () Bool)

(assert (=> b!7959936 (= e!4694360 (and tp!2371387 tp!2371389))))

(declare-fun b!7959934 () Bool)

(declare-fun tp!2371388 () Bool)

(declare-fun tp!2371390 () Bool)

(assert (=> b!7959934 (= e!4694360 (and tp!2371388 tp!2371390))))

(declare-fun b!7959933 () Bool)

(assert (=> b!7959933 (= e!4694360 tp_is_empty!53525)))

(declare-fun b!7959935 () Bool)

(declare-fun tp!2371391 () Bool)

(assert (=> b!7959935 (= e!4694360 tp!2371391)))

(assert (=> b!7959390 (= tp!2371296 e!4694360)))

(assert (= (and b!7959390 ((_ is ElementMatch!21491) (regOne!43494 r!24602))) b!7959933))

(assert (= (and b!7959390 ((_ is Concat!30490) (regOne!43494 r!24602))) b!7959934))

(assert (= (and b!7959390 ((_ is Star!21491) (regOne!43494 r!24602))) b!7959935))

(assert (= (and b!7959390 ((_ is Union!21491) (regOne!43494 r!24602))) b!7959936))

(declare-fun b!7959940 () Bool)

(declare-fun e!4694361 () Bool)

(declare-fun tp!2371392 () Bool)

(declare-fun tp!2371394 () Bool)

(assert (=> b!7959940 (= e!4694361 (and tp!2371392 tp!2371394))))

(declare-fun b!7959938 () Bool)

(declare-fun tp!2371393 () Bool)

(declare-fun tp!2371395 () Bool)

(assert (=> b!7959938 (= e!4694361 (and tp!2371393 tp!2371395))))

(declare-fun b!7959937 () Bool)

(assert (=> b!7959937 (= e!4694361 tp_is_empty!53525)))

(declare-fun b!7959939 () Bool)

(declare-fun tp!2371396 () Bool)

(assert (=> b!7959939 (= e!4694361 tp!2371396)))

(assert (=> b!7959390 (= tp!2371300 e!4694361)))

(assert (= (and b!7959390 ((_ is ElementMatch!21491) (regTwo!43494 r!24602))) b!7959937))

(assert (= (and b!7959390 ((_ is Concat!30490) (regTwo!43494 r!24602))) b!7959938))

(assert (= (and b!7959390 ((_ is Star!21491) (regTwo!43494 r!24602))) b!7959939))

(assert (= (and b!7959390 ((_ is Union!21491) (regTwo!43494 r!24602))) b!7959940))

(declare-fun b!7959944 () Bool)

(declare-fun e!4694362 () Bool)

(declare-fun tp!2371397 () Bool)

(declare-fun tp!2371399 () Bool)

(assert (=> b!7959944 (= e!4694362 (and tp!2371397 tp!2371399))))

(declare-fun b!7959942 () Bool)

(declare-fun tp!2371398 () Bool)

(declare-fun tp!2371400 () Bool)

(assert (=> b!7959942 (= e!4694362 (and tp!2371398 tp!2371400))))

(declare-fun b!7959941 () Bool)

(assert (=> b!7959941 (= e!4694362 tp_is_empty!53525)))

(declare-fun b!7959943 () Bool)

(declare-fun tp!2371401 () Bool)

(assert (=> b!7959943 (= e!4694362 tp!2371401)))

(assert (=> b!7959376 (= tp!2371297 e!4694362)))

(assert (= (and b!7959376 ((_ is ElementMatch!21491) (reg!21820 baseR!116))) b!7959941))

(assert (= (and b!7959376 ((_ is Concat!30490) (reg!21820 baseR!116))) b!7959942))

(assert (= (and b!7959376 ((_ is Star!21491) (reg!21820 baseR!116))) b!7959943))

(assert (= (and b!7959376 ((_ is Union!21491) (reg!21820 baseR!116))) b!7959944))

(declare-fun b!7959948 () Bool)

(declare-fun e!4694363 () Bool)

(declare-fun tp!2371402 () Bool)

(declare-fun tp!2371404 () Bool)

(assert (=> b!7959948 (= e!4694363 (and tp!2371402 tp!2371404))))

(declare-fun b!7959946 () Bool)

(declare-fun tp!2371403 () Bool)

(declare-fun tp!2371405 () Bool)

(assert (=> b!7959946 (= e!4694363 (and tp!2371403 tp!2371405))))

(declare-fun b!7959945 () Bool)

(assert (=> b!7959945 (= e!4694363 tp_is_empty!53525)))

(declare-fun b!7959947 () Bool)

(declare-fun tp!2371406 () Bool)

(assert (=> b!7959947 (= e!4694363 tp!2371406)))

(assert (=> b!7959371 (= tp!2371299 e!4694363)))

(assert (= (and b!7959371 ((_ is ElementMatch!21491) (reg!21820 r!24602))) b!7959945))

(assert (= (and b!7959371 ((_ is Concat!30490) (reg!21820 r!24602))) b!7959946))

(assert (= (and b!7959371 ((_ is Star!21491) (reg!21820 r!24602))) b!7959947))

(assert (= (and b!7959371 ((_ is Union!21491) (reg!21820 r!24602))) b!7959948))

(declare-fun b!7959952 () Bool)

(declare-fun e!4694364 () Bool)

(declare-fun tp!2371407 () Bool)

(declare-fun tp!2371409 () Bool)

(assert (=> b!7959952 (= e!4694364 (and tp!2371407 tp!2371409))))

(declare-fun b!7959950 () Bool)

(declare-fun tp!2371408 () Bool)

(declare-fun tp!2371410 () Bool)

(assert (=> b!7959950 (= e!4694364 (and tp!2371408 tp!2371410))))

(declare-fun b!7959949 () Bool)

(assert (=> b!7959949 (= e!4694364 tp_is_empty!53525)))

(declare-fun b!7959951 () Bool)

(declare-fun tp!2371411 () Bool)

(assert (=> b!7959951 (= e!4694364 tp!2371411)))

(assert (=> b!7959386 (= tp!2371293 e!4694364)))

(assert (= (and b!7959386 ((_ is ElementMatch!21491) (regOne!43494 baseR!116))) b!7959949))

(assert (= (and b!7959386 ((_ is Concat!30490) (regOne!43494 baseR!116))) b!7959950))

(assert (= (and b!7959386 ((_ is Star!21491) (regOne!43494 baseR!116))) b!7959951))

(assert (= (and b!7959386 ((_ is Union!21491) (regOne!43494 baseR!116))) b!7959952))

(declare-fun b!7959956 () Bool)

(declare-fun e!4694365 () Bool)

(declare-fun tp!2371412 () Bool)

(declare-fun tp!2371414 () Bool)

(assert (=> b!7959956 (= e!4694365 (and tp!2371412 tp!2371414))))

(declare-fun b!7959954 () Bool)

(declare-fun tp!2371413 () Bool)

(declare-fun tp!2371415 () Bool)

(assert (=> b!7959954 (= e!4694365 (and tp!2371413 tp!2371415))))

(declare-fun b!7959953 () Bool)

(assert (=> b!7959953 (= e!4694365 tp_is_empty!53525)))

(declare-fun b!7959955 () Bool)

(declare-fun tp!2371416 () Bool)

(assert (=> b!7959955 (= e!4694365 tp!2371416)))

(assert (=> b!7959386 (= tp!2371302 e!4694365)))

(assert (= (and b!7959386 ((_ is ElementMatch!21491) (regTwo!43494 baseR!116))) b!7959953))

(assert (= (and b!7959386 ((_ is Concat!30490) (regTwo!43494 baseR!116))) b!7959954))

(assert (= (and b!7959386 ((_ is Star!21491) (regTwo!43494 baseR!116))) b!7959955))

(assert (= (and b!7959386 ((_ is Union!21491) (regTwo!43494 baseR!116))) b!7959956))

(declare-fun b!7959960 () Bool)

(declare-fun e!4694366 () Bool)

(declare-fun tp!2371417 () Bool)

(declare-fun tp!2371419 () Bool)

(assert (=> b!7959960 (= e!4694366 (and tp!2371417 tp!2371419))))

(declare-fun b!7959958 () Bool)

(declare-fun tp!2371418 () Bool)

(declare-fun tp!2371420 () Bool)

(assert (=> b!7959958 (= e!4694366 (and tp!2371418 tp!2371420))))

(declare-fun b!7959957 () Bool)

(assert (=> b!7959957 (= e!4694366 tp_is_empty!53525)))

(declare-fun b!7959959 () Bool)

(declare-fun tp!2371421 () Bool)

(assert (=> b!7959959 (= e!4694366 tp!2371421)))

(assert (=> b!7959370 (= tp!2371298 e!4694366)))

(assert (= (and b!7959370 ((_ is ElementMatch!21491) (regOne!43495 r!24602))) b!7959957))

(assert (= (and b!7959370 ((_ is Concat!30490) (regOne!43495 r!24602))) b!7959958))

(assert (= (and b!7959370 ((_ is Star!21491) (regOne!43495 r!24602))) b!7959959))

(assert (= (and b!7959370 ((_ is Union!21491) (regOne!43495 r!24602))) b!7959960))

(declare-fun b!7959964 () Bool)

(declare-fun e!4694367 () Bool)

(declare-fun tp!2371422 () Bool)

(declare-fun tp!2371424 () Bool)

(assert (=> b!7959964 (= e!4694367 (and tp!2371422 tp!2371424))))

(declare-fun b!7959962 () Bool)

(declare-fun tp!2371423 () Bool)

(declare-fun tp!2371425 () Bool)

(assert (=> b!7959962 (= e!4694367 (and tp!2371423 tp!2371425))))

(declare-fun b!7959961 () Bool)

(assert (=> b!7959961 (= e!4694367 tp_is_empty!53525)))

(declare-fun b!7959963 () Bool)

(declare-fun tp!2371426 () Bool)

(assert (=> b!7959963 (= e!4694367 tp!2371426)))

(assert (=> b!7959370 (= tp!2371295 e!4694367)))

(assert (= (and b!7959370 ((_ is ElementMatch!21491) (regTwo!43495 r!24602))) b!7959961))

(assert (= (and b!7959370 ((_ is Concat!30490) (regTwo!43495 r!24602))) b!7959962))

(assert (= (and b!7959370 ((_ is Star!21491) (regTwo!43495 r!24602))) b!7959963))

(assert (= (and b!7959370 ((_ is Union!21491) (regTwo!43495 r!24602))) b!7959964))

(declare-fun b!7959969 () Bool)

(declare-fun e!4694370 () Bool)

(declare-fun tp!2371429 () Bool)

(assert (=> b!7959969 (= e!4694370 (and tp_is_empty!53525 tp!2371429))))

(assert (=> b!7959381 (= tp!2371291 e!4694370)))

(assert (= (and b!7959381 ((_ is Cons!74596) (t!390463 testedP!447))) b!7959969))

(declare-fun b!7959970 () Bool)

(declare-fun e!4694371 () Bool)

(declare-fun tp!2371430 () Bool)

(assert (=> b!7959970 (= e!4694371 (and tp_is_empty!53525 tp!2371430))))

(assert (=> b!7959388 (= tp!2371301 e!4694371)))

(assert (= (and b!7959388 ((_ is Cons!74596) (t!390463 input!7927))) b!7959970))

(check-sat (not bm!738046) (not bm!738047) (not bm!738059) (not b!7959901) (not b!7959817) (not bm!737966) (not b!7959936) (not d!2377774) (not b!7959909) (not b!7959904) (not d!2377766) (not d!2377758) (not b!7959927) (not b!7959932) (not b!7959889) (not b!7959833) (not d!2377778) (not b!7959944) (not b!7959946) (not d!2377756) (not b!7959955) (not d!2377784) (not b!7959834) (not b!7959902) (not b!7959906) (not bm!738054) (not bm!738064) (not bm!738048) (not d!2377780) (not b!7959769) (not b!7959947) (not bm!738051) (not b!7959812) (not b!7959760) (not d!2377760) (not b!7959938) (not b!7959807) (not bm!738053) (not b!7959928) (not bm!738058) (not b!7959749) (not b!7959914) (not b!7959423) (not b!7959751) (not bm!738045) (not b!7959912) (not bm!738052) (not d!2377690) (not b!7959964) (not bm!738060) (not b!7959960) (not b!7959939) (not b!7959767) (not b!7959913) (not bm!738065) (not b!7959742) (not b!7959819) (not b!7959930) (not b!7959926) (not b!7959970) (not d!2377746) (not b!7959940) (not b!7959934) (not bm!738050) (not bm!738079) (not b!7959952) (not b!7959908) (not b!7959958) (not b!7959942) (not b!7959842) (not d!2377786) (not bm!737967) (not d!2377764) (not bm!738049) (not b!7959954) (not b!7959395) (not b!7959950) (not b!7959900) (not bm!738062) (not bm!738061) (not b!7959905) tp_is_empty!53525 (not b!7959959) (not b!7959943) (not bm!738066) (not d!2377696) (not d!2377692) (not b!7959746) (not bm!738067) (not b!7959962) (not b!7959820) (not b!7959956) (not b!7959963) (not bm!738078) (not b!7959869) (not b!7959826) (not b!7959835) (not b!7959824) (not b!7959948) (not b!7959839) (not b!7959810) (not b!7959935) (not b!7959888) (not b!7959951) (not b!7959831) (not d!2377770) (not b!7959821) (not b!7959844) (not b!7959778) (not b!7959969) (not bm!738063) (not b!7959931))
(check-sat)
