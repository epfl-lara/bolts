; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80740 () Bool)

(assert start!80740)

(declare-fun b!896579 () Bool)

(assert (=> b!896579 true))

(assert (=> b!896579 true))

(assert (=> b!896579 true))

(declare-fun lambda!27806 () Int)

(declare-fun lambda!27805 () Int)

(assert (=> b!896579 (not (= lambda!27806 lambda!27805))))

(assert (=> b!896579 true))

(assert (=> b!896579 true))

(assert (=> b!896579 true))

(declare-fun res!407554 () Bool)

(declare-fun e!586809 () Bool)

(assert (=> start!80740 (=> (not res!407554) (not e!586809))))

(declare-datatypes ((C!5254 0))(
  ( (C!5255 (val!2875 Int)) )
))
(declare-datatypes ((Regex!2342 0))(
  ( (ElementMatch!2342 (c!145181 C!5254)) (Concat!4175 (regOne!5196 Regex!2342) (regTwo!5196 Regex!2342)) (EmptyExpr!2342) (Star!2342 (reg!2671 Regex!2342)) (EmptyLang!2342) (Union!2342 (regOne!5197 Regex!2342) (regTwo!5197 Regex!2342)) )
))
(declare-fun r!15766 () Regex!2342)

(declare-fun validRegex!811 (Regex!2342) Bool)

(assert (=> start!80740 (= res!407554 (validRegex!811 r!15766))))

(assert (=> start!80740 e!586809))

(declare-fun e!586808 () Bool)

(assert (=> start!80740 e!586808))

(declare-fun e!586812 () Bool)

(assert (=> start!80740 e!586812))

(declare-fun b!896572 () Bool)

(declare-fun tp!281730 () Bool)

(declare-fun tp!281734 () Bool)

(assert (=> b!896572 (= e!586808 (and tp!281730 tp!281734))))

(declare-fun b!896573 () Bool)

(declare-fun e!586810 () Bool)

(assert (=> b!896573 (= e!586809 (not e!586810))))

(declare-fun res!407553 () Bool)

(assert (=> b!896573 (=> res!407553 e!586810)))

(declare-fun lt!333483 () Bool)

(assert (=> b!896573 (= res!407553 (or (not lt!333483) (and (is-Concat!4175 r!15766) (is-EmptyExpr!2342 (regOne!5196 r!15766))) (and (is-Concat!4175 r!15766) (is-EmptyExpr!2342 (regTwo!5196 r!15766))) (is-Concat!4175 r!15766) (is-Union!2342 r!15766) (not (is-Star!2342 r!15766))))))

(declare-datatypes ((List!9572 0))(
  ( (Nil!9556) (Cons!9556 (h!14957 C!5254) (t!100618 List!9572)) )
))
(declare-fun s!10566 () List!9572)

(declare-fun matchRSpec!143 (Regex!2342 List!9572) Bool)

(assert (=> b!896573 (= lt!333483 (matchRSpec!143 r!15766 s!10566))))

(declare-fun matchR!880 (Regex!2342 List!9572) Bool)

(assert (=> b!896573 (= lt!333483 (matchR!880 r!15766 s!10566))))

(declare-datatypes ((Unit!14263 0))(
  ( (Unit!14264) )
))
(declare-fun lt!333480 () Unit!14263)

(declare-fun mainMatchTheorem!143 (Regex!2342 List!9572) Unit!14263)

(assert (=> b!896573 (= lt!333480 (mainMatchTheorem!143 r!15766 s!10566))))

(declare-fun b!896574 () Bool)

(declare-fun tp!281729 () Bool)

(declare-fun tp!281731 () Bool)

(assert (=> b!896574 (= e!586808 (and tp!281729 tp!281731))))

(declare-fun b!896575 () Bool)

(declare-fun tp_is_empty!4327 () Bool)

(assert (=> b!896575 (= e!586808 tp_is_empty!4327)))

(declare-fun b!896576 () Bool)

(declare-fun res!407552 () Bool)

(declare-fun e!586811 () Bool)

(assert (=> b!896576 (=> res!407552 e!586811)))

(declare-fun lt!333481 () Bool)

(assert (=> b!896576 (= res!407552 (not lt!333481))))

(declare-fun b!896577 () Bool)

(declare-fun tp!281732 () Bool)

(assert (=> b!896577 (= e!586812 (and tp_is_empty!4327 tp!281732))))

(declare-fun b!896578 () Bool)

(declare-fun tp!281733 () Bool)

(assert (=> b!896578 (= e!586808 tp!281733)))

(assert (=> b!896579 (= e!586810 e!586811)))

(declare-fun res!407551 () Bool)

(assert (=> b!896579 (=> res!407551 e!586811)))

(declare-fun isEmpty!5748 (List!9572) Bool)

(assert (=> b!896579 (= res!407551 (isEmpty!5748 s!10566))))

(declare-fun Exists!119 (Int) Bool)

(assert (=> b!896579 (= (Exists!119 lambda!27805) (Exists!119 lambda!27806))))

(declare-fun lt!333482 () Unit!14263)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!11 (Regex!2342 List!9572) Unit!14263)

(assert (=> b!896579 (= lt!333482 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!11 (reg!2671 r!15766) s!10566))))

(assert (=> b!896579 (= lt!333481 (Exists!119 lambda!27805))))

(declare-fun lt!333478 () Regex!2342)

(declare-datatypes ((tuple2!10686 0))(
  ( (tuple2!10687 (_1!6169 List!9572) (_2!6169 List!9572)) )
))
(declare-datatypes ((Option!1985 0))(
  ( (None!1984) (Some!1984 (v!19401 tuple2!10686)) )
))
(declare-fun isDefined!1627 (Option!1985) Bool)

(declare-fun findConcatSeparation!91 (Regex!2342 Regex!2342 List!9572 List!9572 List!9572) Option!1985)

(assert (=> b!896579 (= lt!333481 (isDefined!1627 (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 Nil!9556 s!10566 s!10566)))))

(declare-fun lt!333479 () Unit!14263)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!91 (Regex!2342 Regex!2342 List!9572) Unit!14263)

(assert (=> b!896579 (= lt!333479 (lemmaFindConcatSeparationEquivalentToExists!91 (reg!2671 r!15766) lt!333478 s!10566))))

(assert (=> b!896579 (= lt!333478 (Star!2342 (reg!2671 r!15766)))))

