; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716854 () Bool)

(assert start!716854)

(declare-fun b!7339026 () Bool)

(declare-fun e!4394646 () Bool)

(declare-fun tp_is_empty!48445 () Bool)

(assert (=> b!7339026 (= e!4394646 tp_is_empty!48445)))

(declare-fun b!7339027 () Bool)

(declare-fun res!2965128 () Bool)

(declare-fun e!4394648 () Bool)

(assert (=> b!7339027 (=> (not res!2965128) (not e!4394648))))

(declare-datatypes ((C!38474 0))(
  ( (C!38475 (val!29597 Int)) )
))
(declare-datatypes ((Regex!19100 0))(
  ( (ElementMatch!19100 (c!1363096 C!38474)) (Concat!27945 (regOne!38712 Regex!19100) (regTwo!38712 Regex!19100)) (EmptyExpr!19100) (Star!19100 (reg!19429 Regex!19100)) (EmptyLang!19100) (Union!19100 (regOne!38713 Regex!19100) (regTwo!38713 Regex!19100)) )
))
(declare-fun r1!2370 () Regex!19100)

(declare-fun c!10362 () C!38474)

(declare-datatypes ((List!71596 0))(
  ( (Nil!71472) (Cons!71472 (h!77920 Regex!19100) (t!385991 List!71596)) )
))
(declare-datatypes ((Context!16080 0))(
  ( (Context!16081 (exprs!8540 List!71596)) )
))
(declare-fun ct1!282 () Context!16080)

(declare-fun cWitness!61 () Context!16080)

(declare-fun derivationStepZipperDown!2926 (Regex!19100 Context!16080 C!38474) (Set Context!16080))

