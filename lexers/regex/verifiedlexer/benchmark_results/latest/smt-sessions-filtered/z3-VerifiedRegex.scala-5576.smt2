; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279734 () Bool)

(assert start!279734)

(declare-fun res!1190087 () Bool)

(declare-fun e!1814800 () Bool)

(assert (=> start!279734 (=> (not res!1190087) (not e!1814800))))

(declare-datatypes ((C!17596 0))(
  ( (C!17597 (val!10832 Int)) )
))
(declare-datatypes ((Regex!8707 0))(
  ( (ElementMatch!8707 (c!462974 C!17596)) (Concat!14028 (regOne!17926 Regex!8707) (regTwo!17926 Regex!8707)) (EmptyExpr!8707) (Star!8707 (reg!9036 Regex!8707)) (EmptyLang!8707) (Union!8707 (regOne!17927 Regex!8707) (regTwo!17927 Regex!8707)) )
))
(declare-datatypes ((List!34441 0))(
  ( (Nil!34317) (Cons!34317 (h!39737 Regex!8707) (t!233484 List!34441)) )
))
(declare-datatypes ((Context!5334 0))(
  ( (Context!5335 (exprs!3167 List!34441)) )
))
(declare-fun c!7184 () Context!5334)

(declare-fun lostCause!799 (Context!5334) Bool)

(assert (=> start!279734 (= res!1190087 (not (lostCause!799 c!7184)))))

(assert (=> start!279734 e!1814800))

(declare-fun e!1814801 () Bool)

(declare-fun inv!46354 (Context!5334) Bool)

(assert (=> start!279734 (and (inv!46354 c!7184) e!1814801)))

(declare-fun b!2866744 () Bool)

(declare-datatypes ((List!34442 0))(
  ( (Nil!34318) (Cons!34318 (h!39738 C!17596) (t!233485 List!34442)) )
))
(declare-datatypes ((Option!6386 0))(
  ( (None!6385) (Some!6385 (v!34507 List!34442)) )
))
(declare-fun isDefined!4994 (Option!6386) Bool)

(declare-fun getLanguageWitness!378 (Context!5334) Option!6386)

(assert (=> b!2866744 (= e!1814800 (not (isDefined!4994 (getLanguageWitness!378 c!7184))))))

(declare-fun b!2866743 () Bool)

(declare-fun res!1190088 () Bool)

(assert (=> b!2866743 (=> (not res!1190088) (not e!1814800))))

(get-info :version)

(declare-fun getLanguageWitness!379 (Regex!8707) Option!6386)

(assert (=> b!2866743 (= res!1190088 (not ((_ is Some!6385) (getLanguageWitness!379 (h!39737 (exprs!3167 c!7184))))))))

(declare-fun b!2866742 () Bool)

(declare-fun res!1190089 () Bool)

(assert (=> b!2866742 (=> (not res!1190089) (not e!1814800))))

(assert (=> b!2866742 (= res!1190089 ((_ is Cons!34317) (exprs!3167 c!7184)))))

(declare-fun b!2866745 () Bool)

(declare-fun tp!922968 () Bool)

(assert (=> b!2866745 (= e!1814801 tp!922968)))

(assert (= (and start!279734 res!1190087) b!2866742))

(assert (= (and b!2866742 res!1190089) b!2866743))

(assert (= (and b!2866743 res!1190088) b!2866744))

(assert (= start!279734 b!2866745))

(declare-fun m!3286973 () Bool)

(assert (=> start!279734 m!3286973))

(declare-fun m!3286975 () Bool)

(assert (=> start!279734 m!3286975))

(declare-fun m!3286977 () Bool)

(assert (=> b!2866744 m!3286977))

(assert (=> b!2866744 m!3286977))

(declare-fun m!3286979 () Bool)

(assert (=> b!2866744 m!3286979))

(declare-fun m!3286981 () Bool)

(assert (=> b!2866743 m!3286981))

(check-sat (not b!2866744) (not b!2866743) (not start!279734) (not b!2866745))
(check-sat)
(get-model)

(declare-fun d!828815 () Bool)

(declare-fun isEmpty!18683 (Option!6386) Bool)

