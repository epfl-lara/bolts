; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83460 () Bool)

(assert start!83460)

(declare-fun b!933493 () Bool)

(assert (=> b!933493 true))

(assert (=> b!933493 true))

(assert (=> b!933493 true))

(declare-fun lambda!30862 () Int)

(declare-fun lambda!30861 () Int)

(assert (=> b!933493 (not (= lambda!30862 lambda!30861))))

(assert (=> b!933493 true))

(assert (=> b!933493 true))

(assert (=> b!933493 true))

(declare-fun b!933491 () Bool)

(declare-fun e!606486 () Bool)

(declare-fun tp_is_empty!4743 () Bool)

(declare-fun tp!289731 () Bool)

(assert (=> b!933491 (= e!606486 (and tp_is_empty!4743 tp!289731))))

(declare-fun b!933492 () Bool)

(declare-fun e!606484 () Bool)

(declare-fun e!606487 () Bool)

(assert (=> b!933492 (= e!606484 (not e!606487))))

(declare-fun res!423881 () Bool)

(assert (=> b!933492 (=> res!423881 e!606487)))

(declare-fun lt!340855 () Bool)

(declare-datatypes ((C!5670 0))(
  ( (C!5671 (val!3083 Int)) )
))
(declare-datatypes ((Regex!2550 0))(
  ( (ElementMatch!2550 (c!151799 C!5670)) (Concat!4383 (regOne!5612 Regex!2550) (regTwo!5612 Regex!2550)) (EmptyExpr!2550) (Star!2550 (reg!2879 Regex!2550)) (EmptyLang!2550) (Union!2550 (regOne!5613 Regex!2550) (regTwo!5613 Regex!2550)) )
))
(declare-fun r!15766 () Regex!2550)

(assert (=> b!933492 (= res!423881 (or lt!340855 (and (is-Concat!4383 r!15766) (is-EmptyExpr!2550 (regOne!5612 r!15766))) (and (is-Concat!4383 r!15766) (is-EmptyExpr!2550 (regTwo!5612 r!15766))) (is-Concat!4383 r!15766) (is-Union!2550 r!15766) (not (is-Star!2550 r!15766))))))

(declare-datatypes ((List!9780 0))(
  ( (Nil!9764) (Cons!9764 (h!15165 C!5670) (t!100826 List!9780)) )
))
(declare-fun s!10566 () List!9780)

(declare-fun matchRSpec!351 (Regex!2550 List!9780) Bool)

(assert (=> b!933492 (= lt!340855 (matchRSpec!351 r!15766 s!10566))))

(declare-fun matchR!1088 (Regex!2550 List!9780) Bool)

(assert (=> b!933492 (= lt!340855 (matchR!1088 r!15766 s!10566))))

(declare-datatypes ((Unit!14719 0))(
  ( (Unit!14720) )
))
(declare-fun lt!340854 () Unit!14719)

(declare-fun mainMatchTheorem!351 (Regex!2550 List!9780) Unit!14719)

(assert (=> b!933492 (= lt!340854 (mainMatchTheorem!351 r!15766 s!10566))))

(declare-fun validRegex!1019 (Regex!2550) Bool)

(assert (=> b!933493 (= e!606487 (validRegex!1019 (reg!2879 r!15766)))))

(declare-fun Exists!301 (Int) Bool)

(assert (=> b!933493 (= (Exists!301 lambda!30861) (Exists!301 lambda!30862))))

(declare-fun lt!340853 () Unit!14719)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!45 (Regex!2550 List!9780) Unit!14719)

(assert (=> b!933493 (= lt!340853 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!45 (reg!2879 r!15766) s!10566))))

(declare-fun lt!340856 () Regex!2550)

(declare-datatypes ((tuple2!10998 0))(
  ( (tuple2!10999 (_1!6325 List!9780) (_2!6325 List!9780)) )
))
(declare-datatypes ((Option!2141 0))(
  ( (None!2140) (Some!2140 (v!19557 tuple2!10998)) )
))
(declare-fun isDefined!1783 (Option!2141) Bool)

(declare-fun findConcatSeparation!247 (Regex!2550 Regex!2550 List!9780 List!9780 List!9780) Option!2141)

(assert (=> b!933493 (= (isDefined!1783 (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 Nil!9764 s!10566 s!10566)) (Exists!301 lambda!30861))))

(declare-fun lt!340852 () Unit!14719)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!247 (Regex!2550 Regex!2550 List!9780) Unit!14719)

(assert (=> b!933493 (= lt!340852 (lemmaFindConcatSeparationEquivalentToExists!247 (reg!2879 r!15766) lt!340856 s!10566))))

(assert (=> b!933493 (= lt!340856 (Star!2550 (reg!2879 r!15766)))))

(declare-fun b!933494 () Bool)

(declare-fun e!606485 () Bool)

(declare-fun tp!289729 () Bool)

(declare-fun tp!289732 () Bool)

(assert (=> b!933494 (= e!606485 (and tp!289729 tp!289732))))

(declare-fun b!933490 () Bool)

(declare-fun tp!289734 () Bool)

(assert (=> b!933490 (= e!606485 tp!289734)))

(declare-fun res!423882 () Bool)

(assert (=> start!83460 (=> (not res!423882) (not e!606484))))

(assert (=> start!83460 (= res!423882 (validRegex!1019 r!15766))))

(assert (=> start!83460 e!606484))

(assert (=> start!83460 e!606485))

(assert (=> start!83460 e!606486))

(declare-fun b!933495 () Bool)

(declare-fun tp!289733 () Bool)

(declare-fun tp!289730 () Bool)

(assert (=> b!933495 (= e!606485 (and tp!289733 tp!289730))))

(declare-fun b!933496 () Bool)

(assert (=> b!933496 (= e!606485 tp_is_empty!4743)))

(assert (= (and start!83460 res!423882) b!933492))

(assert (= (and b!933492 (not res!423881)) b!933493))

(assert (= (and start!83460 (is-ElementMatch!2550 r!15766)) b!933496))

(assert (= (and start!83460 (is-Concat!4383 r!15766)) b!933494))

(assert (= (and start!83460 (is-Star!2550 r!15766)) b!933490))

(assert (= (and start!83460 (is-Union!2550 r!15766)) b!933495))