(assert (=> b!7339027 (= res!2965128 (set.member cWitness!61 (derivationStepZipperDown!2926 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7339028 () Bool)

(declare-fun tp!2083750 () Bool)

(declare-fun tp!2083751 () Bool)

(assert (=> b!7339028 (= e!4394646 (and tp!2083750 tp!2083751))))

(declare-fun b!7339029 () Bool)

(declare-fun e!4394647 () Bool)

(assert (=> b!7339029 (= e!4394648 e!4394647)))

(declare-fun res!2965127 () Bool)

(assert (=> b!7339029 (=> (not res!2965127) (not e!4394647))))

(assert (=> b!7339029 (= res!2965127 (and (or (not (is-ElementMatch!19100 r1!2370)) (not (= c!10362 (c!1363096 r1!2370)))) (is-Union!19100 r1!2370)))))

(declare-fun lt!2609691 () (Set Context!16080))

(declare-fun ct2!378 () Context!16080)

(declare-fun ++!16918 (List!71596 List!71596) List!71596)

(assert (=> b!7339029 (= lt!2609691 (derivationStepZipperDown!2926 r1!2370 (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165153 0))(
  ( (Unit!165154) )
))
(declare-fun lt!2609690 () Unit!165153)

(declare-fun lambda!455438 () Int)

(declare-fun lemmaConcatPreservesForall!1775 (List!71596 List!71596 Int) Unit!165153)

(assert (=> b!7339029 (= lt!2609690 (lemmaConcatPreservesForall!1775 (exprs!8540 ct1!282) (exprs!8540 ct2!378) lambda!455438))))

(declare-fun b!7339030 () Bool)

(declare-fun validRegex!9696 (Regex!19100) Bool)

(assert (=> b!7339030 (= e!4394647 (not (validRegex!9696 (regOne!38713 r1!2370))))))

(declare-fun b!7339031 () Bool)

(declare-fun e!4394649 () Bool)

(declare-fun tp!2083757 () Bool)

(assert (=> b!7339031 (= e!4394649 tp!2083757)))

(declare-fun b!7339032 () Bool)

(declare-fun tp!2083755 () Bool)

(assert (=> b!7339032 (= e!4394646 tp!2083755)))

(declare-fun b!7339033 () Bool)

(declare-fun tp!2083753 () Bool)

(declare-fun tp!2083754 () Bool)

(assert (=> b!7339033 (= e!4394646 (and tp!2083753 tp!2083754))))

(declare-fun b!7339034 () Bool)

(declare-fun e!4394645 () Bool)

(declare-fun tp!2083752 () Bool)

(assert (=> b!7339034 (= e!4394645 tp!2083752)))

(declare-fun res!2965129 () Bool)

(assert (=> start!716854 (=> (not res!2965129) (not e!4394648))))

(assert (=> start!716854 (= res!2965129 (validRegex!9696 r1!2370))))

(assert (=> start!716854 e!4394648))

(assert (=> start!716854 tp_is_empty!48445))

(declare-fun inv!91091 (Context!16080) Bool)

(assert (=> start!716854 (and (inv!91091 cWitness!61) e!4394649)))

(assert (=> start!716854 (and (inv!91091 ct1!282) e!4394645)))

(assert (=> start!716854 e!4394646))

(declare-fun e!4394650 () Bool)

(assert (=> start!716854 (and (inv!91091 ct2!378) e!4394650)))

(declare-fun b!7339035 () Bool)

(declare-fun tp!2083756 () Bool)

(assert (=> b!7339035 (= e!4394650 tp!2083756)))

(assert (= (and start!716854 res!2965129) b!7339027))

(assert (= (and b!7339027 res!2965128) b!7339029))

(assert (= (and b!7339029 res!2965127) b!7339030))

(assert (= start!716854 b!7339031))

(assert (= start!716854 b!7339034))

(assert (= (and start!716854 (is-ElementMatch!19100 r1!2370)) b!7339026))

(assert (= (and start!716854 (is-Concat!27945 r1!2370)) b!7339033))

(assert (= (and start!716854 (is-Star!19100 r1!2370)) b!7339032))

(assert (= (and start!716854 (is-Union!19100 r1!2370)) b!7339028))

(assert (= start!716854 b!7339035))

(declare-fun m!8003498 () Bool)

(assert (=> b!7339027 m!8003498))

(declare-fun m!8003500 () Bool)

(assert (=> b!7339027 m!8003500))

(declare-fun m!8003502 () Bool)

(assert (=> b!7339029 m!8003502))

(declare-fun m!8003504 () Bool)

(assert (=> b!7339029 m!8003504))

(declare-fun m!8003506 () Bool)

(assert (=> b!7339029 m!8003506))

(declare-fun m!8003508 () Bool)

(assert (=> b!7339030 m!8003508))

(declare-fun m!8003510 () Bool)

(assert (=> start!716854 m!8003510))

(declare-fun m!8003512 () Bool)

(assert (=> start!716854 m!8003512))

(declare-fun m!8003514 () Bool)

(assert (=> start!716854 m!8003514))

(declare-fun m!8003516 () Bool)

(assert (=> start!716854 m!8003516))

(push 1)

(assert (not start!716854))

(assert (not b!7339027))

(assert (not b!7339030))

(assert (not b!7339028))

(assert (not b!7339032))

(assert (not b!7339034))

(assert (not b!7339033))

(assert (not b!7339029))

(assert tp_is_empty!48445)

(assert (not b!7339031))

(assert (not b!7339035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2278501 () Bool)

(declare-fun res!2965149 () Bool)

(declare-fun e!4394688 () Bool)

(assert (=> d!2278501 (=> res!2965149 e!4394688)))

(assert (=> d!2278501 (= res!2965149 (is-ElementMatch!19100 (regOne!38713 r1!2370)))))

(assert (=> d!2278501 (= (validRegex!9696 (regOne!38713 r1!2370)) e!4394688)))

(declare-fun b!7339084 () Bool)

(declare-fun e!4394686 () Bool)

(declare-fun call!669565 () Bool)

(assert (=> b!7339084 (= e!4394686 call!669565)))

(declare-fun b!7339085 () Bool)

(declare-fun e!4394689 () Bool)

(assert (=> b!7339085 (= e!4394688 e!4394689)))

(declare-fun c!1363102 () Bool)

(assert (=> b!7339085 (= c!1363102 (is-Star!19100 (regOne!38713 r1!2370)))))

(declare-fun b!7339086 () Bool)

(declare-fun res!2965150 () Bool)

(declare-fun e!4394684 () Bool)

(assert (=> b!7339086 (=> (not res!2965150) (not e!4394684))))

(declare-fun call!669566 () Bool)

(assert (=> b!7339086 (= res!2965150 call!669566)))

(declare-fun e!4394683 () Bool)

(assert (=> b!7339086 (= e!4394683 e!4394684)))

(declare-fun b!7339087 () Bool)

(declare-fun e!4394685 () Bool)

(declare-fun e!4394687 () Bool)

(assert (=> b!7339087 (= e!4394685 e!4394687)))

(declare-fun res!2965151 () Bool)

(assert (=> b!7339087 (=> (not res!2965151) (not e!4394687))))

(declare-fun call!669564 () Bool)

(assert (=> b!7339087 (= res!2965151 call!669564)))

(declare-fun bm!669559 () Bool)

(assert (=> bm!669559 (= call!669566 call!669565)))

(declare-fun b!7339088 () Bool)

(declare-fun res!2965153 () Bool)

(assert (=> b!7339088 (=> res!2965153 e!4394685)))

(assert (=> b!7339088 (= res!2965153 (not (is-Concat!27945 (regOne!38713 r1!2370))))))

(assert (=> b!7339088 (= e!4394683 e!4394685)))

(declare-fun b!7339089 () Bool)

(assert (=> b!7339089 (= e!4394687 call!669566)))

(declare-fun c!1363103 () Bool)

(declare-fun bm!669560 () Bool)

(assert (=> bm!669560 (= call!669565 (validRegex!9696 (ite c!1363102 (reg!19429 (regOne!38713 r1!2370)) (ite c!1363103 (regOne!38713 (regOne!38713 r1!2370)) (regTwo!38712 (regOne!38713 r1!2370))))))))

(declare-fun b!7339090 () Bool)

(assert (=> b!7339090 (= e!4394684 call!669564)))

(declare-fun bm!669561 () Bool)

(assert (=> bm!669561 (= call!669564 (validRegex!9696 (ite c!1363103 (regTwo!38713 (regOne!38713 r1!2370)) (regOne!38712 (regOne!38713 r1!2370)))))))

(declare-fun b!7339091 () Bool)

(assert (=> b!7339091 (= e!4394689 e!4394683)))

(assert (=> b!7339091 (= c!1363103 (is-Union!19100 (regOne!38713 r1!2370)))))

(declare-fun b!7339092 () Bool)

(assert (=> b!7339092 (= e!4394689 e!4394686)))

(declare-fun res!2965152 () Bool)

(declare-fun nullable!8197 (Regex!19100) Bool)

(assert (=> b!7339092 (= res!2965152 (not (nullable!8197 (reg!19429 (regOne!38713 r1!2370)))))))

(assert (=> b!7339092 (=> (not res!2965152) (not e!4394686))))

(assert (= (and d!2278501 (not res!2965149)) b!7339085))

(assert (= (and b!7339085 c!1363102) b!7339092))

(assert (= (and b!7339085 (not c!1363102)) b!7339091))

(assert (= (and b!7339092 res!2965152) b!7339084))

(assert (= (and b!7339091 c!1363103) b!7339086))

(assert (= (and b!7339091 (not c!1363103)) b!7339088))

(assert (= (and b!7339086 res!2965150) b!7339090))

(assert (= (and b!7339088 (not res!2965153)) b!7339087))

(assert (= (and b!7339087 res!2965151) b!7339089))

(assert (= (or b!7339086 b!7339089) bm!669559))

(assert (= (or b!7339090 b!7339087) bm!669561))

(assert (= (or b!7339084 bm!669559) bm!669560))

(declare-fun m!8003538 () Bool)

(assert (=> bm!669560 m!8003538))

(declare-fun m!8003540 () Bool)

(assert (=> bm!669561 m!8003540))

(declare-fun m!8003542 () Bool)

(assert (=> b!7339092 m!8003542))

(assert (=> b!7339030 d!2278501))

(declare-fun b!7339133 () Bool)

(declare-fun e!4394717 () (Set Context!16080))

(assert (=> b!7339133 (= e!4394717 (as set.empty (Set Context!16080)))))

(declare-fun bm!669580 () Bool)

(declare-fun call!669585 () (Set Context!16080))

(declare-fun call!669590 () (Set Context!16080))

(assert (=> bm!669580 (= call!669585 call!669590)))

(declare-fun d!2278505 () Bool)

(declare-fun c!1363121 () Bool)

(assert (=> d!2278505 (= c!1363121 (and (is-ElementMatch!19100 r1!2370) (= (c!1363096 r1!2370) c!10362)))))

(declare-fun e!4394716 () (Set Context!16080))

(assert (=> d!2278505 (= (derivationStepZipperDown!2926 r1!2370 (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378))) c!10362) e!4394716)))

(declare-fun c!1363119 () Bool)

(declare-fun c!1363120 () Bool)

(declare-fun call!669586 () List!71596)

(declare-fun call!669588 () (Set Context!16080))

(declare-fun c!1363122 () Bool)

(declare-fun bm!669581 () Bool)

(assert (=> bm!669581 (= call!669588 (derivationStepZipperDown!2926 (ite c!1363122 (regTwo!38713 r1!2370) (ite c!1363120 (regTwo!38712 r1!2370) (ite c!1363119 (regOne!38712 r1!2370) (reg!19429 r1!2370)))) (ite (or c!1363122 c!1363120) (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378))) (Context!16081 call!669586)) c!10362))))

(declare-fun b!7339134 () Bool)

(declare-fun e!4394720 () (Set Context!16080))

(declare-fun e!4394718 () (Set Context!16080))

(assert (=> b!7339134 (= e!4394720 e!4394718)))

(assert (=> b!7339134 (= c!1363119 (is-Concat!27945 r1!2370))))

(declare-fun bm!669582 () Bool)

(declare-fun call!669587 () List!71596)

(declare-fun $colon$colon!3104 (List!71596 Regex!19100) List!71596)

(assert (=> bm!669582 (= call!669587 ($colon$colon!3104 (exprs!8540 (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378)))) (ite (or c!1363120 c!1363119) (regTwo!38712 r1!2370) r1!2370)))))

(declare-fun b!7339135 () Bool)

(assert (=> b!7339135 (= e!4394716 (set.insert (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378))) (as set.empty (Set Context!16080))))))

