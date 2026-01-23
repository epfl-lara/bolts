; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668476 () Bool)

(assert start!668476)

(declare-fun b!6971066 () Bool)

(declare-fun e!4190258 () Bool)

(declare-datatypes ((C!34522 0))(
  ( (C!34523 (val!26963 Int)) )
))
(declare-datatypes ((Regex!17126 0))(
  ( (ElementMatch!17126 (c!1292260 C!34522)) (Concat!25971 (regOne!34764 Regex!17126) (regTwo!34764 Regex!17126)) (EmptyExpr!17126) (Star!17126 (reg!17455 Regex!17126)) (EmptyLang!17126) (Union!17126 (regOne!34765 Regex!17126) (regTwo!34765 Regex!17126)) )
))
(declare-datatypes ((List!66933 0))(
  ( (Nil!66809) (Cons!66809 (h!73257 Regex!17126) (t!380676 List!66933)) )
))
(declare-fun lt!2479594 () List!66933)

(declare-fun lambda!397691 () Int)

(declare-fun forall!15997 (List!66933 Int) Bool)

(assert (=> b!6971066 (= e!4190258 (forall!15997 lt!2479594 lambda!397691))))

(declare-fun r!13765 () Regex!17126)

(declare-datatypes ((List!66934 0))(
  ( (Nil!66810) (Cons!66810 (h!73258 C!34522) (t!380677 List!66934)) )
))
(declare-fun s!9351 () List!66934)

(declare-fun matchR!9228 (Regex!17126 List!66934) Bool)

(declare-fun matchRSpec!4143 (Regex!17126 List!66934) Bool)

(assert (=> b!6971066 (= (matchR!9228 (regTwo!34765 r!13765) s!9351) (matchRSpec!4143 (regTwo!34765 r!13765) s!9351))))

(declare-datatypes ((Unit!160904 0))(
  ( (Unit!160905) )
))
(declare-fun lt!2479592 () Unit!160904)

(declare-fun mainMatchTheorem!4137 (Regex!17126 List!66934) Unit!160904)

(assert (=> b!6971066 (= lt!2479592 (mainMatchTheorem!4137 (regTwo!34765 r!13765) s!9351))))

(declare-fun lt!2479595 () Bool)

(assert (=> b!6971066 (= (matchR!9228 (regOne!34765 r!13765) s!9351) lt!2479595)))

(declare-fun lt!2479593 () Unit!160904)

(assert (=> b!6971066 (= lt!2479593 (mainMatchTheorem!4137 (regOne!34765 r!13765) s!9351))))

(declare-fun b!6971067 () Bool)

(declare-fun res!2843345 () Bool)

(declare-fun e!4190257 () Bool)

(assert (=> b!6971067 (=> (not res!2843345) (not e!4190257))))

(declare-fun l!9142 () List!66933)

(declare-fun generalisedUnion!2601 (List!66933) Regex!17126)

(assert (=> b!6971067 (= res!2843345 (= r!13765 (generalisedUnion!2601 l!9142)))))

(declare-fun b!6971068 () Bool)

(declare-fun e!4190260 () Bool)

(assert (=> b!6971068 (= e!4190260 (matchRSpec!4143 (regTwo!34765 r!13765) s!9351))))

(declare-fun b!6971069 () Bool)

(declare-fun e!4190253 () Bool)

(declare-fun tp!1924080 () Bool)

(declare-fun tp!1924077 () Bool)

(assert (=> b!6971069 (= e!4190253 (and tp!1924080 tp!1924077))))

(declare-fun res!2843343 () Bool)

(assert (=> start!668476 (=> (not res!2843343) (not e!4190257))))

(assert (=> start!668476 (= res!2843343 (forall!15997 l!9142 lambda!397691))))

(assert (=> start!668476 e!4190257))

(declare-fun e!4190256 () Bool)

(assert (=> start!668476 e!4190256))

(assert (=> start!668476 e!4190253))

(declare-fun e!4190254 () Bool)

(assert (=> start!668476 e!4190254))

(declare-fun b!6971070 () Bool)

(declare-fun tp_is_empty!43477 () Bool)

(assert (=> b!6971070 (= e!4190253 tp_is_empty!43477)))

(declare-fun b!6971071 () Bool)

(declare-fun tp!1924079 () Bool)

(assert (=> b!6971071 (= e!4190253 tp!1924079)))

(declare-fun b!6971072 () Bool)

(declare-fun e!4190255 () Bool)

(declare-fun e!4190259 () Bool)

(assert (=> b!6971072 (= e!4190255 e!4190259)))

(declare-fun res!2843347 () Bool)

(assert (=> b!6971072 (=> res!2843347 e!4190259)))

(declare-fun isEmpty!39012 (List!66933) Bool)

(assert (=> b!6971072 (= res!2843347 (isEmpty!39012 lt!2479594))))

(declare-fun tail!13092 (List!66933) List!66933)

(assert (=> b!6971072 (= lt!2479594 (tail!13092 l!9142))))

(declare-fun b!6971073 () Bool)

(declare-fun tp!1924082 () Bool)

(declare-fun tp!1924081 () Bool)

(assert (=> b!6971073 (= e!4190253 (and tp!1924082 tp!1924081))))

(declare-fun b!6971074 () Bool)

(declare-fun tp!1924078 () Bool)

(assert (=> b!6971074 (= e!4190254 (and tp_is_empty!43477 tp!1924078))))

(declare-fun b!6971075 () Bool)

(assert (=> b!6971075 (= e!4190259 e!4190258)))

(declare-fun res!2843344 () Bool)

(assert (=> b!6971075 (=> res!2843344 e!4190258)))

(declare-fun lt!2479591 () Bool)

(assert (=> b!6971075 (= res!2843344 (not (= lt!2479591 e!4190260)))))

(declare-fun res!2843346 () Bool)

(assert (=> b!6971075 (=> res!2843346 e!4190260)))

(assert (=> b!6971075 (= res!2843346 lt!2479595)))

(assert (=> b!6971075 (= lt!2479595 (matchRSpec!4143 (regOne!34765 r!13765) s!9351))))

(declare-fun b!6971076 () Bool)

(declare-fun tp!1924076 () Bool)

(declare-fun tp!1924083 () Bool)

(assert (=> b!6971076 (= e!4190256 (and tp!1924076 tp!1924083))))

(declare-fun b!6971077 () Bool)

(declare-fun res!2843342 () Bool)

(assert (=> b!6971077 (=> res!2843342 e!4190255)))

(assert (=> b!6971077 (= res!2843342 (isEmpty!39012 l!9142))))

(declare-fun b!6971078 () Bool)

(assert (=> b!6971078 (= e!4190257 (not e!4190255))))

(declare-fun res!2843341 () Bool)

(assert (=> b!6971078 (=> res!2843341 e!4190255)))

(assert (=> b!6971078 (= res!2843341 (not (is-Union!17126 r!13765)))))

(assert (=> b!6971078 (= lt!2479591 (matchRSpec!4143 r!13765 s!9351))))

(assert (=> b!6971078 (= lt!2479591 (matchR!9228 r!13765 s!9351))))

(declare-fun lt!2479590 () Unit!160904)

(assert (=> b!6971078 (= lt!2479590 (mainMatchTheorem!4137 r!13765 s!9351))))

(assert (= (and start!668476 res!2843343) b!6971067))

(assert (= (and b!6971067 res!2843345) b!6971078))

(assert (= (and b!6971078 (not res!2843341)) b!6971077))

(assert (= (and b!6971077 (not res!2843342)) b!6971072))

(assert (= (and b!6971072 (not res!2843347)) b!6971075))

(assert (= (and b!6971075 (not res!2843346)) b!6971068))

(assert (= (and b!6971075 (not res!2843344)) b!6971066))

(assert (= (and start!668476 (is-Cons!66809 l!9142)) b!6971076))

(assert (= (and start!668476 (is-ElementMatch!17126 r!13765)) b!6971070))

(assert (= (and start!668476 (is-Concat!25971 r!13765)) b!6971073))

(assert (= (and start!668476 (is-Star!17126 r!13765)) b!6971071))

(assert (= (and start!668476 (is-Union!17126 r!13765)) b!6971069))

(assert (= (and start!668476 (is-Cons!66810 s!9351)) b!6971074))

(declare-fun m!7659732 () Bool)

(assert (=> b!6971075 m!7659732))

(declare-fun m!7659734 () Bool)

(assert (=> b!6971077 m!7659734))

(declare-fun m!7659736 () Bool)

(assert (=> b!6971068 m!7659736))

(declare-fun m!7659738 () Bool)

(assert (=> b!6971072 m!7659738))

(declare-fun m!7659740 () Bool)

(assert (=> b!6971072 m!7659740))

(declare-fun m!7659742 () Bool)

(assert (=> b!6971078 m!7659742))

(declare-fun m!7659744 () Bool)

(assert (=> b!6971078 m!7659744))

(declare-fun m!7659746 () Bool)

(assert (=> b!6971078 m!7659746))

(declare-fun m!7659748 () Bool)

(assert (=> b!6971066 m!7659748))

(declare-fun m!7659750 () Bool)

(assert (=> b!6971066 m!7659750))

(declare-fun m!7659752 () Bool)

(assert (=> b!6971066 m!7659752))

(assert (=> b!6971066 m!7659736))

