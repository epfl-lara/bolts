; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715194 () Bool)

(assert start!715194)

(declare-fun b!7326676 () Bool)

(declare-fun res!2961312 () Bool)

(declare-fun e!4387046 () Bool)

(assert (=> b!7326676 (=> (not res!2961312) (not e!4387046))))

(declare-datatypes ((C!38274 0))(
  ( (C!38275 (val!29497 Int)) )
))
(declare-datatypes ((Regex!19000 0))(
  ( (ElementMatch!19000 (c!1360021 C!38274)) (Concat!27845 (regOne!38512 Regex!19000) (regTwo!38512 Regex!19000)) (EmptyExpr!19000) (Star!19000 (reg!19329 Regex!19000)) (EmptyLang!19000) (Union!19000 (regOne!38513 Regex!19000) (regTwo!38513 Regex!19000)) )
))
(declare-datatypes ((List!71496 0))(
  ( (Nil!71372) (Cons!71372 (h!77820 Regex!19000) (t!385881 List!71496)) )
))
(declare-fun lt!2606408 () List!71496)

(declare-fun isEmpty!40918 (List!71496) Bool)

(assert (=> b!7326676 (= res!2961312 (not (isEmpty!40918 lt!2606408)))))

(declare-fun b!7326677 () Bool)

(declare-fun e!4387050 () Bool)

(declare-fun tp!2080598 () Bool)

(assert (=> b!7326677 (= e!4387050 tp!2080598)))

(declare-fun b!7326678 () Bool)

(declare-fun res!2961313 () Bool)

(declare-fun e!4387051 () Bool)

(assert (=> b!7326678 (=> (not res!2961313) (not e!4387051))))

(declare-datatypes ((Context!15880 0))(
  ( (Context!15881 (exprs!8440 List!71496)) )
))
(declare-fun ct1!256 () Context!15880)

(assert (=> b!7326678 (= res!2961313 (not (isEmpty!40918 (exprs!8440 ct1!256))))))

(declare-fun b!7326679 () Bool)

(declare-fun e!4387049 () Bool)

(assert (=> b!7326679 (= e!4387049 e!4387051)))

(declare-fun res!2961315 () Bool)

(assert (=> b!7326679 (=> (not res!2961315) (not e!4387051))))

(assert (=> b!7326679 (= res!2961315 (is-Cons!71372 (exprs!8440 ct1!256)))))

(declare-fun ct2!352 () Context!15880)

(declare-fun ++!16824 (List!71496 List!71496) List!71496)

(assert (=> b!7326679 (= lt!2606408 (++!16824 (exprs!8440 ct1!256) (exprs!8440 ct2!352)))))

(declare-fun lambda!454161 () Int)

(declare-datatypes ((Unit!164965 0))(
  ( (Unit!164966) )
))
(declare-fun lt!2606409 () Unit!164965)

(declare-fun lemmaConcatPreservesForall!1681 (List!71496 List!71496 Int) Unit!164965)

(assert (=> b!7326679 (= lt!2606409 (lemmaConcatPreservesForall!1681 (exprs!8440 ct1!256) (exprs!8440 ct2!352) lambda!454161))))

(declare-fun b!7326680 () Bool)

(assert (=> b!7326680 (= e!4387046 (= lt!2606408 Nil!71372))))

(declare-fun b!7326681 () Bool)

(declare-fun res!2961314 () Bool)

(assert (=> b!7326681 (=> (not res!2961314) (not e!4387046))))

(declare-fun cWitness!35 () Context!15880)

(declare-fun lt!2606410 () (Set Context!15880))

(declare-fun lt!2606407 () (Set Context!15880))

(assert (=> b!7326681 (= res!2961314 (and (= lt!2606410 lt!2606407) (set.member cWitness!35 lt!2606407)))))

(declare-fun b!7326682 () Bool)

(assert (=> b!7326682 (= e!4387051 e!4387046)))

(declare-fun res!2961311 () Bool)

(assert (=> b!7326682 (=> (not res!2961311) (not e!4387046))))

