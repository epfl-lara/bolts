; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718086 () Bool)

(assert start!718086)

(declare-fun b!7353554 () Bool)

(declare-fun e!4402944 () Bool)

(declare-fun e!4402942 () Bool)

(assert (=> b!7353554 (= e!4402944 e!4402942)))

(declare-fun res!2969475 () Bool)

(assert (=> b!7353554 (=> (not res!2969475) (not e!4402942))))

(declare-datatypes ((C!38634 0))(
  ( (C!38635 (val!29677 Int)) )
))
(declare-datatypes ((Regex!19180 0))(
  ( (ElementMatch!19180 (c!1366228 C!38634)) (Concat!28025 (regOne!38872 Regex!19180) (regTwo!38872 Regex!19180)) (EmptyExpr!19180) (Star!19180 (reg!19509 Regex!19180)) (EmptyLang!19180) (Union!19180 (regOne!38873 Regex!19180) (regTwo!38873 Regex!19180)) )
))
(declare-fun r1!2370 () Regex!19180)

(declare-fun c!10362 () C!38634)

(assert (=> b!7353554 (= res!2969475 (and (or (not (is-ElementMatch!19180 r1!2370)) (not (= c!10362 (c!1366228 r1!2370)))) (not (is-Union!19180 r1!2370))))))

(declare-datatypes ((List!71676 0))(
  ( (Nil!71552) (Cons!71552 (h!78000 Regex!19180) (t!386107 List!71676)) )
))
(declare-datatypes ((Context!16240 0))(
  ( (Context!16241 (exprs!8620 List!71676)) )
))
(declare-fun lt!2612739 () (Set Context!16240))

(declare-fun ct1!282 () Context!16240)

(declare-fun ct2!378 () Context!16240)

(declare-fun derivationStepZipperDown!3006 (Regex!19180 Context!16240 C!38634) (Set Context!16240))

(declare-fun ++!16998 (List!71676 List!71676) List!71676)

(assert (=> b!7353554 (= lt!2612739 (derivationStepZipperDown!3006 r1!2370 (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378))) c!10362))))

(declare-fun lambda!456798 () Int)

(declare-datatypes ((Unit!165313 0))(
  ( (Unit!165314) )
))
(declare-fun lt!2612738 () Unit!165313)

(declare-fun lemmaConcatPreservesForall!1855 (List!71676 List!71676 Int) Unit!165313)

(assert (=> b!7353554 (= lt!2612738 (lemmaConcatPreservesForall!1855 (exprs!8620 ct1!282) (exprs!8620 ct2!378) lambda!456798))))

(declare-fun b!7353555 () Bool)

(declare-fun e!4402941 () Bool)

(declare-fun nullable!8271 (Regex!19180) Bool)

(assert (=> b!7353555 (= e!4402941 (not (nullable!8271 (regOne!38872 r1!2370))))))

(declare-fun b!7353556 () Bool)

(declare-fun e!4402943 () Bool)

(declare-fun tp!2088736 () Bool)

(assert (=> b!7353556 (= e!4402943 tp!2088736)))

(declare-fun b!7353557 () Bool)

(declare-fun e!4402940 () Bool)

(declare-fun tp!2088737 () Bool)

(assert (=> b!7353557 (= e!4402940 tp!2088737)))

(declare-fun b!7353558 () Bool)

(declare-fun e!4402945 () Bool)

(declare-fun tp!2088730 () Bool)

(assert (=> b!7353558 (= e!4402945 tp!2088730)))

(declare-fun b!7353559 () Bool)

(declare-fun res!2969477 () Bool)

(assert (=> b!7353559 (=> (not res!2969477) (not e!4402942))))

(declare-fun validRegex!9776 (Regex!19180) Bool)

(assert (=> b!7353559 (= res!2969477 (validRegex!9776 (Star!19180 (reg!19509 r1!2370))))))

(declare-fun b!7353561 () Bool)

(assert (=> b!7353561 (= e!4402942 (not (validRegex!9776 (reg!19509 r1!2370))))))

(declare-fun b!7353562 () Bool)

(declare-fun res!2969481 () Bool)

(assert (=> b!7353562 (=> (not res!2969481) (not e!4402944))))

(declare-fun cWitness!61 () Context!16240)

