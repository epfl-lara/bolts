; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286386 () Bool)

(assert start!286386)

(declare-fun b!2953458 () Bool)

(assert (=> b!2953458 true))

(assert (=> b!2953458 true))

(assert (=> b!2953458 true))

(declare-fun lambda!109916 () Int)

(declare-fun lambda!109915 () Int)

(assert (=> b!2953458 (not (= lambda!109916 lambda!109915))))

(assert (=> b!2953458 true))

(assert (=> b!2953458 true))

(assert (=> b!2953458 true))

(declare-fun b!2953446 () Bool)

(declare-fun e!1859888 () Bool)

(declare-fun e!1859882 () Bool)

(assert (=> b!2953446 (= e!1859888 (not e!1859882))))

(declare-fun res!1218576 () Bool)

(assert (=> b!2953446 (=> res!1218576 e!1859882)))

(declare-fun lt!1032522 () Bool)

(declare-datatypes ((C!18506 0))(
  ( (C!18507 (val!11289 Int)) )
))
(declare-datatypes ((Regex!9160 0))(
  ( (ElementMatch!9160 (c!483652 C!18506)) (Concat!14481 (regOne!18832 Regex!9160) (regTwo!18832 Regex!9160)) (EmptyExpr!9160) (Star!9160 (reg!9489 Regex!9160)) (EmptyLang!9160) (Union!9160 (regOne!18833 Regex!9160) (regTwo!18833 Regex!9160)) )
))
(declare-fun r!17423 () Regex!9160)

(assert (=> b!2953446 (= res!1218576 (or lt!1032522 (not (is-Concat!14481 r!17423))))))

(declare-datatypes ((List!35025 0))(
  ( (Nil!34901) (Cons!34901 (h!40321 C!18506) (t!234090 List!35025)) )
))
(declare-fun s!11993 () List!35025)

(declare-fun matchRSpec!1297 (Regex!9160 List!35025) Bool)

(assert (=> b!2953446 (= lt!1032522 (matchRSpec!1297 r!17423 s!11993))))

(declare-fun matchR!4042 (Regex!9160 List!35025) Bool)

(assert (=> b!2953446 (= lt!1032522 (matchR!4042 r!17423 s!11993))))

(declare-datatypes ((Unit!48699 0))(
  ( (Unit!48700) )
))
(declare-fun lt!1032518 () Unit!48699)

(declare-fun mainMatchTheorem!1297 (Regex!9160 List!35025) Unit!48699)

(assert (=> b!2953446 (= lt!1032518 (mainMatchTheorem!1297 r!17423 s!11993))))

(declare-fun b!2953448 () Bool)

(declare-fun e!1859886 () Bool)

(assert (=> b!2953448 (= e!1859882 e!1859886)))

(declare-fun res!1218577 () Bool)

(assert (=> b!2953448 (=> res!1218577 e!1859886)))

(declare-fun lt!1032516 () Regex!9160)

(declare-fun isEmptyLang!282 (Regex!9160) Bool)

(assert (=> b!2953448 (= res!1218577 (isEmptyLang!282 lt!1032516))))

(declare-fun lt!1032517 () Regex!9160)

(declare-fun simplify!165 (Regex!9160) Regex!9160)

(assert (=> b!2953448 (= lt!1032517 (simplify!165 (regTwo!18832 r!17423)))))

(assert (=> b!2953448 (= lt!1032516 (simplify!165 (regOne!18832 r!17423)))))

(declare-fun b!2953449 () Bool)

(declare-fun e!1859887 () Bool)

(declare-fun tp_is_empty!15883 () Bool)

(assert (=> b!2953449 (= e!1859887 tp_is_empty!15883)))

(declare-fun b!2953450 () Bool)

(declare-fun e!1859884 () Bool)

(declare-fun tp!943620 () Bool)

(assert (=> b!2953450 (= e!1859884 (and tp_is_empty!15883 tp!943620))))

(declare-fun b!2953451 () Bool)

(declare-fun tp!943622 () Bool)

(declare-fun tp!943618 () Bool)

(assert (=> b!2953451 (= e!1859887 (and tp!943622 tp!943618))))

(declare-fun b!2953452 () Bool)

(declare-fun res!1218572 () Bool)

(assert (=> b!2953452 (=> res!1218572 e!1859886)))

(declare-fun isEmptyExpr!363 (Regex!9160) Bool)

(assert (=> b!2953452 (= res!1218572 (isEmptyExpr!363 lt!1032516))))

(declare-fun b!2953453 () Bool)

(declare-fun res!1218571 () Bool)

(assert (=> b!2953453 (=> res!1218571 e!1859886)))

(assert (=> b!2953453 (= res!1218571 (isEmptyLang!282 lt!1032517))))

(declare-fun b!2953454 () Bool)

(declare-fun tp!943619 () Bool)

(assert (=> b!2953454 (= e!1859887 tp!943619)))

(declare-fun b!2953455 () Bool)

(declare-fun tp!943623 () Bool)

(declare-fun tp!943621 () Bool)

(assert (=> b!2953455 (= e!1859887 (and tp!943623 tp!943621))))

(declare-fun b!2953456 () Bool)

(declare-fun res!1218578 () Bool)

(assert (=> b!2953456 (=> res!1218578 e!1859882)))

(declare-fun isEmpty!19171 (List!35025) Bool)

(assert (=> b!2953456 (= res!1218578 (isEmpty!19171 s!11993))))

(declare-fun b!2953457 () Bool)

(declare-fun res!1218574 () Bool)

(assert (=> b!2953457 (=> res!1218574 e!1859886)))

(assert (=> b!2953457 (= res!1218574 (isEmptyExpr!363 lt!1032517))))

(declare-fun b!2953447 () Bool)

(declare-fun e!1859883 () Bool)

(declare-fun validRegex!3893 (Regex!9160) Bool)

(assert (=> b!2953447 (= e!1859883 (validRegex!3893 lt!1032517))))

(declare-fun res!1218573 () Bool)

(assert (=> start!286386 (=> (not res!1218573) (not e!1859888))))

(assert (=> start!286386 (= res!1218573 (validRegex!3893 r!17423))))

(assert (=> start!286386 e!1859888))

(assert (=> start!286386 e!1859887))

(assert (=> start!286386 e!1859884))

(declare-fun e!1859885 () Bool)

(assert (=> b!2953458 (= e!1859885 e!1859883)))

(declare-fun res!1218575 () Bool)

(assert (=> b!2953458 (=> res!1218575 e!1859883)))

(assert (=> b!2953458 (= res!1218575 (not (validRegex!3893 lt!1032516)))))

(declare-fun Exists!1492 (Int) Bool)

(assert (=> b!2953458 (= (Exists!1492 lambda!109915) (Exists!1492 lambda!109916))))

(declare-fun lt!1032521 () Unit!48699)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!513 (Regex!9160 Regex!9160 List!35025) Unit!48699)

(assert (=> b!2953458 (= lt!1032521 (lemmaExistCutMatchRandMatchRSpecEquivalent!513 lt!1032516 lt!1032517 s!11993))))

(declare-datatypes ((tuple2!33838 0))(
  ( (tuple2!33839 (_1!20051 List!35025) (_2!20051 List!35025)) )
))
(declare-datatypes ((Option!6651 0))(
  ( (None!6650) (Some!6650 (v!34784 tuple2!33838)) )
))
(declare-fun isDefined!5202 (Option!6651) Bool)

(declare-fun findConcatSeparation!1045 (Regex!9160 Regex!9160 List!35025 List!35025 List!35025) Option!6651)

(assert (=> b!2953458 (= (isDefined!5202 (findConcatSeparation!1045 lt!1032516 lt!1032517 Nil!34901 s!11993 s!11993)) (Exists!1492 lambda!109915))))

(declare-fun lt!1032523 () Unit!48699)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!823 (Regex!9160 Regex!9160 List!35025) Unit!48699)

(assert (=> b!2953458 (= lt!1032523 (lemmaFindConcatSeparationEquivalentToExists!823 lt!1032516 lt!1032517 s!11993))))

(declare-fun lt!1032519 () Regex!9160)

(assert (=> b!2953458 (matchRSpec!1297 lt!1032519 s!11993)))

(declare-fun lt!1032520 () Unit!48699)

(assert (=> b!2953458 (= lt!1032520 (mainMatchTheorem!1297 lt!1032519 s!11993))))

(declare-fun b!2953459 () Bool)

(assert (=> b!2953459 (= e!1859886 e!1859885)))

(declare-fun res!1218579 () Bool)

(assert (=> b!2953459 (=> res!1218579 e!1859885)))

(assert (=> b!2953459 (= res!1218579 (not (matchR!4042 lt!1032519 s!11993)))))

(assert (=> b!2953459 (= lt!1032519 (Concat!14481 lt!1032516 lt!1032517))))

(assert (= (and start!286386 res!1218573) b!2953446))

(assert (= (and b!2953446 (not res!1218576)) b!2953456))

(assert (= (and b!2953456 (not res!1218578)) b!2953448))

(assert (= (and b!2953448 (not res!1218577)) b!2953453))

(assert (= (and b!2953453 (not res!1218571)) b!2953452))

(assert (= (and b!2953452 (not res!1218572)) b!2953457))

(assert (= (and b!2953457 (not res!1218574)) b!2953459))

(assert (= (and b!2953459 (not res!1218579)) b!2953458))

(assert (= (and b!2953458 (not res!1218575)) b!2953447))

(assert (= (and start!286386 (is-ElementMatch!9160 r!17423)) b!2953449))

(assert (= (and start!286386 (is-Concat!14481 r!17423)) b!2953455))

(assert (= (and start!286386 (is-Star!9160 r!17423)) b!2953454))

(assert (= (and start!286386 (is-Union!9160 r!17423)) b!2953451))

(assert (= (and start!286386 (is-Cons!34901 s!11993)) b!2953450))

(declare-fun m!3330793 () Bool)

(assert (=> start!286386 m!3330793))

(declare-fun m!3330795 () Bool)

(assert (=> b!2953452 m!3330795))

(declare-fun m!3330797 () Bool)

(assert (=> b!2953453 m!3330797))

(declare-fun m!3330799 () Bool)

(assert (=> b!2953448 m!3330799))

(declare-fun m!3330801 () Bool)

(assert (=> b!2953448 m!3330801))

(declare-fun m!3330803 () Bool)

(assert (=> b!2953448 m!3330803))

(declare-fun m!3330805 () Bool)

(assert (=> b!2953456 m!3330805))

(declare-fun m!3330807 () Bool)

(assert (=> b!2953446 m!3330807))

(declare-fun m!3330809 () Bool)

(assert (=> b!2953446 m!3330809))

(declare-fun m!3330811 () Bool)

(assert (=> b!2953446 m!3330811))

(declare-fun m!3330813 () Bool)

(assert (=> b!2953458 m!3330813))

(declare-fun m!3330815 () Bool)

(assert (=> b!2953458 m!3330815))

(declare-fun m!3330817 () Bool)

(assert (=> b!2953458 m!3330817))

(declare-fun m!3330819 () Bool)

(assert (=> b!2953458 m!3330819))

(declare-fun m!3330821 () Bool)

(assert (=> b!2953458 m!3330821))

(declare-fun m!3330823 () Bool)

(assert (=> b!2953458 m!3330823))

(assert (=> b!2953458 m!3330821))

(declare-fun m!3330825 () Bool)

(assert (=> b!2953458 m!3330825))

(declare-fun m!3330827 () Bool)

(assert (=> b!2953458 m!3330827))

(assert (=> b!2953458 m!3330813))

(declare-fun m!3330829 () Bool)

(assert (=> b!2953458 m!3330829))

(declare-fun m!3330831 () Bool)

(assert (=> b!2953459 m!3330831))

(declare-fun m!3330833 () Bool)

(assert (=> b!2953447 m!3330833))

(declare-fun m!3330835 () Bool)

(assert (=> b!2953457 m!3330835))

(push 1)

(assert (not b!2953453))

(assert (not b!2953456))

(assert (not b!2953448))

(assert (not start!286386))

(assert (not b!2953450))

(assert (not b!2953452))

(assert (not b!2953457))

(assert (not b!2953458))

(assert (not b!2953451))

(assert (not b!2953455))

(assert (not b!2953454))

(assert (not b!2953459))

(assert (not b!2953446))

(assert (not b!2953447))

(assert tp_is_empty!15883)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2953550 () Bool)

(declare-fun res!1218636 () Bool)

(declare-fun e!1859934 () Bool)

(assert (=> b!2953550 (=> res!1218636 e!1859934)))

