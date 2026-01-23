; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719910 () Bool)

(assert start!719910)

(declare-fun b!7378664 () Bool)

(declare-fun e!4416912 () Bool)

(declare-fun e!4416915 () Bool)

(assert (=> b!7378664 (= e!4416912 e!4416915)))

(declare-fun res!2976382 () Bool)

(assert (=> b!7378664 (=> (not res!2976382) (not e!4416915))))

(declare-datatypes ((C!38906 0))(
  ( (C!38907 (val!29813 Int)) )
))
(declare-datatypes ((Regex!19316 0))(
  ( (ElementMatch!19316 (c!1371474 C!38906)) (Concat!28161 (regOne!39144 Regex!19316) (regTwo!39144 Regex!19316)) (EmptyExpr!19316) (Star!19316 (reg!19645 Regex!19316)) (EmptyLang!19316) (Union!19316 (regOne!39145 Regex!19316) (regTwo!39145 Regex!19316)) )
))
(declare-fun lt!2616736 () Regex!19316)

(declare-fun validRegex!9912 (Regex!19316) Bool)

(assert (=> b!7378664 (= res!2976382 (validRegex!9912 lt!2616736))))

(declare-fun r1!2370 () Regex!19316)

(assert (=> b!7378664 (= lt!2616736 (Star!19316 (reg!19645 r1!2370)))))

(declare-fun b!7378665 () Bool)

(declare-datatypes ((List!71812 0))(
  ( (Nil!71688) (Cons!71688 (h!78136 Regex!19316) (t!386297 List!71812)) )
))
(declare-datatypes ((Context!16512 0))(
  ( (Context!16513 (exprs!8756 List!71812)) )
))
(declare-fun ct1!282 () Context!16512)

(declare-fun inv!91631 (Context!16512) Bool)

(declare-fun $colon$colon!3294 (List!71812 Regex!19316) List!71812)

(assert (=> b!7378665 (= e!4416915 (not (inv!91631 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736)))))))

(declare-fun b!7378666 () Bool)

(declare-fun e!4416911 () Bool)

(declare-fun tp!2098417 () Bool)

(assert (=> b!7378666 (= e!4416911 tp!2098417)))

(declare-fun b!7378667 () Bool)

(declare-fun e!4416916 () Bool)

(declare-fun tp!2098419 () Bool)

(declare-fun tp!2098423 () Bool)

(assert (=> b!7378667 (= e!4416916 (and tp!2098419 tp!2098423))))

(declare-fun b!7378668 () Bool)

(declare-fun e!4416913 () Bool)

(assert (=> b!7378668 (= e!4416913 e!4416912)))

(declare-fun res!2976384 () Bool)

(assert (=> b!7378668 (=> (not res!2976384) (not e!4416912))))

(declare-fun c!10362 () C!38906)

(assert (=> b!7378668 (= res!2976384 (and (or (not (is-ElementMatch!19316 r1!2370)) (not (= c!10362 (c!1371474 r1!2370)))) (not (is-Union!19316 r1!2370))))))

(declare-fun lt!2616735 () (Set Context!16512))

(declare-fun ct2!378 () Context!16512)

(declare-fun derivationStepZipperDown!3142 (Regex!19316 Context!16512 C!38906) (Set Context!16512))

(declare-fun ++!17132 (List!71812 List!71812) List!71812)

(assert (=> b!7378668 (= lt!2616735 (derivationStepZipperDown!3142 r1!2370 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165581 0))(
  ( (Unit!165582) )
))
(declare-fun lt!2616734 () Unit!165581)

(declare-fun lambda!458480 () Int)

(declare-fun lemmaConcatPreservesForall!1989 (List!71812 List!71812 Int) Unit!165581)

(assert (=> b!7378668 (= lt!2616734 (lemmaConcatPreservesForall!1989 (exprs!8756 ct1!282) (exprs!8756 ct2!378) lambda!458480))))

(declare-fun b!7378669 () Bool)

(declare-fun e!4416909 () Bool)

(declare-fun tp!2098421 () Bool)

(assert (=> b!7378669 (= e!4416909 tp!2098421)))

(declare-fun b!7378670 () Bool)

(declare-fun tp!2098420 () Bool)

(declare-fun tp!2098416 () Bool)

(assert (=> b!7378670 (= e!4416916 (and tp!2098420 tp!2098416))))

(declare-fun b!7378671 () Bool)

(declare-fun res!2976386 () Bool)

(assert (=> b!7378671 (=> (not res!2976386) (not e!4416913))))

(declare-fun cWitness!61 () Context!16512)

(assert (=> b!7378671 (= res!2976386 (set.member cWitness!61 (derivationStepZipperDown!3142 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7378672 () Bool)

(declare-fun res!2976383 () Bool)

(assert (=> b!7378672 (=> (not res!2976383) (not e!4416912))))

(assert (=> b!7378672 (= res!2976383 (and (not (is-Concat!28161 r1!2370)) (is-Star!19316 r1!2370)))))

(declare-fun b!7378673 () Bool)

(declare-fun e!4416914 () Bool)

(declare-fun nullable!8390 (Regex!19316) Bool)

(assert (=> b!7378673 (= e!4416914 (not (nullable!8390 (regOne!39144 r1!2370))))))

(declare-fun b!7378674 () Bool)

(declare-fun tp!2098418 () Bool)

(assert (=> b!7378674 (= e!4416916 tp!2098418)))

(declare-fun b!7378675 () Bool)

(declare-fun tp_is_empty!48877 () Bool)

(assert (=> b!7378675 (= e!4416916 tp_is_empty!48877)))

(declare-fun b!7378676 () Bool)

(declare-fun res!2976385 () Bool)

(assert (=> b!7378676 (=> (not res!2976385) (not e!4416912))))

(assert (=> b!7378676 (= res!2976385 e!4416914)))

(declare-fun res!2976387 () Bool)

(assert (=> b!7378676 (=> res!2976387 e!4416914)))

(assert (=> b!7378676 (= res!2976387 (not (is-Concat!28161 r1!2370)))))

(declare-fun b!7378677 () Bool)

(declare-fun e!4416910 () Bool)

(declare-fun tp!2098422 () Bool)

(assert (=> b!7378677 (= e!4416910 tp!2098422)))

(declare-fun res!2976381 () Bool)

(assert (=> start!719910 (=> (not res!2976381) (not e!4416913))))

(assert (=> start!719910 (= res!2976381 (validRegex!9912 r1!2370))))

(assert (=> start!719910 e!4416913))

(assert (=> start!719910 tp_is_empty!48877))

(assert (=> start!719910 (and (inv!91631 cWitness!61) e!4416911)))

(assert (=> start!719910 (and (inv!91631 ct1!282) e!4416910)))

(assert (=> start!719910 e!4416916))

(assert (=> start!719910 (and (inv!91631 ct2!378) e!4416909)))

(assert (= (and start!719910 res!2976381) b!7378671))

(assert (= (and b!7378671 res!2976386) b!7378668))

(assert (= (and b!7378668 res!2976384) b!7378676))

(assert (= (and b!7378676 (not res!2976387)) b!7378673))

(assert (= (and b!7378676 res!2976385) b!7378672))

(assert (= (and b!7378672 res!2976383) b!7378664))

(assert (= (and b!7378664 res!2976382) b!7378665))

(assert (= start!719910 b!7378666))

(assert (= start!719910 b!7378677))

(assert (= (and start!719910 (is-ElementMatch!19316 r1!2370)) b!7378675))

(assert (= (and start!719910 (is-Concat!28161 r1!2370)) b!7378670))

(assert (= (and start!719910 (is-Star!19316 r1!2370)) b!7378674))

(assert (= (and start!719910 (is-Union!19316 r1!2370)) b!7378667))

(assert (= start!719910 b!7378669))

(declare-fun m!8029734 () Bool)

(assert (=> start!719910 m!8029734))

(declare-fun m!8029736 () Bool)

(assert (=> start!719910 m!8029736))

(declare-fun m!8029738 () Bool)

(assert (=> start!719910 m!8029738))

(declare-fun m!8029740 () Bool)

(assert (=> start!719910 m!8029740))

(declare-fun m!8029742 () Bool)

(assert (=> b!7378668 m!8029742))

(declare-fun m!8029744 () Bool)

(assert (=> b!7378668 m!8029744))

(declare-fun m!8029746 () Bool)

(assert (=> b!7378668 m!8029746))

(declare-fun m!8029748 () Bool)

(assert (=> b!7378665 m!8029748))

(declare-fun m!8029750 () Bool)

(assert (=> b!7378665 m!8029750))

(declare-fun m!8029752 () Bool)

(assert (=> b!7378671 m!8029752))

(declare-fun m!8029754 () Bool)

(assert (=> b!7378671 m!8029754))

(declare-fun m!8029756 () Bool)

(assert (=> b!7378664 m!8029756))

(declare-fun m!8029758 () Bool)

(assert (=> b!7378673 m!8029758))

(push 1)

(assert (not b!7378667))

(assert (not b!7378670))

(assert (not b!7378674))

(assert tp_is_empty!48877)

(assert (not b!7378668))

(assert (not b!7378669))

(assert (not b!7378666))

(assert (not b!7378673))

(assert (not b!7378677))

(assert (not b!7378665))

(assert (not b!7378664))

(assert (not b!7378671))

(assert (not start!719910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7378760 () Bool)

(declare-fun e!4416972 () (Set Context!16512))

(declare-fun call!678618 () (Set Context!16512))

(assert (=> b!7378760 (= e!4416972 call!678618)))

(declare-fun b!7378761 () Bool)

(declare-fun c!1371490 () Bool)

(assert (=> b!7378761 (= c!1371490 (is-Star!19316 r1!2370))))

(declare-fun e!4416969 () (Set Context!16512))

(assert (=> b!7378761 (= e!4416972 e!4416969)))

(declare-fun b!7378762 () Bool)

(declare-fun e!4416968 () (Set Context!16512))

(assert (=> b!7378762 (= e!4416968 e!4416972)))

(declare-fun c!1371493 () Bool)

(assert (=> b!7378762 (= c!1371493 (is-Concat!28161 r1!2370))))

(declare-fun b!7378763 () Bool)

(declare-fun call!678616 () (Set Context!16512))

(declare-fun call!678620 () (Set Context!16512))

(assert (=> b!7378763 (= e!4416968 (set.union call!678616 call!678620))))

(declare-fun b!7378764 () Bool)

(declare-fun e!4416967 () (Set Context!16512))

(declare-fun call!678617 () (Set Context!16512))

(assert (=> b!7378764 (= e!4416967 (set.union call!678616 call!678617))))

(declare-fun bm!678611 () Bool)

(declare-fun call!678619 () List!71812)

(declare-fun call!678621 () List!71812)

(assert (=> bm!678611 (= call!678619 call!678621)))

(declare-fun c!1371491 () Bool)

(declare-fun bm!678612 () Bool)

(declare-fun c!1371494 () Bool)

(assert (=> bm!678612 (= call!678617 (derivationStepZipperDown!3142 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))) (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619)) c!10362))))

(declare-fun b!7378765 () Bool)

(declare-fun e!4416971 () (Set Context!16512))

(assert (=> b!7378765 (= e!4416971 (set.insert ct1!282 (as set.empty (Set Context!16512))))))

(declare-fun b!7378766 () Bool)

(assert (=> b!7378766 (= e!4416969 (as set.empty (Set Context!16512)))))

(declare-fun b!7378767 () Bool)

(declare-fun e!4416970 () Bool)

(assert (=> b!7378767 (= c!1371491 e!4416970)))

(declare-fun res!2976421 () Bool)

(assert (=> b!7378767 (=> (not res!2976421) (not e!4416970))))

(assert (=> b!7378767 (= res!2976421 (is-Concat!28161 r1!2370))))

(assert (=> b!7378767 (= e!4416967 e!4416968)))

(declare-fun bm!678613 () Bool)

(assert (=> bm!678613 (= call!678621 ($colon$colon!3294 (exprs!8756 ct1!282) (ite (or c!1371491 c!1371493) (regTwo!39144 r1!2370) r1!2370)))))

(declare-fun b!7378768 () Bool)

(assert (=> b!7378768 (= e!4416969 call!678618)))

(declare-fun d!2285169 () Bool)

(declare-fun c!1371492 () Bool)

(assert (=> d!2285169 (= c!1371492 (and (is-ElementMatch!19316 r1!2370) (= (c!1371474 r1!2370) c!10362)))))

(assert (=> d!2285169 (= (derivationStepZipperDown!3142 r1!2370 ct1!282 c!10362) e!4416971)))

(declare-fun bm!678614 () Bool)

(assert (=> bm!678614 (= call!678620 call!678617)))

(declare-fun bm!678615 () Bool)

(assert (=> bm!678615 (= call!678616 (derivationStepZipperDown!3142 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)) (ite c!1371494 ct1!282 (Context!16513 call!678621)) c!10362))))

(declare-fun b!7378769 () Bool)

(assert (=> b!7378769 (= e!4416970 (nullable!8390 (regOne!39144 r1!2370)))))

(declare-fun bm!678616 () Bool)

(assert (=> bm!678616 (= call!678618 call!678620)))

(declare-fun b!7378770 () Bool)

(assert (=> b!7378770 (= e!4416971 e!4416967)))

(assert (=> b!7378770 (= c!1371494 (is-Union!19316 r1!2370))))

(assert (= (and d!2285169 c!1371492) b!7378765))

(assert (= (and d!2285169 (not c!1371492)) b!7378770))

(assert (= (and b!7378770 c!1371494) b!7378764))

(assert (= (and b!7378770 (not c!1371494)) b!7378767))

(assert (= (and b!7378767 res!2976421) b!7378769))

(assert (= (and b!7378767 c!1371491) b!7378763))

(assert (= (and b!7378767 (not c!1371491)) b!7378762))

(assert (= (and b!7378762 c!1371493) b!7378760))

(assert (= (and b!7378762 (not c!1371493)) b!7378761))

(assert (= (and b!7378761 c!1371490) b!7378768))

(assert (= (and b!7378761 (not c!1371490)) b!7378766))

(assert (= (or b!7378760 b!7378768) bm!678611))

(assert (= (or b!7378760 b!7378768) bm!678616))

(assert (= (or b!7378763 bm!678616) bm!678614))

(assert (= (or b!7378763 bm!678611) bm!678613))

(assert (= (or b!7378764 bm!678614) bm!678612))

(assert (= (or b!7378764 b!7378763) bm!678615))

(declare-fun m!8029786 () Bool)

(assert (=> bm!678613 m!8029786))

(assert (=> b!7378769 m!8029758))

(declare-fun m!8029788 () Bool)

(assert (=> bm!678615 m!8029788))

(declare-fun m!8029790 () Bool)

(assert (=> b!7378765 m!8029790))

(declare-fun m!8029792 () Bool)

(assert (=> bm!678612 m!8029792))

(assert (=> b!7378671 d!2285169))

(declare-fun call!678633 () Bool)

(declare-fun c!1371502 () Bool)

(declare-fun c!1371501 () Bool)

(declare-fun bm!678626 () Bool)

(assert (=> bm!678626 (= call!678633 (validRegex!9912 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun bm!678627 () Bool)

(declare-fun call!678631 () Bool)

(assert (=> bm!678627 (= call!678631 (validRegex!9912 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))

(declare-fun b!7378798 () Bool)

(declare-fun e!4416999 () Bool)

(declare-fun e!4417000 () Bool)

(assert (=> b!7378798 (= e!4416999 e!4417000)))

(assert (=> b!7378798 (= c!1371501 (is-Star!19316 r1!2370))))

(declare-fun b!7378799 () Bool)

(declare-fun res!2976440 () Bool)

(declare-fun e!4416994 () Bool)

(assert (=> b!7378799 (=> res!2976440 e!4416994)))

(assert (=> b!7378799 (= res!2976440 (not (is-Concat!28161 r1!2370)))))

(declare-fun e!4416995 () Bool)

(assert (=> b!7378799 (= e!4416995 e!4416994)))

(declare-fun b!7378800 () Bool)

(declare-fun e!4416997 () Bool)

(assert (=> b!7378800 (= e!4416997 call!678633)))

(declare-fun d!2285173 () Bool)

(declare-fun res!2976441 () Bool)

(assert (=> d!2285173 (=> res!2976441 e!4416999)))

(assert (=> d!2285173 (= res!2976441 (is-ElementMatch!19316 r1!2370))))

(assert (=> d!2285173 (= (validRegex!9912 r1!2370) e!4416999)))

(declare-fun b!7378801 () Bool)

(declare-fun e!4416998 () Bool)

(declare-fun call!678632 () Bool)

(assert (=> b!7378801 (= e!4416998 call!678632)))

(declare-fun bm!678628 () Bool)

(assert (=> bm!678628 (= call!678632 call!678633)))

(declare-fun b!7378802 () Bool)

(declare-fun e!4416996 () Bool)

(assert (=> b!7378802 (= e!4416996 call!678631)))

(declare-fun b!7378803 () Bool)

(assert (=> b!7378803 (= e!4417000 e!4416997)))

(declare-fun res!2976439 () Bool)

(assert (=> b!7378803 (= res!2976439 (not (nullable!8390 (reg!19645 r1!2370))))))

(assert (=> b!7378803 (=> (not res!2976439) (not e!4416997))))

(declare-fun b!7378804 () Bool)

(assert (=> b!7378804 (= e!4417000 e!4416995)))

(assert (=> b!7378804 (= c!1371502 (is-Union!19316 r1!2370))))

(declare-fun b!7378805 () Bool)

(assert (=> b!7378805 (= e!4416994 e!4416996)))

(declare-fun res!2976438 () Bool)

(assert (=> b!7378805 (=> (not res!2976438) (not e!4416996))))

(assert (=> b!7378805 (= res!2976438 call!678632)))

(declare-fun b!7378806 () Bool)

(declare-fun res!2976437 () Bool)

(assert (=> b!7378806 (=> (not res!2976437) (not e!4416998))))

(assert (=> b!7378806 (= res!2976437 call!678631)))

(assert (=> b!7378806 (= e!4416995 e!4416998)))

(assert (= (and d!2285173 (not res!2976441)) b!7378798))

(assert (= (and b!7378798 c!1371501) b!7378803))

(assert (= (and b!7378798 (not c!1371501)) b!7378804))

(assert (= (and b!7378803 res!2976439) b!7378800))

(assert (= (and b!7378804 c!1371502) b!7378806))

(assert (= (and b!7378804 (not c!1371502)) b!7378799))

(assert (= (and b!7378806 res!2976437) b!7378801))

(assert (= (and b!7378799 (not res!2976440)) b!7378805))

(assert (= (and b!7378805 res!2976438) b!7378802))

(assert (= (or b!7378806 b!7378802) bm!678627))

(assert (= (or b!7378801 b!7378805) bm!678628))

(assert (= (or b!7378800 bm!678628) bm!678626))

(declare-fun m!8029800 () Bool)

(assert (=> bm!678626 m!8029800))

(declare-fun m!8029802 () Bool)

(assert (=> bm!678627 m!8029802))

(declare-fun m!8029804 () Bool)

(assert (=> b!7378803 m!8029804))

(assert (=> start!719910 d!2285173))

(declare-fun bs!1921452 () Bool)

(declare-fun d!2285177 () Bool)

(assert (= bs!1921452 (and d!2285177 b!7378668)))

(declare-fun lambda!458486 () Int)

(assert (=> bs!1921452 (= lambda!458486 lambda!458480)))

(declare-fun forall!18106 (List!71812 Int) Bool)

(assert (=> d!2285177 (= (inv!91631 cWitness!61) (forall!18106 (exprs!8756 cWitness!61) lambda!458486))))

(declare-fun bs!1921453 () Bool)

(assert (= bs!1921453 d!2285177))

(declare-fun m!8029812 () Bool)

(assert (=> bs!1921453 m!8029812))

(assert (=> start!719910 d!2285177))

(declare-fun bs!1921454 () Bool)

(declare-fun d!2285181 () Bool)

(assert (= bs!1921454 (and d!2285181 b!7378668)))

(declare-fun lambda!458487 () Int)

(assert (=> bs!1921454 (= lambda!458487 lambda!458480)))

(declare-fun bs!1921455 () Bool)

(assert (= bs!1921455 (and d!2285181 d!2285177)))

(assert (=> bs!1921455 (= lambda!458487 lambda!458486)))

(assert (=> d!2285181 (= (inv!91631 ct1!282) (forall!18106 (exprs!8756 ct1!282) lambda!458487))))

(declare-fun bs!1921456 () Bool)

(assert (= bs!1921456 d!2285181))

(declare-fun m!8029814 () Bool)

(assert (=> bs!1921456 m!8029814))

(assert (=> start!719910 d!2285181))

(declare-fun bs!1921457 () Bool)

(declare-fun d!2285183 () Bool)

(assert (= bs!1921457 (and d!2285183 b!7378668)))

(declare-fun lambda!458488 () Int)

(assert (=> bs!1921457 (= lambda!458488 lambda!458480)))

(declare-fun bs!1921458 () Bool)

(assert (= bs!1921458 (and d!2285183 d!2285177)))

(assert (=> bs!1921458 (= lambda!458488 lambda!458486)))

(declare-fun bs!1921459 () Bool)

(assert (= bs!1921459 (and d!2285183 d!2285181)))

(assert (=> bs!1921459 (= lambda!458488 lambda!458487)))

(assert (=> d!2285183 (= (inv!91631 ct2!378) (forall!18106 (exprs!8756 ct2!378) lambda!458488))))

(declare-fun bs!1921460 () Bool)

(assert (= bs!1921460 d!2285183))

(declare-fun m!8029816 () Bool)

(assert (=> bs!1921460 m!8029816))

(assert (=> start!719910 d!2285183))

(declare-fun bs!1921461 () Bool)

(declare-fun d!2285185 () Bool)

(assert (= bs!1921461 (and d!2285185 b!7378668)))

(declare-fun lambda!458489 () Int)

(assert (=> bs!1921461 (= lambda!458489 lambda!458480)))

(declare-fun bs!1921462 () Bool)

(assert (= bs!1921462 (and d!2285185 d!2285177)))

(assert (=> bs!1921462 (= lambda!458489 lambda!458486)))

(declare-fun bs!1921463 () Bool)

(assert (= bs!1921463 (and d!2285185 d!2285181)))

(assert (=> bs!1921463 (= lambda!458489 lambda!458487)))

(declare-fun bs!1921464 () Bool)

(assert (= bs!1921464 (and d!2285185 d!2285183)))

(assert (=> bs!1921464 (= lambda!458489 lambda!458488)))

(assert (=> d!2285185 (= (inv!91631 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))) (forall!18106 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))) lambda!458489))))

