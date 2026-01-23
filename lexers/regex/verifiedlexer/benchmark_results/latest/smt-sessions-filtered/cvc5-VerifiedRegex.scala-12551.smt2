; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696738 () Bool)

(assert start!696738)

(declare-fun b!7145832 () Bool)

(assert (=> b!7145832 true))

(declare-fun b!7145822 () Bool)

(declare-fun res!2915556 () Bool)

(declare-fun e!4294245 () Bool)

(assert (=> b!7145822 (=> (not res!2915556) (not e!4294245))))

(declare-datatypes ((C!36694 0))(
  ( (C!36695 (val!28295 Int)) )
))
(declare-datatypes ((Regex!18210 0))(
  ( (ElementMatch!18210 (c!1332557 C!36694)) (Concat!27055 (regOne!36932 Regex!18210) (regTwo!36932 Regex!18210)) (EmptyExpr!18210) (Star!18210 (reg!18539 Regex!18210)) (EmptyLang!18210) (Union!18210 (regOne!36933 Regex!18210) (regTwo!36933 Regex!18210)) )
))
(declare-datatypes ((List!69498 0))(
  ( (Nil!69374) (Cons!69374 (h!75822 Regex!18210) (t!383515 List!69498)) )
))
(declare-datatypes ((Context!14408 0))(
  ( (Context!14409 (exprs!7704 List!69498)) )
))
(declare-datatypes ((List!69499 0))(
  ( (Nil!69375) (Cons!69375 (h!75823 Context!14408) (t!383516 List!69499)) )
))
(declare-fun zl!333 () List!69499)

(assert (=> b!7145822 (= res!2915556 (is-Cons!69375 zl!333))))

(declare-fun tp!1971439 () Bool)

(declare-fun e!4294246 () Bool)

(declare-fun b!7145823 () Bool)

(declare-fun e!4294247 () Bool)

(declare-fun inv!88590 (Context!14408) Bool)

(assert (=> b!7145823 (= e!4294246 (and (inv!88590 (h!75823 zl!333)) e!4294247 tp!1971439))))

(declare-fun b!7145824 () Bool)

(declare-fun e!4294243 () Bool)

(declare-fun tp!1971440 () Bool)

(declare-fun tp!1971441 () Bool)

(assert (=> b!7145824 (= e!4294243 (and tp!1971440 tp!1971441))))

(declare-fun b!7145825 () Bool)

(declare-fun res!2915558 () Bool)

(assert (=> b!7145825 (=> (not res!2915558) (not e!4294245))))

(declare-fun r!7278 () Regex!18210)

(declare-fun contains!20642 (List!69498 Regex!18210) Bool)

(declare-fun unfocusZipperList!2251 (List!69499) List!69498)

(assert (=> b!7145825 (= res!2915558 (contains!20642 (unfocusZipperList!2251 (t!383516 zl!333)) r!7278))))

(declare-fun b!7145827 () Bool)

(declare-fun tp!1971438 () Bool)

(declare-fun tp!1971445 () Bool)

(assert (=> b!7145827 (= e!4294243 (and tp!1971438 tp!1971445))))

(declare-fun b!7145828 () Bool)

(declare-fun tp!1971444 () Bool)

(assert (=> b!7145828 (= e!4294247 tp!1971444)))

(declare-fun b!7145829 () Bool)

(declare-fun res!2915557 () Bool)

(assert (=> b!7145829 (=> (not res!2915557) (not e!4294245))))

(declare-fun generalisedConcat!2387 (List!69498) Regex!18210)

(assert (=> b!7145829 (= res!2915557 (not (= (generalisedConcat!2387 (exprs!7704 (h!75823 zl!333))) r!7278)))))

(declare-fun b!7145830 () Bool)

(declare-fun tp!1971443 () Bool)

(assert (=> b!7145830 (= e!4294243 tp!1971443)))

(declare-fun b!7145831 () Bool)

(declare-fun tp_is_empty!46057 () Bool)

(assert (=> b!7145831 (= e!4294243 tp_is_empty!46057)))

(declare-fun c!101 () Context!14408)

(declare-fun lambda!435714 () Int)

(declare-fun forall!17044 (List!69498 Int) Bool)

(assert (=> b!7145832 (= e!4294245 (not (forall!17044 (exprs!7704 c!101) lambda!435714)))))

(declare-fun lambda!435713 () Int)

(declare-fun exists!4038 (List!69499 Int) Bool)

(assert (=> b!7145832 (exists!4038 (t!383516 zl!333) lambda!435713)))

(declare-datatypes ((Unit!163283 0))(
  ( (Unit!163284) )
))
(declare-fun lt!2568823 () Unit!163283)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!35 (List!69499 Regex!18210) Unit!163283)

(assert (=> b!7145832 (= lt!2568823 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!35 (t!383516 zl!333) r!7278))))

