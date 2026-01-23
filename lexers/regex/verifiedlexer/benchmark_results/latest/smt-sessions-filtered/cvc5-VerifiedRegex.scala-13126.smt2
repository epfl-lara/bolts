; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717370 () Bool)

(assert start!717370)

(declare-fun b!7345604 () Bool)

(declare-fun res!2966953 () Bool)

(declare-fun e!4398418 () Bool)

(assert (=> b!7345604 (=> (not res!2966953) (not e!4398418))))

(declare-datatypes ((C!38554 0))(
  ( (C!38555 (val!29637 Int)) )
))
(declare-datatypes ((Regex!19140 0))(
  ( (ElementMatch!19140 (c!1364528 C!38554)) (Concat!27985 (regOne!38792 Regex!19140) (regTwo!38792 Regex!19140)) (EmptyExpr!19140) (Star!19140 (reg!19469 Regex!19140)) (EmptyLang!19140) (Union!19140 (regOne!38793 Regex!19140) (regTwo!38793 Regex!19140)) )
))
(declare-datatypes ((List!71636 0))(
  ( (Nil!71512) (Cons!71512 (h!77960 Regex!19140) (t!386033 List!71636)) )
))
(declare-datatypes ((Context!16160 0))(
  ( (Context!16161 (exprs!8580 List!71636)) )
))
(declare-fun cWitness!61 () Context!16160)

(declare-fun lt!2611040 () (Set Context!16160))

(assert (=> b!7345604 (= res!2966953 (set.member cWitness!61 lt!2611040))))

(declare-fun b!7345605 () Bool)

(declare-fun e!4398421 () Bool)

(assert (=> b!7345605 (= e!4398418 (not e!4398421))))

(declare-fun res!2966955 () Bool)

(assert (=> b!7345605 (=> res!2966955 e!4398421)))

(declare-fun lambda!456058 () Int)

(declare-fun forall!17966 (List!71636 Int) Bool)

(assert (=> b!7345605 (= res!2966955 (not (forall!17966 (exprs!8580 cWitness!61) lambda!456058)))))

(declare-fun r1!2370 () Regex!19140)

(declare-fun ct2!378 () Context!16160)

(declare-fun lt!2611042 () List!71636)

(declare-fun c!10362 () C!38554)

(declare-fun ++!16958 (List!71636 List!71636) List!71636)

(declare-fun derivationStepZipperDown!2966 (Regex!19140 Context!16160 C!38554) (Set Context!16160))

(assert (=> b!7345605 (set.member (Context!16161 (++!16958 (exprs!8580 cWitness!61) (exprs!8580 ct2!378))) (derivationStepZipperDown!2966 (regOne!38792 r1!2370) (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165233 0))(
  ( (Unit!165234) )
))
(declare-fun lt!2611045 () Unit!165233)

(declare-fun lemmaConcatPreservesForall!1815 (List!71636 List!71636 Int) Unit!165233)

(assert (=> b!7345605 (= lt!2611045 (lemmaConcatPreservesForall!1815 lt!2611042 (exprs!8580 ct2!378) lambda!456058))))

(declare-fun lt!2611046 () Unit!165233)

(assert (=> b!7345605 (= lt!2611046 (lemmaConcatPreservesForall!1815 (exprs!8580 cWitness!61) (exprs!8580 ct2!378) lambda!456058))))

(declare-fun lt!2611039 () Context!16160)

(declare-fun lt!2611041 () Unit!165233)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!67 (Regex!19140 Context!16160 Context!16160 Context!16160 C!38554) Unit!165233)

(assert (=> b!7345605 (= lt!2611041 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!67 (regOne!38792 r1!2370) lt!2611039 ct2!378 cWitness!61 c!10362))))

(declare-fun res!2966950 () Bool)

(declare-fun e!4398416 () Bool)

(assert (=> start!717370 (=> (not res!2966950) (not e!4398416))))

(declare-fun validRegex!9736 (Regex!19140) Bool)

(assert (=> start!717370 (= res!2966950 (validRegex!9736 r1!2370))))

(assert (=> start!717370 e!4398416))

(declare-fun tp_is_empty!48525 () Bool)

(assert (=> start!717370 tp_is_empty!48525))

(declare-fun e!4398420 () Bool)

(declare-fun inv!91191 (Context!16160) Bool)

(assert (=> start!717370 (and (inv!91191 cWitness!61) e!4398420)))

(declare-fun ct1!282 () Context!16160)

(declare-fun e!4398419 () Bool)

(assert (=> start!717370 (and (inv!91191 ct1!282) e!4398419)))

(declare-fun e!4398413 () Bool)

(assert (=> start!717370 e!4398413))

(declare-fun e!4398417 () Bool)

(assert (=> start!717370 (and (inv!91191 ct2!378) e!4398417)))

(declare-fun b!7345606 () Bool)

(assert (=> b!7345606 (= e!4398413 tp_is_empty!48525)))

(declare-fun b!7345607 () Bool)

(declare-fun res!2966952 () Bool)

(declare-fun e!4398415 () Bool)

(assert (=> b!7345607 (=> (not res!2966952) (not e!4398415))))

(declare-fun nullable!8231 (Regex!19140) Bool)

(assert (=> b!7345607 (= res!2966952 (nullable!8231 (regOne!38792 r1!2370)))))

(declare-fun b!7345608 () Bool)

(declare-fun tp!2086154 () Bool)

(assert (=> b!7345608 (= e!4398413 tp!2086154)))

(declare-fun b!7345609 () Bool)

(declare-fun tp!2086155 () Bool)

(assert (=> b!7345609 (= e!4398419 tp!2086155)))

(declare-fun b!7345610 () Bool)

(declare-fun res!2966954 () Bool)

(assert (=> b!7345610 (=> (not res!2966954) (not e!4398415))))

(assert (=> b!7345610 (= res!2966954 (validRegex!9736 (regTwo!38792 r1!2370)))))

(declare-fun b!7345611 () Bool)

(assert (=> b!7345611 (= e!4398415 e!4398418)))

(declare-fun res!2966951 () Bool)

(assert (=> b!7345611 (=> (not res!2966951) (not e!4398418))))

(declare-fun lt!2611038 () (Set Context!16160))

