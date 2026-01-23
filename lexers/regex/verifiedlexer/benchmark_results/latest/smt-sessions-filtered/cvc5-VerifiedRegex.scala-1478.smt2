; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79064 () Bool)

(assert start!79064)

(declare-fun b!874610 () Bool)

(assert (=> b!874610 true))

(assert (=> b!874610 true))

(declare-fun lambda!26342 () Int)

(declare-fun lambda!26341 () Int)

(assert (=> b!874610 (not (= lambda!26342 lambda!26341))))

(assert (=> b!874610 true))

(assert (=> b!874610 true))

(declare-fun b!874602 () Bool)

(declare-fun e!574998 () Bool)

(declare-fun tp!276694 () Bool)

(assert (=> b!874602 (= e!574998 tp!276694)))

(declare-fun b!874603 () Bool)

(declare-fun e!575000 () Bool)

(declare-fun e!575002 () Bool)

(assert (=> b!874603 (= e!575000 (not e!575002))))

(declare-fun res!397661 () Bool)

(assert (=> b!874603 (=> res!397661 e!575002)))

(declare-fun lt!329532 () Bool)

(declare-datatypes ((C!4998 0))(
  ( (C!4999 (val!2747 Int)) )
))
(declare-datatypes ((Regex!2214 0))(
  ( (ElementMatch!2214 (c!141445 C!4998)) (Concat!4047 (regOne!4940 Regex!2214) (regTwo!4940 Regex!2214)) (EmptyExpr!2214) (Star!2214 (reg!2543 Regex!2214)) (EmptyLang!2214) (Union!2214 (regOne!4941 Regex!2214) (regTwo!4941 Regex!2214)) )
))
(declare-fun r!15766 () Regex!2214)

(assert (=> b!874603 (= res!397661 (or (not lt!329532) (not (is-Concat!4047 r!15766)) (not (is-EmptyExpr!2214 (regOne!4940 r!15766)))))))

(declare-datatypes ((List!9444 0))(
  ( (Nil!9428) (Cons!9428 (h!14829 C!4998) (t!100490 List!9444)) )
))
(declare-fun s!10566 () List!9444)

(declare-fun matchRSpec!15 (Regex!2214 List!9444) Bool)

(assert (=> b!874603 (= lt!329532 (matchRSpec!15 r!15766 s!10566))))

(declare-fun matchR!752 (Regex!2214 List!9444) Bool)

(assert (=> b!874603 (= lt!329532 (matchR!752 r!15766 s!10566))))

(declare-datatypes ((Unit!14007 0))(
  ( (Unit!14008) )
))
(declare-fun lt!329534 () Unit!14007)

(declare-fun mainMatchTheorem!15 (Regex!2214 List!9444) Unit!14007)

(assert (=> b!874603 (= lt!329534 (mainMatchTheorem!15 r!15766 s!10566))))

(declare-fun b!874604 () Bool)

(declare-fun e!574999 () Bool)

(declare-fun tp_is_empty!4071 () Bool)

(declare-fun tp!276692 () Bool)

(assert (=> b!874604 (= e!574999 (and tp_is_empty!4071 tp!276692))))

(declare-fun b!874605 () Bool)

(declare-fun res!397665 () Bool)

(declare-fun e!575001 () Bool)

(assert (=> b!874605 (=> res!397665 e!575001)))

(declare-fun validRegex!683 (Regex!2214) Bool)

(assert (=> b!874605 (= res!397665 (not (validRegex!683 (regTwo!4940 r!15766))))))

(declare-fun res!397662 () Bool)

(assert (=> start!79064 (=> (not res!397662) (not e!575000))))

(assert (=> start!79064 (= res!397662 (validRegex!683 r!15766))))

(assert (=> start!79064 e!575000))

(assert (=> start!79064 e!574998))

(assert (=> start!79064 e!574999))

(declare-fun b!874606 () Bool)

(declare-fun tp!276689 () Bool)

(declare-fun tp!276690 () Bool)

(assert (=> b!874606 (= e!574998 (and tp!276689 tp!276690))))

(declare-fun b!874607 () Bool)

(assert (=> b!874607 (= e!574998 tp_is_empty!4071)))

(declare-fun b!874608 () Bool)

(declare-fun tp!276691 () Bool)

(declare-fun tp!276693 () Bool)

(assert (=> b!874608 (= e!574998 (and tp!276691 tp!276693))))

(declare-fun b!874609 () Bool)

(declare-fun res!397664 () Bool)

(assert (=> b!874609 (=> res!397664 e!575001)))

(assert (=> b!874609 (= res!397664 false)))

(assert (=> b!874610 (= e!575002 e!575001)))

(declare-fun res!397663 () Bool)

(assert (=> b!874610 (=> res!397663 e!575001)))

(declare-fun isEmpty!5613 (List!9444) Bool)

(assert (=> b!874610 (= res!397663 (isEmpty!5613 s!10566))))

(declare-fun Exists!13 (Int) Bool)

(assert (=> b!874610 (= (Exists!13 lambda!26341) (Exists!13 lambda!26342))))

(declare-fun lt!329535 () Unit!14007)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!9 (Regex!2214 Regex!2214 List!9444) Unit!14007)

(assert (=> b!874610 (= lt!329535 (lemmaExistCutMatchRandMatchRSpecEquivalent!9 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566))))

(declare-datatypes ((tuple2!10526 0))(
  ( (tuple2!10527 (_1!6089 List!9444) (_2!6089 List!9444)) )
))
(declare-datatypes ((Option!1905 0))(
  ( (None!1904) (Some!1904 (v!19321 tuple2!10526)) )
))
(declare-fun isDefined!1547 (Option!1905) Bool)

(declare-fun findConcatSeparation!11 (Regex!2214 Regex!2214 List!9444 List!9444 List!9444) Option!1905)

(assert (=> b!874610 (= (isDefined!1547 (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) Nil!9428 s!10566 s!10566)) (Exists!13 lambda!26341))))

(declare-fun lt!329533 () Unit!14007)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!11 (Regex!2214 Regex!2214 List!9444) Unit!14007)

(assert (=> b!874610 (= lt!329533 (lemmaFindConcatSeparationEquivalentToExists!11 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566))))

(declare-fun b!874611 () Bool)

(declare-fun ++!2448 (List!9444 List!9444) List!9444)

(assert (=> b!874611 (= e!575001 (= (++!2448 Nil!9428 s!10566) s!10566))))

(assert (= (and start!79064 res!397662) b!874603))

(assert (= (and b!874603 (not res!397661)) b!874610))

(assert (= (and b!874610 (not res!397663)) b!874609))

(assert (= (and b!874609 (not res!397664)) b!874605))

