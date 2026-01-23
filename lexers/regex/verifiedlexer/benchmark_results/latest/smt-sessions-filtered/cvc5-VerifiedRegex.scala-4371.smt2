; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232400 () Bool)

(assert start!232400)

(declare-fun b!2367947 () Bool)

(assert (=> b!2367947 true))

(assert (=> b!2367947 true))

(declare-fun lambda!87478 () Int)

(declare-fun lambda!87477 () Int)

(assert (=> b!2367947 (not (= lambda!87478 lambda!87477))))

(assert (=> b!2367947 true))

(assert (=> b!2367947 true))

(declare-fun b!2367945 () Bool)

(declare-fun e!1511682 () Bool)

(declare-fun tp!757159 () Bool)

(declare-fun tp!757156 () Bool)

(assert (=> b!2367945 (= e!1511682 (and tp!757159 tp!757156))))

(declare-fun b!2367946 () Bool)

(declare-fun e!1511687 () Bool)

(declare-fun e!1511685 () Bool)

(assert (=> b!2367946 (= e!1511687 (not e!1511685))))

(declare-fun res!1004956 () Bool)

(assert (=> b!2367946 (=> res!1004956 e!1511685)))

(declare-datatypes ((C!14026 0))(
  ( (C!14027 (val!8255 Int)) )
))
(declare-datatypes ((Regex!6934 0))(
  ( (ElementMatch!6934 (c!376374 C!14026)) (Concat!11570 (regOne!14380 Regex!6934) (regTwo!14380 Regex!6934)) (EmptyExpr!6934) (Star!6934 (reg!7263 Regex!6934)) (EmptyLang!6934) (Union!6934 (regOne!14381 Regex!6934) (regTwo!14381 Regex!6934)) )
))
(declare-fun r!13927 () Regex!6934)

(assert (=> b!2367946 (= res!1004956 (not (is-Concat!11570 r!13927)))))

(declare-fun lt!865456 () Bool)

(declare-fun lt!865458 () Bool)

(assert (=> b!2367946 (= lt!865456 lt!865458)))

(declare-datatypes ((List!28106 0))(
  ( (Nil!28008) (Cons!28008 (h!33409 C!14026) (t!208083 List!28106)) )
))
(declare-fun s!9460 () List!28106)

(declare-fun matchRSpec!783 (Regex!6934 List!28106) Bool)

(assert (=> b!2367946 (= lt!865458 (matchRSpec!783 r!13927 s!9460))))

(declare-fun matchR!3051 (Regex!6934 List!28106) Bool)

(assert (=> b!2367946 (= lt!865456 (matchR!3051 r!13927 s!9460))))

(declare-datatypes ((Unit!40903 0))(
  ( (Unit!40904) )
))
(declare-fun lt!865455 () Unit!40903)

(declare-fun mainMatchTheorem!783 (Regex!6934 List!28106) Unit!40903)

(assert (=> b!2367946 (= lt!865455 (mainMatchTheorem!783 r!13927 s!9460))))

(declare-fun e!1511686 () Bool)

(assert (=> b!2367947 (= e!1511685 e!1511686)))

(declare-fun res!1004962 () Bool)

(assert (=> b!2367947 (=> res!1004962 e!1511686)))

(declare-fun lt!865459 () Bool)

(assert (=> b!2367947 (= res!1004962 (not (= lt!865458 lt!865459)))))

(declare-fun Exists!996 (Int) Bool)

(assert (=> b!2367947 (= (Exists!996 lambda!87477) (Exists!996 lambda!87478))))

(declare-fun lt!865453 () Unit!40903)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!335 (Regex!6934 Regex!6934 List!28106) Unit!40903)

(assert (=> b!2367947 (= lt!865453 (lemmaExistCutMatchRandMatchRSpecEquivalent!335 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460))))

(assert (=> b!2367947 (= lt!865459 (Exists!996 lambda!87477))))

(declare-datatypes ((tuple2!27732 0))(
  ( (tuple2!27733 (_1!16407 List!28106) (_2!16407 List!28106)) )
))
(declare-datatypes ((Option!5477 0))(
  ( (None!5476) (Some!5476 (v!30884 tuple2!27732)) )
))
(declare-fun isDefined!4305 (Option!5477) Bool)

(declare-fun findConcatSeparation!585 (Regex!6934 Regex!6934 List!28106 List!28106 List!28106) Option!5477)

(assert (=> b!2367947 (= lt!865459 (isDefined!4305 (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) Nil!28008 s!9460 s!9460)))))

(declare-fun lt!865454 () Unit!40903)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!585 (Regex!6934 Regex!6934 List!28106) Unit!40903)

(assert (=> b!2367947 (= lt!865454 (lemmaFindConcatSeparationEquivalentToExists!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460))))

(declare-fun b!2367948 () Bool)

(declare-fun e!1511684 () Bool)

(declare-fun tp_is_empty!11281 () Bool)

(declare-fun tp!757157 () Bool)

(assert (=> b!2367948 (= e!1511684 (and tp_is_empty!11281 tp!757157))))

(declare-fun b!2367949 () Bool)

(declare-fun res!1004961 () Bool)

(assert (=> b!2367949 (=> (not res!1004961) (not e!1511687))))

(declare-datatypes ((List!28107 0))(
  ( (Nil!28009) (Cons!28009 (h!33410 Regex!6934) (t!208084 List!28107)) )
))
(declare-fun l!9164 () List!28107)

(declare-fun generalisedConcat!35 (List!28107) Regex!6934)

(assert (=> b!2367949 (= res!1004961 (= r!13927 (generalisedConcat!35 l!9164)))))

(declare-fun b!2367950 () Bool)

(declare-fun res!1004958 () Bool)

(declare-fun e!1511683 () Bool)

(assert (=> b!2367950 (=> res!1004958 e!1511683)))

(declare-fun head!5112 (List!28107) Regex!6934)

(assert (=> b!2367950 (= res!1004958 (not (matchR!3051 (head!5112 l!9164) s!9460)))))

(declare-fun b!2367951 () Bool)

(assert (=> b!2367951 (= e!1511686 e!1511683)))

(declare-fun res!1004960 () Bool)

(assert (=> b!2367951 (=> res!1004960 e!1511683)))

(declare-fun lt!865457 () List!28107)

(declare-fun isEmpty!15935 (List!28107) Bool)

(assert (=> b!2367951 (= res!1004960 (not (isEmpty!15935 lt!865457)))))

(declare-fun tail!3382 (List!28107) List!28107)

(assert (=> b!2367951 (= lt!865457 (tail!3382 l!9164))))

(declare-fun b!2367952 () Bool)

(assert (=> b!2367952 (= e!1511682 tp_is_empty!11281)))

(declare-fun b!2367953 () Bool)

(declare-fun tp!757154 () Bool)

(assert (=> b!2367953 (= e!1511682 tp!757154)))

(declare-fun b!2367954 () Bool)

(declare-fun e!1511681 () Bool)

(declare-fun tp!757153 () Bool)

(declare-fun tp!757158 () Bool)

(assert (=> b!2367954 (= e!1511681 (and tp!757153 tp!757158))))

(declare-fun b!2367955 () Bool)

(declare-fun res!1004957 () Bool)

(assert (=> b!2367955 (=> res!1004957 e!1511686)))

(assert (=> b!2367955 (= res!1004957 (isEmpty!15935 l!9164))))

(declare-fun b!2367956 () Bool)

(declare-fun res!1004955 () Bool)

(assert (=> b!2367956 (=> res!1004955 e!1511683)))

(assert (=> b!2367956 (= res!1004955 (not (= (generalisedConcat!35 lt!865457) EmptyExpr!6934)))))

(declare-fun res!1004959 () Bool)

(assert (=> start!232400 (=> (not res!1004959) (not e!1511687))))

(declare-fun lambda!87476 () Int)

(declare-fun forall!5568 (List!28107 Int) Bool)

(assert (=> start!232400 (= res!1004959 (forall!5568 l!9164 lambda!87476))))

(assert (=> start!232400 e!1511687))

(assert (=> start!232400 e!1511681))

(assert (=> start!232400 e!1511682))

(assert (=> start!232400 e!1511684))

(declare-fun b!2367957 () Bool)

(assert (=> b!2367957 (= e!1511683 (not (= l!9164 Nil!28009)))))

(declare-fun b!2367958 () Bool)

(declare-fun tp!757155 () Bool)

(declare-fun tp!757152 () Bool)

(assert (=> b!2367958 (= e!1511682 (and tp!757155 tp!757152))))

