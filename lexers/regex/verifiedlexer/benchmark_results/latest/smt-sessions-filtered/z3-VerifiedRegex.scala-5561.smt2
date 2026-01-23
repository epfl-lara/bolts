; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279270 () Bool)

(assert start!279270)

(declare-fun bs!521032 () Bool)

(declare-fun b!2864945 () Bool)

(declare-fun b!2864943 () Bool)

(assert (= bs!521032 (and b!2864945 b!2864943)))

(declare-fun lambda!106195 () Int)

(declare-fun lambda!106194 () Int)

(assert (=> bs!521032 (not (= lambda!106195 lambda!106194))))

(declare-fun res!1189439 () Bool)

(declare-fun e!1813676 () Bool)

(assert (=> b!2864943 (=> (not res!1189439) (not e!1813676))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17536 0))(
  ( (C!17537 (val!10802 Int)) )
))
(declare-datatypes ((Regex!8677 0))(
  ( (ElementMatch!8677 (c!462192 C!17536)) (Concat!13998 (regOne!17866 Regex!8677) (regTwo!17866 Regex!8677)) (EmptyExpr!8677) (Star!8677 (reg!9006 Regex!8677)) (EmptyLang!8677) (Union!8677 (regOne!17867 Regex!8677) (regTwo!17867 Regex!8677)) )
))
(declare-datatypes ((List!34362 0))(
  ( (Nil!34238) (Cons!34238 (h!39658 Regex!8677) (t!233405 List!34362)) )
))
(declare-datatypes ((Context!5274 0))(
  ( (Context!5275 (exprs!3137 List!34362)) )
))
(declare-fun z!691 () (InoxSet Context!5274))

(declare-fun forall!7022 ((InoxSet Context!5274) Int) Bool)

(assert (=> b!2864943 (= res!1189439 (not (forall!7022 z!691 lambda!106194)))))

(declare-fun b!2864944 () Bool)

(declare-fun res!1189438 () Bool)

(assert (=> b!2864944 (=> (not res!1189438) (not e!1813676))))

(declare-datatypes ((List!34363 0))(
  ( (Nil!34239) (Cons!34239 (h!39659 C!17536) (t!233406 List!34363)) )
))
(declare-datatypes ((Option!6356 0))(
  ( (None!6355) (Some!6355 (v!34477 List!34363)) )
))
(declare-fun isDefined!4976 (Option!6356) Bool)

(declare-fun getLanguageWitness!313 ((InoxSet Context!5274)) Option!6356)

(assert (=> b!2864944 (= res!1189438 (isDefined!4976 (getLanguageWitness!313 z!691)))))

(declare-fun exists!1096 ((InoxSet Context!5274) Int) Bool)

(assert (=> b!2864945 (= e!1813676 (not (exists!1096 z!691 lambda!106195)))))

(declare-datatypes ((List!34364 0))(
  ( (Nil!34240) (Cons!34240 (h!39660 Context!5274) (t!233407 List!34364)) )
))
(declare-fun lt!1015869 () List!34364)

(declare-fun exists!1097 (List!34364 Int) Bool)

(assert (=> b!2864945 (exists!1097 lt!1015869 lambda!106195)))

(declare-datatypes ((Unit!47877 0))(
  ( (Unit!47878) )
))
(declare-fun lt!1015870 () Unit!47877)

(declare-fun lemmaNotForallThenExists!145 (List!34364 Int) Unit!47877)

(assert (=> b!2864945 (= lt!1015870 (lemmaNotForallThenExists!145 lt!1015869 lambda!106194))))

(declare-fun toList!2006 ((InoxSet Context!5274)) List!34364)

(assert (=> b!2864945 (= lt!1015869 (toList!2006 z!691))))

(declare-fun setIsEmpty!25637 () Bool)

(declare-fun setRes!25637 () Bool)

(assert (=> setIsEmpty!25637 setRes!25637))

(declare-fun res!1189440 () Bool)

(assert (=> start!279270 (=> (not res!1189440) (not e!1813676))))

(declare-fun lostCauseZipper!581 ((InoxSet Context!5274)) Bool)

(assert (=> start!279270 (= res!1189440 (not (lostCauseZipper!581 z!691)))))

(assert (=> start!279270 e!1813676))

(declare-fun condSetEmpty!25637 () Bool)

