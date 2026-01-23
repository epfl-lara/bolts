; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87678 () Bool)

(assert start!87678)

(declare-fun b!996939 () Bool)

(declare-fun e!639417 () Bool)

(declare-fun tp!304177 () Bool)

(declare-fun tp!304179 () Bool)

(assert (=> b!996939 (= e!639417 (and tp!304177 tp!304179))))

(declare-fun b!996940 () Bool)

(declare-fun e!639419 () Bool)

(declare-datatypes ((C!6092 0))(
  ( (C!6093 (val!3294 Int)) )
))
(declare-datatypes ((Regex!2761 0))(
  ( (ElementMatch!2761 (c!164006 C!6092)) (Concat!4594 (regOne!6034 Regex!2761) (regTwo!6034 Regex!2761)) (EmptyExpr!2761) (Star!2761 (reg!3090 Regex!2761)) (EmptyLang!2761) (Union!2761 (regOne!6035 Regex!2761) (regTwo!6035 Regex!2761)) )
))
(declare-fun r!15766 () Regex!2761)

(declare-datatypes ((List!9991 0))(
  ( (Nil!9975) (Cons!9975 (h!15376 C!6092) (t!101037 List!9991)) )
))
(declare-fun s!10566 () List!9991)

(declare-fun matchR!1297 (Regex!2761 List!9991) Bool)

(assert (=> b!996940 (= e!639419 (matchR!1297 (regTwo!6035 r!15766) s!10566))))

(declare-fun b!996941 () Bool)

(declare-fun e!639421 () Bool)

(declare-fun validRegex!1230 (Regex!2761) Bool)

(assert (=> b!996941 (= e!639421 (validRegex!1230 (regOne!6035 r!15766)))))

(declare-fun b!996943 () Bool)

(declare-fun tp_is_empty!5165 () Bool)

(assert (=> b!996943 (= e!639417 tp_is_empty!5165)))

(declare-fun b!996944 () Bool)

(declare-fun e!639418 () Bool)

(declare-fun tp!304175 () Bool)

(assert (=> b!996944 (= e!639418 (and tp_is_empty!5165 tp!304175))))

(declare-fun b!996945 () Bool)

(declare-fun tp!304178 () Bool)

(assert (=> b!996945 (= e!639417 tp!304178)))

(declare-fun b!996946 () Bool)

(declare-fun e!639420 () Bool)

(declare-fun e!639416 () Bool)

(assert (=> b!996946 (= e!639420 (not e!639416))))

(declare-fun res!450285 () Bool)

(assert (=> b!996946 (=> res!450285 e!639416)))

(declare-fun lt!351464 () Bool)

(get-info :version)

(assert (=> b!996946 (= res!450285 (or (not lt!351464) (and ((_ is Concat!4594) r!15766) ((_ is EmptyExpr!2761) (regOne!6034 r!15766))) (and ((_ is Concat!4594) r!15766) ((_ is EmptyExpr!2761) (regTwo!6034 r!15766))) ((_ is Concat!4594) r!15766) (not ((_ is Union!2761) r!15766))))))

(declare-fun matchRSpec!560 (Regex!2761 List!9991) Bool)

(assert (=> b!996946 (= lt!351464 (matchRSpec!560 r!15766 s!10566))))

(assert (=> b!996946 (= lt!351464 (matchR!1297 r!15766 s!10566))))

(declare-datatypes ((Unit!15181 0))(
  ( (Unit!15182) )
))
(declare-fun lt!351465 () Unit!15181)

(declare-fun mainMatchTheorem!560 (Regex!2761 List!9991) Unit!15181)

(assert (=> b!996946 (= lt!351465 (mainMatchTheorem!560 r!15766 s!10566))))

(declare-fun b!996947 () Bool)

(assert (=> b!996947 (= e!639416 e!639421)))

(declare-fun res!450286 () Bool)

(assert (=> b!996947 (=> res!450286 e!639421)))

(declare-fun lt!351467 () Bool)

(assert (=> b!996947 (= res!450286 (not lt!351467))))

(assert (=> b!996947 e!639419))

(declare-fun res!450287 () Bool)

(assert (=> b!996947 (=> res!450287 e!639419)))

(assert (=> b!996947 (= res!450287 lt!351467)))

(assert (=> b!996947 (= lt!351467 (matchR!1297 (regOne!6035 r!15766) s!10566))))

(declare-fun lt!351466 () Unit!15181)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!68 (Regex!2761 Regex!2761 List!9991) Unit!15181)

(assert (=> b!996947 (= lt!351466 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!68 (regOne!6035 r!15766) (regTwo!6035 r!15766) s!10566))))

(declare-fun b!996942 () Bool)

(declare-fun tp!304180 () Bool)

(declare-fun tp!304176 () Bool)

(assert (=> b!996942 (= e!639417 (and tp!304180 tp!304176))))

(declare-fun res!450288 () Bool)

(assert (=> start!87678 (=> (not res!450288) (not e!639420))))

(assert (=> start!87678 (= res!450288 (validRegex!1230 r!15766))))

(assert (=> start!87678 e!639420))

(assert (=> start!87678 e!639417))

(assert (=> start!87678 e!639418))

(assert (= (and start!87678 res!450288) b!996946))

(assert (= (and b!996946 (not res!450285)) b!996947))

(assert (= (and b!996947 (not res!450287)) b!996940))

(assert (= (and b!996947 (not res!450286)) b!996941))

(assert (= (and start!87678 ((_ is ElementMatch!2761) r!15766)) b!996943))

(assert (= (and start!87678 ((_ is Concat!4594) r!15766)) b!996942))

(assert (= (and start!87678 ((_ is Star!2761) r!15766)) b!996945))

(assert (= (and start!87678 ((_ is Union!2761) r!15766)) b!996939))

(assert (= (and start!87678 ((_ is Cons!9975) s!10566)) b!996944))

(declare-fun m!1188565 () Bool)

(assert (=> b!996941 m!1188565))

(declare-fun m!1188567 () Bool)

(assert (=> b!996947 m!1188567))

(declare-fun m!1188569 () Bool)

(assert (=> b!996947 m!1188569))

(declare-fun m!1188571 () Bool)

(assert (=> start!87678 m!1188571))

(declare-fun m!1188573 () Bool)

(assert (=> b!996940 m!1188573))

(declare-fun m!1188575 () Bool)

