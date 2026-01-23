; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285324 () Bool)

(assert start!285324)

(declare-fun b!2935680 () Bool)

(assert (=> b!2935680 true))

(assert (=> b!2935680 true))

(assert (=> b!2935680 true))

(declare-fun lambda!109388 () Int)

(declare-fun lambda!109387 () Int)

(assert (=> b!2935680 (not (= lambda!109388 lambda!109387))))

(assert (=> b!2935680 true))

(assert (=> b!2935680 true))

(assert (=> b!2935680 true))

(declare-fun b!2935674 () Bool)

(declare-fun res!1211983 () Bool)

(declare-fun e!1850641 () Bool)

(assert (=> b!2935674 (=> res!1211983 e!1850641)))

(declare-datatypes ((C!18320 0))(
  ( (C!18321 (val!11196 Int)) )
))
(declare-datatypes ((List!34932 0))(
  ( (Nil!34808) (Cons!34808 (h!40228 C!18320) (t!233997 List!34932)) )
))
(declare-fun s!11993 () List!34932)

(declare-fun isEmpty!19069 (List!34932) Bool)

(assert (=> b!2935674 (= res!1211983 (isEmpty!19069 s!11993))))

(declare-fun b!2935675 () Bool)

(declare-fun e!1850645 () Bool)

(declare-fun e!1850640 () Bool)

(assert (=> b!2935675 (= e!1850645 e!1850640)))

(declare-fun res!1211982 () Bool)

(assert (=> b!2935675 (=> res!1211982 e!1850640)))

(declare-datatypes ((Regex!9067 0))(
  ( (ElementMatch!9067 (c!479667 C!18320)) (Concat!14388 (regOne!18646 Regex!9067) (regTwo!18646 Regex!9067)) (EmptyExpr!9067) (Star!9067 (reg!9396 Regex!9067)) (EmptyLang!9067) (Union!9067 (regOne!18647 Regex!9067) (regTwo!18647 Regex!9067)) )
))
(declare-fun lt!1029130 () Regex!9067)

(declare-fun lt!1029131 () Regex!9067)

(assert (=> b!2935675 (= res!1211982 (not (= lt!1029130 lt!1029131)))))

(declare-fun lt!1029124 () Regex!9067)

(assert (=> b!2935675 (= lt!1029131 (Star!9067 lt!1029124))))

(declare-datatypes ((tuple2!33784 0))(
  ( (tuple2!33785 (_1!20024 List!34932) (_2!20024 List!34932)) )
))
(declare-fun lt!1029121 () tuple2!33784)

(declare-fun matchR!3949 (Regex!9067 List!34932) Bool)

(assert (=> b!2935675 (matchR!3949 lt!1029130 (_2!20024 lt!1029121))))

(declare-fun lt!1029118 () Regex!9067)

(declare-fun simplify!74 (Regex!9067) Regex!9067)

(assert (=> b!2935675 (= lt!1029130 (simplify!74 lt!1029118))))

(declare-datatypes ((Unit!48507 0))(
  ( (Unit!48508) )
))
(declare-fun lt!1029122 () Unit!48507)

(declare-fun lemmaSimplifySound!70 (Regex!9067 List!34932) Unit!48507)

(assert (=> b!2935675 (= lt!1029122 (lemmaSimplifySound!70 lt!1029118 (_2!20024 lt!1029121)))))

(declare-fun lt!1029128 () Unit!48507)

(declare-fun e!1850638 () Unit!48507)

(assert (=> b!2935675 (= lt!1029128 e!1850638)))

(declare-fun c!479666 () Bool)

(declare-fun size!26463 (List!34932) Int)

(assert (=> b!2935675 (= c!479666 (= (size!26463 (_2!20024 lt!1029121)) (size!26463 s!11993)))))

(assert (=> b!2935675 (matchR!3949 lt!1029124 (_1!20024 lt!1029121))))

(declare-fun r!17423 () Regex!9067)