(assert (=> start!279270 (= condSetEmpty!25637 (= z!691 ((as const (Array Context!5274 Bool)) false)))))

(assert (=> start!279270 setRes!25637))

(declare-fun b!2864946 () Bool)

(declare-fun e!1813677 () Bool)

(declare-fun tp!922661 () Bool)

(assert (=> b!2864946 (= e!1813677 tp!922661)))

(declare-fun tp!922662 () Bool)

(declare-fun setElem!25637 () Context!5274)

(declare-fun setNonEmpty!25637 () Bool)

(declare-fun inv!46279 (Context!5274) Bool)

(assert (=> setNonEmpty!25637 (= setRes!25637 (and tp!922662 (inv!46279 setElem!25637) e!1813677))))

(declare-fun setRest!25637 () (InoxSet Context!5274))

(assert (=> setNonEmpty!25637 (= z!691 ((_ map or) (store ((as const (Array Context!5274 Bool)) false) setElem!25637 true) setRest!25637))))

(assert (= (and start!279270 res!1189440) b!2864944))

(assert (= (and b!2864944 res!1189438) b!2864943))

(assert (= (and b!2864943 res!1189439) b!2864945))

(assert (= (and start!279270 condSetEmpty!25637) setIsEmpty!25637))

(assert (= (and start!279270 (not condSetEmpty!25637)) setNonEmpty!25637))

(assert (= setNonEmpty!25637 b!2864946))

(declare-fun m!3284893 () Bool)

(assert (=> b!2864944 m!3284893))

(assert (=> b!2864944 m!3284893))

(declare-fun m!3284895 () Bool)

(assert (=> b!2864944 m!3284895))

(declare-fun m!3284897 () Bool)

(assert (=> b!2864943 m!3284897))

(declare-fun m!3284899 () Bool)

(assert (=> start!279270 m!3284899))

(declare-fun m!3284901 () Bool)

(assert (=> b!2864945 m!3284901))

(declare-fun m!3284903 () Bool)

(assert (=> b!2864945 m!3284903))

(declare-fun m!3284905 () Bool)

(assert (=> b!2864945 m!3284905))

(declare-fun m!3284907 () Bool)

(assert (=> b!2864945 m!3284907))

(declare-fun m!3284909 () Bool)

(assert (=> setNonEmpty!25637 m!3284909))

(check-sat (not b!2864946) (not b!2864944) (not b!2864945) (not start!279270) (not b!2864943) (not setNonEmpty!25637))
(check-sat)
(get-model)

(declare-fun d!828320 () Bool)

(declare-fun lt!1015889 () Bool)

(assert (=> d!828320 (= lt!1015889 (exists!1097 (toList!2006 z!691) lambda!106195))))

(declare-fun choose!16901 ((InoxSet Context!5274) Int) Bool)

(assert (=> d!828320 (= lt!1015889 (choose!16901 z!691 lambda!106195))))

(assert (=> d!828320 (= (exists!1096 z!691 lambda!106195) lt!1015889)))

(declare-fun bs!521033 () Bool)

(assert (= bs!521033 d!828320))

(assert (=> bs!521033 m!3284907))

(assert (=> bs!521033 m!3284907))

(declare-fun m!3284911 () Bool)

(assert (=> bs!521033 m!3284911))

(declare-fun m!3284913 () Bool)

(assert (=> bs!521033 m!3284913))

(assert (=> b!2864945 d!828320))

(declare-fun bs!521034 () Bool)

(declare-fun d!828322 () Bool)

(assert (= bs!521034 (and d!828322 b!2864943)))

(declare-fun lambda!106210 () Int)

(assert (=> bs!521034 (not (= lambda!106210 lambda!106194))))

(declare-fun bs!521035 () Bool)

(assert (= bs!521035 (and d!828322 b!2864945)))

(assert (=> bs!521035 (not (= lambda!106210 lambda!106195))))

(assert (=> d!828322 true))

(declare-fun order!18085 () Int)

(declare-fun dynLambda!14271 (Int Int) Int)

(assert (=> d!828322 (< (dynLambda!14271 order!18085 lambda!106195) (dynLambda!14271 order!18085 lambda!106210))))

(declare-fun forall!7023 (List!34364 Int) Bool)

(assert (=> d!828322 (= (exists!1097 lt!1015869 lambda!106195) (not (forall!7023 lt!1015869 lambda!106210)))))

