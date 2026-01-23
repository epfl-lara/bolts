; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281458 () Bool)

(assert start!281458)

(declare-fun b!2882794 () Bool)

(declare-fun res!1194476 () Bool)

(declare-fun e!1823484 () Bool)

(assert (=> b!2882794 (=> (not res!1194476) (not e!1823484))))

(declare-datatypes ((C!17756 0))(
  ( (C!17757 (val!10912 Int)) )
))
(declare-datatypes ((Regex!8787 0))(
  ( (ElementMatch!8787 (c!468268 C!17756)) (Concat!14108 (regOne!18086 Regex!8787) (regTwo!18086 Regex!8787)) (EmptyExpr!8787) (Star!8787 (reg!9116 Regex!8787)) (EmptyLang!8787) (Union!8787 (regOne!18087 Regex!8787) (regTwo!18087 Regex!8787)) )
))
(declare-fun r!23079 () Regex!8787)

(declare-datatypes ((List!34588 0))(
  ( (Nil!34464) (Cons!34464 (h!39884 C!17756) (t!233631 List!34588)) )
))
(declare-datatypes ((Option!6460 0))(
  ( (None!6459) (Some!6459 (v!34585 List!34588)) )
))
(declare-fun isDefined!5024 (Option!6460) Bool)

(declare-fun getLanguageWitness!494 (Regex!8787) Option!6460)

(assert (=> b!2882794 (= res!1194476 (isDefined!5024 (getLanguageWitness!494 r!23079)))))

(declare-fun b!2882795 () Bool)

(declare-fun e!1823485 () Bool)

(declare-fun tp!924687 () Bool)

(declare-fun tp!924688 () Bool)

(assert (=> b!2882795 (= e!1823485 (and tp!924687 tp!924688))))

(declare-fun b!2882797 () Bool)

(declare-fun tp!924685 () Bool)

(assert (=> b!2882797 (= e!1823485 tp!924685)))

(declare-fun b!2882798 () Bool)

(declare-fun res!1194475 () Bool)

(assert (=> b!2882798 (=> (not res!1194475) (not e!1823484))))

(get-info :version)

(assert (=> b!2882798 (= res!1194475 (and (not ((_ is EmptyExpr!8787) r!23079)) (not ((_ is EmptyLang!8787) r!23079)) (not ((_ is ElementMatch!8787) r!23079)) (not ((_ is Star!8787) r!23079)) (not ((_ is Union!8787) r!23079))))))

(declare-fun b!2882799 () Bool)

(declare-fun res!1194477 () Bool)

(assert (=> b!2882799 (=> (not res!1194477) (not e!1823484))))

(assert (=> b!2882799 (= res!1194477 ((_ is Some!6459) (getLanguageWitness!494 (regTwo!18086 r!23079))))))

(declare-fun b!2882800 () Bool)

(declare-fun tp!924686 () Bool)

(declare-fun tp!924689 () Bool)

(assert (=> b!2882800 (= e!1823485 (and tp!924686 tp!924689))))

(declare-fun b!2882801 () Bool)

(declare-fun res!1194478 () Bool)

(assert (=> b!2882801 (=> (not res!1194478) (not e!1823484))))

(assert (=> b!2882801 (= res!1194478 ((_ is Some!6459) (getLanguageWitness!494 (regOne!18086 r!23079))))))

(declare-fun b!2882802 () Bool)

(declare-fun tp_is_empty!15161 () Bool)

(assert (=> b!2882802 (= e!1823485 tp_is_empty!15161)))

(declare-fun res!1194479 () Bool)

(assert (=> start!281458 (=> (not res!1194479) (not e!1823484))))

(declare-fun validRegex!3560 (Regex!8787) Bool)

(assert (=> start!281458 (= res!1194479 (validRegex!3560 r!23079))))

(assert (=> start!281458 e!1823484))

(assert (=> start!281458 e!1823485))

(declare-fun b!2882796 () Bool)

(assert (=> b!2882796 (= e!1823484 false)))

(assert (= (and start!281458 res!1194479) b!2882794))

(assert (= (and b!2882794 res!1194476) b!2882798))

(assert (= (and b!2882798 res!1194475) b!2882801))

(assert (= (and b!2882801 res!1194478) b!2882799))

(assert (= (and b!2882799 res!1194477) b!2882796))

(assert (= (and start!281458 ((_ is ElementMatch!8787) r!23079)) b!2882802))

(assert (= (and start!281458 ((_ is Concat!14108) r!23079)) b!2882795))

(assert (= (and start!281458 ((_ is Star!8787) r!23079)) b!2882797))

(assert (= (and start!281458 ((_ is Union!8787) r!23079)) b!2882800))

(declare-fun m!3299725 () Bool)

(assert (=> b!2882794 m!3299725))

(assert (=> b!2882794 m!3299725))

(declare-fun m!3299727 () Bool)

(assert (=> b!2882794 m!3299727))

(declare-fun m!3299729 () Bool)

(assert (=> b!2882799 m!3299729))

(declare-fun m!3299731 () Bool)

(assert (=> b!2882801 m!3299731))

(declare-fun m!3299733 () Bool)

(assert (=> start!281458 m!3299733))

(check-sat tp_is_empty!15161 (not b!2882799) (not start!281458) (not b!2882797) (not b!2882794) (not b!2882795) (not b!2882800) (not b!2882801))
(check-sat)
