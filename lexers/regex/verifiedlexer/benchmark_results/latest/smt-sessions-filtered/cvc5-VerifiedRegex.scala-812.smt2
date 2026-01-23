; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45442 () Bool)

(assert start!45442)

(declare-fun b!473017 () Bool)

(declare-fun e!289260 () Bool)

(declare-fun tp!131136 () Bool)

(declare-fun tp!131132 () Bool)

(assert (=> b!473017 (= e!289260 (and tp!131136 tp!131132))))

(declare-fun b!473018 () Bool)

(declare-fun res!209979 () Bool)

(declare-fun e!289261 () Bool)

(assert (=> b!473018 (=> (not res!209979) (not e!289261))))

(declare-datatypes ((C!3162 0))(
  ( (C!3163 (val!1567 Int)) )
))
(declare-datatypes ((Regex!1120 0))(
  ( (ElementMatch!1120 (c!94921 C!3162)) (Concat!2020 (regOne!2752 Regex!1120) (regTwo!2752 Regex!1120)) (EmptyExpr!1120) (Star!1120 (reg!1449 Regex!1120)) (EmptyLang!1120) (Union!1120 (regOne!2753 Regex!1120) (regTwo!2753 Regex!1120)) )
))
(declare-fun r!20230 () Regex!1120)

(assert (=> b!473018 (= res!209979 (and (not (is-EmptyLang!1120 r!20230)) (not (is-EmptyExpr!1120 r!20230)) (not (is-ElementMatch!1120 r!20230)) (is-Union!1120 r!20230)))))

(declare-fun b!473019 () Bool)

(declare-fun res!209980 () Bool)

(declare-fun e!289262 () Bool)

(assert (=> b!473019 (=> res!209980 e!289262)))

(declare-fun lostCause!114 (Regex!1120) Bool)

(assert (=> b!473019 (= res!209980 (not (lostCause!114 (regTwo!2753 r!20230))))))

(declare-fun b!473020 () Bool)

(declare-fun tp!131134 () Bool)

(assert (=> b!473020 (= e!289260 tp!131134)))

(declare-fun b!473021 () Bool)

(assert (=> b!473021 (= e!289262 true)))

(declare-fun c!12526 () C!3162)

(declare-fun derivativeStep!226 (Regex!1120 C!3162) Regex!1120)

(assert (=> b!473021 (lostCause!114 (derivativeStep!226 (regTwo!2753 r!20230) c!12526))))

(declare-datatypes ((Unit!8326 0))(
  ( (Unit!8327) )
))
(declare-fun lt!210580 () Unit!8326)

(declare-fun lemmaDerivativeStepFixPointLostCause!3 (Regex!1120 C!3162) Unit!8326)

(assert (=> b!473021 (= lt!210580 (lemmaDerivativeStepFixPointLostCause!3 (regTwo!2753 r!20230) c!12526))))

(declare-fun b!473022 () Bool)

(declare-fun tp_is_empty!2237 () Bool)

(assert (=> b!473022 (= e!289260 tp_is_empty!2237)))

(declare-fun res!209981 () Bool)

(assert (=> start!45442 (=> (not res!209981) (not e!289261))))

(declare-fun validRegex!348 (Regex!1120) Bool)

(assert (=> start!45442 (= res!209981 (validRegex!348 r!20230))))

(assert (=> start!45442 e!289261))

(assert (=> start!45442 e!289260))

(assert (=> start!45442 tp_is_empty!2237))

(declare-fun b!473023 () Bool)

(declare-fun tp!131133 () Bool)

(declare-fun tp!131135 () Bool)

(assert (=> b!473023 (= e!289260 (and tp!131133 tp!131135))))

(declare-fun b!473024 () Bool)

(declare-fun res!209978 () Bool)

(assert (=> b!473024 (=> (not res!209978) (not e!289261))))

(assert (=> b!473024 (= res!209978 (lostCause!114 r!20230))))

(declare-fun b!473025 () Bool)

(assert (=> b!473025 (= e!289261 (not e!289262))))

(declare-fun res!209982 () Bool)

(assert (=> b!473025 (=> res!209982 e!289262)))

(assert (=> b!473025 (= res!209982 (not (validRegex!348 (regTwo!2753 r!20230))))))

(assert (=> b!473025 (lostCause!114 (derivativeStep!226 (regOne!2753 r!20230) c!12526))))

(declare-fun lt!210579 () Unit!8326)

(assert (=> b!473025 (= lt!210579 (lemmaDerivativeStepFixPointLostCause!3 (regOne!2753 r!20230) c!12526))))

(assert (= (and start!45442 res!209981) b!473024))

(assert (= (and b!473024 res!209978) b!473018))

(assert (= (and b!473018 res!209979) b!473025))

(assert (= (and b!473025 (not res!209982)) b!473019))

(assert (= (and b!473019 (not res!209980)) b!473021))

(assert (= (and start!45442 (is-ElementMatch!1120 r!20230)) b!473022))

(assert (= (and start!45442 (is-Concat!2020 r!20230)) b!473023))

(assert (= (and start!45442 (is-Star!1120 r!20230)) b!473020))

(assert (= (and start!45442 (is-Union!1120 r!20230)) b!473017))

(declare-fun m!746447 () Bool)

(assert (=> b!473025 m!746447))

(declare-fun m!746449 () Bool)

(assert (=> b!473025 m!746449))

(assert (=> b!473025 m!746449))

(declare-fun m!746451 () Bool)

(assert (=> b!473025 m!746451))

(declare-fun m!746453 () Bool)

(assert (=> b!473025 m!746453))

(declare-fun m!746455 () Bool)

(assert (=> b!473019 m!746455))

(declare-fun m!746457 () Bool)

(assert (=> b!473024 m!746457))

(declare-fun m!746459 () Bool)

(assert (=> start!45442 m!746459))

(declare-fun m!746461 () Bool)

(assert (=> b!473021 m!746461))

(assert (=> b!473021 m!746461))

(declare-fun m!746463 () Bool)

(assert (=> b!473021 m!746463))

(declare-fun m!746465 () Bool)

(assert (=> b!473021 m!746465))

(push 1)

(assert (not b!473021))

(assert (not b!473020))

(assert (not b!473017))

(assert (not b!473023))

(assert (not start!45442))

(assert (not b!473019))

(assert (not b!473024))

(assert tp_is_empty!2237)

(assert (not b!473025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