(declare-fun res!2915559 () Bool)

(assert (=> start!696738 (=> (not res!2915559) (not e!4294245))))

(assert (=> start!696738 (= res!2915559 (contains!20642 (unfocusZipperList!2251 zl!333) r!7278))))

(assert (=> start!696738 e!4294245))

(assert (=> start!696738 e!4294246))

(assert (=> start!696738 e!4294243))

(declare-fun e!4294244 () Bool)

(assert (=> start!696738 (and (inv!88590 c!101) e!4294244)))

(declare-fun b!7145826 () Bool)

(declare-fun tp!1971442 () Bool)

(assert (=> b!7145826 (= e!4294244 tp!1971442)))

(assert (= (and start!696738 res!2915559) b!7145822))

(assert (= (and b!7145822 res!2915556) b!7145829))

(assert (= (and b!7145829 res!2915557) b!7145825))

(assert (= (and b!7145825 res!2915558) b!7145832))

(assert (= b!7145823 b!7145828))

(assert (= (and start!696738 (is-Cons!69375 zl!333)) b!7145823))

(assert (= (and start!696738 (is-ElementMatch!18210 r!7278)) b!7145831))

(assert (= (and start!696738 (is-Concat!27055 r!7278)) b!7145827))

(assert (= (and start!696738 (is-Star!18210 r!7278)) b!7145830))

(assert (= (and start!696738 (is-Union!18210 r!7278)) b!7145824))

(assert (= start!696738 b!7145826))

(declare-fun m!7859054 () Bool)

(assert (=> start!696738 m!7859054))

(assert (=> start!696738 m!7859054))

(declare-fun m!7859056 () Bool)

(assert (=> start!696738 m!7859056))

(declare-fun m!7859058 () Bool)

(assert (=> start!696738 m!7859058))

(declare-fun m!7859060 () Bool)

(assert (=> b!7145825 m!7859060))

(assert (=> b!7145825 m!7859060))

(declare-fun m!7859062 () Bool)

(assert (=> b!7145825 m!7859062))

(declare-fun m!7859064 () Bool)

(assert (=> b!7145829 m!7859064))

(declare-fun m!7859066 () Bool)

(assert (=> b!7145823 m!7859066))

(declare-fun m!7859068 () Bool)

(assert (=> b!7145832 m!7859068))

(declare-fun m!7859070 () Bool)

(assert (=> b!7145832 m!7859070))

(declare-fun m!7859072 () Bool)

(assert (=> b!7145832 m!7859072))

(push 1)

(assert (not b!7145828))

(assert tp_is_empty!46057)

(assert (not start!696738))

(assert (not b!7145823))

(assert (not b!7145832))

(assert (not b!7145825))

(assert (not b!7145829))

(assert (not b!7145830))

(assert (not b!7145824))

(assert (not b!7145826))

