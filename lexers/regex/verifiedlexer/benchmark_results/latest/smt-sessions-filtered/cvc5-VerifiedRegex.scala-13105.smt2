; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716826 () Bool)

(assert start!716826)

(declare-fun b!7338686 () Bool)

(declare-fun e!4394447 () Bool)

(declare-fun e!4394443 () Bool)

(assert (=> b!7338686 (= e!4394447 e!4394443)))

(declare-fun res!2965027 () Bool)

(assert (=> b!7338686 (=> (not res!2965027) (not e!4394443))))

(declare-datatypes ((C!38470 0))(
  ( (C!38471 (val!29595 Int)) )
))
(declare-datatypes ((Regex!19098 0))(
  ( (ElementMatch!19098 (c!1363034 C!38470)) (Concat!27943 (regOne!38708 Regex!19098) (regTwo!38708 Regex!19098)) (EmptyExpr!19098) (Star!19098 (reg!19427 Regex!19098)) (EmptyLang!19098) (Union!19098 (regOne!38709 Regex!19098) (regTwo!38709 Regex!19098)) )
))
(declare-datatypes ((List!71594 0))(
  ( (Nil!71470) (Cons!71470 (h!77918 Regex!19098) (t!385989 List!71594)) )
))
(declare-datatypes ((Context!16076 0))(
  ( (Context!16077 (exprs!8538 List!71594)) )
))
(declare-fun ct1!282 () Context!16076)

(declare-fun lambda!455414 () Int)

(declare-fun forall!17932 (List!71594 Int) Bool)

(assert (=> b!7338686 (= res!2965027 (forall!17932 (exprs!8538 ct1!282) lambda!455414))))

(declare-fun ct2!378 () Context!16076)

(declare-datatypes ((Unit!165149 0))(
  ( (Unit!165150) )
))
(declare-fun lt!2609642 () Unit!165149)

(declare-fun cWitness!61 () Context!16076)

(declare-fun lemmaConcatPreservesForall!1773 (List!71594 List!71594 Int) Unit!165149)

(assert (=> b!7338686 (= lt!2609642 (lemmaConcatPreservesForall!1773 (exprs!8538 cWitness!61) (exprs!8538 ct2!378) lambda!455414))))

(declare-fun res!2965023 () Bool)

(declare-fun e!4394453 () Bool)

(assert (=> start!716826 (=> (not res!2965023) (not e!4394453))))

(declare-fun r1!2370 () Regex!19098)

(declare-fun validRegex!9694 (Regex!19098) Bool)

(assert (=> start!716826 (= res!2965023 (validRegex!9694 r1!2370))))

(assert (=> start!716826 e!4394453))

(declare-fun tp_is_empty!48441 () Bool)

(assert (=> start!716826 tp_is_empty!48441))

(declare-fun e!4394449 () Bool)

(declare-fun inv!91086 (Context!16076) Bool)

(assert (=> start!716826 (and (inv!91086 cWitness!61) e!4394449)))

(declare-fun e!4394452 () Bool)

(assert (=> start!716826 (and (inv!91086 ct1!282) e!4394452)))

(declare-fun e!4394448 () Bool)

(assert (=> start!716826 e!4394448))

(declare-fun e!4394444 () Bool)

(assert (=> start!716826 (and (inv!91086 ct2!378) e!4394444)))

(declare-fun b!7338687 () Bool)

(declare-fun tp!2083616 () Bool)

(assert (=> b!7338687 (= e!4394448 tp!2083616)))

(declare-fun b!7338688 () Bool)

(declare-fun e!4394450 () Bool)

(assert (=> b!7338688 (= e!4394450 e!4394447)))

(declare-fun res!2965024 () Bool)

(assert (=> b!7338688 (=> (not res!2965024) (not e!4394447))))

(declare-fun lt!2609639 () (Set Context!16076))

(declare-fun ++!16916 (List!71594 List!71594) List!71594)

(assert (=> b!7338688 (= res!2965024 (set.member (Context!16077 (++!16916 (exprs!8538 cWitness!61) (exprs!8538 ct2!378))) lt!2609639))))

(declare-fun lt!2609645 () Unit!165149)

(assert (=> b!7338688 (= lt!2609645 (lemmaConcatPreservesForall!1773 (exprs!8538 cWitness!61) (exprs!8538 ct2!378) lambda!455414))))

(declare-fun b!7338689 () Bool)

(assert (=> b!7338689 (= e!4394448 tp_is_empty!48441)))

(declare-fun b!7338690 () Bool)

(declare-fun tp!2083612 () Bool)

(declare-fun tp!2083619 () Bool)

(assert (=> b!7338690 (= e!4394448 (and tp!2083612 tp!2083619))))

(declare-fun b!7338691 () Bool)

(declare-fun e!4394445 () Bool)

(declare-fun e!4394451 () Bool)

(assert (=> b!7338691 (= e!4394445 e!4394451)))

(declare-fun res!2965026 () Bool)

(assert (=> b!7338691 (=> (not res!2965026) (not e!4394451))))

(declare-fun c!10362 () C!38470)

(assert (=> b!7338691 (= res!2965026 (and (is-ElementMatch!19098 r1!2370) (= c!10362 (c!1363034 r1!2370))))))

(declare-fun lt!2609638 () Context!16076)

(declare-fun derivationStepZipperDown!2924 (Regex!19098 Context!16076 C!38470) (Set Context!16076))

(assert (=> b!7338691 (= lt!2609639 (derivationStepZipperDown!2924 r1!2370 lt!2609638 c!10362))))

(assert (=> b!7338691 (= lt!2609638 (Context!16077 (++!16916 (exprs!8538 ct1!282) (exprs!8538 ct2!378))))))

(declare-fun lt!2609643 () Unit!165149)

(assert (=> b!7338691 (= lt!2609643 (lemmaConcatPreservesForall!1773 (exprs!8538 ct1!282) (exprs!8538 ct2!378) lambda!455414))))

(declare-fun b!7338692 () Bool)

(declare-fun tp!2083617 () Bool)

(assert (=> b!7338692 (= e!4394444 tp!2083617)))

(declare-fun b!7338693 () Bool)

(declare-fun tp!2083618 () Bool)

(declare-fun tp!2083613 () Bool)

(assert (=> b!7338693 (= e!4394448 (and tp!2083618 tp!2083613))))

(declare-fun b!7338694 () Bool)

(declare-fun e!4394446 () Bool)

(assert (=> b!7338694 (= e!4394451 e!4394446)))

(declare-fun res!2965028 () Bool)

(assert (=> b!7338694 (=> (not res!2965028) (not e!4394446))))

(declare-fun lt!2609640 () (Set Context!16076))

(declare-fun lt!2609644 () (Set Context!16076))