(declare-fun b!7339136 () Bool)

(declare-fun e!4394721 () (Set Context!16080))

(declare-fun call!669589 () (Set Context!16080))

(assert (=> b!7339136 (= e!4394721 (set.union call!669589 call!669588))))

(declare-fun b!7339137 () Bool)

(declare-fun c!1363118 () Bool)

(assert (=> b!7339137 (= c!1363118 (is-Star!19100 r1!2370))))

(assert (=> b!7339137 (= e!4394718 e!4394717)))

(declare-fun b!7339138 () Bool)

(assert (=> b!7339138 (= e!4394720 (set.union call!669589 call!669590))))

(declare-fun b!7339139 () Bool)

(assert (=> b!7339139 (= e!4394718 call!669585)))

(declare-fun b!7339140 () Bool)

(assert (=> b!7339140 (= e!4394716 e!4394721)))

(assert (=> b!7339140 (= c!1363122 (is-Union!19100 r1!2370))))

(declare-fun b!7339141 () Bool)

(declare-fun e!4394719 () Bool)

(assert (=> b!7339141 (= c!1363120 e!4394719)))

(declare-fun res!2965166 () Bool)

(assert (=> b!7339141 (=> (not res!2965166) (not e!4394719))))

(assert (=> b!7339141 (= res!2965166 (is-Concat!27945 r1!2370))))

(assert (=> b!7339141 (= e!4394721 e!4394720)))

(declare-fun bm!669583 () Bool)

(assert (=> bm!669583 (= call!669590 call!669588)))

(declare-fun b!7339142 () Bool)

(assert (=> b!7339142 (= e!4394717 call!669585)))

(declare-fun bm!669584 () Bool)

(assert (=> bm!669584 (= call!669586 call!669587)))

(declare-fun b!7339143 () Bool)

(assert (=> b!7339143 (= e!4394719 (nullable!8197 (regOne!38712 r1!2370)))))

(declare-fun bm!669585 () Bool)

(assert (=> bm!669585 (= call!669589 (derivationStepZipperDown!2926 (ite c!1363122 (regOne!38713 r1!2370) (regOne!38712 r1!2370)) (ite c!1363122 (Context!16081 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378))) (Context!16081 call!669587)) c!10362))))

(assert (= (and d!2278505 c!1363121) b!7339135))

(assert (= (and d!2278505 (not c!1363121)) b!7339140))

(assert (= (and b!7339140 c!1363122) b!7339136))

(assert (= (and b!7339140 (not c!1363122)) b!7339141))

(assert (= (and b!7339141 res!2965166) b!7339143))

