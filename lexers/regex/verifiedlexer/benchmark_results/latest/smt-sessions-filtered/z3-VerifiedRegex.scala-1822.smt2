; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90950 () Bool)

(assert start!90950)

(declare-fun b!1056174 () Bool)

(declare-fun e!670627 () Bool)

(declare-fun tp_is_empty!5449 () Bool)

(assert (=> b!1056174 (= e!670627 tp_is_empty!5449)))

(declare-fun b!1056175 () Bool)

(declare-fun tp!317890 () Bool)

(declare-fun tp!317892 () Bool)

(assert (=> b!1056175 (= e!670627 (and tp!317890 tp!317892))))

(declare-fun b!1056176 () Bool)

(declare-fun e!670628 () Bool)

(declare-datatypes ((C!6376 0))(
  ( (C!6377 (val!3436 Int)) )
))
(declare-datatypes ((Regex!2903 0))(
  ( (ElementMatch!2903 (c!176720 C!6376)) (Concat!4736 (regOne!6318 Regex!2903) (regTwo!6318 Regex!2903)) (EmptyExpr!2903) (Star!2903 (reg!3232 Regex!2903)) (EmptyLang!2903) (Union!2903 (regOne!6319 Regex!2903) (regTwo!6319 Regex!2903)) )
))
(declare-fun lt!359097 () Regex!2903)

(declare-fun validRegex!1372 (Regex!2903) Bool)

(assert (=> b!1056176 (= e!670628 (validRegex!1372 lt!359097))))

(declare-fun b!1056177 () Bool)

(declare-fun tp!317891 () Bool)

(declare-fun tp!317888 () Bool)

(assert (=> b!1056177 (= e!670627 (and tp!317891 tp!317888))))

(declare-fun res!472308 () Bool)

(declare-fun e!670626 () Bool)

(assert (=> start!90950 (=> (not res!472308) (not e!670626))))

(declare-fun r!15766 () Regex!2903)

(assert (=> start!90950 (= res!472308 (validRegex!1372 r!15766))))

(assert (=> start!90950 e!670626))

(assert (=> start!90950 e!670627))

(declare-fun e!670625 () Bool)

(assert (=> start!90950 e!670625))

(declare-fun b!1056178 () Bool)

(declare-fun tp!317889 () Bool)

(assert (=> b!1056178 (= e!670625 (and tp_is_empty!5449 tp!317889))))

(declare-fun b!1056179 () Bool)

(declare-fun tp!317887 () Bool)

(assert (=> b!1056179 (= e!670627 tp!317887)))

(declare-fun b!1056180 () Bool)

(declare-fun e!670629 () Bool)

(assert (=> b!1056180 (= e!670626 (not e!670629))))

(declare-fun res!472309 () Bool)

(assert (=> b!1056180 (=> res!472309 e!670629)))

(declare-fun lt!359095 () Bool)

(get-info :version)

(assert (=> b!1056180 (= res!472309 (or lt!359095 (and ((_ is Concat!4736) r!15766) ((_ is EmptyExpr!2903) (regOne!6318 r!15766))) (and ((_ is Concat!4736) r!15766) ((_ is EmptyExpr!2903) (regTwo!6318 r!15766))) ((_ is Concat!4736) r!15766) (not ((_ is Union!2903) r!15766))))))

(declare-datatypes ((List!10133 0))(
  ( (Nil!10117) (Cons!10117 (h!15518 C!6376) (t!101179 List!10133)) )
))
(declare-fun s!10566 () List!10133)

(declare-fun matchRSpec!702 (Regex!2903 List!10133) Bool)

(assert (=> b!1056180 (= lt!359095 (matchRSpec!702 r!15766 s!10566))))

(declare-fun matchR!1439 (Regex!2903 List!10133) Bool)

(assert (=> b!1056180 (= lt!359095 (matchR!1439 r!15766 s!10566))))

(declare-datatypes ((Unit!15481 0))(
  ( (Unit!15482) )
))
(declare-fun lt!359096 () Unit!15481)

(declare-fun mainMatchTheorem!702 (Regex!2903 List!10133) Unit!15481)

(assert (=> b!1056180 (= lt!359096 (mainMatchTheorem!702 r!15766 s!10566))))

(declare-fun b!1056181 () Bool)

(assert (=> b!1056181 (= e!670629 e!670628)))

(declare-fun res!472310 () Bool)

(assert (=> b!1056181 (=> res!472310 e!670628)))

(assert (=> b!1056181 (= res!472310 (not (matchR!1439 lt!359097 s!10566)))))

(declare-fun removeUselessConcat!452 (Regex!2903) Regex!2903)

(assert (=> b!1056181 (= lt!359097 (Union!2903 (removeUselessConcat!452 (regOne!6319 r!15766)) (removeUselessConcat!452 (regTwo!6319 r!15766))))))

(assert (= (and start!90950 res!472308) b!1056180))

(assert (= (and b!1056180 (not res!472309)) b!1056181))

(assert (= (and b!1056181 (not res!472310)) b!1056176))

(assert (= (and start!90950 ((_ is ElementMatch!2903) r!15766)) b!1056174))

(assert (= (and start!90950 ((_ is Concat!4736) r!15766)) b!1056175))

(assert (= (and start!90950 ((_ is Star!2903) r!15766)) b!1056179))

(assert (= (and start!90950 ((_ is Union!2903) r!15766)) b!1056177))

(assert (= (and start!90950 ((_ is Cons!10117) s!10566)) b!1056178))

(declare-fun m!1219125 () Bool)

(assert (=> b!1056176 m!1219125))

(declare-fun m!1219127 () Bool)

(assert (=> start!90950 m!1219127))

(declare-fun m!1219129 () Bool)

(assert (=> b!1056180 m!1219129))

(declare-fun m!1219131 () Bool)

(assert (=> b!1056180 m!1219131))

(declare-fun m!1219133 () Bool)

(assert (=> b!1056180 m!1219133))

(declare-fun m!1219135 () Bool)

(assert (=> b!1056181 m!1219135))

(declare-fun m!1219137 () Bool)

(assert (=> b!1056181 m!1219137))

(declare-fun m!1219139 () Bool)

(assert (=> b!1056181 m!1219139))

(check-sat (not b!1056181) (not b!1056178) (not b!1056176) (not b!1056180) (not b!1056175) (not b!1056177) (not start!90950) tp_is_empty!5449 (not b!1056179))
(check-sat)
(get-model)

(declare-fun b!1056222 () Bool)

(declare-fun e!670663 () Bool)

(declare-fun e!670660 () Bool)

(assert (=> b!1056222 (= e!670663 e!670660)))

(declare-fun c!176734 () Bool)

(assert (=> b!1056222 (= c!176734 ((_ is Union!2903) r!15766))))

(declare-fun call!75432 () Bool)

(declare-fun c!176733 () Bool)

(declare-fun bm!75425 () Bool)

