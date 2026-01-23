; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716658 () Bool)

(assert start!716658)

(declare-fun b!7336672 () Bool)

(declare-fun e!4393234 () Bool)

(declare-fun tp!2082787 () Bool)

(declare-fun tp!2082789 () Bool)

(assert (=> b!7336672 (= e!4393234 (and tp!2082787 tp!2082789))))

(declare-fun b!7336673 () Bool)

(declare-fun e!4393240 () Bool)

(declare-fun e!4393236 () Bool)

(assert (=> b!7336673 (= e!4393240 e!4393236)))

(declare-fun res!2964414 () Bool)

(assert (=> b!7336673 (=> (not res!2964414) (not e!4393236))))

(declare-datatypes ((C!38446 0))(
  ( (C!38447 (val!29583 Int)) )
))
(declare-datatypes ((Regex!19086 0))(
  ( (ElementMatch!19086 (c!1362668 C!38446)) (Concat!27931 (regOne!38684 Regex!19086) (regTwo!38684 Regex!19086)) (EmptyExpr!19086) (Star!19086 (reg!19415 Regex!19086)) (EmptyLang!19086) (Union!19086 (regOne!38685 Regex!19086) (regTwo!38685 Regex!19086)) )
))
(declare-datatypes ((List!71582 0))(
  ( (Nil!71458) (Cons!71458 (h!77906 Regex!19086) (t!385977 List!71582)) )
))
(declare-datatypes ((Context!16052 0))(
  ( (Context!16053 (exprs!8526 List!71582)) )
))
(declare-fun lt!2609321 () (Set Context!16052))

(declare-fun cWitness!61 () Context!16052)

(declare-fun ct1!282 () Context!16052)

(declare-fun lt!2609318 () (Set Context!16052))

(assert (=> b!7336673 (= res!2964414 (and (= lt!2609318 lt!2609321) (set.member cWitness!61 lt!2609321) (= cWitness!61 ct1!282)))))

(assert (=> b!7336673 (= lt!2609321 (set.insert ct1!282 (as set.empty (Set Context!16052))))))

(declare-fun b!7336674 () Bool)

(declare-fun e!4393233 () Bool)

(declare-fun tp!2082784 () Bool)

(assert (=> b!7336674 (= e!4393233 tp!2082784)))

(declare-fun b!7336675 () Bool)

(declare-fun tp!2082791 () Bool)

(assert (=> b!7336675 (= e!4393234 tp!2082791)))

(declare-fun b!7336676 () Bool)

(declare-fun e!4393241 () Bool)

(declare-fun e!4393239 () Bool)

(assert (=> b!7336676 (= e!4393241 e!4393239)))

(declare-fun res!2964413 () Bool)

(assert (=> b!7336676 (=> (not res!2964413) (not e!4393239))))

(assert (=> b!7336676 (= res!2964413 (set.member cWitness!61 lt!2609318))))

(declare-fun r1!2370 () Regex!19086)

(declare-fun c!10362 () C!38446)

(declare-fun derivationStepZipperDown!2912 (Regex!19086 Context!16052 C!38446) (Set Context!16052))

(assert (=> b!7336676 (= lt!2609318 (derivationStepZipperDown!2912 r1!2370 ct1!282 c!10362))))

(declare-fun b!7336677 () Bool)

(declare-fun e!4393238 () Bool)

(declare-fun tp!2082790 () Bool)

(assert (=> b!7336677 (= e!4393238 tp!2082790)))

(declare-fun res!2964416 () Bool)

(assert (=> start!716658 (=> (not res!2964416) (not e!4393241))))

(declare-fun validRegex!9682 (Regex!19086) Bool)

(assert (=> start!716658 (= res!2964416 (validRegex!9682 r1!2370))))

(assert (=> start!716658 e!4393241))

(declare-fun tp_is_empty!48417 () Bool)

(assert (=> start!716658 tp_is_empty!48417))

(declare-fun inv!91056 (Context!16052) Bool)

(assert (=> start!716658 (and (inv!91056 cWitness!61) e!4393238)))

(assert (=> start!716658 (and (inv!91056 ct1!282) e!4393233)))

(assert (=> start!716658 e!4393234))

(declare-fun ct2!378 () Context!16052)

(declare-fun e!4393237 () Bool)

(assert (=> start!716658 (and (inv!91056 ct2!378) e!4393237)))

(declare-fun b!7336678 () Bool)

(declare-fun e!4393235 () Bool)

(declare-fun lambda!455252 () Int)

(declare-fun forall!17920 (List!71582 Int) Bool)

(assert (=> b!7336678 (= e!4393235 (not (forall!17920 (exprs!8526 ct2!378) lambda!455252)))))

(declare-fun b!7336679 () Bool)

(assert (=> b!7336679 (= e!4393236 e!4393235)))

(declare-fun res!2964417 () Bool)

(assert (=> b!7336679 (=> (not res!2964417) (not e!4393235))))

(assert (=> b!7336679 (= res!2964417 (forall!17920 (exprs!8526 ct1!282) lambda!455252))))

(declare-fun b!7336680 () Bool)

(declare-fun tp!2082786 () Bool)

(declare-fun tp!2082785 () Bool)

(assert (=> b!7336680 (= e!4393234 (and tp!2082786 tp!2082785))))

(declare-fun b!7336681 () Bool)

(assert (=> b!7336681 (= e!4393239 e!4393240)))

(declare-fun res!2964415 () Bool)

(assert (=> b!7336681 (=> (not res!2964415) (not e!4393240))))

(assert (=> b!7336681 (= res!2964415 (and (is-ElementMatch!19086 r1!2370) (= c!10362 (c!1362668 r1!2370))))))

(declare-fun lt!2609320 () (Set Context!16052))

(declare-fun ++!16904 (List!71582 List!71582) List!71582)