(assert (=> b!7345611 (= res!2966951 (= lt!2611038 (set.union lt!2611040 (derivationStepZipperDown!2966 (regTwo!38792 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7345611 (= lt!2611040 (derivationStepZipperDown!2966 (regOne!38792 r1!2370) lt!2611039 c!10362))))

(assert (=> b!7345611 (= lt!2611039 (Context!16161 lt!2611042))))

(declare-fun $colon$colon!3138 (List!71636 Regex!19140) List!71636)

(assert (=> b!7345611 (= lt!2611042 ($colon$colon!3138 (exprs!8580 ct1!282) (regTwo!38792 r1!2370)))))

(declare-fun b!7345612 () Bool)

(declare-fun tp!2086150 () Bool)

(assert (=> b!7345612 (= e!4398420 tp!2086150)))

(declare-fun b!7345613 () Bool)

(declare-fun tp!2086157 () Bool)

(assert (=> b!7345613 (= e!4398417 tp!2086157)))

(declare-fun b!7345614 () Bool)

(declare-fun e!4398414 () Bool)

(assert (=> b!7345614 (= e!4398416 e!4398414)))

(declare-fun res!2966949 () Bool)

(assert (=> b!7345614 (=> (not res!2966949) (not e!4398414))))

(assert (=> b!7345614 (= res!2966949 (set.member cWitness!61 lt!2611038))))

(assert (=> b!7345614 (= lt!2611038 (derivationStepZipperDown!2966 r1!2370 ct1!282 c!10362))))

(declare-fun b!7345615 () Bool)

(declare-fun tp!2086153 () Bool)

(declare-fun tp!2086152 () Bool)

(assert (=> b!7345615 (= e!4398413 (and tp!2086153 tp!2086152))))

(declare-fun b!7345616 () Bool)

(assert (=> b!7345616 (= e!4398414 e!4398415)))

(declare-fun res!2966956 () Bool)

(assert (=> b!7345616 (=> (not res!2966956) (not e!4398415))))

(assert (=> b!7345616 (= res!2966956 (and (or (not (is-ElementMatch!19140 r1!2370)) (not (= c!10362 (c!1364528 r1!2370)))) (not (is-Union!19140 r1!2370)) (is-Concat!27985 r1!2370)))))

(declare-fun lt!2611044 () (Set Context!16160))

(assert (=> b!7345616 (= lt!2611044 (derivationStepZipperDown!2966 r1!2370 (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378))) c!10362))))

(declare-fun lt!2611043 () Unit!165233)

(assert (=> b!7345616 (= lt!2611043 (lemmaConcatPreservesForall!1815 (exprs!8580 ct1!282) (exprs!8580 ct2!378) lambda!456058))))

(declare-fun b!7345617 () Bool)

(assert (=> b!7345617 (= e!4398421 (forall!17966 (exprs!8580 ct2!378) lambda!456058))))

(declare-fun b!7345618 () Bool)

(declare-fun tp!2086156 () Bool)

(declare-fun tp!2086151 () Bool)

(assert (=> b!7345618 (= e!4398413 (and tp!2086156 tp!2086151))))

(assert (= (and start!717370 res!2966950) b!7345614))

(assert (= (and b!7345614 res!2966949) b!7345616))

(assert (= (and b!7345616 res!2966956) b!7345607))

(assert (= (and b!7345607 res!2966952) b!7345610))

(assert (= (and b!7345610 res!2966954) b!7345611))

(assert (= (and b!7345611 res!2966951) b!7345604))

(assert (= (and b!7345604 res!2966953) b!7345605))

(assert (= (and b!7345605 (not res!2966955)) b!7345617))

(assert (= start!717370 b!7345612))

(assert (= start!717370 b!7345609))

(assert (= (and start!717370 (is-ElementMatch!19140 r1!2370)) b!7345606))

(assert (= (and start!717370 (is-Concat!27985 r1!2370)) b!7345615))

(assert (= (and start!717370 (is-Star!19140 r1!2370)) b!7345608))

(assert (= (and start!717370 (is-Union!19140 r1!2370)) b!7345618))

(assert (= start!717370 b!7345613))

(declare-fun m!8007998 () Bool)

(assert (=> b!7345617 m!8007998))

(declare-fun m!8008000 () Bool)

(assert (=> b!7345611 m!8008000))

(declare-fun m!8008002 () Bool)

(assert (=> b!7345611 m!8008002))

(declare-fun m!8008004 () Bool)

(assert (=> b!7345611 m!8008004))

(declare-fun m!8008006 () Bool)

(assert (=> b!7345614 m!8008006))

(declare-fun m!8008008 () Bool)

(assert (=> b!7345614 m!8008008))

(declare-fun m!8008010 () Bool)

(assert (=> b!7345604 m!8008010))

(declare-fun m!8008012 () Bool)

(assert (=> b!7345605 m!8008012))

(declare-fun m!8008014 () Bool)

(assert (=> b!7345605 m!8008014))

(declare-fun m!8008016 () Bool)

(assert (=> b!7345605 m!8008016))

(declare-fun m!8008018 () Bool)

(assert (=> b!7345605 m!8008018))

(declare-fun m!8008020 () Bool)

(assert (=> b!7345605 m!8008020))

(declare-fun m!8008022 () Bool)

(assert (=> b!7345605 m!8008022))

(declare-fun m!8008024 () Bool)

(assert (=> b!7345605 m!8008024))

(declare-fun m!8008026 () Bool)

(assert (=> b!7345605 m!8008026))

(declare-fun m!8008028 () Bool)

(assert (=> b!7345610 m!8008028))

(declare-fun m!8008030 () Bool)

(assert (=> b!7345616 m!8008030))

(declare-fun m!8008032 () Bool)

(assert (=> b!7345616 m!8008032))

(declare-fun m!8008034 () Bool)

(assert (=> b!7345616 m!8008034))

(declare-fun m!8008036 () Bool)

(assert (=> b!7345607 m!8008036))

(declare-fun m!8008038 () Bool)

(assert (=> start!717370 m!8008038))

(declare-fun m!8008040 () Bool)

(assert (=> start!717370 m!8008040))

(declare-fun m!8008042 () Bool)

(assert (=> start!717370 m!8008042))

(declare-fun m!8008044 () Bool)

(assert (=> start!717370 m!8008044))

(push 1)

(assert (not b!7345616))

(assert (not start!717370))

(assert (not b!7345609))

(assert (not b!7345618))

(assert tp_is_empty!48525)

(assert (not b!7345614))

(assert (not b!7345605))

(assert (not b!7345612))

(assert (not b!7345608))

(assert (not b!7345611))

(assert (not b!7345607))

(assert (not b!7345610))

(assert (not b!7345615))

(assert (not b!7345613))

(assert (not b!7345617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2279537 () Bool)

(declare-fun res!2966985 () Bool)

(declare-fun e!4398453 () Bool)

(assert (=> d!2279537 (=> res!2966985 e!4398453)))

(assert (=> d!2279537 (= res!2966985 (is-Nil!71512 (exprs!8580 ct2!378)))))

(assert (=> d!2279537 (= (forall!17966 (exprs!8580 ct2!378) lambda!456058) e!4398453)))

(declare-fun b!7345668 () Bool)

(declare-fun e!4398454 () Bool)

(assert (=> b!7345668 (= e!4398453 e!4398454)))

(declare-fun res!2966986 () Bool)

(assert (=> b!7345668 (=> (not res!2966986) (not e!4398454))))

(declare-fun dynLambda!29471 (Int Regex!19140) Bool)

(assert (=> b!7345668 (= res!2966986 (dynLambda!29471 lambda!456058 (h!77960 (exprs!8580 ct2!378))))))

(declare-fun b!7345669 () Bool)

(assert (=> b!7345669 (= e!4398454 (forall!17966 (t!386033 (exprs!8580 ct2!378)) lambda!456058))))

(assert (= (and d!2279537 (not res!2966985)) b!7345668))

(assert (= (and b!7345668 res!2966986) b!7345669))

(declare-fun b_lambda!283987 () Bool)

(assert (=> (not b_lambda!283987) (not b!7345668)))

(declare-fun m!8008094 () Bool)

(assert (=> b!7345668 m!8008094))

(declare-fun m!8008096 () Bool)

(assert (=> b!7345669 m!8008096))

(assert (=> b!7345617 d!2279537))

(declare-fun call!671129 () List!71636)

(declare-fun c!1364541 () Bool)

(declare-fun call!671124 () (Set Context!16160))

(declare-fun bm!671119 () Bool)

(assert (=> bm!671119 (= call!671124 (derivationStepZipperDown!2966 (ite c!1364541 (regOne!38793 (regTwo!38792 r1!2370)) (regOne!38792 (regTwo!38792 r1!2370))) (ite c!1364541 ct1!282 (Context!16161 call!671129)) c!10362))))

(declare-fun b!7345692 () Bool)

(declare-fun e!4398469 () (Set Context!16160))

(declare-fun call!671128 () (Set Context!16160))

(assert (=> b!7345692 (= e!4398469 call!671128)))

(declare-fun bm!671120 () Bool)

(declare-fun c!1364542 () Bool)

(declare-fun c!1364540 () Bool)

(assert (=> bm!671120 (= call!671129 ($colon$colon!3138 (exprs!8580 ct1!282) (ite (or c!1364540 c!1364542) (regTwo!38792 (regTwo!38792 r1!2370)) (regTwo!38792 r1!2370))))))

(declare-fun b!7345693 () Bool)

(declare-fun e!4398470 () (Set Context!16160))

(declare-fun call!671127 () (Set Context!16160))

(assert (=> b!7345693 (= e!4398470 (set.union call!671124 call!671127))))

(declare-fun b!7345694 () Bool)

(declare-fun e!4398467 () Bool)

(assert (=> b!7345694 (= e!4398467 (nullable!8231 (regOne!38792 (regTwo!38792 r1!2370))))))

(declare-fun b!7345695 () Bool)

(declare-fun e!4398468 () (Set Context!16160))

(assert (=> b!7345695 (= e!4398468 call!671128)))

(declare-fun b!7345696 () Bool)

(declare-fun e!4398472 () (Set Context!16160))

(assert (=> b!7345696 (= e!4398472 (set.insert ct1!282 (as set.empty (Set Context!16160))))))

(declare-fun call!671126 () List!71636)

(declare-fun bm!671121 () Bool)

(assert (=> bm!671121 (= call!671127 (derivationStepZipperDown!2966 (ite c!1364541 (regTwo!38793 (regTwo!38792 r1!2370)) (ite c!1364540 (regTwo!38792 (regTwo!38792 r1!2370)) (ite c!1364542 (regOne!38792 (regTwo!38792 r1!2370)) (reg!19469 (regTwo!38792 r1!2370))))) (ite (or c!1364541 c!1364540) ct1!282 (Context!16161 call!671126)) c!10362))))

(declare-fun d!2279539 () Bool)

(declare-fun c!1364543 () Bool)

(assert (=> d!2279539 (= c!1364543 (and (is-ElementMatch!19140 (regTwo!38792 r1!2370)) (= (c!1364528 (regTwo!38792 r1!2370)) c!10362)))))

(assert (=> d!2279539 (= (derivationStepZipperDown!2966 (regTwo!38792 r1!2370) ct1!282 c!10362) e!4398472)))

(declare-fun b!7345697 () Bool)

(declare-fun e!4398471 () (Set Context!16160))

(declare-fun call!671125 () (Set Context!16160))

(assert (=> b!7345697 (= e!4398471 (set.union call!671124 call!671125))))

(declare-fun b!7345698 () Bool)

(assert (=> b!7345698 (= e!4398472 e!4398470)))

(assert (=> b!7345698 (= c!1364541 (is-Union!19140 (regTwo!38792 r1!2370)))))

(declare-fun bm!671122 () Bool)

(assert (=> bm!671122 (= call!671126 call!671129)))

(declare-fun bm!671123 () Bool)

(assert (=> bm!671123 (= call!671128 call!671125)))

(declare-fun b!7345699 () Bool)

(declare-fun c!1364544 () Bool)

(assert (=> b!7345699 (= c!1364544 (is-Star!19140 (regTwo!38792 r1!2370)))))

(assert (=> b!7345699 (= e!4398469 e!4398468)))

(declare-fun bm!671124 () Bool)

(assert (=> bm!671124 (= call!671125 call!671127)))

(declare-fun b!7345700 () Bool)

(assert (=> b!7345700 (= e!4398468 (as set.empty (Set Context!16160)))))

(declare-fun b!7345701 () Bool)

(assert (=> b!7345701 (= e!4398471 e!4398469)))

(assert (=> b!7345701 (= c!1364542 (is-Concat!27985 (regTwo!38792 r1!2370)))))

(declare-fun b!7345702 () Bool)

(assert (=> b!7345702 (= c!1364540 e!4398467)))

(declare-fun res!2966989 () Bool)

(assert (=> b!7345702 (=> (not res!2966989) (not e!4398467))))

(assert (=> b!7345702 (= res!2966989 (is-Concat!27985 (regTwo!38792 r1!2370)))))

(assert (=> b!7345702 (= e!4398470 e!4398471)))

(assert (= (and d!2279539 c!1364543) b!7345696))

(assert (= (and d!2279539 (not c!1364543)) b!7345698))

(assert (= (and b!7345698 c!1364541) b!7345693))

(assert (= (and b!7345698 (not c!1364541)) b!7345702))

(assert (= (and b!7345702 res!2966989) b!7345694))

(assert (= (and b!7345702 c!1364540) b!7345697))

(assert (= (and b!7345702 (not c!1364540)) b!7345701))

(assert (= (and b!7345701 c!1364542) b!7345692))

(assert (= (and b!7345701 (not c!1364542)) b!7345699))

(assert (= (and b!7345699 c!1364544) b!7345695))

(assert (= (and b!7345699 (not c!1364544)) b!7345700))

(assert (= (or b!7345692 b!7345695) bm!671122))

(assert (= (or b!7345692 b!7345695) bm!671123))

(assert (= (or b!7345697 bm!671123) bm!671124))

(assert (= (or b!7345697 bm!671122) bm!671120))

(assert (= (or b!7345693 bm!671124) bm!671121))

(assert (= (or b!7345693 b!7345697) bm!671119))

(declare-fun m!8008098 () Bool)

(assert (=> b!7345696 m!8008098))

(declare-fun m!8008100 () Bool)

(assert (=> bm!671120 m!8008100))

(declare-fun m!8008102 () Bool)

(assert (=> bm!671121 m!8008102))

(declare-fun m!8008104 () Bool)

(assert (=> b!7345694 m!8008104))

(declare-fun m!8008106 () Bool)

(assert (=> bm!671119 m!8008106))

(assert (=> b!7345611 d!2279539))

(declare-fun call!671130 () (Set Context!16160))

(declare-fun call!671135 () List!71636)

(declare-fun bm!671125 () Bool)

(declare-fun c!1364546 () Bool)

(assert (=> bm!671125 (= call!671130 (derivationStepZipperDown!2966 (ite c!1364546 (regOne!38793 (regOne!38792 r1!2370)) (regOne!38792 (regOne!38792 r1!2370))) (ite c!1364546 lt!2611039 (Context!16161 call!671135)) c!10362))))

(declare-fun b!7345707 () Bool)

(declare-fun e!4398475 () (Set Context!16160))

(declare-fun call!671134 () (Set Context!16160))

(assert (=> b!7345707 (= e!4398475 call!671134)))

(declare-fun bm!671126 () Bool)

(declare-fun c!1364548 () Bool)

(declare-fun c!1364545 () Bool)

(assert (=> bm!671126 (= call!671135 ($colon$colon!3138 (exprs!8580 lt!2611039) (ite (or c!1364545 c!1364548) (regTwo!38792 (regOne!38792 r1!2370)) (regOne!38792 r1!2370))))))

(declare-fun b!7345708 () Bool)

(declare-fun e!4398477 () (Set Context!16160))

(declare-fun call!671133 () (Set Context!16160))

(assert (=> b!7345708 (= e!4398477 (set.union call!671130 call!671133))))

(declare-fun b!7345709 () Bool)

(declare-fun e!4398473 () Bool)

(assert (=> b!7345709 (= e!4398473 (nullable!8231 (regOne!38792 (regOne!38792 r1!2370))))))

(declare-fun b!7345710 () Bool)

(declare-fun e!4398474 () (Set Context!16160))

(assert (=> b!7345710 (= e!4398474 call!671134)))

(declare-fun b!7345711 () Bool)

(declare-fun e!4398480 () (Set Context!16160))

(assert (=> b!7345711 (= e!4398480 (set.insert lt!2611039 (as set.empty (Set Context!16160))))))

(declare-fun bm!671127 () Bool)

(declare-fun call!671132 () List!71636)

(assert (=> bm!671127 (= call!671133 (derivationStepZipperDown!2966 (ite c!1364546 (regTwo!38793 (regOne!38792 r1!2370)) (ite c!1364545 (regTwo!38792 (regOne!38792 r1!2370)) (ite c!1364548 (regOne!38792 (regOne!38792 r1!2370)) (reg!19469 (regOne!38792 r1!2370))))) (ite (or c!1364546 c!1364545) lt!2611039 (Context!16161 call!671132)) c!10362))))

(declare-fun d!2279543 () Bool)

(declare-fun c!1364549 () Bool)

(assert (=> d!2279543 (= c!1364549 (and (is-ElementMatch!19140 (regOne!38792 r1!2370)) (= (c!1364528 (regOne!38792 r1!2370)) c!10362)))))

(assert (=> d!2279543 (= (derivationStepZipperDown!2966 (regOne!38792 r1!2370) lt!2611039 c!10362) e!4398480)))

(declare-fun b!7345712 () Bool)

(declare-fun e!4398478 () (Set Context!16160))

(declare-fun call!671131 () (Set Context!16160))

(assert (=> b!7345712 (= e!4398478 (set.union call!671130 call!671131))))

(declare-fun b!7345713 () Bool)

(assert (=> b!7345713 (= e!4398480 e!4398477)))

(assert (=> b!7345713 (= c!1364546 (is-Union!19140 (regOne!38792 r1!2370)))))

(declare-fun bm!671128 () Bool)

(assert (=> bm!671128 (= call!671132 call!671135)))

(declare-fun bm!671129 () Bool)

(assert (=> bm!671129 (= call!671134 call!671131)))

(declare-fun b!7345714 () Bool)

(declare-fun c!1364551 () Bool)

(assert (=> b!7345714 (= c!1364551 (is-Star!19140 (regOne!38792 r1!2370)))))

(assert (=> b!7345714 (= e!4398475 e!4398474)))

(declare-fun bm!671130 () Bool)

(assert (=> bm!671130 (= call!671131 call!671133)))

(declare-fun b!7345715 () Bool)

(assert (=> b!7345715 (= e!4398474 (as set.empty (Set Context!16160)))))

(declare-fun b!7345716 () Bool)

(assert (=> b!7345716 (= e!4398478 e!4398475)))

(assert (=> b!7345716 (= c!1364548 (is-Concat!27985 (regOne!38792 r1!2370)))))

(declare-fun b!7345717 () Bool)

(assert (=> b!7345717 (= c!1364545 e!4398473)))

(declare-fun res!2966990 () Bool)

(assert (=> b!7345717 (=> (not res!2966990) (not e!4398473))))

(assert (=> b!7345717 (= res!2966990 (is-Concat!27985 (regOne!38792 r1!2370)))))

(assert (=> b!7345717 (= e!4398477 e!4398478)))

(assert (= (and d!2279543 c!1364549) b!7345711))

(assert (= (and d!2279543 (not c!1364549)) b!7345713))

(assert (= (and b!7345713 c!1364546) b!7345708))

(assert (= (and b!7345713 (not c!1364546)) b!7345717))

(assert (= (and b!7345717 res!2966990) b!7345709))

(assert (= (and b!7345717 c!1364545) b!7345712))

(assert (= (and b!7345717 (not c!1364545)) b!7345716))

(assert (= (and b!7345716 c!1364548) b!7345707))

(assert (= (and b!7345716 (not c!1364548)) b!7345714))

(assert (= (and b!7345714 c!1364551) b!7345710))

(assert (= (and b!7345714 (not c!1364551)) b!7345715))

(assert (= (or b!7345707 b!7345710) bm!671128))

(assert (= (or b!7345707 b!7345710) bm!671129))

(assert (= (or b!7345712 bm!671129) bm!671130))

(assert (= (or b!7345712 bm!671128) bm!671126))

(assert (= (or b!7345708 bm!671130) bm!671127))

(assert (= (or b!7345708 b!7345712) bm!671125))

(declare-fun m!8008108 () Bool)

(assert (=> b!7345711 m!8008108))

(declare-fun m!8008110 () Bool)

(assert (=> bm!671126 m!8008110))

(declare-fun m!8008112 () Bool)

(assert (=> bm!671127 m!8008112))

(declare-fun m!8008114 () Bool)

(assert (=> b!7345709 m!8008114))

(declare-fun m!8008116 () Bool)

(assert (=> bm!671125 m!8008116))

(assert (=> b!7345611 d!2279543))

(declare-fun d!2279545 () Bool)

(assert (=> d!2279545 (= ($colon$colon!3138 (exprs!8580 ct1!282) (regTwo!38792 r1!2370)) (Cons!71512 (regTwo!38792 r1!2370) (exprs!8580 ct1!282)))))

(assert (=> b!7345611 d!2279545))

(declare-fun e!4398496 () Bool)

(declare-fun lt!2611076 () List!71636)

(declare-fun b!7345747 () Bool)

(assert (=> b!7345747 (= e!4398496 (or (not (= (exprs!8580 ct2!378) Nil!71512)) (= lt!2611076 (exprs!8580 cWitness!61))))))

(declare-fun b!7345745 () Bool)

(declare-fun e!4398495 () List!71636)

(assert (=> b!7345745 (= e!4398495 (Cons!71512 (h!77960 (exprs!8580 cWitness!61)) (++!16958 (t!386033 (exprs!8580 cWitness!61)) (exprs!8580 ct2!378))))))

(declare-fun b!7345744 () Bool)

(assert (=> b!7345744 (= e!4398495 (exprs!8580 ct2!378))))

(declare-fun d!2279547 () Bool)

(assert (=> d!2279547 e!4398496))

(declare-fun res!2966998 () Bool)

(assert (=> d!2279547 (=> (not res!2966998) (not e!4398496))))

(declare-fun content!15050 (List!71636) (Set Regex!19140))

(assert (=> d!2279547 (= res!2966998 (= (content!15050 lt!2611076) (set.union (content!15050 (exprs!8580 cWitness!61)) (content!15050 (exprs!8580 ct2!378)))))))

(assert (=> d!2279547 (= lt!2611076 e!4398495)))

(declare-fun c!1364562 () Bool)

(assert (=> d!2279547 (= c!1364562 (is-Nil!71512 (exprs!8580 cWitness!61)))))

(assert (=> d!2279547 (= (++!16958 (exprs!8580 cWitness!61) (exprs!8580 ct2!378)) lt!2611076)))

(declare-fun b!7345746 () Bool)

(declare-fun res!2966997 () Bool)

(assert (=> b!7345746 (=> (not res!2966997) (not e!4398496))))

(declare-fun size!42029 (List!71636) Int)

(assert (=> b!7345746 (= res!2966997 (= (size!42029 lt!2611076) (+ (size!42029 (exprs!8580 cWitness!61)) (size!42029 (exprs!8580 ct2!378)))))))

(assert (= (and d!2279547 c!1364562) b!7345744))

(assert (= (and d!2279547 (not c!1364562)) b!7345745))

(assert (= (and d!2279547 res!2966998) b!7345746))

(assert (= (and b!7345746 res!2966997) b!7345747))

(declare-fun m!8008118 () Bool)

(assert (=> b!7345745 m!8008118))

(declare-fun m!8008120 () Bool)

(assert (=> d!2279547 m!8008120))

(declare-fun m!8008122 () Bool)

(assert (=> d!2279547 m!8008122))

(declare-fun m!8008124 () Bool)

(assert (=> d!2279547 m!8008124))

(declare-fun m!8008126 () Bool)

(assert (=> b!7345746 m!8008126))

(declare-fun m!8008128 () Bool)

(assert (=> b!7345746 m!8008128))

(declare-fun m!8008130 () Bool)

(assert (=> b!7345746 m!8008130))

(assert (=> b!7345605 d!2279547))

(declare-fun call!671151 () List!71636)

(declare-fun call!671146 () (Set Context!16160))

(declare-fun bm!671139 () Bool)

(declare-fun c!1364564 () Bool)

(assert (=> bm!671139 (= call!671146 (derivationStepZipperDown!2966 (ite c!1364564 (regOne!38793 (regOne!38792 r1!2370)) (regOne!38792 (regOne!38792 r1!2370))) (ite c!1364564 (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378))) (Context!16161 call!671151)) c!10362))))

(declare-fun b!7345748 () Bool)

(declare-fun e!4398499 () (Set Context!16160))

(declare-fun call!671150 () (Set Context!16160))

(assert (=> b!7345748 (= e!4398499 call!671150)))

(declare-fun bm!671140 () Bool)

(declare-fun c!1364563 () Bool)

(declare-fun c!1364565 () Bool)

(assert (=> bm!671140 (= call!671151 ($colon$colon!3138 (exprs!8580 (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378)))) (ite (or c!1364563 c!1364565) (regTwo!38792 (regOne!38792 r1!2370)) (regOne!38792 r1!2370))))))