(assert (=> d!828815 (= (isDefined!4994 (getLanguageWitness!378 c!7184)) (not (isEmpty!18683 (getLanguageWitness!378 c!7184))))))

(declare-fun bs!521630 () Bool)

(assert (= bs!521630 d!828815))

(assert (=> bs!521630 m!3286977))

(declare-fun m!3286983 () Bool)

(assert (=> bs!521630 m!3286983))

(assert (=> b!2866744 d!828815))

(declare-fun b!2866770 () Bool)

(declare-fun e!1814814 () Option!6386)

(assert (=> b!2866770 (= e!1814814 None!6385)))

(declare-fun d!828819 () Bool)

(declare-fun lt!1017036 () Option!6386)

(declare-fun lambda!106821 () Int)

(declare-fun exists!1133 (List!34441 Int) Bool)

(assert (=> d!828819 (= (isEmpty!18683 lt!1017036) (exists!1133 (exprs!3167 c!7184) lambda!106821))))

(declare-fun e!1814816 () Option!6386)

(assert (=> d!828819 (= lt!1017036 e!1814816)))

(declare-fun c!462991 () Bool)

(assert (=> d!828819 (= c!462991 ((_ is Cons!34317) (exprs!3167 c!7184)))))

(assert (=> d!828819 (= (getLanguageWitness!378 c!7184) lt!1017036)))

(declare-fun b!2866771 () Bool)

(declare-fun e!1814815 () Option!6386)

(declare-fun lt!1017035 () Option!6386)

(declare-fun lt!1017037 () Option!6386)

(declare-fun ++!8153 (List!34442 List!34442) List!34442)

(assert (=> b!2866771 (= e!1814815 (Some!6385 (++!8153 (v!34507 lt!1017035) (v!34507 lt!1017037))))))

(declare-fun b!2866772 () Bool)

(declare-fun c!462989 () Bool)

(assert (=> b!2866772 (= c!462989 ((_ is Some!6385) lt!1017037))))

(assert (=> b!2866772 (= lt!1017037 (getLanguageWitness!378 (Context!5335 (t!233484 (exprs!3167 c!7184)))))))

(assert (=> b!2866772 (= e!1814814 e!1814815)))

(declare-fun b!2866773 () Bool)

(assert (=> b!2866773 (= e!1814816 (Some!6385 Nil!34318))))

(declare-fun b!2866774 () Bool)

(assert (=> b!2866774 (= e!1814815 None!6385)))

(declare-fun b!2866775 () Bool)

(assert (=> b!2866775 (= e!1814816 e!1814814)))

(assert (=> b!2866775 (= lt!1017035 (getLanguageWitness!379 (h!39737 (exprs!3167 c!7184))))))

(declare-fun c!462990 () Bool)

(assert (=> b!2866775 (= c!462990 ((_ is Some!6385) lt!1017035))))

(assert (= (and d!828819 c!462991) b!2866775))

(assert (= (and d!828819 (not c!462991)) b!2866773))

(assert (= (and b!2866775 c!462990) b!2866772))

(assert (= (and b!2866775 (not c!462990)) b!2866770))

(assert (= (and b!2866772 c!462989) b!2866771))

(assert (= (and b!2866772 (not c!462989)) b!2866774))

(declare-fun m!3286987 () Bool)

(assert (=> d!828819 m!3286987))

(declare-fun m!3286989 () Bool)

(assert (=> d!828819 m!3286989))

(declare-fun m!3286991 () Bool)

(assert (=> b!2866771 m!3286991))

(declare-fun m!3286993 () Bool)

(assert (=> b!2866772 m!3286993))

(assert (=> b!2866775 m!3286981))

(assert (=> b!2866744 d!828819))

(declare-fun bm!184952 () Bool)

(declare-fun call!184958 () Option!6386)

(declare-fun c!463011 () Bool)

(assert (=> bm!184952 (= call!184958 (getLanguageWitness!379 (ite c!463011 (regOne!17927 (h!39737 (exprs!3167 c!7184))) (regOne!17926 (h!39737 (exprs!3167 c!7184))))))))

(declare-fun b!2866808 () Bool)

(declare-fun e!1814834 () Option!6386)

