; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724476 () Bool)

(assert start!724476)

(declare-fun b!7475066 () Bool)

(assert (=> b!7475066 true))

(assert (=> b!7475066 true))

(assert (=> b!7475066 true))

(declare-fun lambda!463089 () Int)

(declare-fun lambda!463088 () Int)

(assert (=> b!7475066 (not (= lambda!463089 lambda!463088))))

(assert (=> b!7475066 true))

(assert (=> b!7475066 true))

(assert (=> b!7475066 true))

(declare-fun b!7475050 () Bool)

(declare-fun e!4459333 () Bool)

(declare-fun tp!2167884 () Bool)

(declare-fun tp!2167894 () Bool)

(assert (=> b!7475050 (= e!4459333 (and tp!2167884 tp!2167894))))

(declare-fun b!7475051 () Bool)

(declare-fun e!4459338 () Bool)

(declare-fun tp!2167896 () Bool)

(declare-fun tp!2167898 () Bool)

(assert (=> b!7475051 (= e!4459338 (and tp!2167896 tp!2167898))))

(declare-fun b!7475052 () Bool)

(declare-fun e!4459335 () Bool)

(declare-fun e!4459334 () Bool)

(assert (=> b!7475052 (= e!4459335 (not e!4459334))))

(declare-fun res!2998909 () Bool)

(assert (=> b!7475052 (=> res!2998909 e!4459334)))

(declare-fun lt!2626990 () Bool)

(assert (=> b!7475052 (= res!2998909 (not lt!2626990))))

(declare-datatypes ((C!39470 0))(
  ( (C!39471 (val!30133 Int)) )
))
(declare-datatypes ((Regex!19598 0))(
  ( (ElementMatch!19598 (c!1380899 C!39470)) (Concat!28443 (regOne!39708 Regex!19598) (regTwo!39708 Regex!19598)) (EmptyExpr!19598) (Star!19598 (reg!19927 Regex!19598)) (EmptyLang!19598) (Union!19598 (regOne!39709 Regex!19598) (regTwo!39709 Regex!19598)) )
))
(declare-fun lt!2626994 () Regex!19598)

(declare-datatypes ((List!72314 0))(
  ( (Nil!72190) (Cons!72190 (h!78638 C!39470) (t!386883 List!72314)) )
))
(declare-fun s!13591 () List!72314)

(declare-fun matchR!9362 (Regex!19598 List!72314) Bool)

(declare-fun matchRSpec!4277 (Regex!19598 List!72314) Bool)

(assert (=> b!7475052 (= (matchR!9362 lt!2626994 s!13591) (matchRSpec!4277 lt!2626994 s!13591))))

(declare-datatypes ((Unit!166031 0))(
  ( (Unit!166032) )
))
(declare-fun lt!2626989 () Unit!166031)

(declare-fun mainMatchTheorem!4271 (Regex!19598 List!72314) Unit!166031)

(assert (=> b!7475052 (= lt!2626989 (mainMatchTheorem!4271 lt!2626994 s!13591))))

(declare-fun lt!2626993 () Regex!19598)

(assert (=> b!7475052 (= lt!2626990 (matchRSpec!4277 lt!2626993 s!13591))))

(assert (=> b!7475052 (= lt!2626990 (matchR!9362 lt!2626993 s!13591))))

(declare-fun lt!2626987 () Unit!166031)

(assert (=> b!7475052 (= lt!2626987 (mainMatchTheorem!4271 lt!2626993 s!13591))))

(declare-fun r2!5783 () Regex!19598)

(declare-fun r1!5845 () Regex!19598)

(declare-fun rTail!78 () Regex!19598)

(assert (=> b!7475052 (= lt!2626994 (Union!19598 (Concat!28443 r1!5845 rTail!78) (Concat!28443 r2!5783 rTail!78)))))

(declare-fun lt!2626992 () Regex!19598)

(assert (=> b!7475052 (= lt!2626993 (Concat!28443 lt!2626992 rTail!78))))

(assert (=> b!7475052 (= lt!2626992 (Union!19598 r1!5845 r2!5783))))

(declare-fun b!7475053 () Bool)

(declare-fun tp!2167897 () Bool)

(assert (=> b!7475053 (= e!4459333 tp!2167897)))

(declare-fun b!7475054 () Bool)

(declare-fun e!4459339 () Bool)

(declare-fun tp!2167892 () Bool)

(declare-fun tp!2167890 () Bool)

(assert (=> b!7475054 (= e!4459339 (and tp!2167892 tp!2167890))))

(declare-fun b!7475055 () Bool)

(declare-fun tp_is_empty!49485 () Bool)

(assert (=> b!7475055 (= e!4459333 tp_is_empty!49485)))

(declare-fun res!2998906 () Bool)

(assert (=> start!724476 (=> (not res!2998906) (not e!4459335))))

(declare-fun validRegex!10112 (Regex!19598) Bool)

(assert (=> start!724476 (= res!2998906 (validRegex!10112 r1!5845))))

(assert (=> start!724476 e!4459335))

(assert (=> start!724476 e!4459339))

(assert (=> start!724476 e!4459338))

(assert (=> start!724476 e!4459333))

(declare-fun e!4459337 () Bool)

(assert (=> start!724476 e!4459337))

(declare-fun b!7475056 () Bool)

(declare-fun tp!2167893 () Bool)

(assert (=> b!7475056 (= e!4459337 (and tp_is_empty!49485 tp!2167893))))

(declare-fun b!7475057 () Bool)

(assert (=> b!7475057 (= e!4459339 tp_is_empty!49485)))

(declare-fun b!7475058 () Bool)

(declare-fun tp!2167886 () Bool)

(declare-fun tp!2167891 () Bool)

(assert (=> b!7475058 (= e!4459333 (and tp!2167886 tp!2167891))))

(declare-fun b!7475059 () Bool)

(declare-fun tp!2167889 () Bool)

(assert (=> b!7475059 (= e!4459339 tp!2167889)))

(declare-fun b!7475060 () Bool)

(declare-fun res!2998905 () Bool)

(assert (=> b!7475060 (=> (not res!2998905) (not e!4459335))))

(assert (=> b!7475060 (= res!2998905 (validRegex!10112 r2!5783))))

(declare-fun b!7475061 () Bool)

(declare-fun e!4459336 () Bool)

(declare-datatypes ((tuple2!68646 0))(
  ( (tuple2!68647 (_1!37626 List!72314) (_2!37626 List!72314)) )
))
(declare-fun lt!2626991 () tuple2!68646)

(assert (=> b!7475061 (= e!4459336 (matchR!9362 rTail!78 (_2!37626 lt!2626991)))))

(declare-fun b!7475062 () Bool)

(assert (=> b!7475062 (= e!4459338 tp_is_empty!49485)))

(declare-fun b!7475063 () Bool)

(declare-fun tp!2167895 () Bool)

(declare-fun tp!2167885 () Bool)

(assert (=> b!7475063 (= e!4459338 (and tp!2167895 tp!2167885))))

(declare-fun b!7475064 () Bool)

(declare-fun tp!2167887 () Bool)

(declare-fun tp!2167888 () Bool)

(assert (=> b!7475064 (= e!4459339 (and tp!2167887 tp!2167888))))

(declare-fun b!7475065 () Bool)

(declare-fun res!2998907 () Bool)

(assert (=> b!7475065 (=> (not res!2998907) (not e!4459335))))

(assert (=> b!7475065 (= res!2998907 (validRegex!10112 rTail!78))))

(assert (=> b!7475066 (= e!4459334 e!4459336)))

(declare-fun res!2998908 () Bool)

(assert (=> b!7475066 (=> res!2998908 e!4459336)))

(assert (=> b!7475066 (= res!2998908 (not (matchR!9362 lt!2626992 (_1!37626 lt!2626991))))))

(declare-datatypes ((Option!17155 0))(
  ( (None!17154) (Some!17154 (v!54283 tuple2!68646)) )
))
(declare-fun lt!2626995 () Option!17155)

(declare-fun get!25261 (Option!17155) tuple2!68646)

(assert (=> b!7475066 (= lt!2626991 (get!25261 lt!2626995))))

(declare-fun Exists!4217 (Int) Bool)

(assert (=> b!7475066 (= (Exists!4217 lambda!463088) (Exists!4217 lambda!463089))))

(declare-fun lt!2626988 () Unit!166031)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2551 (Regex!19598 Regex!19598 List!72314) Unit!166031)

(assert (=> b!7475066 (= lt!2626988 (lemmaExistCutMatchRandMatchRSpecEquivalent!2551 lt!2626992 rTail!78 s!13591))))

(declare-fun isDefined!13844 (Option!17155) Bool)

(assert (=> b!7475066 (= (isDefined!13844 lt!2626995) (Exists!4217 lambda!463088))))

(declare-fun findConcatSeparation!3277 (Regex!19598 Regex!19598 List!72314 List!72314 List!72314) Option!17155)

(assert (=> b!7475066 (= lt!2626995 (findConcatSeparation!3277 lt!2626992 rTail!78 Nil!72190 s!13591 s!13591))))

(declare-fun lt!2626986 () Unit!166031)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3035 (Regex!19598 Regex!19598 List!72314) Unit!166031)

(assert (=> b!7475066 (= lt!2626986 (lemmaFindConcatSeparationEquivalentToExists!3035 lt!2626992 rTail!78 s!13591))))

(declare-fun b!7475067 () Bool)

(declare-fun tp!2167899 () Bool)

(assert (=> b!7475067 (= e!4459338 tp!2167899)))

(assert (= (and start!724476 res!2998906) b!7475060))

(assert (= (and b!7475060 res!2998905) b!7475065))

(assert (= (and b!7475065 res!2998907) b!7475052))

(assert (= (and b!7475052 (not res!2998909)) b!7475066))

(assert (= (and b!7475066 (not res!2998908)) b!7475061))

(assert (= (and start!724476 (is-ElementMatch!19598 r1!5845)) b!7475057))

(assert (= (and start!724476 (is-Concat!28443 r1!5845)) b!7475054))

(assert (= (and start!724476 (is-Star!19598 r1!5845)) b!7475059))

(assert (= (and start!724476 (is-Union!19598 r1!5845)) b!7475064))

(assert (= (and start!724476 (is-ElementMatch!19598 r2!5783)) b!7475062))

(assert (= (and start!724476 (is-Concat!28443 r2!5783)) b!7475051))

(assert (= (and start!724476 (is-Star!19598 r2!5783)) b!7475067))

(assert (= (and start!724476 (is-Union!19598 r2!5783)) b!7475063))

(assert (= (and start!724476 (is-ElementMatch!19598 rTail!78)) b!7475055))

(assert (= (and start!724476 (is-Concat!28443 rTail!78)) b!7475058))

(assert (= (and start!724476 (is-Star!19598 rTail!78)) b!7475053))

(assert (= (and start!724476 (is-Union!19598 rTail!78)) b!7475050))

(assert (= (and start!724476 (is-Cons!72190 s!13591)) b!7475056))

(declare-fun m!8070108 () Bool)

(assert (=> b!7475052 m!8070108))

(declare-fun m!8070110 () Bool)

(assert (=> b!7475052 m!8070110))

(declare-fun m!8070112 () Bool)

(assert (=> b!7475052 m!8070112))

(declare-fun m!8070114 () Bool)

(assert (=> b!7475052 m!8070114))

(declare-fun m!8070116 () Bool)

(assert (=> b!7475052 m!8070116))

(declare-fun m!8070118 () Bool)

(assert (=> b!7475052 m!8070118))

(declare-fun m!8070120 () Bool)

(assert (=> b!7475060 m!8070120))

(declare-fun m!8070122 () Bool)

(assert (=> start!724476 m!8070122))

(declare-fun m!8070124 () Bool)

(assert (=> b!7475065 m!8070124))

(declare-fun m!8070126 () Bool)

(assert (=> b!7475066 m!8070126))

(declare-fun m!8070128 () Bool)

(assert (=> b!7475066 m!8070128))

(declare-fun m!8070130 () Bool)

(assert (=> b!7475066 m!8070130))

(declare-fun m!8070132 () Bool)

(assert (=> b!7475066 m!8070132))

(declare-fun m!8070134 () Bool)

(assert (=> b!7475066 m!8070134))

(declare-fun m!8070136 () Bool)

(assert (=> b!7475066 m!8070136))

(declare-fun m!8070138 () Bool)

(assert (=> b!7475066 m!8070138))

(declare-fun m!8070140 () Bool)

(assert (=> b!7475066 m!8070140))

(assert (=> b!7475066 m!8070136))

(declare-fun m!8070142 () Bool)

(assert (=> b!7475061 m!8070142))

(push 1)

(assert (not b!7475063))

(assert tp_is_empty!49485)

(assert (not b!7475052))

(assert (not b!7475060))

(assert (not b!7475056))

(assert (not b!7475065))

(assert (not b!7475066))

(assert (not b!7475050))

(assert (not b!7475058))

(assert (not start!724476))

(assert (not b!7475059))

(assert (not b!7475054))

(assert (not b!7475064))

(assert (not b!7475061))

(assert (not b!7475051))

(assert (not b!7475067))