(declare-fun b!7345749 () Bool)

(declare-fun e!4398500 () (Set Context!16160))

(declare-fun call!671149 () (Set Context!16160))

(assert (=> b!7345749 (= e!4398500 (set.union call!671146 call!671149))))

(declare-fun b!7345750 () Bool)

(declare-fun e!4398497 () Bool)

(assert (=> b!7345750 (= e!4398497 (nullable!8231 (regOne!38792 (regOne!38792 r1!2370))))))

(declare-fun b!7345751 () Bool)

(declare-fun e!4398498 () (Set Context!16160))

(assert (=> b!7345751 (= e!4398498 call!671150)))

(declare-fun b!7345752 () Bool)

(declare-fun e!4398502 () (Set Context!16160))

(assert (=> b!7345752 (= e!4398502 (set.insert (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378))) (as set.empty (Set Context!16160))))))

(declare-fun call!671148 () List!71636)

(declare-fun bm!671141 () Bool)

(assert (=> bm!671141 (= call!671149 (derivationStepZipperDown!2966 (ite c!1364564 (regTwo!38793 (regOne!38792 r1!2370)) (ite c!1364563 (regTwo!38792 (regOne!38792 r1!2370)) (ite c!1364565 (regOne!38792 (regOne!38792 r1!2370)) (reg!19469 (regOne!38792 r1!2370))))) (ite (or c!1364564 c!1364563) (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378))) (Context!16161 call!671148)) c!10362))))

