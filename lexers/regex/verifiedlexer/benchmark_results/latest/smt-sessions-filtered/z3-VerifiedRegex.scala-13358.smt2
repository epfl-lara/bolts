; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724286 () Bool)

(assert start!724286)

(declare-fun b!7470942 () Bool)

(assert (=> b!7470942 true))

(assert (=> b!7470942 true))

(assert (=> b!7470942 true))

(declare-fun lambda!462677 () Int)

(declare-fun lambda!462676 () Int)

(assert (=> b!7470942 (not (= lambda!462677 lambda!462676))))

(assert (=> b!7470942 true))

(assert (=> b!7470942 true))

(assert (=> b!7470942 true))

(declare-fun bs!1931169 () Bool)

(declare-fun b!7470943 () Bool)

(assert (= bs!1931169 (and b!7470943 b!7470942)))

(declare-datatypes ((C!39432 0))(
  ( (C!39433 (val!30114 Int)) )
))
(declare-datatypes ((Regex!19579 0))(
  ( (ElementMatch!19579 (c!1380430 C!39432)) (Concat!28424 (regOne!39670 Regex!19579) (regTwo!39670 Regex!19579)) (EmptyExpr!19579) (Star!19579 (reg!19908 Regex!19579)) (EmptyLang!19579) (Union!19579 (regOne!39671 Regex!19579) (regTwo!39671 Regex!19579)) )
))
(declare-fun r2!5783 () Regex!19579)

(declare-fun lt!2625746 () Regex!19579)

(declare-fun lambda!462678 () Int)

(assert (=> bs!1931169 (= (= r2!5783 lt!2625746) (= lambda!462678 lambda!462676))))

(assert (=> bs!1931169 (not (= lambda!462678 lambda!462677))))

(assert (=> b!7470943 true))

(assert (=> b!7470943 true))

(assert (=> b!7470943 true))

(declare-fun lambda!462679 () Int)

(assert (=> bs!1931169 (not (= lambda!462679 lambda!462676))))

(assert (=> bs!1931169 (= (= r2!5783 lt!2625746) (= lambda!462679 lambda!462677))))

(assert (=> b!7470943 (not (= lambda!462679 lambda!462678))))

(assert (=> b!7470943 true))

(assert (=> b!7470943 true))

(assert (=> b!7470943 true))

(declare-fun b!7470935 () Bool)

(declare-fun e!4457366 () Bool)

(declare-fun tp!2166282 () Bool)

(declare-fun tp!2166283 () Bool)

(assert (=> b!7470935 (= e!4457366 (and tp!2166282 tp!2166283))))

(declare-fun b!7470936 () Bool)

(declare-fun tp!2166280 () Bool)

(declare-fun tp!2166270 () Bool)

(assert (=> b!7470936 (= e!4457366 (and tp!2166280 tp!2166270))))

(declare-fun b!7470937 () Bool)

(declare-fun res!2997114 () Bool)

(declare-fun e!4457368 () Bool)

(assert (=> b!7470937 (=> (not res!2997114) (not e!4457368))))

(declare-fun rTail!78 () Regex!19579)

(declare-fun validRegex!10093 (Regex!19579) Bool)

(assert (=> b!7470937 (= res!2997114 (validRegex!10093 rTail!78))))

(declare-fun b!7470938 () Bool)

(declare-fun tp!2166277 () Bool)

(assert (=> b!7470938 (= e!4457366 tp!2166277)))

(declare-fun b!7470939 () Bool)

(declare-fun e!4457367 () Bool)

(declare-fun tp_is_empty!49447 () Bool)

(assert (=> b!7470939 (= e!4457367 tp_is_empty!49447)))

(declare-fun b!7470941 () Bool)

(declare-fun tp!2166272 () Bool)

(assert (=> b!7470941 (= e!4457367 tp!2166272)))

(declare-fun e!4457370 () Bool)

(declare-fun e!4457374 () Bool)

(assert (=> b!7470942 (= e!4457370 e!4457374)))

(declare-fun res!2997109 () Bool)

(assert (=> b!7470942 (=> res!2997109 e!4457374)))

(declare-fun lt!2625733 () Bool)

(declare-fun lt!2625742 () Bool)

(assert (=> b!7470942 (= res!2997109 (or lt!2625733 (not lt!2625742)))))

(declare-fun Exists!4198 (Int) Bool)

(assert (=> b!7470942 (= (Exists!4198 lambda!462676) (Exists!4198 lambda!462677))))

(declare-datatypes ((List!72295 0))(
  ( (Nil!72171) (Cons!72171 (h!78619 C!39432) (t!386864 List!72295)) )
))
(declare-fun s!13591 () List!72295)

