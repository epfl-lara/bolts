; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697126 () Bool)

(assert start!697126)

(declare-fun bs!1889466 () Bool)

(declare-fun b!7150036 () Bool)

(assert (= bs!1889466 (and b!7150036 start!697126)))

(declare-fun lambda!436078 () Int)

(declare-fun lambda!436077 () Int)

(assert (=> bs!1889466 (not (= lambda!436078 lambda!436077))))

(declare-fun b!7150030 () Bool)

(declare-fun res!2916551 () Bool)

(declare-fun e!4296223 () Bool)

(assert (=> b!7150030 (=> (not res!2916551) (not e!4296223))))

(declare-datatypes ((C!36754 0))(
  ( (C!36755 (val!28325 Int)) )
))
(declare-datatypes ((Regex!18240 0))(
  ( (ElementMatch!18240 (c!1333071 C!36754)) (Concat!27085 (regOne!36992 Regex!18240) (regTwo!36992 Regex!18240)) (EmptyExpr!18240) (Star!18240 (reg!18569 Regex!18240)) (EmptyLang!18240) (Union!18240 (regOne!36993 Regex!18240) (regTwo!36993 Regex!18240)) )
))
(declare-fun r!13911 () Regex!18240)

(declare-datatypes ((List!69544 0))(
  ( (Nil!69420) (Cons!69420 (h!75868 Regex!18240) (t!383561 List!69544)) )
))
(declare-fun l!9154 () List!69544)

(declare-fun generalisedConcat!2415 (List!69544) Regex!18240)

(assert (=> b!7150030 (= res!2916551 (= r!13911 (generalisedConcat!2415 l!9154)))))

(declare-fun b!7150031 () Bool)

(declare-fun res!2916552 () Bool)

(assert (=> b!7150031 (=> (not res!2916552) (not e!4296223))))

(assert (=> b!7150031 (= res!2916552 (and (is-Cons!69420 l!9154) (is-Concat!27085 r!13911)))))

(declare-fun b!7150032 () Bool)

(declare-fun e!4296226 () Bool)

(declare-fun tp!1974171 () Bool)

(declare-fun tp!1974168 () Bool)

(assert (=> b!7150032 (= e!4296226 (and tp!1974171 tp!1974168))))

(declare-fun b!7150033 () Bool)

(declare-fun tp!1974170 () Bool)

(declare-fun tp!1974167 () Bool)

(assert (=> b!7150033 (= e!4296226 (and tp!1974170 tp!1974167))))

(declare-fun b!7150035 () Bool)

(declare-fun res!2916550 () Bool)

(assert (=> b!7150035 (=> (not res!2916550) (not e!4296223))))

(assert (=> b!7150035 (= res!2916550 (= (regTwo!36992 r!13911) (generalisedConcat!2415 (t!383561 l!9154))))))

(declare-fun nullable!7729 (Regex!18240) Bool)

(declare-fun forall!17080 (List!69544 Int) Bool)

(assert (=> b!7150036 (= e!4296223 (not (= (nullable!7729 r!13911) (forall!17080 l!9154 lambda!436078))))))

(assert (=> b!7150036 (= (nullable!7729 (regTwo!36992 r!13911)) (forall!17080 (t!383561 l!9154) lambda!436078))))

(declare-datatypes ((Unit!163291 0))(
  ( (Unit!163292) )
))
(declare-fun lt!2569069 () Unit!163291)

(declare-fun nullableGenConcatSpec!27 (Regex!18240 List!69544) Unit!163291)

(assert (=> b!7150036 (= lt!2569069 (nullableGenConcatSpec!27 (regTwo!36992 r!13911) (t!383561 l!9154)))))

(declare-fun b!7150037 () Bool)

(declare-fun res!2916548 () Bool)

(assert (=> b!7150037 (=> (not res!2916548) (not e!4296223))))

(declare-fun e!4296224 () Bool)

(assert (=> b!7150037 (= res!2916548 e!4296224)))

(declare-fun res!2916546 () Bool)

(assert (=> b!7150037 (=> res!2916546 e!4296224)))

(assert (=> b!7150037 (= res!2916546 (not (is-Cons!69420 l!9154)))))

(declare-fun b!7150034 () Bool)

(declare-fun tp!1974169 () Bool)

(assert (=> b!7150034 (= e!4296226 tp!1974169)))

(declare-fun res!2916549 () Bool)

(assert (=> start!697126 (=> (not res!2916549) (not e!4296223))))

(assert (=> start!697126 (= res!2916549 (forall!17080 l!9154 lambda!436077))))

(assert (=> start!697126 e!4296223))

(declare-fun e!4296225 () Bool)

(assert (=> start!697126 e!4296225))

(assert (=> start!697126 e!4296226))

(declare-fun b!7150038 () Bool)

(declare-fun tp!1974166 () Bool)

(declare-fun tp!1974172 () Bool)

(assert (=> b!7150038 (= e!4296225 (and tp!1974166 tp!1974172))))

(declare-fun b!7150039 () Bool)

(declare-fun res!2916547 () Bool)

(assert (=> b!7150039 (=> (not res!2916547) (not e!4296223))))

(assert (=> b!7150039 (= res!2916547 (forall!17080 (t!383561 l!9154) lambda!436077))))

(declare-fun b!7150040 () Bool)

(declare-fun isEmpty!40110 (List!69544) Bool)

(assert (=> b!7150040 (= e!4296224 (not (isEmpty!40110 (t!383561 l!9154))))))

(declare-fun b!7150041 () Bool)

(declare-fun tp_is_empty!46117 () Bool)

(assert (=> b!7150041 (= e!4296226 tp_is_empty!46117)))

(assert (= (and start!697126 res!2916549) b!7150030))

(assert (= (and b!7150030 res!2916551) b!7150037))

(assert (= (and b!7150037 (not res!2916546)) b!7150040))

(assert (= (and b!7150037 res!2916548) b!7150031))

(assert (= (and b!7150031 res!2916552) b!7150039))

(assert (= (and b!7150039 res!2916547) b!7150035))

(assert (= (and b!7150035 res!2916550) b!7150036))

(assert (= (and start!697126 (is-Cons!69420 l!9154)) b!7150038))

(assert (= (and start!697126 (is-ElementMatch!18240 r!13911)) b!7150041))

(assert (= (and start!697126 (is-Concat!27085 r!13911)) b!7150032))

(assert (= (and start!697126 (is-Star!18240 r!13911)) b!7150034))

(assert (= (and start!697126 (is-Union!18240 r!13911)) b!7150033))

(declare-fun m!7860844 () Bool)

(assert (=> b!7150039 m!7860844))

(declare-fun m!7860846 () Bool)

(assert (=> b!7150036 m!7860846))

(declare-fun m!7860848 () Bool)

(assert (=> b!7150036 m!7860848))

(declare-fun m!7860850 () Bool)

(assert (=> b!7150036 m!7860850))

(declare-fun m!7860852 () Bool)

(assert (=> b!7150036 m!7860852))

(declare-fun m!7860854 () Bool)

(assert (=> b!7150036 m!7860854))

(declare-fun m!7860856 () Bool)

(assert (=> start!697126 m!7860856))

(declare-fun m!7860858 () Bool)

(assert (=> b!7150030 m!7860858))

(declare-fun m!7860860 () Bool)

(assert (=> b!7150040 m!7860860))

(declare-fun m!7860862 () Bool)

(assert (=> b!7150035 m!7860862))

(push 1)

(assert (not start!697126))

(assert tp_is_empty!46117)

(assert (not b!7150035))

(assert (not b!7150030))

(assert (not b!7150039))

(assert (not b!7150032))

(assert (not b!7150036))

(assert (not b!7150033))

(assert (not b!7150038))

(assert (not b!7150040))