(assert (= (and b!7339141 c!1363120) b!7339138))

(assert (= (and b!7339141 (not c!1363120)) b!7339134))

(assert (= (and b!7339134 c!1363119) b!7339139))

(assert (= (and b!7339134 (not c!1363119)) b!7339137))

(assert (= (and b!7339137 c!1363118) b!7339142))

(assert (= (and b!7339137 (not c!1363118)) b!7339133))

(assert (= (or b!7339139 b!7339142) bm!669584))

(assert (= (or b!7339139 b!7339142) bm!669580))

(assert (= (or b!7339138 bm!669580) bm!669583))

(assert (= (or b!7339138 bm!669584) bm!669582))

(assert (= (or b!7339136 bm!669583) bm!669581))

(assert (= (or b!7339136 b!7339138) bm!669585))

(declare-fun m!8003544 () Bool)

(assert (=> b!7339143 m!8003544))

(declare-fun m!8003546 () Bool)

(assert (=> bm!669581 m!8003546))

(declare-fun m!8003548 () Bool)

(assert (=> bm!669585 m!8003548))

(declare-fun m!8003550 () Bool)

(assert (=> b!7339135 m!8003550))

(declare-fun m!8003552 () Bool)

(assert (=> bm!669582 m!8003552))

(assert (=> b!7339029 d!2278505))

(declare-fun d!2278507 () Bool)

(declare-fun e!4394733 () Bool)

(assert (=> d!2278507 e!4394733))

(declare-fun res!2965176 () Bool)

(assert (=> d!2278507 (=> (not res!2965176) (not e!4394733))))

(declare-fun lt!2609700 () List!71596)

(declare-fun content!15019 (List!71596) (Set Regex!19100))

(assert (=> d!2278507 (= res!2965176 (= (content!15019 lt!2609700) (set.union (content!15019 (exprs!8540 ct1!282)) (content!15019 (exprs!8540 ct2!378)))))))

(declare-fun e!4394734 () List!71596)

(assert (=> d!2278507 (= lt!2609700 e!4394734)))

(declare-fun c!1363127 () Bool)

(assert (=> d!2278507 (= c!1363127 (is-Nil!71472 (exprs!8540 ct1!282)))))

(assert (=> d!2278507 (= (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378)) lt!2609700)))

(declare-fun b!7339164 () Bool)

(assert (=> b!7339164 (= e!4394733 (or (not (= (exprs!8540 ct2!378) Nil!71472)) (= lt!2609700 (exprs!8540 ct1!282))))))

(declare-fun b!7339161 () Bool)

(assert (=> b!7339161 (= e!4394734 (exprs!8540 ct2!378))))

(declare-fun b!7339163 () Bool)

(declare-fun res!2965177 () Bool)

(assert (=> b!7339163 (=> (not res!2965177) (not e!4394733))))

(declare-fun size!41998 (List!71596) Int)

(assert (=> b!7339163 (= res!2965177 (= (size!41998 lt!2609700) (+ (size!41998 (exprs!8540 ct1!282)) (size!41998 (exprs!8540 ct2!378)))))))

(declare-fun b!7339162 () Bool)

(assert (=> b!7339162 (= e!4394734 (Cons!71472 (h!77920 (exprs!8540 ct1!282)) (++!16918 (t!385991 (exprs!8540 ct1!282)) (exprs!8540 ct2!378))))))

(assert (= (and d!2278507 c!1363127) b!7339161))

(assert (= (and d!2278507 (not c!1363127)) b!7339162))

(assert (= (and d!2278507 res!2965176) b!7339163))

(assert (= (and b!7339163 res!2965177) b!7339164))

(declare-fun m!8003560 () Bool)

(assert (=> d!2278507 m!8003560))

(declare-fun m!8003562 () Bool)

(assert (=> d!2278507 m!8003562))

(declare-fun m!8003564 () Bool)

(assert (=> d!2278507 m!8003564))

(declare-fun m!8003566 () Bool)

(assert (=> b!7339163 m!8003566))

(declare-fun m!8003568 () Bool)

(assert (=> b!7339163 m!8003568))

(declare-fun m!8003570 () Bool)

(assert (=> b!7339163 m!8003570))

(declare-fun m!8003572 () Bool)

(assert (=> b!7339162 m!8003572))

(assert (=> b!7339029 d!2278507))

(declare-fun d!2278511 () Bool)

(declare-fun forall!17934 (List!71596 Int) Bool)

(assert (=> d!2278511 (forall!17934 (++!16918 (exprs!8540 ct1!282) (exprs!8540 ct2!378)) lambda!455438)))

(declare-fun lt!2609703 () Unit!165153)

(declare-fun choose!57081 (List!71596 List!71596 Int) Unit!165153)

(assert (=> d!2278511 (= lt!2609703 (choose!57081 (exprs!8540 ct1!282) (exprs!8540 ct2!378) lambda!455438))))

(assert (=> d!2278511 (forall!17934 (exprs!8540 ct1!282) lambda!455438)))

(assert (=> d!2278511 (= (lemmaConcatPreservesForall!1775 (exprs!8540 ct1!282) (exprs!8540 ct2!378) lambda!455438) lt!2609703)))

(declare-fun bs!1918270 () Bool)

(assert (= bs!1918270 d!2278511))

(assert (=> bs!1918270 m!8003502))

(assert (=> bs!1918270 m!8003502))

(declare-fun m!8003578 () Bool)

(assert (=> bs!1918270 m!8003578))

(declare-fun m!8003580 () Bool)

(assert (=> bs!1918270 m!8003580))

(declare-fun m!8003582 () Bool)

(assert (=> bs!1918270 m!8003582))

