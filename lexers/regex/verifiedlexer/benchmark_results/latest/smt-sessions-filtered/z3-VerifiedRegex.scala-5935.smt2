; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290700 () Bool)

(assert start!290700)

(declare-fun b!3028921 () Bool)

(declare-fun e!1899811 () Bool)

(declare-fun tp_is_empty!16405 () Bool)

(assert (=> b!3028921 (= e!1899811 tp_is_empty!16405)))

(declare-fun b!3028922 () Bool)

(declare-fun e!1899808 () Bool)

(declare-fun e!1899810 () Bool)

(assert (=> b!3028922 (= e!1899808 (not e!1899810))))

(declare-fun res!1246344 () Bool)

(assert (=> b!3028922 (=> res!1246344 e!1899810)))

(declare-fun lt!1045693 () Bool)

(declare-datatypes ((C!19028 0))(
  ( (C!19029 (val!11550 Int)) )
))
(declare-datatypes ((Regex!9421 0))(
  ( (ElementMatch!9421 (c!500307 C!19028)) (Concat!14742 (regOne!19354 Regex!9421) (regTwo!19354 Regex!9421)) (EmptyExpr!9421) (Star!9421 (reg!9750 Regex!9421)) (EmptyLang!9421) (Union!9421 (regOne!19355 Regex!9421) (regTwo!19355 Regex!9421)) )
))
(declare-fun r!17423 () Regex!9421)

(get-info :version)

(assert (=> b!3028922 (= res!1246344 (or (not lt!1045693) ((_ is Concat!14742) r!17423) (not ((_ is Union!9421) r!17423))))))

(declare-datatypes ((List!35286 0))(
  ( (Nil!35162) (Cons!35162 (h!40582 C!19028) (t!234351 List!35286)) )
))
(declare-fun s!11993 () List!35286)

(declare-fun matchRSpec!1558 (Regex!9421 List!35286) Bool)

(assert (=> b!3028922 (= lt!1045693 (matchRSpec!1558 r!17423 s!11993))))

(declare-fun matchR!4303 (Regex!9421 List!35286) Bool)

(assert (=> b!3028922 (= lt!1045693 (matchR!4303 r!17423 s!11993))))

(declare-datatypes ((Unit!49265 0))(
  ( (Unit!49266) )
))
(declare-fun lt!1045695 () Unit!49265)

(declare-fun mainMatchTheorem!1558 (Regex!9421 List!35286) Unit!49265)

(assert (=> b!3028922 (= lt!1045695 (mainMatchTheorem!1558 r!17423 s!11993))))

(declare-fun b!3028923 () Bool)

(declare-fun e!1899809 () Bool)

(assert (=> b!3028923 (= e!1899810 e!1899809)))

(declare-fun res!1246342 () Bool)

(assert (=> b!3028923 (=> res!1246342 e!1899809)))

(declare-fun lt!1045694 () Bool)

(assert (=> b!3028923 (= res!1246342 (not lt!1045694))))

(declare-fun e!1899813 () Bool)

(assert (=> b!3028923 e!1899813))

(declare-fun res!1246341 () Bool)

(assert (=> b!3028923 (=> res!1246341 e!1899813)))

(assert (=> b!3028923 (= res!1246341 lt!1045694)))

(assert (=> b!3028923 (= lt!1045694 (matchR!4303 (regOne!19355 r!17423) s!11993))))

(declare-fun lt!1045696 () Unit!49265)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!298 (Regex!9421 Regex!9421 List!35286) Unit!49265)

(assert (=> b!3028923 (= lt!1045696 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!298 (regOne!19355 r!17423) (regTwo!19355 r!17423) s!11993))))

(declare-fun res!1246343 () Bool)

(assert (=> start!290700 (=> (not res!1246343) (not e!1899808))))

(declare-fun validRegex!4154 (Regex!9421) Bool)

(assert (=> start!290700 (= res!1246343 (validRegex!4154 r!17423))))

(assert (=> start!290700 e!1899808))

(assert (=> start!290700 e!1899811))

(declare-fun e!1899812 () Bool)

(assert (=> start!290700 e!1899812))

(declare-fun b!3028924 () Bool)

(assert (=> b!3028924 (= e!1899809 (validRegex!4154 (regOne!19355 r!17423)))))

(declare-fun b!3028925 () Bool)

(declare-fun tp!960273 () Bool)

(declare-fun tp!960268 () Bool)

(assert (=> b!3028925 (= e!1899811 (and tp!960273 tp!960268))))

(declare-fun b!3028926 () Bool)

(declare-fun tp!960271 () Bool)

(assert (=> b!3028926 (= e!1899812 (and tp_is_empty!16405 tp!960271))))

(declare-fun b!3028927 () Bool)

(declare-fun tp!960269 () Bool)

(assert (=> b!3028927 (= e!1899811 tp!960269)))

(declare-fun b!3028928 () Bool)

(assert (=> b!3028928 (= e!1899813 (matchR!4303 (regTwo!19355 r!17423) s!11993))))

(declare-fun b!3028929 () Bool)

(declare-fun tp!960270 () Bool)

(declare-fun tp!960272 () Bool)

(assert (=> b!3028929 (= e!1899811 (and tp!960270 tp!960272))))

(assert (= (and start!290700 res!1246343) b!3028922))

(assert (= (and b!3028922 (not res!1246344)) b!3028923))

(assert (= (and b!3028923 (not res!1246341)) b!3028928))

(assert (= (and b!3028923 (not res!1246342)) b!3028924))

(assert (= (and start!290700 ((_ is ElementMatch!9421) r!17423)) b!3028921))

(assert (= (and start!290700 ((_ is Concat!14742) r!17423)) b!3028925))

(assert (= (and start!290700 ((_ is Star!9421) r!17423)) b!3028927))

(assert (= (and start!290700 ((_ is Union!9421) r!17423)) b!3028929))

(assert (= (and start!290700 ((_ is Cons!35162) s!11993)) b!3028926))

(declare-fun m!3367073 () Bool)

(assert (=> b!3028922 m!3367073))

(declare-fun m!3367075 () Bool)

(assert (=> b!3028922 m!3367075))

(declare-fun m!3367077 () Bool)

(assert (=> b!3028922 m!3367077))

(declare-fun m!3367079 () Bool)

(assert (=> b!3028928 m!3367079))

(declare-fun m!3367081 () Bool)

(assert (=> b!3028924 m!3367081))

(declare-fun m!3367083 () Bool)

(assert (=> start!290700 m!3367083))

(declare-fun m!3367085 () Bool)

(assert (=> b!3028923 m!3367085))

(declare-fun m!3367087 () Bool)

(assert (=> b!3028923 m!3367087))