(declare-fun nullable!8104 (Regex!19000) Bool)

(assert (=> b!7326682 (= res!2961311 (not (nullable!8104 (h!77820 (exprs!8440 ct1!256)))))))

(declare-fun c!10305 () C!38274)

(declare-fun derivationStepZipperDown!2831 (Regex!19000 Context!15880 C!38274) (Set Context!15880))

(declare-fun tail!14689 (List!71496) List!71496)

(assert (=> b!7326682 (= lt!2606407 (derivationStepZipperDown!2831 (h!77820 (exprs!8440 ct1!256)) (Context!15881 (tail!14689 (exprs!8440 ct1!256))) c!10305))))

(declare-fun b!7326684 () Bool)

(declare-fun e!4387047 () Bool)

(declare-fun tp!2080600 () Bool)

(assert (=> b!7326684 (= e!4387047 tp!2080600)))

(declare-fun b!7326683 () Bool)

(declare-fun e!4387048 () Bool)

(declare-fun tp!2080599 () Bool)

(assert (=> b!7326683 (= e!4387048 tp!2080599)))

(declare-fun res!2961316 () Bool)

(assert (=> start!715194 (=> (not res!2961316) (not e!4387049))))

(assert (=> start!715194 (= res!2961316 (set.member cWitness!35 lt!2606410))))

(declare-fun derivationStepZipperUp!2680 (Context!15880 C!38274) (Set Context!15880))

(assert (=> start!715194 (= lt!2606410 (derivationStepZipperUp!2680 ct1!256 c!10305))))

(assert (=> start!715194 e!4387049))

(declare-fun tp_is_empty!48245 () Bool)

(assert (=> start!715194 tp_is_empty!48245))

(declare-fun inv!90841 (Context!15880) Bool)

(assert (=> start!715194 (and (inv!90841 cWitness!35) e!4387048)))

(assert (=> start!715194 (and (inv!90841 ct1!256) e!4387050)))

(assert (=> start!715194 (and (inv!90841 ct2!352) e!4387047)))

(assert (= (and start!715194 res!2961316) b!7326679))

(assert (= (and b!7326679 res!2961315) b!7326678))

(assert (= (and b!7326678 res!2961313) b!7326682))

(assert (= (and b!7326682 res!2961311) b!7326681))

(assert (= (and b!7326681 res!2961314) b!7326676))

(assert (= (and b!7326676 res!2961312) b!7326680))

(assert (= start!715194 b!7326683))

(assert (= start!715194 b!7326677))

(assert (= start!715194 b!7326684))

(declare-fun m!7992678 () Bool)

(assert (=> start!715194 m!7992678))

(declare-fun m!7992680 () Bool)

(assert (=> start!715194 m!7992680))

(declare-fun m!7992682 () Bool)

(assert (=> start!715194 m!7992682))

(declare-fun m!7992684 () Bool)

(assert (=> start!715194 m!7992684))

(declare-fun m!7992686 () Bool)

(assert (=> start!715194 m!7992686))

(declare-fun m!7992688 () Bool)

(assert (=> b!7326682 m!7992688))

(declare-fun m!7992690 () Bool)

(assert (=> b!7326682 m!7992690))

(declare-fun m!7992692 () Bool)

(assert (=> b!7326682 m!7992692))

(declare-fun m!7992694 () Bool)

(assert (=> b!7326678 m!7992694))

(declare-fun m!7992696 () Bool)

(assert (=> b!7326681 m!7992696))

(declare-fun m!7992698 () Bool)

(assert (=> b!7326679 m!7992698))

(declare-fun m!7992700 () Bool)

(assert (=> b!7326679 m!7992700))

(declare-fun m!7992702 () Bool)

(assert (=> b!7326676 m!7992702))

(push 1)

(assert (not b!7326676))

(assert (not b!7326679))

(assert (not b!7326683))

(assert (not start!715194))

(assert (not b!7326677))

(assert tp_is_empty!48245)

(assert (not b!7326682))

(assert (not b!7326678))

