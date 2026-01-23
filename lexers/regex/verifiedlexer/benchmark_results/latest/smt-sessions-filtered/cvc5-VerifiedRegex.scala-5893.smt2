; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288530 () Bool)

(assert start!288530)

(declare-fun b!2987142 () Bool)

(assert (=> b!2987142 true))

(assert (=> b!2987142 true))

(assert (=> b!2987142 true))

(declare-fun lambda!111568 () Int)

(declare-fun lambda!111567 () Int)

(assert (=> b!2987142 (not (= lambda!111568 lambda!111567))))

(assert (=> b!2987142 true))

(assert (=> b!2987142 true))

(assert (=> b!2987142 true))

(declare-fun res!1231973 () Bool)

(declare-fun e!1878122 () Bool)

(assert (=> start!288530 (=> (not res!1231973) (not e!1878122))))

(declare-datatypes ((C!18858 0))(
  ( (C!18859 (val!11465 Int)) )
))
(declare-datatypes ((Regex!9336 0))(
  ( (ElementMatch!9336 (c!490802 C!18858)) (Concat!14657 (regOne!19184 Regex!9336) (regTwo!19184 Regex!9336)) (EmptyExpr!9336) (Star!9336 (reg!9665 Regex!9336)) (EmptyLang!9336) (Union!9336 (regOne!19185 Regex!9336) (regTwo!19185 Regex!9336)) )
))
(declare-fun r!17423 () Regex!9336)

(declare-fun validRegex!4069 (Regex!9336) Bool)

(assert (=> start!288530 (= res!1231973 (validRegex!4069 r!17423))))

(assert (=> start!288530 e!1878122))

(declare-fun e!1878124 () Bool)

(assert (=> start!288530 e!1878124))

(declare-fun e!1878121 () Bool)

(assert (=> start!288530 e!1878121))

(declare-fun b!2987136 () Bool)

(declare-fun tp!950285 () Bool)

(declare-fun tp!950283 () Bool)

(assert (=> b!2987136 (= e!1878124 (and tp!950285 tp!950283))))

(declare-fun b!2987137 () Bool)

(declare-fun tp!950284 () Bool)

(declare-fun tp!950286 () Bool)

(assert (=> b!2987137 (= e!1878124 (and tp!950284 tp!950286))))

(declare-fun b!2987138 () Bool)

(declare-fun e!1878123 () Bool)

(assert (=> b!2987138 (= e!1878122 (not e!1878123))))

(declare-fun res!1231974 () Bool)

(assert (=> b!2987138 (=> res!1231974 e!1878123)))

(declare-fun lt!1039630 () Bool)

(assert (=> b!2987138 (= res!1231974 (or (not lt!1039630) (is-Concat!14657 r!17423) (is-Union!9336 r!17423) (not (is-Star!9336 r!17423))))))

(declare-datatypes ((List!35201 0))(
  ( (Nil!35077) (Cons!35077 (h!40497 C!18858) (t!234266 List!35201)) )
))
(declare-fun s!11993 () List!35201)

(declare-fun matchRSpec!1473 (Regex!9336 List!35201) Bool)

(assert (=> b!2987138 (= lt!1039630 (matchRSpec!1473 r!17423 s!11993))))

(declare-fun matchR!4218 (Regex!9336 List!35201) Bool)

(assert (=> b!2987138 (= lt!1039630 (matchR!4218 r!17423 s!11993))))

(declare-datatypes ((Unit!49075 0))(
  ( (Unit!49076) )
))
(declare-fun lt!1039631 () Unit!49075)

(declare-fun mainMatchTheorem!1473 (Regex!9336 List!35201) Unit!49075)

(assert (=> b!2987138 (= lt!1039631 (mainMatchTheorem!1473 r!17423 s!11993))))

(declare-fun b!2987139 () Bool)

(declare-fun res!1231976 () Bool)

(assert (=> b!2987139 (=> res!1231976 e!1878123)))

(declare-fun isEmpty!19338 (List!35201) Bool)

(assert (=> b!2987139 (= res!1231976 (isEmpty!19338 s!11993))))

(declare-fun b!2987140 () Bool)

(declare-fun tp_is_empty!16235 () Bool)

(declare-fun tp!950287 () Bool)

(assert (=> b!2987140 (= e!1878121 (and tp_is_empty!16235 tp!950287))))

(declare-fun b!2987141 () Bool)

(assert (=> b!2987141 (= e!1878124 tp_is_empty!16235)))

(declare-fun e!1878120 () Bool)

(assert (=> b!2987142 (= e!1878123 e!1878120)))

(declare-fun res!1231975 () Bool)

(assert (=> b!2987142 (=> res!1231975 e!1878120)))

(declare-fun lt!1039632 () Bool)

(assert (=> b!2987142 (= res!1231975 (not lt!1039632))))

(declare-fun Exists!1609 (Int) Bool)

(assert (=> b!2987142 (= (Exists!1609 lambda!111567) (Exists!1609 lambda!111568))))

(declare-fun lt!1039635 () Unit!49075)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!285 (Regex!9336 List!35201) Unit!49075)

(assert (=> b!2987142 (= lt!1039635 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!285 (reg!9665 r!17423) s!11993))))

(assert (=> b!2987142 (= lt!1039632 (Exists!1609 lambda!111567))))

(declare-datatypes ((tuple2!33990 0))(
  ( (tuple2!33991 (_1!20127 List!35201) (_2!20127 List!35201)) )
))
(declare-datatypes ((Option!6727 0))(
  ( (None!6726) (Some!6726 (v!34860 tuple2!33990)) )
))
(declare-fun lt!1039633 () Option!6727)

(declare-fun isDefined!5278 (Option!6727) Bool)

(assert (=> b!2987142 (= lt!1039632 (isDefined!5278 lt!1039633))))

(declare-fun lt!1039629 () Regex!9336)

(declare-fun findConcatSeparation!1121 (Regex!9336 Regex!9336 List!35201 List!35201 List!35201) Option!6727)

(assert (=> b!2987142 (= lt!1039633 (findConcatSeparation!1121 (reg!9665 r!17423) lt!1039629 Nil!35077 s!11993 s!11993))))

(declare-fun lt!1039634 () Unit!49075)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!899 (Regex!9336 Regex!9336 List!35201) Unit!49075)

(assert (=> b!2987142 (= lt!1039634 (lemmaFindConcatSeparationEquivalentToExists!899 (reg!9665 r!17423) lt!1039629 s!11993))))

(assert (=> b!2987142 (= lt!1039629 (Star!9336 (reg!9665 r!17423)))))

(declare-fun b!2987143 () Bool)

(declare-fun get!10863 (Option!6727) tuple2!33990)

(assert (=> b!2987143 (= e!1878120 (matchR!4218 (reg!9665 r!17423) (_1!20127 (get!10863 lt!1039633))))))

(declare-fun b!2987144 () Bool)

(declare-fun tp!950282 () Bool)

(assert (=> b!2987144 (= e!1878124 tp!950282)))

