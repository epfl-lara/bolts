; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232590 () Bool)

(assert start!232590)

(declare-fun b!2369972 () Bool)

(assert (=> b!2369972 true))

(assert (=> b!2369972 true))

(declare-fun lambda!87680 () Int)

(declare-fun lambda!87679 () Int)

(assert (=> b!2369972 (not (= lambda!87680 lambda!87679))))

(assert (=> b!2369972 true))

(assert (=> b!2369972 true))

(declare-fun b!2369961 () Bool)

(declare-fun e!1512738 () Bool)

(declare-fun tp_is_empty!11297 () Bool)

(assert (=> b!2369961 (= e!1512738 tp_is_empty!11297)))

(declare-fun b!2369962 () Bool)

(declare-fun tp!757643 () Bool)

(assert (=> b!2369962 (= e!1512738 tp!757643)))

(declare-fun b!2369963 () Bool)

(declare-fun res!1005911 () Bool)

(declare-fun e!1512741 () Bool)

(assert (=> b!2369963 (=> res!1005911 e!1512741)))

(declare-datatypes ((C!14042 0))(
  ( (C!14043 (val!8263 Int)) )
))
(declare-datatypes ((Regex!6942 0))(
  ( (ElementMatch!6942 (c!376694 C!14042)) (Concat!11578 (regOne!14396 Regex!6942) (regTwo!14396 Regex!6942)) (EmptyExpr!6942) (Star!6942 (reg!7271 Regex!6942)) (EmptyLang!6942) (Union!6942 (regOne!14397 Regex!6942) (regTwo!14397 Regex!6942)) )
))
(declare-datatypes ((List!28122 0))(
  ( (Nil!28024) (Cons!28024 (h!33425 Regex!6942) (t!208099 List!28122)) )
))
(declare-fun l!9164 () List!28122)

(declare-fun isEmpty!15953 (List!28122) Bool)

(assert (=> b!2369963 (= res!1005911 (isEmpty!15953 l!9164))))

(declare-fun b!2369964 () Bool)

(declare-fun e!1512739 () Bool)

(declare-fun lt!865856 () Regex!6942)

(declare-datatypes ((List!28123 0))(
  ( (Nil!28025) (Cons!28025 (h!33426 C!14042) (t!208100 List!28123)) )
))
(declare-fun s!9460 () List!28123)

(declare-fun matchR!3059 (Regex!6942 List!28123) Bool)

(assert (=> b!2369964 (= e!1512739 (matchR!3059 lt!865856 s!9460))))

(declare-fun b!2369965 () Bool)

(declare-fun e!1512733 () Bool)

(declare-fun e!1512740 () Bool)

(assert (=> b!2369965 (= e!1512733 (not e!1512740))))

(declare-fun res!1005909 () Bool)

(assert (=> b!2369965 (=> res!1005909 e!1512740)))

(declare-fun r!13927 () Regex!6942)

(assert (=> b!2369965 (= res!1005909 (not (is-Concat!11578 r!13927)))))

(declare-fun lt!865861 () Bool)

(declare-fun lt!865853 () Bool)

(assert (=> b!2369965 (= lt!865861 lt!865853)))

(declare-fun matchRSpec!791 (Regex!6942 List!28123) Bool)

(assert (=> b!2369965 (= lt!865853 (matchRSpec!791 r!13927 s!9460))))

(assert (=> b!2369965 (= lt!865861 (matchR!3059 r!13927 s!9460))))

(declare-datatypes ((Unit!40919 0))(
  ( (Unit!40920) )
))
(declare-fun lt!865855 () Unit!40919)

(declare-fun mainMatchTheorem!791 (Regex!6942 List!28123) Unit!40919)

(assert (=> b!2369965 (= lt!865855 (mainMatchTheorem!791 r!13927 s!9460))))

(declare-fun b!2369966 () Bool)

(declare-fun res!1005907 () Bool)

(declare-fun e!1512736 () Bool)

(assert (=> b!2369966 (=> res!1005907 e!1512736)))

(declare-fun lt!865857 () List!28122)

(declare-fun generalisedConcat!43 (List!28122) Regex!6942)

(assert (=> b!2369966 (= res!1005907 (not (= (generalisedConcat!43 lt!865857) EmptyExpr!6942)))))

(declare-fun b!2369967 () Bool)

(declare-fun e!1512735 () Bool)

(assert (=> b!2369967 (= e!1512736 e!1512735)))

(declare-fun res!1005912 () Bool)

(assert (=> b!2369967 (=> res!1005912 e!1512735)))

(declare-fun lt!865862 () Regex!6942)

(assert (=> b!2369967 (= res!1005912 (not (matchR!3059 lt!865862 s!9460)))))

(declare-fun head!5125 (List!28122) Regex!6942)

(assert (=> b!2369967 (= lt!865862 (head!5125 l!9164))))

(declare-fun b!2369968 () Bool)

(declare-fun res!1005910 () Bool)

(assert (=> b!2369968 (=> (not res!1005910) (not e!1512733))))

(assert (=> b!2369968 (= res!1005910 (= r!13927 (generalisedConcat!43 l!9164)))))

(declare-fun b!2369969 () Bool)

(assert (=> b!2369969 (= e!1512741 e!1512736)))

(declare-fun res!1005915 () Bool)

(assert (=> b!2369969 (=> res!1005915 e!1512736)))

(assert (=> b!2369969 (= res!1005915 (not (isEmpty!15953 lt!865857)))))

(declare-fun tail!3395 (List!28122) List!28122)

(assert (=> b!2369969 (= lt!865857 (tail!3395 l!9164))))

(declare-fun b!2369970 () Bool)

(declare-fun e!1512737 () Bool)

(declare-fun tp!757640 () Bool)

(assert (=> b!2369970 (= e!1512737 (and tp_is_empty!11297 tp!757640))))

(declare-fun b!2369971 () Bool)

(declare-fun tp!757645 () Bool)

(declare-fun tp!757641 () Bool)

(assert (=> b!2369971 (= e!1512738 (and tp!757645 tp!757641))))

(assert (=> b!2369972 (= e!1512740 e!1512741)))

(declare-fun res!1005914 () Bool)

(assert (=> b!2369972 (=> res!1005914 e!1512741)))

(declare-fun lt!865859 () Bool)

(assert (=> b!2369972 (= res!1005914 (not (= lt!865853 lt!865859)))))

(declare-fun Exists!1004 (Int) Bool)

(assert (=> b!2369972 (= (Exists!1004 lambda!87679) (Exists!1004 lambda!87680))))

(declare-fun lt!865854 () Unit!40919)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!343 (Regex!6942 Regex!6942 List!28123) Unit!40919)

(assert (=> b!2369972 (= lt!865854 (lemmaExistCutMatchRandMatchRSpecEquivalent!343 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460))))

(assert (=> b!2369972 (= lt!865859 (Exists!1004 lambda!87679))))

(declare-datatypes ((tuple2!27748 0))(
  ( (tuple2!27749 (_1!16415 List!28123) (_2!16415 List!28123)) )
))
(declare-datatypes ((Option!5485 0))(
  ( (None!5484) (Some!5484 (v!30892 tuple2!27748)) )
))
(declare-fun isDefined!4313 (Option!5485) Bool)

(declare-fun findConcatSeparation!593 (Regex!6942 Regex!6942 List!28123 List!28123 List!28123) Option!5485)

(assert (=> b!2369972 (= lt!865859 (isDefined!4313 (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) Nil!28025 s!9460 s!9460)))))

(declare-fun lt!865858 () Unit!40919)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!593 (Regex!6942 Regex!6942 List!28123) Unit!40919)

(assert (=> b!2369972 (= lt!865858 (lemmaFindConcatSeparationEquivalentToExists!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460))))

(declare-fun b!2369973 () Bool)

(declare-fun tp!757638 () Bool)

(declare-fun tp!757642 () Bool)

(assert (=> b!2369973 (= e!1512738 (and tp!757638 tp!757642))))

(declare-fun b!2369974 () Bool)

(declare-fun e!1512734 () Bool)

(declare-fun tp!757639 () Bool)

(declare-fun tp!757644 () Bool)

(assert (=> b!2369974 (= e!1512734 (and tp!757639 tp!757644))))

(declare-fun res!1005908 () Bool)

(assert (=> start!232590 (=> (not res!1005908) (not e!1512733))))

(declare-fun lambda!87678 () Int)

(declare-fun forall!5576 (List!28122 Int) Bool)

(assert (=> start!232590 (= res!1005908 (forall!5576 l!9164 lambda!87678))))

(assert (=> start!232590 e!1512733))

(assert (=> start!232590 e!1512734))

(assert (=> start!232590 e!1512738))

(assert (=> start!232590 e!1512737))

(declare-fun b!2369975 () Bool)

(assert (=> b!2369975 (= e!1512735 (not (= l!9164 Nil!28024)))))

(assert (=> b!2369975 e!1512739))

(declare-fun res!1005913 () Bool)

(assert (=> b!2369975 (=> (not res!1005913) (not e!1512739))))

(declare-fun ++!6902 (List!28123 List!28123) List!28123)

(assert (=> b!2369975 (= res!1005913 (matchR!3059 lt!865856 (++!6902 s!9460 Nil!28025)))))

(assert (=> b!2369975 (= lt!865856 (Concat!11578 lt!865862 EmptyExpr!6942))))

(declare-fun lt!865860 () Unit!40919)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!15 (Regex!6942 Regex!6942 List!28123 List!28123) Unit!40919)

(assert (=> b!2369975 (= lt!865860 (lemmaTwoRegexMatchThenConcatMatchesConcatString!15 lt!865862 EmptyExpr!6942 s!9460 Nil!28025))))

(assert (= (and start!232590 res!1005908) b!2369968))

(assert (= (and b!2369968 res!1005910) b!2369965))

(assert (= (and b!2369965 (not res!1005909)) b!2369972))

(assert (= (and b!2369972 (not res!1005914)) b!2369963))

(assert (= (and b!2369963 (not res!1005911)) b!2369969))

(assert (= (and b!2369969 (not res!1005915)) b!2369966))

(assert (= (and b!2369966 (not res!1005907)) b!2369967))

(assert (= (and b!2369967 (not res!1005912)) b!2369975))

(assert (= (and b!2369975 res!1005913) b!2369964))

(assert (= (and start!232590 (is-Cons!28024 l!9164)) b!2369974))

(assert (= (and start!232590 (is-ElementMatch!6942 r!13927)) b!2369961))

(assert (= (and start!232590 (is-Concat!11578 r!13927)) b!2369973))

(assert (= (and start!232590 (is-Star!6942 r!13927)) b!2369962))

(assert (= (and start!232590 (is-Union!6942 r!13927)) b!2369971))

(assert (= (and start!232590 (is-Cons!28025 s!9460)) b!2369970))

(declare-fun m!2778143 () Bool)

(assert (=> b!2369964 m!2778143))

(declare-fun m!2778145 () Bool)

(assert (=> b!2369963 m!2778145))