(declare-fun tail!4803 (List!35025) List!35025)

(assert (=> b!2953550 (= res!1218636 (not (isEmpty!19171 (tail!4803 s!11993))))))

(declare-fun b!2953551 () Bool)

(declare-fun head!6577 (List!35025) C!18506)

(assert (=> b!2953551 (= e!1859934 (not (= (head!6577 s!11993) (c!483652 lt!1032519))))))

(declare-fun b!2953552 () Bool)

(declare-fun e!1859933 () Bool)

(declare-fun e!1859932 () Bool)

(assert (=> b!2953552 (= e!1859933 e!1859932)))

(declare-fun res!1218635 () Bool)

(assert (=> b!2953552 (=> (not res!1218635) (not e!1859932))))

(declare-fun lt!1032550 () Bool)

(assert (=> b!2953552 (= res!1218635 (not lt!1032550))))

(declare-fun b!2953553 () Bool)

(declare-fun res!1218638 () Bool)

(declare-fun e!1859935 () Bool)

(assert (=> b!2953553 (=> (not res!1218638) (not e!1859935))))

(declare-fun call!195399 () Bool)

(assert (=> b!2953553 (= res!1218638 (not call!195399))))

(declare-fun b!2953554 () Bool)

(declare-fun e!1859936 () Bool)

(declare-fun e!1859931 () Bool)

(assert (=> b!2953554 (= e!1859936 e!1859931)))

(declare-fun c!483661 () Bool)

(assert (=> b!2953554 (= c!483661 (is-EmptyLang!9160 lt!1032519))))

(declare-fun b!2953555 () Bool)

(declare-fun e!1859930 () Bool)

(declare-fun nullable!2916 (Regex!9160) Bool)

(assert (=> b!2953555 (= e!1859930 (nullable!2916 lt!1032519))))

(declare-fun b!2953556 () Bool)

(assert (=> b!2953556 (= e!1859932 e!1859934)))

(declare-fun res!1218640 () Bool)

(assert (=> b!2953556 (=> res!1218640 e!1859934)))

(assert (=> b!2953556 (= res!1218640 call!195399)))

(declare-fun d!841294 () Bool)

(assert (=> d!841294 e!1859936))

(declare-fun c!483660 () Bool)

(assert (=> d!841294 (= c!483660 (is-EmptyExpr!9160 lt!1032519))))

(assert (=> d!841294 (= lt!1032550 e!1859930)))

(declare-fun c!483662 () Bool)

(assert (=> d!841294 (= c!483662 (isEmpty!19171 s!11993))))

(assert (=> d!841294 (validRegex!3893 lt!1032519)))

(assert (=> d!841294 (= (matchR!4042 lt!1032519 s!11993) lt!1032550)))

(declare-fun b!2953557 () Bool)

(assert (=> b!2953557 (= e!1859931 (not lt!1032550))))

(declare-fun b!2953558 () Bool)

(declare-fun res!1218637 () Bool)

(assert (=> b!2953558 (=> res!1218637 e!1859933)))

(assert (=> b!2953558 (= res!1218637 (not (is-ElementMatch!9160 lt!1032519)))))

(assert (=> b!2953558 (= e!1859931 e!1859933)))

(declare-fun b!2953559 () Bool)

(declare-fun res!1218639 () Bool)

(assert (=> b!2953559 (=> (not res!1218639) (not e!1859935))))

(assert (=> b!2953559 (= res!1218639 (isEmpty!19171 (tail!4803 s!11993)))))

(declare-fun b!2953560 () Bool)

(assert (=> b!2953560 (= e!1859935 (= (head!6577 s!11993) (c!483652 lt!1032519)))))

(declare-fun b!2953561 () Bool)

(assert (=> b!2953561 (= e!1859936 (= lt!1032550 call!195399))))

(declare-fun bm!195394 () Bool)

(assert (=> bm!195394 (= call!195399 (isEmpty!19171 s!11993))))

(declare-fun b!2953562 () Bool)

(declare-fun res!1218641 () Bool)

(assert (=> b!2953562 (=> res!1218641 e!1859933)))

(assert (=> b!2953562 (= res!1218641 e!1859935)))

(declare-fun res!1218642 () Bool)

(assert (=> b!2953562 (=> (not res!1218642) (not e!1859935))))

(assert (=> b!2953562 (= res!1218642 lt!1032550)))

(declare-fun b!2953563 () Bool)

(declare-fun derivativeStep!2518 (Regex!9160 C!18506) Regex!9160)

(assert (=> b!2953563 (= e!1859930 (matchR!4042 (derivativeStep!2518 lt!1032519 (head!6577 s!11993)) (tail!4803 s!11993)))))

(assert (= (and d!841294 c!483662) b!2953555))

(assert (= (and d!841294 (not c!483662)) b!2953563))

(assert (= (and d!841294 c!483660) b!2953561))

(assert (= (and d!841294 (not c!483660)) b!2953554))

(assert (= (and b!2953554 c!483661) b!2953557))

(assert (= (and b!2953554 (not c!483661)) b!2953558))

(assert (= (and b!2953558 (not res!1218637)) b!2953562))

(assert (= (and b!2953562 res!1218642) b!2953553))

(assert (= (and b!2953553 res!1218638) b!2953559))

(assert (= (and b!2953559 res!1218639) b!2953560))

(assert (= (and b!2953562 (not res!1218641)) b!2953552))

(assert (= (and b!2953552 res!1218635) b!2953556))

(assert (= (and b!2953556 (not res!1218640)) b!2953550))

(assert (= (and b!2953550 (not res!1218636)) b!2953551))

(assert (= (or b!2953561 b!2953553 b!2953556) bm!195394))

(declare-fun m!3330881 () Bool)

(assert (=> b!2953555 m!3330881))

(assert (=> d!841294 m!3330805))

(declare-fun m!3330883 () Bool)

(assert (=> d!841294 m!3330883))

(declare-fun m!3330885 () Bool)

(assert (=> b!2953563 m!3330885))

(assert (=> b!2953563 m!3330885))

(declare-fun m!3330887 () Bool)

(assert (=> b!2953563 m!3330887))

(declare-fun m!3330889 () Bool)

(assert (=> b!2953563 m!3330889))

(assert (=> b!2953563 m!3330887))

(assert (=> b!2953563 m!3330889))

(declare-fun m!3330891 () Bool)

(assert (=> b!2953563 m!3330891))

(assert (=> b!2953551 m!3330885))

(assert (=> b!2953559 m!3330889))

(assert (=> b!2953559 m!3330889))

(declare-fun m!3330893 () Bool)

(assert (=> b!2953559 m!3330893))

(assert (=> bm!195394 m!3330805))

(assert (=> b!2953560 m!3330885))

(assert (=> b!2953550 m!3330889))

(assert (=> b!2953550 m!3330889))

(assert (=> b!2953550 m!3330893))

(assert (=> b!2953459 d!841294))

(declare-fun b!2953604 () Bool)

(declare-fun e!1859969 () Bool)

(declare-fun e!1859972 () Bool)

(assert (=> b!2953604 (= e!1859969 e!1859972)))

(declare-fun c!483675 () Bool)

(assert (=> b!2953604 (= c!483675 (is-Union!9160 lt!1032517))))

(declare-fun bm!195401 () Bool)

(declare-fun call!195407 () Bool)

(declare-fun c!483676 () Bool)

(assert (=> bm!195401 (= call!195407 (validRegex!3893 (ite c!483676 (reg!9489 lt!1032517) (ite c!483675 (regOne!18833 lt!1032517) (regTwo!18832 lt!1032517)))))))

(declare-fun b!2953605 () Bool)

(declare-fun res!1218664 () Bool)

(declare-fun e!1859973 () Bool)

(assert (=> b!2953605 (=> res!1218664 e!1859973)))

(assert (=> b!2953605 (= res!1218664 (not (is-Concat!14481 lt!1032517)))))

(assert (=> b!2953605 (= e!1859972 e!1859973)))

(declare-fun b!2953606 () Bool)

(declare-fun e!1859968 () Bool)

(assert (=> b!2953606 (= e!1859973 e!1859968)))

(declare-fun res!1218662 () Bool)

(assert (=> b!2953606 (=> (not res!1218662) (not e!1859968))))

(declare-fun call!195406 () Bool)

(assert (=> b!2953606 (= res!1218662 call!195406)))

(declare-fun bm!195403 () Bool)

(assert (=> bm!195403 (= call!195406 (validRegex!3893 (ite c!483675 (regTwo!18833 lt!1032517) (regOne!18832 lt!1032517))))))

(declare-fun b!2953607 () Bool)

(declare-fun res!1218665 () Bool)

(declare-fun e!1859970 () Bool)

(assert (=> b!2953607 (=> (not res!1218665) (not e!1859970))))

(declare-fun call!195408 () Bool)

(assert (=> b!2953607 (= res!1218665 call!195408)))

(assert (=> b!2953607 (= e!1859972 e!1859970)))

(declare-fun b!2953608 () Bool)

(declare-fun e!1859971 () Bool)

(assert (=> b!2953608 (= e!1859969 e!1859971)))

(declare-fun res!1218661 () Bool)

(assert (=> b!2953608 (= res!1218661 (not (nullable!2916 (reg!9489 lt!1032517))))))

(assert (=> b!2953608 (=> (not res!1218661) (not e!1859971))))

(declare-fun bm!195402 () Bool)

(assert (=> bm!195402 (= call!195408 call!195407)))

(declare-fun d!841298 () Bool)

(declare-fun res!1218663 () Bool)

(declare-fun e!1859967 () Bool)

(assert (=> d!841298 (=> res!1218663 e!1859967)))

(assert (=> d!841298 (= res!1218663 (is-ElementMatch!9160 lt!1032517))))

(assert (=> d!841298 (= (validRegex!3893 lt!1032517) e!1859967)))

(declare-fun b!2953609 () Bool)

(assert (=> b!2953609 (= e!1859970 call!195406)))

(declare-fun b!2953610 () Bool)

(assert (=> b!2953610 (= e!1859971 call!195407)))

(declare-fun b!2953611 () Bool)

(assert (=> b!2953611 (= e!1859968 call!195408)))

(declare-fun b!2953612 () Bool)

(assert (=> b!2953612 (= e!1859967 e!1859969)))

(assert (=> b!2953612 (= c!483676 (is-Star!9160 lt!1032517))))

(assert (= (and d!841298 (not res!1218663)) b!2953612))

(assert (= (and b!2953612 c!483676) b!2953608))

(assert (= (and b!2953612 (not c!483676)) b!2953604))

(assert (= (and b!2953608 res!1218661) b!2953610))

(assert (= (and b!2953604 c!483675) b!2953607))

(assert (= (and b!2953604 (not c!483675)) b!2953605))

(assert (= (and b!2953607 res!1218665) b!2953609))

(assert (= (and b!2953605 (not res!1218664)) b!2953606))

(assert (= (and b!2953606 res!1218662) b!2953611))

(assert (= (or b!2953607 b!2953611) bm!195402))

(assert (= (or b!2953609 b!2953606) bm!195403))

(assert (= (or b!2953610 bm!195402) bm!195401))

(declare-fun m!3330895 () Bool)

(assert (=> bm!195401 m!3330895))

(declare-fun m!3330897 () Bool)

(assert (=> bm!195403 m!3330897))

(declare-fun m!3330899 () Bool)

(assert (=> b!2953608 m!3330899))

(assert (=> b!2953447 d!841298))

(declare-fun d!841300 () Bool)

(declare-fun choose!17457 (Int) Bool)

(assert (=> d!841300 (= (Exists!1492 lambda!109916) (choose!17457 lambda!109916))))

(declare-fun bs!525903 () Bool)

(assert (= bs!525903 d!841300))

(declare-fun m!3330901 () Bool)

(assert (=> bs!525903 m!3330901))

(assert (=> b!2953458 d!841300))

(declare-fun bs!525904 () Bool)

(declare-fun b!2953655 () Bool)

(assert (= bs!525904 (and b!2953655 b!2953458)))

(declare-fun lambda!109933 () Int)

(assert (=> bs!525904 (not (= lambda!109933 lambda!109915))))

(assert (=> bs!525904 (not (= lambda!109933 lambda!109916))))

(assert (=> b!2953655 true))

(assert (=> b!2953655 true))

(declare-fun bs!525905 () Bool)

(declare-fun b!2953657 () Bool)

(assert (= bs!525905 (and b!2953657 b!2953458)))

(declare-fun lambda!109934 () Int)

(assert (=> bs!525905 (not (= lambda!109934 lambda!109915))))