(assert (=> b!7353562 (= res!2969481 (set.member cWitness!61 (derivationStepZipperDown!3006 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7353563 () Bool)

(declare-fun e!4402939 () Bool)

(declare-fun tp!2088735 () Bool)

(assert (=> b!7353563 (= e!4402939 tp!2088735)))

(declare-fun b!7353564 () Bool)

(declare-fun tp_is_empty!48605 () Bool)

(assert (=> b!7353564 (= e!4402943 tp_is_empty!48605)))

(declare-fun b!7353565 () Bool)

(declare-fun tp!2088732 () Bool)

(declare-fun tp!2088734 () Bool)

(assert (=> b!7353565 (= e!4402943 (and tp!2088732 tp!2088734))))

(declare-fun b!7353566 () Bool)

(declare-fun res!2969479 () Bool)

(assert (=> b!7353566 (=> (not res!2969479) (not e!4402942))))

(assert (=> b!7353566 (= res!2969479 e!4402941)))

(declare-fun res!2969478 () Bool)

(assert (=> b!7353566 (=> res!2969478 e!4402941)))

(assert (=> b!7353566 (= res!2969478 (not (is-Concat!28025 r1!2370)))))

(declare-fun b!7353567 () Bool)

(declare-fun tp!2088733 () Bool)

(declare-fun tp!2088731 () Bool)

(assert (=> b!7353567 (= e!4402943 (and tp!2088733 tp!2088731))))

(declare-fun res!2969480 () Bool)

(assert (=> start!718086 (=> (not res!2969480) (not e!4402944))))

(assert (=> start!718086 (= res!2969480 (validRegex!9776 r1!2370))))

(assert (=> start!718086 e!4402944))

(assert (=> start!718086 tp_is_empty!48605))

(declare-fun inv!91291 (Context!16240) Bool)

(assert (=> start!718086 (and (inv!91291 cWitness!61) e!4402939)))

(assert (=> start!718086 (and (inv!91291 ct1!282) e!4402940)))

(assert (=> start!718086 e!4402943))

(assert (=> start!718086 (and (inv!91291 ct2!378) e!4402945)))

(declare-fun b!7353560 () Bool)

(declare-fun res!2969476 () Bool)

(assert (=> b!7353560 (=> (not res!2969476) (not e!4402942))))

(assert (=> b!7353560 (= res!2969476 (and (not (is-Concat!28025 r1!2370)) (is-Star!19180 r1!2370)))))

(assert (= (and start!718086 res!2969480) b!7353562))

(assert (= (and b!7353562 res!2969481) b!7353554))

(assert (= (and b!7353554 res!2969475) b!7353566))

(assert (= (and b!7353566 (not res!2969478)) b!7353555))

(assert (= (and b!7353566 res!2969479) b!7353560))

(assert (= (and b!7353560 res!2969476) b!7353559))

(assert (= (and b!7353559 res!2969477) b!7353561))

(assert (= start!718086 b!7353563))

(assert (= start!718086 b!7353557))

(assert (= (and start!718086 (is-ElementMatch!19180 r1!2370)) b!7353564))

(assert (= (and start!718086 (is-Concat!28025 r1!2370)) b!7353567))

(assert (= (and start!718086 (is-Star!19180 r1!2370)) b!7353556))

(assert (= (and start!718086 (is-Union!19180 r1!2370)) b!7353565))

(assert (= start!718086 b!7353558))

(declare-fun m!8014066 () Bool)

(assert (=> b!7353561 m!8014066))

(declare-fun m!8014068 () Bool)

(assert (=> b!7353559 m!8014068))

(declare-fun m!8014070 () Bool)

(assert (=> b!7353555 m!8014070))

(declare-fun m!8014072 () Bool)

(assert (=> b!7353562 m!8014072))

(declare-fun m!8014074 () Bool)

(assert (=> b!7353562 m!8014074))

(declare-fun m!8014076 () Bool)

(assert (=> b!7353554 m!8014076))

(declare-fun m!8014078 () Bool)

(assert (=> b!7353554 m!8014078))

(declare-fun m!8014080 () Bool)

(assert (=> b!7353554 m!8014080))

(declare-fun m!8014082 () Bool)

(assert (=> start!718086 m!8014082))

(declare-fun m!8014084 () Bool)

(assert (=> start!718086 m!8014084))

(declare-fun m!8014086 () Bool)

(assert (=> start!718086 m!8014086))

(declare-fun m!8014088 () Bool)

(assert (=> start!718086 m!8014088))

(push 1)

(assert (not b!7353554))

(assert (not b!7353559))

(assert tp_is_empty!48605)

(assert (not b!7353567))

(assert (not b!7353562))

(assert (not b!7353555))

(assert (not b!7353556))

(assert (not b!7353565))

(assert (not start!718086))

(assert (not b!7353558))

(assert (not b!7353563))

(assert (not b!7353561))

(assert (not b!7353557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7353628 () Bool)

(declare-fun e!4402984 () Bool)

(declare-fun e!4402985 () Bool)

(assert (=> b!7353628 (= e!4402984 e!4402985)))

(declare-fun c!1366235 () Bool)

(assert (=> b!7353628 (= c!1366235 (is-Union!19180 r1!2370))))

(declare-fun b!7353629 () Bool)

(declare-fun e!4402987 () Bool)

(declare-fun call!672962 () Bool)

(assert (=> b!7353629 (= e!4402987 call!672962)))

(declare-fun b!7353630 () Bool)

(declare-fun e!4402983 () Bool)

(assert (=> b!7353630 (= e!4402983 e!4402984)))

(declare-fun c!1366234 () Bool)

(assert (=> b!7353630 (= c!1366234 (is-Star!19180 r1!2370))))

(declare-fun b!7353631 () Bool)

(declare-fun e!4402981 () Bool)

(declare-fun call!672961 () Bool)

(assert (=> b!7353631 (= e!4402981 call!672961)))

(declare-fun bm!672955 () Bool)

(assert (=> bm!672955 (= call!672962 (validRegex!9776 (ite c!1366234 (reg!19509 r1!2370) (ite c!1366235 (regOne!38873 r1!2370) (regTwo!38872 r1!2370)))))))

(declare-fun bm!672956 () Bool)

(assert (=> bm!672956 (= call!672961 (validRegex!9776 (ite c!1366235 (regTwo!38873 r1!2370) (regOne!38872 r1!2370))))))

(declare-fun b!7353632 () Bool)

(declare-fun e!4402986 () Bool)

(declare-fun call!672960 () Bool)

(assert (=> b!7353632 (= e!4402986 call!672960)))

(declare-fun d!2281029 () Bool)

(declare-fun res!2969514 () Bool)

(assert (=> d!2281029 (=> res!2969514 e!4402983)))

(assert (=> d!2281029 (= res!2969514 (is-ElementMatch!19180 r1!2370))))

(assert (=> d!2281029 (= (validRegex!9776 r1!2370) e!4402983)))

(declare-fun b!7353633 () Bool)

(assert (=> b!7353633 (= e!4402984 e!4402987)))

(declare-fun res!2969515 () Bool)

(assert (=> b!7353633 (= res!2969515 (not (nullable!8271 (reg!19509 r1!2370))))))

(assert (=> b!7353633 (=> (not res!2969515) (not e!4402987))))

(declare-fun bm!672957 () Bool)

(assert (=> bm!672957 (= call!672960 call!672962)))

(declare-fun b!7353634 () Bool)

(declare-fun e!4402982 () Bool)

(assert (=> b!7353634 (= e!4402982 e!4402986)))

(declare-fun res!2969513 () Bool)

(assert (=> b!7353634 (=> (not res!2969513) (not e!4402986))))

(assert (=> b!7353634 (= res!2969513 call!672961)))

(declare-fun b!7353635 () Bool)

(declare-fun res!2969517 () Bool)

(assert (=> b!7353635 (=> (not res!2969517) (not e!4402981))))

(assert (=> b!7353635 (= res!2969517 call!672960)))

(assert (=> b!7353635 (= e!4402985 e!4402981)))

(declare-fun b!7353636 () Bool)

(declare-fun res!2969516 () Bool)

(assert (=> b!7353636 (=> res!2969516 e!4402982)))

(assert (=> b!7353636 (= res!2969516 (not (is-Concat!28025 r1!2370)))))

(assert (=> b!7353636 (= e!4402985 e!4402982)))

(assert (= (and d!2281029 (not res!2969514)) b!7353630))

(assert (= (and b!7353630 c!1366234) b!7353633))

(assert (= (and b!7353630 (not c!1366234)) b!7353628))

(assert (= (and b!7353633 res!2969515) b!7353629))

(assert (= (and b!7353628 c!1366235) b!7353635))

(assert (= (and b!7353628 (not c!1366235)) b!7353636))

(assert (= (and b!7353635 res!2969517) b!7353631))

(assert (= (and b!7353636 (not res!2969516)) b!7353634))

(assert (= (and b!7353634 res!2969513) b!7353632))

(assert (= (or b!7353635 b!7353632) bm!672957))

(assert (= (or b!7353631 b!7353634) bm!672956))

(assert (= (or b!7353629 bm!672957) bm!672955))

(declare-fun m!8014114 () Bool)

(assert (=> bm!672955 m!8014114))

(declare-fun m!8014116 () Bool)

(assert (=> bm!672956 m!8014116))

(declare-fun m!8014118 () Bool)

(assert (=> b!7353633 m!8014118))

(assert (=> start!718086 d!2281029))

(declare-fun bs!1919536 () Bool)

(declare-fun d!2281031 () Bool)

(assert (= bs!1919536 (and d!2281031 b!7353554)))

(declare-fun lambda!456804 () Int)

(assert (=> bs!1919536 (= lambda!456804 lambda!456798)))

(declare-fun forall!18002 (List!71676 Int) Bool)

(assert (=> d!2281031 (= (inv!91291 cWitness!61) (forall!18002 (exprs!8620 cWitness!61) lambda!456804))))

(declare-fun bs!1919537 () Bool)

(assert (= bs!1919537 d!2281031))

(declare-fun m!8014120 () Bool)

(assert (=> bs!1919537 m!8014120))

(assert (=> start!718086 d!2281031))

(declare-fun bs!1919538 () Bool)

(declare-fun d!2281033 () Bool)

(assert (= bs!1919538 (and d!2281033 b!7353554)))

(declare-fun lambda!456805 () Int)

(assert (=> bs!1919538 (= lambda!456805 lambda!456798)))

(declare-fun bs!1919539 () Bool)

(assert (= bs!1919539 (and d!2281033 d!2281031)))

(assert (=> bs!1919539 (= lambda!456805 lambda!456804)))

(assert (=> d!2281033 (= (inv!91291 ct1!282) (forall!18002 (exprs!8620 ct1!282) lambda!456805))))

(declare-fun bs!1919540 () Bool)

(assert (= bs!1919540 d!2281033))

(declare-fun m!8014122 () Bool)

(assert (=> bs!1919540 m!8014122))

(assert (=> start!718086 d!2281033))

(declare-fun bs!1919541 () Bool)

(declare-fun d!2281035 () Bool)

(assert (= bs!1919541 (and d!2281035 b!7353554)))

(declare-fun lambda!456806 () Int)

(assert (=> bs!1919541 (= lambda!456806 lambda!456798)))

(declare-fun bs!1919542 () Bool)

(assert (= bs!1919542 (and d!2281035 d!2281031)))

(assert (=> bs!1919542 (= lambda!456806 lambda!456804)))

(declare-fun bs!1919543 () Bool)

(assert (= bs!1919543 (and d!2281035 d!2281033)))

(assert (=> bs!1919543 (= lambda!456806 lambda!456805)))

(assert (=> d!2281035 (= (inv!91291 ct2!378) (forall!18002 (exprs!8620 ct2!378) lambda!456806))))

(declare-fun bs!1919544 () Bool)

(assert (= bs!1919544 d!2281035))

(declare-fun m!8014124 () Bool)

(assert (=> bs!1919544 m!8014124))

(assert (=> start!718086 d!2281035))

(declare-fun d!2281039 () Bool)

(declare-fun nullableFct!3302 (Regex!19180) Bool)

(assert (=> d!2281039 (= (nullable!8271 (regOne!38872 r1!2370)) (nullableFct!3302 (regOne!38872 r1!2370)))))

(declare-fun bs!1919545 () Bool)

(assert (= bs!1919545 d!2281039))

(declare-fun m!8014126 () Bool)

(assert (=> bs!1919545 m!8014126))

(assert (=> b!7353555 d!2281039))

(declare-fun b!7353637 () Bool)

(declare-fun e!4402991 () Bool)

(declare-fun e!4402992 () Bool)

(assert (=> b!7353637 (= e!4402991 e!4402992)))

(declare-fun c!1366237 () Bool)

(assert (=> b!7353637 (= c!1366237 (is-Union!19180 (reg!19509 r1!2370)))))

(declare-fun b!7353638 () Bool)

(declare-fun e!4402994 () Bool)

(declare-fun call!672965 () Bool)

(assert (=> b!7353638 (= e!4402994 call!672965)))

(declare-fun b!7353639 () Bool)

(declare-fun e!4402990 () Bool)

(assert (=> b!7353639 (= e!4402990 e!4402991)))

(declare-fun c!1366236 () Bool)

(assert (=> b!7353639 (= c!1366236 (is-Star!19180 (reg!19509 r1!2370)))))

(declare-fun b!7353640 () Bool)

(declare-fun e!4402988 () Bool)

(declare-fun call!672964 () Bool)

(assert (=> b!7353640 (= e!4402988 call!672964)))

(declare-fun bm!672958 () Bool)

(assert (=> bm!672958 (= call!672965 (validRegex!9776 (ite c!1366236 (reg!19509 (reg!19509 r1!2370)) (ite c!1366237 (regOne!38873 (reg!19509 r1!2370)) (regTwo!38872 (reg!19509 r1!2370))))))))

(declare-fun bm!672959 () Bool)

(assert (=> bm!672959 (= call!672964 (validRegex!9776 (ite c!1366237 (regTwo!38873 (reg!19509 r1!2370)) (regOne!38872 (reg!19509 r1!2370)))))))

(declare-fun b!7353641 () Bool)

(declare-fun e!4402993 () Bool)

(declare-fun call!672963 () Bool)

(assert (=> b!7353641 (= e!4402993 call!672963)))

(declare-fun d!2281041 () Bool)

(declare-fun res!2969519 () Bool)

(assert (=> d!2281041 (=> res!2969519 e!4402990)))

(assert (=> d!2281041 (= res!2969519 (is-ElementMatch!19180 (reg!19509 r1!2370)))))

(assert (=> d!2281041 (= (validRegex!9776 (reg!19509 r1!2370)) e!4402990)))

(declare-fun b!7353642 () Bool)

(assert (=> b!7353642 (= e!4402991 e!4402994)))

(declare-fun res!2969520 () Bool)

(assert (=> b!7353642 (= res!2969520 (not (nullable!8271 (reg!19509 (reg!19509 r1!2370)))))))

(assert (=> b!7353642 (=> (not res!2969520) (not e!4402994))))

(declare-fun bm!672960 () Bool)

(assert (=> bm!672960 (= call!672963 call!672965)))

(declare-fun b!7353643 () Bool)

(declare-fun e!4402989 () Bool)

(assert (=> b!7353643 (= e!4402989 e!4402993)))

(declare-fun res!2969518 () Bool)

(assert (=> b!7353643 (=> (not res!2969518) (not e!4402993))))

(assert (=> b!7353643 (= res!2969518 call!672964)))

(declare-fun b!7353644 () Bool)

(declare-fun res!2969522 () Bool)

(assert (=> b!7353644 (=> (not res!2969522) (not e!4402988))))

(assert (=> b!7353644 (= res!2969522 call!672963)))

(assert (=> b!7353644 (= e!4402992 e!4402988)))

(declare-fun b!7353645 () Bool)

(declare-fun res!2969521 () Bool)

(assert (=> b!7353645 (=> res!2969521 e!4402989)))

(assert (=> b!7353645 (= res!2969521 (not (is-Concat!28025 (reg!19509 r1!2370))))))

(assert (=> b!7353645 (= e!4402992 e!4402989)))

(assert (= (and d!2281041 (not res!2969519)) b!7353639))

(assert (= (and b!7353639 c!1366236) b!7353642))

(assert (= (and b!7353639 (not c!1366236)) b!7353637))

(assert (= (and b!7353642 res!2969520) b!7353638))

(assert (= (and b!7353637 c!1366237) b!7353644))

(assert (= (and b!7353637 (not c!1366237)) b!7353645))

(assert (= (and b!7353644 res!2969522) b!7353640))

(assert (= (and b!7353645 (not res!2969521)) b!7353643))

(assert (= (and b!7353643 res!2969518) b!7353641))

(assert (= (or b!7353644 b!7353641) bm!672960))

(assert (= (or b!7353640 b!7353643) bm!672959))

(assert (= (or b!7353638 bm!672960) bm!672958))

(declare-fun m!8014128 () Bool)

(assert (=> bm!672958 m!8014128))

(declare-fun m!8014130 () Bool)

(assert (=> bm!672959 m!8014130))

(declare-fun m!8014132 () Bool)

(assert (=> b!7353642 m!8014132))

(assert (=> b!7353561 d!2281041))

(declare-fun bm!672979 () Bool)

(declare-fun call!672986 () List!71676)

(declare-fun c!1366254 () Bool)

(declare-fun call!672988 () (Set Context!16240))

(assert (=> bm!672979 (= call!672988 (derivationStepZipperDown!3006 (ite c!1366254 (regOne!38873 r1!2370) (regOne!38872 r1!2370)) (ite c!1366254 ct1!282 (Context!16241 call!672986)) c!10362))))

(declare-fun b!7353686 () Bool)

(declare-fun e!4403023 () (Set Context!16240))

(declare-fun call!672985 () (Set Context!16240))

(assert (=> b!7353686 (= e!4403023 call!672985)))

(declare-fun b!7353687 () Bool)

(declare-fun c!1366255 () Bool)

(declare-fun e!4403022 () Bool)

(assert (=> b!7353687 (= c!1366255 e!4403022)))

(declare-fun res!2969535 () Bool)

(assert (=> b!7353687 (=> (not res!2969535) (not e!4403022))))

(assert (=> b!7353687 (= res!2969535 (is-Concat!28025 r1!2370))))

(declare-fun e!4403024 () (Set Context!16240))

(declare-fun e!4403025 () (Set Context!16240))

(assert (=> b!7353687 (= e!4403024 e!4403025)))

(declare-fun b!7353688 () Bool)

(declare-fun call!672984 () (Set Context!16240))

(assert (=> b!7353688 (= e!4403025 (set.union call!672988 call!672984))))

(declare-fun bm!672980 () Bool)

(assert (=> bm!672980 (= call!672985 call!672984)))

(declare-fun b!7353689 () Bool)

(declare-fun e!4403021 () (Set Context!16240))

(assert (=> b!7353689 (= e!4403021 call!672985)))

(declare-fun call!672987 () (Set Context!16240))

(declare-fun call!672989 () List!71676)

(declare-fun bm!672981 () Bool)

(declare-fun c!1366253 () Bool)

(assert (=> bm!672981 (= call!672987 (derivationStepZipperDown!3006 (ite c!1366254 (regTwo!38873 r1!2370) (ite c!1366255 (regTwo!38872 r1!2370) (ite c!1366253 (regOne!38872 r1!2370) (reg!19509 r1!2370)))) (ite (or c!1366254 c!1366255) ct1!282 (Context!16241 call!672989)) c!10362))))

(declare-fun b!7353690 () Bool)

(declare-fun c!1366252 () Bool)

(assert (=> b!7353690 (= c!1366252 (is-Star!19180 r1!2370))))

(assert (=> b!7353690 (= e!4403023 e!4403021)))

(declare-fun b!7353691 () Bool)

(assert (=> b!7353691 (= e!4403022 (nullable!8271 (regOne!38872 r1!2370)))))

(declare-fun bm!672982 () Bool)

(declare-fun $colon$colon!3178 (List!71676 Regex!19180) List!71676)

(assert (=> bm!672982 (= call!672986 ($colon$colon!3178 (exprs!8620 ct1!282) (ite (or c!1366255 c!1366253) (regTwo!38872 r1!2370) r1!2370)))))

(declare-fun d!2281043 () Bool)

(declare-fun c!1366256 () Bool)

(assert (=> d!2281043 (= c!1366256 (and (is-ElementMatch!19180 r1!2370) (= (c!1366228 r1!2370) c!10362)))))

(declare-fun e!4403026 () (Set Context!16240))

(assert (=> d!2281043 (= (derivationStepZipperDown!3006 r1!2370 ct1!282 c!10362) e!4403026)))

(declare-fun bm!672983 () Bool)

(assert (=> bm!672983 (= call!672984 call!672987)))

(declare-fun b!7353692 () Bool)

(assert (=> b!7353692 (= e!4403024 (set.union call!672988 call!672987))))

(declare-fun b!7353693 () Bool)

(assert (=> b!7353693 (= e!4403025 e!4403023)))

(assert (=> b!7353693 (= c!1366253 (is-Concat!28025 r1!2370))))

(declare-fun b!7353694 () Bool)

(assert (=> b!7353694 (= e!4403026 (set.insert ct1!282 (as set.empty (Set Context!16240))))))

(declare-fun bm!672984 () Bool)

(assert (=> bm!672984 (= call!672989 call!672986)))

(declare-fun b!7353695 () Bool)

(assert (=> b!7353695 (= e!4403021 (as set.empty (Set Context!16240)))))

(declare-fun b!7353696 () Bool)

(assert (=> b!7353696 (= e!4403026 e!4403024)))

(assert (=> b!7353696 (= c!1366254 (is-Union!19180 r1!2370))))

(assert (= (and d!2281043 c!1366256) b!7353694))

(assert (= (and d!2281043 (not c!1366256)) b!7353696))

(assert (= (and b!7353696 c!1366254) b!7353692))

(assert (= (and b!7353696 (not c!1366254)) b!7353687))

(assert (= (and b!7353687 res!2969535) b!7353691))

(assert (= (and b!7353687 c!1366255) b!7353688))

(assert (= (and b!7353687 (not c!1366255)) b!7353693))

(assert (= (and b!7353693 c!1366253) b!7353686))

(assert (= (and b!7353693 (not c!1366253)) b!7353690))

(assert (= (and b!7353690 c!1366252) b!7353689))

(assert (= (and b!7353690 (not c!1366252)) b!7353695))

(assert (= (or b!7353686 b!7353689) bm!672984))

(assert (= (or b!7353686 b!7353689) bm!672980))

(assert (= (or b!7353688 bm!672980) bm!672983))

(assert (= (or b!7353688 bm!672984) bm!672982))

(assert (= (or b!7353692 bm!672983) bm!672981))

(assert (= (or b!7353692 b!7353688) bm!672979))

(declare-fun m!8014134 () Bool)

(assert (=> b!7353694 m!8014134))

(assert (=> b!7353691 m!8014070))

(declare-fun m!8014136 () Bool)

(assert (=> bm!672981 m!8014136))

(declare-fun m!8014138 () Bool)

(assert (=> bm!672982 m!8014138))

(declare-fun m!8014140 () Bool)

(assert (=> bm!672979 m!8014140))

(assert (=> b!7353562 d!2281043))

(declare-fun b!7353697 () Bool)

(declare-fun e!4403030 () Bool)

(declare-fun e!4403031 () Bool)

(assert (=> b!7353697 (= e!4403030 e!4403031)))

(declare-fun c!1366258 () Bool)

(assert (=> b!7353697 (= c!1366258 (is-Union!19180 (Star!19180 (reg!19509 r1!2370))))))

(declare-fun b!7353698 () Bool)

(declare-fun e!4403033 () Bool)

(declare-fun call!672992 () Bool)

(assert (=> b!7353698 (= e!4403033 call!672992)))

(declare-fun b!7353699 () Bool)

(declare-fun e!4403029 () Bool)

(assert (=> b!7353699 (= e!4403029 e!4403030)))

(declare-fun c!1366257 () Bool)

(assert (=> b!7353699 (= c!1366257 (is-Star!19180 (Star!19180 (reg!19509 r1!2370))))))

(declare-fun b!7353700 () Bool)

(declare-fun e!4403027 () Bool)

(declare-fun call!672991 () Bool)

(assert (=> b!7353700 (= e!4403027 call!672991)))

(declare-fun bm!672985 () Bool)

(assert (=> bm!672985 (= call!672992 (validRegex!9776 (ite c!1366257 (reg!19509 (Star!19180 (reg!19509 r1!2370))) (ite c!1366258 (regOne!38873 (Star!19180 (reg!19509 r1!2370))) (regTwo!38872 (Star!19180 (reg!19509 r1!2370)))))))))

(declare-fun bm!672986 () Bool)

(assert (=> bm!672986 (= call!672991 (validRegex!9776 (ite c!1366258 (regTwo!38873 (Star!19180 (reg!19509 r1!2370))) (regOne!38872 (Star!19180 (reg!19509 r1!2370))))))))

(declare-fun b!7353701 () Bool)

(declare-fun e!4403032 () Bool)

(declare-fun call!672990 () Bool)

(assert (=> b!7353701 (= e!4403032 call!672990)))

(declare-fun d!2281045 () Bool)

(declare-fun res!2969537 () Bool)

(assert (=> d!2281045 (=> res!2969537 e!4403029)))

(assert (=> d!2281045 (= res!2969537 (is-ElementMatch!19180 (Star!19180 (reg!19509 r1!2370))))))

(assert (=> d!2281045 (= (validRegex!9776 (Star!19180 (reg!19509 r1!2370))) e!4403029)))

(declare-fun b!7353702 () Bool)

(assert (=> b!7353702 (= e!4403030 e!4403033)))

(declare-fun res!2969538 () Bool)

(assert (=> b!7353702 (= res!2969538 (not (nullable!8271 (reg!19509 (Star!19180 (reg!19509 r1!2370))))))))

(assert (=> b!7353702 (=> (not res!2969538) (not e!4403033))))

(declare-fun bm!672987 () Bool)

(assert (=> bm!672987 (= call!672990 call!672992)))

(declare-fun b!7353703 () Bool)

(declare-fun e!4403028 () Bool)

(assert (=> b!7353703 (= e!4403028 e!4403032)))

(declare-fun res!2969536 () Bool)

(assert (=> b!7353703 (=> (not res!2969536) (not e!4403032))))

(assert (=> b!7353703 (= res!2969536 call!672991)))

(declare-fun b!7353704 () Bool)

(declare-fun res!2969540 () Bool)

(assert (=> b!7353704 (=> (not res!2969540) (not e!4403027))))

(assert (=> b!7353704 (= res!2969540 call!672990)))

(assert (=> b!7353704 (= e!4403031 e!4403027)))

(declare-fun b!7353705 () Bool)

(declare-fun res!2969539 () Bool)

(assert (=> b!7353705 (=> res!2969539 e!4403028)))

(assert (=> b!7353705 (= res!2969539 (not (is-Concat!28025 (Star!19180 (reg!19509 r1!2370)))))))

(assert (=> b!7353705 (= e!4403031 e!4403028)))

(assert (= (and d!2281045 (not res!2969537)) b!7353699))

(assert (= (and b!7353699 c!1366257) b!7353702))

(assert (= (and b!7353699 (not c!1366257)) b!7353697))

(assert (= (and b!7353702 res!2969538) b!7353698))

(assert (= (and b!7353697 c!1366258) b!7353704))

(assert (= (and b!7353697 (not c!1366258)) b!7353705))

(assert (= (and b!7353704 res!2969540) b!7353700))

(assert (= (and b!7353705 (not res!2969539)) b!7353703))

(assert (= (and b!7353703 res!2969536) b!7353701))

(assert (= (or b!7353704 b!7353701) bm!672987))

(assert (= (or b!7353700 b!7353703) bm!672986))

(assert (= (or b!7353698 bm!672987) bm!672985))

(declare-fun m!8014142 () Bool)

(assert (=> bm!672985 m!8014142))

(declare-fun m!8014144 () Bool)

(assert (=> bm!672986 m!8014144))

(declare-fun m!8014146 () Bool)

(assert (=> b!7353702 m!8014146))

(assert (=> b!7353559 d!2281045))

(declare-fun c!1366261 () Bool)

(declare-fun call!672995 () List!71676)

(declare-fun call!672997 () (Set Context!16240))

(declare-fun bm!672988 () Bool)

(assert (=> bm!672988 (= call!672997 (derivationStepZipperDown!3006 (ite c!1366261 (regOne!38873 r1!2370) (regOne!38872 r1!2370)) (ite c!1366261 (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378))) (Context!16241 call!672995)) c!10362))))

(declare-fun b!7353706 () Bool)

(declare-fun e!4403036 () (Set Context!16240))

(declare-fun call!672994 () (Set Context!16240))

(assert (=> b!7353706 (= e!4403036 call!672994)))

(declare-fun b!7353707 () Bool)

(declare-fun c!1366262 () Bool)

(declare-fun e!4403035 () Bool)

(assert (=> b!7353707 (= c!1366262 e!4403035)))

(declare-fun res!2969541 () Bool)

(assert (=> b!7353707 (=> (not res!2969541) (not e!4403035))))

(assert (=> b!7353707 (= res!2969541 (is-Concat!28025 r1!2370))))

(declare-fun e!4403037 () (Set Context!16240))

(declare-fun e!4403038 () (Set Context!16240))

(assert (=> b!7353707 (= e!4403037 e!4403038)))

(declare-fun b!7353708 () Bool)

(declare-fun call!672993 () (Set Context!16240))

(assert (=> b!7353708 (= e!4403038 (set.union call!672997 call!672993))))

(declare-fun bm!672989 () Bool)

(assert (=> bm!672989 (= call!672994 call!672993)))

(declare-fun b!7353709 () Bool)

(declare-fun e!4403034 () (Set Context!16240))

(assert (=> b!7353709 (= e!4403034 call!672994)))

(declare-fun call!672996 () (Set Context!16240))

(declare-fun call!672998 () List!71676)

(declare-fun c!1366260 () Bool)

(declare-fun bm!672990 () Bool)

(assert (=> bm!672990 (= call!672996 (derivationStepZipperDown!3006 (ite c!1366261 (regTwo!38873 r1!2370) (ite c!1366262 (regTwo!38872 r1!2370) (ite c!1366260 (regOne!38872 r1!2370) (reg!19509 r1!2370)))) (ite (or c!1366261 c!1366262) (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378))) (Context!16241 call!672998)) c!10362))))

(declare-fun b!7353710 () Bool)

(declare-fun c!1366259 () Bool)

(assert (=> b!7353710 (= c!1366259 (is-Star!19180 r1!2370))))

(assert (=> b!7353710 (= e!4403036 e!4403034)))

(declare-fun b!7353711 () Bool)

(assert (=> b!7353711 (= e!4403035 (nullable!8271 (regOne!38872 r1!2370)))))

(declare-fun bm!672991 () Bool)

(assert (=> bm!672991 (= call!672995 ($colon$colon!3178 (exprs!8620 (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378)))) (ite (or c!1366262 c!1366260) (regTwo!38872 r1!2370) r1!2370)))))