(declare-datatypes ((Unit!165993 0))(
  ( (Unit!165994) )
))
(declare-fun lt!2625743 () Unit!165993)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2532 (Regex!19579 Regex!19579 List!72295) Unit!165993)

(assert (=> b!7470942 (= lt!2625743 (lemmaExistCutMatchRandMatchRSpecEquivalent!2532 lt!2625746 rTail!78 s!13591))))

(assert (=> b!7470942 (= lt!2625733 (Exists!4198 lambda!462676))))

(declare-datatypes ((tuple2!68608 0))(
  ( (tuple2!68609 (_1!37607 List!72295) (_2!37607 List!72295)) )
))
(declare-datatypes ((Option!17136 0))(
  ( (None!17135) (Some!17135 (v!54264 tuple2!68608)) )
))
(declare-fun isDefined!13825 (Option!17136) Bool)

(declare-fun findConcatSeparation!3258 (Regex!19579 Regex!19579 List!72295 List!72295 List!72295) Option!17136)

(assert (=> b!7470942 (= lt!2625733 (isDefined!13825 (findConcatSeparation!3258 lt!2625746 rTail!78 Nil!72171 s!13591 s!13591)))))

(declare-fun lt!2625737 () Unit!165993)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3016 (Regex!19579 Regex!19579 List!72295) Unit!165993)

(assert (=> b!7470942 (= lt!2625737 (lemmaFindConcatSeparationEquivalentToExists!3016 lt!2625746 rTail!78 s!13591))))

(declare-fun e!4457373 () Bool)

(declare-fun e!4457371 () Bool)

(assert (=> b!7470943 (= e!4457373 e!4457371)))

(declare-fun res!2997108 () Bool)

(assert (=> b!7470943 (=> res!2997108 e!4457371)))

(declare-fun lt!2625741 () tuple2!68608)

(declare-fun matchR!9343 (Regex!19579 List!72295) Bool)

(assert (=> b!7470943 (= res!2997108 (not (matchR!9343 r2!5783 (_1!37607 lt!2625741))))))

(declare-fun lt!2625739 () Option!17136)

(declare-fun get!25232 (Option!17136) tuple2!68608)

(assert (=> b!7470943 (= lt!2625741 (get!25232 lt!2625739))))

(assert (=> b!7470943 (= (Exists!4198 lambda!462678) (Exists!4198 lambda!462679))))

(declare-fun lt!2625748 () Unit!165993)

(assert (=> b!7470943 (= lt!2625748 (lemmaExistCutMatchRandMatchRSpecEquivalent!2532 r2!5783 rTail!78 s!13591))))

(assert (=> b!7470943 (= (isDefined!13825 lt!2625739) (Exists!4198 lambda!462678))))

(assert (=> b!7470943 (= lt!2625739 (findConcatSeparation!3258 r2!5783 rTail!78 Nil!72171 s!13591 s!13591))))

(declare-fun lt!2625735 () Unit!165993)

(assert (=> b!7470943 (= lt!2625735 (lemmaFindConcatSeparationEquivalentToExists!3016 r2!5783 rTail!78 s!13591))))

(declare-fun b!7470944 () Bool)

(declare-fun tp!2166276 () Bool)

(declare-fun tp!2166268 () Bool)

(assert (=> b!7470944 (= e!4457367 (and tp!2166276 tp!2166268))))

(declare-fun b!7470945 () Bool)

(assert (=> b!7470945 (= e!4457374 e!4457373)))

(declare-fun res!2997107 () Bool)

(assert (=> b!7470945 (=> res!2997107 e!4457373)))

(declare-fun lt!2625740 () Bool)

(declare-fun lt!2625750 () Bool)

(assert (=> b!7470945 (= res!2997107 (or (and (not lt!2625740) (not lt!2625750)) lt!2625740))))

(declare-fun lt!2625738 () Regex!19579)

(declare-fun matchRSpec!4258 (Regex!19579 List!72295) Bool)

(assert (=> b!7470945 (= lt!2625750 (matchRSpec!4258 lt!2625738 s!13591))))

(assert (=> b!7470945 (= lt!2625750 (matchR!9343 lt!2625738 s!13591))))

(declare-fun lt!2625736 () Unit!165993)

(declare-fun mainMatchTheorem!4252 (Regex!19579 List!72295) Unit!165993)

(assert (=> b!7470945 (= lt!2625736 (mainMatchTheorem!4252 lt!2625738 s!13591))))

(declare-fun lt!2625744 () Regex!19579)

(assert (=> b!7470945 (= lt!2625740 (matchRSpec!4258 lt!2625744 s!13591))))

(assert (=> b!7470945 (= lt!2625740 (matchR!9343 lt!2625744 s!13591))))

(declare-fun lt!2625747 () Unit!165993)

(assert (=> b!7470945 (= lt!2625747 (mainMatchTheorem!4252 lt!2625744 s!13591))))