(assert (= (and b!874605 (not res!397665)) b!874611))

(assert (= (and start!79064 (is-ElementMatch!2214 r!15766)) b!874607))

(assert (= (and start!79064 (is-Concat!4047 r!15766)) b!874608))

(assert (= (and start!79064 (is-Star!2214 r!15766)) b!874602))

(assert (= (and start!79064 (is-Union!2214 r!15766)) b!874606))

(assert (= (and start!79064 (is-Cons!9428 s!10566)) b!874604))

(declare-fun m!1126413 () Bool)

(assert (=> b!874605 m!1126413))

(declare-fun m!1126415 () Bool)

(assert (=> b!874611 m!1126415))

(declare-fun m!1126417 () Bool)

(assert (=> b!874603 m!1126417))

(declare-fun m!1126419 () Bool)

(assert (=> b!874603 m!1126419))

(declare-fun m!1126421 () Bool)

(assert (=> b!874603 m!1126421))

(declare-fun m!1126423 () Bool)

(assert (=> b!874610 m!1126423))

(declare-fun m!1126425 () Bool)

(assert (=> b!874610 m!1126425))

(declare-fun m!1126427 () Bool)

(assert (=> b!874610 m!1126427))

(declare-fun m!1126429 () Bool)

(assert (=> b!874610 m!1126429))

(declare-fun m!1126431 () Bool)

(assert (=> b!874610 m!1126431))

(assert (=> b!874610 m!1126423))

(assert (=> b!874610 m!1126425))

(declare-fun m!1126433 () Bool)

(assert (=> b!874610 m!1126433))

(declare-fun m!1126435 () Bool)

(assert (=> b!874610 m!1126435))

(declare-fun m!1126437 () Bool)

(assert (=> start!79064 m!1126437))

(push 1)

(assert (not start!79064))

(assert (not b!874602))

(assert (not b!874610))

(assert (not b!874611))

(assert (not b!874605))

(assert (not b!874604))

(assert (not b!874608))

(assert tp_is_empty!4071)

(assert (not b!874606))

(assert (not b!874603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!874680 () Bool)

(declare-fun e!575042 () Bool)

(declare-fun call!50831 () Bool)

(assert (=> b!874680 (= e!575042 call!50831)))

(declare-fun d!275731 () Bool)

(declare-fun res!397705 () Bool)

(declare-fun e!575044 () Bool)

(assert (=> d!275731 (=> res!397705 e!575044)))

(assert (=> d!275731 (= res!397705 (is-ElementMatch!2214 (regTwo!4940 r!15766)))))

(assert (=> d!275731 (= (validRegex!683 (regTwo!4940 r!15766)) e!575044)))

(declare-fun b!874681 () Bool)

(declare-fun e!575039 () Bool)

(declare-fun call!50832 () Bool)

(assert (=> b!874681 (= e!575039 call!50832)))

(declare-fun bm!50825 () Bool)

(declare-fun call!50830 () Bool)

(declare-fun c!141451 () Bool)

(assert (=> bm!50825 (= call!50830 (validRegex!683 (ite c!141451 (regOne!4941 (regTwo!4940 r!15766)) (regOne!4940 (regTwo!4940 r!15766)))))))

(declare-fun b!874682 () Bool)

(declare-fun e!575041 () Bool)

(declare-fun e!575043 () Bool)

(assert (=> b!874682 (= e!575041 e!575043)))

(assert (=> b!874682 (= c!141451 (is-Union!2214 (regTwo!4940 r!15766)))))

(declare-fun b!874683 () Bool)

(declare-fun e!575040 () Bool)

(declare-fun e!575038 () Bool)

(assert (=> b!874683 (= e!575040 e!575038)))

(declare-fun res!397707 () Bool)

(assert (=> b!874683 (=> (not res!397707) (not e!575038))))

(assert (=> b!874683 (= res!397707 call!50830)))

(declare-fun bm!50826 () Bool)

(assert (=> bm!50826 (= call!50832 call!50831)))

(declare-fun c!141452 () Bool)

(declare-fun bm!50827 () Bool)

(assert (=> bm!50827 (= call!50831 (validRegex!683 (ite c!141452 (reg!2543 (regTwo!4940 r!15766)) (ite c!141451 (regTwo!4941 (regTwo!4940 r!15766)) (regTwo!4940 (regTwo!4940 r!15766))))))))

(declare-fun b!874684 () Bool)

(declare-fun res!397703 () Bool)

(assert (=> b!874684 (=> (not res!397703) (not e!575039))))

(assert (=> b!874684 (= res!397703 call!50830)))

(assert (=> b!874684 (= e!575043 e!575039)))

(declare-fun b!874685 () Bool)

(declare-fun res!397706 () Bool)

(assert (=> b!874685 (=> res!397706 e!575040)))

(assert (=> b!874685 (= res!397706 (not (is-Concat!4047 (regTwo!4940 r!15766))))))

(assert (=> b!874685 (= e!575043 e!575040)))

(declare-fun b!874686 () Bool)

(assert (=> b!874686 (= e!575044 e!575041)))

(assert (=> b!874686 (= c!141452 (is-Star!2214 (regTwo!4940 r!15766)))))

(declare-fun b!874687 () Bool)

(assert (=> b!874687 (= e!575041 e!575042)))

(declare-fun res!397704 () Bool)

(declare-fun nullable!553 (Regex!2214) Bool)

(assert (=> b!874687 (= res!397704 (not (nullable!553 (reg!2543 (regTwo!4940 r!15766)))))))

(assert (=> b!874687 (=> (not res!397704) (not e!575042))))

(declare-fun b!874688 () Bool)

(assert (=> b!874688 (= e!575038 call!50832)))

(assert (= (and d!275731 (not res!397705)) b!874686))

(assert (= (and b!874686 c!141452) b!874687))

(assert (= (and b!874686 (not c!141452)) b!874682))

(assert (= (and b!874687 res!397704) b!874680))

(assert (= (and b!874682 c!141451) b!874684))

(assert (= (and b!874682 (not c!141451)) b!874685))

(assert (= (and b!874684 res!397703) b!874681))

(assert (= (and b!874685 (not res!397706)) b!874683))

(assert (= (and b!874683 res!397707) b!874688))

(assert (= (or b!874681 b!874688) bm!50826))

(assert (= (or b!874684 b!874683) bm!50825))

(assert (= (or b!874680 bm!50826) bm!50827))

(declare-fun m!1126465 () Bool)

(assert (=> bm!50825 m!1126465))

(declare-fun m!1126467 () Bool)

(assert (=> bm!50827 m!1126467))

(declare-fun m!1126469 () Bool)

(assert (=> b!874687 m!1126469))

(assert (=> b!874605 d!275731))

(declare-fun d!275733 () Bool)

(declare-fun choose!5148 (Int) Bool)

(assert (=> d!275733 (= (Exists!13 lambda!26341) (choose!5148 lambda!26341))))

(declare-fun bs!233990 () Bool)

(assert (= bs!233990 d!275733))

(declare-fun m!1126471 () Bool)

(assert (=> bs!233990 m!1126471))

(assert (=> b!874610 d!275733))

(declare-fun d!275735 () Bool)

(assert (=> d!275735 (= (isEmpty!5613 s!10566) (is-Nil!9428 s!10566))))

(assert (=> b!874610 d!275735))

(declare-fun b!874713 () Bool)

(declare-fun e!575063 () Bool)

(assert (=> b!874713 (= e!575063 (matchR!752 (regTwo!4940 r!15766) s!10566))))

(declare-fun b!874714 () Bool)

(declare-fun e!575060 () Option!1905)

(assert (=> b!874714 (= e!575060 (Some!1904 (tuple2!10527 Nil!9428 s!10566)))))

(declare-fun b!874715 () Bool)

(declare-fun res!397723 () Bool)

(declare-fun e!575059 () Bool)

(assert (=> b!874715 (=> (not res!397723) (not e!575059))))

(declare-fun lt!329558 () Option!1905)

(declare-fun get!2889 (Option!1905) tuple2!10526)

(assert (=> b!874715 (= res!397723 (matchR!752 (regTwo!4940 r!15766) (_2!6089 (get!2889 lt!329558))))))

(declare-fun d!275737 () Bool)

(declare-fun e!575061 () Bool)

(assert (=> d!275737 e!575061))

(declare-fun res!397726 () Bool)

(assert (=> d!275737 (=> res!397726 e!575061)))

(assert (=> d!275737 (= res!397726 e!575059)))

(declare-fun res!397722 () Bool)

(assert (=> d!275737 (=> (not res!397722) (not e!575059))))

(assert (=> d!275737 (= res!397722 (isDefined!1547 lt!329558))))

(assert (=> d!275737 (= lt!329558 e!575060)))

(declare-fun c!141459 () Bool)

(assert (=> d!275737 (= c!141459 e!575063)))

(declare-fun res!397721 () Bool)

(assert (=> d!275737 (=> (not res!397721) (not e!575063))))

(assert (=> d!275737 (= res!397721 (matchR!752 EmptyExpr!2214 Nil!9428))))

(assert (=> d!275737 (validRegex!683 EmptyExpr!2214)))

(assert (=> d!275737 (= (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) Nil!9428 s!10566 s!10566) lt!329558)))