(check-sat (not start!290700) (not b!3028928) (not b!3028929) (not b!3028926) (not b!3028927) (not b!3028924) (not b!3028922) (not b!3028923) tp_is_empty!16405 (not b!3028925))
(check-sat)
(get-model)

(declare-fun b!3028985 () Bool)

(declare-fun e!1899851 () Bool)

(declare-fun lt!1045699 () Bool)

(assert (=> b!3028985 (= e!1899851 (not lt!1045699))))

(declare-fun b!3028986 () Bool)

(declare-fun e!1899852 () Bool)

(assert (=> b!3028986 (= e!1899852 e!1899851)))

(declare-fun c!500320 () Bool)

(assert (=> b!3028986 (= c!500320 ((_ is EmptyLang!9421) (regOne!19355 r!17423)))))

(declare-fun b!3028987 () Bool)

(declare-fun e!1899849 () Bool)

(declare-fun head!6727 (List!35286) C!19028)

(assert (=> b!3028987 (= e!1899849 (not (= (head!6727 s!11993) (c!500307 (regOne!19355 r!17423)))))))

(declare-fun b!3028988 () Bool)

(declare-fun e!1899854 () Bool)

(declare-fun derivativeStep!2668 (Regex!9421 C!19028) Regex!9421)

(declare-fun tail!4953 (List!35286) List!35286)

(assert (=> b!3028988 (= e!1899854 (matchR!4303 (derivativeStep!2668 (regOne!19355 r!17423) (head!6727 s!11993)) (tail!4953 s!11993)))))

(declare-fun d!850922 () Bool)

(assert (=> d!850922 e!1899852))

(declare-fun c!500322 () Bool)

(assert (=> d!850922 (= c!500322 ((_ is EmptyExpr!9421) (regOne!19355 r!17423)))))

(assert (=> d!850922 (= lt!1045699 e!1899854)))

(declare-fun c!500321 () Bool)

(declare-fun isEmpty!19462 (List!35286) Bool)

(assert (=> d!850922 (= c!500321 (isEmpty!19462 s!11993))))

(assert (=> d!850922 (validRegex!4154 (regOne!19355 r!17423))))

(assert (=> d!850922 (= (matchR!4303 (regOne!19355 r!17423) s!11993) lt!1045699)))

(declare-fun b!3028989 () Bool)

(declare-fun res!1246378 () Bool)

(declare-fun e!1899855 () Bool)

(assert (=> b!3028989 (=> res!1246378 e!1899855)))

(declare-fun e!1899850 () Bool)

(assert (=> b!3028989 (= res!1246378 e!1899850)))

(declare-fun res!1246376 () Bool)

(assert (=> b!3028989 (=> (not res!1246376) (not e!1899850))))

(assert (=> b!3028989 (= res!1246376 lt!1045699)))

(declare-fun bm!206119 () Bool)

(declare-fun call!206124 () Bool)

(assert (=> bm!206119 (= call!206124 (isEmpty!19462 s!11993))))

(declare-fun b!3028990 () Bool)

(declare-fun e!1899853 () Bool)

(assert (=> b!3028990 (= e!1899853 e!1899849)))

(declare-fun res!1246377 () Bool)

(assert (=> b!3028990 (=> res!1246377 e!1899849)))

(assert (=> b!3028990 (= res!1246377 call!206124)))

(declare-fun b!3028991 () Bool)

(declare-fun nullable!3071 (Regex!9421) Bool)

(assert (=> b!3028991 (= e!1899854 (nullable!3071 (regOne!19355 r!17423)))))

(declare-fun b!3028992 () Bool)

(assert (=> b!3028992 (= e!1899850 (= (head!6727 s!11993) (c!500307 (regOne!19355 r!17423))))))

(declare-fun b!3028993 () Bool)

(declare-fun res!1246381 () Bool)

(assert (=> b!3028993 (=> res!1246381 e!1899849)))

(assert (=> b!3028993 (= res!1246381 (not (isEmpty!19462 (tail!4953 s!11993))))))

(declare-fun b!3028994 () Bool)

(declare-fun res!1246382 () Bool)

(assert (=> b!3028994 (=> res!1246382 e!1899855)))

(assert (=> b!3028994 (= res!1246382 (not ((_ is ElementMatch!9421) (regOne!19355 r!17423))))))

(assert (=> b!3028994 (= e!1899851 e!1899855)))

(declare-fun b!3028995 () Bool)

(assert (=> b!3028995 (= e!1899855 e!1899853)))

(declare-fun res!1246380 () Bool)

(assert (=> b!3028995 (=> (not res!1246380) (not e!1899853))))

(assert (=> b!3028995 (= res!1246380 (not lt!1045699))))

(declare-fun b!3028996 () Bool)

(declare-fun res!1246379 () Bool)

(assert (=> b!3028996 (=> (not res!1246379) (not e!1899850))))

(assert (=> b!3028996 (= res!1246379 (isEmpty!19462 (tail!4953 s!11993)))))

(declare-fun b!3028997 () Bool)

(declare-fun res!1246383 () Bool)

(assert (=> b!3028997 (=> (not res!1246383) (not e!1899850))))

(assert (=> b!3028997 (= res!1246383 (not call!206124))))

(declare-fun b!3028998 () Bool)

(assert (=> b!3028998 (= e!1899852 (= lt!1045699 call!206124))))

(assert (= (and d!850922 c!500321) b!3028991))

(assert (= (and d!850922 (not c!500321)) b!3028988))

(assert (= (and d!850922 c!500322) b!3028998))

(assert (= (and d!850922 (not c!500322)) b!3028986))

(assert (= (and b!3028986 c!500320) b!3028985))

(assert (= (and b!3028986 (not c!500320)) b!3028994))

(assert (= (and b!3028994 (not res!1246382)) b!3028989))

(assert (= (and b!3028989 res!1246376) b!3028997))

(assert (= (and b!3028997 res!1246383) b!3028996))

(assert (= (and b!3028996 res!1246379) b!3028992))

(assert (= (and b!3028989 (not res!1246378)) b!3028995))

(assert (= (and b!3028995 res!1246380) b!3028990))

(assert (= (and b!3028990 (not res!1246377)) b!3028993))

(assert (= (and b!3028993 (not res!1246381)) b!3028987))

(assert (= (or b!3028998 b!3028997 b!3028990) bm!206119))

(declare-fun m!3367095 () Bool)

(assert (=> bm!206119 m!3367095))

(assert (=> d!850922 m!3367095))

(assert (=> d!850922 m!3367081))

(declare-fun m!3367097 () Bool)

(assert (=> b!3028988 m!3367097))

(assert (=> b!3028988 m!3367097))

(declare-fun m!3367099 () Bool)