(declare-fun m!7659754 () Bool)

(assert (=> b!6971066 m!7659754))

(declare-fun m!7659756 () Bool)

(assert (=> b!6971066 m!7659756))

(declare-fun m!7659758 () Bool)

(assert (=> b!6971067 m!7659758))

(declare-fun m!7659760 () Bool)

(assert (=> start!668476 m!7659760))

(push 1)

(assert tp_is_empty!43477)

(assert (not b!6971073))

(assert (not b!6971066))

(assert (not b!6971074))

(assert (not start!668476))

(assert (not b!6971067))

(assert (not b!6971078))

(assert (not b!6971076))

(assert (not b!6971075))

(assert (not b!6971072))

(assert (not b!6971069))

(assert (not b!6971068))

(assert (not b!6971077))

(assert (not b!6971071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6971159 () Bool)

(assert (=> b!6971159 true))

(assert (=> b!6971159 true))

(declare-fun bs!1859236 () Bool)

(declare-fun b!6971160 () Bool)

(assert (= bs!1859236 (and b!6971160 b!6971159)))

(declare-fun lambda!397702 () Int)

(declare-fun lambda!397701 () Int)

(assert (=> bs!1859236 (not (= lambda!397702 lambda!397701))))

(assert (=> b!6971160 true))

(assert (=> b!6971160 true))

(declare-fun b!6971150 () Bool)

(declare-fun e!4190308 () Bool)

(declare-fun e!4190305 () Bool)

(assert (=> b!6971150 (= e!4190308 e!4190305)))

(declare-fun res!2843387 () Bool)

(assert (=> b!6971150 (= res!2843387 (not (is-EmptyLang!17126 (regTwo!34765 r!13765))))))

(assert (=> b!6971150 (=> (not res!2843387) (not e!4190305))))

(declare-fun b!6971151 () Bool)

(declare-fun e!4190307 () Bool)

(declare-fun e!4190309 () Bool)

(assert (=> b!6971151 (= e!4190307 e!4190309)))

(declare-fun res!2843385 () Bool)

(assert (=> b!6971151 (= res!2843385 (matchRSpec!4143 (regOne!34765 (regTwo!34765 r!13765)) s!9351))))

(assert (=> b!6971151 (=> res!2843385 e!4190309)))

(declare-fun call!632802 () Bool)

(declare-fun bm!632797 () Bool)

(declare-fun c!1292270 () Bool)

(declare-fun Exists!4089 (Int) Bool)

(assert (=> bm!632797 (= call!632802 (Exists!4089 (ite c!1292270 lambda!397701 lambda!397702)))))

(declare-fun b!6971152 () Bool)

(assert (=> b!6971152 (= e!4190309 (matchRSpec!4143 (regTwo!34765 (regTwo!34765 r!13765)) s!9351))))

(declare-fun b!6971153 () Bool)

(declare-fun c!1292272 () Bool)

(assert (=> b!6971153 (= c!1292272 (is-Union!17126 (regTwo!34765 r!13765)))))

(declare-fun e!4190306 () Bool)

(assert (=> b!6971153 (= e!4190306 e!4190307)))

(declare-fun b!6971154 () Bool)

(declare-fun c!1292273 () Bool)

(assert (=> b!6971154 (= c!1292273 (is-ElementMatch!17126 (regTwo!34765 r!13765)))))

(assert (=> b!6971154 (= e!4190305 e!4190306)))

(declare-fun d!2171257 () Bool)

(declare-fun c!1292271 () Bool)

(assert (=> d!2171257 (= c!1292271 (is-EmptyExpr!17126 (regTwo!34765 r!13765)))))

(assert (=> d!2171257 (= (matchRSpec!4143 (regTwo!34765 r!13765) s!9351) e!4190308)))

(declare-fun b!6971155 () Bool)

(declare-fun res!2843386 () Bool)

(declare-fun e!4190303 () Bool)

(assert (=> b!6971155 (=> res!2843386 e!4190303)))

(declare-fun call!632803 () Bool)

(assert (=> b!6971155 (= res!2843386 call!632803)))

(declare-fun e!4190304 () Bool)

(assert (=> b!6971155 (= e!4190304 e!4190303)))

(declare-fun b!6971156 () Bool)

(assert (=> b!6971156 (= e!4190308 call!632803)))

(declare-fun b!6971157 () Bool)

(assert (=> b!6971157 (= e!4190306 (= s!9351 (Cons!66810 (c!1292260 (regTwo!34765 r!13765)) Nil!66810)))))

(declare-fun b!6971158 () Bool)

(assert (=> b!6971158 (= e!4190307 e!4190304)))

(assert (=> b!6971158 (= c!1292270 (is-Star!17126 (regTwo!34765 r!13765)))))

(assert (=> b!6971159 (= e!4190303 call!632802)))

(assert (=> b!6971160 (= e!4190304 call!632802)))

(declare-fun bm!632798 () Bool)

(declare-fun isEmpty!39014 (List!66934) Bool)

(assert (=> bm!632798 (= call!632803 (isEmpty!39014 s!9351))))

(assert (= (and d!2171257 c!1292271) b!6971156))

(assert (= (and d!2171257 (not c!1292271)) b!6971150))

(assert (= (and b!6971150 res!2843387) b!6971154))

(assert (= (and b!6971154 c!1292273) b!6971157))

(assert (= (and b!6971154 (not c!1292273)) b!6971153))

(assert (= (and b!6971153 c!1292272) b!6971151))

(assert (= (and b!6971153 (not c!1292272)) b!6971158))

(assert (= (and b!6971151 (not res!2843385)) b!6971152))

(assert (= (and b!6971158 c!1292270) b!6971155))

(assert (= (and b!6971158 (not c!1292270)) b!6971160))

(assert (= (and b!6971155 (not res!2843386)) b!6971159))

(assert (= (or b!6971159 b!6971160) bm!632797))

(assert (= (or b!6971156 b!6971155) bm!632798))

(declare-fun m!7659792 () Bool)

(assert (=> b!6971151 m!7659792))

(declare-fun m!7659794 () Bool)

(assert (=> bm!632797 m!7659794))

(declare-fun m!7659796 () Bool)

(assert (=> b!6971152 m!7659796))

(declare-fun m!7659798 () Bool)

(assert (=> bm!632798 m!7659798))

(assert (=> b!6971068 d!2171257))

(declare-fun d!2171261 () Bool)

(assert (=> d!2171261 (= (isEmpty!39012 lt!2479594) (is-Nil!66809 lt!2479594))))

(assert (=> b!6971072 d!2171261))

(declare-fun d!2171263 () Bool)

(assert (=> d!2171263 (= (tail!13092 l!9142) (t!380676 l!9142))))

(assert (=> b!6971072 d!2171263))

(declare-fun bs!1859237 () Bool)

(declare-fun d!2171265 () Bool)

(assert (= bs!1859237 (and d!2171265 start!668476)))

(declare-fun lambda!397709 () Int)

(assert (=> bs!1859237 (= lambda!397709 lambda!397691)))

(declare-fun b!6971217 () Bool)

(declare-fun e!4190342 () Regex!17126)

(declare-fun e!4190345 () Regex!17126)

(assert (=> b!6971217 (= e!4190342 e!4190345)))

(declare-fun c!1292293 () Bool)

(assert (=> b!6971217 (= c!1292293 (is-Cons!66809 l!9142))))

(declare-fun b!6971218 () Bool)

(assert (=> b!6971218 (= e!4190342 (h!73257 l!9142))))

(declare-fun b!6971219 () Bool)

(declare-fun e!4190344 () Bool)

(declare-fun lt!2479616 () Regex!17126)

(declare-fun isUnion!1492 (Regex!17126) Bool)

(assert (=> b!6971219 (= e!4190344 (isUnion!1492 lt!2479616))))

(declare-fun e!4190343 () Bool)

(assert (=> d!2171265 e!4190343))

(declare-fun res!2843409 () Bool)

(assert (=> d!2171265 (=> (not res!2843409) (not e!4190343))))

(declare-fun validRegex!8808 (Regex!17126) Bool)

(assert (=> d!2171265 (= res!2843409 (validRegex!8808 lt!2479616))))

(assert (=> d!2171265 (= lt!2479616 e!4190342)))

(declare-fun c!1292290 () Bool)

(declare-fun e!4190341 () Bool)

(assert (=> d!2171265 (= c!1292290 e!4190341)))

(declare-fun res!2843408 () Bool)

(assert (=> d!2171265 (=> (not res!2843408) (not e!4190341))))

(assert (=> d!2171265 (= res!2843408 (is-Cons!66809 l!9142))))

(assert (=> d!2171265 (forall!15997 l!9142 lambda!397709)))

(assert (=> d!2171265 (= (generalisedUnion!2601 l!9142) lt!2479616)))

(declare-fun b!6971220 () Bool)

(declare-fun head!14024 (List!66933) Regex!17126)

(assert (=> b!6971220 (= e!4190344 (= lt!2479616 (head!14024 l!9142)))))

(declare-fun b!6971221 () Bool)

(declare-fun e!4190340 () Bool)

(assert (=> b!6971221 (= e!4190343 e!4190340)))

(declare-fun c!1292291 () Bool)

(assert (=> b!6971221 (= c!1292291 (isEmpty!39012 l!9142))))

(declare-fun b!6971222 () Bool)

(assert (=> b!6971222 (= e!4190345 (Union!17126 (h!73257 l!9142) (generalisedUnion!2601 (t!380676 l!9142))))))

(declare-fun b!6971223 () Bool)

(assert (=> b!6971223 (= e!4190341 (isEmpty!39012 (t!380676 l!9142)))))

(declare-fun b!6971224 () Bool)

(assert (=> b!6971224 (= e!4190340 e!4190344)))

(declare-fun c!1292292 () Bool)

(assert (=> b!6971224 (= c!1292292 (isEmpty!39012 (tail!13092 l!9142)))))

(declare-fun b!6971225 () Bool)

(declare-fun isEmptyLang!2064 (Regex!17126) Bool)

(assert (=> b!6971225 (= e!4190340 (isEmptyLang!2064 lt!2479616))))

(declare-fun b!6971226 () Bool)

(assert (=> b!6971226 (= e!4190345 EmptyLang!17126)))

(assert (= (and d!2171265 res!2843408) b!6971223))

(assert (= (and d!2171265 c!1292290) b!6971218))

(assert (= (and d!2171265 (not c!1292290)) b!6971217))

(assert (= (and b!6971217 c!1292293) b!6971222))

(assert (= (and b!6971217 (not c!1292293)) b!6971226))

(assert (= (and d!2171265 res!2843409) b!6971221))

(assert (= (and b!6971221 c!1292291) b!6971225))

(assert (= (and b!6971221 (not c!1292291)) b!6971224))

(assert (= (and b!6971224 c!1292292) b!6971220))

(assert (= (and b!6971224 (not c!1292292)) b!6971219))

(declare-fun m!7659800 () Bool)

(assert (=> b!6971219 m!7659800))

(assert (=> b!6971224 m!7659740))

(assert (=> b!6971224 m!7659740))

(declare-fun m!7659802 () Bool)

(assert (=> b!6971224 m!7659802))

(declare-fun m!7659804 () Bool)

(assert (=> b!6971223 m!7659804))

(declare-fun m!7659806 () Bool)

(assert (=> b!6971220 m!7659806))

(declare-fun m!7659808 () Bool)

(assert (=> d!2171265 m!7659808))

(declare-fun m!7659810 () Bool)

(assert (=> d!2171265 m!7659810))

(declare-fun m!7659812 () Bool)

(assert (=> b!6971222 m!7659812))

(assert (=> b!6971221 m!7659734))

(declare-fun m!7659814 () Bool)

(assert (=> b!6971225 m!7659814))

(assert (=> b!6971067 d!2171265))

(declare-fun bs!1859238 () Bool)

(declare-fun b!6971236 () Bool)

(assert (= bs!1859238 (and b!6971236 b!6971159)))

(declare-fun lambda!397710 () Int)

(assert (=> bs!1859238 (= (and (= (reg!17455 r!13765) (reg!17455 (regTwo!34765 r!13765))) (= r!13765 (regTwo!34765 r!13765))) (= lambda!397710 lambda!397701))))

(declare-fun bs!1859239 () Bool)

(assert (= bs!1859239 (and b!6971236 b!6971160)))

(assert (=> bs!1859239 (not (= lambda!397710 lambda!397702))))

(assert (=> b!6971236 true))

(assert (=> b!6971236 true))

(declare-fun bs!1859240 () Bool)

(declare-fun b!6971237 () Bool)

(assert (= bs!1859240 (and b!6971237 b!6971159)))

(declare-fun lambda!397711 () Int)

(assert (=> bs!1859240 (not (= lambda!397711 lambda!397701))))

(declare-fun bs!1859241 () Bool)

(assert (= bs!1859241 (and b!6971237 b!6971160)))

(assert (=> bs!1859241 (= (and (= (regOne!34764 r!13765) (regOne!34764 (regTwo!34765 r!13765))) (= (regTwo!34764 r!13765) (regTwo!34764 (regTwo!34765 r!13765)))) (= lambda!397711 lambda!397702))))

(declare-fun bs!1859242 () Bool)

(assert (= bs!1859242 (and b!6971237 b!6971236)))

(assert (=> bs!1859242 (not (= lambda!397711 lambda!397710))))

(assert (=> b!6971237 true))

(assert (=> b!6971237 true))

(declare-fun b!6971227 () Bool)

(declare-fun e!4190351 () Bool)

(declare-fun e!4190348 () Bool)

(assert (=> b!6971227 (= e!4190351 e!4190348)))

(declare-fun res!2843412 () Bool)

(assert (=> b!6971227 (= res!2843412 (not (is-EmptyLang!17126 r!13765)))))

(assert (=> b!6971227 (=> (not res!2843412) (not e!4190348))))

(declare-fun b!6971228 () Bool)

(declare-fun e!4190350 () Bool)

(declare-fun e!4190352 () Bool)

(assert (=> b!6971228 (= e!4190350 e!4190352)))

(declare-fun res!2843410 () Bool)

(assert (=> b!6971228 (= res!2843410 (matchRSpec!4143 (regOne!34765 r!13765) s!9351))))

(assert (=> b!6971228 (=> res!2843410 e!4190352)))

(declare-fun c!1292294 () Bool)

(declare-fun bm!632799 () Bool)

(declare-fun call!632804 () Bool)

(assert (=> bm!632799 (= call!632804 (Exists!4089 (ite c!1292294 lambda!397710 lambda!397711)))))

(declare-fun b!6971229 () Bool)

(assert (=> b!6971229 (= e!4190352 (matchRSpec!4143 (regTwo!34765 r!13765) s!9351))))

(declare-fun b!6971230 () Bool)

(declare-fun c!1292296 () Bool)

(assert (=> b!6971230 (= c!1292296 (is-Union!17126 r!13765))))

(declare-fun e!4190349 () Bool)

(assert (=> b!6971230 (= e!4190349 e!4190350)))

(declare-fun b!6971231 () Bool)

(declare-fun c!1292297 () Bool)

(assert (=> b!6971231 (= c!1292297 (is-ElementMatch!17126 r!13765))))

(assert (=> b!6971231 (= e!4190348 e!4190349)))

(declare-fun d!2171267 () Bool)

(declare-fun c!1292295 () Bool)

(assert (=> d!2171267 (= c!1292295 (is-EmptyExpr!17126 r!13765))))

(assert (=> d!2171267 (= (matchRSpec!4143 r!13765 s!9351) e!4190351)))

(declare-fun b!6971232 () Bool)

(declare-fun res!2843411 () Bool)

(declare-fun e!4190346 () Bool)

(assert (=> b!6971232 (=> res!2843411 e!4190346)))

(declare-fun call!632805 () Bool)

(assert (=> b!6971232 (= res!2843411 call!632805)))

(declare-fun e!4190347 () Bool)

(assert (=> b!6971232 (= e!4190347 e!4190346)))

(declare-fun b!6971233 () Bool)

(assert (=> b!6971233 (= e!4190351 call!632805)))

(declare-fun b!6971234 () Bool)

(assert (=> b!6971234 (= e!4190349 (= s!9351 (Cons!66810 (c!1292260 r!13765) Nil!66810)))))

(declare-fun b!6971235 () Bool)

(assert (=> b!6971235 (= e!4190350 e!4190347)))

(assert (=> b!6971235 (= c!1292294 (is-Star!17126 r!13765))))

(assert (=> b!6971236 (= e!4190346 call!632804)))

(assert (=> b!6971237 (= e!4190347 call!632804)))

(declare-fun bm!632800 () Bool)

(assert (=> bm!632800 (= call!632805 (isEmpty!39014 s!9351))))

(assert (= (and d!2171267 c!1292295) b!6971233))

(assert (= (and d!2171267 (not c!1292295)) b!6971227))

(assert (= (and b!6971227 res!2843412) b!6971231))

(assert (= (and b!6971231 c!1292297) b!6971234))

(assert (= (and b!6971231 (not c!1292297)) b!6971230))

(assert (= (and b!6971230 c!1292296) b!6971228))

(assert (= (and b!6971230 (not c!1292296)) b!6971235))

(assert (= (and b!6971228 (not res!2843410)) b!6971229))

(assert (= (and b!6971235 c!1292294) b!6971232))

(assert (= (and b!6971235 (not c!1292294)) b!6971237))

(assert (= (and b!6971232 (not res!2843411)) b!6971236))

(assert (= (or b!6971236 b!6971237) bm!632799))

(assert (= (or b!6971233 b!6971232) bm!632800))

(assert (=> b!6971228 m!7659732))

(declare-fun m!7659816 () Bool)

(assert (=> bm!632799 m!7659816))

(assert (=> b!6971229 m!7659736))

(assert (=> bm!632800 m!7659798))

(assert (=> b!6971078 d!2171267))

(declare-fun b!6971277 () Bool)

(declare-fun e!4190374 () Bool)

(declare-fun head!14025 (List!66934) C!34522)

(assert (=> b!6971277 (= e!4190374 (not (= (head!14025 s!9351) (c!1292260 r!13765))))))

(declare-fun b!6971278 () Bool)

(declare-fun res!2843432 () Bool)

(declare-fun e!4190379 () Bool)

(assert (=> b!6971278 (=> res!2843432 e!4190379)))

(assert (=> b!6971278 (= res!2843432 (not (is-ElementMatch!17126 r!13765)))))

(declare-fun e!4190378 () Bool)

(assert (=> b!6971278 (= e!4190378 e!4190379)))

(declare-fun d!2171269 () Bool)

(declare-fun e!4190376 () Bool)

(assert (=> d!2171269 e!4190376))

(declare-fun c!1292308 () Bool)

(assert (=> d!2171269 (= c!1292308 (is-EmptyExpr!17126 r!13765))))

(declare-fun lt!2479619 () Bool)

(declare-fun e!4190380 () Bool)

(assert (=> d!2171269 (= lt!2479619 e!4190380)))

(declare-fun c!1292309 () Bool)

(assert (=> d!2171269 (= c!1292309 (isEmpty!39014 s!9351))))

(assert (=> d!2171269 (validRegex!8808 r!13765)))

(assert (=> d!2171269 (= (matchR!9228 r!13765 s!9351) lt!2479619)))

(declare-fun b!6971279 () Bool)

(assert (=> b!6971279 (= e!4190376 e!4190378)))

(declare-fun c!1292310 () Bool)

(assert (=> b!6971279 (= c!1292310 (is-EmptyLang!17126 r!13765))))

(declare-fun b!6971280 () Bool)

(declare-fun call!632814 () Bool)

(assert (=> b!6971280 (= e!4190376 (= lt!2479619 call!632814))))

(declare-fun b!6971281 () Bool)

(declare-fun res!2843437 () Bool)

(declare-fun e!4190375 () Bool)

(assert (=> b!6971281 (=> (not res!2843437) (not e!4190375))))

(declare-fun tail!13094 (List!66934) List!66934)

(assert (=> b!6971281 (= res!2843437 (isEmpty!39014 (tail!13094 s!9351)))))

(declare-fun b!6971282 () Bool)

(assert (=> b!6971282 (= e!4190375 (= (head!14025 s!9351) (c!1292260 r!13765)))))

(declare-fun b!6971283 () Bool)

(declare-fun nullable!6911 (Regex!17126) Bool)

(assert (=> b!6971283 (= e!4190380 (nullable!6911 r!13765))))

(declare-fun b!6971284 () Bool)

(assert (=> b!6971284 (= e!4190378 (not lt!2479619))))

(declare-fun b!6971285 () Bool)

(declare-fun e!4190377 () Bool)

(assert (=> b!6971285 (= e!4190377 e!4190374)))

(declare-fun res!2843435 () Bool)

(assert (=> b!6971285 (=> res!2843435 e!4190374)))

(assert (=> b!6971285 (= res!2843435 call!632814)))

(declare-fun b!6971286 () Bool)

(declare-fun res!2843439 () Bool)

(assert (=> b!6971286 (=> res!2843439 e!4190379)))

(assert (=> b!6971286 (= res!2843439 e!4190375)))

(declare-fun res!2843436 () Bool)

(assert (=> b!6971286 (=> (not res!2843436) (not e!4190375))))

(assert (=> b!6971286 (= res!2843436 lt!2479619)))

(declare-fun b!6971287 () Bool)

(declare-fun res!2843434 () Bool)

(assert (=> b!6971287 (=> (not res!2843434) (not e!4190375))))

(assert (=> b!6971287 (= res!2843434 (not call!632814))))

(declare-fun b!6971288 () Bool)

(declare-fun res!2843438 () Bool)

(assert (=> b!6971288 (=> res!2843438 e!4190374)))

(assert (=> b!6971288 (= res!2843438 (not (isEmpty!39014 (tail!13094 s!9351))))))

(declare-fun bm!632809 () Bool)

(assert (=> bm!632809 (= call!632814 (isEmpty!39014 s!9351))))

(declare-fun b!6971289 () Bool)

(declare-fun derivativeStep!5536 (Regex!17126 C!34522) Regex!17126)

(assert (=> b!6971289 (= e!4190380 (matchR!9228 (derivativeStep!5536 r!13765 (head!14025 s!9351)) (tail!13094 s!9351)))))

(declare-fun b!6971290 () Bool)

(assert (=> b!6971290 (= e!4190379 e!4190377)))

(declare-fun res!2843433 () Bool)

(assert (=> b!6971290 (=> (not res!2843433) (not e!4190377))))

(assert (=> b!6971290 (= res!2843433 (not lt!2479619))))

(assert (= (and d!2171269 c!1292309) b!6971283))

(assert (= (and d!2171269 (not c!1292309)) b!6971289))

(assert (= (and d!2171269 c!1292308) b!6971280))

(assert (= (and d!2171269 (not c!1292308)) b!6971279))

(assert (= (and b!6971279 c!1292310) b!6971284))

(assert (= (and b!6971279 (not c!1292310)) b!6971278))

(assert (= (and b!6971278 (not res!2843432)) b!6971286))

(assert (= (and b!6971286 res!2843436) b!6971287))

(assert (= (and b!6971287 res!2843434) b!6971281))

(assert (= (and b!6971281 res!2843437) b!6971282))

(assert (= (and b!6971286 (not res!2843439)) b!6971290))

(assert (= (and b!6971290 res!2843433) b!6971285))

(assert (= (and b!6971285 (not res!2843435)) b!6971288))

(assert (= (and b!6971288 (not res!2843438)) b!6971277))

(assert (= (or b!6971280 b!6971285 b!6971287) bm!632809))

(declare-fun m!7659818 () Bool)

(assert (=> b!6971277 m!7659818))

(assert (=> b!6971289 m!7659818))

(assert (=> b!6971289 m!7659818))

(declare-fun m!7659820 () Bool)

(assert (=> b!6971289 m!7659820))

(declare-fun m!7659822 () Bool)

(assert (=> b!6971289 m!7659822))

(assert (=> b!6971289 m!7659820))

(assert (=> b!6971289 m!7659822))

(declare-fun m!7659824 () Bool)

(assert (=> b!6971289 m!7659824))

(assert (=> b!6971288 m!7659822))

(assert (=> b!6971288 m!7659822))

(declare-fun m!7659826 () Bool)

(assert (=> b!6971288 m!7659826))

(assert (=> b!6971282 m!7659818))

(assert (=> d!2171269 m!7659798))

(declare-fun m!7659828 () Bool)

(assert (=> d!2171269 m!7659828))

(assert (=> bm!632809 m!7659798))

(declare-fun m!7659830 () Bool)

(assert (=> b!6971283 m!7659830))

(assert (=> b!6971281 m!7659822))

(assert (=> b!6971281 m!7659822))

(assert (=> b!6971281 m!7659826))

(assert (=> b!6971078 d!2171269))

(declare-fun d!2171271 () Bool)

(assert (=> d!2171271 (= (matchR!9228 r!13765 s!9351) (matchRSpec!4143 r!13765 s!9351))))

(declare-fun lt!2479622 () Unit!160904)

(declare-fun choose!51908 (Regex!17126 List!66934) Unit!160904)

(assert (=> d!2171271 (= lt!2479622 (choose!51908 r!13765 s!9351))))

(assert (=> d!2171271 (validRegex!8808 r!13765)))

(assert (=> d!2171271 (= (mainMatchTheorem!4137 r!13765 s!9351) lt!2479622)))

(declare-fun bs!1859244 () Bool)

(assert (= bs!1859244 d!2171271))

(assert (=> bs!1859244 m!7659744))

(assert (=> bs!1859244 m!7659742))

(declare-fun m!7659840 () Bool)

(assert (=> bs!1859244 m!7659840))

(assert (=> bs!1859244 m!7659828))

(assert (=> b!6971078 d!2171271))

(declare-fun d!2171275 () Bool)

(declare-fun res!2843444 () Bool)

(declare-fun e!4190385 () Bool)

(assert (=> d!2171275 (=> res!2843444 e!4190385)))

(assert (=> d!2171275 (= res!2843444 (is-Nil!66809 l!9142))))

(assert (=> d!2171275 (= (forall!15997 l!9142 lambda!397691) e!4190385)))

(declare-fun b!6971299 () Bool)

(declare-fun e!4190386 () Bool)

(assert (=> b!6971299 (= e!4190385 e!4190386)))

(declare-fun res!2843445 () Bool)

(assert (=> b!6971299 (=> (not res!2843445) (not e!4190386))))

(declare-fun dynLambda!26640 (Int Regex!17126) Bool)

(assert (=> b!6971299 (= res!2843445 (dynLambda!26640 lambda!397691 (h!73257 l!9142)))))

(declare-fun b!6971300 () Bool)

(assert (=> b!6971300 (= e!4190386 (forall!15997 (t!380676 l!9142) lambda!397691))))

(assert (= (and d!2171275 (not res!2843444)) b!6971299))

(assert (= (and b!6971299 res!2843445) b!6971300))

(declare-fun b_lambda!260797 () Bool)

(assert (=> (not b_lambda!260797) (not b!6971299)))

(declare-fun m!7659842 () Bool)

(assert (=> b!6971299 m!7659842))

(declare-fun m!7659844 () Bool)

(assert (=> b!6971300 m!7659844))

(assert (=> start!668476 d!2171275))

(declare-fun b!6971301 () Bool)

(declare-fun e!4190387 () Bool)

(assert (=> b!6971301 (= e!4190387 (not (= (head!14025 s!9351) (c!1292260 (regTwo!34765 r!13765)))))))

(declare-fun b!6971302 () Bool)

(declare-fun res!2843446 () Bool)

(declare-fun e!4190392 () Bool)

(assert (=> b!6971302 (=> res!2843446 e!4190392)))

(assert (=> b!6971302 (= res!2843446 (not (is-ElementMatch!17126 (regTwo!34765 r!13765))))))

(declare-fun e!4190391 () Bool)

(assert (=> b!6971302 (= e!4190391 e!4190392)))

(declare-fun d!2171277 () Bool)

(declare-fun e!4190389 () Bool)

(assert (=> d!2171277 e!4190389))

(declare-fun c!1292311 () Bool)

(assert (=> d!2171277 (= c!1292311 (is-EmptyExpr!17126 (regTwo!34765 r!13765)))))

(declare-fun lt!2479623 () Bool)

(declare-fun e!4190393 () Bool)

(assert (=> d!2171277 (= lt!2479623 e!4190393)))

(declare-fun c!1292312 () Bool)

(assert (=> d!2171277 (= c!1292312 (isEmpty!39014 s!9351))))

(assert (=> d!2171277 (validRegex!8808 (regTwo!34765 r!13765))))

(assert (=> d!2171277 (= (matchR!9228 (regTwo!34765 r!13765) s!9351) lt!2479623)))

(declare-fun b!6971303 () Bool)

(assert (=> b!6971303 (= e!4190389 e!4190391)))

(declare-fun c!1292313 () Bool)

(assert (=> b!6971303 (= c!1292313 (is-EmptyLang!17126 (regTwo!34765 r!13765)))))

(declare-fun b!6971304 () Bool)

(declare-fun call!632815 () Bool)

(assert (=> b!6971304 (= e!4190389 (= lt!2479623 call!632815))))

(declare-fun b!6971305 () Bool)

(declare-fun res!2843451 () Bool)

(declare-fun e!4190388 () Bool)

(assert (=> b!6971305 (=> (not res!2843451) (not e!4190388))))

(assert (=> b!6971305 (= res!2843451 (isEmpty!39014 (tail!13094 s!9351)))))

(declare-fun b!6971306 () Bool)

(assert (=> b!6971306 (= e!4190388 (= (head!14025 s!9351) (c!1292260 (regTwo!34765 r!13765))))))

(declare-fun b!6971307 () Bool)

(assert (=> b!6971307 (= e!4190393 (nullable!6911 (regTwo!34765 r!13765)))))

(declare-fun b!6971308 () Bool)

(assert (=> b!6971308 (= e!4190391 (not lt!2479623))))

(declare-fun b!6971309 () Bool)

(declare-fun e!4190390 () Bool)

(assert (=> b!6971309 (= e!4190390 e!4190387)))

(declare-fun res!2843449 () Bool)

(assert (=> b!6971309 (=> res!2843449 e!4190387)))

(assert (=> b!6971309 (= res!2843449 call!632815)))

(declare-fun b!6971310 () Bool)

(declare-fun res!2843453 () Bool)

(assert (=> b!6971310 (=> res!2843453 e!4190392)))

(assert (=> b!6971310 (= res!2843453 e!4190388)))

(declare-fun res!2843450 () Bool)

(assert (=> b!6971310 (=> (not res!2843450) (not e!4190388))))

(assert (=> b!6971310 (= res!2843450 lt!2479623)))

(declare-fun b!6971311 () Bool)

(declare-fun res!2843448 () Bool)

(assert (=> b!6971311 (=> (not res!2843448) (not e!4190388))))

(assert (=> b!6971311 (= res!2843448 (not call!632815))))

(declare-fun b!6971312 () Bool)

(declare-fun res!2843452 () Bool)

(assert (=> b!6971312 (=> res!2843452 e!4190387)))

(assert (=> b!6971312 (= res!2843452 (not (isEmpty!39014 (tail!13094 s!9351))))))

(declare-fun bm!632810 () Bool)

(assert (=> bm!632810 (= call!632815 (isEmpty!39014 s!9351))))

(declare-fun b!6971313 () Bool)

(assert (=> b!6971313 (= e!4190393 (matchR!9228 (derivativeStep!5536 (regTwo!34765 r!13765) (head!14025 s!9351)) (tail!13094 s!9351)))))

(declare-fun b!6971314 () Bool)

(assert (=> b!6971314 (= e!4190392 e!4190390)))

(declare-fun res!2843447 () Bool)

(assert (=> b!6971314 (=> (not res!2843447) (not e!4190390))))

(assert (=> b!6971314 (= res!2843447 (not lt!2479623))))

(assert (= (and d!2171277 c!1292312) b!6971307))

(assert (= (and d!2171277 (not c!1292312)) b!6971313))

(assert (= (and d!2171277 c!1292311) b!6971304))

(assert (= (and d!2171277 (not c!1292311)) b!6971303))

(assert (= (and b!6971303 c!1292313) b!6971308))

(assert (= (and b!6971303 (not c!1292313)) b!6971302))

(assert (= (and b!6971302 (not res!2843446)) b!6971310))

(assert (= (and b!6971310 res!2843450) b!6971311))

(assert (= (and b!6971311 res!2843448) b!6971305))

(assert (= (and b!6971305 res!2843451) b!6971306))

(assert (= (and b!6971310 (not res!2843453)) b!6971314))

(assert (= (and b!6971314 res!2843447) b!6971309))

(assert (= (and b!6971309 (not res!2843449)) b!6971312))

(assert (= (and b!6971312 (not res!2843452)) b!6971301))

(assert (= (or b!6971304 b!6971309 b!6971311) bm!632810))

(assert (=> b!6971301 m!7659818))

(assert (=> b!6971313 m!7659818))

(assert (=> b!6971313 m!7659818))

(declare-fun m!7659846 () Bool)

(assert (=> b!6971313 m!7659846))

(assert (=> b!6971313 m!7659822))

(assert (=> b!6971313 m!7659846))

(assert (=> b!6971313 m!7659822))

(declare-fun m!7659848 () Bool)

(assert (=> b!6971313 m!7659848))

(assert (=> b!6971312 m!7659822))

(assert (=> b!6971312 m!7659822))

(assert (=> b!6971312 m!7659826))

(assert (=> b!6971306 m!7659818))

(assert (=> d!2171277 m!7659798))

(declare-fun m!7659850 () Bool)

(assert (=> d!2171277 m!7659850))

(assert (=> bm!632810 m!7659798))

(declare-fun m!7659852 () Bool)

(assert (=> b!6971307 m!7659852))

(assert (=> b!6971305 m!7659822))

(assert (=> b!6971305 m!7659822))

(assert (=> b!6971305 m!7659826))

(assert (=> b!6971066 d!2171277))

(assert (=> b!6971066 d!2171257))

(declare-fun d!2171279 () Bool)

(assert (=> d!2171279 (= (matchR!9228 (regTwo!34765 r!13765) s!9351) (matchRSpec!4143 (regTwo!34765 r!13765) s!9351))))

(declare-fun lt!2479624 () Unit!160904)

(assert (=> d!2171279 (= lt!2479624 (choose!51908 (regTwo!34765 r!13765) s!9351))))

(assert (=> d!2171279 (validRegex!8808 (regTwo!34765 r!13765))))

(assert (=> d!2171279 (= (mainMatchTheorem!4137 (regTwo!34765 r!13765) s!9351) lt!2479624)))

(declare-fun bs!1859245 () Bool)

(assert (= bs!1859245 d!2171279))

(assert (=> bs!1859245 m!7659748))

(assert (=> bs!1859245 m!7659736))

(declare-fun m!7659854 () Bool)

(assert (=> bs!1859245 m!7659854))

(assert (=> bs!1859245 m!7659850))

(assert (=> b!6971066 d!2171279))

(declare-fun b!6971315 () Bool)

(declare-fun e!4190394 () Bool)

(assert (=> b!6971315 (= e!4190394 (not (= (head!14025 s!9351) (c!1292260 (regOne!34765 r!13765)))))))

(declare-fun b!6971316 () Bool)

(declare-fun res!2843454 () Bool)

(declare-fun e!4190399 () Bool)

(assert (=> b!6971316 (=> res!2843454 e!4190399)))

(assert (=> b!6971316 (= res!2843454 (not (is-ElementMatch!17126 (regOne!34765 r!13765))))))

(declare-fun e!4190398 () Bool)

(assert (=> b!6971316 (= e!4190398 e!4190399)))

(declare-fun d!2171281 () Bool)

(declare-fun e!4190396 () Bool)

(assert (=> d!2171281 e!4190396))

(declare-fun c!1292314 () Bool)

(assert (=> d!2171281 (= c!1292314 (is-EmptyExpr!17126 (regOne!34765 r!13765)))))

(declare-fun lt!2479625 () Bool)

(declare-fun e!4190400 () Bool)

(assert (=> d!2171281 (= lt!2479625 e!4190400)))

(declare-fun c!1292315 () Bool)

(assert (=> d!2171281 (= c!1292315 (isEmpty!39014 s!9351))))

(assert (=> d!2171281 (validRegex!8808 (regOne!34765 r!13765))))

(assert (=> d!2171281 (= (matchR!9228 (regOne!34765 r!13765) s!9351) lt!2479625)))

(declare-fun b!6971317 () Bool)

(assert (=> b!6971317 (= e!4190396 e!4190398)))

(declare-fun c!1292316 () Bool)

(assert (=> b!6971317 (= c!1292316 (is-EmptyLang!17126 (regOne!34765 r!13765)))))

(declare-fun b!6971318 () Bool)

(declare-fun call!632816 () Bool)

(assert (=> b!6971318 (= e!4190396 (= lt!2479625 call!632816))))

(declare-fun b!6971319 () Bool)

(declare-fun res!2843459 () Bool)

(declare-fun e!4190395 () Bool)

(assert (=> b!6971319 (=> (not res!2843459) (not e!4190395))))

(assert (=> b!6971319 (= res!2843459 (isEmpty!39014 (tail!13094 s!9351)))))

(declare-fun b!6971320 () Bool)

(assert (=> b!6971320 (= e!4190395 (= (head!14025 s!9351) (c!1292260 (regOne!34765 r!13765))))))

(declare-fun b!6971321 () Bool)

(assert (=> b!6971321 (= e!4190400 (nullable!6911 (regOne!34765 r!13765)))))

(declare-fun b!6971322 () Bool)

(assert (=> b!6971322 (= e!4190398 (not lt!2479625))))

(declare-fun b!6971323 () Bool)

(declare-fun e!4190397 () Bool)

(assert (=> b!6971323 (= e!4190397 e!4190394)))

(declare-fun res!2843457 () Bool)

(assert (=> b!6971323 (=> res!2843457 e!4190394)))

(assert (=> b!6971323 (= res!2843457 call!632816)))

(declare-fun b!6971324 () Bool)

(declare-fun res!2843461 () Bool)

(assert (=> b!6971324 (=> res!2843461 e!4190399)))

(assert (=> b!6971324 (= res!2843461 e!4190395)))

(declare-fun res!2843458 () Bool)

(assert (=> b!6971324 (=> (not res!2843458) (not e!4190395))))

(assert (=> b!6971324 (= res!2843458 lt!2479625)))

(declare-fun b!6971325 () Bool)

(declare-fun res!2843456 () Bool)

(assert (=> b!6971325 (=> (not res!2843456) (not e!4190395))))

(assert (=> b!6971325 (= res!2843456 (not call!632816))))

(declare-fun b!6971326 () Bool)

(declare-fun res!2843460 () Bool)

(assert (=> b!6971326 (=> res!2843460 e!4190394)))

(assert (=> b!6971326 (= res!2843460 (not (isEmpty!39014 (tail!13094 s!9351))))))

(declare-fun bm!632811 () Bool)

(assert (=> bm!632811 (= call!632816 (isEmpty!39014 s!9351))))

(declare-fun b!6971327 () Bool)

(assert (=> b!6971327 (= e!4190400 (matchR!9228 (derivativeStep!5536 (regOne!34765 r!13765) (head!14025 s!9351)) (tail!13094 s!9351)))))

(declare-fun b!6971328 () Bool)

(assert (=> b!6971328 (= e!4190399 e!4190397)))

(declare-fun res!2843455 () Bool)

(assert (=> b!6971328 (=> (not res!2843455) (not e!4190397))))

(assert (=> b!6971328 (= res!2843455 (not lt!2479625))))

(assert (= (and d!2171281 c!1292315) b!6971321))

(assert (= (and d!2171281 (not c!1292315)) b!6971327))

(assert (= (and d!2171281 c!1292314) b!6971318))

(assert (= (and d!2171281 (not c!1292314)) b!6971317))

(assert (= (and b!6971317 c!1292316) b!6971322))

(assert (= (and b!6971317 (not c!1292316)) b!6971316))

(assert (= (and b!6971316 (not res!2843454)) b!6971324))

(assert (= (and b!6971324 res!2843458) b!6971325))

(assert (= (and b!6971325 res!2843456) b!6971319))

(assert (= (and b!6971319 res!2843459) b!6971320))

(assert (= (and b!6971324 (not res!2843461)) b!6971328))

(assert (= (and b!6971328 res!2843455) b!6971323))

(assert (= (and b!6971323 (not res!2843457)) b!6971326))

(assert (= (and b!6971326 (not res!2843460)) b!6971315))

(assert (= (or b!6971318 b!6971323 b!6971325) bm!632811))

(assert (=> b!6971315 m!7659818))

(assert (=> b!6971327 m!7659818))

(assert (=> b!6971327 m!7659818))

(declare-fun m!7659856 () Bool)

(assert (=> b!6971327 m!7659856))

(assert (=> b!6971327 m!7659822))

(assert (=> b!6971327 m!7659856))

(assert (=> b!6971327 m!7659822))

(declare-fun m!7659858 () Bool)

(assert (=> b!6971327 m!7659858))

(assert (=> b!6971326 m!7659822))

(assert (=> b!6971326 m!7659822))

(assert (=> b!6971326 m!7659826))

(assert (=> b!6971320 m!7659818))

(assert (=> d!2171281 m!7659798))

(declare-fun m!7659860 () Bool)

(assert (=> d!2171281 m!7659860))

(assert (=> bm!632811 m!7659798))

(declare-fun m!7659862 () Bool)

(assert (=> b!6971321 m!7659862))

(assert (=> b!6971319 m!7659822))

(assert (=> b!6971319 m!7659822))

(assert (=> b!6971319 m!7659826))

(assert (=> b!6971066 d!2171281))

(declare-fun d!2171283 () Bool)

(assert (=> d!2171283 (= (matchR!9228 (regOne!34765 r!13765) s!9351) (matchRSpec!4143 (regOne!34765 r!13765) s!9351))))

(declare-fun lt!2479626 () Unit!160904)

(assert (=> d!2171283 (= lt!2479626 (choose!51908 (regOne!34765 r!13765) s!9351))))

(assert (=> d!2171283 (validRegex!8808 (regOne!34765 r!13765))))

(assert (=> d!2171283 (= (mainMatchTheorem!4137 (regOne!34765 r!13765) s!9351) lt!2479626)))

(declare-fun bs!1859246 () Bool)

(assert (= bs!1859246 d!2171283))

(assert (=> bs!1859246 m!7659752))

(assert (=> bs!1859246 m!7659732))

(declare-fun m!7659864 () Bool)

(assert (=> bs!1859246 m!7659864))

(assert (=> bs!1859246 m!7659860))

(assert (=> b!6971066 d!2171283))

(declare-fun d!2171285 () Bool)

(declare-fun res!2843462 () Bool)

(declare-fun e!4190401 () Bool)

(assert (=> d!2171285 (=> res!2843462 e!4190401)))

(assert (=> d!2171285 (= res!2843462 (is-Nil!66809 lt!2479594))))

(assert (=> d!2171285 (= (forall!15997 lt!2479594 lambda!397691) e!4190401)))

(declare-fun b!6971329 () Bool)

(declare-fun e!4190402 () Bool)

(assert (=> b!6971329 (= e!4190401 e!4190402)))

(declare-fun res!2843463 () Bool)

(assert (=> b!6971329 (=> (not res!2843463) (not e!4190402))))

(assert (=> b!6971329 (= res!2843463 (dynLambda!26640 lambda!397691 (h!73257 lt!2479594)))))

(declare-fun b!6971330 () Bool)

(assert (=> b!6971330 (= e!4190402 (forall!15997 (t!380676 lt!2479594) lambda!397691))))

(assert (= (and d!2171285 (not res!2843462)) b!6971329))

(assert (= (and b!6971329 res!2843463) b!6971330))

(declare-fun b_lambda!260799 () Bool)

(assert (=> (not b_lambda!260799) (not b!6971329)))

(declare-fun m!7659866 () Bool)

(assert (=> b!6971329 m!7659866))

(declare-fun m!7659868 () Bool)

(assert (=> b!6971330 m!7659868))

(assert (=> b!6971066 d!2171285))

(declare-fun d!2171287 () Bool)

(assert (=> d!2171287 (= (isEmpty!39012 l!9142) (is-Nil!66809 l!9142))))

(assert (=> b!6971077 d!2171287))

(declare-fun bs!1859247 () Bool)

(declare-fun b!6971340 () Bool)

(assert (= bs!1859247 (and b!6971340 b!6971159)))

(declare-fun lambda!397714 () Int)

(assert (=> bs!1859247 (= (and (= (reg!17455 (regOne!34765 r!13765)) (reg!17455 (regTwo!34765 r!13765))) (= (regOne!34765 r!13765) (regTwo!34765 r!13765))) (= lambda!397714 lambda!397701))))

(declare-fun bs!1859248 () Bool)

(assert (= bs!1859248 (and b!6971340 b!6971160)))

(assert (=> bs!1859248 (not (= lambda!397714 lambda!397702))))

(declare-fun bs!1859249 () Bool)

(assert (= bs!1859249 (and b!6971340 b!6971236)))

(assert (=> bs!1859249 (= (and (= (reg!17455 (regOne!34765 r!13765)) (reg!17455 r!13765)) (= (regOne!34765 r!13765) r!13765)) (= lambda!397714 lambda!397710))))

(declare-fun bs!1859250 () Bool)

(assert (= bs!1859250 (and b!6971340 b!6971237)))

(assert (=> bs!1859250 (not (= lambda!397714 lambda!397711))))

(assert (=> b!6971340 true))

(assert (=> b!6971340 true))

(declare-fun bs!1859251 () Bool)

(declare-fun b!6971341 () Bool)

(assert (= bs!1859251 (and b!6971341 b!6971340)))

(declare-fun lambda!397715 () Int)

(assert (=> bs!1859251 (not (= lambda!397715 lambda!397714))))

(declare-fun bs!1859252 () Bool)

(assert (= bs!1859252 (and b!6971341 b!6971159)))

(assert (=> bs!1859252 (not (= lambda!397715 lambda!397701))))

(declare-fun bs!1859253 () Bool)

(assert (= bs!1859253 (and b!6971341 b!6971236)))

(assert (=> bs!1859253 (not (= lambda!397715 lambda!397710))))

(declare-fun bs!1859254 () Bool)

(assert (= bs!1859254 (and b!6971341 b!6971237)))

(assert (=> bs!1859254 (= (and (= (regOne!34764 (regOne!34765 r!13765)) (regOne!34764 r!13765)) (= (regTwo!34764 (regOne!34765 r!13765)) (regTwo!34764 r!13765))) (= lambda!397715 lambda!397711))))

(declare-fun bs!1859255 () Bool)

(assert (= bs!1859255 (and b!6971341 b!6971160)))

(assert (=> bs!1859255 (= (and (= (regOne!34764 (regOne!34765 r!13765)) (regOne!34764 (regTwo!34765 r!13765))) (= (regTwo!34764 (regOne!34765 r!13765)) (regTwo!34764 (regTwo!34765 r!13765)))) (= lambda!397715 lambda!397702))))

(assert (=> b!6971341 true))

(assert (=> b!6971341 true))

(declare-fun b!6971331 () Bool)

(declare-fun e!4190408 () Bool)

(declare-fun e!4190405 () Bool)

(assert (=> b!6971331 (= e!4190408 e!4190405)))

(declare-fun res!2843466 () Bool)

(assert (=> b!6971331 (= res!2843466 (not (is-EmptyLang!17126 (regOne!34765 r!13765))))))

(assert (=> b!6971331 (=> (not res!2843466) (not e!4190405))))

(declare-fun b!6971332 () Bool)

(declare-fun e!4190407 () Bool)

(declare-fun e!4190409 () Bool)

(assert (=> b!6971332 (= e!4190407 e!4190409)))

(declare-fun res!2843464 () Bool)

(assert (=> b!6971332 (= res!2843464 (matchRSpec!4143 (regOne!34765 (regOne!34765 r!13765)) s!9351))))

(assert (=> b!6971332 (=> res!2843464 e!4190409)))

(declare-fun call!632817 () Bool)

(declare-fun bm!632812 () Bool)

(declare-fun c!1292317 () Bool)

(assert (=> bm!632812 (= call!632817 (Exists!4089 (ite c!1292317 lambda!397714 lambda!397715)))))

(declare-fun b!6971333 () Bool)

(assert (=> b!6971333 (= e!4190409 (matchRSpec!4143 (regTwo!34765 (regOne!34765 r!13765)) s!9351))))

(declare-fun b!6971334 () Bool)

(declare-fun c!1292319 () Bool)

(assert (=> b!6971334 (= c!1292319 (is-Union!17126 (regOne!34765 r!13765)))))

(declare-fun e!4190406 () Bool)

(assert (=> b!6971334 (= e!4190406 e!4190407)))

(declare-fun b!6971335 () Bool)

(declare-fun c!1292320 () Bool)

(assert (=> b!6971335 (= c!1292320 (is-ElementMatch!17126 (regOne!34765 r!13765)))))

(assert (=> b!6971335 (= e!4190405 e!4190406)))

(declare-fun d!2171289 () Bool)

(declare-fun c!1292318 () Bool)

(assert (=> d!2171289 (= c!1292318 (is-EmptyExpr!17126 (regOne!34765 r!13765)))))

(assert (=> d!2171289 (= (matchRSpec!4143 (regOne!34765 r!13765) s!9351) e!4190408)))

(declare-fun b!6971336 () Bool)

(declare-fun res!2843465 () Bool)

(declare-fun e!4190403 () Bool)

(assert (=> b!6971336 (=> res!2843465 e!4190403)))

(declare-fun call!632818 () Bool)

(assert (=> b!6971336 (= res!2843465 call!632818)))

(declare-fun e!4190404 () Bool)

(assert (=> b!6971336 (= e!4190404 e!4190403)))

(declare-fun b!6971337 () Bool)

(assert (=> b!6971337 (= e!4190408 call!632818)))

(declare-fun b!6971338 () Bool)

(assert (=> b!6971338 (= e!4190406 (= s!9351 (Cons!66810 (c!1292260 (regOne!34765 r!13765)) Nil!66810)))))

(declare-fun b!6971339 () Bool)

(assert (=> b!6971339 (= e!4190407 e!4190404)))

(assert (=> b!6971339 (= c!1292317 (is-Star!17126 (regOne!34765 r!13765)))))

(assert (=> b!6971340 (= e!4190403 call!632817)))

(assert (=> b!6971341 (= e!4190404 call!632817)))

(declare-fun bm!632813 () Bool)

(assert (=> bm!632813 (= call!632818 (isEmpty!39014 s!9351))))

(assert (= (and d!2171289 c!1292318) b!6971337))

(assert (= (and d!2171289 (not c!1292318)) b!6971331))

(assert (= (and b!6971331 res!2843466) b!6971335))

(assert (= (and b!6971335 c!1292320) b!6971338))

(assert (= (and b!6971335 (not c!1292320)) b!6971334))

(assert (= (and b!6971334 c!1292319) b!6971332))

(assert (= (and b!6971334 (not c!1292319)) b!6971339))

(assert (= (and b!6971332 (not res!2843464)) b!6971333))

(assert (= (and b!6971339 c!1292317) b!6971336))

(assert (= (and b!6971339 (not c!1292317)) b!6971341))

(assert (= (and b!6971336 (not res!2843465)) b!6971340))

(assert (= (or b!6971340 b!6971341) bm!632812))

(assert (= (or b!6971337 b!6971336) bm!632813))

(declare-fun m!7659870 () Bool)

(assert (=> b!6971332 m!7659870))

(declare-fun m!7659872 () Bool)

(assert (=> bm!632812 m!7659872))

(declare-fun m!7659874 () Bool)

(assert (=> b!6971333 m!7659874))

(assert (=> bm!632813 m!7659798))

(assert (=> b!6971075 d!2171289))

(declare-fun b!6971346 () Bool)

(declare-fun e!4190412 () Bool)

(declare-fun tp!1924110 () Bool)

(assert (=> b!6971346 (= e!4190412 (and tp_is_empty!43477 tp!1924110))))

(assert (=> b!6971074 (= tp!1924078 e!4190412)))

(assert (= (and b!6971074 (is-Cons!66810 (t!380677 s!9351))) b!6971346))

(declare-fun b!6971360 () Bool)

(declare-fun e!4190415 () Bool)

(declare-fun tp!1924124 () Bool)

(declare-fun tp!1924123 () Bool)

(assert (=> b!6971360 (= e!4190415 (and tp!1924124 tp!1924123))))

(declare-fun b!6971357 () Bool)

(assert (=> b!6971357 (= e!4190415 tp_is_empty!43477)))

(assert (=> b!6971069 (= tp!1924080 e!4190415)))

(declare-fun b!6971358 () Bool)

(declare-fun tp!1924122 () Bool)

(declare-fun tp!1924121 () Bool)

(assert (=> b!6971358 (= e!4190415 (and tp!1924122 tp!1924121))))

(declare-fun b!6971359 () Bool)

(declare-fun tp!1924125 () Bool)

(assert (=> b!6971359 (= e!4190415 tp!1924125)))

(assert (= (and b!6971069 (is-ElementMatch!17126 (regOne!34765 r!13765))) b!6971357))

(assert (= (and b!6971069 (is-Concat!25971 (regOne!34765 r!13765))) b!6971358))

(assert (= (and b!6971069 (is-Star!17126 (regOne!34765 r!13765))) b!6971359))

(assert (= (and b!6971069 (is-Union!17126 (regOne!34765 r!13765))) b!6971360))

(declare-fun b!6971364 () Bool)

(declare-fun e!4190416 () Bool)

(declare-fun tp!1924129 () Bool)

(declare-fun tp!1924128 () Bool)

(assert (=> b!6971364 (= e!4190416 (and tp!1924129 tp!1924128))))

(declare-fun b!6971361 () Bool)

(assert (=> b!6971361 (= e!4190416 tp_is_empty!43477)))

(assert (=> b!6971069 (= tp!1924077 e!4190416)))

(declare-fun b!6971362 () Bool)

(declare-fun tp!1924127 () Bool)

(declare-fun tp!1924126 () Bool)

(assert (=> b!6971362 (= e!4190416 (and tp!1924127 tp!1924126))))

(declare-fun b!6971363 () Bool)

(declare-fun tp!1924130 () Bool)

(assert (=> b!6971363 (= e!4190416 tp!1924130)))

(assert (= (and b!6971069 (is-ElementMatch!17126 (regTwo!34765 r!13765))) b!6971361))

(assert (= (and b!6971069 (is-Concat!25971 (regTwo!34765 r!13765))) b!6971362))

(assert (= (and b!6971069 (is-Star!17126 (regTwo!34765 r!13765))) b!6971363))

(assert (= (and b!6971069 (is-Union!17126 (regTwo!34765 r!13765))) b!6971364))

(declare-fun b!6971368 () Bool)

(declare-fun e!4190417 () Bool)

(declare-fun tp!1924134 () Bool)

(declare-fun tp!1924133 () Bool)

(assert (=> b!6971368 (= e!4190417 (and tp!1924134 tp!1924133))))

(declare-fun b!6971365 () Bool)

(assert (=> b!6971365 (= e!4190417 tp_is_empty!43477)))

(assert (=> b!6971073 (= tp!1924082 e!4190417)))

(declare-fun b!6971366 () Bool)

(declare-fun tp!1924132 () Bool)

(declare-fun tp!1924131 () Bool)

(assert (=> b!6971366 (= e!4190417 (and tp!1924132 tp!1924131))))

(declare-fun b!6971367 () Bool)

(declare-fun tp!1924135 () Bool)

(assert (=> b!6971367 (= e!4190417 tp!1924135)))

(assert (= (and b!6971073 (is-ElementMatch!17126 (regOne!34764 r!13765))) b!6971365))

(assert (= (and b!6971073 (is-Concat!25971 (regOne!34764 r!13765))) b!6971366))

(assert (= (and b!6971073 (is-Star!17126 (regOne!34764 r!13765))) b!6971367))

(assert (= (and b!6971073 (is-Union!17126 (regOne!34764 r!13765))) b!6971368))

(declare-fun b!6971372 () Bool)

(declare-fun e!4190418 () Bool)

(declare-fun tp!1924139 () Bool)

(declare-fun tp!1924138 () Bool)

(assert (=> b!6971372 (= e!4190418 (and tp!1924139 tp!1924138))))

(declare-fun b!6971369 () Bool)

(assert (=> b!6971369 (= e!4190418 tp_is_empty!43477)))

(assert (=> b!6971073 (= tp!1924081 e!4190418)))

(declare-fun b!6971370 () Bool)

(declare-fun tp!1924137 () Bool)

(declare-fun tp!1924136 () Bool)

(assert (=> b!6971370 (= e!4190418 (and tp!1924137 tp!1924136))))

(declare-fun b!6971371 () Bool)

(declare-fun tp!1924140 () Bool)

(assert (=> b!6971371 (= e!4190418 tp!1924140)))

(assert (= (and b!6971073 (is-ElementMatch!17126 (regTwo!34764 r!13765))) b!6971369))

(assert (= (and b!6971073 (is-Concat!25971 (regTwo!34764 r!13765))) b!6971370))

(assert (= (and b!6971073 (is-Star!17126 (regTwo!34764 r!13765))) b!6971371))

(assert (= (and b!6971073 (is-Union!17126 (regTwo!34764 r!13765))) b!6971372))

(declare-fun b!6971376 () Bool)

(declare-fun e!4190419 () Bool)

(declare-fun tp!1924144 () Bool)

(declare-fun tp!1924143 () Bool)

(assert (=> b!6971376 (= e!4190419 (and tp!1924144 tp!1924143))))

(declare-fun b!6971373 () Bool)

(assert (=> b!6971373 (= e!4190419 tp_is_empty!43477)))

(assert (=> b!6971076 (= tp!1924076 e!4190419)))

(declare-fun b!6971374 () Bool)

(declare-fun tp!1924142 () Bool)

(declare-fun tp!1924141 () Bool)

(assert (=> b!6971374 (= e!4190419 (and tp!1924142 tp!1924141))))

(declare-fun b!6971375 () Bool)

(declare-fun tp!1924145 () Bool)

(assert (=> b!6971375 (= e!4190419 tp!1924145)))

(assert (= (and b!6971076 (is-ElementMatch!17126 (h!73257 l!9142))) b!6971373))

(assert (= (and b!6971076 (is-Concat!25971 (h!73257 l!9142))) b!6971374))

(assert (= (and b!6971076 (is-Star!17126 (h!73257 l!9142))) b!6971375))

(assert (= (and b!6971076 (is-Union!17126 (h!73257 l!9142))) b!6971376))

(declare-fun b!6971381 () Bool)

(declare-fun e!4190422 () Bool)

(declare-fun tp!1924150 () Bool)

(declare-fun tp!1924151 () Bool)

(assert (=> b!6971381 (= e!4190422 (and tp!1924150 tp!1924151))))

(assert (=> b!6971076 (= tp!1924083 e!4190422)))

(assert (= (and b!6971076 (is-Cons!66809 (t!380676 l!9142))) b!6971381))

(declare-fun b!6971385 () Bool)

(declare-fun e!4190423 () Bool)

(declare-fun tp!1924155 () Bool)

(declare-fun tp!1924154 () Bool)

(assert (=> b!6971385 (= e!4190423 (and tp!1924155 tp!1924154))))

(declare-fun b!6971382 () Bool)

(assert (=> b!6971382 (= e!4190423 tp_is_empty!43477)))

(assert (=> b!6971071 (= tp!1924079 e!4190423)))

(declare-fun b!6971383 () Bool)

(declare-fun tp!1924153 () Bool)

(declare-fun tp!1924152 () Bool)

(assert (=> b!6971383 (= e!4190423 (and tp!1924153 tp!1924152))))

(declare-fun b!6971384 () Bool)

(declare-fun tp!1924156 () Bool)

(assert (=> b!6971384 (= e!4190423 tp!1924156)))

(assert (= (and b!6971071 (is-ElementMatch!17126 (reg!17455 r!13765))) b!6971382))

(assert (= (and b!6971071 (is-Concat!25971 (reg!17455 r!13765))) b!6971383))

(assert (= (and b!6971071 (is-Star!17126 (reg!17455 r!13765))) b!6971384))

(assert (= (and b!6971071 (is-Union!17126 (reg!17455 r!13765))) b!6971385))

(declare-fun b_lambda!260801 () Bool)

(assert (= b_lambda!260797 (or start!668476 b_lambda!260801)))

(declare-fun bs!1859256 () Bool)

(declare-fun d!2171291 () Bool)

(assert (= bs!1859256 (and d!2171291 start!668476)))

(assert (=> bs!1859256 (= (dynLambda!26640 lambda!397691 (h!73257 l!9142)) (validRegex!8808 (h!73257 l!9142)))))

(declare-fun m!7659876 () Bool)

(assert (=> bs!1859256 m!7659876))

(assert (=> b!6971299 d!2171291))

(declare-fun b_lambda!260803 () Bool)

(assert (= b_lambda!260799 (or start!668476 b_lambda!260803)))

(declare-fun bs!1859257 () Bool)

(declare-fun d!2171293 () Bool)

(assert (= bs!1859257 (and d!2171293 start!668476)))

(assert (=> bs!1859257 (= (dynLambda!26640 lambda!397691 (h!73257 lt!2479594)) (validRegex!8808 (h!73257 lt!2479594)))))

(declare-fun m!7659878 () Bool)

(assert (=> bs!1859257 m!7659878))

(assert (=> b!6971329 d!2171293))

(push 1)

(assert (not b!6971330))

(assert (not bm!632810))

(assert (not b!6971224))

(assert (not b!6971327))

(assert (not bm!632797))

(assert (not d!2171271))

(assert (not b!6971301))

(assert (not b!6971221))

(assert (not b!6971385))

(assert (not b!6971346))

(assert (not b!6971315))

(assert (not bm!632798))

(assert (not b!6971372))

(assert (not b!6971376))

(assert tp_is_empty!43477)

(assert (not b!6971332))

(assert (not d!2171281))

(assert (not b!6971368))

(assert (not bs!1859256))

(assert (not b!6971223))

(assert (not d!2171269))

(assert (not b!6971363))

(assert (not b!6971384))

(assert (not b!6971374))

(assert (not b!6971288))

(assert (not bm!632799))

(assert (not b!6971360))

(assert (not b_lambda!260801))

(assert (not b!6971306))

(assert (not b!6971375))

(assert (not d!2171277))

(assert (not d!2171279))

(assert (not b!6971367))

(assert (not b!6971326))

(assert (not b!6971229))

(assert (not b!6971222))

(assert (not b!6971219))

(assert (not b!6971313))

(assert (not b!6971281))

(assert (not bs!1859257))

(assert (not bm!632813))

(assert (not b!6971151))

(assert (not b!6971333))

(assert (not d!2171265))

(assert (not b_lambda!260803))

(assert (not b!6971321))

(assert (not bm!632809))

(assert (not b!6971225))

(assert (not b!6971220))

(assert (not b!6971312))

(assert (not b!6971366))

(assert (not b!6971289))

(assert (not b!6971320))

(assert (not b!6971277))

(assert (not bm!632800))

(assert (not b!6971370))

(assert (not b!6971305))

(assert (not b!6971152))

(assert (not b!6971319))

(assert (not bm!632812))

(assert (not b!6971371))

(assert (not b!6971282))

(assert (not b!6971358))

(assert (not b!6971383))

(assert (not d!2171283))

(assert (not b!6971228))

(assert (not bm!632811))

(assert (not b!6971362))

(assert (not b!6971381))

(assert (not b!6971359))

(assert (not b!6971283))

(assert (not b!6971364))

(assert (not b!6971300))

(assert (not b!6971307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