(assert (=> bm!75425 (= call!75432 (validRegex!1372 (ite c!176733 (reg!3232 r!15766) (ite c!176734 (regTwo!6319 r!15766) (regTwo!6318 r!15766)))))))

(declare-fun b!1056223 () Bool)

(declare-fun e!670664 () Bool)

(assert (=> b!1056223 (= e!670664 call!75432)))

(declare-fun b!1056224 () Bool)

(declare-fun e!670659 () Bool)

(declare-fun e!670662 () Bool)

(assert (=> b!1056224 (= e!670659 e!670662)))

(declare-fun res!472331 () Bool)

(assert (=> b!1056224 (=> (not res!472331) (not e!670662))))

(declare-fun call!75431 () Bool)

(assert (=> b!1056224 (= res!472331 call!75431)))

(declare-fun bm!75426 () Bool)

(declare-fun call!75430 () Bool)

(assert (=> bm!75426 (= call!75430 call!75432)))

(declare-fun b!1056225 () Bool)

(declare-fun res!472328 () Bool)

(declare-fun e!670661 () Bool)

(assert (=> b!1056225 (=> (not res!472328) (not e!670661))))

(assert (=> b!1056225 (= res!472328 call!75431)))

(assert (=> b!1056225 (= e!670660 e!670661)))

(declare-fun b!1056226 () Bool)

(declare-fun e!670658 () Bool)

(assert (=> b!1056226 (= e!670658 e!670663)))

(assert (=> b!1056226 (= c!176733 ((_ is Star!2903) r!15766))))

(declare-fun b!1056227 () Bool)

(assert (=> b!1056227 (= e!670662 call!75430)))

(declare-fun bm!75427 () Bool)

(assert (=> bm!75427 (= call!75431 (validRegex!1372 (ite c!176734 (regOne!6319 r!15766) (regOne!6318 r!15766))))))

(declare-fun d!300229 () Bool)

(declare-fun res!472327 () Bool)

(assert (=> d!300229 (=> res!472327 e!670658)))

(assert (=> d!300229 (= res!472327 ((_ is ElementMatch!2903) r!15766))))

(assert (=> d!300229 (= (validRegex!1372 r!15766) e!670658)))

(declare-fun b!1056228 () Bool)

(assert (=> b!1056228 (= e!670663 e!670664)))

(declare-fun res!472330 () Bool)

(declare-fun nullable!995 (Regex!2903) Bool)

(assert (=> b!1056228 (= res!472330 (not (nullable!995 (reg!3232 r!15766))))))

(assert (=> b!1056228 (=> (not res!472330) (not e!670664))))

(declare-fun b!1056229 () Bool)

(assert (=> b!1056229 (= e!670661 call!75430)))

(declare-fun b!1056230 () Bool)

(declare-fun res!472329 () Bool)

(assert (=> b!1056230 (=> res!472329 e!670659)))

(assert (=> b!1056230 (= res!472329 (not ((_ is Concat!4736) r!15766)))))

(assert (=> b!1056230 (= e!670660 e!670659)))

(assert (= (and d!300229 (not res!472327)) b!1056226))

(assert (= (and b!1056226 c!176733) b!1056228))

(assert (= (and b!1056226 (not c!176733)) b!1056222))

(assert (= (and b!1056228 res!472330) b!1056223))

(assert (= (and b!1056222 c!176734) b!1056225))

(assert (= (and b!1056222 (not c!176734)) b!1056230))

(assert (= (and b!1056225 res!472328) b!1056229))

(assert (= (and b!1056230 (not res!472329)) b!1056224))

(assert (= (and b!1056224 res!472331) b!1056227))

(assert (= (or b!1056229 b!1056227) bm!75426))

(assert (= (or b!1056225 b!1056224) bm!75427))

(assert (= (or b!1056223 bm!75426) bm!75425))

(declare-fun m!1219141 () Bool)

(assert (=> bm!75425 m!1219141))

(declare-fun m!1219143 () Bool)

(assert (=> bm!75427 m!1219143))

(declare-fun m!1219145 () Bool)

(assert (=> b!1056228 m!1219145))

(assert (=> start!90950 d!300229))

(declare-fun bm!75430 () Bool)

(declare-fun call!75435 () Bool)

(declare-fun isEmpty!6535 (List!10133) Bool)

(assert (=> bm!75430 (= call!75435 (isEmpty!6535 s!10566))))

(declare-fun b!1056259 () Bool)

(declare-fun e!670680 () Bool)

(declare-fun e!670683 () Bool)

(assert (=> b!1056259 (= e!670680 e!670683)))

(declare-fun res!472349 () Bool)

(assert (=> b!1056259 (=> (not res!472349) (not e!670683))))

(declare-fun lt!359100 () Bool)

(assert (=> b!1056259 (= res!472349 (not lt!359100))))

(declare-fun b!1056260 () Bool)

(declare-fun e!670684 () Bool)

(declare-fun derivativeStep!795 (Regex!2903 C!6376) Regex!2903)

(declare-fun head!1950 (List!10133) C!6376)

(declare-fun tail!1512 (List!10133) List!10133)

(assert (=> b!1056260 (= e!670684 (matchR!1439 (derivativeStep!795 lt!359097 (head!1950 s!10566)) (tail!1512 s!10566)))))

(declare-fun d!300231 () Bool)

(declare-fun e!670681 () Bool)

(assert (=> d!300231 e!670681))

(declare-fun c!176741 () Bool)

(assert (=> d!300231 (= c!176741 ((_ is EmptyExpr!2903) lt!359097))))

(assert (=> d!300231 (= lt!359100 e!670684)))

(declare-fun c!176742 () Bool)

(assert (=> d!300231 (= c!176742 (isEmpty!6535 s!10566))))

(assert (=> d!300231 (validRegex!1372 lt!359097)))

(assert (=> d!300231 (= (matchR!1439 lt!359097 s!10566) lt!359100)))

(declare-fun b!1056261 () Bool)

(declare-fun e!670679 () Bool)

(assert (=> b!1056261 (= e!670681 e!670679)))

(declare-fun c!176743 () Bool)

(assert (=> b!1056261 (= c!176743 ((_ is EmptyLang!2903) lt!359097))))

(declare-fun b!1056262 () Bool)

(assert (=> b!1056262 (= e!670684 (nullable!995 lt!359097))))

(declare-fun b!1056263 () Bool)

(declare-fun e!670682 () Bool)

(assert (=> b!1056263 (= e!670682 (= (head!1950 s!10566) (c!176720 lt!359097)))))

(declare-fun b!1056264 () Bool)

(declare-fun e!670685 () Bool)

(assert (=> b!1056264 (= e!670683 e!670685)))

(declare-fun res!472351 () Bool)

(assert (=> b!1056264 (=> res!472351 e!670685)))

(assert (=> b!1056264 (= res!472351 call!75435)))

(declare-fun b!1056265 () Bool)

(assert (=> b!1056265 (= e!670679 (not lt!359100))))