(declare-fun b!896580 () Bool)

(assert (=> b!896580 (= e!586811 (validRegex!811 (reg!2671 r!15766)))))

(assert (= (and start!80740 res!407554) b!896573))

(assert (= (and b!896573 (not res!407553)) b!896579))

(assert (= (and b!896579 (not res!407551)) b!896576))

(assert (= (and b!896576 (not res!407552)) b!896580))

(assert (= (and start!80740 (is-ElementMatch!2342 r!15766)) b!896575))

(assert (= (and start!80740 (is-Concat!4175 r!15766)) b!896572))

(assert (= (and start!80740 (is-Star!2342 r!15766)) b!896578))

(assert (= (and start!80740 (is-Union!2342 r!15766)) b!896574))

(assert (= (and start!80740 (is-Cons!9556 s!10566)) b!896577))

(declare-fun m!1136269 () Bool)

(assert (=> start!80740 m!1136269))

(declare-fun m!1136271 () Bool)

(assert (=> b!896573 m!1136271))

(declare-fun m!1136273 () Bool)

(assert (=> b!896573 m!1136273))

(declare-fun m!1136275 () Bool)

(assert (=> b!896573 m!1136275))

(declare-fun m!1136277 () Bool)

(assert (=> b!896579 m!1136277))

(declare-fun m!1136279 () Bool)

(assert (=> b!896579 m!1136279))

(assert (=> b!896579 m!1136277))

(declare-fun m!1136281 () Bool)

(assert (=> b!896579 m!1136281))

(declare-fun m!1136283 () Bool)

(assert (=> b!896579 m!1136283))

(declare-fun m!1136285 () Bool)

(assert (=> b!896579 m!1136285))

(assert (=> b!896579 m!1136279))

(declare-fun m!1136287 () Bool)

(assert (=> b!896579 m!1136287))

(declare-fun m!1136289 () Bool)

(assert (=> b!896579 m!1136289))

(declare-fun m!1136291 () Bool)

(assert (=> b!896580 m!1136291))

(push 1)

(assert (not b!896580))

(assert (not b!896578))

(assert (not b!896579))

(assert (not b!896574))

(assert (not b!896573))

(assert (not start!80740))

(assert (not b!896572))

(assert tp_is_empty!4327)

