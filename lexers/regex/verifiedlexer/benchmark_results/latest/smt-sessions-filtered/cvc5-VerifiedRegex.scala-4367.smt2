; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232184 () Bool)

(assert start!232184)

(declare-fun b!2365793 () Bool)

(assert (=> b!2365793 true))

(assert (=> b!2365793 true))

(declare-fun lambda!87238 () Int)

(declare-fun lambda!87237 () Int)

(assert (=> b!2365793 (not (= lambda!87238 lambda!87237))))

(assert (=> b!2365793 true))

(assert (=> b!2365793 true))

(declare-fun b!2365783 () Bool)

(declare-fun e!1510561 () Bool)

(declare-fun e!1510564 () Bool)

(assert (=> b!2365783 (= e!1510561 (not e!1510564))))

(declare-fun res!1004002 () Bool)

(assert (=> b!2365783 (=> res!1004002 e!1510564)))

(declare-datatypes ((C!14010 0))(
  ( (C!14011 (val!8247 Int)) )
))
(declare-datatypes ((Regex!6926 0))(
  ( (ElementMatch!6926 (c!376026 C!14010)) (Concat!11562 (regOne!14364 Regex!6926) (regTwo!14364 Regex!6926)) (EmptyExpr!6926) (Star!6926 (reg!7255 Regex!6926)) (EmptyLang!6926) (Union!6926 (regOne!14365 Regex!6926) (regTwo!14365 Regex!6926)) )
))
(declare-fun r!13927 () Regex!6926)

(assert (=> b!2365783 (= res!1004002 (not (is-Concat!11562 r!13927)))))

(declare-fun lt!865097 () Bool)

(declare-fun lt!865096 () Bool)

(assert (=> b!2365783 (= lt!865097 lt!865096)))

(declare-datatypes ((List!28090 0))(
  ( (Nil!27992) (Cons!27992 (h!33393 C!14010) (t!208067 List!28090)) )
))
(declare-fun s!9460 () List!28090)

(declare-fun matchRSpec!775 (Regex!6926 List!28090) Bool)

(assert (=> b!2365783 (= lt!865096 (matchRSpec!775 r!13927 s!9460))))

(declare-fun matchR!3043 (Regex!6926 List!28090) Bool)

(assert (=> b!2365783 (= lt!865097 (matchR!3043 r!13927 s!9460))))

(declare-datatypes ((Unit!40887 0))(
  ( (Unit!40888) )
))
(declare-fun lt!865095 () Unit!40887)

(declare-fun mainMatchTheorem!775 (Regex!6926 List!28090) Unit!40887)

(assert (=> b!2365783 (= lt!865095 (mainMatchTheorem!775 r!13927 s!9460))))

(declare-fun b!2365784 () Bool)

(declare-fun res!1004004 () Bool)

(declare-fun e!1510563 () Bool)

(assert (=> b!2365784 (=> res!1004004 e!1510563)))

(declare-datatypes ((List!28091 0))(
  ( (Nil!27993) (Cons!27993 (h!33394 Regex!6926) (t!208068 List!28091)) )
))
(declare-fun l!9164 () List!28091)

(declare-fun isEmpty!15914 (List!28091) Bool)

(assert (=> b!2365784 (= res!1004004 (isEmpty!15914 l!9164))))

(declare-fun b!2365785 () Bool)

(declare-fun e!1510562 () Bool)

(declare-fun tp_is_empty!11265 () Bool)

(assert (=> b!2365785 (= e!1510562 tp_is_empty!11265)))

(declare-fun b!2365786 () Bool)

(declare-fun e!1510559 () Bool)

(declare-fun tp!756571 () Bool)

(assert (=> b!2365786 (= e!1510559 (and tp_is_empty!11265 tp!756571))))

(declare-fun b!2365787 () Bool)

(assert (=> b!2365787 (= e!1510563 (not (= l!9164 Nil!27993)))))

(declare-fun b!2365788 () Bool)

(declare-fun tp!756575 () Bool)

(declare-fun tp!756569 () Bool)

(assert (=> b!2365788 (= e!1510562 (and tp!756575 tp!756569))))

(declare-fun b!2365789 () Bool)

(declare-fun tp!756573 () Bool)

(declare-fun tp!756570 () Bool)

(assert (=> b!2365789 (= e!1510562 (and tp!756573 tp!756570))))

(declare-fun b!2365790 () Bool)

(declare-fun res!1004003 () Bool)

(assert (=> b!2365790 (=> (not res!1004003) (not e!1510561))))

(declare-fun generalisedConcat!27 (List!28091) Regex!6926)

(assert (=> b!2365790 (= res!1004003 (= r!13927 (generalisedConcat!27 l!9164)))))

(declare-fun b!2365792 () Bool)

(declare-fun tp!756572 () Bool)

(assert (=> b!2365792 (= e!1510562 tp!756572)))

(assert (=> b!2365793 (= e!1510564 e!1510563)))

(declare-fun res!1004005 () Bool)

(assert (=> b!2365793 (=> res!1004005 e!1510563)))

(declare-fun lt!865098 () Bool)

(assert (=> b!2365793 (= res!1004005 (not (= lt!865096 lt!865098)))))

(declare-fun Exists!988 (Int) Bool)

(assert (=> b!2365793 (= (Exists!988 lambda!87237) (Exists!988 lambda!87238))))

(declare-fun lt!865093 () Unit!40887)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!327 (Regex!6926 Regex!6926 List!28090) Unit!40887)

(assert (=> b!2365793 (= lt!865093 (lemmaExistCutMatchRandMatchRSpecEquivalent!327 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460))))

(assert (=> b!2365793 (= lt!865098 (Exists!988 lambda!87237))))

(declare-datatypes ((tuple2!27716 0))(
  ( (tuple2!27717 (_1!16399 List!28090) (_2!16399 List!28090)) )
))
(declare-datatypes ((Option!5469 0))(
  ( (None!5468) (Some!5468 (v!30876 tuple2!27716)) )
))
(declare-fun isDefined!4297 (Option!5469) Bool)

(declare-fun findConcatSeparation!577 (Regex!6926 Regex!6926 List!28090 List!28090 List!28090) Option!5469)

(assert (=> b!2365793 (= lt!865098 (isDefined!4297 (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) Nil!27992 s!9460 s!9460)))))

(declare-fun lt!865094 () Unit!40887)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!577 (Regex!6926 Regex!6926 List!28090) Unit!40887)

(assert (=> b!2365793 (= lt!865094 (lemmaFindConcatSeparationEquivalentToExists!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460))))

(declare-fun b!2365794 () Bool)

(declare-fun e!1510560 () Bool)

(declare-fun tp!756574 () Bool)

(declare-fun tp!756568 () Bool)

(assert (=> b!2365794 (= e!1510560 (and tp!756574 tp!756568))))