(declare-fun d!2279549 () Bool)

(declare-fun c!1364566 () Bool)

(assert (=> d!2279549 (= c!1364566 (and (is-ElementMatch!19140 (regOne!38792 r1!2370)) (= (c!1364528 (regOne!38792 r1!2370)) c!10362)))))

(assert (=> d!2279549 (= (derivationStepZipperDown!2966 (regOne!38792 r1!2370) (Context!16161 (++!16958 lt!2611042 (exprs!8580 ct2!378))) c!10362) e!4398502)))

(declare-fun b!7345753 () Bool)

(declare-fun e!4398501 () (Set Context!16160))

(declare-fun call!671147 () (Set Context!16160))

(assert (=> b!7345753 (= e!4398501 (set.union call!671146 call!671147))))

(declare-fun b!7345754 () Bool)

(assert (=> b!7345754 (= e!4398502 e!4398500)))

(assert (=> b!7345754 (= c!1364564 (is-Union!19140 (regOne!38792 r1!2370)))))

(declare-fun bm!671142 () Bool)

(assert (=> bm!671142 (= call!671148 call!671151)))

(declare-fun bm!671143 () Bool)

(assert (=> bm!671143 (= call!671150 call!671147)))

(declare-fun b!7345755 () Bool)

(declare-fun c!1364567 () Bool)

(assert (=> b!7345755 (= c!1364567 (is-Star!19140 (regOne!38792 r1!2370)))))

(assert (=> b!7345755 (= e!4398499 e!4398498)))

(declare-fun bm!671144 () Bool)

(assert (=> bm!671144 (= call!671147 call!671149)))

(declare-fun b!7345756 () Bool)

(assert (=> b!7345756 (= e!4398498 (as set.empty (Set Context!16160)))))

(declare-fun b!7345757 () Bool)

(assert (=> b!7345757 (= e!4398501 e!4398499)))

(assert (=> b!7345757 (= c!1364565 (is-Concat!27985 (regOne!38792 r1!2370)))))

(declare-fun b!7345758 () Bool)

(assert (=> b!7345758 (= c!1364563 e!4398497)))

(declare-fun res!2966999 () Bool)

(assert (=> b!7345758 (=> (not res!2966999) (not e!4398497))))

(assert (=> b!7345758 (= res!2966999 (is-Concat!27985 (regOne!38792 r1!2370)))))

(assert (=> b!7345758 (= e!4398500 e!4398501)))

(assert (= (and d!2279549 c!1364566) b!7345752))

(assert (= (and d!2279549 (not c!1364566)) b!7345754))

(assert (= (and b!7345754 c!1364564) b!7345749))

(assert (= (and b!7345754 (not c!1364564)) b!7345758))

(assert (= (and b!7345758 res!2966999) b!7345750))

(assert (= (and b!7345758 c!1364563) b!7345753))

(assert (= (and b!7345758 (not c!1364563)) b!7345757))

(assert (= (and b!7345757 c!1364565) b!7345748))

(assert (= (and b!7345757 (not c!1364565)) b!7345755))

(assert (= (and b!7345755 c!1364567) b!7345751))

(assert (= (and b!7345755 (not c!1364567)) b!7345756))

(assert (= (or b!7345748 b!7345751) bm!671142))

(assert (= (or b!7345748 b!7345751) bm!671143))

(assert (= (or b!7345753 bm!671143) bm!671144))

(assert (= (or b!7345753 bm!671142) bm!671140))

(assert (= (or b!7345749 bm!671144) bm!671141))

(assert (= (or b!7345749 b!7345753) bm!671139))

(declare-fun m!8008132 () Bool)

(assert (=> b!7345752 m!8008132))

(declare-fun m!8008134 () Bool)

(assert (=> bm!671140 m!8008134))

(declare-fun m!8008136 () Bool)

(assert (=> bm!671141 m!8008136))

(assert (=> b!7345750 m!8008114))

(declare-fun m!8008138 () Bool)

(assert (=> bm!671139 m!8008138))

(assert (=> b!7345605 d!2279549))

(declare-fun bs!1918822 () Bool)

(declare-fun d!2279551 () Bool)

(assert (= bs!1918822 (and d!2279551 b!7345616)))

(declare-fun lambda!456072 () Int)

(assert (=> bs!1918822 (= lambda!456072 lambda!456058)))

(assert (=> d!2279551 (set.member (Context!16161 (++!16958 (exprs!8580 cWitness!61) (exprs!8580 ct2!378))) (derivationStepZipperDown!2966 (regOne!38792 r1!2370) (Context!16161 (++!16958 (exprs!8580 lt!2611039) (exprs!8580 ct2!378))) c!10362))))

(declare-fun lt!2611085 () Unit!165233)

(assert (=> d!2279551 (= lt!2611085 (lemmaConcatPreservesForall!1815 (exprs!8580 lt!2611039) (exprs!8580 ct2!378) lambda!456072))))

(declare-fun lt!2611084 () Unit!165233)

(assert (=> d!2279551 (= lt!2611084 (lemmaConcatPreservesForall!1815 (exprs!8580 cWitness!61) (exprs!8580 ct2!378) lambda!456072))))

(declare-fun lt!2611083 () Unit!165233)

(declare-fun choose!57136 (Regex!19140 Context!16160 Context!16160 Context!16160 C!38554) Unit!165233)

(assert (=> d!2279551 (= lt!2611083 (choose!57136 (regOne!38792 r1!2370) lt!2611039 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279551 (validRegex!9736 (regOne!38792 r1!2370))))

(assert (=> d!2279551 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!67 (regOne!38792 r1!2370) lt!2611039 ct2!378 cWitness!61 c!10362) lt!2611083)))

(declare-fun bs!1918823 () Bool)

(assert (= bs!1918823 d!2279551))

(assert (=> bs!1918823 m!8008018))

(declare-fun m!8008140 () Bool)

(assert (=> bs!1918823 m!8008140))

(declare-fun m!8008142 () Bool)

(assert (=> bs!1918823 m!8008142))

(declare-fun m!8008144 () Bool)

(assert (=> bs!1918823 m!8008144))

(declare-fun m!8008146 () Bool)

(assert (=> bs!1918823 m!8008146))

(declare-fun m!8008148 () Bool)

(assert (=> bs!1918823 m!8008148))

(declare-fun m!8008150 () Bool)

(assert (=> bs!1918823 m!8008150))

(declare-fun m!8008152 () Bool)

(assert (=> bs!1918823 m!8008152))

(assert (=> b!7345605 d!2279551))

(declare-fun d!2279553 () Bool)

(assert (=> d!2279553 (forall!17966 (++!16958 (exprs!8580 cWitness!61) (exprs!8580 ct2!378)) lambda!456058)))

(declare-fun lt!2611088 () Unit!165233)

(declare-fun choose!57137 (List!71636 List!71636 Int) Unit!165233)

(assert (=> d!2279553 (= lt!2611088 (choose!57137 (exprs!8580 cWitness!61) (exprs!8580 ct2!378) lambda!456058))))

(assert (=> d!2279553 (forall!17966 (exprs!8580 cWitness!61) lambda!456058)))

(assert (=> d!2279553 (= (lemmaConcatPreservesForall!1815 (exprs!8580 cWitness!61) (exprs!8580 ct2!378) lambda!456058) lt!2611088)))

(declare-fun bs!1918824 () Bool)

(assert (= bs!1918824 d!2279553))

(assert (=> bs!1918824 m!8008018))

(assert (=> bs!1918824 m!8008018))

(declare-fun m!8008154 () Bool)

(assert (=> bs!1918824 m!8008154))

(declare-fun m!8008156 () Bool)

(assert (=> bs!1918824 m!8008156))

(assert (=> bs!1918824 m!8008014))

(assert (=> b!7345605 d!2279553))

(declare-fun d!2279555 () Bool)

(declare-fun res!2967001 () Bool)

(declare-fun e!4398509 () Bool)

(assert (=> d!2279555 (=> res!2967001 e!4398509)))

(assert (=> d!2279555 (= res!2967001 (is-Nil!71512 (exprs!8580 cWitness!61)))))

(assert (=> d!2279555 (= (forall!17966 (exprs!8580 cWitness!61) lambda!456058) e!4398509)))

(declare-fun b!7345770 () Bool)

(declare-fun e!4398510 () Bool)

(assert (=> b!7345770 (= e!4398509 e!4398510)))

(declare-fun res!2967002 () Bool)

(assert (=> b!7345770 (=> (not res!2967002) (not e!4398510))))

(assert (=> b!7345770 (= res!2967002 (dynLambda!29471 lambda!456058 (h!77960 (exprs!8580 cWitness!61))))))

(declare-fun b!7345771 () Bool)

(assert (=> b!7345771 (= e!4398510 (forall!17966 (t!386033 (exprs!8580 cWitness!61)) lambda!456058))))

(assert (= (and d!2279555 (not res!2967001)) b!7345770))

(assert (= (and b!7345770 res!2967002) b!7345771))

(declare-fun b_lambda!283989 () Bool)

(assert (=> (not b_lambda!283989) (not b!7345770)))

(declare-fun m!8008158 () Bool)

(assert (=> b!7345770 m!8008158))

(declare-fun m!8008160 () Bool)

(assert (=> b!7345771 m!8008160))

(assert (=> b!7345605 d!2279555))

(declare-fun lt!2611089 () List!71636)

(declare-fun e!4398512 () Bool)

(declare-fun b!7345775 () Bool)

(assert (=> b!7345775 (= e!4398512 (or (not (= (exprs!8580 ct2!378) Nil!71512)) (= lt!2611089 lt!2611042)))))

(declare-fun b!7345773 () Bool)

(declare-fun e!4398511 () List!71636)

(assert (=> b!7345773 (= e!4398511 (Cons!71512 (h!77960 lt!2611042) (++!16958 (t!386033 lt!2611042) (exprs!8580 ct2!378))))))

(declare-fun b!7345772 () Bool)

(assert (=> b!7345772 (= e!4398511 (exprs!8580 ct2!378))))

(declare-fun d!2279557 () Bool)

(assert (=> d!2279557 e!4398512))

(declare-fun res!2967004 () Bool)

(assert (=> d!2279557 (=> (not res!2967004) (not e!4398512))))