(declare-fun b!7470946 () Bool)

(declare-fun tp!2166269 () Bool)

(declare-fun tp!2166275 () Bool)

(assert (=> b!7470946 (= e!4457367 (and tp!2166269 tp!2166275))))

(declare-fun b!7470947 () Bool)

(assert (=> b!7470947 (= e!4457366 tp_is_empty!49447)))

(declare-fun b!7470948 () Bool)

(declare-fun res!2997110 () Bool)

(assert (=> b!7470948 (=> res!2997110 e!4457371)))

(assert (=> b!7470948 (= res!2997110 (not (matchR!9343 rTail!78 (_2!37607 lt!2625741))))))

(declare-fun b!7470949 () Bool)

(declare-fun e!4457369 () Bool)

(declare-fun tp!2166278 () Bool)

(assert (=> b!7470949 (= e!4457369 (and tp_is_empty!49447 tp!2166278))))

(declare-fun b!7470950 () Bool)

(declare-fun e!4457372 () Bool)

(declare-fun tp!2166273 () Bool)

(declare-fun tp!2166279 () Bool)

(assert (=> b!7470950 (= e!4457372 (and tp!2166273 tp!2166279))))

(declare-fun b!7470951 () Bool)

(assert (=> b!7470951 (= e!4457368 (not e!4457370))))

(declare-fun res!2997112 () Bool)

(assert (=> b!7470951 (=> res!2997112 e!4457370)))

(declare-fun lt!2625745 () Bool)

(assert (=> b!7470951 (= res!2997112 lt!2625745)))

(declare-fun lt!2625732 () Regex!19579)

(assert (=> b!7470951 (= lt!2625742 (matchRSpec!4258 lt!2625732 s!13591))))

(assert (=> b!7470951 (= lt!2625742 (matchR!9343 lt!2625732 s!13591))))

(declare-fun lt!2625749 () Unit!165993)

(assert (=> b!7470951 (= lt!2625749 (mainMatchTheorem!4252 lt!2625732 s!13591))))

(declare-fun lt!2625751 () Regex!19579)

(assert (=> b!7470951 (= lt!2625745 (matchRSpec!4258 lt!2625751 s!13591))))

(assert (=> b!7470951 (= lt!2625745 (matchR!9343 lt!2625751 s!13591))))

(declare-fun lt!2625734 () Unit!165993)

(assert (=> b!7470951 (= lt!2625734 (mainMatchTheorem!4252 lt!2625751 s!13591))))

(assert (=> b!7470951 (= lt!2625732 (Union!19579 lt!2625744 lt!2625738))))