(assert (=> b!2935675 (= lt!1029124 (simplify!74 (reg!9396 r!17423)))))

(declare-fun lt!1029129 () Unit!48507)

(assert (=> b!2935675 (= lt!1029129 (lemmaSimplifySound!70 (reg!9396 r!17423) (_1!20024 lt!1029121)))))

(declare-fun b!2935676 () Bool)

(assert (=> b!2935676 (= e!1850640 true)))

(declare-fun ++!8311 (List!34932 List!34932) List!34932)

(assert (=> b!2935676 (matchR!3949 lt!1029131 (++!8311 (_1!20024 lt!1029121) (_2!20024 lt!1029121)))))

(declare-fun lt!1029127 () Unit!48507)

(declare-fun lemmaStarApp!14 (Regex!9067 List!34932 List!34932) Unit!48507)

(assert (=> b!2935676 (= lt!1029127 (lemmaStarApp!14 lt!1029124 (_1!20024 lt!1029121) (_2!20024 lt!1029121)))))

(declare-fun b!2935677 () Bool)

(declare-fun e!1850644 () Bool)

(declare-fun tp!940045 () Bool)

(assert (=> b!2935677 (= e!1850644 tp!940045)))

(declare-fun b!2935678 () Bool)

(declare-fun res!1211988 () Bool)

(assert (=> b!2935678 (=> res!1211988 e!1850640)))

(assert (=> b!2935678 (= res!1211988 (not (matchR!3949 lt!1029131 (_2!20024 lt!1029121))))))

(declare-fun b!2935679 () Bool)

(declare-fun tp!940044 () Bool)

(declare-fun tp!940047 () Bool)

(assert (=> b!2935679 (= e!1850644 (and tp!940044 tp!940047))))

(declare-fun e!1850642 () Bool)

(assert (=> b!2935680 (= e!1850641 e!1850642)))

(declare-fun res!1211985 () Bool)

(assert (=> b!2935680 (=> res!1211985 e!1850642)))

(declare-fun lt!1029119 () Bool)

(assert (=> b!2935680 (= res!1211985 (not lt!1029119))))

(declare-fun Exists!1429 (Int) Bool)

(assert (=> b!2935680 (= (Exists!1429 lambda!109387) (Exists!1429 lambda!109388))))

(declare-fun lt!1029126 () Unit!48507)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!240 (Regex!9067 List!34932) Unit!48507)

(assert (=> b!2935680 (= lt!1029126 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!240 (reg!9396 r!17423) s!11993))))

(assert (=> b!2935680 (= lt!1029119 (Exists!1429 lambda!109387))))

(declare-datatypes ((Option!6624 0))(
  ( (None!6623) (Some!6623 (v!34757 tuple2!33784)) )
))
(declare-fun lt!1029120 () Option!6624)

(declare-fun isDefined!5175 (Option!6624) Bool)

(assert (=> b!2935680 (= lt!1029119 (isDefined!5175 lt!1029120))))

(declare-fun findConcatSeparation!1018 (Regex!9067 Regex!9067 List!34932 List!34932 List!34932) Option!6624)

(assert (=> b!2935680 (= lt!1029120 (findConcatSeparation!1018 (reg!9396 r!17423) lt!1029118 Nil!34808 s!11993 s!11993))))

(declare-fun lt!1029116 () Unit!48507)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!800 (Regex!9067 Regex!9067 List!34932) Unit!48507)

(assert (=> b!2935680 (= lt!1029116 (lemmaFindConcatSeparationEquivalentToExists!800 (reg!9396 r!17423) lt!1029118 s!11993))))

(assert (=> b!2935680 (= lt!1029118 (Star!9067 (reg!9396 r!17423)))))

(declare-fun b!2935681 () Bool)

(declare-fun res!1211987 () Bool)

(assert (=> b!2935681 (=> res!1211987 e!1850645)))

(assert (=> b!2935681 (= res!1211987 (not (matchR!3949 lt!1029118 (_2!20024 lt!1029121))))))

