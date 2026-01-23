; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718278 () Bool)

(assert start!718278)

(declare-fun b!7355720 () Bool)

(declare-fun res!2970201 () Bool)

(declare-fun e!4404208 () Bool)

(assert (=> b!7355720 (=> (not res!2970201) (not e!4404208))))

(declare-fun e!4404210 () Bool)

(assert (=> b!7355720 (= res!2970201 e!4404210)))

(declare-fun res!2970204 () Bool)

(assert (=> b!7355720 (=> res!2970204 e!4404210)))

(declare-datatypes ((C!38658 0))(
  ( (C!38659 (val!29689 Int)) )
))
(declare-datatypes ((Regex!19192 0))(
  ( (ElementMatch!19192 (c!1366658 C!38658)) (Concat!28037 (regOne!38896 Regex!19192) (regTwo!38896 Regex!19192)) (EmptyExpr!19192) (Star!19192 (reg!19521 Regex!19192)) (EmptyLang!19192) (Union!19192 (regOne!38897 Regex!19192) (regTwo!38897 Regex!19192)) )
))
(declare-fun r1!2370 () Regex!19192)

(assert (=> b!7355720 (= res!2970204 (not (is-Concat!28037 r1!2370)))))

(declare-fun b!7355721 () Bool)

(declare-fun e!4404213 () Bool)

(declare-fun e!4404211 () Bool)

(assert (=> b!7355721 (= e!4404213 e!4404211)))

(declare-fun res!2970207 () Bool)

(assert (=> b!7355721 (=> (not res!2970207) (not e!4404211))))

(declare-datatypes ((List!71688 0))(
  ( (Nil!71564) (Cons!71564 (h!78012 Regex!19192) (t!386127 List!71688)) )
))
(declare-datatypes ((Context!16264 0))(
  ( (Context!16265 (exprs!8632 List!71688)) )
))
(declare-fun cWitness!61 () Context!16264)

(declare-fun lt!2613203 () (Set Context!16264))

(assert (=> b!7355721 (= res!2970207 (set.member cWitness!61 lt!2613203))))

(declare-fun c!10362 () C!38658)

(declare-fun ct1!282 () Context!16264)

(declare-fun derivationStepZipperDown!3018 (Regex!19192 Context!16264 C!38658) (Set Context!16264))

(assert (=> b!7355721 (= lt!2613203 (derivationStepZipperDown!3018 r1!2370 ct1!282 c!10362))))

(declare-fun b!7355723 () Bool)

(declare-fun e!4404206 () Bool)

(declare-fun tp!2089470 () Bool)

(assert (=> b!7355723 (= e!4404206 tp!2089470)))

(declare-fun b!7355724 () Bool)

(declare-fun e!4404209 () Bool)

(declare-fun e!4404212 () Bool)

(assert (=> b!7355724 (= e!4404209 (not e!4404212))))

(declare-fun res!2970205 () Bool)

(assert (=> b!7355724 (=> res!2970205 e!4404212)))

(declare-fun lt!2613205 () Context!16264)

(declare-fun lt!2613199 () (Set Context!16264))

(assert (=> b!7355724 (= res!2970205 (not (set.member lt!2613205 lt!2613199)))))

(declare-fun ct2!378 () Context!16264)

(declare-fun lambda!456990 () Int)

(declare-datatypes ((Unit!165337 0))(
  ( (Unit!165338) )
))
(declare-fun lt!2613206 () Unit!165337)

(declare-fun lemmaConcatPreservesForall!1867 (List!71688 List!71688 Int) Unit!165337)

(assert (=> b!7355724 (= lt!2613206 (lemmaConcatPreservesForall!1867 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!456990))))

(declare-fun lt!2613198 () List!71688)

(declare-fun ++!17010 (List!71688 List!71688) List!71688)

(assert (=> b!7355724 (set.member lt!2613205 (derivationStepZipperDown!3018 (reg!19521 r1!2370) (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378))) c!10362))))

(assert (=> b!7355724 (= lt!2613205 (Context!16265 (++!17010 (exprs!8632 cWitness!61) (exprs!8632 ct2!378))))))

(declare-fun lt!2613200 () Unit!165337)

(assert (=> b!7355724 (= lt!2613200 (lemmaConcatPreservesForall!1867 lt!2613198 (exprs!8632 ct2!378) lambda!456990))))

(declare-fun lt!2613208 () Unit!165337)

(assert (=> b!7355724 (= lt!2613208 (lemmaConcatPreservesForall!1867 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!456990))))

(declare-fun lt!2613209 () Unit!165337)

(declare-fun lt!2613204 () Context!16264)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!109 (Regex!19192 Context!16264 Context!16264 Context!16264 C!38658) Unit!165337)

(assert (=> b!7355724 (= lt!2613209 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!109 (reg!19521 r1!2370) lt!2613204 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7355725 () Bool)

(declare-fun e!4404214 () Bool)

(declare-fun tp!2089469 () Bool)

(assert (=> b!7355725 (= e!4404214 tp!2089469)))

(declare-fun b!7355726 () Bool)

(declare-fun nullable!8283 (Regex!19192) Bool)

(assert (=> b!7355726 (= e!4404210 (not (nullable!8283 (regOne!38896 r1!2370))))))

(declare-fun b!7355727 () Bool)

(assert (=> b!7355727 (= e!4404211 e!4404208)))

(declare-fun res!2970199 () Bool)

(assert (=> b!7355727 (=> (not res!2970199) (not e!4404208))))

(assert (=> b!7355727 (= res!2970199 (and (or (not (is-ElementMatch!19192 r1!2370)) (not (= c!10362 (c!1366658 r1!2370)))) (not (is-Union!19192 r1!2370))))))

(assert (=> b!7355727 (= lt!2613199 (derivationStepZipperDown!3018 r1!2370 (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378))) c!10362))))

(declare-fun lt!2613207 () Unit!165337)

(assert (=> b!7355727 (= lt!2613207 (lemmaConcatPreservesForall!1867 (exprs!8632 ct1!282) (exprs!8632 ct2!378) lambda!456990))))

(declare-fun b!7355728 () Bool)

(declare-fun e!4404215 () Bool)

(assert (=> b!7355728 (= e!4404215 e!4404209)))

(declare-fun res!2970206 () Bool)

(assert (=> b!7355728 (=> (not res!2970206) (not e!4404209))))

(assert (=> b!7355728 (= res!2970206 (= lt!2613203 (derivationStepZipperDown!3018 (reg!19521 r1!2370) lt!2613204 c!10362)))))

(assert (=> b!7355728 (= lt!2613204 (Context!16265 lt!2613198))))

(declare-fun lt!2613202 () Regex!19192)

(declare-fun $colon$colon!3189 (List!71688 Regex!19192) List!71688)

(assert (=> b!7355728 (= lt!2613198 ($colon$colon!3189 (exprs!8632 ct1!282) lt!2613202))))

(declare-fun b!7355729 () Bool)

(declare-fun tp_is_empty!48629 () Bool)

(assert (=> b!7355729 (= e!4404206 tp_is_empty!48629)))

(declare-fun b!7355730 () Bool)

(declare-fun e!4404205 () Bool)

(declare-fun tp!2089475 () Bool)

(assert (=> b!7355730 (= e!4404205 tp!2089475)))

(declare-fun b!7355731 () Bool)

(declare-fun e!4404207 () Bool)

(declare-fun tp!2089472 () Bool)

(assert (=> b!7355731 (= e!4404207 tp!2089472)))

(declare-fun b!7355732 () Bool)

(declare-fun res!2970203 () Bool)

(assert (=> b!7355732 (=> (not res!2970203) (not e!4404208))))

(assert (=> b!7355732 (= res!2970203 (and (not (is-Concat!28037 r1!2370)) (is-Star!19192 r1!2370)))))

(declare-fun b!7355733 () Bool)

(declare-fun tp!2089468 () Bool)

(declare-fun tp!2089471 () Bool)

(assert (=> b!7355733 (= e!4404206 (and tp!2089468 tp!2089471))))

(declare-fun res!2970200 () Bool)

(assert (=> start!718278 (=> (not res!2970200) (not e!4404213))))

(declare-fun validRegex!9788 (Regex!19192) Bool)

(assert (=> start!718278 (= res!2970200 (validRegex!9788 r1!2370))))

(assert (=> start!718278 e!4404213))

(assert (=> start!718278 tp_is_empty!48629))

(declare-fun inv!91321 (Context!16264) Bool)

(assert (=> start!718278 (and (inv!91321 cWitness!61) e!4404207)))

(assert (=> start!718278 (and (inv!91321 ct1!282) e!4404214)))

(assert (=> start!718278 e!4404206))

(assert (=> start!718278 (and (inv!91321 ct2!378) e!4404205)))

(declare-fun b!7355722 () Bool)

(declare-fun tp!2089474 () Bool)

(declare-fun tp!2089473 () Bool)

(assert (=> b!7355722 (= e!4404206 (and tp!2089474 tp!2089473))))

(declare-fun b!7355734 () Bool)

(assert (=> b!7355734 (= e!4404208 e!4404215)))

(declare-fun res!2970202 () Bool)

(assert (=> b!7355734 (=> (not res!2970202) (not e!4404215))))

(assert (=> b!7355734 (= res!2970202 (validRegex!9788 lt!2613202))))

(assert (=> b!7355734 (= lt!2613202 (Star!19192 (reg!19521 r1!2370)))))

(declare-fun b!7355735 () Bool)

(declare-fun forall!18012 (List!71688 Int) Bool)

(assert (=> b!7355735 (= e!4404212 (forall!18012 (exprs!8632 ct1!282) lambda!456990))))

(declare-fun lt!2613201 () Unit!165337)

(assert (=> b!7355735 (= lt!2613201 (lemmaConcatPreservesForall!1867 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!456990))))