(assert (=> b!7470951 (= lt!2625738 (Concat!28424 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19579)

(assert (=> b!7470951 (= lt!2625744 (Concat!28424 r1!5845 rTail!78))))

(assert (=> b!7470951 (= lt!2625751 (Concat!28424 lt!2625746 rTail!78))))

(assert (=> b!7470951 (= lt!2625746 (Union!19579 r1!5845 r2!5783))))

(declare-fun res!2997113 () Bool)

(assert (=> start!724286 (=> (not res!2997113) (not e!4457368))))

(assert (=> start!724286 (= res!2997113 (validRegex!10093 r1!5845))))

(assert (=> start!724286 e!4457368))

(assert (=> start!724286 e!4457366))

(assert (=> start!724286 e!4457372))

(assert (=> start!724286 e!4457367))

(assert (=> start!724286 e!4457369))

(declare-fun b!7470940 () Bool)

(declare-fun res!2997111 () Bool)

(assert (=> b!7470940 (=> (not res!2997111) (not e!4457368))))

(assert (=> b!7470940 (= res!2997111 (validRegex!10093 r2!5783))))

(declare-fun b!7470952 () Bool)

(declare-fun tp!2166281 () Bool)

(assert (=> b!7470952 (= e!4457372 tp!2166281)))

(declare-fun b!7470953 () Bool)

(declare-fun tp!2166271 () Bool)

(declare-fun tp!2166274 () Bool)

(assert (=> b!7470953 (= e!4457372 (and tp!2166271 tp!2166274))))

(declare-fun b!7470954 () Bool)

(assert (=> b!7470954 (= e!4457371 true)))

(declare-fun b!7470955 () Bool)

(assert (=> b!7470955 (= e!4457372 tp_is_empty!49447)))

(assert (= (and start!724286 res!2997113) b!7470940))

(assert (= (and b!7470940 res!2997111) b!7470937))

(assert (= (and b!7470937 res!2997114) b!7470951))

(assert (= (and b!7470951 (not res!2997112)) b!7470942))

(assert (= (and b!7470942 (not res!2997109)) b!7470945))

(assert (= (and b!7470945 (not res!2997107)) b!7470943))

(assert (= (and b!7470943 (not res!2997108)) b!7470948))

(assert (= (and b!7470948 (not res!2997110)) b!7470954))

(get-info :version)

(assert (= (and start!724286 ((_ is ElementMatch!19579) r1!5845)) b!7470947))

(assert (= (and start!724286 ((_ is Concat!28424) r1!5845)) b!7470936))

(assert (= (and start!724286 ((_ is Star!19579) r1!5845)) b!7470938))

(assert (= (and start!724286 ((_ is Union!19579) r1!5845)) b!7470935))

(assert (= (and start!724286 ((_ is ElementMatch!19579) r2!5783)) b!7470955))

(assert (= (and start!724286 ((_ is Concat!28424) r2!5783)) b!7470950))

(assert (= (and start!724286 ((_ is Star!19579) r2!5783)) b!7470952))

(assert (= (and start!724286 ((_ is Union!19579) r2!5783)) b!7470953))

(assert (= (and start!724286 ((_ is ElementMatch!19579) rTail!78)) b!7470939))

(assert (= (and start!724286 ((_ is Concat!28424) rTail!78)) b!7470946))

(assert (= (and start!724286 ((_ is Star!19579) rTail!78)) b!7470941))

(assert (= (and start!724286 ((_ is Union!19579) rTail!78)) b!7470944))

(assert (= (and start!724286 ((_ is Cons!72171) s!13591)) b!7470949))

(declare-fun m!8067856 () Bool)

(assert (=> b!7470951 m!8067856))

(declare-fun m!8067858 () Bool)

(assert (=> b!7470951 m!8067858))

(declare-fun m!8067860 () Bool)

(assert (=> b!7470951 m!8067860))

(declare-fun m!8067862 () Bool)

(assert (=> b!7470951 m!8067862))

(declare-fun m!8067864 () Bool)

(assert (=> b!7470951 m!8067864))

(declare-fun m!8067866 () Bool)

(assert (=> b!7470951 m!8067866))

(declare-fun m!8067868 () Bool)

(assert (=> b!7470948 m!8067868))

(declare-fun m!8067870 () Bool)

(assert (=> b!7470945 m!8067870))

(declare-fun m!8067872 () Bool)

(assert (=> b!7470945 m!8067872))

(declare-fun m!8067874 () Bool)

(assert (=> b!7470945 m!8067874))

(declare-fun m!8067876 () Bool)

(assert (=> b!7470945 m!8067876))

(declare-fun m!8067878 () Bool)

(assert (=> b!7470945 m!8067878))

(declare-fun m!8067880 () Bool)

(assert (=> b!7470945 m!8067880))

(declare-fun m!8067882 () Bool)

(assert (=> b!7470942 m!8067882))

(declare-fun m!8067884 () Bool)

(assert (=> b!7470942 m!8067884))

(declare-fun m!8067886 () Bool)

(assert (=> b!7470942 m!8067886))

(declare-fun m!8067888 () Bool)

(assert (=> b!7470942 m!8067888))

(declare-fun m!8067890 () Bool)

(assert (=> b!7470942 m!8067890))

(assert (=> b!7470942 m!8067884))

(declare-fun m!8067892 () Bool)

(assert (=> b!7470942 m!8067892))

(assert (=> b!7470942 m!8067890))

(declare-fun m!8067894 () Bool)

(assert (=> b!7470940 m!8067894))

(declare-fun m!8067896 () Bool)

(assert (=> b!7470943 m!8067896))

(declare-fun m!8067898 () Bool)

(assert (=> b!7470943 m!8067898))

(declare-fun m!8067900 () Bool)

(assert (=> b!7470943 m!8067900))

(assert (=> b!7470943 m!8067900))

(declare-fun m!8067902 () Bool)

(assert (=> b!7470943 m!8067902))

(declare-fun m!8067904 () Bool)

(assert (=> b!7470943 m!8067904))

(declare-fun m!8067906 () Bool)

(assert (=> b!7470943 m!8067906))

(declare-fun m!8067908 () Bool)

(assert (=> b!7470943 m!8067908))

(declare-fun m!8067910 () Bool)

(assert (=> b!7470943 m!8067910))

(declare-fun m!8067912 () Bool)

(assert (=> start!724286 m!8067912))

(declare-fun m!8067914 () Bool)

(assert (=> b!7470937 m!8067914))

(check-sat (not b!7470950) (not b!7470951) (not b!7470953) (not b!7470936) (not b!7470935) (not b!7470946) (not b!7470937) (not b!7470942) (not b!7470943) (not b!7470938) tp_is_empty!49447 (not b!7470949) (not b!7470945) (not b!7470940) (not b!7470944) (not b!7470952) (not b!7470948) (not b!7470941) (not start!724286))
(check-sat)
