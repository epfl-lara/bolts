; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45438 () Bool)

(assert start!45438)

(declare-fun b!472967 () Bool)

(declare-fun e!289244 () Bool)

(declare-fun tp_is_empty!2233 () Bool)

(assert (=> b!472967 (= e!289244 tp_is_empty!2233)))

(declare-fun b!472968 () Bool)

(declare-fun res!209955 () Bool)

(declare-fun e!289242 () Bool)

(assert (=> b!472968 (=> (not res!209955) (not e!289242))))

(declare-datatypes ((C!3158 0))(
  ( (C!3159 (val!1565 Int)) )
))
(declare-datatypes ((Regex!1118 0))(
  ( (ElementMatch!1118 (c!94919 C!3158)) (Concat!2018 (regOne!2748 Regex!1118) (regTwo!2748 Regex!1118)) (EmptyExpr!1118) (Star!1118 (reg!1447 Regex!1118)) (EmptyLang!1118) (Union!1118 (regOne!2749 Regex!1118) (regTwo!2749 Regex!1118)) )
))
(declare-fun r!20230 () Regex!1118)

(declare-fun lostCause!112 (Regex!1118) Bool)

(assert (=> b!472968 (= res!209955 (lostCause!112 r!20230))))

(declare-fun b!472969 () Bool)

(declare-fun e!289243 () Bool)

(assert (=> b!472969 (= e!289242 (not e!289243))))

(declare-fun res!209952 () Bool)

(assert (=> b!472969 (=> res!209952 e!289243)))

(declare-fun validRegex!346 (Regex!1118) Bool)

(assert (=> b!472969 (= res!209952 (not (validRegex!346 (regTwo!2749 r!20230))))))

(declare-fun c!12526 () C!3158)

(declare-fun derivativeStep!224 (Regex!1118 C!3158) Regex!1118)

(assert (=> b!472969 (lostCause!112 (derivativeStep!224 (regOne!2749 r!20230) c!12526))))

(declare-datatypes ((Unit!8322 0))(
  ( (Unit!8323) )
))
(declare-fun lt!210568 () Unit!8322)

(declare-fun lemmaDerivativeStepFixPointLostCause!1 (Regex!1118 C!3158) Unit!8322)

(assert (=> b!472969 (= lt!210568 (lemmaDerivativeStepFixPointLostCause!1 (regOne!2749 r!20230) c!12526))))

(declare-fun b!472970 () Bool)

(assert (=> b!472970 (= e!289243 true)))

(declare-fun lt!210567 () Bool)

(assert (=> b!472970 (= lt!210567 (lostCause!112 (regTwo!2749 r!20230)))))

(declare-fun res!209954 () Bool)

(assert (=> start!45438 (=> (not res!209954) (not e!289242))))

(assert (=> start!45438 (= res!209954 (validRegex!346 r!20230))))

(assert (=> start!45438 e!289242))

(assert (=> start!45438 e!289244))

(assert (=> start!45438 tp_is_empty!2233))

(declare-fun b!472971 () Bool)

(declare-fun tp!131105 () Bool)

(declare-fun tp!131104 () Bool)

(assert (=> b!472971 (= e!289244 (and tp!131105 tp!131104))))

(declare-fun b!472972 () Bool)

(declare-fun res!209953 () Bool)

(assert (=> b!472972 (=> (not res!209953) (not e!289242))))

(assert (=> b!472972 (= res!209953 (and (not (is-EmptyLang!1118 r!20230)) (not (is-EmptyExpr!1118 r!20230)) (not (is-ElementMatch!1118 r!20230)) (is-Union!1118 r!20230)))))

(declare-fun b!472973 () Bool)

(declare-fun tp!131106 () Bool)

(declare-fun tp!131103 () Bool)

(assert (=> b!472973 (= e!289244 (and tp!131106 tp!131103))))

(declare-fun b!472974 () Bool)

(declare-fun tp!131102 () Bool)

(assert (=> b!472974 (= e!289244 tp!131102)))

(assert (= (and start!45438 res!209954) b!472968))

(assert (= (and b!472968 res!209955) b!472972))

(assert (= (and b!472972 res!209953) b!472969))

(assert (= (and b!472969 (not res!209952)) b!472970))

(assert (= (and start!45438 (is-ElementMatch!1118 r!20230)) b!472967))

(assert (= (and start!45438 (is-Concat!2018 r!20230)) b!472971))

(assert (= (and start!45438 (is-Star!1118 r!20230)) b!472974))

(assert (= (and start!45438 (is-Union!1118 r!20230)) b!472973))

(declare-fun m!746419 () Bool)

(assert (=> b!472968 m!746419))

(declare-fun m!746421 () Bool)

(assert (=> b!472969 m!746421))

(declare-fun m!746423 () Bool)

(assert (=> b!472969 m!746423))

(assert (=> b!472969 m!746423))

(declare-fun m!746425 () Bool)

(assert (=> b!472969 m!746425))

(declare-fun m!746427 () Bool)

(assert (=> b!472969 m!746427))

(declare-fun m!746429 () Bool)

(assert (=> b!472970 m!746429))

(declare-fun m!746431 () Bool)

(assert (=> start!45438 m!746431))

(push 1)

(assert (not b!472973))

(assert (not b!472970))

(assert tp_is_empty!2233)

(assert (not b!472969))

(assert (not start!45438))

(assert (not b!472968))

(assert (not b!472971))

(assert (not b!472974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