(assert (=> b!7336681 (= lt!2609320 (derivationStepZipperDown!2912 r1!2370 (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165125 0))(
  ( (Unit!165126) )
))
(declare-fun lt!2609319 () Unit!165125)

(declare-fun lemmaConcatPreservesForall!1761 (List!71582 List!71582 Int) Unit!165125)

(assert (=> b!7336681 (= lt!2609319 (lemmaConcatPreservesForall!1761 (exprs!8526 ct1!282) (exprs!8526 ct2!378) lambda!455252))))

(declare-fun b!7336682 () Bool)

(declare-fun tp!2082788 () Bool)

(assert (=> b!7336682 (= e!4393237 tp!2082788)))

(declare-fun b!7336683 () Bool)

(assert (=> b!7336683 (= e!4393234 tp_is_empty!48417)))

(assert (= (and start!716658 res!2964416) b!7336676))

(assert (= (and b!7336676 res!2964413) b!7336681))

(assert (= (and b!7336681 res!2964415) b!7336673))

(assert (= (and b!7336673 res!2964414) b!7336679))

(assert (= (and b!7336679 res!2964417) b!7336678))

(assert (= start!716658 b!7336677))

(assert (= start!716658 b!7336674))

(assert (= (and start!716658 (is-ElementMatch!19086 r1!2370)) b!7336683))

(assert (= (and start!716658 (is-Concat!27931 r1!2370)) b!7336680))

(assert (= (and start!716658 (is-Star!19086 r1!2370)) b!7336675))

(assert (= (and start!716658 (is-Union!19086 r1!2370)) b!7336672))

(assert (= start!716658 b!7336682))

(declare-fun m!8002186 () Bool)

(assert (=> b!7336673 m!8002186))

(declare-fun m!8002188 () Bool)

(assert (=> b!7336673 m!8002188))

(declare-fun m!8002190 () Bool)

(assert (=> b!7336681 m!8002190))

(declare-fun m!8002192 () Bool)

(assert (=> b!7336681 m!8002192))

(declare-fun m!8002194 () Bool)

(assert (=> b!7336681 m!8002194))

(declare-fun m!8002196 () Bool)

(assert (=> b!7336676 m!8002196))

(declare-fun m!8002198 () Bool)

(assert (=> b!7336676 m!8002198))

(declare-fun m!8002200 () Bool)

(assert (=> start!716658 m!8002200))

(declare-fun m!8002202 () Bool)

(assert (=> start!716658 m!8002202))

(declare-fun m!8002204 () Bool)

(assert (=> start!716658 m!8002204))

(declare-fun m!8002206 () Bool)

(assert (=> start!716658 m!8002206))

(declare-fun m!8002208 () Bool)

(assert (=> b!7336678 m!8002208))

(declare-fun m!8002210 () Bool)

(assert (=> b!7336679 m!8002210))

(push 1)

(assert tp_is_empty!48417)

(assert (not b!7336679))

(assert (not b!7336674))

(assert (not b!7336677))

(assert (not b!7336680))

(assert (not b!7336678))

(assert (not b!7336682))

(assert (not b!7336681))

(assert (not b!7336676))

(assert (not b!7336672))

(assert (not b!7336675))

(assert (not start!716658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!669103 () Bool)

(declare-fun call!669113 () (Set Context!16052))

(declare-fun call!669108 () (Set Context!16052))

(assert (=> bm!669103 (= call!669113 call!669108)))

(declare-fun b!7336742 () Bool)

(declare-fun c!1362684 () Bool)

(assert (=> b!7336742 (= c!1362684 (is-Star!19086 r1!2370))))

(declare-fun e!4393285 () (Set Context!16052))

(declare-fun e!4393282 () (Set Context!16052))

(assert (=> b!7336742 (= e!4393285 e!4393282)))

(declare-fun b!7336743 () Bool)

(assert (=> b!7336743 (= e!4393282 (as set.empty (Set Context!16052)))))

(declare-fun call!669112 () List!71582)

(declare-fun c!1362680 () Bool)

(declare-fun bm!669104 () Bool)

(declare-fun c!1362681 () Bool)

(declare-fun c!1362683 () Bool)

(assert (=> bm!669104 (= call!669108 (derivationStepZipperDown!2912 (ite c!1362683 (regOne!38685 r1!2370) (ite c!1362680 (regTwo!38684 r1!2370) (ite c!1362681 (regOne!38684 r1!2370) (reg!19415 r1!2370)))) (ite (or c!1362683 c!1362680) ct1!282 (Context!16053 call!669112)) c!10362))))

(declare-fun b!7336744 () Bool)

(declare-fun e!4393284 () (Set Context!16052))

(declare-fun call!669111 () (Set Context!16052))

(assert (=> b!7336744 (= e!4393284 (set.union call!669111 call!669113))))

(declare-fun b!7336745 () Bool)

(declare-fun e!4393283 () Bool)

(assert (=> b!7336745 (= c!1362680 e!4393283)))

(declare-fun res!2964435 () Bool)

(assert (=> b!7336745 (=> (not res!2964435) (not e!4393283))))

(assert (=> b!7336745 (= res!2964435 (is-Concat!27931 r1!2370))))

(declare-fun e!4393286 () (Set Context!16052))

(assert (=> b!7336745 (= e!4393286 e!4393284)))

(declare-fun bm!669105 () Bool)

(declare-fun call!669110 () List!71582)

(declare-fun $colon$colon!3090 (List!71582 Regex!19086) List!71582)

(assert (=> bm!669105 (= call!669110 ($colon$colon!3090 (exprs!8526 ct1!282) (ite (or c!1362680 c!1362681) (regTwo!38684 r1!2370) r1!2370)))))

(declare-fun b!7336746 () Bool)

(declare-fun e!4393281 () (Set Context!16052))

(assert (=> b!7336746 (= e!4393281 (set.insert ct1!282 (as set.empty (Set Context!16052))))))

(declare-fun bm!669106 () Bool)

(assert (=> bm!669106 (= call!669112 call!669110)))

(declare-fun b!7336747 () Bool)

(assert (=> b!7336747 (= e!4393286 (set.union call!669108 call!669111))))

(declare-fun d!2278150 () Bool)

(declare-fun c!1362682 () Bool)

(assert (=> d!2278150 (= c!1362682 (and (is-ElementMatch!19086 r1!2370) (= (c!1362668 r1!2370) c!10362)))))

(assert (=> d!2278150 (= (derivationStepZipperDown!2912 r1!2370 ct1!282 c!10362) e!4393281)))

(declare-fun b!7336748 () Bool)

(declare-fun call!669109 () (Set Context!16052))

(assert (=> b!7336748 (= e!4393282 call!669109)))

(declare-fun bm!669107 () Bool)

(assert (=> bm!669107 (= call!669111 (derivationStepZipperDown!2912 (ite c!1362683 (regTwo!38685 r1!2370) (regOne!38684 r1!2370)) (ite c!1362683 ct1!282 (Context!16053 call!669110)) c!10362))))

(declare-fun b!7336749 () Bool)

(declare-fun nullable!8184 (Regex!19086) Bool)

(assert (=> b!7336749 (= e!4393283 (nullable!8184 (regOne!38684 r1!2370)))))

(declare-fun b!7336750 () Bool)

(assert (=> b!7336750 (= e!4393281 e!4393286)))

(assert (=> b!7336750 (= c!1362683 (is-Union!19086 r1!2370))))

(declare-fun bm!669108 () Bool)

(assert (=> bm!669108 (= call!669109 call!669113)))

(declare-fun b!7336751 () Bool)

(assert (=> b!7336751 (= e!4393285 call!669109)))

(declare-fun b!7336752 () Bool)

(assert (=> b!7336752 (= e!4393284 e!4393285)))

(assert (=> b!7336752 (= c!1362681 (is-Concat!27931 r1!2370))))

(assert (= (and d!2278150 c!1362682) b!7336746))

(assert (= (and d!2278150 (not c!1362682)) b!7336750))

(assert (= (and b!7336750 c!1362683) b!7336747))

(assert (= (and b!7336750 (not c!1362683)) b!7336745))

(assert (= (and b!7336745 res!2964435) b!7336749))

(assert (= (and b!7336745 c!1362680) b!7336744))

(assert (= (and b!7336745 (not c!1362680)) b!7336752))

(assert (= (and b!7336752 c!1362681) b!7336751))

(assert (= (and b!7336752 (not c!1362681)) b!7336742))

(assert (= (and b!7336742 c!1362684) b!7336748))

(assert (= (and b!7336742 (not c!1362684)) b!7336743))

(assert (= (or b!7336751 b!7336748) bm!669106))

(assert (= (or b!7336751 b!7336748) bm!669108))

(assert (= (or b!7336744 bm!669108) bm!669103))

(assert (= (or b!7336744 bm!669106) bm!669105))

(assert (= (or b!7336747 b!7336744) bm!669107))

(assert (= (or b!7336747 bm!669103) bm!669104))

(declare-fun m!8002238 () Bool)

(assert (=> b!7336749 m!8002238))

(declare-fun m!8002240 () Bool)

(assert (=> bm!669107 m!8002240))

(declare-fun m!8002242 () Bool)

(assert (=> bm!669104 m!8002242))

(declare-fun m!8002244 () Bool)

(assert (=> bm!669105 m!8002244))

(assert (=> b!7336746 m!8002188))

(assert (=> b!7336676 d!2278150))

(declare-fun bm!669109 () Bool)

(declare-fun call!669119 () (Set Context!16052))

(declare-fun call!669114 () (Set Context!16052))

(assert (=> bm!669109 (= call!669119 call!669114)))

(declare-fun b!7336753 () Bool)

(declare-fun c!1362689 () Bool)

(assert (=> b!7336753 (= c!1362689 (is-Star!19086 r1!2370))))

(declare-fun e!4393291 () (Set Context!16052))

(declare-fun e!4393288 () (Set Context!16052))

(assert (=> b!7336753 (= e!4393291 e!4393288)))

(declare-fun b!7336754 () Bool)

(assert (=> b!7336754 (= e!4393288 (as set.empty (Set Context!16052)))))

(declare-fun c!1362686 () Bool)

(declare-fun call!669118 () List!71582)

(declare-fun c!1362688 () Bool)

(declare-fun c!1362685 () Bool)

(declare-fun bm!669110 () Bool)

(assert (=> bm!669110 (= call!669114 (derivationStepZipperDown!2912 (ite c!1362688 (regOne!38685 r1!2370) (ite c!1362685 (regTwo!38684 r1!2370) (ite c!1362686 (regOne!38684 r1!2370) (reg!19415 r1!2370)))) (ite (or c!1362688 c!1362685) (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378))) (Context!16053 call!669118)) c!10362))))

(declare-fun b!7336755 () Bool)

(declare-fun e!4393290 () (Set Context!16052))

(declare-fun call!669117 () (Set Context!16052))

(assert (=> b!7336755 (= e!4393290 (set.union call!669117 call!669119))))

(declare-fun b!7336756 () Bool)

(declare-fun e!4393289 () Bool)

(assert (=> b!7336756 (= c!1362685 e!4393289)))

(declare-fun res!2964436 () Bool)

(assert (=> b!7336756 (=> (not res!2964436) (not e!4393289))))

(assert (=> b!7336756 (= res!2964436 (is-Concat!27931 r1!2370))))

(declare-fun e!4393292 () (Set Context!16052))

(assert (=> b!7336756 (= e!4393292 e!4393290)))

(declare-fun bm!669111 () Bool)

(declare-fun call!669116 () List!71582)

(assert (=> bm!669111 (= call!669116 ($colon$colon!3090 (exprs!8526 (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378)))) (ite (or c!1362685 c!1362686) (regTwo!38684 r1!2370) r1!2370)))))