(assert (=> b!7338694 (= res!2965028 (and (= lt!2609640 lt!2609644) (set.member cWitness!61 lt!2609644) (= cWitness!61 ct1!282)))))

(assert (=> b!7338694 (= lt!2609644 (set.insert ct1!282 (as set.empty (Set Context!16076))))))

(declare-fun b!7338695 () Bool)

(declare-fun tp!2083615 () Bool)

(assert (=> b!7338695 (= e!4394452 tp!2083615)))

(declare-fun b!7338696 () Bool)

(assert (=> b!7338696 (= e!4394443 (not (forall!17932 (exprs!8538 ct2!378) lambda!455414)))))

(declare-fun b!7338697 () Bool)

(assert (=> b!7338697 (= e!4394453 e!4394445)))

(declare-fun res!2965029 () Bool)

(assert (=> b!7338697 (=> (not res!2965029) (not e!4394445))))

(assert (=> b!7338697 (= res!2965029 (set.member cWitness!61 lt!2609640))))

(assert (=> b!7338697 (= lt!2609640 (derivationStepZipperDown!2924 r1!2370 ct1!282 c!10362))))

(declare-fun b!7338698 () Bool)

(declare-fun tp!2083614 () Bool)

(assert (=> b!7338698 (= e!4394449 tp!2083614)))

(declare-fun b!7338699 () Bool)

(assert (=> b!7338699 (= e!4394446 e!4394450)))

(declare-fun res!2965025 () Bool)

(assert (=> b!7338699 (=> (not res!2965025) (not e!4394450))))

(assert (=> b!7338699 (= res!2965025 (= lt!2609639 (set.insert lt!2609638 (as set.empty (Set Context!16076)))))))

(declare-fun lt!2609641 () Unit!165149)

(assert (=> b!7338699 (= lt!2609641 (lemmaConcatPreservesForall!1773 (exprs!8538 ct1!282) (exprs!8538 ct2!378) lambda!455414))))

(assert (= (and start!716826 res!2965023) b!7338697))

(assert (= (and b!7338697 res!2965029) b!7338691))

(assert (= (and b!7338691 res!2965026) b!7338694))

(assert (= (and b!7338694 res!2965028) b!7338699))

(assert (= (and b!7338699 res!2965025) b!7338688))

(assert (= (and b!7338688 res!2965024) b!7338686))

(assert (= (and b!7338686 res!2965027) b!7338696))

(assert (= start!716826 b!7338698))

(assert (= start!716826 b!7338695))

(assert (= (and start!716826 (is-ElementMatch!19098 r1!2370)) b!7338689))

(assert (= (and start!716826 (is-Concat!27943 r1!2370)) b!7338690))

(assert (= (and start!716826 (is-Star!19098 r1!2370)) b!7338687))

(assert (= (and start!716826 (is-Union!19098 r1!2370)) b!7338693))

(assert (= start!716826 b!7338692))

(declare-fun m!8003286 () Bool)

(assert (=> b!7338697 m!8003286))

(declare-fun m!8003288 () Bool)

(assert (=> b!7338697 m!8003288))

(declare-fun m!8003290 () Bool)

(assert (=> b!7338686 m!8003290))

(declare-fun m!8003292 () Bool)

(assert (=> b!7338686 m!8003292))

(declare-fun m!8003294 () Bool)

(assert (=> b!7338694 m!8003294))

(declare-fun m!8003296 () Bool)

(assert (=> b!7338694 m!8003296))

(declare-fun m!8003298 () Bool)

(assert (=> start!716826 m!8003298))

(declare-fun m!8003300 () Bool)

(assert (=> start!716826 m!8003300))

(declare-fun m!8003302 () Bool)

(assert (=> start!716826 m!8003302))

(declare-fun m!8003304 () Bool)

(assert (=> start!716826 m!8003304))

(declare-fun m!8003306 () Bool)

(assert (=> b!7338699 m!8003306))

(declare-fun m!8003308 () Bool)

(assert (=> b!7338699 m!8003308))

(declare-fun m!8003310 () Bool)

(assert (=> b!7338691 m!8003310))

(declare-fun m!8003312 () Bool)

(assert (=> b!7338691 m!8003312))

(assert (=> b!7338691 m!8003308))

(declare-fun m!8003314 () Bool)

(assert (=> b!7338696 m!8003314))

(declare-fun m!8003316 () Bool)

(assert (=> b!7338688 m!8003316))

(declare-fun m!8003318 () Bool)

(assert (=> b!7338688 m!8003318))

(assert (=> b!7338688 m!8003292))

(push 1)

(assert (not b!7338699))

(assert tp_is_empty!48441)

(assert (not b!7338686))

(assert (not start!716826))

(assert (not b!7338687))

(assert (not b!7338691))

(assert (not b!7338688))

(assert (not b!7338692))

(assert (not b!7338696))

(assert (not b!7338695))

(assert (not b!7338690))

(assert (not b!7338693))

(assert (not b!7338697))