(declare-fun b!874716 () Bool)

(declare-fun lt!329557 () Unit!14007)

(declare-fun lt!329556 () Unit!14007)

(assert (=> b!874716 (= lt!329557 lt!329556)))

(assert (=> b!874716 (= (++!2448 (++!2448 Nil!9428 (Cons!9428 (h!14829 s!10566) Nil!9428)) (t!100490 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!80 (List!9444 C!4998 List!9444 List!9444) Unit!14007)

(assert (=> b!874716 (= lt!329556 (lemmaMoveElementToOtherListKeepsConcatEq!80 Nil!9428 (h!14829 s!10566) (t!100490 s!10566) s!10566))))

(declare-fun e!575062 () Option!1905)

(assert (=> b!874716 (= e!575062 (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) (++!2448 Nil!9428 (Cons!9428 (h!14829 s!10566) Nil!9428)) (t!100490 s!10566) s!10566))))

(declare-fun b!874717 () Bool)

(assert (=> b!874717 (= e!575061 (not (isDefined!1547 lt!329558)))))

(declare-fun b!874718 () Bool)

(assert (=> b!874718 (= e!575060 e!575062)))

(declare-fun c!141460 () Bool)

(assert (=> b!874718 (= c!141460 (is-Nil!9428 s!10566))))

(declare-fun b!874719 () Bool)

(assert (=> b!874719 (= e!575059 (= (++!2448 (_1!6089 (get!2889 lt!329558)) (_2!6089 (get!2889 lt!329558))) s!10566))))

(declare-fun b!874720 () Bool)

(declare-fun res!397720 () Bool)

(assert (=> b!874720 (=> (not res!397720) (not e!575059))))

(assert (=> b!874720 (= res!397720 (matchR!752 EmptyExpr!2214 (_1!6089 (get!2889 lt!329558))))))

(declare-fun b!874721 () Bool)

(assert (=> b!874721 (= e!575062 None!1904)))

(assert (= (and d!275737 res!397721) b!874713))

(assert (= (and d!275737 c!141459) b!874714))

(assert (= (and d!275737 (not c!141459)) b!874718))

(assert (= (and b!874718 c!141460) b!874721))

(assert (= (and b!874718 (not c!141460)) b!874716))

(assert (= (and d!275737 res!397722) b!874720))

(assert (= (and b!874720 res!397720) b!874715))

(assert (= (and b!874715 res!397723) b!874719))

(assert (= (and d!275737 (not res!397726)) b!874717))

(declare-fun m!1126473 () Bool)

(assert (=> d!275737 m!1126473))

(declare-fun m!1126475 () Bool)

(assert (=> d!275737 m!1126475))

(declare-fun m!1126477 () Bool)

(assert (=> d!275737 m!1126477))

(declare-fun m!1126479 () Bool)

(assert (=> b!874715 m!1126479))

(declare-fun m!1126481 () Bool)

(assert (=> b!874715 m!1126481))

(assert (=> b!874719 m!1126479))

(declare-fun m!1126483 () Bool)

(assert (=> b!874719 m!1126483))

(declare-fun m!1126485 () Bool)

(assert (=> b!874713 m!1126485))

(assert (=> b!874717 m!1126473))

(declare-fun m!1126487 () Bool)

(assert (=> b!874716 m!1126487))

(assert (=> b!874716 m!1126487))

(declare-fun m!1126489 () Bool)

(assert (=> b!874716 m!1126489))

(declare-fun m!1126491 () Bool)

(assert (=> b!874716 m!1126491))

(assert (=> b!874716 m!1126487))

(declare-fun m!1126493 () Bool)

(assert (=> b!874716 m!1126493))

(assert (=> b!874720 m!1126479))

(declare-fun m!1126495 () Bool)

(assert (=> b!874720 m!1126495))

(assert (=> b!874610 d!275737))

(declare-fun bs!233991 () Bool)

(declare-fun d!275741 () Bool)

(assert (= bs!233991 (and d!275741 b!874610)))

(declare-fun lambda!26353 () Int)

(assert (=> bs!233991 (= lambda!26353 lambda!26341)))

(assert (=> bs!233991 (not (= lambda!26353 lambda!26342))))

(assert (=> d!275741 true))

(assert (=> d!275741 true))

(assert (=> d!275741 true))

(assert (=> d!275741 (= (isDefined!1547 (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) Nil!9428 s!10566 s!10566)) (Exists!13 lambda!26353))))

(declare-fun lt!329562 () Unit!14007)

(declare-fun choose!5149 (Regex!2214 Regex!2214 List!9444) Unit!14007)

(assert (=> d!275741 (= lt!329562 (choose!5149 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566))))

(assert (=> d!275741 (validRegex!683 EmptyExpr!2214)))

(assert (=> d!275741 (= (lemmaFindConcatSeparationEquivalentToExists!11 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566) lt!329562)))

(declare-fun bs!233992 () Bool)

(assert (= bs!233992 d!275741))

(declare-fun m!1126511 () Bool)

(assert (=> bs!233992 m!1126511))

(assert (=> bs!233992 m!1126425))

(assert (=> bs!233992 m!1126427))

(assert (=> bs!233992 m!1126477))

(declare-fun m!1126513 () Bool)

(assert (=> bs!233992 m!1126513))

(assert (=> bs!233992 m!1126425))

(assert (=> b!874610 d!275741))

(declare-fun bs!233993 () Bool)

(declare-fun d!275745 () Bool)

(assert (= bs!233993 (and d!275745 b!874610)))

(declare-fun lambda!26359 () Int)

(assert (=> bs!233993 (= lambda!26359 lambda!26341)))

(assert (=> bs!233993 (not (= lambda!26359 lambda!26342))))

(declare-fun bs!233994 () Bool)

(assert (= bs!233994 (and d!275745 d!275741)))

(assert (=> bs!233994 (= lambda!26359 lambda!26353)))

(assert (=> d!275745 true))

(assert (=> d!275745 true))

(assert (=> d!275745 true))

(declare-fun lambda!26361 () Int)

(assert (=> bs!233993 (not (= lambda!26361 lambda!26341))))

(assert (=> bs!233993 (= lambda!26361 lambda!26342)))

(assert (=> bs!233994 (not (= lambda!26361 lambda!26353))))

(declare-fun bs!233995 () Bool)

(assert (= bs!233995 d!275745))

(assert (=> bs!233995 (not (= lambda!26361 lambda!26359))))

(assert (=> d!275745 true))

(assert (=> d!275745 true))

(assert (=> d!275745 true))

(assert (=> d!275745 (= (Exists!13 lambda!26359) (Exists!13 lambda!26361))))

(declare-fun lt!329565 () Unit!14007)

(declare-fun choose!5150 (Regex!2214 Regex!2214 List!9444) Unit!14007)

(assert (=> d!275745 (= lt!329565 (choose!5150 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566))))

(assert (=> d!275745 (validRegex!683 EmptyExpr!2214)))

(assert (=> d!275745 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!9 EmptyExpr!2214 (regTwo!4940 r!15766) s!10566) lt!329565)))