(declare-fun b!7336757 () Bool)

(declare-fun e!4393287 () (Set Context!16052))

(assert (=> b!7336757 (= e!4393287 (set.insert (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378))) (as set.empty (Set Context!16052))))))

(declare-fun bm!669112 () Bool)

(assert (=> bm!669112 (= call!669118 call!669116)))

(declare-fun b!7336758 () Bool)

(assert (=> b!7336758 (= e!4393292 (set.union call!669114 call!669117))))

(declare-fun d!2278154 () Bool)

(declare-fun c!1362687 () Bool)

(assert (=> d!2278154 (= c!1362687 (and (is-ElementMatch!19086 r1!2370) (= (c!1362668 r1!2370) c!10362)))))

(assert (=> d!2278154 (= (derivationStepZipperDown!2912 r1!2370 (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378))) c!10362) e!4393287)))

(declare-fun b!7336759 () Bool)

(declare-fun call!669115 () (Set Context!16052))

(assert (=> b!7336759 (= e!4393288 call!669115)))

(declare-fun bm!669113 () Bool)

(assert (=> bm!669113 (= call!669117 (derivationStepZipperDown!2912 (ite c!1362688 (regTwo!38685 r1!2370) (regOne!38684 r1!2370)) (ite c!1362688 (Context!16053 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378))) (Context!16053 call!669116)) c!10362))))