(declare-fun d!2281047 () Bool)

(declare-fun c!1366263 () Bool)

(assert (=> d!2281047 (= c!1366263 (and (is-ElementMatch!19180 r1!2370) (= (c!1366228 r1!2370) c!10362)))))

(declare-fun e!4403039 () (Set Context!16240))

(assert (=> d!2281047 (= (derivationStepZipperDown!3006 r1!2370 (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378))) c!10362) e!4403039)))

(declare-fun bm!672992 () Bool)

(assert (=> bm!672992 (= call!672993 call!672996)))

(declare-fun b!7353712 () Bool)

(assert (=> b!7353712 (= e!4403037 (set.union call!672997 call!672996))))

(declare-fun b!7353713 () Bool)

(assert (=> b!7353713 (= e!4403038 e!4403036)))

(assert (=> b!7353713 (= c!1366260 (is-Concat!28025 r1!2370))))

(declare-fun b!7353714 () Bool)

(assert (=> b!7353714 (= e!4403039 (set.insert (Context!16241 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378))) (as set.empty (Set Context!16240))))))

(declare-fun bm!672993 () Bool)

(assert (=> bm!672993 (= call!672998 call!672995)))

(declare-fun b!7353715 () Bool)

(assert (=> b!7353715 (= e!4403034 (as set.empty (Set Context!16240)))))

