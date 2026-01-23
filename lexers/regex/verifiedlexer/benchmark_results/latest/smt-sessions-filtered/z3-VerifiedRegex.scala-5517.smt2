; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278070 () Bool)

(assert start!278070)

(declare-fun b!2856786 () Bool)

(assert (=> b!2856786 true))

(assert (=> b!2856786 true))

(declare-fun b!2856776 () Bool)

(declare-fun e!1809228 () Bool)

(declare-fun tp_is_empty!14915 () Bool)

(assert (=> b!2856776 (= e!1809228 tp_is_empty!14915)))

(declare-fun b!2856777 () Bool)

(declare-fun res!1186760 () Bool)

(declare-fun e!1809226 () Bool)

(assert (=> b!2856777 (=> res!1186760 e!1809226)))

(declare-datatypes ((C!17360 0))(
  ( (C!17361 (val!10714 Int)) )
))
(declare-datatypes ((List!34186 0))(
  ( (Nil!34062) (Cons!34062 (h!39482 C!17360) (t!233217 List!34186)) )
))
(declare-fun prefix!1470 () List!34186)

(declare-fun lt!1014085 () List!34186)

(declare-fun isPrefix!2670 (List!34186 List!34186) Bool)

(assert (=> b!2856777 (= res!1186760 (not (isPrefix!2670 (t!233217 prefix!1470) lt!1014085)))))

(declare-fun b!2856778 () Bool)

(declare-fun e!1809225 () Bool)

(assert (=> b!2856778 (= e!1809225 true)))

(declare-fun lt!1014088 () Bool)

(declare-fun lt!1014086 () List!34186)

(assert (=> b!2856778 (= lt!1014088 (isPrefix!2670 prefix!1470 lt!1014086))))

(declare-fun b!2856779 () Bool)

(declare-fun e!1809224 () Bool)

(declare-fun tp!919430 () Bool)

(assert (=> b!2856779 (= e!1809224 (and tp_is_empty!14915 tp!919430))))

(declare-fun b!2856780 () Bool)

(declare-fun res!1186758 () Bool)

(declare-fun e!1809227 () Bool)

(assert (=> b!2856780 (=> (not res!1186758) (not e!1809227))))

(get-info :version)

(assert (=> b!2856780 (= res!1186758 (not ((_ is Nil!34062) prefix!1470)))))

(declare-fun b!2856781 () Bool)

(assert (=> b!2856781 (= e!1809226 e!1809225)))

(declare-fun res!1186759 () Bool)

(assert (=> b!2856781 (=> res!1186759 e!1809225)))

(declare-datatypes ((Regex!8589 0))(
  ( (ElementMatch!8589 (c!460350 C!17360)) (Concat!13910 (regOne!17690 Regex!8589) (regTwo!17690 Regex!8589)) (EmptyExpr!8589) (Star!8589 (reg!8918 Regex!8589)) (EmptyLang!8589) (Union!8589 (regOne!17691 Regex!8589) (regTwo!17691 Regex!8589)) )
))
(declare-fun r!23423 () Regex!8589)

(declare-fun matchR!3695 (Regex!8589 List!34186) Bool)

(assert (=> b!2856781 (= res!1186759 (not (matchR!3695 r!23423 lt!1014086)))))

(declare-fun $colon$colon!591 (List!34186 C!17360) List!34186)

(assert (=> b!2856781 (= lt!1014086 ($colon$colon!591 lt!1014085 (h!39482 prefix!1470)))))

(declare-fun res!1186757 () Bool)

(assert (=> start!278070 (=> (not res!1186757) (not e!1809227))))

(declare-fun validRegex!3459 (Regex!8589) Bool)

(assert (=> start!278070 (= res!1186757 (validRegex!3459 r!23423))))

(assert (=> start!278070 e!1809227))

(assert (=> start!278070 e!1809228))

(assert (=> start!278070 e!1809224))

(declare-fun b!2856782 () Bool)

(declare-fun tp!919431 () Bool)

(declare-fun tp!919428 () Bool)

(assert (=> b!2856782 (= e!1809228 (and tp!919431 tp!919428))))

(declare-fun b!2856783 () Bool)

(declare-fun tp!919429 () Bool)

(declare-fun tp!919432 () Bool)