(assert (= (and start!718278 res!2970200) b!7355721))

(assert (= (and b!7355721 res!2970207) b!7355727))

(assert (= (and b!7355727 res!2970199) b!7355720))

(assert (= (and b!7355720 (not res!2970204)) b!7355726))

(assert (= (and b!7355720 res!2970201) b!7355732))

(assert (= (and b!7355732 res!2970203) b!7355734))

(assert (= (and b!7355734 res!2970202) b!7355728))

(assert (= (and b!7355728 res!2970206) b!7355724))

(assert (= (and b!7355724 (not res!2970205)) b!7355735))

(assert (= start!718278 b!7355731))

(assert (= start!718278 b!7355725))

(assert (= (and start!718278 (is-ElementMatch!19192 r1!2370)) b!7355729))

(assert (= (and start!718278 (is-Concat!28037 r1!2370)) b!7355722))

(assert (= (and start!718278 (is-Star!19192 r1!2370)) b!7355723))

(assert (= (and start!718278 (is-Union!19192 r1!2370)) b!7355733))

(assert (= start!718278 b!7355730))

(declare-fun m!8015658 () Bool)

(assert (=> b!7355734 m!8015658))

(declare-fun m!8015660 () Bool)

(assert (=> b!7355721 m!8015660))

(declare-fun m!8015662 () Bool)

(assert (=> b!7355721 m!8015662))

(declare-fun m!8015664 () Bool)

(assert (=> b!7355728 m!8015664))

(declare-fun m!8015666 () Bool)

(assert (=> b!7355728 m!8015666))

(declare-fun m!8015668 () Bool)

(assert (=> start!718278 m!8015668))

(declare-fun m!8015670 () Bool)

(assert (=> start!718278 m!8015670))

(declare-fun m!8015672 () Bool)

(assert (=> start!718278 m!8015672))

(declare-fun m!8015674 () Bool)

(assert (=> start!718278 m!8015674))

(declare-fun m!8015676 () Bool)

(assert (=> b!7355726 m!8015676))

(declare-fun m!8015678 () Bool)

(assert (=> b!7355727 m!8015678))

(declare-fun m!8015680 () Bool)

(assert (=> b!7355727 m!8015680))

(declare-fun m!8015682 () Bool)

(assert (=> b!7355727 m!8015682))

(declare-fun m!8015684 () Bool)

(assert (=> b!7355724 m!8015684))

(declare-fun m!8015686 () Bool)

(assert (=> b!7355724 m!8015686))

(declare-fun m!8015688 () Bool)

(assert (=> b!7355724 m!8015688))

(declare-fun m!8015690 () Bool)

(assert (=> b!7355724 m!8015690))

(declare-fun m!8015692 () Bool)

(assert (=> b!7355724 m!8015692))

(declare-fun m!8015694 () Bool)

(assert (=> b!7355724 m!8015694))

(declare-fun m!8015696 () Bool)

(assert (=> b!7355724 m!8015696))

(declare-fun m!8015698 () Bool)

(assert (=> b!7355724 m!8015698))

(assert (=> b!7355724 m!8015696))

(declare-fun m!8015700 () Bool)

(assert (=> b!7355735 m!8015700))

(assert (=> b!7355735 m!8015696))

(push 1)

(assert (not b!7355725))

(assert (not b!7355728))

(assert (not b!7355735))

(assert (not b!7355731))

(assert (not b!7355721))

(assert (not b!7355730))

(assert (not b!7355726))

(assert (not b!7355727))

(assert (not b!7355722))

(assert (not b!7355733))

(assert (not b!7355724))

(assert (not start!718278))

(assert (not b!7355734))

(assert (not b!7355723))

(assert tp_is_empty!48629)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2281415 () Bool)

(declare-fun res!2970239 () Bool)

(declare-fun e!4404253 () Bool)

(assert (=> d!2281415 (=> res!2970239 e!4404253)))

(assert (=> d!2281415 (= res!2970239 (is-Nil!71564 (exprs!8632 ct1!282)))))

(assert (=> d!2281415 (= (forall!18012 (exprs!8632 ct1!282) lambda!456990) e!4404253)))

(declare-fun b!7355788 () Bool)

(declare-fun e!4404254 () Bool)

(assert (=> b!7355788 (= e!4404253 e!4404254)))

(declare-fun res!2970240 () Bool)

(assert (=> b!7355788 (=> (not res!2970240) (not e!4404254))))

(declare-fun dynLambda!29510 (Int Regex!19192) Bool)

(assert (=> b!7355788 (= res!2970240 (dynLambda!29510 lambda!456990 (h!78012 (exprs!8632 ct1!282))))))

(declare-fun b!7355789 () Bool)

(assert (=> b!7355789 (= e!4404254 (forall!18012 (t!386127 (exprs!8632 ct1!282)) lambda!456990))))

(assert (= (and d!2281415 (not res!2970239)) b!7355788))

(assert (= (and b!7355788 res!2970240) b!7355789))

(declare-fun b_lambda!284243 () Bool)

(assert (=> (not b_lambda!284243) (not b!7355788)))

(declare-fun m!8015746 () Bool)

(assert (=> b!7355788 m!8015746))

(declare-fun m!8015748 () Bool)

(assert (=> b!7355789 m!8015748))

(assert (=> b!7355735 d!2281415))

(declare-fun d!2281417 () Bool)

(assert (=> d!2281417 (forall!18012 (++!17010 (exprs!8632 cWitness!61) (exprs!8632 ct2!378)) lambda!456990)))

(declare-fun lt!2613248 () Unit!165337)

(declare-fun choose!57220 (List!71688 List!71688 Int) Unit!165337)

(assert (=> d!2281417 (= lt!2613248 (choose!57220 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!456990))))

(assert (=> d!2281417 (forall!18012 (exprs!8632 cWitness!61) lambda!456990)))

(assert (=> d!2281417 (= (lemmaConcatPreservesForall!1867 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!456990) lt!2613248)))

(declare-fun bs!1919726 () Bool)

(assert (= bs!1919726 d!2281417))

(assert (=> bs!1919726 m!8015690))

(assert (=> bs!1919726 m!8015690))

(declare-fun m!8015750 () Bool)

(assert (=> bs!1919726 m!8015750))

(declare-fun m!8015752 () Bool)

(assert (=> bs!1919726 m!8015752))

(declare-fun m!8015754 () Bool)

(assert (=> bs!1919726 m!8015754))

(assert (=> b!7355735 d!2281417))

(declare-fun bs!1919727 () Bool)

(declare-fun d!2281419 () Bool)

(assert (= bs!1919727 (and d!2281419 b!7355727)))

(declare-fun lambda!457008 () Int)

(assert (=> bs!1919727 (= lambda!457008 lambda!456990)))

(assert (=> d!2281419 (set.member (Context!16265 (++!17010 (exprs!8632 cWitness!61) (exprs!8632 ct2!378))) (derivationStepZipperDown!3018 (reg!19521 r1!2370) (Context!16265 (++!17010 (exprs!8632 lt!2613204) (exprs!8632 ct2!378))) c!10362))))

(declare-fun lt!2613257 () Unit!165337)

(assert (=> d!2281419 (= lt!2613257 (lemmaConcatPreservesForall!1867 (exprs!8632 lt!2613204) (exprs!8632 ct2!378) lambda!457008))))

(declare-fun lt!2613256 () Unit!165337)

(assert (=> d!2281419 (= lt!2613256 (lemmaConcatPreservesForall!1867 (exprs!8632 cWitness!61) (exprs!8632 ct2!378) lambda!457008))))

(declare-fun lt!2613255 () Unit!165337)

(declare-fun choose!57221 (Regex!19192 Context!16264 Context!16264 Context!16264 C!38658) Unit!165337)

(assert (=> d!2281419 (= lt!2613255 (choose!57221 (reg!19521 r1!2370) lt!2613204 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281419 (validRegex!9788 (reg!19521 r1!2370))))

(assert (=> d!2281419 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!109 (reg!19521 r1!2370) lt!2613204 ct2!378 cWitness!61 c!10362) lt!2613255)))

(declare-fun bs!1919728 () Bool)

(assert (= bs!1919728 d!2281419))

(declare-fun m!8015756 () Bool)

(assert (=> bs!1919728 m!8015756))

(declare-fun m!8015758 () Bool)

(assert (=> bs!1919728 m!8015758))

(declare-fun m!8015760 () Bool)

(assert (=> bs!1919728 m!8015760))

(assert (=> bs!1919728 m!8015690))

(declare-fun m!8015762 () Bool)

(assert (=> bs!1919728 m!8015762))

(declare-fun m!8015764 () Bool)

(assert (=> bs!1919728 m!8015764))

(declare-fun m!8015766 () Bool)

(assert (=> bs!1919728 m!8015766))

(declare-fun m!8015768 () Bool)

(assert (=> bs!1919728 m!8015768))

(assert (=> b!7355724 d!2281419))

(declare-fun d!2281423 () Bool)

(assert (=> d!2281423 (forall!18012 (++!17010 lt!2613198 (exprs!8632 ct2!378)) lambda!456990)))

(declare-fun lt!2613258 () Unit!165337)

(assert (=> d!2281423 (= lt!2613258 (choose!57220 lt!2613198 (exprs!8632 ct2!378) lambda!456990))))

(assert (=> d!2281423 (forall!18012 lt!2613198 lambda!456990)))

(assert (=> d!2281423 (= (lemmaConcatPreservesForall!1867 lt!2613198 (exprs!8632 ct2!378) lambda!456990) lt!2613258)))

(declare-fun bs!1919729 () Bool)

(assert (= bs!1919729 d!2281423))

(assert (=> bs!1919729 m!8015698))

(assert (=> bs!1919729 m!8015698))

(declare-fun m!8015770 () Bool)

