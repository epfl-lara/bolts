; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690174 () Bool)

(assert start!690174)

(declare-fun b!7090485 () Bool)

(declare-fun e!4262478 () Bool)

(declare-fun tp!1947729 () Bool)

(assert (=> b!7090485 (= e!4262478 tp!1947729)))

(declare-fun b!7090486 () Bool)

(declare-fun tp!1947730 () Bool)

(declare-fun tp!1947731 () Bool)

(assert (=> b!7090486 (= e!4262478 (and tp!1947730 tp!1947731))))

(declare-fun b!7090487 () Bool)

(declare-fun e!4262477 () Bool)

(declare-fun tp!1947725 () Bool)

(assert (=> b!7090487 (= e!4262477 tp!1947725)))

(declare-fun b!7090488 () Bool)

(declare-fun res!2895887 () Bool)

(declare-fun e!4262480 () Bool)

(assert (=> b!7090488 (=> (not res!2895887) (not e!4262480))))

(declare-datatypes ((C!35842 0))(
  ( (C!35843 (val!27627 Int)) )
))
(declare-datatypes ((Regex!17786 0))(
  ( (ElementMatch!17786 (c!1323239 C!35842)) (Concat!26631 (regOne!36084 Regex!17786) (regTwo!36084 Regex!17786)) (EmptyExpr!17786) (Star!17786 (reg!18115 Regex!17786)) (EmptyLang!17786) (Union!17786 (regOne!36085 Regex!17786) (regTwo!36085 Regex!17786)) )
))
(declare-fun r!11554 () Regex!17786)

(declare-fun nullable!7426 (Regex!17786) Bool)

(assert (=> b!7090488 (= res!2895887 (nullable!7426 (regOne!36084 r!11554)))))

(declare-fun b!7090489 () Bool)

(declare-fun e!4262479 () Bool)

(declare-datatypes ((List!68749 0))(
  ( (Nil!68625) (Cons!68625 (h!75073 Regex!17786) (t!382534 List!68749)) )
))
(declare-datatypes ((Context!13564 0))(
  ( (Context!13565 (exprs!7282 List!68749)) )
))
(declare-fun auxCtx!45 () Context!13564)

(declare-fun lambda!429726 () Int)

(declare-fun forall!16726 (List!68749 Int) Bool)

(assert (=> b!7090489 (= e!4262479 (not (forall!16726 (exprs!7282 auxCtx!45) lambda!429726)))))

(declare-fun b!7090491 () Bool)

(declare-fun res!2895888 () Bool)

(assert (=> b!7090491 (=> (not res!2895888) (not e!4262480))))

(declare-fun a!1901 () C!35842)

(assert (=> b!7090491 (= res!2895888 (and (or (not (is-ElementMatch!17786 r!11554)) (not (= (c!1323239 r!11554) a!1901))) (not (is-Union!17786 r!11554)) (is-Concat!26631 r!11554)))))

(declare-fun b!7090492 () Bool)

(declare-fun tp!1947728 () Bool)

(declare-fun tp!1947726 () Bool)

(assert (=> b!7090492 (= e!4262478 (and tp!1947728 tp!1947726))))

(declare-fun b!7090493 () Bool)

(declare-fun e!4262481 () Bool)

(declare-fun tp!1947727 () Bool)

(assert (=> b!7090493 (= e!4262481 tp!1947727)))

(declare-fun b!7090494 () Bool)

(declare-fun tp_is_empty!44805 () Bool)

(assert (=> b!7090494 (= e!4262478 tp_is_empty!44805)))

(declare-fun b!7090490 () Bool)

(assert (=> b!7090490 (= e!4262480 e!4262479)))

(declare-fun res!2895890 () Bool)

(assert (=> b!7090490 (=> (not res!2895890) (not e!4262479))))

(declare-fun c!9994 () Context!13564)

(assert (=> b!7090490 (= res!2895890 (forall!16726 (exprs!7282 c!9994) lambda!429726))))