(assert (not b!7145827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1889095 () Bool)

(declare-fun d!2228060 () Bool)

(assert (= bs!1889095 (and d!2228060 b!7145832)))

(declare-fun lambda!435723 () Int)

(assert (=> bs!1889095 (= lambda!435723 lambda!435714)))

(declare-fun b!7145890 () Bool)

(declare-fun e!4294276 () Bool)

(declare-fun e!4294277 () Bool)

(assert (=> b!7145890 (= e!4294276 e!4294277)))

(declare-fun c!1332572 () Bool)

(declare-fun isEmpty!40085 (List!69498) Bool)

(declare-fun tail!13996 (List!69498) List!69498)

(assert (=> b!7145890 (= c!1332572 (isEmpty!40085 (tail!13996 (exprs!7704 (h!75823 zl!333)))))))

(declare-fun b!7145891 () Bool)

(declare-fun lt!2568829 () Regex!18210)

(declare-fun head!14526 (List!69498) Regex!18210)

(assert (=> b!7145891 (= e!4294277 (= lt!2568829 (head!14526 (exprs!7704 (h!75823 zl!333)))))))

(declare-fun b!7145892 () Bool)

(declare-fun e!4294280 () Regex!18210)

(declare-fun e!4294275 () Regex!18210)

(assert (=> b!7145892 (= e!4294280 e!4294275)))

(declare-fun c!1332571 () Bool)

(assert (=> b!7145892 (= c!1332571 (is-Cons!69374 (exprs!7704 (h!75823 zl!333))))))

(declare-fun b!7145894 () Bool)

(assert (=> b!7145894 (= e!4294275 (Concat!27055 (h!75822 (exprs!7704 (h!75823 zl!333))) (generalisedConcat!2387 (t!383515 (exprs!7704 (h!75823 zl!333))))))))

(declare-fun b!7145895 () Bool)

(declare-fun isEmptyExpr!2046 (Regex!18210) Bool)

(assert (=> b!7145895 (= e!4294276 (isEmptyExpr!2046 lt!2568829))))

(declare-fun b!7145896 () Bool)

(assert (=> b!7145896 (= e!4294280 (h!75822 (exprs!7704 (h!75823 zl!333))))))

(declare-fun b!7145897 () Bool)

(declare-fun isConcat!1569 (Regex!18210) Bool)

(assert (=> b!7145897 (= e!4294277 (isConcat!1569 lt!2568829))))

(declare-fun b!7145898 () Bool)

(declare-fun e!4294278 () Bool)

(assert (=> b!7145898 (= e!4294278 e!4294276)))

(declare-fun c!1332569 () Bool)

(assert (=> b!7145898 (= c!1332569 (isEmpty!40085 (exprs!7704 (h!75823 zl!333))))))

(declare-fun b!7145899 () Bool)

(assert (=> b!7145899 (= e!4294275 EmptyExpr!18210)))

(assert (=> d!2228060 e!4294278))

(declare-fun res!2915577 () Bool)

(assert (=> d!2228060 (=> (not res!2915577) (not e!4294278))))

(declare-fun validRegex!9374 (Regex!18210) Bool)

(assert (=> d!2228060 (= res!2915577 (validRegex!9374 lt!2568829))))

(assert (=> d!2228060 (= lt!2568829 e!4294280)))

(declare-fun c!1332570 () Bool)

(declare-fun e!4294279 () Bool)

(assert (=> d!2228060 (= c!1332570 e!4294279)))

(declare-fun res!2915576 () Bool)

(assert (=> d!2228060 (=> (not res!2915576) (not e!4294279))))

(assert (=> d!2228060 (= res!2915576 (is-Cons!69374 (exprs!7704 (h!75823 zl!333))))))

(assert (=> d!2228060 (forall!17044 (exprs!7704 (h!75823 zl!333)) lambda!435723)))

(assert (=> d!2228060 (= (generalisedConcat!2387 (exprs!7704 (h!75823 zl!333))) lt!2568829)))

(declare-fun b!7145893 () Bool)

(assert (=> b!7145893 (= e!4294279 (isEmpty!40085 (t!383515 (exprs!7704 (h!75823 zl!333)))))))

(assert (= (and d!2228060 res!2915576) b!7145893))

(assert (= (and d!2228060 c!1332570) b!7145896))

(assert (= (and d!2228060 (not c!1332570)) b!7145892))

(assert (= (and b!7145892 c!1332571) b!7145894))

(assert (= (and b!7145892 (not c!1332571)) b!7145899))

(assert (= (and d!2228060 res!2915577) b!7145898))

(assert (= (and b!7145898 c!1332569) b!7145895))

(assert (= (and b!7145898 (not c!1332569)) b!7145890))

(assert (= (and b!7145890 c!1332572) b!7145891))

(assert (= (and b!7145890 (not c!1332572)) b!7145897))

(declare-fun m!7859094 () Bool)

(assert (=> b!7145891 m!7859094))

(declare-fun m!7859096 () Bool)

(assert (=> b!7145895 m!7859096))

(declare-fun m!7859098 () Bool)

(assert (=> b!7145898 m!7859098))

(declare-fun m!7859100 () Bool)

(assert (=> b!7145890 m!7859100))

(assert (=> b!7145890 m!7859100))

(declare-fun m!7859102 () Bool)

(assert (=> b!7145890 m!7859102))

(declare-fun m!7859104 () Bool)

(assert (=> d!2228060 m!7859104))

(declare-fun m!7859106 () Bool)

(assert (=> d!2228060 m!7859106))

(declare-fun m!7859108 () Bool)

(assert (=> b!7145897 m!7859108))

(declare-fun m!7859110 () Bool)

(assert (=> b!7145893 m!7859110))

(declare-fun m!7859112 () Bool)

(assert (=> b!7145894 m!7859112))

(assert (=> b!7145829 d!2228060))

(declare-fun d!2228064 () Bool)

(declare-fun lt!2568832 () Bool)

(declare-fun content!14232 (List!69498) (Set Regex!18210))

(assert (=> d!2228064 (= lt!2568832 (set.member r!7278 (content!14232 (unfocusZipperList!2251 zl!333))))))

(declare-fun e!4294286 () Bool)

(assert (=> d!2228064 (= lt!2568832 e!4294286)))

(declare-fun res!2915582 () Bool)

(assert (=> d!2228064 (=> (not res!2915582) (not e!4294286))))

(assert (=> d!2228064 (= res!2915582 (is-Cons!69374 (unfocusZipperList!2251 zl!333)))))

(assert (=> d!2228064 (= (contains!20642 (unfocusZipperList!2251 zl!333) r!7278) lt!2568832)))

(declare-fun b!7145904 () Bool)

(declare-fun e!4294285 () Bool)

(assert (=> b!7145904 (= e!4294286 e!4294285)))

(declare-fun res!2915583 () Bool)

(assert (=> b!7145904 (=> res!2915583 e!4294285)))

(assert (=> b!7145904 (= res!2915583 (= (h!75822 (unfocusZipperList!2251 zl!333)) r!7278))))

(declare-fun b!7145905 () Bool)

(assert (=> b!7145905 (= e!4294285 (contains!20642 (t!383515 (unfocusZipperList!2251 zl!333)) r!7278))))

(assert (= (and d!2228064 res!2915582) b!7145904))

(assert (= (and b!7145904 (not res!2915583)) b!7145905))

(assert (=> d!2228064 m!7859054))

(declare-fun m!7859116 () Bool)

(assert (=> d!2228064 m!7859116))

(declare-fun m!7859118 () Bool)

(assert (=> d!2228064 m!7859118))

(declare-fun m!7859120 () Bool)

(assert (=> b!7145905 m!7859120))

(assert (=> start!696738 d!2228064))

(declare-fun bs!1889098 () Bool)

(declare-fun d!2228068 () Bool)

(assert (= bs!1889098 (and d!2228068 b!7145832)))

(declare-fun lambda!435729 () Int)

(assert (=> bs!1889098 (= lambda!435729 lambda!435714)))

(declare-fun bs!1889099 () Bool)

(assert (= bs!1889099 (and d!2228068 d!2228060)))

(assert (=> bs!1889099 (= lambda!435729 lambda!435723)))

(declare-fun lt!2568838 () List!69498)

(assert (=> d!2228068 (forall!17044 lt!2568838 lambda!435729)))

(declare-fun e!4294295 () List!69498)

(assert (=> d!2228068 (= lt!2568838 e!4294295)))

(declare-fun c!1332575 () Bool)

(assert (=> d!2228068 (= c!1332575 (is-Cons!69375 zl!333))))

(assert (=> d!2228068 (= (unfocusZipperList!2251 zl!333) lt!2568838)))

(declare-fun b!7145916 () Bool)

(assert (=> b!7145916 (= e!4294295 (Cons!69374 (generalisedConcat!2387 (exprs!7704 (h!75823 zl!333))) (unfocusZipperList!2251 (t!383516 zl!333))))))

(declare-fun b!7145917 () Bool)

(assert (=> b!7145917 (= e!4294295 Nil!69374)))

(assert (= (and d!2228068 c!1332575) b!7145916))

(assert (= (and d!2228068 (not c!1332575)) b!7145917))

(declare-fun m!7859128 () Bool)

(assert (=> d!2228068 m!7859128))

(assert (=> b!7145916 m!7859064))

(assert (=> b!7145916 m!7859060))

(assert (=> start!696738 d!2228068))

(declare-fun bs!1889100 () Bool)

(declare-fun d!2228072 () Bool)

(assert (= bs!1889100 (and d!2228072 b!7145832)))

(declare-fun lambda!435732 () Int)

(assert (=> bs!1889100 (= lambda!435732 lambda!435714)))

(declare-fun bs!1889101 () Bool)

(assert (= bs!1889101 (and d!2228072 d!2228060)))

(assert (=> bs!1889101 (= lambda!435732 lambda!435723)))

(declare-fun bs!1889102 () Bool)

(assert (= bs!1889102 (and d!2228072 d!2228068)))

(assert (=> bs!1889102 (= lambda!435732 lambda!435729)))

(assert (=> d!2228072 (= (inv!88590 c!101) (forall!17044 (exprs!7704 c!101) lambda!435732))))

(declare-fun bs!1889103 () Bool)

(assert (= bs!1889103 d!2228072))

(declare-fun m!7859130 () Bool)

(assert (=> bs!1889103 m!7859130))

(assert (=> start!696738 d!2228072))

(declare-fun bs!1889104 () Bool)

(declare-fun d!2228074 () Bool)

(assert (= bs!1889104 (and d!2228074 b!7145832)))

(declare-fun lambda!435733 () Int)

(assert (=> bs!1889104 (= lambda!435733 lambda!435714)))

(declare-fun bs!1889105 () Bool)

(assert (= bs!1889105 (and d!2228074 d!2228060)))

(assert (=> bs!1889105 (= lambda!435733 lambda!435723)))

(declare-fun bs!1889106 () Bool)

(assert (= bs!1889106 (and d!2228074 d!2228068)))

(assert (=> bs!1889106 (= lambda!435733 lambda!435729)))

(declare-fun bs!1889107 () Bool)

(assert (= bs!1889107 (and d!2228074 d!2228072)))

(assert (=> bs!1889107 (= lambda!435733 lambda!435732)))

(assert (=> d!2228074 (= (inv!88590 (h!75823 zl!333)) (forall!17044 (exprs!7704 (h!75823 zl!333)) lambda!435733))))

(declare-fun bs!1889108 () Bool)

(assert (= bs!1889108 d!2228074))

(declare-fun m!7859132 () Bool)

(assert (=> bs!1889108 m!7859132))

(assert (=> b!7145823 d!2228074))

(declare-fun d!2228076 () Bool)

(declare-fun res!2915594 () Bool)

(declare-fun e!4294302 () Bool)

(assert (=> d!2228076 (=> res!2915594 e!4294302)))

(assert (=> d!2228076 (= res!2915594 (is-Nil!69374 (exprs!7704 c!101)))))

(assert (=> d!2228076 (= (forall!17044 (exprs!7704 c!101) lambda!435714) e!4294302)))

(declare-fun b!7145926 () Bool)

(declare-fun e!4294303 () Bool)

(assert (=> b!7145926 (= e!4294302 e!4294303)))

(declare-fun res!2915595 () Bool)

(assert (=> b!7145926 (=> (not res!2915595) (not e!4294303))))

(declare-fun dynLambda!28253 (Int Regex!18210) Bool)

(assert (=> b!7145926 (= res!2915595 (dynLambda!28253 lambda!435714 (h!75822 (exprs!7704 c!101))))))

(declare-fun b!7145927 () Bool)

(assert (=> b!7145927 (= e!4294303 (forall!17044 (t!383515 (exprs!7704 c!101)) lambda!435714))))

(assert (= (and d!2228076 (not res!2915594)) b!7145926))

(assert (= (and b!7145926 res!2915595) b!7145927))

(declare-fun b_lambda!272741 () Bool)

(assert (=> (not b_lambda!272741) (not b!7145926)))

(declare-fun m!7859134 () Bool)

(assert (=> b!7145926 m!7859134))

(declare-fun m!7859136 () Bool)

(assert (=> b!7145927 m!7859136))

(assert (=> b!7145832 d!2228076))

(declare-fun bs!1889109 () Bool)

(declare-fun d!2228078 () Bool)

(assert (= bs!1889109 (and d!2228078 b!7145832)))

(declare-fun lambda!435738 () Int)

(assert (=> bs!1889109 (not (= lambda!435738 lambda!435713))))

(assert (=> d!2228078 true))

(declare-fun order!28607 () Int)

(declare-fun dynLambda!28254 (Int Int) Int)

(assert (=> d!2228078 (< (dynLambda!28254 order!28607 lambda!435713) (dynLambda!28254 order!28607 lambda!435738))))

(declare-fun forall!17046 (List!69499 Int) Bool)

(assert (=> d!2228078 (= (exists!4038 (t!383516 zl!333) lambda!435713) (not (forall!17046 (t!383516 zl!333) lambda!435738)))))

(declare-fun bs!1889110 () Bool)

(assert (= bs!1889110 d!2228078))

(declare-fun m!7859138 () Bool)

(assert (=> bs!1889110 m!7859138))

(assert (=> b!7145832 d!2228078))

(declare-fun bs!1889117 () Bool)

(declare-fun d!2228080 () Bool)

(assert (= bs!1889117 (and d!2228080 b!7145832)))

(declare-fun lambda!435743 () Int)

(assert (=> bs!1889117 (= lambda!435743 lambda!435713)))

(declare-fun bs!1889118 () Bool)

(assert (= bs!1889118 (and d!2228080 d!2228078)))

(assert (=> bs!1889118 (not (= lambda!435743 lambda!435738))))

(assert (=> d!2228080 true))

(assert (=> d!2228080 (exists!4038 (t!383516 zl!333) lambda!435743)))

(declare-fun lt!2568844 () Unit!163283)

(declare-fun choose!55299 (List!69499 Regex!18210) Unit!163283)

(assert (=> d!2228080 (= lt!2568844 (choose!55299 (t!383516 zl!333) r!7278))))

(assert (=> d!2228080 (contains!20642 (unfocusZipperList!2251 (t!383516 zl!333)) r!7278)))

(assert (=> d!2228080 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!35 (t!383516 zl!333) r!7278) lt!2568844)))