(assert (=> bs!1919729 m!8015770))

(declare-fun m!8015772 () Bool)

(assert (=> bs!1919729 m!8015772))

(declare-fun m!8015774 () Bool)

(assert (=> bs!1919729 m!8015774))

(assert (=> b!7355724 d!2281423))

(declare-fun b!7355824 () Bool)

(declare-fun e!4404273 () (Set Context!16264))

(declare-fun call!673432 () (Set Context!16264))

(declare-fun call!673433 () (Set Context!16264))

(assert (=> b!7355824 (= e!4404273 (set.union call!673432 call!673433))))

(declare-fun bm!673423 () Bool)

(declare-fun call!673431 () (Set Context!16264))

(declare-fun call!673430 () (Set Context!16264))

(assert (=> bm!673423 (= call!673431 call!673430)))

(declare-fun b!7355825 () Bool)

(declare-fun c!1366675 () Bool)

(assert (=> b!7355825 (= c!1366675 (is-Star!19192 (reg!19521 r1!2370)))))

(declare-fun e!4404275 () (Set Context!16264))

(declare-fun e!4404278 () (Set Context!16264))

(assert (=> b!7355825 (= e!4404275 e!4404278)))

(declare-fun d!2281425 () Bool)

(declare-fun c!1366677 () Bool)

(assert (=> d!2281425 (= c!1366677 (and (is-ElementMatch!19192 (reg!19521 r1!2370)) (= (c!1366658 (reg!19521 r1!2370)) c!10362)))))

(declare-fun e!4404277 () (Set Context!16264))

(assert (=> d!2281425 (= (derivationStepZipperDown!3018 (reg!19521 r1!2370) (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378))) c!10362) e!4404277)))

(declare-fun bm!673424 () Bool)

(assert (=> bm!673424 (= call!673430 call!673432)))

(declare-fun b!7355826 () Bool)

(declare-fun e!4404276 () (Set Context!16264))

(assert (=> b!7355826 (= e!4404276 (set.union call!673433 call!673430))))

(declare-fun c!1366676 () Bool)

(declare-fun c!1366674 () Bool)

(declare-fun c!1366678 () Bool)

(declare-fun bm!673425 () Bool)

(declare-fun call!673428 () List!71688)

(assert (=> bm!673425 (= call!673432 (derivationStepZipperDown!3018 (ite c!1366676 (regOne!38897 (reg!19521 r1!2370)) (ite c!1366678 (regTwo!38896 (reg!19521 r1!2370)) (ite c!1366674 (regOne!38896 (reg!19521 r1!2370)) (reg!19521 (reg!19521 r1!2370))))) (ite (or c!1366676 c!1366678) (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378))) (Context!16265 call!673428)) c!10362))))

(declare-fun bm!673426 () Bool)

(declare-fun call!673429 () List!71688)

(assert (=> bm!673426 (= call!673429 ($colon$colon!3189 (exprs!8632 (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378)))) (ite (or c!1366678 c!1366674) (regTwo!38896 (reg!19521 r1!2370)) (reg!19521 r1!2370))))))

(declare-fun b!7355827 () Bool)

(assert (=> b!7355827 (= e!4404275 call!673431)))

(declare-fun b!7355828 () Bool)

(assert (=> b!7355828 (= e!4404277 (set.insert (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378))) (as set.empty (Set Context!16264))))))

(declare-fun b!7355829 () Bool)

(assert (=> b!7355829 (= e!4404277 e!4404273)))

(assert (=> b!7355829 (= c!1366676 (is-Union!19192 (reg!19521 r1!2370)))))

(declare-fun b!7355830 () Bool)

(assert (=> b!7355830 (= e!4404278 (as set.empty (Set Context!16264)))))

(declare-fun bm!673427 () Bool)

(assert (=> bm!673427 (= call!673428 call!673429)))

(declare-fun b!7355831 () Bool)

(assert (=> b!7355831 (= e!4404276 e!4404275)))

(assert (=> b!7355831 (= c!1366674 (is-Concat!28037 (reg!19521 r1!2370)))))

(declare-fun bm!673428 () Bool)

(assert (=> bm!673428 (= call!673433 (derivationStepZipperDown!3018 (ite c!1366676 (regTwo!38897 (reg!19521 r1!2370)) (regOne!38896 (reg!19521 r1!2370))) (ite c!1366676 (Context!16265 (++!17010 lt!2613198 (exprs!8632 ct2!378))) (Context!16265 call!673429)) c!10362))))

(declare-fun b!7355832 () Bool)

(declare-fun e!4404274 () Bool)

(assert (=> b!7355832 (= e!4404274 (nullable!8283 (regOne!38896 (reg!19521 r1!2370))))))

(declare-fun b!7355833 () Bool)

(assert (=> b!7355833 (= c!1366678 e!4404274)))

(declare-fun res!2970249 () Bool)

(assert (=> b!7355833 (=> (not res!2970249) (not e!4404274))))

(assert (=> b!7355833 (= res!2970249 (is-Concat!28037 (reg!19521 r1!2370)))))

(assert (=> b!7355833 (= e!4404273 e!4404276)))

(declare-fun b!7355834 () Bool)

(assert (=> b!7355834 (= e!4404278 call!673431)))

(assert (= (and d!2281425 c!1366677) b!7355828))

(assert (= (and d!2281425 (not c!1366677)) b!7355829))

(assert (= (and b!7355829 c!1366676) b!7355824))

(assert (= (and b!7355829 (not c!1366676)) b!7355833))

(assert (= (and b!7355833 res!2970249) b!7355832))

(assert (= (and b!7355833 c!1366678) b!7355826))

(assert (= (and b!7355833 (not c!1366678)) b!7355831))

(assert (= (and b!7355831 c!1366674) b!7355827))

(assert (= (and b!7355831 (not c!1366674)) b!7355825))

(assert (= (and b!7355825 c!1366675) b!7355834))

(assert (= (and b!7355825 (not c!1366675)) b!7355830))

(assert (= (or b!7355827 b!7355834) bm!673427))

(assert (= (or b!7355827 b!7355834) bm!673423))

(assert (= (or b!7355826 bm!673423) bm!673424))

(assert (= (or b!7355826 bm!673427) bm!673426))

(assert (= (or b!7355824 b!7355826) bm!673428))

(assert (= (or b!7355824 bm!673424) bm!673425))

(declare-fun m!8015790 () Bool)

(assert (=> bm!673428 m!8015790))

(declare-fun m!8015792 () Bool)

(assert (=> b!7355828 m!8015792))

(declare-fun m!8015794 () Bool)

(assert (=> bm!673425 m!8015794))

(declare-fun m!8015796 () Bool)

(assert (=> b!7355832 m!8015796))

(declare-fun m!8015798 () Bool)

(assert (=> bm!673426 m!8015798))

(assert (=> b!7355724 d!2281425))

(assert (=> b!7355724 d!2281417))

(declare-fun lt!2613264 () List!71688)

(declare-fun e!4404284 () Bool)

(declare-fun b!7355846 () Bool)

(assert (=> b!7355846 (= e!4404284 (or (not (= (exprs!8632 ct2!378) Nil!71564)) (= lt!2613264 (exprs!8632 cWitness!61))))))

(declare-fun b!7355844 () Bool)

(declare-fun e!4404283 () List!71688)

(assert (=> b!7355844 (= e!4404283 (Cons!71564 (h!78012 (exprs!8632 cWitness!61)) (++!17010 (t!386127 (exprs!8632 cWitness!61)) (exprs!8632 ct2!378))))))

(declare-fun d!2281429 () Bool)

(assert (=> d!2281429 e!4404284))

(declare-fun res!2970254 () Bool)

(assert (=> d!2281429 (=> (not res!2970254) (not e!4404284))))

(declare-fun content!15095 (List!71688) (Set Regex!19192))

(assert (=> d!2281429 (= res!2970254 (= (content!15095 lt!2613264) (set.union (content!15095 (exprs!8632 cWitness!61)) (content!15095 (exprs!8632 ct2!378)))))))

(assert (=> d!2281429 (= lt!2613264 e!4404283)))

(declare-fun c!1366681 () Bool)

(assert (=> d!2281429 (= c!1366681 (is-Nil!71564 (exprs!8632 cWitness!61)))))

(assert (=> d!2281429 (= (++!17010 (exprs!8632 cWitness!61) (exprs!8632 ct2!378)) lt!2613264)))

(declare-fun b!7355843 () Bool)

(assert (=> b!7355843 (= e!4404283 (exprs!8632 ct2!378))))

(declare-fun b!7355845 () Bool)

(declare-fun res!2970255 () Bool)

(assert (=> b!7355845 (=> (not res!2970255) (not e!4404284))))

(declare-fun size!42073 (List!71688) Int)

(assert (=> b!7355845 (= res!2970255 (= (size!42073 lt!2613264) (+ (size!42073 (exprs!8632 cWitness!61)) (size!42073 (exprs!8632 ct2!378)))))))

(assert (= (and d!2281429 c!1366681) b!7355843))

(assert (= (and d!2281429 (not c!1366681)) b!7355844))

(assert (= (and d!2281429 res!2970254) b!7355845))

(assert (= (and b!7355845 res!2970255) b!7355846))

(declare-fun m!8015800 () Bool)

(assert (=> b!7355844 m!8015800))

(declare-fun m!8015802 () Bool)

(assert (=> d!2281429 m!8015802))

(declare-fun m!8015804 () Bool)

(assert (=> d!2281429 m!8015804))

(declare-fun m!8015806 () Bool)

(assert (=> d!2281429 m!8015806))

(declare-fun m!8015808 () Bool)

(assert (=> b!7355845 m!8015808))

(declare-fun m!8015810 () Bool)

(assert (=> b!7355845 m!8015810))

(declare-fun m!8015812 () Bool)

(assert (=> b!7355845 m!8015812))

