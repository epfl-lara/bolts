; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544710 () Bool)

(assert start!544710)

(declare-fun b!5145709 () Bool)

(declare-fun e!3208596 () Bool)

(declare-fun tp!1437190 () Bool)

(assert (=> b!5145709 (= e!3208596 tp!1437190)))

(declare-fun b!5145710 () Bool)

(declare-fun tp_is_empty!38113 () Bool)

(assert (=> b!5145710 (= e!3208596 tp_is_empty!38113)))

(declare-fun b!5145711 () Bool)

(declare-fun tp!1437191 () Bool)

(declare-fun tp!1437188 () Bool)

(assert (=> b!5145711 (= e!3208596 (and tp!1437191 tp!1437188))))

(declare-fun b!5145712 () Bool)

(declare-fun e!3208594 () Bool)

(declare-datatypes ((C!29230 0))(
  ( (C!29231 (val!24267 Int)) )
))
(declare-datatypes ((Regex!14482 0))(
  ( (ElementMatch!14482 (c!886023 C!29230)) (Concat!23327 (regOne!29476 Regex!14482) (regTwo!29476 Regex!14482)) (EmptyExpr!14482) (Star!14482 (reg!14811 Regex!14482)) (EmptyLang!14482) (Union!14482 (regOne!29477 Regex!14482) (regTwo!29477 Regex!14482)) )
))
(declare-fun expr!117 () Regex!14482)

(declare-fun validRegex!6337 (Regex!14482) Bool)

(assert (=> b!5145712 (= e!3208594 (not (validRegex!6337 (regOne!29476 expr!117))))))

(declare-fun b!5145713 () Bool)

(declare-fun e!3208597 () Bool)

(declare-datatypes ((List!59886 0))(
  ( (Nil!59762) (Cons!59762 (h!66210 Regex!14482) (t!372923 List!59886)) )
))
(declare-datatypes ((Context!7732 0))(
  ( (Context!7733 (exprs!4366 List!59886)) )
))
(declare-fun ctx!100 () Context!7732)

(declare-fun lostCause!1516 (Context!7732) Bool)

(assert (=> b!5145713 (= e!3208597 (lostCause!1516 ctx!100))))

(declare-fun b!5145715 () Bool)

(declare-fun tp!1437186 () Bool)

(declare-fun tp!1437187 () Bool)

(assert (=> b!5145715 (= e!3208596 (and tp!1437186 tp!1437187))))

(declare-fun b!5145716 () Bool)

(declare-fun res!2190456 () Bool)

(assert (=> b!5145716 (=> (not res!2190456) (not e!3208594))))

(declare-fun a!1296 () C!29230)

(assert (=> b!5145716 (= res!2190456 (and (or (not (is-ElementMatch!14482 expr!117)) (not (= (c!886023 expr!117) a!1296))) (not (is-Union!14482 expr!117)) (is-Concat!23327 expr!117)))))

(declare-fun b!5145717 () Bool)

(declare-fun res!2190454 () Bool)

(assert (=> b!5145717 (=> (not res!2190454) (not e!3208594))))

(assert (=> b!5145717 (= res!2190454 e!3208597)))

(declare-fun res!2190455 () Bool)

(assert (=> b!5145717 (=> res!2190455 e!3208597)))

(declare-fun lostCause!1517 (Regex!14482) Bool)

(assert (=> b!5145717 (= res!2190455 (lostCause!1517 expr!117))))

(declare-fun b!5145718 () Bool)

(declare-fun res!2190458 () Bool)

(assert (=> b!5145718 (=> (not res!2190458) (not e!3208594))))

(declare-fun nullable!4838 (Regex!14482) Bool)

(assert (=> b!5145718 (= res!2190458 (nullable!4838 (regOne!29476 expr!117)))))

(declare-fun b!5145714 () Bool)

(declare-fun e!3208595 () Bool)

(declare-fun tp!1437189 () Bool)

(assert (=> b!5145714 (= e!3208595 tp!1437189)))

(declare-fun res!2190457 () Bool)

(assert (=> start!544710 (=> (not res!2190457) (not e!3208594))))

(assert (=> start!544710 (= res!2190457 (validRegex!6337 expr!117))))

(assert (=> start!544710 e!3208594))

(assert (=> start!544710 e!3208596))

(declare-fun inv!79387 (Context!7732) Bool)

