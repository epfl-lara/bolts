; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664586 () Bool)

(assert start!664586)

(declare-fun b!6897527 () Bool)

(assert (=> b!6897527 true))

(assert (=> b!6897527 true))

(assert (=> b!6897527 true))

(declare-fun lambda!391184 () Int)

(declare-fun lambda!391183 () Int)

(assert (=> b!6897527 (not (= lambda!391184 lambda!391183))))

(assert (=> b!6897527 true))

(assert (=> b!6897527 true))

(assert (=> b!6897527 true))

(declare-fun bs!1841149 () Bool)

(declare-fun b!6897520 () Bool)

(assert (= bs!1841149 (and b!6897520 b!6897527)))

(declare-datatypes ((C!33956 0))(
  ( (C!33957 (val!26680 Int)) )
))
(declare-datatypes ((Regex!16843 0))(
  ( (ElementMatch!16843 (c!1281919 C!33956)) (Concat!25688 (regOne!34198 Regex!16843) (regTwo!34198 Regex!16843)) (EmptyExpr!16843) (Star!16843 (reg!17172 Regex!16843)) (EmptyLang!16843) (Union!16843 (regOne!34199 Regex!16843) (regTwo!34199 Regex!16843)) )
))
(declare-fun r1!6342 () Regex!16843)

(declare-fun lambda!391185 () Int)

(declare-fun lt!2464434 () Regex!16843)

(declare-datatypes ((List!66600 0))(
  ( (Nil!66476) (Cons!66476 (h!72924 C!33956) (t!380343 List!66600)) )
))
(declare-datatypes ((tuple2!67420 0))(
  ( (tuple2!67421 (_1!37013 List!66600) (_2!37013 List!66600)) )
))
(declare-fun lt!2464433 () tuple2!67420)

(declare-fun s!14361 () List!66600)

(declare-fun r2!6280 () Regex!16843)

(declare-fun r3!135 () Regex!16843)

(assert (=> bs!1841149 (= (and (= (_2!37013 lt!2464433) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464434)) (= lambda!391185 lambda!391183))))

(assert (=> bs!1841149 (not (= lambda!391185 lambda!391184))))

(assert (=> b!6897520 true))

(assert (=> b!6897520 true))

(assert (=> b!6897520 true))

(declare-fun lambda!391186 () Int)

(assert (=> bs!1841149 (not (= lambda!391186 lambda!391183))))

(assert (=> bs!1841149 (= (and (= (_2!37013 lt!2464433) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464434)) (= lambda!391186 lambda!391184))))

(assert (=> b!6897520 (not (= lambda!391186 lambda!391185))))

(assert (=> b!6897520 true))

(assert (=> b!6897520 true))

(assert (=> b!6897520 true))

(declare-fun b!6897506 () Bool)

(declare-fun res!2812241 () Bool)

(declare-fun e!4154342 () Bool)

(assert (=> b!6897506 (=> res!2812241 e!4154342)))

(declare-fun lt!2464432 () tuple2!67420)

(declare-fun matchR!8988 (Regex!16843 List!66600) Bool)

(assert (=> b!6897506 (= res!2812241 (not (matchR!8988 r3!135 (_2!37013 lt!2464432))))))

(declare-fun b!6897507 () Bool)

(declare-fun res!2812244 () Bool)

(declare-fun e!4154337 () Bool)

(assert (=> b!6897507 (=> (not res!2812244) (not e!4154337))))

(declare-fun validRegex!8551 (Regex!16843) Bool)

(assert (=> b!6897507 (= res!2812244 (validRegex!8551 r3!135))))

(declare-fun b!6897508 () Bool)

(declare-fun e!4154334 () Bool)

(declare-fun tp_is_empty!42911 () Bool)

(declare-fun tp!1898799 () Bool)

(assert (=> b!6897508 (= e!4154334 (and tp_is_empty!42911 tp!1898799))))

(declare-fun b!6897509 () Bool)