(declare-fun bs!1889119 () Bool)

(assert (= bs!1889119 d!2228080))

(declare-fun m!7859144 () Bool)

(assert (=> bs!1889119 m!7859144))

(declare-fun m!7859146 () Bool)

(assert (=> bs!1889119 m!7859146))

(assert (=> bs!1889119 m!7859060))

(assert (=> bs!1889119 m!7859060))

(assert (=> bs!1889119 m!7859062))

(assert (=> b!7145832 d!2228080))

(declare-fun d!2228086 () Bool)

(declare-fun lt!2568845 () Bool)

(assert (=> d!2228086 (= lt!2568845 (set.member r!7278 (content!14232 (unfocusZipperList!2251 (t!383516 zl!333)))))))

(declare-fun e!4294310 () Bool)

(assert (=> d!2228086 (= lt!2568845 e!4294310)))

(declare-fun res!2915600 () Bool)

(assert (=> d!2228086 (=> (not res!2915600) (not e!4294310))))

(assert (=> d!2228086 (= res!2915600 (is-Cons!69374 (unfocusZipperList!2251 (t!383516 zl!333))))))

(assert (=> d!2228086 (= (contains!20642 (unfocusZipperList!2251 (t!383516 zl!333)) r!7278) lt!2568845)))

(declare-fun b!7145936 () Bool)