(declare-fun b!7353716 () Bool)

(assert (=> b!7353716 (= e!4403039 e!4403037)))

(assert (=> b!7353716 (= c!1366261 (is-Union!19180 r1!2370))))

(assert (= (and d!2281047 c!1366263) b!7353714))

(assert (= (and d!2281047 (not c!1366263)) b!7353716))

(assert (= (and b!7353716 c!1366261) b!7353712))

(assert (= (and b!7353716 (not c!1366261)) b!7353707))

(assert (= (and b!7353707 res!2969541) b!7353711))

(assert (= (and b!7353707 c!1366262) b!7353708))

(assert (= (and b!7353707 (not c!1366262)) b!7353713))

(assert (= (and b!7353713 c!1366260) b!7353706))

(assert (= (and b!7353713 (not c!1366260)) b!7353710))

(assert (= (and b!7353710 c!1366259) b!7353709))

(assert (= (and b!7353710 (not c!1366259)) b!7353715))

(assert (= (or b!7353706 b!7353709) bm!672993))

(assert (= (or b!7353706 b!7353709) bm!672989))

(assert (= (or b!7353708 bm!672989) bm!672992))

(assert (= (or b!7353708 bm!672993) bm!672991))

(assert (= (or b!7353712 bm!672992) bm!672990))