(assert (=> b!7355724 d!2281429))

(declare-fun b!7355850 () Bool)

(declare-fun e!4404286 () Bool)

(declare-fun lt!2613265 () List!71688)

(assert (=> b!7355850 (= e!4404286 (or (not (= (exprs!8632 ct2!378) Nil!71564)) (= lt!2613265 lt!2613198)))))

(declare-fun b!7355848 () Bool)

(declare-fun e!4404285 () List!71688)

(assert (=> b!7355848 (= e!4404285 (Cons!71564 (h!78012 lt!2613198) (++!17010 (t!386127 lt!2613198) (exprs!8632 ct2!378))))))

(declare-fun d!2281431 () Bool)

(assert (=> d!2281431 e!4404286))

(declare-fun res!2970256 () Bool)

(assert (=> d!2281431 (=> (not res!2970256) (not e!4404286))))

(assert (=> d!2281431 (= res!2970256 (= (content!15095 lt!2613265) (set.union (content!15095 lt!2613198) (content!15095 (exprs!8632 ct2!378)))))))

(assert (=> d!2281431 (= lt!2613265 e!4404285)))

(declare-fun c!1366682 () Bool)

(assert (=> d!2281431 (= c!1366682 (is-Nil!71564 lt!2613198))))

(assert (=> d!2281431 (= (++!17010 lt!2613198 (exprs!8632 ct2!378)) lt!2613265)))

(declare-fun b!7355847 () Bool)

(assert (=> b!7355847 (= e!4404285 (exprs!8632 ct2!378))))

(declare-fun b!7355849 () Bool)

(declare-fun res!2970257 () Bool)

(assert (=> b!7355849 (=> (not res!2970257) (not e!4404286))))

(assert (=> b!7355849 (= res!2970257 (= (size!42073 lt!2613265) (+ (size!42073 lt!2613198) (size!42073 (exprs!8632 ct2!378)))))))

(assert (= (and d!2281431 c!1366682) b!7355847))

(assert (= (and d!2281431 (not c!1366682)) b!7355848))

(assert (= (and d!2281431 res!2970256) b!7355849))

(assert (= (and b!7355849 res!2970257) b!7355850))

(declare-fun m!8015814 () Bool)

(assert (=> b!7355848 m!8015814))

(declare-fun m!8015816 () Bool)

(assert (=> d!2281431 m!8015816))

(declare-fun m!8015818 () Bool)

(assert (=> d!2281431 m!8015818))

(assert (=> d!2281431 m!8015806))

(declare-fun m!8015820 () Bool)

(assert (=> b!7355849 m!8015820))

(declare-fun m!8015822 () Bool)

(assert (=> b!7355849 m!8015822))

(assert (=> b!7355849 m!8015812))

(assert (=> b!7355724 d!2281431))

(declare-fun b!7355869 () Bool)

(declare-fun e!4404301 () Bool)

(declare-fun call!673441 () Bool)

(assert (=> b!7355869 (= e!4404301 call!673441)))

(declare-fun b!7355870 () Bool)

(declare-fun e!4404306 () Bool)

(declare-fun e!4404307 () Bool)

(assert (=> b!7355870 (= e!4404306 e!4404307)))

(declare-fun c!1366688 () Bool)

(assert (=> b!7355870 (= c!1366688 (is-Star!19192 r1!2370))))

(declare-fun b!7355871 () Bool)

(declare-fun res!2970272 () Bool)

(declare-fun e!4404302 () Bool)

(assert (=> b!7355871 (=> res!2970272 e!4404302)))

(assert (=> b!7355871 (= res!2970272 (not (is-Concat!28037 r1!2370)))))

(declare-fun e!4404304 () Bool)

(assert (=> b!7355871 (= e!4404304 e!4404302)))

(declare-fun b!7355872 () Bool)

(declare-fun e!4404305 () Bool)

(declare-fun call!673442 () Bool)

(assert (=> b!7355872 (= e!4404305 call!673442)))

(declare-fun b!7355873 () Bool)

(assert (=> b!7355873 (= e!4404302 e!4404305)))

(declare-fun res!2970269 () Bool)

(assert (=> b!7355873 (=> (not res!2970269) (not e!4404305))))

(declare-fun call!673440 () Bool)

(assert (=> b!7355873 (= res!2970269 call!673440)))

(declare-fun d!2281433 () Bool)

(declare-fun res!2970271 () Bool)

(assert (=> d!2281433 (=> res!2970271 e!4404306)))

(assert (=> d!2281433 (= res!2970271 (is-ElementMatch!19192 r1!2370))))

(assert (=> d!2281433 (= (validRegex!9788 r1!2370) e!4404306)))

(declare-fun b!7355874 () Bool)

(declare-fun e!4404303 () Bool)

(assert (=> b!7355874 (= e!4404303 call!673440)))

(declare-fun b!7355875 () Bool)

(assert (=> b!7355875 (= e!4404307 e!4404304)))

(declare-fun c!1366689 () Bool)

(assert (=> b!7355875 (= c!1366689 (is-Union!19192 r1!2370))))

(declare-fun bm!673435 () Bool)

(assert (=> bm!673435 (= call!673440 call!673441)))

(declare-fun bm!673436 () Bool)

(assert (=> bm!673436 (= call!673442 (validRegex!9788 (ite c!1366689 (regOne!38897 r1!2370) (regTwo!38896 r1!2370))))))

(declare-fun bm!673437 () Bool)

(assert (=> bm!673437 (= call!673441 (validRegex!9788 (ite c!1366688 (reg!19521 r1!2370) (ite c!1366689 (regTwo!38897 r1!2370) (regOne!38896 r1!2370)))))))

(declare-fun b!7355876 () Bool)

(declare-fun res!2970268 () Bool)

(assert (=> b!7355876 (=> (not res!2970268) (not e!4404303))))

(assert (=> b!7355876 (= res!2970268 call!673442)))

(assert (=> b!7355876 (= e!4404304 e!4404303)))

(declare-fun b!7355877 () Bool)

(assert (=> b!7355877 (= e!4404307 e!4404301)))

(declare-fun res!2970270 () Bool)

(assert (=> b!7355877 (= res!2970270 (not (nullable!8283 (reg!19521 r1!2370))))))

(assert (=> b!7355877 (=> (not res!2970270) (not e!4404301))))

(assert (= (and d!2281433 (not res!2970271)) b!7355870))

(assert (= (and b!7355870 c!1366688) b!7355877))

(assert (= (and b!7355870 (not c!1366688)) b!7355875))

(assert (= (and b!7355877 res!2970270) b!7355869))

(assert (= (and b!7355875 c!1366689) b!7355876))

(assert (= (and b!7355875 (not c!1366689)) b!7355871))

(assert (= (and b!7355876 res!2970268) b!7355874))

(assert (= (and b!7355871 (not res!2970272)) b!7355873))

(assert (= (and b!7355873 res!2970269) b!7355872))

(assert (= (or b!7355876 b!7355872) bm!673436))

(assert (= (or b!7355874 b!7355873) bm!673435))

(assert (= (or b!7355869 bm!673435) bm!673437))

(declare-fun m!8015824 () Bool)

(assert (=> bm!673436 m!8015824))

(declare-fun m!8015826 () Bool)

(assert (=> bm!673437 m!8015826))

(declare-fun m!8015828 () Bool)

(assert (=> b!7355877 m!8015828))

(assert (=> start!718278 d!2281433))

(declare-fun bs!1919730 () Bool)

(declare-fun d!2281435 () Bool)

(assert (= bs!1919730 (and d!2281435 b!7355727)))

(declare-fun lambda!457013 () Int)

(assert (=> bs!1919730 (= lambda!457013 lambda!456990)))

(declare-fun bs!1919731 () Bool)

(assert (= bs!1919731 (and d!2281435 d!2281419)))

(assert (=> bs!1919731 (= lambda!457013 lambda!457008)))

(assert (=> d!2281435 (= (inv!91321 cWitness!61) (forall!18012 (exprs!8632 cWitness!61) lambda!457013))))

(declare-fun bs!1919732 () Bool)

(assert (= bs!1919732 d!2281435))

(declare-fun m!8015830 () Bool)

(assert (=> bs!1919732 m!8015830))

(assert (=> start!718278 d!2281435))

(declare-fun bs!1919733 () Bool)

(declare-fun d!2281437 () Bool)

(assert (= bs!1919733 (and d!2281437 b!7355727)))

(declare-fun lambda!457016 () Int)

(assert (=> bs!1919733 (= lambda!457016 lambda!456990)))

(declare-fun bs!1919734 () Bool)

(assert (= bs!1919734 (and d!2281437 d!2281419)))

(assert (=> bs!1919734 (= lambda!457016 lambda!457008)))

(declare-fun bs!1919735 () Bool)

(assert (= bs!1919735 (and d!2281437 d!2281435)))

(assert (=> bs!1919735 (= lambda!457016 lambda!457013)))

(assert (=> d!2281437 (= (inv!91321 ct1!282) (forall!18012 (exprs!8632 ct1!282) lambda!457016))))

(declare-fun bs!1919736 () Bool)

(assert (= bs!1919736 d!2281437))

(declare-fun m!8015832 () Bool)

(assert (=> bs!1919736 m!8015832))

(assert (=> start!718278 d!2281437))

(declare-fun bs!1919737 () Bool)

(declare-fun d!2281439 () Bool)

(assert (= bs!1919737 (and d!2281439 b!7355727)))

(declare-fun lambda!457017 () Int)

(assert (=> bs!1919737 (= lambda!457017 lambda!456990)))

(declare-fun bs!1919738 () Bool)

(assert (= bs!1919738 (and d!2281439 d!2281419)))

(assert (=> bs!1919738 (= lambda!457017 lambda!457008)))

(declare-fun bs!1919739 () Bool)