(declare-fun b!7336760 () Bool)

(assert (=> b!7336760 (= e!4393289 (nullable!8184 (regOne!38684 r1!2370)))))

(declare-fun b!7336761 () Bool)

(assert (=> b!7336761 (= e!4393287 e!4393292)))

(assert (=> b!7336761 (= c!1362688 (is-Union!19086 r1!2370))))

(declare-fun bm!669114 () Bool)

(assert (=> bm!669114 (= call!669115 call!669119)))

(declare-fun b!7336762 () Bool)

(assert (=> b!7336762 (= e!4393291 call!669115)))

(declare-fun b!7336763 () Bool)

(assert (=> b!7336763 (= e!4393290 e!4393291)))

(assert (=> b!7336763 (= c!1362686 (is-Concat!27931 r1!2370))))

(assert (= (and d!2278154 c!1362687) b!7336757))

(assert (= (and d!2278154 (not c!1362687)) b!7336761))

(assert (= (and b!7336761 c!1362688) b!7336758))

(assert (= (and b!7336761 (not c!1362688)) b!7336756))

(assert (= (and b!7336756 res!2964436) b!7336760))

(assert (= (and b!7336756 c!1362685) b!7336755))

(assert (= (and b!7336756 (not c!1362685)) b!7336763))

(assert (= (and b!7336763 c!1362686) b!7336762))

(assert (= (and b!7336763 (not c!1362686)) b!7336753))

(assert (= (and b!7336753 c!1362689) b!7336759))

(assert (= (and b!7336753 (not c!1362689)) b!7336754))

(assert (= (or b!7336762 b!7336759) bm!669112))

(assert (= (or b!7336762 b!7336759) bm!669114))

(assert (= (or b!7336755 bm!669114) bm!669109))

(assert (= (or b!7336755 bm!669112) bm!669111))

(assert (= (or b!7336758 b!7336755) bm!669113))

(assert (= (or b!7336758 bm!669109) bm!669110))

(assert (=> b!7336760 m!8002238))

(declare-fun m!8002246 () Bool)

(assert (=> bm!669113 m!8002246))

(declare-fun m!8002248 () Bool)

(assert (=> bm!669110 m!8002248))

(declare-fun m!8002250 () Bool)

(assert (=> bm!669111 m!8002250))

(declare-fun m!8002252 () Bool)

(assert (=> b!7336757 m!8002252))

(assert (=> b!7336681 d!2278154))

(declare-fun d!2278156 () Bool)

(declare-fun e!4393310 () Bool)

(assert (=> d!2278156 e!4393310))

(declare-fun res!2964443 () Bool)

(assert (=> d!2278156 (=> (not res!2964443) (not e!4393310))))

(declare-fun lt!2609336 () List!71582)

(declare-fun content!15007 (List!71582) (Set Regex!19086))

(assert (=> d!2278156 (= res!2964443 (= (content!15007 lt!2609336) (set.union (content!15007 (exprs!8526 ct1!282)) (content!15007 (exprs!8526 ct2!378)))))))

(declare-fun e!4393309 () List!71582)

(assert (=> d!2278156 (= lt!2609336 e!4393309)))

(declare-fun c!1362702 () Bool)

(assert (=> d!2278156 (= c!1362702 (is-Nil!71458 (exprs!8526 ct1!282)))))

(assert (=> d!2278156 (= (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378)) lt!2609336)))

(declare-fun b!7336797 () Bool)

(assert (=> b!7336797 (= e!4393310 (or (not (= (exprs!8526 ct2!378) Nil!71458)) (= lt!2609336 (exprs!8526 ct1!282))))))

(declare-fun b!7336796 () Bool)

(declare-fun res!2964444 () Bool)

(assert (=> b!7336796 (=> (not res!2964444) (not e!4393310))))

(declare-fun size!41986 (List!71582) Int)

(assert (=> b!7336796 (= res!2964444 (= (size!41986 lt!2609336) (+ (size!41986 (exprs!8526 ct1!282)) (size!41986 (exprs!8526 ct2!378)))))))

(declare-fun b!7336794 () Bool)

(assert (=> b!7336794 (= e!4393309 (exprs!8526 ct2!378))))

(declare-fun b!7336795 () Bool)

(assert (=> b!7336795 (= e!4393309 (Cons!71458 (h!77906 (exprs!8526 ct1!282)) (++!16904 (t!385977 (exprs!8526 ct1!282)) (exprs!8526 ct2!378))))))