(assert (=> bs!525905 (= (and (= (regOne!18832 lt!1032519) lt!1032516) (= (regTwo!18832 lt!1032519) lt!1032517)) (= lambda!109934 lambda!109916))))

(declare-fun bs!525906 () Bool)

(assert (= bs!525906 (and b!2953657 b!2953655)))

(assert (=> bs!525906 (not (= lambda!109934 lambda!109933))))

(assert (=> b!2953657 true))

(assert (=> b!2953657 true))

(declare-fun call!195418 () Bool)

(declare-fun bm!195412 () Bool)

(declare-fun c!483688 () Bool)

(assert (=> bm!195412 (= call!195418 (Exists!1492 (ite c!483688 lambda!109933 lambda!109934)))))

(declare-fun e!1859995 () Bool)

(assert (=> b!2953655 (= e!1859995 call!195418)))

(declare-fun b!2953656 () Bool)

(declare-fun res!1218690 () Bool)

(assert (=> b!2953656 (=> res!1218690 e!1859995)))

(declare-fun call!195417 () Bool)

(assert (=> b!2953656 (= res!1218690 call!195417)))

(declare-fun e!1860000 () Bool)

(assert (=> b!2953656 (= e!1860000 e!1859995)))

(assert (=> b!2953657 (= e!1860000 call!195418)))

(declare-fun b!2953658 () Bool)

(declare-fun e!1859998 () Bool)

(declare-fun e!1859997 () Bool)

(assert (=> b!2953658 (= e!1859998 e!1859997)))

(declare-fun res!1218692 () Bool)

(assert (=> b!2953658 (= res!1218692 (matchRSpec!1297 (regOne!18833 lt!1032519) s!11993))))

(assert (=> b!2953658 (=> res!1218692 e!1859997)))

(declare-fun bm!195413 () Bool)

(assert (=> bm!195413 (= call!195417 (isEmpty!19171 s!11993))))

(declare-fun b!2953659 () Bool)

(assert (=> b!2953659 (= e!1859998 e!1860000)))

(assert (=> b!2953659 (= c!483688 (is-Star!9160 lt!1032519))))

(declare-fun b!2953660 () Bool)

(declare-fun c!483687 () Bool)

(assert (=> b!2953660 (= c!483687 (is-Union!9160 lt!1032519))))

(declare-fun e!1859994 () Bool)

(assert (=> b!2953660 (= e!1859994 e!1859998)))

(declare-fun d!841302 () Bool)

(declare-fun c!483685 () Bool)

(assert (=> d!841302 (= c!483685 (is-EmptyExpr!9160 lt!1032519))))

(declare-fun e!1859999 () Bool)

(assert (=> d!841302 (= (matchRSpec!1297 lt!1032519 s!11993) e!1859999)))

(declare-fun b!2953661 () Bool)

(assert (=> b!2953661 (= e!1859999 call!195417)))

(declare-fun b!2953662 () Bool)

(declare-fun c!483686 () Bool)

(assert (=> b!2953662 (= c!483686 (is-ElementMatch!9160 lt!1032519))))

(declare-fun e!1859996 () Bool)

(assert (=> b!2953662 (= e!1859996 e!1859994)))

(declare-fun b!2953663 () Bool)

(assert (=> b!2953663 (= e!1859994 (= s!11993 (Cons!34901 (c!483652 lt!1032519) Nil!34901)))))

(declare-fun b!2953664 () Bool)

(assert (=> b!2953664 (= e!1859999 e!1859996)))

(declare-fun res!1218691 () Bool)

(assert (=> b!2953664 (= res!1218691 (not (is-EmptyLang!9160 lt!1032519)))))

(assert (=> b!2953664 (=> (not res!1218691) (not e!1859996))))

(declare-fun b!2953665 () Bool)

(assert (=> b!2953665 (= e!1859997 (matchRSpec!1297 (regTwo!18833 lt!1032519) s!11993))))

(assert (= (and d!841302 c!483685) b!2953661))

(assert (= (and d!841302 (not c!483685)) b!2953664))

(assert (= (and b!2953664 res!1218691) b!2953662))

(assert (= (and b!2953662 c!483686) b!2953663))

(assert (= (and b!2953662 (not c!483686)) b!2953660))

(assert (= (and b!2953660 c!483687) b!2953658))

(assert (= (and b!2953660 (not c!483687)) b!2953659))

(assert (= (and b!2953658 (not res!1218692)) b!2953665))

(assert (= (and b!2953659 c!483688) b!2953656))

(assert (= (and b!2953659 (not c!483688)) b!2953657))

(assert (= (and b!2953656 (not res!1218690)) b!2953655))

(assert (= (or b!2953655 b!2953657) bm!195412))

(assert (= (or b!2953661 b!2953656) bm!195413))

(declare-fun m!3330903 () Bool)

(assert (=> bm!195412 m!3330903))

(declare-fun m!3330905 () Bool)

(assert (=> b!2953658 m!3330905))

(assert (=> bm!195413 m!3330805))

(declare-fun m!3330907 () Bool)

(assert (=> b!2953665 m!3330907))

(assert (=> b!2953458 d!841302))

(declare-fun b!2953695 () Bool)

(declare-fun e!1860020 () Bool)

(declare-fun lt!1032558 () Option!6651)

(declare-fun ++!8327 (List!35025 List!35025) List!35025)

(declare-fun get!10708 (Option!6651) tuple2!33838)

(assert (=> b!2953695 (= e!1860020 (= (++!8327 (_1!20051 (get!10708 lt!1032558)) (_2!20051 (get!10708 lt!1032558))) s!11993))))

(declare-fun b!2953696 () Bool)

(declare-fun e!1860022 () Option!6651)

(assert (=> b!2953696 (= e!1860022 (Some!6650 (tuple2!33839 Nil!34901 s!11993)))))

(declare-fun b!2953697 () Bool)

(declare-fun e!1860018 () Bool)

(assert (=> b!2953697 (= e!1860018 (not (isDefined!5202 lt!1032558)))))

(declare-fun b!2953698 () Bool)

(declare-fun e!1860019 () Option!6651)

(assert (=> b!2953698 (= e!1860019 None!6650)))

(declare-fun d!841304 () Bool)

(assert (=> d!841304 e!1860018))

(declare-fun res!1218708 () Bool)

(assert (=> d!841304 (=> res!1218708 e!1860018)))

(assert (=> d!841304 (= res!1218708 e!1860020)))

(declare-fun res!1218709 () Bool)

(assert (=> d!841304 (=> (not res!1218709) (not e!1860020))))

(assert (=> d!841304 (= res!1218709 (isDefined!5202 lt!1032558))))

(assert (=> d!841304 (= lt!1032558 e!1860022)))

(declare-fun c!483697 () Bool)

(declare-fun e!1860021 () Bool)

(assert (=> d!841304 (= c!483697 e!1860021)))

(declare-fun res!1218706 () Bool)

(assert (=> d!841304 (=> (not res!1218706) (not e!1860021))))

(assert (=> d!841304 (= res!1218706 (matchR!4042 lt!1032516 Nil!34901))))

(assert (=> d!841304 (validRegex!3893 lt!1032516)))

(assert (=> d!841304 (= (findConcatSeparation!1045 lt!1032516 lt!1032517 Nil!34901 s!11993 s!11993) lt!1032558)))

(declare-fun b!2953699 () Bool)

(declare-fun res!1218707 () Bool)

(assert (=> b!2953699 (=> (not res!1218707) (not e!1860020))))

(assert (=> b!2953699 (= res!1218707 (matchR!4042 lt!1032516 (_1!20051 (get!10708 lt!1032558))))))

(declare-fun b!2953700 () Bool)

(assert (=> b!2953700 (= e!1860022 e!1860019)))

(declare-fun c!483698 () Bool)

(assert (=> b!2953700 (= c!483698 (is-Nil!34901 s!11993))))

(declare-fun b!2953701 () Bool)

(declare-fun lt!1032559 () Unit!48699)

(declare-fun lt!1032557 () Unit!48699)

(assert (=> b!2953701 (= lt!1032559 lt!1032557)))