(assert (=> b!3028988 m!3367099))

(declare-fun m!3367101 () Bool)

(assert (=> b!3028988 m!3367101))

(assert (=> b!3028988 m!3367099))

(assert (=> b!3028988 m!3367101))

(declare-fun m!3367103 () Bool)

(assert (=> b!3028988 m!3367103))

(declare-fun m!3367105 () Bool)

(assert (=> b!3028991 m!3367105))

(assert (=> b!3028996 m!3367101))

(assert (=> b!3028996 m!3367101))

(declare-fun m!3367107 () Bool)

(assert (=> b!3028996 m!3367107))

(assert (=> b!3028987 m!3367097))

(assert (=> b!3028993 m!3367101))

(assert (=> b!3028993 m!3367101))

(assert (=> b!3028993 m!3367107))

(assert (=> b!3028992 m!3367097))

(assert (=> b!3028923 d!850922))

(declare-fun d!850928 () Bool)

(declare-fun e!1899874 () Bool)

(assert (=> d!850928 e!1899874))

(declare-fun res!1246404 () Bool)

(assert (=> d!850928 (=> res!1246404 e!1899874)))

(assert (=> d!850928 (= res!1246404 (matchR!4303 (regOne!19355 r!17423) s!11993))))

(declare-fun lt!1045704 () Unit!49265)

(declare-fun choose!17959 (Regex!9421 Regex!9421 List!35286) Unit!49265)

(assert (=> d!850928 (= lt!1045704 (choose!17959 (regOne!19355 r!17423) (regTwo!19355 r!17423) s!11993))))

(declare-fun e!1899875 () Bool)

(assert (=> d!850928 e!1899875))

(declare-fun res!1246405 () Bool)

(assert (=> d!850928 (=> (not res!1246405) (not e!1899875))))

(assert (=> d!850928 (= res!1246405 (validRegex!4154 (regOne!19355 r!17423)))))

(assert (=> d!850928 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!298 (regOne!19355 r!17423) (regTwo!19355 r!17423) s!11993) lt!1045704)))

(declare-fun b!3029031 () Bool)

(assert (=> b!3029031 (= e!1899875 (validRegex!4154 (regTwo!19355 r!17423)))))

(declare-fun b!3029032 () Bool)

(assert (=> b!3029032 (= e!1899874 (matchR!4303 (regTwo!19355 r!17423) s!11993))))

(assert (= (and d!850928 res!1246405) b!3029031))

(assert (= (and d!850928 (not res!1246404)) b!3029032))

(assert (=> d!850928 m!3367085))

(declare-fun m!3367109 () Bool)

(assert (=> d!850928 m!3367109))

(assert (=> d!850928 m!3367081))

(declare-fun m!3367111 () Bool)

(assert (=> b!3029031 m!3367111))

(assert (=> b!3029032 m!3367079))

(assert (=> b!3028923 d!850928))

(declare-fun b!3029033 () Bool)

(declare-fun e!1899878 () Bool)

(declare-fun lt!1045705 () Bool)

(assert (=> b!3029033 (= e!1899878 (not lt!1045705))))

(declare-fun b!3029034 () Bool)

(declare-fun e!1899879 () Bool)

(assert (=> b!3029034 (= e!1899879 e!1899878)))

(declare-fun c!500329 () Bool)

(assert (=> b!3029034 (= c!500329 ((_ is EmptyLang!9421) (regTwo!19355 r!17423)))))

(declare-fun b!3029035 () Bool)

(declare-fun e!1899876 () Bool)

(assert (=> b!3029035 (= e!1899876 (not (= (head!6727 s!11993) (c!500307 (regTwo!19355 r!17423)))))))

(declare-fun b!3029036 () Bool)

(declare-fun e!1899881 () Bool)

(assert (=> b!3029036 (= e!1899881 (matchR!4303 (derivativeStep!2668 (regTwo!19355 r!17423) (head!6727 s!11993)) (tail!4953 s!11993)))))

(declare-fun d!850930 () Bool)

(assert (=> d!850930 e!1899879))

(declare-fun c!500331 () Bool)

(assert (=> d!850930 (= c!500331 ((_ is EmptyExpr!9421) (regTwo!19355 r!17423)))))

(assert (=> d!850930 (= lt!1045705 e!1899881)))

(declare-fun c!500330 () Bool)

(assert (=> d!850930 (= c!500330 (isEmpty!19462 s!11993))))

(assert (=> d!850930 (validRegex!4154 (regTwo!19355 r!17423))))

(assert (=> d!850930 (= (matchR!4303 (regTwo!19355 r!17423) s!11993) lt!1045705)))

(declare-fun b!3029037 () Bool)

(declare-fun res!1246408 () Bool)

(declare-fun e!1899882 () Bool)

(assert (=> b!3029037 (=> res!1246408 e!1899882)))

(declare-fun e!1899877 () Bool)

(assert (=> b!3029037 (= res!1246408 e!1899877)))

(declare-fun res!1246406 () Bool)

(assert (=> b!3029037 (=> (not res!1246406) (not e!1899877))))

(assert (=> b!3029037 (= res!1246406 lt!1045705)))

(declare-fun bm!206122 () Bool)

(declare-fun call!206127 () Bool)

(assert (=> bm!206122 (= call!206127 (isEmpty!19462 s!11993))))

(declare-fun b!3029038 () Bool)

(declare-fun e!1899880 () Bool)

(assert (=> b!3029038 (= e!1899880 e!1899876)))

(declare-fun res!1246407 () Bool)

(assert (=> b!3029038 (=> res!1246407 e!1899876)))

(assert (=> b!3029038 (= res!1246407 call!206127)))

(declare-fun b!3029039 () Bool)

(assert (=> b!3029039 (= e!1899881 (nullable!3071 (regTwo!19355 r!17423)))))

(declare-fun b!3029040 () Bool)

(assert (=> b!3029040 (= e!1899877 (= (head!6727 s!11993) (c!500307 (regTwo!19355 r!17423))))))

(declare-fun b!3029041 () Bool)

(declare-fun res!1246411 () Bool)

(assert (=> b!3029041 (=> res!1246411 e!1899876)))

(assert (=> b!3029041 (= res!1246411 (not (isEmpty!19462 (tail!4953 s!11993))))))

(declare-fun b!3029042 () Bool)

(declare-fun res!1246412 () Bool)

(assert (=> b!3029042 (=> res!1246412 e!1899882)))

(assert (=> b!3029042 (= res!1246412 (not ((_ is ElementMatch!9421) (regTwo!19355 r!17423))))))

(assert (=> b!3029042 (= e!1899878 e!1899882)))

(declare-fun b!3029043 () Bool)

