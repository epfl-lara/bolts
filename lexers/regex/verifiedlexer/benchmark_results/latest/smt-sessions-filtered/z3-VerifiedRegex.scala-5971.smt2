; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292320 () Bool)

(assert start!292320)

(declare-fun b!3063191 () Bool)

(declare-fun res!1257530 () Bool)

(declare-fun e!1917879 () Bool)

(assert (=> b!3063191 (=> res!1257530 e!1917879)))

(declare-datatypes ((C!19172 0))(
  ( (C!19173 (val!11622 Int)) )
))
(declare-datatypes ((List!35358 0))(
  ( (Nil!35234) (Cons!35234 (h!40654 C!19172) (t!234423 List!35358)) )
))
(declare-fun s!11993 () List!35358)

(declare-fun isEmpty!19551 (List!35358) Bool)

(assert (=> b!3063191 (= res!1257530 (isEmpty!19551 s!11993))))

(declare-fun b!3063192 () Bool)

(declare-fun e!1917874 () Bool)

(declare-fun tp_is_empty!16549 () Bool)

(assert (=> b!3063192 (= e!1917874 tp_is_empty!16549)))

(declare-fun b!3063193 () Bool)

(declare-fun res!1257523 () Bool)

(declare-fun e!1917875 () Bool)

(assert (=> b!3063193 (=> res!1257523 e!1917875)))

(declare-datatypes ((Regex!9493 0))(
  ( (ElementMatch!9493 (c!508661 C!19172)) (Concat!14814 (regOne!19498 Regex!9493) (regTwo!19498 Regex!9493)) (EmptyExpr!9493) (Star!9493 (reg!9822 Regex!9493)) (EmptyLang!9493) (Union!9493 (regOne!19499 Regex!9493) (regTwo!19499 Regex!9493)) )
))
(declare-fun r!17423 () Regex!9493)

(declare-fun nullable!3139 (Regex!9493) Bool)

(assert (=> b!3063193 (= res!1257523 (not (nullable!3139 (regOne!19498 r!17423))))))

(declare-fun b!3063194 () Bool)

(declare-fun e!1917876 () Bool)

(assert (=> b!3063194 (= e!1917876 e!1917875)))

(declare-fun res!1257532 () Bool)

(assert (=> b!3063194 (=> res!1257532 e!1917875)))

(declare-fun lt!1050234 () Bool)

(assert (=> b!3063194 (= res!1257532 (not lt!1050234))))

(declare-fun lt!1050231 () Regex!9493)

(declare-fun matchR!4375 (Regex!9493 List!35358) Bool)

(assert (=> b!3063194 (= lt!1050234 (matchR!4375 lt!1050231 s!11993))))

(assert (=> b!3063194 (= lt!1050234 (matchR!4375 (regTwo!19498 r!17423) s!11993))))

(declare-datatypes ((Unit!49425 0))(
  ( (Unit!49426) )
))
(declare-fun lt!1050233 () Unit!49425)

(declare-fun lemmaSimplifySound!278 (Regex!9493 List!35358) Unit!49425)

(assert (=> b!3063194 (= lt!1050233 (lemmaSimplifySound!278 (regTwo!19498 r!17423) s!11993))))

(declare-fun b!3063195 () Bool)

(declare-fun e!1917873 () Bool)

(assert (=> b!3063195 (= e!1917875 e!1917873)))

(declare-fun res!1257524 () Bool)

(assert (=> b!3063195 (=> res!1257524 e!1917873)))

(declare-fun validRegex!4226 (Regex!9493) Bool)

(assert (=> b!3063195 (= res!1257524 (not (validRegex!4226 (regOne!19498 r!17423))))))

(declare-datatypes ((tuple2!34156 0))(
  ( (tuple2!34157 (_1!20210 List!35358) (_2!20210 List!35358)) )
))
(declare-datatypes ((Option!6810 0))(
  ( (None!6809) (Some!6809 (v!34943 tuple2!34156)) )
))
(declare-fun isDefined!5361 (Option!6810) Bool)

(declare-fun findConcatSeparation!1204 (Regex!9493 Regex!9493 List!35358 List!35358 List!35358) Option!6810)

(assert (=> b!3063195 (isDefined!5361 (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993))))

(declare-fun lt!1050232 () Unit!49425)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!24 (Regex!9493 Regex!9493 List!35358 List!35358 List!35358 List!35358 List!35358) Unit!49425)

(assert (=> b!3063195 (= lt!1050232 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!24 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993 Nil!35234 s!11993))))

(declare-fun b!3063197 () Bool)

(assert (=> b!3063197 (= e!1917879 e!1917876)))

(declare-fun res!1257525 () Bool)

(assert (=> b!3063197 (=> res!1257525 e!1917876)))

(declare-fun lt!1050228 () Regex!9493)

(declare-fun isEmptyLang!544 (Regex!9493) Bool)

(assert (=> b!3063197 (= res!1257525 (isEmptyLang!544 lt!1050228))))

(declare-fun simplify!448 (Regex!9493) Regex!9493)

(assert (=> b!3063197 (= lt!1050231 (simplify!448 (regTwo!19498 r!17423)))))

(assert (=> b!3063197 (= lt!1050228 (simplify!448 (regOne!19498 r!17423)))))

(declare-fun b!3063198 () Bool)

(declare-fun tp!967660 () Bool)

(declare-fun tp!967664 () Bool)

(assert (=> b!3063198 (= e!1917874 (and tp!967660 tp!967664))))

(declare-fun b!3063199 () Bool)

(declare-fun e!1917877 () Bool)

(assert (=> b!3063199 (= e!1917877 (not e!1917879))))

(declare-fun res!1257529 () Bool)

(assert (=> b!3063199 (=> res!1257529 e!1917879)))

(declare-fun lt!1050230 () Bool)

(get-info :version)

(assert (=> b!3063199 (= res!1257529 (or lt!1050230 (not ((_ is Concat!14814) r!17423))))))

(declare-fun matchRSpec!1630 (Regex!9493 List!35358) Bool)

(assert (=> b!3063199 (= lt!1050230 (matchRSpec!1630 r!17423 s!11993))))

(assert (=> b!3063199 (= lt!1050230 (matchR!4375 r!17423 s!11993))))

(declare-fun lt!1050229 () Unit!49425)

(declare-fun mainMatchTheorem!1630 (Regex!9493 List!35358) Unit!49425)

(assert (=> b!3063199 (= lt!1050229 (mainMatchTheorem!1630 r!17423 s!11993))))

(declare-fun b!3063200 () Bool)

(declare-fun e!1917878 () Bool)

(declare-fun tp!967662 () Bool)

(assert (=> b!3063200 (= e!1917878 (and tp_is_empty!16549 tp!967662))))

(declare-fun b!3063201 () Bool)

(declare-fun tp!967661 () Bool)

(declare-fun tp!967665 () Bool)

(assert (=> b!3063201 (= e!1917874 (and tp!967661 tp!967665))))

(declare-fun b!3063202 () Bool)

(declare-fun tp!967663 () Bool)

(assert (=> b!3063202 (= e!1917874 tp!967663)))

(declare-fun b!3063203 () Bool)

(assert (=> b!3063203 (= e!1917873 (validRegex!4226 (regTwo!19498 r!17423)))))

(declare-fun res!1257526 () Bool)

(assert (=> start!292320 (=> (not res!1257526) (not e!1917877))))

(assert (=> start!292320 (= res!1257526 (validRegex!4226 r!17423))))

(assert (=> start!292320 e!1917877))

(assert (=> start!292320 e!1917874))

(assert (=> start!292320 e!1917878))

(declare-fun b!3063196 () Bool)

(declare-fun res!1257528 () Bool)

(assert (=> b!3063196 (=> res!1257528 e!1917876)))

(declare-fun isEmptyExpr!550 (Regex!9493) Bool)

(assert (=> b!3063196 (= res!1257528 (not (isEmptyExpr!550 lt!1050228)))))

(declare-fun b!3063204 () Bool)

(declare-fun res!1257527 () Bool)

(assert (=> b!3063204 (=> res!1257527 e!1917875)))

(assert (=> b!3063204 (= res!1257527 (not (matchR!4375 (regOne!19498 r!17423) Nil!35234)))))

(declare-fun b!3063205 () Bool)

(declare-fun res!1257531 () Bool)

(assert (=> b!3063205 (=> res!1257531 e!1917876)))

(assert (=> b!3063205 (= res!1257531 (isEmptyLang!544 lt!1050231))))

(assert (= (and start!292320 res!1257526) b!3063199))

(assert (= (and b!3063199 (not res!1257529)) b!3063191))

(assert (= (and b!3063191 (not res!1257530)) b!3063197))

(assert (= (and b!3063197 (not res!1257525)) b!3063205))

(assert (= (and b!3063205 (not res!1257531)) b!3063196))

(assert (= (and b!3063196 (not res!1257528)) b!3063194))

(assert (= (and b!3063194 (not res!1257532)) b!3063193))

(assert (= (and b!3063193 (not res!1257523)) b!3063204))

(assert (= (and b!3063204 (not res!1257527)) b!3063195))

(assert (= (and b!3063195 (not res!1257524)) b!3063203))

(assert (= (and start!292320 ((_ is ElementMatch!9493) r!17423)) b!3063192))

(assert (= (and start!292320 ((_ is Concat!14814) r!17423)) b!3063198))

(assert (= (and start!292320 ((_ is Star!9493) r!17423)) b!3063202))

(assert (= (and start!292320 ((_ is Union!9493) r!17423)) b!3063201))

(assert (= (and start!292320 ((_ is Cons!35234) s!11993)) b!3063200))

(declare-fun m!3382489 () Bool)

(assert (=> b!3063194 m!3382489))

(declare-fun m!3382491 () Bool)

(assert (=> b!3063194 m!3382491))

(declare-fun m!3382493 () Bool)

(assert (=> b!3063194 m!3382493))

(declare-fun m!3382495 () Bool)

(assert (=> b!3063195 m!3382495))

(declare-fun m!3382497 () Bool)

(assert (=> b!3063195 m!3382497))

(assert (=> b!3063195 m!3382497))

(declare-fun m!3382499 () Bool)

(assert (=> b!3063195 m!3382499))

(declare-fun m!3382501 () Bool)

(assert (=> b!3063195 m!3382501))

(declare-fun m!3382503 () Bool)

(assert (=> b!3063196 m!3382503))

(declare-fun m!3382505 () Bool)

(assert (=> b!3063204 m!3382505))

(declare-fun m!3382507 () Bool)

(assert (=> start!292320 m!3382507))

(declare-fun m!3382509 () Bool)

(assert (=> b!3063203 m!3382509))

(declare-fun m!3382511 () Bool)

(assert (=> b!3063199 m!3382511))

(declare-fun m!3382513 () Bool)

(assert (=> b!3063199 m!3382513))

(declare-fun m!3382515 () Bool)

(assert (=> b!3063199 m!3382515))

(declare-fun m!3382517 () Bool)

(assert (=> b!3063193 m!3382517))

(declare-fun m!3382519 () Bool)

(assert (=> b!3063197 m!3382519))

(declare-fun m!3382521 () Bool)

(assert (=> b!3063197 m!3382521))

(declare-fun m!3382523 () Bool)

(assert (=> b!3063197 m!3382523))

(declare-fun m!3382525 () Bool)

(assert (=> b!3063191 m!3382525))

(declare-fun m!3382527 () Bool)

(assert (=> b!3063205 m!3382527))

(check-sat (not b!3063198) (not b!3063193) (not b!3063196) (not start!292320) (not b!3063205) (not b!3063197) (not b!3063199) (not b!3063200) (not b!3063202) tp_is_empty!16549 (not b!3063203) (not b!3063191) (not b!3063204) (not b!3063201) (not b!3063194) (not b!3063195))
(check-sat)
(get-model)

(declare-fun bm!212032 () Bool)

(declare-fun call!212039 () Bool)

(declare-fun call!212038 () Bool)

(assert (=> bm!212032 (= call!212039 call!212038)))

(declare-fun b!3063224 () Bool)

(declare-fun e!1917897 () Bool)

(declare-fun e!1917895 () Bool)

(assert (=> b!3063224 (= e!1917897 e!1917895)))

(declare-fun res!1257547 () Bool)

(assert (=> b!3063224 (= res!1257547 (not (nullable!3139 (reg!9822 (regOne!19498 r!17423)))))))

(assert (=> b!3063224 (=> (not res!1257547) (not e!1917895))))

(declare-fun b!3063225 () Bool)

(declare-fun e!1917896 () Bool)

(declare-fun call!212037 () Bool)