(assert (= (and start!288530 res!1231973) b!2987138))

(assert (= (and b!2987138 (not res!1231974)) b!2987139))

(assert (= (and b!2987139 (not res!1231976)) b!2987142))

(assert (= (and b!2987142 (not res!1231975)) b!2987143))

(assert (= (and start!288530 (is-ElementMatch!9336 r!17423)) b!2987141))

(assert (= (and start!288530 (is-Concat!14657 r!17423)) b!2987136))

(assert (= (and start!288530 (is-Star!9336 r!17423)) b!2987144))

(assert (= (and start!288530 (is-Union!9336 r!17423)) b!2987137))

(assert (= (and start!288530 (is-Cons!35077 s!11993)) b!2987140))

(declare-fun m!3345297 () Bool)

(assert (=> start!288530 m!3345297))

(declare-fun m!3345299 () Bool)

(assert (=> b!2987139 m!3345299))

(declare-fun m!3345301 () Bool)

(assert (=> b!2987138 m!3345301))

(declare-fun m!3345303 () Bool)

(assert (=> b!2987138 m!3345303))

(declare-fun m!3345305 () Bool)

(assert (=> b!2987138 m!3345305))

(declare-fun m!3345307 () Bool)

(assert (=> b!2987143 m!3345307))

(declare-fun m!3345309 () Bool)

(assert (=> b!2987143 m!3345309))

(declare-fun m!3345311 () Bool)

(assert (=> b!2987142 m!3345311))

(declare-fun m!3345313 () Bool)

(assert (=> b!2987142 m!3345313))

(declare-fun m!3345315 () Bool)

(assert (=> b!2987142 m!3345315))

(declare-fun m!3345317 () Bool)

(assert (=> b!2987142 m!3345317))

(declare-fun m!3345319 () Bool)

(assert (=> b!2987142 m!3345319))

(declare-fun m!3345321 () Bool)

(assert (=> b!2987142 m!3345321))

(assert (=> b!2987142 m!3345311))

(push 1)

(assert (not b!2987142))

(assert (not b!2987140))

(assert (not b!2987144))

(assert (not b!2987138))

(assert (not b!2987139))

(assert (not b!2987143))

(assert (not b!2987137))

(assert (not b!2987136))

(assert (not start!288530))

(assert tp_is_empty!16235)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2987212 () Bool)

(declare-fun e!1878161 () Bool)

(declare-fun call!199713 () Bool)

(assert (=> b!2987212 (= e!1878161 call!199713)))

(declare-fun b!2987213 () Bool)

(declare-fun res!1232015 () Bool)

(declare-fun e!1878164 () Bool)

(assert (=> b!2987213 (=> res!1232015 e!1878164)))

(assert (=> b!2987213 (= res!1232015 (not (is-Concat!14657 r!17423)))))

(declare-fun e!1878162 () Bool)

(assert (=> b!2987213 (= e!1878162 e!1878164)))

(declare-fun bm!199708 () Bool)

(declare-fun call!199714 () Bool)

(assert (=> bm!199708 (= call!199714 call!199713)))

(declare-fun b!2987214 () Bool)

(declare-fun e!1878166 () Bool)

(assert (=> b!2987214 (= e!1878166 e!1878162)))

(declare-fun c!490808 () Bool)

(assert (=> b!2987214 (= c!490808 (is-Union!9336 r!17423))))

(declare-fun b!2987215 () Bool)

(declare-fun e!1878163 () Bool)

(assert (=> b!2987215 (= e!1878164 e!1878163)))

(declare-fun res!1232013 () Bool)

(assert (=> b!2987215 (=> (not res!1232013) (not e!1878163))))

(assert (=> b!2987215 (= res!1232013 call!199714)))

(declare-fun b!2987216 () Bool)

(declare-fun e!1878165 () Bool)

(assert (=> b!2987216 (= e!1878165 call!199714)))

(declare-fun b!2987217 () Bool)

(declare-fun call!199715 () Bool)

(assert (=> b!2987217 (= e!1878163 call!199715)))

(declare-fun bm!199710 () Bool)

(declare-fun c!490809 () Bool)

(assert (=> bm!199710 (= call!199713 (validRegex!4069 (ite c!490809 (reg!9665 r!17423) (ite c!490808 (regTwo!19185 r!17423) (regOne!19184 r!17423)))))))

(declare-fun b!2987218 () Bool)

(declare-fun e!1878160 () Bool)

(assert (=> b!2987218 (= e!1878160 e!1878166)))

(assert (=> b!2987218 (= c!490809 (is-Star!9336 r!17423))))

(declare-fun d!844168 () Bool)

(declare-fun res!1232016 () Bool)

(assert (=> d!844168 (=> res!1232016 e!1878160)))

(assert (=> d!844168 (= res!1232016 (is-ElementMatch!9336 r!17423))))

(assert (=> d!844168 (= (validRegex!4069 r!17423) e!1878160)))

(declare-fun bm!199709 () Bool)

(assert (=> bm!199709 (= call!199715 (validRegex!4069 (ite c!490808 (regOne!19185 r!17423) (regTwo!19184 r!17423))))))

(declare-fun b!2987219 () Bool)

(assert (=> b!2987219 (= e!1878166 e!1878161)))

(declare-fun res!1232014 () Bool)

(declare-fun nullable!3007 (Regex!9336) Bool)

(assert (=> b!2987219 (= res!1232014 (not (nullable!3007 (reg!9665 r!17423))))))

(assert (=> b!2987219 (=> (not res!1232014) (not e!1878161))))

(declare-fun b!2987220 () Bool)

(declare-fun res!1232017 () Bool)

(assert (=> b!2987220 (=> (not res!1232017) (not e!1878165))))

(assert (=> b!2987220 (= res!1232017 call!199715)))

(assert (=> b!2987220 (= e!1878162 e!1878165)))

(assert (= (and d!844168 (not res!1232016)) b!2987218))

(assert (= (and b!2987218 c!490809) b!2987219))

(assert (= (and b!2987218 (not c!490809)) b!2987214))

(assert (= (and b!2987219 res!1232014) b!2987212))

(assert (= (and b!2987214 c!490808) b!2987220))

(assert (= (and b!2987214 (not c!490808)) b!2987213))

(assert (= (and b!2987220 res!1232017) b!2987216))

(assert (= (and b!2987213 (not res!1232015)) b!2987215))

(assert (= (and b!2987215 res!1232013) b!2987217))

(assert (= (or b!2987220 b!2987217) bm!199709))

(assert (= (or b!2987216 b!2987215) bm!199708))

(assert (= (or b!2987212 bm!199708) bm!199710))

(declare-fun m!3345349 () Bool)

(assert (=> bm!199710 m!3345349))

(declare-fun m!3345351 () Bool)

(assert (=> bm!199709 m!3345351))

(declare-fun m!3345353 () Bool)

(assert (=> b!2987219 m!3345353))

(assert (=> start!288530 d!844168))

(declare-fun d!844170 () Bool)

(assert (=> d!844170 (= (isEmpty!19338 s!11993) (is-Nil!35077 s!11993))))