(declare-fun e!1814837 () Option!6386)

(assert (=> b!2866808 (= e!1814834 e!1814837)))

(declare-fun lt!1017046 () Option!6386)

(assert (=> b!2866808 (= lt!1017046 call!184958)))

(declare-fun c!463010 () Bool)

(assert (=> b!2866808 (= c!463010 ((_ is Some!6385) lt!1017046))))

(declare-fun b!2866809 () Bool)

(assert (=> b!2866809 (= e!1814837 None!6385)))

(declare-fun b!2866810 () Bool)

(declare-fun e!1814840 () Option!6386)

(assert (=> b!2866810 (= e!1814840 None!6385)))

(declare-fun b!2866811 () Bool)

(declare-fun e!1814836 () Option!6386)

(declare-fun lt!1017045 () Option!6386)

(assert (=> b!2866811 (= e!1814836 (Some!6385 (++!8153 (v!34507 lt!1017046) (v!34507 lt!1017045))))))

(declare-fun b!2866812 () Bool)

(declare-fun c!463012 () Bool)

(assert (=> b!2866812 (= c!463012 ((_ is ElementMatch!8707) (h!39737 (exprs!3167 c!7184))))))

(declare-fun e!1814839 () Option!6386)

(assert (=> b!2866812 (= e!1814840 e!1814839)))

(declare-fun b!2866813 () Bool)

(assert (=> b!2866813 (= e!1814836 None!6385)))

(declare-fun b!2866814 () Bool)

(assert (=> b!2866814 (= e!1814839 (Some!6385 (Cons!34318 (c!462974 (h!39737 (exprs!3167 c!7184))) Nil!34318)))))

(declare-fun d!828823 () Bool)

(declare-fun c!463013 () Bool)

(assert (=> d!828823 (= c!463013 ((_ is EmptyExpr!8707) (h!39737 (exprs!3167 c!7184))))))

(declare-fun e!1814835 () Option!6386)

(assert (=> d!828823 (= (getLanguageWitness!379 (h!39737 (exprs!3167 c!7184))) e!1814835)))

(declare-fun b!2866815 () Bool)

(assert (=> b!2866815 (= e!1814835 (Some!6385 Nil!34318))))

(declare-fun b!2866816 () Bool)

(declare-fun e!1814833 () Option!6386)

(assert (=> b!2866816 (= e!1814834 e!1814833)))

(declare-fun lt!1017044 () Option!6386)

(assert (=> b!2866816 (= lt!1017044 call!184958)))

(declare-fun c!463009 () Bool)

(assert (=> b!2866816 (= c!463009 ((_ is Some!6385) lt!1017044))))

(declare-fun b!2866817 () Bool)

(declare-fun c!463008 () Bool)

(assert (=> b!2866817 (= c!463008 ((_ is Some!6385) lt!1017045))))

(declare-fun call!184957 () Option!6386)

(assert (=> b!2866817 (= lt!1017045 call!184957)))

(assert (=> b!2866817 (= e!1814837 e!1814836)))

(declare-fun b!2866818 () Bool)

(assert (=> b!2866818 (= e!1814835 e!1814840)))

(declare-fun c!463014 () Bool)

(assert (=> b!2866818 (= c!463014 ((_ is EmptyLang!8707) (h!39737 (exprs!3167 c!7184))))))

(declare-fun b!2866819 () Bool)

(assert (=> b!2866819 (= c!463011 ((_ is Union!8707) (h!39737 (exprs!3167 c!7184))))))

(declare-fun e!1814838 () Option!6386)

(assert (=> b!2866819 (= e!1814838 e!1814834)))

(declare-fun b!2866820 () Bool)

(assert (=> b!2866820 (= e!1814838 (Some!6385 Nil!34318))))

(declare-fun b!2866821 () Bool)

(assert (=> b!2866821 (= e!1814833 lt!1017044)))

(declare-fun b!2866822 () Bool)

(assert (=> b!2866822 (= e!1814839 e!1814838)))

(declare-fun c!463015 () Bool)

(assert (=> b!2866822 (= c!463015 ((_ is Star!8707) (h!39737 (exprs!3167 c!7184))))))