(assert (=> b!3063225 (= e!1917896 call!212037)))

(declare-fun d!855458 () Bool)

(declare-fun res!1257545 () Bool)

(declare-fun e!1917900 () Bool)

(assert (=> d!855458 (=> res!1257545 e!1917900)))

(assert (=> d!855458 (= res!1257545 ((_ is ElementMatch!9493) (regOne!19498 r!17423)))))

(assert (=> d!855458 (= (validRegex!4226 (regOne!19498 r!17423)) e!1917900)))

(declare-fun b!3063226 () Bool)

(assert (=> b!3063226 (= e!1917895 call!212038)))

(declare-fun b!3063227 () Bool)

(declare-fun e!1917898 () Bool)

(assert (=> b!3063227 (= e!1917897 e!1917898)))

(declare-fun c!508666 () Bool)

(assert (=> b!3063227 (= c!508666 ((_ is Union!9493) (regOne!19498 r!17423)))))

(declare-fun b!3063228 () Bool)

(declare-fun res!1257543 () Bool)

(declare-fun e!1917899 () Bool)

(assert (=> b!3063228 (=> res!1257543 e!1917899)))

(assert (=> b!3063228 (= res!1257543 (not ((_ is Concat!14814) (regOne!19498 r!17423))))))

(assert (=> b!3063228 (= e!1917898 e!1917899)))

(declare-fun b!3063229 () Bool)

(assert (=> b!3063229 (= e!1917900 e!1917897)))

(declare-fun c!508667 () Bool)

(assert (=> b!3063229 (= c!508667 ((_ is Star!9493) (regOne!19498 r!17423)))))

(declare-fun bm!212033 () Bool)

(assert (=> bm!212033 (= call!212037 (validRegex!4226 (ite c!508666 (regOne!19499 (regOne!19498 r!17423)) (regTwo!19498 (regOne!19498 r!17423)))))))

(declare-fun b!3063230 () Bool)

(declare-fun res!1257544 () Bool)

(declare-fun e!1917894 () Bool)

(assert (=> b!3063230 (=> (not res!1257544) (not e!1917894))))

(assert (=> b!3063230 (= res!1257544 call!212037)))

(assert (=> b!3063230 (= e!1917898 e!1917894)))

(declare-fun bm!212034 () Bool)

(assert (=> bm!212034 (= call!212038 (validRegex!4226 (ite c!508667 (reg!9822 (regOne!19498 r!17423)) (ite c!508666 (regTwo!19499 (regOne!19498 r!17423)) (regOne!19498 (regOne!19498 r!17423))))))))

(declare-fun b!3063231 () Bool)

(assert (=> b!3063231 (= e!1917894 call!212039)))

(declare-fun b!3063232 () Bool)

(assert (=> b!3063232 (= e!1917899 e!1917896)))

(declare-fun res!1257546 () Bool)

(assert (=> b!3063232 (=> (not res!1257546) (not e!1917896))))

(assert (=> b!3063232 (= res!1257546 call!212039)))

(assert (= (and d!855458 (not res!1257545)) b!3063229))

(assert (= (and b!3063229 c!508667) b!3063224))

(assert (= (and b!3063229 (not c!508667)) b!3063227))

(assert (= (and b!3063224 res!1257547) b!3063226))

(assert (= (and b!3063227 c!508666) b!3063230))

(assert (= (and b!3063227 (not c!508666)) b!3063228))

(assert (= (and b!3063230 res!1257544) b!3063231))

(assert (= (and b!3063228 (not res!1257543)) b!3063232))

(assert (= (and b!3063232 res!1257546) b!3063225))

(assert (= (or b!3063230 b!3063225) bm!212033))

(assert (= (or b!3063231 b!3063232) bm!212032))

(assert (= (or b!3063226 bm!212032) bm!212034))

(declare-fun m!3382529 () Bool)

(assert (=> b!3063224 m!3382529))

(declare-fun m!3382531 () Bool)

(assert (=> bm!212033 m!3382531))

(declare-fun m!3382533 () Bool)

(assert (=> bm!212034 m!3382533))

(assert (=> b!3063195 d!855458))

(declare-fun d!855460 () Bool)

(declare-fun isEmpty!19552 (Option!6810) Bool)

(assert (=> d!855460 (= (isDefined!5361 (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993)) (not (isEmpty!19552 (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993))))))

(declare-fun bs!532488 () Bool)

(assert (= bs!532488 d!855460))

(assert (=> bs!532488 m!3382497))

(declare-fun m!3382535 () Bool)

(assert (=> bs!532488 m!3382535))

(assert (=> b!3063195 d!855460))

(declare-fun b!3063251 () Bool)

(declare-fun lt!1050243 () Unit!49425)

(declare-fun lt!1050242 () Unit!49425)

(assert (=> b!3063251 (= lt!1050243 lt!1050242)))

(declare-fun ++!8457 (List!35358 List!35358) List!35358)