(assert (not b!7475053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7475170 () Bool)

(declare-fun e!4459382 () Bool)

(declare-fun head!15335 (List!72314) C!39470)

(assert (=> b!7475170 (= e!4459382 (= (head!15335 s!13591) (c!1380899 lt!2626993)))))

(declare-fun b!7475171 () Bool)

(declare-fun e!4459384 () Bool)

(declare-fun lt!2627028 () Bool)

(declare-fun call!686287 () Bool)

(assert (=> b!7475171 (= e!4459384 (= lt!2627028 call!686287))))

(declare-fun b!7475172 () Bool)

(declare-fun res!2998956 () Bool)

(declare-fun e!4459386 () Bool)

(assert (=> b!7475172 (=> res!2998956 e!4459386)))

(assert (=> b!7475172 (= res!2998956 (not (is-ElementMatch!19598 lt!2626993)))))

(declare-fun e!4459387 () Bool)

(assert (=> b!7475172 (= e!4459387 e!4459386)))

(declare-fun b!7475173 () Bool)

(declare-fun res!2998958 () Bool)

(declare-fun e!4459383 () Bool)

(assert (=> b!7475173 (=> res!2998958 e!4459383)))

(declare-fun isEmpty!41187 (List!72314) Bool)

(declare-fun tail!14904 (List!72314) List!72314)

(assert (=> b!7475173 (= res!2998958 (not (isEmpty!41187 (tail!14904 s!13591))))))

(declare-fun bm!686282 () Bool)

(assert (=> bm!686282 (= call!686287 (isEmpty!41187 s!13591))))

(declare-fun b!7475174 () Bool)

(assert (=> b!7475174 (= e!4459387 (not lt!2627028))))

(declare-fun d!2299393 () Bool)

(assert (=> d!2299393 e!4459384))

(declare-fun c!1380907 () Bool)

(assert (=> d!2299393 (= c!1380907 (is-EmptyExpr!19598 lt!2626993))))

(declare-fun e!4459381 () Bool)

(assert (=> d!2299393 (= lt!2627028 e!4459381)))

(declare-fun c!1380909 () Bool)

(assert (=> d!2299393 (= c!1380909 (isEmpty!41187 s!13591))))

(assert (=> d!2299393 (validRegex!10112 lt!2626993)))

(assert (=> d!2299393 (= (matchR!9362 lt!2626993 s!13591) lt!2627028)))

(declare-fun b!7475175 () Bool)

(declare-fun res!2998954 () Bool)

(assert (=> b!7475175 (=> res!2998954 e!4459386)))

(assert (=> b!7475175 (= res!2998954 e!4459382)))

(declare-fun res!2998953 () Bool)

(assert (=> b!7475175 (=> (not res!2998953) (not e!4459382))))

(assert (=> b!7475175 (= res!2998953 lt!2627028)))

(declare-fun b!7475176 () Bool)

(declare-fun derivativeStep!5595 (Regex!19598 C!39470) Regex!19598)

(assert (=> b!7475176 (= e!4459381 (matchR!9362 (derivativeStep!5595 lt!2626993 (head!15335 s!13591)) (tail!14904 s!13591)))))

(declare-fun b!7475177 () Bool)

(declare-fun nullable!8536 (Regex!19598) Bool)

(assert (=> b!7475177 (= e!4459381 (nullable!8536 lt!2626993))))

(declare-fun b!7475178 () Bool)

(declare-fun e!4459385 () Bool)

(assert (=> b!7475178 (= e!4459385 e!4459383)))

(declare-fun res!2998955 () Bool)

(assert (=> b!7475178 (=> res!2998955 e!4459383)))

(assert (=> b!7475178 (= res!2998955 call!686287)))

(declare-fun b!7475179 () Bool)

(assert (=> b!7475179 (= e!4459383 (not (= (head!15335 s!13591) (c!1380899 lt!2626993))))))

(declare-fun b!7475180 () Bool)

(declare-fun res!2998959 () Bool)

(assert (=> b!7475180 (=> (not res!2998959) (not e!4459382))))

(assert (=> b!7475180 (= res!2998959 (isEmpty!41187 (tail!14904 s!13591)))))

(declare-fun b!7475181 () Bool)

(assert (=> b!7475181 (= e!4459384 e!4459387)))

(declare-fun c!1380908 () Bool)

(assert (=> b!7475181 (= c!1380908 (is-EmptyLang!19598 lt!2626993))))

(declare-fun b!7475182 () Bool)

(assert (=> b!7475182 (= e!4459386 e!4459385)))

(declare-fun res!2998960 () Bool)

(assert (=> b!7475182 (=> (not res!2998960) (not e!4459385))))

(assert (=> b!7475182 (= res!2998960 (not lt!2627028))))

(declare-fun b!7475183 () Bool)

(declare-fun res!2998957 () Bool)

(assert (=> b!7475183 (=> (not res!2998957) (not e!4459382))))

(assert (=> b!7475183 (= res!2998957 (not call!686287))))

(assert (= (and d!2299393 c!1380909) b!7475177))

(assert (= (and d!2299393 (not c!1380909)) b!7475176))

(assert (= (and d!2299393 c!1380907) b!7475171))

(assert (= (and d!2299393 (not c!1380907)) b!7475181))

(assert (= (and b!7475181 c!1380908) b!7475174))

(assert (= (and b!7475181 (not c!1380908)) b!7475172))

(assert (= (and b!7475172 (not res!2998956)) b!7475175))

(assert (= (and b!7475175 res!2998953) b!7475183))

(assert (= (and b!7475183 res!2998957) b!7475180))

(assert (= (and b!7475180 res!2998959) b!7475170))

(assert (= (and b!7475175 (not res!2998954)) b!7475182))

(assert (= (and b!7475182 res!2998960) b!7475178))

(assert (= (and b!7475178 (not res!2998955)) b!7475173))

(assert (= (and b!7475173 (not res!2998958)) b!7475179))

(assert (= (or b!7475171 b!7475178 b!7475183) bm!686282))

(declare-fun m!8070180 () Bool)

(assert (=> b!7475180 m!8070180))

(assert (=> b!7475180 m!8070180))

(declare-fun m!8070182 () Bool)

(assert (=> b!7475180 m!8070182))

(declare-fun m!8070184 () Bool)

(assert (=> bm!686282 m!8070184))

(declare-fun m!8070186 () Bool)

(assert (=> b!7475170 m!8070186))

(assert (=> b!7475173 m!8070180))

(assert (=> b!7475173 m!8070180))

(assert (=> b!7475173 m!8070182))

(assert (=> b!7475176 m!8070186))

(assert (=> b!7475176 m!8070186))

(declare-fun m!8070188 () Bool)

(assert (=> b!7475176 m!8070188))

(assert (=> b!7475176 m!8070180))

(assert (=> b!7475176 m!8070188))

(assert (=> b!7475176 m!8070180))

(declare-fun m!8070190 () Bool)

(assert (=> b!7475176 m!8070190))

(assert (=> b!7475179 m!8070186))

(assert (=> d!2299393 m!8070184))

(declare-fun m!8070192 () Bool)

(assert (=> d!2299393 m!8070192))

(declare-fun m!8070194 () Bool)

(assert (=> b!7475177 m!8070194))

(assert (=> b!7475052 d!2299393))

(declare-fun b!7475184 () Bool)

(declare-fun e!4459389 () Bool)

(assert (=> b!7475184 (= e!4459389 (= (head!15335 s!13591) (c!1380899 lt!2626994)))))

(declare-fun b!7475185 () Bool)

(declare-fun e!4459391 () Bool)

(declare-fun lt!2627029 () Bool)

(declare-fun call!686288 () Bool)

(assert (=> b!7475185 (= e!4459391 (= lt!2627029 call!686288))))

(declare-fun b!7475186 () Bool)

(declare-fun res!2998964 () Bool)

(declare-fun e!4459393 () Bool)

(assert (=> b!7475186 (=> res!2998964 e!4459393)))

(assert (=> b!7475186 (= res!2998964 (not (is-ElementMatch!19598 lt!2626994)))))

(declare-fun e!4459394 () Bool)

(assert (=> b!7475186 (= e!4459394 e!4459393)))

(declare-fun b!7475187 () Bool)

(declare-fun res!2998966 () Bool)

(declare-fun e!4459390 () Bool)

(assert (=> b!7475187 (=> res!2998966 e!4459390)))

(assert (=> b!7475187 (= res!2998966 (not (isEmpty!41187 (tail!14904 s!13591))))))

(declare-fun bm!686283 () Bool)

(assert (=> bm!686283 (= call!686288 (isEmpty!41187 s!13591))))

(declare-fun b!7475188 () Bool)

(assert (=> b!7475188 (= e!4459394 (not lt!2627029))))

(declare-fun d!2299397 () Bool)

(assert (=> d!2299397 e!4459391))

(declare-fun c!1380910 () Bool)

(assert (=> d!2299397 (= c!1380910 (is-EmptyExpr!19598 lt!2626994))))

(declare-fun e!4459388 () Bool)

(assert (=> d!2299397 (= lt!2627029 e!4459388)))

(declare-fun c!1380912 () Bool)

(assert (=> d!2299397 (= c!1380912 (isEmpty!41187 s!13591))))

(assert (=> d!2299397 (validRegex!10112 lt!2626994)))

(assert (=> d!2299397 (= (matchR!9362 lt!2626994 s!13591) lt!2627029)))

(declare-fun b!7475189 () Bool)

(declare-fun res!2998962 () Bool)

(assert (=> b!7475189 (=> res!2998962 e!4459393)))

(assert (=> b!7475189 (= res!2998962 e!4459389)))

(declare-fun res!2998961 () Bool)

(assert (=> b!7475189 (=> (not res!2998961) (not e!4459389))))

(assert (=> b!7475189 (= res!2998961 lt!2627029)))

(declare-fun b!7475190 () Bool)

(assert (=> b!7475190 (= e!4459388 (matchR!9362 (derivativeStep!5595 lt!2626994 (head!15335 s!13591)) (tail!14904 s!13591)))))

(declare-fun b!7475191 () Bool)

(assert (=> b!7475191 (= e!4459388 (nullable!8536 lt!2626994))))

(declare-fun b!7475192 () Bool)

(declare-fun e!4459392 () Bool)

(assert (=> b!7475192 (= e!4459392 e!4459390)))

(declare-fun res!2998963 () Bool)

(assert (=> b!7475192 (=> res!2998963 e!4459390)))

(assert (=> b!7475192 (= res!2998963 call!686288)))

(declare-fun b!7475193 () Bool)

(assert (=> b!7475193 (= e!4459390 (not (= (head!15335 s!13591) (c!1380899 lt!2626994))))))

(declare-fun b!7475194 () Bool)

(declare-fun res!2998967 () Bool)

(assert (=> b!7475194 (=> (not res!2998967) (not e!4459389))))

(assert (=> b!7475194 (= res!2998967 (isEmpty!41187 (tail!14904 s!13591)))))

(declare-fun b!7475195 () Bool)

(assert (=> b!7475195 (= e!4459391 e!4459394)))

(declare-fun c!1380911 () Bool)

(assert (=> b!7475195 (= c!1380911 (is-EmptyLang!19598 lt!2626994))))

(declare-fun b!7475196 () Bool)

(assert (=> b!7475196 (= e!4459393 e!4459392)))

(declare-fun res!2998968 () Bool)

(assert (=> b!7475196 (=> (not res!2998968) (not e!4459392))))

(assert (=> b!7475196 (= res!2998968 (not lt!2627029))))

(declare-fun b!7475197 () Bool)

(declare-fun res!2998965 () Bool)

(assert (=> b!7475197 (=> (not res!2998965) (not e!4459389))))

(assert (=> b!7475197 (= res!2998965 (not call!686288))))

(assert (= (and d!2299397 c!1380912) b!7475191))

(assert (= (and d!2299397 (not c!1380912)) b!7475190))

(assert (= (and d!2299397 c!1380910) b!7475185))

(assert (= (and d!2299397 (not c!1380910)) b!7475195))

(assert (= (and b!7475195 c!1380911) b!7475188))

(assert (= (and b!7475195 (not c!1380911)) b!7475186))

(assert (= (and b!7475186 (not res!2998964)) b!7475189))

(assert (= (and b!7475189 res!2998961) b!7475197))

(assert (= (and b!7475197 res!2998965) b!7475194))

(assert (= (and b!7475194 res!2998967) b!7475184))

(assert (= (and b!7475189 (not res!2998962)) b!7475196))

(assert (= (and b!7475196 res!2998968) b!7475192))

(assert (= (and b!7475192 (not res!2998963)) b!7475187))

(assert (= (and b!7475187 (not res!2998966)) b!7475193))

(assert (= (or b!7475185 b!7475192 b!7475197) bm!686283))

(assert (=> b!7475194 m!8070180))

(assert (=> b!7475194 m!8070180))

(assert (=> b!7475194 m!8070182))

(assert (=> bm!686283 m!8070184))

(assert (=> b!7475184 m!8070186))

(assert (=> b!7475187 m!8070180))

(assert (=> b!7475187 m!8070180))

(assert (=> b!7475187 m!8070182))

(assert (=> b!7475190 m!8070186))

(assert (=> b!7475190 m!8070186))

(declare-fun m!8070196 () Bool)

(assert (=> b!7475190 m!8070196))

(assert (=> b!7475190 m!8070180))

(assert (=> b!7475190 m!8070196))

(assert (=> b!7475190 m!8070180))

(declare-fun m!8070198 () Bool)

(assert (=> b!7475190 m!8070198))

(assert (=> b!7475193 m!8070186))

(assert (=> d!2299397 m!8070184))

(declare-fun m!8070200 () Bool)

(assert (=> d!2299397 m!8070200))

(declare-fun m!8070202 () Bool)

(assert (=> b!7475191 m!8070202))

(assert (=> b!7475052 d!2299397))

(declare-fun bs!1931785 () Bool)

(declare-fun b!7475240 () Bool)

(assert (= bs!1931785 (and b!7475240 b!7475066)))

(declare-fun lambda!463105 () Int)

(assert (=> bs!1931785 (not (= lambda!463105 lambda!463088))))

(assert (=> bs!1931785 (not (= lambda!463105 lambda!463089))))

(assert (=> b!7475240 true))

(assert (=> b!7475240 true))

(declare-fun bs!1931786 () Bool)

(declare-fun b!7475243 () Bool)

(assert (= bs!1931786 (and b!7475243 b!7475066)))

(declare-fun lambda!463106 () Int)

(assert (=> bs!1931786 (not (= lambda!463106 lambda!463088))))

(assert (=> bs!1931786 (= (and (= (regOne!39708 lt!2626993) lt!2626992) (= (regTwo!39708 lt!2626993) rTail!78)) (= lambda!463106 lambda!463089))))

(declare-fun bs!1931787 () Bool)

(assert (= bs!1931787 (and b!7475243 b!7475240)))

(assert (=> bs!1931787 (not (= lambda!463106 lambda!463105))))

(assert (=> b!7475243 true))

(assert (=> b!7475243 true))

(declare-fun bm!686288 () Bool)

(declare-fun c!1380922 () Bool)

(declare-fun call!686294 () Bool)

(assert (=> bm!686288 (= call!686294 (Exists!4217 (ite c!1380922 lambda!463105 lambda!463106)))))

(declare-fun b!7475234 () Bool)

(declare-fun c!1380924 () Bool)

(assert (=> b!7475234 (= c!1380924 (is-Union!19598 lt!2626993))))

(declare-fun e!4459416 () Bool)

(declare-fun e!4459415 () Bool)

(assert (=> b!7475234 (= e!4459416 e!4459415)))

(declare-fun b!7475235 () Bool)

(declare-fun e!4459420 () Bool)

(declare-fun call!686293 () Bool)

(assert (=> b!7475235 (= e!4459420 call!686293)))

(declare-fun b!7475236 () Bool)

(assert (=> b!7475236 (= e!4459416 (= s!13591 (Cons!72190 (c!1380899 lt!2626993) Nil!72190)))))

(declare-fun b!7475237 () Bool)

(declare-fun e!4459421 () Bool)

(assert (=> b!7475237 (= e!4459415 e!4459421)))

(declare-fun res!2998990 () Bool)

(assert (=> b!7475237 (= res!2998990 (matchRSpec!4277 (regOne!39709 lt!2626993) s!13591))))

(assert (=> b!7475237 (=> res!2998990 e!4459421)))

(declare-fun d!2299399 () Bool)

(declare-fun c!1380923 () Bool)

(assert (=> d!2299399 (= c!1380923 (is-EmptyExpr!19598 lt!2626993))))

(assert (=> d!2299399 (= (matchRSpec!4277 lt!2626993 s!13591) e!4459420)))

(declare-fun b!7475238 () Bool)

(declare-fun e!4459418 () Bool)

(assert (=> b!7475238 (= e!4459415 e!4459418)))

(assert (=> b!7475238 (= c!1380922 (is-Star!19598 lt!2626993))))

(declare-fun bm!686289 () Bool)

(assert (=> bm!686289 (= call!686293 (isEmpty!41187 s!13591))))

(declare-fun b!7475239 () Bool)

(declare-fun c!1380921 () Bool)

(assert (=> b!7475239 (= c!1380921 (is-ElementMatch!19598 lt!2626993))))

(declare-fun e!4459417 () Bool)

(assert (=> b!7475239 (= e!4459417 e!4459416)))

(declare-fun e!4459419 () Bool)

(assert (=> b!7475240 (= e!4459419 call!686294)))

(declare-fun b!7475241 () Bool)

(declare-fun res!2998991 () Bool)

(assert (=> b!7475241 (=> res!2998991 e!4459419)))

(assert (=> b!7475241 (= res!2998991 call!686293)))

(assert (=> b!7475241 (= e!4459418 e!4459419)))

(declare-fun b!7475242 () Bool)

(assert (=> b!7475242 (= e!4459421 (matchRSpec!4277 (regTwo!39709 lt!2626993) s!13591))))

(assert (=> b!7475243 (= e!4459418 call!686294)))

(declare-fun b!7475244 () Bool)

(assert (=> b!7475244 (= e!4459420 e!4459417)))

(declare-fun res!2998989 () Bool)

(assert (=> b!7475244 (= res!2998989 (not (is-EmptyLang!19598 lt!2626993)))))

(assert (=> b!7475244 (=> (not res!2998989) (not e!4459417))))

(assert (= (and d!2299399 c!1380923) b!7475235))

(assert (= (and d!2299399 (not c!1380923)) b!7475244))

(assert (= (and b!7475244 res!2998989) b!7475239))

(assert (= (and b!7475239 c!1380921) b!7475236))

(assert (= (and b!7475239 (not c!1380921)) b!7475234))

(assert (= (and b!7475234 c!1380924) b!7475237))

(assert (= (and b!7475234 (not c!1380924)) b!7475238))

(assert (= (and b!7475237 (not res!2998990)) b!7475242))

(assert (= (and b!7475238 c!1380922) b!7475241))

(assert (= (and b!7475238 (not c!1380922)) b!7475243))

(assert (= (and b!7475241 (not res!2998991)) b!7475240))

(assert (= (or b!7475240 b!7475243) bm!686288))

(assert (= (or b!7475235 b!7475241) bm!686289))

(declare-fun m!8070214 () Bool)

(assert (=> bm!686288 m!8070214))

(declare-fun m!8070216 () Bool)

(assert (=> b!7475237 m!8070216))

(assert (=> bm!686289 m!8070184))

(declare-fun m!8070218 () Bool)

(assert (=> b!7475242 m!8070218))

(assert (=> b!7475052 d!2299399))

(declare-fun bs!1931788 () Bool)

(declare-fun b!7475251 () Bool)

(assert (= bs!1931788 (and b!7475251 b!7475066)))

(declare-fun lambda!463107 () Int)

(assert (=> bs!1931788 (not (= lambda!463107 lambda!463088))))

(assert (=> bs!1931788 (not (= lambda!463107 lambda!463089))))

(declare-fun bs!1931789 () Bool)

(assert (= bs!1931789 (and b!7475251 b!7475240)))

(assert (=> bs!1931789 (= (and (= (reg!19927 lt!2626994) (reg!19927 lt!2626993)) (= lt!2626994 lt!2626993)) (= lambda!463107 lambda!463105))))

(declare-fun bs!1931790 () Bool)

(assert (= bs!1931790 (and b!7475251 b!7475243)))

(assert (=> bs!1931790 (not (= lambda!463107 lambda!463106))))

(assert (=> b!7475251 true))

(assert (=> b!7475251 true))

(declare-fun bs!1931791 () Bool)

(declare-fun b!7475254 () Bool)

(assert (= bs!1931791 (and b!7475254 b!7475066)))

(declare-fun lambda!463108 () Int)

(assert (=> bs!1931791 (= (and (= (regOne!39708 lt!2626994) lt!2626992) (= (regTwo!39708 lt!2626994) rTail!78)) (= lambda!463108 lambda!463089))))

(assert (=> bs!1931791 (not (= lambda!463108 lambda!463088))))

(declare-fun bs!1931792 () Bool)

(assert (= bs!1931792 (and b!7475254 b!7475243)))

(assert (=> bs!1931792 (= (and (= (regOne!39708 lt!2626994) (regOne!39708 lt!2626993)) (= (regTwo!39708 lt!2626994) (regTwo!39708 lt!2626993))) (= lambda!463108 lambda!463106))))

(declare-fun bs!1931793 () Bool)

(assert (= bs!1931793 (and b!7475254 b!7475251)))

(assert (=> bs!1931793 (not (= lambda!463108 lambda!463107))))

(declare-fun bs!1931794 () Bool)

(assert (= bs!1931794 (and b!7475254 b!7475240)))

(assert (=> bs!1931794 (not (= lambda!463108 lambda!463105))))

(assert (=> b!7475254 true))

(assert (=> b!7475254 true))

(declare-fun bm!686290 () Bool)

(declare-fun c!1380926 () Bool)

(declare-fun call!686296 () Bool)

(assert (=> bm!686290 (= call!686296 (Exists!4217 (ite c!1380926 lambda!463107 lambda!463108)))))

(declare-fun b!7475245 () Bool)

(declare-fun c!1380928 () Bool)

(assert (=> b!7475245 (= c!1380928 (is-Union!19598 lt!2626994))))

(declare-fun e!4459423 () Bool)

(declare-fun e!4459422 () Bool)

(assert (=> b!7475245 (= e!4459423 e!4459422)))

(declare-fun b!7475246 () Bool)

(declare-fun e!4459427 () Bool)

(declare-fun call!686295 () Bool)

(assert (=> b!7475246 (= e!4459427 call!686295)))

(declare-fun b!7475247 () Bool)

(assert (=> b!7475247 (= e!4459423 (= s!13591 (Cons!72190 (c!1380899 lt!2626994) Nil!72190)))))

(declare-fun b!7475248 () Bool)

(declare-fun e!4459428 () Bool)

(assert (=> b!7475248 (= e!4459422 e!4459428)))

(declare-fun res!2998993 () Bool)

(assert (=> b!7475248 (= res!2998993 (matchRSpec!4277 (regOne!39709 lt!2626994) s!13591))))

(assert (=> b!7475248 (=> res!2998993 e!4459428)))

(declare-fun d!2299405 () Bool)

(declare-fun c!1380927 () Bool)

(assert (=> d!2299405 (= c!1380927 (is-EmptyExpr!19598 lt!2626994))))

(assert (=> d!2299405 (= (matchRSpec!4277 lt!2626994 s!13591) e!4459427)))

(declare-fun b!7475249 () Bool)

(declare-fun e!4459425 () Bool)

(assert (=> b!7475249 (= e!4459422 e!4459425)))

(assert (=> b!7475249 (= c!1380926 (is-Star!19598 lt!2626994))))

(declare-fun bm!686291 () Bool)

(assert (=> bm!686291 (= call!686295 (isEmpty!41187 s!13591))))

(declare-fun b!7475250 () Bool)

(declare-fun c!1380925 () Bool)

(assert (=> b!7475250 (= c!1380925 (is-ElementMatch!19598 lt!2626994))))

(declare-fun e!4459424 () Bool)

(assert (=> b!7475250 (= e!4459424 e!4459423)))

(declare-fun e!4459426 () Bool)

(assert (=> b!7475251 (= e!4459426 call!686296)))

(declare-fun b!7475252 () Bool)

(declare-fun res!2998994 () Bool)

(assert (=> b!7475252 (=> res!2998994 e!4459426)))

(assert (=> b!7475252 (= res!2998994 call!686295)))

(assert (=> b!7475252 (= e!4459425 e!4459426)))

(declare-fun b!7475253 () Bool)

(assert (=> b!7475253 (= e!4459428 (matchRSpec!4277 (regTwo!39709 lt!2626994) s!13591))))

(assert (=> b!7475254 (= e!4459425 call!686296)))

(declare-fun b!7475255 () Bool)

(assert (=> b!7475255 (= e!4459427 e!4459424)))

(declare-fun res!2998992 () Bool)

(assert (=> b!7475255 (= res!2998992 (not (is-EmptyLang!19598 lt!2626994)))))

(assert (=> b!7475255 (=> (not res!2998992) (not e!4459424))))

(assert (= (and d!2299405 c!1380927) b!7475246))

(assert (= (and d!2299405 (not c!1380927)) b!7475255))

(assert (= (and b!7475255 res!2998992) b!7475250))

(assert (= (and b!7475250 c!1380925) b!7475247))

(assert (= (and b!7475250 (not c!1380925)) b!7475245))

(assert (= (and b!7475245 c!1380928) b!7475248))

(assert (= (and b!7475245 (not c!1380928)) b!7475249))

(assert (= (and b!7475248 (not res!2998993)) b!7475253))

(assert (= (and b!7475249 c!1380926) b!7475252))

(assert (= (and b!7475249 (not c!1380926)) b!7475254))

(assert (= (and b!7475252 (not res!2998994)) b!7475251))

(assert (= (or b!7475251 b!7475254) bm!686290))

(assert (= (or b!7475246 b!7475252) bm!686291))

(declare-fun m!8070220 () Bool)

(assert (=> bm!686290 m!8070220))

(declare-fun m!8070222 () Bool)

(assert (=> b!7475248 m!8070222))

(assert (=> bm!686291 m!8070184))

(declare-fun m!8070224 () Bool)

(assert (=> b!7475253 m!8070224))

(assert (=> b!7475052 d!2299405))

(declare-fun d!2299407 () Bool)

(assert (=> d!2299407 (= (matchR!9362 lt!2626993 s!13591) (matchRSpec!4277 lt!2626993 s!13591))))

(declare-fun lt!2627037 () Unit!166031)

(declare-fun choose!57778 (Regex!19598 List!72314) Unit!166031)

(assert (=> d!2299407 (= lt!2627037 (choose!57778 lt!2626993 s!13591))))

(assert (=> d!2299407 (validRegex!10112 lt!2626993)))

(assert (=> d!2299407 (= (mainMatchTheorem!4271 lt!2626993 s!13591) lt!2627037)))

(declare-fun bs!1931795 () Bool)

(assert (= bs!1931795 d!2299407))

(assert (=> bs!1931795 m!8070108))

(assert (=> bs!1931795 m!8070112))

(declare-fun m!8070226 () Bool)

(assert (=> bs!1931795 m!8070226))

(assert (=> bs!1931795 m!8070192))

(assert (=> b!7475052 d!2299407))

(declare-fun d!2299409 () Bool)

(assert (=> d!2299409 (= (matchR!9362 lt!2626994 s!13591) (matchRSpec!4277 lt!2626994 s!13591))))

(declare-fun lt!2627038 () Unit!166031)

(assert (=> d!2299409 (= lt!2627038 (choose!57778 lt!2626994 s!13591))))

(assert (=> d!2299409 (validRegex!10112 lt!2626994)))

(assert (=> d!2299409 (= (mainMatchTheorem!4271 lt!2626994 s!13591) lt!2627038)))

(declare-fun bs!1931796 () Bool)

(assert (= bs!1931796 d!2299409))

(assert (=> bs!1931796 m!8070116))

(assert (=> bs!1931796 m!8070114))

(declare-fun m!8070228 () Bool)

(assert (=> bs!1931796 m!8070228))

(assert (=> bs!1931796 m!8070200))

(assert (=> b!7475052 d!2299409))

(declare-fun b!7475256 () Bool)

(declare-fun e!4459430 () Bool)

(assert (=> b!7475256 (= e!4459430 (= (head!15335 (_2!37626 lt!2626991)) (c!1380899 rTail!78)))))

(declare-fun b!7475257 () Bool)

(declare-fun e!4459432 () Bool)

(declare-fun lt!2627039 () Bool)

(declare-fun call!686297 () Bool)

(assert (=> b!7475257 (= e!4459432 (= lt!2627039 call!686297))))

(declare-fun b!7475258 () Bool)

(declare-fun res!2998998 () Bool)

(declare-fun e!4459434 () Bool)

(assert (=> b!7475258 (=> res!2998998 e!4459434)))

(assert (=> b!7475258 (= res!2998998 (not (is-ElementMatch!19598 rTail!78)))))

(declare-fun e!4459435 () Bool)

(assert (=> b!7475258 (= e!4459435 e!4459434)))

(declare-fun b!7475259 () Bool)

(declare-fun res!2999000 () Bool)

(declare-fun e!4459431 () Bool)

(assert (=> b!7475259 (=> res!2999000 e!4459431)))

(assert (=> b!7475259 (= res!2999000 (not (isEmpty!41187 (tail!14904 (_2!37626 lt!2626991)))))))

(declare-fun bm!686292 () Bool)

(assert (=> bm!686292 (= call!686297 (isEmpty!41187 (_2!37626 lt!2626991)))))

(declare-fun b!7475260 () Bool)

(assert (=> b!7475260 (= e!4459435 (not lt!2627039))))

(declare-fun d!2299411 () Bool)

(assert (=> d!2299411 e!4459432))

(declare-fun c!1380929 () Bool)

(assert (=> d!2299411 (= c!1380929 (is-EmptyExpr!19598 rTail!78))))

(declare-fun e!4459429 () Bool)

(assert (=> d!2299411 (= lt!2627039 e!4459429)))

(declare-fun c!1380931 () Bool)

(assert (=> d!2299411 (= c!1380931 (isEmpty!41187 (_2!37626 lt!2626991)))))

(assert (=> d!2299411 (validRegex!10112 rTail!78)))

(assert (=> d!2299411 (= (matchR!9362 rTail!78 (_2!37626 lt!2626991)) lt!2627039)))

(declare-fun b!7475261 () Bool)

(declare-fun res!2998996 () Bool)

(assert (=> b!7475261 (=> res!2998996 e!4459434)))

(assert (=> b!7475261 (= res!2998996 e!4459430)))

(declare-fun res!2998995 () Bool)

(assert (=> b!7475261 (=> (not res!2998995) (not e!4459430))))

(assert (=> b!7475261 (= res!2998995 lt!2627039)))

(declare-fun b!7475262 () Bool)

(assert (=> b!7475262 (= e!4459429 (matchR!9362 (derivativeStep!5595 rTail!78 (head!15335 (_2!37626 lt!2626991))) (tail!14904 (_2!37626 lt!2626991))))))

(declare-fun b!7475263 () Bool)

(assert (=> b!7475263 (= e!4459429 (nullable!8536 rTail!78))))

(declare-fun b!7475264 () Bool)

(declare-fun e!4459433 () Bool)

(assert (=> b!7475264 (= e!4459433 e!4459431)))

(declare-fun res!2998997 () Bool)

(assert (=> b!7475264 (=> res!2998997 e!4459431)))

(assert (=> b!7475264 (= res!2998997 call!686297)))

(declare-fun b!7475265 () Bool)

(assert (=> b!7475265 (= e!4459431 (not (= (head!15335 (_2!37626 lt!2626991)) (c!1380899 rTail!78))))))

(declare-fun b!7475266 () Bool)

(declare-fun res!2999001 () Bool)

(assert (=> b!7475266 (=> (not res!2999001) (not e!4459430))))

(assert (=> b!7475266 (= res!2999001 (isEmpty!41187 (tail!14904 (_2!37626 lt!2626991))))))

(declare-fun b!7475267 () Bool)

(assert (=> b!7475267 (= e!4459432 e!4459435)))

(declare-fun c!1380930 () Bool)

(assert (=> b!7475267 (= c!1380930 (is-EmptyLang!19598 rTail!78))))

(declare-fun b!7475268 () Bool)

(assert (=> b!7475268 (= e!4459434 e!4459433)))

(declare-fun res!2999002 () Bool)

(assert (=> b!7475268 (=> (not res!2999002) (not e!4459433))))

(assert (=> b!7475268 (= res!2999002 (not lt!2627039))))

(declare-fun b!7475269 () Bool)

(declare-fun res!2998999 () Bool)

(assert (=> b!7475269 (=> (not res!2998999) (not e!4459430))))

(assert (=> b!7475269 (= res!2998999 (not call!686297))))

(assert (= (and d!2299411 c!1380931) b!7475263))

(assert (= (and d!2299411 (not c!1380931)) b!7475262))

(assert (= (and d!2299411 c!1380929) b!7475257))

(assert (= (and d!2299411 (not c!1380929)) b!7475267))

(assert (= (and b!7475267 c!1380930) b!7475260))

(assert (= (and b!7475267 (not c!1380930)) b!7475258))

(assert (= (and b!7475258 (not res!2998998)) b!7475261))

(assert (= (and b!7475261 res!2998995) b!7475269))

(assert (= (and b!7475269 res!2998999) b!7475266))

(assert (= (and b!7475266 res!2999001) b!7475256))

(assert (= (and b!7475261 (not res!2998996)) b!7475268))

(assert (= (and b!7475268 res!2999002) b!7475264))

(assert (= (and b!7475264 (not res!2998997)) b!7475259))

(assert (= (and b!7475259 (not res!2999000)) b!7475265))

(assert (= (or b!7475257 b!7475264 b!7475269) bm!686292))

(declare-fun m!8070230 () Bool)

(assert (=> b!7475266 m!8070230))

(assert (=> b!7475266 m!8070230))

(declare-fun m!8070232 () Bool)

(assert (=> b!7475266 m!8070232))

(declare-fun m!8070234 () Bool)

(assert (=> bm!686292 m!8070234))

(declare-fun m!8070236 () Bool)

(assert (=> b!7475256 m!8070236))

(assert (=> b!7475259 m!8070230))

(assert (=> b!7475259 m!8070230))

(assert (=> b!7475259 m!8070232))

(assert (=> b!7475262 m!8070236))

(assert (=> b!7475262 m!8070236))

(declare-fun m!8070238 () Bool)

(assert (=> b!7475262 m!8070238))

(assert (=> b!7475262 m!8070230))

(assert (=> b!7475262 m!8070238))

(assert (=> b!7475262 m!8070230))

(declare-fun m!8070240 () Bool)

(assert (=> b!7475262 m!8070240))

(assert (=> b!7475265 m!8070236))

(assert (=> d!2299411 m!8070234))

(assert (=> d!2299411 m!8070124))

(declare-fun m!8070242 () Bool)

(assert (=> b!7475263 m!8070242))

(assert (=> b!7475061 d!2299411))

(declare-fun bm!686299 () Bool)

(declare-fun call!686306 () Bool)

(declare-fun c!1380937 () Bool)

(assert (=> bm!686299 (= call!686306 (validRegex!10112 (ite c!1380937 (regOne!39709 r1!5845) (regOne!39708 r1!5845))))))

(declare-fun b!7475297 () Bool)

(declare-fun e!4459456 () Bool)

(declare-fun e!4459457 () Bool)

(assert (=> b!7475297 (= e!4459456 e!4459457)))

(assert (=> b!7475297 (= c!1380937 (is-Union!19598 r1!5845))))

(declare-fun b!7475298 () Bool)

(declare-fun res!2999023 () Bool)

(declare-fun e!4459460 () Bool)

(assert (=> b!7475298 (=> (not res!2999023) (not e!4459460))))

(assert (=> b!7475298 (= res!2999023 call!686306)))

(assert (=> b!7475298 (= e!4459457 e!4459460)))

(declare-fun b!7475299 () Bool)

(declare-fun e!4459455 () Bool)

(declare-fun call!686305 () Bool)

(assert (=> b!7475299 (= e!4459455 call!686305)))

(declare-fun b!7475300 () Bool)

(declare-fun e!4459458 () Bool)

(assert (=> b!7475300 (= e!4459456 e!4459458)))

(declare-fun res!2999022 () Bool)

(assert (=> b!7475300 (= res!2999022 (not (nullable!8536 (reg!19927 r1!5845))))))

(assert (=> b!7475300 (=> (not res!2999022) (not e!4459458))))

(declare-fun b!7475301 () Bool)

(declare-fun res!2999021 () Bool)

(declare-fun e!4459454 () Bool)

(assert (=> b!7475301 (=> res!2999021 e!4459454)))

(assert (=> b!7475301 (= res!2999021 (not (is-Concat!28443 r1!5845)))))

(assert (=> b!7475301 (= e!4459457 e!4459454)))

(declare-fun bm!686300 () Bool)

(declare-fun c!1380936 () Bool)

(declare-fun call!686304 () Bool)

(assert (=> bm!686300 (= call!686304 (validRegex!10112 (ite c!1380936 (reg!19927 r1!5845) (ite c!1380937 (regTwo!39709 r1!5845) (regTwo!39708 r1!5845)))))))

(declare-fun bm!686301 () Bool)

(assert (=> bm!686301 (= call!686305 call!686304)))

(declare-fun b!7475302 () Bool)

(declare-fun e!4459459 () Bool)

(assert (=> b!7475302 (= e!4459459 e!4459456)))

(assert (=> b!7475302 (= c!1380936 (is-Star!19598 r1!5845))))

(declare-fun b!7475296 () Bool)

(assert (=> b!7475296 (= e!4459458 call!686304)))

(declare-fun d!2299413 () Bool)

(declare-fun res!2999024 () Bool)

(assert (=> d!2299413 (=> res!2999024 e!4459459)))

(assert (=> d!2299413 (= res!2999024 (is-ElementMatch!19598 r1!5845))))

(assert (=> d!2299413 (= (validRegex!10112 r1!5845) e!4459459)))

(declare-fun b!7475303 () Bool)

(assert (=> b!7475303 (= e!4459460 call!686305)))

(declare-fun b!7475304 () Bool)

(assert (=> b!7475304 (= e!4459454 e!4459455)))

(declare-fun res!2999025 () Bool)

(assert (=> b!7475304 (=> (not res!2999025) (not e!4459455))))

(assert (=> b!7475304 (= res!2999025 call!686306)))

(assert (= (and d!2299413 (not res!2999024)) b!7475302))

(assert (= (and b!7475302 c!1380936) b!7475300))

(assert (= (and b!7475302 (not c!1380936)) b!7475297))

(assert (= (and b!7475300 res!2999022) b!7475296))

(assert (= (and b!7475297 c!1380937) b!7475298))

(assert (= (and b!7475297 (not c!1380937)) b!7475301))

(assert (= (and b!7475298 res!2999023) b!7475303))

(assert (= (and b!7475301 (not res!2999021)) b!7475304))

(assert (= (and b!7475304 res!2999025) b!7475299))

(assert (= (or b!7475303 b!7475299) bm!686301))

(assert (= (or b!7475298 b!7475304) bm!686299))

(assert (= (or b!7475296 bm!686301) bm!686300))

(declare-fun m!8070244 () Bool)

(assert (=> bm!686299 m!8070244))

(declare-fun m!8070246 () Bool)

(assert (=> b!7475300 m!8070246))

(declare-fun m!8070248 () Bool)

(assert (=> bm!686300 m!8070248))

(assert (=> start!724476 d!2299413))

(declare-fun b!7475305 () Bool)

(declare-fun e!4459462 () Bool)

(assert (=> b!7475305 (= e!4459462 (= (head!15335 (_1!37626 lt!2626991)) (c!1380899 lt!2626992)))))

(declare-fun b!7475306 () Bool)

(declare-fun e!4459464 () Bool)

(declare-fun lt!2627040 () Bool)

(declare-fun call!686307 () Bool)

(assert (=> b!7475306 (= e!4459464 (= lt!2627040 call!686307))))

(declare-fun b!7475307 () Bool)

(declare-fun res!2999029 () Bool)

(declare-fun e!4459466 () Bool)

(assert (=> b!7475307 (=> res!2999029 e!4459466)))

(assert (=> b!7475307 (= res!2999029 (not (is-ElementMatch!19598 lt!2626992)))))

(declare-fun e!4459467 () Bool)

(assert (=> b!7475307 (= e!4459467 e!4459466)))

(declare-fun b!7475308 () Bool)

(declare-fun res!2999031 () Bool)

(declare-fun e!4459463 () Bool)

(assert (=> b!7475308 (=> res!2999031 e!4459463)))

(assert (=> b!7475308 (= res!2999031 (not (isEmpty!41187 (tail!14904 (_1!37626 lt!2626991)))))))

(declare-fun bm!686302 () Bool)

(assert (=> bm!686302 (= call!686307 (isEmpty!41187 (_1!37626 lt!2626991)))))

(declare-fun b!7475309 () Bool)

(assert (=> b!7475309 (= e!4459467 (not lt!2627040))))

(declare-fun d!2299415 () Bool)

(assert (=> d!2299415 e!4459464))

(declare-fun c!1380938 () Bool)

(assert (=> d!2299415 (= c!1380938 (is-EmptyExpr!19598 lt!2626992))))

(declare-fun e!4459461 () Bool)

(assert (=> d!2299415 (= lt!2627040 e!4459461)))

(declare-fun c!1380940 () Bool)

(assert (=> d!2299415 (= c!1380940 (isEmpty!41187 (_1!37626 lt!2626991)))))

(assert (=> d!2299415 (validRegex!10112 lt!2626992)))

(assert (=> d!2299415 (= (matchR!9362 lt!2626992 (_1!37626 lt!2626991)) lt!2627040)))

(declare-fun b!7475310 () Bool)

(declare-fun res!2999027 () Bool)

(assert (=> b!7475310 (=> res!2999027 e!4459466)))

(assert (=> b!7475310 (= res!2999027 e!4459462)))

(declare-fun res!2999026 () Bool)

(assert (=> b!7475310 (=> (not res!2999026) (not e!4459462))))

(assert (=> b!7475310 (= res!2999026 lt!2627040)))

(declare-fun b!7475311 () Bool)

(assert (=> b!7475311 (= e!4459461 (matchR!9362 (derivativeStep!5595 lt!2626992 (head!15335 (_1!37626 lt!2626991))) (tail!14904 (_1!37626 lt!2626991))))))

(declare-fun b!7475312 () Bool)

(assert (=> b!7475312 (= e!4459461 (nullable!8536 lt!2626992))))

(declare-fun b!7475313 () Bool)

(declare-fun e!4459465 () Bool)

(assert (=> b!7475313 (= e!4459465 e!4459463)))

(declare-fun res!2999028 () Bool)

(assert (=> b!7475313 (=> res!2999028 e!4459463)))

(assert (=> b!7475313 (= res!2999028 call!686307)))

(declare-fun b!7475314 () Bool)

(assert (=> b!7475314 (= e!4459463 (not (= (head!15335 (_1!37626 lt!2626991)) (c!1380899 lt!2626992))))))

(declare-fun b!7475315 () Bool)

(declare-fun res!2999032 () Bool)

(assert (=> b!7475315 (=> (not res!2999032) (not e!4459462))))

(assert (=> b!7475315 (= res!2999032 (isEmpty!41187 (tail!14904 (_1!37626 lt!2626991))))))

(declare-fun b!7475316 () Bool)

(assert (=> b!7475316 (= e!4459464 e!4459467)))

(declare-fun c!1380939 () Bool)

(assert (=> b!7475316 (= c!1380939 (is-EmptyLang!19598 lt!2626992))))

(declare-fun b!7475317 () Bool)

(assert (=> b!7475317 (= e!4459466 e!4459465)))

(declare-fun res!2999033 () Bool)

(assert (=> b!7475317 (=> (not res!2999033) (not e!4459465))))

(assert (=> b!7475317 (= res!2999033 (not lt!2627040))))

(declare-fun b!7475318 () Bool)

(declare-fun res!2999030 () Bool)

(assert (=> b!7475318 (=> (not res!2999030) (not e!4459462))))

(assert (=> b!7475318 (= res!2999030 (not call!686307))))

(assert (= (and d!2299415 c!1380940) b!7475312))

(assert (= (and d!2299415 (not c!1380940)) b!7475311))

(assert (= (and d!2299415 c!1380938) b!7475306))

(assert (= (and d!2299415 (not c!1380938)) b!7475316))

(assert (= (and b!7475316 c!1380939) b!7475309))

(assert (= (and b!7475316 (not c!1380939)) b!7475307))

(assert (= (and b!7475307 (not res!2999029)) b!7475310))

(assert (= (and b!7475310 res!2999026) b!7475318))

(assert (= (and b!7475318 res!2999030) b!7475315))

(assert (= (and b!7475315 res!2999032) b!7475305))

(assert (= (and b!7475310 (not res!2999027)) b!7475317))

(assert (= (and b!7475317 res!2999033) b!7475313))

(assert (= (and b!7475313 (not res!2999028)) b!7475308))

(assert (= (and b!7475308 (not res!2999031)) b!7475314))

(assert (= (or b!7475306 b!7475313 b!7475318) bm!686302))

(declare-fun m!8070250 () Bool)

(assert (=> b!7475315 m!8070250))

(assert (=> b!7475315 m!8070250))

(declare-fun m!8070252 () Bool)

(assert (=> b!7475315 m!8070252))

(declare-fun m!8070254 () Bool)

(assert (=> bm!686302 m!8070254))

(declare-fun m!8070256 () Bool)

(assert (=> b!7475305 m!8070256))

(assert (=> b!7475308 m!8070250))

(assert (=> b!7475308 m!8070250))

(assert (=> b!7475308 m!8070252))

(assert (=> b!7475311 m!8070256))

(assert (=> b!7475311 m!8070256))

(declare-fun m!8070258 () Bool)

(assert (=> b!7475311 m!8070258))

(assert (=> b!7475311 m!8070250))

(assert (=> b!7475311 m!8070258))

(assert (=> b!7475311 m!8070250))

(declare-fun m!8070260 () Bool)

(assert (=> b!7475311 m!8070260))

(assert (=> b!7475314 m!8070256))

(assert (=> d!2299415 m!8070254))

(declare-fun m!8070262 () Bool)

(assert (=> d!2299415 m!8070262))

(declare-fun m!8070264 () Bool)

(assert (=> b!7475312 m!8070264))

(assert (=> b!7475066 d!2299415))

(declare-fun bs!1931800 () Bool)

(declare-fun d!2299417 () Bool)

(assert (= bs!1931800 (and d!2299417 b!7475066)))

(declare-fun lambda!463119 () Int)

(assert (=> bs!1931800 (not (= lambda!463119 lambda!463089))))

(assert (=> bs!1931800 (= lambda!463119 lambda!463088)))

(declare-fun bs!1931801 () Bool)

(assert (= bs!1931801 (and d!2299417 b!7475243)))

(assert (=> bs!1931801 (not (= lambda!463119 lambda!463106))))

(declare-fun bs!1931802 () Bool)

(assert (= bs!1931802 (and d!2299417 b!7475251)))

(assert (=> bs!1931802 (not (= lambda!463119 lambda!463107))))

(declare-fun bs!1931803 () Bool)

(assert (= bs!1931803 (and d!2299417 b!7475254)))

(assert (=> bs!1931803 (not (= lambda!463119 lambda!463108))))

(declare-fun bs!1931804 () Bool)

(assert (= bs!1931804 (and d!2299417 b!7475240)))

(assert (=> bs!1931804 (not (= lambda!463119 lambda!463105))))

(assert (=> d!2299417 true))

(assert (=> d!2299417 true))

(assert (=> d!2299417 true))

(declare-fun lambda!463120 () Int)

(assert (=> bs!1931800 (= lambda!463120 lambda!463089)))

(assert (=> bs!1931800 (not (= lambda!463120 lambda!463088))))

(declare-fun bs!1931805 () Bool)

(assert (= bs!1931805 d!2299417))

(assert (=> bs!1931805 (not (= lambda!463120 lambda!463119))))

(assert (=> bs!1931801 (= (and (= lt!2626992 (regOne!39708 lt!2626993)) (= rTail!78 (regTwo!39708 lt!2626993))) (= lambda!463120 lambda!463106))))

(assert (=> bs!1931802 (not (= lambda!463120 lambda!463107))))

(assert (=> bs!1931803 (= (and (= lt!2626992 (regOne!39708 lt!2626994)) (= rTail!78 (regTwo!39708 lt!2626994))) (= lambda!463120 lambda!463108))))

(assert (=> bs!1931804 (not (= lambda!463120 lambda!463105))))

(assert (=> d!2299417 true))

(assert (=> d!2299417 true))

(assert (=> d!2299417 true))

(assert (=> d!2299417 (= (Exists!4217 lambda!463119) (Exists!4217 lambda!463120))))

(declare-fun lt!2627044 () Unit!166031)

(declare-fun choose!57781 (Regex!19598 Regex!19598 List!72314) Unit!166031)

(assert (=> d!2299417 (= lt!2627044 (choose!57781 lt!2626992 rTail!78 s!13591))))

(assert (=> d!2299417 (validRegex!10112 lt!2626992)))

(assert (=> d!2299417 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2551 lt!2626992 rTail!78 s!13591) lt!2627044)))