(assert (=> b!996946 m!1188575))

(declare-fun m!1188577 () Bool)

(assert (=> b!996946 m!1188577))

(declare-fun m!1188579 () Bool)

(assert (=> b!996946 m!1188579))

(check-sat tp_is_empty!5165 (not b!996942) (not b!996941) (not b!996940) (not b!996939) (not b!996944) (not start!87678) (not b!996946) (not b!996945) (not b!996947))
(check-sat)
(get-model)

(declare-fun b!997004 () Bool)

(declare-fun res!450323 () Bool)

(declare-fun e!639456 () Bool)

(assert (=> b!997004 (=> (not res!450323) (not e!639456))))

(declare-fun call!65942 () Bool)

(assert (=> b!997004 (= res!450323 (not call!65942))))

(declare-fun bm!65937 () Bool)

(declare-fun isEmpty!6313 (List!9991) Bool)

(assert (=> bm!65937 (= call!65942 (isEmpty!6313 s!10566))))

(declare-fun b!997005 () Bool)

(declare-fun head!1834 (List!9991) C!6092)

(assert (=> b!997005 (= e!639456 (= (head!1834 s!10566) (c!164006 (regTwo!6035 r!15766))))))

(declare-fun b!997006 () Bool)

(declare-fun e!639453 () Bool)

(declare-fun e!639455 () Bool)

(assert (=> b!997006 (= e!639453 e!639455)))

(declare-fun c!164019 () Bool)

(assert (=> b!997006 (= c!164019 ((_ is EmptyLang!2761) (regTwo!6035 r!15766)))))

(declare-fun d!290956 () Bool)

(assert (=> d!290956 e!639453))

(declare-fun c!164021 () Bool)

(assert (=> d!290956 (= c!164021 ((_ is EmptyExpr!2761) (regTwo!6035 r!15766)))))

(declare-fun lt!351472 () Bool)

(declare-fun e!639452 () Bool)

(assert (=> d!290956 (= lt!351472 e!639452)))

(declare-fun c!164020 () Bool)

(assert (=> d!290956 (= c!164020 (isEmpty!6313 s!10566))))

(assert (=> d!290956 (validRegex!1230 (regTwo!6035 r!15766))))

(assert (=> d!290956 (= (matchR!1297 (regTwo!6035 r!15766) s!10566) lt!351472)))

(declare-fun b!997007 () Bool)

(assert (=> b!997007 (= e!639455 (not lt!351472))))

(declare-fun b!997008 () Bool)

(declare-fun res!450327 () Bool)

(assert (=> b!997008 (=> (not res!450327) (not e!639456))))

(declare-fun tail!1396 (List!9991) List!9991)

(assert (=> b!997008 (= res!450327 (isEmpty!6313 (tail!1396 s!10566)))))

(declare-fun b!997009 () Bool)

(declare-fun derivativeStep!681 (Regex!2761 C!6092) Regex!2761)

(assert (=> b!997009 (= e!639452 (matchR!1297 (derivativeStep!681 (regTwo!6035 r!15766) (head!1834 s!10566)) (tail!1396 s!10566)))))

(declare-fun b!997010 () Bool)

(declare-fun e!639454 () Bool)

(declare-fun e!639450 () Bool)

(assert (=> b!997010 (= e!639454 e!639450)))

(declare-fun res!450324 () Bool)

(assert (=> b!997010 (=> (not res!450324) (not e!639450))))

(assert (=> b!997010 (= res!450324 (not lt!351472))))

(declare-fun b!997011 () Bool)

(declare-fun res!450321 () Bool)

(assert (=> b!997011 (=> res!450321 e!639454)))

(assert (=> b!997011 (= res!450321 (not ((_ is ElementMatch!2761) (regTwo!6035 r!15766))))))

(assert (=> b!997011 (= e!639455 e!639454)))

(declare-fun b!997012 () Bool)

(declare-fun res!450325 () Bool)

(declare-fun e!639451 () Bool)

(assert (=> b!997012 (=> res!450325 e!639451)))

(assert (=> b!997012 (= res!450325 (not (isEmpty!6313 (tail!1396 s!10566))))))

(declare-fun b!997013 () Bool)

(assert (=> b!997013 (= e!639451 (not (= (head!1834 s!10566) (c!164006 (regTwo!6035 r!15766)))))))

(declare-fun b!997014 () Bool)

(declare-fun res!450322 () Bool)

(assert (=> b!997014 (=> res!450322 e!639454)))

(assert (=> b!997014 (= res!450322 e!639456)))

(declare-fun res!450326 () Bool)

(assert (=> b!997014 (=> (not res!450326) (not e!639456))))

(assert (=> b!997014 (= res!450326 lt!351472)))

(declare-fun b!997015 () Bool)

(assert (=> b!997015 (= e!639453 (= lt!351472 call!65942))))

(declare-fun b!997016 () Bool)

(declare-fun nullable!875 (Regex!2761) Bool)

(assert (=> b!997016 (= e!639452 (nullable!875 (regTwo!6035 r!15766)))))

(declare-fun b!997017 () Bool)

(assert (=> b!997017 (= e!639450 e!639451)))

(declare-fun res!450328 () Bool)

(assert (=> b!997017 (=> res!450328 e!639451)))

(assert (=> b!997017 (= res!450328 call!65942)))

(assert (= (and d!290956 c!164020) b!997016))

(assert (= (and d!290956 (not c!164020)) b!997009))

(assert (= (and d!290956 c!164021) b!997015))

(assert (= (and d!290956 (not c!164021)) b!997006))

(assert (= (and b!997006 c!164019) b!997007))

(assert (= (and b!997006 (not c!164019)) b!997011))

(assert (= (and b!997011 (not res!450321)) b!997014))

(assert (= (and b!997014 res!450326) b!997004))

(assert (= (and b!997004 res!450323) b!997008))

(assert (= (and b!997008 res!450327) b!997005))

(assert (= (and b!997014 (not res!450322)) b!997010))

(assert (= (and b!997010 res!450324) b!997017))

(assert (= (and b!997017 (not res!450328)) b!997012))

(assert (= (and b!997012 (not res!450325)) b!997013))

(assert (= (or b!997015 b!997004 b!997017) bm!65937))

(declare-fun m!1188581 () Bool)

(assert (=> b!997016 m!1188581))

(declare-fun m!1188583 () Bool)

(assert (=> b!997005 m!1188583))

