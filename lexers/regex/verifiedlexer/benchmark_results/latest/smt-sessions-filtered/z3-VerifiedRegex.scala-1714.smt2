; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85942 () Bool)

(assert start!85942)

(declare-fun b!965684 () Bool)

(assert (=> b!965684 true))

(assert (=> b!965684 true))

(assert (=> b!965684 true))

(declare-fun lambda!33988 () Int)

(declare-fun lambda!33987 () Int)

(assert (=> b!965684 (not (= lambda!33988 lambda!33987))))

(assert (=> b!965684 true))

(assert (=> b!965684 true))

(assert (=> b!965684 true))

(declare-fun bs!241513 () Bool)

(declare-fun b!965678 () Bool)

(assert (= bs!241513 (and b!965678 b!965684)))

(declare-datatypes ((C!5944 0))(
  ( (C!5945 (val!3220 Int)) )
))
(declare-datatypes ((Regex!2687 0))(
  ( (ElementMatch!2687 (c!157310 C!5944)) (Concat!4520 (regOne!5886 Regex!2687) (regTwo!5886 Regex!2687)) (EmptyExpr!2687) (Star!2687 (reg!3016 Regex!2687)) (EmptyLang!2687) (Union!2687 (regOne!5887 Regex!2687) (regTwo!5887 Regex!2687)) )
))
(declare-fun lt!347936 () Regex!2687)

(declare-fun lambda!33989 () Int)

(declare-fun r!15766 () Regex!2687)

(declare-fun lt!347923 () Regex!2687)

(declare-fun lt!347931 () Regex!2687)

(assert (=> bs!241513 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!33989 lambda!33987))))

(assert (=> bs!241513 (not (= lambda!33989 lambda!33988))))

(assert (=> b!965678 true))

(assert (=> b!965678 true))

(assert (=> b!965678 true))

(declare-fun lambda!33990 () Int)

(assert (=> bs!241513 (not (= lambda!33990 lambda!33987))))

(assert (=> bs!241513 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!33990 lambda!33988))))

(assert (=> b!965678 (not (= lambda!33990 lambda!33989))))

(assert (=> b!965678 true))

(assert (=> b!965678 true))

(assert (=> b!965678 true))

(declare-fun b!965671 () Bool)

(declare-fun e!623185 () Bool)

(declare-fun tp_is_empty!5017 () Bool)

(declare-fun tp!296299 () Bool)

(assert (=> b!965671 (= e!623185 (and tp_is_empty!5017 tp!296299))))

(declare-fun b!965672 () Bool)

(declare-fun e!623178 () Bool)

(declare-fun tp!296298 () Bool)

(declare-fun tp!296296 () Bool)

(assert (=> b!965672 (= e!623178 (and tp!296298 tp!296296))))

(declare-fun b!965673 () Bool)

(assert (=> b!965673 (= e!623178 tp_is_empty!5017)))

(declare-fun b!965674 () Bool)

(declare-fun res!439085 () Bool)

(declare-fun e!623177 () Bool)

(assert (=> b!965674 (=> res!439085 e!623177)))

(declare-datatypes ((List!9917 0))(
  ( (Nil!9901) (Cons!9901 (h!15302 C!5944) (t!100963 List!9917)) )
))
(declare-datatypes ((tuple2!11252 0))(
  ( (tuple2!11253 (_1!6452 List!9917) (_2!6452 List!9917)) )
))
(declare-fun lt!347938 () tuple2!11252)

(declare-fun s!10566 () List!9917)

(declare-fun ++!2675 (List!9917 List!9917) List!9917)

(assert (=> b!965674 (= res!439085 (not (= (++!2675 (_1!6452 lt!347938) (_2!6452 lt!347938)) s!10566)))))

(declare-fun b!965675 () Bool)

(declare-fun tp!296297 () Bool)

(assert (=> b!965675 (= e!623178 tp!296297)))

(declare-fun b!965676 () Bool)

(declare-fun e!623180 () Bool)

(declare-fun e!623179 () Bool)

(assert (=> b!965676 (= e!623180 e!623179)))

(declare-fun res!439090 () Bool)

(assert (=> b!965676 (=> res!439090 e!623179)))

(declare-fun matchR!1225 (Regex!2687 List!9917) Bool)

(assert (=> b!965676 (= res!439090 (not (matchR!1225 lt!347936 (_1!6452 lt!347938))))))

(declare-datatypes ((Option!2268 0))(
  ( (None!2267) (Some!2267 (v!19684 tuple2!11252)) )
))
(declare-fun lt!347937 () Option!2268)

(declare-fun get!3395 (Option!2268) tuple2!11252)

(assert (=> b!965676 (= lt!347938 (get!3395 lt!347937))))

(declare-fun b!965677 () Bool)

(declare-fun e!623182 () Bool)

(declare-fun isEmpty!6205 (List!9917) Bool)

(assert (=> b!965677 (= e!623182 (isEmpty!6205 (_1!6452 lt!347938)))))

(declare-fun res!439086 () Bool)

(declare-fun e!623181 () Bool)

(assert (=> start!85942 (=> (not res!439086) (not e!623181))))

(declare-fun validRegex!1156 (Regex!2687) Bool)

(assert (=> start!85942 (= res!439086 (validRegex!1156 r!15766))))

(assert (=> start!85942 e!623181))

(assert (=> start!85942 e!623178))

(assert (=> start!85942 e!623185))

(declare-fun e!623183 () Bool)

(assert (=> b!965678 (= e!623183 e!623180)))

(declare-fun res!439089 () Bool)

(assert (=> b!965678 (=> res!439089 e!623180)))

(assert (=> b!965678 (= res!439089 (isEmpty!6205 s!10566))))

(declare-fun Exists!430 (Int) Bool)

(assert (=> b!965678 (= (Exists!430 lambda!33989) (Exists!430 lambda!33990))))

(declare-datatypes ((Unit!15029 0))(
  ( (Unit!15030) )
))
(declare-fun lt!347929 () Unit!15029)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!148 (Regex!2687 List!9917) Unit!15029)

(assert (=> b!965678 (= lt!347929 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!148 lt!347936 s!10566))))

(declare-fun lt!347932 () Bool)

(assert (=> b!965678 (= lt!347932 (Exists!430 lambda!33989))))

(declare-fun isDefined!1910 (Option!2268) Bool)

(assert (=> b!965678 (= lt!347932 (isDefined!1910 lt!347937))))

(declare-fun findConcatSeparation!374 (Regex!2687 Regex!2687 List!9917 List!9917 List!9917) Option!2268)

(assert (=> b!965678 (= lt!347937 (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566))))

(declare-fun lt!347930 () Unit!15029)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!374 (Regex!2687 Regex!2687 List!9917) Unit!15029)

(assert (=> b!965678 (= lt!347930 (lemmaFindConcatSeparationEquivalentToExists!374 lt!347936 lt!347923 s!10566))))

(declare-fun matchRSpec!488 (Regex!2687 List!9917) Bool)

(assert (=> b!965678 (matchRSpec!488 lt!347923 s!10566)))

(declare-fun lt!347927 () Unit!15029)

(declare-fun mainMatchTheorem!488 (Regex!2687 List!9917) Unit!15029)

(assert (=> b!965678 (= lt!347927 (mainMatchTheorem!488 lt!347923 s!10566))))

(declare-fun b!965679 () Bool)

(declare-fun e!623184 () Bool)

(assert (=> b!965679 (= e!623181 (not e!623184))))

(declare-fun res!439088 () Bool)

(assert (=> b!965679 (=> res!439088 e!623184)))

(declare-fun lt!347928 () Bool)

(get-info :version)

(assert (=> b!965679 (= res!439088 (or lt!347928 (and ((_ is Concat!4520) r!15766) ((_ is EmptyExpr!2687) (regOne!5886 r!15766))) (and ((_ is Concat!4520) r!15766) ((_ is EmptyExpr!2687) (regTwo!5886 r!15766))) ((_ is Concat!4520) r!15766) ((_ is Union!2687) r!15766) (not ((_ is Star!2687) r!15766))))))

(assert (=> b!965679 (= lt!347928 (matchRSpec!488 r!15766 s!10566))))

(assert (=> b!965679 (= lt!347928 (matchR!1225 r!15766 s!10566))))

(declare-fun lt!347924 () Unit!15029)

(assert (=> b!965679 (= lt!347924 (mainMatchTheorem!488 r!15766 s!10566))))

(declare-fun b!965680 () Bool)

(declare-fun res!439082 () Bool)

(assert (=> b!965680 (=> res!439082 e!623179)))

(assert (=> b!965680 (= res!439082 (not (matchR!1225 lt!347923 (_2!6452 lt!347938))))))

(declare-fun b!965681 () Bool)

(assert (=> b!965681 (= e!623177 e!623182)))

(declare-fun res!439083 () Bool)

(assert (=> b!965681 (=> res!439083 e!623182)))

(declare-fun lt!347933 () Int)

(declare-fun lt!347935 () Int)

(declare-fun lt!347925 () Int)

(assert (=> b!965681 (= res!439083 (or (not (= (+ lt!347925 lt!347933) lt!347935)) (not (= lt!347925 0))))))

(declare-fun size!7937 (List!9917) Int)

(assert (=> b!965681 (= lt!347925 (size!7937 (_1!6452 lt!347938)))))

(declare-fun b!965682 () Bool)

(declare-fun res!439081 () Bool)

(assert (=> b!965682 (=> res!439081 e!623180)))

(assert (=> b!965682 (= res!439081 (not lt!347932))))

(declare-fun b!965683 () Bool)

(assert (=> b!965683 (= e!623179 e!623177)))

(declare-fun res!439087 () Bool)

(assert (=> b!965683 (=> res!439087 e!623177)))

(assert (=> b!965683 (= res!439087 (not (= lt!347933 lt!347935)))))

(assert (=> b!965683 (= lt!347935 (size!7937 s!10566))))

(assert (=> b!965683 (= lt!347933 (size!7937 (_2!6452 lt!347938)))))

(assert (=> b!965683 (matchR!1225 (reg!3016 r!15766) (_1!6452 lt!347938))))

(declare-fun lt!347939 () Unit!15029)

(declare-fun lemmaRemoveUselessConcatSound!186 (Regex!2687 List!9917) Unit!15029)

(assert (=> b!965683 (= lt!347939 (lemmaRemoveUselessConcatSound!186 (reg!3016 r!15766) (_1!6452 lt!347938)))))

(assert (=> b!965684 (= e!623184 e!623183)))

(declare-fun res!439084 () Bool)

(assert (=> b!965684 (=> res!439084 e!623183)))

(assert (=> b!965684 (= res!439084 (not (matchR!1225 lt!347923 s!10566)))))

(assert (=> b!965684 (= lt!347923 (Star!2687 lt!347936))))

(declare-fun removeUselessConcat!334 (Regex!2687) Regex!2687)

(assert (=> b!965684 (= lt!347936 (removeUselessConcat!334 (reg!3016 r!15766)))))

(assert (=> b!965684 (= (Exists!430 lambda!33987) (Exists!430 lambda!33988))))

(declare-fun lt!347926 () Unit!15029)

(assert (=> b!965684 (= lt!347926 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!148 (reg!3016 r!15766) s!10566))))

(assert (=> b!965684 (= (isDefined!1910 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566)) (Exists!430 lambda!33987))))

(declare-fun lt!347934 () Unit!15029)

(assert (=> b!965684 (= lt!347934 (lemmaFindConcatSeparationEquivalentToExists!374 (reg!3016 r!15766) lt!347931 s!10566))))

(assert (=> b!965684 (= lt!347931 (Star!2687 (reg!3016 r!15766)))))

(declare-fun b!965685 () Bool)

(declare-fun tp!296300 () Bool)

(declare-fun tp!296295 () Bool)

(assert (=> b!965685 (= e!623178 (and tp!296300 tp!296295))))

(assert (= (and start!85942 res!439086) b!965679))

(assert (= (and b!965679 (not res!439088)) b!965684))

(assert (= (and b!965684 (not res!439084)) b!965678))

(assert (= (and b!965678 (not res!439089)) b!965682))

(assert (= (and b!965682 (not res!439081)) b!965676))

(assert (= (and b!965676 (not res!439090)) b!965680))

(assert (= (and b!965680 (not res!439082)) b!965683))

(assert (= (and b!965683 (not res!439087)) b!965674))

(assert (= (and b!965674 (not res!439085)) b!965681))

(assert (= (and b!965681 (not res!439083)) b!965677))

(assert (= (and start!85942 ((_ is ElementMatch!2687) r!15766)) b!965673))

(assert (= (and start!85942 ((_ is Concat!4520) r!15766)) b!965672))

(assert (= (and start!85942 ((_ is Star!2687) r!15766)) b!965675))

(assert (= (and start!85942 ((_ is Union!2687) r!15766)) b!965685))

(assert (= (and start!85942 ((_ is Cons!9901) s!10566)) b!965671))

(declare-fun m!1171891 () Bool)

(assert (=> b!965677 m!1171891))

(declare-fun m!1171893 () Bool)

(assert (=> b!965678 m!1171893))

(declare-fun m!1171895 () Bool)

(assert (=> b!965678 m!1171895))

(declare-fun m!1171897 () Bool)

(assert (=> b!965678 m!1171897))

(declare-fun m!1171899 () Bool)

(assert (=> b!965678 m!1171899))

(declare-fun m!1171901 () Bool)

(assert (=> b!965678 m!1171901))

(declare-fun m!1171903 () Bool)

(assert (=> b!965678 m!1171903))

(declare-fun m!1171905 () Bool)

(assert (=> b!965678 m!1171905))

(declare-fun m!1171907 () Bool)

(assert (=> b!965678 m!1171907))

(assert (=> b!965678 m!1171899))

(declare-fun m!1171909 () Bool)

(assert (=> b!965678 m!1171909))

(declare-fun m!1171911 () Bool)

(assert (=> b!965683 m!1171911))

(declare-fun m!1171913 () Bool)

(assert (=> b!965683 m!1171913))

(declare-fun m!1171915 () Bool)

(assert (=> b!965683 m!1171915))

(declare-fun m!1171917 () Bool)

(assert (=> b!965683 m!1171917))

(declare-fun m!1171919 () Bool)

(assert (=> b!965681 m!1171919))

(declare-fun m!1171921 () Bool)

(assert (=> start!85942 m!1171921))

(declare-fun m!1171923 () Bool)

(assert (=> b!965680 m!1171923))

(declare-fun m!1171925 () Bool)

(assert (=> b!965676 m!1171925))

(declare-fun m!1171927 () Bool)

(assert (=> b!965676 m!1171927))

(declare-fun m!1171929 () Bool)

(assert (=> b!965674 m!1171929))

(declare-fun m!1171931 () Bool)

(assert (=> b!965679 m!1171931))

(declare-fun m!1171933 () Bool)

(assert (=> b!965679 m!1171933))

(declare-fun m!1171935 () Bool)

(assert (=> b!965679 m!1171935))

(declare-fun m!1171937 () Bool)

(assert (=> b!965684 m!1171937))

(declare-fun m!1171939 () Bool)

(assert (=> b!965684 m!1171939))

(declare-fun m!1171941 () Bool)

(assert (=> b!965684 m!1171941))

(declare-fun m!1171943 () Bool)

(assert (=> b!965684 m!1171943))

(declare-fun m!1171945 () Bool)

(assert (=> b!965684 m!1171945))

(assert (=> b!965684 m!1171943))

(declare-fun m!1171947 () Bool)

(assert (=> b!965684 m!1171947))

(assert (=> b!965684 m!1171939))

(declare-fun m!1171949 () Bool)

(assert (=> b!965684 m!1171949))

(declare-fun m!1171951 () Bool)

(assert (=> b!965684 m!1171951))

(check-sat (not b!965679) (not b!965681) (not b!965671) (not b!965685) (not b!965674) (not b!965678) (not b!965676) (not b!965672) (not b!965684) tp_is_empty!5017 (not b!965677) (not b!965680) (not b!965675) (not b!965683) (not start!85942))
(check-sat)
(get-model)

(declare-fun b!965753 () Bool)

(declare-fun e!623221 () List!9917)

(assert (=> b!965753 (= e!623221 (_2!6452 lt!347938))))

(declare-fun b!965756 () Bool)

(declare-fun e!623220 () Bool)

(declare-fun lt!347954 () List!9917)

(assert (=> b!965756 (= e!623220 (or (not (= (_2!6452 lt!347938) Nil!9901)) (= lt!347954 (_1!6452 lt!347938))))))

(declare-fun b!965754 () Bool)

(assert (=> b!965754 (= e!623221 (Cons!9901 (h!15302 (_1!6452 lt!347938)) (++!2675 (t!100963 (_1!6452 lt!347938)) (_2!6452 lt!347938))))))

(declare-fun b!965755 () Bool)

(declare-fun res!439113 () Bool)

(assert (=> b!965755 (=> (not res!439113) (not e!623220))))

(assert (=> b!965755 (= res!439113 (= (size!7937 lt!347954) (+ (size!7937 (_1!6452 lt!347938)) (size!7937 (_2!6452 lt!347938)))))))

(declare-fun d!285751 () Bool)

(assert (=> d!285751 e!623220))

(declare-fun res!439112 () Bool)

(assert (=> d!285751 (=> (not res!439112) (not e!623220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1411 (List!9917) (InoxSet C!5944))

(assert (=> d!285751 (= res!439112 (= (content!1411 lt!347954) ((_ map or) (content!1411 (_1!6452 lt!347938)) (content!1411 (_2!6452 lt!347938)))))))

(assert (=> d!285751 (= lt!347954 e!623221)))

(declare-fun c!157332 () Bool)

(assert (=> d!285751 (= c!157332 ((_ is Nil!9901) (_1!6452 lt!347938)))))

(assert (=> d!285751 (= (++!2675 (_1!6452 lt!347938) (_2!6452 lt!347938)) lt!347954)))

(assert (= (and d!285751 c!157332) b!965753))

(assert (= (and d!285751 (not c!157332)) b!965754))

(assert (= (and d!285751 res!439112) b!965755))

(assert (= (and b!965755 res!439113) b!965756))

(declare-fun m!1171975 () Bool)

(assert (=> b!965754 m!1171975))

(declare-fun m!1171977 () Bool)

(assert (=> b!965755 m!1171977))

(assert (=> b!965755 m!1171919))

(assert (=> b!965755 m!1171913))

(declare-fun m!1171979 () Bool)

(assert (=> d!285751 m!1171979))

(declare-fun m!1171981 () Bool)

(assert (=> d!285751 m!1171981))

(declare-fun m!1171983 () Bool)

(assert (=> d!285751 m!1171983))

(assert (=> b!965674 d!285751))

(declare-fun bs!241524 () Bool)

(declare-fun b!965880 () Bool)

(assert (= bs!241524 (and b!965880 b!965684)))

(declare-fun lambda!34006 () Int)

(assert (=> bs!241524 (not (= lambda!34006 lambda!33987))))

(assert (=> bs!241524 (= (= r!15766 lt!347931) (= lambda!34006 lambda!33988))))

(declare-fun bs!241525 () Bool)

(assert (= bs!241525 (and b!965880 b!965678)))

(assert (=> bs!241525 (not (= lambda!34006 lambda!33989))))

(assert (=> bs!241525 (= (and (= (reg!3016 r!15766) lt!347936) (= r!15766 lt!347923)) (= lambda!34006 lambda!33990))))

(assert (=> b!965880 true))

(assert (=> b!965880 true))

(declare-fun bs!241526 () Bool)

(declare-fun b!965872 () Bool)

(assert (= bs!241526 (and b!965872 b!965678)))

(declare-fun lambda!34009 () Int)

(assert (=> bs!241526 (not (= lambda!34009 lambda!33989))))

(declare-fun bs!241527 () Bool)

(assert (= bs!241527 (and b!965872 b!965684)))

(assert (=> bs!241527 (not (= lambda!34009 lambda!33987))))

(assert (=> bs!241526 (not (= lambda!34009 lambda!33990))))

(declare-fun bs!241528 () Bool)

(assert (= bs!241528 (and b!965872 b!965880)))

(assert (=> bs!241528 (not (= lambda!34009 lambda!34006))))

(assert (=> bs!241527 (not (= lambda!34009 lambda!33988))))

(assert (=> b!965872 true))

(assert (=> b!965872 true))

(declare-fun bm!61027 () Bool)

(declare-fun call!61032 () Bool)

(assert (=> bm!61027 (= call!61032 (isEmpty!6205 s!10566))))

(declare-fun b!965873 () Bool)

(declare-fun c!157360 () Bool)

(assert (=> b!965873 (= c!157360 ((_ is ElementMatch!2687) r!15766))))

(declare-fun e!623284 () Bool)

(declare-fun e!623285 () Bool)

(assert (=> b!965873 (= e!623284 e!623285)))

(declare-fun b!965874 () Bool)

(assert (=> b!965874 (= e!623285 (= s!10566 (Cons!9901 (c!157310 r!15766) Nil!9901)))))

(declare-fun b!965875 () Bool)

(declare-fun e!623289 () Bool)

(declare-fun e!623290 () Bool)

(assert (=> b!965875 (= e!623289 e!623290)))

(declare-fun c!157362 () Bool)

(assert (=> b!965875 (= c!157362 ((_ is Star!2687) r!15766))))

(declare-fun b!965876 () Bool)

(declare-fun e!623287 () Bool)

(assert (=> b!965876 (= e!623287 call!61032)))

(declare-fun b!965877 () Bool)

(assert (=> b!965877 (= e!623287 e!623284)))

(declare-fun res!439177 () Bool)

(assert (=> b!965877 (= res!439177 (not ((_ is EmptyLang!2687) r!15766)))))

(assert (=> b!965877 (=> (not res!439177) (not e!623284))))

(declare-fun b!965878 () Bool)

(declare-fun c!157363 () Bool)

(assert (=> b!965878 (= c!157363 ((_ is Union!2687) r!15766))))

(assert (=> b!965878 (= e!623285 e!623289)))

(declare-fun b!965879 () Bool)

(declare-fun res!439176 () Bool)

(declare-fun e!623286 () Bool)

(assert (=> b!965879 (=> res!439176 e!623286)))

(assert (=> b!965879 (= res!439176 call!61032)))

(assert (=> b!965879 (= e!623290 e!623286)))

(declare-fun d!285757 () Bool)

(declare-fun c!157361 () Bool)

(assert (=> d!285757 (= c!157361 ((_ is EmptyExpr!2687) r!15766))))

(assert (=> d!285757 (= (matchRSpec!488 r!15766 s!10566) e!623287)))

(declare-fun call!61033 () Bool)

(assert (=> b!965872 (= e!623290 call!61033)))

(assert (=> b!965880 (= e!623286 call!61033)))

(declare-fun bm!61028 () Bool)

(assert (=> bm!61028 (= call!61033 (Exists!430 (ite c!157362 lambda!34006 lambda!34009)))))

(declare-fun b!965881 () Bool)

(declare-fun e!623288 () Bool)

(assert (=> b!965881 (= e!623289 e!623288)))

(declare-fun res!439175 () Bool)

(assert (=> b!965881 (= res!439175 (matchRSpec!488 (regOne!5887 r!15766) s!10566))))

(assert (=> b!965881 (=> res!439175 e!623288)))

(declare-fun b!965882 () Bool)

(assert (=> b!965882 (= e!623288 (matchRSpec!488 (regTwo!5887 r!15766) s!10566))))

(assert (= (and d!285757 c!157361) b!965876))

(assert (= (and d!285757 (not c!157361)) b!965877))

(assert (= (and b!965877 res!439177) b!965873))

(assert (= (and b!965873 c!157360) b!965874))

(assert (= (and b!965873 (not c!157360)) b!965878))

(assert (= (and b!965878 c!157363) b!965881))

(assert (= (and b!965878 (not c!157363)) b!965875))

(assert (= (and b!965881 (not res!439175)) b!965882))

(assert (= (and b!965875 c!157362) b!965879))

(assert (= (and b!965875 (not c!157362)) b!965872))

(assert (= (and b!965879 (not res!439176)) b!965880))

(assert (= (or b!965880 b!965872) bm!61028))

(assert (= (or b!965876 b!965879) bm!61027))

(assert (=> bm!61027 m!1171903))

(declare-fun m!1172027 () Bool)

(assert (=> bm!61028 m!1172027))

(declare-fun m!1172029 () Bool)

(assert (=> b!965881 m!1172029))

(declare-fun m!1172031 () Bool)

(assert (=> b!965882 m!1172031))

(assert (=> b!965679 d!285757))

(declare-fun b!965988 () Bool)

(declare-fun e!623355 () Bool)

(declare-fun head!1776 (List!9917) C!5944)

(assert (=> b!965988 (= e!623355 (= (head!1776 s!10566) (c!157310 r!15766)))))

(declare-fun b!965989 () Bool)

(declare-fun e!623356 () Bool)

(declare-fun lt!347978 () Bool)

(declare-fun call!61052 () Bool)

(assert (=> b!965989 (= e!623356 (= lt!347978 call!61052))))

(declare-fun b!965990 () Bool)

(declare-fun e!623358 () Bool)

(declare-fun nullable!815 (Regex!2687) Bool)

(assert (=> b!965990 (= e!623358 (nullable!815 r!15766))))

(declare-fun b!965991 () Bool)

(declare-fun res!439239 () Bool)

(declare-fun e!623354 () Bool)

(assert (=> b!965991 (=> res!439239 e!623354)))

(assert (=> b!965991 (= res!439239 (not ((_ is ElementMatch!2687) r!15766)))))

(declare-fun e!623357 () Bool)

(assert (=> b!965991 (= e!623357 e!623354)))

(declare-fun b!965992 () Bool)

(declare-fun e!623353 () Bool)

(assert (=> b!965992 (= e!623353 (not (= (head!1776 s!10566) (c!157310 r!15766))))))

(declare-fun b!965993 () Bool)

(declare-fun res!439240 () Bool)

(assert (=> b!965993 (=> res!439240 e!623354)))

(assert (=> b!965993 (= res!439240 e!623355)))

(declare-fun res!439237 () Bool)

(assert (=> b!965993 (=> (not res!439237) (not e!623355))))

(assert (=> b!965993 (= res!439237 lt!347978)))

(declare-fun b!965994 () Bool)

(declare-fun e!623352 () Bool)

(assert (=> b!965994 (= e!623354 e!623352)))

(declare-fun res!439238 () Bool)

(assert (=> b!965994 (=> (not res!439238) (not e!623352))))

(assert (=> b!965994 (= res!439238 (not lt!347978))))

(declare-fun b!965995 () Bool)

(declare-fun res!439242 () Bool)

(assert (=> b!965995 (=> res!439242 e!623353)))

(declare-fun tail!1338 (List!9917) List!9917)

(assert (=> b!965995 (= res!439242 (not (isEmpty!6205 (tail!1338 s!10566))))))

(declare-fun b!965996 () Bool)

(declare-fun res!439236 () Bool)

(assert (=> b!965996 (=> (not res!439236) (not e!623355))))

(assert (=> b!965996 (= res!439236 (isEmpty!6205 (tail!1338 s!10566)))))

(declare-fun d!285765 () Bool)

(assert (=> d!285765 e!623356))

(declare-fun c!157389 () Bool)

(assert (=> d!285765 (= c!157389 ((_ is EmptyExpr!2687) r!15766))))

(assert (=> d!285765 (= lt!347978 e!623358)))

(declare-fun c!157390 () Bool)

(assert (=> d!285765 (= c!157390 (isEmpty!6205 s!10566))))

(assert (=> d!285765 (validRegex!1156 r!15766)))

(assert (=> d!285765 (= (matchR!1225 r!15766 s!10566) lt!347978)))

(declare-fun b!965997 () Bool)

(assert (=> b!965997 (= e!623356 e!623357)))

(declare-fun c!157388 () Bool)

(assert (=> b!965997 (= c!157388 ((_ is EmptyLang!2687) r!15766))))

(declare-fun b!965998 () Bool)

(declare-fun derivativeStep!623 (Regex!2687 C!5944) Regex!2687)

(assert (=> b!965998 (= e!623358 (matchR!1225 (derivativeStep!623 r!15766 (head!1776 s!10566)) (tail!1338 s!10566)))))

(declare-fun b!965999 () Bool)

(assert (=> b!965999 (= e!623357 (not lt!347978))))

(declare-fun bm!61047 () Bool)

(assert (=> bm!61047 (= call!61052 (isEmpty!6205 s!10566))))

(declare-fun b!966000 () Bool)

(declare-fun res!439235 () Bool)

(assert (=> b!966000 (=> (not res!439235) (not e!623355))))

(assert (=> b!966000 (= res!439235 (not call!61052))))

(declare-fun b!966001 () Bool)

(assert (=> b!966001 (= e!623352 e!623353)))

(declare-fun res!439241 () Bool)

(assert (=> b!966001 (=> res!439241 e!623353)))

(assert (=> b!966001 (= res!439241 call!61052)))

(assert (= (and d!285765 c!157390) b!965990))

(assert (= (and d!285765 (not c!157390)) b!965998))

(assert (= (and d!285765 c!157389) b!965989))

(assert (= (and d!285765 (not c!157389)) b!965997))

(assert (= (and b!965997 c!157388) b!965999))

(assert (= (and b!965997 (not c!157388)) b!965991))

(assert (= (and b!965991 (not res!439239)) b!965993))

(assert (= (and b!965993 res!439237) b!966000))

(assert (= (and b!966000 res!439235) b!965996))

(assert (= (and b!965996 res!439236) b!965988))

(assert (= (and b!965993 (not res!439240)) b!965994))

(assert (= (and b!965994 res!439238) b!966001))

(assert (= (and b!966001 (not res!439241)) b!965995))

(assert (= (and b!965995 (not res!439242)) b!965992))

(assert (= (or b!965989 b!966000 b!966001) bm!61047))

(declare-fun m!1172093 () Bool)

(assert (=> b!965996 m!1172093))

(assert (=> b!965996 m!1172093))

(declare-fun m!1172095 () Bool)

(assert (=> b!965996 m!1172095))

(declare-fun m!1172097 () Bool)

(assert (=> b!965990 m!1172097))

(assert (=> b!965995 m!1172093))

(assert (=> b!965995 m!1172093))

(assert (=> b!965995 m!1172095))

(declare-fun m!1172099 () Bool)

(assert (=> b!965988 m!1172099))

(assert (=> b!965998 m!1172099))

(assert (=> b!965998 m!1172099))

(declare-fun m!1172101 () Bool)

(assert (=> b!965998 m!1172101))

(assert (=> b!965998 m!1172093))

(assert (=> b!965998 m!1172101))

(assert (=> b!965998 m!1172093))

(declare-fun m!1172103 () Bool)

(assert (=> b!965998 m!1172103))

(assert (=> b!965992 m!1172099))

(assert (=> d!285765 m!1171903))

(assert (=> d!285765 m!1171921))

(assert (=> bm!61047 m!1171903))

(assert (=> b!965679 d!285765))

(declare-fun d!285795 () Bool)

(assert (=> d!285795 (= (matchR!1225 r!15766 s!10566) (matchRSpec!488 r!15766 s!10566))))

(declare-fun lt!347987 () Unit!15029)

(declare-fun choose!6103 (Regex!2687 List!9917) Unit!15029)

(assert (=> d!285795 (= lt!347987 (choose!6103 r!15766 s!10566))))

(assert (=> d!285795 (validRegex!1156 r!15766)))

(assert (=> d!285795 (= (mainMatchTheorem!488 r!15766 s!10566) lt!347987)))

(declare-fun bs!241575 () Bool)

(assert (= bs!241575 d!285795))

(assert (=> bs!241575 m!1171933))

(assert (=> bs!241575 m!1171931))

(declare-fun m!1172145 () Bool)

(assert (=> bs!241575 m!1172145))

(assert (=> bs!241575 m!1171921))

(assert (=> b!965679 d!285795))

(declare-fun b!966071 () Bool)

(declare-fun e!623398 () Bool)

(assert (=> b!966071 (= e!623398 (= (head!1776 (_2!6452 lt!347938)) (c!157310 lt!347923)))))

(declare-fun b!966072 () Bool)

(declare-fun e!623399 () Bool)

(declare-fun lt!347991 () Bool)

(declare-fun call!61058 () Bool)

(assert (=> b!966072 (= e!623399 (= lt!347991 call!61058))))

(declare-fun b!966073 () Bool)

(declare-fun e!623401 () Bool)

(assert (=> b!966073 (= e!623401 (nullable!815 lt!347923))))

(declare-fun b!966074 () Bool)

(declare-fun res!439280 () Bool)

(declare-fun e!623397 () Bool)

(assert (=> b!966074 (=> res!439280 e!623397)))

(assert (=> b!966074 (= res!439280 (not ((_ is ElementMatch!2687) lt!347923)))))

(declare-fun e!623400 () Bool)

(assert (=> b!966074 (= e!623400 e!623397)))

(declare-fun b!966075 () Bool)

(declare-fun e!623396 () Bool)

(assert (=> b!966075 (= e!623396 (not (= (head!1776 (_2!6452 lt!347938)) (c!157310 lt!347923))))))

(declare-fun b!966076 () Bool)

(declare-fun res!439281 () Bool)

(assert (=> b!966076 (=> res!439281 e!623397)))

(assert (=> b!966076 (= res!439281 e!623398)))

(declare-fun res!439278 () Bool)

(assert (=> b!966076 (=> (not res!439278) (not e!623398))))

(assert (=> b!966076 (= res!439278 lt!347991)))

(declare-fun b!966077 () Bool)

(declare-fun e!623395 () Bool)

(assert (=> b!966077 (= e!623397 e!623395)))

(declare-fun res!439279 () Bool)

(assert (=> b!966077 (=> (not res!439279) (not e!623395))))

(assert (=> b!966077 (= res!439279 (not lt!347991))))

(declare-fun b!966078 () Bool)

(declare-fun res!439283 () Bool)

(assert (=> b!966078 (=> res!439283 e!623396)))

(assert (=> b!966078 (= res!439283 (not (isEmpty!6205 (tail!1338 (_2!6452 lt!347938)))))))

(declare-fun b!966079 () Bool)

(declare-fun res!439277 () Bool)

(assert (=> b!966079 (=> (not res!439277) (not e!623398))))

(assert (=> b!966079 (= res!439277 (isEmpty!6205 (tail!1338 (_2!6452 lt!347938))))))

(declare-fun d!285811 () Bool)

(assert (=> d!285811 e!623399))

(declare-fun c!157410 () Bool)

(assert (=> d!285811 (= c!157410 ((_ is EmptyExpr!2687) lt!347923))))

(assert (=> d!285811 (= lt!347991 e!623401)))

(declare-fun c!157411 () Bool)

(assert (=> d!285811 (= c!157411 (isEmpty!6205 (_2!6452 lt!347938)))))

(assert (=> d!285811 (validRegex!1156 lt!347923)))

(assert (=> d!285811 (= (matchR!1225 lt!347923 (_2!6452 lt!347938)) lt!347991)))

(declare-fun b!966080 () Bool)

(assert (=> b!966080 (= e!623399 e!623400)))

(declare-fun c!157409 () Bool)

(assert (=> b!966080 (= c!157409 ((_ is EmptyLang!2687) lt!347923))))

(declare-fun b!966081 () Bool)

(assert (=> b!966081 (= e!623401 (matchR!1225 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))) (tail!1338 (_2!6452 lt!347938))))))

(declare-fun b!966082 () Bool)

(assert (=> b!966082 (= e!623400 (not lt!347991))))

(declare-fun bm!61053 () Bool)

(assert (=> bm!61053 (= call!61058 (isEmpty!6205 (_2!6452 lt!347938)))))

(declare-fun b!966083 () Bool)

(declare-fun res!439276 () Bool)

(assert (=> b!966083 (=> (not res!439276) (not e!623398))))

(assert (=> b!966083 (= res!439276 (not call!61058))))

(declare-fun b!966084 () Bool)

(assert (=> b!966084 (= e!623395 e!623396)))

(declare-fun res!439282 () Bool)

(assert (=> b!966084 (=> res!439282 e!623396)))

(assert (=> b!966084 (= res!439282 call!61058)))

(assert (= (and d!285811 c!157411) b!966073))

(assert (= (and d!285811 (not c!157411)) b!966081))

(assert (= (and d!285811 c!157410) b!966072))

(assert (= (and d!285811 (not c!157410)) b!966080))

(assert (= (and b!966080 c!157409) b!966082))

(assert (= (and b!966080 (not c!157409)) b!966074))

(assert (= (and b!966074 (not res!439280)) b!966076))

(assert (= (and b!966076 res!439278) b!966083))

(assert (= (and b!966083 res!439276) b!966079))

(assert (= (and b!966079 res!439277) b!966071))

(assert (= (and b!966076 (not res!439281)) b!966077))

(assert (= (and b!966077 res!439279) b!966084))

(assert (= (and b!966084 (not res!439282)) b!966078))

(assert (= (and b!966078 (not res!439283)) b!966075))

(assert (= (or b!966072 b!966083 b!966084) bm!61053))

(declare-fun m!1172151 () Bool)

(assert (=> b!966079 m!1172151))

(assert (=> b!966079 m!1172151))

(declare-fun m!1172153 () Bool)

(assert (=> b!966079 m!1172153))

(declare-fun m!1172155 () Bool)

(assert (=> b!966073 m!1172155))

(assert (=> b!966078 m!1172151))

(assert (=> b!966078 m!1172151))

(assert (=> b!966078 m!1172153))

(declare-fun m!1172157 () Bool)

(assert (=> b!966071 m!1172157))

(assert (=> b!966081 m!1172157))

(assert (=> b!966081 m!1172157))

(declare-fun m!1172159 () Bool)

(assert (=> b!966081 m!1172159))

(assert (=> b!966081 m!1172151))

(assert (=> b!966081 m!1172159))

(assert (=> b!966081 m!1172151))

(declare-fun m!1172161 () Bool)

(assert (=> b!966081 m!1172161))

(assert (=> b!966075 m!1172157))

(declare-fun m!1172163 () Bool)

(assert (=> d!285811 m!1172163))

(declare-fun m!1172165 () Bool)

(assert (=> d!285811 m!1172165))

(assert (=> bm!61053 m!1172163))

(assert (=> b!965680 d!285811))

(declare-fun d!285815 () Bool)

(assert (=> d!285815 (= (isEmpty!6205 s!10566) ((_ is Nil!9901) s!10566))))

(assert (=> b!965678 d!285815))

(declare-fun b!966138 () Bool)

(declare-fun e!623424 () Option!2268)

(assert (=> b!966138 (= e!623424 None!2267)))

(declare-fun b!966139 () Bool)

(declare-fun e!623423 () Bool)

(declare-fun lt!348001 () Option!2268)

(assert (=> b!966139 (= e!623423 (not (isDefined!1910 lt!348001)))))

(declare-fun b!966140 () Bool)

(declare-fun e!623425 () Option!2268)

(assert (=> b!966140 (= e!623425 (Some!2267 (tuple2!11253 Nil!9901 s!10566)))))

(declare-fun b!966141 () Bool)

(declare-fun res!439296 () Bool)

(declare-fun e!623422 () Bool)

(assert (=> b!966141 (=> (not res!439296) (not e!623422))))

(assert (=> b!966141 (= res!439296 (matchR!1225 lt!347936 (_1!6452 (get!3395 lt!348001))))))

(declare-fun b!966142 () Bool)

(declare-fun lt!348002 () Unit!15029)

(declare-fun lt!348003 () Unit!15029)

(assert (=> b!966142 (= lt!348002 lt!348003)))

(assert (=> b!966142 (= (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!278 (List!9917 C!5944 List!9917 List!9917) Unit!15029)

(assert (=> b!966142 (= lt!348003 (lemmaMoveElementToOtherListKeepsConcatEq!278 Nil!9901 (h!15302 s!10566) (t!100963 s!10566) s!10566))))

(assert (=> b!966142 (= e!623424 (findConcatSeparation!374 lt!347936 lt!347923 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566) s!10566))))

(declare-fun d!285817 () Bool)

(assert (=> d!285817 e!623423))

(declare-fun res!439295 () Bool)

(assert (=> d!285817 (=> res!439295 e!623423)))

(assert (=> d!285817 (= res!439295 e!623422)))

(declare-fun res!439294 () Bool)

(assert (=> d!285817 (=> (not res!439294) (not e!623422))))

(assert (=> d!285817 (= res!439294 (isDefined!1910 lt!348001))))

(assert (=> d!285817 (= lt!348001 e!623425)))

(declare-fun c!157416 () Bool)

(declare-fun e!623426 () Bool)

(assert (=> d!285817 (= c!157416 e!623426)))

(declare-fun res!439298 () Bool)

(assert (=> d!285817 (=> (not res!439298) (not e!623426))))

(assert (=> d!285817 (= res!439298 (matchR!1225 lt!347936 Nil!9901))))

(assert (=> d!285817 (validRegex!1156 lt!347936)))

(assert (=> d!285817 (= (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566) lt!348001)))

(declare-fun b!966143 () Bool)

(declare-fun res!439297 () Bool)

(assert (=> b!966143 (=> (not res!439297) (not e!623422))))

(assert (=> b!966143 (= res!439297 (matchR!1225 lt!347923 (_2!6452 (get!3395 lt!348001))))))

(declare-fun b!966144 () Bool)

(assert (=> b!966144 (= e!623425 e!623424)))

(declare-fun c!157417 () Bool)

(assert (=> b!966144 (= c!157417 ((_ is Nil!9901) s!10566))))

(declare-fun b!966145 () Bool)

(assert (=> b!966145 (= e!623422 (= (++!2675 (_1!6452 (get!3395 lt!348001)) (_2!6452 (get!3395 lt!348001))) s!10566))))

(declare-fun b!966146 () Bool)

(assert (=> b!966146 (= e!623426 (matchR!1225 lt!347923 s!10566))))

(assert (= (and d!285817 res!439298) b!966146))

(assert (= (and d!285817 c!157416) b!966140))

(assert (= (and d!285817 (not c!157416)) b!966144))

(assert (= (and b!966144 c!157417) b!966138))

(assert (= (and b!966144 (not c!157417)) b!966142))

(assert (= (and d!285817 res!439294) b!966141))

(assert (= (and b!966141 res!439296) b!966143))

(assert (= (and b!966143 res!439297) b!966145))

(assert (= (and d!285817 (not res!439295)) b!966139))

(declare-fun m!1172171 () Bool)

(assert (=> b!966145 m!1172171))

(declare-fun m!1172173 () Bool)

(assert (=> b!966145 m!1172173))

(declare-fun m!1172175 () Bool)

(assert (=> b!966139 m!1172175))

(assert (=> d!285817 m!1172175))

(declare-fun m!1172177 () Bool)

(assert (=> d!285817 m!1172177))

(declare-fun m!1172179 () Bool)

(assert (=> d!285817 m!1172179))

(assert (=> b!966146 m!1171949))

(assert (=> b!966143 m!1172171))

(declare-fun m!1172181 () Bool)

(assert (=> b!966143 m!1172181))

(assert (=> b!966141 m!1172171))

(declare-fun m!1172183 () Bool)

(assert (=> b!966141 m!1172183))

(declare-fun m!1172185 () Bool)

(assert (=> b!966142 m!1172185))

(assert (=> b!966142 m!1172185))

(declare-fun m!1172187 () Bool)

(assert (=> b!966142 m!1172187))

(declare-fun m!1172189 () Bool)

(assert (=> b!966142 m!1172189))

(assert (=> b!966142 m!1172185))

(declare-fun m!1172191 () Bool)

(assert (=> b!966142 m!1172191))

(assert (=> b!965678 d!285817))

(declare-fun bs!241577 () Bool)

(declare-fun b!966155 () Bool)

(assert (= bs!241577 (and b!966155 b!965684)))

(declare-fun lambda!34017 () Int)

(assert (=> bs!241577 (not (= lambda!34017 lambda!33987))))

(declare-fun bs!241578 () Bool)

(assert (= bs!241578 (and b!966155 b!965678)))

(assert (=> bs!241578 (= (= (reg!3016 lt!347923) lt!347936) (= lambda!34017 lambda!33990))))

(declare-fun bs!241579 () Bool)

(assert (= bs!241579 (and b!966155 b!965880)))

(assert (=> bs!241579 (= (and (= (reg!3016 lt!347923) (reg!3016 r!15766)) (= lt!347923 r!15766)) (= lambda!34017 lambda!34006))))

(assert (=> bs!241577 (= (and (= (reg!3016 lt!347923) (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!34017 lambda!33988))))

(declare-fun bs!241580 () Bool)

(assert (= bs!241580 (and b!966155 b!965872)))

(assert (=> bs!241580 (not (= lambda!34017 lambda!34009))))

(assert (=> bs!241578 (not (= lambda!34017 lambda!33989))))

(assert (=> b!966155 true))

(assert (=> b!966155 true))

(declare-fun bs!241581 () Bool)

(declare-fun b!966147 () Bool)

(assert (= bs!241581 (and b!966147 b!965684)))

(declare-fun lambda!34018 () Int)

(assert (=> bs!241581 (not (= lambda!34018 lambda!33987))))

(declare-fun bs!241582 () Bool)

(assert (= bs!241582 (and b!966147 b!965678)))

(assert (=> bs!241582 (not (= lambda!34018 lambda!33990))))

(declare-fun bs!241583 () Bool)

(assert (= bs!241583 (and b!966147 b!965880)))

(assert (=> bs!241583 (not (= lambda!34018 lambda!34006))))

(assert (=> bs!241581 (not (= lambda!34018 lambda!33988))))

(declare-fun bs!241584 () Bool)

(assert (= bs!241584 (and b!966147 b!966155)))

(assert (=> bs!241584 (not (= lambda!34018 lambda!34017))))

(declare-fun bs!241585 () Bool)

(assert (= bs!241585 (and b!966147 b!965872)))

(assert (=> bs!241585 (= (and (= (regOne!5886 lt!347923) (regOne!5886 r!15766)) (= (regTwo!5886 lt!347923) (regTwo!5886 r!15766))) (= lambda!34018 lambda!34009))))

(assert (=> bs!241582 (not (= lambda!34018 lambda!33989))))

(assert (=> b!966147 true))

(assert (=> b!966147 true))

(declare-fun bm!61054 () Bool)

(declare-fun call!61059 () Bool)

(assert (=> bm!61054 (= call!61059 (isEmpty!6205 s!10566))))

(declare-fun b!966148 () Bool)

(declare-fun c!157418 () Bool)

(assert (=> b!966148 (= c!157418 ((_ is ElementMatch!2687) lt!347923))))

(declare-fun e!623427 () Bool)

(declare-fun e!623428 () Bool)

(assert (=> b!966148 (= e!623427 e!623428)))

(declare-fun b!966149 () Bool)

(assert (=> b!966149 (= e!623428 (= s!10566 (Cons!9901 (c!157310 lt!347923) Nil!9901)))))

(declare-fun b!966150 () Bool)

(declare-fun e!623432 () Bool)

(declare-fun e!623433 () Bool)

(assert (=> b!966150 (= e!623432 e!623433)))

(declare-fun c!157420 () Bool)

(assert (=> b!966150 (= c!157420 ((_ is Star!2687) lt!347923))))

(declare-fun b!966151 () Bool)

(declare-fun e!623430 () Bool)

(assert (=> b!966151 (= e!623430 call!61059)))

(declare-fun b!966152 () Bool)

(assert (=> b!966152 (= e!623430 e!623427)))

(declare-fun res!439301 () Bool)

(assert (=> b!966152 (= res!439301 (not ((_ is EmptyLang!2687) lt!347923)))))

(assert (=> b!966152 (=> (not res!439301) (not e!623427))))

(declare-fun b!966153 () Bool)

(declare-fun c!157421 () Bool)

(assert (=> b!966153 (= c!157421 ((_ is Union!2687) lt!347923))))

(assert (=> b!966153 (= e!623428 e!623432)))

(declare-fun b!966154 () Bool)

(declare-fun res!439300 () Bool)

(declare-fun e!623429 () Bool)

(assert (=> b!966154 (=> res!439300 e!623429)))

(assert (=> b!966154 (= res!439300 call!61059)))

(assert (=> b!966154 (= e!623433 e!623429)))

(declare-fun d!285819 () Bool)

(declare-fun c!157419 () Bool)

(assert (=> d!285819 (= c!157419 ((_ is EmptyExpr!2687) lt!347923))))

(assert (=> d!285819 (= (matchRSpec!488 lt!347923 s!10566) e!623430)))

(declare-fun call!61060 () Bool)

(assert (=> b!966147 (= e!623433 call!61060)))

(assert (=> b!966155 (= e!623429 call!61060)))

(declare-fun bm!61055 () Bool)

(assert (=> bm!61055 (= call!61060 (Exists!430 (ite c!157420 lambda!34017 lambda!34018)))))

(declare-fun b!966156 () Bool)

(declare-fun e!623431 () Bool)

(assert (=> b!966156 (= e!623432 e!623431)))

(declare-fun res!439299 () Bool)

(assert (=> b!966156 (= res!439299 (matchRSpec!488 (regOne!5887 lt!347923) s!10566))))

(assert (=> b!966156 (=> res!439299 e!623431)))

(declare-fun b!966157 () Bool)

(assert (=> b!966157 (= e!623431 (matchRSpec!488 (regTwo!5887 lt!347923) s!10566))))

(assert (= (and d!285819 c!157419) b!966151))

(assert (= (and d!285819 (not c!157419)) b!966152))

(assert (= (and b!966152 res!439301) b!966148))

(assert (= (and b!966148 c!157418) b!966149))

(assert (= (and b!966148 (not c!157418)) b!966153))

(assert (= (and b!966153 c!157421) b!966156))

(assert (= (and b!966153 (not c!157421)) b!966150))

(assert (= (and b!966156 (not res!439299)) b!966157))

(assert (= (and b!966150 c!157420) b!966154))

(assert (= (and b!966150 (not c!157420)) b!966147))

(assert (= (and b!966154 (not res!439300)) b!966155))

(assert (= (or b!966155 b!966147) bm!61055))

(assert (= (or b!966151 b!966154) bm!61054))

(assert (=> bm!61054 m!1171903))

(declare-fun m!1172193 () Bool)

(assert (=> bm!61055 m!1172193))

(declare-fun m!1172195 () Bool)

(assert (=> b!966156 m!1172195))

(declare-fun m!1172197 () Bool)

(assert (=> b!966157 m!1172197))

(assert (=> b!965678 d!285819))

(declare-fun d!285821 () Bool)

(declare-fun choose!6105 (Int) Bool)

(assert (=> d!285821 (= (Exists!430 lambda!33989) (choose!6105 lambda!33989))))

(declare-fun bs!241586 () Bool)

(assert (= bs!241586 d!285821))

(declare-fun m!1172199 () Bool)

(assert (=> bs!241586 m!1172199))

(assert (=> b!965678 d!285821))

(declare-fun d!285823 () Bool)

(assert (=> d!285823 (= (matchR!1225 lt!347923 s!10566) (matchRSpec!488 lt!347923 s!10566))))

(declare-fun lt!348004 () Unit!15029)

(assert (=> d!285823 (= lt!348004 (choose!6103 lt!347923 s!10566))))

(assert (=> d!285823 (validRegex!1156 lt!347923)))

(assert (=> d!285823 (= (mainMatchTheorem!488 lt!347923 s!10566) lt!348004)))

(declare-fun bs!241587 () Bool)

(assert (= bs!241587 d!285823))

(assert (=> bs!241587 m!1171949))

(assert (=> bs!241587 m!1171909))

(declare-fun m!1172201 () Bool)

(assert (=> bs!241587 m!1172201))

(assert (=> bs!241587 m!1172165))

(assert (=> b!965678 d!285823))

(declare-fun d!285825 () Bool)

(declare-fun isEmpty!6207 (Option!2268) Bool)

(assert (=> d!285825 (= (isDefined!1910 lt!347937) (not (isEmpty!6207 lt!347937)))))

(declare-fun bs!241588 () Bool)

(assert (= bs!241588 d!285825))

(declare-fun m!1172203 () Bool)

(assert (=> bs!241588 m!1172203))

(assert (=> b!965678 d!285825))

(declare-fun bs!241589 () Bool)

(declare-fun d!285827 () Bool)

(assert (= bs!241589 (and d!285827 b!965684)))

(declare-fun lambda!34021 () Int)

(assert (=> bs!241589 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!34021 lambda!33987))))

(declare-fun bs!241590 () Bool)

(assert (= bs!241590 (and d!285827 b!965678)))

(assert (=> bs!241590 (not (= lambda!34021 lambda!33990))))

(declare-fun bs!241591 () Bool)

(assert (= bs!241591 (and d!285827 b!965880)))

(assert (=> bs!241591 (not (= lambda!34021 lambda!34006))))

(assert (=> bs!241589 (not (= lambda!34021 lambda!33988))))

(declare-fun bs!241592 () Bool)

(assert (= bs!241592 (and d!285827 b!966147)))

(assert (=> bs!241592 (not (= lambda!34021 lambda!34018))))

(declare-fun bs!241593 () Bool)

(assert (= bs!241593 (and d!285827 b!966155)))

(assert (=> bs!241593 (not (= lambda!34021 lambda!34017))))

(declare-fun bs!241594 () Bool)

(assert (= bs!241594 (and d!285827 b!965872)))

(assert (=> bs!241594 (not (= lambda!34021 lambda!34009))))

(assert (=> bs!241590 (= lambda!34021 lambda!33989)))

(assert (=> d!285827 true))

(assert (=> d!285827 true))

(assert (=> d!285827 true))

(assert (=> d!285827 (= (isDefined!1910 (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566)) (Exists!430 lambda!34021))))

(declare-fun lt!348007 () Unit!15029)

(declare-fun choose!6106 (Regex!2687 Regex!2687 List!9917) Unit!15029)

(assert (=> d!285827 (= lt!348007 (choose!6106 lt!347936 lt!347923 s!10566))))

(assert (=> d!285827 (validRegex!1156 lt!347936)))

(assert (=> d!285827 (= (lemmaFindConcatSeparationEquivalentToExists!374 lt!347936 lt!347923 s!10566) lt!348007)))

(declare-fun bs!241595 () Bool)

(assert (= bs!241595 d!285827))

(assert (=> bs!241595 m!1171905))

(declare-fun m!1172205 () Bool)

(assert (=> bs!241595 m!1172205))

(assert (=> bs!241595 m!1171905))

(assert (=> bs!241595 m!1172179))

(declare-fun m!1172207 () Bool)

(assert (=> bs!241595 m!1172207))

(declare-fun m!1172209 () Bool)

(assert (=> bs!241595 m!1172209))

(assert (=> b!965678 d!285827))

(declare-fun d!285829 () Bool)

(assert (=> d!285829 (= (Exists!430 lambda!33990) (choose!6105 lambda!33990))))

(declare-fun bs!241596 () Bool)

(assert (= bs!241596 d!285829))

(declare-fun m!1172211 () Bool)

(assert (=> bs!241596 m!1172211))

(assert (=> b!965678 d!285829))

(declare-fun bs!241597 () Bool)

(declare-fun d!285831 () Bool)

(assert (= bs!241597 (and d!285831 b!965684)))

(declare-fun lambda!34026 () Int)

(assert (=> bs!241597 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) lt!347931)) (= lambda!34026 lambda!33987))))

(declare-fun bs!241598 () Bool)

(assert (= bs!241598 (and d!285831 b!965678)))

(assert (=> bs!241598 (not (= lambda!34026 lambda!33990))))

(declare-fun bs!241599 () Bool)

(assert (= bs!241599 (and d!285831 b!965880)))

(assert (=> bs!241599 (not (= lambda!34026 lambda!34006))))

(assert (=> bs!241597 (not (= lambda!34026 lambda!33988))))

(declare-fun bs!241600 () Bool)

(assert (= bs!241600 (and d!285831 b!966147)))

(assert (=> bs!241600 (not (= lambda!34026 lambda!34018))))

(declare-fun bs!241601 () Bool)

(assert (= bs!241601 (and d!285831 b!966155)))

(assert (=> bs!241601 (not (= lambda!34026 lambda!34017))))

(declare-fun bs!241602 () Bool)

(assert (= bs!241602 (and d!285831 d!285827)))

(assert (=> bs!241602 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34026 lambda!34021))))

(declare-fun bs!241603 () Bool)

(assert (= bs!241603 (and d!285831 b!965872)))

(assert (=> bs!241603 (not (= lambda!34026 lambda!34009))))

(assert (=> bs!241598 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34026 lambda!33989))))

(assert (=> d!285831 true))

(assert (=> d!285831 true))

(declare-fun bs!241604 () Bool)

(assert (= bs!241604 d!285831))

(declare-fun lambda!34027 () Int)

(assert (=> bs!241604 (not (= lambda!34027 lambda!34026))))

(assert (=> bs!241597 (not (= lambda!34027 lambda!33987))))

(assert (=> bs!241598 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34027 lambda!33990))))

(assert (=> bs!241599 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) r!15766)) (= lambda!34027 lambda!34006))))

(assert (=> bs!241597 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) lt!347931)) (= lambda!34027 lambda!33988))))

(assert (=> bs!241600 (not (= lambda!34027 lambda!34018))))

(assert (=> bs!241601 (= (and (= lt!347936 (reg!3016 lt!347923)) (= (Star!2687 lt!347936) lt!347923)) (= lambda!34027 lambda!34017))))

(assert (=> bs!241602 (not (= lambda!34027 lambda!34021))))

(assert (=> bs!241603 (not (= lambda!34027 lambda!34009))))

(assert (=> bs!241598 (not (= lambda!34027 lambda!33989))))

(assert (=> d!285831 true))

(assert (=> d!285831 true))

(assert (=> d!285831 (= (Exists!430 lambda!34026) (Exists!430 lambda!34027))))

(declare-fun lt!348010 () Unit!15029)

(declare-fun choose!6107 (Regex!2687 List!9917) Unit!15029)

(assert (=> d!285831 (= lt!348010 (choose!6107 lt!347936 s!10566))))

(assert (=> d!285831 (validRegex!1156 lt!347936)))

(assert (=> d!285831 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!148 lt!347936 s!10566) lt!348010)))

(declare-fun m!1172213 () Bool)

(assert (=> bs!241604 m!1172213))

(declare-fun m!1172215 () Bool)

(assert (=> bs!241604 m!1172215))

(declare-fun m!1172217 () Bool)

(assert (=> bs!241604 m!1172217))

(assert (=> bs!241604 m!1172179))

(assert (=> b!965678 d!285831))

(declare-fun d!285833 () Bool)

(declare-fun lt!348013 () Int)

(assert (=> d!285833 (>= lt!348013 0)))

(declare-fun e!623442 () Int)

(assert (=> d!285833 (= lt!348013 e!623442)))

(declare-fun c!157424 () Bool)

(assert (=> d!285833 (= c!157424 ((_ is Nil!9901) s!10566))))

(assert (=> d!285833 (= (size!7937 s!10566) lt!348013)))

(declare-fun b!966176 () Bool)

(assert (=> b!966176 (= e!623442 0)))

(declare-fun b!966177 () Bool)

(assert (=> b!966177 (= e!623442 (+ 1 (size!7937 (t!100963 s!10566))))))

(assert (= (and d!285833 c!157424) b!966176))

(assert (= (and d!285833 (not c!157424)) b!966177))

(declare-fun m!1172219 () Bool)

(assert (=> b!966177 m!1172219))

(assert (=> b!965683 d!285833))

(declare-fun d!285835 () Bool)

(declare-fun lt!348014 () Int)

(assert (=> d!285835 (>= lt!348014 0)))

(declare-fun e!623443 () Int)

(assert (=> d!285835 (= lt!348014 e!623443)))

(declare-fun c!157425 () Bool)

(assert (=> d!285835 (= c!157425 ((_ is Nil!9901) (_2!6452 lt!347938)))))

(assert (=> d!285835 (= (size!7937 (_2!6452 lt!347938)) lt!348014)))

(declare-fun b!966178 () Bool)

(assert (=> b!966178 (= e!623443 0)))

(declare-fun b!966179 () Bool)

(assert (=> b!966179 (= e!623443 (+ 1 (size!7937 (t!100963 (_2!6452 lt!347938)))))))

(assert (= (and d!285835 c!157425) b!966178))

(assert (= (and d!285835 (not c!157425)) b!966179))

(declare-fun m!1172221 () Bool)

(assert (=> b!966179 m!1172221))

(assert (=> b!965683 d!285835))

(declare-fun b!966180 () Bool)

(declare-fun e!623447 () Bool)

(assert (=> b!966180 (= e!623447 (= (head!1776 (_1!6452 lt!347938)) (c!157310 (reg!3016 r!15766))))))

(declare-fun b!966181 () Bool)

(declare-fun e!623448 () Bool)

(declare-fun lt!348015 () Bool)

(declare-fun call!61061 () Bool)

(assert (=> b!966181 (= e!623448 (= lt!348015 call!61061))))

(declare-fun b!966182 () Bool)

(declare-fun e!623450 () Bool)

(assert (=> b!966182 (= e!623450 (nullable!815 (reg!3016 r!15766)))))

(declare-fun b!966183 () Bool)

(declare-fun res!439320 () Bool)

(declare-fun e!623446 () Bool)

(assert (=> b!966183 (=> res!439320 e!623446)))

(assert (=> b!966183 (= res!439320 (not ((_ is ElementMatch!2687) (reg!3016 r!15766))))))

(declare-fun e!623449 () Bool)

(assert (=> b!966183 (= e!623449 e!623446)))

(declare-fun b!966184 () Bool)

(declare-fun e!623445 () Bool)

(assert (=> b!966184 (= e!623445 (not (= (head!1776 (_1!6452 lt!347938)) (c!157310 (reg!3016 r!15766)))))))

(declare-fun b!966185 () Bool)

(declare-fun res!439321 () Bool)

(assert (=> b!966185 (=> res!439321 e!623446)))

(assert (=> b!966185 (= res!439321 e!623447)))

(declare-fun res!439318 () Bool)

(assert (=> b!966185 (=> (not res!439318) (not e!623447))))

(assert (=> b!966185 (= res!439318 lt!348015)))

(declare-fun b!966186 () Bool)

(declare-fun e!623444 () Bool)

(assert (=> b!966186 (= e!623446 e!623444)))

(declare-fun res!439319 () Bool)

(assert (=> b!966186 (=> (not res!439319) (not e!623444))))

(assert (=> b!966186 (= res!439319 (not lt!348015))))

(declare-fun b!966187 () Bool)

(declare-fun res!439323 () Bool)

(assert (=> b!966187 (=> res!439323 e!623445)))

(assert (=> b!966187 (= res!439323 (not (isEmpty!6205 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun b!966188 () Bool)

(declare-fun res!439317 () Bool)

(assert (=> b!966188 (=> (not res!439317) (not e!623447))))

(assert (=> b!966188 (= res!439317 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(declare-fun d!285837 () Bool)

(assert (=> d!285837 e!623448))

(declare-fun c!157427 () Bool)

(assert (=> d!285837 (= c!157427 ((_ is EmptyExpr!2687) (reg!3016 r!15766)))))

(assert (=> d!285837 (= lt!348015 e!623450)))

(declare-fun c!157428 () Bool)

(assert (=> d!285837 (= c!157428 (isEmpty!6205 (_1!6452 lt!347938)))))

(assert (=> d!285837 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285837 (= (matchR!1225 (reg!3016 r!15766) (_1!6452 lt!347938)) lt!348015)))

(declare-fun b!966189 () Bool)

(assert (=> b!966189 (= e!623448 e!623449)))

(declare-fun c!157426 () Bool)

(assert (=> b!966189 (= c!157426 ((_ is EmptyLang!2687) (reg!3016 r!15766)))))

(declare-fun b!966190 () Bool)

(assert (=> b!966190 (= e!623450 (matchR!1225 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))) (tail!1338 (_1!6452 lt!347938))))))

(declare-fun b!966191 () Bool)

(assert (=> b!966191 (= e!623449 (not lt!348015))))

(declare-fun bm!61056 () Bool)

(assert (=> bm!61056 (= call!61061 (isEmpty!6205 (_1!6452 lt!347938)))))

(declare-fun b!966192 () Bool)

(declare-fun res!439316 () Bool)

(assert (=> b!966192 (=> (not res!439316) (not e!623447))))

(assert (=> b!966192 (= res!439316 (not call!61061))))

(declare-fun b!966193 () Bool)

(assert (=> b!966193 (= e!623444 e!623445)))

(declare-fun res!439322 () Bool)

(assert (=> b!966193 (=> res!439322 e!623445)))

(assert (=> b!966193 (= res!439322 call!61061)))

(assert (= (and d!285837 c!157428) b!966182))

(assert (= (and d!285837 (not c!157428)) b!966190))

(assert (= (and d!285837 c!157427) b!966181))

(assert (= (and d!285837 (not c!157427)) b!966189))

(assert (= (and b!966189 c!157426) b!966191))

(assert (= (and b!966189 (not c!157426)) b!966183))

(assert (= (and b!966183 (not res!439320)) b!966185))

(assert (= (and b!966185 res!439318) b!966192))

(assert (= (and b!966192 res!439316) b!966188))

(assert (= (and b!966188 res!439317) b!966180))

(assert (= (and b!966185 (not res!439321)) b!966186))

(assert (= (and b!966186 res!439319) b!966193))

(assert (= (and b!966193 (not res!439322)) b!966187))

(assert (= (and b!966187 (not res!439323)) b!966184))

(assert (= (or b!966181 b!966192 b!966193) bm!61056))

(declare-fun m!1172223 () Bool)

(assert (=> b!966188 m!1172223))

(assert (=> b!966188 m!1172223))

(declare-fun m!1172225 () Bool)

(assert (=> b!966188 m!1172225))

(declare-fun m!1172227 () Bool)

(assert (=> b!966182 m!1172227))

(assert (=> b!966187 m!1172223))

(assert (=> b!966187 m!1172223))

(assert (=> b!966187 m!1172225))

(declare-fun m!1172229 () Bool)

(assert (=> b!966180 m!1172229))

(assert (=> b!966190 m!1172229))

(assert (=> b!966190 m!1172229))

(declare-fun m!1172231 () Bool)

(assert (=> b!966190 m!1172231))

(assert (=> b!966190 m!1172223))

(assert (=> b!966190 m!1172231))

(assert (=> b!966190 m!1172223))

(declare-fun m!1172233 () Bool)

(assert (=> b!966190 m!1172233))

(assert (=> b!966184 m!1172229))

(assert (=> d!285837 m!1171891))

(declare-fun m!1172235 () Bool)

(assert (=> d!285837 m!1172235))

(assert (=> bm!61056 m!1171891))

(assert (=> b!965683 d!285837))

(declare-fun d!285839 () Bool)

(assert (=> d!285839 (= (matchR!1225 (reg!3016 r!15766) (_1!6452 lt!347938)) (matchR!1225 (removeUselessConcat!334 (reg!3016 r!15766)) (_1!6452 lt!347938)))))

(declare-fun lt!348018 () Unit!15029)

(declare-fun choose!6108 (Regex!2687 List!9917) Unit!15029)

(assert (=> d!285839 (= lt!348018 (choose!6108 (reg!3016 r!15766) (_1!6452 lt!347938)))))

(assert (=> d!285839 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285839 (= (lemmaRemoveUselessConcatSound!186 (reg!3016 r!15766) (_1!6452 lt!347938)) lt!348018)))

(declare-fun bs!241605 () Bool)

(assert (= bs!241605 d!285839))

(assert (=> bs!241605 m!1171915))

(assert (=> bs!241605 m!1171945))

(declare-fun m!1172237 () Bool)

(assert (=> bs!241605 m!1172237))

(assert (=> bs!241605 m!1172235))

(assert (=> bs!241605 m!1171945))

(declare-fun m!1172239 () Bool)

(assert (=> bs!241605 m!1172239))

(assert (=> b!965683 d!285839))

(declare-fun d!285841 () Bool)

(assert (=> d!285841 (= (Exists!430 lambda!33988) (choose!6105 lambda!33988))))

(declare-fun bs!241606 () Bool)

(assert (= bs!241606 d!285841))

(declare-fun m!1172241 () Bool)

(assert (=> bs!241606 m!1172241))

(assert (=> b!965684 d!285841))

(declare-fun bs!241607 () Bool)

(declare-fun d!285843 () Bool)

(assert (= bs!241607 (and d!285843 d!285831)))

(declare-fun lambda!34028 () Int)

(assert (=> bs!241607 (not (= lambda!34028 lambda!34027))))

(assert (=> bs!241607 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34028 lambda!34026))))

(declare-fun bs!241608 () Bool)

(assert (= bs!241608 (and d!285843 b!965684)))

(assert (=> bs!241608 (= (= (Star!2687 (reg!3016 r!15766)) lt!347931) (= lambda!34028 lambda!33987))))

(declare-fun bs!241609 () Bool)

(assert (= bs!241609 (and d!285843 b!965678)))

(assert (=> bs!241609 (not (= lambda!34028 lambda!33990))))

(declare-fun bs!241610 () Bool)

(assert (= bs!241610 (and d!285843 b!965880)))

(assert (=> bs!241610 (not (= lambda!34028 lambda!34006))))

(assert (=> bs!241608 (not (= lambda!34028 lambda!33988))))

(declare-fun bs!241611 () Bool)

(assert (= bs!241611 (and d!285843 b!966147)))

(assert (=> bs!241611 (not (= lambda!34028 lambda!34018))))

(declare-fun bs!241612 () Bool)

(assert (= bs!241612 (and d!285843 b!966155)))

(assert (=> bs!241612 (not (= lambda!34028 lambda!34017))))

(declare-fun bs!241613 () Bool)

(assert (= bs!241613 (and d!285843 d!285827)))

(assert (=> bs!241613 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34028 lambda!34021))))

(declare-fun bs!241614 () Bool)

(assert (= bs!241614 (and d!285843 b!965872)))

(assert (=> bs!241614 (not (= lambda!34028 lambda!34009))))

(assert (=> bs!241609 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34028 lambda!33989))))

(assert (=> d!285843 true))

(assert (=> d!285843 true))

(declare-fun lambda!34029 () Int)

(assert (=> bs!241607 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34029 lambda!34027))))

(assert (=> bs!241607 (not (= lambda!34029 lambda!34026))))

(assert (=> bs!241608 (not (= lambda!34029 lambda!33987))))

(declare-fun bs!241615 () Bool)

(assert (= bs!241615 d!285843))

(assert (=> bs!241615 (not (= lambda!34029 lambda!34028))))

(assert (=> bs!241609 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34029 lambda!33990))))

(assert (=> bs!241610 (= (= (Star!2687 (reg!3016 r!15766)) r!15766) (= lambda!34029 lambda!34006))))

(assert (=> bs!241608 (= (= (Star!2687 (reg!3016 r!15766)) lt!347931) (= lambda!34029 lambda!33988))))

(assert (=> bs!241611 (not (= lambda!34029 lambda!34018))))

(assert (=> bs!241612 (= (and (= (reg!3016 r!15766) (reg!3016 lt!347923)) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34029 lambda!34017))))

(assert (=> bs!241613 (not (= lambda!34029 lambda!34021))))

(assert (=> bs!241614 (not (= lambda!34029 lambda!34009))))

(assert (=> bs!241609 (not (= lambda!34029 lambda!33989))))

(assert (=> d!285843 true))

(assert (=> d!285843 true))

(assert (=> d!285843 (= (Exists!430 lambda!34028) (Exists!430 lambda!34029))))

(declare-fun lt!348019 () Unit!15029)

(assert (=> d!285843 (= lt!348019 (choose!6107 (reg!3016 r!15766) s!10566))))

(assert (=> d!285843 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285843 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!148 (reg!3016 r!15766) s!10566) lt!348019)))

(declare-fun m!1172243 () Bool)

(assert (=> bs!241615 m!1172243))

(declare-fun m!1172245 () Bool)

(assert (=> bs!241615 m!1172245))

(declare-fun m!1172247 () Bool)

(assert (=> bs!241615 m!1172247))

(assert (=> bs!241615 m!1172235))

(assert (=> b!965684 d!285843))

(declare-fun d!285845 () Bool)

(assert (=> d!285845 (= (Exists!430 lambda!33987) (choose!6105 lambda!33987))))

(declare-fun bs!241616 () Bool)

(assert (= bs!241616 d!285845))

(declare-fun m!1172249 () Bool)

(assert (=> bs!241616 m!1172249))

(assert (=> b!965684 d!285845))

(declare-fun b!966216 () Bool)

(declare-fun e!623464 () Regex!2687)

(declare-fun call!61073 () Regex!2687)

(assert (=> b!966216 (= e!623464 call!61073)))

(declare-fun bm!61067 () Bool)

(declare-fun call!61074 () Regex!2687)

(declare-fun c!157440 () Bool)

(assert (=> bm!61067 (= call!61074 (removeUselessConcat!334 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))

(declare-fun b!966217 () Bool)

(declare-fun c!157443 () Bool)

(assert (=> b!966217 (= c!157443 ((_ is Star!2687) (reg!3016 r!15766)))))

(declare-fun e!623467 () Regex!2687)

(declare-fun e!623463 () Regex!2687)

(assert (=> b!966217 (= e!623467 e!623463)))

(declare-fun b!966218 () Bool)

(declare-fun e!623466 () Regex!2687)

(assert (=> b!966218 (= e!623464 e!623466)))

(declare-fun c!157439 () Bool)

(assert (=> b!966218 (= c!157439 (and ((_ is Concat!4520) (reg!3016 r!15766)) ((_ is EmptyExpr!2687) (regTwo!5886 (reg!3016 r!15766)))))))

(declare-fun b!966219 () Bool)

(declare-fun e!623465 () Regex!2687)

(declare-fun call!61076 () Regex!2687)

(assert (=> b!966219 (= e!623465 (Concat!4520 call!61076 call!61074))))

(declare-fun c!157442 () Bool)

(declare-fun c!157441 () Bool)

(declare-fun bm!61068 () Bool)

(assert (=> bm!61068 (= call!61073 (removeUselessConcat!334 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))

(declare-fun b!966220 () Bool)

(assert (=> b!966220 (= e!623465 e!623467)))

(assert (=> b!966220 (= c!157442 ((_ is Union!2687) (reg!3016 r!15766)))))

(declare-fun b!966221 () Bool)

(declare-fun call!61075 () Regex!2687)

(assert (=> b!966221 (= e!623463 (Star!2687 call!61075))))

(declare-fun bm!61069 () Bool)

(declare-fun call!61072 () Regex!2687)

(assert (=> bm!61069 (= call!61076 call!61072)))

(declare-fun bm!61070 () Bool)

(assert (=> bm!61070 (= call!61075 call!61076)))

(declare-fun b!966222 () Bool)

(assert (=> b!966222 (= c!157440 ((_ is Concat!4520) (reg!3016 r!15766)))))

(assert (=> b!966222 (= e!623466 e!623465)))

(declare-fun d!285847 () Bool)

(declare-fun e!623468 () Bool)

(assert (=> d!285847 e!623468))

(declare-fun res!439326 () Bool)

(assert (=> d!285847 (=> (not res!439326) (not e!623468))))

(declare-fun lt!348022 () Regex!2687)

(assert (=> d!285847 (= res!439326 (validRegex!1156 lt!348022))))

(assert (=> d!285847 (= lt!348022 e!623464)))

(assert (=> d!285847 (= c!157441 (and ((_ is Concat!4520) (reg!3016 r!15766)) ((_ is EmptyExpr!2687) (regOne!5886 (reg!3016 r!15766)))))))

(assert (=> d!285847 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285847 (= (removeUselessConcat!334 (reg!3016 r!15766)) lt!348022)))

(declare-fun b!966223 () Bool)

(assert (=> b!966223 (= e!623467 (Union!2687 call!61074 call!61075))))

(declare-fun b!966224 () Bool)

(assert (=> b!966224 (= e!623466 call!61072)))

(declare-fun b!966225 () Bool)

(assert (=> b!966225 (= e!623463 (reg!3016 r!15766))))

(declare-fun b!966226 () Bool)

(assert (=> b!966226 (= e!623468 (= (nullable!815 lt!348022) (nullable!815 (reg!3016 r!15766))))))

(declare-fun bm!61071 () Bool)

(assert (=> bm!61071 (= call!61072 call!61073)))

(assert (= (and d!285847 c!157441) b!966216))

(assert (= (and d!285847 (not c!157441)) b!966218))

(assert (= (and b!966218 c!157439) b!966224))

(assert (= (and b!966218 (not c!157439)) b!966222))

(assert (= (and b!966222 c!157440) b!966219))

(assert (= (and b!966222 (not c!157440)) b!966220))

(assert (= (and b!966220 c!157442) b!966223))

(assert (= (and b!966220 (not c!157442)) b!966217))

(assert (= (and b!966217 c!157443) b!966221))

(assert (= (and b!966217 (not c!157443)) b!966225))

(assert (= (or b!966223 b!966221) bm!61070))

(assert (= (or b!966219 b!966223) bm!61067))

(assert (= (or b!966219 bm!61070) bm!61069))

(assert (= (or b!966224 bm!61069) bm!61071))

(assert (= (or b!966216 bm!61071) bm!61068))

(assert (= (and d!285847 res!439326) b!966226))

(declare-fun m!1172251 () Bool)

(assert (=> bm!61067 m!1172251))

(declare-fun m!1172253 () Bool)

(assert (=> bm!61068 m!1172253))

(declare-fun m!1172255 () Bool)

(assert (=> d!285847 m!1172255))

(assert (=> d!285847 m!1172235))

(declare-fun m!1172257 () Bool)

(assert (=> b!966226 m!1172257))

(assert (=> b!966226 m!1172227))

(assert (=> b!965684 d!285847))

(declare-fun b!966227 () Bool)

(declare-fun e!623471 () Option!2268)

(assert (=> b!966227 (= e!623471 None!2267)))

(declare-fun b!966228 () Bool)

(declare-fun e!623470 () Bool)

(declare-fun lt!348023 () Option!2268)

(assert (=> b!966228 (= e!623470 (not (isDefined!1910 lt!348023)))))

(declare-fun b!966229 () Bool)

(declare-fun e!623472 () Option!2268)

(assert (=> b!966229 (= e!623472 (Some!2267 (tuple2!11253 Nil!9901 s!10566)))))

(declare-fun b!966230 () Bool)

(declare-fun res!439329 () Bool)

(declare-fun e!623469 () Bool)

(assert (=> b!966230 (=> (not res!439329) (not e!623469))))

(assert (=> b!966230 (= res!439329 (matchR!1225 (reg!3016 r!15766) (_1!6452 (get!3395 lt!348023))))))

(declare-fun b!966231 () Bool)

(declare-fun lt!348024 () Unit!15029)

(declare-fun lt!348025 () Unit!15029)

(assert (=> b!966231 (= lt!348024 lt!348025)))

(assert (=> b!966231 (= (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566)) s!10566)))

(assert (=> b!966231 (= lt!348025 (lemmaMoveElementToOtherListKeepsConcatEq!278 Nil!9901 (h!15302 s!10566) (t!100963 s!10566) s!10566))))

(assert (=> b!966231 (= e!623471 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566) s!10566))))

(declare-fun d!285849 () Bool)

(assert (=> d!285849 e!623470))

(declare-fun res!439328 () Bool)

(assert (=> d!285849 (=> res!439328 e!623470)))

(assert (=> d!285849 (= res!439328 e!623469)))

(declare-fun res!439327 () Bool)

(assert (=> d!285849 (=> (not res!439327) (not e!623469))))

(assert (=> d!285849 (= res!439327 (isDefined!1910 lt!348023))))

(assert (=> d!285849 (= lt!348023 e!623472)))

(declare-fun c!157444 () Bool)

(declare-fun e!623473 () Bool)

(assert (=> d!285849 (= c!157444 e!623473)))

(declare-fun res!439331 () Bool)

(assert (=> d!285849 (=> (not res!439331) (not e!623473))))

(assert (=> d!285849 (= res!439331 (matchR!1225 (reg!3016 r!15766) Nil!9901))))

(assert (=> d!285849 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285849 (= (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566) lt!348023)))

(declare-fun b!966232 () Bool)

(declare-fun res!439330 () Bool)

(assert (=> b!966232 (=> (not res!439330) (not e!623469))))

(assert (=> b!966232 (= res!439330 (matchR!1225 lt!347931 (_2!6452 (get!3395 lt!348023))))))

(declare-fun b!966233 () Bool)

(assert (=> b!966233 (= e!623472 e!623471)))

(declare-fun c!157445 () Bool)

(assert (=> b!966233 (= c!157445 ((_ is Nil!9901) s!10566))))

(declare-fun b!966234 () Bool)

(assert (=> b!966234 (= e!623469 (= (++!2675 (_1!6452 (get!3395 lt!348023)) (_2!6452 (get!3395 lt!348023))) s!10566))))

(declare-fun b!966235 () Bool)

(assert (=> b!966235 (= e!623473 (matchR!1225 lt!347931 s!10566))))

(assert (= (and d!285849 res!439331) b!966235))

(assert (= (and d!285849 c!157444) b!966229))

(assert (= (and d!285849 (not c!157444)) b!966233))

(assert (= (and b!966233 c!157445) b!966227))

(assert (= (and b!966233 (not c!157445)) b!966231))

(assert (= (and d!285849 res!439327) b!966230))

(assert (= (and b!966230 res!439329) b!966232))

(assert (= (and b!966232 res!439330) b!966234))

(assert (= (and d!285849 (not res!439328)) b!966228))

(declare-fun m!1172259 () Bool)

(assert (=> b!966234 m!1172259))

(declare-fun m!1172261 () Bool)

(assert (=> b!966234 m!1172261))

(declare-fun m!1172263 () Bool)

(assert (=> b!966228 m!1172263))

(assert (=> d!285849 m!1172263))

(declare-fun m!1172265 () Bool)

(assert (=> d!285849 m!1172265))

(assert (=> d!285849 m!1172235))

(declare-fun m!1172267 () Bool)

(assert (=> b!966235 m!1172267))

(assert (=> b!966232 m!1172259))

(declare-fun m!1172269 () Bool)

(assert (=> b!966232 m!1172269))

(assert (=> b!966230 m!1172259))

(declare-fun m!1172271 () Bool)

(assert (=> b!966230 m!1172271))

(assert (=> b!966231 m!1172185))

(assert (=> b!966231 m!1172185))

(assert (=> b!966231 m!1172187))

(assert (=> b!966231 m!1172189))

(assert (=> b!966231 m!1172185))

(declare-fun m!1172273 () Bool)

(assert (=> b!966231 m!1172273))

(assert (=> b!965684 d!285849))

(declare-fun d!285851 () Bool)

(assert (=> d!285851 (= (isDefined!1910 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566)) (not (isEmpty!6207 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566))))))

(declare-fun bs!241617 () Bool)

(assert (= bs!241617 d!285851))

(assert (=> bs!241617 m!1171939))

(declare-fun m!1172275 () Bool)

(assert (=> bs!241617 m!1172275))

(assert (=> b!965684 d!285851))

(declare-fun bs!241618 () Bool)

(declare-fun d!285853 () Bool)

(assert (= bs!241618 (and d!285853 d!285831)))

(declare-fun lambda!34030 () Int)

(assert (=> bs!241618 (not (= lambda!34030 lambda!34027))))

(assert (=> bs!241618 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 (Star!2687 lt!347936))) (= lambda!34030 lambda!34026))))

(declare-fun bs!241619 () Bool)

(assert (= bs!241619 (and d!285853 b!965684)))

(assert (=> bs!241619 (= lambda!34030 lambda!33987)))

(declare-fun bs!241620 () Bool)

(assert (= bs!241620 (and d!285853 d!285843)))

(assert (=> bs!241620 (= (= lt!347931 (Star!2687 (reg!3016 r!15766))) (= lambda!34030 lambda!34028))))

(declare-fun bs!241621 () Bool)

(assert (= bs!241621 (and d!285853 b!965678)))

(assert (=> bs!241621 (not (= lambda!34030 lambda!33990))))

(declare-fun bs!241622 () Bool)

(assert (= bs!241622 (and d!285853 b!965880)))

(assert (=> bs!241622 (not (= lambda!34030 lambda!34006))))

(declare-fun bs!241623 () Bool)

(assert (= bs!241623 (and d!285853 b!966147)))

(assert (=> bs!241623 (not (= lambda!34030 lambda!34018))))

(declare-fun bs!241624 () Bool)

(assert (= bs!241624 (and d!285853 b!966155)))

(assert (=> bs!241624 (not (= lambda!34030 lambda!34017))))

(declare-fun bs!241625 () Bool)

(assert (= bs!241625 (and d!285853 d!285827)))

(assert (=> bs!241625 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 lt!347923)) (= lambda!34030 lambda!34021))))

(declare-fun bs!241626 () Bool)

(assert (= bs!241626 (and d!285853 b!965872)))

(assert (=> bs!241626 (not (= lambda!34030 lambda!34009))))

(assert (=> bs!241621 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 lt!347923)) (= lambda!34030 lambda!33989))))

(assert (=> bs!241619 (not (= lambda!34030 lambda!33988))))

(assert (=> bs!241620 (not (= lambda!34030 lambda!34029))))

(assert (=> d!285853 true))

(assert (=> d!285853 true))

(assert (=> d!285853 true))

(assert (=> d!285853 (= (isDefined!1910 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566)) (Exists!430 lambda!34030))))

(declare-fun lt!348026 () Unit!15029)

(assert (=> d!285853 (= lt!348026 (choose!6106 (reg!3016 r!15766) lt!347931 s!10566))))

(assert (=> d!285853 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!285853 (= (lemmaFindConcatSeparationEquivalentToExists!374 (reg!3016 r!15766) lt!347931 s!10566) lt!348026)))

(declare-fun bs!241627 () Bool)

(assert (= bs!241627 d!285853))

(assert (=> bs!241627 m!1171939))

(assert (=> bs!241627 m!1171941))

(assert (=> bs!241627 m!1171939))

(assert (=> bs!241627 m!1172235))

(declare-fun m!1172277 () Bool)

(assert (=> bs!241627 m!1172277))

(declare-fun m!1172279 () Bool)

(assert (=> bs!241627 m!1172279))

(assert (=> b!965684 d!285853))

(declare-fun b!966236 () Bool)

(declare-fun e!623477 () Bool)

(assert (=> b!966236 (= e!623477 (= (head!1776 s!10566) (c!157310 lt!347923)))))

(declare-fun b!966237 () Bool)

(declare-fun e!623478 () Bool)

(declare-fun lt!348027 () Bool)

(declare-fun call!61077 () Bool)

(assert (=> b!966237 (= e!623478 (= lt!348027 call!61077))))

(declare-fun b!966238 () Bool)

(declare-fun e!623480 () Bool)

(assert (=> b!966238 (= e!623480 (nullable!815 lt!347923))))

(declare-fun b!966239 () Bool)

(declare-fun res!439336 () Bool)

(declare-fun e!623476 () Bool)

(assert (=> b!966239 (=> res!439336 e!623476)))

(assert (=> b!966239 (= res!439336 (not ((_ is ElementMatch!2687) lt!347923)))))

(declare-fun e!623479 () Bool)

(assert (=> b!966239 (= e!623479 e!623476)))

(declare-fun b!966240 () Bool)

(declare-fun e!623475 () Bool)

(assert (=> b!966240 (= e!623475 (not (= (head!1776 s!10566) (c!157310 lt!347923))))))

(declare-fun b!966241 () Bool)

(declare-fun res!439337 () Bool)

(assert (=> b!966241 (=> res!439337 e!623476)))

(assert (=> b!966241 (= res!439337 e!623477)))

(declare-fun res!439334 () Bool)

(assert (=> b!966241 (=> (not res!439334) (not e!623477))))

(assert (=> b!966241 (= res!439334 lt!348027)))

(declare-fun b!966242 () Bool)

(declare-fun e!623474 () Bool)

(assert (=> b!966242 (= e!623476 e!623474)))

(declare-fun res!439335 () Bool)

(assert (=> b!966242 (=> (not res!439335) (not e!623474))))

(assert (=> b!966242 (= res!439335 (not lt!348027))))

(declare-fun b!966243 () Bool)

(declare-fun res!439339 () Bool)

(assert (=> b!966243 (=> res!439339 e!623475)))

(assert (=> b!966243 (= res!439339 (not (isEmpty!6205 (tail!1338 s!10566))))))

(declare-fun b!966244 () Bool)

(declare-fun res!439333 () Bool)

(assert (=> b!966244 (=> (not res!439333) (not e!623477))))

(assert (=> b!966244 (= res!439333 (isEmpty!6205 (tail!1338 s!10566)))))

(declare-fun d!285855 () Bool)

(assert (=> d!285855 e!623478))

(declare-fun c!157447 () Bool)

(assert (=> d!285855 (= c!157447 ((_ is EmptyExpr!2687) lt!347923))))

(assert (=> d!285855 (= lt!348027 e!623480)))

(declare-fun c!157448 () Bool)

(assert (=> d!285855 (= c!157448 (isEmpty!6205 s!10566))))

(assert (=> d!285855 (validRegex!1156 lt!347923)))

(assert (=> d!285855 (= (matchR!1225 lt!347923 s!10566) lt!348027)))

(declare-fun b!966245 () Bool)

(assert (=> b!966245 (= e!623478 e!623479)))

(declare-fun c!157446 () Bool)

(assert (=> b!966245 (= c!157446 ((_ is EmptyLang!2687) lt!347923))))

(declare-fun b!966246 () Bool)

(assert (=> b!966246 (= e!623480 (matchR!1225 (derivativeStep!623 lt!347923 (head!1776 s!10566)) (tail!1338 s!10566)))))

(declare-fun b!966247 () Bool)

(assert (=> b!966247 (= e!623479 (not lt!348027))))

(declare-fun bm!61072 () Bool)

(assert (=> bm!61072 (= call!61077 (isEmpty!6205 s!10566))))

(declare-fun b!966248 () Bool)

(declare-fun res!439332 () Bool)

(assert (=> b!966248 (=> (not res!439332) (not e!623477))))

(assert (=> b!966248 (= res!439332 (not call!61077))))

(declare-fun b!966249 () Bool)

(assert (=> b!966249 (= e!623474 e!623475)))

(declare-fun res!439338 () Bool)

(assert (=> b!966249 (=> res!439338 e!623475)))

(assert (=> b!966249 (= res!439338 call!61077)))

(assert (= (and d!285855 c!157448) b!966238))

(assert (= (and d!285855 (not c!157448)) b!966246))

(assert (= (and d!285855 c!157447) b!966237))

(assert (= (and d!285855 (not c!157447)) b!966245))

(assert (= (and b!966245 c!157446) b!966247))

(assert (= (and b!966245 (not c!157446)) b!966239))

(assert (= (and b!966239 (not res!439336)) b!966241))

(assert (= (and b!966241 res!439334) b!966248))

(assert (= (and b!966248 res!439332) b!966244))

(assert (= (and b!966244 res!439333) b!966236))

(assert (= (and b!966241 (not res!439337)) b!966242))

(assert (= (and b!966242 res!439335) b!966249))

(assert (= (and b!966249 (not res!439338)) b!966243))

(assert (= (and b!966243 (not res!439339)) b!966240))

(assert (= (or b!966237 b!966248 b!966249) bm!61072))

(assert (=> b!966244 m!1172093))

(assert (=> b!966244 m!1172093))

(assert (=> b!966244 m!1172095))

(assert (=> b!966238 m!1172155))

(assert (=> b!966243 m!1172093))

(assert (=> b!966243 m!1172093))

(assert (=> b!966243 m!1172095))

(assert (=> b!966236 m!1172099))

(assert (=> b!966246 m!1172099))

(assert (=> b!966246 m!1172099))

(declare-fun m!1172281 () Bool)

(assert (=> b!966246 m!1172281))

(assert (=> b!966246 m!1172093))

(assert (=> b!966246 m!1172281))

(assert (=> b!966246 m!1172093))

(declare-fun m!1172283 () Bool)

(assert (=> b!966246 m!1172283))

(assert (=> b!966240 m!1172099))

(assert (=> d!285855 m!1171903))

(assert (=> d!285855 m!1172165))

(assert (=> bm!61072 m!1171903))

(assert (=> b!965684 d!285855))

(declare-fun d!285857 () Bool)

(assert (=> d!285857 (= (isEmpty!6205 (_1!6452 lt!347938)) ((_ is Nil!9901) (_1!6452 lt!347938)))))

(assert (=> b!965677 d!285857))

(declare-fun bm!61079 () Bool)

(declare-fun call!61084 () Bool)

(declare-fun call!61086 () Bool)

(assert (=> bm!61079 (= call!61084 call!61086)))

(declare-fun b!966268 () Bool)

(declare-fun e!623499 () Bool)

(declare-fun e!623496 () Bool)

(assert (=> b!966268 (= e!623499 e!623496)))

(declare-fun c!157453 () Bool)

(assert (=> b!966268 (= c!157453 ((_ is Union!2687) r!15766))))

(declare-fun b!966269 () Bool)

(declare-fun res!439351 () Bool)

(declare-fun e!623498 () Bool)

(assert (=> b!966269 (=> res!439351 e!623498)))

(assert (=> b!966269 (= res!439351 (not ((_ is Concat!4520) r!15766)))))

(assert (=> b!966269 (= e!623496 e!623498)))

(declare-fun bm!61080 () Bool)

(declare-fun call!61085 () Bool)

(assert (=> bm!61080 (= call!61085 (validRegex!1156 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))

(declare-fun c!157454 () Bool)

(declare-fun bm!61081 () Bool)

(assert (=> bm!61081 (= call!61086 (validRegex!1156 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))

(declare-fun b!966271 () Bool)

(declare-fun res!439352 () Bool)

(declare-fun e!623501 () Bool)

(assert (=> b!966271 (=> (not res!439352) (not e!623501))))

(assert (=> b!966271 (= res!439352 call!61085)))

(assert (=> b!966271 (= e!623496 e!623501)))

(declare-fun b!966272 () Bool)

(declare-fun e!623500 () Bool)

(assert (=> b!966272 (= e!623500 call!61086)))

(declare-fun b!966273 () Bool)

(declare-fun e!623495 () Bool)

(assert (=> b!966273 (= e!623495 call!61084)))

(declare-fun b!966274 () Bool)

(assert (=> b!966274 (= e!623499 e!623500)))

(declare-fun res!439350 () Bool)

(assert (=> b!966274 (= res!439350 (not (nullable!815 (reg!3016 r!15766))))))

(assert (=> b!966274 (=> (not res!439350) (not e!623500))))

(declare-fun b!966275 () Bool)

(assert (=> b!966275 (= e!623498 e!623495)))

(declare-fun res!439354 () Bool)

(assert (=> b!966275 (=> (not res!439354) (not e!623495))))

(assert (=> b!966275 (= res!439354 call!61085)))

(declare-fun b!966276 () Bool)

(declare-fun e!623497 () Bool)

(assert (=> b!966276 (= e!623497 e!623499)))

(assert (=> b!966276 (= c!157454 ((_ is Star!2687) r!15766))))

(declare-fun d!285859 () Bool)

(declare-fun res!439353 () Bool)

(assert (=> d!285859 (=> res!439353 e!623497)))

(assert (=> d!285859 (= res!439353 ((_ is ElementMatch!2687) r!15766))))

(assert (=> d!285859 (= (validRegex!1156 r!15766) e!623497)))

(declare-fun b!966270 () Bool)

(assert (=> b!966270 (= e!623501 call!61084)))

(assert (= (and d!285859 (not res!439353)) b!966276))

(assert (= (and b!966276 c!157454) b!966274))

(assert (= (and b!966276 (not c!157454)) b!966268))

(assert (= (and b!966274 res!439350) b!966272))

(assert (= (and b!966268 c!157453) b!966271))

(assert (= (and b!966268 (not c!157453)) b!966269))

(assert (= (and b!966271 res!439352) b!966270))

(assert (= (and b!966269 (not res!439351)) b!966275))

(assert (= (and b!966275 res!439354) b!966273))

(assert (= (or b!966270 b!966273) bm!61079))

(assert (= (or b!966271 b!966275) bm!61080))

(assert (= (or b!966272 bm!61079) bm!61081))

(declare-fun m!1172285 () Bool)

(assert (=> bm!61080 m!1172285))

(declare-fun m!1172287 () Bool)

(assert (=> bm!61081 m!1172287))

(assert (=> b!966274 m!1172227))

(assert (=> start!85942 d!285859))

(declare-fun b!966277 () Bool)

(declare-fun e!623505 () Bool)

(assert (=> b!966277 (= e!623505 (= (head!1776 (_1!6452 lt!347938)) (c!157310 lt!347936)))))

(declare-fun b!966278 () Bool)

(declare-fun e!623506 () Bool)

(declare-fun lt!348028 () Bool)

(declare-fun call!61087 () Bool)

(assert (=> b!966278 (= e!623506 (= lt!348028 call!61087))))

(declare-fun b!966279 () Bool)

(declare-fun e!623508 () Bool)

(assert (=> b!966279 (= e!623508 (nullable!815 lt!347936))))

(declare-fun b!966280 () Bool)

(declare-fun res!439359 () Bool)

(declare-fun e!623504 () Bool)

(assert (=> b!966280 (=> res!439359 e!623504)))

(assert (=> b!966280 (= res!439359 (not ((_ is ElementMatch!2687) lt!347936)))))

(declare-fun e!623507 () Bool)

(assert (=> b!966280 (= e!623507 e!623504)))

(declare-fun b!966281 () Bool)

(declare-fun e!623503 () Bool)

(assert (=> b!966281 (= e!623503 (not (= (head!1776 (_1!6452 lt!347938)) (c!157310 lt!347936))))))

(declare-fun b!966282 () Bool)

(declare-fun res!439360 () Bool)

(assert (=> b!966282 (=> res!439360 e!623504)))

(assert (=> b!966282 (= res!439360 e!623505)))

(declare-fun res!439357 () Bool)

(assert (=> b!966282 (=> (not res!439357) (not e!623505))))

(assert (=> b!966282 (= res!439357 lt!348028)))

(declare-fun b!966283 () Bool)

(declare-fun e!623502 () Bool)

(assert (=> b!966283 (= e!623504 e!623502)))

(declare-fun res!439358 () Bool)

(assert (=> b!966283 (=> (not res!439358) (not e!623502))))

(assert (=> b!966283 (= res!439358 (not lt!348028))))

(declare-fun b!966284 () Bool)

(declare-fun res!439362 () Bool)

(assert (=> b!966284 (=> res!439362 e!623503)))

(assert (=> b!966284 (= res!439362 (not (isEmpty!6205 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun b!966285 () Bool)

(declare-fun res!439356 () Bool)

(assert (=> b!966285 (=> (not res!439356) (not e!623505))))

(assert (=> b!966285 (= res!439356 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(declare-fun d!285861 () Bool)

(assert (=> d!285861 e!623506))

(declare-fun c!157456 () Bool)

(assert (=> d!285861 (= c!157456 ((_ is EmptyExpr!2687) lt!347936))))

(assert (=> d!285861 (= lt!348028 e!623508)))

(declare-fun c!157457 () Bool)

(assert (=> d!285861 (= c!157457 (isEmpty!6205 (_1!6452 lt!347938)))))

(assert (=> d!285861 (validRegex!1156 lt!347936)))

(assert (=> d!285861 (= (matchR!1225 lt!347936 (_1!6452 lt!347938)) lt!348028)))

(declare-fun b!966286 () Bool)

(assert (=> b!966286 (= e!623506 e!623507)))

(declare-fun c!157455 () Bool)

(assert (=> b!966286 (= c!157455 ((_ is EmptyLang!2687) lt!347936))))

(declare-fun b!966287 () Bool)

(assert (=> b!966287 (= e!623508 (matchR!1225 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))) (tail!1338 (_1!6452 lt!347938))))))

(declare-fun b!966288 () Bool)

(assert (=> b!966288 (= e!623507 (not lt!348028))))

(declare-fun bm!61082 () Bool)

(assert (=> bm!61082 (= call!61087 (isEmpty!6205 (_1!6452 lt!347938)))))

(declare-fun b!966289 () Bool)

(declare-fun res!439355 () Bool)

(assert (=> b!966289 (=> (not res!439355) (not e!623505))))

(assert (=> b!966289 (= res!439355 (not call!61087))))

(declare-fun b!966290 () Bool)

(assert (=> b!966290 (= e!623502 e!623503)))

(declare-fun res!439361 () Bool)

(assert (=> b!966290 (=> res!439361 e!623503)))

(assert (=> b!966290 (= res!439361 call!61087)))

(assert (= (and d!285861 c!157457) b!966279))

(assert (= (and d!285861 (not c!157457)) b!966287))

(assert (= (and d!285861 c!157456) b!966278))

(assert (= (and d!285861 (not c!157456)) b!966286))

(assert (= (and b!966286 c!157455) b!966288))

(assert (= (and b!966286 (not c!157455)) b!966280))

(assert (= (and b!966280 (not res!439359)) b!966282))

(assert (= (and b!966282 res!439357) b!966289))

(assert (= (and b!966289 res!439355) b!966285))

(assert (= (and b!966285 res!439356) b!966277))

(assert (= (and b!966282 (not res!439360)) b!966283))

(assert (= (and b!966283 res!439358) b!966290))

(assert (= (and b!966290 (not res!439361)) b!966284))

(assert (= (and b!966284 (not res!439362)) b!966281))

(assert (= (or b!966278 b!966289 b!966290) bm!61082))

(assert (=> b!966285 m!1172223))

(assert (=> b!966285 m!1172223))

(assert (=> b!966285 m!1172225))

(declare-fun m!1172289 () Bool)

(assert (=> b!966279 m!1172289))

(assert (=> b!966284 m!1172223))

(assert (=> b!966284 m!1172223))

(assert (=> b!966284 m!1172225))

(assert (=> b!966277 m!1172229))

(assert (=> b!966287 m!1172229))

(assert (=> b!966287 m!1172229))

(declare-fun m!1172291 () Bool)

(assert (=> b!966287 m!1172291))

(assert (=> b!966287 m!1172223))

(assert (=> b!966287 m!1172291))

(assert (=> b!966287 m!1172223))

(declare-fun m!1172293 () Bool)

(assert (=> b!966287 m!1172293))

(assert (=> b!966281 m!1172229))

(assert (=> d!285861 m!1171891))

(assert (=> d!285861 m!1172179))

(assert (=> bm!61082 m!1171891))

(assert (=> b!965676 d!285861))

(declare-fun d!285863 () Bool)

(assert (=> d!285863 (= (get!3395 lt!347937) (v!19684 lt!347937))))

(assert (=> b!965676 d!285863))

(declare-fun d!285865 () Bool)

(declare-fun lt!348029 () Int)

(assert (=> d!285865 (>= lt!348029 0)))

(declare-fun e!623509 () Int)

(assert (=> d!285865 (= lt!348029 e!623509)))

(declare-fun c!157458 () Bool)

(assert (=> d!285865 (= c!157458 ((_ is Nil!9901) (_1!6452 lt!347938)))))

(assert (=> d!285865 (= (size!7937 (_1!6452 lt!347938)) lt!348029)))

(declare-fun b!966291 () Bool)

(assert (=> b!966291 (= e!623509 0)))

(declare-fun b!966292 () Bool)

(assert (=> b!966292 (= e!623509 (+ 1 (size!7937 (t!100963 (_1!6452 lt!347938)))))))

(assert (= (and d!285865 c!157458) b!966291))

(assert (= (and d!285865 (not c!157458)) b!966292))

(declare-fun m!1172295 () Bool)

(assert (=> b!966292 m!1172295))

(assert (=> b!965681 d!285865))

(declare-fun b!966303 () Bool)

(declare-fun e!623512 () Bool)

(assert (=> b!966303 (= e!623512 tp_is_empty!5017)))

(declare-fun b!966304 () Bool)

(declare-fun tp!296349 () Bool)

(declare-fun tp!296350 () Bool)

(assert (=> b!966304 (= e!623512 (and tp!296349 tp!296350))))

(declare-fun b!966306 () Bool)

(declare-fun tp!296352 () Bool)

(declare-fun tp!296351 () Bool)

(assert (=> b!966306 (= e!623512 (and tp!296352 tp!296351))))

(assert (=> b!965685 (= tp!296300 e!623512)))

(declare-fun b!966305 () Bool)

(declare-fun tp!296353 () Bool)

(assert (=> b!966305 (= e!623512 tp!296353)))

(assert (= (and b!965685 ((_ is ElementMatch!2687) (regOne!5887 r!15766))) b!966303))

(assert (= (and b!965685 ((_ is Concat!4520) (regOne!5887 r!15766))) b!966304))

(assert (= (and b!965685 ((_ is Star!2687) (regOne!5887 r!15766))) b!966305))

(assert (= (and b!965685 ((_ is Union!2687) (regOne!5887 r!15766))) b!966306))

(declare-fun b!966307 () Bool)

(declare-fun e!623513 () Bool)

(assert (=> b!966307 (= e!623513 tp_is_empty!5017)))

(declare-fun b!966308 () Bool)

(declare-fun tp!296354 () Bool)

(declare-fun tp!296355 () Bool)

(assert (=> b!966308 (= e!623513 (and tp!296354 tp!296355))))

(declare-fun b!966310 () Bool)

(declare-fun tp!296357 () Bool)

(declare-fun tp!296356 () Bool)

(assert (=> b!966310 (= e!623513 (and tp!296357 tp!296356))))

(assert (=> b!965685 (= tp!296295 e!623513)))

(declare-fun b!966309 () Bool)

(declare-fun tp!296358 () Bool)

(assert (=> b!966309 (= e!623513 tp!296358)))

(assert (= (and b!965685 ((_ is ElementMatch!2687) (regTwo!5887 r!15766))) b!966307))

(assert (= (and b!965685 ((_ is Concat!4520) (regTwo!5887 r!15766))) b!966308))

(assert (= (and b!965685 ((_ is Star!2687) (regTwo!5887 r!15766))) b!966309))

(assert (= (and b!965685 ((_ is Union!2687) (regTwo!5887 r!15766))) b!966310))

(declare-fun b!966315 () Bool)

(declare-fun e!623516 () Bool)

(declare-fun tp!296361 () Bool)

(assert (=> b!966315 (= e!623516 (and tp_is_empty!5017 tp!296361))))

(assert (=> b!965671 (= tp!296299 e!623516)))

(assert (= (and b!965671 ((_ is Cons!9901) (t!100963 s!10566))) b!966315))

(declare-fun b!966316 () Bool)

(declare-fun e!623517 () Bool)

(assert (=> b!966316 (= e!623517 tp_is_empty!5017)))

(declare-fun b!966317 () Bool)

(declare-fun tp!296362 () Bool)

(declare-fun tp!296363 () Bool)

(assert (=> b!966317 (= e!623517 (and tp!296362 tp!296363))))

(declare-fun b!966319 () Bool)

(declare-fun tp!296365 () Bool)

(declare-fun tp!296364 () Bool)

(assert (=> b!966319 (= e!623517 (and tp!296365 tp!296364))))

(assert (=> b!965672 (= tp!296298 e!623517)))

(declare-fun b!966318 () Bool)

(declare-fun tp!296366 () Bool)

(assert (=> b!966318 (= e!623517 tp!296366)))

(assert (= (and b!965672 ((_ is ElementMatch!2687) (regOne!5886 r!15766))) b!966316))

(assert (= (and b!965672 ((_ is Concat!4520) (regOne!5886 r!15766))) b!966317))

(assert (= (and b!965672 ((_ is Star!2687) (regOne!5886 r!15766))) b!966318))

(assert (= (and b!965672 ((_ is Union!2687) (regOne!5886 r!15766))) b!966319))

(declare-fun b!966320 () Bool)

(declare-fun e!623518 () Bool)

(assert (=> b!966320 (= e!623518 tp_is_empty!5017)))

(declare-fun b!966321 () Bool)

(declare-fun tp!296367 () Bool)

(declare-fun tp!296368 () Bool)

(assert (=> b!966321 (= e!623518 (and tp!296367 tp!296368))))

(declare-fun b!966323 () Bool)

(declare-fun tp!296370 () Bool)

(declare-fun tp!296369 () Bool)

(assert (=> b!966323 (= e!623518 (and tp!296370 tp!296369))))

(assert (=> b!965672 (= tp!296296 e!623518)))

(declare-fun b!966322 () Bool)

(declare-fun tp!296371 () Bool)

(assert (=> b!966322 (= e!623518 tp!296371)))

(assert (= (and b!965672 ((_ is ElementMatch!2687) (regTwo!5886 r!15766))) b!966320))

(assert (= (and b!965672 ((_ is Concat!4520) (regTwo!5886 r!15766))) b!966321))

(assert (= (and b!965672 ((_ is Star!2687) (regTwo!5886 r!15766))) b!966322))

(assert (= (and b!965672 ((_ is Union!2687) (regTwo!5886 r!15766))) b!966323))

(declare-fun b!966324 () Bool)

(declare-fun e!623519 () Bool)

(assert (=> b!966324 (= e!623519 tp_is_empty!5017)))

(declare-fun b!966325 () Bool)

(declare-fun tp!296372 () Bool)

(declare-fun tp!296373 () Bool)

(assert (=> b!966325 (= e!623519 (and tp!296372 tp!296373))))

(declare-fun b!966327 () Bool)

(declare-fun tp!296375 () Bool)

(declare-fun tp!296374 () Bool)

(assert (=> b!966327 (= e!623519 (and tp!296375 tp!296374))))

(assert (=> b!965675 (= tp!296297 e!623519)))

(declare-fun b!966326 () Bool)

(declare-fun tp!296376 () Bool)

(assert (=> b!966326 (= e!623519 tp!296376)))

(assert (= (and b!965675 ((_ is ElementMatch!2687) (reg!3016 r!15766))) b!966324))

(assert (= (and b!965675 ((_ is Concat!4520) (reg!3016 r!15766))) b!966325))

(assert (= (and b!965675 ((_ is Star!2687) (reg!3016 r!15766))) b!966326))

(assert (= (and b!965675 ((_ is Union!2687) (reg!3016 r!15766))) b!966327))

(check-sat (not b!966306) (not d!285839) (not b!966142) (not b!966228) (not b!966075) (not b!966240) (not b!966310) (not b!966308) (not b!966323) (not b!965882) (not b!965881) (not b!966304) (not d!285853) (not d!285843) (not b!966078) (not b!966145) (not b!966146) (not b!965998) (not b!966279) (not bm!61027) (not d!285821) (not b!966292) (not bm!61056) (not b!966322) (not b!966180) (not d!285811) (not d!285849) (not b!966325) (not d!285795) (not d!285841) (not b!966230) (not b!966315) (not b!966143) (not d!285751) (not b!966319) (not bm!61072) (not d!285831) (not b!965754) (not b!966238) (not b!966081) (not bm!61067) (not b!966326) (not b!966236) (not b!965755) (not d!285855) (not b!965992) (not bm!61054) (not d!285837) (not bm!61053) (not b!966157) (not bm!61028) (not b!966182) (not b!966071) (not b!966318) (not b!966274) (not b!966243) (not bm!61068) (not bm!61081) (not d!285823) (not b!965995) (not b!966177) (not d!285851) (not bm!61082) (not b!966277) (not b!966285) (not b!966156) (not d!285765) (not d!285817) (not b!966284) (not b!966073) (not d!285825) (not b!966231) (not d!285845) (not b!965990) (not b!966327) (not bm!61047) (not b!966190) (not d!285861) (not b!966232) (not b!966187) (not d!285827) (not b!966321) tp_is_empty!5017 (not bm!61080) (not d!285847) (not b!966234) (not d!285829) (not b!966244) (not b!966226) (not b!966179) (not b!966139) (not b!966281) (not b!966317) (not b!966188) (not bm!61055) (not b!965988) (not b!966184) (not b!966235) (not b!966309) (not b!966079) (not b!966287) (not b!966246) (not b!966141) (not b!965996) (not b!966305))
(check-sat)
(get-model)

(declare-fun d!286035 () Bool)

(assert (=> d!286035 (= (head!1776 s!10566) (h!15302 s!10566))))

(assert (=> b!965992 d!286035))

(declare-fun d!286037 () Bool)

(assert (=> d!286037 (= (Exists!430 (ite c!157362 lambda!34006 lambda!34009)) (choose!6105 (ite c!157362 lambda!34006 lambda!34009)))))

(declare-fun bs!241823 () Bool)

(assert (= bs!241823 d!286037))

(declare-fun m!1172701 () Bool)

(assert (=> bs!241823 m!1172701))

(assert (=> bm!61028 d!286037))

(declare-fun b!966746 () Bool)

(declare-fun e!623752 () List!9917)

(assert (=> b!966746 (= e!623752 (t!100963 s!10566))))

(declare-fun b!966749 () Bool)

(declare-fun e!623751 () Bool)

(declare-fun lt!348068 () List!9917)

(assert (=> b!966749 (= e!623751 (or (not (= (t!100963 s!10566) Nil!9901)) (= lt!348068 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)))))))

(declare-fun b!966747 () Bool)

(assert (=> b!966747 (= e!623752 (Cons!9901 (h!15302 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))) (++!2675 (t!100963 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))) (t!100963 s!10566))))))

(declare-fun b!966748 () Bool)

(declare-fun res!439544 () Bool)

(assert (=> b!966748 (=> (not res!439544) (not e!623751))))

(assert (=> b!966748 (= res!439544 (= (size!7937 lt!348068) (+ (size!7937 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))) (size!7937 (t!100963 s!10566)))))))

(declare-fun d!286039 () Bool)

(assert (=> d!286039 e!623751))

(declare-fun res!439543 () Bool)

(assert (=> d!286039 (=> (not res!439543) (not e!623751))))

(assert (=> d!286039 (= res!439543 (= (content!1411 lt!348068) ((_ map or) (content!1411 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))) (content!1411 (t!100963 s!10566)))))))

(assert (=> d!286039 (= lt!348068 e!623752)))

(declare-fun c!157581 () Bool)

(assert (=> d!286039 (= c!157581 ((_ is Nil!9901) (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))))))

(assert (=> d!286039 (= (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566)) lt!348068)))

(assert (= (and d!286039 c!157581) b!966746))

(assert (= (and d!286039 (not c!157581)) b!966747))

(assert (= (and d!286039 res!439543) b!966748))

(assert (= (and b!966748 res!439544) b!966749))

(declare-fun m!1172703 () Bool)

(assert (=> b!966747 m!1172703))

(declare-fun m!1172705 () Bool)

(assert (=> b!966748 m!1172705))

(assert (=> b!966748 m!1172185))

(declare-fun m!1172707 () Bool)

(assert (=> b!966748 m!1172707))

(assert (=> b!966748 m!1172219))

(declare-fun m!1172709 () Bool)

(assert (=> d!286039 m!1172709))

(assert (=> d!286039 m!1172185))

(declare-fun m!1172711 () Bool)

(assert (=> d!286039 m!1172711))

(declare-fun m!1172713 () Bool)

(assert (=> d!286039 m!1172713))

(assert (=> b!966142 d!286039))

(declare-fun b!966750 () Bool)

(declare-fun e!623754 () List!9917)

(assert (=> b!966750 (= e!623754 (Cons!9901 (h!15302 s!10566) Nil!9901))))

(declare-fun b!966753 () Bool)

(declare-fun e!623753 () Bool)

(declare-fun lt!348069 () List!9917)

(assert (=> b!966753 (= e!623753 (or (not (= (Cons!9901 (h!15302 s!10566) Nil!9901) Nil!9901)) (= lt!348069 Nil!9901)))))

(declare-fun b!966751 () Bool)

(assert (=> b!966751 (= e!623754 (Cons!9901 (h!15302 Nil!9901) (++!2675 (t!100963 Nil!9901) (Cons!9901 (h!15302 s!10566) Nil!9901))))))

(declare-fun b!966752 () Bool)

(declare-fun res!439546 () Bool)

(assert (=> b!966752 (=> (not res!439546) (not e!623753))))

(assert (=> b!966752 (= res!439546 (= (size!7937 lt!348069) (+ (size!7937 Nil!9901) (size!7937 (Cons!9901 (h!15302 s!10566) Nil!9901)))))))

(declare-fun d!286041 () Bool)

(assert (=> d!286041 e!623753))

(declare-fun res!439545 () Bool)

(assert (=> d!286041 (=> (not res!439545) (not e!623753))))

(assert (=> d!286041 (= res!439545 (= (content!1411 lt!348069) ((_ map or) (content!1411 Nil!9901) (content!1411 (Cons!9901 (h!15302 s!10566) Nil!9901)))))))

(assert (=> d!286041 (= lt!348069 e!623754)))

(declare-fun c!157582 () Bool)

(assert (=> d!286041 (= c!157582 ((_ is Nil!9901) Nil!9901))))

(assert (=> d!286041 (= (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) lt!348069)))

(assert (= (and d!286041 c!157582) b!966750))

(assert (= (and d!286041 (not c!157582)) b!966751))

(assert (= (and d!286041 res!439545) b!966752))

(assert (= (and b!966752 res!439546) b!966753))

(declare-fun m!1172715 () Bool)

(assert (=> b!966751 m!1172715))

(declare-fun m!1172717 () Bool)

(assert (=> b!966752 m!1172717))

(declare-fun m!1172719 () Bool)

(assert (=> b!966752 m!1172719))

(declare-fun m!1172721 () Bool)

(assert (=> b!966752 m!1172721))

(declare-fun m!1172723 () Bool)

(assert (=> d!286041 m!1172723))

(declare-fun m!1172725 () Bool)

(assert (=> d!286041 m!1172725))

(declare-fun m!1172727 () Bool)

(assert (=> d!286041 m!1172727))

(assert (=> b!966142 d!286041))

(declare-fun d!286043 () Bool)

(assert (=> d!286043 (= (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566)) s!10566)))

(declare-fun lt!348074 () Unit!15029)

(declare-fun choose!6110 (List!9917 C!5944 List!9917 List!9917) Unit!15029)

(assert (=> d!286043 (= lt!348074 (choose!6110 Nil!9901 (h!15302 s!10566) (t!100963 s!10566) s!10566))))

(assert (=> d!286043 (= (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) (t!100963 s!10566))) s!10566)))

(assert (=> d!286043 (= (lemmaMoveElementToOtherListKeepsConcatEq!278 Nil!9901 (h!15302 s!10566) (t!100963 s!10566) s!10566) lt!348074)))

(declare-fun bs!241839 () Bool)

(assert (= bs!241839 d!286043))

(assert (=> bs!241839 m!1172185))

(assert (=> bs!241839 m!1172185))

(assert (=> bs!241839 m!1172187))

(declare-fun m!1172751 () Bool)

(assert (=> bs!241839 m!1172751))

(declare-fun m!1172753 () Bool)

(assert (=> bs!241839 m!1172753))

(assert (=> b!966142 d!286043))

(declare-fun b!966843 () Bool)

(declare-fun e!623786 () Option!2268)

(assert (=> b!966843 (= e!623786 None!2267)))

(declare-fun b!966844 () Bool)

(declare-fun e!623785 () Bool)

(declare-fun lt!348075 () Option!2268)

(assert (=> b!966844 (= e!623785 (not (isDefined!1910 lt!348075)))))

(declare-fun b!966845 () Bool)

(declare-fun e!623787 () Option!2268)

(assert (=> b!966845 (= e!623787 (Some!2267 (tuple2!11253 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566))))))

(declare-fun b!966846 () Bool)

(declare-fun res!439557 () Bool)

(declare-fun e!623784 () Bool)

(assert (=> b!966846 (=> (not res!439557) (not e!623784))))

(assert (=> b!966846 (= res!439557 (matchR!1225 lt!347936 (_1!6452 (get!3395 lt!348075))))))

(declare-fun b!966847 () Bool)

(declare-fun lt!348076 () Unit!15029)

(declare-fun lt!348077 () Unit!15029)

(assert (=> b!966847 (= lt!348076 lt!348077)))

(assert (=> b!966847 (= (++!2675 (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (Cons!9901 (h!15302 (t!100963 s!10566)) Nil!9901)) (t!100963 (t!100963 s!10566))) s!10566)))

(assert (=> b!966847 (= lt!348077 (lemmaMoveElementToOtherListKeepsConcatEq!278 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (h!15302 (t!100963 s!10566)) (t!100963 (t!100963 s!10566)) s!10566))))

(assert (=> b!966847 (= e!623786 (findConcatSeparation!374 lt!347936 lt!347923 (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (Cons!9901 (h!15302 (t!100963 s!10566)) Nil!9901)) (t!100963 (t!100963 s!10566)) s!10566))))

(declare-fun d!286049 () Bool)

(assert (=> d!286049 e!623785))

(declare-fun res!439556 () Bool)

(assert (=> d!286049 (=> res!439556 e!623785)))

(assert (=> d!286049 (= res!439556 e!623784)))

(declare-fun res!439555 () Bool)

(assert (=> d!286049 (=> (not res!439555) (not e!623784))))

(assert (=> d!286049 (= res!439555 (isDefined!1910 lt!348075))))

(assert (=> d!286049 (= lt!348075 e!623787)))

(declare-fun c!157591 () Bool)

(declare-fun e!623788 () Bool)

(assert (=> d!286049 (= c!157591 e!623788)))

(declare-fun res!439559 () Bool)

(assert (=> d!286049 (=> (not res!439559) (not e!623788))))

(assert (=> d!286049 (= res!439559 (matchR!1225 lt!347936 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))))))

(assert (=> d!286049 (validRegex!1156 lt!347936)))

(assert (=> d!286049 (= (findConcatSeparation!374 lt!347936 lt!347923 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566) s!10566) lt!348075)))

(declare-fun b!966848 () Bool)

(declare-fun res!439558 () Bool)

(assert (=> b!966848 (=> (not res!439558) (not e!623784))))

(assert (=> b!966848 (= res!439558 (matchR!1225 lt!347923 (_2!6452 (get!3395 lt!348075))))))

(declare-fun b!966849 () Bool)

(assert (=> b!966849 (= e!623787 e!623786)))

(declare-fun c!157592 () Bool)

(assert (=> b!966849 (= c!157592 ((_ is Nil!9901) (t!100963 s!10566)))))

(declare-fun b!966850 () Bool)

(assert (=> b!966850 (= e!623784 (= (++!2675 (_1!6452 (get!3395 lt!348075)) (_2!6452 (get!3395 lt!348075))) s!10566))))

(declare-fun b!966851 () Bool)

(assert (=> b!966851 (= e!623788 (matchR!1225 lt!347923 (t!100963 s!10566)))))

(assert (= (and d!286049 res!439559) b!966851))

(assert (= (and d!286049 c!157591) b!966845))

(assert (= (and d!286049 (not c!157591)) b!966849))

(assert (= (and b!966849 c!157592) b!966843))

(assert (= (and b!966849 (not c!157592)) b!966847))

(assert (= (and d!286049 res!439555) b!966846))

(assert (= (and b!966846 res!439557) b!966848))

(assert (= (and b!966848 res!439558) b!966850))

(assert (= (and d!286049 (not res!439556)) b!966844))

(declare-fun m!1172755 () Bool)

(assert (=> b!966850 m!1172755))

(declare-fun m!1172757 () Bool)

(assert (=> b!966850 m!1172757))

(declare-fun m!1172759 () Bool)

(assert (=> b!966844 m!1172759))

(assert (=> d!286049 m!1172759))

(assert (=> d!286049 m!1172185))

(declare-fun m!1172761 () Bool)

(assert (=> d!286049 m!1172761))

(assert (=> d!286049 m!1172179))

(declare-fun m!1172763 () Bool)

(assert (=> b!966851 m!1172763))

(assert (=> b!966848 m!1172755))

(declare-fun m!1172765 () Bool)

(assert (=> b!966848 m!1172765))

(assert (=> b!966846 m!1172755))

(declare-fun m!1172767 () Bool)

(assert (=> b!966846 m!1172767))

(assert (=> b!966847 m!1172185))

(declare-fun m!1172769 () Bool)

(assert (=> b!966847 m!1172769))

(assert (=> b!966847 m!1172769))

(declare-fun m!1172771 () Bool)

(assert (=> b!966847 m!1172771))

(assert (=> b!966847 m!1172185))

(declare-fun m!1172773 () Bool)

(assert (=> b!966847 m!1172773))

(assert (=> b!966847 m!1172769))

(declare-fun m!1172775 () Bool)

(assert (=> b!966847 m!1172775))

(assert (=> b!966142 d!286049))

(declare-fun d!286051 () Bool)

(assert (=> d!286051 (= (Exists!430 lambda!34026) (choose!6105 lambda!34026))))

(declare-fun bs!241840 () Bool)

(assert (= bs!241840 d!286051))

(declare-fun m!1172777 () Bool)

(assert (=> bs!241840 m!1172777))

(assert (=> d!285831 d!286051))

(declare-fun d!286053 () Bool)

(assert (=> d!286053 (= (Exists!430 lambda!34027) (choose!6105 lambda!34027))))

(declare-fun bs!241841 () Bool)

(assert (= bs!241841 d!286053))

(declare-fun m!1172779 () Bool)

(assert (=> bs!241841 m!1172779))

(assert (=> d!285831 d!286053))

(declare-fun bs!241842 () Bool)

(declare-fun d!286055 () Bool)

(assert (= bs!241842 (and d!286055 d!285831)))

(declare-fun lambda!34055 () Int)

(assert (=> bs!241842 (not (= lambda!34055 lambda!34027))))

(assert (=> bs!241842 (= lambda!34055 lambda!34026)))

(declare-fun bs!241843 () Bool)

(assert (= bs!241843 (and d!286055 d!285843)))

(assert (=> bs!241843 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) (Star!2687 (reg!3016 r!15766)))) (= lambda!34055 lambda!34028))))

(declare-fun bs!241844 () Bool)

(assert (= bs!241844 (and d!286055 b!965678)))

(assert (=> bs!241844 (not (= lambda!34055 lambda!33990))))

(declare-fun bs!241845 () Bool)

(assert (= bs!241845 (and d!286055 b!965880)))

(assert (=> bs!241845 (not (= lambda!34055 lambda!34006))))

(declare-fun bs!241846 () Bool)

(assert (= bs!241846 (and d!286055 b!966147)))

(assert (=> bs!241846 (not (= lambda!34055 lambda!34018))))

(declare-fun bs!241847 () Bool)

(assert (= bs!241847 (and d!286055 b!966155)))

(assert (=> bs!241847 (not (= lambda!34055 lambda!34017))))

(declare-fun bs!241848 () Bool)

(assert (= bs!241848 (and d!286055 d!285827)))

(assert (=> bs!241848 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34055 lambda!34021))))

(declare-fun bs!241849 () Bool)

(assert (= bs!241849 (and d!286055 b!965872)))

(assert (=> bs!241849 (not (= lambda!34055 lambda!34009))))

(assert (=> bs!241844 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34055 lambda!33989))))

(declare-fun bs!241850 () Bool)

(assert (= bs!241850 (and d!286055 d!285853)))

(assert (=> bs!241850 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) lt!347931)) (= lambda!34055 lambda!34030))))

(declare-fun bs!241851 () Bool)

(assert (= bs!241851 (and d!286055 b!965684)))

(assert (=> bs!241851 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) lt!347931)) (= lambda!34055 lambda!33987))))

(assert (=> bs!241851 (not (= lambda!34055 lambda!33988))))

(assert (=> bs!241843 (not (= lambda!34055 lambda!34029))))

(assert (=> d!286055 true))

(assert (=> d!286055 true))

(declare-fun lambda!34056 () Int)

(assert (=> bs!241842 (= lambda!34056 lambda!34027)))

(assert (=> bs!241842 (not (= lambda!34056 lambda!34026))))

(assert (=> bs!241843 (not (= lambda!34056 lambda!34028))))

(assert (=> bs!241844 (= (= (Star!2687 lt!347936) lt!347923) (= lambda!34056 lambda!33990))))

(assert (=> bs!241846 (not (= lambda!34056 lambda!34018))))

(assert (=> bs!241847 (= (and (= lt!347936 (reg!3016 lt!347923)) (= (Star!2687 lt!347936) lt!347923)) (= lambda!34056 lambda!34017))))

(assert (=> bs!241848 (not (= lambda!34056 lambda!34021))))

(assert (=> bs!241849 (not (= lambda!34056 lambda!34009))))

(assert (=> bs!241844 (not (= lambda!34056 lambda!33989))))

(assert (=> bs!241850 (not (= lambda!34056 lambda!34030))))

(assert (=> bs!241851 (not (= lambda!34056 lambda!33987))))

(declare-fun bs!241852 () Bool)

(assert (= bs!241852 d!286055))

(assert (=> bs!241852 (not (= lambda!34056 lambda!34055))))

(assert (=> bs!241845 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) r!15766)) (= lambda!34056 lambda!34006))))

(assert (=> bs!241851 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) lt!347931)) (= lambda!34056 lambda!33988))))

(assert (=> bs!241843 (= (and (= lt!347936 (reg!3016 r!15766)) (= (Star!2687 lt!347936) (Star!2687 (reg!3016 r!15766)))) (= lambda!34056 lambda!34029))))

(assert (=> d!286055 true))

(assert (=> d!286055 true))

(assert (=> d!286055 (= (Exists!430 lambda!34055) (Exists!430 lambda!34056))))

(assert (=> d!286055 true))

(declare-fun _$91!343 () Unit!15029)

(assert (=> d!286055 (= (choose!6107 lt!347936 s!10566) _$91!343)))

(declare-fun m!1172781 () Bool)

(assert (=> bs!241852 m!1172781))

(declare-fun m!1172783 () Bool)

(assert (=> bs!241852 m!1172783))

(assert (=> d!285831 d!286055))

(declare-fun bm!61160 () Bool)

(declare-fun call!61165 () Bool)

(declare-fun call!61167 () Bool)

(assert (=> bm!61160 (= call!61165 call!61167)))

(declare-fun b!966898 () Bool)

(declare-fun e!623806 () Bool)

(declare-fun e!623803 () Bool)

(assert (=> b!966898 (= e!623806 e!623803)))

(declare-fun c!157593 () Bool)

(assert (=> b!966898 (= c!157593 ((_ is Union!2687) lt!347936))))

(declare-fun b!966899 () Bool)

(declare-fun res!439571 () Bool)

(declare-fun e!623805 () Bool)

(assert (=> b!966899 (=> res!439571 e!623805)))

(assert (=> b!966899 (= res!439571 (not ((_ is Concat!4520) lt!347936)))))

(assert (=> b!966899 (= e!623803 e!623805)))

(declare-fun bm!61161 () Bool)

(declare-fun call!61166 () Bool)

(assert (=> bm!61161 (= call!61166 (validRegex!1156 (ite c!157593 (regOne!5887 lt!347936) (regOne!5886 lt!347936))))))

(declare-fun bm!61162 () Bool)

(declare-fun c!157594 () Bool)

(assert (=> bm!61162 (= call!61167 (validRegex!1156 (ite c!157594 (reg!3016 lt!347936) (ite c!157593 (regTwo!5887 lt!347936) (regTwo!5886 lt!347936)))))))

(declare-fun b!966901 () Bool)

(declare-fun res!439572 () Bool)

(declare-fun e!623808 () Bool)

(assert (=> b!966901 (=> (not res!439572) (not e!623808))))

(assert (=> b!966901 (= res!439572 call!61166)))

(assert (=> b!966901 (= e!623803 e!623808)))

(declare-fun b!966902 () Bool)

(declare-fun e!623807 () Bool)

(assert (=> b!966902 (= e!623807 call!61167)))

(declare-fun b!966903 () Bool)

(declare-fun e!623802 () Bool)

(assert (=> b!966903 (= e!623802 call!61165)))

(declare-fun b!966904 () Bool)

(assert (=> b!966904 (= e!623806 e!623807)))

(declare-fun res!439570 () Bool)

(assert (=> b!966904 (= res!439570 (not (nullable!815 (reg!3016 lt!347936))))))

(assert (=> b!966904 (=> (not res!439570) (not e!623807))))

(declare-fun b!966905 () Bool)

(assert (=> b!966905 (= e!623805 e!623802)))

(declare-fun res!439574 () Bool)

(assert (=> b!966905 (=> (not res!439574) (not e!623802))))

(assert (=> b!966905 (= res!439574 call!61166)))

(declare-fun b!966906 () Bool)

(declare-fun e!623804 () Bool)

(assert (=> b!966906 (= e!623804 e!623806)))

(assert (=> b!966906 (= c!157594 ((_ is Star!2687) lt!347936))))

(declare-fun d!286057 () Bool)

(declare-fun res!439573 () Bool)

(assert (=> d!286057 (=> res!439573 e!623804)))

(assert (=> d!286057 (= res!439573 ((_ is ElementMatch!2687) lt!347936))))

(assert (=> d!286057 (= (validRegex!1156 lt!347936) e!623804)))

(declare-fun b!966900 () Bool)

(assert (=> b!966900 (= e!623808 call!61165)))

(assert (= (and d!286057 (not res!439573)) b!966906))

(assert (= (and b!966906 c!157594) b!966904))

(assert (= (and b!966906 (not c!157594)) b!966898))

(assert (= (and b!966904 res!439570) b!966902))

(assert (= (and b!966898 c!157593) b!966901))

(assert (= (and b!966898 (not c!157593)) b!966899))

(assert (= (and b!966901 res!439572) b!966900))

(assert (= (and b!966899 (not res!439571)) b!966905))

(assert (= (and b!966905 res!439574) b!966903))

(assert (= (or b!966900 b!966903) bm!61160))

(assert (= (or b!966901 b!966905) bm!61161))

(assert (= (or b!966902 bm!61160) bm!61162))

(declare-fun m!1172785 () Bool)

(assert (=> bm!61161 m!1172785))

(declare-fun m!1172787 () Bool)

(assert (=> bm!61162 m!1172787))

(declare-fun m!1172789 () Bool)

(assert (=> b!966904 m!1172789))

(assert (=> d!285831 d!286057))

(declare-fun d!286059 () Bool)

(assert (=> d!286059 (= (isEmpty!6205 (tail!1338 (_2!6452 lt!347938))) ((_ is Nil!9901) (tail!1338 (_2!6452 lt!347938))))))

(assert (=> b!966078 d!286059))

(declare-fun d!286061 () Bool)

(assert (=> d!286061 (= (tail!1338 (_2!6452 lt!347938)) (t!100963 (_2!6452 lt!347938)))))

(assert (=> b!966078 d!286061))

(declare-fun b!966907 () Bool)

(declare-fun e!623812 () Bool)

(assert (=> b!966907 (= e!623812 (= (head!1776 (_1!6452 lt!347938)) (c!157310 (removeUselessConcat!334 (reg!3016 r!15766)))))))

(declare-fun b!966908 () Bool)

(declare-fun e!623813 () Bool)

(declare-fun lt!348078 () Bool)

(declare-fun call!61168 () Bool)

(assert (=> b!966908 (= e!623813 (= lt!348078 call!61168))))

(declare-fun b!966909 () Bool)

(declare-fun e!623815 () Bool)

(assert (=> b!966909 (= e!623815 (nullable!815 (removeUselessConcat!334 (reg!3016 r!15766))))))

(declare-fun b!966910 () Bool)

(declare-fun res!439579 () Bool)

(declare-fun e!623811 () Bool)

(assert (=> b!966910 (=> res!439579 e!623811)))

(assert (=> b!966910 (= res!439579 (not ((_ is ElementMatch!2687) (removeUselessConcat!334 (reg!3016 r!15766)))))))

(declare-fun e!623814 () Bool)

(assert (=> b!966910 (= e!623814 e!623811)))

(declare-fun b!966911 () Bool)

(declare-fun e!623810 () Bool)

(assert (=> b!966911 (= e!623810 (not (= (head!1776 (_1!6452 lt!347938)) (c!157310 (removeUselessConcat!334 (reg!3016 r!15766))))))))

(declare-fun b!966912 () Bool)

(declare-fun res!439580 () Bool)

(assert (=> b!966912 (=> res!439580 e!623811)))

(assert (=> b!966912 (= res!439580 e!623812)))

(declare-fun res!439577 () Bool)

(assert (=> b!966912 (=> (not res!439577) (not e!623812))))

(assert (=> b!966912 (= res!439577 lt!348078)))

(declare-fun b!966913 () Bool)

(declare-fun e!623809 () Bool)

(assert (=> b!966913 (= e!623811 e!623809)))

(declare-fun res!439578 () Bool)

(assert (=> b!966913 (=> (not res!439578) (not e!623809))))

(assert (=> b!966913 (= res!439578 (not lt!348078))))

(declare-fun b!966914 () Bool)

(declare-fun res!439582 () Bool)

(assert (=> b!966914 (=> res!439582 e!623810)))

(assert (=> b!966914 (= res!439582 (not (isEmpty!6205 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun b!966915 () Bool)

(declare-fun res!439576 () Bool)

(assert (=> b!966915 (=> (not res!439576) (not e!623812))))

(assert (=> b!966915 (= res!439576 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(declare-fun d!286063 () Bool)

(assert (=> d!286063 e!623813))

(declare-fun c!157596 () Bool)

(assert (=> d!286063 (= c!157596 ((_ is EmptyExpr!2687) (removeUselessConcat!334 (reg!3016 r!15766))))))

(assert (=> d!286063 (= lt!348078 e!623815)))

(declare-fun c!157597 () Bool)

(assert (=> d!286063 (= c!157597 (isEmpty!6205 (_1!6452 lt!347938)))))

(assert (=> d!286063 (validRegex!1156 (removeUselessConcat!334 (reg!3016 r!15766)))))

(assert (=> d!286063 (= (matchR!1225 (removeUselessConcat!334 (reg!3016 r!15766)) (_1!6452 lt!347938)) lt!348078)))

(declare-fun b!966916 () Bool)

(assert (=> b!966916 (= e!623813 e!623814)))

(declare-fun c!157595 () Bool)

(assert (=> b!966916 (= c!157595 ((_ is EmptyLang!2687) (removeUselessConcat!334 (reg!3016 r!15766))))))

(declare-fun b!966917 () Bool)

(assert (=> b!966917 (= e!623815 (matchR!1225 (derivativeStep!623 (removeUselessConcat!334 (reg!3016 r!15766)) (head!1776 (_1!6452 lt!347938))) (tail!1338 (_1!6452 lt!347938))))))

(declare-fun b!966918 () Bool)

(assert (=> b!966918 (= e!623814 (not lt!348078))))

(declare-fun bm!61163 () Bool)

(assert (=> bm!61163 (= call!61168 (isEmpty!6205 (_1!6452 lt!347938)))))

(declare-fun b!966919 () Bool)

(declare-fun res!439575 () Bool)

(assert (=> b!966919 (=> (not res!439575) (not e!623812))))

(assert (=> b!966919 (= res!439575 (not call!61168))))

(declare-fun b!966920 () Bool)

(assert (=> b!966920 (= e!623809 e!623810)))

(declare-fun res!439581 () Bool)

(assert (=> b!966920 (=> res!439581 e!623810)))

(assert (=> b!966920 (= res!439581 call!61168)))

(assert (= (and d!286063 c!157597) b!966909))

(assert (= (and d!286063 (not c!157597)) b!966917))

(assert (= (and d!286063 c!157596) b!966908))

(assert (= (and d!286063 (not c!157596)) b!966916))

(assert (= (and b!966916 c!157595) b!966918))

(assert (= (and b!966916 (not c!157595)) b!966910))

(assert (= (and b!966910 (not res!439579)) b!966912))

(assert (= (and b!966912 res!439577) b!966919))

(assert (= (and b!966919 res!439575) b!966915))

(assert (= (and b!966915 res!439576) b!966907))

(assert (= (and b!966912 (not res!439580)) b!966913))

(assert (= (and b!966913 res!439578) b!966920))

(assert (= (and b!966920 (not res!439581)) b!966914))

(assert (= (and b!966914 (not res!439582)) b!966911))

(assert (= (or b!966908 b!966919 b!966920) bm!61163))

(assert (=> b!966915 m!1172223))

(assert (=> b!966915 m!1172223))

(assert (=> b!966915 m!1172225))

(assert (=> b!966909 m!1171945))

(declare-fun m!1172791 () Bool)

(assert (=> b!966909 m!1172791))

(assert (=> b!966914 m!1172223))

(assert (=> b!966914 m!1172223))

(assert (=> b!966914 m!1172225))

(assert (=> b!966907 m!1172229))

(assert (=> b!966917 m!1172229))

(assert (=> b!966917 m!1171945))

(assert (=> b!966917 m!1172229))

(declare-fun m!1172793 () Bool)

(assert (=> b!966917 m!1172793))

(assert (=> b!966917 m!1172223))

(assert (=> b!966917 m!1172793))

(assert (=> b!966917 m!1172223))

(declare-fun m!1172795 () Bool)

(assert (=> b!966917 m!1172795))

(assert (=> b!966911 m!1172229))

(assert (=> d!286063 m!1171891))

(assert (=> d!286063 m!1171945))

(declare-fun m!1172797 () Bool)

(assert (=> d!286063 m!1172797))

(assert (=> bm!61163 m!1171891))

(assert (=> d!285839 d!286063))

(assert (=> d!285839 d!285847))

(declare-fun bm!61164 () Bool)

(declare-fun call!61169 () Bool)

(declare-fun call!61171 () Bool)

(assert (=> bm!61164 (= call!61169 call!61171)))

(declare-fun b!966921 () Bool)

(declare-fun e!623820 () Bool)

(declare-fun e!623817 () Bool)

(assert (=> b!966921 (= e!623820 e!623817)))

(declare-fun c!157598 () Bool)

(assert (=> b!966921 (= c!157598 ((_ is Union!2687) (reg!3016 r!15766)))))

(declare-fun b!966922 () Bool)

(declare-fun res!439584 () Bool)

(declare-fun e!623819 () Bool)

(assert (=> b!966922 (=> res!439584 e!623819)))

(assert (=> b!966922 (= res!439584 (not ((_ is Concat!4520) (reg!3016 r!15766))))))

(assert (=> b!966922 (= e!623817 e!623819)))

(declare-fun bm!61165 () Bool)

(declare-fun call!61170 () Bool)

(assert (=> bm!61165 (= call!61170 (validRegex!1156 (ite c!157598 (regOne!5887 (reg!3016 r!15766)) (regOne!5886 (reg!3016 r!15766)))))))

(declare-fun c!157599 () Bool)

(declare-fun bm!61166 () Bool)

(assert (=> bm!61166 (= call!61171 (validRegex!1156 (ite c!157599 (reg!3016 (reg!3016 r!15766)) (ite c!157598 (regTwo!5887 (reg!3016 r!15766)) (regTwo!5886 (reg!3016 r!15766))))))))

(declare-fun b!966924 () Bool)

(declare-fun res!439585 () Bool)

(declare-fun e!623822 () Bool)

(assert (=> b!966924 (=> (not res!439585) (not e!623822))))

(assert (=> b!966924 (= res!439585 call!61170)))

(assert (=> b!966924 (= e!623817 e!623822)))

(declare-fun b!966925 () Bool)

(declare-fun e!623821 () Bool)

(assert (=> b!966925 (= e!623821 call!61171)))

(declare-fun b!966926 () Bool)

(declare-fun e!623816 () Bool)

(assert (=> b!966926 (= e!623816 call!61169)))

(declare-fun b!966927 () Bool)

(assert (=> b!966927 (= e!623820 e!623821)))

(declare-fun res!439583 () Bool)

(assert (=> b!966927 (= res!439583 (not (nullable!815 (reg!3016 (reg!3016 r!15766)))))))

(assert (=> b!966927 (=> (not res!439583) (not e!623821))))

(declare-fun b!966928 () Bool)

(assert (=> b!966928 (= e!623819 e!623816)))

(declare-fun res!439587 () Bool)

(assert (=> b!966928 (=> (not res!439587) (not e!623816))))

(assert (=> b!966928 (= res!439587 call!61170)))

(declare-fun b!966929 () Bool)

(declare-fun e!623818 () Bool)

(assert (=> b!966929 (= e!623818 e!623820)))

(assert (=> b!966929 (= c!157599 ((_ is Star!2687) (reg!3016 r!15766)))))

(declare-fun d!286065 () Bool)

(declare-fun res!439586 () Bool)

(assert (=> d!286065 (=> res!439586 e!623818)))

(assert (=> d!286065 (= res!439586 ((_ is ElementMatch!2687) (reg!3016 r!15766)))))

(assert (=> d!286065 (= (validRegex!1156 (reg!3016 r!15766)) e!623818)))

(declare-fun b!966923 () Bool)

(assert (=> b!966923 (= e!623822 call!61169)))

(assert (= (and d!286065 (not res!439586)) b!966929))

(assert (= (and b!966929 c!157599) b!966927))

(assert (= (and b!966929 (not c!157599)) b!966921))

(assert (= (and b!966927 res!439583) b!966925))

(assert (= (and b!966921 c!157598) b!966924))

(assert (= (and b!966921 (not c!157598)) b!966922))

(assert (= (and b!966924 res!439585) b!966923))

(assert (= (and b!966922 (not res!439584)) b!966928))

(assert (= (and b!966928 res!439587) b!966926))

(assert (= (or b!966923 b!966926) bm!61164))

(assert (= (or b!966924 b!966928) bm!61165))

(assert (= (or b!966925 bm!61164) bm!61166))

(declare-fun m!1172799 () Bool)

(assert (=> bm!61165 m!1172799))

(declare-fun m!1172801 () Bool)

(assert (=> bm!61166 m!1172801))

(declare-fun m!1172803 () Bool)

(assert (=> b!966927 m!1172803))

(assert (=> d!285839 d!286065))

(declare-fun d!286067 () Bool)

(assert (=> d!286067 (= (matchR!1225 (reg!3016 r!15766) (_1!6452 lt!347938)) (matchR!1225 (removeUselessConcat!334 (reg!3016 r!15766)) (_1!6452 lt!347938)))))

(assert (=> d!286067 true))

(declare-fun _$94!358 () Unit!15029)

(assert (=> d!286067 (= (choose!6108 (reg!3016 r!15766) (_1!6452 lt!347938)) _$94!358)))

(declare-fun bs!241853 () Bool)

(assert (= bs!241853 d!286067))

(assert (=> bs!241853 m!1171915))

(assert (=> bs!241853 m!1171945))

(assert (=> bs!241853 m!1171945))

(assert (=> bs!241853 m!1172237))

(assert (=> d!285839 d!286067))

(assert (=> d!285839 d!285837))

(declare-fun d!286069 () Bool)

(declare-fun nullableFct!194 (Regex!2687) Bool)

(assert (=> d!286069 (= (nullable!815 lt!348022) (nullableFct!194 lt!348022))))

(declare-fun bs!241854 () Bool)

(assert (= bs!241854 d!286069))

(declare-fun m!1172805 () Bool)

(assert (=> bs!241854 m!1172805))

(assert (=> b!966226 d!286069))

(declare-fun d!286071 () Bool)

(assert (=> d!286071 (= (nullable!815 (reg!3016 r!15766)) (nullableFct!194 (reg!3016 r!15766)))))

(declare-fun bs!241855 () Bool)

(assert (= bs!241855 d!286071))

(declare-fun m!1172807 () Bool)

(assert (=> bs!241855 m!1172807))

(assert (=> b!966226 d!286071))

(declare-fun b!966930 () Bool)

(declare-fun e!623826 () Bool)

(assert (=> b!966930 (= e!623826 (= (head!1776 (tail!1338 s!10566)) (c!157310 (derivativeStep!623 lt!347923 (head!1776 s!10566)))))))

(declare-fun b!966931 () Bool)

(declare-fun e!623827 () Bool)

(declare-fun lt!348079 () Bool)

(declare-fun call!61172 () Bool)

(assert (=> b!966931 (= e!623827 (= lt!348079 call!61172))))

(declare-fun b!966932 () Bool)

(declare-fun e!623829 () Bool)

(assert (=> b!966932 (= e!623829 (nullable!815 (derivativeStep!623 lt!347923 (head!1776 s!10566))))))

(declare-fun b!966933 () Bool)

(declare-fun res!439592 () Bool)

(declare-fun e!623825 () Bool)

(assert (=> b!966933 (=> res!439592 e!623825)))

(assert (=> b!966933 (= res!439592 (not ((_ is ElementMatch!2687) (derivativeStep!623 lt!347923 (head!1776 s!10566)))))))

(declare-fun e!623828 () Bool)

(assert (=> b!966933 (= e!623828 e!623825)))

(declare-fun b!966934 () Bool)

(declare-fun e!623824 () Bool)

(assert (=> b!966934 (= e!623824 (not (= (head!1776 (tail!1338 s!10566)) (c!157310 (derivativeStep!623 lt!347923 (head!1776 s!10566))))))))

(declare-fun b!966935 () Bool)

(declare-fun res!439593 () Bool)

(assert (=> b!966935 (=> res!439593 e!623825)))

(assert (=> b!966935 (= res!439593 e!623826)))

(declare-fun res!439590 () Bool)

(assert (=> b!966935 (=> (not res!439590) (not e!623826))))

(assert (=> b!966935 (= res!439590 lt!348079)))

(declare-fun b!966936 () Bool)

(declare-fun e!623823 () Bool)

(assert (=> b!966936 (= e!623825 e!623823)))

(declare-fun res!439591 () Bool)

(assert (=> b!966936 (=> (not res!439591) (not e!623823))))

(assert (=> b!966936 (= res!439591 (not lt!348079))))

(declare-fun b!966937 () Bool)

(declare-fun res!439595 () Bool)

(assert (=> b!966937 (=> res!439595 e!623824)))

(assert (=> b!966937 (= res!439595 (not (isEmpty!6205 (tail!1338 (tail!1338 s!10566)))))))

(declare-fun b!966938 () Bool)

(declare-fun res!439589 () Bool)

(assert (=> b!966938 (=> (not res!439589) (not e!623826))))

(assert (=> b!966938 (= res!439589 (isEmpty!6205 (tail!1338 (tail!1338 s!10566))))))

(declare-fun d!286073 () Bool)

(assert (=> d!286073 e!623827))

(declare-fun c!157601 () Bool)

(assert (=> d!286073 (= c!157601 ((_ is EmptyExpr!2687) (derivativeStep!623 lt!347923 (head!1776 s!10566))))))

(assert (=> d!286073 (= lt!348079 e!623829)))

(declare-fun c!157602 () Bool)

(assert (=> d!286073 (= c!157602 (isEmpty!6205 (tail!1338 s!10566)))))

(assert (=> d!286073 (validRegex!1156 (derivativeStep!623 lt!347923 (head!1776 s!10566)))))

(assert (=> d!286073 (= (matchR!1225 (derivativeStep!623 lt!347923 (head!1776 s!10566)) (tail!1338 s!10566)) lt!348079)))

(declare-fun b!966939 () Bool)

(assert (=> b!966939 (= e!623827 e!623828)))

(declare-fun c!157600 () Bool)

(assert (=> b!966939 (= c!157600 ((_ is EmptyLang!2687) (derivativeStep!623 lt!347923 (head!1776 s!10566))))))

(declare-fun b!966940 () Bool)

(assert (=> b!966940 (= e!623829 (matchR!1225 (derivativeStep!623 (derivativeStep!623 lt!347923 (head!1776 s!10566)) (head!1776 (tail!1338 s!10566))) (tail!1338 (tail!1338 s!10566))))))

(declare-fun b!966941 () Bool)

(assert (=> b!966941 (= e!623828 (not lt!348079))))

(declare-fun bm!61167 () Bool)

(assert (=> bm!61167 (= call!61172 (isEmpty!6205 (tail!1338 s!10566)))))

(declare-fun b!966942 () Bool)

(declare-fun res!439588 () Bool)

(assert (=> b!966942 (=> (not res!439588) (not e!623826))))

(assert (=> b!966942 (= res!439588 (not call!61172))))

(declare-fun b!966943 () Bool)

(assert (=> b!966943 (= e!623823 e!623824)))

(declare-fun res!439594 () Bool)

(assert (=> b!966943 (=> res!439594 e!623824)))

(assert (=> b!966943 (= res!439594 call!61172)))

(assert (= (and d!286073 c!157602) b!966932))

(assert (= (and d!286073 (not c!157602)) b!966940))

(assert (= (and d!286073 c!157601) b!966931))

(assert (= (and d!286073 (not c!157601)) b!966939))

(assert (= (and b!966939 c!157600) b!966941))

(assert (= (and b!966939 (not c!157600)) b!966933))

(assert (= (and b!966933 (not res!439592)) b!966935))

(assert (= (and b!966935 res!439590) b!966942))

(assert (= (and b!966942 res!439588) b!966938))

(assert (= (and b!966938 res!439589) b!966930))

(assert (= (and b!966935 (not res!439593)) b!966936))

(assert (= (and b!966936 res!439591) b!966943))

(assert (= (and b!966943 (not res!439594)) b!966937))

(assert (= (and b!966937 (not res!439595)) b!966934))

(assert (= (or b!966931 b!966942 b!966943) bm!61167))

(assert (=> b!966938 m!1172093))

(declare-fun m!1172809 () Bool)

(assert (=> b!966938 m!1172809))

(assert (=> b!966938 m!1172809))

(declare-fun m!1172811 () Bool)

(assert (=> b!966938 m!1172811))

(assert (=> b!966932 m!1172281))

(declare-fun m!1172813 () Bool)

(assert (=> b!966932 m!1172813))

(assert (=> b!966937 m!1172093))

(assert (=> b!966937 m!1172809))

(assert (=> b!966937 m!1172809))

(assert (=> b!966937 m!1172811))

(assert (=> b!966930 m!1172093))

(declare-fun m!1172815 () Bool)

(assert (=> b!966930 m!1172815))

(assert (=> b!966940 m!1172093))

(assert (=> b!966940 m!1172815))

(assert (=> b!966940 m!1172281))

(assert (=> b!966940 m!1172815))

(declare-fun m!1172817 () Bool)

(assert (=> b!966940 m!1172817))

(assert (=> b!966940 m!1172093))

(assert (=> b!966940 m!1172809))

(assert (=> b!966940 m!1172817))

(assert (=> b!966940 m!1172809))

(declare-fun m!1172819 () Bool)

(assert (=> b!966940 m!1172819))

(assert (=> b!966934 m!1172093))

(assert (=> b!966934 m!1172815))

(assert (=> d!286073 m!1172093))

(assert (=> d!286073 m!1172095))

(assert (=> d!286073 m!1172281))

(declare-fun m!1172821 () Bool)

(assert (=> d!286073 m!1172821))

(assert (=> bm!61167 m!1172093))

(assert (=> bm!61167 m!1172095))

(assert (=> b!966246 d!286073))

(declare-fun b!966964 () Bool)

(declare-fun e!623841 () Regex!2687)

(declare-fun call!61183 () Regex!2687)

(assert (=> b!966964 (= e!623841 (Union!2687 (Concat!4520 call!61183 (regTwo!5886 lt!347923)) EmptyLang!2687))))

(declare-fun b!966965 () Bool)

(declare-fun e!623844 () Regex!2687)

(declare-fun call!61181 () Regex!2687)

(assert (=> b!966965 (= e!623844 (Concat!4520 call!61181 lt!347923))))

(declare-fun b!966966 () Bool)

(declare-fun e!623840 () Regex!2687)

(declare-fun e!623843 () Regex!2687)

(assert (=> b!966966 (= e!623840 e!623843)))

(declare-fun c!157616 () Bool)

(assert (=> b!966966 (= c!157616 ((_ is ElementMatch!2687) lt!347923))))

(declare-fun bm!61176 () Bool)

(declare-fun call!61184 () Regex!2687)

(assert (=> bm!61176 (= call!61181 call!61184)))

(declare-fun b!966967 () Bool)

(declare-fun call!61182 () Regex!2687)

(assert (=> b!966967 (= e!623841 (Union!2687 (Concat!4520 call!61182 (regTwo!5886 lt!347923)) call!61183))))

(declare-fun c!157613 () Bool)

(declare-fun bm!61177 () Bool)

(declare-fun c!157614 () Bool)

(declare-fun c!157617 () Bool)

(assert (=> bm!61177 (= call!61184 (derivativeStep!623 (ite c!157617 (regOne!5887 lt!347923) (ite c!157613 (reg!3016 lt!347923) (ite c!157614 (regTwo!5886 lt!347923) (regOne!5886 lt!347923)))) (head!1776 s!10566)))))

(declare-fun bm!61178 () Bool)

(assert (=> bm!61178 (= call!61183 call!61181)))

(declare-fun b!966969 () Bool)

(declare-fun e!623842 () Regex!2687)

(assert (=> b!966969 (= e!623842 (Union!2687 call!61184 call!61182))))

(declare-fun b!966970 () Bool)

(assert (=> b!966970 (= e!623840 EmptyLang!2687)))

(declare-fun b!966971 () Bool)

(assert (=> b!966971 (= c!157614 (nullable!815 (regOne!5886 lt!347923)))))

(assert (=> b!966971 (= e!623844 e!623841)))

(declare-fun b!966972 () Bool)

(assert (=> b!966972 (= e!623842 e!623844)))

(assert (=> b!966972 (= c!157613 ((_ is Star!2687) lt!347923))))

(declare-fun bm!61179 () Bool)

(assert (=> bm!61179 (= call!61182 (derivativeStep!623 (ite c!157617 (regTwo!5887 lt!347923) (regOne!5886 lt!347923)) (head!1776 s!10566)))))

(declare-fun b!966973 () Bool)

(assert (=> b!966973 (= e!623843 (ite (= (head!1776 s!10566) (c!157310 lt!347923)) EmptyExpr!2687 EmptyLang!2687))))

(declare-fun b!966968 () Bool)

(assert (=> b!966968 (= c!157617 ((_ is Union!2687) lt!347923))))

(assert (=> b!966968 (= e!623843 e!623842)))

(declare-fun d!286075 () Bool)

(declare-fun lt!348082 () Regex!2687)

(assert (=> d!286075 (validRegex!1156 lt!348082)))

(assert (=> d!286075 (= lt!348082 e!623840)))

(declare-fun c!157615 () Bool)

(assert (=> d!286075 (= c!157615 (or ((_ is EmptyExpr!2687) lt!347923) ((_ is EmptyLang!2687) lt!347923)))))

(assert (=> d!286075 (validRegex!1156 lt!347923)))

(assert (=> d!286075 (= (derivativeStep!623 lt!347923 (head!1776 s!10566)) lt!348082)))

(assert (= (and d!286075 c!157615) b!966970))

(assert (= (and d!286075 (not c!157615)) b!966966))

(assert (= (and b!966966 c!157616) b!966973))

(assert (= (and b!966966 (not c!157616)) b!966968))

(assert (= (and b!966968 c!157617) b!966969))

(assert (= (and b!966968 (not c!157617)) b!966972))

(assert (= (and b!966972 c!157613) b!966965))

(assert (= (and b!966972 (not c!157613)) b!966971))

(assert (= (and b!966971 c!157614) b!966967))

(assert (= (and b!966971 (not c!157614)) b!966964))

(assert (= (or b!966967 b!966964) bm!61178))

(assert (= (or b!966965 bm!61178) bm!61176))

(assert (= (or b!966969 bm!61176) bm!61177))

(assert (= (or b!966969 b!966967) bm!61179))

(assert (=> bm!61177 m!1172099))

(declare-fun m!1172823 () Bool)

(assert (=> bm!61177 m!1172823))

(declare-fun m!1172825 () Bool)

(assert (=> b!966971 m!1172825))

(assert (=> bm!61179 m!1172099))

(declare-fun m!1172827 () Bool)

(assert (=> bm!61179 m!1172827))

(declare-fun m!1172829 () Bool)

(assert (=> d!286075 m!1172829))

(assert (=> d!286075 m!1172165))

(assert (=> b!966246 d!286075))

(assert (=> b!966246 d!286035))

(declare-fun d!286077 () Bool)

(assert (=> d!286077 (= (tail!1338 s!10566) (t!100963 s!10566))))

(assert (=> b!966246 d!286077))

(assert (=> bm!61072 d!285815))

(declare-fun bm!61180 () Bool)

(declare-fun call!61185 () Bool)

(declare-fun call!61187 () Bool)

(assert (=> bm!61180 (= call!61185 call!61187)))

(declare-fun b!966974 () Bool)

(declare-fun e!623849 () Bool)

(declare-fun e!623846 () Bool)

(assert (=> b!966974 (= e!623849 e!623846)))

(declare-fun c!157618 () Bool)

(assert (=> b!966974 (= c!157618 ((_ is Union!2687) lt!348022))))

(declare-fun b!966975 () Bool)

(declare-fun res!439597 () Bool)

(declare-fun e!623848 () Bool)

(assert (=> b!966975 (=> res!439597 e!623848)))

(assert (=> b!966975 (= res!439597 (not ((_ is Concat!4520) lt!348022)))))

(assert (=> b!966975 (= e!623846 e!623848)))

(declare-fun bm!61181 () Bool)

(declare-fun call!61186 () Bool)

(assert (=> bm!61181 (= call!61186 (validRegex!1156 (ite c!157618 (regOne!5887 lt!348022) (regOne!5886 lt!348022))))))

(declare-fun bm!61182 () Bool)

(declare-fun c!157619 () Bool)

(assert (=> bm!61182 (= call!61187 (validRegex!1156 (ite c!157619 (reg!3016 lt!348022) (ite c!157618 (regTwo!5887 lt!348022) (regTwo!5886 lt!348022)))))))

(declare-fun b!966977 () Bool)

(declare-fun res!439598 () Bool)

(declare-fun e!623851 () Bool)

(assert (=> b!966977 (=> (not res!439598) (not e!623851))))

(assert (=> b!966977 (= res!439598 call!61186)))

(assert (=> b!966977 (= e!623846 e!623851)))

(declare-fun b!966978 () Bool)

(declare-fun e!623850 () Bool)

(assert (=> b!966978 (= e!623850 call!61187)))

(declare-fun b!966979 () Bool)

(declare-fun e!623845 () Bool)

(assert (=> b!966979 (= e!623845 call!61185)))

(declare-fun b!966980 () Bool)

(assert (=> b!966980 (= e!623849 e!623850)))

(declare-fun res!439596 () Bool)

(assert (=> b!966980 (= res!439596 (not (nullable!815 (reg!3016 lt!348022))))))

(assert (=> b!966980 (=> (not res!439596) (not e!623850))))

(declare-fun b!966981 () Bool)

(assert (=> b!966981 (= e!623848 e!623845)))

(declare-fun res!439600 () Bool)

(assert (=> b!966981 (=> (not res!439600) (not e!623845))))

(assert (=> b!966981 (= res!439600 call!61186)))

(declare-fun b!966982 () Bool)

(declare-fun e!623847 () Bool)

(assert (=> b!966982 (= e!623847 e!623849)))

(assert (=> b!966982 (= c!157619 ((_ is Star!2687) lt!348022))))

(declare-fun d!286079 () Bool)

(declare-fun res!439599 () Bool)

(assert (=> d!286079 (=> res!439599 e!623847)))

(assert (=> d!286079 (= res!439599 ((_ is ElementMatch!2687) lt!348022))))

(assert (=> d!286079 (= (validRegex!1156 lt!348022) e!623847)))

(declare-fun b!966976 () Bool)

(assert (=> b!966976 (= e!623851 call!61185)))

(assert (= (and d!286079 (not res!439599)) b!966982))

(assert (= (and b!966982 c!157619) b!966980))

(assert (= (and b!966982 (not c!157619)) b!966974))

(assert (= (and b!966980 res!439596) b!966978))

(assert (= (and b!966974 c!157618) b!966977))

(assert (= (and b!966974 (not c!157618)) b!966975))

(assert (= (and b!966977 res!439598) b!966976))

(assert (= (and b!966975 (not res!439597)) b!966981))

(assert (= (and b!966981 res!439600) b!966979))

(assert (= (or b!966976 b!966979) bm!61180))

(assert (= (or b!966977 b!966981) bm!61181))

(assert (= (or b!966978 bm!61180) bm!61182))

(declare-fun m!1172831 () Bool)

(assert (=> bm!61181 m!1172831))

(declare-fun m!1172833 () Bool)

(assert (=> bm!61182 m!1172833))

(declare-fun m!1172835 () Bool)

(assert (=> b!966980 m!1172835))

(assert (=> d!285847 d!286079))

(assert (=> d!285847 d!286065))

(declare-fun d!286081 () Bool)

(assert (=> d!286081 (= (nullable!815 r!15766) (nullableFct!194 r!15766))))

(declare-fun bs!241856 () Bool)

(assert (= bs!241856 d!286081))

(declare-fun m!1172837 () Bool)

(assert (=> bs!241856 m!1172837))

(assert (=> b!965990 d!286081))

(declare-fun bs!241857 () Bool)

(declare-fun b!966991 () Bool)

(assert (= bs!241857 (and b!966991 d!285831)))

(declare-fun lambda!34057 () Int)

(assert (=> bs!241857 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) lt!347936) (= (regTwo!5887 lt!347923) (Star!2687 lt!347936))) (= lambda!34057 lambda!34027))))

(assert (=> bs!241857 (not (= lambda!34057 lambda!34026))))

(declare-fun bs!241858 () Bool)

(assert (= bs!241858 (and b!966991 d!285843)))

(assert (=> bs!241858 (not (= lambda!34057 lambda!34028))))

(declare-fun bs!241859 () Bool)

(assert (= bs!241859 (and b!966991 d!286055)))

(assert (=> bs!241859 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) lt!347936) (= (regTwo!5887 lt!347923) (Star!2687 lt!347936))) (= lambda!34057 lambda!34056))))

(declare-fun bs!241860 () Bool)

(assert (= bs!241860 (and b!966991 b!965678)))

(assert (=> bs!241860 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) lt!347936) (= (regTwo!5887 lt!347923) lt!347923)) (= lambda!34057 lambda!33990))))

(declare-fun bs!241861 () Bool)

(assert (= bs!241861 (and b!966991 b!966147)))

(assert (=> bs!241861 (not (= lambda!34057 lambda!34018))))

(declare-fun bs!241862 () Bool)

(assert (= bs!241862 (and b!966991 b!966155)))

(assert (=> bs!241862 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) (reg!3016 lt!347923)) (= (regTwo!5887 lt!347923) lt!347923)) (= lambda!34057 lambda!34017))))

(declare-fun bs!241863 () Bool)

(assert (= bs!241863 (and b!966991 d!285827)))

(assert (=> bs!241863 (not (= lambda!34057 lambda!34021))))

(declare-fun bs!241864 () Bool)

(assert (= bs!241864 (and b!966991 b!965872)))

(assert (=> bs!241864 (not (= lambda!34057 lambda!34009))))

(assert (=> bs!241860 (not (= lambda!34057 lambda!33989))))

(declare-fun bs!241865 () Bool)

(assert (= bs!241865 (and b!966991 d!285853)))

(assert (=> bs!241865 (not (= lambda!34057 lambda!34030))))

(declare-fun bs!241866 () Bool)

(assert (= bs!241866 (and b!966991 b!965684)))

(assert (=> bs!241866 (not (= lambda!34057 lambda!33987))))

(assert (=> bs!241859 (not (= lambda!34057 lambda!34055))))

(declare-fun bs!241867 () Bool)

(assert (= bs!241867 (and b!966991 b!965880)))

(assert (=> bs!241867 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) (reg!3016 r!15766)) (= (regTwo!5887 lt!347923) r!15766)) (= lambda!34057 lambda!34006))))

(assert (=> bs!241866 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) (reg!3016 r!15766)) (= (regTwo!5887 lt!347923) lt!347931)) (= lambda!34057 lambda!33988))))

(assert (=> bs!241858 (= (and (= (reg!3016 (regTwo!5887 lt!347923)) (reg!3016 r!15766)) (= (regTwo!5887 lt!347923) (Star!2687 (reg!3016 r!15766)))) (= lambda!34057 lambda!34029))))

(assert (=> b!966991 true))

(assert (=> b!966991 true))

(declare-fun bs!241868 () Bool)

(declare-fun b!966983 () Bool)

(assert (= bs!241868 (and b!966983 d!285831)))

(declare-fun lambda!34058 () Int)

(assert (=> bs!241868 (not (= lambda!34058 lambda!34027))))

(assert (=> bs!241868 (not (= lambda!34058 lambda!34026))))

(declare-fun bs!241869 () Bool)

(assert (= bs!241869 (and b!966983 d!285843)))

(assert (=> bs!241869 (not (= lambda!34058 lambda!34028))))

(declare-fun bs!241870 () Bool)

(assert (= bs!241870 (and b!966983 b!965678)))

(assert (=> bs!241870 (not (= lambda!34058 lambda!33990))))

(declare-fun bs!241871 () Bool)

(assert (= bs!241871 (and b!966983 b!966147)))

(assert (=> bs!241871 (= (and (= (regOne!5886 (regTwo!5887 lt!347923)) (regOne!5886 lt!347923)) (= (regTwo!5886 (regTwo!5887 lt!347923)) (regTwo!5886 lt!347923))) (= lambda!34058 lambda!34018))))

(declare-fun bs!241872 () Bool)

(assert (= bs!241872 (and b!966983 b!966155)))

(assert (=> bs!241872 (not (= lambda!34058 lambda!34017))))

(declare-fun bs!241873 () Bool)

(assert (= bs!241873 (and b!966983 d!285827)))

(assert (=> bs!241873 (not (= lambda!34058 lambda!34021))))

(declare-fun bs!241874 () Bool)

(assert (= bs!241874 (and b!966983 b!965872)))

(assert (=> bs!241874 (= (and (= (regOne!5886 (regTwo!5887 lt!347923)) (regOne!5886 r!15766)) (= (regTwo!5886 (regTwo!5887 lt!347923)) (regTwo!5886 r!15766))) (= lambda!34058 lambda!34009))))

(assert (=> bs!241870 (not (= lambda!34058 lambda!33989))))

(declare-fun bs!241875 () Bool)

(assert (= bs!241875 (and b!966983 d!285853)))

(assert (=> bs!241875 (not (= lambda!34058 lambda!34030))))

(declare-fun bs!241876 () Bool)

(assert (= bs!241876 (and b!966983 b!965684)))

(assert (=> bs!241876 (not (= lambda!34058 lambda!33987))))

(declare-fun bs!241877 () Bool)

(assert (= bs!241877 (and b!966983 b!966991)))

(assert (=> bs!241877 (not (= lambda!34058 lambda!34057))))

(declare-fun bs!241878 () Bool)

(assert (= bs!241878 (and b!966983 d!286055)))

(assert (=> bs!241878 (not (= lambda!34058 lambda!34056))))

(assert (=> bs!241878 (not (= lambda!34058 lambda!34055))))

(declare-fun bs!241879 () Bool)

(assert (= bs!241879 (and b!966983 b!965880)))

(assert (=> bs!241879 (not (= lambda!34058 lambda!34006))))

(assert (=> bs!241876 (not (= lambda!34058 lambda!33988))))

(assert (=> bs!241869 (not (= lambda!34058 lambda!34029))))

(assert (=> b!966983 true))

(assert (=> b!966983 true))

(declare-fun bm!61183 () Bool)

(declare-fun call!61188 () Bool)

(assert (=> bm!61183 (= call!61188 (isEmpty!6205 s!10566))))

(declare-fun b!966984 () Bool)

(declare-fun c!157620 () Bool)

(assert (=> b!966984 (= c!157620 ((_ is ElementMatch!2687) (regTwo!5887 lt!347923)))))

(declare-fun e!623852 () Bool)

(declare-fun e!623853 () Bool)

(assert (=> b!966984 (= e!623852 e!623853)))

(declare-fun b!966985 () Bool)

(assert (=> b!966985 (= e!623853 (= s!10566 (Cons!9901 (c!157310 (regTwo!5887 lt!347923)) Nil!9901)))))

(declare-fun b!966986 () Bool)

(declare-fun e!623857 () Bool)

(declare-fun e!623858 () Bool)

(assert (=> b!966986 (= e!623857 e!623858)))

(declare-fun c!157622 () Bool)

(assert (=> b!966986 (= c!157622 ((_ is Star!2687) (regTwo!5887 lt!347923)))))

(declare-fun b!966987 () Bool)

(declare-fun e!623855 () Bool)

(assert (=> b!966987 (= e!623855 call!61188)))

(declare-fun b!966988 () Bool)

(assert (=> b!966988 (= e!623855 e!623852)))

(declare-fun res!439603 () Bool)

(assert (=> b!966988 (= res!439603 (not ((_ is EmptyLang!2687) (regTwo!5887 lt!347923))))))

(assert (=> b!966988 (=> (not res!439603) (not e!623852))))

(declare-fun b!966989 () Bool)

(declare-fun c!157623 () Bool)

(assert (=> b!966989 (= c!157623 ((_ is Union!2687) (regTwo!5887 lt!347923)))))

(assert (=> b!966989 (= e!623853 e!623857)))

(declare-fun b!966990 () Bool)

(declare-fun res!439602 () Bool)

(declare-fun e!623854 () Bool)

(assert (=> b!966990 (=> res!439602 e!623854)))

(assert (=> b!966990 (= res!439602 call!61188)))

(assert (=> b!966990 (= e!623858 e!623854)))

(declare-fun d!286083 () Bool)

(declare-fun c!157621 () Bool)

(assert (=> d!286083 (= c!157621 ((_ is EmptyExpr!2687) (regTwo!5887 lt!347923)))))

(assert (=> d!286083 (= (matchRSpec!488 (regTwo!5887 lt!347923) s!10566) e!623855)))

(declare-fun call!61189 () Bool)

(assert (=> b!966983 (= e!623858 call!61189)))

(assert (=> b!966991 (= e!623854 call!61189)))

(declare-fun bm!61184 () Bool)

(assert (=> bm!61184 (= call!61189 (Exists!430 (ite c!157622 lambda!34057 lambda!34058)))))

(declare-fun b!966992 () Bool)

(declare-fun e!623856 () Bool)

(assert (=> b!966992 (= e!623857 e!623856)))

(declare-fun res!439601 () Bool)

(assert (=> b!966992 (= res!439601 (matchRSpec!488 (regOne!5887 (regTwo!5887 lt!347923)) s!10566))))

(assert (=> b!966992 (=> res!439601 e!623856)))

(declare-fun b!966993 () Bool)

(assert (=> b!966993 (= e!623856 (matchRSpec!488 (regTwo!5887 (regTwo!5887 lt!347923)) s!10566))))

(assert (= (and d!286083 c!157621) b!966987))

(assert (= (and d!286083 (not c!157621)) b!966988))

(assert (= (and b!966988 res!439603) b!966984))

(assert (= (and b!966984 c!157620) b!966985))

(assert (= (and b!966984 (not c!157620)) b!966989))

(assert (= (and b!966989 c!157623) b!966992))

(assert (= (and b!966989 (not c!157623)) b!966986))

(assert (= (and b!966992 (not res!439601)) b!966993))

(assert (= (and b!966986 c!157622) b!966990))

(assert (= (and b!966986 (not c!157622)) b!966983))

(assert (= (and b!966990 (not res!439602)) b!966991))

(assert (= (or b!966991 b!966983) bm!61184))

(assert (= (or b!966987 b!966990) bm!61183))

(assert (=> bm!61183 m!1171903))

(declare-fun m!1172839 () Bool)

(assert (=> bm!61184 m!1172839))

(declare-fun m!1172841 () Bool)

(assert (=> b!966992 m!1172841))

(declare-fun m!1172843 () Bool)

(assert (=> b!966993 m!1172843))

(assert (=> b!966157 d!286083))

(declare-fun d!286085 () Bool)

(assert (=> d!286085 (= (Exists!430 lambda!34028) (choose!6105 lambda!34028))))

(declare-fun bs!241880 () Bool)

(assert (= bs!241880 d!286085))

(declare-fun m!1172845 () Bool)

(assert (=> bs!241880 m!1172845))

(assert (=> d!285843 d!286085))

(declare-fun d!286087 () Bool)

(assert (=> d!286087 (= (Exists!430 lambda!34029) (choose!6105 lambda!34029))))

(declare-fun bs!241881 () Bool)

(assert (= bs!241881 d!286087))

(declare-fun m!1172847 () Bool)

(assert (=> bs!241881 m!1172847))

(assert (=> d!285843 d!286087))

(declare-fun bs!241882 () Bool)

(declare-fun d!286089 () Bool)

(assert (= bs!241882 (and d!286089 d!285831)))

(declare-fun lambda!34059 () Int)

(assert (=> bs!241882 (not (= lambda!34059 lambda!34027))))

(assert (=> bs!241882 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34059 lambda!34026))))

(declare-fun bs!241883 () Bool)

(assert (= bs!241883 (and d!286089 d!285843)))

(assert (=> bs!241883 (= lambda!34059 lambda!34028)))

(declare-fun bs!241884 () Bool)

(assert (= bs!241884 (and d!286089 b!965678)))

(assert (=> bs!241884 (not (= lambda!34059 lambda!33990))))

(declare-fun bs!241885 () Bool)

(assert (= bs!241885 (and d!286089 b!966983)))

(assert (=> bs!241885 (not (= lambda!34059 lambda!34058))))

(declare-fun bs!241886 () Bool)

(assert (= bs!241886 (and d!286089 b!966147)))

(assert (=> bs!241886 (not (= lambda!34059 lambda!34018))))

(declare-fun bs!241887 () Bool)

(assert (= bs!241887 (and d!286089 b!966155)))

(assert (=> bs!241887 (not (= lambda!34059 lambda!34017))))

(declare-fun bs!241888 () Bool)

(assert (= bs!241888 (and d!286089 d!285827)))

(assert (=> bs!241888 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34059 lambda!34021))))

(declare-fun bs!241889 () Bool)

(assert (= bs!241889 (and d!286089 b!965872)))

(assert (=> bs!241889 (not (= lambda!34059 lambda!34009))))

(assert (=> bs!241884 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34059 lambda!33989))))

(declare-fun bs!241890 () Bool)

(assert (= bs!241890 (and d!286089 d!285853)))

(assert (=> bs!241890 (= (= (Star!2687 (reg!3016 r!15766)) lt!347931) (= lambda!34059 lambda!34030))))

(declare-fun bs!241891 () Bool)

(assert (= bs!241891 (and d!286089 b!965684)))

(assert (=> bs!241891 (= (= (Star!2687 (reg!3016 r!15766)) lt!347931) (= lambda!34059 lambda!33987))))

(declare-fun bs!241892 () Bool)

(assert (= bs!241892 (and d!286089 b!966991)))

(assert (=> bs!241892 (not (= lambda!34059 lambda!34057))))

(declare-fun bs!241893 () Bool)

(assert (= bs!241893 (and d!286089 d!286055)))

(assert (=> bs!241893 (not (= lambda!34059 lambda!34056))))

(assert (=> bs!241893 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34059 lambda!34055))))

(declare-fun bs!241894 () Bool)

(assert (= bs!241894 (and d!286089 b!965880)))

(assert (=> bs!241894 (not (= lambda!34059 lambda!34006))))

(assert (=> bs!241891 (not (= lambda!34059 lambda!33988))))

(assert (=> bs!241883 (not (= lambda!34059 lambda!34029))))

(assert (=> d!286089 true))

(assert (=> d!286089 true))

(declare-fun lambda!34060 () Int)

(assert (=> bs!241882 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34060 lambda!34027))))

(assert (=> bs!241882 (not (= lambda!34060 lambda!34026))))

(assert (=> bs!241883 (not (= lambda!34060 lambda!34028))))

(assert (=> bs!241884 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34060 lambda!33990))))

(assert (=> bs!241885 (not (= lambda!34060 lambda!34058))))

(assert (=> bs!241886 (not (= lambda!34060 lambda!34018))))

(assert (=> bs!241887 (= (and (= (reg!3016 r!15766) (reg!3016 lt!347923)) (= (Star!2687 (reg!3016 r!15766)) lt!347923)) (= lambda!34060 lambda!34017))))

(assert (=> bs!241888 (not (= lambda!34060 lambda!34021))))

(assert (=> bs!241889 (not (= lambda!34060 lambda!34009))))

(assert (=> bs!241884 (not (= lambda!34060 lambda!33989))))

(assert (=> bs!241890 (not (= lambda!34060 lambda!34030))))

(assert (=> bs!241891 (not (= lambda!34060 lambda!33987))))

(assert (=> bs!241892 (= (and (= (reg!3016 r!15766) (reg!3016 (regTwo!5887 lt!347923))) (= (Star!2687 (reg!3016 r!15766)) (regTwo!5887 lt!347923))) (= lambda!34060 lambda!34057))))

(assert (=> bs!241893 (= (and (= (reg!3016 r!15766) lt!347936) (= (Star!2687 (reg!3016 r!15766)) (Star!2687 lt!347936))) (= lambda!34060 lambda!34056))))

(assert (=> bs!241893 (not (= lambda!34060 lambda!34055))))

(assert (=> bs!241894 (= (= (Star!2687 (reg!3016 r!15766)) r!15766) (= lambda!34060 lambda!34006))))

(declare-fun bs!241895 () Bool)

(assert (= bs!241895 d!286089))

(assert (=> bs!241895 (not (= lambda!34060 lambda!34059))))

(assert (=> bs!241891 (= (= (Star!2687 (reg!3016 r!15766)) lt!347931) (= lambda!34060 lambda!33988))))

(assert (=> bs!241883 (= lambda!34060 lambda!34029)))

(assert (=> d!286089 true))

(assert (=> d!286089 true))

(assert (=> d!286089 (= (Exists!430 lambda!34059) (Exists!430 lambda!34060))))

(assert (=> d!286089 true))

(declare-fun _$91!344 () Unit!15029)

(assert (=> d!286089 (= (choose!6107 (reg!3016 r!15766) s!10566) _$91!344)))

(declare-fun m!1172849 () Bool)

(assert (=> bs!241895 m!1172849))

(declare-fun m!1172851 () Bool)

(assert (=> bs!241895 m!1172851))

(assert (=> d!285843 d!286089))

(assert (=> d!285843 d!286065))

(declare-fun d!286091 () Bool)

(assert (=> d!286091 (= (isEmpty!6205 (tail!1338 s!10566)) ((_ is Nil!9901) (tail!1338 s!10566)))))

(assert (=> b!966244 d!286091))

(assert (=> b!966244 d!286077))

(declare-fun b!966994 () Bool)

(declare-fun e!623860 () List!9917)

(assert (=> b!966994 (= e!623860 (_2!6452 lt!347938))))

(declare-fun b!966997 () Bool)

(declare-fun e!623859 () Bool)

(declare-fun lt!348083 () List!9917)

(assert (=> b!966997 (= e!623859 (or (not (= (_2!6452 lt!347938) Nil!9901)) (= lt!348083 (t!100963 (_1!6452 lt!347938)))))))

(declare-fun b!966995 () Bool)

(assert (=> b!966995 (= e!623860 (Cons!9901 (h!15302 (t!100963 (_1!6452 lt!347938))) (++!2675 (t!100963 (t!100963 (_1!6452 lt!347938))) (_2!6452 lt!347938))))))

(declare-fun b!966996 () Bool)

(declare-fun res!439605 () Bool)

(assert (=> b!966996 (=> (not res!439605) (not e!623859))))

(assert (=> b!966996 (= res!439605 (= (size!7937 lt!348083) (+ (size!7937 (t!100963 (_1!6452 lt!347938))) (size!7937 (_2!6452 lt!347938)))))))

(declare-fun d!286093 () Bool)

(assert (=> d!286093 e!623859))

(declare-fun res!439604 () Bool)

(assert (=> d!286093 (=> (not res!439604) (not e!623859))))

(assert (=> d!286093 (= res!439604 (= (content!1411 lt!348083) ((_ map or) (content!1411 (t!100963 (_1!6452 lt!347938))) (content!1411 (_2!6452 lt!347938)))))))

(assert (=> d!286093 (= lt!348083 e!623860)))

(declare-fun c!157624 () Bool)

(assert (=> d!286093 (= c!157624 ((_ is Nil!9901) (t!100963 (_1!6452 lt!347938))))))

(assert (=> d!286093 (= (++!2675 (t!100963 (_1!6452 lt!347938)) (_2!6452 lt!347938)) lt!348083)))

(assert (= (and d!286093 c!157624) b!966994))

(assert (= (and d!286093 (not c!157624)) b!966995))

(assert (= (and d!286093 res!439604) b!966996))

(assert (= (and b!966996 res!439605) b!966997))

(declare-fun m!1172853 () Bool)

(assert (=> b!966995 m!1172853))

(declare-fun m!1172855 () Bool)

(assert (=> b!966996 m!1172855))

(assert (=> b!966996 m!1172295))

(assert (=> b!966996 m!1171913))

(declare-fun m!1172857 () Bool)

(assert (=> d!286093 m!1172857))

(declare-fun m!1172859 () Bool)

(assert (=> d!286093 m!1172859))

(assert (=> d!286093 m!1171983))

(assert (=> b!965754 d!286093))

(declare-fun d!286095 () Bool)

(assert (=> d!286095 (= (isDefined!1910 (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566)) (not (isEmpty!6207 (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566))))))

(declare-fun bs!241896 () Bool)

(assert (= bs!241896 d!286095))

(assert (=> bs!241896 m!1171905))

(declare-fun m!1172861 () Bool)

(assert (=> bs!241896 m!1172861))

(assert (=> d!285827 d!286095))

(assert (=> d!285827 d!285817))

(assert (=> d!285827 d!286057))

(declare-fun d!286097 () Bool)

(assert (=> d!286097 (= (Exists!430 lambda!34021) (choose!6105 lambda!34021))))

(declare-fun bs!241897 () Bool)

(assert (= bs!241897 d!286097))

(declare-fun m!1172863 () Bool)

(assert (=> bs!241897 m!1172863))

(assert (=> d!285827 d!286097))

(declare-fun bs!241898 () Bool)

(declare-fun d!286099 () Bool)

(assert (= bs!241898 (and d!286099 d!285831)))

(declare-fun lambda!34063 () Int)

(assert (=> bs!241898 (not (= lambda!34063 lambda!34027))))

(assert (=> bs!241898 (= (= lt!347923 (Star!2687 lt!347936)) (= lambda!34063 lambda!34026))))

(declare-fun bs!241899 () Bool)

(assert (= bs!241899 (and d!286099 d!285843)))

(assert (=> bs!241899 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 (Star!2687 (reg!3016 r!15766)))) (= lambda!34063 lambda!34028))))

(declare-fun bs!241900 () Bool)

(assert (= bs!241900 (and d!286099 b!965678)))

(assert (=> bs!241900 (not (= lambda!34063 lambda!33990))))

(declare-fun bs!241901 () Bool)

(assert (= bs!241901 (and d!286099 b!966983)))

(assert (=> bs!241901 (not (= lambda!34063 lambda!34058))))

(declare-fun bs!241902 () Bool)

(assert (= bs!241902 (and d!286099 b!966147)))

(assert (=> bs!241902 (not (= lambda!34063 lambda!34018))))

(declare-fun bs!241903 () Bool)

(assert (= bs!241903 (and d!286099 b!966155)))

(assert (=> bs!241903 (not (= lambda!34063 lambda!34017))))

(declare-fun bs!241904 () Bool)

(assert (= bs!241904 (and d!286099 d!285827)))

(assert (=> bs!241904 (= lambda!34063 lambda!34021)))

(declare-fun bs!241905 () Bool)

(assert (= bs!241905 (and d!286099 b!965872)))

(assert (=> bs!241905 (not (= lambda!34063 lambda!34009))))

(assert (=> bs!241900 (= lambda!34063 lambda!33989)))

(declare-fun bs!241906 () Bool)

(assert (= bs!241906 (and d!286099 d!285853)))

(assert (=> bs!241906 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!34063 lambda!34030))))

(declare-fun bs!241907 () Bool)

(assert (= bs!241907 (and d!286099 b!965684)))

(assert (=> bs!241907 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 lt!347931)) (= lambda!34063 lambda!33987))))

(declare-fun bs!241908 () Bool)

(assert (= bs!241908 (and d!286099 b!966991)))

(assert (=> bs!241908 (not (= lambda!34063 lambda!34057))))

(declare-fun bs!241909 () Bool)

(assert (= bs!241909 (and d!286099 d!286055)))

(assert (=> bs!241909 (not (= lambda!34063 lambda!34056))))

(assert (=> bs!241909 (= (= lt!347923 (Star!2687 lt!347936)) (= lambda!34063 lambda!34055))))

(declare-fun bs!241910 () Bool)

(assert (= bs!241910 (and d!286099 b!965880)))

(assert (=> bs!241910 (not (= lambda!34063 lambda!34006))))

(declare-fun bs!241911 () Bool)

(assert (= bs!241911 (and d!286099 d!286089)))

(assert (=> bs!241911 (not (= lambda!34063 lambda!34060))))

(assert (=> bs!241911 (= (and (= lt!347936 (reg!3016 r!15766)) (= lt!347923 (Star!2687 (reg!3016 r!15766)))) (= lambda!34063 lambda!34059))))

(assert (=> bs!241907 (not (= lambda!34063 lambda!33988))))

(assert (=> bs!241899 (not (= lambda!34063 lambda!34029))))

(assert (=> d!286099 true))

(assert (=> d!286099 true))

(assert (=> d!286099 true))

(assert (=> d!286099 (= (isDefined!1910 (findConcatSeparation!374 lt!347936 lt!347923 Nil!9901 s!10566 s!10566)) (Exists!430 lambda!34063))))

(assert (=> d!286099 true))

(declare-fun _$89!1145 () Unit!15029)

(assert (=> d!286099 (= (choose!6106 lt!347936 lt!347923 s!10566) _$89!1145)))

(declare-fun bs!241912 () Bool)

(assert (= bs!241912 d!286099))

(assert (=> bs!241912 m!1171905))

(assert (=> bs!241912 m!1171905))

(assert (=> bs!241912 m!1172205))

(declare-fun m!1172865 () Bool)

(assert (=> bs!241912 m!1172865))

(assert (=> d!285827 d!286099))

(assert (=> b!965988 d!286035))

(declare-fun d!286101 () Bool)

(assert (=> d!286101 (= (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))) ((_ is Nil!9901) (tail!1338 (_1!6452 lt!347938))))))

(assert (=> b!966187 d!286101))

(declare-fun d!286103 () Bool)

(assert (=> d!286103 (= (tail!1338 (_1!6452 lt!347938)) (t!100963 (_1!6452 lt!347938)))))

(assert (=> b!966187 d!286103))

(assert (=> bm!61027 d!285815))

(declare-fun d!286105 () Bool)

(assert (=> d!286105 (= (Exists!430 (ite c!157420 lambda!34017 lambda!34018)) (choose!6105 (ite c!157420 lambda!34017 lambda!34018)))))

(declare-fun bs!241913 () Bool)

(assert (= bs!241913 d!286105))

(declare-fun m!1172867 () Bool)

(assert (=> bs!241913 m!1172867))

(assert (=> bm!61055 d!286105))

(declare-fun d!286107 () Bool)

(assert (=> d!286107 true))

(assert (=> d!286107 true))

(declare-fun res!439612 () Bool)

(assert (=> d!286107 (= (choose!6105 lambda!33988) res!439612)))

(assert (=> d!285841 d!286107))

(declare-fun b!967002 () Bool)

(declare-fun e!623866 () Bool)

(assert (=> b!967002 (= e!623866 (= (head!1776 s!10566) (c!157310 lt!347931)))))

(declare-fun b!967003 () Bool)

(declare-fun e!623867 () Bool)

(declare-fun lt!348084 () Bool)

(declare-fun call!61190 () Bool)

(assert (=> b!967003 (= e!623867 (= lt!348084 call!61190))))

(declare-fun b!967004 () Bool)

(declare-fun e!623869 () Bool)

(assert (=> b!967004 (= e!623869 (nullable!815 lt!347931))))

(declare-fun b!967005 () Bool)

(declare-fun res!439617 () Bool)

(declare-fun e!623865 () Bool)

(assert (=> b!967005 (=> res!439617 e!623865)))

(assert (=> b!967005 (= res!439617 (not ((_ is ElementMatch!2687) lt!347931)))))

(declare-fun e!623868 () Bool)

(assert (=> b!967005 (= e!623868 e!623865)))

(declare-fun b!967006 () Bool)

(declare-fun e!623864 () Bool)

(assert (=> b!967006 (= e!623864 (not (= (head!1776 s!10566) (c!157310 lt!347931))))))

(declare-fun b!967007 () Bool)

(declare-fun res!439618 () Bool)

(assert (=> b!967007 (=> res!439618 e!623865)))

(assert (=> b!967007 (= res!439618 e!623866)))

(declare-fun res!439615 () Bool)

(assert (=> b!967007 (=> (not res!439615) (not e!623866))))

(assert (=> b!967007 (= res!439615 lt!348084)))

(declare-fun b!967008 () Bool)

(declare-fun e!623863 () Bool)

(assert (=> b!967008 (= e!623865 e!623863)))

(declare-fun res!439616 () Bool)

(assert (=> b!967008 (=> (not res!439616) (not e!623863))))

(assert (=> b!967008 (= res!439616 (not lt!348084))))

(declare-fun b!967009 () Bool)

(declare-fun res!439620 () Bool)

(assert (=> b!967009 (=> res!439620 e!623864)))

(assert (=> b!967009 (= res!439620 (not (isEmpty!6205 (tail!1338 s!10566))))))

(declare-fun b!967010 () Bool)

(declare-fun res!439614 () Bool)

(assert (=> b!967010 (=> (not res!439614) (not e!623866))))

(assert (=> b!967010 (= res!439614 (isEmpty!6205 (tail!1338 s!10566)))))

(declare-fun d!286109 () Bool)

(assert (=> d!286109 e!623867))

(declare-fun c!157626 () Bool)

(assert (=> d!286109 (= c!157626 ((_ is EmptyExpr!2687) lt!347931))))

(assert (=> d!286109 (= lt!348084 e!623869)))

(declare-fun c!157627 () Bool)

(assert (=> d!286109 (= c!157627 (isEmpty!6205 s!10566))))

(assert (=> d!286109 (validRegex!1156 lt!347931)))

(assert (=> d!286109 (= (matchR!1225 lt!347931 s!10566) lt!348084)))

(declare-fun b!967011 () Bool)

(assert (=> b!967011 (= e!623867 e!623868)))

(declare-fun c!157625 () Bool)

(assert (=> b!967011 (= c!157625 ((_ is EmptyLang!2687) lt!347931))))

(declare-fun b!967012 () Bool)

(assert (=> b!967012 (= e!623869 (matchR!1225 (derivativeStep!623 lt!347931 (head!1776 s!10566)) (tail!1338 s!10566)))))

(declare-fun b!967013 () Bool)

(assert (=> b!967013 (= e!623868 (not lt!348084))))

(declare-fun bm!61185 () Bool)

(assert (=> bm!61185 (= call!61190 (isEmpty!6205 s!10566))))

(declare-fun b!967014 () Bool)

(declare-fun res!439613 () Bool)

(assert (=> b!967014 (=> (not res!439613) (not e!623866))))

(assert (=> b!967014 (= res!439613 (not call!61190))))

(declare-fun b!967015 () Bool)

(assert (=> b!967015 (= e!623863 e!623864)))

(declare-fun res!439619 () Bool)

(assert (=> b!967015 (=> res!439619 e!623864)))

(assert (=> b!967015 (= res!439619 call!61190)))

(assert (= (and d!286109 c!157627) b!967004))

(assert (= (and d!286109 (not c!157627)) b!967012))

(assert (= (and d!286109 c!157626) b!967003))

(assert (= (and d!286109 (not c!157626)) b!967011))

(assert (= (and b!967011 c!157625) b!967013))

(assert (= (and b!967011 (not c!157625)) b!967005))

(assert (= (and b!967005 (not res!439617)) b!967007))

(assert (= (and b!967007 res!439615) b!967014))

(assert (= (and b!967014 res!439613) b!967010))

(assert (= (and b!967010 res!439614) b!967002))

(assert (= (and b!967007 (not res!439618)) b!967008))

(assert (= (and b!967008 res!439616) b!967015))

(assert (= (and b!967015 (not res!439619)) b!967009))

(assert (= (and b!967009 (not res!439620)) b!967006))

(assert (= (or b!967003 b!967014 b!967015) bm!61185))

(assert (=> b!967010 m!1172093))

(assert (=> b!967010 m!1172093))

(assert (=> b!967010 m!1172095))

(declare-fun m!1172869 () Bool)

(assert (=> b!967004 m!1172869))

(assert (=> b!967009 m!1172093))

(assert (=> b!967009 m!1172093))

(assert (=> b!967009 m!1172095))

(assert (=> b!967002 m!1172099))

(assert (=> b!967012 m!1172099))

(assert (=> b!967012 m!1172099))

(declare-fun m!1172871 () Bool)

(assert (=> b!967012 m!1172871))

(assert (=> b!967012 m!1172093))

(assert (=> b!967012 m!1172871))

(assert (=> b!967012 m!1172093))

(declare-fun m!1172873 () Bool)

(assert (=> b!967012 m!1172873))

(assert (=> b!967006 m!1172099))

(assert (=> d!286109 m!1171903))

(declare-fun m!1172875 () Bool)

(assert (=> d!286109 m!1172875))

(assert (=> bm!61185 m!1171903))

(assert (=> b!966235 d!286109))

(assert (=> d!285837 d!285857))

(assert (=> d!285837 d!286065))

(declare-fun bs!241914 () Bool)

(declare-fun d!286111 () Bool)

(assert (= bs!241914 (and d!286111 d!285831)))

(declare-fun lambda!34064 () Int)

(assert (=> bs!241914 (not (= lambda!34064 lambda!34027))))

(assert (=> bs!241914 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 (Star!2687 lt!347936))) (= lambda!34064 lambda!34026))))

(declare-fun bs!241915 () Bool)

(assert (= bs!241915 (and d!286111 d!285843)))

(assert (=> bs!241915 (= (= lt!347931 (Star!2687 (reg!3016 r!15766))) (= lambda!34064 lambda!34028))))

(declare-fun bs!241916 () Bool)

(assert (= bs!241916 (and d!286111 b!965678)))

(assert (=> bs!241916 (not (= lambda!34064 lambda!33990))))

(declare-fun bs!241917 () Bool)

(assert (= bs!241917 (and d!286111 d!286099)))

(assert (=> bs!241917 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 lt!347923)) (= lambda!34064 lambda!34063))))

(declare-fun bs!241918 () Bool)

(assert (= bs!241918 (and d!286111 b!966983)))

(assert (=> bs!241918 (not (= lambda!34064 lambda!34058))))

(declare-fun bs!241919 () Bool)

(assert (= bs!241919 (and d!286111 b!966147)))

(assert (=> bs!241919 (not (= lambda!34064 lambda!34018))))

(declare-fun bs!241920 () Bool)

(assert (= bs!241920 (and d!286111 b!966155)))

(assert (=> bs!241920 (not (= lambda!34064 lambda!34017))))

(declare-fun bs!241921 () Bool)

(assert (= bs!241921 (and d!286111 d!285827)))

(assert (=> bs!241921 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 lt!347923)) (= lambda!34064 lambda!34021))))

(declare-fun bs!241922 () Bool)

(assert (= bs!241922 (and d!286111 b!965872)))

(assert (=> bs!241922 (not (= lambda!34064 lambda!34009))))

(assert (=> bs!241916 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 lt!347923)) (= lambda!34064 lambda!33989))))

(declare-fun bs!241923 () Bool)

(assert (= bs!241923 (and d!286111 d!285853)))

(assert (=> bs!241923 (= lambda!34064 lambda!34030)))

(declare-fun bs!241924 () Bool)

(assert (= bs!241924 (and d!286111 b!965684)))

(assert (=> bs!241924 (= lambda!34064 lambda!33987)))

(declare-fun bs!241925 () Bool)

(assert (= bs!241925 (and d!286111 b!966991)))

(assert (=> bs!241925 (not (= lambda!34064 lambda!34057))))

(declare-fun bs!241926 () Bool)

(assert (= bs!241926 (and d!286111 d!286055)))

(assert (=> bs!241926 (not (= lambda!34064 lambda!34056))))

(assert (=> bs!241926 (= (and (= (reg!3016 r!15766) lt!347936) (= lt!347931 (Star!2687 lt!347936))) (= lambda!34064 lambda!34055))))

(declare-fun bs!241927 () Bool)

(assert (= bs!241927 (and d!286111 b!965880)))

(assert (=> bs!241927 (not (= lambda!34064 lambda!34006))))

(declare-fun bs!241928 () Bool)

(assert (= bs!241928 (and d!286111 d!286089)))

(assert (=> bs!241928 (not (= lambda!34064 lambda!34060))))

(assert (=> bs!241928 (= (= lt!347931 (Star!2687 (reg!3016 r!15766))) (= lambda!34064 lambda!34059))))

(assert (=> bs!241924 (not (= lambda!34064 lambda!33988))))

(assert (=> bs!241915 (not (= lambda!34064 lambda!34029))))

(assert (=> d!286111 true))

(assert (=> d!286111 true))

(assert (=> d!286111 true))

(assert (=> d!286111 (= (isDefined!1910 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566)) (Exists!430 lambda!34064))))

(assert (=> d!286111 true))

(declare-fun _$89!1146 () Unit!15029)

(assert (=> d!286111 (= (choose!6106 (reg!3016 r!15766) lt!347931 s!10566) _$89!1146)))

(declare-fun bs!241929 () Bool)

(assert (= bs!241929 d!286111))

(assert (=> bs!241929 m!1171939))

(assert (=> bs!241929 m!1171939))

(assert (=> bs!241929 m!1171941))

(declare-fun m!1172877 () Bool)

(assert (=> bs!241929 m!1172877))

(assert (=> d!285853 d!286111))

(declare-fun d!286113 () Bool)

(assert (=> d!286113 (= (Exists!430 lambda!34030) (choose!6105 lambda!34030))))

(declare-fun bs!241930 () Bool)

(assert (= bs!241930 d!286113))

(declare-fun m!1172879 () Bool)

(assert (=> bs!241930 m!1172879))

(assert (=> d!285853 d!286113))

(assert (=> d!285853 d!285849))

(assert (=> d!285853 d!285851))

(assert (=> d!285853 d!286065))

(declare-fun d!286115 () Bool)

(assert (=> d!286115 (= (isEmpty!6205 (_2!6452 lt!347938)) ((_ is Nil!9901) (_2!6452 lt!347938)))))

(assert (=> d!285811 d!286115))

(declare-fun bm!61186 () Bool)

(declare-fun call!61191 () Bool)

(declare-fun call!61193 () Bool)

(assert (=> bm!61186 (= call!61191 call!61193)))

(declare-fun b!967016 () Bool)

(declare-fun e!623874 () Bool)

(declare-fun e!623871 () Bool)

(assert (=> b!967016 (= e!623874 e!623871)))

(declare-fun c!157628 () Bool)

(assert (=> b!967016 (= c!157628 ((_ is Union!2687) lt!347923))))

(declare-fun b!967017 () Bool)

(declare-fun res!439622 () Bool)

(declare-fun e!623873 () Bool)

(assert (=> b!967017 (=> res!439622 e!623873)))

(assert (=> b!967017 (= res!439622 (not ((_ is Concat!4520) lt!347923)))))

(assert (=> b!967017 (= e!623871 e!623873)))

(declare-fun bm!61187 () Bool)

(declare-fun call!61192 () Bool)

(assert (=> bm!61187 (= call!61192 (validRegex!1156 (ite c!157628 (regOne!5887 lt!347923) (regOne!5886 lt!347923))))))

(declare-fun c!157629 () Bool)

(declare-fun bm!61188 () Bool)

(assert (=> bm!61188 (= call!61193 (validRegex!1156 (ite c!157629 (reg!3016 lt!347923) (ite c!157628 (regTwo!5887 lt!347923) (regTwo!5886 lt!347923)))))))

(declare-fun b!967019 () Bool)

(declare-fun res!439623 () Bool)

(declare-fun e!623876 () Bool)

(assert (=> b!967019 (=> (not res!439623) (not e!623876))))

(assert (=> b!967019 (= res!439623 call!61192)))

(assert (=> b!967019 (= e!623871 e!623876)))

(declare-fun b!967020 () Bool)

(declare-fun e!623875 () Bool)

(assert (=> b!967020 (= e!623875 call!61193)))

(declare-fun b!967021 () Bool)

(declare-fun e!623870 () Bool)

(assert (=> b!967021 (= e!623870 call!61191)))

(declare-fun b!967022 () Bool)

(assert (=> b!967022 (= e!623874 e!623875)))

(declare-fun res!439621 () Bool)

(assert (=> b!967022 (= res!439621 (not (nullable!815 (reg!3016 lt!347923))))))

(assert (=> b!967022 (=> (not res!439621) (not e!623875))))

(declare-fun b!967023 () Bool)

(assert (=> b!967023 (= e!623873 e!623870)))

(declare-fun res!439625 () Bool)

(assert (=> b!967023 (=> (not res!439625) (not e!623870))))

(assert (=> b!967023 (= res!439625 call!61192)))

(declare-fun b!967024 () Bool)

(declare-fun e!623872 () Bool)

(assert (=> b!967024 (= e!623872 e!623874)))

(assert (=> b!967024 (= c!157629 ((_ is Star!2687) lt!347923))))

(declare-fun d!286117 () Bool)

(declare-fun res!439624 () Bool)

(assert (=> d!286117 (=> res!439624 e!623872)))

(assert (=> d!286117 (= res!439624 ((_ is ElementMatch!2687) lt!347923))))

(assert (=> d!286117 (= (validRegex!1156 lt!347923) e!623872)))

(declare-fun b!967018 () Bool)

(assert (=> b!967018 (= e!623876 call!61191)))

(assert (= (and d!286117 (not res!439624)) b!967024))

(assert (= (and b!967024 c!157629) b!967022))

(assert (= (and b!967024 (not c!157629)) b!967016))

(assert (= (and b!967022 res!439621) b!967020))

(assert (= (and b!967016 c!157628) b!967019))

(assert (= (and b!967016 (not c!157628)) b!967017))

(assert (= (and b!967019 res!439623) b!967018))

(assert (= (and b!967017 (not res!439622)) b!967023))

(assert (= (and b!967023 res!439625) b!967021))

(assert (= (or b!967018 b!967021) bm!61186))

(assert (= (or b!967019 b!967023) bm!61187))

(assert (= (or b!967020 bm!61186) bm!61188))

(declare-fun m!1172881 () Bool)

(assert (=> bm!61187 m!1172881))

(declare-fun m!1172883 () Bool)

(assert (=> bm!61188 m!1172883))

(declare-fun m!1172885 () Bool)

(assert (=> b!967022 m!1172885))

(assert (=> d!285811 d!286117))

(assert (=> b!966182 d!286071))

(declare-fun d!286119 () Bool)

(assert (=> d!286119 (= (head!1776 (_2!6452 lt!347938)) (h!15302 (_2!6452 lt!347938)))))

(assert (=> b!966071 d!286119))

(assert (=> b!966274 d!286071))

(assert (=> bm!61047 d!285815))

(declare-fun bm!61189 () Bool)

(declare-fun call!61194 () Bool)

(declare-fun call!61196 () Bool)

(assert (=> bm!61189 (= call!61194 call!61196)))

(declare-fun b!967025 () Bool)

(declare-fun e!623881 () Bool)

(declare-fun e!623878 () Bool)

(assert (=> b!967025 (= e!623881 e!623878)))

(declare-fun c!157630 () Bool)

(assert (=> b!967025 (= c!157630 ((_ is Union!2687) (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))

(declare-fun b!967026 () Bool)

(declare-fun res!439627 () Bool)

(declare-fun e!623880 () Bool)

(assert (=> b!967026 (=> res!439627 e!623880)))

(assert (=> b!967026 (= res!439627 (not ((_ is Concat!4520) (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766))))))))

(assert (=> b!967026 (= e!623878 e!623880)))

(declare-fun call!61195 () Bool)

(declare-fun bm!61190 () Bool)

(assert (=> bm!61190 (= call!61195 (validRegex!1156 (ite c!157630 (regOne!5887 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))) (regOne!5886 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))))

(declare-fun c!157631 () Bool)

(declare-fun bm!61191 () Bool)

(assert (=> bm!61191 (= call!61196 (validRegex!1156 (ite c!157631 (reg!3016 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))) (ite c!157630 (regTwo!5887 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))) (regTwo!5886 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766))))))))))

(declare-fun b!967028 () Bool)

(declare-fun res!439628 () Bool)

(declare-fun e!623883 () Bool)

(assert (=> b!967028 (=> (not res!439628) (not e!623883))))

(assert (=> b!967028 (= res!439628 call!61195)))

(assert (=> b!967028 (= e!623878 e!623883)))

(declare-fun b!967029 () Bool)

(declare-fun e!623882 () Bool)

(assert (=> b!967029 (= e!623882 call!61196)))

(declare-fun b!967030 () Bool)

(declare-fun e!623877 () Bool)

(assert (=> b!967030 (= e!623877 call!61194)))

(declare-fun b!967031 () Bool)

(assert (=> b!967031 (= e!623881 e!623882)))

(declare-fun res!439626 () Bool)

(assert (=> b!967031 (= res!439626 (not (nullable!815 (reg!3016 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))))

(assert (=> b!967031 (=> (not res!439626) (not e!623882))))

(declare-fun b!967032 () Bool)

(assert (=> b!967032 (= e!623880 e!623877)))

(declare-fun res!439630 () Bool)

(assert (=> b!967032 (=> (not res!439630) (not e!623877))))

(assert (=> b!967032 (= res!439630 call!61195)))

(declare-fun b!967033 () Bool)

(declare-fun e!623879 () Bool)

(assert (=> b!967033 (= e!623879 e!623881)))

(assert (=> b!967033 (= c!157631 ((_ is Star!2687) (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))

(declare-fun d!286121 () Bool)

(declare-fun res!439629 () Bool)

(assert (=> d!286121 (=> res!439629 e!623879)))

(assert (=> d!286121 (= res!439629 ((_ is ElementMatch!2687) (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))))))

(assert (=> d!286121 (= (validRegex!1156 (ite c!157454 (reg!3016 r!15766) (ite c!157453 (regTwo!5887 r!15766) (regTwo!5886 r!15766)))) e!623879)))

(declare-fun b!967027 () Bool)

(assert (=> b!967027 (= e!623883 call!61194)))

(assert (= (and d!286121 (not res!439629)) b!967033))

(assert (= (and b!967033 c!157631) b!967031))

(assert (= (and b!967033 (not c!157631)) b!967025))

(assert (= (and b!967031 res!439626) b!967029))

(assert (= (and b!967025 c!157630) b!967028))

(assert (= (and b!967025 (not c!157630)) b!967026))

(assert (= (and b!967028 res!439628) b!967027))

(assert (= (and b!967026 (not res!439627)) b!967032))

(assert (= (and b!967032 res!439630) b!967030))

(assert (= (or b!967027 b!967030) bm!61189))

(assert (= (or b!967028 b!967032) bm!61190))

(assert (= (or b!967029 bm!61189) bm!61191))

(declare-fun m!1172887 () Bool)

(assert (=> bm!61190 m!1172887))

(declare-fun m!1172889 () Bool)

(assert (=> bm!61191 m!1172889))

(declare-fun m!1172891 () Bool)

(assert (=> b!967031 m!1172891))

(assert (=> bm!61081 d!286121))

(declare-fun d!286123 () Bool)

(assert (=> d!286123 (= (head!1776 (_1!6452 lt!347938)) (h!15302 (_1!6452 lt!347938)))))

(assert (=> b!966180 d!286123))

(declare-fun b!967034 () Bool)

(declare-fun e!623885 () Regex!2687)

(declare-fun call!61198 () Regex!2687)

(assert (=> b!967034 (= e!623885 call!61198)))

(declare-fun call!61199 () Regex!2687)

(declare-fun c!157633 () Bool)

(declare-fun bm!61192 () Bool)

(assert (=> bm!61192 (= call!61199 (removeUselessConcat!334 (ite c!157633 (regTwo!5886 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) (regOne!5887 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))))

(declare-fun b!967035 () Bool)

(declare-fun c!157636 () Bool)

(assert (=> b!967035 (= c!157636 ((_ is Star!2687) (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))

(declare-fun e!623888 () Regex!2687)

(declare-fun e!623884 () Regex!2687)

(assert (=> b!967035 (= e!623888 e!623884)))

(declare-fun b!967036 () Bool)

(declare-fun e!623887 () Regex!2687)

(assert (=> b!967036 (= e!623885 e!623887)))

(declare-fun c!157632 () Bool)

(assert (=> b!967036 (= c!157632 (and ((_ is Concat!4520) (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) ((_ is EmptyExpr!2687) (regTwo!5886 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))))

(declare-fun b!967037 () Bool)

(declare-fun e!623886 () Regex!2687)

(declare-fun call!61201 () Regex!2687)

(assert (=> b!967037 (= e!623886 (Concat!4520 call!61201 call!61199))))

(declare-fun c!157634 () Bool)

(declare-fun c!157635 () Bool)

(declare-fun bm!61193 () Bool)

(assert (=> bm!61193 (= call!61198 (removeUselessConcat!334 (ite c!157634 (regTwo!5886 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) (ite (or c!157632 c!157633) (regOne!5886 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) (ite c!157635 (regTwo!5887 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) (reg!3016 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))))))

(declare-fun b!967038 () Bool)

(assert (=> b!967038 (= e!623886 e!623888)))

(assert (=> b!967038 (= c!157635 ((_ is Union!2687) (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))

(declare-fun b!967039 () Bool)

(declare-fun call!61200 () Regex!2687)

(assert (=> b!967039 (= e!623884 (Star!2687 call!61200))))

(declare-fun bm!61194 () Bool)

(declare-fun call!61197 () Regex!2687)

(assert (=> bm!61194 (= call!61201 call!61197)))

(declare-fun bm!61195 () Bool)

(assert (=> bm!61195 (= call!61200 call!61201)))

(declare-fun b!967040 () Bool)

(assert (=> b!967040 (= c!157633 ((_ is Concat!4520) (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))

(assert (=> b!967040 (= e!623887 e!623886)))

(declare-fun d!286125 () Bool)

(declare-fun e!623889 () Bool)

(assert (=> d!286125 e!623889))

(declare-fun res!439631 () Bool)

(assert (=> d!286125 (=> (not res!439631) (not e!623889))))

(declare-fun lt!348085 () Regex!2687)

(assert (=> d!286125 (= res!439631 (validRegex!1156 lt!348085))))

(assert (=> d!286125 (= lt!348085 e!623885)))

(assert (=> d!286125 (= c!157634 (and ((_ is Concat!4520) (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) ((_ is EmptyExpr!2687) (regOne!5886 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))))))))

(assert (=> d!286125 (validRegex!1156 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766))))))))

(assert (=> d!286125 (= (removeUselessConcat!334 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766)))))) lt!348085)))

(declare-fun b!967041 () Bool)

(assert (=> b!967041 (= e!623888 (Union!2687 call!61199 call!61200))))

(declare-fun b!967042 () Bool)

(assert (=> b!967042 (= e!623887 call!61197)))

(declare-fun b!967043 () Bool)

(assert (=> b!967043 (= e!623884 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766))))))))

(declare-fun b!967044 () Bool)

(assert (=> b!967044 (= e!623889 (= (nullable!815 lt!348085) (nullable!815 (ite c!157441 (regTwo!5886 (reg!3016 r!15766)) (ite (or c!157439 c!157440) (regOne!5886 (reg!3016 r!15766)) (ite c!157442 (regTwo!5887 (reg!3016 r!15766)) (reg!3016 (reg!3016 r!15766))))))))))

(declare-fun bm!61196 () Bool)

(assert (=> bm!61196 (= call!61197 call!61198)))

(assert (= (and d!286125 c!157634) b!967034))

(assert (= (and d!286125 (not c!157634)) b!967036))

(assert (= (and b!967036 c!157632) b!967042))

(assert (= (and b!967036 (not c!157632)) b!967040))

(assert (= (and b!967040 c!157633) b!967037))

(assert (= (and b!967040 (not c!157633)) b!967038))

(assert (= (and b!967038 c!157635) b!967041))

(assert (= (and b!967038 (not c!157635)) b!967035))

(assert (= (and b!967035 c!157636) b!967039))

(assert (= (and b!967035 (not c!157636)) b!967043))

(assert (= (or b!967041 b!967039) bm!61195))

(assert (= (or b!967037 b!967041) bm!61192))

(assert (= (or b!967037 bm!61195) bm!61194))

(assert (= (or b!967042 bm!61194) bm!61196))

(assert (= (or b!967034 bm!61196) bm!61193))

(assert (= (and d!286125 res!439631) b!967044))

(declare-fun m!1172893 () Bool)

(assert (=> bm!61192 m!1172893))

(declare-fun m!1172895 () Bool)

(assert (=> bm!61193 m!1172895))

(declare-fun m!1172897 () Bool)

(assert (=> d!286125 m!1172897))

(declare-fun m!1172899 () Bool)

(assert (=> d!286125 m!1172899))

(declare-fun m!1172901 () Bool)

(assert (=> b!967044 m!1172901))

(declare-fun m!1172903 () Bool)

(assert (=> b!967044 m!1172903))

(assert (=> bm!61068 d!286125))

(declare-fun d!286127 () Bool)

(declare-fun lt!348086 () Int)

(assert (=> d!286127 (>= lt!348086 0)))

(declare-fun e!623890 () Int)

(assert (=> d!286127 (= lt!348086 e!623890)))

(declare-fun c!157637 () Bool)

(assert (=> d!286127 (= c!157637 ((_ is Nil!9901) (t!100963 (_1!6452 lt!347938))))))

(assert (=> d!286127 (= (size!7937 (t!100963 (_1!6452 lt!347938))) lt!348086)))

(declare-fun b!967045 () Bool)

(assert (=> b!967045 (= e!623890 0)))

(declare-fun b!967046 () Bool)

(assert (=> b!967046 (= e!623890 (+ 1 (size!7937 (t!100963 (t!100963 (_1!6452 lt!347938))))))))

(assert (= (and d!286127 c!157637) b!967045))

(assert (= (and d!286127 (not c!157637)) b!967046))

(declare-fun m!1172905 () Bool)

(assert (=> b!967046 m!1172905))

(assert (=> b!966292 d!286127))

(assert (=> b!966146 d!285855))

(declare-fun b!967047 () Bool)

(declare-fun e!623892 () Regex!2687)

(declare-fun call!61203 () Regex!2687)

(assert (=> b!967047 (= e!623892 call!61203)))

(declare-fun c!157639 () Bool)

(declare-fun bm!61197 () Bool)

(declare-fun call!61204 () Regex!2687)

(assert (=> bm!61197 (= call!61204 (removeUselessConcat!334 (ite c!157639 (regTwo!5886 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) (regOne!5887 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))))

(declare-fun b!967048 () Bool)

(declare-fun c!157642 () Bool)

(assert (=> b!967048 (= c!157642 ((_ is Star!2687) (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))

(declare-fun e!623895 () Regex!2687)

(declare-fun e!623891 () Regex!2687)

(assert (=> b!967048 (= e!623895 e!623891)))

(declare-fun b!967049 () Bool)

(declare-fun e!623894 () Regex!2687)

(assert (=> b!967049 (= e!623892 e!623894)))

(declare-fun c!157638 () Bool)

(assert (=> b!967049 (= c!157638 (and ((_ is Concat!4520) (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) ((_ is EmptyExpr!2687) (regTwo!5886 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))))

(declare-fun b!967050 () Bool)

(declare-fun e!623893 () Regex!2687)

(declare-fun call!61206 () Regex!2687)

(assert (=> b!967050 (= e!623893 (Concat!4520 call!61206 call!61204))))

(declare-fun c!157641 () Bool)

(declare-fun c!157640 () Bool)

(declare-fun bm!61198 () Bool)

(assert (=> bm!61198 (= call!61203 (removeUselessConcat!334 (ite c!157640 (regTwo!5886 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) (ite (or c!157638 c!157639) (regOne!5886 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) (ite c!157641 (regTwo!5887 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) (reg!3016 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))))))

(declare-fun b!967051 () Bool)

(assert (=> b!967051 (= e!623893 e!623895)))

(assert (=> b!967051 (= c!157641 ((_ is Union!2687) (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))

(declare-fun b!967052 () Bool)

(declare-fun call!61205 () Regex!2687)

(assert (=> b!967052 (= e!623891 (Star!2687 call!61205))))

(declare-fun bm!61199 () Bool)

(declare-fun call!61202 () Regex!2687)

(assert (=> bm!61199 (= call!61206 call!61202)))

(declare-fun bm!61200 () Bool)

(assert (=> bm!61200 (= call!61205 call!61206)))

(declare-fun b!967053 () Bool)

(assert (=> b!967053 (= c!157639 ((_ is Concat!4520) (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))

(assert (=> b!967053 (= e!623894 e!623893)))

(declare-fun d!286129 () Bool)

(declare-fun e!623896 () Bool)

(assert (=> d!286129 e!623896))

(declare-fun res!439632 () Bool)

(assert (=> d!286129 (=> (not res!439632) (not e!623896))))

(declare-fun lt!348087 () Regex!2687)

(assert (=> d!286129 (= res!439632 (validRegex!1156 lt!348087))))

(assert (=> d!286129 (= lt!348087 e!623892)))

(assert (=> d!286129 (= c!157640 (and ((_ is Concat!4520) (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) ((_ is EmptyExpr!2687) (regOne!5886 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))))))))

(assert (=> d!286129 (validRegex!1156 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766))))))

(assert (=> d!286129 (= (removeUselessConcat!334 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766)))) lt!348087)))

(declare-fun b!967054 () Bool)

(assert (=> b!967054 (= e!623895 (Union!2687 call!61204 call!61205))))

(declare-fun b!967055 () Bool)

(assert (=> b!967055 (= e!623894 call!61202)))

(declare-fun b!967056 () Bool)

(assert (=> b!967056 (= e!623891 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766))))))

(declare-fun b!967057 () Bool)

(assert (=> b!967057 (= e!623896 (= (nullable!815 lt!348087) (nullable!815 (ite c!157440 (regTwo!5886 (reg!3016 r!15766)) (regOne!5887 (reg!3016 r!15766))))))))

(declare-fun bm!61201 () Bool)

(assert (=> bm!61201 (= call!61202 call!61203)))

(assert (= (and d!286129 c!157640) b!967047))

(assert (= (and d!286129 (not c!157640)) b!967049))

(assert (= (and b!967049 c!157638) b!967055))

(assert (= (and b!967049 (not c!157638)) b!967053))

(assert (= (and b!967053 c!157639) b!967050))

(assert (= (and b!967053 (not c!157639)) b!967051))

(assert (= (and b!967051 c!157641) b!967054))

(assert (= (and b!967051 (not c!157641)) b!967048))

(assert (= (and b!967048 c!157642) b!967052))

(assert (= (and b!967048 (not c!157642)) b!967056))

(assert (= (or b!967054 b!967052) bm!61200))

(assert (= (or b!967050 b!967054) bm!61197))

(assert (= (or b!967050 bm!61200) bm!61199))

(assert (= (or b!967055 bm!61199) bm!61201))

(assert (= (or b!967047 bm!61201) bm!61198))

(assert (= (and d!286129 res!439632) b!967057))

(declare-fun m!1172907 () Bool)

(assert (=> bm!61197 m!1172907))

(declare-fun m!1172909 () Bool)

(assert (=> bm!61198 m!1172909))

(declare-fun m!1172911 () Bool)

(assert (=> d!286129 m!1172911))

(declare-fun m!1172913 () Bool)

(assert (=> d!286129 m!1172913))

(declare-fun m!1172915 () Bool)

(assert (=> b!967057 m!1172915))

(declare-fun m!1172917 () Bool)

(assert (=> b!967057 m!1172917))

(assert (=> bm!61067 d!286129))

(assert (=> b!966284 d!286101))

(assert (=> b!966284 d!286103))

(assert (=> b!966231 d!286039))

(assert (=> b!966231 d!286041))

(assert (=> b!966231 d!286043))

(declare-fun b!967058 () Bool)

(declare-fun e!623899 () Option!2268)

(assert (=> b!967058 (= e!623899 None!2267)))

(declare-fun b!967059 () Bool)

(declare-fun e!623898 () Bool)

(declare-fun lt!348088 () Option!2268)

(assert (=> b!967059 (= e!623898 (not (isDefined!1910 lt!348088)))))

(declare-fun b!967060 () Bool)

(declare-fun e!623900 () Option!2268)

(assert (=> b!967060 (= e!623900 (Some!2267 (tuple2!11253 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566))))))

(declare-fun b!967061 () Bool)

(declare-fun res!439635 () Bool)

(declare-fun e!623897 () Bool)

(assert (=> b!967061 (=> (not res!439635) (not e!623897))))

(assert (=> b!967061 (= res!439635 (matchR!1225 (reg!3016 r!15766) (_1!6452 (get!3395 lt!348088))))))

(declare-fun b!967062 () Bool)

(declare-fun lt!348089 () Unit!15029)

(declare-fun lt!348090 () Unit!15029)

(assert (=> b!967062 (= lt!348089 lt!348090)))

(assert (=> b!967062 (= (++!2675 (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (Cons!9901 (h!15302 (t!100963 s!10566)) Nil!9901)) (t!100963 (t!100963 s!10566))) s!10566)))

(assert (=> b!967062 (= lt!348090 (lemmaMoveElementToOtherListKeepsConcatEq!278 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (h!15302 (t!100963 s!10566)) (t!100963 (t!100963 s!10566)) s!10566))))

(assert (=> b!967062 (= e!623899 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 (++!2675 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (Cons!9901 (h!15302 (t!100963 s!10566)) Nil!9901)) (t!100963 (t!100963 s!10566)) s!10566))))

(declare-fun d!286131 () Bool)

(assert (=> d!286131 e!623898))

(declare-fun res!439634 () Bool)

(assert (=> d!286131 (=> res!439634 e!623898)))

(assert (=> d!286131 (= res!439634 e!623897)))

(declare-fun res!439633 () Bool)

(assert (=> d!286131 (=> (not res!439633) (not e!623897))))

(assert (=> d!286131 (= res!439633 (isDefined!1910 lt!348088))))

(assert (=> d!286131 (= lt!348088 e!623900)))

(declare-fun c!157643 () Bool)

(declare-fun e!623901 () Bool)

(assert (=> d!286131 (= c!157643 e!623901)))

(declare-fun res!439637 () Bool)

(assert (=> d!286131 (=> (not res!439637) (not e!623901))))

(assert (=> d!286131 (= res!439637 (matchR!1225 (reg!3016 r!15766) (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901))))))

(assert (=> d!286131 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!286131 (= (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 (++!2675 Nil!9901 (Cons!9901 (h!15302 s!10566) Nil!9901)) (t!100963 s!10566) s!10566) lt!348088)))

(declare-fun b!967063 () Bool)

(declare-fun res!439636 () Bool)

(assert (=> b!967063 (=> (not res!439636) (not e!623897))))

(assert (=> b!967063 (= res!439636 (matchR!1225 lt!347931 (_2!6452 (get!3395 lt!348088))))))

(declare-fun b!967064 () Bool)

(assert (=> b!967064 (= e!623900 e!623899)))

(declare-fun c!157644 () Bool)

(assert (=> b!967064 (= c!157644 ((_ is Nil!9901) (t!100963 s!10566)))))

(declare-fun b!967065 () Bool)

(assert (=> b!967065 (= e!623897 (= (++!2675 (_1!6452 (get!3395 lt!348088)) (_2!6452 (get!3395 lt!348088))) s!10566))))

(declare-fun b!967066 () Bool)

(assert (=> b!967066 (= e!623901 (matchR!1225 lt!347931 (t!100963 s!10566)))))

(assert (= (and d!286131 res!439637) b!967066))

(assert (= (and d!286131 c!157643) b!967060))

(assert (= (and d!286131 (not c!157643)) b!967064))

(assert (= (and b!967064 c!157644) b!967058))

(assert (= (and b!967064 (not c!157644)) b!967062))

(assert (= (and d!286131 res!439633) b!967061))

(assert (= (and b!967061 res!439635) b!967063))

(assert (= (and b!967063 res!439636) b!967065))

(assert (= (and d!286131 (not res!439634)) b!967059))

(declare-fun m!1172919 () Bool)

(assert (=> b!967065 m!1172919))

(declare-fun m!1172921 () Bool)

(assert (=> b!967065 m!1172921))

(declare-fun m!1172923 () Bool)

(assert (=> b!967059 m!1172923))

(assert (=> d!286131 m!1172923))

(assert (=> d!286131 m!1172185))

(declare-fun m!1172925 () Bool)

(assert (=> d!286131 m!1172925))

(assert (=> d!286131 m!1172235))

(declare-fun m!1172927 () Bool)

(assert (=> b!967066 m!1172927))

(assert (=> b!967063 m!1172919))

(declare-fun m!1172929 () Bool)

(assert (=> b!967063 m!1172929))

(assert (=> b!967061 m!1172919))

(declare-fun m!1172931 () Bool)

(assert (=> b!967061 m!1172931))

(assert (=> b!967062 m!1172185))

(assert (=> b!967062 m!1172769))

(assert (=> b!967062 m!1172769))

(assert (=> b!967062 m!1172771))

(assert (=> b!967062 m!1172185))

(assert (=> b!967062 m!1172773))

(assert (=> b!967062 m!1172769))

(declare-fun m!1172933 () Bool)

(assert (=> b!967062 m!1172933))

(assert (=> b!966231 d!286131))

(declare-fun b!967067 () Bool)

(declare-fun e!623905 () Bool)

(assert (=> b!967067 (= e!623905 (= (head!1776 (tail!1338 s!10566)) (c!157310 (derivativeStep!623 r!15766 (head!1776 s!10566)))))))

(declare-fun b!967068 () Bool)

(declare-fun e!623906 () Bool)

(declare-fun lt!348091 () Bool)

(declare-fun call!61207 () Bool)

(assert (=> b!967068 (= e!623906 (= lt!348091 call!61207))))

(declare-fun b!967069 () Bool)

(declare-fun e!623908 () Bool)

(assert (=> b!967069 (= e!623908 (nullable!815 (derivativeStep!623 r!15766 (head!1776 s!10566))))))

(declare-fun b!967070 () Bool)

(declare-fun res!439642 () Bool)

(declare-fun e!623904 () Bool)

(assert (=> b!967070 (=> res!439642 e!623904)))

(assert (=> b!967070 (= res!439642 (not ((_ is ElementMatch!2687) (derivativeStep!623 r!15766 (head!1776 s!10566)))))))

(declare-fun e!623907 () Bool)

(assert (=> b!967070 (= e!623907 e!623904)))

(declare-fun b!967071 () Bool)

(declare-fun e!623903 () Bool)

(assert (=> b!967071 (= e!623903 (not (= (head!1776 (tail!1338 s!10566)) (c!157310 (derivativeStep!623 r!15766 (head!1776 s!10566))))))))

(declare-fun b!967072 () Bool)

(declare-fun res!439643 () Bool)

(assert (=> b!967072 (=> res!439643 e!623904)))

(assert (=> b!967072 (= res!439643 e!623905)))

(declare-fun res!439640 () Bool)

(assert (=> b!967072 (=> (not res!439640) (not e!623905))))

(assert (=> b!967072 (= res!439640 lt!348091)))

(declare-fun b!967073 () Bool)

(declare-fun e!623902 () Bool)

(assert (=> b!967073 (= e!623904 e!623902)))

(declare-fun res!439641 () Bool)

(assert (=> b!967073 (=> (not res!439641) (not e!623902))))

(assert (=> b!967073 (= res!439641 (not lt!348091))))

(declare-fun b!967074 () Bool)

(declare-fun res!439645 () Bool)

(assert (=> b!967074 (=> res!439645 e!623903)))

(assert (=> b!967074 (= res!439645 (not (isEmpty!6205 (tail!1338 (tail!1338 s!10566)))))))

(declare-fun b!967075 () Bool)

(declare-fun res!439639 () Bool)

(assert (=> b!967075 (=> (not res!439639) (not e!623905))))

(assert (=> b!967075 (= res!439639 (isEmpty!6205 (tail!1338 (tail!1338 s!10566))))))

(declare-fun d!286133 () Bool)

(assert (=> d!286133 e!623906))

(declare-fun c!157646 () Bool)

(assert (=> d!286133 (= c!157646 ((_ is EmptyExpr!2687) (derivativeStep!623 r!15766 (head!1776 s!10566))))))

(assert (=> d!286133 (= lt!348091 e!623908)))

(declare-fun c!157647 () Bool)

(assert (=> d!286133 (= c!157647 (isEmpty!6205 (tail!1338 s!10566)))))

(assert (=> d!286133 (validRegex!1156 (derivativeStep!623 r!15766 (head!1776 s!10566)))))

(assert (=> d!286133 (= (matchR!1225 (derivativeStep!623 r!15766 (head!1776 s!10566)) (tail!1338 s!10566)) lt!348091)))

(declare-fun b!967076 () Bool)

(assert (=> b!967076 (= e!623906 e!623907)))

(declare-fun c!157645 () Bool)

(assert (=> b!967076 (= c!157645 ((_ is EmptyLang!2687) (derivativeStep!623 r!15766 (head!1776 s!10566))))))

(declare-fun b!967077 () Bool)

(assert (=> b!967077 (= e!623908 (matchR!1225 (derivativeStep!623 (derivativeStep!623 r!15766 (head!1776 s!10566)) (head!1776 (tail!1338 s!10566))) (tail!1338 (tail!1338 s!10566))))))

(declare-fun b!967078 () Bool)

(assert (=> b!967078 (= e!623907 (not lt!348091))))

(declare-fun bm!61202 () Bool)

(assert (=> bm!61202 (= call!61207 (isEmpty!6205 (tail!1338 s!10566)))))

(declare-fun b!967079 () Bool)

(declare-fun res!439638 () Bool)

(assert (=> b!967079 (=> (not res!439638) (not e!623905))))

(assert (=> b!967079 (= res!439638 (not call!61207))))

(declare-fun b!967080 () Bool)

(assert (=> b!967080 (= e!623902 e!623903)))

(declare-fun res!439644 () Bool)

(assert (=> b!967080 (=> res!439644 e!623903)))

(assert (=> b!967080 (= res!439644 call!61207)))

(assert (= (and d!286133 c!157647) b!967069))

(assert (= (and d!286133 (not c!157647)) b!967077))

(assert (= (and d!286133 c!157646) b!967068))

(assert (= (and d!286133 (not c!157646)) b!967076))

(assert (= (and b!967076 c!157645) b!967078))

(assert (= (and b!967076 (not c!157645)) b!967070))

(assert (= (and b!967070 (not res!439642)) b!967072))

(assert (= (and b!967072 res!439640) b!967079))

(assert (= (and b!967079 res!439638) b!967075))

(assert (= (and b!967075 res!439639) b!967067))

(assert (= (and b!967072 (not res!439643)) b!967073))

(assert (= (and b!967073 res!439641) b!967080))

(assert (= (and b!967080 (not res!439644)) b!967074))

(assert (= (and b!967074 (not res!439645)) b!967071))

(assert (= (or b!967068 b!967079 b!967080) bm!61202))

(assert (=> b!967075 m!1172093))

(assert (=> b!967075 m!1172809))

(assert (=> b!967075 m!1172809))

(assert (=> b!967075 m!1172811))

(assert (=> b!967069 m!1172101))

(declare-fun m!1172935 () Bool)

(assert (=> b!967069 m!1172935))

(assert (=> b!967074 m!1172093))

(assert (=> b!967074 m!1172809))

(assert (=> b!967074 m!1172809))

(assert (=> b!967074 m!1172811))

(assert (=> b!967067 m!1172093))

(assert (=> b!967067 m!1172815))

(assert (=> b!967077 m!1172093))

(assert (=> b!967077 m!1172815))

(assert (=> b!967077 m!1172101))

(assert (=> b!967077 m!1172815))

(declare-fun m!1172937 () Bool)

(assert (=> b!967077 m!1172937))

(assert (=> b!967077 m!1172093))

(assert (=> b!967077 m!1172809))

(assert (=> b!967077 m!1172937))

(assert (=> b!967077 m!1172809))

(declare-fun m!1172939 () Bool)

(assert (=> b!967077 m!1172939))

(assert (=> b!967071 m!1172093))

(assert (=> b!967071 m!1172815))

(assert (=> d!286133 m!1172093))

(assert (=> d!286133 m!1172095))

(assert (=> d!286133 m!1172101))

(declare-fun m!1172941 () Bool)

(assert (=> d!286133 m!1172941))

(assert (=> bm!61202 m!1172093))

(assert (=> bm!61202 m!1172095))

(assert (=> b!965998 d!286133))

(declare-fun b!967081 () Bool)

(declare-fun e!623910 () Regex!2687)

(declare-fun call!61210 () Regex!2687)

(assert (=> b!967081 (= e!623910 (Union!2687 (Concat!4520 call!61210 (regTwo!5886 r!15766)) EmptyLang!2687))))

(declare-fun b!967082 () Bool)

(declare-fun e!623913 () Regex!2687)

(declare-fun call!61208 () Regex!2687)

(assert (=> b!967082 (= e!623913 (Concat!4520 call!61208 r!15766))))

(declare-fun b!967083 () Bool)

(declare-fun e!623909 () Regex!2687)

(declare-fun e!623912 () Regex!2687)

(assert (=> b!967083 (= e!623909 e!623912)))

(declare-fun c!157651 () Bool)

(assert (=> b!967083 (= c!157651 ((_ is ElementMatch!2687) r!15766))))

(declare-fun bm!61203 () Bool)

(declare-fun call!61211 () Regex!2687)

(assert (=> bm!61203 (= call!61208 call!61211)))

(declare-fun b!967084 () Bool)

(declare-fun call!61209 () Regex!2687)

(assert (=> b!967084 (= e!623910 (Union!2687 (Concat!4520 call!61209 (regTwo!5886 r!15766)) call!61210))))

(declare-fun c!157649 () Bool)

(declare-fun bm!61204 () Bool)

(declare-fun c!157652 () Bool)

(declare-fun c!157648 () Bool)

(assert (=> bm!61204 (= call!61211 (derivativeStep!623 (ite c!157652 (regOne!5887 r!15766) (ite c!157648 (reg!3016 r!15766) (ite c!157649 (regTwo!5886 r!15766) (regOne!5886 r!15766)))) (head!1776 s!10566)))))

(declare-fun bm!61205 () Bool)

(assert (=> bm!61205 (= call!61210 call!61208)))

(declare-fun b!967086 () Bool)

(declare-fun e!623911 () Regex!2687)

(assert (=> b!967086 (= e!623911 (Union!2687 call!61211 call!61209))))

(declare-fun b!967087 () Bool)

(assert (=> b!967087 (= e!623909 EmptyLang!2687)))

(declare-fun b!967088 () Bool)

(assert (=> b!967088 (= c!157649 (nullable!815 (regOne!5886 r!15766)))))

(assert (=> b!967088 (= e!623913 e!623910)))

(declare-fun b!967089 () Bool)

(assert (=> b!967089 (= e!623911 e!623913)))

(assert (=> b!967089 (= c!157648 ((_ is Star!2687) r!15766))))

(declare-fun bm!61206 () Bool)

(assert (=> bm!61206 (= call!61209 (derivativeStep!623 (ite c!157652 (regTwo!5887 r!15766) (regOne!5886 r!15766)) (head!1776 s!10566)))))

(declare-fun b!967090 () Bool)

(assert (=> b!967090 (= e!623912 (ite (= (head!1776 s!10566) (c!157310 r!15766)) EmptyExpr!2687 EmptyLang!2687))))

(declare-fun b!967085 () Bool)

(assert (=> b!967085 (= c!157652 ((_ is Union!2687) r!15766))))

(assert (=> b!967085 (= e!623912 e!623911)))

(declare-fun d!286135 () Bool)

(declare-fun lt!348092 () Regex!2687)

(assert (=> d!286135 (validRegex!1156 lt!348092)))

(assert (=> d!286135 (= lt!348092 e!623909)))

(declare-fun c!157650 () Bool)

(assert (=> d!286135 (= c!157650 (or ((_ is EmptyExpr!2687) r!15766) ((_ is EmptyLang!2687) r!15766)))))

(assert (=> d!286135 (validRegex!1156 r!15766)))

(assert (=> d!286135 (= (derivativeStep!623 r!15766 (head!1776 s!10566)) lt!348092)))

(assert (= (and d!286135 c!157650) b!967087))

(assert (= (and d!286135 (not c!157650)) b!967083))

(assert (= (and b!967083 c!157651) b!967090))

(assert (= (and b!967083 (not c!157651)) b!967085))

(assert (= (and b!967085 c!157652) b!967086))

(assert (= (and b!967085 (not c!157652)) b!967089))

(assert (= (and b!967089 c!157648) b!967082))

(assert (= (and b!967089 (not c!157648)) b!967088))

(assert (= (and b!967088 c!157649) b!967084))

(assert (= (and b!967088 (not c!157649)) b!967081))

(assert (= (or b!967084 b!967081) bm!61205))

(assert (= (or b!967082 bm!61205) bm!61203))

(assert (= (or b!967086 bm!61203) bm!61204))

(assert (= (or b!967086 b!967084) bm!61206))

(assert (=> bm!61204 m!1172099))

(declare-fun m!1172943 () Bool)

(assert (=> bm!61204 m!1172943))

(declare-fun m!1172945 () Bool)

(assert (=> b!967088 m!1172945))

(assert (=> bm!61206 m!1172099))

(declare-fun m!1172947 () Bool)

(assert (=> bm!61206 m!1172947))

(declare-fun m!1172949 () Bool)

(assert (=> d!286135 m!1172949))

(assert (=> d!286135 m!1171921))

(assert (=> b!965998 d!286135))

(assert (=> b!965998 d!286035))

(assert (=> b!965998 d!286077))

(declare-fun d!286137 () Bool)

(declare-fun lt!348093 () Int)

(assert (=> d!286137 (>= lt!348093 0)))

(declare-fun e!623914 () Int)

(assert (=> d!286137 (= lt!348093 e!623914)))

(declare-fun c!157653 () Bool)

(assert (=> d!286137 (= c!157653 ((_ is Nil!9901) (t!100963 (_2!6452 lt!347938))))))

(assert (=> d!286137 (= (size!7937 (t!100963 (_2!6452 lt!347938))) lt!348093)))

(declare-fun b!967091 () Bool)

(assert (=> b!967091 (= e!623914 0)))

(declare-fun b!967092 () Bool)

(assert (=> b!967092 (= e!623914 (+ 1 (size!7937 (t!100963 (t!100963 (_2!6452 lt!347938))))))))

(assert (= (and d!286137 c!157653) b!967091))

(assert (= (and d!286137 (not c!157653)) b!967092))

(declare-fun m!1172951 () Bool)

(assert (=> b!967092 m!1172951))

(assert (=> b!966179 d!286137))

(declare-fun bs!241931 () Bool)

(declare-fun b!967101 () Bool)

(assert (= bs!241931 (and b!967101 d!285831)))

(declare-fun lambda!34065 () Int)

(assert (=> bs!241931 (= (and (= (reg!3016 (regTwo!5887 r!15766)) lt!347936) (= (regTwo!5887 r!15766) (Star!2687 lt!347936))) (= lambda!34065 lambda!34027))))

(assert (=> bs!241931 (not (= lambda!34065 lambda!34026))))

(declare-fun bs!241932 () Bool)

(assert (= bs!241932 (and b!967101 d!286111)))

(assert (=> bs!241932 (not (= lambda!34065 lambda!34064))))

(declare-fun bs!241933 () Bool)

(assert (= bs!241933 (and b!967101 d!285843)))

(assert (=> bs!241933 (not (= lambda!34065 lambda!34028))))

(declare-fun bs!241934 () Bool)

(assert (= bs!241934 (and b!967101 b!965678)))

(assert (=> bs!241934 (= (and (= (reg!3016 (regTwo!5887 r!15766)) lt!347936) (= (regTwo!5887 r!15766) lt!347923)) (= lambda!34065 lambda!33990))))

(declare-fun bs!241935 () Bool)

(assert (= bs!241935 (and b!967101 d!286099)))

(assert (=> bs!241935 (not (= lambda!34065 lambda!34063))))

(declare-fun bs!241936 () Bool)

(assert (= bs!241936 (and b!967101 b!966983)))

(assert (=> bs!241936 (not (= lambda!34065 lambda!34058))))

(declare-fun bs!241937 () Bool)

(assert (= bs!241937 (and b!967101 b!966147)))

(assert (=> bs!241937 (not (= lambda!34065 lambda!34018))))

(declare-fun bs!241938 () Bool)

(assert (= bs!241938 (and b!967101 b!966155)))

(assert (=> bs!241938 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 lt!347923)) (= (regTwo!5887 r!15766) lt!347923)) (= lambda!34065 lambda!34017))))

(declare-fun bs!241939 () Bool)

(assert (= bs!241939 (and b!967101 d!285827)))

(assert (=> bs!241939 (not (= lambda!34065 lambda!34021))))

(declare-fun bs!241940 () Bool)

(assert (= bs!241940 (and b!967101 b!965872)))

(assert (=> bs!241940 (not (= lambda!34065 lambda!34009))))

(assert (=> bs!241934 (not (= lambda!34065 lambda!33989))))

(declare-fun bs!241941 () Bool)

(assert (= bs!241941 (and b!967101 d!285853)))

(assert (=> bs!241941 (not (= lambda!34065 lambda!34030))))

(declare-fun bs!241942 () Bool)

(assert (= bs!241942 (and b!967101 b!965684)))

(assert (=> bs!241942 (not (= lambda!34065 lambda!33987))))

(declare-fun bs!241943 () Bool)

(assert (= bs!241943 (and b!967101 b!966991)))

(assert (=> bs!241943 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 (regTwo!5887 lt!347923))) (= (regTwo!5887 r!15766) (regTwo!5887 lt!347923))) (= lambda!34065 lambda!34057))))

(declare-fun bs!241944 () Bool)

(assert (= bs!241944 (and b!967101 d!286055)))

(assert (=> bs!241944 (= (and (= (reg!3016 (regTwo!5887 r!15766)) lt!347936) (= (regTwo!5887 r!15766) (Star!2687 lt!347936))) (= lambda!34065 lambda!34056))))

(assert (=> bs!241944 (not (= lambda!34065 lambda!34055))))

(declare-fun bs!241945 () Bool)

(assert (= bs!241945 (and b!967101 b!965880)))

(assert (=> bs!241945 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 r!15766)) (= (regTwo!5887 r!15766) r!15766)) (= lambda!34065 lambda!34006))))

(declare-fun bs!241946 () Bool)

(assert (= bs!241946 (and b!967101 d!286089)))

(assert (=> bs!241946 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 r!15766)) (= (regTwo!5887 r!15766) (Star!2687 (reg!3016 r!15766)))) (= lambda!34065 lambda!34060))))

(assert (=> bs!241946 (not (= lambda!34065 lambda!34059))))

(assert (=> bs!241942 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 r!15766)) (= (regTwo!5887 r!15766) lt!347931)) (= lambda!34065 lambda!33988))))

(assert (=> bs!241933 (= (and (= (reg!3016 (regTwo!5887 r!15766)) (reg!3016 r!15766)) (= (regTwo!5887 r!15766) (Star!2687 (reg!3016 r!15766)))) (= lambda!34065 lambda!34029))))

(assert (=> b!967101 true))

(assert (=> b!967101 true))

(declare-fun bs!241947 () Bool)

(declare-fun b!967093 () Bool)

(assert (= bs!241947 (and b!967093 d!285831)))

(declare-fun lambda!34066 () Int)

(assert (=> bs!241947 (not (= lambda!34066 lambda!34027))))

(assert (=> bs!241947 (not (= lambda!34066 lambda!34026))))

(declare-fun bs!241948 () Bool)

(assert (= bs!241948 (and b!967093 d!286111)))

(assert (=> bs!241948 (not (= lambda!34066 lambda!34064))))

(declare-fun bs!241949 () Bool)

(assert (= bs!241949 (and b!967093 d!285843)))

(assert (=> bs!241949 (not (= lambda!34066 lambda!34028))))

(declare-fun bs!241950 () Bool)

(assert (= bs!241950 (and b!967093 b!965678)))

(assert (=> bs!241950 (not (= lambda!34066 lambda!33990))))

(declare-fun bs!241951 () Bool)

(assert (= bs!241951 (and b!967093 d!286099)))

(assert (=> bs!241951 (not (= lambda!34066 lambda!34063))))

(declare-fun bs!241952 () Bool)

(assert (= bs!241952 (and b!967093 b!966983)))

(assert (=> bs!241952 (= (and (= (regOne!5886 (regTwo!5887 r!15766)) (regOne!5886 (regTwo!5887 lt!347923))) (= (regTwo!5886 (regTwo!5887 r!15766)) (regTwo!5886 (regTwo!5887 lt!347923)))) (= lambda!34066 lambda!34058))))

(declare-fun bs!241953 () Bool)

(assert (= bs!241953 (and b!967093 b!966147)))

(assert (=> bs!241953 (= (and (= (regOne!5886 (regTwo!5887 r!15766)) (regOne!5886 lt!347923)) (= (regTwo!5886 (regTwo!5887 r!15766)) (regTwo!5886 lt!347923))) (= lambda!34066 lambda!34018))))

(declare-fun bs!241954 () Bool)

(assert (= bs!241954 (and b!967093 b!966155)))

(assert (=> bs!241954 (not (= lambda!34066 lambda!34017))))

(declare-fun bs!241955 () Bool)

(assert (= bs!241955 (and b!967093 b!965872)))

(assert (=> bs!241955 (= (and (= (regOne!5886 (regTwo!5887 r!15766)) (regOne!5886 r!15766)) (= (regTwo!5886 (regTwo!5887 r!15766)) (regTwo!5886 r!15766))) (= lambda!34066 lambda!34009))))

(assert (=> bs!241950 (not (= lambda!34066 lambda!33989))))

(declare-fun bs!241956 () Bool)

(assert (= bs!241956 (and b!967093 d!285853)))

(assert (=> bs!241956 (not (= lambda!34066 lambda!34030))))

(declare-fun bs!241957 () Bool)

(assert (= bs!241957 (and b!967093 b!965684)))

(assert (=> bs!241957 (not (= lambda!34066 lambda!33987))))

(declare-fun bs!241958 () Bool)

(assert (= bs!241958 (and b!967093 b!966991)))

(assert (=> bs!241958 (not (= lambda!34066 lambda!34057))))

(declare-fun bs!241959 () Bool)

(assert (= bs!241959 (and b!967093 d!286055)))

(assert (=> bs!241959 (not (= lambda!34066 lambda!34056))))

(assert (=> bs!241959 (not (= lambda!34066 lambda!34055))))

(declare-fun bs!241960 () Bool)

(assert (= bs!241960 (and b!967093 b!965880)))

(assert (=> bs!241960 (not (= lambda!34066 lambda!34006))))

(declare-fun bs!241961 () Bool)

(assert (= bs!241961 (and b!967093 d!286089)))

(assert (=> bs!241961 (not (= lambda!34066 lambda!34060))))

(assert (=> bs!241961 (not (= lambda!34066 lambda!34059))))

(assert (=> bs!241957 (not (= lambda!34066 lambda!33988))))

(assert (=> bs!241949 (not (= lambda!34066 lambda!34029))))

(declare-fun bs!241962 () Bool)

(assert (= bs!241962 (and b!967093 b!967101)))

(assert (=> bs!241962 (not (= lambda!34066 lambda!34065))))

(declare-fun bs!241963 () Bool)

(assert (= bs!241963 (and b!967093 d!285827)))

(assert (=> bs!241963 (not (= lambda!34066 lambda!34021))))

(assert (=> b!967093 true))

(assert (=> b!967093 true))

(declare-fun bm!61207 () Bool)

(declare-fun call!61212 () Bool)

(assert (=> bm!61207 (= call!61212 (isEmpty!6205 s!10566))))

(declare-fun b!967094 () Bool)

(declare-fun c!157654 () Bool)

(assert (=> b!967094 (= c!157654 ((_ is ElementMatch!2687) (regTwo!5887 r!15766)))))

(declare-fun e!623915 () Bool)

(declare-fun e!623916 () Bool)

(assert (=> b!967094 (= e!623915 e!623916)))

(declare-fun b!967095 () Bool)

(assert (=> b!967095 (= e!623916 (= s!10566 (Cons!9901 (c!157310 (regTwo!5887 r!15766)) Nil!9901)))))

(declare-fun b!967096 () Bool)

(declare-fun e!623920 () Bool)

(declare-fun e!623921 () Bool)

(assert (=> b!967096 (= e!623920 e!623921)))

(declare-fun c!157656 () Bool)

(assert (=> b!967096 (= c!157656 ((_ is Star!2687) (regTwo!5887 r!15766)))))

(declare-fun b!967097 () Bool)

(declare-fun e!623918 () Bool)

(assert (=> b!967097 (= e!623918 call!61212)))

(declare-fun b!967098 () Bool)

(assert (=> b!967098 (= e!623918 e!623915)))

(declare-fun res!439648 () Bool)

(assert (=> b!967098 (= res!439648 (not ((_ is EmptyLang!2687) (regTwo!5887 r!15766))))))

(assert (=> b!967098 (=> (not res!439648) (not e!623915))))

(declare-fun b!967099 () Bool)

(declare-fun c!157657 () Bool)

(assert (=> b!967099 (= c!157657 ((_ is Union!2687) (regTwo!5887 r!15766)))))

(assert (=> b!967099 (= e!623916 e!623920)))

(declare-fun b!967100 () Bool)

(declare-fun res!439647 () Bool)

(declare-fun e!623917 () Bool)

(assert (=> b!967100 (=> res!439647 e!623917)))

(assert (=> b!967100 (= res!439647 call!61212)))

(assert (=> b!967100 (= e!623921 e!623917)))

(declare-fun d!286139 () Bool)

(declare-fun c!157655 () Bool)

(assert (=> d!286139 (= c!157655 ((_ is EmptyExpr!2687) (regTwo!5887 r!15766)))))

(assert (=> d!286139 (= (matchRSpec!488 (regTwo!5887 r!15766) s!10566) e!623918)))

(declare-fun call!61213 () Bool)

(assert (=> b!967093 (= e!623921 call!61213)))

(assert (=> b!967101 (= e!623917 call!61213)))

(declare-fun bm!61208 () Bool)

(assert (=> bm!61208 (= call!61213 (Exists!430 (ite c!157656 lambda!34065 lambda!34066)))))

(declare-fun b!967102 () Bool)

(declare-fun e!623919 () Bool)

(assert (=> b!967102 (= e!623920 e!623919)))

(declare-fun res!439646 () Bool)

(assert (=> b!967102 (= res!439646 (matchRSpec!488 (regOne!5887 (regTwo!5887 r!15766)) s!10566))))

(assert (=> b!967102 (=> res!439646 e!623919)))

(declare-fun b!967103 () Bool)

(assert (=> b!967103 (= e!623919 (matchRSpec!488 (regTwo!5887 (regTwo!5887 r!15766)) s!10566))))

(assert (= (and d!286139 c!157655) b!967097))

(assert (= (and d!286139 (not c!157655)) b!967098))

(assert (= (and b!967098 res!439648) b!967094))

(assert (= (and b!967094 c!157654) b!967095))

(assert (= (and b!967094 (not c!157654)) b!967099))

(assert (= (and b!967099 c!157657) b!967102))

(assert (= (and b!967099 (not c!157657)) b!967096))

(assert (= (and b!967102 (not res!439646)) b!967103))

(assert (= (and b!967096 c!157656) b!967100))

(assert (= (and b!967096 (not c!157656)) b!967093))

(assert (= (and b!967100 (not res!439647)) b!967101))

(assert (= (or b!967101 b!967093) bm!61208))

(assert (= (or b!967097 b!967100) bm!61207))

(assert (=> bm!61207 m!1171903))

(declare-fun m!1172953 () Bool)

(assert (=> bm!61208 m!1172953))

(declare-fun m!1172955 () Bool)

(assert (=> b!967102 m!1172955))

(declare-fun m!1172957 () Bool)

(assert (=> b!967103 m!1172957))

(assert (=> b!965882 d!286139))

(declare-fun d!286141 () Bool)

(assert (=> d!286141 (= (isDefined!1910 lt!348001) (not (isEmpty!6207 lt!348001)))))

(declare-fun bs!241964 () Bool)

(assert (= bs!241964 d!286141))

(declare-fun m!1172959 () Bool)

(assert (=> bs!241964 m!1172959))

(assert (=> d!285817 d!286141))

(declare-fun b!967104 () Bool)

(declare-fun e!623925 () Bool)

(assert (=> b!967104 (= e!623925 (= (head!1776 Nil!9901) (c!157310 lt!347936)))))

(declare-fun b!967105 () Bool)

(declare-fun e!623926 () Bool)

(declare-fun lt!348094 () Bool)

(declare-fun call!61214 () Bool)

(assert (=> b!967105 (= e!623926 (= lt!348094 call!61214))))

(declare-fun b!967106 () Bool)

(declare-fun e!623928 () Bool)

(assert (=> b!967106 (= e!623928 (nullable!815 lt!347936))))

(declare-fun b!967107 () Bool)

(declare-fun res!439653 () Bool)

(declare-fun e!623924 () Bool)

(assert (=> b!967107 (=> res!439653 e!623924)))

(assert (=> b!967107 (= res!439653 (not ((_ is ElementMatch!2687) lt!347936)))))

(declare-fun e!623927 () Bool)

(assert (=> b!967107 (= e!623927 e!623924)))

(declare-fun b!967108 () Bool)

(declare-fun e!623923 () Bool)

(assert (=> b!967108 (= e!623923 (not (= (head!1776 Nil!9901) (c!157310 lt!347936))))))

(declare-fun b!967109 () Bool)

(declare-fun res!439654 () Bool)

(assert (=> b!967109 (=> res!439654 e!623924)))

(assert (=> b!967109 (= res!439654 e!623925)))

(declare-fun res!439651 () Bool)

(assert (=> b!967109 (=> (not res!439651) (not e!623925))))

(assert (=> b!967109 (= res!439651 lt!348094)))

(declare-fun b!967110 () Bool)

(declare-fun e!623922 () Bool)

(assert (=> b!967110 (= e!623924 e!623922)))

(declare-fun res!439652 () Bool)

(assert (=> b!967110 (=> (not res!439652) (not e!623922))))

(assert (=> b!967110 (= res!439652 (not lt!348094))))

(declare-fun b!967111 () Bool)

(declare-fun res!439656 () Bool)

(assert (=> b!967111 (=> res!439656 e!623923)))

(assert (=> b!967111 (= res!439656 (not (isEmpty!6205 (tail!1338 Nil!9901))))))

(declare-fun b!967112 () Bool)

(declare-fun res!439650 () Bool)

(assert (=> b!967112 (=> (not res!439650) (not e!623925))))

(assert (=> b!967112 (= res!439650 (isEmpty!6205 (tail!1338 Nil!9901)))))

(declare-fun d!286143 () Bool)

(assert (=> d!286143 e!623926))

(declare-fun c!157659 () Bool)

(assert (=> d!286143 (= c!157659 ((_ is EmptyExpr!2687) lt!347936))))

(assert (=> d!286143 (= lt!348094 e!623928)))

(declare-fun c!157660 () Bool)

(assert (=> d!286143 (= c!157660 (isEmpty!6205 Nil!9901))))

(assert (=> d!286143 (validRegex!1156 lt!347936)))

(assert (=> d!286143 (= (matchR!1225 lt!347936 Nil!9901) lt!348094)))

(declare-fun b!967113 () Bool)

(assert (=> b!967113 (= e!623926 e!623927)))

(declare-fun c!157658 () Bool)

(assert (=> b!967113 (= c!157658 ((_ is EmptyLang!2687) lt!347936))))

(declare-fun b!967114 () Bool)

(assert (=> b!967114 (= e!623928 (matchR!1225 (derivativeStep!623 lt!347936 (head!1776 Nil!9901)) (tail!1338 Nil!9901)))))

(declare-fun b!967115 () Bool)

(assert (=> b!967115 (= e!623927 (not lt!348094))))

(declare-fun bm!61209 () Bool)

(assert (=> bm!61209 (= call!61214 (isEmpty!6205 Nil!9901))))

(declare-fun b!967116 () Bool)

(declare-fun res!439649 () Bool)

(assert (=> b!967116 (=> (not res!439649) (not e!623925))))

(assert (=> b!967116 (= res!439649 (not call!61214))))

(declare-fun b!967117 () Bool)

(assert (=> b!967117 (= e!623922 e!623923)))

(declare-fun res!439655 () Bool)

(assert (=> b!967117 (=> res!439655 e!623923)))

(assert (=> b!967117 (= res!439655 call!61214)))

(assert (= (and d!286143 c!157660) b!967106))

(assert (= (and d!286143 (not c!157660)) b!967114))

(assert (= (and d!286143 c!157659) b!967105))

(assert (= (and d!286143 (not c!157659)) b!967113))

(assert (= (and b!967113 c!157658) b!967115))

(assert (= (and b!967113 (not c!157658)) b!967107))

(assert (= (and b!967107 (not res!439653)) b!967109))

(assert (= (and b!967109 res!439651) b!967116))

(assert (= (and b!967116 res!439649) b!967112))

(assert (= (and b!967112 res!439650) b!967104))

(assert (= (and b!967109 (not res!439654)) b!967110))

(assert (= (and b!967110 res!439652) b!967117))

(assert (= (and b!967117 (not res!439655)) b!967111))

(assert (= (and b!967111 (not res!439656)) b!967108))

(assert (= (or b!967105 b!967116 b!967117) bm!61209))

(declare-fun m!1172961 () Bool)

(assert (=> b!967112 m!1172961))

(assert (=> b!967112 m!1172961))

(declare-fun m!1172963 () Bool)

(assert (=> b!967112 m!1172963))

(assert (=> b!967106 m!1172289))

(assert (=> b!967111 m!1172961))

(assert (=> b!967111 m!1172961))

(assert (=> b!967111 m!1172963))

(declare-fun m!1172965 () Bool)

(assert (=> b!967104 m!1172965))

(assert (=> b!967114 m!1172965))

(assert (=> b!967114 m!1172965))

(declare-fun m!1172967 () Bool)

(assert (=> b!967114 m!1172967))

(assert (=> b!967114 m!1172961))

(assert (=> b!967114 m!1172967))

(assert (=> b!967114 m!1172961))

(declare-fun m!1172969 () Bool)

(assert (=> b!967114 m!1172969))

(assert (=> b!967108 m!1172965))

(declare-fun m!1172971 () Bool)

(assert (=> d!286143 m!1172971))

(assert (=> d!286143 m!1172179))

(assert (=> bm!61209 m!1172971))

(assert (=> d!285817 d!286143))

(assert (=> d!285817 d!286057))

(assert (=> d!285765 d!285815))

(assert (=> d!285765 d!285859))

(assert (=> b!965996 d!286091))

(assert (=> b!965996 d!286077))

(assert (=> bm!61056 d!285857))

(declare-fun d!286145 () Bool)

(assert (=> d!286145 (= (nullable!815 lt!347936) (nullableFct!194 lt!347936))))

(declare-fun bs!241965 () Bool)

(assert (= bs!241965 d!286145))

(declare-fun m!1172973 () Bool)

(assert (=> bs!241965 m!1172973))

(assert (=> b!966279 d!286145))

(declare-fun b!967118 () Bool)

(declare-fun e!623932 () Bool)

(assert (=> b!967118 (= e!623932 (= (head!1776 (tail!1338 (_2!6452 lt!347938))) (c!157310 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))))))))

(declare-fun b!967119 () Bool)

(declare-fun e!623933 () Bool)

(declare-fun lt!348095 () Bool)

(declare-fun call!61215 () Bool)

(assert (=> b!967119 (= e!623933 (= lt!348095 call!61215))))

(declare-fun b!967120 () Bool)

(declare-fun e!623935 () Bool)

(assert (=> b!967120 (= e!623935 (nullable!815 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938)))))))

(declare-fun b!967121 () Bool)

(declare-fun res!439661 () Bool)

(declare-fun e!623931 () Bool)

(assert (=> b!967121 (=> res!439661 e!623931)))

(assert (=> b!967121 (= res!439661 (not ((_ is ElementMatch!2687) (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))))))))

(declare-fun e!623934 () Bool)

(assert (=> b!967121 (= e!623934 e!623931)))

(declare-fun b!967122 () Bool)

(declare-fun e!623930 () Bool)

(assert (=> b!967122 (= e!623930 (not (= (head!1776 (tail!1338 (_2!6452 lt!347938))) (c!157310 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938)))))))))

(declare-fun b!967123 () Bool)

(declare-fun res!439662 () Bool)

(assert (=> b!967123 (=> res!439662 e!623931)))

(assert (=> b!967123 (= res!439662 e!623932)))

(declare-fun res!439659 () Bool)

(assert (=> b!967123 (=> (not res!439659) (not e!623932))))

(assert (=> b!967123 (= res!439659 lt!348095)))

(declare-fun b!967124 () Bool)

(declare-fun e!623929 () Bool)

(assert (=> b!967124 (= e!623931 e!623929)))

(declare-fun res!439660 () Bool)

(assert (=> b!967124 (=> (not res!439660) (not e!623929))))

(assert (=> b!967124 (= res!439660 (not lt!348095))))

(declare-fun b!967125 () Bool)

(declare-fun res!439664 () Bool)

(assert (=> b!967125 (=> res!439664 e!623930)))

(assert (=> b!967125 (= res!439664 (not (isEmpty!6205 (tail!1338 (tail!1338 (_2!6452 lt!347938))))))))

(declare-fun b!967126 () Bool)

(declare-fun res!439658 () Bool)

(assert (=> b!967126 (=> (not res!439658) (not e!623932))))

(assert (=> b!967126 (= res!439658 (isEmpty!6205 (tail!1338 (tail!1338 (_2!6452 lt!347938)))))))

(declare-fun d!286147 () Bool)

(assert (=> d!286147 e!623933))

(declare-fun c!157662 () Bool)

(assert (=> d!286147 (= c!157662 ((_ is EmptyExpr!2687) (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938)))))))

(assert (=> d!286147 (= lt!348095 e!623935)))

(declare-fun c!157663 () Bool)

(assert (=> d!286147 (= c!157663 (isEmpty!6205 (tail!1338 (_2!6452 lt!347938))))))

(assert (=> d!286147 (validRegex!1156 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))))))

(assert (=> d!286147 (= (matchR!1225 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))) (tail!1338 (_2!6452 lt!347938))) lt!348095)))

(declare-fun b!967127 () Bool)

(assert (=> b!967127 (= e!623933 e!623934)))

(declare-fun c!157661 () Bool)

(assert (=> b!967127 (= c!157661 ((_ is EmptyLang!2687) (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938)))))))

(declare-fun b!967128 () Bool)

(assert (=> b!967128 (= e!623935 (matchR!1225 (derivativeStep!623 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))) (head!1776 (tail!1338 (_2!6452 lt!347938)))) (tail!1338 (tail!1338 (_2!6452 lt!347938)))))))

(declare-fun b!967129 () Bool)

(assert (=> b!967129 (= e!623934 (not lt!348095))))

(declare-fun bm!61210 () Bool)

(assert (=> bm!61210 (= call!61215 (isEmpty!6205 (tail!1338 (_2!6452 lt!347938))))))

(declare-fun b!967130 () Bool)

(declare-fun res!439657 () Bool)

(assert (=> b!967130 (=> (not res!439657) (not e!623932))))

(assert (=> b!967130 (= res!439657 (not call!61215))))

(declare-fun b!967131 () Bool)

(assert (=> b!967131 (= e!623929 e!623930)))

(declare-fun res!439663 () Bool)

(assert (=> b!967131 (=> res!439663 e!623930)))

(assert (=> b!967131 (= res!439663 call!61215)))

(assert (= (and d!286147 c!157663) b!967120))

(assert (= (and d!286147 (not c!157663)) b!967128))

(assert (= (and d!286147 c!157662) b!967119))

(assert (= (and d!286147 (not c!157662)) b!967127))

(assert (= (and b!967127 c!157661) b!967129))

(assert (= (and b!967127 (not c!157661)) b!967121))

(assert (= (and b!967121 (not res!439661)) b!967123))

(assert (= (and b!967123 res!439659) b!967130))

(assert (= (and b!967130 res!439657) b!967126))

(assert (= (and b!967126 res!439658) b!967118))

(assert (= (and b!967123 (not res!439662)) b!967124))

(assert (= (and b!967124 res!439660) b!967131))

(assert (= (and b!967131 (not res!439663)) b!967125))

(assert (= (and b!967125 (not res!439664)) b!967122))

(assert (= (or b!967119 b!967130 b!967131) bm!61210))

(assert (=> b!967126 m!1172151))

(declare-fun m!1172975 () Bool)

(assert (=> b!967126 m!1172975))

(assert (=> b!967126 m!1172975))

(declare-fun m!1172977 () Bool)

(assert (=> b!967126 m!1172977))

(assert (=> b!967120 m!1172159))

(declare-fun m!1172979 () Bool)

(assert (=> b!967120 m!1172979))

(assert (=> b!967125 m!1172151))

(assert (=> b!967125 m!1172975))

(assert (=> b!967125 m!1172975))

(assert (=> b!967125 m!1172977))

(assert (=> b!967118 m!1172151))

(declare-fun m!1172981 () Bool)

(assert (=> b!967118 m!1172981))

(assert (=> b!967128 m!1172151))

(assert (=> b!967128 m!1172981))

(assert (=> b!967128 m!1172159))

(assert (=> b!967128 m!1172981))

(declare-fun m!1172983 () Bool)

(assert (=> b!967128 m!1172983))

(assert (=> b!967128 m!1172151))

(assert (=> b!967128 m!1172975))

(assert (=> b!967128 m!1172983))

(assert (=> b!967128 m!1172975))

(declare-fun m!1172985 () Bool)

(assert (=> b!967128 m!1172985))

(assert (=> b!967122 m!1172151))

(assert (=> b!967122 m!1172981))

(assert (=> d!286147 m!1172151))

(assert (=> d!286147 m!1172153))

(assert (=> d!286147 m!1172159))

(declare-fun m!1172987 () Bool)

(assert (=> d!286147 m!1172987))

(assert (=> bm!61210 m!1172151))

(assert (=> bm!61210 m!1172153))

(assert (=> b!966081 d!286147))

(declare-fun b!967132 () Bool)

(declare-fun e!623937 () Regex!2687)

(declare-fun call!61218 () Regex!2687)

(assert (=> b!967132 (= e!623937 (Union!2687 (Concat!4520 call!61218 (regTwo!5886 lt!347923)) EmptyLang!2687))))

(declare-fun b!967133 () Bool)

(declare-fun e!623940 () Regex!2687)

(declare-fun call!61216 () Regex!2687)

(assert (=> b!967133 (= e!623940 (Concat!4520 call!61216 lt!347923))))

(declare-fun b!967134 () Bool)

(declare-fun e!623936 () Regex!2687)

(declare-fun e!623939 () Regex!2687)

(assert (=> b!967134 (= e!623936 e!623939)))

(declare-fun c!157667 () Bool)

(assert (=> b!967134 (= c!157667 ((_ is ElementMatch!2687) lt!347923))))

(declare-fun bm!61211 () Bool)

(declare-fun call!61219 () Regex!2687)

(assert (=> bm!61211 (= call!61216 call!61219)))

(declare-fun b!967135 () Bool)

(declare-fun call!61217 () Regex!2687)

(assert (=> b!967135 (= e!623937 (Union!2687 (Concat!4520 call!61217 (regTwo!5886 lt!347923)) call!61218))))

(declare-fun c!157664 () Bool)

(declare-fun bm!61212 () Bool)

(declare-fun c!157665 () Bool)

(declare-fun c!157668 () Bool)

(assert (=> bm!61212 (= call!61219 (derivativeStep!623 (ite c!157668 (regOne!5887 lt!347923) (ite c!157664 (reg!3016 lt!347923) (ite c!157665 (regTwo!5886 lt!347923) (regOne!5886 lt!347923)))) (head!1776 (_2!6452 lt!347938))))))

(declare-fun bm!61213 () Bool)

(assert (=> bm!61213 (= call!61218 call!61216)))

(declare-fun b!967137 () Bool)

(declare-fun e!623938 () Regex!2687)

(assert (=> b!967137 (= e!623938 (Union!2687 call!61219 call!61217))))

(declare-fun b!967138 () Bool)

(assert (=> b!967138 (= e!623936 EmptyLang!2687)))

(declare-fun b!967139 () Bool)

(assert (=> b!967139 (= c!157665 (nullable!815 (regOne!5886 lt!347923)))))

(assert (=> b!967139 (= e!623940 e!623937)))

(declare-fun b!967140 () Bool)

(assert (=> b!967140 (= e!623938 e!623940)))

(assert (=> b!967140 (= c!157664 ((_ is Star!2687) lt!347923))))

(declare-fun bm!61214 () Bool)

(assert (=> bm!61214 (= call!61217 (derivativeStep!623 (ite c!157668 (regTwo!5887 lt!347923) (regOne!5886 lt!347923)) (head!1776 (_2!6452 lt!347938))))))

(declare-fun b!967141 () Bool)

(assert (=> b!967141 (= e!623939 (ite (= (head!1776 (_2!6452 lt!347938)) (c!157310 lt!347923)) EmptyExpr!2687 EmptyLang!2687))))

(declare-fun b!967136 () Bool)

(assert (=> b!967136 (= c!157668 ((_ is Union!2687) lt!347923))))

(assert (=> b!967136 (= e!623939 e!623938)))

(declare-fun d!286149 () Bool)

(declare-fun lt!348096 () Regex!2687)

(assert (=> d!286149 (validRegex!1156 lt!348096)))

(assert (=> d!286149 (= lt!348096 e!623936)))

(declare-fun c!157666 () Bool)

(assert (=> d!286149 (= c!157666 (or ((_ is EmptyExpr!2687) lt!347923) ((_ is EmptyLang!2687) lt!347923)))))

(assert (=> d!286149 (validRegex!1156 lt!347923)))

(assert (=> d!286149 (= (derivativeStep!623 lt!347923 (head!1776 (_2!6452 lt!347938))) lt!348096)))

(assert (= (and d!286149 c!157666) b!967138))

(assert (= (and d!286149 (not c!157666)) b!967134))

(assert (= (and b!967134 c!157667) b!967141))

(assert (= (and b!967134 (not c!157667)) b!967136))

(assert (= (and b!967136 c!157668) b!967137))

(assert (= (and b!967136 (not c!157668)) b!967140))

(assert (= (and b!967140 c!157664) b!967133))

(assert (= (and b!967140 (not c!157664)) b!967139))

(assert (= (and b!967139 c!157665) b!967135))

(assert (= (and b!967139 (not c!157665)) b!967132))

(assert (= (or b!967135 b!967132) bm!61213))

(assert (= (or b!967133 bm!61213) bm!61211))

(assert (= (or b!967137 bm!61211) bm!61212))

(assert (= (or b!967137 b!967135) bm!61214))

(assert (=> bm!61212 m!1172157))

(declare-fun m!1172989 () Bool)

(assert (=> bm!61212 m!1172989))

(assert (=> b!967139 m!1172825))

(assert (=> bm!61214 m!1172157))

(declare-fun m!1172991 () Bool)

(assert (=> bm!61214 m!1172991))

(declare-fun m!1172993 () Bool)

(assert (=> d!286149 m!1172993))

(assert (=> d!286149 m!1172165))

(assert (=> b!966081 d!286149))

(assert (=> b!966081 d!286119))

(assert (=> b!966081 d!286061))

(assert (=> d!285823 d!285855))

(assert (=> d!285823 d!285819))

(declare-fun d!286151 () Bool)

(assert (=> d!286151 (= (matchR!1225 lt!347923 s!10566) (matchRSpec!488 lt!347923 s!10566))))

(assert (=> d!286151 true))

(declare-fun _$88!3017 () Unit!15029)

(assert (=> d!286151 (= (choose!6103 lt!347923 s!10566) _$88!3017)))

(declare-fun bs!241966 () Bool)

(assert (= bs!241966 d!286151))

(assert (=> bs!241966 m!1171949))

(assert (=> bs!241966 m!1171909))

(assert (=> d!285823 d!286151))

(assert (=> d!285823 d!286117))

(declare-fun b!967142 () Bool)

(declare-fun e!623944 () Bool)

(assert (=> b!967142 (= e!623944 (= (head!1776 (_1!6452 (get!3395 lt!348001))) (c!157310 lt!347936)))))

(declare-fun b!967143 () Bool)

(declare-fun e!623945 () Bool)

(declare-fun lt!348097 () Bool)

(declare-fun call!61220 () Bool)

(assert (=> b!967143 (= e!623945 (= lt!348097 call!61220))))

(declare-fun b!967144 () Bool)

(declare-fun e!623947 () Bool)

(assert (=> b!967144 (= e!623947 (nullable!815 lt!347936))))

(declare-fun b!967145 () Bool)

(declare-fun res!439669 () Bool)

(declare-fun e!623943 () Bool)

(assert (=> b!967145 (=> res!439669 e!623943)))

(assert (=> b!967145 (= res!439669 (not ((_ is ElementMatch!2687) lt!347936)))))

(declare-fun e!623946 () Bool)

(assert (=> b!967145 (= e!623946 e!623943)))

(declare-fun b!967146 () Bool)

(declare-fun e!623942 () Bool)

(assert (=> b!967146 (= e!623942 (not (= (head!1776 (_1!6452 (get!3395 lt!348001))) (c!157310 lt!347936))))))

(declare-fun b!967147 () Bool)

(declare-fun res!439670 () Bool)

(assert (=> b!967147 (=> res!439670 e!623943)))

(assert (=> b!967147 (= res!439670 e!623944)))

(declare-fun res!439667 () Bool)

(assert (=> b!967147 (=> (not res!439667) (not e!623944))))

(assert (=> b!967147 (= res!439667 lt!348097)))

(declare-fun b!967148 () Bool)

(declare-fun e!623941 () Bool)

(assert (=> b!967148 (= e!623943 e!623941)))

(declare-fun res!439668 () Bool)

(assert (=> b!967148 (=> (not res!439668) (not e!623941))))

(assert (=> b!967148 (= res!439668 (not lt!348097))))

(declare-fun b!967149 () Bool)

(declare-fun res!439672 () Bool)

(assert (=> b!967149 (=> res!439672 e!623942)))

(assert (=> b!967149 (= res!439672 (not (isEmpty!6205 (tail!1338 (_1!6452 (get!3395 lt!348001))))))))

(declare-fun b!967150 () Bool)

(declare-fun res!439666 () Bool)

(assert (=> b!967150 (=> (not res!439666) (not e!623944))))

(assert (=> b!967150 (= res!439666 (isEmpty!6205 (tail!1338 (_1!6452 (get!3395 lt!348001)))))))

(declare-fun d!286153 () Bool)

(assert (=> d!286153 e!623945))

(declare-fun c!157670 () Bool)

(assert (=> d!286153 (= c!157670 ((_ is EmptyExpr!2687) lt!347936))))

(assert (=> d!286153 (= lt!348097 e!623947)))

(declare-fun c!157671 () Bool)

(assert (=> d!286153 (= c!157671 (isEmpty!6205 (_1!6452 (get!3395 lt!348001))))))

(assert (=> d!286153 (validRegex!1156 lt!347936)))

(assert (=> d!286153 (= (matchR!1225 lt!347936 (_1!6452 (get!3395 lt!348001))) lt!348097)))

(declare-fun b!967151 () Bool)

(assert (=> b!967151 (= e!623945 e!623946)))

(declare-fun c!157669 () Bool)

(assert (=> b!967151 (= c!157669 ((_ is EmptyLang!2687) lt!347936))))

(declare-fun b!967152 () Bool)

(assert (=> b!967152 (= e!623947 (matchR!1225 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 (get!3395 lt!348001)))) (tail!1338 (_1!6452 (get!3395 lt!348001)))))))

(declare-fun b!967153 () Bool)

(assert (=> b!967153 (= e!623946 (not lt!348097))))

(declare-fun bm!61215 () Bool)

(assert (=> bm!61215 (= call!61220 (isEmpty!6205 (_1!6452 (get!3395 lt!348001))))))

(declare-fun b!967154 () Bool)

(declare-fun res!439665 () Bool)

(assert (=> b!967154 (=> (not res!439665) (not e!623944))))

(assert (=> b!967154 (= res!439665 (not call!61220))))

(declare-fun b!967155 () Bool)

(assert (=> b!967155 (= e!623941 e!623942)))

(declare-fun res!439671 () Bool)

(assert (=> b!967155 (=> res!439671 e!623942)))

(assert (=> b!967155 (= res!439671 call!61220)))

(assert (= (and d!286153 c!157671) b!967144))

(assert (= (and d!286153 (not c!157671)) b!967152))

(assert (= (and d!286153 c!157670) b!967143))

(assert (= (and d!286153 (not c!157670)) b!967151))

(assert (= (and b!967151 c!157669) b!967153))

(assert (= (and b!967151 (not c!157669)) b!967145))

(assert (= (and b!967145 (not res!439669)) b!967147))

(assert (= (and b!967147 res!439667) b!967154))

(assert (= (and b!967154 res!439665) b!967150))

(assert (= (and b!967150 res!439666) b!967142))

(assert (= (and b!967147 (not res!439670)) b!967148))

(assert (= (and b!967148 res!439668) b!967155))

(assert (= (and b!967155 (not res!439671)) b!967149))

(assert (= (and b!967149 (not res!439672)) b!967146))

(assert (= (or b!967143 b!967154 b!967155) bm!61215))

(declare-fun m!1172995 () Bool)

(assert (=> b!967150 m!1172995))

(assert (=> b!967150 m!1172995))

(declare-fun m!1172997 () Bool)

(assert (=> b!967150 m!1172997))

(assert (=> b!967144 m!1172289))

(assert (=> b!967149 m!1172995))

(assert (=> b!967149 m!1172995))

(assert (=> b!967149 m!1172997))

(declare-fun m!1172999 () Bool)

(assert (=> b!967142 m!1172999))

(assert (=> b!967152 m!1172999))

(assert (=> b!967152 m!1172999))

(declare-fun m!1173001 () Bool)

(assert (=> b!967152 m!1173001))

(assert (=> b!967152 m!1172995))

(assert (=> b!967152 m!1173001))

(assert (=> b!967152 m!1172995))

(declare-fun m!1173003 () Bool)

(assert (=> b!967152 m!1173003))

(assert (=> b!967146 m!1172999))

(declare-fun m!1173005 () Bool)

(assert (=> d!286153 m!1173005))

(assert (=> d!286153 m!1172179))

(assert (=> bm!61215 m!1173005))

(assert (=> b!966141 d!286153))

(declare-fun d!286155 () Bool)

(assert (=> d!286155 (= (get!3395 lt!348001) (v!19684 lt!348001))))

(assert (=> b!966141 d!286155))

(declare-fun d!286157 () Bool)

(declare-fun lt!348098 () Int)

(assert (=> d!286157 (>= lt!348098 0)))

(declare-fun e!623948 () Int)

(assert (=> d!286157 (= lt!348098 e!623948)))

(declare-fun c!157672 () Bool)

(assert (=> d!286157 (= c!157672 ((_ is Nil!9901) (t!100963 s!10566)))))

(assert (=> d!286157 (= (size!7937 (t!100963 s!10566)) lt!348098)))

(declare-fun b!967156 () Bool)

(assert (=> b!967156 (= e!623948 0)))

(declare-fun b!967157 () Bool)

(assert (=> b!967157 (= e!623948 (+ 1 (size!7937 (t!100963 (t!100963 s!10566)))))))

(assert (= (and d!286157 c!157672) b!967156))

(assert (= (and d!286157 (not c!157672)) b!967157))

(declare-fun m!1173007 () Bool)

(assert (=> b!967157 m!1173007))

(assert (=> b!966177 d!286157))

(declare-fun d!286159 () Bool)

(declare-fun c!157675 () Bool)

(assert (=> d!286159 (= c!157675 ((_ is Nil!9901) lt!347954))))

(declare-fun e!623951 () (InoxSet C!5944))

(assert (=> d!286159 (= (content!1411 lt!347954) e!623951)))

(declare-fun b!967162 () Bool)

(assert (=> b!967162 (= e!623951 ((as const (Array C!5944 Bool)) false))))

(declare-fun b!967163 () Bool)

(assert (=> b!967163 (= e!623951 ((_ map or) (store ((as const (Array C!5944 Bool)) false) (h!15302 lt!347954) true) (content!1411 (t!100963 lt!347954))))))

(assert (= (and d!286159 c!157675) b!967162))

(assert (= (and d!286159 (not c!157675)) b!967163))

(declare-fun m!1173009 () Bool)

(assert (=> b!967163 m!1173009))

(declare-fun m!1173011 () Bool)

(assert (=> b!967163 m!1173011))

(assert (=> d!285751 d!286159))

(declare-fun d!286161 () Bool)

(declare-fun c!157676 () Bool)

(assert (=> d!286161 (= c!157676 ((_ is Nil!9901) (_1!6452 lt!347938)))))

(declare-fun e!623952 () (InoxSet C!5944))

(assert (=> d!286161 (= (content!1411 (_1!6452 lt!347938)) e!623952)))

(declare-fun b!967164 () Bool)

(assert (=> b!967164 (= e!623952 ((as const (Array C!5944 Bool)) false))))

(declare-fun b!967165 () Bool)

(assert (=> b!967165 (= e!623952 ((_ map or) (store ((as const (Array C!5944 Bool)) false) (h!15302 (_1!6452 lt!347938)) true) (content!1411 (t!100963 (_1!6452 lt!347938)))))))

(assert (= (and d!286161 c!157676) b!967164))

(assert (= (and d!286161 (not c!157676)) b!967165))

(declare-fun m!1173013 () Bool)

(assert (=> b!967165 m!1173013))

(assert (=> b!967165 m!1172859))

(assert (=> d!285751 d!286161))

(declare-fun d!286163 () Bool)

(declare-fun c!157677 () Bool)

(assert (=> d!286163 (= c!157677 ((_ is Nil!9901) (_2!6452 lt!347938)))))

(declare-fun e!623953 () (InoxSet C!5944))

(assert (=> d!286163 (= (content!1411 (_2!6452 lt!347938)) e!623953)))

(declare-fun b!967166 () Bool)

(assert (=> b!967166 (= e!623953 ((as const (Array C!5944 Bool)) false))))

(declare-fun b!967167 () Bool)

(assert (=> b!967167 (= e!623953 ((_ map or) (store ((as const (Array C!5944 Bool)) false) (h!15302 (_2!6452 lt!347938)) true) (content!1411 (t!100963 (_2!6452 lt!347938)))))))

(assert (= (and d!286163 c!157677) b!967166))

(assert (= (and d!286163 (not c!157677)) b!967167))

(declare-fun m!1173015 () Bool)

(assert (=> b!967167 m!1173015))

(declare-fun m!1173017 () Bool)

(assert (=> b!967167 m!1173017))

(assert (=> d!285751 d!286163))

(assert (=> b!966139 d!286141))

(declare-fun d!286165 () Bool)

(declare-fun lt!348099 () Int)

(assert (=> d!286165 (>= lt!348099 0)))

(declare-fun e!623954 () Int)

(assert (=> d!286165 (= lt!348099 e!623954)))

(declare-fun c!157678 () Bool)

(assert (=> d!286165 (= c!157678 ((_ is Nil!9901) lt!347954))))

(assert (=> d!286165 (= (size!7937 lt!347954) lt!348099)))

(declare-fun b!967168 () Bool)

(assert (=> b!967168 (= e!623954 0)))

(declare-fun b!967169 () Bool)

(assert (=> b!967169 (= e!623954 (+ 1 (size!7937 (t!100963 lt!347954))))))

(assert (= (and d!286165 c!157678) b!967168))

(assert (= (and d!286165 (not c!157678)) b!967169))

(declare-fun m!1173019 () Bool)

(assert (=> b!967169 m!1173019))

(assert (=> b!965755 d!286165))

(assert (=> b!965755 d!285865))

(assert (=> b!965755 d!285835))

(declare-fun b!967170 () Bool)

(declare-fun e!623958 () Bool)

(assert (=> b!967170 (= e!623958 (= (head!1776 (tail!1338 (_1!6452 lt!347938))) (c!157310 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))))))))

(declare-fun b!967171 () Bool)

(declare-fun e!623959 () Bool)

(declare-fun lt!348100 () Bool)

(declare-fun call!61221 () Bool)

(assert (=> b!967171 (= e!623959 (= lt!348100 call!61221))))

(declare-fun b!967172 () Bool)

(declare-fun e!623961 () Bool)

(assert (=> b!967172 (= e!623961 (nullable!815 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938)))))))

(declare-fun b!967173 () Bool)

(declare-fun res!439677 () Bool)

(declare-fun e!623957 () Bool)

(assert (=> b!967173 (=> res!439677 e!623957)))

(assert (=> b!967173 (= res!439677 (not ((_ is ElementMatch!2687) (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))))))))

(declare-fun e!623960 () Bool)

(assert (=> b!967173 (= e!623960 e!623957)))

(declare-fun b!967174 () Bool)

(declare-fun e!623956 () Bool)

(assert (=> b!967174 (= e!623956 (not (= (head!1776 (tail!1338 (_1!6452 lt!347938))) (c!157310 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938)))))))))

(declare-fun b!967175 () Bool)

(declare-fun res!439678 () Bool)

(assert (=> b!967175 (=> res!439678 e!623957)))

(assert (=> b!967175 (= res!439678 e!623958)))

(declare-fun res!439675 () Bool)

(assert (=> b!967175 (=> (not res!439675) (not e!623958))))

(assert (=> b!967175 (= res!439675 lt!348100)))

(declare-fun b!967176 () Bool)

(declare-fun e!623955 () Bool)

(assert (=> b!967176 (= e!623957 e!623955)))

(declare-fun res!439676 () Bool)

(assert (=> b!967176 (=> (not res!439676) (not e!623955))))

(assert (=> b!967176 (= res!439676 (not lt!348100))))

(declare-fun b!967177 () Bool)

(declare-fun res!439680 () Bool)

(assert (=> b!967177 (=> res!439680 e!623956)))

(assert (=> b!967177 (= res!439680 (not (isEmpty!6205 (tail!1338 (tail!1338 (_1!6452 lt!347938))))))))

(declare-fun b!967178 () Bool)

(declare-fun res!439674 () Bool)

(assert (=> b!967178 (=> (not res!439674) (not e!623958))))

(assert (=> b!967178 (= res!439674 (isEmpty!6205 (tail!1338 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun d!286167 () Bool)

(assert (=> d!286167 e!623959))

(declare-fun c!157680 () Bool)

(assert (=> d!286167 (= c!157680 ((_ is EmptyExpr!2687) (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938)))))))

(assert (=> d!286167 (= lt!348100 e!623961)))

(declare-fun c!157681 () Bool)

(assert (=> d!286167 (= c!157681 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(assert (=> d!286167 (validRegex!1156 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))))))

(assert (=> d!286167 (= (matchR!1225 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))) (tail!1338 (_1!6452 lt!347938))) lt!348100)))

(declare-fun b!967179 () Bool)

(assert (=> b!967179 (= e!623959 e!623960)))

(declare-fun c!157679 () Bool)

(assert (=> b!967179 (= c!157679 ((_ is EmptyLang!2687) (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938)))))))

(declare-fun b!967180 () Bool)

(assert (=> b!967180 (= e!623961 (matchR!1225 (derivativeStep!623 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))) (head!1776 (tail!1338 (_1!6452 lt!347938)))) (tail!1338 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun b!967181 () Bool)

(assert (=> b!967181 (= e!623960 (not lt!348100))))

(declare-fun bm!61216 () Bool)

(assert (=> bm!61216 (= call!61221 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(declare-fun b!967182 () Bool)

(declare-fun res!439673 () Bool)

(assert (=> b!967182 (=> (not res!439673) (not e!623958))))

(assert (=> b!967182 (= res!439673 (not call!61221))))

(declare-fun b!967183 () Bool)

(assert (=> b!967183 (= e!623955 e!623956)))

(declare-fun res!439679 () Bool)

(assert (=> b!967183 (=> res!439679 e!623956)))

(assert (=> b!967183 (= res!439679 call!61221)))

(assert (= (and d!286167 c!157681) b!967172))

(assert (= (and d!286167 (not c!157681)) b!967180))

(assert (= (and d!286167 c!157680) b!967171))

(assert (= (and d!286167 (not c!157680)) b!967179))

(assert (= (and b!967179 c!157679) b!967181))

(assert (= (and b!967179 (not c!157679)) b!967173))

(assert (= (and b!967173 (not res!439677)) b!967175))

(assert (= (and b!967175 res!439675) b!967182))

(assert (= (and b!967182 res!439673) b!967178))

(assert (= (and b!967178 res!439674) b!967170))

(assert (= (and b!967175 (not res!439678)) b!967176))

(assert (= (and b!967176 res!439676) b!967183))

(assert (= (and b!967183 (not res!439679)) b!967177))

(assert (= (and b!967177 (not res!439680)) b!967174))

(assert (= (or b!967171 b!967182 b!967183) bm!61216))

(assert (=> b!967178 m!1172223))

(declare-fun m!1173021 () Bool)

(assert (=> b!967178 m!1173021))

(assert (=> b!967178 m!1173021))

(declare-fun m!1173023 () Bool)

(assert (=> b!967178 m!1173023))

(assert (=> b!967172 m!1172231))

(declare-fun m!1173025 () Bool)

(assert (=> b!967172 m!1173025))

(assert (=> b!967177 m!1172223))

(assert (=> b!967177 m!1173021))

(assert (=> b!967177 m!1173021))

(assert (=> b!967177 m!1173023))

(assert (=> b!967170 m!1172223))

(declare-fun m!1173027 () Bool)

(assert (=> b!967170 m!1173027))

(assert (=> b!967180 m!1172223))

(assert (=> b!967180 m!1173027))

(assert (=> b!967180 m!1172231))

(assert (=> b!967180 m!1173027))

(declare-fun m!1173029 () Bool)

(assert (=> b!967180 m!1173029))

(assert (=> b!967180 m!1172223))

(assert (=> b!967180 m!1173021))

(assert (=> b!967180 m!1173029))

(assert (=> b!967180 m!1173021))

(declare-fun m!1173031 () Bool)

(assert (=> b!967180 m!1173031))

(assert (=> b!967174 m!1172223))

(assert (=> b!967174 m!1173027))

(assert (=> d!286167 m!1172223))

(assert (=> d!286167 m!1172225))

(assert (=> d!286167 m!1172231))

(declare-fun m!1173033 () Bool)

(assert (=> d!286167 m!1173033))

(assert (=> bm!61216 m!1172223))

(assert (=> bm!61216 m!1172225))

(assert (=> b!966190 d!286167))

(declare-fun b!967184 () Bool)

(declare-fun e!623963 () Regex!2687)

(declare-fun call!61224 () Regex!2687)

(assert (=> b!967184 (= e!623963 (Union!2687 (Concat!4520 call!61224 (regTwo!5886 (reg!3016 r!15766))) EmptyLang!2687))))

(declare-fun b!967185 () Bool)

(declare-fun e!623966 () Regex!2687)

(declare-fun call!61222 () Regex!2687)

(assert (=> b!967185 (= e!623966 (Concat!4520 call!61222 (reg!3016 r!15766)))))

(declare-fun b!967186 () Bool)

(declare-fun e!623962 () Regex!2687)

(declare-fun e!623965 () Regex!2687)

(assert (=> b!967186 (= e!623962 e!623965)))

(declare-fun c!157685 () Bool)

(assert (=> b!967186 (= c!157685 ((_ is ElementMatch!2687) (reg!3016 r!15766)))))

(declare-fun bm!61217 () Bool)

(declare-fun call!61225 () Regex!2687)

(assert (=> bm!61217 (= call!61222 call!61225)))

(declare-fun call!61223 () Regex!2687)

(declare-fun b!967187 () Bool)

(assert (=> b!967187 (= e!623963 (Union!2687 (Concat!4520 call!61223 (regTwo!5886 (reg!3016 r!15766))) call!61224))))

(declare-fun bm!61218 () Bool)

(declare-fun c!157686 () Bool)

(declare-fun c!157683 () Bool)

(declare-fun c!157682 () Bool)

(assert (=> bm!61218 (= call!61225 (derivativeStep!623 (ite c!157686 (regOne!5887 (reg!3016 r!15766)) (ite c!157682 (reg!3016 (reg!3016 r!15766)) (ite c!157683 (regTwo!5886 (reg!3016 r!15766)) (regOne!5886 (reg!3016 r!15766))))) (head!1776 (_1!6452 lt!347938))))))

(declare-fun bm!61219 () Bool)

(assert (=> bm!61219 (= call!61224 call!61222)))

(declare-fun b!967189 () Bool)

(declare-fun e!623964 () Regex!2687)

(assert (=> b!967189 (= e!623964 (Union!2687 call!61225 call!61223))))

(declare-fun b!967190 () Bool)

(assert (=> b!967190 (= e!623962 EmptyLang!2687)))

(declare-fun b!967191 () Bool)

(assert (=> b!967191 (= c!157683 (nullable!815 (regOne!5886 (reg!3016 r!15766))))))

(assert (=> b!967191 (= e!623966 e!623963)))

(declare-fun b!967192 () Bool)

(assert (=> b!967192 (= e!623964 e!623966)))

(assert (=> b!967192 (= c!157682 ((_ is Star!2687) (reg!3016 r!15766)))))

(declare-fun bm!61220 () Bool)

(assert (=> bm!61220 (= call!61223 (derivativeStep!623 (ite c!157686 (regTwo!5887 (reg!3016 r!15766)) (regOne!5886 (reg!3016 r!15766))) (head!1776 (_1!6452 lt!347938))))))

(declare-fun b!967193 () Bool)

(assert (=> b!967193 (= e!623965 (ite (= (head!1776 (_1!6452 lt!347938)) (c!157310 (reg!3016 r!15766))) EmptyExpr!2687 EmptyLang!2687))))

(declare-fun b!967188 () Bool)

(assert (=> b!967188 (= c!157686 ((_ is Union!2687) (reg!3016 r!15766)))))

(assert (=> b!967188 (= e!623965 e!623964)))

(declare-fun d!286169 () Bool)

(declare-fun lt!348101 () Regex!2687)

(assert (=> d!286169 (validRegex!1156 lt!348101)))

(assert (=> d!286169 (= lt!348101 e!623962)))

(declare-fun c!157684 () Bool)

(assert (=> d!286169 (= c!157684 (or ((_ is EmptyExpr!2687) (reg!3016 r!15766)) ((_ is EmptyLang!2687) (reg!3016 r!15766))))))

(assert (=> d!286169 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!286169 (= (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 lt!347938))) lt!348101)))

(assert (= (and d!286169 c!157684) b!967190))

(assert (= (and d!286169 (not c!157684)) b!967186))

(assert (= (and b!967186 c!157685) b!967193))

(assert (= (and b!967186 (not c!157685)) b!967188))

(assert (= (and b!967188 c!157686) b!967189))

(assert (= (and b!967188 (not c!157686)) b!967192))

(assert (= (and b!967192 c!157682) b!967185))

(assert (= (and b!967192 (not c!157682)) b!967191))

(assert (= (and b!967191 c!157683) b!967187))

(assert (= (and b!967191 (not c!157683)) b!967184))

(assert (= (or b!967187 b!967184) bm!61219))

(assert (= (or b!967185 bm!61219) bm!61217))

(assert (= (or b!967189 bm!61217) bm!61218))

(assert (= (or b!967189 b!967187) bm!61220))

(assert (=> bm!61218 m!1172229))

(declare-fun m!1173035 () Bool)

(assert (=> bm!61218 m!1173035))

(declare-fun m!1173037 () Bool)

(assert (=> b!967191 m!1173037))

(assert (=> bm!61220 m!1172229))

(declare-fun m!1173039 () Bool)

(assert (=> bm!61220 m!1173039))

(declare-fun m!1173041 () Bool)

(assert (=> d!286169 m!1173041))

(assert (=> d!286169 m!1172235))

(assert (=> b!966190 d!286169))

(assert (=> b!966190 d!286123))

(assert (=> b!966190 d!286103))

(assert (=> b!966277 d!286123))

(assert (=> b!966079 d!286059))

(assert (=> b!966079 d!286061))

(assert (=> d!285861 d!285857))

(assert (=> d!285861 d!286057))

(assert (=> b!966243 d!286091))

(assert (=> b!966243 d!286077))

(assert (=> d!285795 d!285765))

(assert (=> d!285795 d!285757))

(declare-fun d!286171 () Bool)

(assert (=> d!286171 (= (matchR!1225 r!15766 s!10566) (matchRSpec!488 r!15766 s!10566))))

(assert (=> d!286171 true))

(declare-fun _$88!3018 () Unit!15029)

(assert (=> d!286171 (= (choose!6103 r!15766 s!10566) _$88!3018)))

(declare-fun bs!241967 () Bool)

(assert (= bs!241967 d!286171))

(assert (=> bs!241967 m!1171933))

(assert (=> bs!241967 m!1171931))

(assert (=> d!285795 d!286171))

(assert (=> d!285795 d!285859))

(assert (=> b!966075 d!286119))

(declare-fun d!286173 () Bool)

(assert (=> d!286173 true))

(assert (=> d!286173 true))

(declare-fun res!439681 () Bool)

(assert (=> d!286173 (= (choose!6105 lambda!33990) res!439681)))

(assert (=> d!285829 d!286173))

(assert (=> b!966188 d!286101))

(assert (=> b!966188 d!286103))

(assert (=> b!966184 d!286123))

(declare-fun d!286175 () Bool)

(assert (=> d!286175 (= (nullable!815 lt!347923) (nullableFct!194 lt!347923))))

(declare-fun bs!241968 () Bool)

(assert (= bs!241968 d!286175))

(declare-fun m!1173043 () Bool)

(assert (=> bs!241968 m!1173043))

(assert (=> b!966073 d!286175))

(declare-fun bs!241969 () Bool)

(declare-fun b!967202 () Bool)

(assert (= bs!241969 (and b!967202 d!285831)))

(declare-fun lambda!34067 () Int)

(assert (=> bs!241969 (= (and (= (reg!3016 (regOne!5887 lt!347923)) lt!347936) (= (regOne!5887 lt!347923) (Star!2687 lt!347936))) (= lambda!34067 lambda!34027))))

(assert (=> bs!241969 (not (= lambda!34067 lambda!34026))))

(declare-fun bs!241970 () Bool)

(assert (= bs!241970 (and b!967202 d!286111)))

(assert (=> bs!241970 (not (= lambda!34067 lambda!34064))))

(declare-fun bs!241971 () Bool)

(assert (= bs!241971 (and b!967202 d!285843)))

(assert (=> bs!241971 (not (= lambda!34067 lambda!34028))))

(declare-fun bs!241972 () Bool)

(assert (= bs!241972 (and b!967202 b!967093)))

(assert (=> bs!241972 (not (= lambda!34067 lambda!34066))))

(declare-fun bs!241973 () Bool)

(assert (= bs!241973 (and b!967202 b!965678)))

(assert (=> bs!241973 (= (and (= (reg!3016 (regOne!5887 lt!347923)) lt!347936) (= (regOne!5887 lt!347923) lt!347923)) (= lambda!34067 lambda!33990))))

(declare-fun bs!241974 () Bool)

(assert (= bs!241974 (and b!967202 d!286099)))

(assert (=> bs!241974 (not (= lambda!34067 lambda!34063))))

(declare-fun bs!241975 () Bool)

(assert (= bs!241975 (and b!967202 b!966983)))

(assert (=> bs!241975 (not (= lambda!34067 lambda!34058))))

(declare-fun bs!241976 () Bool)

(assert (= bs!241976 (and b!967202 b!966147)))

(assert (=> bs!241976 (not (= lambda!34067 lambda!34018))))

(declare-fun bs!241977 () Bool)

(assert (= bs!241977 (and b!967202 b!966155)))

(assert (=> bs!241977 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 lt!347923)) (= (regOne!5887 lt!347923) lt!347923)) (= lambda!34067 lambda!34017))))

(declare-fun bs!241978 () Bool)

(assert (= bs!241978 (and b!967202 b!965872)))

(assert (=> bs!241978 (not (= lambda!34067 lambda!34009))))

(assert (=> bs!241973 (not (= lambda!34067 lambda!33989))))

(declare-fun bs!241979 () Bool)

(assert (= bs!241979 (and b!967202 d!285853)))

(assert (=> bs!241979 (not (= lambda!34067 lambda!34030))))

(declare-fun bs!241980 () Bool)

(assert (= bs!241980 (and b!967202 b!965684)))

(assert (=> bs!241980 (not (= lambda!34067 lambda!33987))))

(declare-fun bs!241981 () Bool)

(assert (= bs!241981 (and b!967202 b!966991)))

(assert (=> bs!241981 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 (regTwo!5887 lt!347923))) (= (regOne!5887 lt!347923) (regTwo!5887 lt!347923))) (= lambda!34067 lambda!34057))))

(declare-fun bs!241982 () Bool)

(assert (= bs!241982 (and b!967202 d!286055)))

(assert (=> bs!241982 (= (and (= (reg!3016 (regOne!5887 lt!347923)) lt!347936) (= (regOne!5887 lt!347923) (Star!2687 lt!347936))) (= lambda!34067 lambda!34056))))

(assert (=> bs!241982 (not (= lambda!34067 lambda!34055))))

(declare-fun bs!241983 () Bool)

(assert (= bs!241983 (and b!967202 b!965880)))

(assert (=> bs!241983 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 r!15766)) (= (regOne!5887 lt!347923) r!15766)) (= lambda!34067 lambda!34006))))

(declare-fun bs!241984 () Bool)

(assert (= bs!241984 (and b!967202 d!286089)))

(assert (=> bs!241984 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 r!15766)) (= (regOne!5887 lt!347923) (Star!2687 (reg!3016 r!15766)))) (= lambda!34067 lambda!34060))))

(assert (=> bs!241984 (not (= lambda!34067 lambda!34059))))

(assert (=> bs!241980 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 r!15766)) (= (regOne!5887 lt!347923) lt!347931)) (= lambda!34067 lambda!33988))))

(assert (=> bs!241971 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 r!15766)) (= (regOne!5887 lt!347923) (Star!2687 (reg!3016 r!15766)))) (= lambda!34067 lambda!34029))))

(declare-fun bs!241985 () Bool)

(assert (= bs!241985 (and b!967202 b!967101)))

(assert (=> bs!241985 (= (and (= (reg!3016 (regOne!5887 lt!347923)) (reg!3016 (regTwo!5887 r!15766))) (= (regOne!5887 lt!347923) (regTwo!5887 r!15766))) (= lambda!34067 lambda!34065))))

(declare-fun bs!241986 () Bool)

(assert (= bs!241986 (and b!967202 d!285827)))

(assert (=> bs!241986 (not (= lambda!34067 lambda!34021))))

(assert (=> b!967202 true))

(assert (=> b!967202 true))

(declare-fun bs!241987 () Bool)

(declare-fun b!967194 () Bool)

(assert (= bs!241987 (and b!967194 d!285831)))

(declare-fun lambda!34068 () Int)

(assert (=> bs!241987 (not (= lambda!34068 lambda!34027))))

(assert (=> bs!241987 (not (= lambda!34068 lambda!34026))))

(declare-fun bs!241988 () Bool)

(assert (= bs!241988 (and b!967194 d!286111)))

(assert (=> bs!241988 (not (= lambda!34068 lambda!34064))))

(declare-fun bs!241989 () Bool)

(assert (= bs!241989 (and b!967194 d!285843)))

(assert (=> bs!241989 (not (= lambda!34068 lambda!34028))))

(declare-fun bs!241990 () Bool)

(assert (= bs!241990 (and b!967194 b!967093)))

(assert (=> bs!241990 (= (and (= (regOne!5886 (regOne!5887 lt!347923)) (regOne!5886 (regTwo!5887 r!15766))) (= (regTwo!5886 (regOne!5887 lt!347923)) (regTwo!5886 (regTwo!5887 r!15766)))) (= lambda!34068 lambda!34066))))

(declare-fun bs!241991 () Bool)

(assert (= bs!241991 (and b!967194 b!965678)))

(assert (=> bs!241991 (not (= lambda!34068 lambda!33990))))

(declare-fun bs!241992 () Bool)

(assert (= bs!241992 (and b!967194 d!286099)))

(assert (=> bs!241992 (not (= lambda!34068 lambda!34063))))

(declare-fun bs!241993 () Bool)

(assert (= bs!241993 (and b!967194 b!966983)))

(assert (=> bs!241993 (= (and (= (regOne!5886 (regOne!5887 lt!347923)) (regOne!5886 (regTwo!5887 lt!347923))) (= (regTwo!5886 (regOne!5887 lt!347923)) (regTwo!5886 (regTwo!5887 lt!347923)))) (= lambda!34068 lambda!34058))))

(declare-fun bs!241994 () Bool)

(assert (= bs!241994 (and b!967194 b!966147)))

(assert (=> bs!241994 (= (and (= (regOne!5886 (regOne!5887 lt!347923)) (regOne!5886 lt!347923)) (= (regTwo!5886 (regOne!5887 lt!347923)) (regTwo!5886 lt!347923))) (= lambda!34068 lambda!34018))))

(declare-fun bs!241995 () Bool)

(assert (= bs!241995 (and b!967194 b!966155)))

(assert (=> bs!241995 (not (= lambda!34068 lambda!34017))))

(declare-fun bs!241996 () Bool)

(assert (= bs!241996 (and b!967194 b!967202)))

(assert (=> bs!241996 (not (= lambda!34068 lambda!34067))))

(declare-fun bs!241997 () Bool)

(assert (= bs!241997 (and b!967194 b!965872)))

(assert (=> bs!241997 (= (and (= (regOne!5886 (regOne!5887 lt!347923)) (regOne!5886 r!15766)) (= (regTwo!5886 (regOne!5887 lt!347923)) (regTwo!5886 r!15766))) (= lambda!34068 lambda!34009))))

(assert (=> bs!241991 (not (= lambda!34068 lambda!33989))))

(declare-fun bs!241998 () Bool)

(assert (= bs!241998 (and b!967194 d!285853)))

(assert (=> bs!241998 (not (= lambda!34068 lambda!34030))))

(declare-fun bs!241999 () Bool)

(assert (= bs!241999 (and b!967194 b!965684)))

(assert (=> bs!241999 (not (= lambda!34068 lambda!33987))))

(declare-fun bs!242000 () Bool)

(assert (= bs!242000 (and b!967194 b!966991)))

(assert (=> bs!242000 (not (= lambda!34068 lambda!34057))))

(declare-fun bs!242001 () Bool)

(assert (= bs!242001 (and b!967194 d!286055)))

(assert (=> bs!242001 (not (= lambda!34068 lambda!34056))))

(assert (=> bs!242001 (not (= lambda!34068 lambda!34055))))

(declare-fun bs!242002 () Bool)

(assert (= bs!242002 (and b!967194 b!965880)))

(assert (=> bs!242002 (not (= lambda!34068 lambda!34006))))

(declare-fun bs!242003 () Bool)

(assert (= bs!242003 (and b!967194 d!286089)))

(assert (=> bs!242003 (not (= lambda!34068 lambda!34060))))

(assert (=> bs!242003 (not (= lambda!34068 lambda!34059))))

(assert (=> bs!241999 (not (= lambda!34068 lambda!33988))))

(assert (=> bs!241989 (not (= lambda!34068 lambda!34029))))

(declare-fun bs!242004 () Bool)

(assert (= bs!242004 (and b!967194 b!967101)))

(assert (=> bs!242004 (not (= lambda!34068 lambda!34065))))

(declare-fun bs!242005 () Bool)

(assert (= bs!242005 (and b!967194 d!285827)))

(assert (=> bs!242005 (not (= lambda!34068 lambda!34021))))

(assert (=> b!967194 true))

(assert (=> b!967194 true))

(declare-fun bm!61221 () Bool)

(declare-fun call!61226 () Bool)

(assert (=> bm!61221 (= call!61226 (isEmpty!6205 s!10566))))

(declare-fun b!967195 () Bool)

(declare-fun c!157687 () Bool)

(assert (=> b!967195 (= c!157687 ((_ is ElementMatch!2687) (regOne!5887 lt!347923)))))

(declare-fun e!623967 () Bool)

(declare-fun e!623968 () Bool)

(assert (=> b!967195 (= e!623967 e!623968)))

(declare-fun b!967196 () Bool)

(assert (=> b!967196 (= e!623968 (= s!10566 (Cons!9901 (c!157310 (regOne!5887 lt!347923)) Nil!9901)))))

(declare-fun b!967197 () Bool)

(declare-fun e!623972 () Bool)

(declare-fun e!623973 () Bool)

(assert (=> b!967197 (= e!623972 e!623973)))

(declare-fun c!157689 () Bool)

(assert (=> b!967197 (= c!157689 ((_ is Star!2687) (regOne!5887 lt!347923)))))

(declare-fun b!967198 () Bool)

(declare-fun e!623970 () Bool)

(assert (=> b!967198 (= e!623970 call!61226)))

(declare-fun b!967199 () Bool)

(assert (=> b!967199 (= e!623970 e!623967)))

(declare-fun res!439684 () Bool)

(assert (=> b!967199 (= res!439684 (not ((_ is EmptyLang!2687) (regOne!5887 lt!347923))))))

(assert (=> b!967199 (=> (not res!439684) (not e!623967))))

(declare-fun b!967200 () Bool)

(declare-fun c!157690 () Bool)

(assert (=> b!967200 (= c!157690 ((_ is Union!2687) (regOne!5887 lt!347923)))))

(assert (=> b!967200 (= e!623968 e!623972)))

(declare-fun b!967201 () Bool)

(declare-fun res!439683 () Bool)

(declare-fun e!623969 () Bool)

(assert (=> b!967201 (=> res!439683 e!623969)))

(assert (=> b!967201 (= res!439683 call!61226)))

(assert (=> b!967201 (= e!623973 e!623969)))

(declare-fun d!286177 () Bool)

(declare-fun c!157688 () Bool)

(assert (=> d!286177 (= c!157688 ((_ is EmptyExpr!2687) (regOne!5887 lt!347923)))))

(assert (=> d!286177 (= (matchRSpec!488 (regOne!5887 lt!347923) s!10566) e!623970)))

(declare-fun call!61227 () Bool)

(assert (=> b!967194 (= e!623973 call!61227)))

(assert (=> b!967202 (= e!623969 call!61227)))

(declare-fun bm!61222 () Bool)

(assert (=> bm!61222 (= call!61227 (Exists!430 (ite c!157689 lambda!34067 lambda!34068)))))

(declare-fun b!967203 () Bool)

(declare-fun e!623971 () Bool)

(assert (=> b!967203 (= e!623972 e!623971)))

(declare-fun res!439682 () Bool)

(assert (=> b!967203 (= res!439682 (matchRSpec!488 (regOne!5887 (regOne!5887 lt!347923)) s!10566))))

(assert (=> b!967203 (=> res!439682 e!623971)))

(declare-fun b!967204 () Bool)

(assert (=> b!967204 (= e!623971 (matchRSpec!488 (regTwo!5887 (regOne!5887 lt!347923)) s!10566))))

(assert (= (and d!286177 c!157688) b!967198))

(assert (= (and d!286177 (not c!157688)) b!967199))

(assert (= (and b!967199 res!439684) b!967195))

(assert (= (and b!967195 c!157687) b!967196))

(assert (= (and b!967195 (not c!157687)) b!967200))

(assert (= (and b!967200 c!157690) b!967203))

(assert (= (and b!967200 (not c!157690)) b!967197))

(assert (= (and b!967203 (not res!439682)) b!967204))

(assert (= (and b!967197 c!157689) b!967201))

(assert (= (and b!967197 (not c!157689)) b!967194))

(assert (= (and b!967201 (not res!439683)) b!967202))

(assert (= (or b!967202 b!967194) bm!61222))

(assert (= (or b!967198 b!967201) bm!61221))

(assert (=> bm!61221 m!1171903))

(declare-fun m!1173045 () Bool)

(assert (=> bm!61222 m!1173045))

(declare-fun m!1173047 () Bool)

(assert (=> b!967203 m!1173047))

(declare-fun m!1173049 () Bool)

(assert (=> b!967204 m!1173049))

(assert (=> b!966156 d!286177))

(declare-fun d!286179 () Bool)

(assert (=> d!286179 true))

(assert (=> d!286179 true))

(declare-fun res!439685 () Bool)

(assert (=> d!286179 (= (choose!6105 lambda!33989) res!439685)))

(assert (=> d!285821 d!286179))

(declare-fun d!286181 () Bool)

(assert (=> d!286181 true))

(assert (=> d!286181 true))

(declare-fun res!439686 () Bool)

(assert (=> d!286181 (= (choose!6105 lambda!33987) res!439686)))

(assert (=> d!285845 d!286181))

(assert (=> bm!61082 d!285857))

(assert (=> b!966238 d!286175))

(assert (=> b!966240 d!286035))

(declare-fun b!967205 () Bool)

(declare-fun e!623977 () Bool)

(assert (=> b!967205 (= e!623977 (= (head!1776 (tail!1338 (_1!6452 lt!347938))) (c!157310 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))))))))

(declare-fun b!967206 () Bool)

(declare-fun e!623978 () Bool)

(declare-fun lt!348102 () Bool)

(declare-fun call!61228 () Bool)

(assert (=> b!967206 (= e!623978 (= lt!348102 call!61228))))

(declare-fun b!967207 () Bool)

(declare-fun e!623980 () Bool)

(assert (=> b!967207 (= e!623980 (nullable!815 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938)))))))

(declare-fun b!967208 () Bool)

(declare-fun res!439691 () Bool)

(declare-fun e!623976 () Bool)

(assert (=> b!967208 (=> res!439691 e!623976)))

(assert (=> b!967208 (= res!439691 (not ((_ is ElementMatch!2687) (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))))))))

(declare-fun e!623979 () Bool)

(assert (=> b!967208 (= e!623979 e!623976)))

(declare-fun b!967209 () Bool)

(declare-fun e!623975 () Bool)

(assert (=> b!967209 (= e!623975 (not (= (head!1776 (tail!1338 (_1!6452 lt!347938))) (c!157310 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938)))))))))

(declare-fun b!967210 () Bool)

(declare-fun res!439692 () Bool)

(assert (=> b!967210 (=> res!439692 e!623976)))

(assert (=> b!967210 (= res!439692 e!623977)))

(declare-fun res!439689 () Bool)

(assert (=> b!967210 (=> (not res!439689) (not e!623977))))

(assert (=> b!967210 (= res!439689 lt!348102)))

(declare-fun b!967211 () Bool)

(declare-fun e!623974 () Bool)

(assert (=> b!967211 (= e!623976 e!623974)))

(declare-fun res!439690 () Bool)

(assert (=> b!967211 (=> (not res!439690) (not e!623974))))

(assert (=> b!967211 (= res!439690 (not lt!348102))))

(declare-fun b!967212 () Bool)

(declare-fun res!439694 () Bool)

(assert (=> b!967212 (=> res!439694 e!623975)))

(assert (=> b!967212 (= res!439694 (not (isEmpty!6205 (tail!1338 (tail!1338 (_1!6452 lt!347938))))))))

(declare-fun b!967213 () Bool)

(declare-fun res!439688 () Bool)

(assert (=> b!967213 (=> (not res!439688) (not e!623977))))

(assert (=> b!967213 (= res!439688 (isEmpty!6205 (tail!1338 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun d!286183 () Bool)

(assert (=> d!286183 e!623978))

(declare-fun c!157692 () Bool)

(assert (=> d!286183 (= c!157692 ((_ is EmptyExpr!2687) (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938)))))))

(assert (=> d!286183 (= lt!348102 e!623980)))

(declare-fun c!157693 () Bool)

(assert (=> d!286183 (= c!157693 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(assert (=> d!286183 (validRegex!1156 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))))))

(assert (=> d!286183 (= (matchR!1225 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))) (tail!1338 (_1!6452 lt!347938))) lt!348102)))

(declare-fun b!967214 () Bool)

(assert (=> b!967214 (= e!623978 e!623979)))

(declare-fun c!157691 () Bool)

(assert (=> b!967214 (= c!157691 ((_ is EmptyLang!2687) (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938)))))))

(declare-fun b!967215 () Bool)

(assert (=> b!967215 (= e!623980 (matchR!1225 (derivativeStep!623 (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))) (head!1776 (tail!1338 (_1!6452 lt!347938)))) (tail!1338 (tail!1338 (_1!6452 lt!347938)))))))

(declare-fun b!967216 () Bool)

(assert (=> b!967216 (= e!623979 (not lt!348102))))

(declare-fun bm!61223 () Bool)

(assert (=> bm!61223 (= call!61228 (isEmpty!6205 (tail!1338 (_1!6452 lt!347938))))))

(declare-fun b!967217 () Bool)

(declare-fun res!439687 () Bool)

(assert (=> b!967217 (=> (not res!439687) (not e!623977))))

(assert (=> b!967217 (= res!439687 (not call!61228))))

(declare-fun b!967218 () Bool)

(assert (=> b!967218 (= e!623974 e!623975)))

(declare-fun res!439693 () Bool)

(assert (=> b!967218 (=> res!439693 e!623975)))

(assert (=> b!967218 (= res!439693 call!61228)))

(assert (= (and d!286183 c!157693) b!967207))

(assert (= (and d!286183 (not c!157693)) b!967215))

(assert (= (and d!286183 c!157692) b!967206))

(assert (= (and d!286183 (not c!157692)) b!967214))

(assert (= (and b!967214 c!157691) b!967216))

(assert (= (and b!967214 (not c!157691)) b!967208))

(assert (= (and b!967208 (not res!439691)) b!967210))

(assert (= (and b!967210 res!439689) b!967217))

(assert (= (and b!967217 res!439687) b!967213))

(assert (= (and b!967213 res!439688) b!967205))

(assert (= (and b!967210 (not res!439692)) b!967211))

(assert (= (and b!967211 res!439690) b!967218))

(assert (= (and b!967218 (not res!439693)) b!967212))

(assert (= (and b!967212 (not res!439694)) b!967209))

(assert (= (or b!967206 b!967217 b!967218) bm!61223))

(assert (=> b!967213 m!1172223))

(assert (=> b!967213 m!1173021))

(assert (=> b!967213 m!1173021))

(assert (=> b!967213 m!1173023))

(assert (=> b!967207 m!1172291))

(declare-fun m!1173051 () Bool)

(assert (=> b!967207 m!1173051))

(assert (=> b!967212 m!1172223))

(assert (=> b!967212 m!1173021))

(assert (=> b!967212 m!1173021))

(assert (=> b!967212 m!1173023))

(assert (=> b!967205 m!1172223))

(assert (=> b!967205 m!1173027))

(assert (=> b!967215 m!1172223))

(assert (=> b!967215 m!1173027))

(assert (=> b!967215 m!1172291))

(assert (=> b!967215 m!1173027))

(declare-fun m!1173053 () Bool)

(assert (=> b!967215 m!1173053))

(assert (=> b!967215 m!1172223))

(assert (=> b!967215 m!1173021))

(assert (=> b!967215 m!1173053))

(assert (=> b!967215 m!1173021))

(declare-fun m!1173055 () Bool)

(assert (=> b!967215 m!1173055))

(assert (=> b!967209 m!1172223))

(assert (=> b!967209 m!1173027))

(assert (=> d!286183 m!1172223))

(assert (=> d!286183 m!1172225))

(assert (=> d!286183 m!1172291))

(declare-fun m!1173057 () Bool)

(assert (=> d!286183 m!1173057))

(assert (=> bm!61223 m!1172223))

(assert (=> bm!61223 m!1172225))

(assert (=> b!966287 d!286183))

(declare-fun b!967219 () Bool)

(declare-fun e!623982 () Regex!2687)

(declare-fun call!61231 () Regex!2687)

(assert (=> b!967219 (= e!623982 (Union!2687 (Concat!4520 call!61231 (regTwo!5886 lt!347936)) EmptyLang!2687))))

(declare-fun b!967220 () Bool)

(declare-fun e!623985 () Regex!2687)

(declare-fun call!61229 () Regex!2687)

(assert (=> b!967220 (= e!623985 (Concat!4520 call!61229 lt!347936))))

(declare-fun b!967221 () Bool)

(declare-fun e!623981 () Regex!2687)

(declare-fun e!623984 () Regex!2687)

(assert (=> b!967221 (= e!623981 e!623984)))

(declare-fun c!157697 () Bool)

(assert (=> b!967221 (= c!157697 ((_ is ElementMatch!2687) lt!347936))))

(declare-fun bm!61224 () Bool)

(declare-fun call!61232 () Regex!2687)

(assert (=> bm!61224 (= call!61229 call!61232)))

(declare-fun call!61230 () Regex!2687)

(declare-fun b!967222 () Bool)

(assert (=> b!967222 (= e!623982 (Union!2687 (Concat!4520 call!61230 (regTwo!5886 lt!347936)) call!61231))))

(declare-fun c!157698 () Bool)

(declare-fun c!157694 () Bool)

(declare-fun c!157695 () Bool)

(declare-fun bm!61225 () Bool)

(assert (=> bm!61225 (= call!61232 (derivativeStep!623 (ite c!157698 (regOne!5887 lt!347936) (ite c!157694 (reg!3016 lt!347936) (ite c!157695 (regTwo!5886 lt!347936) (regOne!5886 lt!347936)))) (head!1776 (_1!6452 lt!347938))))))

(declare-fun bm!61226 () Bool)

(assert (=> bm!61226 (= call!61231 call!61229)))

(declare-fun b!967224 () Bool)

(declare-fun e!623983 () Regex!2687)

(assert (=> b!967224 (= e!623983 (Union!2687 call!61232 call!61230))))

(declare-fun b!967225 () Bool)

(assert (=> b!967225 (= e!623981 EmptyLang!2687)))

(declare-fun b!967226 () Bool)

(assert (=> b!967226 (= c!157695 (nullable!815 (regOne!5886 lt!347936)))))

(assert (=> b!967226 (= e!623985 e!623982)))

(declare-fun b!967227 () Bool)

(assert (=> b!967227 (= e!623983 e!623985)))

(assert (=> b!967227 (= c!157694 ((_ is Star!2687) lt!347936))))

(declare-fun bm!61227 () Bool)

(assert (=> bm!61227 (= call!61230 (derivativeStep!623 (ite c!157698 (regTwo!5887 lt!347936) (regOne!5886 lt!347936)) (head!1776 (_1!6452 lt!347938))))))

(declare-fun b!967228 () Bool)

(assert (=> b!967228 (= e!623984 (ite (= (head!1776 (_1!6452 lt!347938)) (c!157310 lt!347936)) EmptyExpr!2687 EmptyLang!2687))))

(declare-fun b!967223 () Bool)

(assert (=> b!967223 (= c!157698 ((_ is Union!2687) lt!347936))))

(assert (=> b!967223 (= e!623984 e!623983)))

(declare-fun d!286185 () Bool)

(declare-fun lt!348103 () Regex!2687)

(assert (=> d!286185 (validRegex!1156 lt!348103)))

(assert (=> d!286185 (= lt!348103 e!623981)))

(declare-fun c!157696 () Bool)

(assert (=> d!286185 (= c!157696 (or ((_ is EmptyExpr!2687) lt!347936) ((_ is EmptyLang!2687) lt!347936)))))

(assert (=> d!286185 (validRegex!1156 lt!347936)))

(assert (=> d!286185 (= (derivativeStep!623 lt!347936 (head!1776 (_1!6452 lt!347938))) lt!348103)))

(assert (= (and d!286185 c!157696) b!967225))

(assert (= (and d!286185 (not c!157696)) b!967221))

(assert (= (and b!967221 c!157697) b!967228))

(assert (= (and b!967221 (not c!157697)) b!967223))

(assert (= (and b!967223 c!157698) b!967224))

(assert (= (and b!967223 (not c!157698)) b!967227))

(assert (= (and b!967227 c!157694) b!967220))

(assert (= (and b!967227 (not c!157694)) b!967226))

(assert (= (and b!967226 c!157695) b!967222))

(assert (= (and b!967226 (not c!157695)) b!967219))

(assert (= (or b!967222 b!967219) bm!61226))

(assert (= (or b!967220 bm!61226) bm!61224))

(assert (= (or b!967224 bm!61224) bm!61225))

(assert (= (or b!967224 b!967222) bm!61227))

(assert (=> bm!61225 m!1172229))

(declare-fun m!1173059 () Bool)

(assert (=> bm!61225 m!1173059))

(declare-fun m!1173061 () Bool)

(assert (=> b!967226 m!1173061))

(assert (=> bm!61227 m!1172229))

(declare-fun m!1173063 () Bool)

(assert (=> bm!61227 m!1173063))

(declare-fun m!1173065 () Bool)

(assert (=> d!286185 m!1173065))

(assert (=> d!286185 m!1172179))

(assert (=> b!966287 d!286185))

(assert (=> b!966287 d!286123))

(assert (=> b!966287 d!286103))

(assert (=> b!966236 d!286035))

(declare-fun d!286187 () Bool)

(assert (=> d!286187 (= (isDefined!1910 lt!348023) (not (isEmpty!6207 lt!348023)))))

(declare-fun bs!242006 () Bool)

(assert (= bs!242006 d!286187))

(declare-fun m!1173067 () Bool)

(assert (=> bs!242006 m!1173067))

(assert (=> d!285849 d!286187))

(declare-fun b!967229 () Bool)

(declare-fun e!623989 () Bool)

(assert (=> b!967229 (= e!623989 (= (head!1776 Nil!9901) (c!157310 (reg!3016 r!15766))))))

(declare-fun b!967230 () Bool)

(declare-fun e!623990 () Bool)

(declare-fun lt!348104 () Bool)

(declare-fun call!61233 () Bool)

(assert (=> b!967230 (= e!623990 (= lt!348104 call!61233))))

(declare-fun b!967231 () Bool)

(declare-fun e!623992 () Bool)

(assert (=> b!967231 (= e!623992 (nullable!815 (reg!3016 r!15766)))))

(declare-fun b!967232 () Bool)

(declare-fun res!439699 () Bool)

(declare-fun e!623988 () Bool)

(assert (=> b!967232 (=> res!439699 e!623988)))

(assert (=> b!967232 (= res!439699 (not ((_ is ElementMatch!2687) (reg!3016 r!15766))))))

(declare-fun e!623991 () Bool)

(assert (=> b!967232 (= e!623991 e!623988)))

(declare-fun b!967233 () Bool)

(declare-fun e!623987 () Bool)

(assert (=> b!967233 (= e!623987 (not (= (head!1776 Nil!9901) (c!157310 (reg!3016 r!15766)))))))

(declare-fun b!967234 () Bool)

(declare-fun res!439700 () Bool)

(assert (=> b!967234 (=> res!439700 e!623988)))

(assert (=> b!967234 (= res!439700 e!623989)))

(declare-fun res!439697 () Bool)

(assert (=> b!967234 (=> (not res!439697) (not e!623989))))

(assert (=> b!967234 (= res!439697 lt!348104)))

(declare-fun b!967235 () Bool)

(declare-fun e!623986 () Bool)

(assert (=> b!967235 (= e!623988 e!623986)))

(declare-fun res!439698 () Bool)

(assert (=> b!967235 (=> (not res!439698) (not e!623986))))

(assert (=> b!967235 (= res!439698 (not lt!348104))))

(declare-fun b!967236 () Bool)

(declare-fun res!439702 () Bool)

(assert (=> b!967236 (=> res!439702 e!623987)))

(assert (=> b!967236 (= res!439702 (not (isEmpty!6205 (tail!1338 Nil!9901))))))

(declare-fun b!967237 () Bool)

(declare-fun res!439696 () Bool)

(assert (=> b!967237 (=> (not res!439696) (not e!623989))))

(assert (=> b!967237 (= res!439696 (isEmpty!6205 (tail!1338 Nil!9901)))))

(declare-fun d!286189 () Bool)

(assert (=> d!286189 e!623990))

(declare-fun c!157700 () Bool)

(assert (=> d!286189 (= c!157700 ((_ is EmptyExpr!2687) (reg!3016 r!15766)))))

(assert (=> d!286189 (= lt!348104 e!623992)))

(declare-fun c!157701 () Bool)

(assert (=> d!286189 (= c!157701 (isEmpty!6205 Nil!9901))))

(assert (=> d!286189 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!286189 (= (matchR!1225 (reg!3016 r!15766) Nil!9901) lt!348104)))

(declare-fun b!967238 () Bool)

(assert (=> b!967238 (= e!623990 e!623991)))

(declare-fun c!157699 () Bool)

(assert (=> b!967238 (= c!157699 ((_ is EmptyLang!2687) (reg!3016 r!15766)))))

(declare-fun b!967239 () Bool)

(assert (=> b!967239 (= e!623992 (matchR!1225 (derivativeStep!623 (reg!3016 r!15766) (head!1776 Nil!9901)) (tail!1338 Nil!9901)))))

(declare-fun b!967240 () Bool)

(assert (=> b!967240 (= e!623991 (not lt!348104))))

(declare-fun bm!61228 () Bool)

(assert (=> bm!61228 (= call!61233 (isEmpty!6205 Nil!9901))))

(declare-fun b!967241 () Bool)

(declare-fun res!439695 () Bool)

(assert (=> b!967241 (=> (not res!439695) (not e!623989))))

(assert (=> b!967241 (= res!439695 (not call!61233))))

(declare-fun b!967242 () Bool)

(assert (=> b!967242 (= e!623986 e!623987)))

(declare-fun res!439701 () Bool)

(assert (=> b!967242 (=> res!439701 e!623987)))

(assert (=> b!967242 (= res!439701 call!61233)))

(assert (= (and d!286189 c!157701) b!967231))

(assert (= (and d!286189 (not c!157701)) b!967239))

(assert (= (and d!286189 c!157700) b!967230))

(assert (= (and d!286189 (not c!157700)) b!967238))

(assert (= (and b!967238 c!157699) b!967240))

(assert (= (and b!967238 (not c!157699)) b!967232))

(assert (= (and b!967232 (not res!439699)) b!967234))

(assert (= (and b!967234 res!439697) b!967241))

(assert (= (and b!967241 res!439695) b!967237))

(assert (= (and b!967237 res!439696) b!967229))

(assert (= (and b!967234 (not res!439700)) b!967235))

(assert (= (and b!967235 res!439698) b!967242))

(assert (= (and b!967242 (not res!439701)) b!967236))

(assert (= (and b!967236 (not res!439702)) b!967233))

(assert (= (or b!967230 b!967241 b!967242) bm!61228))

(assert (=> b!967237 m!1172961))

(assert (=> b!967237 m!1172961))

(assert (=> b!967237 m!1172963))

(assert (=> b!967231 m!1172227))

(assert (=> b!967236 m!1172961))

(assert (=> b!967236 m!1172961))

(assert (=> b!967236 m!1172963))

(assert (=> b!967229 m!1172965))

(assert (=> b!967239 m!1172965))

(assert (=> b!967239 m!1172965))

(declare-fun m!1173069 () Bool)

(assert (=> b!967239 m!1173069))

(assert (=> b!967239 m!1172961))

(assert (=> b!967239 m!1173069))

(assert (=> b!967239 m!1172961))

(declare-fun m!1173071 () Bool)

(assert (=> b!967239 m!1173071))

(assert (=> b!967233 m!1172965))

(assert (=> d!286189 m!1172971))

(assert (=> d!286189 m!1172235))

(assert (=> bm!61228 m!1172971))

(assert (=> d!285849 d!286189))

(assert (=> d!285849 d!286065))

(declare-fun d!286191 () Bool)

(assert (=> d!286191 (= (isEmpty!6207 lt!347937) (not ((_ is Some!2267) lt!347937)))))

(assert (=> d!285825 d!286191))

(declare-fun b!967243 () Bool)

(declare-fun e!623996 () Bool)

(assert (=> b!967243 (= e!623996 (= (head!1776 (_2!6452 (get!3395 lt!348023))) (c!157310 lt!347931)))))

(declare-fun b!967244 () Bool)

(declare-fun e!623997 () Bool)

(declare-fun lt!348105 () Bool)

(declare-fun call!61234 () Bool)

(assert (=> b!967244 (= e!623997 (= lt!348105 call!61234))))

(declare-fun b!967245 () Bool)

(declare-fun e!623999 () Bool)

(assert (=> b!967245 (= e!623999 (nullable!815 lt!347931))))

(declare-fun b!967246 () Bool)

(declare-fun res!439707 () Bool)

(declare-fun e!623995 () Bool)

(assert (=> b!967246 (=> res!439707 e!623995)))

(assert (=> b!967246 (= res!439707 (not ((_ is ElementMatch!2687) lt!347931)))))

(declare-fun e!623998 () Bool)

(assert (=> b!967246 (= e!623998 e!623995)))

(declare-fun b!967247 () Bool)

(declare-fun e!623994 () Bool)

(assert (=> b!967247 (= e!623994 (not (= (head!1776 (_2!6452 (get!3395 lt!348023))) (c!157310 lt!347931))))))

(declare-fun b!967248 () Bool)

(declare-fun res!439708 () Bool)

(assert (=> b!967248 (=> res!439708 e!623995)))

(assert (=> b!967248 (= res!439708 e!623996)))

(declare-fun res!439705 () Bool)

(assert (=> b!967248 (=> (not res!439705) (not e!623996))))

(assert (=> b!967248 (= res!439705 lt!348105)))

(declare-fun b!967249 () Bool)

(declare-fun e!623993 () Bool)

(assert (=> b!967249 (= e!623995 e!623993)))

(declare-fun res!439706 () Bool)

(assert (=> b!967249 (=> (not res!439706) (not e!623993))))

(assert (=> b!967249 (= res!439706 (not lt!348105))))

(declare-fun b!967250 () Bool)

(declare-fun res!439710 () Bool)

(assert (=> b!967250 (=> res!439710 e!623994)))

(assert (=> b!967250 (= res!439710 (not (isEmpty!6205 (tail!1338 (_2!6452 (get!3395 lt!348023))))))))

(declare-fun b!967251 () Bool)

(declare-fun res!439704 () Bool)

(assert (=> b!967251 (=> (not res!439704) (not e!623996))))

(assert (=> b!967251 (= res!439704 (isEmpty!6205 (tail!1338 (_2!6452 (get!3395 lt!348023)))))))

(declare-fun d!286193 () Bool)

(assert (=> d!286193 e!623997))

(declare-fun c!157703 () Bool)

(assert (=> d!286193 (= c!157703 ((_ is EmptyExpr!2687) lt!347931))))

(assert (=> d!286193 (= lt!348105 e!623999)))

(declare-fun c!157704 () Bool)

(assert (=> d!286193 (= c!157704 (isEmpty!6205 (_2!6452 (get!3395 lt!348023))))))

(assert (=> d!286193 (validRegex!1156 lt!347931)))

(assert (=> d!286193 (= (matchR!1225 lt!347931 (_2!6452 (get!3395 lt!348023))) lt!348105)))

(declare-fun b!967252 () Bool)

(assert (=> b!967252 (= e!623997 e!623998)))

(declare-fun c!157702 () Bool)

(assert (=> b!967252 (= c!157702 ((_ is EmptyLang!2687) lt!347931))))

(declare-fun b!967253 () Bool)

(assert (=> b!967253 (= e!623999 (matchR!1225 (derivativeStep!623 lt!347931 (head!1776 (_2!6452 (get!3395 lt!348023)))) (tail!1338 (_2!6452 (get!3395 lt!348023)))))))

(declare-fun b!967254 () Bool)

(assert (=> b!967254 (= e!623998 (not lt!348105))))

(declare-fun bm!61229 () Bool)

(assert (=> bm!61229 (= call!61234 (isEmpty!6205 (_2!6452 (get!3395 lt!348023))))))

(declare-fun b!967255 () Bool)

(declare-fun res!439703 () Bool)

(assert (=> b!967255 (=> (not res!439703) (not e!623996))))

(assert (=> b!967255 (= res!439703 (not call!61234))))

(declare-fun b!967256 () Bool)

(assert (=> b!967256 (= e!623993 e!623994)))

(declare-fun res!439709 () Bool)

(assert (=> b!967256 (=> res!439709 e!623994)))

(assert (=> b!967256 (= res!439709 call!61234)))

(assert (= (and d!286193 c!157704) b!967245))

(assert (= (and d!286193 (not c!157704)) b!967253))

(assert (= (and d!286193 c!157703) b!967244))

(assert (= (and d!286193 (not c!157703)) b!967252))

(assert (= (and b!967252 c!157702) b!967254))

(assert (= (and b!967252 (not c!157702)) b!967246))

(assert (= (and b!967246 (not res!439707)) b!967248))

(assert (= (and b!967248 res!439705) b!967255))

(assert (= (and b!967255 res!439703) b!967251))

(assert (= (and b!967251 res!439704) b!967243))

(assert (= (and b!967248 (not res!439708)) b!967249))

(assert (= (and b!967249 res!439706) b!967256))

(assert (= (and b!967256 (not res!439709)) b!967250))

(assert (= (and b!967250 (not res!439710)) b!967247))

(assert (= (or b!967244 b!967255 b!967256) bm!61229))

(declare-fun m!1173073 () Bool)

(assert (=> b!967251 m!1173073))

(assert (=> b!967251 m!1173073))

(declare-fun m!1173075 () Bool)

(assert (=> b!967251 m!1173075))

(assert (=> b!967245 m!1172869))

(assert (=> b!967250 m!1173073))

(assert (=> b!967250 m!1173073))

(assert (=> b!967250 m!1173075))

(declare-fun m!1173077 () Bool)

(assert (=> b!967243 m!1173077))

(assert (=> b!967253 m!1173077))

(assert (=> b!967253 m!1173077))

(declare-fun m!1173079 () Bool)

(assert (=> b!967253 m!1173079))

(assert (=> b!967253 m!1173073))

(assert (=> b!967253 m!1173079))

(assert (=> b!967253 m!1173073))

(declare-fun m!1173081 () Bool)

(assert (=> b!967253 m!1173081))

(assert (=> b!967247 m!1173077))

(declare-fun m!1173083 () Bool)

(assert (=> d!286193 m!1173083))

(assert (=> d!286193 m!1172875))

(assert (=> bm!61229 m!1173083))

(assert (=> b!966232 d!286193))

(declare-fun d!286195 () Bool)

(assert (=> d!286195 (= (get!3395 lt!348023) (v!19684 lt!348023))))

(assert (=> b!966232 d!286195))

(declare-fun b!967257 () Bool)

(declare-fun e!624001 () List!9917)

(assert (=> b!967257 (= e!624001 (_2!6452 (get!3395 lt!348023)))))

(declare-fun b!967260 () Bool)

(declare-fun e!624000 () Bool)

(declare-fun lt!348106 () List!9917)

(assert (=> b!967260 (= e!624000 (or (not (= (_2!6452 (get!3395 lt!348023)) Nil!9901)) (= lt!348106 (_1!6452 (get!3395 lt!348023)))))))

(declare-fun b!967258 () Bool)

(assert (=> b!967258 (= e!624001 (Cons!9901 (h!15302 (_1!6452 (get!3395 lt!348023))) (++!2675 (t!100963 (_1!6452 (get!3395 lt!348023))) (_2!6452 (get!3395 lt!348023)))))))

(declare-fun b!967259 () Bool)

(declare-fun res!439712 () Bool)

(assert (=> b!967259 (=> (not res!439712) (not e!624000))))

(assert (=> b!967259 (= res!439712 (= (size!7937 lt!348106) (+ (size!7937 (_1!6452 (get!3395 lt!348023))) (size!7937 (_2!6452 (get!3395 lt!348023))))))))

(declare-fun d!286197 () Bool)

(assert (=> d!286197 e!624000))

(declare-fun res!439711 () Bool)

(assert (=> d!286197 (=> (not res!439711) (not e!624000))))

(assert (=> d!286197 (= res!439711 (= (content!1411 lt!348106) ((_ map or) (content!1411 (_1!6452 (get!3395 lt!348023))) (content!1411 (_2!6452 (get!3395 lt!348023))))))))

(assert (=> d!286197 (= lt!348106 e!624001)))

(declare-fun c!157705 () Bool)

(assert (=> d!286197 (= c!157705 ((_ is Nil!9901) (_1!6452 (get!3395 lt!348023))))))

(assert (=> d!286197 (= (++!2675 (_1!6452 (get!3395 lt!348023)) (_2!6452 (get!3395 lt!348023))) lt!348106)))

(assert (= (and d!286197 c!157705) b!967257))

(assert (= (and d!286197 (not c!157705)) b!967258))

(assert (= (and d!286197 res!439711) b!967259))

(assert (= (and b!967259 res!439712) b!967260))

(declare-fun m!1173085 () Bool)

(assert (=> b!967258 m!1173085))

(declare-fun m!1173087 () Bool)

(assert (=> b!967259 m!1173087))

(declare-fun m!1173089 () Bool)

(assert (=> b!967259 m!1173089))

(declare-fun m!1173091 () Bool)

(assert (=> b!967259 m!1173091))

(declare-fun m!1173093 () Bool)

(assert (=> d!286197 m!1173093))

(declare-fun m!1173095 () Bool)

(assert (=> d!286197 m!1173095))

(declare-fun m!1173097 () Bool)

(assert (=> d!286197 m!1173097))

(assert (=> b!966234 d!286197))

(assert (=> b!966234 d!286195))

(assert (=> d!285855 d!285815))

(assert (=> d!285855 d!286117))

(declare-fun b!967261 () Bool)

(declare-fun e!624005 () Bool)

(assert (=> b!967261 (= e!624005 (= (head!1776 (_1!6452 (get!3395 lt!348023))) (c!157310 (reg!3016 r!15766))))))

(declare-fun b!967262 () Bool)

(declare-fun e!624006 () Bool)

(declare-fun lt!348107 () Bool)

(declare-fun call!61235 () Bool)

(assert (=> b!967262 (= e!624006 (= lt!348107 call!61235))))

(declare-fun b!967263 () Bool)

(declare-fun e!624008 () Bool)

(assert (=> b!967263 (= e!624008 (nullable!815 (reg!3016 r!15766)))))

(declare-fun b!967264 () Bool)

(declare-fun res!439717 () Bool)

(declare-fun e!624004 () Bool)

(assert (=> b!967264 (=> res!439717 e!624004)))

(assert (=> b!967264 (= res!439717 (not ((_ is ElementMatch!2687) (reg!3016 r!15766))))))

(declare-fun e!624007 () Bool)

(assert (=> b!967264 (= e!624007 e!624004)))

(declare-fun b!967265 () Bool)

(declare-fun e!624003 () Bool)

(assert (=> b!967265 (= e!624003 (not (= (head!1776 (_1!6452 (get!3395 lt!348023))) (c!157310 (reg!3016 r!15766)))))))

(declare-fun b!967266 () Bool)

(declare-fun res!439718 () Bool)

(assert (=> b!967266 (=> res!439718 e!624004)))

(assert (=> b!967266 (= res!439718 e!624005)))

(declare-fun res!439715 () Bool)

(assert (=> b!967266 (=> (not res!439715) (not e!624005))))

(assert (=> b!967266 (= res!439715 lt!348107)))

(declare-fun b!967267 () Bool)

(declare-fun e!624002 () Bool)

(assert (=> b!967267 (= e!624004 e!624002)))

(declare-fun res!439716 () Bool)

(assert (=> b!967267 (=> (not res!439716) (not e!624002))))

(assert (=> b!967267 (= res!439716 (not lt!348107))))

(declare-fun b!967268 () Bool)

(declare-fun res!439720 () Bool)

(assert (=> b!967268 (=> res!439720 e!624003)))

(assert (=> b!967268 (= res!439720 (not (isEmpty!6205 (tail!1338 (_1!6452 (get!3395 lt!348023))))))))

(declare-fun b!967269 () Bool)

(declare-fun res!439714 () Bool)

(assert (=> b!967269 (=> (not res!439714) (not e!624005))))

(assert (=> b!967269 (= res!439714 (isEmpty!6205 (tail!1338 (_1!6452 (get!3395 lt!348023)))))))

(declare-fun d!286199 () Bool)

(assert (=> d!286199 e!624006))

(declare-fun c!157707 () Bool)

(assert (=> d!286199 (= c!157707 ((_ is EmptyExpr!2687) (reg!3016 r!15766)))))

(assert (=> d!286199 (= lt!348107 e!624008)))

(declare-fun c!157708 () Bool)

(assert (=> d!286199 (= c!157708 (isEmpty!6205 (_1!6452 (get!3395 lt!348023))))))

(assert (=> d!286199 (validRegex!1156 (reg!3016 r!15766))))

(assert (=> d!286199 (= (matchR!1225 (reg!3016 r!15766) (_1!6452 (get!3395 lt!348023))) lt!348107)))

(declare-fun b!967270 () Bool)

(assert (=> b!967270 (= e!624006 e!624007)))

(declare-fun c!157706 () Bool)

(assert (=> b!967270 (= c!157706 ((_ is EmptyLang!2687) (reg!3016 r!15766)))))

(declare-fun b!967271 () Bool)

(assert (=> b!967271 (= e!624008 (matchR!1225 (derivativeStep!623 (reg!3016 r!15766) (head!1776 (_1!6452 (get!3395 lt!348023)))) (tail!1338 (_1!6452 (get!3395 lt!348023)))))))

(declare-fun b!967272 () Bool)

(assert (=> b!967272 (= e!624007 (not lt!348107))))

(declare-fun bm!61230 () Bool)

(assert (=> bm!61230 (= call!61235 (isEmpty!6205 (_1!6452 (get!3395 lt!348023))))))

(declare-fun b!967273 () Bool)

(declare-fun res!439713 () Bool)

(assert (=> b!967273 (=> (not res!439713) (not e!624005))))

(assert (=> b!967273 (= res!439713 (not call!61235))))

(declare-fun b!967274 () Bool)

(assert (=> b!967274 (= e!624002 e!624003)))

(declare-fun res!439719 () Bool)

(assert (=> b!967274 (=> res!439719 e!624003)))

(assert (=> b!967274 (= res!439719 call!61235)))

(assert (= (and d!286199 c!157708) b!967263))

(assert (= (and d!286199 (not c!157708)) b!967271))

(assert (= (and d!286199 c!157707) b!967262))

(assert (= (and d!286199 (not c!157707)) b!967270))

(assert (= (and b!967270 c!157706) b!967272))

(assert (= (and b!967270 (not c!157706)) b!967264))

(assert (= (and b!967264 (not res!439717)) b!967266))

(assert (= (and b!967266 res!439715) b!967273))

(assert (= (and b!967273 res!439713) b!967269))

(assert (= (and b!967269 res!439714) b!967261))

(assert (= (and b!967266 (not res!439718)) b!967267))

(assert (= (and b!967267 res!439716) b!967274))

(assert (= (and b!967274 (not res!439719)) b!967268))

(assert (= (and b!967268 (not res!439720)) b!967265))

(assert (= (or b!967262 b!967273 b!967274) bm!61230))

(declare-fun m!1173099 () Bool)

(assert (=> b!967269 m!1173099))

(assert (=> b!967269 m!1173099))

(declare-fun m!1173101 () Bool)

(assert (=> b!967269 m!1173101))

(assert (=> b!967263 m!1172227))

(assert (=> b!967268 m!1173099))

(assert (=> b!967268 m!1173099))

(assert (=> b!967268 m!1173101))

(declare-fun m!1173103 () Bool)

(assert (=> b!967261 m!1173103))

(assert (=> b!967271 m!1173103))

(assert (=> b!967271 m!1173103))

(declare-fun m!1173105 () Bool)

(assert (=> b!967271 m!1173105))

(assert (=> b!967271 m!1173099))

(assert (=> b!967271 m!1173105))

(assert (=> b!967271 m!1173099))

(declare-fun m!1173107 () Bool)

(assert (=> b!967271 m!1173107))

(assert (=> b!967265 m!1173103))

(declare-fun m!1173109 () Bool)

(assert (=> d!286199 m!1173109))

(assert (=> d!286199 m!1172235))

(assert (=> bm!61230 m!1173109))

(assert (=> b!966230 d!286199))

(assert (=> b!966230 d!286195))

(declare-fun b!967275 () Bool)

(declare-fun e!624010 () List!9917)

(assert (=> b!967275 (= e!624010 (_2!6452 (get!3395 lt!348001)))))

(declare-fun b!967278 () Bool)

(declare-fun e!624009 () Bool)

(declare-fun lt!348108 () List!9917)

(assert (=> b!967278 (= e!624009 (or (not (= (_2!6452 (get!3395 lt!348001)) Nil!9901)) (= lt!348108 (_1!6452 (get!3395 lt!348001)))))))

(declare-fun b!967276 () Bool)

(assert (=> b!967276 (= e!624010 (Cons!9901 (h!15302 (_1!6452 (get!3395 lt!348001))) (++!2675 (t!100963 (_1!6452 (get!3395 lt!348001))) (_2!6452 (get!3395 lt!348001)))))))

(declare-fun b!967277 () Bool)

(declare-fun res!439722 () Bool)

(assert (=> b!967277 (=> (not res!439722) (not e!624009))))

(assert (=> b!967277 (= res!439722 (= (size!7937 lt!348108) (+ (size!7937 (_1!6452 (get!3395 lt!348001))) (size!7937 (_2!6452 (get!3395 lt!348001))))))))

(declare-fun d!286201 () Bool)

(assert (=> d!286201 e!624009))

(declare-fun res!439721 () Bool)

(assert (=> d!286201 (=> (not res!439721) (not e!624009))))

(assert (=> d!286201 (= res!439721 (= (content!1411 lt!348108) ((_ map or) (content!1411 (_1!6452 (get!3395 lt!348001))) (content!1411 (_2!6452 (get!3395 lt!348001))))))))

(assert (=> d!286201 (= lt!348108 e!624010)))

(declare-fun c!157709 () Bool)

(assert (=> d!286201 (= c!157709 ((_ is Nil!9901) (_1!6452 (get!3395 lt!348001))))))

(assert (=> d!286201 (= (++!2675 (_1!6452 (get!3395 lt!348001)) (_2!6452 (get!3395 lt!348001))) lt!348108)))

(assert (= (and d!286201 c!157709) b!967275))

(assert (= (and d!286201 (not c!157709)) b!967276))

(assert (= (and d!286201 res!439721) b!967277))

(assert (= (and b!967277 res!439722) b!967278))

(declare-fun m!1173111 () Bool)

(assert (=> b!967276 m!1173111))

(declare-fun m!1173113 () Bool)

(assert (=> b!967277 m!1173113))

(declare-fun m!1173115 () Bool)

(assert (=> b!967277 m!1173115))

(declare-fun m!1173117 () Bool)

(assert (=> b!967277 m!1173117))

(declare-fun m!1173119 () Bool)

(assert (=> d!286201 m!1173119))

(declare-fun m!1173121 () Bool)

(assert (=> d!286201 m!1173121))

(declare-fun m!1173123 () Bool)

(assert (=> d!286201 m!1173123))

(assert (=> b!966145 d!286201))

(assert (=> b!966145 d!286155))

(declare-fun bm!61231 () Bool)

(declare-fun call!61236 () Bool)

(declare-fun call!61238 () Bool)

(assert (=> bm!61231 (= call!61236 call!61238)))

(declare-fun b!967279 () Bool)

(declare-fun e!624015 () Bool)

(declare-fun e!624012 () Bool)

(assert (=> b!967279 (= e!624015 e!624012)))

(declare-fun c!157710 () Bool)

(assert (=> b!967279 (= c!157710 ((_ is Union!2687) (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))

(declare-fun b!967280 () Bool)

(declare-fun res!439724 () Bool)

(declare-fun e!624014 () Bool)

(assert (=> b!967280 (=> res!439724 e!624014)))

(assert (=> b!967280 (= res!439724 (not ((_ is Concat!4520) (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766)))))))

(assert (=> b!967280 (= e!624012 e!624014)))

(declare-fun call!61237 () Bool)

(declare-fun bm!61232 () Bool)

(assert (=> bm!61232 (= call!61237 (validRegex!1156 (ite c!157710 (regOne!5887 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))) (regOne!5886 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))))

(declare-fun c!157711 () Bool)

(declare-fun bm!61233 () Bool)

(assert (=> bm!61233 (= call!61238 (validRegex!1156 (ite c!157711 (reg!3016 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))) (ite c!157710 (regTwo!5887 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))) (regTwo!5886 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766)))))))))

(declare-fun b!967282 () Bool)

(declare-fun res!439725 () Bool)

(declare-fun e!624017 () Bool)

(assert (=> b!967282 (=> (not res!439725) (not e!624017))))

(assert (=> b!967282 (= res!439725 call!61237)))

(assert (=> b!967282 (= e!624012 e!624017)))

(declare-fun b!967283 () Bool)

(declare-fun e!624016 () Bool)

(assert (=> b!967283 (= e!624016 call!61238)))

(declare-fun b!967284 () Bool)

(declare-fun e!624011 () Bool)

(assert (=> b!967284 (= e!624011 call!61236)))

(declare-fun b!967285 () Bool)

(assert (=> b!967285 (= e!624015 e!624016)))

(declare-fun res!439723 () Bool)

(assert (=> b!967285 (= res!439723 (not (nullable!815 (reg!3016 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))))

(assert (=> b!967285 (=> (not res!439723) (not e!624016))))

(declare-fun b!967286 () Bool)

(assert (=> b!967286 (= e!624014 e!624011)))

(declare-fun res!439727 () Bool)

(assert (=> b!967286 (=> (not res!439727) (not e!624011))))

(assert (=> b!967286 (= res!439727 call!61237)))

(declare-fun b!967287 () Bool)

(declare-fun e!624013 () Bool)

(assert (=> b!967287 (= e!624013 e!624015)))

(assert (=> b!967287 (= c!157711 ((_ is Star!2687) (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))

(declare-fun d!286203 () Bool)

(declare-fun res!439726 () Bool)

(assert (=> d!286203 (=> res!439726 e!624013)))

(assert (=> d!286203 (= res!439726 ((_ is ElementMatch!2687) (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))))))

(assert (=> d!286203 (= (validRegex!1156 (ite c!157453 (regOne!5887 r!15766) (regOne!5886 r!15766))) e!624013)))

(declare-fun b!967281 () Bool)

(assert (=> b!967281 (= e!624017 call!61236)))

(assert (= (and d!286203 (not res!439726)) b!967287))

(assert (= (and b!967287 c!157711) b!967285))

(assert (= (and b!967287 (not c!157711)) b!967279))

(assert (= (and b!967285 res!439723) b!967283))

(assert (= (and b!967279 c!157710) b!967282))

(assert (= (and b!967279 (not c!157710)) b!967280))

(assert (= (and b!967282 res!439725) b!967281))

(assert (= (and b!967280 (not res!439724)) b!967286))

(assert (= (and b!967286 res!439727) b!967284))

(assert (= (or b!967281 b!967284) bm!61231))

(assert (= (or b!967282 b!967286) bm!61232))

(assert (= (or b!967283 bm!61231) bm!61233))

(declare-fun m!1173125 () Bool)

(assert (=> bm!61232 m!1173125))

(declare-fun m!1173127 () Bool)

(assert (=> bm!61233 m!1173127))

(declare-fun m!1173129 () Bool)

(assert (=> b!967285 m!1173129))

(assert (=> bm!61080 d!286203))

(declare-fun d!286205 () Bool)

(assert (=> d!286205 (= (isEmpty!6207 (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566)) (not ((_ is Some!2267) (findConcatSeparation!374 (reg!3016 r!15766) lt!347931 Nil!9901 s!10566 s!10566))))))

(assert (=> d!285851 d!286205))

(assert (=> b!966285 d!286101))

(assert (=> b!966285 d!286103))

(assert (=> b!965995 d!286091))

(assert (=> b!965995 d!286077))

(declare-fun b!967288 () Bool)

(declare-fun e!624021 () Bool)

(assert (=> b!967288 (= e!624021 (= (head!1776 (_2!6452 (get!3395 lt!348001))) (c!157310 lt!347923)))))

(declare-fun b!967289 () Bool)

(declare-fun e!624022 () Bool)

(declare-fun lt!348109 () Bool)

(declare-fun call!61239 () Bool)

(assert (=> b!967289 (= e!624022 (= lt!348109 call!61239))))

(declare-fun b!967290 () Bool)

(declare-fun e!624024 () Bool)

(assert (=> b!967290 (= e!624024 (nullable!815 lt!347923))))

(declare-fun b!967291 () Bool)

(declare-fun res!439732 () Bool)

(declare-fun e!624020 () Bool)

(assert (=> b!967291 (=> res!439732 e!624020)))

(assert (=> b!967291 (= res!439732 (not ((_ is ElementMatch!2687) lt!347923)))))

(declare-fun e!624023 () Bool)

(assert (=> b!967291 (= e!624023 e!624020)))

(declare-fun b!967292 () Bool)

(declare-fun e!624019 () Bool)

(assert (=> b!967292 (= e!624019 (not (= (head!1776 (_2!6452 (get!3395 lt!348001))) (c!157310 lt!347923))))))

(declare-fun b!967293 () Bool)

(declare-fun res!439733 () Bool)

(assert (=> b!967293 (=> res!439733 e!624020)))

(assert (=> b!967293 (= res!439733 e!624021)))

(declare-fun res!439730 () Bool)

(assert (=> b!967293 (=> (not res!439730) (not e!624021))))

(assert (=> b!967293 (= res!439730 lt!348109)))

(declare-fun b!967294 () Bool)

(declare-fun e!624018 () Bool)

(assert (=> b!967294 (= e!624020 e!624018)))

(declare-fun res!439731 () Bool)

(assert (=> b!967294 (=> (not res!439731) (not e!624018))))

(assert (=> b!967294 (= res!439731 (not lt!348109))))

(declare-fun b!967295 () Bool)

(declare-fun res!439735 () Bool)

(assert (=> b!967295 (=> res!439735 e!624019)))

(assert (=> b!967295 (= res!439735 (not (isEmpty!6205 (tail!1338 (_2!6452 (get!3395 lt!348001))))))))

(declare-fun b!967296 () Bool)

(declare-fun res!439729 () Bool)

(assert (=> b!967296 (=> (not res!439729) (not e!624021))))

(assert (=> b!967296 (= res!439729 (isEmpty!6205 (tail!1338 (_2!6452 (get!3395 lt!348001)))))))

(declare-fun d!286207 () Bool)

(assert (=> d!286207 e!624022))

(declare-fun c!157713 () Bool)

(assert (=> d!286207 (= c!157713 ((_ is EmptyExpr!2687) lt!347923))))

(assert (=> d!286207 (= lt!348109 e!624024)))

(declare-fun c!157714 () Bool)

(assert (=> d!286207 (= c!157714 (isEmpty!6205 (_2!6452 (get!3395 lt!348001))))))

(assert (=> d!286207 (validRegex!1156 lt!347923)))

(assert (=> d!286207 (= (matchR!1225 lt!347923 (_2!6452 (get!3395 lt!348001))) lt!348109)))

(declare-fun b!967297 () Bool)

(assert (=> b!967297 (= e!624022 e!624023)))

(declare-fun c!157712 () Bool)

(assert (=> b!967297 (= c!157712 ((_ is EmptyLang!2687) lt!347923))))

(declare-fun b!967298 () Bool)

(assert (=> b!967298 (= e!624024 (matchR!1225 (derivativeStep!623 lt!347923 (head!1776 (_2!6452 (get!3395 lt!348001)))) (tail!1338 (_2!6452 (get!3395 lt!348001)))))))

(declare-fun b!967299 () Bool)

(assert (=> b!967299 (= e!624023 (not lt!348109))))

(declare-fun bm!61234 () Bool)

(assert (=> bm!61234 (= call!61239 (isEmpty!6205 (_2!6452 (get!3395 lt!348001))))))

(declare-fun b!967300 () Bool)

(declare-fun res!439728 () Bool)

(assert (=> b!967300 (=> (not res!439728) (not e!624021))))

(assert (=> b!967300 (= res!439728 (not call!61239))))

(declare-fun b!967301 () Bool)

(assert (=> b!967301 (= e!624018 e!624019)))

(declare-fun res!439734 () Bool)

(assert (=> b!967301 (=> res!439734 e!624019)))

(assert (=> b!967301 (= res!439734 call!61239)))

(assert (= (and d!286207 c!157714) b!967290))

(assert (= (and d!286207 (not c!157714)) b!967298))

(assert (= (and d!286207 c!157713) b!967289))

(assert (= (and d!286207 (not c!157713)) b!967297))

(assert (= (and b!967297 c!157712) b!967299))

(assert (= (and b!967297 (not c!157712)) b!967291))

(assert (= (and b!967291 (not res!439732)) b!967293))

(assert (= (and b!967293 res!439730) b!967300))

(assert (= (and b!967300 res!439728) b!967296))

(assert (= (and b!967296 res!439729) b!967288))

(assert (= (and b!967293 (not res!439733)) b!967294))

(assert (= (and b!967294 res!439731) b!967301))

(assert (= (and b!967301 (not res!439734)) b!967295))

(assert (= (and b!967295 (not res!439735)) b!967292))

(assert (= (or b!967289 b!967300 b!967301) bm!61234))

(declare-fun m!1173131 () Bool)

(assert (=> b!967296 m!1173131))

(assert (=> b!967296 m!1173131))

(declare-fun m!1173133 () Bool)

(assert (=> b!967296 m!1173133))

(assert (=> b!967290 m!1172155))

(assert (=> b!967295 m!1173131))

(assert (=> b!967295 m!1173131))

(assert (=> b!967295 m!1173133))

(declare-fun m!1173135 () Bool)

(assert (=> b!967288 m!1173135))

(assert (=> b!967298 m!1173135))

(assert (=> b!967298 m!1173135))

(declare-fun m!1173137 () Bool)

(assert (=> b!967298 m!1173137))

(assert (=> b!967298 m!1173131))

(assert (=> b!967298 m!1173137))

(assert (=> b!967298 m!1173131))

(declare-fun m!1173139 () Bool)

(assert (=> b!967298 m!1173139))

(assert (=> b!967292 m!1173135))

(declare-fun m!1173141 () Bool)

(assert (=> d!286207 m!1173141))

(assert (=> d!286207 m!1172165))

(assert (=> bm!61234 m!1173141))

(assert (=> b!966143 d!286207))

(assert (=> b!966143 d!286155))

(assert (=> b!966281 d!286123))

(assert (=> bm!61053 d!286115))

(assert (=> bm!61054 d!285815))

(declare-fun bs!242007 () Bool)

(declare-fun b!967310 () Bool)

(assert (= bs!242007 (and b!967310 d!285831)))

(declare-fun lambda!34069 () Int)

(assert (=> bs!242007 (= (and (= (reg!3016 (regOne!5887 r!15766)) lt!347936) (= (regOne!5887 r!15766) (Star!2687 lt!347936))) (= lambda!34069 lambda!34027))))

(assert (=> bs!242007 (not (= lambda!34069 lambda!34026))))

(declare-fun bs!242008 () Bool)

(assert (= bs!242008 (and b!967310 b!967194)))

(assert (=> bs!242008 (not (= lambda!34069 lambda!34068))))

(declare-fun bs!242009 () Bool)

(assert (= bs!242009 (and b!967310 d!286111)))

(assert (=> bs!242009 (not (= lambda!34069 lambda!34064))))

(declare-fun bs!242010 () Bool)

(assert (= bs!242010 (and b!967310 d!285843)))

(assert (=> bs!242010 (not (= lambda!34069 lambda!34028))))

(declare-fun bs!242011 () Bool)

(assert (= bs!242011 (and b!967310 b!967093)))

(assert (=> bs!242011 (not (= lambda!34069 lambda!34066))))

(declare-fun bs!242012 () Bool)

(assert (= bs!242012 (and b!967310 b!965678)))

(assert (=> bs!242012 (= (and (= (reg!3016 (regOne!5887 r!15766)) lt!347936) (= (regOne!5887 r!15766) lt!347923)) (= lambda!34069 lambda!33990))))

(declare-fun bs!242013 () Bool)

(assert (= bs!242013 (and b!967310 d!286099)))

(assert (=> bs!242013 (not (= lambda!34069 lambda!34063))))

(declare-fun bs!242014 () Bool)

(assert (= bs!242014 (and b!967310 b!966983)))

(assert (=> bs!242014 (not (= lambda!34069 lambda!34058))))

(declare-fun bs!242015 () Bool)

(assert (= bs!242015 (and b!967310 b!966147)))

(assert (=> bs!242015 (not (= lambda!34069 lambda!34018))))

(declare-fun bs!242016 () Bool)

(assert (= bs!242016 (and b!967310 b!966155)))

(assert (=> bs!242016 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 lt!347923)) (= (regOne!5887 r!15766) lt!347923)) (= lambda!34069 lambda!34017))))

(declare-fun bs!242017 () Bool)

(assert (= bs!242017 (and b!967310 b!967202)))

(assert (=> bs!242017 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 (regOne!5887 lt!347923))) (= (regOne!5887 r!15766) (regOne!5887 lt!347923))) (= lambda!34069 lambda!34067))))

(declare-fun bs!242018 () Bool)

(assert (= bs!242018 (and b!967310 b!965872)))

(assert (=> bs!242018 (not (= lambda!34069 lambda!34009))))

(assert (=> bs!242012 (not (= lambda!34069 lambda!33989))))

(declare-fun bs!242019 () Bool)

(assert (= bs!242019 (and b!967310 d!285853)))

(assert (=> bs!242019 (not (= lambda!34069 lambda!34030))))

(declare-fun bs!242020 () Bool)

(assert (= bs!242020 (and b!967310 b!965684)))

(assert (=> bs!242020 (not (= lambda!34069 lambda!33987))))

(declare-fun bs!242021 () Bool)

(assert (= bs!242021 (and b!967310 b!966991)))

(assert (=> bs!242021 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 (regTwo!5887 lt!347923))) (= (regOne!5887 r!15766) (regTwo!5887 lt!347923))) (= lambda!34069 lambda!34057))))

(declare-fun bs!242022 () Bool)

(assert (= bs!242022 (and b!967310 d!286055)))

(assert (=> bs!242022 (= (and (= (reg!3016 (regOne!5887 r!15766)) lt!347936) (= (regOne!5887 r!15766) (Star!2687 lt!347936))) (= lambda!34069 lambda!34056))))

(assert (=> bs!242022 (not (= lambda!34069 lambda!34055))))

(declare-fun bs!242023 () Bool)

(assert (= bs!242023 (and b!967310 b!965880)))

(assert (=> bs!242023 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 r!15766)) (= (regOne!5887 r!15766) r!15766)) (= lambda!34069 lambda!34006))))

(declare-fun bs!242024 () Bool)

(assert (= bs!242024 (and b!967310 d!286089)))

(assert (=> bs!242024 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 r!15766)) (= (regOne!5887 r!15766) (Star!2687 (reg!3016 r!15766)))) (= lambda!34069 lambda!34060))))

(assert (=> bs!242024 (not (= lambda!34069 lambda!34059))))

(assert (=> bs!242020 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 r!15766)) (= (regOne!5887 r!15766) lt!347931)) (= lambda!34069 lambda!33988))))

(assert (=> bs!242010 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 r!15766)) (= (regOne!5887 r!15766) (Star!2687 (reg!3016 r!15766)))) (= lambda!34069 lambda!34029))))

(declare-fun bs!242025 () Bool)

(assert (= bs!242025 (and b!967310 b!967101)))

(assert (=> bs!242025 (= (and (= (reg!3016 (regOne!5887 r!15766)) (reg!3016 (regTwo!5887 r!15766))) (= (regOne!5887 r!15766) (regTwo!5887 r!15766))) (= lambda!34069 lambda!34065))))

(declare-fun bs!242026 () Bool)

(assert (= bs!242026 (and b!967310 d!285827)))

(assert (=> bs!242026 (not (= lambda!34069 lambda!34021))))

(assert (=> b!967310 true))

(assert (=> b!967310 true))

(declare-fun bs!242027 () Bool)

(declare-fun b!967302 () Bool)

(assert (= bs!242027 (and b!967302 d!285831)))

(declare-fun lambda!34070 () Int)

(assert (=> bs!242027 (not (= lambda!34070 lambda!34027))))

(assert (=> bs!242027 (not (= lambda!34070 lambda!34026))))

(declare-fun bs!242028 () Bool)

(assert (= bs!242028 (and b!967302 b!967194)))

(assert (=> bs!242028 (= (and (= (regOne!5886 (regOne!5887 r!15766)) (regOne!5886 (regOne!5887 lt!347923))) (= (regTwo!5886 (regOne!5887 r!15766)) (regTwo!5886 (regOne!5887 lt!347923)))) (= lambda!34070 lambda!34068))))

(declare-fun bs!242029 () Bool)

(assert (= bs!242029 (and b!967302 d!286111)))

(assert (=> bs!242029 (not (= lambda!34070 lambda!34064))))

(declare-fun bs!242030 () Bool)

(assert (= bs!242030 (and b!967302 d!285843)))

(assert (=> bs!242030 (not (= lambda!34070 lambda!34028))))

(declare-fun bs!242031 () Bool)

(assert (= bs!242031 (and b!967302 b!967093)))

(assert (=> bs!242031 (= (and (= (regOne!5886 (regOne!5887 r!15766)) (regOne!5886 (regTwo!5887 r!15766))) (= (regTwo!5886 (regOne!5887 r!15766)) (regTwo!5886 (regTwo!5887 r!15766)))) (= lambda!34070 lambda!34066))))

(declare-fun bs!242032 () Bool)

(assert (= bs!242032 (and b!967302 b!965678)))

(assert (=> bs!242032 (not (= lambda!34070 lambda!33990))))

(declare-fun bs!242033 () Bool)

(assert (= bs!242033 (and b!967302 b!966983)))

(assert (=> bs!242033 (= (and (= (regOne!5886 (regOne!5887 r!15766)) (regOne!5886 (regTwo!5887 lt!347923))) (= (regTwo!5886 (regOne!5887 r!15766)) (regTwo!5886 (regTwo!5887 lt!347923)))) (= lambda!34070 lambda!34058))))

(declare-fun bs!242034 () Bool)

(assert (= bs!242034 (and b!967302 b!966147)))

(assert (=> bs!242034 (= (and (= (regOne!5886 (regOne!5887 r!15766)) (regOne!5886 lt!347923)) (= (regTwo!5886 (regOne!5887 r!15766)) (regTwo!5886 lt!347923))) (= lambda!34070 lambda!34018))))

(declare-fun bs!242035 () Bool)

(assert (= bs!242035 (and b!967302 b!966155)))

(assert (=> bs!242035 (not (= lambda!34070 lambda!34017))))

(declare-fun bs!242036 () Bool)

(assert (= bs!242036 (and b!967302 b!967202)))

(assert (=> bs!242036 (not (= lambda!34070 lambda!34067))))

(declare-fun bs!242037 () Bool)

(assert (= bs!242037 (and b!967302 b!965872)))

(assert (=> bs!242037 (= (and (= (regOne!5886 (regOne!5887 r!15766)) (regOne!5886 r!15766)) (= (regTwo!5886 (regOne!5887 r!15766)) (regTwo!5886 r!15766))) (= lambda!34070 lambda!34009))))

(assert (=> bs!242032 (not (= lambda!34070 lambda!33989))))

(declare-fun bs!242038 () Bool)

(assert (= bs!242038 (and b!967302 d!285853)))

(assert (=> bs!242038 (not (= lambda!34070 lambda!34030))))

(declare-fun bs!242039 () Bool)

(assert (= bs!242039 (and b!967302 b!965684)))

(assert (=> bs!242039 (not (= lambda!34070 lambda!33987))))

(declare-fun bs!242040 () Bool)

(assert (= bs!242040 (and b!967302 b!966991)))

(assert (=> bs!242040 (not (= lambda!34070 lambda!34057))))

(declare-fun bs!242041 () Bool)

(assert (= bs!242041 (and b!967302 d!286055)))

(assert (=> bs!242041 (not (= lambda!34070 lambda!34056))))

(declare-fun bs!242042 () Bool)

(assert (= bs!242042 (and b!967302 b!967310)))

(assert (=> bs!242042 (not (= lambda!34070 lambda!34069))))

(declare-fun bs!242043 () Bool)

(assert (= bs!242043 (and b!967302 d!286099)))

(assert (=> bs!242043 (not (= lambda!34070 lambda!34063))))

(assert (=> bs!242041 (not (= lambda!34070 lambda!34055))))

(declare-fun bs!242044 () Bool)

(assert (= bs!242044 (and b!967302 b!965880)))

(assert (=> bs!242044 (not (= lambda!34070 lambda!34006))))

(declare-fun bs!242045 () Bool)

(assert (= bs!242045 (and b!967302 d!286089)))

(assert (=> bs!242045 (not (= lambda!34070 lambda!34060))))

(assert (=> bs!242045 (not (= lambda!34070 lambda!34059))))

(assert (=> bs!242039 (not (= lambda!34070 lambda!33988))))

(assert (=> bs!242030 (not (= lambda!34070 lambda!34029))))

(declare-fun bs!242046 () Bool)

(assert (= bs!242046 (and b!967302 b!967101)))

(assert (=> bs!242046 (not (= lambda!34070 lambda!34065))))

(declare-fun bs!242047 () Bool)

(assert (= bs!242047 (and b!967302 d!285827)))

(assert (=> bs!242047 (not (= lambda!34070 lambda!34021))))

(assert (=> b!967302 true))

(assert (=> b!967302 true))

(declare-fun bm!61235 () Bool)

(declare-fun call!61240 () Bool)

(assert (=> bm!61235 (= call!61240 (isEmpty!6205 s!10566))))

(declare-fun b!967303 () Bool)

(declare-fun c!157715 () Bool)

(assert (=> b!967303 (= c!157715 ((_ is ElementMatch!2687) (regOne!5887 r!15766)))))

(declare-fun e!624025 () Bool)

(declare-fun e!624026 () Bool)

(assert (=> b!967303 (= e!624025 e!624026)))

(declare-fun b!967304 () Bool)

(assert (=> b!967304 (= e!624026 (= s!10566 (Cons!9901 (c!157310 (regOne!5887 r!15766)) Nil!9901)))))

(declare-fun b!967305 () Bool)

(declare-fun e!624030 () Bool)

(declare-fun e!624031 () Bool)

(assert (=> b!967305 (= e!624030 e!624031)))

(declare-fun c!157717 () Bool)

(assert (=> b!967305 (= c!157717 ((_ is Star!2687) (regOne!5887 r!15766)))))

(declare-fun b!967306 () Bool)

(declare-fun e!624028 () Bool)

(assert (=> b!967306 (= e!624028 call!61240)))

(declare-fun b!967307 () Bool)

(assert (=> b!967307 (= e!624028 e!624025)))

(declare-fun res!439738 () Bool)

(assert (=> b!967307 (= res!439738 (not ((_ is EmptyLang!2687) (regOne!5887 r!15766))))))

(assert (=> b!967307 (=> (not res!439738) (not e!624025))))

(declare-fun b!967308 () Bool)

(declare-fun c!157718 () Bool)

(assert (=> b!967308 (= c!157718 ((_ is Union!2687) (regOne!5887 r!15766)))))

(assert (=> b!967308 (= e!624026 e!624030)))

(declare-fun b!967309 () Bool)

(declare-fun res!439737 () Bool)

(declare-fun e!624027 () Bool)

(assert (=> b!967309 (=> res!439737 e!624027)))

(assert (=> b!967309 (= res!439737 call!61240)))

(assert (=> b!967309 (= e!624031 e!624027)))

(declare-fun d!286209 () Bool)

(declare-fun c!157716 () Bool)

(assert (=> d!286209 (= c!157716 ((_ is EmptyExpr!2687) (regOne!5887 r!15766)))))

(assert (=> d!286209 (= (matchRSpec!488 (regOne!5887 r!15766) s!10566) e!624028)))

(declare-fun call!61241 () Bool)

(assert (=> b!967302 (= e!624031 call!61241)))

(assert (=> b!967310 (= e!624027 call!61241)))

(declare-fun bm!61236 () Bool)

(assert (=> bm!61236 (= call!61241 (Exists!430 (ite c!157717 lambda!34069 lambda!34070)))))

(declare-fun b!967311 () Bool)

(declare-fun e!624029 () Bool)

(assert (=> b!967311 (= e!624030 e!624029)))

(declare-fun res!439736 () Bool)

(assert (=> b!967311 (= res!439736 (matchRSpec!488 (regOne!5887 (regOne!5887 r!15766)) s!10566))))

(assert (=> b!967311 (=> res!439736 e!624029)))

(declare-fun b!967312 () Bool)

(assert (=> b!967312 (= e!624029 (matchRSpec!488 (regTwo!5887 (regOne!5887 r!15766)) s!10566))))

(assert (= (and d!286209 c!157716) b!967306))

(assert (= (and d!286209 (not c!157716)) b!967307))

(assert (= (and b!967307 res!439738) b!967303))

(assert (= (and b!967303 c!157715) b!967304))

(assert (= (and b!967303 (not c!157715)) b!967308))

(assert (= (and b!967308 c!157718) b!967311))

(assert (= (and b!967308 (not c!157718)) b!967305))

(assert (= (and b!967311 (not res!439736)) b!967312))

(assert (= (and b!967305 c!157717) b!967309))

(assert (= (and b!967305 (not c!157717)) b!967302))

(assert (= (and b!967309 (not res!439737)) b!967310))

(assert (= (or b!967310 b!967302) bm!61236))

(assert (= (or b!967306 b!967309) bm!61235))

(assert (=> bm!61235 m!1171903))

(declare-fun m!1173143 () Bool)

(assert (=> bm!61236 m!1173143))

(declare-fun m!1173145 () Bool)

(assert (=> b!967311 m!1173145))

(declare-fun m!1173147 () Bool)

(assert (=> b!967312 m!1173147))

(assert (=> b!965881 d!286209))

(assert (=> b!966228 d!286187))

(declare-fun b!967313 () Bool)

(declare-fun e!624032 () Bool)

(assert (=> b!967313 (= e!624032 tp_is_empty!5017)))

(declare-fun b!967314 () Bool)

(declare-fun tp!296503 () Bool)

(declare-fun tp!296504 () Bool)

(assert (=> b!967314 (= e!624032 (and tp!296503 tp!296504))))

(declare-fun b!967316 () Bool)

(declare-fun tp!296506 () Bool)

(declare-fun tp!296505 () Bool)

(assert (=> b!967316 (= e!624032 (and tp!296506 tp!296505))))

(assert (=> b!966308 (= tp!296354 e!624032)))

(declare-fun b!967315 () Bool)

(declare-fun tp!296507 () Bool)

(assert (=> b!967315 (= e!624032 tp!296507)))

(assert (= (and b!966308 ((_ is ElementMatch!2687) (regOne!5886 (regTwo!5887 r!15766)))) b!967313))

(assert (= (and b!966308 ((_ is Concat!4520) (regOne!5886 (regTwo!5887 r!15766)))) b!967314))

(assert (= (and b!966308 ((_ is Star!2687) (regOne!5886 (regTwo!5887 r!15766)))) b!967315))

(assert (= (and b!966308 ((_ is Union!2687) (regOne!5886 (regTwo!5887 r!15766)))) b!967316))

(declare-fun b!967317 () Bool)

(declare-fun e!624033 () Bool)

(assert (=> b!967317 (= e!624033 tp_is_empty!5017)))

(declare-fun b!967318 () Bool)

(declare-fun tp!296508 () Bool)

(declare-fun tp!296509 () Bool)

(assert (=> b!967318 (= e!624033 (and tp!296508 tp!296509))))

(declare-fun b!967320 () Bool)

(declare-fun tp!296511 () Bool)

(declare-fun tp!296510 () Bool)

(assert (=> b!967320 (= e!624033 (and tp!296511 tp!296510))))

(assert (=> b!966308 (= tp!296355 e!624033)))

(declare-fun b!967319 () Bool)

(declare-fun tp!296512 () Bool)

(assert (=> b!967319 (= e!624033 tp!296512)))

(assert (= (and b!966308 ((_ is ElementMatch!2687) (regTwo!5886 (regTwo!5887 r!15766)))) b!967317))

(assert (= (and b!966308 ((_ is Concat!4520) (regTwo!5886 (regTwo!5887 r!15766)))) b!967318))

(assert (= (and b!966308 ((_ is Star!2687) (regTwo!5886 (regTwo!5887 r!15766)))) b!967319))

(assert (= (and b!966308 ((_ is Union!2687) (regTwo!5886 (regTwo!5887 r!15766)))) b!967320))

(declare-fun b!967321 () Bool)

(declare-fun e!624034 () Bool)

(declare-fun tp!296513 () Bool)

(assert (=> b!967321 (= e!624034 (and tp_is_empty!5017 tp!296513))))

(assert (=> b!966315 (= tp!296361 e!624034)))

(assert (= (and b!966315 ((_ is Cons!9901) (t!100963 (t!100963 s!10566)))) b!967321))

(declare-fun b!967322 () Bool)

(declare-fun e!624035 () Bool)

(assert (=> b!967322 (= e!624035 tp_is_empty!5017)))

(declare-fun b!967323 () Bool)

(declare-fun tp!296514 () Bool)

(declare-fun tp!296515 () Bool)

(assert (=> b!967323 (= e!624035 (and tp!296514 tp!296515))))

(declare-fun b!967325 () Bool)

(declare-fun tp!296517 () Bool)

(declare-fun tp!296516 () Bool)

(assert (=> b!967325 (= e!624035 (and tp!296517 tp!296516))))

(assert (=> b!966322 (= tp!296371 e!624035)))

(declare-fun b!967324 () Bool)

(declare-fun tp!296518 () Bool)

(assert (=> b!967324 (= e!624035 tp!296518)))

(assert (= (and b!966322 ((_ is ElementMatch!2687) (reg!3016 (regTwo!5886 r!15766)))) b!967322))

(assert (= (and b!966322 ((_ is Concat!4520) (reg!3016 (regTwo!5886 r!15766)))) b!967323))

(assert (= (and b!966322 ((_ is Star!2687) (reg!3016 (regTwo!5886 r!15766)))) b!967324))

(assert (= (and b!966322 ((_ is Union!2687) (reg!3016 (regTwo!5886 r!15766)))) b!967325))

(declare-fun b!967326 () Bool)

(declare-fun e!624036 () Bool)

(assert (=> b!967326 (= e!624036 tp_is_empty!5017)))

(declare-fun b!967327 () Bool)

(declare-fun tp!296519 () Bool)

(declare-fun tp!296520 () Bool)

(assert (=> b!967327 (= e!624036 (and tp!296519 tp!296520))))

(declare-fun b!967329 () Bool)

(declare-fun tp!296522 () Bool)

(declare-fun tp!296521 () Bool)

(assert (=> b!967329 (= e!624036 (and tp!296522 tp!296521))))

(assert (=> b!966327 (= tp!296375 e!624036)))

(declare-fun b!967328 () Bool)

(declare-fun tp!296523 () Bool)

(assert (=> b!967328 (= e!624036 tp!296523)))

(assert (= (and b!966327 ((_ is ElementMatch!2687) (regOne!5887 (reg!3016 r!15766)))) b!967326))

(assert (= (and b!966327 ((_ is Concat!4520) (regOne!5887 (reg!3016 r!15766)))) b!967327))

(assert (= (and b!966327 ((_ is Star!2687) (regOne!5887 (reg!3016 r!15766)))) b!967328))

(assert (= (and b!966327 ((_ is Union!2687) (regOne!5887 (reg!3016 r!15766)))) b!967329))

(declare-fun b!967330 () Bool)

(declare-fun e!624037 () Bool)

(assert (=> b!967330 (= e!624037 tp_is_empty!5017)))

(declare-fun b!967331 () Bool)

(declare-fun tp!296524 () Bool)

(declare-fun tp!296525 () Bool)

(assert (=> b!967331 (= e!624037 (and tp!296524 tp!296525))))

(declare-fun b!967333 () Bool)

(declare-fun tp!296527 () Bool)

(declare-fun tp!296526 () Bool)

(assert (=> b!967333 (= e!624037 (and tp!296527 tp!296526))))

(assert (=> b!966327 (= tp!296374 e!624037)))

(declare-fun b!967332 () Bool)

(declare-fun tp!296528 () Bool)

(assert (=> b!967332 (= e!624037 tp!296528)))

(assert (= (and b!966327 ((_ is ElementMatch!2687) (regTwo!5887 (reg!3016 r!15766)))) b!967330))

(assert (= (and b!966327 ((_ is Concat!4520) (regTwo!5887 (reg!3016 r!15766)))) b!967331))

(assert (= (and b!966327 ((_ is Star!2687) (regTwo!5887 (reg!3016 r!15766)))) b!967332))

(assert (= (and b!966327 ((_ is Union!2687) (regTwo!5887 (reg!3016 r!15766)))) b!967333))

(declare-fun b!967334 () Bool)

(declare-fun e!624038 () Bool)

(assert (=> b!967334 (= e!624038 tp_is_empty!5017)))

(declare-fun b!967335 () Bool)

(declare-fun tp!296529 () Bool)

(declare-fun tp!296530 () Bool)

(assert (=> b!967335 (= e!624038 (and tp!296529 tp!296530))))

(declare-fun b!967337 () Bool)

(declare-fun tp!296532 () Bool)

(declare-fun tp!296531 () Bool)

(assert (=> b!967337 (= e!624038 (and tp!296532 tp!296531))))

(assert (=> b!966326 (= tp!296376 e!624038)))

(declare-fun b!967336 () Bool)

(declare-fun tp!296533 () Bool)

(assert (=> b!967336 (= e!624038 tp!296533)))

(assert (= (and b!966326 ((_ is ElementMatch!2687) (reg!3016 (reg!3016 r!15766)))) b!967334))

(assert (= (and b!966326 ((_ is Concat!4520) (reg!3016 (reg!3016 r!15766)))) b!967335))

(assert (= (and b!966326 ((_ is Star!2687) (reg!3016 (reg!3016 r!15766)))) b!967336))

(assert (= (and b!966326 ((_ is Union!2687) (reg!3016 (reg!3016 r!15766)))) b!967337))

(declare-fun b!967338 () Bool)

(declare-fun e!624039 () Bool)

(assert (=> b!967338 (= e!624039 tp_is_empty!5017)))

(declare-fun b!967339 () Bool)

(declare-fun tp!296534 () Bool)

(declare-fun tp!296535 () Bool)

(assert (=> b!967339 (= e!624039 (and tp!296534 tp!296535))))

(declare-fun b!967341 () Bool)

(declare-fun tp!296537 () Bool)

(declare-fun tp!296536 () Bool)

(assert (=> b!967341 (= e!624039 (and tp!296537 tp!296536))))

(assert (=> b!966317 (= tp!296362 e!624039)))

(declare-fun b!967340 () Bool)

(declare-fun tp!296538 () Bool)

(assert (=> b!967340 (= e!624039 tp!296538)))

(assert (= (and b!966317 ((_ is ElementMatch!2687) (regOne!5886 (regOne!5886 r!15766)))) b!967338))

(assert (= (and b!966317 ((_ is Concat!4520) (regOne!5886 (regOne!5886 r!15766)))) b!967339))

(assert (= (and b!966317 ((_ is Star!2687) (regOne!5886 (regOne!5886 r!15766)))) b!967340))

(assert (= (and b!966317 ((_ is Union!2687) (regOne!5886 (regOne!5886 r!15766)))) b!967341))

(declare-fun b!967342 () Bool)

(declare-fun e!624040 () Bool)

(assert (=> b!967342 (= e!624040 tp_is_empty!5017)))

(declare-fun b!967343 () Bool)

(declare-fun tp!296539 () Bool)

(declare-fun tp!296540 () Bool)

(assert (=> b!967343 (= e!624040 (and tp!296539 tp!296540))))

(declare-fun b!967345 () Bool)

(declare-fun tp!296542 () Bool)

(declare-fun tp!296541 () Bool)

(assert (=> b!967345 (= e!624040 (and tp!296542 tp!296541))))

(assert (=> b!966317 (= tp!296363 e!624040)))

(declare-fun b!967344 () Bool)

(declare-fun tp!296543 () Bool)

(assert (=> b!967344 (= e!624040 tp!296543)))

(assert (= (and b!966317 ((_ is ElementMatch!2687) (regTwo!5886 (regOne!5886 r!15766)))) b!967342))

(assert (= (and b!966317 ((_ is Concat!4520) (regTwo!5886 (regOne!5886 r!15766)))) b!967343))

(assert (= (and b!966317 ((_ is Star!2687) (regTwo!5886 (regOne!5886 r!15766)))) b!967344))

(assert (= (and b!966317 ((_ is Union!2687) (regTwo!5886 (regOne!5886 r!15766)))) b!967345))

(declare-fun b!967346 () Bool)

(declare-fun e!624041 () Bool)

(assert (=> b!967346 (= e!624041 tp_is_empty!5017)))

(declare-fun b!967347 () Bool)

(declare-fun tp!296544 () Bool)

(declare-fun tp!296545 () Bool)

(assert (=> b!967347 (= e!624041 (and tp!296544 tp!296545))))

(declare-fun b!967349 () Bool)

(declare-fun tp!296547 () Bool)

(declare-fun tp!296546 () Bool)

(assert (=> b!967349 (= e!624041 (and tp!296547 tp!296546))))

(assert (=> b!966319 (= tp!296365 e!624041)))

(declare-fun b!967348 () Bool)

(declare-fun tp!296548 () Bool)

(assert (=> b!967348 (= e!624041 tp!296548)))

(assert (= (and b!966319 ((_ is ElementMatch!2687) (regOne!5887 (regOne!5886 r!15766)))) b!967346))

(assert (= (and b!966319 ((_ is Concat!4520) (regOne!5887 (regOne!5886 r!15766)))) b!967347))

(assert (= (and b!966319 ((_ is Star!2687) (regOne!5887 (regOne!5886 r!15766)))) b!967348))

(assert (= (and b!966319 ((_ is Union!2687) (regOne!5887 (regOne!5886 r!15766)))) b!967349))

(declare-fun b!967350 () Bool)

(declare-fun e!624042 () Bool)

(assert (=> b!967350 (= e!624042 tp_is_empty!5017)))

(declare-fun b!967351 () Bool)

(declare-fun tp!296549 () Bool)

(declare-fun tp!296550 () Bool)

(assert (=> b!967351 (= e!624042 (and tp!296549 tp!296550))))

(declare-fun b!967353 () Bool)

(declare-fun tp!296552 () Bool)

(declare-fun tp!296551 () Bool)

(assert (=> b!967353 (= e!624042 (and tp!296552 tp!296551))))

(assert (=> b!966319 (= tp!296364 e!624042)))

(declare-fun b!967352 () Bool)

(declare-fun tp!296553 () Bool)

(assert (=> b!967352 (= e!624042 tp!296553)))

(assert (= (and b!966319 ((_ is ElementMatch!2687) (regTwo!5887 (regOne!5886 r!15766)))) b!967350))

(assert (= (and b!966319 ((_ is Concat!4520) (regTwo!5887 (regOne!5886 r!15766)))) b!967351))

(assert (= (and b!966319 ((_ is Star!2687) (regTwo!5887 (regOne!5886 r!15766)))) b!967352))

(assert (= (and b!966319 ((_ is Union!2687) (regTwo!5887 (regOne!5886 r!15766)))) b!967353))

(declare-fun b!967354 () Bool)

(declare-fun e!624043 () Bool)

(assert (=> b!967354 (= e!624043 tp_is_empty!5017)))

(declare-fun b!967355 () Bool)

(declare-fun tp!296554 () Bool)

(declare-fun tp!296555 () Bool)

(assert (=> b!967355 (= e!624043 (and tp!296554 tp!296555))))

(declare-fun b!967357 () Bool)

(declare-fun tp!296557 () Bool)

(declare-fun tp!296556 () Bool)

(assert (=> b!967357 (= e!624043 (and tp!296557 tp!296556))))

(assert (=> b!966318 (= tp!296366 e!624043)))

(declare-fun b!967356 () Bool)

(declare-fun tp!296558 () Bool)

(assert (=> b!967356 (= e!624043 tp!296558)))

(assert (= (and b!966318 ((_ is ElementMatch!2687) (reg!3016 (regOne!5886 r!15766)))) b!967354))

(assert (= (and b!966318 ((_ is Concat!4520) (reg!3016 (regOne!5886 r!15766)))) b!967355))

(assert (= (and b!966318 ((_ is Star!2687) (reg!3016 (regOne!5886 r!15766)))) b!967356))

(assert (= (and b!966318 ((_ is Union!2687) (reg!3016 (regOne!5886 r!15766)))) b!967357))

(declare-fun b!967358 () Bool)

(declare-fun e!624044 () Bool)

(assert (=> b!967358 (= e!624044 tp_is_empty!5017)))

(declare-fun b!967359 () Bool)

(declare-fun tp!296559 () Bool)

(declare-fun tp!296560 () Bool)

(assert (=> b!967359 (= e!624044 (and tp!296559 tp!296560))))

(declare-fun b!967361 () Bool)

(declare-fun tp!296562 () Bool)

(declare-fun tp!296561 () Bool)

(assert (=> b!967361 (= e!624044 (and tp!296562 tp!296561))))

(assert (=> b!966323 (= tp!296370 e!624044)))

(declare-fun b!967360 () Bool)

(declare-fun tp!296563 () Bool)

(assert (=> b!967360 (= e!624044 tp!296563)))

(assert (= (and b!966323 ((_ is ElementMatch!2687) (regOne!5887 (regTwo!5886 r!15766)))) b!967358))

(assert (= (and b!966323 ((_ is Concat!4520) (regOne!5887 (regTwo!5886 r!15766)))) b!967359))

(assert (= (and b!966323 ((_ is Star!2687) (regOne!5887 (regTwo!5886 r!15766)))) b!967360))

(assert (= (and b!966323 ((_ is Union!2687) (regOne!5887 (regTwo!5886 r!15766)))) b!967361))

(declare-fun b!967362 () Bool)

(declare-fun e!624045 () Bool)

(assert (=> b!967362 (= e!624045 tp_is_empty!5017)))

(declare-fun b!967363 () Bool)

(declare-fun tp!296564 () Bool)

(declare-fun tp!296565 () Bool)

(assert (=> b!967363 (= e!624045 (and tp!296564 tp!296565))))

(declare-fun b!967365 () Bool)

(declare-fun tp!296567 () Bool)

(declare-fun tp!296566 () Bool)

(assert (=> b!967365 (= e!624045 (and tp!296567 tp!296566))))

(assert (=> b!966323 (= tp!296369 e!624045)))

(declare-fun b!967364 () Bool)

(declare-fun tp!296568 () Bool)

(assert (=> b!967364 (= e!624045 tp!296568)))

(assert (= (and b!966323 ((_ is ElementMatch!2687) (regTwo!5887 (regTwo!5886 r!15766)))) b!967362))

(assert (= (and b!966323 ((_ is Concat!4520) (regTwo!5887 (regTwo!5886 r!15766)))) b!967363))

(assert (= (and b!966323 ((_ is Star!2687) (regTwo!5887 (regTwo!5886 r!15766)))) b!967364))

(assert (= (and b!966323 ((_ is Union!2687) (regTwo!5887 (regTwo!5886 r!15766)))) b!967365))

(declare-fun b!967366 () Bool)

(declare-fun e!624046 () Bool)

(assert (=> b!967366 (= e!624046 tp_is_empty!5017)))

(declare-fun b!967367 () Bool)

(declare-fun tp!296569 () Bool)

(declare-fun tp!296570 () Bool)

(assert (=> b!967367 (= e!624046 (and tp!296569 tp!296570))))

(declare-fun b!967369 () Bool)

(declare-fun tp!296572 () Bool)

(declare-fun tp!296571 () Bool)

(assert (=> b!967369 (= e!624046 (and tp!296572 tp!296571))))

(assert (=> b!966305 (= tp!296353 e!624046)))

(declare-fun b!967368 () Bool)

(declare-fun tp!296573 () Bool)

(assert (=> b!967368 (= e!624046 tp!296573)))

(assert (= (and b!966305 ((_ is ElementMatch!2687) (reg!3016 (regOne!5887 r!15766)))) b!967366))

(assert (= (and b!966305 ((_ is Concat!4520) (reg!3016 (regOne!5887 r!15766)))) b!967367))

(assert (= (and b!966305 ((_ is Star!2687) (reg!3016 (regOne!5887 r!15766)))) b!967368))

(assert (= (and b!966305 ((_ is Union!2687) (reg!3016 (regOne!5887 r!15766)))) b!967369))

(declare-fun b!967370 () Bool)

(declare-fun e!624047 () Bool)

(assert (=> b!967370 (= e!624047 tp_is_empty!5017)))

(declare-fun b!967371 () Bool)

(declare-fun tp!296574 () Bool)

(declare-fun tp!296575 () Bool)

(assert (=> b!967371 (= e!624047 (and tp!296574 tp!296575))))

(declare-fun b!967373 () Bool)

(declare-fun tp!296577 () Bool)

(declare-fun tp!296576 () Bool)

(assert (=> b!967373 (= e!624047 (and tp!296577 tp!296576))))

(assert (=> b!966304 (= tp!296349 e!624047)))

(declare-fun b!967372 () Bool)

(declare-fun tp!296578 () Bool)

(assert (=> b!967372 (= e!624047 tp!296578)))

(assert (= (and b!966304 ((_ is ElementMatch!2687) (regOne!5886 (regOne!5887 r!15766)))) b!967370))

(assert (= (and b!966304 ((_ is Concat!4520) (regOne!5886 (regOne!5887 r!15766)))) b!967371))

(assert (= (and b!966304 ((_ is Star!2687) (regOne!5886 (regOne!5887 r!15766)))) b!967372))

(assert (= (and b!966304 ((_ is Union!2687) (regOne!5886 (regOne!5887 r!15766)))) b!967373))

(declare-fun b!967374 () Bool)

(declare-fun e!624048 () Bool)

(assert (=> b!967374 (= e!624048 tp_is_empty!5017)))

(declare-fun b!967375 () Bool)

(declare-fun tp!296579 () Bool)

(declare-fun tp!296580 () Bool)

(assert (=> b!967375 (= e!624048 (and tp!296579 tp!296580))))

(declare-fun b!967377 () Bool)

(declare-fun tp!296582 () Bool)

(declare-fun tp!296581 () Bool)

(assert (=> b!967377 (= e!624048 (and tp!296582 tp!296581))))

(assert (=> b!966304 (= tp!296350 e!624048)))

(declare-fun b!967376 () Bool)

(declare-fun tp!296583 () Bool)

(assert (=> b!967376 (= e!624048 tp!296583)))

(assert (= (and b!966304 ((_ is ElementMatch!2687) (regTwo!5886 (regOne!5887 r!15766)))) b!967374))

(assert (= (and b!966304 ((_ is Concat!4520) (regTwo!5886 (regOne!5887 r!15766)))) b!967375))

(assert (= (and b!966304 ((_ is Star!2687) (regTwo!5886 (regOne!5887 r!15766)))) b!967376))

(assert (= (and b!966304 ((_ is Union!2687) (regTwo!5886 (regOne!5887 r!15766)))) b!967377))

(declare-fun b!967378 () Bool)

(declare-fun e!624049 () Bool)

(assert (=> b!967378 (= e!624049 tp_is_empty!5017)))

(declare-fun b!967379 () Bool)

(declare-fun tp!296584 () Bool)

(declare-fun tp!296585 () Bool)

(assert (=> b!967379 (= e!624049 (and tp!296584 tp!296585))))

(declare-fun b!967381 () Bool)

(declare-fun tp!296587 () Bool)

(declare-fun tp!296586 () Bool)

(assert (=> b!967381 (= e!624049 (and tp!296587 tp!296586))))

(assert (=> b!966309 (= tp!296358 e!624049)))

(declare-fun b!967380 () Bool)

(declare-fun tp!296588 () Bool)

(assert (=> b!967380 (= e!624049 tp!296588)))

(assert (= (and b!966309 ((_ is ElementMatch!2687) (reg!3016 (regTwo!5887 r!15766)))) b!967378))

(assert (= (and b!966309 ((_ is Concat!4520) (reg!3016 (regTwo!5887 r!15766)))) b!967379))

(assert (= (and b!966309 ((_ is Star!2687) (reg!3016 (regTwo!5887 r!15766)))) b!967380))

(assert (= (and b!966309 ((_ is Union!2687) (reg!3016 (regTwo!5887 r!15766)))) b!967381))

(declare-fun b!967382 () Bool)

(declare-fun e!624050 () Bool)

(assert (=> b!967382 (= e!624050 tp_is_empty!5017)))

(declare-fun b!967383 () Bool)

(declare-fun tp!296589 () Bool)

(declare-fun tp!296590 () Bool)

(assert (=> b!967383 (= e!624050 (and tp!296589 tp!296590))))

(declare-fun b!967385 () Bool)

(declare-fun tp!296592 () Bool)

(declare-fun tp!296591 () Bool)

(assert (=> b!967385 (= e!624050 (and tp!296592 tp!296591))))

(assert (=> b!966306 (= tp!296352 e!624050)))

(declare-fun b!967384 () Bool)

(declare-fun tp!296593 () Bool)

(assert (=> b!967384 (= e!624050 tp!296593)))

(assert (= (and b!966306 ((_ is ElementMatch!2687) (regOne!5887 (regOne!5887 r!15766)))) b!967382))

(assert (= (and b!966306 ((_ is Concat!4520) (regOne!5887 (regOne!5887 r!15766)))) b!967383))

(assert (= (and b!966306 ((_ is Star!2687) (regOne!5887 (regOne!5887 r!15766)))) b!967384))

(assert (= (and b!966306 ((_ is Union!2687) (regOne!5887 (regOne!5887 r!15766)))) b!967385))

(declare-fun b!967386 () Bool)

(declare-fun e!624051 () Bool)

(assert (=> b!967386 (= e!624051 tp_is_empty!5017)))

(declare-fun b!967387 () Bool)

(declare-fun tp!296594 () Bool)

(declare-fun tp!296595 () Bool)

(assert (=> b!967387 (= e!624051 (and tp!296594 tp!296595))))

(declare-fun b!967389 () Bool)

(declare-fun tp!296597 () Bool)

(declare-fun tp!296596 () Bool)

(assert (=> b!967389 (= e!624051 (and tp!296597 tp!296596))))

(assert (=> b!966306 (= tp!296351 e!624051)))

(declare-fun b!967388 () Bool)

(declare-fun tp!296598 () Bool)

(assert (=> b!967388 (= e!624051 tp!296598)))

(assert (= (and b!966306 ((_ is ElementMatch!2687) (regTwo!5887 (regOne!5887 r!15766)))) b!967386))

(assert (= (and b!966306 ((_ is Concat!4520) (regTwo!5887 (regOne!5887 r!15766)))) b!967387))

(assert (= (and b!966306 ((_ is Star!2687) (regTwo!5887 (regOne!5887 r!15766)))) b!967388))

(assert (= (and b!966306 ((_ is Union!2687) (regTwo!5887 (regOne!5887 r!15766)))) b!967389))

(declare-fun b!967390 () Bool)

(declare-fun e!624052 () Bool)

(assert (=> b!967390 (= e!624052 tp_is_empty!5017)))

(declare-fun b!967391 () Bool)

(declare-fun tp!296599 () Bool)

(declare-fun tp!296600 () Bool)

(assert (=> b!967391 (= e!624052 (and tp!296599 tp!296600))))

(declare-fun b!967393 () Bool)

(declare-fun tp!296602 () Bool)

(declare-fun tp!296601 () Bool)

(assert (=> b!967393 (= e!624052 (and tp!296602 tp!296601))))

(assert (=> b!966321 (= tp!296367 e!624052)))

(declare-fun b!967392 () Bool)

(declare-fun tp!296603 () Bool)

(assert (=> b!967392 (= e!624052 tp!296603)))

(assert (= (and b!966321 ((_ is ElementMatch!2687) (regOne!5886 (regTwo!5886 r!15766)))) b!967390))

(assert (= (and b!966321 ((_ is Concat!4520) (regOne!5886 (regTwo!5886 r!15766)))) b!967391))

(assert (= (and b!966321 ((_ is Star!2687) (regOne!5886 (regTwo!5886 r!15766)))) b!967392))

(assert (= (and b!966321 ((_ is Union!2687) (regOne!5886 (regTwo!5886 r!15766)))) b!967393))

(declare-fun b!967394 () Bool)

(declare-fun e!624053 () Bool)

(assert (=> b!967394 (= e!624053 tp_is_empty!5017)))

(declare-fun b!967395 () Bool)

(declare-fun tp!296604 () Bool)

(declare-fun tp!296605 () Bool)

(assert (=> b!967395 (= e!624053 (and tp!296604 tp!296605))))

(declare-fun b!967397 () Bool)

(declare-fun tp!296607 () Bool)

(declare-fun tp!296606 () Bool)

(assert (=> b!967397 (= e!624053 (and tp!296607 tp!296606))))

(assert (=> b!966321 (= tp!296368 e!624053)))

(declare-fun b!967396 () Bool)

(declare-fun tp!296608 () Bool)

(assert (=> b!967396 (= e!624053 tp!296608)))

(assert (= (and b!966321 ((_ is ElementMatch!2687) (regTwo!5886 (regTwo!5886 r!15766)))) b!967394))

(assert (= (and b!966321 ((_ is Concat!4520) (regTwo!5886 (regTwo!5886 r!15766)))) b!967395))

(assert (= (and b!966321 ((_ is Star!2687) (regTwo!5886 (regTwo!5886 r!15766)))) b!967396))

(assert (= (and b!966321 ((_ is Union!2687) (regTwo!5886 (regTwo!5886 r!15766)))) b!967397))

(declare-fun b!967398 () Bool)

(declare-fun e!624054 () Bool)

(assert (=> b!967398 (= e!624054 tp_is_empty!5017)))

(declare-fun b!967399 () Bool)

(declare-fun tp!296609 () Bool)

(declare-fun tp!296610 () Bool)

(assert (=> b!967399 (= e!624054 (and tp!296609 tp!296610))))

(declare-fun b!967401 () Bool)

(declare-fun tp!296612 () Bool)

(declare-fun tp!296611 () Bool)

(assert (=> b!967401 (= e!624054 (and tp!296612 tp!296611))))

(assert (=> b!966310 (= tp!296357 e!624054)))

(declare-fun b!967400 () Bool)

(declare-fun tp!296613 () Bool)

(assert (=> b!967400 (= e!624054 tp!296613)))

(assert (= (and b!966310 ((_ is ElementMatch!2687) (regOne!5887 (regTwo!5887 r!15766)))) b!967398))

(assert (= (and b!966310 ((_ is Concat!4520) (regOne!5887 (regTwo!5887 r!15766)))) b!967399))

(assert (= (and b!966310 ((_ is Star!2687) (regOne!5887 (regTwo!5887 r!15766)))) b!967400))

(assert (= (and b!966310 ((_ is Union!2687) (regOne!5887 (regTwo!5887 r!15766)))) b!967401))

(declare-fun b!967402 () Bool)

(declare-fun e!624055 () Bool)

(assert (=> b!967402 (= e!624055 tp_is_empty!5017)))

(declare-fun b!967403 () Bool)

(declare-fun tp!296614 () Bool)

(declare-fun tp!296615 () Bool)

(assert (=> b!967403 (= e!624055 (and tp!296614 tp!296615))))

(declare-fun b!967405 () Bool)

(declare-fun tp!296617 () Bool)

(declare-fun tp!296616 () Bool)

(assert (=> b!967405 (= e!624055 (and tp!296617 tp!296616))))

(assert (=> b!966310 (= tp!296356 e!624055)))

(declare-fun b!967404 () Bool)

(declare-fun tp!296618 () Bool)

(assert (=> b!967404 (= e!624055 tp!296618)))

(assert (= (and b!966310 ((_ is ElementMatch!2687) (regTwo!5887 (regTwo!5887 r!15766)))) b!967402))

(assert (= (and b!966310 ((_ is Concat!4520) (regTwo!5887 (regTwo!5887 r!15766)))) b!967403))

(assert (= (and b!966310 ((_ is Star!2687) (regTwo!5887 (regTwo!5887 r!15766)))) b!967404))

(assert (= (and b!966310 ((_ is Union!2687) (regTwo!5887 (regTwo!5887 r!15766)))) b!967405))

(declare-fun b!967406 () Bool)

(declare-fun e!624056 () Bool)

(assert (=> b!967406 (= e!624056 tp_is_empty!5017)))

(declare-fun b!967407 () Bool)

(declare-fun tp!296619 () Bool)

(declare-fun tp!296620 () Bool)

(assert (=> b!967407 (= e!624056 (and tp!296619 tp!296620))))

(declare-fun b!967409 () Bool)

(declare-fun tp!296622 () Bool)

(declare-fun tp!296621 () Bool)

(assert (=> b!967409 (= e!624056 (and tp!296622 tp!296621))))

(assert (=> b!966325 (= tp!296372 e!624056)))

(declare-fun b!967408 () Bool)

(declare-fun tp!296623 () Bool)

(assert (=> b!967408 (= e!624056 tp!296623)))

(assert (= (and b!966325 ((_ is ElementMatch!2687) (regOne!5886 (reg!3016 r!15766)))) b!967406))

(assert (= (and b!966325 ((_ is Concat!4520) (regOne!5886 (reg!3016 r!15766)))) b!967407))

(assert (= (and b!966325 ((_ is Star!2687) (regOne!5886 (reg!3016 r!15766)))) b!967408))

(assert (= (and b!966325 ((_ is Union!2687) (regOne!5886 (reg!3016 r!15766)))) b!967409))

(declare-fun b!967410 () Bool)

(declare-fun e!624057 () Bool)

(assert (=> b!967410 (= e!624057 tp_is_empty!5017)))

(declare-fun b!967411 () Bool)

(declare-fun tp!296624 () Bool)

(declare-fun tp!296625 () Bool)

(assert (=> b!967411 (= e!624057 (and tp!296624 tp!296625))))

(declare-fun b!967413 () Bool)

(declare-fun tp!296627 () Bool)

(declare-fun tp!296626 () Bool)

(assert (=> b!967413 (= e!624057 (and tp!296627 tp!296626))))

(assert (=> b!966325 (= tp!296373 e!624057)))

(declare-fun b!967412 () Bool)

(declare-fun tp!296628 () Bool)

(assert (=> b!967412 (= e!624057 tp!296628)))

(assert (= (and b!966325 ((_ is ElementMatch!2687) (regTwo!5886 (reg!3016 r!15766)))) b!967410))

(assert (= (and b!966325 ((_ is Concat!4520) (regTwo!5886 (reg!3016 r!15766)))) b!967411))

(assert (= (and b!966325 ((_ is Star!2687) (regTwo!5886 (reg!3016 r!15766)))) b!967412))

(assert (= (and b!966325 ((_ is Union!2687) (regTwo!5886 (reg!3016 r!15766)))) b!967413))

(check-sat (not b!967263) (not b!967063) (not bm!61221) (not b!967265) (not b!967209) (not b!967002) (not b!967077) (not d!286041) (not d!286153) (not bm!61206) (not b!967239) (not b!966848) (not b!966993) (not b!967343) (not d!286141) (not b!967339) (not bm!61208) (not d!286053) (not d!286085) (not bm!61235) (not b!966927) (not b!967207) (not b!967395) (not bm!61185) (not d!286131) (not b!967372) (not d!286075) (not bm!61218) (not d!286113) (not b!967061) (not b!967381) (not bm!61187) (not b!967337) (not d!286067) (not d!286187) (not b!967401) (not b!967351) (not b!967380) (not d!286109) (not b!967336) (not b!966850) (not b!967253) (not b!967298) (not b!966907) (not b!967355) (not b!966932) (not b!967066) (not b!967259) (not b!967103) (not b!967204) (not b!967088) (not b!967327) (not b!967065) (not b!967331) (not b!967392) (not d!286167) (not d!286069) (not b!967118) (not bm!61210) (not b!967335) (not b!967407) (not b!967177) (not b!966980) (not b!967412) (not d!286149) (not b!967276) (not d!286039) (not b!966909) (not b!967069) (not b!967213) (not d!286071) (not b!966992) (not bm!61207) (not b!967349) (not b!967361) (not b!966904) (not b!967268) (not b!967044) (not b!967384) (not d!286135) (not b!967388) (not b!967397) (not b!966747) (not bm!61204) (not bm!61167) (not b!967312) (not b!967012) (not b!967364) (not b!967258) (not bm!61162) (not b!967010) (not bm!61220) (not b!967169) (not bm!61233) (not d!286055) (not b!967233) (not d!286099) (not d!286081) (not b!967180) (not d!286147) (not b!967178) (not b!967285) (not b!967236) (not bm!61197) (not d!286063) (not b!967106) (not b!967341) (not b!966930) (not b!966940) (not b!966915) (not bm!61166) (not b!967006) (not b!967348) (not b!967404) (not b!967062) (not bm!61177) (not b!966938) (not b!967251) (not b!967316) (not d!286133) (not d!286051) (not d!286105) (not b!967379) (not b!967092) (not b!967215) (not b!967344) (not b!967108) (not b!967250) (not bm!61225) (not d!286171) (not b!967057) (not b!967311) (not b!967288) (not b!967172) (not b!967321) (not b!967403) (not d!286125) (not b!966996) (not d!286169) (not b!967391) (not b!967357) (not b!967352) (not b!967231) (not b!967111) (not b!967329) (not b!967295) (not bm!61183) (not b!967229) (not b!967371) (not b!967163) (not b!967247) (not b!967375) (not b!967102) (not b!967237) (not b!967122) (not b!967340) (not d!286201) (not d!286073) (not b!967243) (not b!967320) (not b!967009) (not b!967367) (not b!967271) (not b!967393) (not d!286111) (not bm!61182) (not d!286049) (not b!967139) (not b!967152) (not b!967004) (not b!967245) (not bm!61209) (not b!966917) (not bm!61198) (not b!967400) (not bm!61202) (not b!966937) (not b!967345) (not d!286197) (not bm!61184) (not d!286207) (not b!967059) (not bm!61230) (not d!286183) (not b!967112) (not d!286151) (not d!286185) (not b!967359) (not bm!61190) (not d!286097) (not d!286093) (not bm!61161) (not b!967261) (not b!967409) (not b!967363) (not bm!61216) (not b!966971) (not bm!61188) (not b!967074) (not bm!61212) (not bm!61234) (not b!966846) (not d!286193) (not b!967142) (not b!967373) (not b!967292) (not d!286145) (not bm!61181) (not bm!61191) (not d!286043) (not b!967046) (not b!967212) (not b!967323) (not b!967226) (not d!286089) (not bm!61227) (not b!967314) (not d!286189) (not b!966851) (not b!967387) (not bm!61163) (not b!967031) (not b!967333) (not b!967369) (not bm!61193) (not b!966748) (not d!286095) (not d!286175) (not b!967269) (not d!286037) (not d!286129) (not b!967191) tp_is_empty!5017 (not bm!61229) (not bm!61214) (not b!967328) (not b!967149) (not b!966847) (not b!967413) (not b!967120) (not b!967167) (not b!967104) (not b!967125) (not b!967075) (not b!967144) (not bm!61165) (not bm!61228) (not b!967356) (not b!967318) (not b!966844) (not b!967315) (not bm!61222) (not b!966934) (not b!967022) (not bm!61179) (not b!967150) (not b!967376) (not bm!61232) (not b!967408) (not bm!61236) (not b!967126) (not b!967405) (not b!967368) (not bm!61215) (not b!967332) (not d!286087) (not b!967360) (not b!967067) (not b!967128) (not b!967319) (not d!286199) (not b!967353) (not b!967114) (not b!967365) (not d!286143) (not b!967170) (not b!967324) (not b!967205) (not b!966995) (not b!967165) (not b!966911) (not b!967411) (not b!967377) (not b!967290) (not b!967203) (not b!967157) (not b!967385) (not b!967296) (not b!967325) (not bm!61192) (not bm!61223) (not b!966751) (not b!967389) (not b!966752) (not b!967071) (not b!967277) (not b!967347) (not b!966914) (not b!967146) (not b!967396) (not b!967383) (not b!967174) (not b!967399))
(check-sat)