(assert (=> b!3029043 (= e!1899882 e!1899880)))

(declare-fun res!1246410 () Bool)

(assert (=> b!3029043 (=> (not res!1246410) (not e!1899880))))

(assert (=> b!3029043 (= res!1246410 (not lt!1045705))))

(declare-fun b!3029044 () Bool)

(declare-fun res!1246409 () Bool)

(assert (=> b!3029044 (=> (not res!1246409) (not e!1899877))))

(assert (=> b!3029044 (= res!1246409 (isEmpty!19462 (tail!4953 s!11993)))))

(declare-fun b!3029045 () Bool)

(declare-fun res!1246413 () Bool)

(assert (=> b!3029045 (=> (not res!1246413) (not e!1899877))))

(assert (=> b!3029045 (= res!1246413 (not call!206127))))

(declare-fun b!3029046 () Bool)

(assert (=> b!3029046 (= e!1899879 (= lt!1045705 call!206127))))

(assert (= (and d!850930 c!500330) b!3029039))

(assert (= (and d!850930 (not c!500330)) b!3029036))

(assert (= (and d!850930 c!500331) b!3029046))

(assert (= (and d!850930 (not c!500331)) b!3029034))

(assert (= (and b!3029034 c!500329) b!3029033))

(assert (= (and b!3029034 (not c!500329)) b!3029042))

(assert (= (and b!3029042 (not res!1246412)) b!3029037))

(assert (= (and b!3029037 res!1246406) b!3029045))

(assert (= (and b!3029045 res!1246413) b!3029044))

(assert (= (and b!3029044 res!1246409) b!3029040))

(assert (= (and b!3029037 (not res!1246408)) b!3029043))

(assert (= (and b!3029043 res!1246410) b!3029038))

(assert (= (and b!3029038 (not res!1246407)) b!3029041))

(assert (= (and b!3029041 (not res!1246411)) b!3029035))

(assert (= (or b!3029046 b!3029045 b!3029038) bm!206122))

(assert (=> bm!206122 m!3367095))

(assert (=> d!850930 m!3367095))

(assert (=> d!850930 m!3367111))

(assert (=> b!3029036 m!3367097))

(assert (=> b!3029036 m!3367097))

(declare-fun m!3367113 () Bool)

(assert (=> b!3029036 m!3367113))

(assert (=> b!3029036 m!3367101))

(assert (=> b!3029036 m!3367113))

(assert (=> b!3029036 m!3367101))

(declare-fun m!3367115 () Bool)

(assert (=> b!3029036 m!3367115))

(declare-fun m!3367117 () Bool)

(assert (=> b!3029039 m!3367117))

(assert (=> b!3029044 m!3367101))

(assert (=> b!3029044 m!3367101))

(assert (=> b!3029044 m!3367107))

(assert (=> b!3029035 m!3367097))

(assert (=> b!3029041 m!3367101))

(assert (=> b!3029041 m!3367101))

(assert (=> b!3029041 m!3367107))

(assert (=> b!3029040 m!3367097))

(assert (=> b!3028928 d!850930))

(declare-fun b!3029226 () Bool)

(assert (=> b!3029226 true))

(assert (=> b!3029226 true))

(declare-fun bs!530812 () Bool)

(declare-fun b!3029228 () Bool)

(assert (= bs!530812 (and b!3029228 b!3029226)))

(declare-fun lambda!113154 () Int)

(declare-fun lambda!113153 () Int)

(assert (=> bs!530812 (not (= lambda!113154 lambda!113153))))

(assert (=> b!3029228 true))

(assert (=> b!3029228 true))

(declare-fun b!3029218 () Bool)

(declare-fun c!500364 () Bool)

(assert (=> b!3029218 (= c!500364 ((_ is ElementMatch!9421) r!17423))))

(declare-fun e!1899974 () Bool)

(declare-fun e!1899970 () Bool)

(assert (=> b!3029218 (= e!1899974 e!1899970)))

(declare-fun b!3029220 () Bool)

(declare-fun res!1246485 () Bool)

(declare-fun e!1899973 () Bool)

(assert (=> b!3029220 (=> res!1246485 e!1899973)))

(declare-fun call!206144 () Bool)

(assert (=> b!3029220 (= res!1246485 call!206144)))

(declare-fun e!1899975 () Bool)

(assert (=> b!3029220 (= e!1899975 e!1899973)))

(declare-fun b!3029221 () Bool)

(declare-fun e!1899972 () Bool)

(declare-fun e!1899976 () Bool)

(assert (=> b!3029221 (= e!1899972 e!1899976)))

(declare-fun res!1246484 () Bool)

(assert (=> b!3029221 (= res!1246484 (matchRSpec!1558 (regOne!19355 r!17423) s!11993))))

(assert (=> b!3029221 (=> res!1246484 e!1899976)))

(declare-fun b!3029222 () Bool)

(declare-fun c!500363 () Bool)

(assert (=> b!3029222 (= c!500363 ((_ is Union!9421) r!17423))))

(assert (=> b!3029222 (= e!1899970 e!1899972)))

(declare-fun b!3029223 () Bool)

(declare-fun e!1899971 () Bool)

(assert (=> b!3029223 (= e!1899971 e!1899974)))

(declare-fun res!1246486 () Bool)

(assert (=> b!3029223 (= res!1246486 (not ((_ is EmptyLang!9421) r!17423)))))

(assert (=> b!3029223 (=> (not res!1246486) (not e!1899974))))

(declare-fun call!206145 () Bool)

(declare-fun bm!206139 () Bool)

(declare-fun c!500365 () Bool)

(declare-fun Exists!1687 (Int) Bool)

(assert (=> bm!206139 (= call!206145 (Exists!1687 (ite c!500365 lambda!113153 lambda!113154)))))

(declare-fun b!3029224 () Bool)

(assert (=> b!3029224 (= e!1899972 e!1899975)))

(assert (=> b!3029224 (= c!500365 ((_ is Star!9421) r!17423))))

(declare-fun b!3029225 () Bool)

(assert (=> b!3029225 (= e!1899976 (matchRSpec!1558 (regTwo!19355 r!17423) s!11993))))

(declare-fun b!3029219 () Bool)

(assert (=> b!3029219 (= e!1899970 (= s!11993 (Cons!35162 (c!500307 r!17423) Nil!35162)))))

(declare-fun d!850932 () Bool)

(declare-fun c!500366 () Bool)

(assert (=> d!850932 (= c!500366 ((_ is EmptyExpr!9421) r!17423))))

(assert (=> d!850932 (= (matchRSpec!1558 r!17423 s!11993) e!1899971)))

(assert (=> b!3029226 (= e!1899973 call!206145)))

