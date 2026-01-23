; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719966 () Bool)

(assert start!719966)

(declare-fun b!7379604 () Bool)

(declare-fun e!4417410 () Bool)

(declare-fun tp!2098899 () Bool)

(assert (=> b!7379604 (= e!4417410 tp!2098899)))

(declare-fun b!7379605 () Bool)

(declare-fun tp!2098900 () Bool)

(declare-fun tp!2098896 () Bool)

(assert (=> b!7379605 (= e!4417410 (and tp!2098900 tp!2098896))))

(declare-fun b!7379606 () Bool)

(declare-fun e!4417415 () Bool)

(declare-datatypes ((C!38914 0))(
  ( (C!38915 (val!29817 Int)) )
))
(declare-datatypes ((Regex!19320 0))(
  ( (ElementMatch!19320 (c!1371624 C!38914)) (Concat!28165 (regOne!39152 Regex!19320) (regTwo!39152 Regex!19320)) (EmptyExpr!19320) (Star!19320 (reg!19649 Regex!19320)) (EmptyLang!19320) (Union!19320 (regOne!39153 Regex!19320) (regTwo!39153 Regex!19320)) )
))
(declare-datatypes ((List!71816 0))(
  ( (Nil!71692) (Cons!71692 (h!78140 Regex!19320) (t!386303 List!71816)) )
))
(declare-datatypes ((Context!16520 0))(
  ( (Context!16521 (exprs!8760 List!71816)) )
))
(declare-fun lt!2616804 () Context!16520)

(declare-fun inv!91641 (Context!16520) Bool)

(assert (=> b!7379606 (= e!4417415 (not (inv!91641 lt!2616804)))))

(declare-fun b!7379607 () Bool)

(declare-fun e!4417407 () Bool)

(declare-fun r1!2370 () Regex!19320)

(declare-fun nullable!8394 (Regex!19320) Bool)

(assert (=> b!7379607 (= e!4417407 (not (nullable!8394 (regOne!39152 r1!2370))))))

(declare-fun b!7379608 () Bool)

(declare-fun tp_is_empty!48885 () Bool)

(assert (=> b!7379608 (= e!4417410 tp_is_empty!48885)))

(declare-fun b!7379609 () Bool)

(declare-fun e!4417416 () Bool)

(declare-fun e!4417414 () Bool)

(assert (=> b!7379609 (= e!4417416 e!4417414)))

(declare-fun res!2976644 () Bool)

(assert (=> b!7379609 (=> (not res!2976644) (not e!4417414))))

(declare-fun c!10362 () C!38914)

(assert (=> b!7379609 (= res!2976644 (and (or (not (is-ElementMatch!19320 r1!2370)) (not (= c!10362 (c!1371624 r1!2370)))) (not (is-Union!19320 r1!2370))))))

(declare-fun lt!2616806 () (Set Context!16520))

(declare-fun ct1!282 () Context!16520)

(declare-fun ct2!378 () Context!16520)

(declare-fun derivationStepZipperDown!3146 (Regex!19320 Context!16520 C!38914) (Set Context!16520))

(declare-fun ++!17136 (List!71816 List!71816) List!71816)

(assert (=> b!7379609 (= lt!2616806 (derivationStepZipperDown!3146 r1!2370 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165589 0))(
  ( (Unit!165590) )
))
(declare-fun lt!2616808 () Unit!165589)

(declare-fun lambda!458504 () Int)

(declare-fun lemmaConcatPreservesForall!1993 (List!71816 List!71816 Int) Unit!165589)

(assert (=> b!7379609 (= lt!2616808 (lemmaConcatPreservesForall!1993 (exprs!8760 ct1!282) (exprs!8760 ct2!378) lambda!458504))))

(declare-fun b!7379610 () Bool)

(declare-fun tp!2098897 () Bool)

(declare-fun tp!2098898 () Bool)

(assert (=> b!7379610 (= e!4417410 (and tp!2098897 tp!2098898))))

(declare-fun b!7379612 () Bool)

(declare-fun e!4417409 () Bool)

(assert (=> b!7379612 (= e!4417409 e!4417415)))

(declare-fun res!2976646 () Bool)

(assert (=> b!7379612 (=> (not res!2976646) (not e!4417415))))

(declare-fun lt!2616807 () (Set Context!16520))

(assert (=> b!7379612 (= res!2976646 (= lt!2616807 (derivationStepZipperDown!3146 (reg!19649 r1!2370) lt!2616804 c!10362)))))

(declare-fun lt!2616805 () Regex!19320)

(declare-fun $colon$colon!3298 (List!71816 Regex!19320) List!71816)

(assert (=> b!7379612 (= lt!2616804 (Context!16521 ($colon$colon!3298 (exprs!8760 ct1!282) lt!2616805)))))

(declare-fun b!7379613 () Bool)

(assert (=> b!7379613 (= e!4417414 e!4417409)))

(declare-fun res!2976641 () Bool)

(assert (=> b!7379613 (=> (not res!2976641) (not e!4417409))))

(declare-fun validRegex!9916 (Regex!19320) Bool)

(assert (=> b!7379613 (= res!2976641 (validRegex!9916 lt!2616805))))

(assert (=> b!7379613 (= lt!2616805 (Star!19320 (reg!19649 r1!2370)))))

(declare-fun b!7379614 () Bool)

(declare-fun res!2976642 () Bool)

(assert (=> b!7379614 (=> (not res!2976642) (not e!4417414))))

(assert (=> b!7379614 (= res!2976642 e!4417407)))

(declare-fun res!2976647 () Bool)

(assert (=> b!7379614 (=> res!2976647 e!4417407)))

(assert (=> b!7379614 (= res!2976647 (not (is-Concat!28165 r1!2370)))))

(declare-fun b!7379615 () Bool)

(declare-fun e!4417411 () Bool)

(declare-fun tp!2098901 () Bool)

(assert (=> b!7379615 (= e!4417411 tp!2098901)))

(declare-fun b!7379616 () Bool)

(declare-fun e!4417412 () Bool)

(declare-fun tp!2098894 () Bool)

(assert (=> b!7379616 (= e!4417412 tp!2098894)))

(declare-fun b!7379611 () Bool)

(declare-fun e!4417413 () Bool)

(assert (=> b!7379611 (= e!4417413 e!4417416)))

(declare-fun res!2976643 () Bool)

(assert (=> b!7379611 (=> (not res!2976643) (not e!4417416))))

(declare-fun cWitness!61 () Context!16520)

(assert (=> b!7379611 (= res!2976643 (set.member cWitness!61 lt!2616807))))

(assert (=> b!7379611 (= lt!2616807 (derivationStepZipperDown!3146 r1!2370 ct1!282 c!10362))))

(declare-fun res!2976645 () Bool)

(assert (=> start!719966 (=> (not res!2976645) (not e!4417413))))

(assert (=> start!719966 (= res!2976645 (validRegex!9916 r1!2370))))

(assert (=> start!719966 e!4417413))

(assert (=> start!719966 tp_is_empty!48885))

(assert (=> start!719966 (and (inv!91641 cWitness!61) e!4417412)))

(declare-fun e!4417408 () Bool)

(assert (=> start!719966 (and (inv!91641 ct1!282) e!4417408)))

(assert (=> start!719966 e!4417410))

(assert (=> start!719966 (and (inv!91641 ct2!378) e!4417411)))

(declare-fun b!7379617 () Bool)

(declare-fun tp!2098895 () Bool)

(assert (=> b!7379617 (= e!4417408 tp!2098895)))

(declare-fun b!7379618 () Bool)

(declare-fun res!2976648 () Bool)

(assert (=> b!7379618 (=> (not res!2976648) (not e!4417414))))

(assert (=> b!7379618 (= res!2976648 (and (not (is-Concat!28165 r1!2370)) (is-Star!19320 r1!2370)))))

(assert (= (and start!719966 res!2976645) b!7379611))

(assert (= (and b!7379611 res!2976643) b!7379609))

(assert (= (and b!7379609 res!2976644) b!7379614))

(assert (= (and b!7379614 (not res!2976647)) b!7379607))

(assert (= (and b!7379614 res!2976642) b!7379618))

(assert (= (and b!7379618 res!2976648) b!7379613))

(assert (= (and b!7379613 res!2976641) b!7379612))

(assert (= (and b!7379612 res!2976646) b!7379606))

(assert (= start!719966 b!7379616))

(assert (= start!719966 b!7379617))

(assert (= (and start!719966 (is-ElementMatch!19320 r1!2370)) b!7379608))

(assert (= (and start!719966 (is-Concat!28165 r1!2370)) b!7379610))

(assert (= (and start!719966 (is-Star!19320 r1!2370)) b!7379604))

(assert (= (and start!719966 (is-Union!19320 r1!2370)) b!7379605))

(assert (= start!719966 b!7379615))

(declare-fun m!8030214 () Bool)

(assert (=> start!719966 m!8030214))

(declare-fun m!8030216 () Bool)

(assert (=> start!719966 m!8030216))

(declare-fun m!8030218 () Bool)

(assert (=> start!719966 m!8030218))

(declare-fun m!8030220 () Bool)

(assert (=> start!719966 m!8030220))

(declare-fun m!8030222 () Bool)

(assert (=> b!7379607 m!8030222))

(declare-fun m!8030224 () Bool)

(assert (=> b!7379613 m!8030224))

(declare-fun m!8030226 () Bool)

(assert (=> b!7379609 m!8030226))

(declare-fun m!8030228 () Bool)

(assert (=> b!7379609 m!8030228))

(declare-fun m!8030230 () Bool)

(assert (=> b!7379609 m!8030230))

(declare-fun m!8030232 () Bool)

(assert (=> b!7379611 m!8030232))

(declare-fun m!8030234 () Bool)

(assert (=> b!7379611 m!8030234))

(declare-fun m!8030236 () Bool)

(assert (=> b!7379606 m!8030236))

(declare-fun m!8030238 () Bool)

(assert (=> b!7379612 m!8030238))

(declare-fun m!8030240 () Bool)

(assert (=> b!7379612 m!8030240))

(push 1)

(assert (not b!7379605))

(assert (not b!7379610))

(assert (not b!7379607))

(assert (not b!7379617))

(assert (not b!7379604))

(assert (not b!7379609))

(assert (not start!719966))

(assert tp_is_empty!48885)

(assert (not b!7379613))

(assert (not b!7379615))

(assert (not b!7379616))

(assert (not b!7379612))

(assert (not b!7379611))

(assert (not b!7379606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1921508 () Bool)

(declare-fun d!2285355 () Bool)

(assert (= bs!1921508 (and d!2285355 b!7379609)))

(declare-fun lambda!458513 () Int)

(assert (=> bs!1921508 (= lambda!458513 lambda!458504)))

(declare-fun forall!18108 (List!71816 Int) Bool)

(assert (=> d!2285355 (= (inv!91641 lt!2616804) (forall!18108 (exprs!8760 lt!2616804) lambda!458513))))

(declare-fun bs!1921509 () Bool)

(assert (= bs!1921509 d!2285355))

(declare-fun m!8030272 () Bool)

(assert (=> bs!1921509 m!8030272))

(assert (=> b!7379606 d!2285355))

(declare-fun b!7379708 () Bool)

(declare-fun e!4417472 () (Set Context!16520))

(assert (=> b!7379708 (= e!4417472 (set.insert ct1!282 (as set.empty (Set Context!16520))))))

(declare-fun d!2285357 () Bool)

(declare-fun c!1371646 () Bool)

(assert (=> d!2285357 (= c!1371646 (and (is-ElementMatch!19320 r1!2370) (= (c!1371624 r1!2370) c!10362)))))

(assert (=> d!2285357 (= (derivationStepZipperDown!3146 r1!2370 ct1!282 c!10362) e!4417472)))

(declare-fun b!7379709 () Bool)

(declare-fun e!4417471 () Bool)

(assert (=> b!7379709 (= e!4417471 (nullable!8394 (regOne!39152 r1!2370)))))

(declare-fun b!7379710 () Bool)

(declare-fun e!4417475 () (Set Context!16520))

(declare-fun call!678776 () (Set Context!16520))

(declare-fun call!678781 () (Set Context!16520))

(assert (=> b!7379710 (= e!4417475 (set.union call!678776 call!678781))))

(declare-fun b!7379711 () Bool)

(declare-fun e!4417474 () (Set Context!16520))

(assert (=> b!7379711 (= e!4417474 (as set.empty (Set Context!16520)))))

(declare-fun b!7379712 () Bool)

(declare-fun e!4417473 () (Set Context!16520))

(declare-fun call!678779 () (Set Context!16520))

(assert (=> b!7379712 (= e!4417473 (set.union call!678776 call!678779))))

(declare-fun call!678778 () List!71816)

(declare-fun c!1371649 () Bool)

(declare-fun bm!678771 () Bool)

(declare-fun c!1371650 () Bool)

(assert (=> bm!678771 (= call!678778 ($colon$colon!3298 (exprs!8760 ct1!282) (ite (or c!1371649 c!1371650) (regTwo!39152 r1!2370) r1!2370)))))

(declare-fun bm!678772 () Bool)

(assert (=> bm!678772 (= call!678779 call!678781)))

(declare-fun b!7379713 () Bool)

(assert (=> b!7379713 (= c!1371649 e!4417471)))

(declare-fun res!2976677 () Bool)

(assert (=> b!7379713 (=> (not res!2976677) (not e!4417471))))

(assert (=> b!7379713 (= res!2976677 (is-Concat!28165 r1!2370))))

(assert (=> b!7379713 (= e!4417475 e!4417473)))

(declare-fun c!1371648 () Bool)

(declare-fun bm!678773 () Bool)

(declare-fun call!678777 () List!71816)

(assert (=> bm!678773 (= call!678781 (derivationStepZipperDown!3146 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))) (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777)) c!10362))))

(declare-fun b!7379714 () Bool)

(declare-fun e!4417476 () (Set Context!16520))

(declare-fun call!678780 () (Set Context!16520))

(assert (=> b!7379714 (= e!4417476 call!678780)))

(declare-fun b!7379715 () Bool)

(declare-fun c!1371647 () Bool)

(assert (=> b!7379715 (= c!1371647 (is-Star!19320 r1!2370))))

(assert (=> b!7379715 (= e!4417476 e!4417474)))

(declare-fun bm!678774 () Bool)

(assert (=> bm!678774 (= call!678777 call!678778)))

(declare-fun b!7379716 () Bool)

(assert (=> b!7379716 (= e!4417474 call!678780)))

(declare-fun b!7379717 () Bool)

(assert (=> b!7379717 (= e!4417472 e!4417475)))

(assert (=> b!7379717 (= c!1371648 (is-Union!19320 r1!2370))))

(declare-fun b!7379718 () Bool)

(assert (=> b!7379718 (= e!4417473 e!4417476)))

(assert (=> b!7379718 (= c!1371650 (is-Concat!28165 r1!2370))))

(declare-fun bm!678775 () Bool)

(assert (=> bm!678775 (= call!678780 call!678779)))

(declare-fun bm!678776 () Bool)

(assert (=> bm!678776 (= call!678776 (derivationStepZipperDown!3146 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)) (ite c!1371648 ct1!282 (Context!16521 call!678778)) c!10362))))

(assert (= (and d!2285357 c!1371646) b!7379708))

(assert (= (and d!2285357 (not c!1371646)) b!7379717))

(assert (= (and b!7379717 c!1371648) b!7379710))

(assert (= (and b!7379717 (not c!1371648)) b!7379713))

(assert (= (and b!7379713 res!2976677) b!7379709))

(assert (= (and b!7379713 c!1371649) b!7379712))

(assert (= (and b!7379713 (not c!1371649)) b!7379718))

(assert (= (and b!7379718 c!1371650) b!7379714))

(assert (= (and b!7379718 (not c!1371650)) b!7379715))

(assert (= (and b!7379715 c!1371647) b!7379716))

(assert (= (and b!7379715 (not c!1371647)) b!7379711))

(assert (= (or b!7379714 b!7379716) bm!678774))

(assert (= (or b!7379714 b!7379716) bm!678775))

(assert (= (or b!7379712 bm!678775) bm!678772))

(assert (= (or b!7379712 bm!678774) bm!678771))

(assert (= (or b!7379710 bm!678772) bm!678773))

(assert (= (or b!7379710 b!7379712) bm!678776))

(declare-fun m!8030274 () Bool)

(assert (=> bm!678771 m!8030274))

(declare-fun m!8030276 () Bool)

(assert (=> bm!678773 m!8030276))

(assert (=> b!7379709 m!8030222))

(declare-fun m!8030278 () Bool)

(assert (=> bm!678776 m!8030278))

(declare-fun m!8030280 () Bool)

(assert (=> b!7379708 m!8030280))

(assert (=> b!7379611 d!2285357))

(declare-fun b!7379719 () Bool)

(declare-fun e!4417478 () (Set Context!16520))

(assert (=> b!7379719 (= e!4417478 (set.insert lt!2616804 (as set.empty (Set Context!16520))))))

(declare-fun d!2285359 () Bool)

(declare-fun c!1371651 () Bool)

(assert (=> d!2285359 (= c!1371651 (and (is-ElementMatch!19320 (reg!19649 r1!2370)) (= (c!1371624 (reg!19649 r1!2370)) c!10362)))))

(assert (=> d!2285359 (= (derivationStepZipperDown!3146 (reg!19649 r1!2370) lt!2616804 c!10362) e!4417478)))

(declare-fun b!7379720 () Bool)

(declare-fun e!4417477 () Bool)

(assert (=> b!7379720 (= e!4417477 (nullable!8394 (regOne!39152 (reg!19649 r1!2370))))))

(declare-fun b!7379721 () Bool)

(declare-fun e!4417481 () (Set Context!16520))

(declare-fun call!678784 () (Set Context!16520))

(declare-fun call!678789 () (Set Context!16520))

(assert (=> b!7379721 (= e!4417481 (set.union call!678784 call!678789))))

(declare-fun b!7379722 () Bool)

(declare-fun e!4417480 () (Set Context!16520))

(assert (=> b!7379722 (= e!4417480 (as set.empty (Set Context!16520)))))

(declare-fun b!7379723 () Bool)

(declare-fun e!4417479 () (Set Context!16520))

(declare-fun call!678787 () (Set Context!16520))

(assert (=> b!7379723 (= e!4417479 (set.union call!678784 call!678787))))

(declare-fun call!678786 () List!71816)

(declare-fun c!1371654 () Bool)

(declare-fun c!1371655 () Bool)

(declare-fun bm!678779 () Bool)

(assert (=> bm!678779 (= call!678786 ($colon$colon!3298 (exprs!8760 lt!2616804) (ite (or c!1371654 c!1371655) (regTwo!39152 (reg!19649 r1!2370)) (reg!19649 r1!2370))))))

(declare-fun bm!678780 () Bool)

(assert (=> bm!678780 (= call!678787 call!678789)))

(declare-fun b!7379724 () Bool)

(assert (=> b!7379724 (= c!1371654 e!4417477)))

(declare-fun res!2976678 () Bool)

(assert (=> b!7379724 (=> (not res!2976678) (not e!4417477))))

(assert (=> b!7379724 (= res!2976678 (is-Concat!28165 (reg!19649 r1!2370)))))

(assert (=> b!7379724 (= e!4417481 e!4417479)))

(declare-fun bm!678781 () Bool)

(declare-fun c!1371653 () Bool)

(declare-fun call!678785 () List!71816)

(assert (=> bm!678781 (= call!678789 (derivationStepZipperDown!3146 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))) (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785)) c!10362))))

(declare-fun b!7379725 () Bool)

(declare-fun e!4417482 () (Set Context!16520))

(declare-fun call!678788 () (Set Context!16520))

(assert (=> b!7379725 (= e!4417482 call!678788)))

(declare-fun b!7379726 () Bool)

(declare-fun c!1371652 () Bool)

(assert (=> b!7379726 (= c!1371652 (is-Star!19320 (reg!19649 r1!2370)))))

(assert (=> b!7379726 (= e!4417482 e!4417480)))

(declare-fun bm!678782 () Bool)

(assert (=> bm!678782 (= call!678785 call!678786)))

(declare-fun b!7379727 () Bool)

(assert (=> b!7379727 (= e!4417480 call!678788)))

(declare-fun b!7379728 () Bool)

(assert (=> b!7379728 (= e!4417478 e!4417481)))

(assert (=> b!7379728 (= c!1371653 (is-Union!19320 (reg!19649 r1!2370)))))

(declare-fun b!7379729 () Bool)

(assert (=> b!7379729 (= e!4417479 e!4417482)))

(assert (=> b!7379729 (= c!1371655 (is-Concat!28165 (reg!19649 r1!2370)))))

(declare-fun bm!678783 () Bool)

(assert (=> bm!678783 (= call!678788 call!678787)))

(declare-fun bm!678784 () Bool)

(assert (=> bm!678784 (= call!678784 (derivationStepZipperDown!3146 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))) (ite c!1371653 lt!2616804 (Context!16521 call!678786)) c!10362))))

(assert (= (and d!2285359 c!1371651) b!7379719))

(assert (= (and d!2285359 (not c!1371651)) b!7379728))

(assert (= (and b!7379728 c!1371653) b!7379721))

(assert (= (and b!7379728 (not c!1371653)) b!7379724))

(assert (= (and b!7379724 res!2976678) b!7379720))

(assert (= (and b!7379724 c!1371654) b!7379723))

(assert (= (and b!7379724 (not c!1371654)) b!7379729))

(assert (= (and b!7379729 c!1371655) b!7379725))

(assert (= (and b!7379729 (not c!1371655)) b!7379726))

(assert (= (and b!7379726 c!1371652) b!7379727))

(assert (= (and b!7379726 (not c!1371652)) b!7379722))

(assert (= (or b!7379725 b!7379727) bm!678782))

(assert (= (or b!7379725 b!7379727) bm!678783))

(assert (= (or b!7379723 bm!678783) bm!678780))

(assert (= (or b!7379723 bm!678782) bm!678779))

(assert (= (or b!7379721 bm!678780) bm!678781))

(assert (= (or b!7379721 b!7379723) bm!678784))

(declare-fun m!8030282 () Bool)

(assert (=> bm!678779 m!8030282))

(declare-fun m!8030284 () Bool)

(assert (=> bm!678781 m!8030284))

(declare-fun m!8030286 () Bool)

(assert (=> b!7379720 m!8030286))

(declare-fun m!8030288 () Bool)

(assert (=> bm!678784 m!8030288))

(declare-fun m!8030290 () Bool)

(assert (=> b!7379719 m!8030290))

(assert (=> b!7379612 d!2285359))

(declare-fun d!2285361 () Bool)

(assert (=> d!2285361 (= ($colon$colon!3298 (exprs!8760 ct1!282) lt!2616805) (Cons!71692 lt!2616805 (exprs!8760 ct1!282)))))

(assert (=> b!7379612 d!2285361))

(declare-fun d!2285363 () Bool)

(declare-fun nullableFct!3365 (Regex!19320) Bool)

