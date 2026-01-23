; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91484 () Bool)

(assert start!91484)

(declare-fun b!1065432 () Bool)

(assert (=> b!1065432 true))

(assert (=> b!1065432 true))

(assert (=> b!1065432 true))

(declare-fun lambda!38576 () Int)

(declare-fun lambda!38575 () Int)

(assert (=> b!1065432 (not (= lambda!38576 lambda!38575))))

(assert (=> b!1065432 true))

(assert (=> b!1065432 true))

(assert (=> b!1065432 true))

(declare-fun bs!252070 () Bool)

(declare-fun b!1065436 () Bool)

(assert (= bs!252070 (and b!1065436 b!1065432)))

(declare-fun lambda!38577 () Int)

(declare-datatypes ((C!6446 0))(
  ( (C!6447 (val!3471 Int)) )
))
(declare-datatypes ((Regex!2938 0))(
  ( (ElementMatch!2938 (c!178659 C!6446)) (Concat!4771 (regOne!6388 Regex!2938) (regTwo!6388 Regex!2938)) (EmptyExpr!2938) (Star!2938 (reg!3267 Regex!2938)) (EmptyLang!2938) (Union!2938 (regOne!6389 Regex!2938) (regTwo!6389 Regex!2938)) )
))
(declare-fun r!15766 () Regex!2938)

(declare-fun lt!360457 () Regex!2938)

(declare-fun lt!360458 () Regex!2938)

(declare-fun lt!360461 () Regex!2938)

(assert (=> bs!252070 (= (and (= lt!360457 (reg!3267 r!15766)) (= lt!360461 lt!360458)) (= lambda!38577 lambda!38575))))

(assert (=> bs!252070 (not (= lambda!38577 lambda!38576))))

(assert (=> b!1065436 true))

(assert (=> b!1065436 true))

(assert (=> b!1065436 true))

(declare-fun res!475985 () Bool)

(declare-fun e!675698 () Bool)

(assert (=> start!91484 (=> (not res!475985) (not e!675698))))

(declare-fun validRegex!1407 (Regex!2938) Bool)

(assert (=> start!91484 (= res!475985 (validRegex!1407 r!15766))))

(assert (=> start!91484 e!675698))

(declare-fun e!675697 () Bool)

(assert (=> start!91484 e!675697))

(declare-fun e!675700 () Bool)

(assert (=> start!91484 e!675700))

(declare-fun b!1065431 () Bool)

(declare-fun tp!319734 () Bool)

(declare-fun tp!319735 () Bool)

(assert (=> b!1065431 (= e!675697 (and tp!319734 tp!319735))))

(declare-fun e!675701 () Bool)

(declare-fun e!675699 () Bool)

(assert (=> b!1065432 (= e!675701 e!675699)))

(declare-fun res!475986 () Bool)

(assert (=> b!1065432 (=> res!475986 e!675699)))

(declare-datatypes ((List!10168 0))(
  ( (Nil!10152) (Cons!10152 (h!15553 C!6446) (t!101214 List!10168)) )
))
(declare-fun s!10566 () List!10168)

(declare-fun matchR!1474 (Regex!2938 List!10168) Bool)

(assert (=> b!1065432 (= res!475986 (not (matchR!1474 lt!360461 s!10566)))))

(assert (=> b!1065432 (= lt!360461 (Star!2938 lt!360457))))

(declare-fun removeUselessConcat!479 (Regex!2938) Regex!2938)

(assert (=> b!1065432 (= lt!360457 (removeUselessConcat!479 (reg!3267 r!15766)))))

(declare-fun Exists!661 (Int) Bool)

(assert (=> b!1065432 (= (Exists!661 lambda!38575) (Exists!661 lambda!38576))))

(declare-datatypes ((Unit!15551 0))(
  ( (Unit!15552) )
))
(declare-fun lt!360459 () Unit!15551)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!179 (Regex!2938 List!10168) Unit!15551)

(assert (=> b!1065432 (= lt!360459 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!179 (reg!3267 r!15766) s!10566))))

(declare-datatypes ((tuple2!11590 0))(
  ( (tuple2!11591 (_1!6621 List!10168) (_2!6621 List!10168)) )
))
(declare-datatypes ((Option!2437 0))(
  ( (None!2436) (Some!2436 (v!19853 tuple2!11590)) )
))
(declare-fun isDefined!2079 (Option!2437) Bool)

(declare-fun findConcatSeparation!543 (Regex!2938 Regex!2938 List!10168 List!10168 List!10168) Option!2437)

(assert (=> b!1065432 (= (isDefined!2079 (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 Nil!10152 s!10566 s!10566)) (Exists!661 lambda!38575))))

(declare-fun lt!360460 () Unit!15551)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!543 (Regex!2938 Regex!2938 List!10168) Unit!15551)

(assert (=> b!1065432 (= lt!360460 (lemmaFindConcatSeparationEquivalentToExists!543 (reg!3267 r!15766) lt!360458 s!10566))))

(assert (=> b!1065432 (= lt!360458 (Star!2938 (reg!3267 r!15766)))))

(declare-fun b!1065433 () Bool)

(declare-fun tp_is_empty!5519 () Bool)

(assert (=> b!1065433 (= e!675697 tp_is_empty!5519)))

(declare-fun b!1065434 () Bool)

(declare-fun tp!319738 () Bool)

(assert (=> b!1065434 (= e!675700 (and tp_is_empty!5519 tp!319738))))

(declare-fun b!1065435 () Bool)

(declare-fun tp!319733 () Bool)

(declare-fun tp!319736 () Bool)

(assert (=> b!1065435 (= e!675697 (and tp!319733 tp!319736))))

(assert (=> b!1065436 (= e!675699 (validRegex!1407 lt!360457))))

(assert (=> b!1065436 (= (isDefined!2079 (findConcatSeparation!543 lt!360457 lt!360461 Nil!10152 s!10566 s!10566)) (Exists!661 lambda!38577))))

(declare-fun lt!360462 () Unit!15551)

(assert (=> b!1065436 (= lt!360462 (lemmaFindConcatSeparationEquivalentToExists!543 lt!360457 lt!360461 s!10566))))

(declare-fun matchRSpec!737 (Regex!2938 List!10168) Bool)

(assert (=> b!1065436 (matchRSpec!737 lt!360461 s!10566)))

(declare-fun lt!360464 () Unit!15551)

(declare-fun mainMatchTheorem!737 (Regex!2938 List!10168) Unit!15551)

(assert (=> b!1065436 (= lt!360464 (mainMatchTheorem!737 lt!360461 s!10566))))

(declare-fun b!1065437 () Bool)

(declare-fun tp!319737 () Bool)

(assert (=> b!1065437 (= e!675697 tp!319737)))

(declare-fun b!1065438 () Bool)

(assert (=> b!1065438 (= e!675698 (not e!675701))))

(declare-fun res!475984 () Bool)

(assert (=> b!1065438 (=> res!475984 e!675701)))

(declare-fun lt!360463 () Bool)

(assert (=> b!1065438 (= res!475984 (or lt!360463 (and (is-Concat!4771 r!15766) (is-EmptyExpr!2938 (regOne!6388 r!15766))) (and (is-Concat!4771 r!15766) (is-EmptyExpr!2938 (regTwo!6388 r!15766))) (is-Concat!4771 r!15766) (is-Union!2938 r!15766) (not (is-Star!2938 r!15766))))))

(assert (=> b!1065438 (= lt!360463 (matchRSpec!737 r!15766 s!10566))))

(assert (=> b!1065438 (= lt!360463 (matchR!1474 r!15766 s!10566))))

(declare-fun lt!360456 () Unit!15551)

(assert (=> b!1065438 (= lt!360456 (mainMatchTheorem!737 r!15766 s!10566))))

(assert (= (and start!91484 res!475985) b!1065438))

(assert (= (and b!1065438 (not res!475984)) b!1065432))

(assert (= (and b!1065432 (not res!475986)) b!1065436))

(assert (= (and start!91484 (is-ElementMatch!2938 r!15766)) b!1065433))

(assert (= (and start!91484 (is-Concat!4771 r!15766)) b!1065431))

(assert (= (and start!91484 (is-Star!2938 r!15766)) b!1065437))

(assert (= (and start!91484 (is-Union!2938 r!15766)) b!1065435))

(assert (= (and start!91484 (is-Cons!10152 s!10566)) b!1065434))

(declare-fun m!1222793 () Bool)

(assert (=> start!91484 m!1222793))

(declare-fun m!1222795 () Bool)

(assert (=> b!1065432 m!1222795))

(declare-fun m!1222797 () Bool)

(assert (=> b!1065432 m!1222797))

(declare-fun m!1222799 () Bool)

(assert (=> b!1065432 m!1222799))

(declare-fun m!1222801 () Bool)

(assert (=> b!1065432 m!1222801))

(declare-fun m!1222803 () Bool)

(assert (=> b!1065432 m!1222803))

(declare-fun m!1222805 () Bool)

(assert (=> b!1065432 m!1222805))

(declare-fun m!1222807 () Bool)

(assert (=> b!1065432 m!1222807))

(assert (=> b!1065432 m!1222797))

(declare-fun m!1222809 () Bool)

(assert (=> b!1065432 m!1222809))

(assert (=> b!1065432 m!1222807))

(declare-fun m!1222811 () Bool)

(assert (=> b!1065436 m!1222811))

(declare-fun m!1222813 () Bool)

(assert (=> b!1065436 m!1222813))

(declare-fun m!1222815 () Bool)

(assert (=> b!1065436 m!1222815))

(declare-fun m!1222817 () Bool)

(assert (=> b!1065436 m!1222817))

(declare-fun m!1222819 () Bool)

(assert (=> b!1065436 m!1222819))

(declare-fun m!1222821 () Bool)

(assert (=> b!1065436 m!1222821))

(assert (=> b!1065436 m!1222819))

(declare-fun m!1222823 () Bool)

(assert (=> b!1065436 m!1222823))

(declare-fun m!1222825 () Bool)

(assert (=> b!1065438 m!1222825))

(declare-fun m!1222827 () Bool)

(assert (=> b!1065438 m!1222827))

(declare-fun m!1222829 () Bool)

(assert (=> b!1065438 m!1222829))

(push 1)

(assert (not b!1065432))

(assert (not b!1065438))

(assert (not start!91484))

(assert (not b!1065435))

(assert (not b!1065434))

(assert (not b!1065436))

(assert (not b!1065437))

(assert (not b!1065431))

(assert tp_is_empty!5519)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!252072 () Bool)

(declare-fun d!301059 () Bool)

(assert (= bs!252072 (and d!301059 b!1065432)))

(declare-fun lambda!38591 () Int)