(declare-fun m!1188585 () Bool)

(assert (=> d!290956 m!1188585))

(declare-fun m!1188587 () Bool)

(assert (=> d!290956 m!1188587))

(declare-fun m!1188589 () Bool)

(assert (=> b!997008 m!1188589))

(assert (=> b!997008 m!1188589))

(declare-fun m!1188591 () Bool)

(assert (=> b!997008 m!1188591))

(assert (=> b!997013 m!1188583))

(assert (=> b!997012 m!1188589))

(assert (=> b!997012 m!1188589))

(assert (=> b!997012 m!1188591))

(assert (=> b!997009 m!1188583))

(assert (=> b!997009 m!1188583))

(declare-fun m!1188593 () Bool)

(assert (=> b!997009 m!1188593))

(assert (=> b!997009 m!1188589))

(assert (=> b!997009 m!1188593))

(assert (=> b!997009 m!1188589))

(declare-fun m!1188595 () Bool)

(assert (=> b!997009 m!1188595))

(assert (=> bm!65937 m!1188585))

(assert (=> b!996940 d!290956))

(declare-fun b!997192 () Bool)

(assert (=> b!997192 true))

(assert (=> b!997192 true))

(declare-fun bs!245052 () Bool)

(declare-fun b!997195 () Bool)

(assert (= bs!245052 (and b!997195 b!997192)))

(declare-fun lambda!35454 () Int)

(declare-fun lambda!35453 () Int)

(assert (=> bs!245052 (not (= lambda!35454 lambda!35453))))

(assert (=> b!997195 true))

(assert (=> b!997195 true))

(declare-fun bm!65963 () Bool)

(declare-fun call!65969 () Bool)

(assert (=> bm!65963 (= call!65969 (isEmpty!6313 s!10566))))

(declare-fun b!997191 () Bool)

(declare-fun e!639558 () Bool)

(declare-fun e!639561 () Bool)

(assert (=> b!997191 (= e!639558 e!639561)))

(declare-fun c!164061 () Bool)

(assert (=> b!997191 (= c!164061 ((_ is Star!2761) r!15766))))

(declare-fun e!639563 () Bool)

(declare-fun call!65968 () Bool)

(assert (=> b!997192 (= e!639563 call!65968)))

(declare-fun b!997193 () Bool)

(declare-fun e!639559 () Bool)

(assert (=> b!997193 (= e!639559 (matchRSpec!560 (regTwo!6035 r!15766) s!10566))))

(declare-fun b!997194 () Bool)

(declare-fun c!164059 () Bool)

(assert (=> b!997194 (= c!164059 ((_ is ElementMatch!2761) r!15766))))

(declare-fun e!639557 () Bool)

(declare-fun e!639562 () Bool)

(assert (=> b!997194 (= e!639557 e!639562)))

(assert (=> b!997195 (= e!639561 call!65968)))

(declare-fun b!997196 () Bool)

(declare-fun res!450415 () Bool)

(assert (=> b!997196 (=> res!450415 e!639563)))

(assert (=> b!997196 (= res!450415 call!65969)))

(assert (=> b!997196 (= e!639561 e!639563)))

(declare-fun b!997197 () Bool)

(assert (=> b!997197 (= e!639562 (= s!10566 (Cons!9975 (c!164006 r!15766) Nil!9975)))))

(declare-fun b!997198 () Bool)

(declare-fun e!639560 () Bool)

(assert (=> b!997198 (= e!639560 e!639557)))

(declare-fun res!450416 () Bool)

(assert (=> b!997198 (= res!450416 (not ((_ is EmptyLang!2761) r!15766)))))

(assert (=> b!997198 (=> (not res!450416) (not e!639557))))

(declare-fun b!997199 () Bool)

(assert (=> b!997199 (= e!639560 call!65969)))

(declare-fun b!997200 () Bool)

(assert (=> b!997200 (= e!639558 e!639559)))

(declare-fun res!450414 () Bool)

(assert (=> b!997200 (= res!450414 (matchRSpec!560 (regOne!6035 r!15766) s!10566))))

(assert (=> b!997200 (=> res!450414 e!639559)))

(declare-fun d!290960 () Bool)

(declare-fun c!164060 () Bool)

(assert (=> d!290960 (= c!164060 ((_ is EmptyExpr!2761) r!15766))))

(assert (=> d!290960 (= (matchRSpec!560 r!15766 s!10566) e!639560)))

(declare-fun b!997201 () Bool)

(declare-fun c!164062 () Bool)

(assert (=> b!997201 (= c!164062 ((_ is Union!2761) r!15766))))

(assert (=> b!997201 (= e!639562 e!639558)))

(declare-fun bm!65964 () Bool)

(declare-fun Exists!496 (Int) Bool)

(assert (=> bm!65964 (= call!65968 (Exists!496 (ite c!164061 lambda!35453 lambda!35454)))))

(assert (= (and d!290960 c!164060) b!997199))

(assert (= (and d!290960 (not c!164060)) b!997198))

(assert (= (and b!997198 res!450416) b!997194))

(assert (= (and b!997194 c!164059) b!997197))

(assert (= (and b!997194 (not c!164059)) b!997201))

(assert (= (and b!997201 c!164062) b!997200))

(assert (= (and b!997201 (not c!164062)) b!997191))

(assert (= (and b!997200 (not res!450414)) b!997193))

(assert (= (and b!997191 c!164061) b!997196))

(assert (= (and b!997191 (not c!164061)) b!997195))

(assert (= (and b!997196 (not res!450415)) b!997192))

(assert (= (or b!997192 b!997195) bm!65964))

(assert (= (or b!997199 b!997196) bm!65963))

(assert (=> bm!65963 m!1188585))

(declare-fun m!1188647 () Bool)

(assert (=> b!997193 m!1188647))

(declare-fun m!1188649 () Bool)

(assert (=> b!997200 m!1188649))

(declare-fun m!1188651 () Bool)

(assert (=> bm!65964 m!1188651))

(assert (=> b!996946 d!290960))

(declare-fun b!997231 () Bool)

(declare-fun res!450419 () Bool)

(declare-fun e!639578 () Bool)

(assert (=> b!997231 (=> (not res!450419) (not e!639578))))

(declare-fun call!65970 () Bool)

(assert (=> b!997231 (= res!450419 (not call!65970))))

(declare-fun bm!65965 () Bool)