(declare-fun b!1056266 () Bool)

(assert (=> b!1056266 (= e!670685 (not (= (head!1950 s!10566) (c!176720 lt!359097))))))

(declare-fun b!1056267 () Bool)

(declare-fun res!472350 () Bool)

(assert (=> b!1056267 (=> res!472350 e!670680)))

(assert (=> b!1056267 (= res!472350 (not ((_ is ElementMatch!2903) lt!359097)))))

(assert (=> b!1056267 (= e!670679 e!670680)))

(declare-fun b!1056268 () Bool)

(declare-fun res!472352 () Bool)

(assert (=> b!1056268 (=> res!472352 e!670680)))

(assert (=> b!1056268 (= res!472352 e!670682)))

(declare-fun res!472348 () Bool)

(assert (=> b!1056268 (=> (not res!472348) (not e!670682))))

(assert (=> b!1056268 (= res!472348 lt!359100)))

(declare-fun b!1056269 () Bool)

(assert (=> b!1056269 (= e!670681 (= lt!359100 call!75435))))

(declare-fun b!1056270 () Bool)

(declare-fun res!472353 () Bool)

(assert (=> b!1056270 (=> (not res!472353) (not e!670682))))

(assert (=> b!1056270 (= res!472353 (isEmpty!6535 (tail!1512 s!10566)))))

(declare-fun b!1056271 () Bool)

(declare-fun res!472355 () Bool)

(assert (=> b!1056271 (=> (not res!472355) (not e!670682))))

(assert (=> b!1056271 (= res!472355 (not call!75435))))

(declare-fun b!1056272 () Bool)

(declare-fun res!472354 () Bool)

(assert (=> b!1056272 (=> res!472354 e!670685)))

(assert (=> b!1056272 (= res!472354 (not (isEmpty!6535 (tail!1512 s!10566))))))

(assert (= (and d!300231 c!176742) b!1056262))

(assert (= (and d!300231 (not c!176742)) b!1056260))

(assert (= (and d!300231 c!176741) b!1056269))

(assert (= (and d!300231 (not c!176741)) b!1056261))

(assert (= (and b!1056261 c!176743) b!1056265))

(assert (= (and b!1056261 (not c!176743)) b!1056267))

(assert (= (and b!1056267 (not res!472350)) b!1056268))

(assert (= (and b!1056268 res!472348) b!1056271))

(assert (= (and b!1056271 res!472355) b!1056270))

(assert (= (and b!1056270 res!472353) b!1056263))

(assert (= (and b!1056268 (not res!472352)) b!1056259))

(assert (= (and b!1056259 res!472349) b!1056264))

(assert (= (and b!1056264 (not res!472351)) b!1056272))

(assert (= (and b!1056272 (not res!472354)) b!1056266))

(assert (= (or b!1056269 b!1056264 b!1056271) bm!75430))

(declare-fun m!1219147 () Bool)

(assert (=> b!1056266 m!1219147))

(declare-fun m!1219149 () Bool)

(assert (=> bm!75430 m!1219149))

(assert (=> b!1056260 m!1219147))

(assert (=> b!1056260 m!1219147))

(declare-fun m!1219151 () Bool)

(assert (=> b!1056260 m!1219151))

(declare-fun m!1219153 () Bool)

(assert (=> b!1056260 m!1219153))

(assert (=> b!1056260 m!1219151))

(assert (=> b!1056260 m!1219153))

(declare-fun m!1219155 () Bool)

(assert (=> b!1056260 m!1219155))

(assert (=> b!1056263 m!1219147))

(assert (=> d!300231 m!1219149))

(assert (=> d!300231 m!1219125))

(assert (=> b!1056270 m!1219153))

(assert (=> b!1056270 m!1219153))

(declare-fun m!1219157 () Bool)

(assert (=> b!1056270 m!1219157))

(declare-fun m!1219159 () Bool)

(assert (=> b!1056262 m!1219159))

(assert (=> b!1056272 m!1219153))

(assert (=> b!1056272 m!1219153))

(assert (=> b!1056272 m!1219157))

(assert (=> b!1056181 d!300231))

(declare-fun bm!75441 () Bool)

(declare-fun call!75450 () Regex!2903)

(declare-fun call!75449 () Regex!2903)

(assert (=> bm!75441 (= call!75450 call!75449)))

(declare-fun b!1056295 () Bool)

(declare-fun e!670698 () Bool)

(declare-fun lt!359103 () Regex!2903)

(assert (=> b!1056295 (= e!670698 (= (nullable!995 lt!359103) (nullable!995 (regOne!6319 r!15766))))))

(declare-fun d!300233 () Bool)

(assert (=> d!300233 e!670698))

(declare-fun res!472358 () Bool)

(assert (=> d!300233 (=> (not res!472358) (not e!670698))))

(assert (=> d!300233 (= res!472358 (validRegex!1372 lt!359103))))

(declare-fun e!670699 () Regex!2903)

(assert (=> d!300233 (= lt!359103 e!670699)))

(declare-fun c!176757 () Bool)

(assert (=> d!300233 (= c!176757 (and ((_ is Concat!4736) (regOne!6319 r!15766)) ((_ is EmptyExpr!2903) (regOne!6318 (regOne!6319 r!15766)))))))

(assert (=> d!300233 (validRegex!1372 (regOne!6319 r!15766))))

(assert (=> d!300233 (= (removeUselessConcat!452 (regOne!6319 r!15766)) lt!359103)))

(declare-fun b!1056296 () Bool)

(declare-fun call!75446 () Regex!2903)

(assert (=> b!1056296 (= e!670699 call!75446)))

(declare-fun b!1056297 () Bool)

(declare-fun e!670702 () Regex!2903)

(declare-fun call!75448 () Regex!2903)

(assert (=> b!1056297 (= e!670702 (Concat!4736 call!75449 call!75448))))

(declare-fun b!1056298 () Bool)

(declare-fun c!176756 () Bool)

(assert (=> b!1056298 (= c!176756 ((_ is Concat!4736) (regOne!6319 r!15766)))))

(declare-fun e!670703 () Regex!2903)

(assert (=> b!1056298 (= e!670703 e!670702)))

(declare-fun b!1056299 () Bool)

(declare-fun e!670701 () Regex!2903)

(assert (=> b!1056299 (= e!670701 (Star!2903 call!75450))))

(declare-fun c!176758 () Bool)

(declare-fun bm!75442 () Bool)

(assert (=> bm!75442 (= call!75446 (removeUselessConcat!452 (ite c!176757 (regTwo!6318 (regOne!6319 r!15766)) (ite c!176758 (regOne!6318 (regOne!6319 r!15766)) (ite c!176756 (regTwo!6318 (regOne!6319 r!15766)) (regOne!6319 (regOne!6319 r!15766)))))))))

(declare-fun b!1056300 () Bool)

(assert (=> b!1056300 (= e!670701 (regOne!6319 r!15766))))

(declare-fun bm!75443 () Bool)

