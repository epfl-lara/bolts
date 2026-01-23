; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85428 () Bool)

(assert start!85428)

(declare-fun b!959094 () Bool)

(assert (=> b!959094 true))

(assert (=> b!959094 true))

(assert (=> b!959094 true))

(declare-fun lambda!33284 () Int)

(declare-fun lambda!33283 () Int)

(assert (=> b!959094 (not (= lambda!33284 lambda!33283))))

(assert (=> b!959094 true))

(assert (=> b!959094 true))

(assert (=> b!959094 true))

(declare-fun b!959084 () Bool)

(declare-fun res!435852 () Bool)

(declare-fun e!619737 () Bool)

(assert (=> b!959084 (=> res!435852 e!619737)))

(declare-fun lt!346168 () Bool)

(assert (=> b!959084 (= res!435852 (not lt!346168))))

(declare-fun b!959085 () Bool)

(declare-fun e!619738 () Bool)

(declare-fun tp!295018 () Bool)

(assert (=> b!959085 (= e!619738 tp!295018)))

(declare-fun res!435853 () Bool)

(declare-fun e!619734 () Bool)

(assert (=> start!85428 (=> (not res!435853) (not e!619734))))

(declare-datatypes ((C!5878 0))(
  ( (C!5879 (val!3187 Int)) )
))
(declare-datatypes ((Regex!2654 0))(
  ( (ElementMatch!2654 (c!156220 C!5878)) (Concat!4487 (regOne!5820 Regex!2654) (regTwo!5820 Regex!2654)) (EmptyExpr!2654) (Star!2654 (reg!2983 Regex!2654)) (EmptyLang!2654) (Union!2654 (regOne!5821 Regex!2654) (regTwo!5821 Regex!2654)) )
))
(declare-fun r!15766 () Regex!2654)

(declare-fun validRegex!1123 (Regex!2654) Bool)

(assert (=> start!85428 (= res!435853 (validRegex!1123 r!15766))))

(assert (=> start!85428 e!619734))

(assert (=> start!85428 e!619738))

(declare-fun e!619740 () Bool)

(assert (=> start!85428 e!619740))

(declare-fun b!959086 () Bool)

(declare-fun e!619735 () Bool)

(assert (=> b!959086 (= e!619737 e!619735)))

(declare-fun res!435851 () Bool)

(assert (=> b!959086 (=> res!435851 e!619735)))

(declare-datatypes ((List!9884 0))(
  ( (Nil!9868) (Cons!9868 (h!15269 C!5878) (t!100930 List!9884)) )
))
(declare-datatypes ((tuple2!11194 0))(
  ( (tuple2!11195 (_1!6423 List!9884) (_2!6423 List!9884)) )
))
(declare-fun lt!346177 () tuple2!11194)

(declare-fun matchR!1192 (Regex!2654 List!9884) Bool)

(assert (=> b!959086 (= res!435851 (not (matchR!1192 (reg!2983 r!15766) (_1!6423 lt!346177))))))

(declare-datatypes ((Option!2239 0))(
  ( (None!2238) (Some!2238 (v!19655 tuple2!11194)) )
))
(declare-fun lt!346176 () Option!2239)

(declare-fun get!3355 (Option!2239) tuple2!11194)

(assert (=> b!959086 (= lt!346177 (get!3355 lt!346176))))

(declare-fun b!959087 () Bool)

(declare-fun tp!295022 () Bool)

(declare-fun tp!295019 () Bool)

(assert (=> b!959087 (= e!619738 (and tp!295022 tp!295019))))

(declare-fun b!959088 () Bool)

(declare-fun tp_is_empty!4951 () Bool)

(declare-fun tp!295017 () Bool)

(assert (=> b!959088 (= e!619740 (and tp_is_empty!4951 tp!295017))))

(declare-fun b!959089 () Bool)

(declare-fun e!619739 () Bool)

(assert (=> b!959089 (= e!619734 (not e!619739))))

(declare-fun res!435854 () Bool)

(assert (=> b!959089 (=> res!435854 e!619739)))

(declare-fun lt!346175 () Bool)

(assert (=> b!959089 (= res!435854 (or (not lt!346175) (and (is-Concat!4487 r!15766) (is-EmptyExpr!2654 (regOne!5820 r!15766))) (and (is-Concat!4487 r!15766) (is-EmptyExpr!2654 (regTwo!5820 r!15766))) (is-Concat!4487 r!15766) (is-Union!2654 r!15766) (not (is-Star!2654 r!15766))))))

(declare-fun s!10566 () List!9884)

(declare-fun matchRSpec!455 (Regex!2654 List!9884) Bool)

(assert (=> b!959089 (= lt!346175 (matchRSpec!455 r!15766 s!10566))))

(assert (=> b!959089 (= lt!346175 (matchR!1192 r!15766 s!10566))))

(declare-datatypes ((Unit!14955 0))(
  ( (Unit!14956) )
))
(declare-fun lt!346173 () Unit!14955)

(declare-fun mainMatchTheorem!455 (Regex!2654 List!9884) Unit!14955)

(assert (=> b!959089 (= lt!346173 (mainMatchTheorem!455 r!15766 s!10566))))

(declare-fun b!959090 () Bool)

(declare-fun tp!295021 () Bool)

(declare-fun tp!295020 () Bool)

(assert (=> b!959090 (= e!619738 (and tp!295021 tp!295020))))

(declare-fun b!959091 () Bool)

(declare-fun e!619736 () Unit!14955)

(declare-fun Unit!14957 () Unit!14955)

(assert (=> b!959091 (= e!619736 Unit!14957)))

(declare-fun lt!346171 () Unit!14955)

(assert (=> b!959091 (= lt!346171 (mainMatchTheorem!455 (reg!2983 r!15766) (_1!6423 lt!346177)))))

(assert (=> b!959091 false))

(declare-fun b!959092 () Bool)

(assert (=> b!959092 (= e!619738 tp_is_empty!4951)))

(declare-fun b!959093 () Bool)

(declare-fun lt!346178 () Regex!2654)

(declare-fun lt!346170 () Regex!2654)

(assert (=> b!959093 (= e!619735 (= lt!346178 (Star!2654 lt!346170)))))

(assert (=> b!959093 (matchR!1192 lt!346178 (_2!6423 lt!346177))))

(declare-fun lt!346179 () Regex!2654)

(declare-fun removeUselessConcat!305 (Regex!2654) Regex!2654)

(assert (=> b!959093 (= lt!346178 (removeUselessConcat!305 lt!346179))))

(declare-fun lt!346174 () Unit!14955)

(declare-fun lemmaRemoveUselessConcatSound!165 (Regex!2654 List!9884) Unit!14955)

(assert (=> b!959093 (= lt!346174 (lemmaRemoveUselessConcatSound!165 lt!346179 (_2!6423 lt!346177)))))

(declare-fun lt!346169 () Unit!14955)

(assert (=> b!959093 (= lt!346169 e!619736)))

(declare-fun c!156219 () Bool)

(declare-fun size!7926 (List!9884) Int)

(assert (=> b!959093 (= c!156219 (= (size!7926 (_2!6423 lt!346177)) (size!7926 s!10566)))))

(assert (=> b!959093 (matchR!1192 lt!346170 (_1!6423 lt!346177))))

(assert (=> b!959093 (= lt!346170 (removeUselessConcat!305 (reg!2983 r!15766)))))

(declare-fun lt!346180 () Unit!14955)

(assert (=> b!959093 (= lt!346180 (lemmaRemoveUselessConcatSound!165 (reg!2983 r!15766) (_1!6423 lt!346177)))))

(assert (=> b!959094 (= e!619739 e!619737)))

(declare-fun res!435856 () Bool)

(assert (=> b!959094 (=> res!435856 e!619737)))

(declare-fun isEmpty!6154 (List!9884) Bool)

(assert (=> b!959094 (= res!435856 (isEmpty!6154 s!10566))))

(declare-fun Exists!401 (Int) Bool)

(assert (=> b!959094 (= (Exists!401 lambda!33283) (Exists!401 lambda!33284))))

(declare-fun lt!346172 () Unit!14955)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!129 (Regex!2654 List!9884) Unit!14955)

(assert (=> b!959094 (= lt!346172 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!129 (reg!2983 r!15766) s!10566))))

(assert (=> b!959094 (= lt!346168 (Exists!401 lambda!33283))))

(declare-fun isDefined!1881 (Option!2239) Bool)

(assert (=> b!959094 (= lt!346168 (isDefined!1881 lt!346176))))

(declare-fun findConcatSeparation!345 (Regex!2654 Regex!2654 List!9884 List!9884 List!9884) Option!2239)

(assert (=> b!959094 (= lt!346176 (findConcatSeparation!345 (reg!2983 r!15766) lt!346179 Nil!9868 s!10566 s!10566))))

(declare-fun lt!346181 () Unit!14955)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!345 (Regex!2654 Regex!2654 List!9884) Unit!14955)

(assert (=> b!959094 (= lt!346181 (lemmaFindConcatSeparationEquivalentToExists!345 (reg!2983 r!15766) lt!346179 s!10566))))

(assert (=> b!959094 (= lt!346179 (Star!2654 (reg!2983 r!15766)))))

(declare-fun b!959095 () Bool)

(declare-fun Unit!14958 () Unit!14955)

(assert (=> b!959095 (= e!619736 Unit!14958)))

(declare-fun b!959096 () Bool)

(declare-fun res!435855 () Bool)

(assert (=> b!959096 (=> res!435855 e!619735)))

(assert (=> b!959096 (= res!435855 (not (matchR!1192 lt!346179 (_2!6423 lt!346177))))))

(assert (= (and start!85428 res!435853) b!959089))

(assert (= (and b!959089 (not res!435854)) b!959094))

(assert (= (and b!959094 (not res!435856)) b!959084))

(assert (= (and b!959084 (not res!435852)) b!959086))

(assert (= (and b!959086 (not res!435851)) b!959096))

(assert (= (and b!959096 (not res!435855)) b!959093))

(assert (= (and b!959093 c!156219) b!959091))

(assert (= (and b!959093 (not c!156219)) b!959095))

(assert (= (and start!85428 (is-ElementMatch!2654 r!15766)) b!959092))

(assert (= (and start!85428 (is-Concat!4487 r!15766)) b!959090))

(assert (= (and start!85428 (is-Star!2654 r!15766)) b!959085))

(assert (= (and start!85428 (is-Union!2654 r!15766)) b!959087))

(assert (= (and start!85428 (is-Cons!9868 s!10566)) b!959088))

(declare-fun m!1168141 () Bool)

(assert (=> b!959094 m!1168141))

(declare-fun m!1168143 () Bool)

(assert (=> b!959094 m!1168143))

(declare-fun m!1168145 () Bool)

(assert (=> b!959094 m!1168145))

(declare-fun m!1168147 () Bool)

(assert (=> b!959094 m!1168147))

(declare-fun m!1168149 () Bool)

(assert (=> b!959094 m!1168149))

(assert (=> b!959094 m!1168149))

(declare-fun m!1168151 () Bool)

(assert (=> b!959094 m!1168151))

(declare-fun m!1168153 () Bool)

(assert (=> b!959094 m!1168153))

(declare-fun m!1168155 () Bool)

(assert (=> b!959089 m!1168155))

(declare-fun m!1168157 () Bool)

(assert (=> b!959089 m!1168157))

(declare-fun m!1168159 () Bool)

(assert (=> b!959089 m!1168159))

(declare-fun m!1168161 () Bool)

(assert (=> b!959096 m!1168161))

(declare-fun m!1168163 () Bool)

(assert (=> start!85428 m!1168163))

(declare-fun m!1168165 () Bool)

(assert (=> b!959093 m!1168165))

(declare-fun m!1168167 () Bool)