(assert (= (and start!83460 (is-Cons!9764 s!10566)) b!933491))

(declare-fun m!1154389 () Bool)

(assert (=> b!933492 m!1154389))

(declare-fun m!1154391 () Bool)

(assert (=> b!933492 m!1154391))

(declare-fun m!1154393 () Bool)

(assert (=> b!933492 m!1154393))

(declare-fun m!1154395 () Bool)

(assert (=> b!933493 m!1154395))

(declare-fun m!1154397 () Bool)

(assert (=> b!933493 m!1154397))

(declare-fun m!1154399 () Bool)

(assert (=> b!933493 m!1154399))

(declare-fun m!1154401 () Bool)

(assert (=> b!933493 m!1154401))

(declare-fun m!1154403 () Bool)

(assert (=> b!933493 m!1154403))

(declare-fun m!1154405 () Bool)

(assert (=> b!933493 m!1154405))

(assert (=> b!933493 m!1154399))

(assert (=> b!933493 m!1154397))

(declare-fun m!1154407 () Bool)

(assert (=> b!933493 m!1154407))

(declare-fun m!1154409 () Bool)

(assert (=> start!83460 m!1154409))

(push 1)

(assert (not b!933491))

(assert (not b!933495))

(assert (not b!933494))

(assert (not b!933490))

(assert tp_is_empty!4743)

(assert (not b!933493))

(assert (not start!83460))

(assert (not b!933492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!281635 () Bool)

(declare-fun choose!5740 (Int) Bool)

(assert (=> d!281635 (= (Exists!301 lambda!30862) (choose!5740 lambda!30862))))

(declare-fun bs!237758 () Bool)

(assert (= bs!237758 d!281635))

(declare-fun m!1154433 () Bool)

(assert (=> bs!237758 m!1154433))

(assert (=> b!933493 d!281635))

(declare-fun d!281637 () Bool)

(declare-fun isEmpty!6001 (Option!2141) Bool)

(assert (=> d!281637 (= (isDefined!1783 (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 Nil!9764 s!10566 s!10566)) (not (isEmpty!6001 (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 Nil!9764 s!10566 s!10566))))))

(declare-fun bs!237759 () Bool)

(assert (= bs!237759 d!281637))

(assert (=> bs!237759 m!1154397))

(declare-fun m!1154435 () Bool)

(assert (=> bs!237759 m!1154435))

(assert (=> b!933493 d!281637))

(declare-fun bs!237760 () Bool)

(declare-fun d!281639 () Bool)

(assert (= bs!237760 (and d!281639 b!933493)))

(declare-fun lambda!30875 () Int)

(assert (=> bs!237760 (= (= (Star!2550 (reg!2879 r!15766)) lt!340856) (= lambda!30875 lambda!30861))))

(assert (=> bs!237760 (not (= lambda!30875 lambda!30862))))

(assert (=> d!281639 true))

(assert (=> d!281639 true))

(declare-fun lambda!30876 () Int)

(assert (=> bs!237760 (not (= lambda!30876 lambda!30861))))

(assert (=> bs!237760 (= (= (Star!2550 (reg!2879 r!15766)) lt!340856) (= lambda!30876 lambda!30862))))

(declare-fun bs!237761 () Bool)

(assert (= bs!237761 d!281639))

(assert (=> bs!237761 (not (= lambda!30876 lambda!30875))))

(assert (=> d!281639 true))

(assert (=> d!281639 true))

(assert (=> d!281639 (= (Exists!301 lambda!30875) (Exists!301 lambda!30876))))

(declare-fun lt!340874 () Unit!14719)

(declare-fun choose!5741 (Regex!2550 List!9780) Unit!14719)

(assert (=> d!281639 (= lt!340874 (choose!5741 (reg!2879 r!15766) s!10566))))

(assert (=> d!281639 (validRegex!1019 (reg!2879 r!15766))))

(assert (=> d!281639 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!45 (reg!2879 r!15766) s!10566) lt!340874)))

(declare-fun m!1154437 () Bool)

(assert (=> bs!237761 m!1154437))

(declare-fun m!1154439 () Bool)

(assert (=> bs!237761 m!1154439))

(declare-fun m!1154441 () Bool)

(assert (=> bs!237761 m!1154441))

(assert (=> bs!237761 m!1154403))

(assert (=> b!933493 d!281639))

(declare-fun d!281643 () Bool)

(assert (=> d!281643 (= (Exists!301 lambda!30861) (choose!5740 lambda!30861))))

(declare-fun bs!237762 () Bool)

(assert (= bs!237762 d!281643))

(declare-fun m!1154443 () Bool)

(assert (=> bs!237762 m!1154443))

(assert (=> b!933493 d!281643))

(declare-fun c!151809 () Bool)

(declare-fun bm!57749 () Bool)

(declare-fun c!151810 () Bool)

(declare-fun call!57756 () Bool)

(assert (=> bm!57749 (= call!57756 (validRegex!1019 (ite c!151810 (reg!2879 (reg!2879 r!15766)) (ite c!151809 (regTwo!5613 (reg!2879 r!15766)) (regTwo!5612 (reg!2879 r!15766))))))))

(declare-fun b!933586 () Bool)

(declare-fun e!606539 () Bool)

(assert (=> b!933586 (= e!606539 call!57756)))

(declare-fun b!933587 () Bool)

(declare-fun res!423936 () Bool)

(declare-fun e!606540 () Bool)

(assert (=> b!933587 (=> (not res!423936) (not e!606540))))

(declare-fun call!57755 () Bool)

(assert (=> b!933587 (= res!423936 call!57755)))

(declare-fun e!606543 () Bool)

(assert (=> b!933587 (= e!606543 e!606540)))

(declare-fun b!933588 () Bool)

(declare-fun e!606538 () Bool)

(declare-fun call!57754 () Bool)

(assert (=> b!933588 (= e!606538 call!57754)))

(declare-fun b!933589 () Bool)

(declare-fun e!606544 () Bool)

(assert (=> b!933589 (= e!606544 e!606538)))

(declare-fun res!423937 () Bool)

(assert (=> b!933589 (=> (not res!423937) (not e!606538))))

(assert (=> b!933589 (= res!423937 call!57755)))