(declare-fun e!4154339 () Bool)

(assert (=> b!6897509 (= e!4154339 tp_is_empty!42911)))

(declare-fun b!6897510 () Bool)

(declare-fun e!4154336 () Bool)

(declare-fun tp!1898798 () Bool)

(declare-fun tp!1898797 () Bool)

(assert (=> b!6897510 (= e!4154336 (and tp!1898798 tp!1898797))))

(declare-fun b!6897511 () Bool)

(declare-fun tp!1898807 () Bool)

(assert (=> b!6897511 (= e!4154336 tp!1898807)))

(declare-fun res!2812248 () Bool)

(assert (=> start!664586 (=> (not res!2812248) (not e!4154337))))

(assert (=> start!664586 (= res!2812248 (validRegex!8551 r1!6342))))

(assert (=> start!664586 e!4154337))

(assert (=> start!664586 e!4154336))

(assert (=> start!664586 e!4154339))

(declare-fun e!4154341 () Bool)

(assert (=> start!664586 e!4154341))

(assert (=> start!664586 e!4154334))

(declare-fun b!6897512 () Bool)

(declare-fun tp!1898800 () Bool)

(declare-fun tp!1898806 () Bool)

(assert (=> b!6897512 (= e!4154339 (and tp!1898800 tp!1898806))))

(declare-fun b!6897513 () Bool)

(declare-fun tp!1898805 () Bool)

(declare-fun tp!1898804 () Bool)

(assert (=> b!6897513 (= e!4154336 (and tp!1898805 tp!1898804))))

(declare-fun b!6897514 () Bool)

(declare-fun e!4154335 () Bool)

(assert (=> b!6897514 (= e!4154337 (not e!4154335))))

(declare-fun res!2812247 () Bool)

(assert (=> b!6897514 (=> res!2812247 e!4154335)))

(declare-fun lt!2464436 () Bool)

(assert (=> b!6897514 (= res!2812247 lt!2464436)))

(declare-fun lt!2464437 () Regex!16843)

(declare-fun matchRSpec!3906 (Regex!16843 List!66600) Bool)

(assert (=> b!6897514 (= (matchR!8988 lt!2464437 s!14361) (matchRSpec!3906 lt!2464437 s!14361))))

(declare-datatypes ((Unit!160406 0))(
  ( (Unit!160407) )
))
(declare-fun lt!2464428 () Unit!160406)

(declare-fun mainMatchTheorem!3906 (Regex!16843 List!66600) Unit!160406)

(assert (=> b!6897514 (= lt!2464428 (mainMatchTheorem!3906 lt!2464437 s!14361))))

(declare-fun lt!2464427 () Regex!16843)

(assert (=> b!6897514 (= lt!2464436 (matchRSpec!3906 lt!2464427 s!14361))))

(assert (=> b!6897514 (= lt!2464436 (matchR!8988 lt!2464427 s!14361))))

(declare-fun lt!2464443 () Unit!160406)

(assert (=> b!6897514 (= lt!2464443 (mainMatchTheorem!3906 lt!2464427 s!14361))))

(assert (=> b!6897514 (= lt!2464437 (Concat!25688 r1!6342 lt!2464434))))

(assert (=> b!6897514 (= lt!2464434 (Concat!25688 r2!6280 r3!135))))

(assert (=> b!6897514 (= lt!2464427 (Concat!25688 (Concat!25688 r1!6342 r2!6280) r3!135))))

(declare-fun b!6897515 () Bool)

(assert (=> b!6897515 (= e!4154341 tp_is_empty!42911)))

(declare-fun b!6897516 () Bool)

(declare-fun tp!1898802 () Bool)

(assert (=> b!6897516 (= e!4154339 tp!1898802)))

(declare-fun b!6897517 () Bool)

(declare-fun tp!1898801 () Bool)

(declare-fun tp!1898803 () Bool)

(assert (=> b!6897517 (= e!4154341 (and tp!1898801 tp!1898803))))

