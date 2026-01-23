; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45464 () Bool)

(assert start!45464)

(declare-fun b!473359 () Bool)

(declare-fun res!210192 () Bool)

(declare-fun e!289390 () Bool)

(assert (=> b!473359 (=> (not res!210192) (not e!289390))))

(declare-datatypes ((C!3184 0))(
  ( (C!3185 (val!1578 Int)) )
))
(declare-datatypes ((Regex!1131 0))(
  ( (ElementMatch!1131 (c!94932 C!3184)) (Concat!2031 (regOne!2774 Regex!1131) (regTwo!2774 Regex!1131)) (EmptyExpr!1131) (Star!1131 (reg!1460 Regex!1131)) (EmptyLang!1131) (Union!1131 (regOne!2775 Regex!1131) (regTwo!2775 Regex!1131)) )
))
(declare-fun r!20230 () Regex!1131)

(get-info :version)

(assert (=> b!473359 (= res!210192 (and (not ((_ is EmptyLang!1131) r!20230)) (not ((_ is EmptyExpr!1131) r!20230)) (not ((_ is ElementMatch!1131) r!20230)) (not ((_ is Union!1131) r!20230)) (not ((_ is Star!1131) r!20230))))))

(declare-fun b!473360 () Bool)

(declare-fun e!289388 () Bool)

(assert (=> b!473360 (= e!289388 (not true))))

(declare-fun c!12526 () C!3184)

(declare-fun lostCause!125 (Regex!1131) Bool)

(declare-fun derivativeStep!231 (Regex!1131 C!3184) Regex!1131)

(assert (=> b!473360 (lostCause!125 (derivativeStep!231 (regOne!2774 r!20230) c!12526))))

(declare-datatypes ((Unit!8340 0))(
  ( (Unit!8341) )
))
(declare-fun lt!210634 () Unit!8340)

(declare-fun lemmaDerivativeStepFixPointLostCause!8 (Regex!1131 C!3184) Unit!8340)

(assert (=> b!473360 (= lt!210634 (lemmaDerivativeStepFixPointLostCause!8 (regOne!2774 r!20230) c!12526))))

(declare-fun b!473361 () Bool)

(declare-fun e!289389 () Bool)

(declare-fun tp!131300 () Bool)

(declare-fun tp!131299 () Bool)

(assert (=> b!473361 (= e!289389 (and tp!131300 tp!131299))))

(declare-fun b!473362 () Bool)

(declare-fun res!210195 () Bool)

(assert (=> b!473362 (=> (not res!210195) (not e!289388))))

(declare-fun nullable!266 (Regex!1131) Bool)

(assert (=> b!473362 (= res!210195 (not (nullable!266 (regOne!2774 r!20230))))))

(declare-fun b!473363 () Bool)

(declare-fun res!210191 () Bool)

(assert (=> b!473363 (=> (not res!210191) (not e!289388))))

(declare-fun lt!210633 () Bool)

(assert (=> b!473363 (= res!210191 lt!210633)))

(declare-fun b!473364 () Bool)

(declare-fun tp_is_empty!2259 () Bool)

(assert (=> b!473364 (= e!289389 tp_is_empty!2259)))

(declare-fun b!473365 () Bool)

(declare-fun tp!131297 () Bool)

(assert (=> b!473365 (= e!289389 tp!131297)))

(declare-fun b!473366 () Bool)

(assert (=> b!473366 (= e!289390 e!289388)))

(declare-fun res!210190 () Bool)

(assert (=> b!473366 (=> (not res!210190) (not e!289388))))

(declare-fun e!289391 () Bool)

(assert (=> b!473366 (= res!210190 e!289391)))

(declare-fun res!210194 () Bool)

(assert (=> b!473366 (=> res!210194 e!289391)))

(assert (=> b!473366 (= res!210194 lt!210633)))

(assert (=> b!473366 (= lt!210633 (lostCause!125 (regOne!2774 r!20230)))))

(declare-fun b!473367 () Bool)

(declare-fun res!210193 () Bool)

(assert (=> b!473367 (=> (not res!210193) (not e!289388))))

(declare-fun validRegex!359 (Regex!1131) Bool)

(assert (=> b!473367 (= res!210193 (validRegex!359 (regOne!2774 r!20230)))))

(declare-fun b!473368 () Bool)

(declare-fun res!210188 () Bool)

(assert (=> b!473368 (=> (not res!210188) (not e!289390))))

(assert (=> b!473368 (= res!210188 (lostCause!125 r!20230))))

(declare-fun b!473369 () Bool)

(declare-fun tp!131301 () Bool)

(declare-fun tp!131298 () Bool)

(assert (=> b!473369 (= e!289389 (and tp!131301 tp!131298))))

(declare-fun b!473370 () Bool)

(assert (=> b!473370 (= e!289391 (lostCause!125 (regTwo!2774 r!20230)))))

(declare-fun res!210189 () Bool)

(assert (=> start!45464 (=> (not res!210189) (not e!289390))))

(assert (=> start!45464 (= res!210189 (validRegex!359 r!20230))))

(assert (=> start!45464 e!289390))

(assert (=> start!45464 e!289389))

(assert (=> start!45464 tp_is_empty!2259))

(assert (= (and start!45464 res!210189) b!473368))

(assert (= (and b!473368 res!210188) b!473359))

(assert (= (and b!473359 res!210192) b!473366))

(assert (= (and b!473366 (not res!210194)) b!473370))

(assert (= (and b!473366 res!210190) b!473362))

(assert (= (and b!473362 res!210195) b!473363))

(assert (= (and b!473363 res!210191) b!473367))

(assert (= (and b!473367 res!210193) b!473360))

(assert (= (and start!45464 ((_ is ElementMatch!1131) r!20230)) b!473364))

(assert (= (and start!45464 ((_ is Concat!2031) r!20230)) b!473361))

(assert (= (and start!45464 ((_ is Star!1131) r!20230)) b!473365))

(assert (= (and start!45464 ((_ is Union!1131) r!20230)) b!473369))

(declare-fun m!746605 () Bool)

(assert (=> b!473368 m!746605))

(declare-fun m!746607 () Bool)

(assert (=> b!473370 m!746607))

(declare-fun m!746609 () Bool)

(assert (=> b!473360 m!746609))

(assert (=> b!473360 m!746609))

(declare-fun m!746611 () Bool)

(assert (=> b!473360 m!746611))

(declare-fun m!746613 () Bool)

(assert (=> b!473360 m!746613))

(declare-fun m!746615 () Bool)

(assert (=> b!473362 m!746615))

(declare-fun m!746617 () Bool)

(assert (=> start!45464 m!746617))

(declare-fun m!746619 () Bool)

(assert (=> b!473367 m!746619))

(declare-fun m!746621 () Bool)

(assert (=> b!473366 m!746621))

(check-sat (not b!473366) (not b!473370) (not b!473365) (not start!45464) (not b!473361) tp_is_empty!2259 (not b!473360) (not b!473368) (not b!473369) (not b!473362) (not b!473367))
(check-sat)