(assert (=> bs!252072 (= (and (= lt!360457 (reg!3267 r!15766)) (= lt!360461 lt!360458)) (= lambda!38591 lambda!38575))))

(assert (=> bs!252072 (not (= lambda!38591 lambda!38576))))

(declare-fun bs!252073 () Bool)

(assert (= bs!252073 (and d!301059 b!1065436)))

(assert (=> bs!252073 (= lambda!38591 lambda!38577)))

(assert (=> d!301059 true))

(assert (=> d!301059 true))

(assert (=> d!301059 true))

(assert (=> d!301059 (= (isDefined!2079 (findConcatSeparation!543 lt!360457 lt!360461 Nil!10152 s!10566 s!10566)) (Exists!661 lambda!38591))))

(declare-fun lt!360494 () Unit!15551)

(declare-fun choose!6799 (Regex!2938 Regex!2938 List!10168) Unit!15551)

(assert (=> d!301059 (= lt!360494 (choose!6799 lt!360457 lt!360461 s!10566))))

(assert (=> d!301059 (validRegex!1407 lt!360457)))

(assert (=> d!301059 (= (lemmaFindConcatSeparationEquivalentToExists!543 lt!360457 lt!360461 s!10566) lt!360494)))

(declare-fun bs!252074 () Bool)

(assert (= bs!252074 d!301059))

(assert (=> bs!252074 m!1222819))

(assert (=> bs!252074 m!1222823))

(assert (=> bs!252074 m!1222819))

(declare-fun m!1222869 () Bool)

(assert (=> bs!252074 m!1222869))

(declare-fun m!1222871 () Bool)

(assert (=> bs!252074 m!1222871))

(assert (=> bs!252074 m!1222813))

(assert (=> b!1065436 d!301059))

(declare-fun d!301063 () Bool)

(declare-fun isEmpty!6571 (Option!2437) Bool)

(assert (=> d!301063 (= (isDefined!2079 (findConcatSeparation!543 lt!360457 lt!360461 Nil!10152 s!10566 s!10566)) (not (isEmpty!6571 (findConcatSeparation!543 lt!360457 lt!360461 Nil!10152 s!10566 s!10566))))))

(declare-fun bs!252075 () Bool)

(assert (= bs!252075 d!301063))

(assert (=> bs!252075 m!1222819))

(declare-fun m!1222873 () Bool)

(assert (=> bs!252075 m!1222873))

(assert (=> b!1065436 d!301063))

(declare-fun bs!252076 () Bool)

(declare-fun b!1065527 () Bool)

(assert (= bs!252076 (and b!1065527 b!1065432)))

(declare-fun lambda!38596 () Int)

(assert (=> bs!252076 (not (= lambda!38596 lambda!38575))))

(assert (=> bs!252076 (= (and (= (reg!3267 lt!360461) (reg!3267 r!15766)) (= lt!360461 lt!360458)) (= lambda!38596 lambda!38576))))

(declare-fun bs!252077 () Bool)

(assert (= bs!252077 (and b!1065527 b!1065436)))

(assert (=> bs!252077 (not (= lambda!38596 lambda!38577))))

(declare-fun bs!252078 () Bool)

(assert (= bs!252078 (and b!1065527 d!301059)))

(assert (=> bs!252078 (not (= lambda!38596 lambda!38591))))

(assert (=> b!1065527 true))

(assert (=> b!1065527 true))

(declare-fun bs!252079 () Bool)

(declare-fun b!1065525 () Bool)

(assert (= bs!252079 (and b!1065525 b!1065436)))

(declare-fun lambda!38597 () Int)

(assert (=> bs!252079 (not (= lambda!38597 lambda!38577))))

(declare-fun bs!252080 () Bool)

(assert (= bs!252080 (and b!1065525 d!301059)))

(assert (=> bs!252080 (not (= lambda!38597 lambda!38591))))

(declare-fun bs!252081 () Bool)

(assert (= bs!252081 (and b!1065525 b!1065527)))

(assert (=> bs!252081 (not (= lambda!38597 lambda!38596))))

(declare-fun bs!252082 () Bool)

(assert (= bs!252082 (and b!1065525 b!1065432)))

(assert (=> bs!252082 (not (= lambda!38597 lambda!38576))))

(assert (=> bs!252082 (not (= lambda!38597 lambda!38575))))

(assert (=> b!1065525 true))

(assert (=> b!1065525 true))

(declare-fun e!675751 () Bool)

(declare-fun call!76861 () Bool)

(assert (=> b!1065525 (= e!675751 call!76861)))

(declare-fun b!1065526 () Bool)

(declare-fun res!476034 () Bool)

(declare-fun e!675748 () Bool)

(assert (=> b!1065526 (=> res!476034 e!675748)))

(declare-fun call!76862 () Bool)

(assert (=> b!1065526 (= res!476034 call!76862)))

(assert (=> b!1065526 (= e!675751 e!675748)))

(declare-fun c!178670 () Bool)

(declare-fun bm!76856 () Bool)

(assert (=> bm!76856 (= call!76861 (Exists!661 (ite c!178670 lambda!38596 lambda!38597)))))

(assert (=> b!1065527 (= e!675748 call!76861)))

(declare-fun d!301065 () Bool)

(declare-fun c!178669 () Bool)

(assert (=> d!301065 (= c!178669 (is-EmptyExpr!2938 lt!360461))))

(declare-fun e!675750 () Bool)

(assert (=> d!301065 (= (matchRSpec!737 lt!360461 s!10566) e!675750)))

(declare-fun b!1065528 () Bool)

(declare-fun e!675745 () Bool)

(declare-fun e!675747 () Bool)

(assert (=> b!1065528 (= e!675745 e!675747)))

(declare-fun res!476035 () Bool)

(assert (=> b!1065528 (= res!476035 (matchRSpec!737 (regOne!6389 lt!360461) s!10566))))

(assert (=> b!1065528 (=> res!476035 e!675747)))

(declare-fun bm!76857 () Bool)

(declare-fun isEmpty!6572 (List!10168) Bool)

(assert (=> bm!76857 (= call!76862 (isEmpty!6572 s!10566))))

(declare-fun b!1065529 () Bool)

(assert (=> b!1065529 (= e!675750 call!76862)))

(declare-fun b!1065530 () Bool)

(declare-fun c!178671 () Bool)

(assert (=> b!1065530 (= c!178671 (is-ElementMatch!2938 lt!360461))))

(declare-fun e!675749 () Bool)

(declare-fun e!675746 () Bool)

(assert (=> b!1065530 (= e!675749 e!675746)))

(declare-fun b!1065531 () Bool)

(assert (=> b!1065531 (= e!675746 (= s!10566 (Cons!10152 (c!178659 lt!360461) Nil!10152)))))

(declare-fun b!1065532 () Bool)

(assert (=> b!1065532 (= e!675750 e!675749)))

(declare-fun res!476036 () Bool)

(assert (=> b!1065532 (= res!476036 (not (is-EmptyLang!2938 lt!360461)))))

(assert (=> b!1065532 (=> (not res!476036) (not e!675749))))

(declare-fun b!1065533 () Bool)

(declare-fun c!178672 () Bool)

(assert (=> b!1065533 (= c!178672 (is-Union!2938 lt!360461))))

(assert (=> b!1065533 (= e!675746 e!675745)))

(declare-fun b!1065534 () Bool)

(assert (=> b!1065534 (= e!675745 e!675751)))

(assert (=> b!1065534 (= c!178670 (is-Star!2938 lt!360461))))

(declare-fun b!1065535 () Bool)

(assert (=> b!1065535 (= e!675747 (matchRSpec!737 (regTwo!6389 lt!360461) s!10566))))

(assert (= (and d!301065 c!178669) b!1065529))

(assert (= (and d!301065 (not c!178669)) b!1065532))

(assert (= (and b!1065532 res!476036) b!1065530))

(assert (= (and b!1065530 c!178671) b!1065531))

(assert (= (and b!1065530 (not c!178671)) b!1065533))

(assert (= (and b!1065533 c!178672) b!1065528))

(assert (= (and b!1065533 (not c!178672)) b!1065534))

(assert (= (and b!1065528 (not res!476035)) b!1065535))

(assert (= (and b!1065534 c!178670) b!1065526))

(assert (= (and b!1065534 (not c!178670)) b!1065525))

(assert (= (and b!1065526 (not res!476034)) b!1065527))

(assert (= (or b!1065527 b!1065525) bm!76856))

(assert (= (or b!1065529 b!1065526) bm!76857))

(declare-fun m!1222875 () Bool)

(assert (=> bm!76856 m!1222875))

(declare-fun m!1222877 () Bool)

(assert (=> b!1065528 m!1222877))

(declare-fun m!1222879 () Bool)

(assert (=> bm!76857 m!1222879))

(declare-fun m!1222881 () Bool)

(assert (=> b!1065535 m!1222881))

(assert (=> b!1065436 d!301065))

(declare-fun d!301067 () Bool)

(assert (=> d!301067 (= (matchR!1474 lt!360461 s!10566) (matchRSpec!737 lt!360461 s!10566))))

(declare-fun lt!360503 () Unit!15551)

(declare-fun choose!6800 (Regex!2938 List!10168) Unit!15551)

(assert (=> d!301067 (= lt!360503 (choose!6800 lt!360461 s!10566))))

(assert (=> d!301067 (validRegex!1407 lt!360461)))

(assert (=> d!301067 (= (mainMatchTheorem!737 lt!360461 s!10566) lt!360503)))

(declare-fun bs!252083 () Bool)

(assert (= bs!252083 d!301067))

(assert (=> bs!252083 m!1222805))

(assert (=> bs!252083 m!1222817))

(declare-fun m!1222883 () Bool)

(assert (=> bs!252083 m!1222883))

(declare-fun m!1222885 () Bool)

(assert (=> bs!252083 m!1222885))

(assert (=> b!1065436 d!301067))

(declare-fun b!1065581 () Bool)

(declare-fun lt!360515 () Unit!15551)

(declare-fun lt!360514 () Unit!15551)

(assert (=> b!1065581 (= lt!360515 lt!360514)))

(declare-fun ++!2808 (List!10168 List!10168) List!10168)

