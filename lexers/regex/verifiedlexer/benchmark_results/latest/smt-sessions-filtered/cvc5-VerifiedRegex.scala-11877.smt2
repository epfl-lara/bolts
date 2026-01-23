; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666960 () Bool)

(assert start!666960)

(declare-fun b!6948005 () Bool)

(assert (=> b!6948005 true))

(assert (=> b!6948005 true))

(declare-fun res!2834500 () Bool)

(declare-fun e!4179023 () Bool)

(assert (=> start!666960 (=> (not res!2834500) (not e!4179023))))

(declare-datatypes ((C!34270 0))(
  ( (C!34271 (val!26837 Int)) )
))
(declare-datatypes ((Regex!17000 0))(
  ( (ElementMatch!17000 (c!1288944 C!34270)) (Concat!25845 (regOne!34512 Regex!17000) (regTwo!34512 Regex!17000)) (EmptyExpr!17000) (Star!17000 (reg!17329 Regex!17000)) (EmptyLang!17000) (Union!17000 (regOne!34513 Regex!17000) (regTwo!34513 Regex!17000)) )
))
(declare-fun rInner!765 () Regex!17000)

(declare-fun validRegex!8706 (Regex!17000) Bool)

(assert (=> start!666960 (= res!2834500 (validRegex!8706 rInner!765))))

(assert (=> start!666960 e!4179023))

(declare-fun e!4179022 () Bool)

(assert (=> start!666960 e!4179022))

(declare-fun e!4179021 () Bool)

(assert (=> start!666960 e!4179021))

(declare-fun b!6948004 () Bool)

(declare-fun tp!1915258 () Bool)

(assert (=> b!6948004 (= e!4179022 tp!1915258)))

(declare-fun res!2834498 () Bool)

(assert (=> b!6948005 (=> (not res!2834498) (not e!4179023))))

(declare-fun lambda!396189 () Int)

(declare-fun Exists!3996 (Int) Bool)

(assert (=> b!6948005 (= res!2834498 (Exists!3996 lambda!396189))))

(declare-fun b!6948006 () Bool)

(declare-fun tp!1915260 () Bool)

(declare-fun tp!1915262 () Bool)

(assert (=> b!6948006 (= e!4179022 (and tp!1915260 tp!1915262))))

(declare-fun b!6948007 () Bool)

(declare-fun e!4179019 () Bool)

(declare-fun e!4179020 () Bool)

(assert (=> b!6948007 (= e!4179019 (not e!4179020))))

(declare-fun res!2834496 () Bool)

(assert (=> b!6948007 (=> res!2834496 e!4179020)))

(declare-fun lt!2477604 () Bool)

(declare-fun lt!2477603 () Bool)

(assert (=> b!6948007 (= res!2834496 (or (not lt!2477604) (not lt!2477603)))))

(declare-fun lt!2477608 () Bool)

(assert (=> b!6948007 (= lt!2477603 lt!2477608)))

(declare-fun lt!2477602 () Regex!17000)

(declare-datatypes ((List!66753 0))(
  ( (Nil!66629) (Cons!66629 (h!73077 C!34270) (t!380496 List!66753)) )
))
(declare-datatypes ((tuple2!67710 0))(
  ( (tuple2!67711 (_1!37158 List!66753) (_2!37158 List!66753)) )
))
(declare-fun lt!2477607 () tuple2!67710)

(declare-fun matchRSpec!4045 (Regex!17000 List!66753) Bool)

(assert (=> b!6948007 (= lt!2477608 (matchRSpec!4045 lt!2477602 (_2!37158 lt!2477607)))))

(declare-fun matchR!9131 (Regex!17000 List!66753) Bool)

(assert (=> b!6948007 (= lt!2477603 (matchR!9131 lt!2477602 (_2!37158 lt!2477607)))))

(declare-datatypes ((Unit!160720 0))(
  ( (Unit!160721) )
))
(declare-fun lt!2477606 () Unit!160720)

(declare-fun mainMatchTheorem!4045 (Regex!17000 List!66753) Unit!160720)

(assert (=> b!6948007 (= lt!2477606 (mainMatchTheorem!4045 lt!2477602 (_2!37158 lt!2477607)))))

(assert (=> b!6948007 (= lt!2477602 (Star!17000 rInner!765))))

(declare-fun lt!2477609 () Bool)

(assert (=> b!6948007 (= lt!2477604 lt!2477609)))

(assert (=> b!6948007 (= lt!2477609 (matchRSpec!4045 rInner!765 (_1!37158 lt!2477607)))))

(assert (=> b!6948007 (= lt!2477604 (matchR!9131 rInner!765 (_1!37158 lt!2477607)))))

(declare-fun lt!2477605 () Unit!160720)

(assert (=> b!6948007 (= lt!2477605 (mainMatchTheorem!4045 rInner!765 (_1!37158 lt!2477607)))))

(declare-fun b!6948008 () Bool)

(declare-fun tp_is_empty!43225 () Bool)

(declare-fun tp!1915259 () Bool)

(assert (=> b!6948008 (= e!4179021 (and tp_is_empty!43225 tp!1915259))))

(declare-fun b!6948009 () Bool)

(assert (=> b!6948009 (= e!4179022 tp_is_empty!43225)))

(declare-fun b!6948010 () Bool)

(assert (=> b!6948010 (= e!4179023 e!4179019)))

(declare-fun res!2834497 () Bool)

(assert (=> b!6948010 (=> (not res!2834497) (not e!4179019))))

(declare-fun s!10388 () List!66753)

(declare-fun ++!15037 (List!66753 List!66753) List!66753)

(assert (=> b!6948010 (= res!2834497 (= (++!15037 (_1!37158 lt!2477607) (_2!37158 lt!2477607)) s!10388))))

(declare-fun pickWitness!345 (Int) tuple2!67710)

(assert (=> b!6948010 (= lt!2477607 (pickWitness!345 lambda!396189))))

(declare-fun b!6948011 () Bool)

(declare-fun e!4179024 () Bool)

(assert (=> b!6948011 (= e!4179024 (and lt!2477609 lt!2477608))))

(declare-fun b!6948012 () Bool)

(declare-fun res!2834499 () Bool)

(assert (=> b!6948012 (=> (not res!2834499) (not e!4179023))))

(declare-fun nullable!6813 (Regex!17000) Bool)

(assert (=> b!6948012 (= res!2834499 (not (nullable!6813 rInner!765)))))

(declare-fun b!6948013 () Bool)

(declare-fun tp!1915263 () Bool)

(declare-fun tp!1915261 () Bool)

(assert (=> b!6948013 (= e!4179022 (and tp!1915263 tp!1915261))))

(declare-fun b!6948014 () Bool)

(assert (=> b!6948014 (= e!4179020 e!4179024)))

(declare-fun res!2834495 () Bool)

(assert (=> b!6948014 (=> (not res!2834495) (not e!4179024))))

(declare-fun isEmpty!38891 (List!66753) Bool)

(assert (=> b!6948014 (= res!2834495 (not (isEmpty!38891 (_1!37158 lt!2477607))))))

(assert (= (and start!666960 res!2834500) b!6948012))

(assert (= (and b!6948012 res!2834499) b!6948005))

(assert (= (and b!6948005 res!2834498) b!6948010))

(assert (= (and b!6948010 res!2834497) b!6948007))

(assert (= (and b!6948007 (not res!2834496)) b!6948014))