(assert (=> b!7339029 d!2278511))

(declare-fun d!2278517 () Bool)

(declare-fun res!2965178 () Bool)

(declare-fun e!4394740 () Bool)

(assert (=> d!2278517 (=> res!2965178 e!4394740)))

(assert (=> d!2278517 (= res!2965178 (is-ElementMatch!19100 r1!2370))))

(assert (=> d!2278517 (= (validRegex!9696 r1!2370) e!4394740)))

(declare-fun b!7339165 () Bool)

(declare-fun e!4394738 () Bool)

(declare-fun call!669595 () Bool)

(assert (=> b!7339165 (= e!4394738 call!669595)))

(declare-fun b!7339166 () Bool)

(declare-fun e!4394741 () Bool)

(assert (=> b!7339166 (= e!4394740 e!4394741)))

(declare-fun c!1363128 () Bool)

(assert (=> b!7339166 (= c!1363128 (is-Star!19100 r1!2370))))

(declare-fun b!7339167 () Bool)

(declare-fun res!2965179 () Bool)

(declare-fun e!4394736 () Bool)

(assert (=> b!7339167 (=> (not res!2965179) (not e!4394736))))

(declare-fun call!669596 () Bool)

(assert (=> b!7339167 (= res!2965179 call!669596)))

(declare-fun e!4394735 () Bool)

(assert (=> b!7339167 (= e!4394735 e!4394736)))

(declare-fun b!7339168 () Bool)

(declare-fun e!4394737 () Bool)

(declare-fun e!4394739 () Bool)

(assert (=> b!7339168 (= e!4394737 e!4394739)))

(declare-fun res!2965180 () Bool)

(assert (=> b!7339168 (=> (not res!2965180) (not e!4394739))))

(declare-fun call!669594 () Bool)

(assert (=> b!7339168 (= res!2965180 call!669594)))

(declare-fun bm!669589 () Bool)

(assert (=> bm!669589 (= call!669596 call!669595)))

(declare-fun b!7339169 () Bool)

(declare-fun res!2965182 () Bool)

(assert (=> b!7339169 (=> res!2965182 e!4394737)))

(assert (=> b!7339169 (= res!2965182 (not (is-Concat!27945 r1!2370)))))

(assert (=> b!7339169 (= e!4394735 e!4394737)))

(declare-fun b!7339170 () Bool)

(assert (=> b!7339170 (= e!4394739 call!669596)))

(declare-fun c!1363129 () Bool)

(declare-fun bm!669590 () Bool)

(assert (=> bm!669590 (= call!669595 (validRegex!9696 (ite c!1363128 (reg!19429 r1!2370) (ite c!1363129 (regOne!38713 r1!2370) (regTwo!38712 r1!2370)))))))

(declare-fun b!7339171 () Bool)

(assert (=> b!7339171 (= e!4394736 call!669594)))

(declare-fun bm!669591 () Bool)

(assert (=> bm!669591 (= call!669594 (validRegex!9696 (ite c!1363129 (regTwo!38713 r1!2370) (regOne!38712 r1!2370))))))

(declare-fun b!7339172 () Bool)

(assert (=> b!7339172 (= e!4394741 e!4394735)))

(assert (=> b!7339172 (= c!1363129 (is-Union!19100 r1!2370))))

(declare-fun b!7339173 () Bool)

(assert (=> b!7339173 (= e!4394741 e!4394738)))

(declare-fun res!2965181 () Bool)

(assert (=> b!7339173 (= res!2965181 (not (nullable!8197 (reg!19429 r1!2370))))))

(assert (=> b!7339173 (=> (not res!2965181) (not e!4394738))))

(assert (= (and d!2278517 (not res!2965178)) b!7339166))

(assert (= (and b!7339166 c!1363128) b!7339173))

(assert (= (and b!7339166 (not c!1363128)) b!7339172))

(assert (= (and b!7339173 res!2965181) b!7339165))

(assert (= (and b!7339172 c!1363129) b!7339167))

(assert (= (and b!7339172 (not c!1363129)) b!7339169))

(assert (= (and b!7339167 res!2965179) b!7339171))

(assert (= (and b!7339169 (not res!2965182)) b!7339168))

(assert (= (and b!7339168 res!2965180) b!7339170))

(assert (= (or b!7339167 b!7339170) bm!669589))

(assert (= (or b!7339171 b!7339168) bm!669591))

(assert (= (or b!7339165 bm!669589) bm!669590))

(declare-fun m!8003586 () Bool)

(assert (=> bm!669590 m!8003586))

(declare-fun m!8003588 () Bool)

(assert (=> bm!669591 m!8003588))

(declare-fun m!8003590 () Bool)

(assert (=> b!7339173 m!8003590))

(assert (=> start!716854 d!2278517))

(declare-fun bs!1918272 () Bool)

(declare-fun d!2278521 () Bool)

(assert (= bs!1918272 (and d!2278521 b!7339029)))

(declare-fun lambda!455449 () Int)

(assert (=> bs!1918272 (= lambda!455449 lambda!455438)))

(assert (=> d!2278521 (= (inv!91091 cWitness!61) (forall!17934 (exprs!8540 cWitness!61) lambda!455449))))

(declare-fun bs!1918273 () Bool)

(assert (= bs!1918273 d!2278521))

(declare-fun m!8003592 () Bool)

(assert (=> bs!1918273 m!8003592))

(assert (=> start!716854 d!2278521))

(declare-fun bs!1918274 () Bool)

(declare-fun d!2278523 () Bool)

(assert (= bs!1918274 (and d!2278523 b!7339029)))

(declare-fun lambda!455450 () Int)

(assert (=> bs!1918274 (= lambda!455450 lambda!455438)))

