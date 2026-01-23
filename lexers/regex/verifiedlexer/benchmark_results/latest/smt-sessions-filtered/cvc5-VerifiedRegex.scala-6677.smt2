; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350584 () Bool)

(assert start!350584)

(declare-fun b!3722969 () Bool)

(declare-fun e!2304455 () Bool)

(assert (=> b!3722969 (= e!2304455 (not true))))

(declare-datatypes ((C!21970 0))(
  ( (C!21971 (val!13033 Int)) )
))
(declare-datatypes ((Regex!10892 0))(
  ( (ElementMatch!10892 (c!643964 C!21970)) (Concat!17163 (regOne!22296 Regex!10892) (regTwo!22296 Regex!10892)) (EmptyExpr!10892) (Star!10892 (reg!11221 Regex!10892)) (EmptyLang!10892) (Union!10892 (regOne!22297 Regex!10892) (regTwo!22297 Regex!10892)) )
))
(declare-fun r!26968 () Regex!10892)

(declare-fun c!13797 () C!21970)

(declare-fun cNot!42 () C!21970)

(declare-datatypes ((List!39773 0))(
  ( (Nil!39649) (Cons!39649 (h!45069 C!21970) (t!302456 List!39773)) )
))
(declare-fun contains!7985 (List!39773 C!21970) Bool)

(declare-fun usedCharacters!1155 (Regex!10892) List!39773)

(declare-fun derivativeStep!3347 (Regex!10892 C!21970) Regex!10892)

(assert (=> b!3722969 (not (contains!7985 (usedCharacters!1155 (derivativeStep!3347 (regOne!22296 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57562 0))(
  ( (Unit!57563) )
))
(declare-fun lt!1298235 () Unit!57562)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!37 (Regex!10892 C!21970 C!21970) Unit!57562)

(assert (=> b!3722969 (= lt!1298235 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!37 (regOne!22296 r!26968) c!13797 cNot!42))))

(declare-fun b!3722970 () Bool)

(declare-fun res!1512934 () Bool)

(assert (=> b!3722970 (=> (not res!1512934) (not e!2304455))))

(declare-fun validRegex!4999 (Regex!10892) Bool)

(assert (=> b!3722970 (= res!1512934 (validRegex!4999 (regOne!22296 r!26968)))))

(declare-fun b!3722971 () Bool)

(declare-fun e!2304456 () Bool)

(declare-fun tp!1132338 () Bool)

(declare-fun tp!1132335 () Bool)

(assert (=> b!3722971 (= e!2304456 (and tp!1132338 tp!1132335))))

(declare-fun b!3722972 () Bool)

(declare-fun tp!1132339 () Bool)

(assert (=> b!3722972 (= e!2304456 tp!1132339)))

(declare-fun b!3722973 () Bool)

(declare-fun res!1512936 () Bool)

(assert (=> b!3722973 (=> (not res!1512936) (not e!2304455))))

(assert (=> b!3722973 (= res!1512936 (and (not (is-EmptyExpr!10892 r!26968)) (not (is-EmptyLang!10892 r!26968)) (not (is-ElementMatch!10892 r!26968)) (not (is-Union!10892 r!26968)) (not (is-Star!10892 r!26968))))))

(declare-fun res!1512938 () Bool)

(assert (=> start!350584 (=> (not res!1512938) (not e!2304455))))

(assert (=> start!350584 (= res!1512938 (validRegex!4999 r!26968))))

(assert (=> start!350584 e!2304455))

(assert (=> start!350584 e!2304456))

(declare-fun tp_is_empty!18799 () Bool)

(assert (=> start!350584 tp_is_empty!18799))

(declare-fun b!3722974 () Bool)

(assert (=> b!3722974 (= e!2304456 tp_is_empty!18799)))

(declare-fun b!3722975 () Bool)

(declare-fun tp!1132336 () Bool)

(declare-fun tp!1132337 () Bool)

(assert (=> b!3722975 (= e!2304456 (and tp!1132336 tp!1132337))))

(declare-fun b!3722976 () Bool)

(declare-fun res!1512935 () Bool)

(assert (=> b!3722976 (=> (not res!1512935) (not e!2304455))))

(declare-fun nullable!3800 (Regex!10892) Bool)

(assert (=> b!3722976 (= res!1512935 (not (nullable!3800 (regOne!22296 r!26968))))))

(declare-fun b!3722977 () Bool)

(declare-fun res!1512937 () Bool)

(assert (=> b!3722977 (=> (not res!1512937) (not e!2304455))))

(assert (=> b!3722977 (= res!1512937 (not (contains!7985 (usedCharacters!1155 r!26968) cNot!42)))))

(declare-fun b!3722978 () Bool)

(declare-fun res!1512933 () Bool)

(assert (=> b!3722978 (=> (not res!1512933) (not e!2304455))))

(assert (=> b!3722978 (= res!1512933 (not (contains!7985 (usedCharacters!1155 (regOne!22296 r!26968)) cNot!42)))))

(assert (= (and start!350584 res!1512938) b!3722977))

(assert (= (and b!3722977 res!1512937) b!3722973))

(assert (= (and b!3722973 res!1512936) b!3722976))

(assert (= (and b!3722976 res!1512935) b!3722970))

(assert (= (and b!3722970 res!1512934) b!3722978))

(assert (= (and b!3722978 res!1512933) b!3722969))

(assert (= (and start!350584 (is-ElementMatch!10892 r!26968)) b!3722974))

(assert (= (and start!350584 (is-Concat!17163 r!26968)) b!3722975))

(assert (= (and start!350584 (is-Star!10892 r!26968)) b!3722972))

(assert (= (and start!350584 (is-Union!10892 r!26968)) b!3722971))

(declare-fun m!4226581 () Bool)

(assert (=> b!3722969 m!4226581))

(assert (=> b!3722969 m!4226581))

(declare-fun m!4226583 () Bool)

(assert (=> b!3722969 m!4226583))

(assert (=> b!3722969 m!4226583))

(declare-fun m!4226585 () Bool)

(assert (=> b!3722969 m!4226585))

(declare-fun m!4226587 () Bool)

(assert (=> b!3722969 m!4226587))

(declare-fun m!4226589 () Bool)

(assert (=> b!3722978 m!4226589))

(assert (=> b!3722978 m!4226589))

(declare-fun m!4226591 () Bool)

(assert (=> b!3722978 m!4226591))

(declare-fun m!4226593 () Bool)

(assert (=> b!3722970 m!4226593))

(declare-fun m!4226595 () Bool)

(assert (=> b!3722977 m!4226595))

(assert (=> b!3722977 m!4226595))

(declare-fun m!4226597 () Bool)

(assert (=> b!3722977 m!4226597))

(declare-fun m!4226599 () Bool)

(assert (=> start!350584 m!4226599))

(declare-fun m!4226601 () Bool)

(assert (=> b!3722976 m!4226601))

(push 1)

(assert (not b!3722978))

(assert (not b!3722976))

(assert (not b!3722975))

(assert (not b!3722971))

(assert (not b!3722972))

(assert (not start!350584))

(assert (not b!3722970))

(assert tp_is_empty!18799)

(assert (not b!3722977))

(assert (not b!3722969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

