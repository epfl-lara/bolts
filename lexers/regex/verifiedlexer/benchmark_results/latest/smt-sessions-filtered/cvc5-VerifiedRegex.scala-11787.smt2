; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664376 () Bool)

(assert start!664376)

(declare-fun b!6893070 () Bool)

(assert (=> b!6893070 true))

(assert (=> b!6893070 true))

(assert (=> b!6893070 true))

(declare-fun lambda!390732 () Int)

(declare-fun lambda!390731 () Int)

(assert (=> b!6893070 (not (= lambda!390732 lambda!390731))))

(assert (=> b!6893070 true))

(assert (=> b!6893070 true))

(assert (=> b!6893070 true))

(declare-fun b!6893064 () Bool)

(declare-fun e!4152267 () Bool)

(declare-fun tp!1896997 () Bool)

(declare-fun tp!1896993 () Bool)

(assert (=> b!6893064 (= e!4152267 (and tp!1896997 tp!1896993))))

(declare-fun b!6893065 () Bool)

(declare-fun e!4152269 () Bool)

(declare-fun e!4152271 () Bool)

(assert (=> b!6893065 (= e!4152269 (not e!4152271))))

(declare-fun res!2810313 () Bool)

(assert (=> b!6893065 (=> res!2810313 e!4152271)))

(declare-fun lt!2463212 () Bool)

(assert (=> b!6893065 (= res!2810313 lt!2463212)))

(declare-datatypes ((C!33910 0))(
  ( (C!33911 (val!26657 Int)) )
))
(declare-datatypes ((Regex!16820 0))(
  ( (ElementMatch!16820 (c!1281446 C!33910)) (Concat!25665 (regOne!34152 Regex!16820) (regTwo!34152 Regex!16820)) (EmptyExpr!16820) (Star!16820 (reg!17149 Regex!16820)) (EmptyLang!16820) (Union!16820 (regOne!34153 Regex!16820) (regTwo!34153 Regex!16820)) )
))
(declare-fun lt!2463211 () Regex!16820)

(declare-datatypes ((List!66577 0))(
  ( (Nil!66453) (Cons!66453 (h!72901 C!33910) (t!380320 List!66577)) )
))
(declare-fun s!14361 () List!66577)

(declare-fun matchR!8965 (Regex!16820 List!66577) Bool)

(declare-fun matchRSpec!3883 (Regex!16820 List!66577) Bool)

(assert (=> b!6893065 (= (matchR!8965 lt!2463211 s!14361) (matchRSpec!3883 lt!2463211 s!14361))))

(declare-datatypes ((Unit!160360 0))(
  ( (Unit!160361) )
))
(declare-fun lt!2463213 () Unit!160360)

(declare-fun mainMatchTheorem!3883 (Regex!16820 List!66577) Unit!160360)

(assert (=> b!6893065 (= lt!2463213 (mainMatchTheorem!3883 lt!2463211 s!14361))))

(declare-fun lt!2463210 () Regex!16820)

(assert (=> b!6893065 (= lt!2463212 (matchRSpec!3883 lt!2463210 s!14361))))

(assert (=> b!6893065 (= lt!2463212 (matchR!8965 lt!2463210 s!14361))))

(declare-fun lt!2463214 () Unit!160360)

(assert (=> b!6893065 (= lt!2463214 (mainMatchTheorem!3883 lt!2463210 s!14361))))

(declare-fun r1!6342 () Regex!16820)

(declare-fun lt!2463216 () Regex!16820)

(assert (=> b!6893065 (= lt!2463211 (Concat!25665 r1!6342 lt!2463216))))

(declare-fun r2!6280 () Regex!16820)

(declare-fun r3!135 () Regex!16820)

(assert (=> b!6893065 (= lt!2463216 (Concat!25665 r2!6280 r3!135))))

(assert (=> b!6893065 (= lt!2463210 (Concat!25665 (Concat!25665 r1!6342 r2!6280) r3!135))))

(declare-fun b!6893066 () Bool)

(declare-fun e!4152272 () Bool)

(declare-fun ++!14889 (List!66577 List!66577) List!66577)

(assert (=> b!6893066 (= e!4152272 (= (++!14889 Nil!66453 s!14361) s!14361))))

(declare-fun b!6893067 () Bool)

(declare-fun e!4152270 () Bool)

(declare-fun tp!1896988 () Bool)

(assert (=> b!6893067 (= e!4152270 tp!1896988)))

(declare-fun b!6893068 () Bool)

(declare-fun tp!1896996 () Bool)

(declare-fun tp!1896984 () Bool)

(assert (=> b!6893068 (= e!4152270 (and tp!1896996 tp!1896984))))

(declare-fun b!6893069 () Bool)

(declare-fun e!4152268 () Bool)

(declare-fun tp!1896992 () Bool)

(declare-fun tp!1896995 () Bool)

(assert (=> b!6893069 (= e!4152268 (and tp!1896992 tp!1896995))))

(assert (=> b!6893070 (= e!4152271 e!4152272)))

(declare-fun res!2810316 () Bool)

(assert (=> b!6893070 (=> res!2810316 e!4152272)))

(declare-fun validRegex!8528 (Regex!16820) Bool)

(assert (=> b!6893070 (= res!2810316 (not (validRegex!8528 lt!2463216)))))

(declare-fun Exists!3828 (Int) Bool)

(assert (=> b!6893070 (= (Exists!3828 lambda!390731) (Exists!3828 lambda!390732))))

(declare-fun lt!2463215 () Unit!160360)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2301 (Regex!16820 Regex!16820 List!66577) Unit!160360)

(assert (=> b!6893070 (= lt!2463215 (lemmaExistCutMatchRandMatchRSpecEquivalent!2301 r1!6342 lt!2463216 s!14361))))

(assert (=> b!6893070 (Exists!3828 lambda!390731)))

(declare-fun lt!2463217 () Unit!160360)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2775 (Regex!16820 Regex!16820 List!66577) Unit!160360)

(assert (=> b!6893070 (= lt!2463217 (lemmaFindConcatSeparationEquivalentToExists!2775 r1!6342 lt!2463216 s!14361))))

(declare-fun res!2810318 () Bool)

(assert (=> start!664376 (=> (not res!2810318) (not e!4152269))))

(assert (=> start!664376 (= res!2810318 (validRegex!8528 r1!6342))))

(assert (=> start!664376 e!4152269))

(assert (=> start!664376 e!4152267))

(assert (=> start!664376 e!4152270))

(assert (=> start!664376 e!4152268))

(declare-fun e!4152273 () Bool)

(assert (=> start!664376 e!4152273))

(declare-fun b!6893071 () Bool)

(declare-fun tp!1896998 () Bool)

(declare-fun tp!1896990 () Bool)

(assert (=> b!6893071 (= e!4152270 (and tp!1896998 tp!1896990))))

(declare-fun b!6893072 () Bool)

(declare-fun tp_is_empty!42865 () Bool)

(assert (=> b!6893072 (= e!4152268 tp_is_empty!42865)))

(declare-fun b!6893073 () Bool)

(declare-fun tp!1896985 () Bool)

(declare-fun tp!1896991 () Bool)

(assert (=> b!6893073 (= e!4152267 (and tp!1896985 tp!1896991))))

(declare-fun b!6893074 () Bool)

(declare-fun tp!1896986 () Bool)

(assert (=> b!6893074 (= e!4152273 (and tp_is_empty!42865 tp!1896986))))

(declare-fun b!6893075 () Bool)

(declare-fun res!2810317 () Bool)

(assert (=> b!6893075 (=> (not res!2810317) (not e!4152269))))

(assert (=> b!6893075 (= res!2810317 (validRegex!8528 r3!135))))

(declare-fun b!6893076 () Bool)

(declare-fun tp!1896999 () Bool)

(assert (=> b!6893076 (= e!4152267 tp!1896999)))

(declare-fun b!6893077 () Bool)

(declare-fun tp!1896994 () Bool)

(assert (=> b!6893077 (= e!4152268 tp!1896994)))

(declare-fun b!6893078 () Bool)

(declare-fun res!2810314 () Bool)

(assert (=> b!6893078 (=> (not res!2810314) (not e!4152269))))

(assert (=> b!6893078 (= res!2810314 (validRegex!8528 r2!6280))))

(declare-fun b!6893079 () Bool)

(declare-fun res!2810315 () Bool)

(assert (=> b!6893079 (=> res!2810315 e!4152271)))

(declare-datatypes ((tuple2!67374 0))(
  ( (tuple2!67375 (_1!36990 List!66577) (_2!36990 List!66577)) )
))
(declare-datatypes ((Option!16599 0))(
  ( (None!16598) (Some!16598 (v!52870 tuple2!67374)) )
))
(declare-fun isDefined!13302 (Option!16599) Bool)

(declare-fun findConcatSeparation!3013 (Regex!16820 Regex!16820 List!66577 List!66577 List!66577) Option!16599)

(assert (=> b!6893079 (= res!2810315 (not (isDefined!13302 (findConcatSeparation!3013 r1!6342 lt!2463216 Nil!66453 s!14361 s!14361))))))

(declare-fun b!6893080 () Bool)

(assert (=> b!6893080 (= e!4152267 tp_is_empty!42865)))

(declare-fun b!6893081 () Bool)

(assert (=> b!6893081 (= e!4152270 tp_is_empty!42865)))

(declare-fun b!6893082 () Bool)

(declare-fun tp!1896987 () Bool)

(declare-fun tp!1896989 () Bool)

(assert (=> b!6893082 (= e!4152268 (and tp!1896987 tp!1896989))))

(assert (= (and start!664376 res!2810318) b!6893078))

(assert (= (and b!6893078 res!2810314) b!6893075))

(assert (= (and b!6893075 res!2810317) b!6893065))

(assert (= (and b!6893065 (not res!2810313)) b!6893079))

(assert (= (and b!6893079 (not res!2810315)) b!6893070))

(assert (= (and b!6893070 (not res!2810316)) b!6893066))

(assert (= (and start!664376 (is-ElementMatch!16820 r1!6342)) b!6893080))

(assert (= (and start!664376 (is-Concat!25665 r1!6342)) b!6893073))

(assert (= (and start!664376 (is-Star!16820 r1!6342)) b!6893076))

(assert (= (and start!664376 (is-Union!16820 r1!6342)) b!6893064))

(assert (= (and start!664376 (is-ElementMatch!16820 r2!6280)) b!6893081))

(assert (= (and start!664376 (is-Concat!25665 r2!6280)) b!6893068))

(assert (= (and start!664376 (is-Star!16820 r2!6280)) b!6893067))

(assert (= (and start!664376 (is-Union!16820 r2!6280)) b!6893071))

(assert (= (and start!664376 (is-ElementMatch!16820 r3!135)) b!6893072))

(assert (= (and start!664376 (is-Concat!25665 r3!135)) b!6893069))

(assert (= (and start!664376 (is-Star!16820 r3!135)) b!6893077))

(assert (= (and start!664376 (is-Union!16820 r3!135)) b!6893082))

(assert (= (and start!664376 (is-Cons!66453 s!14361)) b!6893074))

(declare-fun m!7613676 () Bool)

(assert (=> b!6893070 m!7613676))

(declare-fun m!7613678 () Bool)

(assert (=> b!6893070 m!7613678))

(declare-fun m!7613680 () Bool)

(assert (=> b!6893070 m!7613680))

(declare-fun m!7613682 () Bool)

(assert (=> b!6893070 m!7613682))

(declare-fun m!7613684 () Bool)

(assert (=> b!6893070 m!7613684))

(assert (=> b!6893070 m!7613680))

(declare-fun m!7613686 () Bool)

(assert (=> start!664376 m!7613686))

(declare-fun m!7613688 () Bool)

(assert (=> b!6893075 m!7613688))

(declare-fun m!7613690 () Bool)

(assert (=> b!6893079 m!7613690))

(assert (=> b!6893079 m!7613690))

(declare-fun m!7613692 () Bool)

(assert (=> b!6893079 m!7613692))

(declare-fun m!7613694 () Bool)

(assert (=> b!6893078 m!7613694))

(declare-fun m!7613696 () Bool)

(assert (=> b!6893065 m!7613696))

(declare-fun m!7613698 () Bool)

(assert (=> b!6893065 m!7613698))

(declare-fun m!7613700 () Bool)

(assert (=> b!6893065 m!7613700))

(declare-fun m!7613702 () Bool)

(assert (=> b!6893065 m!7613702))

(declare-fun m!7613704 () Bool)