(assert (=> bm!65965 (= call!65970 (isEmpty!6313 s!10566))))

(declare-fun b!997232 () Bool)

(assert (=> b!997232 (= e!639578 (= (head!1834 s!10566) (c!164006 r!15766)))))

(declare-fun b!997233 () Bool)

(declare-fun e!639575 () Bool)

(declare-fun e!639577 () Bool)

(assert (=> b!997233 (= e!639575 e!639577)))

(declare-fun c!164063 () Bool)

(assert (=> b!997233 (= c!164063 ((_ is EmptyLang!2761) r!15766))))

(declare-fun d!290976 () Bool)

(assert (=> d!290976 e!639575))

(declare-fun c!164065 () Bool)

(assert (=> d!290976 (= c!164065 ((_ is EmptyExpr!2761) r!15766))))

(declare-fun lt!351482 () Bool)

(declare-fun e!639574 () Bool)

(assert (=> d!290976 (= lt!351482 e!639574)))

(declare-fun c!164064 () Bool)

(assert (=> d!290976 (= c!164064 (isEmpty!6313 s!10566))))

(assert (=> d!290976 (validRegex!1230 r!15766)))

(assert (=> d!290976 (= (matchR!1297 r!15766 s!10566) lt!351482)))

(declare-fun b!997234 () Bool)

(assert (=> b!997234 (= e!639577 (not lt!351482))))

(declare-fun b!997235 () Bool)

(declare-fun res!450423 () Bool)

(assert (=> b!997235 (=> (not res!450423) (not e!639578))))

(assert (=> b!997235 (= res!450423 (isEmpty!6313 (tail!1396 s!10566)))))

(declare-fun b!997236 () Bool)

(assert (=> b!997236 (= e!639574 (matchR!1297 (derivativeStep!681 r!15766 (head!1834 s!10566)) (tail!1396 s!10566)))))

(declare-fun b!997237 () Bool)

(declare-fun e!639576 () Bool)

(declare-fun e!639572 () Bool)

(assert (=> b!997237 (= e!639576 e!639572)))

(declare-fun res!450420 () Bool)

(assert (=> b!997237 (=> (not res!450420) (not e!639572))))

(assert (=> b!997237 (= res!450420 (not lt!351482))))

(declare-fun b!997238 () Bool)

(declare-fun res!450417 () Bool)

(assert (=> b!997238 (=> res!450417 e!639576)))

(assert (=> b!997238 (= res!450417 (not ((_ is ElementMatch!2761) r!15766)))))

(assert (=> b!997238 (= e!639577 e!639576)))

(declare-fun b!997239 () Bool)

(declare-fun res!450421 () Bool)

(declare-fun e!639573 () Bool)

(assert (=> b!997239 (=> res!450421 e!639573)))

(assert (=> b!997239 (= res!450421 (not (isEmpty!6313 (tail!1396 s!10566))))))

(declare-fun b!997240 () Bool)

(assert (=> b!997240 (= e!639573 (not (= (head!1834 s!10566) (c!164006 r!15766))))))

(declare-fun b!997241 () Bool)

(declare-fun res!450418 () Bool)

(assert (=> b!997241 (=> res!450418 e!639576)))

(assert (=> b!997241 (= res!450418 e!639578)))

(declare-fun res!450422 () Bool)

(assert (=> b!997241 (=> (not res!450422) (not e!639578))))

(assert (=> b!997241 (= res!450422 lt!351482)))

(declare-fun b!997242 () Bool)

(assert (=> b!997242 (= e!639575 (= lt!351482 call!65970))))

(declare-fun b!997243 () Bool)

(assert (=> b!997243 (= e!639574 (nullable!875 r!15766))))

(declare-fun b!997244 () Bool)

(assert (=> b!997244 (= e!639572 e!639573)))

(declare-fun res!450424 () Bool)

(assert (=> b!997244 (=> res!450424 e!639573)))

(assert (=> b!997244 (= res!450424 call!65970)))

(assert (= (and d!290976 c!164064) b!997243))

(assert (= (and d!290976 (not c!164064)) b!997236))

(assert (= (and d!290976 c!164065) b!997242))

(assert (= (and d!290976 (not c!164065)) b!997233))

(assert (= (and b!997233 c!164063) b!997234))

(assert (= (and b!997233 (not c!164063)) b!997238))

(assert (= (and b!997238 (not res!450417)) b!997241))

(assert (= (and b!997241 res!450422) b!997231))

(assert (= (and b!997231 res!450419) b!997235))

(assert (= (and b!997235 res!450423) b!997232))

(assert (= (and b!997241 (not res!450418)) b!997237))

(assert (= (and b!997237 res!450420) b!997244))

(assert (= (and b!997244 (not res!450424)) b!997239))

(assert (= (and b!997239 (not res!450421)) b!997240))

(assert (= (or b!997242 b!997231 b!997244) bm!65965))

(declare-fun m!1188653 () Bool)

(assert (=> b!997243 m!1188653))

(assert (=> b!997232 m!1188583))

(assert (=> d!290976 m!1188585))

(assert (=> d!290976 m!1188571))

(assert (=> b!997235 m!1188589))

(assert (=> b!997235 m!1188589))

(assert (=> b!997235 m!1188591))

(assert (=> b!997240 m!1188583))

(assert (=> b!997239 m!1188589))

(assert (=> b!997239 m!1188589))

(assert (=> b!997239 m!1188591))

(assert (=> b!997236 m!1188583))

(assert (=> b!997236 m!1188583))

(declare-fun m!1188655 () Bool)

(assert (=> b!997236 m!1188655))

(assert (=> b!997236 m!1188589))

(assert (=> b!997236 m!1188655))

(assert (=> b!997236 m!1188589))

(declare-fun m!1188657 () Bool)

(assert (=> b!997236 m!1188657))

(assert (=> bm!65965 m!1188585))

(assert (=> b!996946 d!290976))

(declare-fun d!290978 () Bool)

(assert (=> d!290978 (= (matchR!1297 r!15766 s!10566) (matchRSpec!560 r!15766 s!10566))))

(declare-fun lt!351485 () Unit!15181)

(declare-fun choose!6303 (Regex!2761 List!9991) Unit!15181)

(assert (=> d!290978 (= lt!351485 (choose!6303 r!15766 s!10566))))

(assert (=> d!290978 (validRegex!1230 r!15766)))

