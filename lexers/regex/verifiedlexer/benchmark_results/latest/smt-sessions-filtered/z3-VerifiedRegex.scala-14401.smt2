; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750676 () Bool)

(assert start!750676)

(declare-fun b!7958314 () Bool)

(declare-fun res!3154450 () Bool)

(declare-fun e!4693517 () Bool)

(assert (=> b!7958314 (=> (not res!3154450) (not e!4693517))))

(declare-datatypes ((C!43304 0))(
  ( (C!43305 (val!32200 Int)) )
))
(declare-datatypes ((List!74712 0))(
  ( (Nil!74588) (Cons!74588 (h!81036 C!43304) (t!390455 List!74712)) )
))
(declare-fun testedP!447 () List!74712)

(declare-fun input!7927 () List!74712)

(declare-fun isPrefix!6583 (List!74712 List!74712) Bool)

(assert (=> b!7958314 (= res!3154450 (isPrefix!6583 testedP!447 input!7927))))

(declare-fun b!7958315 () Bool)

(declare-fun e!4693513 () Bool)

(declare-fun tp_is_empty!53509 () Bool)

(assert (=> b!7958315 (= e!4693513 tp_is_empty!53509)))

(declare-fun b!7958316 () Bool)

(declare-datatypes ((Unit!169938 0))(
  ( (Unit!169939) )
))
(declare-fun e!4693516 () Unit!169938)

(declare-fun Unit!169940 () Unit!169938)

(assert (=> b!7958316 (= e!4693516 Unit!169940)))

(declare-fun lt!2701962 () Unit!169938)

(declare-fun lemmaIsPrefixRefl!4051 (List!74712 List!74712) Unit!169938)

(assert (=> b!7958316 (= lt!2701962 (lemmaIsPrefixRefl!4051 input!7927 input!7927))))

(assert (=> b!7958316 (isPrefix!6583 input!7927 input!7927)))

(declare-fun lt!2701967 () Unit!169938)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1631 (List!74712 List!74712 List!74712) Unit!169938)

(assert (=> b!7958316 (= lt!2701967 (lemmaIsPrefixSameLengthThenSameList!1631 input!7927 testedP!447 input!7927))))

(assert (=> b!7958316 false))

(declare-fun b!7958317 () Bool)

(declare-fun e!4693515 () Bool)

(declare-fun tp!2370884 () Bool)

(declare-fun tp!2370880 () Bool)

(assert (=> b!7958317 (= e!4693515 (and tp!2370884 tp!2370880))))

(declare-fun b!7958318 () Bool)

(declare-fun tp!2370882 () Bool)

(assert (=> b!7958318 (= e!4693515 tp!2370882)))

(declare-fun b!7958319 () Bool)

(declare-fun e!4693518 () Bool)

(declare-fun tp!2370883 () Bool)

(assert (=> b!7958319 (= e!4693518 (and tp_is_empty!53509 tp!2370883))))

(declare-fun b!7958320 () Bool)

(declare-fun tp!2370885 () Bool)

(declare-fun tp!2370877 () Bool)

(assert (=> b!7958320 (= e!4693513 (and tp!2370885 tp!2370877))))

(declare-fun res!3154452 () Bool)

(assert (=> start!750676 (=> (not res!3154452) (not e!4693517))))

(declare-datatypes ((Regex!21483 0))(
  ( (ElementMatch!21483 (c!1461494 C!43304)) (Concat!30482 (regOne!43478 Regex!21483) (regTwo!43478 Regex!21483)) (EmptyExpr!21483) (Star!21483 (reg!21812 Regex!21483)) (EmptyLang!21483) (Union!21483 (regOne!43479 Regex!21483) (regTwo!43479 Regex!21483)) )
))
(declare-fun baseR!116 () Regex!21483)

(declare-fun validRegex!11787 (Regex!21483) Bool)

(assert (=> start!750676 (= res!3154452 (validRegex!11787 baseR!116))))

(assert (=> start!750676 e!4693517))

(assert (=> start!750676 e!4693515))

(declare-fun e!4693514 () Bool)

(assert (=> start!750676 e!4693514))

(assert (=> start!750676 e!4693518))

(assert (=> start!750676 e!4693513))

(declare-fun b!7958321 () Bool)

(assert (=> b!7958321 (= e!4693515 tp_is_empty!53509)))

(declare-fun b!7958322 () Bool)

(declare-fun tp!2370876 () Bool)

(declare-fun tp!2370878 () Bool)

(assert (=> b!7958322 (= e!4693515 (and tp!2370876 tp!2370878))))

(declare-fun b!7958323 () Bool)

(declare-fun tp!2370881 () Bool)

(assert (=> b!7958323 (= e!4693514 (and tp_is_empty!53509 tp!2370881))))

