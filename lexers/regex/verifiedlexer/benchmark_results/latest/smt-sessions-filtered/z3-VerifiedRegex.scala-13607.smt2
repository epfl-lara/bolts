; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731108 () Bool)

(assert start!731108)

(declare-fun b!7570299 () Bool)

(declare-fun res!3032724 () Bool)

(declare-fun e!4506952 () Bool)

(assert (=> b!7570299 (=> (not res!3032724) (not e!4506952))))

(declare-datatypes ((C!40344 0))(
  ( (C!40345 (val!30612 Int)) )
))
(declare-datatypes ((Regex!20009 0))(
  ( (ElementMatch!20009 (c!1396776 C!40344)) (Concat!28854 (regOne!40530 Regex!20009) (regTwo!40530 Regex!20009)) (EmptyExpr!20009) (Star!20009 (reg!20338 Regex!20009)) (EmptyLang!20009) (Union!20009 (regOne!40531 Regex!20009) (regTwo!40531 Regex!20009)) )
))
(declare-fun r!24129 () Regex!20009)

(declare-fun validRegex!10437 (Regex!20009) Bool)

(assert (=> b!7570299 (= res!3032724 (validRegex!10437 r!24129))))

(declare-fun b!7570300 () Bool)

(declare-fun e!4506955 () Bool)

(declare-fun tp_is_empty!50373 () Bool)

(declare-fun tp!2205444 () Bool)

(assert (=> b!7570300 (= e!4506955 (and tp_is_empty!50373 tp!2205444))))

(declare-fun b!7570301 () Bool)

(declare-fun e!4506956 () Bool)

(declare-datatypes ((List!72892 0))(
  ( (Nil!72768) (Cons!72768 (h!79216 C!40344) (t!387627 List!72892)) )
))
(declare-fun matchR!9609 (Regex!20009 List!72892) Bool)

(assert (=> b!7570301 (= e!4506956 (not (matchR!9609 r!24129 Nil!72768)))))

(declare-fun lt!2651153 () Regex!20009)

(assert (=> b!7570301 (matchR!9609 lt!2651153 Nil!72768)))

(declare-datatypes ((Unit!166970 0))(
  ( (Unit!166971) )
))
(declare-fun lt!2651154 () Unit!166970)

(declare-fun baseR!100 () Regex!20009)

(declare-fun testedP!418 () List!72892)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!278 (Regex!20009 List!72892) Unit!166970)

(assert (=> b!7570301 (= lt!2651154 (lemmaMatchRIsSameAsWholeDerivativeAndNil!278 baseR!100 testedP!418))))

(declare-fun b!7570302 () Bool)

(declare-fun e!4506953 () Bool)

(declare-fun tp!2205438 () Bool)

(declare-fun tp!2205441 () Bool)

(assert (=> b!7570302 (= e!4506953 (and tp!2205438 tp!2205441))))

(declare-fun b!7570303 () Bool)

(declare-fun e!4506954 () Bool)

(assert (=> b!7570303 (= e!4506954 tp_is_empty!50373)))

(declare-fun b!7570304 () Bool)

(assert (=> b!7570304 (= e!4506952 e!4506956)))

(declare-fun res!3032723 () Bool)

(assert (=> b!7570304 (=> (not res!3032723) (not e!4506956))))

(assert (=> b!7570304 (= res!3032723 (= lt!2651153 r!24129))))

(declare-fun derivative!535 (Regex!20009 List!72892) Regex!20009)

(assert (=> b!7570304 (= lt!2651153 (derivative!535 baseR!100 testedP!418))))

(declare-fun b!7570305 () Bool)

(assert (=> b!7570305 (= e!4506953 tp_is_empty!50373)))

(declare-fun b!7570306 () Bool)

(declare-fun tp!2205435 () Bool)

(declare-fun tp!2205437 () Bool)

(assert (=> b!7570306 (= e!4506953 (and tp!2205435 tp!2205437))))

(declare-fun b!7570307 () Bool)

(declare-fun tp!2205440 () Bool)

(assert (=> b!7570307 (= e!4506953 tp!2205440)))

(declare-fun b!7570308 () Bool)

(declare-fun tp!2205445 () Bool)

(declare-fun tp!2205436 () Bool)