(assert (=> d!2279557 (= res!2967004 (= (content!15050 lt!2611089) (set.union (content!15050 lt!2611042) (content!15050 (exprs!8580 ct2!378)))))))

(assert (=> d!2279557 (= lt!2611089 e!4398511)))

(declare-fun c!1364574 () Bool)

(assert (=> d!2279557 (= c!1364574 (is-Nil!71512 lt!2611042))))

(assert (=> d!2279557 (= (++!16958 lt!2611042 (exprs!8580 ct2!378)) lt!2611089)))

(declare-fun b!7345774 () Bool)

(declare-fun res!2967003 () Bool)

(assert (=> b!7345774 (=> (not res!2967003) (not e!4398512))))

(assert (=> b!7345774 (= res!2967003 (= (size!42029 lt!2611089) (+ (size!42029 lt!2611042) (size!42029 (exprs!8580 ct2!378)))))))

(assert (= (and d!2279557 c!1364574) b!7345772))

(assert (= (and d!2279557 (not c!1364574)) b!7345773))

(assert (= (and d!2279557 res!2967004) b!7345774))

(assert (= (and b!7345774 res!2967003) b!7345775))

(declare-fun m!8008162 () Bool)

(assert (=> b!7345773 m!8008162))

(declare-fun m!8008164 () Bool)

(assert (=> d!2279557 m!8008164))

(declare-fun m!8008166 () Bool)

(assert (=> d!2279557 m!8008166))

(assert (=> d!2279557 m!8008124))

(declare-fun m!8008168 () Bool)

(assert (=> b!7345774 m!8008168))

(declare-fun m!8008170 () Bool)

(assert (=> b!7345774 m!8008170))

(assert (=> b!7345774 m!8008130))

(assert (=> b!7345605 d!2279557))

(declare-fun d!2279559 () Bool)

(assert (=> d!2279559 (forall!17966 (++!16958 lt!2611042 (exprs!8580 ct2!378)) lambda!456058)))

(declare-fun lt!2611090 () Unit!165233)

(assert (=> d!2279559 (= lt!2611090 (choose!57137 lt!2611042 (exprs!8580 ct2!378) lambda!456058))))

(assert (=> d!2279559 (forall!17966 lt!2611042 lambda!456058)))

(assert (=> d!2279559 (= (lemmaConcatPreservesForall!1815 lt!2611042 (exprs!8580 ct2!378) lambda!456058) lt!2611090)))

(declare-fun bs!1918825 () Bool)

(assert (= bs!1918825 d!2279559))

(assert (=> bs!1918825 m!8008022))

(assert (=> bs!1918825 m!8008022))

(declare-fun m!8008174 () Bool)

(assert (=> bs!1918825 m!8008174))

(declare-fun m!8008176 () Bool)

(assert (=> bs!1918825 m!8008176))

(declare-fun m!8008180 () Bool)

(assert (=> bs!1918825 m!8008180))

(assert (=> b!7345605 d!2279559))

(declare-fun call!671165 () List!71636)

(declare-fun call!671160 () (Set Context!16160))

(declare-fun c!1364576 () Bool)

(declare-fun bm!671155 () Bool)

(assert (=> bm!671155 (= call!671160 (derivationStepZipperDown!2966 (ite c!1364576 (regOne!38793 r1!2370) (regOne!38792 r1!2370)) (ite c!1364576 (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378))) (Context!16161 call!671165)) c!10362))))

(declare-fun b!7345776 () Bool)

(declare-fun e!4398515 () (Set Context!16160))

(declare-fun call!671164 () (Set Context!16160))

(assert (=> b!7345776 (= e!4398515 call!671164)))

(declare-fun bm!671156 () Bool)

(declare-fun c!1364575 () Bool)

(declare-fun c!1364577 () Bool)

(assert (=> bm!671156 (= call!671165 ($colon$colon!3138 (exprs!8580 (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378)))) (ite (or c!1364575 c!1364577) (regTwo!38792 r1!2370) r1!2370)))))

(declare-fun b!7345777 () Bool)

(declare-fun e!4398516 () (Set Context!16160))

(declare-fun call!671163 () (Set Context!16160))

(assert (=> b!7345777 (= e!4398516 (set.union call!671160 call!671163))))

(declare-fun b!7345778 () Bool)

(declare-fun e!4398513 () Bool)

(assert (=> b!7345778 (= e!4398513 (nullable!8231 (regOne!38792 r1!2370)))))

(declare-fun b!7345779 () Bool)

(declare-fun e!4398514 () (Set Context!16160))

(assert (=> b!7345779 (= e!4398514 call!671164)))

(declare-fun b!7345780 () Bool)

(declare-fun e!4398518 () (Set Context!16160))

(assert (=> b!7345780 (= e!4398518 (set.insert (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378))) (as set.empty (Set Context!16160))))))

(declare-fun bm!671157 () Bool)

(declare-fun call!671162 () List!71636)

(assert (=> bm!671157 (= call!671163 (derivationStepZipperDown!2966 (ite c!1364576 (regTwo!38793 r1!2370) (ite c!1364575 (regTwo!38792 r1!2370) (ite c!1364577 (regOne!38792 r1!2370) (reg!19469 r1!2370)))) (ite (or c!1364576 c!1364575) (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378))) (Context!16161 call!671162)) c!10362))))

(declare-fun d!2279561 () Bool)

(declare-fun c!1364578 () Bool)

(assert (=> d!2279561 (= c!1364578 (and (is-ElementMatch!19140 r1!2370) (= (c!1364528 r1!2370) c!10362)))))

(assert (=> d!2279561 (= (derivationStepZipperDown!2966 r1!2370 (Context!16161 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378))) c!10362) e!4398518)))

(declare-fun b!7345781 () Bool)

(declare-fun e!4398517 () (Set Context!16160))

(declare-fun call!671161 () (Set Context!16160))

(assert (=> b!7345781 (= e!4398517 (set.union call!671160 call!671161))))

(declare-fun b!7345782 () Bool)

(assert (=> b!7345782 (= e!4398518 e!4398516)))

(assert (=> b!7345782 (= c!1364576 (is-Union!19140 r1!2370))))

(declare-fun bm!671158 () Bool)

(assert (=> bm!671158 (= call!671162 call!671165)))

(declare-fun bm!671159 () Bool)

(assert (=> bm!671159 (= call!671164 call!671161)))

(declare-fun b!7345783 () Bool)

(declare-fun c!1364579 () Bool)

(assert (=> b!7345783 (= c!1364579 (is-Star!19140 r1!2370))))

(assert (=> b!7345783 (= e!4398515 e!4398514)))

(declare-fun bm!671160 () Bool)

(assert (=> bm!671160 (= call!671161 call!671163)))

(declare-fun b!7345784 () Bool)

(assert (=> b!7345784 (= e!4398514 (as set.empty (Set Context!16160)))))

(declare-fun b!7345785 () Bool)

(assert (=> b!7345785 (= e!4398517 e!4398515)))

(assert (=> b!7345785 (= c!1364577 (is-Concat!27985 r1!2370))))

(declare-fun b!7345786 () Bool)

(assert (=> b!7345786 (= c!1364575 e!4398513)))

(declare-fun res!2967005 () Bool)

(assert (=> b!7345786 (=> (not res!2967005) (not e!4398513))))

(assert (=> b!7345786 (= res!2967005 (is-Concat!27985 r1!2370))))

(assert (=> b!7345786 (= e!4398516 e!4398517)))

(assert (= (and d!2279561 c!1364578) b!7345780))

(assert (= (and d!2279561 (not c!1364578)) b!7345782))

(assert (= (and b!7345782 c!1364576) b!7345777))

(assert (= (and b!7345782 (not c!1364576)) b!7345786))

(assert (= (and b!7345786 res!2967005) b!7345778))

(assert (= (and b!7345786 c!1364575) b!7345781))

(assert (= (and b!7345786 (not c!1364575)) b!7345785))

(assert (= (and b!7345785 c!1364577) b!7345776))

(assert (= (and b!7345785 (not c!1364577)) b!7345783))

(assert (= (and b!7345783 c!1364579) b!7345779))

(assert (= (and b!7345783 (not c!1364579)) b!7345784))

(assert (= (or b!7345776 b!7345779) bm!671158))

(assert (= (or b!7345776 b!7345779) bm!671159))

(assert (= (or b!7345781 bm!671159) bm!671160))

(assert (= (or b!7345781 bm!671158) bm!671156))

(assert (= (or b!7345777 bm!671160) bm!671157))

(assert (= (or b!7345777 b!7345781) bm!671155))

(declare-fun m!8008186 () Bool)

(assert (=> b!7345780 m!8008186))

(declare-fun m!8008188 () Bool)

(assert (=> bm!671156 m!8008188))

(declare-fun m!8008190 () Bool)

(assert (=> bm!671157 m!8008190))

(assert (=> b!7345778 m!8008036))

(declare-fun m!8008192 () Bool)

(assert (=> bm!671155 m!8008192))

(assert (=> b!7345616 d!2279561))

(declare-fun e!4398526 () Bool)

(declare-fun b!7345801 () Bool)

(declare-fun lt!2611091 () List!71636)

(assert (=> b!7345801 (= e!4398526 (or (not (= (exprs!8580 ct2!378) Nil!71512)) (= lt!2611091 (exprs!8580 ct1!282))))))

(declare-fun b!7345799 () Bool)

(declare-fun e!4398525 () List!71636)

(assert (=> b!7345799 (= e!4398525 (Cons!71512 (h!77960 (exprs!8580 ct1!282)) (++!16958 (t!386033 (exprs!8580 ct1!282)) (exprs!8580 ct2!378))))))

(declare-fun b!7345798 () Bool)

(assert (=> b!7345798 (= e!4398525 (exprs!8580 ct2!378))))

(declare-fun d!2279565 () Bool)

(assert (=> d!2279565 e!4398526))

(declare-fun res!2967008 () Bool)

(assert (=> d!2279565 (=> (not res!2967008) (not e!4398526))))

(assert (=> d!2279565 (= res!2967008 (= (content!15050 lt!2611091) (set.union (content!15050 (exprs!8580 ct1!282)) (content!15050 (exprs!8580 ct2!378)))))))

(assert (=> d!2279565 (= lt!2611091 e!4398525)))

(declare-fun c!1364585 () Bool)

(assert (=> d!2279565 (= c!1364585 (is-Nil!71512 (exprs!8580 ct1!282)))))

(assert (=> d!2279565 (= (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378)) lt!2611091)))

(declare-fun b!7345800 () Bool)

(declare-fun res!2967007 () Bool)

(assert (=> b!7345800 (=> (not res!2967007) (not e!4398526))))

(assert (=> b!7345800 (= res!2967007 (= (size!42029 lt!2611091) (+ (size!42029 (exprs!8580 ct1!282)) (size!42029 (exprs!8580 ct2!378)))))))

