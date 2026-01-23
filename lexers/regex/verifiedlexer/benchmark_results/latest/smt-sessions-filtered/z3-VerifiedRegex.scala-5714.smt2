; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284208 () Bool)

(assert start!284208)

(declare-fun b!2917670 () Bool)

(assert (=> b!2917670 true))

(assert (=> b!2917670 true))

(declare-fun lambda!108560 () Int)

(declare-fun lambda!108559 () Int)

(assert (=> b!2917670 (not (= lambda!108560 lambda!108559))))

(assert (=> b!2917670 true))

(assert (=> b!2917670 true))

(declare-fun b!2917666 () Bool)

(declare-fun res!1204532 () Bool)

(declare-fun e!1840951 () Bool)

(assert (=> b!2917666 (=> res!1204532 e!1840951)))

(declare-datatypes ((C!18144 0))(
  ( (C!18145 (val!11108 Int)) )
))
(declare-datatypes ((Regex!8979 0))(
  ( (ElementMatch!8979 (c!475941 C!18144)) (Concat!14300 (regOne!18470 Regex!8979) (regTwo!18470 Regex!8979)) (EmptyExpr!8979) (Star!8979 (reg!9308 Regex!8979)) (EmptyLang!8979) (Union!8979 (regOne!18471 Regex!8979) (regTwo!18471 Regex!8979)) )
))
(declare-fun r!17423 () Regex!8979)

(declare-datatypes ((List!34844 0))(
  ( (Nil!34720) (Cons!34720 (h!40140 C!18144) (t!233909 List!34844)) )
))
(declare-datatypes ((tuple2!33696 0))(
  ( (tuple2!33697 (_1!19980 List!34844) (_2!19980 List!34844)) )
))
(declare-fun lt!1025097 () tuple2!33696)

(declare-fun matchR!3861 (Regex!8979 List!34844) Bool)

(assert (=> b!2917666 (= res!1204532 (not (matchR!3861 (regTwo!18470 r!17423) (_2!19980 lt!1025097))))))

(declare-fun b!2917667 () Bool)

(declare-fun e!1840952 () Bool)

(declare-fun tp!936639 () Bool)

(assert (=> b!2917667 (= e!1840952 tp!936639)))

(declare-fun b!2917668 () Bool)

(declare-fun tp!936638 () Bool)

(declare-fun tp!936637 () Bool)

(assert (=> b!2917668 (= e!1840952 (and tp!936638 tp!936637))))

(declare-fun b!2917669 () Bool)

(declare-fun e!1840953 () Bool)

(declare-fun e!1840949 () Bool)

(assert (=> b!2917669 (= e!1840953 (not e!1840949))))

(declare-fun res!1204529 () Bool)

(assert (=> b!2917669 (=> res!1204529 e!1840949)))

(declare-fun lt!1025096 () Bool)

(get-info :version)

(assert (=> b!2917669 (= res!1204529 (or (not lt!1025096) (not ((_ is Concat!14300) r!17423))))))

(declare-fun s!11993 () List!34844)

(declare-fun matchRSpec!1116 (Regex!8979 List!34844) Bool)

(assert (=> b!2917669 (= lt!1025096 (matchRSpec!1116 r!17423 s!11993))))

(assert (=> b!2917669 (= lt!1025096 (matchR!3861 r!17423 s!11993))))

(declare-datatypes ((Unit!48297 0))(
  ( (Unit!48298) )
))
(declare-fun lt!1025093 () Unit!48297)

(declare-fun mainMatchTheorem!1116 (Regex!8979 List!34844) Unit!48297)

(assert (=> b!2917669 (= lt!1025093 (mainMatchTheorem!1116 r!17423 s!11993))))

(assert (=> b!2917670 (= e!1840949 e!1840951)))

(declare-fun res!1204531 () Bool)

(assert (=> b!2917670 (=> res!1204531 e!1840951)))

(assert (=> b!2917670 (= res!1204531 (not (matchR!3861 (regOne!18470 r!17423) (_1!19980 lt!1025097))))))

(declare-datatypes ((Option!6580 0))(
  ( (None!6579) (Some!6579 (v!34713 tuple2!33696)) )
))
(declare-fun lt!1025090 () Option!6580)

(declare-fun get!10570 (Option!6580) tuple2!33696)

(assert (=> b!2917670 (= lt!1025097 (get!10570 lt!1025090))))

(declare-fun Exists!1359 (Int) Bool)

