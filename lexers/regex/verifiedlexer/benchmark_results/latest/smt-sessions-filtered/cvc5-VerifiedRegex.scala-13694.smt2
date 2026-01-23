; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733054 () Bool)

(assert start!733054)

(declare-fun b!7604579 () Bool)

(assert (=> b!7604579 true))

(assert (=> b!7604579 true))

(assert (=> b!7604579 true))

(declare-fun bs!1942571 () Bool)

(declare-fun b!7604588 () Bool)

(assert (= bs!1942571 (and b!7604588 b!7604579)))

(declare-fun lambda!467945 () Int)

(declare-fun lambda!467944 () Int)

(assert (=> bs!1942571 (not (= lambda!467945 lambda!467944))))

(assert (=> b!7604588 true))

(assert (=> b!7604588 true))

(assert (=> b!7604588 true))

(declare-fun b!7604578 () Bool)

(declare-fun e!4523625 () Bool)

(declare-fun lt!2654681 () Bool)

(assert (=> b!7604578 (= e!4523625 lt!2654681)))

(declare-fun b!7604580 () Bool)

(declare-fun res!3044949 () Bool)

(declare-fun e!4523624 () Bool)

(assert (=> b!7604580 (=> (not res!3044949) (not e!4523624))))

(declare-fun Exists!4410 (Int) Bool)

(assert (=> b!7604580 (= res!3044949 (not (Exists!4410 lambda!467944)))))

(declare-fun b!7604581 () Bool)

(declare-fun e!4523626 () Bool)

(declare-fun tp!2217817 () Bool)

(declare-fun tp!2217814 () Bool)

(assert (=> b!7604581 (= e!4523626 (and tp!2217817 tp!2217814))))

(declare-fun b!7604582 () Bool)

(declare-fun e!4523622 () Bool)

(declare-fun tp_is_empty!50719 () Bool)

(assert (=> b!7604582 (= e!4523622 tp_is_empty!50719)))

(declare-fun b!7604583 () Bool)

(declare-fun tp!2217809 () Bool)

(declare-fun tp!2217808 () Bool)

(assert (=> b!7604583 (= e!4523622 (and tp!2217809 tp!2217808))))

(declare-fun b!7604584 () Bool)

(declare-fun tp!2217818 () Bool)

(declare-fun tp!2217816 () Bool)

(assert (=> b!7604584 (= e!4523622 (and tp!2217818 tp!2217816))))

(declare-fun b!7604585 () Bool)

(assert (=> b!7604585 (= e!4523626 tp_is_empty!50719)))

(declare-fun b!7604586 () Bool)

(declare-fun tp!2217815 () Bool)

(assert (=> b!7604586 (= e!4523626 tp!2217815)))

(declare-fun b!7604587 () Bool)

(declare-fun e!4523623 () Bool)

(declare-fun tp!2217811 () Bool)

(assert (=> b!7604587 (= e!4523623 (and tp_is_empty!50719 tp!2217811))))

(declare-fun res!3044950 () Bool)

(assert (=> b!7604588 (=> (not res!3044950) (not e!4523624))))

(assert (=> b!7604588 (= res!3044950 (Exists!4410 lambda!467945))))

(declare-fun res!3044946 () Bool)

(assert (=> b!7604579 (=> (not res!3044946) (not e!4523624))))

(assert (=> b!7604579 (= res!3044946 (not (Exists!4410 lambda!467944)))))

(declare-fun res!3044948 () Bool)

(assert (=> start!733054 (=> (not res!3044948) (not e!4523624))))

(declare-datatypes ((C!40690 0))(
  ( (C!40691 (val!30785 Int)) )
))
(declare-datatypes ((Regex!20182 0))(
  ( (ElementMatch!20182 (c!1402527 C!40690)) (Concat!29027 (regOne!40876 Regex!20182) (regTwo!40876 Regex!20182)) (EmptyExpr!20182) (Star!20182 (reg!20511 Regex!20182)) (EmptyLang!20182) (Union!20182 (regOne!40877 Regex!20182) (regTwo!40877 Regex!20182)) )
))
(declare-fun r1!3349 () Regex!20182)

(declare-fun validRegex!10610 (Regex!20182) Bool)

(assert (=> start!733054 (= res!3044948 (validRegex!10610 r1!3349))))

(assert (=> start!733054 e!4523624))

(assert (=> start!733054 e!4523622))

(assert (=> start!733054 e!4523626))

(assert (=> start!733054 e!4523623))

(declare-fun b!7604589 () Bool)

(declare-fun tp!2217810 () Bool)

(declare-fun tp!2217812 () Bool)

(assert (=> b!7604589 (= e!4523626 (and tp!2217810 tp!2217812))))

(declare-fun b!7604590 () Bool)

(assert (=> b!7604590 (= e!4523624 (not e!4523625))))

(declare-fun res!3044947 () Bool)

(assert (=> b!7604590 (=> res!3044947 e!4523625)))

(declare-datatypes ((List!73065 0))(
  ( (Nil!72941) (Cons!72941 (h!79389 C!40690) (t!387800 List!73065)) )
))
(declare-datatypes ((tuple2!69074 0))(
  ( (tuple2!69075 (_1!37840 List!73065) (_2!37840 List!73065)) )
))
(declare-fun lt!2654683 () tuple2!69074)

(declare-fun s!10235 () List!73065)

(declare-fun ++!17580 (List!73065 List!73065) List!73065)

(assert (=> b!7604590 (= res!3044947 (not (= (++!17580 (_1!37840 lt!2654683) (_2!37840 lt!2654683)) s!10235)))))

(declare-fun r2!3249 () Regex!20182)

(declare-fun matchR!9745 (Regex!20182 List!73065) Bool)

(declare-fun matchRSpec!4457 (Regex!20182 List!73065) Bool)

(assert (=> b!7604590 (= (matchR!9745 r2!3249 (_2!37840 lt!2654683)) (matchRSpec!4457 r2!3249 (_2!37840 lt!2654683)))))

(declare-datatypes ((Unit!167244 0))(
  ( (Unit!167245) )
))
(declare-fun lt!2654682 () Unit!167244)

(declare-fun mainMatchTheorem!4451 (Regex!20182 List!73065) Unit!167244)

(assert (=> b!7604590 (= lt!2654682 (mainMatchTheorem!4451 r2!3249 (_2!37840 lt!2654683)))))

(assert (=> b!7604590 (= lt!2654681 (matchRSpec!4457 r1!3349 (_1!37840 lt!2654683)))))

(assert (=> b!7604590 (= lt!2654681 (matchR!9745 r1!3349 (_1!37840 lt!2654683)))))

(declare-fun lt!2654684 () Unit!167244)

(assert (=> b!7604590 (= lt!2654684 (mainMatchTheorem!4451 r1!3349 (_1!37840 lt!2654683)))))

(declare-fun pickWitness!425 (Int) tuple2!69074)

(assert (=> b!7604590 (= lt!2654683 (pickWitness!425 lambda!467945))))

(declare-fun b!7604591 () Bool)

(declare-fun tp!2217813 () Bool)

(assert (=> b!7604591 (= e!4523622 tp!2217813)))

(declare-fun b!7604592 () Bool)

(declare-fun res!3044945 () Bool)

(assert (=> b!7604592 (=> (not res!3044945) (not e!4523624))))

(assert (=> b!7604592 (= res!3044945 (validRegex!10610 r2!3249))))

(assert (= (and start!733054 res!3044948) b!7604592))

(assert (= (and b!7604592 res!3044945) b!7604579))

(assert (= (and b!7604579 res!3044946) b!7604580))

(assert (= (and b!7604580 res!3044949) b!7604588))

(assert (= (and b!7604588 res!3044950) b!7604590))

(assert (= (and b!7604590 (not res!3044947)) b!7604578))

(assert (= (and start!733054 (is-ElementMatch!20182 r1!3349)) b!7604582))

(assert (= (and start!733054 (is-Concat!29027 r1!3349)) b!7604584))

(assert (= (and start!733054 (is-Star!20182 r1!3349)) b!7604591))

(assert (= (and start!733054 (is-Union!20182 r1!3349)) b!7604583))

(assert (= (and start!733054 (is-ElementMatch!20182 r2!3249)) b!7604585))

(assert (= (and start!733054 (is-Concat!29027 r2!3249)) b!7604581))

(assert (= (and start!733054 (is-Star!20182 r2!3249)) b!7604586))

(assert (= (and start!733054 (is-Union!20182 r2!3249)) b!7604589))

(assert (= (and start!733054 (is-Cons!72941 s!10235)) b!7604587))

(declare-fun m!8146194 () Bool)

(assert (=> b!7604590 m!8146194))

(declare-fun m!8146196 () Bool)

(assert (=> b!7604590 m!8146196))

(declare-fun m!8146198 () Bool)

(assert (=> b!7604590 m!8146198))

(declare-fun m!8146200 () Bool)

(assert (=> b!7604590 m!8146200))

(declare-fun m!8146202 () Bool)

(assert (=> b!7604590 m!8146202))