(declare-fun b!933590 () Bool)

(declare-fun e!606541 () Bool)

(assert (=> b!933590 (= e!606541 e!606539)))

(declare-fun res!423933 () Bool)

(declare-fun nullable!728 (Regex!2550) Bool)

(assert (=> b!933590 (= res!423933 (not (nullable!728 (reg!2879 (reg!2879 r!15766)))))))

(assert (=> b!933590 (=> (not res!423933) (not e!606539))))

(declare-fun bm!57750 () Bool)

(assert (=> bm!57750 (= call!57754 call!57756)))

(declare-fun d!281645 () Bool)

(declare-fun res!423935 () Bool)

(declare-fun e!606542 () Bool)

(assert (=> d!281645 (=> res!423935 e!606542)))

(assert (=> d!281645 (= res!423935 (is-ElementMatch!2550 (reg!2879 r!15766)))))

(assert (=> d!281645 (= (validRegex!1019 (reg!2879 r!15766)) e!606542)))

(declare-fun bm!57751 () Bool)

(assert (=> bm!57751 (= call!57755 (validRegex!1019 (ite c!151809 (regOne!5613 (reg!2879 r!15766)) (regOne!5612 (reg!2879 r!15766)))))))

(declare-fun b!933591 () Bool)

(assert (=> b!933591 (= e!606542 e!606541)))

(assert (=> b!933591 (= c!151810 (is-Star!2550 (reg!2879 r!15766)))))

(declare-fun b!933592 () Bool)

(declare-fun res!423934 () Bool)

(assert (=> b!933592 (=> res!423934 e!606544)))

(assert (=> b!933592 (= res!423934 (not (is-Concat!4383 (reg!2879 r!15766))))))

(assert (=> b!933592 (= e!606543 e!606544)))

(declare-fun b!933593 () Bool)

(assert (=> b!933593 (= e!606540 call!57754)))

(declare-fun b!933594 () Bool)

(assert (=> b!933594 (= e!606541 e!606543)))

(assert (=> b!933594 (= c!151809 (is-Union!2550 (reg!2879 r!15766)))))

(assert (= (and d!281645 (not res!423935)) b!933591))

(assert (= (and b!933591 c!151810) b!933590))

(assert (= (and b!933591 (not c!151810)) b!933594))

(assert (= (and b!933590 res!423933) b!933586))

(assert (= (and b!933594 c!151809) b!933587))

(assert (= (and b!933594 (not c!151809)) b!933592))

(assert (= (and b!933587 res!423936) b!933593))

(assert (= (and b!933592 (not res!423934)) b!933589))

(assert (= (and b!933589 res!423937) b!933588))

(assert (= (or b!933593 b!933588) bm!57750))

(assert (= (or b!933587 b!933589) bm!57751))

(assert (= (or b!933586 bm!57750) bm!57749))

(declare-fun m!1154445 () Bool)

(assert (=> bm!57749 m!1154445))

(declare-fun m!1154447 () Bool)

(assert (=> b!933590 m!1154447))

(declare-fun m!1154449 () Bool)

(assert (=> bm!57751 m!1154449))

(assert (=> b!933493 d!281645))

(declare-fun bs!237763 () Bool)

(declare-fun d!281647 () Bool)

(assert (= bs!237763 (and d!281647 b!933493)))

(declare-fun lambda!30879 () Int)

(assert (=> bs!237763 (= lambda!30879 lambda!30861)))

(assert (=> bs!237763 (not (= lambda!30879 lambda!30862))))

(declare-fun bs!237764 () Bool)

(assert (= bs!237764 (and d!281647 d!281639)))

(assert (=> bs!237764 (= (= lt!340856 (Star!2550 (reg!2879 r!15766))) (= lambda!30879 lambda!30875))))

(assert (=> bs!237764 (not (= lambda!30879 lambda!30876))))

(assert (=> d!281647 true))

(assert (=> d!281647 true))

(assert (=> d!281647 true))

(assert (=> d!281647 (= (isDefined!1783 (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 Nil!9764 s!10566 s!10566)) (Exists!301 lambda!30879))))

(declare-fun lt!340877 () Unit!14719)

(declare-fun choose!5742 (Regex!2550 Regex!2550 List!9780) Unit!14719)

(assert (=> d!281647 (= lt!340877 (choose!5742 (reg!2879 r!15766) lt!340856 s!10566))))

(assert (=> d!281647 (validRegex!1019 (reg!2879 r!15766))))

(assert (=> d!281647 (= (lemmaFindConcatSeparationEquivalentToExists!247 (reg!2879 r!15766) lt!340856 s!10566) lt!340877)))

(declare-fun bs!237765 () Bool)

(assert (= bs!237765 d!281647))

(declare-fun m!1154457 () Bool)

(assert (=> bs!237765 m!1154457))

(declare-fun m!1154459 () Bool)

(assert (=> bs!237765 m!1154459))

(assert (=> bs!237765 m!1154397))

(assert (=> bs!237765 m!1154397))

(assert (=> bs!237765 m!1154407))

(assert (=> bs!237765 m!1154403))

(assert (=> b!933493 d!281647))

(declare-fun b!933658 () Bool)

(declare-fun e!606582 () Option!2141)

(assert (=> b!933658 (= e!606582 None!2140)))

(declare-fun b!933659 () Bool)

(declare-fun e!606586 () Option!2141)

(assert (=> b!933659 (= e!606586 e!606582)))

(declare-fun c!151825 () Bool)

(assert (=> b!933659 (= c!151825 (is-Nil!9764 s!10566))))

(declare-fun b!933660 () Bool)

(declare-fun res!423977 () Bool)

(declare-fun e!606583 () Bool)

(assert (=> b!933660 (=> (not res!423977) (not e!606583))))

(declare-fun lt!340886 () Option!2141)

(declare-fun get!3217 (Option!2141) tuple2!10998)

(assert (=> b!933660 (= res!423977 (matchR!1088 (reg!2879 r!15766) (_1!6325 (get!3217 lt!340886))))))

(declare-fun d!281651 () Bool)

(declare-fun e!606584 () Bool)

(assert (=> d!281651 e!606584))

(declare-fun res!423973 () Bool)