(assert (=> d!290978 (= (mainMatchTheorem!560 r!15766 s!10566) lt!351485)))

(declare-fun bs!245053 () Bool)

(assert (= bs!245053 d!290978))

(assert (=> bs!245053 m!1188577))

(assert (=> bs!245053 m!1188575))

(declare-fun m!1188659 () Bool)

(assert (=> bs!245053 m!1188659))

(assert (=> bs!245053 m!1188571))

(assert (=> b!996946 d!290978))

(declare-fun b!997263 () Bool)

(declare-fun e!639599 () Bool)

(declare-fun call!65978 () Bool)

(assert (=> b!997263 (= e!639599 call!65978)))

(declare-fun b!997264 () Bool)

(declare-fun e!639593 () Bool)

(declare-fun e!639598 () Bool)

(assert (=> b!997264 (= e!639593 e!639598)))

(declare-fun res!450436 () Bool)

(assert (=> b!997264 (= res!450436 (not (nullable!875 (reg!3090 r!15766))))))

(assert (=> b!997264 (=> (not res!450436) (not e!639598))))

(declare-fun d!290980 () Bool)

(declare-fun res!450437 () Bool)

(declare-fun e!639597 () Bool)

(assert (=> d!290980 (=> res!450437 e!639597)))

(assert (=> d!290980 (= res!450437 ((_ is ElementMatch!2761) r!15766))))

(assert (=> d!290980 (= (validRegex!1230 r!15766) e!639597)))

(declare-fun b!997265 () Bool)

(declare-fun e!639596 () Bool)

(assert (=> b!997265 (= e!639596 e!639599)))

(declare-fun res!450439 () Bool)

(assert (=> b!997265 (=> (not res!450439) (not e!639599))))

(declare-fun call!65977 () Bool)

(assert (=> b!997265 (= res!450439 call!65977)))

(declare-fun bm!65972 () Bool)

(declare-fun c!164070 () Bool)

(assert (=> bm!65972 (= call!65978 (validRegex!1230 (ite c!164070 (regTwo!6035 r!15766) (regTwo!6034 r!15766))))))

(declare-fun b!997266 () Bool)

(declare-fun e!639595 () Bool)

(assert (=> b!997266 (= e!639595 call!65978)))

(declare-fun b!997267 () Bool)

(assert (=> b!997267 (= e!639597 e!639593)))

(declare-fun c!164071 () Bool)

(assert (=> b!997267 (= c!164071 ((_ is Star!2761) r!15766))))

(declare-fun call!65979 () Bool)

(declare-fun bm!65973 () Bool)

(assert (=> bm!65973 (= call!65979 (validRegex!1230 (ite c!164071 (reg!3090 r!15766) (ite c!164070 (regOne!6035 r!15766) (regOne!6034 r!15766)))))))

(declare-fun b!997268 () Bool)

(assert (=> b!997268 (= e!639598 call!65979)))

(declare-fun bm!65974 () Bool)

(assert (=> bm!65974 (= call!65977 call!65979)))

(declare-fun b!997269 () Bool)

(declare-fun res!450438 () Bool)

(assert (=> b!997269 (=> (not res!450438) (not e!639595))))

(assert (=> b!997269 (= res!450438 call!65977)))

(declare-fun e!639594 () Bool)

(assert (=> b!997269 (= e!639594 e!639595)))

(declare-fun b!997270 () Bool)

(declare-fun res!450435 () Bool)

(assert (=> b!997270 (=> res!450435 e!639596)))

(assert (=> b!997270 (= res!450435 (not ((_ is Concat!4594) r!15766)))))

(assert (=> b!997270 (= e!639594 e!639596)))

(declare-fun b!997271 () Bool)

(assert (=> b!997271 (= e!639593 e!639594)))

(assert (=> b!997271 (= c!164070 ((_ is Union!2761) r!15766))))

(assert (= (and d!290980 (not res!450437)) b!997267))

(assert (= (and b!997267 c!164071) b!997264))

(assert (= (and b!997267 (not c!164071)) b!997271))

(assert (= (and b!997264 res!450436) b!997268))

(assert (= (and b!997271 c!164070) b!997269))

(assert (= (and b!997271 (not c!164070)) b!997270))

(assert (= (and b!997269 res!450438) b!997266))

(assert (= (and b!997270 (not res!450435)) b!997265))

(assert (= (and b!997265 res!450439) b!997263))

(assert (= (or b!997266 b!997263) bm!65972))

(assert (= (or b!997269 b!997265) bm!65974))

(assert (= (or b!997268 bm!65974) bm!65973))

(declare-fun m!1188661 () Bool)

(assert (=> b!997264 m!1188661))

(declare-fun m!1188663 () Bool)

(assert (=> bm!65972 m!1188663))

(declare-fun m!1188665 () Bool)

(assert (=> bm!65973 m!1188665))

(assert (=> start!87678 d!290980))

(declare-fun b!997272 () Bool)

(declare-fun e!639606 () Bool)

(declare-fun call!65981 () Bool)

(assert (=> b!997272 (= e!639606 call!65981)))

(declare-fun b!997273 () Bool)

(declare-fun e!639600 () Bool)

(declare-fun e!639605 () Bool)

(assert (=> b!997273 (= e!639600 e!639605)))

(declare-fun res!450441 () Bool)

(assert (=> b!997273 (= res!450441 (not (nullable!875 (reg!3090 (regOne!6035 r!15766)))))))

(assert (=> b!997273 (=> (not res!450441) (not e!639605))))

(declare-fun d!290982 () Bool)

(declare-fun res!450442 () Bool)

(declare-fun e!639604 () Bool)

(assert (=> d!290982 (=> res!450442 e!639604)))

(assert (=> d!290982 (= res!450442 ((_ is ElementMatch!2761) (regOne!6035 r!15766)))))

(assert (=> d!290982 (= (validRegex!1230 (regOne!6035 r!15766)) e!639604)))

(declare-fun b!997274 () Bool)

(declare-fun e!639603 () Bool)

(assert (=> b!997274 (= e!639603 e!639606)))

(declare-fun res!450444 () Bool)

(assert (=> b!997274 (=> (not res!450444) (not e!639606))))

(declare-fun call!65980 () Bool)

(assert (=> b!997274 (= res!450444 call!65980)))

(declare-fun bm!65975 () Bool)

(declare-fun c!164072 () Bool)