(assert (=> d!2285363 (= (nullable!8394 (regOne!39152 r1!2370)) (nullableFct!3365 (regOne!39152 r1!2370)))))

(declare-fun bs!1921510 () Bool)

(assert (= bs!1921510 d!2285363))

(declare-fun m!8030292 () Bool)

(assert (=> bs!1921510 m!8030292))

(assert (=> b!7379607 d!2285363))

(declare-fun bm!678791 () Bool)

(declare-fun call!678798 () Bool)

(declare-fun c!1371660 () Bool)

(assert (=> bm!678791 (= call!678798 (validRegex!9916 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))

(declare-fun c!1371661 () Bool)

(declare-fun call!678797 () Bool)

(declare-fun bm!678792 () Bool)

(assert (=> bm!678792 (= call!678797 (validRegex!9916 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))

(declare-fun bm!678793 () Bool)

(declare-fun call!678796 () Bool)

(assert (=> bm!678793 (= call!678796 call!678797)))

(declare-fun b!7379748 () Bool)

(declare-fun e!4417502 () Bool)

(declare-fun e!4417503 () Bool)

(assert (=> b!7379748 (= e!4417502 e!4417503)))

(assert (=> b!7379748 (= c!1371661 (is-Star!19320 lt!2616805))))

(declare-fun b!7379749 () Bool)

(declare-fun e!4417499 () Bool)

(declare-fun e!4417497 () Bool)

(assert (=> b!7379749 (= e!4417499 e!4417497)))

(declare-fun res!2976692 () Bool)

(assert (=> b!7379749 (=> (not res!2976692) (not e!4417497))))

(assert (=> b!7379749 (= res!2976692 call!678798)))

(declare-fun b!7379750 () Bool)

(declare-fun e!4417500 () Bool)

(assert (=> b!7379750 (= e!4417500 call!678798)))

(declare-fun d!2285365 () Bool)

(declare-fun res!2976693 () Bool)

(assert (=> d!2285365 (=> res!2976693 e!4417502)))

(assert (=> d!2285365 (= res!2976693 (is-ElementMatch!19320 lt!2616805))))

(assert (=> d!2285365 (= (validRegex!9916 lt!2616805) e!4417502)))

(declare-fun b!7379751 () Bool)

(declare-fun e!4417498 () Bool)

(assert (=> b!7379751 (= e!4417503 e!4417498)))

(assert (=> b!7379751 (= c!1371660 (is-Union!19320 lt!2616805))))

(declare-fun b!7379752 () Bool)

(assert (=> b!7379752 (= e!4417497 call!678796)))

(declare-fun b!7379753 () Bool)

(declare-fun res!2976690 () Bool)

(assert (=> b!7379753 (=> res!2976690 e!4417499)))

(assert (=> b!7379753 (= res!2976690 (not (is-Concat!28165 lt!2616805)))))

(assert (=> b!7379753 (= e!4417498 e!4417499)))

(declare-fun b!7379754 () Bool)

(declare-fun e!4417501 () Bool)

(assert (=> b!7379754 (= e!4417503 e!4417501)))

(declare-fun res!2976689 () Bool)

(assert (=> b!7379754 (= res!2976689 (not (nullable!8394 (reg!19649 lt!2616805))))))

(assert (=> b!7379754 (=> (not res!2976689) (not e!4417501))))

(declare-fun b!7379755 () Bool)

(assert (=> b!7379755 (= e!4417501 call!678797)))

(declare-fun b!7379756 () Bool)

(declare-fun res!2976691 () Bool)

(assert (=> b!7379756 (=> (not res!2976691) (not e!4417500))))

(assert (=> b!7379756 (= res!2976691 call!678796)))

(assert (=> b!7379756 (= e!4417498 e!4417500)))

(assert (= (and d!2285365 (not res!2976693)) b!7379748))

(assert (= (and b!7379748 c!1371661) b!7379754))

(assert (= (and b!7379748 (not c!1371661)) b!7379751))

(assert (= (and b!7379754 res!2976689) b!7379755))

(assert (= (and b!7379751 c!1371660) b!7379756))

(assert (= (and b!7379751 (not c!1371660)) b!7379753))

(assert (= (and b!7379756 res!2976691) b!7379750))

(assert (= (and b!7379753 (not res!2976690)) b!7379749))

(assert (= (and b!7379749 res!2976692) b!7379752))

(assert (= (or b!7379756 b!7379752) bm!678793))

(assert (= (or b!7379750 b!7379749) bm!678791))

(assert (= (or b!7379755 bm!678793) bm!678792))

(declare-fun m!8030294 () Bool)

(assert (=> bm!678791 m!8030294))

(declare-fun m!8030296 () Bool)

(assert (=> bm!678792 m!8030296))

(declare-fun m!8030298 () Bool)

(assert (=> b!7379754 m!8030298))

(assert (=> b!7379613 d!2285365))

(declare-fun bm!678794 () Bool)

(declare-fun call!678801 () Bool)

(declare-fun c!1371662 () Bool)

(assert (=> bm!678794 (= call!678801 (validRegex!9916 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun c!1371663 () Bool)

(declare-fun call!678800 () Bool)

(declare-fun bm!678795 () Bool)

(assert (=> bm!678795 (= call!678800 (validRegex!9916 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))

(declare-fun bm!678796 () Bool)

(declare-fun call!678799 () Bool)

(assert (=> bm!678796 (= call!678799 call!678800)))

(declare-fun b!7379757 () Bool)

(declare-fun e!4417509 () Bool)

(declare-fun e!4417510 () Bool)

(assert (=> b!7379757 (= e!4417509 e!4417510)))

(assert (=> b!7379757 (= c!1371663 (is-Star!19320 r1!2370))))

(declare-fun b!7379758 () Bool)

(declare-fun e!4417506 () Bool)

(declare-fun e!4417504 () Bool)

(assert (=> b!7379758 (= e!4417506 e!4417504)))

(declare-fun res!2976697 () Bool)

(assert (=> b!7379758 (=> (not res!2976697) (not e!4417504))))

(assert (=> b!7379758 (= res!2976697 call!678801)))

(declare-fun b!7379759 () Bool)

(declare-fun e!4417507 () Bool)

(assert (=> b!7379759 (= e!4417507 call!678801)))

(declare-fun d!2285367 () Bool)

(declare-fun res!2976698 () Bool)

(assert (=> d!2285367 (=> res!2976698 e!4417509)))

(assert (=> d!2285367 (= res!2976698 (is-ElementMatch!19320 r1!2370))))

(assert (=> d!2285367 (= (validRegex!9916 r1!2370) e!4417509)))

(declare-fun b!7379760 () Bool)

(declare-fun e!4417505 () Bool)

(assert (=> b!7379760 (= e!4417510 e!4417505)))

(assert (=> b!7379760 (= c!1371662 (is-Union!19320 r1!2370))))

(declare-fun b!7379761 () Bool)

(assert (=> b!7379761 (= e!4417504 call!678799)))

(declare-fun b!7379762 () Bool)

(declare-fun res!2976695 () Bool)

(assert (=> b!7379762 (=> res!2976695 e!4417506)))

(assert (=> b!7379762 (= res!2976695 (not (is-Concat!28165 r1!2370)))))

(assert (=> b!7379762 (= e!4417505 e!4417506)))

(declare-fun b!7379763 () Bool)

(declare-fun e!4417508 () Bool)

(assert (=> b!7379763 (= e!4417510 e!4417508)))

(declare-fun res!2976694 () Bool)

(assert (=> b!7379763 (= res!2976694 (not (nullable!8394 (reg!19649 r1!2370))))))

(assert (=> b!7379763 (=> (not res!2976694) (not e!4417508))))

(declare-fun b!7379764 () Bool)

(assert (=> b!7379764 (= e!4417508 call!678800)))

(declare-fun b!7379765 () Bool)

(declare-fun res!2976696 () Bool)

(assert (=> b!7379765 (=> (not res!2976696) (not e!4417507))))

(assert (=> b!7379765 (= res!2976696 call!678799)))

(assert (=> b!7379765 (= e!4417505 e!4417507)))

(assert (= (and d!2285367 (not res!2976698)) b!7379757))

(assert (= (and b!7379757 c!1371663) b!7379763))

(assert (= (and b!7379757 (not c!1371663)) b!7379760))

(assert (= (and b!7379763 res!2976694) b!7379764))

(assert (= (and b!7379760 c!1371662) b!7379765))

(assert (= (and b!7379760 (not c!1371662)) b!7379762))

(assert (= (and b!7379765 res!2976696) b!7379759))

(assert (= (and b!7379762 (not res!2976695)) b!7379758))

(assert (= (and b!7379758 res!2976697) b!7379761))

(assert (= (or b!7379765 b!7379761) bm!678796))

(assert (= (or b!7379759 b!7379758) bm!678794))

(assert (= (or b!7379764 bm!678796) bm!678795))

(declare-fun m!8030300 () Bool)

(assert (=> bm!678794 m!8030300))

(declare-fun m!8030302 () Bool)

(assert (=> bm!678795 m!8030302))

(declare-fun m!8030304 () Bool)

(assert (=> b!7379763 m!8030304))

(assert (=> start!719966 d!2285367))

(declare-fun bs!1921511 () Bool)

(declare-fun d!2285369 () Bool)

(assert (= bs!1921511 (and d!2285369 b!7379609)))

(declare-fun lambda!458514 () Int)

(assert (=> bs!1921511 (= lambda!458514 lambda!458504)))

(declare-fun bs!1921512 () Bool)

(assert (= bs!1921512 (and d!2285369 d!2285355)))

(assert (=> bs!1921512 (= lambda!458514 lambda!458513)))

(assert (=> d!2285369 (= (inv!91641 cWitness!61) (forall!18108 (exprs!8760 cWitness!61) lambda!458514))))

(declare-fun bs!1921513 () Bool)

(assert (= bs!1921513 d!2285369))

(declare-fun m!8030306 () Bool)

(assert (=> bs!1921513 m!8030306))

(assert (=> start!719966 d!2285369))

(declare-fun bs!1921514 () Bool)

(declare-fun d!2285371 () Bool)

(assert (= bs!1921514 (and d!2285371 b!7379609)))

(declare-fun lambda!458515 () Int)

(assert (=> bs!1921514 (= lambda!458515 lambda!458504)))

(declare-fun bs!1921515 () Bool)

(assert (= bs!1921515 (and d!2285371 d!2285355)))

(assert (=> bs!1921515 (= lambda!458515 lambda!458513)))

(declare-fun bs!1921516 () Bool)

(assert (= bs!1921516 (and d!2285371 d!2285369)))

(assert (=> bs!1921516 (= lambda!458515 lambda!458514)))

(assert (=> d!2285371 (= (inv!91641 ct1!282) (forall!18108 (exprs!8760 ct1!282) lambda!458515))))

(declare-fun bs!1921517 () Bool)

(assert (= bs!1921517 d!2285371))

(declare-fun m!8030308 () Bool)

(assert (=> bs!1921517 m!8030308))

(assert (=> start!719966 d!2285371))

(declare-fun bs!1921518 () Bool)

(declare-fun d!2285373 () Bool)

(assert (= bs!1921518 (and d!2285373 b!7379609)))

(declare-fun lambda!458516 () Int)

(assert (=> bs!1921518 (= lambda!458516 lambda!458504)))

(declare-fun bs!1921519 () Bool)

(assert (= bs!1921519 (and d!2285373 d!2285355)))

(assert (=> bs!1921519 (= lambda!458516 lambda!458513)))

(declare-fun bs!1921520 () Bool)

(assert (= bs!1921520 (and d!2285373 d!2285369)))

(assert (=> bs!1921520 (= lambda!458516 lambda!458514)))

(declare-fun bs!1921521 () Bool)

(assert (= bs!1921521 (and d!2285373 d!2285371)))

(assert (=> bs!1921521 (= lambda!458516 lambda!458515)))

(assert (=> d!2285373 (= (inv!91641 ct2!378) (forall!18108 (exprs!8760 ct2!378) lambda!458516))))

(declare-fun bs!1921522 () Bool)

(assert (= bs!1921522 d!2285373))

(declare-fun m!8030310 () Bool)

(assert (=> bs!1921522 m!8030310))

(assert (=> start!719966 d!2285373))

(declare-fun b!7379777 () Bool)

(declare-fun e!4417518 () (Set Context!16520))

(assert (=> b!7379777 (= e!4417518 (set.insert (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (as set.empty (Set Context!16520))))))

(declare-fun d!2285375 () Bool)

(declare-fun c!1371669 () Bool)

(assert (=> d!2285375 (= c!1371669 (and (is-ElementMatch!19320 r1!2370) (= (c!1371624 r1!2370) c!10362)))))

(assert (=> d!2285375 (= (derivationStepZipperDown!3146 r1!2370 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) c!10362) e!4417518)))

(declare-fun b!7379778 () Bool)

(declare-fun e!4417517 () Bool)

(assert (=> b!7379778 (= e!4417517 (nullable!8394 (regOne!39152 r1!2370)))))

(declare-fun b!7379779 () Bool)

(declare-fun e!4417521 () (Set Context!16520))

(declare-fun call!678808 () (Set Context!16520))

(declare-fun call!678813 () (Set Context!16520))

(assert (=> b!7379779 (= e!4417521 (set.union call!678808 call!678813))))

(declare-fun b!7379780 () Bool)

(declare-fun e!4417520 () (Set Context!16520))

(assert (=> b!7379780 (= e!4417520 (as set.empty (Set Context!16520)))))

(declare-fun b!7379781 () Bool)

(declare-fun e!4417519 () (Set Context!16520))

(declare-fun call!678811 () (Set Context!16520))

(assert (=> b!7379781 (= e!4417519 (set.union call!678808 call!678811))))

(declare-fun call!678810 () List!71816)

(declare-fun bm!678803 () Bool)

(declare-fun c!1371672 () Bool)

(declare-fun c!1371673 () Bool)

(assert (=> bm!678803 (= call!678810 ($colon$colon!3298 (exprs!8760 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)))) (ite (or c!1371672 c!1371673) (regTwo!39152 r1!2370) r1!2370)))))

(declare-fun bm!678804 () Bool)

(assert (=> bm!678804 (= call!678811 call!678813)))

(declare-fun b!7379782 () Bool)

(assert (=> b!7379782 (= c!1371672 e!4417517)))

(declare-fun res!2976700 () Bool)

(assert (=> b!7379782 (=> (not res!2976700) (not e!4417517))))

(assert (=> b!7379782 (= res!2976700 (is-Concat!28165 r1!2370))))

(assert (=> b!7379782 (= e!4417521 e!4417519)))

(declare-fun call!678809 () List!71816)

(declare-fun c!1371671 () Bool)

(declare-fun bm!678805 () Bool)

(assert (=> bm!678805 (= call!678813 (derivationStepZipperDown!3146 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))) (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809)) c!10362))))

(declare-fun b!7379783 () Bool)

(declare-fun e!4417522 () (Set Context!16520))

(declare-fun call!678812 () (Set Context!16520))

(assert (=> b!7379783 (= e!4417522 call!678812)))

(declare-fun b!7379784 () Bool)

(declare-fun c!1371670 () Bool)

(assert (=> b!7379784 (= c!1371670 (is-Star!19320 r1!2370))))

(assert (=> b!7379784 (= e!4417522 e!4417520)))

(declare-fun bm!678806 () Bool)

(assert (=> bm!678806 (= call!678809 call!678810)))

(declare-fun b!7379785 () Bool)

(assert (=> b!7379785 (= e!4417520 call!678812)))

(declare-fun b!7379786 () Bool)

(assert (=> b!7379786 (= e!4417518 e!4417521)))

(assert (=> b!7379786 (= c!1371671 (is-Union!19320 r1!2370))))

(declare-fun b!7379787 () Bool)

(assert (=> b!7379787 (= e!4417519 e!4417522)))

(assert (=> b!7379787 (= c!1371673 (is-Concat!28165 r1!2370))))

(declare-fun bm!678807 () Bool)

(assert (=> bm!678807 (= call!678812 call!678811)))

(declare-fun bm!678808 () Bool)

(assert (=> bm!678808 (= call!678808 (derivationStepZipperDown!3146 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)) (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810)) c!10362))))

(assert (= (and d!2285375 c!1371669) b!7379777))

(assert (= (and d!2285375 (not c!1371669)) b!7379786))

(assert (= (and b!7379786 c!1371671) b!7379779))

(assert (= (and b!7379786 (not c!1371671)) b!7379782))

(assert (= (and b!7379782 res!2976700) b!7379778))

(assert (= (and b!7379782 c!1371672) b!7379781))

(assert (= (and b!7379782 (not c!1371672)) b!7379787))

(assert (= (and b!7379787 c!1371673) b!7379783))

(assert (= (and b!7379787 (not c!1371673)) b!7379784))

(assert (= (and b!7379784 c!1371670) b!7379785))

(assert (= (and b!7379784 (not c!1371670)) b!7379780))

(assert (= (or b!7379783 b!7379785) bm!678806))

(assert (= (or b!7379783 b!7379785) bm!678807))

(assert (= (or b!7379781 bm!678807) bm!678804))

(assert (= (or b!7379781 bm!678806) bm!678803))

(assert (= (or b!7379779 bm!678804) bm!678805))

(assert (= (or b!7379779 b!7379781) bm!678808))

(declare-fun m!8030312 () Bool)

(assert (=> bm!678803 m!8030312))

(declare-fun m!8030314 () Bool)

(assert (=> bm!678805 m!8030314))

(assert (=> b!7379778 m!8030222))

(declare-fun m!8030316 () Bool)

(assert (=> bm!678808 m!8030316))

(declare-fun m!8030318 () Bool)

(assert (=> b!7379777 m!8030318))

(assert (=> b!7379609 d!2285375))

(declare-fun b!7379809 () Bool)

(declare-fun res!2976706 () Bool)

(declare-fun e!4417534 () Bool)

(assert (=> b!7379809 (=> (not res!2976706) (not e!4417534))))

(declare-fun lt!2616826 () List!71816)

(declare-fun size!42159 (List!71816) Int)

(assert (=> b!7379809 (= res!2976706 (= (size!42159 lt!2616826) (+ (size!42159 (exprs!8760 ct1!282)) (size!42159 (exprs!8760 ct2!378)))))))

(declare-fun d!2285377 () Bool)

(assert (=> d!2285377 e!4417534))

(declare-fun res!2976707 () Bool)

(assert (=> d!2285377 (=> (not res!2976707) (not e!4417534))))

(declare-fun content!15181 (List!71816) (Set Regex!19320))

(assert (=> d!2285377 (= res!2976707 (= (content!15181 lt!2616826) (set.union (content!15181 (exprs!8760 ct1!282)) (content!15181 (exprs!8760 ct2!378)))))))

(declare-fun e!4417533 () List!71816)

(assert (=> d!2285377 (= lt!2616826 e!4417533)))

(declare-fun c!1371681 () Bool)

(assert (=> d!2285377 (= c!1371681 (is-Nil!71692 (exprs!8760 ct1!282)))))

(assert (=> d!2285377 (= (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)) lt!2616826)))

(declare-fun b!7379808 () Bool)

(assert (=> b!7379808 (= e!4417533 (Cons!71692 (h!78140 (exprs!8760 ct1!282)) (++!17136 (t!386303 (exprs!8760 ct1!282)) (exprs!8760 ct2!378))))))

(declare-fun b!7379807 () Bool)

(assert (=> b!7379807 (= e!4417533 (exprs!8760 ct2!378))))

(declare-fun b!7379810 () Bool)

(assert (=> b!7379810 (= e!4417534 (or (not (= (exprs!8760 ct2!378) Nil!71692)) (= lt!2616826 (exprs!8760 ct1!282))))))

(assert (= (and d!2285377 c!1371681) b!7379807))

(assert (= (and d!2285377 (not c!1371681)) b!7379808))

(assert (= (and d!2285377 res!2976707) b!7379809))

(assert (= (and b!7379809 res!2976706) b!7379810))

(declare-fun m!8030338 () Bool)

(assert (=> b!7379809 m!8030338))

(declare-fun m!8030340 () Bool)

(assert (=> b!7379809 m!8030340))

(declare-fun m!8030342 () Bool)

(assert (=> b!7379809 m!8030342))

(declare-fun m!8030344 () Bool)

(assert (=> d!2285377 m!8030344))

(declare-fun m!8030346 () Bool)

(assert (=> d!2285377 m!8030346))

(declare-fun m!8030348 () Bool)

(assert (=> d!2285377 m!8030348))

(declare-fun m!8030350 () Bool)

(assert (=> b!7379808 m!8030350))

(assert (=> b!7379609 d!2285377))

(declare-fun d!2285385 () Bool)

(assert (=> d!2285385 (forall!18108 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)) lambda!458504)))

(declare-fun lt!2616829 () Unit!165589)

(declare-fun choose!57341 (List!71816 List!71816 Int) Unit!165589)

(assert (=> d!2285385 (= lt!2616829 (choose!57341 (exprs!8760 ct1!282) (exprs!8760 ct2!378) lambda!458504))))

(assert (=> d!2285385 (forall!18108 (exprs!8760 ct1!282) lambda!458504)))

(assert (=> d!2285385 (= (lemmaConcatPreservesForall!1993 (exprs!8760 ct1!282) (exprs!8760 ct2!378) lambda!458504) lt!2616829)))

(declare-fun bs!1921523 () Bool)

(assert (= bs!1921523 d!2285385))

(assert (=> bs!1921523 m!8030226))

(assert (=> bs!1921523 m!8030226))

(declare-fun m!8030352 () Bool)

(assert (=> bs!1921523 m!8030352))

(declare-fun m!8030354 () Bool)

(assert (=> bs!1921523 m!8030354))

(declare-fun m!8030356 () Bool)

(assert (=> bs!1921523 m!8030356))

(assert (=> b!7379609 d!2285385))

(declare-fun b!7379815 () Bool)

(declare-fun e!4417537 () Bool)

(declare-fun tp!2098930 () Bool)

(declare-fun tp!2098931 () Bool)

(assert (=> b!7379815 (= e!4417537 (and tp!2098930 tp!2098931))))

(assert (=> b!7379617 (= tp!2098895 e!4417537)))

(assert (= (and b!7379617 (is-Cons!71692 (exprs!8760 ct1!282))) b!7379815))

(declare-fun b!7379827 () Bool)

(declare-fun e!4417540 () Bool)

(declare-fun tp!2098942 () Bool)

(declare-fun tp!2098944 () Bool)

(assert (=> b!7379827 (= e!4417540 (and tp!2098942 tp!2098944))))

(declare-fun b!7379826 () Bool)

(assert (=> b!7379826 (= e!4417540 tp_is_empty!48885)))

(assert (=> b!7379604 (= tp!2098899 e!4417540)))

(declare-fun b!7379829 () Bool)

(declare-fun tp!2098946 () Bool)

(declare-fun tp!2098945 () Bool)

(assert (=> b!7379829 (= e!4417540 (and tp!2098946 tp!2098945))))