(assert (=> d!281651 (=> res!423973 e!606584)))

(assert (=> d!281651 (= res!423973 e!606583)))

(declare-fun res!423974 () Bool)

(assert (=> d!281651 (=> (not res!423974) (not e!606583))))

(assert (=> d!281651 (= res!423974 (isDefined!1783 lt!340886))))

(assert (=> d!281651 (= lt!340886 e!606586)))

(declare-fun c!151826 () Bool)

(declare-fun e!606585 () Bool)

(assert (=> d!281651 (= c!151826 e!606585)))

(declare-fun res!423975 () Bool)

(assert (=> d!281651 (=> (not res!423975) (not e!606585))))

(assert (=> d!281651 (= res!423975 (matchR!1088 (reg!2879 r!15766) Nil!9764))))

(assert (=> d!281651 (validRegex!1019 (reg!2879 r!15766))))

(assert (=> d!281651 (= (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 Nil!9764 s!10566 s!10566) lt!340886)))

(declare-fun b!933661 () Bool)

(assert (=> b!933661 (= e!606586 (Some!2140 (tuple2!10999 Nil!9764 s!10566)))))

(declare-fun b!933662 () Bool)

(declare-fun ++!2582 (List!9780 List!9780) List!9780)

(assert (=> b!933662 (= e!606583 (= (++!2582 (_1!6325 (get!3217 lt!340886)) (_2!6325 (get!3217 lt!340886))) s!10566))))

(declare-fun b!933663 () Bool)

(declare-fun res!423976 () Bool)

(assert (=> b!933663 (=> (not res!423976) (not e!606583))))

(assert (=> b!933663 (= res!423976 (matchR!1088 lt!340856 (_2!6325 (get!3217 lt!340886))))))

(declare-fun b!933664 () Bool)

(assert (=> b!933664 (= e!606584 (not (isDefined!1783 lt!340886)))))

(declare-fun b!933665 () Bool)

(assert (=> b!933665 (= e!606585 (matchR!1088 lt!340856 s!10566))))

(declare-fun b!933666 () Bool)

(declare-fun lt!340884 () Unit!14719)

(declare-fun lt!340885 () Unit!14719)

(assert (=> b!933666 (= lt!340884 lt!340885)))