(declare-fun m!8070272 () Bool)

(assert (=> bs!1931805 m!8070272))

(declare-fun m!8070274 () Bool)

(assert (=> bs!1931805 m!8070274))

(declare-fun m!8070276 () Bool)

(assert (=> bs!1931805 m!8070276))

(assert (=> bs!1931805 m!8070262))

(assert (=> b!7475066 d!2299417))

(declare-fun bs!1931806 () Bool)

(declare-fun d!2299421 () Bool)

(assert (= bs!1931806 (and d!2299421 b!7475066)))

(declare-fun lambda!463123 () Int)

(assert (=> bs!1931806 (not (= lambda!463123 lambda!463089))))

(assert (=> bs!1931806 (= lambda!463123 lambda!463088)))

(declare-fun bs!1931807 () Bool)

(assert (= bs!1931807 (and d!2299421 d!2299417)))

(assert (=> bs!1931807 (= lambda!463123 lambda!463119)))

(declare-fun bs!1931808 () Bool)

(assert (= bs!1931808 (and d!2299421 b!7475243)))

(assert (=> bs!1931808 (not (= lambda!463123 lambda!463106))))

(declare-fun bs!1931809 () Bool)

(assert (= bs!1931809 (and d!2299421 b!7475251)))

(assert (=> bs!1931809 (not (= lambda!463123 lambda!463107))))