(declare-fun bs!521036 () Bool)

(assert (= bs!521036 d!828322))

(declare-fun m!3284915 () Bool)

(assert (=> bs!521036 m!3284915))

(assert (=> b!2864945 d!828322))

(declare-fun bs!521046 () Bool)

(declare-fun d!828324 () Bool)

(assert (= bs!521046 (and d!828324 b!2864943)))

(declare-fun lambda!106216 () Int)

(assert (=> bs!521046 (not (= lambda!106216 lambda!106194))))

(declare-fun bs!521047 () Bool)

(assert (= bs!521047 (and d!828324 b!2864945)))

(assert (=> bs!521047 (not (= lambda!106216 lambda!106195))))

(declare-fun bs!521048 () Bool)

(assert (= bs!521048 (and d!828324 d!828322)))

(assert (=> bs!521048 (= (= lambda!106194 lambda!106195) (= lambda!106216 lambda!106210))))

(assert (=> d!828324 true))

(assert (=> d!828324 (< (dynLambda!14271 order!18085 lambda!106194) (dynLambda!14271 order!18085 lambda!106216))))

(assert (=> d!828324 (exists!1097 lt!1015869 lambda!106216)))

(declare-fun lt!1015900 () Unit!47877)

(declare-fun choose!16902 (List!34364 Int) Unit!47877)

(assert (=> d!828324 (= lt!1015900 (choose!16902 lt!1015869 lambda!106194))))

(assert (=> d!828324 (not (forall!7023 lt!1015869 lambda!106194))))

(assert (=> d!828324 (= (lemmaNotForallThenExists!145 lt!1015869 lambda!106194) lt!1015900)))

(declare-fun bs!521049 () Bool)

(assert (= bs!521049 d!828324))

(declare-fun m!3284927 () Bool)

(assert (=> bs!521049 m!3284927))

(declare-fun m!3284929 () Bool)

(assert (=> bs!521049 m!3284929))

(declare-fun m!3284931 () Bool)

(assert (=> bs!521049 m!3284931))

(assert (=> b!2864945 d!828324))

(declare-fun d!828328 () Bool)

(declare-fun e!1813689 () Bool)

(assert (=> d!828328 e!1813689))

(declare-fun res!1189443 () Bool)

(assert (=> d!828328 (=> (not res!1189443) (not e!1813689))))

(declare-fun lt!1015906 () List!34364)

(declare-fun noDuplicate!570 (List!34364) Bool)

(assert (=> d!828328 (= res!1189443 (noDuplicate!570 lt!1015906))))

(declare-fun choose!16903 ((InoxSet Context!5274)) List!34364)

(assert (=> d!828328 (= lt!1015906 (choose!16903 z!691))))

(assert (=> d!828328 (= (toList!2006 z!691) lt!1015906)))

(declare-fun b!2864957 () Bool)

(declare-fun content!4673 (List!34364) (InoxSet Context!5274))

(assert (=> b!2864957 (= e!1813689 (= (content!4673 lt!1015906) z!691))))

(assert (= (and d!828328 res!1189443) b!2864957))

(declare-fun m!3284937 () Bool)

(assert (=> d!828328 m!3284937))

(declare-fun m!3284939 () Bool)

(assert (=> d!828328 m!3284939))

(declare-fun m!3284941 () Bool)

(assert (=> b!2864957 m!3284941))

(assert (=> b!2864945 d!828328))

(declare-fun bs!521065 () Bool)

(declare-fun d!828332 () Bool)

(assert (= bs!521065 (and d!828332 b!2864943)))

(declare-fun lambda!106235 () Int)

(assert (=> bs!521065 (= lambda!106235 lambda!106194)))

(declare-fun bs!521066 () Bool)

(assert (= bs!521066 (and d!828332 b!2864945)))

(assert (=> bs!521066 (not (= lambda!106235 lambda!106195))))

(declare-fun bs!521067 () Bool)

(assert (= bs!521067 (and d!828332 d!828322)))

(assert (=> bs!521067 (not (= lambda!106235 lambda!106210))))

(declare-fun bs!521068 () Bool)

(assert (= bs!521068 (and d!828332 d!828324)))

(assert (=> bs!521068 (not (= lambda!106235 lambda!106216))))

(declare-fun bs!521069 () Bool)

(declare-fun b!2864964 () Bool)