(assert (=> b!959093 m!1168167))

(declare-fun m!1168169 () Bool)

(assert (=> b!959093 m!1168169))

(declare-fun m!1168171 () Bool)

(assert (=> b!959093 m!1168171))

(declare-fun m!1168173 () Bool)

(assert (=> b!959093 m!1168173))

(declare-fun m!1168175 () Bool)

(assert (=> b!959093 m!1168175))

(declare-fun m!1168177 () Bool)

(assert (=> b!959093 m!1168177))

(declare-fun m!1168179 () Bool)

(assert (=> b!959093 m!1168179))

(declare-fun m!1168181 () Bool)

(assert (=> b!959086 m!1168181))

(declare-fun m!1168183 () Bool)

(assert (=> b!959086 m!1168183))

(declare-fun m!1168185 () Bool)

(assert (=> b!959091 m!1168185))

(push 1)

(assert (not b!959090))

(assert (not b!959087))

(assert (not b!959089))

(assert tp_is_empty!4951)

(assert (not b!959094))

(assert (not b!959088))

(assert (not start!85428))

(assert (not b!959091))

(assert (not b!959086))

(assert (not b!959096))

(assert (not b!959085))

(assert (not b!959093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!240686 () Bool)

(declare-fun b!959226 () Bool)

(assert (= bs!240686 (and b!959226 b!959094)))

(declare-fun lambda!33299 () Int)

(assert (=> bs!240686 (not (= lambda!33299 lambda!33283))))

(assert (=> bs!240686 (= (= r!15766 lt!346179) (= lambda!33299 lambda!33284))))

(assert (=> b!959226 true))

(assert (=> b!959226 true))

(declare-fun bs!240687 () Bool)

(declare-fun b!959228 () Bool)

(assert (= bs!240687 (and b!959228 b!959094)))

(declare-fun lambda!33300 () Int)

(assert (=> bs!240687 (not (= lambda!33300 lambda!33283))))

(assert (=> bs!240687 (not (= lambda!33300 lambda!33284))))

(declare-fun bs!240688 () Bool)

(assert (= bs!240688 (and b!959228 b!959226)))

(assert (=> bs!240688 (not (= lambda!33300 lambda!33299))))

(assert (=> b!959228 true))

(assert (=> b!959228 true))

(declare-fun b!959218 () Bool)

(declare-fun e!619807 () Bool)

(declare-fun e!619808 () Bool)

(assert (=> b!959218 (= e!619807 e!619808)))

(declare-fun c!156241 () Bool)

(assert (=> b!959218 (= c!156241 (is-Star!2654 r!15766))))

(declare-fun b!959219 () Bool)

(declare-fun e!619803 () Bool)

(declare-fun e!619805 () Bool)

(assert (=> b!959219 (= e!619803 e!619805)))

(declare-fun res!435919 () Bool)

(assert (=> b!959219 (= res!435919 (not (is-EmptyLang!2654 r!15766)))))

(assert (=> b!959219 (=> (not res!435919) (not e!619805))))

(declare-fun b!959220 () Bool)

(declare-fun e!619802 () Bool)

(assert (=> b!959220 (= e!619807 e!619802)))

(declare-fun res!435917 () Bool)

(assert (=> b!959220 (= res!435917 (matchRSpec!455 (regOne!5821 r!15766) s!10566))))

(assert (=> b!959220 (=> res!435917 e!619802)))

(declare-fun d!284945 () Bool)

(declare-fun c!156242 () Bool)

(assert (=> d!284945 (= c!156242 (is-EmptyExpr!2654 r!15766))))

(assert (=> d!284945 (= (matchRSpec!455 r!15766 s!10566) e!619803)))

(declare-fun call!60399 () Bool)

(declare-fun bm!60393 () Bool)

(assert (=> bm!60393 (= call!60399 (Exists!401 (ite c!156241 lambda!33299 lambda!33300)))))

(declare-fun b!959221 () Bool)

(assert (=> b!959221 (= e!619802 (matchRSpec!455 (regTwo!5821 r!15766) s!10566))))

(declare-fun b!959222 () Bool)

(declare-fun res!435918 () Bool)

(declare-fun e!619806 () Bool)

(assert (=> b!959222 (=> res!435918 e!619806)))

(declare-fun call!60398 () Bool)

(assert (=> b!959222 (= res!435918 call!60398)))

(assert (=> b!959222 (= e!619808 e!619806)))

(declare-fun b!959223 () Bool)

(declare-fun c!156243 () Bool)

(assert (=> b!959223 (= c!156243 (is-Union!2654 r!15766))))

(declare-fun e!619804 () Bool)

(assert (=> b!959223 (= e!619804 e!619807)))

(declare-fun b!959224 () Bool)

(assert (=> b!959224 (= e!619803 call!60398)))

(declare-fun b!959225 () Bool)

(assert (=> b!959225 (= e!619804 (= s!10566 (Cons!9868 (c!156220 r!15766) Nil!9868)))))

(assert (=> b!959226 (= e!619806 call!60399)))

(declare-fun b!959227 () Bool)

(declare-fun c!156244 () Bool)

(assert (=> b!959227 (= c!156244 (is-ElementMatch!2654 r!15766))))

(assert (=> b!959227 (= e!619805 e!619804)))

(declare-fun bm!60394 () Bool)

(assert (=> bm!60394 (= call!60398 (isEmpty!6154 s!10566))))

(assert (=> b!959228 (= e!619808 call!60399)))

(assert (= (and d!284945 c!156242) b!959224))

(assert (= (and d!284945 (not c!156242)) b!959219))

(assert (= (and b!959219 res!435919) b!959227))

(assert (= (and b!959227 c!156244) b!959225))

(assert (= (and b!959227 (not c!156244)) b!959223))

(assert (= (and b!959223 c!156243) b!959220))

(assert (= (and b!959223 (not c!156243)) b!959218))

(assert (= (and b!959220 (not res!435917)) b!959221))

(assert (= (and b!959218 c!156241) b!959222))

(assert (= (and b!959218 (not c!156241)) b!959228))

(assert (= (and b!959222 (not res!435918)) b!959226))

(assert (= (or b!959226 b!959228) bm!60393))

(assert (= (or b!959224 b!959222) bm!60394))

(declare-fun m!1168233 () Bool)

(assert (=> b!959220 m!1168233))

(declare-fun m!1168235 () Bool)

(assert (=> bm!60393 m!1168235))

(declare-fun m!1168237 () Bool)

(assert (=> b!959221 m!1168237))

(assert (=> bm!60394 m!1168147))

(assert (=> b!959089 d!284945))

(declare-fun b!959261 () Bool)

(declare-fun e!619829 () Bool)

(declare-fun e!619825 () Bool)

(assert (=> b!959261 (= e!619829 e!619825)))

(declare-fun res!435945 () Bool)

(assert (=> b!959261 (=> (not res!435945) (not e!619825))))

(declare-fun lt!346226 () Bool)

(assert (=> b!959261 (= res!435945 (not lt!346226))))

(declare-fun b!959262 () Bool)

(declare-fun e!619831 () Bool)

(declare-fun e!619828 () Bool)

(assert (=> b!959262 (= e!619831 e!619828)))

(declare-fun c!156253 () Bool)

(assert (=> b!959262 (= c!156253 (is-EmptyLang!2654 r!15766))))

(declare-fun b!959263 () Bool)

(declare-fun res!435941 () Bool)

(declare-fun e!619830 () Bool)

(assert (=> b!959263 (=> (not res!435941) (not e!619830))))

(declare-fun call!60406 () Bool)

(assert (=> b!959263 (= res!435941 (not call!60406))))

(declare-fun b!959264 () Bool)

(declare-fun e!619827 () Bool)

(assert (=> b!959264 (= e!619825 e!619827)))

(declare-fun res!435943 () Bool)

(assert (=> b!959264 (=> res!435943 e!619827)))

(assert (=> b!959264 (= res!435943 call!60406)))

(declare-fun b!959265 () Bool)

(declare-fun head!1759 (List!9884) C!5878)

(assert (=> b!959265 (= e!619827 (not (= (head!1759 s!10566) (c!156220 r!15766))))))

(declare-fun bm!60401 () Bool)

(assert (=> bm!60401 (= call!60406 (isEmpty!6154 s!10566))))

(declare-fun b!959266 () Bool)

(assert (=> b!959266 (= e!619828 (not lt!346226))))

(declare-fun b!959267 () Bool)

(declare-fun res!435946 () Bool)

(assert (=> b!959267 (=> res!435946 e!619829)))

(assert (=> b!959267 (= res!435946 (not (is-ElementMatch!2654 r!15766)))))

(assert (=> b!959267 (= e!619828 e!619829)))

(declare-fun b!959268 () Bool)

(assert (=> b!959268 (= e!619830 (= (head!1759 s!10566) (c!156220 r!15766)))))

(declare-fun b!959270 () Bool)

(declare-fun e!619826 () Bool)

(declare-fun nullable!797 (Regex!2654) Bool)

(assert (=> b!959270 (= e!619826 (nullable!797 r!15766))))

(declare-fun b!959271 () Bool)

(declare-fun res!435942 () Bool)

(assert (=> b!959271 (=> res!435942 e!619829)))

(assert (=> b!959271 (= res!435942 e!619830)))

(declare-fun res!435947 () Bool)

(assert (=> b!959271 (=> (not res!435947) (not e!619830))))

(assert (=> b!959271 (= res!435947 lt!346226)))

(declare-fun b!959272 () Bool)

(declare-fun derivativeStep!606 (Regex!2654 C!5878) Regex!2654)

(declare-fun tail!1321 (List!9884) List!9884)

(assert (=> b!959272 (= e!619826 (matchR!1192 (derivativeStep!606 r!15766 (head!1759 s!10566)) (tail!1321 s!10566)))))

(declare-fun b!959273 () Bool)

(declare-fun res!435944 () Bool)

(assert (=> b!959273 (=> (not res!435944) (not e!619830))))

(assert (=> b!959273 (= res!435944 (isEmpty!6154 (tail!1321 s!10566)))))

(declare-fun b!959274 () Bool)

(assert (=> b!959274 (= e!619831 (= lt!346226 call!60406))))

(declare-fun d!284947 () Bool)

(assert (=> d!284947 e!619831))

(declare-fun c!156251 () Bool)

(assert (=> d!284947 (= c!156251 (is-EmptyExpr!2654 r!15766))))

(assert (=> d!284947 (= lt!346226 e!619826)))

(declare-fun c!156252 () Bool)

(assert (=> d!284947 (= c!156252 (isEmpty!6154 s!10566))))

(assert (=> d!284947 (validRegex!1123 r!15766)))

(assert (=> d!284947 (= (matchR!1192 r!15766 s!10566) lt!346226)))

(declare-fun b!959269 () Bool)

(declare-fun res!435940 () Bool)

(assert (=> b!959269 (=> res!435940 e!619827)))

(assert (=> b!959269 (= res!435940 (not (isEmpty!6154 (tail!1321 s!10566))))))

(assert (= (and d!284947 c!156252) b!959270))

(assert (= (and d!284947 (not c!156252)) b!959272))

(assert (= (and d!284947 c!156251) b!959274))

(assert (= (and d!284947 (not c!156251)) b!959262))

(assert (= (and b!959262 c!156253) b!959266))

(assert (= (and b!959262 (not c!156253)) b!959267))

(assert (= (and b!959267 (not res!435946)) b!959271))

(assert (= (and b!959271 res!435947) b!959263))

(assert (= (and b!959263 res!435941) b!959273))

(assert (= (and b!959273 res!435944) b!959268))

(assert (= (and b!959271 (not res!435942)) b!959261))

(assert (= (and b!959261 res!435945) b!959264))

(assert (= (and b!959264 (not res!435943)) b!959269))

(assert (= (and b!959269 (not res!435940)) b!959265))

(assert (= (or b!959274 b!959263 b!959264) bm!60401))

(declare-fun m!1168239 () Bool)

(assert (=> b!959268 m!1168239))

(declare-fun m!1168241 () Bool)

(assert (=> b!959269 m!1168241))

(assert (=> b!959269 m!1168241))

(declare-fun m!1168243 () Bool)

(assert (=> b!959269 m!1168243))

(declare-fun m!1168245 () Bool)

(assert (=> b!959270 m!1168245))

(assert (=> b!959272 m!1168239))

(assert (=> b!959272 m!1168239))

(declare-fun m!1168247 () Bool)

(assert (=> b!959272 m!1168247))

(assert (=> b!959272 m!1168241))

(assert (=> b!959272 m!1168247))

(assert (=> b!959272 m!1168241))

(declare-fun m!1168249 () Bool)

(assert (=> b!959272 m!1168249))

(assert (=> b!959265 m!1168239))

(assert (=> b!959273 m!1168241))

(assert (=> b!959273 m!1168241))

(assert (=> b!959273 m!1168243))

(assert (=> d!284947 m!1168147))

(assert (=> d!284947 m!1168163))

(assert (=> bm!60401 m!1168147))

(assert (=> b!959089 d!284947))

(declare-fun d!284949 () Bool)

(assert (=> d!284949 (= (matchR!1192 r!15766 s!10566) (matchRSpec!455 r!15766 s!10566))))

(declare-fun lt!346229 () Unit!14955)

(declare-fun choose!6026 (Regex!2654 List!9884) Unit!14955)

(assert (=> d!284949 (= lt!346229 (choose!6026 r!15766 s!10566))))

(assert (=> d!284949 (validRegex!1123 r!15766)))

(assert (=> d!284949 (= (mainMatchTheorem!455 r!15766 s!10566) lt!346229)))

(declare-fun bs!240689 () Bool)

(assert (= bs!240689 d!284949))

(assert (=> bs!240689 m!1168157))

(assert (=> bs!240689 m!1168155))

(declare-fun m!1168251 () Bool)

(assert (=> bs!240689 m!1168251))

(assert (=> bs!240689 m!1168163))

(assert (=> b!959089 d!284949))

(declare-fun bs!240693 () Bool)

(declare-fun d!284951 () Bool)

(assert (= bs!240693 (and d!284951 b!959094)))

(declare-fun lambda!33309 () Int)

(assert (=> bs!240693 (= (= (Star!2654 (reg!2983 r!15766)) lt!346179) (= lambda!33309 lambda!33283))))

(assert (=> bs!240693 (not (= lambda!33309 lambda!33284))))

(declare-fun bs!240694 () Bool)

(assert (= bs!240694 (and d!284951 b!959226)))

(assert (=> bs!240694 (not (= lambda!33309 lambda!33299))))

(declare-fun bs!240695 () Bool)

(assert (= bs!240695 (and d!284951 b!959228)))

(assert (=> bs!240695 (not (= lambda!33309 lambda!33300))))

(assert (=> d!284951 true))

(assert (=> d!284951 true))

(declare-fun lambda!33310 () Int)

(assert (=> bs!240695 (not (= lambda!33310 lambda!33300))))

(declare-fun bs!240696 () Bool)

(assert (= bs!240696 d!284951))

(assert (=> bs!240696 (not (= lambda!33310 lambda!33309))))

(assert (=> bs!240694 (= (= (Star!2654 (reg!2983 r!15766)) r!15766) (= lambda!33310 lambda!33299))))

(assert (=> bs!240693 (= (= (Star!2654 (reg!2983 r!15766)) lt!346179) (= lambda!33310 lambda!33284))))

(assert (=> bs!240693 (not (= lambda!33310 lambda!33283))))

(assert (=> d!284951 true))

(assert (=> d!284951 true))

(assert (=> d!284951 (= (Exists!401 lambda!33309) (Exists!401 lambda!33310))))

(declare-fun lt!346232 () Unit!14955)

(declare-fun choose!6027 (Regex!2654 List!9884) Unit!14955)

(assert (=> d!284951 (= lt!346232 (choose!6027 (reg!2983 r!15766) s!10566))))

(assert (=> d!284951 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284951 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!129 (reg!2983 r!15766) s!10566) lt!346232)))