(assert (not b!7150034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228705 () Bool)

(declare-fun res!2916578 () Bool)

(declare-fun e!4296243 () Bool)

(assert (=> d!2228705 (=> res!2916578 e!4296243)))

(assert (=> d!2228705 (= res!2916578 (is-Nil!69420 l!9154))))

(assert (=> d!2228705 (= (forall!17080 l!9154 lambda!436077) e!4296243)))

(declare-fun b!7150082 () Bool)

(declare-fun e!4296244 () Bool)

(assert (=> b!7150082 (= e!4296243 e!4296244)))

(declare-fun res!2916579 () Bool)

(assert (=> b!7150082 (=> (not res!2916579) (not e!4296244))))

(declare-fun dynLambda!28280 (Int Regex!18240) Bool)

(assert (=> b!7150082 (= res!2916579 (dynLambda!28280 lambda!436077 (h!75868 l!9154)))))

(declare-fun b!7150083 () Bool)

(assert (=> b!7150083 (= e!4296244 (forall!17080 (t!383561 l!9154) lambda!436077))))

(assert (= (and d!2228705 (not res!2916578)) b!7150082))

(assert (= (and b!7150082 res!2916579) b!7150083))

(declare-fun b_lambda!272955 () Bool)

(assert (=> (not b_lambda!272955) (not b!7150082)))

(declare-fun m!7860884 () Bool)

(assert (=> b!7150082 m!7860884))

(assert (=> b!7150083 m!7860844))

(assert (=> start!697126 d!2228705))

(declare-fun d!2228707 () Bool)

(declare-fun res!2916580 () Bool)

(declare-fun e!4296245 () Bool)

(assert (=> d!2228707 (=> res!2916580 e!4296245)))

(assert (=> d!2228707 (= res!2916580 (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> d!2228707 (= (forall!17080 (t!383561 l!9154) lambda!436077) e!4296245)))

(declare-fun b!7150084 () Bool)

(declare-fun e!4296246 () Bool)

(assert (=> b!7150084 (= e!4296245 e!4296246)))

(declare-fun res!2916581 () Bool)

(assert (=> b!7150084 (=> (not res!2916581) (not e!4296246))))

(assert (=> b!7150084 (= res!2916581 (dynLambda!28280 lambda!436077 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150085 () Bool)

(assert (=> b!7150085 (= e!4296246 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436077))))

(assert (= (and d!2228707 (not res!2916580)) b!7150084))

(assert (= (and b!7150084 res!2916581) b!7150085))

(declare-fun b_lambda!272957 () Bool)

(assert (=> (not b_lambda!272957) (not b!7150084)))

(declare-fun m!7860886 () Bool)

(assert (=> b!7150084 m!7860886))

(declare-fun m!7860888 () Bool)

(assert (=> b!7150085 m!7860888))

(assert (=> b!7150039 d!2228707))

(declare-fun bs!1889468 () Bool)

(declare-fun d!2228709 () Bool)

(assert (= bs!1889468 (and d!2228709 start!697126)))

(declare-fun lambda!436091 () Int)

(assert (=> bs!1889468 (= lambda!436091 lambda!436077)))

(declare-fun bs!1889469 () Bool)

(assert (= bs!1889469 (and d!2228709 b!7150036)))

(assert (=> bs!1889469 (not (= lambda!436091 lambda!436078))))

(declare-fun b!7150106 () Bool)

(declare-fun e!4296264 () Regex!18240)

(declare-fun e!4296263 () Regex!18240)

(assert (=> b!7150106 (= e!4296264 e!4296263)))

(declare-fun c!1333084 () Bool)

(assert (=> b!7150106 (= c!1333084 (is-Cons!69420 l!9154))))

(declare-fun b!7150107 () Bool)

(assert (=> b!7150107 (= e!4296264 (h!75868 l!9154))))

(declare-fun b!7150108 () Bool)

(declare-fun e!4296262 () Bool)

(declare-fun e!4296261 () Bool)

(assert (=> b!7150108 (= e!4296262 e!4296261)))

(declare-fun c!1333082 () Bool)

(declare-fun tail!14016 (List!69544) List!69544)

(assert (=> b!7150108 (= c!1333082 (isEmpty!40110 (tail!14016 l!9154)))))

(declare-fun b!7150109 () Bool)

(declare-fun lt!2569075 () Regex!18240)

(declare-fun head!14547 (List!69544) Regex!18240)

(assert (=> b!7150109 (= e!4296261 (= lt!2569075 (head!14547 l!9154)))))

(declare-fun b!7150110 () Bool)

(declare-fun e!4296259 () Bool)

(assert (=> b!7150110 (= e!4296259 (isEmpty!40110 (t!383561 l!9154)))))

(declare-fun b!7150111 () Bool)

(declare-fun isConcat!1588 (Regex!18240) Bool)

(assert (=> b!7150111 (= e!4296261 (isConcat!1588 lt!2569075))))

(declare-fun b!7150112 () Bool)

(assert (=> b!7150112 (= e!4296263 EmptyExpr!18240)))

(declare-fun b!7150113 () Bool)

(assert (=> b!7150113 (= e!4296263 (Concat!27085 (h!75868 l!9154) (generalisedConcat!2415 (t!383561 l!9154))))))

(declare-fun b!7150114 () Bool)

(declare-fun isEmptyExpr!2066 (Regex!18240) Bool)

(assert (=> b!7150114 (= e!4296262 (isEmptyExpr!2066 lt!2569075))))

(declare-fun e!4296260 () Bool)

(assert (=> d!2228709 e!4296260))

(declare-fun res!2916587 () Bool)

(assert (=> d!2228709 (=> (not res!2916587) (not e!4296260))))

(declare-fun validRegex!9395 (Regex!18240) Bool)

(assert (=> d!2228709 (= res!2916587 (validRegex!9395 lt!2569075))))

(assert (=> d!2228709 (= lt!2569075 e!4296264)))

(declare-fun c!1333083 () Bool)

(assert (=> d!2228709 (= c!1333083 e!4296259)))

(declare-fun res!2916586 () Bool)

(assert (=> d!2228709 (=> (not res!2916586) (not e!4296259))))

(assert (=> d!2228709 (= res!2916586 (is-Cons!69420 l!9154))))

(assert (=> d!2228709 (forall!17080 l!9154 lambda!436091)))

(assert (=> d!2228709 (= (generalisedConcat!2415 l!9154) lt!2569075)))

(declare-fun b!7150115 () Bool)

(assert (=> b!7150115 (= e!4296260 e!4296262)))

(declare-fun c!1333081 () Bool)

(assert (=> b!7150115 (= c!1333081 (isEmpty!40110 l!9154))))

(assert (= (and d!2228709 res!2916586) b!7150110))

(assert (= (and d!2228709 c!1333083) b!7150107))

(assert (= (and d!2228709 (not c!1333083)) b!7150106))

(assert (= (and b!7150106 c!1333084) b!7150113))

(assert (= (and b!7150106 (not c!1333084)) b!7150112))

(assert (= (and d!2228709 res!2916587) b!7150115))

(assert (= (and b!7150115 c!1333081) b!7150114))

(assert (= (and b!7150115 (not c!1333081)) b!7150108))

(assert (= (and b!7150108 c!1333082) b!7150109))

(assert (= (and b!7150108 (not c!1333082)) b!7150111))

(declare-fun m!7860890 () Bool)

(assert (=> b!7150115 m!7860890))

(declare-fun m!7860892 () Bool)

(assert (=> b!7150109 m!7860892))

(assert (=> b!7150110 m!7860860))

(assert (=> b!7150113 m!7860862))

(declare-fun m!7860894 () Bool)

(assert (=> b!7150108 m!7860894))

(assert (=> b!7150108 m!7860894))

(declare-fun m!7860896 () Bool)

(assert (=> b!7150108 m!7860896))

(declare-fun m!7860898 () Bool)

(assert (=> b!7150114 m!7860898))

(declare-fun m!7860900 () Bool)

(assert (=> b!7150111 m!7860900))

(declare-fun m!7860902 () Bool)

(assert (=> d!2228709 m!7860902))

(declare-fun m!7860904 () Bool)

(assert (=> d!2228709 m!7860904))

(assert (=> b!7150030 d!2228709))

(declare-fun bs!1889470 () Bool)

(declare-fun d!2228711 () Bool)

(assert (= bs!1889470 (and d!2228711 start!697126)))

(declare-fun lambda!436092 () Int)

(assert (=> bs!1889470 (= lambda!436092 lambda!436077)))

(declare-fun bs!1889471 () Bool)

(assert (= bs!1889471 (and d!2228711 b!7150036)))

(assert (=> bs!1889471 (not (= lambda!436092 lambda!436078))))

(declare-fun bs!1889472 () Bool)

(assert (= bs!1889472 (and d!2228711 d!2228709)))

(assert (=> bs!1889472 (= lambda!436092 lambda!436091)))

(declare-fun b!7150116 () Bool)

(declare-fun e!4296270 () Regex!18240)

(declare-fun e!4296269 () Regex!18240)

(assert (=> b!7150116 (= e!4296270 e!4296269)))

(declare-fun c!1333088 () Bool)

(assert (=> b!7150116 (= c!1333088 (is-Cons!69420 (t!383561 l!9154)))))

(declare-fun b!7150117 () Bool)

(assert (=> b!7150117 (= e!4296270 (h!75868 (t!383561 l!9154)))))

(declare-fun b!7150118 () Bool)

(declare-fun e!4296268 () Bool)

(declare-fun e!4296267 () Bool)

(assert (=> b!7150118 (= e!4296268 e!4296267)))

(declare-fun c!1333086 () Bool)

(assert (=> b!7150118 (= c!1333086 (isEmpty!40110 (tail!14016 (t!383561 l!9154))))))

(declare-fun b!7150119 () Bool)

(declare-fun lt!2569076 () Regex!18240)

(assert (=> b!7150119 (= e!4296267 (= lt!2569076 (head!14547 (t!383561 l!9154))))))

(declare-fun b!7150120 () Bool)

(declare-fun e!4296265 () Bool)

(assert (=> b!7150120 (= e!4296265 (isEmpty!40110 (t!383561 (t!383561 l!9154))))))

(declare-fun b!7150121 () Bool)

(assert (=> b!7150121 (= e!4296267 (isConcat!1588 lt!2569076))))

(declare-fun b!7150122 () Bool)

(assert (=> b!7150122 (= e!4296269 EmptyExpr!18240)))

(declare-fun b!7150123 () Bool)

(assert (=> b!7150123 (= e!4296269 (Concat!27085 (h!75868 (t!383561 l!9154)) (generalisedConcat!2415 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150124 () Bool)

(assert (=> b!7150124 (= e!4296268 (isEmptyExpr!2066 lt!2569076))))

(declare-fun e!4296266 () Bool)

(assert (=> d!2228711 e!4296266))

(declare-fun res!2916589 () Bool)

(assert (=> d!2228711 (=> (not res!2916589) (not e!4296266))))

(assert (=> d!2228711 (= res!2916589 (validRegex!9395 lt!2569076))))

(assert (=> d!2228711 (= lt!2569076 e!4296270)))

(declare-fun c!1333087 () Bool)

(assert (=> d!2228711 (= c!1333087 e!4296265)))

(declare-fun res!2916588 () Bool)

(assert (=> d!2228711 (=> (not res!2916588) (not e!4296265))))

(assert (=> d!2228711 (= res!2916588 (is-Cons!69420 (t!383561 l!9154)))))

(assert (=> d!2228711 (forall!17080 (t!383561 l!9154) lambda!436092)))

(assert (=> d!2228711 (= (generalisedConcat!2415 (t!383561 l!9154)) lt!2569076)))

(declare-fun b!7150125 () Bool)

(assert (=> b!7150125 (= e!4296266 e!4296268)))

(declare-fun c!1333085 () Bool)

(assert (=> b!7150125 (= c!1333085 (isEmpty!40110 (t!383561 l!9154)))))

(assert (= (and d!2228711 res!2916588) b!7150120))

(assert (= (and d!2228711 c!1333087) b!7150117))

(assert (= (and d!2228711 (not c!1333087)) b!7150116))

(assert (= (and b!7150116 c!1333088) b!7150123))

(assert (= (and b!7150116 (not c!1333088)) b!7150122))

(assert (= (and d!2228711 res!2916589) b!7150125))

(assert (= (and b!7150125 c!1333085) b!7150124))

(assert (= (and b!7150125 (not c!1333085)) b!7150118))

(assert (= (and b!7150118 c!1333086) b!7150119))

(assert (= (and b!7150118 (not c!1333086)) b!7150121))

(assert (=> b!7150125 m!7860860))

(declare-fun m!7860906 () Bool)

(assert (=> b!7150119 m!7860906))

(declare-fun m!7860908 () Bool)

(assert (=> b!7150120 m!7860908))

(declare-fun m!7860910 () Bool)

(assert (=> b!7150123 m!7860910))

(declare-fun m!7860912 () Bool)

(assert (=> b!7150118 m!7860912))

(assert (=> b!7150118 m!7860912))

(declare-fun m!7860914 () Bool)

(assert (=> b!7150118 m!7860914))

(declare-fun m!7860916 () Bool)

(assert (=> b!7150124 m!7860916))

(declare-fun m!7860918 () Bool)

(assert (=> b!7150121 m!7860918))

(declare-fun m!7860920 () Bool)

(assert (=> d!2228711 m!7860920))

(declare-fun m!7860922 () Bool)

(assert (=> d!2228711 m!7860922))

(assert (=> b!7150035 d!2228711))

(declare-fun d!2228715 () Bool)

(assert (=> d!2228715 (= (isEmpty!40110 (t!383561 l!9154)) (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> b!7150040 d!2228715))

(declare-fun d!2228717 () Bool)

(declare-fun nullableFct!3007 (Regex!18240) Bool)

(assert (=> d!2228717 (= (nullable!7729 r!13911) (nullableFct!3007 r!13911))))

(declare-fun bs!1889473 () Bool)

(assert (= bs!1889473 d!2228717))

(declare-fun m!7860924 () Bool)

(assert (=> bs!1889473 m!7860924))

(assert (=> b!7150036 d!2228717))

(declare-fun d!2228719 () Bool)

(assert (=> d!2228719 (= (nullable!7729 (regTwo!36992 r!13911)) (nullableFct!3007 (regTwo!36992 r!13911)))))

(declare-fun bs!1889474 () Bool)

(assert (= bs!1889474 d!2228719))

(declare-fun m!7860926 () Bool)

(assert (=> bs!1889474 m!7860926))

(assert (=> b!7150036 d!2228719))

(declare-fun d!2228721 () Bool)

(declare-fun res!2916590 () Bool)

(declare-fun e!4296271 () Bool)

(assert (=> d!2228721 (=> res!2916590 e!4296271)))

(assert (=> d!2228721 (= res!2916590 (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> d!2228721 (= (forall!17080 (t!383561 l!9154) lambda!436078) e!4296271)))

(declare-fun b!7150126 () Bool)

(declare-fun e!4296272 () Bool)

(assert (=> b!7150126 (= e!4296271 e!4296272)))

(declare-fun res!2916591 () Bool)

(assert (=> b!7150126 (=> (not res!2916591) (not e!4296272))))

(assert (=> b!7150126 (= res!2916591 (dynLambda!28280 lambda!436078 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150127 () Bool)

(assert (=> b!7150127 (= e!4296272 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436078))))

(assert (= (and d!2228721 (not res!2916590)) b!7150126))

(assert (= (and b!7150126 res!2916591) b!7150127))

(declare-fun b_lambda!272959 () Bool)

(assert (=> (not b_lambda!272959) (not b!7150126)))

(declare-fun m!7860928 () Bool)

(assert (=> b!7150126 m!7860928))

(declare-fun m!7860930 () Bool)

(assert (=> b!7150127 m!7860930))

(assert (=> b!7150036 d!2228721))

(declare-fun bs!1889476 () Bool)

(declare-fun d!2228723 () Bool)

(assert (= bs!1889476 (and d!2228723 start!697126)))

(declare-fun lambda!436097 () Int)

(assert (=> bs!1889476 (= lambda!436097 lambda!436077)))

(declare-fun bs!1889477 () Bool)

(assert (= bs!1889477 (and d!2228723 b!7150036)))

(assert (=> bs!1889477 (not (= lambda!436097 lambda!436078))))

(declare-fun bs!1889478 () Bool)

(assert (= bs!1889478 (and d!2228723 d!2228709)))

(assert (=> bs!1889478 (= lambda!436097 lambda!436091)))

(declare-fun bs!1889479 () Bool)

(assert (= bs!1889479 (and d!2228723 d!2228711)))

(assert (=> bs!1889479 (= lambda!436097 lambda!436092)))

(declare-fun lambda!436098 () Int)

(assert (=> bs!1889479 (not (= lambda!436098 lambda!436092))))

(assert (=> bs!1889477 (= lambda!436098 lambda!436078)))

(assert (=> bs!1889478 (not (= lambda!436098 lambda!436091))))

(declare-fun bs!1889480 () Bool)

(assert (= bs!1889480 d!2228723))

(assert (=> bs!1889480 (not (= lambda!436098 lambda!436097))))

(assert (=> bs!1889476 (not (= lambda!436098 lambda!436077))))

(assert (=> d!2228723 (= (nullable!7729 (regTwo!36992 r!13911)) (forall!17080 (t!383561 l!9154) lambda!436098))))

(declare-fun lt!2569079 () Unit!163291)

(declare-fun choose!55303 (Regex!18240 List!69544) Unit!163291)

(assert (=> d!2228723 (= lt!2569079 (choose!55303 (regTwo!36992 r!13911) (t!383561 l!9154)))))

(assert (=> d!2228723 (forall!17080 (t!383561 l!9154) lambda!436097)))

(assert (=> d!2228723 (= (nullableGenConcatSpec!27 (regTwo!36992 r!13911) (t!383561 l!9154)) lt!2569079)))

(assert (=> bs!1889480 m!7860854))

(declare-fun m!7860934 () Bool)

(assert (=> bs!1889480 m!7860934))

(declare-fun m!7860936 () Bool)

(assert (=> bs!1889480 m!7860936))

(declare-fun m!7860938 () Bool)

(assert (=> bs!1889480 m!7860938))

(assert (=> b!7150036 d!2228723))

(declare-fun d!2228727 () Bool)

(declare-fun res!2916596 () Bool)

(declare-fun e!4296277 () Bool)

(assert (=> d!2228727 (=> res!2916596 e!4296277)))

(assert (=> d!2228727 (= res!2916596 (is-Nil!69420 l!9154))))

(assert (=> d!2228727 (= (forall!17080 l!9154 lambda!436078) e!4296277)))

(declare-fun b!7150132 () Bool)

(declare-fun e!4296278 () Bool)

(assert (=> b!7150132 (= e!4296277 e!4296278)))

(declare-fun res!2916597 () Bool)

(assert (=> b!7150132 (=> (not res!2916597) (not e!4296278))))

(assert (=> b!7150132 (= res!2916597 (dynLambda!28280 lambda!436078 (h!75868 l!9154)))))

(declare-fun b!7150133 () Bool)

(assert (=> b!7150133 (= e!4296278 (forall!17080 (t!383561 l!9154) lambda!436078))))

(assert (= (and d!2228727 (not res!2916596)) b!7150132))

(assert (= (and b!7150132 res!2916597) b!7150133))

(declare-fun b_lambda!272961 () Bool)

(assert (=> (not b_lambda!272961) (not b!7150132)))

(declare-fun m!7860940 () Bool)

(assert (=> b!7150132 m!7860940))

(assert (=> b!7150133 m!7860852))

(assert (=> b!7150036 d!2228727))

(declare-fun b!7150147 () Bool)

(declare-fun e!4296281 () Bool)

(declare-fun tp!1974207 () Bool)

(declare-fun tp!1974208 () Bool)

(assert (=> b!7150147 (= e!4296281 (and tp!1974207 tp!1974208))))

(declare-fun b!7150146 () Bool)

(declare-fun tp!1974204 () Bool)

(assert (=> b!7150146 (= e!4296281 tp!1974204)))

(assert (=> b!7150033 (= tp!1974170 e!4296281)))

(declare-fun b!7150145 () Bool)

(declare-fun tp!1974206 () Bool)

(declare-fun tp!1974205 () Bool)

(assert (=> b!7150145 (= e!4296281 (and tp!1974206 tp!1974205))))

(declare-fun b!7150144 () Bool)

(assert (=> b!7150144 (= e!4296281 tp_is_empty!46117)))

(assert (= (and b!7150033 (is-ElementMatch!18240 (regOne!36993 r!13911))) b!7150144))

(assert (= (and b!7150033 (is-Concat!27085 (regOne!36993 r!13911))) b!7150145))

(assert (= (and b!7150033 (is-Star!18240 (regOne!36993 r!13911))) b!7150146))

(assert (= (and b!7150033 (is-Union!18240 (regOne!36993 r!13911))) b!7150147))

(declare-fun b!7150151 () Bool)

(declare-fun e!4296282 () Bool)

(declare-fun tp!1974212 () Bool)

(declare-fun tp!1974213 () Bool)

(assert (=> b!7150151 (= e!4296282 (and tp!1974212 tp!1974213))))

(declare-fun b!7150150 () Bool)

(declare-fun tp!1974209 () Bool)

(assert (=> b!7150150 (= e!4296282 tp!1974209)))

(assert (=> b!7150033 (= tp!1974167 e!4296282)))

(declare-fun b!7150149 () Bool)

(declare-fun tp!1974211 () Bool)

(declare-fun tp!1974210 () Bool)

(assert (=> b!7150149 (= e!4296282 (and tp!1974211 tp!1974210))))

(declare-fun b!7150148 () Bool)

(assert (=> b!7150148 (= e!4296282 tp_is_empty!46117)))

(assert (= (and b!7150033 (is-ElementMatch!18240 (regTwo!36993 r!13911))) b!7150148))

(assert (= (and b!7150033 (is-Concat!27085 (regTwo!36993 r!13911))) b!7150149))

(assert (= (and b!7150033 (is-Star!18240 (regTwo!36993 r!13911))) b!7150150))

(assert (= (and b!7150033 (is-Union!18240 (regTwo!36993 r!13911))) b!7150151))

(declare-fun b!7150155 () Bool)

(declare-fun e!4296283 () Bool)

(declare-fun tp!1974217 () Bool)

(declare-fun tp!1974218 () Bool)

(assert (=> b!7150155 (= e!4296283 (and tp!1974217 tp!1974218))))

(declare-fun b!7150154 () Bool)

(declare-fun tp!1974214 () Bool)

(assert (=> b!7150154 (= e!4296283 tp!1974214)))

(assert (=> b!7150038 (= tp!1974166 e!4296283)))

(declare-fun b!7150153 () Bool)

(declare-fun tp!1974216 () Bool)

(declare-fun tp!1974215 () Bool)

(assert (=> b!7150153 (= e!4296283 (and tp!1974216 tp!1974215))))

(declare-fun b!7150152 () Bool)

(assert (=> b!7150152 (= e!4296283 tp_is_empty!46117)))

(assert (= (and b!7150038 (is-ElementMatch!18240 (h!75868 l!9154))) b!7150152))

(assert (= (and b!7150038 (is-Concat!27085 (h!75868 l!9154))) b!7150153))

(assert (= (and b!7150038 (is-Star!18240 (h!75868 l!9154))) b!7150154))

(assert (= (and b!7150038 (is-Union!18240 (h!75868 l!9154))) b!7150155))

(declare-fun b!7150162 () Bool)

(declare-fun e!4296288 () Bool)

(declare-fun tp!1974223 () Bool)

(declare-fun tp!1974224 () Bool)

(assert (=> b!7150162 (= e!4296288 (and tp!1974223 tp!1974224))))

(assert (=> b!7150038 (= tp!1974172 e!4296288)))

(assert (= (and b!7150038 (is-Cons!69420 (t!383561 l!9154))) b!7150162))

(declare-fun b!7150166 () Bool)

(declare-fun e!4296289 () Bool)

(declare-fun tp!1974228 () Bool)

(declare-fun tp!1974229 () Bool)

(assert (=> b!7150166 (= e!4296289 (and tp!1974228 tp!1974229))))

(declare-fun b!7150165 () Bool)

(declare-fun tp!1974225 () Bool)

(assert (=> b!7150165 (= e!4296289 tp!1974225)))

(assert (=> b!7150032 (= tp!1974171 e!4296289)))

(declare-fun b!7150164 () Bool)

(declare-fun tp!1974227 () Bool)

(declare-fun tp!1974226 () Bool)

(assert (=> b!7150164 (= e!4296289 (and tp!1974227 tp!1974226))))

(declare-fun b!7150163 () Bool)

(assert (=> b!7150163 (= e!4296289 tp_is_empty!46117)))

(assert (= (and b!7150032 (is-ElementMatch!18240 (regOne!36992 r!13911))) b!7150163))

(assert (= (and b!7150032 (is-Concat!27085 (regOne!36992 r!13911))) b!7150164))

(assert (= (and b!7150032 (is-Star!18240 (regOne!36992 r!13911))) b!7150165))

(assert (= (and b!7150032 (is-Union!18240 (regOne!36992 r!13911))) b!7150166))

(declare-fun b!7150170 () Bool)

(declare-fun e!4296290 () Bool)

(declare-fun tp!1974233 () Bool)

(declare-fun tp!1974234 () Bool)

(assert (=> b!7150170 (= e!4296290 (and tp!1974233 tp!1974234))))

(declare-fun b!7150169 () Bool)

(declare-fun tp!1974230 () Bool)

(assert (=> b!7150169 (= e!4296290 tp!1974230)))

(assert (=> b!7150032 (= tp!1974168 e!4296290)))

(declare-fun b!7150168 () Bool)

(declare-fun tp!1974232 () Bool)

(declare-fun tp!1974231 () Bool)

(assert (=> b!7150168 (= e!4296290 (and tp!1974232 tp!1974231))))

(declare-fun b!7150167 () Bool)

(assert (=> b!7150167 (= e!4296290 tp_is_empty!46117)))

(assert (= (and b!7150032 (is-ElementMatch!18240 (regTwo!36992 r!13911))) b!7150167))

(assert (= (and b!7150032 (is-Concat!27085 (regTwo!36992 r!13911))) b!7150168))

(assert (= (and b!7150032 (is-Star!18240 (regTwo!36992 r!13911))) b!7150169))

(assert (= (and b!7150032 (is-Union!18240 (regTwo!36992 r!13911))) b!7150170))

(declare-fun b!7150174 () Bool)

(declare-fun e!4296291 () Bool)

(declare-fun tp!1974238 () Bool)

(declare-fun tp!1974239 () Bool)

(assert (=> b!7150174 (= e!4296291 (and tp!1974238 tp!1974239))))

(declare-fun b!7150173 () Bool)

(declare-fun tp!1974235 () Bool)

(assert (=> b!7150173 (= e!4296291 tp!1974235)))

(assert (=> b!7150034 (= tp!1974169 e!4296291)))

(declare-fun b!7150172 () Bool)

(declare-fun tp!1974237 () Bool)

(declare-fun tp!1974236 () Bool)

(assert (=> b!7150172 (= e!4296291 (and tp!1974237 tp!1974236))))

(declare-fun b!7150171 () Bool)

(assert (=> b!7150171 (= e!4296291 tp_is_empty!46117)))

(assert (= (and b!7150034 (is-ElementMatch!18240 (reg!18569 r!13911))) b!7150171))

(assert (= (and b!7150034 (is-Concat!27085 (reg!18569 r!13911))) b!7150172))

(assert (= (and b!7150034 (is-Star!18240 (reg!18569 r!13911))) b!7150173))

(assert (= (and b!7150034 (is-Union!18240 (reg!18569 r!13911))) b!7150174))

(declare-fun b_lambda!272965 () Bool)

(assert (= b_lambda!272955 (or start!697126 b_lambda!272965)))

(declare-fun bs!1889481 () Bool)

(declare-fun d!2228731 () Bool)

(assert (= bs!1889481 (and d!2228731 start!697126)))

(assert (=> bs!1889481 (= (dynLambda!28280 lambda!436077 (h!75868 l!9154)) (validRegex!9395 (h!75868 l!9154)))))

(declare-fun m!7860946 () Bool)

(assert (=> bs!1889481 m!7860946))

(assert (=> b!7150082 d!2228731))

(declare-fun b_lambda!272967 () Bool)

(assert (= b_lambda!272957 (or start!697126 b_lambda!272967)))

(declare-fun bs!1889482 () Bool)

(declare-fun d!2228733 () Bool)

(assert (= bs!1889482 (and d!2228733 start!697126)))

(assert (=> bs!1889482 (= (dynLambda!28280 lambda!436077 (h!75868 (t!383561 l!9154))) (validRegex!9395 (h!75868 (t!383561 l!9154))))))

(declare-fun m!7860948 () Bool)

(assert (=> bs!1889482 m!7860948))

(assert (=> b!7150084 d!2228733))

(declare-fun b_lambda!272969 () Bool)

(assert (= b_lambda!272961 (or b!7150036 b_lambda!272969)))

(declare-fun bs!1889483 () Bool)

(declare-fun d!2228735 () Bool)

(assert (= bs!1889483 (and d!2228735 b!7150036)))

(assert (=> bs!1889483 (= (dynLambda!28280 lambda!436078 (h!75868 l!9154)) (nullable!7729 (h!75868 l!9154)))))

(declare-fun m!7860950 () Bool)

(assert (=> bs!1889483 m!7860950))

(assert (=> b!7150132 d!2228735))

(declare-fun b_lambda!272971 () Bool)

(assert (= b_lambda!272959 (or b!7150036 b_lambda!272971)))

(declare-fun bs!1889484 () Bool)

(declare-fun d!2228737 () Bool)

(assert (= bs!1889484 (and d!2228737 b!7150036)))

(assert (=> bs!1889484 (= (dynLambda!28280 lambda!436078 (h!75868 (t!383561 l!9154))) (nullable!7729 (h!75868 (t!383561 l!9154))))))

(declare-fun m!7860952 () Bool)

(assert (=> bs!1889484 m!7860952))

(assert (=> b!7150126 d!2228737))

(push 1)

(assert (not b_lambda!272965))

(assert (not bs!1889482))

(assert (not b!7150154))

(assert (not b!7150125))

(assert (not d!2228723))

(assert (not d!2228709))

(assert (not b!7150123))

(assert (not b!7150124))

(assert (not bs!1889484))

(assert (not b!7150162))

(assert (not b!7150172))

(assert (not b!7150108))

(assert (not b!7150149))

(assert (not b!7150151))

(assert (not b!7150169))

(assert (not b!7150147))

(assert (not b!7150085))

(assert (not d!2228717))

(assert (not bs!1889483))

(assert (not b!7150145))

(assert (not b!7150120))

(assert (not b!7150118))

(assert (not b!7150083))

(assert tp_is_empty!46117)

(assert (not b!7150146))

(assert (not b!7150155))

(assert (not bs!1889481))

(assert (not b!7150121))

(assert (not d!2228711))

(assert (not b!7150127))

(assert (not d!2228719))

(assert (not b!7150115))

(assert (not b!7150153))

(assert (not b!7150165))

(assert (not b!7150166))

(assert (not b!7150150))

(assert (not b_lambda!272971))

(assert (not b!7150114))

(assert (not b!7150174))

(assert (not b!7150113))

(assert (not b!7150110))

(assert (not b!7150109))

(assert (not b!7150164))

(assert (not b!7150173))

(assert (not b!7150170))

(assert (not b_lambda!272969))

(assert (not b!7150119))

(assert (not b_lambda!272967))

(assert (not b!7150111))

(assert (not b!7150168))

(assert (not b!7150133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!7150133 d!2228721))

(declare-fun d!2228761 () Bool)

(assert (=> d!2228761 (= (isEmpty!40110 (tail!14016 l!9154)) (is-Nil!69420 (tail!14016 l!9154)))))

(assert (=> b!7150108 d!2228761))

(declare-fun d!2228763 () Bool)

(assert (=> d!2228763 (= (tail!14016 l!9154) (t!383561 l!9154))))

(assert (=> b!7150108 d!2228763))

(assert (=> b!7150110 d!2228715))

(declare-fun d!2228765 () Bool)

(assert (=> d!2228765 (= (head!14547 l!9154) (h!75868 l!9154))))

(assert (=> b!7150109 d!2228765))

(declare-fun d!2228767 () Bool)

(assert (=> d!2228767 (= (isEmpty!40110 (tail!14016 (t!383561 l!9154))) (is-Nil!69420 (tail!14016 (t!383561 l!9154))))))

(assert (=> b!7150118 d!2228767))

(declare-fun d!2228769 () Bool)

(assert (=> d!2228769 (= (tail!14016 (t!383561 l!9154)) (t!383561 (t!383561 l!9154)))))

(assert (=> b!7150118 d!2228769))

(declare-fun d!2228771 () Bool)

(assert (=> d!2228771 (= (isConcat!1588 lt!2569075) (is-Concat!27085 lt!2569075))))

(assert (=> b!7150111 d!2228771))

(declare-fun bm!651486 () Bool)

(declare-fun call!651492 () Bool)

(declare-fun call!651493 () Bool)

(assert (=> bm!651486 (= call!651492 call!651493)))

(declare-fun b!7150278 () Bool)

(declare-fun e!4296353 () Bool)

(assert (=> b!7150278 (= e!4296353 call!651493)))

(declare-fun b!7150279 () Bool)

(declare-fun e!4296347 () Bool)

(declare-fun call!651491 () Bool)

(assert (=> b!7150279 (= e!4296347 call!651491)))

(declare-fun b!7150280 () Bool)

(declare-fun e!4296348 () Bool)

(assert (=> b!7150280 (= e!4296348 e!4296353)))

(declare-fun res!2916625 () Bool)

(assert (=> b!7150280 (= res!2916625 (not (nullable!7729 (reg!18569 lt!2569075))))))

(assert (=> b!7150280 (=> (not res!2916625) (not e!4296353))))

(declare-fun b!7150281 () Bool)

(declare-fun e!4296350 () Bool)

(assert (=> b!7150281 (= e!4296350 call!651491)))

(declare-fun b!7150283 () Bool)

(declare-fun res!2916627 () Bool)

(assert (=> b!7150283 (=> (not res!2916627) (not e!4296347))))

(assert (=> b!7150283 (= res!2916627 call!651492)))

(declare-fun e!4296351 () Bool)

(assert (=> b!7150283 (= e!4296351 e!4296347)))

(declare-fun b!7150284 () Bool)

(declare-fun e!4296349 () Bool)

(assert (=> b!7150284 (= e!4296349 e!4296348)))

(declare-fun c!1333110 () Bool)

(assert (=> b!7150284 (= c!1333110 (is-Star!18240 lt!2569075))))

(declare-fun b!7150285 () Bool)

(declare-fun res!2916626 () Bool)

(declare-fun e!4296352 () Bool)

(assert (=> b!7150285 (=> res!2916626 e!4296352)))

(assert (=> b!7150285 (= res!2916626 (not (is-Concat!27085 lt!2569075)))))

(assert (=> b!7150285 (= e!4296351 e!4296352)))

(declare-fun c!1333109 () Bool)

(declare-fun bm!651487 () Bool)

(assert (=> bm!651487 (= call!651493 (validRegex!9395 (ite c!1333110 (reg!18569 lt!2569075) (ite c!1333109 (regOne!36993 lt!2569075) (regOne!36992 lt!2569075)))))))

(declare-fun b!7150286 () Bool)

(assert (=> b!7150286 (= e!4296348 e!4296351)))

(assert (=> b!7150286 (= c!1333109 (is-Union!18240 lt!2569075))))

(declare-fun bm!651488 () Bool)

(assert (=> bm!651488 (= call!651491 (validRegex!9395 (ite c!1333109 (regTwo!36993 lt!2569075) (regTwo!36992 lt!2569075))))))

(declare-fun d!2228773 () Bool)

(declare-fun res!2916628 () Bool)

(assert (=> d!2228773 (=> res!2916628 e!4296349)))

(assert (=> d!2228773 (= res!2916628 (is-ElementMatch!18240 lt!2569075))))

(assert (=> d!2228773 (= (validRegex!9395 lt!2569075) e!4296349)))

(declare-fun b!7150282 () Bool)

(assert (=> b!7150282 (= e!4296352 e!4296350)))

(declare-fun res!2916624 () Bool)

(assert (=> b!7150282 (=> (not res!2916624) (not e!4296350))))

(assert (=> b!7150282 (= res!2916624 call!651492)))

(assert (= (and d!2228773 (not res!2916628)) b!7150284))

(assert (= (and b!7150284 c!1333110) b!7150280))

(assert (= (and b!7150284 (not c!1333110)) b!7150286))

(assert (= (and b!7150280 res!2916625) b!7150278))

(assert (= (and b!7150286 c!1333109) b!7150283))

(assert (= (and b!7150286 (not c!1333109)) b!7150285))

(assert (= (and b!7150283 res!2916627) b!7150279))

(assert (= (and b!7150285 (not res!2916626)) b!7150282))

(assert (= (and b!7150282 res!2916624) b!7150281))

(assert (= (or b!7150279 b!7150281) bm!651488))

(assert (= (or b!7150283 b!7150282) bm!651486))

(assert (= (or b!7150278 bm!651486) bm!651487))

(declare-fun m!7861012 () Bool)

(assert (=> b!7150280 m!7861012))

(declare-fun m!7861014 () Bool)

(assert (=> bm!651487 m!7861014))

(declare-fun m!7861016 () Bool)

(assert (=> bm!651488 m!7861016))

(assert (=> d!2228709 d!2228773))

(declare-fun d!2228775 () Bool)

(declare-fun res!2916629 () Bool)

(declare-fun e!4296354 () Bool)

(assert (=> d!2228775 (=> res!2916629 e!4296354)))

(assert (=> d!2228775 (= res!2916629 (is-Nil!69420 l!9154))))

(assert (=> d!2228775 (= (forall!17080 l!9154 lambda!436091) e!4296354)))

(declare-fun b!7150287 () Bool)

(declare-fun e!4296355 () Bool)

(assert (=> b!7150287 (= e!4296354 e!4296355)))

(declare-fun res!2916630 () Bool)

(assert (=> b!7150287 (=> (not res!2916630) (not e!4296355))))

(assert (=> b!7150287 (= res!2916630 (dynLambda!28280 lambda!436091 (h!75868 l!9154)))))

(declare-fun b!7150288 () Bool)

(assert (=> b!7150288 (= e!4296355 (forall!17080 (t!383561 l!9154) lambda!436091))))

(assert (= (and d!2228775 (not res!2916629)) b!7150287))

(assert (= (and b!7150287 res!2916630) b!7150288))

(declare-fun b_lambda!272987 () Bool)

(assert (=> (not b_lambda!272987) (not b!7150287)))

(declare-fun m!7861018 () Bool)

(assert (=> b!7150287 m!7861018))

(declare-fun m!7861020 () Bool)

(assert (=> b!7150288 m!7861020))

(assert (=> d!2228709 d!2228775))

(declare-fun d!2228777 () Bool)

(assert (=> d!2228777 (= (head!14547 (t!383561 l!9154)) (h!75868 (t!383561 l!9154)))))

(assert (=> b!7150119 d!2228777))

(assert (=> b!7150083 d!2228707))

(declare-fun d!2228779 () Bool)

(assert (=> d!2228779 (= (isEmptyExpr!2066 lt!2569075) (is-EmptyExpr!18240 lt!2569075))))

(assert (=> b!7150114 d!2228779))

(declare-fun d!2228781 () Bool)

(assert (=> d!2228781 (= (isEmpty!40110 (t!383561 (t!383561 l!9154))) (is-Nil!69420 (t!383561 (t!383561 l!9154))))))

(assert (=> b!7150120 d!2228781))

(assert (=> b!7150113 d!2228711))

(declare-fun bm!651489 () Bool)

(declare-fun call!651495 () Bool)

(declare-fun call!651496 () Bool)

(assert (=> bm!651489 (= call!651495 call!651496)))

(declare-fun b!7150289 () Bool)

(declare-fun e!4296362 () Bool)

(assert (=> b!7150289 (= e!4296362 call!651496)))

(declare-fun b!7150290 () Bool)

(declare-fun e!4296356 () Bool)

(declare-fun call!651494 () Bool)

(assert (=> b!7150290 (= e!4296356 call!651494)))

(declare-fun b!7150291 () Bool)

(declare-fun e!4296357 () Bool)

(assert (=> b!7150291 (= e!4296357 e!4296362)))

(declare-fun res!2916632 () Bool)

(assert (=> b!7150291 (= res!2916632 (not (nullable!7729 (reg!18569 (h!75868 l!9154)))))))

(assert (=> b!7150291 (=> (not res!2916632) (not e!4296362))))

(declare-fun b!7150292 () Bool)

(declare-fun e!4296359 () Bool)

(assert (=> b!7150292 (= e!4296359 call!651494)))

(declare-fun b!7150294 () Bool)

(declare-fun res!2916634 () Bool)

(assert (=> b!7150294 (=> (not res!2916634) (not e!4296356))))

(assert (=> b!7150294 (= res!2916634 call!651495)))

(declare-fun e!4296360 () Bool)

(assert (=> b!7150294 (= e!4296360 e!4296356)))

(declare-fun b!7150295 () Bool)

(declare-fun e!4296358 () Bool)

(assert (=> b!7150295 (= e!4296358 e!4296357)))

(declare-fun c!1333112 () Bool)

(assert (=> b!7150295 (= c!1333112 (is-Star!18240 (h!75868 l!9154)))))

(declare-fun b!7150296 () Bool)

(declare-fun res!2916633 () Bool)

(declare-fun e!4296361 () Bool)

(assert (=> b!7150296 (=> res!2916633 e!4296361)))

(assert (=> b!7150296 (= res!2916633 (not (is-Concat!27085 (h!75868 l!9154))))))

(assert (=> b!7150296 (= e!4296360 e!4296361)))

(declare-fun c!1333111 () Bool)

(declare-fun bm!651490 () Bool)

(assert (=> bm!651490 (= call!651496 (validRegex!9395 (ite c!1333112 (reg!18569 (h!75868 l!9154)) (ite c!1333111 (regOne!36993 (h!75868 l!9154)) (regOne!36992 (h!75868 l!9154))))))))

(declare-fun b!7150297 () Bool)

(assert (=> b!7150297 (= e!4296357 e!4296360)))

(assert (=> b!7150297 (= c!1333111 (is-Union!18240 (h!75868 l!9154)))))

(declare-fun bm!651491 () Bool)

(assert (=> bm!651491 (= call!651494 (validRegex!9395 (ite c!1333111 (regTwo!36993 (h!75868 l!9154)) (regTwo!36992 (h!75868 l!9154)))))))

(declare-fun d!2228783 () Bool)

(declare-fun res!2916635 () Bool)

(assert (=> d!2228783 (=> res!2916635 e!4296358)))

(assert (=> d!2228783 (= res!2916635 (is-ElementMatch!18240 (h!75868 l!9154)))))

(assert (=> d!2228783 (= (validRegex!9395 (h!75868 l!9154)) e!4296358)))

(declare-fun b!7150293 () Bool)

(assert (=> b!7150293 (= e!4296361 e!4296359)))

(declare-fun res!2916631 () Bool)

(assert (=> b!7150293 (=> (not res!2916631) (not e!4296359))))

(assert (=> b!7150293 (= res!2916631 call!651495)))

(assert (= (and d!2228783 (not res!2916635)) b!7150295))

(assert (= (and b!7150295 c!1333112) b!7150291))

(assert (= (and b!7150295 (not c!1333112)) b!7150297))

(assert (= (and b!7150291 res!2916632) b!7150289))

(assert (= (and b!7150297 c!1333111) b!7150294))

(assert (= (and b!7150297 (not c!1333111)) b!7150296))

(assert (= (and b!7150294 res!2916634) b!7150290))

(assert (= (and b!7150296 (not res!2916633)) b!7150293))

(assert (= (and b!7150293 res!2916631) b!7150292))

(assert (= (or b!7150290 b!7150292) bm!651491))

(assert (= (or b!7150294 b!7150293) bm!651489))

(assert (= (or b!7150289 bm!651489) bm!651490))

(declare-fun m!7861022 () Bool)

(assert (=> b!7150291 m!7861022))

(declare-fun m!7861024 () Bool)

(assert (=> bm!651490 m!7861024))

(declare-fun m!7861026 () Bool)

(assert (=> bm!651491 m!7861026))

(assert (=> bs!1889481 d!2228783))

(assert (=> d!2228723 d!2228719))

(declare-fun d!2228785 () Bool)

(declare-fun res!2916636 () Bool)

(declare-fun e!4296363 () Bool)

(assert (=> d!2228785 (=> res!2916636 e!4296363)))

(assert (=> d!2228785 (= res!2916636 (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> d!2228785 (= (forall!17080 (t!383561 l!9154) lambda!436098) e!4296363)))

(declare-fun b!7150298 () Bool)

(declare-fun e!4296364 () Bool)

(assert (=> b!7150298 (= e!4296363 e!4296364)))

(declare-fun res!2916637 () Bool)

(assert (=> b!7150298 (=> (not res!2916637) (not e!4296364))))

(assert (=> b!7150298 (= res!2916637 (dynLambda!28280 lambda!436098 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150299 () Bool)

(assert (=> b!7150299 (= e!4296364 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436098))))

(assert (= (and d!2228785 (not res!2916636)) b!7150298))

(assert (= (and b!7150298 res!2916637) b!7150299))

(declare-fun b_lambda!272989 () Bool)

(assert (=> (not b_lambda!272989) (not b!7150298)))

(declare-fun m!7861028 () Bool)

(assert (=> b!7150298 m!7861028))

(declare-fun m!7861030 () Bool)

(assert (=> b!7150299 m!7861030))

(assert (=> d!2228723 d!2228785))

(declare-fun bs!1889500 () Bool)

(declare-fun d!2228787 () Bool)

(assert (= bs!1889500 (and d!2228787 d!2228711)))

(declare-fun lambda!436111 () Int)

(assert (=> bs!1889500 (not (= lambda!436111 lambda!436092))))

(declare-fun bs!1889501 () Bool)

(assert (= bs!1889501 (and d!2228787 d!2228723)))

(assert (=> bs!1889501 (= lambda!436111 lambda!436098)))

(declare-fun bs!1889502 () Bool)

(assert (= bs!1889502 (and d!2228787 b!7150036)))

(assert (=> bs!1889502 (= lambda!436111 lambda!436078)))

(declare-fun bs!1889503 () Bool)

(assert (= bs!1889503 (and d!2228787 d!2228709)))

(assert (=> bs!1889503 (not (= lambda!436111 lambda!436091))))

(assert (=> bs!1889501 (not (= lambda!436111 lambda!436097))))

(declare-fun bs!1889504 () Bool)

(assert (= bs!1889504 (and d!2228787 start!697126)))

(assert (=> bs!1889504 (not (= lambda!436111 lambda!436077))))

(assert (=> d!2228787 (= (nullable!7729 (regTwo!36992 r!13911)) (forall!17080 (t!383561 l!9154) lambda!436111))))

(assert (=> d!2228787 true))

(declare-fun _$86!75 () Unit!163291)

(assert (=> d!2228787 (= (choose!55303 (regTwo!36992 r!13911) (t!383561 l!9154)) _$86!75)))

(declare-fun bs!1889505 () Bool)

(assert (= bs!1889505 d!2228787))

(assert (=> bs!1889505 m!7860854))

(declare-fun m!7861032 () Bool)

(assert (=> bs!1889505 m!7861032))

(assert (=> d!2228723 d!2228787))

(declare-fun d!2228789 () Bool)

(declare-fun res!2916638 () Bool)

(declare-fun e!4296365 () Bool)

(assert (=> d!2228789 (=> res!2916638 e!4296365)))

(assert (=> d!2228789 (= res!2916638 (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> d!2228789 (= (forall!17080 (t!383561 l!9154) lambda!436097) e!4296365)))

(declare-fun b!7150300 () Bool)

(declare-fun e!4296366 () Bool)

(assert (=> b!7150300 (= e!4296365 e!4296366)))

(declare-fun res!2916639 () Bool)

(assert (=> b!7150300 (=> (not res!2916639) (not e!4296366))))

(assert (=> b!7150300 (= res!2916639 (dynLambda!28280 lambda!436097 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150301 () Bool)

(assert (=> b!7150301 (= e!4296366 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436097))))

(assert (= (and d!2228789 (not res!2916638)) b!7150300))

(assert (= (and b!7150300 res!2916639) b!7150301))

(declare-fun b_lambda!272991 () Bool)

(assert (=> (not b_lambda!272991) (not b!7150300)))

(declare-fun m!7861034 () Bool)

(assert (=> b!7150300 m!7861034))

(declare-fun m!7861036 () Bool)

(assert (=> b!7150301 m!7861036))

(assert (=> d!2228723 d!2228789))

(declare-fun d!2228791 () Bool)

(assert (=> d!2228791 (= (isEmpty!40110 l!9154) (is-Nil!69420 l!9154))))

(assert (=> b!7150115 d!2228791))

(declare-fun d!2228793 () Bool)

(assert (=> d!2228793 (= (isConcat!1588 lt!2569076) (is-Concat!27085 lt!2569076))))

(assert (=> b!7150121 d!2228793))

(declare-fun bm!651492 () Bool)

(declare-fun call!651498 () Bool)

(declare-fun call!651499 () Bool)

(assert (=> bm!651492 (= call!651498 call!651499)))

(declare-fun b!7150302 () Bool)

(declare-fun e!4296373 () Bool)

(assert (=> b!7150302 (= e!4296373 call!651499)))

(declare-fun b!7150303 () Bool)

(declare-fun e!4296367 () Bool)

(declare-fun call!651497 () Bool)

(assert (=> b!7150303 (= e!4296367 call!651497)))

(declare-fun b!7150304 () Bool)

(declare-fun e!4296368 () Bool)

(assert (=> b!7150304 (= e!4296368 e!4296373)))

(declare-fun res!2916641 () Bool)

(assert (=> b!7150304 (= res!2916641 (not (nullable!7729 (reg!18569 lt!2569076))))))

(assert (=> b!7150304 (=> (not res!2916641) (not e!4296373))))

(declare-fun b!7150305 () Bool)

(declare-fun e!4296370 () Bool)

(assert (=> b!7150305 (= e!4296370 call!651497)))

(declare-fun b!7150307 () Bool)

(declare-fun res!2916643 () Bool)

(assert (=> b!7150307 (=> (not res!2916643) (not e!4296367))))

(assert (=> b!7150307 (= res!2916643 call!651498)))

(declare-fun e!4296371 () Bool)

(assert (=> b!7150307 (= e!4296371 e!4296367)))

(declare-fun b!7150308 () Bool)

(declare-fun e!4296369 () Bool)

(assert (=> b!7150308 (= e!4296369 e!4296368)))

(declare-fun c!1333114 () Bool)

(assert (=> b!7150308 (= c!1333114 (is-Star!18240 lt!2569076))))

(declare-fun b!7150309 () Bool)

(declare-fun res!2916642 () Bool)

(declare-fun e!4296372 () Bool)

(assert (=> b!7150309 (=> res!2916642 e!4296372)))

(assert (=> b!7150309 (= res!2916642 (not (is-Concat!27085 lt!2569076)))))

(assert (=> b!7150309 (= e!4296371 e!4296372)))

(declare-fun bm!651493 () Bool)

(declare-fun c!1333113 () Bool)

(assert (=> bm!651493 (= call!651499 (validRegex!9395 (ite c!1333114 (reg!18569 lt!2569076) (ite c!1333113 (regOne!36993 lt!2569076) (regOne!36992 lt!2569076)))))))

(declare-fun b!7150310 () Bool)

(assert (=> b!7150310 (= e!4296368 e!4296371)))

(assert (=> b!7150310 (= c!1333113 (is-Union!18240 lt!2569076))))

(declare-fun bm!651494 () Bool)

(assert (=> bm!651494 (= call!651497 (validRegex!9395 (ite c!1333113 (regTwo!36993 lt!2569076) (regTwo!36992 lt!2569076))))))

(declare-fun d!2228795 () Bool)

(declare-fun res!2916644 () Bool)

(assert (=> d!2228795 (=> res!2916644 e!4296369)))

(assert (=> d!2228795 (= res!2916644 (is-ElementMatch!18240 lt!2569076))))

(assert (=> d!2228795 (= (validRegex!9395 lt!2569076) e!4296369)))

(declare-fun b!7150306 () Bool)

(assert (=> b!7150306 (= e!4296372 e!4296370)))

(declare-fun res!2916640 () Bool)

(assert (=> b!7150306 (=> (not res!2916640) (not e!4296370))))

(assert (=> b!7150306 (= res!2916640 call!651498)))

(assert (= (and d!2228795 (not res!2916644)) b!7150308))

(assert (= (and b!7150308 c!1333114) b!7150304))

(assert (= (and b!7150308 (not c!1333114)) b!7150310))

(assert (= (and b!7150304 res!2916641) b!7150302))

(assert (= (and b!7150310 c!1333113) b!7150307))

(assert (= (and b!7150310 (not c!1333113)) b!7150309))

(assert (= (and b!7150307 res!2916643) b!7150303))

(assert (= (and b!7150309 (not res!2916642)) b!7150306))

(assert (= (and b!7150306 res!2916640) b!7150305))

(assert (= (or b!7150303 b!7150305) bm!651494))

(assert (= (or b!7150307 b!7150306) bm!651492))

(assert (= (or b!7150302 bm!651492) bm!651493))

(declare-fun m!7861038 () Bool)

(assert (=> b!7150304 m!7861038))

(declare-fun m!7861040 () Bool)

(assert (=> bm!651493 m!7861040))

(declare-fun m!7861042 () Bool)

(assert (=> bm!651494 m!7861042))

(assert (=> d!2228711 d!2228795))

(declare-fun d!2228797 () Bool)

(declare-fun res!2916645 () Bool)

(declare-fun e!4296374 () Bool)

(assert (=> d!2228797 (=> res!2916645 e!4296374)))

(assert (=> d!2228797 (= res!2916645 (is-Nil!69420 (t!383561 l!9154)))))

(assert (=> d!2228797 (= (forall!17080 (t!383561 l!9154) lambda!436092) e!4296374)))

(declare-fun b!7150311 () Bool)

(declare-fun e!4296375 () Bool)

(assert (=> b!7150311 (= e!4296374 e!4296375)))

(declare-fun res!2916646 () Bool)

(assert (=> b!7150311 (=> (not res!2916646) (not e!4296375))))

(assert (=> b!7150311 (= res!2916646 (dynLambda!28280 lambda!436092 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150312 () Bool)

(assert (=> b!7150312 (= e!4296375 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436092))))

(assert (= (and d!2228797 (not res!2916645)) b!7150311))

(assert (= (and b!7150311 res!2916646) b!7150312))

(declare-fun b_lambda!272993 () Bool)

(assert (=> (not b_lambda!272993) (not b!7150311)))

(declare-fun m!7861044 () Bool)

(assert (=> b!7150311 m!7861044))

(declare-fun m!7861046 () Bool)

(assert (=> b!7150312 m!7861046))

(assert (=> d!2228711 d!2228797))

(declare-fun bs!1889506 () Bool)

(declare-fun d!2228799 () Bool)

(assert (= bs!1889506 (and d!2228799 d!2228711)))

(declare-fun lambda!436112 () Int)

(assert (=> bs!1889506 (= lambda!436112 lambda!436092)))

(declare-fun bs!1889507 () Bool)

(assert (= bs!1889507 (and d!2228799 d!2228723)))

(assert (=> bs!1889507 (not (= lambda!436112 lambda!436098))))

(declare-fun bs!1889508 () Bool)

(assert (= bs!1889508 (and d!2228799 b!7150036)))

(assert (=> bs!1889508 (not (= lambda!436112 lambda!436078))))

(declare-fun bs!1889509 () Bool)

(assert (= bs!1889509 (and d!2228799 d!2228787)))

(assert (=> bs!1889509 (not (= lambda!436112 lambda!436111))))

(declare-fun bs!1889510 () Bool)

(assert (= bs!1889510 (and d!2228799 d!2228709)))

(assert (=> bs!1889510 (= lambda!436112 lambda!436091)))

(assert (=> bs!1889507 (= lambda!436112 lambda!436097)))

(declare-fun bs!1889511 () Bool)

(assert (= bs!1889511 (and d!2228799 start!697126)))

(assert (=> bs!1889511 (= lambda!436112 lambda!436077)))

(declare-fun b!7150313 () Bool)

(declare-fun e!4296381 () Regex!18240)

(declare-fun e!4296380 () Regex!18240)

(assert (=> b!7150313 (= e!4296381 e!4296380)))

(declare-fun c!1333118 () Bool)

(assert (=> b!7150313 (= c!1333118 (is-Cons!69420 (t!383561 (t!383561 l!9154))))))

(declare-fun b!7150314 () Bool)

(assert (=> b!7150314 (= e!4296381 (h!75868 (t!383561 (t!383561 l!9154))))))

(declare-fun b!7150315 () Bool)

(declare-fun e!4296379 () Bool)

(declare-fun e!4296378 () Bool)

(assert (=> b!7150315 (= e!4296379 e!4296378)))

(declare-fun c!1333116 () Bool)

(assert (=> b!7150315 (= c!1333116 (isEmpty!40110 (tail!14016 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150316 () Bool)

(declare-fun lt!2569087 () Regex!18240)

(assert (=> b!7150316 (= e!4296378 (= lt!2569087 (head!14547 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150317 () Bool)

(declare-fun e!4296376 () Bool)

(assert (=> b!7150317 (= e!4296376 (isEmpty!40110 (t!383561 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150318 () Bool)

(assert (=> b!7150318 (= e!4296378 (isConcat!1588 lt!2569087))))

(declare-fun b!7150319 () Bool)

(assert (=> b!7150319 (= e!4296380 EmptyExpr!18240)))

(declare-fun b!7150320 () Bool)

(assert (=> b!7150320 (= e!4296380 (Concat!27085 (h!75868 (t!383561 (t!383561 l!9154))) (generalisedConcat!2415 (t!383561 (t!383561 (t!383561 l!9154))))))))

(declare-fun b!7150321 () Bool)

(assert (=> b!7150321 (= e!4296379 (isEmptyExpr!2066 lt!2569087))))

(declare-fun e!4296377 () Bool)

(assert (=> d!2228799 e!4296377))

(declare-fun res!2916648 () Bool)

(assert (=> d!2228799 (=> (not res!2916648) (not e!4296377))))

(assert (=> d!2228799 (= res!2916648 (validRegex!9395 lt!2569087))))

(assert (=> d!2228799 (= lt!2569087 e!4296381)))

(declare-fun c!1333117 () Bool)

(assert (=> d!2228799 (= c!1333117 e!4296376)))

(declare-fun res!2916647 () Bool)

(assert (=> d!2228799 (=> (not res!2916647) (not e!4296376))))

(assert (=> d!2228799 (= res!2916647 (is-Cons!69420 (t!383561 (t!383561 l!9154))))))

(assert (=> d!2228799 (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436112)))

(assert (=> d!2228799 (= (generalisedConcat!2415 (t!383561 (t!383561 l!9154))) lt!2569087)))

(declare-fun b!7150322 () Bool)

(assert (=> b!7150322 (= e!4296377 e!4296379)))

(declare-fun c!1333115 () Bool)

(assert (=> b!7150322 (= c!1333115 (isEmpty!40110 (t!383561 (t!383561 l!9154))))))

(assert (= (and d!2228799 res!2916647) b!7150317))

(assert (= (and d!2228799 c!1333117) b!7150314))

(assert (= (and d!2228799 (not c!1333117)) b!7150313))

(assert (= (and b!7150313 c!1333118) b!7150320))

(assert (= (and b!7150313 (not c!1333118)) b!7150319))

(assert (= (and d!2228799 res!2916648) b!7150322))

(assert (= (and b!7150322 c!1333115) b!7150321))

(assert (= (and b!7150322 (not c!1333115)) b!7150315))

(assert (= (and b!7150315 c!1333116) b!7150316))

(assert (= (and b!7150315 (not c!1333116)) b!7150318))

(assert (=> b!7150322 m!7860908))

(declare-fun m!7861048 () Bool)

(assert (=> b!7150316 m!7861048))

(declare-fun m!7861050 () Bool)

(assert (=> b!7150317 m!7861050))

(declare-fun m!7861052 () Bool)

(assert (=> b!7150320 m!7861052))

(declare-fun m!7861054 () Bool)

(assert (=> b!7150315 m!7861054))

(assert (=> b!7150315 m!7861054))

(declare-fun m!7861056 () Bool)

(assert (=> b!7150315 m!7861056))

(declare-fun m!7861058 () Bool)

(assert (=> b!7150321 m!7861058))

(declare-fun m!7861060 () Bool)

(assert (=> b!7150318 m!7861060))

(declare-fun m!7861062 () Bool)

(assert (=> d!2228799 m!7861062))

(declare-fun m!7861064 () Bool)

(assert (=> d!2228799 m!7861064))

(assert (=> b!7150123 d!2228799))

(declare-fun b!7150337 () Bool)

(declare-fun e!4296397 () Bool)

(declare-fun e!4296395 () Bool)

(assert (=> b!7150337 (= e!4296397 e!4296395)))

(declare-fun c!1333121 () Bool)

(assert (=> b!7150337 (= c!1333121 (is-Union!18240 (regTwo!36992 r!13911)))))

(declare-fun bm!651499 () Bool)

(declare-fun call!651505 () Bool)

(assert (=> bm!651499 (= call!651505 (nullable!7729 (ite c!1333121 (regTwo!36993 (regTwo!36992 r!13911)) (regOne!36992 (regTwo!36992 r!13911)))))))

(declare-fun b!7150338 () Bool)

(declare-fun e!4296396 () Bool)

(assert (=> b!7150338 (= e!4296395 e!4296396)))

(declare-fun res!2916663 () Bool)

(assert (=> b!7150338 (= res!2916663 call!651505)))

(assert (=> b!7150338 (=> (not res!2916663) (not e!4296396))))

(declare-fun b!7150339 () Bool)

(declare-fun e!4296394 () Bool)

(assert (=> b!7150339 (= e!4296395 e!4296394)))

(declare-fun res!2916660 () Bool)

(declare-fun call!651504 () Bool)

(assert (=> b!7150339 (= res!2916660 call!651504)))

(assert (=> b!7150339 (=> res!2916660 e!4296394)))

(declare-fun b!7150340 () Bool)

(assert (=> b!7150340 (= e!4296396 call!651504)))

(declare-fun b!7150341 () Bool)

(declare-fun e!4296398 () Bool)

(assert (=> b!7150341 (= e!4296398 e!4296397)))

(declare-fun res!2916661 () Bool)

(assert (=> b!7150341 (=> res!2916661 e!4296397)))

(assert (=> b!7150341 (= res!2916661 (is-Star!18240 (regTwo!36992 r!13911)))))

(declare-fun b!7150342 () Bool)

(declare-fun e!4296399 () Bool)

(assert (=> b!7150342 (= e!4296399 e!4296398)))

(declare-fun res!2916662 () Bool)

(assert (=> b!7150342 (=> (not res!2916662) (not e!4296398))))

(assert (=> b!7150342 (= res!2916662 (and (not (is-EmptyLang!18240 (regTwo!36992 r!13911))) (not (is-ElementMatch!18240 (regTwo!36992 r!13911)))))))

(declare-fun d!2228801 () Bool)

(declare-fun res!2916659 () Bool)

(assert (=> d!2228801 (=> res!2916659 e!4296399)))

(assert (=> d!2228801 (= res!2916659 (is-EmptyExpr!18240 (regTwo!36992 r!13911)))))

(assert (=> d!2228801 (= (nullableFct!3007 (regTwo!36992 r!13911)) e!4296399)))

(declare-fun b!7150343 () Bool)

(assert (=> b!7150343 (= e!4296394 call!651505)))

(declare-fun bm!651500 () Bool)

(assert (=> bm!651500 (= call!651504 (nullable!7729 (ite c!1333121 (regOne!36993 (regTwo!36992 r!13911)) (regTwo!36992 (regTwo!36992 r!13911)))))))

(assert (= (and d!2228801 (not res!2916659)) b!7150342))

(assert (= (and b!7150342 res!2916662) b!7150341))

(assert (= (and b!7150341 (not res!2916661)) b!7150337))

(assert (= (and b!7150337 c!1333121) b!7150339))

(assert (= (and b!7150337 (not c!1333121)) b!7150338))

(assert (= (and b!7150339 (not res!2916660)) b!7150343))

(assert (= (and b!7150338 res!2916663) b!7150340))

(assert (= (or b!7150343 b!7150338) bm!651499))

(assert (= (or b!7150339 b!7150340) bm!651500))

(declare-fun m!7861066 () Bool)

(assert (=> bm!651499 m!7861066))

(declare-fun m!7861068 () Bool)

(assert (=> bm!651500 m!7861068))

(assert (=> d!2228719 d!2228801))

(declare-fun d!2228803 () Bool)

(assert (=> d!2228803 (= (isEmptyExpr!2066 lt!2569076) (is-EmptyExpr!18240 lt!2569076))))

(assert (=> b!7150124 d!2228803))

(declare-fun bm!651501 () Bool)

(declare-fun call!651507 () Bool)

(declare-fun call!651508 () Bool)

(assert (=> bm!651501 (= call!651507 call!651508)))

(declare-fun b!7150344 () Bool)

(declare-fun e!4296406 () Bool)

(assert (=> b!7150344 (= e!4296406 call!651508)))

(declare-fun b!7150345 () Bool)

(declare-fun e!4296400 () Bool)

(declare-fun call!651506 () Bool)

(assert (=> b!7150345 (= e!4296400 call!651506)))

(declare-fun b!7150346 () Bool)

(declare-fun e!4296401 () Bool)

(assert (=> b!7150346 (= e!4296401 e!4296406)))

(declare-fun res!2916665 () Bool)

(assert (=> b!7150346 (= res!2916665 (not (nullable!7729 (reg!18569 (h!75868 (t!383561 l!9154))))))))

(assert (=> b!7150346 (=> (not res!2916665) (not e!4296406))))

(declare-fun b!7150347 () Bool)

(declare-fun e!4296403 () Bool)

(assert (=> b!7150347 (= e!4296403 call!651506)))

(declare-fun b!7150349 () Bool)

(declare-fun res!2916667 () Bool)

(assert (=> b!7150349 (=> (not res!2916667) (not e!4296400))))

(assert (=> b!7150349 (= res!2916667 call!651507)))

(declare-fun e!4296404 () Bool)

(assert (=> b!7150349 (= e!4296404 e!4296400)))

(declare-fun b!7150350 () Bool)

(declare-fun e!4296402 () Bool)

(assert (=> b!7150350 (= e!4296402 e!4296401)))

(declare-fun c!1333123 () Bool)

(assert (=> b!7150350 (= c!1333123 (is-Star!18240 (h!75868 (t!383561 l!9154))))))

(declare-fun b!7150351 () Bool)

(declare-fun res!2916666 () Bool)

(declare-fun e!4296405 () Bool)

(assert (=> b!7150351 (=> res!2916666 e!4296405)))

(assert (=> b!7150351 (= res!2916666 (not (is-Concat!27085 (h!75868 (t!383561 l!9154)))))))

(assert (=> b!7150351 (= e!4296404 e!4296405)))

(declare-fun bm!651502 () Bool)

(declare-fun c!1333122 () Bool)

(assert (=> bm!651502 (= call!651508 (validRegex!9395 (ite c!1333123 (reg!18569 (h!75868 (t!383561 l!9154))) (ite c!1333122 (regOne!36993 (h!75868 (t!383561 l!9154))) (regOne!36992 (h!75868 (t!383561 l!9154)))))))))

(declare-fun b!7150352 () Bool)

(assert (=> b!7150352 (= e!4296401 e!4296404)))

(assert (=> b!7150352 (= c!1333122 (is-Union!18240 (h!75868 (t!383561 l!9154))))))

(declare-fun bm!651503 () Bool)

(assert (=> bm!651503 (= call!651506 (validRegex!9395 (ite c!1333122 (regTwo!36993 (h!75868 (t!383561 l!9154))) (regTwo!36992 (h!75868 (t!383561 l!9154))))))))

(declare-fun d!2228805 () Bool)

(declare-fun res!2916668 () Bool)

(assert (=> d!2228805 (=> res!2916668 e!4296402)))

(assert (=> d!2228805 (= res!2916668 (is-ElementMatch!18240 (h!75868 (t!383561 l!9154))))))

(assert (=> d!2228805 (= (validRegex!9395 (h!75868 (t!383561 l!9154))) e!4296402)))

(declare-fun b!7150348 () Bool)

(assert (=> b!7150348 (= e!4296405 e!4296403)))

(declare-fun res!2916664 () Bool)

(assert (=> b!7150348 (=> (not res!2916664) (not e!4296403))))

(assert (=> b!7150348 (= res!2916664 call!651507)))

(assert (= (and d!2228805 (not res!2916668)) b!7150350))

(assert (= (and b!7150350 c!1333123) b!7150346))

(assert (= (and b!7150350 (not c!1333123)) b!7150352))

(assert (= (and b!7150346 res!2916665) b!7150344))

(assert (= (and b!7150352 c!1333122) b!7150349))

(assert (= (and b!7150352 (not c!1333122)) b!7150351))

(assert (= (and b!7150349 res!2916667) b!7150345))

(assert (= (and b!7150351 (not res!2916666)) b!7150348))

(assert (= (and b!7150348 res!2916664) b!7150347))

(assert (= (or b!7150345 b!7150347) bm!651503))

(assert (= (or b!7150349 b!7150348) bm!651501))

(assert (= (or b!7150344 bm!651501) bm!651502))

(declare-fun m!7861070 () Bool)

(assert (=> b!7150346 m!7861070))

(declare-fun m!7861072 () Bool)

(assert (=> bm!651502 m!7861072))

(declare-fun m!7861074 () Bool)

(assert (=> bm!651503 m!7861074))

(assert (=> bs!1889482 d!2228805))

(assert (=> b!7150125 d!2228715))

(declare-fun d!2228807 () Bool)

(assert (=> d!2228807 (= (nullable!7729 (h!75868 l!9154)) (nullableFct!3007 (h!75868 l!9154)))))

(declare-fun bs!1889512 () Bool)

(assert (= bs!1889512 d!2228807))

(declare-fun m!7861076 () Bool)

(assert (=> bs!1889512 m!7861076))

(assert (=> bs!1889483 d!2228807))

(declare-fun d!2228809 () Bool)

(declare-fun res!2916669 () Bool)

(declare-fun e!4296407 () Bool)

(assert (=> d!2228809 (=> res!2916669 e!4296407)))

(assert (=> d!2228809 (= res!2916669 (is-Nil!69420 (t!383561 (t!383561 l!9154))))))

(assert (=> d!2228809 (= (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436077) e!4296407)))

(declare-fun b!7150353 () Bool)

(declare-fun e!4296408 () Bool)

(assert (=> b!7150353 (= e!4296407 e!4296408)))

(declare-fun res!2916670 () Bool)

(assert (=> b!7150353 (=> (not res!2916670) (not e!4296408))))

(assert (=> b!7150353 (= res!2916670 (dynLambda!28280 lambda!436077 (h!75868 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150354 () Bool)

(assert (=> b!7150354 (= e!4296408 (forall!17080 (t!383561 (t!383561 (t!383561 l!9154))) lambda!436077))))

(assert (= (and d!2228809 (not res!2916669)) b!7150353))

(assert (= (and b!7150353 res!2916670) b!7150354))

(declare-fun b_lambda!272995 () Bool)

(assert (=> (not b_lambda!272995) (not b!7150353)))

(declare-fun m!7861078 () Bool)

(assert (=> b!7150353 m!7861078))

(declare-fun m!7861080 () Bool)

(assert (=> b!7150354 m!7861080))

(assert (=> b!7150085 d!2228809))

(declare-fun d!2228811 () Bool)

(declare-fun res!2916671 () Bool)

(declare-fun e!4296409 () Bool)

(assert (=> d!2228811 (=> res!2916671 e!4296409)))

(assert (=> d!2228811 (= res!2916671 (is-Nil!69420 (t!383561 (t!383561 l!9154))))))

(assert (=> d!2228811 (= (forall!17080 (t!383561 (t!383561 l!9154)) lambda!436078) e!4296409)))

(declare-fun b!7150355 () Bool)

(declare-fun e!4296410 () Bool)

(assert (=> b!7150355 (= e!4296409 e!4296410)))

(declare-fun res!2916672 () Bool)

(assert (=> b!7150355 (=> (not res!2916672) (not e!4296410))))

(assert (=> b!7150355 (= res!2916672 (dynLambda!28280 lambda!436078 (h!75868 (t!383561 (t!383561 l!9154)))))))

(declare-fun b!7150356 () Bool)

(assert (=> b!7150356 (= e!4296410 (forall!17080 (t!383561 (t!383561 (t!383561 l!9154))) lambda!436078))))

(assert (= (and d!2228811 (not res!2916671)) b!7150355))

(assert (= (and b!7150355 res!2916672) b!7150356))

(declare-fun b_lambda!272997 () Bool)

(assert (=> (not b_lambda!272997) (not b!7150355)))

(declare-fun m!7861082 () Bool)

(assert (=> b!7150355 m!7861082))

(declare-fun m!7861084 () Bool)

(assert (=> b!7150356 m!7861084))

(assert (=> b!7150127 d!2228811))

(declare-fun d!2228813 () Bool)

(assert (=> d!2228813 (= (nullable!7729 (h!75868 (t!383561 l!9154))) (nullableFct!3007 (h!75868 (t!383561 l!9154))))))

(declare-fun bs!1889513 () Bool)

(assert (= bs!1889513 d!2228813))

(declare-fun m!7861086 () Bool)

(assert (=> bs!1889513 m!7861086))

(assert (=> bs!1889484 d!2228813))

(declare-fun b!7150357 () Bool)

(declare-fun e!4296414 () Bool)

(declare-fun e!4296412 () Bool)

(assert (=> b!7150357 (= e!4296414 e!4296412)))

(declare-fun c!1333124 () Bool)

(assert (=> b!7150357 (= c!1333124 (is-Union!18240 r!13911))))

(declare-fun bm!651504 () Bool)

(declare-fun call!651510 () Bool)

(assert (=> bm!651504 (= call!651510 (nullable!7729 (ite c!1333124 (regTwo!36993 r!13911) (regOne!36992 r!13911))))))

(declare-fun b!7150358 () Bool)

(declare-fun e!4296413 () Bool)

(assert (=> b!7150358 (= e!4296412 e!4296413)))

(declare-fun res!2916677 () Bool)

(assert (=> b!7150358 (= res!2916677 call!651510)))

(assert (=> b!7150358 (=> (not res!2916677) (not e!4296413))))

(declare-fun b!7150359 () Bool)

(declare-fun e!4296411 () Bool)

(assert (=> b!7150359 (= e!4296412 e!4296411)))

(declare-fun res!2916674 () Bool)

(declare-fun call!651509 () Bool)

(assert (=> b!7150359 (= res!2916674 call!651509)))

(assert (=> b!7150359 (=> res!2916674 e!4296411)))

(declare-fun b!7150360 () Bool)

(assert (=> b!7150360 (= e!4296413 call!651509)))

(declare-fun b!7150361 () Bool)

(declare-fun e!4296415 () Bool)

(assert (=> b!7150361 (= e!4296415 e!4296414)))

(declare-fun res!2916675 () Bool)

(assert (=> b!7150361 (=> res!2916675 e!4296414)))

(assert (=> b!7150361 (= res!2916675 (is-Star!18240 r!13911))))

(declare-fun b!7150362 () Bool)

(declare-fun e!4296416 () Bool)

(assert (=> b!7150362 (= e!4296416 e!4296415)))

(declare-fun res!2916676 () Bool)

(assert (=> b!7150362 (=> (not res!2916676) (not e!4296415))))

(assert (=> b!7150362 (= res!2916676 (and (not (is-EmptyLang!18240 r!13911)) (not (is-ElementMatch!18240 r!13911))))))

(declare-fun d!2228815 () Bool)

(declare-fun res!2916673 () Bool)

(assert (=> d!2228815 (=> res!2916673 e!4296416)))

(assert (=> d!2228815 (= res!2916673 (is-EmptyExpr!18240 r!13911))))

(assert (=> d!2228815 (= (nullableFct!3007 r!13911) e!4296416)))

(declare-fun b!7150363 () Bool)

(assert (=> b!7150363 (= e!4296411 call!651510)))

(declare-fun bm!651505 () Bool)

(assert (=> bm!651505 (= call!651509 (nullable!7729 (ite c!1333124 (regOne!36993 r!13911) (regTwo!36992 r!13911))))))

(assert (= (and d!2228815 (not res!2916673)) b!7150362))

(assert (= (and b!7150362 res!2916676) b!7150361))

(assert (= (and b!7150361 (not res!2916675)) b!7150357))

(assert (= (and b!7150357 c!1333124) b!7150359))

(assert (= (and b!7150357 (not c!1333124)) b!7150358))

(assert (= (and b!7150359 (not res!2916674)) b!7150363))

(assert (= (and b!7150358 res!2916677) b!7150360))

(assert (= (or b!7150363 b!7150358) bm!651504))

(assert (= (or b!7150359 b!7150360) bm!651505))

(declare-fun m!7861088 () Bool)

(assert (=> bm!651504 m!7861088))

(declare-fun m!7861090 () Bool)

(assert (=> bm!651505 m!7861090))

(assert (=> d!2228717 d!2228815))

(declare-fun b!7150367 () Bool)

(declare-fun e!4296417 () Bool)

(declare-fun tp!1974289 () Bool)

(declare-fun tp!1974290 () Bool)

(assert (=> b!7150367 (= e!4296417 (and tp!1974289 tp!1974290))))

(declare-fun b!7150366 () Bool)

(declare-fun tp!1974286 () Bool)

(assert (=> b!7150366 (= e!4296417 tp!1974286)))

(assert (=> b!7150173 (= tp!1974235 e!4296417)))

(declare-fun b!7150365 () Bool)

(declare-fun tp!1974288 () Bool)

(declare-fun tp!1974287 () Bool)

(assert (=> b!7150365 (= e!4296417 (and tp!1974288 tp!1974287))))

(declare-fun b!7150364 () Bool)

(assert (=> b!7150364 (= e!4296417 tp_is_empty!46117)))

(assert (= (and b!7150173 (is-ElementMatch!18240 (reg!18569 (reg!18569 r!13911)))) b!7150364))

(assert (= (and b!7150173 (is-Concat!27085 (reg!18569 (reg!18569 r!13911)))) b!7150365))

(assert (= (and b!7150173 (is-Star!18240 (reg!18569 (reg!18569 r!13911)))) b!7150366))

(assert (= (and b!7150173 (is-Union!18240 (reg!18569 (reg!18569 r!13911)))) b!7150367))

(declare-fun b!7150371 () Bool)

(declare-fun e!4296418 () Bool)

(declare-fun tp!1974294 () Bool)

(declare-fun tp!1974295 () Bool)

(assert (=> b!7150371 (= e!4296418 (and tp!1974294 tp!1974295))))

(declare-fun b!7150370 () Bool)

(declare-fun tp!1974291 () Bool)

(assert (=> b!7150370 (= e!4296418 tp!1974291)))

(assert (=> b!7150174 (= tp!1974238 e!4296418)))

(declare-fun b!7150369 () Bool)

(declare-fun tp!1974293 () Bool)

(declare-fun tp!1974292 () Bool)

(assert (=> b!7150369 (= e!4296418 (and tp!1974293 tp!1974292))))

(declare-fun b!7150368 () Bool)

(assert (=> b!7150368 (= e!4296418 tp_is_empty!46117)))

(assert (= (and b!7150174 (is-ElementMatch!18240 (regOne!36993 (reg!18569 r!13911)))) b!7150368))

(assert (= (and b!7150174 (is-Concat!27085 (regOne!36993 (reg!18569 r!13911)))) b!7150369))

(assert (= (and b!7150174 (is-Star!18240 (regOne!36993 (reg!18569 r!13911)))) b!7150370))

(assert (= (and b!7150174 (is-Union!18240 (regOne!36993 (reg!18569 r!13911)))) b!7150371))

(declare-fun b!7150375 () Bool)

(declare-fun e!4296419 () Bool)

(declare-fun tp!1974299 () Bool)

(declare-fun tp!1974300 () Bool)

(assert (=> b!7150375 (= e!4296419 (and tp!1974299 tp!1974300))))

(declare-fun b!7150374 () Bool)

(declare-fun tp!1974296 () Bool)

(assert (=> b!7150374 (= e!4296419 tp!1974296)))

(assert (=> b!7150174 (= tp!1974239 e!4296419)))

(declare-fun b!7150373 () Bool)

(declare-fun tp!1974298 () Bool)

(declare-fun tp!1974297 () Bool)

(assert (=> b!7150373 (= e!4296419 (and tp!1974298 tp!1974297))))

(declare-fun b!7150372 () Bool)

(assert (=> b!7150372 (= e!4296419 tp_is_empty!46117)))

(assert (= (and b!7150174 (is-ElementMatch!18240 (regTwo!36993 (reg!18569 r!13911)))) b!7150372))

(assert (= (and b!7150174 (is-Concat!27085 (regTwo!36993 (reg!18569 r!13911)))) b!7150373))

(assert (= (and b!7150174 (is-Star!18240 (regTwo!36993 (reg!18569 r!13911)))) b!7150374))

(assert (= (and b!7150174 (is-Union!18240 (regTwo!36993 (reg!18569 r!13911)))) b!7150375))

(declare-fun b!7150379 () Bool)

(declare-fun e!4296420 () Bool)

(declare-fun tp!1974304 () Bool)

(declare-fun tp!1974305 () Bool)

(assert (=> b!7150379 (= e!4296420 (and tp!1974304 tp!1974305))))

(declare-fun b!7150378 () Bool)

(declare-fun tp!1974301 () Bool)

(assert (=> b!7150378 (= e!4296420 tp!1974301)))

(assert (=> b!7150149 (= tp!1974211 e!4296420)))

(declare-fun b!7150377 () Bool)

(declare-fun tp!1974303 () Bool)

(declare-fun tp!1974302 () Bool)

(assert (=> b!7150377 (= e!4296420 (and tp!1974303 tp!1974302))))

(declare-fun b!7150376 () Bool)

(assert (=> b!7150376 (= e!4296420 tp_is_empty!46117)))

(assert (= (and b!7150149 (is-ElementMatch!18240 (regOne!36992 (regTwo!36993 r!13911)))) b!7150376))

(assert (= (and b!7150149 (is-Concat!27085 (regOne!36992 (regTwo!36993 r!13911)))) b!7150377))

(assert (= (and b!7150149 (is-Star!18240 (regOne!36992 (regTwo!36993 r!13911)))) b!7150378))

(assert (= (and b!7150149 (is-Union!18240 (regOne!36992 (regTwo!36993 r!13911)))) b!7150379))

(declare-fun b!7150383 () Bool)

(declare-fun e!4296421 () Bool)

(declare-fun tp!1974309 () Bool)

(declare-fun tp!1974310 () Bool)

(assert (=> b!7150383 (= e!4296421 (and tp!1974309 tp!1974310))))

(declare-fun b!7150382 () Bool)

(declare-fun tp!1974306 () Bool)

(assert (=> b!7150382 (= e!4296421 tp!1974306)))

(assert (=> b!7150149 (= tp!1974210 e!4296421)))

(declare-fun b!7150381 () Bool)

(declare-fun tp!1974308 () Bool)

(declare-fun tp!1974307 () Bool)

(assert (=> b!7150381 (= e!4296421 (and tp!1974308 tp!1974307))))

(declare-fun b!7150380 () Bool)

(assert (=> b!7150380 (= e!4296421 tp_is_empty!46117)))

(assert (= (and b!7150149 (is-ElementMatch!18240 (regTwo!36992 (regTwo!36993 r!13911)))) b!7150380))

(assert (= (and b!7150149 (is-Concat!27085 (regTwo!36992 (regTwo!36993 r!13911)))) b!7150381))

(assert (= (and b!7150149 (is-Star!18240 (regTwo!36992 (regTwo!36993 r!13911)))) b!7150382))

(assert (= (and b!7150149 (is-Union!18240 (regTwo!36992 (regTwo!36993 r!13911)))) b!7150383))

(declare-fun b!7150387 () Bool)

(declare-fun e!4296422 () Bool)

(declare-fun tp!1974314 () Bool)

(declare-fun tp!1974315 () Bool)

(assert (=> b!7150387 (= e!4296422 (and tp!1974314 tp!1974315))))

(declare-fun b!7150386 () Bool)

(declare-fun tp!1974311 () Bool)

(assert (=> b!7150386 (= e!4296422 tp!1974311)))

(assert (=> b!7150154 (= tp!1974214 e!4296422)))

(declare-fun b!7150385 () Bool)

(declare-fun tp!1974313 () Bool)

(declare-fun tp!1974312 () Bool)

(assert (=> b!7150385 (= e!4296422 (and tp!1974313 tp!1974312))))

(declare-fun b!7150384 () Bool)

(assert (=> b!7150384 (= e!4296422 tp_is_empty!46117)))

(assert (= (and b!7150154 (is-ElementMatch!18240 (reg!18569 (h!75868 l!9154)))) b!7150384))

(assert (= (and b!7150154 (is-Concat!27085 (reg!18569 (h!75868 l!9154)))) b!7150385))

(assert (= (and b!7150154 (is-Star!18240 (reg!18569 (h!75868 l!9154)))) b!7150386))

(assert (= (and b!7150154 (is-Union!18240 (reg!18569 (h!75868 l!9154)))) b!7150387))

(declare-fun b!7150391 () Bool)

(declare-fun e!4296423 () Bool)

(declare-fun tp!1974319 () Bool)

(declare-fun tp!1974320 () Bool)

(assert (=> b!7150391 (= e!4296423 (and tp!1974319 tp!1974320))))

(declare-fun b!7150390 () Bool)

(declare-fun tp!1974316 () Bool)

(assert (=> b!7150390 (= e!4296423 tp!1974316)))

(assert (=> b!7150153 (= tp!1974216 e!4296423)))

(declare-fun b!7150389 () Bool)

(declare-fun tp!1974318 () Bool)

(declare-fun tp!1974317 () Bool)

(assert (=> b!7150389 (= e!4296423 (and tp!1974318 tp!1974317))))

(declare-fun b!7150388 () Bool)

(assert (=> b!7150388 (= e!4296423 tp_is_empty!46117)))

(assert (= (and b!7150153 (is-ElementMatch!18240 (regOne!36992 (h!75868 l!9154)))) b!7150388))

(assert (= (and b!7150153 (is-Concat!27085 (regOne!36992 (h!75868 l!9154)))) b!7150389))

(assert (= (and b!7150153 (is-Star!18240 (regOne!36992 (h!75868 l!9154)))) b!7150390))

(assert (= (and b!7150153 (is-Union!18240 (regOne!36992 (h!75868 l!9154)))) b!7150391))

(declare-fun b!7150395 () Bool)

(declare-fun e!4296424 () Bool)

(declare-fun tp!1974324 () Bool)

(declare-fun tp!1974325 () Bool)

(assert (=> b!7150395 (= e!4296424 (and tp!1974324 tp!1974325))))

(declare-fun b!7150394 () Bool)

(declare-fun tp!1974321 () Bool)

(assert (=> b!7150394 (= e!4296424 tp!1974321)))

(assert (=> b!7150153 (= tp!1974215 e!4296424)))

(declare-fun b!7150393 () Bool)

(declare-fun tp!1974323 () Bool)

(declare-fun tp!1974322 () Bool)

(assert (=> b!7150393 (= e!4296424 (and tp!1974323 tp!1974322))))

(declare-fun b!7150392 () Bool)

(assert (=> b!7150392 (= e!4296424 tp_is_empty!46117)))

(assert (= (and b!7150153 (is-ElementMatch!18240 (regTwo!36992 (h!75868 l!9154)))) b!7150392))

(assert (= (and b!7150153 (is-Concat!27085 (regTwo!36992 (h!75868 l!9154)))) b!7150393))

(assert (= (and b!7150153 (is-Star!18240 (regTwo!36992 (h!75868 l!9154)))) b!7150394))

(assert (= (and b!7150153 (is-Union!18240 (regTwo!36992 (h!75868 l!9154)))) b!7150395))

(declare-fun b!7150399 () Bool)

(declare-fun e!4296425 () Bool)

(declare-fun tp!1974329 () Bool)

(declare-fun tp!1974330 () Bool)

(assert (=> b!7150399 (= e!4296425 (and tp!1974329 tp!1974330))))

(declare-fun b!7150398 () Bool)

(declare-fun tp!1974326 () Bool)

(assert (=> b!7150398 (= e!4296425 tp!1974326)))

(assert (=> b!7150164 (= tp!1974227 e!4296425)))

(declare-fun b!7150397 () Bool)

(declare-fun tp!1974328 () Bool)

(declare-fun tp!1974327 () Bool)

(assert (=> b!7150397 (= e!4296425 (and tp!1974328 tp!1974327))))

(declare-fun b!7150396 () Bool)

(assert (=> b!7150396 (= e!4296425 tp_is_empty!46117)))

(assert (= (and b!7150164 (is-ElementMatch!18240 (regOne!36992 (regOne!36992 r!13911)))) b!7150396))

(assert (= (and b!7150164 (is-Concat!27085 (regOne!36992 (regOne!36992 r!13911)))) b!7150397))

(assert (= (and b!7150164 (is-Star!18240 (regOne!36992 (regOne!36992 r!13911)))) b!7150398))

(assert (= (and b!7150164 (is-Union!18240 (regOne!36992 (regOne!36992 r!13911)))) b!7150399))

(declare-fun b!7150403 () Bool)

(declare-fun e!4296426 () Bool)

(declare-fun tp!1974334 () Bool)

(declare-fun tp!1974335 () Bool)

(assert (=> b!7150403 (= e!4296426 (and tp!1974334 tp!1974335))))

(declare-fun b!7150402 () Bool)

(declare-fun tp!1974331 () Bool)

(assert (=> b!7150402 (= e!4296426 tp!1974331)))

(assert (=> b!7150164 (= tp!1974226 e!4296426)))

(declare-fun b!7150401 () Bool)

(declare-fun tp!1974333 () Bool)

(declare-fun tp!1974332 () Bool)

(assert (=> b!7150401 (= e!4296426 (and tp!1974333 tp!1974332))))

(declare-fun b!7150400 () Bool)

(assert (=> b!7150400 (= e!4296426 tp_is_empty!46117)))

(assert (= (and b!7150164 (is-ElementMatch!18240 (regTwo!36992 (regOne!36992 r!13911)))) b!7150400))

(assert (= (and b!7150164 (is-Concat!27085 (regTwo!36992 (regOne!36992 r!13911)))) b!7150401))

(assert (= (and b!7150164 (is-Star!18240 (regTwo!36992 (regOne!36992 r!13911)))) b!7150402))

(assert (= (and b!7150164 (is-Union!18240 (regTwo!36992 (regOne!36992 r!13911)))) b!7150403))

(declare-fun b!7150407 () Bool)

(declare-fun e!4296427 () Bool)

(declare-fun tp!1974339 () Bool)

(declare-fun tp!1974340 () Bool)

(assert (=> b!7150407 (= e!4296427 (and tp!1974339 tp!1974340))))

(declare-fun b!7150406 () Bool)

(declare-fun tp!1974336 () Bool)

(assert (=> b!7150406 (= e!4296427 tp!1974336)))

(assert (=> b!7150155 (= tp!1974217 e!4296427)))

(declare-fun b!7150405 () Bool)

(declare-fun tp!1974338 () Bool)

(declare-fun tp!1974337 () Bool)

(assert (=> b!7150405 (= e!4296427 (and tp!1974338 tp!1974337))))

(declare-fun b!7150404 () Bool)

(assert (=> b!7150404 (= e!4296427 tp_is_empty!46117)))

(assert (= (and b!7150155 (is-ElementMatch!18240 (regOne!36993 (h!75868 l!9154)))) b!7150404))

(assert (= (and b!7150155 (is-Concat!27085 (regOne!36993 (h!75868 l!9154)))) b!7150405))

(assert (= (and b!7150155 (is-Star!18240 (regOne!36993 (h!75868 l!9154)))) b!7150406))

(assert (= (and b!7150155 (is-Union!18240 (regOne!36993 (h!75868 l!9154)))) b!7150407))

(declare-fun b!7150411 () Bool)

(declare-fun e!4296428 () Bool)

(declare-fun tp!1974344 () Bool)

(declare-fun tp!1974345 () Bool)

(assert (=> b!7150411 (= e!4296428 (and tp!1974344 tp!1974345))))

(declare-fun b!7150410 () Bool)

(declare-fun tp!1974341 () Bool)

(assert (=> b!7150410 (= e!4296428 tp!1974341)))

(assert (=> b!7150155 (= tp!1974218 e!4296428)))

(declare-fun b!7150409 () Bool)

(declare-fun tp!1974343 () Bool)

(declare-fun tp!1974342 () Bool)

(assert (=> b!7150409 (= e!4296428 (and tp!1974343 tp!1974342))))

(declare-fun b!7150408 () Bool)

(assert (=> b!7150408 (= e!4296428 tp_is_empty!46117)))

(assert (= (and b!7150155 (is-ElementMatch!18240 (regTwo!36993 (h!75868 l!9154)))) b!7150408))

(assert (= (and b!7150155 (is-Concat!27085 (regTwo!36993 (h!75868 l!9154)))) b!7150409))

(assert (= (and b!7150155 (is-Star!18240 (regTwo!36993 (h!75868 l!9154)))) b!7150410))

(assert (= (and b!7150155 (is-Union!18240 (regTwo!36993 (h!75868 l!9154)))) b!7150411))

(declare-fun b!7150415 () Bool)

(declare-fun e!4296429 () Bool)

(declare-fun tp!1974349 () Bool)

(declare-fun tp!1974350 () Bool)

(assert (=> b!7150415 (= e!4296429 (and tp!1974349 tp!1974350))))

(declare-fun b!7150414 () Bool)

(declare-fun tp!1974346 () Bool)

(assert (=> b!7150414 (= e!4296429 tp!1974346)))

(assert (=> b!7150146 (= tp!1974204 e!4296429)))

(declare-fun b!7150413 () Bool)

(declare-fun tp!1974348 () Bool)

(declare-fun tp!1974347 () Bool)

(assert (=> b!7150413 (= e!4296429 (and tp!1974348 tp!1974347))))

(declare-fun b!7150412 () Bool)

(assert (=> b!7150412 (= e!4296429 tp_is_empty!46117)))

(assert (= (and b!7150146 (is-ElementMatch!18240 (reg!18569 (regOne!36993 r!13911)))) b!7150412))

(assert (= (and b!7150146 (is-Concat!27085 (reg!18569 (regOne!36993 r!13911)))) b!7150413))

(assert (= (and b!7150146 (is-Star!18240 (reg!18569 (regOne!36993 r!13911)))) b!7150414))

(assert (= (and b!7150146 (is-Union!18240 (reg!18569 (regOne!36993 r!13911)))) b!7150415))

(declare-fun b!7150419 () Bool)

(declare-fun e!4296430 () Bool)

(declare-fun tp!1974354 () Bool)

(declare-fun tp!1974355 () Bool)

(assert (=> b!7150419 (= e!4296430 (and tp!1974354 tp!1974355))))

(declare-fun b!7150418 () Bool)

(declare-fun tp!1974351 () Bool)

(assert (=> b!7150418 (= e!4296430 tp!1974351)))

(assert (=> b!7150169 (= tp!1974230 e!4296430)))

(declare-fun b!7150417 () Bool)

(declare-fun tp!1974353 () Bool)

(declare-fun tp!1974352 () Bool)

(assert (=> b!7150417 (= e!4296430 (and tp!1974353 tp!1974352))))

(declare-fun b!7150416 () Bool)

(assert (=> b!7150416 (= e!4296430 tp_is_empty!46117)))

(assert (= (and b!7150169 (is-ElementMatch!18240 (reg!18569 (regTwo!36992 r!13911)))) b!7150416))

(assert (= (and b!7150169 (is-Concat!27085 (reg!18569 (regTwo!36992 r!13911)))) b!7150417))

(assert (= (and b!7150169 (is-Star!18240 (reg!18569 (regTwo!36992 r!13911)))) b!7150418))

(assert (= (and b!7150169 (is-Union!18240 (reg!18569 (regTwo!36992 r!13911)))) b!7150419))

(declare-fun b!7150423 () Bool)

(declare-fun e!4296431 () Bool)

(declare-fun tp!1974359 () Bool)

(declare-fun tp!1974360 () Bool)

(assert (=> b!7150423 (= e!4296431 (and tp!1974359 tp!1974360))))

(declare-fun b!7150422 () Bool)

(declare-fun tp!1974356 () Bool)

(assert (=> b!7150422 (= e!4296431 tp!1974356)))

(assert (=> b!7150145 (= tp!1974206 e!4296431)))

(declare-fun b!7150421 () Bool)

(declare-fun tp!1974358 () Bool)

(declare-fun tp!1974357 () Bool)

(assert (=> b!7150421 (= e!4296431 (and tp!1974358 tp!1974357))))

(declare-fun b!7150420 () Bool)

(assert (=> b!7150420 (= e!4296431 tp_is_empty!46117)))

(assert (= (and b!7150145 (is-ElementMatch!18240 (regOne!36992 (regOne!36993 r!13911)))) b!7150420))

(assert (= (and b!7150145 (is-Concat!27085 (regOne!36992 (regOne!36993 r!13911)))) b!7150421))

(assert (= (and b!7150145 (is-Star!18240 (regOne!36992 (regOne!36993 r!13911)))) b!7150422))

(assert (= (and b!7150145 (is-Union!18240 (regOne!36992 (regOne!36993 r!13911)))) b!7150423))

(declare-fun b!7150427 () Bool)

(declare-fun e!4296432 () Bool)

(declare-fun tp!1974364 () Bool)

(declare-fun tp!1974365 () Bool)

(assert (=> b!7150427 (= e!4296432 (and tp!1974364 tp!1974365))))

(declare-fun b!7150426 () Bool)

(declare-fun tp!1974361 () Bool)

(assert (=> b!7150426 (= e!4296432 tp!1974361)))

(assert (=> b!7150145 (= tp!1974205 e!4296432)))

(declare-fun b!7150425 () Bool)

(declare-fun tp!1974363 () Bool)

(declare-fun tp!1974362 () Bool)

(assert (=> b!7150425 (= e!4296432 (and tp!1974363 tp!1974362))))

(declare-fun b!7150424 () Bool)

(assert (=> b!7150424 (= e!4296432 tp_is_empty!46117)))

(assert (= (and b!7150145 (is-ElementMatch!18240 (regTwo!36992 (regOne!36993 r!13911)))) b!7150424))

(assert (= (and b!7150145 (is-Concat!27085 (regTwo!36992 (regOne!36993 r!13911)))) b!7150425))

(assert (= (and b!7150145 (is-Star!18240 (regTwo!36992 (regOne!36993 r!13911)))) b!7150426))

(assert (= (and b!7150145 (is-Union!18240 (regTwo!36992 (regOne!36993 r!13911)))) b!7150427))

(declare-fun b!7150431 () Bool)

(declare-fun e!4296433 () Bool)

(declare-fun tp!1974369 () Bool)

(declare-fun tp!1974370 () Bool)

(assert (=> b!7150431 (= e!4296433 (and tp!1974369 tp!1974370))))

(declare-fun b!7150430 () Bool)

(declare-fun tp!1974366 () Bool)

(assert (=> b!7150430 (= e!4296433 tp!1974366)))

(assert (=> b!7150168 (= tp!1974232 e!4296433)))

(declare-fun b!7150429 () Bool)

(declare-fun tp!1974368 () Bool)

(declare-fun tp!1974367 () Bool)

(assert (=> b!7150429 (= e!4296433 (and tp!1974368 tp!1974367))))

(declare-fun b!7150428 () Bool)

(assert (=> b!7150428 (= e!4296433 tp_is_empty!46117)))

(assert (= (and b!7150168 (is-ElementMatch!18240 (regOne!36992 (regTwo!36992 r!13911)))) b!7150428))

(assert (= (and b!7150168 (is-Concat!27085 (regOne!36992 (regTwo!36992 r!13911)))) b!7150429))

(assert (= (and b!7150168 (is-Star!18240 (regOne!36992 (regTwo!36992 r!13911)))) b!7150430))

(assert (= (and b!7150168 (is-Union!18240 (regOne!36992 (regTwo!36992 r!13911)))) b!7150431))

(declare-fun b!7150435 () Bool)

(declare-fun e!4296434 () Bool)

(declare-fun tp!1974374 () Bool)

(declare-fun tp!1974375 () Bool)

(assert (=> b!7150435 (= e!4296434 (and tp!1974374 tp!1974375))))

(declare-fun b!7150434 () Bool)

(declare-fun tp!1974371 () Bool)

(assert (=> b!7150434 (= e!4296434 tp!1974371)))

(assert (=> b!7150168 (= tp!1974231 e!4296434)))

(declare-fun b!7150433 () Bool)

(declare-fun tp!1974373 () Bool)

(declare-fun tp!1974372 () Bool)

(assert (=> b!7150433 (= e!4296434 (and tp!1974373 tp!1974372))))

(declare-fun b!7150432 () Bool)

(assert (=> b!7150432 (= e!4296434 tp_is_empty!46117)))

(assert (= (and b!7150168 (is-ElementMatch!18240 (regTwo!36992 (regTwo!36992 r!13911)))) b!7150432))

(assert (= (and b!7150168 (is-Concat!27085 (regTwo!36992 (regTwo!36992 r!13911)))) b!7150433))

(assert (= (and b!7150168 (is-Star!18240 (regTwo!36992 (regTwo!36992 r!13911)))) b!7150434))

(assert (= (and b!7150168 (is-Union!18240 (regTwo!36992 (regTwo!36992 r!13911)))) b!7150435))

(declare-fun b!7150439 () Bool)

(declare-fun e!4296435 () Bool)

(declare-fun tp!1974379 () Bool)

(declare-fun tp!1974380 () Bool)

(assert (=> b!7150439 (= e!4296435 (and tp!1974379 tp!1974380))))

(declare-fun b!7150438 () Bool)

(declare-fun tp!1974376 () Bool)

(assert (=> b!7150438 (= e!4296435 tp!1974376)))

(assert (=> b!7150150 (= tp!1974209 e!4296435)))

(declare-fun b!7150437 () Bool)

(declare-fun tp!1974378 () Bool)

(declare-fun tp!1974377 () Bool)

(assert (=> b!7150437 (= e!4296435 (and tp!1974378 tp!1974377))))

(declare-fun b!7150436 () Bool)

(assert (=> b!7150436 (= e!4296435 tp_is_empty!46117)))

(assert (= (and b!7150150 (is-ElementMatch!18240 (reg!18569 (regTwo!36993 r!13911)))) b!7150436))

(assert (= (and b!7150150 (is-Concat!27085 (reg!18569 (regTwo!36993 r!13911)))) b!7150437))

(assert (= (and b!7150150 (is-Star!18240 (reg!18569 (regTwo!36993 r!13911)))) b!7150438))

(assert (= (and b!7150150 (is-Union!18240 (reg!18569 (regTwo!36993 r!13911)))) b!7150439))

(declare-fun b!7150443 () Bool)

(declare-fun e!4296436 () Bool)

(declare-fun tp!1974384 () Bool)

(declare-fun tp!1974385 () Bool)

(assert (=> b!7150443 (= e!4296436 (and tp!1974384 tp!1974385))))

(declare-fun b!7150442 () Bool)

(declare-fun tp!1974381 () Bool)

(assert (=> b!7150442 (= e!4296436 tp!1974381)))

(assert (=> b!7150147 (= tp!1974207 e!4296436)))

(declare-fun b!7150441 () Bool)

(declare-fun tp!1974383 () Bool)

(declare-fun tp!1974382 () Bool)

(assert (=> b!7150441 (= e!4296436 (and tp!1974383 tp!1974382))))

(declare-fun b!7150440 () Bool)

(assert (=> b!7150440 (= e!4296436 tp_is_empty!46117)))

(assert (= (and b!7150147 (is-ElementMatch!18240 (regOne!36993 (regOne!36993 r!13911)))) b!7150440))

(assert (= (and b!7150147 (is-Concat!27085 (regOne!36993 (regOne!36993 r!13911)))) b!7150441))

(assert (= (and b!7150147 (is-Star!18240 (regOne!36993 (regOne!36993 r!13911)))) b!7150442))

(assert (= (and b!7150147 (is-Union!18240 (regOne!36993 (regOne!36993 r!13911)))) b!7150443))

(declare-fun b!7150447 () Bool)

(declare-fun e!4296437 () Bool)

(declare-fun tp!1974389 () Bool)

(declare-fun tp!1974390 () Bool)

(assert (=> b!7150447 (= e!4296437 (and tp!1974389 tp!1974390))))

(declare-fun b!7150446 () Bool)

(declare-fun tp!1974386 () Bool)

(assert (=> b!7150446 (= e!4296437 tp!1974386)))

(assert (=> b!7150147 (= tp!1974208 e!4296437)))

(declare-fun b!7150445 () Bool)

(declare-fun tp!1974388 () Bool)

(declare-fun tp!1974387 () Bool)

(assert (=> b!7150445 (= e!4296437 (and tp!1974388 tp!1974387))))

(declare-fun b!7150444 () Bool)

(assert (=> b!7150444 (= e!4296437 tp_is_empty!46117)))

(assert (= (and b!7150147 (is-ElementMatch!18240 (regTwo!36993 (regOne!36993 r!13911)))) b!7150444))

(assert (= (and b!7150147 (is-Concat!27085 (regTwo!36993 (regOne!36993 r!13911)))) b!7150445))

(assert (= (and b!7150147 (is-Star!18240 (regTwo!36993 (regOne!36993 r!13911)))) b!7150446))

(assert (= (and b!7150147 (is-Union!18240 (regTwo!36993 (regOne!36993 r!13911)))) b!7150447))

(declare-fun b!7150451 () Bool)

(declare-fun e!4296438 () Bool)

(declare-fun tp!1974394 () Bool)

(declare-fun tp!1974395 () Bool)

(assert (=> b!7150451 (= e!4296438 (and tp!1974394 tp!1974395))))

(declare-fun b!7150450 () Bool)

(declare-fun tp!1974391 () Bool)

(assert (=> b!7150450 (= e!4296438 tp!1974391)))

(assert (=> b!7150170 (= tp!1974233 e!4296438)))

(declare-fun b!7150449 () Bool)

(declare-fun tp!1974393 () Bool)

(declare-fun tp!1974392 () Bool)

(assert (=> b!7150449 (= e!4296438 (and tp!1974393 tp!1974392))))

(declare-fun b!7150448 () Bool)

(assert (=> b!7150448 (= e!4296438 tp_is_empty!46117)))

(assert (= (and b!7150170 (is-ElementMatch!18240 (regOne!36993 (regTwo!36992 r!13911)))) b!7150448))

(assert (= (and b!7150170 (is-Concat!27085 (regOne!36993 (regTwo!36992 r!13911)))) b!7150449))

(assert (= (and b!7150170 (is-Star!18240 (regOne!36993 (regTwo!36992 r!13911)))) b!7150450))

(assert (= (and b!7150170 (is-Union!18240 (regOne!36993 (regTwo!36992 r!13911)))) b!7150451))

(declare-fun b!7150455 () Bool)

(declare-fun e!4296439 () Bool)

(declare-fun tp!1974399 () Bool)

(declare-fun tp!1974400 () Bool)

(assert (=> b!7150455 (= e!4296439 (and tp!1974399 tp!1974400))))

(declare-fun b!7150454 () Bool)

(declare-fun tp!1974396 () Bool)

(assert (=> b!7150454 (= e!4296439 tp!1974396)))

(assert (=> b!7150170 (= tp!1974234 e!4296439)))

(declare-fun b!7150453 () Bool)

(declare-fun tp!1974398 () Bool)

(declare-fun tp!1974397 () Bool)

(assert (=> b!7150453 (= e!4296439 (and tp!1974398 tp!1974397))))

(declare-fun b!7150452 () Bool)

(assert (=> b!7150452 (= e!4296439 tp_is_empty!46117)))

(assert (= (and b!7150170 (is-ElementMatch!18240 (regTwo!36993 (regTwo!36992 r!13911)))) b!7150452))

(assert (= (and b!7150170 (is-Concat!27085 (regTwo!36993 (regTwo!36992 r!13911)))) b!7150453))

(assert (= (and b!7150170 (is-Star!18240 (regTwo!36993 (regTwo!36992 r!13911)))) b!7150454))

(assert (= (and b!7150170 (is-Union!18240 (regTwo!36993 (regTwo!36992 r!13911)))) b!7150455))

(declare-fun b!7150459 () Bool)

(declare-fun e!4296440 () Bool)

(declare-fun tp!1974404 () Bool)

(declare-fun tp!1974405 () Bool)

(assert (=> b!7150459 (= e!4296440 (and tp!1974404 tp!1974405))))

(declare-fun b!7150458 () Bool)

(declare-fun tp!1974401 () Bool)

(assert (=> b!7150458 (= e!4296440 tp!1974401)))

(assert (=> b!7150151 (= tp!1974212 e!4296440)))

(declare-fun b!7150457 () Bool)

(declare-fun tp!1974403 () Bool)

(declare-fun tp!1974402 () Bool)

(assert (=> b!7150457 (= e!4296440 (and tp!1974403 tp!1974402))))

(declare-fun b!7150456 () Bool)

(assert (=> b!7150456 (= e!4296440 tp_is_empty!46117)))

(assert (= (and b!7150151 (is-ElementMatch!18240 (regOne!36993 (regTwo!36993 r!13911)))) b!7150456))

(assert (= (and b!7150151 (is-Concat!27085 (regOne!36993 (regTwo!36993 r!13911)))) b!7150457))

(assert (= (and b!7150151 (is-Star!18240 (regOne!36993 (regTwo!36993 r!13911)))) b!7150458))

(assert (= (and b!7150151 (is-Union!18240 (regOne!36993 (regTwo!36993 r!13911)))) b!7150459))

(declare-fun b!7150463 () Bool)

(declare-fun e!4296441 () Bool)

(declare-fun tp!1974409 () Bool)

(declare-fun tp!1974410 () Bool)

(assert (=> b!7150463 (= e!4296441 (and tp!1974409 tp!1974410))))

(declare-fun b!7150462 () Bool)

(declare-fun tp!1974406 () Bool)

(assert (=> b!7150462 (= e!4296441 tp!1974406)))

(assert (=> b!7150151 (= tp!1974213 e!4296441)))

(declare-fun b!7150461 () Bool)

(declare-fun tp!1974408 () Bool)

(declare-fun tp!1974407 () Bool)

(assert (=> b!7150461 (= e!4296441 (and tp!1974408 tp!1974407))))

(declare-fun b!7150460 () Bool)

(assert (=> b!7150460 (= e!4296441 tp_is_empty!46117)))

(assert (= (and b!7150151 (is-ElementMatch!18240 (regTwo!36993 (regTwo!36993 r!13911)))) b!7150460))

(assert (= (and b!7150151 (is-Concat!27085 (regTwo!36993 (regTwo!36993 r!13911)))) b!7150461))

(assert (= (and b!7150151 (is-Star!18240 (regTwo!36993 (regTwo!36993 r!13911)))) b!7150462))

(assert (= (and b!7150151 (is-Union!18240 (regTwo!36993 (regTwo!36993 r!13911)))) b!7150463))

(declare-fun b!7150467 () Bool)

(declare-fun e!4296442 () Bool)

(declare-fun tp!1974414 () Bool)

(declare-fun tp!1974415 () Bool)

(assert (=> b!7150467 (= e!4296442 (and tp!1974414 tp!1974415))))

(declare-fun b!7150466 () Bool)

(declare-fun tp!1974411 () Bool)

(assert (=> b!7150466 (= e!4296442 tp!1974411)))

(assert (=> b!7150165 (= tp!1974225 e!4296442)))

(declare-fun b!7150465 () Bool)

(declare-fun tp!1974413 () Bool)

(declare-fun tp!1974412 () Bool)

(assert (=> b!7150465 (= e!4296442 (and tp!1974413 tp!1974412))))

(declare-fun b!7150464 () Bool)

(assert (=> b!7150464 (= e!4296442 tp_is_empty!46117)))

(assert (= (and b!7150165 (is-ElementMatch!18240 (reg!18569 (regOne!36992 r!13911)))) b!7150464))

(assert (= (and b!7150165 (is-Concat!27085 (reg!18569 (regOne!36992 r!13911)))) b!7150465))

(assert (= (and b!7150165 (is-Star!18240 (reg!18569 (regOne!36992 r!13911)))) b!7150466))

(assert (= (and b!7150165 (is-Union!18240 (reg!18569 (regOne!36992 r!13911)))) b!7150467))

(declare-fun b!7150471 () Bool)

(declare-fun e!4296443 () Bool)

(declare-fun tp!1974419 () Bool)

(declare-fun tp!1974420 () Bool)

(assert (=> b!7150471 (= e!4296443 (and tp!1974419 tp!1974420))))

(declare-fun b!7150470 () Bool)

(declare-fun tp!1974416 () Bool)

(assert (=> b!7150470 (= e!4296443 tp!1974416)))

(assert (=> b!7150162 (= tp!1974223 e!4296443)))

(declare-fun b!7150469 () Bool)

(declare-fun tp!1974418 () Bool)

(declare-fun tp!1974417 () Bool)

(assert (=> b!7150469 (= e!4296443 (and tp!1974418 tp!1974417))))

(declare-fun b!7150468 () Bool)

(assert (=> b!7150468 (= e!4296443 tp_is_empty!46117)))

(assert (= (and b!7150162 (is-ElementMatch!18240 (h!75868 (t!383561 l!9154)))) b!7150468))

(assert (= (and b!7150162 (is-Concat!27085 (h!75868 (t!383561 l!9154)))) b!7150469))

(assert (= (and b!7150162 (is-Star!18240 (h!75868 (t!383561 l!9154)))) b!7150470))

(assert (= (and b!7150162 (is-Union!18240 (h!75868 (t!383561 l!9154)))) b!7150471))

(declare-fun b!7150472 () Bool)

(declare-fun e!4296444 () Bool)

(declare-fun tp!1974421 () Bool)

(declare-fun tp!1974422 () Bool)

(assert (=> b!7150472 (= e!4296444 (and tp!1974421 tp!1974422))))

(assert (=> b!7150162 (= tp!1974224 e!4296444)))

(assert (= (and b!7150162 (is-Cons!69420 (t!383561 (t!383561 l!9154)))) b!7150472))

(declare-fun b!7150476 () Bool)

(declare-fun e!4296445 () Bool)

(declare-fun tp!1974426 () Bool)

(declare-fun tp!1974427 () Bool)

(assert (=> b!7150476 (= e!4296445 (and tp!1974426 tp!1974427))))

(declare-fun b!7150475 () Bool)

(declare-fun tp!1974423 () Bool)

(assert (=> b!7150475 (= e!4296445 tp!1974423)))

(assert (=> b!7150172 (= tp!1974237 e!4296445)))

(declare-fun b!7150474 () Bool)

(declare-fun tp!1974425 () Bool)

(declare-fun tp!1974424 () Bool)

(assert (=> b!7150474 (= e!4296445 (and tp!1974425 tp!1974424))))

(declare-fun b!7150473 () Bool)

(assert (=> b!7150473 (= e!4296445 tp_is_empty!46117)))

(assert (= (and b!7150172 (is-ElementMatch!18240 (regOne!36992 (reg!18569 r!13911)))) b!7150473))

(assert (= (and b!7150172 (is-Concat!27085 (regOne!36992 (reg!18569 r!13911)))) b!7150474))

(assert (= (and b!7150172 (is-Star!18240 (regOne!36992 (reg!18569 r!13911)))) b!7150475))

(assert (= (and b!7150172 (is-Union!18240 (regOne!36992 (reg!18569 r!13911)))) b!7150476))

(declare-fun b!7150480 () Bool)

(declare-fun e!4296446 () Bool)

(declare-fun tp!1974431 () Bool)

(declare-fun tp!1974432 () Bool)

(assert (=> b!7150480 (= e!4296446 (and tp!1974431 tp!1974432))))

(declare-fun b!7150479 () Bool)

(declare-fun tp!1974428 () Bool)

(assert (=> b!7150479 (= e!4296446 tp!1974428)))

(assert (=> b!7150172 (= tp!1974236 e!4296446)))

(declare-fun b!7150478 () Bool)

(declare-fun tp!1974430 () Bool)

(declare-fun tp!1974429 () Bool)

(assert (=> b!7150478 (= e!4296446 (and tp!1974430 tp!1974429))))

(declare-fun b!7150477 () Bool)

(assert (=> b!7150477 (= e!4296446 tp_is_empty!46117)))

(assert (= (and b!7150172 (is-ElementMatch!18240 (regTwo!36992 (reg!18569 r!13911)))) b!7150477))

(assert (= (and b!7150172 (is-Concat!27085 (regTwo!36992 (reg!18569 r!13911)))) b!7150478))

(assert (= (and b!7150172 (is-Star!18240 (regTwo!36992 (reg!18569 r!13911)))) b!7150479))

(assert (= (and b!7150172 (is-Union!18240 (regTwo!36992 (reg!18569 r!13911)))) b!7150480))

(declare-fun b!7150484 () Bool)

(declare-fun e!4296447 () Bool)

(declare-fun tp!1974436 () Bool)

(declare-fun tp!1974437 () Bool)

(assert (=> b!7150484 (= e!4296447 (and tp!1974436 tp!1974437))))

(declare-fun b!7150483 () Bool)

(declare-fun tp!1974433 () Bool)

(assert (=> b!7150483 (= e!4296447 tp!1974433)))

(assert (=> b!7150166 (= tp!1974228 e!4296447)))

(declare-fun b!7150482 () Bool)

(declare-fun tp!1974435 () Bool)

(declare-fun tp!1974434 () Bool)

(assert (=> b!7150482 (= e!4296447 (and tp!1974435 tp!1974434))))

(declare-fun b!7150481 () Bool)

(assert (=> b!7150481 (= e!4296447 tp_is_empty!46117)))

(assert (= (and b!7150166 (is-ElementMatch!18240 (regOne!36993 (regOne!36992 r!13911)))) b!7150481))

(assert (= (and b!7150166 (is-Concat!27085 (regOne!36993 (regOne!36992 r!13911)))) b!7150482))

(assert (= (and b!7150166 (is-Star!18240 (regOne!36993 (regOne!36992 r!13911)))) b!7150483))

(assert (= (and b!7150166 (is-Union!18240 (regOne!36993 (regOne!36992 r!13911)))) b!7150484))

(declare-fun b!7150488 () Bool)

(declare-fun e!4296448 () Bool)

(declare-fun tp!1974441 () Bool)

(declare-fun tp!1974442 () Bool)

(assert (=> b!7150488 (= e!4296448 (and tp!1974441 tp!1974442))))

(declare-fun b!7150487 () Bool)

(declare-fun tp!1974438 () Bool)

(assert (=> b!7150487 (= e!4296448 tp!1974438)))

(assert (=> b!7150166 (= tp!1974229 e!4296448)))

(declare-fun b!7150486 () Bool)

(declare-fun tp!1974440 () Bool)

(declare-fun tp!1974439 () Bool)

(assert (=> b!7150486 (= e!4296448 (and tp!1974440 tp!1974439))))

(declare-fun b!7150485 () Bool)

(assert (=> b!7150485 (= e!4296448 tp_is_empty!46117)))

(assert (= (and b!7150166 (is-ElementMatch!18240 (regTwo!36993 (regOne!36992 r!13911)))) b!7150485))

(assert (= (and b!7150166 (is-Concat!27085 (regTwo!36993 (regOne!36992 r!13911)))) b!7150486))

(assert (= (and b!7150166 (is-Star!18240 (regTwo!36993 (regOne!36992 r!13911)))) b!7150487))

(assert (= (and b!7150166 (is-Union!18240 (regTwo!36993 (regOne!36992 r!13911)))) b!7150488))

(declare-fun b_lambda!272999 () Bool)

(assert (= b_lambda!272995 (or start!697126 b_lambda!272999)))

(declare-fun bs!1889514 () Bool)

(declare-fun d!2228817 () Bool)

(assert (= bs!1889514 (and d!2228817 start!697126)))

(assert (=> bs!1889514 (= (dynLambda!28280 lambda!436077 (h!75868 (t!383561 (t!383561 l!9154)))) (validRegex!9395 (h!75868 (t!383561 (t!383561 l!9154)))))))

(declare-fun m!7861092 () Bool)

(assert (=> bs!1889514 m!7861092))

(assert (=> b!7150353 d!2228817))

(declare-fun b_lambda!273001 () Bool)

(assert (= b_lambda!272987 (or d!2228709 b_lambda!273001)))

(declare-fun bs!1889515 () Bool)

(declare-fun d!2228819 () Bool)

(assert (= bs!1889515 (and d!2228819 d!2228709)))

(assert (=> bs!1889515 (= (dynLambda!28280 lambda!436091 (h!75868 l!9154)) (validRegex!9395 (h!75868 l!9154)))))

(assert (=> bs!1889515 m!7860946))

(assert (=> b!7150287 d!2228819))

(declare-fun b_lambda!273003 () Bool)

(assert (= b_lambda!272991 (or d!2228723 b_lambda!273003)))

(declare-fun bs!1889516 () Bool)

(declare-fun d!2228821 () Bool)

(assert (= bs!1889516 (and d!2228821 d!2228723)))

(assert (=> bs!1889516 (= (dynLambda!28280 lambda!436097 (h!75868 (t!383561 l!9154))) (validRegex!9395 (h!75868 (t!383561 l!9154))))))

(assert (=> bs!1889516 m!7860948))

(assert (=> b!7150300 d!2228821))

(declare-fun b_lambda!273005 () Bool)

(assert (= b_lambda!272997 (or b!7150036 b_lambda!273005)))

(declare-fun bs!1889517 () Bool)

(declare-fun d!2228823 () Bool)

(assert (= bs!1889517 (and d!2228823 b!7150036)))

(assert (=> bs!1889517 (= (dynLambda!28280 lambda!436078 (h!75868 (t!383561 (t!383561 l!9154)))) (nullable!7729 (h!75868 (t!383561 (t!383561 l!9154)))))))

(declare-fun m!7861094 () Bool)

(assert (=> bs!1889517 m!7861094))

(assert (=> b!7150355 d!2228823))

(declare-fun b_lambda!273007 () Bool)

(assert (= b_lambda!272993 (or d!2228711 b_lambda!273007)))

(declare-fun bs!1889518 () Bool)

(declare-fun d!2228825 () Bool)

(assert (= bs!1889518 (and d!2228825 d!2228711)))

(assert (=> bs!1889518 (= (dynLambda!28280 lambda!436092 (h!75868 (t!383561 l!9154))) (validRegex!9395 (h!75868 (t!383561 l!9154))))))

(assert (=> bs!1889518 m!7860948))

(assert (=> b!7150311 d!2228825))

(declare-fun b_lambda!273009 () Bool)

(assert (= b_lambda!272989 (or d!2228723 b_lambda!273009)))

(declare-fun bs!1889519 () Bool)

(declare-fun d!2228827 () Bool)

(assert (= bs!1889519 (and d!2228827 d!2228723)))

(assert (=> bs!1889519 (= (dynLambda!28280 lambda!436098 (h!75868 (t!383561 l!9154))) (nullable!7729 (h!75868 (t!383561 l!9154))))))

(assert (=> bs!1889519 m!7860952))

(assert (=> b!7150298 d!2228827))

(push 1)

(assert (not b!7150427))

(assert (not b!7150301))

(assert (not b!7150471))

(assert (not b!7150413))

(assert (not b!7150411))

(assert (not b!7150455))

(assert (not b!7150429))

(assert (not b!7150417))

(assert (not b_lambda!273009))

(assert (not b_lambda!272965))

(assert (not b!7150365))

(assert (not b!7150447))

(assert (not b!7150419))

(assert (not b!7150474))

(assert (not b!7150394))

(assert (not b!7150433))

(assert (not b!7150422))

(assert (not b!7150386))

(assert (not bm!651504))

(assert (not bm!651488))

(assert (not b!7150425))

(assert (not b!7150406))

(assert (not b!7150480))

(assert (not b!7150476))

(assert (not b!7150430))

(assert (not b!7150369))

(assert (not b!7150449))

(assert (not b!7150459))

(assert (not bm!651494))

(assert (not b!7150443))

(assert (not b!7150370))

(assert (not b!7150398))

(assert (not b!7150321))

(assert (not b!7150356))

(assert (not b_lambda!273007))

(assert (not b!7150409))

(assert (not b!7150378))

(assert (not b!7150312))

(assert (not b!7150482))

(assert (not d!2228787))

(assert (not b!7150405))

(assert (not bs!1889519))

(assert (not b!7150431))

(assert (not b!7150391))

(assert (not b!7150462))

(assert (not bm!651503))

(assert (not b!7150371))

(assert (not b_lambda!272999))

(assert (not b!7150435))

(assert (not b!7150399))

(assert (not d!2228799))

(assert (not b!7150288))

(assert (not bs!1889518))

(assert (not b!7150466))

(assert (not b_lambda!273003))

(assert (not b!7150423))

(assert (not b!7150393))

(assert (not b!7150383))

(assert (not b!7150438))

(assert (not b!7150381))

(assert (not b!7150395))

(assert (not bm!651499))

(assert (not b!7150318))

(assert (not b!7150461))

(assert (not bs!1889516))

(assert (not b!7150401))

(assert tp_is_empty!46117)

(assert (not b!7150316))

(assert (not b!7150451))

(assert (not bm!651500))

(assert (not b!7150484))

(assert (not bs!1889517))

(assert (not bs!1889515))

(assert (not bm!651502))

(assert (not b!7150467))

(assert (not b!7150397))

(assert (not b!7150415))

(assert (not b!7150453))

(assert (not b!7150304))

(assert (not b!7150374))

(assert (not b!7150458))

(assert (not b!7150437))

(assert (not b!7150354))

(assert (not b!7150407))

(assert (not b!7150457))

(assert (not b!7150439))

(assert (not b!7150317))

(assert (not b_lambda!272971))

(assert (not b!7150472))

(assert (not b_lambda!273001))

(assert (not b!7150377))

(assert (not b!7150366))

(assert (not d!2228813))

(assert (not b!7150465))

(assert (not b!7150390))

(assert (not b!7150382))

(assert (not b!7150299))

(assert (not b!7150291))

(assert (not b!7150488))

(assert (not bm!651491))

(assert (not b!7150478))

(assert (not b!7150414))

(assert (not b!7150487))

(assert (not bm!651493))

(assert (not b!7150379))

(assert (not b!7150280))

(assert (not b!7150375))

(assert (not b!7150434))

(assert (not b!7150315))

(assert (not b!7150426))

(assert (not b!7150385))

(assert (not b_lambda!273005))

(assert (not b!7150441))

(assert (not b!7150389))

(assert (not b!7150446))

(assert (not b_lambda!272969))

(assert (not b!7150450))

(assert (not bm!651487))

(assert (not b!7150442))

(assert (not bm!651505))

(assert (not b!7150445))

(assert (not b!7150322))

(assert (not b!7150483))

(assert (not b_lambda!272967))

(assert (not b!7150418))

(assert (not b!7150475))

(assert (not b!7150403))

(assert (not b!7150470))

(assert (not d!2228807))

(assert (not b!7150387))

(assert (not b!7150479))

(assert (not b!7150469))

(assert (not b!7150346))

(assert (not b!7150486))

(assert (not b!7150367))

(assert (not b!7150410))

(assert (not b!7150454))

(assert (not b!7150320))

(assert (not bs!1889514))

(assert (not b!7150463))

(assert (not bm!651490))

(assert (not b!7150421))

(assert (not b!7150402))

(assert (not b!7150373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