(declare-fun c!176755 () Bool)

(assert (=> bm!75443 (= call!75449 (removeUselessConcat!452 (ite c!176756 (regOne!6318 (regOne!6319 r!15766)) (ite c!176755 (regTwo!6319 (regOne!6319 r!15766)) (reg!3232 (regOne!6319 r!15766))))))))

(declare-fun b!1056301 () Bool)

(declare-fun c!176754 () Bool)

(assert (=> b!1056301 (= c!176754 ((_ is Star!2903) (regOne!6319 r!15766)))))

(declare-fun e!670700 () Regex!2903)

(assert (=> b!1056301 (= e!670700 e!670701)))

(declare-fun b!1056302 () Bool)

(declare-fun call!75447 () Regex!2903)

(assert (=> b!1056302 (= e!670703 call!75447)))

(declare-fun bm!75444 () Bool)

(assert (=> bm!75444 (= call!75447 call!75446)))

(declare-fun b!1056303 () Bool)

(assert (=> b!1056303 (= e!670699 e!670703)))

(assert (=> b!1056303 (= c!176758 (and ((_ is Concat!4736) (regOne!6319 r!15766)) ((_ is EmptyExpr!2903) (regTwo!6318 (regOne!6319 r!15766)))))))

(declare-fun b!1056304 () Bool)

(assert (=> b!1056304 (= e!670700 (Union!2903 call!75448 call!75450))))

(declare-fun b!1056305 () Bool)

(assert (=> b!1056305 (= e!670702 e!670700)))

(assert (=> b!1056305 (= c!176755 ((_ is Union!2903) (regOne!6319 r!15766)))))

(declare-fun bm!75445 () Bool)

(assert (=> bm!75445 (= call!75448 call!75447)))

(assert (= (and d!300233 c!176757) b!1056296))

(assert (= (and d!300233 (not c!176757)) b!1056303))

(assert (= (and b!1056303 c!176758) b!1056302))

(assert (= (and b!1056303 (not c!176758)) b!1056298))

(assert (= (and b!1056298 c!176756) b!1056297))

(assert (= (and b!1056298 (not c!176756)) b!1056305))

(assert (= (and b!1056305 c!176755) b!1056304))

(assert (= (and b!1056305 (not c!176755)) b!1056301))

(assert (= (and b!1056301 c!176754) b!1056299))

(assert (= (and b!1056301 (not c!176754)) b!1056300))

(assert (= (or b!1056304 b!1056299) bm!75441))

(assert (= (or b!1056297 b!1056304) bm!75445))

(assert (= (or b!1056297 bm!75441) bm!75443))

(assert (= (or b!1056302 bm!75445) bm!75444))

(assert (= (or b!1056296 bm!75444) bm!75442))

(assert (= (and d!300233 res!472358) b!1056295))

(declare-fun m!1219161 () Bool)

(assert (=> b!1056295 m!1219161))

(declare-fun m!1219163 () Bool)

(assert (=> b!1056295 m!1219163))

(declare-fun m!1219165 () Bool)

(assert (=> d!300233 m!1219165))

(declare-fun m!1219167 () Bool)

(assert (=> d!300233 m!1219167))

(declare-fun m!1219169 () Bool)

(assert (=> bm!75442 m!1219169))

(declare-fun m!1219171 () Bool)

(assert (=> bm!75443 m!1219171))

(assert (=> b!1056181 d!300233))

(declare-fun bm!75446 () Bool)

(declare-fun call!75455 () Regex!2903)

(declare-fun call!75454 () Regex!2903)

(assert (=> bm!75446 (= call!75455 call!75454)))

(declare-fun b!1056306 () Bool)

(declare-fun e!670704 () Bool)

(declare-fun lt!359104 () Regex!2903)

(assert (=> b!1056306 (= e!670704 (= (nullable!995 lt!359104) (nullable!995 (regTwo!6319 r!15766))))))

(declare-fun d!300235 () Bool)

(assert (=> d!300235 e!670704))

(declare-fun res!472359 () Bool)

(assert (=> d!300235 (=> (not res!472359) (not e!670704))))

(assert (=> d!300235 (= res!472359 (validRegex!1372 lt!359104))))

(declare-fun e!670705 () Regex!2903)

(assert (=> d!300235 (= lt!359104 e!670705)))

(declare-fun c!176762 () Bool)

(assert (=> d!300235 (= c!176762 (and ((_ is Concat!4736) (regTwo!6319 r!15766)) ((_ is EmptyExpr!2903) (regOne!6318 (regTwo!6319 r!15766)))))))

(assert (=> d!300235 (validRegex!1372 (regTwo!6319 r!15766))))

(assert (=> d!300235 (= (removeUselessConcat!452 (regTwo!6319 r!15766)) lt!359104)))

(declare-fun b!1056307 () Bool)

(declare-fun call!75451 () Regex!2903)

(assert (=> b!1056307 (= e!670705 call!75451)))

(declare-fun b!1056308 () Bool)

(declare-fun e!670708 () Regex!2903)

(declare-fun call!75453 () Regex!2903)

(assert (=> b!1056308 (= e!670708 (Concat!4736 call!75454 call!75453))))

(declare-fun b!1056309 () Bool)

(declare-fun c!176761 () Bool)

(assert (=> b!1056309 (= c!176761 ((_ is Concat!4736) (regTwo!6319 r!15766)))))

(declare-fun e!670709 () Regex!2903)

(assert (=> b!1056309 (= e!670709 e!670708)))

(declare-fun b!1056310 () Bool)

(declare-fun e!670707 () Regex!2903)

(assert (=> b!1056310 (= e!670707 (Star!2903 call!75455))))

(declare-fun bm!75447 () Bool)

(declare-fun c!176763 () Bool)

(assert (=> bm!75447 (= call!75451 (removeUselessConcat!452 (ite c!176762 (regTwo!6318 (regTwo!6319 r!15766)) (ite c!176763 (regOne!6318 (regTwo!6319 r!15766)) (ite c!176761 (regTwo!6318 (regTwo!6319 r!15766)) (regOne!6319 (regTwo!6319 r!15766)))))))))

(declare-fun b!1056311 () Bool)

(assert (=> b!1056311 (= e!670707 (regTwo!6319 r!15766))))

(declare-fun bm!75448 () Bool)

(declare-fun c!176760 () Bool)

(assert (=> bm!75448 (= call!75454 (removeUselessConcat!452 (ite c!176761 (regOne!6318 (regTwo!6319 r!15766)) (ite c!176760 (regTwo!6319 (regTwo!6319 r!15766)) (reg!3232 (regTwo!6319 r!15766))))))))

(declare-fun b!1056312 () Bool)

(declare-fun c!176759 () Bool)

(assert (=> b!1056312 (= c!176759 ((_ is Star!2903) (regTwo!6319 r!15766)))))

(declare-fun e!670706 () Regex!2903)

(assert (=> b!1056312 (= e!670706 e!670707)))