(assert (=> b!2917670 (= (Exists!1359 lambda!108559) (Exists!1359 lambda!108560))))

(declare-fun lt!1025099 () Unit!48297)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!500 (Regex!8979 Regex!8979 List!34844) Unit!48297)

(assert (=> b!2917670 (= lt!1025099 (lemmaExistCutMatchRandMatchRSpecEquivalent!500 (regOne!18470 r!17423) (regTwo!18470 r!17423) s!11993))))

(declare-fun isDefined!5131 (Option!6580) Bool)

(assert (=> b!2917670 (= (isDefined!5131 lt!1025090) (Exists!1359 lambda!108559))))

(declare-fun findConcatSeparation!974 (Regex!8979 Regex!8979 List!34844 List!34844 List!34844) Option!6580)

(assert (=> b!2917670 (= lt!1025090 (findConcatSeparation!974 (regOne!18470 r!17423) (regTwo!18470 r!17423) Nil!34720 s!11993 s!11993))))

(declare-fun lt!1025089 () Unit!48297)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!756 (Regex!8979 Regex!8979 List!34844) Unit!48297)

(assert (=> b!2917670 (= lt!1025089 (lemmaFindConcatSeparationEquivalentToExists!756 (regOne!18470 r!17423) (regTwo!18470 r!17423) s!11993))))

(declare-fun b!2917671 () Bool)

(declare-fun tp_is_empty!15521 () Bool)

(assert (=> b!2917671 (= e!1840952 tp_is_empty!15521)))

(declare-fun b!2917673 () Bool)

(declare-fun e!1840950 () Bool)

(assert (=> b!2917673 (= e!1840950 true)))

(declare-fun lt!1025094 () Regex!8979)

(declare-fun lt!1025095 () Regex!8979)

(declare-fun ++!8285 (List!34844 List!34844) List!34844)

(assert (=> b!2917673 (matchR!3861 (Concat!14300 lt!1025094 lt!1025095) (++!8285 (_1!19980 lt!1025097) (_2!19980 lt!1025097)))))

(declare-fun lt!1025098 () Unit!48297)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!148 (Regex!8979 Regex!8979 List!34844 List!34844) Unit!48297)

(assert (=> b!2917673 (= lt!1025098 (lemmaTwoRegexMatchThenConcatMatchesConcatString!148 lt!1025094 lt!1025095 (_1!19980 lt!1025097) (_2!19980 lt!1025097)))))

(declare-fun b!2917674 () Bool)

(assert (=> b!2917674 (= e!1840951 e!1840950)))

(declare-fun res!1204533 () Bool)

(assert (=> b!2917674 (=> res!1204533 e!1840950)))

(declare-fun validRegex!3712 (Regex!8979) Bool)

(assert (=> b!2917674 (= res!1204533 (not (validRegex!3712 lt!1025094)))))

(assert (=> b!2917674 (matchR!3861 lt!1025095 (_2!19980 lt!1025097))))

(declare-fun simplify!16 (Regex!8979) Regex!8979)

(assert (=> b!2917674 (= lt!1025095 (simplify!16 (regTwo!18470 r!17423)))))

(declare-fun lt!1025092 () Unit!48297)

(declare-fun lemmaSimplifySound!14 (Regex!8979 List!34844) Unit!48297)

(assert (=> b!2917674 (= lt!1025092 (lemmaSimplifySound!14 (regTwo!18470 r!17423) (_2!19980 lt!1025097)))))

(assert (=> b!2917674 (matchR!3861 lt!1025094 (_1!19980 lt!1025097))))

(assert (=> b!2917674 (= lt!1025094 (simplify!16 (regOne!18470 r!17423)))))

(declare-fun lt!1025091 () Unit!48297)

(assert (=> b!2917674 (= lt!1025091 (lemmaSimplifySound!14 (regOne!18470 r!17423) (_1!19980 lt!1025097)))))

(declare-fun b!2917675 () Bool)

(declare-fun tp!936641 () Bool)

(declare-fun tp!936636 () Bool)

(assert (=> b!2917675 (= e!1840952 (and tp!936641 tp!936636))))

(declare-fun b!2917672 () Bool)

(declare-fun res!1204528 () Bool)

(assert (=> b!2917672 (=> res!1204528 e!1840950)))

(assert (=> b!2917672 (= res!1204528 (not (validRegex!3712 lt!1025095)))))

(declare-fun res!1204534 () Bool)

(assert (=> start!284208 (=> (not res!1204534) (not e!1840953))))