(declare-fun m!1126515 () Bool)

(assert (=> bs!233995 m!1126515))

(declare-fun m!1126517 () Bool)

(assert (=> bs!233995 m!1126517))

(declare-fun m!1126519 () Bool)

(assert (=> bs!233995 m!1126519))

(assert (=> bs!233995 m!1126477))

(assert (=> b!874610 d!275745))

(declare-fun d!275747 () Bool)

(declare-fun isEmpty!5615 (Option!1905) Bool)

(assert (=> d!275747 (= (isDefined!1547 (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) Nil!9428 s!10566 s!10566)) (not (isEmpty!5615 (findConcatSeparation!11 EmptyExpr!2214 (regTwo!4940 r!15766) Nil!9428 s!10566 s!10566))))))

(declare-fun bs!233996 () Bool)

(assert (= bs!233996 d!275747))

(assert (=> bs!233996 m!1126425))

(declare-fun m!1126521 () Bool)

(assert (=> bs!233996 m!1126521))

(assert (=> b!874610 d!275747))

(declare-fun d!275749 () Bool)

(assert (=> d!275749 (= (Exists!13 lambda!26342) (choose!5148 lambda!26342))))

(declare-fun bs!233997 () Bool)

(assert (= bs!233997 d!275749))

(declare-fun m!1126523 () Bool)

(assert (=> bs!233997 m!1126523))

(assert (=> b!874610 d!275749))

(declare-fun bs!233998 () Bool)

(declare-fun b!874809 () Bool)

(assert (= bs!233998 (and b!874809 d!275745)))

(declare-fun lambda!26368 () Int)

(assert (=> bs!233998 (not (= lambda!26368 lambda!26361))))

(declare-fun bs!233999 () Bool)

(assert (= bs!233999 (and b!874809 b!874610)))

(assert (=> bs!233999 (not (= lambda!26368 lambda!26341))))

(declare-fun bs!234000 () Bool)

(assert (= bs!234000 (and b!874809 d!275741)))

(assert (=> bs!234000 (not (= lambda!26368 lambda!26353))))

(assert (=> bs!233998 (not (= lambda!26368 lambda!26359))))

(assert (=> bs!233999 (not (= lambda!26368 lambda!26342))))

(assert (=> b!874809 true))

(assert (=> b!874809 true))

(declare-fun bs!234001 () Bool)

(declare-fun b!874804 () Bool)

(assert (= bs!234001 (and b!874804 d!275745)))

(declare-fun lambda!26369 () Int)

(assert (=> bs!234001 (= (= (regOne!4940 r!15766) EmptyExpr!2214) (= lambda!26369 lambda!26361))))

(declare-fun bs!234002 () Bool)

(assert (= bs!234002 (and b!874804 b!874809)))

(assert (=> bs!234002 (not (= lambda!26369 lambda!26368))))

(declare-fun bs!234003 () Bool)

(assert (= bs!234003 (and b!874804 b!874610)))

(assert (=> bs!234003 (not (= lambda!26369 lambda!26341))))

(declare-fun bs!234004 () Bool)

(assert (= bs!234004 (and b!874804 d!275741)))

(assert (=> bs!234004 (not (= lambda!26369 lambda!26353))))

(assert (=> bs!234001 (not (= lambda!26369 lambda!26359))))

(assert (=> bs!234003 (= (= (regOne!4940 r!15766) EmptyExpr!2214) (= lambda!26369 lambda!26342))))

(assert (=> b!874804 true))

(assert (=> b!874804 true))

(declare-fun e!575110 () Bool)

(declare-fun call!50841 () Bool)

(assert (=> b!874804 (= e!575110 call!50841)))