(declare-fun b!1056313 () Bool)

(declare-fun call!75452 () Regex!2903)

(assert (=> b!1056313 (= e!670709 call!75452)))

(declare-fun bm!75449 () Bool)

(assert (=> bm!75449 (= call!75452 call!75451)))

(declare-fun b!1056314 () Bool)

(assert (=> b!1056314 (= e!670705 e!670709)))

(assert (=> b!1056314 (= c!176763 (and ((_ is Concat!4736) (regTwo!6319 r!15766)) ((_ is EmptyExpr!2903) (regTwo!6318 (regTwo!6319 r!15766)))))))

(declare-fun b!1056315 () Bool)

(assert (=> b!1056315 (= e!670706 (Union!2903 call!75453 call!75455))))

(declare-fun b!1056316 () Bool)

(assert (=> b!1056316 (= e!670708 e!670706)))

(assert (=> b!1056316 (= c!176760 ((_ is Union!2903) (regTwo!6319 r!15766)))))

(declare-fun bm!75450 () Bool)

(assert (=> bm!75450 (= call!75453 call!75452)))

(assert (= (and d!300235 c!176762) b!1056307))

(assert (= (and d!300235 (not c!176762)) b!1056314))

(assert (= (and b!1056314 c!176763) b!1056313))

(assert (= (and b!1056314 (not c!176763)) b!1056309))

(assert (= (and b!1056309 c!176761) b!1056308))

(assert (= (and b!1056309 (not c!176761)) b!1056316))

(assert (= (and b!1056316 c!176760) b!1056315))

(assert (= (and b!1056316 (not c!176760)) b!1056312))

(assert (= (and b!1056312 c!176759) b!1056310))

(assert (= (and b!1056312 (not c!176759)) b!1056311))

(assert (= (or b!1056315 b!1056310) bm!75446))

(assert (= (or b!1056308 b!1056315) bm!75450))

(assert (= (or b!1056308 bm!75446) bm!75448))

(assert (= (or b!1056313 bm!75450) bm!75449))

(assert (= (or b!1056307 bm!75449) bm!75447))

(assert (= (and d!300235 res!472359) b!1056306))

(declare-fun m!1219173 () Bool)

(assert (=> b!1056306 m!1219173))

(declare-fun m!1219175 () Bool)

(assert (=> b!1056306 m!1219175))

(declare-fun m!1219177 () Bool)

(assert (=> d!300235 m!1219177))

(declare-fun m!1219179 () Bool)

(assert (=> d!300235 m!1219179))

(declare-fun m!1219181 () Bool)

(assert (=> bm!75447 m!1219181))

(declare-fun m!1219183 () Bool)

(assert (=> bm!75448 m!1219183))

(assert (=> b!1056181 d!300235))

(declare-fun b!1056554 () Bool)

(assert (=> b!1056554 true))

(assert (=> b!1056554 true))

(declare-fun bs!251704 () Bool)

(declare-fun b!1056547 () Bool)

(assert (= bs!251704 (and b!1056547 b!1056554)))

(declare-fun lambda!38220 () Int)

(declare-fun lambda!38219 () Int)

(assert (=> bs!251704 (not (= lambda!38220 lambda!38219))))

(assert (=> b!1056547 true))

(assert (=> b!1056547 true))

(declare-fun b!1056545 () Bool)

(declare-fun e!670830 () Bool)

(assert (=> b!1056545 (= e!670830 (= s!10566 (Cons!10117 (c!176720 r!15766) Nil!10117)))))

(declare-fun b!1056546 () Bool)

(declare-fun res!472445 () Bool)

(declare-fun e!670831 () Bool)

(assert (=> b!1056546 (=> res!472445 e!670831)))

(declare-fun call!75503 () Bool)

(assert (=> b!1056546 (= res!472445 call!75503)))

(declare-fun e!670835 () Bool)

(assert (=> b!1056546 (= e!670835 e!670831)))

(declare-fun bm!75497 () Bool)

(declare-fun c!176817 () Bool)

(declare-fun call!75502 () Bool)

(declare-fun Exists!630 (Int) Bool)

(assert (=> bm!75497 (= call!75502 (Exists!630 (ite c!176817 lambda!38219 lambda!38220)))))

(assert (=> b!1056547 (= e!670835 call!75502)))

(declare-fun d!300237 () Bool)

(declare-fun c!176818 () Bool)

(assert (=> d!300237 (= c!176818 ((_ is EmptyExpr!2903) r!15766))))

(declare-fun e!670833 () Bool)

(assert (=> d!300237 (= (matchRSpec!702 r!15766 s!10566) e!670833)))

(declare-fun b!1056548 () Bool)

(declare-fun c!176819 () Bool)

(assert (=> b!1056548 (= c!176819 ((_ is Union!2903) r!15766))))

(declare-fun e!670832 () Bool)

(assert (=> b!1056548 (= e!670830 e!670832)))

(declare-fun b!1056549 () Bool)

(declare-fun c!176816 () Bool)

(assert (=> b!1056549 (= c!176816 ((_ is ElementMatch!2903) r!15766))))

(declare-fun e!670829 () Bool)

(assert (=> b!1056549 (= e!670829 e!670830)))

(declare-fun b!1056550 () Bool)

(assert (=> b!1056550 (= e!670832 e!670835)))

(assert (=> b!1056550 (= c!176817 ((_ is Star!2903) r!15766))))

(declare-fun b!1056551 () Bool)

(assert (=> b!1056551 (= e!670833 call!75503)))

(declare-fun b!1056552 () Bool)

(assert (=> b!1056552 (= e!670833 e!670829)))

(declare-fun res!472447 () Bool)

(assert (=> b!1056552 (= res!472447 (not ((_ is EmptyLang!2903) r!15766)))))

(assert (=> b!1056552 (=> (not res!472447) (not e!670829))))

(declare-fun b!1056553 () Bool)

(declare-fun e!670834 () Bool)

(assert (=> b!1056553 (= e!670832 e!670834)))

(declare-fun res!472446 () Bool)

(assert (=> b!1056553 (= res!472446 (matchRSpec!702 (regOne!6319 r!15766) s!10566))))

(assert (=> b!1056553 (=> res!472446 e!670834)))

(declare-fun bm!75498 () Bool)

(assert (=> bm!75498 (= call!75503 (isEmpty!6535 s!10566))))

(assert (=> b!1056554 (= e!670831 call!75502)))

(declare-fun b!1056555 () Bool)

(assert (=> b!1056555 (= e!670834 (matchRSpec!702 (regTwo!6319 r!15766) s!10566))))

(assert (= (and d!300237 c!176818) b!1056551))

(assert (= (and d!300237 (not c!176818)) b!1056552))

(assert (= (and b!1056552 res!472447) b!1056549))

(assert (= (and b!1056549 c!176816) b!1056545))

(assert (= (and b!1056549 (not c!176816)) b!1056548))