(assert (= (and d!2278156 c!1362702) b!7336794))

(assert (= (and d!2278156 (not c!1362702)) b!7336795))

(assert (= (and d!2278156 res!2964443) b!7336796))

(assert (= (and b!7336796 res!2964444) b!7336797))

(declare-fun m!8002254 () Bool)

(assert (=> d!2278156 m!8002254))

(declare-fun m!8002256 () Bool)

(assert (=> d!2278156 m!8002256))

(declare-fun m!8002258 () Bool)

(assert (=> d!2278156 m!8002258))

(declare-fun m!8002260 () Bool)

(assert (=> b!7336796 m!8002260))

(declare-fun m!8002262 () Bool)

(assert (=> b!7336796 m!8002262))

(declare-fun m!8002264 () Bool)

(assert (=> b!7336796 m!8002264))

(declare-fun m!8002266 () Bool)

(assert (=> b!7336795 m!8002266))

(assert (=> b!7336681 d!2278156))

(declare-fun d!2278158 () Bool)

(assert (=> d!2278158 (forall!17920 (++!16904 (exprs!8526 ct1!282) (exprs!8526 ct2!378)) lambda!455252)))

(declare-fun lt!2609339 () Unit!165125)

(declare-fun choose!57069 (List!71582 List!71582 Int) Unit!165125)

(assert (=> d!2278158 (= lt!2609339 (choose!57069 (exprs!8526 ct1!282) (exprs!8526 ct2!378) lambda!455252))))

(assert (=> d!2278158 (forall!17920 (exprs!8526 ct1!282) lambda!455252)))

(assert (=> d!2278158 (= (lemmaConcatPreservesForall!1761 (exprs!8526 ct1!282) (exprs!8526 ct2!378) lambda!455252) lt!2609339)))

(declare-fun bs!1918078 () Bool)

(assert (= bs!1918078 d!2278158))

(assert (=> bs!1918078 m!8002190))

(assert (=> bs!1918078 m!8002190))

(declare-fun m!8002268 () Bool)

(assert (=> bs!1918078 m!8002268))

(declare-fun m!8002270 () Bool)

(assert (=> bs!1918078 m!8002270))

(assert (=> bs!1918078 m!8002210))

(assert (=> b!7336681 d!2278158))

(declare-fun d!2278160 () Bool)

(declare-fun res!2964449 () Bool)

(declare-fun e!4393315 () Bool)

(assert (=> d!2278160 (=> res!2964449 e!4393315)))

(assert (=> d!2278160 (= res!2964449 (is-Nil!71458 (exprs!8526 ct1!282)))))

(assert (=> d!2278160 (= (forall!17920 (exprs!8526 ct1!282) lambda!455252) e!4393315)))

(declare-fun b!7336802 () Bool)

(declare-fun e!4393316 () Bool)

(assert (=> b!7336802 (= e!4393315 e!4393316)))

(declare-fun res!2964450 () Bool)

(assert (=> b!7336802 (=> (not res!2964450) (not e!4393316))))

(declare-fun dynLambda!29436 (Int Regex!19086) Bool)

(assert (=> b!7336802 (= res!2964450 (dynLambda!29436 lambda!455252 (h!77906 (exprs!8526 ct1!282))))))

(declare-fun b!7336803 () Bool)

(assert (=> b!7336803 (= e!4393316 (forall!17920 (t!385977 (exprs!8526 ct1!282)) lambda!455252))))

(assert (= (and d!2278160 (not res!2964449)) b!7336802))

(assert (= (and b!7336802 res!2964450) b!7336803))

(declare-fun b_lambda!283747 () Bool)

(assert (=> (not b_lambda!283747) (not b!7336802)))

(declare-fun m!8002272 () Bool)

(assert (=> b!7336802 m!8002272))

(declare-fun m!8002274 () Bool)

(assert (=> b!7336803 m!8002274))

(assert (=> b!7336679 d!2278160))

(declare-fun d!2278162 () Bool)

(declare-fun res!2964451 () Bool)

(declare-fun e!4393317 () Bool)

(assert (=> d!2278162 (=> res!2964451 e!4393317)))

(assert (=> d!2278162 (= res!2964451 (is-Nil!71458 (exprs!8526 ct2!378)))))

(assert (=> d!2278162 (= (forall!17920 (exprs!8526 ct2!378) lambda!455252) e!4393317)))

(declare-fun b!7336804 () Bool)

(declare-fun e!4393318 () Bool)

(assert (=> b!7336804 (= e!4393317 e!4393318)))

(declare-fun res!2964452 () Bool)

(assert (=> b!7336804 (=> (not res!2964452) (not e!4393318))))

(assert (=> b!7336804 (= res!2964452 (dynLambda!29436 lambda!455252 (h!77906 (exprs!8526 ct2!378))))))

(declare-fun b!7336805 () Bool)

(assert (=> b!7336805 (= e!4393318 (forall!17920 (t!385977 (exprs!8526 ct2!378)) lambda!455252))))

(assert (= (and d!2278162 (not res!2964451)) b!7336804))

(assert (= (and b!7336804 res!2964452) b!7336805))

(declare-fun b_lambda!283749 () Bool)

(assert (=> (not b_lambda!283749) (not b!7336804)))

(declare-fun m!8002276 () Bool)

(assert (=> b!7336804 m!8002276))

(declare-fun m!8002278 () Bool)

(assert (=> b!7336805 m!8002278))

(assert (=> b!7336678 d!2278162))

(declare-fun c!1362712 () Bool)

(declare-fun bm!669139 () Bool)

(declare-fun c!1362713 () Bool)

(declare-fun call!669144 () Bool)

(assert (=> bm!669139 (= call!669144 (validRegex!9682 (ite c!1362712 (reg!19415 r1!2370) (ite c!1362713 (regOne!38685 r1!2370) (regTwo!38684 r1!2370)))))))