(declare-fun e!4294309 () Bool)

(assert (=> b!7145936 (= e!4294310 e!4294309)))

(declare-fun res!2915601 () Bool)

(assert (=> b!7145936 (=> res!2915601 e!4294309)))

(assert (=> b!7145936 (= res!2915601 (= (h!75822 (unfocusZipperList!2251 (t!383516 zl!333))) r!7278))))

(declare-fun b!7145937 () Bool)

(assert (=> b!7145937 (= e!4294309 (contains!20642 (t!383515 (unfocusZipperList!2251 (t!383516 zl!333))) r!7278))))

(assert (= (and d!2228086 res!2915600) b!7145936))

(assert (= (and b!7145936 (not res!2915601)) b!7145937))

(assert (=> d!2228086 m!7859060))

(declare-fun m!7859148 () Bool)

(assert (=> d!2228086 m!7859148))

(declare-fun m!7859150 () Bool)

(assert (=> d!2228086 m!7859150))

(declare-fun m!7859152 () Bool)

(assert (=> b!7145937 m!7859152))

(assert (=> b!7145825 d!2228086))

(declare-fun bs!1889120 () Bool)

(declare-fun d!2228088 () Bool)

(assert (= bs!1889120 (and d!2228088 d!2228072)))

(declare-fun lambda!435744 () Int)

