; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715922 () Bool)

(assert start!715922)

(declare-fun b!7331038 () Bool)

(declare-fun e!4389826 () Bool)

(declare-fun e!4389821 () Bool)

(assert (=> b!7331038 (= e!4389826 e!4389821)))

(declare-fun res!2962742 () Bool)

(assert (=> b!7331038 (=> (not res!2962742) (not e!4389821))))

(declare-datatypes ((C!38366 0))(
  ( (C!38367 (val!29543 Int)) )
))
(declare-datatypes ((Regex!19046 0))(
  ( (ElementMatch!19046 (c!1361176 C!38366)) (Concat!27891 (regOne!38604 Regex!19046) (regTwo!38604 Regex!19046)) (EmptyExpr!19046) (Star!19046 (reg!19375 Regex!19046)) (EmptyLang!19046) (Union!19046 (regOne!38605 Regex!19046) (regTwo!38605 Regex!19046)) )
))
(declare-datatypes ((List!71542 0))(
  ( (Nil!71418) (Cons!71418 (h!77866 Regex!19046) (t!385929 List!71542)) )
))
(declare-datatypes ((Context!15972 0))(
  ( (Context!15973 (exprs!8486 List!71542)) )
))
(declare-fun ct1!256 () Context!15972)

(declare-fun nullable!8147 (Regex!19046) Bool)