(declare-fun b!7958324 () Bool)

(declare-fun res!3154456 () Bool)

(declare-fun e!4693520 () Bool)

(assert (=> b!7958324 (=> (not res!3154456) (not e!4693520))))

(assert (=> b!7958324 (= res!3154456 (not (= testedP!447 input!7927)))))

(declare-fun b!7958325 () Bool)

(declare-fun e!4693521 () Bool)

(assert (=> b!7958325 (= e!4693521 true)))

(declare-fun lt!2701960 () List!74712)

(declare-fun lt!2701965 () Int)

(declare-datatypes ((tuple2!70628 0))(
  ( (tuple2!70629 (_1!38617 List!74712) (_2!38617 List!74712)) )
))
(declare-fun lt!2701961 () tuple2!70628)

(declare-fun r!24602 () Regex!21483)

(declare-fun lt!2701963 () List!74712)

(declare-fun lt!2701964 () C!43304)

(declare-fun lt!2701966 () Int)

(declare-fun findLongestMatchInner!2264 (Regex!21483 List!74712 Int List!74712 List!74712 Int) tuple2!70628)

(declare-fun derivativeStep!6511 (Regex!21483 C!43304) Regex!21483)

(declare-fun tail!15772 (List!74712) List!74712)

(assert (=> b!7958325 (= lt!2701961 (findLongestMatchInner!2264 (derivativeStep!6511 r!24602 lt!2701964) lt!2701963 (+ 1 lt!2701965) (tail!15772 lt!2701960) input!7927 lt!2701966))))

(declare-fun b!7958326 () Bool)

(declare-fun e!4693519 () Bool)

(assert (=> b!7958326 (= e!4693519 e!4693521)))

(declare-fun res!3154455 () Bool)

(assert (=> b!7958326 (=> res!3154455 e!4693521)))

(declare-fun nullable!9584 (Regex!21483) Bool)

(assert (=> b!7958326 (= res!3154455 (not (nullable!9584 r!24602)))))

(assert (=> b!7958326 (isPrefix!6583 lt!2701963 input!7927)))

(declare-fun lt!2701969 () Unit!169938)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1310 (List!74712 List!74712) Unit!169938)

(assert (=> b!7958326 (= lt!2701969 (lemmaAddHeadSuffixToPrefixStillPrefix!1310 testedP!447 input!7927))))

(declare-fun ++!18353 (List!74712 List!74712) List!74712)

(assert (=> b!7958326 (= lt!2701963 (++!18353 testedP!447 (Cons!74588 lt!2701964 Nil!74588)))))

(declare-fun head!16235 (List!74712) C!43304)

(assert (=> b!7958326 (= lt!2701964 (head!16235 lt!2701960))))

(declare-fun b!7958327 () Bool)

(assert (=> b!7958327 (= e!4693517 e!4693520)))

(declare-fun res!3154451 () Bool)

(assert (=> b!7958327 (=> (not res!3154451) (not e!4693520))))

(declare-fun isEmpty!42889 (List!74712) Bool)

(assert (=> b!7958327 (= res!3154451 (not (isEmpty!42889 (_1!38617 (findLongestMatchInner!2264 r!24602 testedP!447 lt!2701965 lt!2701960 input!7927 lt!2701966)))))))

(declare-fun size!43419 (List!74712) Int)

(assert (=> b!7958327 (= lt!2701966 (size!43419 input!7927))))

(declare-fun getSuffix!3786 (List!74712 List!74712) List!74712)

(assert (=> b!7958327 (= lt!2701960 (getSuffix!3786 input!7927 testedP!447))))

(assert (=> b!7958327 (= lt!2701965 (size!43419 testedP!447))))

(declare-fun b!7958328 () Bool)

(declare-fun tp!2370886 () Bool)

(declare-fun tp!2370875 () Bool)

(assert (=> b!7958328 (= e!4693513 (and tp!2370886 tp!2370875))))

(declare-fun b!7958329 () Bool)

(declare-fun Unit!169941 () Unit!169938)

(assert (=> b!7958329 (= e!4693516 Unit!169941)))

(declare-fun b!7958330 () Bool)

(assert (=> b!7958330 (= e!4693520 (not e!4693519))))

(declare-fun res!3154454 () Bool)

(assert (=> b!7958330 (=> res!3154454 e!4693519)))

(assert (=> b!7958330 (= res!3154454 (>= lt!2701965 lt!2701966))))

(declare-fun lt!2701959 () Unit!169938)

(assert (=> b!7958330 (= lt!2701959 e!4693516)))

(declare-fun c!1461493 () Bool)

(assert (=> b!7958330 (= c!1461493 (= lt!2701965 lt!2701966))))

(assert (=> b!7958330 (<= lt!2701965 lt!2701966)))