(assert (=> b!7570308 (= e!4506954 (and tp!2205445 tp!2205436))))

(declare-fun b!7570309 () Bool)

(declare-fun res!3032721 () Bool)

(assert (=> b!7570309 (=> (not res!3032721) (not e!4506952))))

(assert (=> b!7570309 (= res!3032721 (matchR!9609 baseR!100 testedP!418))))

(declare-fun b!7570310 () Bool)

(declare-fun tp!2205439 () Bool)

(assert (=> b!7570310 (= e!4506954 tp!2205439)))

(declare-fun b!7570311 () Bool)

(declare-fun e!4506957 () Bool)

(declare-fun tp!2205442 () Bool)

(assert (=> b!7570311 (= e!4506957 (and tp_is_empty!50373 tp!2205442))))

(declare-fun res!3032722 () Bool)

(assert (=> start!731108 (=> (not res!3032722) (not e!4506952))))

(assert (=> start!731108 (= res!3032722 (validRegex!10437 baseR!100))))

(assert (=> start!731108 e!4506952))

(assert (=> start!731108 e!4506954))

(assert (=> start!731108 e!4506953))

(assert (=> start!731108 e!4506955))

(assert (=> start!731108 e!4506957))

(declare-fun b!7570312 () Bool)

(declare-fun res!3032720 () Bool)

(assert (=> b!7570312 (=> (not res!3032720) (not e!4506952))))

(declare-fun input!7855 () List!72892)

(declare-fun isPrefix!6215 (List!72892 List!72892) Bool)

(assert (=> b!7570312 (= res!3032720 (isPrefix!6215 testedP!418 input!7855))))

(declare-fun b!7570313 () Bool)

(declare-fun tp!2205443 () Bool)

(declare-fun tp!2205434 () Bool)

(assert (=> b!7570313 (= e!4506954 (and tp!2205443 tp!2205434))))

(assert (= (and start!731108 res!3032722) b!7570299))

(assert (= (and b!7570299 res!3032724) b!7570312))

(assert (= (and b!7570312 res!3032720) b!7570309))

(assert (= (and b!7570309 res!3032721) b!7570304))

(assert (= (and b!7570304 res!3032723) b!7570301))

(get-info :version)

(assert (= (and start!731108 ((_ is ElementMatch!20009) baseR!100)) b!7570303))

(assert (= (and start!731108 ((_ is Concat!28854) baseR!100)) b!7570313))

(assert (= (and start!731108 ((_ is Star!20009) baseR!100)) b!7570310))

(assert (= (and start!731108 ((_ is Union!20009) baseR!100)) b!7570308))

(assert (= (and start!731108 ((_ is ElementMatch!20009) r!24129)) b!7570305))

(assert (= (and start!731108 ((_ is Concat!28854) r!24129)) b!7570306))

(assert (= (and start!731108 ((_ is Star!20009) r!24129)) b!7570307))

(assert (= (and start!731108 ((_ is Union!20009) r!24129)) b!7570302))

(assert (= (and start!731108 ((_ is Cons!72768) testedP!418)) b!7570300))

(assert (= (and start!731108 ((_ is Cons!72768) input!7855)) b!7570311))

(declare-fun m!8131642 () Bool)

(assert (=> b!7570301 m!8131642))

(declare-fun m!8131644 () Bool)

(assert (=> b!7570301 m!8131644))

(declare-fun m!8131646 () Bool)

(assert (=> b!7570301 m!8131646))

(declare-fun m!8131648 () Bool)

(assert (=> b!7570299 m!8131648))

(declare-fun m!8131650 () Bool)

(assert (=> b!7570304 m!8131650))

(declare-fun m!8131652 () Bool)

(assert (=> start!731108 m!8131652))

(declare-fun m!8131654 () Bool)

(assert (=> b!7570312 m!8131654))

(declare-fun m!8131656 () Bool)

(assert (=> b!7570309 m!8131656))

(check-sat (not b!7570313) (not start!731108) (not b!7570308) (not b!7570301) (not b!7570306) (not b!7570302) tp_is_empty!50373 (not b!7570300) (not b!7570311) (not b!7570299) (not b!7570310) (not b!7570307) (not b!7570304) (not b!7570312) (not b!7570309))
(check-sat)