(assert (= (or b!7353712 b!7353708) bm!672988))

(declare-fun m!8014148 () Bool)

(assert (=> b!7353714 m!8014148))

(assert (=> b!7353711 m!8014070))

(declare-fun m!8014150 () Bool)

(assert (=> bm!672990 m!8014150))

(declare-fun m!8014152 () Bool)

(assert (=> bm!672991 m!8014152))

(declare-fun m!8014154 () Bool)

(assert (=> bm!672988 m!8014154))

(assert (=> b!7353554 d!2281047))

(declare-fun b!7353743 () Bool)

(declare-fun e!4403059 () List!71676)

(assert (=> b!7353743 (= e!4403059 (exprs!8620 ct2!378))))

(declare-fun d!2281049 () Bool)

(declare-fun e!4403058 () Bool)

(assert (=> d!2281049 e!4403058))

(declare-fun res!2969556 () Bool)

(assert (=> d!2281049 (=> (not res!2969556) (not e!4403058))))

(declare-fun lt!2612748 () List!71676)

(declare-fun content!15086 (List!71676) (Set Regex!19180))

(assert (=> d!2281049 (= res!2969556 (= (content!15086 lt!2612748) (set.union (content!15086 (exprs!8620 ct1!282)) (content!15086 (exprs!8620 ct2!378)))))))