(assert (=> b!3063251 (= (++!8457 (++!8457 Nil!35234 (Cons!35234 (h!40654 s!11993) Nil!35234)) (t!234423 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1060 (List!35358 C!19172 List!35358 List!35358) Unit!49425)

(assert (=> b!3063251 (= lt!1050242 (lemmaMoveElementToOtherListKeepsConcatEq!1060 Nil!35234 (h!40654 s!11993) (t!234423 s!11993) s!11993))))

(declare-fun e!1917913 () Option!6810)

(assert (=> b!3063251 (= e!1917913 (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) (++!8457 Nil!35234 (Cons!35234 (h!40654 s!11993) Nil!35234)) (t!234423 s!11993) s!11993))))

(declare-fun b!3063252 () Bool)

(declare-fun e!1917911 () Option!6810)

(assert (=> b!3063252 (= e!1917911 e!1917913)))

(declare-fun c!508672 () Bool)

(assert (=> b!3063252 (= c!508672 ((_ is Nil!35234) s!11993))))

(declare-fun b!3063253 () Bool)

(declare-fun res!1257558 () Bool)

(declare-fun e!1917915 () Bool)

(assert (=> b!3063253 (=> (not res!1257558) (not e!1917915))))

(declare-fun lt!1050241 () Option!6810)

(declare-fun get!11022 (Option!6810) tuple2!34156)

(assert (=> b!3063253 (= res!1257558 (matchR!4375 (regTwo!19498 r!17423) (_2!20210 (get!11022 lt!1050241))))))

(declare-fun b!3063254 () Bool)

(declare-fun e!1917912 () Bool)

(assert (=> b!3063254 (= e!1917912 (not (isDefined!5361 lt!1050241)))))

(declare-fun b!3063255 () Bool)

(assert (=> b!3063255 (= e!1917913 None!6809)))

(declare-fun b!3063256 () Bool)

(declare-fun e!1917914 () Bool)

(assert (=> b!3063256 (= e!1917914 (matchR!4375 (regTwo!19498 r!17423) s!11993))))

(declare-fun b!3063257 () Bool)

(declare-fun res!1257561 () Bool)

(assert (=> b!3063257 (=> (not res!1257561) (not e!1917915))))

(assert (=> b!3063257 (= res!1257561 (matchR!4375 (regOne!19498 r!17423) (_1!20210 (get!11022 lt!1050241))))))

(declare-fun b!3063258 () Bool)

(assert (=> b!3063258 (= e!1917915 (= (++!8457 (_1!20210 (get!11022 lt!1050241)) (_2!20210 (get!11022 lt!1050241))) s!11993))))

(declare-fun b!3063259 () Bool)

(assert (=> b!3063259 (= e!1917911 (Some!6809 (tuple2!34157 Nil!35234 s!11993)))))

(declare-fun d!855462 () Bool)

(assert (=> d!855462 e!1917912))

(declare-fun res!1257560 () Bool)

(assert (=> d!855462 (=> res!1257560 e!1917912)))

(assert (=> d!855462 (= res!1257560 e!1917915)))

(declare-fun res!1257559 () Bool)

(assert (=> d!855462 (=> (not res!1257559) (not e!1917915))))

(assert (=> d!855462 (= res!1257559 (isDefined!5361 lt!1050241))))

(assert (=> d!855462 (= lt!1050241 e!1917911)))

(declare-fun c!508673 () Bool)

(assert (=> d!855462 (= c!508673 e!1917914)))

(declare-fun res!1257562 () Bool)

(assert (=> d!855462 (=> (not res!1257562) (not e!1917914))))

(assert (=> d!855462 (= res!1257562 (matchR!4375 (regOne!19498 r!17423) Nil!35234))))

(assert (=> d!855462 (validRegex!4226 (regOne!19498 r!17423))))

(assert (=> d!855462 (= (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993) lt!1050241)))

(assert (= (and d!855462 res!1257562) b!3063256))

(assert (= (and d!855462 c!508673) b!3063259))

(assert (= (and d!855462 (not c!508673)) b!3063252))

(assert (= (and b!3063252 c!508672) b!3063255))

(assert (= (and b!3063252 (not c!508672)) b!3063251))

(assert (= (and d!855462 res!1257559) b!3063257))

(assert (= (and b!3063257 res!1257561) b!3063253))

(assert (= (and b!3063253 res!1257558) b!3063258))

(assert (= (and d!855462 (not res!1257560)) b!3063254))

(declare-fun m!3382537 () Bool)

(assert (=> b!3063257 m!3382537))

(declare-fun m!3382539 () Bool)

(assert (=> b!3063257 m!3382539))

(declare-fun m!3382541 () Bool)

(assert (=> d!855462 m!3382541))

(assert (=> d!855462 m!3382505))

(assert (=> d!855462 m!3382495))

(assert (=> b!3063256 m!3382491))

(declare-fun m!3382543 () Bool)

(assert (=> b!3063251 m!3382543))

(assert (=> b!3063251 m!3382543))

(declare-fun m!3382545 () Bool)

(assert (=> b!3063251 m!3382545))

(declare-fun m!3382547 () Bool)

(assert (=> b!3063251 m!3382547))

(assert (=> b!3063251 m!3382543))

(declare-fun m!3382549 () Bool)

(assert (=> b!3063251 m!3382549))

(assert (=> b!3063258 m!3382537))

(declare-fun m!3382551 () Bool)

(assert (=> b!3063258 m!3382551))

(assert (=> b!3063253 m!3382537))

(declare-fun m!3382553 () Bool)

(assert (=> b!3063253 m!3382553))

(assert (=> b!3063254 m!3382541))

(assert (=> b!3063195 d!855462))

(declare-fun d!855466 () Bool)

(assert (=> d!855466 (isDefined!5361 (findConcatSeparation!1204 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993))))

(declare-fun lt!1050246 () Unit!49425)

(declare-fun choose!18138 (Regex!9493 Regex!9493 List!35358 List!35358 List!35358 List!35358 List!35358) Unit!49425)

(assert (=> d!855466 (= lt!1050246 (choose!18138 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993 Nil!35234 s!11993))))

(assert (=> d!855466 (validRegex!4226 (regOne!19498 r!17423))))

(assert (=> d!855466 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!24 (regOne!19498 r!17423) (regTwo!19498 r!17423) Nil!35234 s!11993 s!11993 Nil!35234 s!11993) lt!1050246)))

(declare-fun bs!532489 () Bool)

(assert (= bs!532489 d!855466))

(assert (=> bs!532489 m!3382497))

(assert (=> bs!532489 m!3382497))

(assert (=> bs!532489 m!3382499))

(declare-fun m!3382555 () Bool)

(assert (=> bs!532489 m!3382555))

(assert (=> bs!532489 m!3382495))

(assert (=> b!3063195 d!855466))

(declare-fun b!3063316 () Bool)

(declare-fun res!1257602 () Bool)

(declare-fun e!1917945 () Bool)

(assert (=> b!3063316 (=> res!1257602 e!1917945)))

(declare-fun e!1917948 () Bool)

(assert (=> b!3063316 (= res!1257602 e!1917948)))

(declare-fun res!1257597 () Bool)

(assert (=> b!3063316 (=> (not res!1257597) (not e!1917948))))

(declare-fun lt!1050251 () Bool)

(assert (=> b!3063316 (= res!1257597 lt!1050251)))

(declare-fun b!3063317 () Bool)

(declare-fun e!1917944 () Bool)

(assert (=> b!3063317 (= e!1917945 e!1917944)))

(declare-fun res!1257595 () Bool)

(assert (=> b!3063317 (=> (not res!1257595) (not e!1917944))))

(assert (=> b!3063317 (= res!1257595 (not lt!1050251))))

(declare-fun b!3063318 () Bool)

(declare-fun e!1917947 () Bool)

(declare-fun head!6793 (List!35358) C!19172)

(assert (=> b!3063318 (= e!1917947 (not (= (head!6793 s!11993) (c!508661 lt!1050231))))))

(declare-fun b!3063319 () Bool)

(declare-fun e!1917949 () Bool)

(assert (=> b!3063319 (= e!1917949 (nullable!3139 lt!1050231))))

(declare-fun b!3063321 () Bool)

(declare-fun e!1917950 () Bool)

(declare-fun e!1917946 () Bool)

(assert (=> b!3063321 (= e!1917950 e!1917946)))

(declare-fun c!508688 () Bool)

(assert (=> b!3063321 (= c!508688 ((_ is EmptyLang!9493) lt!1050231))))

(declare-fun b!3063322 () Bool)

(assert (=> b!3063322 (= e!1917944 e!1917947)))

(declare-fun res!1257599 () Bool)

(assert (=> b!3063322 (=> res!1257599 e!1917947)))

(declare-fun call!212044 () Bool)

(assert (=> b!3063322 (= res!1257599 call!212044)))

(declare-fun b!3063323 () Bool)

(declare-fun res!1257598 () Bool)

(assert (=> b!3063323 (=> res!1257598 e!1917945)))

(assert (=> b!3063323 (= res!1257598 (not ((_ is ElementMatch!9493) lt!1050231)))))

(assert (=> b!3063323 (= e!1917946 e!1917945)))

(declare-fun bm!212039 () Bool)

(assert (=> bm!212039 (= call!212044 (isEmpty!19551 s!11993))))

(declare-fun b!3063324 () Bool)

(declare-fun res!1257600 () Bool)

(assert (=> b!3063324 (=> (not res!1257600) (not e!1917948))))

(declare-fun tail!5019 (List!35358) List!35358)

(assert (=> b!3063324 (= res!1257600 (isEmpty!19551 (tail!5019 s!11993)))))

(declare-fun b!3063325 () Bool)

(assert (=> b!3063325 (= e!1917948 (= (head!6793 s!11993) (c!508661 lt!1050231)))))

(declare-fun b!3063326 () Bool)

(assert (=> b!3063326 (= e!1917946 (not lt!1050251))))

(declare-fun b!3063327 () Bool)

(declare-fun res!1257601 () Bool)

(assert (=> b!3063327 (=> (not res!1257601) (not e!1917948))))

(assert (=> b!3063327 (= res!1257601 (not call!212044))))

(declare-fun b!3063320 () Bool)

(declare-fun derivativeStep!2734 (Regex!9493 C!19172) Regex!9493)

(assert (=> b!3063320 (= e!1917949 (matchR!4375 (derivativeStep!2734 lt!1050231 (head!6793 s!11993)) (tail!5019 s!11993)))))

(declare-fun d!855468 () Bool)

(assert (=> d!855468 e!1917950))

(declare-fun c!508687 () Bool)

(assert (=> d!855468 (= c!508687 ((_ is EmptyExpr!9493) lt!1050231))))

(assert (=> d!855468 (= lt!1050251 e!1917949)))

(declare-fun c!508686 () Bool)

(assert (=> d!855468 (= c!508686 (isEmpty!19551 s!11993))))

(assert (=> d!855468 (validRegex!4226 lt!1050231)))

(assert (=> d!855468 (= (matchR!4375 lt!1050231 s!11993) lt!1050251)))

(declare-fun b!3063328 () Bool)

(assert (=> b!3063328 (= e!1917950 (= lt!1050251 call!212044))))

(declare-fun b!3063329 () Bool)

(declare-fun res!1257596 () Bool)

(assert (=> b!3063329 (=> res!1257596 e!1917947)))

(assert (=> b!3063329 (= res!1257596 (not (isEmpty!19551 (tail!5019 s!11993))))))

(assert (= (and d!855468 c!508686) b!3063319))

(assert (= (and d!855468 (not c!508686)) b!3063320))

(assert (= (and d!855468 c!508687) b!3063328))

(assert (= (and d!855468 (not c!508687)) b!3063321))

(assert (= (and b!3063321 c!508688) b!3063326))

(assert (= (and b!3063321 (not c!508688)) b!3063323))

(assert (= (and b!3063323 (not res!1257598)) b!3063316))

(assert (= (and b!3063316 res!1257597) b!3063327))

(assert (= (and b!3063327 res!1257601) b!3063324))

(assert (= (and b!3063324 res!1257600) b!3063325))

(assert (= (and b!3063316 (not res!1257602)) b!3063317))

(assert (= (and b!3063317 res!1257595) b!3063322))

(assert (= (and b!3063322 (not res!1257599)) b!3063329))

(assert (= (and b!3063329 (not res!1257596)) b!3063318))

(assert (= (or b!3063328 b!3063322 b!3063327) bm!212039))

(assert (=> bm!212039 m!3382525))

(declare-fun m!3382557 () Bool)

(assert (=> b!3063325 m!3382557))

(declare-fun m!3382559 () Bool)

(assert (=> b!3063329 m!3382559))

(assert (=> b!3063329 m!3382559))

(declare-fun m!3382561 () Bool)

(assert (=> b!3063329 m!3382561))

(assert (=> d!855468 m!3382525))

(declare-fun m!3382563 () Bool)

(assert (=> d!855468 m!3382563))

(assert (=> b!3063324 m!3382559))

(assert (=> b!3063324 m!3382559))

(assert (=> b!3063324 m!3382561))

(assert (=> b!3063320 m!3382557))

(assert (=> b!3063320 m!3382557))

(declare-fun m!3382565 () Bool)

(assert (=> b!3063320 m!3382565))

(assert (=> b!3063320 m!3382559))

(assert (=> b!3063320 m!3382565))

(assert (=> b!3063320 m!3382559))

(declare-fun m!3382567 () Bool)

(assert (=> b!3063320 m!3382567))

(assert (=> b!3063318 m!3382557))

(declare-fun m!3382569 () Bool)

(assert (=> b!3063319 m!3382569))

(assert (=> b!3063194 d!855468))

(declare-fun b!3063330 () Bool)

(declare-fun res!1257610 () Bool)

(declare-fun e!1917952 () Bool)

(assert (=> b!3063330 (=> res!1257610 e!1917952)))

(declare-fun e!1917955 () Bool)

(assert (=> b!3063330 (= res!1257610 e!1917955)))

(declare-fun res!1257605 () Bool)

(assert (=> b!3063330 (=> (not res!1257605) (not e!1917955))))

(declare-fun lt!1050252 () Bool)

(assert (=> b!3063330 (= res!1257605 lt!1050252)))

(declare-fun b!3063331 () Bool)

(declare-fun e!1917951 () Bool)

(assert (=> b!3063331 (= e!1917952 e!1917951)))

(declare-fun res!1257603 () Bool)

(assert (=> b!3063331 (=> (not res!1257603) (not e!1917951))))

(assert (=> b!3063331 (= res!1257603 (not lt!1050252))))

(declare-fun b!3063332 () Bool)

(declare-fun e!1917954 () Bool)

(assert (=> b!3063332 (= e!1917954 (not (= (head!6793 s!11993) (c!508661 (regTwo!19498 r!17423)))))))

(declare-fun b!3063333 () Bool)

(declare-fun e!1917956 () Bool)

(assert (=> b!3063333 (= e!1917956 (nullable!3139 (regTwo!19498 r!17423)))))

(declare-fun b!3063335 () Bool)

(declare-fun e!1917957 () Bool)

(declare-fun e!1917953 () Bool)

(assert (=> b!3063335 (= e!1917957 e!1917953)))

(declare-fun c!508691 () Bool)

(assert (=> b!3063335 (= c!508691 ((_ is EmptyLang!9493) (regTwo!19498 r!17423)))))

(declare-fun b!3063336 () Bool)

(assert (=> b!3063336 (= e!1917951 e!1917954)))

(declare-fun res!1257607 () Bool)

(assert (=> b!3063336 (=> res!1257607 e!1917954)))

(declare-fun call!212045 () Bool)

(assert (=> b!3063336 (= res!1257607 call!212045)))

(declare-fun b!3063337 () Bool)

(declare-fun res!1257606 () Bool)

(assert (=> b!3063337 (=> res!1257606 e!1917952)))

(assert (=> b!3063337 (= res!1257606 (not ((_ is ElementMatch!9493) (regTwo!19498 r!17423))))))

(assert (=> b!3063337 (= e!1917953 e!1917952)))

(declare-fun bm!212040 () Bool)

(assert (=> bm!212040 (= call!212045 (isEmpty!19551 s!11993))))

(declare-fun b!3063338 () Bool)

(declare-fun res!1257608 () Bool)

(assert (=> b!3063338 (=> (not res!1257608) (not e!1917955))))

(assert (=> b!3063338 (= res!1257608 (isEmpty!19551 (tail!5019 s!11993)))))

(declare-fun b!3063339 () Bool)

(assert (=> b!3063339 (= e!1917955 (= (head!6793 s!11993) (c!508661 (regTwo!19498 r!17423))))))

(declare-fun b!3063340 () Bool)

(assert (=> b!3063340 (= e!1917953 (not lt!1050252))))

(declare-fun b!3063341 () Bool)

(declare-fun res!1257609 () Bool)

(assert (=> b!3063341 (=> (not res!1257609) (not e!1917955))))

(assert (=> b!3063341 (= res!1257609 (not call!212045))))

(declare-fun b!3063334 () Bool)

(assert (=> b!3063334 (= e!1917956 (matchR!4375 (derivativeStep!2734 (regTwo!19498 r!17423) (head!6793 s!11993)) (tail!5019 s!11993)))))

(declare-fun d!855470 () Bool)

(assert (=> d!855470 e!1917957))

(declare-fun c!508690 () Bool)

(assert (=> d!855470 (= c!508690 ((_ is EmptyExpr!9493) (regTwo!19498 r!17423)))))

(assert (=> d!855470 (= lt!1050252 e!1917956)))

(declare-fun c!508689 () Bool)

(assert (=> d!855470 (= c!508689 (isEmpty!19551 s!11993))))

(assert (=> d!855470 (validRegex!4226 (regTwo!19498 r!17423))))

(assert (=> d!855470 (= (matchR!4375 (regTwo!19498 r!17423) s!11993) lt!1050252)))

(declare-fun b!3063342 () Bool)

(assert (=> b!3063342 (= e!1917957 (= lt!1050252 call!212045))))

(declare-fun b!3063343 () Bool)

(declare-fun res!1257604 () Bool)

(assert (=> b!3063343 (=> res!1257604 e!1917954)))

(assert (=> b!3063343 (= res!1257604 (not (isEmpty!19551 (tail!5019 s!11993))))))

(assert (= (and d!855470 c!508689) b!3063333))

(assert (= (and d!855470 (not c!508689)) b!3063334))

(assert (= (and d!855470 c!508690) b!3063342))

(assert (= (and d!855470 (not c!508690)) b!3063335))

(assert (= (and b!3063335 c!508691) b!3063340))

(assert (= (and b!3063335 (not c!508691)) b!3063337))

(assert (= (and b!3063337 (not res!1257606)) b!3063330))

(assert (= (and b!3063330 res!1257605) b!3063341))

(assert (= (and b!3063341 res!1257609) b!3063338))

(assert (= (and b!3063338 res!1257608) b!3063339))

(assert (= (and b!3063330 (not res!1257610)) b!3063331))

(assert (= (and b!3063331 res!1257603) b!3063336))

(assert (= (and b!3063336 (not res!1257607)) b!3063343))

(assert (= (and b!3063343 (not res!1257604)) b!3063332))

(assert (= (or b!3063342 b!3063336 b!3063341) bm!212040))

(assert (=> bm!212040 m!3382525))

(assert (=> b!3063339 m!3382557))

(assert (=> b!3063343 m!3382559))

(assert (=> b!3063343 m!3382559))

(assert (=> b!3063343 m!3382561))

(assert (=> d!855470 m!3382525))

(assert (=> d!855470 m!3382509))

(assert (=> b!3063338 m!3382559))

(assert (=> b!3063338 m!3382559))

(assert (=> b!3063338 m!3382561))

(assert (=> b!3063334 m!3382557))

(assert (=> b!3063334 m!3382557))

(declare-fun m!3382571 () Bool)

(assert (=> b!3063334 m!3382571))

(assert (=> b!3063334 m!3382559))

(assert (=> b!3063334 m!3382571))

(assert (=> b!3063334 m!3382559))

(declare-fun m!3382573 () Bool)

(assert (=> b!3063334 m!3382573))

(assert (=> b!3063332 m!3382557))

(declare-fun m!3382575 () Bool)

(assert (=> b!3063333 m!3382575))

(assert (=> b!3063194 d!855470))

(declare-fun d!855472 () Bool)

(assert (=> d!855472 (= (matchR!4375 (regTwo!19498 r!17423) s!11993) (matchR!4375 (simplify!448 (regTwo!19498 r!17423)) s!11993))))

(declare-fun lt!1050256 () Unit!49425)

(declare-fun choose!18139 (Regex!9493 List!35358) Unit!49425)

(assert (=> d!855472 (= lt!1050256 (choose!18139 (regTwo!19498 r!17423) s!11993))))

(assert (=> d!855472 (validRegex!4226 (regTwo!19498 r!17423))))

(assert (=> d!855472 (= (lemmaSimplifySound!278 (regTwo!19498 r!17423) s!11993) lt!1050256)))

(declare-fun bs!532490 () Bool)

(assert (= bs!532490 d!855472))

(assert (=> bs!532490 m!3382509))

(assert (=> bs!532490 m!3382491))

(declare-fun m!3382589 () Bool)

(assert (=> bs!532490 m!3382589))

(assert (=> bs!532490 m!3382521))

(declare-fun m!3382591 () Bool)

(assert (=> bs!532490 m!3382591))

(assert (=> bs!532490 m!3382521))

(assert (=> b!3063194 d!855472))

(declare-fun d!855476 () Bool)

(assert (=> d!855476 (= (isEmptyLang!544 lt!1050231) ((_ is EmptyLang!9493) lt!1050231))))

(assert (=> b!3063205 d!855476))

(declare-fun b!3063358 () Bool)

(declare-fun res!1257626 () Bool)

(declare-fun e!1917966 () Bool)

(assert (=> b!3063358 (=> res!1257626 e!1917966)))

(declare-fun e!1917969 () Bool)

(assert (=> b!3063358 (= res!1257626 e!1917969)))

(declare-fun res!1257621 () Bool)

(assert (=> b!3063358 (=> (not res!1257621) (not e!1917969))))

(declare-fun lt!1050257 () Bool)

(assert (=> b!3063358 (= res!1257621 lt!1050257)))

(declare-fun b!3063359 () Bool)

(declare-fun e!1917965 () Bool)

(assert (=> b!3063359 (= e!1917966 e!1917965)))

(declare-fun res!1257619 () Bool)

(assert (=> b!3063359 (=> (not res!1257619) (not e!1917965))))

(assert (=> b!3063359 (= res!1257619 (not lt!1050257))))

(declare-fun b!3063360 () Bool)

(declare-fun e!1917968 () Bool)

(assert (=> b!3063360 (= e!1917968 (not (= (head!6793 Nil!35234) (c!508661 (regOne!19498 r!17423)))))))

(declare-fun b!3063361 () Bool)

(declare-fun e!1917970 () Bool)

(assert (=> b!3063361 (= e!1917970 (nullable!3139 (regOne!19498 r!17423)))))

(declare-fun b!3063363 () Bool)

(declare-fun e!1917971 () Bool)

(declare-fun e!1917967 () Bool)

(assert (=> b!3063363 (= e!1917971 e!1917967)))

(declare-fun c!508697 () Bool)

(assert (=> b!3063363 (= c!508697 ((_ is EmptyLang!9493) (regOne!19498 r!17423)))))

(declare-fun b!3063364 () Bool)

(assert (=> b!3063364 (= e!1917965 e!1917968)))

(declare-fun res!1257623 () Bool)

(assert (=> b!3063364 (=> res!1257623 e!1917968)))

(declare-fun call!212047 () Bool)

(assert (=> b!3063364 (= res!1257623 call!212047)))

(declare-fun b!3063365 () Bool)

(declare-fun res!1257622 () Bool)

(assert (=> b!3063365 (=> res!1257622 e!1917966)))

(assert (=> b!3063365 (= res!1257622 (not ((_ is ElementMatch!9493) (regOne!19498 r!17423))))))

(assert (=> b!3063365 (= e!1917967 e!1917966)))

(declare-fun bm!212042 () Bool)

(assert (=> bm!212042 (= call!212047 (isEmpty!19551 Nil!35234))))

(declare-fun b!3063366 () Bool)

(declare-fun res!1257624 () Bool)

(assert (=> b!3063366 (=> (not res!1257624) (not e!1917969))))

(assert (=> b!3063366 (= res!1257624 (isEmpty!19551 (tail!5019 Nil!35234)))))

(declare-fun b!3063367 () Bool)

(assert (=> b!3063367 (= e!1917969 (= (head!6793 Nil!35234) (c!508661 (regOne!19498 r!17423))))))

(declare-fun b!3063368 () Bool)

(assert (=> b!3063368 (= e!1917967 (not lt!1050257))))

(declare-fun b!3063369 () Bool)

(declare-fun res!1257625 () Bool)

(assert (=> b!3063369 (=> (not res!1257625) (not e!1917969))))

(assert (=> b!3063369 (= res!1257625 (not call!212047))))

(declare-fun b!3063362 () Bool)

(assert (=> b!3063362 (= e!1917970 (matchR!4375 (derivativeStep!2734 (regOne!19498 r!17423) (head!6793 Nil!35234)) (tail!5019 Nil!35234)))))

(declare-fun d!855478 () Bool)

(assert (=> d!855478 e!1917971))

(declare-fun c!508696 () Bool)

(assert (=> d!855478 (= c!508696 ((_ is EmptyExpr!9493) (regOne!19498 r!17423)))))

(assert (=> d!855478 (= lt!1050257 e!1917970)))

(declare-fun c!508695 () Bool)

(assert (=> d!855478 (= c!508695 (isEmpty!19551 Nil!35234))))

(assert (=> d!855478 (validRegex!4226 (regOne!19498 r!17423))))

(assert (=> d!855478 (= (matchR!4375 (regOne!19498 r!17423) Nil!35234) lt!1050257)))

(declare-fun b!3063370 () Bool)

(assert (=> b!3063370 (= e!1917971 (= lt!1050257 call!212047))))

(declare-fun b!3063371 () Bool)

(declare-fun res!1257620 () Bool)

(assert (=> b!3063371 (=> res!1257620 e!1917968)))

(assert (=> b!3063371 (= res!1257620 (not (isEmpty!19551 (tail!5019 Nil!35234))))))

(assert (= (and d!855478 c!508695) b!3063361))

(assert (= (and d!855478 (not c!508695)) b!3063362))

(assert (= (and d!855478 c!508696) b!3063370))

(assert (= (and d!855478 (not c!508696)) b!3063363))

(assert (= (and b!3063363 c!508697) b!3063368))

(assert (= (and b!3063363 (not c!508697)) b!3063365))

(assert (= (and b!3063365 (not res!1257622)) b!3063358))

(assert (= (and b!3063358 res!1257621) b!3063369))

(assert (= (and b!3063369 res!1257625) b!3063366))

(assert (= (and b!3063366 res!1257624) b!3063367))

(assert (= (and b!3063358 (not res!1257626)) b!3063359))

(assert (= (and b!3063359 res!1257619) b!3063364))

(assert (= (and b!3063364 (not res!1257623)) b!3063371))

(assert (= (and b!3063371 (not res!1257620)) b!3063360))

(assert (= (or b!3063370 b!3063364 b!3063369) bm!212042))

(declare-fun m!3382593 () Bool)

(assert (=> bm!212042 m!3382593))

(declare-fun m!3382595 () Bool)

(assert (=> b!3063367 m!3382595))

(declare-fun m!3382597 () Bool)

(assert (=> b!3063371 m!3382597))

(assert (=> b!3063371 m!3382597))

(declare-fun m!3382599 () Bool)

(assert (=> b!3063371 m!3382599))

(assert (=> d!855478 m!3382593))

(assert (=> d!855478 m!3382495))

(assert (=> b!3063366 m!3382597))

(assert (=> b!3063366 m!3382597))

(assert (=> b!3063366 m!3382599))

(assert (=> b!3063362 m!3382595))

(assert (=> b!3063362 m!3382595))

(declare-fun m!3382601 () Bool)

(assert (=> b!3063362 m!3382601))

(assert (=> b!3063362 m!3382597))

(assert (=> b!3063362 m!3382601))

(assert (=> b!3063362 m!3382597))

(declare-fun m!3382603 () Bool)

(assert (=> b!3063362 m!3382603))

(assert (=> b!3063360 m!3382595))

(assert (=> b!3063361 m!3382517))

(assert (=> b!3063204 d!855478))

(declare-fun b!3063508 () Bool)

(assert (=> b!3063508 true))

(assert (=> b!3063508 true))

(declare-fun bs!532494 () Bool)

(declare-fun b!3063500 () Bool)

(assert (= bs!532494 (and b!3063500 b!3063508)))

(declare-fun lambda!113916 () Int)

(declare-fun lambda!113915 () Int)

(assert (=> bs!532494 (not (= lambda!113916 lambda!113915))))

(assert (=> b!3063500 true))

(assert (=> b!3063500 true))

(declare-fun b!3063498 () Bool)

(declare-fun c!508733 () Bool)

(assert (=> b!3063498 (= c!508733 ((_ is Union!9493) r!17423))))

(declare-fun e!1918055 () Bool)

(declare-fun e!1918060 () Bool)

(assert (=> b!3063498 (= e!1918055 e!1918060)))

(declare-fun b!3063499 () Bool)

(declare-fun e!1918056 () Bool)

(assert (=> b!3063499 (= e!1918060 e!1918056)))

(declare-fun res!1257689 () Bool)

(assert (=> b!3063499 (= res!1257689 (matchRSpec!1630 (regOne!19499 r!17423) s!11993))))

(assert (=> b!3063499 (=> res!1257689 e!1918056)))

(declare-fun e!1918059 () Bool)

(declare-fun call!212068 () Bool)

(assert (=> b!3063500 (= e!1918059 call!212068)))

(declare-fun b!3063501 () Bool)

(declare-fun e!1918058 () Bool)

(declare-fun call!212067 () Bool)

(assert (=> b!3063501 (= e!1918058 call!212067)))

(declare-fun bm!212062 () Bool)

(assert (=> bm!212062 (= call!212067 (isEmpty!19551 s!11993))))

(declare-fun b!3063502 () Bool)

(declare-fun e!1918054 () Bool)

(assert (=> b!3063502 (= e!1918058 e!1918054)))

(declare-fun res!1257691 () Bool)

(assert (=> b!3063502 (= res!1257691 (not ((_ is EmptyLang!9493) r!17423)))))

(assert (=> b!3063502 (=> (not res!1257691) (not e!1918054))))

(declare-fun d!855480 () Bool)

(declare-fun c!508730 () Bool)

(assert (=> d!855480 (= c!508730 ((_ is EmptyExpr!9493) r!17423))))

(assert (=> d!855480 (= (matchRSpec!1630 r!17423 s!11993) e!1918058)))

(declare-fun b!3063503 () Bool)

(declare-fun c!508732 () Bool)

(assert (=> b!3063503 (= c!508732 ((_ is ElementMatch!9493) r!17423))))

(assert (=> b!3063503 (= e!1918054 e!1918055)))

(declare-fun b!3063504 () Bool)

(assert (=> b!3063504 (= e!1918056 (matchRSpec!1630 (regTwo!19499 r!17423) s!11993))))

(declare-fun b!3063505 () Bool)

(assert (=> b!3063505 (= e!1918055 (= s!11993 (Cons!35234 (c!508661 r!17423) Nil!35234)))))

(declare-fun bm!212063 () Bool)

(declare-fun c!508731 () Bool)

(declare-fun Exists!1755 (Int) Bool)

(assert (=> bm!212063 (= call!212068 (Exists!1755 (ite c!508731 lambda!113915 lambda!113916)))))

(declare-fun b!3063506 () Bool)

(declare-fun res!1257690 () Bool)

(declare-fun e!1918057 () Bool)

(assert (=> b!3063506 (=> res!1257690 e!1918057)))

(assert (=> b!3063506 (= res!1257690 call!212067)))

(assert (=> b!3063506 (= e!1918059 e!1918057)))

(declare-fun b!3063507 () Bool)

(assert (=> b!3063507 (= e!1918060 e!1918059)))

(assert (=> b!3063507 (= c!508731 ((_ is Star!9493) r!17423))))

(assert (=> b!3063508 (= e!1918057 call!212068)))

(assert (= (and d!855480 c!508730) b!3063501))

(assert (= (and d!855480 (not c!508730)) b!3063502))

(assert (= (and b!3063502 res!1257691) b!3063503))

(assert (= (and b!3063503 c!508732) b!3063505))

(assert (= (and b!3063503 (not c!508732)) b!3063498))

(assert (= (and b!3063498 c!508733) b!3063499))

(assert (= (and b!3063498 (not c!508733)) b!3063507))

(assert (= (and b!3063499 (not res!1257689)) b!3063504))

(assert (= (and b!3063507 c!508731) b!3063506))

(assert (= (and b!3063507 (not c!508731)) b!3063500))

(assert (= (and b!3063506 (not res!1257690)) b!3063508))

(assert (= (or b!3063508 b!3063500) bm!212063))

(assert (= (or b!3063501 b!3063506) bm!212062))

(declare-fun m!3382647 () Bool)

(assert (=> b!3063499 m!3382647))

(assert (=> bm!212062 m!3382525))

(declare-fun m!3382649 () Bool)

(assert (=> b!3063504 m!3382649))

(declare-fun m!3382651 () Bool)

(assert (=> bm!212063 m!3382651))

(assert (=> b!3063199 d!855480))

(declare-fun b!3063513 () Bool)

(declare-fun res!1257699 () Bool)

(declare-fun e!1918062 () Bool)

(assert (=> b!3063513 (=> res!1257699 e!1918062)))

(declare-fun e!1918065 () Bool)

(assert (=> b!3063513 (= res!1257699 e!1918065)))

(declare-fun res!1257694 () Bool)

(assert (=> b!3063513 (=> (not res!1257694) (not e!1918065))))

(declare-fun lt!1050270 () Bool)

(assert (=> b!3063513 (= res!1257694 lt!1050270)))

(declare-fun b!3063514 () Bool)

(declare-fun e!1918061 () Bool)

(assert (=> b!3063514 (= e!1918062 e!1918061)))

(declare-fun res!1257692 () Bool)

(assert (=> b!3063514 (=> (not res!1257692) (not e!1918061))))

(assert (=> b!3063514 (= res!1257692 (not lt!1050270))))

(declare-fun b!3063515 () Bool)

(declare-fun e!1918064 () Bool)

(assert (=> b!3063515 (= e!1918064 (not (= (head!6793 s!11993) (c!508661 r!17423))))))

(declare-fun b!3063516 () Bool)

(declare-fun e!1918066 () Bool)

(assert (=> b!3063516 (= e!1918066 (nullable!3139 r!17423))))

(declare-fun b!3063518 () Bool)

(declare-fun e!1918067 () Bool)

(declare-fun e!1918063 () Bool)

(assert (=> b!3063518 (= e!1918067 e!1918063)))

(declare-fun c!508736 () Bool)

(assert (=> b!3063518 (= c!508736 ((_ is EmptyLang!9493) r!17423))))

(declare-fun b!3063519 () Bool)

(assert (=> b!3063519 (= e!1918061 e!1918064)))

(declare-fun res!1257696 () Bool)

(assert (=> b!3063519 (=> res!1257696 e!1918064)))

(declare-fun call!212069 () Bool)

(assert (=> b!3063519 (= res!1257696 call!212069)))

(declare-fun b!3063520 () Bool)

(declare-fun res!1257695 () Bool)

(assert (=> b!3063520 (=> res!1257695 e!1918062)))

(assert (=> b!3063520 (= res!1257695 (not ((_ is ElementMatch!9493) r!17423)))))

(assert (=> b!3063520 (= e!1918063 e!1918062)))

(declare-fun bm!212064 () Bool)

(assert (=> bm!212064 (= call!212069 (isEmpty!19551 s!11993))))

(declare-fun b!3063521 () Bool)

(declare-fun res!1257697 () Bool)

(assert (=> b!3063521 (=> (not res!1257697) (not e!1918065))))

(assert (=> b!3063521 (= res!1257697 (isEmpty!19551 (tail!5019 s!11993)))))

(declare-fun b!3063522 () Bool)

(assert (=> b!3063522 (= e!1918065 (= (head!6793 s!11993) (c!508661 r!17423)))))

(declare-fun b!3063523 () Bool)

(assert (=> b!3063523 (= e!1918063 (not lt!1050270))))

(declare-fun b!3063524 () Bool)

(declare-fun res!1257698 () Bool)

(assert (=> b!3063524 (=> (not res!1257698) (not e!1918065))))

(assert (=> b!3063524 (= res!1257698 (not call!212069))))

(declare-fun b!3063517 () Bool)

(assert (=> b!3063517 (= e!1918066 (matchR!4375 (derivativeStep!2734 r!17423 (head!6793 s!11993)) (tail!5019 s!11993)))))

(declare-fun d!855502 () Bool)

(assert (=> d!855502 e!1918067))

(declare-fun c!508735 () Bool)

(assert (=> d!855502 (= c!508735 ((_ is EmptyExpr!9493) r!17423))))

(assert (=> d!855502 (= lt!1050270 e!1918066)))

(declare-fun c!508734 () Bool)

(assert (=> d!855502 (= c!508734 (isEmpty!19551 s!11993))))

(assert (=> d!855502 (validRegex!4226 r!17423)))

(assert (=> d!855502 (= (matchR!4375 r!17423 s!11993) lt!1050270)))

(declare-fun b!3063525 () Bool)

(assert (=> b!3063525 (= e!1918067 (= lt!1050270 call!212069))))

(declare-fun b!3063526 () Bool)

(declare-fun res!1257693 () Bool)

(assert (=> b!3063526 (=> res!1257693 e!1918064)))

(assert (=> b!3063526 (= res!1257693 (not (isEmpty!19551 (tail!5019 s!11993))))))

(assert (= (and d!855502 c!508734) b!3063516))

(assert (= (and d!855502 (not c!508734)) b!3063517))

(assert (= (and d!855502 c!508735) b!3063525))

(assert (= (and d!855502 (not c!508735)) b!3063518))

(assert (= (and b!3063518 c!508736) b!3063523))

(assert (= (and b!3063518 (not c!508736)) b!3063520))

(assert (= (and b!3063520 (not res!1257695)) b!3063513))

(assert (= (and b!3063513 res!1257694) b!3063524))

(assert (= (and b!3063524 res!1257698) b!3063521))

(assert (= (and b!3063521 res!1257697) b!3063522))

(assert (= (and b!3063513 (not res!1257699)) b!3063514))

(assert (= (and b!3063514 res!1257692) b!3063519))

(assert (= (and b!3063519 (not res!1257696)) b!3063526))

(assert (= (and b!3063526 (not res!1257693)) b!3063515))

(assert (= (or b!3063525 b!3063519 b!3063524) bm!212064))

(assert (=> bm!212064 m!3382525))

(assert (=> b!3063522 m!3382557))

(assert (=> b!3063526 m!3382559))

(assert (=> b!3063526 m!3382559))

(assert (=> b!3063526 m!3382561))

(assert (=> d!855502 m!3382525))

(assert (=> d!855502 m!3382507))

(assert (=> b!3063521 m!3382559))

(assert (=> b!3063521 m!3382559))

(assert (=> b!3063521 m!3382561))

(assert (=> b!3063517 m!3382557))

(assert (=> b!3063517 m!3382557))

(declare-fun m!3382653 () Bool)

(assert (=> b!3063517 m!3382653))

(assert (=> b!3063517 m!3382559))

(assert (=> b!3063517 m!3382653))

(assert (=> b!3063517 m!3382559))

(declare-fun m!3382655 () Bool)

(assert (=> b!3063517 m!3382655))

(assert (=> b!3063515 m!3382557))

(declare-fun m!3382657 () Bool)

(assert (=> b!3063516 m!3382657))

(assert (=> b!3063199 d!855502))

(declare-fun d!855504 () Bool)

(assert (=> d!855504 (= (matchR!4375 r!17423 s!11993) (matchRSpec!1630 r!17423 s!11993))))

(declare-fun lt!1050273 () Unit!49425)

(declare-fun choose!18140 (Regex!9493 List!35358) Unit!49425)

(assert (=> d!855504 (= lt!1050273 (choose!18140 r!17423 s!11993))))

(assert (=> d!855504 (validRegex!4226 r!17423)))

(assert (=> d!855504 (= (mainMatchTheorem!1630 r!17423 s!11993) lt!1050273)))

(declare-fun bs!532495 () Bool)

(assert (= bs!532495 d!855504))

(assert (=> bs!532495 m!3382513))

(assert (=> bs!532495 m!3382511))

(declare-fun m!3382659 () Bool)

(assert (=> bs!532495 m!3382659))

(assert (=> bs!532495 m!3382507))

(assert (=> b!3063199 d!855504))

(declare-fun d!855506 () Bool)

(declare-fun nullableFct!898 (Regex!9493) Bool)

(assert (=> d!855506 (= (nullable!3139 (regOne!19498 r!17423)) (nullableFct!898 (regOne!19498 r!17423)))))

(declare-fun bs!532496 () Bool)

(assert (= bs!532496 d!855506))

(declare-fun m!3382661 () Bool)

(assert (=> bs!532496 m!3382661))

(assert (=> b!3063193 d!855506))

(declare-fun bm!212065 () Bool)

(declare-fun call!212072 () Bool)

(declare-fun call!212071 () Bool)

(assert (=> bm!212065 (= call!212072 call!212071)))

(declare-fun b!3063527 () Bool)

(declare-fun e!1918071 () Bool)

(declare-fun e!1918069 () Bool)

(assert (=> b!3063527 (= e!1918071 e!1918069)))

(declare-fun res!1257704 () Bool)

(assert (=> b!3063527 (= res!1257704 (not (nullable!3139 (reg!9822 (regTwo!19498 r!17423)))))))

(assert (=> b!3063527 (=> (not res!1257704) (not e!1918069))))

(declare-fun b!3063528 () Bool)

(declare-fun e!1918070 () Bool)

(declare-fun call!212070 () Bool)

(assert (=> b!3063528 (= e!1918070 call!212070)))

(declare-fun d!855508 () Bool)

(declare-fun res!1257702 () Bool)

(declare-fun e!1918074 () Bool)

(assert (=> d!855508 (=> res!1257702 e!1918074)))

(assert (=> d!855508 (= res!1257702 ((_ is ElementMatch!9493) (regTwo!19498 r!17423)))))

(assert (=> d!855508 (= (validRegex!4226 (regTwo!19498 r!17423)) e!1918074)))

(declare-fun b!3063529 () Bool)

(assert (=> b!3063529 (= e!1918069 call!212071)))

(declare-fun b!3063530 () Bool)

(declare-fun e!1918072 () Bool)

(assert (=> b!3063530 (= e!1918071 e!1918072)))

(declare-fun c!508737 () Bool)

(assert (=> b!3063530 (= c!508737 ((_ is Union!9493) (regTwo!19498 r!17423)))))

(declare-fun b!3063531 () Bool)

(declare-fun res!1257700 () Bool)

(declare-fun e!1918073 () Bool)

(assert (=> b!3063531 (=> res!1257700 e!1918073)))

(assert (=> b!3063531 (= res!1257700 (not ((_ is Concat!14814) (regTwo!19498 r!17423))))))

(assert (=> b!3063531 (= e!1918072 e!1918073)))

(declare-fun b!3063532 () Bool)

(assert (=> b!3063532 (= e!1918074 e!1918071)))

(declare-fun c!508738 () Bool)

(assert (=> b!3063532 (= c!508738 ((_ is Star!9493) (regTwo!19498 r!17423)))))

(declare-fun bm!212066 () Bool)

(assert (=> bm!212066 (= call!212070 (validRegex!4226 (ite c!508737 (regOne!19499 (regTwo!19498 r!17423)) (regTwo!19498 (regTwo!19498 r!17423)))))))

(declare-fun b!3063533 () Bool)

(declare-fun res!1257701 () Bool)

(declare-fun e!1918068 () Bool)

(assert (=> b!3063533 (=> (not res!1257701) (not e!1918068))))

(assert (=> b!3063533 (= res!1257701 call!212070)))

(assert (=> b!3063533 (= e!1918072 e!1918068)))

(declare-fun bm!212067 () Bool)

(assert (=> bm!212067 (= call!212071 (validRegex!4226 (ite c!508738 (reg!9822 (regTwo!19498 r!17423)) (ite c!508737 (regTwo!19499 (regTwo!19498 r!17423)) (regOne!19498 (regTwo!19498 r!17423))))))))

(declare-fun b!3063534 () Bool)

(assert (=> b!3063534 (= e!1918068 call!212072)))

(declare-fun b!3063535 () Bool)

(assert (=> b!3063535 (= e!1918073 e!1918070)))

(declare-fun res!1257703 () Bool)

(assert (=> b!3063535 (=> (not res!1257703) (not e!1918070))))

(assert (=> b!3063535 (= res!1257703 call!212072)))

(assert (= (and d!855508 (not res!1257702)) b!3063532))

(assert (= (and b!3063532 c!508738) b!3063527))

(assert (= (and b!3063532 (not c!508738)) b!3063530))

(assert (= (and b!3063527 res!1257704) b!3063529))

(assert (= (and b!3063530 c!508737) b!3063533))

(assert (= (and b!3063530 (not c!508737)) b!3063531))

(assert (= (and b!3063533 res!1257701) b!3063534))

(assert (= (and b!3063531 (not res!1257700)) b!3063535))

(assert (= (and b!3063535 res!1257703) b!3063528))

(assert (= (or b!3063533 b!3063528) bm!212066))

(assert (= (or b!3063534 b!3063535) bm!212065))

(assert (= (or b!3063529 bm!212065) bm!212067))

(declare-fun m!3382663 () Bool)

(assert (=> b!3063527 m!3382663))

(declare-fun m!3382665 () Bool)

(assert (=> bm!212066 m!3382665))

(declare-fun m!3382667 () Bool)

(assert (=> bm!212067 m!3382667))

(assert (=> b!3063203 d!855508))

(declare-fun d!855510 () Bool)

(assert (=> d!855510 (= (isEmptyLang!544 lt!1050228) ((_ is EmptyLang!9493) lt!1050228))))

(assert (=> b!3063197 d!855510))

(declare-fun b!3063586 () Bool)

(declare-fun e!1918116 () Regex!9493)

(assert (=> b!3063586 (= e!1918116 EmptyLang!9493)))

(declare-fun b!3063587 () Bool)

(declare-fun e!1918104 () Regex!9493)

(assert (=> b!3063587 (= e!1918104 (regTwo!19498 r!17423))))

(declare-fun b!3063588 () Bool)

(declare-fun e!1918108 () Regex!9493)

(declare-fun lt!1050289 () Regex!9493)

(declare-fun lt!1050291 () Regex!9493)

(assert (=> b!3063588 (= e!1918108 (Union!9493 lt!1050289 lt!1050291))))

(declare-fun bm!212082 () Bool)

(declare-fun lt!1050290 () Regex!9493)

(declare-fun call!212090 () Bool)

(declare-fun c!508764 () Bool)

(declare-fun lt!1050287 () Regex!9493)

(assert (=> bm!212082 (= call!212090 (isEmptyExpr!550 (ite c!508764 lt!1050287 lt!1050290)))))

(declare-fun b!3063589 () Bool)

(declare-fun e!1918113 () Regex!9493)

(declare-fun e!1918107 () Regex!9493)

(assert (=> b!3063589 (= e!1918113 e!1918107)))

(declare-fun call!212088 () Regex!9493)

(assert (=> b!3063589 (= lt!1050289 call!212088)))

(declare-fun call!212089 () Regex!9493)

(assert (=> b!3063589 (= lt!1050291 call!212089)))

(declare-fun c!508765 () Bool)

(declare-fun call!212087 () Bool)

(assert (=> b!3063589 (= c!508765 call!212087)))

(declare-fun b!3063590 () Bool)

(declare-fun e!1918115 () Regex!9493)

(assert (=> b!3063590 (= e!1918115 EmptyExpr!9493)))

(declare-fun b!3063591 () Bool)

(declare-fun e!1918114 () Regex!9493)

(assert (=> b!3063591 (= e!1918114 EmptyExpr!9493)))

(declare-fun b!3063592 () Bool)

(declare-fun c!508766 () Bool)

(declare-fun call!212091 () Bool)

(assert (=> b!3063592 (= c!508766 call!212091)))

(assert (=> b!3063592 (= e!1918107 e!1918108)))

(declare-fun b!3063593 () Bool)

(declare-fun e!1918111 () Regex!9493)

(assert (=> b!3063593 (= e!1918114 e!1918111)))

(assert (=> b!3063593 (= c!508764 ((_ is Star!9493) (regTwo!19498 r!17423)))))

(declare-fun b!3063594 () Bool)

(declare-fun e!1918103 () Regex!9493)

(assert (=> b!3063594 (= e!1918103 e!1918104)))

(declare-fun c!508763 () Bool)

(assert (=> b!3063594 (= c!508763 ((_ is ElementMatch!9493) (regTwo!19498 r!17423)))))

(declare-fun b!3063595 () Bool)

(declare-fun e!1918110 () Regex!9493)

(declare-fun lt!1050288 () Regex!9493)

(assert (=> b!3063595 (= e!1918110 (Concat!14814 lt!1050290 lt!1050288))))

(declare-fun b!3063596 () Bool)

(assert (=> b!3063596 (= e!1918113 e!1918116)))

(assert (=> b!3063596 (= lt!1050290 call!212089)))

(assert (=> b!3063596 (= lt!1050288 call!212088)))

(declare-fun res!1257711 () Bool)

(assert (=> b!3063596 (= res!1257711 call!212087)))

(declare-fun e!1918105 () Bool)

(assert (=> b!3063596 (=> res!1257711 e!1918105)))

(declare-fun c!508769 () Bool)

(assert (=> b!3063596 (= c!508769 e!1918105)))

(declare-fun bm!212083 () Bool)

(declare-fun call!212092 () Regex!9493)

(assert (=> bm!212083 (= call!212088 call!212092)))

(declare-fun b!3063597 () Bool)

(declare-fun e!1918106 () Regex!9493)

(assert (=> b!3063597 (= e!1918106 e!1918110)))

(declare-fun c!508771 () Bool)

(assert (=> b!3063597 (= c!508771 (isEmptyExpr!550 lt!1050288))))

(declare-fun b!3063598 () Bool)

(assert (=> b!3063598 (= e!1918106 lt!1050288)))

(declare-fun bm!212084 () Bool)

(declare-fun c!508770 () Bool)

(assert (=> bm!212084 (= call!212089 (simplify!448 (ite c!508770 (regTwo!19499 (regTwo!19498 r!17423)) (regOne!19498 (regTwo!19498 r!17423)))))))

(declare-fun bm!212085 () Bool)

(assert (=> bm!212085 (= call!212092 (simplify!448 (ite c!508764 (reg!9822 (regTwo!19498 r!17423)) (ite c!508770 (regOne!19499 (regTwo!19498 r!17423)) (regTwo!19498 (regTwo!19498 r!17423))))))))

(declare-fun b!3063599 () Bool)

(assert (=> b!3063599 (= e!1918103 EmptyLang!9493)))

(declare-fun b!3063600 () Bool)

(assert (=> b!3063600 (= e!1918108 lt!1050289)))

(declare-fun bm!212086 () Bool)

(declare-fun call!212093 () Bool)

(assert (=> bm!212086 (= call!212091 call!212093)))

(declare-fun b!3063601 () Bool)

(assert (=> b!3063601 (= c!508770 ((_ is Union!9493) (regTwo!19498 r!17423)))))

(assert (=> b!3063601 (= e!1918111 e!1918113)))

(declare-fun b!3063602 () Bool)

(declare-fun c!508768 () Bool)

(assert (=> b!3063602 (= c!508768 ((_ is EmptyExpr!9493) (regTwo!19498 r!17423)))))

(assert (=> b!3063602 (= e!1918104 e!1918114)))

(declare-fun b!3063603 () Bool)

(assert (=> b!3063603 (= e!1918105 call!212091)))

(declare-fun b!3063604 () Bool)

(declare-fun c!508767 () Bool)

(declare-fun e!1918112 () Bool)

(assert (=> b!3063604 (= c!508767 e!1918112)))

(declare-fun res!1257712 () Bool)

(assert (=> b!3063604 (=> res!1257712 e!1918112)))

(assert (=> b!3063604 (= res!1257712 call!212093)))

(assert (=> b!3063604 (= lt!1050287 call!212092)))

(assert (=> b!3063604 (= e!1918111 e!1918115)))

(declare-fun b!3063605 () Bool)

(assert (=> b!3063605 (= e!1918112 call!212090)))

(declare-fun b!3063606 () Bool)

(assert (=> b!3063606 (= e!1918107 lt!1050291)))

(declare-fun b!3063607 () Bool)

(assert (=> b!3063607 (= e!1918110 lt!1050290)))

(declare-fun b!3063608 () Bool)

(declare-fun e!1918109 () Bool)

(declare-fun lt!1050286 () Regex!9493)

(assert (=> b!3063608 (= e!1918109 (= (nullable!3139 lt!1050286) (nullable!3139 (regTwo!19498 r!17423))))))

(declare-fun b!3063609 () Bool)

(assert (=> b!3063609 (= e!1918115 (Star!9493 lt!1050287))))

(declare-fun bm!212087 () Bool)

(assert (=> bm!212087 (= call!212087 (isEmptyLang!544 (ite c!508770 lt!1050289 lt!1050290)))))

(declare-fun d!855512 () Bool)

(assert (=> d!855512 e!1918109))

(declare-fun res!1257713 () Bool)

(assert (=> d!855512 (=> (not res!1257713) (not e!1918109))))

(assert (=> d!855512 (= res!1257713 (validRegex!4226 lt!1050286))))

(assert (=> d!855512 (= lt!1050286 e!1918103)))

(declare-fun c!508761 () Bool)

(assert (=> d!855512 (= c!508761 ((_ is EmptyLang!9493) (regTwo!19498 r!17423)))))

(assert (=> d!855512 (validRegex!4226 (regTwo!19498 r!17423))))

(assert (=> d!855512 (= (simplify!448 (regTwo!19498 r!17423)) lt!1050286)))

(declare-fun bm!212088 () Bool)

(assert (=> bm!212088 (= call!212093 (isEmptyLang!544 (ite c!508764 lt!1050287 (ite c!508770 lt!1050291 lt!1050288))))))

(declare-fun b!3063610 () Bool)

(declare-fun c!508762 () Bool)

(assert (=> b!3063610 (= c!508762 call!212090)))

(assert (=> b!3063610 (= e!1918116 e!1918106)))

(assert (= (and d!855512 c!508761) b!3063599))

(assert (= (and d!855512 (not c!508761)) b!3063594))

(assert (= (and b!3063594 c!508763) b!3063587))

(assert (= (and b!3063594 (not c!508763)) b!3063602))

(assert (= (and b!3063602 c!508768) b!3063591))

(assert (= (and b!3063602 (not c!508768)) b!3063593))

(assert (= (and b!3063593 c!508764) b!3063604))

(assert (= (and b!3063593 (not c!508764)) b!3063601))

(assert (= (and b!3063604 (not res!1257712)) b!3063605))

(assert (= (and b!3063604 c!508767) b!3063590))

(assert (= (and b!3063604 (not c!508767)) b!3063609))

(assert (= (and b!3063601 c!508770) b!3063589))

(assert (= (and b!3063601 (not c!508770)) b!3063596))

(assert (= (and b!3063589 c!508765) b!3063606))

(assert (= (and b!3063589 (not c!508765)) b!3063592))

(assert (= (and b!3063592 c!508766) b!3063600))

(assert (= (and b!3063592 (not c!508766)) b!3063588))

(assert (= (and b!3063596 (not res!1257711)) b!3063603))

(assert (= (and b!3063596 c!508769) b!3063586))

(assert (= (and b!3063596 (not c!508769)) b!3063610))

(assert (= (and b!3063610 c!508762) b!3063598))

(assert (= (and b!3063610 (not c!508762)) b!3063597))

(assert (= (and b!3063597 c!508771) b!3063607))

(assert (= (and b!3063597 (not c!508771)) b!3063595))

(assert (= (or b!3063589 b!3063596) bm!212083))

(assert (= (or b!3063589 b!3063596) bm!212084))

(assert (= (or b!3063592 b!3063603) bm!212086))

(assert (= (or b!3063589 b!3063596) bm!212087))

(assert (= (or b!3063605 b!3063610) bm!212082))

(assert (= (or b!3063604 bm!212083) bm!212085))

(assert (= (or b!3063604 bm!212086) bm!212088))

(assert (= (and d!855512 res!1257713) b!3063608))

(declare-fun m!3382669 () Bool)

(assert (=> bm!212082 m!3382669))

(declare-fun m!3382671 () Bool)

(assert (=> bm!212087 m!3382671))

(declare-fun m!3382673 () Bool)

(assert (=> bm!212084 m!3382673))

(declare-fun m!3382675 () Bool)

(assert (=> d!855512 m!3382675))

(assert (=> d!855512 m!3382509))

(declare-fun m!3382677 () Bool)

(assert (=> bm!212088 m!3382677))

(declare-fun m!3382679 () Bool)

(assert (=> b!3063597 m!3382679))

(declare-fun m!3382681 () Bool)

(assert (=> b!3063608 m!3382681))

(assert (=> b!3063608 m!3382575))

(declare-fun m!3382683 () Bool)

(assert (=> bm!212085 m!3382683))

(assert (=> b!3063197 d!855512))

(declare-fun b!3063611 () Bool)

(declare-fun e!1918130 () Regex!9493)

(assert (=> b!3063611 (= e!1918130 EmptyLang!9493)))

(declare-fun b!3063612 () Bool)

(declare-fun e!1918118 () Regex!9493)

(assert (=> b!3063612 (= e!1918118 (regOne!19498 r!17423))))

(declare-fun b!3063613 () Bool)

(declare-fun e!1918122 () Regex!9493)

(declare-fun lt!1050295 () Regex!9493)

(declare-fun lt!1050297 () Regex!9493)

(assert (=> b!3063613 (= e!1918122 (Union!9493 lt!1050295 lt!1050297))))

(declare-fun call!212097 () Bool)

(declare-fun lt!1050293 () Regex!9493)

(declare-fun lt!1050296 () Regex!9493)

(declare-fun c!508775 () Bool)

(declare-fun bm!212089 () Bool)

(assert (=> bm!212089 (= call!212097 (isEmptyExpr!550 (ite c!508775 lt!1050293 lt!1050296)))))

(declare-fun b!3063614 () Bool)

(declare-fun e!1918127 () Regex!9493)

(declare-fun e!1918121 () Regex!9493)

(assert (=> b!3063614 (= e!1918127 e!1918121)))

(declare-fun call!212095 () Regex!9493)

(assert (=> b!3063614 (= lt!1050295 call!212095)))

(declare-fun call!212096 () Regex!9493)

(assert (=> b!3063614 (= lt!1050297 call!212096)))

(declare-fun c!508776 () Bool)

(declare-fun call!212094 () Bool)

(assert (=> b!3063614 (= c!508776 call!212094)))

(declare-fun b!3063615 () Bool)

(declare-fun e!1918129 () Regex!9493)

(assert (=> b!3063615 (= e!1918129 EmptyExpr!9493)))

(declare-fun b!3063616 () Bool)

(declare-fun e!1918128 () Regex!9493)

(assert (=> b!3063616 (= e!1918128 EmptyExpr!9493)))

(declare-fun b!3063617 () Bool)

(declare-fun c!508777 () Bool)

(declare-fun call!212098 () Bool)

(assert (=> b!3063617 (= c!508777 call!212098)))

(assert (=> b!3063617 (= e!1918121 e!1918122)))

(declare-fun b!3063618 () Bool)

(declare-fun e!1918125 () Regex!9493)

(assert (=> b!3063618 (= e!1918128 e!1918125)))

(assert (=> b!3063618 (= c!508775 ((_ is Star!9493) (regOne!19498 r!17423)))))

(declare-fun b!3063619 () Bool)

(declare-fun e!1918117 () Regex!9493)

(assert (=> b!3063619 (= e!1918117 e!1918118)))

(declare-fun c!508774 () Bool)

(assert (=> b!3063619 (= c!508774 ((_ is ElementMatch!9493) (regOne!19498 r!17423)))))

(declare-fun b!3063620 () Bool)

(declare-fun e!1918124 () Regex!9493)

(declare-fun lt!1050294 () Regex!9493)

(assert (=> b!3063620 (= e!1918124 (Concat!14814 lt!1050296 lt!1050294))))

(declare-fun b!3063621 () Bool)

(assert (=> b!3063621 (= e!1918127 e!1918130)))

(assert (=> b!3063621 (= lt!1050296 call!212096)))

(assert (=> b!3063621 (= lt!1050294 call!212095)))

(declare-fun res!1257714 () Bool)

(assert (=> b!3063621 (= res!1257714 call!212094)))

(declare-fun e!1918119 () Bool)

(assert (=> b!3063621 (=> res!1257714 e!1918119)))

(declare-fun c!508780 () Bool)

(assert (=> b!3063621 (= c!508780 e!1918119)))

(declare-fun bm!212090 () Bool)

(declare-fun call!212099 () Regex!9493)

(assert (=> bm!212090 (= call!212095 call!212099)))

(declare-fun b!3063622 () Bool)

(declare-fun e!1918120 () Regex!9493)

(assert (=> b!3063622 (= e!1918120 e!1918124)))

(declare-fun c!508782 () Bool)

(assert (=> b!3063622 (= c!508782 (isEmptyExpr!550 lt!1050294))))

(declare-fun b!3063623 () Bool)

(assert (=> b!3063623 (= e!1918120 lt!1050294)))

(declare-fun bm!212091 () Bool)

(declare-fun c!508781 () Bool)

(assert (=> bm!212091 (= call!212096 (simplify!448 (ite c!508781 (regTwo!19499 (regOne!19498 r!17423)) (regOne!19498 (regOne!19498 r!17423)))))))

(declare-fun bm!212092 () Bool)

(assert (=> bm!212092 (= call!212099 (simplify!448 (ite c!508775 (reg!9822 (regOne!19498 r!17423)) (ite c!508781 (regOne!19499 (regOne!19498 r!17423)) (regTwo!19498 (regOne!19498 r!17423))))))))

(declare-fun b!3063624 () Bool)

(assert (=> b!3063624 (= e!1918117 EmptyLang!9493)))

(declare-fun b!3063625 () Bool)

(assert (=> b!3063625 (= e!1918122 lt!1050295)))

(declare-fun bm!212093 () Bool)

(declare-fun call!212100 () Bool)

(assert (=> bm!212093 (= call!212098 call!212100)))

(declare-fun b!3063626 () Bool)

(assert (=> b!3063626 (= c!508781 ((_ is Union!9493) (regOne!19498 r!17423)))))

(assert (=> b!3063626 (= e!1918125 e!1918127)))

(declare-fun b!3063627 () Bool)

(declare-fun c!508779 () Bool)

(assert (=> b!3063627 (= c!508779 ((_ is EmptyExpr!9493) (regOne!19498 r!17423)))))

(assert (=> b!3063627 (= e!1918118 e!1918128)))

(declare-fun b!3063628 () Bool)

(assert (=> b!3063628 (= e!1918119 call!212098)))

(declare-fun b!3063629 () Bool)

(declare-fun c!508778 () Bool)

(declare-fun e!1918126 () Bool)

(assert (=> b!3063629 (= c!508778 e!1918126)))

(declare-fun res!1257715 () Bool)

(assert (=> b!3063629 (=> res!1257715 e!1918126)))

(assert (=> b!3063629 (= res!1257715 call!212100)))

(assert (=> b!3063629 (= lt!1050293 call!212099)))

(assert (=> b!3063629 (= e!1918125 e!1918129)))

(declare-fun b!3063630 () Bool)

(assert (=> b!3063630 (= e!1918126 call!212097)))

(declare-fun b!3063631 () Bool)

(assert (=> b!3063631 (= e!1918121 lt!1050297)))

(declare-fun b!3063632 () Bool)

(assert (=> b!3063632 (= e!1918124 lt!1050296)))

(declare-fun b!3063633 () Bool)

(declare-fun e!1918123 () Bool)

(declare-fun lt!1050292 () Regex!9493)

(assert (=> b!3063633 (= e!1918123 (= (nullable!3139 lt!1050292) (nullable!3139 (regOne!19498 r!17423))))))

(declare-fun b!3063634 () Bool)

(assert (=> b!3063634 (= e!1918129 (Star!9493 lt!1050293))))

(declare-fun bm!212094 () Bool)

(assert (=> bm!212094 (= call!212094 (isEmptyLang!544 (ite c!508781 lt!1050295 lt!1050296)))))

(declare-fun d!855514 () Bool)

(assert (=> d!855514 e!1918123))

(declare-fun res!1257716 () Bool)

(assert (=> d!855514 (=> (not res!1257716) (not e!1918123))))

(assert (=> d!855514 (= res!1257716 (validRegex!4226 lt!1050292))))

(assert (=> d!855514 (= lt!1050292 e!1918117)))

(declare-fun c!508772 () Bool)

(assert (=> d!855514 (= c!508772 ((_ is EmptyLang!9493) (regOne!19498 r!17423)))))

(assert (=> d!855514 (validRegex!4226 (regOne!19498 r!17423))))

(assert (=> d!855514 (= (simplify!448 (regOne!19498 r!17423)) lt!1050292)))

(declare-fun bm!212095 () Bool)

(assert (=> bm!212095 (= call!212100 (isEmptyLang!544 (ite c!508775 lt!1050293 (ite c!508781 lt!1050297 lt!1050294))))))

(declare-fun b!3063635 () Bool)

(declare-fun c!508773 () Bool)

(assert (=> b!3063635 (= c!508773 call!212097)))

(assert (=> b!3063635 (= e!1918130 e!1918120)))

(assert (= (and d!855514 c!508772) b!3063624))

(assert (= (and d!855514 (not c!508772)) b!3063619))

(assert (= (and b!3063619 c!508774) b!3063612))

(assert (= (and b!3063619 (not c!508774)) b!3063627))

(assert (= (and b!3063627 c!508779) b!3063616))

(assert (= (and b!3063627 (not c!508779)) b!3063618))

(assert (= (and b!3063618 c!508775) b!3063629))

(assert (= (and b!3063618 (not c!508775)) b!3063626))

(assert (= (and b!3063629 (not res!1257715)) b!3063630))

(assert (= (and b!3063629 c!508778) b!3063615))

(assert (= (and b!3063629 (not c!508778)) b!3063634))

(assert (= (and b!3063626 c!508781) b!3063614))

(assert (= (and b!3063626 (not c!508781)) b!3063621))

(assert (= (and b!3063614 c!508776) b!3063631))

(assert (= (and b!3063614 (not c!508776)) b!3063617))

(assert (= (and b!3063617 c!508777) b!3063625))

(assert (= (and b!3063617 (not c!508777)) b!3063613))

(assert (= (and b!3063621 (not res!1257714)) b!3063628))

(assert (= (and b!3063621 c!508780) b!3063611))

(assert (= (and b!3063621 (not c!508780)) b!3063635))

(assert (= (and b!3063635 c!508773) b!3063623))

(assert (= (and b!3063635 (not c!508773)) b!3063622))

(assert (= (and b!3063622 c!508782) b!3063632))

(assert (= (and b!3063622 (not c!508782)) b!3063620))

(assert (= (or b!3063614 b!3063621) bm!212090))

(assert (= (or b!3063614 b!3063621) bm!212091))

(assert (= (or b!3063617 b!3063628) bm!212093))

(assert (= (or b!3063614 b!3063621) bm!212094))

(assert (= (or b!3063630 b!3063635) bm!212089))

(assert (= (or b!3063629 bm!212090) bm!212092))

(assert (= (or b!3063629 bm!212093) bm!212095))

(assert (= (and d!855514 res!1257716) b!3063633))

(declare-fun m!3382685 () Bool)

(assert (=> bm!212089 m!3382685))

(declare-fun m!3382687 () Bool)

(assert (=> bm!212094 m!3382687))

(declare-fun m!3382689 () Bool)

(assert (=> bm!212091 m!3382689))

(declare-fun m!3382691 () Bool)

(assert (=> d!855514 m!3382691))

(assert (=> d!855514 m!3382495))

(declare-fun m!3382693 () Bool)

(assert (=> bm!212095 m!3382693))

(declare-fun m!3382695 () Bool)

(assert (=> b!3063622 m!3382695))

(declare-fun m!3382697 () Bool)

(assert (=> b!3063633 m!3382697))

(assert (=> b!3063633 m!3382517))

(declare-fun m!3382699 () Bool)

(assert (=> bm!212092 m!3382699))

(assert (=> b!3063197 d!855514))

(declare-fun d!855516 () Bool)

(assert (=> d!855516 (= (isEmptyExpr!550 lt!1050228) ((_ is EmptyExpr!9493) lt!1050228))))

(assert (=> b!3063196 d!855516))

(declare-fun bm!212096 () Bool)

(declare-fun call!212103 () Bool)

(declare-fun call!212102 () Bool)

(assert (=> bm!212096 (= call!212103 call!212102)))

(declare-fun b!3063636 () Bool)

(declare-fun e!1918134 () Bool)

(declare-fun e!1918132 () Bool)

(assert (=> b!3063636 (= e!1918134 e!1918132)))

(declare-fun res!1257721 () Bool)

(assert (=> b!3063636 (= res!1257721 (not (nullable!3139 (reg!9822 r!17423))))))

(assert (=> b!3063636 (=> (not res!1257721) (not e!1918132))))

(declare-fun b!3063637 () Bool)

(declare-fun e!1918133 () Bool)

(declare-fun call!212101 () Bool)

(assert (=> b!3063637 (= e!1918133 call!212101)))

(declare-fun d!855518 () Bool)

(declare-fun res!1257719 () Bool)

(declare-fun e!1918137 () Bool)

(assert (=> d!855518 (=> res!1257719 e!1918137)))

(assert (=> d!855518 (= res!1257719 ((_ is ElementMatch!9493) r!17423))))

(assert (=> d!855518 (= (validRegex!4226 r!17423) e!1918137)))

(declare-fun b!3063638 () Bool)

(assert (=> b!3063638 (= e!1918132 call!212102)))

(declare-fun b!3063639 () Bool)

(declare-fun e!1918135 () Bool)

(assert (=> b!3063639 (= e!1918134 e!1918135)))

(declare-fun c!508783 () Bool)

(assert (=> b!3063639 (= c!508783 ((_ is Union!9493) r!17423))))

(declare-fun b!3063640 () Bool)

(declare-fun res!1257717 () Bool)

(declare-fun e!1918136 () Bool)

(assert (=> b!3063640 (=> res!1257717 e!1918136)))

(assert (=> b!3063640 (= res!1257717 (not ((_ is Concat!14814) r!17423)))))

(assert (=> b!3063640 (= e!1918135 e!1918136)))

(declare-fun b!3063641 () Bool)

(assert (=> b!3063641 (= e!1918137 e!1918134)))

(declare-fun c!508784 () Bool)

(assert (=> b!3063641 (= c!508784 ((_ is Star!9493) r!17423))))

(declare-fun bm!212097 () Bool)

(assert (=> bm!212097 (= call!212101 (validRegex!4226 (ite c!508783 (regOne!19499 r!17423) (regTwo!19498 r!17423))))))

(declare-fun b!3063642 () Bool)

(declare-fun res!1257718 () Bool)

(declare-fun e!1918131 () Bool)

(assert (=> b!3063642 (=> (not res!1257718) (not e!1918131))))

(assert (=> b!3063642 (= res!1257718 call!212101)))

(assert (=> b!3063642 (= e!1918135 e!1918131)))

(declare-fun bm!212098 () Bool)

(assert (=> bm!212098 (= call!212102 (validRegex!4226 (ite c!508784 (reg!9822 r!17423) (ite c!508783 (regTwo!19499 r!17423) (regOne!19498 r!17423)))))))

(declare-fun b!3063643 () Bool)

(assert (=> b!3063643 (= e!1918131 call!212103)))

(declare-fun b!3063644 () Bool)

(assert (=> b!3063644 (= e!1918136 e!1918133)))

(declare-fun res!1257720 () Bool)

(assert (=> b!3063644 (=> (not res!1257720) (not e!1918133))))

(assert (=> b!3063644 (= res!1257720 call!212103)))

(assert (= (and d!855518 (not res!1257719)) b!3063641))

(assert (= (and b!3063641 c!508784) b!3063636))

(assert (= (and b!3063641 (not c!508784)) b!3063639))

(assert (= (and b!3063636 res!1257721) b!3063638))

(assert (= (and b!3063639 c!508783) b!3063642))

(assert (= (and b!3063639 (not c!508783)) b!3063640))

(assert (= (and b!3063642 res!1257718) b!3063643))

(assert (= (and b!3063640 (not res!1257717)) b!3063644))

(assert (= (and b!3063644 res!1257720) b!3063637))

(assert (= (or b!3063642 b!3063637) bm!212097))

(assert (= (or b!3063643 b!3063644) bm!212096))

(assert (= (or b!3063638 bm!212096) bm!212098))

(declare-fun m!3382701 () Bool)

(assert (=> b!3063636 m!3382701))

(declare-fun m!3382703 () Bool)

(assert (=> bm!212097 m!3382703))

(declare-fun m!3382705 () Bool)

(assert (=> bm!212098 m!3382705))

(assert (=> start!292320 d!855518))

(declare-fun d!855520 () Bool)

(assert (=> d!855520 (= (isEmpty!19551 s!11993) ((_ is Nil!35234) s!11993))))

(assert (=> b!3063191 d!855520))

(declare-fun b!3063649 () Bool)

(declare-fun e!1918140 () Bool)

(declare-fun tp!967668 () Bool)

(assert (=> b!3063649 (= e!1918140 (and tp_is_empty!16549 tp!967668))))

(assert (=> b!3063200 (= tp!967662 e!1918140)))

(assert (= (and b!3063200 ((_ is Cons!35234) (t!234423 s!11993))) b!3063649))

(declare-fun b!3063663 () Bool)

(declare-fun e!1918143 () Bool)

(declare-fun tp!967682 () Bool)

(declare-fun tp!967681 () Bool)

(assert (=> b!3063663 (= e!1918143 (and tp!967682 tp!967681))))

(assert (=> b!3063198 (= tp!967660 e!1918143)))

(declare-fun b!3063662 () Bool)

(declare-fun tp!967679 () Bool)

(assert (=> b!3063662 (= e!1918143 tp!967679)))

(declare-fun b!3063660 () Bool)

(assert (=> b!3063660 (= e!1918143 tp_is_empty!16549)))

(declare-fun b!3063661 () Bool)

(declare-fun tp!967683 () Bool)

(declare-fun tp!967680 () Bool)

(assert (=> b!3063661 (= e!1918143 (and tp!967683 tp!967680))))

(assert (= (and b!3063198 ((_ is ElementMatch!9493) (regOne!19498 r!17423))) b!3063660))

(assert (= (and b!3063198 ((_ is Concat!14814) (regOne!19498 r!17423))) b!3063661))

(assert (= (and b!3063198 ((_ is Star!9493) (regOne!19498 r!17423))) b!3063662))

(assert (= (and b!3063198 ((_ is Union!9493) (regOne!19498 r!17423))) b!3063663))

(declare-fun b!3063667 () Bool)

(declare-fun e!1918144 () Bool)

(declare-fun tp!967687 () Bool)

(declare-fun tp!967686 () Bool)

(assert (=> b!3063667 (= e!1918144 (and tp!967687 tp!967686))))

(assert (=> b!3063198 (= tp!967664 e!1918144)))

(declare-fun b!3063666 () Bool)

(declare-fun tp!967684 () Bool)

(assert (=> b!3063666 (= e!1918144 tp!967684)))

(declare-fun b!3063664 () Bool)

(assert (=> b!3063664 (= e!1918144 tp_is_empty!16549)))

(declare-fun b!3063665 () Bool)

(declare-fun tp!967688 () Bool)

(declare-fun tp!967685 () Bool)

(assert (=> b!3063665 (= e!1918144 (and tp!967688 tp!967685))))

(assert (= (and b!3063198 ((_ is ElementMatch!9493) (regTwo!19498 r!17423))) b!3063664))

(assert (= (and b!3063198 ((_ is Concat!14814) (regTwo!19498 r!17423))) b!3063665))

(assert (= (and b!3063198 ((_ is Star!9493) (regTwo!19498 r!17423))) b!3063666))

(assert (= (and b!3063198 ((_ is Union!9493) (regTwo!19498 r!17423))) b!3063667))

(declare-fun b!3063671 () Bool)

(declare-fun e!1918145 () Bool)

(declare-fun tp!967692 () Bool)

(declare-fun tp!967691 () Bool)

(assert (=> b!3063671 (= e!1918145 (and tp!967692 tp!967691))))

(assert (=> b!3063202 (= tp!967663 e!1918145)))

(declare-fun b!3063670 () Bool)

(declare-fun tp!967689 () Bool)

(assert (=> b!3063670 (= e!1918145 tp!967689)))

(declare-fun b!3063668 () Bool)

(assert (=> b!3063668 (= e!1918145 tp_is_empty!16549)))

(declare-fun b!3063669 () Bool)

(declare-fun tp!967693 () Bool)

(declare-fun tp!967690 () Bool)

(assert (=> b!3063669 (= e!1918145 (and tp!967693 tp!967690))))

(assert (= (and b!3063202 ((_ is ElementMatch!9493) (reg!9822 r!17423))) b!3063668))

(assert (= (and b!3063202 ((_ is Concat!14814) (reg!9822 r!17423))) b!3063669))

(assert (= (and b!3063202 ((_ is Star!9493) (reg!9822 r!17423))) b!3063670))

(assert (= (and b!3063202 ((_ is Union!9493) (reg!9822 r!17423))) b!3063671))

(declare-fun b!3063675 () Bool)

(declare-fun e!1918146 () Bool)

(declare-fun tp!967697 () Bool)

(declare-fun tp!967696 () Bool)

(assert (=> b!3063675 (= e!1918146 (and tp!967697 tp!967696))))

(assert (=> b!3063201 (= tp!967661 e!1918146)))

(declare-fun b!3063674 () Bool)

(declare-fun tp!967694 () Bool)

(assert (=> b!3063674 (= e!1918146 tp!967694)))

(declare-fun b!3063672 () Bool)

(assert (=> b!3063672 (= e!1918146 tp_is_empty!16549)))

(declare-fun b!3063673 () Bool)

(declare-fun tp!967698 () Bool)

(declare-fun tp!967695 () Bool)

(assert (=> b!3063673 (= e!1918146 (and tp!967698 tp!967695))))

(assert (= (and b!3063201 ((_ is ElementMatch!9493) (regOne!19499 r!17423))) b!3063672))

(assert (= (and b!3063201 ((_ is Concat!14814) (regOne!19499 r!17423))) b!3063673))

(assert (= (and b!3063201 ((_ is Star!9493) (regOne!19499 r!17423))) b!3063674))

(assert (= (and b!3063201 ((_ is Union!9493) (regOne!19499 r!17423))) b!3063675))

(declare-fun b!3063679 () Bool)

(declare-fun e!1918147 () Bool)

(declare-fun tp!967702 () Bool)

(declare-fun tp!967701 () Bool)

(assert (=> b!3063679 (= e!1918147 (and tp!967702 tp!967701))))

(assert (=> b!3063201 (= tp!967665 e!1918147)))

(declare-fun b!3063678 () Bool)

(declare-fun tp!967699 () Bool)

(assert (=> b!3063678 (= e!1918147 tp!967699)))

(declare-fun b!3063676 () Bool)

(assert (=> b!3063676 (= e!1918147 tp_is_empty!16549)))

(declare-fun b!3063677 () Bool)

(declare-fun tp!967703 () Bool)

(declare-fun tp!967700 () Bool)

(assert (=> b!3063677 (= e!1918147 (and tp!967703 tp!967700))))

(assert (= (and b!3063201 ((_ is ElementMatch!9493) (regTwo!19499 r!17423))) b!3063676))

(assert (= (and b!3063201 ((_ is Concat!14814) (regTwo!19499 r!17423))) b!3063677))

(assert (= (and b!3063201 ((_ is Star!9493) (regTwo!19499 r!17423))) b!3063678))

(assert (= (and b!3063201 ((_ is Union!9493) (regTwo!19499 r!17423))) b!3063679))

(check-sat (not b!3063677) (not b!3063256) (not b!3063671) (not b!3063665) (not d!855462) (not bm!212091) tp_is_empty!16549 (not bm!212094) (not d!855502) (not b!3063633) (not bm!212088) (not d!855478) (not bm!212084) (not b!3063339) (not b!3063678) (not b!3063329) (not b!3063224) (not b!3063667) (not b!3063319) (not bm!212034) (not b!3063522) (not b!3063324) (not bm!212066) (not d!855470) (not b!3063333) (not b!3063661) (not bm!212089) (not b!3063504) (not b!3063367) (not b!3063517) (not d!855466) (not b!3063649) (not b!3063663) (not b!3063526) (not b!3063257) (not bm!212033) (not b!3063361) (not bm!212062) (not b!3063371) (not b!3063258) (not bm!212098) (not b!3063338) (not b!3063675) (not bm!212095) (not b!3063253) (not b!3063499) (not bm!212085) (not b!3063622) (not b!3063366) (not bm!212064) (not d!855506) (not b!3063251) (not d!855468) (not d!855472) (not b!3063597) (not b!3063325) (not bm!212082) (not bm!212042) (not b!3063674) (not b!3063343) (not bm!212063) (not bm!212067) (not bm!212040) (not b!3063515) (not d!855512) (not bm!212087) (not b!3063673) (not b!3063332) (not b!3063608) (not b!3063527) (not bm!212039) (not bm!212092) (not d!855504) (not d!855460) (not b!3063662) (not b!3063521) (not b!3063669) (not b!3063679) (not b!3063320) (not b!3063516) (not b!3063666) (not b!3063670) (not b!3063636) (not b!3063360) (not d!855514) (not b!3063334) (not b!3063362) (not bm!212097) (not b!3063318) (not b!3063254))
(check-sat)