(declare-fun b!7379828 () Bool)

(declare-fun tp!2098943 () Bool)

(assert (=> b!7379828 (= e!4417540 tp!2098943)))

(assert (= (and b!7379604 (is-ElementMatch!19320 (reg!19649 r1!2370))) b!7379826))

(assert (= (and b!7379604 (is-Concat!28165 (reg!19649 r1!2370))) b!7379827))

(assert (= (and b!7379604 (is-Star!19320 (reg!19649 r1!2370))) b!7379828))

(assert (= (and b!7379604 (is-Union!19320 (reg!19649 r1!2370))) b!7379829))

(declare-fun b!7379831 () Bool)

(declare-fun e!4417541 () Bool)

(declare-fun tp!2098947 () Bool)

(declare-fun tp!2098949 () Bool)

(assert (=> b!7379831 (= e!4417541 (and tp!2098947 tp!2098949))))

(declare-fun b!7379830 () Bool)

(assert (=> b!7379830 (= e!4417541 tp_is_empty!48885)))

(assert (=> b!7379610 (= tp!2098897 e!4417541)))

(declare-fun b!7379833 () Bool)

(declare-fun tp!2098951 () Bool)

(declare-fun tp!2098950 () Bool)

(assert (=> b!7379833 (= e!4417541 (and tp!2098951 tp!2098950))))

(declare-fun b!7379832 () Bool)

(declare-fun tp!2098948 () Bool)

(assert (=> b!7379832 (= e!4417541 tp!2098948)))

(assert (= (and b!7379610 (is-ElementMatch!19320 (regOne!39152 r1!2370))) b!7379830))

(assert (= (and b!7379610 (is-Concat!28165 (regOne!39152 r1!2370))) b!7379831))

(assert (= (and b!7379610 (is-Star!19320 (regOne!39152 r1!2370))) b!7379832))

(assert (= (and b!7379610 (is-Union!19320 (regOne!39152 r1!2370))) b!7379833))

(declare-fun b!7379835 () Bool)

(declare-fun e!4417542 () Bool)

(declare-fun tp!2098952 () Bool)

(declare-fun tp!2098954 () Bool)

(assert (=> b!7379835 (= e!4417542 (and tp!2098952 tp!2098954))))

(declare-fun b!7379834 () Bool)

(assert (=> b!7379834 (= e!4417542 tp_is_empty!48885)))

(assert (=> b!7379610 (= tp!2098898 e!4417542)))

(declare-fun b!7379837 () Bool)

(declare-fun tp!2098956 () Bool)

(declare-fun tp!2098955 () Bool)

(assert (=> b!7379837 (= e!4417542 (and tp!2098956 tp!2098955))))

(declare-fun b!7379836 () Bool)

(declare-fun tp!2098953 () Bool)

(assert (=> b!7379836 (= e!4417542 tp!2098953)))

(assert (= (and b!7379610 (is-ElementMatch!19320 (regTwo!39152 r1!2370))) b!7379834))

(assert (= (and b!7379610 (is-Concat!28165 (regTwo!39152 r1!2370))) b!7379835))

(assert (= (and b!7379610 (is-Star!19320 (regTwo!39152 r1!2370))) b!7379836))

(assert (= (and b!7379610 (is-Union!19320 (regTwo!39152 r1!2370))) b!7379837))

(declare-fun b!7379838 () Bool)

(declare-fun e!4417543 () Bool)

(declare-fun tp!2098957 () Bool)

(declare-fun tp!2098958 () Bool)

(assert (=> b!7379838 (= e!4417543 (and tp!2098957 tp!2098958))))

(assert (=> b!7379615 (= tp!2098901 e!4417543)))

(assert (= (and b!7379615 (is-Cons!71692 (exprs!8760 ct2!378))) b!7379838))

(declare-fun b!7379839 () Bool)

(declare-fun e!4417544 () Bool)

(declare-fun tp!2098959 () Bool)

(declare-fun tp!2098960 () Bool)

(assert (=> b!7379839 (= e!4417544 (and tp!2098959 tp!2098960))))

(assert (=> b!7379616 (= tp!2098894 e!4417544)))

(assert (= (and b!7379616 (is-Cons!71692 (exprs!8760 cWitness!61))) b!7379839))

(declare-fun b!7379841 () Bool)

(declare-fun e!4417545 () Bool)

(declare-fun tp!2098961 () Bool)

(declare-fun tp!2098963 () Bool)

(assert (=> b!7379841 (= e!4417545 (and tp!2098961 tp!2098963))))

(declare-fun b!7379840 () Bool)

(assert (=> b!7379840 (= e!4417545 tp_is_empty!48885)))

(assert (=> b!7379605 (= tp!2098900 e!4417545)))

(declare-fun b!7379843 () Bool)

(declare-fun tp!2098965 () Bool)

(declare-fun tp!2098964 () Bool)

(assert (=> b!7379843 (= e!4417545 (and tp!2098965 tp!2098964))))

(declare-fun b!7379842 () Bool)

(declare-fun tp!2098962 () Bool)

(assert (=> b!7379842 (= e!4417545 tp!2098962)))

(assert (= (and b!7379605 (is-ElementMatch!19320 (regOne!39153 r1!2370))) b!7379840))

(assert (= (and b!7379605 (is-Concat!28165 (regOne!39153 r1!2370))) b!7379841))

(assert (= (and b!7379605 (is-Star!19320 (regOne!39153 r1!2370))) b!7379842))

(assert (= (and b!7379605 (is-Union!19320 (regOne!39153 r1!2370))) b!7379843))

(declare-fun b!7379845 () Bool)

(declare-fun e!4417546 () Bool)

(declare-fun tp!2098966 () Bool)

(declare-fun tp!2098968 () Bool)

(assert (=> b!7379845 (= e!4417546 (and tp!2098966 tp!2098968))))

(declare-fun b!7379844 () Bool)

(assert (=> b!7379844 (= e!4417546 tp_is_empty!48885)))

(assert (=> b!7379605 (= tp!2098896 e!4417546)))

(declare-fun b!7379847 () Bool)

(declare-fun tp!2098970 () Bool)

(declare-fun tp!2098969 () Bool)

(assert (=> b!7379847 (= e!4417546 (and tp!2098970 tp!2098969))))

(declare-fun b!7379846 () Bool)

(declare-fun tp!2098967 () Bool)

(assert (=> b!7379846 (= e!4417546 tp!2098967)))

(assert (= (and b!7379605 (is-ElementMatch!19320 (regTwo!39153 r1!2370))) b!7379844))

(assert (= (and b!7379605 (is-Concat!28165 (regTwo!39153 r1!2370))) b!7379845))

(assert (= (and b!7379605 (is-Star!19320 (regTwo!39153 r1!2370))) b!7379846))

(assert (= (and b!7379605 (is-Union!19320 (regTwo!39153 r1!2370))) b!7379847))

(push 1)

(assert (not bm!678803))

(assert (not b!7379827))

(assert (not bm!678808))

(assert (not b!7379835))

(assert (not d!2285355))

(assert (not bm!678795))

(assert (not bm!678805))

(assert (not b!7379838))

(assert (not b!7379808))

(assert (not bm!678773))

(assert (not bm!678794))

(assert (not b!7379754))

(assert (not bm!678779))

(assert (not b!7379709))

(assert (not b!7379837))

(assert (not b!7379846))

(assert (not b!7379843))

(assert (not bm!678791))

(assert (not d!2285363))

(assert (not b!7379831))

(assert (not b!7379839))

(assert (not b!7379809))

(assert (not b!7379845))

(assert (not d!2285385))

(assert (not bm!678781))

(assert (not b!7379842))

(assert (not b!7379828))

(assert (not bm!678776))

(assert (not b!7379720))

(assert tp_is_empty!48885)

(assert (not d!2285369))

(assert (not d!2285371))

(assert (not b!7379778))

(assert (not b!7379847))

(assert (not bm!678784))

(assert (not bm!678771))

(assert (not b!7379833))

(assert (not bm!678792))

(assert (not b!7379841))

(assert (not b!7379815))

(assert (not b!7379829))

(assert (not b!7379832))

(assert (not d!2285377))

(assert (not b!7379763))

(assert (not d!2285373))

(assert (not b!7379836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2285403 () Bool)

(assert (=> d!2285403 (= (nullable!8394 (regOne!39152 (reg!19649 r1!2370))) (nullableFct!3365 (regOne!39152 (reg!19649 r1!2370))))))

(declare-fun bs!1921538 () Bool)

(assert (= bs!1921538 d!2285403))

(declare-fun m!8030406 () Bool)

(assert (=> bs!1921538 m!8030406))

(assert (=> b!7379720 d!2285403))

(declare-fun e!4417600 () (Set Context!16520))

(declare-fun b!7379944 () Bool)

(assert (=> b!7379944 (= e!4417600 (set.insert (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777)) (as set.empty (Set Context!16520))))))

(declare-fun d!2285405 () Bool)

(declare-fun c!1371698 () Bool)

(assert (=> d!2285405 (= c!1371698 (and (is-ElementMatch!19320 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (= (c!1371624 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) c!10362)))))

(assert (=> d!2285405 (= (derivationStepZipperDown!3146 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))) (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777)) c!10362) e!4417600)))

(declare-fun e!4417599 () Bool)

(declare-fun b!7379945 () Bool)

(assert (=> b!7379945 (= e!4417599 (nullable!8394 (regOne!39152 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))))

(declare-fun b!7379946 () Bool)

(declare-fun e!4417603 () (Set Context!16520))

(declare-fun call!678838 () (Set Context!16520))

(declare-fun call!678843 () (Set Context!16520))

(assert (=> b!7379946 (= e!4417603 (set.union call!678838 call!678843))))

(declare-fun b!7379947 () Bool)

(declare-fun e!4417602 () (Set Context!16520))

(assert (=> b!7379947 (= e!4417602 (as set.empty (Set Context!16520)))))

(declare-fun b!7379948 () Bool)

(declare-fun e!4417601 () (Set Context!16520))

(declare-fun call!678841 () (Set Context!16520))

(assert (=> b!7379948 (= e!4417601 (set.union call!678838 call!678841))))

(declare-fun bm!678833 () Bool)

(declare-fun call!678840 () List!71816)

(declare-fun c!1371701 () Bool)

(declare-fun c!1371702 () Bool)

(assert (=> bm!678833 (= call!678840 ($colon$colon!3298 (exprs!8760 (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777))) (ite (or c!1371701 c!1371702) (regTwo!39152 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))))

(declare-fun bm!678834 () Bool)

(assert (=> bm!678834 (= call!678841 call!678843)))

(declare-fun b!7379949 () Bool)

(assert (=> b!7379949 (= c!1371701 e!4417599)))

(declare-fun res!2976735 () Bool)

(assert (=> b!7379949 (=> (not res!2976735) (not e!4417599))))

(assert (=> b!7379949 (= res!2976735 (is-Concat!28165 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(assert (=> b!7379949 (= e!4417603 e!4417601)))

(declare-fun call!678839 () List!71816)

(declare-fun bm!678835 () Bool)

(declare-fun c!1371700 () Bool)

(assert (=> bm!678835 (= call!678843 (derivationStepZipperDown!3146 (ite c!1371700 (regTwo!39153 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371701 (regTwo!39152 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371702 (regOne!39152 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (reg!19649 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))) (ite (or c!1371700 c!1371701) (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777)) (Context!16521 call!678839)) c!10362))))

(declare-fun b!7379950 () Bool)

(declare-fun e!4417604 () (Set Context!16520))

(declare-fun call!678842 () (Set Context!16520))

(assert (=> b!7379950 (= e!4417604 call!678842)))

(declare-fun b!7379951 () Bool)

(declare-fun c!1371699 () Bool)

(assert (=> b!7379951 (= c!1371699 (is-Star!19320 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(assert (=> b!7379951 (= e!4417604 e!4417602)))

(declare-fun bm!678836 () Bool)

(assert (=> bm!678836 (= call!678839 call!678840)))

(declare-fun b!7379952 () Bool)

(assert (=> b!7379952 (= e!4417602 call!678842)))

(declare-fun b!7379953 () Bool)

(assert (=> b!7379953 (= e!4417600 e!4417603)))

(assert (=> b!7379953 (= c!1371700 (is-Union!19320 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(declare-fun b!7379954 () Bool)

(assert (=> b!7379954 (= e!4417601 e!4417604)))

(assert (=> b!7379954 (= c!1371702 (is-Concat!28165 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(declare-fun bm!678837 () Bool)

(assert (=> bm!678837 (= call!678842 call!678841)))

(declare-fun bm!678838 () Bool)

(assert (=> bm!678838 (= call!678838 (derivationStepZipperDown!3146 (ite c!1371700 (regOne!39153 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (regOne!39152 (ite c!1371648 (regTwo!39153 r1!2370) (ite c!1371649 (regTwo!39152 r1!2370) (ite c!1371650 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))) (ite c!1371700 (ite (or c!1371648 c!1371649) ct1!282 (Context!16521 call!678777)) (Context!16521 call!678840)) c!10362))))

(assert (= (and d!2285405 c!1371698) b!7379944))

(assert (= (and d!2285405 (not c!1371698)) b!7379953))

(assert (= (and b!7379953 c!1371700) b!7379946))

(assert (= (and b!7379953 (not c!1371700)) b!7379949))

(assert (= (and b!7379949 res!2976735) b!7379945))

(assert (= (and b!7379949 c!1371701) b!7379948))

(assert (= (and b!7379949 (not c!1371701)) b!7379954))

(assert (= (and b!7379954 c!1371702) b!7379950))

(assert (= (and b!7379954 (not c!1371702)) b!7379951))

(assert (= (and b!7379951 c!1371699) b!7379952))

(assert (= (and b!7379951 (not c!1371699)) b!7379947))

(assert (= (or b!7379950 b!7379952) bm!678836))

(assert (= (or b!7379950 b!7379952) bm!678837))

(assert (= (or b!7379948 bm!678837) bm!678834))

(assert (= (or b!7379948 bm!678836) bm!678833))

(assert (= (or b!7379946 bm!678834) bm!678835))

(assert (= (or b!7379946 b!7379948) bm!678838))

(declare-fun m!8030408 () Bool)

(assert (=> bm!678833 m!8030408))

(declare-fun m!8030410 () Bool)

(assert (=> bm!678835 m!8030410))

(declare-fun m!8030412 () Bool)

(assert (=> b!7379945 m!8030412))

(declare-fun m!8030414 () Bool)

(assert (=> bm!678838 m!8030414))

(declare-fun m!8030416 () Bool)

(assert (=> b!7379944 m!8030416))

(assert (=> bm!678773 d!2285405))

(declare-fun d!2285407 () Bool)

(assert (=> d!2285407 (= (nullable!8394 (reg!19649 lt!2616805)) (nullableFct!3365 (reg!19649 lt!2616805)))))

(declare-fun bs!1921539 () Bool)

(assert (= bs!1921539 d!2285407))

(declare-fun m!8030418 () Bool)

(assert (=> bs!1921539 m!8030418))

(assert (=> b!7379754 d!2285407))

(assert (=> b!7379778 d!2285363))

(declare-fun d!2285409 () Bool)

(assert (=> d!2285409 (= ($colon$colon!3298 (exprs!8760 lt!2616804) (ite (or c!1371654 c!1371655) (regTwo!39152 (reg!19649 r1!2370)) (reg!19649 r1!2370))) (Cons!71692 (ite (or c!1371654 c!1371655) (regTwo!39152 (reg!19649 r1!2370)) (reg!19649 r1!2370)) (exprs!8760 lt!2616804)))))

(assert (=> bm!678779 d!2285409))

(declare-fun d!2285411 () Bool)

(declare-fun res!2976740 () Bool)

(declare-fun e!4417609 () Bool)

(assert (=> d!2285411 (=> res!2976740 e!4417609)))

(assert (=> d!2285411 (= res!2976740 (is-Nil!71692 (exprs!8760 cWitness!61)))))

(assert (=> d!2285411 (= (forall!18108 (exprs!8760 cWitness!61) lambda!458514) e!4417609)))

(declare-fun b!7379959 () Bool)

(declare-fun e!4417610 () Bool)

(assert (=> b!7379959 (= e!4417609 e!4417610)))

(declare-fun res!2976741 () Bool)

(assert (=> b!7379959 (=> (not res!2976741) (not e!4417610))))

(declare-fun dynLambda!29534 (Int Regex!19320) Bool)

(assert (=> b!7379959 (= res!2976741 (dynLambda!29534 lambda!458514 (h!78140 (exprs!8760 cWitness!61))))))

(declare-fun b!7379960 () Bool)

(assert (=> b!7379960 (= e!4417610 (forall!18108 (t!386303 (exprs!8760 cWitness!61)) lambda!458514))))

(assert (= (and d!2285411 (not res!2976740)) b!7379959))

(assert (= (and b!7379959 res!2976741) b!7379960))

(declare-fun b_lambda!284699 () Bool)

(assert (=> (not b_lambda!284699) (not b!7379959)))

(declare-fun m!8030420 () Bool)

(assert (=> b!7379959 m!8030420))

(declare-fun m!8030422 () Bool)

(assert (=> b!7379960 m!8030422))

(assert (=> d!2285369 d!2285411))

(declare-fun d!2285413 () Bool)

(declare-fun res!2976742 () Bool)

(declare-fun e!4417611 () Bool)

(assert (=> d!2285413 (=> res!2976742 e!4417611)))

(assert (=> d!2285413 (= res!2976742 (is-Nil!71692 (exprs!8760 ct1!282)))))

(assert (=> d!2285413 (= (forall!18108 (exprs!8760 ct1!282) lambda!458515) e!4417611)))

(declare-fun b!7379961 () Bool)

(declare-fun e!4417612 () Bool)

(assert (=> b!7379961 (= e!4417611 e!4417612)))

(declare-fun res!2976743 () Bool)

(assert (=> b!7379961 (=> (not res!2976743) (not e!4417612))))

(assert (=> b!7379961 (= res!2976743 (dynLambda!29534 lambda!458515 (h!78140 (exprs!8760 ct1!282))))))

(declare-fun b!7379962 () Bool)

(assert (=> b!7379962 (= e!4417612 (forall!18108 (t!386303 (exprs!8760 ct1!282)) lambda!458515))))

(assert (= (and d!2285413 (not res!2976742)) b!7379961))

(assert (= (and b!7379961 res!2976743) b!7379962))

(declare-fun b_lambda!284701 () Bool)

(assert (=> (not b_lambda!284701) (not b!7379961)))

(declare-fun m!8030424 () Bool)

(assert (=> b!7379961 m!8030424))

(declare-fun m!8030426 () Bool)

(assert (=> b!7379962 m!8030426))

(assert (=> d!2285371 d!2285413))

(declare-fun d!2285415 () Bool)

(declare-fun c!1371705 () Bool)

(assert (=> d!2285415 (= c!1371705 (is-Nil!71692 lt!2616826))))

(declare-fun e!4417615 () (Set Regex!19320))

(assert (=> d!2285415 (= (content!15181 lt!2616826) e!4417615)))

(declare-fun b!7379967 () Bool)

(assert (=> b!7379967 (= e!4417615 (as set.empty (Set Regex!19320)))))

(declare-fun b!7379968 () Bool)

(assert (=> b!7379968 (= e!4417615 (set.union (set.insert (h!78140 lt!2616826) (as set.empty (Set Regex!19320))) (content!15181 (t!386303 lt!2616826))))))

(assert (= (and d!2285415 c!1371705) b!7379967))

(assert (= (and d!2285415 (not c!1371705)) b!7379968))

(declare-fun m!8030428 () Bool)

(assert (=> b!7379968 m!8030428))

(declare-fun m!8030430 () Bool)

(assert (=> b!7379968 m!8030430))

(assert (=> d!2285377 d!2285415))

(declare-fun d!2285417 () Bool)

(declare-fun c!1371706 () Bool)

(assert (=> d!2285417 (= c!1371706 (is-Nil!71692 (exprs!8760 ct1!282)))))

(declare-fun e!4417616 () (Set Regex!19320))

(assert (=> d!2285417 (= (content!15181 (exprs!8760 ct1!282)) e!4417616)))

(declare-fun b!7379969 () Bool)

(assert (=> b!7379969 (= e!4417616 (as set.empty (Set Regex!19320)))))

(declare-fun b!7379970 () Bool)

(assert (=> b!7379970 (= e!4417616 (set.union (set.insert (h!78140 (exprs!8760 ct1!282)) (as set.empty (Set Regex!19320))) (content!15181 (t!386303 (exprs!8760 ct1!282)))))))

(assert (= (and d!2285417 c!1371706) b!7379969))

(assert (= (and d!2285417 (not c!1371706)) b!7379970))

(declare-fun m!8030432 () Bool)

(assert (=> b!7379970 m!8030432))

(declare-fun m!8030434 () Bool)

(assert (=> b!7379970 m!8030434))

(assert (=> d!2285377 d!2285417))

(declare-fun d!2285419 () Bool)

(declare-fun c!1371707 () Bool)

(assert (=> d!2285419 (= c!1371707 (is-Nil!71692 (exprs!8760 ct2!378)))))

(declare-fun e!4417617 () (Set Regex!19320))

(assert (=> d!2285419 (= (content!15181 (exprs!8760 ct2!378)) e!4417617)))

(declare-fun b!7379971 () Bool)

(assert (=> b!7379971 (= e!4417617 (as set.empty (Set Regex!19320)))))

(declare-fun b!7379972 () Bool)

(assert (=> b!7379972 (= e!4417617 (set.union (set.insert (h!78140 (exprs!8760 ct2!378)) (as set.empty (Set Regex!19320))) (content!15181 (t!386303 (exprs!8760 ct2!378)))))))

(assert (= (and d!2285419 c!1371707) b!7379971))

(assert (= (and d!2285419 (not c!1371707)) b!7379972))

(declare-fun m!8030436 () Bool)

(assert (=> b!7379972 m!8030436))

(declare-fun m!8030438 () Bool)

(assert (=> b!7379972 m!8030438))

(assert (=> d!2285377 d!2285419))

(declare-fun d!2285421 () Bool)

(declare-fun res!2976744 () Bool)

(declare-fun e!4417618 () Bool)

(assert (=> d!2285421 (=> res!2976744 e!4417618)))

(assert (=> d!2285421 (= res!2976744 (is-Nil!71692 (exprs!8760 lt!2616804)))))

(assert (=> d!2285421 (= (forall!18108 (exprs!8760 lt!2616804) lambda!458513) e!4417618)))

(declare-fun b!7379973 () Bool)

(declare-fun e!4417619 () Bool)

(assert (=> b!7379973 (= e!4417618 e!4417619)))

(declare-fun res!2976745 () Bool)

(assert (=> b!7379973 (=> (not res!2976745) (not e!4417619))))

(assert (=> b!7379973 (= res!2976745 (dynLambda!29534 lambda!458513 (h!78140 (exprs!8760 lt!2616804))))))

(declare-fun b!7379974 () Bool)

(assert (=> b!7379974 (= e!4417619 (forall!18108 (t!386303 (exprs!8760 lt!2616804)) lambda!458513))))

(assert (= (and d!2285421 (not res!2976744)) b!7379973))

(assert (= (and b!7379973 res!2976745) b!7379974))

(declare-fun b_lambda!284703 () Bool)

(assert (=> (not b_lambda!284703) (not b!7379973)))

(declare-fun m!8030440 () Bool)

(assert (=> b!7379973 m!8030440))

(declare-fun m!8030442 () Bool)

(assert (=> b!7379974 m!8030442))

(assert (=> d!2285355 d!2285421))

(declare-fun d!2285423 () Bool)

(assert (=> d!2285423 (= ($colon$colon!3298 (exprs!8760 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)))) (ite (or c!1371672 c!1371673) (regTwo!39152 r1!2370) r1!2370)) (Cons!71692 (ite (or c!1371672 c!1371673) (regTwo!39152 r1!2370) r1!2370) (exprs!8760 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))))))))

(assert (=> bm!678803 d!2285423))

(declare-fun b!7379975 () Bool)

(declare-fun e!4417621 () (Set Context!16520))

(assert (=> b!7379975 (= e!4417621 (set.insert (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785)) (as set.empty (Set Context!16520))))))

(declare-fun c!1371708 () Bool)

(declare-fun d!2285425 () Bool)

(assert (=> d!2285425 (= c!1371708 (and (is-ElementMatch!19320 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (= (c!1371624 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) c!10362)))))

(assert (=> d!2285425 (= (derivationStepZipperDown!3146 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))) (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785)) c!10362) e!4417621)))

(declare-fun e!4417620 () Bool)

(declare-fun b!7379976 () Bool)

(assert (=> b!7379976 (= e!4417620 (nullable!8394 (regOne!39152 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))))))))

(declare-fun b!7379977 () Bool)

(declare-fun e!4417624 () (Set Context!16520))

(declare-fun call!678844 () (Set Context!16520))

(declare-fun call!678849 () (Set Context!16520))

(assert (=> b!7379977 (= e!4417624 (set.union call!678844 call!678849))))

(declare-fun b!7379978 () Bool)

(declare-fun e!4417623 () (Set Context!16520))

(assert (=> b!7379978 (= e!4417623 (as set.empty (Set Context!16520)))))

(declare-fun b!7379979 () Bool)

(declare-fun e!4417622 () (Set Context!16520))

(declare-fun call!678847 () (Set Context!16520))

(assert (=> b!7379979 (= e!4417622 (set.union call!678844 call!678847))))

(declare-fun call!678846 () List!71816)

(declare-fun c!1371711 () Bool)

(declare-fun bm!678839 () Bool)

(declare-fun c!1371712 () Bool)

(assert (=> bm!678839 (= call!678846 ($colon$colon!3298 (exprs!8760 (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785))) (ite (or c!1371711 c!1371712) (regTwo!39152 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))))))))

(declare-fun bm!678840 () Bool)

(assert (=> bm!678840 (= call!678847 call!678849)))

(declare-fun b!7379980 () Bool)

(assert (=> b!7379980 (= c!1371711 e!4417620)))

(declare-fun res!2976746 () Bool)

(assert (=> b!7379980 (=> (not res!2976746) (not e!4417620))))

(assert (=> b!7379980 (= res!2976746 (is-Concat!28165 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))))))

(assert (=> b!7379980 (= e!4417624 e!4417622)))

(declare-fun call!678845 () List!71816)

(declare-fun bm!678841 () Bool)

(declare-fun c!1371710 () Bool)

(assert (=> bm!678841 (= call!678849 (derivationStepZipperDown!3146 (ite c!1371710 (regTwo!39153 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (ite c!1371711 (regTwo!39152 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (ite c!1371712 (regOne!39152 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (reg!19649 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))))))) (ite (or c!1371710 c!1371711) (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785)) (Context!16521 call!678845)) c!10362))))

(declare-fun b!7379981 () Bool)

(declare-fun e!4417625 () (Set Context!16520))

(declare-fun call!678848 () (Set Context!16520))

(assert (=> b!7379981 (= e!4417625 call!678848)))

(declare-fun b!7379982 () Bool)

(declare-fun c!1371709 () Bool)

(assert (=> b!7379982 (= c!1371709 (is-Star!19320 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))))))

(assert (=> b!7379982 (= e!4417625 e!4417623)))

(declare-fun bm!678842 () Bool)

(assert (=> bm!678842 (= call!678845 call!678846)))

(declare-fun b!7379983 () Bool)

(assert (=> b!7379983 (= e!4417623 call!678848)))

(declare-fun b!7379984 () Bool)

(assert (=> b!7379984 (= e!4417621 e!4417624)))

(assert (=> b!7379984 (= c!1371710 (is-Union!19320 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))))))