(assert (=> d!2281049 (= lt!2612748 e!4403059)))

(declare-fun c!1366270 () Bool)

(assert (=> d!2281049 (= c!1366270 (is-Nil!71552 (exprs!8620 ct1!282)))))

(assert (=> d!2281049 (= (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378)) lt!2612748)))

(declare-fun b!7353744 () Bool)

(assert (=> b!7353744 (= e!4403059 (Cons!71552 (h!78000 (exprs!8620 ct1!282)) (++!16998 (t!386107 (exprs!8620 ct1!282)) (exprs!8620 ct2!378))))))

(declare-fun b!7353745 () Bool)

(declare-fun res!2969557 () Bool)

(assert (=> b!7353745 (=> (not res!2969557) (not e!4403058))))

(declare-fun size!42064 (List!71676) Int)

(assert (=> b!7353745 (= res!2969557 (= (size!42064 lt!2612748) (+ (size!42064 (exprs!8620 ct1!282)) (size!42064 (exprs!8620 ct2!378)))))))

(declare-fun b!7353746 () Bool)

(assert (=> b!7353746 (= e!4403058 (or (not (= (exprs!8620 ct2!378) Nil!71552)) (= lt!2612748 (exprs!8620 ct1!282))))))

(assert (= (and d!2281049 c!1366270) b!7353743))