(assert (= (and b!6948014 res!2834495) b!6948011))

(assert (= (and start!666960 (is-ElementMatch!17000 rInner!765)) b!6948009))

(assert (= (and start!666960 (is-Concat!25845 rInner!765)) b!6948006))

(assert (= (and start!666960 (is-Star!17000 rInner!765)) b!6948004))

(assert (= (and start!666960 (is-Union!17000 rInner!765)) b!6948013))

(assert (= (and start!666960 (is-Cons!66629 s!10388)) b!6948008))

(declare-fun m!7651156 () Bool)

(assert (=> b!6948007 m!7651156))

(declare-fun m!7651158 () Bool)

(assert (=> b!6948007 m!7651158))

(declare-fun m!7651160 () Bool)

(assert (=> b!6948007 m!7651160))

(declare-fun m!7651162 () Bool)

(assert (=> b!6948007 m!7651162))

(declare-fun m!7651164 () Bool)

(assert (=> b!6948007 m!7651164))

(declare-fun m!7651166 () Bool)

(assert (=> b!6948007 m!7651166))

(declare-fun m!7651168 () Bool)

(assert (=> start!666960 m!7651168))

(declare-fun m!7651170 () Bool)

(assert (=> b!6948010 m!7651170))

(declare-fun m!7651172 () Bool)

(assert (=> b!6948010 m!7651172))

(declare-fun m!7651174 () Bool)

(assert (=> b!6948012 m!7651174))

(declare-fun m!7651176 () Bool)

(assert (=> b!6948005 m!7651176))

(declare-fun m!7651178 () Bool)

(assert (=> b!6948014 m!7651178))

(push 1)

(assert (not b!6948010))

(assert (not b!6948012))

(assert (not b!6948013))

(assert (not b!6948005))

(assert (not start!666960))

(assert (not b!6948006))

(assert (not b!6948014))

(assert (not b!6948007))

(assert tp_is_empty!43225)

(assert (not b!6948004))