(declare-fun lt!2555713 () List!68749)

(declare-fun ++!15955 (List!68749 List!68749) List!68749)

(assert (=> b!7090490 (= lt!2555713 (++!15955 (exprs!7282 c!9994) (exprs!7282 auxCtx!45)))))

(declare-datatypes ((Unit!162263 0))(
  ( (Unit!162264) )
))
(declare-fun lt!2555712 () Unit!162263)

(declare-fun lemmaConcatPreservesForall!1085 (List!68749 List!68749 Int) Unit!162263)

(assert (=> b!7090490 (= lt!2555712 (lemmaConcatPreservesForall!1085 (exprs!7282 c!9994) (exprs!7282 auxCtx!45) lambda!429726))))

(declare-fun lt!2555711 () Unit!162263)

(assert (=> b!7090490 (= lt!2555711 (lemmaConcatPreservesForall!1085 (exprs!7282 c!9994) (exprs!7282 auxCtx!45) lambda!429726))))

(declare-fun res!2895889 () Bool)

(assert (=> start!690174 (=> (not res!2895889) (not e!4262480))))

(declare-fun validRegex!9061 (Regex!17786) Bool)

(assert (=> start!690174 (= res!2895889 (validRegex!9061 r!11554))))

(assert (=> start!690174 e!4262480))

(assert (=> start!690174 e!4262478))

(assert (=> start!690174 tp_is_empty!44805))

(declare-fun inv!87331 (Context!13564) Bool)

(assert (=> start!690174 (and (inv!87331 c!9994) e!4262481)))

(assert (=> start!690174 (and (inv!87331 auxCtx!45) e!4262477)))

(assert (= (and start!690174 res!2895889) b!7090491))

(assert (= (and b!7090491 res!2895888) b!7090488))

(assert (= (and b!7090488 res!2895887) b!7090490))

(assert (= (and b!7090490 res!2895890) b!7090489))

(assert (= (and start!690174 (is-ElementMatch!17786 r!11554)) b!7090494))

(assert (= (and start!690174 (is-Concat!26631 r!11554)) b!7090486))

(assert (= (and start!690174 (is-Star!17786 r!11554)) b!7090485))

(assert (= (and start!690174 (is-Union!17786 r!11554)) b!7090492))

(assert (= start!690174 b!7090493))

(assert (= start!690174 b!7090487))

(declare-fun m!7819652 () Bool)

(assert (=> b!7090488 m!7819652))

(declare-fun m!7819654 () Bool)

(assert (=> b!7090489 m!7819654))

(declare-fun m!7819656 () Bool)

(assert (=> b!7090490 m!7819656))

(declare-fun m!7819658 () Bool)

(assert (=> b!7090490 m!7819658))

(declare-fun m!7819660 () Bool)

(assert (=> b!7090490 m!7819660))

(assert (=> b!7090490 m!7819660))

(declare-fun m!7819662 () Bool)

(assert (=> start!690174 m!7819662))

(declare-fun m!7819664 () Bool)

(assert (=> start!690174 m!7819664))

(declare-fun m!7819666 () Bool)

(assert (=> start!690174 m!7819666))

(push 1)

(assert (not b!7090486))

(assert (not b!7090490))

(assert (not start!690174))

(assert (not b!7090489))

(assert (not b!7090493))

(assert (not b!7090488))

(assert (not b!7090485))

(assert (not b!7090487))

(assert tp_is_empty!44805)