(assert (=> bs!1931807 (not (= lambda!463123 lambda!463120))))

(declare-fun bs!1931810 () Bool)

(assert (= bs!1931810 (and d!2299421 b!7475254)))

(assert (=> bs!1931810 (not (= lambda!463123 lambda!463108))))

(declare-fun bs!1931811 () Bool)

(assert (= bs!1931811 (and d!2299421 b!7475240)))

(assert (=> bs!1931811 (not (= lambda!463123 lambda!463105))))

(assert (=> d!2299421 true))

(assert (=> d!2299421 true))

(assert (=> d!2299421 true))

(assert (=> d!2299421 (= (isDefined!13844 (findConcatSeparation!3277 lt!2626992 rTail!78 Nil!72190 s!13591 s!13591)) (Exists!4217 lambda!463123))))

(declare-fun lt!2627049 () Unit!166031)

(declare-fun choose!57783 (Regex!19598 Regex!19598 List!72314) Unit!166031)

(assert (=> d!2299421 (= lt!2627049 (choose!57783 lt!2626992 rTail!78 s!13591))))

(assert (=> d!2299421 (validRegex!10112 lt!2626992)))

(assert (=> d!2299421 (= (lemmaFindConcatSeparationEquivalentToExists!3035 lt!2626992 rTail!78 s!13591) lt!2627049)))