(declare-fun m!8146204 () Bool)

(assert (=> b!7604590 m!8146204))

(declare-fun m!8146206 () Bool)

(assert (=> b!7604590 m!8146206))

(declare-fun m!8146208 () Bool)

(assert (=> b!7604590 m!8146208))

(declare-fun m!8146210 () Bool)

(assert (=> b!7604579 m!8146210))

(declare-fun m!8146212 () Bool)

(assert (=> start!733054 m!8146212))

(declare-fun m!8146214 () Bool)

(assert (=> b!7604588 m!8146214))

(declare-fun m!8146216 () Bool)

(assert (=> b!7604592 m!8146216))

(assert (=> b!7604580 m!8146210))

(push 1)

(assert tp_is_empty!50719)

(assert (not b!7604584))

(assert (not b!7604590))

(assert (not b!7604589))

(assert (not b!7604588))

(assert (not b!7604579))

(assert (not b!7604581))

(assert (not b!7604591))

(assert (not b!7604586))

(assert (not b!7604583))

(assert (not start!733054))

(assert (not b!7604580))

(assert (not b!7604592))

(assert (not b!7604587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2321687 () Bool)

(declare-fun choose!58710 (Int) Bool)

(assert (=> d!2321687 (= (Exists!4410 lambda!467945) (choose!58710 lambda!467945))))

(declare-fun bs!1942573 () Bool)

(assert (= bs!1942573 d!2321687))

(declare-fun m!8146242 () Bool)

(assert (=> bs!1942573 m!8146242))

(assert (=> b!7604588 d!2321687))

(declare-fun b!7604680 () Bool)

(declare-fun e!4523669 () Bool)

(declare-fun call!698219 () Bool)

(assert (=> b!7604680 (= e!4523669 call!698219)))

(declare-fun bm!698214 () Bool)

(declare-fun call!698220 () Bool)

(assert (=> bm!698214 (= call!698219 call!698220)))

(declare-fun b!7604681 () Bool)

(declare-fun e!4523666 () Bool)

(assert (=> b!7604681 (= e!4523666 call!698220)))

(declare-fun b!7604682 () Bool)

(declare-fun res!3044996 () Bool)

(declare-fun e!4523670 () Bool)

(assert (=> b!7604682 (=> (not res!3044996) (not e!4523670))))

(assert (=> b!7604682 (= res!3044996 call!698219)))

(declare-fun e!4523664 () Bool)

(assert (=> b!7604682 (= e!4523664 e!4523670)))

(declare-fun b!7604683 () Bool)

(declare-fun res!3044997 () Bool)

(declare-fun e!4523665 () Bool)

(assert (=> b!7604683 (=> res!3044997 e!4523665)))

(assert (=> b!7604683 (= res!3044997 (not (is-Concat!29027 r1!3349)))))

(assert (=> b!7604683 (= e!4523664 e!4523665)))

(declare-fun b!7604684 () Bool)

(declare-fun e!4523667 () Bool)

(declare-fun e!4523668 () Bool)

(assert (=> b!7604684 (= e!4523667 e!4523668)))

(declare-fun c!1402534 () Bool)

(assert (=> b!7604684 (= c!1402534 (is-Star!20182 r1!3349))))

(declare-fun c!1402533 () Bool)

(declare-fun bm!698215 () Bool)

(assert (=> bm!698215 (= call!698220 (validRegex!10610 (ite c!1402534 (reg!20511 r1!3349) (ite c!1402533 (regOne!40877 r1!3349) (regTwo!40876 r1!3349)))))))

(declare-fun b!7604685 () Bool)

(assert (=> b!7604685 (= e!4523668 e!4523664)))

(assert (=> b!7604685 (= c!1402533 (is-Union!20182 r1!3349))))

(declare-fun d!2321689 () Bool)

(declare-fun res!3044995 () Bool)

(assert (=> d!2321689 (=> res!3044995 e!4523667)))

(assert (=> d!2321689 (= res!3044995 (is-ElementMatch!20182 r1!3349))))

(assert (=> d!2321689 (= (validRegex!10610 r1!3349) e!4523667)))

(declare-fun b!7604686 () Bool)

(assert (=> b!7604686 (= e!4523668 e!4523666)))

(declare-fun res!3044998 () Bool)

(declare-fun nullable!8811 (Regex!20182) Bool)

(assert (=> b!7604686 (= res!3044998 (not (nullable!8811 (reg!20511 r1!3349))))))

(assert (=> b!7604686 (=> (not res!3044998) (not e!4523666))))

(declare-fun b!7604687 () Bool)

(declare-fun call!698221 () Bool)

(assert (=> b!7604687 (= e!4523670 call!698221)))

(declare-fun b!7604688 () Bool)

(assert (=> b!7604688 (= e!4523665 e!4523669)))

(declare-fun res!3044999 () Bool)

(assert (=> b!7604688 (=> (not res!3044999) (not e!4523669))))

(assert (=> b!7604688 (= res!3044999 call!698221)))

(declare-fun bm!698216 () Bool)

(assert (=> bm!698216 (= call!698221 (validRegex!10610 (ite c!1402533 (regTwo!40877 r1!3349) (regOne!40876 r1!3349))))))

(assert (= (and d!2321689 (not res!3044995)) b!7604684))

(assert (= (and b!7604684 c!1402534) b!7604686))

(assert (= (and b!7604684 (not c!1402534)) b!7604685))

(assert (= (and b!7604686 res!3044998) b!7604681))

(assert (= (and b!7604685 c!1402533) b!7604682))

(assert (= (and b!7604685 (not c!1402533)) b!7604683))

(assert (= (and b!7604682 res!3044996) b!7604687))

(assert (= (and b!7604683 (not res!3044997)) b!7604688))

(assert (= (and b!7604688 res!3044999) b!7604680))

(assert (= (or b!7604687 b!7604688) bm!698216))

(assert (= (or b!7604682 b!7604680) bm!698214))

(assert (= (or b!7604681 bm!698214) bm!698215))

(declare-fun m!8146244 () Bool)

(assert (=> bm!698215 m!8146244))

(declare-fun m!8146246 () Bool)

(assert (=> b!7604686 m!8146246))

(declare-fun m!8146248 () Bool)

(assert (=> bm!698216 m!8146248))

(assert (=> start!733054 d!2321689))

(declare-fun b!7604689 () Bool)

(declare-fun e!4523676 () Bool)

(declare-fun call!698222 () Bool)

(assert (=> b!7604689 (= e!4523676 call!698222)))

(declare-fun bm!698217 () Bool)

(declare-fun call!698223 () Bool)

(assert (=> bm!698217 (= call!698222 call!698223)))

(declare-fun b!7604690 () Bool)

(declare-fun e!4523673 () Bool)

(assert (=> b!7604690 (= e!4523673 call!698223)))

(declare-fun b!7604691 () Bool)

(declare-fun res!3045001 () Bool)

(declare-fun e!4523677 () Bool)

(assert (=> b!7604691 (=> (not res!3045001) (not e!4523677))))

(assert (=> b!7604691 (= res!3045001 call!698222)))

(declare-fun e!4523671 () Bool)

(assert (=> b!7604691 (= e!4523671 e!4523677)))

(declare-fun b!7604692 () Bool)

(declare-fun res!3045002 () Bool)

(declare-fun e!4523672 () Bool)

(assert (=> b!7604692 (=> res!3045002 e!4523672)))

(assert (=> b!7604692 (= res!3045002 (not (is-Concat!29027 r2!3249)))))

(assert (=> b!7604692 (= e!4523671 e!4523672)))

(declare-fun b!7604693 () Bool)

(declare-fun e!4523674 () Bool)

(declare-fun e!4523675 () Bool)

(assert (=> b!7604693 (= e!4523674 e!4523675)))

(declare-fun c!1402536 () Bool)

(assert (=> b!7604693 (= c!1402536 (is-Star!20182 r2!3249))))

(declare-fun c!1402535 () Bool)

(declare-fun bm!698218 () Bool)

(assert (=> bm!698218 (= call!698223 (validRegex!10610 (ite c!1402536 (reg!20511 r2!3249) (ite c!1402535 (regOne!40877 r2!3249) (regTwo!40876 r2!3249)))))))

(declare-fun b!7604694 () Bool)

(assert (=> b!7604694 (= e!4523675 e!4523671)))

(assert (=> b!7604694 (= c!1402535 (is-Union!20182 r2!3249))))

(declare-fun d!2321691 () Bool)

(declare-fun res!3045000 () Bool)

(assert (=> d!2321691 (=> res!3045000 e!4523674)))

(assert (=> d!2321691 (= res!3045000 (is-ElementMatch!20182 r2!3249))))

(assert (=> d!2321691 (= (validRegex!10610 r2!3249) e!4523674)))

(declare-fun b!7604695 () Bool)

(assert (=> b!7604695 (= e!4523675 e!4523673)))

(declare-fun res!3045003 () Bool)

(assert (=> b!7604695 (= res!3045003 (not (nullable!8811 (reg!20511 r2!3249))))))

(assert (=> b!7604695 (=> (not res!3045003) (not e!4523673))))

(declare-fun b!7604696 () Bool)

(declare-fun call!698224 () Bool)

(assert (=> b!7604696 (= e!4523677 call!698224)))

(declare-fun b!7604697 () Bool)

(assert (=> b!7604697 (= e!4523672 e!4523676)))

(declare-fun res!3045004 () Bool)

(assert (=> b!7604697 (=> (not res!3045004) (not e!4523676))))

(assert (=> b!7604697 (= res!3045004 call!698224)))

(declare-fun bm!698219 () Bool)

(assert (=> bm!698219 (= call!698224 (validRegex!10610 (ite c!1402535 (regTwo!40877 r2!3249) (regOne!40876 r2!3249))))))

(assert (= (and d!2321691 (not res!3045000)) b!7604693))

(assert (= (and b!7604693 c!1402536) b!7604695))

(assert (= (and b!7604693 (not c!1402536)) b!7604694))

(assert (= (and b!7604695 res!3045003) b!7604690))

(assert (= (and b!7604694 c!1402535) b!7604691))

(assert (= (and b!7604694 (not c!1402535)) b!7604692))

(assert (= (and b!7604691 res!3045001) b!7604696))

(assert (= (and b!7604692 (not res!3045002)) b!7604697))

(assert (= (and b!7604697 res!3045004) b!7604689))

(assert (= (or b!7604696 b!7604697) bm!698219))

(assert (= (or b!7604691 b!7604689) bm!698217))

(assert (= (or b!7604690 bm!698217) bm!698218))

(declare-fun m!8146250 () Bool)

(assert (=> bm!698218 m!8146250))

(declare-fun m!8146252 () Bool)

(assert (=> b!7604695 m!8146252))

(declare-fun m!8146254 () Bool)

(assert (=> bm!698219 m!8146254))

(assert (=> b!7604592 d!2321691))

(declare-fun d!2321693 () Bool)

(assert (=> d!2321693 (= (Exists!4410 lambda!467944) (choose!58710 lambda!467944))))

(declare-fun bs!1942574 () Bool)

(assert (= bs!1942574 d!2321693))

(declare-fun m!8146256 () Bool)

(assert (=> bs!1942574 m!8146256))

(assert (=> b!7604580 d!2321693))

(assert (=> b!7604579 d!2321693))

(declare-fun d!2321695 () Bool)

(assert (=> d!2321695 (= (matchR!9745 r2!3249 (_2!37840 lt!2654683)) (matchRSpec!4457 r2!3249 (_2!37840 lt!2654683)))))

(declare-fun lt!2654699 () Unit!167244)

(declare-fun choose!58711 (Regex!20182 List!73065) Unit!167244)

(assert (=> d!2321695 (= lt!2654699 (choose!58711 r2!3249 (_2!37840 lt!2654683)))))

(assert (=> d!2321695 (validRegex!10610 r2!3249)))

(assert (=> d!2321695 (= (mainMatchTheorem!4451 r2!3249 (_2!37840 lt!2654683)) lt!2654699)))

(declare-fun bs!1942575 () Bool)

(assert (= bs!1942575 d!2321695))

(assert (=> bs!1942575 m!8146204))

(assert (=> bs!1942575 m!8146202))

(declare-fun m!8146258 () Bool)

(assert (=> bs!1942575 m!8146258))

(assert (=> bs!1942575 m!8146216))

(assert (=> b!7604590 d!2321695))

(declare-fun b!7604726 () Bool)

(declare-fun e!4523694 () Bool)

(declare-fun e!4523697 () Bool)

(assert (=> b!7604726 (= e!4523694 e!4523697)))

(declare-fun res!3045028 () Bool)

(assert (=> b!7604726 (=> res!3045028 e!4523697)))

(declare-fun call!698227 () Bool)

(assert (=> b!7604726 (= res!3045028 call!698227)))

(declare-fun b!7604727 () Bool)

(declare-fun head!15635 (List!73065) C!40690)

(assert (=> b!7604727 (= e!4523697 (not (= (head!15635 (_2!37840 lt!2654683)) (c!1402527 r2!3249))))))

(declare-fun b!7604728 () Bool)

(declare-fun res!3045026 () Bool)

(declare-fun e!4523692 () Bool)

(assert (=> b!7604728 (=> (not res!3045026) (not e!4523692))))

(declare-fun isEmpty!41572 (List!73065) Bool)

(declare-fun tail!15175 (List!73065) List!73065)

(assert (=> b!7604728 (= res!3045026 (isEmpty!41572 (tail!15175 (_2!37840 lt!2654683))))))

(declare-fun d!2321697 () Bool)

(declare-fun e!4523698 () Bool)

(assert (=> d!2321697 e!4523698))

(declare-fun c!1402544 () Bool)

(assert (=> d!2321697 (= c!1402544 (is-EmptyExpr!20182 r2!3249))))

(declare-fun lt!2654702 () Bool)

(declare-fun e!4523693 () Bool)

(assert (=> d!2321697 (= lt!2654702 e!4523693)))

(declare-fun c!1402545 () Bool)

(assert (=> d!2321697 (= c!1402545 (isEmpty!41572 (_2!37840 lt!2654683)))))

(assert (=> d!2321697 (validRegex!10610 r2!3249)))

(assert (=> d!2321697 (= (matchR!9745 r2!3249 (_2!37840 lt!2654683)) lt!2654702)))

(declare-fun b!7604729 () Bool)

(declare-fun e!4523696 () Bool)

(assert (=> b!7604729 (= e!4523696 e!4523694)))

(declare-fun res!3045027 () Bool)

(assert (=> b!7604729 (=> (not res!3045027) (not e!4523694))))

(assert (=> b!7604729 (= res!3045027 (not lt!2654702))))

(declare-fun b!7604730 () Bool)

(declare-fun res!3045021 () Bool)

(assert (=> b!7604730 (=> res!3045021 e!4523696)))

(assert (=> b!7604730 (= res!3045021 (not (is-ElementMatch!20182 r2!3249)))))

(declare-fun e!4523695 () Bool)

(assert (=> b!7604730 (= e!4523695 e!4523696)))

(declare-fun b!7604731 () Bool)

(assert (=> b!7604731 (= e!4523693 (nullable!8811 r2!3249))))

(declare-fun b!7604732 () Bool)

(declare-fun res!3045022 () Bool)

(assert (=> b!7604732 (=> res!3045022 e!4523697)))

(assert (=> b!7604732 (= res!3045022 (not (isEmpty!41572 (tail!15175 (_2!37840 lt!2654683)))))))

(declare-fun b!7604733 () Bool)

(assert (=> b!7604733 (= e!4523698 (= lt!2654702 call!698227))))

(declare-fun b!7604734 () Bool)

(declare-fun derivativeStep!5835 (Regex!20182 C!40690) Regex!20182)

(assert (=> b!7604734 (= e!4523693 (matchR!9745 (derivativeStep!5835 r2!3249 (head!15635 (_2!37840 lt!2654683))) (tail!15175 (_2!37840 lt!2654683))))))

(declare-fun b!7604735 () Bool)

(declare-fun res!3045024 () Bool)

(assert (=> b!7604735 (=> res!3045024 e!4523696)))

(assert (=> b!7604735 (= res!3045024 e!4523692)))

(declare-fun res!3045025 () Bool)

(assert (=> b!7604735 (=> (not res!3045025) (not e!4523692))))

(assert (=> b!7604735 (= res!3045025 lt!2654702)))

(declare-fun b!7604736 () Bool)

(assert (=> b!7604736 (= e!4523698 e!4523695)))

(declare-fun c!1402543 () Bool)

(assert (=> b!7604736 (= c!1402543 (is-EmptyLang!20182 r2!3249))))

(declare-fun b!7604737 () Bool)

(assert (=> b!7604737 (= e!4523695 (not lt!2654702))))

(declare-fun b!7604738 () Bool)

(declare-fun res!3045023 () Bool)

(assert (=> b!7604738 (=> (not res!3045023) (not e!4523692))))

(assert (=> b!7604738 (= res!3045023 (not call!698227))))

(declare-fun b!7604739 () Bool)

(assert (=> b!7604739 (= e!4523692 (= (head!15635 (_2!37840 lt!2654683)) (c!1402527 r2!3249)))))

(declare-fun bm!698222 () Bool)

(assert (=> bm!698222 (= call!698227 (isEmpty!41572 (_2!37840 lt!2654683)))))

(assert (= (and d!2321697 c!1402545) b!7604731))

(assert (= (and d!2321697 (not c!1402545)) b!7604734))

(assert (= (and d!2321697 c!1402544) b!7604733))

(assert (= (and d!2321697 (not c!1402544)) b!7604736))

(assert (= (and b!7604736 c!1402543) b!7604737))

(assert (= (and b!7604736 (not c!1402543)) b!7604730))

(assert (= (and b!7604730 (not res!3045021)) b!7604735))

(assert (= (and b!7604735 res!3045025) b!7604738))

(assert (= (and b!7604738 res!3045023) b!7604728))

(assert (= (and b!7604728 res!3045026) b!7604739))

(assert (= (and b!7604735 (not res!3045024)) b!7604729))

(assert (= (and b!7604729 res!3045027) b!7604726))

(assert (= (and b!7604726 (not res!3045028)) b!7604732))

(assert (= (and b!7604732 (not res!3045022)) b!7604727))

(assert (= (or b!7604733 b!7604726 b!7604738) bm!698222))

(declare-fun m!8146262 () Bool)

(assert (=> b!7604727 m!8146262))

(declare-fun m!8146264 () Bool)

(assert (=> b!7604728 m!8146264))

(assert (=> b!7604728 m!8146264))

(declare-fun m!8146266 () Bool)

(assert (=> b!7604728 m!8146266))

(declare-fun m!8146268 () Bool)

(assert (=> d!2321697 m!8146268))

(assert (=> d!2321697 m!8146216))

(assert (=> b!7604739 m!8146262))

(assert (=> b!7604732 m!8146264))

(assert (=> b!7604732 m!8146264))

(assert (=> b!7604732 m!8146266))

(declare-fun m!8146270 () Bool)

(assert (=> b!7604731 m!8146270))

(assert (=> bm!698222 m!8146268))

(assert (=> b!7604734 m!8146262))

(assert (=> b!7604734 m!8146262))

(declare-fun m!8146272 () Bool)

(assert (=> b!7604734 m!8146272))

(assert (=> b!7604734 m!8146264))

(assert (=> b!7604734 m!8146272))

(assert (=> b!7604734 m!8146264))

(declare-fun m!8146274 () Bool)

(assert (=> b!7604734 m!8146274))

(assert (=> b!7604590 d!2321697))

(declare-fun d!2321703 () Bool)

(declare-fun lt!2654705 () tuple2!69074)

(declare-fun dynLambda!29905 (Int tuple2!69074) Bool)

(assert (=> d!2321703 (dynLambda!29905 lambda!467945 lt!2654705)))

(declare-fun choose!58712 (Int) tuple2!69074)

(assert (=> d!2321703 (= lt!2654705 (choose!58712 lambda!467945))))

(assert (=> d!2321703 (Exists!4410 lambda!467945)))

(assert (=> d!2321703 (= (pickWitness!425 lambda!467945) lt!2654705)))

(declare-fun b_lambda!288939 () Bool)

(assert (=> (not b_lambda!288939) (not d!2321703)))

(declare-fun bs!1942577 () Bool)

(assert (= bs!1942577 d!2321703))

(declare-fun m!8146276 () Bool)

(assert (=> bs!1942577 m!8146276))

(declare-fun m!8146278 () Bool)

(assert (=> bs!1942577 m!8146278))

(assert (=> bs!1942577 m!8146214))

(assert (=> b!7604590 d!2321703))

(declare-fun b!7604740 () Bool)

(declare-fun e!4523701 () Bool)

(declare-fun e!4523704 () Bool)

(assert (=> b!7604740 (= e!4523701 e!4523704)))

(declare-fun res!3045036 () Bool)

(assert (=> b!7604740 (=> res!3045036 e!4523704)))

(declare-fun call!698228 () Bool)

(assert (=> b!7604740 (= res!3045036 call!698228)))

(declare-fun b!7604741 () Bool)

(assert (=> b!7604741 (= e!4523704 (not (= (head!15635 (_1!37840 lt!2654683)) (c!1402527 r1!3349))))))

(declare-fun b!7604742 () Bool)

(declare-fun res!3045034 () Bool)

(declare-fun e!4523699 () Bool)

(assert (=> b!7604742 (=> (not res!3045034) (not e!4523699))))

(assert (=> b!7604742 (= res!3045034 (isEmpty!41572 (tail!15175 (_1!37840 lt!2654683))))))

(declare-fun d!2321705 () Bool)

(declare-fun e!4523705 () Bool)

(assert (=> d!2321705 e!4523705))

(declare-fun c!1402547 () Bool)

(assert (=> d!2321705 (= c!1402547 (is-EmptyExpr!20182 r1!3349))))

(declare-fun lt!2654706 () Bool)

(declare-fun e!4523700 () Bool)

(assert (=> d!2321705 (= lt!2654706 e!4523700)))

(declare-fun c!1402548 () Bool)

(assert (=> d!2321705 (= c!1402548 (isEmpty!41572 (_1!37840 lt!2654683)))))

(assert (=> d!2321705 (validRegex!10610 r1!3349)))

(assert (=> d!2321705 (= (matchR!9745 r1!3349 (_1!37840 lt!2654683)) lt!2654706)))

(declare-fun b!7604743 () Bool)

(declare-fun e!4523703 () Bool)

(assert (=> b!7604743 (= e!4523703 e!4523701)))

(declare-fun res!3045035 () Bool)

(assert (=> b!7604743 (=> (not res!3045035) (not e!4523701))))

(assert (=> b!7604743 (= res!3045035 (not lt!2654706))))

(declare-fun b!7604744 () Bool)

(declare-fun res!3045029 () Bool)

(assert (=> b!7604744 (=> res!3045029 e!4523703)))

(assert (=> b!7604744 (= res!3045029 (not (is-ElementMatch!20182 r1!3349)))))

(declare-fun e!4523702 () Bool)

(assert (=> b!7604744 (= e!4523702 e!4523703)))

(declare-fun b!7604745 () Bool)

(assert (=> b!7604745 (= e!4523700 (nullable!8811 r1!3349))))

(declare-fun b!7604746 () Bool)

(declare-fun res!3045030 () Bool)

(assert (=> b!7604746 (=> res!3045030 e!4523704)))

(assert (=> b!7604746 (= res!3045030 (not (isEmpty!41572 (tail!15175 (_1!37840 lt!2654683)))))))

(declare-fun b!7604747 () Bool)

(assert (=> b!7604747 (= e!4523705 (= lt!2654706 call!698228))))

(declare-fun b!7604748 () Bool)

(assert (=> b!7604748 (= e!4523700 (matchR!9745 (derivativeStep!5835 r1!3349 (head!15635 (_1!37840 lt!2654683))) (tail!15175 (_1!37840 lt!2654683))))))

(declare-fun b!7604749 () Bool)

(declare-fun res!3045032 () Bool)

(assert (=> b!7604749 (=> res!3045032 e!4523703)))

(assert (=> b!7604749 (= res!3045032 e!4523699)))

(declare-fun res!3045033 () Bool)

(assert (=> b!7604749 (=> (not res!3045033) (not e!4523699))))

(assert (=> b!7604749 (= res!3045033 lt!2654706)))

(declare-fun b!7604750 () Bool)

(assert (=> b!7604750 (= e!4523705 e!4523702)))

(declare-fun c!1402546 () Bool)

(assert (=> b!7604750 (= c!1402546 (is-EmptyLang!20182 r1!3349))))

(declare-fun b!7604751 () Bool)

(assert (=> b!7604751 (= e!4523702 (not lt!2654706))))

(declare-fun b!7604752 () Bool)

(declare-fun res!3045031 () Bool)

(assert (=> b!7604752 (=> (not res!3045031) (not e!4523699))))

(assert (=> b!7604752 (= res!3045031 (not call!698228))))

(declare-fun b!7604753 () Bool)

(assert (=> b!7604753 (= e!4523699 (= (head!15635 (_1!37840 lt!2654683)) (c!1402527 r1!3349)))))

(declare-fun bm!698223 () Bool)

(assert (=> bm!698223 (= call!698228 (isEmpty!41572 (_1!37840 lt!2654683)))))

(assert (= (and d!2321705 c!1402548) b!7604745))

(assert (= (and d!2321705 (not c!1402548)) b!7604748))

(assert (= (and d!2321705 c!1402547) b!7604747))

(assert (= (and d!2321705 (not c!1402547)) b!7604750))

(assert (= (and b!7604750 c!1402546) b!7604751))

(assert (= (and b!7604750 (not c!1402546)) b!7604744))

(assert (= (and b!7604744 (not res!3045029)) b!7604749))

(assert (= (and b!7604749 res!3045033) b!7604752))

(assert (= (and b!7604752 res!3045031) b!7604742))

(assert (= (and b!7604742 res!3045034) b!7604753))

(assert (= (and b!7604749 (not res!3045032)) b!7604743))

(assert (= (and b!7604743 res!3045035) b!7604740))

(assert (= (and b!7604740 (not res!3045036)) b!7604746))

(assert (= (and b!7604746 (not res!3045030)) b!7604741))

(assert (= (or b!7604747 b!7604740 b!7604752) bm!698223))

(declare-fun m!8146280 () Bool)

(assert (=> b!7604741 m!8146280))

(declare-fun m!8146282 () Bool)

(assert (=> b!7604742 m!8146282))

(assert (=> b!7604742 m!8146282))

(declare-fun m!8146284 () Bool)

(assert (=> b!7604742 m!8146284))

(declare-fun m!8146286 () Bool)

(assert (=> d!2321705 m!8146286))

(assert (=> d!2321705 m!8146212))

(assert (=> b!7604753 m!8146280))

(assert (=> b!7604746 m!8146282))

(assert (=> b!7604746 m!8146282))

(assert (=> b!7604746 m!8146284))

(declare-fun m!8146288 () Bool)

(assert (=> b!7604745 m!8146288))

(assert (=> bm!698223 m!8146286))

(assert (=> b!7604748 m!8146280))

(assert (=> b!7604748 m!8146280))

(declare-fun m!8146290 () Bool)

(assert (=> b!7604748 m!8146290))

(assert (=> b!7604748 m!8146282))

(assert (=> b!7604748 m!8146290))

(assert (=> b!7604748 m!8146282))

(declare-fun m!8146292 () Bool)

(assert (=> b!7604748 m!8146292))

(assert (=> b!7604590 d!2321705))

(declare-fun d!2321707 () Bool)

(assert (=> d!2321707 (= (matchR!9745 r1!3349 (_1!37840 lt!2654683)) (matchRSpec!4457 r1!3349 (_1!37840 lt!2654683)))))

(declare-fun lt!2654707 () Unit!167244)

(assert (=> d!2321707 (= lt!2654707 (choose!58711 r1!3349 (_1!37840 lt!2654683)))))

(assert (=> d!2321707 (validRegex!10610 r1!3349)))

(assert (=> d!2321707 (= (mainMatchTheorem!4451 r1!3349 (_1!37840 lt!2654683)) lt!2654707)))

(declare-fun bs!1942578 () Bool)

(assert (= bs!1942578 d!2321707))

(assert (=> bs!1942578 m!8146200))

(assert (=> bs!1942578 m!8146208))

(declare-fun m!8146294 () Bool)

(assert (=> bs!1942578 m!8146294))

(assert (=> bs!1942578 m!8146212))

(assert (=> b!7604590 d!2321707))

(declare-fun bs!1942579 () Bool)

(declare-fun b!7604823 () Bool)

(assert (= bs!1942579 (and b!7604823 b!7604579)))

(declare-fun lambda!467964 () Int)

(assert (=> bs!1942579 (not (= lambda!467964 lambda!467944))))

(declare-fun bs!1942580 () Bool)

(assert (= bs!1942580 (and b!7604823 b!7604588)))

(assert (=> bs!1942580 (not (= lambda!467964 lambda!467945))))

(assert (=> b!7604823 true))

(assert (=> b!7604823 true))

(declare-fun bs!1942581 () Bool)

(declare-fun b!7604820 () Bool)

(assert (= bs!1942581 (and b!7604820 b!7604579)))

(declare-fun lambda!467965 () Int)

(assert (=> bs!1942581 (not (= lambda!467965 lambda!467944))))

(declare-fun bs!1942582 () Bool)

(assert (= bs!1942582 (and b!7604820 b!7604588)))

(assert (=> bs!1942582 (= (and (= (_1!37840 lt!2654683) s!10235) (= (regOne!40876 r1!3349) r1!3349) (= (regTwo!40876 r1!3349) r2!3249)) (= lambda!467965 lambda!467945))))

(declare-fun bs!1942583 () Bool)

(assert (= bs!1942583 (and b!7604820 b!7604823)))

(assert (=> bs!1942583 (not (= lambda!467965 lambda!467964))))

(assert (=> b!7604820 true))

(assert (=> b!7604820 true))

(declare-fun bm!698230 () Bool)

(declare-fun call!698236 () Bool)

(assert (=> bm!698230 (= call!698236 (isEmpty!41572 (_1!37840 lt!2654683)))))

(declare-fun d!2321709 () Bool)

(declare-fun c!1402568 () Bool)

(assert (=> d!2321709 (= c!1402568 (is-EmptyExpr!20182 r1!3349))))

(declare-fun e!4523748 () Bool)

(assert (=> d!2321709 (= (matchRSpec!4457 r1!3349 (_1!37840 lt!2654683)) e!4523748)))

(declare-fun b!7604818 () Bool)

(declare-fun c!1402566 () Bool)

(assert (=> b!7604818 (= c!1402566 (is-ElementMatch!20182 r1!3349))))

(declare-fun e!4523747 () Bool)

(declare-fun e!4523746 () Bool)

(assert (=> b!7604818 (= e!4523747 e!4523746)))

(declare-fun b!7604819 () Bool)

(assert (=> b!7604819 (= e!4523746 (= (_1!37840 lt!2654683) (Cons!72941 (c!1402527 r1!3349) Nil!72941)))))

(declare-fun e!4523743 () Bool)

(declare-fun call!698235 () Bool)

(assert (=> b!7604820 (= e!4523743 call!698235)))

(declare-fun b!7604821 () Bool)

(declare-fun e!4523742 () Bool)

(assert (=> b!7604821 (= e!4523742 e!4523743)))

(declare-fun c!1402567 () Bool)

(assert (=> b!7604821 (= c!1402567 (is-Star!20182 r1!3349))))

(declare-fun b!7604822 () Bool)

(declare-fun c!1402565 () Bool)

(assert (=> b!7604822 (= c!1402565 (is-Union!20182 r1!3349))))

(assert (=> b!7604822 (= e!4523746 e!4523742)))

(declare-fun e!4523745 () Bool)

(assert (=> b!7604823 (= e!4523745 call!698235)))

(declare-fun b!7604824 () Bool)

(assert (=> b!7604824 (= e!4523748 e!4523747)))

(declare-fun res!3045069 () Bool)

(assert (=> b!7604824 (= res!3045069 (not (is-EmptyLang!20182 r1!3349)))))

(assert (=> b!7604824 (=> (not res!3045069) (not e!4523747))))

(declare-fun bm!698231 () Bool)

(assert (=> bm!698231 (= call!698235 (Exists!4410 (ite c!1402567 lambda!467964 lambda!467965)))))

(declare-fun b!7604825 () Bool)

(declare-fun e!4523744 () Bool)

(assert (=> b!7604825 (= e!4523742 e!4523744)))

(declare-fun res!3045071 () Bool)

(assert (=> b!7604825 (= res!3045071 (matchRSpec!4457 (regOne!40877 r1!3349) (_1!37840 lt!2654683)))))

(assert (=> b!7604825 (=> res!3045071 e!4523744)))

(declare-fun b!7604826 () Bool)

(assert (=> b!7604826 (= e!4523744 (matchRSpec!4457 (regTwo!40877 r1!3349) (_1!37840 lt!2654683)))))

(declare-fun b!7604827 () Bool)

(declare-fun res!3045070 () Bool)

(assert (=> b!7604827 (=> res!3045070 e!4523745)))

(assert (=> b!7604827 (= res!3045070 call!698236)))

(assert (=> b!7604827 (= e!4523743 e!4523745)))

(declare-fun b!7604828 () Bool)

(assert (=> b!7604828 (= e!4523748 call!698236)))

(assert (= (and d!2321709 c!1402568) b!7604828))

(assert (= (and d!2321709 (not c!1402568)) b!7604824))

(assert (= (and b!7604824 res!3045069) b!7604818))

(assert (= (and b!7604818 c!1402566) b!7604819))

(assert (= (and b!7604818 (not c!1402566)) b!7604822))

(assert (= (and b!7604822 c!1402565) b!7604825))

(assert (= (and b!7604822 (not c!1402565)) b!7604821))

(assert (= (and b!7604825 (not res!3045071)) b!7604826))

(assert (= (and b!7604821 c!1402567) b!7604827))

(assert (= (and b!7604821 (not c!1402567)) b!7604820))

(assert (= (and b!7604827 (not res!3045070)) b!7604823))

(assert (= (or b!7604823 b!7604820) bm!698231))

(assert (= (or b!7604828 b!7604827) bm!698230))

(assert (=> bm!698230 m!8146286))

(declare-fun m!8146296 () Bool)

(assert (=> bm!698231 m!8146296))

(declare-fun m!8146298 () Bool)

(assert (=> b!7604825 m!8146298))

(declare-fun m!8146300 () Bool)

(assert (=> b!7604826 m!8146300))

(assert (=> b!7604590 d!2321709))

(declare-fun bs!1942584 () Bool)

(declare-fun b!7604834 () Bool)

(assert (= bs!1942584 (and b!7604834 b!7604579)))

(declare-fun lambda!467966 () Int)

(assert (=> bs!1942584 (not (= lambda!467966 lambda!467944))))

(declare-fun bs!1942585 () Bool)

(assert (= bs!1942585 (and b!7604834 b!7604588)))

(assert (=> bs!1942585 (not (= lambda!467966 lambda!467945))))

(declare-fun bs!1942586 () Bool)

(assert (= bs!1942586 (and b!7604834 b!7604823)))

(assert (=> bs!1942586 (= (and (= (_2!37840 lt!2654683) (_1!37840 lt!2654683)) (= (reg!20511 r2!3249) (reg!20511 r1!3349)) (= r2!3249 r1!3349)) (= lambda!467966 lambda!467964))))

(declare-fun bs!1942587 () Bool)

(assert (= bs!1942587 (and b!7604834 b!7604820)))

(assert (=> bs!1942587 (not (= lambda!467966 lambda!467965))))

(assert (=> b!7604834 true))

(assert (=> b!7604834 true))

(declare-fun bs!1942588 () Bool)

(declare-fun b!7604831 () Bool)

(assert (= bs!1942588 (and b!7604831 b!7604588)))

(declare-fun lambda!467967 () Int)

(assert (=> bs!1942588 (= (and (= (_2!37840 lt!2654683) s!10235) (= (regOne!40876 r2!3249) r1!3349) (= (regTwo!40876 r2!3249) r2!3249)) (= lambda!467967 lambda!467945))))

(declare-fun bs!1942589 () Bool)

(assert (= bs!1942589 (and b!7604831 b!7604579)))

(assert (=> bs!1942589 (not (= lambda!467967 lambda!467944))))

(declare-fun bs!1942590 () Bool)

(assert (= bs!1942590 (and b!7604831 b!7604834)))

(assert (=> bs!1942590 (not (= lambda!467967 lambda!467966))))

(declare-fun bs!1942591 () Bool)

(assert (= bs!1942591 (and b!7604831 b!7604820)))

(assert (=> bs!1942591 (= (and (= (_2!37840 lt!2654683) (_1!37840 lt!2654683)) (= (regOne!40876 r2!3249) (regOne!40876 r1!3349)) (= (regTwo!40876 r2!3249) (regTwo!40876 r1!3349))) (= lambda!467967 lambda!467965))))

(declare-fun bs!1942592 () Bool)

(assert (= bs!1942592 (and b!7604831 b!7604823)))

(assert (=> bs!1942592 (not (= lambda!467967 lambda!467964))))

(assert (=> b!7604831 true))

(assert (=> b!7604831 true))

(declare-fun bm!698234 () Bool)

(declare-fun call!698240 () Bool)

(assert (=> bm!698234 (= call!698240 (isEmpty!41572 (_2!37840 lt!2654683)))))

(declare-fun d!2321711 () Bool)

(declare-fun c!1402572 () Bool)

(assert (=> d!2321711 (= c!1402572 (is-EmptyExpr!20182 r2!3249))))

(declare-fun e!4523755 () Bool)

(assert (=> d!2321711 (= (matchRSpec!4457 r2!3249 (_2!37840 lt!2654683)) e!4523755)))

(declare-fun b!7604829 () Bool)

(declare-fun c!1402570 () Bool)

(assert (=> b!7604829 (= c!1402570 (is-ElementMatch!20182 r2!3249))))

(declare-fun e!4523754 () Bool)

(declare-fun e!4523753 () Bool)

(assert (=> b!7604829 (= e!4523754 e!4523753)))

(declare-fun b!7604830 () Bool)

(assert (=> b!7604830 (= e!4523753 (= (_2!37840 lt!2654683) (Cons!72941 (c!1402527 r2!3249) Nil!72941)))))

(declare-fun e!4523750 () Bool)

(declare-fun call!698239 () Bool)

(assert (=> b!7604831 (= e!4523750 call!698239)))

(declare-fun b!7604832 () Bool)

(declare-fun e!4523749 () Bool)

(assert (=> b!7604832 (= e!4523749 e!4523750)))

(declare-fun c!1402571 () Bool)

(assert (=> b!7604832 (= c!1402571 (is-Star!20182 r2!3249))))

(declare-fun b!7604833 () Bool)

(declare-fun c!1402569 () Bool)

(assert (=> b!7604833 (= c!1402569 (is-Union!20182 r2!3249))))

(assert (=> b!7604833 (= e!4523753 e!4523749)))

(declare-fun e!4523752 () Bool)

(assert (=> b!7604834 (= e!4523752 call!698239)))

(declare-fun b!7604835 () Bool)

(assert (=> b!7604835 (= e!4523755 e!4523754)))

(declare-fun res!3045072 () Bool)

(assert (=> b!7604835 (= res!3045072 (not (is-EmptyLang!20182 r2!3249)))))

(assert (=> b!7604835 (=> (not res!3045072) (not e!4523754))))

(declare-fun bm!698235 () Bool)

(assert (=> bm!698235 (= call!698239 (Exists!4410 (ite c!1402571 lambda!467966 lambda!467967)))))

(declare-fun b!7604836 () Bool)

(declare-fun e!4523751 () Bool)

(assert (=> b!7604836 (= e!4523749 e!4523751)))

(declare-fun res!3045074 () Bool)

(assert (=> b!7604836 (= res!3045074 (matchRSpec!4457 (regOne!40877 r2!3249) (_2!37840 lt!2654683)))))

(assert (=> b!7604836 (=> res!3045074 e!4523751)))

(declare-fun b!7604837 () Bool)

(assert (=> b!7604837 (= e!4523751 (matchRSpec!4457 (regTwo!40877 r2!3249) (_2!37840 lt!2654683)))))

(declare-fun b!7604838 () Bool)

(declare-fun res!3045073 () Bool)

(assert (=> b!7604838 (=> res!3045073 e!4523752)))

(assert (=> b!7604838 (= res!3045073 call!698240)))

(assert (=> b!7604838 (= e!4523750 e!4523752)))

(declare-fun b!7604839 () Bool)

(assert (=> b!7604839 (= e!4523755 call!698240)))

(assert (= (and d!2321711 c!1402572) b!7604839))

(assert (= (and d!2321711 (not c!1402572)) b!7604835))

(assert (= (and b!7604835 res!3045072) b!7604829))

(assert (= (and b!7604829 c!1402570) b!7604830))

(assert (= (and b!7604829 (not c!1402570)) b!7604833))

(assert (= (and b!7604833 c!1402569) b!7604836))

(assert (= (and b!7604833 (not c!1402569)) b!7604832))

(assert (= (and b!7604836 (not res!3045074)) b!7604837))

(assert (= (and b!7604832 c!1402571) b!7604838))

(assert (= (and b!7604832 (not c!1402571)) b!7604831))

(assert (= (and b!7604838 (not res!3045073)) b!7604834))

(assert (= (or b!7604834 b!7604831) bm!698235))

(assert (= (or b!7604839 b!7604838) bm!698234))

(assert (=> bm!698234 m!8146268))

(declare-fun m!8146302 () Bool)

(assert (=> bm!698235 m!8146302))

(declare-fun m!8146304 () Bool)

(assert (=> b!7604836 m!8146304))

(declare-fun m!8146306 () Bool)

(assert (=> b!7604837 m!8146306))

(assert (=> b!7604590 d!2321711))

(declare-fun b!7604862 () Bool)

(declare-fun e!4523768 () Bool)

(declare-fun lt!2654710 () List!73065)

(assert (=> b!7604862 (= e!4523768 (or (not (= (_2!37840 lt!2654683) Nil!72941)) (= lt!2654710 (_1!37840 lt!2654683))))))

(declare-fun d!2321713 () Bool)

(assert (=> d!2321713 e!4523768))

(declare-fun res!3045082 () Bool)

(assert (=> d!2321713 (=> (not res!3045082) (not e!4523768))))

(declare-fun content!15424 (List!73065) (Set C!40690))

(assert (=> d!2321713 (= res!3045082 (= (content!15424 lt!2654710) (set.union (content!15424 (_1!37840 lt!2654683)) (content!15424 (_2!37840 lt!2654683)))))))

(declare-fun e!4523767 () List!73065)

(assert (=> d!2321713 (= lt!2654710 e!4523767)))

(declare-fun c!1402579 () Bool)

(assert (=> d!2321713 (= c!1402579 (is-Nil!72941 (_1!37840 lt!2654683)))))

(assert (=> d!2321713 (= (++!17580 (_1!37840 lt!2654683) (_2!37840 lt!2654683)) lt!2654710)))

(declare-fun b!7604861 () Bool)

(declare-fun res!3045083 () Bool)

(assert (=> b!7604861 (=> (not res!3045083) (not e!4523768))))

(declare-fun size!42517 (List!73065) Int)

(assert (=> b!7604861 (= res!3045083 (= (size!42517 lt!2654710) (+ (size!42517 (_1!37840 lt!2654683)) (size!42517 (_2!37840 lt!2654683)))))))

(declare-fun b!7604860 () Bool)

(assert (=> b!7604860 (= e!4523767 (Cons!72941 (h!79389 (_1!37840 lt!2654683)) (++!17580 (t!387800 (_1!37840 lt!2654683)) (_2!37840 lt!2654683))))))

(declare-fun b!7604859 () Bool)

(assert (=> b!7604859 (= e!4523767 (_2!37840 lt!2654683))))

(assert (= (and d!2321713 c!1402579) b!7604859))

(assert (= (and d!2321713 (not c!1402579)) b!7604860))

(assert (= (and d!2321713 res!3045082) b!7604861))

(assert (= (and b!7604861 res!3045083) b!7604862))

(declare-fun m!8146308 () Bool)

(assert (=> d!2321713 m!8146308))

(declare-fun m!8146310 () Bool)

(assert (=> d!2321713 m!8146310))

(declare-fun m!8146312 () Bool)

(assert (=> d!2321713 m!8146312))

(declare-fun m!8146314 () Bool)

(assert (=> b!7604861 m!8146314))

(declare-fun m!8146316 () Bool)

(assert (=> b!7604861 m!8146316))

(declare-fun m!8146318 () Bool)

(assert (=> b!7604861 m!8146318))

(declare-fun m!8146320 () Bool)

(assert (=> b!7604860 m!8146320))

(assert (=> b!7604590 d!2321713))

(declare-fun b!7604875 () Bool)

(declare-fun e!4523771 () Bool)

(declare-fun tp!2217863 () Bool)

(assert (=> b!7604875 (= e!4523771 tp!2217863)))

(declare-fun b!7604873 () Bool)

(assert (=> b!7604873 (= e!4523771 tp_is_empty!50719)))

(declare-fun b!7604876 () Bool)

(declare-fun tp!2217862 () Bool)

(declare-fun tp!2217865 () Bool)

(assert (=> b!7604876 (= e!4523771 (and tp!2217862 tp!2217865))))

(declare-fun b!7604874 () Bool)

(declare-fun tp!2217866 () Bool)

(declare-fun tp!2217864 () Bool)

(assert (=> b!7604874 (= e!4523771 (and tp!2217866 tp!2217864))))

(assert (=> b!7604589 (= tp!2217810 e!4523771)))

(assert (= (and b!7604589 (is-ElementMatch!20182 (regOne!40877 r2!3249))) b!7604873))

(assert (= (and b!7604589 (is-Concat!29027 (regOne!40877 r2!3249))) b!7604874))

(assert (= (and b!7604589 (is-Star!20182 (regOne!40877 r2!3249))) b!7604875))

(assert (= (and b!7604589 (is-Union!20182 (regOne!40877 r2!3249))) b!7604876))

(declare-fun b!7604879 () Bool)

(declare-fun e!4523772 () Bool)

(declare-fun tp!2217868 () Bool)

(assert (=> b!7604879 (= e!4523772 tp!2217868)))

(declare-fun b!7604877 () Bool)

(assert (=> b!7604877 (= e!4523772 tp_is_empty!50719)))

(declare-fun b!7604880 () Bool)

(declare-fun tp!2217867 () Bool)

(declare-fun tp!2217870 () Bool)

(assert (=> b!7604880 (= e!4523772 (and tp!2217867 tp!2217870))))

(declare-fun b!7604878 () Bool)

(declare-fun tp!2217871 () Bool)

(declare-fun tp!2217869 () Bool)

(assert (=> b!7604878 (= e!4523772 (and tp!2217871 tp!2217869))))

(assert (=> b!7604589 (= tp!2217812 e!4523772)))

(assert (= (and b!7604589 (is-ElementMatch!20182 (regTwo!40877 r2!3249))) b!7604877))

(assert (= (and b!7604589 (is-Concat!29027 (regTwo!40877 r2!3249))) b!7604878))

(assert (= (and b!7604589 (is-Star!20182 (regTwo!40877 r2!3249))) b!7604879))

(assert (= (and b!7604589 (is-Union!20182 (regTwo!40877 r2!3249))) b!7604880))

(declare-fun b!7604883 () Bool)

(declare-fun e!4523773 () Bool)

(declare-fun tp!2217873 () Bool)

(assert (=> b!7604883 (= e!4523773 tp!2217873)))

(declare-fun b!7604881 () Bool)

(assert (=> b!7604881 (= e!4523773 tp_is_empty!50719)))

(declare-fun b!7604884 () Bool)

(declare-fun tp!2217872 () Bool)

(declare-fun tp!2217875 () Bool)

(assert (=> b!7604884 (= e!4523773 (and tp!2217872 tp!2217875))))

(declare-fun b!7604882 () Bool)

(declare-fun tp!2217876 () Bool)

(declare-fun tp!2217874 () Bool)

(assert (=> b!7604882 (= e!4523773 (and tp!2217876 tp!2217874))))

(assert (=> b!7604584 (= tp!2217818 e!4523773)))

(assert (= (and b!7604584 (is-ElementMatch!20182 (regOne!40876 r1!3349))) b!7604881))

(assert (= (and b!7604584 (is-Concat!29027 (regOne!40876 r1!3349))) b!7604882))

(assert (= (and b!7604584 (is-Star!20182 (regOne!40876 r1!3349))) b!7604883))

(assert (= (and b!7604584 (is-Union!20182 (regOne!40876 r1!3349))) b!7604884))

(declare-fun b!7604887 () Bool)

(declare-fun e!4523774 () Bool)

(declare-fun tp!2217878 () Bool)

(assert (=> b!7604887 (= e!4523774 tp!2217878)))

(declare-fun b!7604885 () Bool)

(assert (=> b!7604885 (= e!4523774 tp_is_empty!50719)))

(declare-fun b!7604888 () Bool)

(declare-fun tp!2217877 () Bool)

(declare-fun tp!2217880 () Bool)

(assert (=> b!7604888 (= e!4523774 (and tp!2217877 tp!2217880))))

(declare-fun b!7604886 () Bool)

(declare-fun tp!2217881 () Bool)

(declare-fun tp!2217879 () Bool)

(assert (=> b!7604886 (= e!4523774 (and tp!2217881 tp!2217879))))

(assert (=> b!7604584 (= tp!2217816 e!4523774)))

(assert (= (and b!7604584 (is-ElementMatch!20182 (regTwo!40876 r1!3349))) b!7604885))

(assert (= (and b!7604584 (is-Concat!29027 (regTwo!40876 r1!3349))) b!7604886))

(assert (= (and b!7604584 (is-Star!20182 (regTwo!40876 r1!3349))) b!7604887))

(assert (= (and b!7604584 (is-Union!20182 (regTwo!40876 r1!3349))) b!7604888))

(declare-fun b!7604891 () Bool)

(declare-fun e!4523775 () Bool)

(declare-fun tp!2217883 () Bool)

(assert (=> b!7604891 (= e!4523775 tp!2217883)))

(declare-fun b!7604889 () Bool)

(assert (=> b!7604889 (= e!4523775 tp_is_empty!50719)))

(declare-fun b!7604892 () Bool)

(declare-fun tp!2217882 () Bool)

(declare-fun tp!2217885 () Bool)

(assert (=> b!7604892 (= e!4523775 (and tp!2217882 tp!2217885))))

(declare-fun b!7604890 () Bool)

(declare-fun tp!2217886 () Bool)

(declare-fun tp!2217884 () Bool)

(assert (=> b!7604890 (= e!4523775 (and tp!2217886 tp!2217884))))

(assert (=> b!7604583 (= tp!2217809 e!4523775)))

(assert (= (and b!7604583 (is-ElementMatch!20182 (regOne!40877 r1!3349))) b!7604889))

(assert (= (and b!7604583 (is-Concat!29027 (regOne!40877 r1!3349))) b!7604890))

(assert (= (and b!7604583 (is-Star!20182 (regOne!40877 r1!3349))) b!7604891))

(assert (= (and b!7604583 (is-Union!20182 (regOne!40877 r1!3349))) b!7604892))

(declare-fun b!7604895 () Bool)

(declare-fun e!4523776 () Bool)

(declare-fun tp!2217888 () Bool)

(assert (=> b!7604895 (= e!4523776 tp!2217888)))

(declare-fun b!7604893 () Bool)

(assert (=> b!7604893 (= e!4523776 tp_is_empty!50719)))

(declare-fun b!7604896 () Bool)

(declare-fun tp!2217887 () Bool)

(declare-fun tp!2217890 () Bool)

(assert (=> b!7604896 (= e!4523776 (and tp!2217887 tp!2217890))))

(declare-fun b!7604894 () Bool)

(declare-fun tp!2217891 () Bool)

(declare-fun tp!2217889 () Bool)

(assert (=> b!7604894 (= e!4523776 (and tp!2217891 tp!2217889))))

(assert (=> b!7604583 (= tp!2217808 e!4523776)))

(assert (= (and b!7604583 (is-ElementMatch!20182 (regTwo!40877 r1!3349))) b!7604893))

(assert (= (and b!7604583 (is-Concat!29027 (regTwo!40877 r1!3349))) b!7604894))

(assert (= (and b!7604583 (is-Star!20182 (regTwo!40877 r1!3349))) b!7604895))

(assert (= (and b!7604583 (is-Union!20182 (regTwo!40877 r1!3349))) b!7604896))

(declare-fun b!7604901 () Bool)

(declare-fun e!4523779 () Bool)

(declare-fun tp!2217894 () Bool)

(assert (=> b!7604901 (= e!4523779 (and tp_is_empty!50719 tp!2217894))))

(assert (=> b!7604587 (= tp!2217811 e!4523779)))

(assert (= (and b!7604587 (is-Cons!72941 (t!387800 s!10235))) b!7604901))

(declare-fun b!7604904 () Bool)

(declare-fun e!4523780 () Bool)

(declare-fun tp!2217896 () Bool)

(assert (=> b!7604904 (= e!4523780 tp!2217896)))

(declare-fun b!7604902 () Bool)

(assert (=> b!7604902 (= e!4523780 tp_is_empty!50719)))

(declare-fun b!7604905 () Bool)

(declare-fun tp!2217895 () Bool)

(declare-fun tp!2217898 () Bool)

(assert (=> b!7604905 (= e!4523780 (and tp!2217895 tp!2217898))))

(declare-fun b!7604903 () Bool)

(declare-fun tp!2217899 () Bool)

(declare-fun tp!2217897 () Bool)

(assert (=> b!7604903 (= e!4523780 (and tp!2217899 tp!2217897))))

(assert (=> b!7604581 (= tp!2217817 e!4523780)))

(assert (= (and b!7604581 (is-ElementMatch!20182 (regOne!40876 r2!3249))) b!7604902))

(assert (= (and b!7604581 (is-Concat!29027 (regOne!40876 r2!3249))) b!7604903))

(assert (= (and b!7604581 (is-Star!20182 (regOne!40876 r2!3249))) b!7604904))

(assert (= (and b!7604581 (is-Union!20182 (regOne!40876 r2!3249))) b!7604905))

(declare-fun b!7604908 () Bool)

(declare-fun e!4523781 () Bool)

(declare-fun tp!2217901 () Bool)

(assert (=> b!7604908 (= e!4523781 tp!2217901)))

(declare-fun b!7604906 () Bool)

(assert (=> b!7604906 (= e!4523781 tp_is_empty!50719)))

(declare-fun b!7604909 () Bool)

(declare-fun tp!2217900 () Bool)

(declare-fun tp!2217903 () Bool)

(assert (=> b!7604909 (= e!4523781 (and tp!2217900 tp!2217903))))

(declare-fun b!7604907 () Bool)

(declare-fun tp!2217904 () Bool)

(declare-fun tp!2217902 () Bool)

(assert (=> b!7604907 (= e!4523781 (and tp!2217904 tp!2217902))))

(assert (=> b!7604581 (= tp!2217814 e!4523781)))

(assert (= (and b!7604581 (is-ElementMatch!20182 (regTwo!40876 r2!3249))) b!7604906))

(assert (= (and b!7604581 (is-Concat!29027 (regTwo!40876 r2!3249))) b!7604907))

(assert (= (and b!7604581 (is-Star!20182 (regTwo!40876 r2!3249))) b!7604908))

(assert (= (and b!7604581 (is-Union!20182 (regTwo!40876 r2!3249))) b!7604909))

(declare-fun b!7604912 () Bool)

(declare-fun e!4523782 () Bool)

(declare-fun tp!2217906 () Bool)

(assert (=> b!7604912 (= e!4523782 tp!2217906)))

(declare-fun b!7604910 () Bool)

(assert (=> b!7604910 (= e!4523782 tp_is_empty!50719)))

(declare-fun b!7604913 () Bool)

(declare-fun tp!2217905 () Bool)

(declare-fun tp!2217908 () Bool)

(assert (=> b!7604913 (= e!4523782 (and tp!2217905 tp!2217908))))

(declare-fun b!7604911 () Bool)

(declare-fun tp!2217909 () Bool)

(declare-fun tp!2217907 () Bool)

(assert (=> b!7604911 (= e!4523782 (and tp!2217909 tp!2217907))))

(assert (=> b!7604591 (= tp!2217813 e!4523782)))

(assert (= (and b!7604591 (is-ElementMatch!20182 (reg!20511 r1!3349))) b!7604910))

(assert (= (and b!7604591 (is-Concat!29027 (reg!20511 r1!3349))) b!7604911))

(assert (= (and b!7604591 (is-Star!20182 (reg!20511 r1!3349))) b!7604912))

(assert (= (and b!7604591 (is-Union!20182 (reg!20511 r1!3349))) b!7604913))

(declare-fun b!7604916 () Bool)

(declare-fun e!4523783 () Bool)

(declare-fun tp!2217911 () Bool)

(assert (=> b!7604916 (= e!4523783 tp!2217911)))

(declare-fun b!7604914 () Bool)

(assert (=> b!7604914 (= e!4523783 tp_is_empty!50719)))

(declare-fun b!7604917 () Bool)

(declare-fun tp!2217910 () Bool)

(declare-fun tp!2217913 () Bool)

(assert (=> b!7604917 (= e!4523783 (and tp!2217910 tp!2217913))))

(declare-fun b!7604915 () Bool)

(declare-fun tp!2217914 () Bool)

(declare-fun tp!2217912 () Bool)

(assert (=> b!7604915 (= e!4523783 (and tp!2217914 tp!2217912))))

(assert (=> b!7604586 (= tp!2217815 e!4523783)))

(assert (= (and b!7604586 (is-ElementMatch!20182 (reg!20511 r2!3249))) b!7604914))

(assert (= (and b!7604586 (is-Concat!29027 (reg!20511 r2!3249))) b!7604915))

(assert (= (and b!7604586 (is-Star!20182 (reg!20511 r2!3249))) b!7604916))

(assert (= (and b!7604586 (is-Union!20182 (reg!20511 r2!3249))) b!7604917))

(declare-fun b_lambda!288941 () Bool)

(assert (= b_lambda!288939 (or b!7604588 b_lambda!288941)))

(declare-fun bs!1942598 () Bool)

(declare-fun d!2321715 () Bool)

(assert (= bs!1942598 (and d!2321715 b!7604588)))

(declare-fun res!3045084 () Bool)

(declare-fun e!4523784 () Bool)

(assert (=> bs!1942598 (=> (not res!3045084) (not e!4523784))))

(assert (=> bs!1942598 (= res!3045084 (= (++!17580 (_1!37840 lt!2654705) (_2!37840 lt!2654705)) s!10235))))

(assert (=> bs!1942598 (= (dynLambda!29905 lambda!467945 lt!2654705) e!4523784)))

(declare-fun b!7604918 () Bool)

(declare-fun res!3045085 () Bool)

(assert (=> b!7604918 (=> (not res!3045085) (not e!4523784))))

(assert (=> b!7604918 (= res!3045085 (matchRSpec!4457 r1!3349 (_1!37840 lt!2654705)))))

(declare-fun b!7604919 () Bool)

(assert (=> b!7604919 (= e!4523784 (matchRSpec!4457 r2!3249 (_2!37840 lt!2654705)))))

(assert (= (and bs!1942598 res!3045084) b!7604918))

(assert (= (and b!7604918 res!3045085) b!7604919))

(declare-fun m!8146330 () Bool)

(assert (=> bs!1942598 m!8146330))

(declare-fun m!8146332 () Bool)

(assert (=> b!7604918 m!8146332))

(declare-fun m!8146334 () Bool)

(assert (=> b!7604919 m!8146334))

(assert (=> d!2321703 d!2321715))

(push 1)

(assert (not b!7604894))

(assert (not b!7604888))

(assert (not d!2321705))

(assert (not b!7604917))

(assert (not b!7604882))

(assert (not b!7604728))

(assert (not b!7604901))

(assert (not b!7604884))

(assert (not b!7604911))

(assert (not b!7604919))

(assert (not d!2321693))

(assert (not b!7604918))

(assert (not b!7604913))

(assert (not b!7604825))

(assert (not bm!698235))

(assert (not bm!698222))

(assert tp_is_empty!50719)

(assert (not b!7604896))

(assert (not b!7604875))

(assert (not b!7604876))

(assert (not b!7604915))

(assert (not b!7604891))

(assert (not bm!698231))

(assert (not b!7604745))

(assert (not b!7604837))

(assert (not b!7604753))

(assert (not d!2321713))

(assert (not b!7604905))

(assert (not b!7604892))

(assert (not bs!1942598))

(assert (not b!7604909))

(assert (not b!7604916))

(assert (not b!7604860))

(assert (not b!7604731))

(assert (not bm!698218))

(assert (not bm!698234))

(assert (not bm!698223))

(assert (not b!7604826))

(assert (not b!7604746))

(assert (not b!7604727))

(assert (not b!7604886))

(assert (not b!7604879))

(assert (not d!2321703))

(assert (not b_lambda!288941))

(assert (not b!7604741))

(assert (not bm!698215))

(assert (not b!7604878))

(assert (not d!2321695))

(assert (not b!7604686))

(assert (not b!7604734))

(assert (not b!7604880))

(assert (not b!7604732))

(assert (not bm!698216))

(assert (not bm!698219))

(assert (not b!7604904))

(assert (not b!7604695))

(assert (not b!7604887))

(assert (not d!2321697))

(assert (not b!7604861))

(assert (not d!2321707))

(assert (not b!7604903))

(assert (not b!7604883))

(assert (not b!7604836))

(assert (not b!7604908))

(assert (not d!2321687))

(assert (not b!7604907))

(assert (not b!7604890))

(assert (not b!7604895))

(assert (not b!7604742))

(assert (not b!7604874))

(assert (not bm!698230))

(assert (not b!7604748))

(assert (not b!7604912))

(assert (not b!7604739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