(assert (= (and start!232400 res!1004959) b!2367949))

(assert (= (and b!2367949 res!1004961) b!2367946))

(assert (= (and b!2367946 (not res!1004956)) b!2367947))

(assert (= (and b!2367947 (not res!1004962)) b!2367955))

(assert (= (and b!2367955 (not res!1004957)) b!2367951))

(assert (= (and b!2367951 (not res!1004960)) b!2367956))

(assert (= (and b!2367956 (not res!1004955)) b!2367950))

(assert (= (and b!2367950 (not res!1004958)) b!2367957))

(assert (= (and start!232400 (is-Cons!28009 l!9164)) b!2367954))

(assert (= (and start!232400 (is-ElementMatch!6934 r!13927)) b!2367952))

(assert (= (and start!232400 (is-Concat!11570 r!13927)) b!2367945))

(assert (= (and start!232400 (is-Star!6934 r!13927)) b!2367953))

(assert (= (and start!232400 (is-Union!6934 r!13927)) b!2367958))

(assert (= (and start!232400 (is-Cons!28008 s!9460)) b!2367948))

(declare-fun m!2777035 () Bool)

(assert (=> b!2367946 m!2777035))

(declare-fun m!2777037 () Bool)

(assert (=> b!2367946 m!2777037))

(declare-fun m!2777039 () Bool)

(assert (=> b!2367946 m!2777039))

(declare-fun m!2777041 () Bool)

(assert (=> start!232400 m!2777041))

(declare-fun m!2777043 () Bool)

(assert (=> b!2367951 m!2777043))

(declare-fun m!2777045 () Bool)

(assert (=> b!2367951 m!2777045))

(declare-fun m!2777047 () Bool)

(assert (=> b!2367947 m!2777047))

(declare-fun m!2777049 () Bool)

(assert (=> b!2367947 m!2777049))

(declare-fun m!2777051 () Bool)

(assert (=> b!2367947 m!2777051))

(assert (=> b!2367947 m!2777047))

(declare-fun m!2777053 () Bool)

(assert (=> b!2367947 m!2777053))

(declare-fun m!2777055 () Bool)

(assert (=> b!2367947 m!2777055))

(declare-fun m!2777057 () Bool)

(assert (=> b!2367947 m!2777057))

(assert (=> b!2367947 m!2777053))

(declare-fun m!2777059 () Bool)

(assert (=> b!2367949 m!2777059))

(declare-fun m!2777061 () Bool)

(assert (=> b!2367950 m!2777061))

(assert (=> b!2367950 m!2777061))

(declare-fun m!2777063 () Bool)

(assert (=> b!2367950 m!2777063))

(declare-fun m!2777065 () Bool)

(assert (=> b!2367956 m!2777065))

(declare-fun m!2777067 () Bool)

(assert (=> b!2367955 m!2777067))

(push 1)

(assert (not b!2367948))

(assert (not start!232400))

(assert (not b!2367958))

(assert (not b!2367953))

(assert (not b!2367956))

(assert (not b!2367946))

(assert (not b!2367947))

(assert (not b!2367951))

(assert tp_is_empty!11281)

(assert (not b!2367954))

(assert (not b!2367955))

(assert (not b!2367945))

(assert (not b!2367950))

(assert (not b!2367949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!694970 () Bool)

(declare-fun isEmpty!15937 (Option!5477) Bool)

(assert (=> d!694970 (= (isDefined!4305 (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) Nil!28008 s!9460 s!9460)) (not (isEmpty!15937 (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) Nil!28008 s!9460 s!9460))))))

(declare-fun bs!461052 () Bool)

(assert (= bs!461052 d!694970))

(assert (=> bs!461052 m!2777047))

(declare-fun m!2777103 () Bool)

(assert (=> bs!461052 m!2777103))

(assert (=> b!2367947 d!694970))

(declare-fun bs!461053 () Bool)

(declare-fun d!694972 () Bool)

(assert (= bs!461053 (and d!694972 b!2367947)))

(declare-fun lambda!87492 () Int)

(assert (=> bs!461053 (= lambda!87492 lambda!87477)))

(assert (=> bs!461053 (not (= lambda!87492 lambda!87478))))

(assert (=> d!694972 true))

(assert (=> d!694972 true))

(assert (=> d!694972 true))

(assert (=> d!694972 (= (isDefined!4305 (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) Nil!28008 s!9460 s!9460)) (Exists!996 lambda!87492))))

(declare-fun lt!865483 () Unit!40903)

(declare-fun choose!13759 (Regex!6934 Regex!6934 List!28106) Unit!40903)

(assert (=> d!694972 (= lt!865483 (choose!13759 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460))))

(declare-fun validRegex!2664 (Regex!6934) Bool)

(assert (=> d!694972 (validRegex!2664 (regOne!14380 r!13927))))

(assert (=> d!694972 (= (lemmaFindConcatSeparationEquivalentToExists!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460) lt!865483)))

(declare-fun bs!461054 () Bool)

(assert (= bs!461054 d!694972))

(declare-fun m!2777105 () Bool)

(assert (=> bs!461054 m!2777105))

(assert (=> bs!461054 m!2777047))

(declare-fun m!2777107 () Bool)

(assert (=> bs!461054 m!2777107))

(declare-fun m!2777109 () Bool)

(assert (=> bs!461054 m!2777109))

(assert (=> bs!461054 m!2777047))

(assert (=> bs!461054 m!2777049))

(assert (=> b!2367947 d!694972))

(declare-fun bs!461055 () Bool)

(declare-fun d!694974 () Bool)

(assert (= bs!461055 (and d!694974 b!2367947)))

(declare-fun lambda!87497 () Int)

(assert (=> bs!461055 (= lambda!87497 lambda!87477)))

(assert (=> bs!461055 (not (= lambda!87497 lambda!87478))))

(declare-fun bs!461056 () Bool)

(assert (= bs!461056 (and d!694974 d!694972)))

(assert (=> bs!461056 (= lambda!87497 lambda!87492)))

(assert (=> d!694974 true))

(assert (=> d!694974 true))

(assert (=> d!694974 true))

(declare-fun lambda!87498 () Int)

(assert (=> bs!461055 (not (= lambda!87498 lambda!87477))))

(assert (=> bs!461055 (= lambda!87498 lambda!87478)))

(assert (=> bs!461056 (not (= lambda!87498 lambda!87492))))

(declare-fun bs!461057 () Bool)

(assert (= bs!461057 d!694974))

(assert (=> bs!461057 (not (= lambda!87498 lambda!87497))))

(assert (=> d!694974 true))

(assert (=> d!694974 true))

(assert (=> d!694974 true))

(assert (=> d!694974 (= (Exists!996 lambda!87497) (Exists!996 lambda!87498))))

(declare-fun lt!865486 () Unit!40903)

(declare-fun choose!13760 (Regex!6934 Regex!6934 List!28106) Unit!40903)

(assert (=> d!694974 (= lt!865486 (choose!13760 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460))))

(assert (=> d!694974 (validRegex!2664 (regOne!14380 r!13927))))

(assert (=> d!694974 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!335 (regOne!14380 r!13927) (regTwo!14380 r!13927) s!9460) lt!865486)))

(declare-fun m!2777111 () Bool)

(assert (=> bs!461057 m!2777111))

(declare-fun m!2777113 () Bool)

(assert (=> bs!461057 m!2777113))

(declare-fun m!2777115 () Bool)

(assert (=> bs!461057 m!2777115))

(assert (=> bs!461057 m!2777105))

(assert (=> b!2367947 d!694974))

(declare-fun b!2368061 () Bool)

(declare-fun e!1511737 () Bool)

(declare-fun lt!865497 () Option!5477)

(assert (=> b!2368061 (= e!1511737 (not (isDefined!4305 lt!865497)))))

(declare-fun b!2368062 () Bool)

(declare-fun e!1511738 () Option!5477)

(assert (=> b!2368062 (= e!1511738 None!5476)))

(declare-fun d!694978 () Bool)

(assert (=> d!694978 e!1511737))

(declare-fun res!1005024 () Bool)

(assert (=> d!694978 (=> res!1005024 e!1511737)))

(declare-fun e!1511741 () Bool)

(assert (=> d!694978 (= res!1005024 e!1511741)))

(declare-fun res!1005027 () Bool)

(assert (=> d!694978 (=> (not res!1005027) (not e!1511741))))

(assert (=> d!694978 (= res!1005027 (isDefined!4305 lt!865497))))