(declare-fun bs!1931812 () Bool)

(assert (= bs!1931812 d!2299421))

(assert (=> bs!1931812 m!8070132))

(assert (=> bs!1931812 m!8070262))

(declare-fun m!8070278 () Bool)

(assert (=> bs!1931812 m!8070278))

(assert (=> bs!1931812 m!8070132))

(declare-fun m!8070280 () Bool)

(assert (=> bs!1931812 m!8070280))

(declare-fun m!8070282 () Bool)

(assert (=> bs!1931812 m!8070282))

(assert (=> b!7475066 d!2299421))

(declare-fun b!7475391 () Bool)

(declare-fun e!4459508 () Option!17155)

(assert (=> b!7475391 (= e!4459508 None!17154)))

(declare-fun b!7475392 () Bool)

(declare-fun res!2999083 () Bool)

(declare-fun e!4459507 () Bool)

(assert (=> b!7475392 (=> (not res!2999083) (not e!4459507))))

(declare-fun lt!2627058 () Option!17155)

(assert (=> b!7475392 (= res!2999083 (matchR!9362 lt!2626992 (_1!37626 (get!25261 lt!2627058))))))

(declare-fun b!7475393 () Bool)

(declare-fun e!4459506 () Bool)

(assert (=> b!7475393 (= e!4459506 (matchR!9362 rTail!78 s!13591))))