(assert (not b!7338698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7338786 () Bool)

(declare-fun e!4394511 () (Set Context!16076))

(declare-fun e!4394512 () (Set Context!16076))

(assert (=> b!7338786 (= e!4394511 e!4394512)))

(declare-fun c!1363056 () Bool)

(assert (=> b!7338786 (= c!1363056 (is-Union!19098 r1!2370))))

(declare-fun bm!669511 () Bool)

(declare-fun call!669516 () List!71594)

(declare-fun call!669520 () List!71594)

(assert (=> bm!669511 (= call!669516 call!669520)))

(declare-fun b!7338787 () Bool)

(assert (=> b!7338787 (= e!4394511 (set.insert lt!2609638 (as set.empty (Set Context!16076))))))

(declare-fun b!7338788 () Bool)

(declare-fun e!4394513 () (Set Context!16076))

(declare-fun call!669517 () (Set Context!16076))

(assert (=> b!7338788 (= e!4394513 call!669517)))

(declare-fun b!7338789 () Bool)

(declare-fun e!4394514 () (Set Context!16076))

(assert (=> b!7338789 (= e!4394514 (as set.empty (Set Context!16076)))))

(declare-fun c!1363059 () Bool)

(declare-fun call!669518 () (Set Context!16076))

(declare-fun bm!669512 () Bool)

(declare-fun c!1363058 () Bool)

(assert (=> bm!669512 (= call!669518 (derivationStepZipperDown!2924 (ite c!1363056 (regTwo!38709 r1!2370) (ite c!1363059 (regTwo!38708 r1!2370) (ite c!1363058 (regOne!38708 r1!2370) (reg!19427 r1!2370)))) (ite (or c!1363056 c!1363059) lt!2609638 (Context!16077 call!669516)) c!10362))))

(declare-fun b!7338790 () Bool)

(declare-fun c!1363057 () Bool)

(assert (=> b!7338790 (= c!1363057 (is-Star!19098 r1!2370))))

(assert (=> b!7338790 (= e!4394513 e!4394514)))

(declare-fun bm!669514 () Bool)

(declare-fun call!669521 () (Set Context!16076))

(assert (=> bm!669514 (= call!669517 call!669521)))

(declare-fun b!7338791 () Bool)

(declare-fun e!4394516 () (Set Context!16076))

(assert (=> b!7338791 (= e!4394516 e!4394513)))

(assert (=> b!7338791 (= c!1363058 (is-Concat!27943 r1!2370))))

(declare-fun b!7338792 () Bool)

(declare-fun call!669519 () (Set Context!16076))

(assert (=> b!7338792 (= e!4394516 (set.union call!669519 call!669521))))

(declare-fun b!7338793 () Bool)

(assert (=> b!7338793 (= e!4394512 (set.union call!669519 call!669518))))

(declare-fun b!7338794 () Bool)

(assert (=> b!7338794 (= e!4394514 call!669517)))

(declare-fun bm!669515 () Bool)

(assert (=> bm!669515 (= call!669521 call!669518)))

(declare-fun b!7338795 () Bool)

(declare-fun e!4394515 () Bool)

(assert (=> b!7338795 (= c!1363059 e!4394515)))

(declare-fun res!2965055 () Bool)

(assert (=> b!7338795 (=> (not res!2965055) (not e!4394515))))

(assert (=> b!7338795 (= res!2965055 (is-Concat!27943 r1!2370))))

(assert (=> b!7338795 (= e!4394512 e!4394516)))

(declare-fun bm!669513 () Bool)

(assert (=> bm!669513 (= call!669519 (derivationStepZipperDown!2924 (ite c!1363056 (regOne!38709 r1!2370) (regOne!38708 r1!2370)) (ite c!1363056 lt!2609638 (Context!16077 call!669520)) c!10362))))

(declare-fun d!2278446 () Bool)

(declare-fun c!1363060 () Bool)

(assert (=> d!2278446 (= c!1363060 (and (is-ElementMatch!19098 r1!2370) (= (c!1363034 r1!2370) c!10362)))))

(assert (=> d!2278446 (= (derivationStepZipperDown!2924 r1!2370 lt!2609638 c!10362) e!4394511)))

(declare-fun bm!669516 () Bool)

(declare-fun $colon$colon!3102 (List!71594 Regex!19098) List!71594)

(assert (=> bm!669516 (= call!669520 ($colon$colon!3102 (exprs!8538 lt!2609638) (ite (or c!1363059 c!1363058) (regTwo!38708 r1!2370) r1!2370)))))

(declare-fun b!7338796 () Bool)

(declare-fun nullable!8195 (Regex!19098) Bool)

(assert (=> b!7338796 (= e!4394515 (nullable!8195 (regOne!38708 r1!2370)))))

(assert (= (and d!2278446 c!1363060) b!7338787))

(assert (= (and d!2278446 (not c!1363060)) b!7338786))

(assert (= (and b!7338786 c!1363056) b!7338793))

(assert (= (and b!7338786 (not c!1363056)) b!7338795))

(assert (= (and b!7338795 res!2965055) b!7338796))

(assert (= (and b!7338795 c!1363059) b!7338792))

(assert (= (and b!7338795 (not c!1363059)) b!7338791))

(assert (= (and b!7338791 c!1363058) b!7338788))

(assert (= (and b!7338791 (not c!1363058)) b!7338790))

(assert (= (and b!7338790 c!1363057) b!7338794))

(assert (= (and b!7338790 (not c!1363057)) b!7338789))

(assert (= (or b!7338788 b!7338794) bm!669511))

(assert (= (or b!7338788 b!7338794) bm!669514))

(assert (= (or b!7338792 bm!669514) bm!669515))

(assert (= (or b!7338792 bm!669511) bm!669516))

(assert (= (or b!7338793 bm!669515) bm!669512))

(assert (= (or b!7338793 b!7338792) bm!669513))

(declare-fun m!8003354 () Bool)

(assert (=> b!7338796 m!8003354))

(declare-fun m!8003356 () Bool)

(assert (=> bm!669513 m!8003356))

(declare-fun m!8003358 () Bool)

(assert (=> bm!669512 m!8003358))

(assert (=> b!7338787 m!8003306))

(declare-fun m!8003360 () Bool)

(assert (=> bm!669516 m!8003360))

(assert (=> b!7338691 d!2278446))

(declare-fun b!7338819 () Bool)

(declare-fun e!4394527 () Bool)

(declare-fun lt!2609672 () List!71594)

(assert (=> b!7338819 (= e!4394527 (or (not (= (exprs!8538 ct2!378) Nil!71470)) (= lt!2609672 (exprs!8538 ct1!282))))))

(declare-fun b!7338816 () Bool)

(declare-fun e!4394528 () List!71594)

(assert (=> b!7338816 (= e!4394528 (exprs!8538 ct2!378))))

(declare-fun b!7338817 () Bool)

(assert (=> b!7338817 (= e!4394528 (Cons!71470 (h!77918 (exprs!8538 ct1!282)) (++!16916 (t!385989 (exprs!8538 ct1!282)) (exprs!8538 ct2!378))))))

(declare-fun d!2278448 () Bool)

(assert (=> d!2278448 e!4394527))

(declare-fun res!2965062 () Bool)

(assert (=> d!2278448 (=> (not res!2965062) (not e!4394527))))

(declare-fun content!15017 (List!71594) (Set Regex!19098))

(assert (=> d!2278448 (= res!2965062 (= (content!15017 lt!2609672) (set.union (content!15017 (exprs!8538 ct1!282)) (content!15017 (exprs!8538 ct2!378)))))))

(assert (=> d!2278448 (= lt!2609672 e!4394528)))

(declare-fun c!1363068 () Bool)

(assert (=> d!2278448 (= c!1363068 (is-Nil!71470 (exprs!8538 ct1!282)))))

(assert (=> d!2278448 (= (++!16916 (exprs!8538 ct1!282) (exprs!8538 ct2!378)) lt!2609672)))

(declare-fun b!7338818 () Bool)

(declare-fun res!2965061 () Bool)

(assert (=> b!7338818 (=> (not res!2965061) (not e!4394527))))

(declare-fun size!41996 (List!71594) Int)

(assert (=> b!7338818 (= res!2965061 (= (size!41996 lt!2609672) (+ (size!41996 (exprs!8538 ct1!282)) (size!41996 (exprs!8538 ct2!378)))))))

(assert (= (and d!2278448 c!1363068) b!7338816))

(assert (= (and d!2278448 (not c!1363068)) b!7338817))

(assert (= (and d!2278448 res!2965062) b!7338818))

(assert (= (and b!7338818 res!2965061) b!7338819))

(declare-fun m!8003362 () Bool)

(assert (=> b!7338817 m!8003362))

(declare-fun m!8003364 () Bool)

(assert (=> d!2278448 m!8003364))

(declare-fun m!8003366 () Bool)

(assert (=> d!2278448 m!8003366))

(declare-fun m!8003368 () Bool)

(assert (=> d!2278448 m!8003368))

(declare-fun m!8003370 () Bool)

(assert (=> b!7338818 m!8003370))

(declare-fun m!8003372 () Bool)

(assert (=> b!7338818 m!8003372))

(declare-fun m!8003374 () Bool)

(assert (=> b!7338818 m!8003374))

(assert (=> b!7338691 d!2278448))

(declare-fun d!2278450 () Bool)

(assert (=> d!2278450 (forall!17932 (++!16916 (exprs!8538 ct1!282) (exprs!8538 ct2!378)) lambda!455414)))

(declare-fun lt!2609675 () Unit!165149)

(declare-fun choose!57079 (List!71594 List!71594 Int) Unit!165149)

(assert (=> d!2278450 (= lt!2609675 (choose!57079 (exprs!8538 ct1!282) (exprs!8538 ct2!378) lambda!455414))))

(assert (=> d!2278450 (forall!17932 (exprs!8538 ct1!282) lambda!455414)))

(assert (=> d!2278450 (= (lemmaConcatPreservesForall!1773 (exprs!8538 ct1!282) (exprs!8538 ct2!378) lambda!455414) lt!2609675)))

(declare-fun bs!1918234 () Bool)

(assert (= bs!1918234 d!2278450))

(assert (=> bs!1918234 m!8003312))

(assert (=> bs!1918234 m!8003312))

(declare-fun m!8003384 () Bool)

(assert (=> bs!1918234 m!8003384))

(declare-fun m!8003386 () Bool)

(assert (=> bs!1918234 m!8003386))

(assert (=> bs!1918234 m!8003290))

(assert (=> b!7338691 d!2278450))

(declare-fun d!2278454 () Bool)

(declare-fun res!2965071 () Bool)

(declare-fun e!4394537 () Bool)

(assert (=> d!2278454 (=> res!2965071 e!4394537)))

(assert (=> d!2278454 (= res!2965071 (is-Nil!71470 (exprs!8538 ct1!282)))))

(assert (=> d!2278454 (= (forall!17932 (exprs!8538 ct1!282) lambda!455414) e!4394537)))

(declare-fun b!7338828 () Bool)

(declare-fun e!4394538 () Bool)

(assert (=> b!7338828 (= e!4394537 e!4394538)))

(declare-fun res!2965072 () Bool)

(assert (=> b!7338828 (=> (not res!2965072) (not e!4394538))))

(declare-fun dynLambda!29444 (Int Regex!19098) Bool)

(assert (=> b!7338828 (= res!2965072 (dynLambda!29444 lambda!455414 (h!77918 (exprs!8538 ct1!282))))))

(declare-fun b!7338829 () Bool)

(assert (=> b!7338829 (= e!4394538 (forall!17932 (t!385989 (exprs!8538 ct1!282)) lambda!455414))))

(assert (= (and d!2278454 (not res!2965071)) b!7338828))

(assert (= (and b!7338828 res!2965072) b!7338829))

(declare-fun b_lambda!283819 () Bool)

(assert (=> (not b_lambda!283819) (not b!7338828)))

(declare-fun m!8003388 () Bool)

(assert (=> b!7338828 m!8003388))

(declare-fun m!8003390 () Bool)

(assert (=> b!7338829 m!8003390))

(assert (=> b!7338686 d!2278454))

(declare-fun d!2278456 () Bool)

(assert (=> d!2278456 (forall!17932 (++!16916 (exprs!8538 cWitness!61) (exprs!8538 ct2!378)) lambda!455414)))

(declare-fun lt!2609676 () Unit!165149)

(assert (=> d!2278456 (= lt!2609676 (choose!57079 (exprs!8538 cWitness!61) (exprs!8538 ct2!378) lambda!455414))))

(assert (=> d!2278456 (forall!17932 (exprs!8538 cWitness!61) lambda!455414)))

(assert (=> d!2278456 (= (lemmaConcatPreservesForall!1773 (exprs!8538 cWitness!61) (exprs!8538 ct2!378) lambda!455414) lt!2609676)))

(declare-fun bs!1918235 () Bool)

(assert (= bs!1918235 d!2278456))

(assert (=> bs!1918235 m!8003316))

(assert (=> bs!1918235 m!8003316))

(declare-fun m!8003392 () Bool)

(assert (=> bs!1918235 m!8003392))

(declare-fun m!8003394 () Bool)

(assert (=> bs!1918235 m!8003394))

(declare-fun m!8003396 () Bool)

(assert (=> bs!1918235 m!8003396))

(assert (=> b!7338686 d!2278456))

(declare-fun d!2278458 () Bool)

(declare-fun res!2965073 () Bool)

(declare-fun e!4394539 () Bool)

(assert (=> d!2278458 (=> res!2965073 e!4394539)))

(assert (=> d!2278458 (= res!2965073 (is-Nil!71470 (exprs!8538 ct2!378)))))

(assert (=> d!2278458 (= (forall!17932 (exprs!8538 ct2!378) lambda!455414) e!4394539)))

(declare-fun b!7338830 () Bool)

(declare-fun e!4394540 () Bool)

(assert (=> b!7338830 (= e!4394539 e!4394540)))

(declare-fun res!2965074 () Bool)

(assert (=> b!7338830 (=> (not res!2965074) (not e!4394540))))

(assert (=> b!7338830 (= res!2965074 (dynLambda!29444 lambda!455414 (h!77918 (exprs!8538 ct2!378))))))

(declare-fun b!7338831 () Bool)

(assert (=> b!7338831 (= e!4394540 (forall!17932 (t!385989 (exprs!8538 ct2!378)) lambda!455414))))

(assert (= (and d!2278458 (not res!2965073)) b!7338830))

(assert (= (and b!7338830 res!2965074) b!7338831))

(declare-fun b_lambda!283821 () Bool)

(assert (=> (not b_lambda!283821) (not b!7338830)))

(declare-fun m!8003398 () Bool)

(assert (=> b!7338830 m!8003398))

(declare-fun m!8003400 () Bool)

(assert (=> b!7338831 m!8003400))

(assert (=> b!7338696 d!2278458))

(declare-fun d!2278460 () Bool)

(declare-fun res!2965089 () Bool)

(declare-fun e!4394559 () Bool)

(assert (=> d!2278460 (=> res!2965089 e!4394559)))

(assert (=> d!2278460 (= res!2965089 (is-ElementMatch!19098 r1!2370))))

(assert (=> d!2278460 (= (validRegex!9694 r1!2370) e!4394559)))

(declare-fun call!669535 () Bool)

(declare-fun bm!669529 () Bool)

(declare-fun c!1363074 () Bool)

(declare-fun c!1363073 () Bool)

(assert (=> bm!669529 (= call!669535 (validRegex!9694 (ite c!1363074 (reg!19427 r1!2370) (ite c!1363073 (regOne!38709 r1!2370) (regTwo!38708 r1!2370)))))))

(declare-fun b!7338852 () Bool)

(declare-fun e!4394558 () Bool)

(declare-fun e!4394563 () Bool)

(assert (=> b!7338852 (= e!4394558 e!4394563)))

(declare-fun res!2965091 () Bool)

(assert (=> b!7338852 (= res!2965091 (not (nullable!8195 (reg!19427 r1!2370))))))

(assert (=> b!7338852 (=> (not res!2965091) (not e!4394563))))

(declare-fun b!7338853 () Bool)

(declare-fun e!4394560 () Bool)

(declare-fun call!669534 () Bool)

(assert (=> b!7338853 (= e!4394560 call!669534)))

(declare-fun bm!669530 () Bool)

(declare-fun call!669536 () Bool)

(assert (=> bm!669530 (= call!669536 (validRegex!9694 (ite c!1363073 (regTwo!38709 r1!2370) (regOne!38708 r1!2370))))))

(declare-fun b!7338854 () Bool)

(assert (=> b!7338854 (= e!4394559 e!4394558)))

(assert (=> b!7338854 (= c!1363074 (is-Star!19098 r1!2370))))

(declare-fun b!7338855 () Bool)

(declare-fun e!4394557 () Bool)

(assert (=> b!7338855 (= e!4394557 e!4394560)))

(declare-fun res!2965090 () Bool)

(assert (=> b!7338855 (=> (not res!2965090) (not e!4394560))))

(assert (=> b!7338855 (= res!2965090 call!669536)))

(declare-fun b!7338856 () Bool)

(assert (=> b!7338856 (= e!4394563 call!669535)))

(declare-fun b!7338857 () Bool)

(declare-fun res!2965088 () Bool)

(declare-fun e!4394562 () Bool)

(assert (=> b!7338857 (=> (not res!2965088) (not e!4394562))))

(assert (=> b!7338857 (= res!2965088 call!669534)))

(declare-fun e!4394561 () Bool)

(assert (=> b!7338857 (= e!4394561 e!4394562)))

(declare-fun b!7338858 () Bool)

(assert (=> b!7338858 (= e!4394558 e!4394561)))

(assert (=> b!7338858 (= c!1363073 (is-Union!19098 r1!2370))))

(declare-fun b!7338859 () Bool)

(declare-fun res!2965087 () Bool)

(assert (=> b!7338859 (=> res!2965087 e!4394557)))

(assert (=> b!7338859 (= res!2965087 (not (is-Concat!27943 r1!2370)))))

(assert (=> b!7338859 (= e!4394561 e!4394557)))

(declare-fun bm!669531 () Bool)

(assert (=> bm!669531 (= call!669534 call!669535)))

(declare-fun b!7338860 () Bool)

(assert (=> b!7338860 (= e!4394562 call!669536)))

(assert (= (and d!2278460 (not res!2965089)) b!7338854))

(assert (= (and b!7338854 c!1363074) b!7338852))

(assert (= (and b!7338854 (not c!1363074)) b!7338858))

(assert (= (and b!7338852 res!2965091) b!7338856))

(assert (= (and b!7338858 c!1363073) b!7338857))

(assert (= (and b!7338858 (not c!1363073)) b!7338859))

(assert (= (and b!7338857 res!2965088) b!7338860))

(assert (= (and b!7338859 (not res!2965087)) b!7338855))

(assert (= (and b!7338855 res!2965090) b!7338853))

(assert (= (or b!7338857 b!7338853) bm!669531))

(assert (= (or b!7338860 b!7338855) bm!669530))

(assert (= (or b!7338856 bm!669531) bm!669529))

(declare-fun m!8003406 () Bool)

(assert (=> bm!669529 m!8003406))

(declare-fun m!8003408 () Bool)

(assert (=> b!7338852 m!8003408))

(declare-fun m!8003410 () Bool)

(assert (=> bm!669530 m!8003410))

(assert (=> start!716826 d!2278460))

(declare-fun bs!1918236 () Bool)

(declare-fun d!2278464 () Bool)

(assert (= bs!1918236 (and d!2278464 b!7338691)))

(declare-fun lambda!455428 () Int)

(assert (=> bs!1918236 (= lambda!455428 lambda!455414)))

(assert (=> d!2278464 (= (inv!91086 cWitness!61) (forall!17932 (exprs!8538 cWitness!61) lambda!455428))))

(declare-fun bs!1918237 () Bool)

(assert (= bs!1918237 d!2278464))

(declare-fun m!8003412 () Bool)

(assert (=> bs!1918237 m!8003412))

(assert (=> start!716826 d!2278464))

(declare-fun bs!1918238 () Bool)

(declare-fun d!2278466 () Bool)

(assert (= bs!1918238 (and d!2278466 b!7338691)))

(declare-fun lambda!455429 () Int)

(assert (=> bs!1918238 (= lambda!455429 lambda!455414)))

(declare-fun bs!1918239 () Bool)

(assert (= bs!1918239 (and d!2278466 d!2278464)))

(assert (=> bs!1918239 (= lambda!455429 lambda!455428)))

(assert (=> d!2278466 (= (inv!91086 ct1!282) (forall!17932 (exprs!8538 ct1!282) lambda!455429))))

(declare-fun bs!1918240 () Bool)

(assert (= bs!1918240 d!2278466))

(declare-fun m!8003414 () Bool)

(assert (=> bs!1918240 m!8003414))

(assert (=> start!716826 d!2278466))

(declare-fun bs!1918241 () Bool)

(declare-fun d!2278468 () Bool)

(assert (= bs!1918241 (and d!2278468 b!7338691)))

(declare-fun lambda!455430 () Int)

(assert (=> bs!1918241 (= lambda!455430 lambda!455414)))

(declare-fun bs!1918242 () Bool)

(assert (= bs!1918242 (and d!2278468 d!2278464)))

(assert (=> bs!1918242 (= lambda!455430 lambda!455428)))

(declare-fun bs!1918243 () Bool)

(assert (= bs!1918243 (and d!2278468 d!2278466)))

(assert (=> bs!1918243 (= lambda!455430 lambda!455429)))

(assert (=> d!2278468 (= (inv!91086 ct2!378) (forall!17932 (exprs!8538 ct2!378) lambda!455430))))

(declare-fun bs!1918244 () Bool)

(assert (= bs!1918244 d!2278468))

(declare-fun m!8003416 () Bool)

(assert (=> bs!1918244 m!8003416))

(assert (=> start!716826 d!2278468))

(assert (=> b!7338699 d!2278450))

(declare-fun e!4394568 () Bool)

(declare-fun b!7338872 () Bool)

(declare-fun lt!2609679 () List!71594)

(assert (=> b!7338872 (= e!4394568 (or (not (= (exprs!8538 ct2!378) Nil!71470)) (= lt!2609679 (exprs!8538 cWitness!61))))))

(declare-fun b!7338869 () Bool)

(declare-fun e!4394569 () List!71594)

(assert (=> b!7338869 (= e!4394569 (exprs!8538 ct2!378))))

(declare-fun b!7338870 () Bool)

(assert (=> b!7338870 (= e!4394569 (Cons!71470 (h!77918 (exprs!8538 cWitness!61)) (++!16916 (t!385989 (exprs!8538 cWitness!61)) (exprs!8538 ct2!378))))))

(declare-fun d!2278470 () Bool)

(assert (=> d!2278470 e!4394568))

(declare-fun res!2965097 () Bool)

(assert (=> d!2278470 (=> (not res!2965097) (not e!4394568))))

(assert (=> d!2278470 (= res!2965097 (= (content!15017 lt!2609679) (set.union (content!15017 (exprs!8538 cWitness!61)) (content!15017 (exprs!8538 ct2!378)))))))

(assert (=> d!2278470 (= lt!2609679 e!4394569)))

(declare-fun c!1363077 () Bool)

(assert (=> d!2278470 (= c!1363077 (is-Nil!71470 (exprs!8538 cWitness!61)))))

(assert (=> d!2278470 (= (++!16916 (exprs!8538 cWitness!61) (exprs!8538 ct2!378)) lt!2609679)))

(declare-fun b!7338871 () Bool)

(declare-fun res!2965096 () Bool)

(assert (=> b!7338871 (=> (not res!2965096) (not e!4394568))))

(assert (=> b!7338871 (= res!2965096 (= (size!41996 lt!2609679) (+ (size!41996 (exprs!8538 cWitness!61)) (size!41996 (exprs!8538 ct2!378)))))))

(assert (= (and d!2278470 c!1363077) b!7338869))

(assert (= (and d!2278470 (not c!1363077)) b!7338870))

(assert (= (and d!2278470 res!2965097) b!7338871))

(assert (= (and b!7338871 res!2965096) b!7338872))

(declare-fun m!8003418 () Bool)

(assert (=> b!7338870 m!8003418))

(declare-fun m!8003420 () Bool)

(assert (=> d!2278470 m!8003420))

(declare-fun m!8003422 () Bool)

(assert (=> d!2278470 m!8003422))

(assert (=> d!2278470 m!8003368))

(declare-fun m!8003424 () Bool)

(assert (=> b!7338871 m!8003424))

(declare-fun m!8003426 () Bool)

(assert (=> b!7338871 m!8003426))

(assert (=> b!7338871 m!8003374))

(assert (=> b!7338688 d!2278470))

(assert (=> b!7338688 d!2278456))

(declare-fun b!7338873 () Bool)

(declare-fun e!4394570 () (Set Context!16076))

(declare-fun e!4394571 () (Set Context!16076))

(assert (=> b!7338873 (= e!4394570 e!4394571)))

(declare-fun c!1363078 () Bool)

(assert (=> b!7338873 (= c!1363078 (is-Union!19098 r1!2370))))

(declare-fun bm!669532 () Bool)

(declare-fun call!669537 () List!71594)

(declare-fun call!669541 () List!71594)

(assert (=> bm!669532 (= call!669537 call!669541)))

(declare-fun b!7338874 () Bool)

(assert (=> b!7338874 (= e!4394570 (set.insert ct1!282 (as set.empty (Set Context!16076))))))

(declare-fun b!7338875 () Bool)

(declare-fun e!4394572 () (Set Context!16076))

(declare-fun call!669538 () (Set Context!16076))

(assert (=> b!7338875 (= e!4394572 call!669538)))

(declare-fun b!7338876 () Bool)

(declare-fun e!4394573 () (Set Context!16076))

(assert (=> b!7338876 (= e!4394573 (as set.empty (Set Context!16076)))))

(declare-fun c!1363081 () Bool)

(declare-fun c!1363080 () Bool)

(declare-fun call!669539 () (Set Context!16076))

(declare-fun bm!669533 () Bool)

(assert (=> bm!669533 (= call!669539 (derivationStepZipperDown!2924 (ite c!1363078 (regTwo!38709 r1!2370) (ite c!1363081 (regTwo!38708 r1!2370) (ite c!1363080 (regOne!38708 r1!2370) (reg!19427 r1!2370)))) (ite (or c!1363078 c!1363081) ct1!282 (Context!16077 call!669537)) c!10362))))

(declare-fun b!7338877 () Bool)

(declare-fun c!1363079 () Bool)

(assert (=> b!7338877 (= c!1363079 (is-Star!19098 r1!2370))))

(assert (=> b!7338877 (= e!4394572 e!4394573)))

(declare-fun bm!669535 () Bool)

(declare-fun call!669542 () (Set Context!16076))

(assert (=> bm!669535 (= call!669538 call!669542)))

(declare-fun b!7338878 () Bool)

(declare-fun e!4394575 () (Set Context!16076))

(assert (=> b!7338878 (= e!4394575 e!4394572)))

(assert (=> b!7338878 (= c!1363080 (is-Concat!27943 r1!2370))))

(declare-fun b!7338879 () Bool)

(declare-fun call!669540 () (Set Context!16076))

(assert (=> b!7338879 (= e!4394575 (set.union call!669540 call!669542))))

(declare-fun b!7338880 () Bool)

(assert (=> b!7338880 (= e!4394571 (set.union call!669540 call!669539))))

(declare-fun b!7338881 () Bool)

(assert (=> b!7338881 (= e!4394573 call!669538)))

(declare-fun bm!669536 () Bool)

(assert (=> bm!669536 (= call!669542 call!669539)))

(declare-fun b!7338882 () Bool)

(declare-fun e!4394574 () Bool)

(assert (=> b!7338882 (= c!1363081 e!4394574)))

(declare-fun res!2965098 () Bool)

(assert (=> b!7338882 (=> (not res!2965098) (not e!4394574))))

(assert (=> b!7338882 (= res!2965098 (is-Concat!27943 r1!2370))))

(assert (=> b!7338882 (= e!4394571 e!4394575)))

(declare-fun bm!669534 () Bool)

(assert (=> bm!669534 (= call!669540 (derivationStepZipperDown!2924 (ite c!1363078 (regOne!38709 r1!2370) (regOne!38708 r1!2370)) (ite c!1363078 ct1!282 (Context!16077 call!669541)) c!10362))))

(declare-fun d!2278472 () Bool)

(declare-fun c!1363082 () Bool)

(assert (=> d!2278472 (= c!1363082 (and (is-ElementMatch!19098 r1!2370) (= (c!1363034 r1!2370) c!10362)))))

(assert (=> d!2278472 (= (derivationStepZipperDown!2924 r1!2370 ct1!282 c!10362) e!4394570)))

(declare-fun bm!669537 () Bool)

(assert (=> bm!669537 (= call!669541 ($colon$colon!3102 (exprs!8538 ct1!282) (ite (or c!1363081 c!1363080) (regTwo!38708 r1!2370) r1!2370)))))

(declare-fun b!7338883 () Bool)

(assert (=> b!7338883 (= e!4394574 (nullable!8195 (regOne!38708 r1!2370)))))

(assert (= (and d!2278472 c!1363082) b!7338874))

(assert (= (and d!2278472 (not c!1363082)) b!7338873))

(assert (= (and b!7338873 c!1363078) b!7338880))

(assert (= (and b!7338873 (not c!1363078)) b!7338882))

(assert (= (and b!7338882 res!2965098) b!7338883))

(assert (= (and b!7338882 c!1363081) b!7338879))

(assert (= (and b!7338882 (not c!1363081)) b!7338878))

(assert (= (and b!7338878 c!1363080) b!7338875))

(assert (= (and b!7338878 (not c!1363080)) b!7338877))

(assert (= (and b!7338877 c!1363079) b!7338881))

(assert (= (and b!7338877 (not c!1363079)) b!7338876))

(assert (= (or b!7338875 b!7338881) bm!669532))

(assert (= (or b!7338875 b!7338881) bm!669535))

(assert (= (or b!7338879 bm!669535) bm!669536))

(assert (= (or b!7338879 bm!669532) bm!669537))

(assert (= (or b!7338880 bm!669536) bm!669533))

(assert (= (or b!7338880 b!7338879) bm!669534))

(assert (=> b!7338883 m!8003354))

(declare-fun m!8003428 () Bool)

(assert (=> bm!669534 m!8003428))

(declare-fun m!8003430 () Bool)

(assert (=> bm!669533 m!8003430))

(assert (=> b!7338874 m!8003296))

(declare-fun m!8003432 () Bool)

(assert (=> bm!669537 m!8003432))

(assert (=> b!7338697 d!2278472))

(declare-fun b!7338888 () Bool)

(declare-fun e!4394578 () Bool)

(declare-fun tp!2083648 () Bool)

(declare-fun tp!2083649 () Bool)

(assert (=> b!7338888 (= e!4394578 (and tp!2083648 tp!2083649))))

(assert (=> b!7338695 (= tp!2083615 e!4394578)))

(assert (= (and b!7338695 (is-Cons!71470 (exprs!8538 ct1!282))) b!7338888))

(declare-fun b!7338906 () Bool)

(declare-fun e!4394583 () Bool)

(declare-fun tp!2083664 () Bool)

(declare-fun tp!2083663 () Bool)

(assert (=> b!7338906 (= e!4394583 (and tp!2083664 tp!2083663))))

(assert (=> b!7338690 (= tp!2083612 e!4394583)))

(declare-fun b!7338905 () Bool)

(declare-fun tp!2083660 () Bool)

(assert (=> b!7338905 (= e!4394583 tp!2083660)))

(declare-fun b!7338903 () Bool)

(assert (=> b!7338903 (= e!4394583 tp_is_empty!48441)))

(declare-fun b!7338904 () Bool)

(declare-fun tp!2083661 () Bool)

(declare-fun tp!2083662 () Bool)

(assert (=> b!7338904 (= e!4394583 (and tp!2083661 tp!2083662))))

(assert (= (and b!7338690 (is-ElementMatch!19098 (regOne!38708 r1!2370))) b!7338903))

(assert (= (and b!7338690 (is-Concat!27943 (regOne!38708 r1!2370))) b!7338904))

(assert (= (and b!7338690 (is-Star!19098 (regOne!38708 r1!2370))) b!7338905))

(assert (= (and b!7338690 (is-Union!19098 (regOne!38708 r1!2370))) b!7338906))

(declare-fun b!7338910 () Bool)

(declare-fun e!4394584 () Bool)

(declare-fun tp!2083669 () Bool)

(declare-fun tp!2083668 () Bool)

(assert (=> b!7338910 (= e!4394584 (and tp!2083669 tp!2083668))))

(assert (=> b!7338690 (= tp!2083619 e!4394584)))

(declare-fun b!7338909 () Bool)

(declare-fun tp!2083665 () Bool)

(assert (=> b!7338909 (= e!4394584 tp!2083665)))

(declare-fun b!7338907 () Bool)

(assert (=> b!7338907 (= e!4394584 tp_is_empty!48441)))

(declare-fun b!7338908 () Bool)

(declare-fun tp!2083666 () Bool)

(declare-fun tp!2083667 () Bool)

(assert (=> b!7338908 (= e!4394584 (and tp!2083666 tp!2083667))))

(assert (= (and b!7338690 (is-ElementMatch!19098 (regTwo!38708 r1!2370))) b!7338907))

(assert (= (and b!7338690 (is-Concat!27943 (regTwo!38708 r1!2370))) b!7338908))

(assert (= (and b!7338690 (is-Star!19098 (regTwo!38708 r1!2370))) b!7338909))

(assert (= (and b!7338690 (is-Union!19098 (regTwo!38708 r1!2370))) b!7338910))

(declare-fun b!7338914 () Bool)

(declare-fun e!4394585 () Bool)

(declare-fun tp!2083674 () Bool)

(declare-fun tp!2083673 () Bool)

(assert (=> b!7338914 (= e!4394585 (and tp!2083674 tp!2083673))))

(assert (=> b!7338693 (= tp!2083618 e!4394585)))

(declare-fun b!7338913 () Bool)

(declare-fun tp!2083670 () Bool)

(assert (=> b!7338913 (= e!4394585 tp!2083670)))

(declare-fun b!7338911 () Bool)

(assert (=> b!7338911 (= e!4394585 tp_is_empty!48441)))

(declare-fun b!7338912 () Bool)

(declare-fun tp!2083671 () Bool)

(declare-fun tp!2083672 () Bool)

(assert (=> b!7338912 (= e!4394585 (and tp!2083671 tp!2083672))))

(assert (= (and b!7338693 (is-ElementMatch!19098 (regOne!38709 r1!2370))) b!7338911))

(assert (= (and b!7338693 (is-Concat!27943 (regOne!38709 r1!2370))) b!7338912))

(assert (= (and b!7338693 (is-Star!19098 (regOne!38709 r1!2370))) b!7338913))

(assert (= (and b!7338693 (is-Union!19098 (regOne!38709 r1!2370))) b!7338914))

(declare-fun b!7338918 () Bool)

(declare-fun e!4394586 () Bool)

(declare-fun tp!2083679 () Bool)

(declare-fun tp!2083678 () Bool)

(assert (=> b!7338918 (= e!4394586 (and tp!2083679 tp!2083678))))

(assert (=> b!7338693 (= tp!2083613 e!4394586)))

(declare-fun b!7338917 () Bool)

(declare-fun tp!2083675 () Bool)

(assert (=> b!7338917 (= e!4394586 tp!2083675)))

(declare-fun b!7338915 () Bool)

(assert (=> b!7338915 (= e!4394586 tp_is_empty!48441)))

(declare-fun b!7338916 () Bool)

(declare-fun tp!2083676 () Bool)

(declare-fun tp!2083677 () Bool)

(assert (=> b!7338916 (= e!4394586 (and tp!2083676 tp!2083677))))

(assert (= (and b!7338693 (is-ElementMatch!19098 (regTwo!38709 r1!2370))) b!7338915))

(assert (= (and b!7338693 (is-Concat!27943 (regTwo!38709 r1!2370))) b!7338916))

(assert (= (and b!7338693 (is-Star!19098 (regTwo!38709 r1!2370))) b!7338917))

(assert (= (and b!7338693 (is-Union!19098 (regTwo!38709 r1!2370))) b!7338918))

(declare-fun b!7338922 () Bool)

(declare-fun e!4394587 () Bool)

(declare-fun tp!2083684 () Bool)

(declare-fun tp!2083683 () Bool)

(assert (=> b!7338922 (= e!4394587 (and tp!2083684 tp!2083683))))

(assert (=> b!7338687 (= tp!2083616 e!4394587)))

(declare-fun b!7338921 () Bool)

(declare-fun tp!2083680 () Bool)

(assert (=> b!7338921 (= e!4394587 tp!2083680)))

(declare-fun b!7338919 () Bool)

(assert (=> b!7338919 (= e!4394587 tp_is_empty!48441)))

(declare-fun b!7338920 () Bool)

(declare-fun tp!2083681 () Bool)

(declare-fun tp!2083682 () Bool)

(assert (=> b!7338920 (= e!4394587 (and tp!2083681 tp!2083682))))

(assert (= (and b!7338687 (is-ElementMatch!19098 (reg!19427 r1!2370))) b!7338919))

(assert (= (and b!7338687 (is-Concat!27943 (reg!19427 r1!2370))) b!7338920))

(assert (= (and b!7338687 (is-Star!19098 (reg!19427 r1!2370))) b!7338921))

(assert (= (and b!7338687 (is-Union!19098 (reg!19427 r1!2370))) b!7338922))

(declare-fun b!7338923 () Bool)

(declare-fun e!4394588 () Bool)

(declare-fun tp!2083685 () Bool)

(declare-fun tp!2083686 () Bool)

(assert (=> b!7338923 (= e!4394588 (and tp!2083685 tp!2083686))))

(assert (=> b!7338698 (= tp!2083614 e!4394588)))

(assert (= (and b!7338698 (is-Cons!71470 (exprs!8538 cWitness!61))) b!7338923))

(declare-fun b!7338924 () Bool)

(declare-fun e!4394589 () Bool)

(declare-fun tp!2083687 () Bool)

(declare-fun tp!2083688 () Bool)

(assert (=> b!7338924 (= e!4394589 (and tp!2083687 tp!2083688))))

(assert (=> b!7338692 (= tp!2083617 e!4394589)))

(assert (= (and b!7338692 (is-Cons!71470 (exprs!8538 ct2!378))) b!7338924))

(declare-fun b_lambda!283825 () Bool)

(assert (= b_lambda!283819 (or b!7338691 b_lambda!283825)))

(declare-fun bs!1918245 () Bool)

(declare-fun d!2278476 () Bool)

(assert (= bs!1918245 (and d!2278476 b!7338691)))

(assert (=> bs!1918245 (= (dynLambda!29444 lambda!455414 (h!77918 (exprs!8538 ct1!282))) (validRegex!9694 (h!77918 (exprs!8538 ct1!282))))))

(declare-fun m!8003448 () Bool)

(assert (=> bs!1918245 m!8003448))

(assert (=> b!7338828 d!2278476))

(declare-fun b_lambda!283827 () Bool)

(assert (= b_lambda!283821 (or b!7338691 b_lambda!283827)))

(declare-fun bs!1918246 () Bool)

(declare-fun d!2278478 () Bool)

(assert (= bs!1918246 (and d!2278478 b!7338691)))

(assert (=> bs!1918246 (= (dynLambda!29444 lambda!455414 (h!77918 (exprs!8538 ct2!378))) (validRegex!9694 (h!77918 (exprs!8538 ct2!378))))))

(declare-fun m!8003450 () Bool)

(assert (=> bs!1918246 m!8003450))

(assert (=> b!7338830 d!2278478))

(push 1)

(assert (not bm!669533))

(assert tp_is_empty!48441)

(assert (not b!7338905))

(assert (not bm!669513))

(assert (not b!7338912))

(assert (not bm!669534))

(assert (not d!2278466))

(assert (not d!2278448))

(assert (not d!2278464))

(assert (not b!7338817))

(assert (not b!7338916))

(assert (not b!7338924))

(assert (not d!2278456))

(assert (not b!7338917))

(assert (not b!7338920))

(assert (not bs!1918246))

(assert (not b!7338910))

(assert (not b!7338906))

(assert (not b!7338852))

(assert (not b!7338883))

(assert (not b!7338923))

(assert (not bm!669530))

(assert (not b!7338908))

(assert (not d!2278468))

(assert (not d!2278470))

(assert (not b!7338904))

(assert (not b_lambda!283827))

(assert (not bm!669537))

(assert (not bs!1918245))

(assert (not b!7338921))

(assert (not b!7338796))

(assert (not b!7338888))

(assert (not d!2278450))

(assert (not b!7338913))

(assert (not bm!669512))

(assert (not b!7338829))

(assert (not b!7338918))

(assert (not b_lambda!283825))

(assert (not b!7338871))

(assert (not bm!669529))

(assert (not b!7338870))

(assert (not bm!669516))

(assert (not b!7338922))

(assert (not b!7338831))

(assert (not b!7338818))

(assert (not b!7338914))

(assert (not b!7338909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

