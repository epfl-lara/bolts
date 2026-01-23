; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45472 () Bool)

(assert start!45472)

(declare-fun b!473508 () Bool)

(declare-fun e!289437 () Bool)

(declare-fun tp!131359 () Bool)

(declare-fun tp!131357 () Bool)

(assert (=> b!473508 (= e!289437 (and tp!131359 tp!131357))))

(declare-fun b!473509 () Bool)

(declare-fun tp_is_empty!2267 () Bool)

(assert (=> b!473509 (= e!289437 tp_is_empty!2267)))

(declare-fun res!210289 () Bool)

(declare-fun e!289438 () Bool)

(assert (=> start!45472 (=> (not res!210289) (not e!289438))))

(declare-datatypes ((C!3192 0))(
  ( (C!3193 (val!1582 Int)) )
))
(declare-datatypes ((Regex!1135 0))(
  ( (ElementMatch!1135 (c!94936 C!3192)) (Concat!2035 (regOne!2782 Regex!1135) (regTwo!2782 Regex!1135)) (EmptyExpr!1135) (Star!1135 (reg!1464 Regex!1135)) (EmptyLang!1135) (Union!1135 (regOne!2783 Regex!1135) (regTwo!2783 Regex!1135)) )
))
(declare-fun r!20230 () Regex!1135)

(declare-fun validRegex!363 (Regex!1135) Bool)

(assert (=> start!45472 (= res!210289 (validRegex!363 r!20230))))

(assert (=> start!45472 e!289438))

(assert (=> start!45472 e!289437))

(assert (=> start!45472 tp_is_empty!2267))

(declare-fun b!473510 () Bool)

(declare-fun tp!131361 () Bool)

(declare-fun tp!131360 () Bool)

(assert (=> b!473510 (= e!289437 (and tp!131361 tp!131360))))

(declare-fun b!473511 () Bool)

(declare-fun res!210291 () Bool)

(declare-fun e!289439 () Bool)

(assert (=> b!473511 (=> (not res!210291) (not e!289439))))

(declare-fun nullable!270 (Regex!1135) Bool)

(assert (=> b!473511 (= res!210291 (not (nullable!270 (regOne!2782 r!20230))))))

(declare-fun b!473512 () Bool)

(assert (=> b!473512 (= e!289438 e!289439)))

(declare-fun res!210290 () Bool)

(assert (=> b!473512 (=> (not res!210290) (not e!289439))))

(declare-fun e!289436 () Bool)

(assert (=> b!473512 (= res!210290 e!289436)))

(declare-fun res!210294 () Bool)

(assert (=> b!473512 (=> res!210294 e!289436)))

(declare-fun lt!210657 () Bool)

(assert (=> b!473512 (= res!210294 lt!210657)))

(declare-fun lostCause!129 (Regex!1135) Bool)

(assert (=> b!473512 (= lt!210657 (lostCause!129 (regOne!2782 r!20230)))))

(declare-fun b!473513 () Bool)

(declare-fun res!210296 () Bool)

(assert (=> b!473513 (=> (not res!210296) (not e!289438))))

(get-info :version)

(assert (=> b!473513 (= res!210296 (and (not ((_ is EmptyLang!1135) r!20230)) (not ((_ is EmptyExpr!1135) r!20230)) (not ((_ is ElementMatch!1135) r!20230)) (not ((_ is Union!1135) r!20230)) (not ((_ is Star!1135) r!20230))))))

(declare-fun b!473514 () Bool)

(declare-fun tp!131358 () Bool)

(assert (=> b!473514 (= e!289437 tp!131358)))

(declare-fun b!473515 () Bool)

(assert (=> b!473515 (= e!289436 (lostCause!129 (regTwo!2782 r!20230)))))

(declare-fun b!473516 () Bool)

(declare-fun res!210295 () Bool)

(assert (=> b!473516 (=> (not res!210295) (not e!289439))))

(assert (=> b!473516 (= res!210295 (lostCause!129 (regTwo!2782 r!20230)))))

(declare-fun b!473517 () Bool)

(assert (=> b!473517 (= e!289439 (not true))))

(declare-fun c!12526 () C!3192)

(declare-fun derivativeStep!233 (Regex!1135 C!3192) Regex!1135)

(assert (=> b!473517 (lostCause!129 (derivativeStep!233 (regTwo!2782 r!20230) c!12526))))

(declare-datatypes ((Unit!8344 0))(
  ( (Unit!8345) )
))
(declare-fun lt!210658 () Unit!8344)

(declare-fun lemmaDerivativeStepFixPointLostCause!10 (Regex!1135 C!3192) Unit!8344)

(assert (=> b!473517 (= lt!210658 (lemmaDerivativeStepFixPointLostCause!10 (regTwo!2782 r!20230) c!12526))))

(declare-fun b!473518 () Bool)

(declare-fun res!210293 () Bool)

(assert (=> b!473518 (=> (not res!210293) (not e!289439))))

(assert (=> b!473518 (= res!210293 (not lt!210657))))

(declare-fun b!473519 () Bool)

(declare-fun res!210292 () Bool)

(assert (=> b!473519 (=> (not res!210292) (not e!289439))))

(assert (=> b!473519 (= res!210292 (validRegex!363 (regTwo!2782 r!20230)))))

(declare-fun b!473520 () Bool)

(declare-fun res!210297 () Bool)

(assert (=> b!473520 (=> (not res!210297) (not e!289438))))

(assert (=> b!473520 (= res!210297 (lostCause!129 r!20230))))

(assert (= (and start!45472 res!210289) b!473520))

(assert (= (and b!473520 res!210297) b!473513))

(assert (= (and b!473513 res!210296) b!473512))

(assert (= (and b!473512 (not res!210294)) b!473515))

(assert (= (and b!473512 res!210290) b!473511))

(assert (= (and b!473511 res!210291) b!473518))

(assert (= (and b!473518 res!210293) b!473519))

(assert (= (and b!473519 res!210292) b!473516))

(assert (= (and b!473516 res!210295) b!473517))

(assert (= (and start!45472 ((_ is ElementMatch!1135) r!20230)) b!473509))

(assert (= (and start!45472 ((_ is Concat!2035) r!20230)) b!473508))

(assert (= (and start!45472 ((_ is Star!1135) r!20230)) b!473514))

(assert (= (and start!45472 ((_ is Union!1135) r!20230)) b!473510))

(declare-fun m!746665 () Bool)

(assert (=> b!473520 m!746665))

(declare-fun m!746667 () Bool)

(assert (=> b!473515 m!746667))

(declare-fun m!746669 () Bool)

(assert (=> b!473511 m!746669))

(declare-fun m!746671 () Bool)

(assert (=> b!473517 m!746671))

(assert (=> b!473517 m!746671))

(declare-fun m!746673 () Bool)

(assert (=> b!473517 m!746673))

(declare-fun m!746675 () Bool)

(assert (=> b!473517 m!746675))

(declare-fun m!746677 () Bool)

(assert (=> b!473512 m!746677))

(assert (=> b!473516 m!746667))

(declare-fun m!746679 () Bool)

(assert (=> start!45472 m!746679))

(declare-fun m!746681 () Bool)

(assert (=> b!473519 m!746681))

(check-sat (not b!473519) (not b!473514) (not b!473516) (not b!473517) (not b!473511) (not b!473520) (not start!45472) tp_is_empty!2267 (not b!473508) (not b!473515) (not b!473510) (not b!473512))
(check-sat)