(declare-fun b!6897518 () Bool)

(assert (=> b!6897518 (= e!4154342 true)))

(assert (=> b!6897518 (matchRSpec!3906 r2!6280 (_1!37013 lt!2464432))))

(declare-fun lt!2464431 () Unit!160406)

(assert (=> b!6897518 (= lt!2464431 (mainMatchTheorem!3906 r2!6280 (_1!37013 lt!2464432)))))

(declare-fun b!6897519 () Bool)

(declare-fun res!2812243 () Bool)

(declare-fun e!4154340 () Bool)

(assert (=> b!6897519 (=> res!2812243 e!4154340)))

(assert (=> b!6897519 (= res!2812243 (not (matchR!8988 lt!2464434 (_2!37013 lt!2464433))))))

(assert (=> b!6897520 (= e!4154340 e!4154342)))

(declare-fun res!2812246 () Bool)

(assert (=> b!6897520 (=> res!2812246 e!4154342)))

(assert (=> b!6897520 (= res!2812246 (not (matchR!8988 r2!6280 (_1!37013 lt!2464432))))))

(declare-datatypes ((Option!16622 0))(
  ( (None!16621) (Some!16621 (v!52893 tuple2!67420)) )
))
(declare-fun lt!2464439 () Option!16622)

(declare-fun get!23215 (Option!16622) tuple2!67420)

(assert (=> b!6897520 (= lt!2464432 (get!23215 lt!2464439))))

(declare-fun Exists!3851 (Int) Bool)

(assert (=> b!6897520 (= (Exists!3851 lambda!391185) (Exists!3851 lambda!391186))))

(declare-fun lt!2464442 () Unit!160406)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2324 (Regex!16843 Regex!16843 List!66600) Unit!160406)

(assert (=> b!6897520 (= lt!2464442 (lemmaExistCutMatchRandMatchRSpecEquivalent!2324 r2!6280 r3!135 (_2!37013 lt!2464433)))))

(declare-fun isDefined!13325 (Option!16622) Bool)

(assert (=> b!6897520 (= (isDefined!13325 lt!2464439) (Exists!3851 lambda!391185))))

(declare-fun findConcatSeparation!3036 (Regex!16843 Regex!16843 List!66600 List!66600 List!66600) Option!16622)

(assert (=> b!6897520 (= lt!2464439 (findConcatSeparation!3036 r2!6280 r3!135 Nil!66476 (_2!37013 lt!2464433) (_2!37013 lt!2464433)))))

(declare-fun lt!2464430 () Unit!160406)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2798 (Regex!16843 Regex!16843 List!66600) Unit!160406)

(assert (=> b!6897520 (= lt!2464430 (lemmaFindConcatSeparationEquivalentToExists!2798 r2!6280 r3!135 (_2!37013 lt!2464433)))))

(assert (=> b!6897520 (matchRSpec!3906 lt!2464434 (_2!37013 lt!2464433))))

(declare-fun lt!2464426 () Unit!160406)

(assert (=> b!6897520 (= lt!2464426 (mainMatchTheorem!3906 lt!2464434 (_2!37013 lt!2464433)))))

(declare-fun b!6897521 () Bool)

(assert (=> b!6897521 (= e!4154336 tp_is_empty!42911)))

(declare-fun b!6897522 () Bool)

(declare-fun tp!1898794 () Bool)

(assert (=> b!6897522 (= e!4154341 tp!1898794)))

(declare-fun b!6897523 () Bool)

(declare-fun res!2812240 () Bool)

(assert (=> b!6897523 (=> (not res!2812240) (not e!4154337))))

(assert (=> b!6897523 (= res!2812240 (validRegex!8551 r2!6280))))

(declare-fun b!6897524 () Bool)

(declare-fun e!4154338 () Bool)

(assert (=> b!6897524 (= e!4154335 e!4154338)))

(declare-fun res!2812245 () Bool)

(assert (=> b!6897524 (=> res!2812245 e!4154338)))