(declare-fun e!1511739 () Option!5477)

(assert (=> d!694978 (= lt!865497 e!1511739)))

(declare-fun c!376385 () Bool)

(declare-fun e!1511740 () Bool)

(assert (=> d!694978 (= c!376385 e!1511740)))

(declare-fun res!1005023 () Bool)

(assert (=> d!694978 (=> (not res!1005023) (not e!1511740))))

(assert (=> d!694978 (= res!1005023 (matchR!3051 (regOne!14380 r!13927) Nil!28008))))

(assert (=> d!694978 (validRegex!2664 (regOne!14380 r!13927))))

(assert (=> d!694978 (= (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) Nil!28008 s!9460 s!9460) lt!865497)))

(declare-fun b!2368063 () Bool)

(assert (=> b!2368063 (= e!1511739 e!1511738)))

(declare-fun c!376384 () Bool)

(assert (=> b!2368063 (= c!376384 (is-Nil!28008 s!9460))))

(declare-fun b!2368064 () Bool)

(declare-fun res!1005026 () Bool)

(assert (=> b!2368064 (=> (not res!1005026) (not e!1511741))))

(declare-fun get!8510 (Option!5477) tuple2!27732)

(assert (=> b!2368064 (= res!1005026 (matchR!3051 (regOne!14380 r!13927) (_1!16407 (get!8510 lt!865497))))))

(declare-fun b!2368065 () Bool)

(declare-fun ++!6897 (List!28106 List!28106) List!28106)

(assert (=> b!2368065 (= e!1511741 (= (++!6897 (_1!16407 (get!8510 lt!865497)) (_2!16407 (get!8510 lt!865497))) s!9460))))

(declare-fun b!2368066 () Bool)

(assert (=> b!2368066 (= e!1511740 (matchR!3051 (regTwo!14380 r!13927) s!9460))))

(declare-fun b!2368067 () Bool)

(declare-fun res!1005025 () Bool)

(assert (=> b!2368067 (=> (not res!1005025) (not e!1511741))))

(assert (=> b!2368067 (= res!1005025 (matchR!3051 (regTwo!14380 r!13927) (_2!16407 (get!8510 lt!865497))))))

(declare-fun b!2368068 () Bool)

(assert (=> b!2368068 (= e!1511739 (Some!5476 (tuple2!27733 Nil!28008 s!9460)))))

(declare-fun b!2368069 () Bool)

(declare-fun lt!865495 () Unit!40903)

(declare-fun lt!865496 () Unit!40903)

(assert (=> b!2368069 (= lt!865495 lt!865496)))

