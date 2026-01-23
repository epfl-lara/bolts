; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286558 () Bool)

(assert start!286558)

(declare-fun b!2955792 () Bool)

(assert (=> b!2955792 true))

(assert (=> b!2955792 true))

(assert (=> b!2955792 true))

(declare-fun lambda!110066 () Int)

(declare-fun lambda!110065 () Int)

(assert (=> b!2955792 (not (= lambda!110066 lambda!110065))))

(assert (=> b!2955792 true))

(assert (=> b!2955792 true))

(assert (=> b!2955792 true))

(declare-fun b!2955780 () Bool)

(declare-fun res!1219522 () Bool)

(declare-fun e!1861137 () Bool)

(assert (=> b!2955780 (=> res!1219522 e!1861137)))

(declare-datatypes ((C!18518 0))(
  ( (C!18519 (val!11295 Int)) )
))
(declare-datatypes ((List!35031 0))(
  ( (Nil!34907) (Cons!34907 (h!40327 C!18518) (t!234096 List!35031)) )
))
(declare-fun s!11993 () List!35031)

(declare-fun isEmpty!19183 (List!35031) Bool)

(assert (=> b!2955780 (= res!1219522 (isEmpty!19183 s!11993))))

(declare-fun b!2955782 () Bool)

(declare-fun res!1219526 () Bool)

(declare-fun e!1861136 () Bool)

(assert (=> b!2955782 (=> res!1219526 e!1861136)))

(declare-datatypes ((Regex!9166 0))(
  ( (ElementMatch!9166 (c!484188 C!18518)) (Concat!14487 (regOne!18844 Regex!9166) (regTwo!18844 Regex!9166)) (EmptyExpr!9166) (Star!9166 (reg!9495 Regex!9166)) (EmptyLang!9166) (Union!9166 (regOne!18845 Regex!9166) (regTwo!18845 Regex!9166)) )
))
(declare-fun lt!1032956 () Regex!9166)

(declare-fun isEmptyExpr!369 (Regex!9166) Bool)

(assert (=> b!2955782 (= res!1219526 (isEmptyExpr!369 lt!1032956))))

(declare-fun b!2955783 () Bool)

(declare-fun e!1861140 () Bool)

(declare-fun r!17423 () Regex!9166)

(declare-fun validRegex!3899 (Regex!9166) Bool)

(assert (=> b!2955783 (= e!1861140 (validRegex!3899 (regTwo!18844 r!17423)))))

(declare-fun b!2955784 () Bool)

(declare-fun e!1861138 () Bool)

(declare-fun tp_is_empty!15895 () Bool)

(assert (=> b!2955784 (= e!1861138 tp_is_empty!15895)))

(declare-fun b!2955785 () Bool)

(declare-fun e!1861134 () Bool)

(declare-fun tp!943955 () Bool)

(assert (=> b!2955785 (= e!1861134 (and tp_is_empty!15895 tp!943955))))

(declare-fun b!2955786 () Bool)

(declare-fun res!1219528 () Bool)

(assert (=> b!2955786 (=> res!1219528 e!1861136)))

(declare-fun lt!1032959 () Regex!9166)

(assert (=> b!2955786 (= res!1219528 (isEmptyExpr!369 lt!1032959))))

(declare-fun b!2955787 () Bool)

(declare-fun e!1861135 () Bool)

(assert (=> b!2955787 (= e!1861136 e!1861135)))

(declare-fun res!1219527 () Bool)

(assert (=> b!2955787 (=> res!1219527 e!1861135)))

(declare-fun lt!1032963 () Regex!9166)

(declare-fun matchR!4048 (Regex!9166 List!35031) Bool)

(assert (=> b!2955787 (= res!1219527 (not (matchR!4048 lt!1032963 s!11993)))))

(assert (=> b!2955787 (= lt!1032963 (Concat!14487 lt!1032956 lt!1032959))))

(declare-fun b!2955788 () Bool)

(declare-fun res!1219521 () Bool)

(assert (=> b!2955788 (=> res!1219521 e!1861136)))

(declare-fun isEmptyLang!288 (Regex!9166) Bool)

(assert (=> b!2955788 (= res!1219521 (isEmptyLang!288 lt!1032959))))

(declare-fun b!2955789 () Bool)

(declare-fun tp!943958 () Bool)

(declare-fun tp!943954 () Bool)

(assert (=> b!2955789 (= e!1861138 (and tp!943958 tp!943954))))

(declare-fun b!2955790 () Bool)

(declare-fun tp!943956 () Bool)

(assert (=> b!2955790 (= e!1861138 tp!943956)))

(declare-fun b!2955791 () Bool)

(assert (=> b!2955791 (= e!1861137 e!1861136)))

(declare-fun res!1219529 () Bool)

(assert (=> b!2955791 (=> res!1219529 e!1861136)))

(assert (=> b!2955791 (= res!1219529 (isEmptyLang!288 lt!1032956))))

(declare-fun simplify!171 (Regex!9166) Regex!9166)

(assert (=> b!2955791 (= lt!1032959 (simplify!171 (regTwo!18844 r!17423)))))

(assert (=> b!2955791 (= lt!1032956 (simplify!171 (regOne!18844 r!17423)))))

(assert (=> b!2955792 (= e!1861135 e!1861140)))

(declare-fun res!1219523 () Bool)

(assert (=> b!2955792 (=> res!1219523 e!1861140)))

(declare-fun lt!1032960 () Bool)

(assert (=> b!2955792 (= res!1219523 (not lt!1032960))))

(declare-fun Exists!1498 (Int) Bool)

(assert (=> b!2955792 (= (Exists!1498 lambda!110065) (Exists!1498 lambda!110066))))

(declare-datatypes ((Unit!48711 0))(
  ( (Unit!48712) )
))
(declare-fun lt!1032958 () Unit!48711)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!519 (Regex!9166 Regex!9166 List!35031) Unit!48711)

(assert (=> b!2955792 (= lt!1032958 (lemmaExistCutMatchRandMatchRSpecEquivalent!519 lt!1032956 lt!1032959 s!11993))))

(assert (=> b!2955792 (= lt!1032960 (Exists!1498 lambda!110065))))

(declare-datatypes ((tuple2!33850 0))(
  ( (tuple2!33851 (_1!20057 List!35031) (_2!20057 List!35031)) )
))
(declare-datatypes ((Option!6657 0))(
  ( (None!6656) (Some!6656 (v!34790 tuple2!33850)) )
))
(declare-fun isDefined!5208 (Option!6657) Bool)

(declare-fun findConcatSeparation!1051 (Regex!9166 Regex!9166 List!35031 List!35031 List!35031) Option!6657)

(assert (=> b!2955792 (= lt!1032960 (isDefined!5208 (findConcatSeparation!1051 lt!1032956 lt!1032959 Nil!34907 s!11993 s!11993)))))

(declare-fun lt!1032962 () Unit!48711)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!829 (Regex!9166 Regex!9166 List!35031) Unit!48711)

(assert (=> b!2955792 (= lt!1032962 (lemmaFindConcatSeparationEquivalentToExists!829 lt!1032956 lt!1032959 s!11993))))

(declare-fun matchRSpec!1303 (Regex!9166 List!35031) Bool)

(assert (=> b!2955792 (matchRSpec!1303 lt!1032963 s!11993)))

(declare-fun lt!1032957 () Unit!48711)

(declare-fun mainMatchTheorem!1303 (Regex!9166 List!35031) Unit!48711)

(assert (=> b!2955792 (= lt!1032957 (mainMatchTheorem!1303 lt!1032963 s!11993))))

(declare-fun b!2955793 () Bool)

(declare-fun e!1861139 () Bool)

(assert (=> b!2955793 (= e!1861139 (not e!1861137))))

(declare-fun res!1219524 () Bool)

(assert (=> b!2955793 (=> res!1219524 e!1861137)))

(declare-fun lt!1032961 () Bool)

(assert (=> b!2955793 (= res!1219524 (or lt!1032961 (not (is-Concat!14487 r!17423))))))

(assert (=> b!2955793 (= lt!1032961 (matchRSpec!1303 r!17423 s!11993))))

(assert (=> b!2955793 (= lt!1032961 (matchR!4048 r!17423 s!11993))))

(declare-fun lt!1032964 () Unit!48711)

(assert (=> b!2955793 (= lt!1032964 (mainMatchTheorem!1303 r!17423 s!11993))))

(declare-fun b!2955781 () Bool)

(declare-fun tp!943959 () Bool)

(declare-fun tp!943957 () Bool)

(assert (=> b!2955781 (= e!1861138 (and tp!943959 tp!943957))))

(declare-fun res!1219525 () Bool)

(assert (=> start!286558 (=> (not res!1219525) (not e!1861139))))

(assert (=> start!286558 (= res!1219525 (validRegex!3899 r!17423))))

(assert (=> start!286558 e!1861139))

(assert (=> start!286558 e!1861138))

(assert (=> start!286558 e!1861134))

(assert (= (and start!286558 res!1219525) b!2955793))

(assert (= (and b!2955793 (not res!1219524)) b!2955780))

(assert (= (and b!2955780 (not res!1219522)) b!2955791))

(assert (= (and b!2955791 (not res!1219529)) b!2955788))

(assert (= (and b!2955788 (not res!1219521)) b!2955782))

(assert (= (and b!2955782 (not res!1219526)) b!2955786))

(assert (= (and b!2955786 (not res!1219528)) b!2955787))

(assert (= (and b!2955787 (not res!1219527)) b!2955792))

(assert (= (and b!2955792 (not res!1219523)) b!2955783))

(assert (= (and start!286558 (is-ElementMatch!9166 r!17423)) b!2955784))

(assert (= (and start!286558 (is-Concat!14487 r!17423)) b!2955781))

(assert (= (and start!286558 (is-Star!9166 r!17423)) b!2955790))

(assert (= (and start!286558 (is-Union!9166 r!17423)) b!2955789))

(assert (= (and start!286558 (is-Cons!34907 s!11993)) b!2955785))

(declare-fun m!3331865 () Bool)

(assert (=> b!2955792 m!3331865))

(declare-fun m!3331867 () Bool)

(assert (=> b!2955792 m!3331867))

(declare-fun m!3331869 () Bool)

(assert (=> b!2955792 m!3331869))

(declare-fun m!3331871 () Bool)

(assert (=> b!2955792 m!3331871))

(declare-fun m!3331873 () Bool)

(assert (=> b!2955792 m!3331873))

(assert (=> b!2955792 m!3331873))

(declare-fun m!3331875 () Bool)

(assert (=> b!2955792 m!3331875))

(assert (=> b!2955792 m!3331869))

(declare-fun m!3331877 () Bool)

(assert (=> b!2955792 m!3331877))

(declare-fun m!3331879 () Bool)

(assert (=> b!2955792 m!3331879))

(declare-fun m!3331881 () Bool)

(assert (=> b!2955780 m!3331881))

(declare-fun m!3331883 () Bool)

(assert (=> b!2955787 m!3331883))

(declare-fun m!3331885 () Bool)

(assert (=> b!2955793 m!3331885))

(declare-fun m!3331887 () Bool)

(assert (=> b!2955793 m!3331887))

(declare-fun m!3331889 () Bool)

(assert (=> b!2955793 m!3331889))

(declare-fun m!3331891 () Bool)

(assert (=> start!286558 m!3331891))

(declare-fun m!3331893 () Bool)

(assert (=> b!2955782 m!3331893))

(declare-fun m!3331895 () Bool)

(assert (=> b!2955786 m!3331895))

(declare-fun m!3331897 () Bool)

(assert (=> b!2955791 m!3331897))

(declare-fun m!3331899 () Bool)

(assert (=> b!2955791 m!3331899))

(declare-fun m!3331901 () Bool)

(assert (=> b!2955791 m!3331901))

(declare-fun m!3331903 () Bool)

(assert (=> b!2955783 m!3331903))

(declare-fun m!3331905 () Bool)

(assert (=> b!2955788 m!3331905))

(push 1)

(assert (not start!286558))

(assert (not b!2955787))