(assert (=> start!284208 (= res!1204534 (validRegex!3712 r!17423))))

(assert (=> start!284208 e!1840953))

(assert (=> start!284208 e!1840952))

(declare-fun e!1840948 () Bool)

(assert (=> start!284208 e!1840948))

(declare-fun b!2917676 () Bool)

(declare-fun tp!936640 () Bool)

(assert (=> b!2917676 (= e!1840948 (and tp_is_empty!15521 tp!936640))))

(declare-fun b!2917677 () Bool)

(declare-fun res!1204530 () Bool)

(assert (=> b!2917677 (=> res!1204530 e!1840949)))

(declare-fun isEmpty!18977 (List!34844) Bool)

(assert (=> b!2917677 (= res!1204530 (isEmpty!18977 s!11993))))

(assert (= (and start!284208 res!1204534) b!2917669))

(assert (= (and b!2917669 (not res!1204529)) b!2917677))

(assert (= (and b!2917677 (not res!1204530)) b!2917670))

(assert (= (and b!2917670 (not res!1204531)) b!2917666))

(assert (= (and b!2917666 (not res!1204532)) b!2917674))

(assert (= (and b!2917674 (not res!1204533)) b!2917672))

(assert (= (and b!2917672 (not res!1204528)) b!2917673))

(assert (= (and start!284208 ((_ is ElementMatch!8979) r!17423)) b!2917671))

(assert (= (and start!284208 ((_ is Concat!14300) r!17423)) b!2917675))

(assert (= (and start!284208 ((_ is Star!8979) r!17423)) b!2917667))

(assert (= (and start!284208 ((_ is Union!8979) r!17423)) b!2917668))

(assert (= (and start!284208 ((_ is Cons!34720) s!11993)) b!2917676))

(declare-fun m!3315635 () Bool)

(assert (=> b!2917677 m!3315635))

(declare-fun m!3315637 () Bool)

(assert (=> b!2917674 m!3315637))

(declare-fun m!3315639 () Bool)

(assert (=> b!2917674 m!3315639))

(declare-fun m!3315641 () Bool)

(assert (=> b!2917674 m!3315641))

(declare-fun m!3315643 () Bool)

(assert (=> b!2917674 m!3315643))

(declare-fun m!3315645 () Bool)

(assert (=> b!2917674 m!3315645))

(declare-fun m!3315647 () Bool)

(assert (=> b!2917674 m!3315647))

(declare-fun m!3315649 () Bool)

(assert (=> b!2917674 m!3315649))

(declare-fun m!3315651 () Bool)

(assert (=> b!2917666 m!3315651))

(declare-fun m!3315653 () Bool)

(assert (=> b!2917672 m!3315653))

(declare-fun m!3315655 () Bool)

(assert (=> b!2917669 m!3315655))

(declare-fun m!3315657 () Bool)

(assert (=> b!2917669 m!3315657))

(declare-fun m!3315659 () Bool)

(assert (=> b!2917669 m!3315659))

(declare-fun m!3315661 () Bool)

(assert (=> b!2917670 m!3315661))

(declare-fun m!3315663 () Bool)

(assert (=> b!2917670 m!3315663))

(declare-fun m!3315665 () Bool)

(assert (=> b!2917670 m!3315665))

(declare-fun m!3315667 () Bool)

(assert (=> b!2917670 m!3315667))

(declare-fun m!3315669 () Bool)

(assert (=> b!2917670 m!3315669))

(declare-fun m!3315671 () Bool)

(assert (=> b!2917670 m!3315671))

(assert (=> b!2917670 m!3315665))

(declare-fun m!3315673 () Bool)

(assert (=> b!2917670 m!3315673))

(declare-fun m!3315675 () Bool)

(assert (=> b!2917670 m!3315675))

(declare-fun m!3315677 () Bool)

(assert (=> start!284208 m!3315677))

(declare-fun m!3315679 () Bool)

(assert (=> b!2917673 m!3315679))

(assert (=> b!2917673 m!3315679))

(declare-fun m!3315681 () Bool)

(assert (=> b!2917673 m!3315681))

(declare-fun m!3315683 () Bool)

(assert (=> b!2917673 m!3315683))

(check-sat (not b!2917667) (not b!2917672) tp_is_empty!15521 (not start!284208) (not b!2917669) (not b!2917676) (not b!2917677) (not b!2917668) (not b!2917670) (not b!2917674) (not b!2917675) (not b!2917673) (not b!2917666))
(check-sat)