(assert (= (and d!2279565 c!1364585) b!7345798))

(assert (= (and d!2279565 (not c!1364585)) b!7345799))

(assert (= (and d!2279565 res!2967008) b!7345800))

(assert (= (and b!7345800 res!2967007) b!7345801))

(declare-fun m!8008194 () Bool)

(assert (=> b!7345799 m!8008194))

(declare-fun m!8008196 () Bool)

(assert (=> d!2279565 m!8008196))

(declare-fun m!8008198 () Bool)

(assert (=> d!2279565 m!8008198))

(assert (=> d!2279565 m!8008124))

(declare-fun m!8008200 () Bool)

(assert (=> b!7345800 m!8008200))

(declare-fun m!8008202 () Bool)

(assert (=> b!7345800 m!8008202))

(assert (=> b!7345800 m!8008130))

(assert (=> b!7345616 d!2279565))

(declare-fun d!2279567 () Bool)

(assert (=> d!2279567 (forall!17966 (++!16958 (exprs!8580 ct1!282) (exprs!8580 ct2!378)) lambda!456058)))

(declare-fun lt!2611092 () Unit!165233)

(assert (=> d!2279567 (= lt!2611092 (choose!57137 (exprs!8580 ct1!282) (exprs!8580 ct2!378) lambda!456058))))

(assert (=> d!2279567 (forall!17966 (exprs!8580 ct1!282) lambda!456058)))

(assert (=> d!2279567 (= (lemmaConcatPreservesForall!1815 (exprs!8580 ct1!282) (exprs!8580 ct2!378) lambda!456058) lt!2611092)))

(declare-fun bs!1918826 () Bool)

(assert (= bs!1918826 d!2279567))

(assert (=> bs!1918826 m!8008030))

(assert (=> bs!1918826 m!8008030))

(declare-fun m!8008204 () Bool)

(assert (=> bs!1918826 m!8008204))

(declare-fun m!8008206 () Bool)

(assert (=> bs!1918826 m!8008206))

(declare-fun m!8008208 () Bool)

(assert (=> bs!1918826 m!8008208))

(assert (=> b!7345616 d!2279567))

(declare-fun b!7345820 () Bool)

(declare-fun e!4398541 () Bool)

(declare-fun e!4398545 () Bool)

(assert (=> b!7345820 (= e!4398541 e!4398545)))

(declare-fun res!2967022 () Bool)

(assert (=> b!7345820 (=> (not res!2967022) (not e!4398545))))

(declare-fun call!671178 () Bool)

(assert (=> b!7345820 (= res!2967022 call!671178)))

(declare-fun b!7345821 () Bool)

(declare-fun e!4398544 () Bool)

(declare-fun e!4398543 () Bool)

(assert (=> b!7345821 (= e!4398544 e!4398543)))

(declare-fun res!2967020 () Bool)

(assert (=> b!7345821 (= res!2967020 (not (nullable!8231 (reg!19469 (regTwo!38792 r1!2370)))))))

(assert (=> b!7345821 (=> (not res!2967020) (not e!4398543))))

(declare-fun d!2279569 () Bool)

(declare-fun res!2967019 () Bool)

(declare-fun e!4398547 () Bool)

(assert (=> d!2279569 (=> res!2967019 e!4398547)))

(assert (=> d!2279569 (= res!2967019 (is-ElementMatch!19140 (regTwo!38792 r1!2370)))))

(assert (=> d!2279569 (= (validRegex!9736 (regTwo!38792 r1!2370)) e!4398547)))

(declare-fun call!671180 () Bool)

(declare-fun c!1364591 () Bool)

(declare-fun bm!671173 () Bool)

(declare-fun c!1364590 () Bool)

(assert (=> bm!671173 (= call!671180 (validRegex!9736 (ite c!1364590 (reg!19469 (regTwo!38792 r1!2370)) (ite c!1364591 (regOne!38793 (regTwo!38792 r1!2370)) (regTwo!38792 (regTwo!38792 r1!2370))))))))

(declare-fun b!7345822 () Bool)

(declare-fun call!671179 () Bool)

(assert (=> b!7345822 (= e!4398545 call!671179)))

(declare-fun b!7345823 () Bool)

(declare-fun res!2967021 () Bool)

(assert (=> b!7345823 (=> res!2967021 e!4398541)))

(assert (=> b!7345823 (= res!2967021 (not (is-Concat!27985 (regTwo!38792 r1!2370))))))

(declare-fun e!4398546 () Bool)

(assert (=> b!7345823 (= e!4398546 e!4398541)))

(declare-fun b!7345824 () Bool)

(declare-fun res!2967023 () Bool)

(declare-fun e!4398542 () Bool)

(assert (=> b!7345824 (=> (not res!2967023) (not e!4398542))))

(assert (=> b!7345824 (= res!2967023 call!671179)))

(assert (=> b!7345824 (= e!4398546 e!4398542)))

(declare-fun bm!671174 () Bool)

(assert (=> bm!671174 (= call!671179 call!671180)))

(declare-fun bm!671175 () Bool)

(assert (=> bm!671175 (= call!671178 (validRegex!9736 (ite c!1364591 (regTwo!38793 (regTwo!38792 r1!2370)) (regOne!38792 (regTwo!38792 r1!2370)))))))

(declare-fun b!7345825 () Bool)

(assert (=> b!7345825 (= e!4398544 e!4398546)))

(assert (=> b!7345825 (= c!1364591 (is-Union!19140 (regTwo!38792 r1!2370)))))

(declare-fun b!7345826 () Bool)

(assert (=> b!7345826 (= e!4398543 call!671180)))

(declare-fun b!7345827 () Bool)

(assert (=> b!7345827 (= e!4398547 e!4398544)))

(assert (=> b!7345827 (= c!1364590 (is-Star!19140 (regTwo!38792 r1!2370)))))

(declare-fun b!7345828 () Bool)

(assert (=> b!7345828 (= e!4398542 call!671178)))

(assert (= (and d!2279569 (not res!2967019)) b!7345827))

(assert (= (and b!7345827 c!1364590) b!7345821))

(assert (= (and b!7345827 (not c!1364590)) b!7345825))

(assert (= (and b!7345821 res!2967020) b!7345826))

(assert (= (and b!7345825 c!1364591) b!7345824))

(assert (= (and b!7345825 (not c!1364591)) b!7345823))

(assert (= (and b!7345824 res!2967023) b!7345828))

(assert (= (and b!7345823 (not res!2967021)) b!7345820))

(assert (= (and b!7345820 res!2967022) b!7345822))

(assert (= (or b!7345824 b!7345822) bm!671174))

(assert (= (or b!7345828 b!7345820) bm!671175))

(assert (= (or b!7345826 bm!671174) bm!671173))

(declare-fun m!8008218 () Bool)

(assert (=> b!7345821 m!8008218))

(declare-fun m!8008220 () Bool)

(assert (=> bm!671173 m!8008220))

(declare-fun m!8008222 () Bool)

(assert (=> bm!671175 m!8008222))

(assert (=> b!7345610 d!2279569))

(declare-fun b!7345829 () Bool)

(declare-fun e!4398548 () Bool)

(declare-fun e!4398552 () Bool)

(assert (=> b!7345829 (= e!4398548 e!4398552)))

(declare-fun res!2967027 () Bool)

(assert (=> b!7345829 (=> (not res!2967027) (not e!4398552))))

(declare-fun call!671181 () Bool)

(assert (=> b!7345829 (= res!2967027 call!671181)))

(declare-fun b!7345830 () Bool)

(declare-fun e!4398551 () Bool)

(declare-fun e!4398550 () Bool)

(assert (=> b!7345830 (= e!4398551 e!4398550)))

(declare-fun res!2967025 () Bool)

(assert (=> b!7345830 (= res!2967025 (not (nullable!8231 (reg!19469 r1!2370))))))

(assert (=> b!7345830 (=> (not res!2967025) (not e!4398550))))

(declare-fun d!2279573 () Bool)

(declare-fun res!2967024 () Bool)

(declare-fun e!4398554 () Bool)

(assert (=> d!2279573 (=> res!2967024 e!4398554)))

(assert (=> d!2279573 (= res!2967024 (is-ElementMatch!19140 r1!2370))))

(assert (=> d!2279573 (= (validRegex!9736 r1!2370) e!4398554)))

(declare-fun call!671183 () Bool)

(declare-fun bm!671176 () Bool)

(declare-fun c!1364592 () Bool)

(declare-fun c!1364593 () Bool)

(assert (=> bm!671176 (= call!671183 (validRegex!9736 (ite c!1364592 (reg!19469 r1!2370) (ite c!1364593 (regOne!38793 r1!2370) (regTwo!38792 r1!2370)))))))

(declare-fun b!7345831 () Bool)

(declare-fun call!671182 () Bool)

(assert (=> b!7345831 (= e!4398552 call!671182)))

(declare-fun b!7345832 () Bool)

(declare-fun res!2967026 () Bool)

(assert (=> b!7345832 (=> res!2967026 e!4398548)))

(assert (=> b!7345832 (= res!2967026 (not (is-Concat!27985 r1!2370)))))

(declare-fun e!4398553 () Bool)

(assert (=> b!7345832 (= e!4398553 e!4398548)))

(declare-fun b!7345833 () Bool)

(declare-fun res!2967028 () Bool)

(declare-fun e!4398549 () Bool)

(assert (=> b!7345833 (=> (not res!2967028) (not e!4398549))))

(assert (=> b!7345833 (= res!2967028 call!671182)))

(assert (=> b!7345833 (= e!4398553 e!4398549)))

(declare-fun bm!671177 () Bool)

(assert (=> bm!671177 (= call!671182 call!671183)))

(declare-fun bm!671178 () Bool)

(assert (=> bm!671178 (= call!671181 (validRegex!9736 (ite c!1364593 (regTwo!38793 r1!2370) (regOne!38792 r1!2370))))))

(declare-fun b!7345834 () Bool)

(assert (=> b!7345834 (= e!4398551 e!4398553)))

(assert (=> b!7345834 (= c!1364593 (is-Union!19140 r1!2370))))

(declare-fun b!7345835 () Bool)

(assert (=> b!7345835 (= e!4398550 call!671183)))

(declare-fun b!7345836 () Bool)

(assert (=> b!7345836 (= e!4398554 e!4398551)))

(assert (=> b!7345836 (= c!1364592 (is-Star!19140 r1!2370))))

(declare-fun b!7345837 () Bool)

(assert (=> b!7345837 (= e!4398549 call!671181)))

(assert (= (and d!2279573 (not res!2967024)) b!7345836))

(assert (= (and b!7345836 c!1364592) b!7345830))

(assert (= (and b!7345836 (not c!1364592)) b!7345834))

(assert (= (and b!7345830 res!2967025) b!7345835))

(assert (= (and b!7345834 c!1364593) b!7345833))

