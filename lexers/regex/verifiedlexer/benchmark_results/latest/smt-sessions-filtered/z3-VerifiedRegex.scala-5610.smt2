; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281434 () Bool)

(assert start!281434)

(declare-fun b!2882477 () Bool)

(declare-fun res!1194302 () Bool)

(declare-fun e!1823388 () Bool)

(assert (=> b!2882477 (=> (not res!1194302) (not e!1823388))))

(declare-datatypes ((C!17732 0))(
  ( (C!17733 (val!10900 Int)) )
))
(declare-datatypes ((Regex!8775 0))(
  ( (ElementMatch!8775 (c!468256 C!17732)) (Concat!14096 (regOne!18062 Regex!8775) (regTwo!18062 Regex!8775)) (EmptyExpr!8775) (Star!8775 (reg!9104 Regex!8775)) (EmptyLang!8775) (Union!8775 (regOne!18063 Regex!8775) (regTwo!18063 Regex!8775)) )
))
(declare-fun r!23079 () Regex!8775)

(get-info :version)

(assert (=> b!2882477 (= res!1194302 (and (not ((_ is EmptyExpr!8775) r!23079)) (not ((_ is EmptyLang!8775) r!23079)) (not ((_ is ElementMatch!8775) r!23079)) (not ((_ is Star!8775) r!23079)) ((_ is Union!8775) r!23079)))))

(declare-fun b!2882478 () Bool)

(declare-fun e!1823389 () Bool)

(declare-fun tp_is_empty!15137 () Bool)

(assert (=> b!2882478 (= e!1823389 tp_is_empty!15137)))

(declare-fun b!2882479 () Bool)

(assert (=> b!2882479 (= e!1823388 (not true))))

(declare-datatypes ((List!34576 0))(
  ( (Nil!34452) (Cons!34452 (h!39872 C!17732) (t!233619 List!34576)) )
))
(declare-datatypes ((Option!6448 0))(
  ( (None!6447) (Some!6447 (v!34573 List!34576)) )
))
(declare-fun lt!1020051 () Option!6448)

(declare-fun matchR!3761 (Regex!8775 List!34576) Bool)

(declare-fun get!10381 (Option!6448) List!34576)

(assert (=> b!2882479 (matchR!3761 (regTwo!18063 r!23079) (get!10381 lt!1020051))))

(declare-datatypes ((Unit!48027 0))(
  ( (Unit!48028) )
))
(declare-fun lt!1020052 () Unit!48027)

(declare-fun lemmaGetWitnessMatches!68 (Regex!8775) Unit!48027)

(assert (=> b!2882479 (= lt!1020052 (lemmaGetWitnessMatches!68 (regTwo!18063 r!23079)))))

(declare-fun getLanguageWitness!482 (Regex!8775) Option!6448)

(assert (=> b!2882479 (= lt!1020051 (getLanguageWitness!482 (regTwo!18063 r!23079)))))

(declare-fun b!2882481 () Bool)

(declare-fun res!1194304 () Bool)

(assert (=> b!2882481 (=> (not res!1194304) (not e!1823388))))

(assert (=> b!2882481 (= res!1194304 (not ((_ is Some!6447) (getLanguageWitness!482 (regOne!18063 r!23079)))))))

(declare-fun b!2882482 () Bool)

(declare-fun tp!924507 () Bool)

(declare-fun tp!924508 () Bool)

(assert (=> b!2882482 (= e!1823389 (and tp!924507 tp!924508))))

(declare-fun b!2882483 () Bool)

(declare-fun res!1194305 () Bool)

(assert (=> b!2882483 (=> (not res!1194305) (not e!1823388))))

(declare-fun isDefined!5012 (Option!6448) Bool)

(assert (=> b!2882483 (= res!1194305 (isDefined!5012 (getLanguageWitness!482 r!23079)))))

(declare-fun b!2882484 () Bool)

(declare-fun tp!924509 () Bool)

(assert (=> b!2882484 (= e!1823389 tp!924509)))

(declare-fun b!2882480 () Bool)

(declare-fun tp!924506 () Bool)

(declare-fun tp!924505 () Bool)

(assert (=> b!2882480 (= e!1823389 (and tp!924506 tp!924505))))

(declare-fun res!1194303 () Bool)

(assert (=> start!281434 (=> (not res!1194303) (not e!1823388))))

(declare-fun validRegex!3548 (Regex!8775) Bool)

(assert (=> start!281434 (= res!1194303 (validRegex!3548 r!23079))))

(assert (=> start!281434 e!1823388))

(assert (=> start!281434 e!1823389))

(assert (= (and start!281434 res!1194303) b!2882483))

(assert (= (and b!2882483 res!1194305) b!2882477))

(assert (= (and b!2882477 res!1194302) b!2882481))

(assert (= (and b!2882481 res!1194304) b!2882479))

(assert (= (and start!281434 ((_ is ElementMatch!8775) r!23079)) b!2882478))

(assert (= (and start!281434 ((_ is Concat!14096) r!23079)) b!2882480))

(assert (= (and start!281434 ((_ is Star!8775) r!23079)) b!2882484))

(assert (= (and start!281434 ((_ is Union!8775) r!23079)) b!2882482))

(declare-fun m!3299503 () Bool)

(assert (=> b!2882479 m!3299503))

(assert (=> b!2882479 m!3299503))

(declare-fun m!3299505 () Bool)

(assert (=> b!2882479 m!3299505))

(declare-fun m!3299507 () Bool)

(assert (=> b!2882479 m!3299507))

(declare-fun m!3299509 () Bool)

(assert (=> b!2882479 m!3299509))

(declare-fun m!3299511 () Bool)

(assert (=> b!2882481 m!3299511))

(declare-fun m!3299513 () Bool)

(assert (=> b!2882483 m!3299513))

(assert (=> b!2882483 m!3299513))

(declare-fun m!3299515 () Bool)

(assert (=> b!2882483 m!3299515))

(declare-fun m!3299517 () Bool)

(assert (=> start!281434 m!3299517))

(check-sat (not b!2882482) (not start!281434) (not b!2882481) (not b!2882484) (not b!2882479) tp_is_empty!15137 (not b!2882483) (not b!2882480))
(check-sat)