(declare-fun lt!2464435 () Option!16622)

(assert (=> b!6897524 (= res!2812245 (not (isDefined!13325 lt!2464435)))))

(assert (=> b!6897524 (= lt!2464435 (findConcatSeparation!3036 r1!6342 lt!2464434 Nil!66476 s!14361 s!14361))))

(declare-fun b!6897525 () Bool)

(declare-fun tp!1898792 () Bool)

(declare-fun tp!1898796 () Bool)

(assert (=> b!6897525 (= e!4154341 (and tp!1898792 tp!1898796))))

(declare-fun b!6897526 () Bool)

(declare-fun tp!1898793 () Bool)

(declare-fun tp!1898795 () Bool)

(assert (=> b!6897526 (= e!4154339 (and tp!1898793 tp!1898795))))

(assert (=> b!6897527 (= e!4154338 e!4154340)))

(declare-fun res!2812242 () Bool)

(assert (=> b!6897527 (=> res!2812242 e!4154340)))

(declare-fun lt!2464429 () Bool)

(assert (=> b!6897527 (= res!2812242 (not lt!2464429))))

(assert (=> b!6897527 (= lt!2464429 (matchRSpec!3906 r1!6342 (_1!37013 lt!2464433)))))

(assert (=> b!6897527 (= lt!2464429 (matchR!8988 r1!6342 (_1!37013 lt!2464433)))))

(declare-fun lt!2464441 () Unit!160406)

(assert (=> b!6897527 (= lt!2464441 (mainMatchTheorem!3906 r1!6342 (_1!37013 lt!2464433)))))

(assert (=> b!6897527 (= lt!2464433 (get!23215 lt!2464435))))

(assert (=> b!6897527 (= (Exists!3851 lambda!391183) (Exists!3851 lambda!391184))))

(declare-fun lt!2464440 () Unit!160406)

(assert (=> b!6897527 (= lt!2464440 (lemmaExistCutMatchRandMatchRSpecEquivalent!2324 r1!6342 lt!2464434 s!14361))))

(assert (=> b!6897527 (Exists!3851 lambda!391183)))

(declare-fun lt!2464438 () Unit!160406)

(assert (=> b!6897527 (= lt!2464438 (lemmaFindConcatSeparationEquivalentToExists!2798 r1!6342 lt!2464434 s!14361))))

(assert (= (and start!664586 res!2812248) b!6897523))

(assert (= (and b!6897523 res!2812240) b!6897507))

(assert (= (and b!6897507 res!2812244) b!6897514))

(assert (= (and b!6897514 (not res!2812247)) b!6897524))

(assert (= (and b!6897524 (not res!2812245)) b!6897527))

(assert (= (and b!6897527 (not res!2812242)) b!6897519))

(assert (= (and b!6897519 (not res!2812243)) b!6897520))

(assert (= (and b!6897520 (not res!2812246)) b!6897506))

(assert (= (and b!6897506 (not res!2812241)) b!6897518))

(get-info :version)

(assert (= (and start!664586 ((_ is ElementMatch!16843) r1!6342)) b!6897521))

(assert (= (and start!664586 ((_ is Concat!25688) r1!6342)) b!6897513))

(assert (= (and start!664586 ((_ is Star!16843) r1!6342)) b!6897511))

(assert (= (and start!664586 ((_ is Union!16843) r1!6342)) b!6897510))

(assert (= (and start!664586 ((_ is ElementMatch!16843) r2!6280)) b!6897509))

(assert (= (and start!664586 ((_ is Concat!25688) r2!6280)) b!6897526))

(assert (= (and start!664586 ((_ is Star!16843) r2!6280)) b!6897516))

(assert (= (and start!664586 ((_ is Union!16843) r2!6280)) b!6897512))

(assert (= (and start!664586 ((_ is ElementMatch!16843) r3!135)) b!6897515))

(assert (= (and start!664586 ((_ is Concat!25688) r3!135)) b!6897517))