(assert (=> bs!1889120 (= lambda!435744 lambda!435732)))

(declare-fun bs!1889121 () Bool)

(assert (= bs!1889121 (and d!2228088 d!2228060)))

(assert (=> bs!1889121 (= lambda!435744 lambda!435723)))

(declare-fun bs!1889122 () Bool)

(assert (= bs!1889122 (and d!2228088 d!2228074)))

(assert (=> bs!1889122 (= lambda!435744 lambda!435733)))

(declare-fun bs!1889123 () Bool)

(assert (= bs!1889123 (and d!2228088 d!2228068)))

(assert (=> bs!1889123 (= lambda!435744 lambda!435729)))

(declare-fun bs!1889124 () Bool)

(assert (= bs!1889124 (and d!2228088 b!7145832)))

(assert (=> bs!1889124 (= lambda!435744 lambda!435714)))

(declare-fun lt!2568846 () List!69498)

(assert (=> d!2228088 (forall!17044 lt!2568846 lambda!435744)))

(declare-fun e!4294311 () List!69498)

(assert (=> d!2228088 (= lt!2568846 e!4294311)))

(declare-fun c!1332581 () Bool)

(assert (=> d!2228088 (= c!1332581 (is-Cons!69375 (t!383516 zl!333)))))

(assert (=> d!2228088 (= (unfocusZipperList!2251 (t!383516 zl!333)) lt!2568846)))

(declare-fun b!7145938 () Bool)

(assert (=> b!7145938 (= e!4294311 (Cons!69374 (generalisedConcat!2387 (exprs!7704 (h!75823 (t!383516 zl!333)))) (unfocusZipperList!2251 (t!383516 (t!383516 zl!333)))))))

(declare-fun b!7145939 () Bool)

(assert (=> b!7145939 (= e!4294311 Nil!69374)))

(assert (= (and d!2228088 c!1332581) b!7145938))

(assert (= (and d!2228088 (not c!1332581)) b!7145939))

(declare-fun m!7859154 () Bool)

(assert (=> d!2228088 m!7859154))

(declare-fun m!7859156 () Bool)

(assert (=> b!7145938 m!7859156))

(declare-fun m!7859158 () Bool)

(assert (=> b!7145938 m!7859158))

(assert (=> b!7145825 d!2228088))

(declare-fun b!7145953 () Bool)

(declare-fun e!4294316 () Bool)

(declare-fun tp!1971480 () Bool)

(declare-fun tp!1971481 () Bool)

(assert (=> b!7145953 (= e!4294316 (and tp!1971480 tp!1971481))))

(declare-fun b!7145955 () Bool)

(declare-fun tp!1971484 () Bool)

(declare-fun tp!1971483 () Bool)

(assert (=> b!7145955 (= e!4294316 (and tp!1971484 tp!1971483))))

(declare-fun b!7145954 () Bool)

(declare-fun tp!1971482 () Bool)

(assert (=> b!7145954 (= e!4294316 tp!1971482)))

(assert (=> b!7145824 (= tp!1971440 e!4294316)))

