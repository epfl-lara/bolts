; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45468 () Bool)

(assert start!45468)

(declare-fun b!473431 () Bool)

(declare-fun res!210236 () Bool)

(declare-fun e!289412 () Bool)

(assert (=> b!473431 (=> (not res!210236) (not e!289412))))

(declare-datatypes ((C!3188 0))(
  ( (C!3189 (val!1580 Int)) )
))
(declare-datatypes ((Regex!1133 0))(
  ( (ElementMatch!1133 (c!94934 C!3188)) (Concat!2033 (regOne!2778 Regex!1133) (regTwo!2778 Regex!1133)) (EmptyExpr!1133) (Star!1133 (reg!1462 Regex!1133)) (EmptyLang!1133) (Union!1133 (regOne!2779 Regex!1133) (regTwo!2779 Regex!1133)) )
))
(declare-fun r!20230 () Regex!1133)

(get-info :version)

(assert (=> b!473431 (= res!210236 (and (not ((_ is EmptyLang!1133) r!20230)) (not ((_ is EmptyExpr!1133) r!20230)) (not ((_ is ElementMatch!1133) r!20230)) (not ((_ is Union!1133) r!20230)) (not ((_ is Star!1133) r!20230))))))

(declare-fun b!473432 () Bool)

(declare-fun res!210241 () Bool)

(declare-fun e!289415 () Bool)

(assert (=> b!473432 (=> (not res!210241) (not e!289415))))

(declare-fun nullable!268 (Regex!1133) Bool)

(assert (=> b!473432 (= res!210241 (not (nullable!268 (regOne!2778 r!20230))))))

(declare-fun b!473433 () Bool)

(declare-fun e!289414 () Bool)

(declare-fun tp!131330 () Bool)

(assert (=> b!473433 (= e!289414 tp!131330)))

(declare-fun b!473434 () Bool)

(declare-fun tp!131329 () Bool)

(declare-fun tp!131328 () Bool)

(assert (=> b!473434 (= e!289414 (and tp!131329 tp!131328))))

(declare-fun b!473435 () Bool)

(assert (=> b!473435 (= e!289412 e!289415)))

(declare-fun res!210242 () Bool)

(assert (=> b!473435 (=> (not res!210242) (not e!289415))))

(declare-fun e!289413 () Bool)

(assert (=> b!473435 (= res!210242 e!289413)))

(declare-fun res!210243 () Bool)

(assert (=> b!473435 (=> res!210243 e!289413)))

(declare-fun lt!210645 () Bool)

(assert (=> b!473435 (= res!210243 lt!210645)))

(declare-fun lostCause!127 (Regex!1133) Bool)

(assert (=> b!473435 (= lt!210645 (lostCause!127 (regOne!2778 r!20230)))))

(declare-fun res!210239 () Bool)

(assert (=> start!45468 (=> (not res!210239) (not e!289412))))

(declare-fun validRegex!361 (Regex!1133) Bool)

(assert (=> start!45468 (= res!210239 (validRegex!361 r!20230))))

(assert (=> start!45468 e!289412))

(assert (=> start!45468 e!289414))

(declare-fun b!473436 () Bool)

(declare-fun res!210237 () Bool)

(assert (=> b!473436 (=> (not res!210237) (not e!289415))))

(assert (=> b!473436 (= res!210237 (validRegex!361 (regTwo!2778 r!20230)))))

(declare-fun b!473437 () Bool)

(assert (=> b!473437 (= e!289415 false)))

(declare-fun lt!210646 () Bool)

(assert (=> b!473437 (= lt!210646 (lostCause!127 (regTwo!2778 r!20230)))))

(declare-fun b!473438 () Bool)

(declare-fun res!210238 () Bool)

(assert (=> b!473438 (=> (not res!210238) (not e!289415))))

(assert (=> b!473438 (= res!210238 (not lt!210645))))

(declare-fun b!473439 () Bool)

(assert (=> b!473439 (= e!289413 (lostCause!127 (regTwo!2778 r!20230)))))

(declare-fun b!473440 () Bool)

(declare-fun res!210240 () Bool)

(assert (=> b!473440 (=> (not res!210240) (not e!289412))))

(assert (=> b!473440 (= res!210240 (lostCause!127 r!20230))))

(declare-fun b!473441 () Bool)

(declare-fun tp!131327 () Bool)

(declare-fun tp!131331 () Bool)

(assert (=> b!473441 (= e!289414 (and tp!131327 tp!131331))))

(declare-fun b!473442 () Bool)

(declare-fun tp_is_empty!2263 () Bool)

(assert (=> b!473442 (= e!289414 tp_is_empty!2263)))

(assert (= (and start!45468 res!210239) b!473440))

(assert (= (and b!473440 res!210240) b!473431))

(assert (= (and b!473431 res!210236) b!473435))

(assert (= (and b!473435 (not res!210243)) b!473439))

(assert (= (and b!473435 res!210242) b!473432))

(assert (= (and b!473432 res!210241) b!473438))

(assert (= (and b!473438 res!210238) b!473436))

(assert (= (and b!473436 res!210237) b!473437))

(assert (= (and start!45468 ((_ is ElementMatch!1133) r!20230)) b!473442))

(assert (= (and start!45468 ((_ is Concat!2033) r!20230)) b!473434))

(assert (= (and start!45468 ((_ is Star!1133) r!20230)) b!473433))

(assert (= (and start!45468 ((_ is Union!1133) r!20230)) b!473441))

(declare-fun m!746635 () Bool)

(assert (=> b!473435 m!746635))

(declare-fun m!746637 () Bool)

(assert (=> b!473432 m!746637))

(declare-fun m!746639 () Bool)

(assert (=> b!473440 m!746639))

(declare-fun m!746641 () Bool)

(assert (=> b!473436 m!746641))

(declare-fun m!746643 () Bool)

(assert (=> start!45468 m!746643))

(declare-fun m!746645 () Bool)

(assert (=> b!473437 m!746645))

(assert (=> b!473439 m!746645))

(check-sat (not b!473440) (not start!45468) (not b!473433) tp_is_empty!2263 (not b!473439) (not b!473432) (not b!473436) (not b!473435) (not b!473434) (not b!473441) (not b!473437))
(check-sat)