(declare-fun m!1168259 () Bool)

(assert (=> bs!240696 m!1168259))

(declare-fun m!1168261 () Bool)

(assert (=> bs!240696 m!1168261))

(declare-fun m!1168263 () Bool)

(assert (=> bs!240696 m!1168263))

(declare-fun m!1168265 () Bool)

(assert (=> bs!240696 m!1168265))

(assert (=> b!959094 d!284951))

(declare-fun bs!240697 () Bool)

(declare-fun d!284955 () Bool)

(assert (= bs!240697 (and d!284955 d!284951)))

(declare-fun lambda!33313 () Int)

(assert (=> bs!240697 (not (= lambda!33313 lambda!33310))))

(declare-fun bs!240698 () Bool)

(assert (= bs!240698 (and d!284955 b!959228)))

(assert (=> bs!240698 (not (= lambda!33313 lambda!33300))))

(assert (=> bs!240697 (= (= lt!346179 (Star!2654 (reg!2983 r!15766))) (= lambda!33313 lambda!33309))))

(declare-fun bs!240699 () Bool)

(assert (= bs!240699 (and d!284955 b!959226)))

(assert (=> bs!240699 (not (= lambda!33313 lambda!33299))))

(declare-fun bs!240700 () Bool)

(assert (= bs!240700 (and d!284955 b!959094)))

(assert (=> bs!240700 (not (= lambda!33313 lambda!33284))))

(assert (=> bs!240700 (= lambda!33313 lambda!33283)))

(assert (=> d!284955 true))

(assert (=> d!284955 true))

(assert (=> d!284955 true))

(assert (=> d!284955 (= (isDefined!1881 (findConcatSeparation!345 (reg!2983 r!15766) lt!346179 Nil!9868 s!10566 s!10566)) (Exists!401 lambda!33313))))

(declare-fun lt!346237 () Unit!14955)

(declare-fun choose!6028 (Regex!2654 Regex!2654 List!9884) Unit!14955)

(assert (=> d!284955 (= lt!346237 (choose!6028 (reg!2983 r!15766) lt!346179 s!10566))))

(assert (=> d!284955 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284955 (= (lemmaFindConcatSeparationEquivalentToExists!345 (reg!2983 r!15766) lt!346179 s!10566) lt!346237)))

(declare-fun bs!240701 () Bool)

(assert (= bs!240701 d!284955))

(assert (=> bs!240701 m!1168145))

(declare-fun m!1168267 () Bool)

(assert (=> bs!240701 m!1168267))

(declare-fun m!1168269 () Bool)

(assert (=> bs!240701 m!1168269))

(assert (=> bs!240701 m!1168145))

(declare-fun m!1168271 () Bool)

(assert (=> bs!240701 m!1168271))

(assert (=> bs!240701 m!1168265))

(assert (=> b!959094 d!284955))

(declare-fun d!284957 () Bool)

(declare-fun isEmpty!6156 (Option!2239) Bool)

(assert (=> d!284957 (= (isDefined!1881 lt!346176) (not (isEmpty!6156 lt!346176)))))

(declare-fun bs!240702 () Bool)

(assert (= bs!240702 d!284957))

(declare-fun m!1168273 () Bool)

(assert (=> bs!240702 m!1168273))

(assert (=> b!959094 d!284957))

(declare-fun b!959360 () Bool)

(declare-fun res!436002 () Bool)

(declare-fun e!619879 () Bool)

(assert (=> b!959360 (=> (not res!436002) (not e!619879))))

(declare-fun lt!346246 () Option!2239)

(assert (=> b!959360 (= res!436002 (matchR!1192 lt!346179 (_2!6423 (get!3355 lt!346246))))))

(declare-fun b!959361 () Bool)

(declare-fun e!619880 () Option!2239)

(assert (=> b!959361 (= e!619880 None!2238)))

(declare-fun b!959362 () Bool)

(declare-fun ++!2655 (List!9884 List!9884) List!9884)

(assert (=> b!959362 (= e!619879 (= (++!2655 (_1!6423 (get!3355 lt!346246)) (_2!6423 (get!3355 lt!346246))) s!10566))))

(declare-fun b!959363 () Bool)

(declare-fun res!435999 () Bool)

(assert (=> b!959363 (=> (not res!435999) (not e!619879))))

(assert (=> b!959363 (= res!435999 (matchR!1192 (reg!2983 r!15766) (_1!6423 (get!3355 lt!346246))))))

(declare-fun b!959364 () Bool)

(declare-fun e!619877 () Bool)

(assert (=> b!959364 (= e!619877 (not (isDefined!1881 lt!346246)))))

(declare-fun d!284959 () Bool)

(assert (=> d!284959 e!619877))

(declare-fun res!436001 () Bool)

(assert (=> d!284959 (=> res!436001 e!619877)))

(assert (=> d!284959 (= res!436001 e!619879)))

(declare-fun res!436000 () Bool)

(assert (=> d!284959 (=> (not res!436000) (not e!619879))))

(assert (=> d!284959 (= res!436000 (isDefined!1881 lt!346246))))

(declare-fun e!619876 () Option!2239)

(assert (=> d!284959 (= lt!346246 e!619876)))

(declare-fun c!156272 () Bool)

(declare-fun e!619878 () Bool)

(assert (=> d!284959 (= c!156272 e!619878)))

(declare-fun res!436003 () Bool)

(assert (=> d!284959 (=> (not res!436003) (not e!619878))))

(assert (=> d!284959 (= res!436003 (matchR!1192 (reg!2983 r!15766) Nil!9868))))

(assert (=> d!284959 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284959 (= (findConcatSeparation!345 (reg!2983 r!15766) lt!346179 Nil!9868 s!10566 s!10566) lt!346246)))

(declare-fun b!959365 () Bool)

(assert (=> b!959365 (= e!619876 (Some!2238 (tuple2!11195 Nil!9868 s!10566)))))

(declare-fun b!959366 () Bool)

(assert (=> b!959366 (= e!619876 e!619880)))

(declare-fun c!156271 () Bool)

(assert (=> b!959366 (= c!156271 (is-Nil!9868 s!10566))))

(declare-fun b!959367 () Bool)

(assert (=> b!959367 (= e!619878 (matchR!1192 lt!346179 s!10566))))

(declare-fun b!959368 () Bool)

(declare-fun lt!346247 () Unit!14955)

(declare-fun lt!346245 () Unit!14955)

(assert (=> b!959368 (= lt!346247 lt!346245)))