(assert (=> b!7331038 (= res!2962742 (nullable!8147 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun c!10305 () C!38366)

(declare-fun lt!2607938 () Context!15972)

(declare-fun lt!2607940 () (Set Context!15972))

(declare-fun derivationStepZipperDown!2873 (Regex!19046 Context!15972 C!38366) (Set Context!15972))

(assert (=> b!7331038 (= lt!2607940 (derivationStepZipperDown!2873 (h!77866 (exprs!8486 ct1!256)) lt!2607938 c!10305))))

(declare-fun tail!14727 (List!71542) List!71542)

(assert (=> b!7331038 (= lt!2607938 (Context!15973 (tail!14727 (exprs!8486 ct1!256))))))

(declare-fun b!7331039 () Bool)

(declare-fun res!2962740 () Bool)

(assert (=> b!7331039 (=> (not res!2962740) (not e!4389826))))

(declare-fun isEmpty!40958 (List!71542) Bool)

(assert (=> b!7331039 (= res!2962740 (not (isEmpty!40958 (exprs!8486 ct1!256))))))

(declare-fun b!7331040 () Bool)

(declare-fun e!4389827 () Bool)

(assert (=> b!7331040 (= e!4389827 e!4389826)))

(declare-fun res!2962743 () Bool)

(assert (=> b!7331040 (=> (not res!2962743) (not e!4389826))))

(assert (=> b!7331040 (= res!2962743 (is-Cons!71418 (exprs!8486 ct1!256)))))

(declare-fun lt!2607941 () List!71542)

(declare-fun ct2!352 () Context!15972)

(declare-fun ++!16868 (List!71542 List!71542) List!71542)

(assert (=> b!7331040 (= lt!2607941 (++!16868 (exprs!8486 ct1!256) (exprs!8486 ct2!352)))))

(declare-fun lambda!454728 () Int)

(declare-datatypes ((Unit!165053 0))(
  ( (Unit!165054) )
))
(declare-fun lt!2607943 () Unit!165053)

(declare-fun lemmaConcatPreservesForall!1725 (List!71542 List!71542 Int) Unit!165053)

(assert (=> b!7331040 (= lt!2607943 (lemmaConcatPreservesForall!1725 (exprs!8486 ct1!256) (exprs!8486 ct2!352) lambda!454728))))

(declare-fun b!7331041 () Bool)

(declare-fun e!4389825 () Bool)

(declare-fun tp!2081488 () Bool)

(assert (=> b!7331041 (= e!4389825 tp!2081488)))

(declare-fun b!7331042 () Bool)

(declare-fun e!4389822 () Bool)

(declare-fun tp!2081486 () Bool)

(assert (=> b!7331042 (= e!4389822 tp!2081486)))

(declare-fun b!7331043 () Bool)

(declare-fun e!4389823 () Bool)

(assert (=> b!7331043 (= e!4389823 (isEmpty!40958 lt!2607941))))

(declare-fun b!7331044 () Bool)

(declare-fun e!4389824 () Bool)

(declare-fun tp!2081487 () Bool)

(assert (=> b!7331044 (= e!4389824 tp!2081487)))

(declare-fun b!7331045 () Bool)

(assert (=> b!7331045 (= e!4389821 e!4389823)))

(declare-fun res!2962739 () Bool)

(assert (=> b!7331045 (=> (not res!2962739) (not e!4389823))))

(declare-fun lt!2607942 () (Set Context!15972))

(declare-fun cWitness!35 () Context!15972)

(declare-fun lt!2607939 () (Set Context!15972))

(assert (=> b!7331045 (= res!2962739 (and (= lt!2607942 (set.union lt!2607940 lt!2607939)) (or (set.member cWitness!35 lt!2607940) (set.member cWitness!35 lt!2607939)) (not (set.member cWitness!35 lt!2607939))))))

(declare-fun derivationStepZipperUp!2726 (Context!15972 C!38366) (Set Context!15972))

(assert (=> b!7331045 (= lt!2607939 (derivationStepZipperUp!2726 lt!2607938 c!10305))))

(declare-fun res!2962741 () Bool)

(assert (=> start!715922 (=> (not res!2962741) (not e!4389827))))

(assert (=> start!715922 (= res!2962741 (set.member cWitness!35 lt!2607942))))

(assert (=> start!715922 (= lt!2607942 (derivationStepZipperUp!2726 ct1!256 c!10305))))

(assert (=> start!715922 e!4389827))

(declare-fun tp_is_empty!48337 () Bool)

(assert (=> start!715922 tp_is_empty!48337))

(declare-fun inv!90956 (Context!15972) Bool)

(assert (=> start!715922 (and (inv!90956 cWitness!35) e!4389825)))

(assert (=> start!715922 (and (inv!90956 ct1!256) e!4389824)))

(assert (=> start!715922 (and (inv!90956 ct2!352) e!4389822)))

(assert (= (and start!715922 res!2962741) b!7331040))

(assert (= (and b!7331040 res!2962743) b!7331039))

(assert (= (and b!7331039 res!2962740) b!7331038))

(assert (= (and b!7331038 res!2962742) b!7331045))

(assert (= (and b!7331045 res!2962739) b!7331043))

(assert (= start!715922 b!7331041))

(assert (= start!715922 b!7331044))

(assert (= start!715922 b!7331042))

(declare-fun m!7997178 () Bool)

(assert (=> b!7331045 m!7997178))

(declare-fun m!7997180 () Bool)

(assert (=> b!7331045 m!7997180))

(declare-fun m!7997182 () Bool)

(assert (=> b!7331045 m!7997182))

(declare-fun m!7997184 () Bool)

(assert (=> b!7331043 m!7997184))

(declare-fun m!7997186 () Bool)

(assert (=> b!7331039 m!7997186))

(declare-fun m!7997188 () Bool)

(assert (=> start!715922 m!7997188))

(declare-fun m!7997190 () Bool)

(assert (=> start!715922 m!7997190))

(declare-fun m!7997192 () Bool)

(assert (=> start!715922 m!7997192))

(declare-fun m!7997194 () Bool)

(assert (=> start!715922 m!7997194))

(declare-fun m!7997196 () Bool)

(assert (=> start!715922 m!7997196))

(declare-fun m!7997198 () Bool)

(assert (=> b!7331040 m!7997198))

(declare-fun m!7997200 () Bool)

(assert (=> b!7331040 m!7997200))

(declare-fun m!7997202 () Bool)

(assert (=> b!7331038 m!7997202))

(declare-fun m!7997204 () Bool)

(assert (=> b!7331038 m!7997204))

(declare-fun m!7997206 () Bool)

(assert (=> b!7331038 m!7997206))

(push 1)

(assert (not b!7331040))

(assert (not start!715922))

(assert (not b!7331039))

(assert (not b!7331042))

(assert (not b!7331043))

(assert (not b!7331044))

(assert tp_is_empty!48337)

(assert (not b!7331045))

(assert (not b!7331041))

(assert (not b!7331038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276556 () Bool)

(assert (=> d!2276556 (= (isEmpty!40958 lt!2607941) (is-Nil!71418 lt!2607941))))

(assert (=> b!7331043 d!2276556))

(declare-fun d!2276558 () Bool)

(declare-fun nullableFct!3242 (Regex!19046) Bool)

(assert (=> d!2276558 (= (nullable!8147 (h!77866 (exprs!8486 ct1!256))) (nullableFct!3242 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun bs!1917406 () Bool)

(assert (= bs!1917406 d!2276558))

(declare-fun m!7997238 () Bool)

(assert (=> bs!1917406 m!7997238))

(assert (=> b!7331038 d!2276558))

(declare-fun c!1361195 () Bool)

(declare-fun call!667773 () List!71542)

(declare-fun c!1361194 () Bool)

(declare-fun bm!667768 () Bool)

(declare-fun $colon$colon!3059 (List!71542 Regex!19046) List!71542)

(assert (=> bm!667768 (= call!667773 ($colon$colon!3059 (exprs!8486 lt!2607938) (ite (or c!1361195 c!1361194) (regTwo!38604 (h!77866 (exprs!8486 ct1!256))) (h!77866 (exprs!8486 ct1!256)))))))

(declare-fun d!2276560 () Bool)

(declare-fun c!1361197 () Bool)

(assert (=> d!2276560 (= c!1361197 (and (is-ElementMatch!19046 (h!77866 (exprs!8486 ct1!256))) (= (c!1361176 (h!77866 (exprs!8486 ct1!256))) c!10305)))))

(declare-fun e!4389871 () (Set Context!15972))

(assert (=> d!2276560 (= (derivationStepZipperDown!2873 (h!77866 (exprs!8486 ct1!256)) lt!2607938 c!10305) e!4389871)))

(declare-fun b!7331107 () Bool)

(declare-fun e!4389874 () Bool)

(assert (=> b!7331107 (= c!1361195 e!4389874)))

(declare-fun res!2962764 () Bool)

(assert (=> b!7331107 (=> (not res!2962764) (not e!4389874))))

(assert (=> b!7331107 (= res!2962764 (is-Concat!27891 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun e!4389872 () (Set Context!15972))

(declare-fun e!4389870 () (Set Context!15972))

(assert (=> b!7331107 (= e!4389872 e!4389870)))

(declare-fun call!667777 () (Set Context!15972))

(declare-fun bm!667769 () Bool)

(declare-fun c!1361198 () Bool)

(assert (=> bm!667769 (= call!667777 (derivationStepZipperDown!2873 (ite c!1361198 (regOne!38605 (h!77866 (exprs!8486 ct1!256))) (regOne!38604 (h!77866 (exprs!8486 ct1!256)))) (ite c!1361198 lt!2607938 (Context!15973 call!667773)) c!10305))))

(declare-fun b!7331108 () Bool)

(declare-fun e!4389875 () (Set Context!15972))

(declare-fun call!667778 () (Set Context!15972))

(assert (=> b!7331108 (= e!4389875 call!667778)))

(declare-fun bm!667770 () Bool)

(declare-fun call!667774 () (Set Context!15972))

(assert (=> bm!667770 (= call!667778 call!667774)))

(declare-fun b!7331109 () Bool)

(declare-fun call!667775 () (Set Context!15972))

(assert (=> b!7331109 (= e!4389872 (set.union call!667777 call!667775))))

(declare-fun b!7331110 () Bool)

(declare-fun e!4389873 () (Set Context!15972))

(assert (=> b!7331110 (= e!4389873 call!667778)))

(declare-fun b!7331111 () Bool)

(assert (=> b!7331111 (= e!4389873 (as set.empty (Set Context!15972)))))

(declare-fun b!7331112 () Bool)

(assert (=> b!7331112 (= e!4389874 (nullable!8147 (regOne!38604 (h!77866 (exprs!8486 ct1!256)))))))

(declare-fun bm!667771 () Bool)

(assert (=> bm!667771 (= call!667774 call!667775)))

(declare-fun b!7331113 () Bool)

(assert (=> b!7331113 (= e!4389871 (set.insert lt!2607938 (as set.empty (Set Context!15972))))))

(declare-fun call!667776 () List!71542)

(declare-fun bm!667772 () Bool)

(assert (=> bm!667772 (= call!667775 (derivationStepZipperDown!2873 (ite c!1361198 (regTwo!38605 (h!77866 (exprs!8486 ct1!256))) (ite c!1361195 (regTwo!38604 (h!77866 (exprs!8486 ct1!256))) (ite c!1361194 (regOne!38604 (h!77866 (exprs!8486 ct1!256))) (reg!19375 (h!77866 (exprs!8486 ct1!256)))))) (ite (or c!1361198 c!1361195) lt!2607938 (Context!15973 call!667776)) c!10305))))

(declare-fun b!7331114 () Bool)

(assert (=> b!7331114 (= e!4389871 e!4389872)))

(assert (=> b!7331114 (= c!1361198 (is-Union!19046 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun b!7331115 () Bool)

(assert (=> b!7331115 (= e!4389870 (set.union call!667777 call!667774))))

(declare-fun bm!667773 () Bool)

(assert (=> bm!667773 (= call!667776 call!667773)))

(declare-fun b!7331116 () Bool)

(assert (=> b!7331116 (= e!4389870 e!4389875)))

(assert (=> b!7331116 (= c!1361194 (is-Concat!27891 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun b!7331117 () Bool)

(declare-fun c!1361196 () Bool)

(assert (=> b!7331117 (= c!1361196 (is-Star!19046 (h!77866 (exprs!8486 ct1!256))))))

(assert (=> b!7331117 (= e!4389875 e!4389873)))

(assert (= (and d!2276560 c!1361197) b!7331113))

(assert (= (and d!2276560 (not c!1361197)) b!7331114))

(assert (= (and b!7331114 c!1361198) b!7331109))

(assert (= (and b!7331114 (not c!1361198)) b!7331107))

(assert (= (and b!7331107 res!2962764) b!7331112))

(assert (= (and b!7331107 c!1361195) b!7331115))

(assert (= (and b!7331107 (not c!1361195)) b!7331116))

(assert (= (and b!7331116 c!1361194) b!7331108))

(assert (= (and b!7331116 (not c!1361194)) b!7331117))

(assert (= (and b!7331117 c!1361196) b!7331110))

(assert (= (and b!7331117 (not c!1361196)) b!7331111))

(assert (= (or b!7331108 b!7331110) bm!667773))

(assert (= (or b!7331108 b!7331110) bm!667770))

(assert (= (or b!7331115 bm!667770) bm!667771))

(assert (= (or b!7331115 bm!667773) bm!667768))

(assert (= (or b!7331109 bm!667771) bm!667772))

(assert (= (or b!7331109 b!7331115) bm!667769))

(declare-fun m!7997244 () Bool)

(assert (=> b!7331113 m!7997244))

(declare-fun m!7997246 () Bool)

(assert (=> bm!667768 m!7997246))

(declare-fun m!7997248 () Bool)

(assert (=> b!7331112 m!7997248))

(declare-fun m!7997250 () Bool)

(assert (=> bm!667769 m!7997250))

(declare-fun m!7997252 () Bool)

(assert (=> bm!667772 m!7997252))

(assert (=> b!7331038 d!2276560))

(declare-fun d!2276566 () Bool)

(assert (=> d!2276566 (= (tail!14727 (exprs!8486 ct1!256)) (t!385929 (exprs!8486 ct1!256)))))

(assert (=> b!7331038 d!2276566))

(declare-fun b!7331128 () Bool)

(declare-fun res!2962770 () Bool)

(declare-fun e!4389880 () Bool)

(assert (=> b!7331128 (=> (not res!2962770) (not e!4389880))))

(declare-fun lt!2607964 () List!71542)

(declare-fun size!41955 (List!71542) Int)

(assert (=> b!7331128 (= res!2962770 (= (size!41955 lt!2607964) (+ (size!41955 (exprs!8486 ct1!256)) (size!41955 (exprs!8486 ct2!352)))))))

(declare-fun b!7331126 () Bool)

(declare-fun e!4389881 () List!71542)

(assert (=> b!7331126 (= e!4389881 (exprs!8486 ct2!352))))

(declare-fun b!7331129 () Bool)

(assert (=> b!7331129 (= e!4389880 (or (not (= (exprs!8486 ct2!352) Nil!71418)) (= lt!2607964 (exprs!8486 ct1!256))))))

(declare-fun b!7331127 () Bool)

(assert (=> b!7331127 (= e!4389881 (Cons!71418 (h!77866 (exprs!8486 ct1!256)) (++!16868 (t!385929 (exprs!8486 ct1!256)) (exprs!8486 ct2!352))))))

(declare-fun d!2276568 () Bool)

(assert (=> d!2276568 e!4389880))

(declare-fun res!2962769 () Bool)

(assert (=> d!2276568 (=> (not res!2962769) (not e!4389880))))

(declare-fun content!14976 (List!71542) (Set Regex!19046))

(assert (=> d!2276568 (= res!2962769 (= (content!14976 lt!2607964) (set.union (content!14976 (exprs!8486 ct1!256)) (content!14976 (exprs!8486 ct2!352)))))))

(assert (=> d!2276568 (= lt!2607964 e!4389881)))

(declare-fun c!1361201 () Bool)

(assert (=> d!2276568 (= c!1361201 (is-Nil!71418 (exprs!8486 ct1!256)))))

(assert (=> d!2276568 (= (++!16868 (exprs!8486 ct1!256) (exprs!8486 ct2!352)) lt!2607964)))

(assert (= (and d!2276568 c!1361201) b!7331126))

(assert (= (and d!2276568 (not c!1361201)) b!7331127))

(assert (= (and d!2276568 res!2962769) b!7331128))

(assert (= (and b!7331128 res!2962770) b!7331129))

(declare-fun m!7997260 () Bool)

(assert (=> b!7331128 m!7997260))

(declare-fun m!7997262 () Bool)

(assert (=> b!7331128 m!7997262))

(declare-fun m!7997264 () Bool)

(assert (=> b!7331128 m!7997264))

(declare-fun m!7997266 () Bool)

(assert (=> b!7331127 m!7997266))

(declare-fun m!7997268 () Bool)

(assert (=> d!2276568 m!7997268))

(declare-fun m!7997270 () Bool)

(assert (=> d!2276568 m!7997270))

(declare-fun m!7997272 () Bool)

(assert (=> d!2276568 m!7997272))

(assert (=> b!7331040 d!2276568))

(declare-fun d!2276576 () Bool)

(declare-fun forall!17885 (List!71542 Int) Bool)

(assert (=> d!2276576 (forall!17885 (++!16868 (exprs!8486 ct1!256) (exprs!8486 ct2!352)) lambda!454728)))

(declare-fun lt!2607969 () Unit!165053)

(declare-fun choose!57025 (List!71542 List!71542 Int) Unit!165053)

(assert (=> d!2276576 (= lt!2607969 (choose!57025 (exprs!8486 ct1!256) (exprs!8486 ct2!352) lambda!454728))))

(assert (=> d!2276576 (forall!17885 (exprs!8486 ct1!256) lambda!454728)))

(assert (=> d!2276576 (= (lemmaConcatPreservesForall!1725 (exprs!8486 ct1!256) (exprs!8486 ct2!352) lambda!454728) lt!2607969)))

(declare-fun bs!1917416 () Bool)

(assert (= bs!1917416 d!2276576))

(assert (=> bs!1917416 m!7997198))

(assert (=> bs!1917416 m!7997198))

(declare-fun m!7997274 () Bool)

(assert (=> bs!1917416 m!7997274))

(declare-fun m!7997276 () Bool)

(assert (=> bs!1917416 m!7997276))

(declare-fun m!7997278 () Bool)

(assert (=> bs!1917416 m!7997278))

(assert (=> b!7331040 d!2276576))

(declare-fun b!7331152 () Bool)

(declare-fun e!4389894 () Bool)

(assert (=> b!7331152 (= e!4389894 (nullable!8147 (h!77866 (exprs!8486 ct1!256))))))

(declare-fun bm!667776 () Bool)

(declare-fun call!667781 () (Set Context!15972))

(assert (=> bm!667776 (= call!667781 (derivationStepZipperDown!2873 (h!77866 (exprs!8486 ct1!256)) (Context!15973 (t!385929 (exprs!8486 ct1!256))) c!10305))))

(declare-fun d!2276578 () Bool)

(declare-fun c!1361209 () Bool)

(assert (=> d!2276578 (= c!1361209 e!4389894)))

(declare-fun res!2962779 () Bool)

(assert (=> d!2276578 (=> (not res!2962779) (not e!4389894))))

(assert (=> d!2276578 (= res!2962779 (is-Cons!71418 (exprs!8486 ct1!256)))))

(declare-fun e!4389895 () (Set Context!15972))

(assert (=> d!2276578 (= (derivationStepZipperUp!2726 ct1!256 c!10305) e!4389895)))

(declare-fun b!7331153 () Bool)

(declare-fun e!4389896 () (Set Context!15972))

(assert (=> b!7331153 (= e!4389896 call!667781)))

(declare-fun b!7331154 () Bool)

(assert (=> b!7331154 (= e!4389895 (set.union call!667781 (derivationStepZipperUp!2726 (Context!15973 (t!385929 (exprs!8486 ct1!256))) c!10305)))))

(declare-fun b!7331155 () Bool)

(assert (=> b!7331155 (= e!4389896 (as set.empty (Set Context!15972)))))

(declare-fun b!7331156 () Bool)

(assert (=> b!7331156 (= e!4389895 e!4389896)))

(declare-fun c!1361210 () Bool)

(assert (=> b!7331156 (= c!1361210 (is-Cons!71418 (exprs!8486 ct1!256)))))

(assert (= (and d!2276578 res!2962779) b!7331152))

(assert (= (and d!2276578 c!1361209) b!7331154))

(assert (= (and d!2276578 (not c!1361209)) b!7331156))

(assert (= (and b!7331156 c!1361210) b!7331153))

(assert (= (and b!7331156 (not c!1361210)) b!7331155))

(assert (= (or b!7331154 b!7331153) bm!667776))

(assert (=> b!7331152 m!7997202))

(declare-fun m!7997294 () Bool)

(assert (=> bm!667776 m!7997294))

(declare-fun m!7997296 () Bool)

(assert (=> b!7331154 m!7997296))

(assert (=> start!715922 d!2276578))

(declare-fun bs!1917417 () Bool)

(declare-fun d!2276582 () Bool)

(assert (= bs!1917417 (and d!2276582 b!7331040)))

(declare-fun lambda!454739 () Int)

(assert (=> bs!1917417 (= lambda!454739 lambda!454728)))

(assert (=> d!2276582 (= (inv!90956 cWitness!35) (forall!17885 (exprs!8486 cWitness!35) lambda!454739))))

(declare-fun bs!1917418 () Bool)

(assert (= bs!1917418 d!2276582))

(declare-fun m!7997298 () Bool)

(assert (=> bs!1917418 m!7997298))

(assert (=> start!715922 d!2276582))

(declare-fun bs!1917419 () Bool)

(declare-fun d!2276584 () Bool)

(assert (= bs!1917419 (and d!2276584 b!7331040)))

(declare-fun lambda!454740 () Int)

(assert (=> bs!1917419 (= lambda!454740 lambda!454728)))

(declare-fun bs!1917420 () Bool)

(assert (= bs!1917420 (and d!2276584 d!2276582)))

(assert (=> bs!1917420 (= lambda!454740 lambda!454739)))

(assert (=> d!2276584 (= (inv!90956 ct1!256) (forall!17885 (exprs!8486 ct1!256) lambda!454740))))

(declare-fun bs!1917421 () Bool)

(assert (= bs!1917421 d!2276584))

(declare-fun m!7997300 () Bool)

(assert (=> bs!1917421 m!7997300))

(assert (=> start!715922 d!2276584))

(declare-fun bs!1917422 () Bool)

(declare-fun d!2276586 () Bool)

(assert (= bs!1917422 (and d!2276586 b!7331040)))

(declare-fun lambda!454741 () Int)

(assert (=> bs!1917422 (= lambda!454741 lambda!454728)))

(declare-fun bs!1917423 () Bool)

(assert (= bs!1917423 (and d!2276586 d!2276582)))

(assert (=> bs!1917423 (= lambda!454741 lambda!454739)))

(declare-fun bs!1917424 () Bool)

(assert (= bs!1917424 (and d!2276586 d!2276584)))

(assert (=> bs!1917424 (= lambda!454741 lambda!454740)))

(assert (=> d!2276586 (= (inv!90956 ct2!352) (forall!17885 (exprs!8486 ct2!352) lambda!454741))))

(declare-fun bs!1917425 () Bool)

(assert (= bs!1917425 d!2276586))

(declare-fun m!7997302 () Bool)

(assert (=> bs!1917425 m!7997302))

(assert (=> start!715922 d!2276586))

(declare-fun d!2276588 () Bool)

(assert (=> d!2276588 (= (isEmpty!40958 (exprs!8486 ct1!256)) (is-Nil!71418 (exprs!8486 ct1!256)))))

(assert (=> b!7331039 d!2276588))

(declare-fun b!7331157 () Bool)

(declare-fun e!4389897 () Bool)

(assert (=> b!7331157 (= e!4389897 (nullable!8147 (h!77866 (exprs!8486 lt!2607938))))))

(declare-fun bm!667777 () Bool)

(declare-fun call!667782 () (Set Context!15972))

(assert (=> bm!667777 (= call!667782 (derivationStepZipperDown!2873 (h!77866 (exprs!8486 lt!2607938)) (Context!15973 (t!385929 (exprs!8486 lt!2607938))) c!10305))))

(declare-fun d!2276590 () Bool)

(declare-fun c!1361211 () Bool)

(assert (=> d!2276590 (= c!1361211 e!4389897)))

(declare-fun res!2962780 () Bool)

(assert (=> d!2276590 (=> (not res!2962780) (not e!4389897))))

(assert (=> d!2276590 (= res!2962780 (is-Cons!71418 (exprs!8486 lt!2607938)))))

(declare-fun e!4389898 () (Set Context!15972))

(assert (=> d!2276590 (= (derivationStepZipperUp!2726 lt!2607938 c!10305) e!4389898)))

(declare-fun b!7331158 () Bool)

(declare-fun e!4389899 () (Set Context!15972))

(assert (=> b!7331158 (= e!4389899 call!667782)))

(declare-fun b!7331159 () Bool)

(assert (=> b!7331159 (= e!4389898 (set.union call!667782 (derivationStepZipperUp!2726 (Context!15973 (t!385929 (exprs!8486 lt!2607938))) c!10305)))))

(declare-fun b!7331160 () Bool)

(assert (=> b!7331160 (= e!4389899 (as set.empty (Set Context!15972)))))

(declare-fun b!7331161 () Bool)

(assert (=> b!7331161 (= e!4389898 e!4389899)))

(declare-fun c!1361212 () Bool)

(assert (=> b!7331161 (= c!1361212 (is-Cons!71418 (exprs!8486 lt!2607938)))))

(assert (= (and d!2276590 res!2962780) b!7331157))

(assert (= (and d!2276590 c!1361211) b!7331159))

(assert (= (and d!2276590 (not c!1361211)) b!7331161))

(assert (= (and b!7331161 c!1361212) b!7331158))

(assert (= (and b!7331161 (not c!1361212)) b!7331160))

(assert (= (or b!7331159 b!7331158) bm!667777))

(declare-fun m!7997310 () Bool)

(assert (=> b!7331157 m!7997310))

(declare-fun m!7997312 () Bool)

(assert (=> bm!667777 m!7997312))

(declare-fun m!7997314 () Bool)

(assert (=> b!7331159 m!7997314))

(assert (=> b!7331045 d!2276590))

(declare-fun b!7331166 () Bool)

(declare-fun e!4389902 () Bool)

(declare-fun tp!2081502 () Bool)

(declare-fun tp!2081503 () Bool)

(assert (=> b!7331166 (= e!4389902 (and tp!2081502 tp!2081503))))

(assert (=> b!7331042 (= tp!2081486 e!4389902)))

(assert (= (and b!7331042 (is-Cons!71418 (exprs!8486 ct2!352))) b!7331166))

(declare-fun b!7331167 () Bool)

(declare-fun e!4389903 () Bool)

(declare-fun tp!2081504 () Bool)

(declare-fun tp!2081505 () Bool)

(assert (=> b!7331167 (= e!4389903 (and tp!2081504 tp!2081505))))

(assert (=> b!7331041 (= tp!2081488 e!4389903)))

(assert (= (and b!7331041 (is-Cons!71418 (exprs!8486 cWitness!35))) b!7331167))

(declare-fun b!7331168 () Bool)

(declare-fun e!4389904 () Bool)

(declare-fun tp!2081506 () Bool)

(declare-fun tp!2081507 () Bool)

(assert (=> b!7331168 (= e!4389904 (and tp!2081506 tp!2081507))))

(assert (=> b!7331044 (= tp!2081487 e!4389904)))

(assert (= (and b!7331044 (is-Cons!71418 (exprs!8486 ct1!256))) b!7331168))

(push 1)

(assert (not b!7331166))

(assert (not b!7331154))

(assert (not bm!667768))

(assert (not b!7331159))

(assert (not b!7331112))

(assert (not d!2276568))

(assert (not b!7331168))

(assert (not d!2276584))

(assert (not b!7331167))

(assert (not d!2276582))

(assert tp_is_empty!48337)

(assert (not bm!667769))

(assert (not bm!667772))

(assert (not b!7331128))

(assert (not bm!667777))

(assert (not b!7331157))

(assert (not bm!667776))

(assert (not d!2276558))

(assert (not b!7331127))

(assert (not d!2276576))

(assert (not b!7331152))

(assert (not d!2276586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