(assert (= bs!1919739 (and d!2281439 d!2281435)))

(assert (=> bs!1919739 (= lambda!457017 lambda!457013)))

(declare-fun bs!1919740 () Bool)

(assert (= bs!1919740 (and d!2281439 d!2281437)))

(assert (=> bs!1919740 (= lambda!457017 lambda!457016)))

(assert (=> d!2281439 (= (inv!91321 ct2!378) (forall!18012 (exprs!8632 ct2!378) lambda!457017))))

(declare-fun bs!1919741 () Bool)

(assert (= bs!1919741 d!2281439))

(declare-fun m!8015834 () Bool)

(assert (=> bs!1919741 m!8015834))

(assert (=> start!718278 d!2281439))

(declare-fun b!7355878 () Bool)

(declare-fun e!4404308 () Bool)

(declare-fun call!673444 () Bool)

(assert (=> b!7355878 (= e!4404308 call!673444)))

(declare-fun b!7355879 () Bool)

(declare-fun e!4404313 () Bool)

(declare-fun e!4404314 () Bool)

(assert (=> b!7355879 (= e!4404313 e!4404314)))

(declare-fun c!1366690 () Bool)

(assert (=> b!7355879 (= c!1366690 (is-Star!19192 lt!2613202))))

(declare-fun b!7355880 () Bool)

(declare-fun res!2970277 () Bool)

(declare-fun e!4404309 () Bool)

(assert (=> b!7355880 (=> res!2970277 e!4404309)))

(assert (=> b!7355880 (= res!2970277 (not (is-Concat!28037 lt!2613202)))))

(declare-fun e!4404311 () Bool)

(assert (=> b!7355880 (= e!4404311 e!4404309)))

(declare-fun b!7355881 () Bool)

(declare-fun e!4404312 () Bool)

(declare-fun call!673445 () Bool)

(assert (=> b!7355881 (= e!4404312 call!673445)))

(declare-fun b!7355882 () Bool)

(assert (=> b!7355882 (= e!4404309 e!4404312)))

(declare-fun res!2970274 () Bool)

(assert (=> b!7355882 (=> (not res!2970274) (not e!4404312))))

(declare-fun call!673443 () Bool)

(assert (=> b!7355882 (= res!2970274 call!673443)))

(declare-fun d!2281441 () Bool)

(declare-fun res!2970276 () Bool)

(assert (=> d!2281441 (=> res!2970276 e!4404313)))

(assert (=> d!2281441 (= res!2970276 (is-ElementMatch!19192 lt!2613202))))

(assert (=> d!2281441 (= (validRegex!9788 lt!2613202) e!4404313)))

(declare-fun b!7355883 () Bool)

(declare-fun e!4404310 () Bool)

(assert (=> b!7355883 (= e!4404310 call!673443)))

(declare-fun b!7355884 () Bool)

(assert (=> b!7355884 (= e!4404314 e!4404311)))

(declare-fun c!1366691 () Bool)

(assert (=> b!7355884 (= c!1366691 (is-Union!19192 lt!2613202))))

(declare-fun bm!673438 () Bool)

(assert (=> bm!673438 (= call!673443 call!673444)))

(declare-fun bm!673439 () Bool)

(assert (=> bm!673439 (= call!673445 (validRegex!9788 (ite c!1366691 (regOne!38897 lt!2613202) (regTwo!38896 lt!2613202))))))

(declare-fun bm!673440 () Bool)

(assert (=> bm!673440 (= call!673444 (validRegex!9788 (ite c!1366690 (reg!19521 lt!2613202) (ite c!1366691 (regTwo!38897 lt!2613202) (regOne!38896 lt!2613202)))))))

(declare-fun b!7355885 () Bool)

(declare-fun res!2970273 () Bool)

(assert (=> b!7355885 (=> (not res!2970273) (not e!4404310))))

(assert (=> b!7355885 (= res!2970273 call!673445)))

(assert (=> b!7355885 (= e!4404311 e!4404310)))

(declare-fun b!7355886 () Bool)

(assert (=> b!7355886 (= e!4404314 e!4404308)))

(declare-fun res!2970275 () Bool)

(assert (=> b!7355886 (= res!2970275 (not (nullable!8283 (reg!19521 lt!2613202))))))

(assert (=> b!7355886 (=> (not res!2970275) (not e!4404308))))

(assert (= (and d!2281441 (not res!2970276)) b!7355879))

(assert (= (and b!7355879 c!1366690) b!7355886))

(assert (= (and b!7355879 (not c!1366690)) b!7355884))

(assert (= (and b!7355886 res!2970275) b!7355878))

(assert (= (and b!7355884 c!1366691) b!7355885))

(assert (= (and b!7355884 (not c!1366691)) b!7355880))

(assert (= (and b!7355885 res!2970273) b!7355883))

(assert (= (and b!7355880 (not res!2970277)) b!7355882))

(assert (= (and b!7355882 res!2970274) b!7355881))

(assert (= (or b!7355885 b!7355881) bm!673439))

(assert (= (or b!7355883 b!7355882) bm!673438))

(assert (= (or b!7355878 bm!673438) bm!673440))

(declare-fun m!8015836 () Bool)

(assert (=> bm!673439 m!8015836))

(declare-fun m!8015838 () Bool)

(assert (=> bm!673440 m!8015838))

(declare-fun m!8015840 () Bool)

(assert (=> b!7355886 m!8015840))

(assert (=> b!7355734 d!2281441))

(declare-fun b!7355887 () Bool)

(declare-fun e!4404315 () (Set Context!16264))

(declare-fun call!673450 () (Set Context!16264))

(declare-fun call!673451 () (Set Context!16264))

(assert (=> b!7355887 (= e!4404315 (set.union call!673450 call!673451))))

(declare-fun bm!673441 () Bool)

(declare-fun call!673449 () (Set Context!16264))

(declare-fun call!673448 () (Set Context!16264))

(assert (=> bm!673441 (= call!673449 call!673448)))

(declare-fun b!7355888 () Bool)

(declare-fun c!1366693 () Bool)

(assert (=> b!7355888 (= c!1366693 (is-Star!19192 (reg!19521 r1!2370)))))

(declare-fun e!4404317 () (Set Context!16264))

(declare-fun e!4404320 () (Set Context!16264))

(assert (=> b!7355888 (= e!4404317 e!4404320)))

(declare-fun d!2281443 () Bool)

(declare-fun c!1366695 () Bool)

(assert (=> d!2281443 (= c!1366695 (and (is-ElementMatch!19192 (reg!19521 r1!2370)) (= (c!1366658 (reg!19521 r1!2370)) c!10362)))))

(declare-fun e!4404319 () (Set Context!16264))

(assert (=> d!2281443 (= (derivationStepZipperDown!3018 (reg!19521 r1!2370) lt!2613204 c!10362) e!4404319)))

(declare-fun bm!673442 () Bool)

(assert (=> bm!673442 (= call!673448 call!673450)))

(declare-fun b!7355889 () Bool)

(declare-fun e!4404318 () (Set Context!16264))

(assert (=> b!7355889 (= e!4404318 (set.union call!673451 call!673448))))

(declare-fun c!1366694 () Bool)

(declare-fun call!673446 () List!71688)

(declare-fun c!1366696 () Bool)

(declare-fun bm!673443 () Bool)

(declare-fun c!1366692 () Bool)

(assert (=> bm!673443 (= call!673450 (derivationStepZipperDown!3018 (ite c!1366694 (regOne!38897 (reg!19521 r1!2370)) (ite c!1366696 (regTwo!38896 (reg!19521 r1!2370)) (ite c!1366692 (regOne!38896 (reg!19521 r1!2370)) (reg!19521 (reg!19521 r1!2370))))) (ite (or c!1366694 c!1366696) lt!2613204 (Context!16265 call!673446)) c!10362))))

(declare-fun bm!673444 () Bool)

(declare-fun call!673447 () List!71688)

(assert (=> bm!673444 (= call!673447 ($colon$colon!3189 (exprs!8632 lt!2613204) (ite (or c!1366696 c!1366692) (regTwo!38896 (reg!19521 r1!2370)) (reg!19521 r1!2370))))))

(declare-fun b!7355890 () Bool)

(assert (=> b!7355890 (= e!4404317 call!673449)))

(declare-fun b!7355891 () Bool)

(assert (=> b!7355891 (= e!4404319 (set.insert lt!2613204 (as set.empty (Set Context!16264))))))

(declare-fun b!7355892 () Bool)

(assert (=> b!7355892 (= e!4404319 e!4404315)))

(assert (=> b!7355892 (= c!1366694 (is-Union!19192 (reg!19521 r1!2370)))))

(declare-fun b!7355893 () Bool)

(assert (=> b!7355893 (= e!4404320 (as set.empty (Set Context!16264)))))

(declare-fun bm!673445 () Bool)

(assert (=> bm!673445 (= call!673446 call!673447)))

(declare-fun b!7355894 () Bool)

(assert (=> b!7355894 (= e!4404318 e!4404317)))

(assert (=> b!7355894 (= c!1366692 (is-Concat!28037 (reg!19521 r1!2370)))))

(declare-fun bm!673446 () Bool)

(assert (=> bm!673446 (= call!673451 (derivationStepZipperDown!3018 (ite c!1366694 (regTwo!38897 (reg!19521 r1!2370)) (regOne!38896 (reg!19521 r1!2370))) (ite c!1366694 lt!2613204 (Context!16265 call!673447)) c!10362))))

(declare-fun b!7355895 () Bool)

(declare-fun e!4404316 () Bool)

(assert (=> b!7355895 (= e!4404316 (nullable!8283 (regOne!38896 (reg!19521 r1!2370))))))

(declare-fun b!7355896 () Bool)

(assert (=> b!7355896 (= c!1366696 e!4404316)))