(assert (=> start!544710 (and (inv!79387 ctx!100) e!3208595)))

(assert (=> start!544710 tp_is_empty!38113))

(assert (= (and start!544710 res!2190457) b!5145717))

(assert (= (and b!5145717 (not res!2190455)) b!5145713))

(assert (= (and b!5145717 res!2190454) b!5145716))

(assert (= (and b!5145716 res!2190456) b!5145718))

(assert (= (and b!5145718 res!2190458) b!5145712))

(assert (= (and start!544710 (is-ElementMatch!14482 expr!117)) b!5145710))

(assert (= (and start!544710 (is-Concat!23327 expr!117)) b!5145715))

(assert (= (and start!544710 (is-Star!14482 expr!117)) b!5145709))

(assert (= (and start!544710 (is-Union!14482 expr!117)) b!5145711))

(assert (= start!544710 b!5145714))

(declare-fun m!6206566 () Bool)

(assert (=> b!5145713 m!6206566))

(declare-fun m!6206568 () Bool)

(assert (=> b!5145712 m!6206568))

(declare-fun m!6206570 () Bool)

(assert (=> b!5145718 m!6206570))

(declare-fun m!6206572 () Bool)

(assert (=> start!544710 m!6206572))

(declare-fun m!6206574 () Bool)

(assert (=> start!544710 m!6206574))

(declare-fun m!6206576 () Bool)

(assert (=> b!5145717 m!6206576))

(push 1)

(assert (not b!5145714))

(assert (not b!5145712))

(assert tp_is_empty!38113)

(assert (not start!544710))

(assert (not b!5145713))

(assert (not b!5145717))

(assert (not b!5145718))

(assert (not b!5145709))

(assert (not b!5145715))

