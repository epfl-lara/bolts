; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350512 () Bool)

(assert start!350512)

(declare-fun b!3722043 () Bool)

(declare-fun e!2304039 () Bool)

(declare-fun e!2304041 () Bool)

(assert (=> b!3722043 (= e!2304039 (not e!2304041))))

(declare-fun res!1512659 () Bool)

(assert (=> b!3722043 (=> res!1512659 e!2304041)))

(declare-datatypes ((C!21946 0))(
  ( (C!21947 (val!13021 Int)) )
))
(declare-datatypes ((Regex!10880 0))(
  ( (ElementMatch!10880 (c!643756 C!21946)) (Concat!17151 (regOne!22272 Regex!10880) (regTwo!22272 Regex!10880)) (EmptyExpr!10880) (Star!10880 (reg!11209 Regex!10880)) (EmptyLang!10880) (Union!10880 (regOne!22273 Regex!10880) (regTwo!22273 Regex!10880)) )
))
(declare-fun r!26968 () Regex!10880)

(declare-fun validRegex!4987 (Regex!10880) Bool)

(assert (=> b!3722043 (= res!1512659 (not (validRegex!4987 (regTwo!22272 r!26968))))))

(declare-fun c!13797 () C!21946)

(declare-fun cNot!42 () C!21946)

(declare-datatypes ((List!39761 0))(
  ( (Nil!39637) (Cons!39637 (h!45057 C!21946) (t!302444 List!39761)) )
))
(declare-fun contains!7973 (List!39761 C!21946) Bool)

(declare-fun usedCharacters!1143 (Regex!10880) List!39761)

(declare-fun derivativeStep!3337 (Regex!10880 C!21946) Regex!10880)

(assert (=> b!3722043 (not (contains!7973 (usedCharacters!1143 (derivativeStep!3337 (regOne!22272 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57542 0))(
  ( (Unit!57543) )
))
(declare-fun lt!1298102 () Unit!57542)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!27 (Regex!10880 C!21946 C!21946) Unit!57542)

(assert (=> b!3722043 (= lt!1298102 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!27 (regOne!22272 r!26968) c!13797 cNot!42))))

(declare-fun b!3722044 () Bool)

(declare-fun e!2304040 () Bool)

(declare-fun tp!1132015 () Bool)

(declare-fun tp!1132018 () Bool)

(assert (=> b!3722044 (= e!2304040 (and tp!1132015 tp!1132018))))

(declare-fun b!3722045 () Bool)

(declare-fun tp!1132017 () Bool)

(declare-fun tp!1132016 () Bool)

(assert (=> b!3722045 (= e!2304040 (and tp!1132017 tp!1132016))))

(declare-fun b!3722047 () Bool)

(declare-fun res!1512656 () Bool)

(assert (=> b!3722047 (=> (not res!1512656) (not e!2304039))))

(declare-fun nullable!3788 (Regex!10880) Bool)

(assert (=> b!3722047 (= res!1512656 (nullable!3788 (regOne!22272 r!26968)))))

(declare-fun b!3722048 () Bool)

(declare-fun tp!1132019 () Bool)

(assert (=> b!3722048 (= e!2304040 tp!1132019)))

(declare-fun b!3722049 () Bool)

(declare-fun tp_is_empty!18775 () Bool)

(assert (=> b!3722049 (= e!2304040 tp_is_empty!18775)))

(declare-fun b!3722050 () Bool)

(assert (=> b!3722050 (= e!2304041 true)))

(declare-fun lt!1298101 () Bool)

(assert (=> b!3722050 (= lt!1298101 (contains!7973 (usedCharacters!1143 (regTwo!22272 r!26968)) cNot!42))))

(declare-fun b!3722051 () Bool)

(declare-fun res!1512657 () Bool)

(assert (=> b!3722051 (=> (not res!1512657) (not e!2304039))))

(assert (=> b!3722051 (= res!1512657 (and (not (is-EmptyExpr!10880 r!26968)) (not (is-EmptyLang!10880 r!26968)) (not (is-ElementMatch!10880 r!26968)) (not (is-Union!10880 r!26968)) (not (is-Star!10880 r!26968))))))

(declare-fun res!1512658 () Bool)

(assert (=> start!350512 (=> (not res!1512658) (not e!2304039))))

(assert (=> start!350512 (= res!1512658 (validRegex!4987 r!26968))))

(assert (=> start!350512 e!2304039))

(assert (=> start!350512 e!2304040))

(assert (=> start!350512 tp_is_empty!18775))

(declare-fun b!3722046 () Bool)

(declare-fun res!1512655 () Bool)

(assert (=> b!3722046 (=> (not res!1512655) (not e!2304039))))

(assert (=> b!3722046 (= res!1512655 (not (contains!7973 (usedCharacters!1143 r!26968) cNot!42)))))

(assert (= (and start!350512 res!1512658) b!3722046))

(assert (= (and b!3722046 res!1512655) b!3722051))

(assert (= (and b!3722051 res!1512657) b!3722047))

(assert (= (and b!3722047 res!1512656) b!3722043))

(assert (= (and b!3722043 (not res!1512659)) b!3722050))

(assert (= (and start!350512 (is-ElementMatch!10880 r!26968)) b!3722049))

(assert (= (and start!350512 (is-Concat!17151 r!26968)) b!3722044))

(assert (= (and start!350512 (is-Star!10880 r!26968)) b!3722048))

(assert (= (and start!350512 (is-Union!10880 r!26968)) b!3722045))

(declare-fun m!4226009 () Bool)

(assert (=> b!3722050 m!4226009))

(assert (=> b!3722050 m!4226009))

(declare-fun m!4226011 () Bool)

(assert (=> b!3722050 m!4226011))

(declare-fun m!4226013 () Bool)

(assert (=> b!3722043 m!4226013))

(declare-fun m!4226015 () Bool)

(assert (=> b!3722043 m!4226015))

(declare-fun m!4226017 () Bool)

(assert (=> b!3722043 m!4226017))

(declare-fun m!4226019 () Bool)

(assert (=> b!3722043 m!4226019))

(declare-fun m!4226021 () Bool)

(assert (=> b!3722043 m!4226021))

(assert (=> b!3722043 m!4226019))

(assert (=> b!3722043 m!4226015))

(declare-fun m!4226023 () Bool)

(assert (=> start!350512 m!4226023))

(declare-fun m!4226025 () Bool)

(assert (=> b!3722047 m!4226025))

(declare-fun m!4226027 () Bool)

(assert (=> b!3722046 m!4226027))

(assert (=> b!3722046 m!4226027))

(declare-fun m!4226029 () Bool)

(assert (=> b!3722046 m!4226029))

(push 1)

(assert (not b!3722045))

(assert (not b!3722046))

(assert (not b!3722044))

(assert (not b!3722050))

(assert (not start!350512))

(assert (not b!3722047))

(assert (not b!3722048))

(assert (not b!3722043))

(assert tp_is_empty!18775)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