(declare-fun res!2970278 () Bool)

(assert (=> b!7355896 (=> (not res!2970278) (not e!4404316))))

(assert (=> b!7355896 (= res!2970278 (is-Concat!28037 (reg!19521 r1!2370)))))

(assert (=> b!7355896 (= e!4404315 e!4404318)))

(declare-fun b!7355897 () Bool)

(assert (=> b!7355897 (= e!4404320 call!673449)))

(assert (= (and d!2281443 c!1366695) b!7355891))

(assert (= (and d!2281443 (not c!1366695)) b!7355892))

(assert (= (and b!7355892 c!1366694) b!7355887))

(assert (= (and b!7355892 (not c!1366694)) b!7355896))

(assert (= (and b!7355896 res!2970278) b!7355895))

(assert (= (and b!7355896 c!1366696) b!7355889))

(assert (= (and b!7355896 (not c!1366696)) b!7355894))

(assert (= (and b!7355894 c!1366692) b!7355890))

(assert (= (and b!7355894 (not c!1366692)) b!7355888))

(assert (= (and b!7355888 c!1366693) b!7355897))

(assert (= (and b!7355888 (not c!1366693)) b!7355893))

(assert (= (or b!7355890 b!7355897) bm!673445))

(assert (= (or b!7355890 b!7355897) bm!673441))

(assert (= (or b!7355889 bm!673441) bm!673442))

(assert (= (or b!7355889 bm!673445) bm!673444))

(assert (= (or b!7355887 b!7355889) bm!673446))

(assert (= (or b!7355887 bm!673442) bm!673443))

(declare-fun m!8015842 () Bool)

(assert (=> bm!673446 m!8015842))

(declare-fun m!8015844 () Bool)

(assert (=> b!7355891 m!8015844))

(declare-fun m!8015846 () Bool)

(assert (=> bm!673443 m!8015846))

(assert (=> b!7355895 m!8015796))

(declare-fun m!8015848 () Bool)

(assert (=> bm!673444 m!8015848))

(assert (=> b!7355728 d!2281443))

(declare-fun d!2281445 () Bool)

(assert (=> d!2281445 (= ($colon$colon!3189 (exprs!8632 ct1!282) lt!2613202) (Cons!71564 lt!2613202 (exprs!8632 ct1!282)))))

(assert (=> b!7355728 d!2281445))

(declare-fun b!7355898 () Bool)

(declare-fun e!4404321 () (Set Context!16264))

(declare-fun call!673456 () (Set Context!16264))

(declare-fun call!673457 () (Set Context!16264))

(assert (=> b!7355898 (= e!4404321 (set.union call!673456 call!673457))))

(declare-fun bm!673447 () Bool)

(declare-fun call!673455 () (Set Context!16264))

(declare-fun call!673454 () (Set Context!16264))

(assert (=> bm!673447 (= call!673455 call!673454)))

(declare-fun b!7355899 () Bool)

(declare-fun c!1366698 () Bool)

(assert (=> b!7355899 (= c!1366698 (is-Star!19192 r1!2370))))

(declare-fun e!4404323 () (Set Context!16264))

(declare-fun e!4404326 () (Set Context!16264))

(assert (=> b!7355899 (= e!4404323 e!4404326)))

(declare-fun d!2281447 () Bool)

(declare-fun c!1366700 () Bool)

(assert (=> d!2281447 (= c!1366700 (and (is-ElementMatch!19192 r1!2370) (= (c!1366658 r1!2370) c!10362)))))

(declare-fun e!4404325 () (Set Context!16264))

(assert (=> d!2281447 (= (derivationStepZipperDown!3018 r1!2370 (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378))) c!10362) e!4404325)))

(declare-fun bm!673448 () Bool)

(assert (=> bm!673448 (= call!673454 call!673456)))

(declare-fun b!7355900 () Bool)

(declare-fun e!4404324 () (Set Context!16264))

(assert (=> b!7355900 (= e!4404324 (set.union call!673457 call!673454))))

(declare-fun call!673452 () List!71688)

(declare-fun bm!673449 () Bool)

(declare-fun c!1366697 () Bool)

(declare-fun c!1366701 () Bool)

(declare-fun c!1366699 () Bool)

(assert (=> bm!673449 (= call!673456 (derivationStepZipperDown!3018 (ite c!1366699 (regOne!38897 r1!2370) (ite c!1366701 (regTwo!38896 r1!2370) (ite c!1366697 (regOne!38896 r1!2370) (reg!19521 r1!2370)))) (ite (or c!1366699 c!1366701) (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378))) (Context!16265 call!673452)) c!10362))))

(declare-fun call!673453 () List!71688)

(declare-fun bm!673450 () Bool)

(assert (=> bm!673450 (= call!673453 ($colon$colon!3189 (exprs!8632 (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378)))) (ite (or c!1366701 c!1366697) (regTwo!38896 r1!2370) r1!2370)))))

(declare-fun b!7355901 () Bool)

(assert (=> b!7355901 (= e!4404323 call!673455)))

(declare-fun b!7355902 () Bool)

(assert (=> b!7355902 (= e!4404325 (set.insert (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378))) (as set.empty (Set Context!16264))))))

(declare-fun b!7355903 () Bool)

(assert (=> b!7355903 (= e!4404325 e!4404321)))

(assert (=> b!7355903 (= c!1366699 (is-Union!19192 r1!2370))))

(declare-fun b!7355904 () Bool)

(assert (=> b!7355904 (= e!4404326 (as set.empty (Set Context!16264)))))

(declare-fun bm!673451 () Bool)

(assert (=> bm!673451 (= call!673452 call!673453)))

(declare-fun b!7355905 () Bool)

(assert (=> b!7355905 (= e!4404324 e!4404323)))

(assert (=> b!7355905 (= c!1366697 (is-Concat!28037 r1!2370))))

(declare-fun bm!673452 () Bool)

(assert (=> bm!673452 (= call!673457 (derivationStepZipperDown!3018 (ite c!1366699 (regTwo!38897 r1!2370) (regOne!38896 r1!2370)) (ite c!1366699 (Context!16265 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378))) (Context!16265 call!673453)) c!10362))))

(declare-fun b!7355906 () Bool)

(declare-fun e!4404322 () Bool)

(assert (=> b!7355906 (= e!4404322 (nullable!8283 (regOne!38896 r1!2370)))))

(declare-fun b!7355907 () Bool)

(assert (=> b!7355907 (= c!1366701 e!4404322)))

(declare-fun res!2970279 () Bool)

(assert (=> b!7355907 (=> (not res!2970279) (not e!4404322))))

(assert (=> b!7355907 (= res!2970279 (is-Concat!28037 r1!2370))))

(assert (=> b!7355907 (= e!4404321 e!4404324)))

(declare-fun b!7355908 () Bool)

(assert (=> b!7355908 (= e!4404326 call!673455)))

(assert (= (and d!2281447 c!1366700) b!7355902))

(assert (= (and d!2281447 (not c!1366700)) b!7355903))

(assert (= (and b!7355903 c!1366699) b!7355898))

(assert (= (and b!7355903 (not c!1366699)) b!7355907))

(assert (= (and b!7355907 res!2970279) b!7355906))

(assert (= (and b!7355907 c!1366701) b!7355900))

(assert (= (and b!7355907 (not c!1366701)) b!7355905))

(assert (= (and b!7355905 c!1366697) b!7355901))

(assert (= (and b!7355905 (not c!1366697)) b!7355899))

(assert (= (and b!7355899 c!1366698) b!7355908))

(assert (= (and b!7355899 (not c!1366698)) b!7355904))

(assert (= (or b!7355901 b!7355908) bm!673451))

(assert (= (or b!7355901 b!7355908) bm!673447))

(assert (= (or b!7355900 bm!673447) bm!673448))

(assert (= (or b!7355900 bm!673451) bm!673450))

(assert (= (or b!7355898 b!7355900) bm!673452))

(assert (= (or b!7355898 bm!673448) bm!673449))

(declare-fun m!8015850 () Bool)

(assert (=> bm!673452 m!8015850))

(declare-fun m!8015852 () Bool)

(assert (=> b!7355902 m!8015852))

(declare-fun m!8015854 () Bool)

(assert (=> bm!673449 m!8015854))

(assert (=> b!7355906 m!8015676))

(declare-fun m!8015856 () Bool)

(assert (=> bm!673450 m!8015856))

(assert (=> b!7355727 d!2281447))

(declare-fun e!4404328 () Bool)

(declare-fun lt!2613273 () List!71688)

(declare-fun b!7355912 () Bool)

(assert (=> b!7355912 (= e!4404328 (or (not (= (exprs!8632 ct2!378) Nil!71564)) (= lt!2613273 (exprs!8632 ct1!282))))))

(declare-fun b!7355910 () Bool)

(declare-fun e!4404327 () List!71688)

(assert (=> b!7355910 (= e!4404327 (Cons!71564 (h!78012 (exprs!8632 ct1!282)) (++!17010 (t!386127 (exprs!8632 ct1!282)) (exprs!8632 ct2!378))))))

(declare-fun d!2281449 () Bool)

(assert (=> d!2281449 e!4404328))

(declare-fun res!2970280 () Bool)

(assert (=> d!2281449 (=> (not res!2970280) (not e!4404328))))

(assert (=> d!2281449 (= res!2970280 (= (content!15095 lt!2613273) (set.union (content!15095 (exprs!8632 ct1!282)) (content!15095 (exprs!8632 ct2!378)))))))

(assert (=> d!2281449 (= lt!2613273 e!4404327)))

(declare-fun c!1366702 () Bool)

(assert (=> d!2281449 (= c!1366702 (is-Nil!71564 (exprs!8632 ct1!282)))))

(assert (=> d!2281449 (= (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378)) lt!2613273)))

(declare-fun b!7355909 () Bool)