(declare-fun b!3029227 () Bool)

(assert (=> b!3029227 (= e!1899971 call!206144)))

(assert (=> b!3029228 (= e!1899975 call!206145)))

(declare-fun bm!206140 () Bool)

(assert (=> bm!206140 (= call!206144 (isEmpty!19462 s!11993))))

(assert (= (and d!850932 c!500366) b!3029227))

(assert (= (and d!850932 (not c!500366)) b!3029223))

(assert (= (and b!3029223 res!1246486) b!3029218))

(assert (= (and b!3029218 c!500364) b!3029219))

(assert (= (and b!3029218 (not c!500364)) b!3029222))

(assert (= (and b!3029222 c!500363) b!3029221))

(assert (= (and b!3029222 (not c!500363)) b!3029224))

(assert (= (and b!3029221 (not res!1246484)) b!3029225))

(assert (= (and b!3029224 c!500365) b!3029220))

(assert (= (and b!3029224 (not c!500365)) b!3029228))

(assert (= (and b!3029220 (not res!1246485)) b!3029226))

(assert (= (or b!3029226 b!3029228) bm!206139))

(assert (= (or b!3029227 b!3029220) bm!206140))

(declare-fun m!3367163 () Bool)

(assert (=> b!3029221 m!3367163))

(declare-fun m!3367165 () Bool)

(assert (=> bm!206139 m!3367165))

(declare-fun m!3367167 () Bool)

(assert (=> b!3029225 m!3367167))

(assert (=> bm!206140 m!3367095))

(assert (=> b!3028922 d!850932))

(declare-fun b!3029233 () Bool)

(declare-fun e!1899979 () Bool)

(declare-fun lt!1045715 () Bool)

(assert (=> b!3029233 (= e!1899979 (not lt!1045715))))

(declare-fun b!3029234 () Bool)

(declare-fun e!1899980 () Bool)

(assert (=> b!3029234 (= e!1899980 e!1899979)))

(declare-fun c!500367 () Bool)

(assert (=> b!3029234 (= c!500367 ((_ is EmptyLang!9421) r!17423))))

(declare-fun b!3029235 () Bool)

(declare-fun e!1899977 () Bool)

(assert (=> b!3029235 (= e!1899977 (not (= (head!6727 s!11993) (c!500307 r!17423))))))

(declare-fun b!3029236 () Bool)

(declare-fun e!1899982 () Bool)

(assert (=> b!3029236 (= e!1899982 (matchR!4303 (derivativeStep!2668 r!17423 (head!6727 s!11993)) (tail!4953 s!11993)))))

(declare-fun d!850946 () Bool)

(assert (=> d!850946 e!1899980))

(declare-fun c!500369 () Bool)

(assert (=> d!850946 (= c!500369 ((_ is EmptyExpr!9421) r!17423))))

(assert (=> d!850946 (= lt!1045715 e!1899982)))

(declare-fun c!500368 () Bool)

(assert (=> d!850946 (= c!500368 (isEmpty!19462 s!11993))))

(assert (=> d!850946 (validRegex!4154 r!17423)))

(assert (=> d!850946 (= (matchR!4303 r!17423 s!11993) lt!1045715)))

(declare-fun b!3029237 () Bool)

(declare-fun res!1246489 () Bool)

(declare-fun e!1899983 () Bool)

(assert (=> b!3029237 (=> res!1246489 e!1899983)))

(declare-fun e!1899978 () Bool)

(assert (=> b!3029237 (= res!1246489 e!1899978)))

(declare-fun res!1246487 () Bool)

(assert (=> b!3029237 (=> (not res!1246487) (not e!1899978))))

(assert (=> b!3029237 (= res!1246487 lt!1045715)))

(declare-fun bm!206141 () Bool)

(declare-fun call!206146 () Bool)

(assert (=> bm!206141 (= call!206146 (isEmpty!19462 s!11993))))

(declare-fun b!3029238 () Bool)

(declare-fun e!1899981 () Bool)

(assert (=> b!3029238 (= e!1899981 e!1899977)))

(declare-fun res!1246488 () Bool)

(assert (=> b!3029238 (=> res!1246488 e!1899977)))

(assert (=> b!3029238 (= res!1246488 call!206146)))

(declare-fun b!3029239 () Bool)

(assert (=> b!3029239 (= e!1899982 (nullable!3071 r!17423))))

(declare-fun b!3029240 () Bool)

(assert (=> b!3029240 (= e!1899978 (= (head!6727 s!11993) (c!500307 r!17423)))))

(declare-fun b!3029241 () Bool)

(declare-fun res!1246492 () Bool)

(assert (=> b!3029241 (=> res!1246492 e!1899977)))

(assert (=> b!3029241 (= res!1246492 (not (isEmpty!19462 (tail!4953 s!11993))))))

(declare-fun b!3029242 () Bool)

(declare-fun res!1246493 () Bool)

(assert (=> b!3029242 (=> res!1246493 e!1899983)))

(assert (=> b!3029242 (= res!1246493 (not ((_ is ElementMatch!9421) r!17423)))))

(assert (=> b!3029242 (= e!1899979 e!1899983)))

(declare-fun b!3029243 () Bool)

(assert (=> b!3029243 (= e!1899983 e!1899981)))

(declare-fun res!1246491 () Bool)

(assert (=> b!3029243 (=> (not res!1246491) (not e!1899981))))

(assert (=> b!3029243 (= res!1246491 (not lt!1045715))))

(declare-fun b!3029244 () Bool)

(declare-fun res!1246490 () Bool)

(assert (=> b!3029244 (=> (not res!1246490) (not e!1899978))))

(assert (=> b!3029244 (= res!1246490 (isEmpty!19462 (tail!4953 s!11993)))))

(declare-fun b!3029245 () Bool)

(declare-fun res!1246494 () Bool)

(assert (=> b!3029245 (=> (not res!1246494) (not e!1899978))))

(assert (=> b!3029245 (= res!1246494 (not call!206146))))

(declare-fun b!3029246 () Bool)

(assert (=> b!3029246 (= e!1899980 (= lt!1045715 call!206146))))

(assert (= (and d!850946 c!500368) b!3029239))

(assert (= (and d!850946 (not c!500368)) b!3029236))

(assert (= (and d!850946 c!500369) b!3029246))

(assert (= (and d!850946 (not c!500369)) b!3029234))

(assert (= (and b!3029234 c!500367) b!3029233))

(assert (= (and b!3029234 (not c!500367)) b!3029242))

(assert (= (and b!3029242 (not res!1246493)) b!3029237))

(assert (= (and b!3029237 res!1246487) b!3029245))

(assert (= (and b!3029245 res!1246494) b!3029244))