(declare-fun bs!1921465 () Bool)

(assert (= bs!1921465 d!2285185))

(declare-fun m!8029818 () Bool)

(assert (=> bs!1921465 m!8029818))

(assert (=> b!7378665 d!2285185))

(declare-fun d!2285187 () Bool)

(assert (=> d!2285187 (= ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736) (Cons!71688 lt!2616736 (exprs!8756 ct1!282)))))

(assert (=> b!7378665 d!2285187))

(declare-fun c!1371505 () Bool)

(declare-fun c!1371506 () Bool)

(declare-fun bm!678632 () Bool)

(declare-fun call!678639 () Bool)

(assert (=> bm!678632 (= call!678639 (validRegex!9912 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))

(declare-fun bm!678633 () Bool)

(declare-fun call!678637 () Bool)

(assert (=> bm!678633 (= call!678637 (validRegex!9912 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))

(declare-fun b!7378816 () Bool)

(declare-fun e!4417013 () Bool)

(declare-fun e!4417014 () Bool)

(assert (=> b!7378816 (= e!4417013 e!4417014)))

(assert (=> b!7378816 (= c!1371505 (is-Star!19316 lt!2616736))))

(declare-fun b!7378817 () Bool)

(declare-fun res!2976450 () Bool)

(declare-fun e!4417008 () Bool)

(assert (=> b!7378817 (=> res!2976450 e!4417008)))

(assert (=> b!7378817 (= res!2976450 (not (is-Concat!28161 lt!2616736)))))

(declare-fun e!4417009 () Bool)

(assert (=> b!7378817 (= e!4417009 e!4417008)))

(declare-fun b!7378818 () Bool)

(declare-fun e!4417011 () Bool)

(assert (=> b!7378818 (= e!4417011 call!678639)))

(declare-fun d!2285189 () Bool)

(declare-fun res!2976451 () Bool)

(assert (=> d!2285189 (=> res!2976451 e!4417013)))

(assert (=> d!2285189 (= res!2976451 (is-ElementMatch!19316 lt!2616736))))

(assert (=> d!2285189 (= (validRegex!9912 lt!2616736) e!4417013)))

(declare-fun b!7378819 () Bool)

(declare-fun e!4417012 () Bool)

(declare-fun call!678638 () Bool)

(assert (=> b!7378819 (= e!4417012 call!678638)))

(declare-fun bm!678634 () Bool)

(assert (=> bm!678634 (= call!678638 call!678639)))

(declare-fun b!7378820 () Bool)

(declare-fun e!4417010 () Bool)

(assert (=> b!7378820 (= e!4417010 call!678637)))

(declare-fun b!7378821 () Bool)

(assert (=> b!7378821 (= e!4417014 e!4417011)))

(declare-fun res!2976449 () Bool)

(assert (=> b!7378821 (= res!2976449 (not (nullable!8390 (reg!19645 lt!2616736))))))

(assert (=> b!7378821 (=> (not res!2976449) (not e!4417011))))

(declare-fun b!7378822 () Bool)

(assert (=> b!7378822 (= e!4417014 e!4417009)))

(assert (=> b!7378822 (= c!1371506 (is-Union!19316 lt!2616736))))

(declare-fun b!7378823 () Bool)

(assert (=> b!7378823 (= e!4417008 e!4417010)))

(declare-fun res!2976448 () Bool)

(assert (=> b!7378823 (=> (not res!2976448) (not e!4417010))))

(assert (=> b!7378823 (= res!2976448 call!678638)))

(declare-fun b!7378824 () Bool)

(declare-fun res!2976447 () Bool)

(assert (=> b!7378824 (=> (not res!2976447) (not e!4417012))))

(assert (=> b!7378824 (= res!2976447 call!678637)))

(assert (=> b!7378824 (= e!4417009 e!4417012)))

(assert (= (and d!2285189 (not res!2976451)) b!7378816))

(assert (= (and b!7378816 c!1371505) b!7378821))

(assert (= (and b!7378816 (not c!1371505)) b!7378822))

(assert (= (and b!7378821 res!2976449) b!7378818))

(assert (= (and b!7378822 c!1371506) b!7378824))

(assert (= (and b!7378822 (not c!1371506)) b!7378817))

(assert (= (and b!7378824 res!2976447) b!7378819))

(assert (= (and b!7378817 (not res!2976450)) b!7378823))

(assert (= (and b!7378823 res!2976448) b!7378820))

(assert (= (or b!7378824 b!7378820) bm!678633))

(assert (= (or b!7378819 b!7378823) bm!678634))

(assert (= (or b!7378818 bm!678634) bm!678632))

(declare-fun m!8029820 () Bool)

(assert (=> bm!678632 m!8029820))

(declare-fun m!8029822 () Bool)

(assert (=> bm!678633 m!8029822))

(declare-fun m!8029824 () Bool)

(assert (=> b!7378821 m!8029824))

(assert (=> b!7378664 d!2285189))

(declare-fun d!2285191 () Bool)

(declare-fun nullableFct!3363 (Regex!19316) Bool)

(assert (=> d!2285191 (= (nullable!8390 (regOne!39144 r1!2370)) (nullableFct!3363 (regOne!39144 r1!2370)))))

(declare-fun bs!1921466 () Bool)

(assert (= bs!1921466 d!2285191))

(declare-fun m!8029826 () Bool)

(assert (=> bs!1921466 m!8029826))

(assert (=> b!7378673 d!2285191))

(declare-fun b!7378825 () Bool)

(declare-fun e!4417020 () (Set Context!16512))

(declare-fun call!678642 () (Set Context!16512))

(assert (=> b!7378825 (= e!4417020 call!678642)))

(declare-fun b!7378826 () Bool)

(declare-fun c!1371507 () Bool)

(assert (=> b!7378826 (= c!1371507 (is-Star!19316 r1!2370))))

(declare-fun e!4417017 () (Set Context!16512))

(assert (=> b!7378826 (= e!4417020 e!4417017)))

(declare-fun b!7378827 () Bool)

(declare-fun e!4417016 () (Set Context!16512))

(assert (=> b!7378827 (= e!4417016 e!4417020)))

(declare-fun c!1371510 () Bool)

(assert (=> b!7378827 (= c!1371510 (is-Concat!28161 r1!2370))))

(declare-fun b!7378828 () Bool)

(declare-fun call!678640 () (Set Context!16512))

(declare-fun call!678644 () (Set Context!16512))

(assert (=> b!7378828 (= e!4417016 (set.union call!678640 call!678644))))

(declare-fun b!7378829 () Bool)

(declare-fun e!4417015 () (Set Context!16512))

(declare-fun call!678641 () (Set Context!16512))

(assert (=> b!7378829 (= e!4417015 (set.union call!678640 call!678641))))

(declare-fun bm!678635 () Bool)

(declare-fun call!678643 () List!71812)

(declare-fun call!678645 () List!71812)

(assert (=> bm!678635 (= call!678643 call!678645)))

(declare-fun c!1371511 () Bool)

(declare-fun c!1371508 () Bool)

(declare-fun bm!678636 () Bool)

(assert (=> bm!678636 (= call!678641 (derivationStepZipperDown!3142 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))) (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643)) c!10362))))

(declare-fun b!7378830 () Bool)

(declare-fun e!4417019 () (Set Context!16512))

(assert (=> b!7378830 (= e!4417019 (set.insert (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (as set.empty (Set Context!16512))))))

(declare-fun b!7378831 () Bool)

(assert (=> b!7378831 (= e!4417017 (as set.empty (Set Context!16512)))))

(declare-fun b!7378832 () Bool)

(declare-fun e!4417018 () Bool)

(assert (=> b!7378832 (= c!1371508 e!4417018)))

(declare-fun res!2976452 () Bool)

(assert (=> b!7378832 (=> (not res!2976452) (not e!4417018))))

(assert (=> b!7378832 (= res!2976452 (is-Concat!28161 r1!2370))))

(assert (=> b!7378832 (= e!4417015 e!4417016)))

(declare-fun bm!678637 () Bool)

(assert (=> bm!678637 (= call!678645 ($colon$colon!3294 (exprs!8756 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)))) (ite (or c!1371508 c!1371510) (regTwo!39144 r1!2370) r1!2370)))))

(declare-fun b!7378833 () Bool)

(assert (=> b!7378833 (= e!4417017 call!678642)))

(declare-fun d!2285193 () Bool)

(declare-fun c!1371509 () Bool)

(assert (=> d!2285193 (= c!1371509 (and (is-ElementMatch!19316 r1!2370) (= (c!1371474 r1!2370) c!10362)))))

(assert (=> d!2285193 (= (derivationStepZipperDown!3142 r1!2370 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) c!10362) e!4417019)))

(declare-fun bm!678638 () Bool)

(assert (=> bm!678638 (= call!678644 call!678641)))

(declare-fun bm!678639 () Bool)

(assert (=> bm!678639 (= call!678640 (derivationStepZipperDown!3142 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)) (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645)) c!10362))))

(declare-fun b!7378834 () Bool)

(assert (=> b!7378834 (= e!4417018 (nullable!8390 (regOne!39144 r1!2370)))))

(declare-fun bm!678640 () Bool)

(assert (=> bm!678640 (= call!678642 call!678644)))

(declare-fun b!7378835 () Bool)

(assert (=> b!7378835 (= e!4417019 e!4417015)))

(assert (=> b!7378835 (= c!1371511 (is-Union!19316 r1!2370))))

(assert (= (and d!2285193 c!1371509) b!7378830))

(assert (= (and d!2285193 (not c!1371509)) b!7378835))

(assert (= (and b!7378835 c!1371511) b!7378829))

(assert (= (and b!7378835 (not c!1371511)) b!7378832))

(assert (= (and b!7378832 res!2976452) b!7378834))

(assert (= (and b!7378832 c!1371508) b!7378828))

(assert (= (and b!7378832 (not c!1371508)) b!7378827))

(assert (= (and b!7378827 c!1371510) b!7378825))

(assert (= (and b!7378827 (not c!1371510)) b!7378826))

(assert (= (and b!7378826 c!1371507) b!7378833))

(assert (= (and b!7378826 (not c!1371507)) b!7378831))

(assert (= (or b!7378825 b!7378833) bm!678635))

(assert (= (or b!7378825 b!7378833) bm!678640))

(assert (= (or b!7378828 bm!678640) bm!678638))

(assert (= (or b!7378828 bm!678635) bm!678637))

(assert (= (or b!7378829 bm!678638) bm!678636))

(assert (= (or b!7378829 b!7378828) bm!678639))

(declare-fun m!8029830 () Bool)

(assert (=> bm!678637 m!8029830))

(assert (=> b!7378834 m!8029758))

(declare-fun m!8029832 () Bool)

(assert (=> bm!678639 m!8029832))

(declare-fun m!8029834 () Bool)

(assert (=> b!7378830 m!8029834))

(declare-fun m!8029836 () Bool)

(assert (=> bm!678636 m!8029836))

(assert (=> b!7378668 d!2285193))

(declare-fun b!7378846 () Bool)

(declare-fun res!2976458 () Bool)

(declare-fun e!4417025 () Bool)

(assert (=> b!7378846 (=> (not res!2976458) (not e!4417025))))

(declare-fun lt!2616748 () List!71812)

(declare-fun size!42157 (List!71812) Int)

(assert (=> b!7378846 (= res!2976458 (= (size!42157 lt!2616748) (+ (size!42157 (exprs!8756 ct1!282)) (size!42157 (exprs!8756 ct2!378)))))))

(declare-fun b!7378844 () Bool)

(declare-fun e!4417026 () List!71812)

(assert (=> b!7378844 (= e!4417026 (exprs!8756 ct2!378))))

(declare-fun b!7378845 () Bool)

(assert (=> b!7378845 (= e!4417026 (Cons!71688 (h!78136 (exprs!8756 ct1!282)) (++!17132 (t!386297 (exprs!8756 ct1!282)) (exprs!8756 ct2!378))))))

(declare-fun d!2285197 () Bool)

(assert (=> d!2285197 e!4417025))

(declare-fun res!2976457 () Bool)

(assert (=> d!2285197 (=> (not res!2976457) (not e!4417025))))

(declare-fun content!15179 (List!71812) (Set Regex!19316))

(assert (=> d!2285197 (= res!2976457 (= (content!15179 lt!2616748) (set.union (content!15179 (exprs!8756 ct1!282)) (content!15179 (exprs!8756 ct2!378)))))))

(assert (=> d!2285197 (= lt!2616748 e!4417026)))

(declare-fun c!1371514 () Bool)

(assert (=> d!2285197 (= c!1371514 (is-Nil!71688 (exprs!8756 ct1!282)))))

(assert (=> d!2285197 (= (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)) lt!2616748)))

(declare-fun b!7378847 () Bool)

(assert (=> b!7378847 (= e!4417025 (or (not (= (exprs!8756 ct2!378) Nil!71688)) (= lt!2616748 (exprs!8756 ct1!282))))))

(assert (= (and d!2285197 c!1371514) b!7378844))

(assert (= (and d!2285197 (not c!1371514)) b!7378845))

(assert (= (and d!2285197 res!2976457) b!7378846))

(assert (= (and b!7378846 res!2976458) b!7378847))

(declare-fun m!8029842 () Bool)

(assert (=> b!7378846 m!8029842))

(declare-fun m!8029844 () Bool)

(assert (=> b!7378846 m!8029844))

(declare-fun m!8029846 () Bool)

(assert (=> b!7378846 m!8029846))

(declare-fun m!8029848 () Bool)

(assert (=> b!7378845 m!8029848))

(declare-fun m!8029850 () Bool)

(assert (=> d!2285197 m!8029850))

(declare-fun m!8029852 () Bool)

(assert (=> d!2285197 m!8029852))

(declare-fun m!8029854 () Bool)

(assert (=> d!2285197 m!8029854))

(assert (=> b!7378668 d!2285197))

(declare-fun d!2285203 () Bool)

(assert (=> d!2285203 (forall!18106 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)) lambda!458480)))

(declare-fun lt!2616751 () Unit!165581)

(declare-fun choose!57339 (List!71812 List!71812 Int) Unit!165581)

(assert (=> d!2285203 (= lt!2616751 (choose!57339 (exprs!8756 ct1!282) (exprs!8756 ct2!378) lambda!458480))))

(assert (=> d!2285203 (forall!18106 (exprs!8756 ct1!282) lambda!458480)))

(assert (=> d!2285203 (= (lemmaConcatPreservesForall!1989 (exprs!8756 ct1!282) (exprs!8756 ct2!378) lambda!458480) lt!2616751)))

(declare-fun bs!1921476 () Bool)

(assert (= bs!1921476 d!2285203))

(assert (=> bs!1921476 m!8029742))

(assert (=> bs!1921476 m!8029742))

(declare-fun m!8029856 () Bool)

(assert (=> bs!1921476 m!8029856))

(declare-fun m!8029858 () Bool)

(assert (=> bs!1921476 m!8029858))

(declare-fun m!8029860 () Bool)

(assert (=> bs!1921476 m!8029860))

(assert (=> b!7378668 d!2285203))

(declare-fun b!7378852 () Bool)

(declare-fun e!4417029 () Bool)

(declare-fun tp!2098452 () Bool)

(declare-fun tp!2098453 () Bool)

(assert (=> b!7378852 (= e!4417029 (and tp!2098452 tp!2098453))))

(assert (=> b!7378666 (= tp!2098417 e!4417029)))

(assert (= (and b!7378666 (is-Cons!71688 (exprs!8756 cWitness!61))) b!7378852))

(declare-fun b!7378853 () Bool)

(declare-fun e!4417030 () Bool)

(declare-fun tp!2098454 () Bool)

(declare-fun tp!2098455 () Bool)

(assert (=> b!7378853 (= e!4417030 (and tp!2098454 tp!2098455))))

(assert (=> b!7378677 (= tp!2098422 e!4417030)))

(assert (= (and b!7378677 (is-Cons!71688 (exprs!8756 ct1!282))) b!7378853))

(declare-fun e!4417033 () Bool)

(assert (=> b!7378670 (= tp!2098420 e!4417033)))

(declare-fun b!7378867 () Bool)

(declare-fun tp!2098466 () Bool)

(declare-fun tp!2098469 () Bool)

(assert (=> b!7378867 (= e!4417033 (and tp!2098466 tp!2098469))))

(declare-fun b!7378864 () Bool)

(assert (=> b!7378864 (= e!4417033 tp_is_empty!48877)))

(declare-fun b!7378866 () Bool)

(declare-fun tp!2098467 () Bool)

(assert (=> b!7378866 (= e!4417033 tp!2098467)))

(declare-fun b!7378865 () Bool)

(declare-fun tp!2098468 () Bool)

(declare-fun tp!2098470 () Bool)

(assert (=> b!7378865 (= e!4417033 (and tp!2098468 tp!2098470))))

(assert (= (and b!7378670 (is-ElementMatch!19316 (regOne!39144 r1!2370))) b!7378864))

(assert (= (and b!7378670 (is-Concat!28161 (regOne!39144 r1!2370))) b!7378865))

(assert (= (and b!7378670 (is-Star!19316 (regOne!39144 r1!2370))) b!7378866))

(assert (= (and b!7378670 (is-Union!19316 (regOne!39144 r1!2370))) b!7378867))

(declare-fun e!4417034 () Bool)

(assert (=> b!7378670 (= tp!2098416 e!4417034)))

(declare-fun b!7378871 () Bool)

(declare-fun tp!2098471 () Bool)

(declare-fun tp!2098474 () Bool)

(assert (=> b!7378871 (= e!4417034 (and tp!2098471 tp!2098474))))

(declare-fun b!7378868 () Bool)

(assert (=> b!7378868 (= e!4417034 tp_is_empty!48877)))

(declare-fun b!7378870 () Bool)

(declare-fun tp!2098472 () Bool)

(assert (=> b!7378870 (= e!4417034 tp!2098472)))

(declare-fun b!7378869 () Bool)

(declare-fun tp!2098473 () Bool)

(declare-fun tp!2098475 () Bool)

