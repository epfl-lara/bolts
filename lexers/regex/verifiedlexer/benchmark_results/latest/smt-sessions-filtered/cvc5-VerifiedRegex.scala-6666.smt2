; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350492 () Bool)

(assert start!350492)

(declare-fun b!3721799 () Bool)

(declare-fun res!1512533 () Bool)

(declare-fun e!2303978 () Bool)

(assert (=> b!3721799 (=> (not res!1512533) (not e!2303978))))

(declare-datatypes ((C!21926 0))(
  ( (C!21927 (val!13011 Int)) )
))
(declare-datatypes ((Regex!10870 0))(
  ( (ElementMatch!10870 (c!643746 C!21926)) (Concat!17141 (regOne!22252 Regex!10870) (regTwo!22252 Regex!10870)) (EmptyExpr!10870) (Star!10870 (reg!11199 Regex!10870)) (EmptyLang!10870) (Union!10870 (regOne!22253 Regex!10870) (regTwo!22253 Regex!10870)) )
))
(declare-fun r!26968 () Regex!10870)

(declare-fun cNot!42 () C!21926)

(declare-datatypes ((List!39751 0))(
  ( (Nil!39627) (Cons!39627 (h!45047 C!21926) (t!302434 List!39751)) )
))
(declare-fun contains!7963 (List!39751 C!21926) Bool)

(declare-fun usedCharacters!1133 (Regex!10870) List!39751)

(assert (=> b!3721799 (= res!1512533 (not (contains!7963 (usedCharacters!1133 r!26968) cNot!42)))))

(declare-fun b!3721800 () Bool)

(declare-fun res!1512532 () Bool)

(assert (=> b!3721800 (=> (not res!1512532) (not e!2303978))))

(assert (=> b!3721800 (= res!1512532 (and (not (is-EmptyExpr!10870 r!26968)) (not (is-EmptyLang!10870 r!26968)) (not (is-ElementMatch!10870 r!26968)) (is-Union!10870 r!26968)))))

(declare-fun b!3721801 () Bool)

(declare-fun e!2303977 () Bool)

(declare-fun tp_is_empty!18755 () Bool)

(assert (=> b!3721801 (= e!2303977 tp_is_empty!18755)))

(declare-fun b!3721802 () Bool)

(declare-fun tp!1131865 () Bool)

(declare-fun tp!1131868 () Bool)

(assert (=> b!3721802 (= e!2303977 (and tp!1131865 tp!1131868))))

(declare-fun res!1512531 () Bool)

(assert (=> start!350492 (=> (not res!1512531) (not e!2303978))))

(declare-fun validRegex!4977 (Regex!10870) Bool)

(assert (=> start!350492 (= res!1512531 (validRegex!4977 r!26968))))

(assert (=> start!350492 e!2303978))

(assert (=> start!350492 e!2303977))

(assert (=> start!350492 tp_is_empty!18755))

(declare-fun b!3721803 () Bool)

(assert (=> b!3721803 (= e!2303978 (not true))))

(declare-fun c!13797 () C!21926)

(declare-fun derivativeStep!3331 (Regex!10870 C!21926) Regex!10870)

(assert (=> b!3721803 (not (contains!7963 (usedCharacters!1133 (derivativeStep!3331 (regTwo!22253 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57530 0))(
  ( (Unit!57531) )
))
(declare-fun lt!1298041 () Unit!57530)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!21 (Regex!10870 C!21926 C!21926) Unit!57530)

(assert (=> b!3721803 (= lt!1298041 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!21 (regTwo!22253 r!26968) c!13797 cNot!42))))

(assert (=> b!3721803 (not (contains!7963 (usedCharacters!1133 (derivativeStep!3331 (regOne!22253 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298042 () Unit!57530)

(assert (=> b!3721803 (= lt!1298042 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!21 (regOne!22253 r!26968) c!13797 cNot!42))))

(declare-fun b!3721804 () Bool)

(declare-fun tp!1131869 () Bool)

(declare-fun tp!1131866 () Bool)

(assert (=> b!3721804 (= e!2303977 (and tp!1131869 tp!1131866))))

(declare-fun b!3721805 () Bool)

(declare-fun tp!1131867 () Bool)

(assert (=> b!3721805 (= e!2303977 tp!1131867)))

(assert (= (and start!350492 res!1512531) b!3721799))

(assert (= (and b!3721799 res!1512533) b!3721800))

(assert (= (and b!3721800 res!1512532) b!3721803))

(assert (= (and start!350492 (is-ElementMatch!10870 r!26968)) b!3721801))

(assert (= (and start!350492 (is-Concat!17141 r!26968)) b!3721804))

(assert (= (and start!350492 (is-Star!10870 r!26968)) b!3721805))

(assert (= (and start!350492 (is-Union!10870 r!26968)) b!3721802))

(declare-fun m!4225817 () Bool)

(assert (=> b!3721799 m!4225817))

(assert (=> b!3721799 m!4225817))

(declare-fun m!4225819 () Bool)

(assert (=> b!3721799 m!4225819))

(declare-fun m!4225821 () Bool)

(assert (=> start!350492 m!4225821))

(declare-fun m!4225823 () Bool)

(assert (=> b!3721803 m!4225823))

(declare-fun m!4225825 () Bool)

(assert (=> b!3721803 m!4225825))

(declare-fun m!4225827 () Bool)

(assert (=> b!3721803 m!4225827))

(declare-fun m!4225829 () Bool)

(assert (=> b!3721803 m!4225829))

(declare-fun m!4225831 () Bool)

(assert (=> b!3721803 m!4225831))

(assert (=> b!3721803 m!4225823))

(declare-fun m!4225833 () Bool)

(assert (=> b!3721803 m!4225833))

(assert (=> b!3721803 m!4225831))

(declare-fun m!4225835 () Bool)

(assert (=> b!3721803 m!4225835))

(declare-fun m!4225837 () Bool)

(assert (=> b!3721803 m!4225837))

(assert (=> b!3721803 m!4225829))

(assert (=> b!3721803 m!4225835))

(push 1)

(assert (not start!350492))

(assert tp_is_empty!18755)

(assert (not b!3721804))

(assert (not b!3721803))

(assert (not b!3721802))

(assert (not b!3721799))

(assert (not b!3721805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