(declare-fun bs!1918275 () Bool)

(assert (= bs!1918275 (and d!2278523 d!2278521)))

(assert (=> bs!1918275 (= lambda!455450 lambda!455449)))

(assert (=> d!2278523 (= (inv!91091 ct1!282) (forall!17934 (exprs!8540 ct1!282) lambda!455450))))

(declare-fun bs!1918276 () Bool)

(assert (= bs!1918276 d!2278523))

(declare-fun m!8003594 () Bool)

(assert (=> bs!1918276 m!8003594))

(assert (=> start!716854 d!2278523))

(declare-fun bs!1918277 () Bool)

(declare-fun d!2278525 () Bool)

(assert (= bs!1918277 (and d!2278525 b!7339029)))

(declare-fun lambda!455451 () Int)

(assert (=> bs!1918277 (= lambda!455451 lambda!455438)))

(declare-fun bs!1918278 () Bool)

(assert (= bs!1918278 (and d!2278525 d!2278521)))

(assert (=> bs!1918278 (= lambda!455451 lambda!455449)))

(declare-fun bs!1918279 () Bool)

(assert (= bs!1918279 (and d!2278525 d!2278523)))

(assert (=> bs!1918279 (= lambda!455451 lambda!455450)))

(assert (=> d!2278525 (= (inv!91091 ct2!378) (forall!17934 (exprs!8540 ct2!378) lambda!455451))))

(declare-fun bs!1918280 () Bool)

(assert (= bs!1918280 d!2278525))

(declare-fun m!8003596 () Bool)

(assert (=> bs!1918280 m!8003596))

(assert (=> start!716854 d!2278525))

(declare-fun b!7339174 () Bool)

(declare-fun e!4394743 () (Set Context!16080))

(assert (=> b!7339174 (= e!4394743 (as set.empty (Set Context!16080)))))

(declare-fun bm!669592 () Bool)

(declare-fun call!669597 () (Set Context!16080))

(declare-fun call!669602 () (Set Context!16080))

(assert (=> bm!669592 (= call!669597 call!669602)))

(declare-fun d!2278527 () Bool)

(declare-fun c!1363133 () Bool)

(assert (=> d!2278527 (= c!1363133 (and (is-ElementMatch!19100 r1!2370) (= (c!1363096 r1!2370) c!10362)))))

(declare-fun e!4394742 () (Set Context!16080))

(assert (=> d!2278527 (= (derivationStepZipperDown!2926 r1!2370 ct1!282 c!10362) e!4394742)))

(declare-fun bm!669593 () Bool)

(declare-fun call!669598 () List!71596)

(declare-fun c!1363132 () Bool)

(declare-fun c!1363131 () Bool)

(declare-fun c!1363134 () Bool)

(declare-fun call!669600 () (Set Context!16080))

(assert (=> bm!669593 (= call!669600 (derivationStepZipperDown!2926 (ite c!1363134 (regTwo!38713 r1!2370) (ite c!1363132 (regTwo!38712 r1!2370) (ite c!1363131 (regOne!38712 r1!2370) (reg!19429 r1!2370)))) (ite (or c!1363134 c!1363132) ct1!282 (Context!16081 call!669598)) c!10362))))

(declare-fun b!7339175 () Bool)

(declare-fun e!4394746 () (Set Context!16080))

(declare-fun e!4394744 () (Set Context!16080))

(assert (=> b!7339175 (= e!4394746 e!4394744)))

(assert (=> b!7339175 (= c!1363131 (is-Concat!27945 r1!2370))))

(declare-fun bm!669594 () Bool)

(declare-fun call!669599 () List!71596)

(assert (=> bm!669594 (= call!669599 ($colon$colon!3104 (exprs!8540 ct1!282) (ite (or c!1363132 c!1363131) (regTwo!38712 r1!2370) r1!2370)))))

(declare-fun b!7339176 () Bool)

(assert (=> b!7339176 (= e!4394742 (set.insert ct1!282 (as set.empty (Set Context!16080))))))

(declare-fun b!7339177 () Bool)

(declare-fun e!4394747 () (Set Context!16080))

(declare-fun call!669601 () (Set Context!16080))

(assert (=> b!7339177 (= e!4394747 (set.union call!669601 call!669600))))

(declare-fun b!7339178 () Bool)

(declare-fun c!1363130 () Bool)

(assert (=> b!7339178 (= c!1363130 (is-Star!19100 r1!2370))))

(assert (=> b!7339178 (= e!4394744 e!4394743)))

(declare-fun b!7339179 () Bool)

(assert (=> b!7339179 (= e!4394746 (set.union call!669601 call!669602))))

(declare-fun b!7339180 () Bool)

(assert (=> b!7339180 (= e!4394744 call!669597)))

(declare-fun b!7339181 () Bool)

(assert (=> b!7339181 (= e!4394742 e!4394747)))

(assert (=> b!7339181 (= c!1363134 (is-Union!19100 r1!2370))))

(declare-fun b!7339182 () Bool)

(declare-fun e!4394745 () Bool)

(assert (=> b!7339182 (= c!1363132 e!4394745)))

(declare-fun res!2965183 () Bool)

(assert (=> b!7339182 (=> (not res!2965183) (not e!4394745))))

(assert (=> b!7339182 (= res!2965183 (is-Concat!27945 r1!2370))))

(assert (=> b!7339182 (= e!4394747 e!4394746)))

(declare-fun bm!669595 () Bool)

(assert (=> bm!669595 (= call!669602 call!669600)))

(declare-fun b!7339183 () Bool)

(assert (=> b!7339183 (= e!4394743 call!669597)))

(declare-fun bm!669596 () Bool)

(assert (=> bm!669596 (= call!669598 call!669599)))