(assert (= bs!521069 (and b!2864964 b!2864943)))

(declare-fun lambda!106236 () Int)

(assert (=> bs!521069 (not (= lambda!106236 lambda!106194))))

(declare-fun bs!521070 () Bool)

(assert (= bs!521070 (and b!2864964 b!2864945)))

(assert (=> bs!521070 (= lambda!106236 lambda!106195)))

(declare-fun bs!521071 () Bool)

(assert (= bs!521071 (and b!2864964 d!828324)))

(assert (=> bs!521071 (not (= lambda!106236 lambda!106216))))

(declare-fun bs!521072 () Bool)

(assert (= bs!521072 (and b!2864964 d!828322)))

(assert (=> bs!521072 (not (= lambda!106236 lambda!106210))))

(declare-fun bs!521073 () Bool)

(assert (= bs!521073 (and b!2864964 d!828332)))

(assert (=> bs!521073 (not (= lambda!106236 lambda!106235))))

(declare-fun bs!521074 () Bool)

(declare-fun b!2864965 () Bool)

(assert (= bs!521074 (and b!2864965 b!2864943)))

(declare-fun lambda!106237 () Int)

(assert (=> bs!521074 (not (= lambda!106237 lambda!106194))))

(declare-fun bs!521075 () Bool)

(assert (= bs!521075 (and b!2864965 b!2864964)))

(assert (=> bs!521075 (= lambda!106237 lambda!106236)))

(declare-fun bs!521076 () Bool)

(assert (= bs!521076 (and b!2864965 b!2864945)))

(assert (=> bs!521076 (= lambda!106237 lambda!106195)))

(declare-fun bs!521077 () Bool)

(assert (= bs!521077 (and b!2864965 d!828324)))

(assert (=> bs!521077 (not (= lambda!106237 lambda!106216))))

(declare-fun bs!521078 () Bool)

(assert (= bs!521078 (and b!2864965 d!828322)))

(assert (=> bs!521078 (not (= lambda!106237 lambda!106210))))

(declare-fun bs!521079 () Bool)

(assert (= bs!521079 (and b!2864965 d!828332)))

(assert (=> bs!521079 (not (= lambda!106237 lambda!106235))))

(declare-fun call!184823 () Bool)

(declare-fun lt!1015936 () List!34364)

(declare-fun bm!184819 () Bool)

(declare-fun lt!1015930 () List!34364)

(declare-fun c!462214 () Bool)

(assert (=> bm!184819 (= call!184823 (exists!1097 (ite c!462214 lt!1015930 lt!1015936) (ite c!462214 lambda!106236 lambda!106237)))))

(declare-fun e!1813698 () Unit!47877)

(declare-fun Unit!47881 () Unit!47877)

(assert (=> b!2864965 (= e!1813698 Unit!47881)))

(declare-fun call!184824 () List!34364)

(assert (=> b!2864965 (= lt!1015936 call!184824)))

(declare-fun lt!1015929 () Unit!47877)

(declare-fun lemmaForallThenNotExists!133 (List!34364 Int) Unit!47877)

(assert (=> b!2864965 (= lt!1015929 (lemmaForallThenNotExists!133 lt!1015936 lambda!106235))))

(assert (=> b!2864965 (not call!184823)))

(declare-fun lt!1015931 () Unit!47877)

(assert (=> b!2864965 (= lt!1015931 lt!1015929)))

(declare-fun Unit!47882 () Unit!47877)

(assert (=> b!2864964 (= e!1813698 Unit!47882)))

(assert (=> b!2864964 (= lt!1015930 call!184824)))

(declare-fun lt!1015934 () Unit!47877)

(assert (=> b!2864964 (= lt!1015934 (lemmaNotForallThenExists!145 lt!1015930 lambda!106235))))

(assert (=> b!2864964 call!184823))

(declare-fun lt!1015935 () Unit!47877)

(assert (=> b!2864964 (= lt!1015935 lt!1015934)))

(declare-fun lt!1015933 () Bool)

(declare-fun isEmpty!18660 (Option!6356) Bool)

(assert (=> d!828332 (= lt!1015933 (isEmpty!18660 (getLanguageWitness!313 z!691)))))

(assert (=> d!828332 (= lt!1015933 (forall!7022 z!691 lambda!106235))))

(declare-fun lt!1015932 () Unit!47877)

(assert (=> d!828332 (= lt!1015932 e!1813698)))