(assert (= (and b!1056548 c!176819) b!1056553))

(assert (= (and b!1056548 (not c!176819)) b!1056550))

(assert (= (and b!1056553 (not res!472446)) b!1056555))

(assert (= (and b!1056550 c!176817) b!1056546))

(assert (= (and b!1056550 (not c!176817)) b!1056547))

(assert (= (and b!1056546 (not res!472445)) b!1056554))

(assert (= (or b!1056554 b!1056547) bm!75497))

(assert (= (or b!1056551 b!1056546) bm!75498))

(declare-fun m!1219249 () Bool)

(assert (=> bm!75497 m!1219249))

(declare-fun m!1219251 () Bool)

(assert (=> b!1056553 m!1219251))

(assert (=> bm!75498 m!1219149))

(declare-fun m!1219253 () Bool)

(assert (=> b!1056555 m!1219253))

(assert (=> b!1056180 d!300237))

(declare-fun bm!75499 () Bool)

(declare-fun call!75504 () Bool)

(assert (=> bm!75499 (= call!75504 (isEmpty!6535 s!10566))))

(declare-fun b!1056560 () Bool)

(declare-fun e!670837 () Bool)

(declare-fun e!670840 () Bool)

(assert (=> b!1056560 (= e!670837 e!670840)))

(declare-fun res!472449 () Bool)

(assert (=> b!1056560 (=> (not res!472449) (not e!670840))))

(declare-fun lt!359116 () Bool)

(assert (=> b!1056560 (= res!472449 (not lt!359116))))

(declare-fun b!1056561 () Bool)

(declare-fun e!670841 () Bool)

(assert (=> b!1056561 (= e!670841 (matchR!1439 (derivativeStep!795 r!15766 (head!1950 s!10566)) (tail!1512 s!10566)))))

(declare-fun d!300253 () Bool)

(declare-fun e!670838 () Bool)

(assert (=> d!300253 e!670838))

(declare-fun c!176820 () Bool)

(assert (=> d!300253 (= c!176820 ((_ is EmptyExpr!2903) r!15766))))

(assert (=> d!300253 (= lt!359116 e!670841)))

(declare-fun c!176821 () Bool)

(assert (=> d!300253 (= c!176821 (isEmpty!6535 s!10566))))

(assert (=> d!300253 (validRegex!1372 r!15766)))

(assert (=> d!300253 (= (matchR!1439 r!15766 s!10566) lt!359116)))

(declare-fun b!1056562 () Bool)

(declare-fun e!670836 () Bool)

(assert (=> b!1056562 (= e!670838 e!670836)))

(declare-fun c!176822 () Bool)

(assert (=> b!1056562 (= c!176822 ((_ is EmptyLang!2903) r!15766))))

(declare-fun b!1056563 () Bool)

(assert (=> b!1056563 (= e!670841 (nullable!995 r!15766))))

(declare-fun b!1056564 () Bool)

(declare-fun e!670839 () Bool)

(assert (=> b!1056564 (= e!670839 (= (head!1950 s!10566) (c!176720 r!15766)))))

(declare-fun b!1056565 () Bool)

(declare-fun e!670842 () Bool)

(assert (=> b!1056565 (= e!670840 e!670842)))

(declare-fun res!472451 () Bool)

(assert (=> b!1056565 (=> res!472451 e!670842)))

(assert (=> b!1056565 (= res!472451 call!75504)))

(declare-fun b!1056566 () Bool)

(assert (=> b!1056566 (= e!670836 (not lt!359116))))

(declare-fun b!1056567 () Bool)

(assert (=> b!1056567 (= e!670842 (not (= (head!1950 s!10566) (c!176720 r!15766))))))

(declare-fun b!1056568 () Bool)

(declare-fun res!472450 () Bool)

(assert (=> b!1056568 (=> res!472450 e!670837)))

(assert (=> b!1056568 (= res!472450 (not ((_ is ElementMatch!2903) r!15766)))))

(assert (=> b!1056568 (= e!670836 e!670837)))

(declare-fun b!1056569 () Bool)

(declare-fun res!472452 () Bool)

(assert (=> b!1056569 (=> res!472452 e!670837)))

(assert (=> b!1056569 (= res!472452 e!670839)))

(declare-fun res!472448 () Bool)

(assert (=> b!1056569 (=> (not res!472448) (not e!670839))))

(assert (=> b!1056569 (= res!472448 lt!359116)))

(declare-fun b!1056570 () Bool)

(assert (=> b!1056570 (= e!670838 (= lt!359116 call!75504))))

(declare-fun b!1056571 () Bool)

(declare-fun res!472453 () Bool)

(assert (=> b!1056571 (=> (not res!472453) (not e!670839))))

(assert (=> b!1056571 (= res!472453 (isEmpty!6535 (tail!1512 s!10566)))))

(declare-fun b!1056572 () Bool)

(declare-fun res!472455 () Bool)

(assert (=> b!1056572 (=> (not res!472455) (not e!670839))))

(assert (=> b!1056572 (= res!472455 (not call!75504))))

(declare-fun b!1056573 () Bool)

(declare-fun res!472454 () Bool)

(assert (=> b!1056573 (=> res!472454 e!670842)))

(assert (=> b!1056573 (= res!472454 (not (isEmpty!6535 (tail!1512 s!10566))))))

(assert (= (and d!300253 c!176821) b!1056563))

(assert (= (and d!300253 (not c!176821)) b!1056561))

(assert (= (and d!300253 c!176820) b!1056570))

(assert (= (and d!300253 (not c!176820)) b!1056562))

(assert (= (and b!1056562 c!176822) b!1056566))

(assert (= (and b!1056562 (not c!176822)) b!1056568))

(assert (= (and b!1056568 (not res!472450)) b!1056569))

(assert (= (and b!1056569 res!472448) b!1056572))

(assert (= (and b!1056572 res!472455) b!1056571))

(assert (= (and b!1056571 res!472453) b!1056564))

(assert (= (and b!1056569 (not res!472452)) b!1056560))

(assert (= (and b!1056560 res!472449) b!1056565))

(assert (= (and b!1056565 (not res!472451)) b!1056573))

(assert (= (and b!1056573 (not res!472454)) b!1056567))

(assert (= (or b!1056570 b!1056565 b!1056572) bm!75499))

(assert (=> b!1056567 m!1219147))

(assert (=> bm!75499 m!1219149))

(assert (=> b!1056561 m!1219147))

(assert (=> b!1056561 m!1219147))

(declare-fun m!1219255 () Bool)

(assert (=> b!1056561 m!1219255))

(assert (=> b!1056561 m!1219153))

(assert (=> b!1056561 m!1219255))

(assert (=> b!1056561 m!1219153))

(declare-fun m!1219257 () Bool)

(assert (=> b!1056561 m!1219257))

(assert (=> b!1056564 m!1219147))

(assert (=> d!300253 m!1219149))

(assert (=> d!300253 m!1219127))