(assert (not b!7090492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7090543 () Bool)

(declare-fun e!4262513 () Bool)

(declare-fun e!4262514 () Bool)

(assert (=> b!7090543 (= e!4262513 e!4262514)))

(declare-fun res!2895914 () Bool)

(assert (=> b!7090543 (= res!2895914 (not (nullable!7426 (reg!18115 r!11554))))))

(assert (=> b!7090543 (=> (not res!2895914) (not e!4262514))))

(declare-fun bm!644719 () Bool)

(declare-fun call!644724 () Bool)

(declare-fun c!1323245 () Bool)

(declare-fun c!1323246 () Bool)

(assert (=> bm!644719 (= call!644724 (validRegex!9061 (ite c!1323246 (reg!18115 r!11554) (ite c!1323245 (regOne!36085 r!11554) (regTwo!36084 r!11554)))))))

(declare-fun b!7090544 () Bool)

(declare-fun e!4262512 () Bool)

(declare-fun call!644725 () Bool)

(assert (=> b!7090544 (= e!4262512 call!644725)))

(declare-fun b!7090545 () Bool)

(declare-fun e!4262511 () Bool)

(declare-fun call!644726 () Bool)

(assert (=> b!7090545 (= e!4262511 call!644726)))

(declare-fun b!7090546 () Bool)

(declare-fun e!4262515 () Bool)

(assert (=> b!7090546 (= e!4262515 e!4262513)))

(assert (=> b!7090546 (= c!1323246 (is-Star!17786 r!11554))))

(declare-fun d!2216799 () Bool)

(declare-fun res!2895916 () Bool)

(assert (=> d!2216799 (=> res!2895916 e!4262515)))

(assert (=> d!2216799 (= res!2895916 (is-ElementMatch!17786 r!11554))))

(assert (=> d!2216799 (= (validRegex!9061 r!11554) e!4262515)))

(declare-fun b!7090547 () Bool)

(assert (=> b!7090547 (= e!4262514 call!644724)))

(declare-fun b!7090548 () Bool)

(declare-fun res!2895917 () Bool)

(assert (=> b!7090548 (=> (not res!2895917) (not e!4262512))))

(assert (=> b!7090548 (= res!2895917 call!644726)))

(declare-fun e!4262517 () Bool)

(assert (=> b!7090548 (= e!4262517 e!4262512)))

(declare-fun bm!644720 () Bool)

(assert (=> bm!644720 (= call!644725 (validRegex!9061 (ite c!1323245 (regTwo!36085 r!11554) (regOne!36084 r!11554))))))

(declare-fun b!7090549 () Bool)

(declare-fun res!2895915 () Bool)

(declare-fun e!4262516 () Bool)

(assert (=> b!7090549 (=> res!2895915 e!4262516)))

(assert (=> b!7090549 (= res!2895915 (not (is-Concat!26631 r!11554)))))

(assert (=> b!7090549 (= e!4262517 e!4262516)))

(declare-fun bm!644721 () Bool)

(assert (=> bm!644721 (= call!644726 call!644724)))

(declare-fun b!7090550 () Bool)

(assert (=> b!7090550 (= e!4262513 e!4262517)))

(assert (=> b!7090550 (= c!1323245 (is-Union!17786 r!11554))))

(declare-fun b!7090551 () Bool)

(assert (=> b!7090551 (= e!4262516 e!4262511)))

(declare-fun res!2895913 () Bool)

(assert (=> b!7090551 (=> (not res!2895913) (not e!4262511))))

(assert (=> b!7090551 (= res!2895913 call!644725)))

(assert (= (and d!2216799 (not res!2895916)) b!7090546))

(assert (= (and b!7090546 c!1323246) b!7090543))

(assert (= (and b!7090546 (not c!1323246)) b!7090550))

(assert (= (and b!7090543 res!2895914) b!7090547))

(assert (= (and b!7090550 c!1323245) b!7090548))

(assert (= (and b!7090550 (not c!1323245)) b!7090549))

(assert (= (and b!7090548 res!2895917) b!7090544))

(assert (= (and b!7090549 (not res!2895915)) b!7090551))

(assert (= (and b!7090551 res!2895913) b!7090545))

(assert (= (or b!7090548 b!7090545) bm!644721))

(assert (= (or b!7090544 b!7090551) bm!644720))

(assert (= (or b!7090547 bm!644721) bm!644719))

(declare-fun m!7819684 () Bool)

(assert (=> b!7090543 m!7819684))

(declare-fun m!7819686 () Bool)

(assert (=> bm!644719 m!7819686))

(declare-fun m!7819688 () Bool)

(assert (=> bm!644720 m!7819688))

(assert (=> start!690174 d!2216799))

(declare-fun bs!1883417 () Bool)

(declare-fun d!2216801 () Bool)

(assert (= bs!1883417 (and d!2216801 b!7090490)))

(declare-fun lambda!429736 () Int)

(assert (=> bs!1883417 (= lambda!429736 lambda!429726)))

(assert (=> d!2216801 (= (inv!87331 c!9994) (forall!16726 (exprs!7282 c!9994) lambda!429736))))

(declare-fun bs!1883418 () Bool)

(assert (= bs!1883418 d!2216801))

(declare-fun m!7819690 () Bool)

(assert (=> bs!1883418 m!7819690))

(assert (=> start!690174 d!2216801))

(declare-fun bs!1883419 () Bool)

(declare-fun d!2216803 () Bool)

(assert (= bs!1883419 (and d!2216803 b!7090490)))

(declare-fun lambda!429737 () Int)

(assert (=> bs!1883419 (= lambda!429737 lambda!429726)))

(declare-fun bs!1883420 () Bool)

(assert (= bs!1883420 (and d!2216803 d!2216801)))

(assert (=> bs!1883420 (= lambda!429737 lambda!429736)))

(assert (=> d!2216803 (= (inv!87331 auxCtx!45) (forall!16726 (exprs!7282 auxCtx!45) lambda!429737))))

(declare-fun bs!1883421 () Bool)

(assert (= bs!1883421 d!2216803))

(declare-fun m!7819692 () Bool)

(assert (=> bs!1883421 m!7819692))

(assert (=> start!690174 d!2216803))

(declare-fun d!2216805 () Bool)

(declare-fun res!2895922 () Bool)

(declare-fun e!4262522 () Bool)

(assert (=> d!2216805 (=> res!2895922 e!4262522)))

(assert (=> d!2216805 (= res!2895922 (is-Nil!68625 (exprs!7282 c!9994)))))

(assert (=> d!2216805 (= (forall!16726 (exprs!7282 c!9994) lambda!429726) e!4262522)))

(declare-fun b!7090556 () Bool)

(declare-fun e!4262523 () Bool)

(assert (=> b!7090556 (= e!4262522 e!4262523)))

(declare-fun res!2895923 () Bool)

(assert (=> b!7090556 (=> (not res!2895923) (not e!4262523))))

(declare-fun dynLambda!27998 (Int Regex!17786) Bool)

(assert (=> b!7090556 (= res!2895923 (dynLambda!27998 lambda!429726 (h!75073 (exprs!7282 c!9994))))))

(declare-fun b!7090557 () Bool)

(assert (=> b!7090557 (= e!4262523 (forall!16726 (t!382534 (exprs!7282 c!9994)) lambda!429726))))

(assert (= (and d!2216805 (not res!2895922)) b!7090556))

(assert (= (and b!7090556 res!2895923) b!7090557))

(declare-fun b_lambda!271009 () Bool)

(assert (=> (not b_lambda!271009) (not b!7090556)))

(declare-fun m!7819694 () Bool)

(assert (=> b!7090556 m!7819694))

(declare-fun m!7819696 () Bool)

(assert (=> b!7090557 m!7819696))

(assert (=> b!7090490 d!2216805))

(declare-fun b!7090574 () Bool)

(declare-fun res!2895935 () Bool)

(declare-fun e!4262535 () Bool)

(assert (=> b!7090574 (=> (not res!2895935) (not e!4262535))))

(declare-fun lt!2555725 () List!68749)

(declare-fun size!41309 (List!68749) Int)

(assert (=> b!7090574 (= res!2895935 (= (size!41309 lt!2555725) (+ (size!41309 (exprs!7282 c!9994)) (size!41309 (exprs!7282 auxCtx!45)))))))

(declare-fun d!2216809 () Bool)

(assert (=> d!2216809 e!4262535))

(declare-fun res!2895934 () Bool)

(assert (=> d!2216809 (=> (not res!2895934) (not e!4262535))))

(declare-fun content!13934 (List!68749) (Set Regex!17786))

(assert (=> d!2216809 (= res!2895934 (= (content!13934 lt!2555725) (set.union (content!13934 (exprs!7282 c!9994)) (content!13934 (exprs!7282 auxCtx!45)))))))

(declare-fun e!4262534 () List!68749)

(assert (=> d!2216809 (= lt!2555725 e!4262534)))

(declare-fun c!1323249 () Bool)

(assert (=> d!2216809 (= c!1323249 (is-Nil!68625 (exprs!7282 c!9994)))))

(assert (=> d!2216809 (= (++!15955 (exprs!7282 c!9994) (exprs!7282 auxCtx!45)) lt!2555725)))

(declare-fun b!7090572 () Bool)

(assert (=> b!7090572 (= e!4262534 (exprs!7282 auxCtx!45))))

(declare-fun b!7090573 () Bool)

(assert (=> b!7090573 (= e!4262534 (Cons!68625 (h!75073 (exprs!7282 c!9994)) (++!15955 (t!382534 (exprs!7282 c!9994)) (exprs!7282 auxCtx!45))))))

(declare-fun b!7090575 () Bool)

(assert (=> b!7090575 (= e!4262535 (or (not (= (exprs!7282 auxCtx!45) Nil!68625)) (= lt!2555725 (exprs!7282 c!9994))))))

(assert (= (and d!2216809 c!1323249) b!7090572))

(assert (= (and d!2216809 (not c!1323249)) b!7090573))

(assert (= (and d!2216809 res!2895934) b!7090574))

(assert (= (and b!7090574 res!2895935) b!7090575))

(declare-fun m!7819702 () Bool)

(assert (=> b!7090574 m!7819702))

(declare-fun m!7819704 () Bool)

(assert (=> b!7090574 m!7819704))

(declare-fun m!7819706 () Bool)

(assert (=> b!7090574 m!7819706))

(declare-fun m!7819708 () Bool)

(assert (=> d!2216809 m!7819708))

(declare-fun m!7819710 () Bool)

(assert (=> d!2216809 m!7819710))

(declare-fun m!7819712 () Bool)

(assert (=> d!2216809 m!7819712))

(declare-fun m!7819714 () Bool)

(assert (=> b!7090573 m!7819714))

(assert (=> b!7090490 d!2216809))

(declare-fun d!2216813 () Bool)

(assert (=> d!2216813 (forall!16726 (++!15955 (exprs!7282 c!9994) (exprs!7282 auxCtx!45)) lambda!429726)))

(declare-fun lt!2555728 () Unit!162263)

(declare-fun choose!54664 (List!68749 List!68749 Int) Unit!162263)

(assert (=> d!2216813 (= lt!2555728 (choose!54664 (exprs!7282 c!9994) (exprs!7282 auxCtx!45) lambda!429726))))

(assert (=> d!2216813 (forall!16726 (exprs!7282 c!9994) lambda!429726)))

(assert (=> d!2216813 (= (lemmaConcatPreservesForall!1085 (exprs!7282 c!9994) (exprs!7282 auxCtx!45) lambda!429726) lt!2555728)))

(declare-fun bs!1883422 () Bool)

(assert (= bs!1883422 d!2216813))

(assert (=> bs!1883422 m!7819658))

(assert (=> bs!1883422 m!7819658))

(declare-fun m!7819716 () Bool)

(assert (=> bs!1883422 m!7819716))

(declare-fun m!7819718 () Bool)

(assert (=> bs!1883422 m!7819718))

(assert (=> bs!1883422 m!7819656))

(assert (=> b!7090490 d!2216813))

(declare-fun d!2216815 () Bool)

(declare-fun res!2895938 () Bool)

(declare-fun e!4262538 () Bool)

(assert (=> d!2216815 (=> res!2895938 e!4262538)))

(assert (=> d!2216815 (= res!2895938 (is-Nil!68625 (exprs!7282 auxCtx!45)))))

(assert (=> d!2216815 (= (forall!16726 (exprs!7282 auxCtx!45) lambda!429726) e!4262538)))

(declare-fun b!7090580 () Bool)

(declare-fun e!4262539 () Bool)

(assert (=> b!7090580 (= e!4262538 e!4262539)))

(declare-fun res!2895939 () Bool)

(assert (=> b!7090580 (=> (not res!2895939) (not e!4262539))))

(assert (=> b!7090580 (= res!2895939 (dynLambda!27998 lambda!429726 (h!75073 (exprs!7282 auxCtx!45))))))

(declare-fun b!7090581 () Bool)

(assert (=> b!7090581 (= e!4262539 (forall!16726 (t!382534 (exprs!7282 auxCtx!45)) lambda!429726))))

(assert (= (and d!2216815 (not res!2895938)) b!7090580))

(assert (= (and b!7090580 res!2895939) b!7090581))

(declare-fun b_lambda!271013 () Bool)

(assert (=> (not b_lambda!271013) (not b!7090580)))

(declare-fun m!7819720 () Bool)

(assert (=> b!7090580 m!7819720))

(declare-fun m!7819722 () Bool)

(assert (=> b!7090581 m!7819722))

(assert (=> b!7090489 d!2216815))

(declare-fun d!2216817 () Bool)

(declare-fun nullableFct!2849 (Regex!17786) Bool)

(assert (=> d!2216817 (= (nullable!7426 (regOne!36084 r!11554)) (nullableFct!2849 (regOne!36084 r!11554)))))

(declare-fun bs!1883423 () Bool)

(assert (= bs!1883423 d!2216817))

(declare-fun m!7819724 () Bool)

(assert (=> bs!1883423 m!7819724))

(assert (=> b!7090488 d!2216817))

(declare-fun b!7090608 () Bool)

(declare-fun e!4262554 () Bool)

(declare-fun tp!1947763 () Bool)

(assert (=> b!7090608 (= e!4262554 tp!1947763)))

(assert (=> b!7090485 (= tp!1947729 e!4262554)))

(declare-fun b!7090606 () Bool)

(assert (=> b!7090606 (= e!4262554 tp_is_empty!44805)))

(declare-fun b!7090609 () Bool)

(declare-fun tp!1947766 () Bool)

(declare-fun tp!1947767 () Bool)

(assert (=> b!7090609 (= e!4262554 (and tp!1947766 tp!1947767))))

(declare-fun b!7090607 () Bool)

(declare-fun tp!1947764 () Bool)

(declare-fun tp!1947765 () Bool)

(assert (=> b!7090607 (= e!4262554 (and tp!1947764 tp!1947765))))

(assert (= (and b!7090485 (is-ElementMatch!17786 (reg!18115 r!11554))) b!7090606))

(assert (= (and b!7090485 (is-Concat!26631 (reg!18115 r!11554))) b!7090607))

(assert (= (and b!7090485 (is-Star!17786 (reg!18115 r!11554))) b!7090608))

(assert (= (and b!7090485 (is-Union!17786 (reg!18115 r!11554))) b!7090609))

(declare-fun b!7090614 () Bool)

(declare-fun e!4262557 () Bool)

(declare-fun tp!1947772 () Bool)

(declare-fun tp!1947773 () Bool)

(assert (=> b!7090614 (= e!4262557 (and tp!1947772 tp!1947773))))

(assert (=> b!7090493 (= tp!1947727 e!4262557)))

(assert (= (and b!7090493 (is-Cons!68625 (exprs!7282 c!9994))) b!7090614))

(declare-fun b!7090615 () Bool)

(declare-fun e!4262558 () Bool)

(declare-fun tp!1947774 () Bool)

(declare-fun tp!1947775 () Bool)

(assert (=> b!7090615 (= e!4262558 (and tp!1947774 tp!1947775))))

(assert (=> b!7090487 (= tp!1947725 e!4262558)))

(assert (= (and b!7090487 (is-Cons!68625 (exprs!7282 auxCtx!45))) b!7090615))

(declare-fun b!7090618 () Bool)

(declare-fun e!4262559 () Bool)

(declare-fun tp!1947776 () Bool)

(assert (=> b!7090618 (= e!4262559 tp!1947776)))

(assert (=> b!7090492 (= tp!1947728 e!4262559)))

(declare-fun b!7090616 () Bool)

(assert (=> b!7090616 (= e!4262559 tp_is_empty!44805)))

(declare-fun b!7090619 () Bool)

(declare-fun tp!1947779 () Bool)

(declare-fun tp!1947780 () Bool)

(assert (=> b!7090619 (= e!4262559 (and tp!1947779 tp!1947780))))

(declare-fun b!7090617 () Bool)

(declare-fun tp!1947777 () Bool)

(declare-fun tp!1947778 () Bool)

(assert (=> b!7090617 (= e!4262559 (and tp!1947777 tp!1947778))))

(assert (= (and b!7090492 (is-ElementMatch!17786 (regOne!36085 r!11554))) b!7090616))

(assert (= (and b!7090492 (is-Concat!26631 (regOne!36085 r!11554))) b!7090617))

(assert (= (and b!7090492 (is-Star!17786 (regOne!36085 r!11554))) b!7090618))

(assert (= (and b!7090492 (is-Union!17786 (regOne!36085 r!11554))) b!7090619))

(declare-fun b!7090622 () Bool)

(declare-fun e!4262560 () Bool)

(declare-fun tp!1947781 () Bool)

(assert (=> b!7090622 (= e!4262560 tp!1947781)))

(assert (=> b!7090492 (= tp!1947726 e!4262560)))

(declare-fun b!7090620 () Bool)

(assert (=> b!7090620 (= e!4262560 tp_is_empty!44805)))

(declare-fun b!7090623 () Bool)

(declare-fun tp!1947784 () Bool)

(declare-fun tp!1947785 () Bool)

(assert (=> b!7090623 (= e!4262560 (and tp!1947784 tp!1947785))))

(declare-fun b!7090621 () Bool)

(declare-fun tp!1947782 () Bool)

(declare-fun tp!1947783 () Bool)

(assert (=> b!7090621 (= e!4262560 (and tp!1947782 tp!1947783))))

(assert (= (and b!7090492 (is-ElementMatch!17786 (regTwo!36085 r!11554))) b!7090620))

(assert (= (and b!7090492 (is-Concat!26631 (regTwo!36085 r!11554))) b!7090621))

(assert (= (and b!7090492 (is-Star!17786 (regTwo!36085 r!11554))) b!7090622))

(assert (= (and b!7090492 (is-Union!17786 (regTwo!36085 r!11554))) b!7090623))

(declare-fun b!7090626 () Bool)

(declare-fun e!4262561 () Bool)

(declare-fun tp!1947786 () Bool)

(assert (=> b!7090626 (= e!4262561 tp!1947786)))

(assert (=> b!7090486 (= tp!1947730 e!4262561)))

(declare-fun b!7090624 () Bool)

(assert (=> b!7090624 (= e!4262561 tp_is_empty!44805)))

(declare-fun b!7090627 () Bool)

(declare-fun tp!1947789 () Bool)

(declare-fun tp!1947790 () Bool)

(assert (=> b!7090627 (= e!4262561 (and tp!1947789 tp!1947790))))

(declare-fun b!7090625 () Bool)

(declare-fun tp!1947787 () Bool)

(declare-fun tp!1947788 () Bool)

(assert (=> b!7090625 (= e!4262561 (and tp!1947787 tp!1947788))))

(assert (= (and b!7090486 (is-ElementMatch!17786 (regOne!36084 r!11554))) b!7090624))

(assert (= (and b!7090486 (is-Concat!26631 (regOne!36084 r!11554))) b!7090625))

(assert (= (and b!7090486 (is-Star!17786 (regOne!36084 r!11554))) b!7090626))

(assert (= (and b!7090486 (is-Union!17786 (regOne!36084 r!11554))) b!7090627))

(declare-fun b!7090630 () Bool)

(declare-fun e!4262562 () Bool)

(declare-fun tp!1947791 () Bool)

(assert (=> b!7090630 (= e!4262562 tp!1947791)))

(assert (=> b!7090486 (= tp!1947731 e!4262562)))

(declare-fun b!7090628 () Bool)

(assert (=> b!7090628 (= e!4262562 tp_is_empty!44805)))

(declare-fun b!7090631 () Bool)

(declare-fun tp!1947794 () Bool)

(declare-fun tp!1947795 () Bool)

(assert (=> b!7090631 (= e!4262562 (and tp!1947794 tp!1947795))))

(declare-fun b!7090629 () Bool)

(declare-fun tp!1947792 () Bool)

(declare-fun tp!1947793 () Bool)

(assert (=> b!7090629 (= e!4262562 (and tp!1947792 tp!1947793))))

(assert (= (and b!7090486 (is-ElementMatch!17786 (regTwo!36084 r!11554))) b!7090628))

(assert (= (and b!7090486 (is-Concat!26631 (regTwo!36084 r!11554))) b!7090629))

(assert (= (and b!7090486 (is-Star!17786 (regTwo!36084 r!11554))) b!7090630))

(assert (= (and b!7090486 (is-Union!17786 (regTwo!36084 r!11554))) b!7090631))

(declare-fun b_lambda!271015 () Bool)

(assert (= b_lambda!271013 (or b!7090490 b_lambda!271015)))

(declare-fun bs!1883424 () Bool)

(declare-fun d!2216819 () Bool)

(assert (= bs!1883424 (and d!2216819 b!7090490)))

(assert (=> bs!1883424 (= (dynLambda!27998 lambda!429726 (h!75073 (exprs!7282 auxCtx!45))) (validRegex!9061 (h!75073 (exprs!7282 auxCtx!45))))))

(declare-fun m!7819726 () Bool)

(assert (=> bs!1883424 m!7819726))

(assert (=> b!7090580 d!2216819))

(declare-fun b_lambda!271017 () Bool)

(assert (= b_lambda!271009 (or b!7090490 b_lambda!271017)))

(declare-fun bs!1883425 () Bool)

(declare-fun d!2216821 () Bool)

(assert (= bs!1883425 (and d!2216821 b!7090490)))

(assert (=> bs!1883425 (= (dynLambda!27998 lambda!429726 (h!75073 (exprs!7282 c!9994))) (validRegex!9061 (h!75073 (exprs!7282 c!9994))))))

(declare-fun m!7819728 () Bool)

(assert (=> bs!1883425 m!7819728))

(assert (=> b!7090556 d!2216821))

(push 1)

(assert (not b!7090625))

(assert (not b!7090573))

(assert (not b!7090607))

(assert (not d!2216809))

(assert (not bm!644720))

(assert (not b!7090608))

(assert (not d!2216801))

(assert (not b!7090543))

(assert (not b!7090623))

(assert (not b!7090630))

(assert (not b!7090627))

(assert (not b!7090574))

(assert (not d!2216803))

(assert (not bs!1883425))

(assert (not b!7090622))

(assert (not b!7090609))

(assert (not d!2216817))

(assert (not b!7090557))

(assert (not b!7090621))

(assert (not b!7090617))

(assert (not bm!644719))

(assert (not b!7090619))

(assert (not b!7090631))

(assert (not b!7090626))

(assert (not b!7090618))

(assert tp_is_empty!44805)

(assert (not b_lambda!271017))

(assert (not b_lambda!271015))

(assert (not b!7090614))

(assert (not b!7090581))

(assert (not b!7090615))

(assert (not d!2216813))

(assert (not bs!1883424))

(assert (not b!7090629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