(declare-fun res!1004006 () Bool)

(assert (=> start!232184 (=> (not res!1004006) (not e!1510561))))

(declare-fun lambda!87236 () Int)

(declare-fun forall!5560 (List!28091 Int) Bool)

(assert (=> start!232184 (= res!1004006 (forall!5560 l!9164 lambda!87236))))

(assert (=> start!232184 e!1510561))

(assert (=> start!232184 e!1510560))

(assert (=> start!232184 e!1510562))

(assert (=> start!232184 e!1510559))

(declare-fun b!2365791 () Bool)

(declare-fun res!1004001 () Bool)

(assert (=> b!2365791 (=> res!1004001 e!1510563)))

(declare-fun tail!3367 (List!28091) List!28091)

(assert (=> b!2365791 (= res!1004001 (not (isEmpty!15914 (tail!3367 l!9164))))))

(assert (= (and start!232184 res!1004006) b!2365790))

(assert (= (and b!2365790 res!1004003) b!2365783))

(assert (= (and b!2365783 (not res!1004002)) b!2365793))

(assert (= (and b!2365793 (not res!1004005)) b!2365784))

(assert (= (and b!2365784 (not res!1004004)) b!2365791))

(assert (= (and b!2365791 (not res!1004001)) b!2365787))

(assert (= (and start!232184 (is-Cons!27993 l!9164)) b!2365794))

(assert (= (and start!232184 (is-ElementMatch!6926 r!13927)) b!2365785))

(assert (= (and start!232184 (is-Concat!11562 r!13927)) b!2365789))

(assert (= (and start!232184 (is-Star!6926 r!13927)) b!2365792))

(assert (= (and start!232184 (is-Union!6926 r!13927)) b!2365788))

(assert (= (and start!232184 (is-Cons!27992 s!9460)) b!2365786))

(declare-fun m!2776015 () Bool)

(assert (=> b!2365790 m!2776015))

(declare-fun m!2776017 () Bool)

(assert (=> b!2365793 m!2776017))

(declare-fun m!2776019 () Bool)

(assert (=> b!2365793 m!2776019))

(declare-fun m!2776021 () Bool)

(assert (=> b!2365793 m!2776021))

(declare-fun m!2776023 () Bool)

(assert (=> b!2365793 m!2776023))

(assert (=> b!2365793 m!2776023))

(declare-fun m!2776025 () Bool)

(assert (=> b!2365793 m!2776025))

(assert (=> b!2365793 m!2776017))

(declare-fun m!2776027 () Bool)

(assert (=> b!2365793 m!2776027))

(declare-fun m!2776029 () Bool)

(assert (=> start!232184 m!2776029))

(declare-fun m!2776031 () Bool)

(assert (=> b!2365791 m!2776031))

(assert (=> b!2365791 m!2776031))

(declare-fun m!2776033 () Bool)

(assert (=> b!2365791 m!2776033))

(declare-fun m!2776035 () Bool)

(assert (=> b!2365784 m!2776035))

(declare-fun m!2776037 () Bool)

(assert (=> b!2365783 m!2776037))

(declare-fun m!2776039 () Bool)

(assert (=> b!2365783 m!2776039))

(declare-fun m!2776041 () Bool)

(assert (=> b!2365783 m!2776041))

(push 1)

(assert (not b!2365783))

(assert (not start!232184))

(assert (not b!2365788))

(assert (not b!2365793))

(assert (not b!2365789))

(assert (not b!2365794))

(assert (not b!2365786))

(assert (not b!2365790))

(assert (not b!2365784))

(assert (not b!2365792))

(assert (not b!2365791))

(assert tp_is_empty!11265)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!694702 () Bool)

(assert (=> d!694702 (= (isEmpty!15914 l!9164) (is-Nil!27993 l!9164))))

(assert (=> b!2365784 d!694702))

(declare-fun bs!460890 () Bool)

(declare-fun b!2365886 () Bool)

(assert (= bs!460890 (and b!2365886 b!2365793)))

(declare-fun lambda!87254 () Int)

(assert (=> bs!460890 (not (= lambda!87254 lambda!87237))))

(assert (=> bs!460890 (not (= lambda!87254 lambda!87238))))

(assert (=> b!2365886 true))

(assert (=> b!2365886 true))

(declare-fun bs!460891 () Bool)

(declare-fun b!2365887 () Bool)

(assert (= bs!460891 (and b!2365887 b!2365793)))

(declare-fun lambda!87255 () Int)

(assert (=> bs!460891 (not (= lambda!87255 lambda!87237))))

(assert (=> bs!460891 (= lambda!87255 lambda!87238)))

(declare-fun bs!460892 () Bool)

(assert (= bs!460892 (and b!2365887 b!2365886)))

(assert (=> bs!460892 (not (= lambda!87255 lambda!87254))))

(assert (=> b!2365887 true))

(assert (=> b!2365887 true))

(declare-fun b!2365883 () Bool)

(declare-fun c!376038 () Bool)

(assert (=> b!2365883 (= c!376038 (is-Union!6926 r!13927))))

(declare-fun e!1510608 () Bool)

(declare-fun e!1510611 () Bool)

(assert (=> b!2365883 (= e!1510608 e!1510611)))

(declare-fun b!2365884 () Bool)

(declare-fun c!376039 () Bool)

(assert (=> b!2365884 (= c!376039 (is-ElementMatch!6926 r!13927))))

(declare-fun e!1510613 () Bool)

(assert (=> b!2365884 (= e!1510613 e!1510608)))

(declare-fun bm!143940 () Bool)

(declare-fun call!143945 () Bool)

(declare-fun isEmpty!15916 (List!28090) Bool)

(assert (=> bm!143940 (= call!143945 (isEmpty!15916 s!9460))))

(declare-fun e!1510607 () Bool)

(declare-fun call!143946 () Bool)

(assert (=> b!2365886 (= e!1510607 call!143946)))

(declare-fun bm!143941 () Bool)

(declare-fun c!376036 () Bool)

(assert (=> bm!143941 (= call!143946 (Exists!988 (ite c!376036 lambda!87254 lambda!87255)))))

(declare-fun e!1510609 () Bool)

(assert (=> b!2365887 (= e!1510609 call!143946)))

(declare-fun b!2365888 () Bool)

(assert (=> b!2365888 (= e!1510608 (= s!9460 (Cons!27992 (c!376026 r!13927) Nil!27992)))))

(declare-fun b!2365889 () Bool)

(declare-fun e!1510610 () Bool)

(assert (=> b!2365889 (= e!1510610 call!143945)))

(declare-fun b!2365890 () Bool)

(declare-fun e!1510612 () Bool)

(assert (=> b!2365890 (= e!1510611 e!1510612)))

(declare-fun res!1004055 () Bool)