(assert (not b!7326684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275261 () Bool)

(declare-fun nullableFct!3218 (Regex!19000) Bool)

(assert (=> d!2275261 (= (nullable!8104 (h!77820 (exprs!8440 ct1!256))) (nullableFct!3218 (h!77820 (exprs!8440 ct1!256))))))

(declare-fun bs!1916776 () Bool)

(assert (= bs!1916776 d!2275261))

(declare-fun m!7992730 () Bool)

(assert (=> bs!1916776 m!7992730))

(assert (=> b!7326682 d!2275261))

(declare-fun b!7326734 () Bool)

(declare-fun e!4387084 () (Set Context!15880))

(declare-fun e!4387087 () (Set Context!15880))

(assert (=> b!7326734 (= e!4387084 e!4387087)))

(declare-fun c!1360035 () Bool)

(assert (=> b!7326734 (= c!1360035 (is-Concat!27845 (h!77820 (exprs!8440 ct1!256))))))

(declare-fun d!2275263 () Bool)

(declare-fun c!1360034 () Bool)

(assert (=> d!2275263 (= c!1360034 (and (is-ElementMatch!19000 (h!77820 (exprs!8440 ct1!256))) (= (c!1360021 (h!77820 (exprs!8440 ct1!256))) c!10305)))))

(declare-fun e!4387083 () (Set Context!15880))

(assert (=> d!2275263 (= (derivationStepZipperDown!2831 (h!77820 (exprs!8440 ct1!256)) (Context!15881 (tail!14689 (exprs!8440 ct1!256))) c!10305) e!4387083)))

(declare-fun b!7326735 () Bool)

(declare-fun e!4387085 () (Set Context!15880))

(declare-fun call!666877 () (Set Context!15880))

(declare-fun call!666878 () (Set Context!15880))

(assert (=> b!7326735 (= e!4387085 (set.union call!666877 call!666878))))

(declare-fun b!7326736 () Bool)

(declare-fun e!4387082 () (Set Context!15880))

(declare-fun call!666880 () (Set Context!15880))

(assert (=> b!7326736 (= e!4387082 call!666880)))

(declare-fun b!7326737 () Bool)

(assert (=> b!7326737 (= e!4387083 e!4387085)))

(declare-fun c!1360036 () Bool)

(assert (=> b!7326737 (= c!1360036 (is-Union!19000 (h!77820 (exprs!8440 ct1!256))))))

(declare-fun b!7326738 () Bool)

(declare-fun c!1360037 () Bool)

(declare-fun e!4387086 () Bool)

(assert (=> b!7326738 (= c!1360037 e!4387086)))

(declare-fun res!2961337 () Bool)

(assert (=> b!7326738 (=> (not res!2961337) (not e!4387086))))

(assert (=> b!7326738 (= res!2961337 (is-Concat!27845 (h!77820 (exprs!8440 ct1!256))))))

(assert (=> b!7326738 (= e!4387085 e!4387084)))

(declare-fun call!666881 () List!71496)

(declare-fun bm!666871 () Bool)

(declare-fun $colon$colon!3034 (List!71496 Regex!19000) List!71496)

(assert (=> bm!666871 (= call!666881 ($colon$colon!3034 (exprs!8440 (Context!15881 (tail!14689 (exprs!8440 ct1!256)))) (ite (or c!1360037 c!1360035) (regTwo!38512 (h!77820 (exprs!8440 ct1!256))) (h!77820 (exprs!8440 ct1!256)))))))

(declare-fun bm!666872 () Bool)

(assert (=> bm!666872 (= call!666877 (derivationStepZipperDown!2831 (ite c!1360036 (regOne!38513 (h!77820 (exprs!8440 ct1!256))) (regOne!38512 (h!77820 (exprs!8440 ct1!256)))) (ite c!1360036 (Context!15881 (tail!14689 (exprs!8440 ct1!256))) (Context!15881 call!666881)) c!10305))))

(declare-fun bm!666873 () Bool)

(declare-fun call!666879 () (Set Context!15880))

(assert (=> bm!666873 (= call!666879 call!666878)))

(declare-fun b!7326739 () Bool)

(assert (=> b!7326739 (= e!4387084 (set.union call!666877 call!666879))))

(declare-fun bm!666874 () Bool)

(assert (=> bm!666874 (= call!666880 call!666879)))

(declare-fun b!7326740 () Bool)

(assert (=> b!7326740 (= e!4387083 (set.insert (Context!15881 (tail!14689 (exprs!8440 ct1!256))) (as set.empty (Set Context!15880))))))

(declare-fun b!7326741 () Bool)

(declare-fun c!1360033 () Bool)

(assert (=> b!7326741 (= c!1360033 (is-Star!19000 (h!77820 (exprs!8440 ct1!256))))))

(assert (=> b!7326741 (= e!4387087 e!4387082)))

(declare-fun b!7326742 () Bool)

(assert (=> b!7326742 (= e!4387086 (nullable!8104 (regOne!38512 (h!77820 (exprs!8440 ct1!256)))))))

(declare-fun call!666876 () List!71496)

(declare-fun bm!666875 () Bool)

(assert (=> bm!666875 (= call!666878 (derivationStepZipperDown!2831 (ite c!1360036 (regTwo!38513 (h!77820 (exprs!8440 ct1!256))) (ite c!1360037 (regTwo!38512 (h!77820 (exprs!8440 ct1!256))) (ite c!1360035 (regOne!38512 (h!77820 (exprs!8440 ct1!256))) (reg!19329 (h!77820 (exprs!8440 ct1!256)))))) (ite (or c!1360036 c!1360037) (Context!15881 (tail!14689 (exprs!8440 ct1!256))) (Context!15881 call!666876)) c!10305))))

(declare-fun b!7326743 () Bool)

(assert (=> b!7326743 (= e!4387087 call!666880)))

(declare-fun b!7326744 () Bool)

(assert (=> b!7326744 (= e!4387082 (as set.empty (Set Context!15880)))))

(declare-fun bm!666876 () Bool)

(assert (=> bm!666876 (= call!666876 call!666881)))

(assert (= (and d!2275263 c!1360034) b!7326740))

(assert (= (and d!2275263 (not c!1360034)) b!7326737))

(assert (= (and b!7326737 c!1360036) b!7326735))

(assert (= (and b!7326737 (not c!1360036)) b!7326738))

(assert (= (and b!7326738 res!2961337) b!7326742))

(assert (= (and b!7326738 c!1360037) b!7326739))

(assert (= (and b!7326738 (not c!1360037)) b!7326734))

(assert (= (and b!7326734 c!1360035) b!7326743))

(assert (= (and b!7326734 (not c!1360035)) b!7326741))

(assert (= (and b!7326741 c!1360033) b!7326736))

(assert (= (and b!7326741 (not c!1360033)) b!7326744))

(assert (= (or b!7326743 b!7326736) bm!666876))

(assert (= (or b!7326743 b!7326736) bm!666874))

(assert (= (or b!7326739 bm!666874) bm!666873))

(assert (= (or b!7326739 bm!666876) bm!666871))

(assert (= (or b!7326735 bm!666873) bm!666875))

(assert (= (or b!7326735 b!7326739) bm!666872))

(declare-fun m!7992732 () Bool)

(assert (=> bm!666875 m!7992732))

(declare-fun m!7992734 () Bool)

(assert (=> b!7326742 m!7992734))

(declare-fun m!7992736 () Bool)

(assert (=> bm!666872 m!7992736))

(declare-fun m!7992738 () Bool)

(assert (=> bm!666871 m!7992738))

(declare-fun m!7992740 () Bool)

(assert (=> b!7326740 m!7992740))

(assert (=> b!7326682 d!2275263))

(declare-fun d!2275267 () Bool)

(assert (=> d!2275267 (= (tail!14689 (exprs!8440 ct1!256)) (t!385881 (exprs!8440 ct1!256)))))

(assert (=> b!7326682 d!2275267))

(declare-fun b!7326763 () Bool)

(declare-fun e!4387098 () (Set Context!15880))

(assert (=> b!7326763 (= e!4387098 (as set.empty (Set Context!15880)))))

(declare-fun d!2275269 () Bool)

(declare-fun c!1360045 () Bool)

(declare-fun e!4387099 () Bool)

(assert (=> d!2275269 (= c!1360045 e!4387099)))

(declare-fun res!2961344 () Bool)

(assert (=> d!2275269 (=> (not res!2961344) (not e!4387099))))

(assert (=> d!2275269 (= res!2961344 (is-Cons!71372 (exprs!8440 ct1!256)))))

(declare-fun e!4387100 () (Set Context!15880))

(assert (=> d!2275269 (= (derivationStepZipperUp!2680 ct1!256 c!10305) e!4387100)))

(declare-fun b!7326764 () Bool)

(assert (=> b!7326764 (= e!4387100 e!4387098)))

(declare-fun c!1360044 () Bool)

(assert (=> b!7326764 (= c!1360044 (is-Cons!71372 (exprs!8440 ct1!256)))))

(declare-fun b!7326765 () Bool)

(declare-fun call!666884 () (Set Context!15880))

(assert (=> b!7326765 (= e!4387098 call!666884)))

(declare-fun b!7326766 () Bool)

(assert (=> b!7326766 (= e!4387099 (nullable!8104 (h!77820 (exprs!8440 ct1!256))))))

(declare-fun b!7326767 () Bool)

(assert (=> b!7326767 (= e!4387100 (set.union call!666884 (derivationStepZipperUp!2680 (Context!15881 (t!385881 (exprs!8440 ct1!256))) c!10305)))))

(declare-fun bm!666879 () Bool)

(assert (=> bm!666879 (= call!666884 (derivationStepZipperDown!2831 (h!77820 (exprs!8440 ct1!256)) (Context!15881 (t!385881 (exprs!8440 ct1!256))) c!10305))))

(assert (= (and d!2275269 res!2961344) b!7326766))

(assert (= (and d!2275269 c!1360045) b!7326767))

(assert (= (and d!2275269 (not c!1360045)) b!7326764))

(assert (= (and b!7326764 c!1360044) b!7326765))

(assert (= (and b!7326764 (not c!1360044)) b!7326763))

(assert (= (or b!7326767 b!7326765) bm!666879))

(assert (=> b!7326766 m!7992688))

(declare-fun m!7992742 () Bool)

(assert (=> b!7326767 m!7992742))

(declare-fun m!7992744 () Bool)

(assert (=> bm!666879 m!7992744))

(assert (=> start!715194 d!2275269))

(declare-fun bs!1916777 () Bool)

(declare-fun d!2275271 () Bool)

(assert (= bs!1916777 (and d!2275271 b!7326679)))

(declare-fun lambda!454167 () Int)

(assert (=> bs!1916777 (= lambda!454167 lambda!454161)))

(declare-fun forall!17852 (List!71496 Int) Bool)

(assert (=> d!2275271 (= (inv!90841 cWitness!35) (forall!17852 (exprs!8440 cWitness!35) lambda!454167))))

(declare-fun bs!1916778 () Bool)

(assert (= bs!1916778 d!2275271))

(declare-fun m!7992746 () Bool)

(assert (=> bs!1916778 m!7992746))

(assert (=> start!715194 d!2275271))

(declare-fun bs!1916779 () Bool)

(declare-fun d!2275273 () Bool)

(assert (= bs!1916779 (and d!2275273 b!7326679)))

(declare-fun lambda!454168 () Int)

(assert (=> bs!1916779 (= lambda!454168 lambda!454161)))

(declare-fun bs!1916780 () Bool)

(assert (= bs!1916780 (and d!2275273 d!2275271)))

(assert (=> bs!1916780 (= lambda!454168 lambda!454167)))

(assert (=> d!2275273 (= (inv!90841 ct1!256) (forall!17852 (exprs!8440 ct1!256) lambda!454168))))

(declare-fun bs!1916781 () Bool)

(assert (= bs!1916781 d!2275273))

(declare-fun m!7992748 () Bool)

(assert (=> bs!1916781 m!7992748))

(assert (=> start!715194 d!2275273))

(declare-fun bs!1916782 () Bool)

(declare-fun d!2275275 () Bool)

(assert (= bs!1916782 (and d!2275275 b!7326679)))

(declare-fun lambda!454169 () Int)

(assert (=> bs!1916782 (= lambda!454169 lambda!454161)))

(declare-fun bs!1916783 () Bool)

(assert (= bs!1916783 (and d!2275275 d!2275271)))

(assert (=> bs!1916783 (= lambda!454169 lambda!454167)))

(declare-fun bs!1916784 () Bool)

(assert (= bs!1916784 (and d!2275275 d!2275273)))

(assert (=> bs!1916784 (= lambda!454169 lambda!454168)))

(assert (=> d!2275275 (= (inv!90841 ct2!352) (forall!17852 (exprs!8440 ct2!352) lambda!454169))))

(declare-fun bs!1916785 () Bool)

(assert (= bs!1916785 d!2275275))

(declare-fun m!7992750 () Bool)

(assert (=> bs!1916785 m!7992750))

(assert (=> start!715194 d!2275275))

(declare-fun d!2275277 () Bool)

(assert (=> d!2275277 (= (isEmpty!40918 lt!2606408) (is-Nil!71372 lt!2606408))))

(assert (=> b!7326676 d!2275277))

(declare-fun b!7326781 () Bool)

(declare-fun e!4387108 () List!71496)

(assert (=> b!7326781 (= e!4387108 (Cons!71372 (h!77820 (exprs!8440 ct1!256)) (++!16824 (t!385881 (exprs!8440 ct1!256)) (exprs!8440 ct2!352))))))

(declare-fun b!7326780 () Bool)

(assert (=> b!7326780 (= e!4387108 (exprs!8440 ct2!352))))

(declare-fun d!2275279 () Bool)

(declare-fun e!4387107 () Bool)

(assert (=> d!2275279 e!4387107))

(declare-fun res!2961352 () Bool)

(assert (=> d!2275279 (=> (not res!2961352) (not e!4387107))))

(declare-fun lt!2606428 () List!71496)

(declare-fun content!14944 (List!71496) (Set Regex!19000))

(assert (=> d!2275279 (= res!2961352 (= (content!14944 lt!2606428) (set.union (content!14944 (exprs!8440 ct1!256)) (content!14944 (exprs!8440 ct2!352)))))))

(assert (=> d!2275279 (= lt!2606428 e!4387108)))

(declare-fun c!1360049 () Bool)

(assert (=> d!2275279 (= c!1360049 (is-Nil!71372 (exprs!8440 ct1!256)))))

(assert (=> d!2275279 (= (++!16824 (exprs!8440 ct1!256) (exprs!8440 ct2!352)) lt!2606428)))

(declare-fun b!7326782 () Bool)

(declare-fun res!2961351 () Bool)

(assert (=> b!7326782 (=> (not res!2961351) (not e!4387107))))

(declare-fun size!41921 (List!71496) Int)

(assert (=> b!7326782 (= res!2961351 (= (size!41921 lt!2606428) (+ (size!41921 (exprs!8440 ct1!256)) (size!41921 (exprs!8440 ct2!352)))))))

(declare-fun b!7326783 () Bool)

(assert (=> b!7326783 (= e!4387107 (or (not (= (exprs!8440 ct2!352) Nil!71372)) (= lt!2606428 (exprs!8440 ct1!256))))))

(assert (= (and d!2275279 c!1360049) b!7326780))

(assert (= (and d!2275279 (not c!1360049)) b!7326781))

(assert (= (and d!2275279 res!2961352) b!7326782))

(assert (= (and b!7326782 res!2961351) b!7326783))

(declare-fun m!7992766 () Bool)

(assert (=> b!7326781 m!7992766))

(declare-fun m!7992768 () Bool)

(assert (=> d!2275279 m!7992768))

(declare-fun m!7992770 () Bool)

(assert (=> d!2275279 m!7992770))

(declare-fun m!7992772 () Bool)

(assert (=> d!2275279 m!7992772))

(declare-fun m!7992774 () Bool)

(assert (=> b!7326782 m!7992774))

(declare-fun m!7992776 () Bool)

(assert (=> b!7326782 m!7992776))

(declare-fun m!7992778 () Bool)

(assert (=> b!7326782 m!7992778))

(assert (=> b!7326679 d!2275279))

(declare-fun d!2275283 () Bool)

(assert (=> d!2275283 (forall!17852 (++!16824 (exprs!8440 ct1!256) (exprs!8440 ct2!352)) lambda!454161)))

(declare-fun lt!2606434 () Unit!164965)

(declare-fun choose!56981 (List!71496 List!71496 Int) Unit!164965)

(assert (=> d!2275283 (= lt!2606434 (choose!56981 (exprs!8440 ct1!256) (exprs!8440 ct2!352) lambda!454161))))

(assert (=> d!2275283 (forall!17852 (exprs!8440 ct1!256) lambda!454161)))

(assert (=> d!2275283 (= (lemmaConcatPreservesForall!1681 (exprs!8440 ct1!256) (exprs!8440 ct2!352) lambda!454161) lt!2606434)))

(declare-fun bs!1916787 () Bool)

(assert (= bs!1916787 d!2275283))

(assert (=> bs!1916787 m!7992698))

(assert (=> bs!1916787 m!7992698))

(declare-fun m!7992786 () Bool)

(assert (=> bs!1916787 m!7992786))

(declare-fun m!7992788 () Bool)

(assert (=> bs!1916787 m!7992788))

(declare-fun m!7992790 () Bool)

(assert (=> bs!1916787 m!7992790))

(assert (=> b!7326679 d!2275283))

(declare-fun d!2275287 () Bool)

(assert (=> d!2275287 (= (isEmpty!40918 (exprs!8440 ct1!256)) (is-Nil!71372 (exprs!8440 ct1!256)))))

(assert (=> b!7326678 d!2275287))

(declare-fun b!7326788 () Bool)

(declare-fun e!4387111 () Bool)

(declare-fun tp!2080614 () Bool)

(declare-fun tp!2080615 () Bool)

(assert (=> b!7326788 (= e!4387111 (and tp!2080614 tp!2080615))))

(assert (=> b!7326677 (= tp!2080598 e!4387111)))

(assert (= (and b!7326677 (is-Cons!71372 (exprs!8440 ct1!256))) b!7326788))

(declare-fun b!7326789 () Bool)

(declare-fun e!4387112 () Bool)

(declare-fun tp!2080616 () Bool)

(declare-fun tp!2080617 () Bool)

(assert (=> b!7326789 (= e!4387112 (and tp!2080616 tp!2080617))))

(assert (=> b!7326683 (= tp!2080599 e!4387112)))

(assert (= (and b!7326683 (is-Cons!71372 (exprs!8440 cWitness!35))) b!7326789))

(declare-fun b!7326790 () Bool)

(declare-fun e!4387113 () Bool)

(declare-fun tp!2080618 () Bool)

(declare-fun tp!2080619 () Bool)

(assert (=> b!7326790 (= e!4387113 (and tp!2080618 tp!2080619))))

(assert (=> b!7326684 (= tp!2080600 e!4387113)))

(assert (= (and b!7326684 (is-Cons!71372 (exprs!8440 ct2!352))) b!7326790))

(push 1)

(assert (not d!2275279))

(assert (not b!7326790))

(assert (not bm!666872))

(assert (not b!7326742))

(assert (not b!7326781))

(assert tp_is_empty!48245)

(assert (not b!7326788))

(assert (not d!2275261))

(assert (not b!7326767))

(assert (not bm!666875))

(assert (not bm!666879))

(assert (not d!2275275))

(assert (not d!2275283))

(assert (not b!7326789))

(assert (not bm!666871))

(assert (not d!2275271))

(assert (not b!7326766))

(assert (not b!7326782))

(assert (not d!2275273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