(declare-fun b!7145952 () Bool)

(assert (=> b!7145952 (= e!4294316 tp_is_empty!46057)))

(assert (= (and b!7145824 (is-ElementMatch!18210 (regOne!36933 r!7278))) b!7145952))

(assert (= (and b!7145824 (is-Concat!27055 (regOne!36933 r!7278))) b!7145953))

(assert (= (and b!7145824 (is-Star!18210 (regOne!36933 r!7278))) b!7145954))

(assert (= (and b!7145824 (is-Union!18210 (regOne!36933 r!7278))) b!7145955))

(declare-fun b!7145957 () Bool)

(declare-fun e!4294317 () Bool)

(declare-fun tp!1971485 () Bool)

(declare-fun tp!1971486 () Bool)

(assert (=> b!7145957 (= e!4294317 (and tp!1971485 tp!1971486))))

(declare-fun b!7145959 () Bool)

(declare-fun tp!1971489 () Bool)

(declare-fun tp!1971488 () Bool)

(assert (=> b!7145959 (= e!4294317 (and tp!1971489 tp!1971488))))

(declare-fun b!7145958 () Bool)

(declare-fun tp!1971487 () Bool)

(assert (=> b!7145958 (= e!4294317 tp!1971487)))

(assert (=> b!7145824 (= tp!1971441 e!4294317)))

(declare-fun b!7145956 () Bool)

(assert (=> b!7145956 (= e!4294317 tp_is_empty!46057)))

(assert (= (and b!7145824 (is-ElementMatch!18210 (regTwo!36933 r!7278))) b!7145956))

(assert (= (and b!7145824 (is-Concat!27055 (regTwo!36933 r!7278))) b!7145957))

(assert (= (and b!7145824 (is-Star!18210 (regTwo!36933 r!7278))) b!7145958))

(assert (= (and b!7145824 (is-Union!18210 (regTwo!36933 r!7278))) b!7145959))

(declare-fun b!7145964 () Bool)

(declare-fun e!4294320 () Bool)

(declare-fun tp!1971494 () Bool)

(declare-fun tp!1971495 () Bool)

(assert (=> b!7145964 (= e!4294320 (and tp!1971494 tp!1971495))))

(assert (=> b!7145828 (= tp!1971444 e!4294320)))

(assert (= (and b!7145828 (is-Cons!69374 (exprs!7704 (h!75823 zl!333)))) b!7145964))

(declare-fun b!7145972 () Bool)

(declare-fun e!4294326 () Bool)

(declare-fun tp!1971500 () Bool)

(assert (=> b!7145972 (= e!4294326 tp!1971500)))

(declare-fun tp!1971501 () Bool)

(declare-fun b!7145971 () Bool)

(declare-fun e!4294325 () Bool)

(assert (=> b!7145971 (= e!4294325 (and (inv!88590 (h!75823 (t!383516 zl!333))) e!4294326 tp!1971501))))

(assert (=> b!7145823 (= tp!1971439 e!4294325)))

(assert (= b!7145971 b!7145972))

(assert (= (and b!7145823 (is-Cons!69375 (t!383516 zl!333))) b!7145971))

(declare-fun m!7859164 () Bool)

(assert (=> b!7145971 m!7859164))

(declare-fun b!7145973 () Bool)

(declare-fun e!4294327 () Bool)

(declare-fun tp!1971502 () Bool)

(declare-fun tp!1971503 () Bool)

(assert (=> b!7145973 (= e!4294327 (and tp!1971502 tp!1971503))))

(assert (=> b!7145826 (= tp!1971442 e!4294327)))

(assert (= (and b!7145826 (is-Cons!69374 (exprs!7704 c!101))) b!7145973))

(declare-fun b!7145975 () Bool)

(declare-fun e!4294328 () Bool)

(declare-fun tp!1971504 () Bool)

(declare-fun tp!1971505 () Bool)

(assert (=> b!7145975 (= e!4294328 (and tp!1971504 tp!1971505))))

(declare-fun b!7145977 () Bool)

(declare-fun tp!1971508 () Bool)

(declare-fun tp!1971507 () Bool)

(assert (=> b!7145977 (= e!4294328 (and tp!1971508 tp!1971507))))

(declare-fun b!7145976 () Bool)

(declare-fun tp!1971506 () Bool)

(assert (=> b!7145976 (= e!4294328 tp!1971506)))

(assert (=> b!7145827 (= tp!1971438 e!4294328)))

(declare-fun b!7145974 () Bool)

(assert (=> b!7145974 (= e!4294328 tp_is_empty!46057)))

(assert (= (and b!7145827 (is-ElementMatch!18210 (regOne!36932 r!7278))) b!7145974))

(assert (= (and b!7145827 (is-Concat!27055 (regOne!36932 r!7278))) b!7145975))