(declare-fun m!2778147 () Bool)

(assert (=> b!2369966 m!2778147))

(declare-fun m!2778149 () Bool)

(assert (=> start!232590 m!2778149))

(declare-fun m!2778151 () Bool)

(assert (=> b!2369975 m!2778151))

(assert (=> b!2369975 m!2778151))

(declare-fun m!2778153 () Bool)

(assert (=> b!2369975 m!2778153))

(declare-fun m!2778155 () Bool)

(assert (=> b!2369975 m!2778155))

(declare-fun m!2778157 () Bool)

(assert (=> b!2369968 m!2778157))

(declare-fun m!2778159 () Bool)

(assert (=> b!2369969 m!2778159))

(declare-fun m!2778161 () Bool)

(assert (=> b!2369969 m!2778161))

(declare-fun m!2778163 () Bool)

(assert (=> b!2369972 m!2778163))

(declare-fun m!2778165 () Bool)

(assert (=> b!2369972 m!2778165))

(declare-fun m!2778167 () Bool)

(assert (=> b!2369972 m!2778167))

(declare-fun m!2778169 () Bool)

(assert (=> b!2369972 m!2778169))

(assert (=> b!2369972 m!2778163))

(declare-fun m!2778171 () Bool)

(assert (=> b!2369972 m!2778171))

(assert (=> b!2369972 m!2778167))

(declare-fun m!2778173 () Bool)

(assert (=> b!2369972 m!2778173))

(declare-fun m!2778175 () Bool)

(assert (=> b!2369967 m!2778175))

(declare-fun m!2778177 () Bool)

(assert (=> b!2369967 m!2778177))

(declare-fun m!2778179 () Bool)

(assert (=> b!2369965 m!2778179))

(declare-fun m!2778181 () Bool)

(assert (=> b!2369965 m!2778181))

(declare-fun m!2778183 () Bool)

(assert (=> b!2369965 m!2778183))

(push 1)

(assert tp_is_empty!11297)

(assert (not b!2369974))

(assert (not b!2369971))

(assert (not b!2369966))

(assert (not b!2369965))

(assert (not b!2369969))

(assert (not b!2369975))

(assert (not b!2369963))

(assert (not b!2369968))

(assert (not b!2369970))

(assert (not b!2369973))

(assert (not b!2369964))

(assert (not start!232590))

(assert (not b!2369972))

(assert (not b!2369962))