(assert (=> b!2365890 (= res!1004055 (matchRSpec!775 (regOne!14365 r!13927) s!9460))))

(assert (=> b!2365890 (=> res!1004055 e!1510612)))

(declare-fun b!2365891 () Bool)

(assert (=> b!2365891 (= e!1510610 e!1510613)))

(declare-fun res!1004054 () Bool)

(assert (=> b!2365891 (= res!1004054 (not (is-EmptyLang!6926 r!13927)))))

(assert (=> b!2365891 (=> (not res!1004054) (not e!1510613))))

(declare-fun b!2365885 () Bool)

(declare-fun res!1004053 () Bool)

(assert (=> b!2365885 (=> res!1004053 e!1510607)))

(assert (=> b!2365885 (= res!1004053 call!143945)))

(assert (=> b!2365885 (= e!1510609 e!1510607)))

(declare-fun d!694704 () Bool)

(declare-fun c!376037 () Bool)

(assert (=> d!694704 (= c!376037 (is-EmptyExpr!6926 r!13927))))

(assert (=> d!694704 (= (matchRSpec!775 r!13927 s!9460) e!1510610)))

(declare-fun b!2365892 () Bool)

(assert (=> b!2365892 (= e!1510612 (matchRSpec!775 (regTwo!14365 r!13927) s!9460))))

(declare-fun b!2365893 () Bool)

(assert (=> b!2365893 (= e!1510611 e!1510609)))

(assert (=> b!2365893 (= c!376036 (is-Star!6926 r!13927))))

(assert (= (and d!694704 c!376037) b!2365889))

(assert (= (and d!694704 (not c!376037)) b!2365891))

(assert (= (and b!2365891 res!1004054) b!2365884))

(assert (= (and b!2365884 c!376039) b!2365888))

(assert (= (and b!2365884 (not c!376039)) b!2365883))

(assert (= (and b!2365883 c!376038) b!2365890))

(assert (= (and b!2365883 (not c!376038)) b!2365893))

(assert (= (and b!2365890 (not res!1004055)) b!2365892))

(assert (= (and b!2365893 c!376036) b!2365885))

(assert (= (and b!2365893 (not c!376036)) b!2365887))

(assert (= (and b!2365885 (not res!1004053)) b!2365886))

(assert (= (or b!2365886 b!2365887) bm!143941))

(assert (= (or b!2365889 b!2365885) bm!143940))

(declare-fun m!2776071 () Bool)

(assert (=> bm!143940 m!2776071))

(declare-fun m!2776073 () Bool)

(assert (=> bm!143941 m!2776073))

(declare-fun m!2776075 () Bool)

(assert (=> b!2365890 m!2776075))

(declare-fun m!2776077 () Bool)

(assert (=> b!2365892 m!2776077))

(assert (=> b!2365783 d!694704))

(declare-fun b!2365950 () Bool)

(declare-fun e!1510647 () Bool)

(declare-fun head!5098 (List!28090) C!14010)

(assert (=> b!2365950 (= e!1510647 (= (head!5098 s!9460) (c!376026 r!13927)))))

(declare-fun b!2365951 () Bool)

(declare-fun e!1510649 () Bool)

(declare-fun lt!865119 () Bool)

(declare-fun call!143949 () Bool)

(assert (=> b!2365951 (= e!1510649 (= lt!865119 call!143949))))

(declare-fun b!2365952 () Bool)

(declare-fun e!1510645 () Bool)

(declare-fun derivativeStep!1648 (Regex!6926 C!14010) Regex!6926)

(declare-fun tail!3369 (List!28090) List!28090)

(assert (=> b!2365952 (= e!1510645 (matchR!3043 (derivativeStep!1648 r!13927 (head!5098 s!9460)) (tail!3369 s!9460)))))

(declare-fun b!2365953 () Bool)

(declare-fun res!1004091 () Bool)

(assert (=> b!2365953 (=> (not res!1004091) (not e!1510647))))

(assert (=> b!2365953 (= res!1004091 (isEmpty!15916 (tail!3369 s!9460)))))

(declare-fun bm!143944 () Bool)

(assert (=> bm!143944 (= call!143949 (isEmpty!15916 s!9460))))

(declare-fun b!2365954 () Bool)

(declare-fun e!1510644 () Bool)

(assert (=> b!2365954 (= e!1510644 (not lt!865119))))

(declare-fun b!2365955 () Bool)

(assert (=> b!2365955 (= e!1510649 e!1510644)))

(declare-fun c!376054 () Bool)

(assert (=> b!2365955 (= c!376054 (is-EmptyLang!6926 r!13927))))

(declare-fun b!2365956 () Bool)

(declare-fun e!1510648 () Bool)

(assert (=> b!2365956 (= e!1510648 (not (= (head!5098 s!9460) (c!376026 r!13927))))))

(declare-fun b!2365957 () Bool)

(declare-fun nullable!1989 (Regex!6926) Bool)

(assert (=> b!2365957 (= e!1510645 (nullable!1989 r!13927))))

(declare-fun b!2365958 () Bool)

(declare-fun res!1004086 () Bool)

(declare-fun e!1510646 () Bool)

(assert (=> b!2365958 (=> res!1004086 e!1510646)))

(assert (=> b!2365958 (= res!1004086 (not (is-ElementMatch!6926 r!13927)))))

(assert (=> b!2365958 (= e!1510644 e!1510646)))

(declare-fun b!2365959 () Bool)

(declare-fun res!1004085 () Bool)

(assert (=> b!2365959 (=> (not res!1004085) (not e!1510647))))

(assert (=> b!2365959 (= res!1004085 (not call!143949))))

(declare-fun b!2365960 () Bool)

(declare-fun res!1004089 () Bool)

(assert (=> b!2365960 (=> res!1004089 e!1510646)))

(assert (=> b!2365960 (= res!1004089 e!1510647)))

(declare-fun res!1004088 () Bool)

(assert (=> b!2365960 (=> (not res!1004088) (not e!1510647))))

(assert (=> b!2365960 (= res!1004088 lt!865119)))

(declare-fun b!2365961 () Bool)

(declare-fun e!1510650 () Bool)

(assert (=> b!2365961 (= e!1510650 e!1510648)))

(declare-fun res!1004084 () Bool)

(assert (=> b!2365961 (=> res!1004084 e!1510648)))

(assert (=> b!2365961 (= res!1004084 call!143949)))

(declare-fun d!694708 () Bool)

(assert (=> d!694708 e!1510649))

(declare-fun c!376055 () Bool)

(assert (=> d!694708 (= c!376055 (is-EmptyExpr!6926 r!13927))))

(assert (=> d!694708 (= lt!865119 e!1510645)))

(declare-fun c!376056 () Bool)

(assert (=> d!694708 (= c!376056 (isEmpty!15916 s!9460))))