(assert (= (and d!2281049 (not c!1366270)) b!7353744))

(assert (= (and d!2281049 res!2969556) b!7353745))

(assert (= (and b!7353745 res!2969557) b!7353746))

(declare-fun m!8014168 () Bool)

(assert (=> d!2281049 m!8014168))

(declare-fun m!8014170 () Bool)

(assert (=> d!2281049 m!8014170))

(declare-fun m!8014172 () Bool)

(assert (=> d!2281049 m!8014172))

(declare-fun m!8014174 () Bool)

(assert (=> b!7353744 m!8014174))

(declare-fun m!8014176 () Bool)

(assert (=> b!7353745 m!8014176))

(declare-fun m!8014178 () Bool)

(assert (=> b!7353745 m!8014178))

(declare-fun m!8014180 () Bool)

(assert (=> b!7353745 m!8014180))

(assert (=> b!7353554 d!2281049))

(declare-fun d!2281055 () Bool)

(assert (=> d!2281055 (forall!18002 (++!16998 (exprs!8620 ct1!282) (exprs!8620 ct2!378)) lambda!456798)))

(declare-fun lt!2612751 () Unit!165313)

(declare-fun choose!57203 (List!71676 List!71676 Int) Unit!165313)

(assert (=> d!2281055 (= lt!2612751 (choose!57203 (exprs!8620 ct1!282) (exprs!8620 ct2!378) lambda!456798))))

(assert (=> d!2281055 (forall!18002 (exprs!8620 ct1!282) lambda!456798)))

(assert (=> d!2281055 (= (lemmaConcatPreservesForall!1855 (exprs!8620 ct1!282) (exprs!8620 ct2!378) lambda!456798) lt!2612751)))

(declare-fun bs!1919549 () Bool)

(assert (= bs!1919549 d!2281055))

(assert (=> bs!1919549 m!8014076))

(assert (=> bs!1919549 m!8014076))

(declare-fun m!8014184 () Bool)

(assert (=> bs!1919549 m!8014184))

(declare-fun m!8014186 () Bool)

(assert (=> bs!1919549 m!8014186))

(declare-fun m!8014188 () Bool)

(assert (=> bs!1919549 m!8014188))

(assert (=> b!7353554 d!2281055))

(declare-fun e!4403062 () Bool)

(assert (=> b!7353567 (= tp!2088733 e!4403062)))

(declare-fun b!7353757 () Bool)

(assert (=> b!7353757 (= e!4403062 tp_is_empty!48605)))

(declare-fun b!7353758 () Bool)

(declare-fun tp!2088775 () Bool)

(declare-fun tp!2088774 () Bool)

(assert (=> b!7353758 (= e!4403062 (and tp!2088775 tp!2088774))))

(declare-fun b!7353759 () Bool)

(declare-fun tp!2088776 () Bool)

(assert (=> b!7353759 (= e!4403062 tp!2088776)))

(declare-fun b!7353760 () Bool)

(declare-fun tp!2088772 () Bool)

(declare-fun tp!2088773 () Bool)

(assert (=> b!7353760 (= e!4403062 (and tp!2088772 tp!2088773))))

(assert (= (and b!7353567 (is-ElementMatch!19180 (regOne!38872 r1!2370))) b!7353757))

(assert (= (and b!7353567 (is-Concat!28025 (regOne!38872 r1!2370))) b!7353758))

(assert (= (and b!7353567 (is-Star!19180 (regOne!38872 r1!2370))) b!7353759))

(assert (= (and b!7353567 (is-Union!19180 (regOne!38872 r1!2370))) b!7353760))

(declare-fun e!4403063 () Bool)

(assert (=> b!7353567 (= tp!2088731 e!4403063)))

(declare-fun b!7353761 () Bool)

(assert (=> b!7353761 (= e!4403063 tp_is_empty!48605)))

(declare-fun b!7353762 () Bool)

(declare-fun tp!2088780 () Bool)

(declare-fun tp!2088779 () Bool)

(assert (=> b!7353762 (= e!4403063 (and tp!2088780 tp!2088779))))

(declare-fun b!7353763 () Bool)

(declare-fun tp!2088781 () Bool)

(assert (=> b!7353763 (= e!4403063 tp!2088781)))

(declare-fun b!7353764 () Bool)

(declare-fun tp!2088777 () Bool)

(declare-fun tp!2088778 () Bool)

(assert (=> b!7353764 (= e!4403063 (and tp!2088777 tp!2088778))))

(assert (= (and b!7353567 (is-ElementMatch!19180 (regTwo!38872 r1!2370))) b!7353761))

(assert (= (and b!7353567 (is-Concat!28025 (regTwo!38872 r1!2370))) b!7353762))

(assert (= (and b!7353567 (is-Star!19180 (regTwo!38872 r1!2370))) b!7353763))

(assert (= (and b!7353567 (is-Union!19180 (regTwo!38872 r1!2370))) b!7353764))

(declare-fun e!4403064 () Bool)

(assert (=> b!7353556 (= tp!2088736 e!4403064)))