(declare-fun lt!2701968 () Unit!169938)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1100 (List!74712 List!74712) Unit!169938)

(assert (=> b!7958330 (= lt!2701968 (lemmaIsPrefixThenSmallerEqSize!1100 testedP!447 input!7927))))

(declare-fun b!7958331 () Bool)

(declare-fun res!3154453 () Bool)

(assert (=> b!7958331 (=> (not res!3154453) (not e!4693517))))

(declare-fun derivative!669 (Regex!21483 List!74712) Regex!21483)

(assert (=> b!7958331 (= res!3154453 (= (derivative!669 baseR!116 testedP!447) r!24602))))

(declare-fun b!7958332 () Bool)

(declare-fun tp!2370879 () Bool)

(assert (=> b!7958332 (= e!4693513 tp!2370879)))

(assert (= (and start!750676 res!3154452) b!7958314))

(assert (= (and b!7958314 res!3154450) b!7958331))

(assert (= (and b!7958331 res!3154453) b!7958327))

(assert (= (and b!7958327 res!3154451) b!7958324))

(assert (= (and b!7958324 res!3154456) b!7958330))

(assert (= (and b!7958330 c!1461493) b!7958316))

(assert (= (and b!7958330 (not c!1461493)) b!7958329))

(assert (= (and b!7958330 (not res!3154454)) b!7958326))

(assert (= (and b!7958326 (not res!3154455)) b!7958325))

(get-info :version)

(assert (= (and start!750676 ((_ is ElementMatch!21483) baseR!116)) b!7958321))

(assert (= (and start!750676 ((_ is Concat!30482) baseR!116)) b!7958317))

(assert (= (and start!750676 ((_ is Star!21483) baseR!116)) b!7958318))

(assert (= (and start!750676 ((_ is Union!21483) baseR!116)) b!7958322))

(assert (= (and start!750676 ((_ is Cons!74588) testedP!447)) b!7958323))

(assert (= (and start!750676 ((_ is Cons!74588) input!7927)) b!7958319))

(assert (= (and start!750676 ((_ is ElementMatch!21483) r!24602)) b!7958315))

(assert (= (and start!750676 ((_ is Concat!30482) r!24602)) b!7958328))

(assert (= (and start!750676 ((_ is Star!21483) r!24602)) b!7958332))

(assert (= (and start!750676 ((_ is Union!21483) r!24602)) b!7958320))

(declare-fun m!8339370 () Bool)

(assert (=> b!7958326 m!8339370))

(declare-fun m!8339372 () Bool)

(assert (=> b!7958326 m!8339372))

(declare-fun m!8339374 () Bool)

(assert (=> b!7958326 m!8339374))

(declare-fun m!8339376 () Bool)

(assert (=> b!7958326 m!8339376))

(declare-fun m!8339378 () Bool)

(assert (=> b!7958326 m!8339378))

(declare-fun m!8339380 () Bool)

(assert (=> start!750676 m!8339380))

(declare-fun m!8339382 () Bool)

(assert (=> b!7958331 m!8339382))

(declare-fun m!8339384 () Bool)

(assert (=> b!7958325 m!8339384))

(declare-fun m!8339386 () Bool)

(assert (=> b!7958325 m!8339386))

(assert (=> b!7958325 m!8339384))

(assert (=> b!7958325 m!8339386))

(declare-fun m!8339388 () Bool)

(assert (=> b!7958325 m!8339388))

(declare-fun m!8339390 () Bool)

(assert (=> b!7958314 m!8339390))

(declare-fun m!8339392 () Bool)

(assert (=> b!7958327 m!8339392))

(declare-fun m!8339394 () Bool)

(assert (=> b!7958327 m!8339394))

(declare-fun m!8339396 () Bool)

(assert (=> b!7958327 m!8339396))

(declare-fun m!8339398 () Bool)

(assert (=> b!7958327 m!8339398))

(declare-fun m!8339400 () Bool)

(assert (=> b!7958327 m!8339400))

(declare-fun m!8339402 () Bool)

(assert (=> b!7958330 m!8339402))

(declare-fun m!8339404 () Bool)

(assert (=> b!7958316 m!8339404))

(declare-fun m!8339406 () Bool)

(assert (=> b!7958316 m!8339406))

(declare-fun m!8339408 () Bool)

(assert (=> b!7958316 m!8339408))

(check-sat (not b!7958323) (not b!7958332) (not b!7958322) tp_is_empty!53509 (not b!7958326) (not b!7958314) (not b!7958318) (not b!7958317) (not b!7958325) (not b!7958316) (not b!7958319) (not b!7958330) (not start!750676) (not b!7958327) (not b!7958320) (not b!7958328) (not b!7958331))
(check-sat)