(declare-fun validRegex!2656 (Regex!6926) Bool)

(assert (=> d!694708 (validRegex!2656 r!13927)))

(assert (=> d!694708 (= (matchR!3043 r!13927 s!9460) lt!865119)))

(declare-fun b!2365962 () Bool)

(assert (=> b!2365962 (= e!1510646 e!1510650)))

(declare-fun res!1004090 () Bool)

(assert (=> b!2365962 (=> (not res!1004090) (not e!1510650))))

(assert (=> b!2365962 (= res!1004090 (not lt!865119))))

(declare-fun b!2365963 () Bool)

(declare-fun res!1004087 () Bool)

(assert (=> b!2365963 (=> res!1004087 e!1510648)))

(assert (=> b!2365963 (= res!1004087 (not (isEmpty!15916 (tail!3369 s!9460))))))

(assert (= (and d!694708 c!376056) b!2365957))

(assert (= (and d!694708 (not c!376056)) b!2365952))

(assert (= (and d!694708 c!376055) b!2365951))

(assert (= (and d!694708 (not c!376055)) b!2365955))

(assert (= (and b!2365955 c!376054) b!2365954))

(assert (= (and b!2365955 (not c!376054)) b!2365958))

(assert (= (and b!2365958 (not res!1004086)) b!2365960))

(assert (= (and b!2365960 res!1004088) b!2365959))

(assert (= (and b!2365959 res!1004085) b!2365953))

(assert (= (and b!2365953 res!1004091) b!2365950))

(assert (= (and b!2365960 (not res!1004089)) b!2365962))

(assert (= (and b!2365962 res!1004090) b!2365961))

(assert (= (and b!2365961 (not res!1004084)) b!2365963))

(assert (= (and b!2365963 (not res!1004087)) b!2365956))

(assert (= (or b!2365951 b!2365959 b!2365961) bm!143944))

(declare-fun m!2776079 () Bool)

(assert (=> b!2365950 m!2776079))

(declare-fun m!2776081 () Bool)

(assert (=> b!2365963 m!2776081))

(assert (=> b!2365963 m!2776081))

(declare-fun m!2776083 () Bool)

(assert (=> b!2365963 m!2776083))

(assert (=> bm!143944 m!2776071))

(assert (=> b!2365952 m!2776079))

(assert (=> b!2365952 m!2776079))

(declare-fun m!2776085 () Bool)

(assert (=> b!2365952 m!2776085))

(assert (=> b!2365952 m!2776081))

(assert (=> b!2365952 m!2776085))

(assert (=> b!2365952 m!2776081))

(declare-fun m!2776087 () Bool)

(assert (=> b!2365952 m!2776087))

(assert (=> b!2365953 m!2776081))

(assert (=> b!2365953 m!2776081))

(assert (=> b!2365953 m!2776083))

(assert (=> d!694708 m!2776071))

(declare-fun m!2776089 () Bool)

(assert (=> d!694708 m!2776089))

(declare-fun m!2776091 () Bool)

(assert (=> b!2365957 m!2776091))

(assert (=> b!2365956 m!2776079))

(assert (=> b!2365783 d!694708))

(declare-fun d!694710 () Bool)

(assert (=> d!694710 (= (matchR!3043 r!13927 s!9460) (matchRSpec!775 r!13927 s!9460))))

(declare-fun lt!865122 () Unit!40887)

(declare-fun choose!13736 (Regex!6926 List!28090) Unit!40887)

(assert (=> d!694710 (= lt!865122 (choose!13736 r!13927 s!9460))))

(assert (=> d!694710 (validRegex!2656 r!13927)))

(assert (=> d!694710 (= (mainMatchTheorem!775 r!13927 s!9460) lt!865122)))

(declare-fun bs!460893 () Bool)

(assert (= bs!460893 d!694710))

(assert (=> bs!460893 m!2776039))

(assert (=> bs!460893 m!2776037))

(declare-fun m!2776093 () Bool)

(assert (=> bs!460893 m!2776093))

(assert (=> bs!460893 m!2776089))

(assert (=> b!2365783 d!694710))

(declare-fun bs!460894 () Bool)

(declare-fun d!694712 () Bool)

(assert (= bs!460894 (and d!694712 start!232184)))

(declare-fun lambda!87262 () Int)

(assert (=> bs!460894 (= lambda!87262 lambda!87236)))

(declare-fun b!2365988 () Bool)

(declare-fun e!1510666 () Bool)

(declare-fun lt!865125 () Regex!6926)

(declare-fun head!5099 (List!28091) Regex!6926)

(assert (=> b!2365988 (= e!1510666 (= lt!865125 (head!5099 l!9164)))))

(declare-fun b!2365989 () Bool)

(declare-fun isConcat!12 (Regex!6926) Bool)

(assert (=> b!2365989 (= e!1510666 (isConcat!12 lt!865125))))

(declare-fun b!2365990 () Bool)

(declare-fun e!1510668 () Bool)

(assert (=> b!2365990 (= e!1510668 (isEmpty!15914 (t!208068 l!9164)))))

(declare-fun b!2365991 () Bool)

(declare-fun e!1510665 () Regex!6926)

(assert (=> b!2365991 (= e!1510665 (h!33394 l!9164))))

(declare-fun b!2365992 () Bool)

(declare-fun e!1510669 () Bool)

(assert (=> b!2365992 (= e!1510669 e!1510666)))

(declare-fun c!376066 () Bool)

(assert (=> b!2365992 (= c!376066 (isEmpty!15914 (tail!3367 l!9164)))))

(declare-fun b!2365994 () Bool)

(declare-fun e!1510670 () Bool)

(assert (=> b!2365994 (= e!1510670 e!1510669)))

(declare-fun c!376067 () Bool)

(assert (=> b!2365994 (= c!376067 (isEmpty!15914 l!9164))))

(declare-fun b!2365995 () Bool)

(declare-fun e!1510667 () Regex!6926)

(assert (=> b!2365995 (= e!1510667 EmptyExpr!6926)))

(assert (=> d!694712 e!1510670))

(declare-fun res!1004101 () Bool)

(assert (=> d!694712 (=> (not res!1004101) (not e!1510670))))

(assert (=> d!694712 (= res!1004101 (validRegex!2656 lt!865125))))

(assert (=> d!694712 (= lt!865125 e!1510665)))

(declare-fun c!376065 () Bool)

(assert (=> d!694712 (= c!376065 e!1510668)))

(declare-fun res!1004100 () Bool)

(assert (=> d!694712 (=> (not res!1004100) (not e!1510668))))

(assert (=> d!694712 (= res!1004100 (is-Cons!27993 l!9164))))

(assert (=> d!694712 (forall!5560 l!9164 lambda!87262)))

(assert (=> d!694712 (= (generalisedConcat!27 l!9164) lt!865125)))