(assert (=> bm!65975 (= call!65981 (validRegex!1230 (ite c!164072 (regTwo!6035 (regOne!6035 r!15766)) (regTwo!6034 (regOne!6035 r!15766)))))))

(declare-fun b!997275 () Bool)

(declare-fun e!639602 () Bool)

(assert (=> b!997275 (= e!639602 call!65981)))

(declare-fun b!997276 () Bool)

(assert (=> b!997276 (= e!639604 e!639600)))

(declare-fun c!164073 () Bool)

(assert (=> b!997276 (= c!164073 ((_ is Star!2761) (regOne!6035 r!15766)))))

(declare-fun call!65982 () Bool)

(declare-fun bm!65976 () Bool)

(assert (=> bm!65976 (= call!65982 (validRegex!1230 (ite c!164073 (reg!3090 (regOne!6035 r!15766)) (ite c!164072 (regOne!6035 (regOne!6035 r!15766)) (regOne!6034 (regOne!6035 r!15766))))))))

(declare-fun b!997277 () Bool)

(assert (=> b!997277 (= e!639605 call!65982)))

(declare-fun bm!65977 () Bool)

(assert (=> bm!65977 (= call!65980 call!65982)))

(declare-fun b!997278 () Bool)

(declare-fun res!450443 () Bool)

(assert (=> b!997278 (=> (not res!450443) (not e!639602))))

(assert (=> b!997278 (= res!450443 call!65980)))

(declare-fun e!639601 () Bool)

(assert (=> b!997278 (= e!639601 e!639602)))

(declare-fun b!997279 () Bool)

(declare-fun res!450440 () Bool)

(assert (=> b!997279 (=> res!450440 e!639603)))

(assert (=> b!997279 (= res!450440 (not ((_ is Concat!4594) (regOne!6035 r!15766))))))

(assert (=> b!997279 (= e!639601 e!639603)))

(declare-fun b!997280 () Bool)

(assert (=> b!997280 (= e!639600 e!639601)))

(assert (=> b!997280 (= c!164072 ((_ is Union!2761) (regOne!6035 r!15766)))))

(assert (= (and d!290982 (not res!450442)) b!997276))

(assert (= (and b!997276 c!164073) b!997273))

(assert (= (and b!997276 (not c!164073)) b!997280))

(assert (= (and b!997273 res!450441) b!997277))

(assert (= (and b!997280 c!164072) b!997278))

(assert (= (and b!997280 (not c!164072)) b!997279))

(assert (= (and b!997278 res!450443) b!997275))

(assert (= (and b!997279 (not res!450440)) b!997274))

(assert (= (and b!997274 res!450444) b!997272))

(assert (= (or b!997275 b!997272) bm!65975))

(assert (= (or b!997278 b!997274) bm!65977))

(assert (= (or b!997277 bm!65977) bm!65976))

(declare-fun m!1188667 () Bool)

(assert (=> b!997273 m!1188667))

(declare-fun m!1188669 () Bool)

(assert (=> bm!65975 m!1188669))

(declare-fun m!1188671 () Bool)

(assert (=> bm!65976 m!1188671))

(assert (=> b!996941 d!290982))

(declare-fun b!997281 () Bool)

(declare-fun res!450447 () Bool)

(declare-fun e!639613 () Bool)

(assert (=> b!997281 (=> (not res!450447) (not e!639613))))

(declare-fun call!65983 () Bool)

(assert (=> b!997281 (= res!450447 (not call!65983))))

(declare-fun bm!65978 () Bool)

(assert (=> bm!65978 (= call!65983 (isEmpty!6313 s!10566))))

(declare-fun b!997282 () Bool)

(assert (=> b!997282 (= e!639613 (= (head!1834 s!10566) (c!164006 (regOne!6035 r!15766))))))

(declare-fun b!997283 () Bool)

(declare-fun e!639610 () Bool)

(declare-fun e!639612 () Bool)

(assert (=> b!997283 (= e!639610 e!639612)))

(declare-fun c!164074 () Bool)

(assert (=> b!997283 (= c!164074 ((_ is EmptyLang!2761) (regOne!6035 r!15766)))))

(declare-fun d!290984 () Bool)

(assert (=> d!290984 e!639610))

(declare-fun c!164076 () Bool)

(assert (=> d!290984 (= c!164076 ((_ is EmptyExpr!2761) (regOne!6035 r!15766)))))

(declare-fun lt!351486 () Bool)

(declare-fun e!639609 () Bool)

(assert (=> d!290984 (= lt!351486 e!639609)))

(declare-fun c!164075 () Bool)

(assert (=> d!290984 (= c!164075 (isEmpty!6313 s!10566))))

(assert (=> d!290984 (validRegex!1230 (regOne!6035 r!15766))))

(assert (=> d!290984 (= (matchR!1297 (regOne!6035 r!15766) s!10566) lt!351486)))

(declare-fun b!997284 () Bool)

(assert (=> b!997284 (= e!639612 (not lt!351486))))

(declare-fun b!997285 () Bool)

(declare-fun res!450451 () Bool)

(assert (=> b!997285 (=> (not res!450451) (not e!639613))))

(assert (=> b!997285 (= res!450451 (isEmpty!6313 (tail!1396 s!10566)))))

(declare-fun b!997286 () Bool)

(assert (=> b!997286 (= e!639609 (matchR!1297 (derivativeStep!681 (regOne!6035 r!15766) (head!1834 s!10566)) (tail!1396 s!10566)))))

(declare-fun b!997287 () Bool)

(declare-fun e!639611 () Bool)

(declare-fun e!639607 () Bool)

(assert (=> b!997287 (= e!639611 e!639607)))

(declare-fun res!450448 () Bool)

(assert (=> b!997287 (=> (not res!450448) (not e!639607))))

(assert (=> b!997287 (= res!450448 (not lt!351486))))

(declare-fun b!997288 () Bool)

(declare-fun res!450445 () Bool)

(assert (=> b!997288 (=> res!450445 e!639611)))

(assert (=> b!997288 (= res!450445 (not ((_ is ElementMatch!2761) (regOne!6035 r!15766))))))

(assert (=> b!997288 (= e!639612 e!639611)))

(declare-fun b!997289 () Bool)

(declare-fun res!450449 () Bool)

(declare-fun e!639608 () Bool)

(assert (=> b!997289 (=> res!450449 e!639608)))