(assert (not b!2955785))

(assert (not b!2955789))

(assert (not b!2955783))

(assert (not b!2955790))

(assert (not b!2955782))

(assert tp_is_empty!15895)

(assert (not b!2955788))

(assert (not b!2955780))

(assert (not b!2955791))

(assert (not b!2955792))

(assert (not b!2955781))

(assert (not b!2955793))

(assert (not b!2955786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!841561 () Bool)

(assert (=> d!841561 (= (isEmptyLang!288 lt!1032956) (is-EmptyLang!9166 lt!1032956))))

(assert (=> b!2955791 d!841561))

(declare-fun b!2955924 () Bool)

(declare-fun e!1861216 () Regex!9166)

(declare-fun e!1861219 () Regex!9166)

(assert (=> b!2955924 (= e!1861216 e!1861219)))

(declare-fun c!484216 () Bool)

(assert (=> b!2955924 (= c!484216 (is-ElementMatch!9166 (regTwo!18844 r!17423)))))

(declare-fun b!2955925 () Bool)

(declare-fun c!484219 () Bool)

(declare-fun e!1861212 () Bool)

(assert (=> b!2955925 (= c!484219 e!1861212)))

(declare-fun res!1219586 () Bool)

(assert (=> b!2955925 (=> res!1219586 e!1861212)))

(declare-fun call!195741 () Bool)

(assert (=> b!2955925 (= res!1219586 call!195741)))

(declare-fun lt!1033008 () Regex!9166)

(declare-fun call!195735 () Regex!9166)

(assert (=> b!2955925 (= lt!1033008 call!195735)))

(declare-fun e!1861214 () Regex!9166)

(declare-fun e!1861222 () Regex!9166)

(assert (=> b!2955925 (= e!1861214 e!1861222)))

(declare-fun c!484221 () Bool)

(declare-fun bm!195730 () Bool)

(declare-fun c!484220 () Bool)

(assert (=> bm!195730 (= call!195735 (simplify!171 (ite c!484220 (reg!9495 (regTwo!18844 r!17423)) (ite c!484221 (regTwo!18845 (regTwo!18844 r!17423)) (regOne!18844 (regTwo!18844 r!17423))))))))

(declare-fun b!2955926 () Bool)

(declare-fun e!1861223 () Regex!9166)

(declare-fun lt!1033007 () Regex!9166)

(declare-fun lt!1033006 () Regex!9166)

(assert (=> b!2955926 (= e!1861223 (Concat!14487 lt!1033007 lt!1033006))))

(declare-fun b!2955927 () Bool)

(assert (=> b!2955927 (= e!1861222 EmptyExpr!9166)))

(declare-fun b!2955928 () Bool)

(assert (=> b!2955928 (= e!1861222 (Star!9166 lt!1033008))))

(declare-fun d!841563 () Bool)

(declare-fun e!1861218 () Bool)

(assert (=> d!841563 e!1861218))

(declare-fun res!1219587 () Bool)

(assert (=> d!841563 (=> (not res!1219587) (not e!1861218))))

(declare-fun lt!1033009 () Regex!9166)

(assert (=> d!841563 (= res!1219587 (validRegex!3899 lt!1033009))))

(assert (=> d!841563 (= lt!1033009 e!1861216)))

(declare-fun c!484217 () Bool)

(assert (=> d!841563 (= c!484217 (is-EmptyLang!9166 (regTwo!18844 r!17423)))))

(assert (=> d!841563 (validRegex!3899 (regTwo!18844 r!17423))))

(assert (=> d!841563 (= (simplify!171 (regTwo!18844 r!17423)) lt!1033009)))

(declare-fun bm!195731 () Bool)

(declare-fun call!195736 () Regex!9166)

(assert (=> bm!195731 (= call!195736 (simplify!171 (ite c!484221 (regOne!18845 (regTwo!18844 r!17423)) (regTwo!18844 (regTwo!18844 r!17423)))))))

(declare-fun b!2955929 () Bool)

(declare-fun e!1861213 () Regex!9166)

(declare-fun e!1861220 () Regex!9166)

(assert (=> b!2955929 (= e!1861213 e!1861220)))

(declare-fun lt!1033004 () Regex!9166)

(assert (=> b!2955929 (= lt!1033004 call!195736)))

(declare-fun lt!1033005 () Regex!9166)

(declare-fun call!195740 () Regex!9166)

(assert (=> b!2955929 (= lt!1033005 call!195740)))

(declare-fun c!484225 () Bool)

(declare-fun call!195737 () Bool)

(assert (=> b!2955929 (= c!484225 call!195737)))

(declare-fun b!2955930 () Bool)

(assert (=> b!2955930 (= e!1861223 lt!1033007)))

(declare-fun b!2955931 () Bool)

(declare-fun c!484222 () Bool)

(assert (=> b!2955931 (= c!484222 (is-EmptyExpr!9166 (regTwo!18844 r!17423)))))

(declare-fun e!1861221 () Regex!9166)

(assert (=> b!2955931 (= e!1861219 e!1861221)))

(declare-fun bm!195732 () Bool)

(declare-fun call!195738 () Bool)

(assert (=> bm!195732 (= call!195738 call!195741)))

(declare-fun b!2955932 () Bool)

(assert (=> b!2955932 (= e!1861221 EmptyExpr!9166)))

(declare-fun b!2955933 () Bool)

(declare-fun e!1861211 () Regex!9166)

(assert (=> b!2955933 (= e!1861211 e!1861223)))

(declare-fun c!484224 () Bool)

(declare-fun call!195739 () Bool)

(assert (=> b!2955933 (= c!484224 call!195739)))

(declare-fun b!2955934 () Bool)

(declare-fun e!1861215 () Regex!9166)

(assert (=> b!2955934 (= e!1861215 EmptyLang!9166)))

(declare-fun b!2955935 () Bool)

(declare-fun e!1861210 () Regex!9166)

(assert (=> b!2955935 (= e!1861210 (Union!9166 lt!1033004 lt!1033005))))

(declare-fun bm!195733 () Bool)

(assert (=> bm!195733 (= call!195739 (isEmptyExpr!369 (ite c!484220 lt!1033008 lt!1033006)))))

(declare-fun bm!195734 () Bool)

(assert (=> bm!195734 (= call!195737 (isEmptyLang!288 (ite c!484221 lt!1033004 lt!1033007)))))

(declare-fun b!2955936 () Bool)

(assert (=> b!2955936 (= e!1861220 lt!1033005)))

(declare-fun b!2955937 () Bool)

(declare-fun e!1861217 () Bool)

(assert (=> b!2955937 (= e!1861217 call!195738)))

(declare-fun b!2955938 () Bool)

(assert (=> b!2955938 (= c!484221 (is-Union!9166 (regTwo!18844 r!17423)))))

(assert (=> b!2955938 (= e!1861214 e!1861213)))

(declare-fun b!2955939 () Bool)

(declare-fun nullable!2922 (Regex!9166) Bool)

(assert (=> b!2955939 (= e!1861218 (= (nullable!2922 lt!1033009) (nullable!2922 (regTwo!18844 r!17423))))))

(declare-fun bm!195735 () Bool)

(assert (=> bm!195735 (= call!195740 call!195735)))

(declare-fun b!2955940 () Bool)

(assert (=> b!2955940 (= e!1861216 EmptyLang!9166)))

(declare-fun b!2955941 () Bool)

(assert (=> b!2955941 (= e!1861210 lt!1033004)))

(declare-fun b!2955942 () Bool)

(assert (=> b!2955942 (= e!1861211 lt!1033006)))

(declare-fun b!2955943 () Bool)

(declare-fun c!484223 () Bool)

(assert (=> b!2955943 (= c!484223 call!195738)))

(assert (=> b!2955943 (= e!1861220 e!1861210)))

(declare-fun b!2955944 () Bool)

(declare-fun c!484218 () Bool)

(assert (=> b!2955944 (= c!484218 (isEmptyExpr!369 lt!1033007))))

(assert (=> b!2955944 (= e!1861215 e!1861211)))

(declare-fun bm!195736 () Bool)

(assert (=> bm!195736 (= call!195741 (isEmptyLang!288 (ite c!484220 lt!1033008 (ite c!484221 lt!1033005 lt!1033006))))))

(declare-fun b!2955945 () Bool)

(assert (=> b!2955945 (= e!1861221 e!1861214)))

(assert (=> b!2955945 (= c!484220 (is-Star!9166 (regTwo!18844 r!17423)))))

(declare-fun b!2955946 () Bool)

(assert (=> b!2955946 (= e!1861219 (regTwo!18844 r!17423))))

(declare-fun b!2955947 () Bool)

(assert (=> b!2955947 (= e!1861212 call!195739)))

(declare-fun b!2955948 () Bool)

(assert (=> b!2955948 (= e!1861213 e!1861215)))

(assert (=> b!2955948 (= lt!1033007 call!195740)))

(assert (=> b!2955948 (= lt!1033006 call!195736)))

(declare-fun res!1219585 () Bool)

(assert (=> b!2955948 (= res!1219585 call!195737)))

(assert (=> b!2955948 (=> res!1219585 e!1861217)))

(declare-fun c!484226 () Bool)

(assert (=> b!2955948 (= c!484226 e!1861217)))

(assert (= (and d!841563 c!484217) b!2955940))

(assert (= (and d!841563 (not c!484217)) b!2955924))

(assert (= (and b!2955924 c!484216) b!2955946))

(assert (= (and b!2955924 (not c!484216)) b!2955931))

(assert (= (and b!2955931 c!484222) b!2955932))

(assert (= (and b!2955931 (not c!484222)) b!2955945))

(assert (= (and b!2955945 c!484220) b!2955925))

(assert (= (and b!2955945 (not c!484220)) b!2955938))

(assert (= (and b!2955925 (not res!1219586)) b!2955947))

(assert (= (and b!2955925 c!484219) b!2955927))

(assert (= (and b!2955925 (not c!484219)) b!2955928))

(assert (= (and b!2955938 c!484221) b!2955929))

(assert (= (and b!2955938 (not c!484221)) b!2955948))

(assert (= (and b!2955929 c!484225) b!2955936))

(assert (= (and b!2955929 (not c!484225)) b!2955943))

(assert (= (and b!2955943 c!484223) b!2955941))

(assert (= (and b!2955943 (not c!484223)) b!2955935))

(assert (= (and b!2955948 (not res!1219585)) b!2955937))

(assert (= (and b!2955948 c!484226) b!2955934))

(assert (= (and b!2955948 (not c!484226)) b!2955944))

(assert (= (and b!2955944 c!484218) b!2955942))

(assert (= (and b!2955944 (not c!484218)) b!2955933))

(assert (= (and b!2955933 c!484224) b!2955930))

(assert (= (and b!2955933 (not c!484224)) b!2955926))

(assert (= (or b!2955929 b!2955948) bm!195731))

(assert (= (or b!2955929 b!2955948) bm!195735))

(assert (= (or b!2955943 b!2955937) bm!195732))

(assert (= (or b!2955929 b!2955948) bm!195734))

(assert (= (or b!2955947 b!2955933) bm!195733))

(assert (= (or b!2955925 bm!195735) bm!195730))

(assert (= (or b!2955925 bm!195732) bm!195736))

(assert (= (and d!841563 res!1219587) b!2955939))

(declare-fun m!3331949 () Bool)

(assert (=> b!2955939 m!3331949))

(declare-fun m!3331951 () Bool)

(assert (=> b!2955939 m!3331951))

(declare-fun m!3331953 () Bool)

(assert (=> bm!195733 m!3331953))

(declare-fun m!3331955 () Bool)

(assert (=> bm!195734 m!3331955))

(declare-fun m!3331957 () Bool)

(assert (=> d!841563 m!3331957))

(assert (=> d!841563 m!3331903))

(declare-fun m!3331959 () Bool)

(assert (=> bm!195730 m!3331959))

(declare-fun m!3331961 () Bool)

(assert (=> bm!195731 m!3331961))

(declare-fun m!3331963 () Bool)

(assert (=> b!2955944 m!3331963))

(declare-fun m!3331965 () Bool)

(assert (=> bm!195736 m!3331965))

(assert (=> b!2955791 d!841563))

(declare-fun b!2955949 () Bool)

(declare-fun e!1861230 () Regex!9166)

(declare-fun e!1861233 () Regex!9166)

(assert (=> b!2955949 (= e!1861230 e!1861233)))

(declare-fun c!484227 () Bool)

(assert (=> b!2955949 (= c!484227 (is-ElementMatch!9166 (regOne!18844 r!17423)))))

(declare-fun b!2955950 () Bool)

(declare-fun c!484230 () Bool)

(declare-fun e!1861226 () Bool)

(assert (=> b!2955950 (= c!484230 e!1861226)))

(declare-fun res!1219589 () Bool)

(assert (=> b!2955950 (=> res!1219589 e!1861226)))

(declare-fun call!195752 () Bool)

(assert (=> b!2955950 (= res!1219589 call!195752)))

(declare-fun lt!1033014 () Regex!9166)

(declare-fun call!195746 () Regex!9166)

(assert (=> b!2955950 (= lt!1033014 call!195746)))

(declare-fun e!1861228 () Regex!9166)

(declare-fun e!1861236 () Regex!9166)

(assert (=> b!2955950 (= e!1861228 e!1861236)))

(declare-fun bm!195741 () Bool)

(declare-fun c!484232 () Bool)

(declare-fun c!484231 () Bool)

(assert (=> bm!195741 (= call!195746 (simplify!171 (ite c!484231 (reg!9495 (regOne!18844 r!17423)) (ite c!484232 (regTwo!18845 (regOne!18844 r!17423)) (regOne!18844 (regOne!18844 r!17423))))))))

(declare-fun b!2955951 () Bool)

(declare-fun e!1861237 () Regex!9166)

(declare-fun lt!1033013 () Regex!9166)

(declare-fun lt!1033012 () Regex!9166)

(assert (=> b!2955951 (= e!1861237 (Concat!14487 lt!1033013 lt!1033012))))

(declare-fun b!2955952 () Bool)

(assert (=> b!2955952 (= e!1861236 EmptyExpr!9166)))

(declare-fun b!2955953 () Bool)

(assert (=> b!2955953 (= e!1861236 (Star!9166 lt!1033014))))

(declare-fun d!841567 () Bool)

(declare-fun e!1861232 () Bool)

(assert (=> d!841567 e!1861232))

(declare-fun res!1219590 () Bool)

(assert (=> d!841567 (=> (not res!1219590) (not e!1861232))))

(declare-fun lt!1033015 () Regex!9166)

(assert (=> d!841567 (= res!1219590 (validRegex!3899 lt!1033015))))

(assert (=> d!841567 (= lt!1033015 e!1861230)))

(declare-fun c!484228 () Bool)

(assert (=> d!841567 (= c!484228 (is-EmptyLang!9166 (regOne!18844 r!17423)))))

(assert (=> d!841567 (validRegex!3899 (regOne!18844 r!17423))))

(assert (=> d!841567 (= (simplify!171 (regOne!18844 r!17423)) lt!1033015)))

(declare-fun bm!195742 () Bool)

(declare-fun call!195747 () Regex!9166)

(assert (=> bm!195742 (= call!195747 (simplify!171 (ite c!484232 (regOne!18845 (regOne!18844 r!17423)) (regTwo!18844 (regOne!18844 r!17423)))))))

(declare-fun b!2955954 () Bool)

(declare-fun e!1861227 () Regex!9166)

(declare-fun e!1861234 () Regex!9166)

(assert (=> b!2955954 (= e!1861227 e!1861234)))

(declare-fun lt!1033010 () Regex!9166)

(assert (=> b!2955954 (= lt!1033010 call!195747)))

(declare-fun lt!1033011 () Regex!9166)

(declare-fun call!195751 () Regex!9166)

(assert (=> b!2955954 (= lt!1033011 call!195751)))

(declare-fun c!484236 () Bool)

(declare-fun call!195748 () Bool)

(assert (=> b!2955954 (= c!484236 call!195748)))

(declare-fun b!2955955 () Bool)

(assert (=> b!2955955 (= e!1861237 lt!1033013)))

(declare-fun b!2955956 () Bool)

(declare-fun c!484233 () Bool)

(assert (=> b!2955956 (= c!484233 (is-EmptyExpr!9166 (regOne!18844 r!17423)))))

(declare-fun e!1861235 () Regex!9166)

(assert (=> b!2955956 (= e!1861233 e!1861235)))

(declare-fun bm!195743 () Bool)

(declare-fun call!195749 () Bool)

(assert (=> bm!195743 (= call!195749 call!195752)))

(declare-fun b!2955957 () Bool)

(assert (=> b!2955957 (= e!1861235 EmptyExpr!9166)))

(declare-fun b!2955958 () Bool)

(declare-fun e!1861225 () Regex!9166)

(assert (=> b!2955958 (= e!1861225 e!1861237)))

(declare-fun c!484235 () Bool)

(declare-fun call!195750 () Bool)

(assert (=> b!2955958 (= c!484235 call!195750)))

(declare-fun b!2955959 () Bool)

(declare-fun e!1861229 () Regex!9166)

(assert (=> b!2955959 (= e!1861229 EmptyLang!9166)))

(declare-fun b!2955960 () Bool)

(declare-fun e!1861224 () Regex!9166)

(assert (=> b!2955960 (= e!1861224 (Union!9166 lt!1033010 lt!1033011))))

(declare-fun bm!195744 () Bool)

(assert (=> bm!195744 (= call!195750 (isEmptyExpr!369 (ite c!484231 lt!1033014 lt!1033012)))))

(declare-fun bm!195745 () Bool)

(assert (=> bm!195745 (= call!195748 (isEmptyLang!288 (ite c!484232 lt!1033010 lt!1033013)))))

(declare-fun b!2955961 () Bool)

(assert (=> b!2955961 (= e!1861234 lt!1033011)))

(declare-fun b!2955962 () Bool)

(declare-fun e!1861231 () Bool)

(assert (=> b!2955962 (= e!1861231 call!195749)))

(declare-fun b!2955963 () Bool)

(assert (=> b!2955963 (= c!484232 (is-Union!9166 (regOne!18844 r!17423)))))

(assert (=> b!2955963 (= e!1861228 e!1861227)))

(declare-fun b!2955964 () Bool)

(assert (=> b!2955964 (= e!1861232 (= (nullable!2922 lt!1033015) (nullable!2922 (regOne!18844 r!17423))))))

(declare-fun bm!195746 () Bool)

(assert (=> bm!195746 (= call!195751 call!195746)))

(declare-fun b!2955965 () Bool)

(assert (=> b!2955965 (= e!1861230 EmptyLang!9166)))

(declare-fun b!2955966 () Bool)

(assert (=> b!2955966 (= e!1861224 lt!1033010)))

(declare-fun b!2955967 () Bool)

(assert (=> b!2955967 (= e!1861225 lt!1033012)))

(declare-fun b!2955968 () Bool)

(declare-fun c!484234 () Bool)

(assert (=> b!2955968 (= c!484234 call!195749)))

(assert (=> b!2955968 (= e!1861234 e!1861224)))

(declare-fun b!2955969 () Bool)

(declare-fun c!484229 () Bool)

(assert (=> b!2955969 (= c!484229 (isEmptyExpr!369 lt!1033013))))

(assert (=> b!2955969 (= e!1861229 e!1861225)))

(declare-fun bm!195747 () Bool)

(assert (=> bm!195747 (= call!195752 (isEmptyLang!288 (ite c!484231 lt!1033014 (ite c!484232 lt!1033011 lt!1033012))))))

(declare-fun b!2955970 () Bool)

(assert (=> b!2955970 (= e!1861235 e!1861228)))

(assert (=> b!2955970 (= c!484231 (is-Star!9166 (regOne!18844 r!17423)))))

(declare-fun b!2955971 () Bool)

(assert (=> b!2955971 (= e!1861233 (regOne!18844 r!17423))))

(declare-fun b!2955972 () Bool)

(assert (=> b!2955972 (= e!1861226 call!195750)))

(declare-fun b!2955973 () Bool)

(assert (=> b!2955973 (= e!1861227 e!1861229)))

(assert (=> b!2955973 (= lt!1033013 call!195751)))

(assert (=> b!2955973 (= lt!1033012 call!195747)))

(declare-fun res!1219588 () Bool)

(assert (=> b!2955973 (= res!1219588 call!195748)))

(assert (=> b!2955973 (=> res!1219588 e!1861231)))

(declare-fun c!484237 () Bool)

(assert (=> b!2955973 (= c!484237 e!1861231)))

(assert (= (and d!841567 c!484228) b!2955965))

(assert (= (and d!841567 (not c!484228)) b!2955949))

(assert (= (and b!2955949 c!484227) b!2955971))

(assert (= (and b!2955949 (not c!484227)) b!2955956))

(assert (= (and b!2955956 c!484233) b!2955957))

(assert (= (and b!2955956 (not c!484233)) b!2955970))

(assert (= (and b!2955970 c!484231) b!2955950))

(assert (= (and b!2955970 (not c!484231)) b!2955963))

(assert (= (and b!2955950 (not res!1219589)) b!2955972))

(assert (= (and b!2955950 c!484230) b!2955952))

(assert (= (and b!2955950 (not c!484230)) b!2955953))

(assert (= (and b!2955963 c!484232) b!2955954))

(assert (= (and b!2955963 (not c!484232)) b!2955973))

(assert (= (and b!2955954 c!484236) b!2955961))

(assert (= (and b!2955954 (not c!484236)) b!2955968))

(assert (= (and b!2955968 c!484234) b!2955966))

(assert (= (and b!2955968 (not c!484234)) b!2955960))

(assert (= (and b!2955973 (not res!1219588)) b!2955962))

(assert (= (and b!2955973 c!484237) b!2955959))

(assert (= (and b!2955973 (not c!484237)) b!2955969))

(assert (= (and b!2955969 c!484229) b!2955967))

(assert (= (and b!2955969 (not c!484229)) b!2955958))

(assert (= (and b!2955958 c!484235) b!2955955))

(assert (= (and b!2955958 (not c!484235)) b!2955951))

(assert (= (or b!2955954 b!2955973) bm!195742))

(assert (= (or b!2955954 b!2955973) bm!195746))

(assert (= (or b!2955968 b!2955962) bm!195743))

(assert (= (or b!2955954 b!2955973) bm!195745))

(assert (= (or b!2955972 b!2955958) bm!195744))

(assert (= (or b!2955950 bm!195746) bm!195741))

(assert (= (or b!2955950 bm!195743) bm!195747))

(assert (= (and d!841567 res!1219590) b!2955964))

(declare-fun m!3331967 () Bool)

(assert (=> b!2955964 m!3331967))

(declare-fun m!3331969 () Bool)

(assert (=> b!2955964 m!3331969))

(declare-fun m!3331971 () Bool)

(assert (=> bm!195744 m!3331971))

(declare-fun m!3331973 () Bool)

(assert (=> bm!195745 m!3331973))

(declare-fun m!3331975 () Bool)

(assert (=> d!841567 m!3331975))

(declare-fun m!3331977 () Bool)

(assert (=> d!841567 m!3331977))

(declare-fun m!3331979 () Bool)

(assert (=> bm!195741 m!3331979))

(declare-fun m!3331981 () Bool)

(assert (=> bm!195742 m!3331981))

(declare-fun m!3331983 () Bool)

(assert (=> b!2955969 m!3331983))

(declare-fun m!3331985 () Bool)

(assert (=> bm!195747 m!3331985))

(assert (=> b!2955791 d!841567))

(declare-fun d!841569 () Bool)

(assert (=> d!841569 (= (isEmpty!19183 s!11993) (is-Nil!34907 s!11993))))

(assert (=> b!2955780 d!841569))

(declare-fun b!2956011 () Bool)

(declare-fun e!1861265 () Bool)

(declare-fun e!1861264 () Bool)

(assert (=> b!2956011 (= e!1861265 e!1861264)))

(declare-fun res!1219619 () Bool)

(assert (=> b!2956011 (=> res!1219619 e!1861264)))

(declare-fun call!195760 () Bool)

(assert (=> b!2956011 (= res!1219619 call!195760)))

(declare-fun b!2956012 () Bool)

(declare-fun res!1219616 () Bool)

(declare-fun e!1861262 () Bool)

(assert (=> b!2956012 (=> res!1219616 e!1861262)))

(assert (=> b!2956012 (= res!1219616 (not (is-ElementMatch!9166 lt!1032963)))))

(declare-fun e!1861259 () Bool)

(assert (=> b!2956012 (= e!1861259 e!1861262)))

(declare-fun d!841571 () Bool)

(declare-fun e!1861260 () Bool)

(assert (=> d!841571 e!1861260))

(declare-fun c!484248 () Bool)

(assert (=> d!841571 (= c!484248 (is-EmptyExpr!9166 lt!1032963))))

(declare-fun lt!1033018 () Bool)

(declare-fun e!1861261 () Bool)

(assert (=> d!841571 (= lt!1033018 e!1861261)))

(declare-fun c!484246 () Bool)

(assert (=> d!841571 (= c!484246 (isEmpty!19183 s!11993))))

(assert (=> d!841571 (validRegex!3899 lt!1032963)))

(assert (=> d!841571 (= (matchR!4048 lt!1032963 s!11993) lt!1033018)))

(declare-fun bm!195755 () Bool)

(assert (=> bm!195755 (= call!195760 (isEmpty!19183 s!11993))))

(declare-fun b!2956013 () Bool)

(assert (=> b!2956013 (= e!1861259 (not lt!1033018))))

(declare-fun b!2956014 () Bool)

(assert (=> b!2956014 (= e!1861261 (nullable!2922 lt!1032963))))

(declare-fun b!2956015 () Bool)

(declare-fun res!1219614 () Bool)

(assert (=> b!2956015 (=> res!1219614 e!1861262)))

(declare-fun e!1861263 () Bool)

(assert (=> b!2956015 (= res!1219614 e!1861263)))

(declare-fun res!1219612 () Bool)

(assert (=> b!2956015 (=> (not res!1219612) (not e!1861263))))

(assert (=> b!2956015 (= res!1219612 lt!1033018)))

(declare-fun b!2956016 () Bool)

(declare-fun res!1219618 () Bool)

(assert (=> b!2956016 (=> (not res!1219618) (not e!1861263))))

(declare-fun tail!4809 (List!35031) List!35031)

(assert (=> b!2956016 (= res!1219618 (isEmpty!19183 (tail!4809 s!11993)))))

(declare-fun b!2956017 () Bool)

(assert (=> b!2956017 (= e!1861262 e!1861265)))

(declare-fun res!1219615 () Bool)

(assert (=> b!2956017 (=> (not res!1219615) (not e!1861265))))

(assert (=> b!2956017 (= res!1219615 (not lt!1033018))))

(declare-fun b!2956018 () Bool)

(declare-fun head!6583 (List!35031) C!18518)

(assert (=> b!2956018 (= e!1861263 (= (head!6583 s!11993) (c!484188 lt!1032963)))))

(declare-fun b!2956019 () Bool)

(assert (=> b!2956019 (= e!1861264 (not (= (head!6583 s!11993) (c!484188 lt!1032963))))))

(declare-fun b!2956020 () Bool)

(assert (=> b!2956020 (= e!1861260 e!1861259)))

(declare-fun c!484247 () Bool)

(assert (=> b!2956020 (= c!484247 (is-EmptyLang!9166 lt!1032963))))

(declare-fun b!2956021 () Bool)

(declare-fun derivativeStep!2524 (Regex!9166 C!18518) Regex!9166)

(assert (=> b!2956021 (= e!1861261 (matchR!4048 (derivativeStep!2524 lt!1032963 (head!6583 s!11993)) (tail!4809 s!11993)))))

(declare-fun b!2956022 () Bool)

(assert (=> b!2956022 (= e!1861260 (= lt!1033018 call!195760))))

(declare-fun b!2956023 () Bool)

(declare-fun res!1219613 () Bool)

(assert (=> b!2956023 (=> (not res!1219613) (not e!1861263))))

(assert (=> b!2956023 (= res!1219613 (not call!195760))))

(declare-fun b!2956024 () Bool)

(declare-fun res!1219617 () Bool)

(assert (=> b!2956024 (=> res!1219617 e!1861264)))

(assert (=> b!2956024 (= res!1219617 (not (isEmpty!19183 (tail!4809 s!11993))))))

(assert (= (and d!841571 c!484246) b!2956014))

(assert (= (and d!841571 (not c!484246)) b!2956021))

(assert (= (and d!841571 c!484248) b!2956022))

(assert (= (and d!841571 (not c!484248)) b!2956020))

(assert (= (and b!2956020 c!484247) b!2956013))

(assert (= (and b!2956020 (not c!484247)) b!2956012))

(assert (= (and b!2956012 (not res!1219616)) b!2956015))

(assert (= (and b!2956015 res!1219612) b!2956023))

(assert (= (and b!2956023 res!1219613) b!2956016))

(assert (= (and b!2956016 res!1219618) b!2956018))

(assert (= (and b!2956015 (not res!1219614)) b!2956017))

(assert (= (and b!2956017 res!1219615) b!2956011))

(assert (= (and b!2956011 (not res!1219619)) b!2956024))

(assert (= (and b!2956024 (not res!1219617)) b!2956019))

(assert (= (or b!2956022 b!2956011 b!2956023) bm!195755))

(declare-fun m!3331993 () Bool)

(assert (=> b!2956019 m!3331993))

(assert (=> bm!195755 m!3331881))

(declare-fun m!3331995 () Bool)

(assert (=> b!2956016 m!3331995))

(assert (=> b!2956016 m!3331995))

(declare-fun m!3331997 () Bool)

(assert (=> b!2956016 m!3331997))

(assert (=> b!2956024 m!3331995))

(assert (=> b!2956024 m!3331995))

(assert (=> b!2956024 m!3331997))

(declare-fun m!3331999 () Bool)

(assert (=> b!2956014 m!3331999))

(assert (=> d!841571 m!3331881))

(declare-fun m!3332001 () Bool)

(assert (=> d!841571 m!3332001))

(assert (=> b!2956018 m!3331993))

(assert (=> b!2956021 m!3331993))

(assert (=> b!2956021 m!3331993))

(declare-fun m!3332003 () Bool)

(assert (=> b!2956021 m!3332003))

(assert (=> b!2956021 m!3331995))

(assert (=> b!2956021 m!3332003))

(assert (=> b!2956021 m!3331995))

(declare-fun m!3332005 () Bool)

(assert (=> b!2956021 m!3332005))

(assert (=> b!2955787 d!841571))

(declare-fun d!841581 () Bool)

(declare-fun isEmpty!19185 (Option!6657) Bool)

(assert (=> d!841581 (= (isDefined!5208 (findConcatSeparation!1051 lt!1032956 lt!1032959 Nil!34907 s!11993 s!11993)) (not (isEmpty!19185 (findConcatSeparation!1051 lt!1032956 lt!1032959 Nil!34907 s!11993 s!11993))))))

(declare-fun bs!526077 () Bool)

(assert (= bs!526077 d!841581))

(assert (=> bs!526077 m!3331873))

(declare-fun m!3332007 () Bool)

(assert (=> bs!526077 m!3332007))

(assert (=> b!2955792 d!841581))

(declare-fun bs!526078 () Bool)

(declare-fun b!2956079 () Bool)

(assert (= bs!526078 (and b!2956079 b!2955792)))

(declare-fun lambda!110079 () Int)

(assert (=> bs!526078 (not (= lambda!110079 lambda!110065))))

(assert (=> bs!526078 (not (= lambda!110079 lambda!110066))))

(assert (=> b!2956079 true))

(assert (=> b!2956079 true))

(declare-fun bs!526079 () Bool)

(declare-fun b!2956077 () Bool)

(assert (= bs!526079 (and b!2956077 b!2955792)))

(declare-fun lambda!110080 () Int)

(assert (=> bs!526079 (not (= lambda!110080 lambda!110065))))

(assert (=> bs!526079 (= (and (= (regOne!18844 lt!1032963) lt!1032956) (= (regTwo!18844 lt!1032963) lt!1032959)) (= lambda!110080 lambda!110066))))

(declare-fun bs!526080 () Bool)

(assert (= bs!526080 (and b!2956077 b!2956079)))

(assert (=> bs!526080 (not (= lambda!110080 lambda!110079))))

(assert (=> b!2956077 true))

(assert (=> b!2956077 true))

(declare-fun b!2956073 () Bool)

(declare-fun e!1861290 () Bool)

(assert (=> b!2956073 (= e!1861290 (matchRSpec!1303 (regTwo!18845 lt!1032963) s!11993))))

(declare-fun b!2956074 () Bool)

(declare-fun e!1861298 () Bool)

(assert (=> b!2956074 (= e!1861298 (= s!11993 (Cons!34907 (c!484188 lt!1032963) Nil!34907)))))

(declare-fun d!841583 () Bool)

(declare-fun c!484268 () Bool)

(assert (=> d!841583 (= c!484268 (is-EmptyExpr!9166 lt!1032963))))

(declare-fun e!1861292 () Bool)

(assert (=> d!841583 (= (matchRSpec!1303 lt!1032963 s!11993) e!1861292)))

(declare-fun b!2956075 () Bool)

(declare-fun e!1861295 () Bool)

(assert (=> b!2956075 (= e!1861292 e!1861295)))

(declare-fun res!1219638 () Bool)

(assert (=> b!2956075 (= res!1219638 (not (is-EmptyLang!9166 lt!1032963)))))

(assert (=> b!2956075 (=> (not res!1219638) (not e!1861295))))

(declare-fun b!2956076 () Bool)

(declare-fun c!484263 () Bool)

(assert (=> b!2956076 (= c!484263 (is-Union!9166 lt!1032963))))

(declare-fun e!1861293 () Bool)

(assert (=> b!2956076 (= e!1861298 e!1861293)))

(declare-fun e!1861297 () Bool)

(declare-fun call!195765 () Bool)

(assert (=> b!2956077 (= e!1861297 call!195765)))

(declare-fun b!2956078 () Bool)

(assert (=> b!2956078 (= e!1861293 e!1861290)))

(declare-fun res!1219636 () Bool)

(assert (=> b!2956078 (= res!1219636 (matchRSpec!1303 (regOne!18845 lt!1032963) s!11993))))

(assert (=> b!2956078 (=> res!1219636 e!1861290)))

(declare-fun bm!195760 () Bool)

(declare-fun c!484267 () Bool)

(assert (=> bm!195760 (= call!195765 (Exists!1498 (ite c!484267 lambda!110079 lambda!110080)))))

(declare-fun e!1861296 () Bool)

(assert (=> b!2956079 (= e!1861296 call!195765)))

(declare-fun b!2956080 () Bool)

(declare-fun c!484266 () Bool)

(assert (=> b!2956080 (= c!484266 (is-ElementMatch!9166 lt!1032963))))

(assert (=> b!2956080 (= e!1861295 e!1861298)))

(declare-fun b!2956081 () Bool)

(declare-fun res!1219637 () Bool)

(assert (=> b!2956081 (=> res!1219637 e!1861296)))

(declare-fun call!195766 () Bool)

(assert (=> b!2956081 (= res!1219637 call!195766)))

(assert (=> b!2956081 (= e!1861297 e!1861296)))

(declare-fun b!2956082 () Bool)

(assert (=> b!2956082 (= e!1861293 e!1861297)))

(assert (=> b!2956082 (= c!484267 (is-Star!9166 lt!1032963))))

(declare-fun bm!195761 () Bool)

(assert (=> bm!195761 (= call!195766 (isEmpty!19183 s!11993))))

(declare-fun b!2956083 () Bool)

(assert (=> b!2956083 (= e!1861292 call!195766)))

(assert (= (and d!841583 c!484268) b!2956083))

(assert (= (and d!841583 (not c!484268)) b!2956075))

(assert (= (and b!2956075 res!1219638) b!2956080))

(assert (= (and b!2956080 c!484266) b!2956074))

(assert (= (and b!2956080 (not c!484266)) b!2956076))

(assert (= (and b!2956076 c!484263) b!2956078))

(assert (= (and b!2956076 (not c!484263)) b!2956082))

(assert (= (and b!2956078 (not res!1219636)) b!2956073))

(assert (= (and b!2956082 c!484267) b!2956081))

(assert (= (and b!2956082 (not c!484267)) b!2956077))

(assert (= (and b!2956081 (not res!1219637)) b!2956079))

(assert (= (or b!2956079 b!2956077) bm!195760))

(assert (= (or b!2956083 b!2956081) bm!195761))

(declare-fun m!3332009 () Bool)

(assert (=> b!2956073 m!3332009))

(declare-fun m!3332011 () Bool)

(assert (=> b!2956078 m!3332011))

(declare-fun m!3332013 () Bool)

(assert (=> bm!195760 m!3332013))

(assert (=> bm!195761 m!3331881))

(assert (=> b!2955792 d!841583))

(declare-fun d!841585 () Bool)

(declare-fun choose!17481 (Int) Bool)

(assert (=> d!841585 (= (Exists!1498 lambda!110065) (choose!17481 lambda!110065))))

(declare-fun bs!526081 () Bool)

(assert (= bs!526081 d!841585))

(declare-fun m!3332015 () Bool)

(assert (=> bs!526081 m!3332015))

(assert (=> b!2955792 d!841585))

(declare-fun b!2956136 () Bool)

(declare-fun e!1861329 () Option!6657)

(assert (=> b!2956136 (= e!1861329 (Some!6656 (tuple2!33851 Nil!34907 s!11993)))))

(declare-fun b!2956137 () Bool)

(declare-fun res!1219658 () Bool)

(declare-fun e!1861333 () Bool)

(assert (=> b!2956137 (=> (not res!1219658) (not e!1861333))))

(declare-fun lt!1033037 () Option!6657)

(declare-fun get!10717 (Option!6657) tuple2!33850)

(assert (=> b!2956137 (= res!1219658 (matchR!4048 lt!1032956 (_1!20057 (get!10717 lt!1033037))))))

(declare-fun b!2956138 () Bool)

(declare-fun e!1861331 () Option!6657)

(assert (=> b!2956138 (= e!1861331 None!6656)))

(declare-fun b!2956139 () Bool)

(declare-fun lt!1033039 () Unit!48711)

(declare-fun lt!1033038 () Unit!48711)

(assert (=> b!2956139 (= lt!1033039 lt!1033038)))

(declare-fun ++!8333 (List!35031 List!35031) List!35031)

(assert (=> b!2956139 (= (++!8333 (++!8333 Nil!34907 (Cons!34907 (h!40327 s!11993) Nil!34907)) (t!234096 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!956 (List!35031 C!18518 List!35031 List!35031) Unit!48711)

(assert (=> b!2956139 (= lt!1033038 (lemmaMoveElementToOtherListKeepsConcatEq!956 Nil!34907 (h!40327 s!11993) (t!234096 s!11993) s!11993))))

(assert (=> b!2956139 (= e!1861331 (findConcatSeparation!1051 lt!1032956 lt!1032959 (++!8333 Nil!34907 (Cons!34907 (h!40327 s!11993) Nil!34907)) (t!234096 s!11993) s!11993))))

(declare-fun b!2956140 () Bool)

(assert (=> b!2956140 (= e!1861333 (= (++!8333 (_1!20057 (get!10717 lt!1033037)) (_2!20057 (get!10717 lt!1033037))) s!11993))))

(declare-fun d!841587 () Bool)

(declare-fun e!1861330 () Bool)

(assert (=> d!841587 e!1861330))

(declare-fun res!1219656 () Bool)

(assert (=> d!841587 (=> res!1219656 e!1861330)))

(assert (=> d!841587 (= res!1219656 e!1861333)))

(declare-fun res!1219655 () Bool)

(assert (=> d!841587 (=> (not res!1219655) (not e!1861333))))

(assert (=> d!841587 (= res!1219655 (isDefined!5208 lt!1033037))))

(assert (=> d!841587 (= lt!1033037 e!1861329)))

(declare-fun c!484287 () Bool)

(declare-fun e!1861332 () Bool)

(assert (=> d!841587 (= c!484287 e!1861332)))

(declare-fun res!1219657 () Bool)

(assert (=> d!841587 (=> (not res!1219657) (not e!1861332))))

(assert (=> d!841587 (= res!1219657 (matchR!4048 lt!1032956 Nil!34907))))

(assert (=> d!841587 (validRegex!3899 lt!1032956)))

(assert (=> d!841587 (= (findConcatSeparation!1051 lt!1032956 lt!1032959 Nil!34907 s!11993 s!11993) lt!1033037)))

(declare-fun b!2956141 () Bool)

(assert (=> b!2956141 (= e!1861332 (matchR!4048 lt!1032959 s!11993))))

(declare-fun b!2956142 () Bool)

(assert (=> b!2956142 (= e!1861330 (not (isDefined!5208 lt!1033037)))))

(declare-fun b!2956143 () Bool)

(declare-fun res!1219659 () Bool)

(assert (=> b!2956143 (=> (not res!1219659) (not e!1861333))))

(assert (=> b!2956143 (= res!1219659 (matchR!4048 lt!1032959 (_2!20057 (get!10717 lt!1033037))))))

(declare-fun b!2956144 () Bool)

(assert (=> b!2956144 (= e!1861329 e!1861331)))

(declare-fun c!484288 () Bool)

(assert (=> b!2956144 (= c!484288 (is-Nil!34907 s!11993))))

(assert (= (and d!841587 res!1219657) b!2956141))

(assert (= (and d!841587 c!484287) b!2956136))

(assert (= (and d!841587 (not c!484287)) b!2956144))

(assert (= (and b!2956144 c!484288) b!2956138))

(assert (= (and b!2956144 (not c!484288)) b!2956139))

(assert (= (and d!841587 res!1219655) b!2956137))

(assert (= (and b!2956137 res!1219658) b!2956143))

(assert (= (and b!2956143 res!1219659) b!2956140))

(assert (= (and d!841587 (not res!1219656)) b!2956142))

(declare-fun m!3332017 () Bool)

(assert (=> b!2956137 m!3332017))

(declare-fun m!3332019 () Bool)

(assert (=> b!2956137 m!3332019))

(declare-fun m!3332021 () Bool)

(assert (=> b!2956139 m!3332021))

(assert (=> b!2956139 m!3332021))

(declare-fun m!3332023 () Bool)

(assert (=> b!2956139 m!3332023))

(declare-fun m!3332025 () Bool)

(assert (=> b!2956139 m!3332025))

(assert (=> b!2956139 m!3332021))

(declare-fun m!3332027 () Bool)

(assert (=> b!2956139 m!3332027))

(declare-fun m!3332029 () Bool)

(assert (=> d!841587 m!3332029))

(declare-fun m!3332031 () Bool)

(assert (=> d!841587 m!3332031))

(declare-fun m!3332033 () Bool)

(assert (=> d!841587 m!3332033))

(assert (=> b!2956140 m!3332017))

(declare-fun m!3332035 () Bool)

(assert (=> b!2956140 m!3332035))

(assert (=> b!2956142 m!3332029))

(declare-fun m!3332037 () Bool)

(assert (=> b!2956141 m!3332037))

(assert (=> b!2956143 m!3332017))

(declare-fun m!3332039 () Bool)

(assert (=> b!2956143 m!3332039))

(assert (=> b!2955792 d!841587))

(declare-fun bs!526082 () Bool)

(declare-fun d!841589 () Bool)

(assert (= bs!526082 (and d!841589 b!2955792)))

(declare-fun lambda!110085 () Int)

(assert (=> bs!526082 (= lambda!110085 lambda!110065)))

(assert (=> bs!526082 (not (= lambda!110085 lambda!110066))))

(declare-fun bs!526083 () Bool)

(assert (= bs!526083 (and d!841589 b!2956079)))

(assert (=> bs!526083 (not (= lambda!110085 lambda!110079))))

(declare-fun bs!526084 () Bool)

(assert (= bs!526084 (and d!841589 b!2956077)))

(assert (=> bs!526084 (not (= lambda!110085 lambda!110080))))

(assert (=> d!841589 true))

(assert (=> d!841589 true))

(assert (=> d!841589 true))

(declare-fun bs!526085 () Bool)

(assert (= bs!526085 d!841589))

(declare-fun lambda!110086 () Int)

(assert (=> bs!526085 (not (= lambda!110086 lambda!110085))))

(assert (=> bs!526082 (not (= lambda!110086 lambda!110065))))

(assert (=> bs!526082 (= lambda!110086 lambda!110066)))

(assert (=> bs!526084 (= (and (= lt!1032956 (regOne!18844 lt!1032963)) (= lt!1032959 (regTwo!18844 lt!1032963))) (= lambda!110086 lambda!110080))))

(assert (=> bs!526083 (not (= lambda!110086 lambda!110079))))

(assert (=> d!841589 true))

(assert (=> d!841589 true))

(assert (=> d!841589 true))

(assert (=> d!841589 (= (Exists!1498 lambda!110085) (Exists!1498 lambda!110086))))

(declare-fun lt!1033054 () Unit!48711)

(declare-fun choose!17482 (Regex!9166 Regex!9166 List!35031) Unit!48711)

(assert (=> d!841589 (= lt!1033054 (choose!17482 lt!1032956 lt!1032959 s!11993))))

(assert (=> d!841589 (validRegex!3899 lt!1032956)))

(assert (=> d!841589 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!519 lt!1032956 lt!1032959 s!11993) lt!1033054)))

(declare-fun m!3332085 () Bool)

(assert (=> bs!526085 m!3332085))

(declare-fun m!3332087 () Bool)

(assert (=> bs!526085 m!3332087))

(declare-fun m!3332089 () Bool)

(assert (=> bs!526085 m!3332089))

(assert (=> bs!526085 m!3332033))

(assert (=> b!2955792 d!841589))

(declare-fun d!841597 () Bool)

(assert (=> d!841597 (= (Exists!1498 lambda!110066) (choose!17481 lambda!110066))))

(declare-fun bs!526086 () Bool)

(assert (= bs!526086 d!841597))

(declare-fun m!3332091 () Bool)

(assert (=> bs!526086 m!3332091))

(assert (=> b!2955792 d!841597))

(declare-fun d!841599 () Bool)

(assert (=> d!841599 (= (matchR!4048 lt!1032963 s!11993) (matchRSpec!1303 lt!1032963 s!11993))))

(declare-fun lt!1033057 () Unit!48711)

(declare-fun choose!17483 (Regex!9166 List!35031) Unit!48711)

(assert (=> d!841599 (= lt!1033057 (choose!17483 lt!1032963 s!11993))))

(assert (=> d!841599 (validRegex!3899 lt!1032963)))

(assert (=> d!841599 (= (mainMatchTheorem!1303 lt!1032963 s!11993) lt!1033057)))

(declare-fun bs!526087 () Bool)

(assert (= bs!526087 d!841599))

(assert (=> bs!526087 m!3331883))

(assert (=> bs!526087 m!3331879))

(declare-fun m!3332093 () Bool)

(assert (=> bs!526087 m!3332093))

(assert (=> bs!526087 m!3332001))

(assert (=> b!2955792 d!841599))

(declare-fun bs!526088 () Bool)

(declare-fun d!841601 () Bool)

(assert (= bs!526088 (and d!841601 d!841589)))

(declare-fun lambda!110089 () Int)

(assert (=> bs!526088 (= lambda!110089 lambda!110085)))

(assert (=> bs!526088 (not (= lambda!110089 lambda!110086))))

(declare-fun bs!526089 () Bool)

(assert (= bs!526089 (and d!841601 b!2955792)))

(assert (=> bs!526089 (= lambda!110089 lambda!110065)))

(assert (=> bs!526089 (not (= lambda!110089 lambda!110066))))

(declare-fun bs!526090 () Bool)

(assert (= bs!526090 (and d!841601 b!2956077)))

(assert (=> bs!526090 (not (= lambda!110089 lambda!110080))))

(declare-fun bs!526091 () Bool)

(assert (= bs!526091 (and d!841601 b!2956079)))

(assert (=> bs!526091 (not (= lambda!110089 lambda!110079))))

(assert (=> d!841601 true))

(assert (=> d!841601 true))

(assert (=> d!841601 true))

(assert (=> d!841601 (= (isDefined!5208 (findConcatSeparation!1051 lt!1032956 lt!1032959 Nil!34907 s!11993 s!11993)) (Exists!1498 lambda!110089))))

(declare-fun lt!1033060 () Unit!48711)

(declare-fun choose!17484 (Regex!9166 Regex!9166 List!35031) Unit!48711)

(assert (=> d!841601 (= lt!1033060 (choose!17484 lt!1032956 lt!1032959 s!11993))))

(assert (=> d!841601 (validRegex!3899 lt!1032956)))

(assert (=> d!841601 (= (lemmaFindConcatSeparationEquivalentToExists!829 lt!1032956 lt!1032959 s!11993) lt!1033060)))

(declare-fun bs!526092 () Bool)

(assert (= bs!526092 d!841601))

(assert (=> bs!526092 m!3332033))

(declare-fun m!3332095 () Bool)

(assert (=> bs!526092 m!3332095))

(assert (=> bs!526092 m!3331873))

(assert (=> bs!526092 m!3331873))

(assert (=> bs!526092 m!3331875))

(declare-fun m!3332097 () Bool)

(assert (=> bs!526092 m!3332097))

(assert (=> b!2955792 d!841601))

(declare-fun d!841603 () Bool)

(assert (=> d!841603 (= (isEmptyExpr!369 lt!1032959) (is-EmptyExpr!9166 lt!1032959))))

(assert (=> b!2955786 d!841603))

(declare-fun b!2956262 () Bool)

(declare-fun e!1861407 () Bool)

(declare-fun e!1861409 () Bool)

(assert (=> b!2956262 (= e!1861407 e!1861409)))

(declare-fun res!1219709 () Bool)

(assert (=> b!2956262 (= res!1219709 (not (nullable!2922 (reg!9495 (regTwo!18844 r!17423)))))))

(assert (=> b!2956262 (=> (not res!1219709) (not e!1861409))))

(declare-fun b!2956263 () Bool)

(declare-fun e!1861405 () Bool)

(assert (=> b!2956263 (= e!1861407 e!1861405)))

(declare-fun c!484323 () Bool)

(assert (=> b!2956263 (= c!484323 (is-Union!9166 (regTwo!18844 r!17423)))))

(declare-fun b!2956264 () Bool)

(declare-fun res!1219713 () Bool)

(declare-fun e!1861404 () Bool)

(assert (=> b!2956264 (=> res!1219713 e!1861404)))

(assert (=> b!2956264 (= res!1219713 (not (is-Concat!14487 (regTwo!18844 r!17423))))))

(assert (=> b!2956264 (= e!1861405 e!1861404)))

(declare-fun bm!195801 () Bool)

(declare-fun c!484324 () Bool)

(declare-fun call!195807 () Bool)

(assert (=> bm!195801 (= call!195807 (validRegex!3899 (ite c!484324 (reg!9495 (regTwo!18844 r!17423)) (ite c!484323 (regOne!18845 (regTwo!18844 r!17423)) (regTwo!18844 (regTwo!18844 r!17423))))))))

(declare-fun b!2956265 () Bool)

(declare-fun res!1219712 () Bool)

(declare-fun e!1861403 () Bool)

(assert (=> b!2956265 (=> (not res!1219712) (not e!1861403))))

(declare-fun call!195808 () Bool)

(assert (=> b!2956265 (= res!1219712 call!195808)))

(assert (=> b!2956265 (= e!1861405 e!1861403)))

(declare-fun d!841605 () Bool)

(declare-fun res!1219710 () Bool)

(declare-fun e!1861406 () Bool)

(assert (=> d!841605 (=> res!1219710 e!1861406)))

(assert (=> d!841605 (= res!1219710 (is-ElementMatch!9166 (regTwo!18844 r!17423)))))

(assert (=> d!841605 (= (validRegex!3899 (regTwo!18844 r!17423)) e!1861406)))

(declare-fun b!2956266 () Bool)

(declare-fun e!1861408 () Bool)

(assert (=> b!2956266 (= e!1861404 e!1861408)))

(declare-fun res!1219711 () Bool)

(assert (=> b!2956266 (=> (not res!1219711) (not e!1861408))))

(declare-fun call!195806 () Bool)

(assert (=> b!2956266 (= res!1219711 call!195806)))

(declare-fun bm!195802 () Bool)

(assert (=> bm!195802 (= call!195808 call!195807)))

(declare-fun b!2956267 () Bool)

(assert (=> b!2956267 (= e!1861409 call!195807)))

(declare-fun b!2956268 () Bool)

(assert (=> b!2956268 (= e!1861403 call!195806)))

(declare-fun bm!195803 () Bool)

(assert (=> bm!195803 (= call!195806 (validRegex!3899 (ite c!484323 (regTwo!18845 (regTwo!18844 r!17423)) (regOne!18844 (regTwo!18844 r!17423)))))))

(declare-fun b!2956269 () Bool)

(assert (=> b!2956269 (= e!1861408 call!195808)))

(declare-fun b!2956270 () Bool)

(assert (=> b!2956270 (= e!1861406 e!1861407)))

(assert (=> b!2956270 (= c!484324 (is-Star!9166 (regTwo!18844 r!17423)))))

(assert (= (and d!841605 (not res!1219710)) b!2956270))

(assert (= (and b!2956270 c!484324) b!2956262))

(assert (= (and b!2956270 (not c!484324)) b!2956263))

(assert (= (and b!2956262 res!1219709) b!2956267))

(assert (= (and b!2956263 c!484323) b!2956265))

(assert (= (and b!2956263 (not c!484323)) b!2956264))

(assert (= (and b!2956265 res!1219712) b!2956268))

(assert (= (and b!2956264 (not res!1219713)) b!2956266))

(assert (= (and b!2956266 res!1219711) b!2956269))

(assert (= (or b!2956265 b!2956269) bm!195802))

(assert (= (or b!2956268 b!2956266) bm!195803))

(assert (= (or b!2956267 bm!195802) bm!195801))

(declare-fun m!3332099 () Bool)

(assert (=> b!2956262 m!3332099))

(declare-fun m!3332101 () Bool)

(assert (=> bm!195801 m!3332101))

(declare-fun m!3332103 () Bool)

(assert (=> bm!195803 m!3332103))

(assert (=> b!2955783 d!841605))

(declare-fun d!841607 () Bool)

(assert (=> d!841607 (= (isEmptyLang!288 lt!1032959) (is-EmptyLang!9166 lt!1032959))))

(assert (=> b!2955788 d!841607))

(declare-fun bs!526093 () Bool)

(declare-fun b!2956277 () Bool)

(assert (= bs!526093 (and b!2956277 d!841589)))

(declare-fun lambda!110090 () Int)

(assert (=> bs!526093 (not (= lambda!110090 lambda!110085))))

(assert (=> bs!526093 (not (= lambda!110090 lambda!110086))))

(declare-fun bs!526094 () Bool)

(assert (= bs!526094 (and b!2956277 b!2955792)))

(assert (=> bs!526094 (not (= lambda!110090 lambda!110065))))

(assert (=> bs!526094 (not (= lambda!110090 lambda!110066))))

(declare-fun bs!526095 () Bool)

(assert (= bs!526095 (and b!2956277 d!841601)))

(assert (=> bs!526095 (not (= lambda!110090 lambda!110089))))

(declare-fun bs!526096 () Bool)

(assert (= bs!526096 (and b!2956277 b!2956077)))

(assert (=> bs!526096 (not (= lambda!110090 lambda!110080))))

(declare-fun bs!526097 () Bool)

(assert (= bs!526097 (and b!2956277 b!2956079)))

(assert (=> bs!526097 (= (and (= (reg!9495 r!17423) (reg!9495 lt!1032963)) (= r!17423 lt!1032963)) (= lambda!110090 lambda!110079))))

(assert (=> b!2956277 true))

(assert (=> b!2956277 true))

(declare-fun bs!526098 () Bool)

(declare-fun b!2956275 () Bool)

(assert (= bs!526098 (and b!2956275 d!841589)))

(declare-fun lambda!110091 () Int)

(assert (=> bs!526098 (not (= lambda!110091 lambda!110085))))

(assert (=> bs!526098 (= (and (= (regOne!18844 r!17423) lt!1032956) (= (regTwo!18844 r!17423) lt!1032959)) (= lambda!110091 lambda!110086))))

(declare-fun bs!526099 () Bool)

(assert (= bs!526099 (and b!2956275 b!2955792)))

(assert (=> bs!526099 (not (= lambda!110091 lambda!110065))))

(assert (=> bs!526099 (= (and (= (regOne!18844 r!17423) lt!1032956) (= (regTwo!18844 r!17423) lt!1032959)) (= lambda!110091 lambda!110066))))

(declare-fun bs!526100 () Bool)

(assert (= bs!526100 (and b!2956275 d!841601)))

(assert (=> bs!526100 (not (= lambda!110091 lambda!110089))))

(declare-fun bs!526101 () Bool)

(assert (= bs!526101 (and b!2956275 b!2956277)))

(assert (=> bs!526101 (not (= lambda!110091 lambda!110090))))

(declare-fun bs!526102 () Bool)

(assert (= bs!526102 (and b!2956275 b!2956077)))

(assert (=> bs!526102 (= (and (= (regOne!18844 r!17423) (regOne!18844 lt!1032963)) (= (regTwo!18844 r!17423) (regTwo!18844 lt!1032963))) (= lambda!110091 lambda!110080))))

(declare-fun bs!526103 () Bool)

(assert (= bs!526103 (and b!2956275 b!2956079)))

(assert (=> bs!526103 (not (= lambda!110091 lambda!110079))))

(assert (=> b!2956275 true))

(assert (=> b!2956275 true))

(declare-fun b!2956271 () Bool)

(declare-fun e!1861410 () Bool)

(assert (=> b!2956271 (= e!1861410 (matchRSpec!1303 (regTwo!18845 r!17423) s!11993))))

(declare-fun b!2956272 () Bool)

(declare-fun e!1861416 () Bool)

(assert (=> b!2956272 (= e!1861416 (= s!11993 (Cons!34907 (c!484188 r!17423) Nil!34907)))))

(declare-fun d!841609 () Bool)

(declare-fun c!484328 () Bool)

(assert (=> d!841609 (= c!484328 (is-EmptyExpr!9166 r!17423))))

(declare-fun e!1861411 () Bool)

(assert (=> d!841609 (= (matchRSpec!1303 r!17423 s!11993) e!1861411)))

(declare-fun b!2956273 () Bool)

(declare-fun e!1861413 () Bool)

(assert (=> b!2956273 (= e!1861411 e!1861413)))

(declare-fun res!1219716 () Bool)

(assert (=> b!2956273 (= res!1219716 (not (is-EmptyLang!9166 r!17423)))))

(assert (=> b!2956273 (=> (not res!1219716) (not e!1861413))))

(declare-fun b!2956274 () Bool)

(declare-fun c!484325 () Bool)

(assert (=> b!2956274 (= c!484325 (is-Union!9166 r!17423))))

(declare-fun e!1861412 () Bool)

(assert (=> b!2956274 (= e!1861416 e!1861412)))

(declare-fun e!1861415 () Bool)

(declare-fun call!195809 () Bool)

(assert (=> b!2956275 (= e!1861415 call!195809)))

(declare-fun b!2956276 () Bool)

(assert (=> b!2956276 (= e!1861412 e!1861410)))

(declare-fun res!1219714 () Bool)

(assert (=> b!2956276 (= res!1219714 (matchRSpec!1303 (regOne!18845 r!17423) s!11993))))

(assert (=> b!2956276 (=> res!1219714 e!1861410)))

(declare-fun c!484327 () Bool)

(declare-fun bm!195804 () Bool)

(assert (=> bm!195804 (= call!195809 (Exists!1498 (ite c!484327 lambda!110090 lambda!110091)))))

(declare-fun e!1861414 () Bool)

(assert (=> b!2956277 (= e!1861414 call!195809)))

(declare-fun b!2956278 () Bool)

(declare-fun c!484326 () Bool)

(assert (=> b!2956278 (= c!484326 (is-ElementMatch!9166 r!17423))))

(assert (=> b!2956278 (= e!1861413 e!1861416)))

(declare-fun b!2956279 () Bool)

(declare-fun res!1219715 () Bool)

(assert (=> b!2956279 (=> res!1219715 e!1861414)))

(declare-fun call!195810 () Bool)

(assert (=> b!2956279 (= res!1219715 call!195810)))

(assert (=> b!2956279 (= e!1861415 e!1861414)))

(declare-fun b!2956280 () Bool)

(assert (=> b!2956280 (= e!1861412 e!1861415)))

(assert (=> b!2956280 (= c!484327 (is-Star!9166 r!17423))))

(declare-fun bm!195805 () Bool)

(assert (=> bm!195805 (= call!195810 (isEmpty!19183 s!11993))))

(declare-fun b!2956281 () Bool)

(assert (=> b!2956281 (= e!1861411 call!195810)))

(assert (= (and d!841609 c!484328) b!2956281))

(assert (= (and d!841609 (not c!484328)) b!2956273))

(assert (= (and b!2956273 res!1219716) b!2956278))

(assert (= (and b!2956278 c!484326) b!2956272))

(assert (= (and b!2956278 (not c!484326)) b!2956274))

(assert (= (and b!2956274 c!484325) b!2956276))

(assert (= (and b!2956274 (not c!484325)) b!2956280))

(assert (= (and b!2956276 (not res!1219714)) b!2956271))

(assert (= (and b!2956280 c!484327) b!2956279))

(assert (= (and b!2956280 (not c!484327)) b!2956275))

(assert (= (and b!2956279 (not res!1219715)) b!2956277))

(assert (= (or b!2956277 b!2956275) bm!195804))

(assert (= (or b!2956281 b!2956279) bm!195805))

(declare-fun m!3332105 () Bool)

(assert (=> b!2956271 m!3332105))

(declare-fun m!3332107 () Bool)

(assert (=> b!2956276 m!3332107))

(declare-fun m!3332109 () Bool)

(assert (=> bm!195804 m!3332109))

(assert (=> bm!195805 m!3331881))

(assert (=> b!2955793 d!841609))

(declare-fun b!2956282 () Bool)

(declare-fun e!1861423 () Bool)

(declare-fun e!1861422 () Bool)

(assert (=> b!2956282 (= e!1861423 e!1861422)))

(declare-fun res!1219724 () Bool)

(assert (=> b!2956282 (=> res!1219724 e!1861422)))

(declare-fun call!195811 () Bool)

(assert (=> b!2956282 (= res!1219724 call!195811)))

(declare-fun b!2956283 () Bool)

(declare-fun res!1219721 () Bool)

(declare-fun e!1861420 () Bool)

(assert (=> b!2956283 (=> res!1219721 e!1861420)))

(assert (=> b!2956283 (= res!1219721 (not (is-ElementMatch!9166 r!17423)))))

(declare-fun e!1861417 () Bool)

(assert (=> b!2956283 (= e!1861417 e!1861420)))

(declare-fun d!841611 () Bool)

(declare-fun e!1861418 () Bool)

(assert (=> d!841611 e!1861418))

(declare-fun c!484331 () Bool)

(assert (=> d!841611 (= c!484331 (is-EmptyExpr!9166 r!17423))))

(declare-fun lt!1033063 () Bool)

(declare-fun e!1861419 () Bool)

(assert (=> d!841611 (= lt!1033063 e!1861419)))

(declare-fun c!484329 () Bool)

(assert (=> d!841611 (= c!484329 (isEmpty!19183 s!11993))))

(assert (=> d!841611 (validRegex!3899 r!17423)))

(assert (=> d!841611 (= (matchR!4048 r!17423 s!11993) lt!1033063)))

(declare-fun bm!195806 () Bool)

(assert (=> bm!195806 (= call!195811 (isEmpty!19183 s!11993))))

(declare-fun b!2956284 () Bool)

(assert (=> b!2956284 (= e!1861417 (not lt!1033063))))

(declare-fun b!2956285 () Bool)

(assert (=> b!2956285 (= e!1861419 (nullable!2922 r!17423))))

(declare-fun b!2956286 () Bool)

(declare-fun res!1219719 () Bool)

(assert (=> b!2956286 (=> res!1219719 e!1861420)))

(declare-fun e!1861421 () Bool)

(assert (=> b!2956286 (= res!1219719 e!1861421)))

(declare-fun res!1219717 () Bool)

(assert (=> b!2956286 (=> (not res!1219717) (not e!1861421))))

(assert (=> b!2956286 (= res!1219717 lt!1033063)))

(declare-fun b!2956287 () Bool)

(declare-fun res!1219723 () Bool)

(assert (=> b!2956287 (=> (not res!1219723) (not e!1861421))))

(assert (=> b!2956287 (= res!1219723 (isEmpty!19183 (tail!4809 s!11993)))))

(declare-fun b!2956288 () Bool)

(assert (=> b!2956288 (= e!1861420 e!1861423)))

(declare-fun res!1219720 () Bool)

(assert (=> b!2956288 (=> (not res!1219720) (not e!1861423))))

(assert (=> b!2956288 (= res!1219720 (not lt!1033063))))

(declare-fun b!2956289 () Bool)

(assert (=> b!2956289 (= e!1861421 (= (head!6583 s!11993) (c!484188 r!17423)))))

(declare-fun b!2956290 () Bool)

(assert (=> b!2956290 (= e!1861422 (not (= (head!6583 s!11993) (c!484188 r!17423))))))

(declare-fun b!2956291 () Bool)

(assert (=> b!2956291 (= e!1861418 e!1861417)))

(declare-fun c!484330 () Bool)

(assert (=> b!2956291 (= c!484330 (is-EmptyLang!9166 r!17423))))

(declare-fun b!2956292 () Bool)

(assert (=> b!2956292 (= e!1861419 (matchR!4048 (derivativeStep!2524 r!17423 (head!6583 s!11993)) (tail!4809 s!11993)))))

(declare-fun b!2956293 () Bool)

(assert (=> b!2956293 (= e!1861418 (= lt!1033063 call!195811))))

(declare-fun b!2956294 () Bool)

(declare-fun res!1219718 () Bool)

(assert (=> b!2956294 (=> (not res!1219718) (not e!1861421))))

(assert (=> b!2956294 (= res!1219718 (not call!195811))))

(declare-fun b!2956295 () Bool)

(declare-fun res!1219722 () Bool)

(assert (=> b!2956295 (=> res!1219722 e!1861422)))

(assert (=> b!2956295 (= res!1219722 (not (isEmpty!19183 (tail!4809 s!11993))))))

(assert (= (and d!841611 c!484329) b!2956285))

(assert (= (and d!841611 (not c!484329)) b!2956292))

(assert (= (and d!841611 c!484331) b!2956293))

(assert (= (and d!841611 (not c!484331)) b!2956291))

(assert (= (and b!2956291 c!484330) b!2956284))

(assert (= (and b!2956291 (not c!484330)) b!2956283))

(assert (= (and b!2956283 (not res!1219721)) b!2956286))

(assert (= (and b!2956286 res!1219717) b!2956294))

(assert (= (and b!2956294 res!1219718) b!2956287))

(assert (= (and b!2956287 res!1219723) b!2956289))

(assert (= (and b!2956286 (not res!1219719)) b!2956288))

(assert (= (and b!2956288 res!1219720) b!2956282))

(assert (= (and b!2956282 (not res!1219724)) b!2956295))

(assert (= (and b!2956295 (not res!1219722)) b!2956290))

(assert (= (or b!2956293 b!2956282 b!2956294) bm!195806))

(assert (=> b!2956290 m!3331993))

(assert (=> bm!195806 m!3331881))

(assert (=> b!2956287 m!3331995))

(assert (=> b!2956287 m!3331995))

(assert (=> b!2956287 m!3331997))

(assert (=> b!2956295 m!3331995))

(assert (=> b!2956295 m!3331995))

(assert (=> b!2956295 m!3331997))

(declare-fun m!3332111 () Bool)

(assert (=> b!2956285 m!3332111))

(assert (=> d!841611 m!3331881))

(assert (=> d!841611 m!3331891))

(assert (=> b!2956289 m!3331993))

(assert (=> b!2956292 m!3331993))

(assert (=> b!2956292 m!3331993))

(declare-fun m!3332113 () Bool)

(assert (=> b!2956292 m!3332113))

(assert (=> b!2956292 m!3331995))

(assert (=> b!2956292 m!3332113))

(assert (=> b!2956292 m!3331995))

(declare-fun m!3332115 () Bool)

(assert (=> b!2956292 m!3332115))

(assert (=> b!2955793 d!841611))

(declare-fun d!841613 () Bool)

(assert (=> d!841613 (= (matchR!4048 r!17423 s!11993) (matchRSpec!1303 r!17423 s!11993))))

(declare-fun lt!1033064 () Unit!48711)

(assert (=> d!841613 (= lt!1033064 (choose!17483 r!17423 s!11993))))

(assert (=> d!841613 (validRegex!3899 r!17423)))

(assert (=> d!841613 (= (mainMatchTheorem!1303 r!17423 s!11993) lt!1033064)))

(declare-fun bs!526104 () Bool)

(assert (= bs!526104 d!841613))

(assert (=> bs!526104 m!3331887))

(assert (=> bs!526104 m!3331885))

(declare-fun m!3332117 () Bool)

(assert (=> bs!526104 m!3332117))

(assert (=> bs!526104 m!3331891))

(assert (=> b!2955793 d!841613))

(declare-fun b!2956296 () Bool)

(declare-fun e!1861428 () Bool)

(declare-fun e!1861430 () Bool)

(assert (=> b!2956296 (= e!1861428 e!1861430)))

(declare-fun res!1219725 () Bool)

(assert (=> b!2956296 (= res!1219725 (not (nullable!2922 (reg!9495 r!17423))))))

(assert (=> b!2956296 (=> (not res!1219725) (not e!1861430))))

(declare-fun b!2956297 () Bool)

(declare-fun e!1861426 () Bool)

(assert (=> b!2956297 (= e!1861428 e!1861426)))

(declare-fun c!484332 () Bool)

(assert (=> b!2956297 (= c!484332 (is-Union!9166 r!17423))))

(declare-fun b!2956298 () Bool)

(declare-fun res!1219729 () Bool)

(declare-fun e!1861425 () Bool)

(assert (=> b!2956298 (=> res!1219729 e!1861425)))

(assert (=> b!2956298 (= res!1219729 (not (is-Concat!14487 r!17423)))))

(assert (=> b!2956298 (= e!1861426 e!1861425)))

(declare-fun c!484333 () Bool)

(declare-fun bm!195807 () Bool)

(declare-fun call!195813 () Bool)

(assert (=> bm!195807 (= call!195813 (validRegex!3899 (ite c!484333 (reg!9495 r!17423) (ite c!484332 (regOne!18845 r!17423) (regTwo!18844 r!17423)))))))

(declare-fun b!2956299 () Bool)

(declare-fun res!1219728 () Bool)

(declare-fun e!1861424 () Bool)

(assert (=> b!2956299 (=> (not res!1219728) (not e!1861424))))

(declare-fun call!195814 () Bool)

(assert (=> b!2956299 (= res!1219728 call!195814)))

(assert (=> b!2956299 (= e!1861426 e!1861424)))

(declare-fun d!841615 () Bool)

(declare-fun res!1219726 () Bool)

(declare-fun e!1861427 () Bool)

(assert (=> d!841615 (=> res!1219726 e!1861427)))

(assert (=> d!841615 (= res!1219726 (is-ElementMatch!9166 r!17423))))

(assert (=> d!841615 (= (validRegex!3899 r!17423) e!1861427)))

(declare-fun b!2956300 () Bool)

(declare-fun e!1861429 () Bool)

(assert (=> b!2956300 (= e!1861425 e!1861429)))

(declare-fun res!1219727 () Bool)

(assert (=> b!2956300 (=> (not res!1219727) (not e!1861429))))

(declare-fun call!195812 () Bool)

(assert (=> b!2956300 (= res!1219727 call!195812)))

(declare-fun bm!195808 () Bool)

(assert (=> bm!195808 (= call!195814 call!195813)))

(declare-fun b!2956301 () Bool)

(assert (=> b!2956301 (= e!1861430 call!195813)))

(declare-fun b!2956302 () Bool)

(assert (=> b!2956302 (= e!1861424 call!195812)))

(declare-fun bm!195809 () Bool)

(assert (=> bm!195809 (= call!195812 (validRegex!3899 (ite c!484332 (regTwo!18845 r!17423) (regOne!18844 r!17423))))))

(declare-fun b!2956303 () Bool)

(assert (=> b!2956303 (= e!1861429 call!195814)))

(declare-fun b!2956304 () Bool)

(assert (=> b!2956304 (= e!1861427 e!1861428)))

(assert (=> b!2956304 (= c!484333 (is-Star!9166 r!17423))))

(assert (= (and d!841615 (not res!1219726)) b!2956304))

(assert (= (and b!2956304 c!484333) b!2956296))

(assert (= (and b!2956304 (not c!484333)) b!2956297))

(assert (= (and b!2956296 res!1219725) b!2956301))

(assert (= (and b!2956297 c!484332) b!2956299))

(assert (= (and b!2956297 (not c!484332)) b!2956298))

(assert (= (and b!2956299 res!1219728) b!2956302))

(assert (= (and b!2956298 (not res!1219729)) b!2956300))

(assert (= (and b!2956300 res!1219727) b!2956303))

(assert (= (or b!2956299 b!2956303) bm!195808))

(assert (= (or b!2956302 b!2956300) bm!195809))

(assert (= (or b!2956301 bm!195808) bm!195807))

(declare-fun m!3332119 () Bool)

(assert (=> b!2956296 m!3332119))

(declare-fun m!3332121 () Bool)

(assert (=> bm!195807 m!3332121))

(declare-fun m!3332123 () Bool)

(assert (=> bm!195809 m!3332123))

(assert (=> start!286558 d!841615))

(declare-fun d!841617 () Bool)

(assert (=> d!841617 (= (isEmptyExpr!369 lt!1032956) (is-EmptyExpr!9166 lt!1032956))))

(assert (=> b!2955782 d!841617))

(declare-fun e!1861440 () Bool)

(assert (=> b!2955789 (= tp!943958 e!1861440)))

(declare-fun b!2956330 () Bool)

(declare-fun tp!943991 () Bool)

(declare-fun tp!943989 () Bool)

(assert (=> b!2956330 (= e!1861440 (and tp!943991 tp!943989))))

(declare-fun b!2956331 () Bool)

(declare-fun tp!943990 () Bool)

(assert (=> b!2956331 (= e!1861440 tp!943990)))

(declare-fun b!2956332 () Bool)

(declare-fun tp!943992 () Bool)

(declare-fun tp!943988 () Bool)

(assert (=> b!2956332 (= e!1861440 (and tp!943992 tp!943988))))

(declare-fun b!2956329 () Bool)

(assert (=> b!2956329 (= e!1861440 tp_is_empty!15895)))

(assert (= (and b!2955789 (is-ElementMatch!9166 (regOne!18845 r!17423))) b!2956329))

(assert (= (and b!2955789 (is-Concat!14487 (regOne!18845 r!17423))) b!2956330))

(assert (= (and b!2955789 (is-Star!9166 (regOne!18845 r!17423))) b!2956331))

(assert (= (and b!2955789 (is-Union!9166 (regOne!18845 r!17423))) b!2956332))

(declare-fun e!1861441 () Bool)

(assert (=> b!2955789 (= tp!943954 e!1861441)))

(declare-fun b!2956334 () Bool)

(declare-fun tp!943996 () Bool)

(declare-fun tp!943994 () Bool)

(assert (=> b!2956334 (= e!1861441 (and tp!943996 tp!943994))))

(declare-fun b!2956335 () Bool)

(declare-fun tp!943995 () Bool)

(assert (=> b!2956335 (= e!1861441 tp!943995)))

(declare-fun b!2956336 () Bool)

(declare-fun tp!943997 () Bool)

(declare-fun tp!943993 () Bool)

(assert (=> b!2956336 (= e!1861441 (and tp!943997 tp!943993))))

(declare-fun b!2956333 () Bool)

(assert (=> b!2956333 (= e!1861441 tp_is_empty!15895)))

(assert (= (and b!2955789 (is-ElementMatch!9166 (regTwo!18845 r!17423))) b!2956333))

(assert (= (and b!2955789 (is-Concat!14487 (regTwo!18845 r!17423))) b!2956334))

(assert (= (and b!2955789 (is-Star!9166 (regTwo!18845 r!17423))) b!2956335))

(assert (= (and b!2955789 (is-Union!9166 (regTwo!18845 r!17423))) b!2956336))

(declare-fun b!2956341 () Bool)

(declare-fun e!1861444 () Bool)

(declare-fun tp!944000 () Bool)

(assert (=> b!2956341 (= e!1861444 (and tp_is_empty!15895 tp!944000))))

(assert (=> b!2955785 (= tp!943955 e!1861444)))

(assert (= (and b!2955785 (is-Cons!34907 (t!234096 s!11993))) b!2956341))

(declare-fun e!1861445 () Bool)

(assert (=> b!2955790 (= tp!943956 e!1861445)))

(declare-fun b!2956343 () Bool)

(declare-fun tp!944004 () Bool)

(declare-fun tp!944002 () Bool)

(assert (=> b!2956343 (= e!1861445 (and tp!944004 tp!944002))))

(declare-fun b!2956344 () Bool)

(declare-fun tp!944003 () Bool)

(assert (=> b!2956344 (= e!1861445 tp!944003)))

(declare-fun b!2956345 () Bool)

(declare-fun tp!944005 () Bool)

(declare-fun tp!944001 () Bool)

(assert (=> b!2956345 (= e!1861445 (and tp!944005 tp!944001))))

(declare-fun b!2956342 () Bool)

(assert (=> b!2956342 (= e!1861445 tp_is_empty!15895)))

(assert (= (and b!2955790 (is-ElementMatch!9166 (reg!9495 r!17423))) b!2956342))

(assert (= (and b!2955790 (is-Concat!14487 (reg!9495 r!17423))) b!2956343))

(assert (= (and b!2955790 (is-Star!9166 (reg!9495 r!17423))) b!2956344))

(assert (= (and b!2955790 (is-Union!9166 (reg!9495 r!17423))) b!2956345))

(declare-fun e!1861446 () Bool)

(assert (=> b!2955781 (= tp!943959 e!1861446)))

(declare-fun b!2956347 () Bool)

(declare-fun tp!944009 () Bool)

(declare-fun tp!944007 () Bool)

(assert (=> b!2956347 (= e!1861446 (and tp!944009 tp!944007))))

(declare-fun b!2956348 () Bool)

(declare-fun tp!944008 () Bool)

(assert (=> b!2956348 (= e!1861446 tp!944008)))

(declare-fun b!2956349 () Bool)

(declare-fun tp!944010 () Bool)

(declare-fun tp!944006 () Bool)

(assert (=> b!2956349 (= e!1861446 (and tp!944010 tp!944006))))

(declare-fun b!2956346 () Bool)

(assert (=> b!2956346 (= e!1861446 tp_is_empty!15895)))

(assert (= (and b!2955781 (is-ElementMatch!9166 (regOne!18844 r!17423))) b!2956346))

(assert (= (and b!2955781 (is-Concat!14487 (regOne!18844 r!17423))) b!2956347))

(assert (= (and b!2955781 (is-Star!9166 (regOne!18844 r!17423))) b!2956348))

(assert (= (and b!2955781 (is-Union!9166 (regOne!18844 r!17423))) b!2956349))

(declare-fun e!1861447 () Bool)

(assert (=> b!2955781 (= tp!943957 e!1861447)))

(declare-fun b!2956351 () Bool)

(declare-fun tp!944014 () Bool)

(declare-fun tp!944012 () Bool)

(assert (=> b!2956351 (= e!1861447 (and tp!944014 tp!944012))))

(declare-fun b!2956352 () Bool)

(declare-fun tp!944013 () Bool)

(assert (=> b!2956352 (= e!1861447 tp!944013)))

(declare-fun b!2956353 () Bool)

(declare-fun tp!944015 () Bool)

(declare-fun tp!944011 () Bool)

(assert (=> b!2956353 (= e!1861447 (and tp!944015 tp!944011))))

(declare-fun b!2956350 () Bool)

(assert (=> b!2956350 (= e!1861447 tp_is_empty!15895)))

(assert (= (and b!2955781 (is-ElementMatch!9166 (regTwo!18844 r!17423))) b!2956350))

(assert (= (and b!2955781 (is-Concat!14487 (regTwo!18844 r!17423))) b!2956351))

(assert (= (and b!2955781 (is-Star!9166 (regTwo!18844 r!17423))) b!2956352))

(assert (= (and b!2955781 (is-Union!9166 (regTwo!18844 r!17423))) b!2956353))

(push 1)

(assert (not b!2956019))

(assert (not b!2956289))

(assert (not bm!195806))

(assert (not b!2956016))

(assert (not bm!195804))

(assert (not b!2956018))

(assert (not d!841597))

(assert (not d!841613))

(assert (not bm!195803))

(assert (not b!2956073))

(assert (not b!2956343))

(assert (not bm!195742))

(assert (not bm!195744))

(assert (not b!2956352))

(assert (not bm!195733))

(assert (not b!2956271))

(assert (not bm!195805))

(assert (not b!2956349))

(assert (not b!2955944))

(assert (not b!2955964))

(assert (not bm!195809))

(assert (not b!2956334))

(assert (not d!841599))

(assert (not b!2956347))

(assert (not b!2956331))

(assert (not b!2955939))

(assert (not b!2956351))

(assert (not bm!195747))

(assert (not bm!195730))

(assert (not d!841589))

(assert (not b!2956292))

(assert (not bm!195801))

(assert (not b!2956335))

(assert (not bm!195745))

(assert (not b!2956143))

(assert (not d!841585))

(assert (not d!841567))

(assert (not bm!195734))

(assert (not b!2956332))

(assert (not b!2956142))

(assert (not b!2956140))

(assert (not b!2956336))

(assert (not b!2956330))

(assert (not b!2956348))

(assert (not b!2956353))

(assert (not b!2956345))

(assert (not b!2956262))

(assert (not b!2956139))

(assert (not b!2956341))

(assert (not d!841563))

(assert (not d!841581))

(assert (not bm!195755))

(assert (not d!841601))

(assert (not b!2956285))

(assert (not b!2955969))

(assert (not b!2956290))

(assert (not b!2956344))

(assert (not b!2956137))

(assert (not d!841611))

(assert (not b!2956021))

(assert tp_is_empty!15895)

(assert (not bm!195807))

(assert (not d!841571))

(assert (not bm!195761))

(assert (not b!2956024))

(assert (not b!2956078))

(assert (not bm!195736))

(assert (not b!2956296))

(assert (not b!2956295))

(assert (not b!2956287))

(assert (not d!841587))

(assert (not b!2956141))

(assert (not bm!195741))

(assert (not bm!195731))

(assert (not b!2956276))

(assert (not bm!195760))

(assert (not b!2956014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