(assert (= (and b!7345834 (not c!1364593)) b!7345832))

(assert (= (and b!7345833 res!2967028) b!7345837))

(assert (= (and b!7345832 (not res!2967026)) b!7345829))

(assert (= (and b!7345829 res!2967027) b!7345831))

(assert (= (or b!7345833 b!7345831) bm!671177))

(assert (= (or b!7345837 b!7345829) bm!671178))

(assert (= (or b!7345835 bm!671177) bm!671176))

(declare-fun m!8008224 () Bool)

(assert (=> b!7345830 m!8008224))

(declare-fun m!8008226 () Bool)

(assert (=> bm!671176 m!8008226))

(declare-fun m!8008228 () Bool)

(assert (=> bm!671178 m!8008228))

(assert (=> start!717370 d!2279573))

(declare-fun bs!1918827 () Bool)

(declare-fun d!2279575 () Bool)

(assert (= bs!1918827 (and d!2279575 b!7345616)))

(declare-fun lambda!456075 () Int)

(assert (=> bs!1918827 (= lambda!456075 lambda!456058)))

(declare-fun bs!1918828 () Bool)

(assert (= bs!1918828 (and d!2279575 d!2279551)))

(assert (=> bs!1918828 (= lambda!456075 lambda!456072)))

(assert (=> d!2279575 (= (inv!91191 cWitness!61) (forall!17966 (exprs!8580 cWitness!61) lambda!456075))))

(declare-fun bs!1918829 () Bool)

(assert (= bs!1918829 d!2279575))

(declare-fun m!8008230 () Bool)

(assert (=> bs!1918829 m!8008230))

(assert (=> start!717370 d!2279575))

(declare-fun bs!1918830 () Bool)

(declare-fun d!2279577 () Bool)

(assert (= bs!1918830 (and d!2279577 b!7345616)))

(declare-fun lambda!456076 () Int)

(assert (=> bs!1918830 (= lambda!456076 lambda!456058)))

(declare-fun bs!1918831 () Bool)

(assert (= bs!1918831 (and d!2279577 d!2279551)))

(assert (=> bs!1918831 (= lambda!456076 lambda!456072)))

(declare-fun bs!1918832 () Bool)

(assert (= bs!1918832 (and d!2279577 d!2279575)))

(assert (=> bs!1918832 (= lambda!456076 lambda!456075)))

(assert (=> d!2279577 (= (inv!91191 ct1!282) (forall!17966 (exprs!8580 ct1!282) lambda!456076))))

(declare-fun bs!1918833 () Bool)

(assert (= bs!1918833 d!2279577))

(declare-fun m!8008232 () Bool)

(assert (=> bs!1918833 m!8008232))

(assert (=> start!717370 d!2279577))

(declare-fun bs!1918834 () Bool)

(declare-fun d!2279579 () Bool)

(assert (= bs!1918834 (and d!2279579 b!7345616)))

(declare-fun lambda!456077 () Int)

(assert (=> bs!1918834 (= lambda!456077 lambda!456058)))

(declare-fun bs!1918835 () Bool)

(assert (= bs!1918835 (and d!2279579 d!2279551)))

(assert (=> bs!1918835 (= lambda!456077 lambda!456072)))

(declare-fun bs!1918836 () Bool)

(assert (= bs!1918836 (and d!2279579 d!2279575)))

(assert (=> bs!1918836 (= lambda!456077 lambda!456075)))

(declare-fun bs!1918837 () Bool)

(assert (= bs!1918837 (and d!2279579 d!2279577)))

(assert (=> bs!1918837 (= lambda!456077 lambda!456076)))

(assert (=> d!2279579 (= (inv!91191 ct2!378) (forall!17966 (exprs!8580 ct2!378) lambda!456077))))

(declare-fun bs!1918838 () Bool)

(assert (= bs!1918838 d!2279579))

(declare-fun m!8008234 () Bool)

(assert (=> bs!1918838 m!8008234))

(assert (=> start!717370 d!2279579))

(declare-fun bm!671179 () Bool)

(declare-fun call!671184 () (Set Context!16160))

(declare-fun call!671189 () List!71636)

(declare-fun c!1364597 () Bool)

(assert (=> bm!671179 (= call!671184 (derivationStepZipperDown!2966 (ite c!1364597 (regOne!38793 r1!2370) (regOne!38792 r1!2370)) (ite c!1364597 ct1!282 (Context!16161 call!671189)) c!10362))))

(declare-fun b!7345846 () Bool)

(declare-fun e!4398561 () (Set Context!16160))

(declare-fun call!671188 () (Set Context!16160))

(assert (=> b!7345846 (= e!4398561 call!671188)))

(declare-fun bm!671180 () Bool)

(declare-fun c!1364598 () Bool)

(declare-fun c!1364596 () Bool)

(assert (=> bm!671180 (= call!671189 ($colon$colon!3138 (exprs!8580 ct1!282) (ite (or c!1364596 c!1364598) (regTwo!38792 r1!2370) r1!2370)))))

(declare-fun b!7345847 () Bool)

(declare-fun e!4398562 () (Set Context!16160))

(declare-fun call!671187 () (Set Context!16160))

(assert (=> b!7345847 (= e!4398562 (set.union call!671184 call!671187))))

(declare-fun b!7345848 () Bool)

(declare-fun e!4398559 () Bool)

(assert (=> b!7345848 (= e!4398559 (nullable!8231 (regOne!38792 r1!2370)))))

(declare-fun b!7345849 () Bool)

(declare-fun e!4398560 () (Set Context!16160))

(assert (=> b!7345849 (= e!4398560 call!671188)))

(declare-fun b!7345850 () Bool)

(declare-fun e!4398564 () (Set Context!16160))

(assert (=> b!7345850 (= e!4398564 (set.insert ct1!282 (as set.empty (Set Context!16160))))))

(declare-fun bm!671181 () Bool)

(declare-fun call!671186 () List!71636)

(assert (=> bm!671181 (= call!671187 (derivationStepZipperDown!2966 (ite c!1364597 (regTwo!38793 r1!2370) (ite c!1364596 (regTwo!38792 r1!2370) (ite c!1364598 (regOne!38792 r1!2370) (reg!19469 r1!2370)))) (ite (or c!1364597 c!1364596) ct1!282 (Context!16161 call!671186)) c!10362))))

(declare-fun d!2279581 () Bool)

(declare-fun c!1364599 () Bool)

(assert (=> d!2279581 (= c!1364599 (and (is-ElementMatch!19140 r1!2370) (= (c!1364528 r1!2370) c!10362)))))

(assert (=> d!2279581 (= (derivationStepZipperDown!2966 r1!2370 ct1!282 c!10362) e!4398564)))

(declare-fun b!7345851 () Bool)

(declare-fun e!4398563 () (Set Context!16160))

(declare-fun call!671185 () (Set Context!16160))

(assert (=> b!7345851 (= e!4398563 (set.union call!671184 call!671185))))

(declare-fun b!7345852 () Bool)

(assert (=> b!7345852 (= e!4398564 e!4398562)))

(assert (=> b!7345852 (= c!1364597 (is-Union!19140 r1!2370))))

(declare-fun bm!671182 () Bool)

(assert (=> bm!671182 (= call!671186 call!671189)))

(declare-fun bm!671183 () Bool)

(assert (=> bm!671183 (= call!671188 call!671185)))

(declare-fun b!7345853 () Bool)

(declare-fun c!1364600 () Bool)

(assert (=> b!7345853 (= c!1364600 (is-Star!19140 r1!2370))))

(assert (=> b!7345853 (= e!4398561 e!4398560)))

(declare-fun bm!671184 () Bool)

(assert (=> bm!671184 (= call!671185 call!671187)))

(declare-fun b!7345854 () Bool)

(assert (=> b!7345854 (= e!4398560 (as set.empty (Set Context!16160)))))

(declare-fun b!7345855 () Bool)

(assert (=> b!7345855 (= e!4398563 e!4398561)))

(assert (=> b!7345855 (= c!1364598 (is-Concat!27985 r1!2370))))

(declare-fun b!7345856 () Bool)

(assert (=> b!7345856 (= c!1364596 e!4398559)))

(declare-fun res!2967033 () Bool)

(assert (=> b!7345856 (=> (not res!2967033) (not e!4398559))))

(assert (=> b!7345856 (= res!2967033 (is-Concat!27985 r1!2370))))

(assert (=> b!7345856 (= e!4398562 e!4398563)))

(assert (= (and d!2279581 c!1364599) b!7345850))

(assert (= (and d!2279581 (not c!1364599)) b!7345852))

(assert (= (and b!7345852 c!1364597) b!7345847))

(assert (= (and b!7345852 (not c!1364597)) b!7345856))

(assert (= (and b!7345856 res!2967033) b!7345848))

(assert (= (and b!7345856 c!1364596) b!7345851))

(assert (= (and b!7345856 (not c!1364596)) b!7345855))

(assert (= (and b!7345855 c!1364598) b!7345846))

(assert (= (and b!7345855 (not c!1364598)) b!7345853))

(assert (= (and b!7345853 c!1364600) b!7345849))

(assert (= (and b!7345853 (not c!1364600)) b!7345854))

(assert (= (or b!7345846 b!7345849) bm!671182))

(assert (= (or b!7345846 b!7345849) bm!671183))

(assert (= (or b!7345851 bm!671183) bm!671184))

(assert (= (or b!7345851 bm!671182) bm!671180))

(assert (= (or b!7345847 bm!671184) bm!671181))

(assert (= (or b!7345847 b!7345851) bm!671179))

(assert (=> b!7345850 m!8008098))

(declare-fun m!8008236 () Bool)

(assert (=> bm!671180 m!8008236))

(declare-fun m!8008238 () Bool)

(assert (=> bm!671181 m!8008238))

(assert (=> b!7345848 m!8008036))

(declare-fun m!8008240 () Bool)

(assert (=> bm!671179 m!8008240))

(assert (=> b!7345614 d!2279581))

(declare-fun d!2279583 () Bool)

(declare-fun nullableFct!3272 (Regex!19140) Bool)

(assert (=> d!2279583 (= (nullable!8231 (regOne!38792 r1!2370)) (nullableFct!3272 (regOne!38792 r1!2370)))))

(declare-fun bs!1918839 () Bool)

(assert (= bs!1918839 d!2279583))

(declare-fun m!8008242 () Bool)

(assert (=> bs!1918839 m!8008242))

(assert (=> b!7345607 d!2279583))

(declare-fun b!7345861 () Bool)

(declare-fun e!4398567 () Bool)

(declare-fun tp!2086186 () Bool)

(declare-fun tp!2086187 () Bool)

(assert (=> b!7345861 (= e!4398567 (and tp!2086186 tp!2086187))))

(assert (=> b!7345612 (= tp!2086150 e!4398567)))

(assert (= (and b!7345612 (is-Cons!71512 (exprs!8580 cWitness!61))) b!7345861))