(assert (= (and b!7145827 (is-Star!18210 (regOne!36932 r!7278))) b!7145976))

(assert (= (and b!7145827 (is-Union!18210 (regOne!36932 r!7278))) b!7145977))

(declare-fun b!7145981 () Bool)

(declare-fun e!4294329 () Bool)

(declare-fun tp!1971509 () Bool)

(declare-fun tp!1971510 () Bool)

(assert (=> b!7145981 (= e!4294329 (and tp!1971509 tp!1971510))))

(declare-fun b!7145983 () Bool)

(declare-fun tp!1971513 () Bool)

(declare-fun tp!1971512 () Bool)

(assert (=> b!7145983 (= e!4294329 (and tp!1971513 tp!1971512))))

(declare-fun b!7145982 () Bool)

(declare-fun tp!1971511 () Bool)

(assert (=> b!7145982 (= e!4294329 tp!1971511)))

(assert (=> b!7145827 (= tp!1971445 e!4294329)))

(declare-fun b!7145980 () Bool)

(assert (=> b!7145980 (= e!4294329 tp_is_empty!46057)))

(assert (= (and b!7145827 (is-ElementMatch!18210 (regTwo!36932 r!7278))) b!7145980))

(assert (= (and b!7145827 (is-Concat!27055 (regTwo!36932 r!7278))) b!7145981))

(assert (= (and b!7145827 (is-Star!18210 (regTwo!36932 r!7278))) b!7145982))

(assert (= (and b!7145827 (is-Union!18210 (regTwo!36932 r!7278))) b!7145983))

(declare-fun b!7145985 () Bool)

(declare-fun e!4294330 () Bool)

(declare-fun tp!1971514 () Bool)

(declare-fun tp!1971515 () Bool)

(assert (=> b!7145985 (= e!4294330 (and tp!1971514 tp!1971515))))

(declare-fun b!7145987 () Bool)

(declare-fun tp!1971518 () Bool)

(declare-fun tp!1971517 () Bool)

(assert (=> b!7145987 (= e!4294330 (and tp!1971518 tp!1971517))))

(declare-fun b!7145986 () Bool)

(declare-fun tp!1971516 () Bool)

(assert (=> b!7145986 (= e!4294330 tp!1971516)))

(assert (=> b!7145830 (= tp!1971443 e!4294330)))

(declare-fun b!7145984 () Bool)

(assert (=> b!7145984 (= e!4294330 tp_is_empty!46057)))

(assert (= (and b!7145830 (is-ElementMatch!18210 (reg!18539 r!7278))) b!7145984))

(assert (= (and b!7145830 (is-Concat!27055 (reg!18539 r!7278))) b!7145985))

(assert (= (and b!7145830 (is-Star!18210 (reg!18539 r!7278))) b!7145986))

(assert (= (and b!7145830 (is-Union!18210 (reg!18539 r!7278))) b!7145987))

(declare-fun b_lambda!272745 () Bool)

(assert (= b_lambda!272741 (or b!7145832 b_lambda!272745)))

(declare-fun bs!1889126 () Bool)

(declare-fun d!2228092 () Bool)

(assert (= bs!1889126 (and d!2228092 b!7145832)))

(assert (=> bs!1889126 (= (dynLambda!28253 lambda!435714 (h!75822 (exprs!7704 c!101))) (validRegex!9374 (h!75822 (exprs!7704 c!101))))))

(declare-fun m!7859166 () Bool)

(assert (=> bs!1889126 m!7859166))

(assert (=> b!7145926 d!2228092))

(push 1)

(assert (not b!7145983))

(assert (not b!7145954))

(assert (not d!2228064))

(assert (not d!2228072))

(assert (not b!7145916))

(assert (not b_lambda!272745))

(assert (not b!7145905))

(assert (not b!7145985))

(assert (not b!7145986))

(assert (not b!7145893))

(assert (not b!7145975))

(assert (not d!2228068))

(assert (not b!7145957))

(assert (not b!7145982))

(assert (not b!7145895))

(assert tp_is_empty!46057)

(assert (not d!2228086))

(assert (not b!7145953))

(assert (not b!7145891))

(assert (not b!7145981))

(assert (not b!7145977))

(assert (not b!7145971))

(assert (not b!7145976))

(assert (not b!7145958))

(assert (not d!2228078))

(assert (not b!7145927))

(assert (not bs!1889126))

(assert (not b!7145959))

(assert (not b!7145894))

(assert (not b!7145964))

(assert (not d!2228060))

(assert (not b!7145898))

(assert (not b!7145987))

(assert (not b!7145938))

(assert (not b!7145955))

(assert (not b!7145973))

(assert (not b!7145897))

(assert (not d!2228088))

(assert (not b!7145972))

(assert (not b!7145890))

(assert (not b!7145937))

(assert (not d!2228080))

(assert (not d!2228074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