(assert (= (and b!3029244 res!1246490) b!3029240))

(assert (= (and b!3029237 (not res!1246489)) b!3029243))

(assert (= (and b!3029243 res!1246491) b!3029238))

(assert (= (and b!3029238 (not res!1246488)) b!3029241))

(assert (= (and b!3029241 (not res!1246492)) b!3029235))

(assert (= (or b!3029246 b!3029245 b!3029238) bm!206141))

(assert (=> bm!206141 m!3367095))

(assert (=> d!850946 m!3367095))

(assert (=> d!850946 m!3367083))

(assert (=> b!3029236 m!3367097))

(assert (=> b!3029236 m!3367097))

(declare-fun m!3367169 () Bool)

(assert (=> b!3029236 m!3367169))

(assert (=> b!3029236 m!3367101))

(assert (=> b!3029236 m!3367169))

(assert (=> b!3029236 m!3367101))

(declare-fun m!3367171 () Bool)

(assert (=> b!3029236 m!3367171))

(declare-fun m!3367173 () Bool)

(assert (=> b!3029239 m!3367173))

(assert (=> b!3029244 m!3367101))

(assert (=> b!3029244 m!3367101))

(assert (=> b!3029244 m!3367107))

(assert (=> b!3029235 m!3367097))

(assert (=> b!3029241 m!3367101))

(assert (=> b!3029241 m!3367101))

(assert (=> b!3029241 m!3367107))

(assert (=> b!3029240 m!3367097))

(assert (=> b!3028922 d!850946))

(declare-fun d!850948 () Bool)

(assert (=> d!850948 (= (matchR!4303 r!17423 s!11993) (matchRSpec!1558 r!17423 s!11993))))

(declare-fun lt!1045718 () Unit!49265)

(declare-fun choose!17961 (Regex!9421 List!35286) Unit!49265)

(assert (=> d!850948 (= lt!1045718 (choose!17961 r!17423 s!11993))))

(assert (=> d!850948 (validRegex!4154 r!17423)))

(assert (=> d!850948 (= (mainMatchTheorem!1558 r!17423 s!11993) lt!1045718)))

(declare-fun bs!530813 () Bool)

(assert (= bs!530813 d!850948))

(assert (=> bs!530813 m!3367075))

(assert (=> bs!530813 m!3367073))

(declare-fun m!3367175 () Bool)

(assert (=> bs!530813 m!3367175))

(assert (=> bs!530813 m!3367083))

(assert (=> b!3028922 d!850948))

(declare-fun b!3029265 () Bool)

(declare-fun e!1899999 () Bool)

(declare-fun call!206153 () Bool)

(assert (=> b!3029265 (= e!1899999 call!206153)))

(declare-fun c!500375 () Bool)

(declare-fun c!500374 () Bool)

(declare-fun bm!206148 () Bool)

(declare-fun call!206154 () Bool)

(assert (=> bm!206148 (= call!206154 (validRegex!4154 (ite c!500374 (reg!9750 r!17423) (ite c!500375 (regTwo!19355 r!17423) (regOne!19354 r!17423)))))))

(declare-fun bm!206149 () Bool)

(declare-fun call!206155 () Bool)

(assert (=> bm!206149 (= call!206155 (validRegex!4154 (ite c!500375 (regOne!19355 r!17423) (regTwo!19354 r!17423))))))

(declare-fun b!3029266 () Bool)

(declare-fun e!1900001 () Bool)

(declare-fun e!1900002 () Bool)

(assert (=> b!3029266 (= e!1900001 e!1900002)))

(assert (=> b!3029266 (= c!500375 ((_ is Union!9421) r!17423))))

(declare-fun b!3029267 () Bool)

(declare-fun e!1900004 () Bool)

(declare-fun e!1900000 () Bool)

(assert (=> b!3029267 (= e!1900004 e!1900000)))

(declare-fun res!1246505 () Bool)

(assert (=> b!3029267 (=> (not res!1246505) (not e!1900000))))

(assert (=> b!3029267 (= res!1246505 call!206153)))

(declare-fun b!3029268 () Bool)

(declare-fun res!1246506 () Bool)

(assert (=> b!3029268 (=> (not res!1246506) (not e!1899999))))

(assert (=> b!3029268 (= res!1246506 call!206155)))

(assert (=> b!3029268 (= e!1900002 e!1899999)))

(declare-fun d!850950 () Bool)

(declare-fun res!1246509 () Bool)

(declare-fun e!1900003 () Bool)

(assert (=> d!850950 (=> res!1246509 e!1900003)))

(assert (=> d!850950 (= res!1246509 ((_ is ElementMatch!9421) r!17423))))

(assert (=> d!850950 (= (validRegex!4154 r!17423) e!1900003)))

(declare-fun b!3029269 () Bool)

(declare-fun res!1246508 () Bool)

(assert (=> b!3029269 (=> res!1246508 e!1900004)))

(assert (=> b!3029269 (= res!1246508 (not ((_ is Concat!14742) r!17423)))))

(assert (=> b!3029269 (= e!1900002 e!1900004)))

(declare-fun b!3029270 () Bool)

(assert (=> b!3029270 (= e!1900000 call!206155)))

(declare-fun b!3029271 () Bool)

(declare-fun e!1899998 () Bool)

(assert (=> b!3029271 (= e!1899998 call!206154)))

(declare-fun b!3029272 () Bool)

(assert (=> b!3029272 (= e!1900003 e!1900001)))

(assert (=> b!3029272 (= c!500374 ((_ is Star!9421) r!17423))))

(declare-fun bm!206150 () Bool)

(assert (=> bm!206150 (= call!206153 call!206154)))

(declare-fun b!3029273 () Bool)

(assert (=> b!3029273 (= e!1900001 e!1899998)))

(declare-fun res!1246507 () Bool)

(assert (=> b!3029273 (= res!1246507 (not (nullable!3071 (reg!9750 r!17423))))))

(assert (=> b!3029273 (=> (not res!1246507) (not e!1899998))))

(assert (= (and d!850950 (not res!1246509)) b!3029272))

(assert (= (and b!3029272 c!500374) b!3029273))

(assert (= (and b!3029272 (not c!500374)) b!3029266))

(assert (= (and b!3029273 res!1246507) b!3029271))

(assert (= (and b!3029266 c!500375) b!3029268))

(assert (= (and b!3029266 (not c!500375)) b!3029269))

(assert (= (and b!3029268 res!1246506) b!3029265))

(assert (= (and b!3029269 (not res!1246508)) b!3029267))

(assert (= (and b!3029267 res!1246505) b!3029270))

(assert (= (or b!3029268 b!3029270) bm!206149))

(assert (= (or b!3029265 b!3029267) bm!206150))