(assert (not b!6948008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2168838 () Bool)

(declare-fun e!4179052 () Bool)

(assert (=> d!2168838 e!4179052))

(declare-fun res!2834531 () Bool)

(assert (=> d!2168838 (=> (not res!2834531) (not e!4179052))))

(declare-fun lt!2477640 () List!66753)

(declare-fun content!13119 (List!66753) (Set C!34270))

(assert (=> d!2168838 (= res!2834531 (= (content!13119 lt!2477640) (set.union (content!13119 (_1!37158 lt!2477607)) (content!13119 (_2!37158 lt!2477607)))))))

(declare-fun e!4179051 () List!66753)

(assert (=> d!2168838 (= lt!2477640 e!4179051)))

(declare-fun c!1288948 () Bool)

(assert (=> d!2168838 (= c!1288948 (is-Nil!66629 (_1!37158 lt!2477607)))))

(assert (=> d!2168838 (= (++!15037 (_1!37158 lt!2477607) (_2!37158 lt!2477607)) lt!2477640)))

(declare-fun b!6948073 () Bool)

(assert (=> b!6948073 (= e!4179051 (Cons!66629 (h!73077 (_1!37158 lt!2477607)) (++!15037 (t!380496 (_1!37158 lt!2477607)) (_2!37158 lt!2477607))))))

(declare-fun b!6948072 () Bool)

(assert (=> b!6948072 (= e!4179051 (_2!37158 lt!2477607))))

(declare-fun b!6948074 () Bool)

(declare-fun res!2834532 () Bool)

(assert (=> b!6948074 (=> (not res!2834532) (not e!4179052))))

(declare-fun size!40816 (List!66753) Int)

(assert (=> b!6948074 (= res!2834532 (= (size!40816 lt!2477640) (+ (size!40816 (_1!37158 lt!2477607)) (size!40816 (_2!37158 lt!2477607)))))))

(declare-fun b!6948075 () Bool)

(assert (=> b!6948075 (= e!4179052 (or (not (= (_2!37158 lt!2477607) Nil!66629)) (= lt!2477640 (_1!37158 lt!2477607))))))

(assert (= (and d!2168838 c!1288948) b!6948072))

(assert (= (and d!2168838 (not c!1288948)) b!6948073))

(assert (= (and d!2168838 res!2834531) b!6948074))

(assert (= (and b!6948074 res!2834532) b!6948075))

(declare-fun m!7651210 () Bool)

(assert (=> d!2168838 m!7651210))

(declare-fun m!7651212 () Bool)

(assert (=> d!2168838 m!7651212))

(declare-fun m!7651214 () Bool)

(assert (=> d!2168838 m!7651214))

(declare-fun m!7651216 () Bool)

(assert (=> b!6948073 m!7651216))

(declare-fun m!7651218 () Bool)

(assert (=> b!6948074 m!7651218))

(declare-fun m!7651220 () Bool)

(assert (=> b!6948074 m!7651220))

(declare-fun m!7651222 () Bool)

(assert (=> b!6948074 m!7651222))

(assert (=> b!6948010 d!2168838))

(declare-fun d!2168844 () Bool)

(declare-fun lt!2477643 () tuple2!67710)

(declare-fun dynLambda!26574 (Int tuple2!67710) Bool)

(assert (=> d!2168844 (dynLambda!26574 lambda!396189 lt!2477643)))

(declare-fun choose!51772 (Int) tuple2!67710)

(assert (=> d!2168844 (= lt!2477643 (choose!51772 lambda!396189))))

(assert (=> d!2168844 (Exists!3996 lambda!396189)))

(assert (=> d!2168844 (= (pickWitness!345 lambda!396189) lt!2477643)))

(declare-fun b_lambda!260361 () Bool)

(assert (=> (not b_lambda!260361) (not d!2168844)))

(declare-fun bs!1857502 () Bool)

(assert (= bs!1857502 d!2168844))

(declare-fun m!7651224 () Bool)

(assert (=> bs!1857502 m!7651224))

(declare-fun m!7651226 () Bool)

(assert (=> bs!1857502 m!7651226))

(assert (=> bs!1857502 m!7651176))

(assert (=> b!6948010 d!2168844))

(declare-fun d!2168846 () Bool)

(declare-fun choose!51773 (Int) Bool)

(assert (=> d!2168846 (= (Exists!3996 lambda!396189) (choose!51773 lambda!396189))))

(declare-fun bs!1857503 () Bool)

(assert (= bs!1857503 d!2168846))

(declare-fun m!7651228 () Bool)

(assert (=> bs!1857503 m!7651228))

(assert (=> b!6948005 d!2168846))

(declare-fun b!6948094 () Bool)

(declare-fun e!4179067 () Bool)

(declare-fun call!631093 () Bool)

(assert (=> b!6948094 (= e!4179067 call!631093)))

(declare-fun bm!631087 () Bool)

(declare-fun call!631092 () Bool)

(declare-fun call!631094 () Bool)

(assert (=> bm!631087 (= call!631092 call!631094)))

(declare-fun b!6948095 () Bool)

(declare-fun res!2834543 () Bool)

(declare-fun e!4179070 () Bool)

(assert (=> b!6948095 (=> res!2834543 e!4179070)))

(assert (=> b!6948095 (= res!2834543 (not (is-Concat!25845 rInner!765)))))

(declare-fun e!4179069 () Bool)

(assert (=> b!6948095 (= e!4179069 e!4179070)))

(declare-fun b!6948096 () Bool)

(declare-fun e!4179072 () Bool)

(assert (=> b!6948096 (= e!4179070 e!4179072)))

(declare-fun res!2834545 () Bool)

(assert (=> b!6948096 (=> (not res!2834545) (not e!4179072))))

(assert (=> b!6948096 (= res!2834545 call!631093)))

(declare-fun d!2168848 () Bool)

(declare-fun res!2834544 () Bool)

(declare-fun e!4179068 () Bool)

(assert (=> d!2168848 (=> res!2834544 e!4179068)))

(assert (=> d!2168848 (= res!2834544 (is-ElementMatch!17000 rInner!765))))

(assert (=> d!2168848 (= (validRegex!8706 rInner!765) e!4179068)))

(declare-fun b!6948097 () Bool)

(declare-fun e!4179073 () Bool)

(declare-fun e!4179071 () Bool)

(assert (=> b!6948097 (= e!4179073 e!4179071)))

(declare-fun res!2834546 () Bool)

(assert (=> b!6948097 (= res!2834546 (not (nullable!6813 (reg!17329 rInner!765))))))

(assert (=> b!6948097 (=> (not res!2834546) (not e!4179071))))

(declare-fun bm!631088 () Bool)

(declare-fun c!1288954 () Bool)

(assert (=> bm!631088 (= call!631093 (validRegex!8706 (ite c!1288954 (regTwo!34513 rInner!765) (regOne!34512 rInner!765))))))

(declare-fun b!6948098 () Bool)

(declare-fun res!2834547 () Bool)

(assert (=> b!6948098 (=> (not res!2834547) (not e!4179067))))

(assert (=> b!6948098 (= res!2834547 call!631092)))

(assert (=> b!6948098 (= e!4179069 e!4179067)))

(declare-fun b!6948099 () Bool)

(assert (=> b!6948099 (= e!4179072 call!631092)))

(declare-fun c!1288953 () Bool)

(declare-fun bm!631089 () Bool)

(assert (=> bm!631089 (= call!631094 (validRegex!8706 (ite c!1288953 (reg!17329 rInner!765) (ite c!1288954 (regOne!34513 rInner!765) (regTwo!34512 rInner!765)))))))

(declare-fun b!6948100 () Bool)

(assert (=> b!6948100 (= e!4179073 e!4179069)))

(assert (=> b!6948100 (= c!1288954 (is-Union!17000 rInner!765))))

(declare-fun b!6948101 () Bool)

(assert (=> b!6948101 (= e!4179068 e!4179073)))

(assert (=> b!6948101 (= c!1288953 (is-Star!17000 rInner!765))))

(declare-fun b!6948102 () Bool)

(assert (=> b!6948102 (= e!4179071 call!631094)))

(assert (= (and d!2168848 (not res!2834544)) b!6948101))

(assert (= (and b!6948101 c!1288953) b!6948097))

(assert (= (and b!6948101 (not c!1288953)) b!6948100))

(assert (= (and b!6948097 res!2834546) b!6948102))

(assert (= (and b!6948100 c!1288954) b!6948098))

(assert (= (and b!6948100 (not c!1288954)) b!6948095))

(assert (= (and b!6948098 res!2834547) b!6948094))

(assert (= (and b!6948095 (not res!2834543)) b!6948096))

(assert (= (and b!6948096 res!2834545) b!6948099))

(assert (= (or b!6948098 b!6948099) bm!631087))

(assert (= (or b!6948094 b!6948096) bm!631088))

(assert (= (or b!6948102 bm!631087) bm!631089))

(declare-fun m!7651230 () Bool)

(assert (=> b!6948097 m!7651230))

(declare-fun m!7651232 () Bool)

(assert (=> bm!631088 m!7651232))

(declare-fun m!7651234 () Bool)

(assert (=> bm!631089 m!7651234))

(assert (=> start!666960 d!2168848))

(declare-fun d!2168850 () Bool)

(assert (=> d!2168850 (= (matchR!9131 lt!2477602 (_2!37158 lt!2477607)) (matchRSpec!4045 lt!2477602 (_2!37158 lt!2477607)))))

(declare-fun lt!2477648 () Unit!160720)

(declare-fun choose!51774 (Regex!17000 List!66753) Unit!160720)

(assert (=> d!2168850 (= lt!2477648 (choose!51774 lt!2477602 (_2!37158 lt!2477607)))))

(assert (=> d!2168850 (validRegex!8706 lt!2477602)))

(assert (=> d!2168850 (= (mainMatchTheorem!4045 lt!2477602 (_2!37158 lt!2477607)) lt!2477648)))

(declare-fun bs!1857504 () Bool)

(assert (= bs!1857504 d!2168850))

(assert (=> bs!1857504 m!7651156))

(assert (=> bs!1857504 m!7651158))

(declare-fun m!7651236 () Bool)

(assert (=> bs!1857504 m!7651236))

(declare-fun m!7651238 () Bool)

(assert (=> bs!1857504 m!7651238))

(assert (=> b!6948007 d!2168850))

(declare-fun b!6948173 () Bool)

(declare-fun e!4179113 () Bool)

(declare-fun e!4179115 () Bool)

(assert (=> b!6948173 (= e!4179113 e!4179115)))

(declare-fun res!2834593 () Bool)

(assert (=> b!6948173 (=> (not res!2834593) (not e!4179115))))

(declare-fun lt!2477652 () Bool)

(assert (=> b!6948173 (= res!2834593 (not lt!2477652))))

(declare-fun b!6948174 () Bool)

(declare-fun e!4179114 () Bool)

(assert (=> b!6948174 (= e!4179115 e!4179114)))

(declare-fun res!2834591 () Bool)

(assert (=> b!6948174 (=> res!2834591 e!4179114)))

(declare-fun call!631100 () Bool)

(assert (=> b!6948174 (= res!2834591 call!631100)))

(declare-fun b!6948175 () Bool)

(declare-fun res!2834590 () Bool)

(assert (=> b!6948175 (=> res!2834590 e!4179113)))

(assert (=> b!6948175 (= res!2834590 (not (is-ElementMatch!17000 lt!2477602)))))

(declare-fun e!4179109 () Bool)

(assert (=> b!6948175 (= e!4179109 e!4179113)))

(declare-fun b!6948176 () Bool)

(assert (=> b!6948176 (= e!4179109 (not lt!2477652))))

(declare-fun d!2168852 () Bool)

(declare-fun e!4179111 () Bool)

(assert (=> d!2168852 e!4179111))

(declare-fun c!1288972 () Bool)

(assert (=> d!2168852 (= c!1288972 (is-EmptyExpr!17000 lt!2477602))))

(declare-fun e!4179112 () Bool)

(assert (=> d!2168852 (= lt!2477652 e!4179112)))

(declare-fun c!1288971 () Bool)

(assert (=> d!2168852 (= c!1288971 (isEmpty!38891 (_2!37158 lt!2477607)))))

(assert (=> d!2168852 (validRegex!8706 lt!2477602)))

(assert (=> d!2168852 (= (matchR!9131 lt!2477602 (_2!37158 lt!2477607)) lt!2477652)))

(declare-fun b!6948177 () Bool)

(declare-fun res!2834595 () Bool)

(declare-fun e!4179110 () Bool)

(assert (=> b!6948177 (=> (not res!2834595) (not e!4179110))))

(assert (=> b!6948177 (= res!2834595 (not call!631100))))

(declare-fun b!6948178 () Bool)

(assert (=> b!6948178 (= e!4179111 e!4179109)))

(declare-fun c!1288970 () Bool)

(assert (=> b!6948178 (= c!1288970 (is-EmptyLang!17000 lt!2477602))))

(declare-fun b!6948179 () Bool)

(declare-fun head!13926 (List!66753) C!34270)

(assert (=> b!6948179 (= e!4179110 (= (head!13926 (_2!37158 lt!2477607)) (c!1288944 lt!2477602)))))

(declare-fun bm!631095 () Bool)

(assert (=> bm!631095 (= call!631100 (isEmpty!38891 (_2!37158 lt!2477607)))))

(declare-fun b!6948180 () Bool)

(assert (=> b!6948180 (= e!4179114 (not (= (head!13926 (_2!37158 lt!2477607)) (c!1288944 lt!2477602))))))

(declare-fun b!6948181 () Bool)

(declare-fun derivativeStep!5473 (Regex!17000 C!34270) Regex!17000)

(declare-fun tail!12978 (List!66753) List!66753)

(assert (=> b!6948181 (= e!4179112 (matchR!9131 (derivativeStep!5473 lt!2477602 (head!13926 (_2!37158 lt!2477607))) (tail!12978 (_2!37158 lt!2477607))))))

(declare-fun b!6948182 () Bool)

(declare-fun res!2834594 () Bool)

(assert (=> b!6948182 (=> (not res!2834594) (not e!4179110))))

(assert (=> b!6948182 (= res!2834594 (isEmpty!38891 (tail!12978 (_2!37158 lt!2477607))))))

(declare-fun b!6948183 () Bool)

(assert (=> b!6948183 (= e!4179111 (= lt!2477652 call!631100))))

(declare-fun b!6948184 () Bool)

(declare-fun res!2834592 () Bool)

(assert (=> b!6948184 (=> res!2834592 e!4179114)))

(assert (=> b!6948184 (= res!2834592 (not (isEmpty!38891 (tail!12978 (_2!37158 lt!2477607)))))))

(declare-fun b!6948185 () Bool)

(declare-fun res!2834588 () Bool)

(assert (=> b!6948185 (=> res!2834588 e!4179113)))

(assert (=> b!6948185 (= res!2834588 e!4179110)))

(declare-fun res!2834589 () Bool)

(assert (=> b!6948185 (=> (not res!2834589) (not e!4179110))))

(assert (=> b!6948185 (= res!2834589 lt!2477652)))

(declare-fun b!6948186 () Bool)

(assert (=> b!6948186 (= e!4179112 (nullable!6813 lt!2477602))))

(assert (= (and d!2168852 c!1288971) b!6948186))

(assert (= (and d!2168852 (not c!1288971)) b!6948181))

(assert (= (and d!2168852 c!1288972) b!6948183))

(assert (= (and d!2168852 (not c!1288972)) b!6948178))

(assert (= (and b!6948178 c!1288970) b!6948176))

(assert (= (and b!6948178 (not c!1288970)) b!6948175))

(assert (= (and b!6948175 (not res!2834590)) b!6948185))

(assert (= (and b!6948185 res!2834589) b!6948177))

(assert (= (and b!6948177 res!2834595) b!6948182))

(assert (= (and b!6948182 res!2834594) b!6948179))

(assert (= (and b!6948185 (not res!2834588)) b!6948173))

(assert (= (and b!6948173 res!2834593) b!6948174))

(assert (= (and b!6948174 (not res!2834591)) b!6948184))

(assert (= (and b!6948184 (not res!2834592)) b!6948180))

(assert (= (or b!6948183 b!6948174 b!6948177) bm!631095))

(declare-fun m!7651248 () Bool)

(assert (=> b!6948182 m!7651248))

(assert (=> b!6948182 m!7651248))

(declare-fun m!7651252 () Bool)

(assert (=> b!6948182 m!7651252))

(declare-fun m!7651254 () Bool)

(assert (=> d!2168852 m!7651254))

(assert (=> d!2168852 m!7651238))

(assert (=> b!6948184 m!7651248))

(assert (=> b!6948184 m!7651248))

(assert (=> b!6948184 m!7651252))

(declare-fun m!7651256 () Bool)

(assert (=> b!6948181 m!7651256))

(assert (=> b!6948181 m!7651256))

(declare-fun m!7651258 () Bool)

(assert (=> b!6948181 m!7651258))

(assert (=> b!6948181 m!7651248))

(assert (=> b!6948181 m!7651258))

(assert (=> b!6948181 m!7651248))

(declare-fun m!7651260 () Bool)

(assert (=> b!6948181 m!7651260))

(declare-fun m!7651262 () Bool)

(assert (=> b!6948186 m!7651262))

(assert (=> b!6948179 m!7651256))

(assert (=> bm!631095 m!7651254))

(assert (=> b!6948180 m!7651256))

(assert (=> b!6948007 d!2168852))

(declare-fun b!6948187 () Bool)

(declare-fun e!4179120 () Bool)

(declare-fun e!4179122 () Bool)

(assert (=> b!6948187 (= e!4179120 e!4179122)))

(declare-fun res!2834601 () Bool)

(assert (=> b!6948187 (=> (not res!2834601) (not e!4179122))))

(declare-fun lt!2477653 () Bool)

(assert (=> b!6948187 (= res!2834601 (not lt!2477653))))

(declare-fun b!6948188 () Bool)

(declare-fun e!4179121 () Bool)

(assert (=> b!6948188 (= e!4179122 e!4179121)))

(declare-fun res!2834599 () Bool)

(assert (=> b!6948188 (=> res!2834599 e!4179121)))

(declare-fun call!631101 () Bool)

(assert (=> b!6948188 (= res!2834599 call!631101)))

(declare-fun b!6948189 () Bool)

(declare-fun res!2834598 () Bool)

(assert (=> b!6948189 (=> res!2834598 e!4179120)))

(assert (=> b!6948189 (= res!2834598 (not (is-ElementMatch!17000 rInner!765)))))

(declare-fun e!4179116 () Bool)

(assert (=> b!6948189 (= e!4179116 e!4179120)))

(declare-fun b!6948190 () Bool)

(assert (=> b!6948190 (= e!4179116 (not lt!2477653))))

(declare-fun d!2168856 () Bool)

(declare-fun e!4179118 () Bool)

(assert (=> d!2168856 e!4179118))

(declare-fun c!1288975 () Bool)

(assert (=> d!2168856 (= c!1288975 (is-EmptyExpr!17000 rInner!765))))

(declare-fun e!4179119 () Bool)

(assert (=> d!2168856 (= lt!2477653 e!4179119)))

(declare-fun c!1288974 () Bool)

(assert (=> d!2168856 (= c!1288974 (isEmpty!38891 (_1!37158 lt!2477607)))))

(assert (=> d!2168856 (validRegex!8706 rInner!765)))

(assert (=> d!2168856 (= (matchR!9131 rInner!765 (_1!37158 lt!2477607)) lt!2477653)))

(declare-fun b!6948191 () Bool)

(declare-fun res!2834603 () Bool)

(declare-fun e!4179117 () Bool)

(assert (=> b!6948191 (=> (not res!2834603) (not e!4179117))))

(assert (=> b!6948191 (= res!2834603 (not call!631101))))

(declare-fun b!6948192 () Bool)

(assert (=> b!6948192 (= e!4179118 e!4179116)))

(declare-fun c!1288973 () Bool)

(assert (=> b!6948192 (= c!1288973 (is-EmptyLang!17000 rInner!765))))

(declare-fun b!6948193 () Bool)

(assert (=> b!6948193 (= e!4179117 (= (head!13926 (_1!37158 lt!2477607)) (c!1288944 rInner!765)))))

(declare-fun bm!631096 () Bool)

(assert (=> bm!631096 (= call!631101 (isEmpty!38891 (_1!37158 lt!2477607)))))

(declare-fun b!6948194 () Bool)

(assert (=> b!6948194 (= e!4179121 (not (= (head!13926 (_1!37158 lt!2477607)) (c!1288944 rInner!765))))))

(declare-fun b!6948195 () Bool)

(assert (=> b!6948195 (= e!4179119 (matchR!9131 (derivativeStep!5473 rInner!765 (head!13926 (_1!37158 lt!2477607))) (tail!12978 (_1!37158 lt!2477607))))))

(declare-fun b!6948196 () Bool)

(declare-fun res!2834602 () Bool)

(assert (=> b!6948196 (=> (not res!2834602) (not e!4179117))))

(assert (=> b!6948196 (= res!2834602 (isEmpty!38891 (tail!12978 (_1!37158 lt!2477607))))))

(declare-fun b!6948197 () Bool)

(assert (=> b!6948197 (= e!4179118 (= lt!2477653 call!631101))))

(declare-fun b!6948198 () Bool)

(declare-fun res!2834600 () Bool)

(assert (=> b!6948198 (=> res!2834600 e!4179121)))

(assert (=> b!6948198 (= res!2834600 (not (isEmpty!38891 (tail!12978 (_1!37158 lt!2477607)))))))

(declare-fun b!6948199 () Bool)

(declare-fun res!2834596 () Bool)

(assert (=> b!6948199 (=> res!2834596 e!4179120)))

(assert (=> b!6948199 (= res!2834596 e!4179117)))

(declare-fun res!2834597 () Bool)

(assert (=> b!6948199 (=> (not res!2834597) (not e!4179117))))

(assert (=> b!6948199 (= res!2834597 lt!2477653)))

(declare-fun b!6948200 () Bool)

(assert (=> b!6948200 (= e!4179119 (nullable!6813 rInner!765))))

(assert (= (and d!2168856 c!1288974) b!6948200))

(assert (= (and d!2168856 (not c!1288974)) b!6948195))

(assert (= (and d!2168856 c!1288975) b!6948197))

(assert (= (and d!2168856 (not c!1288975)) b!6948192))

(assert (= (and b!6948192 c!1288973) b!6948190))

(assert (= (and b!6948192 (not c!1288973)) b!6948189))

(assert (= (and b!6948189 (not res!2834598)) b!6948199))

(assert (= (and b!6948199 res!2834597) b!6948191))

(assert (= (and b!6948191 res!2834603) b!6948196))

(assert (= (and b!6948196 res!2834602) b!6948193))

(assert (= (and b!6948199 (not res!2834596)) b!6948187))

(assert (= (and b!6948187 res!2834601) b!6948188))

(assert (= (and b!6948188 (not res!2834599)) b!6948198))

(assert (= (and b!6948198 (not res!2834600)) b!6948194))

(assert (= (or b!6948197 b!6948188 b!6948191) bm!631096))

(declare-fun m!7651264 () Bool)

(assert (=> b!6948196 m!7651264))

(assert (=> b!6948196 m!7651264))

(declare-fun m!7651266 () Bool)

(assert (=> b!6948196 m!7651266))

(assert (=> d!2168856 m!7651178))

(assert (=> d!2168856 m!7651168))

(assert (=> b!6948198 m!7651264))

(assert (=> b!6948198 m!7651264))

(assert (=> b!6948198 m!7651266))

(declare-fun m!7651268 () Bool)

(assert (=> b!6948195 m!7651268))

(assert (=> b!6948195 m!7651268))

(declare-fun m!7651270 () Bool)

(assert (=> b!6948195 m!7651270))

(assert (=> b!6948195 m!7651264))

(assert (=> b!6948195 m!7651270))

(assert (=> b!6948195 m!7651264))

(declare-fun m!7651272 () Bool)

(assert (=> b!6948195 m!7651272))

(assert (=> b!6948200 m!7651174))

(assert (=> b!6948193 m!7651268))

(assert (=> bm!631096 m!7651178))

(assert (=> b!6948194 m!7651268))

(assert (=> b!6948007 d!2168856))

(declare-fun d!2168858 () Bool)

(assert (=> d!2168858 (= (matchR!9131 rInner!765 (_1!37158 lt!2477607)) (matchRSpec!4045 rInner!765 (_1!37158 lt!2477607)))))

(declare-fun lt!2477654 () Unit!160720)

(assert (=> d!2168858 (= lt!2477654 (choose!51774 rInner!765 (_1!37158 lt!2477607)))))

(assert (=> d!2168858 (validRegex!8706 rInner!765)))

(assert (=> d!2168858 (= (mainMatchTheorem!4045 rInner!765 (_1!37158 lt!2477607)) lt!2477654)))

(declare-fun bs!1857505 () Bool)

(assert (= bs!1857505 d!2168858))

(assert (=> bs!1857505 m!7651164))

(assert (=> bs!1857505 m!7651166))

(declare-fun m!7651274 () Bool)

(assert (=> bs!1857505 m!7651274))

(assert (=> bs!1857505 m!7651168))

(assert (=> b!6948007 d!2168858))

(declare-fun bs!1857506 () Bool)

(declare-fun b!6948271 () Bool)

(assert (= bs!1857506 (and b!6948271 b!6948005)))

(declare-fun lambda!396201 () Int)

(assert (=> bs!1857506 (not (= lambda!396201 lambda!396189))))

(assert (=> b!6948271 true))

(assert (=> b!6948271 true))

(declare-fun bs!1857507 () Bool)

(declare-fun b!6948263 () Bool)

(assert (= bs!1857507 (and b!6948263 b!6948005)))

(declare-fun lambda!396202 () Int)

(assert (=> bs!1857507 (not (= lambda!396202 lambda!396189))))

(declare-fun bs!1857508 () Bool)

(assert (= bs!1857508 (and b!6948263 b!6948271)))

(assert (=> bs!1857508 (not (= lambda!396202 lambda!396201))))

(assert (=> b!6948263 true))

(assert (=> b!6948263 true))

(declare-fun b!6948261 () Bool)

(declare-fun e!4179158 () Bool)

(declare-fun call!631107 () Bool)

(assert (=> b!6948261 (= e!4179158 call!631107)))

(declare-fun b!6948262 () Bool)

(declare-fun e!4179157 () Bool)

(assert (=> b!6948262 (= e!4179157 (= (_1!37158 lt!2477607) (Cons!66629 (c!1288944 rInner!765) Nil!66629)))))

(declare-fun b!6948264 () Bool)

(declare-fun e!4179161 () Bool)

(assert (=> b!6948264 (= e!4179158 e!4179161)))

(declare-fun res!2834632 () Bool)

(assert (=> b!6948264 (= res!2834632 (not (is-EmptyLang!17000 rInner!765)))))

(assert (=> b!6948264 (=> (not res!2834632) (not e!4179161))))

(declare-fun b!6948265 () Bool)

(declare-fun res!2834633 () Bool)

(declare-fun e!4179162 () Bool)

(assert (=> b!6948265 (=> res!2834633 e!4179162)))

(assert (=> b!6948265 (= res!2834633 call!631107)))

(declare-fun e!4179160 () Bool)

(assert (=> b!6948265 (= e!4179160 e!4179162)))

(declare-fun b!6948266 () Bool)

(declare-fun e!4179159 () Bool)

(assert (=> b!6948266 (= e!4179159 e!4179160)))

(declare-fun c!1288994 () Bool)

(assert (=> b!6948266 (= c!1288994 (is-Star!17000 rInner!765))))

(declare-fun bm!631101 () Bool)

(assert (=> bm!631101 (= call!631107 (isEmpty!38891 (_1!37158 lt!2477607)))))

(declare-fun b!6948267 () Bool)

(declare-fun e!4179163 () Bool)

(assert (=> b!6948267 (= e!4179163 (matchRSpec!4045 (regTwo!34513 rInner!765) (_1!37158 lt!2477607)))))

(declare-fun b!6948268 () Bool)

(declare-fun c!1288992 () Bool)

(assert (=> b!6948268 (= c!1288992 (is-Union!17000 rInner!765))))

(assert (=> b!6948268 (= e!4179157 e!4179159)))

(declare-fun bm!631102 () Bool)

(declare-fun call!631106 () Bool)

(assert (=> bm!631102 (= call!631106 (Exists!3996 (ite c!1288994 lambda!396201 lambda!396202)))))

(declare-fun b!6948269 () Bool)

(declare-fun c!1288993 () Bool)

(assert (=> b!6948269 (= c!1288993 (is-ElementMatch!17000 rInner!765))))

(assert (=> b!6948269 (= e!4179161 e!4179157)))

(declare-fun b!6948270 () Bool)

(assert (=> b!6948270 (= e!4179159 e!4179163)))

(declare-fun res!2834634 () Bool)

(assert (=> b!6948270 (= res!2834634 (matchRSpec!4045 (regOne!34513 rInner!765) (_1!37158 lt!2477607)))))

(assert (=> b!6948270 (=> res!2834634 e!4179163)))

(assert (=> b!6948271 (= e!4179162 call!631106)))

(assert (=> b!6948263 (= e!4179160 call!631106)))

(declare-fun d!2168860 () Bool)

(declare-fun c!1288995 () Bool)

(assert (=> d!2168860 (= c!1288995 (is-EmptyExpr!17000 rInner!765))))

(assert (=> d!2168860 (= (matchRSpec!4045 rInner!765 (_1!37158 lt!2477607)) e!4179158)))

(assert (= (and d!2168860 c!1288995) b!6948261))

(assert (= (and d!2168860 (not c!1288995)) b!6948264))

(assert (= (and b!6948264 res!2834632) b!6948269))

(assert (= (and b!6948269 c!1288993) b!6948262))

(assert (= (and b!6948269 (not c!1288993)) b!6948268))

(assert (= (and b!6948268 c!1288992) b!6948270))

(assert (= (and b!6948268 (not c!1288992)) b!6948266))

(assert (= (and b!6948270 (not res!2834634)) b!6948267))

(assert (= (and b!6948266 c!1288994) b!6948265))

(assert (= (and b!6948266 (not c!1288994)) b!6948263))

(assert (= (and b!6948265 (not res!2834633)) b!6948271))

(assert (= (or b!6948271 b!6948263) bm!631102))

(assert (= (or b!6948261 b!6948265) bm!631101))

(assert (=> bm!631101 m!7651178))

(declare-fun m!7651276 () Bool)

(assert (=> b!6948267 m!7651276))

(declare-fun m!7651278 () Bool)

(assert (=> bm!631102 m!7651278))

(declare-fun m!7651280 () Bool)

(assert (=> b!6948270 m!7651280))

(assert (=> b!6948007 d!2168860))

(declare-fun bs!1857509 () Bool)

(declare-fun b!6948282 () Bool)

(assert (= bs!1857509 (and b!6948282 b!6948005)))

(declare-fun lambda!396203 () Int)

(assert (=> bs!1857509 (not (= lambda!396203 lambda!396189))))

(declare-fun bs!1857510 () Bool)

(assert (= bs!1857510 (and b!6948282 b!6948271)))

(assert (=> bs!1857510 (= (and (= (_2!37158 lt!2477607) (_1!37158 lt!2477607)) (= (reg!17329 lt!2477602) (reg!17329 rInner!765)) (= lt!2477602 rInner!765)) (= lambda!396203 lambda!396201))))

(declare-fun bs!1857511 () Bool)

(assert (= bs!1857511 (and b!6948282 b!6948263)))

(assert (=> bs!1857511 (not (= lambda!396203 lambda!396202))))

(assert (=> b!6948282 true))

(assert (=> b!6948282 true))

(declare-fun bs!1857512 () Bool)

(declare-fun b!6948274 () Bool)

(assert (= bs!1857512 (and b!6948274 b!6948005)))

(declare-fun lambda!396206 () Int)

(assert (=> bs!1857512 (not (= lambda!396206 lambda!396189))))

(declare-fun bs!1857513 () Bool)

(assert (= bs!1857513 (and b!6948274 b!6948271)))

(assert (=> bs!1857513 (not (= lambda!396206 lambda!396201))))

(declare-fun bs!1857514 () Bool)

(assert (= bs!1857514 (and b!6948274 b!6948263)))

(assert (=> bs!1857514 (= (and (= (_2!37158 lt!2477607) (_1!37158 lt!2477607)) (= (regOne!34512 lt!2477602) (regOne!34512 rInner!765)) (= (regTwo!34512 lt!2477602) (regTwo!34512 rInner!765))) (= lambda!396206 lambda!396202))))

(declare-fun bs!1857515 () Bool)

(assert (= bs!1857515 (and b!6948274 b!6948282)))

(assert (=> bs!1857515 (not (= lambda!396206 lambda!396203))))

(assert (=> b!6948274 true))

(assert (=> b!6948274 true))

(declare-fun b!6948272 () Bool)

(declare-fun e!4179165 () Bool)

(declare-fun call!631109 () Bool)

(assert (=> b!6948272 (= e!4179165 call!631109)))

(declare-fun b!6948273 () Bool)

(declare-fun e!4179164 () Bool)

(assert (=> b!6948273 (= e!4179164 (= (_2!37158 lt!2477607) (Cons!66629 (c!1288944 lt!2477602) Nil!66629)))))

(declare-fun b!6948275 () Bool)

(declare-fun e!4179168 () Bool)

(assert (=> b!6948275 (= e!4179165 e!4179168)))

(declare-fun res!2834635 () Bool)

(assert (=> b!6948275 (= res!2834635 (not (is-EmptyLang!17000 lt!2477602)))))

(assert (=> b!6948275 (=> (not res!2834635) (not e!4179168))))

(declare-fun b!6948276 () Bool)

(declare-fun res!2834636 () Bool)

(declare-fun e!4179169 () Bool)

(assert (=> b!6948276 (=> res!2834636 e!4179169)))

(assert (=> b!6948276 (= res!2834636 call!631109)))

(declare-fun e!4179167 () Bool)

(assert (=> b!6948276 (= e!4179167 e!4179169)))

(declare-fun b!6948277 () Bool)

(declare-fun e!4179166 () Bool)

(assert (=> b!6948277 (= e!4179166 e!4179167)))

(declare-fun c!1288998 () Bool)

(assert (=> b!6948277 (= c!1288998 (is-Star!17000 lt!2477602))))

(declare-fun bm!631103 () Bool)

(assert (=> bm!631103 (= call!631109 (isEmpty!38891 (_2!37158 lt!2477607)))))

(declare-fun b!6948278 () Bool)

(declare-fun e!4179170 () Bool)

(assert (=> b!6948278 (= e!4179170 (matchRSpec!4045 (regTwo!34513 lt!2477602) (_2!37158 lt!2477607)))))

(declare-fun b!6948279 () Bool)

(declare-fun c!1288996 () Bool)

(assert (=> b!6948279 (= c!1288996 (is-Union!17000 lt!2477602))))

(assert (=> b!6948279 (= e!4179164 e!4179166)))

(declare-fun call!631108 () Bool)

(declare-fun bm!631104 () Bool)

(assert (=> bm!631104 (= call!631108 (Exists!3996 (ite c!1288998 lambda!396203 lambda!396206)))))

(declare-fun b!6948280 () Bool)

(declare-fun c!1288997 () Bool)

(assert (=> b!6948280 (= c!1288997 (is-ElementMatch!17000 lt!2477602))))

(assert (=> b!6948280 (= e!4179168 e!4179164)))

(declare-fun b!6948281 () Bool)

(assert (=> b!6948281 (= e!4179166 e!4179170)))

(declare-fun res!2834637 () Bool)

(assert (=> b!6948281 (= res!2834637 (matchRSpec!4045 (regOne!34513 lt!2477602) (_2!37158 lt!2477607)))))

(assert (=> b!6948281 (=> res!2834637 e!4179170)))

(assert (=> b!6948282 (= e!4179169 call!631108)))

(assert (=> b!6948274 (= e!4179167 call!631108)))

(declare-fun d!2168862 () Bool)

(declare-fun c!1288999 () Bool)

(assert (=> d!2168862 (= c!1288999 (is-EmptyExpr!17000 lt!2477602))))

(assert (=> d!2168862 (= (matchRSpec!4045 lt!2477602 (_2!37158 lt!2477607)) e!4179165)))

(assert (= (and d!2168862 c!1288999) b!6948272))

(assert (= (and d!2168862 (not c!1288999)) b!6948275))

(assert (= (and b!6948275 res!2834635) b!6948280))

(assert (= (and b!6948280 c!1288997) b!6948273))

(assert (= (and b!6948280 (not c!1288997)) b!6948279))

(assert (= (and b!6948279 c!1288996) b!6948281))

(assert (= (and b!6948279 (not c!1288996)) b!6948277))

(assert (= (and b!6948281 (not res!2834637)) b!6948278))

(assert (= (and b!6948277 c!1288998) b!6948276))

(assert (= (and b!6948277 (not c!1288998)) b!6948274))

(assert (= (and b!6948276 (not res!2834636)) b!6948282))

(assert (= (or b!6948282 b!6948274) bm!631104))

(assert (= (or b!6948272 b!6948276) bm!631103))

(assert (=> bm!631103 m!7651254))

(declare-fun m!7651282 () Bool)

(assert (=> b!6948278 m!7651282))

(declare-fun m!7651284 () Bool)

(assert (=> bm!631104 m!7651284))

(declare-fun m!7651286 () Bool)

(assert (=> b!6948281 m!7651286))

(assert (=> b!6948007 d!2168862))

(declare-fun d!2168864 () Bool)

(declare-fun nullableFct!2548 (Regex!17000) Bool)

(assert (=> d!2168864 (= (nullable!6813 rInner!765) (nullableFct!2548 rInner!765))))

(declare-fun bs!1857516 () Bool)

(assert (= bs!1857516 d!2168864))

(declare-fun m!7651288 () Bool)

(assert (=> bs!1857516 m!7651288))

(assert (=> b!6948012 d!2168864))

(declare-fun d!2168866 () Bool)

(assert (=> d!2168866 (= (isEmpty!38891 (_1!37158 lt!2477607)) (is-Nil!66629 (_1!37158 lt!2477607)))))

(assert (=> b!6948014 d!2168866))

(declare-fun b!6948300 () Bool)

(declare-fun e!4179175 () Bool)

(declare-fun tp!1915292 () Bool)

(declare-fun tp!1915294 () Bool)

(assert (=> b!6948300 (= e!4179175 (and tp!1915292 tp!1915294))))

(declare-fun b!6948297 () Bool)

(assert (=> b!6948297 (= e!4179175 tp_is_empty!43225)))

(declare-fun b!6948298 () Bool)

(declare-fun tp!1915293 () Bool)

(declare-fun tp!1915295 () Bool)

(assert (=> b!6948298 (= e!4179175 (and tp!1915293 tp!1915295))))

(declare-fun b!6948299 () Bool)

(declare-fun tp!1915296 () Bool)

(assert (=> b!6948299 (= e!4179175 tp!1915296)))

(assert (=> b!6948004 (= tp!1915258 e!4179175)))

(assert (= (and b!6948004 (is-ElementMatch!17000 (reg!17329 rInner!765))) b!6948297))

(assert (= (and b!6948004 (is-Concat!25845 (reg!17329 rInner!765))) b!6948298))

(assert (= (and b!6948004 (is-Star!17000 (reg!17329 rInner!765))) b!6948299))

(assert (= (and b!6948004 (is-Union!17000 (reg!17329 rInner!765))) b!6948300))

(declare-fun b!6948304 () Bool)

(declare-fun e!4179176 () Bool)

(declare-fun tp!1915297 () Bool)

(declare-fun tp!1915299 () Bool)

(assert (=> b!6948304 (= e!4179176 (and tp!1915297 tp!1915299))))

(declare-fun b!6948301 () Bool)

(assert (=> b!6948301 (= e!4179176 tp_is_empty!43225)))

(declare-fun b!6948302 () Bool)

(declare-fun tp!1915298 () Bool)

(declare-fun tp!1915300 () Bool)

(assert (=> b!6948302 (= e!4179176 (and tp!1915298 tp!1915300))))

(declare-fun b!6948303 () Bool)

(declare-fun tp!1915301 () Bool)

(assert (=> b!6948303 (= e!4179176 tp!1915301)))

(assert (=> b!6948006 (= tp!1915260 e!4179176)))

(assert (= (and b!6948006 (is-ElementMatch!17000 (regOne!34512 rInner!765))) b!6948301))

(assert (= (and b!6948006 (is-Concat!25845 (regOne!34512 rInner!765))) b!6948302))

(assert (= (and b!6948006 (is-Star!17000 (regOne!34512 rInner!765))) b!6948303))

(assert (= (and b!6948006 (is-Union!17000 (regOne!34512 rInner!765))) b!6948304))

(declare-fun b!6948308 () Bool)

(declare-fun e!4179177 () Bool)

(declare-fun tp!1915302 () Bool)

(declare-fun tp!1915304 () Bool)

(assert (=> b!6948308 (= e!4179177 (and tp!1915302 tp!1915304))))

(declare-fun b!6948305 () Bool)

(assert (=> b!6948305 (= e!4179177 tp_is_empty!43225)))

(declare-fun b!6948306 () Bool)

(declare-fun tp!1915303 () Bool)

(declare-fun tp!1915305 () Bool)

(assert (=> b!6948306 (= e!4179177 (and tp!1915303 tp!1915305))))

(declare-fun b!6948307 () Bool)

(declare-fun tp!1915306 () Bool)

(assert (=> b!6948307 (= e!4179177 tp!1915306)))

(assert (=> b!6948006 (= tp!1915262 e!4179177)))

(assert (= (and b!6948006 (is-ElementMatch!17000 (regTwo!34512 rInner!765))) b!6948305))

(assert (= (and b!6948006 (is-Concat!25845 (regTwo!34512 rInner!765))) b!6948306))

(assert (= (and b!6948006 (is-Star!17000 (regTwo!34512 rInner!765))) b!6948307))

(assert (= (and b!6948006 (is-Union!17000 (regTwo!34512 rInner!765))) b!6948308))

(declare-fun b!6948313 () Bool)

(declare-fun e!4179180 () Bool)

(declare-fun tp!1915309 () Bool)

(assert (=> b!6948313 (= e!4179180 (and tp_is_empty!43225 tp!1915309))))

(assert (=> b!6948008 (= tp!1915259 e!4179180)))

(assert (= (and b!6948008 (is-Cons!66629 (t!380496 s!10388))) b!6948313))

(declare-fun b!6948317 () Bool)

(declare-fun e!4179181 () Bool)

(declare-fun tp!1915310 () Bool)

(declare-fun tp!1915312 () Bool)

(assert (=> b!6948317 (= e!4179181 (and tp!1915310 tp!1915312))))

(declare-fun b!6948314 () Bool)

(assert (=> b!6948314 (= e!4179181 tp_is_empty!43225)))

(declare-fun b!6948315 () Bool)

(declare-fun tp!1915311 () Bool)

(declare-fun tp!1915313 () Bool)

(assert (=> b!6948315 (= e!4179181 (and tp!1915311 tp!1915313))))

(declare-fun b!6948316 () Bool)

(declare-fun tp!1915314 () Bool)

(assert (=> b!6948316 (= e!4179181 tp!1915314)))

(assert (=> b!6948013 (= tp!1915263 e!4179181)))

(assert (= (and b!6948013 (is-ElementMatch!17000 (regOne!34513 rInner!765))) b!6948314))

(assert (= (and b!6948013 (is-Concat!25845 (regOne!34513 rInner!765))) b!6948315))

(assert (= (and b!6948013 (is-Star!17000 (regOne!34513 rInner!765))) b!6948316))

(assert (= (and b!6948013 (is-Union!17000 (regOne!34513 rInner!765))) b!6948317))

(declare-fun b!6948321 () Bool)

(declare-fun e!4179182 () Bool)

(declare-fun tp!1915315 () Bool)

(declare-fun tp!1915317 () Bool)

(assert (=> b!6948321 (= e!4179182 (and tp!1915315 tp!1915317))))

(declare-fun b!6948318 () Bool)

(assert (=> b!6948318 (= e!4179182 tp_is_empty!43225)))

(declare-fun b!6948319 () Bool)

(declare-fun tp!1915316 () Bool)

(declare-fun tp!1915318 () Bool)

(assert (=> b!6948319 (= e!4179182 (and tp!1915316 tp!1915318))))

(declare-fun b!6948320 () Bool)

(declare-fun tp!1915319 () Bool)

(assert (=> b!6948320 (= e!4179182 tp!1915319)))

(assert (=> b!6948013 (= tp!1915261 e!4179182)))

(assert (= (and b!6948013 (is-ElementMatch!17000 (regTwo!34513 rInner!765))) b!6948318))

(assert (= (and b!6948013 (is-Concat!25845 (regTwo!34513 rInner!765))) b!6948319))

(assert (= (and b!6948013 (is-Star!17000 (regTwo!34513 rInner!765))) b!6948320))

(assert (= (and b!6948013 (is-Union!17000 (regTwo!34513 rInner!765))) b!6948321))

(declare-fun b_lambda!260363 () Bool)

(assert (= b_lambda!260361 (or b!6948005 b_lambda!260363)))

(declare-fun bs!1857517 () Bool)

(declare-fun d!2168868 () Bool)

(assert (= bs!1857517 (and d!2168868 b!6948005)))

(declare-fun res!2834642 () Bool)

(declare-fun e!4179183 () Bool)

(assert (=> bs!1857517 (=> (not res!2834642) (not e!4179183))))

(assert (=> bs!1857517 (= res!2834642 (= (++!15037 (_1!37158 lt!2477643) (_2!37158 lt!2477643)) s!10388))))

(assert (=> bs!1857517 (= (dynLambda!26574 lambda!396189 lt!2477643) e!4179183)))

(declare-fun b!6948322 () Bool)

(declare-fun res!2834643 () Bool)

(assert (=> b!6948322 (=> (not res!2834643) (not e!4179183))))

(assert (=> b!6948322 (= res!2834643 (matchR!9131 rInner!765 (_1!37158 lt!2477643)))))

(declare-fun b!6948323 () Bool)

(assert (=> b!6948323 (= e!4179183 (matchR!9131 (Star!17000 rInner!765) (_2!37158 lt!2477643)))))

(assert (= (and bs!1857517 res!2834642) b!6948322))

(assert (= (and b!6948322 res!2834643) b!6948323))

(declare-fun m!7651290 () Bool)

(assert (=> bs!1857517 m!7651290))

(declare-fun m!7651292 () Bool)

(assert (=> b!6948322 m!7651292))

(declare-fun m!7651294 () Bool)

(assert (=> b!6948323 m!7651294))

(assert (=> d!2168844 d!2168868))

(push 1)

(assert (not b!6948308))

(assert (not b!6948179))

(assert (not d!2168838))

(assert (not bs!1857517))

(assert (not b!6948317))

(assert (not b!6948182))

(assert (not b!6948281))

(assert (not d!2168850))

(assert (not bm!631088))

(assert (not b!6948307))

(assert (not b!6948323))

(assert (not b!6948299))

(assert (not b!6948316))

(assert tp_is_empty!43225)

(assert (not bm!631103))

(assert (not b!6948073))

(assert (not b!6948270))

(assert (not b!6948194))

(assert (not b!6948184))

(assert (not bm!631096))

(assert (not bm!631102))

(assert (not b!6948302))

(assert (not b!6948200))

(assert (not b!6948181))

(assert (not bm!631095))

(assert (not bm!631101))

(assert (not b!6948278))

(assert (not b!6948180))

(assert (not b!6948304))

(assert (not b!6948097))

(assert (not d!2168852))

(assert (not b!6948198))

(assert (not d!2168856))

(assert (not b!6948195))

(assert (not b!6948313))

(assert (not bm!631104))

(assert (not d!2168844))

(assert (not b!6948322))

(assert (not bm!631089))

(assert (not b!6948298))

(assert (not b!6948186))

(assert (not b!6948321))

(assert (not d!2168858))

(assert (not b!6948196))

(assert (not b!6948306))

(assert (not b!6948315))

(assert (not b!6948300))

(assert (not b!6948074))

(assert (not b!6948319))

(assert (not b!6948267))

(assert (not b!6948320))

(assert (not b!6948303))

(assert (not d!2168846))

(assert (not d!2168864))

(assert (not b_lambda!260363))

(assert (not b!6948193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