(declare-fun b!874805 () Bool)

(declare-fun e!575113 () Bool)

(assert (=> b!874805 (= e!575113 (= s!10566 (Cons!9428 (c!141445 r!15766) Nil!9428)))))

(declare-fun bm!50836 () Bool)

(declare-fun c!141481 () Bool)

(assert (=> bm!50836 (= call!50841 (Exists!13 (ite c!141481 lambda!26368 lambda!26369)))))

(declare-fun b!874806 () Bool)

(declare-fun e!575112 () Bool)

(declare-fun call!50842 () Bool)

(assert (=> b!874806 (= e!575112 call!50842)))

(declare-fun b!874807 () Bool)

(declare-fun e!575114 () Bool)

(declare-fun e!575109 () Bool)

(assert (=> b!874807 (= e!575114 e!575109)))

(declare-fun res!397774 () Bool)

(assert (=> b!874807 (= res!397774 (matchRSpec!15 (regOne!4941 r!15766) s!10566))))

(assert (=> b!874807 (=> res!397774 e!575109)))

(declare-fun b!874808 () Bool)

(assert (=> b!874808 (= e!575109 (matchRSpec!15 (regTwo!4941 r!15766) s!10566))))

(declare-fun e!575108 () Bool)

(assert (=> b!874809 (= e!575108 call!50841)))

(declare-fun d!275751 () Bool)

(declare-fun c!141478 () Bool)

(assert (=> d!275751 (= c!141478 (is-EmptyExpr!2214 r!15766))))

(assert (=> d!275751 (= (matchRSpec!15 r!15766 s!10566) e!575112)))

(declare-fun b!874810 () Bool)

(declare-fun c!141480 () Bool)

(assert (=> b!874810 (= c!141480 (is-ElementMatch!2214 r!15766))))

(declare-fun e!575111 () Bool)

(assert (=> b!874810 (= e!575111 e!575113)))

(declare-fun bm!50837 () Bool)

(assert (=> bm!50837 (= call!50842 (isEmpty!5613 s!10566))))

(declare-fun b!874811 () Bool)

(assert (=> b!874811 (= e!575112 e!575111)))

(declare-fun res!397775 () Bool)

(assert (=> b!874811 (= res!397775 (not (is-EmptyLang!2214 r!15766)))))

(assert (=> b!874811 (=> (not res!397775) (not e!575111))))

(declare-fun b!874812 () Bool)

(assert (=> b!874812 (= e!575114 e!575110)))

(assert (=> b!874812 (= c!141481 (is-Star!2214 r!15766))))

(declare-fun b!874813 () Bool)

(declare-fun res!397773 () Bool)

(assert (=> b!874813 (=> res!397773 e!575108)))

(assert (=> b!874813 (= res!397773 call!50842)))

(assert (=> b!874813 (= e!575110 e!575108)))

(declare-fun b!874814 () Bool)

(declare-fun c!141479 () Bool)

(assert (=> b!874814 (= c!141479 (is-Union!2214 r!15766))))

(assert (=> b!874814 (= e!575113 e!575114)))

(assert (= (and d!275751 c!141478) b!874806))

(assert (= (and d!275751 (not c!141478)) b!874811))

(assert (= (and b!874811 res!397775) b!874810))

(assert (= (and b!874810 c!141480) b!874805))

(assert (= (and b!874810 (not c!141480)) b!874814))

(assert (= (and b!874814 c!141479) b!874807))

(assert (= (and b!874814 (not c!141479)) b!874812))

(assert (= (and b!874807 (not res!397774)) b!874808))

(assert (= (and b!874812 c!141481) b!874813))

(assert (= (and b!874812 (not c!141481)) b!874804))

(assert (= (and b!874813 (not res!397773)) b!874809))

(assert (= (or b!874809 b!874804) bm!50836))

(assert (= (or b!874806 b!874813) bm!50837))

(declare-fun m!1126525 () Bool)

(assert (=> bm!50836 m!1126525))

(declare-fun m!1126527 () Bool)

(assert (=> b!874807 m!1126527))

(declare-fun m!1126529 () Bool)

(assert (=> b!874808 m!1126529))

(assert (=> bm!50837 m!1126433))

(assert (=> b!874603 d!275751))

(declare-fun d!275753 () Bool)

(declare-fun e!575136 () Bool)

(assert (=> d!275753 e!575136))

(declare-fun c!141493 () Bool)

(assert (=> d!275753 (= c!141493 (is-EmptyExpr!2214 r!15766))))

(declare-fun lt!329568 () Bool)

(declare-fun e!575140 () Bool)

(assert (=> d!275753 (= lt!329568 e!575140)))

(declare-fun c!141494 () Bool)

(assert (=> d!275753 (= c!141494 (isEmpty!5613 s!10566))))

(assert (=> d!275753 (validRegex!683 r!15766)))

(assert (=> d!275753 (= (matchR!752 r!15766 s!10566) lt!329568)))

(declare-fun b!874854 () Bool)

(declare-fun e!575137 () Bool)

(declare-fun e!575138 () Bool)

(assert (=> b!874854 (= e!575137 e!575138)))

(declare-fun res!397798 () Bool)

(assert (=> b!874854 (=> res!397798 e!575138)))

(declare-fun call!50847 () Bool)

(assert (=> b!874854 (= res!397798 call!50847)))

(declare-fun b!874855 () Bool)

(assert (=> b!874855 (= e!575136 (= lt!329568 call!50847))))

(declare-fun b!874856 () Bool)

(declare-fun e!575139 () Bool)

(declare-fun head!1521 (List!9444) C!4998)

(assert (=> b!874856 (= e!575139 (= (head!1521 s!10566) (c!141445 r!15766)))))

(declare-fun b!874857 () Bool)

(declare-fun res!397797 () Bool)

(assert (=> b!874857 (=> (not res!397797) (not e!575139))))

(declare-fun tail!1083 (List!9444) List!9444)

(assert (=> b!874857 (= res!397797 (isEmpty!5613 (tail!1083 s!10566)))))

(declare-fun b!874858 () Bool)

(declare-fun res!397796 () Bool)

(assert (=> b!874858 (=> res!397796 e!575138)))

(assert (=> b!874858 (= res!397796 (not (isEmpty!5613 (tail!1083 s!10566))))))

(declare-fun b!874859 () Bool)

(declare-fun derivativeStep!368 (Regex!2214 C!4998) Regex!2214)

(assert (=> b!874859 (= e!575140 (matchR!752 (derivativeStep!368 r!15766 (head!1521 s!10566)) (tail!1083 s!10566)))))

(declare-fun b!874860 () Bool)

(assert (=> b!874860 (= e!575140 (nullable!553 r!15766))))