(assert (=> b!1065581 (= (++!2808 (++!2808 Nil!10152 (Cons!10152 (h!15553 s!10566) Nil!10152)) (t!101214 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!401 (List!10168 C!6446 List!10168 List!10168) Unit!15551)

(assert (=> b!1065581 (= lt!360514 (lemmaMoveElementToOtherListKeepsConcatEq!401 Nil!10152 (h!15553 s!10566) (t!101214 s!10566) s!10566))))

(declare-fun e!675777 () Option!2437)

(assert (=> b!1065581 (= e!675777 (findConcatSeparation!543 lt!360457 lt!360461 (++!2808 Nil!10152 (Cons!10152 (h!15553 s!10566) Nil!10152)) (t!101214 s!10566) s!10566))))

(declare-fun b!1065582 () Bool)

(declare-fun e!675780 () Option!2437)

(assert (=> b!1065582 (= e!675780 e!675777)))

(declare-fun c!178683 () Bool)

(assert (=> b!1065582 (= c!178683 (is-Nil!10152 s!10566))))

(declare-fun d!301069 () Bool)

(declare-fun e!675778 () Bool)

(assert (=> d!301069 e!675778))

(declare-fun res!476062 () Bool)

(assert (=> d!301069 (=> res!476062 e!675778)))

(declare-fun e!675781 () Bool)

(assert (=> d!301069 (= res!476062 e!675781)))

(declare-fun res!476064 () Bool)

(assert (=> d!301069 (=> (not res!476064) (not e!675781))))

(declare-fun lt!360513 () Option!2437)

(assert (=> d!301069 (= res!476064 (isDefined!2079 lt!360513))))

(assert (=> d!301069 (= lt!360513 e!675780)))

(declare-fun c!178684 () Bool)

(declare-fun e!675779 () Bool)

(assert (=> d!301069 (= c!178684 e!675779)))

(declare-fun res!476065 () Bool)

(assert (=> d!301069 (=> (not res!476065) (not e!675779))))

(assert (=> d!301069 (= res!476065 (matchR!1474 lt!360457 Nil!10152))))

(assert (=> d!301069 (validRegex!1407 lt!360457)))

(assert (=> d!301069 (= (findConcatSeparation!543 lt!360457 lt!360461 Nil!10152 s!10566 s!10566) lt!360513)))

(declare-fun b!1065583 () Bool)

(declare-fun res!476066 () Bool)

(assert (=> b!1065583 (=> (not res!476066) (not e!675781))))

(declare-fun get!3656 (Option!2437) tuple2!11590)

(assert (=> b!1065583 (= res!476066 (matchR!1474 lt!360457 (_1!6621 (get!3656 lt!360513))))))

(declare-fun b!1065584 () Bool)

(assert (=> b!1065584 (= e!675778 (not (isDefined!2079 lt!360513)))))

(declare-fun b!1065585 () Bool)

(assert (=> b!1065585 (= e!675779 (matchR!1474 lt!360461 s!10566))))

(declare-fun b!1065586 () Bool)

(declare-fun res!476063 () Bool)

(assert (=> b!1065586 (=> (not res!476063) (not e!675781))))

(assert (=> b!1065586 (= res!476063 (matchR!1474 lt!360461 (_2!6621 (get!3656 lt!360513))))))

(declare-fun b!1065587 () Bool)

(assert (=> b!1065587 (= e!675777 None!2436)))

(declare-fun b!1065588 () Bool)

(assert (=> b!1065588 (= e!675781 (= (++!2808 (_1!6621 (get!3656 lt!360513)) (_2!6621 (get!3656 lt!360513))) s!10566))))

(declare-fun b!1065589 () Bool)

(assert (=> b!1065589 (= e!675780 (Some!2436 (tuple2!11591 Nil!10152 s!10566)))))

(assert (= (and d!301069 res!476065) b!1065585))

(assert (= (and d!301069 c!178684) b!1065589))

(assert (= (and d!301069 (not c!178684)) b!1065582))

(assert (= (and b!1065582 c!178683) b!1065587))

(assert (= (and b!1065582 (not c!178683)) b!1065581))

(assert (= (and d!301069 res!476064) b!1065583))

(assert (= (and b!1065583 res!476066) b!1065586))

(assert (= (and b!1065586 res!476063) b!1065588))

(assert (= (and d!301069 (not res!476062)) b!1065584))

(declare-fun m!1222913 () Bool)

(assert (=> b!1065583 m!1222913))

(declare-fun m!1222915 () Bool)

(assert (=> b!1065583 m!1222915))

(assert (=> b!1065588 m!1222913))

(declare-fun m!1222917 () Bool)

(assert (=> b!1065588 m!1222917))

(declare-fun m!1222919 () Bool)

(assert (=> b!1065584 m!1222919))

(assert (=> b!1065586 m!1222913))

(declare-fun m!1222921 () Bool)

(assert (=> b!1065586 m!1222921))

(declare-fun m!1222923 () Bool)

(assert (=> b!1065581 m!1222923))

(assert (=> b!1065581 m!1222923))

(declare-fun m!1222925 () Bool)

(assert (=> b!1065581 m!1222925))

(declare-fun m!1222927 () Bool)

(assert (=> b!1065581 m!1222927))

(assert (=> b!1065581 m!1222923))

(declare-fun m!1222929 () Bool)

(assert (=> b!1065581 m!1222929))

(assert (=> b!1065585 m!1222805))

(assert (=> d!301069 m!1222919))

(declare-fun m!1222931 () Bool)

(assert (=> d!301069 m!1222931))

(assert (=> d!301069 m!1222813))

(assert (=> b!1065436 d!301069))

(declare-fun d!301075 () Bool)

(declare-fun res!476078 () Bool)

(declare-fun e!675802 () Bool)

(assert (=> d!301075 (=> res!476078 e!675802)))

(assert (=> d!301075 (= res!476078 (is-ElementMatch!2938 lt!360457))))

(assert (=> d!301075 (= (validRegex!1407 lt!360457) e!675802)))

(declare-fun b!1065608 () Bool)

(declare-fun e!675796 () Bool)

(declare-fun e!675799 () Bool)

(assert (=> b!1065608 (= e!675796 e!675799)))

(declare-fun res!476081 () Bool)

(declare-fun nullable!1025 (Regex!2938) Bool)

(assert (=> b!1065608 (= res!476081 (not (nullable!1025 (reg!3267 lt!360457))))))

(assert (=> b!1065608 (=> (not res!476081) (not e!675799))))

(declare-fun bm!76864 () Bool)

(declare-fun call!76871 () Bool)

(declare-fun c!178690 () Bool)

(assert (=> bm!76864 (= call!76871 (validRegex!1407 (ite c!178690 (regOne!6389 lt!360457) (regOne!6388 lt!360457))))))

(declare-fun b!1065609 () Bool)

(declare-fun res!476079 () Bool)

(declare-fun e!675801 () Bool)

(assert (=> b!1065609 (=> res!476079 e!675801)))

(assert (=> b!1065609 (= res!476079 (not (is-Concat!4771 lt!360457)))))

(declare-fun e!675797 () Bool)

(assert (=> b!1065609 (= e!675797 e!675801)))

(declare-fun b!1065610 () Bool)

(assert (=> b!1065610 (= e!675796 e!675797)))

(assert (=> b!1065610 (= c!178690 (is-Union!2938 lt!360457))))

(declare-fun b!1065611 () Bool)

(declare-fun res!476077 () Bool)

(declare-fun e!675800 () Bool)

(assert (=> b!1065611 (=> (not res!476077) (not e!675800))))

(assert (=> b!1065611 (= res!476077 call!76871)))

(assert (=> b!1065611 (= e!675797 e!675800)))

(declare-fun b!1065612 () Bool)

(declare-fun call!76869 () Bool)

(assert (=> b!1065612 (= e!675799 call!76869)))

(declare-fun b!1065613 () Bool)

(declare-fun e!675798 () Bool)

(declare-fun call!76870 () Bool)

(assert (=> b!1065613 (= e!675798 call!76870)))

(declare-fun b!1065614 () Bool)

(assert (=> b!1065614 (= e!675802 e!675796)))

(declare-fun c!178689 () Bool)

(assert (=> b!1065614 (= c!178689 (is-Star!2938 lt!360457))))

(declare-fun b!1065615 () Bool)

(assert (=> b!1065615 (= e!675801 e!675798)))

(declare-fun res!476080 () Bool)

(assert (=> b!1065615 (=> (not res!476080) (not e!675798))))

(assert (=> b!1065615 (= res!476080 call!76871)))

(declare-fun bm!76865 () Bool)

(assert (=> bm!76865 (= call!76870 call!76869)))

(declare-fun bm!76866 () Bool)

(assert (=> bm!76866 (= call!76869 (validRegex!1407 (ite c!178689 (reg!3267 lt!360457) (ite c!178690 (regTwo!6389 lt!360457) (regTwo!6388 lt!360457)))))))

(declare-fun b!1065616 () Bool)

(assert (=> b!1065616 (= e!675800 call!76870)))

(assert (= (and d!301075 (not res!476078)) b!1065614))

(assert (= (and b!1065614 c!178689) b!1065608))

(assert (= (and b!1065614 (not c!178689)) b!1065610))

(assert (= (and b!1065608 res!476081) b!1065612))

(assert (= (and b!1065610 c!178690) b!1065611))

(assert (= (and b!1065610 (not c!178690)) b!1065609))

(assert (= (and b!1065611 res!476077) b!1065616))

(assert (= (and b!1065609 (not res!476079)) b!1065615))

(assert (= (and b!1065615 res!476080) b!1065613))

(assert (= (or b!1065616 b!1065613) bm!76865))

(assert (= (or b!1065611 b!1065615) bm!76864))

(assert (= (or b!1065612 bm!76865) bm!76866))

(declare-fun m!1222933 () Bool)

(assert (=> b!1065608 m!1222933))

(declare-fun m!1222935 () Bool)

(assert (=> bm!76864 m!1222935))

(declare-fun m!1222937 () Bool)

(assert (=> bm!76866 m!1222937))

(assert (=> b!1065436 d!301075))

(declare-fun d!301077 () Bool)

(declare-fun choose!6801 (Int) Bool)

(assert (=> d!301077 (= (Exists!661 lambda!38577) (choose!6801 lambda!38577))))

(declare-fun bs!252085 () Bool)

(assert (= bs!252085 d!301077))

(declare-fun m!1222939 () Bool)

(assert (=> bs!252085 m!1222939))

(assert (=> b!1065436 d!301077))

(declare-fun d!301079 () Bool)

(declare-fun res!476083 () Bool)

(declare-fun e!675809 () Bool)

(assert (=> d!301079 (=> res!476083 e!675809)))

(assert (=> d!301079 (= res!476083 (is-ElementMatch!2938 r!15766))))

(assert (=> d!301079 (= (validRegex!1407 r!15766) e!675809)))

(declare-fun b!1065617 () Bool)

(declare-fun e!675803 () Bool)

(declare-fun e!675806 () Bool)

(assert (=> b!1065617 (= e!675803 e!675806)))

(declare-fun res!476086 () Bool)

(assert (=> b!1065617 (= res!476086 (not (nullable!1025 (reg!3267 r!15766))))))

(assert (=> b!1065617 (=> (not res!476086) (not e!675806))))

(declare-fun bm!76867 () Bool)

(declare-fun call!76874 () Bool)

(declare-fun c!178692 () Bool)

(assert (=> bm!76867 (= call!76874 (validRegex!1407 (ite c!178692 (regOne!6389 r!15766) (regOne!6388 r!15766))))))

(declare-fun b!1065618 () Bool)

(declare-fun res!476084 () Bool)

(declare-fun e!675808 () Bool)

(assert (=> b!1065618 (=> res!476084 e!675808)))

(assert (=> b!1065618 (= res!476084 (not (is-Concat!4771 r!15766)))))

(declare-fun e!675804 () Bool)

(assert (=> b!1065618 (= e!675804 e!675808)))

(declare-fun b!1065619 () Bool)

(assert (=> b!1065619 (= e!675803 e!675804)))

(assert (=> b!1065619 (= c!178692 (is-Union!2938 r!15766))))

(declare-fun b!1065620 () Bool)

(declare-fun res!476082 () Bool)

(declare-fun e!675807 () Bool)

(assert (=> b!1065620 (=> (not res!476082) (not e!675807))))

(assert (=> b!1065620 (= res!476082 call!76874)))

(assert (=> b!1065620 (= e!675804 e!675807)))

(declare-fun b!1065621 () Bool)

(declare-fun call!76872 () Bool)

(assert (=> b!1065621 (= e!675806 call!76872)))

(declare-fun b!1065622 () Bool)

(declare-fun e!675805 () Bool)

(declare-fun call!76873 () Bool)

(assert (=> b!1065622 (= e!675805 call!76873)))

(declare-fun b!1065623 () Bool)

(assert (=> b!1065623 (= e!675809 e!675803)))

(declare-fun c!178691 () Bool)

(assert (=> b!1065623 (= c!178691 (is-Star!2938 r!15766))))

(declare-fun b!1065624 () Bool)

(assert (=> b!1065624 (= e!675808 e!675805)))

(declare-fun res!476085 () Bool)

(assert (=> b!1065624 (=> (not res!476085) (not e!675805))))

(assert (=> b!1065624 (= res!476085 call!76874)))

(declare-fun bm!76868 () Bool)

(assert (=> bm!76868 (= call!76873 call!76872)))

(declare-fun bm!76869 () Bool)

(assert (=> bm!76869 (= call!76872 (validRegex!1407 (ite c!178691 (reg!3267 r!15766) (ite c!178692 (regTwo!6389 r!15766) (regTwo!6388 r!15766)))))))

(declare-fun b!1065625 () Bool)

(assert (=> b!1065625 (= e!675807 call!76873)))

(assert (= (and d!301079 (not res!476083)) b!1065623))

(assert (= (and b!1065623 c!178691) b!1065617))

(assert (= (and b!1065623 (not c!178691)) b!1065619))

(assert (= (and b!1065617 res!476086) b!1065621))

(assert (= (and b!1065619 c!178692) b!1065620))

(assert (= (and b!1065619 (not c!178692)) b!1065618))

(assert (= (and b!1065620 res!476082) b!1065625))

(assert (= (and b!1065618 (not res!476084)) b!1065624))

(assert (= (and b!1065624 res!476085) b!1065622))

(assert (= (or b!1065625 b!1065622) bm!76868))

(assert (= (or b!1065620 b!1065624) bm!76867))

(assert (= (or b!1065621 bm!76868) bm!76869))

(declare-fun m!1222941 () Bool)

(assert (=> b!1065617 m!1222941))

(declare-fun m!1222943 () Bool)

(assert (=> bm!76867 m!1222943))

(declare-fun m!1222945 () Bool)

(assert (=> bm!76869 m!1222945))

(assert (=> start!91484 d!301079))

(declare-fun bs!252086 () Bool)

(declare-fun d!301081 () Bool)

(assert (= bs!252086 (and d!301081 b!1065436)))

(declare-fun lambda!38598 () Int)

(assert (=> bs!252086 (= (and (= (reg!3267 r!15766) lt!360457) (= lt!360458 lt!360461)) (= lambda!38598 lambda!38577))))

(declare-fun bs!252087 () Bool)

(assert (= bs!252087 (and d!301081 d!301059)))

(assert (=> bs!252087 (= (and (= (reg!3267 r!15766) lt!360457) (= lt!360458 lt!360461)) (= lambda!38598 lambda!38591))))

(declare-fun bs!252088 () Bool)

(assert (= bs!252088 (and d!301081 b!1065525)))

(assert (=> bs!252088 (not (= lambda!38598 lambda!38597))))

(declare-fun bs!252089 () Bool)

(assert (= bs!252089 (and d!301081 b!1065527)))

(assert (=> bs!252089 (not (= lambda!38598 lambda!38596))))

(declare-fun bs!252090 () Bool)

(assert (= bs!252090 (and d!301081 b!1065432)))

(assert (=> bs!252090 (not (= lambda!38598 lambda!38576))))

(assert (=> bs!252090 (= lambda!38598 lambda!38575)))

(assert (=> d!301081 true))

(assert (=> d!301081 true))

(assert (=> d!301081 true))

(assert (=> d!301081 (= (isDefined!2079 (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 Nil!10152 s!10566 s!10566)) (Exists!661 lambda!38598))))

(declare-fun lt!360516 () Unit!15551)

(assert (=> d!301081 (= lt!360516 (choose!6799 (reg!3267 r!15766) lt!360458 s!10566))))

(assert (=> d!301081 (validRegex!1407 (reg!3267 r!15766))))

(assert (=> d!301081 (= (lemmaFindConcatSeparationEquivalentToExists!543 (reg!3267 r!15766) lt!360458 s!10566) lt!360516)))

(declare-fun bs!252091 () Bool)

(assert (= bs!252091 d!301081))

(assert (=> bs!252091 m!1222797))

(assert (=> bs!252091 m!1222799))

(assert (=> bs!252091 m!1222797))

(declare-fun m!1222947 () Bool)

(assert (=> bs!252091 m!1222947))

(declare-fun m!1222949 () Bool)

(assert (=> bs!252091 m!1222949))

(declare-fun m!1222951 () Bool)

(assert (=> bs!252091 m!1222951))

(assert (=> b!1065432 d!301081))

(declare-fun d!301083 () Bool)

(assert (=> d!301083 (= (Exists!661 lambda!38575) (choose!6801 lambda!38575))))

(declare-fun bs!252092 () Bool)

(assert (= bs!252092 d!301083))

(declare-fun m!1222953 () Bool)

(assert (=> bs!252092 m!1222953))

(assert (=> b!1065432 d!301083))

(declare-fun bs!252093 () Bool)

(declare-fun d!301085 () Bool)

(assert (= bs!252093 (and d!301085 b!1065436)))

(declare-fun lambda!38603 () Int)

(assert (=> bs!252093 (= (and (= (reg!3267 r!15766) lt!360457) (= (Star!2938 (reg!3267 r!15766)) lt!360461)) (= lambda!38603 lambda!38577))))

(declare-fun bs!252094 () Bool)

(assert (= bs!252094 (and d!301085 d!301059)))

(assert (=> bs!252094 (= (and (= (reg!3267 r!15766) lt!360457) (= (Star!2938 (reg!3267 r!15766)) lt!360461)) (= lambda!38603 lambda!38591))))

(declare-fun bs!252095 () Bool)

(assert (= bs!252095 (and d!301085 b!1065525)))

(assert (=> bs!252095 (not (= lambda!38603 lambda!38597))))

(declare-fun bs!252096 () Bool)

(assert (= bs!252096 (and d!301085 b!1065527)))

(assert (=> bs!252096 (not (= lambda!38603 lambda!38596))))

(declare-fun bs!252097 () Bool)

(assert (= bs!252097 (and d!301085 b!1065432)))

(assert (=> bs!252097 (not (= lambda!38603 lambda!38576))))

(declare-fun bs!252098 () Bool)

(assert (= bs!252098 (and d!301085 d!301081)))

(assert (=> bs!252098 (= (= (Star!2938 (reg!3267 r!15766)) lt!360458) (= lambda!38603 lambda!38598))))

(assert (=> bs!252097 (= (= (Star!2938 (reg!3267 r!15766)) lt!360458) (= lambda!38603 lambda!38575))))

(assert (=> d!301085 true))

(assert (=> d!301085 true))

(declare-fun lambda!38604 () Int)

(assert (=> bs!252093 (not (= lambda!38604 lambda!38577))))

(assert (=> bs!252094 (not (= lambda!38604 lambda!38591))))

(assert (=> bs!252095 (not (= lambda!38604 lambda!38597))))

(assert (=> bs!252096 (= (and (= (reg!3267 r!15766) (reg!3267 lt!360461)) (= (Star!2938 (reg!3267 r!15766)) lt!360461)) (= lambda!38604 lambda!38596))))

(assert (=> bs!252097 (= (= (Star!2938 (reg!3267 r!15766)) lt!360458) (= lambda!38604 lambda!38576))))

(declare-fun bs!252099 () Bool)

(assert (= bs!252099 d!301085))

(assert (=> bs!252099 (not (= lambda!38604 lambda!38603))))

(assert (=> bs!252098 (not (= lambda!38604 lambda!38598))))

(assert (=> bs!252097 (not (= lambda!38604 lambda!38575))))

(assert (=> d!301085 true))

(assert (=> d!301085 true))

(assert (=> d!301085 (= (Exists!661 lambda!38603) (Exists!661 lambda!38604))))

(declare-fun lt!360521 () Unit!15551)

(declare-fun choose!6802 (Regex!2938 List!10168) Unit!15551)

(assert (=> d!301085 (= lt!360521 (choose!6802 (reg!3267 r!15766) s!10566))))

(assert (=> d!301085 (validRegex!1407 (reg!3267 r!15766))))

(assert (=> d!301085 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!179 (reg!3267 r!15766) s!10566) lt!360521)))

(declare-fun m!1222955 () Bool)

(assert (=> bs!252099 m!1222955))

(declare-fun m!1222957 () Bool)

(assert (=> bs!252099 m!1222957))

(declare-fun m!1222959 () Bool)

(assert (=> bs!252099 m!1222959))

(assert (=> bs!252099 m!1222951))

(assert (=> b!1065432 d!301085))

(declare-fun b!1065700 () Bool)

(declare-fun e!675848 () Bool)

(declare-fun lt!360525 () Regex!2938)

(assert (=> b!1065700 (= e!675848 (= (nullable!1025 lt!360525) (nullable!1025 (reg!3267 r!15766))))))

(declare-fun bm!76883 () Bool)

(declare-fun call!76890 () Regex!2938)

(declare-fun call!76892 () Regex!2938)

(assert (=> bm!76883 (= call!76890 call!76892)))

(declare-fun b!1065701 () Bool)

(declare-fun c!178712 () Bool)

(assert (=> b!1065701 (= c!178712 (is-Concat!4771 (reg!3267 r!15766)))))

(declare-fun e!675850 () Regex!2938)

(declare-fun e!675847 () Regex!2938)

(assert (=> b!1065701 (= e!675850 e!675847)))

(declare-fun bm!76884 () Bool)

(declare-fun call!76891 () Regex!2938)

(declare-fun call!76888 () Regex!2938)

(assert (=> bm!76884 (= call!76891 call!76888)))

(declare-fun b!1065703 () Bool)

(declare-fun e!675849 () Regex!2938)

(assert (=> b!1065703 (= e!675849 e!675850)))

(declare-fun c!178714 () Bool)

(assert (=> b!1065703 (= c!178714 (and (is-Concat!4771 (reg!3267 r!15766)) (is-EmptyExpr!2938 (regTwo!6388 (reg!3267 r!15766)))))))

(declare-fun b!1065704 () Bool)

(declare-fun c!178715 () Bool)

(assert (=> b!1065704 (= c!178715 (is-Star!2938 (reg!3267 r!15766)))))

(declare-fun e!675852 () Regex!2938)

(declare-fun e!675851 () Regex!2938)

(assert (=> b!1065704 (= e!675852 e!675851)))

(declare-fun b!1065705 () Bool)

(assert (=> b!1065705 (= e!675851 (reg!3267 r!15766))))

(declare-fun c!178716 () Bool)

(declare-fun bm!76885 () Bool)

(assert (=> bm!76885 (= call!76892 (removeUselessConcat!479 (ite (or c!178714 c!178712) (regOne!6388 (reg!3267 r!15766)) (ite c!178716 (regTwo!6389 (reg!3267 r!15766)) (reg!3267 (reg!3267 r!15766))))))))

(declare-fun b!1065706 () Bool)

(declare-fun call!76889 () Regex!2938)

(assert (=> b!1065706 (= e!675852 (Union!2938 call!76891 call!76889))))

(declare-fun d!301087 () Bool)

(assert (=> d!301087 e!675848))

(declare-fun res!476123 () Bool)

(assert (=> d!301087 (=> (not res!476123) (not e!675848))))

(assert (=> d!301087 (= res!476123 (validRegex!1407 lt!360525))))

(assert (=> d!301087 (= lt!360525 e!675849)))

(declare-fun c!178713 () Bool)

(assert (=> d!301087 (= c!178713 (and (is-Concat!4771 (reg!3267 r!15766)) (is-EmptyExpr!2938 (regOne!6388 (reg!3267 r!15766)))))))

(assert (=> d!301087 (validRegex!1407 (reg!3267 r!15766))))

(assert (=> d!301087 (= (removeUselessConcat!479 (reg!3267 r!15766)) lt!360525)))

(declare-fun b!1065702 () Bool)

(assert (=> b!1065702 (= e!675849 call!76888)))

(declare-fun b!1065707 () Bool)

(assert (=> b!1065707 (= e!675850 call!76892)))

(declare-fun bm!76886 () Bool)

(assert (=> bm!76886 (= call!76889 call!76890)))

(declare-fun b!1065708 () Bool)

(assert (=> b!1065708 (= e!675851 (Star!2938 call!76889))))

(declare-fun bm!76887 () Bool)

(assert (=> bm!76887 (= call!76888 (removeUselessConcat!479 (ite (or c!178713 c!178712) (regTwo!6388 (reg!3267 r!15766)) (regOne!6389 (reg!3267 r!15766)))))))

(declare-fun b!1065709 () Bool)

(assert (=> b!1065709 (= e!675847 (Concat!4771 call!76890 call!76891))))

(declare-fun b!1065710 () Bool)

(assert (=> b!1065710 (= e!675847 e!675852)))

(assert (=> b!1065710 (= c!178716 (is-Union!2938 (reg!3267 r!15766)))))

(assert (= (and d!301087 c!178713) b!1065702))

(assert (= (and d!301087 (not c!178713)) b!1065703))

(assert (= (and b!1065703 c!178714) b!1065707))

(assert (= (and b!1065703 (not c!178714)) b!1065701))

(assert (= (and b!1065701 c!178712) b!1065709))

(assert (= (and b!1065701 (not c!178712)) b!1065710))

(assert (= (and b!1065710 c!178716) b!1065706))

(assert (= (and b!1065710 (not c!178716)) b!1065704))

(assert (= (and b!1065704 c!178715) b!1065708))

(assert (= (and b!1065704 (not c!178715)) b!1065705))

(assert (= (or b!1065706 b!1065708) bm!76886))

(assert (= (or b!1065709 b!1065706) bm!76884))

(assert (= (or b!1065709 bm!76886) bm!76883))

(assert (= (or b!1065707 bm!76883) bm!76885))

(assert (= (or b!1065702 bm!76884) bm!76887))

(assert (= (and d!301087 res!476123) b!1065700))

(declare-fun m!1222977 () Bool)

(assert (=> b!1065700 m!1222977))

(assert (=> b!1065700 m!1222941))

(declare-fun m!1222979 () Bool)

(assert (=> bm!76885 m!1222979))

(declare-fun m!1222981 () Bool)

(assert (=> d!301087 m!1222981))

(assert (=> d!301087 m!1222951))

(declare-fun m!1222983 () Bool)

(assert (=> bm!76887 m!1222983))

(assert (=> b!1065432 d!301087))

(declare-fun b!1065711 () Bool)

(declare-fun lt!360528 () Unit!15551)

(declare-fun lt!360527 () Unit!15551)

(assert (=> b!1065711 (= lt!360528 lt!360527)))

(assert (=> b!1065711 (= (++!2808 (++!2808 Nil!10152 (Cons!10152 (h!15553 s!10566) Nil!10152)) (t!101214 s!10566)) s!10566)))

(assert (=> b!1065711 (= lt!360527 (lemmaMoveElementToOtherListKeepsConcatEq!401 Nil!10152 (h!15553 s!10566) (t!101214 s!10566) s!10566))))

(declare-fun e!675853 () Option!2437)

(assert (=> b!1065711 (= e!675853 (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 (++!2808 Nil!10152 (Cons!10152 (h!15553 s!10566) Nil!10152)) (t!101214 s!10566) s!10566))))

(declare-fun b!1065712 () Bool)

(declare-fun e!675856 () Option!2437)

(assert (=> b!1065712 (= e!675856 e!675853)))

(declare-fun c!178717 () Bool)

(assert (=> b!1065712 (= c!178717 (is-Nil!10152 s!10566))))

(declare-fun d!301091 () Bool)

(declare-fun e!675854 () Bool)

(assert (=> d!301091 e!675854))

(declare-fun res!476124 () Bool)

(assert (=> d!301091 (=> res!476124 e!675854)))

(declare-fun e!675857 () Bool)

(assert (=> d!301091 (= res!476124 e!675857)))

(declare-fun res!476126 () Bool)

(assert (=> d!301091 (=> (not res!476126) (not e!675857))))

(declare-fun lt!360526 () Option!2437)

(assert (=> d!301091 (= res!476126 (isDefined!2079 lt!360526))))

(assert (=> d!301091 (= lt!360526 e!675856)))

(declare-fun c!178718 () Bool)

(declare-fun e!675855 () Bool)

(assert (=> d!301091 (= c!178718 e!675855)))

(declare-fun res!476127 () Bool)

(assert (=> d!301091 (=> (not res!476127) (not e!675855))))

(assert (=> d!301091 (= res!476127 (matchR!1474 (reg!3267 r!15766) Nil!10152))))

(assert (=> d!301091 (validRegex!1407 (reg!3267 r!15766))))

(assert (=> d!301091 (= (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 Nil!10152 s!10566 s!10566) lt!360526)))

(declare-fun b!1065713 () Bool)

(declare-fun res!476128 () Bool)

(assert (=> b!1065713 (=> (not res!476128) (not e!675857))))

(assert (=> b!1065713 (= res!476128 (matchR!1474 (reg!3267 r!15766) (_1!6621 (get!3656 lt!360526))))))

(declare-fun b!1065714 () Bool)

(assert (=> b!1065714 (= e!675854 (not (isDefined!2079 lt!360526)))))

(declare-fun b!1065715 () Bool)

(assert (=> b!1065715 (= e!675855 (matchR!1474 lt!360458 s!10566))))

(declare-fun b!1065716 () Bool)

(declare-fun res!476125 () Bool)

(assert (=> b!1065716 (=> (not res!476125) (not e!675857))))

(assert (=> b!1065716 (= res!476125 (matchR!1474 lt!360458 (_2!6621 (get!3656 lt!360526))))))

(declare-fun b!1065717 () Bool)

(assert (=> b!1065717 (= e!675853 None!2436)))

(declare-fun b!1065718 () Bool)

(assert (=> b!1065718 (= e!675857 (= (++!2808 (_1!6621 (get!3656 lt!360526)) (_2!6621 (get!3656 lt!360526))) s!10566))))

(declare-fun b!1065719 () Bool)

(assert (=> b!1065719 (= e!675856 (Some!2436 (tuple2!11591 Nil!10152 s!10566)))))

(assert (= (and d!301091 res!476127) b!1065715))

(assert (= (and d!301091 c!178718) b!1065719))

(assert (= (and d!301091 (not c!178718)) b!1065712))

(assert (= (and b!1065712 c!178717) b!1065717))

(assert (= (and b!1065712 (not c!178717)) b!1065711))

(assert (= (and d!301091 res!476126) b!1065713))

(assert (= (and b!1065713 res!476128) b!1065716))

(assert (= (and b!1065716 res!476125) b!1065718))

(assert (= (and d!301091 (not res!476124)) b!1065714))

(declare-fun m!1222985 () Bool)

(assert (=> b!1065713 m!1222985))

(declare-fun m!1222987 () Bool)

(assert (=> b!1065713 m!1222987))

(assert (=> b!1065718 m!1222985))

(declare-fun m!1222989 () Bool)

(assert (=> b!1065718 m!1222989))

(declare-fun m!1222991 () Bool)

(assert (=> b!1065714 m!1222991))

(assert (=> b!1065716 m!1222985))

(declare-fun m!1222993 () Bool)

(assert (=> b!1065716 m!1222993))

(assert (=> b!1065711 m!1222923))

(assert (=> b!1065711 m!1222923))

(assert (=> b!1065711 m!1222925))

(assert (=> b!1065711 m!1222927))

(assert (=> b!1065711 m!1222923))

(declare-fun m!1222995 () Bool)

(assert (=> b!1065711 m!1222995))

(declare-fun m!1222997 () Bool)

(assert (=> b!1065715 m!1222997))

(assert (=> d!301091 m!1222991))

(declare-fun m!1222999 () Bool)

(assert (=> d!301091 m!1222999))

(assert (=> d!301091 m!1222951))

(assert (=> b!1065432 d!301091))

(declare-fun d!301093 () Bool)

(assert (=> d!301093 (= (isDefined!2079 (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 Nil!10152 s!10566 s!10566)) (not (isEmpty!6571 (findConcatSeparation!543 (reg!3267 r!15766) lt!360458 Nil!10152 s!10566 s!10566))))))

(declare-fun bs!252100 () Bool)

(assert (= bs!252100 d!301093))

(assert (=> bs!252100 m!1222797))

(declare-fun m!1223001 () Bool)

(assert (=> bs!252100 m!1223001))

(assert (=> b!1065432 d!301093))

(declare-fun d!301095 () Bool)

(assert (=> d!301095 (= (Exists!661 lambda!38576) (choose!6801 lambda!38576))))

(declare-fun bs!252101 () Bool)

(assert (= bs!252101 d!301095))

(declare-fun m!1223003 () Bool)

(assert (=> bs!252101 m!1223003))

(assert (=> b!1065432 d!301095))

(declare-fun b!1065752 () Bool)

(declare-fun res!476151 () Bool)

(declare-fun e!675876 () Bool)

(assert (=> b!1065752 (=> res!476151 e!675876)))

(declare-fun e!675879 () Bool)

(assert (=> b!1065752 (= res!476151 e!675879)))

(declare-fun res!476149 () Bool)

(assert (=> b!1065752 (=> (not res!476149) (not e!675879))))

(declare-fun lt!360534 () Bool)

(assert (=> b!1065752 (= res!476149 lt!360534)))

(declare-fun d!301097 () Bool)

(declare-fun e!675877 () Bool)

(assert (=> d!301097 e!675877))

(declare-fun c!178726 () Bool)

(assert (=> d!301097 (= c!178726 (is-EmptyExpr!2938 lt!360461))))

(declare-fun e!675874 () Bool)

(assert (=> d!301097 (= lt!360534 e!675874)))

(declare-fun c!178727 () Bool)

(assert (=> d!301097 (= c!178727 (isEmpty!6572 s!10566))))

(assert (=> d!301097 (validRegex!1407 lt!360461)))

(assert (=> d!301097 (= (matchR!1474 lt!360461 s!10566) lt!360534)))

(declare-fun b!1065753 () Bool)

(declare-fun e!675875 () Bool)

(declare-fun head!1978 (List!10168) C!6446)

(assert (=> b!1065753 (= e!675875 (not (= (head!1978 s!10566) (c!178659 lt!360461))))))

(declare-fun b!1065754 () Bool)

(declare-fun res!476155 () Bool)

(assert (=> b!1065754 (=> res!476155 e!675876)))

(assert (=> b!1065754 (= res!476155 (not (is-ElementMatch!2938 lt!360461)))))

(declare-fun e!675880 () Bool)

(assert (=> b!1065754 (= e!675880 e!675876)))

(declare-fun b!1065755 () Bool)

(declare-fun res!476154 () Bool)

(assert (=> b!1065755 (=> res!476154 e!675875)))

(declare-fun tail!1540 (List!10168) List!10168)

(assert (=> b!1065755 (= res!476154 (not (isEmpty!6572 (tail!1540 s!10566))))))

(declare-fun b!1065756 () Bool)

(declare-fun e!675878 () Bool)

(assert (=> b!1065756 (= e!675876 e!675878)))

(declare-fun res!476156 () Bool)

(assert (=> b!1065756 (=> (not res!476156) (not e!675878))))

(assert (=> b!1065756 (= res!476156 (not lt!360534))))

(declare-fun b!1065757 () Bool)

(declare-fun call!76895 () Bool)

(assert (=> b!1065757 (= e!675877 (= lt!360534 call!76895))))

(declare-fun b!1065758 () Bool)

(assert (=> b!1065758 (= e!675878 e!675875)))

(declare-fun res!476150 () Bool)

(assert (=> b!1065758 (=> res!476150 e!675875)))

(assert (=> b!1065758 (= res!476150 call!76895)))

(declare-fun b!1065759 () Bool)

(assert (=> b!1065759 (= e!675874 (nullable!1025 lt!360461))))

(declare-fun b!1065760 () Bool)

(assert (=> b!1065760 (= e!675879 (= (head!1978 s!10566) (c!178659 lt!360461)))))

(declare-fun b!1065761 () Bool)

(assert (=> b!1065761 (= e!675880 (not lt!360534))))

(declare-fun bm!76890 () Bool)

(assert (=> bm!76890 (= call!76895 (isEmpty!6572 s!10566))))

(declare-fun b!1065762 () Bool)

(declare-fun res!476153 () Bool)

(assert (=> b!1065762 (=> (not res!476153) (not e!675879))))

(assert (=> b!1065762 (= res!476153 (not call!76895))))

(declare-fun b!1065763 () Bool)

(declare-fun res!476152 () Bool)

(assert (=> b!1065763 (=> (not res!476152) (not e!675879))))

(assert (=> b!1065763 (= res!476152 (isEmpty!6572 (tail!1540 s!10566)))))

(declare-fun b!1065764 () Bool)

(assert (=> b!1065764 (= e!675877 e!675880)))

(declare-fun c!178725 () Bool)

(assert (=> b!1065764 (= c!178725 (is-EmptyLang!2938 lt!360461))))

(declare-fun b!1065765 () Bool)

(declare-fun derivativeStep!823 (Regex!2938 C!6446) Regex!2938)

(assert (=> b!1065765 (= e!675874 (matchR!1474 (derivativeStep!823 lt!360461 (head!1978 s!10566)) (tail!1540 s!10566)))))

(assert (= (and d!301097 c!178727) b!1065759))

(assert (= (and d!301097 (not c!178727)) b!1065765))

(assert (= (and d!301097 c!178726) b!1065757))

(assert (= (and d!301097 (not c!178726)) b!1065764))

(assert (= (and b!1065764 c!178725) b!1065761))

(assert (= (and b!1065764 (not c!178725)) b!1065754))

(assert (= (and b!1065754 (not res!476155)) b!1065752))

(assert (= (and b!1065752 res!476149) b!1065762))

(assert (= (and b!1065762 res!476153) b!1065763))

(assert (= (and b!1065763 res!476152) b!1065760))

(assert (= (and b!1065752 (not res!476151)) b!1065756))

(assert (= (and b!1065756 res!476156) b!1065758))

(assert (= (and b!1065758 (not res!476150)) b!1065755))

(assert (= (and b!1065755 (not res!476154)) b!1065753))

(assert (= (or b!1065757 b!1065758 b!1065762) bm!76890))

(declare-fun m!1223011 () Bool)

(assert (=> b!1065759 m!1223011))

(declare-fun m!1223013 () Bool)

(assert (=> b!1065760 m!1223013))

(assert (=> b!1065765 m!1223013))

(assert (=> b!1065765 m!1223013))

(declare-fun m!1223015 () Bool)

(assert (=> b!1065765 m!1223015))

(declare-fun m!1223017 () Bool)

(assert (=> b!1065765 m!1223017))

(assert (=> b!1065765 m!1223015))

(assert (=> b!1065765 m!1223017))

(declare-fun m!1223019 () Bool)

(assert (=> b!1065765 m!1223019))

(assert (=> d!301097 m!1222879))

(assert (=> d!301097 m!1222885))

(assert (=> b!1065755 m!1223017))

(assert (=> b!1065755 m!1223017))

(declare-fun m!1223021 () Bool)

(assert (=> b!1065755 m!1223021))

(assert (=> bm!76890 m!1222879))

(assert (=> b!1065753 m!1223013))

(assert (=> b!1065763 m!1223017))

(assert (=> b!1065763 m!1223017))

(assert (=> b!1065763 m!1223021))

(assert (=> b!1065432 d!301097))

(declare-fun bs!252106 () Bool)

(declare-fun b!1065768 () Bool)

(assert (= bs!252106 (and b!1065768 b!1065436)))

(declare-fun lambda!38608 () Int)

(assert (=> bs!252106 (not (= lambda!38608 lambda!38577))))

(declare-fun bs!252107 () Bool)

(assert (= bs!252107 (and b!1065768 d!301059)))

(assert (=> bs!252107 (not (= lambda!38608 lambda!38591))))

(declare-fun bs!252108 () Bool)

(assert (= bs!252108 (and b!1065768 b!1065525)))

(assert (=> bs!252108 (not (= lambda!38608 lambda!38597))))

(declare-fun bs!252109 () Bool)

(assert (= bs!252109 (and b!1065768 d!301085)))

(assert (=> bs!252109 (= (= r!15766 (Star!2938 (reg!3267 r!15766))) (= lambda!38608 lambda!38604))))

(declare-fun bs!252110 () Bool)

(assert (= bs!252110 (and b!1065768 b!1065527)))

(assert (=> bs!252110 (= (and (= (reg!3267 r!15766) (reg!3267 lt!360461)) (= r!15766 lt!360461)) (= lambda!38608 lambda!38596))))

(declare-fun bs!252111 () Bool)

(assert (= bs!252111 (and b!1065768 b!1065432)))

(assert (=> bs!252111 (= (= r!15766 lt!360458) (= lambda!38608 lambda!38576))))

(assert (=> bs!252109 (not (= lambda!38608 lambda!38603))))

(declare-fun bs!252112 () Bool)

(assert (= bs!252112 (and b!1065768 d!301081)))

(assert (=> bs!252112 (not (= lambda!38608 lambda!38598))))

(assert (=> bs!252111 (not (= lambda!38608 lambda!38575))))

(assert (=> b!1065768 true))

(assert (=> b!1065768 true))

(declare-fun bs!252113 () Bool)

(declare-fun b!1065766 () Bool)

(assert (= bs!252113 (and b!1065766 b!1065436)))

(declare-fun lambda!38609 () Int)

(assert (=> bs!252113 (not (= lambda!38609 lambda!38577))))

(declare-fun bs!252114 () Bool)

(assert (= bs!252114 (and b!1065766 d!301059)))

(assert (=> bs!252114 (not (= lambda!38609 lambda!38591))))

(declare-fun bs!252115 () Bool)

(assert (= bs!252115 (and b!1065766 b!1065525)))

(assert (=> bs!252115 (= (and (= (regOne!6388 r!15766) (regOne!6388 lt!360461)) (= (regTwo!6388 r!15766) (regTwo!6388 lt!360461))) (= lambda!38609 lambda!38597))))

(declare-fun bs!252116 () Bool)

(assert (= bs!252116 (and b!1065766 d!301085)))

(assert (=> bs!252116 (not (= lambda!38609 lambda!38604))))

(declare-fun bs!252117 () Bool)

(assert (= bs!252117 (and b!1065766 b!1065432)))

(assert (=> bs!252117 (not (= lambda!38609 lambda!38576))))

(assert (=> bs!252116 (not (= lambda!38609 lambda!38603))))

(declare-fun bs!252118 () Bool)

(assert (= bs!252118 (and b!1065766 b!1065768)))

(assert (=> bs!252118 (not (= lambda!38609 lambda!38608))))

(declare-fun bs!252119 () Bool)

(assert (= bs!252119 (and b!1065766 b!1065527)))

(assert (=> bs!252119 (not (= lambda!38609 lambda!38596))))

(declare-fun bs!252120 () Bool)

(assert (= bs!252120 (and b!1065766 d!301081)))

(assert (=> bs!252120 (not (= lambda!38609 lambda!38598))))

(assert (=> bs!252117 (not (= lambda!38609 lambda!38575))))

(assert (=> b!1065766 true))

(assert (=> b!1065766 true))

(declare-fun e!675887 () Bool)

(declare-fun call!76896 () Bool)

(assert (=> b!1065766 (= e!675887 call!76896)))

(declare-fun b!1065767 () Bool)

(declare-fun res!476157 () Bool)

(declare-fun e!675884 () Bool)

(assert (=> b!1065767 (=> res!476157 e!675884)))

(declare-fun call!76897 () Bool)

(assert (=> b!1065767 (= res!476157 call!76897)))

(assert (=> b!1065767 (= e!675887 e!675884)))

(declare-fun c!178729 () Bool)

(declare-fun bm!76891 () Bool)

(assert (=> bm!76891 (= call!76896 (Exists!661 (ite c!178729 lambda!38608 lambda!38609)))))

(assert (=> b!1065768 (= e!675884 call!76896)))

(declare-fun d!301103 () Bool)

(declare-fun c!178728 () Bool)

(assert (=> d!301103 (= c!178728 (is-EmptyExpr!2938 r!15766))))

(declare-fun e!675886 () Bool)

(assert (=> d!301103 (= (matchRSpec!737 r!15766 s!10566) e!675886)))

(declare-fun b!1065769 () Bool)

(declare-fun e!675881 () Bool)

(declare-fun e!675883 () Bool)

(assert (=> b!1065769 (= e!675881 e!675883)))

(declare-fun res!476158 () Bool)

(assert (=> b!1065769 (= res!476158 (matchRSpec!737 (regOne!6389 r!15766) s!10566))))

(assert (=> b!1065769 (=> res!476158 e!675883)))

(declare-fun bm!76892 () Bool)

(assert (=> bm!76892 (= call!76897 (isEmpty!6572 s!10566))))

(declare-fun b!1065770 () Bool)

(assert (=> b!1065770 (= e!675886 call!76897)))

(declare-fun b!1065771 () Bool)

(declare-fun c!178730 () Bool)

(assert (=> b!1065771 (= c!178730 (is-ElementMatch!2938 r!15766))))

(declare-fun e!675885 () Bool)

(declare-fun e!675882 () Bool)

(assert (=> b!1065771 (= e!675885 e!675882)))

(declare-fun b!1065772 () Bool)

(assert (=> b!1065772 (= e!675882 (= s!10566 (Cons!10152 (c!178659 r!15766) Nil!10152)))))

(declare-fun b!1065773 () Bool)

(assert (=> b!1065773 (= e!675886 e!675885)))

(declare-fun res!476159 () Bool)

(assert (=> b!1065773 (= res!476159 (not (is-EmptyLang!2938 r!15766)))))

(assert (=> b!1065773 (=> (not res!476159) (not e!675885))))

(declare-fun b!1065774 () Bool)

(declare-fun c!178731 () Bool)

(assert (=> b!1065774 (= c!178731 (is-Union!2938 r!15766))))

(assert (=> b!1065774 (= e!675882 e!675881)))

(declare-fun b!1065775 () Bool)

(assert (=> b!1065775 (= e!675881 e!675887)))

(assert (=> b!1065775 (= c!178729 (is-Star!2938 r!15766))))

(declare-fun b!1065776 () Bool)

(assert (=> b!1065776 (= e!675883 (matchRSpec!737 (regTwo!6389 r!15766) s!10566))))

(assert (= (and d!301103 c!178728) b!1065770))

(assert (= (and d!301103 (not c!178728)) b!1065773))

(assert (= (and b!1065773 res!476159) b!1065771))

(assert (= (and b!1065771 c!178730) b!1065772))

(assert (= (and b!1065771 (not c!178730)) b!1065774))

(assert (= (and b!1065774 c!178731) b!1065769))

(assert (= (and b!1065774 (not c!178731)) b!1065775))

(assert (= (and b!1065769 (not res!476158)) b!1065776))

(assert (= (and b!1065775 c!178729) b!1065767))

(assert (= (and b!1065775 (not c!178729)) b!1065766))

(assert (= (and b!1065767 (not res!476157)) b!1065768))

(assert (= (or b!1065768 b!1065766) bm!76891))

(assert (= (or b!1065770 b!1065767) bm!76892))

(declare-fun m!1223023 () Bool)

(assert (=> bm!76891 m!1223023))

(declare-fun m!1223025 () Bool)

(assert (=> b!1065769 m!1223025))

(assert (=> bm!76892 m!1222879))

(declare-fun m!1223027 () Bool)

(assert (=> b!1065776 m!1223027))

(assert (=> b!1065438 d!301103))

(declare-fun b!1065777 () Bool)

(declare-fun res!476162 () Bool)

(declare-fun e!675890 () Bool)

(assert (=> b!1065777 (=> res!476162 e!675890)))

(declare-fun e!675893 () Bool)

(assert (=> b!1065777 (= res!476162 e!675893)))

(declare-fun res!476160 () Bool)

(assert (=> b!1065777 (=> (not res!476160) (not e!675893))))

(declare-fun lt!360535 () Bool)

(assert (=> b!1065777 (= res!476160 lt!360535)))

(declare-fun d!301105 () Bool)

(declare-fun e!675891 () Bool)

(assert (=> d!301105 e!675891))

(declare-fun c!178733 () Bool)

(assert (=> d!301105 (= c!178733 (is-EmptyExpr!2938 r!15766))))

(declare-fun e!675888 () Bool)

(assert (=> d!301105 (= lt!360535 e!675888)))

(declare-fun c!178734 () Bool)

(assert (=> d!301105 (= c!178734 (isEmpty!6572 s!10566))))

(assert (=> d!301105 (validRegex!1407 r!15766)))

(assert (=> d!301105 (= (matchR!1474 r!15766 s!10566) lt!360535)))

(declare-fun b!1065778 () Bool)

(declare-fun e!675889 () Bool)

(assert (=> b!1065778 (= e!675889 (not (= (head!1978 s!10566) (c!178659 r!15766))))))

(declare-fun b!1065779 () Bool)

(declare-fun res!476166 () Bool)

(assert (=> b!1065779 (=> res!476166 e!675890)))

(assert (=> b!1065779 (= res!476166 (not (is-ElementMatch!2938 r!15766)))))

(declare-fun e!675894 () Bool)

(assert (=> b!1065779 (= e!675894 e!675890)))

(declare-fun b!1065780 () Bool)

(declare-fun res!476165 () Bool)

(assert (=> b!1065780 (=> res!476165 e!675889)))

(assert (=> b!1065780 (= res!476165 (not (isEmpty!6572 (tail!1540 s!10566))))))

(declare-fun b!1065781 () Bool)

(declare-fun e!675892 () Bool)

(assert (=> b!1065781 (= e!675890 e!675892)))

(declare-fun res!476167 () Bool)

(assert (=> b!1065781 (=> (not res!476167) (not e!675892))))

(assert (=> b!1065781 (= res!476167 (not lt!360535))))

(declare-fun b!1065782 () Bool)

(declare-fun call!76898 () Bool)

(assert (=> b!1065782 (= e!675891 (= lt!360535 call!76898))))

(declare-fun b!1065783 () Bool)

(assert (=> b!1065783 (= e!675892 e!675889)))

(declare-fun res!476161 () Bool)

(assert (=> b!1065783 (=> res!476161 e!675889)))

(assert (=> b!1065783 (= res!476161 call!76898)))

(declare-fun b!1065784 () Bool)

(assert (=> b!1065784 (= e!675888 (nullable!1025 r!15766))))

(declare-fun b!1065785 () Bool)

(assert (=> b!1065785 (= e!675893 (= (head!1978 s!10566) (c!178659 r!15766)))))

(declare-fun b!1065786 () Bool)

(assert (=> b!1065786 (= e!675894 (not lt!360535))))

(declare-fun bm!76893 () Bool)

(assert (=> bm!76893 (= call!76898 (isEmpty!6572 s!10566))))

(declare-fun b!1065787 () Bool)

(declare-fun res!476164 () Bool)

(assert (=> b!1065787 (=> (not res!476164) (not e!675893))))

(assert (=> b!1065787 (= res!476164 (not call!76898))))

(declare-fun b!1065788 () Bool)

(declare-fun res!476163 () Bool)

(assert (=> b!1065788 (=> (not res!476163) (not e!675893))))

(assert (=> b!1065788 (= res!476163 (isEmpty!6572 (tail!1540 s!10566)))))

(declare-fun b!1065789 () Bool)

(assert (=> b!1065789 (= e!675891 e!675894)))

(declare-fun c!178732 () Bool)

(assert (=> b!1065789 (= c!178732 (is-EmptyLang!2938 r!15766))))

(declare-fun b!1065790 () Bool)

(assert (=> b!1065790 (= e!675888 (matchR!1474 (derivativeStep!823 r!15766 (head!1978 s!10566)) (tail!1540 s!10566)))))

(assert (= (and d!301105 c!178734) b!1065784))

(assert (= (and d!301105 (not c!178734)) b!1065790))

(assert (= (and d!301105 c!178733) b!1065782))

(assert (= (and d!301105 (not c!178733)) b!1065789))

(assert (= (and b!1065789 c!178732) b!1065786))

(assert (= (and b!1065789 (not c!178732)) b!1065779))

(assert (= (and b!1065779 (not res!476166)) b!1065777))

(assert (= (and b!1065777 res!476160) b!1065787))

(assert (= (and b!1065787 res!476164) b!1065788))

(assert (= (and b!1065788 res!476163) b!1065785))

(assert (= (and b!1065777 (not res!476162)) b!1065781))

(assert (= (and b!1065781 res!476167) b!1065783))

(assert (= (and b!1065783 (not res!476161)) b!1065780))

(assert (= (and b!1065780 (not res!476165)) b!1065778))

(assert (= (or b!1065782 b!1065783 b!1065787) bm!76893))

(declare-fun m!1223029 () Bool)

(assert (=> b!1065784 m!1223029))

(assert (=> b!1065785 m!1223013))

(assert (=> b!1065790 m!1223013))

(assert (=> b!1065790 m!1223013))

(declare-fun m!1223031 () Bool)

(assert (=> b!1065790 m!1223031))

(assert (=> b!1065790 m!1223017))

(assert (=> b!1065790 m!1223031))

(assert (=> b!1065790 m!1223017))

(declare-fun m!1223033 () Bool)

(assert (=> b!1065790 m!1223033))

(assert (=> d!301105 m!1222879))

(assert (=> d!301105 m!1222793))

(assert (=> b!1065780 m!1223017))

(assert (=> b!1065780 m!1223017))

(assert (=> b!1065780 m!1223021))

(assert (=> bm!76893 m!1222879))

(assert (=> b!1065778 m!1223013))

(assert (=> b!1065788 m!1223017))

(assert (=> b!1065788 m!1223017))

(assert (=> b!1065788 m!1223021))

(assert (=> b!1065438 d!301105))

(declare-fun d!301107 () Bool)

(assert (=> d!301107 (= (matchR!1474 r!15766 s!10566) (matchRSpec!737 r!15766 s!10566))))

(declare-fun lt!360536 () Unit!15551)

(assert (=> d!301107 (= lt!360536 (choose!6800 r!15766 s!10566))))

(assert (=> d!301107 (validRegex!1407 r!15766)))

(assert (=> d!301107 (= (mainMatchTheorem!737 r!15766 s!10566) lt!360536)))

(declare-fun bs!252121 () Bool)

(assert (= bs!252121 d!301107))

(assert (=> bs!252121 m!1222827))

(assert (=> bs!252121 m!1222825))

(declare-fun m!1223035 () Bool)

(assert (=> bs!252121 m!1223035))

(assert (=> bs!252121 m!1222793))

(assert (=> b!1065438 d!301107))

(declare-fun b!1065795 () Bool)

(declare-fun e!675897 () Bool)

(declare-fun tp!319759 () Bool)

(assert (=> b!1065795 (= e!675897 (and tp_is_empty!5519 tp!319759))))

(assert (=> b!1065434 (= tp!319738 e!675897)))

(assert (= (and b!1065434 (is-Cons!10152 (t!101214 s!10566))) b!1065795))

(declare-fun b!1065807 () Bool)

(declare-fun e!675900 () Bool)

(declare-fun tp!319770 () Bool)

(declare-fun tp!319771 () Bool)

(assert (=> b!1065807 (= e!675900 (and tp!319770 tp!319771))))

(assert (=> b!1065435 (= tp!319733 e!675900)))

(declare-fun b!1065806 () Bool)

(assert (=> b!1065806 (= e!675900 tp_is_empty!5519)))

(declare-fun b!1065809 () Bool)

(declare-fun tp!319773 () Bool)

(declare-fun tp!319774 () Bool)

(assert (=> b!1065809 (= e!675900 (and tp!319773 tp!319774))))

(declare-fun b!1065808 () Bool)

(declare-fun tp!319772 () Bool)

(assert (=> b!1065808 (= e!675900 tp!319772)))

(assert (= (and b!1065435 (is-ElementMatch!2938 (regOne!6389 r!15766))) b!1065806))

(assert (= (and b!1065435 (is-Concat!4771 (regOne!6389 r!15766))) b!1065807))

(assert (= (and b!1065435 (is-Star!2938 (regOne!6389 r!15766))) b!1065808))

(assert (= (and b!1065435 (is-Union!2938 (regOne!6389 r!15766))) b!1065809))

(declare-fun b!1065811 () Bool)

(declare-fun e!675901 () Bool)

(declare-fun tp!319775 () Bool)

(declare-fun tp!319776 () Bool)

(assert (=> b!1065811 (= e!675901 (and tp!319775 tp!319776))))

(assert (=> b!1065435 (= tp!319736 e!675901)))

(declare-fun b!1065810 () Bool)

(assert (=> b!1065810 (= e!675901 tp_is_empty!5519)))

(declare-fun b!1065813 () Bool)

(declare-fun tp!319778 () Bool)

(declare-fun tp!319779 () Bool)

(assert (=> b!1065813 (= e!675901 (and tp!319778 tp!319779))))

(declare-fun b!1065812 () Bool)

(declare-fun tp!319777 () Bool)

(assert (=> b!1065812 (= e!675901 tp!319777)))

(assert (= (and b!1065435 (is-ElementMatch!2938 (regTwo!6389 r!15766))) b!1065810))

(assert (= (and b!1065435 (is-Concat!4771 (regTwo!6389 r!15766))) b!1065811))

(assert (= (and b!1065435 (is-Star!2938 (regTwo!6389 r!15766))) b!1065812))

(assert (= (and b!1065435 (is-Union!2938 (regTwo!6389 r!15766))) b!1065813))

(declare-fun b!1065815 () Bool)

(declare-fun e!675902 () Bool)

(declare-fun tp!319780 () Bool)

(declare-fun tp!319781 () Bool)

(assert (=> b!1065815 (= e!675902 (and tp!319780 tp!319781))))

(assert (=> b!1065431 (= tp!319734 e!675902)))

(declare-fun b!1065814 () Bool)

(assert (=> b!1065814 (= e!675902 tp_is_empty!5519)))

(declare-fun b!1065817 () Bool)

(declare-fun tp!319783 () Bool)

(declare-fun tp!319784 () Bool)

(assert (=> b!1065817 (= e!675902 (and tp!319783 tp!319784))))

(declare-fun b!1065816 () Bool)

(declare-fun tp!319782 () Bool)

(assert (=> b!1065816 (= e!675902 tp!319782)))

(assert (= (and b!1065431 (is-ElementMatch!2938 (regOne!6388 r!15766))) b!1065814))

(assert (= (and b!1065431 (is-Concat!4771 (regOne!6388 r!15766))) b!1065815))

(assert (= (and b!1065431 (is-Star!2938 (regOne!6388 r!15766))) b!1065816))

(assert (= (and b!1065431 (is-Union!2938 (regOne!6388 r!15766))) b!1065817))

(declare-fun b!1065819 () Bool)

(declare-fun e!675903 () Bool)

(declare-fun tp!319785 () Bool)

(declare-fun tp!319786 () Bool)

(assert (=> b!1065819 (= e!675903 (and tp!319785 tp!319786))))

(assert (=> b!1065431 (= tp!319735 e!675903)))

(declare-fun b!1065818 () Bool)

(assert (=> b!1065818 (= e!675903 tp_is_empty!5519)))

(declare-fun b!1065821 () Bool)

(declare-fun tp!319788 () Bool)

(declare-fun tp!319789 () Bool)

(assert (=> b!1065821 (= e!675903 (and tp!319788 tp!319789))))

(declare-fun b!1065820 () Bool)

(declare-fun tp!319787 () Bool)

(assert (=> b!1065820 (= e!675903 tp!319787)))

(assert (= (and b!1065431 (is-ElementMatch!2938 (regTwo!6388 r!15766))) b!1065818))

(assert (= (and b!1065431 (is-Concat!4771 (regTwo!6388 r!15766))) b!1065819))

(assert (= (and b!1065431 (is-Star!2938 (regTwo!6388 r!15766))) b!1065820))

(assert (= (and b!1065431 (is-Union!2938 (regTwo!6388 r!15766))) b!1065821))

(declare-fun b!1065823 () Bool)

(declare-fun e!675904 () Bool)

(declare-fun tp!319790 () Bool)

(declare-fun tp!319791 () Bool)

(assert (=> b!1065823 (= e!675904 (and tp!319790 tp!319791))))

(assert (=> b!1065437 (= tp!319737 e!675904)))

(declare-fun b!1065822 () Bool)

(assert (=> b!1065822 (= e!675904 tp_is_empty!5519)))

(declare-fun b!1065825 () Bool)

(declare-fun tp!319793 () Bool)

(declare-fun tp!319794 () Bool)

(assert (=> b!1065825 (= e!675904 (and tp!319793 tp!319794))))

(declare-fun b!1065824 () Bool)

(declare-fun tp!319792 () Bool)

(assert (=> b!1065824 (= e!675904 tp!319792)))

(assert (= (and b!1065437 (is-ElementMatch!2938 (reg!3267 r!15766))) b!1065822))

(assert (= (and b!1065437 (is-Concat!4771 (reg!3267 r!15766))) b!1065823))

(assert (= (and b!1065437 (is-Star!2938 (reg!3267 r!15766))) b!1065824))

(assert (= (and b!1065437 (is-Union!2938 (reg!3267 r!15766))) b!1065825))

(push 1)

(assert (not b!1065585))

(assert (not d!301085))

(assert (not b!1065825))

(assert (not b!1065763))

(assert (not b!1065820))

(assert (not bm!76887))

(assert (not b!1065583))

(assert (not b!1065812))

(assert (not d!301105))

(assert (not b!1065765))

(assert (not b!1065813))

(assert (not d!301091))

(assert (not bm!76857))

(assert (not b!1065819))

(assert (not b!1065808))

(assert (not bm!76885))

(assert (not d!301063))

(assert (not b!1065784))

(assert (not b!1065718))

(assert (not b!1065716))

(assert (not bm!76893))

(assert (not b!1065788))

(assert (not b!1065811))

(assert (not d!301087))

(assert (not d!301081))

(assert (not b!1065608))

(assert (not b!1065790))

(assert (not d!301093))

(assert (not b!1065588))

(assert (not b!1065776))

(assert (not b!1065584))

(assert (not b!1065528))

(assert (not b!1065535))

(assert (not b!1065753))

(assert (not bm!76867))

(assert (not b!1065586))

(assert (not d!301097))

(assert tp_is_empty!5519)

(assert (not bm!76891))

(assert (not d!301083))

(assert (not d!301059))

(assert (not b!1065711))

(assert (not b!1065700))

(assert (not bm!76864))

(assert (not b!1065809))

(assert (not b!1065617))

(assert (not b!1065823))

(assert (not d!301069))

(assert (not b!1065778))

(assert (not b!1065581))

(assert (not bm!76869))

(assert (not b!1065821))

(assert (not b!1065824))

(assert (not bm!76890))

(assert (not b!1065769))

(assert (not b!1065785))

(assert (not b!1065780))

(assert (not b!1065755))

(assert (not bm!76856))

(assert (not d!301067))

(assert (not b!1065815))

(assert (not b!1065715))

(assert (not bm!76892))

(assert (not d!301107))

(assert (not b!1065714))

(assert (not b!1065817))

(assert (not b!1065816))

(assert (not b!1065807))

(assert (not d!301077))

(assert (not d!301095))

(assert (not b!1065760))

(assert (not b!1065759))

(assert (not b!1065713))

(assert (not bm!76866))

(assert (not b!1065795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