(assert (=> b!7378869 (= e!4417034 (and tp!2098473 tp!2098475))))

(assert (= (and b!7378670 (is-ElementMatch!19316 (regTwo!39144 r1!2370))) b!7378868))

(assert (= (and b!7378670 (is-Concat!28161 (regTwo!39144 r1!2370))) b!7378869))

(assert (= (and b!7378670 (is-Star!19316 (regTwo!39144 r1!2370))) b!7378870))

(assert (= (and b!7378670 (is-Union!19316 (regTwo!39144 r1!2370))) b!7378871))

(declare-fun e!4417035 () Bool)

(assert (=> b!7378674 (= tp!2098418 e!4417035)))

(declare-fun b!7378877 () Bool)

(declare-fun tp!2098476 () Bool)

(declare-fun tp!2098479 () Bool)

(assert (=> b!7378877 (= e!4417035 (and tp!2098476 tp!2098479))))

(declare-fun b!7378874 () Bool)

(assert (=> b!7378874 (= e!4417035 tp_is_empty!48877)))

(declare-fun b!7378876 () Bool)

(declare-fun tp!2098477 () Bool)

(assert (=> b!7378876 (= e!4417035 tp!2098477)))

(declare-fun b!7378875 () Bool)

(declare-fun tp!2098478 () Bool)

(declare-fun tp!2098480 () Bool)

(assert (=> b!7378875 (= e!4417035 (and tp!2098478 tp!2098480))))

(assert (= (and b!7378674 (is-ElementMatch!19316 (reg!19645 r1!2370))) b!7378874))

(assert (= (and b!7378674 (is-Concat!28161 (reg!19645 r1!2370))) b!7378875))

(assert (= (and b!7378674 (is-Star!19316 (reg!19645 r1!2370))) b!7378876))

(assert (= (and b!7378674 (is-Union!19316 (reg!19645 r1!2370))) b!7378877))

(declare-fun b!7378878 () Bool)

(declare-fun e!4417036 () Bool)

(declare-fun tp!2098481 () Bool)

(declare-fun tp!2098482 () Bool)

(assert (=> b!7378878 (= e!4417036 (and tp!2098481 tp!2098482))))

(assert (=> b!7378669 (= tp!2098421 e!4417036)))

(assert (= (and b!7378669 (is-Cons!71688 (exprs!8756 ct2!378))) b!7378878))

(declare-fun e!4417039 () Bool)

(assert (=> b!7378667 (= tp!2098419 e!4417039)))

(declare-fun b!7378884 () Bool)

(declare-fun tp!2098483 () Bool)

(declare-fun tp!2098486 () Bool)

(assert (=> b!7378884 (= e!4417039 (and tp!2098483 tp!2098486))))

(declare-fun b!7378881 () Bool)

(assert (=> b!7378881 (= e!4417039 tp_is_empty!48877)))

(declare-fun b!7378883 () Bool)

(declare-fun tp!2098484 () Bool)

(assert (=> b!7378883 (= e!4417039 tp!2098484)))

(declare-fun b!7378882 () Bool)

(declare-fun tp!2098485 () Bool)

(declare-fun tp!2098487 () Bool)

(assert (=> b!7378882 (= e!4417039 (and tp!2098485 tp!2098487))))

(assert (= (and b!7378667 (is-ElementMatch!19316 (regOne!39145 r1!2370))) b!7378881))

(assert (= (and b!7378667 (is-Concat!28161 (regOne!39145 r1!2370))) b!7378882))

(assert (= (and b!7378667 (is-Star!19316 (regOne!39145 r1!2370))) b!7378883))

(assert (= (and b!7378667 (is-Union!19316 (regOne!39145 r1!2370))) b!7378884))

(declare-fun e!4417040 () Bool)

(assert (=> b!7378667 (= tp!2098423 e!4417040)))

(declare-fun b!7378888 () Bool)

(declare-fun tp!2098488 () Bool)

(declare-fun tp!2098491 () Bool)

(assert (=> b!7378888 (= e!4417040 (and tp!2098488 tp!2098491))))

(declare-fun b!7378885 () Bool)

(assert (=> b!7378885 (= e!4417040 tp_is_empty!48877)))

(declare-fun b!7378887 () Bool)

(declare-fun tp!2098489 () Bool)

(assert (=> b!7378887 (= e!4417040 tp!2098489)))

(declare-fun b!7378886 () Bool)

(declare-fun tp!2098490 () Bool)

(declare-fun tp!2098492 () Bool)

(assert (=> b!7378886 (= e!4417040 (and tp!2098490 tp!2098492))))

(assert (= (and b!7378667 (is-ElementMatch!19316 (regTwo!39145 r1!2370))) b!7378885))

(assert (= (and b!7378667 (is-Concat!28161 (regTwo!39145 r1!2370))) b!7378886))

(assert (= (and b!7378667 (is-Star!19316 (regTwo!39145 r1!2370))) b!7378887))

(assert (= (and b!7378667 (is-Union!19316 (regTwo!39145 r1!2370))) b!7378888))

(push 1)

(assert (not b!7378869))

(assert (not bm!678615))

(assert (not bm!678613))

(assert tp_is_empty!48877)

(assert (not b!7378883))

(assert (not b!7378887))

(assert (not d!2285183))

(assert (not b!7378834))

(assert (not b!7378878))

(assert (not bm!678633))

(assert (not b!7378877))

(assert (not bm!678636))

(assert (not d!2285185))

(assert (not b!7378852))

(assert (not bm!678627))

(assert (not b!7378870))

(assert (not b!7378769))

(assert (not b!7378866))

(assert (not bm!678626))

(assert (not bm!678612))

(assert (not b!7378803))

(assert (not d!2285203))

(assert (not b!7378845))

(assert (not d!2285191))

(assert (not bm!678632))

(assert (not b!7378876))

(assert (not b!7378865))

(assert (not b!7378821))

(assert (not b!7378846))

(assert (not d!2285197))

(assert (not b!7378853))

(assert (not b!7378875))

(assert (not b!7378882))

(assert (not b!7378888))

(assert (not bm!678637))

(assert (not b!7378884))

(assert (not b!7378886))

(assert (not d!2285177))

(assert (not b!7378871))

(assert (not b!7378867))

(assert (not d!2285181))