(declare-fun b!7379985 () Bool)

(assert (=> b!7379985 (= e!4417622 e!4417625)))

(assert (=> b!7379985 (= c!1371712 (is-Concat!28165 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))))))

(declare-fun bm!678843 () Bool)

(assert (=> bm!678843 (= call!678848 call!678847)))

(declare-fun bm!678844 () Bool)

(assert (=> bm!678844 (= call!678844 (derivationStepZipperDown!3146 (ite c!1371710 (regOne!39153 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370)))))) (regOne!39152 (ite c!1371653 (regTwo!39153 (reg!19649 r1!2370)) (ite c!1371654 (regTwo!39152 (reg!19649 r1!2370)) (ite c!1371655 (regOne!39152 (reg!19649 r1!2370)) (reg!19649 (reg!19649 r1!2370))))))) (ite c!1371710 (ite (or c!1371653 c!1371654) lt!2616804 (Context!16521 call!678785)) (Context!16521 call!678846)) c!10362))))

(assert (= (and d!2285425 c!1371708) b!7379975))

(assert (= (and d!2285425 (not c!1371708)) b!7379984))

(assert (= (and b!7379984 c!1371710) b!7379977))

(assert (= (and b!7379984 (not c!1371710)) b!7379980))

(assert (= (and b!7379980 res!2976746) b!7379976))

(assert (= (and b!7379980 c!1371711) b!7379979))

(assert (= (and b!7379980 (not c!1371711)) b!7379985))

(assert (= (and b!7379985 c!1371712) b!7379981))

(assert (= (and b!7379985 (not c!1371712)) b!7379982))

(assert (= (and b!7379982 c!1371709) b!7379983))

(assert (= (and b!7379982 (not c!1371709)) b!7379978))

(assert (= (or b!7379981 b!7379983) bm!678842))

(assert (= (or b!7379981 b!7379983) bm!678843))

(assert (= (or b!7379979 bm!678843) bm!678840))

(assert (= (or b!7379979 bm!678842) bm!678839))

(assert (= (or b!7379977 bm!678840) bm!678841))

(assert (= (or b!7379977 b!7379979) bm!678844))

(declare-fun m!8030444 () Bool)

(assert (=> bm!678839 m!8030444))

(declare-fun m!8030446 () Bool)

(assert (=> bm!678841 m!8030446))

(declare-fun m!8030448 () Bool)

(assert (=> b!7379976 m!8030448))

(declare-fun m!8030450 () Bool)

(assert (=> bm!678844 m!8030450))

(declare-fun m!8030452 () Bool)

(assert (=> b!7379975 m!8030452))

(assert (=> bm!678781 d!2285425))

(declare-fun bm!678845 () Bool)

(declare-fun call!678852 () Bool)

(declare-fun c!1371713 () Bool)

(assert (=> bm!678845 (= call!678852 (validRegex!9916 (ite c!1371713 (regTwo!39153 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))) (regOne!39152 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))))

(declare-fun call!678851 () Bool)

(declare-fun bm!678846 () Bool)

(declare-fun c!1371714 () Bool)

(assert (=> bm!678846 (= call!678851 (validRegex!9916 (ite c!1371714 (reg!19649 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371713 (regOne!39153 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))) (regTwo!39152 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370)))))))))

(declare-fun bm!678847 () Bool)

(declare-fun call!678850 () Bool)

(assert (=> bm!678847 (= call!678850 call!678851)))

(declare-fun b!7379986 () Bool)

(declare-fun e!4417631 () Bool)

(declare-fun e!4417632 () Bool)

(assert (=> b!7379986 (= e!4417631 e!4417632)))

(assert (=> b!7379986 (= c!1371714 (is-Star!19320 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun b!7379987 () Bool)

(declare-fun e!4417628 () Bool)

(declare-fun e!4417626 () Bool)

(assert (=> b!7379987 (= e!4417628 e!4417626)))

(declare-fun res!2976750 () Bool)

(assert (=> b!7379987 (=> (not res!2976750) (not e!4417626))))

(assert (=> b!7379987 (= res!2976750 call!678852)))

(declare-fun b!7379988 () Bool)

(declare-fun e!4417629 () Bool)

(assert (=> b!7379988 (= e!4417629 call!678852)))

(declare-fun d!2285427 () Bool)

(declare-fun res!2976751 () Bool)

(assert (=> d!2285427 (=> res!2976751 e!4417631)))

(assert (=> d!2285427 (= res!2976751 (is-ElementMatch!19320 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))

(assert (=> d!2285427 (= (validRegex!9916 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))) e!4417631)))

(declare-fun b!7379989 () Bool)

(declare-fun e!4417627 () Bool)

(assert (=> b!7379989 (= e!4417632 e!4417627)))

(assert (=> b!7379989 (= c!1371713 (is-Union!19320 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun b!7379990 () Bool)

(assert (=> b!7379990 (= e!4417626 call!678850)))

(declare-fun b!7379991 () Bool)

(declare-fun res!2976748 () Bool)

(assert (=> b!7379991 (=> res!2976748 e!4417628)))

(assert (=> b!7379991 (= res!2976748 (not (is-Concat!28165 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370)))))))

(assert (=> b!7379991 (= e!4417627 e!4417628)))

(declare-fun b!7379992 () Bool)

(declare-fun e!4417630 () Bool)

(assert (=> b!7379992 (= e!4417632 e!4417630)))

(declare-fun res!2976747 () Bool)

(assert (=> b!7379992 (= res!2976747 (not (nullable!8394 (reg!19649 (ite c!1371662 (regTwo!39153 r1!2370) (regOne!39152 r1!2370))))))))

(assert (=> b!7379992 (=> (not res!2976747) (not e!4417630))))

(declare-fun b!7379993 () Bool)

(assert (=> b!7379993 (= e!4417630 call!678851)))

(declare-fun b!7379994 () Bool)

(declare-fun res!2976749 () Bool)

(assert (=> b!7379994 (=> (not res!2976749) (not e!4417629))))

(assert (=> b!7379994 (= res!2976749 call!678850)))

(assert (=> b!7379994 (= e!4417627 e!4417629)))

(assert (= (and d!2285427 (not res!2976751)) b!7379986))

(assert (= (and b!7379986 c!1371714) b!7379992))

(assert (= (and b!7379986 (not c!1371714)) b!7379989))

(assert (= (and b!7379992 res!2976747) b!7379993))

(assert (= (and b!7379989 c!1371713) b!7379994))

(assert (= (and b!7379989 (not c!1371713)) b!7379991))

(assert (= (and b!7379994 res!2976749) b!7379988))

(assert (= (and b!7379991 (not res!2976748)) b!7379987))

(assert (= (and b!7379987 res!2976750) b!7379990))

(assert (= (or b!7379994 b!7379990) bm!678847))

(assert (= (or b!7379988 b!7379987) bm!678845))

(assert (= (or b!7379993 bm!678847) bm!678846))

(declare-fun m!8030454 () Bool)

(assert (=> bm!678845 m!8030454))

(declare-fun m!8030456 () Bool)

(assert (=> bm!678846 m!8030456))

(declare-fun m!8030458 () Bool)

(assert (=> b!7379992 m!8030458))

(assert (=> bm!678794 d!2285427))

(declare-fun bm!678848 () Bool)

(declare-fun call!678855 () Bool)

(declare-fun c!1371715 () Bool)

(assert (=> bm!678848 (= call!678855 (validRegex!9916 (ite c!1371715 (regTwo!39153 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))) (regOne!39152 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))))

(declare-fun c!1371716 () Bool)

(declare-fun bm!678849 () Bool)

(declare-fun call!678854 () Bool)

(assert (=> bm!678849 (= call!678854 (validRegex!9916 (ite c!1371716 (reg!19649 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))) (ite c!1371715 (regOne!39153 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))) (regTwo!39152 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370))))))))))

(declare-fun bm!678850 () Bool)

(declare-fun call!678853 () Bool)

(assert (=> bm!678850 (= call!678853 call!678854)))

(declare-fun b!7379995 () Bool)

(declare-fun e!4417638 () Bool)

(declare-fun e!4417639 () Bool)

(assert (=> b!7379995 (= e!4417638 e!4417639)))

(assert (=> b!7379995 (= c!1371716 (is-Star!19320 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))

(declare-fun b!7379996 () Bool)

(declare-fun e!4417635 () Bool)

(declare-fun e!4417633 () Bool)

(assert (=> b!7379996 (= e!4417635 e!4417633)))

(declare-fun res!2976755 () Bool)

(assert (=> b!7379996 (=> (not res!2976755) (not e!4417633))))

(assert (=> b!7379996 (= res!2976755 call!678855)))

(declare-fun b!7379997 () Bool)

(declare-fun e!4417636 () Bool)

(assert (=> b!7379997 (= e!4417636 call!678855)))

(declare-fun d!2285429 () Bool)

(declare-fun res!2976756 () Bool)

(assert (=> d!2285429 (=> res!2976756 e!4417638)))

(assert (=> d!2285429 (= res!2976756 (is-ElementMatch!19320 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))

(assert (=> d!2285429 (= (validRegex!9916 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))) e!4417638)))

(declare-fun b!7379998 () Bool)

(declare-fun e!4417634 () Bool)

(assert (=> b!7379998 (= e!4417639 e!4417634)))

(assert (=> b!7379998 (= c!1371715 (is-Union!19320 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))

(declare-fun b!7379999 () Bool)

(assert (=> b!7379999 (= e!4417633 call!678853)))

(declare-fun b!7380000 () Bool)

(declare-fun res!2976753 () Bool)

(assert (=> b!7380000 (=> res!2976753 e!4417635)))

(assert (=> b!7380000 (= res!2976753 (not (is-Concat!28165 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370))))))))

(assert (=> b!7380000 (= e!4417634 e!4417635)))

(declare-fun b!7380001 () Bool)

(declare-fun e!4417637 () Bool)

(assert (=> b!7380001 (= e!4417639 e!4417637)))

(declare-fun res!2976752 () Bool)

(assert (=> b!7380001 (= res!2976752 (not (nullable!8394 (reg!19649 (ite c!1371663 (reg!19649 r1!2370) (ite c!1371662 (regOne!39153 r1!2370) (regTwo!39152 r1!2370)))))))))

(assert (=> b!7380001 (=> (not res!2976752) (not e!4417637))))

(declare-fun b!7380002 () Bool)

(assert (=> b!7380002 (= e!4417637 call!678854)))

(declare-fun b!7380003 () Bool)

(declare-fun res!2976754 () Bool)

(assert (=> b!7380003 (=> (not res!2976754) (not e!4417636))))

(assert (=> b!7380003 (= res!2976754 call!678853)))

(assert (=> b!7380003 (= e!4417634 e!4417636)))

(assert (= (and d!2285429 (not res!2976756)) b!7379995))

(assert (= (and b!7379995 c!1371716) b!7380001))

(assert (= (and b!7379995 (not c!1371716)) b!7379998))

(assert (= (and b!7380001 res!2976752) b!7380002))

(assert (= (and b!7379998 c!1371715) b!7380003))

(assert (= (and b!7379998 (not c!1371715)) b!7380000))

(assert (= (and b!7380003 res!2976754) b!7379997))

(assert (= (and b!7380000 (not res!2976753)) b!7379996))

(assert (= (and b!7379996 res!2976755) b!7379999))

(assert (= (or b!7380003 b!7379999) bm!678850))

(assert (= (or b!7379997 b!7379996) bm!678848))

(assert (= (or b!7380002 bm!678850) bm!678849))

(declare-fun m!8030460 () Bool)

(assert (=> bm!678848 m!8030460))

(declare-fun m!8030462 () Bool)

(assert (=> bm!678849 m!8030462))

(declare-fun m!8030464 () Bool)

(assert (=> b!7380001 m!8030464))

(assert (=> bm!678795 d!2285429))

(declare-fun e!4417641 () (Set Context!16520))

(declare-fun b!7380004 () Bool)

(assert (=> b!7380004 (= e!4417641 (set.insert (ite c!1371648 ct1!282 (Context!16521 call!678778)) (as set.empty (Set Context!16520))))))

(declare-fun d!2285431 () Bool)

(declare-fun c!1371717 () Bool)

(assert (=> d!2285431 (= c!1371717 (and (is-ElementMatch!19320 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (= (c!1371624 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) c!10362)))))

(assert (=> d!2285431 (= (derivationStepZipperDown!3146 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)) (ite c!1371648 ct1!282 (Context!16521 call!678778)) c!10362) e!4417641)))

(declare-fun b!7380005 () Bool)

(declare-fun e!4417640 () Bool)