(declare-fun b!874861 () Bool)

(declare-fun e!575141 () Bool)

(assert (=> b!874861 (= e!575141 e!575137)))

(declare-fun res!397799 () Bool)

(assert (=> b!874861 (=> (not res!397799) (not e!575137))))

(assert (=> b!874861 (= res!397799 (not lt!329568))))

(declare-fun b!874862 () Bool)

(declare-fun res!397801 () Bool)

(assert (=> b!874862 (=> res!397801 e!575141)))

(assert (=> b!874862 (= res!397801 (not (is-ElementMatch!2214 r!15766)))))

(declare-fun e!575142 () Bool)

(assert (=> b!874862 (= e!575142 e!575141)))

(declare-fun b!874863 () Bool)

(assert (=> b!874863 (= e!575138 (not (= (head!1521 s!10566) (c!141445 r!15766))))))

(declare-fun b!874864 () Bool)

(declare-fun res!397800 () Bool)

(assert (=> b!874864 (=> (not res!397800) (not e!575139))))

(assert (=> b!874864 (= res!397800 (not call!50847))))

(declare-fun b!874865 () Bool)

(assert (=> b!874865 (= e!575142 (not lt!329568))))

(declare-fun bm!50842 () Bool)

(assert (=> bm!50842 (= call!50847 (isEmpty!5613 s!10566))))

(declare-fun b!874866 () Bool)

(declare-fun res!397795 () Bool)

(assert (=> b!874866 (=> res!397795 e!575141)))

(assert (=> b!874866 (= res!397795 e!575139)))

(declare-fun res!397802 () Bool)

(assert (=> b!874866 (=> (not res!397802) (not e!575139))))

(assert (=> b!874866 (= res!397802 lt!329568)))

(declare-fun b!874867 () Bool)

(assert (=> b!874867 (= e!575136 e!575142)))

(declare-fun c!141492 () Bool)

(assert (=> b!874867 (= c!141492 (is-EmptyLang!2214 r!15766))))

(assert (= (and d!275753 c!141494) b!874860))

(assert (= (and d!275753 (not c!141494)) b!874859))

(assert (= (and d!275753 c!141493) b!874855))

(assert (= (and d!275753 (not c!141493)) b!874867))

(assert (= (and b!874867 c!141492) b!874865))

(assert (= (and b!874867 (not c!141492)) b!874862))

(assert (= (and b!874862 (not res!397801)) b!874866))

(assert (= (and b!874866 res!397802) b!874864))

(assert (= (and b!874864 res!397800) b!874857))

(assert (= (and b!874857 res!397797) b!874856))

(assert (= (and b!874866 (not res!397795)) b!874861))

(assert (= (and b!874861 res!397799) b!874854))

(assert (= (and b!874854 (not res!397798)) b!874858))

(assert (= (and b!874858 (not res!397796)) b!874863))

(assert (= (or b!874855 b!874854 b!874864) bm!50842))

(assert (=> d!275753 m!1126433))

(assert (=> d!275753 m!1126437))

(declare-fun m!1126537 () Bool)

(assert (=> b!874858 m!1126537))

(assert (=> b!874858 m!1126537))

(declare-fun m!1126539 () Bool)

(assert (=> b!874858 m!1126539))

(declare-fun m!1126541 () Bool)

(assert (=> b!874856 m!1126541))

(assert (=> b!874857 m!1126537))

(assert (=> b!874857 m!1126537))

(assert (=> b!874857 m!1126539))

(assert (=> b!874863 m!1126541))

(declare-fun m!1126543 () Bool)

(assert (=> b!874860 m!1126543))

(assert (=> b!874859 m!1126541))

(assert (=> b!874859 m!1126541))

(declare-fun m!1126545 () Bool)

(assert (=> b!874859 m!1126545))

(assert (=> b!874859 m!1126537))

(assert (=> b!874859 m!1126545))

(assert (=> b!874859 m!1126537))

(declare-fun m!1126547 () Bool)

(assert (=> b!874859 m!1126547))

(assert (=> bm!50842 m!1126433))

(assert (=> b!874603 d!275753))

(declare-fun d!275757 () Bool)

(assert (=> d!275757 (= (matchR!752 r!15766 s!10566) (matchRSpec!15 r!15766 s!10566))))

(declare-fun lt!329571 () Unit!14007)

(declare-fun choose!5151 (Regex!2214 List!9444) Unit!14007)

(assert (=> d!275757 (= lt!329571 (choose!5151 r!15766 s!10566))))

(assert (=> d!275757 (validRegex!683 r!15766)))

(assert (=> d!275757 (= (mainMatchTheorem!15 r!15766 s!10566) lt!329571)))

(declare-fun bs!234008 () Bool)

(assert (= bs!234008 d!275757))

(assert (=> bs!234008 m!1126419))

(assert (=> bs!234008 m!1126417))

(declare-fun m!1126549 () Bool)

(assert (=> bs!234008 m!1126549))

(assert (=> bs!234008 m!1126437))

(assert (=> b!874603 d!275757))

(declare-fun b!874868 () Bool)

(declare-fun e!575147 () Bool)

(declare-fun call!50849 () Bool)

(assert (=> b!874868 (= e!575147 call!50849)))

(declare-fun d!275759 () Bool)

(declare-fun res!397805 () Bool)

(declare-fun e!575149 () Bool)

(assert (=> d!275759 (=> res!397805 e!575149)))

(assert (=> d!275759 (= res!397805 (is-ElementMatch!2214 r!15766))))

(assert (=> d!275759 (= (validRegex!683 r!15766) e!575149)))

(declare-fun b!874869 () Bool)

(declare-fun e!575144 () Bool)

(declare-fun call!50850 () Bool)

(assert (=> b!874869 (= e!575144 call!50850)))

(declare-fun bm!50843 () Bool)

(declare-fun call!50848 () Bool)

(declare-fun c!141495 () Bool)

(assert (=> bm!50843 (= call!50848 (validRegex!683 (ite c!141495 (regOne!4941 r!15766) (regOne!4940 r!15766))))))

(declare-fun b!874870 () Bool)

(declare-fun e!575146 () Bool)

(declare-fun e!575148 () Bool)

(assert (=> b!874870 (= e!575146 e!575148)))

(assert (=> b!874870 (= c!141495 (is-Union!2214 r!15766))))

(declare-fun b!874871 () Bool)

(declare-fun e!575145 () Bool)

(declare-fun e!575143 () Bool)

(assert (=> b!874871 (= e!575145 e!575143)))

(declare-fun res!397807 () Bool)

(assert (=> b!874871 (=> (not res!397807) (not e!575143))))

(assert (=> b!874871 (= res!397807 call!50848)))