(assert (=> b!997289 (= res!450449 (not (isEmpty!6313 (tail!1396 s!10566))))))

(declare-fun b!997290 () Bool)

(assert (=> b!997290 (= e!639608 (not (= (head!1834 s!10566) (c!164006 (regOne!6035 r!15766)))))))

(declare-fun b!997291 () Bool)

(declare-fun res!450446 () Bool)

(assert (=> b!997291 (=> res!450446 e!639611)))

(assert (=> b!997291 (= res!450446 e!639613)))

(declare-fun res!450450 () Bool)

(assert (=> b!997291 (=> (not res!450450) (not e!639613))))

(assert (=> b!997291 (= res!450450 lt!351486)))

(declare-fun b!997292 () Bool)

(assert (=> b!997292 (= e!639610 (= lt!351486 call!65983))))

(declare-fun b!997293 () Bool)

(assert (=> b!997293 (= e!639609 (nullable!875 (regOne!6035 r!15766)))))

(declare-fun b!997294 () Bool)

(assert (=> b!997294 (= e!639607 e!639608)))

(declare-fun res!450452 () Bool)

(assert (=> b!997294 (=> res!450452 e!639608)))

(assert (=> b!997294 (= res!450452 call!65983)))

(assert (= (and d!290984 c!164075) b!997293))

(assert (= (and d!290984 (not c!164075)) b!997286))

(assert (= (and d!290984 c!164076) b!997292))

(assert (= (and d!290984 (not c!164076)) b!997283))

(assert (= (and b!997283 c!164074) b!997284))

(assert (= (and b!997283 (not c!164074)) b!997288))

(assert (= (and b!997288 (not res!450445)) b!997291))

(assert (= (and b!997291 res!450450) b!997281))

(assert (= (and b!997281 res!450447) b!997285))

(assert (= (and b!997285 res!450451) b!997282))

(assert (= (and b!997291 (not res!450446)) b!997287))

(assert (= (and b!997287 res!450448) b!997294))

(assert (= (and b!997294 (not res!450452)) b!997289))

(assert (= (and b!997289 (not res!450449)) b!997290))

(assert (= (or b!997292 b!997281 b!997294) bm!65978))

(declare-fun m!1188673 () Bool)

(assert (=> b!997293 m!1188673))

(assert (=> b!997282 m!1188583))

(assert (=> d!290984 m!1188585))

(assert (=> d!290984 m!1188565))

(assert (=> b!997285 m!1188589))

(assert (=> b!997285 m!1188589))

(assert (=> b!997285 m!1188591))

(assert (=> b!997290 m!1188583))

(assert (=> b!997289 m!1188589))

(assert (=> b!997289 m!1188589))

(assert (=> b!997289 m!1188591))

(assert (=> b!997286 m!1188583))

(assert (=> b!997286 m!1188583))

(declare-fun m!1188675 () Bool)

(assert (=> b!997286 m!1188675))

(assert (=> b!997286 m!1188589))

(assert (=> b!997286 m!1188675))

(assert (=> b!997286 m!1188589))

(declare-fun m!1188677 () Bool)

(assert (=> b!997286 m!1188677))

(assert (=> bm!65978 m!1188585))

(assert (=> b!996947 d!290984))

(declare-fun d!290986 () Bool)

(declare-fun e!639619 () Bool)

(assert (=> d!290986 e!639619))

(declare-fun res!450457 () Bool)

(assert (=> d!290986 (=> res!450457 e!639619)))

(assert (=> d!290986 (= res!450457 (matchR!1297 (regOne!6035 r!15766) s!10566))))

(declare-fun lt!351489 () Unit!15181)

(declare-fun choose!6304 (Regex!2761 Regex!2761 List!9991) Unit!15181)

(assert (=> d!290986 (= lt!351489 (choose!6304 (regOne!6035 r!15766) (regTwo!6035 r!15766) s!10566))))

(declare-fun e!639618 () Bool)

(assert (=> d!290986 e!639618))

(declare-fun res!450458 () Bool)

(assert (=> d!290986 (=> (not res!450458) (not e!639618))))

(assert (=> d!290986 (= res!450458 (validRegex!1230 (regOne!6035 r!15766)))))

(assert (=> d!290986 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!68 (regOne!6035 r!15766) (regTwo!6035 r!15766) s!10566) lt!351489)))

(declare-fun b!997299 () Bool)

(assert (=> b!997299 (= e!639618 (validRegex!1230 (regTwo!6035 r!15766)))))

(declare-fun b!997300 () Bool)

(assert (=> b!997300 (= e!639619 (matchR!1297 (regTwo!6035 r!15766) s!10566))))

(assert (= (and d!290986 res!450458) b!997299))

(assert (= (and d!290986 (not res!450457)) b!997300))

(assert (=> d!290986 m!1188567))

(declare-fun m!1188679 () Bool)

(assert (=> d!290986 m!1188679))

(assert (=> d!290986 m!1188565))

(assert (=> b!997299 m!1188587))

(assert (=> b!997300 m!1188573))

(assert (=> b!996947 d!290986))

(declare-fun b!997314 () Bool)

(declare-fun e!639622 () Bool)

(declare-fun tp!304233 () Bool)

(declare-fun tp!304230 () Bool)

(assert (=> b!997314 (= e!639622 (and tp!304233 tp!304230))))

(declare-fun b!997311 () Bool)

(assert (=> b!997311 (= e!639622 tp_is_empty!5165)))

(declare-fun b!997312 () Bool)

(declare-fun tp!304232 () Bool)

(declare-fun tp!304229 () Bool)

(assert (=> b!997312 (= e!639622 (and tp!304232 tp!304229))))

(declare-fun b!997313 () Bool)

(declare-fun tp!304231 () Bool)

(assert (=> b!997313 (= e!639622 tp!304231)))

(assert (=> b!996945 (= tp!304178 e!639622)))

(assert (= (and b!996945 ((_ is ElementMatch!2761) (reg!3090 r!15766))) b!997311))

(assert (= (and b!996945 ((_ is Concat!4594) (reg!3090 r!15766))) b!997312))

(assert (= (and b!996945 ((_ is Star!2761) (reg!3090 r!15766))) b!997313))

(assert (= (and b!996945 ((_ is Union!2761) (reg!3090 r!15766))) b!997314))

(declare-fun b!997319 () Bool)

(declare-fun e!639625 () Bool)