(declare-fun b!7339184 () Bool)

(assert (=> b!7339184 (= e!4394745 (nullable!8197 (regOne!38712 r1!2370)))))

(declare-fun bm!669597 () Bool)

(assert (=> bm!669597 (= call!669601 (derivationStepZipperDown!2926 (ite c!1363134 (regOne!38713 r1!2370) (regOne!38712 r1!2370)) (ite c!1363134 ct1!282 (Context!16081 call!669599)) c!10362))))

(assert (= (and d!2278527 c!1363133) b!7339176))

(assert (= (and d!2278527 (not c!1363133)) b!7339181))

(assert (= (and b!7339181 c!1363134) b!7339177))

(assert (= (and b!7339181 (not c!1363134)) b!7339182))

(assert (= (and b!7339182 res!2965183) b!7339184))

(assert (= (and b!7339182 c!1363132) b!7339179))

(assert (= (and b!7339182 (not c!1363132)) b!7339175))

(assert (= (and b!7339175 c!1363131) b!7339180))

(assert (= (and b!7339175 (not c!1363131)) b!7339178))

(assert (= (and b!7339178 c!1363130) b!7339183))

(assert (= (and b!7339178 (not c!1363130)) b!7339174))

(assert (= (or b!7339180 b!7339183) bm!669596))

(assert (= (or b!7339180 b!7339183) bm!669592))

(assert (= (or b!7339179 bm!669592) bm!669595))

(assert (= (or b!7339179 bm!669596) bm!669594))

(assert (= (or b!7339177 bm!669595) bm!669593))

(assert (= (or b!7339177 b!7339179) bm!669597))

(assert (=> b!7339184 m!8003544))

(declare-fun m!8003598 () Bool)

(assert (=> bm!669593 m!8003598))

(declare-fun m!8003600 () Bool)

(assert (=> bm!669597 m!8003600))

(declare-fun m!8003602 () Bool)

(assert (=> b!7339176 m!8003602))

(declare-fun m!8003604 () Bool)

(assert (=> bm!669594 m!8003604))

(assert (=> b!7339027 d!2278527))

(declare-fun b!7339189 () Bool)

(declare-fun e!4394750 () Bool)

(declare-fun tp!2083786 () Bool)

(declare-fun tp!2083787 () Bool)

(assert (=> b!7339189 (= e!4394750 (and tp!2083786 tp!2083787))))

(assert (=> b!7339031 (= tp!2083757 e!4394750)))

(assert (= (and b!7339031 (is-Cons!71472 (exprs!8540 cWitness!61))) b!7339189))

(declare-fun b!7339190 () Bool)

(declare-fun e!4394751 () Bool)

(declare-fun tp!2083788 () Bool)

(declare-fun tp!2083789 () Bool)

(assert (=> b!7339190 (= e!4394751 (and tp!2083788 tp!2083789))))

(assert (=> b!7339035 (= tp!2083756 e!4394751)))

(assert (= (and b!7339035 (is-Cons!71472 (exprs!8540 ct2!378))) b!7339190))

(declare-fun b!7339202 () Bool)

(declare-fun e!4394754 () Bool)

(declare-fun tp!2083800 () Bool)

(declare-fun tp!2083801 () Bool)

(assert (=> b!7339202 (= e!4394754 (and tp!2083800 tp!2083801))))

(assert (=> b!7339028 (= tp!2083750 e!4394754)))

(declare-fun b!7339204 () Bool)

(declare-fun tp!2083804 () Bool)

(declare-fun tp!2083802 () Bool)

(assert (=> b!7339204 (= e!4394754 (and tp!2083804 tp!2083802))))

(declare-fun b!7339201 () Bool)

(assert (=> b!7339201 (= e!4394754 tp_is_empty!48445)))

(declare-fun b!7339203 () Bool)

(declare-fun tp!2083803 () Bool)

(assert (=> b!7339203 (= e!4394754 tp!2083803)))

(assert (= (and b!7339028 (is-ElementMatch!19100 (regOne!38713 r1!2370))) b!7339201))

(assert (= (and b!7339028 (is-Concat!27945 (regOne!38713 r1!2370))) b!7339202))

(assert (= (and b!7339028 (is-Star!19100 (regOne!38713 r1!2370))) b!7339203))

(assert (= (and b!7339028 (is-Union!19100 (regOne!38713 r1!2370))) b!7339204))

(declare-fun b!7339206 () Bool)

(declare-fun e!4394755 () Bool)

(declare-fun tp!2083805 () Bool)

(declare-fun tp!2083806 () Bool)

(assert (=> b!7339206 (= e!4394755 (and tp!2083805 tp!2083806))))

(assert (=> b!7339028 (= tp!2083751 e!4394755)))

(declare-fun b!7339208 () Bool)

(declare-fun tp!2083809 () Bool)

(declare-fun tp!2083807 () Bool)

(assert (=> b!7339208 (= e!4394755 (and tp!2083809 tp!2083807))))

(declare-fun b!7339205 () Bool)

(assert (=> b!7339205 (= e!4394755 tp_is_empty!48445)))

(declare-fun b!7339207 () Bool)

(declare-fun tp!2083808 () Bool)

(assert (=> b!7339207 (= e!4394755 tp!2083808)))

(assert (= (and b!7339028 (is-ElementMatch!19100 (regTwo!38713 r1!2370))) b!7339205))

(assert (= (and b!7339028 (is-Concat!27945 (regTwo!38713 r1!2370))) b!7339206))

(assert (= (and b!7339028 (is-Star!19100 (regTwo!38713 r1!2370))) b!7339207))

(assert (= (and b!7339028 (is-Union!19100 (regTwo!38713 r1!2370))) b!7339208))