(declare-fun b!2365993 () Bool)

(assert (=> b!2365993 (= e!1510667 (Concat!11562 (h!33394 l!9164) (generalisedConcat!27 (t!208068 l!9164))))))

(declare-fun b!2365996 () Bool)

(assert (=> b!2365996 (= e!1510665 e!1510667)))

(declare-fun c!376068 () Bool)

(assert (=> b!2365996 (= c!376068 (is-Cons!27993 l!9164))))

(declare-fun b!2365997 () Bool)

(declare-fun isEmptyExpr!12 (Regex!6926) Bool)

(assert (=> b!2365997 (= e!1510669 (isEmptyExpr!12 lt!865125))))

(assert (= (and d!694712 res!1004100) b!2365990))

(assert (= (and d!694712 c!376065) b!2365991))

(assert (= (and d!694712 (not c!376065)) b!2365996))

(assert (= (and b!2365996 c!376068) b!2365993))

(assert (= (and b!2365996 (not c!376068)) b!2365995))

(assert (= (and d!694712 res!1004101) b!2365994))

(assert (= (and b!2365994 c!376067) b!2365997))

(assert (= (and b!2365994 (not c!376067)) b!2365992))

(assert (= (and b!2365992 c!376066) b!2365988))

(assert (= (and b!2365992 (not c!376066)) b!2365989))

(declare-fun m!2776095 () Bool)

(assert (=> b!2365997 m!2776095))

(declare-fun m!2776097 () Bool)

(assert (=> b!2365990 m!2776097))

(assert (=> b!2365994 m!2776035))

(declare-fun m!2776099 () Bool)

(assert (=> b!2365993 m!2776099))

(assert (=> b!2365992 m!2776031))

(assert (=> b!2365992 m!2776031))

(assert (=> b!2365992 m!2776033))

(declare-fun m!2776101 () Bool)

(assert (=> b!2365989 m!2776101))

(declare-fun m!2776103 () Bool)

(assert (=> d!694712 m!2776103))

(declare-fun m!2776105 () Bool)

(assert (=> d!694712 m!2776105))

(declare-fun m!2776107 () Bool)

(assert (=> b!2365988 m!2776107))

(assert (=> b!2365790 d!694712))

(declare-fun d!694714 () Bool)

(assert (=> d!694714 (= (isEmpty!15914 (tail!3367 l!9164)) (is-Nil!27993 (tail!3367 l!9164)))))

(assert (=> b!2365791 d!694714))

(declare-fun d!694716 () Bool)

(assert (=> d!694716 (= (tail!3367 l!9164) (t!208068 l!9164))))

(assert (=> b!2365791 d!694716))

(declare-fun d!694718 () Bool)

(declare-fun res!1004106 () Bool)

(declare-fun e!1510675 () Bool)

(assert (=> d!694718 (=> res!1004106 e!1510675)))

(assert (=> d!694718 (= res!1004106 (is-Nil!27993 l!9164))))

(assert (=> d!694718 (= (forall!5560 l!9164 lambda!87236) e!1510675)))

(declare-fun b!2366002 () Bool)

(declare-fun e!1510676 () Bool)

(assert (=> b!2366002 (= e!1510675 e!1510676)))

(declare-fun res!1004107 () Bool)

(assert (=> b!2366002 (=> (not res!1004107) (not e!1510676))))

(declare-fun dynLambda!12060 (Int Regex!6926) Bool)

(assert (=> b!2366002 (= res!1004107 (dynLambda!12060 lambda!87236 (h!33394 l!9164)))))

(declare-fun b!2366003 () Bool)

(assert (=> b!2366003 (= e!1510676 (forall!5560 (t!208068 l!9164) lambda!87236))))

(assert (= (and d!694718 (not res!1004106)) b!2366002))

(assert (= (and b!2366002 res!1004107) b!2366003))

(declare-fun b_lambda!73859 () Bool)

(assert (=> (not b_lambda!73859) (not b!2366002)))

(declare-fun m!2776109 () Bool)

(assert (=> b!2366002 m!2776109))

(declare-fun m!2776111 () Bool)

(assert (=> b!2366003 m!2776111))

(assert (=> start!232184 d!694718))

(declare-fun d!694720 () Bool)

(declare-fun isEmpty!15917 (Option!5469) Bool)

(assert (=> d!694720 (= (isDefined!4297 (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) Nil!27992 s!9460 s!9460)) (not (isEmpty!15917 (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) Nil!27992 s!9460 s!9460))))))

(declare-fun bs!460895 () Bool)

(assert (= bs!460895 d!694720))

(assert (=> bs!460895 m!2776017))

(declare-fun m!2776113 () Bool)

(assert (=> bs!460895 m!2776113))

(assert (=> b!2365793 d!694720))

(declare-fun bs!460899 () Bool)

(declare-fun d!694722 () Bool)

(assert (= bs!460899 (and d!694722 b!2365793)))

(declare-fun lambda!87267 () Int)

(assert (=> bs!460899 (= lambda!87267 lambda!87237)))

(assert (=> bs!460899 (not (= lambda!87267 lambda!87238))))

(declare-fun bs!460900 () Bool)

(assert (= bs!460900 (and d!694722 b!2365886)))

(assert (=> bs!460900 (not (= lambda!87267 lambda!87254))))

(declare-fun bs!460901 () Bool)

(assert (= bs!460901 (and d!694722 b!2365887)))

(assert (=> bs!460901 (not (= lambda!87267 lambda!87255))))

(assert (=> d!694722 true))

(assert (=> d!694722 true))

(assert (=> d!694722 true))

(assert (=> d!694722 (= (isDefined!4297 (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) Nil!27992 s!9460 s!9460)) (Exists!988 lambda!87267))))

(declare-fun lt!865128 () Unit!40887)

(declare-fun choose!13737 (Regex!6926 Regex!6926 List!28090) Unit!40887)

(assert (=> d!694722 (= lt!865128 (choose!13737 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460))))

(assert (=> d!694722 (validRegex!2656 (regOne!14364 r!13927))))

(assert (=> d!694722 (= (lemmaFindConcatSeparationEquivalentToExists!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460) lt!865128)))

(declare-fun bs!460902 () Bool)

(assert (= bs!460902 d!694722))

(declare-fun m!2776115 () Bool)

(assert (=> bs!460902 m!2776115))

(assert (=> bs!460902 m!2776017))

(declare-fun m!2776117 () Bool)

(assert (=> bs!460902 m!2776117))

(assert (=> bs!460902 m!2776017))

(assert (=> bs!460902 m!2776019))

(declare-fun m!2776119 () Bool)

(assert (=> bs!460902 m!2776119))

(assert (=> b!2365793 d!694722))

(declare-fun bs!460903 () Bool)

(declare-fun d!694724 () Bool)