(assert (=> b!2953701 (= (++!8327 (++!8327 Nil!34901 (Cons!34901 (h!40321 s!11993) Nil!34901)) (t!234090 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!950 (List!35025 C!18506 List!35025 List!35025) Unit!48699)

(assert (=> b!2953701 (= lt!1032557 (lemmaMoveElementToOtherListKeepsConcatEq!950 Nil!34901 (h!40321 s!11993) (t!234090 s!11993) s!11993))))

(assert (=> b!2953701 (= e!1860019 (findConcatSeparation!1045 lt!1032516 lt!1032517 (++!8327 Nil!34901 (Cons!34901 (h!40321 s!11993) Nil!34901)) (t!234090 s!11993) s!11993))))

(declare-fun b!2953702 () Bool)

(declare-fun res!1218710 () Bool)

(assert (=> b!2953702 (=> (not res!1218710) (not e!1860020))))

(assert (=> b!2953702 (= res!1218710 (matchR!4042 lt!1032517 (_2!20051 (get!10708 lt!1032558))))))

(declare-fun b!2953703 () Bool)

(assert (=> b!2953703 (= e!1860021 (matchR!4042 lt!1032517 s!11993))))

(assert (= (and d!841304 res!1218706) b!2953703))

(assert (= (and d!841304 c!483697) b!2953696))

(assert (= (and d!841304 (not c!483697)) b!2953700))

(assert (= (and b!2953700 c!483698) b!2953698))

(assert (= (and b!2953700 (not c!483698)) b!2953701))

(assert (= (and d!841304 res!1218709) b!2953699))

(assert (= (and b!2953699 res!1218707) b!2953702))

(assert (= (and b!2953702 res!1218710) b!2953695))

(assert (= (and d!841304 (not res!1218708)) b!2953697))

(declare-fun m!3330915 () Bool)

(assert (=> b!2953703 m!3330915))

(declare-fun m!3330917 () Bool)

(assert (=> b!2953702 m!3330917))

(declare-fun m!3330919 () Bool)

(assert (=> b!2953702 m!3330919))

(assert (=> b!2953699 m!3330917))

(declare-fun m!3330921 () Bool)

(assert (=> b!2953699 m!3330921))

(declare-fun m!3330923 () Bool)

(assert (=> d!841304 m!3330923))

(declare-fun m!3330925 () Bool)

(assert (=> d!841304 m!3330925))

(assert (=> d!841304 m!3330827))

(declare-fun m!3330927 () Bool)

(assert (=> b!2953701 m!3330927))

(assert (=> b!2953701 m!3330927))

(declare-fun m!3330929 () Bool)

(assert (=> b!2953701 m!3330929))

(declare-fun m!3330931 () Bool)

(assert (=> b!2953701 m!3330931))

(assert (=> b!2953701 m!3330927))

(declare-fun m!3330933 () Bool)

(assert (=> b!2953701 m!3330933))

(assert (=> b!2953697 m!3330923))

(assert (=> b!2953695 m!3330917))

(declare-fun m!3330935 () Bool)

(assert (=> b!2953695 m!3330935))

(assert (=> b!2953458 d!841304))

(declare-fun bs!525910 () Bool)

(declare-fun d!841308 () Bool)

(assert (= bs!525910 (and d!841308 b!2953458)))

(declare-fun lambda!109939 () Int)

(assert (=> bs!525910 (= lambda!109939 lambda!109915)))

(assert (=> bs!525910 (not (= lambda!109939 lambda!109916))))

(declare-fun bs!525911 () Bool)

(assert (= bs!525911 (and d!841308 b!2953655)))

(assert (=> bs!525911 (not (= lambda!109939 lambda!109933))))

(declare-fun bs!525912 () Bool)

(assert (= bs!525912 (and d!841308 b!2953657)))

(assert (=> bs!525912 (not (= lambda!109939 lambda!109934))))

(assert (=> d!841308 true))

(assert (=> d!841308 true))

(assert (=> d!841308 true))

(assert (=> d!841308 (= (isDefined!5202 (findConcatSeparation!1045 lt!1032516 lt!1032517 Nil!34901 s!11993 s!11993)) (Exists!1492 lambda!109939))))

(declare-fun lt!1032564 () Unit!48699)

(declare-fun choose!17458 (Regex!9160 Regex!9160 List!35025) Unit!48699)

(assert (=> d!841308 (= lt!1032564 (choose!17458 lt!1032516 lt!1032517 s!11993))))

(assert (=> d!841308 (validRegex!3893 lt!1032516)))

(assert (=> d!841308 (= (lemmaFindConcatSeparationEquivalentToExists!823 lt!1032516 lt!1032517 s!11993) lt!1032564)))

(declare-fun bs!525913 () Bool)

(assert (= bs!525913 d!841308))

(declare-fun m!3330937 () Bool)

(assert (=> bs!525913 m!3330937))

(assert (=> bs!525913 m!3330821))

(assert (=> bs!525913 m!3330823))

(assert (=> bs!525913 m!3330827))

(assert (=> bs!525913 m!3330821))

(declare-fun m!3330939 () Bool)

(assert (=> bs!525913 m!3330939))

(assert (=> b!2953458 d!841308))

(declare-fun b!2953736 () Bool)

(declare-fun e!1860041 () Bool)

(declare-fun e!1860044 () Bool)

(assert (=> b!2953736 (= e!1860041 e!1860044)))

(declare-fun c!483705 () Bool)

(assert (=> b!2953736 (= c!483705 (is-Union!9160 lt!1032516))))

(declare-fun call!195424 () Bool)

(declare-fun c!483706 () Bool)

(declare-fun bm!195418 () Bool)

(assert (=> bm!195418 (= call!195424 (validRegex!3893 (ite c!483706 (reg!9489 lt!1032516) (ite c!483705 (regOne!18833 lt!1032516) (regTwo!18832 lt!1032516)))))))

(declare-fun b!2953737 () Bool)

(declare-fun res!1218734 () Bool)

(declare-fun e!1860045 () Bool)

(assert (=> b!2953737 (=> res!1218734 e!1860045)))

(assert (=> b!2953737 (= res!1218734 (not (is-Concat!14481 lt!1032516)))))

(assert (=> b!2953737 (= e!1860044 e!1860045)))

(declare-fun b!2953738 () Bool)

(declare-fun e!1860040 () Bool)

(assert (=> b!2953738 (= e!1860045 e!1860040)))

(declare-fun res!1218732 () Bool)

(assert (=> b!2953738 (=> (not res!1218732) (not e!1860040))))

(declare-fun call!195423 () Bool)

(assert (=> b!2953738 (= res!1218732 call!195423)))

(declare-fun bm!195420 () Bool)

(assert (=> bm!195420 (= call!195423 (validRegex!3893 (ite c!483705 (regTwo!18833 lt!1032516) (regOne!18832 lt!1032516))))))

(declare-fun b!2953739 () Bool)

(declare-fun res!1218735 () Bool)

(declare-fun e!1860042 () Bool)

(assert (=> b!2953739 (=> (not res!1218735) (not e!1860042))))

(declare-fun call!195425 () Bool)

(assert (=> b!2953739 (= res!1218735 call!195425)))

(assert (=> b!2953739 (= e!1860044 e!1860042)))

(declare-fun b!2953740 () Bool)

(declare-fun e!1860043 () Bool)

(assert (=> b!2953740 (= e!1860041 e!1860043)))

(declare-fun res!1218731 () Bool)

(assert (=> b!2953740 (= res!1218731 (not (nullable!2916 (reg!9489 lt!1032516))))))

(assert (=> b!2953740 (=> (not res!1218731) (not e!1860043))))

(declare-fun bm!195419 () Bool)

(assert (=> bm!195419 (= call!195425 call!195424)))

(declare-fun d!841310 () Bool)

(declare-fun res!1218733 () Bool)

(declare-fun e!1860039 () Bool)

(assert (=> d!841310 (=> res!1218733 e!1860039)))

(assert (=> d!841310 (= res!1218733 (is-ElementMatch!9160 lt!1032516))))

(assert (=> d!841310 (= (validRegex!3893 lt!1032516) e!1860039)))

(declare-fun b!2953741 () Bool)

(assert (=> b!2953741 (= e!1860042 call!195423)))

(declare-fun b!2953742 () Bool)

(assert (=> b!2953742 (= e!1860043 call!195424)))

(declare-fun b!2953743 () Bool)

(assert (=> b!2953743 (= e!1860040 call!195425)))

(declare-fun b!2953744 () Bool)

(assert (=> b!2953744 (= e!1860039 e!1860041)))

(assert (=> b!2953744 (= c!483706 (is-Star!9160 lt!1032516))))

(assert (= (and d!841310 (not res!1218733)) b!2953744))

(assert (= (and b!2953744 c!483706) b!2953740))

(assert (= (and b!2953744 (not c!483706)) b!2953736))

(assert (= (and b!2953740 res!1218731) b!2953742))

(assert (= (and b!2953736 c!483705) b!2953739))

(assert (= (and b!2953736 (not c!483705)) b!2953737))

(assert (= (and b!2953739 res!1218735) b!2953741))

(assert (= (and b!2953737 (not res!1218734)) b!2953738))

(assert (= (and b!2953738 res!1218732) b!2953743))

(assert (= (or b!2953739 b!2953743) bm!195419))

(assert (= (or b!2953741 b!2953738) bm!195420))

(assert (= (or b!2953742 bm!195419) bm!195418))

(declare-fun m!3330941 () Bool)

(assert (=> bm!195418 m!3330941))

(declare-fun m!3330943 () Bool)

(assert (=> bm!195420 m!3330943))

(declare-fun m!3330945 () Bool)

(assert (=> b!2953740 m!3330945))

(assert (=> b!2953458 d!841310))

(declare-fun d!841312 () Bool)

(assert (=> d!841312 (= (Exists!1492 lambda!109915) (choose!17457 lambda!109915))))

(declare-fun bs!525914 () Bool)

(assert (= bs!525914 d!841312))

(declare-fun m!3330947 () Bool)

(assert (=> bs!525914 m!3330947))

(assert (=> b!2953458 d!841312))

(declare-fun bs!525915 () Bool)

(declare-fun d!841314 () Bool)

(assert (= bs!525915 (and d!841314 b!2953458)))

(declare-fun lambda!109944 () Int)

(assert (=> bs!525915 (= lambda!109944 lambda!109915)))

(declare-fun bs!525916 () Bool)

(assert (= bs!525916 (and d!841314 b!2953657)))

(assert (=> bs!525916 (not (= lambda!109944 lambda!109934))))

(declare-fun bs!525917 () Bool)

(assert (= bs!525917 (and d!841314 b!2953655)))

(assert (=> bs!525917 (not (= lambda!109944 lambda!109933))))

(declare-fun bs!525918 () Bool)

(assert (= bs!525918 (and d!841314 d!841308)))

(assert (=> bs!525918 (= lambda!109944 lambda!109939)))

(assert (=> bs!525915 (not (= lambda!109944 lambda!109916))))

(assert (=> d!841314 true))

(assert (=> d!841314 true))

(assert (=> d!841314 true))

(declare-fun bs!525919 () Bool)

(assert (= bs!525919 d!841314))

(declare-fun lambda!109945 () Int)

(assert (=> bs!525919 (not (= lambda!109945 lambda!109944))))

(assert (=> bs!525915 (not (= lambda!109945 lambda!109915))))

(assert (=> bs!525916 (= (and (= lt!1032516 (regOne!18832 lt!1032519)) (= lt!1032517 (regTwo!18832 lt!1032519))) (= lambda!109945 lambda!109934))))

(assert (=> bs!525917 (not (= lambda!109945 lambda!109933))))

(assert (=> bs!525918 (not (= lambda!109945 lambda!109939))))

(assert (=> bs!525915 (= lambda!109945 lambda!109916)))

(assert (=> d!841314 true))

(assert (=> d!841314 true))

(assert (=> d!841314 true))

(assert (=> d!841314 (= (Exists!1492 lambda!109944) (Exists!1492 lambda!109945))))

(declare-fun lt!1032568 () Unit!48699)

(declare-fun choose!17459 (Regex!9160 Regex!9160 List!35025) Unit!48699)

(assert (=> d!841314 (= lt!1032568 (choose!17459 lt!1032516 lt!1032517 s!11993))))

(assert (=> d!841314 (validRegex!3893 lt!1032516)))

(assert (=> d!841314 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!513 lt!1032516 lt!1032517 s!11993) lt!1032568)))

(declare-fun m!3330961 () Bool)

(assert (=> bs!525919 m!3330961))

(declare-fun m!3330963 () Bool)

(assert (=> bs!525919 m!3330963))

(declare-fun m!3330965 () Bool)

(assert (=> bs!525919 m!3330965))

(assert (=> bs!525919 m!3330827))

(assert (=> b!2953458 d!841314))

(declare-fun d!841318 () Bool)

(assert (=> d!841318 (= (matchR!4042 lt!1032519 s!11993) (matchRSpec!1297 lt!1032519 s!11993))))

(declare-fun lt!1032574 () Unit!48699)

(declare-fun choose!17460 (Regex!9160 List!35025) Unit!48699)

(assert (=> d!841318 (= lt!1032574 (choose!17460 lt!1032519 s!11993))))

(assert (=> d!841318 (validRegex!3893 lt!1032519)))

(assert (=> d!841318 (= (mainMatchTheorem!1297 lt!1032519 s!11993) lt!1032574)))

(declare-fun bs!525920 () Bool)

(assert (= bs!525920 d!841318))

(assert (=> bs!525920 m!3330831))

(assert (=> bs!525920 m!3330815))

(declare-fun m!3330967 () Bool)

(assert (=> bs!525920 m!3330967))

(assert (=> bs!525920 m!3330883))

(assert (=> b!2953458 d!841318))

(declare-fun d!841320 () Bool)

(declare-fun isEmpty!19173 (Option!6651) Bool)

(assert (=> d!841320 (= (isDefined!5202 (findConcatSeparation!1045 lt!1032516 lt!1032517 Nil!34901 s!11993 s!11993)) (not (isEmpty!19173 (findConcatSeparation!1045 lt!1032516 lt!1032517 Nil!34901 s!11993 s!11993))))))

(declare-fun bs!525922 () Bool)

(assert (= bs!525922 d!841320))

(assert (=> bs!525922 m!3330821))

(declare-fun m!3330971 () Bool)

(assert (=> bs!525922 m!3330971))

(assert (=> b!2953458 d!841320))

(declare-fun d!841324 () Bool)

(assert (=> d!841324 (= (isEmptyLang!282 lt!1032517) (is-EmptyLang!9160 lt!1032517))))

(assert (=> b!2953453 d!841324))

(declare-fun d!841326 () Bool)

(assert (=> d!841326 (= (isEmptyLang!282 lt!1032516) (is-EmptyLang!9160 lt!1032516))))

(assert (=> b!2953448 d!841326))

(declare-fun b!2953844 () Bool)

(declare-fun e!1860114 () Regex!9160)

(assert (=> b!2953844 (= e!1860114 EmptyExpr!9160)))

(declare-fun b!2953845 () Bool)

(declare-fun c!483743 () Bool)

(declare-fun call!195450 () Bool)

(assert (=> b!2953845 (= c!483743 call!195450)))

(declare-fun e!1860115 () Regex!9160)

(declare-fun e!1860112 () Regex!9160)

(assert (=> b!2953845 (= e!1860115 e!1860112)))

(declare-fun b!2953846 () Bool)

(declare-fun lt!1032588 () Regex!9160)

(assert (=> b!2953846 (= e!1860115 lt!1032588)))

(declare-fun b!2953847 () Bool)

(declare-fun e!1860113 () Regex!9160)

(assert (=> b!2953847 (= e!1860113 EmptyExpr!9160)))

(declare-fun b!2953848 () Bool)

(declare-fun c!483740 () Bool)

(assert (=> b!2953848 (= c!483740 (is-EmptyExpr!9160 (regTwo!18832 r!17423)))))

(declare-fun e!1860111 () Regex!9160)

(assert (=> b!2953848 (= e!1860111 e!1860114)))

(declare-fun bm!195445 () Bool)

(declare-fun call!195455 () Regex!9160)

(declare-fun c!483738 () Bool)

(assert (=> bm!195445 (= call!195455 (simplify!165 (ite c!483738 (regOne!18833 (regTwo!18832 r!17423)) (regTwo!18832 (regTwo!18832 r!17423)))))))

(declare-fun b!2953849 () Bool)

(assert (=> b!2953849 (= c!483738 (is-Union!9160 (regTwo!18832 r!17423)))))

(declare-fun e!1860117 () Regex!9160)

(declare-fun e!1860106 () Regex!9160)

(assert (=> b!2953849 (= e!1860117 e!1860106)))

(declare-fun b!2953850 () Bool)

(declare-fun e!1860118 () Bool)

(declare-fun call!195453 () Bool)

(assert (=> b!2953850 (= e!1860118 call!195453)))

(declare-fun b!2953851 () Bool)

(declare-fun lt!1032592 () Regex!9160)

(assert (=> b!2953851 (= e!1860112 lt!1032592)))

(declare-fun lt!1032587 () Regex!9160)

(declare-fun bm!195446 () Bool)

(assert (=> bm!195446 (= call!195453 (isEmptyLang!282 (ite c!483738 lt!1032592 lt!1032587)))))

(declare-fun b!2953852 () Bool)

(assert (=> b!2953852 (= e!1860112 (Union!9160 lt!1032592 lt!1032588))))

(declare-fun b!2953853 () Bool)

(declare-fun e!1860107 () Regex!9160)

(assert (=> b!2953853 (= e!1860107 e!1860111)))

(declare-fun c!483748 () Bool)

(assert (=> b!2953853 (= c!483748 (is-ElementMatch!9160 (regTwo!18832 r!17423)))))

(declare-fun call!195456 () Regex!9160)

(declare-fun bm!195447 () Bool)

(declare-fun c!483747 () Bool)

(assert (=> bm!195447 (= call!195456 (simplify!165 (ite c!483747 (reg!9489 (regTwo!18832 r!17423)) (ite c!483738 (regTwo!18833 (regTwo!18832 r!17423)) (regOne!18832 (regTwo!18832 r!17423))))))))

(declare-fun bm!195448 () Bool)

(declare-fun lt!1032591 () Regex!9160)

(declare-fun call!195451 () Bool)

(assert (=> bm!195448 (= call!195451 (isEmptyExpr!363 (ite c!483747 lt!1032591 lt!1032587)))))

(declare-fun bm!195449 () Bool)

(declare-fun lt!1032589 () Regex!9160)

(declare-fun call!195454 () Bool)

(assert (=> bm!195449 (= call!195454 (isEmptyLang!282 (ite c!483747 lt!1032591 (ite c!483738 lt!1032588 lt!1032589))))))

(declare-fun b!2953854 () Bool)

(declare-fun e!1860108 () Regex!9160)

(assert (=> b!2953854 (= e!1860108 (Concat!14481 lt!1032589 lt!1032587))))

(declare-fun b!2953855 () Bool)

(assert (=> b!2953855 (= e!1860108 lt!1032589)))

(declare-fun d!841328 () Bool)

(declare-fun e!1860110 () Bool)

(assert (=> d!841328 e!1860110))

(declare-fun res!1218774 () Bool)

(assert (=> d!841328 (=> (not res!1218774) (not e!1860110))))

(declare-fun lt!1032590 () Regex!9160)

(assert (=> d!841328 (= res!1218774 (validRegex!3893 lt!1032590))))

(assert (=> d!841328 (= lt!1032590 e!1860107)))

(declare-fun c!483741 () Bool)

(assert (=> d!841328 (= c!483741 (is-EmptyLang!9160 (regTwo!18832 r!17423)))))

(assert (=> d!841328 (validRegex!3893 (regTwo!18832 r!17423))))

(assert (=> d!841328 (= (simplify!165 (regTwo!18832 r!17423)) lt!1032590)))

(declare-fun b!2953856 () Bool)

(assert (=> b!2953856 (= e!1860106 e!1860115)))

(assert (=> b!2953856 (= lt!1032592 call!195455)))

(declare-fun call!195452 () Regex!9160)

(assert (=> b!2953856 (= lt!1032588 call!195452)))

(declare-fun c!483745 () Bool)

(assert (=> b!2953856 (= c!483745 call!195453)))

(declare-fun b!2953857 () Bool)

(assert (=> b!2953857 (= e!1860114 e!1860117)))

(assert (=> b!2953857 (= c!483747 (is-Star!9160 (regTwo!18832 r!17423)))))

(declare-fun b!2953858 () Bool)

(assert (=> b!2953858 (= e!1860110 (= (nullable!2916 lt!1032590) (nullable!2916 (regTwo!18832 r!17423))))))

(declare-fun b!2953859 () Bool)

(declare-fun c!483739 () Bool)

(declare-fun e!1860116 () Bool)

(assert (=> b!2953859 (= c!483739 e!1860116)))

(declare-fun res!1218773 () Bool)

(assert (=> b!2953859 (=> res!1218773 e!1860116)))

(assert (=> b!2953859 (= res!1218773 call!195454)))

(assert (=> b!2953859 (= lt!1032591 call!195456)))

(assert (=> b!2953859 (= e!1860117 e!1860113)))

(declare-fun b!2953860 () Bool)

(declare-fun e!1860109 () Regex!9160)

(assert (=> b!2953860 (= e!1860109 EmptyLang!9160)))

(declare-fun bm!195450 () Bool)

(assert (=> bm!195450 (= call!195450 call!195454)))

(declare-fun b!2953861 () Bool)

(assert (=> b!2953861 (= e!1860106 e!1860109)))

(assert (=> b!2953861 (= lt!1032589 call!195452)))

(assert (=> b!2953861 (= lt!1032587 call!195455)))

(declare-fun res!1218775 () Bool)

(assert (=> b!2953861 (= res!1218775 call!195450)))

(assert (=> b!2953861 (=> res!1218775 e!1860118)))

(declare-fun c!483742 () Bool)

(assert (=> b!2953861 (= c!483742 e!1860118)))

(declare-fun b!2953862 () Bool)

(declare-fun c!483744 () Bool)

(assert (=> b!2953862 (= c!483744 (isEmptyExpr!363 lt!1032589))))

(declare-fun e!1860119 () Regex!9160)

(assert (=> b!2953862 (= e!1860109 e!1860119)))

(declare-fun b!2953863 () Bool)

(assert (=> b!2953863 (= e!1860116 call!195451)))

(declare-fun b!2953864 () Bool)

(assert (=> b!2953864 (= e!1860113 (Star!9160 lt!1032591))))

(declare-fun b!2953865 () Bool)

(assert (=> b!2953865 (= e!1860111 (regTwo!18832 r!17423))))

(declare-fun bm!195451 () Bool)

(assert (=> bm!195451 (= call!195452 call!195456)))

(declare-fun b!2953866 () Bool)

(assert (=> b!2953866 (= e!1860119 e!1860108)))

(declare-fun c!483746 () Bool)

(assert (=> b!2953866 (= c!483746 call!195451)))

(declare-fun b!2953867 () Bool)

(assert (=> b!2953867 (= e!1860107 EmptyLang!9160)))

(declare-fun b!2953868 () Bool)

(assert (=> b!2953868 (= e!1860119 lt!1032587)))

(assert (= (and d!841328 c!483741) b!2953867))

(assert (= (and d!841328 (not c!483741)) b!2953853))

(assert (= (and b!2953853 c!483748) b!2953865))

(assert (= (and b!2953853 (not c!483748)) b!2953848))

(assert (= (and b!2953848 c!483740) b!2953844))

(assert (= (and b!2953848 (not c!483740)) b!2953857))

(assert (= (and b!2953857 c!483747) b!2953859))

(assert (= (and b!2953857 (not c!483747)) b!2953849))

(assert (= (and b!2953859 (not res!1218773)) b!2953863))

(assert (= (and b!2953859 c!483739) b!2953847))

(assert (= (and b!2953859 (not c!483739)) b!2953864))

(assert (= (and b!2953849 c!483738) b!2953856))

(assert (= (and b!2953849 (not c!483738)) b!2953861))

(assert (= (and b!2953856 c!483745) b!2953846))

(assert (= (and b!2953856 (not c!483745)) b!2953845))

(assert (= (and b!2953845 c!483743) b!2953851))

(assert (= (and b!2953845 (not c!483743)) b!2953852))

(assert (= (and b!2953861 (not res!1218775)) b!2953850))

(assert (= (and b!2953861 c!483742) b!2953860))

(assert (= (and b!2953861 (not c!483742)) b!2953862))

(assert (= (and b!2953862 c!483744) b!2953868))

(assert (= (and b!2953862 (not c!483744)) b!2953866))

(assert (= (and b!2953866 c!483746) b!2953855))

(assert (= (and b!2953866 (not c!483746)) b!2953854))

(assert (= (or b!2953856 b!2953861) bm!195445))

(assert (= (or b!2953856 b!2953861) bm!195451))

(assert (= (or b!2953856 b!2953850) bm!195446))

(assert (= (or b!2953845 b!2953861) bm!195450))

(assert (= (or b!2953863 b!2953866) bm!195448))

(assert (= (or b!2953859 bm!195451) bm!195447))

(assert (= (or b!2953859 bm!195450) bm!195449))

(assert (= (and d!841328 res!1218774) b!2953858))

(declare-fun m!3330979 () Bool)

(assert (=> b!2953858 m!3330979))

(declare-fun m!3330981 () Bool)

(assert (=> b!2953858 m!3330981))

(declare-fun m!3330983 () Bool)

(assert (=> bm!195445 m!3330983))

(declare-fun m!3330985 () Bool)

(assert (=> bm!195447 m!3330985))

(declare-fun m!3330987 () Bool)

(assert (=> b!2953862 m!3330987))

(declare-fun m!3330989 () Bool)

(assert (=> d!841328 m!3330989))

(declare-fun m!3330991 () Bool)

(assert (=> d!841328 m!3330991))

(declare-fun m!3330993 () Bool)

(assert (=> bm!195446 m!3330993))

(declare-fun m!3330995 () Bool)

(assert (=> bm!195448 m!3330995))

(declare-fun m!3330997 () Bool)

(assert (=> bm!195449 m!3330997))

(assert (=> b!2953448 d!841328))

(declare-fun b!2953869 () Bool)

(declare-fun e!1860128 () Regex!9160)

(assert (=> b!2953869 (= e!1860128 EmptyExpr!9160)))

(declare-fun b!2953870 () Bool)

(declare-fun c!483754 () Bool)

(declare-fun call!195457 () Bool)

(assert (=> b!2953870 (= c!483754 call!195457)))

(declare-fun e!1860129 () Regex!9160)

(declare-fun e!1860126 () Regex!9160)

(assert (=> b!2953870 (= e!1860129 e!1860126)))

(declare-fun b!2953871 () Bool)

(declare-fun lt!1032594 () Regex!9160)

(assert (=> b!2953871 (= e!1860129 lt!1032594)))

(declare-fun b!2953872 () Bool)

(declare-fun e!1860127 () Regex!9160)

(assert (=> b!2953872 (= e!1860127 EmptyExpr!9160)))

(declare-fun b!2953873 () Bool)

(declare-fun c!483751 () Bool)

(assert (=> b!2953873 (= c!483751 (is-EmptyExpr!9160 (regOne!18832 r!17423)))))

(declare-fun e!1860125 () Regex!9160)

(assert (=> b!2953873 (= e!1860125 e!1860128)))

(declare-fun bm!195452 () Bool)

(declare-fun call!195462 () Regex!9160)

(declare-fun c!483749 () Bool)

(assert (=> bm!195452 (= call!195462 (simplify!165 (ite c!483749 (regOne!18833 (regOne!18832 r!17423)) (regTwo!18832 (regOne!18832 r!17423)))))))

(declare-fun b!2953874 () Bool)

(assert (=> b!2953874 (= c!483749 (is-Union!9160 (regOne!18832 r!17423)))))

(declare-fun e!1860131 () Regex!9160)

(declare-fun e!1860120 () Regex!9160)

(assert (=> b!2953874 (= e!1860131 e!1860120)))

(declare-fun b!2953875 () Bool)

(declare-fun e!1860132 () Bool)

(declare-fun call!195460 () Bool)

(assert (=> b!2953875 (= e!1860132 call!195460)))

(declare-fun b!2953876 () Bool)

(declare-fun lt!1032598 () Regex!9160)

(assert (=> b!2953876 (= e!1860126 lt!1032598)))

(declare-fun lt!1032593 () Regex!9160)

(declare-fun bm!195453 () Bool)

(assert (=> bm!195453 (= call!195460 (isEmptyLang!282 (ite c!483749 lt!1032598 lt!1032593)))))

(declare-fun b!2953877 () Bool)

(assert (=> b!2953877 (= e!1860126 (Union!9160 lt!1032598 lt!1032594))))

(declare-fun b!2953878 () Bool)

(declare-fun e!1860121 () Regex!9160)

(assert (=> b!2953878 (= e!1860121 e!1860125)))

(declare-fun c!483759 () Bool)

(assert (=> b!2953878 (= c!483759 (is-ElementMatch!9160 (regOne!18832 r!17423)))))

(declare-fun bm!195454 () Bool)

(declare-fun call!195463 () Regex!9160)

(declare-fun c!483758 () Bool)

(assert (=> bm!195454 (= call!195463 (simplify!165 (ite c!483758 (reg!9489 (regOne!18832 r!17423)) (ite c!483749 (regTwo!18833 (regOne!18832 r!17423)) (regOne!18832 (regOne!18832 r!17423))))))))

(declare-fun lt!1032597 () Regex!9160)

(declare-fun bm!195455 () Bool)

(declare-fun call!195458 () Bool)

(assert (=> bm!195455 (= call!195458 (isEmptyExpr!363 (ite c!483758 lt!1032597 lt!1032593)))))

(declare-fun bm!195456 () Bool)

(declare-fun lt!1032595 () Regex!9160)

(declare-fun call!195461 () Bool)

(assert (=> bm!195456 (= call!195461 (isEmptyLang!282 (ite c!483758 lt!1032597 (ite c!483749 lt!1032594 lt!1032595))))))

(declare-fun b!2953879 () Bool)

(declare-fun e!1860122 () Regex!9160)

(assert (=> b!2953879 (= e!1860122 (Concat!14481 lt!1032595 lt!1032593))))

(declare-fun b!2953880 () Bool)

(assert (=> b!2953880 (= e!1860122 lt!1032595)))

(declare-fun d!841340 () Bool)

(declare-fun e!1860124 () Bool)

(assert (=> d!841340 e!1860124))

(declare-fun res!1218777 () Bool)

(assert (=> d!841340 (=> (not res!1218777) (not e!1860124))))

(declare-fun lt!1032596 () Regex!9160)

(assert (=> d!841340 (= res!1218777 (validRegex!3893 lt!1032596))))

(assert (=> d!841340 (= lt!1032596 e!1860121)))

(declare-fun c!483752 () Bool)

(assert (=> d!841340 (= c!483752 (is-EmptyLang!9160 (regOne!18832 r!17423)))))

(assert (=> d!841340 (validRegex!3893 (regOne!18832 r!17423))))

(assert (=> d!841340 (= (simplify!165 (regOne!18832 r!17423)) lt!1032596)))

(declare-fun b!2953881 () Bool)

(assert (=> b!2953881 (= e!1860120 e!1860129)))

(assert (=> b!2953881 (= lt!1032598 call!195462)))

(declare-fun call!195459 () Regex!9160)

(assert (=> b!2953881 (= lt!1032594 call!195459)))

(declare-fun c!483756 () Bool)

(assert (=> b!2953881 (= c!483756 call!195460)))

(declare-fun b!2953882 () Bool)

(assert (=> b!2953882 (= e!1860128 e!1860131)))

(assert (=> b!2953882 (= c!483758 (is-Star!9160 (regOne!18832 r!17423)))))

(declare-fun b!2953883 () Bool)

(assert (=> b!2953883 (= e!1860124 (= (nullable!2916 lt!1032596) (nullable!2916 (regOne!18832 r!17423))))))

(declare-fun b!2953884 () Bool)

(declare-fun c!483750 () Bool)

(declare-fun e!1860130 () Bool)

(assert (=> b!2953884 (= c!483750 e!1860130)))

(declare-fun res!1218776 () Bool)

(assert (=> b!2953884 (=> res!1218776 e!1860130)))

(assert (=> b!2953884 (= res!1218776 call!195461)))

(assert (=> b!2953884 (= lt!1032597 call!195463)))

(assert (=> b!2953884 (= e!1860131 e!1860127)))

(declare-fun b!2953885 () Bool)

(declare-fun e!1860123 () Regex!9160)

(assert (=> b!2953885 (= e!1860123 EmptyLang!9160)))

(declare-fun bm!195457 () Bool)

(assert (=> bm!195457 (= call!195457 call!195461)))

(declare-fun b!2953886 () Bool)

(assert (=> b!2953886 (= e!1860120 e!1860123)))

(assert (=> b!2953886 (= lt!1032595 call!195459)))

(assert (=> b!2953886 (= lt!1032593 call!195462)))

(declare-fun res!1218778 () Bool)

(assert (=> b!2953886 (= res!1218778 call!195457)))

(assert (=> b!2953886 (=> res!1218778 e!1860132)))

(declare-fun c!483753 () Bool)

(assert (=> b!2953886 (= c!483753 e!1860132)))

(declare-fun b!2953887 () Bool)

(declare-fun c!483755 () Bool)

(assert (=> b!2953887 (= c!483755 (isEmptyExpr!363 lt!1032595))))

(declare-fun e!1860133 () Regex!9160)

(assert (=> b!2953887 (= e!1860123 e!1860133)))

(declare-fun b!2953888 () Bool)

(assert (=> b!2953888 (= e!1860130 call!195458)))

(declare-fun b!2953889 () Bool)

(assert (=> b!2953889 (= e!1860127 (Star!9160 lt!1032597))))

(declare-fun b!2953890 () Bool)

(assert (=> b!2953890 (= e!1860125 (regOne!18832 r!17423))))

(declare-fun bm!195458 () Bool)

(assert (=> bm!195458 (= call!195459 call!195463)))

(declare-fun b!2953891 () Bool)

(assert (=> b!2953891 (= e!1860133 e!1860122)))

(declare-fun c!483757 () Bool)

(assert (=> b!2953891 (= c!483757 call!195458)))

(declare-fun b!2953892 () Bool)

(assert (=> b!2953892 (= e!1860121 EmptyLang!9160)))

(declare-fun b!2953893 () Bool)

(assert (=> b!2953893 (= e!1860133 lt!1032593)))

(assert (= (and d!841340 c!483752) b!2953892))

(assert (= (and d!841340 (not c!483752)) b!2953878))

(assert (= (and b!2953878 c!483759) b!2953890))

(assert (= (and b!2953878 (not c!483759)) b!2953873))

(assert (= (and b!2953873 c!483751) b!2953869))

(assert (= (and b!2953873 (not c!483751)) b!2953882))

(assert (= (and b!2953882 c!483758) b!2953884))

(assert (= (and b!2953882 (not c!483758)) b!2953874))

(assert (= (and b!2953884 (not res!1218776)) b!2953888))

(assert (= (and b!2953884 c!483750) b!2953872))

(assert (= (and b!2953884 (not c!483750)) b!2953889))

(assert (= (and b!2953874 c!483749) b!2953881))

(assert (= (and b!2953874 (not c!483749)) b!2953886))

(assert (= (and b!2953881 c!483756) b!2953871))

(assert (= (and b!2953881 (not c!483756)) b!2953870))

(assert (= (and b!2953870 c!483754) b!2953876))

(assert (= (and b!2953870 (not c!483754)) b!2953877))

(assert (= (and b!2953886 (not res!1218778)) b!2953875))

(assert (= (and b!2953886 c!483753) b!2953885))

(assert (= (and b!2953886 (not c!483753)) b!2953887))

(assert (= (and b!2953887 c!483755) b!2953893))

(assert (= (and b!2953887 (not c!483755)) b!2953891))

(assert (= (and b!2953891 c!483757) b!2953880))

(assert (= (and b!2953891 (not c!483757)) b!2953879))

(assert (= (or b!2953881 b!2953886) bm!195452))

(assert (= (or b!2953881 b!2953886) bm!195458))

(assert (= (or b!2953881 b!2953875) bm!195453))

(assert (= (or b!2953870 b!2953886) bm!195457))

(assert (= (or b!2953888 b!2953891) bm!195455))

(assert (= (or b!2953884 bm!195458) bm!195454))

(assert (= (or b!2953884 bm!195457) bm!195456))

(assert (= (and d!841340 res!1218777) b!2953883))

(declare-fun m!3330999 () Bool)

(assert (=> b!2953883 m!3330999))

(declare-fun m!3331001 () Bool)

(assert (=> b!2953883 m!3331001))

(declare-fun m!3331003 () Bool)

(assert (=> bm!195452 m!3331003))

(declare-fun m!3331005 () Bool)

(assert (=> bm!195454 m!3331005))

(declare-fun m!3331007 () Bool)

(assert (=> b!2953887 m!3331007))

(declare-fun m!3331009 () Bool)

(assert (=> d!841340 m!3331009))

(declare-fun m!3331011 () Bool)

(assert (=> d!841340 m!3331011))

(declare-fun m!3331013 () Bool)

(assert (=> bm!195453 m!3331013))

(declare-fun m!3331015 () Bool)

(assert (=> bm!195455 m!3331015))

(declare-fun m!3331017 () Bool)

(assert (=> bm!195456 m!3331017))

(assert (=> b!2953448 d!841340))

(declare-fun b!2953894 () Bool)

(declare-fun e!1860136 () Bool)

(declare-fun e!1860139 () Bool)

(assert (=> b!2953894 (= e!1860136 e!1860139)))

(declare-fun c!483760 () Bool)

(assert (=> b!2953894 (= c!483760 (is-Union!9160 r!17423))))

(declare-fun c!483761 () Bool)

(declare-fun call!195465 () Bool)

(declare-fun bm!195459 () Bool)

(assert (=> bm!195459 (= call!195465 (validRegex!3893 (ite c!483761 (reg!9489 r!17423) (ite c!483760 (regOne!18833 r!17423) (regTwo!18832 r!17423)))))))

(declare-fun b!2953895 () Bool)

(declare-fun res!1218782 () Bool)

(declare-fun e!1860140 () Bool)

(assert (=> b!2953895 (=> res!1218782 e!1860140)))

(assert (=> b!2953895 (= res!1218782 (not (is-Concat!14481 r!17423)))))

(assert (=> b!2953895 (= e!1860139 e!1860140)))

(declare-fun b!2953896 () Bool)

(declare-fun e!1860135 () Bool)

(assert (=> b!2953896 (= e!1860140 e!1860135)))

(declare-fun res!1218780 () Bool)

(assert (=> b!2953896 (=> (not res!1218780) (not e!1860135))))

(declare-fun call!195464 () Bool)

(assert (=> b!2953896 (= res!1218780 call!195464)))

(declare-fun bm!195461 () Bool)

(assert (=> bm!195461 (= call!195464 (validRegex!3893 (ite c!483760 (regTwo!18833 r!17423) (regOne!18832 r!17423))))))

(declare-fun b!2953897 () Bool)

(declare-fun res!1218783 () Bool)

(declare-fun e!1860137 () Bool)

(assert (=> b!2953897 (=> (not res!1218783) (not e!1860137))))

(declare-fun call!195466 () Bool)

(assert (=> b!2953897 (= res!1218783 call!195466)))

(assert (=> b!2953897 (= e!1860139 e!1860137)))

(declare-fun b!2953898 () Bool)

(declare-fun e!1860138 () Bool)

(assert (=> b!2953898 (= e!1860136 e!1860138)))

(declare-fun res!1218779 () Bool)

(assert (=> b!2953898 (= res!1218779 (not (nullable!2916 (reg!9489 r!17423))))))

(assert (=> b!2953898 (=> (not res!1218779) (not e!1860138))))

(declare-fun bm!195460 () Bool)

(assert (=> bm!195460 (= call!195466 call!195465)))

(declare-fun d!841342 () Bool)

(declare-fun res!1218781 () Bool)

(declare-fun e!1860134 () Bool)

(assert (=> d!841342 (=> res!1218781 e!1860134)))

(assert (=> d!841342 (= res!1218781 (is-ElementMatch!9160 r!17423))))

(assert (=> d!841342 (= (validRegex!3893 r!17423) e!1860134)))

(declare-fun b!2953899 () Bool)

(assert (=> b!2953899 (= e!1860137 call!195464)))

(declare-fun b!2953900 () Bool)

(assert (=> b!2953900 (= e!1860138 call!195465)))

(declare-fun b!2953901 () Bool)

(assert (=> b!2953901 (= e!1860135 call!195466)))

(declare-fun b!2953902 () Bool)

(assert (=> b!2953902 (= e!1860134 e!1860136)))

(assert (=> b!2953902 (= c!483761 (is-Star!9160 r!17423))))

(assert (= (and d!841342 (not res!1218781)) b!2953902))

(assert (= (and b!2953902 c!483761) b!2953898))

(assert (= (and b!2953902 (not c!483761)) b!2953894))

(assert (= (and b!2953898 res!1218779) b!2953900))

(assert (= (and b!2953894 c!483760) b!2953897))

(assert (= (and b!2953894 (not c!483760)) b!2953895))

(assert (= (and b!2953897 res!1218783) b!2953899))

(assert (= (and b!2953895 (not res!1218782)) b!2953896))

(assert (= (and b!2953896 res!1218780) b!2953901))

(assert (= (or b!2953897 b!2953901) bm!195460))

(assert (= (or b!2953899 b!2953896) bm!195461))

(assert (= (or b!2953900 bm!195460) bm!195459))

(declare-fun m!3331019 () Bool)

(assert (=> bm!195459 m!3331019))

(declare-fun m!3331021 () Bool)

(assert (=> bm!195461 m!3331021))

(declare-fun m!3331023 () Bool)

(assert (=> b!2953898 m!3331023))

(assert (=> start!286386 d!841342))

(declare-fun bs!525923 () Bool)

(declare-fun b!2953903 () Bool)

(assert (= bs!525923 (and b!2953903 d!841314)))

(declare-fun lambda!109946 () Int)

(assert (=> bs!525923 (not (= lambda!109946 lambda!109944))))

(declare-fun bs!525924 () Bool)

(assert (= bs!525924 (and b!2953903 b!2953458)))

(assert (=> bs!525924 (not (= lambda!109946 lambda!109915))))

(declare-fun bs!525925 () Bool)

(assert (= bs!525925 (and b!2953903 b!2953657)))

(assert (=> bs!525925 (not (= lambda!109946 lambda!109934))))

(assert (=> bs!525923 (not (= lambda!109946 lambda!109945))))

(declare-fun bs!525926 () Bool)

(assert (= bs!525926 (and b!2953903 b!2953655)))

(assert (=> bs!525926 (= (and (= (reg!9489 r!17423) (reg!9489 lt!1032519)) (= r!17423 lt!1032519)) (= lambda!109946 lambda!109933))))

(declare-fun bs!525927 () Bool)

(assert (= bs!525927 (and b!2953903 d!841308)))

(assert (=> bs!525927 (not (= lambda!109946 lambda!109939))))

(assert (=> bs!525924 (not (= lambda!109946 lambda!109916))))

(assert (=> b!2953903 true))

(assert (=> b!2953903 true))

(declare-fun bs!525928 () Bool)

(declare-fun b!2953905 () Bool)

(assert (= bs!525928 (and b!2953905 d!841314)))

(declare-fun lambda!109947 () Int)

(assert (=> bs!525928 (not (= lambda!109947 lambda!109944))))

(declare-fun bs!525929 () Bool)

(assert (= bs!525929 (and b!2953905 b!2953458)))

(assert (=> bs!525929 (not (= lambda!109947 lambda!109915))))

(declare-fun bs!525930 () Bool)

(assert (= bs!525930 (and b!2953905 b!2953657)))

(assert (=> bs!525930 (= (and (= (regOne!18832 r!17423) (regOne!18832 lt!1032519)) (= (regTwo!18832 r!17423) (regTwo!18832 lt!1032519))) (= lambda!109947 lambda!109934))))

(declare-fun bs!525931 () Bool)

(assert (= bs!525931 (and b!2953905 b!2953903)))

(assert (=> bs!525931 (not (= lambda!109947 lambda!109946))))

(assert (=> bs!525928 (= (and (= (regOne!18832 r!17423) lt!1032516) (= (regTwo!18832 r!17423) lt!1032517)) (= lambda!109947 lambda!109945))))

(declare-fun bs!525932 () Bool)

(assert (= bs!525932 (and b!2953905 b!2953655)))

(assert (=> bs!525932 (not (= lambda!109947 lambda!109933))))

(declare-fun bs!525933 () Bool)

(assert (= bs!525933 (and b!2953905 d!841308)))

(assert (=> bs!525933 (not (= lambda!109947 lambda!109939))))

(assert (=> bs!525929 (= (and (= (regOne!18832 r!17423) lt!1032516) (= (regTwo!18832 r!17423) lt!1032517)) (= lambda!109947 lambda!109916))))

(assert (=> b!2953905 true))

(assert (=> b!2953905 true))

(declare-fun call!195468 () Bool)

(declare-fun c!483765 () Bool)

(declare-fun bm!195462 () Bool)

(assert (=> bm!195462 (= call!195468 (Exists!1492 (ite c!483765 lambda!109946 lambda!109947)))))

(declare-fun e!1860142 () Bool)

(assert (=> b!2953903 (= e!1860142 call!195468)))

(declare-fun b!2953904 () Bool)

(declare-fun res!1218784 () Bool)

(assert (=> b!2953904 (=> res!1218784 e!1860142)))

(declare-fun call!195467 () Bool)

(assert (=> b!2953904 (= res!1218784 call!195467)))

(declare-fun e!1860147 () Bool)

(assert (=> b!2953904 (= e!1860147 e!1860142)))

(assert (=> b!2953905 (= e!1860147 call!195468)))

(declare-fun b!2953906 () Bool)

(declare-fun e!1860145 () Bool)

(declare-fun e!1860144 () Bool)

(assert (=> b!2953906 (= e!1860145 e!1860144)))

(declare-fun res!1218786 () Bool)

(assert (=> b!2953906 (= res!1218786 (matchRSpec!1297 (regOne!18833 r!17423) s!11993))))

(assert (=> b!2953906 (=> res!1218786 e!1860144)))

(declare-fun bm!195463 () Bool)

(assert (=> bm!195463 (= call!195467 (isEmpty!19171 s!11993))))

(declare-fun b!2953907 () Bool)

(assert (=> b!2953907 (= e!1860145 e!1860147)))

(assert (=> b!2953907 (= c!483765 (is-Star!9160 r!17423))))

(declare-fun b!2953908 () Bool)

(declare-fun c!483764 () Bool)

(assert (=> b!2953908 (= c!483764 (is-Union!9160 r!17423))))

(declare-fun e!1860141 () Bool)

(assert (=> b!2953908 (= e!1860141 e!1860145)))

(declare-fun d!841344 () Bool)

(declare-fun c!483762 () Bool)

(assert (=> d!841344 (= c!483762 (is-EmptyExpr!9160 r!17423))))

(declare-fun e!1860146 () Bool)

(assert (=> d!841344 (= (matchRSpec!1297 r!17423 s!11993) e!1860146)))

(declare-fun b!2953909 () Bool)

(assert (=> b!2953909 (= e!1860146 call!195467)))

(declare-fun b!2953910 () Bool)

(declare-fun c!483763 () Bool)

(assert (=> b!2953910 (= c!483763 (is-ElementMatch!9160 r!17423))))

(declare-fun e!1860143 () Bool)

(assert (=> b!2953910 (= e!1860143 e!1860141)))

(declare-fun b!2953911 () Bool)

(assert (=> b!2953911 (= e!1860141 (= s!11993 (Cons!34901 (c!483652 r!17423) Nil!34901)))))

(declare-fun b!2953912 () Bool)

(assert (=> b!2953912 (= e!1860146 e!1860143)))

(declare-fun res!1218785 () Bool)

(assert (=> b!2953912 (= res!1218785 (not (is-EmptyLang!9160 r!17423)))))

(assert (=> b!2953912 (=> (not res!1218785) (not e!1860143))))

(declare-fun b!2953913 () Bool)

(assert (=> b!2953913 (= e!1860144 (matchRSpec!1297 (regTwo!18833 r!17423) s!11993))))

(assert (= (and d!841344 c!483762) b!2953909))

(assert (= (and d!841344 (not c!483762)) b!2953912))

(assert (= (and b!2953912 res!1218785) b!2953910))

(assert (= (and b!2953910 c!483763) b!2953911))

(assert (= (and b!2953910 (not c!483763)) b!2953908))

(assert (= (and b!2953908 c!483764) b!2953906))

(assert (= (and b!2953908 (not c!483764)) b!2953907))

(assert (= (and b!2953906 (not res!1218786)) b!2953913))

(assert (= (and b!2953907 c!483765) b!2953904))

(assert (= (and b!2953907 (not c!483765)) b!2953905))

(assert (= (and b!2953904 (not res!1218784)) b!2953903))

(assert (= (or b!2953903 b!2953905) bm!195462))

(assert (= (or b!2953909 b!2953904) bm!195463))

(declare-fun m!3331025 () Bool)

(assert (=> bm!195462 m!3331025))

(declare-fun m!3331027 () Bool)

(assert (=> b!2953906 m!3331027))

(assert (=> bm!195463 m!3330805))

(declare-fun m!3331029 () Bool)

(assert (=> b!2953913 m!3331029))

(assert (=> b!2953446 d!841344))

(declare-fun b!2953914 () Bool)

(declare-fun res!1218788 () Bool)

(declare-fun e!1860152 () Bool)

(assert (=> b!2953914 (=> res!1218788 e!1860152)))

(assert (=> b!2953914 (= res!1218788 (not (isEmpty!19171 (tail!4803 s!11993))))))

(declare-fun b!2953915 () Bool)

(assert (=> b!2953915 (= e!1860152 (not (= (head!6577 s!11993) (c!483652 r!17423))))))

(declare-fun b!2953916 () Bool)

(declare-fun e!1860151 () Bool)

(declare-fun e!1860150 () Bool)

(assert (=> b!2953916 (= e!1860151 e!1860150)))

(declare-fun res!1218787 () Bool)

(assert (=> b!2953916 (=> (not res!1218787) (not e!1860150))))

(declare-fun lt!1032599 () Bool)

(assert (=> b!2953916 (= res!1218787 (not lt!1032599))))

(declare-fun b!2953917 () Bool)

(declare-fun res!1218790 () Bool)

(declare-fun e!1860153 () Bool)

(assert (=> b!2953917 (=> (not res!1218790) (not e!1860153))))

(declare-fun call!195469 () Bool)

(assert (=> b!2953917 (= res!1218790 (not call!195469))))

(declare-fun b!2953918 () Bool)

(declare-fun e!1860154 () Bool)

(declare-fun e!1860149 () Bool)

(assert (=> b!2953918 (= e!1860154 e!1860149)))

(declare-fun c!483767 () Bool)

(assert (=> b!2953918 (= c!483767 (is-EmptyLang!9160 r!17423))))

(declare-fun b!2953919 () Bool)

(declare-fun e!1860148 () Bool)

(assert (=> b!2953919 (= e!1860148 (nullable!2916 r!17423))))

(declare-fun b!2953920 () Bool)

(assert (=> b!2953920 (= e!1860150 e!1860152)))

(declare-fun res!1218792 () Bool)

(assert (=> b!2953920 (=> res!1218792 e!1860152)))

(assert (=> b!2953920 (= res!1218792 call!195469)))

(declare-fun d!841346 () Bool)

(assert (=> d!841346 e!1860154))

(declare-fun c!483766 () Bool)

(assert (=> d!841346 (= c!483766 (is-EmptyExpr!9160 r!17423))))

(assert (=> d!841346 (= lt!1032599 e!1860148)))

(declare-fun c!483768 () Bool)

(assert (=> d!841346 (= c!483768 (isEmpty!19171 s!11993))))

(assert (=> d!841346 (validRegex!3893 r!17423)))

(assert (=> d!841346 (= (matchR!4042 r!17423 s!11993) lt!1032599)))

(declare-fun b!2953921 () Bool)

(assert (=> b!2953921 (= e!1860149 (not lt!1032599))))

(declare-fun b!2953922 () Bool)

(declare-fun res!1218789 () Bool)

(assert (=> b!2953922 (=> res!1218789 e!1860151)))

(assert (=> b!2953922 (= res!1218789 (not (is-ElementMatch!9160 r!17423)))))

(assert (=> b!2953922 (= e!1860149 e!1860151)))

(declare-fun b!2953923 () Bool)

(declare-fun res!1218791 () Bool)

(assert (=> b!2953923 (=> (not res!1218791) (not e!1860153))))

(assert (=> b!2953923 (= res!1218791 (isEmpty!19171 (tail!4803 s!11993)))))

(declare-fun b!2953924 () Bool)

(assert (=> b!2953924 (= e!1860153 (= (head!6577 s!11993) (c!483652 r!17423)))))

(declare-fun b!2953925 () Bool)

(assert (=> b!2953925 (= e!1860154 (= lt!1032599 call!195469))))

(declare-fun bm!195464 () Bool)

(assert (=> bm!195464 (= call!195469 (isEmpty!19171 s!11993))))

(declare-fun b!2953926 () Bool)

(declare-fun res!1218793 () Bool)

(assert (=> b!2953926 (=> res!1218793 e!1860151)))

(assert (=> b!2953926 (= res!1218793 e!1860153)))

(declare-fun res!1218794 () Bool)

(assert (=> b!2953926 (=> (not res!1218794) (not e!1860153))))

(assert (=> b!2953926 (= res!1218794 lt!1032599)))

(declare-fun b!2953927 () Bool)

(assert (=> b!2953927 (= e!1860148 (matchR!4042 (derivativeStep!2518 r!17423 (head!6577 s!11993)) (tail!4803 s!11993)))))

(assert (= (and d!841346 c!483768) b!2953919))

(assert (= (and d!841346 (not c!483768)) b!2953927))

(assert (= (and d!841346 c!483766) b!2953925))

(assert (= (and d!841346 (not c!483766)) b!2953918))

(assert (= (and b!2953918 c!483767) b!2953921))

(assert (= (and b!2953918 (not c!483767)) b!2953922))

(assert (= (and b!2953922 (not res!1218789)) b!2953926))

(assert (= (and b!2953926 res!1218794) b!2953917))

(assert (= (and b!2953917 res!1218790) b!2953923))

(assert (= (and b!2953923 res!1218791) b!2953924))

(assert (= (and b!2953926 (not res!1218793)) b!2953916))

(assert (= (and b!2953916 res!1218787) b!2953920))

(assert (= (and b!2953920 (not res!1218792)) b!2953914))

(assert (= (and b!2953914 (not res!1218788)) b!2953915))

(assert (= (or b!2953925 b!2953917 b!2953920) bm!195464))

(declare-fun m!3331031 () Bool)

(assert (=> b!2953919 m!3331031))

(assert (=> d!841346 m!3330805))

(assert (=> d!841346 m!3330793))

(assert (=> b!2953927 m!3330885))

(assert (=> b!2953927 m!3330885))

(declare-fun m!3331033 () Bool)

(assert (=> b!2953927 m!3331033))

(assert (=> b!2953927 m!3330889))

(assert (=> b!2953927 m!3331033))

(assert (=> b!2953927 m!3330889))

(declare-fun m!3331035 () Bool)

(assert (=> b!2953927 m!3331035))

(assert (=> b!2953915 m!3330885))

(assert (=> b!2953923 m!3330889))

(assert (=> b!2953923 m!3330889))

(assert (=> b!2953923 m!3330893))

(assert (=> bm!195464 m!3330805))

(assert (=> b!2953924 m!3330885))

(assert (=> b!2953914 m!3330889))

(assert (=> b!2953914 m!3330889))

(assert (=> b!2953914 m!3330893))

(assert (=> b!2953446 d!841346))

(declare-fun d!841348 () Bool)

(assert (=> d!841348 (= (matchR!4042 r!17423 s!11993) (matchRSpec!1297 r!17423 s!11993))))

(declare-fun lt!1032600 () Unit!48699)

(assert (=> d!841348 (= lt!1032600 (choose!17460 r!17423 s!11993))))

(assert (=> d!841348 (validRegex!3893 r!17423)))

(assert (=> d!841348 (= (mainMatchTheorem!1297 r!17423 s!11993) lt!1032600)))

(declare-fun bs!525934 () Bool)

(assert (= bs!525934 d!841348))

(assert (=> bs!525934 m!3330809))

(assert (=> bs!525934 m!3330807))

(declare-fun m!3331037 () Bool)

(assert (=> bs!525934 m!3331037))

(assert (=> bs!525934 m!3330793))

(assert (=> b!2953446 d!841348))

(declare-fun d!841350 () Bool)

(assert (=> d!841350 (= (isEmptyExpr!363 lt!1032517) (is-EmptyExpr!9160 lt!1032517))))

(assert (=> b!2953457 d!841350))

(declare-fun d!841352 () Bool)

(assert (=> d!841352 (= (isEmptyExpr!363 lt!1032516) (is-EmptyExpr!9160 lt!1032516))))

(assert (=> b!2953452 d!841352))

(declare-fun d!841354 () Bool)

(assert (=> d!841354 (= (isEmpty!19171 s!11993) (is-Nil!34901 s!11993))))

(assert (=> b!2953456 d!841354))

(declare-fun e!1860157 () Bool)

(assert (=> b!2953454 (= tp!943619 e!1860157)))

(declare-fun b!2953941 () Bool)

(declare-fun tp!943653 () Bool)

(declare-fun tp!943654 () Bool)

(assert (=> b!2953941 (= e!1860157 (and tp!943653 tp!943654))))

(declare-fun b!2953940 () Bool)

(declare-fun tp!943655 () Bool)

(assert (=> b!2953940 (= e!1860157 tp!943655)))

(declare-fun b!2953938 () Bool)

(assert (=> b!2953938 (= e!1860157 tp_is_empty!15883)))

(declare-fun b!2953939 () Bool)

(declare-fun tp!943656 () Bool)

(declare-fun tp!943652 () Bool)

(assert (=> b!2953939 (= e!1860157 (and tp!943656 tp!943652))))

(assert (= (and b!2953454 (is-ElementMatch!9160 (reg!9489 r!17423))) b!2953938))

(assert (= (and b!2953454 (is-Concat!14481 (reg!9489 r!17423))) b!2953939))

(assert (= (and b!2953454 (is-Star!9160 (reg!9489 r!17423))) b!2953940))

(assert (= (and b!2953454 (is-Union!9160 (reg!9489 r!17423))) b!2953941))

(declare-fun e!1860158 () Bool)

(assert (=> b!2953451 (= tp!943622 e!1860158)))

(declare-fun b!2953945 () Bool)

(declare-fun tp!943658 () Bool)

(declare-fun tp!943659 () Bool)

(assert (=> b!2953945 (= e!1860158 (and tp!943658 tp!943659))))

(declare-fun b!2953944 () Bool)

(declare-fun tp!943660 () Bool)

(assert (=> b!2953944 (= e!1860158 tp!943660)))

(declare-fun b!2953942 () Bool)

(assert (=> b!2953942 (= e!1860158 tp_is_empty!15883)))

(declare-fun b!2953943 () Bool)

(declare-fun tp!943661 () Bool)

(declare-fun tp!943657 () Bool)

(assert (=> b!2953943 (= e!1860158 (and tp!943661 tp!943657))))

(assert (= (and b!2953451 (is-ElementMatch!9160 (regOne!18833 r!17423))) b!2953942))

(assert (= (and b!2953451 (is-Concat!14481 (regOne!18833 r!17423))) b!2953943))

(assert (= (and b!2953451 (is-Star!9160 (regOne!18833 r!17423))) b!2953944))

(assert (= (and b!2953451 (is-Union!9160 (regOne!18833 r!17423))) b!2953945))

(declare-fun e!1860159 () Bool)

(assert (=> b!2953451 (= tp!943618 e!1860159)))

(declare-fun b!2953949 () Bool)

(declare-fun tp!943663 () Bool)

(declare-fun tp!943664 () Bool)

(assert (=> b!2953949 (= e!1860159 (and tp!943663 tp!943664))))

(declare-fun b!2953948 () Bool)

(declare-fun tp!943665 () Bool)

(assert (=> b!2953948 (= e!1860159 tp!943665)))

(declare-fun b!2953946 () Bool)

(assert (=> b!2953946 (= e!1860159 tp_is_empty!15883)))

(declare-fun b!2953947 () Bool)

(declare-fun tp!943666 () Bool)

(declare-fun tp!943662 () Bool)

(assert (=> b!2953947 (= e!1860159 (and tp!943666 tp!943662))))

(assert (= (and b!2953451 (is-ElementMatch!9160 (regTwo!18833 r!17423))) b!2953946))

(assert (= (and b!2953451 (is-Concat!14481 (regTwo!18833 r!17423))) b!2953947))

(assert (= (and b!2953451 (is-Star!9160 (regTwo!18833 r!17423))) b!2953948))

(assert (= (and b!2953451 (is-Union!9160 (regTwo!18833 r!17423))) b!2953949))

(declare-fun e!1860160 () Bool)

(assert (=> b!2953455 (= tp!943623 e!1860160)))

(declare-fun b!2953953 () Bool)

(declare-fun tp!943668 () Bool)

(declare-fun tp!943669 () Bool)

(assert (=> b!2953953 (= e!1860160 (and tp!943668 tp!943669))))

(declare-fun b!2953952 () Bool)

(declare-fun tp!943670 () Bool)

(assert (=> b!2953952 (= e!1860160 tp!943670)))

(declare-fun b!2953950 () Bool)

(assert (=> b!2953950 (= e!1860160 tp_is_empty!15883)))

(declare-fun b!2953951 () Bool)

(declare-fun tp!943671 () Bool)

(declare-fun tp!943667 () Bool)

(assert (=> b!2953951 (= e!1860160 (and tp!943671 tp!943667))))

(assert (= (and b!2953455 (is-ElementMatch!9160 (regOne!18832 r!17423))) b!2953950))

(assert (= (and b!2953455 (is-Concat!14481 (regOne!18832 r!17423))) b!2953951))

(assert (= (and b!2953455 (is-Star!9160 (regOne!18832 r!17423))) b!2953952))

(assert (= (and b!2953455 (is-Union!9160 (regOne!18832 r!17423))) b!2953953))

(declare-fun e!1860161 () Bool)

(assert (=> b!2953455 (= tp!943621 e!1860161)))

(declare-fun b!2953957 () Bool)

(declare-fun tp!943673 () Bool)

(declare-fun tp!943674 () Bool)

(assert (=> b!2953957 (= e!1860161 (and tp!943673 tp!943674))))

(declare-fun b!2953956 () Bool)

(declare-fun tp!943675 () Bool)

(assert (=> b!2953956 (= e!1860161 tp!943675)))

(declare-fun b!2953954 () Bool)

(assert (=> b!2953954 (= e!1860161 tp_is_empty!15883)))

(declare-fun b!2953955 () Bool)

(declare-fun tp!943676 () Bool)

(declare-fun tp!943672 () Bool)

(assert (=> b!2953955 (= e!1860161 (and tp!943676 tp!943672))))

(assert (= (and b!2953455 (is-ElementMatch!9160 (regTwo!18832 r!17423))) b!2953954))

(assert (= (and b!2953455 (is-Concat!14481 (regTwo!18832 r!17423))) b!2953955))

(assert (= (and b!2953455 (is-Star!9160 (regTwo!18832 r!17423))) b!2953956))

(assert (= (and b!2953455 (is-Union!9160 (regTwo!18832 r!17423))) b!2953957))

(declare-fun b!2953962 () Bool)

(declare-fun e!1860164 () Bool)

(declare-fun tp!943679 () Bool)

(assert (=> b!2953962 (= e!1860164 (and tp_is_empty!15883 tp!943679))))

(assert (=> b!2953450 (= tp!943620 e!1860164)))

(assert (= (and b!2953450 (is-Cons!34901 (t!234090 s!11993))) b!2953962))

(push 1)

(assert (not bm!195413))

(assert (not bm!195394))

(assert (not b!2953559))

(assert (not b!2953962))

(assert (not b!2953919))

(assert (not b!2953702))

(assert (not b!2953940))

(assert (not b!2953665))

(assert tp_is_empty!15883)

(assert (not b!2953956))

(assert (not d!841312))

(assert (not b!2953608))

(assert (not bm!195418))

(assert (not bm!195403))

(assert (not bm!195455))

(assert (not d!841304))

(assert (not b!2953947))

(assert (not b!2953898))

(assert (not b!2953952))

(assert (not d!841340))

(assert (not d!841320))

(assert (not bm!195462))

(assert (not b!2953948))

(assert (not b!2953945))

(assert (not b!2953697))

(assert (not bm!195453))

(assert (not b!2953551))

(assert (not b!2953740))

(assert (not d!841300))

(assert (not d!841346))

(assert (not bm!195447))

(assert (not b!2953927))

(assert (not bm!195445))

(assert (not d!841318))

(assert (not bm!195464))

(assert (not b!2953906))

(assert (not b!2953913))

(assert (not bm!195401))

(assert (not d!841308))

(assert (not b!2953699))

(assert (not bm!195452))

(assert (not b!2953555))

(assert (not b!2953883))

(assert (not b!2953560))

(assert (not bm!195454))

(assert (not b!2953955))

(assert (not b!2953943))

(assert (not b!2953914))

(assert (not bm!195459))

(assert (not d!841348))

(assert (not b!2953858))

(assert (not b!2953941))

(assert (not b!2953701))

(assert (not bm!195412))

(assert (not bm!195448))

(assert (not b!2953915))

(assert (not b!2953924))

(assert (not bm!195446))

(assert (not b!2953887))

(assert (not b!2953695))

(assert (not b!2953563))

(assert (not b!2953550))

(assert (not bm!195463))

(assert (not b!2953949))

(assert (not bm!195456))

(assert (not bm!195449))

(assert (not b!2953944))

(assert (not bm!195420))

(assert (not b!2953923))

(assert (not bm!195461))

(assert (not d!841314))

(assert (not b!2953951))

(assert (not b!2953957))

(assert (not b!2953703))

(assert (not d!841294))

(assert (not b!2953953))

(assert (not b!2953658))

(assert (not b!2953862))

(assert (not d!841328))

(assert (not b!2953939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