(assert (not b!5145711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1663411 () Bool)

(declare-fun nullableFct!1322 (Regex!14482) Bool)

(assert (=> d!1663411 (= (nullable!4838 (regOne!29476 expr!117)) (nullableFct!1322 (regOne!29476 expr!117)))))

(declare-fun bs!1201247 () Bool)

(assert (= bs!1201247 d!1663411))

(declare-fun m!6206590 () Bool)

(assert (=> bs!1201247 m!6206590))

(assert (=> b!5145718 d!1663411))

(declare-fun d!1663413 () Bool)

(declare-fun lambda!256863 () Int)

(declare-fun exists!1814 (List!59886 Int) Bool)

(assert (=> d!1663413 (= (lostCause!1516 ctx!100) (exists!1814 (exprs!4366 ctx!100) lambda!256863))))

(declare-fun bs!1201249 () Bool)

(assert (= bs!1201249 d!1663413))

(declare-fun m!6206600 () Bool)

(assert (=> bs!1201249 m!6206600))

(assert (=> b!5145713 d!1663413))

(declare-fun b!5145794 () Bool)

(declare-fun e!3208645 () Bool)

(declare-fun call!359718 () Bool)

(assert (=> b!5145794 (= e!3208645 call!359718)))

(declare-fun d!1663421 () Bool)

(declare-fun res!2190499 () Bool)

(declare-fun e!3208650 () Bool)

(assert (=> d!1663421 (=> res!2190499 e!3208650)))

(assert (=> d!1663421 (= res!2190499 (is-ElementMatch!14482 expr!117))))

(assert (=> d!1663421 (= (validRegex!6337 expr!117) e!3208650)))

(declare-fun b!5145795 () Bool)

(declare-fun e!3208648 () Bool)

(assert (=> b!5145795 (= e!3208650 e!3208648)))

(declare-fun c!886035 () Bool)

(assert (=> b!5145795 (= c!886035 (is-Star!14482 expr!117))))

(declare-fun bm!359711 () Bool)

(declare-fun call!359716 () Bool)

(assert (=> bm!359711 (= call!359718 call!359716)))

(declare-fun b!5145796 () Bool)

(declare-fun e!3208647 () Bool)

(assert (=> b!5145796 (= e!3208647 call!359718)))

(declare-fun b!5145797 () Bool)

(declare-fun res!2190502 () Bool)

(assert (=> b!5145797 (=> (not res!2190502) (not e!3208645))))

(declare-fun call!359717 () Bool)

(assert (=> b!5145797 (= res!2190502 call!359717)))

(declare-fun e!3208646 () Bool)

(assert (=> b!5145797 (= e!3208646 e!3208645)))

(declare-fun bm!359712 () Bool)

(declare-fun c!886036 () Bool)

(assert (=> bm!359712 (= call!359717 (validRegex!6337 (ite c!886036 (regOne!29477 expr!117) (regOne!29476 expr!117))))))

(declare-fun b!5145798 () Bool)

(declare-fun res!2190503 () Bool)

(declare-fun e!3208651 () Bool)

(assert (=> b!5145798 (=> res!2190503 e!3208651)))

(assert (=> b!5145798 (= res!2190503 (not (is-Concat!23327 expr!117)))))

(assert (=> b!5145798 (= e!3208646 e!3208651)))

(declare-fun b!5145799 () Bool)

(declare-fun e!3208649 () Bool)

(assert (=> b!5145799 (= e!3208648 e!3208649)))

(declare-fun res!2190500 () Bool)

(assert (=> b!5145799 (= res!2190500 (not (nullable!4838 (reg!14811 expr!117))))))

(assert (=> b!5145799 (=> (not res!2190500) (not e!3208649))))

(declare-fun bm!359713 () Bool)

(assert (=> bm!359713 (= call!359716 (validRegex!6337 (ite c!886035 (reg!14811 expr!117) (ite c!886036 (regTwo!29477 expr!117) (regTwo!29476 expr!117)))))))

(declare-fun b!5145800 () Bool)

(assert (=> b!5145800 (= e!3208651 e!3208647)))

(declare-fun res!2190501 () Bool)

(assert (=> b!5145800 (=> (not res!2190501) (not e!3208647))))

(assert (=> b!5145800 (= res!2190501 call!359717)))

(declare-fun b!5145801 () Bool)

(assert (=> b!5145801 (= e!3208648 e!3208646)))

(assert (=> b!5145801 (= c!886036 (is-Union!14482 expr!117))))

(declare-fun b!5145802 () Bool)

(assert (=> b!5145802 (= e!3208649 call!359716)))

(assert (= (and d!1663421 (not res!2190499)) b!5145795))

(assert (= (and b!5145795 c!886035) b!5145799))

(assert (= (and b!5145795 (not c!886035)) b!5145801))

(assert (= (and b!5145799 res!2190500) b!5145802))

(assert (= (and b!5145801 c!886036) b!5145797))

(assert (= (and b!5145801 (not c!886036)) b!5145798))

(assert (= (and b!5145797 res!2190502) b!5145794))

(assert (= (and b!5145798 (not res!2190503)) b!5145800))

(assert (= (and b!5145800 res!2190501) b!5145796))

(assert (= (or b!5145794 b!5145796) bm!359711))

(assert (= (or b!5145797 b!5145800) bm!359712))

(assert (= (or b!5145802 bm!359711) bm!359713))

(declare-fun m!6206602 () Bool)

(assert (=> bm!359712 m!6206602))

(declare-fun m!6206604 () Bool)

(assert (=> b!5145799 m!6206604))

(declare-fun m!6206606 () Bool)

(assert (=> bm!359713 m!6206606))

(assert (=> start!544710 d!1663421))

(declare-fun bs!1201250 () Bool)

(declare-fun d!1663423 () Bool)

(assert (= bs!1201250 (and d!1663423 d!1663413)))

(declare-fun lambda!256866 () Int)

(assert (=> bs!1201250 (not (= lambda!256866 lambda!256863))))

(declare-fun forall!13958 (List!59886 Int) Bool)

(assert (=> d!1663423 (= (inv!79387 ctx!100) (forall!13958 (exprs!4366 ctx!100) lambda!256866))))

(declare-fun bs!1201251 () Bool)

(assert (= bs!1201251 d!1663423))

(declare-fun m!6206608 () Bool)

(assert (=> bs!1201251 m!6206608))

(assert (=> start!544710 d!1663423))

(declare-fun b!5145803 () Bool)

(declare-fun e!3208652 () Bool)

(declare-fun call!359721 () Bool)

(assert (=> b!5145803 (= e!3208652 call!359721)))

(declare-fun d!1663425 () Bool)

(declare-fun res!2190504 () Bool)

(declare-fun e!3208657 () Bool)

(assert (=> d!1663425 (=> res!2190504 e!3208657)))

(assert (=> d!1663425 (= res!2190504 (is-ElementMatch!14482 (regOne!29476 expr!117)))))

(assert (=> d!1663425 (= (validRegex!6337 (regOne!29476 expr!117)) e!3208657)))

(declare-fun b!5145804 () Bool)

(declare-fun e!3208655 () Bool)

(assert (=> b!5145804 (= e!3208657 e!3208655)))

(declare-fun c!886037 () Bool)

(assert (=> b!5145804 (= c!886037 (is-Star!14482 (regOne!29476 expr!117)))))

(declare-fun bm!359714 () Bool)

(declare-fun call!359719 () Bool)

(assert (=> bm!359714 (= call!359721 call!359719)))

(declare-fun b!5145805 () Bool)

(declare-fun e!3208654 () Bool)

(assert (=> b!5145805 (= e!3208654 call!359721)))

(declare-fun b!5145806 () Bool)

(declare-fun res!2190507 () Bool)

(assert (=> b!5145806 (=> (not res!2190507) (not e!3208652))))

(declare-fun call!359720 () Bool)

(assert (=> b!5145806 (= res!2190507 call!359720)))

(declare-fun e!3208653 () Bool)

(assert (=> b!5145806 (= e!3208653 e!3208652)))

(declare-fun bm!359715 () Bool)

(declare-fun c!886038 () Bool)

(assert (=> bm!359715 (= call!359720 (validRegex!6337 (ite c!886038 (regOne!29477 (regOne!29476 expr!117)) (regOne!29476 (regOne!29476 expr!117)))))))

(declare-fun b!5145807 () Bool)

(declare-fun res!2190508 () Bool)

(declare-fun e!3208658 () Bool)

(assert (=> b!5145807 (=> res!2190508 e!3208658)))

(assert (=> b!5145807 (= res!2190508 (not (is-Concat!23327 (regOne!29476 expr!117))))))

(assert (=> b!5145807 (= e!3208653 e!3208658)))

(declare-fun b!5145808 () Bool)

(declare-fun e!3208656 () Bool)

(assert (=> b!5145808 (= e!3208655 e!3208656)))

(declare-fun res!2190505 () Bool)

(assert (=> b!5145808 (= res!2190505 (not (nullable!4838 (reg!14811 (regOne!29476 expr!117)))))))

(assert (=> b!5145808 (=> (not res!2190505) (not e!3208656))))

(declare-fun bm!359716 () Bool)

(assert (=> bm!359716 (= call!359719 (validRegex!6337 (ite c!886037 (reg!14811 (regOne!29476 expr!117)) (ite c!886038 (regTwo!29477 (regOne!29476 expr!117)) (regTwo!29476 (regOne!29476 expr!117))))))))

(declare-fun b!5145809 () Bool)

(assert (=> b!5145809 (= e!3208658 e!3208654)))

(declare-fun res!2190506 () Bool)

(assert (=> b!5145809 (=> (not res!2190506) (not e!3208654))))

(assert (=> b!5145809 (= res!2190506 call!359720)))

(declare-fun b!5145810 () Bool)

(assert (=> b!5145810 (= e!3208655 e!3208653)))

(assert (=> b!5145810 (= c!886038 (is-Union!14482 (regOne!29476 expr!117)))))

(declare-fun b!5145811 () Bool)

(assert (=> b!5145811 (= e!3208656 call!359719)))

(assert (= (and d!1663425 (not res!2190504)) b!5145804))

(assert (= (and b!5145804 c!886037) b!5145808))

(assert (= (and b!5145804 (not c!886037)) b!5145810))

(assert (= (and b!5145808 res!2190505) b!5145811))

(assert (= (and b!5145810 c!886038) b!5145806))

(assert (= (and b!5145810 (not c!886038)) b!5145807))

(assert (= (and b!5145806 res!2190507) b!5145803))

(assert (= (and b!5145807 (not res!2190508)) b!5145809))

(assert (= (and b!5145809 res!2190506) b!5145805))

(assert (= (or b!5145803 b!5145805) bm!359714))

(assert (= (or b!5145806 b!5145809) bm!359715))

(assert (= (or b!5145811 bm!359714) bm!359716))

(declare-fun m!6206610 () Bool)

(assert (=> bm!359715 m!6206610))

(declare-fun m!6206612 () Bool)

(assert (=> b!5145808 m!6206612))

(declare-fun m!6206614 () Bool)

(assert (=> bm!359716 m!6206614))

(assert (=> b!5145712 d!1663425))

(declare-fun d!1663427 () Bool)

(declare-fun lostCauseFct!363 (Regex!14482) Bool)

(assert (=> d!1663427 (= (lostCause!1517 expr!117) (lostCauseFct!363 expr!117))))

(declare-fun bs!1201252 () Bool)

(assert (= bs!1201252 d!1663427))

(declare-fun m!6206616 () Bool)

(assert (=> bs!1201252 m!6206616))

(assert (=> b!5145717 d!1663427))

(declare-fun b!5145825 () Bool)

(declare-fun e!3208661 () Bool)

(declare-fun tp!1437223 () Bool)

(declare-fun tp!1437220 () Bool)

(assert (=> b!5145825 (= e!3208661 (and tp!1437223 tp!1437220))))

(declare-fun b!5145824 () Bool)

(declare-fun tp!1437222 () Bool)

(assert (=> b!5145824 (= e!3208661 tp!1437222)))

(declare-fun b!5145823 () Bool)

(declare-fun tp!1437221 () Bool)

(declare-fun tp!1437224 () Bool)

(assert (=> b!5145823 (= e!3208661 (and tp!1437221 tp!1437224))))

(declare-fun b!5145822 () Bool)

(assert (=> b!5145822 (= e!3208661 tp_is_empty!38113)))

(assert (=> b!5145715 (= tp!1437186 e!3208661)))

(assert (= (and b!5145715 (is-ElementMatch!14482 (regOne!29476 expr!117))) b!5145822))

(assert (= (and b!5145715 (is-Concat!23327 (regOne!29476 expr!117))) b!5145823))

(assert (= (and b!5145715 (is-Star!14482 (regOne!29476 expr!117))) b!5145824))

(assert (= (and b!5145715 (is-Union!14482 (regOne!29476 expr!117))) b!5145825))

(declare-fun b!5145829 () Bool)

(declare-fun e!3208662 () Bool)

(declare-fun tp!1437228 () Bool)

(declare-fun tp!1437225 () Bool)

(assert (=> b!5145829 (= e!3208662 (and tp!1437228 tp!1437225))))

(declare-fun b!5145828 () Bool)

(declare-fun tp!1437227 () Bool)

(assert (=> b!5145828 (= e!3208662 tp!1437227)))

(declare-fun b!5145827 () Bool)

(declare-fun tp!1437226 () Bool)

(declare-fun tp!1437229 () Bool)

(assert (=> b!5145827 (= e!3208662 (and tp!1437226 tp!1437229))))

(declare-fun b!5145826 () Bool)

(assert (=> b!5145826 (= e!3208662 tp_is_empty!38113)))

(assert (=> b!5145715 (= tp!1437187 e!3208662)))

(assert (= (and b!5145715 (is-ElementMatch!14482 (regTwo!29476 expr!117))) b!5145826))

(assert (= (and b!5145715 (is-Concat!23327 (regTwo!29476 expr!117))) b!5145827))

(assert (= (and b!5145715 (is-Star!14482 (regTwo!29476 expr!117))) b!5145828))

(assert (= (and b!5145715 (is-Union!14482 (regTwo!29476 expr!117))) b!5145829))

(declare-fun b!5145834 () Bool)

(declare-fun e!3208665 () Bool)

(declare-fun tp!1437234 () Bool)

(declare-fun tp!1437235 () Bool)

(assert (=> b!5145834 (= e!3208665 (and tp!1437234 tp!1437235))))

(assert (=> b!5145714 (= tp!1437189 e!3208665)))

(assert (= (and b!5145714 (is-Cons!59762 (exprs!4366 ctx!100))) b!5145834))

(declare-fun b!5145838 () Bool)

(declare-fun e!3208666 () Bool)

(declare-fun tp!1437239 () Bool)

(declare-fun tp!1437236 () Bool)

(assert (=> b!5145838 (= e!3208666 (and tp!1437239 tp!1437236))))

(declare-fun b!5145837 () Bool)

(declare-fun tp!1437238 () Bool)

(assert (=> b!5145837 (= e!3208666 tp!1437238)))

(declare-fun b!5145836 () Bool)

(declare-fun tp!1437237 () Bool)

(declare-fun tp!1437240 () Bool)

(assert (=> b!5145836 (= e!3208666 (and tp!1437237 tp!1437240))))

(declare-fun b!5145835 () Bool)

(assert (=> b!5145835 (= e!3208666 tp_is_empty!38113)))

(assert (=> b!5145709 (= tp!1437190 e!3208666)))

(assert (= (and b!5145709 (is-ElementMatch!14482 (reg!14811 expr!117))) b!5145835))

(assert (= (and b!5145709 (is-Concat!23327 (reg!14811 expr!117))) b!5145836))

(assert (= (and b!5145709 (is-Star!14482 (reg!14811 expr!117))) b!5145837))

(assert (= (and b!5145709 (is-Union!14482 (reg!14811 expr!117))) b!5145838))

(declare-fun b!5145842 () Bool)

(declare-fun e!3208667 () Bool)

(declare-fun tp!1437244 () Bool)

(declare-fun tp!1437241 () Bool)

(assert (=> b!5145842 (= e!3208667 (and tp!1437244 tp!1437241))))

(declare-fun b!5145841 () Bool)

(declare-fun tp!1437243 () Bool)

(assert (=> b!5145841 (= e!3208667 tp!1437243)))

(declare-fun b!5145840 () Bool)

(declare-fun tp!1437242 () Bool)

(declare-fun tp!1437245 () Bool)

(assert (=> b!5145840 (= e!3208667 (and tp!1437242 tp!1437245))))

(declare-fun b!5145839 () Bool)

(assert (=> b!5145839 (= e!3208667 tp_is_empty!38113)))

(assert (=> b!5145711 (= tp!1437191 e!3208667)))

(assert (= (and b!5145711 (is-ElementMatch!14482 (regOne!29477 expr!117))) b!5145839))

(assert (= (and b!5145711 (is-Concat!23327 (regOne!29477 expr!117))) b!5145840))

(assert (= (and b!5145711 (is-Star!14482 (regOne!29477 expr!117))) b!5145841))

(assert (= (and b!5145711 (is-Union!14482 (regOne!29477 expr!117))) b!5145842))

(declare-fun b!5145846 () Bool)

(declare-fun e!3208668 () Bool)

(declare-fun tp!1437249 () Bool)

(declare-fun tp!1437246 () Bool)

(assert (=> b!5145846 (= e!3208668 (and tp!1437249 tp!1437246))))

(declare-fun b!5145845 () Bool)

(declare-fun tp!1437248 () Bool)

(assert (=> b!5145845 (= e!3208668 tp!1437248)))

(declare-fun b!5145844 () Bool)

(declare-fun tp!1437247 () Bool)

(declare-fun tp!1437250 () Bool)

(assert (=> b!5145844 (= e!3208668 (and tp!1437247 tp!1437250))))

(declare-fun b!5145843 () Bool)

(assert (=> b!5145843 (= e!3208668 tp_is_empty!38113)))

(assert (=> b!5145711 (= tp!1437188 e!3208668)))

(assert (= (and b!5145711 (is-ElementMatch!14482 (regTwo!29477 expr!117))) b!5145843))

(assert (= (and b!5145711 (is-Concat!23327 (regTwo!29477 expr!117))) b!5145844))

(assert (= (and b!5145711 (is-Star!14482 (regTwo!29477 expr!117))) b!5145845))

(assert (= (and b!5145711 (is-Union!14482 (regTwo!29477 expr!117))) b!5145846))

(push 1)

(assert (not d!1663413))

(assert (not bm!359716))

(assert (not bm!359715))

(assert (not b!5145837))

(assert (not b!5145799))

(assert (not b!5145842))

(assert (not b!5145825))

(assert (not b!5145844))

(assert (not b!5145824))

(assert (not b!5145846))

(assert (not bm!359712))

(assert tp_is_empty!38113)

(assert (not b!5145827))

(assert (not b!5145829))

(assert (not b!5145838))

(assert (not b!5145845))

(assert (not b!5145836))

(assert (not b!5145841))

(assert (not b!5145840))

(assert (not b!5145823))

(assert (not d!1663423))

(assert (not d!1663411))

(assert (not bm!359713))

(assert (not d!1663427))

(assert (not b!5145828))

(assert (not b!5145808))

(assert (not b!5145834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