(declare-fun b!2935682 () Bool)

(declare-fun Unit!48509 () Unit!48507)

(assert (=> b!2935682 (= e!1850638 Unit!48509)))

(declare-fun lt!1029117 () Unit!48507)

(declare-fun mainMatchTheorem!1204 (Regex!9067 List!34932) Unit!48507)

(assert (=> b!2935682 (= lt!1029117 (mainMatchTheorem!1204 (reg!9396 r!17423) (_1!20024 lt!1029121)))))

(assert (=> b!2935682 false))

(declare-fun b!2935683 () Bool)

(declare-fun tp_is_empty!15697 () Bool)

(assert (=> b!2935683 (= e!1850644 tp_is_empty!15697)))

(declare-fun b!2935684 () Bool)

(declare-fun e!1850639 () Bool)

(assert (=> b!2935684 (= e!1850639 (not e!1850641))))

(declare-fun res!1211990 () Bool)

(assert (=> b!2935684 (=> res!1211990 e!1850641)))

(declare-fun lt!1029125 () Bool)

(get-info :version)

(assert (=> b!2935684 (= res!1211990 (or (not lt!1029125) ((_ is Concat!14388) r!17423) ((_ is Union!9067) r!17423) (not ((_ is Star!9067) r!17423))))))

(declare-fun matchRSpec!1204 (Regex!9067 List!34932) Bool)

(assert (=> b!2935684 (= lt!1029125 (matchRSpec!1204 r!17423 s!11993))))

(assert (=> b!2935684 (= lt!1029125 (matchR!3949 r!17423 s!11993))))

(declare-fun lt!1029123 () Unit!48507)

(assert (=> b!2935684 (= lt!1029123 (mainMatchTheorem!1204 r!17423 s!11993))))

(declare-fun b!2935685 () Bool)

(assert (=> b!2935685 (= e!1850642 e!1850645)))

(declare-fun res!1211984 () Bool)

(assert (=> b!2935685 (=> res!1211984 e!1850645)))

(assert (=> b!2935685 (= res!1211984 (not (matchR!3949 (reg!9396 r!17423) (_1!20024 lt!1029121))))))

(declare-fun get!10649 (Option!6624) tuple2!33784)

(assert (=> b!2935685 (= lt!1029121 (get!10649 lt!1029120))))

(declare-fun b!2935686 () Bool)

(declare-fun tp!940048 () Bool)

(declare-fun tp!940046 () Bool)

(assert (=> b!2935686 (= e!1850644 (and tp!940048 tp!940046))))

(declare-fun res!1211986 () Bool)

(assert (=> start!285324 (=> (not res!1211986) (not e!1850639))))

(declare-fun validRegex!3800 (Regex!9067) Bool)

(assert (=> start!285324 (= res!1211986 (validRegex!3800 r!17423))))

(assert (=> start!285324 e!1850639))

(assert (=> start!285324 e!1850644))

(declare-fun e!1850643 () Bool)

(assert (=> start!285324 e!1850643))

(declare-fun b!2935687 () Bool)

(declare-fun Unit!48510 () Unit!48507)

(assert (=> b!2935687 (= e!1850638 Unit!48510)))

(declare-fun b!2935688 () Bool)

(declare-fun tp!940049 () Bool)

(assert (=> b!2935688 (= e!1850643 (and tp_is_empty!15697 tp!940049))))

(declare-fun b!2935689 () Bool)

(declare-fun res!1211989 () Bool)

(assert (=> b!2935689 (=> res!1211989 e!1850640)))

(assert (=> b!2935689 (= res!1211989 (not (validRegex!3800 lt!1029131)))))

(assert (= (and start!285324 res!1211986) b!2935684))

(assert (= (and b!2935684 (not res!1211990)) b!2935674))

(assert (= (and b!2935674 (not res!1211983)) b!2935680))

(assert (= (and b!2935680 (not res!1211985)) b!2935685))

(assert (= (and b!2935685 (not res!1211984)) b!2935681))