(assert (=> b!2368069 (= (++!6897 (++!6897 Nil!28008 (Cons!28008 (h!33409 s!9460) Nil!28008)) (t!208083 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!543 (List!28106 C!14026 List!28106 List!28106) Unit!40903)

(assert (=> b!2368069 (= lt!865496 (lemmaMoveElementToOtherListKeepsConcatEq!543 Nil!28008 (h!33409 s!9460) (t!208083 s!9460) s!9460))))

(assert (=> b!2368069 (= e!1511738 (findConcatSeparation!585 (regOne!14380 r!13927) (regTwo!14380 r!13927) (++!6897 Nil!28008 (Cons!28008 (h!33409 s!9460) Nil!28008)) (t!208083 s!9460) s!9460))))

(assert (= (and d!694978 res!1005023) b!2368066))

(assert (= (and d!694978 c!376385) b!2368068))

(assert (= (and d!694978 (not c!376385)) b!2368063))

(assert (= (and b!2368063 c!376384) b!2368062))

(assert (= (and b!2368063 (not c!376384)) b!2368069))

(assert (= (and d!694978 res!1005027) b!2368064))

(assert (= (and b!2368064 res!1005026) b!2368067))

(assert (= (and b!2368067 res!1005025) b!2368065))

(assert (= (and d!694978 (not res!1005024)) b!2368061))

(declare-fun m!2777117 () Bool)

(assert (=> b!2368067 m!2777117))

(declare-fun m!2777119 () Bool)

(assert (=> b!2368067 m!2777119))

(declare-fun m!2777121 () Bool)

(assert (=> b!2368066 m!2777121))

(declare-fun m!2777123 () Bool)

(assert (=> b!2368061 m!2777123))

(assert (=> b!2368064 m!2777117))

(declare-fun m!2777125 () Bool)

(assert (=> b!2368064 m!2777125))

(assert (=> d!694978 m!2777123))

(declare-fun m!2777127 () Bool)

(assert (=> d!694978 m!2777127))

(assert (=> d!694978 m!2777105))

(declare-fun m!2777129 () Bool)

(assert (=> b!2368069 m!2777129))

(assert (=> b!2368069 m!2777129))

(declare-fun m!2777131 () Bool)

(assert (=> b!2368069 m!2777131))

(declare-fun m!2777133 () Bool)

(assert (=> b!2368069 m!2777133))

(assert (=> b!2368069 m!2777129))

(declare-fun m!2777135 () Bool)

(assert (=> b!2368069 m!2777135))

(assert (=> b!2368065 m!2777117))

(declare-fun m!2777137 () Bool)

(assert (=> b!2368065 m!2777137))

(assert (=> b!2367947 d!694978))

(declare-fun d!694980 () Bool)

(declare-fun choose!13761 (Int) Bool)

(assert (=> d!694980 (= (Exists!996 lambda!87478) (choose!13761 lambda!87478))))

(declare-fun bs!461058 () Bool)

(assert (= bs!461058 d!694980))

(declare-fun m!2777139 () Bool)

(assert (=> bs!461058 m!2777139))

(assert (=> b!2367947 d!694980))

(declare-fun d!694982 () Bool)

(assert (=> d!694982 (= (Exists!996 lambda!87477) (choose!13761 lambda!87477))))

(declare-fun bs!461059 () Bool)

(assert (= bs!461059 d!694982))

(declare-fun m!2777141 () Bool)

(assert (=> bs!461059 m!2777141))

(assert (=> b!2367947 d!694982))

(declare-fun d!694984 () Bool)

(declare-fun res!1005034 () Bool)

(declare-fun e!1511752 () Bool)

(assert (=> d!694984 (=> res!1005034 e!1511752)))

(assert (=> d!694984 (= res!1005034 (is-Nil!28009 l!9164))))

(assert (=> d!694984 (= (forall!5568 l!9164 lambda!87476) e!1511752)))

(declare-fun b!2368084 () Bool)

(declare-fun e!1511753 () Bool)

(assert (=> b!2368084 (= e!1511752 e!1511753)))

(declare-fun res!1005035 () Bool)

(assert (=> b!2368084 (=> (not res!1005035) (not e!1511753))))

(declare-fun dynLambda!12065 (Int Regex!6934) Bool)

(assert (=> b!2368084 (= res!1005035 (dynLambda!12065 lambda!87476 (h!33410 l!9164)))))

(declare-fun b!2368085 () Bool)

(assert (=> b!2368085 (= e!1511753 (forall!5568 (t!208084 l!9164) lambda!87476))))

(assert (= (and d!694984 (not res!1005034)) b!2368084))

(assert (= (and b!2368084 res!1005035) b!2368085))

(declare-fun b_lambda!73899 () Bool)

(assert (=> (not b_lambda!73899) (not b!2368084)))

(declare-fun m!2777143 () Bool)

(assert (=> b!2368084 m!2777143))

(declare-fun m!2777145 () Bool)

(assert (=> b!2368085 m!2777145))

(assert (=> start!232400 d!694984))

(declare-fun d!694986 () Bool)

(assert (=> d!694986 (= (isEmpty!15935 l!9164) (is-Nil!28009 l!9164))))

(assert (=> b!2367955 d!694986))

(declare-fun d!694988 () Bool)

(declare-fun e!1511786 () Bool)

(assert (=> d!694988 e!1511786))

(declare-fun c!376405 () Bool)

(assert (=> d!694988 (= c!376405 (is-EmptyExpr!6934 (head!5112 l!9164)))))

(declare-fun lt!865502 () Bool)

(declare-fun e!1511782 () Bool)

(assert (=> d!694988 (= lt!865502 e!1511782)))

(declare-fun c!376406 () Bool)

(declare-fun isEmpty!15938 (List!28106) Bool)

(assert (=> d!694988 (= c!376406 (isEmpty!15938 s!9460))))

(assert (=> d!694988 (validRegex!2664 (head!5112 l!9164))))

(assert (=> d!694988 (= (matchR!3051 (head!5112 l!9164) s!9460) lt!865502)))

(declare-fun bm!144028 () Bool)

(declare-fun call!144033 () Bool)

(assert (=> bm!144028 (= call!144033 (isEmpty!15938 s!9460))))

(declare-fun b!2368134 () Bool)

(declare-fun e!1511784 () Bool)

(declare-fun e!1511783 () Bool)

(assert (=> b!2368134 (= e!1511784 e!1511783)))

(declare-fun res!1005062 () Bool)

(assert (=> b!2368134 (=> res!1005062 e!1511783)))

(assert (=> b!2368134 (= res!1005062 call!144033)))

(declare-fun b!2368135 () Bool)

(declare-fun res!1005060 () Bool)

(declare-fun e!1511785 () Bool)

(assert (=> b!2368135 (=> res!1005060 e!1511785)))

(assert (=> b!2368135 (= res!1005060 (not (is-ElementMatch!6934 (head!5112 l!9164))))))

(declare-fun e!1511780 () Bool)

(assert (=> b!2368135 (= e!1511780 e!1511785)))

(declare-fun b!2368136 () Bool)

(declare-fun nullable!1996 (Regex!6934) Bool)

(assert (=> b!2368136 (= e!1511782 (nullable!1996 (head!5112 l!9164)))))

(declare-fun b!2368137 () Bool)

(declare-fun derivativeStep!1654 (Regex!6934 C!14026) Regex!6934)

(declare-fun head!5114 (List!28106) C!14026)

(declare-fun tail!3384 (List!28106) List!28106)

(assert (=> b!2368137 (= e!1511782 (matchR!3051 (derivativeStep!1654 (head!5112 l!9164) (head!5114 s!9460)) (tail!3384 s!9460)))))

(declare-fun b!2368138 () Bool)

(assert (=> b!2368138 (= e!1511785 e!1511784)))

(declare-fun res!1005059 () Bool)

(assert (=> b!2368138 (=> (not res!1005059) (not e!1511784))))

(assert (=> b!2368138 (= res!1005059 (not lt!865502))))

(declare-fun b!2368139 () Bool)

(declare-fun res!1005063 () Bool)

(assert (=> b!2368139 (=> res!1005063 e!1511783)))

(assert (=> b!2368139 (= res!1005063 (not (isEmpty!15938 (tail!3384 s!9460))))))

(declare-fun b!2368140 () Bool)

(assert (=> b!2368140 (= e!1511786 e!1511780)))

(declare-fun c!376404 () Bool)

(assert (=> b!2368140 (= c!376404 (is-EmptyLang!6934 (head!5112 l!9164)))))

(declare-fun b!2368141 () Bool)

(declare-fun e!1511781 () Bool)

(assert (=> b!2368141 (= e!1511781 (= (head!5114 s!9460) (c!376374 (head!5112 l!9164))))))

(declare-fun b!2368142 () Bool)

(declare-fun res!1005061 () Bool)

(assert (=> b!2368142 (=> (not res!1005061) (not e!1511781))))

(assert (=> b!2368142 (= res!1005061 (not call!144033))))

(declare-fun b!2368143 () Bool)

(assert (=> b!2368143 (= e!1511786 (= lt!865502 call!144033))))

(declare-fun b!2368144 () Bool)

(assert (=> b!2368144 (= e!1511783 (not (= (head!5114 s!9460) (c!376374 (head!5112 l!9164)))))))

(declare-fun b!2368145 () Bool)

(declare-fun res!1005058 () Bool)

(assert (=> b!2368145 (=> (not res!1005058) (not e!1511781))))

(assert (=> b!2368145 (= res!1005058 (isEmpty!15938 (tail!3384 s!9460)))))

(declare-fun b!2368146 () Bool)

(declare-fun res!1005056 () Bool)

(assert (=> b!2368146 (=> res!1005056 e!1511785)))

(assert (=> b!2368146 (= res!1005056 e!1511781)))

(declare-fun res!1005057 () Bool)

(assert (=> b!2368146 (=> (not res!1005057) (not e!1511781))))

(assert (=> b!2368146 (= res!1005057 lt!865502)))

(declare-fun b!2368147 () Bool)

(assert (=> b!2368147 (= e!1511780 (not lt!865502))))

(assert (= (and d!694988 c!376406) b!2368136))

(assert (= (and d!694988 (not c!376406)) b!2368137))

(assert (= (and d!694988 c!376405) b!2368143))

(assert (= (and d!694988 (not c!376405)) b!2368140))

(assert (= (and b!2368140 c!376404) b!2368147))

(assert (= (and b!2368140 (not c!376404)) b!2368135))

(assert (= (and b!2368135 (not res!1005060)) b!2368146))

(assert (= (and b!2368146 res!1005057) b!2368142))

(assert (= (and b!2368142 res!1005061) b!2368145))

(assert (= (and b!2368145 res!1005058) b!2368141))

(assert (= (and b!2368146 (not res!1005056)) b!2368138))

(assert (= (and b!2368138 res!1005059) b!2368134))

(assert (= (and b!2368134 (not res!1005062)) b!2368139))

(assert (= (and b!2368139 (not res!1005063)) b!2368144))

(assert (= (or b!2368143 b!2368134 b!2368142) bm!144028))

(declare-fun m!2777179 () Bool)

(assert (=> bm!144028 m!2777179))

(declare-fun m!2777181 () Bool)

(assert (=> b!2368139 m!2777181))

(assert (=> b!2368139 m!2777181))

(declare-fun m!2777183 () Bool)

(assert (=> b!2368139 m!2777183))

(assert (=> b!2368145 m!2777181))

(assert (=> b!2368145 m!2777181))

(assert (=> b!2368145 m!2777183))

(declare-fun m!2777185 () Bool)

(assert (=> b!2368144 m!2777185))

(assert (=> b!2368141 m!2777185))

(assert (=> b!2368136 m!2777061))

(declare-fun m!2777187 () Bool)

(assert (=> b!2368136 m!2777187))

(assert (=> b!2368137 m!2777185))

(assert (=> b!2368137 m!2777061))

(assert (=> b!2368137 m!2777185))

(declare-fun m!2777189 () Bool)

(assert (=> b!2368137 m!2777189))

(assert (=> b!2368137 m!2777181))

(assert (=> b!2368137 m!2777189))

(assert (=> b!2368137 m!2777181))

(declare-fun m!2777191 () Bool)

(assert (=> b!2368137 m!2777191))

(assert (=> d!694988 m!2777179))

(assert (=> d!694988 m!2777061))

(declare-fun m!2777193 () Bool)

(assert (=> d!694988 m!2777193))

(assert (=> b!2367950 d!694988))

(declare-fun d!694994 () Bool)

(assert (=> d!694994 (= (head!5112 l!9164) (h!33410 l!9164))))

(assert (=> b!2367950 d!694994))

(declare-fun bs!461063 () Bool)

(declare-fun d!694996 () Bool)

(assert (= bs!461063 (and d!694996 start!232400)))

(declare-fun lambda!87505 () Int)

(assert (=> bs!461063 (= lambda!87505 lambda!87476)))

(declare-fun b!2368168 () Bool)

(declare-fun e!1511801 () Bool)

(declare-fun lt!865505 () Regex!6934)

(declare-fun isConcat!19 (Regex!6934) Bool)

(assert (=> b!2368168 (= e!1511801 (isConcat!19 lt!865505))))

(declare-fun b!2368169 () Bool)

(declare-fun e!1511804 () Regex!6934)

(declare-fun e!1511802 () Regex!6934)

(assert (=> b!2368169 (= e!1511804 e!1511802)))

(declare-fun c!376418 () Bool)

(assert (=> b!2368169 (= c!376418 (is-Cons!28009 l!9164))))

(declare-fun b!2368170 () Bool)

(declare-fun e!1511803 () Bool)

(assert (=> b!2368170 (= e!1511803 e!1511801)))

(declare-fun c!376417 () Bool)

(assert (=> b!2368170 (= c!376417 (isEmpty!15935 (tail!3382 l!9164)))))

(declare-fun b!2368171 () Bool)

(assert (=> b!2368171 (= e!1511802 (Concat!11570 (h!33410 l!9164) (generalisedConcat!35 (t!208084 l!9164))))))

(declare-fun b!2368172 () Bool)

(assert (=> b!2368172 (= e!1511801 (= lt!865505 (head!5112 l!9164)))))

(declare-fun e!1511800 () Bool)

(assert (=> d!694996 e!1511800))

(declare-fun res!1005068 () Bool)

(assert (=> d!694996 (=> (not res!1005068) (not e!1511800))))

(assert (=> d!694996 (= res!1005068 (validRegex!2664 lt!865505))))

(assert (=> d!694996 (= lt!865505 e!1511804)))

(declare-fun c!376415 () Bool)

(declare-fun e!1511799 () Bool)

(assert (=> d!694996 (= c!376415 e!1511799)))

(declare-fun res!1005069 () Bool)

(assert (=> d!694996 (=> (not res!1005069) (not e!1511799))))

(assert (=> d!694996 (= res!1005069 (is-Cons!28009 l!9164))))

(assert (=> d!694996 (forall!5568 l!9164 lambda!87505)))

(assert (=> d!694996 (= (generalisedConcat!35 l!9164) lt!865505)))

(declare-fun b!2368173 () Bool)

(assert (=> b!2368173 (= e!1511804 (h!33410 l!9164))))

(declare-fun b!2368174 () Bool)

(declare-fun isEmptyExpr!19 (Regex!6934) Bool)

(assert (=> b!2368174 (= e!1511803 (isEmptyExpr!19 lt!865505))))

(declare-fun b!2368175 () Bool)

(assert (=> b!2368175 (= e!1511800 e!1511803)))

(declare-fun c!376416 () Bool)

(assert (=> b!2368175 (= c!376416 (isEmpty!15935 l!9164))))

(declare-fun b!2368176 () Bool)

(assert (=> b!2368176 (= e!1511799 (isEmpty!15935 (t!208084 l!9164)))))

(declare-fun b!2368177 () Bool)

(assert (=> b!2368177 (= e!1511802 EmptyExpr!6934)))

(assert (= (and d!694996 res!1005069) b!2368176))

(assert (= (and d!694996 c!376415) b!2368173))

(assert (= (and d!694996 (not c!376415)) b!2368169))

(assert (= (and b!2368169 c!376418) b!2368171))

(assert (= (and b!2368169 (not c!376418)) b!2368177))

(assert (= (and d!694996 res!1005068) b!2368175))

(assert (= (and b!2368175 c!376416) b!2368174))

(assert (= (and b!2368175 (not c!376416)) b!2368170))

(assert (= (and b!2368170 c!376417) b!2368172))

(assert (= (and b!2368170 (not c!376417)) b!2368168))

(declare-fun m!2777195 () Bool)

(assert (=> b!2368171 m!2777195))

(declare-fun m!2777197 () Bool)

(assert (=> b!2368176 m!2777197))

(declare-fun m!2777199 () Bool)

(assert (=> b!2368174 m!2777199))

(assert (=> b!2368170 m!2777045))

(assert (=> b!2368170 m!2777045))

(declare-fun m!2777201 () Bool)

(assert (=> b!2368170 m!2777201))

(assert (=> b!2368175 m!2777067))

(declare-fun m!2777203 () Bool)

(assert (=> d!694996 m!2777203))

(declare-fun m!2777205 () Bool)

(assert (=> d!694996 m!2777205))

(assert (=> b!2368172 m!2777061))

(declare-fun m!2777207 () Bool)

(assert (=> b!2368168 m!2777207))

(assert (=> b!2367949 d!694996))

(declare-fun d!694998 () Bool)

(assert (=> d!694998 (= (isEmpty!15935 lt!865457) (is-Nil!28009 lt!865457))))

(assert (=> b!2367951 d!694998))

(declare-fun d!695000 () Bool)

(assert (=> d!695000 (= (tail!3382 l!9164) (t!208084 l!9164))))

(assert (=> b!2367951 d!695000))

(declare-fun bs!461064 () Bool)

(declare-fun b!2368247 () Bool)

(assert (= bs!461064 (and b!2368247 d!694974)))

(declare-fun lambda!87510 () Int)

(assert (=> bs!461064 (not (= lambda!87510 lambda!87498))))

(declare-fun bs!461065 () Bool)

(assert (= bs!461065 (and b!2368247 b!2367947)))

(assert (=> bs!461065 (not (= lambda!87510 lambda!87478))))

(assert (=> bs!461064 (not (= lambda!87510 lambda!87497))))

(declare-fun bs!461066 () Bool)

(assert (= bs!461066 (and b!2368247 d!694972)))

(assert (=> bs!461066 (not (= lambda!87510 lambda!87492))))

(assert (=> bs!461065 (not (= lambda!87510 lambda!87477))))

(assert (=> b!2368247 true))

(assert (=> b!2368247 true))

(declare-fun bs!461067 () Bool)

(declare-fun b!2368244 () Bool)

(assert (= bs!461067 (and b!2368244 d!694974)))

(declare-fun lambda!87511 () Int)

(assert (=> bs!461067 (= lambda!87511 lambda!87498)))

(declare-fun bs!461068 () Bool)

(assert (= bs!461068 (and b!2368244 b!2368247)))

(assert (=> bs!461068 (not (= lambda!87511 lambda!87510))))

(declare-fun bs!461069 () Bool)

(assert (= bs!461069 (and b!2368244 b!2367947)))

(assert (=> bs!461069 (= lambda!87511 lambda!87478)))

(assert (=> bs!461067 (not (= lambda!87511 lambda!87497))))

(declare-fun bs!461070 () Bool)

(assert (= bs!461070 (and b!2368244 d!694972)))

(assert (=> bs!461070 (not (= lambda!87511 lambda!87492))))

(assert (=> bs!461069 (not (= lambda!87511 lambda!87477))))

(assert (=> b!2368244 true))

(assert (=> b!2368244 true))

(declare-fun bm!144035 () Bool)

(declare-fun call!144041 () Bool)

(assert (=> bm!144035 (= call!144041 (isEmpty!15938 s!9460))))

(declare-fun d!695002 () Bool)

(declare-fun c!376434 () Bool)

(assert (=> d!695002 (= c!376434 (is-EmptyExpr!6934 r!13927))))

(declare-fun e!1511840 () Bool)

(assert (=> d!695002 (= (matchRSpec!783 r!13927 s!9460) e!1511840)))

(declare-fun bm!144036 () Bool)

(declare-fun call!144040 () Bool)

(declare-fun c!376433 () Bool)

(assert (=> bm!144036 (= call!144040 (Exists!996 (ite c!376433 lambda!87510 lambda!87511)))))

(declare-fun b!2368238 () Bool)

(declare-fun e!1511842 () Bool)

(assert (=> b!2368238 (= e!1511840 e!1511842)))

(declare-fun res!1005102 () Bool)

(assert (=> b!2368238 (= res!1005102 (not (is-EmptyLang!6934 r!13927)))))

(assert (=> b!2368238 (=> (not res!1005102) (not e!1511842))))

(declare-fun b!2368239 () Bool)

(declare-fun c!376435 () Bool)

(assert (=> b!2368239 (= c!376435 (is-ElementMatch!6934 r!13927))))

(declare-fun e!1511841 () Bool)

(assert (=> b!2368239 (= e!1511842 e!1511841)))

(declare-fun b!2368240 () Bool)

(declare-fun c!376436 () Bool)

(assert (=> b!2368240 (= c!376436 (is-Union!6934 r!13927))))

(declare-fun e!1511838 () Bool)

(assert (=> b!2368240 (= e!1511841 e!1511838)))

(declare-fun b!2368241 () Bool)

(assert (=> b!2368241 (= e!1511841 (= s!9460 (Cons!28008 (c!376374 r!13927) Nil!28008)))))

(declare-fun b!2368242 () Bool)

(declare-fun e!1511837 () Bool)

(assert (=> b!2368242 (= e!1511838 e!1511837)))

(declare-fun res!1005103 () Bool)

(assert (=> b!2368242 (= res!1005103 (matchRSpec!783 (regOne!14381 r!13927) s!9460))))

(assert (=> b!2368242 (=> res!1005103 e!1511837)))

(declare-fun b!2368243 () Bool)

(assert (=> b!2368243 (= e!1511840 call!144041)))

(declare-fun e!1511839 () Bool)

(assert (=> b!2368244 (= e!1511839 call!144040)))

(declare-fun b!2368245 () Bool)

(declare-fun res!1005104 () Bool)

(declare-fun e!1511843 () Bool)

(assert (=> b!2368245 (=> res!1005104 e!1511843)))

(assert (=> b!2368245 (= res!1005104 call!144041)))

(assert (=> b!2368245 (= e!1511839 e!1511843)))

(declare-fun b!2368246 () Bool)

(assert (=> b!2368246 (= e!1511837 (matchRSpec!783 (regTwo!14381 r!13927) s!9460))))

(assert (=> b!2368247 (= e!1511843 call!144040)))

(declare-fun b!2368248 () Bool)

(assert (=> b!2368248 (= e!1511838 e!1511839)))

(assert (=> b!2368248 (= c!376433 (is-Star!6934 r!13927))))

(assert (= (and d!695002 c!376434) b!2368243))

(assert (= (and d!695002 (not c!376434)) b!2368238))

(assert (= (and b!2368238 res!1005102) b!2368239))

(assert (= (and b!2368239 c!376435) b!2368241))

(assert (= (and b!2368239 (not c!376435)) b!2368240))

(assert (= (and b!2368240 c!376436) b!2368242))

(assert (= (and b!2368240 (not c!376436)) b!2368248))

(assert (= (and b!2368242 (not res!1005103)) b!2368246))

(assert (= (and b!2368248 c!376433) b!2368245))

(assert (= (and b!2368248 (not c!376433)) b!2368244))

(assert (= (and b!2368245 (not res!1005104)) b!2368247))

(assert (= (or b!2368247 b!2368244) bm!144036))

(assert (= (or b!2368243 b!2368245) bm!144035))

(assert (=> bm!144035 m!2777179))

(declare-fun m!2777225 () Bool)

(assert (=> bm!144036 m!2777225))

(declare-fun m!2777227 () Bool)

(assert (=> b!2368242 m!2777227))

(declare-fun m!2777229 () Bool)

(assert (=> b!2368246 m!2777229))

(assert (=> b!2367946 d!695002))

(declare-fun d!695006 () Bool)

(declare-fun e!1511857 () Bool)

(assert (=> d!695006 e!1511857))

(declare-fun c!376441 () Bool)

(assert (=> d!695006 (= c!376441 (is-EmptyExpr!6934 r!13927))))

(declare-fun lt!865509 () Bool)

(declare-fun e!1511853 () Bool)

(assert (=> d!695006 (= lt!865509 e!1511853)))

(declare-fun c!376442 () Bool)

(assert (=> d!695006 (= c!376442 (isEmpty!15938 s!9460))))

(assert (=> d!695006 (validRegex!2664 r!13927)))

(assert (=> d!695006 (= (matchR!3051 r!13927 s!9460) lt!865509)))

(declare-fun bm!144038 () Bool)

(declare-fun call!144043 () Bool)

(assert (=> bm!144038 (= call!144043 (isEmpty!15938 s!9460))))

(declare-fun b!2368263 () Bool)

(declare-fun e!1511855 () Bool)

(declare-fun e!1511854 () Bool)

(assert (=> b!2368263 (= e!1511855 e!1511854)))

(declare-fun res!1005119 () Bool)

(assert (=> b!2368263 (=> res!1005119 e!1511854)))

(assert (=> b!2368263 (= res!1005119 call!144043)))

(declare-fun b!2368264 () Bool)

(declare-fun res!1005117 () Bool)

(declare-fun e!1511856 () Bool)

(assert (=> b!2368264 (=> res!1005117 e!1511856)))

(assert (=> b!2368264 (= res!1005117 (not (is-ElementMatch!6934 r!13927)))))

(declare-fun e!1511851 () Bool)

(assert (=> b!2368264 (= e!1511851 e!1511856)))

(declare-fun b!2368265 () Bool)

(assert (=> b!2368265 (= e!1511853 (nullable!1996 r!13927))))

(declare-fun b!2368266 () Bool)

(assert (=> b!2368266 (= e!1511853 (matchR!3051 (derivativeStep!1654 r!13927 (head!5114 s!9460)) (tail!3384 s!9460)))))

(declare-fun b!2368267 () Bool)

(assert (=> b!2368267 (= e!1511856 e!1511855)))

(declare-fun res!1005116 () Bool)

(assert (=> b!2368267 (=> (not res!1005116) (not e!1511855))))

(assert (=> b!2368267 (= res!1005116 (not lt!865509))))

(declare-fun b!2368268 () Bool)

(declare-fun res!1005120 () Bool)

(assert (=> b!2368268 (=> res!1005120 e!1511854)))

(assert (=> b!2368268 (= res!1005120 (not (isEmpty!15938 (tail!3384 s!9460))))))

(declare-fun b!2368269 () Bool)

(assert (=> b!2368269 (= e!1511857 e!1511851)))

(declare-fun c!376440 () Bool)

(assert (=> b!2368269 (= c!376440 (is-EmptyLang!6934 r!13927))))

(declare-fun b!2368270 () Bool)

(declare-fun e!1511852 () Bool)

(assert (=> b!2368270 (= e!1511852 (= (head!5114 s!9460) (c!376374 r!13927)))))

(declare-fun b!2368271 () Bool)

(declare-fun res!1005118 () Bool)

(assert (=> b!2368271 (=> (not res!1005118) (not e!1511852))))

(assert (=> b!2368271 (= res!1005118 (not call!144043))))

(declare-fun b!2368272 () Bool)

(assert (=> b!2368272 (= e!1511857 (= lt!865509 call!144043))))

(declare-fun b!2368273 () Bool)

(assert (=> b!2368273 (= e!1511854 (not (= (head!5114 s!9460) (c!376374 r!13927))))))

(declare-fun b!2368274 () Bool)

(declare-fun res!1005115 () Bool)

(assert (=> b!2368274 (=> (not res!1005115) (not e!1511852))))

(assert (=> b!2368274 (= res!1005115 (isEmpty!15938 (tail!3384 s!9460)))))

(declare-fun b!2368275 () Bool)

(declare-fun res!1005113 () Bool)

(assert (=> b!2368275 (=> res!1005113 e!1511856)))

(assert (=> b!2368275 (= res!1005113 e!1511852)))

(declare-fun res!1005114 () Bool)

(assert (=> b!2368275 (=> (not res!1005114) (not e!1511852))))

(assert (=> b!2368275 (= res!1005114 lt!865509)))

(declare-fun b!2368276 () Bool)

(assert (=> b!2368276 (= e!1511851 (not lt!865509))))

(assert (= (and d!695006 c!376442) b!2368265))

(assert (= (and d!695006 (not c!376442)) b!2368266))

(assert (= (and d!695006 c!376441) b!2368272))

(assert (= (and d!695006 (not c!376441)) b!2368269))

(assert (= (and b!2368269 c!376440) b!2368276))

(assert (= (and b!2368269 (not c!376440)) b!2368264))

(assert (= (and b!2368264 (not res!1005117)) b!2368275))

(assert (= (and b!2368275 res!1005114) b!2368271))

(assert (= (and b!2368271 res!1005118) b!2368274))

(assert (= (and b!2368274 res!1005115) b!2368270))

(assert (= (and b!2368275 (not res!1005113)) b!2368267))

(assert (= (and b!2368267 res!1005116) b!2368263))

(assert (= (and b!2368263 (not res!1005119)) b!2368268))

(assert (= (and b!2368268 (not res!1005120)) b!2368273))

(assert (= (or b!2368272 b!2368263 b!2368271) bm!144038))

(assert (=> bm!144038 m!2777179))

(assert (=> b!2368268 m!2777181))

(assert (=> b!2368268 m!2777181))

(assert (=> b!2368268 m!2777183))

(assert (=> b!2368274 m!2777181))

(assert (=> b!2368274 m!2777181))

(assert (=> b!2368274 m!2777183))

(assert (=> b!2368273 m!2777185))

(assert (=> b!2368270 m!2777185))

(declare-fun m!2777231 () Bool)

(assert (=> b!2368265 m!2777231))

(assert (=> b!2368266 m!2777185))

(assert (=> b!2368266 m!2777185))

(declare-fun m!2777233 () Bool)

(assert (=> b!2368266 m!2777233))

(assert (=> b!2368266 m!2777181))

(assert (=> b!2368266 m!2777233))

(assert (=> b!2368266 m!2777181))

(declare-fun m!2777235 () Bool)

(assert (=> b!2368266 m!2777235))

(assert (=> d!695006 m!2777179))

(declare-fun m!2777237 () Bool)

(assert (=> d!695006 m!2777237))

(assert (=> b!2367946 d!695006))

(declare-fun d!695010 () Bool)

(assert (=> d!695010 (= (matchR!3051 r!13927 s!9460) (matchRSpec!783 r!13927 s!9460))))

(declare-fun lt!865512 () Unit!40903)

(declare-fun choose!13762 (Regex!6934 List!28106) Unit!40903)

(assert (=> d!695010 (= lt!865512 (choose!13762 r!13927 s!9460))))

(assert (=> d!695010 (validRegex!2664 r!13927)))

(assert (=> d!695010 (= (mainMatchTheorem!783 r!13927 s!9460) lt!865512)))

(declare-fun bs!461071 () Bool)

(assert (= bs!461071 d!695010))

(assert (=> bs!461071 m!2777037))

(assert (=> bs!461071 m!2777035))

(declare-fun m!2777239 () Bool)

(assert (=> bs!461071 m!2777239))

(assert (=> bs!461071 m!2777237))

(assert (=> b!2367946 d!695010))

(declare-fun bs!461072 () Bool)

(declare-fun d!695012 () Bool)

(assert (= bs!461072 (and d!695012 start!232400)))

(declare-fun lambda!87512 () Int)

(assert (=> bs!461072 (= lambda!87512 lambda!87476)))

(declare-fun bs!461073 () Bool)

(assert (= bs!461073 (and d!695012 d!694996)))

(assert (=> bs!461073 (= lambda!87512 lambda!87505)))

(declare-fun b!2368277 () Bool)

(declare-fun e!1511860 () Bool)

(declare-fun lt!865513 () Regex!6934)

(assert (=> b!2368277 (= e!1511860 (isConcat!19 lt!865513))))

(declare-fun b!2368278 () Bool)

(declare-fun e!1511863 () Regex!6934)

(declare-fun e!1511861 () Regex!6934)

(assert (=> b!2368278 (= e!1511863 e!1511861)))

(declare-fun c!376446 () Bool)

(assert (=> b!2368278 (= c!376446 (is-Cons!28009 lt!865457))))

(declare-fun b!2368279 () Bool)

(declare-fun e!1511862 () Bool)

(assert (=> b!2368279 (= e!1511862 e!1511860)))

(declare-fun c!376445 () Bool)

(assert (=> b!2368279 (= c!376445 (isEmpty!15935 (tail!3382 lt!865457)))))

(declare-fun b!2368280 () Bool)

(assert (=> b!2368280 (= e!1511861 (Concat!11570 (h!33410 lt!865457) (generalisedConcat!35 (t!208084 lt!865457))))))

(declare-fun b!2368281 () Bool)

(assert (=> b!2368281 (= e!1511860 (= lt!865513 (head!5112 lt!865457)))))

(declare-fun e!1511859 () Bool)

(assert (=> d!695012 e!1511859))

(declare-fun res!1005121 () Bool)

(assert (=> d!695012 (=> (not res!1005121) (not e!1511859))))

(assert (=> d!695012 (= res!1005121 (validRegex!2664 lt!865513))))

(assert (=> d!695012 (= lt!865513 e!1511863)))

(declare-fun c!376443 () Bool)

(declare-fun e!1511858 () Bool)

(assert (=> d!695012 (= c!376443 e!1511858)))

(declare-fun res!1005122 () Bool)

(assert (=> d!695012 (=> (not res!1005122) (not e!1511858))))

(assert (=> d!695012 (= res!1005122 (is-Cons!28009 lt!865457))))

(assert (=> d!695012 (forall!5568 lt!865457 lambda!87512)))

(assert (=> d!695012 (= (generalisedConcat!35 lt!865457) lt!865513)))

(declare-fun b!2368282 () Bool)

(assert (=> b!2368282 (= e!1511863 (h!33410 lt!865457))))

(declare-fun b!2368283 () Bool)

(assert (=> b!2368283 (= e!1511862 (isEmptyExpr!19 lt!865513))))

(declare-fun b!2368284 () Bool)

(assert (=> b!2368284 (= e!1511859 e!1511862)))

(declare-fun c!376444 () Bool)

(assert (=> b!2368284 (= c!376444 (isEmpty!15935 lt!865457))))

(declare-fun b!2368285 () Bool)

(assert (=> b!2368285 (= e!1511858 (isEmpty!15935 (t!208084 lt!865457)))))

(declare-fun b!2368286 () Bool)

(assert (=> b!2368286 (= e!1511861 EmptyExpr!6934)))

(assert (= (and d!695012 res!1005122) b!2368285))

(assert (= (and d!695012 c!376443) b!2368282))

(assert (= (and d!695012 (not c!376443)) b!2368278))

(assert (= (and b!2368278 c!376446) b!2368280))

(assert (= (and b!2368278 (not c!376446)) b!2368286))

(assert (= (and d!695012 res!1005121) b!2368284))

(assert (= (and b!2368284 c!376444) b!2368283))

(assert (= (and b!2368284 (not c!376444)) b!2368279))

(assert (= (and b!2368279 c!376445) b!2368281))

(assert (= (and b!2368279 (not c!376445)) b!2368277))

(declare-fun m!2777241 () Bool)

(assert (=> b!2368280 m!2777241))

(declare-fun m!2777243 () Bool)

(assert (=> b!2368285 m!2777243))

(declare-fun m!2777245 () Bool)

(assert (=> b!2368283 m!2777245))

(declare-fun m!2777247 () Bool)

(assert (=> b!2368279 m!2777247))

(assert (=> b!2368279 m!2777247))

(declare-fun m!2777249 () Bool)

(assert (=> b!2368279 m!2777249))

(assert (=> b!2368284 m!2777043))

(declare-fun m!2777251 () Bool)

(assert (=> d!695012 m!2777251))

(declare-fun m!2777253 () Bool)

(assert (=> d!695012 m!2777253))

(declare-fun m!2777255 () Bool)

(assert (=> b!2368281 m!2777255))

(declare-fun m!2777257 () Bool)

(assert (=> b!2368277 m!2777257))

(assert (=> b!2367956 d!695012))

(declare-fun b!2368298 () Bool)

(declare-fun e!1511866 () Bool)

(declare-fun tp!757197 () Bool)

(declare-fun tp!757195 () Bool)

(assert (=> b!2368298 (= e!1511866 (and tp!757197 tp!757195))))

(assert (=> b!2367958 (= tp!757155 e!1511866)))

(declare-fun b!2368300 () Bool)

(declare-fun tp!757196 () Bool)

(declare-fun tp!757194 () Bool)

(assert (=> b!2368300 (= e!1511866 (and tp!757196 tp!757194))))

(declare-fun b!2368297 () Bool)

(assert (=> b!2368297 (= e!1511866 tp_is_empty!11281)))

(declare-fun b!2368299 () Bool)

(declare-fun tp!757198 () Bool)

(assert (=> b!2368299 (= e!1511866 tp!757198)))

(assert (= (and b!2367958 (is-ElementMatch!6934 (regOne!14381 r!13927))) b!2368297))

(assert (= (and b!2367958 (is-Concat!11570 (regOne!14381 r!13927))) b!2368298))

(assert (= (and b!2367958 (is-Star!6934 (regOne!14381 r!13927))) b!2368299))

(assert (= (and b!2367958 (is-Union!6934 (regOne!14381 r!13927))) b!2368300))

(declare-fun b!2368302 () Bool)

(declare-fun e!1511867 () Bool)

(declare-fun tp!757202 () Bool)

(declare-fun tp!757200 () Bool)

(assert (=> b!2368302 (= e!1511867 (and tp!757202 tp!757200))))

(assert (=> b!2367958 (= tp!757152 e!1511867)))

(declare-fun b!2368304 () Bool)

(declare-fun tp!757201 () Bool)

(declare-fun tp!757199 () Bool)

(assert (=> b!2368304 (= e!1511867 (and tp!757201 tp!757199))))

(declare-fun b!2368301 () Bool)

(assert (=> b!2368301 (= e!1511867 tp_is_empty!11281)))

(declare-fun b!2368303 () Bool)

(declare-fun tp!757203 () Bool)

(assert (=> b!2368303 (= e!1511867 tp!757203)))

(assert (= (and b!2367958 (is-ElementMatch!6934 (regTwo!14381 r!13927))) b!2368301))

(assert (= (and b!2367958 (is-Concat!11570 (regTwo!14381 r!13927))) b!2368302))

(assert (= (and b!2367958 (is-Star!6934 (regTwo!14381 r!13927))) b!2368303))

(assert (= (and b!2367958 (is-Union!6934 (regTwo!14381 r!13927))) b!2368304))

(declare-fun b!2368306 () Bool)

(declare-fun e!1511868 () Bool)

(declare-fun tp!757207 () Bool)

(declare-fun tp!757205 () Bool)

(assert (=> b!2368306 (= e!1511868 (and tp!757207 tp!757205))))

(assert (=> b!2367954 (= tp!757153 e!1511868)))

(declare-fun b!2368308 () Bool)

(declare-fun tp!757206 () Bool)

(declare-fun tp!757204 () Bool)

(assert (=> b!2368308 (= e!1511868 (and tp!757206 tp!757204))))

(declare-fun b!2368305 () Bool)

(assert (=> b!2368305 (= e!1511868 tp_is_empty!11281)))

(declare-fun b!2368307 () Bool)

(declare-fun tp!757208 () Bool)

(assert (=> b!2368307 (= e!1511868 tp!757208)))

(assert (= (and b!2367954 (is-ElementMatch!6934 (h!33410 l!9164))) b!2368305))

(assert (= (and b!2367954 (is-Concat!11570 (h!33410 l!9164))) b!2368306))

(assert (= (and b!2367954 (is-Star!6934 (h!33410 l!9164))) b!2368307))

(assert (= (and b!2367954 (is-Union!6934 (h!33410 l!9164))) b!2368308))

(declare-fun b!2368313 () Bool)

(declare-fun e!1511871 () Bool)

(declare-fun tp!757213 () Bool)

(declare-fun tp!757214 () Bool)

(assert (=> b!2368313 (= e!1511871 (and tp!757213 tp!757214))))

(assert (=> b!2367954 (= tp!757158 e!1511871)))

(assert (= (and b!2367954 (is-Cons!28009 (t!208084 l!9164))) b!2368313))

(declare-fun b!2368315 () Bool)

(declare-fun e!1511872 () Bool)

(declare-fun tp!757218 () Bool)

(declare-fun tp!757216 () Bool)

(assert (=> b!2368315 (= e!1511872 (and tp!757218 tp!757216))))

(assert (=> b!2367953 (= tp!757154 e!1511872)))

(declare-fun b!2368317 () Bool)

(declare-fun tp!757217 () Bool)

(declare-fun tp!757215 () Bool)

(assert (=> b!2368317 (= e!1511872 (and tp!757217 tp!757215))))

(declare-fun b!2368314 () Bool)

(assert (=> b!2368314 (= e!1511872 tp_is_empty!11281)))

(declare-fun b!2368316 () Bool)

(declare-fun tp!757219 () Bool)

(assert (=> b!2368316 (= e!1511872 tp!757219)))

(assert (= (and b!2367953 (is-ElementMatch!6934 (reg!7263 r!13927))) b!2368314))

(assert (= (and b!2367953 (is-Concat!11570 (reg!7263 r!13927))) b!2368315))

(assert (= (and b!2367953 (is-Star!6934 (reg!7263 r!13927))) b!2368316))

(assert (= (and b!2367953 (is-Union!6934 (reg!7263 r!13927))) b!2368317))

(declare-fun b!2368322 () Bool)

(declare-fun e!1511875 () Bool)

(declare-fun tp!757222 () Bool)

(assert (=> b!2368322 (= e!1511875 (and tp_is_empty!11281 tp!757222))))

(assert (=> b!2367948 (= tp!757157 e!1511875)))

(assert (= (and b!2367948 (is-Cons!28008 (t!208083 s!9460))) b!2368322))

(declare-fun b!2368324 () Bool)

(declare-fun e!1511876 () Bool)

(declare-fun tp!757226 () Bool)

(declare-fun tp!757224 () Bool)

(assert (=> b!2368324 (= e!1511876 (and tp!757226 tp!757224))))

(assert (=> b!2367945 (= tp!757159 e!1511876)))

(declare-fun b!2368326 () Bool)

(declare-fun tp!757225 () Bool)

(declare-fun tp!757223 () Bool)

(assert (=> b!2368326 (= e!1511876 (and tp!757225 tp!757223))))

(declare-fun b!2368323 () Bool)

(assert (=> b!2368323 (= e!1511876 tp_is_empty!11281)))

(declare-fun b!2368325 () Bool)

(declare-fun tp!757227 () Bool)

(assert (=> b!2368325 (= e!1511876 tp!757227)))

(assert (= (and b!2367945 (is-ElementMatch!6934 (regOne!14380 r!13927))) b!2368323))

(assert (= (and b!2367945 (is-Concat!11570 (regOne!14380 r!13927))) b!2368324))

(assert (= (and b!2367945 (is-Star!6934 (regOne!14380 r!13927))) b!2368325))

(assert (= (and b!2367945 (is-Union!6934 (regOne!14380 r!13927))) b!2368326))

(declare-fun b!2368328 () Bool)

(declare-fun e!1511877 () Bool)

(declare-fun tp!757231 () Bool)

(declare-fun tp!757229 () Bool)

(assert (=> b!2368328 (= e!1511877 (and tp!757231 tp!757229))))

(assert (=> b!2367945 (= tp!757156 e!1511877)))

(declare-fun b!2368330 () Bool)

(declare-fun tp!757230 () Bool)

(declare-fun tp!757228 () Bool)

(assert (=> b!2368330 (= e!1511877 (and tp!757230 tp!757228))))

(declare-fun b!2368327 () Bool)

(assert (=> b!2368327 (= e!1511877 tp_is_empty!11281)))

(declare-fun b!2368329 () Bool)

(declare-fun tp!757232 () Bool)

(assert (=> b!2368329 (= e!1511877 tp!757232)))

(assert (= (and b!2367945 (is-ElementMatch!6934 (regTwo!14380 r!13927))) b!2368327))

(assert (= (and b!2367945 (is-Concat!11570 (regTwo!14380 r!13927))) b!2368328))

(assert (= (and b!2367945 (is-Star!6934 (regTwo!14380 r!13927))) b!2368329))

(assert (= (and b!2367945 (is-Union!6934 (regTwo!14380 r!13927))) b!2368330))

(declare-fun b_lambda!73901 () Bool)

(assert (= b_lambda!73899 (or start!232400 b_lambda!73901)))

(declare-fun bs!461074 () Bool)

(declare-fun d!695014 () Bool)

(assert (= bs!461074 (and d!695014 start!232400)))

(assert (=> bs!461074 (= (dynLambda!12065 lambda!87476 (h!33410 l!9164)) (validRegex!2664 (h!33410 l!9164)))))

(declare-fun m!2777259 () Bool)

(assert (=> bs!461074 m!2777259))

(assert (=> b!2368084 d!695014))

(push 1)

(assert (not b!2368313))

(assert (not bm!144035))

(assert (not b!2368308))

(assert (not b!2368306))

(assert (not b!2368168))

(assert (not d!694996))

(assert (not b!2368137))

(assert (not bm!144036))

(assert (not b!2368298))

(assert (not d!694972))

(assert (not b!2368242))

(assert (not b!2368322))

(assert (not b!2368316))

(assert (not b!2368273))

(assert (not b!2368067))

(assert (not b!2368302))

(assert (not b!2368066))

(assert (not d!695010))

(assert (not d!694988))

(assert (not b!2368330))

(assert (not b!2368281))

(assert (not b!2368326))

(assert (not b!2368144))

(assert (not d!695006))

(assert (not b!2368266))

(assert tp_is_empty!11281)

(assert (not b!2368283))

(assert (not b!2368285))

(assert (not b!2368064))

(assert (not b!2368172))

(assert (not d!694974))

(assert (not b!2368176))

(assert (not b!2368174))

(assert (not b!2368329))

(assert (not b!2368274))

(assert (not d!694970))

(assert (not b!2368065))

(assert (not b!2368277))

(assert (not b!2368284))

(assert (not b!2368170))

(assert (not b!2368328))

(assert (not b!2368175))

(assert (not b!2368324))

(assert (not b!2368061))

(assert (not bs!461074))

(assert (not b!2368307))

(assert (not b!2368139))

(assert (not b!2368265))

(assert (not b!2368268))

(assert (not b!2368069))

(assert (not b!2368136))

(assert (not b!2368141))

(assert (not b!2368085))

(assert (not b!2368325))

(assert (not b!2368317))

(assert (not bm!144038))

(assert (not b!2368246))

(assert (not b!2368300))

(assert (not b!2368315))

(assert (not b!2368279))

(assert (not b!2368145))

(assert (not b!2368304))

(assert (not d!694978))

(assert (not b_lambda!73901))

(assert (not d!694980))

(assert (not b!2368303))

(assert (not bm!144028))

(assert (not b!2368270))

(assert (not d!695012))

(assert (not d!694982))

(assert (not b!2368171))

(assert (not b!2368280))

(assert (not b!2368299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