(assert (=> b!933666 (= (++!2582 (++!2582 Nil!9764 (Cons!9764 (h!15165 s!10566) Nil!9764)) (t!100826 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!195 (List!9780 C!5670 List!9780 List!9780) Unit!14719)

(assert (=> b!933666 (= lt!340885 (lemmaMoveElementToOtherListKeepsConcatEq!195 Nil!9764 (h!15165 s!10566) (t!100826 s!10566) s!10566))))

(assert (=> b!933666 (= e!606582 (findConcatSeparation!247 (reg!2879 r!15766) lt!340856 (++!2582 Nil!9764 (Cons!9764 (h!15165 s!10566) Nil!9764)) (t!100826 s!10566) s!10566))))

(assert (= (and d!281651 res!423975) b!933665))

(assert (= (and d!281651 c!151826) b!933661))

(assert (= (and d!281651 (not c!151826)) b!933659))

(assert (= (and b!933659 c!151825) b!933658))

(assert (= (and b!933659 (not c!151825)) b!933666))

(assert (= (and d!281651 res!423974) b!933660))

(assert (= (and b!933660 res!423977) b!933663))

(assert (= (and b!933663 res!423976) b!933662))

(assert (= (and d!281651 (not res!423973)) b!933664))

(declare-fun m!1154461 () Bool)

(assert (=> b!933666 m!1154461))

(assert (=> b!933666 m!1154461))

(declare-fun m!1154463 () Bool)

(assert (=> b!933666 m!1154463))

(declare-fun m!1154465 () Bool)

(assert (=> b!933666 m!1154465))

(assert (=> b!933666 m!1154461))

(declare-fun m!1154467 () Bool)

(assert (=> b!933666 m!1154467))

(declare-fun m!1154469 () Bool)

(assert (=> d!281651 m!1154469))

(declare-fun m!1154471 () Bool)

(assert (=> d!281651 m!1154471))

(assert (=> d!281651 m!1154403))

(declare-fun m!1154473 () Bool)

(assert (=> b!933662 m!1154473))

(declare-fun m!1154475 () Bool)

(assert (=> b!933662 m!1154475))

(assert (=> b!933663 m!1154473))

(declare-fun m!1154477 () Bool)

(assert (=> b!933663 m!1154477))

(declare-fun m!1154479 () Bool)

(assert (=> b!933665 m!1154479))

(assert (=> b!933664 m!1154469))

(assert (=> b!933660 m!1154473))

(declare-fun m!1154481 () Bool)

(assert (=> b!933660 m!1154481))

(assert (=> b!933493 d!281651))

(declare-fun bs!237769 () Bool)

(declare-fun b!933719 () Bool)

(assert (= bs!237769 (and b!933719 d!281639)))

(declare-fun lambda!30890 () Int)

(assert (=> bs!237769 (not (= lambda!30890 lambda!30875))))

(assert (=> bs!237769 (= (= r!15766 (Star!2550 (reg!2879 r!15766))) (= lambda!30890 lambda!30876))))

(declare-fun bs!237770 () Bool)

(assert (= bs!237770 (and b!933719 b!933493)))

(assert (=> bs!237770 (= (= r!15766 lt!340856) (= lambda!30890 lambda!30862))))

(assert (=> bs!237770 (not (= lambda!30890 lambda!30861))))

(declare-fun bs!237771 () Bool)

(assert (= bs!237771 (and b!933719 d!281647)))

(assert (=> bs!237771 (not (= lambda!30890 lambda!30879))))

(assert (=> b!933719 true))

(assert (=> b!933719 true))

(declare-fun bs!237772 () Bool)

(declare-fun b!933711 () Bool)

(assert (= bs!237772 (and b!933711 d!281639)))

(declare-fun lambda!30891 () Int)

(assert (=> bs!237772 (not (= lambda!30891 lambda!30875))))

(declare-fun bs!237773 () Bool)

(assert (= bs!237773 (and b!933711 b!933719)))

(assert (=> bs!237773 (not (= lambda!30891 lambda!30890))))

(assert (=> bs!237772 (not (= lambda!30891 lambda!30876))))

(declare-fun bs!237774 () Bool)

(assert (= bs!237774 (and b!933711 b!933493)))

(assert (=> bs!237774 (not (= lambda!30891 lambda!30862))))

(assert (=> bs!237774 (not (= lambda!30891 lambda!30861))))

(declare-fun bs!237775 () Bool)

(assert (= bs!237775 (and b!933711 d!281647)))

(assert (=> bs!237775 (not (= lambda!30891 lambda!30879))))

(assert (=> b!933711 true))

(assert (=> b!933711 true))

(declare-fun d!281653 () Bool)

(declare-fun c!151839 () Bool)

(assert (=> d!281653 (= c!151839 (is-EmptyExpr!2550 r!15766))))

(declare-fun e!606617 () Bool)

(assert (=> d!281653 (= (matchRSpec!351 r!15766 s!10566) e!606617)))

(declare-fun b!933710 () Bool)

(declare-fun e!606614 () Bool)

(assert (=> b!933710 (= e!606614 (= s!10566 (Cons!9764 (c!151799 r!15766) Nil!9764)))))

(declare-fun e!606612 () Bool)

(declare-fun call!57771 () Bool)

(assert (=> b!933711 (= e!606612 call!57771)))

(declare-fun bm!57765 () Bool)

(declare-fun c!151840 () Bool)

(assert (=> bm!57765 (= call!57771 (Exists!301 (ite c!151840 lambda!30890 lambda!30891)))))

(declare-fun b!933712 () Bool)

(declare-fun e!606616 () Bool)

(declare-fun e!606618 () Bool)

(assert (=> b!933712 (= e!606616 e!606618)))

(declare-fun res!423999 () Bool)

(assert (=> b!933712 (= res!423999 (matchRSpec!351 (regOne!5613 r!15766) s!10566))))

(assert (=> b!933712 (=> res!423999 e!606618)))

(declare-fun bm!57766 () Bool)

(declare-fun call!57770 () Bool)

(declare-fun isEmpty!6002 (List!9780) Bool)

(assert (=> bm!57766 (= call!57770 (isEmpty!6002 s!10566))))

(declare-fun b!933713 () Bool)

(declare-fun res!423998 () Bool)

(declare-fun e!606613 () Bool)

(assert (=> b!933713 (=> res!423998 e!606613)))

(assert (=> b!933713 (= res!423998 call!57770)))

(assert (=> b!933713 (= e!606612 e!606613)))

(declare-fun b!933714 () Bool)

(assert (=> b!933714 (= e!606616 e!606612)))

(assert (=> b!933714 (= c!151840 (is-Star!2550 r!15766))))

(declare-fun b!933715 () Bool)

(declare-fun c!151841 () Bool)

(assert (=> b!933715 (= c!151841 (is-ElementMatch!2550 r!15766))))

(declare-fun e!606615 () Bool)

(assert (=> b!933715 (= e!606615 e!606614)))

(declare-fun b!933716 () Bool)

(assert (=> b!933716 (= e!606617 e!606615)))

(declare-fun res!423997 () Bool)

(assert (=> b!933716 (= res!423997 (not (is-EmptyLang!2550 r!15766)))))

(assert (=> b!933716 (=> (not res!423997) (not e!606615))))

(declare-fun b!933717 () Bool)

(assert (=> b!933717 (= e!606618 (matchRSpec!351 (regTwo!5613 r!15766) s!10566))))

(declare-fun b!933718 () Bool)

(declare-fun c!151842 () Bool)

(assert (=> b!933718 (= c!151842 (is-Union!2550 r!15766))))

(assert (=> b!933718 (= e!606614 e!606616)))

(assert (=> b!933719 (= e!606613 call!57771)))

(declare-fun b!933720 () Bool)

(assert (=> b!933720 (= e!606617 call!57770)))

(assert (= (and d!281653 c!151839) b!933720))

(assert (= (and d!281653 (not c!151839)) b!933716))

(assert (= (and b!933716 res!423997) b!933715))

(assert (= (and b!933715 c!151841) b!933710))

(assert (= (and b!933715 (not c!151841)) b!933718))

(assert (= (and b!933718 c!151842) b!933712))

(assert (= (and b!933718 (not c!151842)) b!933714))

(assert (= (and b!933712 (not res!423999)) b!933717))

(assert (= (and b!933714 c!151840) b!933713))

(assert (= (and b!933714 (not c!151840)) b!933711))

(assert (= (and b!933713 (not res!423998)) b!933719))

(assert (= (or b!933719 b!933711) bm!57765))

(assert (= (or b!933720 b!933713) bm!57766))

(declare-fun m!1154491 () Bool)

(assert (=> bm!57765 m!1154491))

(declare-fun m!1154493 () Bool)

(assert (=> b!933712 m!1154493))

(declare-fun m!1154495 () Bool)

(assert (=> bm!57766 m!1154495))

(declare-fun m!1154497 () Bool)

(assert (=> b!933717 m!1154497))

(assert (=> b!933492 d!281653))

(declare-fun b!933754 () Bool)

(declare-fun res!424020 () Bool)

(declare-fun e!606640 () Bool)

(assert (=> b!933754 (=> res!424020 e!606640)))

(declare-fun tail!1253 (List!9780) List!9780)

(assert (=> b!933754 (= res!424020 (not (isEmpty!6002 (tail!1253 s!10566))))))

(declare-fun b!933755 () Bool)

(declare-fun res!424023 () Bool)

(declare-fun e!606637 () Bool)

(assert (=> b!933755 (=> (not res!424023) (not e!606637))))

(assert (=> b!933755 (= res!424023 (isEmpty!6002 (tail!1253 s!10566)))))

(declare-fun b!933756 () Bool)

(declare-fun res!424021 () Bool)

(declare-fun e!606639 () Bool)

(assert (=> b!933756 (=> res!424021 e!606639)))

(assert (=> b!933756 (= res!424021 (not (is-ElementMatch!2550 r!15766)))))

(declare-fun e!606641 () Bool)

(assert (=> b!933756 (= e!606641 e!606639)))

(declare-fun b!933757 () Bool)

(declare-fun head!1691 (List!9780) C!5670)

(assert (=> b!933757 (= e!606640 (not (= (head!1691 s!10566) (c!151799 r!15766))))))

(declare-fun b!933758 () Bool)

(declare-fun e!606636 () Bool)

(declare-fun derivativeStep!538 (Regex!2550 C!5670) Regex!2550)

(assert (=> b!933758 (= e!606636 (matchR!1088 (derivativeStep!538 r!15766 (head!1691 s!10566)) (tail!1253 s!10566)))))

(declare-fun b!933759 () Bool)

(assert (=> b!933759 (= e!606637 (= (head!1691 s!10566) (c!151799 r!15766)))))

(declare-fun b!933760 () Bool)

(declare-fun e!606638 () Bool)

(assert (=> b!933760 (= e!606638 e!606640)))

(declare-fun res!424022 () Bool)

(assert (=> b!933760 (=> res!424022 e!606640)))

(declare-fun call!57774 () Bool)

(assert (=> b!933760 (= res!424022 call!57774)))

(declare-fun b!933761 () Bool)

(declare-fun res!424018 () Bool)

(assert (=> b!933761 (=> res!424018 e!606639)))

(assert (=> b!933761 (= res!424018 e!606637)))

(declare-fun res!424017 () Bool)

(assert (=> b!933761 (=> (not res!424017) (not e!606637))))

(declare-fun lt!340891 () Bool)

(assert (=> b!933761 (= res!424017 lt!340891)))

(declare-fun bm!57769 () Bool)

(assert (=> bm!57769 (= call!57774 (isEmpty!6002 s!10566))))

(declare-fun b!933762 () Bool)

(declare-fun res!424016 () Bool)

(assert (=> b!933762 (=> (not res!424016) (not e!606637))))

(assert (=> b!933762 (= res!424016 (not call!57774))))

(declare-fun b!933763 () Bool)

(assert (=> b!933763 (= e!606641 (not lt!340891))))

(declare-fun b!933764 () Bool)

(declare-fun e!606635 () Bool)

(assert (=> b!933764 (= e!606635 e!606641)))

(declare-fun c!151851 () Bool)

(assert (=> b!933764 (= c!151851 (is-EmptyLang!2550 r!15766))))

(declare-fun d!281657 () Bool)

(assert (=> d!281657 e!606635))

(declare-fun c!151853 () Bool)

(assert (=> d!281657 (= c!151853 (is-EmptyExpr!2550 r!15766))))

(assert (=> d!281657 (= lt!340891 e!606636)))

(declare-fun c!151852 () Bool)

(assert (=> d!281657 (= c!151852 (isEmpty!6002 s!10566))))

(assert (=> d!281657 (validRegex!1019 r!15766)))

(assert (=> d!281657 (= (matchR!1088 r!15766 s!10566) lt!340891)))

(declare-fun b!933753 () Bool)

(assert (=> b!933753 (= e!606636 (nullable!728 r!15766))))

(declare-fun b!933765 () Bool)

(assert (=> b!933765 (= e!606635 (= lt!340891 call!57774))))

(declare-fun b!933766 () Bool)

(assert (=> b!933766 (= e!606639 e!606638)))

(declare-fun res!424019 () Bool)

(assert (=> b!933766 (=> (not res!424019) (not e!606638))))

(assert (=> b!933766 (= res!424019 (not lt!340891))))

(assert (= (and d!281657 c!151852) b!933753))

(assert (= (and d!281657 (not c!151852)) b!933758))

(assert (= (and d!281657 c!151853) b!933765))

(assert (= (and d!281657 (not c!151853)) b!933764))

(assert (= (and b!933764 c!151851) b!933763))

(assert (= (and b!933764 (not c!151851)) b!933756))

(assert (= (and b!933756 (not res!424021)) b!933761))

(assert (= (and b!933761 res!424017) b!933762))

(assert (= (and b!933762 res!424016) b!933755))

(assert (= (and b!933755 res!424023) b!933759))

(assert (= (and b!933761 (not res!424018)) b!933766))

(assert (= (and b!933766 res!424019) b!933760))

(assert (= (and b!933760 (not res!424022)) b!933754))

(assert (= (and b!933754 (not res!424020)) b!933757))

(assert (= (or b!933765 b!933760 b!933762) bm!57769))

(declare-fun m!1154499 () Bool)

(assert (=> b!933759 m!1154499))

(declare-fun m!1154501 () Bool)

(assert (=> b!933755 m!1154501))

(assert (=> b!933755 m!1154501))

(declare-fun m!1154503 () Bool)

(assert (=> b!933755 m!1154503))

(assert (=> b!933754 m!1154501))

(assert (=> b!933754 m!1154501))

(assert (=> b!933754 m!1154503))

(assert (=> bm!57769 m!1154495))

(assert (=> b!933758 m!1154499))

(assert (=> b!933758 m!1154499))

(declare-fun m!1154505 () Bool)

(assert (=> b!933758 m!1154505))

(assert (=> b!933758 m!1154501))

(assert (=> b!933758 m!1154505))

(assert (=> b!933758 m!1154501))

(declare-fun m!1154507 () Bool)

(assert (=> b!933758 m!1154507))

(assert (=> b!933757 m!1154499))

(assert (=> d!281657 m!1154495))

(assert (=> d!281657 m!1154409))

(declare-fun m!1154509 () Bool)

(assert (=> b!933753 m!1154509))

(assert (=> b!933492 d!281657))

(declare-fun d!281659 () Bool)

(assert (=> d!281659 (= (matchR!1088 r!15766 s!10566) (matchRSpec!351 r!15766 s!10566))))

(declare-fun lt!340894 () Unit!14719)

(declare-fun choose!5743 (Regex!2550 List!9780) Unit!14719)

(assert (=> d!281659 (= lt!340894 (choose!5743 r!15766 s!10566))))

(assert (=> d!281659 (validRegex!1019 r!15766)))

(assert (=> d!281659 (= (mainMatchTheorem!351 r!15766 s!10566) lt!340894)))

(declare-fun bs!237776 () Bool)

(assert (= bs!237776 d!281659))

(assert (=> bs!237776 m!1154391))

(assert (=> bs!237776 m!1154389))

(declare-fun m!1154511 () Bool)

(assert (=> bs!237776 m!1154511))

(assert (=> bs!237776 m!1154409))

(assert (=> b!933492 d!281659))

(declare-fun c!151859 () Bool)

(declare-fun bm!57772 () Bool)

(declare-fun call!57779 () Bool)

(declare-fun c!151858 () Bool)

(assert (=> bm!57772 (= call!57779 (validRegex!1019 (ite c!151859 (reg!2879 r!15766) (ite c!151858 (regTwo!5613 r!15766) (regTwo!5612 r!15766)))))))

(declare-fun b!933791 () Bool)

(declare-fun e!606655 () Bool)

(assert (=> b!933791 (= e!606655 call!57779)))

(declare-fun b!933792 () Bool)

(declare-fun res!424043 () Bool)

(declare-fun e!606656 () Bool)

(assert (=> b!933792 (=> (not res!424043) (not e!606656))))

(declare-fun call!57778 () Bool)

(assert (=> b!933792 (= res!424043 call!57778)))

(declare-fun e!606659 () Bool)

(assert (=> b!933792 (= e!606659 e!606656)))

(declare-fun b!933793 () Bool)

(declare-fun e!606654 () Bool)

(declare-fun call!57777 () Bool)

(assert (=> b!933793 (= e!606654 call!57777)))

(declare-fun b!933794 () Bool)

(declare-fun e!606660 () Bool)

(assert (=> b!933794 (= e!606660 e!606654)))

(declare-fun res!424044 () Bool)

(assert (=> b!933794 (=> (not res!424044) (not e!606654))))

(assert (=> b!933794 (= res!424044 call!57778)))

(declare-fun b!933795 () Bool)

(declare-fun e!606657 () Bool)

(assert (=> b!933795 (= e!606657 e!606655)))

(declare-fun res!424040 () Bool)

(assert (=> b!933795 (= res!424040 (not (nullable!728 (reg!2879 r!15766))))))

(assert (=> b!933795 (=> (not res!424040) (not e!606655))))

(declare-fun bm!57773 () Bool)

(assert (=> bm!57773 (= call!57777 call!57779)))

(declare-fun d!281661 () Bool)

(declare-fun res!424042 () Bool)

(declare-fun e!606658 () Bool)

(assert (=> d!281661 (=> res!424042 e!606658)))

(assert (=> d!281661 (= res!424042 (is-ElementMatch!2550 r!15766))))

(assert (=> d!281661 (= (validRegex!1019 r!15766) e!606658)))

(declare-fun bm!57774 () Bool)

(assert (=> bm!57774 (= call!57778 (validRegex!1019 (ite c!151858 (regOne!5613 r!15766) (regOne!5612 r!15766))))))

(declare-fun b!933796 () Bool)

(assert (=> b!933796 (= e!606658 e!606657)))

(assert (=> b!933796 (= c!151859 (is-Star!2550 r!15766))))

(declare-fun b!933797 () Bool)

(declare-fun res!424041 () Bool)

(assert (=> b!933797 (=> res!424041 e!606660)))

(assert (=> b!933797 (= res!424041 (not (is-Concat!4383 r!15766)))))

(assert (=> b!933797 (= e!606659 e!606660)))

(declare-fun b!933798 () Bool)

(assert (=> b!933798 (= e!606656 call!57777)))

(declare-fun b!933799 () Bool)

(assert (=> b!933799 (= e!606657 e!606659)))

(assert (=> b!933799 (= c!151858 (is-Union!2550 r!15766))))

(assert (= (and d!281661 (not res!424042)) b!933796))

(assert (= (and b!933796 c!151859) b!933795))

(assert (= (and b!933796 (not c!151859)) b!933799))

(assert (= (and b!933795 res!424040) b!933791))

(assert (= (and b!933799 c!151858) b!933792))

(assert (= (and b!933799 (not c!151858)) b!933797))

(assert (= (and b!933792 res!424043) b!933798))

(assert (= (and b!933797 (not res!424041)) b!933794))

(assert (= (and b!933794 res!424044) b!933793))

(assert (= (or b!933798 b!933793) bm!57773))

(assert (= (or b!933792 b!933794) bm!57774))

(assert (= (or b!933791 bm!57773) bm!57772))

(declare-fun m!1154513 () Bool)

(assert (=> bm!57772 m!1154513))

(declare-fun m!1154515 () Bool)

(assert (=> b!933795 m!1154515))

(declare-fun m!1154517 () Bool)

(assert (=> bm!57774 m!1154517))

(assert (=> start!83460 d!281661))

(declare-fun b!933813 () Bool)

(declare-fun e!606663 () Bool)

(declare-fun tp!289763 () Bool)

(declare-fun tp!289767 () Bool)

(assert (=> b!933813 (= e!606663 (and tp!289763 tp!289767))))

(declare-fun b!933812 () Bool)

(declare-fun tp!289764 () Bool)

(assert (=> b!933812 (= e!606663 tp!289764)))

(assert (=> b!933490 (= tp!289734 e!606663)))

(declare-fun b!933811 () Bool)

(declare-fun tp!289766 () Bool)

(declare-fun tp!289765 () Bool)

(assert (=> b!933811 (= e!606663 (and tp!289766 tp!289765))))

(declare-fun b!933810 () Bool)

(assert (=> b!933810 (= e!606663 tp_is_empty!4743)))

(assert (= (and b!933490 (is-ElementMatch!2550 (reg!2879 r!15766))) b!933810))

(assert (= (and b!933490 (is-Concat!4383 (reg!2879 r!15766))) b!933811))

(assert (= (and b!933490 (is-Star!2550 (reg!2879 r!15766))) b!933812))

(assert (= (and b!933490 (is-Union!2550 (reg!2879 r!15766))) b!933813))

(declare-fun b!933818 () Bool)

(declare-fun e!606666 () Bool)

(declare-fun tp!289770 () Bool)

(assert (=> b!933818 (= e!606666 (and tp_is_empty!4743 tp!289770))))

(assert (=> b!933491 (= tp!289731 e!606666)))

(assert (= (and b!933491 (is-Cons!9764 (t!100826 s!10566))) b!933818))

(declare-fun b!933822 () Bool)

(declare-fun e!606667 () Bool)

(declare-fun tp!289771 () Bool)

(declare-fun tp!289775 () Bool)

(assert (=> b!933822 (= e!606667 (and tp!289771 tp!289775))))

(declare-fun b!933821 () Bool)

(declare-fun tp!289772 () Bool)

(assert (=> b!933821 (= e!606667 tp!289772)))

(assert (=> b!933494 (= tp!289729 e!606667)))

(declare-fun b!933820 () Bool)

(declare-fun tp!289774 () Bool)

(declare-fun tp!289773 () Bool)

(assert (=> b!933820 (= e!606667 (and tp!289774 tp!289773))))

(declare-fun b!933819 () Bool)

(assert (=> b!933819 (= e!606667 tp_is_empty!4743)))

(assert (= (and b!933494 (is-ElementMatch!2550 (regOne!5612 r!15766))) b!933819))

(assert (= (and b!933494 (is-Concat!4383 (regOne!5612 r!15766))) b!933820))

(assert (= (and b!933494 (is-Star!2550 (regOne!5612 r!15766))) b!933821))

(assert (= (and b!933494 (is-Union!2550 (regOne!5612 r!15766))) b!933822))

(declare-fun b!933826 () Bool)

(declare-fun e!606668 () Bool)

(declare-fun tp!289776 () Bool)

(declare-fun tp!289780 () Bool)

(assert (=> b!933826 (= e!606668 (and tp!289776 tp!289780))))

(declare-fun b!933825 () Bool)

(declare-fun tp!289777 () Bool)

(assert (=> b!933825 (= e!606668 tp!289777)))

(assert (=> b!933494 (= tp!289732 e!606668)))

(declare-fun b!933824 () Bool)

(declare-fun tp!289779 () Bool)

(declare-fun tp!289778 () Bool)

(assert (=> b!933824 (= e!606668 (and tp!289779 tp!289778))))

(declare-fun b!933823 () Bool)

(assert (=> b!933823 (= e!606668 tp_is_empty!4743)))

(assert (= (and b!933494 (is-ElementMatch!2550 (regTwo!5612 r!15766))) b!933823))

(assert (= (and b!933494 (is-Concat!4383 (regTwo!5612 r!15766))) b!933824))

(assert (= (and b!933494 (is-Star!2550 (regTwo!5612 r!15766))) b!933825))

(assert (= (and b!933494 (is-Union!2550 (regTwo!5612 r!15766))) b!933826))

(declare-fun b!933830 () Bool)

(declare-fun e!606669 () Bool)

(declare-fun tp!289781 () Bool)

(declare-fun tp!289785 () Bool)

(assert (=> b!933830 (= e!606669 (and tp!289781 tp!289785))))

(declare-fun b!933829 () Bool)

(declare-fun tp!289782 () Bool)

(assert (=> b!933829 (= e!606669 tp!289782)))

(assert (=> b!933495 (= tp!289733 e!606669)))

(declare-fun b!933828 () Bool)

(declare-fun tp!289784 () Bool)

(declare-fun tp!289783 () Bool)

(assert (=> b!933828 (= e!606669 (and tp!289784 tp!289783))))

(declare-fun b!933827 () Bool)

(assert (=> b!933827 (= e!606669 tp_is_empty!4743)))

(assert (= (and b!933495 (is-ElementMatch!2550 (regOne!5613 r!15766))) b!933827))

(assert (= (and b!933495 (is-Concat!4383 (regOne!5613 r!15766))) b!933828))

(assert (= (and b!933495 (is-Star!2550 (regOne!5613 r!15766))) b!933829))

(assert (= (and b!933495 (is-Union!2550 (regOne!5613 r!15766))) b!933830))

(declare-fun b!933834 () Bool)

(declare-fun e!606670 () Bool)

(declare-fun tp!289786 () Bool)

(declare-fun tp!289790 () Bool)

(assert (=> b!933834 (= e!606670 (and tp!289786 tp!289790))))

(declare-fun b!933833 () Bool)

(declare-fun tp!289787 () Bool)

(assert (=> b!933833 (= e!606670 tp!289787)))

(assert (=> b!933495 (= tp!289730 e!606670)))

(declare-fun b!933832 () Bool)

(declare-fun tp!289789 () Bool)

(declare-fun tp!289788 () Bool)

(assert (=> b!933832 (= e!606670 (and tp!289789 tp!289788))))

(declare-fun b!933831 () Bool)

(assert (=> b!933831 (= e!606670 tp_is_empty!4743)))

(assert (= (and b!933495 (is-ElementMatch!2550 (regTwo!5613 r!15766))) b!933831))

(assert (= (and b!933495 (is-Concat!4383 (regTwo!5613 r!15766))) b!933832))

(assert (= (and b!933495 (is-Star!2550 (regTwo!5613 r!15766))) b!933833))

(assert (= (and b!933495 (is-Union!2550 (regTwo!5613 r!15766))) b!933834))

(push 1)

(assert (not b!933795))

(assert (not b!933821))

(assert (not b!933830))

(assert (not bm!57772))

(assert (not bm!57769))

(assert (not b!933712))

(assert (not bm!57765))

(assert (not b!933834))

(assert (not d!281657))

(assert (not b!933822))

(assert (not b!933759))

(assert (not d!281659))

(assert (not d!281635))

(assert (not b!933832))

(assert (not b!933758))

(assert (not b!933833))

(assert (not d!281639))

(assert (not b!933590))

(assert (not b!933754))

(assert (not d!281643))

(assert (not b!933666))

(assert (not b!933717))

(assert (not bm!57766))

(assert (not b!933828))

(assert (not bm!57774))

(assert (not b!933813))

(assert (not b!933818))

(assert (not b!933753))

(assert (not b!933662))

(assert (not b!933812))

(assert (not b!933755))

(assert (not b!933665))

(assert (not b!933824))

(assert (not bm!57749))

(assert (not b!933664))

(assert (not b!933811))

(assert (not b!933825))

(assert (not b!933820))

(assert (not b!933829))

(assert (not b!933663))

(assert (not d!281651))

(assert (not b!933757))

(assert tp_is_empty!4743)

(assert (not b!933826))

(assert (not d!281647))

(assert (not b!933660))

(assert (not bm!57751))

(assert (not d!281637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