(declare-fun d!2299423 () Bool)

(declare-fun e!4459509 () Bool)

(assert (=> d!2299423 e!4459509))

(declare-fun res!2999081 () Bool)

(assert (=> d!2299423 (=> res!2999081 e!4459509)))

(assert (=> d!2299423 (= res!2999081 e!4459507)))

(declare-fun res!2999082 () Bool)

(assert (=> d!2299423 (=> (not res!2999082) (not e!4459507))))

(assert (=> d!2299423 (= res!2999082 (isDefined!13844 lt!2627058))))

(declare-fun e!4459505 () Option!17155)

(assert (=> d!2299423 (= lt!2627058 e!4459505)))

(declare-fun c!1380954 () Bool)

(assert (=> d!2299423 (= c!1380954 e!4459506)))

(declare-fun res!2999084 () Bool)

(assert (=> d!2299423 (=> (not res!2999084) (not e!4459506))))

(assert (=> d!2299423 (= res!2999084 (matchR!9362 lt!2626992 Nil!72190))))

(assert (=> d!2299423 (validRegex!10112 lt!2626992)))

(assert (=> d!2299423 (= (findConcatSeparation!3277 lt!2626992 rTail!78 Nil!72190 s!13591 s!13591) lt!2627058)))

(declare-fun b!7475394 () Bool)

(declare-fun res!2999080 () Bool)

(assert (=> b!7475394 (=> (not res!2999080) (not e!4459507))))

(assert (=> b!7475394 (= res!2999080 (matchR!9362 rTail!78 (_2!37626 (get!25261 lt!2627058))))))

(declare-fun b!7475395 () Bool)

(declare-fun lt!2627059 () Unit!166031)

(declare-fun lt!2627057 () Unit!166031)

(assert (=> b!7475395 (= lt!2627059 lt!2627057)))

(declare-fun ++!17212 (List!72314 List!72314) List!72314)

