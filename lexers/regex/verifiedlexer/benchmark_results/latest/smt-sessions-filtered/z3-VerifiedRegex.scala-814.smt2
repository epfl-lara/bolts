; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45452 () Bool)

(assert start!45452)

(declare-fun res!210066 () Bool)

(declare-fun e!289315 () Bool)

(assert (=> start!45452 (=> (not res!210066) (not e!289315))))

(declare-datatypes ((C!3172 0))(
  ( (C!3173 (val!1572 Int)) )
))
(declare-datatypes ((Regex!1125 0))(
  ( (ElementMatch!1125 (c!94926 C!3172)) (Concat!2025 (regOne!2762 Regex!1125) (regTwo!2762 Regex!1125)) (EmptyExpr!1125) (Star!1125 (reg!1454 Regex!1125)) (EmptyLang!1125) (Union!1125 (regOne!2763 Regex!1125) (regTwo!2763 Regex!1125)) )
))
(declare-fun r!20230 () Regex!1125)

(declare-fun validRegex!353 (Regex!1125) Bool)

(assert (=> start!45452 (= res!210066 (validRegex!353 r!20230))))

(assert (=> start!45452 e!289315))

(declare-fun e!289319 () Bool)

(assert (=> start!45452 e!289319))

(declare-fun b!473162 () Bool)

(declare-fun res!210069 () Bool)

(declare-fun e!289318 () Bool)

(assert (=> b!473162 (=> (not res!210069) (not e!289318))))

(declare-fun nullable!262 (Regex!1125) Bool)

(assert (=> b!473162 (= res!210069 (nullable!262 (regOne!2762 r!20230)))))

(declare-fun b!473163 () Bool)

(declare-fun tp!131209 () Bool)

(assert (=> b!473163 (= e!289319 tp!131209)))

(declare-fun b!473164 () Bool)

(declare-fun res!210064 () Bool)

(assert (=> b!473164 (=> (not res!210064) (not e!289315))))

(declare-fun lostCause!119 (Regex!1125) Bool)

(assert (=> b!473164 (= res!210064 (lostCause!119 r!20230))))

(declare-fun b!473165 () Bool)

(declare-fun e!289317 () Bool)

(assert (=> b!473165 (= e!289317 (lostCause!119 (regTwo!2762 r!20230)))))

(declare-fun b!473166 () Bool)

(declare-fun e!289316 () Bool)

(assert (=> b!473166 (= e!289316 true)))

(declare-fun lt!210604 () Bool)

(assert (=> b!473166 (= lt!210604 (lostCause!119 (regTwo!2762 r!20230)))))

(declare-fun b!473167 () Bool)

(assert (=> b!473167 (= e!289315 e!289318)))

(declare-fun res!210065 () Bool)

(assert (=> b!473167 (=> (not res!210065) (not e!289318))))

(assert (=> b!473167 (= res!210065 e!289317)))

(declare-fun res!210063 () Bool)

(assert (=> b!473167 (=> res!210063 e!289317)))

(declare-fun lt!210602 () Bool)

(assert (=> b!473167 (= res!210063 lt!210602)))

(assert (=> b!473167 (= lt!210602 (lostCause!119 (regOne!2762 r!20230)))))

(declare-fun b!473168 () Bool)

(declare-fun tp!131208 () Bool)

(declare-fun tp!131207 () Bool)

(assert (=> b!473168 (= e!289319 (and tp!131208 tp!131207))))

(declare-fun b!473169 () Bool)

(declare-fun tp_is_empty!2247 () Bool)

(assert (=> b!473169 (= e!289319 tp_is_empty!2247)))

(declare-fun b!473170 () Bool)

(declare-fun res!210068 () Bool)

(assert (=> b!473170 (=> (not res!210068) (not e!289315))))

(get-info :version)

(assert (=> b!473170 (= res!210068 (and (not ((_ is EmptyLang!1125) r!20230)) (not ((_ is EmptyExpr!1125) r!20230)) (not ((_ is ElementMatch!1125) r!20230)) (not ((_ is Union!1125) r!20230)) (not ((_ is Star!1125) r!20230))))))

(declare-fun b!473171 () Bool)

(declare-fun tp!131211 () Bool)

(declare-fun tp!131210 () Bool)

(assert (=> b!473171 (= e!289319 (and tp!131211 tp!131210))))

(declare-fun b!473172 () Bool)

(assert (=> b!473172 (= e!289318 (not e!289316))))

(declare-fun res!210067 () Bool)

(assert (=> b!473172 (=> res!210067 e!289316)))

(assert (=> b!473172 (= res!210067 (not (validRegex!353 (regTwo!2762 r!20230))))))

(assert (=> b!473172 (not lt!210602)))

(declare-datatypes ((Unit!8332 0))(
  ( (Unit!8333) )
))
(declare-fun lt!210603 () Unit!8332)

(declare-fun lemmaNullableThenNotLostCause!2 (Regex!1125) Unit!8332)

(assert (=> b!473172 (= lt!210603 (lemmaNullableThenNotLostCause!2 (regOne!2762 r!20230)))))

(assert (= (and start!45452 res!210066) b!473164))

(assert (= (and b!473164 res!210064) b!473170))

(assert (= (and b!473170 res!210068) b!473167))

(assert (= (and b!473167 (not res!210063)) b!473165))

(assert (= (and b!473167 res!210065) b!473162))

(assert (= (and b!473162 res!210069) b!473172))

(assert (= (and b!473172 (not res!210067)) b!473166))

(assert (= (and start!45452 ((_ is ElementMatch!1125) r!20230)) b!473169))

(assert (= (and start!45452 ((_ is Concat!2025) r!20230)) b!473168))

(assert (= (and start!45452 ((_ is Star!1125) r!20230)) b!473163))

(assert (= (and start!45452 ((_ is Union!1125) r!20230)) b!473171))

(declare-fun m!746517 () Bool)

(assert (=> b!473167 m!746517))

(declare-fun m!746519 () Bool)

(assert (=> b!473166 m!746519))

(declare-fun m!746521 () Bool)

(assert (=> b!473162 m!746521))

(assert (=> b!473165 m!746519))

(declare-fun m!746523 () Bool)

(assert (=> b!473172 m!746523))

(declare-fun m!746525 () Bool)

(assert (=> b!473172 m!746525))

(declare-fun m!746527 () Bool)

(assert (=> start!45452 m!746527))

(declare-fun m!746529 () Bool)

(assert (=> b!473164 m!746529))

(check-sat (not b!473166) (not b!473168) (not b!473162) (not b!473172) (not b!473164) (not b!473171) (not b!473167) (not b!473163) (not start!45452) tp_is_empty!2247 (not b!473165))
(check-sat)