(declare-fun bm!50844 () Bool)

(assert (=> bm!50844 (= call!50850 call!50849)))

(declare-fun c!141496 () Bool)

(declare-fun bm!50845 () Bool)

(assert (=> bm!50845 (= call!50849 (validRegex!683 (ite c!141496 (reg!2543 r!15766) (ite c!141495 (regTwo!4941 r!15766) (regTwo!4940 r!15766)))))))

(declare-fun b!874872 () Bool)

(declare-fun res!397803 () Bool)

(assert (=> b!874872 (=> (not res!397803) (not e!575144))))

(assert (=> b!874872 (= res!397803 call!50848)))

(assert (=> b!874872 (= e!575148 e!575144)))

(declare-fun b!874873 () Bool)

(declare-fun res!397806 () Bool)

(assert (=> b!874873 (=> res!397806 e!575145)))

(assert (=> b!874873 (= res!397806 (not (is-Concat!4047 r!15766)))))

(assert (=> b!874873 (= e!575148 e!575145)))

(declare-fun b!874874 () Bool)

(assert (=> b!874874 (= e!575149 e!575146)))

(assert (=> b!874874 (= c!141496 (is-Star!2214 r!15766))))

(declare-fun b!874875 () Bool)

(assert (=> b!874875 (= e!575146 e!575147)))

(declare-fun res!397804 () Bool)

(assert (=> b!874875 (= res!397804 (not (nullable!553 (reg!2543 r!15766))))))

(assert (=> b!874875 (=> (not res!397804) (not e!575147))))

(declare-fun b!874876 () Bool)

(assert (=> b!874876 (= e!575143 call!50850)))

(assert (= (and d!275759 (not res!397805)) b!874874))

(assert (= (and b!874874 c!141496) b!874875))

(assert (= (and b!874874 (not c!141496)) b!874870))

(assert (= (and b!874875 res!397804) b!874868))

(assert (= (and b!874870 c!141495) b!874872))

(assert (= (and b!874870 (not c!141495)) b!874873))

(assert (= (and b!874872 res!397803) b!874869))

(assert (= (and b!874873 (not res!397806)) b!874871))

(assert (= (and b!874871 res!397807) b!874876))

(assert (= (or b!874869 b!874876) bm!50844))

(assert (= (or b!874872 b!874871) bm!50843))

(assert (= (or b!874868 bm!50844) bm!50845))

(declare-fun m!1126551 () Bool)

(assert (=> bm!50843 m!1126551))

(declare-fun m!1126553 () Bool)

(assert (=> bm!50845 m!1126553))

(declare-fun m!1126555 () Bool)

(assert (=> b!874875 m!1126555))

(assert (=> start!79064 d!275759))

(declare-fun b!874915 () Bool)

(declare-fun res!397829 () Bool)

(declare-fun e!575169 () Bool)

(assert (=> b!874915 (=> (not res!397829) (not e!575169))))

(declare-fun lt!329576 () List!9444)

(declare-fun size!7848 (List!9444) Int)

(assert (=> b!874915 (= res!397829 (= (size!7848 lt!329576) (+ (size!7848 Nil!9428) (size!7848 s!10566))))))

(declare-fun b!874916 () Bool)

(assert (=> b!874916 (= e!575169 (or (not (= s!10566 Nil!9428)) (= lt!329576 Nil!9428)))))

(declare-fun d!275761 () Bool)

(assert (=> d!275761 e!575169))

(declare-fun res!397828 () Bool)

(assert (=> d!275761 (=> (not res!397828) (not e!575169))))

(declare-fun content!1369 (List!9444) (Set C!4998))

(assert (=> d!275761 (= res!397828 (= (content!1369 lt!329576) (set.union (content!1369 Nil!9428) (content!1369 s!10566))))))

(declare-fun e!575168 () List!9444)

(assert (=> d!275761 (= lt!329576 e!575168)))

(declare-fun c!141505 () Bool)

(assert (=> d!275761 (= c!141505 (is-Nil!9428 Nil!9428))))

(assert (=> d!275761 (= (++!2448 Nil!9428 s!10566) lt!329576)))

(declare-fun b!874913 () Bool)

(assert (=> b!874913 (= e!575168 s!10566)))

(declare-fun b!874914 () Bool)

(assert (=> b!874914 (= e!575168 (Cons!9428 (h!14829 Nil!9428) (++!2448 (t!100490 Nil!9428) s!10566)))))

(assert (= (and d!275761 c!141505) b!874913))

(assert (= (and d!275761 (not c!141505)) b!874914))

(assert (= (and d!275761 res!397828) b!874915))

(assert (= (and b!874915 res!397829) b!874916))

(declare-fun m!1126557 () Bool)

(assert (=> b!874915 m!1126557))

(declare-fun m!1126559 () Bool)

(assert (=> b!874915 m!1126559))

(declare-fun m!1126561 () Bool)

(assert (=> b!874915 m!1126561))

(declare-fun m!1126563 () Bool)

(assert (=> d!275761 m!1126563))

(declare-fun m!1126565 () Bool)

(assert (=> d!275761 m!1126565))

(declare-fun m!1126567 () Bool)

(assert (=> d!275761 m!1126567))

(declare-fun m!1126569 () Bool)

(assert (=> b!874914 m!1126569))

(assert (=> b!874611 d!275761))

(declare-fun b!874921 () Bool)

(declare-fun e!575172 () Bool)

(declare-fun tp!276715 () Bool)

(assert (=> b!874921 (= e!575172 (and tp_is_empty!4071 tp!276715))))

(assert (=> b!874604 (= tp!276692 e!575172)))

(assert (= (and b!874604 (is-Cons!9428 (t!100490 s!10566))) b!874921))

(declare-fun b!874932 () Bool)

(declare-fun e!575175 () Bool)

(assert (=> b!874932 (= e!575175 tp_is_empty!4071)))

(declare-fun b!874933 () Bool)

(declare-fun tp!276730 () Bool)

(declare-fun tp!276729 () Bool)

(assert (=> b!874933 (= e!575175 (and tp!276730 tp!276729))))

(declare-fun b!874934 () Bool)

(declare-fun tp!276727 () Bool)

(assert (=> b!874934 (= e!575175 tp!276727)))

(assert (=> b!874608 (= tp!276691 e!575175)))

(declare-fun b!874935 () Bool)

(declare-fun tp!276726 () Bool)

(declare-fun tp!276728 () Bool)

(assert (=> b!874935 (= e!575175 (and tp!276726 tp!276728))))

(assert (= (and b!874608 (is-ElementMatch!2214 (regOne!4940 r!15766))) b!874932))