(assert (=> d!828332 (= c!462214 (not (forall!7022 z!691 lambda!106235)))))

(assert (=> d!828332 (= (lostCauseZipper!581 z!691) lt!1015933)))

(declare-fun bm!184818 () Bool)

(assert (=> bm!184818 (= call!184824 (toList!2006 z!691))))

(assert (= (and d!828332 c!462214) b!2864964))

(assert (= (and d!828332 (not c!462214)) b!2864965))

(assert (= (or b!2864964 b!2864965) bm!184818))

(assert (= (or b!2864964 b!2864965) bm!184819))

(declare-fun m!3284961 () Bool)

(assert (=> b!2864964 m!3284961))

(assert (=> bm!184818 m!3284907))

(declare-fun m!3284963 () Bool)

(assert (=> b!2864965 m!3284963))

(declare-fun m!3284965 () Bool)

(assert (=> bm!184819 m!3284965))

(assert (=> d!828332 m!3284893))

(assert (=> d!828332 m!3284893))

(declare-fun m!3284967 () Bool)

(assert (=> d!828332 m!3284967))

(declare-fun m!3284969 () Bool)

(assert (=> d!828332 m!3284969))

(assert (=> d!828332 m!3284969))

(assert (=> start!279270 d!828332))

(declare-fun d!828342 () Bool)

(assert (=> d!828342 (= (isDefined!4976 (getLanguageWitness!313 z!691)) (not (isEmpty!18660 (getLanguageWitness!313 z!691))))))

(declare-fun bs!521080 () Bool)

(assert (= bs!521080 d!828342))

(assert (=> bs!521080 m!3284893))

(assert (=> bs!521080 m!3284967))

(assert (=> b!2864944 d!828342))

(declare-fun bs!521083 () Bool)

(declare-fun d!828344 () Bool)

(assert (= bs!521083 (and d!828344 b!2864943)))

(declare-fun lambda!106247 () Int)

(assert (=> bs!521083 (not (= lambda!106247 lambda!106194))))

(declare-fun bs!521084 () Bool)

(assert (= bs!521084 (and d!828344 b!2864964)))

(assert (=> bs!521084 (= lambda!106247 lambda!106236)))

(declare-fun bs!521085 () Bool)

(assert (= bs!521085 (and d!828344 b!2864945)))

(assert (=> bs!521085 (= lambda!106247 lambda!106195)))

(declare-fun bs!521086 () Bool)

(assert (= bs!521086 (and d!828344 b!2864965)))

(assert (=> bs!521086 (= lambda!106247 lambda!106237)))

(declare-fun bs!521087 () Bool)

(assert (= bs!521087 (and d!828344 d!828324)))

(assert (=> bs!521087 (not (= lambda!106247 lambda!106216))))

(declare-fun bs!521088 () Bool)

(assert (= bs!521088 (and d!828344 d!828322)))

(assert (=> bs!521088 (not (= lambda!106247 lambda!106210))))

(declare-fun bs!521089 () Bool)

(assert (= bs!521089 (and d!828344 d!828332)))

(assert (=> bs!521089 (not (= lambda!106247 lambda!106235))))

(declare-fun lt!1015944 () Option!6356)

(assert (=> d!828344 (= (isDefined!4976 lt!1015944) (exists!1096 z!691 lambda!106247))))

(declare-fun e!1813706 () Option!6356)

(assert (=> d!828344 (= lt!1015944 e!1813706)))

(declare-fun c!462227 () Bool)

(assert (=> d!828344 (= c!462227 (exists!1096 z!691 lambda!106247))))

(assert (=> d!828344 (= (getLanguageWitness!313 z!691) lt!1015944)))

(declare-fun b!2864977 () Bool)

(declare-fun getLanguageWitness!314 (Context!5274) Option!6356)

(declare-fun getWitness!604 ((InoxSet Context!5274) Int) Context!5274)

(assert (=> b!2864977 (= e!1813706 (getLanguageWitness!314 (getWitness!604 z!691 lambda!106247)))))

(declare-fun b!2864978 () Bool)

(assert (=> b!2864978 (= e!1813706 None!6355)))

(assert (= (and d!828344 c!462227) b!2864977))

(assert (= (and d!828344 (not c!462227)) b!2864978))

(declare-fun m!3284973 () Bool)

(assert (=> d!828344 m!3284973))