(assert (= (and start!664586 ((_ is Star!16843) r3!135)) b!6897522))

(assert (= (and start!664586 ((_ is Union!16843) r3!135)) b!6897525))

(assert (= (and start!664586 ((_ is Cons!66476) s!14361)) b!6897508))

(declare-fun m!7616062 () Bool)

(assert (=> b!6897507 m!7616062))

(declare-fun m!7616064 () Bool)

(assert (=> b!6897524 m!7616064))

(declare-fun m!7616066 () Bool)

(assert (=> b!6897524 m!7616066))

(declare-fun m!7616068 () Bool)

(assert (=> b!6897506 m!7616068))

(declare-fun m!7616070 () Bool)

(assert (=> b!6897520 m!7616070))

(declare-fun m!7616072 () Bool)

(assert (=> b!6897520 m!7616072))

(declare-fun m!7616074 () Bool)

(assert (=> b!6897520 m!7616074))

(declare-fun m!7616076 () Bool)

(assert (=> b!6897520 m!7616076))

(assert (=> b!6897520 m!7616070))

(declare-fun m!7616078 () Bool)

(assert (=> b!6897520 m!7616078))

(declare-fun m!7616080 () Bool)

(assert (=> b!6897520 m!7616080))

(declare-fun m!7616082 () Bool)

(assert (=> b!6897520 m!7616082))

(declare-fun m!7616084 () Bool)

(assert (=> b!6897520 m!7616084))

(declare-fun m!7616086 () Bool)

(assert (=> b!6897520 m!7616086))

(declare-fun m!7616088 () Bool)

(assert (=> b!6897520 m!7616088))

(declare-fun m!7616090 () Bool)

(assert (=> b!6897514 m!7616090))

(declare-fun m!7616092 () Bool)

(assert (=> b!6897514 m!7616092))

(declare-fun m!7616094 () Bool)

(assert (=> b!6897514 m!7616094))

(declare-fun m!7616096 () Bool)

(assert (=> b!6897514 m!7616096))

(declare-fun m!7616098 () Bool)

(assert (=> b!6897514 m!7616098))

(declare-fun m!7616100 () Bool)

(assert (=> b!6897514 m!7616100))

(declare-fun m!7616102 () Bool)

(assert (=> b!6897523 m!7616102))

(declare-fun m!7616104 () Bool)

(assert (=> b!6897519 m!7616104))

(declare-fun m!7616106 () Bool)

(assert (=> b!6897518 m!7616106))

(declare-fun m!7616108 () Bool)

(assert (=> b!6897518 m!7616108))

(declare-fun m!7616110 () Bool)

(assert (=> start!664586 m!7616110))

(declare-fun m!7616112 () Bool)

(assert (=> b!6897527 m!7616112))

(declare-fun m!7616114 () Bool)

(assert (=> b!6897527 m!7616114))

(declare-fun m!7616116 () Bool)

(assert (=> b!6897527 m!7616116))

(assert (=> b!6897527 m!7616112))

(declare-fun m!7616118 () Bool)

(assert (=> b!6897527 m!7616118))

(declare-fun m!7616120 () Bool)

(assert (=> b!6897527 m!7616120))

(declare-fun m!7616122 () Bool)

(assert (=> b!6897527 m!7616122))

(declare-fun m!7616124 () Bool)

(assert (=> b!6897527 m!7616124))

(declare-fun m!7616126 () Bool)

(assert (=> b!6897527 m!7616126))

(check-sat (not b!6897513) (not b!6897524) (not b!6897506) (not b!6897518) (not b!6897527) (not b!6897507) (not b!6897510) (not b!6897508) (not b!6897520) (not b!6897526) (not b!6897516) (not start!664586) (not b!6897519) (not b!6897522) (not b!6897512) (not b!6897511) (not b!6897514) tp_is_empty!42911 (not b!6897523) (not b!6897525) (not b!6897517))
(check-sat)