(assert (= (and b!2935681 (not res!1211987)) b!2935675))

(assert (= (and b!2935675 c!479666) b!2935682))

(assert (= (and b!2935675 (not c!479666)) b!2935687))

(assert (= (and b!2935675 (not res!1211982)) b!2935678))

(assert (= (and b!2935678 (not res!1211988)) b!2935689))

(assert (= (and b!2935689 (not res!1211989)) b!2935676))

(assert (= (and start!285324 ((_ is ElementMatch!9067) r!17423)) b!2935683))

(assert (= (and start!285324 ((_ is Concat!14388) r!17423)) b!2935686))

(assert (= (and start!285324 ((_ is Star!9067) r!17423)) b!2935677))

(assert (= (and start!285324 ((_ is Union!9067) r!17423)) b!2935679))

(assert (= (and start!285324 ((_ is Cons!34808) s!11993)) b!2935688))

(declare-fun m!3323525 () Bool)

(assert (=> b!2935678 m!3323525))

(declare-fun m!3323527 () Bool)

(assert (=> b!2935675 m!3323527))

(declare-fun m!3323529 () Bool)

(assert (=> b!2935675 m!3323529))

(declare-fun m!3323531 () Bool)

(assert (=> b!2935675 m!3323531))

(declare-fun m!3323533 () Bool)

(assert (=> b!2935675 m!3323533))

(declare-fun m!3323535 () Bool)

(assert (=> b!2935675 m!3323535))

(declare-fun m!3323537 () Bool)

(assert (=> b!2935675 m!3323537))

(declare-fun m!3323539 () Bool)

(assert (=> b!2935675 m!3323539))

(declare-fun m!3323541 () Bool)

(assert (=> b!2935675 m!3323541))

(declare-fun m!3323543 () Bool)

(assert (=> b!2935684 m!3323543))

(declare-fun m!3323545 () Bool)

(assert (=> b!2935684 m!3323545))

(declare-fun m!3323547 () Bool)

(assert (=> b!2935684 m!3323547))

(declare-fun m!3323549 () Bool)

(assert (=> b!2935682 m!3323549))

(declare-fun m!3323551 () Bool)

(assert (=> b!2935674 m!3323551))

(declare-fun m!3323553 () Bool)

(assert (=> start!285324 m!3323553))

(declare-fun m!3323555 () Bool)

(assert (=> b!2935680 m!3323555))

(declare-fun m!3323557 () Bool)

(assert (=> b!2935680 m!3323557))

(declare-fun m!3323559 () Bool)

(assert (=> b!2935680 m!3323559))

(declare-fun m!3323561 () Bool)

(assert (=> b!2935680 m!3323561))

(assert (=> b!2935680 m!3323559))

(declare-fun m!3323563 () Bool)

(assert (=> b!2935680 m!3323563))

(declare-fun m!3323565 () Bool)

(assert (=> b!2935680 m!3323565))

(declare-fun m!3323567 () Bool)

(assert (=> b!2935676 m!3323567))

(assert (=> b!2935676 m!3323567))

(declare-fun m!3323569 () Bool)

(assert (=> b!2935676 m!3323569))

(declare-fun m!3323571 () Bool)

(assert (=> b!2935676 m!3323571))

(declare-fun m!3323573 () Bool)

(assert (=> b!2935685 m!3323573))

(declare-fun m!3323575 () Bool)

(assert (=> b!2935685 m!3323575))

(declare-fun m!3323577 () Bool)

(assert (=> b!2935689 m!3323577))

(declare-fun m!3323579 () Bool)

(assert (=> b!2935681 m!3323579))

(check-sat (not b!2935684) (not start!285324) (not b!2935678) (not b!2935689) (not b!2935679) (not b!2935681) (not b!2935680) (not b!2935675) (not b!2935685) (not b!2935686) (not b!2935674) (not b!2935688) (not b!2935677) (not b!2935682) tp_is_empty!15697 (not b!2935676))
(check-sat)
