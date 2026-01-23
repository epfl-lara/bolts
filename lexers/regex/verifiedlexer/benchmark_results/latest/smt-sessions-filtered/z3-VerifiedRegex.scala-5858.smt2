; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287432 () Bool)

(assert start!287432)

(declare-fun b!2971433 () Bool)

(declare-fun e!1869557 () Bool)

(assert (=> b!2971433 (= e!1869557 true)))

(declare-datatypes ((C!18720 0))(
  ( (C!18721 (val!11396 Int)) )
))
(declare-datatypes ((Regex!9267 0))(
  ( (ElementMatch!9267 (c!487575 C!18720)) (Concat!14588 (regOne!19046 Regex!9267) (regTwo!19046 Regex!9267)) (EmptyExpr!9267) (Star!9267 (reg!9596 Regex!9267)) (EmptyLang!9267) (Union!9267 (regOne!19047 Regex!9267) (regTwo!19047 Regex!9267)) )
))
(declare-fun lt!1036227 () Regex!9267)

(declare-datatypes ((List!35132 0))(
  ( (Nil!35008) (Cons!35008 (h!40428 C!18720) (t!234197 List!35132)) )
))
(declare-fun s!11993 () List!35132)

(declare-fun matchRSpec!1404 (Regex!9267 List!35132) Bool)

(assert (=> b!2971433 (matchRSpec!1404 lt!1036227 s!11993)))

(declare-datatypes ((Unit!48913 0))(
  ( (Unit!48914) )
))
(declare-fun lt!1036226 () Unit!48913)

(declare-fun mainMatchTheorem!1404 (Regex!9267 List!35132) Unit!48913)

(assert (=> b!2971433 (= lt!1036226 (mainMatchTheorem!1404 lt!1036227 s!11993))))

(declare-fun res!1225331 () Bool)

(declare-fun e!1869558 () Bool)

(assert (=> start!287432 (=> (not res!1225331) (not e!1869558))))

(declare-fun r!17423 () Regex!9267)

(declare-fun validRegex!4000 (Regex!9267) Bool)

(assert (=> start!287432 (= res!1225331 (validRegex!4000 r!17423))))

(assert (=> start!287432 e!1869558))

(declare-fun e!1869561 () Bool)

(assert (=> start!287432 e!1869561))

(declare-fun e!1869556 () Bool)

(assert (=> start!287432 e!1869556))

(declare-fun b!2971434 () Bool)

(declare-fun e!1869560 () Bool)

(declare-fun e!1869559 () Bool)

(assert (=> b!2971434 (= e!1869560 e!1869559)))

(declare-fun res!1225333 () Bool)

(assert (=> b!2971434 (=> res!1225333 e!1869559)))

(declare-fun lt!1036228 () Regex!9267)

(declare-fun isEmptyLang!381 (Regex!9267) Bool)

(assert (=> b!2971434 (= res!1225333 (isEmptyLang!381 lt!1036228))))

(declare-fun simplify!268 (Regex!9267) Regex!9267)

(assert (=> b!2971434 (= lt!1036228 (simplify!268 (reg!9596 r!17423)))))

(declare-fun b!2971435 () Bool)

(declare-fun tp!947448 () Bool)

(assert (=> b!2971435 (= e!1869561 tp!947448)))

(declare-fun b!2971436 () Bool)

(assert (=> b!2971436 (= e!1869558 (not e!1869560))))

(declare-fun res!1225334 () Bool)

(assert (=> b!2971436 (=> res!1225334 e!1869560)))

(declare-fun lt!1036229 () Bool)

(get-info :version)

(assert (=> b!2971436 (= res!1225334 (or lt!1036229 ((_ is Concat!14588) r!17423) ((_ is Union!9267) r!17423) (not ((_ is Star!9267) r!17423))))))

(assert (=> b!2971436 (= lt!1036229 (matchRSpec!1404 r!17423 s!11993))))

(declare-fun matchR!4149 (Regex!9267 List!35132) Bool)

(assert (=> b!2971436 (= lt!1036229 (matchR!4149 r!17423 s!11993))))

(declare-fun lt!1036230 () Unit!48913)

(assert (=> b!2971436 (= lt!1036230 (mainMatchTheorem!1404 r!17423 s!11993))))

(declare-fun b!2971437 () Bool)

(declare-fun tp_is_empty!16097 () Bool)

(declare-fun tp!947446 () Bool)

(assert (=> b!2971437 (= e!1869556 (and tp_is_empty!16097 tp!947446))))

(declare-fun b!2971438 () Bool)

(declare-fun tp!947444 () Bool)

(declare-fun tp!947445 () Bool)

(assert (=> b!2971438 (= e!1869561 (and tp!947444 tp!947445))))

(declare-fun b!2971439 () Bool)

(assert (=> b!2971439 (= e!1869559 e!1869557)))

(declare-fun res!1225332 () Bool)

(assert (=> b!2971439 (=> res!1225332 e!1869557)))

(assert (=> b!2971439 (= res!1225332 (not (matchR!4149 lt!1036227 s!11993)))))

(assert (=> b!2971439 (= lt!1036227 (Star!9267 lt!1036228))))

(declare-fun b!2971440 () Bool)

(declare-fun tp!947449 () Bool)

(declare-fun tp!947447 () Bool)

(assert (=> b!2971440 (= e!1869561 (and tp!947449 tp!947447))))

(declare-fun b!2971441 () Bool)

(assert (=> b!2971441 (= e!1869561 tp_is_empty!16097)))

(assert (= (and start!287432 res!1225331) b!2971436))

(assert (= (and b!2971436 (not res!1225334)) b!2971434))

(assert (= (and b!2971434 (not res!1225333)) b!2971439))

(assert (= (and b!2971439 (not res!1225332)) b!2971433))

(assert (= (and start!287432 ((_ is ElementMatch!9267) r!17423)) b!2971441))

(assert (= (and start!287432 ((_ is Concat!14588) r!17423)) b!2971438))

(assert (= (and start!287432 ((_ is Star!9267) r!17423)) b!2971435))

(assert (= (and start!287432 ((_ is Union!9267) r!17423)) b!2971440))

(assert (= (and start!287432 ((_ is Cons!35008) s!11993)) b!2971437))

(declare-fun m!3338315 () Bool)

(assert (=> b!2971434 m!3338315))

(declare-fun m!3338317 () Bool)

(assert (=> b!2971434 m!3338317))

(declare-fun m!3338319 () Bool)

(assert (=> b!2971436 m!3338319))

(declare-fun m!3338321 () Bool)

(assert (=> b!2971436 m!3338321))

(declare-fun m!3338323 () Bool)

(assert (=> b!2971436 m!3338323))

(declare-fun m!3338325 () Bool)

(assert (=> b!2971439 m!3338325))

(declare-fun m!3338327 () Bool)

(assert (=> b!2971433 m!3338327))

(declare-fun m!3338329 () Bool)

(assert (=> b!2971433 m!3338329))

(declare-fun m!3338331 () Bool)

(assert (=> start!287432 m!3338331))

(check-sat (not b!2971439) (not start!287432) (not b!2971438) (not b!2971434) (not b!2971440) tp_is_empty!16097 (not b!2971435) (not b!2971437) (not b!2971436) (not b!2971433))
(check-sat)