(assert (=> b!7355909 (= e!4404327 (exprs!8632 ct2!378))))

(declare-fun b!7355911 () Bool)

(declare-fun res!2970281 () Bool)

(assert (=> b!7355911 (=> (not res!2970281) (not e!4404328))))

(assert (=> b!7355911 (= res!2970281 (= (size!42073 lt!2613273) (+ (size!42073 (exprs!8632 ct1!282)) (size!42073 (exprs!8632 ct2!378)))))))

(assert (= (and d!2281449 c!1366702) b!7355909))

(assert (= (and d!2281449 (not c!1366702)) b!7355910))

(assert (= (and d!2281449 res!2970280) b!7355911))

(assert (= (and b!7355911 res!2970281) b!7355912))

(declare-fun m!8015858 () Bool)

(assert (=> b!7355910 m!8015858))

(declare-fun m!8015860 () Bool)

(assert (=> d!2281449 m!8015860))

(declare-fun m!8015862 () Bool)

(assert (=> d!2281449 m!8015862))

(assert (=> d!2281449 m!8015806))

(declare-fun m!8015864 () Bool)

(assert (=> b!7355911 m!8015864))

(declare-fun m!8015866 () Bool)

(assert (=> b!7355911 m!8015866))

(assert (=> b!7355911 m!8015812))

(assert (=> b!7355727 d!2281449))

(declare-fun d!2281451 () Bool)

(assert (=> d!2281451 (forall!18012 (++!17010 (exprs!8632 ct1!282) (exprs!8632 ct2!378)) lambda!456990)))

(declare-fun lt!2613276 () Unit!165337)

(assert (=> d!2281451 (= lt!2613276 (choose!57220 (exprs!8632 ct1!282) (exprs!8632 ct2!378) lambda!456990))))

(assert (=> d!2281451 (forall!18012 (exprs!8632 ct1!282) lambda!456990)))

(assert (=> d!2281451 (= (lemmaConcatPreservesForall!1867 (exprs!8632 ct1!282) (exprs!8632 ct2!378) lambda!456990) lt!2613276)))

(declare-fun bs!1919743 () Bool)

(assert (= bs!1919743 d!2281451))

(assert (=> bs!1919743 m!8015678))

(assert (=> bs!1919743 m!8015678))

(declare-fun m!8015868 () Bool)

(assert (=> bs!1919743 m!8015868))

(declare-fun m!8015870 () Bool)

(assert (=> bs!1919743 m!8015870))

(assert (=> bs!1919743 m!8015700))

(assert (=> b!7355727 d!2281451))

(declare-fun b!7355913 () Bool)

(declare-fun e!4404329 () (Set Context!16264))

(declare-fun call!673462 () (Set Context!16264))

(declare-fun call!673463 () (Set Context!16264))

(assert (=> b!7355913 (= e!4404329 (set.union call!673462 call!673463))))

(declare-fun bm!673453 () Bool)

(declare-fun call!673461 () (Set Context!16264))

(declare-fun call!673460 () (Set Context!16264))

(assert (=> bm!673453 (= call!673461 call!673460)))

(declare-fun b!7355914 () Bool)

(declare-fun c!1366704 () Bool)

(assert (=> b!7355914 (= c!1366704 (is-Star!19192 r1!2370))))

(declare-fun e!4404331 () (Set Context!16264))

(declare-fun e!4404334 () (Set Context!16264))

(assert (=> b!7355914 (= e!4404331 e!4404334)))

(declare-fun d!2281453 () Bool)

(declare-fun c!1366706 () Bool)

(assert (=> d!2281453 (= c!1366706 (and (is-ElementMatch!19192 r1!2370) (= (c!1366658 r1!2370) c!10362)))))

(declare-fun e!4404333 () (Set Context!16264))

(assert (=> d!2281453 (= (derivationStepZipperDown!3018 r1!2370 ct1!282 c!10362) e!4404333)))

(declare-fun bm!673454 () Bool)

(assert (=> bm!673454 (= call!673460 call!673462)))

(declare-fun b!7355915 () Bool)

(declare-fun e!4404332 () (Set Context!16264))

(assert (=> b!7355915 (= e!4404332 (set.union call!673463 call!673460))))

(declare-fun c!1366707 () Bool)

(declare-fun bm!673455 () Bool)

(declare-fun c!1366705 () Bool)

(declare-fun call!673458 () List!71688)

(declare-fun c!1366703 () Bool)

(assert (=> bm!673455 (= call!673462 (derivationStepZipperDown!3018 (ite c!1366705 (regOne!38897 r1!2370) (ite c!1366707 (regTwo!38896 r1!2370) (ite c!1366703 (regOne!38896 r1!2370) (reg!19521 r1!2370)))) (ite (or c!1366705 c!1366707) ct1!282 (Context!16265 call!673458)) c!10362))))

(declare-fun bm!673456 () Bool)

(declare-fun call!673459 () List!71688)

(assert (=> bm!673456 (= call!673459 ($colon$colon!3189 (exprs!8632 ct1!282) (ite (or c!1366707 c!1366703) (regTwo!38896 r1!2370) r1!2370)))))

(declare-fun b!7355916 () Bool)

(assert (=> b!7355916 (= e!4404331 call!673461)))

(declare-fun b!7355917 () Bool)

(assert (=> b!7355917 (= e!4404333 (set.insert ct1!282 (as set.empty (Set Context!16264))))))

(declare-fun b!7355918 () Bool)

(assert (=> b!7355918 (= e!4404333 e!4404329)))

(assert (=> b!7355918 (= c!1366705 (is-Union!19192 r1!2370))))

(declare-fun b!7355919 () Bool)

(assert (=> b!7355919 (= e!4404334 (as set.empty (Set Context!16264)))))

(declare-fun bm!673457 () Bool)

(assert (=> bm!673457 (= call!673458 call!673459)))

(declare-fun b!7355920 () Bool)

(assert (=> b!7355920 (= e!4404332 e!4404331)))

(assert (=> b!7355920 (= c!1366703 (is-Concat!28037 r1!2370))))

(declare-fun bm!673458 () Bool)

(assert (=> bm!673458 (= call!673463 (derivationStepZipperDown!3018 (ite c!1366705 (regTwo!38897 r1!2370) (regOne!38896 r1!2370)) (ite c!1366705 ct1!282 (Context!16265 call!673459)) c!10362))))

(declare-fun b!7355921 () Bool)

(declare-fun e!4404330 () Bool)

(assert (=> b!7355921 (= e!4404330 (nullable!8283 (regOne!38896 r1!2370)))))

(declare-fun b!7355922 () Bool)

(assert (=> b!7355922 (= c!1366707 e!4404330)))

(declare-fun res!2970282 () Bool)

(assert (=> b!7355922 (=> (not res!2970282) (not e!4404330))))

(assert (=> b!7355922 (= res!2970282 (is-Concat!28037 r1!2370))))

(assert (=> b!7355922 (= e!4404329 e!4404332)))

(declare-fun b!7355923 () Bool)

(assert (=> b!7355923 (= e!4404334 call!673461)))

(assert (= (and d!2281453 c!1366706) b!7355917))

(assert (= (and d!2281453 (not c!1366706)) b!7355918))

(assert (= (and b!7355918 c!1366705) b!7355913))

(assert (= (and b!7355918 (not c!1366705)) b!7355922))

(assert (= (and b!7355922 res!2970282) b!7355921))

(assert (= (and b!7355922 c!1366707) b!7355915))

(assert (= (and b!7355922 (not c!1366707)) b!7355920))

(assert (= (and b!7355920 c!1366703) b!7355916))

(assert (= (and b!7355920 (not c!1366703)) b!7355914))

(assert (= (and b!7355914 c!1366704) b!7355923))

(assert (= (and b!7355914 (not c!1366704)) b!7355919))

(assert (= (or b!7355916 b!7355923) bm!673457))

(assert (= (or b!7355916 b!7355923) bm!673453))

(assert (= (or b!7355915 bm!673453) bm!673454))

(assert (= (or b!7355915 bm!673457) bm!673456))

(assert (= (or b!7355913 b!7355915) bm!673458))

(assert (= (or b!7355913 bm!673454) bm!673455))

(declare-fun m!8015872 () Bool)

(assert (=> bm!673458 m!8015872))

(declare-fun m!8015874 () Bool)

(assert (=> b!7355917 m!8015874))

(declare-fun m!8015876 () Bool)

(assert (=> bm!673455 m!8015876))

(assert (=> b!7355921 m!8015676))

(declare-fun m!8015880 () Bool)

(assert (=> bm!673456 m!8015880))

(assert (=> b!7355721 d!2281453))

(declare-fun d!2281455 () Bool)

(declare-fun nullableFct!3311 (Regex!19192) Bool)

(assert (=> d!2281455 (= (nullable!8283 (regOne!38896 r1!2370)) (nullableFct!3311 (regOne!38896 r1!2370)))))

(declare-fun bs!1919745 () Bool)

(assert (= bs!1919745 d!2281455))

(declare-fun m!8015894 () Bool)

(assert (=> bs!1919745 m!8015894))

(assert (=> b!7355726 d!2281455))

(declare-fun b!7355932 () Bool)

(declare-fun e!4404339 () Bool)

(declare-fun tp!2089504 () Bool)

(declare-fun tp!2089505 () Bool)

(assert (=> b!7355932 (= e!4404339 (and tp!2089504 tp!2089505))))

(assert (=> b!7355725 (= tp!2089469 e!4404339)))

(assert (= (and b!7355725 (is-Cons!71564 (exprs!8632 ct1!282))) b!7355932))

(declare-fun b!7355933 () Bool)

(declare-fun e!4404340 () Bool)

(declare-fun tp!2089506 () Bool)

(declare-fun tp!2089507 () Bool)