(assert (= (and b!874608 (is-Concat!4047 (regOne!4940 r!15766))) b!874933))

(assert (= (and b!874608 (is-Star!2214 (regOne!4940 r!15766))) b!874934))

(assert (= (and b!874608 (is-Union!2214 (regOne!4940 r!15766))) b!874935))

(declare-fun b!874936 () Bool)

(declare-fun e!575176 () Bool)

(assert (=> b!874936 (= e!575176 tp_is_empty!4071)))

(declare-fun b!874937 () Bool)

(declare-fun tp!276735 () Bool)

(declare-fun tp!276734 () Bool)

(assert (=> b!874937 (= e!575176 (and tp!276735 tp!276734))))

(declare-fun b!874938 () Bool)

(declare-fun tp!276732 () Bool)

(assert (=> b!874938 (= e!575176 tp!276732)))

(assert (=> b!874608 (= tp!276693 e!575176)))

(declare-fun b!874939 () Bool)

(declare-fun tp!276731 () Bool)

(declare-fun tp!276733 () Bool)

(assert (=> b!874939 (= e!575176 (and tp!276731 tp!276733))))

(assert (= (and b!874608 (is-ElementMatch!2214 (regTwo!4940 r!15766))) b!874936))

(assert (= (and b!874608 (is-Concat!4047 (regTwo!4940 r!15766))) b!874937))

(assert (= (and b!874608 (is-Star!2214 (regTwo!4940 r!15766))) b!874938))

(assert (= (and b!874608 (is-Union!2214 (regTwo!4940 r!15766))) b!874939))

(declare-fun b!874940 () Bool)

(declare-fun e!575177 () Bool)

(assert (=> b!874940 (= e!575177 tp_is_empty!4071)))

(declare-fun b!874941 () Bool)

(declare-fun tp!276740 () Bool)

(declare-fun tp!276739 () Bool)

(assert (=> b!874941 (= e!575177 (and tp!276740 tp!276739))))

(declare-fun b!874942 () Bool)

(declare-fun tp!276737 () Bool)

(assert (=> b!874942 (= e!575177 tp!276737)))

(assert (=> b!874602 (= tp!276694 e!575177)))

(declare-fun b!874943 () Bool)

(declare-fun tp!276736 () Bool)

(declare-fun tp!276738 () Bool)

(assert (=> b!874943 (= e!575177 (and tp!276736 tp!276738))))

(assert (= (and b!874602 (is-ElementMatch!2214 (reg!2543 r!15766))) b!874940))

(assert (= (and b!874602 (is-Concat!4047 (reg!2543 r!15766))) b!874941))

(assert (= (and b!874602 (is-Star!2214 (reg!2543 r!15766))) b!874942))

(assert (= (and b!874602 (is-Union!2214 (reg!2543 r!15766))) b!874943))

(declare-fun b!874944 () Bool)

(declare-fun e!575178 () Bool)

(assert (=> b!874944 (= e!575178 tp_is_empty!4071)))

(declare-fun b!874945 () Bool)

(declare-fun tp!276745 () Bool)

(declare-fun tp!276744 () Bool)

(assert (=> b!874945 (= e!575178 (and tp!276745 tp!276744))))

(declare-fun b!874946 () Bool)

(declare-fun tp!276742 () Bool)

(assert (=> b!874946 (= e!575178 tp!276742)))

(assert (=> b!874606 (= tp!276689 e!575178)))

(declare-fun b!874947 () Bool)

(declare-fun tp!276741 () Bool)

(declare-fun tp!276743 () Bool)

(assert (=> b!874947 (= e!575178 (and tp!276741 tp!276743))))

(assert (= (and b!874606 (is-ElementMatch!2214 (regOne!4941 r!15766))) b!874944))

(assert (= (and b!874606 (is-Concat!4047 (regOne!4941 r!15766))) b!874945))

(assert (= (and b!874606 (is-Star!2214 (regOne!4941 r!15766))) b!874946))

(assert (= (and b!874606 (is-Union!2214 (regOne!4941 r!15766))) b!874947))

(declare-fun b!874948 () Bool)

(declare-fun e!575179 () Bool)

(assert (=> b!874948 (= e!575179 tp_is_empty!4071)))

(declare-fun b!874949 () Bool)

(declare-fun tp!276750 () Bool)

(declare-fun tp!276749 () Bool)

(assert (=> b!874949 (= e!575179 (and tp!276750 tp!276749))))

(declare-fun b!874950 () Bool)

(declare-fun tp!276747 () Bool)

(assert (=> b!874950 (= e!575179 tp!276747)))

(assert (=> b!874606 (= tp!276690 e!575179)))

(declare-fun b!874951 () Bool)

(declare-fun tp!276746 () Bool)

(declare-fun tp!276748 () Bool)

(assert (=> b!874951 (= e!575179 (and tp!276746 tp!276748))))

(assert (= (and b!874606 (is-ElementMatch!2214 (regTwo!4941 r!15766))) b!874948))

(assert (= (and b!874606 (is-Concat!4047 (regTwo!4941 r!15766))) b!874949))

(assert (= (and b!874606 (is-Star!2214 (regTwo!4941 r!15766))) b!874950))

(assert (= (and b!874606 (is-Union!2214 (regTwo!4941 r!15766))) b!874951))

(push 1)

(assert (not b!874914))

(assert (not b!874687))

(assert (not b!874856))

(assert (not d!275757))

(assert (not b!874941))

(assert (not b!874946))

(assert (not bm!50837))

(assert (not b!874915))

(assert (not bm!50845))

(assert (not b!874860))

(assert (not b!874720))

(assert (not b!874863))

(assert (not b!874858))

(assert (not b!874713))

(assert (not b!874857))

(assert (not b!874921))

(assert (not bm!50827))

(assert (not d!275737))

(assert (not b!874716))

(assert (not b!874808))

(assert (not b!874945))

(assert (not d!275745))

(assert (not bm!50843))

(assert (not b!874859))

(assert (not b!874942))

(assert (not b!874875))

(assert (not b!874937))

(assert (not bm!50836))

(assert (not b!874947))

(assert (not b!874717))

(assert (not b!874715))

(assert (not b!874938))

(assert (not b!874943))

(assert (not b!874719))

(assert (not b!874951))

(assert (not d!275733))

(assert (not d!275761))

(assert (not d!275741))

(assert (not d!275747))

(assert (not bm!50842))

(assert (not b!874950))

(assert (not bm!50825))

(assert (not d!275749))

(assert tp_is_empty!4071)

(assert (not b!874807))

(assert (not d!275753))

(assert (not b!874939))

(assert (not b!874935))

(assert (not b!874949))

(assert (not b!874933))

(assert (not b!874934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