(assert (=> b!2856783 (= e!1809228 (and tp!919429 tp!919432))))

(declare-fun b!2856784 () Bool)

(declare-fun res!1186756 () Bool)

(assert (=> b!2856784 (=> (not res!1186756) (not e!1809227))))

(declare-fun prefixMatch!897 (Regex!8589 List!34186) Bool)

(assert (=> b!2856784 (= res!1186756 (prefixMatch!897 r!23423 prefix!1470))))

(declare-fun b!2856785 () Bool)

(declare-fun tp!919427 () Bool)

(assert (=> b!2856785 (= e!1809228 tp!919427)))

(assert (=> b!2856786 (= e!1809227 (not e!1809226))))

(declare-fun res!1186755 () Bool)

(assert (=> b!2856786 (=> res!1186755 e!1809226)))

(declare-fun lt!1014087 () Regex!8589)

(assert (=> b!2856786 (= res!1186755 (not (matchR!3695 lt!1014087 lt!1014085)))))

(declare-fun lambda!105079 () Int)

(declare-fun pickWitness!308 (Int) List!34186)

(assert (=> b!2856786 (= lt!1014085 (pickWitness!308 lambda!105079))))

(declare-fun Exists!1295 (Int) Bool)

(assert (=> b!2856786 (Exists!1295 lambda!105079)))

(assert (=> b!2856786 (Exists!1295 lambda!105079)))

(declare-datatypes ((Unit!47721 0))(
  ( (Unit!47722) )
))
(declare-fun lt!1014089 () Unit!47721)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!343 (Regex!8589 List!34186) Unit!47721)

(assert (=> b!2856786 (= lt!1014089 (lemmaPrefixMatchThenExistsStringThatMatches!343 lt!1014087 (t!233217 prefix!1470)))))

(declare-fun derivativeStep!2278 (Regex!8589 C!17360) Regex!8589)

(assert (=> b!2856786 (= lt!1014087 (derivativeStep!2278 r!23423 (h!39482 prefix!1470)))))

(assert (= (and start!278070 res!1186757) b!2856784))

(assert (= (and b!2856784 res!1186756) b!2856780))

(assert (= (and b!2856780 res!1186758) b!2856786))

(assert (= (and b!2856786 (not res!1186755)) b!2856777))

(assert (= (and b!2856777 (not res!1186760)) b!2856781))

(assert (= (and b!2856781 (not res!1186759)) b!2856778))

(assert (= (and start!278070 ((_ is ElementMatch!8589) r!23423)) b!2856776))

(assert (= (and start!278070 ((_ is Concat!13910) r!23423)) b!2856782))

(assert (= (and start!278070 ((_ is Star!8589) r!23423)) b!2856785))

(assert (= (and start!278070 ((_ is Union!8589) r!23423)) b!2856783))

(assert (= (and start!278070 ((_ is Cons!34062) prefix!1470)) b!2856779))

(declare-fun m!3279047 () Bool)

(assert (=> b!2856778 m!3279047))

(declare-fun m!3279049 () Bool)

(assert (=> b!2856781 m!3279049))

(declare-fun m!3279051 () Bool)

(assert (=> b!2856781 m!3279051))

(declare-fun m!3279053 () Bool)

(assert (=> start!278070 m!3279053))

(declare-fun m!3279055 () Bool)

(assert (=> b!2856777 m!3279055))

(declare-fun m!3279057 () Bool)

(assert (=> b!2856786 m!3279057))

(declare-fun m!3279059 () Bool)

(assert (=> b!2856786 m!3279059))

(declare-fun m!3279061 () Bool)

(assert (=> b!2856786 m!3279061))

(declare-fun m!3279063 () Bool)

(assert (=> b!2856786 m!3279063))

(declare-fun m!3279065 () Bool)

(assert (=> b!2856786 m!3279065))

(assert (=> b!2856786 m!3279065))

(declare-fun m!3279067 () Bool)

(assert (=> b!2856784 m!3279067))

(check-sat (not b!2856782) tp_is_empty!14915 (not b!2856785) (not b!2856781) (not b!2856786) (not b!2856778) (not b!2856779) (not b!2856783) (not b!2856784) (not b!2856777) (not start!278070))
(check-sat)