(assert (= (or b!3029271 bm!206150) bm!206148))

(declare-fun m!3367177 () Bool)

(assert (=> bm!206148 m!3367177))

(declare-fun m!3367179 () Bool)

(assert (=> bm!206149 m!3367179))

(declare-fun m!3367181 () Bool)

(assert (=> b!3029273 m!3367181))

(assert (=> start!290700 d!850950))

(declare-fun b!3029274 () Bool)

(declare-fun e!1900006 () Bool)

(declare-fun call!206156 () Bool)

(assert (=> b!3029274 (= e!1900006 call!206156)))

(declare-fun call!206157 () Bool)

(declare-fun bm!206151 () Bool)

(declare-fun c!500376 () Bool)

(declare-fun c!500377 () Bool)

(assert (=> bm!206151 (= call!206157 (validRegex!4154 (ite c!500376 (reg!9750 (regOne!19355 r!17423)) (ite c!500377 (regTwo!19355 (regOne!19355 r!17423)) (regOne!19354 (regOne!19355 r!17423))))))))

(declare-fun bm!206152 () Bool)

(declare-fun call!206158 () Bool)

(assert (=> bm!206152 (= call!206158 (validRegex!4154 (ite c!500377 (regOne!19355 (regOne!19355 r!17423)) (regTwo!19354 (regOne!19355 r!17423)))))))

(declare-fun b!3029275 () Bool)

(declare-fun e!1900008 () Bool)

(declare-fun e!1900009 () Bool)

(assert (=> b!3029275 (= e!1900008 e!1900009)))

(assert (=> b!3029275 (= c!500377 ((_ is Union!9421) (regOne!19355 r!17423)))))

(declare-fun b!3029276 () Bool)

(declare-fun e!1900011 () Bool)

(declare-fun e!1900007 () Bool)

(assert (=> b!3029276 (= e!1900011 e!1900007)))

(declare-fun res!1246510 () Bool)

(assert (=> b!3029276 (=> (not res!1246510) (not e!1900007))))

(assert (=> b!3029276 (= res!1246510 call!206156)))

(declare-fun b!3029277 () Bool)

(declare-fun res!1246511 () Bool)

(assert (=> b!3029277 (=> (not res!1246511) (not e!1900006))))

(assert (=> b!3029277 (= res!1246511 call!206158)))

(assert (=> b!3029277 (= e!1900009 e!1900006)))

(declare-fun d!850952 () Bool)

(declare-fun res!1246514 () Bool)

(declare-fun e!1900010 () Bool)

(assert (=> d!850952 (=> res!1246514 e!1900010)))

(assert (=> d!850952 (= res!1246514 ((_ is ElementMatch!9421) (regOne!19355 r!17423)))))

(assert (=> d!850952 (= (validRegex!4154 (regOne!19355 r!17423)) e!1900010)))

(declare-fun b!3029278 () Bool)

(declare-fun res!1246513 () Bool)

(assert (=> b!3029278 (=> res!1246513 e!1900011)))

(assert (=> b!3029278 (= res!1246513 (not ((_ is Concat!14742) (regOne!19355 r!17423))))))

(assert (=> b!3029278 (= e!1900009 e!1900011)))

(declare-fun b!3029279 () Bool)

(assert (=> b!3029279 (= e!1900007 call!206158)))

(declare-fun b!3029280 () Bool)

(declare-fun e!1900005 () Bool)

(assert (=> b!3029280 (= e!1900005 call!206157)))

(declare-fun b!3029281 () Bool)

(assert (=> b!3029281 (= e!1900010 e!1900008)))

(assert (=> b!3029281 (= c!500376 ((_ is Star!9421) (regOne!19355 r!17423)))))

(declare-fun bm!206153 () Bool)

(assert (=> bm!206153 (= call!206156 call!206157)))

(declare-fun b!3029282 () Bool)

(assert (=> b!3029282 (= e!1900008 e!1900005)))

(declare-fun res!1246512 () Bool)

(assert (=> b!3029282 (= res!1246512 (not (nullable!3071 (reg!9750 (regOne!19355 r!17423)))))))

(assert (=> b!3029282 (=> (not res!1246512) (not e!1900005))))

(assert (= (and d!850952 (not res!1246514)) b!3029281))

(assert (= (and b!3029281 c!500376) b!3029282))

(assert (= (and b!3029281 (not c!500376)) b!3029275))

(assert (= (and b!3029282 res!1246512) b!3029280))

(assert (= (and b!3029275 c!500377) b!3029277))

(assert (= (and b!3029275 (not c!500377)) b!3029278))

(assert (= (and b!3029277 res!1246511) b!3029274))

(assert (= (and b!3029278 (not res!1246513)) b!3029276))

(assert (= (and b!3029276 res!1246510) b!3029279))

(assert (= (or b!3029277 b!3029279) bm!206152))

(assert (= (or b!3029274 b!3029276) bm!206153))

(assert (= (or b!3029280 bm!206153) bm!206151))

(declare-fun m!3367183 () Bool)

(assert (=> bm!206151 m!3367183))

(declare-fun m!3367185 () Bool)

(assert (=> bm!206152 m!3367185))

(declare-fun m!3367187 () Bool)

(assert (=> b!3029282 m!3367187))

(assert (=> b!3028924 d!850952))

(declare-fun b!3029296 () Bool)

(declare-fun e!1900014 () Bool)

(declare-fun tp!960324 () Bool)

(declare-fun tp!960325 () Bool)

(assert (=> b!3029296 (= e!1900014 (and tp!960324 tp!960325))))

(declare-fun b!3029294 () Bool)

(declare-fun tp!960323 () Bool)

(declare-fun tp!960322 () Bool)

(assert (=> b!3029294 (= e!1900014 (and tp!960323 tp!960322))))

(assert (=> b!3028927 (= tp!960269 e!1900014)))

(declare-fun b!3029293 () Bool)

(assert (=> b!3029293 (= e!1900014 tp_is_empty!16405)))

(declare-fun b!3029295 () Bool)

(declare-fun tp!960326 () Bool)

(assert (=> b!3029295 (= e!1900014 tp!960326)))

(assert (= (and b!3028927 ((_ is ElementMatch!9421) (reg!9750 r!17423))) b!3029293))

(assert (= (and b!3028927 ((_ is Concat!14742) (reg!9750 r!17423))) b!3029294))

(assert (= (and b!3028927 ((_ is Star!9421) (reg!9750 r!17423))) b!3029295))

(assert (= (and b!3028927 ((_ is Union!9421) (reg!9750 r!17423))) b!3029296))

(declare-fun b!3029301 () Bool)

(declare-fun e!1900017 () Bool)

(declare-fun tp!960329 () Bool)