(declare-fun b!7336835 () Bool)

(declare-fun res!2964467 () Bool)

(declare-fun e!4393344 () Bool)

(assert (=> b!7336835 (=> res!2964467 e!4393344)))

(assert (=> b!7336835 (= res!2964467 (not (is-Concat!27931 r1!2370)))))

(declare-fun e!4393341 () Bool)

(assert (=> b!7336835 (= e!4393341 e!4393344)))

(declare-fun b!7336836 () Bool)

(declare-fun e!4393345 () Bool)

(assert (=> b!7336836 (= e!4393344 e!4393345)))

(declare-fun res!2964466 () Bool)

(assert (=> b!7336836 (=> (not res!2964466) (not e!4393345))))

(declare-fun call!669145 () Bool)

(assert (=> b!7336836 (= res!2964466 call!669145)))

(declare-fun b!7336837 () Bool)

(declare-fun e!4393343 () Bool)

(declare-fun e!4393339 () Bool)

(assert (=> b!7336837 (= e!4393343 e!4393339)))

(assert (=> b!7336837 (= c!1362712 (is-Star!19086 r1!2370))))

(declare-fun b!7336838 () Bool)

(declare-fun e!4393340 () Bool)

(assert (=> b!7336838 (= e!4393340 call!669144)))

(declare-fun bm!669140 () Bool)

(assert (=> bm!669140 (= call!669145 (validRegex!9682 (ite c!1362713 (regTwo!38685 r1!2370) (regOne!38684 r1!2370))))))

(declare-fun b!7336839 () Bool)

(assert (=> b!7336839 (= e!4393339 e!4393340)))

(declare-fun res!2964465 () Bool)

(assert (=> b!7336839 (= res!2964465 (not (nullable!8184 (reg!19415 r1!2370))))))

(assert (=> b!7336839 (=> (not res!2964465) (not e!4393340))))

(declare-fun d!2278164 () Bool)

(declare-fun res!2964468 () Bool)

(assert (=> d!2278164 (=> res!2964468 e!4393343)))

(assert (=> d!2278164 (= res!2964468 (is-ElementMatch!19086 r1!2370))))

(assert (=> d!2278164 (= (validRegex!9682 r1!2370) e!4393343)))

(declare-fun b!7336840 () Bool)

(declare-fun e!4393342 () Bool)

(assert (=> b!7336840 (= e!4393342 call!669145)))

(declare-fun b!7336841 () Bool)

(declare-fun call!669146 () Bool)

(assert (=> b!7336841 (= e!4393345 call!669146)))

(declare-fun b!7336842 () Bool)

(declare-fun res!2964464 () Bool)

(assert (=> b!7336842 (=> (not res!2964464) (not e!4393342))))

(assert (=> b!7336842 (= res!2964464 call!669146)))

(assert (=> b!7336842 (= e!4393341 e!4393342)))

(declare-fun bm!669141 () Bool)

(assert (=> bm!669141 (= call!669146 call!669144)))

(declare-fun b!7336843 () Bool)

(assert (=> b!7336843 (= e!4393339 e!4393341)))

(assert (=> b!7336843 (= c!1362713 (is-Union!19086 r1!2370))))

(assert (= (and d!2278164 (not res!2964468)) b!7336837))

(assert (= (and b!7336837 c!1362712) b!7336839))

(assert (= (and b!7336837 (not c!1362712)) b!7336843))

(assert (= (and b!7336839 res!2964465) b!7336838))

(assert (= (and b!7336843 c!1362713) b!7336842))

(assert (= (and b!7336843 (not c!1362713)) b!7336835))

(assert (= (and b!7336842 res!2964464) b!7336840))

(assert (= (and b!7336835 (not res!2964467)) b!7336836))

(assert (= (and b!7336836 res!2964466) b!7336841))

(assert (= (or b!7336842 b!7336841) bm!669141))

(assert (= (or b!7336840 b!7336836) bm!669140))

(assert (= (or b!7336838 bm!669141) bm!669139))

(declare-fun m!8002290 () Bool)

(assert (=> bm!669139 m!8002290))

(declare-fun m!8002292 () Bool)

(assert (=> bm!669140 m!8002292))

(declare-fun m!8002294 () Bool)

(assert (=> b!7336839 m!8002294))

(assert (=> start!716658 d!2278164))

(declare-fun bs!1918079 () Bool)

(declare-fun d!2278168 () Bool)

(assert (= bs!1918079 (and d!2278168 b!7336681)))

(declare-fun lambda!455260 () Int)

(assert (=> bs!1918079 (= lambda!455260 lambda!455252)))

(assert (=> d!2278168 (= (inv!91056 cWitness!61) (forall!17920 (exprs!8526 cWitness!61) lambda!455260))))

(declare-fun bs!1918080 () Bool)

(assert (= bs!1918080 d!2278168))

(declare-fun m!8002296 () Bool)

(assert (=> bs!1918080 m!8002296))

(assert (=> start!716658 d!2278168))

(declare-fun bs!1918081 () Bool)

(declare-fun d!2278170 () Bool)

(assert (= bs!1918081 (and d!2278170 b!7336681)))

(declare-fun lambda!455261 () Int)

(assert (=> bs!1918081 (= lambda!455261 lambda!455252)))

(declare-fun bs!1918082 () Bool)

(assert (= bs!1918082 (and d!2278170 d!2278168)))

(assert (=> bs!1918082 (= lambda!455261 lambda!455260)))

(assert (=> d!2278170 (= (inv!91056 ct1!282) (forall!17920 (exprs!8526 ct1!282) lambda!455261))))

(declare-fun bs!1918083 () Bool)

(assert (= bs!1918083 d!2278170))

(declare-fun m!8002298 () Bool)

(assert (=> bs!1918083 m!8002298))

(assert (=> start!716658 d!2278170))

(declare-fun bs!1918084 () Bool)