(assert (=> b!2987139 d!844170))

(declare-fun d!844174 () Bool)

(declare-fun choose!17709 (Int) Bool)

(assert (=> d!844174 (= (Exists!1609 lambda!111567) (choose!17709 lambda!111567))))

(declare-fun bs!527478 () Bool)

(assert (= bs!527478 d!844174))

(declare-fun m!3345355 () Bool)

(assert (=> bs!527478 m!3345355))

(assert (=> b!2987142 d!844174))

(declare-fun bs!527479 () Bool)

(declare-fun d!844176 () Bool)

(assert (= bs!527479 (and d!844176 b!2987142)))

(declare-fun lambda!111579 () Int)

(assert (=> bs!527479 (= lambda!111579 lambda!111567)))

(assert (=> bs!527479 (not (= lambda!111579 lambda!111568))))

(assert (=> d!844176 true))

(assert (=> d!844176 true))

(assert (=> d!844176 true))

(assert (=> d!844176 (= (isDefined!5278 (findConcatSeparation!1121 (reg!9665 r!17423) lt!1039629 Nil!35077 s!11993 s!11993)) (Exists!1609 lambda!111579))))

(declare-fun lt!1039659 () Unit!49075)

(declare-fun choose!17710 (Regex!9336 Regex!9336 List!35201) Unit!49075)

(assert (=> d!844176 (= lt!1039659 (choose!17710 (reg!9665 r!17423) lt!1039629 s!11993))))

(assert (=> d!844176 (validRegex!4069 (reg!9665 r!17423))))

(assert (=> d!844176 (= (lemmaFindConcatSeparationEquivalentToExists!899 (reg!9665 r!17423) lt!1039629 s!11993) lt!1039659)))

(declare-fun bs!527480 () Bool)

(assert (= bs!527480 d!844176))

(assert (=> bs!527480 m!3345317))

(declare-fun m!3345357 () Bool)

(assert (=> bs!527480 m!3345357))

(assert (=> bs!527480 m!3345317))

(declare-fun m!3345359 () Bool)

(assert (=> bs!527480 m!3345359))

(declare-fun m!3345361 () Bool)

(assert (=> bs!527480 m!3345361))

(declare-fun m!3345363 () Bool)

(assert (=> bs!527480 m!3345363))

(assert (=> b!2987142 d!844176))

(declare-fun d!844178 () Bool)

(declare-fun isEmpty!19340 (Option!6727) Bool)

(assert (=> d!844178 (= (isDefined!5278 lt!1039633) (not (isEmpty!19340 lt!1039633)))))

(declare-fun bs!527481 () Bool)

(assert (= bs!527481 d!844178))

(declare-fun m!3345365 () Bool)

(assert (=> bs!527481 m!3345365))

(assert (=> b!2987142 d!844178))

(declare-fun bs!527482 () Bool)

(declare-fun d!844180 () Bool)

(assert (= bs!527482 (and d!844180 b!2987142)))

(declare-fun lambda!111586 () Int)

(assert (=> bs!527482 (= (= (Star!9336 (reg!9665 r!17423)) lt!1039629) (= lambda!111586 lambda!111567))))

(assert (=> bs!527482 (not (= lambda!111586 lambda!111568))))

(declare-fun bs!527483 () Bool)

(assert (= bs!527483 (and d!844180 d!844176)))

(assert (=> bs!527483 (= (= (Star!9336 (reg!9665 r!17423)) lt!1039629) (= lambda!111586 lambda!111579))))

(assert (=> d!844180 true))

(assert (=> d!844180 true))

(declare-fun lambda!111587 () Int)

(assert (=> bs!527482 (not (= lambda!111587 lambda!111567))))

(assert (=> bs!527482 (= (= (Star!9336 (reg!9665 r!17423)) lt!1039629) (= lambda!111587 lambda!111568))))

(assert (=> bs!527483 (not (= lambda!111587 lambda!111579))))

(declare-fun bs!527484 () Bool)

(assert (= bs!527484 d!844180))

(assert (=> bs!527484 (not (= lambda!111587 lambda!111586))))

(assert (=> d!844180 true))

(assert (=> d!844180 true))

(assert (=> d!844180 (= (Exists!1609 lambda!111586) (Exists!1609 lambda!111587))))

(declare-fun lt!1039662 () Unit!49075)

(declare-fun choose!17711 (Regex!9336 List!35201) Unit!49075)

(assert (=> d!844180 (= lt!1039662 (choose!17711 (reg!9665 r!17423) s!11993))))

(assert (=> d!844180 (validRegex!4069 (reg!9665 r!17423))))

(assert (=> d!844180 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!285 (reg!9665 r!17423) s!11993) lt!1039662)))

(declare-fun m!3345367 () Bool)

(assert (=> bs!527484 m!3345367))

(declare-fun m!3345369 () Bool)

(assert (=> bs!527484 m!3345369))

(declare-fun m!3345371 () Bool)

(assert (=> bs!527484 m!3345371))

(assert (=> bs!527484 m!3345359))

(assert (=> b!2987142 d!844180))

(declare-fun b!2987285 () Bool)

(declare-fun e!1878205 () Option!6727)

(assert (=> b!2987285 (= e!1878205 (Some!6726 (tuple2!33991 Nil!35077 s!11993)))))

(declare-fun b!2987286 () Bool)

(declare-fun lt!1039670 () Unit!49075)

(declare-fun lt!1039671 () Unit!49075)

(assert (=> b!2987286 (= lt!1039670 lt!1039671)))

(declare-fun ++!8381 (List!35201 List!35201) List!35201)