(assert (= bs!460903 (and d!694724 d!694722)))

(declare-fun lambda!87272 () Int)

(assert (=> bs!460903 (= lambda!87272 lambda!87267)))

(declare-fun bs!460904 () Bool)

(assert (= bs!460904 (and d!694724 b!2365887)))

(assert (=> bs!460904 (not (= lambda!87272 lambda!87255))))

(declare-fun bs!460905 () Bool)

(assert (= bs!460905 (and d!694724 b!2365886)))

(assert (=> bs!460905 (not (= lambda!87272 lambda!87254))))

(declare-fun bs!460906 () Bool)

(assert (= bs!460906 (and d!694724 b!2365793)))

(assert (=> bs!460906 (not (= lambda!87272 lambda!87238))))

(assert (=> bs!460906 (= lambda!87272 lambda!87237)))

(assert (=> d!694724 true))

(assert (=> d!694724 true))

(assert (=> d!694724 true))

(declare-fun lambda!87273 () Int)

(assert (=> bs!460903 (not (= lambda!87273 lambda!87267))))

(assert (=> bs!460904 (= lambda!87273 lambda!87255)))

(assert (=> bs!460905 (not (= lambda!87273 lambda!87254))))

(assert (=> bs!460906 (= lambda!87273 lambda!87238)))

(declare-fun bs!460907 () Bool)

(assert (= bs!460907 d!694724))

(assert (=> bs!460907 (not (= lambda!87273 lambda!87272))))

(assert (=> bs!460906 (not (= lambda!87273 lambda!87237))))

(assert (=> d!694724 true))

(assert (=> d!694724 true))

(assert (=> d!694724 true))

(assert (=> d!694724 (= (Exists!988 lambda!87272) (Exists!988 lambda!87273))))

(declare-fun lt!865131 () Unit!40887)

(declare-fun choose!13738 (Regex!6926 Regex!6926 List!28090) Unit!40887)

(assert (=> d!694724 (= lt!865131 (choose!13738 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460))))

(assert (=> d!694724 (validRegex!2656 (regOne!14364 r!13927))))

(assert (=> d!694724 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!327 (regOne!14364 r!13927) (regTwo!14364 r!13927) s!9460) lt!865131)))

(declare-fun m!2776129 () Bool)

(assert (=> bs!460907 m!2776129))

(declare-fun m!2776131 () Bool)

(assert (=> bs!460907 m!2776131))

(declare-fun m!2776133 () Bool)

(assert (=> bs!460907 m!2776133))

(assert (=> bs!460907 m!2776117))

(assert (=> b!2365793 d!694724))

(declare-fun d!694728 () Bool)

(declare-fun choose!13739 (Int) Bool)

(assert (=> d!694728 (= (Exists!988 lambda!87237) (choose!13739 lambda!87237))))

(declare-fun bs!460908 () Bool)

(assert (= bs!460908 d!694728))

(declare-fun m!2776135 () Bool)

(assert (=> bs!460908 m!2776135))

(assert (=> b!2365793 d!694728))

(declare-fun d!694730 () Bool)

(assert (=> d!694730 (= (Exists!988 lambda!87238) (choose!13739 lambda!87238))))

(declare-fun bs!460909 () Bool)

(assert (= bs!460909 d!694730))

(declare-fun m!2776137 () Bool)

(assert (=> bs!460909 m!2776137))

(assert (=> b!2365793 d!694730))

(declare-fun b!2366073 () Bool)

(declare-fun e!1510715 () Bool)

(declare-fun lt!865142 () Option!5469)

(assert (=> b!2366073 (= e!1510715 (not (isDefined!4297 lt!865142)))))

(declare-fun b!2366074 () Bool)

(declare-fun e!1510716 () Option!5469)

(assert (=> b!2366074 (= e!1510716 None!5468)))

(declare-fun b!2366075 () Bool)

(declare-fun e!1510714 () Bool)

(declare-fun ++!6892 (List!28090 List!28090) List!28090)

(declare-fun get!8501 (Option!5469) tuple2!27716)

(assert (=> b!2366075 (= e!1510714 (= (++!6892 (_1!16399 (get!8501 lt!865142)) (_2!16399 (get!8501 lt!865142))) s!9460))))

(declare-fun b!2366076 () Bool)

(declare-fun e!1510717 () Bool)

(assert (=> b!2366076 (= e!1510717 (matchR!3043 (regTwo!14364 r!13927) s!9460))))

(declare-fun b!2366077 () Bool)

(declare-fun res!1004151 () Bool)

(assert (=> b!2366077 (=> (not res!1004151) (not e!1510714))))

(assert (=> b!2366077 (= res!1004151 (matchR!3043 (regOne!14364 r!13927) (_1!16399 (get!8501 lt!865142))))))

(declare-fun b!2366078 () Bool)

(declare-fun res!1004150 () Bool)

(assert (=> b!2366078 (=> (not res!1004150) (not e!1510714))))

(assert (=> b!2366078 (= res!1004150 (matchR!3043 (regTwo!14364 r!13927) (_2!16399 (get!8501 lt!865142))))))

(declare-fun b!2366079 () Bool)

(declare-fun e!1510718 () Option!5469)

(assert (=> b!2366079 (= e!1510718 e!1510716)))

(declare-fun c!376084 () Bool)

(assert (=> b!2366079 (= c!376084 (is-Nil!27992 s!9460))))

(declare-fun b!2366080 () Bool)

(declare-fun lt!865141 () Unit!40887)

(declare-fun lt!865140 () Unit!40887)

(assert (=> b!2366080 (= lt!865141 lt!865140)))