(declare-fun bm!184953 () Bool)

(assert (=> bm!184953 (= call!184957 (getLanguageWitness!379 (ite c!463011 (regTwo!17927 (h!39737 (exprs!3167 c!7184))) (regTwo!17926 (h!39737 (exprs!3167 c!7184))))))))

(declare-fun b!2866823 () Bool)

(assert (=> b!2866823 (= e!1814833 call!184957)))

(assert (= (and d!828823 c!463013) b!2866815))

(assert (= (and d!828823 (not c!463013)) b!2866818))

(assert (= (and b!2866818 c!463014) b!2866810))

(assert (= (and b!2866818 (not c!463014)) b!2866812))

(assert (= (and b!2866812 c!463012) b!2866814))

(assert (= (and b!2866812 (not c!463012)) b!2866822))

(assert (= (and b!2866822 c!463015) b!2866820))

(assert (= (and b!2866822 (not c!463015)) b!2866819))

(assert (= (and b!2866819 c!463011) b!2866816))

(assert (= (and b!2866819 (not c!463011)) b!2866808))

(assert (= (and b!2866816 c!463009) b!2866821))

(assert (= (and b!2866816 (not c!463009)) b!2866823))

(assert (= (and b!2866808 c!463010) b!2866817))

(assert (= (and b!2866808 (not c!463010)) b!2866809))

(assert (= (and b!2866817 c!463008) b!2866811))

(assert (= (and b!2866817 (not c!463008)) b!2866813))

(assert (= (or b!2866823 b!2866817) bm!184953))

(assert (= (or b!2866816 b!2866808) bm!184952))

(declare-fun m!3286995 () Bool)

(assert (=> bm!184952 m!3286995))

(declare-fun m!3286997 () Bool)

(assert (=> b!2866811 m!3286997))

(declare-fun m!3286999 () Bool)

(assert (=> bm!184953 m!3286999))

(assert (=> b!2866743 d!828823))

(declare-fun bs!521632 () Bool)

(declare-fun d!828825 () Bool)

(assert (= bs!521632 (and d!828825 d!828819)))

(declare-fun lambda!106824 () Int)

(assert (=> bs!521632 (= lambda!106824 lambda!106821)))

(assert (=> d!828825 (= (lostCause!799 c!7184) (exists!1133 (exprs!3167 c!7184) lambda!106824))))

(declare-fun bs!521633 () Bool)

(assert (= bs!521633 d!828825))

(declare-fun m!3287001 () Bool)

(assert (=> bs!521633 m!3287001))

(assert (=> start!279734 d!828825))

(declare-fun bs!521634 () Bool)

(declare-fun d!828827 () Bool)

(assert (= bs!521634 (and d!828827 d!828819)))

(declare-fun lambda!106827 () Int)

(assert (=> bs!521634 (not (= lambda!106827 lambda!106821))))

(declare-fun bs!521635 () Bool)

(assert (= bs!521635 (and d!828827 d!828825)))

(assert (=> bs!521635 (not (= lambda!106827 lambda!106824))))

(declare-fun forall!7060 (List!34441 Int) Bool)

(assert (=> d!828827 (= (inv!46354 c!7184) (forall!7060 (exprs!3167 c!7184) lambda!106827))))

(declare-fun bs!521636 () Bool)

(assert (= bs!521636 d!828827))

(declare-fun m!3287003 () Bool)

(assert (=> bs!521636 m!3287003))

(assert (=> start!279734 d!828827))

(declare-fun b!2866828 () Bool)

(declare-fun e!1814843 () Bool)

(declare-fun tp!922973 () Bool)

(declare-fun tp!922974 () Bool)

(assert (=> b!2866828 (= e!1814843 (and tp!922973 tp!922974))))

(assert (=> b!2866745 (= tp!922968 e!1814843)))

(assert (= (and b!2866745 ((_ is Cons!34317) (exprs!3167 c!7184))) b!2866828))

(check-sat (not b!2866828) (not bm!184953) (not b!2866772) (not b!2866771) (not d!828827) (not b!2866775) (not d!828825) (not d!828815) (not d!828819) (not b!2866811) (not bm!184952))
(check-sat)