(declare-fun b!7345876 () Bool)

(declare-fun e!4398572 () Bool)

(assert (=> b!7345876 (= e!4398572 tp_is_empty!48525)))

(assert (=> b!7345615 (= tp!2086153 e!4398572)))

(declare-fun b!7345878 () Bool)

(declare-fun tp!2086199 () Bool)

(assert (=> b!7345878 (= e!4398572 tp!2086199)))

(declare-fun b!7345877 () Bool)

(declare-fun tp!2086201 () Bool)

(declare-fun tp!2086198 () Bool)

(assert (=> b!7345877 (= e!4398572 (and tp!2086201 tp!2086198))))

(declare-fun b!7345879 () Bool)

(declare-fun tp!2086202 () Bool)

(declare-fun tp!2086200 () Bool)

(assert (=> b!7345879 (= e!4398572 (and tp!2086202 tp!2086200))))

(assert (= (and b!7345615 (is-ElementMatch!19140 (regOne!38792 r1!2370))) b!7345876))

(assert (= (and b!7345615 (is-Concat!27985 (regOne!38792 r1!2370))) b!7345877))

(assert (= (and b!7345615 (is-Star!19140 (regOne!38792 r1!2370))) b!7345878))

(assert (= (and b!7345615 (is-Union!19140 (regOne!38792 r1!2370))) b!7345879))

(declare-fun b!7345880 () Bool)

(declare-fun e!4398573 () Bool)

(assert (=> b!7345880 (= e!4398573 tp_is_empty!48525)))

(assert (=> b!7345615 (= tp!2086152 e!4398573)))

(declare-fun b!7345882 () Bool)

(declare-fun tp!2086204 () Bool)

(assert (=> b!7345882 (= e!4398573 tp!2086204)))

(declare-fun b!7345881 () Bool)

(declare-fun tp!2086206 () Bool)

(declare-fun tp!2086203 () Bool)

(assert (=> b!7345881 (= e!4398573 (and tp!2086206 tp!2086203))))

(declare-fun b!7345883 () Bool)

(declare-fun tp!2086207 () Bool)

(declare-fun tp!2086205 () Bool)

(assert (=> b!7345883 (= e!4398573 (and tp!2086207 tp!2086205))))

(assert (= (and b!7345615 (is-ElementMatch!19140 (regTwo!38792 r1!2370))) b!7345880))

(assert (= (and b!7345615 (is-Concat!27985 (regTwo!38792 r1!2370))) b!7345881))

(assert (= (and b!7345615 (is-Star!19140 (regTwo!38792 r1!2370))) b!7345882))

(assert (= (and b!7345615 (is-Union!19140 (regTwo!38792 r1!2370))) b!7345883))

(declare-fun b!7345884 () Bool)

(declare-fun e!4398574 () Bool)

(declare-fun tp!2086208 () Bool)

(declare-fun tp!2086209 () Bool)

(assert (=> b!7345884 (= e!4398574 (and tp!2086208 tp!2086209))))

(assert (=> b!7345609 (= tp!2086155 e!4398574)))

(assert (= (and b!7345609 (is-Cons!71512 (exprs!8580 ct1!282))) b!7345884))

(declare-fun b!7345885 () Bool)

(declare-fun e!4398575 () Bool)

(declare-fun tp!2086210 () Bool)

(declare-fun tp!2086211 () Bool)

(assert (=> b!7345885 (= e!4398575 (and tp!2086210 tp!2086211))))

(assert (=> b!7345613 (= tp!2086157 e!4398575)))

(assert (= (and b!7345613 (is-Cons!71512 (exprs!8580 ct2!378))) b!7345885))

(declare-fun b!7345886 () Bool)

(declare-fun e!4398576 () Bool)

(assert (=> b!7345886 (= e!4398576 tp_is_empty!48525)))

(assert (=> b!7345608 (= tp!2086154 e!4398576)))

(declare-fun b!7345888 () Bool)

(declare-fun tp!2086213 () Bool)

(assert (=> b!7345888 (= e!4398576 tp!2086213)))

(declare-fun b!7345887 () Bool)

(declare-fun tp!2086215 () Bool)

(declare-fun tp!2086212 () Bool)

(assert (=> b!7345887 (= e!4398576 (and tp!2086215 tp!2086212))))

(declare-fun b!7345889 () Bool)

(declare-fun tp!2086216 () Bool)

(declare-fun tp!2086214 () Bool)

(assert (=> b!7345889 (= e!4398576 (and tp!2086216 tp!2086214))))

(assert (= (and b!7345608 (is-ElementMatch!19140 (reg!19469 r1!2370))) b!7345886))

(assert (= (and b!7345608 (is-Concat!27985 (reg!19469 r1!2370))) b!7345887))

(assert (= (and b!7345608 (is-Star!19140 (reg!19469 r1!2370))) b!7345888))

(assert (= (and b!7345608 (is-Union!19140 (reg!19469 r1!2370))) b!7345889))

(declare-fun b!7345890 () Bool)

(declare-fun e!4398577 () Bool)

(assert (=> b!7345890 (= e!4398577 tp_is_empty!48525)))

(assert (=> b!7345618 (= tp!2086156 e!4398577)))

(declare-fun b!7345892 () Bool)

(declare-fun tp!2086218 () Bool)

(assert (=> b!7345892 (= e!4398577 tp!2086218)))

(declare-fun b!7345891 () Bool)

(declare-fun tp!2086220 () Bool)

(declare-fun tp!2086217 () Bool)

(assert (=> b!7345891 (= e!4398577 (and tp!2086220 tp!2086217))))

(declare-fun b!7345893 () Bool)

(declare-fun tp!2086221 () Bool)

(declare-fun tp!2086219 () Bool)

(assert (=> b!7345893 (= e!4398577 (and tp!2086221 tp!2086219))))

(assert (= (and b!7345618 (is-ElementMatch!19140 (regOne!38793 r1!2370))) b!7345890))

(assert (= (and b!7345618 (is-Concat!27985 (regOne!38793 r1!2370))) b!7345891))

(assert (= (and b!7345618 (is-Star!19140 (regOne!38793 r1!2370))) b!7345892))

(assert (= (and b!7345618 (is-Union!19140 (regOne!38793 r1!2370))) b!7345893))

(declare-fun b!7345894 () Bool)

(declare-fun e!4398578 () Bool)

(assert (=> b!7345894 (= e!4398578 tp_is_empty!48525)))

(assert (=> b!7345618 (= tp!2086151 e!4398578)))

(declare-fun b!7345896 () Bool)

(declare-fun tp!2086223 () Bool)

(assert (=> b!7345896 (= e!4398578 tp!2086223)))

(declare-fun b!7345895 () Bool)

(declare-fun tp!2086225 () Bool)

(declare-fun tp!2086222 () Bool)

(assert (=> b!7345895 (= e!4398578 (and tp!2086225 tp!2086222))))

(declare-fun b!7345897 () Bool)

(declare-fun tp!2086226 () Bool)

(declare-fun tp!2086224 () Bool)

(assert (=> b!7345897 (= e!4398578 (and tp!2086226 tp!2086224))))

(assert (= (and b!7345618 (is-ElementMatch!19140 (regTwo!38793 r1!2370))) b!7345894))

(assert (= (and b!7345618 (is-Concat!27985 (regTwo!38793 r1!2370))) b!7345895))

(assert (= (and b!7345618 (is-Star!19140 (regTwo!38793 r1!2370))) b!7345896))

(assert (= (and b!7345618 (is-Union!19140 (regTwo!38793 r1!2370))) b!7345897))

(declare-fun b_lambda!283991 () Bool)

(assert (= b_lambda!283989 (or b!7345616 b_lambda!283991)))

(declare-fun bs!1918840 () Bool)

(declare-fun d!2279587 () Bool)

(assert (= bs!1918840 (and d!2279587 b!7345616)))

(assert (=> bs!1918840 (= (dynLambda!29471 lambda!456058 (h!77960 (exprs!8580 cWitness!61))) (validRegex!9736 (h!77960 (exprs!8580 cWitness!61))))))

(declare-fun m!8008258 () Bool)

(assert (=> bs!1918840 m!8008258))

(assert (=> b!7345770 d!2279587))

(declare-fun b_lambda!283993 () Bool)

(assert (= b_lambda!283987 (or b!7345616 b_lambda!283993)))

(declare-fun bs!1918841 () Bool)

(declare-fun d!2279589 () Bool)

(assert (= bs!1918841 (and d!2279589 b!7345616)))

(assert (=> bs!1918841 (= (dynLambda!29471 lambda!456058 (h!77960 (exprs!8580 ct2!378))) (validRegex!9736 (h!77960 (exprs!8580 ct2!378))))))

(declare-fun m!8008260 () Bool)

(assert (=> bs!1918841 m!8008260))

(assert (=> b!7345668 d!2279589))

(push 1)

(assert (not b!7345888))

(assert (not d!2279565))

(assert (not bm!671119))

(assert (not b!7345774))

(assert (not d!2279583))

(assert (not bm!671179))

(assert (not b!7345694))

(assert (not b!7345889))

(assert (not bm!671126))

(assert (not bs!1918840))

(assert (not bm!671181))

(assert (not bm!671141))

(assert (not b!7345800))

(assert (not b!7345861))

(assert (not b!7345878))

(assert (not bm!671157))

(assert (not b!7345746))

(assert (not b!7345887))

(assert (not bm!671139))

(assert (not b!7345877))

(assert (not bm!671176))

(assert (not bm!671173))

(assert (not bm!671125))

(assert (not bm!671156))

(assert (not b_lambda!283993))

(assert (not bm!671140))

(assert (not b!7345882))

(assert (not b!7345773))

(assert (not b!7345848))

(assert (not bm!671178))

(assert (not d!2279579))

(assert (not bm!671175))

(assert (not d!2279577))

(assert (not b!7345745))

(assert tp_is_empty!48525)

(assert (not b!7345895))

(assert (not bm!671121))

(assert (not d!2279547))

(assert (not b!7345884))

(assert (not b!7345709))

(assert (not b!7345669))

(assert (not b!7345771))

(assert (not b!7345879))

(assert (not d!2279557))

(assert (not b!7345883))

(assert (not bs!1918841))

(assert (not b_lambda!283991))

(assert (not d!2279575))

(assert (not b!7345830))

(assert (not b!7345750))

(assert (not b!7345897))

(assert (not bm!671120))

(assert (not b!7345896))

(assert (not d!2279559))

(assert (not d!2279551))

(assert (not b!7345891))

(assert (not b!7345799))

(assert (not bm!671180))

(assert (not d!2279553))

(assert (not b!7345893))

(assert (not bm!671127))

(assert (not b!7345778))

(assert (not b!7345885))

(assert (not b!7345892))

(assert (not bm!671155))

(assert (not d!2279567))

(assert (not b!7345881))

(assert (not b!7345821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