(declare-fun tp!304236 () Bool)

(assert (=> b!997319 (= e!639625 (and tp_is_empty!5165 tp!304236))))

(assert (=> b!996944 (= tp!304175 e!639625)))

(assert (= (and b!996944 ((_ is Cons!9975) (t!101037 s!10566))) b!997319))

(declare-fun b!997323 () Bool)

(declare-fun e!639626 () Bool)

(declare-fun tp!304241 () Bool)

(declare-fun tp!304238 () Bool)

(assert (=> b!997323 (= e!639626 (and tp!304241 tp!304238))))

(declare-fun b!997320 () Bool)

(assert (=> b!997320 (= e!639626 tp_is_empty!5165)))

(declare-fun b!997321 () Bool)

(declare-fun tp!304240 () Bool)

(declare-fun tp!304237 () Bool)

(assert (=> b!997321 (= e!639626 (and tp!304240 tp!304237))))

(declare-fun b!997322 () Bool)

(declare-fun tp!304239 () Bool)

(assert (=> b!997322 (= e!639626 tp!304239)))

(assert (=> b!996939 (= tp!304177 e!639626)))

(assert (= (and b!996939 ((_ is ElementMatch!2761) (regOne!6035 r!15766))) b!997320))

(assert (= (and b!996939 ((_ is Concat!4594) (regOne!6035 r!15766))) b!997321))

(assert (= (and b!996939 ((_ is Star!2761) (regOne!6035 r!15766))) b!997322))

(assert (= (and b!996939 ((_ is Union!2761) (regOne!6035 r!15766))) b!997323))

(declare-fun b!997327 () Bool)

(declare-fun e!639627 () Bool)

(declare-fun tp!304246 () Bool)

(declare-fun tp!304243 () Bool)

(assert (=> b!997327 (= e!639627 (and tp!304246 tp!304243))))

(declare-fun b!997324 () Bool)

(assert (=> b!997324 (= e!639627 tp_is_empty!5165)))

(declare-fun b!997325 () Bool)

(declare-fun tp!304245 () Bool)

(declare-fun tp!304242 () Bool)

(assert (=> b!997325 (= e!639627 (and tp!304245 tp!304242))))

(declare-fun b!997326 () Bool)

(declare-fun tp!304244 () Bool)

(assert (=> b!997326 (= e!639627 tp!304244)))

(assert (=> b!996939 (= tp!304179 e!639627)))

(assert (= (and b!996939 ((_ is ElementMatch!2761) (regTwo!6035 r!15766))) b!997324))

(assert (= (and b!996939 ((_ is Concat!4594) (regTwo!6035 r!15766))) b!997325))

(assert (= (and b!996939 ((_ is Star!2761) (regTwo!6035 r!15766))) b!997326))

(assert (= (and b!996939 ((_ is Union!2761) (regTwo!6035 r!15766))) b!997327))

(declare-fun b!997331 () Bool)

(declare-fun e!639628 () Bool)

(declare-fun tp!304251 () Bool)

(declare-fun tp!304248 () Bool)

(assert (=> b!997331 (= e!639628 (and tp!304251 tp!304248))))

(declare-fun b!997328 () Bool)

(assert (=> b!997328 (= e!639628 tp_is_empty!5165)))

(declare-fun b!997329 () Bool)

(declare-fun tp!304250 () Bool)

(declare-fun tp!304247 () Bool)

(assert (=> b!997329 (= e!639628 (and tp!304250 tp!304247))))

(declare-fun b!997330 () Bool)

(declare-fun tp!304249 () Bool)

(assert (=> b!997330 (= e!639628 tp!304249)))

(assert (=> b!996942 (= tp!304180 e!639628)))

(assert (= (and b!996942 ((_ is ElementMatch!2761) (regOne!6034 r!15766))) b!997328))

(assert (= (and b!996942 ((_ is Concat!4594) (regOne!6034 r!15766))) b!997329))

(assert (= (and b!996942 ((_ is Star!2761) (regOne!6034 r!15766))) b!997330))

(assert (= (and b!996942 ((_ is Union!2761) (regOne!6034 r!15766))) b!997331))

(declare-fun b!997335 () Bool)

(declare-fun e!639629 () Bool)

(declare-fun tp!304256 () Bool)

(declare-fun tp!304253 () Bool)

(assert (=> b!997335 (= e!639629 (and tp!304256 tp!304253))))

(declare-fun b!997332 () Bool)

(assert (=> b!997332 (= e!639629 tp_is_empty!5165)))

(declare-fun b!997333 () Bool)

(declare-fun tp!304255 () Bool)

(declare-fun tp!304252 () Bool)

(assert (=> b!997333 (= e!639629 (and tp!304255 tp!304252))))

(declare-fun b!997334 () Bool)

(declare-fun tp!304254 () Bool)

(assert (=> b!997334 (= e!639629 tp!304254)))

(assert (=> b!996942 (= tp!304176 e!639629)))

(assert (= (and b!996942 ((_ is ElementMatch!2761) (regTwo!6034 r!15766))) b!997332))

(assert (= (and b!996942 ((_ is Concat!4594) (regTwo!6034 r!15766))) b!997333))

(assert (= (and b!996942 ((_ is Star!2761) (regTwo!6034 r!15766))) b!997334))

(assert (= (and b!996942 ((_ is Union!2761) (regTwo!6034 r!15766))) b!997335))

(check-sat (not b!997236) (not b!997327) (not d!290976) (not b!997323) (not bm!65972) (not bm!65963) (not b!997322) (not b!997330) tp_is_empty!5165 (not b!997300) (not bm!65964) (not b!997243) (not bm!65978) (not bm!65976) (not b!997334) (not d!290956) (not d!290984) (not b!997335) (not bm!65973) (not b!997289) (not b!997333) (not b!997009) (not b!997299) (not b!997331) (not b!997016) (not bm!65937) (not b!997312) (not b!997235) (not b!997232) (not b!997264) (not b!997239) (not b!997319) (not b!997285) (not d!290978) (not bm!65965) (not b!997325) (not b!997321) (not b!997240) (not b!997273) (not b!997290) (not b!997200) (not d!290986) (not b!997313) (not b!997012) (not b!997008) (not b!997286) (not b!997013) (not b!997314) (not b!997329) (not b!997193) (not b!997282) (not b!997326) (not b!997293) (not b!997005) (not bm!65975))
(check-sat)