(assert (=> b!7475395 (= (++!17212 (++!17212 Nil!72190 (Cons!72190 (h!78638 s!13591) Nil!72190)) (t!386883 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3088 (List!72314 C!39470 List!72314 List!72314) Unit!166031)

(assert (=> b!7475395 (= lt!2627057 (lemmaMoveElementToOtherListKeepsConcatEq!3088 Nil!72190 (h!78638 s!13591) (t!386883 s!13591) s!13591))))

(assert (=> b!7475395 (= e!4459508 (findConcatSeparation!3277 lt!2626992 rTail!78 (++!17212 Nil!72190 (Cons!72190 (h!78638 s!13591) Nil!72190)) (t!386883 s!13591) s!13591))))

(declare-fun b!7475396 () Bool)

(assert (=> b!7475396 (= e!4459509 (not (isDefined!13844 lt!2627058)))))

(declare-fun b!7475397 () Bool)

(assert (=> b!7475397 (= e!4459505 e!4459508)))

(declare-fun c!1380955 () Bool)

(assert (=> b!7475397 (= c!1380955 (is-Nil!72190 s!13591))))

(declare-fun b!7475398 () Bool)

(assert (=> b!7475398 (= e!4459505 (Some!17154 (tuple2!68647 Nil!72190 s!13591)))))

(declare-fun b!7475399 () Bool)

(assert (=> b!7475399 (= e!4459507 (= (++!17212 (_1!37626 (get!25261 lt!2627058)) (_2!37626 (get!25261 lt!2627058))) s!13591))))

(assert (= (and d!2299423 res!2999084) b!7475393))

(assert (= (and d!2299423 c!1380954) b!7475398))

(assert (= (and d!2299423 (not c!1380954)) b!7475397))

(assert (= (and b!7475397 c!1380955) b!7475391))

(assert (= (and b!7475397 (not c!1380955)) b!7475395))

(assert (= (and d!2299423 res!2999082) b!7475392))

(assert (= (and b!7475392 res!2999083) b!7475394))

(assert (= (and b!7475394 res!2999080) b!7475399))

(assert (= (and d!2299423 (not res!2999081)) b!7475396))

(declare-fun m!8070300 () Bool)

(assert (=> b!7475394 m!8070300))

(declare-fun m!8070302 () Bool)

(assert (=> b!7475394 m!8070302))

(assert (=> b!7475399 m!8070300))

(declare-fun m!8070304 () Bool)

(assert (=> b!7475399 m!8070304))

(declare-fun m!8070306 () Bool)

(assert (=> d!2299423 m!8070306))

(declare-fun m!8070308 () Bool)

(assert (=> d!2299423 m!8070308))

(assert (=> d!2299423 m!8070262))

(declare-fun m!8070310 () Bool)

(assert (=> b!7475393 m!8070310))

(assert (=> b!7475396 m!8070306))

(assert (=> b!7475392 m!8070300))

(declare-fun m!8070312 () Bool)

(assert (=> b!7475392 m!8070312))

(declare-fun m!8070314 () Bool)

(assert (=> b!7475395 m!8070314))

(assert (=> b!7475395 m!8070314))

(declare-fun m!8070316 () Bool)

(assert (=> b!7475395 m!8070316))

(declare-fun m!8070318 () Bool)

(assert (=> b!7475395 m!8070318))

(assert (=> b!7475395 m!8070314))

(declare-fun m!8070320 () Bool)

(assert (=> b!7475395 m!8070320))

(assert (=> b!7475066 d!2299423))

(declare-fun d!2299431 () Bool)

(declare-fun choose!57784 (Int) Bool)

(assert (=> d!2299431 (= (Exists!4217 lambda!463089) (choose!57784 lambda!463089))))

(declare-fun bs!1931814 () Bool)

(assert (= bs!1931814 d!2299431))

(declare-fun m!8070322 () Bool)

(assert (=> bs!1931814 m!8070322))

(assert (=> b!7475066 d!2299431))

(declare-fun d!2299433 () Bool)

(assert (=> d!2299433 (= (get!25261 lt!2626995) (v!54283 lt!2626995))))

(assert (=> b!7475066 d!2299433))

(declare-fun d!2299435 () Bool)

(declare-fun isEmpty!41189 (Option!17155) Bool)

(assert (=> d!2299435 (= (isDefined!13844 lt!2626995) (not (isEmpty!41189 lt!2626995)))))

(declare-fun bs!1931815 () Bool)

(assert (= bs!1931815 d!2299435))

(declare-fun m!8070324 () Bool)

(assert (=> bs!1931815 m!8070324))

(assert (=> b!7475066 d!2299435))

(declare-fun d!2299437 () Bool)

(assert (=> d!2299437 (= (Exists!4217 lambda!463088) (choose!57784 lambda!463088))))

(declare-fun bs!1931816 () Bool)

(assert (= bs!1931816 d!2299437))

(declare-fun m!8070326 () Bool)

(assert (=> bs!1931816 m!8070326))

(assert (=> b!7475066 d!2299437))

(declare-fun bm!686306 () Bool)

(declare-fun call!686313 () Bool)

(declare-fun c!1380957 () Bool)

(assert (=> bm!686306 (= call!686313 (validRegex!10112 (ite c!1380957 (regOne!39709 rTail!78) (regOne!39708 rTail!78))))))

(declare-fun b!7475401 () Bool)

(declare-fun e!4459512 () Bool)

(declare-fun e!4459513 () Bool)

(assert (=> b!7475401 (= e!4459512 e!4459513)))

(assert (=> b!7475401 (= c!1380957 (is-Union!19598 rTail!78))))

(declare-fun b!7475402 () Bool)

(declare-fun res!2999087 () Bool)

(declare-fun e!4459516 () Bool)

(assert (=> b!7475402 (=> (not res!2999087) (not e!4459516))))

(assert (=> b!7475402 (= res!2999087 call!686313)))

(assert (=> b!7475402 (= e!4459513 e!4459516)))

(declare-fun b!7475403 () Bool)

(declare-fun e!4459511 () Bool)

(declare-fun call!686312 () Bool)

(assert (=> b!7475403 (= e!4459511 call!686312)))

(declare-fun b!7475404 () Bool)

(declare-fun e!4459514 () Bool)

(assert (=> b!7475404 (= e!4459512 e!4459514)))

(declare-fun res!2999086 () Bool)

(assert (=> b!7475404 (= res!2999086 (not (nullable!8536 (reg!19927 rTail!78))))))

(assert (=> b!7475404 (=> (not res!2999086) (not e!4459514))))

(declare-fun b!7475405 () Bool)

(declare-fun res!2999085 () Bool)

(declare-fun e!4459510 () Bool)

(assert (=> b!7475405 (=> res!2999085 e!4459510)))

(assert (=> b!7475405 (= res!2999085 (not (is-Concat!28443 rTail!78)))))

(assert (=> b!7475405 (= e!4459513 e!4459510)))

(declare-fun call!686311 () Bool)

(declare-fun c!1380956 () Bool)

(declare-fun bm!686307 () Bool)

(assert (=> bm!686307 (= call!686311 (validRegex!10112 (ite c!1380956 (reg!19927 rTail!78) (ite c!1380957 (regTwo!39709 rTail!78) (regTwo!39708 rTail!78)))))))

(declare-fun bm!686308 () Bool)

(assert (=> bm!686308 (= call!686312 call!686311)))

(declare-fun b!7475406 () Bool)

(declare-fun e!4459515 () Bool)

(assert (=> b!7475406 (= e!4459515 e!4459512)))

(assert (=> b!7475406 (= c!1380956 (is-Star!19598 rTail!78))))

(declare-fun b!7475400 () Bool)

(assert (=> b!7475400 (= e!4459514 call!686311)))

(declare-fun d!2299439 () Bool)

(declare-fun res!2999088 () Bool)

(assert (=> d!2299439 (=> res!2999088 e!4459515)))

(assert (=> d!2299439 (= res!2999088 (is-ElementMatch!19598 rTail!78))))

(assert (=> d!2299439 (= (validRegex!10112 rTail!78) e!4459515)))

(declare-fun b!7475407 () Bool)

(assert (=> b!7475407 (= e!4459516 call!686312)))

(declare-fun b!7475408 () Bool)

(assert (=> b!7475408 (= e!4459510 e!4459511)))

(declare-fun res!2999089 () Bool)

(assert (=> b!7475408 (=> (not res!2999089) (not e!4459511))))

(assert (=> b!7475408 (= res!2999089 call!686313)))

(assert (= (and d!2299439 (not res!2999088)) b!7475406))

(assert (= (and b!7475406 c!1380956) b!7475404))

(assert (= (and b!7475406 (not c!1380956)) b!7475401))

(assert (= (and b!7475404 res!2999086) b!7475400))

(assert (= (and b!7475401 c!1380957) b!7475402))

(assert (= (and b!7475401 (not c!1380957)) b!7475405))

(assert (= (and b!7475402 res!2999087) b!7475407))

(assert (= (and b!7475405 (not res!2999085)) b!7475408))

(assert (= (and b!7475408 res!2999089) b!7475403))

(assert (= (or b!7475407 b!7475403) bm!686308))

(assert (= (or b!7475402 b!7475408) bm!686306))

(assert (= (or b!7475400 bm!686308) bm!686307))

(declare-fun m!8070328 () Bool)

(assert (=> bm!686306 m!8070328))

(declare-fun m!8070330 () Bool)

(assert (=> b!7475404 m!8070330))

(declare-fun m!8070332 () Bool)

(assert (=> bm!686307 m!8070332))

(assert (=> b!7475065 d!2299439))

(declare-fun bm!686309 () Bool)

(declare-fun call!686316 () Bool)

(declare-fun c!1380959 () Bool)

(assert (=> bm!686309 (= call!686316 (validRegex!10112 (ite c!1380959 (regOne!39709 r2!5783) (regOne!39708 r2!5783))))))

(declare-fun b!7475410 () Bool)

(declare-fun e!4459519 () Bool)

(declare-fun e!4459520 () Bool)

(assert (=> b!7475410 (= e!4459519 e!4459520)))

(assert (=> b!7475410 (= c!1380959 (is-Union!19598 r2!5783))))

(declare-fun b!7475411 () Bool)

(declare-fun res!2999092 () Bool)

(declare-fun e!4459523 () Bool)

(assert (=> b!7475411 (=> (not res!2999092) (not e!4459523))))

(assert (=> b!7475411 (= res!2999092 call!686316)))

(assert (=> b!7475411 (= e!4459520 e!4459523)))

(declare-fun b!7475412 () Bool)

(declare-fun e!4459518 () Bool)

(declare-fun call!686315 () Bool)

(assert (=> b!7475412 (= e!4459518 call!686315)))

(declare-fun b!7475413 () Bool)

(declare-fun e!4459521 () Bool)

(assert (=> b!7475413 (= e!4459519 e!4459521)))

(declare-fun res!2999091 () Bool)

(assert (=> b!7475413 (= res!2999091 (not (nullable!8536 (reg!19927 r2!5783))))))

(assert (=> b!7475413 (=> (not res!2999091) (not e!4459521))))

(declare-fun b!7475414 () Bool)

(declare-fun res!2999090 () Bool)

(declare-fun e!4459517 () Bool)

(assert (=> b!7475414 (=> res!2999090 e!4459517)))

(assert (=> b!7475414 (= res!2999090 (not (is-Concat!28443 r2!5783)))))

(assert (=> b!7475414 (= e!4459520 e!4459517)))

(declare-fun bm!686310 () Bool)

(declare-fun call!686314 () Bool)

(declare-fun c!1380958 () Bool)

(assert (=> bm!686310 (= call!686314 (validRegex!10112 (ite c!1380958 (reg!19927 r2!5783) (ite c!1380959 (regTwo!39709 r2!5783) (regTwo!39708 r2!5783)))))))

(declare-fun bm!686311 () Bool)

(assert (=> bm!686311 (= call!686315 call!686314)))

(declare-fun b!7475415 () Bool)

(declare-fun e!4459522 () Bool)

(assert (=> b!7475415 (= e!4459522 e!4459519)))

(assert (=> b!7475415 (= c!1380958 (is-Star!19598 r2!5783))))

(declare-fun b!7475409 () Bool)

(assert (=> b!7475409 (= e!4459521 call!686314)))

(declare-fun d!2299441 () Bool)

(declare-fun res!2999093 () Bool)

(assert (=> d!2299441 (=> res!2999093 e!4459522)))

(assert (=> d!2299441 (= res!2999093 (is-ElementMatch!19598 r2!5783))))

(assert (=> d!2299441 (= (validRegex!10112 r2!5783) e!4459522)))

(declare-fun b!7475416 () Bool)

(assert (=> b!7475416 (= e!4459523 call!686315)))

(declare-fun b!7475417 () Bool)

(assert (=> b!7475417 (= e!4459517 e!4459518)))

(declare-fun res!2999094 () Bool)

(assert (=> b!7475417 (=> (not res!2999094) (not e!4459518))))

(assert (=> b!7475417 (= res!2999094 call!686316)))

(assert (= (and d!2299441 (not res!2999093)) b!7475415))

(assert (= (and b!7475415 c!1380958) b!7475413))

(assert (= (and b!7475415 (not c!1380958)) b!7475410))

(assert (= (and b!7475413 res!2999091) b!7475409))

(assert (= (and b!7475410 c!1380959) b!7475411))

(assert (= (and b!7475410 (not c!1380959)) b!7475414))

(assert (= (and b!7475411 res!2999092) b!7475416))

(assert (= (and b!7475414 (not res!2999090)) b!7475417))

(assert (= (and b!7475417 res!2999094) b!7475412))

(assert (= (or b!7475416 b!7475412) bm!686311))

(assert (= (or b!7475411 b!7475417) bm!686309))

(assert (= (or b!7475409 bm!686311) bm!686310))

(declare-fun m!8070334 () Bool)

(assert (=> bm!686309 m!8070334))

(declare-fun m!8070336 () Bool)

(assert (=> b!7475413 m!8070336))

(declare-fun m!8070338 () Bool)

(assert (=> bm!686310 m!8070338))

(assert (=> b!7475060 d!2299441))

(declare-fun b!7475429 () Bool)

(declare-fun e!4459526 () Bool)

(declare-fun tp!2167961 () Bool)

(declare-fun tp!2167958 () Bool)

(assert (=> b!7475429 (= e!4459526 (and tp!2167961 tp!2167958))))

(declare-fun b!7475430 () Bool)

(declare-fun tp!2167959 () Bool)

(assert (=> b!7475430 (= e!4459526 tp!2167959)))

(assert (=> b!7475059 (= tp!2167889 e!4459526)))

(declare-fun b!7475431 () Bool)

(declare-fun tp!2167960 () Bool)

(declare-fun tp!2167962 () Bool)

(assert (=> b!7475431 (= e!4459526 (and tp!2167960 tp!2167962))))

(declare-fun b!7475428 () Bool)

(assert (=> b!7475428 (= e!4459526 tp_is_empty!49485)))

(assert (= (and b!7475059 (is-ElementMatch!19598 (reg!19927 r1!5845))) b!7475428))

(assert (= (and b!7475059 (is-Concat!28443 (reg!19927 r1!5845))) b!7475429))

(assert (= (and b!7475059 (is-Star!19598 (reg!19927 r1!5845))) b!7475430))

(assert (= (and b!7475059 (is-Union!19598 (reg!19927 r1!5845))) b!7475431))

(declare-fun b!7475433 () Bool)

(declare-fun e!4459527 () Bool)

(declare-fun tp!2167966 () Bool)

(declare-fun tp!2167963 () Bool)

(assert (=> b!7475433 (= e!4459527 (and tp!2167966 tp!2167963))))

(declare-fun b!7475434 () Bool)

(declare-fun tp!2167964 () Bool)

(assert (=> b!7475434 (= e!4459527 tp!2167964)))

(assert (=> b!7475054 (= tp!2167892 e!4459527)))

(declare-fun b!7475435 () Bool)

(declare-fun tp!2167965 () Bool)

(declare-fun tp!2167967 () Bool)

(assert (=> b!7475435 (= e!4459527 (and tp!2167965 tp!2167967))))

(declare-fun b!7475432 () Bool)

(assert (=> b!7475432 (= e!4459527 tp_is_empty!49485)))

(assert (= (and b!7475054 (is-ElementMatch!19598 (regOne!39708 r1!5845))) b!7475432))

(assert (= (and b!7475054 (is-Concat!28443 (regOne!39708 r1!5845))) b!7475433))

(assert (= (and b!7475054 (is-Star!19598 (regOne!39708 r1!5845))) b!7475434))

(assert (= (and b!7475054 (is-Union!19598 (regOne!39708 r1!5845))) b!7475435))

(declare-fun b!7475437 () Bool)

(declare-fun e!4459528 () Bool)

(declare-fun tp!2167971 () Bool)

(declare-fun tp!2167968 () Bool)

(assert (=> b!7475437 (= e!4459528 (and tp!2167971 tp!2167968))))

(declare-fun b!7475438 () Bool)

(declare-fun tp!2167969 () Bool)

(assert (=> b!7475438 (= e!4459528 tp!2167969)))

(assert (=> b!7475054 (= tp!2167890 e!4459528)))

(declare-fun b!7475439 () Bool)

(declare-fun tp!2167970 () Bool)

(declare-fun tp!2167972 () Bool)

(assert (=> b!7475439 (= e!4459528 (and tp!2167970 tp!2167972))))

(declare-fun b!7475436 () Bool)

(assert (=> b!7475436 (= e!4459528 tp_is_empty!49485)))

(assert (= (and b!7475054 (is-ElementMatch!19598 (regTwo!39708 r1!5845))) b!7475436))

(assert (= (and b!7475054 (is-Concat!28443 (regTwo!39708 r1!5845))) b!7475437))

(assert (= (and b!7475054 (is-Star!19598 (regTwo!39708 r1!5845))) b!7475438))

(assert (= (and b!7475054 (is-Union!19598 (regTwo!39708 r1!5845))) b!7475439))

(declare-fun b!7475441 () Bool)

(declare-fun e!4459529 () Bool)

(declare-fun tp!2167976 () Bool)

(declare-fun tp!2167973 () Bool)

(assert (=> b!7475441 (= e!4459529 (and tp!2167976 tp!2167973))))

(declare-fun b!7475442 () Bool)

(declare-fun tp!2167974 () Bool)

(assert (=> b!7475442 (= e!4459529 tp!2167974)))

(assert (=> b!7475053 (= tp!2167897 e!4459529)))

(declare-fun b!7475443 () Bool)

(declare-fun tp!2167975 () Bool)

(declare-fun tp!2167977 () Bool)

(assert (=> b!7475443 (= e!4459529 (and tp!2167975 tp!2167977))))

(declare-fun b!7475440 () Bool)

(assert (=> b!7475440 (= e!4459529 tp_is_empty!49485)))

(assert (= (and b!7475053 (is-ElementMatch!19598 (reg!19927 rTail!78))) b!7475440))

(assert (= (and b!7475053 (is-Concat!28443 (reg!19927 rTail!78))) b!7475441))

(assert (= (and b!7475053 (is-Star!19598 (reg!19927 rTail!78))) b!7475442))

(assert (= (and b!7475053 (is-Union!19598 (reg!19927 rTail!78))) b!7475443))

(declare-fun b!7475445 () Bool)

(declare-fun e!4459530 () Bool)

(declare-fun tp!2167981 () Bool)

(declare-fun tp!2167978 () Bool)

(assert (=> b!7475445 (= e!4459530 (and tp!2167981 tp!2167978))))

(declare-fun b!7475446 () Bool)

(declare-fun tp!2167979 () Bool)

(assert (=> b!7475446 (= e!4459530 tp!2167979)))

(assert (=> b!7475064 (= tp!2167887 e!4459530)))

(declare-fun b!7475447 () Bool)

(declare-fun tp!2167980 () Bool)

(declare-fun tp!2167982 () Bool)

(assert (=> b!7475447 (= e!4459530 (and tp!2167980 tp!2167982))))

(declare-fun b!7475444 () Bool)

(assert (=> b!7475444 (= e!4459530 tp_is_empty!49485)))

(assert (= (and b!7475064 (is-ElementMatch!19598 (regOne!39709 r1!5845))) b!7475444))

(assert (= (and b!7475064 (is-Concat!28443 (regOne!39709 r1!5845))) b!7475445))

(assert (= (and b!7475064 (is-Star!19598 (regOne!39709 r1!5845))) b!7475446))

(assert (= (and b!7475064 (is-Union!19598 (regOne!39709 r1!5845))) b!7475447))

(declare-fun b!7475449 () Bool)

(declare-fun e!4459531 () Bool)

(declare-fun tp!2167986 () Bool)

(declare-fun tp!2167983 () Bool)

(assert (=> b!7475449 (= e!4459531 (and tp!2167986 tp!2167983))))

(declare-fun b!7475450 () Bool)

(declare-fun tp!2167984 () Bool)

(assert (=> b!7475450 (= e!4459531 tp!2167984)))

(assert (=> b!7475064 (= tp!2167888 e!4459531)))

(declare-fun b!7475451 () Bool)

(declare-fun tp!2167985 () Bool)

(declare-fun tp!2167987 () Bool)

(assert (=> b!7475451 (= e!4459531 (and tp!2167985 tp!2167987))))

(declare-fun b!7475448 () Bool)

(assert (=> b!7475448 (= e!4459531 tp_is_empty!49485)))

(assert (= (and b!7475064 (is-ElementMatch!19598 (regTwo!39709 r1!5845))) b!7475448))

(assert (= (and b!7475064 (is-Concat!28443 (regTwo!39709 r1!5845))) b!7475449))

(assert (= (and b!7475064 (is-Star!19598 (regTwo!39709 r1!5845))) b!7475450))

(assert (= (and b!7475064 (is-Union!19598 (regTwo!39709 r1!5845))) b!7475451))

(declare-fun b!7475453 () Bool)

(declare-fun e!4459532 () Bool)

(declare-fun tp!2167991 () Bool)

(declare-fun tp!2167988 () Bool)

(assert (=> b!7475453 (= e!4459532 (and tp!2167991 tp!2167988))))

(declare-fun b!7475454 () Bool)

(declare-fun tp!2167989 () Bool)

(assert (=> b!7475454 (= e!4459532 tp!2167989)))

(assert (=> b!7475063 (= tp!2167895 e!4459532)))

(declare-fun b!7475455 () Bool)

(declare-fun tp!2167990 () Bool)

(declare-fun tp!2167992 () Bool)

(assert (=> b!7475455 (= e!4459532 (and tp!2167990 tp!2167992))))

(declare-fun b!7475452 () Bool)

(assert (=> b!7475452 (= e!4459532 tp_is_empty!49485)))

(assert (= (and b!7475063 (is-ElementMatch!19598 (regOne!39709 r2!5783))) b!7475452))

(assert (= (and b!7475063 (is-Concat!28443 (regOne!39709 r2!5783))) b!7475453))

(assert (= (and b!7475063 (is-Star!19598 (regOne!39709 r2!5783))) b!7475454))

(assert (= (and b!7475063 (is-Union!19598 (regOne!39709 r2!5783))) b!7475455))

(declare-fun b!7475457 () Bool)

(declare-fun e!4459533 () Bool)

(declare-fun tp!2167996 () Bool)

(declare-fun tp!2167993 () Bool)

(assert (=> b!7475457 (= e!4459533 (and tp!2167996 tp!2167993))))

(declare-fun b!7475458 () Bool)

(declare-fun tp!2167994 () Bool)

(assert (=> b!7475458 (= e!4459533 tp!2167994)))

(assert (=> b!7475063 (= tp!2167885 e!4459533)))

(declare-fun b!7475459 () Bool)

(declare-fun tp!2167995 () Bool)

(declare-fun tp!2167997 () Bool)

(assert (=> b!7475459 (= e!4459533 (and tp!2167995 tp!2167997))))

(declare-fun b!7475456 () Bool)

(assert (=> b!7475456 (= e!4459533 tp_is_empty!49485)))

(assert (= (and b!7475063 (is-ElementMatch!19598 (regTwo!39709 r2!5783))) b!7475456))

(assert (= (and b!7475063 (is-Concat!28443 (regTwo!39709 r2!5783))) b!7475457))

(assert (= (and b!7475063 (is-Star!19598 (regTwo!39709 r2!5783))) b!7475458))

(assert (= (and b!7475063 (is-Union!19598 (regTwo!39709 r2!5783))) b!7475459))

(declare-fun b!7475461 () Bool)

(declare-fun e!4459534 () Bool)

(declare-fun tp!2168001 () Bool)

(declare-fun tp!2167998 () Bool)

(assert (=> b!7475461 (= e!4459534 (and tp!2168001 tp!2167998))))

(declare-fun b!7475462 () Bool)

(declare-fun tp!2167999 () Bool)

(assert (=> b!7475462 (= e!4459534 tp!2167999)))

(assert (=> b!7475058 (= tp!2167886 e!4459534)))

(declare-fun b!7475463 () Bool)

(declare-fun tp!2168000 () Bool)

(declare-fun tp!2168002 () Bool)

(assert (=> b!7475463 (= e!4459534 (and tp!2168000 tp!2168002))))

(declare-fun b!7475460 () Bool)

(assert (=> b!7475460 (= e!4459534 tp_is_empty!49485)))

(assert (= (and b!7475058 (is-ElementMatch!19598 (regOne!39708 rTail!78))) b!7475460))

(assert (= (and b!7475058 (is-Concat!28443 (regOne!39708 rTail!78))) b!7475461))

(assert (= (and b!7475058 (is-Star!19598 (regOne!39708 rTail!78))) b!7475462))

(assert (= (and b!7475058 (is-Union!19598 (regOne!39708 rTail!78))) b!7475463))

(declare-fun b!7475465 () Bool)

(declare-fun e!4459535 () Bool)

(declare-fun tp!2168006 () Bool)

(declare-fun tp!2168003 () Bool)

(assert (=> b!7475465 (= e!4459535 (and tp!2168006 tp!2168003))))

(declare-fun b!7475466 () Bool)

(declare-fun tp!2168004 () Bool)

(assert (=> b!7475466 (= e!4459535 tp!2168004)))

(assert (=> b!7475058 (= tp!2167891 e!4459535)))

(declare-fun b!7475467 () Bool)

(declare-fun tp!2168005 () Bool)

(declare-fun tp!2168007 () Bool)

(assert (=> b!7475467 (= e!4459535 (and tp!2168005 tp!2168007))))

(declare-fun b!7475464 () Bool)

(assert (=> b!7475464 (= e!4459535 tp_is_empty!49485)))

(assert (= (and b!7475058 (is-ElementMatch!19598 (regTwo!39708 rTail!78))) b!7475464))

(assert (= (and b!7475058 (is-Concat!28443 (regTwo!39708 rTail!78))) b!7475465))

(assert (= (and b!7475058 (is-Star!19598 (regTwo!39708 rTail!78))) b!7475466))

(assert (= (and b!7475058 (is-Union!19598 (regTwo!39708 rTail!78))) b!7475467))

(declare-fun b!7475469 () Bool)

(declare-fun e!4459536 () Bool)

(declare-fun tp!2168011 () Bool)

(declare-fun tp!2168008 () Bool)

(assert (=> b!7475469 (= e!4459536 (and tp!2168011 tp!2168008))))

(declare-fun b!7475470 () Bool)

(declare-fun tp!2168009 () Bool)

(assert (=> b!7475470 (= e!4459536 tp!2168009)))

(assert (=> b!7475067 (= tp!2167899 e!4459536)))

(declare-fun b!7475471 () Bool)

(declare-fun tp!2168010 () Bool)

(declare-fun tp!2168012 () Bool)

(assert (=> b!7475471 (= e!4459536 (and tp!2168010 tp!2168012))))

(declare-fun b!7475468 () Bool)

(assert (=> b!7475468 (= e!4459536 tp_is_empty!49485)))

(assert (= (and b!7475067 (is-ElementMatch!19598 (reg!19927 r2!5783))) b!7475468))

(assert (= (and b!7475067 (is-Concat!28443 (reg!19927 r2!5783))) b!7475469))

(assert (= (and b!7475067 (is-Star!19598 (reg!19927 r2!5783))) b!7475470))

(assert (= (and b!7475067 (is-Union!19598 (reg!19927 r2!5783))) b!7475471))

(declare-fun b!7475473 () Bool)

(declare-fun e!4459537 () Bool)

(declare-fun tp!2168016 () Bool)

(declare-fun tp!2168013 () Bool)

(assert (=> b!7475473 (= e!4459537 (and tp!2168016 tp!2168013))))

(declare-fun b!7475474 () Bool)

(declare-fun tp!2168014 () Bool)

(assert (=> b!7475474 (= e!4459537 tp!2168014)))

(assert (=> b!7475051 (= tp!2167896 e!4459537)))

(declare-fun b!7475475 () Bool)

(declare-fun tp!2168015 () Bool)

(declare-fun tp!2168017 () Bool)

(assert (=> b!7475475 (= e!4459537 (and tp!2168015 tp!2168017))))

(declare-fun b!7475472 () Bool)

(assert (=> b!7475472 (= e!4459537 tp_is_empty!49485)))

(assert (= (and b!7475051 (is-ElementMatch!19598 (regOne!39708 r2!5783))) b!7475472))

(assert (= (and b!7475051 (is-Concat!28443 (regOne!39708 r2!5783))) b!7475473))

(assert (= (and b!7475051 (is-Star!19598 (regOne!39708 r2!5783))) b!7475474))

(assert (= (and b!7475051 (is-Union!19598 (regOne!39708 r2!5783))) b!7475475))

(declare-fun b!7475477 () Bool)

(declare-fun e!4459538 () Bool)

(declare-fun tp!2168021 () Bool)

(declare-fun tp!2168018 () Bool)

(assert (=> b!7475477 (= e!4459538 (and tp!2168021 tp!2168018))))

(declare-fun b!7475478 () Bool)

(declare-fun tp!2168019 () Bool)

(assert (=> b!7475478 (= e!4459538 tp!2168019)))

(assert (=> b!7475051 (= tp!2167898 e!4459538)))

(declare-fun b!7475479 () Bool)

(declare-fun tp!2168020 () Bool)

(declare-fun tp!2168022 () Bool)

(assert (=> b!7475479 (= e!4459538 (and tp!2168020 tp!2168022))))

(declare-fun b!7475476 () Bool)

(assert (=> b!7475476 (= e!4459538 tp_is_empty!49485)))

(assert (= (and b!7475051 (is-ElementMatch!19598 (regTwo!39708 r2!5783))) b!7475476))

(assert (= (and b!7475051 (is-Concat!28443 (regTwo!39708 r2!5783))) b!7475477))

(assert (= (and b!7475051 (is-Star!19598 (regTwo!39708 r2!5783))) b!7475478))

(assert (= (and b!7475051 (is-Union!19598 (regTwo!39708 r2!5783))) b!7475479))

(declare-fun b!7475484 () Bool)

(declare-fun e!4459541 () Bool)

(declare-fun tp!2168025 () Bool)

(assert (=> b!7475484 (= e!4459541 (and tp_is_empty!49485 tp!2168025))))

(assert (=> b!7475056 (= tp!2167893 e!4459541)))

(assert (= (and b!7475056 (is-Cons!72190 (t!386883 s!13591))) b!7475484))

(declare-fun b!7475486 () Bool)

(declare-fun e!4459542 () Bool)

(declare-fun tp!2168029 () Bool)

(declare-fun tp!2168026 () Bool)

(assert (=> b!7475486 (= e!4459542 (and tp!2168029 tp!2168026))))

(declare-fun b!7475487 () Bool)

(declare-fun tp!2168027 () Bool)

(assert (=> b!7475487 (= e!4459542 tp!2168027)))

(assert (=> b!7475050 (= tp!2167884 e!4459542)))

(declare-fun b!7475488 () Bool)

(declare-fun tp!2168028 () Bool)

(declare-fun tp!2168030 () Bool)

(assert (=> b!7475488 (= e!4459542 (and tp!2168028 tp!2168030))))

(declare-fun b!7475485 () Bool)

(assert (=> b!7475485 (= e!4459542 tp_is_empty!49485)))

(assert (= (and b!7475050 (is-ElementMatch!19598 (regOne!39709 rTail!78))) b!7475485))

(assert (= (and b!7475050 (is-Concat!28443 (regOne!39709 rTail!78))) b!7475486))

(assert (= (and b!7475050 (is-Star!19598 (regOne!39709 rTail!78))) b!7475487))

(assert (= (and b!7475050 (is-Union!19598 (regOne!39709 rTail!78))) b!7475488))

(declare-fun b!7475490 () Bool)

(declare-fun e!4459543 () Bool)

(declare-fun tp!2168034 () Bool)

(declare-fun tp!2168031 () Bool)

(assert (=> b!7475490 (= e!4459543 (and tp!2168034 tp!2168031))))

(declare-fun b!7475491 () Bool)

(declare-fun tp!2168032 () Bool)

(assert (=> b!7475491 (= e!4459543 tp!2168032)))

(assert (=> b!7475050 (= tp!2167894 e!4459543)))

(declare-fun b!7475492 () Bool)

(declare-fun tp!2168033 () Bool)

(declare-fun tp!2168035 () Bool)

(assert (=> b!7475492 (= e!4459543 (and tp!2168033 tp!2168035))))

(declare-fun b!7475489 () Bool)

(assert (=> b!7475489 (= e!4459543 tp_is_empty!49485)))

(assert (= (and b!7475050 (is-ElementMatch!19598 (regTwo!39709 rTail!78))) b!7475489))

(assert (= (and b!7475050 (is-Concat!28443 (regTwo!39709 rTail!78))) b!7475490))

(assert (= (and b!7475050 (is-Star!19598 (regTwo!39709 rTail!78))) b!7475491))

(assert (= (and b!7475050 (is-Union!19598 (regTwo!39709 rTail!78))) b!7475492))

(push 1)

(assert (not b!7475180))

(assert (not bm!686292))

(assert (not b!7475443))

(assert (not b!7475459))

(assert (not b!7475395))

(assert (not b!7475463))

(assert (not b!7475457))

(assert (not b!7475442))

(assert (not b!7475429))

(assert (not b!7475311))

(assert (not b!7475253))

(assert (not b!7475451))

(assert (not b!7475237))

(assert (not b!7475473))

(assert (not b!7475184))

(assert (not d!2299421))

(assert (not b!7475446))

(assert (not bm!686290))

(assert (not b!7475259))

(assert (not b!7475191))

(assert (not b!7475170))

(assert tp_is_empty!49485)

(assert (not b!7475248))

(assert (not b!7475492))

(assert (not b!7475462))

(assert (not d!2299393))

(assert (not b!7475173))

(assert (not b!7475300))

(assert (not b!7475438))

(assert (not b!7475179))

(assert (not b!7475396))

(assert (not b!7475447))

(assert (not d!2299397))

(assert (not bm!686299))

(assert (not b!7475176))

(assert (not b!7475392))

(assert (not b!7475475))

(assert (not b!7475471))

(assert (not b!7475437))

(assert (not b!7475393))

(assert (not b!7475470))

(assert (not b!7475435))

(assert (not b!7475312))

(assert (not b!7475431))

(assert (not b!7475315))

(assert (not d!2299411))

(assert (not b!7475305))

(assert (not b!7475487))

(assert (not b!7475449))

(assert (not b!7475433))

(assert (not d!2299437))

(assert (not b!7475242))

(assert (not d!2299407))

(assert (not b!7475490))

(assert (not bm!686288))

(assert (not b!7475454))

(assert (not b!7475458))

(assert (not bm!686302))

(assert (not b!7475453))

(assert (not b!7475450))

(assert (not bm!686310))

(assert (not b!7475399))

(assert (not b!7475308))

(assert (not b!7475404))

(assert (not bm!686307))

(assert (not b!7475486))

(assert (not b!7475461))

(assert (not bm!686282))

(assert (not b!7475262))

(assert (not bm!686309))

(assert (not b!7475478))

(assert (not b!7475434))

(assert (not b!7475439))

(assert (not b!7475263))

(assert (not d!2299423))

(assert (not b!7475488))

(assert (not b!7475190))

(assert (not b!7475194))

(assert (not b!7475467))

(assert (not b!7475193))

(assert (not b!7475455))

(assert (not b!7475465))

(assert (not b!7475314))

(assert (not d!2299409))

(assert (not b!7475177))

(assert (not b!7475479))

(assert (not bm!686306))

(assert (not d!2299431))

(assert (not d!2299435))

(assert (not b!7475484))

(assert (not d!2299417))

(assert (not bm!686291))

(assert (not b!7475265))

(assert (not b!7475441))

(assert (not b!7475469))

(assert (not bm!686289))

(assert (not b!7475466))

(assert (not b!7475266))

(assert (not b!7475430))

(assert (not b!7475445))

(assert (not b!7475477))

(assert (not b!7475413))

(assert (not b!7475187))

(assert (not b!7475394))

(assert (not d!2299415))

(assert (not b!7475491))

(assert (not bm!686283))

(assert (not b!7475474))

(assert (not b!7475256))

(assert (not bm!686300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