(assert (not b!2369967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461179 () Bool)

(declare-fun d!695212 () Bool)

(assert (= bs!461179 (and d!695212 start!232590)))

(declare-fun lambda!87694 () Int)

(assert (=> bs!461179 (= lambda!87694 lambda!87678)))

(declare-fun b!2370073 () Bool)

(declare-fun e!1512794 () Regex!6942)

(assert (=> b!2370073 (= e!1512794 EmptyExpr!6942)))

(declare-fun b!2370074 () Bool)

(declare-fun e!1512793 () Bool)

(declare-fun e!1512797 () Bool)

(assert (=> b!2370074 (= e!1512793 e!1512797)))

(declare-fun c!376711 () Bool)

(assert (=> b!2370074 (= c!376711 (isEmpty!15953 lt!865857))))

(declare-fun b!2370075 () Bool)

(declare-fun e!1512798 () Bool)

(declare-fun lt!865897 () Regex!6942)

(assert (=> b!2370075 (= e!1512798 (= lt!865897 (head!5125 lt!865857)))))

(declare-fun b!2370076 () Bool)

(assert (=> b!2370076 (= e!1512794 (Concat!11578 (h!33425 lt!865857) (generalisedConcat!43 (t!208099 lt!865857))))))

(declare-fun b!2370077 () Bool)

(assert (=> b!2370077 (= e!1512797 e!1512798)))

(declare-fun c!376710 () Bool)

(assert (=> b!2370077 (= c!376710 (isEmpty!15953 (tail!3395 lt!865857)))))

(declare-fun b!2370078 () Bool)

(declare-fun e!1512795 () Regex!6942)

(assert (=> b!2370078 (= e!1512795 (h!33425 lt!865857))))

(declare-fun b!2370079 () Bool)

(declare-fun isEmptyExpr!23 (Regex!6942) Bool)

(assert (=> b!2370079 (= e!1512797 (isEmptyExpr!23 lt!865897))))

(declare-fun b!2370081 () Bool)

(declare-fun isConcat!23 (Regex!6942) Bool)

(assert (=> b!2370081 (= e!1512798 (isConcat!23 lt!865897))))

(declare-fun b!2370082 () Bool)

(declare-fun e!1512796 () Bool)

(assert (=> b!2370082 (= e!1512796 (isEmpty!15953 (t!208099 lt!865857)))))

(declare-fun b!2370080 () Bool)

(assert (=> b!2370080 (= e!1512795 e!1512794)))

(declare-fun c!376712 () Bool)

(assert (=> b!2370080 (= c!376712 (is-Cons!28024 lt!865857))))

(assert (=> d!695212 e!1512793))

(declare-fun res!1005959 () Bool)

(assert (=> d!695212 (=> (not res!1005959) (not e!1512793))))

(declare-fun validRegex!2671 (Regex!6942) Bool)

(assert (=> d!695212 (= res!1005959 (validRegex!2671 lt!865897))))

(assert (=> d!695212 (= lt!865897 e!1512795)))

(declare-fun c!376713 () Bool)

(assert (=> d!695212 (= c!376713 e!1512796)))

(declare-fun res!1005960 () Bool)

(assert (=> d!695212 (=> (not res!1005960) (not e!1512796))))

(assert (=> d!695212 (= res!1005960 (is-Cons!28024 lt!865857))))

(assert (=> d!695212 (forall!5576 lt!865857 lambda!87694)))

(assert (=> d!695212 (= (generalisedConcat!43 lt!865857) lt!865897)))

(assert (= (and d!695212 res!1005960) b!2370082))

(assert (= (and d!695212 c!376713) b!2370078))

(assert (= (and d!695212 (not c!376713)) b!2370080))

(assert (= (and b!2370080 c!376712) b!2370076))

(assert (= (and b!2370080 (not c!376712)) b!2370073))

(assert (= (and d!695212 res!1005959) b!2370074))

(assert (= (and b!2370074 c!376711) b!2370079))

(assert (= (and b!2370074 (not c!376711)) b!2370077))

(assert (= (and b!2370077 c!376710) b!2370075))

(assert (= (and b!2370077 (not c!376710)) b!2370081))

(declare-fun m!2778227 () Bool)

(assert (=> b!2370075 m!2778227))

(assert (=> b!2370074 m!2778159))

(declare-fun m!2778229 () Bool)

(assert (=> b!2370082 m!2778229))

(declare-fun m!2778231 () Bool)

(assert (=> d!695212 m!2778231))

(declare-fun m!2778233 () Bool)

(assert (=> d!695212 m!2778233))

(declare-fun m!2778235 () Bool)

(assert (=> b!2370081 m!2778235))

(declare-fun m!2778237 () Bool)

(assert (=> b!2370079 m!2778237))

(declare-fun m!2778239 () Bool)

(assert (=> b!2370077 m!2778239))

(assert (=> b!2370077 m!2778239))

(declare-fun m!2778241 () Bool)

(assert (=> b!2370077 m!2778241))

(declare-fun m!2778243 () Bool)

(assert (=> b!2370076 m!2778243))

(assert (=> b!2369966 d!695212))

(declare-fun d!695216 () Bool)

(declare-fun res!1005981 () Bool)

(declare-fun e!1512811 () Bool)

(assert (=> d!695216 (=> res!1005981 e!1512811)))

(assert (=> d!695216 (= res!1005981 (is-Nil!28024 l!9164))))

(assert (=> d!695216 (= (forall!5576 l!9164 lambda!87678) e!1512811)))

(declare-fun b!2370103 () Bool)

(declare-fun e!1512812 () Bool)

(assert (=> b!2370103 (= e!1512811 e!1512812)))

(declare-fun res!1005982 () Bool)

(assert (=> b!2370103 (=> (not res!1005982) (not e!1512812))))

(declare-fun dynLambda!12069 (Int Regex!6942) Bool)

(assert (=> b!2370103 (= res!1005982 (dynLambda!12069 lambda!87678 (h!33425 l!9164)))))

(declare-fun b!2370104 () Bool)

(assert (=> b!2370104 (= e!1512812 (forall!5576 (t!208099 l!9164) lambda!87678))))

(assert (= (and d!695216 (not res!1005981)) b!2370103))

(assert (= (and b!2370103 res!1005982) b!2370104))

(declare-fun b_lambda!73923 () Bool)

(assert (=> (not b_lambda!73923) (not b!2370103)))

(declare-fun m!2778245 () Bool)

(assert (=> b!2370103 m!2778245))

(declare-fun m!2778247 () Bool)

(assert (=> b!2370104 m!2778247))

(assert (=> start!232590 d!695216))

(declare-fun bs!461181 () Bool)

(declare-fun b!2370183 () Bool)

(assert (= bs!461181 (and b!2370183 b!2369972)))

(declare-fun lambda!87702 () Int)

(assert (=> bs!461181 (not (= lambda!87702 lambda!87679))))

(assert (=> bs!461181 (not (= lambda!87702 lambda!87680))))

(assert (=> b!2370183 true))

(assert (=> b!2370183 true))

(declare-fun bs!461182 () Bool)

(declare-fun b!2370189 () Bool)

(assert (= bs!461182 (and b!2370189 b!2369972)))

(declare-fun lambda!87703 () Int)

(assert (=> bs!461182 (not (= lambda!87703 lambda!87679))))

(assert (=> bs!461182 (= lambda!87703 lambda!87680)))

(declare-fun bs!461183 () Bool)

(assert (= bs!461183 (and b!2370189 b!2370183)))

(assert (=> bs!461183 (not (= lambda!87703 lambda!87702))))

(assert (=> b!2370189 true))

(assert (=> b!2370189 true))

(declare-fun b!2370181 () Bool)

(declare-fun e!1512856 () Bool)

(assert (=> b!2370181 (= e!1512856 (= s!9460 (Cons!28025 (c!376694 r!13927) Nil!28025)))))

(declare-fun b!2370182 () Bool)

(declare-fun c!376740 () Bool)

(assert (=> b!2370182 (= c!376740 (is-Union!6942 r!13927))))

(declare-fun e!1512857 () Bool)

(assert (=> b!2370182 (= e!1512856 e!1512857)))

(declare-fun b!2370184 () Bool)

(declare-fun e!1512860 () Bool)

(declare-fun call!144120 () Bool)

(assert (=> b!2370184 (= e!1512860 call!144120)))

(declare-fun b!2370185 () Bool)

(declare-fun c!376737 () Bool)

(assert (=> b!2370185 (= c!376737 (is-ElementMatch!6942 r!13927))))

(declare-fun e!1512861 () Bool)

(assert (=> b!2370185 (= e!1512861 e!1512856)))

(declare-fun call!144121 () Bool)

(declare-fun bm!144115 () Bool)

(declare-fun c!376738 () Bool)

(assert (=> bm!144115 (= call!144121 (Exists!1004 (ite c!376738 lambda!87702 lambda!87703)))))

(declare-fun b!2370186 () Bool)

(declare-fun e!1512862 () Bool)

(assert (=> b!2370186 (= e!1512857 e!1512862)))

(declare-fun res!1006014 () Bool)

(assert (=> b!2370186 (= res!1006014 (matchRSpec!791 (regOne!14397 r!13927) s!9460))))

(assert (=> b!2370186 (=> res!1006014 e!1512862)))

(declare-fun b!2370187 () Bool)

(declare-fun e!1512859 () Bool)

(assert (=> b!2370187 (= e!1512857 e!1512859)))

(assert (=> b!2370187 (= c!376738 (is-Star!6942 r!13927))))

(declare-fun bm!144116 () Bool)

(declare-fun isEmpty!15955 (List!28123) Bool)

(assert (=> bm!144116 (= call!144120 (isEmpty!15955 s!9460))))

(declare-fun b!2370188 () Bool)

(declare-fun res!1006013 () Bool)

(declare-fun e!1512858 () Bool)

(assert (=> b!2370188 (=> res!1006013 e!1512858)))

(assert (=> b!2370188 (= res!1006013 call!144120)))

(assert (=> b!2370188 (= e!1512859 e!1512858)))

(assert (=> b!2370189 (= e!1512859 call!144121)))

(declare-fun d!695218 () Bool)

(declare-fun c!376739 () Bool)

(assert (=> d!695218 (= c!376739 (is-EmptyExpr!6942 r!13927))))

(assert (=> d!695218 (= (matchRSpec!791 r!13927 s!9460) e!1512860)))

(assert (=> b!2370183 (= e!1512858 call!144121)))

(declare-fun b!2370190 () Bool)

(assert (=> b!2370190 (= e!1512860 e!1512861)))

(declare-fun res!1006015 () Bool)

(assert (=> b!2370190 (= res!1006015 (not (is-EmptyLang!6942 r!13927)))))

(assert (=> b!2370190 (=> (not res!1006015) (not e!1512861))))

(declare-fun b!2370191 () Bool)

(assert (=> b!2370191 (= e!1512862 (matchRSpec!791 (regTwo!14397 r!13927) s!9460))))

(assert (= (and d!695218 c!376739) b!2370184))

(assert (= (and d!695218 (not c!376739)) b!2370190))

(assert (= (and b!2370190 res!1006015) b!2370185))

(assert (= (and b!2370185 c!376737) b!2370181))

(assert (= (and b!2370185 (not c!376737)) b!2370182))

(assert (= (and b!2370182 c!376740) b!2370186))

(assert (= (and b!2370182 (not c!376740)) b!2370187))

(assert (= (and b!2370186 (not res!1006014)) b!2370191))

(assert (= (and b!2370187 c!376738) b!2370188))

(assert (= (and b!2370187 (not c!376738)) b!2370189))

(assert (= (and b!2370188 (not res!1006013)) b!2370183))

(assert (= (or b!2370183 b!2370189) bm!144115))

(assert (= (or b!2370184 b!2370188) bm!144116))

(declare-fun m!2778279 () Bool)

(assert (=> bm!144115 m!2778279))

(declare-fun m!2778281 () Bool)

(assert (=> b!2370186 m!2778281))

(declare-fun m!2778283 () Bool)

(assert (=> bm!144116 m!2778283))

(declare-fun m!2778285 () Bool)

(assert (=> b!2370191 m!2778285))

(assert (=> b!2369965 d!695218))

(declare-fun b!2370263 () Bool)

(declare-fun res!1006052 () Bool)

(declare-fun e!1512904 () Bool)

(assert (=> b!2370263 (=> res!1006052 e!1512904)))

(assert (=> b!2370263 (= res!1006052 (not (is-ElementMatch!6942 r!13927)))))

(declare-fun e!1512905 () Bool)

(assert (=> b!2370263 (= e!1512905 e!1512904)))

(declare-fun b!2370264 () Bool)

(declare-fun e!1512906 () Bool)

(assert (=> b!2370264 (= e!1512906 e!1512905)))

(declare-fun c!376760 () Bool)

(assert (=> b!2370264 (= c!376760 (is-EmptyLang!6942 r!13927))))

(declare-fun b!2370265 () Bool)

(declare-fun e!1512902 () Bool)

(assert (=> b!2370265 (= e!1512904 e!1512902)))

(declare-fun res!1006051 () Bool)

(assert (=> b!2370265 (=> (not res!1006051) (not e!1512902))))

(declare-fun lt!865904 () Bool)

(assert (=> b!2370265 (= res!1006051 (not lt!865904))))

(declare-fun b!2370266 () Bool)

(declare-fun res!1006057 () Bool)

(assert (=> b!2370266 (=> res!1006057 e!1512904)))

(declare-fun e!1512907 () Bool)

(assert (=> b!2370266 (= res!1006057 e!1512907)))

(declare-fun res!1006056 () Bool)

(assert (=> b!2370266 (=> (not res!1006056) (not e!1512907))))

(assert (=> b!2370266 (= res!1006056 lt!865904)))

(declare-fun bm!144125 () Bool)

(declare-fun call!144130 () Bool)

(assert (=> bm!144125 (= call!144130 (isEmpty!15955 s!9460))))

(declare-fun b!2370267 () Bool)

(assert (=> b!2370267 (= e!1512905 (not lt!865904))))

(declare-fun b!2370268 () Bool)

(declare-fun res!1006058 () Bool)

(assert (=> b!2370268 (=> (not res!1006058) (not e!1512907))))

(assert (=> b!2370268 (= res!1006058 (not call!144130))))

(declare-fun b!2370269 () Bool)

(declare-fun res!1006054 () Bool)

(assert (=> b!2370269 (=> (not res!1006054) (not e!1512907))))

(declare-fun tail!3397 (List!28123) List!28123)

(assert (=> b!2370269 (= res!1006054 (isEmpty!15955 (tail!3397 s!9460)))))

(declare-fun b!2370270 () Bool)

(assert (=> b!2370270 (= e!1512906 (= lt!865904 call!144130))))

(declare-fun b!2370271 () Bool)

(declare-fun e!1512903 () Bool)

(declare-fun derivativeStep!1658 (Regex!6942 C!14042) Regex!6942)

(declare-fun head!5127 (List!28123) C!14042)

(assert (=> b!2370271 (= e!1512903 (matchR!3059 (derivativeStep!1658 r!13927 (head!5127 s!9460)) (tail!3397 s!9460)))))

(declare-fun b!2370272 () Bool)

(declare-fun e!1512908 () Bool)

(assert (=> b!2370272 (= e!1512908 (not (= (head!5127 s!9460) (c!376694 r!13927))))))

(declare-fun b!2370273 () Bool)

(declare-fun nullable!2000 (Regex!6942) Bool)

(assert (=> b!2370273 (= e!1512903 (nullable!2000 r!13927))))

(declare-fun b!2370274 () Bool)

(declare-fun res!1006053 () Bool)

(assert (=> b!2370274 (=> res!1006053 e!1512908)))

(assert (=> b!2370274 (= res!1006053 (not (isEmpty!15955 (tail!3397 s!9460))))))

(declare-fun d!695224 () Bool)

(assert (=> d!695224 e!1512906))

(declare-fun c!376759 () Bool)

(assert (=> d!695224 (= c!376759 (is-EmptyExpr!6942 r!13927))))

(assert (=> d!695224 (= lt!865904 e!1512903)))

(declare-fun c!376761 () Bool)

(assert (=> d!695224 (= c!376761 (isEmpty!15955 s!9460))))

(assert (=> d!695224 (validRegex!2671 r!13927)))

(assert (=> d!695224 (= (matchR!3059 r!13927 s!9460) lt!865904)))

(declare-fun b!2370275 () Bool)

(assert (=> b!2370275 (= e!1512902 e!1512908)))

(declare-fun res!1006055 () Bool)

(assert (=> b!2370275 (=> res!1006055 e!1512908)))

(assert (=> b!2370275 (= res!1006055 call!144130)))

(declare-fun b!2370276 () Bool)

(assert (=> b!2370276 (= e!1512907 (= (head!5127 s!9460) (c!376694 r!13927)))))

(assert (= (and d!695224 c!376761) b!2370273))

(assert (= (and d!695224 (not c!376761)) b!2370271))

(assert (= (and d!695224 c!376759) b!2370270))

(assert (= (and d!695224 (not c!376759)) b!2370264))

(assert (= (and b!2370264 c!376760) b!2370267))

(assert (= (and b!2370264 (not c!376760)) b!2370263))

(assert (= (and b!2370263 (not res!1006052)) b!2370266))

(assert (= (and b!2370266 res!1006056) b!2370268))

(assert (= (and b!2370268 res!1006058) b!2370269))

(assert (= (and b!2370269 res!1006054) b!2370276))

(assert (= (and b!2370266 (not res!1006057)) b!2370265))

(assert (= (and b!2370265 res!1006051) b!2370275))

(assert (= (and b!2370275 (not res!1006055)) b!2370274))

(assert (= (and b!2370274 (not res!1006053)) b!2370272))

(assert (= (or b!2370270 b!2370268 b!2370275) bm!144125))

(declare-fun m!2778287 () Bool)

(assert (=> b!2370273 m!2778287))

(declare-fun m!2778289 () Bool)

(assert (=> b!2370276 m!2778289))

(assert (=> b!2370272 m!2778289))

(assert (=> d!695224 m!2778283))

(declare-fun m!2778291 () Bool)

(assert (=> d!695224 m!2778291))

(declare-fun m!2778293 () Bool)

(assert (=> b!2370269 m!2778293))

(assert (=> b!2370269 m!2778293))

(declare-fun m!2778295 () Bool)

(assert (=> b!2370269 m!2778295))

(assert (=> b!2370271 m!2778289))

(assert (=> b!2370271 m!2778289))

(declare-fun m!2778297 () Bool)

(assert (=> b!2370271 m!2778297))

(assert (=> b!2370271 m!2778293))

(assert (=> b!2370271 m!2778297))

(assert (=> b!2370271 m!2778293))

(declare-fun m!2778299 () Bool)

(assert (=> b!2370271 m!2778299))

(assert (=> b!2370274 m!2778293))

(assert (=> b!2370274 m!2778293))

(assert (=> b!2370274 m!2778295))

(assert (=> bm!144125 m!2778283))

(assert (=> b!2369965 d!695224))

(declare-fun d!695226 () Bool)

(assert (=> d!695226 (= (matchR!3059 r!13927 s!9460) (matchRSpec!791 r!13927 s!9460))))

(declare-fun lt!865908 () Unit!40919)

(declare-fun choose!13781 (Regex!6942 List!28123) Unit!40919)

(assert (=> d!695226 (= lt!865908 (choose!13781 r!13927 s!9460))))

(assert (=> d!695226 (validRegex!2671 r!13927)))

(assert (=> d!695226 (= (mainMatchTheorem!791 r!13927 s!9460) lt!865908)))

(declare-fun bs!461187 () Bool)

(assert (= bs!461187 d!695226))

(assert (=> bs!461187 m!2778181))

(assert (=> bs!461187 m!2778179))

(declare-fun m!2778315 () Bool)

(assert (=> bs!461187 m!2778315))

(assert (=> bs!461187 m!2778291))

(assert (=> b!2369965 d!695226))

(declare-fun b!2370291 () Bool)

(declare-fun res!1006068 () Bool)

(declare-fun e!1512918 () Bool)

(assert (=> b!2370291 (=> res!1006068 e!1512918)))

(assert (=> b!2370291 (= res!1006068 (not (is-ElementMatch!6942 lt!865862)))))

(declare-fun e!1512919 () Bool)

(assert (=> b!2370291 (= e!1512919 e!1512918)))

(declare-fun b!2370292 () Bool)

(declare-fun e!1512920 () Bool)

(assert (=> b!2370292 (= e!1512920 e!1512919)))

(declare-fun c!376766 () Bool)

(assert (=> b!2370292 (= c!376766 (is-EmptyLang!6942 lt!865862))))

(declare-fun b!2370293 () Bool)

(declare-fun e!1512916 () Bool)

(assert (=> b!2370293 (= e!1512918 e!1512916)))

(declare-fun res!1006067 () Bool)

(assert (=> b!2370293 (=> (not res!1006067) (not e!1512916))))

(declare-fun lt!865909 () Bool)

(assert (=> b!2370293 (= res!1006067 (not lt!865909))))

(declare-fun b!2370294 () Bool)

(declare-fun res!1006073 () Bool)

(assert (=> b!2370294 (=> res!1006073 e!1512918)))

(declare-fun e!1512921 () Bool)

(assert (=> b!2370294 (= res!1006073 e!1512921)))

(declare-fun res!1006072 () Bool)

(assert (=> b!2370294 (=> (not res!1006072) (not e!1512921))))

(assert (=> b!2370294 (= res!1006072 lt!865909)))

(declare-fun bm!144127 () Bool)

(declare-fun call!144132 () Bool)

(assert (=> bm!144127 (= call!144132 (isEmpty!15955 s!9460))))

(declare-fun b!2370295 () Bool)

(assert (=> b!2370295 (= e!1512919 (not lt!865909))))

(declare-fun b!2370296 () Bool)

(declare-fun res!1006074 () Bool)

(assert (=> b!2370296 (=> (not res!1006074) (not e!1512921))))

(assert (=> b!2370296 (= res!1006074 (not call!144132))))

(declare-fun b!2370297 () Bool)

(declare-fun res!1006070 () Bool)

(assert (=> b!2370297 (=> (not res!1006070) (not e!1512921))))

(assert (=> b!2370297 (= res!1006070 (isEmpty!15955 (tail!3397 s!9460)))))

(declare-fun b!2370298 () Bool)

(assert (=> b!2370298 (= e!1512920 (= lt!865909 call!144132))))

(declare-fun b!2370299 () Bool)

(declare-fun e!1512917 () Bool)

(assert (=> b!2370299 (= e!1512917 (matchR!3059 (derivativeStep!1658 lt!865862 (head!5127 s!9460)) (tail!3397 s!9460)))))

(declare-fun b!2370300 () Bool)

(declare-fun e!1512922 () Bool)

(assert (=> b!2370300 (= e!1512922 (not (= (head!5127 s!9460) (c!376694 lt!865862))))))

(declare-fun b!2370301 () Bool)

(assert (=> b!2370301 (= e!1512917 (nullable!2000 lt!865862))))

(declare-fun b!2370302 () Bool)

(declare-fun res!1006069 () Bool)

(assert (=> b!2370302 (=> res!1006069 e!1512922)))

(assert (=> b!2370302 (= res!1006069 (not (isEmpty!15955 (tail!3397 s!9460))))))

(declare-fun d!695232 () Bool)

(assert (=> d!695232 e!1512920))

(declare-fun c!376765 () Bool)

(assert (=> d!695232 (= c!376765 (is-EmptyExpr!6942 lt!865862))))

(assert (=> d!695232 (= lt!865909 e!1512917)))

(declare-fun c!376767 () Bool)

(assert (=> d!695232 (= c!376767 (isEmpty!15955 s!9460))))

(assert (=> d!695232 (validRegex!2671 lt!865862)))

(assert (=> d!695232 (= (matchR!3059 lt!865862 s!9460) lt!865909)))

(declare-fun b!2370303 () Bool)

(assert (=> b!2370303 (= e!1512916 e!1512922)))

(declare-fun res!1006071 () Bool)

(assert (=> b!2370303 (=> res!1006071 e!1512922)))

(assert (=> b!2370303 (= res!1006071 call!144132)))

(declare-fun b!2370304 () Bool)

(assert (=> b!2370304 (= e!1512921 (= (head!5127 s!9460) (c!376694 lt!865862)))))

(assert (= (and d!695232 c!376767) b!2370301))

(assert (= (and d!695232 (not c!376767)) b!2370299))

(assert (= (and d!695232 c!376765) b!2370298))

(assert (= (and d!695232 (not c!376765)) b!2370292))

(assert (= (and b!2370292 c!376766) b!2370295))

(assert (= (and b!2370292 (not c!376766)) b!2370291))

(assert (= (and b!2370291 (not res!1006068)) b!2370294))

(assert (= (and b!2370294 res!1006072) b!2370296))

(assert (= (and b!2370296 res!1006074) b!2370297))

(assert (= (and b!2370297 res!1006070) b!2370304))

(assert (= (and b!2370294 (not res!1006073)) b!2370293))

(assert (= (and b!2370293 res!1006067) b!2370303))

(assert (= (and b!2370303 (not res!1006071)) b!2370302))

(assert (= (and b!2370302 (not res!1006069)) b!2370300))

(assert (= (or b!2370298 b!2370296 b!2370303) bm!144127))

(declare-fun m!2778317 () Bool)

(assert (=> b!2370301 m!2778317))

(assert (=> b!2370304 m!2778289))

(assert (=> b!2370300 m!2778289))

(assert (=> d!695232 m!2778283))

(declare-fun m!2778319 () Bool)

(assert (=> d!695232 m!2778319))

(assert (=> b!2370297 m!2778293))

(assert (=> b!2370297 m!2778293))

(assert (=> b!2370297 m!2778295))

(assert (=> b!2370299 m!2778289))

(assert (=> b!2370299 m!2778289))

(declare-fun m!2778321 () Bool)

(assert (=> b!2370299 m!2778321))

(assert (=> b!2370299 m!2778293))

(assert (=> b!2370299 m!2778321))

(assert (=> b!2370299 m!2778293))

(declare-fun m!2778323 () Bool)

(assert (=> b!2370299 m!2778323))

(assert (=> b!2370302 m!2778293))

(assert (=> b!2370302 m!2778293))

(assert (=> b!2370302 m!2778295))

(assert (=> bm!144127 m!2778283))

(assert (=> b!2369967 d!695232))

(declare-fun d!695234 () Bool)

(assert (=> d!695234 (= (head!5125 l!9164) (h!33425 l!9164))))

(assert (=> b!2369967 d!695234))

(declare-fun d!695236 () Bool)

(declare-fun isEmpty!15957 (Option!5485) Bool)

(assert (=> d!695236 (= (isDefined!4313 (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) Nil!28025 s!9460 s!9460)) (not (isEmpty!15957 (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) Nil!28025 s!9460 s!9460))))))