(assert (=> b!7380005 (= e!4417640 (nullable!8394 (regOne!39152 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))))

(declare-fun b!7380006 () Bool)

(declare-fun e!4417644 () (Set Context!16520))

(declare-fun call!678856 () (Set Context!16520))

(declare-fun call!678861 () (Set Context!16520))

(assert (=> b!7380006 (= e!4417644 (set.union call!678856 call!678861))))

(declare-fun b!7380007 () Bool)

(declare-fun e!4417643 () (Set Context!16520))

(assert (=> b!7380007 (= e!4417643 (as set.empty (Set Context!16520)))))

(declare-fun b!7380008 () Bool)

(declare-fun e!4417642 () (Set Context!16520))

(declare-fun call!678859 () (Set Context!16520))

(assert (=> b!7380008 (= e!4417642 (set.union call!678856 call!678859))))

(declare-fun c!1371720 () Bool)

(declare-fun call!678858 () List!71816)

(declare-fun bm!678851 () Bool)

(declare-fun c!1371721 () Bool)

(assert (=> bm!678851 (= call!678858 ($colon$colon!3298 (exprs!8760 (ite c!1371648 ct1!282 (Context!16521 call!678778))) (ite (or c!1371720 c!1371721) (regTwo!39152 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))))

(declare-fun bm!678852 () Bool)

(assert (=> bm!678852 (= call!678859 call!678861)))

(declare-fun b!7380009 () Bool)

(assert (=> b!7380009 (= c!1371720 e!4417640)))

(declare-fun res!2976757 () Bool)

(assert (=> b!7380009 (=> (not res!2976757) (not e!4417640))))

(assert (=> b!7380009 (= res!2976757 (is-Concat!28165 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(assert (=> b!7380009 (= e!4417644 e!4417642)))

(declare-fun c!1371719 () Bool)

(declare-fun call!678857 () List!71816)

(declare-fun bm!678853 () Bool)

(assert (=> bm!678853 (= call!678861 (derivationStepZipperDown!3146 (ite c!1371719 (regTwo!39153 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371720 (regTwo!39152 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371721 (regOne!39152 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (reg!19649 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))) (ite (or c!1371719 c!1371720) (ite c!1371648 ct1!282 (Context!16521 call!678778)) (Context!16521 call!678857)) c!10362))))

(declare-fun b!7380010 () Bool)

(declare-fun e!4417645 () (Set Context!16520))

(declare-fun call!678860 () (Set Context!16520))

(assert (=> b!7380010 (= e!4417645 call!678860)))

(declare-fun b!7380011 () Bool)

(declare-fun c!1371718 () Bool)

(assert (=> b!7380011 (= c!1371718 (is-Star!19320 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(assert (=> b!7380011 (= e!4417645 e!4417643)))

(declare-fun bm!678854 () Bool)

(assert (=> bm!678854 (= call!678857 call!678858)))

(declare-fun b!7380012 () Bool)

(assert (=> b!7380012 (= e!4417643 call!678860)))

(declare-fun b!7380013 () Bool)

(assert (=> b!7380013 (= e!4417641 e!4417644)))

(assert (=> b!7380013 (= c!1371719 (is-Union!19320 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun b!7380014 () Bool)

(assert (=> b!7380014 (= e!4417642 e!4417645)))

(assert (=> b!7380014 (= c!1371721 (is-Concat!28165 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun bm!678855 () Bool)

(assert (=> bm!678855 (= call!678860 call!678859)))

(declare-fun bm!678856 () Bool)

(assert (=> bm!678856 (= call!678856 (derivationStepZipperDown!3146 (ite c!1371719 (regOne!39153 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (regOne!39152 (ite c!1371648 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))) (ite c!1371719 (ite c!1371648 ct1!282 (Context!16521 call!678778)) (Context!16521 call!678858)) c!10362))))

(assert (= (and d!2285431 c!1371717) b!7380004))

(assert (= (and d!2285431 (not c!1371717)) b!7380013))

(assert (= (and b!7380013 c!1371719) b!7380006))

(assert (= (and b!7380013 (not c!1371719)) b!7380009))

(assert (= (and b!7380009 res!2976757) b!7380005))

(assert (= (and b!7380009 c!1371720) b!7380008))

(assert (= (and b!7380009 (not c!1371720)) b!7380014))

(assert (= (and b!7380014 c!1371721) b!7380010))

(assert (= (and b!7380014 (not c!1371721)) b!7380011))

(assert (= (and b!7380011 c!1371718) b!7380012))

(assert (= (and b!7380011 (not c!1371718)) b!7380007))

(assert (= (or b!7380010 b!7380012) bm!678854))

(assert (= (or b!7380010 b!7380012) bm!678855))

(assert (= (or b!7380008 bm!678855) bm!678852))

(assert (= (or b!7380008 bm!678854) bm!678851))

(assert (= (or b!7380006 bm!678852) bm!678853))

(assert (= (or b!7380006 b!7380008) bm!678856))

(declare-fun m!8030466 () Bool)

(assert (=> bm!678851 m!8030466))

(declare-fun m!8030468 () Bool)

(assert (=> bm!678853 m!8030468))

(declare-fun m!8030470 () Bool)

(assert (=> b!7380005 m!8030470))

(declare-fun m!8030472 () Bool)

(assert (=> bm!678856 m!8030472))

(declare-fun m!8030474 () Bool)

(assert (=> b!7380004 m!8030474))

(assert (=> bm!678776 d!2285431))

(declare-fun e!4417647 () (Set Context!16520))

(declare-fun b!7380015 () Bool)

(assert (=> b!7380015 (= e!4417647 (set.insert (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809)) (as set.empty (Set Context!16520))))))

(declare-fun d!2285433 () Bool)

(declare-fun c!1371722 () Bool)

(assert (=> d!2285433 (= c!1371722 (and (is-ElementMatch!19320 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (= (c!1371624 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) c!10362)))))

(assert (=> d!2285433 (= (derivationStepZipperDown!3146 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))) (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809)) c!10362) e!4417647)))

(declare-fun e!4417646 () Bool)

(declare-fun b!7380016 () Bool)

(assert (=> b!7380016 (= e!4417646 (nullable!8394 (regOne!39152 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))))

(declare-fun b!7380017 () Bool)

(declare-fun e!4417650 () (Set Context!16520))

(declare-fun call!678862 () (Set Context!16520))

(declare-fun call!678867 () (Set Context!16520))

(assert (=> b!7380017 (= e!4417650 (set.union call!678862 call!678867))))

(declare-fun b!7380018 () Bool)

(declare-fun e!4417649 () (Set Context!16520))

(assert (=> b!7380018 (= e!4417649 (as set.empty (Set Context!16520)))))

(declare-fun b!7380019 () Bool)

(declare-fun e!4417648 () (Set Context!16520))

(declare-fun call!678865 () (Set Context!16520))

(assert (=> b!7380019 (= e!4417648 (set.union call!678862 call!678865))))

(declare-fun call!678864 () List!71816)

(declare-fun c!1371725 () Bool)

(declare-fun c!1371726 () Bool)

(declare-fun bm!678857 () Bool)

(assert (=> bm!678857 (= call!678864 ($colon$colon!3298 (exprs!8760 (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809))) (ite (or c!1371725 c!1371726) (regTwo!39152 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))))

(declare-fun bm!678858 () Bool)

(assert (=> bm!678858 (= call!678865 call!678867)))

(declare-fun b!7380020 () Bool)

(assert (=> b!7380020 (= c!1371725 e!4417646)))

(declare-fun res!2976758 () Bool)

(assert (=> b!7380020 (=> (not res!2976758) (not e!4417646))))

(assert (=> b!7380020 (= res!2976758 (is-Concat!28165 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(assert (=> b!7380020 (= e!4417650 e!4417648)))

(declare-fun call!678863 () List!71816)

(declare-fun bm!678859 () Bool)

(declare-fun c!1371724 () Bool)

(assert (=> bm!678859 (= call!678867 (derivationStepZipperDown!3146 (ite c!1371724 (regTwo!39153 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371725 (regTwo!39152 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (ite c!1371726 (regOne!39152 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (reg!19649 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))))) (ite (or c!1371724 c!1371725) (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809)) (Context!16521 call!678863)) c!10362))))

(declare-fun b!7380021 () Bool)

(declare-fun e!4417651 () (Set Context!16520))

(declare-fun call!678866 () (Set Context!16520))

(assert (=> b!7380021 (= e!4417651 call!678866)))

(declare-fun c!1371723 () Bool)

(declare-fun b!7380022 () Bool)

(assert (=> b!7380022 (= c!1371723 (is-Star!19320 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(assert (=> b!7380022 (= e!4417651 e!4417649)))

(declare-fun bm!678860 () Bool)

(assert (=> bm!678860 (= call!678863 call!678864)))

(declare-fun b!7380023 () Bool)

(assert (=> b!7380023 (= e!4417649 call!678866)))

(declare-fun b!7380024 () Bool)

(assert (=> b!7380024 (= e!4417647 e!4417650)))

(assert (=> b!7380024 (= c!1371724 (is-Union!19320 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(declare-fun b!7380025 () Bool)

(assert (=> b!7380025 (= e!4417648 e!4417651)))

(assert (=> b!7380025 (= c!1371726 (is-Concat!28165 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))))))

(declare-fun bm!678861 () Bool)

(assert (=> bm!678861 (= call!678866 call!678865)))

(declare-fun bm!678862 () Bool)

(assert (=> bm!678862 (= call!678862 (derivationStepZipperDown!3146 (ite c!1371724 (regOne!39153 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370))))) (regOne!39152 (ite c!1371671 (regTwo!39153 r1!2370) (ite c!1371672 (regTwo!39152 r1!2370) (ite c!1371673 (regOne!39152 r1!2370) (reg!19649 r1!2370)))))) (ite c!1371724 (ite (or c!1371671 c!1371672) (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678809)) (Context!16521 call!678864)) c!10362))))

(assert (= (and d!2285433 c!1371722) b!7380015))

(assert (= (and d!2285433 (not c!1371722)) b!7380024))

(assert (= (and b!7380024 c!1371724) b!7380017))

(assert (= (and b!7380024 (not c!1371724)) b!7380020))

(assert (= (and b!7380020 res!2976758) b!7380016))

(assert (= (and b!7380020 c!1371725) b!7380019))

(assert (= (and b!7380020 (not c!1371725)) b!7380025))

(assert (= (and b!7380025 c!1371726) b!7380021))

(assert (= (and b!7380025 (not c!1371726)) b!7380022))

(assert (= (and b!7380022 c!1371723) b!7380023))

(assert (= (and b!7380022 (not c!1371723)) b!7380018))

(assert (= (or b!7380021 b!7380023) bm!678860))

(assert (= (or b!7380021 b!7380023) bm!678861))

(assert (= (or b!7380019 bm!678861) bm!678858))

(assert (= (or b!7380019 bm!678860) bm!678857))

(assert (= (or b!7380017 bm!678858) bm!678859))

(assert (= (or b!7380017 b!7380019) bm!678862))

(declare-fun m!8030476 () Bool)

(assert (=> bm!678857 m!8030476))

(declare-fun m!8030478 () Bool)

(assert (=> bm!678859 m!8030478))

(declare-fun m!8030480 () Bool)

(assert (=> b!7380016 m!8030480))

(declare-fun m!8030482 () Bool)

(assert (=> bm!678862 m!8030482))

(declare-fun m!8030484 () Bool)

(assert (=> b!7380015 m!8030484))

(assert (=> bm!678805 d!2285433))

(declare-fun b!7380040 () Bool)

(declare-fun e!4417667 () Bool)

(declare-fun e!4417664 () Bool)

(assert (=> b!7380040 (= e!4417667 e!4417664)))

(declare-fun res!2976772 () Bool)

(assert (=> b!7380040 (=> res!2976772 e!4417664)))

(assert (=> b!7380040 (= res!2976772 (is-Star!19320 (regOne!39152 r1!2370)))))

(declare-fun b!7380041 () Bool)

(declare-fun e!4417668 () Bool)

(assert (=> b!7380041 (= e!4417664 e!4417668)))

(declare-fun c!1371729 () Bool)

(assert (=> b!7380041 (= c!1371729 (is-Union!19320 (regOne!39152 r1!2370)))))

(declare-fun b!7380042 () Bool)

(declare-fun e!4417669 () Bool)

(declare-fun call!678872 () Bool)

(assert (=> b!7380042 (= e!4417669 call!678872)))

(declare-fun b!7380043 () Bool)

(assert (=> b!7380043 (= e!4417668 e!4417669)))

(declare-fun res!2976773 () Bool)

(declare-fun call!678873 () Bool)

(assert (=> b!7380043 (= res!2976773 call!678873)))

(assert (=> b!7380043 (=> res!2976773 e!4417669)))

(declare-fun bm!678867 () Bool)

(assert (=> bm!678867 (= call!678873 (nullable!8394 (ite c!1371729 (regOne!39153 (regOne!39152 r1!2370)) (regTwo!39152 (regOne!39152 r1!2370)))))))

(declare-fun bm!678868 () Bool)

(assert (=> bm!678868 (= call!678872 (nullable!8394 (ite c!1371729 (regTwo!39153 (regOne!39152 r1!2370)) (regOne!39152 (regOne!39152 r1!2370)))))))

(declare-fun b!7380044 () Bool)

(declare-fun e!4417666 () Bool)

(assert (=> b!7380044 (= e!4417666 e!4417667)))

(declare-fun res!2976769 () Bool)

(assert (=> b!7380044 (=> (not res!2976769) (not e!4417667))))

(assert (=> b!7380044 (= res!2976769 (and (not (is-EmptyLang!19320 (regOne!39152 r1!2370))) (not (is-ElementMatch!19320 (regOne!39152 r1!2370)))))))

(declare-fun d!2285435 () Bool)

(declare-fun res!2976770 () Bool)

(assert (=> d!2285435 (=> res!2976770 e!4417666)))

(assert (=> d!2285435 (= res!2976770 (is-EmptyExpr!19320 (regOne!39152 r1!2370)))))

(assert (=> d!2285435 (= (nullableFct!3365 (regOne!39152 r1!2370)) e!4417666)))

(declare-fun b!7380045 () Bool)

(declare-fun e!4417665 () Bool)

(assert (=> b!7380045 (= e!4417665 call!678873)))

(declare-fun b!7380046 () Bool)

(assert (=> b!7380046 (= e!4417668 e!4417665)))

(declare-fun res!2976771 () Bool)

(assert (=> b!7380046 (= res!2976771 call!678872)))

(assert (=> b!7380046 (=> (not res!2976771) (not e!4417665))))

(assert (= (and d!2285435 (not res!2976770)) b!7380044))

(assert (= (and b!7380044 res!2976769) b!7380040))

(assert (= (and b!7380040 (not res!2976772)) b!7380041))

(assert (= (and b!7380041 c!1371729) b!7380043))

(assert (= (and b!7380041 (not c!1371729)) b!7380046))

(assert (= (and b!7380043 (not res!2976773)) b!7380042))

(assert (= (and b!7380046 res!2976771) b!7380045))

(assert (= (or b!7380042 b!7380046) bm!678868))

(assert (= (or b!7380043 b!7380045) bm!678867))

(declare-fun m!8030486 () Bool)

(assert (=> bm!678867 m!8030486))

(declare-fun m!8030488 () Bool)

(assert (=> bm!678868 m!8030488))

(assert (=> d!2285363 d!2285435))

(declare-fun d!2285437 () Bool)

(declare-fun res!2976774 () Bool)

(declare-fun e!4417670 () Bool)

(assert (=> d!2285437 (=> res!2976774 e!4417670)))

(assert (=> d!2285437 (= res!2976774 (is-Nil!71692 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))))))

(assert (=> d!2285437 (= (forall!18108 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)) lambda!458504) e!4417670)))

(declare-fun b!7380047 () Bool)

(declare-fun e!4417671 () Bool)

(assert (=> b!7380047 (= e!4417670 e!4417671)))

(declare-fun res!2976775 () Bool)

(assert (=> b!7380047 (=> (not res!2976775) (not e!4417671))))

(assert (=> b!7380047 (= res!2976775 (dynLambda!29534 lambda!458504 (h!78140 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)))))))

(declare-fun b!7380048 () Bool)

(assert (=> b!7380048 (= e!4417671 (forall!18108 (t!386303 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) lambda!458504))))

(assert (= (and d!2285437 (not res!2976774)) b!7380047))

(assert (= (and b!7380047 res!2976775) b!7380048))

(declare-fun b_lambda!284705 () Bool)

(assert (=> (not b_lambda!284705) (not b!7380047)))

(declare-fun m!8030490 () Bool)

(assert (=> b!7380047 m!8030490))

(declare-fun m!8030492 () Bool)

(assert (=> b!7380048 m!8030492))

(assert (=> d!2285385 d!2285437))

(assert (=> d!2285385 d!2285377))

(declare-fun d!2285439 () Bool)

(assert (=> d!2285439 (forall!18108 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)) lambda!458504)))

(assert (=> d!2285439 true))

(declare-fun _$78!974 () Unit!165589)

(assert (=> d!2285439 (= (choose!57341 (exprs!8760 ct1!282) (exprs!8760 ct2!378) lambda!458504) _$78!974)))

(declare-fun bs!1921540 () Bool)

(assert (= bs!1921540 d!2285439))

(assert (=> bs!1921540 m!8030226))

(assert (=> bs!1921540 m!8030226))

(assert (=> bs!1921540 m!8030352))

(assert (=> d!2285385 d!2285439))

(declare-fun d!2285441 () Bool)

(declare-fun res!2976776 () Bool)

(declare-fun e!4417672 () Bool)

(assert (=> d!2285441 (=> res!2976776 e!4417672)))

(assert (=> d!2285441 (= res!2976776 (is-Nil!71692 (exprs!8760 ct1!282)))))

(assert (=> d!2285441 (= (forall!18108 (exprs!8760 ct1!282) lambda!458504) e!4417672)))

(declare-fun b!7380049 () Bool)

(declare-fun e!4417673 () Bool)

(assert (=> b!7380049 (= e!4417672 e!4417673)))

(declare-fun res!2976777 () Bool)

(assert (=> b!7380049 (=> (not res!2976777) (not e!4417673))))

(assert (=> b!7380049 (= res!2976777 (dynLambda!29534 lambda!458504 (h!78140 (exprs!8760 ct1!282))))))

(declare-fun b!7380050 () Bool)

(assert (=> b!7380050 (= e!4417673 (forall!18108 (t!386303 (exprs!8760 ct1!282)) lambda!458504))))

(assert (= (and d!2285441 (not res!2976776)) b!7380049))

(assert (= (and b!7380049 res!2976777) b!7380050))

(declare-fun b_lambda!284707 () Bool)

(assert (=> (not b_lambda!284707) (not b!7380049)))

(declare-fun m!8030494 () Bool)

(assert (=> b!7380049 m!8030494))

(declare-fun m!8030496 () Bool)

(assert (=> b!7380050 m!8030496))

(assert (=> d!2285385 d!2285441))

(declare-fun c!1371730 () Bool)

(declare-fun call!678876 () Bool)

(declare-fun bm!678869 () Bool)

(assert (=> bm!678869 (= call!678876 (validRegex!9916 (ite c!1371730 (regTwo!39153 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))) (regOne!39152 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))))

(declare-fun c!1371731 () Bool)

(declare-fun call!678875 () Bool)

(declare-fun bm!678870 () Bool)

(assert (=> bm!678870 (= call!678875 (validRegex!9916 (ite c!1371731 (reg!19649 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))) (ite c!1371730 (regOne!39153 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))) (regTwo!39152 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805)))))))))

(declare-fun bm!678871 () Bool)

(declare-fun call!678874 () Bool)

(assert (=> bm!678871 (= call!678874 call!678875)))

(declare-fun b!7380051 () Bool)

(declare-fun e!4417679 () Bool)

(declare-fun e!4417680 () Bool)

(assert (=> b!7380051 (= e!4417679 e!4417680)))

(assert (=> b!7380051 (= c!1371731 (is-Star!19320 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))

(declare-fun b!7380052 () Bool)

(declare-fun e!4417676 () Bool)

(declare-fun e!4417674 () Bool)

(assert (=> b!7380052 (= e!4417676 e!4417674)))

(declare-fun res!2976781 () Bool)

(assert (=> b!7380052 (=> (not res!2976781) (not e!4417674))))

(assert (=> b!7380052 (= res!2976781 call!678876)))

(declare-fun b!7380053 () Bool)

(declare-fun e!4417677 () Bool)

(assert (=> b!7380053 (= e!4417677 call!678876)))

(declare-fun d!2285443 () Bool)

(declare-fun res!2976782 () Bool)

(assert (=> d!2285443 (=> res!2976782 e!4417679)))

(assert (=> d!2285443 (= res!2976782 (is-ElementMatch!19320 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))

(assert (=> d!2285443 (= (validRegex!9916 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))) e!4417679)))

(declare-fun b!7380054 () Bool)

(declare-fun e!4417675 () Bool)

(assert (=> b!7380054 (= e!4417680 e!4417675)))

(assert (=> b!7380054 (= c!1371730 (is-Union!19320 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))

(declare-fun b!7380055 () Bool)

(assert (=> b!7380055 (= e!4417674 call!678874)))

(declare-fun b!7380056 () Bool)

(declare-fun res!2976779 () Bool)

(assert (=> b!7380056 (=> res!2976779 e!4417676)))

(assert (=> b!7380056 (= res!2976779 (not (is-Concat!28165 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805)))))))

(assert (=> b!7380056 (= e!4417675 e!4417676)))

(declare-fun b!7380057 () Bool)

(declare-fun e!4417678 () Bool)

(assert (=> b!7380057 (= e!4417680 e!4417678)))

(declare-fun res!2976778 () Bool)

(assert (=> b!7380057 (= res!2976778 (not (nullable!8394 (reg!19649 (ite c!1371660 (regTwo!39153 lt!2616805) (regOne!39152 lt!2616805))))))))

(assert (=> b!7380057 (=> (not res!2976778) (not e!4417678))))

(declare-fun b!7380058 () Bool)

(assert (=> b!7380058 (= e!4417678 call!678875)))

(declare-fun b!7380059 () Bool)

(declare-fun res!2976780 () Bool)

(assert (=> b!7380059 (=> (not res!2976780) (not e!4417677))))

(assert (=> b!7380059 (= res!2976780 call!678874)))

(assert (=> b!7380059 (= e!4417675 e!4417677)))

(assert (= (and d!2285443 (not res!2976782)) b!7380051))

(assert (= (and b!7380051 c!1371731) b!7380057))

(assert (= (and b!7380051 (not c!1371731)) b!7380054))

(assert (= (and b!7380057 res!2976778) b!7380058))

(assert (= (and b!7380054 c!1371730) b!7380059))

(assert (= (and b!7380054 (not c!1371730)) b!7380056))

(assert (= (and b!7380059 res!2976780) b!7380053))

(assert (= (and b!7380056 (not res!2976779)) b!7380052))

(assert (= (and b!7380052 res!2976781) b!7380055))

(assert (= (or b!7380059 b!7380055) bm!678871))

(assert (= (or b!7380053 b!7380052) bm!678869))

(assert (= (or b!7380058 bm!678871) bm!678870))

(declare-fun m!8030498 () Bool)

(assert (=> bm!678869 m!8030498))

(declare-fun m!8030500 () Bool)

(assert (=> bm!678870 m!8030500))

(declare-fun m!8030502 () Bool)

(assert (=> b!7380057 m!8030502))

(assert (=> bm!678791 d!2285443))

(declare-fun b!7380062 () Bool)

(declare-fun res!2976783 () Bool)

(declare-fun e!4417682 () Bool)

(assert (=> b!7380062 (=> (not res!2976783) (not e!4417682))))

(declare-fun lt!2616836 () List!71816)

(assert (=> b!7380062 (= res!2976783 (= (size!42159 lt!2616836) (+ (size!42159 (t!386303 (exprs!8760 ct1!282))) (size!42159 (exprs!8760 ct2!378)))))))

(declare-fun d!2285445 () Bool)

(assert (=> d!2285445 e!4417682))

(declare-fun res!2976784 () Bool)

(assert (=> d!2285445 (=> (not res!2976784) (not e!4417682))))

(assert (=> d!2285445 (= res!2976784 (= (content!15181 lt!2616836) (set.union (content!15181 (t!386303 (exprs!8760 ct1!282))) (content!15181 (exprs!8760 ct2!378)))))))

(declare-fun e!4417681 () List!71816)

(assert (=> d!2285445 (= lt!2616836 e!4417681)))

(declare-fun c!1371732 () Bool)

(assert (=> d!2285445 (= c!1371732 (is-Nil!71692 (t!386303 (exprs!8760 ct1!282))))))

(assert (=> d!2285445 (= (++!17136 (t!386303 (exprs!8760 ct1!282)) (exprs!8760 ct2!378)) lt!2616836)))

(declare-fun b!7380061 () Bool)

(assert (=> b!7380061 (= e!4417681 (Cons!71692 (h!78140 (t!386303 (exprs!8760 ct1!282))) (++!17136 (t!386303 (t!386303 (exprs!8760 ct1!282))) (exprs!8760 ct2!378))))))

(declare-fun b!7380060 () Bool)

(assert (=> b!7380060 (= e!4417681 (exprs!8760 ct2!378))))

(declare-fun b!7380063 () Bool)

(assert (=> b!7380063 (= e!4417682 (or (not (= (exprs!8760 ct2!378) Nil!71692)) (= lt!2616836 (t!386303 (exprs!8760 ct1!282)))))))

(assert (= (and d!2285445 c!1371732) b!7380060))

(assert (= (and d!2285445 (not c!1371732)) b!7380061))

(assert (= (and d!2285445 res!2976784) b!7380062))

(assert (= (and b!7380062 res!2976783) b!7380063))

(declare-fun m!8030504 () Bool)

(assert (=> b!7380062 m!8030504))

(declare-fun m!8030506 () Bool)

(assert (=> b!7380062 m!8030506))

(assert (=> b!7380062 m!8030342))

(declare-fun m!8030508 () Bool)

(assert (=> d!2285445 m!8030508))

(assert (=> d!2285445 m!8030434))

(assert (=> d!2285445 m!8030348))

(declare-fun m!8030510 () Bool)

(assert (=> b!7380061 m!8030510))

(assert (=> b!7379808 d!2285445))

(declare-fun bm!678872 () Bool)

(declare-fun c!1371733 () Bool)

(declare-fun call!678879 () Bool)

(assert (=> bm!678872 (= call!678879 (validRegex!9916 (ite c!1371733 (regTwo!39153 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))) (regOne!39152 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))))

(declare-fun c!1371734 () Bool)

(declare-fun bm!678873 () Bool)

(declare-fun call!678878 () Bool)

(assert (=> bm!678873 (= call!678878 (validRegex!9916 (ite c!1371734 (reg!19649 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))) (ite c!1371733 (regOne!39153 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))) (regTwo!39152 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805))))))))))

(declare-fun bm!678874 () Bool)

(declare-fun call!678877 () Bool)

(assert (=> bm!678874 (= call!678877 call!678878)))

(declare-fun b!7380064 () Bool)

(declare-fun e!4417688 () Bool)

(declare-fun e!4417689 () Bool)

(assert (=> b!7380064 (= e!4417688 e!4417689)))

(assert (=> b!7380064 (= c!1371734 (is-Star!19320 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))

(declare-fun b!7380065 () Bool)

(declare-fun e!4417685 () Bool)

(declare-fun e!4417683 () Bool)

(assert (=> b!7380065 (= e!4417685 e!4417683)))

(declare-fun res!2976788 () Bool)

(assert (=> b!7380065 (=> (not res!2976788) (not e!4417683))))

(assert (=> b!7380065 (= res!2976788 call!678879)))

(declare-fun b!7380066 () Bool)

(declare-fun e!4417686 () Bool)

(assert (=> b!7380066 (= e!4417686 call!678879)))

(declare-fun d!2285447 () Bool)

(declare-fun res!2976789 () Bool)

(assert (=> d!2285447 (=> res!2976789 e!4417688)))

(assert (=> d!2285447 (= res!2976789 (is-ElementMatch!19320 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))

(assert (=> d!2285447 (= (validRegex!9916 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))) e!4417688)))

(declare-fun b!7380067 () Bool)

(declare-fun e!4417684 () Bool)

(assert (=> b!7380067 (= e!4417689 e!4417684)))

(assert (=> b!7380067 (= c!1371733 (is-Union!19320 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))

(declare-fun b!7380068 () Bool)

(assert (=> b!7380068 (= e!4417683 call!678877)))

(declare-fun b!7380069 () Bool)

(declare-fun res!2976786 () Bool)

(assert (=> b!7380069 (=> res!2976786 e!4417685)))

(assert (=> b!7380069 (= res!2976786 (not (is-Concat!28165 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805))))))))

(assert (=> b!7380069 (= e!4417684 e!4417685)))

(declare-fun b!7380070 () Bool)

(declare-fun e!4417687 () Bool)

(assert (=> b!7380070 (= e!4417689 e!4417687)))

(declare-fun res!2976785 () Bool)

(assert (=> b!7380070 (= res!2976785 (not (nullable!8394 (reg!19649 (ite c!1371661 (reg!19649 lt!2616805) (ite c!1371660 (regOne!39153 lt!2616805) (regTwo!39152 lt!2616805)))))))))

(assert (=> b!7380070 (=> (not res!2976785) (not e!4417687))))

(declare-fun b!7380071 () Bool)

(assert (=> b!7380071 (= e!4417687 call!678878)))

(declare-fun b!7380072 () Bool)

(declare-fun res!2976787 () Bool)

(assert (=> b!7380072 (=> (not res!2976787) (not e!4417686))))

(assert (=> b!7380072 (= res!2976787 call!678877)))

(assert (=> b!7380072 (= e!4417684 e!4417686)))

(assert (= (and d!2285447 (not res!2976789)) b!7380064))

(assert (= (and b!7380064 c!1371734) b!7380070))

(assert (= (and b!7380064 (not c!1371734)) b!7380067))

(assert (= (and b!7380070 res!2976785) b!7380071))

(assert (= (and b!7380067 c!1371733) b!7380072))

(assert (= (and b!7380067 (not c!1371733)) b!7380069))

(assert (= (and b!7380072 res!2976787) b!7380066))

(assert (= (and b!7380069 (not res!2976786)) b!7380065))

(assert (= (and b!7380065 res!2976788) b!7380068))

(assert (= (or b!7380072 b!7380068) bm!678874))

(assert (= (or b!7380066 b!7380065) bm!678872))

(assert (= (or b!7380071 bm!678874) bm!678873))

(declare-fun m!8030512 () Bool)

(assert (=> bm!678872 m!8030512))

(declare-fun m!8030514 () Bool)

(assert (=> bm!678873 m!8030514))

(declare-fun m!8030516 () Bool)

(assert (=> b!7380070 m!8030516))

(assert (=> bm!678792 d!2285447))

(declare-fun d!2285449 () Bool)

(declare-fun lt!2616839 () Int)

(assert (=> d!2285449 (>= lt!2616839 0)))

(declare-fun e!4417692 () Int)

(assert (=> d!2285449 (= lt!2616839 e!4417692)))

(declare-fun c!1371737 () Bool)

(assert (=> d!2285449 (= c!1371737 (is-Nil!71692 lt!2616826))))

(assert (=> d!2285449 (= (size!42159 lt!2616826) lt!2616839)))

(declare-fun b!7380077 () Bool)

(assert (=> b!7380077 (= e!4417692 0)))

(declare-fun b!7380078 () Bool)

(assert (=> b!7380078 (= e!4417692 (+ 1 (size!42159 (t!386303 lt!2616826))))))

(assert (= (and d!2285449 c!1371737) b!7380077))

(assert (= (and d!2285449 (not c!1371737)) b!7380078))

(declare-fun m!8030518 () Bool)

(assert (=> b!7380078 m!8030518))

(assert (=> b!7379809 d!2285449))

(declare-fun d!2285451 () Bool)

(declare-fun lt!2616840 () Int)

(assert (=> d!2285451 (>= lt!2616840 0)))

(declare-fun e!4417693 () Int)

(assert (=> d!2285451 (= lt!2616840 e!4417693)))

(declare-fun c!1371738 () Bool)

(assert (=> d!2285451 (= c!1371738 (is-Nil!71692 (exprs!8760 ct1!282)))))

(assert (=> d!2285451 (= (size!42159 (exprs!8760 ct1!282)) lt!2616840)))

(declare-fun b!7380079 () Bool)

(assert (=> b!7380079 (= e!4417693 0)))

(declare-fun b!7380080 () Bool)

(assert (=> b!7380080 (= e!4417693 (+ 1 (size!42159 (t!386303 (exprs!8760 ct1!282)))))))

(assert (= (and d!2285451 c!1371738) b!7380079))

(assert (= (and d!2285451 (not c!1371738)) b!7380080))

(assert (=> b!7380080 m!8030506))

(assert (=> b!7379809 d!2285451))

(declare-fun d!2285453 () Bool)

(declare-fun lt!2616841 () Int)

(assert (=> d!2285453 (>= lt!2616841 0)))

(declare-fun e!4417694 () Int)

(assert (=> d!2285453 (= lt!2616841 e!4417694)))

(declare-fun c!1371739 () Bool)

(assert (=> d!2285453 (= c!1371739 (is-Nil!71692 (exprs!8760 ct2!378)))))

(assert (=> d!2285453 (= (size!42159 (exprs!8760 ct2!378)) lt!2616841)))

(declare-fun b!7380081 () Bool)

(assert (=> b!7380081 (= e!4417694 0)))

(declare-fun b!7380082 () Bool)

(assert (=> b!7380082 (= e!4417694 (+ 1 (size!42159 (t!386303 (exprs!8760 ct2!378)))))))

(assert (= (and d!2285453 c!1371739) b!7380081))

(assert (= (and d!2285453 (not c!1371739)) b!7380082))

(declare-fun m!8030520 () Bool)

(assert (=> b!7380082 m!8030520))

(assert (=> b!7379809 d!2285453))

(declare-fun d!2285455 () Bool)

(declare-fun res!2976790 () Bool)

(declare-fun e!4417695 () Bool)

(assert (=> d!2285455 (=> res!2976790 e!4417695)))

(assert (=> d!2285455 (= res!2976790 (is-Nil!71692 (exprs!8760 ct2!378)))))

(assert (=> d!2285455 (= (forall!18108 (exprs!8760 ct2!378) lambda!458516) e!4417695)))

(declare-fun b!7380083 () Bool)

(declare-fun e!4417696 () Bool)

(assert (=> b!7380083 (= e!4417695 e!4417696)))

(declare-fun res!2976791 () Bool)

(assert (=> b!7380083 (=> (not res!2976791) (not e!4417696))))

(assert (=> b!7380083 (= res!2976791 (dynLambda!29534 lambda!458516 (h!78140 (exprs!8760 ct2!378))))))

(declare-fun b!7380084 () Bool)

(assert (=> b!7380084 (= e!4417696 (forall!18108 (t!386303 (exprs!8760 ct2!378)) lambda!458516))))

(assert (= (and d!2285455 (not res!2976790)) b!7380083))

(assert (= (and b!7380083 res!2976791) b!7380084))

(declare-fun b_lambda!284709 () Bool)

(assert (=> (not b_lambda!284709) (not b!7380083)))

(declare-fun m!8030522 () Bool)

(assert (=> b!7380083 m!8030522))

(declare-fun m!8030524 () Bool)

(assert (=> b!7380084 m!8030524))

(assert (=> d!2285373 d!2285455))

(assert (=> b!7379709 d!2285363))

(declare-fun b!7380085 () Bool)

(declare-fun e!4417698 () (Set Context!16520))

(assert (=> b!7380085 (= e!4417698 (set.insert (ite c!1371653 lt!2616804 (Context!16521 call!678786)) (as set.empty (Set Context!16520))))))

(declare-fun c!1371740 () Bool)

(declare-fun d!2285457 () Bool)

(assert (=> d!2285457 (= c!1371740 (and (is-ElementMatch!19320 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (= (c!1371624 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) c!10362)))))

(assert (=> d!2285457 (= (derivationStepZipperDown!3146 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))) (ite c!1371653 lt!2616804 (Context!16521 call!678786)) c!10362) e!4417698)))

(declare-fun b!7380086 () Bool)

(declare-fun e!4417697 () Bool)

(assert (=> b!7380086 (= e!4417697 (nullable!8394 (regOne!39152 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))))))))

(declare-fun b!7380087 () Bool)

(declare-fun e!4417701 () (Set Context!16520))

(declare-fun call!678880 () (Set Context!16520))

(declare-fun call!678885 () (Set Context!16520))

(assert (=> b!7380087 (= e!4417701 (set.union call!678880 call!678885))))

(declare-fun b!7380088 () Bool)

(declare-fun e!4417700 () (Set Context!16520))

(assert (=> b!7380088 (= e!4417700 (as set.empty (Set Context!16520)))))

(declare-fun b!7380089 () Bool)

(declare-fun e!4417699 () (Set Context!16520))

(declare-fun call!678883 () (Set Context!16520))

(assert (=> b!7380089 (= e!4417699 (set.union call!678880 call!678883))))

(declare-fun c!1371743 () Bool)

(declare-fun c!1371744 () Bool)

(declare-fun bm!678875 () Bool)

(declare-fun call!678882 () List!71816)

(assert (=> bm!678875 (= call!678882 ($colon$colon!3298 (exprs!8760 (ite c!1371653 lt!2616804 (Context!16521 call!678786))) (ite (or c!1371743 c!1371744) (regTwo!39152 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))))))))