(declare-fun b!7353765 () Bool)

(assert (=> b!7353765 (= e!4403064 tp_is_empty!48605)))

(declare-fun b!7353766 () Bool)

(declare-fun tp!2088785 () Bool)

(declare-fun tp!2088784 () Bool)

(assert (=> b!7353766 (= e!4403064 (and tp!2088785 tp!2088784))))

(declare-fun b!7353767 () Bool)

(declare-fun tp!2088786 () Bool)

(assert (=> b!7353767 (= e!4403064 tp!2088786)))

(declare-fun b!7353768 () Bool)

(declare-fun tp!2088782 () Bool)

(declare-fun tp!2088783 () Bool)

(assert (=> b!7353768 (= e!4403064 (and tp!2088782 tp!2088783))))

(assert (= (and b!7353556 (is-ElementMatch!19180 (reg!19509 r1!2370))) b!7353765))

(assert (= (and b!7353556 (is-Concat!28025 (reg!19509 r1!2370))) b!7353766))

(assert (= (and b!7353556 (is-Star!19180 (reg!19509 r1!2370))) b!7353767))

(assert (= (and b!7353556 (is-Union!19180 (reg!19509 r1!2370))) b!7353768))

(declare-fun b!7353773 () Bool)

(declare-fun e!4403067 () Bool)

(declare-fun tp!2088791 () Bool)

(declare-fun tp!2088792 () Bool)

(assert (=> b!7353773 (= e!4403067 (and tp!2088791 tp!2088792))))

(assert (=> b!7353557 (= tp!2088737 e!4403067)))

(assert (= (and b!7353557 (is-Cons!71552 (exprs!8620 ct1!282))) b!7353773))

(declare-fun b!7353774 () Bool)

(declare-fun e!4403068 () Bool)

(declare-fun tp!2088793 () Bool)

(declare-fun tp!2088794 () Bool)

(assert (=> b!7353774 (= e!4403068 (and tp!2088793 tp!2088794))))

(assert (=> b!7353563 (= tp!2088735 e!4403068)))

(assert (= (and b!7353563 (is-Cons!71552 (exprs!8620 cWitness!61))) b!7353774))

(declare-fun b!7353775 () Bool)

(declare-fun e!4403069 () Bool)

(declare-fun tp!2088795 () Bool)

(declare-fun tp!2088796 () Bool)

(assert (=> b!7353775 (= e!4403069 (and tp!2088795 tp!2088796))))

(assert (=> b!7353558 (= tp!2088730 e!4403069)))

(assert (= (and b!7353558 (is-Cons!71552 (exprs!8620 ct2!378))) b!7353775))

(declare-fun e!4403070 () Bool)

(assert (=> b!7353565 (= tp!2088732 e!4403070)))

(declare-fun b!7353776 () Bool)

(assert (=> b!7353776 (= e!4403070 tp_is_empty!48605)))

(declare-fun b!7353777 () Bool)

(declare-fun tp!2088800 () Bool)

(declare-fun tp!2088799 () Bool)

(assert (=> b!7353777 (= e!4403070 (and tp!2088800 tp!2088799))))

(declare-fun b!7353778 () Bool)

(declare-fun tp!2088801 () Bool)

(assert (=> b!7353778 (= e!4403070 tp!2088801)))

(declare-fun b!7353779 () Bool)

(declare-fun tp!2088797 () Bool)

(declare-fun tp!2088798 () Bool)

(assert (=> b!7353779 (= e!4403070 (and tp!2088797 tp!2088798))))

(assert (= (and b!7353565 (is-ElementMatch!19180 (regOne!38873 r1!2370))) b!7353776))

(assert (= (and b!7353565 (is-Concat!28025 (regOne!38873 r1!2370))) b!7353777))

(assert (= (and b!7353565 (is-Star!19180 (regOne!38873 r1!2370))) b!7353778))

(assert (= (and b!7353565 (is-Union!19180 (regOne!38873 r1!2370))) b!7353779))

(declare-fun e!4403071 () Bool)

(assert (=> b!7353565 (= tp!2088734 e!4403071)))

(declare-fun b!7353780 () Bool)

(assert (=> b!7353780 (= e!4403071 tp_is_empty!48605)))

(declare-fun b!7353781 () Bool)

(declare-fun tp!2088805 () Bool)

(declare-fun tp!2088804 () Bool)

(assert (=> b!7353781 (= e!4403071 (and tp!2088805 tp!2088804))))

(declare-fun b!7353782 () Bool)

(declare-fun tp!2088806 () Bool)

(assert (=> b!7353782 (= e!4403071 tp!2088806)))

(declare-fun b!7353783 () Bool)

(declare-fun tp!2088802 () Bool)

(declare-fun tp!2088803 () Bool)

(assert (=> b!7353783 (= e!4403071 (and tp!2088802 tp!2088803))))

(assert (= (and b!7353565 (is-ElementMatch!19180 (regTwo!38873 r1!2370))) b!7353780))

(assert (= (and b!7353565 (is-Concat!28025 (regTwo!38873 r1!2370))) b!7353781))

(assert (= (and b!7353565 (is-Star!19180 (regTwo!38873 r1!2370))) b!7353782))

(assert (= (and b!7353565 (is-Union!19180 (regTwo!38873 r1!2370))) b!7353783))

(push 1)

(assert (not bm!672991))

(assert (not d!2281033))

(assert (not bm!672955))

(assert (not bm!672959))

(assert (not b!7353762))

(assert (not b!7353783))

(assert (not b!7353642))

(assert (not b!7353766))

(assert (not b!7353759))

(assert (not bm!672982))

(assert (not b!7353744))

(assert (not b!7353711))

(assert (not d!2281031))

(assert (not bm!672988))

(assert (not b!7353782))

(assert (not b!7353745))

(assert (not b!7353774))

(assert (not b!7353777))

(assert (not d!2281049))

(assert (not d!2281055))

(assert (not bm!672979))

(assert (not b!7353764))

(assert tp_is_empty!48605)

(assert (not bm!672956))

(assert (not bm!672986))

(assert (not b!7353702))

(assert (not d!2281035))

(assert (not d!2281039))

(assert (not b!7353775))

(assert (not b!7353767))

(assert (not b!7353758))

(assert (not bm!672990))

(assert (not bm!672985))

(assert (not b!7353779))

(assert (not b!7353763))

(assert (not b!7353691))

(assert (not b!7353781))

(assert (not bm!672981))

(assert (not b!7353778))

(assert (not b!7353760))

(assert (not b!7353633))

(assert (not bm!672958))

(assert (not b!7353773))

(assert (not b!7353768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

