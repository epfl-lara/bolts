; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281438 () Bool)

(assert start!281438)

(declare-fun b!2882525 () Bool)

(declare-fun e!1823400 () Bool)

(declare-fun tp!924536 () Bool)

(declare-fun tp!924539 () Bool)

(assert (=> b!2882525 (= e!1823400 (and tp!924536 tp!924539))))

(declare-fun b!2882526 () Bool)

(declare-fun res!1194326 () Bool)

(declare-fun e!1823401 () Bool)

(assert (=> b!2882526 (=> (not res!1194326) (not e!1823401))))

(declare-datatypes ((C!17736 0))(
  ( (C!17737 (val!10902 Int)) )
))
(declare-datatypes ((Regex!8777 0))(
  ( (ElementMatch!8777 (c!468258 C!17736)) (Concat!14098 (regOne!18066 Regex!8777) (regTwo!18066 Regex!8777)) (EmptyExpr!8777) (Star!8777 (reg!9106 Regex!8777)) (EmptyLang!8777) (Union!8777 (regOne!18067 Regex!8777) (regTwo!18067 Regex!8777)) )
))
(declare-fun r!23079 () Regex!8777)

(get-info :version)

(declare-datatypes ((List!34578 0))(
  ( (Nil!34454) (Cons!34454 (h!39874 C!17736) (t!233621 List!34578)) )
))
(declare-datatypes ((Option!6450 0))(
  ( (None!6449) (Some!6449 (v!34575 List!34578)) )
))
(declare-fun getLanguageWitness!484 (Regex!8777) Option!6450)

(assert (=> b!2882526 (= res!1194326 (not ((_ is Some!6449) (getLanguageWitness!484 (regOne!18067 r!23079)))))))

(declare-fun b!2882527 () Bool)

(declare-fun res!1194328 () Bool)

(assert (=> b!2882527 (=> (not res!1194328) (not e!1823401))))

(declare-fun isDefined!5014 (Option!6450) Bool)

(assert (=> b!2882527 (= res!1194328 (isDefined!5014 (getLanguageWitness!484 r!23079)))))

(declare-fun b!2882528 () Bool)

(declare-fun res!1194327 () Bool)

(assert (=> b!2882528 (=> (not res!1194327) (not e!1823401))))

(assert (=> b!2882528 (= res!1194327 (and (not ((_ is EmptyExpr!8777) r!23079)) (not ((_ is EmptyLang!8777) r!23079)) (not ((_ is ElementMatch!8777) r!23079)) (not ((_ is Star!8777) r!23079)) ((_ is Union!8777) r!23079)))))

(declare-fun b!2882529 () Bool)

(assert (=> b!2882529 (= e!1823401 (not true))))

(declare-fun lt!1020064 () Option!6450)

(declare-fun matchR!3763 (Regex!8777 List!34578) Bool)

(declare-fun get!10384 (Option!6450) List!34578)

(assert (=> b!2882529 (matchR!3763 (regTwo!18067 r!23079) (get!10384 lt!1020064))))

(declare-datatypes ((Unit!48031 0))(
  ( (Unit!48032) )
))
(declare-fun lt!1020063 () Unit!48031)

(declare-fun lemmaGetWitnessMatches!70 (Regex!8777) Unit!48031)

(assert (=> b!2882529 (= lt!1020063 (lemmaGetWitnessMatches!70 (regTwo!18067 r!23079)))))

(assert (=> b!2882529 (= lt!1020064 (getLanguageWitness!484 (regTwo!18067 r!23079)))))

(declare-fun res!1194329 () Bool)

(assert (=> start!281438 (=> (not res!1194329) (not e!1823401))))

(declare-fun validRegex!3550 (Regex!8777) Bool)

(assert (=> start!281438 (= res!1194329 (validRegex!3550 r!23079))))

(assert (=> start!281438 e!1823401))

(assert (=> start!281438 e!1823400))

(declare-fun b!2882530 () Bool)

(declare-fun tp_is_empty!15141 () Bool)

(assert (=> b!2882530 (= e!1823400 tp_is_empty!15141)))

(declare-fun b!2882531 () Bool)

(declare-fun tp!924537 () Bool)

(assert (=> b!2882531 (= e!1823400 tp!924537)))

(declare-fun b!2882532 () Bool)

(declare-fun tp!924535 () Bool)

(declare-fun tp!924538 () Bool)

(assert (=> b!2882532 (= e!1823400 (and tp!924535 tp!924538))))

(assert (= (and start!281438 res!1194329) b!2882527))

(assert (= (and b!2882527 res!1194328) b!2882528))

(assert (= (and b!2882528 res!1194327) b!2882526))

(assert (= (and b!2882526 res!1194326) b!2882529))

(assert (= (and start!281438 ((_ is ElementMatch!8777) r!23079)) b!2882530))

(assert (= (and start!281438 ((_ is Concat!14098) r!23079)) b!2882532))

(assert (= (and start!281438 ((_ is Star!8777) r!23079)) b!2882531))

(assert (= (and start!281438 ((_ is Union!8777) r!23079)) b!2882525))

(declare-fun m!3299535 () Bool)

(assert (=> b!2882526 m!3299535))

(declare-fun m!3299537 () Bool)

(assert (=> b!2882527 m!3299537))

(assert (=> b!2882527 m!3299537))

(declare-fun m!3299539 () Bool)

(assert (=> b!2882527 m!3299539))

(declare-fun m!3299541 () Bool)

(assert (=> b!2882529 m!3299541))

(assert (=> b!2882529 m!3299541))

(declare-fun m!3299543 () Bool)

(assert (=> b!2882529 m!3299543))

(declare-fun m!3299545 () Bool)

(assert (=> b!2882529 m!3299545))

(declare-fun m!3299547 () Bool)

(assert (=> b!2882529 m!3299547))

(declare-fun m!3299549 () Bool)

(assert (=> start!281438 m!3299549))

(check-sat (not b!2882532) tp_is_empty!15141 (not b!2882529) (not b!2882527) (not b!2882526) (not start!281438) (not b!2882531) (not b!2882525))
(check-sat)