(declare-fun m!3284975 () Bool)

(assert (=> d!828344 m!3284975))

(assert (=> d!828344 m!3284975))

(declare-fun m!3284977 () Bool)

(assert (=> b!2864977 m!3284977))

(assert (=> b!2864977 m!3284977))

(declare-fun m!3284979 () Bool)

(assert (=> b!2864977 m!3284979))

(assert (=> b!2864944 d!828344))

(declare-fun d!828350 () Bool)

(declare-fun lambda!106257 () Int)

(declare-fun forall!7026 (List!34362 Int) Bool)

(assert (=> d!828350 (= (inv!46279 setElem!25637) (forall!7026 (exprs!3137 setElem!25637) lambda!106257))))

(declare-fun bs!521091 () Bool)

(assert (= bs!521091 d!828350))

(declare-fun m!3284981 () Bool)

(assert (=> bs!521091 m!3284981))

(assert (=> setNonEmpty!25637 d!828350))

(declare-fun d!828352 () Bool)

(declare-fun lt!1015948 () Bool)

(assert (=> d!828352 (= lt!1015948 (forall!7023 (toList!2006 z!691) lambda!106194))))

(declare-fun choose!16908 ((InoxSet Context!5274) Int) Bool)

(assert (=> d!828352 (= lt!1015948 (choose!16908 z!691 lambda!106194))))

(assert (=> d!828352 (= (forall!7022 z!691 lambda!106194) lt!1015948)))

(declare-fun bs!521098 () Bool)

(assert (= bs!521098 d!828352))

(assert (=> bs!521098 m!3284907))

(assert (=> bs!521098 m!3284907))

(declare-fun m!3284991 () Bool)

(assert (=> bs!521098 m!3284991))

(declare-fun m!3284993 () Bool)

(assert (=> bs!521098 m!3284993))

(assert (=> b!2864943 d!828352))

(declare-fun b!2864994 () Bool)

(declare-fun e!1813715 () Bool)

(declare-fun tp!922677 () Bool)

(declare-fun tp!922678 () Bool)

(assert (=> b!2864994 (= e!1813715 (and tp!922677 tp!922678))))

(assert (=> b!2864946 (= tp!922661 e!1813715)))

(get-info :version)

(assert (= (and b!2864946 ((_ is Cons!34238) (exprs!3137 setElem!25637))) b!2864994))

(declare-fun condSetEmpty!25643 () Bool)

(assert (=> setNonEmpty!25637 (= condSetEmpty!25643 (= setRest!25637 ((as const (Array Context!5274 Bool)) false)))))

(declare-fun setRes!25643 () Bool)

(assert (=> setNonEmpty!25637 (= tp!922662 setRes!25643)))

(declare-fun setIsEmpty!25643 () Bool)

(assert (=> setIsEmpty!25643 setRes!25643))

(declare-fun e!1813719 () Bool)

(declare-fun tp!922685 () Bool)

(declare-fun setElem!25643 () Context!5274)

(declare-fun setNonEmpty!25643 () Bool)

(assert (=> setNonEmpty!25643 (= setRes!25643 (and tp!922685 (inv!46279 setElem!25643) e!1813719))))

(declare-fun setRest!25643 () (InoxSet Context!5274))

(assert (=> setNonEmpty!25643 (= setRest!25637 ((_ map or) (store ((as const (Array Context!5274 Bool)) false) setElem!25643 true) setRest!25643))))

(declare-fun b!2865000 () Bool)

(declare-fun tp!922686 () Bool)

(assert (=> b!2865000 (= e!1813719 tp!922686)))

(assert (= (and setNonEmpty!25637 condSetEmpty!25643) setIsEmpty!25643))

(assert (= (and setNonEmpty!25637 (not condSetEmpty!25643)) setNonEmpty!25643))

(assert (= setNonEmpty!25643 b!2865000))

(declare-fun m!3284997 () Bool)

(assert (=> setNonEmpty!25643 m!3284997))

(check-sat (not bm!184819) (not b!2864977) (not d!828344) (not d!828322) (not setNonEmpty!25643) (not b!2864965) (not b!2864957) (not d!828320) (not d!828332) (not b!2865000) (not b!2864964) (not d!828352) (not d!828350) (not d!828324) (not d!828342) (not d!828328) (not bm!184818) (not b!2864994))
(check-sat)