(declare-fun bs!461188 () Bool)

(assert (= bs!461188 d!695236))

(assert (=> bs!461188 m!2778163))

(declare-fun m!2778325 () Bool)

(assert (=> bs!461188 m!2778325))

(assert (=> b!2369972 d!695236))

(declare-fun bs!461191 () Bool)

(declare-fun d!695238 () Bool)

(assert (= bs!461191 (and d!695238 b!2369972)))

(declare-fun lambda!87714 () Int)

(assert (=> bs!461191 (= lambda!87714 lambda!87679)))

(assert (=> bs!461191 (not (= lambda!87714 lambda!87680))))

(declare-fun bs!461192 () Bool)

(assert (= bs!461192 (and d!695238 b!2370183)))

(assert (=> bs!461192 (not (= lambda!87714 lambda!87702))))

(declare-fun bs!461193 () Bool)

(assert (= bs!461193 (and d!695238 b!2370189)))

(assert (=> bs!461193 (not (= lambda!87714 lambda!87703))))

(assert (=> d!695238 true))

(assert (=> d!695238 true))

(assert (=> d!695238 true))

(assert (=> d!695238 (= (isDefined!4313 (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) Nil!28025 s!9460 s!9460)) (Exists!1004 lambda!87714))))

(declare-fun lt!865917 () Unit!40919)

(declare-fun choose!13782 (Regex!6942 Regex!6942 List!28123) Unit!40919)

(assert (=> d!695238 (= lt!865917 (choose!13782 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460))))

(assert (=> d!695238 (validRegex!2671 (regOne!14396 r!13927))))

(assert (=> d!695238 (= (lemmaFindConcatSeparationEquivalentToExists!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460) lt!865917)))

(declare-fun bs!461195 () Bool)

(assert (= bs!461195 d!695238))

(declare-fun m!2778331 () Bool)

(assert (=> bs!461195 m!2778331))

(declare-fun m!2778333 () Bool)

(assert (=> bs!461195 m!2778333))

(declare-fun m!2778335 () Bool)

(assert (=> bs!461195 m!2778335))

(assert (=> bs!461195 m!2778163))

(assert (=> bs!461195 m!2778165))

(assert (=> bs!461195 m!2778163))

(assert (=> b!2369972 d!695238))

(declare-fun bs!461199 () Bool)

(declare-fun d!695244 () Bool)

(assert (= bs!461199 (and d!695244 b!2369972)))

(declare-fun lambda!87720 () Int)

(assert (=> bs!461199 (= lambda!87720 lambda!87679)))

(declare-fun bs!461200 () Bool)

(assert (= bs!461200 (and d!695244 d!695238)))

(assert (=> bs!461200 (= lambda!87720 lambda!87714)))

(declare-fun bs!461201 () Bool)

(assert (= bs!461201 (and d!695244 b!2370183)))

(assert (=> bs!461201 (not (= lambda!87720 lambda!87702))))

(assert (=> bs!461199 (not (= lambda!87720 lambda!87680))))

(declare-fun bs!461202 () Bool)

(assert (= bs!461202 (and d!695244 b!2370189)))

(assert (=> bs!461202 (not (= lambda!87720 lambda!87703))))

(assert (=> d!695244 true))

(assert (=> d!695244 true))

(assert (=> d!695244 true))

(declare-fun lambda!87721 () Int)

(assert (=> bs!461199 (not (= lambda!87721 lambda!87679))))