(declare-fun d!2278172 () Bool)

(assert (= bs!1918084 (and d!2278172 b!7336681)))

(declare-fun lambda!455262 () Int)

(assert (=> bs!1918084 (= lambda!455262 lambda!455252)))

(declare-fun bs!1918085 () Bool)

(assert (= bs!1918085 (and d!2278172 d!2278168)))

(assert (=> bs!1918085 (= lambda!455262 lambda!455260)))

(declare-fun bs!1918086 () Bool)

(assert (= bs!1918086 (and d!2278172 d!2278170)))

(assert (=> bs!1918086 (= lambda!455262 lambda!455261)))

(assert (=> d!2278172 (= (inv!91056 ct2!378) (forall!17920 (exprs!8526 ct2!378) lambda!455262))))

(declare-fun bs!1918087 () Bool)

(assert (= bs!1918087 d!2278172))

(declare-fun m!8002300 () Bool)

(assert (=> bs!1918087 m!8002300))

(assert (=> start!716658 d!2278172))

(declare-fun b!7336856 () Bool)

(declare-fun e!4393352 () Bool)

(declare-fun tp!2082820 () Bool)

(declare-fun tp!2082821 () Bool)

(assert (=> b!7336856 (= e!4393352 (and tp!2082820 tp!2082821))))

(assert (=> b!7336682 (= tp!2082788 e!4393352)))

(assert (= (and b!7336682 (is-Cons!71458 (exprs!8526 ct2!378))) b!7336856))

(declare-fun b!7336870 () Bool)

(declare-fun e!4393355 () Bool)

(declare-fun tp!2082835 () Bool)

(declare-fun tp!2082834 () Bool)

(assert (=> b!7336870 (= e!4393355 (and tp!2082835 tp!2082834))))

(declare-fun b!7336869 () Bool)

(declare-fun tp!2082832 () Bool)

(assert (=> b!7336869 (= e!4393355 tp!2082832)))

(declare-fun b!7336867 () Bool)

(assert (=> b!7336867 (= e!4393355 tp_is_empty!48417)))

(assert (=> b!7336675 (= tp!2082791 e!4393355)))

(declare-fun b!7336868 () Bool)

(declare-fun tp!2082833 () Bool)

(declare-fun tp!2082836 () Bool)

(assert (=> b!7336868 (= e!4393355 (and tp!2082833 tp!2082836))))

(assert (= (and b!7336675 (is-ElementMatch!19086 (reg!19415 r1!2370))) b!7336867))

(assert (= (and b!7336675 (is-Concat!27931 (reg!19415 r1!2370))) b!7336868))

(assert (= (and b!7336675 (is-Star!19086 (reg!19415 r1!2370))) b!7336869))

(assert (= (and b!7336675 (is-Union!19086 (reg!19415 r1!2370))) b!7336870))

(declare-fun b!7336874 () Bool)

(declare-fun e!4393356 () Bool)

(declare-fun tp!2082840 () Bool)

(declare-fun tp!2082839 () Bool)

(assert (=> b!7336874 (= e!4393356 (and tp!2082840 tp!2082839))))

(declare-fun b!7336873 () Bool)

(declare-fun tp!2082837 () Bool)

(assert (=> b!7336873 (= e!4393356 tp!2082837)))

(declare-fun b!7336871 () Bool)

(assert (=> b!7336871 (= e!4393356 tp_is_empty!48417)))

(assert (=> b!7336680 (= tp!2082786 e!4393356)))

(declare-fun b!7336872 () Bool)

(declare-fun tp!2082838 () Bool)

(declare-fun tp!2082841 () Bool)

(assert (=> b!7336872 (= e!4393356 (and tp!2082838 tp!2082841))))

(assert (= (and b!7336680 (is-ElementMatch!19086 (regOne!38684 r1!2370))) b!7336871))

(assert (= (and b!7336680 (is-Concat!27931 (regOne!38684 r1!2370))) b!7336872))

(assert (= (and b!7336680 (is-Star!19086 (regOne!38684 r1!2370))) b!7336873))

(assert (= (and b!7336680 (is-Union!19086 (regOne!38684 r1!2370))) b!7336874))

(declare-fun b!7336878 () Bool)

(declare-fun e!4393357 () Bool)

(declare-fun tp!2082845 () Bool)

(declare-fun tp!2082844 () Bool)

(assert (=> b!7336878 (= e!4393357 (and tp!2082845 tp!2082844))))

(declare-fun b!7336877 () Bool)

(declare-fun tp!2082842 () Bool)

(assert (=> b!7336877 (= e!4393357 tp!2082842)))

(declare-fun b!7336875 () Bool)

(assert (=> b!7336875 (= e!4393357 tp_is_empty!48417)))

(assert (=> b!7336680 (= tp!2082785 e!4393357)))

(declare-fun b!7336876 () Bool)

(declare-fun tp!2082843 () Bool)

(declare-fun tp!2082846 () Bool)

(assert (=> b!7336876 (= e!4393357 (and tp!2082843 tp!2082846))))

(assert (= (and b!7336680 (is-ElementMatch!19086 (regTwo!38684 r1!2370))) b!7336875))

(assert (= (and b!7336680 (is-Concat!27931 (regTwo!38684 r1!2370))) b!7336876))

(assert (= (and b!7336680 (is-Star!19086 (regTwo!38684 r1!2370))) b!7336877))

(assert (= (and b!7336680 (is-Union!19086 (regTwo!38684 r1!2370))) b!7336878))

(declare-fun b!7336879 () Bool)

(declare-fun e!4393358 () Bool)

(declare-fun tp!2082847 () Bool)

(declare-fun tp!2082848 () Bool)

(assert (=> b!7336879 (= e!4393358 (and tp!2082847 tp!2082848))))

(assert (=> b!7336674 (= tp!2082784 e!4393358)))