(assert (=> b!7355933 (= e!4404340 (and tp!2089506 tp!2089507))))

(assert (=> b!7355730 (= tp!2089475 e!4404340)))

(assert (= (and b!7355730 (is-Cons!71564 (exprs!8632 ct2!378))) b!7355933))

(declare-fun b!7355946 () Bool)

(declare-fun e!4404343 () Bool)

(declare-fun tp!2089521 () Bool)

(assert (=> b!7355946 (= e!4404343 tp!2089521)))

(declare-fun b!7355944 () Bool)

(assert (=> b!7355944 (= e!4404343 tp_is_empty!48629)))

(declare-fun b!7355947 () Bool)

(declare-fun tp!2089522 () Bool)

(declare-fun tp!2089518 () Bool)

(assert (=> b!7355947 (= e!4404343 (and tp!2089522 tp!2089518))))

(assert (=> b!7355723 (= tp!2089470 e!4404343)))

(declare-fun b!7355945 () Bool)

(declare-fun tp!2089520 () Bool)

(declare-fun tp!2089519 () Bool)

(assert (=> b!7355945 (= e!4404343 (and tp!2089520 tp!2089519))))

(assert (= (and b!7355723 (is-ElementMatch!19192 (reg!19521 r1!2370))) b!7355944))

(assert (= (and b!7355723 (is-Concat!28037 (reg!19521 r1!2370))) b!7355945))

(assert (= (and b!7355723 (is-Star!19192 (reg!19521 r1!2370))) b!7355946))

(assert (= (and b!7355723 (is-Union!19192 (reg!19521 r1!2370))) b!7355947))

(declare-fun b!7355950 () Bool)

(declare-fun e!4404344 () Bool)

(declare-fun tp!2089526 () Bool)

(assert (=> b!7355950 (= e!4404344 tp!2089526)))

(declare-fun b!7355948 () Bool)

(assert (=> b!7355948 (= e!4404344 tp_is_empty!48629)))

(declare-fun b!7355951 () Bool)

(declare-fun tp!2089527 () Bool)

(declare-fun tp!2089523 () Bool)

(assert (=> b!7355951 (= e!4404344 (and tp!2089527 tp!2089523))))

(assert (=> b!7355733 (= tp!2089468 e!4404344)))

(declare-fun b!7355949 () Bool)

(declare-fun tp!2089525 () Bool)

(declare-fun tp!2089524 () Bool)

(assert (=> b!7355949 (= e!4404344 (and tp!2089525 tp!2089524))))

(assert (= (and b!7355733 (is-ElementMatch!19192 (regOne!38897 r1!2370))) b!7355948))

(assert (= (and b!7355733 (is-Concat!28037 (regOne!38897 r1!2370))) b!7355949))

(assert (= (and b!7355733 (is-Star!19192 (regOne!38897 r1!2370))) b!7355950))

(assert (= (and b!7355733 (is-Union!19192 (regOne!38897 r1!2370))) b!7355951))

(declare-fun b!7355954 () Bool)

(declare-fun e!4404345 () Bool)

(declare-fun tp!2089531 () Bool)

(assert (=> b!7355954 (= e!4404345 tp!2089531)))

(declare-fun b!7355952 () Bool)

(assert (=> b!7355952 (= e!4404345 tp_is_empty!48629)))

(declare-fun b!7355955 () Bool)

(declare-fun tp!2089532 () Bool)

(declare-fun tp!2089528 () Bool)

(assert (=> b!7355955 (= e!4404345 (and tp!2089532 tp!2089528))))

(assert (=> b!7355733 (= tp!2089471 e!4404345)))

(declare-fun b!7355953 () Bool)

(declare-fun tp!2089530 () Bool)

(declare-fun tp!2089529 () Bool)

(assert (=> b!7355953 (= e!4404345 (and tp!2089530 tp!2089529))))

(assert (= (and b!7355733 (is-ElementMatch!19192 (regTwo!38897 r1!2370))) b!7355952))

(assert (= (and b!7355733 (is-Concat!28037 (regTwo!38897 r1!2370))) b!7355953))

(assert (= (and b!7355733 (is-Star!19192 (regTwo!38897 r1!2370))) b!7355954))

(assert (= (and b!7355733 (is-Union!19192 (regTwo!38897 r1!2370))) b!7355955))

(declare-fun b!7355958 () Bool)

(declare-fun e!4404346 () Bool)

(declare-fun tp!2089536 () Bool)

(assert (=> b!7355958 (= e!4404346 tp!2089536)))

(declare-fun b!7355956 () Bool)

(assert (=> b!7355956 (= e!4404346 tp_is_empty!48629)))

(declare-fun b!7355959 () Bool)

(declare-fun tp!2089537 () Bool)

(declare-fun tp!2089533 () Bool)

(assert (=> b!7355959 (= e!4404346 (and tp!2089537 tp!2089533))))

(assert (=> b!7355722 (= tp!2089474 e!4404346)))

(declare-fun b!7355957 () Bool)

(declare-fun tp!2089535 () Bool)

(declare-fun tp!2089534 () Bool)

(assert (=> b!7355957 (= e!4404346 (and tp!2089535 tp!2089534))))

(assert (= (and b!7355722 (is-ElementMatch!19192 (regOne!38896 r1!2370))) b!7355956))

(assert (= (and b!7355722 (is-Concat!28037 (regOne!38896 r1!2370))) b!7355957))

(assert (= (and b!7355722 (is-Star!19192 (regOne!38896 r1!2370))) b!7355958))

(assert (= (and b!7355722 (is-Union!19192 (regOne!38896 r1!2370))) b!7355959))

(declare-fun b!7355962 () Bool)

(declare-fun e!4404347 () Bool)

(declare-fun tp!2089541 () Bool)

(assert (=> b!7355962 (= e!4404347 tp!2089541)))

(declare-fun b!7355960 () Bool)

(assert (=> b!7355960 (= e!4404347 tp_is_empty!48629)))

(declare-fun b!7355963 () Bool)

(declare-fun tp!2089542 () Bool)

(declare-fun tp!2089538 () Bool)

(assert (=> b!7355963 (= e!4404347 (and tp!2089542 tp!2089538))))

(assert (=> b!7355722 (= tp!2089473 e!4404347)))

(declare-fun b!7355961 () Bool)

(declare-fun tp!2089540 () Bool)

(declare-fun tp!2089539 () Bool)

(assert (=> b!7355961 (= e!4404347 (and tp!2089540 tp!2089539))))

(assert (= (and b!7355722 (is-ElementMatch!19192 (regTwo!38896 r1!2370))) b!7355960))

(assert (= (and b!7355722 (is-Concat!28037 (regTwo!38896 r1!2370))) b!7355961))

(assert (= (and b!7355722 (is-Star!19192 (regTwo!38896 r1!2370))) b!7355962))

(assert (= (and b!7355722 (is-Union!19192 (regTwo!38896 r1!2370))) b!7355963))

(declare-fun b!7355964 () Bool)

(declare-fun e!4404348 () Bool)

(declare-fun tp!2089543 () Bool)

(declare-fun tp!2089544 () Bool)

(assert (=> b!7355964 (= e!4404348 (and tp!2089543 tp!2089544))))

(assert (=> b!7355731 (= tp!2089472 e!4404348)))

(assert (= (and b!7355731 (is-Cons!71564 (exprs!8632 cWitness!61))) b!7355964))

(declare-fun b_lambda!284245 () Bool)

(assert (= b_lambda!284243 (or b!7355727 b_lambda!284245)))

(declare-fun bs!1919746 () Bool)

(declare-fun d!2281461 () Bool)

(assert (= bs!1919746 (and d!2281461 b!7355727)))

(assert (=> bs!1919746 (= (dynLambda!29510 lambda!456990 (h!78012 (exprs!8632 ct1!282))) (validRegex!9788 (h!78012 (exprs!8632 ct1!282))))))

(declare-fun m!8015906 () Bool)

(assert (=> bs!1919746 m!8015906))

(assert (=> b!7355788 d!2281461))

(push 1)

(assert (not d!2281431))

(assert (not b!7355832))

(assert (not b!7355849))

(assert (not b!7355958))

(assert (not b!7355945))

(assert (not b!7355933))

(assert (not b!7355963))

(assert (not b!7355951))

(assert (not b!7355932))

(assert (not b!7355921))

(assert (not bm!673428))

(assert (not bm!673426))

(assert (not b!7355895))

(assert (not b!7355911))

(assert (not b_lambda!284245))

(assert (not b!7355844))

(assert (not bm!673446))

(assert (not bm!673450))

(assert (not bm!673456))

(assert (not bm!673439))

(assert (not b!7355910))

(assert (not bm!673449))

(assert (not b!7355949))

(assert (not bm!673437))

(assert (not bm!673458))

(assert (not b!7355877))

(assert (not b!7355789))

(assert (not b!7355964))

(assert (not b!7355950))

(assert (not bm!673443))

(assert (not d!2281439))

(assert (not d!2281429))

(assert (not b!7355959))

(assert (not b!7355953))

(assert (not b!7355962))

(assert (not bm!673425))

(assert (not d!2281449))

(assert (not bm!673444))

(assert (not d!2281423))

(assert (not b!7355961))

(assert (not b!7355946))

(assert (not bm!673455))

(assert (not d!2281419))

(assert (not d!2281451))

(assert (not bm!673452))

(assert (not d!2281437))

(assert (not b!7355954))

(assert (not d!2281435))

(assert (not bm!673440))

(assert (not d!2281455))

(assert (not b!7355955))

(assert (not b!7355848))

(assert (not b!7355845))

(assert (not b!7355886))

(assert tp_is_empty!48629)

(assert (not bs!1919746))

(assert (not b!7355947))

(assert (not b!7355957))

(assert (not bm!673436))

(assert (not d!2281417))

(assert (not b!7355906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