(assert (=> bs!461200 (not (= lambda!87721 lambda!87714))))

(assert (=> bs!461201 (not (= lambda!87721 lambda!87702))))

(assert (=> bs!461199 (= lambda!87721 lambda!87680)))

(assert (=> bs!461202 (= lambda!87721 lambda!87703)))

(declare-fun bs!461203 () Bool)

(assert (= bs!461203 d!695244))

(assert (=> bs!461203 (not (= lambda!87721 lambda!87720))))

(assert (=> d!695244 true))

(assert (=> d!695244 true))

(assert (=> d!695244 true))

(assert (=> d!695244 (= (Exists!1004 lambda!87720) (Exists!1004 lambda!87721))))

(declare-fun lt!865921 () Unit!40919)

(declare-fun choose!13783 (Regex!6942 Regex!6942 List!28123) Unit!40919)

(assert (=> d!695244 (= lt!865921 (choose!13783 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460))))

(assert (=> d!695244 (validRegex!2671 (regOne!14396 r!13927))))

(assert (=> d!695244 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!343 (regOne!14396 r!13927) (regTwo!14396 r!13927) s!9460) lt!865921)))

(declare-fun m!2778343 () Bool)

(assert (=> bs!461203 m!2778343))

(declare-fun m!2778345 () Bool)

(assert (=> bs!461203 m!2778345))

(declare-fun m!2778347 () Bool)

(assert (=> bs!461203 m!2778347))

(assert (=> bs!461203 m!2778331))

(assert (=> b!2369972 d!695244))

(declare-fun d!695248 () Bool)

(declare-fun choose!13784 (Int) Bool)

(assert (=> d!695248 (= (Exists!1004 lambda!87680) (choose!13784 lambda!87680))))

(declare-fun bs!461204 () Bool)

(assert (= bs!461204 d!695248))

(declare-fun m!2778349 () Bool)

(assert (=> bs!461204 m!2778349))

(assert (=> b!2369972 d!695248))

(declare-fun b!2370366 () Bool)

(declare-fun e!1512958 () Bool)

(assert (=> b!2370366 (= e!1512958 (matchR!3059 (regTwo!14396 r!13927) s!9460))))

(declare-fun b!2370367 () Bool)

(declare-fun res!1006120 () Bool)

(declare-fun e!1512960 () Bool)

(assert (=> b!2370367 (=> (not res!1006120) (not e!1512960))))

(declare-fun lt!865938 () Option!5485)

(declare-fun get!8519 (Option!5485) tuple2!27748)

(assert (=> b!2370367 (= res!1006120 (matchR!3059 (regOne!14396 r!13927) (_1!16415 (get!8519 lt!865938))))))

(declare-fun b!2370368 () Bool)

(assert (=> b!2370368 (= e!1512960 (= (++!6902 (_1!16415 (get!8519 lt!865938)) (_2!16415 (get!8519 lt!865938))) s!9460))))

(declare-fun b!2370369 () Bool)

(declare-fun e!1512959 () Option!5485)

(assert (=> b!2370369 (= e!1512959 None!5484)))

(declare-fun b!2370371 () Bool)

(declare-fun e!1512956 () Option!5485)

(assert (=> b!2370371 (= e!1512956 e!1512959)))

(declare-fun c!376779 () Bool)

(assert (=> b!2370371 (= c!376779 (is-Nil!28025 s!9460))))

(declare-fun b!2370372 () Bool)

(declare-fun e!1512957 () Bool)

(assert (=> b!2370372 (= e!1512957 (not (isDefined!4313 lt!865938)))))

(declare-fun b!2370373 () Bool)

(declare-fun lt!865937 () Unit!40919)

(declare-fun lt!865939 () Unit!40919)

(assert (=> b!2370373 (= lt!865937 lt!865939)))