(assert (=> b!1056571 m!1219153))

(assert (=> b!1056571 m!1219153))

(assert (=> b!1056571 m!1219157))

(declare-fun m!1219259 () Bool)

(assert (=> b!1056563 m!1219259))

(assert (=> b!1056573 m!1219153))

(assert (=> b!1056573 m!1219153))

(assert (=> b!1056573 m!1219157))

(assert (=> b!1056180 d!300253))

(declare-fun d!300255 () Bool)

(assert (=> d!300255 (= (matchR!1439 r!15766 s!10566) (matchRSpec!702 r!15766 s!10566))))

(declare-fun lt!359119 () Unit!15481)

(declare-fun choose!6727 (Regex!2903 List!10133) Unit!15481)

(assert (=> d!300255 (= lt!359119 (choose!6727 r!15766 s!10566))))

(assert (=> d!300255 (validRegex!1372 r!15766)))

(assert (=> d!300255 (= (mainMatchTheorem!702 r!15766 s!10566) lt!359119)))

(declare-fun bs!251705 () Bool)

(assert (= bs!251705 d!300255))

(assert (=> bs!251705 m!1219131))

(assert (=> bs!251705 m!1219129))

(declare-fun m!1219261 () Bool)

(assert (=> bs!251705 m!1219261))

(assert (=> bs!251705 m!1219127))

(assert (=> b!1056180 d!300255))

(declare-fun b!1056574 () Bool)

(declare-fun e!670848 () Bool)

(declare-fun e!670845 () Bool)

(assert (=> b!1056574 (= e!670848 e!670845)))

(declare-fun c!176824 () Bool)

(assert (=> b!1056574 (= c!176824 ((_ is Union!2903) lt!359097))))

(declare-fun call!75507 () Bool)

(declare-fun bm!75500 () Bool)

(declare-fun c!176823 () Bool)

(assert (=> bm!75500 (= call!75507 (validRegex!1372 (ite c!176823 (reg!3232 lt!359097) (ite c!176824 (regTwo!6319 lt!359097) (regTwo!6318 lt!359097)))))))

(declare-fun b!1056575 () Bool)

(declare-fun e!670849 () Bool)

(assert (=> b!1056575 (= e!670849 call!75507)))

(declare-fun b!1056576 () Bool)

(declare-fun e!670844 () Bool)

(declare-fun e!670847 () Bool)

(assert (=> b!1056576 (= e!670844 e!670847)))

(declare-fun res!472460 () Bool)

(assert (=> b!1056576 (=> (not res!472460) (not e!670847))))

(declare-fun call!75506 () Bool)

(assert (=> b!1056576 (= res!472460 call!75506)))

(declare-fun bm!75501 () Bool)

(declare-fun call!75505 () Bool)

(assert (=> bm!75501 (= call!75505 call!75507)))

(declare-fun b!1056577 () Bool)

(declare-fun res!472457 () Bool)

(declare-fun e!670846 () Bool)

(assert (=> b!1056577 (=> (not res!472457) (not e!670846))))

(assert (=> b!1056577 (= res!472457 call!75506)))

(assert (=> b!1056577 (= e!670845 e!670846)))

(declare-fun b!1056578 () Bool)

(declare-fun e!670843 () Bool)

(assert (=> b!1056578 (= e!670843 e!670848)))

(assert (=> b!1056578 (= c!176823 ((_ is Star!2903) lt!359097))))

(declare-fun b!1056579 () Bool)

(assert (=> b!1056579 (= e!670847 call!75505)))

(declare-fun bm!75502 () Bool)

(assert (=> bm!75502 (= call!75506 (validRegex!1372 (ite c!176824 (regOne!6319 lt!359097) (regOne!6318 lt!359097))))))

(declare-fun d!300257 () Bool)

(declare-fun res!472456 () Bool)

(assert (=> d!300257 (=> res!472456 e!670843)))

(assert (=> d!300257 (= res!472456 ((_ is ElementMatch!2903) lt!359097))))

(assert (=> d!300257 (= (validRegex!1372 lt!359097) e!670843)))

(declare-fun b!1056580 () Bool)

(assert (=> b!1056580 (= e!670848 e!670849)))

(declare-fun res!472459 () Bool)

(assert (=> b!1056580 (= res!472459 (not (nullable!995 (reg!3232 lt!359097))))))

(assert (=> b!1056580 (=> (not res!472459) (not e!670849))))

(declare-fun b!1056581 () Bool)

(assert (=> b!1056581 (= e!670846 call!75505)))

(declare-fun b!1056582 () Bool)

(declare-fun res!472458 () Bool)

(assert (=> b!1056582 (=> res!472458 e!670844)))

(assert (=> b!1056582 (= res!472458 (not ((_ is Concat!4736) lt!359097)))))

(assert (=> b!1056582 (= e!670845 e!670844)))

(assert (= (and d!300257 (not res!472456)) b!1056578))

(assert (= (and b!1056578 c!176823) b!1056580))

(assert (= (and b!1056578 (not c!176823)) b!1056574))

(assert (= (and b!1056580 res!472459) b!1056575))

(assert (= (and b!1056574 c!176824) b!1056577))

(assert (= (and b!1056574 (not c!176824)) b!1056582))

(assert (= (and b!1056577 res!472457) b!1056581))

(assert (= (and b!1056582 (not res!472458)) b!1056576))

(assert (= (and b!1056576 res!472460) b!1056579))

(assert (= (or b!1056581 b!1056579) bm!75501))

(assert (= (or b!1056577 b!1056576) bm!75502))

(assert (= (or b!1056575 bm!75501) bm!75500))

(declare-fun m!1219263 () Bool)

(assert (=> bm!75500 m!1219263))

(declare-fun m!1219265 () Bool)

(assert (=> bm!75502 m!1219265))

(declare-fun m!1219267 () Bool)

(assert (=> b!1056580 m!1219267))

(assert (=> b!1056176 d!300257))

(declare-fun b!1056596 () Bool)

(declare-fun e!670852 () Bool)

(declare-fun tp!317943 () Bool)

(declare-fun tp!317941 () Bool)

(assert (=> b!1056596 (= e!670852 (and tp!317943 tp!317941))))

(declare-fun b!1056593 () Bool)

(assert (=> b!1056593 (= e!670852 tp_is_empty!5449)))

(declare-fun b!1056595 () Bool)

(declare-fun tp!317942 () Bool)

(assert (=> b!1056595 (= e!670852 tp!317942)))

(declare-fun b!1056594 () Bool)

(declare-fun tp!317945 () Bool)

(declare-fun tp!317944 () Bool)

(assert (=> b!1056594 (= e!670852 (and tp!317945 tp!317944))))

(assert (=> b!1056179 (= tp!317887 e!670852)))

(assert (= (and b!1056179 ((_ is ElementMatch!2903) (reg!3232 r!15766))) b!1056593))

(assert (= (and b!1056179 ((_ is Concat!4736) (reg!3232 r!15766))) b!1056594))