(declare-fun bm!678876 () Bool)

(assert (=> bm!678876 (= call!678883 call!678885)))

(declare-fun b!7380090 () Bool)

(assert (=> b!7380090 (= c!1371743 e!4417697)))

(declare-fun res!2976792 () Bool)

(assert (=> b!7380090 (=> (not res!2976792) (not e!4417697))))

(assert (=> b!7380090 (= res!2976792 (is-Concat!28165 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))))))

(assert (=> b!7380090 (= e!4417701 e!4417699)))

(declare-fun c!1371742 () Bool)

(declare-fun call!678881 () List!71816)

(declare-fun bm!678877 () Bool)

(assert (=> bm!678877 (= call!678885 (derivationStepZipperDown!3146 (ite c!1371742 (regTwo!39153 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (ite c!1371743 (regTwo!39152 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (ite c!1371744 (regOne!39152 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (reg!19649 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))))))) (ite (or c!1371742 c!1371743) (ite c!1371653 lt!2616804 (Context!16521 call!678786)) (Context!16521 call!678881)) c!10362))))

(declare-fun b!7380091 () Bool)

(declare-fun e!4417702 () (Set Context!16520))

(declare-fun call!678884 () (Set Context!16520))

(assert (=> b!7380091 (= e!4417702 call!678884)))

(declare-fun b!7380092 () Bool)

(declare-fun c!1371741 () Bool)

(assert (=> b!7380092 (= c!1371741 (is-Star!19320 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))))))

(assert (=> b!7380092 (= e!4417702 e!4417700)))

(declare-fun bm!678878 () Bool)

(assert (=> bm!678878 (= call!678881 call!678882)))

(declare-fun b!7380093 () Bool)

(assert (=> b!7380093 (= e!4417700 call!678884)))

(declare-fun b!7380094 () Bool)

(assert (=> b!7380094 (= e!4417698 e!4417701)))

(assert (=> b!7380094 (= c!1371742 (is-Union!19320 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))))))

(declare-fun b!7380095 () Bool)

(assert (=> b!7380095 (= e!4417699 e!4417702)))

(assert (=> b!7380095 (= c!1371744 (is-Concat!28165 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))))))

(declare-fun bm!678879 () Bool)

(assert (=> bm!678879 (= call!678884 call!678883)))

(declare-fun bm!678880 () Bool)

(assert (=> bm!678880 (= call!678880 (derivationStepZipperDown!3146 (ite c!1371742 (regOne!39153 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370)))) (regOne!39152 (ite c!1371653 (regOne!39153 (reg!19649 r1!2370)) (regOne!39152 (reg!19649 r1!2370))))) (ite c!1371742 (ite c!1371653 lt!2616804 (Context!16521 call!678786)) (Context!16521 call!678882)) c!10362))))

(assert (= (and d!2285457 c!1371740) b!7380085))

(assert (= (and d!2285457 (not c!1371740)) b!7380094))

(assert (= (and b!7380094 c!1371742) b!7380087))

(assert (= (and b!7380094 (not c!1371742)) b!7380090))

(assert (= (and b!7380090 res!2976792) b!7380086))

(assert (= (and b!7380090 c!1371743) b!7380089))

(assert (= (and b!7380090 (not c!1371743)) b!7380095))

(assert (= (and b!7380095 c!1371744) b!7380091))

(assert (= (and b!7380095 (not c!1371744)) b!7380092))

(assert (= (and b!7380092 c!1371741) b!7380093))

(assert (= (and b!7380092 (not c!1371741)) b!7380088))

(assert (= (or b!7380091 b!7380093) bm!678878))

(assert (= (or b!7380091 b!7380093) bm!678879))

(assert (= (or b!7380089 bm!678879) bm!678876))

(assert (= (or b!7380089 bm!678878) bm!678875))

(assert (= (or b!7380087 bm!678876) bm!678877))

(assert (= (or b!7380087 b!7380089) bm!678880))

(declare-fun m!8030526 () Bool)

(assert (=> bm!678875 m!8030526))

(declare-fun m!8030528 () Bool)

(assert (=> bm!678877 m!8030528))

(declare-fun m!8030530 () Bool)

(assert (=> b!7380086 m!8030530))

(declare-fun m!8030532 () Bool)

(assert (=> bm!678880 m!8030532))

(declare-fun m!8030534 () Bool)

(assert (=> b!7380085 m!8030534))

(assert (=> bm!678784 d!2285457))

(declare-fun d!2285459 () Bool)

(assert (=> d!2285459 (= (nullable!8394 (reg!19649 r1!2370)) (nullableFct!3365 (reg!19649 r1!2370)))))

(declare-fun bs!1921541 () Bool)

(assert (= bs!1921541 d!2285459))

(declare-fun m!8030536 () Bool)

(assert (=> bs!1921541 m!8030536))

(assert (=> b!7379763 d!2285459))

(declare-fun b!7380096 () Bool)

(declare-fun e!4417704 () (Set Context!16520))

(assert (=> b!7380096 (= e!4417704 (set.insert (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810)) (as set.empty (Set Context!16520))))))

(declare-fun d!2285461 () Bool)

(declare-fun c!1371745 () Bool)

(assert (=> d!2285461 (= c!1371745 (and (is-ElementMatch!19320 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (= (c!1371624 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) c!10362)))))

(assert (=> d!2285461 (= (derivationStepZipperDown!3146 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)) (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810)) c!10362) e!4417704)))

(declare-fun b!7380097 () Bool)

(declare-fun e!4417703 () Bool)