(assert (=> b!959368 (= (++!2655 (++!2655 Nil!9868 (Cons!9868 (h!15269 s!10566) Nil!9868)) (t!100930 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!260 (List!9884 C!5878 List!9884 List!9884) Unit!14955)

(assert (=> b!959368 (= lt!346245 (lemmaMoveElementToOtherListKeepsConcatEq!260 Nil!9868 (h!15269 s!10566) (t!100930 s!10566) s!10566))))

(assert (=> b!959368 (= e!619880 (findConcatSeparation!345 (reg!2983 r!15766) lt!346179 (++!2655 Nil!9868 (Cons!9868 (h!15269 s!10566) Nil!9868)) (t!100930 s!10566) s!10566))))

(assert (= (and d!284959 res!436003) b!959367))

(assert (= (and d!284959 c!156272) b!959365))

(assert (= (and d!284959 (not c!156272)) b!959366))

(assert (= (and b!959366 c!156271) b!959361))

(assert (= (and b!959366 (not c!156271)) b!959368))

(assert (= (and d!284959 res!436000) b!959363))

(assert (= (and b!959363 res!435999) b!959360))

(assert (= (and b!959360 res!436002) b!959362))

(assert (= (and d!284959 (not res!436001)) b!959364))

(declare-fun m!1168287 () Bool)

(assert (=> b!959360 m!1168287))

(declare-fun m!1168289 () Bool)

(assert (=> b!959360 m!1168289))

(declare-fun m!1168291 () Bool)

(assert (=> b!959367 m!1168291))

(assert (=> b!959363 m!1168287))

(declare-fun m!1168293 () Bool)

(assert (=> b!959363 m!1168293))

(assert (=> b!959362 m!1168287))

(declare-fun m!1168295 () Bool)

(assert (=> b!959362 m!1168295))

(declare-fun m!1168297 () Bool)

(assert (=> b!959364 m!1168297))

(assert (=> d!284959 m!1168297))

(declare-fun m!1168299 () Bool)

(assert (=> d!284959 m!1168299))

(assert (=> d!284959 m!1168265))

(declare-fun m!1168301 () Bool)

(assert (=> b!959368 m!1168301))

(assert (=> b!959368 m!1168301))

(declare-fun m!1168303 () Bool)

(assert (=> b!959368 m!1168303))

(declare-fun m!1168305 () Bool)

(assert (=> b!959368 m!1168305))

(assert (=> b!959368 m!1168301))

(declare-fun m!1168307 () Bool)

(assert (=> b!959368 m!1168307))

(assert (=> b!959094 d!284959))

(declare-fun d!284963 () Bool)

(declare-fun choose!6029 (Int) Bool)

(assert (=> d!284963 (= (Exists!401 lambda!33284) (choose!6029 lambda!33284))))

(declare-fun bs!240703 () Bool)

(assert (= bs!240703 d!284963))

(declare-fun m!1168309 () Bool)

(assert (=> bs!240703 m!1168309))

(assert (=> b!959094 d!284963))

(declare-fun d!284965 () Bool)

(assert (=> d!284965 (= (isEmpty!6154 s!10566) (is-Nil!9868 s!10566))))

(assert (=> b!959094 d!284965))

(declare-fun d!284967 () Bool)

(assert (=> d!284967 (= (Exists!401 lambda!33283) (choose!6029 lambda!33283))))

(declare-fun bs!240704 () Bool)

(assert (= bs!240704 d!284967))

(declare-fun m!1168311 () Bool)

(assert (=> bs!240704 m!1168311))

(assert (=> b!959094 d!284967))

(declare-fun d!284969 () Bool)

(assert (=> d!284969 (= (matchR!1192 (reg!2983 r!15766) (_1!6423 lt!346177)) (matchRSpec!455 (reg!2983 r!15766) (_1!6423 lt!346177)))))

(declare-fun lt!346251 () Unit!14955)

(assert (=> d!284969 (= lt!346251 (choose!6026 (reg!2983 r!15766) (_1!6423 lt!346177)))))

(assert (=> d!284969 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284969 (= (mainMatchTheorem!455 (reg!2983 r!15766) (_1!6423 lt!346177)) lt!346251)))

(declare-fun bs!240706 () Bool)

(assert (= bs!240706 d!284969))

(assert (=> bs!240706 m!1168181))

(declare-fun m!1168313 () Bool)

(assert (=> bs!240706 m!1168313))

(declare-fun m!1168315 () Bool)

(assert (=> bs!240706 m!1168315))

(assert (=> bs!240706 m!1168265))

(assert (=> b!959091 d!284969))

(declare-fun b!959369 () Bool)

(declare-fun e!619885 () Bool)

(declare-fun e!619881 () Bool)

(assert (=> b!959369 (= e!619885 e!619881)))

(declare-fun res!436009 () Bool)

(assert (=> b!959369 (=> (not res!436009) (not e!619881))))

(declare-fun lt!346252 () Bool)

(assert (=> b!959369 (= res!436009 (not lt!346252))))

(declare-fun b!959370 () Bool)

(declare-fun e!619887 () Bool)

(declare-fun e!619884 () Bool)

(assert (=> b!959370 (= e!619887 e!619884)))

(declare-fun c!156275 () Bool)

(assert (=> b!959370 (= c!156275 (is-EmptyLang!2654 lt!346179))))

(declare-fun b!959371 () Bool)

(declare-fun res!436005 () Bool)

(declare-fun e!619886 () Bool)

(assert (=> b!959371 (=> (not res!436005) (not e!619886))))

(declare-fun call!60412 () Bool)

(assert (=> b!959371 (= res!436005 (not call!60412))))

(declare-fun b!959372 () Bool)

(declare-fun e!619883 () Bool)

(assert (=> b!959372 (= e!619881 e!619883)))

(declare-fun res!436007 () Bool)

(assert (=> b!959372 (=> res!436007 e!619883)))

(assert (=> b!959372 (= res!436007 call!60412)))

(declare-fun b!959373 () Bool)

(assert (=> b!959373 (= e!619883 (not (= (head!1759 (_2!6423 lt!346177)) (c!156220 lt!346179))))))

(declare-fun bm!60407 () Bool)

(assert (=> bm!60407 (= call!60412 (isEmpty!6154 (_2!6423 lt!346177)))))

(declare-fun b!959374 () Bool)

(assert (=> b!959374 (= e!619884 (not lt!346252))))

(declare-fun b!959375 () Bool)

(declare-fun res!436010 () Bool)

(assert (=> b!959375 (=> res!436010 e!619885)))

(assert (=> b!959375 (= res!436010 (not (is-ElementMatch!2654 lt!346179)))))

(assert (=> b!959375 (= e!619884 e!619885)))

(declare-fun b!959376 () Bool)

(assert (=> b!959376 (= e!619886 (= (head!1759 (_2!6423 lt!346177)) (c!156220 lt!346179)))))

(declare-fun b!959378 () Bool)

(declare-fun e!619882 () Bool)

(assert (=> b!959378 (= e!619882 (nullable!797 lt!346179))))

(declare-fun b!959379 () Bool)

(declare-fun res!436006 () Bool)

(assert (=> b!959379 (=> res!436006 e!619885)))

(assert (=> b!959379 (= res!436006 e!619886)))

(declare-fun res!436011 () Bool)

(assert (=> b!959379 (=> (not res!436011) (not e!619886))))

(assert (=> b!959379 (= res!436011 lt!346252)))

(declare-fun b!959380 () Bool)

(assert (=> b!959380 (= e!619882 (matchR!1192 (derivativeStep!606 lt!346179 (head!1759 (_2!6423 lt!346177))) (tail!1321 (_2!6423 lt!346177))))))

(declare-fun b!959381 () Bool)

(declare-fun res!436008 () Bool)

(assert (=> b!959381 (=> (not res!436008) (not e!619886))))

(assert (=> b!959381 (= res!436008 (isEmpty!6154 (tail!1321 (_2!6423 lt!346177))))))

(declare-fun b!959382 () Bool)

(assert (=> b!959382 (= e!619887 (= lt!346252 call!60412))))

(declare-fun d!284971 () Bool)

(assert (=> d!284971 e!619887))

(declare-fun c!156273 () Bool)

(assert (=> d!284971 (= c!156273 (is-EmptyExpr!2654 lt!346179))))

(assert (=> d!284971 (= lt!346252 e!619882)))

(declare-fun c!156274 () Bool)

(assert (=> d!284971 (= c!156274 (isEmpty!6154 (_2!6423 lt!346177)))))

(assert (=> d!284971 (validRegex!1123 lt!346179)))

(assert (=> d!284971 (= (matchR!1192 lt!346179 (_2!6423 lt!346177)) lt!346252)))

(declare-fun b!959377 () Bool)

(declare-fun res!436004 () Bool)

(assert (=> b!959377 (=> res!436004 e!619883)))

(assert (=> b!959377 (= res!436004 (not (isEmpty!6154 (tail!1321 (_2!6423 lt!346177)))))))

(assert (= (and d!284971 c!156274) b!959378))

(assert (= (and d!284971 (not c!156274)) b!959380))

(assert (= (and d!284971 c!156273) b!959382))

(assert (= (and d!284971 (not c!156273)) b!959370))

(assert (= (and b!959370 c!156275) b!959374))

(assert (= (and b!959370 (not c!156275)) b!959375))

(assert (= (and b!959375 (not res!436010)) b!959379))

(assert (= (and b!959379 res!436011) b!959371))

(assert (= (and b!959371 res!436005) b!959381))

(assert (= (and b!959381 res!436008) b!959376))

(assert (= (and b!959379 (not res!436006)) b!959369))

(assert (= (and b!959369 res!436009) b!959372))

(assert (= (and b!959372 (not res!436007)) b!959377))

(assert (= (and b!959377 (not res!436004)) b!959373))

(assert (= (or b!959382 b!959371 b!959372) bm!60407))

(declare-fun m!1168319 () Bool)

(assert (=> b!959376 m!1168319))

(declare-fun m!1168321 () Bool)

(assert (=> b!959377 m!1168321))

(assert (=> b!959377 m!1168321))

(declare-fun m!1168323 () Bool)

(assert (=> b!959377 m!1168323))

(declare-fun m!1168325 () Bool)

(assert (=> b!959378 m!1168325))

(assert (=> b!959380 m!1168319))

(assert (=> b!959380 m!1168319))

(declare-fun m!1168327 () Bool)

(assert (=> b!959380 m!1168327))

(assert (=> b!959380 m!1168321))

(assert (=> b!959380 m!1168327))

(assert (=> b!959380 m!1168321))

(declare-fun m!1168329 () Bool)

(assert (=> b!959380 m!1168329))

(assert (=> b!959373 m!1168319))

(assert (=> b!959381 m!1168321))

(assert (=> b!959381 m!1168321))

(assert (=> b!959381 m!1168323))

(declare-fun m!1168331 () Bool)

(assert (=> d!284971 m!1168331))

(declare-fun m!1168333 () Bool)

(assert (=> d!284971 m!1168333))

(assert (=> bm!60407 m!1168331))

(assert (=> b!959096 d!284971))

(declare-fun bm!60416 () Bool)

(declare-fun call!60421 () Bool)

(declare-fun call!60422 () Bool)

(assert (=> bm!60416 (= call!60421 call!60422)))

(declare-fun b!959429 () Bool)

(declare-fun e!619918 () Bool)

(declare-fun e!619922 () Bool)

(assert (=> b!959429 (= e!619918 e!619922)))

(declare-fun res!436040 () Bool)

(assert (=> b!959429 (= res!436040 (not (nullable!797 (reg!2983 r!15766))))))

(assert (=> b!959429 (=> (not res!436040) (not e!619922))))

(declare-fun b!959430 () Bool)

(declare-fun e!619919 () Bool)

(assert (=> b!959430 (= e!619919 call!60421)))

(declare-fun b!959431 () Bool)

(declare-fun e!619921 () Bool)

(assert (=> b!959431 (= e!619921 e!619918)))

(declare-fun c!156287 () Bool)

(assert (=> b!959431 (= c!156287 (is-Star!2654 r!15766))))

(declare-fun b!959432 () Bool)

(declare-fun e!619916 () Bool)

(assert (=> b!959432 (= e!619918 e!619916)))

(declare-fun c!156286 () Bool)

(assert (=> b!959432 (= c!156286 (is-Union!2654 r!15766))))

(declare-fun b!959433 () Bool)

(declare-fun res!436038 () Bool)

(declare-fun e!619917 () Bool)

(assert (=> b!959433 (=> (not res!436038) (not e!619917))))

(declare-fun call!60423 () Bool)

(assert (=> b!959433 (= res!436038 call!60423)))

(assert (=> b!959433 (= e!619916 e!619917)))

(declare-fun b!959434 () Bool)

(declare-fun e!619920 () Bool)

(assert (=> b!959434 (= e!619920 e!619919)))

(declare-fun res!436042 () Bool)

(assert (=> b!959434 (=> (not res!436042) (not e!619919))))

(assert (=> b!959434 (= res!436042 call!60423)))

(declare-fun b!959435 () Bool)

(declare-fun res!436039 () Bool)

(assert (=> b!959435 (=> res!436039 e!619920)))

(assert (=> b!959435 (= res!436039 (not (is-Concat!4487 r!15766)))))

(assert (=> b!959435 (= e!619916 e!619920)))

(declare-fun b!959436 () Bool)

(assert (=> b!959436 (= e!619922 call!60422)))

(declare-fun b!959437 () Bool)

(assert (=> b!959437 (= e!619917 call!60421)))

(declare-fun bm!60417 () Bool)

(assert (=> bm!60417 (= call!60423 (validRegex!1123 (ite c!156286 (regOne!5821 r!15766) (regOne!5820 r!15766))))))

(declare-fun bm!60418 () Bool)

(assert (=> bm!60418 (= call!60422 (validRegex!1123 (ite c!156287 (reg!2983 r!15766) (ite c!156286 (regTwo!5821 r!15766) (regTwo!5820 r!15766)))))))

(declare-fun d!284975 () Bool)

(declare-fun res!436041 () Bool)

(assert (=> d!284975 (=> res!436041 e!619921)))

(assert (=> d!284975 (= res!436041 (is-ElementMatch!2654 r!15766))))

(assert (=> d!284975 (= (validRegex!1123 r!15766) e!619921)))

(assert (= (and d!284975 (not res!436041)) b!959431))

(assert (= (and b!959431 c!156287) b!959429))

(assert (= (and b!959431 (not c!156287)) b!959432))

(assert (= (and b!959429 res!436040) b!959436))

(assert (= (and b!959432 c!156286) b!959433))

(assert (= (and b!959432 (not c!156286)) b!959435))

(assert (= (and b!959433 res!436038) b!959437))

(assert (= (and b!959435 (not res!436039)) b!959434))

(assert (= (and b!959434 res!436042) b!959430))

(assert (= (or b!959437 b!959430) bm!60416))

(assert (= (or b!959433 b!959434) bm!60417))

(assert (= (or b!959436 bm!60416) bm!60418))

(declare-fun m!1168367 () Bool)

(assert (=> b!959429 m!1168367))

(declare-fun m!1168369 () Bool)

(assert (=> bm!60417 m!1168369))

(declare-fun m!1168371 () Bool)

(assert (=> bm!60418 m!1168371))

(assert (=> start!85428 d!284975))

(declare-fun b!959438 () Bool)

(declare-fun e!619927 () Bool)

(declare-fun e!619923 () Bool)

(assert (=> b!959438 (= e!619927 e!619923)))

(declare-fun res!436048 () Bool)

(assert (=> b!959438 (=> (not res!436048) (not e!619923))))

(declare-fun lt!346255 () Bool)

(assert (=> b!959438 (= res!436048 (not lt!346255))))

(declare-fun b!959439 () Bool)

(declare-fun e!619929 () Bool)

(declare-fun e!619926 () Bool)

(assert (=> b!959439 (= e!619929 e!619926)))

(declare-fun c!156290 () Bool)

(assert (=> b!959439 (= c!156290 (is-EmptyLang!2654 (reg!2983 r!15766)))))

(declare-fun b!959440 () Bool)

(declare-fun res!436044 () Bool)

(declare-fun e!619928 () Bool)

(assert (=> b!959440 (=> (not res!436044) (not e!619928))))

(declare-fun call!60424 () Bool)

(assert (=> b!959440 (= res!436044 (not call!60424))))

(declare-fun b!959441 () Bool)

(declare-fun e!619925 () Bool)

(assert (=> b!959441 (= e!619923 e!619925)))

(declare-fun res!436046 () Bool)

(assert (=> b!959441 (=> res!436046 e!619925)))

(assert (=> b!959441 (= res!436046 call!60424)))

(declare-fun b!959442 () Bool)

(assert (=> b!959442 (= e!619925 (not (= (head!1759 (_1!6423 lt!346177)) (c!156220 (reg!2983 r!15766)))))))

(declare-fun bm!60419 () Bool)

(assert (=> bm!60419 (= call!60424 (isEmpty!6154 (_1!6423 lt!346177)))))

(declare-fun b!959443 () Bool)

(assert (=> b!959443 (= e!619926 (not lt!346255))))

(declare-fun b!959444 () Bool)

(declare-fun res!436049 () Bool)

(assert (=> b!959444 (=> res!436049 e!619927)))

(assert (=> b!959444 (= res!436049 (not (is-ElementMatch!2654 (reg!2983 r!15766))))))

(assert (=> b!959444 (= e!619926 e!619927)))

(declare-fun b!959445 () Bool)

(assert (=> b!959445 (= e!619928 (= (head!1759 (_1!6423 lt!346177)) (c!156220 (reg!2983 r!15766))))))

(declare-fun b!959447 () Bool)

(declare-fun e!619924 () Bool)

(assert (=> b!959447 (= e!619924 (nullable!797 (reg!2983 r!15766)))))

(declare-fun b!959448 () Bool)

(declare-fun res!436045 () Bool)

(assert (=> b!959448 (=> res!436045 e!619927)))

(assert (=> b!959448 (= res!436045 e!619928)))

(declare-fun res!436050 () Bool)

(assert (=> b!959448 (=> (not res!436050) (not e!619928))))

(assert (=> b!959448 (= res!436050 lt!346255)))

(declare-fun b!959449 () Bool)

(assert (=> b!959449 (= e!619924 (matchR!1192 (derivativeStep!606 (reg!2983 r!15766) (head!1759 (_1!6423 lt!346177))) (tail!1321 (_1!6423 lt!346177))))))

(declare-fun b!959450 () Bool)

(declare-fun res!436047 () Bool)

(assert (=> b!959450 (=> (not res!436047) (not e!619928))))

(assert (=> b!959450 (= res!436047 (isEmpty!6154 (tail!1321 (_1!6423 lt!346177))))))

(declare-fun b!959451 () Bool)

(assert (=> b!959451 (= e!619929 (= lt!346255 call!60424))))

(declare-fun d!284983 () Bool)

(assert (=> d!284983 e!619929))

(declare-fun c!156288 () Bool)

(assert (=> d!284983 (= c!156288 (is-EmptyExpr!2654 (reg!2983 r!15766)))))

(assert (=> d!284983 (= lt!346255 e!619924)))

(declare-fun c!156289 () Bool)

(assert (=> d!284983 (= c!156289 (isEmpty!6154 (_1!6423 lt!346177)))))

(assert (=> d!284983 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284983 (= (matchR!1192 (reg!2983 r!15766) (_1!6423 lt!346177)) lt!346255)))

(declare-fun b!959446 () Bool)

(declare-fun res!436043 () Bool)

(assert (=> b!959446 (=> res!436043 e!619925)))

(assert (=> b!959446 (= res!436043 (not (isEmpty!6154 (tail!1321 (_1!6423 lt!346177)))))))

(assert (= (and d!284983 c!156289) b!959447))

(assert (= (and d!284983 (not c!156289)) b!959449))

(assert (= (and d!284983 c!156288) b!959451))

(assert (= (and d!284983 (not c!156288)) b!959439))

(assert (= (and b!959439 c!156290) b!959443))

(assert (= (and b!959439 (not c!156290)) b!959444))

(assert (= (and b!959444 (not res!436049)) b!959448))

(assert (= (and b!959448 res!436050) b!959440))

(assert (= (and b!959440 res!436044) b!959450))

(assert (= (and b!959450 res!436047) b!959445))

(assert (= (and b!959448 (not res!436045)) b!959438))

(assert (= (and b!959438 res!436048) b!959441))

(assert (= (and b!959441 (not res!436046)) b!959446))

(assert (= (and b!959446 (not res!436043)) b!959442))

(assert (= (or b!959451 b!959440 b!959441) bm!60419))

(declare-fun m!1168373 () Bool)

(assert (=> b!959445 m!1168373))

(declare-fun m!1168375 () Bool)

(assert (=> b!959446 m!1168375))

(assert (=> b!959446 m!1168375))

(declare-fun m!1168377 () Bool)

(assert (=> b!959446 m!1168377))

(assert (=> b!959447 m!1168367))

(assert (=> b!959449 m!1168373))

(assert (=> b!959449 m!1168373))

(declare-fun m!1168379 () Bool)

(assert (=> b!959449 m!1168379))

(assert (=> b!959449 m!1168375))

(assert (=> b!959449 m!1168379))

(assert (=> b!959449 m!1168375))

(declare-fun m!1168381 () Bool)

(assert (=> b!959449 m!1168381))

(assert (=> b!959442 m!1168373))

(assert (=> b!959450 m!1168375))

(assert (=> b!959450 m!1168375))

(assert (=> b!959450 m!1168377))

(declare-fun m!1168383 () Bool)

(assert (=> d!284983 m!1168383))

(assert (=> d!284983 m!1168265))

(assert (=> bm!60419 m!1168383))

(assert (=> b!959086 d!284983))

(declare-fun d!284985 () Bool)

(assert (=> d!284985 (= (get!3355 lt!346176) (v!19655 lt!346176))))

(assert (=> b!959086 d!284985))

(declare-fun b!959452 () Bool)

(declare-fun e!619934 () Bool)

(declare-fun e!619930 () Bool)

(assert (=> b!959452 (= e!619934 e!619930)))

(declare-fun res!436056 () Bool)

(assert (=> b!959452 (=> (not res!436056) (not e!619930))))

(declare-fun lt!346256 () Bool)

(assert (=> b!959452 (= res!436056 (not lt!346256))))

(declare-fun b!959453 () Bool)

(declare-fun e!619936 () Bool)

(declare-fun e!619933 () Bool)

(assert (=> b!959453 (= e!619936 e!619933)))

(declare-fun c!156293 () Bool)

(assert (=> b!959453 (= c!156293 (is-EmptyLang!2654 lt!346170))))

(declare-fun b!959454 () Bool)

(declare-fun res!436052 () Bool)

(declare-fun e!619935 () Bool)

(assert (=> b!959454 (=> (not res!436052) (not e!619935))))

(declare-fun call!60425 () Bool)

(assert (=> b!959454 (= res!436052 (not call!60425))))

(declare-fun b!959455 () Bool)

(declare-fun e!619932 () Bool)

(assert (=> b!959455 (= e!619930 e!619932)))

(declare-fun res!436054 () Bool)

(assert (=> b!959455 (=> res!436054 e!619932)))

(assert (=> b!959455 (= res!436054 call!60425)))

(declare-fun b!959456 () Bool)

(assert (=> b!959456 (= e!619932 (not (= (head!1759 (_1!6423 lt!346177)) (c!156220 lt!346170))))))

(declare-fun bm!60420 () Bool)

(assert (=> bm!60420 (= call!60425 (isEmpty!6154 (_1!6423 lt!346177)))))

(declare-fun b!959457 () Bool)

(assert (=> b!959457 (= e!619933 (not lt!346256))))

(declare-fun b!959458 () Bool)

(declare-fun res!436057 () Bool)

(assert (=> b!959458 (=> res!436057 e!619934)))

(assert (=> b!959458 (= res!436057 (not (is-ElementMatch!2654 lt!346170)))))

(assert (=> b!959458 (= e!619933 e!619934)))

(declare-fun b!959459 () Bool)

(assert (=> b!959459 (= e!619935 (= (head!1759 (_1!6423 lt!346177)) (c!156220 lt!346170)))))

(declare-fun b!959461 () Bool)

(declare-fun e!619931 () Bool)

(assert (=> b!959461 (= e!619931 (nullable!797 lt!346170))))

(declare-fun b!959462 () Bool)

(declare-fun res!436053 () Bool)

(assert (=> b!959462 (=> res!436053 e!619934)))

(assert (=> b!959462 (= res!436053 e!619935)))

(declare-fun res!436058 () Bool)

(assert (=> b!959462 (=> (not res!436058) (not e!619935))))

(assert (=> b!959462 (= res!436058 lt!346256)))

(declare-fun b!959463 () Bool)

(assert (=> b!959463 (= e!619931 (matchR!1192 (derivativeStep!606 lt!346170 (head!1759 (_1!6423 lt!346177))) (tail!1321 (_1!6423 lt!346177))))))

(declare-fun b!959464 () Bool)

(declare-fun res!436055 () Bool)

(assert (=> b!959464 (=> (not res!436055) (not e!619935))))

(assert (=> b!959464 (= res!436055 (isEmpty!6154 (tail!1321 (_1!6423 lt!346177))))))

(declare-fun b!959465 () Bool)

(assert (=> b!959465 (= e!619936 (= lt!346256 call!60425))))

(declare-fun d!284987 () Bool)

(assert (=> d!284987 e!619936))

(declare-fun c!156291 () Bool)

(assert (=> d!284987 (= c!156291 (is-EmptyExpr!2654 lt!346170))))

(assert (=> d!284987 (= lt!346256 e!619931)))

(declare-fun c!156292 () Bool)

(assert (=> d!284987 (= c!156292 (isEmpty!6154 (_1!6423 lt!346177)))))

(assert (=> d!284987 (validRegex!1123 lt!346170)))

(assert (=> d!284987 (= (matchR!1192 lt!346170 (_1!6423 lt!346177)) lt!346256)))

(declare-fun b!959460 () Bool)

(declare-fun res!436051 () Bool)

(assert (=> b!959460 (=> res!436051 e!619932)))

(assert (=> b!959460 (= res!436051 (not (isEmpty!6154 (tail!1321 (_1!6423 lt!346177)))))))

(assert (= (and d!284987 c!156292) b!959461))

(assert (= (and d!284987 (not c!156292)) b!959463))

(assert (= (and d!284987 c!156291) b!959465))

(assert (= (and d!284987 (not c!156291)) b!959453))

(assert (= (and b!959453 c!156293) b!959457))

(assert (= (and b!959453 (not c!156293)) b!959458))

(assert (= (and b!959458 (not res!436057)) b!959462))

(assert (= (and b!959462 res!436058) b!959454))

(assert (= (and b!959454 res!436052) b!959464))

(assert (= (and b!959464 res!436055) b!959459))

(assert (= (and b!959462 (not res!436053)) b!959452))

(assert (= (and b!959452 res!436056) b!959455))

(assert (= (and b!959455 (not res!436054)) b!959460))

(assert (= (and b!959460 (not res!436051)) b!959456))

(assert (= (or b!959465 b!959454 b!959455) bm!60420))

(assert (=> b!959459 m!1168373))

(assert (=> b!959460 m!1168375))

(assert (=> b!959460 m!1168375))

(assert (=> b!959460 m!1168377))

(declare-fun m!1168385 () Bool)

(assert (=> b!959461 m!1168385))

(assert (=> b!959463 m!1168373))

(assert (=> b!959463 m!1168373))

(declare-fun m!1168387 () Bool)

(assert (=> b!959463 m!1168387))

(assert (=> b!959463 m!1168375))

(assert (=> b!959463 m!1168387))

(assert (=> b!959463 m!1168375))

(declare-fun m!1168389 () Bool)

(assert (=> b!959463 m!1168389))

(assert (=> b!959456 m!1168373))

(assert (=> b!959464 m!1168375))

(assert (=> b!959464 m!1168375))

(assert (=> b!959464 m!1168377))

(assert (=> d!284987 m!1168383))

(declare-fun m!1168391 () Bool)

(assert (=> d!284987 m!1168391))

(assert (=> bm!60420 m!1168383))

(assert (=> b!959093 d!284987))

(declare-fun d!284989 () Bool)

(declare-fun lt!346259 () Int)

(assert (=> d!284989 (>= lt!346259 0)))

(declare-fun e!619953 () Int)

(assert (=> d!284989 (= lt!346259 e!619953)))

(declare-fun c!156300 () Bool)

(assert (=> d!284989 (= c!156300 (is-Nil!9868 s!10566))))

(assert (=> d!284989 (= (size!7926 s!10566) lt!346259)))

(declare-fun b!959488 () Bool)

(assert (=> b!959488 (= e!619953 0)))

(declare-fun b!959489 () Bool)

(assert (=> b!959489 (= e!619953 (+ 1 (size!7926 (t!100930 s!10566))))))

(assert (= (and d!284989 c!156300) b!959488))

(assert (= (and d!284989 (not c!156300)) b!959489))

(declare-fun m!1168393 () Bool)

(assert (=> b!959489 m!1168393))

(assert (=> b!959093 d!284989))

(declare-fun d!284991 () Bool)

(assert (=> d!284991 (= (matchR!1192 lt!346179 (_2!6423 lt!346177)) (matchR!1192 (removeUselessConcat!305 lt!346179) (_2!6423 lt!346177)))))

(declare-fun lt!346262 () Unit!14955)

(declare-fun choose!6030 (Regex!2654 List!9884) Unit!14955)

(assert (=> d!284991 (= lt!346262 (choose!6030 lt!346179 (_2!6423 lt!346177)))))

(assert (=> d!284991 (validRegex!1123 lt!346179)))

(assert (=> d!284991 (= (lemmaRemoveUselessConcatSound!165 lt!346179 (_2!6423 lt!346177)) lt!346262)))

(declare-fun bs!240707 () Bool)

(assert (= bs!240707 d!284991))

(assert (=> bs!240707 m!1168333))

(assert (=> bs!240707 m!1168175))

(declare-fun m!1168395 () Bool)

(assert (=> bs!240707 m!1168395))

(declare-fun m!1168397 () Bool)

(assert (=> bs!240707 m!1168397))

(assert (=> bs!240707 m!1168161))

(assert (=> bs!240707 m!1168175))

(assert (=> b!959093 d!284991))

(declare-fun d!284993 () Bool)

(declare-fun lt!346263 () Int)

(assert (=> d!284993 (>= lt!346263 0)))

(declare-fun e!619954 () Int)

(assert (=> d!284993 (= lt!346263 e!619954)))

(declare-fun c!156301 () Bool)

(assert (=> d!284993 (= c!156301 (is-Nil!9868 (_2!6423 lt!346177)))))

(assert (=> d!284993 (= (size!7926 (_2!6423 lt!346177)) lt!346263)))

(declare-fun b!959490 () Bool)

(assert (=> b!959490 (= e!619954 0)))

(declare-fun b!959491 () Bool)

(assert (=> b!959491 (= e!619954 (+ 1 (size!7926 (t!100930 (_2!6423 lt!346177)))))))

(assert (= (and d!284993 c!156301) b!959490))

(assert (= (and d!284993 (not c!156301)) b!959491))

(declare-fun m!1168399 () Bool)

(assert (=> b!959491 m!1168399))

(assert (=> b!959093 d!284993))

(declare-fun b!959551 () Bool)

(declare-fun c!156324 () Bool)

(assert (=> b!959551 (= c!156324 (is-Concat!4487 (reg!2983 r!15766)))))

(declare-fun e!619990 () Regex!2654)

(declare-fun e!619992 () Regex!2654)

(assert (=> b!959551 (= e!619990 e!619992)))

(declare-fun b!959552 () Bool)

(declare-fun call!60451 () Regex!2654)

(assert (=> b!959552 (= e!619990 call!60451)))

(declare-fun b!959553 () Bool)

(declare-fun e!619989 () Bool)

(declare-fun lt!346268 () Regex!2654)

(assert (=> b!959553 (= e!619989 (= (nullable!797 lt!346268) (nullable!797 (reg!2983 r!15766))))))

(declare-fun b!959554 () Bool)

(declare-fun call!60449 () Regex!2654)

(declare-fun call!60450 () Regex!2654)

(assert (=> b!959554 (= e!619992 (Concat!4487 call!60449 call!60450))))

(declare-fun b!959555 () Bool)

(declare-fun c!156323 () Bool)

(assert (=> b!959555 (= c!156323 (is-Star!2654 (reg!2983 r!15766)))))

(declare-fun e!619993 () Regex!2654)

(declare-fun e!619988 () Regex!2654)

(assert (=> b!959555 (= e!619993 e!619988)))

(declare-fun bm!60442 () Bool)

(assert (=> bm!60442 (= call!60450 call!60451)))

(declare-fun call!60447 () Regex!2654)

(declare-fun c!156322 () Bool)

(declare-fun bm!60443 () Bool)

(declare-fun c!156320 () Bool)

(declare-fun c!156321 () Bool)

(assert (=> bm!60443 (= call!60447 (removeUselessConcat!305 (ite c!156320 (regTwo!5820 (reg!2983 r!15766)) (ite c!156321 (regOne!5820 (reg!2983 r!15766)) (ite c!156324 (regTwo!5820 (reg!2983 r!15766)) (ite c!156322 (regTwo!5821 (reg!2983 r!15766)) (reg!2983 (reg!2983 r!15766))))))))))

(declare-fun bm!60444 () Bool)

(assert (=> bm!60444 (= call!60451 call!60447)))

(declare-fun bm!60445 () Bool)

(declare-fun call!60448 () Regex!2654)

(assert (=> bm!60445 (= call!60448 call!60450)))

(declare-fun b!959556 () Bool)

(assert (=> b!959556 (= e!619993 (Union!2654 call!60449 call!60448))))

(declare-fun b!959558 () Bool)

(assert (=> b!959558 (= e!619988 (Star!2654 call!60448))))

(declare-fun b!959559 () Bool)

(declare-fun e!619991 () Regex!2654)

(assert (=> b!959559 (= e!619991 call!60447)))

(declare-fun b!959560 () Bool)

(assert (=> b!959560 (= e!619988 (reg!2983 r!15766))))

(declare-fun b!959561 () Bool)

(assert (=> b!959561 (= e!619992 e!619993)))

(assert (=> b!959561 (= c!156322 (is-Union!2654 (reg!2983 r!15766)))))

(declare-fun bm!60446 () Bool)

(assert (=> bm!60446 (= call!60449 (removeUselessConcat!305 (ite c!156324 (regOne!5820 (reg!2983 r!15766)) (regOne!5821 (reg!2983 r!15766)))))))

(declare-fun d!284995 () Bool)

(assert (=> d!284995 e!619989))

(declare-fun res!436092 () Bool)

(assert (=> d!284995 (=> (not res!436092) (not e!619989))))

(assert (=> d!284995 (= res!436092 (validRegex!1123 lt!346268))))

(assert (=> d!284995 (= lt!346268 e!619991)))

(assert (=> d!284995 (= c!156320 (and (is-Concat!4487 (reg!2983 r!15766)) (is-EmptyExpr!2654 (regOne!5820 (reg!2983 r!15766)))))))

(assert (=> d!284995 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!284995 (= (removeUselessConcat!305 (reg!2983 r!15766)) lt!346268)))

(declare-fun b!959557 () Bool)

(assert (=> b!959557 (= e!619991 e!619990)))

(assert (=> b!959557 (= c!156321 (and (is-Concat!4487 (reg!2983 r!15766)) (is-EmptyExpr!2654 (regTwo!5820 (reg!2983 r!15766)))))))

(assert (= (and d!284995 c!156320) b!959559))

(assert (= (and d!284995 (not c!156320)) b!959557))

(assert (= (and b!959557 c!156321) b!959552))

(assert (= (and b!959557 (not c!156321)) b!959551))

(assert (= (and b!959551 c!156324) b!959554))

(assert (= (and b!959551 (not c!156324)) b!959561))

(assert (= (and b!959561 c!156322) b!959556))

(assert (= (and b!959561 (not c!156322)) b!959555))

(assert (= (and b!959555 c!156323) b!959558))

(assert (= (and b!959555 (not c!156323)) b!959560))

(assert (= (or b!959556 b!959558) bm!60445))

(assert (= (or b!959554 bm!60445) bm!60442))

(assert (= (or b!959554 b!959556) bm!60446))

(assert (= (or b!959552 bm!60442) bm!60444))

(assert (= (or b!959559 bm!60444) bm!60443))

(assert (= (and d!284995 res!436092) b!959553))

(declare-fun m!1168413 () Bool)

(assert (=> b!959553 m!1168413))

(assert (=> b!959553 m!1168367))

(declare-fun m!1168415 () Bool)

(assert (=> bm!60443 m!1168415))

(declare-fun m!1168417 () Bool)

(assert (=> bm!60446 m!1168417))

(declare-fun m!1168419 () Bool)

(assert (=> d!284995 m!1168419))

(assert (=> d!284995 m!1168265))

(assert (=> b!959093 d!284995))

(declare-fun b!959562 () Bool)

(declare-fun e!619998 () Bool)

(declare-fun e!619994 () Bool)

(assert (=> b!959562 (= e!619998 e!619994)))

(declare-fun res!436098 () Bool)

(assert (=> b!959562 (=> (not res!436098) (not e!619994))))

(declare-fun lt!346269 () Bool)

(assert (=> b!959562 (= res!436098 (not lt!346269))))

(declare-fun b!959563 () Bool)

(declare-fun e!620000 () Bool)

(declare-fun e!619997 () Bool)

(assert (=> b!959563 (= e!620000 e!619997)))

(declare-fun c!156327 () Bool)

(assert (=> b!959563 (= c!156327 (is-EmptyLang!2654 lt!346178))))

(declare-fun b!959564 () Bool)

(declare-fun res!436094 () Bool)

(declare-fun e!619999 () Bool)

(assert (=> b!959564 (=> (not res!436094) (not e!619999))))

(declare-fun call!60452 () Bool)

(assert (=> b!959564 (= res!436094 (not call!60452))))

(declare-fun b!959565 () Bool)

(declare-fun e!619996 () Bool)

(assert (=> b!959565 (= e!619994 e!619996)))

(declare-fun res!436096 () Bool)

(assert (=> b!959565 (=> res!436096 e!619996)))

(assert (=> b!959565 (= res!436096 call!60452)))

(declare-fun b!959566 () Bool)

(assert (=> b!959566 (= e!619996 (not (= (head!1759 (_2!6423 lt!346177)) (c!156220 lt!346178))))))

(declare-fun bm!60447 () Bool)

(assert (=> bm!60447 (= call!60452 (isEmpty!6154 (_2!6423 lt!346177)))))

(declare-fun b!959567 () Bool)

(assert (=> b!959567 (= e!619997 (not lt!346269))))

(declare-fun b!959568 () Bool)

(declare-fun res!436099 () Bool)

(assert (=> b!959568 (=> res!436099 e!619998)))

(assert (=> b!959568 (= res!436099 (not (is-ElementMatch!2654 lt!346178)))))

(assert (=> b!959568 (= e!619997 e!619998)))

(declare-fun b!959569 () Bool)

(assert (=> b!959569 (= e!619999 (= (head!1759 (_2!6423 lt!346177)) (c!156220 lt!346178)))))

(declare-fun b!959571 () Bool)

(declare-fun e!619995 () Bool)

(assert (=> b!959571 (= e!619995 (nullable!797 lt!346178))))

(declare-fun b!959572 () Bool)

(declare-fun res!436095 () Bool)

(assert (=> b!959572 (=> res!436095 e!619998)))

(assert (=> b!959572 (= res!436095 e!619999)))

(declare-fun res!436100 () Bool)

(assert (=> b!959572 (=> (not res!436100) (not e!619999))))

(assert (=> b!959572 (= res!436100 lt!346269)))

(declare-fun b!959573 () Bool)

(assert (=> b!959573 (= e!619995 (matchR!1192 (derivativeStep!606 lt!346178 (head!1759 (_2!6423 lt!346177))) (tail!1321 (_2!6423 lt!346177))))))

(declare-fun b!959574 () Bool)

(declare-fun res!436097 () Bool)

(assert (=> b!959574 (=> (not res!436097) (not e!619999))))

(assert (=> b!959574 (= res!436097 (isEmpty!6154 (tail!1321 (_2!6423 lt!346177))))))

(declare-fun b!959575 () Bool)

(assert (=> b!959575 (= e!620000 (= lt!346269 call!60452))))

(declare-fun d!285001 () Bool)

(assert (=> d!285001 e!620000))

(declare-fun c!156325 () Bool)

(assert (=> d!285001 (= c!156325 (is-EmptyExpr!2654 lt!346178))))

(assert (=> d!285001 (= lt!346269 e!619995)))

(declare-fun c!156326 () Bool)

(assert (=> d!285001 (= c!156326 (isEmpty!6154 (_2!6423 lt!346177)))))

(assert (=> d!285001 (validRegex!1123 lt!346178)))

(assert (=> d!285001 (= (matchR!1192 lt!346178 (_2!6423 lt!346177)) lt!346269)))

(declare-fun b!959570 () Bool)

(declare-fun res!436093 () Bool)

(assert (=> b!959570 (=> res!436093 e!619996)))

(assert (=> b!959570 (= res!436093 (not (isEmpty!6154 (tail!1321 (_2!6423 lt!346177)))))))

(assert (= (and d!285001 c!156326) b!959571))

(assert (= (and d!285001 (not c!156326)) b!959573))

(assert (= (and d!285001 c!156325) b!959575))

(assert (= (and d!285001 (not c!156325)) b!959563))

(assert (= (and b!959563 c!156327) b!959567))

(assert (= (and b!959563 (not c!156327)) b!959568))

(assert (= (and b!959568 (not res!436099)) b!959572))

(assert (= (and b!959572 res!436100) b!959564))

(assert (= (and b!959564 res!436094) b!959574))

(assert (= (and b!959574 res!436097) b!959569))

(assert (= (and b!959572 (not res!436095)) b!959562))

(assert (= (and b!959562 res!436098) b!959565))

(assert (= (and b!959565 (not res!436096)) b!959570))

(assert (= (and b!959570 (not res!436093)) b!959566))

(assert (= (or b!959575 b!959564 b!959565) bm!60447))

(assert (=> b!959569 m!1168319))

(assert (=> b!959570 m!1168321))

(assert (=> b!959570 m!1168321))

(assert (=> b!959570 m!1168323))

(declare-fun m!1168427 () Bool)

(assert (=> b!959571 m!1168427))

(assert (=> b!959573 m!1168319))

(assert (=> b!959573 m!1168319))

(declare-fun m!1168429 () Bool)

(assert (=> b!959573 m!1168429))

(assert (=> b!959573 m!1168321))

(assert (=> b!959573 m!1168429))

(assert (=> b!959573 m!1168321))

(declare-fun m!1168431 () Bool)

(assert (=> b!959573 m!1168431))

(assert (=> b!959566 m!1168319))

(assert (=> b!959574 m!1168321))

(assert (=> b!959574 m!1168321))

(assert (=> b!959574 m!1168323))

(assert (=> d!285001 m!1168331))

(declare-fun m!1168435 () Bool)

(assert (=> d!285001 m!1168435))

(assert (=> bm!60447 m!1168331))

(assert (=> b!959093 d!285001))

(declare-fun d!285005 () Bool)

(assert (=> d!285005 (= (matchR!1192 (reg!2983 r!15766) (_1!6423 lt!346177)) (matchR!1192 (removeUselessConcat!305 (reg!2983 r!15766)) (_1!6423 lt!346177)))))

(declare-fun lt!346270 () Unit!14955)

(assert (=> d!285005 (= lt!346270 (choose!6030 (reg!2983 r!15766) (_1!6423 lt!346177)))))

(assert (=> d!285005 (validRegex!1123 (reg!2983 r!15766))))

(assert (=> d!285005 (= (lemmaRemoveUselessConcatSound!165 (reg!2983 r!15766) (_1!6423 lt!346177)) lt!346270)))

(declare-fun bs!240708 () Bool)

(assert (= bs!240708 d!285005))

(assert (=> bs!240708 m!1168265))

(assert (=> bs!240708 m!1168177))

(declare-fun m!1168437 () Bool)

(assert (=> bs!240708 m!1168437))

(declare-fun m!1168439 () Bool)

(assert (=> bs!240708 m!1168439))

(assert (=> bs!240708 m!1168181))

(assert (=> bs!240708 m!1168177))

(assert (=> b!959093 d!285005))

(declare-fun b!959576 () Bool)

(declare-fun c!156332 () Bool)

(assert (=> b!959576 (= c!156332 (is-Concat!4487 lt!346179))))

(declare-fun e!620003 () Regex!2654)

(declare-fun e!620005 () Regex!2654)

(assert (=> b!959576 (= e!620003 e!620005)))

(declare-fun b!959577 () Bool)

(declare-fun call!60457 () Regex!2654)

(assert (=> b!959577 (= e!620003 call!60457)))

(declare-fun b!959578 () Bool)

(declare-fun e!620002 () Bool)

(declare-fun lt!346271 () Regex!2654)

(assert (=> b!959578 (= e!620002 (= (nullable!797 lt!346271) (nullable!797 lt!346179)))))

(declare-fun b!959579 () Bool)

(declare-fun call!60455 () Regex!2654)

(declare-fun call!60456 () Regex!2654)

(assert (=> b!959579 (= e!620005 (Concat!4487 call!60455 call!60456))))

(declare-fun b!959580 () Bool)

(declare-fun c!156331 () Bool)

(assert (=> b!959580 (= c!156331 (is-Star!2654 lt!346179))))

(declare-fun e!620006 () Regex!2654)

(declare-fun e!620001 () Regex!2654)

(assert (=> b!959580 (= e!620006 e!620001)))

(declare-fun bm!60448 () Bool)

(assert (=> bm!60448 (= call!60456 call!60457)))

(declare-fun call!60453 () Regex!2654)

(declare-fun c!156329 () Bool)

(declare-fun c!156330 () Bool)

(declare-fun c!156328 () Bool)

(declare-fun bm!60449 () Bool)

(assert (=> bm!60449 (= call!60453 (removeUselessConcat!305 (ite c!156328 (regTwo!5820 lt!346179) (ite c!156329 (regOne!5820 lt!346179) (ite c!156332 (regTwo!5820 lt!346179) (ite c!156330 (regTwo!5821 lt!346179) (reg!2983 lt!346179)))))))))

(declare-fun bm!60450 () Bool)

(assert (=> bm!60450 (= call!60457 call!60453)))

(declare-fun bm!60451 () Bool)

(declare-fun call!60454 () Regex!2654)

(assert (=> bm!60451 (= call!60454 call!60456)))

(declare-fun b!959581 () Bool)

(assert (=> b!959581 (= e!620006 (Union!2654 call!60455 call!60454))))

(declare-fun b!959583 () Bool)

(assert (=> b!959583 (= e!620001 (Star!2654 call!60454))))

(declare-fun b!959584 () Bool)

(declare-fun e!620004 () Regex!2654)

(assert (=> b!959584 (= e!620004 call!60453)))

(declare-fun b!959585 () Bool)

(assert (=> b!959585 (= e!620001 lt!346179)))

(declare-fun b!959586 () Bool)

(assert (=> b!959586 (= e!620005 e!620006)))

(assert (=> b!959586 (= c!156330 (is-Union!2654 lt!346179))))

(declare-fun bm!60452 () Bool)

(assert (=> bm!60452 (= call!60455 (removeUselessConcat!305 (ite c!156332 (regOne!5820 lt!346179) (regOne!5821 lt!346179))))))

(declare-fun d!285007 () Bool)

(assert (=> d!285007 e!620002))

(declare-fun res!436101 () Bool)

(assert (=> d!285007 (=> (not res!436101) (not e!620002))))

(assert (=> d!285007 (= res!436101 (validRegex!1123 lt!346271))))

(assert (=> d!285007 (= lt!346271 e!620004)))

(assert (=> d!285007 (= c!156328 (and (is-Concat!4487 lt!346179) (is-EmptyExpr!2654 (regOne!5820 lt!346179))))))

(assert (=> d!285007 (validRegex!1123 lt!346179)))

(assert (=> d!285007 (= (removeUselessConcat!305 lt!346179) lt!346271)))

(declare-fun b!959582 () Bool)

(assert (=> b!959582 (= e!620004 e!620003)))

(assert (=> b!959582 (= c!156329 (and (is-Concat!4487 lt!346179) (is-EmptyExpr!2654 (regTwo!5820 lt!346179))))))

(assert (= (and d!285007 c!156328) b!959584))

(assert (= (and d!285007 (not c!156328)) b!959582))

(assert (= (and b!959582 c!156329) b!959577))

(assert (= (and b!959582 (not c!156329)) b!959576))

(assert (= (and b!959576 c!156332) b!959579))

(assert (= (and b!959576 (not c!156332)) b!959586))

(assert (= (and b!959586 c!156330) b!959581))

(assert (= (and b!959586 (not c!156330)) b!959580))

(assert (= (and b!959580 c!156331) b!959583))

(assert (= (and b!959580 (not c!156331)) b!959585))

(assert (= (or b!959581 b!959583) bm!60451))

(assert (= (or b!959579 bm!60451) bm!60448))

(assert (= (or b!959579 b!959581) bm!60452))

(assert (= (or b!959577 bm!60448) bm!60450))

(assert (= (or b!959584 bm!60450) bm!60449))

(assert (= (and d!285007 res!436101) b!959578))

(declare-fun m!1168441 () Bool)

(assert (=> b!959578 m!1168441))

(assert (=> b!959578 m!1168325))

(declare-fun m!1168443 () Bool)

(assert (=> bm!60449 m!1168443))

(declare-fun m!1168445 () Bool)

(assert (=> bm!60452 m!1168445))

(declare-fun m!1168447 () Bool)

(assert (=> d!285007 m!1168447))

(assert (=> d!285007 m!1168333))

(assert (=> b!959093 d!285007))

(declare-fun b!959599 () Bool)

(declare-fun e!620009 () Bool)

(declare-fun tp!295051 () Bool)

(assert (=> b!959599 (= e!620009 tp!295051)))

(assert (=> b!959085 (= tp!295018 e!620009)))

(declare-fun b!959597 () Bool)

(assert (=> b!959597 (= e!620009 tp_is_empty!4951)))

(declare-fun b!959600 () Bool)

(declare-fun tp!295054 () Bool)

(declare-fun tp!295055 () Bool)

(assert (=> b!959600 (= e!620009 (and tp!295054 tp!295055))))

(declare-fun b!959598 () Bool)

(declare-fun tp!295052 () Bool)

(declare-fun tp!295053 () Bool)

(assert (=> b!959598 (= e!620009 (and tp!295052 tp!295053))))

(assert (= (and b!959085 (is-ElementMatch!2654 (reg!2983 r!15766))) b!959597))

(assert (= (and b!959085 (is-Concat!4487 (reg!2983 r!15766))) b!959598))

(assert (= (and b!959085 (is-Star!2654 (reg!2983 r!15766))) b!959599))

(assert (= (and b!959085 (is-Union!2654 (reg!2983 r!15766))) b!959600))

(declare-fun b!959603 () Bool)

(declare-fun e!620010 () Bool)

(declare-fun tp!295056 () Bool)

(assert (=> b!959603 (= e!620010 tp!295056)))

(assert (=> b!959090 (= tp!295021 e!620010)))

(declare-fun b!959601 () Bool)

(assert (=> b!959601 (= e!620010 tp_is_empty!4951)))

(declare-fun b!959604 () Bool)

(declare-fun tp!295059 () Bool)

(declare-fun tp!295060 () Bool)

(assert (=> b!959604 (= e!620010 (and tp!295059 tp!295060))))

(declare-fun b!959602 () Bool)

(declare-fun tp!295057 () Bool)

(declare-fun tp!295058 () Bool)

(assert (=> b!959602 (= e!620010 (and tp!295057 tp!295058))))

(assert (= (and b!959090 (is-ElementMatch!2654 (regOne!5820 r!15766))) b!959601))

(assert (= (and b!959090 (is-Concat!4487 (regOne!5820 r!15766))) b!959602))

(assert (= (and b!959090 (is-Star!2654 (regOne!5820 r!15766))) b!959603))

(assert (= (and b!959090 (is-Union!2654 (regOne!5820 r!15766))) b!959604))

(declare-fun b!959607 () Bool)

(declare-fun e!620011 () Bool)

(declare-fun tp!295061 () Bool)

(assert (=> b!959607 (= e!620011 tp!295061)))

(assert (=> b!959090 (= tp!295020 e!620011)))

(declare-fun b!959605 () Bool)

(assert (=> b!959605 (= e!620011 tp_is_empty!4951)))

(declare-fun b!959608 () Bool)

(declare-fun tp!295064 () Bool)

(declare-fun tp!295065 () Bool)

(assert (=> b!959608 (= e!620011 (and tp!295064 tp!295065))))

(declare-fun b!959606 () Bool)

(declare-fun tp!295062 () Bool)

(declare-fun tp!295063 () Bool)

(assert (=> b!959606 (= e!620011 (and tp!295062 tp!295063))))

(assert (= (and b!959090 (is-ElementMatch!2654 (regTwo!5820 r!15766))) b!959605))

(assert (= (and b!959090 (is-Concat!4487 (regTwo!5820 r!15766))) b!959606))

(assert (= (and b!959090 (is-Star!2654 (regTwo!5820 r!15766))) b!959607))

(assert (= (and b!959090 (is-Union!2654 (regTwo!5820 r!15766))) b!959608))

(declare-fun b!959611 () Bool)

(declare-fun e!620012 () Bool)

(declare-fun tp!295066 () Bool)

(assert (=> b!959611 (= e!620012 tp!295066)))

(assert (=> b!959087 (= tp!295022 e!620012)))

(declare-fun b!959609 () Bool)

(assert (=> b!959609 (= e!620012 tp_is_empty!4951)))

(declare-fun b!959612 () Bool)

(declare-fun tp!295069 () Bool)

(declare-fun tp!295070 () Bool)

(assert (=> b!959612 (= e!620012 (and tp!295069 tp!295070))))

(declare-fun b!959610 () Bool)

(declare-fun tp!295067 () Bool)

(declare-fun tp!295068 () Bool)

(assert (=> b!959610 (= e!620012 (and tp!295067 tp!295068))))

(assert (= (and b!959087 (is-ElementMatch!2654 (regOne!5821 r!15766))) b!959609))

(assert (= (and b!959087 (is-Concat!4487 (regOne!5821 r!15766))) b!959610))

(assert (= (and b!959087 (is-Star!2654 (regOne!5821 r!15766))) b!959611))

(assert (= (and b!959087 (is-Union!2654 (regOne!5821 r!15766))) b!959612))

(declare-fun b!959615 () Bool)

(declare-fun e!620013 () Bool)

(declare-fun tp!295071 () Bool)

(assert (=> b!959615 (= e!620013 tp!295071)))

(assert (=> b!959087 (= tp!295019 e!620013)))

(declare-fun b!959613 () Bool)

(assert (=> b!959613 (= e!620013 tp_is_empty!4951)))

(declare-fun b!959616 () Bool)

(declare-fun tp!295074 () Bool)

(declare-fun tp!295075 () Bool)

(assert (=> b!959616 (= e!620013 (and tp!295074 tp!295075))))

(declare-fun b!959614 () Bool)

(declare-fun tp!295072 () Bool)

(declare-fun tp!295073 () Bool)

(assert (=> b!959614 (= e!620013 (and tp!295072 tp!295073))))

(assert (= (and b!959087 (is-ElementMatch!2654 (regTwo!5821 r!15766))) b!959613))

(assert (= (and b!959087 (is-Concat!4487 (regTwo!5821 r!15766))) b!959614))

(assert (= (and b!959087 (is-Star!2654 (regTwo!5821 r!15766))) b!959615))

(assert (= (and b!959087 (is-Union!2654 (regTwo!5821 r!15766))) b!959616))

(declare-fun b!959621 () Bool)

(declare-fun e!620016 () Bool)

(declare-fun tp!295078 () Bool)

(assert (=> b!959621 (= e!620016 (and tp_is_empty!4951 tp!295078))))

(assert (=> b!959088 (= tp!295017 e!620016)))

(assert (= (and b!959088 (is-Cons!9868 (t!100930 s!10566))) b!959621))

(push 1)

(assert (not b!959362))

(assert (not b!959598))

(assert (not b!959270))

(assert (not b!959378))

(assert (not b!959447))

(assert (not bm!60449))

(assert (not bm!60446))

(assert (not b!959459))

(assert (not b!959273))

(assert (not bm!60401))

(assert (not b!959621))

(assert (not b!959464))

(assert (not d!284969))

(assert (not b!959450))

(assert (not b!959446))

(assert (not b!959463))

(assert (not d!284967))

(assert (not b!959614))

(assert (not b!959603))

(assert (not b!959566))

(assert tp_is_empty!4951)

(assert (not b!959602))

(assert (not d!284971))

(assert (not b!959269))

(assert (not bm!60443))

(assert (not b!959461))

(assert (not b!959377))

(assert (not b!959265))

(assert (not b!959368))

(assert (not b!959574))

(assert (not b!959616))

(assert (not b!959380))

(assert (not b!959363))

(assert (not b!959489))

(assert (not d!285005))

(assert (not b!959569))

(assert (not b!959573))

(assert (not d!284991))

(assert (not d!284963))

(assert (not d!284957))

(assert (not b!959445))

(assert (not b!959268))

(assert (not b!959367))

(assert (not bm!60407))

(assert (not b!959612))

(assert (not d!284987))

(assert (not bm!60420))

(assert (not d!284983))

(assert (not b!959220))

(assert (not b!959607))

(assert (not b!959221))

(assert (not b!959364))

(assert (not b!959456))

(assert (not b!959373))

(assert (not d!284959))

(assert (not b!959553))

(assert (not b!959571))

(assert (not b!959610))

(assert (not b!959376))

(assert (not b!959570))

(assert (not b!959604))

(assert (not d!284947))

(assert (not b!959599))

(assert (not b!959578))

(assert (not b!959460))

(assert (not bm!60418))

(assert (not bm!60419))

(assert (not b!959381))

(assert (not b!959449))

(assert (not b!959442))

(assert (not bm!60393))

(assert (not d!284995))

(assert (not b!959600))

(assert (not b!959611))

(assert (not d!285007))

(assert (not b!959608))

(assert (not d!285001))

(assert (not bm!60447))

(assert (not d!284951))

(assert (not b!959272))

(assert (not d!284955))

(assert (not b!959606))

(assert (not b!959491))

(assert (not d!284949))

(assert (not b!959360))

(assert (not b!959615))

(assert (not bm!60394))

(assert (not bm!60417))

(assert (not b!959429))

(assert (not bm!60452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