(assert (=> b!6893065 m!7613704))

(declare-fun m!7613706 () Bool)

(assert (=> b!6893065 m!7613706))

(declare-fun m!7613708 () Bool)

(assert (=> b!6893066 m!7613708))

(push 1)

(assert (not b!6893082))

(assert (not b!6893070))

(assert (not start!664376))

(assert (not b!6893066))

(assert (not b!6893073))

(assert (not b!6893079))

(assert (not b!6893077))

(assert (not b!6893078))

(assert (not b!6893068))

(assert (not b!6893071))

(assert (not b!6893065))

(assert (not b!6893075))

(assert (not b!6893067))

(assert tp_is_empty!42865)

(assert (not b!6893074))

(assert (not b!6893064))

(assert (not b!6893076))

(assert (not b!6893069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2161260 () Bool)

(declare-fun isEmpty!38704 (Option!16599) Bool)

(assert (=> d!2161260 (= (isDefined!13302 (findConcatSeparation!3013 r1!6342 lt!2463216 Nil!66453 s!14361 s!14361)) (not (isEmpty!38704 (findConcatSeparation!3013 r1!6342 lt!2463216 Nil!66453 s!14361 s!14361))))))

(declare-fun bs!1840554 () Bool)

(assert (= bs!1840554 d!2161260))

(assert (=> bs!1840554 m!7613690))

(declare-fun m!7613744 () Bool)

(assert (=> bs!1840554 m!7613744))

(assert (=> b!6893079 d!2161260))

(declare-fun d!2161262 () Bool)

(declare-fun e!4152332 () Bool)

(assert (=> d!2161262 e!4152332))

(declare-fun res!2810375 () Bool)

(assert (=> d!2161262 (=> res!2810375 e!4152332)))

(declare-fun e!4152335 () Bool)

(assert (=> d!2161262 (= res!2810375 e!4152335)))

(declare-fun res!2810377 () Bool)

(assert (=> d!2161262 (=> (not res!2810377) (not e!4152335))))

(declare-fun lt!2463248 () Option!16599)

(assert (=> d!2161262 (= res!2810377 (isDefined!13302 lt!2463248))))

(declare-fun e!4152334 () Option!16599)

(assert (=> d!2161262 (= lt!2463248 e!4152334)))

(declare-fun c!1281458 () Bool)

(declare-fun e!4152333 () Bool)

(assert (=> d!2161262 (= c!1281458 e!4152333)))

(declare-fun res!2810378 () Bool)

(assert (=> d!2161262 (=> (not res!2810378) (not e!4152333))))

(assert (=> d!2161262 (= res!2810378 (matchR!8965 r1!6342 Nil!66453))))

(assert (=> d!2161262 (validRegex!8528 r1!6342)))

(assert (=> d!2161262 (= (findConcatSeparation!3013 r1!6342 lt!2463216 Nil!66453 s!14361 s!14361) lt!2463248)))

(declare-fun b!6893205 () Bool)

(declare-fun res!2810374 () Bool)

(assert (=> b!6893205 (=> (not res!2810374) (not e!4152335))))

(declare-fun get!23181 (Option!16599) tuple2!67374)

(assert (=> b!6893205 (= res!2810374 (matchR!8965 lt!2463216 (_2!36990 (get!23181 lt!2463248))))))

(declare-fun b!6893206 () Bool)

(declare-fun e!4152336 () Option!16599)

(assert (=> b!6893206 (= e!4152334 e!4152336)))

(declare-fun c!1281459 () Bool)

(assert (=> b!6893206 (= c!1281459 (is-Nil!66453 s!14361))))

(declare-fun b!6893207 () Bool)

(declare-fun res!2810376 () Bool)

(assert (=> b!6893207 (=> (not res!2810376) (not e!4152335))))

(assert (=> b!6893207 (= res!2810376 (matchR!8965 r1!6342 (_1!36990 (get!23181 lt!2463248))))))

(declare-fun b!6893208 () Bool)

(declare-fun lt!2463250 () Unit!160360)

(declare-fun lt!2463249 () Unit!160360)

(assert (=> b!6893208 (= lt!2463250 lt!2463249)))

(assert (=> b!6893208 (= (++!14889 (++!14889 Nil!66453 (Cons!66453 (h!72901 s!14361) Nil!66453)) (t!380320 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2782 (List!66577 C!33910 List!66577 List!66577) Unit!160360)

(assert (=> b!6893208 (= lt!2463249 (lemmaMoveElementToOtherListKeepsConcatEq!2782 Nil!66453 (h!72901 s!14361) (t!380320 s!14361) s!14361))))

(assert (=> b!6893208 (= e!4152336 (findConcatSeparation!3013 r1!6342 lt!2463216 (++!14889 Nil!66453 (Cons!66453 (h!72901 s!14361) Nil!66453)) (t!380320 s!14361) s!14361))))

(declare-fun b!6893209 () Bool)

(assert (=> b!6893209 (= e!4152334 (Some!16598 (tuple2!67375 Nil!66453 s!14361)))))

(declare-fun b!6893210 () Bool)

(assert (=> b!6893210 (= e!4152335 (= (++!14889 (_1!36990 (get!23181 lt!2463248)) (_2!36990 (get!23181 lt!2463248))) s!14361))))

(declare-fun b!6893211 () Bool)

(assert (=> b!6893211 (= e!4152333 (matchR!8965 lt!2463216 s!14361))))

(declare-fun b!6893212 () Bool)

(assert (=> b!6893212 (= e!4152336 None!16598)))

(declare-fun b!6893213 () Bool)

(assert (=> b!6893213 (= e!4152332 (not (isDefined!13302 lt!2463248)))))

(assert (= (and d!2161262 res!2810378) b!6893211))

(assert (= (and d!2161262 c!1281458) b!6893209))

(assert (= (and d!2161262 (not c!1281458)) b!6893206))

(assert (= (and b!6893206 c!1281459) b!6893212))

(assert (= (and b!6893206 (not c!1281459)) b!6893208))

(assert (= (and d!2161262 res!2810377) b!6893207))

(assert (= (and b!6893207 res!2810376) b!6893205))

(assert (= (and b!6893205 res!2810374) b!6893210))

(assert (= (and d!2161262 (not res!2810375)) b!6893213))

(declare-fun m!7613754 () Bool)

(assert (=> b!6893207 m!7613754))

(declare-fun m!7613756 () Bool)

(assert (=> b!6893207 m!7613756))

(declare-fun m!7613758 () Bool)

(assert (=> d!2161262 m!7613758))

(declare-fun m!7613760 () Bool)

(assert (=> d!2161262 m!7613760))

(assert (=> d!2161262 m!7613686))

(declare-fun m!7613762 () Bool)

(assert (=> b!6893211 m!7613762))

(assert (=> b!6893210 m!7613754))

(declare-fun m!7613764 () Bool)

(assert (=> b!6893210 m!7613764))

(declare-fun m!7613766 () Bool)

(assert (=> b!6893208 m!7613766))

(assert (=> b!6893208 m!7613766))

(declare-fun m!7613768 () Bool)

(assert (=> b!6893208 m!7613768))

(declare-fun m!7613770 () Bool)

(assert (=> b!6893208 m!7613770))

(assert (=> b!6893208 m!7613766))

(declare-fun m!7613772 () Bool)

(assert (=> b!6893208 m!7613772))

(assert (=> b!6893205 m!7613754))

(declare-fun m!7613774 () Bool)

(assert (=> b!6893205 m!7613774))

(assert (=> b!6893213 m!7613758))

(assert (=> b!6893079 d!2161262))

(declare-fun bm!627192 () Bool)

(declare-fun call!627197 () Bool)

(declare-fun call!627199 () Bool)

(assert (=> bm!627192 (= call!627197 call!627199)))

(declare-fun b!6893232 () Bool)

(declare-fun e!4152354 () Bool)

(declare-fun e!4152356 () Bool)

(assert (=> b!6893232 (= e!4152354 e!4152356)))

(declare-fun res!2810392 () Bool)

(declare-fun nullable!6695 (Regex!16820) Bool)

(assert (=> b!6893232 (= res!2810392 (not (nullable!6695 (reg!17149 r2!6280))))))

(assert (=> b!6893232 (=> (not res!2810392) (not e!4152356))))

(declare-fun d!2161268 () Bool)

(declare-fun res!2810391 () Bool)

(declare-fun e!4152352 () Bool)

(assert (=> d!2161268 (=> res!2810391 e!4152352)))

(assert (=> d!2161268 (= res!2810391 (is-ElementMatch!16820 r2!6280))))

(assert (=> d!2161268 (= (validRegex!8528 r2!6280) e!4152352)))

(declare-fun b!6893233 () Bool)

(declare-fun e!4152353 () Bool)

(declare-fun call!627198 () Bool)

(assert (=> b!6893233 (= e!4152353 call!627198)))

(declare-fun b!6893234 () Bool)

(declare-fun res!2810390 () Bool)

(declare-fun e!4152351 () Bool)

(assert (=> b!6893234 (=> (not res!2810390) (not e!4152351))))

(assert (=> b!6893234 (= res!2810390 call!627198)))

(declare-fun e!4152357 () Bool)

(assert (=> b!6893234 (= e!4152357 e!4152351)))

(declare-fun b!6893235 () Bool)

(assert (=> b!6893235 (= e!4152351 call!627197)))

(declare-fun c!1281464 () Bool)

(declare-fun c!1281465 () Bool)

(declare-fun bm!627193 () Bool)

(assert (=> bm!627193 (= call!627199 (validRegex!8528 (ite c!1281464 (reg!17149 r2!6280) (ite c!1281465 (regTwo!34153 r2!6280) (regOne!34152 r2!6280)))))))

(declare-fun b!6893236 () Bool)

(assert (=> b!6893236 (= e!4152352 e!4152354)))

(assert (=> b!6893236 (= c!1281464 (is-Star!16820 r2!6280))))

(declare-fun b!6893237 () Bool)

(assert (=> b!6893237 (= e!4152354 e!4152357)))

(assert (=> b!6893237 (= c!1281465 (is-Union!16820 r2!6280))))

(declare-fun b!6893238 () Bool)

(assert (=> b!6893238 (= e!4152356 call!627199)))

(declare-fun b!6893239 () Bool)

(declare-fun res!2810389 () Bool)

(declare-fun e!4152355 () Bool)

(assert (=> b!6893239 (=> res!2810389 e!4152355)))

(assert (=> b!6893239 (= res!2810389 (not (is-Concat!25665 r2!6280)))))

(assert (=> b!6893239 (= e!4152357 e!4152355)))

(declare-fun b!6893240 () Bool)

(assert (=> b!6893240 (= e!4152355 e!4152353)))

(declare-fun res!2810393 () Bool)

(assert (=> b!6893240 (=> (not res!2810393) (not e!4152353))))

(assert (=> b!6893240 (= res!2810393 call!627197)))

(declare-fun bm!627194 () Bool)

(assert (=> bm!627194 (= call!627198 (validRegex!8528 (ite c!1281465 (regOne!34153 r2!6280) (regTwo!34152 r2!6280))))))

(assert (= (and d!2161268 (not res!2810391)) b!6893236))

(assert (= (and b!6893236 c!1281464) b!6893232))

(assert (= (and b!6893236 (not c!1281464)) b!6893237))

(assert (= (and b!6893232 res!2810392) b!6893238))

(assert (= (and b!6893237 c!1281465) b!6893234))

(assert (= (and b!6893237 (not c!1281465)) b!6893239))

(assert (= (and b!6893234 res!2810390) b!6893235))

(assert (= (and b!6893239 (not res!2810389)) b!6893240))

(assert (= (and b!6893240 res!2810393) b!6893233))

(assert (= (or b!6893234 b!6893233) bm!627194))

(assert (= (or b!6893235 b!6893240) bm!627192))

(assert (= (or b!6893238 bm!627192) bm!627193))

(declare-fun m!7613776 () Bool)

(assert (=> b!6893232 m!7613776))

(declare-fun m!7613778 () Bool)

(assert (=> bm!627193 m!7613778))

(declare-fun m!7613780 () Bool)

(assert (=> bm!627194 m!7613780))

(assert (=> b!6893078 d!2161268))

(declare-fun bm!627195 () Bool)

(declare-fun call!627200 () Bool)

(declare-fun call!627202 () Bool)

(assert (=> bm!627195 (= call!627200 call!627202)))

(declare-fun b!6893241 () Bool)

(declare-fun e!4152361 () Bool)

(declare-fun e!4152363 () Bool)

(assert (=> b!6893241 (= e!4152361 e!4152363)))

(declare-fun res!2810397 () Bool)

(assert (=> b!6893241 (= res!2810397 (not (nullable!6695 (reg!17149 r3!135))))))

(assert (=> b!6893241 (=> (not res!2810397) (not e!4152363))))

(declare-fun d!2161270 () Bool)

(declare-fun res!2810396 () Bool)

(declare-fun e!4152359 () Bool)

(assert (=> d!2161270 (=> res!2810396 e!4152359)))

(assert (=> d!2161270 (= res!2810396 (is-ElementMatch!16820 r3!135))))

(assert (=> d!2161270 (= (validRegex!8528 r3!135) e!4152359)))

(declare-fun b!6893242 () Bool)

(declare-fun e!4152360 () Bool)

(declare-fun call!627201 () Bool)

(assert (=> b!6893242 (= e!4152360 call!627201)))

(declare-fun b!6893243 () Bool)

(declare-fun res!2810395 () Bool)

(declare-fun e!4152358 () Bool)

(assert (=> b!6893243 (=> (not res!2810395) (not e!4152358))))

(assert (=> b!6893243 (= res!2810395 call!627201)))

(declare-fun e!4152364 () Bool)

(assert (=> b!6893243 (= e!4152364 e!4152358)))

(declare-fun b!6893244 () Bool)

(assert (=> b!6893244 (= e!4152358 call!627200)))

(declare-fun c!1281466 () Bool)

(declare-fun bm!627196 () Bool)

(declare-fun c!1281467 () Bool)

(assert (=> bm!627196 (= call!627202 (validRegex!8528 (ite c!1281466 (reg!17149 r3!135) (ite c!1281467 (regTwo!34153 r3!135) (regOne!34152 r3!135)))))))

(declare-fun b!6893245 () Bool)

(assert (=> b!6893245 (= e!4152359 e!4152361)))

(assert (=> b!6893245 (= c!1281466 (is-Star!16820 r3!135))))

(declare-fun b!6893246 () Bool)

(assert (=> b!6893246 (= e!4152361 e!4152364)))

(assert (=> b!6893246 (= c!1281467 (is-Union!16820 r3!135))))

(declare-fun b!6893247 () Bool)

(assert (=> b!6893247 (= e!4152363 call!627202)))

(declare-fun b!6893248 () Bool)

(declare-fun res!2810394 () Bool)

(declare-fun e!4152362 () Bool)

(assert (=> b!6893248 (=> res!2810394 e!4152362)))

(assert (=> b!6893248 (= res!2810394 (not (is-Concat!25665 r3!135)))))

(assert (=> b!6893248 (= e!4152364 e!4152362)))

(declare-fun b!6893249 () Bool)

(assert (=> b!6893249 (= e!4152362 e!4152360)))

(declare-fun res!2810398 () Bool)

(assert (=> b!6893249 (=> (not res!2810398) (not e!4152360))))

(assert (=> b!6893249 (= res!2810398 call!627200)))

(declare-fun bm!627197 () Bool)

(assert (=> bm!627197 (= call!627201 (validRegex!8528 (ite c!1281467 (regOne!34153 r3!135) (regTwo!34152 r3!135))))))

(assert (= (and d!2161270 (not res!2810396)) b!6893245))

(assert (= (and b!6893245 c!1281466) b!6893241))

(assert (= (and b!6893245 (not c!1281466)) b!6893246))

(assert (= (and b!6893241 res!2810397) b!6893247))

(assert (= (and b!6893246 c!1281467) b!6893243))

(assert (= (and b!6893246 (not c!1281467)) b!6893248))

(assert (= (and b!6893243 res!2810395) b!6893244))

(assert (= (and b!6893248 (not res!2810394)) b!6893249))

(assert (= (and b!6893249 res!2810398) b!6893242))

(assert (= (or b!6893243 b!6893242) bm!627197))

(assert (= (or b!6893244 b!6893249) bm!627195))

(assert (= (or b!6893247 bm!627195) bm!627196))

(declare-fun m!7613782 () Bool)

(assert (=> b!6893241 m!7613782))

(declare-fun m!7613784 () Bool)

(assert (=> bm!627196 m!7613784))

(declare-fun m!7613786 () Bool)

(assert (=> bm!627197 m!7613786))

(assert (=> b!6893075 d!2161270))

(declare-fun b!6893296 () Bool)

(declare-fun e!4152392 () Bool)

(assert (=> b!6893296 (= e!4152392 (nullable!6695 lt!2463211))))

(declare-fun d!2161272 () Bool)

(declare-fun e!4152390 () Bool)

(assert (=> d!2161272 e!4152390))

(declare-fun c!1281480 () Bool)

(assert (=> d!2161272 (= c!1281480 (is-EmptyExpr!16820 lt!2463211))))

(declare-fun lt!2463259 () Bool)

(assert (=> d!2161272 (= lt!2463259 e!4152392)))

(declare-fun c!1281479 () Bool)

(declare-fun isEmpty!38705 (List!66577) Bool)

(assert (=> d!2161272 (= c!1281479 (isEmpty!38705 s!14361))))

(assert (=> d!2161272 (validRegex!8528 lt!2463211)))

(assert (=> d!2161272 (= (matchR!8965 lt!2463211 s!14361) lt!2463259)))

(declare-fun b!6893297 () Bool)

(declare-fun e!4152391 () Bool)

(declare-fun head!13827 (List!66577) C!33910)

(assert (=> b!6893297 (= e!4152391 (not (= (head!13827 s!14361) (c!1281446 lt!2463211))))))

(declare-fun b!6893298 () Bool)

(declare-fun call!627205 () Bool)

(assert (=> b!6893298 (= e!4152390 (= lt!2463259 call!627205))))

(declare-fun b!6893299 () Bool)

(declare-fun res!2810429 () Bool)

(declare-fun e!4152395 () Bool)

(assert (=> b!6893299 (=> res!2810429 e!4152395)))

(assert (=> b!6893299 (= res!2810429 (not (is-ElementMatch!16820 lt!2463211)))))

(declare-fun e!4152389 () Bool)

(assert (=> b!6893299 (= e!4152389 e!4152395)))

(declare-fun b!6893300 () Bool)

(declare-fun res!2810430 () Bool)

(declare-fun e!4152394 () Bool)

(assert (=> b!6893300 (=> (not res!2810430) (not e!4152394))))

(assert (=> b!6893300 (= res!2810430 (not call!627205))))

(declare-fun b!6893301 () Bool)

(declare-fun res!2810432 () Bool)

(assert (=> b!6893301 (=> res!2810432 e!4152391)))

(declare-fun tail!12879 (List!66577) List!66577)

(assert (=> b!6893301 (= res!2810432 (not (isEmpty!38705 (tail!12879 s!14361))))))

(declare-fun b!6893302 () Bool)

(declare-fun e!4152393 () Bool)

(assert (=> b!6893302 (= e!4152393 e!4152391)))

(declare-fun res!2810431 () Bool)

(assert (=> b!6893302 (=> res!2810431 e!4152391)))

(assert (=> b!6893302 (= res!2810431 call!627205)))

(declare-fun b!6893303 () Bool)

(declare-fun derivativeStep!5374 (Regex!16820 C!33910) Regex!16820)

(assert (=> b!6893303 (= e!4152392 (matchR!8965 (derivativeStep!5374 lt!2463211 (head!13827 s!14361)) (tail!12879 s!14361)))))

(declare-fun b!6893304 () Bool)

(assert (=> b!6893304 (= e!4152395 e!4152393)))

(declare-fun res!2810426 () Bool)

(assert (=> b!6893304 (=> (not res!2810426) (not e!4152393))))

(assert (=> b!6893304 (= res!2810426 (not lt!2463259))))

(declare-fun b!6893305 () Bool)

(assert (=> b!6893305 (= e!4152390 e!4152389)))

(declare-fun c!1281478 () Bool)

(assert (=> b!6893305 (= c!1281478 (is-EmptyLang!16820 lt!2463211))))

(declare-fun b!6893306 () Bool)

(assert (=> b!6893306 (= e!4152389 (not lt!2463259))))

(declare-fun b!6893307 () Bool)

(declare-fun res!2810425 () Bool)

(assert (=> b!6893307 (=> res!2810425 e!4152395)))

(assert (=> b!6893307 (= res!2810425 e!4152394)))

(declare-fun res!2810428 () Bool)

(assert (=> b!6893307 (=> (not res!2810428) (not e!4152394))))

(assert (=> b!6893307 (= res!2810428 lt!2463259)))

(declare-fun b!6893308 () Bool)

(assert (=> b!6893308 (= e!4152394 (= (head!13827 s!14361) (c!1281446 lt!2463211)))))

(declare-fun b!6893309 () Bool)

(declare-fun res!2810427 () Bool)

(assert (=> b!6893309 (=> (not res!2810427) (not e!4152394))))

(assert (=> b!6893309 (= res!2810427 (isEmpty!38705 (tail!12879 s!14361)))))

(declare-fun bm!627200 () Bool)

(assert (=> bm!627200 (= call!627205 (isEmpty!38705 s!14361))))

(assert (= (and d!2161272 c!1281479) b!6893296))

(assert (= (and d!2161272 (not c!1281479)) b!6893303))

(assert (= (and d!2161272 c!1281480) b!6893298))

(assert (= (and d!2161272 (not c!1281480)) b!6893305))

(assert (= (and b!6893305 c!1281478) b!6893306))

(assert (= (and b!6893305 (not c!1281478)) b!6893299))

(assert (= (and b!6893299 (not res!2810429)) b!6893307))

(assert (= (and b!6893307 res!2810428) b!6893300))

(assert (= (and b!6893300 res!2810430) b!6893309))

(assert (= (and b!6893309 res!2810427) b!6893308))

(assert (= (and b!6893307 (not res!2810425)) b!6893304))

(assert (= (and b!6893304 res!2810426) b!6893302))

(assert (= (and b!6893302 (not res!2810431)) b!6893301))

(assert (= (and b!6893301 (not res!2810432)) b!6893297))

(assert (= (or b!6893298 b!6893300 b!6893302) bm!627200))

(declare-fun m!7613788 () Bool)

(assert (=> bm!627200 m!7613788))

(assert (=> d!2161272 m!7613788))

(declare-fun m!7613790 () Bool)

(assert (=> d!2161272 m!7613790))

(declare-fun m!7613792 () Bool)

(assert (=> b!6893308 m!7613792))

(declare-fun m!7613794 () Bool)

(assert (=> b!6893301 m!7613794))

(assert (=> b!6893301 m!7613794))

(declare-fun m!7613796 () Bool)

(assert (=> b!6893301 m!7613796))

(assert (=> b!6893309 m!7613794))

(assert (=> b!6893309 m!7613794))

(assert (=> b!6893309 m!7613796))

(declare-fun m!7613798 () Bool)

(assert (=> b!6893296 m!7613798))

(assert (=> b!6893297 m!7613792))

(assert (=> b!6893303 m!7613792))

(assert (=> b!6893303 m!7613792))

(declare-fun m!7613800 () Bool)

(assert (=> b!6893303 m!7613800))

(assert (=> b!6893303 m!7613794))

(assert (=> b!6893303 m!7613800))

(assert (=> b!6893303 m!7613794))

(declare-fun m!7613802 () Bool)

(assert (=> b!6893303 m!7613802))

(assert (=> b!6893065 d!2161272))

(declare-fun bs!1840556 () Bool)

(declare-fun b!6893363 () Bool)

(assert (= bs!1840556 (and b!6893363 b!6893070)))

(declare-fun lambda!390745 () Int)

(assert (=> bs!1840556 (not (= lambda!390745 lambda!390731))))

(assert (=> bs!1840556 (not (= lambda!390745 lambda!390732))))

(assert (=> b!6893363 true))

(assert (=> b!6893363 true))

(declare-fun bs!1840557 () Bool)

(declare-fun b!6893366 () Bool)

(assert (= bs!1840557 (and b!6893366 b!6893070)))

(declare-fun lambda!390746 () Int)

(assert (=> bs!1840557 (not (= lambda!390746 lambda!390731))))

(assert (=> bs!1840557 (= (and (= (regOne!34152 lt!2463210) r1!6342) (= (regTwo!34152 lt!2463210) lt!2463216)) (= lambda!390746 lambda!390732))))

(declare-fun bs!1840558 () Bool)

(assert (= bs!1840558 (and b!6893366 b!6893363)))

(assert (=> bs!1840558 (not (= lambda!390746 lambda!390745))))

(assert (=> b!6893366 true))

(assert (=> b!6893366 true))

(declare-fun call!627211 () Bool)

(declare-fun c!1281494 () Bool)

(declare-fun bm!627205 () Bool)

(assert (=> bm!627205 (= call!627211 (Exists!3828 (ite c!1281494 lambda!390745 lambda!390746)))))

(declare-fun b!6893359 () Bool)

(declare-fun e!4152424 () Bool)

(declare-fun e!4152426 () Bool)

(assert (=> b!6893359 (= e!4152424 e!4152426)))

(declare-fun res!2810458 () Bool)

(assert (=> b!6893359 (= res!2810458 (not (is-EmptyLang!16820 lt!2463210)))))

(assert (=> b!6893359 (=> (not res!2810458) (not e!4152426))))

(declare-fun b!6893360 () Bool)

(declare-fun res!2810460 () Bool)

(declare-fun e!4152428 () Bool)

(assert (=> b!6893360 (=> res!2810460 e!4152428)))

(declare-fun call!627210 () Bool)

(assert (=> b!6893360 (= res!2810460 call!627210)))

(declare-fun e!4152429 () Bool)

(assert (=> b!6893360 (= e!4152429 e!4152428)))

(declare-fun b!6893361 () Bool)

(declare-fun e!4152427 () Bool)

(declare-fun e!4152425 () Bool)

(assert (=> b!6893361 (= e!4152427 e!4152425)))

(declare-fun res!2810459 () Bool)

(assert (=> b!6893361 (= res!2810459 (matchRSpec!3883 (regOne!34153 lt!2463210) s!14361))))

(assert (=> b!6893361 (=> res!2810459 e!4152425)))

(declare-fun b!6893362 () Bool)

(assert (=> b!6893362 (= e!4152425 (matchRSpec!3883 (regTwo!34153 lt!2463210) s!14361))))

(assert (=> b!6893363 (= e!4152428 call!627211)))

(declare-fun b!6893364 () Bool)

(declare-fun c!1281495 () Bool)

(assert (=> b!6893364 (= c!1281495 (is-Union!16820 lt!2463210))))

(declare-fun e!4152423 () Bool)

(assert (=> b!6893364 (= e!4152423 e!4152427)))

(declare-fun b!6893365 () Bool)

(assert (=> b!6893365 (= e!4152427 e!4152429)))

(assert (=> b!6893365 (= c!1281494 (is-Star!16820 lt!2463210))))

(assert (=> b!6893366 (= e!4152429 call!627211)))

(declare-fun b!6893367 () Bool)

(declare-fun c!1281493 () Bool)

(assert (=> b!6893367 (= c!1281493 (is-ElementMatch!16820 lt!2463210))))

(assert (=> b!6893367 (= e!4152426 e!4152423)))

(declare-fun b!6893368 () Bool)

(assert (=> b!6893368 (= e!4152423 (= s!14361 (Cons!66453 (c!1281446 lt!2463210) Nil!66453)))))

(declare-fun bm!627206 () Bool)

(assert (=> bm!627206 (= call!627210 (isEmpty!38705 s!14361))))

(declare-fun b!6893369 () Bool)

(assert (=> b!6893369 (= e!4152424 call!627210)))

(declare-fun d!2161274 () Bool)

(declare-fun c!1281496 () Bool)

(assert (=> d!2161274 (= c!1281496 (is-EmptyExpr!16820 lt!2463210))))

(assert (=> d!2161274 (= (matchRSpec!3883 lt!2463210 s!14361) e!4152424)))

(assert (= (and d!2161274 c!1281496) b!6893369))

(assert (= (and d!2161274 (not c!1281496)) b!6893359))

(assert (= (and b!6893359 res!2810458) b!6893367))

(assert (= (and b!6893367 c!1281493) b!6893368))

(assert (= (and b!6893367 (not c!1281493)) b!6893364))

(assert (= (and b!6893364 c!1281495) b!6893361))

(assert (= (and b!6893364 (not c!1281495)) b!6893365))

(assert (= (and b!6893361 (not res!2810459)) b!6893362))

(assert (= (and b!6893365 c!1281494) b!6893360))

(assert (= (and b!6893365 (not c!1281494)) b!6893366))

(assert (= (and b!6893360 (not res!2810460)) b!6893363))

(assert (= (or b!6893363 b!6893366) bm!627205))

(assert (= (or b!6893369 b!6893360) bm!627206))

(declare-fun m!7613840 () Bool)

(assert (=> bm!627205 m!7613840))

(declare-fun m!7613842 () Bool)

(assert (=> b!6893361 m!7613842))

(declare-fun m!7613844 () Bool)

(assert (=> b!6893362 m!7613844))

(assert (=> bm!627206 m!7613788))

(assert (=> b!6893065 d!2161274))

(declare-fun d!2161280 () Bool)

(assert (=> d!2161280 (= (matchR!8965 lt!2463210 s!14361) (matchRSpec!3883 lt!2463210 s!14361))))

(declare-fun lt!2463268 () Unit!160360)

(declare-fun choose!51328 (Regex!16820 List!66577) Unit!160360)

(assert (=> d!2161280 (= lt!2463268 (choose!51328 lt!2463210 s!14361))))

(assert (=> d!2161280 (validRegex!8528 lt!2463210)))

(assert (=> d!2161280 (= (mainMatchTheorem!3883 lt!2463210 s!14361) lt!2463268)))

(declare-fun bs!1840560 () Bool)

(assert (= bs!1840560 d!2161280))

(assert (=> bs!1840560 m!7613702))

(assert (=> bs!1840560 m!7613700))

(declare-fun m!7613860 () Bool)

(assert (=> bs!1840560 m!7613860))

(declare-fun m!7613862 () Bool)

(assert (=> bs!1840560 m!7613862))

(assert (=> b!6893065 d!2161280))

(declare-fun b!6893392 () Bool)

(declare-fun e!4152449 () Bool)

(assert (=> b!6893392 (= e!4152449 (nullable!6695 lt!2463210))))

(declare-fun d!2161288 () Bool)

(declare-fun e!4152447 () Bool)

(assert (=> d!2161288 e!4152447))

(declare-fun c!1281504 () Bool)

(assert (=> d!2161288 (= c!1281504 (is-EmptyExpr!16820 lt!2463210))))

(declare-fun lt!2463269 () Bool)

(assert (=> d!2161288 (= lt!2463269 e!4152449)))

(declare-fun c!1281503 () Bool)

(assert (=> d!2161288 (= c!1281503 (isEmpty!38705 s!14361))))

(assert (=> d!2161288 (validRegex!8528 lt!2463210)))

(assert (=> d!2161288 (= (matchR!8965 lt!2463210 s!14361) lt!2463269)))

(declare-fun b!6893393 () Bool)

(declare-fun e!4152448 () Bool)

(assert (=> b!6893393 (= e!4152448 (not (= (head!13827 s!14361) (c!1281446 lt!2463210))))))

(declare-fun b!6893394 () Bool)

(declare-fun call!627218 () Bool)

(assert (=> b!6893394 (= e!4152447 (= lt!2463269 call!627218))))

(declare-fun b!6893395 () Bool)

(declare-fun res!2810477 () Bool)

(declare-fun e!4152452 () Bool)

(assert (=> b!6893395 (=> res!2810477 e!4152452)))

(assert (=> b!6893395 (= res!2810477 (not (is-ElementMatch!16820 lt!2463210)))))

(declare-fun e!4152446 () Bool)

(assert (=> b!6893395 (= e!4152446 e!4152452)))

(declare-fun b!6893396 () Bool)

(declare-fun res!2810478 () Bool)

(declare-fun e!4152451 () Bool)

(assert (=> b!6893396 (=> (not res!2810478) (not e!4152451))))

(assert (=> b!6893396 (= res!2810478 (not call!627218))))

(declare-fun b!6893397 () Bool)

(declare-fun res!2810480 () Bool)

(assert (=> b!6893397 (=> res!2810480 e!4152448)))

(assert (=> b!6893397 (= res!2810480 (not (isEmpty!38705 (tail!12879 s!14361))))))

(declare-fun b!6893398 () Bool)

(declare-fun e!4152450 () Bool)

(assert (=> b!6893398 (= e!4152450 e!4152448)))

(declare-fun res!2810479 () Bool)

(assert (=> b!6893398 (=> res!2810479 e!4152448)))

(assert (=> b!6893398 (= res!2810479 call!627218)))

(declare-fun b!6893399 () Bool)

(assert (=> b!6893399 (= e!4152449 (matchR!8965 (derivativeStep!5374 lt!2463210 (head!13827 s!14361)) (tail!12879 s!14361)))))

(declare-fun b!6893400 () Bool)

(assert (=> b!6893400 (= e!4152452 e!4152450)))

(declare-fun res!2810474 () Bool)

(assert (=> b!6893400 (=> (not res!2810474) (not e!4152450))))

(assert (=> b!6893400 (= res!2810474 (not lt!2463269))))

(declare-fun b!6893401 () Bool)

(assert (=> b!6893401 (= e!4152447 e!4152446)))

(declare-fun c!1281502 () Bool)

(assert (=> b!6893401 (= c!1281502 (is-EmptyLang!16820 lt!2463210))))

(declare-fun b!6893402 () Bool)

(assert (=> b!6893402 (= e!4152446 (not lt!2463269))))

(declare-fun b!6893403 () Bool)

(declare-fun res!2810473 () Bool)

(assert (=> b!6893403 (=> res!2810473 e!4152452)))

(assert (=> b!6893403 (= res!2810473 e!4152451)))

(declare-fun res!2810476 () Bool)

(assert (=> b!6893403 (=> (not res!2810476) (not e!4152451))))

(assert (=> b!6893403 (= res!2810476 lt!2463269)))

(declare-fun b!6893404 () Bool)

(assert (=> b!6893404 (= e!4152451 (= (head!13827 s!14361) (c!1281446 lt!2463210)))))

(declare-fun b!6893405 () Bool)

(declare-fun res!2810475 () Bool)

(assert (=> b!6893405 (=> (not res!2810475) (not e!4152451))))

(assert (=> b!6893405 (= res!2810475 (isEmpty!38705 (tail!12879 s!14361)))))

(declare-fun bm!627213 () Bool)

(assert (=> bm!627213 (= call!627218 (isEmpty!38705 s!14361))))

(assert (= (and d!2161288 c!1281503) b!6893392))

(assert (= (and d!2161288 (not c!1281503)) b!6893399))

(assert (= (and d!2161288 c!1281504) b!6893394))

(assert (= (and d!2161288 (not c!1281504)) b!6893401))

(assert (= (and b!6893401 c!1281502) b!6893402))

(assert (= (and b!6893401 (not c!1281502)) b!6893395))

(assert (= (and b!6893395 (not res!2810477)) b!6893403))

(assert (= (and b!6893403 res!2810476) b!6893396))

(assert (= (and b!6893396 res!2810478) b!6893405))

(assert (= (and b!6893405 res!2810475) b!6893404))

(assert (= (and b!6893403 (not res!2810473)) b!6893400))

(assert (= (and b!6893400 res!2810474) b!6893398))

(assert (= (and b!6893398 (not res!2810479)) b!6893397))

(assert (= (and b!6893397 (not res!2810480)) b!6893393))

(assert (= (or b!6893394 b!6893396 b!6893398) bm!627213))

(assert (=> bm!627213 m!7613788))

(assert (=> d!2161288 m!7613788))

(assert (=> d!2161288 m!7613862))

(assert (=> b!6893404 m!7613792))

(assert (=> b!6893397 m!7613794))

(assert (=> b!6893397 m!7613794))

(assert (=> b!6893397 m!7613796))

(assert (=> b!6893405 m!7613794))

(assert (=> b!6893405 m!7613794))

(assert (=> b!6893405 m!7613796))

(declare-fun m!7613864 () Bool)

(assert (=> b!6893392 m!7613864))

(assert (=> b!6893393 m!7613792))

(assert (=> b!6893399 m!7613792))

(assert (=> b!6893399 m!7613792))

(declare-fun m!7613866 () Bool)

(assert (=> b!6893399 m!7613866))

(assert (=> b!6893399 m!7613794))

(assert (=> b!6893399 m!7613866))

(assert (=> b!6893399 m!7613794))

(declare-fun m!7613868 () Bool)

(assert (=> b!6893399 m!7613868))

(assert (=> b!6893065 d!2161288))

(declare-fun bs!1840561 () Bool)

(declare-fun b!6893410 () Bool)

(assert (= bs!1840561 (and b!6893410 b!6893070)))

(declare-fun lambda!390747 () Int)

(assert (=> bs!1840561 (not (= lambda!390747 lambda!390731))))

(assert (=> bs!1840561 (not (= lambda!390747 lambda!390732))))

(declare-fun bs!1840562 () Bool)

(assert (= bs!1840562 (and b!6893410 b!6893363)))

(assert (=> bs!1840562 (= (and (= (reg!17149 lt!2463211) (reg!17149 lt!2463210)) (= lt!2463211 lt!2463210)) (= lambda!390747 lambda!390745))))

(declare-fun bs!1840563 () Bool)

(assert (= bs!1840563 (and b!6893410 b!6893366)))

(assert (=> bs!1840563 (not (= lambda!390747 lambda!390746))))

(assert (=> b!6893410 true))

(assert (=> b!6893410 true))

(declare-fun bs!1840564 () Bool)

(declare-fun b!6893413 () Bool)

(assert (= bs!1840564 (and b!6893413 b!6893070)))

(declare-fun lambda!390748 () Int)

(assert (=> bs!1840564 (not (= lambda!390748 lambda!390731))))

(declare-fun bs!1840565 () Bool)

(assert (= bs!1840565 (and b!6893413 b!6893410)))

(assert (=> bs!1840565 (not (= lambda!390748 lambda!390747))))

(assert (=> bs!1840564 (= (and (= (regOne!34152 lt!2463211) r1!6342) (= (regTwo!34152 lt!2463211) lt!2463216)) (= lambda!390748 lambda!390732))))

(declare-fun bs!1840566 () Bool)

(assert (= bs!1840566 (and b!6893413 b!6893366)))

(assert (=> bs!1840566 (= (and (= (regOne!34152 lt!2463211) (regOne!34152 lt!2463210)) (= (regTwo!34152 lt!2463211) (regTwo!34152 lt!2463210))) (= lambda!390748 lambda!390746))))

(declare-fun bs!1840567 () Bool)

(assert (= bs!1840567 (and b!6893413 b!6893363)))

(assert (=> bs!1840567 (not (= lambda!390748 lambda!390745))))

(assert (=> b!6893413 true))

(assert (=> b!6893413 true))

(declare-fun c!1281506 () Bool)

(declare-fun bm!627214 () Bool)

(declare-fun call!627220 () Bool)

(assert (=> bm!627214 (= call!627220 (Exists!3828 (ite c!1281506 lambda!390747 lambda!390748)))))

(declare-fun b!6893406 () Bool)

(declare-fun e!4152454 () Bool)

(declare-fun e!4152456 () Bool)

(assert (=> b!6893406 (= e!4152454 e!4152456)))

(declare-fun res!2810481 () Bool)

(assert (=> b!6893406 (= res!2810481 (not (is-EmptyLang!16820 lt!2463211)))))

(assert (=> b!6893406 (=> (not res!2810481) (not e!4152456))))

(declare-fun b!6893407 () Bool)

(declare-fun res!2810483 () Bool)

(declare-fun e!4152458 () Bool)

(assert (=> b!6893407 (=> res!2810483 e!4152458)))

(declare-fun call!627219 () Bool)

(assert (=> b!6893407 (= res!2810483 call!627219)))

(declare-fun e!4152459 () Bool)

(assert (=> b!6893407 (= e!4152459 e!4152458)))

(declare-fun b!6893408 () Bool)

(declare-fun e!4152457 () Bool)

(declare-fun e!4152455 () Bool)

(assert (=> b!6893408 (= e!4152457 e!4152455)))

(declare-fun res!2810482 () Bool)

(assert (=> b!6893408 (= res!2810482 (matchRSpec!3883 (regOne!34153 lt!2463211) s!14361))))

(assert (=> b!6893408 (=> res!2810482 e!4152455)))

(declare-fun b!6893409 () Bool)

(assert (=> b!6893409 (= e!4152455 (matchRSpec!3883 (regTwo!34153 lt!2463211) s!14361))))

(assert (=> b!6893410 (= e!4152458 call!627220)))

(declare-fun b!6893411 () Bool)

(declare-fun c!1281507 () Bool)

(assert (=> b!6893411 (= c!1281507 (is-Union!16820 lt!2463211))))

(declare-fun e!4152453 () Bool)

(assert (=> b!6893411 (= e!4152453 e!4152457)))

(declare-fun b!6893412 () Bool)

(assert (=> b!6893412 (= e!4152457 e!4152459)))

(assert (=> b!6893412 (= c!1281506 (is-Star!16820 lt!2463211))))

(assert (=> b!6893413 (= e!4152459 call!627220)))

(declare-fun b!6893414 () Bool)

(declare-fun c!1281505 () Bool)

(assert (=> b!6893414 (= c!1281505 (is-ElementMatch!16820 lt!2463211))))

(assert (=> b!6893414 (= e!4152456 e!4152453)))

(declare-fun b!6893415 () Bool)

(assert (=> b!6893415 (= e!4152453 (= s!14361 (Cons!66453 (c!1281446 lt!2463211) Nil!66453)))))

(declare-fun bm!627215 () Bool)

(assert (=> bm!627215 (= call!627219 (isEmpty!38705 s!14361))))

(declare-fun b!6893416 () Bool)

(assert (=> b!6893416 (= e!4152454 call!627219)))

(declare-fun d!2161290 () Bool)

(declare-fun c!1281508 () Bool)

(assert (=> d!2161290 (= c!1281508 (is-EmptyExpr!16820 lt!2463211))))

(assert (=> d!2161290 (= (matchRSpec!3883 lt!2463211 s!14361) e!4152454)))

(assert (= (and d!2161290 c!1281508) b!6893416))

(assert (= (and d!2161290 (not c!1281508)) b!6893406))

(assert (= (and b!6893406 res!2810481) b!6893414))

(assert (= (and b!6893414 c!1281505) b!6893415))

(assert (= (and b!6893414 (not c!1281505)) b!6893411))

(assert (= (and b!6893411 c!1281507) b!6893408))

(assert (= (and b!6893411 (not c!1281507)) b!6893412))

(assert (= (and b!6893408 (not res!2810482)) b!6893409))

(assert (= (and b!6893412 c!1281506) b!6893407))

(assert (= (and b!6893412 (not c!1281506)) b!6893413))

(assert (= (and b!6893407 (not res!2810483)) b!6893410))

(assert (= (or b!6893410 b!6893413) bm!627214))

(assert (= (or b!6893416 b!6893407) bm!627215))

(declare-fun m!7613870 () Bool)

(assert (=> bm!627214 m!7613870))

(declare-fun m!7613872 () Bool)

(assert (=> b!6893408 m!7613872))

(declare-fun m!7613874 () Bool)

(assert (=> b!6893409 m!7613874))

(assert (=> bm!627215 m!7613788))

(assert (=> b!6893065 d!2161290))

(declare-fun d!2161292 () Bool)

(assert (=> d!2161292 (= (matchR!8965 lt!2463211 s!14361) (matchRSpec!3883 lt!2463211 s!14361))))

(declare-fun lt!2463270 () Unit!160360)

(assert (=> d!2161292 (= lt!2463270 (choose!51328 lt!2463211 s!14361))))

(assert (=> d!2161292 (validRegex!8528 lt!2463211)))

(assert (=> d!2161292 (= (mainMatchTheorem!3883 lt!2463211 s!14361) lt!2463270)))

(declare-fun bs!1840568 () Bool)

(assert (= bs!1840568 d!2161292))

(assert (=> bs!1840568 m!7613706))

(assert (=> bs!1840568 m!7613698))

(declare-fun m!7613876 () Bool)

(assert (=> bs!1840568 m!7613876))

(assert (=> bs!1840568 m!7613790))

(assert (=> b!6893065 d!2161292))

(declare-fun d!2161294 () Bool)

(declare-fun choose!51329 (Int) Bool)

(assert (=> d!2161294 (= (Exists!3828 lambda!390732) (choose!51329 lambda!390732))))

(declare-fun bs!1840569 () Bool)

(assert (= bs!1840569 d!2161294))

(declare-fun m!7613878 () Bool)

(assert (=> bs!1840569 m!7613878))

(assert (=> b!6893070 d!2161294))

(declare-fun d!2161296 () Bool)

(assert (=> d!2161296 (= (Exists!3828 lambda!390731) (choose!51329 lambda!390731))))

(declare-fun bs!1840570 () Bool)

(assert (= bs!1840570 d!2161296))

(declare-fun m!7613880 () Bool)

(assert (=> bs!1840570 m!7613880))

(assert (=> b!6893070 d!2161296))

(declare-fun bs!1840571 () Bool)

(declare-fun d!2161298 () Bool)

(assert (= bs!1840571 (and d!2161298 b!6893070)))

(declare-fun lambda!390753 () Int)

(assert (=> bs!1840571 (= lambda!390753 lambda!390731)))

(declare-fun bs!1840572 () Bool)

(assert (= bs!1840572 (and d!2161298 b!6893410)))

(assert (=> bs!1840572 (not (= lambda!390753 lambda!390747))))

(assert (=> bs!1840571 (not (= lambda!390753 lambda!390732))))

(declare-fun bs!1840573 () Bool)

(assert (= bs!1840573 (and d!2161298 b!6893363)))

(assert (=> bs!1840573 (not (= lambda!390753 lambda!390745))))

(declare-fun bs!1840574 () Bool)

(assert (= bs!1840574 (and d!2161298 b!6893366)))

(assert (=> bs!1840574 (not (= lambda!390753 lambda!390746))))

(declare-fun bs!1840575 () Bool)

(assert (= bs!1840575 (and d!2161298 b!6893413)))

(assert (=> bs!1840575 (not (= lambda!390753 lambda!390748))))

(assert (=> d!2161298 true))

(assert (=> d!2161298 true))

(assert (=> d!2161298 true))

(assert (=> d!2161298 (= (isDefined!13302 (findConcatSeparation!3013 r1!6342 lt!2463216 Nil!66453 s!14361 s!14361)) (Exists!3828 lambda!390753))))

(declare-fun lt!2463275 () Unit!160360)

(declare-fun choose!51330 (Regex!16820 Regex!16820 List!66577) Unit!160360)

(assert (=> d!2161298 (= lt!2463275 (choose!51330 r1!6342 lt!2463216 s!14361))))

(assert (=> d!2161298 (validRegex!8528 r1!6342)))

(assert (=> d!2161298 (= (lemmaFindConcatSeparationEquivalentToExists!2775 r1!6342 lt!2463216 s!14361) lt!2463275)))

(declare-fun bs!1840576 () Bool)

(assert (= bs!1840576 d!2161298))

(declare-fun m!7613882 () Bool)

(assert (=> bs!1840576 m!7613882))

(assert (=> bs!1840576 m!7613690))

(declare-fun m!7613884 () Bool)

(assert (=> bs!1840576 m!7613884))

(assert (=> bs!1840576 m!7613686))

(assert (=> bs!1840576 m!7613690))

(assert (=> bs!1840576 m!7613692))

(assert (=> b!6893070 d!2161298))

(declare-fun bs!1840580 () Bool)

(declare-fun d!2161300 () Bool)

(assert (= bs!1840580 (and d!2161300 b!6893070)))

(declare-fun lambda!390759 () Int)

(assert (=> bs!1840580 (= lambda!390759 lambda!390731)))

(declare-fun bs!1840581 () Bool)

(assert (= bs!1840581 (and d!2161300 b!6893410)))

(assert (=> bs!1840581 (not (= lambda!390759 lambda!390747))))

(assert (=> bs!1840580 (not (= lambda!390759 lambda!390732))))

(declare-fun bs!1840582 () Bool)

(assert (= bs!1840582 (and d!2161300 b!6893363)))

(assert (=> bs!1840582 (not (= lambda!390759 lambda!390745))))

(declare-fun bs!1840583 () Bool)

(assert (= bs!1840583 (and d!2161300 d!2161298)))

(assert (=> bs!1840583 (= lambda!390759 lambda!390753)))

(declare-fun bs!1840584 () Bool)

(assert (= bs!1840584 (and d!2161300 b!6893366)))

(assert (=> bs!1840584 (not (= lambda!390759 lambda!390746))))

(declare-fun bs!1840585 () Bool)

(assert (= bs!1840585 (and d!2161300 b!6893413)))

(assert (=> bs!1840585 (not (= lambda!390759 lambda!390748))))

(assert (=> d!2161300 true))

(assert (=> d!2161300 true))

(assert (=> d!2161300 true))

(declare-fun lambda!390760 () Int)

(assert (=> bs!1840580 (not (= lambda!390760 lambda!390731))))

(assert (=> bs!1840581 (not (= lambda!390760 lambda!390747))))

(assert (=> bs!1840580 (= lambda!390760 lambda!390732)))

(assert (=> bs!1840582 (not (= lambda!390760 lambda!390745))))

(assert (=> bs!1840583 (not (= lambda!390760 lambda!390753))))

(assert (=> bs!1840584 (= (and (= r1!6342 (regOne!34152 lt!2463210)) (= lt!2463216 (regTwo!34152 lt!2463210))) (= lambda!390760 lambda!390746))))

(assert (=> bs!1840585 (= (and (= r1!6342 (regOne!34152 lt!2463211)) (= lt!2463216 (regTwo!34152 lt!2463211))) (= lambda!390760 lambda!390748))))

(declare-fun bs!1840586 () Bool)

(assert (= bs!1840586 d!2161300))

(assert (=> bs!1840586 (not (= lambda!390760 lambda!390759))))

(assert (=> d!2161300 true))

(assert (=> d!2161300 true))

(assert (=> d!2161300 true))

(assert (=> d!2161300 (= (Exists!3828 lambda!390759) (Exists!3828 lambda!390760))))

(declare-fun lt!2463279 () Unit!160360)

(declare-fun choose!51331 (Regex!16820 Regex!16820 List!66577) Unit!160360)

(assert (=> d!2161300 (= lt!2463279 (choose!51331 r1!6342 lt!2463216 s!14361))))

(assert (=> d!2161300 (validRegex!8528 r1!6342)))

(assert (=> d!2161300 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2301 r1!6342 lt!2463216 s!14361) lt!2463279)))

(declare-fun m!7613892 () Bool)

(assert (=> bs!1840586 m!7613892))

(declare-fun m!7613894 () Bool)

(assert (=> bs!1840586 m!7613894))

(declare-fun m!7613896 () Bool)

(assert (=> bs!1840586 m!7613896))

(assert (=> bs!1840586 m!7613686))

(assert (=> b!6893070 d!2161300))

(declare-fun bm!627216 () Bool)

(declare-fun call!627221 () Bool)

(declare-fun call!627223 () Bool)

(assert (=> bm!627216 (= call!627221 call!627223)))

(declare-fun b!6893433 () Bool)

(declare-fun e!4152471 () Bool)

(declare-fun e!4152473 () Bool)

(assert (=> b!6893433 (= e!4152471 e!4152473)))

(declare-fun res!2810503 () Bool)

(assert (=> b!6893433 (= res!2810503 (not (nullable!6695 (reg!17149 lt!2463216))))))

(assert (=> b!6893433 (=> (not res!2810503) (not e!4152473))))

(declare-fun d!2161306 () Bool)

(declare-fun res!2810502 () Bool)

(declare-fun e!4152469 () Bool)

(assert (=> d!2161306 (=> res!2810502 e!4152469)))

(assert (=> d!2161306 (= res!2810502 (is-ElementMatch!16820 lt!2463216))))

(assert (=> d!2161306 (= (validRegex!8528 lt!2463216) e!4152469)))

(declare-fun b!6893434 () Bool)

(declare-fun e!4152470 () Bool)

(declare-fun call!627222 () Bool)

(assert (=> b!6893434 (= e!4152470 call!627222)))

(declare-fun b!6893435 () Bool)

(declare-fun res!2810501 () Bool)

(declare-fun e!4152468 () Bool)

(assert (=> b!6893435 (=> (not res!2810501) (not e!4152468))))

(assert (=> b!6893435 (= res!2810501 call!627222)))

(declare-fun e!4152474 () Bool)

(assert (=> b!6893435 (= e!4152474 e!4152468)))

(declare-fun b!6893436 () Bool)

(assert (=> b!6893436 (= e!4152468 call!627221)))

(declare-fun bm!627217 () Bool)

(declare-fun c!1281510 () Bool)

(declare-fun c!1281509 () Bool)

(assert (=> bm!627217 (= call!627223 (validRegex!8528 (ite c!1281509 (reg!17149 lt!2463216) (ite c!1281510 (regTwo!34153 lt!2463216) (regOne!34152 lt!2463216)))))))

(declare-fun b!6893437 () Bool)

(assert (=> b!6893437 (= e!4152469 e!4152471)))

(assert (=> b!6893437 (= c!1281509 (is-Star!16820 lt!2463216))))

(declare-fun b!6893438 () Bool)

(assert (=> b!6893438 (= e!4152471 e!4152474)))

(assert (=> b!6893438 (= c!1281510 (is-Union!16820 lt!2463216))))

(declare-fun b!6893439 () Bool)

(assert (=> b!6893439 (= e!4152473 call!627223)))

(declare-fun b!6893440 () Bool)

(declare-fun res!2810500 () Bool)

(declare-fun e!4152472 () Bool)

(assert (=> b!6893440 (=> res!2810500 e!4152472)))

(assert (=> b!6893440 (= res!2810500 (not (is-Concat!25665 lt!2463216)))))

(assert (=> b!6893440 (= e!4152474 e!4152472)))

(declare-fun b!6893441 () Bool)

(assert (=> b!6893441 (= e!4152472 e!4152470)))

(declare-fun res!2810504 () Bool)

(assert (=> b!6893441 (=> (not res!2810504) (not e!4152470))))

(assert (=> b!6893441 (= res!2810504 call!627221)))

(declare-fun bm!627218 () Bool)

(assert (=> bm!627218 (= call!627222 (validRegex!8528 (ite c!1281510 (regOne!34153 lt!2463216) (regTwo!34152 lt!2463216))))))

(assert (= (and d!2161306 (not res!2810502)) b!6893437))

(assert (= (and b!6893437 c!1281509) b!6893433))

(assert (= (and b!6893437 (not c!1281509)) b!6893438))

(assert (= (and b!6893433 res!2810503) b!6893439))

(assert (= (and b!6893438 c!1281510) b!6893435))

(assert (= (and b!6893438 (not c!1281510)) b!6893440))

(assert (= (and b!6893435 res!2810501) b!6893436))

(assert (= (and b!6893440 (not res!2810500)) b!6893441))

(assert (= (and b!6893441 res!2810504) b!6893434))

(assert (= (or b!6893435 b!6893434) bm!627218))

(assert (= (or b!6893436 b!6893441) bm!627216))

(assert (= (or b!6893439 bm!627216) bm!627217))

(declare-fun m!7613898 () Bool)

(assert (=> b!6893433 m!7613898))

(declare-fun m!7613900 () Bool)

(assert (=> bm!627217 m!7613900))

(declare-fun m!7613902 () Bool)

(assert (=> bm!627218 m!7613902))

(assert (=> b!6893070 d!2161306))

(declare-fun bm!627219 () Bool)

(declare-fun call!627224 () Bool)

(declare-fun call!627226 () Bool)

(assert (=> bm!627219 (= call!627224 call!627226)))

(declare-fun b!6893446 () Bool)

(declare-fun e!4152480 () Bool)

(declare-fun e!4152482 () Bool)

(assert (=> b!6893446 (= e!4152480 e!4152482)))

(declare-fun res!2810512 () Bool)

(assert (=> b!6893446 (= res!2810512 (not (nullable!6695 (reg!17149 r1!6342))))))

(assert (=> b!6893446 (=> (not res!2810512) (not e!4152482))))

(declare-fun d!2161308 () Bool)

(declare-fun res!2810511 () Bool)

(declare-fun e!4152478 () Bool)

(assert (=> d!2161308 (=> res!2810511 e!4152478)))

(assert (=> d!2161308 (= res!2810511 (is-ElementMatch!16820 r1!6342))))

(assert (=> d!2161308 (= (validRegex!8528 r1!6342) e!4152478)))

(declare-fun b!6893447 () Bool)

(declare-fun e!4152479 () Bool)

(declare-fun call!627225 () Bool)

(assert (=> b!6893447 (= e!4152479 call!627225)))

(declare-fun b!6893448 () Bool)

(declare-fun res!2810510 () Bool)

(declare-fun e!4152477 () Bool)

(assert (=> b!6893448 (=> (not res!2810510) (not e!4152477))))

(assert (=> b!6893448 (= res!2810510 call!627225)))

(declare-fun e!4152483 () Bool)

(assert (=> b!6893448 (= e!4152483 e!4152477)))

(declare-fun b!6893449 () Bool)

(assert (=> b!6893449 (= e!4152477 call!627224)))

(declare-fun c!1281512 () Bool)

(declare-fun c!1281511 () Bool)

(declare-fun bm!627220 () Bool)

(assert (=> bm!627220 (= call!627226 (validRegex!8528 (ite c!1281511 (reg!17149 r1!6342) (ite c!1281512 (regTwo!34153 r1!6342) (regOne!34152 r1!6342)))))))

(declare-fun b!6893450 () Bool)

(assert (=> b!6893450 (= e!4152478 e!4152480)))

(assert (=> b!6893450 (= c!1281511 (is-Star!16820 r1!6342))))

(declare-fun b!6893451 () Bool)

(assert (=> b!6893451 (= e!4152480 e!4152483)))

(assert (=> b!6893451 (= c!1281512 (is-Union!16820 r1!6342))))

(declare-fun b!6893452 () Bool)

(assert (=> b!6893452 (= e!4152482 call!627226)))

(declare-fun b!6893453 () Bool)

(declare-fun res!2810509 () Bool)

(declare-fun e!4152481 () Bool)

(assert (=> b!6893453 (=> res!2810509 e!4152481)))

(assert (=> b!6893453 (= res!2810509 (not (is-Concat!25665 r1!6342)))))

(assert (=> b!6893453 (= e!4152483 e!4152481)))

(declare-fun b!6893454 () Bool)

(assert (=> b!6893454 (= e!4152481 e!4152479)))

(declare-fun res!2810513 () Bool)

(assert (=> b!6893454 (=> (not res!2810513) (not e!4152479))))

(assert (=> b!6893454 (= res!2810513 call!627224)))

(declare-fun bm!627221 () Bool)

(assert (=> bm!627221 (= call!627225 (validRegex!8528 (ite c!1281512 (regOne!34153 r1!6342) (regTwo!34152 r1!6342))))))

(assert (= (and d!2161308 (not res!2810511)) b!6893450))

(assert (= (and b!6893450 c!1281511) b!6893446))

(assert (= (and b!6893450 (not c!1281511)) b!6893451))

(assert (= (and b!6893446 res!2810512) b!6893452))

(assert (= (and b!6893451 c!1281512) b!6893448))

(assert (= (and b!6893451 (not c!1281512)) b!6893453))

(assert (= (and b!6893448 res!2810510) b!6893449))

(assert (= (and b!6893453 (not res!2810509)) b!6893454))

(assert (= (and b!6893454 res!2810513) b!6893447))

(assert (= (or b!6893448 b!6893447) bm!627221))

(assert (= (or b!6893449 b!6893454) bm!627219))

(assert (= (or b!6893452 bm!627219) bm!627220))

(declare-fun m!7613904 () Bool)

(assert (=> b!6893446 m!7613904))

(declare-fun m!7613906 () Bool)

(assert (=> bm!627220 m!7613906))

(declare-fun m!7613908 () Bool)

(assert (=> bm!627221 m!7613908))

(assert (=> start!664376 d!2161308))

(declare-fun b!6893470 () Bool)

(declare-fun e!4152491 () Bool)

(declare-fun lt!2463284 () List!66577)

(assert (=> b!6893470 (= e!4152491 (or (not (= s!14361 Nil!66453)) (= lt!2463284 Nil!66453)))))

(declare-fun b!6893468 () Bool)

(declare-fun e!4152490 () List!66577)

(assert (=> b!6893468 (= e!4152490 (Cons!66453 (h!72901 Nil!66453) (++!14889 (t!380320 Nil!66453) s!14361)))))

(declare-fun d!2161310 () Bool)

(assert (=> d!2161310 e!4152491))

(declare-fun res!2810523 () Bool)

(assert (=> d!2161310 (=> (not res!2810523) (not e!4152491))))

(declare-fun content!13054 (List!66577) (Set C!33910))

(assert (=> d!2161310 (= res!2810523 (= (content!13054 lt!2463284) (set.union (content!13054 Nil!66453) (content!13054 s!14361))))))

(assert (=> d!2161310 (= lt!2463284 e!4152490)))

(declare-fun c!1281515 () Bool)

(assert (=> d!2161310 (= c!1281515 (is-Nil!66453 Nil!66453))))

(assert (=> d!2161310 (= (++!14889 Nil!66453 s!14361) lt!2463284)))

(declare-fun b!6893469 () Bool)

(declare-fun res!2810522 () Bool)

(assert (=> b!6893469 (=> (not res!2810522) (not e!4152491))))

(declare-fun size!40751 (List!66577) Int)

(assert (=> b!6893469 (= res!2810522 (= (size!40751 lt!2463284) (+ (size!40751 Nil!66453) (size!40751 s!14361))))))

(declare-fun b!6893467 () Bool)

(assert (=> b!6893467 (= e!4152490 s!14361)))

(assert (= (and d!2161310 c!1281515) b!6893467))

(assert (= (and d!2161310 (not c!1281515)) b!6893468))

(assert (= (and d!2161310 res!2810523) b!6893469))

(assert (= (and b!6893469 res!2810522) b!6893470))

(declare-fun m!7613910 () Bool)

(assert (=> b!6893468 m!7613910))

(declare-fun m!7613912 () Bool)

(assert (=> d!2161310 m!7613912))

(declare-fun m!7613914 () Bool)

(assert (=> d!2161310 m!7613914))

(declare-fun m!7613916 () Bool)

(assert (=> d!2161310 m!7613916))

(declare-fun m!7613918 () Bool)

(assert (=> b!6893469 m!7613918))

(declare-fun m!7613920 () Bool)

(assert (=> b!6893469 m!7613920))

(declare-fun m!7613922 () Bool)

(assert (=> b!6893469 m!7613922))

(assert (=> b!6893066 d!2161310))

(declare-fun b!6893481 () Bool)

(declare-fun e!4152494 () Bool)

(assert (=> b!6893481 (= e!4152494 tp_is_empty!42865)))

(declare-fun b!6893483 () Bool)

(declare-fun tp!1897058 () Bool)

(assert (=> b!6893483 (= e!4152494 tp!1897058)))

(assert (=> b!6893068 (= tp!1896996 e!4152494)))

(declare-fun b!6893484 () Bool)

(declare-fun tp!1897060 () Bool)

(declare-fun tp!1897061 () Bool)

(assert (=> b!6893484 (= e!4152494 (and tp!1897060 tp!1897061))))

(declare-fun b!6893482 () Bool)

(declare-fun tp!1897059 () Bool)

(declare-fun tp!1897062 () Bool)

(assert (=> b!6893482 (= e!4152494 (and tp!1897059 tp!1897062))))

(assert (= (and b!6893068 (is-ElementMatch!16820 (regOne!34152 r2!6280))) b!6893481))

(assert (= (and b!6893068 (is-Concat!25665 (regOne!34152 r2!6280))) b!6893482))

(assert (= (and b!6893068 (is-Star!16820 (regOne!34152 r2!6280))) b!6893483))

(assert (= (and b!6893068 (is-Union!16820 (regOne!34152 r2!6280))) b!6893484))

(declare-fun b!6893485 () Bool)

(declare-fun e!4152495 () Bool)

(assert (=> b!6893485 (= e!4152495 tp_is_empty!42865)))

(declare-fun b!6893487 () Bool)

(declare-fun tp!1897063 () Bool)

(assert (=> b!6893487 (= e!4152495 tp!1897063)))

(assert (=> b!6893068 (= tp!1896984 e!4152495)))

(declare-fun b!6893488 () Bool)

(declare-fun tp!1897065 () Bool)

(declare-fun tp!1897066 () Bool)

(assert (=> b!6893488 (= e!4152495 (and tp!1897065 tp!1897066))))

(declare-fun b!6893486 () Bool)

(declare-fun tp!1897064 () Bool)

(declare-fun tp!1897067 () Bool)

(assert (=> b!6893486 (= e!4152495 (and tp!1897064 tp!1897067))))

(assert (= (and b!6893068 (is-ElementMatch!16820 (regTwo!34152 r2!6280))) b!6893485))

(assert (= (and b!6893068 (is-Concat!25665 (regTwo!34152 r2!6280))) b!6893486))

(assert (= (and b!6893068 (is-Star!16820 (regTwo!34152 r2!6280))) b!6893487))

(assert (= (and b!6893068 (is-Union!16820 (regTwo!34152 r2!6280))) b!6893488))

(declare-fun b!6893489 () Bool)

(declare-fun e!4152496 () Bool)

(assert (=> b!6893489 (= e!4152496 tp_is_empty!42865)))

(declare-fun b!6893491 () Bool)

(declare-fun tp!1897068 () Bool)

(assert (=> b!6893491 (= e!4152496 tp!1897068)))

(assert (=> b!6893073 (= tp!1896985 e!4152496)))

(declare-fun b!6893492 () Bool)

(declare-fun tp!1897070 () Bool)

(declare-fun tp!1897071 () Bool)

(assert (=> b!6893492 (= e!4152496 (and tp!1897070 tp!1897071))))

(declare-fun b!6893490 () Bool)

(declare-fun tp!1897069 () Bool)

(declare-fun tp!1897072 () Bool)

(assert (=> b!6893490 (= e!4152496 (and tp!1897069 tp!1897072))))

(assert (= (and b!6893073 (is-ElementMatch!16820 (regOne!34152 r1!6342))) b!6893489))

(assert (= (and b!6893073 (is-Concat!25665 (regOne!34152 r1!6342))) b!6893490))

(assert (= (and b!6893073 (is-Star!16820 (regOne!34152 r1!6342))) b!6893491))

(assert (= (and b!6893073 (is-Union!16820 (regOne!34152 r1!6342))) b!6893492))

(declare-fun b!6893493 () Bool)

(declare-fun e!4152497 () Bool)

(assert (=> b!6893493 (= e!4152497 tp_is_empty!42865)))

(declare-fun b!6893495 () Bool)

(declare-fun tp!1897073 () Bool)

(assert (=> b!6893495 (= e!4152497 tp!1897073)))

(assert (=> b!6893073 (= tp!1896991 e!4152497)))

(declare-fun b!6893496 () Bool)

(declare-fun tp!1897075 () Bool)

(declare-fun tp!1897076 () Bool)

(assert (=> b!6893496 (= e!4152497 (and tp!1897075 tp!1897076))))

(declare-fun b!6893494 () Bool)

(declare-fun tp!1897074 () Bool)

(declare-fun tp!1897077 () Bool)

(assert (=> b!6893494 (= e!4152497 (and tp!1897074 tp!1897077))))

(assert (= (and b!6893073 (is-ElementMatch!16820 (regTwo!34152 r1!6342))) b!6893493))

(assert (= (and b!6893073 (is-Concat!25665 (regTwo!34152 r1!6342))) b!6893494))

(assert (= (and b!6893073 (is-Star!16820 (regTwo!34152 r1!6342))) b!6893495))

(assert (= (and b!6893073 (is-Union!16820 (regTwo!34152 r1!6342))) b!6893496))

(declare-fun b!6893497 () Bool)

(declare-fun e!4152498 () Bool)

(assert (=> b!6893497 (= e!4152498 tp_is_empty!42865)))

(declare-fun b!6893499 () Bool)

(declare-fun tp!1897078 () Bool)

(assert (=> b!6893499 (= e!4152498 tp!1897078)))

(assert (=> b!6893064 (= tp!1896997 e!4152498)))

(declare-fun b!6893500 () Bool)

(declare-fun tp!1897080 () Bool)

(declare-fun tp!1897081 () Bool)

(assert (=> b!6893500 (= e!4152498 (and tp!1897080 tp!1897081))))

(declare-fun b!6893498 () Bool)

(declare-fun tp!1897079 () Bool)

(declare-fun tp!1897082 () Bool)

(assert (=> b!6893498 (= e!4152498 (and tp!1897079 tp!1897082))))

(assert (= (and b!6893064 (is-ElementMatch!16820 (regOne!34153 r1!6342))) b!6893497))

(assert (= (and b!6893064 (is-Concat!25665 (regOne!34153 r1!6342))) b!6893498))

(assert (= (and b!6893064 (is-Star!16820 (regOne!34153 r1!6342))) b!6893499))

(assert (= (and b!6893064 (is-Union!16820 (regOne!34153 r1!6342))) b!6893500))

(declare-fun b!6893501 () Bool)

(declare-fun e!4152499 () Bool)

(assert (=> b!6893501 (= e!4152499 tp_is_empty!42865)))

(declare-fun b!6893503 () Bool)

(declare-fun tp!1897083 () Bool)

(assert (=> b!6893503 (= e!4152499 tp!1897083)))

(assert (=> b!6893064 (= tp!1896993 e!4152499)))

(declare-fun b!6893504 () Bool)

(declare-fun tp!1897085 () Bool)

(declare-fun tp!1897086 () Bool)

(assert (=> b!6893504 (= e!4152499 (and tp!1897085 tp!1897086))))

(declare-fun b!6893502 () Bool)

(declare-fun tp!1897084 () Bool)

(declare-fun tp!1897087 () Bool)

(assert (=> b!6893502 (= e!4152499 (and tp!1897084 tp!1897087))))

(assert (= (and b!6893064 (is-ElementMatch!16820 (regTwo!34153 r1!6342))) b!6893501))

(assert (= (and b!6893064 (is-Concat!25665 (regTwo!34153 r1!6342))) b!6893502))

(assert (= (and b!6893064 (is-Star!16820 (regTwo!34153 r1!6342))) b!6893503))

(assert (= (and b!6893064 (is-Union!16820 (regTwo!34153 r1!6342))) b!6893504))

(declare-fun b!6893505 () Bool)

(declare-fun e!4152500 () Bool)

(assert (=> b!6893505 (= e!4152500 tp_is_empty!42865)))

(declare-fun b!6893507 () Bool)

(declare-fun tp!1897088 () Bool)

(assert (=> b!6893507 (= e!4152500 tp!1897088)))

(assert (=> b!6893069 (= tp!1896992 e!4152500)))

(declare-fun b!6893508 () Bool)

(declare-fun tp!1897090 () Bool)

(declare-fun tp!1897091 () Bool)

(assert (=> b!6893508 (= e!4152500 (and tp!1897090 tp!1897091))))

(declare-fun b!6893506 () Bool)

(declare-fun tp!1897089 () Bool)

(declare-fun tp!1897092 () Bool)

(assert (=> b!6893506 (= e!4152500 (and tp!1897089 tp!1897092))))

(assert (= (and b!6893069 (is-ElementMatch!16820 (regOne!34152 r3!135))) b!6893505))

(assert (= (and b!6893069 (is-Concat!25665 (regOne!34152 r3!135))) b!6893506))

(assert (= (and b!6893069 (is-Star!16820 (regOne!34152 r3!135))) b!6893507))

(assert (= (and b!6893069 (is-Union!16820 (regOne!34152 r3!135))) b!6893508))

(declare-fun b!6893509 () Bool)

(declare-fun e!4152501 () Bool)

(assert (=> b!6893509 (= e!4152501 tp_is_empty!42865)))

(declare-fun b!6893511 () Bool)

(declare-fun tp!1897093 () Bool)

(assert (=> b!6893511 (= e!4152501 tp!1897093)))

(assert (=> b!6893069 (= tp!1896995 e!4152501)))

(declare-fun b!6893512 () Bool)

(declare-fun tp!1897095 () Bool)

(declare-fun tp!1897096 () Bool)

(assert (=> b!6893512 (= e!4152501 (and tp!1897095 tp!1897096))))

(declare-fun b!6893510 () Bool)

(declare-fun tp!1897094 () Bool)

(declare-fun tp!1897097 () Bool)

(assert (=> b!6893510 (= e!4152501 (and tp!1897094 tp!1897097))))

(assert (= (and b!6893069 (is-ElementMatch!16820 (regTwo!34152 r3!135))) b!6893509))

(assert (= (and b!6893069 (is-Concat!25665 (regTwo!34152 r3!135))) b!6893510))

(assert (= (and b!6893069 (is-Star!16820 (regTwo!34152 r3!135))) b!6893511))

(assert (= (and b!6893069 (is-Union!16820 (regTwo!34152 r3!135))) b!6893512))

(declare-fun b!6893517 () Bool)

(declare-fun e!4152504 () Bool)

(declare-fun tp!1897100 () Bool)

(assert (=> b!6893517 (= e!4152504 (and tp_is_empty!42865 tp!1897100))))

(assert (=> b!6893074 (= tp!1896986 e!4152504)))

(assert (= (and b!6893074 (is-Cons!66453 (t!380320 s!14361))) b!6893517))

(declare-fun b!6893518 () Bool)

(declare-fun e!4152505 () Bool)

(assert (=> b!6893518 (= e!4152505 tp_is_empty!42865)))

(declare-fun b!6893520 () Bool)

(declare-fun tp!1897101 () Bool)

(assert (=> b!6893520 (= e!4152505 tp!1897101)))

(assert (=> b!6893071 (= tp!1896998 e!4152505)))

(declare-fun b!6893521 () Bool)

(declare-fun tp!1897103 () Bool)

(declare-fun tp!1897104 () Bool)

(assert (=> b!6893521 (= e!4152505 (and tp!1897103 tp!1897104))))

(declare-fun b!6893519 () Bool)

(declare-fun tp!1897102 () Bool)

(declare-fun tp!1897105 () Bool)

(assert (=> b!6893519 (= e!4152505 (and tp!1897102 tp!1897105))))

(assert (= (and b!6893071 (is-ElementMatch!16820 (regOne!34153 r2!6280))) b!6893518))

(assert (= (and b!6893071 (is-Concat!25665 (regOne!34153 r2!6280))) b!6893519))

(assert (= (and b!6893071 (is-Star!16820 (regOne!34153 r2!6280))) b!6893520))

(assert (= (and b!6893071 (is-Union!16820 (regOne!34153 r2!6280))) b!6893521))

(declare-fun b!6893522 () Bool)

(declare-fun e!4152506 () Bool)

(assert (=> b!6893522 (= e!4152506 tp_is_empty!42865)))

(declare-fun b!6893524 () Bool)

(declare-fun tp!1897106 () Bool)

(assert (=> b!6893524 (= e!4152506 tp!1897106)))

(assert (=> b!6893071 (= tp!1896990 e!4152506)))

(declare-fun b!6893525 () Bool)

(declare-fun tp!1897108 () Bool)

(declare-fun tp!1897109 () Bool)

(assert (=> b!6893525 (= e!4152506 (and tp!1897108 tp!1897109))))

(declare-fun b!6893523 () Bool)

(declare-fun tp!1897107 () Bool)

(declare-fun tp!1897110 () Bool)

(assert (=> b!6893523 (= e!4152506 (and tp!1897107 tp!1897110))))

(assert (= (and b!6893071 (is-ElementMatch!16820 (regTwo!34153 r2!6280))) b!6893522))

(assert (= (and b!6893071 (is-Concat!25665 (regTwo!34153 r2!6280))) b!6893523))

(assert (= (and b!6893071 (is-Star!16820 (regTwo!34153 r2!6280))) b!6893524))

(assert (= (and b!6893071 (is-Union!16820 (regTwo!34153 r2!6280))) b!6893525))

(declare-fun b!6893526 () Bool)

(declare-fun e!4152507 () Bool)

(assert (=> b!6893526 (= e!4152507 tp_is_empty!42865)))

(declare-fun b!6893528 () Bool)

(declare-fun tp!1897111 () Bool)

(assert (=> b!6893528 (= e!4152507 tp!1897111)))

(assert (=> b!6893076 (= tp!1896999 e!4152507)))

(declare-fun b!6893529 () Bool)

(declare-fun tp!1897113 () Bool)

(declare-fun tp!1897114 () Bool)

(assert (=> b!6893529 (= e!4152507 (and tp!1897113 tp!1897114))))

(declare-fun b!6893527 () Bool)

(declare-fun tp!1897112 () Bool)

(declare-fun tp!1897115 () Bool)

(assert (=> b!6893527 (= e!4152507 (and tp!1897112 tp!1897115))))

(assert (= (and b!6893076 (is-ElementMatch!16820 (reg!17149 r1!6342))) b!6893526))

(assert (= (and b!6893076 (is-Concat!25665 (reg!17149 r1!6342))) b!6893527))

(assert (= (and b!6893076 (is-Star!16820 (reg!17149 r1!6342))) b!6893528))

(assert (= (and b!6893076 (is-Union!16820 (reg!17149 r1!6342))) b!6893529))

(declare-fun b!6893530 () Bool)

(declare-fun e!4152508 () Bool)

(assert (=> b!6893530 (= e!4152508 tp_is_empty!42865)))

(declare-fun b!6893532 () Bool)

(declare-fun tp!1897116 () Bool)

(assert (=> b!6893532 (= e!4152508 tp!1897116)))

(assert (=> b!6893067 (= tp!1896988 e!4152508)))

(declare-fun b!6893533 () Bool)

(declare-fun tp!1897118 () Bool)

(declare-fun tp!1897119 () Bool)

(assert (=> b!6893533 (= e!4152508 (and tp!1897118 tp!1897119))))

(declare-fun b!6893531 () Bool)

(declare-fun tp!1897117 () Bool)

(declare-fun tp!1897120 () Bool)

(assert (=> b!6893531 (= e!4152508 (and tp!1897117 tp!1897120))))

(assert (= (and b!6893067 (is-ElementMatch!16820 (reg!17149 r2!6280))) b!6893530))

(assert (= (and b!6893067 (is-Concat!25665 (reg!17149 r2!6280))) b!6893531))

(assert (= (and b!6893067 (is-Star!16820 (reg!17149 r2!6280))) b!6893532))

(assert (= (and b!6893067 (is-Union!16820 (reg!17149 r2!6280))) b!6893533))

(declare-fun b!6893534 () Bool)

(declare-fun e!4152509 () Bool)

(assert (=> b!6893534 (= e!4152509 tp_is_empty!42865)))

(declare-fun b!6893536 () Bool)

(declare-fun tp!1897121 () Bool)

(assert (=> b!6893536 (= e!4152509 tp!1897121)))

(assert (=> b!6893077 (= tp!1896994 e!4152509)))

(declare-fun b!6893537 () Bool)

(declare-fun tp!1897123 () Bool)

(declare-fun tp!1897124 () Bool)

(assert (=> b!6893537 (= e!4152509 (and tp!1897123 tp!1897124))))

(declare-fun b!6893535 () Bool)

(declare-fun tp!1897122 () Bool)

(declare-fun tp!1897125 () Bool)

(assert (=> b!6893535 (= e!4152509 (and tp!1897122 tp!1897125))))

(assert (= (and b!6893077 (is-ElementMatch!16820 (reg!17149 r3!135))) b!6893534))

(assert (= (and b!6893077 (is-Concat!25665 (reg!17149 r3!135))) b!6893535))

(assert (= (and b!6893077 (is-Star!16820 (reg!17149 r3!135))) b!6893536))

(assert (= (and b!6893077 (is-Union!16820 (reg!17149 r3!135))) b!6893537))

(declare-fun b!6893538 () Bool)

(declare-fun e!4152510 () Bool)

(assert (=> b!6893538 (= e!4152510 tp_is_empty!42865)))

(declare-fun b!6893540 () Bool)

(declare-fun tp!1897126 () Bool)

(assert (=> b!6893540 (= e!4152510 tp!1897126)))

(assert (=> b!6893082 (= tp!1896987 e!4152510)))

(declare-fun b!6893541 () Bool)

(declare-fun tp!1897128 () Bool)

(declare-fun tp!1897129 () Bool)

(assert (=> b!6893541 (= e!4152510 (and tp!1897128 tp!1897129))))

(declare-fun b!6893539 () Bool)

(declare-fun tp!1897127 () Bool)

(declare-fun tp!1897130 () Bool)

(assert (=> b!6893539 (= e!4152510 (and tp!1897127 tp!1897130))))

(assert (= (and b!6893082 (is-ElementMatch!16820 (regOne!34153 r3!135))) b!6893538))

(assert (= (and b!6893082 (is-Concat!25665 (regOne!34153 r3!135))) b!6893539))

(assert (= (and b!6893082 (is-Star!16820 (regOne!34153 r3!135))) b!6893540))

(assert (= (and b!6893082 (is-Union!16820 (regOne!34153 r3!135))) b!6893541))

(declare-fun b!6893542 () Bool)

(declare-fun e!4152511 () Bool)

(assert (=> b!6893542 (= e!4152511 tp_is_empty!42865)))

(declare-fun b!6893544 () Bool)

(declare-fun tp!1897131 () Bool)

(assert (=> b!6893544 (= e!4152511 tp!1897131)))

(assert (=> b!6893082 (= tp!1896989 e!4152511)))

(declare-fun b!6893545 () Bool)

(declare-fun tp!1897133 () Bool)

(declare-fun tp!1897134 () Bool)

(assert (=> b!6893545 (= e!4152511 (and tp!1897133 tp!1897134))))

(declare-fun b!6893543 () Bool)

(declare-fun tp!1897132 () Bool)

(declare-fun tp!1897135 () Bool)

(assert (=> b!6893543 (= e!4152511 (and tp!1897132 tp!1897135))))

(assert (= (and b!6893082 (is-ElementMatch!16820 (regTwo!34153 r3!135))) b!6893542))

(assert (= (and b!6893082 (is-Concat!25665 (regTwo!34153 r3!135))) b!6893543))

(assert (= (and b!6893082 (is-Star!16820 (regTwo!34153 r3!135))) b!6893544))

(assert (= (and b!6893082 (is-Union!16820 (regTwo!34153 r3!135))) b!6893545))

(push 1)

(assert (not b!6893408))

(assert (not b!6893523))

(assert (not b!6893537))

(assert (not b!6893232))

(assert (not b!6893531))

(assert (not b!6893486))

(assert (not b!6893535))

(assert (not b!6893487))

(assert (not bm!627193))

(assert (not b!6893446))

(assert (not d!2161262))

(assert (not d!2161296))

(assert (not b!6893529))

(assert (not b!6893484))

(assert (not b!6893361))

(assert (not b!6893241))

(assert (not d!2161260))

(assert (not bm!627206))

(assert (not d!2161292))

(assert (not b!6893539))

(assert (not b!6893303))

(assert (not b!6893527))

(assert (not b!6893519))

(assert (not b!6893207))

(assert (not b!6893541))

(assert (not b!6893544))

(assert (not b!6893517))

(assert (not b!6893404))

(assert (not b!6893399))

(assert (not b!6893498))

(assert (not b!6893483))

(assert (not b!6893524))

(assert (not b!6893210))

(assert (not b!6893525))

(assert (not d!2161300))

(assert (not b!6893503))

(assert (not b!6893492))

(assert (not bm!627197))

(assert (not b!6893469))

(assert (not b!6893496))

(assert (not b!6893433))

(assert (not b!6893506))

(assert (not bm!627194))

(assert (not b!6893510))

(assert (not b!6893507))

(assert (not b!6893392))

(assert (not b!6893297))

(assert (not bm!627200))

(assert (not b!6893545))

(assert (not d!2161280))

(assert (not b!6893205))

(assert (not b!6893540))

(assert (not b!6893488))

(assert (not b!6893520))

(assert (not d!2161310))

(assert (not d!2161298))

(assert (not b!6893502))

(assert (not bm!627220))

(assert (not bm!627218))

(assert (not b!6893521))

(assert (not b!6893482))

(assert (not b!6893512))

(assert (not b!6893468))

(assert (not b!6893504))

(assert (not b!6893495))

(assert (not b!6893533))

(assert (not bm!627215))

(assert (not b!6893213))

(assert (not b!6893405))

(assert (not d!2161294))

(assert (not bm!627214))

(assert (not b!6893543))

(assert (not b!6893508))

(assert (not b!6893532))

(assert (not b!6893511))

(assert (not bm!627205))

(assert (not b!6893397))

(assert (not b!6893301))

(assert (not b!6893500))

(assert (not b!6893536))

(assert (not b!6893309))

(assert (not b!6893211))

(assert (not b!6893296))

(assert (not b!6893208))

(assert (not b!6893491))

(assert (not b!6893494))

(assert (not b!6893528))

(assert (not b!6893308))

(assert tp_is_empty!42865)

(assert (not b!6893362))

(assert (not bm!627221))

(assert (not b!6893409))

(assert (not bm!627213))

(assert (not b!6893499))

(assert (not d!2161288))

(assert (not bm!627217))

(assert (not b!6893490))

(assert (not d!2161272))

(assert (not bm!627196))

(assert (not b!6893393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