(assert (=> b!3029301 (= e!1900017 (and tp_is_empty!16405 tp!960329))))

(assert (=> b!3028926 (= tp!960271 e!1900017)))

(assert (= (and b!3028926 ((_ is Cons!35162) (t!234351 s!11993))) b!3029301))

(declare-fun b!3029305 () Bool)

(declare-fun e!1900018 () Bool)

(declare-fun tp!960332 () Bool)

(declare-fun tp!960333 () Bool)

(assert (=> b!3029305 (= e!1900018 (and tp!960332 tp!960333))))

(declare-fun b!3029303 () Bool)

(declare-fun tp!960331 () Bool)

(declare-fun tp!960330 () Bool)

(assert (=> b!3029303 (= e!1900018 (and tp!960331 tp!960330))))

(assert (=> b!3028925 (= tp!960273 e!1900018)))

(declare-fun b!3029302 () Bool)

(assert (=> b!3029302 (= e!1900018 tp_is_empty!16405)))

(declare-fun b!3029304 () Bool)

(declare-fun tp!960334 () Bool)

(assert (=> b!3029304 (= e!1900018 tp!960334)))

(assert (= (and b!3028925 ((_ is ElementMatch!9421) (regOne!19354 r!17423))) b!3029302))

(assert (= (and b!3028925 ((_ is Concat!14742) (regOne!19354 r!17423))) b!3029303))

(assert (= (and b!3028925 ((_ is Star!9421) (regOne!19354 r!17423))) b!3029304))

(assert (= (and b!3028925 ((_ is Union!9421) (regOne!19354 r!17423))) b!3029305))

(declare-fun b!3029309 () Bool)

(declare-fun e!1900019 () Bool)

(declare-fun tp!960337 () Bool)

(declare-fun tp!960338 () Bool)

(assert (=> b!3029309 (= e!1900019 (and tp!960337 tp!960338))))

(declare-fun b!3029307 () Bool)

(declare-fun tp!960336 () Bool)

(declare-fun tp!960335 () Bool)

(assert (=> b!3029307 (= e!1900019 (and tp!960336 tp!960335))))

(assert (=> b!3028925 (= tp!960268 e!1900019)))

(declare-fun b!3029306 () Bool)

(assert (=> b!3029306 (= e!1900019 tp_is_empty!16405)))

(declare-fun b!3029308 () Bool)

(declare-fun tp!960339 () Bool)

(assert (=> b!3029308 (= e!1900019 tp!960339)))

(assert (= (and b!3028925 ((_ is ElementMatch!9421) (regTwo!19354 r!17423))) b!3029306))

(assert (= (and b!3028925 ((_ is Concat!14742) (regTwo!19354 r!17423))) b!3029307))

(assert (= (and b!3028925 ((_ is Star!9421) (regTwo!19354 r!17423))) b!3029308))

(assert (= (and b!3028925 ((_ is Union!9421) (regTwo!19354 r!17423))) b!3029309))

(declare-fun b!3029313 () Bool)

(declare-fun e!1900020 () Bool)

(declare-fun tp!960342 () Bool)

(declare-fun tp!960343 () Bool)

(assert (=> b!3029313 (= e!1900020 (and tp!960342 tp!960343))))

(declare-fun b!3029311 () Bool)

(declare-fun tp!960341 () Bool)

(declare-fun tp!960340 () Bool)

(assert (=> b!3029311 (= e!1900020 (and tp!960341 tp!960340))))

(assert (=> b!3028929 (= tp!960270 e!1900020)))

(declare-fun b!3029310 () Bool)

(assert (=> b!3029310 (= e!1900020 tp_is_empty!16405)))

(declare-fun b!3029312 () Bool)

(declare-fun tp!960344 () Bool)

(assert (=> b!3029312 (= e!1900020 tp!960344)))

(assert (= (and b!3028929 ((_ is ElementMatch!9421) (regOne!19355 r!17423))) b!3029310))

(assert (= (and b!3028929 ((_ is Concat!14742) (regOne!19355 r!17423))) b!3029311))

(assert (= (and b!3028929 ((_ is Star!9421) (regOne!19355 r!17423))) b!3029312))

(assert (= (and b!3028929 ((_ is Union!9421) (regOne!19355 r!17423))) b!3029313))

(declare-fun b!3029317 () Bool)

(declare-fun e!1900021 () Bool)

(declare-fun tp!960347 () Bool)

(declare-fun tp!960348 () Bool)

(assert (=> b!3029317 (= e!1900021 (and tp!960347 tp!960348))))

(declare-fun b!3029315 () Bool)

(declare-fun tp!960346 () Bool)

(declare-fun tp!960345 () Bool)

(assert (=> b!3029315 (= e!1900021 (and tp!960346 tp!960345))))

(assert (=> b!3028929 (= tp!960272 e!1900021)))

(declare-fun b!3029314 () Bool)

(assert (=> b!3029314 (= e!1900021 tp_is_empty!16405)))

(declare-fun b!3029316 () Bool)

(declare-fun tp!960349 () Bool)

(assert (=> b!3029316 (= e!1900021 tp!960349)))

(assert (= (and b!3028929 ((_ is ElementMatch!9421) (regTwo!19355 r!17423))) b!3029314))

(assert (= (and b!3028929 ((_ is Concat!14742) (regTwo!19355 r!17423))) b!3029315))

(assert (= (and b!3028929 ((_ is Star!9421) (regTwo!19355 r!17423))) b!3029316))

(assert (= (and b!3028929 ((_ is Union!9421) (regTwo!19355 r!17423))) b!3029317))

(check-sat (not b!3029235) (not b!3029273) (not b!3029244) tp_is_empty!16405 (not bm!206148) (not b!3029225) (not b!3029295) (not b!3029241) (not b!3029221) (not d!850930) (not d!850928) (not b!3028987) (not b!3028991) (not b!3029296) (not bm!206151) (not b!3029313) (not b!3029308) (not b!3029239) (not b!3029240) (not b!3029031) (not b!3029305) (not b!3029301) (not b!3029317) (not d!850946) (not b!3029315) (not b!3028988) (not bm!206141) (not b!3029282) (not b!3029236) (not bm!206140) (not b!3029311) (not b!3029294) (not b!3029040) (not b!3029304) (not b!3029312) (not b!3029309) (not b!3029307) (not b!3029039) (not bm!206139) (not d!850948) (not b!3028993) (not b!3028992) (not b!3029303) (not b!3029044) (not b!3029041) (not b!3029036) (not bm!206122) (not b!3028996) (not bm!206152) (not bm!206149) (not b!3029035) (not bm!206119) (not d!850922) (not b!3029316) (not b!3029032))
(check-sat)