(assert (=> b!2366080 (= (++!6892 (++!6892 Nil!27992 (Cons!27992 (h!33393 s!9460) Nil!27992)) (t!208067 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!538 (List!28090 C!14010 List!28090 List!28090) Unit!40887)

(assert (=> b!2366080 (= lt!865140 (lemmaMoveElementToOtherListKeepsConcatEq!538 Nil!27992 (h!33393 s!9460) (t!208067 s!9460) s!9460))))

(assert (=> b!2366080 (= e!1510716 (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) (++!6892 Nil!27992 (Cons!27992 (h!33393 s!9460) Nil!27992)) (t!208067 s!9460) s!9460))))

(declare-fun d!694732 () Bool)

(assert (=> d!694732 e!1510715))

(declare-fun res!1004153 () Bool)

(assert (=> d!694732 (=> res!1004153 e!1510715)))

(assert (=> d!694732 (= res!1004153 e!1510714)))

(declare-fun res!1004152 () Bool)

(assert (=> d!694732 (=> (not res!1004152) (not e!1510714))))

(assert (=> d!694732 (= res!1004152 (isDefined!4297 lt!865142))))

(assert (=> d!694732 (= lt!865142 e!1510718)))

(declare-fun c!376083 () Bool)

(assert (=> d!694732 (= c!376083 e!1510717)))

(declare-fun res!1004149 () Bool)

(assert (=> d!694732 (=> (not res!1004149) (not e!1510717))))

(assert (=> d!694732 (= res!1004149 (matchR!3043 (regOne!14364 r!13927) Nil!27992))))

(assert (=> d!694732 (validRegex!2656 (regOne!14364 r!13927))))

(assert (=> d!694732 (= (findConcatSeparation!577 (regOne!14364 r!13927) (regTwo!14364 r!13927) Nil!27992 s!9460 s!9460) lt!865142)))

(declare-fun b!2366081 () Bool)

(assert (=> b!2366081 (= e!1510718 (Some!5468 (tuple2!27717 Nil!27992 s!9460)))))

(assert (= (and d!694732 res!1004149) b!2366076))

(assert (= (and d!694732 c!376083) b!2366081))

(assert (= (and d!694732 (not c!376083)) b!2366079))

(assert (= (and b!2366079 c!376084) b!2366074))

(assert (= (and b!2366079 (not c!376084)) b!2366080))

(assert (= (and d!694732 res!1004152) b!2366077))

(assert (= (and b!2366077 res!1004151) b!2366078))

(assert (= (and b!2366078 res!1004150) b!2366075))

(assert (= (and d!694732 (not res!1004153)) b!2366073))

(declare-fun m!2776139 () Bool)

(assert (=> b!2366078 m!2776139))

(declare-fun m!2776141 () Bool)

(assert (=> b!2366078 m!2776141))

(assert (=> b!2366075 m!2776139))

(declare-fun m!2776143 () Bool)

(assert (=> b!2366075 m!2776143))

(declare-fun m!2776145 () Bool)

(assert (=> b!2366076 m!2776145))

(declare-fun m!2776147 () Bool)

(assert (=> b!2366073 m!2776147))

(assert (=> d!694732 m!2776147))

(declare-fun m!2776149 () Bool)

(assert (=> d!694732 m!2776149))

(assert (=> d!694732 m!2776117))

(assert (=> b!2366077 m!2776139))

(declare-fun m!2776151 () Bool)

(assert (=> b!2366077 m!2776151))

(declare-fun m!2776153 () Bool)

(assert (=> b!2366080 m!2776153))

(assert (=> b!2366080 m!2776153))

(declare-fun m!2776155 () Bool)

(assert (=> b!2366080 m!2776155))

(declare-fun m!2776157 () Bool)

(assert (=> b!2366080 m!2776157))

(assert (=> b!2366080 m!2776153))

(declare-fun m!2776159 () Bool)

(assert (=> b!2366080 m!2776159))

(assert (=> b!2365793 d!694732))

(declare-fun b!2366109 () Bool)

(declare-fun e!1510728 () Bool)

(declare-fun tp!756614 () Bool)

(declare-fun tp!756612 () Bool)

(assert (=> b!2366109 (= e!1510728 (and tp!756614 tp!756612))))

(declare-fun b!2366106 () Bool)

(assert (=> b!2366106 (= e!1510728 tp_is_empty!11265)))

(declare-fun b!2366107 () Bool)

(declare-fun tp!756610 () Bool)

(declare-fun tp!756613 () Bool)

(assert (=> b!2366107 (= e!1510728 (and tp!756610 tp!756613))))

(assert (=> b!2365789 (= tp!756573 e!1510728)))

(declare-fun b!2366108 () Bool)

(declare-fun tp!756611 () Bool)

(assert (=> b!2366108 (= e!1510728 tp!756611)))

(assert (= (and b!2365789 (is-ElementMatch!6926 (regOne!14364 r!13927))) b!2366106))

(assert (= (and b!2365789 (is-Concat!11562 (regOne!14364 r!13927))) b!2366107))

(assert (= (and b!2365789 (is-Star!6926 (regOne!14364 r!13927))) b!2366108))

(assert (= (and b!2365789 (is-Union!6926 (regOne!14364 r!13927))) b!2366109))

(declare-fun b!2366113 () Bool)

(declare-fun e!1510729 () Bool)

(declare-fun tp!756619 () Bool)

(declare-fun tp!756617 () Bool)

(assert (=> b!2366113 (= e!1510729 (and tp!756619 tp!756617))))

(declare-fun b!2366110 () Bool)

(assert (=> b!2366110 (= e!1510729 tp_is_empty!11265)))

(declare-fun b!2366111 () Bool)

(declare-fun tp!756615 () Bool)

(declare-fun tp!756618 () Bool)

(assert (=> b!2366111 (= e!1510729 (and tp!756615 tp!756618))))

(assert (=> b!2365789 (= tp!756570 e!1510729)))

(declare-fun b!2366112 () Bool)

(declare-fun tp!756616 () Bool)

(assert (=> b!2366112 (= e!1510729 tp!756616)))

(assert (= (and b!2365789 (is-ElementMatch!6926 (regTwo!14364 r!13927))) b!2366110))

(assert (= (and b!2365789 (is-Concat!11562 (regTwo!14364 r!13927))) b!2366111))

(assert (= (and b!2365789 (is-Star!6926 (regTwo!14364 r!13927))) b!2366112))

(assert (= (and b!2365789 (is-Union!6926 (regTwo!14364 r!13927))) b!2366113))

(declare-fun b!2366117 () Bool)

(declare-fun e!1510730 () Bool)

(declare-fun tp!756624 () Bool)

(declare-fun tp!756622 () Bool)

(assert (=> b!2366117 (= e!1510730 (and tp!756624 tp!756622))))

(declare-fun b!2366114 () Bool)

(assert (=> b!2366114 (= e!1510730 tp_is_empty!11265)))

(declare-fun b!2366115 () Bool)

(declare-fun tp!756620 () Bool)

(declare-fun tp!756623 () Bool)

(assert (=> b!2366115 (= e!1510730 (and tp!756620 tp!756623))))

(assert (=> b!2365794 (= tp!756574 e!1510730)))

(declare-fun b!2366116 () Bool)

(declare-fun tp!756621 () Bool)

(assert (=> b!2366116 (= e!1510730 tp!756621)))

(assert (= (and b!2365794 (is-ElementMatch!6926 (h!33394 l!9164))) b!2366114))

(assert (= (and b!2365794 (is-Concat!11562 (h!33394 l!9164))) b!2366115))

(assert (= (and b!2365794 (is-Star!6926 (h!33394 l!9164))) b!2366116))

(assert (= (and b!2365794 (is-Union!6926 (h!33394 l!9164))) b!2366117))

(declare-fun b!2366122 () Bool)

(declare-fun e!1510733 () Bool)

(declare-fun tp!756629 () Bool)

(declare-fun tp!756630 () Bool)

(assert (=> b!2366122 (= e!1510733 (and tp!756629 tp!756630))))

(assert (=> b!2365794 (= tp!756568 e!1510733)))

(assert (= (and b!2365794 (is-Cons!27993 (t!208068 l!9164))) b!2366122))

(declare-fun b!2366126 () Bool)

(declare-fun e!1510734 () Bool)

(declare-fun tp!756635 () Bool)

(declare-fun tp!756633 () Bool)

(assert (=> b!2366126 (= e!1510734 (and tp!756635 tp!756633))))

(declare-fun b!2366123 () Bool)

(assert (=> b!2366123 (= e!1510734 tp_is_empty!11265)))

(declare-fun b!2366124 () Bool)

(declare-fun tp!756631 () Bool)

(declare-fun tp!756634 () Bool)

(assert (=> b!2366124 (= e!1510734 (and tp!756631 tp!756634))))

(assert (=> b!2365792 (= tp!756572 e!1510734)))

(declare-fun b!2366125 () Bool)

(declare-fun tp!756632 () Bool)

(assert (=> b!2366125 (= e!1510734 tp!756632)))

(assert (= (and b!2365792 (is-ElementMatch!6926 (reg!7255 r!13927))) b!2366123))

(assert (= (and b!2365792 (is-Concat!11562 (reg!7255 r!13927))) b!2366124))

(assert (= (and b!2365792 (is-Star!6926 (reg!7255 r!13927))) b!2366125))

(assert (= (and b!2365792 (is-Union!6926 (reg!7255 r!13927))) b!2366126))

(declare-fun b!2366131 () Bool)

(declare-fun e!1510737 () Bool)

(declare-fun tp!756638 () Bool)

(assert (=> b!2366131 (= e!1510737 (and tp_is_empty!11265 tp!756638))))

(assert (=> b!2365786 (= tp!756571 e!1510737)))

(assert (= (and b!2365786 (is-Cons!27992 (t!208067 s!9460))) b!2366131))

(declare-fun b!2366135 () Bool)

(declare-fun e!1510738 () Bool)

(declare-fun tp!756643 () Bool)

(declare-fun tp!756641 () Bool)

(assert (=> b!2366135 (= e!1510738 (and tp!756643 tp!756641))))

(declare-fun b!2366132 () Bool)

(assert (=> b!2366132 (= e!1510738 tp_is_empty!11265)))

(declare-fun b!2366133 () Bool)

(declare-fun tp!756639 () Bool)

(declare-fun tp!756642 () Bool)

(assert (=> b!2366133 (= e!1510738 (and tp!756639 tp!756642))))

(assert (=> b!2365788 (= tp!756575 e!1510738)))

(declare-fun b!2366134 () Bool)

(declare-fun tp!756640 () Bool)

(assert (=> b!2366134 (= e!1510738 tp!756640)))

(assert (= (and b!2365788 (is-ElementMatch!6926 (regOne!14365 r!13927))) b!2366132))

(assert (= (and b!2365788 (is-Concat!11562 (regOne!14365 r!13927))) b!2366133))

(assert (= (and b!2365788 (is-Star!6926 (regOne!14365 r!13927))) b!2366134))

(assert (= (and b!2365788 (is-Union!6926 (regOne!14365 r!13927))) b!2366135))

(declare-fun b!2366139 () Bool)

(declare-fun e!1510739 () Bool)

(declare-fun tp!756648 () Bool)

(declare-fun tp!756646 () Bool)

(assert (=> b!2366139 (= e!1510739 (and tp!756648 tp!756646))))

(declare-fun b!2366136 () Bool)

(assert (=> b!2366136 (= e!1510739 tp_is_empty!11265)))

(declare-fun b!2366137 () Bool)

(declare-fun tp!756644 () Bool)

(declare-fun tp!756647 () Bool)

(assert (=> b!2366137 (= e!1510739 (and tp!756644 tp!756647))))

(assert (=> b!2365788 (= tp!756569 e!1510739)))

(declare-fun b!2366138 () Bool)

(declare-fun tp!756645 () Bool)

(assert (=> b!2366138 (= e!1510739 tp!756645)))

(assert (= (and b!2365788 (is-ElementMatch!6926 (regTwo!14365 r!13927))) b!2366136))

(assert (= (and b!2365788 (is-Concat!11562 (regTwo!14365 r!13927))) b!2366137))

(assert (= (and b!2365788 (is-Star!6926 (regTwo!14365 r!13927))) b!2366138))

(assert (= (and b!2365788 (is-Union!6926 (regTwo!14365 r!13927))) b!2366139))

(declare-fun b_lambda!73861 () Bool)

(assert (= b_lambda!73859 (or start!232184 b_lambda!73861)))

(declare-fun bs!460910 () Bool)

(declare-fun d!694736 () Bool)

(assert (= bs!460910 (and d!694736 start!232184)))

(assert (=> bs!460910 (= (dynLambda!12060 lambda!87236 (h!33394 l!9164)) (validRegex!2656 (h!33394 l!9164)))))

(declare-fun m!2776175 () Bool)

(assert (=> bs!460910 m!2776175))

(assert (=> b!2366002 d!694736))

(push 1)

(assert (not d!694732))

(assert (not b!2366107))

(assert (not b!2366073))

(assert (not d!694710))

(assert (not b!2366076))

(assert (not b!2365950))

(assert (not b!2365953))

(assert (not b!2365994))

(assert (not b!2365997))

(assert (not b!2366134))

(assert (not b!2365892))

(assert (not b!2366112))

(assert (not bs!460910))

(assert (not b!2366078))

(assert (not b!2366135))

(assert (not b!2365988))

(assert (not b!2365993))

(assert (not b!2366122))

(assert (not b!2366116))

(assert (not b!2366115))

(assert (not b!2366109))

(assert (not d!694722))

(assert (not b!2365990))

(assert (not b!2366138))

(assert (not b!2366108))

(assert (not b!2366075))

(assert (not b!2365963))

(assert (not d!694720))

(assert (not b!2366133))

(assert (not d!694712))

(assert (not b_lambda!73861))

(assert (not b!2366139))

(assert (not d!694730))

(assert (not d!694708))

(assert (not b!2366003))

(assert (not b!2366117))

(assert (not b!2366125))

(assert (not b!2366137))

(assert (not b!2365957))

(assert (not b!2366131))

(assert (not b!2365890))

(assert (not b!2366113))

(assert (not b!2365989))

(assert (not bm!143940))

(assert (not b!2366077))

(assert (not b!2366111))

(assert (not b!2365956))

(assert (not d!694728))

(assert (not d!694724))

(assert (not bm!143941))

(assert (not b!2366080))

(assert tp_is_empty!11265)

(assert (not b!2365992))

(assert (not bm!143944))

(assert (not b!2366124))

(assert (not b!2365952))

(assert (not b!2366126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