(assert (=> b!7380097 (= e!4417703 (nullable!8394 (regOne!39152 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))))

(declare-fun b!7380098 () Bool)

(declare-fun e!4417707 () (Set Context!16520))

(declare-fun call!678886 () (Set Context!16520))

(declare-fun call!678891 () (Set Context!16520))

(assert (=> b!7380098 (= e!4417707 (set.union call!678886 call!678891))))

(declare-fun b!7380099 () Bool)

(declare-fun e!4417706 () (Set Context!16520))

(assert (=> b!7380099 (= e!4417706 (as set.empty (Set Context!16520)))))

(declare-fun b!7380100 () Bool)

(declare-fun e!4417705 () (Set Context!16520))

(declare-fun call!678889 () (Set Context!16520))

(assert (=> b!7380100 (= e!4417705 (set.union call!678886 call!678889))))

(declare-fun c!1371748 () Bool)

(declare-fun c!1371749 () Bool)

(declare-fun bm!678881 () Bool)

(declare-fun call!678888 () List!71816)

(assert (=> bm!678881 (= call!678888 ($colon$colon!3298 (exprs!8760 (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810))) (ite (or c!1371748 c!1371749) (regTwo!39152 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))))

(declare-fun bm!678882 () Bool)

(assert (=> bm!678882 (= call!678889 call!678891)))

(declare-fun b!7380101 () Bool)

(assert (=> b!7380101 (= c!1371748 e!4417703)))

(declare-fun res!2976793 () Bool)

(assert (=> b!7380101 (=> (not res!2976793) (not e!4417703))))

(assert (=> b!7380101 (= res!2976793 (is-Concat!28165 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(assert (=> b!7380101 (= e!4417707 e!4417705)))

(declare-fun call!678887 () List!71816)

(declare-fun bm!678883 () Bool)

(declare-fun c!1371747 () Bool)

(assert (=> bm!678883 (= call!678891 (derivationStepZipperDown!3146 (ite c!1371747 (regTwo!39153 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371748 (regTwo!39152 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (ite c!1371749 (regOne!39152 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (reg!19649 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))))) (ite (or c!1371747 c!1371748) (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810)) (Context!16521 call!678887)) c!10362))))

(declare-fun b!7380102 () Bool)

(declare-fun e!4417708 () (Set Context!16520))

(declare-fun call!678890 () (Set Context!16520))

(assert (=> b!7380102 (= e!4417708 call!678890)))

(declare-fun b!7380103 () Bool)

(declare-fun c!1371746 () Bool)

(assert (=> b!7380103 (= c!1371746 (is-Star!19320 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(assert (=> b!7380103 (= e!4417708 e!4417706)))

(declare-fun bm!678884 () Bool)

(assert (=> bm!678884 (= call!678887 call!678888)))

(declare-fun b!7380104 () Bool)

(assert (=> b!7380104 (= e!4417706 call!678890)))

(declare-fun b!7380105 () Bool)

(assert (=> b!7380105 (= e!4417704 e!4417707)))

(assert (=> b!7380105 (= c!1371747 (is-Union!19320 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun b!7380106 () Bool)

(assert (=> b!7380106 (= e!4417705 e!4417708)))

(assert (=> b!7380106 (= c!1371749 (is-Concat!28165 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))))))

(declare-fun bm!678885 () Bool)

(assert (=> bm!678885 (= call!678890 call!678889)))

(declare-fun bm!678886 () Bool)

(assert (=> bm!678886 (= call!678886 (derivationStepZipperDown!3146 (ite c!1371747 (regOne!39153 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370))) (regOne!39152 (ite c!1371671 (regOne!39153 r1!2370) (regOne!39152 r1!2370)))) (ite c!1371747 (ite c!1371671 (Context!16521 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378))) (Context!16521 call!678810)) (Context!16521 call!678888)) c!10362))))

(assert (= (and d!2285461 c!1371745) b!7380096))

(assert (= (and d!2285461 (not c!1371745)) b!7380105))

(assert (= (and b!7380105 c!1371747) b!7380098))

(assert (= (and b!7380105 (not c!1371747)) b!7380101))

(assert (= (and b!7380101 res!2976793) b!7380097))

(assert (= (and b!7380101 c!1371748) b!7380100))

(assert (= (and b!7380101 (not c!1371748)) b!7380106))

(assert (= (and b!7380106 c!1371749) b!7380102))

(assert (= (and b!7380106 (not c!1371749)) b!7380103))

(assert (= (and b!7380103 c!1371746) b!7380104))

(assert (= (and b!7380103 (not c!1371746)) b!7380099))

(assert (= (or b!7380102 b!7380104) bm!678884))

(assert (= (or b!7380102 b!7380104) bm!678885))

(assert (= (or b!7380100 bm!678885) bm!678882))

(assert (= (or b!7380100 bm!678884) bm!678881))

(assert (= (or b!7380098 bm!678882) bm!678883))

(assert (= (or b!7380098 b!7380100) bm!678886))

(declare-fun m!8030538 () Bool)

(assert (=> bm!678881 m!8030538))

(declare-fun m!8030540 () Bool)

(assert (=> bm!678883 m!8030540))

(declare-fun m!8030542 () Bool)

(assert (=> b!7380097 m!8030542))

(declare-fun m!8030544 () Bool)

(assert (=> bm!678886 m!8030544))

(declare-fun m!8030546 () Bool)

(assert (=> b!7380096 m!8030546))

(assert (=> bm!678808 d!2285461))

(declare-fun d!2285463 () Bool)

(assert (=> d!2285463 (= ($colon$colon!3298 (exprs!8760 ct1!282) (ite (or c!1371649 c!1371650) (regTwo!39152 r1!2370) r1!2370)) (Cons!71692 (ite (or c!1371649 c!1371650) (regTwo!39152 r1!2370) r1!2370) (exprs!8760 ct1!282)))))

(assert (=> bm!678771 d!2285463))

(declare-fun b!7380108 () Bool)

(declare-fun e!4417709 () Bool)

(declare-fun tp!2099016 () Bool)

(declare-fun tp!2099018 () Bool)

(assert (=> b!7380108 (= e!4417709 (and tp!2099016 tp!2099018))))

(declare-fun b!7380107 () Bool)

(assert (=> b!7380107 (= e!4417709 tp_is_empty!48885)))

(assert (=> b!7379845 (= tp!2098966 e!4417709)))

(declare-fun b!7380110 () Bool)

(declare-fun tp!2099020 () Bool)

(declare-fun tp!2099019 () Bool)

(assert (=> b!7380110 (= e!4417709 (and tp!2099020 tp!2099019))))

(declare-fun b!7380109 () Bool)

(declare-fun tp!2099017 () Bool)

(assert (=> b!7380109 (= e!4417709 tp!2099017)))

(assert (= (and b!7379845 (is-ElementMatch!19320 (regOne!39152 (regTwo!39153 r1!2370)))) b!7380107))

(assert (= (and b!7379845 (is-Concat!28165 (regOne!39152 (regTwo!39153 r1!2370)))) b!7380108))

(assert (= (and b!7379845 (is-Star!19320 (regOne!39152 (regTwo!39153 r1!2370)))) b!7380109))

(assert (= (and b!7379845 (is-Union!19320 (regOne!39152 (regTwo!39153 r1!2370)))) b!7380110))

(declare-fun b!7380112 () Bool)

(declare-fun e!4417710 () Bool)

(declare-fun tp!2099021 () Bool)

(declare-fun tp!2099023 () Bool)

(assert (=> b!7380112 (= e!4417710 (and tp!2099021 tp!2099023))))

(declare-fun b!7380111 () Bool)

(assert (=> b!7380111 (= e!4417710 tp_is_empty!48885)))

(assert (=> b!7379845 (= tp!2098968 e!4417710)))

(declare-fun b!7380114 () Bool)

(declare-fun tp!2099025 () Bool)

(declare-fun tp!2099024 () Bool)

(assert (=> b!7380114 (= e!4417710 (and tp!2099025 tp!2099024))))

(declare-fun b!7380113 () Bool)

(declare-fun tp!2099022 () Bool)

(assert (=> b!7380113 (= e!4417710 tp!2099022)))

(assert (= (and b!7379845 (is-ElementMatch!19320 (regTwo!39152 (regTwo!39153 r1!2370)))) b!7380111))

(assert (= (and b!7379845 (is-Concat!28165 (regTwo!39152 (regTwo!39153 r1!2370)))) b!7380112))

(assert (= (and b!7379845 (is-Star!19320 (regTwo!39152 (regTwo!39153 r1!2370)))) b!7380113))

(assert (= (and b!7379845 (is-Union!19320 (regTwo!39152 (regTwo!39153 r1!2370)))) b!7380114))

(declare-fun b!7380116 () Bool)

(declare-fun e!4417711 () Bool)

(declare-fun tp!2099026 () Bool)

(declare-fun tp!2099028 () Bool)

(assert (=> b!7380116 (= e!4417711 (and tp!2099026 tp!2099028))))

(declare-fun b!7380115 () Bool)

(assert (=> b!7380115 (= e!4417711 tp_is_empty!48885)))

(assert (=> b!7379841 (= tp!2098961 e!4417711)))

(declare-fun b!7380118 () Bool)

(declare-fun tp!2099030 () Bool)

(declare-fun tp!2099029 () Bool)

(assert (=> b!7380118 (= e!4417711 (and tp!2099030 tp!2099029))))

(declare-fun b!7380117 () Bool)

(declare-fun tp!2099027 () Bool)

(assert (=> b!7380117 (= e!4417711 tp!2099027)))

(assert (= (and b!7379841 (is-ElementMatch!19320 (regOne!39152 (regOne!39153 r1!2370)))) b!7380115))

(assert (= (and b!7379841 (is-Concat!28165 (regOne!39152 (regOne!39153 r1!2370)))) b!7380116))

(assert (= (and b!7379841 (is-Star!19320 (regOne!39152 (regOne!39153 r1!2370)))) b!7380117))

(assert (= (and b!7379841 (is-Union!19320 (regOne!39152 (regOne!39153 r1!2370)))) b!7380118))

(declare-fun b!7380120 () Bool)

(declare-fun e!4417712 () Bool)

(declare-fun tp!2099031 () Bool)

(declare-fun tp!2099033 () Bool)

(assert (=> b!7380120 (= e!4417712 (and tp!2099031 tp!2099033))))

(declare-fun b!7380119 () Bool)

(assert (=> b!7380119 (= e!4417712 tp_is_empty!48885)))

(assert (=> b!7379841 (= tp!2098963 e!4417712)))

(declare-fun b!7380122 () Bool)

(declare-fun tp!2099035 () Bool)

(declare-fun tp!2099034 () Bool)

(assert (=> b!7380122 (= e!4417712 (and tp!2099035 tp!2099034))))

(declare-fun b!7380121 () Bool)

(declare-fun tp!2099032 () Bool)

(assert (=> b!7380121 (= e!4417712 tp!2099032)))

(assert (= (and b!7379841 (is-ElementMatch!19320 (regTwo!39152 (regOne!39153 r1!2370)))) b!7380119))

(assert (= (and b!7379841 (is-Concat!28165 (regTwo!39152 (regOne!39153 r1!2370)))) b!7380120))

(assert (= (and b!7379841 (is-Star!19320 (regTwo!39152 (regOne!39153 r1!2370)))) b!7380121))

(assert (= (and b!7379841 (is-Union!19320 (regTwo!39152 (regOne!39153 r1!2370)))) b!7380122))

(declare-fun b!7380124 () Bool)

(declare-fun e!4417713 () Bool)

(declare-fun tp!2099036 () Bool)

(declare-fun tp!2099038 () Bool)

(assert (=> b!7380124 (= e!4417713 (and tp!2099036 tp!2099038))))

(declare-fun b!7380123 () Bool)

(assert (=> b!7380123 (= e!4417713 tp_is_empty!48885)))

(assert (=> b!7379846 (= tp!2098967 e!4417713)))

(declare-fun b!7380126 () Bool)

(declare-fun tp!2099040 () Bool)

(declare-fun tp!2099039 () Bool)

(assert (=> b!7380126 (= e!4417713 (and tp!2099040 tp!2099039))))

(declare-fun b!7380125 () Bool)

(declare-fun tp!2099037 () Bool)

(assert (=> b!7380125 (= e!4417713 tp!2099037)))

(assert (= (and b!7379846 (is-ElementMatch!19320 (reg!19649 (regTwo!39153 r1!2370)))) b!7380123))

(assert (= (and b!7379846 (is-Concat!28165 (reg!19649 (regTwo!39153 r1!2370)))) b!7380124))

(assert (= (and b!7379846 (is-Star!19320 (reg!19649 (regTwo!39153 r1!2370)))) b!7380125))

(assert (= (and b!7379846 (is-Union!19320 (reg!19649 (regTwo!39153 r1!2370)))) b!7380126))

(declare-fun b!7380128 () Bool)

(declare-fun e!4417714 () Bool)

(declare-fun tp!2099041 () Bool)

(declare-fun tp!2099043 () Bool)

(assert (=> b!7380128 (= e!4417714 (and tp!2099041 tp!2099043))))

(declare-fun b!7380127 () Bool)

(assert (=> b!7380127 (= e!4417714 tp_is_empty!48885)))

(assert (=> b!7379842 (= tp!2098962 e!4417714)))

(declare-fun b!7380130 () Bool)

(declare-fun tp!2099045 () Bool)

(declare-fun tp!2099044 () Bool)

(assert (=> b!7380130 (= e!4417714 (and tp!2099045 tp!2099044))))

(declare-fun b!7380129 () Bool)

(declare-fun tp!2099042 () Bool)

(assert (=> b!7380129 (= e!4417714 tp!2099042)))

(assert (= (and b!7379842 (is-ElementMatch!19320 (reg!19649 (regOne!39153 r1!2370)))) b!7380127))

(assert (= (and b!7379842 (is-Concat!28165 (reg!19649 (regOne!39153 r1!2370)))) b!7380128))

(assert (= (and b!7379842 (is-Star!19320 (reg!19649 (regOne!39153 r1!2370)))) b!7380129))

(assert (= (and b!7379842 (is-Union!19320 (reg!19649 (regOne!39153 r1!2370)))) b!7380130))

(declare-fun b!7380132 () Bool)

(declare-fun e!4417715 () Bool)

(declare-fun tp!2099046 () Bool)

(declare-fun tp!2099048 () Bool)

(assert (=> b!7380132 (= e!4417715 (and tp!2099046 tp!2099048))))

(declare-fun b!7380131 () Bool)

(assert (=> b!7380131 (= e!4417715 tp_is_empty!48885)))

(assert (=> b!7379847 (= tp!2098970 e!4417715)))

(declare-fun b!7380134 () Bool)

(declare-fun tp!2099050 () Bool)

(declare-fun tp!2099049 () Bool)

(assert (=> b!7380134 (= e!4417715 (and tp!2099050 tp!2099049))))

(declare-fun b!7380133 () Bool)

(declare-fun tp!2099047 () Bool)

(assert (=> b!7380133 (= e!4417715 tp!2099047)))

(assert (= (and b!7379847 (is-ElementMatch!19320 (regOne!39153 (regTwo!39153 r1!2370)))) b!7380131))

(assert (= (and b!7379847 (is-Concat!28165 (regOne!39153 (regTwo!39153 r1!2370)))) b!7380132))

(assert (= (and b!7379847 (is-Star!19320 (regOne!39153 (regTwo!39153 r1!2370)))) b!7380133))

(assert (= (and b!7379847 (is-Union!19320 (regOne!39153 (regTwo!39153 r1!2370)))) b!7380134))

(declare-fun b!7380136 () Bool)

(declare-fun e!4417716 () Bool)

(declare-fun tp!2099051 () Bool)

(declare-fun tp!2099053 () Bool)

(assert (=> b!7380136 (= e!4417716 (and tp!2099051 tp!2099053))))

(declare-fun b!7380135 () Bool)

(assert (=> b!7380135 (= e!4417716 tp_is_empty!48885)))

(assert (=> b!7379847 (= tp!2098969 e!4417716)))

(declare-fun b!7380138 () Bool)

(declare-fun tp!2099055 () Bool)

(declare-fun tp!2099054 () Bool)

(assert (=> b!7380138 (= e!4417716 (and tp!2099055 tp!2099054))))

(declare-fun b!7380137 () Bool)

(declare-fun tp!2099052 () Bool)

(assert (=> b!7380137 (= e!4417716 tp!2099052)))

(assert (= (and b!7379847 (is-ElementMatch!19320 (regTwo!39153 (regTwo!39153 r1!2370)))) b!7380135))

(assert (= (and b!7379847 (is-Concat!28165 (regTwo!39153 (regTwo!39153 r1!2370)))) b!7380136))

(assert (= (and b!7379847 (is-Star!19320 (regTwo!39153 (regTwo!39153 r1!2370)))) b!7380137))

(assert (= (and b!7379847 (is-Union!19320 (regTwo!39153 (regTwo!39153 r1!2370)))) b!7380138))

(declare-fun b!7380140 () Bool)

(declare-fun e!4417717 () Bool)

(declare-fun tp!2099056 () Bool)

(declare-fun tp!2099058 () Bool)

(assert (=> b!7380140 (= e!4417717 (and tp!2099056 tp!2099058))))

(declare-fun b!7380139 () Bool)

(assert (=> b!7380139 (= e!4417717 tp_is_empty!48885)))

(assert (=> b!7379843 (= tp!2098965 e!4417717)))

(declare-fun b!7380142 () Bool)

(declare-fun tp!2099060 () Bool)

(declare-fun tp!2099059 () Bool)

(assert (=> b!7380142 (= e!4417717 (and tp!2099060 tp!2099059))))

(declare-fun b!7380141 () Bool)

(declare-fun tp!2099057 () Bool)

(assert (=> b!7380141 (= e!4417717 tp!2099057)))

(assert (= (and b!7379843 (is-ElementMatch!19320 (regOne!39153 (regOne!39153 r1!2370)))) b!7380139))

(assert (= (and b!7379843 (is-Concat!28165 (regOne!39153 (regOne!39153 r1!2370)))) b!7380140))

(assert (= (and b!7379843 (is-Star!19320 (regOne!39153 (regOne!39153 r1!2370)))) b!7380141))

(assert (= (and b!7379843 (is-Union!19320 (regOne!39153 (regOne!39153 r1!2370)))) b!7380142))

(declare-fun b!7380144 () Bool)

(declare-fun e!4417718 () Bool)

(declare-fun tp!2099061 () Bool)

(declare-fun tp!2099063 () Bool)

(assert (=> b!7380144 (= e!4417718 (and tp!2099061 tp!2099063))))

(declare-fun b!7380143 () Bool)

(assert (=> b!7380143 (= e!4417718 tp_is_empty!48885)))

(assert (=> b!7379843 (= tp!2098964 e!4417718)))

(declare-fun b!7380146 () Bool)

(declare-fun tp!2099065 () Bool)

(declare-fun tp!2099064 () Bool)

(assert (=> b!7380146 (= e!4417718 (and tp!2099065 tp!2099064))))

(declare-fun b!7380145 () Bool)

(declare-fun tp!2099062 () Bool)

(assert (=> b!7380145 (= e!4417718 tp!2099062)))

(assert (= (and b!7379843 (is-ElementMatch!19320 (regTwo!39153 (regOne!39153 r1!2370)))) b!7380143))

(assert (= (and b!7379843 (is-Concat!28165 (regTwo!39153 (regOne!39153 r1!2370)))) b!7380144))

(assert (= (and b!7379843 (is-Star!19320 (regTwo!39153 (regOne!39153 r1!2370)))) b!7380145))

(assert (= (and b!7379843 (is-Union!19320 (regTwo!39153 (regOne!39153 r1!2370)))) b!7380146))

(declare-fun b!7380148 () Bool)

(declare-fun e!4417719 () Bool)

(declare-fun tp!2099066 () Bool)

(declare-fun tp!2099068 () Bool)

(assert (=> b!7380148 (= e!4417719 (and tp!2099066 tp!2099068))))

(declare-fun b!7380147 () Bool)

(assert (=> b!7380147 (= e!4417719 tp_is_empty!48885)))

(assert (=> b!7379815 (= tp!2098930 e!4417719)))

(declare-fun b!7380150 () Bool)

(declare-fun tp!2099070 () Bool)

(declare-fun tp!2099069 () Bool)

(assert (=> b!7380150 (= e!4417719 (and tp!2099070 tp!2099069))))

(declare-fun b!7380149 () Bool)

(declare-fun tp!2099067 () Bool)

(assert (=> b!7380149 (= e!4417719 tp!2099067)))

(assert (= (and b!7379815 (is-ElementMatch!19320 (h!78140 (exprs!8760 ct1!282)))) b!7380147))

(assert (= (and b!7379815 (is-Concat!28165 (h!78140 (exprs!8760 ct1!282)))) b!7380148))

(assert (= (and b!7379815 (is-Star!19320 (h!78140 (exprs!8760 ct1!282)))) b!7380149))

(assert (= (and b!7379815 (is-Union!19320 (h!78140 (exprs!8760 ct1!282)))) b!7380150))

(declare-fun b!7380151 () Bool)

(declare-fun e!4417720 () Bool)

(declare-fun tp!2099071 () Bool)

(declare-fun tp!2099072 () Bool)

(assert (=> b!7380151 (= e!4417720 (and tp!2099071 tp!2099072))))

(assert (=> b!7379815 (= tp!2098931 e!4417720)))

(assert (= (and b!7379815 (is-Cons!71692 (t!386303 (exprs!8760 ct1!282)))) b!7380151))

(declare-fun b!7380153 () Bool)

(declare-fun e!4417721 () Bool)

(declare-fun tp!2099073 () Bool)

(declare-fun tp!2099075 () Bool)

(assert (=> b!7380153 (= e!4417721 (and tp!2099073 tp!2099075))))

(declare-fun b!7380152 () Bool)

(assert (=> b!7380152 (= e!4417721 tp_is_empty!48885)))

(assert (=> b!7379839 (= tp!2098959 e!4417721)))

(declare-fun b!7380155 () Bool)

(declare-fun tp!2099077 () Bool)

(declare-fun tp!2099076 () Bool)

(assert (=> b!7380155 (= e!4417721 (and tp!2099077 tp!2099076))))

(declare-fun b!7380154 () Bool)

(declare-fun tp!2099074 () Bool)

(assert (=> b!7380154 (= e!4417721 tp!2099074)))

(assert (= (and b!7379839 (is-ElementMatch!19320 (h!78140 (exprs!8760 cWitness!61)))) b!7380152))

(assert (= (and b!7379839 (is-Concat!28165 (h!78140 (exprs!8760 cWitness!61)))) b!7380153))

(assert (= (and b!7379839 (is-Star!19320 (h!78140 (exprs!8760 cWitness!61)))) b!7380154))

(assert (= (and b!7379839 (is-Union!19320 (h!78140 (exprs!8760 cWitness!61)))) b!7380155))

(declare-fun b!7380156 () Bool)

(declare-fun e!4417722 () Bool)

(declare-fun tp!2099078 () Bool)

(declare-fun tp!2099079 () Bool)

(assert (=> b!7380156 (= e!4417722 (and tp!2099078 tp!2099079))))

(assert (=> b!7379839 (= tp!2098960 e!4417722)))

(assert (= (and b!7379839 (is-Cons!71692 (t!386303 (exprs!8760 cWitness!61)))) b!7380156))

(declare-fun b!7380158 () Bool)

(declare-fun e!4417723 () Bool)

(declare-fun tp!2099080 () Bool)

(declare-fun tp!2099082 () Bool)

(assert (=> b!7380158 (= e!4417723 (and tp!2099080 tp!2099082))))

(declare-fun b!7380157 () Bool)

(assert (=> b!7380157 (= e!4417723 tp_is_empty!48885)))

(assert (=> b!7379835 (= tp!2098952 e!4417723)))

(declare-fun b!7380160 () Bool)

(declare-fun tp!2099084 () Bool)

(declare-fun tp!2099083 () Bool)

(assert (=> b!7380160 (= e!4417723 (and tp!2099084 tp!2099083))))

(declare-fun b!7380159 () Bool)

(declare-fun tp!2099081 () Bool)

(assert (=> b!7380159 (= e!4417723 tp!2099081)))

(assert (= (and b!7379835 (is-ElementMatch!19320 (regOne!39152 (regTwo!39152 r1!2370)))) b!7380157))

(assert (= (and b!7379835 (is-Concat!28165 (regOne!39152 (regTwo!39152 r1!2370)))) b!7380158))

(assert (= (and b!7379835 (is-Star!19320 (regOne!39152 (regTwo!39152 r1!2370)))) b!7380159))

(assert (= (and b!7379835 (is-Union!19320 (regOne!39152 (regTwo!39152 r1!2370)))) b!7380160))

(declare-fun b!7380162 () Bool)

(declare-fun e!4417724 () Bool)

(declare-fun tp!2099085 () Bool)

(declare-fun tp!2099087 () Bool)

(assert (=> b!7380162 (= e!4417724 (and tp!2099085 tp!2099087))))

(declare-fun b!7380161 () Bool)

(assert (=> b!7380161 (= e!4417724 tp_is_empty!48885)))

(assert (=> b!7379835 (= tp!2098954 e!4417724)))

(declare-fun b!7380164 () Bool)

(declare-fun tp!2099089 () Bool)

(declare-fun tp!2099088 () Bool)

(assert (=> b!7380164 (= e!4417724 (and tp!2099089 tp!2099088))))

(declare-fun b!7380163 () Bool)

(declare-fun tp!2099086 () Bool)

(assert (=> b!7380163 (= e!4417724 tp!2099086)))

(assert (= (and b!7379835 (is-ElementMatch!19320 (regTwo!39152 (regTwo!39152 r1!2370)))) b!7380161))

(assert (= (and b!7379835 (is-Concat!28165 (regTwo!39152 (regTwo!39152 r1!2370)))) b!7380162))

(assert (= (and b!7379835 (is-Star!19320 (regTwo!39152 (regTwo!39152 r1!2370)))) b!7380163))

(assert (= (and b!7379835 (is-Union!19320 (regTwo!39152 (regTwo!39152 r1!2370)))) b!7380164))

(declare-fun b!7380166 () Bool)

(declare-fun e!4417725 () Bool)

(declare-fun tp!2099090 () Bool)

(declare-fun tp!2099092 () Bool)

(assert (=> b!7380166 (= e!4417725 (and tp!2099090 tp!2099092))))

(declare-fun b!7380165 () Bool)

(assert (=> b!7380165 (= e!4417725 tp_is_empty!48885)))

(assert (=> b!7379831 (= tp!2098947 e!4417725)))

(declare-fun b!7380168 () Bool)

(declare-fun tp!2099094 () Bool)

(declare-fun tp!2099093 () Bool)

(assert (=> b!7380168 (= e!4417725 (and tp!2099094 tp!2099093))))

(declare-fun b!7380167 () Bool)

(declare-fun tp!2099091 () Bool)

(assert (=> b!7380167 (= e!4417725 tp!2099091)))

(assert (= (and b!7379831 (is-ElementMatch!19320 (regOne!39152 (regOne!39152 r1!2370)))) b!7380165))

(assert (= (and b!7379831 (is-Concat!28165 (regOne!39152 (regOne!39152 r1!2370)))) b!7380166))

(assert (= (and b!7379831 (is-Star!19320 (regOne!39152 (regOne!39152 r1!2370)))) b!7380167))

(assert (= (and b!7379831 (is-Union!19320 (regOne!39152 (regOne!39152 r1!2370)))) b!7380168))

(declare-fun b!7380170 () Bool)

(declare-fun e!4417726 () Bool)

(declare-fun tp!2099095 () Bool)

(declare-fun tp!2099097 () Bool)

(assert (=> b!7380170 (= e!4417726 (and tp!2099095 tp!2099097))))

(declare-fun b!7380169 () Bool)

(assert (=> b!7380169 (= e!4417726 tp_is_empty!48885)))

(assert (=> b!7379831 (= tp!2098949 e!4417726)))

(declare-fun b!7380172 () Bool)

(declare-fun tp!2099099 () Bool)

(declare-fun tp!2099098 () Bool)

(assert (=> b!7380172 (= e!4417726 (and tp!2099099 tp!2099098))))

(declare-fun b!7380171 () Bool)

(declare-fun tp!2099096 () Bool)

(assert (=> b!7380171 (= e!4417726 tp!2099096)))

(assert (= (and b!7379831 (is-ElementMatch!19320 (regTwo!39152 (regOne!39152 r1!2370)))) b!7380169))

(assert (= (and b!7379831 (is-Concat!28165 (regTwo!39152 (regOne!39152 r1!2370)))) b!7380170))

(assert (= (and b!7379831 (is-Star!19320 (regTwo!39152 (regOne!39152 r1!2370)))) b!7380171))

(assert (= (and b!7379831 (is-Union!19320 (regTwo!39152 (regOne!39152 r1!2370)))) b!7380172))

(declare-fun b!7380174 () Bool)

(declare-fun e!4417727 () Bool)

(declare-fun tp!2099100 () Bool)

(declare-fun tp!2099102 () Bool)

(assert (=> b!7380174 (= e!4417727 (and tp!2099100 tp!2099102))))

(declare-fun b!7380173 () Bool)

(assert (=> b!7380173 (= e!4417727 tp_is_empty!48885)))

(assert (=> b!7379836 (= tp!2098953 e!4417727)))

(declare-fun b!7380176 () Bool)

(declare-fun tp!2099104 () Bool)

(declare-fun tp!2099103 () Bool)

(assert (=> b!7380176 (= e!4417727 (and tp!2099104 tp!2099103))))

(declare-fun b!7380175 () Bool)

(declare-fun tp!2099101 () Bool)

(assert (=> b!7380175 (= e!4417727 tp!2099101)))

(assert (= (and b!7379836 (is-ElementMatch!19320 (reg!19649 (regTwo!39152 r1!2370)))) b!7380173))

(assert (= (and b!7379836 (is-Concat!28165 (reg!19649 (regTwo!39152 r1!2370)))) b!7380174))

(assert (= (and b!7379836 (is-Star!19320 (reg!19649 (regTwo!39152 r1!2370)))) b!7380175))

(assert (= (and b!7379836 (is-Union!19320 (reg!19649 (regTwo!39152 r1!2370)))) b!7380176))

(declare-fun b!7380178 () Bool)

(declare-fun e!4417728 () Bool)

(declare-fun tp!2099105 () Bool)

(declare-fun tp!2099107 () Bool)

(assert (=> b!7380178 (= e!4417728 (and tp!2099105 tp!2099107))))

(declare-fun b!7380177 () Bool)

(assert (=> b!7380177 (= e!4417728 tp_is_empty!48885)))

(assert (=> b!7379827 (= tp!2098942 e!4417728)))

(declare-fun b!7380180 () Bool)

(declare-fun tp!2099109 () Bool)

(declare-fun tp!2099108 () Bool)

(assert (=> b!7380180 (= e!4417728 (and tp!2099109 tp!2099108))))

(declare-fun b!7380179 () Bool)

(declare-fun tp!2099106 () Bool)

(assert (=> b!7380179 (= e!4417728 tp!2099106)))

(assert (= (and b!7379827 (is-ElementMatch!19320 (regOne!39152 (reg!19649 r1!2370)))) b!7380177))

(assert (= (and b!7379827 (is-Concat!28165 (regOne!39152 (reg!19649 r1!2370)))) b!7380178))

(assert (= (and b!7379827 (is-Star!19320 (regOne!39152 (reg!19649 r1!2370)))) b!7380179))

(assert (= (and b!7379827 (is-Union!19320 (regOne!39152 (reg!19649 r1!2370)))) b!7380180))

(declare-fun b!7380182 () Bool)

(declare-fun e!4417729 () Bool)

(declare-fun tp!2099110 () Bool)

(declare-fun tp!2099112 () Bool)

(assert (=> b!7380182 (= e!4417729 (and tp!2099110 tp!2099112))))

(declare-fun b!7380181 () Bool)

(assert (=> b!7380181 (= e!4417729 tp_is_empty!48885)))

(assert (=> b!7379827 (= tp!2098944 e!4417729)))

(declare-fun b!7380184 () Bool)

(declare-fun tp!2099114 () Bool)

(declare-fun tp!2099113 () Bool)

(assert (=> b!7380184 (= e!4417729 (and tp!2099114 tp!2099113))))

(declare-fun b!7380183 () Bool)

(declare-fun tp!2099111 () Bool)

(assert (=> b!7380183 (= e!4417729 tp!2099111)))

(assert (= (and b!7379827 (is-ElementMatch!19320 (regTwo!39152 (reg!19649 r1!2370)))) b!7380181))

(assert (= (and b!7379827 (is-Concat!28165 (regTwo!39152 (reg!19649 r1!2370)))) b!7380182))

(assert (= (and b!7379827 (is-Star!19320 (regTwo!39152 (reg!19649 r1!2370)))) b!7380183))

(assert (= (and b!7379827 (is-Union!19320 (regTwo!39152 (reg!19649 r1!2370)))) b!7380184))

(declare-fun b!7380186 () Bool)

(declare-fun e!4417730 () Bool)

(declare-fun tp!2099115 () Bool)

(declare-fun tp!2099117 () Bool)

(assert (=> b!7380186 (= e!4417730 (and tp!2099115 tp!2099117))))

(declare-fun b!7380185 () Bool)

(assert (=> b!7380185 (= e!4417730 tp_is_empty!48885)))

(assert (=> b!7379832 (= tp!2098948 e!4417730)))

(declare-fun b!7380188 () Bool)

(declare-fun tp!2099119 () Bool)

(declare-fun tp!2099118 () Bool)

(assert (=> b!7380188 (= e!4417730 (and tp!2099119 tp!2099118))))

(declare-fun b!7380187 () Bool)

(declare-fun tp!2099116 () Bool)

(assert (=> b!7380187 (= e!4417730 tp!2099116)))

(assert (= (and b!7379832 (is-ElementMatch!19320 (reg!19649 (regOne!39152 r1!2370)))) b!7380185))

(assert (= (and b!7379832 (is-Concat!28165 (reg!19649 (regOne!39152 r1!2370)))) b!7380186))

(assert (= (and b!7379832 (is-Star!19320 (reg!19649 (regOne!39152 r1!2370)))) b!7380187))

(assert (= (and b!7379832 (is-Union!19320 (reg!19649 (regOne!39152 r1!2370)))) b!7380188))

(declare-fun b!7380190 () Bool)

(declare-fun e!4417731 () Bool)

(declare-fun tp!2099120 () Bool)

(declare-fun tp!2099122 () Bool)

(assert (=> b!7380190 (= e!4417731 (and tp!2099120 tp!2099122))))

(declare-fun b!7380189 () Bool)

(assert (=> b!7380189 (= e!4417731 tp_is_empty!48885)))

(assert (=> b!7379837 (= tp!2098956 e!4417731)))

(declare-fun b!7380192 () Bool)

(declare-fun tp!2099124 () Bool)

(declare-fun tp!2099123 () Bool)

(assert (=> b!7380192 (= e!4417731 (and tp!2099124 tp!2099123))))

(declare-fun b!7380191 () Bool)

(declare-fun tp!2099121 () Bool)

(assert (=> b!7380191 (= e!4417731 tp!2099121)))

(assert (= (and b!7379837 (is-ElementMatch!19320 (regOne!39153 (regTwo!39152 r1!2370)))) b!7380189))

(assert (= (and b!7379837 (is-Concat!28165 (regOne!39153 (regTwo!39152 r1!2370)))) b!7380190))

(assert (= (and b!7379837 (is-Star!19320 (regOne!39153 (regTwo!39152 r1!2370)))) b!7380191))

(assert (= (and b!7379837 (is-Union!19320 (regOne!39153 (regTwo!39152 r1!2370)))) b!7380192))

(declare-fun b!7380194 () Bool)

(declare-fun e!4417732 () Bool)

(declare-fun tp!2099125 () Bool)

(declare-fun tp!2099127 () Bool)

(assert (=> b!7380194 (= e!4417732 (and tp!2099125 tp!2099127))))

(declare-fun b!7380193 () Bool)

(assert (=> b!7380193 (= e!4417732 tp_is_empty!48885)))

(assert (=> b!7379837 (= tp!2098955 e!4417732)))

(declare-fun b!7380196 () Bool)

(declare-fun tp!2099129 () Bool)

(declare-fun tp!2099128 () Bool)

(assert (=> b!7380196 (= e!4417732 (and tp!2099129 tp!2099128))))

(declare-fun b!7380195 () Bool)

(declare-fun tp!2099126 () Bool)

(assert (=> b!7380195 (= e!4417732 tp!2099126)))

(assert (= (and b!7379837 (is-ElementMatch!19320 (regTwo!39153 (regTwo!39152 r1!2370)))) b!7380193))

(assert (= (and b!7379837 (is-Concat!28165 (regTwo!39153 (regTwo!39152 r1!2370)))) b!7380194))

(assert (= (and b!7379837 (is-Star!19320 (regTwo!39153 (regTwo!39152 r1!2370)))) b!7380195))

(assert (= (and b!7379837 (is-Union!19320 (regTwo!39153 (regTwo!39152 r1!2370)))) b!7380196))

(declare-fun b!7380198 () Bool)

(declare-fun e!4417733 () Bool)

(declare-fun tp!2099130 () Bool)

(declare-fun tp!2099132 () Bool)

(assert (=> b!7380198 (= e!4417733 (and tp!2099130 tp!2099132))))

(declare-fun b!7380197 () Bool)

(assert (=> b!7380197 (= e!4417733 tp_is_empty!48885)))

(assert (=> b!7379828 (= tp!2098943 e!4417733)))

(declare-fun b!7380200 () Bool)

(declare-fun tp!2099134 () Bool)

(declare-fun tp!2099133 () Bool)

(assert (=> b!7380200 (= e!4417733 (and tp!2099134 tp!2099133))))

(declare-fun b!7380199 () Bool)

(declare-fun tp!2099131 () Bool)

(assert (=> b!7380199 (= e!4417733 tp!2099131)))

(assert (= (and b!7379828 (is-ElementMatch!19320 (reg!19649 (reg!19649 r1!2370)))) b!7380197))

(assert (= (and b!7379828 (is-Concat!28165 (reg!19649 (reg!19649 r1!2370)))) b!7380198))

(assert (= (and b!7379828 (is-Star!19320 (reg!19649 (reg!19649 r1!2370)))) b!7380199))

(assert (= (and b!7379828 (is-Union!19320 (reg!19649 (reg!19649 r1!2370)))) b!7380200))

(declare-fun b!7380202 () Bool)

(declare-fun e!4417734 () Bool)

(declare-fun tp!2099135 () Bool)

(declare-fun tp!2099137 () Bool)

(assert (=> b!7380202 (= e!4417734 (and tp!2099135 tp!2099137))))

(declare-fun b!7380201 () Bool)

(assert (=> b!7380201 (= e!4417734 tp_is_empty!48885)))

(assert (=> b!7379833 (= tp!2098951 e!4417734)))

(declare-fun b!7380204 () Bool)

(declare-fun tp!2099139 () Bool)

(declare-fun tp!2099138 () Bool)

(assert (=> b!7380204 (= e!4417734 (and tp!2099139 tp!2099138))))

(declare-fun b!7380203 () Bool)

(declare-fun tp!2099136 () Bool)

(assert (=> b!7380203 (= e!4417734 tp!2099136)))

(assert (= (and b!7379833 (is-ElementMatch!19320 (regOne!39153 (regOne!39152 r1!2370)))) b!7380201))

(assert (= (and b!7379833 (is-Concat!28165 (regOne!39153 (regOne!39152 r1!2370)))) b!7380202))

(assert (= (and b!7379833 (is-Star!19320 (regOne!39153 (regOne!39152 r1!2370)))) b!7380203))

(assert (= (and b!7379833 (is-Union!19320 (regOne!39153 (regOne!39152 r1!2370)))) b!7380204))

(declare-fun b!7380206 () Bool)

(declare-fun e!4417735 () Bool)

(declare-fun tp!2099140 () Bool)

(declare-fun tp!2099142 () Bool)

(assert (=> b!7380206 (= e!4417735 (and tp!2099140 tp!2099142))))

(declare-fun b!7380205 () Bool)

(assert (=> b!7380205 (= e!4417735 tp_is_empty!48885)))

(assert (=> b!7379833 (= tp!2098950 e!4417735)))

(declare-fun b!7380208 () Bool)

(declare-fun tp!2099144 () Bool)

(declare-fun tp!2099143 () Bool)

(assert (=> b!7380208 (= e!4417735 (and tp!2099144 tp!2099143))))

(declare-fun b!7380207 () Bool)

(declare-fun tp!2099141 () Bool)

(assert (=> b!7380207 (= e!4417735 tp!2099141)))

(assert (= (and b!7379833 (is-ElementMatch!19320 (regTwo!39153 (regOne!39152 r1!2370)))) b!7380205))

(assert (= (and b!7379833 (is-Concat!28165 (regTwo!39153 (regOne!39152 r1!2370)))) b!7380206))

(assert (= (and b!7379833 (is-Star!19320 (regTwo!39153 (regOne!39152 r1!2370)))) b!7380207))

(assert (= (and b!7379833 (is-Union!19320 (regTwo!39153 (regOne!39152 r1!2370)))) b!7380208))

(declare-fun b!7380210 () Bool)

(declare-fun e!4417736 () Bool)

(declare-fun tp!2099145 () Bool)

(declare-fun tp!2099147 () Bool)

(assert (=> b!7380210 (= e!4417736 (and tp!2099145 tp!2099147))))

(declare-fun b!7380209 () Bool)

(assert (=> b!7380209 (= e!4417736 tp_is_empty!48885)))

(assert (=> b!7379829 (= tp!2098946 e!4417736)))

(declare-fun b!7380212 () Bool)

(declare-fun tp!2099149 () Bool)

(declare-fun tp!2099148 () Bool)

(assert (=> b!7380212 (= e!4417736 (and tp!2099149 tp!2099148))))

(declare-fun b!7380211 () Bool)

(declare-fun tp!2099146 () Bool)

(assert (=> b!7380211 (= e!4417736 tp!2099146)))

(assert (= (and b!7379829 (is-ElementMatch!19320 (regOne!39153 (reg!19649 r1!2370)))) b!7380209))

(assert (= (and b!7379829 (is-Concat!28165 (regOne!39153 (reg!19649 r1!2370)))) b!7380210))

(assert (= (and b!7379829 (is-Star!19320 (regOne!39153 (reg!19649 r1!2370)))) b!7380211))

(assert (= (and b!7379829 (is-Union!19320 (regOne!39153 (reg!19649 r1!2370)))) b!7380212))

(declare-fun b!7380214 () Bool)

(declare-fun e!4417737 () Bool)

(declare-fun tp!2099150 () Bool)

(declare-fun tp!2099152 () Bool)

(assert (=> b!7380214 (= e!4417737 (and tp!2099150 tp!2099152))))

(declare-fun b!7380213 () Bool)

(assert (=> b!7380213 (= e!4417737 tp_is_empty!48885)))

(assert (=> b!7379829 (= tp!2098945 e!4417737)))

(declare-fun b!7380216 () Bool)

(declare-fun tp!2099154 () Bool)

(declare-fun tp!2099153 () Bool)

(assert (=> b!7380216 (= e!4417737 (and tp!2099154 tp!2099153))))

(declare-fun b!7380215 () Bool)

(declare-fun tp!2099151 () Bool)

(assert (=> b!7380215 (= e!4417737 tp!2099151)))

(assert (= (and b!7379829 (is-ElementMatch!19320 (regTwo!39153 (reg!19649 r1!2370)))) b!7380213))

(assert (= (and b!7379829 (is-Concat!28165 (regTwo!39153 (reg!19649 r1!2370)))) b!7380214))

(assert (= (and b!7379829 (is-Star!19320 (regTwo!39153 (reg!19649 r1!2370)))) b!7380215))

(assert (= (and b!7379829 (is-Union!19320 (regTwo!39153 (reg!19649 r1!2370)))) b!7380216))

(declare-fun b!7380218 () Bool)

(declare-fun e!4417738 () Bool)

(declare-fun tp!2099155 () Bool)

(declare-fun tp!2099157 () Bool)

(assert (=> b!7380218 (= e!4417738 (and tp!2099155 tp!2099157))))

(declare-fun b!7380217 () Bool)

(assert (=> b!7380217 (= e!4417738 tp_is_empty!48885)))

(assert (=> b!7379838 (= tp!2098957 e!4417738)))

(declare-fun b!7380220 () Bool)

(declare-fun tp!2099159 () Bool)

(declare-fun tp!2099158 () Bool)

(assert (=> b!7380220 (= e!4417738 (and tp!2099159 tp!2099158))))

(declare-fun b!7380219 () Bool)

(declare-fun tp!2099156 () Bool)

(assert (=> b!7380219 (= e!4417738 tp!2099156)))

(assert (= (and b!7379838 (is-ElementMatch!19320 (h!78140 (exprs!8760 ct2!378)))) b!7380217))

(assert (= (and b!7379838 (is-Concat!28165 (h!78140 (exprs!8760 ct2!378)))) b!7380218))

(assert (= (and b!7379838 (is-Star!19320 (h!78140 (exprs!8760 ct2!378)))) b!7380219))

(assert (= (and b!7379838 (is-Union!19320 (h!78140 (exprs!8760 ct2!378)))) b!7380220))

(declare-fun b!7380221 () Bool)

(declare-fun e!4417739 () Bool)

(declare-fun tp!2099160 () Bool)

(declare-fun tp!2099161 () Bool)

(assert (=> b!7380221 (= e!4417739 (and tp!2099160 tp!2099161))))

(assert (=> b!7379838 (= tp!2098958 e!4417739)))

(assert (= (and b!7379838 (is-Cons!71692 (t!386303 (exprs!8760 ct2!378)))) b!7380221))

(declare-fun b_lambda!284711 () Bool)

(assert (= b_lambda!284709 (or d!2285373 b_lambda!284711)))

(declare-fun bs!1921542 () Bool)

(declare-fun d!2285465 () Bool)

(assert (= bs!1921542 (and d!2285465 d!2285373)))

(assert (=> bs!1921542 (= (dynLambda!29534 lambda!458516 (h!78140 (exprs!8760 ct2!378))) (validRegex!9916 (h!78140 (exprs!8760 ct2!378))))))

(declare-fun m!8030548 () Bool)

(assert (=> bs!1921542 m!8030548))

(assert (=> b!7380083 d!2285465))

(declare-fun b_lambda!284713 () Bool)

(assert (= b_lambda!284707 (or b!7379609 b_lambda!284713)))

(declare-fun bs!1921543 () Bool)

(declare-fun d!2285467 () Bool)

(assert (= bs!1921543 (and d!2285467 b!7379609)))

(assert (=> bs!1921543 (= (dynLambda!29534 lambda!458504 (h!78140 (exprs!8760 ct1!282))) (validRegex!9916 (h!78140 (exprs!8760 ct1!282))))))

(declare-fun m!8030550 () Bool)

(assert (=> bs!1921543 m!8030550))

(assert (=> b!7380049 d!2285467))

(declare-fun b_lambda!284715 () Bool)

(assert (= b_lambda!284699 (or d!2285369 b_lambda!284715)))

(declare-fun bs!1921544 () Bool)

(declare-fun d!2285469 () Bool)

(assert (= bs!1921544 (and d!2285469 d!2285369)))

(assert (=> bs!1921544 (= (dynLambda!29534 lambda!458514 (h!78140 (exprs!8760 cWitness!61))) (validRegex!9916 (h!78140 (exprs!8760 cWitness!61))))))

(declare-fun m!8030552 () Bool)

(assert (=> bs!1921544 m!8030552))

(assert (=> b!7379959 d!2285469))

(declare-fun b_lambda!284717 () Bool)

(assert (= b_lambda!284705 (or b!7379609 b_lambda!284717)))

(declare-fun bs!1921545 () Bool)

(declare-fun d!2285471 () Bool)

(assert (= bs!1921545 (and d!2285471 b!7379609)))

(assert (=> bs!1921545 (= (dynLambda!29534 lambda!458504 (h!78140 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)))) (validRegex!9916 (h!78140 (++!17136 (exprs!8760 ct1!282) (exprs!8760 ct2!378)))))))

(declare-fun m!8030554 () Bool)

(assert (=> bs!1921545 m!8030554))

(assert (=> b!7380047 d!2285471))

(declare-fun b_lambda!284719 () Bool)

(assert (= b_lambda!284703 (or d!2285355 b_lambda!284719)))

(declare-fun bs!1921546 () Bool)

(declare-fun d!2285473 () Bool)

(assert (= bs!1921546 (and d!2285473 d!2285355)))

(assert (=> bs!1921546 (= (dynLambda!29534 lambda!458513 (h!78140 (exprs!8760 lt!2616804))) (validRegex!9916 (h!78140 (exprs!8760 lt!2616804))))))

(declare-fun m!8030556 () Bool)

(assert (=> bs!1921546 m!8030556))

(assert (=> b!7379973 d!2285473))

(declare-fun b_lambda!284721 () Bool)

(assert (= b_lambda!284701 (or d!2285371 b_lambda!284721)))

(declare-fun bs!1921547 () Bool)

(declare-fun d!2285475 () Bool)

(assert (= bs!1921547 (and d!2285475 d!2285371)))

(assert (=> bs!1921547 (= (dynLambda!29534 lambda!458515 (h!78140 (exprs!8760 ct1!282))) (validRegex!9916 (h!78140 (exprs!8760 ct1!282))))))

(assert (=> bs!1921547 m!8030550))

(assert (=> b!7379961 d!2285475))

(push 1)

(assert (not bm!678880))

(assert (not d!2285445))

(assert (not b!7380146))

(assert (not b!7380170))

(assert (not b!7380149))

(assert (not b!7380050))

(assert (not b!7380048))

(assert (not b!7380150))

(assert (not b!7380219))

(assert (not b!7380005))

(assert (not b!7380118))

(assert (not bs!1921544))

(assert (not b!7380148))

(assert (not b!7379992))

(assert (not d!2285459))

(assert (not bs!1921547))

(assert (not bs!1921546))

(assert (not bm!678835))

(assert (not b!7380159))

(assert (not b!7380188))

(assert (not bm!678844))

(assert (not b!7380112))

(assert (not bm!678851))

(assert (not b!7380171))

(assert (not b!7380192))

(assert (not b!7380140))

(assert (not b!7380144))

(assert (not b!7380136))

(assert (not b!7379945))

(assert (not bm!678862))

(assert (not bs!1921542))

(assert (not b!7380221))

(assert (not b!7380203))

(assert (not bs!1921545))

(assert (not bm!678856))

(assert (not b_lambda!284713))

(assert (not b!7380158))

(assert (not b!7379972))

(assert (not b_lambda!284721))

(assert (not b!7380210))

(assert (not b!7380137))

(assert (not b!7380145))

(assert (not b!7380194))

(assert (not b!7380187))

(assert (not b_lambda!284711))

(assert (not b!7380204))

(assert (not b!7380128))

(assert (not b!7380162))

(assert (not bm!678849))

(assert (not b!7380134))

(assert (not bm!678868))

(assert (not bm!678875))

(assert (not b!7380212))

(assert (not b!7380184))

(assert (not bm!678857))

(assert (not b!7380178))

(assert (not b!7380200))

(assert (not b!7380114))

(assert (not b!7380172))

(assert (not b!7380126))

(assert (not b!7380153))

(assert (not b!7380124))

(assert (not b!7380121))

(assert (not b!7380062))

(assert (not b!7380113))

(assert (not b!7380199))

(assert (not b!7379960))

(assert (not b!7380196))

(assert (not b!7380175))

(assert (not b_lambda!284717))

(assert (not b!7380191))

(assert (not b!7380070))

(assert (not b!7380125))

(assert (not d!2285403))

(assert (not b!7380057))

(assert (not bm!678853))

(assert (not b!7380078))

(assert (not bm!678838))

(assert (not b_lambda!284715))

(assert (not b!7380215))

(assert (not bm!678859))

(assert (not b!7380211))

(assert (not d!2285407))

(assert (not b!7380109))

(assert (not b!7380207))

(assert (not b!7380061))

(assert (not b!7380138))

(assert (not b!7380202))

(assert tp_is_empty!48885)

(assert (not bm!678846))

(assert (not bm!678886))

(assert (not bm!678848))

(assert (not b!7380084))

(assert (not b!7380167))

(assert (not b!7380166))

(assert (not b!7380186))

(assert (not b!7380086))

(assert (not bm!678845))

(assert (not b!7380182))

(assert (not b!7380180))

(assert (not b!7379976))

(assert (not b!7380151))

(assert (not b!7380141))

(assert (not b!7380154))

(assert (not b!7380133))

(assert (not b!7380190))

(assert (not b!7380214))

(assert (not b!7380097))

(assert (not b!7379968))

(assert (not b!7379962))

(assert (not b!7380130))

(assert (not b!7379970))

(assert (not d!2285439))

(assert (not bm!678870))

(assert (not b!7380206))

(assert (not b!7380195))

(assert (not b!7380156))

(assert (not bs!1921543))

(assert (not bm!678881))

(assert (not b!7380183))

(assert (not b!7380179))

(assert (not b!7380220))

(assert (not bm!678833))

(assert (not b!7379974))

(assert (not b_lambda!284719))

(assert (not b!7380082))

(assert (not b!7380160))

(assert (not b!7380142))

(assert (not b!7380016))

(assert (not b!7380198))

(assert (not b!7380001))

(assert (not b!7380132))

(assert (not bm!678872))

(assert (not b!7380129))

(assert (not bm!678839))

(assert (not bm!678873))

(assert (not b!7380110))

(assert (not b!7380163))

(assert (not b!7380176))

(assert (not b!7380174))

(assert (not bm!678877))

(assert (not bm!678841))

(assert (not b!7380122))

(assert (not b!7380164))

(assert (not bm!678883))

(assert (not b!7380216))

(assert (not b!7380218))

(assert (not b!7380155))

(assert (not b!7380116))

(assert (not b!7380108))

(assert (not b!7380168))

(assert (not bm!678869))

(assert (not b!7380120))

(assert (not b!7380117))

(assert (not b!7380080))

(assert (not bm!678867))

(assert (not b!7380208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