(assert (= (and b!7336674 (is-Cons!71458 (exprs!8526 ct1!282))) b!7336879))

(declare-fun b!7336883 () Bool)

(declare-fun e!4393359 () Bool)

(declare-fun tp!2082852 () Bool)

(declare-fun tp!2082851 () Bool)

(assert (=> b!7336883 (= e!4393359 (and tp!2082852 tp!2082851))))

(declare-fun b!7336882 () Bool)

(declare-fun tp!2082849 () Bool)

(assert (=> b!7336882 (= e!4393359 tp!2082849)))

(declare-fun b!7336880 () Bool)

(assert (=> b!7336880 (= e!4393359 tp_is_empty!48417)))

(assert (=> b!7336672 (= tp!2082787 e!4393359)))

(declare-fun b!7336881 () Bool)

(declare-fun tp!2082850 () Bool)

(declare-fun tp!2082853 () Bool)

(assert (=> b!7336881 (= e!4393359 (and tp!2082850 tp!2082853))))

(assert (= (and b!7336672 (is-ElementMatch!19086 (regOne!38685 r1!2370))) b!7336880))

(assert (= (and b!7336672 (is-Concat!27931 (regOne!38685 r1!2370))) b!7336881))

(assert (= (and b!7336672 (is-Star!19086 (regOne!38685 r1!2370))) b!7336882))

(assert (= (and b!7336672 (is-Union!19086 (regOne!38685 r1!2370))) b!7336883))

(declare-fun b!7336887 () Bool)

(declare-fun e!4393360 () Bool)

(declare-fun tp!2082857 () Bool)

(declare-fun tp!2082856 () Bool)

(assert (=> b!7336887 (= e!4393360 (and tp!2082857 tp!2082856))))

(declare-fun b!7336886 () Bool)

(declare-fun tp!2082854 () Bool)

(assert (=> b!7336886 (= e!4393360 tp!2082854)))

(declare-fun b!7336884 () Bool)

(assert (=> b!7336884 (= e!4393360 tp_is_empty!48417)))

(assert (=> b!7336672 (= tp!2082789 e!4393360)))

(declare-fun b!7336885 () Bool)

(declare-fun tp!2082855 () Bool)

(declare-fun tp!2082858 () Bool)

(assert (=> b!7336885 (= e!4393360 (and tp!2082855 tp!2082858))))

(assert (= (and b!7336672 (is-ElementMatch!19086 (regTwo!38685 r1!2370))) b!7336884))

(assert (= (and b!7336672 (is-Concat!27931 (regTwo!38685 r1!2370))) b!7336885))

(assert (= (and b!7336672 (is-Star!19086 (regTwo!38685 r1!2370))) b!7336886))

(assert (= (and b!7336672 (is-Union!19086 (regTwo!38685 r1!2370))) b!7336887))

(declare-fun b!7336888 () Bool)

(declare-fun e!4393361 () Bool)

(declare-fun tp!2082859 () Bool)

(declare-fun tp!2082860 () Bool)

(assert (=> b!7336888 (= e!4393361 (and tp!2082859 tp!2082860))))

(assert (=> b!7336677 (= tp!2082790 e!4393361)))

(assert (= (and b!7336677 (is-Cons!71458 (exprs!8526 cWitness!61))) b!7336888))

(declare-fun b_lambda!283751 () Bool)

(assert (= b_lambda!283749 (or b!7336681 b_lambda!283751)))

(declare-fun bs!1918088 () Bool)

(declare-fun d!2278174 () Bool)

(assert (= bs!1918088 (and d!2278174 b!7336681)))

(assert (=> bs!1918088 (= (dynLambda!29436 lambda!455252 (h!77906 (exprs!8526 ct2!378))) (validRegex!9682 (h!77906 (exprs!8526 ct2!378))))))

(declare-fun m!8002302 () Bool)

(assert (=> bs!1918088 m!8002302))

(assert (=> b!7336804 d!2278174))

(declare-fun b_lambda!283753 () Bool)

(assert (= b_lambda!283747 (or b!7336681 b_lambda!283753)))

(declare-fun bs!1918089 () Bool)

(declare-fun d!2278176 () Bool)

(assert (= bs!1918089 (and d!2278176 b!7336681)))

(assert (=> bs!1918089 (= (dynLambda!29436 lambda!455252 (h!77906 (exprs!8526 ct1!282))) (validRegex!9682 (h!77906 (exprs!8526 ct1!282))))))

(declare-fun m!8002304 () Bool)

(assert (=> bs!1918089 m!8002304))

(assert (=> b!7336802 d!2278176))

(push 1)

(assert (not b!7336760))

(assert (not b!7336885))

(assert (not b!7336796))

(assert (not bm!669104))

(assert (not b!7336803))

(assert (not b_lambda!283751))

(assert (not b!7336879))

(assert (not b!7336868))

(assert (not b!7336883))

(assert (not b!7336876))

(assert (not b!7336882))

(assert (not bm!669140))

(assert (not bm!669113))

(assert (not b!7336795))

(assert (not bm!669110))

(assert (not bs!1918088))

(assert (not b!7336888))

(assert (not bm!669111))

(assert (not b!7336805))

(assert (not b!7336877))

(assert (not b!7336869))

(assert (not b!7336873))

(assert tp_is_empty!48417)

(assert (not b!7336870))

(assert (not d!2278172))

(assert (not b!7336874))

(assert (not bs!1918089))

(assert (not b!7336749))

(assert (not d!2278170))

(assert (not d!2278158))

(assert (not d!2278168))

(assert (not b_lambda!283753))

(assert (not b!7336872))

(assert (not bm!669107))

(assert (not b!7336839))

(assert (not bm!669105))

(assert (not b!7336886))

(assert (not b!7336856))

(assert (not b!7336887))

(assert (not bm!669139))

(assert (not d!2278156))

(assert (not b!7336878))

(assert (not b!7336881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