(declare-fun b!7339209 () Bool)

(declare-fun e!4394756 () Bool)

(declare-fun tp!2083810 () Bool)

(declare-fun tp!2083811 () Bool)

(assert (=> b!7339209 (= e!4394756 (and tp!2083810 tp!2083811))))

(assert (=> b!7339034 (= tp!2083752 e!4394756)))

(assert (= (and b!7339034 (is-Cons!71472 (exprs!8540 ct1!282))) b!7339209))

(declare-fun b!7339211 () Bool)

(declare-fun e!4394757 () Bool)

(declare-fun tp!2083812 () Bool)

(declare-fun tp!2083813 () Bool)

(assert (=> b!7339211 (= e!4394757 (and tp!2083812 tp!2083813))))

(assert (=> b!7339032 (= tp!2083755 e!4394757)))

(declare-fun b!7339213 () Bool)

(declare-fun tp!2083816 () Bool)

(declare-fun tp!2083814 () Bool)

(assert (=> b!7339213 (= e!4394757 (and tp!2083816 tp!2083814))))

(declare-fun b!7339210 () Bool)

(assert (=> b!7339210 (= e!4394757 tp_is_empty!48445)))

(declare-fun b!7339212 () Bool)

(declare-fun tp!2083815 () Bool)

(assert (=> b!7339212 (= e!4394757 tp!2083815)))

(assert (= (and b!7339032 (is-ElementMatch!19100 (reg!19429 r1!2370))) b!7339210))

(assert (= (and b!7339032 (is-Concat!27945 (reg!19429 r1!2370))) b!7339211))

(assert (= (and b!7339032 (is-Star!19100 (reg!19429 r1!2370))) b!7339212))

(assert (= (and b!7339032 (is-Union!19100 (reg!19429 r1!2370))) b!7339213))

(declare-fun b!7339215 () Bool)

(declare-fun e!4394758 () Bool)

(declare-fun tp!2083817 () Bool)

(declare-fun tp!2083818 () Bool)

(assert (=> b!7339215 (= e!4394758 (and tp!2083817 tp!2083818))))

(assert (=> b!7339033 (= tp!2083753 e!4394758)))

(declare-fun b!7339217 () Bool)

(declare-fun tp!2083821 () Bool)

(declare-fun tp!2083819 () Bool)

(assert (=> b!7339217 (= e!4394758 (and tp!2083821 tp!2083819))))

(declare-fun b!7339214 () Bool)

(assert (=> b!7339214 (= e!4394758 tp_is_empty!48445)))

(declare-fun b!7339216 () Bool)

(declare-fun tp!2083820 () Bool)

(assert (=> b!7339216 (= e!4394758 tp!2083820)))

(assert (= (and b!7339033 (is-ElementMatch!19100 (regOne!38712 r1!2370))) b!7339214))

(assert (= (and b!7339033 (is-Concat!27945 (regOne!38712 r1!2370))) b!7339215))

(assert (= (and b!7339033 (is-Star!19100 (regOne!38712 r1!2370))) b!7339216))

(assert (= (and b!7339033 (is-Union!19100 (regOne!38712 r1!2370))) b!7339217))

(declare-fun b!7339219 () Bool)

(declare-fun e!4394759 () Bool)

(declare-fun tp!2083822 () Bool)

(declare-fun tp!2083823 () Bool)

(assert (=> b!7339219 (= e!4394759 (and tp!2083822 tp!2083823))))

(assert (=> b!7339033 (= tp!2083754 e!4394759)))

(declare-fun b!7339221 () Bool)

(declare-fun tp!2083826 () Bool)

(declare-fun tp!2083824 () Bool)

(assert (=> b!7339221 (= e!4394759 (and tp!2083826 tp!2083824))))

(declare-fun b!7339218 () Bool)

(assert (=> b!7339218 (= e!4394759 tp_is_empty!48445)))

(declare-fun b!7339220 () Bool)

(declare-fun tp!2083825 () Bool)

(assert (=> b!7339220 (= e!4394759 tp!2083825)))

(assert (= (and b!7339033 (is-ElementMatch!19100 (regTwo!38712 r1!2370))) b!7339218))

(assert (= (and b!7339033 (is-Concat!27945 (regTwo!38712 r1!2370))) b!7339219))

(assert (= (and b!7339033 (is-Star!19100 (regTwo!38712 r1!2370))) b!7339220))

(assert (= (and b!7339033 (is-Union!19100 (regTwo!38712 r1!2370))) b!7339221))

(push 1)

(assert (not bm!669594))

(assert (not b!7339202))

(assert (not b!7339220))

(assert (not b!7339173))

(assert (not b!7339209))

(assert tp_is_empty!48445)

(assert (not b!7339143))

(assert (not b!7339211))

(assert (not bm!669582))

(assert (not b!7339189))

(assert (not bm!669561))

(assert (not b!7339217))

(assert (not b!7339163))

(assert (not bm!669581))

(assert (not b!7339184))

(assert (not d!2278523))

(assert (not b!7339206))

(assert (not d!2278521))

(assert (not b!7339204))

(assert (not d!2278507))

(assert (not b!7339190))

(assert (not bm!669591))

(assert (not b!7339215))

(assert (not b!7339203))

(assert (not d!2278525))

(assert (not d!2278511))

(assert (not b!7339207))

(assert (not bm!669597))

(assert (not bm!669585))

(assert (not b!7339219))

(assert (not b!7339216))

(assert (not bm!669560))

(assert (not bm!669593))

(assert (not b!7339213))

(assert (not bm!669590))

(assert (not b!7339092))

(assert (not b!7339221))

(assert (not b!7339162))

(assert (not b!7339212))

(assert (not b!7339208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