(assert (not bm!678639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7378978 () Bool)

(declare-fun e!4417086 () (Set Context!16512))

(declare-fun call!678672 () (Set Context!16512))

(assert (=> b!7378978 (= e!4417086 call!678672)))

(declare-fun c!1371538 () Bool)

(declare-fun b!7378979 () Bool)

(assert (=> b!7378979 (= c!1371538 (is-Star!19316 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(declare-fun e!4417083 () (Set Context!16512))

(assert (=> b!7378979 (= e!4417086 e!4417083)))

(declare-fun b!7378980 () Bool)

(declare-fun e!4417082 () (Set Context!16512))

(assert (=> b!7378980 (= e!4417082 e!4417086)))

(declare-fun c!1371541 () Bool)

(assert (=> b!7378980 (= c!1371541 (is-Concat!28161 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(declare-fun b!7378981 () Bool)

(declare-fun call!678670 () (Set Context!16512))

(declare-fun call!678674 () (Set Context!16512))

(assert (=> b!7378981 (= e!4417082 (set.union call!678670 call!678674))))

(declare-fun b!7378982 () Bool)

(declare-fun e!4417081 () (Set Context!16512))

(declare-fun call!678671 () (Set Context!16512))

(assert (=> b!7378982 (= e!4417081 (set.union call!678670 call!678671))))

(declare-fun bm!678665 () Bool)

(declare-fun call!678673 () List!71812)

(declare-fun call!678675 () List!71812)

(assert (=> bm!678665 (= call!678673 call!678675)))

(declare-fun bm!678666 () Bool)

(declare-fun c!1371542 () Bool)

(declare-fun c!1371539 () Bool)

(assert (=> bm!678666 (= call!678671 (derivationStepZipperDown!3142 (ite c!1371542 (regTwo!39145 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371539 (regTwo!39144 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371541 (regOne!39144 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (reg!19645 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))) (ite (or c!1371542 c!1371539) (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643)) (Context!16513 call!678673)) c!10362))))

(declare-fun e!4417085 () (Set Context!16512))

(declare-fun b!7378983 () Bool)

(assert (=> b!7378983 (= e!4417085 (set.insert (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643)) (as set.empty (Set Context!16512))))))

(declare-fun b!7378984 () Bool)

(assert (=> b!7378984 (= e!4417083 (as set.empty (Set Context!16512)))))

(declare-fun b!7378985 () Bool)

(declare-fun e!4417084 () Bool)

(assert (=> b!7378985 (= c!1371539 e!4417084)))

(declare-fun res!2976469 () Bool)

(assert (=> b!7378985 (=> (not res!2976469) (not e!4417084))))

(assert (=> b!7378985 (= res!2976469 (is-Concat!28161 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(assert (=> b!7378985 (= e!4417081 e!4417082)))

(declare-fun bm!678667 () Bool)

(assert (=> bm!678667 (= call!678675 ($colon$colon!3294 (exprs!8756 (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643))) (ite (or c!1371539 c!1371541) (regTwo!39144 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))))

(declare-fun b!7378986 () Bool)

(assert (=> b!7378986 (= e!4417083 call!678672)))

(declare-fun d!2285217 () Bool)

(declare-fun c!1371540 () Bool)

(assert (=> d!2285217 (= c!1371540 (and (is-ElementMatch!19316 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (= (c!1371474 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) c!10362)))))

(assert (=> d!2285217 (= (derivationStepZipperDown!3142 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))) (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643)) c!10362) e!4417085)))

(declare-fun bm!678668 () Bool)

(assert (=> bm!678668 (= call!678674 call!678671)))

(declare-fun bm!678669 () Bool)

(assert (=> bm!678669 (= call!678670 (derivationStepZipperDown!3142 (ite c!1371542 (regOne!39145 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (regOne!39144 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))) (ite c!1371542 (ite (or c!1371511 c!1371508) (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678643)) (Context!16513 call!678675)) c!10362))))

(declare-fun b!7378987 () Bool)

(assert (=> b!7378987 (= e!4417084 (nullable!8390 (regOne!39144 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))))

(declare-fun bm!678670 () Bool)

(assert (=> bm!678670 (= call!678672 call!678674)))

(declare-fun b!7378988 () Bool)

(assert (=> b!7378988 (= e!4417085 e!4417081)))

(assert (=> b!7378988 (= c!1371542 (is-Union!19316 (ite c!1371511 (regTwo!39145 r1!2370) (ite c!1371508 (regTwo!39144 r1!2370) (ite c!1371510 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(assert (= (and d!2285217 c!1371540) b!7378983))

(assert (= (and d!2285217 (not c!1371540)) b!7378988))

(assert (= (and b!7378988 c!1371542) b!7378982))

(assert (= (and b!7378988 (not c!1371542)) b!7378985))

(assert (= (and b!7378985 res!2976469) b!7378987))

(assert (= (and b!7378985 c!1371539) b!7378981))

(assert (= (and b!7378985 (not c!1371539)) b!7378980))

(assert (= (and b!7378980 c!1371541) b!7378978))

(assert (= (and b!7378980 (not c!1371541)) b!7378979))

(assert (= (and b!7378979 c!1371538) b!7378986))

(assert (= (and b!7378979 (not c!1371538)) b!7378984))

(assert (= (or b!7378978 b!7378986) bm!678665))

(assert (= (or b!7378978 b!7378986) bm!678670))

(assert (= (or b!7378981 bm!678670) bm!678668))

(assert (= (or b!7378981 bm!678665) bm!678667))

(assert (= (or b!7378982 bm!678668) bm!678666))

(assert (= (or b!7378982 b!7378981) bm!678669))

(declare-fun m!8029902 () Bool)

(assert (=> bm!678667 m!8029902))

(declare-fun m!8029904 () Bool)

(assert (=> b!7378987 m!8029904))

(declare-fun m!8029906 () Bool)

(assert (=> bm!678669 m!8029906))

(declare-fun m!8029908 () Bool)

(assert (=> b!7378983 m!8029908))

(declare-fun m!8029910 () Bool)

(assert (=> bm!678666 m!8029910))

(assert (=> bm!678636 d!2285217))

(declare-fun b!7378989 () Bool)

(declare-fun e!4417092 () (Set Context!16512))

(declare-fun call!678678 () (Set Context!16512))

(assert (=> b!7378989 (= e!4417092 call!678678)))

(declare-fun b!7378990 () Bool)

(declare-fun c!1371543 () Bool)

(assert (=> b!7378990 (= c!1371543 (is-Star!19316 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(declare-fun e!4417089 () (Set Context!16512))

(assert (=> b!7378990 (= e!4417092 e!4417089)))

(declare-fun b!7378991 () Bool)

(declare-fun e!4417088 () (Set Context!16512))

(assert (=> b!7378991 (= e!4417088 e!4417092)))

(declare-fun c!1371546 () Bool)

(assert (=> b!7378991 (= c!1371546 (is-Concat!28161 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(declare-fun b!7378992 () Bool)

(declare-fun call!678676 () (Set Context!16512))

(declare-fun call!678680 () (Set Context!16512))

(assert (=> b!7378992 (= e!4417088 (set.union call!678676 call!678680))))

(declare-fun b!7378993 () Bool)

(declare-fun e!4417087 () (Set Context!16512))

(declare-fun call!678677 () (Set Context!16512))

(assert (=> b!7378993 (= e!4417087 (set.union call!678676 call!678677))))

(declare-fun bm!678671 () Bool)

(declare-fun call!678679 () List!71812)

(declare-fun call!678681 () List!71812)

(assert (=> bm!678671 (= call!678679 call!678681)))

(declare-fun c!1371544 () Bool)

(declare-fun bm!678672 () Bool)

(declare-fun c!1371547 () Bool)

(assert (=> bm!678672 (= call!678677 (derivationStepZipperDown!3142 (ite c!1371547 (regTwo!39145 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371544 (regTwo!39144 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371546 (regOne!39144 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (reg!19645 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))) (ite (or c!1371547 c!1371544) (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619)) (Context!16513 call!678679)) c!10362))))

(declare-fun e!4417091 () (Set Context!16512))

(declare-fun b!7378994 () Bool)

(assert (=> b!7378994 (= e!4417091 (set.insert (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619)) (as set.empty (Set Context!16512))))))

(declare-fun b!7378995 () Bool)

(assert (=> b!7378995 (= e!4417089 (as set.empty (Set Context!16512)))))

(declare-fun b!7378996 () Bool)

(declare-fun e!4417090 () Bool)

(assert (=> b!7378996 (= c!1371544 e!4417090)))

(declare-fun res!2976470 () Bool)

(assert (=> b!7378996 (=> (not res!2976470) (not e!4417090))))

(assert (=> b!7378996 (= res!2976470 (is-Concat!28161 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(assert (=> b!7378996 (= e!4417087 e!4417088)))

(declare-fun bm!678673 () Bool)

(assert (=> bm!678673 (= call!678681 ($colon$colon!3294 (exprs!8756 (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619))) (ite (or c!1371544 c!1371546) (regTwo!39144 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))))

(declare-fun b!7378997 () Bool)

(assert (=> b!7378997 (= e!4417089 call!678678)))

(declare-fun d!2285219 () Bool)

(declare-fun c!1371545 () Bool)

(assert (=> d!2285219 (= c!1371545 (and (is-ElementMatch!19316 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (= (c!1371474 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) c!10362)))))

(assert (=> d!2285219 (= (derivationStepZipperDown!3142 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))) (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619)) c!10362) e!4417091)))

(declare-fun bm!678674 () Bool)

(assert (=> bm!678674 (= call!678680 call!678677)))

(declare-fun bm!678675 () Bool)

(assert (=> bm!678675 (= call!678676 (derivationStepZipperDown!3142 (ite c!1371547 (regOne!39145 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))) (regOne!39144 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))) (ite c!1371547 (ite (or c!1371494 c!1371491) ct1!282 (Context!16513 call!678619)) (Context!16513 call!678681)) c!10362))))

(declare-fun b!7378998 () Bool)

(assert (=> b!7378998 (= e!4417090 (nullable!8390 (regOne!39144 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370)))))))))

(declare-fun bm!678676 () Bool)

(assert (=> bm!678676 (= call!678678 call!678680)))

(declare-fun b!7378999 () Bool)

(assert (=> b!7378999 (= e!4417091 e!4417087)))

(assert (=> b!7378999 (= c!1371547 (is-Union!19316 (ite c!1371494 (regTwo!39145 r1!2370) (ite c!1371491 (regTwo!39144 r1!2370) (ite c!1371493 (regOne!39144 r1!2370) (reg!19645 r1!2370))))))))

(assert (= (and d!2285219 c!1371545) b!7378994))

(assert (= (and d!2285219 (not c!1371545)) b!7378999))

(assert (= (and b!7378999 c!1371547) b!7378993))

(assert (= (and b!7378999 (not c!1371547)) b!7378996))

(assert (= (and b!7378996 res!2976470) b!7378998))

(assert (= (and b!7378996 c!1371544) b!7378992))

(assert (= (and b!7378996 (not c!1371544)) b!7378991))

(assert (= (and b!7378991 c!1371546) b!7378989))

(assert (= (and b!7378991 (not c!1371546)) b!7378990))

(assert (= (and b!7378990 c!1371543) b!7378997))

(assert (= (and b!7378990 (not c!1371543)) b!7378995))

(assert (= (or b!7378989 b!7378997) bm!678671))

(assert (= (or b!7378989 b!7378997) bm!678676))

(assert (= (or b!7378992 bm!678676) bm!678674))

(assert (= (or b!7378992 bm!678671) bm!678673))

(assert (= (or b!7378993 bm!678674) bm!678672))

(assert (= (or b!7378993 b!7378992) bm!678675))

(declare-fun m!8029912 () Bool)

(assert (=> bm!678673 m!8029912))

(declare-fun m!8029914 () Bool)

(assert (=> b!7378998 m!8029914))

(declare-fun m!8029916 () Bool)

(assert (=> bm!678675 m!8029916))

(declare-fun m!8029918 () Bool)

(assert (=> b!7378994 m!8029918))

(declare-fun m!8029920 () Bool)

(assert (=> bm!678672 m!8029920))

(assert (=> bm!678612 d!2285219))

(declare-fun call!678684 () Bool)

(declare-fun c!1371549 () Bool)

(declare-fun c!1371548 () Bool)

(declare-fun bm!678677 () Bool)

(assert (=> bm!678677 (= call!678684 (validRegex!9912 (ite c!1371548 (reg!19645 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))) (ite c!1371549 (regTwo!39145 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))) (regOne!39144 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370))))))))))

(declare-fun call!678682 () Bool)

(declare-fun bm!678678 () Bool)

(assert (=> bm!678678 (= call!678682 (validRegex!9912 (ite c!1371549 (regOne!39145 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))) (regTwo!39144 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))))

(declare-fun b!7379000 () Bool)

(declare-fun e!4417098 () Bool)

(declare-fun e!4417099 () Bool)

(assert (=> b!7379000 (= e!4417098 e!4417099)))

(assert (=> b!7379000 (= c!1371548 (is-Star!19316 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun b!7379001 () Bool)

(declare-fun res!2976474 () Bool)

(declare-fun e!4417093 () Bool)

(assert (=> b!7379001 (=> res!2976474 e!4417093)))

(assert (=> b!7379001 (= res!2976474 (not (is-Concat!28161 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370))))))))

(declare-fun e!4417094 () Bool)

(assert (=> b!7379001 (= e!4417094 e!4417093)))

(declare-fun b!7379002 () Bool)

(declare-fun e!4417096 () Bool)

(assert (=> b!7379002 (= e!4417096 call!678684)))

(declare-fun d!2285221 () Bool)

(declare-fun res!2976475 () Bool)

(assert (=> d!2285221 (=> res!2976475 e!4417098)))

(assert (=> d!2285221 (= res!2976475 (is-ElementMatch!19316 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))

(assert (=> d!2285221 (= (validRegex!9912 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))) e!4417098)))

(declare-fun b!7379003 () Bool)

(declare-fun e!4417097 () Bool)

(declare-fun call!678683 () Bool)

(assert (=> b!7379003 (= e!4417097 call!678683)))

(declare-fun bm!678679 () Bool)

(assert (=> bm!678679 (= call!678683 call!678684)))

(declare-fun b!7379004 () Bool)

(declare-fun e!4417095 () Bool)

(assert (=> b!7379004 (= e!4417095 call!678682)))

(declare-fun b!7379005 () Bool)

(assert (=> b!7379005 (= e!4417099 e!4417096)))

(declare-fun res!2976473 () Bool)

(assert (=> b!7379005 (= res!2976473 (not (nullable!8390 (reg!19645 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))))

(assert (=> b!7379005 (=> (not res!2976473) (not e!4417096))))

(declare-fun b!7379006 () Bool)

(assert (=> b!7379006 (= e!4417099 e!4417094)))

(assert (=> b!7379006 (= c!1371549 (is-Union!19316 (ite c!1371501 (reg!19645 r1!2370) (ite c!1371502 (regTwo!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun b!7379007 () Bool)

(assert (=> b!7379007 (= e!4417093 e!4417095)))

(declare-fun res!2976472 () Bool)

(assert (=> b!7379007 (=> (not res!2976472) (not e!4417095))))

(assert (=> b!7379007 (= res!2976472 call!678683)))

(declare-fun b!7379008 () Bool)

(declare-fun res!2976471 () Bool)

(assert (=> b!7379008 (=> (not res!2976471) (not e!4417097))))

(assert (=> b!7379008 (= res!2976471 call!678682)))

(assert (=> b!7379008 (= e!4417094 e!4417097)))

(assert (= (and d!2285221 (not res!2976475)) b!7379000))

(assert (= (and b!7379000 c!1371548) b!7379005))

(assert (= (and b!7379000 (not c!1371548)) b!7379006))

(assert (= (and b!7379005 res!2976473) b!7379002))

(assert (= (and b!7379006 c!1371549) b!7379008))

(assert (= (and b!7379006 (not c!1371549)) b!7379001))

(assert (= (and b!7379008 res!2976471) b!7379003))

(assert (= (and b!7379001 (not res!2976474)) b!7379007))

(assert (= (and b!7379007 res!2976472) b!7379004))

(assert (= (or b!7379008 b!7379004) bm!678678))

(assert (= (or b!7379003 b!7379007) bm!678679))

(assert (= (or b!7379002 bm!678679) bm!678677))

(declare-fun m!8029922 () Bool)

(assert (=> bm!678677 m!8029922))

(declare-fun m!8029924 () Bool)

(assert (=> bm!678678 m!8029924))

(declare-fun m!8029926 () Bool)

(assert (=> b!7379005 m!8029926))

(assert (=> bm!678626 d!2285221))

(declare-fun d!2285223 () Bool)

(declare-fun res!2976480 () Bool)

(declare-fun e!4417104 () Bool)

(assert (=> d!2285223 (=> res!2976480 e!4417104)))

(assert (=> d!2285223 (= res!2976480 (is-Nil!71688 (exprs!8756 ct2!378)))))

(assert (=> d!2285223 (= (forall!18106 (exprs!8756 ct2!378) lambda!458488) e!4417104)))

(declare-fun b!7379013 () Bool)

(declare-fun e!4417105 () Bool)

(assert (=> b!7379013 (= e!4417104 e!4417105)))

(declare-fun res!2976481 () Bool)

(assert (=> b!7379013 (=> (not res!2976481) (not e!4417105))))

(declare-fun dynLambda!29532 (Int Regex!19316) Bool)

(assert (=> b!7379013 (= res!2976481 (dynLambda!29532 lambda!458488 (h!78136 (exprs!8756 ct2!378))))))

(declare-fun b!7379014 () Bool)

(assert (=> b!7379014 (= e!4417105 (forall!18106 (t!386297 (exprs!8756 ct2!378)) lambda!458488))))

(assert (= (and d!2285223 (not res!2976480)) b!7379013))

(assert (= (and b!7379013 res!2976481) b!7379014))

(declare-fun b_lambda!284651 () Bool)

(assert (=> (not b_lambda!284651) (not b!7379013)))

(declare-fun m!8029928 () Bool)

(assert (=> b!7379013 m!8029928))

(declare-fun m!8029930 () Bool)

(assert (=> b!7379014 m!8029930))

(assert (=> d!2285183 d!2285223))

(declare-fun c!1371550 () Bool)

(declare-fun c!1371551 () Bool)

(declare-fun bm!678680 () Bool)

(declare-fun call!678687 () Bool)

(assert (=> bm!678680 (= call!678687 (validRegex!9912 (ite c!1371550 (reg!19645 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))) (ite c!1371551 (regTwo!39145 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))) (regOne!39144 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370)))))))))

(declare-fun bm!678681 () Bool)

(declare-fun call!678685 () Bool)

(assert (=> bm!678681 (= call!678685 (validRegex!9912 (ite c!1371551 (regOne!39145 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))) (regTwo!39144 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))))

(declare-fun b!7379015 () Bool)

(declare-fun e!4417111 () Bool)

(declare-fun e!4417112 () Bool)

(assert (=> b!7379015 (= e!4417111 e!4417112)))

(assert (=> b!7379015 (= c!1371550 (is-Star!19316 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))

(declare-fun b!7379016 () Bool)

(declare-fun res!2976485 () Bool)

(declare-fun e!4417106 () Bool)

(assert (=> b!7379016 (=> res!2976485 e!4417106)))

(assert (=> b!7379016 (= res!2976485 (not (is-Concat!28161 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370)))))))

(declare-fun e!4417107 () Bool)

(assert (=> b!7379016 (= e!4417107 e!4417106)))

(declare-fun b!7379017 () Bool)

(declare-fun e!4417109 () Bool)

(assert (=> b!7379017 (= e!4417109 call!678687)))

(declare-fun d!2285225 () Bool)

(declare-fun res!2976486 () Bool)

(assert (=> d!2285225 (=> res!2976486 e!4417111)))

(assert (=> d!2285225 (= res!2976486 (is-ElementMatch!19316 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))

(assert (=> d!2285225 (= (validRegex!9912 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))) e!4417111)))

(declare-fun b!7379018 () Bool)

(declare-fun e!4417110 () Bool)

(declare-fun call!678686 () Bool)

(assert (=> b!7379018 (= e!4417110 call!678686)))

(declare-fun bm!678682 () Bool)

(assert (=> bm!678682 (= call!678686 call!678687)))

(declare-fun b!7379019 () Bool)

(declare-fun e!4417108 () Bool)

(assert (=> b!7379019 (= e!4417108 call!678685)))

(declare-fun b!7379020 () Bool)

(assert (=> b!7379020 (= e!4417112 e!4417109)))

(declare-fun res!2976484 () Bool)

(assert (=> b!7379020 (= res!2976484 (not (nullable!8390 (reg!19645 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))))

(assert (=> b!7379020 (=> (not res!2976484) (not e!4417109))))

(declare-fun b!7379021 () Bool)

(assert (=> b!7379021 (= e!4417112 e!4417107)))

(assert (=> b!7379021 (= c!1371551 (is-Union!19316 (ite c!1371502 (regOne!39145 r1!2370) (regTwo!39144 r1!2370))))))

(declare-fun b!7379022 () Bool)

(assert (=> b!7379022 (= e!4417106 e!4417108)))

(declare-fun res!2976483 () Bool)

(assert (=> b!7379022 (=> (not res!2976483) (not e!4417108))))

(assert (=> b!7379022 (= res!2976483 call!678686)))

(declare-fun b!7379023 () Bool)

(declare-fun res!2976482 () Bool)

(assert (=> b!7379023 (=> (not res!2976482) (not e!4417110))))

(assert (=> b!7379023 (= res!2976482 call!678685)))

(assert (=> b!7379023 (= e!4417107 e!4417110)))

(assert (= (and d!2285225 (not res!2976486)) b!7379015))

(assert (= (and b!7379015 c!1371550) b!7379020))

(assert (= (and b!7379015 (not c!1371550)) b!7379021))

(assert (= (and b!7379020 res!2976484) b!7379017))

(assert (= (and b!7379021 c!1371551) b!7379023))

(assert (= (and b!7379021 (not c!1371551)) b!7379016))

(assert (= (and b!7379023 res!2976482) b!7379018))

(assert (= (and b!7379016 (not res!2976485)) b!7379022))

(assert (= (and b!7379022 res!2976483) b!7379019))

(assert (= (or b!7379023 b!7379019) bm!678681))

(assert (= (or b!7379018 b!7379022) bm!678682))

(assert (= (or b!7379017 bm!678682) bm!678680))

(declare-fun m!8029932 () Bool)

(assert (=> bm!678680 m!8029932))

(declare-fun m!8029934 () Bool)

(assert (=> bm!678681 m!8029934))

(declare-fun m!8029936 () Bool)

(assert (=> b!7379020 m!8029936))

(assert (=> bm!678627 d!2285225))

(declare-fun d!2285227 () Bool)

(assert (=> d!2285227 (= ($colon$colon!3294 (exprs!8756 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)))) (ite (or c!1371508 c!1371510) (regTwo!39144 r1!2370) r1!2370)) (Cons!71688 (ite (or c!1371508 c!1371510) (regTwo!39144 r1!2370) r1!2370) (exprs!8756 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))))))))

(assert (=> bm!678637 d!2285227))

(declare-fun b!7379024 () Bool)

(declare-fun e!4417118 () (Set Context!16512))

(declare-fun call!678690 () (Set Context!16512))

(assert (=> b!7379024 (= e!4417118 call!678690)))

(declare-fun b!7379025 () Bool)

(declare-fun c!1371552 () Bool)

(assert (=> b!7379025 (= c!1371552 (is-Star!19316 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(declare-fun e!4417115 () (Set Context!16512))

(assert (=> b!7379025 (= e!4417118 e!4417115)))

(declare-fun b!7379026 () Bool)

(declare-fun e!4417114 () (Set Context!16512))

(assert (=> b!7379026 (= e!4417114 e!4417118)))

(declare-fun c!1371555 () Bool)

(assert (=> b!7379026 (= c!1371555 (is-Concat!28161 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(declare-fun b!7379027 () Bool)

(declare-fun call!678688 () (Set Context!16512))

(declare-fun call!678692 () (Set Context!16512))

(assert (=> b!7379027 (= e!4417114 (set.union call!678688 call!678692))))

(declare-fun b!7379028 () Bool)

(declare-fun e!4417113 () (Set Context!16512))

(declare-fun call!678689 () (Set Context!16512))

(assert (=> b!7379028 (= e!4417113 (set.union call!678688 call!678689))))

(declare-fun bm!678683 () Bool)

(declare-fun call!678691 () List!71812)

(declare-fun call!678693 () List!71812)

(assert (=> bm!678683 (= call!678691 call!678693)))

(declare-fun c!1371553 () Bool)

(declare-fun c!1371556 () Bool)

(declare-fun bm!678684 () Bool)

(assert (=> bm!678684 (= call!678689 (derivationStepZipperDown!3142 (ite c!1371556 (regTwo!39145 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371553 (regTwo!39144 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371555 (regOne!39144 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (reg!19645 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))) (ite (or c!1371556 c!1371553) (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645)) (Context!16513 call!678691)) c!10362))))

(declare-fun e!4417117 () (Set Context!16512))

(declare-fun b!7379029 () Bool)

(assert (=> b!7379029 (= e!4417117 (set.insert (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645)) (as set.empty (Set Context!16512))))))

(declare-fun b!7379030 () Bool)

(assert (=> b!7379030 (= e!4417115 (as set.empty (Set Context!16512)))))

(declare-fun b!7379031 () Bool)

(declare-fun e!4417116 () Bool)

(assert (=> b!7379031 (= c!1371553 e!4417116)))

(declare-fun res!2976487 () Bool)

(assert (=> b!7379031 (=> (not res!2976487) (not e!4417116))))

(assert (=> b!7379031 (= res!2976487 (is-Concat!28161 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(assert (=> b!7379031 (= e!4417113 e!4417114)))

(declare-fun bm!678685 () Bool)

(assert (=> bm!678685 (= call!678693 ($colon$colon!3294 (exprs!8756 (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645))) (ite (or c!1371553 c!1371555) (regTwo!39144 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun b!7379032 () Bool)

(assert (=> b!7379032 (= e!4417115 call!678690)))

(declare-fun c!1371554 () Bool)

(declare-fun d!2285229 () Bool)

(assert (=> d!2285229 (= c!1371554 (and (is-ElementMatch!19316 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (= (c!1371474 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) c!10362)))))

(assert (=> d!2285229 (= (derivationStepZipperDown!3142 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)) (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645)) c!10362) e!4417117)))

(declare-fun bm!678686 () Bool)

(assert (=> bm!678686 (= call!678692 call!678689)))

(declare-fun bm!678687 () Bool)

(assert (=> bm!678687 (= call!678688 (derivationStepZipperDown!3142 (ite c!1371556 (regOne!39145 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (regOne!39144 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))) (ite c!1371556 (ite c!1371511 (Context!16513 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) (Context!16513 call!678645)) (Context!16513 call!678693)) c!10362))))

(declare-fun b!7379033 () Bool)

(assert (=> b!7379033 (= e!4417116 (nullable!8390 (regOne!39144 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun bm!678688 () Bool)

(assert (=> bm!678688 (= call!678690 call!678692)))

(declare-fun b!7379034 () Bool)

(assert (=> b!7379034 (= e!4417117 e!4417113)))

(assert (=> b!7379034 (= c!1371556 (is-Union!19316 (ite c!1371511 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(assert (= (and d!2285229 c!1371554) b!7379029))

(assert (= (and d!2285229 (not c!1371554)) b!7379034))

(assert (= (and b!7379034 c!1371556) b!7379028))

(assert (= (and b!7379034 (not c!1371556)) b!7379031))

(assert (= (and b!7379031 res!2976487) b!7379033))

(assert (= (and b!7379031 c!1371553) b!7379027))

(assert (= (and b!7379031 (not c!1371553)) b!7379026))

(assert (= (and b!7379026 c!1371555) b!7379024))

(assert (= (and b!7379026 (not c!1371555)) b!7379025))

(assert (= (and b!7379025 c!1371552) b!7379032))

(assert (= (and b!7379025 (not c!1371552)) b!7379030))

(assert (= (or b!7379024 b!7379032) bm!678683))

(assert (= (or b!7379024 b!7379032) bm!678688))

(assert (= (or b!7379027 bm!678688) bm!678686))

(assert (= (or b!7379027 bm!678683) bm!678685))

(assert (= (or b!7379028 bm!678686) bm!678684))

(assert (= (or b!7379028 b!7379027) bm!678687))

(declare-fun m!8029938 () Bool)

(assert (=> bm!678685 m!8029938))

(declare-fun m!8029940 () Bool)

(assert (=> b!7379033 m!8029940))

(declare-fun m!8029942 () Bool)

(assert (=> bm!678687 m!8029942))

(declare-fun m!8029944 () Bool)

(assert (=> b!7379029 m!8029944))

(declare-fun m!8029946 () Bool)

(assert (=> bm!678684 m!8029946))

(assert (=> bm!678639 d!2285229))

(declare-fun d!2285231 () Bool)

(declare-fun res!2976488 () Bool)

(declare-fun e!4417119 () Bool)

(assert (=> d!2285231 (=> res!2976488 e!4417119)))

(assert (=> d!2285231 (= res!2976488 (is-Nil!71688 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))))))

(assert (=> d!2285231 (= (forall!18106 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)) lambda!458480) e!4417119)))

(declare-fun b!7379035 () Bool)

(declare-fun e!4417120 () Bool)

(assert (=> b!7379035 (= e!4417119 e!4417120)))

(declare-fun res!2976489 () Bool)

(assert (=> b!7379035 (=> (not res!2976489) (not e!4417120))))

(assert (=> b!7379035 (= res!2976489 (dynLambda!29532 lambda!458480 (h!78136 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)))))))

(declare-fun b!7379036 () Bool)

(assert (=> b!7379036 (= e!4417120 (forall!18106 (t!386297 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378))) lambda!458480))))

(assert (= (and d!2285231 (not res!2976488)) b!7379035))

(assert (= (and b!7379035 res!2976489) b!7379036))

(declare-fun b_lambda!284653 () Bool)

(assert (=> (not b_lambda!284653) (not b!7379035)))

(declare-fun m!8029948 () Bool)

(assert (=> b!7379035 m!8029948))

(declare-fun m!8029950 () Bool)

(assert (=> b!7379036 m!8029950))

(assert (=> d!2285203 d!2285231))

(assert (=> d!2285203 d!2285197))

(declare-fun d!2285233 () Bool)

(assert (=> d!2285233 (forall!18106 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)) lambda!458480)))

(assert (=> d!2285233 true))

(declare-fun _$78!968 () Unit!165581)

(assert (=> d!2285233 (= (choose!57339 (exprs!8756 ct1!282) (exprs!8756 ct2!378) lambda!458480) _$78!968)))

(declare-fun bs!1921484 () Bool)

(assert (= bs!1921484 d!2285233))

(assert (=> bs!1921484 m!8029742))

(assert (=> bs!1921484 m!8029742))

(assert (=> bs!1921484 m!8029856))

(assert (=> d!2285203 d!2285233))

(declare-fun d!2285235 () Bool)

(declare-fun res!2976490 () Bool)

(declare-fun e!4417121 () Bool)

(assert (=> d!2285235 (=> res!2976490 e!4417121)))

(assert (=> d!2285235 (= res!2976490 (is-Nil!71688 (exprs!8756 ct1!282)))))

(assert (=> d!2285235 (= (forall!18106 (exprs!8756 ct1!282) lambda!458480) e!4417121)))

(declare-fun b!7379037 () Bool)

(declare-fun e!4417122 () Bool)

(assert (=> b!7379037 (= e!4417121 e!4417122)))

(declare-fun res!2976491 () Bool)

(assert (=> b!7379037 (=> (not res!2976491) (not e!4417122))))

(assert (=> b!7379037 (= res!2976491 (dynLambda!29532 lambda!458480 (h!78136 (exprs!8756 ct1!282))))))

(declare-fun b!7379038 () Bool)

(assert (=> b!7379038 (= e!4417122 (forall!18106 (t!386297 (exprs!8756 ct1!282)) lambda!458480))))

(assert (= (and d!2285235 (not res!2976490)) b!7379037))

(assert (= (and b!7379037 res!2976491) b!7379038))

(declare-fun b_lambda!284655 () Bool)

(assert (=> (not b_lambda!284655) (not b!7379037)))

(declare-fun m!8029952 () Bool)

(assert (=> b!7379037 m!8029952))

(declare-fun m!8029954 () Bool)

(assert (=> b!7379038 m!8029954))

(assert (=> d!2285203 d!2285235))

(declare-fun b!7379053 () Bool)

(declare-fun e!4417139 () Bool)

(declare-fun e!4417135 () Bool)

(assert (=> b!7379053 (= e!4417139 e!4417135)))

(declare-fun res!2976505 () Bool)

(declare-fun call!678699 () Bool)

(assert (=> b!7379053 (= res!2976505 call!678699)))

(assert (=> b!7379053 (=> (not res!2976505) (not e!4417135))))

(declare-fun b!7379054 () Bool)

(declare-fun e!4417138 () Bool)

(assert (=> b!7379054 (= e!4417138 call!678699)))

(declare-fun d!2285237 () Bool)

(declare-fun res!2976506 () Bool)

(declare-fun e!4417137 () Bool)

(assert (=> d!2285237 (=> res!2976506 e!4417137)))

(assert (=> d!2285237 (= res!2976506 (is-EmptyExpr!19316 (regOne!39144 r1!2370)))))

(assert (=> d!2285237 (= (nullableFct!3363 (regOne!39144 r1!2370)) e!4417137)))

(declare-fun b!7379055 () Bool)

(declare-fun e!4417136 () Bool)

(declare-fun e!4417140 () Bool)

(assert (=> b!7379055 (= e!4417136 e!4417140)))

(declare-fun res!2976503 () Bool)

(assert (=> b!7379055 (=> res!2976503 e!4417140)))

(assert (=> b!7379055 (= res!2976503 (is-Star!19316 (regOne!39144 r1!2370)))))

(declare-fun bm!678693 () Bool)

(declare-fun c!1371559 () Bool)

(assert (=> bm!678693 (= call!678699 (nullable!8390 (ite c!1371559 (regTwo!39145 (regOne!39144 r1!2370)) (regOne!39144 (regOne!39144 r1!2370)))))))

(declare-fun b!7379056 () Bool)

(assert (=> b!7379056 (= e!4417139 e!4417138)))

(declare-fun res!2976502 () Bool)

(declare-fun call!678698 () Bool)

(assert (=> b!7379056 (= res!2976502 call!678698)))

(assert (=> b!7379056 (=> res!2976502 e!4417138)))

(declare-fun b!7379057 () Bool)

(assert (=> b!7379057 (= e!4417137 e!4417136)))

(declare-fun res!2976504 () Bool)

(assert (=> b!7379057 (=> (not res!2976504) (not e!4417136))))

(assert (=> b!7379057 (= res!2976504 (and (not (is-EmptyLang!19316 (regOne!39144 r1!2370))) (not (is-ElementMatch!19316 (regOne!39144 r1!2370)))))))

(declare-fun b!7379058 () Bool)

(assert (=> b!7379058 (= e!4417135 call!678698)))

(declare-fun bm!678694 () Bool)

(assert (=> bm!678694 (= call!678698 (nullable!8390 (ite c!1371559 (regOne!39145 (regOne!39144 r1!2370)) (regTwo!39144 (regOne!39144 r1!2370)))))))

(declare-fun b!7379059 () Bool)

(assert (=> b!7379059 (= e!4417140 e!4417139)))

(assert (=> b!7379059 (= c!1371559 (is-Union!19316 (regOne!39144 r1!2370)))))

(assert (= (and d!2285237 (not res!2976506)) b!7379057))

(assert (= (and b!7379057 res!2976504) b!7379055))

(assert (= (and b!7379055 (not res!2976503)) b!7379059))

(assert (= (and b!7379059 c!1371559) b!7379056))

(assert (= (and b!7379059 (not c!1371559)) b!7379053))

(assert (= (and b!7379056 (not res!2976502)) b!7379054))

(assert (= (and b!7379053 res!2976505) b!7379058))

(assert (= (or b!7379054 b!7379053) bm!678693))

(assert (= (or b!7379056 b!7379058) bm!678694))

(declare-fun m!8029956 () Bool)

(assert (=> bm!678693 m!8029956))

(declare-fun m!8029958 () Bool)

(assert (=> bm!678694 m!8029958))

(assert (=> d!2285191 d!2285237))

(assert (=> b!7378834 d!2285191))

(declare-fun d!2285239 () Bool)

(assert (=> d!2285239 (= ($colon$colon!3294 (exprs!8756 ct1!282) (ite (or c!1371491 c!1371493) (regTwo!39144 r1!2370) r1!2370)) (Cons!71688 (ite (or c!1371491 c!1371493) (regTwo!39144 r1!2370) r1!2370) (exprs!8756 ct1!282)))))

(assert (=> bm!678613 d!2285239))

(declare-fun d!2285241 () Bool)

(declare-fun c!1371562 () Bool)

(assert (=> d!2285241 (= c!1371562 (is-Nil!71688 lt!2616748))))

(declare-fun e!4417143 () (Set Regex!19316))

(assert (=> d!2285241 (= (content!15179 lt!2616748) e!4417143)))

(declare-fun b!7379064 () Bool)

(assert (=> b!7379064 (= e!4417143 (as set.empty (Set Regex!19316)))))

(declare-fun b!7379065 () Bool)

(assert (=> b!7379065 (= e!4417143 (set.union (set.insert (h!78136 lt!2616748) (as set.empty (Set Regex!19316))) (content!15179 (t!386297 lt!2616748))))))

(assert (= (and d!2285241 c!1371562) b!7379064))

(assert (= (and d!2285241 (not c!1371562)) b!7379065))

(declare-fun m!8029960 () Bool)

(assert (=> b!7379065 m!8029960))

(declare-fun m!8029962 () Bool)

(assert (=> b!7379065 m!8029962))

(assert (=> d!2285197 d!2285241))

(declare-fun d!2285243 () Bool)

(declare-fun c!1371563 () Bool)

(assert (=> d!2285243 (= c!1371563 (is-Nil!71688 (exprs!8756 ct1!282)))))

(declare-fun e!4417144 () (Set Regex!19316))

(assert (=> d!2285243 (= (content!15179 (exprs!8756 ct1!282)) e!4417144)))

(declare-fun b!7379066 () Bool)

(assert (=> b!7379066 (= e!4417144 (as set.empty (Set Regex!19316)))))

(declare-fun b!7379067 () Bool)

(assert (=> b!7379067 (= e!4417144 (set.union (set.insert (h!78136 (exprs!8756 ct1!282)) (as set.empty (Set Regex!19316))) (content!15179 (t!386297 (exprs!8756 ct1!282)))))))

(assert (= (and d!2285243 c!1371563) b!7379066))

(assert (= (and d!2285243 (not c!1371563)) b!7379067))

(declare-fun m!8029964 () Bool)

(assert (=> b!7379067 m!8029964))

(declare-fun m!8029966 () Bool)

(assert (=> b!7379067 m!8029966))

(assert (=> d!2285197 d!2285243))

(declare-fun d!2285245 () Bool)

(declare-fun c!1371564 () Bool)

(assert (=> d!2285245 (= c!1371564 (is-Nil!71688 (exprs!8756 ct2!378)))))

(declare-fun e!4417145 () (Set Regex!19316))

(assert (=> d!2285245 (= (content!15179 (exprs!8756 ct2!378)) e!4417145)))

(declare-fun b!7379068 () Bool)

(assert (=> b!7379068 (= e!4417145 (as set.empty (Set Regex!19316)))))

(declare-fun b!7379069 () Bool)

(assert (=> b!7379069 (= e!4417145 (set.union (set.insert (h!78136 (exprs!8756 ct2!378)) (as set.empty (Set Regex!19316))) (content!15179 (t!386297 (exprs!8756 ct2!378)))))))

(assert (= (and d!2285245 c!1371564) b!7379068))

(assert (= (and d!2285245 (not c!1371564)) b!7379069))

(declare-fun m!8029968 () Bool)

(assert (=> b!7379069 m!8029968))

(declare-fun m!8029970 () Bool)

(assert (=> b!7379069 m!8029970))

(assert (=> d!2285197 d!2285245))

(assert (=> b!7378769 d!2285191))

(declare-fun d!2285247 () Bool)

(assert (=> d!2285247 (= (nullable!8390 (reg!19645 r1!2370)) (nullableFct!3363 (reg!19645 r1!2370)))))

(declare-fun bs!1921485 () Bool)

(assert (= bs!1921485 d!2285247))

(declare-fun m!8029972 () Bool)

(assert (=> bs!1921485 m!8029972))

(assert (=> b!7378803 d!2285247))

(declare-fun c!1371565 () Bool)

(declare-fun c!1371566 () Bool)

(declare-fun bm!678695 () Bool)

(declare-fun call!678702 () Bool)

(assert (=> bm!678695 (= call!678702 (validRegex!9912 (ite c!1371565 (reg!19645 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))) (ite c!1371566 (regTwo!39145 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))) (regOne!39144 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736))))))))))

(declare-fun call!678700 () Bool)

(declare-fun bm!678696 () Bool)

(assert (=> bm!678696 (= call!678700 (validRegex!9912 (ite c!1371566 (regOne!39145 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))) (regTwo!39144 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))))

(declare-fun b!7379070 () Bool)

(declare-fun e!4417151 () Bool)

(declare-fun e!4417152 () Bool)

(assert (=> b!7379070 (= e!4417151 e!4417152)))

(assert (=> b!7379070 (= c!1371565 (is-Star!19316 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))

(declare-fun b!7379071 () Bool)

(declare-fun res!2976510 () Bool)

(declare-fun e!4417146 () Bool)

(assert (=> b!7379071 (=> res!2976510 e!4417146)))

(assert (=> b!7379071 (= res!2976510 (not (is-Concat!28161 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736))))))))

(declare-fun e!4417147 () Bool)

(assert (=> b!7379071 (= e!4417147 e!4417146)))

(declare-fun b!7379072 () Bool)

(declare-fun e!4417149 () Bool)

(assert (=> b!7379072 (= e!4417149 call!678702)))

(declare-fun d!2285249 () Bool)

(declare-fun res!2976511 () Bool)

(assert (=> d!2285249 (=> res!2976511 e!4417151)))

(assert (=> d!2285249 (= res!2976511 (is-ElementMatch!19316 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))

(assert (=> d!2285249 (= (validRegex!9912 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))) e!4417151)))

(declare-fun b!7379073 () Bool)

(declare-fun e!4417150 () Bool)

(declare-fun call!678701 () Bool)

(assert (=> b!7379073 (= e!4417150 call!678701)))

(declare-fun bm!678697 () Bool)

(assert (=> bm!678697 (= call!678701 call!678702)))

(declare-fun b!7379074 () Bool)

(declare-fun e!4417148 () Bool)

(assert (=> b!7379074 (= e!4417148 call!678700)))

(declare-fun b!7379075 () Bool)

(assert (=> b!7379075 (= e!4417152 e!4417149)))

(declare-fun res!2976509 () Bool)

(assert (=> b!7379075 (= res!2976509 (not (nullable!8390 (reg!19645 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))))

(assert (=> b!7379075 (=> (not res!2976509) (not e!4417149))))

(declare-fun b!7379076 () Bool)

(assert (=> b!7379076 (= e!4417152 e!4417147)))

(assert (=> b!7379076 (= c!1371566 (is-Union!19316 (ite c!1371505 (reg!19645 lt!2616736) (ite c!1371506 (regTwo!39145 lt!2616736) (regOne!39144 lt!2616736)))))))

(declare-fun b!7379077 () Bool)

(assert (=> b!7379077 (= e!4417146 e!4417148)))

(declare-fun res!2976508 () Bool)

(assert (=> b!7379077 (=> (not res!2976508) (not e!4417148))))

(assert (=> b!7379077 (= res!2976508 call!678701)))

(declare-fun b!7379078 () Bool)

(declare-fun res!2976507 () Bool)

(assert (=> b!7379078 (=> (not res!2976507) (not e!4417150))))

(assert (=> b!7379078 (= res!2976507 call!678700)))

(assert (=> b!7379078 (= e!4417147 e!4417150)))

(assert (= (and d!2285249 (not res!2976511)) b!7379070))

(assert (= (and b!7379070 c!1371565) b!7379075))

(assert (= (and b!7379070 (not c!1371565)) b!7379076))

(assert (= (and b!7379075 res!2976509) b!7379072))

(assert (= (and b!7379076 c!1371566) b!7379078))

(assert (= (and b!7379076 (not c!1371566)) b!7379071))

(assert (= (and b!7379078 res!2976507) b!7379073))

(assert (= (and b!7379071 (not res!2976510)) b!7379077))

(assert (= (and b!7379077 res!2976508) b!7379074))

(assert (= (or b!7379078 b!7379074) bm!678696))

(assert (= (or b!7379073 b!7379077) bm!678697))

(assert (= (or b!7379072 bm!678697) bm!678695))

(declare-fun m!8029974 () Bool)

(assert (=> bm!678695 m!8029974))

(declare-fun m!8029976 () Bool)

(assert (=> bm!678696 m!8029976))

(declare-fun m!8029978 () Bool)

(assert (=> b!7379075 m!8029978))

(assert (=> bm!678632 d!2285249))

(declare-fun b!7379081 () Bool)

(declare-fun res!2976513 () Bool)

(declare-fun e!4417153 () Bool)

(assert (=> b!7379081 (=> (not res!2976513) (not e!4417153))))

(declare-fun lt!2616758 () List!71812)

(assert (=> b!7379081 (= res!2976513 (= (size!42157 lt!2616758) (+ (size!42157 (t!386297 (exprs!8756 ct1!282))) (size!42157 (exprs!8756 ct2!378)))))))

(declare-fun b!7379079 () Bool)

(declare-fun e!4417154 () List!71812)

(assert (=> b!7379079 (= e!4417154 (exprs!8756 ct2!378))))

(declare-fun b!7379080 () Bool)

(assert (=> b!7379080 (= e!4417154 (Cons!71688 (h!78136 (t!386297 (exprs!8756 ct1!282))) (++!17132 (t!386297 (t!386297 (exprs!8756 ct1!282))) (exprs!8756 ct2!378))))))

(declare-fun d!2285251 () Bool)

(assert (=> d!2285251 e!4417153))

(declare-fun res!2976512 () Bool)

(assert (=> d!2285251 (=> (not res!2976512) (not e!4417153))))

(assert (=> d!2285251 (= res!2976512 (= (content!15179 lt!2616758) (set.union (content!15179 (t!386297 (exprs!8756 ct1!282))) (content!15179 (exprs!8756 ct2!378)))))))

(assert (=> d!2285251 (= lt!2616758 e!4417154)))

(declare-fun c!1371567 () Bool)

(assert (=> d!2285251 (= c!1371567 (is-Nil!71688 (t!386297 (exprs!8756 ct1!282))))))

(assert (=> d!2285251 (= (++!17132 (t!386297 (exprs!8756 ct1!282)) (exprs!8756 ct2!378)) lt!2616758)))

(declare-fun b!7379082 () Bool)

(assert (=> b!7379082 (= e!4417153 (or (not (= (exprs!8756 ct2!378) Nil!71688)) (= lt!2616758 (t!386297 (exprs!8756 ct1!282)))))))

(assert (= (and d!2285251 c!1371567) b!7379079))

(assert (= (and d!2285251 (not c!1371567)) b!7379080))

(assert (= (and d!2285251 res!2976512) b!7379081))

(assert (= (and b!7379081 res!2976513) b!7379082))

(declare-fun m!8029980 () Bool)

(assert (=> b!7379081 m!8029980))

(declare-fun m!8029982 () Bool)

(assert (=> b!7379081 m!8029982))

(assert (=> b!7379081 m!8029846))

(declare-fun m!8029984 () Bool)

(assert (=> b!7379080 m!8029984))

(declare-fun m!8029986 () Bool)

(assert (=> d!2285251 m!8029986))

(assert (=> d!2285251 m!8029966))

(assert (=> d!2285251 m!8029854))

(assert (=> b!7378845 d!2285251))

(declare-fun b!7379083 () Bool)

(declare-fun e!4417160 () (Set Context!16512))

(declare-fun call!678705 () (Set Context!16512))

(assert (=> b!7379083 (= e!4417160 call!678705)))

(declare-fun b!7379084 () Bool)

(declare-fun c!1371568 () Bool)

(assert (=> b!7379084 (= c!1371568 (is-Star!19316 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(declare-fun e!4417157 () (Set Context!16512))

(assert (=> b!7379084 (= e!4417160 e!4417157)))

(declare-fun b!7379085 () Bool)

(declare-fun e!4417156 () (Set Context!16512))

(assert (=> b!7379085 (= e!4417156 e!4417160)))

(declare-fun c!1371571 () Bool)

(assert (=> b!7379085 (= c!1371571 (is-Concat!28161 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(declare-fun b!7379086 () Bool)

(declare-fun call!678703 () (Set Context!16512))

(declare-fun call!678707 () (Set Context!16512))

(assert (=> b!7379086 (= e!4417156 (set.union call!678703 call!678707))))

(declare-fun b!7379087 () Bool)

(declare-fun e!4417155 () (Set Context!16512))

(declare-fun call!678704 () (Set Context!16512))

(assert (=> b!7379087 (= e!4417155 (set.union call!678703 call!678704))))

(declare-fun bm!678698 () Bool)

(declare-fun call!678706 () List!71812)

(declare-fun call!678708 () List!71812)

(assert (=> bm!678698 (= call!678706 call!678708)))

(declare-fun c!1371572 () Bool)

(declare-fun bm!678699 () Bool)

(declare-fun c!1371569 () Bool)

(assert (=> bm!678699 (= call!678704 (derivationStepZipperDown!3142 (ite c!1371572 (regTwo!39145 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371569 (regTwo!39144 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371571 (regOne!39144 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (reg!19645 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))) (ite (or c!1371572 c!1371569) (ite c!1371494 ct1!282 (Context!16513 call!678621)) (Context!16513 call!678706)) c!10362))))

(declare-fun e!4417159 () (Set Context!16512))

(declare-fun b!7379088 () Bool)

(assert (=> b!7379088 (= e!4417159 (set.insert (ite c!1371494 ct1!282 (Context!16513 call!678621)) (as set.empty (Set Context!16512))))))

(declare-fun b!7379089 () Bool)

(assert (=> b!7379089 (= e!4417157 (as set.empty (Set Context!16512)))))

(declare-fun b!7379090 () Bool)

(declare-fun e!4417158 () Bool)

(assert (=> b!7379090 (= c!1371569 e!4417158)))

(declare-fun res!2976514 () Bool)

(assert (=> b!7379090 (=> (not res!2976514) (not e!4417158))))

(assert (=> b!7379090 (= res!2976514 (is-Concat!28161 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(assert (=> b!7379090 (= e!4417155 e!4417156)))

(declare-fun bm!678700 () Bool)

(assert (=> bm!678700 (= call!678708 ($colon$colon!3294 (exprs!8756 (ite c!1371494 ct1!282 (Context!16513 call!678621))) (ite (or c!1371569 c!1371571) (regTwo!39144 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun b!7379091 () Bool)

(assert (=> b!7379091 (= e!4417157 call!678705)))

(declare-fun c!1371570 () Bool)

(declare-fun d!2285253 () Bool)

(assert (=> d!2285253 (= c!1371570 (and (is-ElementMatch!19316 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (= (c!1371474 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) c!10362)))))

(assert (=> d!2285253 (= (derivationStepZipperDown!3142 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)) (ite c!1371494 ct1!282 (Context!16513 call!678621)) c!10362) e!4417159)))

(declare-fun bm!678701 () Bool)

(assert (=> bm!678701 (= call!678707 call!678704)))

(declare-fun bm!678702 () Bool)

(assert (=> bm!678702 (= call!678703 (derivationStepZipperDown!3142 (ite c!1371572 (regOne!39145 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))) (regOne!39144 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))) (ite c!1371572 (ite c!1371494 ct1!282 (Context!16513 call!678621)) (Context!16513 call!678708)) c!10362))))

(declare-fun b!7379092 () Bool)

(assert (=> b!7379092 (= e!4417158 (nullable!8390 (regOne!39144 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370)))))))

(declare-fun bm!678703 () Bool)

(assert (=> bm!678703 (= call!678705 call!678707)))

(declare-fun b!7379093 () Bool)

(assert (=> b!7379093 (= e!4417159 e!4417155)))

(assert (=> b!7379093 (= c!1371572 (is-Union!19316 (ite c!1371494 (regOne!39145 r1!2370) (regOne!39144 r1!2370))))))

(assert (= (and d!2285253 c!1371570) b!7379088))

(assert (= (and d!2285253 (not c!1371570)) b!7379093))

(assert (= (and b!7379093 c!1371572) b!7379087))

(assert (= (and b!7379093 (not c!1371572)) b!7379090))

(assert (= (and b!7379090 res!2976514) b!7379092))

(assert (= (and b!7379090 c!1371569) b!7379086))

(assert (= (and b!7379090 (not c!1371569)) b!7379085))

(assert (= (and b!7379085 c!1371571) b!7379083))

(assert (= (and b!7379085 (not c!1371571)) b!7379084))

(assert (= (and b!7379084 c!1371568) b!7379091))

(assert (= (and b!7379084 (not c!1371568)) b!7379089))

(assert (= (or b!7379083 b!7379091) bm!678698))

(assert (= (or b!7379083 b!7379091) bm!678703))

(assert (= (or b!7379086 bm!678703) bm!678701))

(assert (= (or b!7379086 bm!678698) bm!678700))

(assert (= (or b!7379087 bm!678701) bm!678699))

(assert (= (or b!7379087 b!7379086) bm!678702))

(declare-fun m!8029988 () Bool)

(assert (=> bm!678700 m!8029988))

(declare-fun m!8029990 () Bool)

(assert (=> b!7379092 m!8029990))

(declare-fun m!8029992 () Bool)

(assert (=> bm!678702 m!8029992))

(declare-fun m!8029994 () Bool)

(assert (=> b!7379088 m!8029994))

(declare-fun m!8029996 () Bool)

(assert (=> bm!678699 m!8029996))

(assert (=> bm!678615 d!2285253))

(declare-fun bm!678704 () Bool)

(declare-fun call!678711 () Bool)

(declare-fun c!1371574 () Bool)

(declare-fun c!1371573 () Bool)

(assert (=> bm!678704 (= call!678711 (validRegex!9912 (ite c!1371573 (reg!19645 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))) (ite c!1371574 (regTwo!39145 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))) (regOne!39144 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736)))))))))

(declare-fun call!678709 () Bool)

(declare-fun bm!678705 () Bool)

(assert (=> bm!678705 (= call!678709 (validRegex!9912 (ite c!1371574 (regOne!39145 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))) (regTwo!39144 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))))

(declare-fun b!7379094 () Bool)

(declare-fun e!4417166 () Bool)

(declare-fun e!4417167 () Bool)

(assert (=> b!7379094 (= e!4417166 e!4417167)))

(assert (=> b!7379094 (= c!1371573 (is-Star!19316 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))

(declare-fun b!7379095 () Bool)

(declare-fun res!2976518 () Bool)

(declare-fun e!4417161 () Bool)

(assert (=> b!7379095 (=> res!2976518 e!4417161)))

(assert (=> b!7379095 (= res!2976518 (not (is-Concat!28161 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736)))))))

(declare-fun e!4417162 () Bool)

(assert (=> b!7379095 (= e!4417162 e!4417161)))

(declare-fun b!7379096 () Bool)

(declare-fun e!4417164 () Bool)

(assert (=> b!7379096 (= e!4417164 call!678711)))

(declare-fun d!2285255 () Bool)

(declare-fun res!2976519 () Bool)

(assert (=> d!2285255 (=> res!2976519 e!4417166)))

(assert (=> d!2285255 (= res!2976519 (is-ElementMatch!19316 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))

(assert (=> d!2285255 (= (validRegex!9912 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))) e!4417166)))

(declare-fun b!7379097 () Bool)

(declare-fun e!4417165 () Bool)

(declare-fun call!678710 () Bool)

(assert (=> b!7379097 (= e!4417165 call!678710)))

(declare-fun bm!678706 () Bool)

(assert (=> bm!678706 (= call!678710 call!678711)))

(declare-fun b!7379098 () Bool)

(declare-fun e!4417163 () Bool)

(assert (=> b!7379098 (= e!4417163 call!678709)))

(declare-fun b!7379099 () Bool)

(assert (=> b!7379099 (= e!4417167 e!4417164)))

(declare-fun res!2976517 () Bool)

(assert (=> b!7379099 (= res!2976517 (not (nullable!8390 (reg!19645 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))))

(assert (=> b!7379099 (=> (not res!2976517) (not e!4417164))))

(declare-fun b!7379100 () Bool)

(assert (=> b!7379100 (= e!4417167 e!4417162)))

(assert (=> b!7379100 (= c!1371574 (is-Union!19316 (ite c!1371506 (regOne!39145 lt!2616736) (regTwo!39144 lt!2616736))))))

(declare-fun b!7379101 () Bool)

(assert (=> b!7379101 (= e!4417161 e!4417163)))

(declare-fun res!2976516 () Bool)

(assert (=> b!7379101 (=> (not res!2976516) (not e!4417163))))

(assert (=> b!7379101 (= res!2976516 call!678710)))

(declare-fun b!7379102 () Bool)

(declare-fun res!2976515 () Bool)

(assert (=> b!7379102 (=> (not res!2976515) (not e!4417165))))

(assert (=> b!7379102 (= res!2976515 call!678709)))

(assert (=> b!7379102 (= e!4417162 e!4417165)))

(assert (= (and d!2285255 (not res!2976519)) b!7379094))

(assert (= (and b!7379094 c!1371573) b!7379099))

(assert (= (and b!7379094 (not c!1371573)) b!7379100))

(assert (= (and b!7379099 res!2976517) b!7379096))

(assert (= (and b!7379100 c!1371574) b!7379102))

(assert (= (and b!7379100 (not c!1371574)) b!7379095))

(assert (= (and b!7379102 res!2976515) b!7379097))

(assert (= (and b!7379095 (not res!2976518)) b!7379101))

(assert (= (and b!7379101 res!2976516) b!7379098))

(assert (= (or b!7379102 b!7379098) bm!678705))

(assert (= (or b!7379097 b!7379101) bm!678706))

(assert (= (or b!7379096 bm!678706) bm!678704))

(declare-fun m!8029998 () Bool)

(assert (=> bm!678704 m!8029998))

(declare-fun m!8030000 () Bool)

(assert (=> bm!678705 m!8030000))

(declare-fun m!8030002 () Bool)

(assert (=> b!7379099 m!8030002))

(assert (=> bm!678633 d!2285255))

(declare-fun d!2285257 () Bool)

(declare-fun lt!2616761 () Int)

(assert (=> d!2285257 (>= lt!2616761 0)))

(declare-fun e!4417170 () Int)

(assert (=> d!2285257 (= lt!2616761 e!4417170)))

(declare-fun c!1371577 () Bool)

(assert (=> d!2285257 (= c!1371577 (is-Nil!71688 lt!2616748))))

(assert (=> d!2285257 (= (size!42157 lt!2616748) lt!2616761)))

(declare-fun b!7379107 () Bool)

(assert (=> b!7379107 (= e!4417170 0)))

(declare-fun b!7379108 () Bool)

(assert (=> b!7379108 (= e!4417170 (+ 1 (size!42157 (t!386297 lt!2616748))))))

(assert (= (and d!2285257 c!1371577) b!7379107))

(assert (= (and d!2285257 (not c!1371577)) b!7379108))

(declare-fun m!8030004 () Bool)

(assert (=> b!7379108 m!8030004))

(assert (=> b!7378846 d!2285257))

(declare-fun d!2285259 () Bool)

(declare-fun lt!2616762 () Int)

(assert (=> d!2285259 (>= lt!2616762 0)))

(declare-fun e!4417171 () Int)

(assert (=> d!2285259 (= lt!2616762 e!4417171)))

(declare-fun c!1371578 () Bool)

(assert (=> d!2285259 (= c!1371578 (is-Nil!71688 (exprs!8756 ct1!282)))))

(assert (=> d!2285259 (= (size!42157 (exprs!8756 ct1!282)) lt!2616762)))

(declare-fun b!7379109 () Bool)

(assert (=> b!7379109 (= e!4417171 0)))

(declare-fun b!7379110 () Bool)

(assert (=> b!7379110 (= e!4417171 (+ 1 (size!42157 (t!386297 (exprs!8756 ct1!282)))))))

(assert (= (and d!2285259 c!1371578) b!7379109))

(assert (= (and d!2285259 (not c!1371578)) b!7379110))

(assert (=> b!7379110 m!8029982))

(assert (=> b!7378846 d!2285259))

(declare-fun d!2285261 () Bool)

(declare-fun lt!2616763 () Int)

(assert (=> d!2285261 (>= lt!2616763 0)))

(declare-fun e!4417172 () Int)

(assert (=> d!2285261 (= lt!2616763 e!4417172)))

(declare-fun c!1371579 () Bool)

(assert (=> d!2285261 (= c!1371579 (is-Nil!71688 (exprs!8756 ct2!378)))))

(assert (=> d!2285261 (= (size!42157 (exprs!8756 ct2!378)) lt!2616763)))

(declare-fun b!7379111 () Bool)

(assert (=> b!7379111 (= e!4417172 0)))

(declare-fun b!7379112 () Bool)

(assert (=> b!7379112 (= e!4417172 (+ 1 (size!42157 (t!386297 (exprs!8756 ct2!378)))))))

(assert (= (and d!2285261 c!1371579) b!7379111))

(assert (= (and d!2285261 (not c!1371579)) b!7379112))

(declare-fun m!8030006 () Bool)

(assert (=> b!7379112 m!8030006))

(assert (=> b!7378846 d!2285261))

(declare-fun d!2285263 () Bool)

(declare-fun res!2976520 () Bool)

(declare-fun e!4417173 () Bool)

(assert (=> d!2285263 (=> res!2976520 e!4417173)))

(assert (=> d!2285263 (= res!2976520 (is-Nil!71688 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736)))))))

(assert (=> d!2285263 (= (forall!18106 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))) lambda!458489) e!4417173)))

(declare-fun b!7379113 () Bool)

(declare-fun e!4417174 () Bool)

(assert (=> b!7379113 (= e!4417173 e!4417174)))

(declare-fun res!2976521 () Bool)

(assert (=> b!7379113 (=> (not res!2976521) (not e!4417174))))

(assert (=> b!7379113 (= res!2976521 (dynLambda!29532 lambda!458489 (h!78136 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))))))))

(declare-fun b!7379114 () Bool)

(assert (=> b!7379114 (= e!4417174 (forall!18106 (t!386297 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736)))) lambda!458489))))

(assert (= (and d!2285263 (not res!2976520)) b!7379113))

(assert (= (and b!7379113 res!2976521) b!7379114))

(declare-fun b_lambda!284657 () Bool)

(assert (=> (not b_lambda!284657) (not b!7379113)))

(declare-fun m!8030008 () Bool)

(assert (=> b!7379113 m!8030008))

(declare-fun m!8030010 () Bool)

(assert (=> b!7379114 m!8030010))

(assert (=> d!2285185 d!2285263))

(declare-fun d!2285265 () Bool)

(declare-fun res!2976522 () Bool)

(declare-fun e!4417175 () Bool)

(assert (=> d!2285265 (=> res!2976522 e!4417175)))

(assert (=> d!2285265 (= res!2976522 (is-Nil!71688 (exprs!8756 cWitness!61)))))

(assert (=> d!2285265 (= (forall!18106 (exprs!8756 cWitness!61) lambda!458486) e!4417175)))

(declare-fun b!7379115 () Bool)

(declare-fun e!4417176 () Bool)

(assert (=> b!7379115 (= e!4417175 e!4417176)))

(declare-fun res!2976523 () Bool)

(assert (=> b!7379115 (=> (not res!2976523) (not e!4417176))))

(assert (=> b!7379115 (= res!2976523 (dynLambda!29532 lambda!458486 (h!78136 (exprs!8756 cWitness!61))))))

(declare-fun b!7379116 () Bool)

(assert (=> b!7379116 (= e!4417176 (forall!18106 (t!386297 (exprs!8756 cWitness!61)) lambda!458486))))

(assert (= (and d!2285265 (not res!2976522)) b!7379115))

(assert (= (and b!7379115 res!2976523) b!7379116))

(declare-fun b_lambda!284659 () Bool)

(assert (=> (not b_lambda!284659) (not b!7379115)))

(declare-fun m!8030012 () Bool)

(assert (=> b!7379115 m!8030012))

(declare-fun m!8030014 () Bool)

(assert (=> b!7379116 m!8030014))

(assert (=> d!2285177 d!2285265))

(declare-fun d!2285267 () Bool)

(declare-fun res!2976524 () Bool)

(declare-fun e!4417177 () Bool)

(assert (=> d!2285267 (=> res!2976524 e!4417177)))

(assert (=> d!2285267 (= res!2976524 (is-Nil!71688 (exprs!8756 ct1!282)))))

(assert (=> d!2285267 (= (forall!18106 (exprs!8756 ct1!282) lambda!458487) e!4417177)))

(declare-fun b!7379117 () Bool)

(declare-fun e!4417178 () Bool)

(assert (=> b!7379117 (= e!4417177 e!4417178)))

(declare-fun res!2976525 () Bool)

(assert (=> b!7379117 (=> (not res!2976525) (not e!4417178))))

(assert (=> b!7379117 (= res!2976525 (dynLambda!29532 lambda!458487 (h!78136 (exprs!8756 ct1!282))))))

(declare-fun b!7379118 () Bool)

(assert (=> b!7379118 (= e!4417178 (forall!18106 (t!386297 (exprs!8756 ct1!282)) lambda!458487))))

(assert (= (and d!2285267 (not res!2976524)) b!7379117))

(assert (= (and b!7379117 res!2976525) b!7379118))

(declare-fun b_lambda!284661 () Bool)

(assert (=> (not b_lambda!284661) (not b!7379117)))

(declare-fun m!8030016 () Bool)

(assert (=> b!7379117 m!8030016))

(declare-fun m!8030018 () Bool)

(assert (=> b!7379118 m!8030018))

(assert (=> d!2285181 d!2285267))

(declare-fun d!2285269 () Bool)

(assert (=> d!2285269 (= (nullable!8390 (reg!19645 lt!2616736)) (nullableFct!3363 (reg!19645 lt!2616736)))))

(declare-fun bs!1921486 () Bool)

(assert (= bs!1921486 d!2285269))

(declare-fun m!8030020 () Bool)

(assert (=> bs!1921486 m!8030020))

(assert (=> b!7378821 d!2285269))

(declare-fun e!4417179 () Bool)

(assert (=> b!7378884 (= tp!2098483 e!4417179)))

(declare-fun b!7379122 () Bool)

(declare-fun tp!2098538 () Bool)

(declare-fun tp!2098541 () Bool)

(assert (=> b!7379122 (= e!4417179 (and tp!2098538 tp!2098541))))

(declare-fun b!7379119 () Bool)

(assert (=> b!7379119 (= e!4417179 tp_is_empty!48877)))

(declare-fun b!7379121 () Bool)

(declare-fun tp!2098539 () Bool)

(assert (=> b!7379121 (= e!4417179 tp!2098539)))

(declare-fun b!7379120 () Bool)

(declare-fun tp!2098540 () Bool)

(declare-fun tp!2098542 () Bool)

(assert (=> b!7379120 (= e!4417179 (and tp!2098540 tp!2098542))))

(assert (= (and b!7378884 (is-ElementMatch!19316 (regOne!39145 (regOne!39145 r1!2370)))) b!7379119))

(assert (= (and b!7378884 (is-Concat!28161 (regOne!39145 (regOne!39145 r1!2370)))) b!7379120))

(assert (= (and b!7378884 (is-Star!19316 (regOne!39145 (regOne!39145 r1!2370)))) b!7379121))

(assert (= (and b!7378884 (is-Union!19316 (regOne!39145 (regOne!39145 r1!2370)))) b!7379122))

(declare-fun e!4417180 () Bool)

(assert (=> b!7378884 (= tp!2098486 e!4417180)))

(declare-fun b!7379126 () Bool)

(declare-fun tp!2098543 () Bool)

(declare-fun tp!2098546 () Bool)

(assert (=> b!7379126 (= e!4417180 (and tp!2098543 tp!2098546))))

(declare-fun b!7379123 () Bool)

(assert (=> b!7379123 (= e!4417180 tp_is_empty!48877)))

(declare-fun b!7379125 () Bool)

(declare-fun tp!2098544 () Bool)

(assert (=> b!7379125 (= e!4417180 tp!2098544)))

(declare-fun b!7379124 () Bool)

(declare-fun tp!2098545 () Bool)

(declare-fun tp!2098547 () Bool)

(assert (=> b!7379124 (= e!4417180 (and tp!2098545 tp!2098547))))

(assert (= (and b!7378884 (is-ElementMatch!19316 (regTwo!39145 (regOne!39145 r1!2370)))) b!7379123))

(assert (= (and b!7378884 (is-Concat!28161 (regTwo!39145 (regOne!39145 r1!2370)))) b!7379124))

(assert (= (and b!7378884 (is-Star!19316 (regTwo!39145 (regOne!39145 r1!2370)))) b!7379125))

(assert (= (and b!7378884 (is-Union!19316 (regTwo!39145 (regOne!39145 r1!2370)))) b!7379126))

(declare-fun e!4417181 () Bool)

(assert (=> b!7378871 (= tp!2098471 e!4417181)))

(declare-fun b!7379130 () Bool)

(declare-fun tp!2098548 () Bool)

(declare-fun tp!2098551 () Bool)

(assert (=> b!7379130 (= e!4417181 (and tp!2098548 tp!2098551))))

(declare-fun b!7379127 () Bool)

(assert (=> b!7379127 (= e!4417181 tp_is_empty!48877)))

(declare-fun b!7379129 () Bool)

(declare-fun tp!2098549 () Bool)

(assert (=> b!7379129 (= e!4417181 tp!2098549)))

(declare-fun b!7379128 () Bool)

(declare-fun tp!2098550 () Bool)

(declare-fun tp!2098552 () Bool)

(assert (=> b!7379128 (= e!4417181 (and tp!2098550 tp!2098552))))

(assert (= (and b!7378871 (is-ElementMatch!19316 (regOne!39145 (regTwo!39144 r1!2370)))) b!7379127))

(assert (= (and b!7378871 (is-Concat!28161 (regOne!39145 (regTwo!39144 r1!2370)))) b!7379128))

(assert (= (and b!7378871 (is-Star!19316 (regOne!39145 (regTwo!39144 r1!2370)))) b!7379129))

(assert (= (and b!7378871 (is-Union!19316 (regOne!39145 (regTwo!39144 r1!2370)))) b!7379130))

(declare-fun e!4417182 () Bool)

(assert (=> b!7378871 (= tp!2098474 e!4417182)))

(declare-fun b!7379134 () Bool)

(declare-fun tp!2098553 () Bool)

(declare-fun tp!2098556 () Bool)

(assert (=> b!7379134 (= e!4417182 (and tp!2098553 tp!2098556))))

(declare-fun b!7379131 () Bool)

(assert (=> b!7379131 (= e!4417182 tp_is_empty!48877)))

(declare-fun b!7379133 () Bool)

(declare-fun tp!2098554 () Bool)

(assert (=> b!7379133 (= e!4417182 tp!2098554)))

(declare-fun b!7379132 () Bool)

(declare-fun tp!2098555 () Bool)

(declare-fun tp!2098557 () Bool)

(assert (=> b!7379132 (= e!4417182 (and tp!2098555 tp!2098557))))

(assert (= (and b!7378871 (is-ElementMatch!19316 (regTwo!39145 (regTwo!39144 r1!2370)))) b!7379131))

(assert (= (and b!7378871 (is-Concat!28161 (regTwo!39145 (regTwo!39144 r1!2370)))) b!7379132))

(assert (= (and b!7378871 (is-Star!19316 (regTwo!39145 (regTwo!39144 r1!2370)))) b!7379133))

(assert (= (and b!7378871 (is-Union!19316 (regTwo!39145 (regTwo!39144 r1!2370)))) b!7379134))

(declare-fun e!4417183 () Bool)

(assert (=> b!7378875 (= tp!2098478 e!4417183)))

(declare-fun b!7379138 () Bool)

(declare-fun tp!2098558 () Bool)

(declare-fun tp!2098561 () Bool)

(assert (=> b!7379138 (= e!4417183 (and tp!2098558 tp!2098561))))

(declare-fun b!7379135 () Bool)

(assert (=> b!7379135 (= e!4417183 tp_is_empty!48877)))

(declare-fun b!7379137 () Bool)

(declare-fun tp!2098559 () Bool)

(assert (=> b!7379137 (= e!4417183 tp!2098559)))

(declare-fun b!7379136 () Bool)

(declare-fun tp!2098560 () Bool)

(declare-fun tp!2098562 () Bool)

(assert (=> b!7379136 (= e!4417183 (and tp!2098560 tp!2098562))))

(assert (= (and b!7378875 (is-ElementMatch!19316 (regOne!39144 (reg!19645 r1!2370)))) b!7379135))

(assert (= (and b!7378875 (is-Concat!28161 (regOne!39144 (reg!19645 r1!2370)))) b!7379136))

(assert (= (and b!7378875 (is-Star!19316 (regOne!39144 (reg!19645 r1!2370)))) b!7379137))

(assert (= (and b!7378875 (is-Union!19316 (regOne!39144 (reg!19645 r1!2370)))) b!7379138))

(declare-fun e!4417184 () Bool)

(assert (=> b!7378875 (= tp!2098480 e!4417184)))

(declare-fun b!7379142 () Bool)

(declare-fun tp!2098563 () Bool)

(declare-fun tp!2098566 () Bool)

(assert (=> b!7379142 (= e!4417184 (and tp!2098563 tp!2098566))))

(declare-fun b!7379139 () Bool)

(assert (=> b!7379139 (= e!4417184 tp_is_empty!48877)))

(declare-fun b!7379141 () Bool)

(declare-fun tp!2098564 () Bool)

(assert (=> b!7379141 (= e!4417184 tp!2098564)))

(declare-fun b!7379140 () Bool)

(declare-fun tp!2098565 () Bool)

(declare-fun tp!2098567 () Bool)

(assert (=> b!7379140 (= e!4417184 (and tp!2098565 tp!2098567))))

(assert (= (and b!7378875 (is-ElementMatch!19316 (regTwo!39144 (reg!19645 r1!2370)))) b!7379139))

(assert (= (and b!7378875 (is-Concat!28161 (regTwo!39144 (reg!19645 r1!2370)))) b!7379140))

(assert (= (and b!7378875 (is-Star!19316 (regTwo!39144 (reg!19645 r1!2370)))) b!7379141))

(assert (= (and b!7378875 (is-Union!19316 (regTwo!39144 (reg!19645 r1!2370)))) b!7379142))

(declare-fun e!4417185 () Bool)

(assert (=> b!7378888 (= tp!2098488 e!4417185)))

(declare-fun b!7379146 () Bool)

(declare-fun tp!2098568 () Bool)

(declare-fun tp!2098571 () Bool)

(assert (=> b!7379146 (= e!4417185 (and tp!2098568 tp!2098571))))

(declare-fun b!7379143 () Bool)

(assert (=> b!7379143 (= e!4417185 tp_is_empty!48877)))

(declare-fun b!7379145 () Bool)

(declare-fun tp!2098569 () Bool)

(assert (=> b!7379145 (= e!4417185 tp!2098569)))

(declare-fun b!7379144 () Bool)

(declare-fun tp!2098570 () Bool)

(declare-fun tp!2098572 () Bool)

(assert (=> b!7379144 (= e!4417185 (and tp!2098570 tp!2098572))))

(assert (= (and b!7378888 (is-ElementMatch!19316 (regOne!39145 (regTwo!39145 r1!2370)))) b!7379143))

(assert (= (and b!7378888 (is-Concat!28161 (regOne!39145 (regTwo!39145 r1!2370)))) b!7379144))

(assert (= (and b!7378888 (is-Star!19316 (regOne!39145 (regTwo!39145 r1!2370)))) b!7379145))

(assert (= (and b!7378888 (is-Union!19316 (regOne!39145 (regTwo!39145 r1!2370)))) b!7379146))

(declare-fun e!4417186 () Bool)

(assert (=> b!7378888 (= tp!2098491 e!4417186)))

(declare-fun b!7379150 () Bool)

(declare-fun tp!2098573 () Bool)

(declare-fun tp!2098576 () Bool)

(assert (=> b!7379150 (= e!4417186 (and tp!2098573 tp!2098576))))

(declare-fun b!7379147 () Bool)

(assert (=> b!7379147 (= e!4417186 tp_is_empty!48877)))

(declare-fun b!7379149 () Bool)

(declare-fun tp!2098574 () Bool)

(assert (=> b!7379149 (= e!4417186 tp!2098574)))

(declare-fun b!7379148 () Bool)

(declare-fun tp!2098575 () Bool)

(declare-fun tp!2098577 () Bool)

(assert (=> b!7379148 (= e!4417186 (and tp!2098575 tp!2098577))))

(assert (= (and b!7378888 (is-ElementMatch!19316 (regTwo!39145 (regTwo!39145 r1!2370)))) b!7379147))

(assert (= (and b!7378888 (is-Concat!28161 (regTwo!39145 (regTwo!39145 r1!2370)))) b!7379148))

(assert (= (and b!7378888 (is-Star!19316 (regTwo!39145 (regTwo!39145 r1!2370)))) b!7379149))

(assert (= (and b!7378888 (is-Union!19316 (regTwo!39145 (regTwo!39145 r1!2370)))) b!7379150))

(declare-fun e!4417187 () Bool)

(assert (=> b!7378883 (= tp!2098484 e!4417187)))

(declare-fun b!7379154 () Bool)

(declare-fun tp!2098578 () Bool)

(declare-fun tp!2098581 () Bool)

(assert (=> b!7379154 (= e!4417187 (and tp!2098578 tp!2098581))))

(declare-fun b!7379151 () Bool)

(assert (=> b!7379151 (= e!4417187 tp_is_empty!48877)))

(declare-fun b!7379153 () Bool)

(declare-fun tp!2098579 () Bool)

(assert (=> b!7379153 (= e!4417187 tp!2098579)))

(declare-fun b!7379152 () Bool)

(declare-fun tp!2098580 () Bool)

(declare-fun tp!2098582 () Bool)

(assert (=> b!7379152 (= e!4417187 (and tp!2098580 tp!2098582))))

(assert (= (and b!7378883 (is-ElementMatch!19316 (reg!19645 (regOne!39145 r1!2370)))) b!7379151))

(assert (= (and b!7378883 (is-Concat!28161 (reg!19645 (regOne!39145 r1!2370)))) b!7379152))

(assert (= (and b!7378883 (is-Star!19316 (reg!19645 (regOne!39145 r1!2370)))) b!7379153))

(assert (= (and b!7378883 (is-Union!19316 (reg!19645 (regOne!39145 r1!2370)))) b!7379154))

(declare-fun e!4417188 () Bool)

(assert (=> b!7378870 (= tp!2098472 e!4417188)))

(declare-fun b!7379158 () Bool)

(declare-fun tp!2098583 () Bool)

(declare-fun tp!2098586 () Bool)

(assert (=> b!7379158 (= e!4417188 (and tp!2098583 tp!2098586))))

(declare-fun b!7379155 () Bool)

(assert (=> b!7379155 (= e!4417188 tp_is_empty!48877)))

(declare-fun b!7379157 () Bool)

(declare-fun tp!2098584 () Bool)

(assert (=> b!7379157 (= e!4417188 tp!2098584)))

(declare-fun b!7379156 () Bool)

(declare-fun tp!2098585 () Bool)

(declare-fun tp!2098587 () Bool)

(assert (=> b!7379156 (= e!4417188 (and tp!2098585 tp!2098587))))

(assert (= (and b!7378870 (is-ElementMatch!19316 (reg!19645 (regTwo!39144 r1!2370)))) b!7379155))

(assert (= (and b!7378870 (is-Concat!28161 (reg!19645 (regTwo!39144 r1!2370)))) b!7379156))

(assert (= (and b!7378870 (is-Star!19316 (reg!19645 (regTwo!39144 r1!2370)))) b!7379157))

(assert (= (and b!7378870 (is-Union!19316 (reg!19645 (regTwo!39144 r1!2370)))) b!7379158))

(declare-fun e!4417189 () Bool)

(assert (=> b!7378877 (= tp!2098476 e!4417189)))

(declare-fun b!7379162 () Bool)

(declare-fun tp!2098588 () Bool)

(declare-fun tp!2098591 () Bool)

(assert (=> b!7379162 (= e!4417189 (and tp!2098588 tp!2098591))))

(declare-fun b!7379159 () Bool)

(assert (=> b!7379159 (= e!4417189 tp_is_empty!48877)))

(declare-fun b!7379161 () Bool)

(declare-fun tp!2098589 () Bool)

(assert (=> b!7379161 (= e!4417189 tp!2098589)))

(declare-fun b!7379160 () Bool)

(declare-fun tp!2098590 () Bool)

(declare-fun tp!2098592 () Bool)

(assert (=> b!7379160 (= e!4417189 (and tp!2098590 tp!2098592))))

(assert (= (and b!7378877 (is-ElementMatch!19316 (regOne!39145 (reg!19645 r1!2370)))) b!7379159))

(assert (= (and b!7378877 (is-Concat!28161 (regOne!39145 (reg!19645 r1!2370)))) b!7379160))

(assert (= (and b!7378877 (is-Star!19316 (regOne!39145 (reg!19645 r1!2370)))) b!7379161))

(assert (= (and b!7378877 (is-Union!19316 (regOne!39145 (reg!19645 r1!2370)))) b!7379162))

(declare-fun e!4417190 () Bool)

(assert (=> b!7378877 (= tp!2098479 e!4417190)))

(declare-fun b!7379166 () Bool)

(declare-fun tp!2098593 () Bool)

(declare-fun tp!2098596 () Bool)

(assert (=> b!7379166 (= e!4417190 (and tp!2098593 tp!2098596))))

(declare-fun b!7379163 () Bool)

(assert (=> b!7379163 (= e!4417190 tp_is_empty!48877)))

(declare-fun b!7379165 () Bool)

(declare-fun tp!2098594 () Bool)

(assert (=> b!7379165 (= e!4417190 tp!2098594)))

(declare-fun b!7379164 () Bool)

(declare-fun tp!2098595 () Bool)

(declare-fun tp!2098597 () Bool)

(assert (=> b!7379164 (= e!4417190 (and tp!2098595 tp!2098597))))

(assert (= (and b!7378877 (is-ElementMatch!19316 (regTwo!39145 (reg!19645 r1!2370)))) b!7379163))

(assert (= (and b!7378877 (is-Concat!28161 (regTwo!39145 (reg!19645 r1!2370)))) b!7379164))

(assert (= (and b!7378877 (is-Star!19316 (regTwo!39145 (reg!19645 r1!2370)))) b!7379165))

(assert (= (and b!7378877 (is-Union!19316 (regTwo!39145 (reg!19645 r1!2370)))) b!7379166))

(declare-fun e!4417191 () Bool)

(assert (=> b!7378876 (= tp!2098477 e!4417191)))

(declare-fun b!7379170 () Bool)

(declare-fun tp!2098598 () Bool)

(declare-fun tp!2098601 () Bool)

(assert (=> b!7379170 (= e!4417191 (and tp!2098598 tp!2098601))))

(declare-fun b!7379167 () Bool)

(assert (=> b!7379167 (= e!4417191 tp_is_empty!48877)))

(declare-fun b!7379169 () Bool)

(declare-fun tp!2098599 () Bool)

(assert (=> b!7379169 (= e!4417191 tp!2098599)))

(declare-fun b!7379168 () Bool)

(declare-fun tp!2098600 () Bool)

(declare-fun tp!2098602 () Bool)

(assert (=> b!7379168 (= e!4417191 (and tp!2098600 tp!2098602))))

(assert (= (and b!7378876 (is-ElementMatch!19316 (reg!19645 (reg!19645 r1!2370)))) b!7379167))

(assert (= (and b!7378876 (is-Concat!28161 (reg!19645 (reg!19645 r1!2370)))) b!7379168))

(assert (= (and b!7378876 (is-Star!19316 (reg!19645 (reg!19645 r1!2370)))) b!7379169))

(assert (= (and b!7378876 (is-Union!19316 (reg!19645 (reg!19645 r1!2370)))) b!7379170))

(declare-fun e!4417192 () Bool)

(assert (=> b!7378853 (= tp!2098454 e!4417192)))

(declare-fun b!7379174 () Bool)

(declare-fun tp!2098603 () Bool)

(declare-fun tp!2098606 () Bool)

(assert (=> b!7379174 (= e!4417192 (and tp!2098603 tp!2098606))))

(declare-fun b!7379171 () Bool)

(assert (=> b!7379171 (= e!4417192 tp_is_empty!48877)))

(declare-fun b!7379173 () Bool)

(declare-fun tp!2098604 () Bool)

(assert (=> b!7379173 (= e!4417192 tp!2098604)))

(declare-fun b!7379172 () Bool)

(declare-fun tp!2098605 () Bool)

(declare-fun tp!2098607 () Bool)

(assert (=> b!7379172 (= e!4417192 (and tp!2098605 tp!2098607))))

(assert (= (and b!7378853 (is-ElementMatch!19316 (h!78136 (exprs!8756 ct1!282)))) b!7379171))

(assert (= (and b!7378853 (is-Concat!28161 (h!78136 (exprs!8756 ct1!282)))) b!7379172))

(assert (= (and b!7378853 (is-Star!19316 (h!78136 (exprs!8756 ct1!282)))) b!7379173))

(assert (= (and b!7378853 (is-Union!19316 (h!78136 (exprs!8756 ct1!282)))) b!7379174))

(declare-fun b!7379175 () Bool)

(declare-fun e!4417193 () Bool)

(declare-fun tp!2098608 () Bool)

(declare-fun tp!2098609 () Bool)

(assert (=> b!7379175 (= e!4417193 (and tp!2098608 tp!2098609))))

(assert (=> b!7378853 (= tp!2098455 e!4417193)))

(assert (= (and b!7378853 (is-Cons!71688 (t!386297 (exprs!8756 ct1!282)))) b!7379175))

(declare-fun e!4417194 () Bool)

(assert (=> b!7378878 (= tp!2098481 e!4417194)))

(declare-fun b!7379179 () Bool)

(declare-fun tp!2098610 () Bool)

(declare-fun tp!2098613 () Bool)

(assert (=> b!7379179 (= e!4417194 (and tp!2098610 tp!2098613))))

(declare-fun b!7379176 () Bool)

(assert (=> b!7379176 (= e!4417194 tp_is_empty!48877)))

(declare-fun b!7379178 () Bool)

(declare-fun tp!2098611 () Bool)

(assert (=> b!7379178 (= e!4417194 tp!2098611)))

(declare-fun b!7379177 () Bool)

(declare-fun tp!2098612 () Bool)

(declare-fun tp!2098614 () Bool)

(assert (=> b!7379177 (= e!4417194 (and tp!2098612 tp!2098614))))

(assert (= (and b!7378878 (is-ElementMatch!19316 (h!78136 (exprs!8756 ct2!378)))) b!7379176))

(assert (= (and b!7378878 (is-Concat!28161 (h!78136 (exprs!8756 ct2!378)))) b!7379177))

(assert (= (and b!7378878 (is-Star!19316 (h!78136 (exprs!8756 ct2!378)))) b!7379178))

(assert (= (and b!7378878 (is-Union!19316 (h!78136 (exprs!8756 ct2!378)))) b!7379179))

(declare-fun b!7379180 () Bool)

(declare-fun e!4417195 () Bool)

(declare-fun tp!2098615 () Bool)

(declare-fun tp!2098616 () Bool)

(assert (=> b!7379180 (= e!4417195 (and tp!2098615 tp!2098616))))

(assert (=> b!7378878 (= tp!2098482 e!4417195)))

(assert (= (and b!7378878 (is-Cons!71688 (t!386297 (exprs!8756 ct2!378)))) b!7379180))

(declare-fun e!4417196 () Bool)

(assert (=> b!7378866 (= tp!2098467 e!4417196)))

(declare-fun b!7379184 () Bool)

(declare-fun tp!2098617 () Bool)

(declare-fun tp!2098620 () Bool)

(assert (=> b!7379184 (= e!4417196 (and tp!2098617 tp!2098620))))

(declare-fun b!7379181 () Bool)

(assert (=> b!7379181 (= e!4417196 tp_is_empty!48877)))

(declare-fun b!7379183 () Bool)

(declare-fun tp!2098618 () Bool)

(assert (=> b!7379183 (= e!4417196 tp!2098618)))

(declare-fun b!7379182 () Bool)

(declare-fun tp!2098619 () Bool)

(declare-fun tp!2098621 () Bool)

(assert (=> b!7379182 (= e!4417196 (and tp!2098619 tp!2098621))))

(assert (= (and b!7378866 (is-ElementMatch!19316 (reg!19645 (regOne!39144 r1!2370)))) b!7379181))

(assert (= (and b!7378866 (is-Concat!28161 (reg!19645 (regOne!39144 r1!2370)))) b!7379182))

(assert (= (and b!7378866 (is-Star!19316 (reg!19645 (regOne!39144 r1!2370)))) b!7379183))

(assert (= (and b!7378866 (is-Union!19316 (reg!19645 (regOne!39144 r1!2370)))) b!7379184))

(declare-fun e!4417197 () Bool)

(assert (=> b!7378865 (= tp!2098468 e!4417197)))

(declare-fun b!7379188 () Bool)

(declare-fun tp!2098622 () Bool)

(declare-fun tp!2098625 () Bool)

(assert (=> b!7379188 (= e!4417197 (and tp!2098622 tp!2098625))))

(declare-fun b!7379185 () Bool)

(assert (=> b!7379185 (= e!4417197 tp_is_empty!48877)))

(declare-fun b!7379187 () Bool)

(declare-fun tp!2098623 () Bool)

(assert (=> b!7379187 (= e!4417197 tp!2098623)))

(declare-fun b!7379186 () Bool)

(declare-fun tp!2098624 () Bool)

(declare-fun tp!2098626 () Bool)

(assert (=> b!7379186 (= e!4417197 (and tp!2098624 tp!2098626))))

(assert (= (and b!7378865 (is-ElementMatch!19316 (regOne!39144 (regOne!39144 r1!2370)))) b!7379185))

(assert (= (and b!7378865 (is-Concat!28161 (regOne!39144 (regOne!39144 r1!2370)))) b!7379186))

(assert (= (and b!7378865 (is-Star!19316 (regOne!39144 (regOne!39144 r1!2370)))) b!7379187))

(assert (= (and b!7378865 (is-Union!19316 (regOne!39144 (regOne!39144 r1!2370)))) b!7379188))

(declare-fun e!4417198 () Bool)

(assert (=> b!7378865 (= tp!2098470 e!4417198)))

(declare-fun b!7379192 () Bool)

(declare-fun tp!2098627 () Bool)

(declare-fun tp!2098630 () Bool)

(assert (=> b!7379192 (= e!4417198 (and tp!2098627 tp!2098630))))

(declare-fun b!7379189 () Bool)

(assert (=> b!7379189 (= e!4417198 tp_is_empty!48877)))

(declare-fun b!7379191 () Bool)

(declare-fun tp!2098628 () Bool)

(assert (=> b!7379191 (= e!4417198 tp!2098628)))

(declare-fun b!7379190 () Bool)

(declare-fun tp!2098629 () Bool)

(declare-fun tp!2098631 () Bool)

(assert (=> b!7379190 (= e!4417198 (and tp!2098629 tp!2098631))))

(assert (= (and b!7378865 (is-ElementMatch!19316 (regTwo!39144 (regOne!39144 r1!2370)))) b!7379189))

(assert (= (and b!7378865 (is-Concat!28161 (regTwo!39144 (regOne!39144 r1!2370)))) b!7379190))

(assert (= (and b!7378865 (is-Star!19316 (regTwo!39144 (regOne!39144 r1!2370)))) b!7379191))

(assert (= (and b!7378865 (is-Union!19316 (regTwo!39144 (regOne!39144 r1!2370)))) b!7379192))

(declare-fun e!4417199 () Bool)

(assert (=> b!7378867 (= tp!2098466 e!4417199)))

(declare-fun b!7379196 () Bool)

(declare-fun tp!2098632 () Bool)

(declare-fun tp!2098635 () Bool)

(assert (=> b!7379196 (= e!4417199 (and tp!2098632 tp!2098635))))

(declare-fun b!7379193 () Bool)

(assert (=> b!7379193 (= e!4417199 tp_is_empty!48877)))

(declare-fun b!7379195 () Bool)

(declare-fun tp!2098633 () Bool)

(assert (=> b!7379195 (= e!4417199 tp!2098633)))

(declare-fun b!7379194 () Bool)

(declare-fun tp!2098634 () Bool)

(declare-fun tp!2098636 () Bool)

(assert (=> b!7379194 (= e!4417199 (and tp!2098634 tp!2098636))))

(assert (= (and b!7378867 (is-ElementMatch!19316 (regOne!39145 (regOne!39144 r1!2370)))) b!7379193))

(assert (= (and b!7378867 (is-Concat!28161 (regOne!39145 (regOne!39144 r1!2370)))) b!7379194))

(assert (= (and b!7378867 (is-Star!19316 (regOne!39145 (regOne!39144 r1!2370)))) b!7379195))

(assert (= (and b!7378867 (is-Union!19316 (regOne!39145 (regOne!39144 r1!2370)))) b!7379196))

(declare-fun e!4417200 () Bool)

(assert (=> b!7378867 (= tp!2098469 e!4417200)))

(declare-fun b!7379200 () Bool)

(declare-fun tp!2098637 () Bool)

(declare-fun tp!2098640 () Bool)

(assert (=> b!7379200 (= e!4417200 (and tp!2098637 tp!2098640))))

(declare-fun b!7379197 () Bool)

(assert (=> b!7379197 (= e!4417200 tp_is_empty!48877)))

(declare-fun b!7379199 () Bool)

(declare-fun tp!2098638 () Bool)

(assert (=> b!7379199 (= e!4417200 tp!2098638)))

(declare-fun b!7379198 () Bool)

(declare-fun tp!2098639 () Bool)

(declare-fun tp!2098641 () Bool)

(assert (=> b!7379198 (= e!4417200 (and tp!2098639 tp!2098641))))

(assert (= (and b!7378867 (is-ElementMatch!19316 (regTwo!39145 (regOne!39144 r1!2370)))) b!7379197))

(assert (= (and b!7378867 (is-Concat!28161 (regTwo!39145 (regOne!39144 r1!2370)))) b!7379198))

(assert (= (and b!7378867 (is-Star!19316 (regTwo!39145 (regOne!39144 r1!2370)))) b!7379199))

(assert (= (and b!7378867 (is-Union!19316 (regTwo!39145 (regOne!39144 r1!2370)))) b!7379200))

(declare-fun e!4417201 () Bool)

(assert (=> b!7378886 (= tp!2098490 e!4417201)))

(declare-fun b!7379204 () Bool)

(declare-fun tp!2098642 () Bool)

(declare-fun tp!2098645 () Bool)

(assert (=> b!7379204 (= e!4417201 (and tp!2098642 tp!2098645))))

(declare-fun b!7379201 () Bool)

(assert (=> b!7379201 (= e!4417201 tp_is_empty!48877)))

(declare-fun b!7379203 () Bool)

(declare-fun tp!2098643 () Bool)

(assert (=> b!7379203 (= e!4417201 tp!2098643)))

(declare-fun b!7379202 () Bool)

(declare-fun tp!2098644 () Bool)

(declare-fun tp!2098646 () Bool)

(assert (=> b!7379202 (= e!4417201 (and tp!2098644 tp!2098646))))

(assert (= (and b!7378886 (is-ElementMatch!19316 (regOne!39144 (regTwo!39145 r1!2370)))) b!7379201))

(assert (= (and b!7378886 (is-Concat!28161 (regOne!39144 (regTwo!39145 r1!2370)))) b!7379202))

(assert (= (and b!7378886 (is-Star!19316 (regOne!39144 (regTwo!39145 r1!2370)))) b!7379203))

(assert (= (and b!7378886 (is-Union!19316 (regOne!39144 (regTwo!39145 r1!2370)))) b!7379204))

(declare-fun e!4417202 () Bool)

(assert (=> b!7378886 (= tp!2098492 e!4417202)))

(declare-fun b!7379208 () Bool)

(declare-fun tp!2098647 () Bool)

(declare-fun tp!2098650 () Bool)

(assert (=> b!7379208 (= e!4417202 (and tp!2098647 tp!2098650))))

(declare-fun b!7379205 () Bool)

(assert (=> b!7379205 (= e!4417202 tp_is_empty!48877)))

(declare-fun b!7379207 () Bool)

(declare-fun tp!2098648 () Bool)

(assert (=> b!7379207 (= e!4417202 tp!2098648)))

(declare-fun b!7379206 () Bool)

(declare-fun tp!2098649 () Bool)

(declare-fun tp!2098651 () Bool)

(assert (=> b!7379206 (= e!4417202 (and tp!2098649 tp!2098651))))

(assert (= (and b!7378886 (is-ElementMatch!19316 (regTwo!39144 (regTwo!39145 r1!2370)))) b!7379205))

(assert (= (and b!7378886 (is-Concat!28161 (regTwo!39144 (regTwo!39145 r1!2370)))) b!7379206))

(assert (= (and b!7378886 (is-Star!19316 (regTwo!39144 (regTwo!39145 r1!2370)))) b!7379207))

(assert (= (and b!7378886 (is-Union!19316 (regTwo!39144 (regTwo!39145 r1!2370)))) b!7379208))

(declare-fun e!4417203 () Bool)

(assert (=> b!7378852 (= tp!2098452 e!4417203)))

(declare-fun b!7379212 () Bool)

(declare-fun tp!2098652 () Bool)

(declare-fun tp!2098655 () Bool)

(assert (=> b!7379212 (= e!4417203 (and tp!2098652 tp!2098655))))

(declare-fun b!7379209 () Bool)

(assert (=> b!7379209 (= e!4417203 tp_is_empty!48877)))

(declare-fun b!7379211 () Bool)

(declare-fun tp!2098653 () Bool)

(assert (=> b!7379211 (= e!4417203 tp!2098653)))

(declare-fun b!7379210 () Bool)

(declare-fun tp!2098654 () Bool)

(declare-fun tp!2098656 () Bool)

(assert (=> b!7379210 (= e!4417203 (and tp!2098654 tp!2098656))))

(assert (= (and b!7378852 (is-ElementMatch!19316 (h!78136 (exprs!8756 cWitness!61)))) b!7379209))

(assert (= (and b!7378852 (is-Concat!28161 (h!78136 (exprs!8756 cWitness!61)))) b!7379210))

(assert (= (and b!7378852 (is-Star!19316 (h!78136 (exprs!8756 cWitness!61)))) b!7379211))

(assert (= (and b!7378852 (is-Union!19316 (h!78136 (exprs!8756 cWitness!61)))) b!7379212))

(declare-fun b!7379213 () Bool)

(declare-fun e!4417204 () Bool)

(declare-fun tp!2098657 () Bool)

(declare-fun tp!2098658 () Bool)

(assert (=> b!7379213 (= e!4417204 (and tp!2098657 tp!2098658))))

(assert (=> b!7378852 (= tp!2098453 e!4417204)))

(assert (= (and b!7378852 (is-Cons!71688 (t!386297 (exprs!8756 cWitness!61)))) b!7379213))

(declare-fun e!4417205 () Bool)

(assert (=> b!7378887 (= tp!2098489 e!4417205)))

(declare-fun b!7379217 () Bool)

(declare-fun tp!2098659 () Bool)

(declare-fun tp!2098662 () Bool)

(assert (=> b!7379217 (= e!4417205 (and tp!2098659 tp!2098662))))

(declare-fun b!7379214 () Bool)

(assert (=> b!7379214 (= e!4417205 tp_is_empty!48877)))

(declare-fun b!7379216 () Bool)

(declare-fun tp!2098660 () Bool)

(assert (=> b!7379216 (= e!4417205 tp!2098660)))

(declare-fun b!7379215 () Bool)

(declare-fun tp!2098661 () Bool)

(declare-fun tp!2098663 () Bool)

(assert (=> b!7379215 (= e!4417205 (and tp!2098661 tp!2098663))))

(assert (= (and b!7378887 (is-ElementMatch!19316 (reg!19645 (regTwo!39145 r1!2370)))) b!7379214))

(assert (= (and b!7378887 (is-Concat!28161 (reg!19645 (regTwo!39145 r1!2370)))) b!7379215))

(assert (= (and b!7378887 (is-Star!19316 (reg!19645 (regTwo!39145 r1!2370)))) b!7379216))

(assert (= (and b!7378887 (is-Union!19316 (reg!19645 (regTwo!39145 r1!2370)))) b!7379217))

(declare-fun e!4417206 () Bool)

(assert (=> b!7378882 (= tp!2098485 e!4417206)))

(declare-fun b!7379221 () Bool)

(declare-fun tp!2098664 () Bool)

(declare-fun tp!2098667 () Bool)

(assert (=> b!7379221 (= e!4417206 (and tp!2098664 tp!2098667))))

(declare-fun b!7379218 () Bool)

(assert (=> b!7379218 (= e!4417206 tp_is_empty!48877)))

(declare-fun b!7379220 () Bool)

(declare-fun tp!2098665 () Bool)

(assert (=> b!7379220 (= e!4417206 tp!2098665)))

(declare-fun b!7379219 () Bool)

(declare-fun tp!2098666 () Bool)

(declare-fun tp!2098668 () Bool)

(assert (=> b!7379219 (= e!4417206 (and tp!2098666 tp!2098668))))

(assert (= (and b!7378882 (is-ElementMatch!19316 (regOne!39144 (regOne!39145 r1!2370)))) b!7379218))

(assert (= (and b!7378882 (is-Concat!28161 (regOne!39144 (regOne!39145 r1!2370)))) b!7379219))

(assert (= (and b!7378882 (is-Star!19316 (regOne!39144 (regOne!39145 r1!2370)))) b!7379220))

(assert (= (and b!7378882 (is-Union!19316 (regOne!39144 (regOne!39145 r1!2370)))) b!7379221))

(declare-fun e!4417207 () Bool)

(assert (=> b!7378882 (= tp!2098487 e!4417207)))

(declare-fun b!7379225 () Bool)

(declare-fun tp!2098669 () Bool)

(declare-fun tp!2098672 () Bool)

(assert (=> b!7379225 (= e!4417207 (and tp!2098669 tp!2098672))))

(declare-fun b!7379222 () Bool)

(assert (=> b!7379222 (= e!4417207 tp_is_empty!48877)))

(declare-fun b!7379224 () Bool)

(declare-fun tp!2098670 () Bool)

(assert (=> b!7379224 (= e!4417207 tp!2098670)))

(declare-fun b!7379223 () Bool)

(declare-fun tp!2098671 () Bool)

(declare-fun tp!2098673 () Bool)

(assert (=> b!7379223 (= e!4417207 (and tp!2098671 tp!2098673))))

(assert (= (and b!7378882 (is-ElementMatch!19316 (regTwo!39144 (regOne!39145 r1!2370)))) b!7379222))

(assert (= (and b!7378882 (is-Concat!28161 (regTwo!39144 (regOne!39145 r1!2370)))) b!7379223))

(assert (= (and b!7378882 (is-Star!19316 (regTwo!39144 (regOne!39145 r1!2370)))) b!7379224))

(assert (= (and b!7378882 (is-Union!19316 (regTwo!39144 (regOne!39145 r1!2370)))) b!7379225))

(declare-fun e!4417208 () Bool)

(assert (=> b!7378869 (= tp!2098473 e!4417208)))

(declare-fun b!7379229 () Bool)

(declare-fun tp!2098674 () Bool)

(declare-fun tp!2098677 () Bool)

(assert (=> b!7379229 (= e!4417208 (and tp!2098674 tp!2098677))))

(declare-fun b!7379226 () Bool)

(assert (=> b!7379226 (= e!4417208 tp_is_empty!48877)))

(declare-fun b!7379228 () Bool)

(declare-fun tp!2098675 () Bool)

(assert (=> b!7379228 (= e!4417208 tp!2098675)))

(declare-fun b!7379227 () Bool)

(declare-fun tp!2098676 () Bool)

(declare-fun tp!2098678 () Bool)

(assert (=> b!7379227 (= e!4417208 (and tp!2098676 tp!2098678))))

(assert (= (and b!7378869 (is-ElementMatch!19316 (regOne!39144 (regTwo!39144 r1!2370)))) b!7379226))

(assert (= (and b!7378869 (is-Concat!28161 (regOne!39144 (regTwo!39144 r1!2370)))) b!7379227))

(assert (= (and b!7378869 (is-Star!19316 (regOne!39144 (regTwo!39144 r1!2370)))) b!7379228))

(assert (= (and b!7378869 (is-Union!19316 (regOne!39144 (regTwo!39144 r1!2370)))) b!7379229))

(declare-fun e!4417209 () Bool)

(assert (=> b!7378869 (= tp!2098475 e!4417209)))

(declare-fun b!7379233 () Bool)

(declare-fun tp!2098679 () Bool)

(declare-fun tp!2098682 () Bool)

(assert (=> b!7379233 (= e!4417209 (and tp!2098679 tp!2098682))))

(declare-fun b!7379230 () Bool)

(assert (=> b!7379230 (= e!4417209 tp_is_empty!48877)))

(declare-fun b!7379232 () Bool)

(declare-fun tp!2098680 () Bool)

(assert (=> b!7379232 (= e!4417209 tp!2098680)))

(declare-fun b!7379231 () Bool)

(declare-fun tp!2098681 () Bool)

(declare-fun tp!2098683 () Bool)

(assert (=> b!7379231 (= e!4417209 (and tp!2098681 tp!2098683))))

(assert (= (and b!7378869 (is-ElementMatch!19316 (regTwo!39144 (regTwo!39144 r1!2370)))) b!7379230))

(assert (= (and b!7378869 (is-Concat!28161 (regTwo!39144 (regTwo!39144 r1!2370)))) b!7379231))

(assert (= (and b!7378869 (is-Star!19316 (regTwo!39144 (regTwo!39144 r1!2370)))) b!7379232))

(assert (= (and b!7378869 (is-Union!19316 (regTwo!39144 (regTwo!39144 r1!2370)))) b!7379233))

(declare-fun b_lambda!284663 () Bool)

(assert (= b_lambda!284661 (or d!2285181 b_lambda!284663)))

(declare-fun bs!1921487 () Bool)

(declare-fun d!2285271 () Bool)

(assert (= bs!1921487 (and d!2285271 d!2285181)))

(assert (=> bs!1921487 (= (dynLambda!29532 lambda!458487 (h!78136 (exprs!8756 ct1!282))) (validRegex!9912 (h!78136 (exprs!8756 ct1!282))))))

(declare-fun m!8030022 () Bool)

(assert (=> bs!1921487 m!8030022))

(assert (=> b!7379117 d!2285271))

(declare-fun b_lambda!284665 () Bool)

(assert (= b_lambda!284657 (or d!2285185 b_lambda!284665)))

(declare-fun bs!1921488 () Bool)

(declare-fun d!2285273 () Bool)

(assert (= bs!1921488 (and d!2285273 d!2285185)))

(assert (=> bs!1921488 (= (dynLambda!29532 lambda!458489 (h!78136 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))))) (validRegex!9912 (h!78136 (exprs!8756 (Context!16513 ($colon$colon!3294 (exprs!8756 ct1!282) lt!2616736))))))))

(declare-fun m!8030024 () Bool)

(assert (=> bs!1921488 m!8030024))

(assert (=> b!7379113 d!2285273))

(declare-fun b_lambda!284667 () Bool)

(assert (= b_lambda!284659 (or d!2285177 b_lambda!284667)))

(declare-fun bs!1921489 () Bool)

(declare-fun d!2285275 () Bool)

(assert (= bs!1921489 (and d!2285275 d!2285177)))

(assert (=> bs!1921489 (= (dynLambda!29532 lambda!458486 (h!78136 (exprs!8756 cWitness!61))) (validRegex!9912 (h!78136 (exprs!8756 cWitness!61))))))

(declare-fun m!8030026 () Bool)

(assert (=> bs!1921489 m!8030026))

(assert (=> b!7379115 d!2285275))

(declare-fun b_lambda!284669 () Bool)

(assert (= b_lambda!284651 (or d!2285183 b_lambda!284669)))

(declare-fun bs!1921490 () Bool)

(declare-fun d!2285277 () Bool)

(assert (= bs!1921490 (and d!2285277 d!2285183)))

(assert (=> bs!1921490 (= (dynLambda!29532 lambda!458488 (h!78136 (exprs!8756 ct2!378))) (validRegex!9912 (h!78136 (exprs!8756 ct2!378))))))

(declare-fun m!8030028 () Bool)

(assert (=> bs!1921490 m!8030028))

(assert (=> b!7379013 d!2285277))

(declare-fun b_lambda!284671 () Bool)

(assert (= b_lambda!284655 (or b!7378668 b_lambda!284671)))

(declare-fun bs!1921491 () Bool)

(declare-fun d!2285279 () Bool)

(assert (= bs!1921491 (and d!2285279 b!7378668)))

(assert (=> bs!1921491 (= (dynLambda!29532 lambda!458480 (h!78136 (exprs!8756 ct1!282))) (validRegex!9912 (h!78136 (exprs!8756 ct1!282))))))

(assert (=> bs!1921491 m!8030022))

(assert (=> b!7379037 d!2285279))

(declare-fun b_lambda!284673 () Bool)

(assert (= b_lambda!284653 (or b!7378668 b_lambda!284673)))

(declare-fun bs!1921492 () Bool)

(declare-fun d!2285281 () Bool)

(assert (= bs!1921492 (and d!2285281 b!7378668)))

(assert (=> bs!1921492 (= (dynLambda!29532 lambda!458480 (h!78136 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)))) (validRegex!9912 (h!78136 (++!17132 (exprs!8756 ct1!282) (exprs!8756 ct2!378)))))))

(declare-fun m!8030030 () Bool)

(assert (=> bs!1921492 m!8030030))

(assert (=> b!7379035 d!2285281))

(push 1)

(assert (not b!7379005))

(assert (not b!7379036))

(assert (not bm!678687))

(assert (not d!2285269))

(assert (not b!7379014))

(assert (not b_lambda!284673))

(assert (not bm!678696))

(assert (not bm!678700))

(assert (not b!7379178))

(assert (not b!7379174))

(assert (not b!7379183))

(assert (not bm!678675))

(assert (not b_lambda!284669))

(assert (not b!7379199))

(assert (not b!7379141))

(assert (not bm!678681))

(assert (not b!7379170))

(assert (not b!7379165))

(assert (not b!7379080))

(assert (not b!7379118))

(assert (not b!7379231))

(assert (not b!7379177))

(assert (not b!7379110))

(assert (not bm!678685))

(assert (not b!7379200))

(assert (not bs!1921492))

(assert (not b!7379154))

(assert (not bs!1921488))

(assert (not b!7379164))

(assert (not b!7379145))

(assert (not b!7379191))

(assert (not b!7379166))

(assert (not b!7379203))

(assert (not b!7379144))

(assert (not b!7379220))

(assert (not b!7379148))

(assert (not bm!678705))

(assert (not b!7379217))

(assert (not bm!678677))

(assert (not b!7379114))

(assert (not bm!678678))

(assert (not b!7379188))

(assert (not b_lambda!284665))

(assert (not b!7379146))

(assert tp_is_empty!48877)

(assert (not bs!1921491))

(assert (not b!7379132))

(assert (not b!7379173))

(assert (not b_lambda!284663))

(assert (not b!7379190))

(assert (not b!7379020))

(assert (not bs!1921489))

(assert (not b_lambda!284667))

(assert (not b!7379225))

(assert (not b!7379175))

(assert (not b!7379038))

(assert (not b!7379198))

(assert (not bm!678704))

(assert (not b!7379180))

(assert (not bm!678694))

(assert (not b!7379223))

(assert (not b!7379140))

(assert (not b!7379137))

(assert (not b!7379142))

(assert (not b!7379138))

(assert (not b!7379121))

(assert (not b!7379129))

(assert (not bm!678666))

(assert (not b!7379184))

(assert (not bm!678699))

(assert (not b!7379156))

(assert (not b!7379124))

(assert (not b!7379130))

(assert (not b!7379081))

(assert (not d!2285251))

(assert (not b!7379227))

(assert (not b!7379172))

(assert (not b!7379157))

(assert (not b!7379075))

(assert (not b!7379136))

(assert (not b!7379213))

(assert (not b!7379108))

(assert (not b!7379207))

(assert (not b!7379152))

(assert (not b!7379134))

(assert (not b!7378998))

(assert (not b!7379099))

(assert (not b!7379169))

(assert (not b!7379208))

(assert (not b!7379092))

(assert (not bs!1921490))

(assert (not b!7379224))

(assert (not b!7379206))

(assert (not b!7379221))

(assert (not d!2285247))

(assert (not d!2285233))

(assert (not b!7379161))

(assert (not b!7379202))

(assert (not b!7379187))

(assert (not b!7379160))

(assert (not b!7379150))

(assert (not b!7379211))

(assert (not b!7379186))

(assert (not b!7379069))

(assert (not b!7379232))

(assert (not b!7379126))

(assert (not b!7379233))

(assert (not b!7379215))

(assert (not b!7379133))

(assert (not bs!1921487))

(assert (not bm!678693))

(assert (not b!7379153))

(assert (not b!7378987))

(assert (not bm!678672))

(assert (not b!7379210))

(assert (not b!7379116))

(assert (not b!7379112))

(assert (not b!7379168))

(assert (not b!7379149))

(assert (not bm!678684))

(assert (not b_lambda!284671))

(assert (not b!7379194))

(assert (not b!7379204))

(assert (not b!7379128))

(assert (not bm!678680))

(assert (not b!7379067))

(assert (not b!7379229))

(assert (not b!7379216))

(assert (not b!7379120))

(assert (not b!7379219))

(assert (not bm!678673))

(assert (not b!7379122))

(assert (not bm!678695))

(assert (not b!7379065))

(assert (not b!7379162))

(assert (not b!7379158))

(assert (not b!7379212))

(assert (not b!7379182))

(assert (not b!7379179))

(assert (not b!7379192))

(assert (not b!7379033))

(assert (not bm!678669))

(assert (not b!7379195))

(assert (not b!7379125))

(assert (not b!7379196))

(assert (not b!7379228))

(assert (not bm!678667))

(assert (not bm!678702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