(assert (=> b!2370373 (= (++!6902 (++!6902 Nil!28025 (Cons!28025 (h!33426 s!9460) Nil!28025)) (t!208100 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!548 (List!28123 C!14042 List!28123 List!28123) Unit!40919)

(assert (=> b!2370373 (= lt!865939 (lemmaMoveElementToOtherListKeepsConcatEq!548 Nil!28025 (h!33426 s!9460) (t!208100 s!9460) s!9460))))

(assert (=> b!2370373 (= e!1512959 (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) (++!6902 Nil!28025 (Cons!28025 (h!33426 s!9460) Nil!28025)) (t!208100 s!9460) s!9460))))

(declare-fun b!2370374 () Bool)

(declare-fun res!1006117 () Bool)

(assert (=> b!2370374 (=> (not res!1006117) (not e!1512960))))

(assert (=> b!2370374 (= res!1006117 (matchR!3059 (regTwo!14396 r!13927) (_2!16415 (get!8519 lt!865938))))))

(declare-fun b!2370370 () Bool)

(assert (=> b!2370370 (= e!1512956 (Some!5484 (tuple2!27749 Nil!28025 s!9460)))))

(declare-fun d!695250 () Bool)

(assert (=> d!695250 e!1512957))

(declare-fun res!1006118 () Bool)

(assert (=> d!695250 (=> res!1006118 e!1512957)))

(assert (=> d!695250 (= res!1006118 e!1512960)))

(declare-fun res!1006116 () Bool)

(assert (=> d!695250 (=> (not res!1006116) (not e!1512960))))

(assert (=> d!695250 (= res!1006116 (isDefined!4313 lt!865938))))

(assert (=> d!695250 (= lt!865938 e!1512956)))

(declare-fun c!376778 () Bool)

(assert (=> d!695250 (= c!376778 e!1512958)))

(declare-fun res!1006119 () Bool)

(assert (=> d!695250 (=> (not res!1006119) (not e!1512958))))

(assert (=> d!695250 (= res!1006119 (matchR!3059 (regOne!14396 r!13927) Nil!28025))))

(assert (=> d!695250 (validRegex!2671 (regOne!14396 r!13927))))

(assert (=> d!695250 (= (findConcatSeparation!593 (regOne!14396 r!13927) (regTwo!14396 r!13927) Nil!28025 s!9460 s!9460) lt!865938)))

(assert (= (and d!695250 res!1006119) b!2370366))

(assert (= (and d!695250 c!376778) b!2370370))

(assert (= (and d!695250 (not c!376778)) b!2370371))

(assert (= (and b!2370371 c!376779) b!2370369))

(assert (= (and b!2370371 (not c!376779)) b!2370373))

(assert (= (and d!695250 res!1006116) b!2370367))

(assert (= (and b!2370367 res!1006120) b!2370374))

(assert (= (and b!2370374 res!1006117) b!2370368))

(assert (= (and d!695250 (not res!1006118)) b!2370372))

(declare-fun m!2778375 () Bool)

(assert (=> b!2370368 m!2778375))

(declare-fun m!2778377 () Bool)

(assert (=> b!2370368 m!2778377))

(declare-fun m!2778379 () Bool)

(assert (=> b!2370373 m!2778379))

(assert (=> b!2370373 m!2778379))

(declare-fun m!2778381 () Bool)

(assert (=> b!2370373 m!2778381))

(declare-fun m!2778383 () Bool)

(assert (=> b!2370373 m!2778383))

(assert (=> b!2370373 m!2778379))

(declare-fun m!2778385 () Bool)

(assert (=> b!2370373 m!2778385))

(declare-fun m!2778387 () Bool)

(assert (=> d!695250 m!2778387))

(declare-fun m!2778389 () Bool)

(assert (=> d!695250 m!2778389))

(assert (=> d!695250 m!2778331))

(declare-fun m!2778391 () Bool)

(assert (=> b!2370366 m!2778391))

(assert (=> b!2370374 m!2778375))

(declare-fun m!2778393 () Bool)

(assert (=> b!2370374 m!2778393))

(assert (=> b!2370367 m!2778375))

(declare-fun m!2778395 () Bool)

(assert (=> b!2370367 m!2778395))

(assert (=> b!2370372 m!2778387))

(assert (=> b!2369972 d!695250))

(declare-fun d!695256 () Bool)

(assert (=> d!695256 (= (Exists!1004 lambda!87679) (choose!13784 lambda!87679))))

(declare-fun bs!461206 () Bool)

(assert (= bs!461206 d!695256))

(declare-fun m!2778397 () Bool)

(assert (=> bs!461206 m!2778397))

(assert (=> b!2369972 d!695256))

(declare-fun d!695258 () Bool)

(assert (=> d!695258 (= (isEmpty!15953 l!9164) (is-Nil!28024 l!9164))))

(assert (=> b!2369963 d!695258))

(declare-fun bs!461207 () Bool)

(declare-fun d!695260 () Bool)

(assert (= bs!461207 (and d!695260 start!232590)))

(declare-fun lambda!87722 () Int)

(assert (=> bs!461207 (= lambda!87722 lambda!87678)))

(declare-fun bs!461208 () Bool)

(assert (= bs!461208 (and d!695260 d!695212)))

(assert (=> bs!461208 (= lambda!87722 lambda!87694)))

(declare-fun b!2370375 () Bool)

(declare-fun e!1512962 () Regex!6942)

(assert (=> b!2370375 (= e!1512962 EmptyExpr!6942)))

(declare-fun b!2370376 () Bool)

(declare-fun e!1512961 () Bool)

(declare-fun e!1512965 () Bool)

(assert (=> b!2370376 (= e!1512961 e!1512965)))

(declare-fun c!376781 () Bool)

(assert (=> b!2370376 (= c!376781 (isEmpty!15953 l!9164))))

(declare-fun b!2370377 () Bool)

(declare-fun e!1512966 () Bool)

(declare-fun lt!865940 () Regex!6942)

(assert (=> b!2370377 (= e!1512966 (= lt!865940 (head!5125 l!9164)))))

(declare-fun b!2370378 () Bool)

(assert (=> b!2370378 (= e!1512962 (Concat!11578 (h!33425 l!9164) (generalisedConcat!43 (t!208099 l!9164))))))

(declare-fun b!2370379 () Bool)

(assert (=> b!2370379 (= e!1512965 e!1512966)))

(declare-fun c!376780 () Bool)

(assert (=> b!2370379 (= c!376780 (isEmpty!15953 (tail!3395 l!9164)))))

(declare-fun b!2370380 () Bool)

(declare-fun e!1512963 () Regex!6942)

(assert (=> b!2370380 (= e!1512963 (h!33425 l!9164))))

(declare-fun b!2370381 () Bool)

(assert (=> b!2370381 (= e!1512965 (isEmptyExpr!23 lt!865940))))

(declare-fun b!2370383 () Bool)

(assert (=> b!2370383 (= e!1512966 (isConcat!23 lt!865940))))

(declare-fun b!2370384 () Bool)

(declare-fun e!1512964 () Bool)

(assert (=> b!2370384 (= e!1512964 (isEmpty!15953 (t!208099 l!9164)))))

(declare-fun b!2370382 () Bool)

(assert (=> b!2370382 (= e!1512963 e!1512962)))

(declare-fun c!376782 () Bool)

(assert (=> b!2370382 (= c!376782 (is-Cons!28024 l!9164))))

(assert (=> d!695260 e!1512961))

(declare-fun res!1006121 () Bool)

(assert (=> d!695260 (=> (not res!1006121) (not e!1512961))))

(assert (=> d!695260 (= res!1006121 (validRegex!2671 lt!865940))))

(assert (=> d!695260 (= lt!865940 e!1512963)))

(declare-fun c!376783 () Bool)

(assert (=> d!695260 (= c!376783 e!1512964)))

(declare-fun res!1006122 () Bool)

(assert (=> d!695260 (=> (not res!1006122) (not e!1512964))))

(assert (=> d!695260 (= res!1006122 (is-Cons!28024 l!9164))))

(assert (=> d!695260 (forall!5576 l!9164 lambda!87722)))

(assert (=> d!695260 (= (generalisedConcat!43 l!9164) lt!865940)))

(assert (= (and d!695260 res!1006122) b!2370384))

(assert (= (and d!695260 c!376783) b!2370380))

(assert (= (and d!695260 (not c!376783)) b!2370382))

(assert (= (and b!2370382 c!376782) b!2370378))

(assert (= (and b!2370382 (not c!376782)) b!2370375))

(assert (= (and d!695260 res!1006121) b!2370376))

(assert (= (and b!2370376 c!376781) b!2370381))

(assert (= (and b!2370376 (not c!376781)) b!2370379))

(assert (= (and b!2370379 c!376780) b!2370377))

(assert (= (and b!2370379 (not c!376780)) b!2370383))

(assert (=> b!2370377 m!2778177))

(assert (=> b!2370376 m!2778145))

(declare-fun m!2778399 () Bool)

(assert (=> b!2370384 m!2778399))

(declare-fun m!2778401 () Bool)

(assert (=> d!695260 m!2778401))

(declare-fun m!2778403 () Bool)

(assert (=> d!695260 m!2778403))

(declare-fun m!2778405 () Bool)

(assert (=> b!2370383 m!2778405))

(declare-fun m!2778407 () Bool)

(assert (=> b!2370381 m!2778407))

(assert (=> b!2370379 m!2778161))

(assert (=> b!2370379 m!2778161))

(declare-fun m!2778409 () Bool)

(assert (=> b!2370379 m!2778409))

(declare-fun m!2778411 () Bool)

(assert (=> b!2370378 m!2778411))

(assert (=> b!2369968 d!695260))

(declare-fun b!2370385 () Bool)

(declare-fun res!1006124 () Bool)

(declare-fun e!1512969 () Bool)

(assert (=> b!2370385 (=> res!1006124 e!1512969)))

(assert (=> b!2370385 (= res!1006124 (not (is-ElementMatch!6942 lt!865856)))))

(declare-fun e!1512970 () Bool)

(assert (=> b!2370385 (= e!1512970 e!1512969)))

(declare-fun b!2370386 () Bool)

(declare-fun e!1512971 () Bool)

(assert (=> b!2370386 (= e!1512971 e!1512970)))

(declare-fun c!376785 () Bool)

(assert (=> b!2370386 (= c!376785 (is-EmptyLang!6942 lt!865856))))

(declare-fun b!2370387 () Bool)

(declare-fun e!1512967 () Bool)

(assert (=> b!2370387 (= e!1512969 e!1512967)))

(declare-fun res!1006123 () Bool)

(assert (=> b!2370387 (=> (not res!1006123) (not e!1512967))))

(declare-fun lt!865941 () Bool)

(assert (=> b!2370387 (= res!1006123 (not lt!865941))))

(declare-fun b!2370388 () Bool)

(declare-fun res!1006129 () Bool)

(assert (=> b!2370388 (=> res!1006129 e!1512969)))

(declare-fun e!1512972 () Bool)

(assert (=> b!2370388 (= res!1006129 e!1512972)))

(declare-fun res!1006128 () Bool)

(assert (=> b!2370388 (=> (not res!1006128) (not e!1512972))))

(assert (=> b!2370388 (= res!1006128 lt!865941)))

(declare-fun bm!144128 () Bool)

(declare-fun call!144133 () Bool)

(assert (=> bm!144128 (= call!144133 (isEmpty!15955 (++!6902 s!9460 Nil!28025)))))

(declare-fun b!2370389 () Bool)

(assert (=> b!2370389 (= e!1512970 (not lt!865941))))

(declare-fun b!2370390 () Bool)

(declare-fun res!1006130 () Bool)

(assert (=> b!2370390 (=> (not res!1006130) (not e!1512972))))

(assert (=> b!2370390 (= res!1006130 (not call!144133))))

(declare-fun b!2370391 () Bool)

(declare-fun res!1006126 () Bool)

(assert (=> b!2370391 (=> (not res!1006126) (not e!1512972))))

(assert (=> b!2370391 (= res!1006126 (isEmpty!15955 (tail!3397 (++!6902 s!9460 Nil!28025))))))

(declare-fun b!2370392 () Bool)

(assert (=> b!2370392 (= e!1512971 (= lt!865941 call!144133))))

(declare-fun b!2370393 () Bool)

(declare-fun e!1512968 () Bool)

(assert (=> b!2370393 (= e!1512968 (matchR!3059 (derivativeStep!1658 lt!865856 (head!5127 (++!6902 s!9460 Nil!28025))) (tail!3397 (++!6902 s!9460 Nil!28025))))))

(declare-fun b!2370394 () Bool)

(declare-fun e!1512973 () Bool)

(assert (=> b!2370394 (= e!1512973 (not (= (head!5127 (++!6902 s!9460 Nil!28025)) (c!376694 lt!865856))))))

(declare-fun b!2370395 () Bool)

(assert (=> b!2370395 (= e!1512968 (nullable!2000 lt!865856))))

(declare-fun b!2370396 () Bool)

(declare-fun res!1006125 () Bool)

(assert (=> b!2370396 (=> res!1006125 e!1512973)))

(assert (=> b!2370396 (= res!1006125 (not (isEmpty!15955 (tail!3397 (++!6902 s!9460 Nil!28025)))))))

(declare-fun d!695262 () Bool)

(assert (=> d!695262 e!1512971))

(declare-fun c!376784 () Bool)

(assert (=> d!695262 (= c!376784 (is-EmptyExpr!6942 lt!865856))))

(assert (=> d!695262 (= lt!865941 e!1512968)))

(declare-fun c!376786 () Bool)

(assert (=> d!695262 (= c!376786 (isEmpty!15955 (++!6902 s!9460 Nil!28025)))))

(assert (=> d!695262 (validRegex!2671 lt!865856)))

(assert (=> d!695262 (= (matchR!3059 lt!865856 (++!6902 s!9460 Nil!28025)) lt!865941)))

(declare-fun b!2370397 () Bool)

(assert (=> b!2370397 (= e!1512967 e!1512973)))

(declare-fun res!1006127 () Bool)

(assert (=> b!2370397 (=> res!1006127 e!1512973)))

(assert (=> b!2370397 (= res!1006127 call!144133)))

(declare-fun b!2370398 () Bool)

(assert (=> b!2370398 (= e!1512972 (= (head!5127 (++!6902 s!9460 Nil!28025)) (c!376694 lt!865856)))))

(assert (= (and d!695262 c!376786) b!2370395))

(assert (= (and d!695262 (not c!376786)) b!2370393))

(assert (= (and d!695262 c!376784) b!2370392))

(assert (= (and d!695262 (not c!376784)) b!2370386))

(assert (= (and b!2370386 c!376785) b!2370389))

(assert (= (and b!2370386 (not c!376785)) b!2370385))

(assert (= (and b!2370385 (not res!1006124)) b!2370388))

(assert (= (and b!2370388 res!1006128) b!2370390))

(assert (= (and b!2370390 res!1006130) b!2370391))

(assert (= (and b!2370391 res!1006126) b!2370398))

(assert (= (and b!2370388 (not res!1006129)) b!2370387))

(assert (= (and b!2370387 res!1006123) b!2370397))

(assert (= (and b!2370397 (not res!1006127)) b!2370396))

(assert (= (and b!2370396 (not res!1006125)) b!2370394))

(assert (= (or b!2370392 b!2370390 b!2370397) bm!144128))

(declare-fun m!2778413 () Bool)

(assert (=> b!2370395 m!2778413))

(assert (=> b!2370398 m!2778151))

(declare-fun m!2778415 () Bool)

(assert (=> b!2370398 m!2778415))

(assert (=> b!2370394 m!2778151))

(assert (=> b!2370394 m!2778415))

(assert (=> d!695262 m!2778151))

(declare-fun m!2778417 () Bool)

(assert (=> d!695262 m!2778417))

(declare-fun m!2778419 () Bool)

(assert (=> d!695262 m!2778419))

(assert (=> b!2370391 m!2778151))

(declare-fun m!2778421 () Bool)

(assert (=> b!2370391 m!2778421))

(assert (=> b!2370391 m!2778421))

(declare-fun m!2778423 () Bool)

(assert (=> b!2370391 m!2778423))

(assert (=> b!2370393 m!2778151))

(assert (=> b!2370393 m!2778415))

(assert (=> b!2370393 m!2778415))

(declare-fun m!2778425 () Bool)

(assert (=> b!2370393 m!2778425))

(assert (=> b!2370393 m!2778151))

(assert (=> b!2370393 m!2778421))

(assert (=> b!2370393 m!2778425))

(assert (=> b!2370393 m!2778421))

(declare-fun m!2778427 () Bool)

(assert (=> b!2370393 m!2778427))

(assert (=> b!2370396 m!2778151))

(assert (=> b!2370396 m!2778421))

(assert (=> b!2370396 m!2778421))

(assert (=> b!2370396 m!2778423))

(assert (=> bm!144128 m!2778151))

(assert (=> bm!144128 m!2778417))

(assert (=> b!2369975 d!695262))

(declare-fun b!2370416 () Bool)

(declare-fun e!1512983 () Bool)

(declare-fun lt!865946 () List!28123)

(assert (=> b!2370416 (= e!1512983 (or (not (= Nil!28025 Nil!28025)) (= lt!865946 s!9460)))))

(declare-fun b!2370415 () Bool)

(declare-fun res!1006141 () Bool)

(assert (=> b!2370415 (=> (not res!1006141) (not e!1512983))))

(declare-fun size!22145 (List!28123) Int)

(assert (=> b!2370415 (= res!1006141 (= (size!22145 lt!865946) (+ (size!22145 s!9460) (size!22145 Nil!28025))))))

(declare-fun d!695264 () Bool)

(assert (=> d!695264 e!1512983))

(declare-fun res!1006142 () Bool)

(assert (=> d!695264 (=> (not res!1006142) (not e!1512983))))

(declare-fun content!3807 (List!28123) (Set C!14042))

(assert (=> d!695264 (= res!1006142 (= (content!3807 lt!865946) (set.union (content!3807 s!9460) (content!3807 Nil!28025))))))

(declare-fun e!1512982 () List!28123)

(assert (=> d!695264 (= lt!865946 e!1512982)))

(declare-fun c!376789 () Bool)

(assert (=> d!695264 (= c!376789 (is-Nil!28025 s!9460))))

(assert (=> d!695264 (= (++!6902 s!9460 Nil!28025) lt!865946)))

(declare-fun b!2370414 () Bool)

(assert (=> b!2370414 (= e!1512982 (Cons!28025 (h!33426 s!9460) (++!6902 (t!208100 s!9460) Nil!28025)))))

(declare-fun b!2370413 () Bool)

(assert (=> b!2370413 (= e!1512982 Nil!28025)))

(assert (= (and d!695264 c!376789) b!2370413))

(assert (= (and d!695264 (not c!376789)) b!2370414))

(assert (= (and d!695264 res!1006142) b!2370415))

(assert (= (and b!2370415 res!1006141) b!2370416))

(declare-fun m!2778429 () Bool)

(assert (=> b!2370415 m!2778429))

(declare-fun m!2778431 () Bool)

(assert (=> b!2370415 m!2778431))

(declare-fun m!2778433 () Bool)

(assert (=> b!2370415 m!2778433))

(declare-fun m!2778435 () Bool)

(assert (=> d!695264 m!2778435))

(declare-fun m!2778437 () Bool)

(assert (=> d!695264 m!2778437))

(declare-fun m!2778439 () Bool)

(assert (=> d!695264 m!2778439))

(declare-fun m!2778441 () Bool)

(assert (=> b!2370414 m!2778441))

(assert (=> b!2369975 d!695264))

(declare-fun d!695266 () Bool)

(assert (=> d!695266 (matchR!3059 (Concat!11578 lt!865862 EmptyExpr!6942) (++!6902 s!9460 Nil!28025))))

(declare-fun lt!865950 () Unit!40919)

(declare-fun choose!13787 (Regex!6942 Regex!6942 List!28123 List!28123) Unit!40919)

(assert (=> d!695266 (= lt!865950 (choose!13787 lt!865862 EmptyExpr!6942 s!9460 Nil!28025))))

(declare-fun e!1512986 () Bool)

(assert (=> d!695266 e!1512986))

(declare-fun res!1006147 () Bool)

(assert (=> d!695266 (=> (not res!1006147) (not e!1512986))))

(assert (=> d!695266 (= res!1006147 (validRegex!2671 lt!865862))))

(assert (=> d!695266 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!15 lt!865862 EmptyExpr!6942 s!9460 Nil!28025) lt!865950)))

(declare-fun b!2370421 () Bool)

(assert (=> b!2370421 (= e!1512986 (validRegex!2671 EmptyExpr!6942))))

(assert (= (and d!695266 res!1006147) b!2370421))

(assert (=> d!695266 m!2778151))

(assert (=> d!695266 m!2778151))

(declare-fun m!2778443 () Bool)

(assert (=> d!695266 m!2778443))

(declare-fun m!2778445 () Bool)

(assert (=> d!695266 m!2778445))

(assert (=> d!695266 m!2778319))

(declare-fun m!2778447 () Bool)

(assert (=> b!2370421 m!2778447))

(assert (=> b!2369975 d!695266))

(declare-fun d!695268 () Bool)

(assert (=> d!695268 (= (isEmpty!15953 lt!865857) (is-Nil!28024 lt!865857))))

(assert (=> b!2369969 d!695268))

(declare-fun d!695270 () Bool)

(assert (=> d!695270 (= (tail!3395 l!9164) (t!208099 l!9164))))

(assert (=> b!2369969 d!695270))

(declare-fun b!2370422 () Bool)

(declare-fun res!1006149 () Bool)

(declare-fun e!1512989 () Bool)

(assert (=> b!2370422 (=> res!1006149 e!1512989)))

(assert (=> b!2370422 (= res!1006149 (not (is-ElementMatch!6942 lt!865856)))))

(declare-fun e!1512990 () Bool)

(assert (=> b!2370422 (= e!1512990 e!1512989)))

(declare-fun b!2370423 () Bool)

(declare-fun e!1512991 () Bool)

(assert (=> b!2370423 (= e!1512991 e!1512990)))

(declare-fun c!376791 () Bool)

(assert (=> b!2370423 (= c!376791 (is-EmptyLang!6942 lt!865856))))

(declare-fun b!2370424 () Bool)

(declare-fun e!1512987 () Bool)

(assert (=> b!2370424 (= e!1512989 e!1512987)))

(declare-fun res!1006148 () Bool)

(assert (=> b!2370424 (=> (not res!1006148) (not e!1512987))))

(declare-fun lt!865951 () Bool)

(assert (=> b!2370424 (= res!1006148 (not lt!865951))))

(declare-fun b!2370425 () Bool)

(declare-fun res!1006154 () Bool)

(assert (=> b!2370425 (=> res!1006154 e!1512989)))

(declare-fun e!1512992 () Bool)

(assert (=> b!2370425 (= res!1006154 e!1512992)))

(declare-fun res!1006153 () Bool)

(assert (=> b!2370425 (=> (not res!1006153) (not e!1512992))))

(assert (=> b!2370425 (= res!1006153 lt!865951)))

(declare-fun bm!144129 () Bool)

(declare-fun call!144134 () Bool)

(assert (=> bm!144129 (= call!144134 (isEmpty!15955 s!9460))))

(declare-fun b!2370426 () Bool)

(assert (=> b!2370426 (= e!1512990 (not lt!865951))))

(declare-fun b!2370427 () Bool)

(declare-fun res!1006155 () Bool)

(assert (=> b!2370427 (=> (not res!1006155) (not e!1512992))))

(assert (=> b!2370427 (= res!1006155 (not call!144134))))

(declare-fun b!2370428 () Bool)

(declare-fun res!1006151 () Bool)

(assert (=> b!2370428 (=> (not res!1006151) (not e!1512992))))

(assert (=> b!2370428 (= res!1006151 (isEmpty!15955 (tail!3397 s!9460)))))

(declare-fun b!2370429 () Bool)

(assert (=> b!2370429 (= e!1512991 (= lt!865951 call!144134))))

(declare-fun b!2370430 () Bool)

(declare-fun e!1512988 () Bool)

(assert (=> b!2370430 (= e!1512988 (matchR!3059 (derivativeStep!1658 lt!865856 (head!5127 s!9460)) (tail!3397 s!9460)))))

(declare-fun b!2370431 () Bool)

(declare-fun e!1512993 () Bool)

(assert (=> b!2370431 (= e!1512993 (not (= (head!5127 s!9460) (c!376694 lt!865856))))))

(declare-fun b!2370432 () Bool)

(assert (=> b!2370432 (= e!1512988 (nullable!2000 lt!865856))))

(declare-fun b!2370433 () Bool)

(declare-fun res!1006150 () Bool)

(assert (=> b!2370433 (=> res!1006150 e!1512993)))

(assert (=> b!2370433 (= res!1006150 (not (isEmpty!15955 (tail!3397 s!9460))))))

(declare-fun d!695276 () Bool)

(assert (=> d!695276 e!1512991))

(declare-fun c!376790 () Bool)

(assert (=> d!695276 (= c!376790 (is-EmptyExpr!6942 lt!865856))))

(assert (=> d!695276 (= lt!865951 e!1512988)))

(declare-fun c!376792 () Bool)

(assert (=> d!695276 (= c!376792 (isEmpty!15955 s!9460))))

(assert (=> d!695276 (validRegex!2671 lt!865856)))

(assert (=> d!695276 (= (matchR!3059 lt!865856 s!9460) lt!865951)))

(declare-fun b!2370434 () Bool)

(assert (=> b!2370434 (= e!1512987 e!1512993)))

(declare-fun res!1006152 () Bool)

(assert (=> b!2370434 (=> res!1006152 e!1512993)))

(assert (=> b!2370434 (= res!1006152 call!144134)))

(declare-fun b!2370435 () Bool)

(assert (=> b!2370435 (= e!1512992 (= (head!5127 s!9460) (c!376694 lt!865856)))))

(assert (= (and d!695276 c!376792) b!2370432))

(assert (= (and d!695276 (not c!376792)) b!2370430))

(assert (= (and d!695276 c!376790) b!2370429))

(assert (= (and d!695276 (not c!376790)) b!2370423))

(assert (= (and b!2370423 c!376791) b!2370426))

(assert (= (and b!2370423 (not c!376791)) b!2370422))

(assert (= (and b!2370422 (not res!1006149)) b!2370425))

(assert (= (and b!2370425 res!1006153) b!2370427))

(assert (= (and b!2370427 res!1006155) b!2370428))

(assert (= (and b!2370428 res!1006151) b!2370435))

(assert (= (and b!2370425 (not res!1006154)) b!2370424))

(assert (= (and b!2370424 res!1006148) b!2370434))

(assert (= (and b!2370434 (not res!1006152)) b!2370433))

(assert (= (and b!2370433 (not res!1006150)) b!2370431))

(assert (= (or b!2370429 b!2370427 b!2370434) bm!144129))

(assert (=> b!2370432 m!2778413))

(assert (=> b!2370435 m!2778289))

(assert (=> b!2370431 m!2778289))

(assert (=> d!695276 m!2778283))

(assert (=> d!695276 m!2778419))

(assert (=> b!2370428 m!2778293))

(assert (=> b!2370428 m!2778293))

(assert (=> b!2370428 m!2778295))

(assert (=> b!2370430 m!2778289))

(assert (=> b!2370430 m!2778289))

(declare-fun m!2778457 () Bool)

(assert (=> b!2370430 m!2778457))

(assert (=> b!2370430 m!2778293))

(assert (=> b!2370430 m!2778457))

(assert (=> b!2370430 m!2778293))

(declare-fun m!2778459 () Bool)

(assert (=> b!2370430 m!2778459))

(assert (=> b!2370433 m!2778293))

(assert (=> b!2370433 m!2778293))

(assert (=> b!2370433 m!2778295))

(assert (=> bm!144129 m!2778283))

(assert (=> b!2369964 d!695276))

(declare-fun b!2370453 () Bool)

(declare-fun e!1513002 () Bool)

(declare-fun tp!757684 () Bool)

(declare-fun tp!757680 () Bool)

(assert (=> b!2370453 (= e!1513002 (and tp!757684 tp!757680))))

(assert (=> b!2369971 (= tp!757645 e!1513002)))

(declare-fun b!2370452 () Bool)

(assert (=> b!2370452 (= e!1513002 tp_is_empty!11297)))

(declare-fun b!2370454 () Bool)

(declare-fun tp!757683 () Bool)

(assert (=> b!2370454 (= e!1513002 tp!757683)))

(declare-fun b!2370455 () Bool)

(declare-fun tp!757681 () Bool)

(declare-fun tp!757682 () Bool)

(assert (=> b!2370455 (= e!1513002 (and tp!757681 tp!757682))))

(assert (= (and b!2369971 (is-ElementMatch!6942 (regOne!14397 r!13927))) b!2370452))

(assert (= (and b!2369971 (is-Concat!11578 (regOne!14397 r!13927))) b!2370453))

(assert (= (and b!2369971 (is-Star!6942 (regOne!14397 r!13927))) b!2370454))

(assert (= (and b!2369971 (is-Union!6942 (regOne!14397 r!13927))) b!2370455))

(declare-fun b!2370457 () Bool)

(declare-fun e!1513003 () Bool)

(declare-fun tp!757689 () Bool)

(declare-fun tp!757685 () Bool)

(assert (=> b!2370457 (= e!1513003 (and tp!757689 tp!757685))))

(assert (=> b!2369971 (= tp!757641 e!1513003)))

(declare-fun b!2370456 () Bool)

(assert (=> b!2370456 (= e!1513003 tp_is_empty!11297)))

(declare-fun b!2370458 () Bool)

(declare-fun tp!757688 () Bool)

(assert (=> b!2370458 (= e!1513003 tp!757688)))

(declare-fun b!2370459 () Bool)

(declare-fun tp!757686 () Bool)

(declare-fun tp!757687 () Bool)

(assert (=> b!2370459 (= e!1513003 (and tp!757686 tp!757687))))

(assert (= (and b!2369971 (is-ElementMatch!6942 (regTwo!14397 r!13927))) b!2370456))

(assert (= (and b!2369971 (is-Concat!11578 (regTwo!14397 r!13927))) b!2370457))

(assert (= (and b!2369971 (is-Star!6942 (regTwo!14397 r!13927))) b!2370458))

(assert (= (and b!2369971 (is-Union!6942 (regTwo!14397 r!13927))) b!2370459))

(declare-fun b!2370475 () Bool)

(declare-fun e!1513011 () Bool)

(declare-fun tp!757694 () Bool)

(declare-fun tp!757690 () Bool)

(assert (=> b!2370475 (= e!1513011 (and tp!757694 tp!757690))))

(assert (=> b!2369962 (= tp!757643 e!1513011)))

(declare-fun b!2370474 () Bool)

(assert (=> b!2370474 (= e!1513011 tp_is_empty!11297)))

(declare-fun b!2370476 () Bool)

(declare-fun tp!757693 () Bool)

(assert (=> b!2370476 (= e!1513011 tp!757693)))

(declare-fun b!2370477 () Bool)

(declare-fun tp!757691 () Bool)

(declare-fun tp!757692 () Bool)

(assert (=> b!2370477 (= e!1513011 (and tp!757691 tp!757692))))

(assert (= (and b!2369962 (is-ElementMatch!6942 (reg!7271 r!13927))) b!2370474))

(assert (= (and b!2369962 (is-Concat!11578 (reg!7271 r!13927))) b!2370475))

(assert (= (and b!2369962 (is-Star!6942 (reg!7271 r!13927))) b!2370476))

(assert (= (and b!2369962 (is-Union!6942 (reg!7271 r!13927))) b!2370477))

(declare-fun b!2370479 () Bool)

(declare-fun e!1513012 () Bool)

(declare-fun tp!757699 () Bool)

(declare-fun tp!757695 () Bool)

(assert (=> b!2370479 (= e!1513012 (and tp!757699 tp!757695))))

(assert (=> b!2369974 (= tp!757639 e!1513012)))

(declare-fun b!2370478 () Bool)

(assert (=> b!2370478 (= e!1513012 tp_is_empty!11297)))

(declare-fun b!2370480 () Bool)

(declare-fun tp!757698 () Bool)

(assert (=> b!2370480 (= e!1513012 tp!757698)))

(declare-fun b!2370481 () Bool)

(declare-fun tp!757696 () Bool)

(declare-fun tp!757697 () Bool)

(assert (=> b!2370481 (= e!1513012 (and tp!757696 tp!757697))))

(assert (= (and b!2369974 (is-ElementMatch!6942 (h!33425 l!9164))) b!2370478))

(assert (= (and b!2369974 (is-Concat!11578 (h!33425 l!9164))) b!2370479))

(assert (= (and b!2369974 (is-Star!6942 (h!33425 l!9164))) b!2370480))

(assert (= (and b!2369974 (is-Union!6942 (h!33425 l!9164))) b!2370481))

(declare-fun b!2370486 () Bool)

(declare-fun e!1513015 () Bool)

(declare-fun tp!757704 () Bool)

(declare-fun tp!757705 () Bool)

(assert (=> b!2370486 (= e!1513015 (and tp!757704 tp!757705))))

(assert (=> b!2369974 (= tp!757644 e!1513015)))

(assert (= (and b!2369974 (is-Cons!28024 (t!208099 l!9164))) b!2370486))

(declare-fun b!2370488 () Bool)

(declare-fun e!1513016 () Bool)

(declare-fun tp!757710 () Bool)

(declare-fun tp!757706 () Bool)

(assert (=> b!2370488 (= e!1513016 (and tp!757710 tp!757706))))

(assert (=> b!2369973 (= tp!757638 e!1513016)))

(declare-fun b!2370487 () Bool)

(assert (=> b!2370487 (= e!1513016 tp_is_empty!11297)))

(declare-fun b!2370489 () Bool)

(declare-fun tp!757709 () Bool)

(assert (=> b!2370489 (= e!1513016 tp!757709)))

(declare-fun b!2370490 () Bool)

(declare-fun tp!757707 () Bool)

(declare-fun tp!757708 () Bool)

(assert (=> b!2370490 (= e!1513016 (and tp!757707 tp!757708))))

(assert (= (and b!2369973 (is-ElementMatch!6942 (regOne!14396 r!13927))) b!2370487))

(assert (= (and b!2369973 (is-Concat!11578 (regOne!14396 r!13927))) b!2370488))

(assert (= (and b!2369973 (is-Star!6942 (regOne!14396 r!13927))) b!2370489))

(assert (= (and b!2369973 (is-Union!6942 (regOne!14396 r!13927))) b!2370490))

(declare-fun b!2370492 () Bool)

(declare-fun e!1513017 () Bool)

(declare-fun tp!757715 () Bool)

(declare-fun tp!757711 () Bool)

(assert (=> b!2370492 (= e!1513017 (and tp!757715 tp!757711))))

(assert (=> b!2369973 (= tp!757642 e!1513017)))

(declare-fun b!2370491 () Bool)

(assert (=> b!2370491 (= e!1513017 tp_is_empty!11297)))

(declare-fun b!2370493 () Bool)

(declare-fun tp!757714 () Bool)

(assert (=> b!2370493 (= e!1513017 tp!757714)))

(declare-fun b!2370494 () Bool)

(declare-fun tp!757712 () Bool)

(declare-fun tp!757713 () Bool)

(assert (=> b!2370494 (= e!1513017 (and tp!757712 tp!757713))))

(assert (= (and b!2369973 (is-ElementMatch!6942 (regTwo!14396 r!13927))) b!2370491))

(assert (= (and b!2369973 (is-Concat!11578 (regTwo!14396 r!13927))) b!2370492))

(assert (= (and b!2369973 (is-Star!6942 (regTwo!14396 r!13927))) b!2370493))

(assert (= (and b!2369973 (is-Union!6942 (regTwo!14396 r!13927))) b!2370494))

(declare-fun b!2370499 () Bool)

(declare-fun e!1513020 () Bool)

(declare-fun tp!757718 () Bool)

(assert (=> b!2370499 (= e!1513020 (and tp_is_empty!11297 tp!757718))))

(assert (=> b!2369970 (= tp!757640 e!1513020)))

(assert (= (and b!2369970 (is-Cons!28025 (t!208100 s!9460))) b!2370499))

(declare-fun b_lambda!73927 () Bool)

(assert (= b_lambda!73923 (or start!232590 b_lambda!73927)))

(declare-fun bs!461215 () Bool)

(declare-fun d!695284 () Bool)

(assert (= bs!461215 (and d!695284 start!232590)))

(assert (=> bs!461215 (= (dynLambda!12069 lambda!87678 (h!33425 l!9164)) (validRegex!2671 (h!33425 l!9164)))))

(declare-fun m!2778477 () Bool)

(assert (=> bs!461215 m!2778477))

(assert (=> b!2370103 d!695284))

(push 1)

(assert (not b!2370104))

(assert (not b!2370299))

(assert (not d!695256))

(assert (not d!695244))

(assert (not b!2370489))

(assert (not b!2370479))

(assert (not b!2370297))

(assert tp_is_empty!11297)

(assert (not bm!144116))

(assert (not d!695224))

(assert (not d!695260))

(assert (not bm!144127))

(assert (not b!2370458))

(assert (not b!2370373))

(assert (not b!2370492))

(assert (not b!2370077))

(assert (not b!2370433))

(assert (not b!2370304))

(assert (not d!695226))

(assert (not d!695212))

(assert (not b!2370186))

(assert (not b!2370381))

(assert (not b!2370486))

(assert (not b!2370076))

(assert (not d!695250))

(assert (not b!2370274))

(assert (not b!2370269))

(assert (not b!2370074))

(assert (not b!2370475))

(assert (not b!2370376))

(assert (not b!2370191))

(assert (not b!2370432))

(assert (not b!2370431))

(assert (not b!2370459))

(assert (not d!695238))

(assert (not b!2370081))

(assert (not b!2370394))

(assert (not b!2370453))

(assert (not b!2370480))

(assert (not b!2370075))

(assert (not bm!144128))

(assert (not b!2370383))

(assert (not b!2370488))

(assert (not b!2370374))

(assert (not bm!144129))

(assert (not b!2370368))

(assert (not b!2370395))

(assert (not b!2370430))

(assert (not b!2370366))

(assert (not b!2370477))

(assert (not b!2370384))

(assert (not b!2370273))

(assert (not d!695266))

(assert (not b!2370428))

(assert (not b!2370079))

(assert (not b!2370481))

(assert (not b!2370455))

(assert (not b_lambda!73927))

(assert (not d!695262))

(assert (not bm!144125))

(assert (not b!2370379))

(assert (not b!2370415))

(assert (not bm!144115))

(assert (not b!2370391))

(assert (not b!2370493))

(assert (not b!2370377))

(assert (not b!2370499))

(assert (not b!2370367))

(assert (not b!2370271))

(assert (not b!2370302))

(assert (not b!2370421))

(assert (not b!2370393))

(assert (not b!2370300))

(assert (not d!695236))

(assert (not b!2370476))

(assert (not d!695276))

(assert (not d!695248))

(assert (not b!2370494))

(assert (not b!2370414))

(assert (not d!695264))

(assert (not b!2370396))

(assert (not b!2370490))

(assert (not bs!461215))

(assert (not b!2370457))

(assert (not b!2370272))

(assert (not b!2370301))

(assert (not b!2370378))

(assert (not b!2370082))

(assert (not d!695232))

(assert (not b!2370454))

(assert (not b!2370435))

(assert (not b!2370372))

(assert (not b!2370276))

(assert (not b!2370398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