(assert (= (and b!1056179 ((_ is Star!2903) (reg!3232 r!15766))) b!1056595))

(assert (= (and b!1056179 ((_ is Union!2903) (reg!3232 r!15766))) b!1056596))

(declare-fun b!1056600 () Bool)

(declare-fun e!670853 () Bool)

(declare-fun tp!317948 () Bool)

(declare-fun tp!317946 () Bool)

(assert (=> b!1056600 (= e!670853 (and tp!317948 tp!317946))))

(declare-fun b!1056597 () Bool)

(assert (=> b!1056597 (= e!670853 tp_is_empty!5449)))

(declare-fun b!1056599 () Bool)

(declare-fun tp!317947 () Bool)

(assert (=> b!1056599 (= e!670853 tp!317947)))

(declare-fun b!1056598 () Bool)

(declare-fun tp!317950 () Bool)

(declare-fun tp!317949 () Bool)

(assert (=> b!1056598 (= e!670853 (and tp!317950 tp!317949))))

(assert (=> b!1056175 (= tp!317890 e!670853)))

(assert (= (and b!1056175 ((_ is ElementMatch!2903) (regOne!6318 r!15766))) b!1056597))

(assert (= (and b!1056175 ((_ is Concat!4736) (regOne!6318 r!15766))) b!1056598))

(assert (= (and b!1056175 ((_ is Star!2903) (regOne!6318 r!15766))) b!1056599))

(assert (= (and b!1056175 ((_ is Union!2903) (regOne!6318 r!15766))) b!1056600))

(declare-fun b!1056604 () Bool)

(declare-fun e!670854 () Bool)

(declare-fun tp!317953 () Bool)

(declare-fun tp!317951 () Bool)

(assert (=> b!1056604 (= e!670854 (and tp!317953 tp!317951))))

(declare-fun b!1056601 () Bool)

(assert (=> b!1056601 (= e!670854 tp_is_empty!5449)))

(declare-fun b!1056603 () Bool)

(declare-fun tp!317952 () Bool)

(assert (=> b!1056603 (= e!670854 tp!317952)))

(declare-fun b!1056602 () Bool)

(declare-fun tp!317955 () Bool)

(declare-fun tp!317954 () Bool)

(assert (=> b!1056602 (= e!670854 (and tp!317955 tp!317954))))

(assert (=> b!1056175 (= tp!317892 e!670854)))

(assert (= (and b!1056175 ((_ is ElementMatch!2903) (regTwo!6318 r!15766))) b!1056601))

(assert (= (and b!1056175 ((_ is Concat!4736) (regTwo!6318 r!15766))) b!1056602))

(assert (= (and b!1056175 ((_ is Star!2903) (regTwo!6318 r!15766))) b!1056603))

(assert (= (and b!1056175 ((_ is Union!2903) (regTwo!6318 r!15766))) b!1056604))

(declare-fun b!1056608 () Bool)

(declare-fun e!670855 () Bool)

(declare-fun tp!317958 () Bool)

(declare-fun tp!317956 () Bool)

(assert (=> b!1056608 (= e!670855 (and tp!317958 tp!317956))))

(declare-fun b!1056605 () Bool)

(assert (=> b!1056605 (= e!670855 tp_is_empty!5449)))

(declare-fun b!1056607 () Bool)

(declare-fun tp!317957 () Bool)

(assert (=> b!1056607 (= e!670855 tp!317957)))

(declare-fun b!1056606 () Bool)

(declare-fun tp!317960 () Bool)

(declare-fun tp!317959 () Bool)

(assert (=> b!1056606 (= e!670855 (and tp!317960 tp!317959))))

(assert (=> b!1056177 (= tp!317891 e!670855)))

(assert (= (and b!1056177 ((_ is ElementMatch!2903) (regOne!6319 r!15766))) b!1056605))

(assert (= (and b!1056177 ((_ is Concat!4736) (regOne!6319 r!15766))) b!1056606))

(assert (= (and b!1056177 ((_ is Star!2903) (regOne!6319 r!15766))) b!1056607))

(assert (= (and b!1056177 ((_ is Union!2903) (regOne!6319 r!15766))) b!1056608))

(declare-fun b!1056612 () Bool)

(declare-fun e!670856 () Bool)

(declare-fun tp!317963 () Bool)

(declare-fun tp!317961 () Bool)

(assert (=> b!1056612 (= e!670856 (and tp!317963 tp!317961))))

(declare-fun b!1056609 () Bool)

(assert (=> b!1056609 (= e!670856 tp_is_empty!5449)))

(declare-fun b!1056611 () Bool)

(declare-fun tp!317962 () Bool)

(assert (=> b!1056611 (= e!670856 tp!317962)))

(declare-fun b!1056610 () Bool)

(declare-fun tp!317965 () Bool)

(declare-fun tp!317964 () Bool)

(assert (=> b!1056610 (= e!670856 (and tp!317965 tp!317964))))

(assert (=> b!1056177 (= tp!317888 e!670856)))

(assert (= (and b!1056177 ((_ is ElementMatch!2903) (regTwo!6319 r!15766))) b!1056609))

(assert (= (and b!1056177 ((_ is Concat!4736) (regTwo!6319 r!15766))) b!1056610))

(assert (= (and b!1056177 ((_ is Star!2903) (regTwo!6319 r!15766))) b!1056611))

(assert (= (and b!1056177 ((_ is Union!2903) (regTwo!6319 r!15766))) b!1056612))

(declare-fun b!1056617 () Bool)

(declare-fun e!670859 () Bool)

(declare-fun tp!317968 () Bool)

(assert (=> b!1056617 (= e!670859 (and tp_is_empty!5449 tp!317968))))

(assert (=> b!1056178 (= tp!317889 e!670859)))

(assert (= (and b!1056178 ((_ is Cons!10117) (t!101179 s!10566))) b!1056617))

(check-sat (not d!300233) (not b!1056571) (not b!1056270) (not b!1056564) (not b!1056555) (not b!1056602) (not b!1056228) (not bm!75502) (not b!1056563) (not b!1056617) (not b!1056612) (not bm!75442) (not b!1056263) (not bm!75500) (not b!1056599) (not b!1056610) (not b!1056594) tp_is_empty!5449 (not b!1056596) (not b!1056260) (not b!1056604) (not d!300253) (not b!1056553) (not b!1056580) (not b!1056262) (not d!300235) (not bm!75443) (not b!1056611) (not b!1056598) (not d!300231) (not b!1056567) (not b!1056306) (not b!1056600) (not bm!75448) (not bm!75427) (not bm!75497) (not b!1056608) (not bm!75430) (not b!1056266) (not bm!75447) (not b!1056295) (not b!1056606) (not d!300255) (not b!1056573) (not b!1056607) (not bm!75498) (not bm!75425) (not b!1056595) (not b!1056272) (not bm!75499) (not b!1056561) (not b!1056603))
(check-sat)