(assert (not b!896577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!896648 () Bool)

(declare-fun e!586849 () Bool)

(declare-fun call!53300 () Bool)

(assert (=> b!896648 (= e!586849 call!53300)))

(declare-fun b!896649 () Bool)

(declare-fun e!586854 () Bool)

(declare-fun call!53302 () Bool)

(assert (=> b!896649 (= e!586854 call!53302)))

(declare-fun b!896650 () Bool)

(declare-fun e!586850 () Bool)

(assert (=> b!896650 (= e!586850 call!53300)))

(declare-fun bm!53295 () Bool)

(declare-fun call!53301 () Bool)

(declare-fun c!145188 () Bool)

(assert (=> bm!53295 (= call!53301 (validRegex!811 (ite c!145188 (regOne!5197 r!15766) (regOne!5196 r!15766))))))

(declare-fun b!896651 () Bool)

(declare-fun e!586848 () Bool)

(assert (=> b!896651 (= e!586848 e!586850)))

(declare-fun res!407591 () Bool)

(assert (=> b!896651 (=> (not res!407591) (not e!586850))))

(assert (=> b!896651 (= res!407591 call!53301)))

(declare-fun c!145187 () Bool)

(declare-fun bm!53296 () Bool)

(assert (=> bm!53296 (= call!53302 (validRegex!811 (ite c!145187 (reg!2671 r!15766) (ite c!145188 (regTwo!5197 r!15766) (regTwo!5196 r!15766)))))))

(declare-fun b!896652 () Bool)

(declare-fun e!586853 () Bool)

(assert (=> b!896652 (= e!586853 e!586854)))

(declare-fun res!407594 () Bool)

(declare-fun nullable!620 (Regex!2342) Bool)

(assert (=> b!896652 (= res!407594 (not (nullable!620 (reg!2671 r!15766))))))

(assert (=> b!896652 (=> (not res!407594) (not e!586854))))

(declare-fun d!277855 () Bool)

(declare-fun res!407595 () Bool)

(declare-fun e!586852 () Bool)

(assert (=> d!277855 (=> res!407595 e!586852)))

(assert (=> d!277855 (= res!407595 (is-ElementMatch!2342 r!15766))))

(assert (=> d!277855 (= (validRegex!811 r!15766) e!586852)))

(declare-fun b!896653 () Bool)

(declare-fun res!407593 () Bool)

(assert (=> b!896653 (=> res!407593 e!586848)))

(assert (=> b!896653 (= res!407593 (not (is-Concat!4175 r!15766)))))

(declare-fun e!586851 () Bool)

(assert (=> b!896653 (= e!586851 e!586848)))

(declare-fun bm!53297 () Bool)

(assert (=> bm!53297 (= call!53300 call!53302)))

(declare-fun b!896654 () Bool)

(declare-fun res!407592 () Bool)

(assert (=> b!896654 (=> (not res!407592) (not e!586849))))

(assert (=> b!896654 (= res!407592 call!53301)))

(assert (=> b!896654 (= e!586851 e!586849)))

(declare-fun b!896655 () Bool)

(assert (=> b!896655 (= e!586852 e!586853)))

(assert (=> b!896655 (= c!145187 (is-Star!2342 r!15766))))

(declare-fun b!896656 () Bool)

(assert (=> b!896656 (= e!586853 e!586851)))

(assert (=> b!896656 (= c!145188 (is-Union!2342 r!15766))))

(assert (= (and d!277855 (not res!407595)) b!896655))

(assert (= (and b!896655 c!145187) b!896652))

(assert (= (and b!896655 (not c!145187)) b!896656))

(assert (= (and b!896652 res!407594) b!896649))

(assert (= (and b!896656 c!145188) b!896654))

(assert (= (and b!896656 (not c!145188)) b!896653))

(assert (= (and b!896654 res!407592) b!896648))

(assert (= (and b!896653 (not res!407593)) b!896651))

(assert (= (and b!896651 res!407591) b!896650))

(assert (= (or b!896648 b!896650) bm!53297))

(assert (= (or b!896654 b!896651) bm!53295))

(assert (= (or b!896649 bm!53297) bm!53296))

(declare-fun m!1136317 () Bool)

(assert (=> bm!53295 m!1136317))

(declare-fun m!1136319 () Bool)

(assert (=> bm!53296 m!1136319))

(declare-fun m!1136321 () Bool)

(assert (=> b!896652 m!1136321))

(assert (=> start!80740 d!277855))

(declare-fun bs!234999 () Bool)

(declare-fun b!896692 () Bool)

(assert (= bs!234999 (and b!896692 b!896579)))

(declare-fun lambda!27819 () Int)

(assert (=> bs!234999 (not (= lambda!27819 lambda!27805))))

(assert (=> bs!234999 (= (= r!15766 lt!333478) (= lambda!27819 lambda!27806))))

(assert (=> b!896692 true))

(assert (=> b!896692 true))

(declare-fun bs!235000 () Bool)

(declare-fun b!896698 () Bool)

(assert (= bs!235000 (and b!896698 b!896579)))

(declare-fun lambda!27820 () Int)

(assert (=> bs!235000 (not (= lambda!27820 lambda!27805))))

(assert (=> bs!235000 (not (= lambda!27820 lambda!27806))))

(declare-fun bs!235001 () Bool)

(assert (= bs!235001 (and b!896698 b!896692)))

(assert (=> bs!235001 (not (= lambda!27820 lambda!27819))))

(assert (=> b!896698 true))

(assert (=> b!896698 true))

(declare-fun b!896689 () Bool)

(declare-fun e!586879 () Bool)

(assert (=> b!896689 (= e!586879 (matchRSpec!143 (regTwo!5197 r!15766) s!10566))))

(declare-fun b!896690 () Bool)

(declare-fun e!586874 () Bool)

(assert (=> b!896690 (= e!586874 e!586879)))

(declare-fun res!407613 () Bool)

(assert (=> b!896690 (= res!407613 (matchRSpec!143 (regOne!5197 r!15766) s!10566))))

(assert (=> b!896690 (=> res!407613 e!586879)))

(declare-fun b!896691 () Bool)

(declare-fun res!407614 () Bool)

(declare-fun e!586875 () Bool)

(assert (=> b!896691 (=> res!407614 e!586875)))

(declare-fun call!53307 () Bool)

(assert (=> b!896691 (= res!407614 call!53307)))

(declare-fun e!586877 () Bool)

(assert (=> b!896691 (= e!586877 e!586875)))

(declare-fun call!53308 () Bool)

(assert (=> b!896692 (= e!586875 call!53308)))

(declare-fun b!896693 () Bool)

(declare-fun c!145200 () Bool)

(assert (=> b!896693 (= c!145200 (is-Union!2342 r!15766))))

(declare-fun e!586878 () Bool)

(assert (=> b!896693 (= e!586878 e!586874)))

(declare-fun b!896694 () Bool)

(assert (=> b!896694 (= e!586874 e!586877)))

(declare-fun c!145198 () Bool)

(assert (=> b!896694 (= c!145198 (is-Star!2342 r!15766))))

(declare-fun bm!53302 () Bool)

(assert (=> bm!53302 (= call!53307 (isEmpty!5748 s!10566))))

(declare-fun b!896695 () Bool)

(declare-fun e!586876 () Bool)

(assert (=> b!896695 (= e!586876 call!53307)))

(declare-fun b!896696 () Bool)

(assert (=> b!896696 (= e!586878 (= s!10566 (Cons!9556 (c!145181 r!15766) Nil!9556)))))

(declare-fun b!896697 () Bool)

(declare-fun e!586873 () Bool)

(assert (=> b!896697 (= e!586876 e!586873)))

(declare-fun res!407612 () Bool)

(assert (=> b!896697 (= res!407612 (not (is-EmptyLang!2342 r!15766)))))

(assert (=> b!896697 (=> (not res!407612) (not e!586873))))

(assert (=> b!896698 (= e!586877 call!53308)))

(declare-fun d!277857 () Bool)

(declare-fun c!145197 () Bool)

(assert (=> d!277857 (= c!145197 (is-EmptyExpr!2342 r!15766))))

(assert (=> d!277857 (= (matchRSpec!143 r!15766 s!10566) e!586876)))

(declare-fun b!896699 () Bool)

(declare-fun c!145199 () Bool)

(assert (=> b!896699 (= c!145199 (is-ElementMatch!2342 r!15766))))

(assert (=> b!896699 (= e!586873 e!586878)))

(declare-fun bm!53303 () Bool)

(assert (=> bm!53303 (= call!53308 (Exists!119 (ite c!145198 lambda!27819 lambda!27820)))))

(assert (= (and d!277857 c!145197) b!896695))

(assert (= (and d!277857 (not c!145197)) b!896697))

(assert (= (and b!896697 res!407612) b!896699))

(assert (= (and b!896699 c!145199) b!896696))

(assert (= (and b!896699 (not c!145199)) b!896693))

(assert (= (and b!896693 c!145200) b!896690))

(assert (= (and b!896693 (not c!145200)) b!896694))

(assert (= (and b!896690 (not res!407613)) b!896689))

(assert (= (and b!896694 c!145198) b!896691))

(assert (= (and b!896694 (not c!145198)) b!896698))

(assert (= (and b!896691 (not res!407614)) b!896692))

(assert (= (or b!896692 b!896698) bm!53303))

(assert (= (or b!896695 b!896691) bm!53302))

(declare-fun m!1136323 () Bool)

(assert (=> b!896689 m!1136323))

(declare-fun m!1136325 () Bool)

(assert (=> b!896690 m!1136325))

(assert (=> bm!53302 m!1136285))

(declare-fun m!1136327 () Bool)

(assert (=> bm!53303 m!1136327))

(assert (=> b!896573 d!277857))

(declare-fun b!896755 () Bool)

(declare-fun e!586915 () Bool)

(declare-fun head!1585 (List!9572) C!5254)

(assert (=> b!896755 (= e!586915 (= (head!1585 s!10566) (c!145181 r!15766)))))

(declare-fun b!896756 () Bool)

(declare-fun e!586921 () Bool)

(assert (=> b!896756 (= e!586921 (nullable!620 r!15766))))

(declare-fun b!896757 () Bool)

(declare-fun e!586916 () Bool)

(assert (=> b!896757 (= e!586916 (not (= (head!1585 s!10566) (c!145181 r!15766))))))

(declare-fun b!896758 () Bool)

(declare-fun e!586917 () Bool)

(declare-fun e!586919 () Bool)

(assert (=> b!896758 (= e!586917 e!586919)))

(declare-fun res!407651 () Bool)

(assert (=> b!896758 (=> (not res!407651) (not e!586919))))

(declare-fun lt!333504 () Bool)

(assert (=> b!896758 (= res!407651 (not lt!333504))))

(declare-fun d!277861 () Bool)

(declare-fun e!586920 () Bool)

(assert (=> d!277861 e!586920))

(declare-fun c!145215 () Bool)

(assert (=> d!277861 (= c!145215 (is-EmptyExpr!2342 r!15766))))

(assert (=> d!277861 (= lt!333504 e!586921)))

(declare-fun c!145213 () Bool)

(assert (=> d!277861 (= c!145213 (isEmpty!5748 s!10566))))

(assert (=> d!277861 (validRegex!811 r!15766)))

(assert (=> d!277861 (= (matchR!880 r!15766 s!10566) lt!333504)))

(declare-fun b!896759 () Bool)

(declare-fun res!407646 () Bool)

(assert (=> b!896759 (=> (not res!407646) (not e!586915))))

(declare-fun tail!1147 (List!9572) List!9572)

(assert (=> b!896759 (= res!407646 (isEmpty!5748 (tail!1147 s!10566)))))

(declare-fun b!896760 () Bool)

(declare-fun call!53320 () Bool)

(assert (=> b!896760 (= e!586920 (= lt!333504 call!53320))))

(declare-fun b!896761 () Bool)

(declare-fun res!407650 () Bool)

(assert (=> b!896761 (=> (not res!407650) (not e!586915))))

(assert (=> b!896761 (= res!407650 (not call!53320))))

(declare-fun b!896762 () Bool)

(declare-fun e!586918 () Bool)

(assert (=> b!896762 (= e!586920 e!586918)))

(declare-fun c!145214 () Bool)

(assert (=> b!896762 (= c!145214 (is-EmptyLang!2342 r!15766))))

(declare-fun b!896763 () Bool)

(declare-fun res!407647 () Bool)

(assert (=> b!896763 (=> res!407647 e!586916)))

(assert (=> b!896763 (= res!407647 (not (isEmpty!5748 (tail!1147 s!10566))))))

(declare-fun b!896764 () Bool)

(assert (=> b!896764 (= e!586918 (not lt!333504))))

(declare-fun b!896765 () Bool)

(declare-fun derivativeStep!432 (Regex!2342 C!5254) Regex!2342)

(assert (=> b!896765 (= e!586921 (matchR!880 (derivativeStep!432 r!15766 (head!1585 s!10566)) (tail!1147 s!10566)))))

(declare-fun bm!53315 () Bool)

(assert (=> bm!53315 (= call!53320 (isEmpty!5748 s!10566))))

(declare-fun b!896766 () Bool)

(declare-fun res!407648 () Bool)

(assert (=> b!896766 (=> res!407648 e!586917)))

(assert (=> b!896766 (= res!407648 (not (is-ElementMatch!2342 r!15766)))))

(assert (=> b!896766 (= e!586918 e!586917)))

(declare-fun b!896767 () Bool)

(declare-fun res!407652 () Bool)

(assert (=> b!896767 (=> res!407652 e!586917)))

(assert (=> b!896767 (= res!407652 e!586915)))

(declare-fun res!407649 () Bool)

(assert (=> b!896767 (=> (not res!407649) (not e!586915))))

(assert (=> b!896767 (= res!407649 lt!333504)))

(declare-fun b!896768 () Bool)

(assert (=> b!896768 (= e!586919 e!586916)))

(declare-fun res!407653 () Bool)

(assert (=> b!896768 (=> res!407653 e!586916)))

(assert (=> b!896768 (= res!407653 call!53320)))

(assert (= (and d!277861 c!145213) b!896756))

(assert (= (and d!277861 (not c!145213)) b!896765))

(assert (= (and d!277861 c!145215) b!896760))

(assert (= (and d!277861 (not c!145215)) b!896762))

(assert (= (and b!896762 c!145214) b!896764))

(assert (= (and b!896762 (not c!145214)) b!896766))

(assert (= (and b!896766 (not res!407648)) b!896767))

(assert (= (and b!896767 res!407649) b!896761))

(assert (= (and b!896761 res!407650) b!896759))

(assert (= (and b!896759 res!407646) b!896755))

(assert (= (and b!896767 (not res!407652)) b!896758))

(assert (= (and b!896758 res!407651) b!896768))

(assert (= (and b!896768 (not res!407653)) b!896763))

(assert (= (and b!896763 (not res!407647)) b!896757))

(assert (= (or b!896760 b!896761 b!896768) bm!53315))

(declare-fun m!1136335 () Bool)

(assert (=> b!896755 m!1136335))

(declare-fun m!1136337 () Bool)

(assert (=> b!896756 m!1136337))

(assert (=> bm!53315 m!1136285))

(declare-fun m!1136339 () Bool)

(assert (=> b!896759 m!1136339))

(assert (=> b!896759 m!1136339))

(declare-fun m!1136341 () Bool)

(assert (=> b!896759 m!1136341))

(assert (=> b!896763 m!1136339))

(assert (=> b!896763 m!1136339))

(assert (=> b!896763 m!1136341))

(assert (=> d!277861 m!1136285))

(assert (=> d!277861 m!1136269))

(assert (=> b!896765 m!1136335))

(assert (=> b!896765 m!1136335))

(declare-fun m!1136343 () Bool)

(assert (=> b!896765 m!1136343))

(assert (=> b!896765 m!1136339))

(assert (=> b!896765 m!1136343))

(assert (=> b!896765 m!1136339))

(declare-fun m!1136345 () Bool)

(assert (=> b!896765 m!1136345))

(assert (=> b!896757 m!1136335))

(assert (=> b!896573 d!277861))

(declare-fun d!277865 () Bool)

(assert (=> d!277865 (= (matchR!880 r!15766 s!10566) (matchRSpec!143 r!15766 s!10566))))

(declare-fun lt!333507 () Unit!14263)

(declare-fun choose!5387 (Regex!2342 List!9572) Unit!14263)

(assert (=> d!277865 (= lt!333507 (choose!5387 r!15766 s!10566))))

(assert (=> d!277865 (validRegex!811 r!15766)))

(assert (=> d!277865 (= (mainMatchTheorem!143 r!15766 s!10566) lt!333507)))

(declare-fun bs!235002 () Bool)

(assert (= bs!235002 d!277865))

(assert (=> bs!235002 m!1136273))

(assert (=> bs!235002 m!1136271))

(declare-fun m!1136347 () Bool)

(assert (=> bs!235002 m!1136347))

(assert (=> bs!235002 m!1136269))

(assert (=> b!896573 d!277865))

(declare-fun d!277867 () Bool)

(declare-fun choose!5388 (Int) Bool)

(assert (=> d!277867 (= (Exists!119 lambda!27805) (choose!5388 lambda!27805))))

(declare-fun bs!235003 () Bool)

(assert (= bs!235003 d!277867))

(declare-fun m!1136349 () Bool)

(assert (=> bs!235003 m!1136349))

(assert (=> b!896579 d!277867))

(declare-fun d!277869 () Bool)

(assert (=> d!277869 (= (Exists!119 lambda!27806) (choose!5388 lambda!27806))))

(declare-fun bs!235004 () Bool)

(assert (= bs!235004 d!277869))

(declare-fun m!1136351 () Bool)

(assert (=> bs!235004 m!1136351))

(assert (=> b!896579 d!277869))

(declare-fun d!277871 () Bool)

(assert (=> d!277871 (= (isEmpty!5748 s!10566) (is-Nil!9556 s!10566))))

(assert (=> b!896579 d!277871))

(declare-fun b!896815 () Bool)

(declare-fun e!586948 () Option!1985)

(assert (=> b!896815 (= e!586948 None!1984)))

(declare-fun b!896817 () Bool)

(declare-fun res!407680 () Bool)

(declare-fun e!586950 () Bool)

(assert (=> b!896817 (=> (not res!407680) (not e!586950))))

(declare-fun lt!333516 () Option!1985)

(declare-fun get!3015 (Option!1985) tuple2!10686)

(assert (=> b!896817 (= res!407680 (matchR!880 lt!333478 (_2!6169 (get!3015 lt!333516))))))

(declare-fun b!896818 () Bool)

(declare-fun e!586952 () Option!1985)

(assert (=> b!896818 (= e!586952 (Some!1984 (tuple2!10687 Nil!9556 s!10566)))))

(declare-fun b!896819 () Bool)

(declare-fun e!586949 () Bool)

(assert (=> b!896819 (= e!586949 (not (isDefined!1627 lt!333516)))))

(declare-fun b!896820 () Bool)

(assert (=> b!896820 (= e!586952 e!586948)))

(declare-fun c!145229 () Bool)

(assert (=> b!896820 (= c!145229 (is-Nil!9556 s!10566))))

(declare-fun b!896821 () Bool)

(declare-fun e!586951 () Bool)

(assert (=> b!896821 (= e!586951 (matchR!880 lt!333478 s!10566))))

(declare-fun d!277873 () Bool)

(assert (=> d!277873 e!586949))

(declare-fun res!407679 () Bool)

(assert (=> d!277873 (=> res!407679 e!586949)))

(assert (=> d!277873 (= res!407679 e!586950)))

(declare-fun res!407676 () Bool)

(assert (=> d!277873 (=> (not res!407676) (not e!586950))))

(assert (=> d!277873 (= res!407676 (isDefined!1627 lt!333516))))

(assert (=> d!277873 (= lt!333516 e!586952)))

(declare-fun c!145228 () Bool)

(assert (=> d!277873 (= c!145228 e!586951)))

(declare-fun res!407677 () Bool)

(assert (=> d!277873 (=> (not res!407677) (not e!586951))))

(assert (=> d!277873 (= res!407677 (matchR!880 (reg!2671 r!15766) Nil!9556))))

(assert (=> d!277873 (validRegex!811 (reg!2671 r!15766))))

(assert (=> d!277873 (= (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 Nil!9556 s!10566 s!10566) lt!333516)))

(declare-fun b!896816 () Bool)

(declare-fun lt!333515 () Unit!14263)

(declare-fun lt!333514 () Unit!14263)

(assert (=> b!896816 (= lt!333515 lt!333514)))

(declare-fun ++!2493 (List!9572 List!9572) List!9572)

(assert (=> b!896816 (= (++!2493 (++!2493 Nil!9556 (Cons!9556 (h!14957 s!10566) Nil!9556)) (t!100618 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!119 (List!9572 C!5254 List!9572 List!9572) Unit!14263)

(assert (=> b!896816 (= lt!333514 (lemmaMoveElementToOtherListKeepsConcatEq!119 Nil!9556 (h!14957 s!10566) (t!100618 s!10566) s!10566))))

(assert (=> b!896816 (= e!586948 (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 (++!2493 Nil!9556 (Cons!9556 (h!14957 s!10566) Nil!9556)) (t!100618 s!10566) s!10566))))

(declare-fun b!896822 () Bool)

(assert (=> b!896822 (= e!586950 (= (++!2493 (_1!6169 (get!3015 lt!333516)) (_2!6169 (get!3015 lt!333516))) s!10566))))

(declare-fun b!896823 () Bool)

(declare-fun res!407678 () Bool)

(assert (=> b!896823 (=> (not res!407678) (not e!586950))))

(assert (=> b!896823 (= res!407678 (matchR!880 (reg!2671 r!15766) (_1!6169 (get!3015 lt!333516))))))

(assert (= (and d!277873 res!407677) b!896821))

(assert (= (and d!277873 c!145228) b!896818))

(assert (= (and d!277873 (not c!145228)) b!896820))

(assert (= (and b!896820 c!145229) b!896815))

(assert (= (and b!896820 (not c!145229)) b!896816))

(assert (= (and d!277873 res!407676) b!896823))

(assert (= (and b!896823 res!407678) b!896817))

(assert (= (and b!896817 res!407680) b!896822))

(assert (= (and d!277873 (not res!407679)) b!896819))

(declare-fun m!1136353 () Bool)

(assert (=> b!896822 m!1136353))

(declare-fun m!1136355 () Bool)

(assert (=> b!896822 m!1136355))

(declare-fun m!1136357 () Bool)

(assert (=> b!896816 m!1136357))

(assert (=> b!896816 m!1136357))

(declare-fun m!1136359 () Bool)

(assert (=> b!896816 m!1136359))

(declare-fun m!1136361 () Bool)

(assert (=> b!896816 m!1136361))

(assert (=> b!896816 m!1136357))

(declare-fun m!1136363 () Bool)

(assert (=> b!896816 m!1136363))

(assert (=> b!896823 m!1136353))

(declare-fun m!1136365 () Bool)

(assert (=> b!896823 m!1136365))

(declare-fun m!1136367 () Bool)

(assert (=> b!896821 m!1136367))

(declare-fun m!1136369 () Bool)

(assert (=> d!277873 m!1136369))

(declare-fun m!1136371 () Bool)

(assert (=> d!277873 m!1136371))

(assert (=> d!277873 m!1136291))

(assert (=> b!896819 m!1136369))

(assert (=> b!896817 m!1136353))

(declare-fun m!1136373 () Bool)

(assert (=> b!896817 m!1136373))

(assert (=> b!896579 d!277873))

(declare-fun d!277875 () Bool)

(declare-fun isEmpty!5750 (Option!1985) Bool)

(assert (=> d!277875 (= (isDefined!1627 (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 Nil!9556 s!10566 s!10566)) (not (isEmpty!5750 (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 Nil!9556 s!10566 s!10566))))))

(declare-fun bs!235005 () Bool)

(assert (= bs!235005 d!277875))

(assert (=> bs!235005 m!1136279))

(declare-fun m!1136375 () Bool)

(assert (=> bs!235005 m!1136375))

(assert (=> b!896579 d!277875))

(declare-fun bs!235006 () Bool)

(declare-fun d!277877 () Bool)

(assert (= bs!235006 (and d!277877 b!896579)))

(declare-fun lambda!27827 () Int)

(assert (=> bs!235006 (= lambda!27827 lambda!27805)))

(assert (=> bs!235006 (not (= lambda!27827 lambda!27806))))

(declare-fun bs!235007 () Bool)

(assert (= bs!235007 (and d!277877 b!896692)))

(assert (=> bs!235007 (not (= lambda!27827 lambda!27819))))

(declare-fun bs!235008 () Bool)

(assert (= bs!235008 (and d!277877 b!896698)))

(assert (=> bs!235008 (not (= lambda!27827 lambda!27820))))

(assert (=> d!277877 true))

(assert (=> d!277877 true))

(assert (=> d!277877 true))

(assert (=> d!277877 (= (isDefined!1627 (findConcatSeparation!91 (reg!2671 r!15766) lt!333478 Nil!9556 s!10566 s!10566)) (Exists!119 lambda!27827))))

(declare-fun lt!333519 () Unit!14263)

(declare-fun choose!5389 (Regex!2342 Regex!2342 List!9572) Unit!14263)

(assert (=> d!277877 (= lt!333519 (choose!5389 (reg!2671 r!15766) lt!333478 s!10566))))

(assert (=> d!277877 (validRegex!811 (reg!2671 r!15766))))

(assert (=> d!277877 (= (lemmaFindConcatSeparationEquivalentToExists!91 (reg!2671 r!15766) lt!333478 s!10566) lt!333519)))

(declare-fun bs!235009 () Bool)

(assert (= bs!235009 d!277877))

(assert (=> bs!235009 m!1136291))

(declare-fun m!1136377 () Bool)

(assert (=> bs!235009 m!1136377))

(assert (=> bs!235009 m!1136279))

(assert (=> bs!235009 m!1136287))

(declare-fun m!1136379 () Bool)

(assert (=> bs!235009 m!1136379))

(assert (=> bs!235009 m!1136279))

(assert (=> b!896579 d!277877))

(declare-fun bs!235013 () Bool)

(declare-fun d!277879 () Bool)

(assert (= bs!235013 (and d!277879 b!896579)))

(declare-fun lambda!27834 () Int)

(assert (=> bs!235013 (not (= lambda!27834 lambda!27806))))

(assert (=> bs!235013 (= (= (Star!2342 (reg!2671 r!15766)) lt!333478) (= lambda!27834 lambda!27805))))

(declare-fun bs!235014 () Bool)

(assert (= bs!235014 (and d!277879 b!896698)))

(assert (=> bs!235014 (not (= lambda!27834 lambda!27820))))

(declare-fun bs!235015 () Bool)

(assert (= bs!235015 (and d!277879 b!896692)))

(assert (=> bs!235015 (not (= lambda!27834 lambda!27819))))

(declare-fun bs!235016 () Bool)

(assert (= bs!235016 (and d!277879 d!277877)))

(assert (=> bs!235016 (= (= (Star!2342 (reg!2671 r!15766)) lt!333478) (= lambda!27834 lambda!27827))))

(assert (=> d!277879 true))

(assert (=> d!277879 true))

(declare-fun lambda!27835 () Int)

(assert (=> bs!235013 (= (= (Star!2342 (reg!2671 r!15766)) lt!333478) (= lambda!27835 lambda!27806))))

(assert (=> bs!235013 (not (= lambda!27835 lambda!27805))))

(declare-fun bs!235017 () Bool)

(assert (= bs!235017 d!277879))

(assert (=> bs!235017 (not (= lambda!27835 lambda!27834))))

(assert (=> bs!235014 (not (= lambda!27835 lambda!27820))))

(assert (=> bs!235015 (= (= (Star!2342 (reg!2671 r!15766)) r!15766) (= lambda!27835 lambda!27819))))

(assert (=> bs!235016 (not (= lambda!27835 lambda!27827))))

(assert (=> d!277879 true))

(assert (=> d!277879 true))

(assert (=> d!277879 (= (Exists!119 lambda!27834) (Exists!119 lambda!27835))))

(declare-fun lt!333522 () Unit!14263)

(declare-fun choose!5390 (Regex!2342 List!9572) Unit!14263)

(assert (=> d!277879 (= lt!333522 (choose!5390 (reg!2671 r!15766) s!10566))))

(assert (=> d!277879 (validRegex!811 (reg!2671 r!15766))))

(assert (=> d!277879 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!11 (reg!2671 r!15766) s!10566) lt!333522)))

(declare-fun m!1136387 () Bool)

(assert (=> bs!235017 m!1136387))

(declare-fun m!1136389 () Bool)

(assert (=> bs!235017 m!1136389))

(declare-fun m!1136391 () Bool)

(assert (=> bs!235017 m!1136391))

(assert (=> bs!235017 m!1136291))

(assert (=> b!896579 d!277879))

(declare-fun b!896853 () Bool)

(declare-fun e!586969 () Bool)

(declare-fun call!53327 () Bool)

(assert (=> b!896853 (= e!586969 call!53327)))

(declare-fun b!896854 () Bool)

(declare-fun e!586974 () Bool)

(declare-fun call!53329 () Bool)

(assert (=> b!896854 (= e!586974 call!53329)))

(declare-fun b!896855 () Bool)

(declare-fun e!586970 () Bool)

(assert (=> b!896855 (= e!586970 call!53327)))

(declare-fun bm!53322 () Bool)

(declare-fun call!53328 () Bool)

(declare-fun c!145235 () Bool)

(assert (=> bm!53322 (= call!53328 (validRegex!811 (ite c!145235 (regOne!5197 (reg!2671 r!15766)) (regOne!5196 (reg!2671 r!15766)))))))

(declare-fun b!896856 () Bool)

(declare-fun e!586968 () Bool)

(assert (=> b!896856 (= e!586968 e!586970)))

(declare-fun res!407702 () Bool)

(assert (=> b!896856 (=> (not res!407702) (not e!586970))))

(assert (=> b!896856 (= res!407702 call!53328)))

(declare-fun bm!53323 () Bool)

(declare-fun c!145234 () Bool)

(assert (=> bm!53323 (= call!53329 (validRegex!811 (ite c!145234 (reg!2671 (reg!2671 r!15766)) (ite c!145235 (regTwo!5197 (reg!2671 r!15766)) (regTwo!5196 (reg!2671 r!15766))))))))

(declare-fun b!896857 () Bool)

(declare-fun e!586973 () Bool)

(assert (=> b!896857 (= e!586973 e!586974)))

(declare-fun res!407705 () Bool)

(assert (=> b!896857 (= res!407705 (not (nullable!620 (reg!2671 (reg!2671 r!15766)))))))

(assert (=> b!896857 (=> (not res!407705) (not e!586974))))

(declare-fun d!277883 () Bool)

(declare-fun res!407706 () Bool)

(declare-fun e!586972 () Bool)

(assert (=> d!277883 (=> res!407706 e!586972)))

(assert (=> d!277883 (= res!407706 (is-ElementMatch!2342 (reg!2671 r!15766)))))

(assert (=> d!277883 (= (validRegex!811 (reg!2671 r!15766)) e!586972)))

(declare-fun b!896858 () Bool)

(declare-fun res!407704 () Bool)

(assert (=> b!896858 (=> res!407704 e!586968)))

(assert (=> b!896858 (= res!407704 (not (is-Concat!4175 (reg!2671 r!15766))))))

(declare-fun e!586971 () Bool)

(assert (=> b!896858 (= e!586971 e!586968)))

(declare-fun bm!53324 () Bool)

(assert (=> bm!53324 (= call!53327 call!53329)))

(declare-fun b!896859 () Bool)

(declare-fun res!407703 () Bool)

(assert (=> b!896859 (=> (not res!407703) (not e!586969))))

(assert (=> b!896859 (= res!407703 call!53328)))

(assert (=> b!896859 (= e!586971 e!586969)))

(declare-fun b!896860 () Bool)

(assert (=> b!896860 (= e!586972 e!586973)))

(assert (=> b!896860 (= c!145234 (is-Star!2342 (reg!2671 r!15766)))))

(declare-fun b!896861 () Bool)

(assert (=> b!896861 (= e!586973 e!586971)))

(assert (=> b!896861 (= c!145235 (is-Union!2342 (reg!2671 r!15766)))))

(assert (= (and d!277883 (not res!407706)) b!896860))

(assert (= (and b!896860 c!145234) b!896857))

(assert (= (and b!896860 (not c!145234)) b!896861))

(assert (= (and b!896857 res!407705) b!896854))

(assert (= (and b!896861 c!145235) b!896859))

(assert (= (and b!896861 (not c!145235)) b!896858))

(assert (= (and b!896859 res!407703) b!896853))

(assert (= (and b!896858 (not res!407704)) b!896856))

(assert (= (and b!896856 res!407702) b!896855))

(assert (= (or b!896853 b!896855) bm!53324))

(assert (= (or b!896859 b!896856) bm!53322))

(assert (= (or b!896854 bm!53324) bm!53323))

(declare-fun m!1136393 () Bool)

(assert (=> bm!53322 m!1136393))

(declare-fun m!1136395 () Bool)

(assert (=> bm!53323 m!1136395))

(declare-fun m!1136397 () Bool)

(assert (=> b!896857 m!1136397))

(assert (=> b!896580 d!277883))

(declare-fun b!896873 () Bool)

(declare-fun e!586977 () Bool)

(declare-fun tp!281767 () Bool)

(declare-fun tp!281766 () Bool)

(assert (=> b!896873 (= e!586977 (and tp!281767 tp!281766))))

(declare-fun b!896875 () Bool)

(declare-fun tp!281763 () Bool)

(declare-fun tp!281765 () Bool)

(assert (=> b!896875 (= e!586977 (and tp!281763 tp!281765))))

(assert (=> b!896578 (= tp!281733 e!586977)))

(declare-fun b!896872 () Bool)

(assert (=> b!896872 (= e!586977 tp_is_empty!4327)))

(declare-fun b!896874 () Bool)

(declare-fun tp!281764 () Bool)

(assert (=> b!896874 (= e!586977 tp!281764)))

(assert (= (and b!896578 (is-ElementMatch!2342 (reg!2671 r!15766))) b!896872))

(assert (= (and b!896578 (is-Concat!4175 (reg!2671 r!15766))) b!896873))

(assert (= (and b!896578 (is-Star!2342 (reg!2671 r!15766))) b!896874))

(assert (= (and b!896578 (is-Union!2342 (reg!2671 r!15766))) b!896875))

(declare-fun b!896880 () Bool)

(declare-fun e!586980 () Bool)

(declare-fun tp!281770 () Bool)

(assert (=> b!896880 (= e!586980 (and tp_is_empty!4327 tp!281770))))

(assert (=> b!896577 (= tp!281732 e!586980)))

(assert (= (and b!896577 (is-Cons!9556 (t!100618 s!10566))) b!896880))

(declare-fun b!896882 () Bool)

(declare-fun e!586981 () Bool)

(declare-fun tp!281775 () Bool)

(declare-fun tp!281774 () Bool)

(assert (=> b!896882 (= e!586981 (and tp!281775 tp!281774))))

(declare-fun b!896884 () Bool)

(declare-fun tp!281771 () Bool)

(declare-fun tp!281773 () Bool)

(assert (=> b!896884 (= e!586981 (and tp!281771 tp!281773))))

(assert (=> b!896572 (= tp!281730 e!586981)))

(declare-fun b!896881 () Bool)

(assert (=> b!896881 (= e!586981 tp_is_empty!4327)))

(declare-fun b!896883 () Bool)

(declare-fun tp!281772 () Bool)

(assert (=> b!896883 (= e!586981 tp!281772)))

(assert (= (and b!896572 (is-ElementMatch!2342 (regOne!5196 r!15766))) b!896881))

(assert (= (and b!896572 (is-Concat!4175 (regOne!5196 r!15766))) b!896882))

(assert (= (and b!896572 (is-Star!2342 (regOne!5196 r!15766))) b!896883))

(assert (= (and b!896572 (is-Union!2342 (regOne!5196 r!15766))) b!896884))

(declare-fun b!896886 () Bool)

(declare-fun e!586982 () Bool)

(declare-fun tp!281780 () Bool)

(declare-fun tp!281779 () Bool)

(assert (=> b!896886 (= e!586982 (and tp!281780 tp!281779))))

(declare-fun b!896888 () Bool)

(declare-fun tp!281776 () Bool)

(declare-fun tp!281778 () Bool)

(assert (=> b!896888 (= e!586982 (and tp!281776 tp!281778))))

(assert (=> b!896572 (= tp!281734 e!586982)))

(declare-fun b!896885 () Bool)

(assert (=> b!896885 (= e!586982 tp_is_empty!4327)))

(declare-fun b!896887 () Bool)

(declare-fun tp!281777 () Bool)

(assert (=> b!896887 (= e!586982 tp!281777)))

(assert (= (and b!896572 (is-ElementMatch!2342 (regTwo!5196 r!15766))) b!896885))

(assert (= (and b!896572 (is-Concat!4175 (regTwo!5196 r!15766))) b!896886))

(assert (= (and b!896572 (is-Star!2342 (regTwo!5196 r!15766))) b!896887))

(assert (= (and b!896572 (is-Union!2342 (regTwo!5196 r!15766))) b!896888))

(declare-fun b!896890 () Bool)

(declare-fun e!586983 () Bool)

(declare-fun tp!281785 () Bool)

(declare-fun tp!281784 () Bool)

(assert (=> b!896890 (= e!586983 (and tp!281785 tp!281784))))

(declare-fun b!896892 () Bool)

(declare-fun tp!281781 () Bool)

(declare-fun tp!281783 () Bool)

(assert (=> b!896892 (= e!586983 (and tp!281781 tp!281783))))

(assert (=> b!896574 (= tp!281729 e!586983)))

(declare-fun b!896889 () Bool)

(assert (=> b!896889 (= e!586983 tp_is_empty!4327)))

(declare-fun b!896891 () Bool)

(declare-fun tp!281782 () Bool)

(assert (=> b!896891 (= e!586983 tp!281782)))

(assert (= (and b!896574 (is-ElementMatch!2342 (regOne!5197 r!15766))) b!896889))

(assert (= (and b!896574 (is-Concat!4175 (regOne!5197 r!15766))) b!896890))

(assert (= (and b!896574 (is-Star!2342 (regOne!5197 r!15766))) b!896891))

(assert (= (and b!896574 (is-Union!2342 (regOne!5197 r!15766))) b!896892))

(declare-fun b!896894 () Bool)

(declare-fun e!586984 () Bool)

(declare-fun tp!281790 () Bool)

(declare-fun tp!281789 () Bool)

(assert (=> b!896894 (= e!586984 (and tp!281790 tp!281789))))

(declare-fun b!896896 () Bool)

(declare-fun tp!281786 () Bool)

(declare-fun tp!281788 () Bool)

(assert (=> b!896896 (= e!586984 (and tp!281786 tp!281788))))

(assert (=> b!896574 (= tp!281731 e!586984)))

(declare-fun b!896893 () Bool)

(assert (=> b!896893 (= e!586984 tp_is_empty!4327)))

(declare-fun b!896895 () Bool)

(declare-fun tp!281787 () Bool)

(assert (=> b!896895 (= e!586984 tp!281787)))

(assert (= (and b!896574 (is-ElementMatch!2342 (regTwo!5197 r!15766))) b!896893))

(assert (= (and b!896574 (is-Concat!4175 (regTwo!5197 r!15766))) b!896894))

(assert (= (and b!896574 (is-Star!2342 (regTwo!5197 r!15766))) b!896895))

(assert (= (and b!896574 (is-Union!2342 (regTwo!5197 r!15766))) b!896896))

(push 1)

(assert (not b!896759))

(assert (not b!896756))

(assert (not bm!53295))

(assert (not d!277877))

(assert (not b!896690))

(assert (not d!277873))

(assert (not bm!53322))

(assert tp_is_empty!4327)

(assert (not b!896816))

(assert (not b!896894))

(assert (not bm!53302))

(assert (not b!896819))

(assert (not bm!53323))

(assert (not b!896763))

(assert (not d!277879))

(assert (not b!896652))

(assert (not b!896874))

(assert (not b!896857))

(assert (not b!896765))

(assert (not b!896757))

(assert (not d!277865))

(assert (not bm!53303))

(assert (not d!277861))

(assert (not b!896892))

(assert (not d!277867))

(assert (not b!896887))

(assert (not b!896895))

(assert (not b!896873))

(assert (not b!896891))

(assert (not b!896822))

(assert (not bm!53296))

(assert (not d!277869))

(assert (not b!896883))

(assert (not d!277875))

(assert (not b!896689))

(assert (not b!896875))

(assert (not b!896888))

(assert (not b!896823))

(assert (not b!896821))

(assert (not b!896755))

(assert (not b!896882))

(assert (not b!896896))

(assert (not b!896890))

(assert (not b!896880))

(assert (not b!896817))

(assert (not b!896886))

(assert (not b!896884))

(assert (not bm!53315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

