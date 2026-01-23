; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350572 () Bool)

(assert start!350572)

(declare-fun b!3722815 () Bool)

(declare-fun e!2304420 () Bool)

(declare-fun tp!1132245 () Bool)

(declare-fun tp!1132247 () Bool)

(assert (=> b!3722815 (= e!2304420 (and tp!1132245 tp!1132247))))

(declare-fun b!3722816 () Bool)

(declare-fun tp_is_empty!18787 () Bool)

(assert (=> b!3722816 (= e!2304420 tp_is_empty!18787)))

(declare-fun b!3722817 () Bool)

(declare-fun tp!1132248 () Bool)

(declare-fun tp!1132246 () Bool)

(assert (=> b!3722817 (= e!2304420 (and tp!1132248 tp!1132246))))

(declare-fun b!3722818 () Bool)

(declare-fun e!2304419 () Bool)

(assert (=> b!3722818 (= e!2304419 (not true))))

(declare-datatypes ((C!21958 0))(
  ( (C!21959 (val!13027 Int)) )
))
(declare-datatypes ((Regex!10886 0))(
  ( (ElementMatch!10886 (c!643958 C!21958)) (Concat!17157 (regOne!22284 Regex!10886) (regTwo!22284 Regex!10886)) (EmptyExpr!10886) (Star!10886 (reg!11215 Regex!10886)) (EmptyLang!10886) (Union!10886 (regOne!22285 Regex!10886) (regTwo!22285 Regex!10886)) )
))
(declare-fun r!26968 () Regex!10886)

(declare-fun c!13797 () C!21958)

(declare-fun cNot!42 () C!21958)

(declare-datatypes ((List!39767 0))(
  ( (Nil!39643) (Cons!39643 (h!45063 C!21958) (t!302450 List!39767)) )
))
(declare-fun contains!7979 (List!39767 C!21958) Bool)

(declare-fun usedCharacters!1149 (Regex!10886) List!39767)

(declare-fun derivativeStep!3343 (Regex!10886 C!21958) Regex!10886)

(assert (=> b!3722818 (not (contains!7979 (usedCharacters!1149 (derivativeStep!3343 (regTwo!22284 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57554 0))(
  ( (Unit!57555) )
))
(declare-fun lt!1298189 () Unit!57554)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!33 (Regex!10886 C!21958 C!21958) Unit!57554)

(assert (=> b!3722818 (= lt!1298189 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!33 (regTwo!22284 r!26968) c!13797 cNot!42))))

(assert (=> b!3722818 (not (contains!7979 (usedCharacters!1149 (derivativeStep!3343 (regOne!22284 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298190 () Unit!57554)

(assert (=> b!3722818 (= lt!1298190 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!33 (regOne!22284 r!26968) c!13797 cNot!42))))

(declare-fun res!1512852 () Bool)

(assert (=> start!350572 (=> (not res!1512852) (not e!2304419))))

(declare-fun validRegex!4993 (Regex!10886) Bool)

(assert (=> start!350572 (= res!1512852 (validRegex!4993 r!26968))))

(assert (=> start!350572 e!2304419))

(assert (=> start!350572 e!2304420))

(assert (=> start!350572 tp_is_empty!18787))

(declare-fun b!3722819 () Bool)

(declare-fun tp!1132249 () Bool)

(assert (=> b!3722819 (= e!2304420 tp!1132249)))

(declare-fun b!3722820 () Bool)

(declare-fun res!1512854 () Bool)

(assert (=> b!3722820 (=> (not res!1512854) (not e!2304419))))

(assert (=> b!3722820 (= res!1512854 (and (not (is-EmptyExpr!10886 r!26968)) (not (is-EmptyLang!10886 r!26968)) (not (is-ElementMatch!10886 r!26968)) (not (is-Union!10886 r!26968)) (not (is-Star!10886 r!26968))))))

(declare-fun b!3722821 () Bool)

(declare-fun res!1512853 () Bool)

(assert (=> b!3722821 (=> (not res!1512853) (not e!2304419))))

(assert (=> b!3722821 (= res!1512853 (not (contains!7979 (usedCharacters!1149 r!26968) cNot!42)))))

(declare-fun b!3722822 () Bool)

(declare-fun res!1512851 () Bool)

(assert (=> b!3722822 (=> (not res!1512851) (not e!2304419))))

(declare-fun nullable!3794 (Regex!10886) Bool)

(assert (=> b!3722822 (= res!1512851 (nullable!3794 (regOne!22284 r!26968)))))

(assert (= (and start!350572 res!1512852) b!3722821))

(assert (= (and b!3722821 res!1512853) b!3722820))

(assert (= (and b!3722820 res!1512854) b!3722822))

(assert (= (and b!3722822 res!1512851) b!3722818))

(assert (= (and start!350572 (is-ElementMatch!10886 r!26968)) b!3722816))

(assert (= (and start!350572 (is-Concat!17157 r!26968)) b!3722817))

(assert (= (and start!350572 (is-Star!10886 r!26968)) b!3722819))

(assert (= (and start!350572 (is-Union!10886 r!26968)) b!3722815))

(declare-fun m!4226445 () Bool)

(assert (=> b!3722818 m!4226445))

(declare-fun m!4226447 () Bool)

(assert (=> b!3722818 m!4226447))

(declare-fun m!4226449 () Bool)

(assert (=> b!3722818 m!4226449))

(declare-fun m!4226451 () Bool)

(assert (=> b!3722818 m!4226451))

(assert (=> b!3722818 m!4226449))

(assert (=> b!3722818 m!4226445))

(declare-fun m!4226453 () Bool)

(assert (=> b!3722818 m!4226453))

(assert (=> b!3722818 m!4226453))

(declare-fun m!4226455 () Bool)

(assert (=> b!3722818 m!4226455))

(assert (=> b!3722818 m!4226455))

(declare-fun m!4226457 () Bool)

(assert (=> b!3722818 m!4226457))

(declare-fun m!4226459 () Bool)

(assert (=> b!3722818 m!4226459))

(declare-fun m!4226461 () Bool)

(assert (=> start!350572 m!4226461))

(declare-fun m!4226463 () Bool)

(assert (=> b!3722821 m!4226463))

(assert (=> b!3722821 m!4226463))

(declare-fun m!4226465 () Bool)

(assert (=> b!3722821 m!4226465))

(declare-fun m!4226467 () Bool)

(assert (=> b!3722822 m!4226467))

(push 1)

(assert (not b!3722817))

(assert (not b!3722822))

(assert tp_is_empty!18787)

(assert (not b!3722815))

(assert (not b!3722821))

(assert (not b!3722818))

(assert (not b!3722819))

(assert (not start!350572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