(assert (=> b!2987286 (= (++!8381 (++!8381 Nil!35077 (Cons!35077 (h!40497 s!11993) Nil!35077)) (t!234266 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!996 (List!35201 C!18858 List!35201 List!35201) Unit!49075)

(assert (=> b!2987286 (= lt!1039671 (lemmaMoveElementToOtherListKeepsConcatEq!996 Nil!35077 (h!40497 s!11993) (t!234266 s!11993) s!11993))))

(declare-fun e!1878201 () Option!6727)

(assert (=> b!2987286 (= e!1878201 (findConcatSeparation!1121 (reg!9665 r!17423) lt!1039629 (++!8381 Nil!35077 (Cons!35077 (h!40497 s!11993) Nil!35077)) (t!234266 s!11993) s!11993))))

(declare-fun d!844182 () Bool)

(declare-fun e!1878203 () Bool)

(assert (=> d!844182 e!1878203))

(declare-fun res!1232062 () Bool)

(assert (=> d!844182 (=> res!1232062 e!1878203)))

(declare-fun e!1878202 () Bool)

(assert (=> d!844182 (= res!1232062 e!1878202)))

(declare-fun res!1232059 () Bool)

(assert (=> d!844182 (=> (not res!1232059) (not e!1878202))))

(declare-fun lt!1039669 () Option!6727)

(assert (=> d!844182 (= res!1232059 (isDefined!5278 lt!1039669))))

(assert (=> d!844182 (= lt!1039669 e!1878205)))

(declare-fun c!490822 () Bool)

(declare-fun e!1878204 () Bool)

(assert (=> d!844182 (= c!490822 e!1878204)))

(declare-fun res!1232061 () Bool)

(assert (=> d!844182 (=> (not res!1232061) (not e!1878204))))

(assert (=> d!844182 (= res!1232061 (matchR!4218 (reg!9665 r!17423) Nil!35077))))

(assert (=> d!844182 (validRegex!4069 (reg!9665 r!17423))))

(assert (=> d!844182 (= (findConcatSeparation!1121 (reg!9665 r!17423) lt!1039629 Nil!35077 s!11993 s!11993) lt!1039669)))

(declare-fun b!2987287 () Bool)

(assert (=> b!2987287 (= e!1878203 (not (isDefined!5278 lt!1039669)))))

(declare-fun b!2987288 () Bool)

(assert (=> b!2987288 (= e!1878204 (matchR!4218 lt!1039629 s!11993))))

(declare-fun b!2987289 () Bool)

(declare-fun res!1232060 () Bool)

(assert (=> b!2987289 (=> (not res!1232060) (not e!1878202))))

(assert (=> b!2987289 (= res!1232060 (matchR!4218 lt!1039629 (_2!20127 (get!10863 lt!1039669))))))

(declare-fun b!2987290 () Bool)

(declare-fun res!1232058 () Bool)

(assert (=> b!2987290 (=> (not res!1232058) (not e!1878202))))

(assert (=> b!2987290 (= res!1232058 (matchR!4218 (reg!9665 r!17423) (_1!20127 (get!10863 lt!1039669))))))

(declare-fun b!2987291 () Bool)

(assert (=> b!2987291 (= e!1878202 (= (++!8381 (_1!20127 (get!10863 lt!1039669)) (_2!20127 (get!10863 lt!1039669))) s!11993))))

(declare-fun b!2987292 () Bool)

(assert (=> b!2987292 (= e!1878201 None!6726)))

(declare-fun b!2987293 () Bool)

(assert (=> b!2987293 (= e!1878205 e!1878201)))

(declare-fun c!490823 () Bool)

(assert (=> b!2987293 (= c!490823 (is-Nil!35077 s!11993))))

(assert (= (and d!844182 res!1232061) b!2987288))

(assert (= (and d!844182 c!490822) b!2987285))

(assert (= (and d!844182 (not c!490822)) b!2987293))

(assert (= (and b!2987293 c!490823) b!2987292))

(assert (= (and b!2987293 (not c!490823)) b!2987286))

(assert (= (and d!844182 res!1232059) b!2987290))

(assert (= (and b!2987290 res!1232058) b!2987289))

(assert (= (and b!2987289 res!1232060) b!2987291))

(assert (= (and d!844182 (not res!1232062)) b!2987287))

(declare-fun m!3345373 () Bool)

(assert (=> b!2987289 m!3345373))

(declare-fun m!3345375 () Bool)

(assert (=> b!2987289 m!3345375))

(declare-fun m!3345377 () Bool)

(assert (=> b!2987286 m!3345377))

(assert (=> b!2987286 m!3345377))

(declare-fun m!3345379 () Bool)

(assert (=> b!2987286 m!3345379))

(declare-fun m!3345381 () Bool)

(assert (=> b!2987286 m!3345381))

(assert (=> b!2987286 m!3345377))

(declare-fun m!3345383 () Bool)

(assert (=> b!2987286 m!3345383))

(declare-fun m!3345385 () Bool)

(assert (=> d!844182 m!3345385))

(declare-fun m!3345387 () Bool)

(assert (=> d!844182 m!3345387))

(assert (=> d!844182 m!3345359))

(assert (=> b!2987287 m!3345385))

(assert (=> b!2987291 m!3345373))

(declare-fun m!3345389 () Bool)

(assert (=> b!2987291 m!3345389))

(declare-fun m!3345391 () Bool)

(assert (=> b!2987288 m!3345391))

(assert (=> b!2987290 m!3345373))

(declare-fun m!3345393 () Bool)

(assert (=> b!2987290 m!3345393))

(assert (=> b!2987142 d!844182))

(declare-fun d!844184 () Bool)

(assert (=> d!844184 (= (Exists!1609 lambda!111568) (choose!17709 lambda!111568))))

(declare-fun bs!527485 () Bool)

(assert (= bs!527485 d!844184))

(declare-fun m!3345395 () Bool)

(assert (=> bs!527485 m!3345395))

(assert (=> b!2987142 d!844184))

(declare-fun bs!527489 () Bool)

(declare-fun b!2987338 () Bool)

(assert (= bs!527489 (and b!2987338 b!2987142)))

(declare-fun lambda!111596 () Int)

(assert (=> bs!527489 (not (= lambda!111596 lambda!111567))))

(declare-fun bs!527490 () Bool)

(assert (= bs!527490 (and b!2987338 d!844180)))

(assert (=> bs!527490 (= (= r!17423 (Star!9336 (reg!9665 r!17423))) (= lambda!111596 lambda!111587))))

(declare-fun bs!527491 () Bool)

(assert (= bs!527491 (and b!2987338 d!844176)))

(assert (=> bs!527491 (not (= lambda!111596 lambda!111579))))

(assert (=> bs!527489 (= (= r!17423 lt!1039629) (= lambda!111596 lambda!111568))))

(assert (=> bs!527490 (not (= lambda!111596 lambda!111586))))

(assert (=> b!2987338 true))

(assert (=> b!2987338 true))

(declare-fun bs!527492 () Bool)

(declare-fun b!2987344 () Bool)

(assert (= bs!527492 (and b!2987344 b!2987142)))

(declare-fun lambda!111597 () Int)

(assert (=> bs!527492 (not (= lambda!111597 lambda!111567))))

(declare-fun bs!527493 () Bool)

(assert (= bs!527493 (and b!2987344 d!844180)))

(assert (=> bs!527493 (not (= lambda!111597 lambda!111587))))

(declare-fun bs!527494 () Bool)

(assert (= bs!527494 (and b!2987344 b!2987338)))

(assert (=> bs!527494 (not (= lambda!111597 lambda!111596))))

(declare-fun bs!527495 () Bool)

(assert (= bs!527495 (and b!2987344 d!844176)))

(assert (=> bs!527495 (not (= lambda!111597 lambda!111579))))

(assert (=> bs!527492 (not (= lambda!111597 lambda!111568))))

(assert (=> bs!527493 (not (= lambda!111597 lambda!111586))))

(assert (=> b!2987344 true))

(assert (=> b!2987344 true))

(declare-fun b!2987337 () Bool)

(declare-fun e!1878236 () Bool)

(declare-fun e!1878233 () Bool)

(assert (=> b!2987337 (= e!1878236 e!1878233)))

(declare-fun res!1232082 () Bool)

(assert (=> b!2987337 (= res!1232082 (matchRSpec!1473 (regOne!19185 r!17423) s!11993))))

(assert (=> b!2987337 (=> res!1232082 e!1878233)))

(declare-fun e!1878237 () Bool)

(declare-fun call!199726 () Bool)

(assert (=> b!2987338 (= e!1878237 call!199726)))

(declare-fun b!2987339 () Bool)

(declare-fun res!1232083 () Bool)

(assert (=> b!2987339 (=> res!1232083 e!1878237)))

(declare-fun call!199727 () Bool)

(assert (=> b!2987339 (= res!1232083 call!199727)))

(declare-fun e!1878232 () Bool)

(assert (=> b!2987339 (= e!1878232 e!1878237)))

(declare-fun c!490837 () Bool)

(declare-fun bm!199721 () Bool)

(assert (=> bm!199721 (= call!199726 (Exists!1609 (ite c!490837 lambda!111596 lambda!111597)))))

(declare-fun b!2987340 () Bool)

(declare-fun e!1878235 () Bool)

(declare-fun e!1878231 () Bool)

(assert (=> b!2987340 (= e!1878235 e!1878231)))

(declare-fun res!1232084 () Bool)

(assert (=> b!2987340 (= res!1232084 (not (is-EmptyLang!9336 r!17423)))))

(assert (=> b!2987340 (=> (not res!1232084) (not e!1878231))))

(declare-fun b!2987341 () Bool)

(assert (=> b!2987341 (= e!1878233 (matchRSpec!1473 (regTwo!19185 r!17423) s!11993))))

(declare-fun d!844186 () Bool)

(declare-fun c!490838 () Bool)

(assert (=> d!844186 (= c!490838 (is-EmptyExpr!9336 r!17423))))

(assert (=> d!844186 (= (matchRSpec!1473 r!17423 s!11993) e!1878235)))

(declare-fun b!2987342 () Bool)

(declare-fun e!1878234 () Bool)

(assert (=> b!2987342 (= e!1878234 (= s!11993 (Cons!35077 (c!490802 r!17423) Nil!35077)))))

(declare-fun b!2987343 () Bool)

(declare-fun c!490839 () Bool)

(assert (=> b!2987343 (= c!490839 (is-Union!9336 r!17423))))

(assert (=> b!2987343 (= e!1878234 e!1878236)))

(declare-fun bm!199722 () Bool)

(assert (=> bm!199722 (= call!199727 (isEmpty!19338 s!11993))))

(assert (=> b!2987344 (= e!1878232 call!199726)))

(declare-fun b!2987345 () Bool)

(assert (=> b!2987345 (= e!1878235 call!199727)))

(declare-fun b!2987346 () Bool)

(assert (=> b!2987346 (= e!1878236 e!1878232)))

(assert (=> b!2987346 (= c!490837 (is-Star!9336 r!17423))))

(declare-fun b!2987347 () Bool)

(declare-fun c!490836 () Bool)

(assert (=> b!2987347 (= c!490836 (is-ElementMatch!9336 r!17423))))

(assert (=> b!2987347 (= e!1878231 e!1878234)))

(assert (= (and d!844186 c!490838) b!2987345))

(assert (= (and d!844186 (not c!490838)) b!2987340))

(assert (= (and b!2987340 res!1232084) b!2987347))

(assert (= (and b!2987347 c!490836) b!2987342))

(assert (= (and b!2987347 (not c!490836)) b!2987343))

(assert (= (and b!2987343 c!490839) b!2987337))

(assert (= (and b!2987343 (not c!490839)) b!2987346))

(assert (= (and b!2987337 (not res!1232082)) b!2987341))

(assert (= (and b!2987346 c!490837) b!2987339))

(assert (= (and b!2987346 (not c!490837)) b!2987344))

(assert (= (and b!2987339 (not res!1232083)) b!2987338))

(assert (= (or b!2987338 b!2987344) bm!199721))

(assert (= (or b!2987345 b!2987339) bm!199722))

(declare-fun m!3345403 () Bool)

(assert (=> b!2987337 m!3345403))

(declare-fun m!3345405 () Bool)

(assert (=> bm!199721 m!3345405))

(declare-fun m!3345407 () Bool)

(assert (=> b!2987341 m!3345407))

(assert (=> bm!199722 m!3345299))

(assert (=> b!2987138 d!844186))

(declare-fun b!2987404 () Bool)

(declare-fun e!1878268 () Bool)

(declare-fun head!6664 (List!35201) C!18858)

(assert (=> b!2987404 (= e!1878268 (not (= (head!6664 s!11993) (c!490802 r!17423))))))

(declare-fun b!2987405 () Bool)

(declare-fun res!1232119 () Bool)

(assert (=> b!2987405 (=> res!1232119 e!1878268)))

(declare-fun tail!4890 (List!35201) List!35201)

(assert (=> b!2987405 (= res!1232119 (not (isEmpty!19338 (tail!4890 s!11993))))))

(declare-fun b!2987406 () Bool)

(declare-fun e!1878266 () Bool)

(assert (=> b!2987406 (= e!1878266 e!1878268)))

(declare-fun res!1232117 () Bool)

(assert (=> b!2987406 (=> res!1232117 e!1878268)))

(declare-fun call!199732 () Bool)

(assert (=> b!2987406 (= res!1232117 call!199732)))

(declare-fun b!2987407 () Bool)

(declare-fun e!1878271 () Bool)

(assert (=> b!2987407 (= e!1878271 e!1878266)))

(declare-fun res!1232123 () Bool)

(assert (=> b!2987407 (=> (not res!1232123) (not e!1878266))))

(declare-fun lt!1039676 () Bool)

(assert (=> b!2987407 (= res!1232123 (not lt!1039676))))

(declare-fun b!2987408 () Bool)

(declare-fun e!1878272 () Bool)

(declare-fun derivativeStep!2605 (Regex!9336 C!18858) Regex!9336)

(assert (=> b!2987408 (= e!1878272 (matchR!4218 (derivativeStep!2605 r!17423 (head!6664 s!11993)) (tail!4890 s!11993)))))

(declare-fun b!2987409 () Bool)

(assert (=> b!2987409 (= e!1878272 (nullable!3007 r!17423))))

(declare-fun b!2987410 () Bool)

(declare-fun e!1878270 () Bool)

(assert (=> b!2987410 (= e!1878270 (= lt!1039676 call!199732))))

(declare-fun b!2987411 () Bool)

(declare-fun res!1232121 () Bool)

(assert (=> b!2987411 (=> res!1232121 e!1878271)))

(declare-fun e!1878267 () Bool)

(assert (=> b!2987411 (= res!1232121 e!1878267)))

(declare-fun res!1232124 () Bool)

(assert (=> b!2987411 (=> (not res!1232124) (not e!1878267))))

(assert (=> b!2987411 (= res!1232124 lt!1039676)))

(declare-fun b!2987413 () Bool)

(declare-fun e!1878269 () Bool)

(assert (=> b!2987413 (= e!1878269 (not lt!1039676))))

(declare-fun b!2987414 () Bool)

(declare-fun res!1232118 () Bool)

(assert (=> b!2987414 (=> (not res!1232118) (not e!1878267))))

(assert (=> b!2987414 (= res!1232118 (isEmpty!19338 (tail!4890 s!11993)))))

(declare-fun b!2987415 () Bool)

(assert (=> b!2987415 (= e!1878270 e!1878269)))

(declare-fun c!490852 () Bool)

(assert (=> b!2987415 (= c!490852 (is-EmptyLang!9336 r!17423))))

(declare-fun b!2987416 () Bool)

(declare-fun res!1232122 () Bool)

(assert (=> b!2987416 (=> res!1232122 e!1878271)))

(assert (=> b!2987416 (= res!1232122 (not (is-ElementMatch!9336 r!17423)))))

(assert (=> b!2987416 (= e!1878269 e!1878271)))

(declare-fun bm!199727 () Bool)

(assert (=> bm!199727 (= call!199732 (isEmpty!19338 s!11993))))

(declare-fun b!2987417 () Bool)

(declare-fun res!1232120 () Bool)

(assert (=> b!2987417 (=> (not res!1232120) (not e!1878267))))

(assert (=> b!2987417 (= res!1232120 (not call!199732))))

(declare-fun b!2987412 () Bool)

(assert (=> b!2987412 (= e!1878267 (= (head!6664 s!11993) (c!490802 r!17423)))))

(declare-fun d!844190 () Bool)

(assert (=> d!844190 e!1878270))

(declare-fun c!490854 () Bool)

(assert (=> d!844190 (= c!490854 (is-EmptyExpr!9336 r!17423))))

(assert (=> d!844190 (= lt!1039676 e!1878272)))

(declare-fun c!490853 () Bool)

(assert (=> d!844190 (= c!490853 (isEmpty!19338 s!11993))))

(assert (=> d!844190 (validRegex!4069 r!17423)))

(assert (=> d!844190 (= (matchR!4218 r!17423 s!11993) lt!1039676)))

(assert (= (and d!844190 c!490853) b!2987409))

(assert (= (and d!844190 (not c!490853)) b!2987408))

(assert (= (and d!844190 c!490854) b!2987410))

(assert (= (and d!844190 (not c!490854)) b!2987415))

(assert (= (and b!2987415 c!490852) b!2987413))

(assert (= (and b!2987415 (not c!490852)) b!2987416))

(assert (= (and b!2987416 (not res!1232122)) b!2987411))

(assert (= (and b!2987411 res!1232124) b!2987417))

(assert (= (and b!2987417 res!1232120) b!2987414))

(assert (= (and b!2987414 res!1232118) b!2987412))

(assert (= (and b!2987411 (not res!1232121)) b!2987407))

(assert (= (and b!2987407 res!1232123) b!2987406))

(assert (= (and b!2987406 (not res!1232117)) b!2987405))

(assert (= (and b!2987405 (not res!1232119)) b!2987404))

(assert (= (or b!2987410 b!2987417 b!2987406) bm!199727))

(declare-fun m!3345409 () Bool)

(assert (=> b!2987404 m!3345409))

(assert (=> b!2987408 m!3345409))

(assert (=> b!2987408 m!3345409))

(declare-fun m!3345411 () Bool)

(assert (=> b!2987408 m!3345411))

(declare-fun m!3345413 () Bool)

(assert (=> b!2987408 m!3345413))

(assert (=> b!2987408 m!3345411))

(assert (=> b!2987408 m!3345413))

(declare-fun m!3345415 () Bool)

(assert (=> b!2987408 m!3345415))

(assert (=> d!844190 m!3345299))

(assert (=> d!844190 m!3345297))

(assert (=> bm!199727 m!3345299))

(assert (=> b!2987412 m!3345409))

(assert (=> b!2987414 m!3345413))

(assert (=> b!2987414 m!3345413))

(declare-fun m!3345417 () Bool)

(assert (=> b!2987414 m!3345417))

(declare-fun m!3345419 () Bool)

(assert (=> b!2987409 m!3345419))

(assert (=> b!2987405 m!3345413))

(assert (=> b!2987405 m!3345413))

(assert (=> b!2987405 m!3345417))

(assert (=> b!2987138 d!844190))

(declare-fun d!844192 () Bool)

(assert (=> d!844192 (= (matchR!4218 r!17423 s!11993) (matchRSpec!1473 r!17423 s!11993))))

(declare-fun lt!1039679 () Unit!49075)

(declare-fun choose!17712 (Regex!9336 List!35201) Unit!49075)

(assert (=> d!844192 (= lt!1039679 (choose!17712 r!17423 s!11993))))

(assert (=> d!844192 (validRegex!4069 r!17423)))

(assert (=> d!844192 (= (mainMatchTheorem!1473 r!17423 s!11993) lt!1039679)))

(declare-fun bs!527496 () Bool)

(assert (= bs!527496 d!844192))

(assert (=> bs!527496 m!3345303))

(assert (=> bs!527496 m!3345301))

(declare-fun m!3345421 () Bool)

(assert (=> bs!527496 m!3345421))

(assert (=> bs!527496 m!3345297))

(assert (=> b!2987138 d!844192))

(declare-fun b!2987418 () Bool)

(declare-fun e!1878275 () Bool)

(assert (=> b!2987418 (= e!1878275 (not (= (head!6664 (_1!20127 (get!10863 lt!1039633))) (c!490802 (reg!9665 r!17423)))))))

(declare-fun b!2987419 () Bool)

(declare-fun res!1232127 () Bool)

(assert (=> b!2987419 (=> res!1232127 e!1878275)))

(assert (=> b!2987419 (= res!1232127 (not (isEmpty!19338 (tail!4890 (_1!20127 (get!10863 lt!1039633))))))))

(declare-fun b!2987420 () Bool)

(declare-fun e!1878273 () Bool)

(assert (=> b!2987420 (= e!1878273 e!1878275)))

(declare-fun res!1232125 () Bool)

(assert (=> b!2987420 (=> res!1232125 e!1878275)))

(declare-fun call!199733 () Bool)

(assert (=> b!2987420 (= res!1232125 call!199733)))

(declare-fun b!2987421 () Bool)

(declare-fun e!1878278 () Bool)

(assert (=> b!2987421 (= e!1878278 e!1878273)))

(declare-fun res!1232131 () Bool)

(assert (=> b!2987421 (=> (not res!1232131) (not e!1878273))))

(declare-fun lt!1039680 () Bool)

(assert (=> b!2987421 (= res!1232131 (not lt!1039680))))

(declare-fun b!2987422 () Bool)

(declare-fun e!1878279 () Bool)

(assert (=> b!2987422 (= e!1878279 (matchR!4218 (derivativeStep!2605 (reg!9665 r!17423) (head!6664 (_1!20127 (get!10863 lt!1039633)))) (tail!4890 (_1!20127 (get!10863 lt!1039633)))))))

(declare-fun b!2987423 () Bool)

(assert (=> b!2987423 (= e!1878279 (nullable!3007 (reg!9665 r!17423)))))

(declare-fun b!2987424 () Bool)

(declare-fun e!1878277 () Bool)

(assert (=> b!2987424 (= e!1878277 (= lt!1039680 call!199733))))

(declare-fun b!2987425 () Bool)

(declare-fun res!1232129 () Bool)

(assert (=> b!2987425 (=> res!1232129 e!1878278)))

(declare-fun e!1878274 () Bool)

(assert (=> b!2987425 (= res!1232129 e!1878274)))

(declare-fun res!1232132 () Bool)

(assert (=> b!2987425 (=> (not res!1232132) (not e!1878274))))

(assert (=> b!2987425 (= res!1232132 lt!1039680)))

(declare-fun b!2987427 () Bool)

(declare-fun e!1878276 () Bool)

(assert (=> b!2987427 (= e!1878276 (not lt!1039680))))

(declare-fun b!2987428 () Bool)

(declare-fun res!1232126 () Bool)

(assert (=> b!2987428 (=> (not res!1232126) (not e!1878274))))

(assert (=> b!2987428 (= res!1232126 (isEmpty!19338 (tail!4890 (_1!20127 (get!10863 lt!1039633)))))))

(declare-fun b!2987429 () Bool)

(assert (=> b!2987429 (= e!1878277 e!1878276)))

(declare-fun c!490855 () Bool)

(assert (=> b!2987429 (= c!490855 (is-EmptyLang!9336 (reg!9665 r!17423)))))

(declare-fun b!2987430 () Bool)

(declare-fun res!1232130 () Bool)

(assert (=> b!2987430 (=> res!1232130 e!1878278)))

(assert (=> b!2987430 (= res!1232130 (not (is-ElementMatch!9336 (reg!9665 r!17423))))))

(assert (=> b!2987430 (= e!1878276 e!1878278)))

(declare-fun bm!199728 () Bool)

(assert (=> bm!199728 (= call!199733 (isEmpty!19338 (_1!20127 (get!10863 lt!1039633))))))

(declare-fun b!2987431 () Bool)

(declare-fun res!1232128 () Bool)

(assert (=> b!2987431 (=> (not res!1232128) (not e!1878274))))

(assert (=> b!2987431 (= res!1232128 (not call!199733))))

(declare-fun b!2987426 () Bool)

(assert (=> b!2987426 (= e!1878274 (= (head!6664 (_1!20127 (get!10863 lt!1039633))) (c!490802 (reg!9665 r!17423))))))

(declare-fun d!844194 () Bool)

(assert (=> d!844194 e!1878277))

(declare-fun c!490857 () Bool)

(assert (=> d!844194 (= c!490857 (is-EmptyExpr!9336 (reg!9665 r!17423)))))

(assert (=> d!844194 (= lt!1039680 e!1878279)))

(declare-fun c!490856 () Bool)

(assert (=> d!844194 (= c!490856 (isEmpty!19338 (_1!20127 (get!10863 lt!1039633))))))

(assert (=> d!844194 (validRegex!4069 (reg!9665 r!17423))))

(assert (=> d!844194 (= (matchR!4218 (reg!9665 r!17423) (_1!20127 (get!10863 lt!1039633))) lt!1039680)))

(assert (= (and d!844194 c!490856) b!2987423))

(assert (= (and d!844194 (not c!490856)) b!2987422))

(assert (= (and d!844194 c!490857) b!2987424))

(assert (= (and d!844194 (not c!490857)) b!2987429))

(assert (= (and b!2987429 c!490855) b!2987427))

(assert (= (and b!2987429 (not c!490855)) b!2987430))

(assert (= (and b!2987430 (not res!1232130)) b!2987425))

(assert (= (and b!2987425 res!1232132) b!2987431))

(assert (= (and b!2987431 res!1232128) b!2987428))

(assert (= (and b!2987428 res!1232126) b!2987426))

(assert (= (and b!2987425 (not res!1232129)) b!2987421))

(assert (= (and b!2987421 res!1232131) b!2987420))

(assert (= (and b!2987420 (not res!1232125)) b!2987419))

(assert (= (and b!2987419 (not res!1232127)) b!2987418))

(assert (= (or b!2987424 b!2987431 b!2987420) bm!199728))

(declare-fun m!3345423 () Bool)

(assert (=> b!2987418 m!3345423))

(assert (=> b!2987422 m!3345423))

(assert (=> b!2987422 m!3345423))

(declare-fun m!3345425 () Bool)

(assert (=> b!2987422 m!3345425))

(declare-fun m!3345427 () Bool)

(assert (=> b!2987422 m!3345427))

(assert (=> b!2987422 m!3345425))

(assert (=> b!2987422 m!3345427))

(declare-fun m!3345429 () Bool)

(assert (=> b!2987422 m!3345429))

(declare-fun m!3345431 () Bool)

(assert (=> d!844194 m!3345431))

(assert (=> d!844194 m!3345359))

(assert (=> bm!199728 m!3345431))

(assert (=> b!2987426 m!3345423))

(assert (=> b!2987428 m!3345427))

(assert (=> b!2987428 m!3345427))

(declare-fun m!3345433 () Bool)

(assert (=> b!2987428 m!3345433))

(assert (=> b!2987423 m!3345353))

(assert (=> b!2987419 m!3345427))

(assert (=> b!2987419 m!3345427))

(assert (=> b!2987419 m!3345433))

(assert (=> b!2987143 d!844194))

(declare-fun d!844196 () Bool)

(assert (=> d!844196 (= (get!10863 lt!1039633) (v!34860 lt!1039633))))

(assert (=> b!2987143 d!844196))

(declare-fun e!1878289 () Bool)

(assert (=> b!2987144 (= tp!950282 e!1878289)))

(declare-fun b!2987457 () Bool)

(declare-fun tp!950316 () Bool)

(declare-fun tp!950317 () Bool)

(assert (=> b!2987457 (= e!1878289 (and tp!950316 tp!950317))))

(declare-fun b!2987459 () Bool)

(declare-fun tp!950319 () Bool)

(declare-fun tp!950320 () Bool)

(assert (=> b!2987459 (= e!1878289 (and tp!950319 tp!950320))))

(declare-fun b!2987458 () Bool)

(declare-fun tp!950318 () Bool)

(assert (=> b!2987458 (= e!1878289 tp!950318)))

(declare-fun b!2987456 () Bool)

(assert (=> b!2987456 (= e!1878289 tp_is_empty!16235)))

(assert (= (and b!2987144 (is-ElementMatch!9336 (reg!9665 r!17423))) b!2987456))

(assert (= (and b!2987144 (is-Concat!14657 (reg!9665 r!17423))) b!2987457))

(assert (= (and b!2987144 (is-Star!9336 (reg!9665 r!17423))) b!2987458))

(assert (= (and b!2987144 (is-Union!9336 (reg!9665 r!17423))) b!2987459))

(declare-fun b!2987464 () Bool)

(declare-fun e!1878292 () Bool)

(declare-fun tp!950323 () Bool)

(assert (=> b!2987464 (= e!1878292 (and tp_is_empty!16235 tp!950323))))

(assert (=> b!2987140 (= tp!950287 e!1878292)))

(assert (= (and b!2987140 (is-Cons!35077 (t!234266 s!11993))) b!2987464))

(declare-fun e!1878293 () Bool)

(assert (=> b!2987137 (= tp!950284 e!1878293)))

(declare-fun b!2987466 () Bool)

(declare-fun tp!950324 () Bool)

(declare-fun tp!950325 () Bool)

(assert (=> b!2987466 (= e!1878293 (and tp!950324 tp!950325))))

(declare-fun b!2987468 () Bool)

(declare-fun tp!950327 () Bool)

(declare-fun tp!950328 () Bool)

(assert (=> b!2987468 (= e!1878293 (and tp!950327 tp!950328))))

(declare-fun b!2987467 () Bool)

(declare-fun tp!950326 () Bool)

(assert (=> b!2987467 (= e!1878293 tp!950326)))

(declare-fun b!2987465 () Bool)

(assert (=> b!2987465 (= e!1878293 tp_is_empty!16235)))

(assert (= (and b!2987137 (is-ElementMatch!9336 (regOne!19185 r!17423))) b!2987465))

(assert (= (and b!2987137 (is-Concat!14657 (regOne!19185 r!17423))) b!2987466))

(assert (= (and b!2987137 (is-Star!9336 (regOne!19185 r!17423))) b!2987467))

(assert (= (and b!2987137 (is-Union!9336 (regOne!19185 r!17423))) b!2987468))

(declare-fun e!1878294 () Bool)

(assert (=> b!2987137 (= tp!950286 e!1878294)))

(declare-fun b!2987470 () Bool)

(declare-fun tp!950329 () Bool)

(declare-fun tp!950330 () Bool)

(assert (=> b!2987470 (= e!1878294 (and tp!950329 tp!950330))))

(declare-fun b!2987472 () Bool)

(declare-fun tp!950332 () Bool)

(declare-fun tp!950333 () Bool)

(assert (=> b!2987472 (= e!1878294 (and tp!950332 tp!950333))))

(declare-fun b!2987471 () Bool)

(declare-fun tp!950331 () Bool)

(assert (=> b!2987471 (= e!1878294 tp!950331)))

(declare-fun b!2987469 () Bool)

(assert (=> b!2987469 (= e!1878294 tp_is_empty!16235)))

(assert (= (and b!2987137 (is-ElementMatch!9336 (regTwo!19185 r!17423))) b!2987469))

(assert (= (and b!2987137 (is-Concat!14657 (regTwo!19185 r!17423))) b!2987470))

(assert (= (and b!2987137 (is-Star!9336 (regTwo!19185 r!17423))) b!2987471))

(assert (= (and b!2987137 (is-Union!9336 (regTwo!19185 r!17423))) b!2987472))

(declare-fun e!1878295 () Bool)

(assert (=> b!2987136 (= tp!950285 e!1878295)))

(declare-fun b!2987474 () Bool)

(declare-fun tp!950334 () Bool)

(declare-fun tp!950335 () Bool)

(assert (=> b!2987474 (= e!1878295 (and tp!950334 tp!950335))))

(declare-fun b!2987476 () Bool)

(declare-fun tp!950337 () Bool)

(declare-fun tp!950338 () Bool)

(assert (=> b!2987476 (= e!1878295 (and tp!950337 tp!950338))))

(declare-fun b!2987475 () Bool)

(declare-fun tp!950336 () Bool)

(assert (=> b!2987475 (= e!1878295 tp!950336)))

(declare-fun b!2987473 () Bool)

(assert (=> b!2987473 (= e!1878295 tp_is_empty!16235)))

(assert (= (and b!2987136 (is-ElementMatch!9336 (regOne!19184 r!17423))) b!2987473))

(assert (= (and b!2987136 (is-Concat!14657 (regOne!19184 r!17423))) b!2987474))

(assert (= (and b!2987136 (is-Star!9336 (regOne!19184 r!17423))) b!2987475))

(assert (= (and b!2987136 (is-Union!9336 (regOne!19184 r!17423))) b!2987476))

(declare-fun e!1878296 () Bool)

(assert (=> b!2987136 (= tp!950283 e!1878296)))

(declare-fun b!2987478 () Bool)

(declare-fun tp!950339 () Bool)

(declare-fun tp!950340 () Bool)

(assert (=> b!2987478 (= e!1878296 (and tp!950339 tp!950340))))

(declare-fun b!2987480 () Bool)

(declare-fun tp!950342 () Bool)

(declare-fun tp!950343 () Bool)

(assert (=> b!2987480 (= e!1878296 (and tp!950342 tp!950343))))

(declare-fun b!2987479 () Bool)

(declare-fun tp!950341 () Bool)

(assert (=> b!2987479 (= e!1878296 tp!950341)))

(declare-fun b!2987477 () Bool)

(assert (=> b!2987477 (= e!1878296 tp_is_empty!16235)))

(assert (= (and b!2987136 (is-ElementMatch!9336 (regTwo!19184 r!17423))) b!2987477))

(assert (= (and b!2987136 (is-Concat!14657 (regTwo!19184 r!17423))) b!2987478))

(assert (= (and b!2987136 (is-Star!9336 (regTwo!19184 r!17423))) b!2987479))

(assert (= (and b!2987136 (is-Union!9336 (regTwo!19184 r!17423))) b!2987480))

(push 1)

(assert (not b!2987412))

(assert (not d!844176))

(assert (not b!2987480))

(assert tp_is_empty!16235)

(assert (not d!844194))

(assert (not bm!199727))

(assert (not b!2987405))

(assert (not b!2987422))

(assert (not b!2987404))

(assert (not b!2987478))

(assert (not b!2987219))

(assert (not b!2987426))

(assert (not b!2987423))

(assert (not b!2987337))

(assert (not b!2987470))

(assert (not b!2987479))

(assert (not d!844190))

(assert (not d!844184))

(assert (not bm!199722))

(assert (not b!2987428))

(assert (not b!2987289))

(assert (not b!2987291))

(assert (not bm!199728))

(assert (not b!2987474))

(assert (not b!2987288))

(assert (not b!2987471))

(assert (not b!2987419))

(assert (not b!2987341))

(assert (not b!2987457))

(assert (not b!2987414))

(assert (not b!2987458))

(assert (not d!844180))

(assert (not b!2987466))

(assert (not b!2987464))

(assert (not b!2987468))

(assert (not d!844182))

(assert (not b!2987287))

(assert (not bm!199710))

(assert (not b!2987286))

(assert (not b!2987409))

(assert (not bm!199709))

(assert (not b!2987418))

(assert (not b!2987467))

(assert (not b!2987408))

(assert (not b!2987476))

(assert (not d!844192))

(assert (not d!844174))

(assert (not b!2987472))

(assert (not b!2987459))

(assert (not d!844178))

(assert (not b!2987475))

(assert (not b!2987290))

(assert (not bm!199721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

