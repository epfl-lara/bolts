; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184372 () Bool)

(assert start!184372)

(declare-fun b!1847137 () Bool)

(declare-fun e!1180457 () Bool)

(declare-fun tp!522221 () Bool)

(declare-fun tp!522223 () Bool)

(assert (=> b!1847137 (= e!1180457 (and tp!522221 tp!522223))))

(declare-fun res!829344 () Bool)

(declare-fun e!1180458 () Bool)

(assert (=> start!184372 (=> (not res!829344) (not e!1180458))))

(declare-datatypes ((C!10138 0))(
  ( (C!10139 (val!5795 Int)) )
))
(declare-datatypes ((Regex!4994 0))(
  ( (ElementMatch!4994 (c!301619 C!10138)) (Concat!8772 (regOne!10500 Regex!4994) (regTwo!10500 Regex!4994)) (EmptyExpr!4994) (Star!4994 (reg!5323 Regex!4994)) (EmptyLang!4994) (Union!4994 (regOne!10501 Regex!4994) (regTwo!10501 Regex!4994)) )
))
(declare-fun r!26091 () Regex!4994)

(declare-fun validRegex!2038 (Regex!4994) Bool)

(assert (=> start!184372 (= res!829344 (validRegex!2038 r!26091))))

(assert (=> start!184372 e!1180458))

(assert (=> start!184372 e!1180457))

(declare-fun e!1180456 () Bool)

(assert (=> start!184372 e!1180456))

(declare-fun tp_is_empty!8437 () Bool)

(assert (=> start!184372 tp_is_empty!8437))

(declare-fun b!1847138 () Bool)

(declare-fun tp!522225 () Bool)

(declare-fun tp!522222 () Bool)

(assert (=> b!1847138 (= e!1180457 (and tp!522225 tp!522222))))

(declare-fun b!1847139 () Bool)

(declare-fun res!829345 () Bool)

(assert (=> b!1847139 (=> (not res!829345) (not e!1180458))))

(declare-datatypes ((List!20475 0))(
  ( (Nil!20403) (Cons!20403 (h!25804 C!10138) (t!172248 List!20475)) )
))
(declare-fun prefix!1614 () List!20475)

(declare-fun c!13459 () C!10138)

(declare-fun contains!3759 (List!20475 C!10138) Bool)

(assert (=> b!1847139 (= res!829345 (contains!3759 prefix!1614 c!13459))))

(declare-fun b!1847140 () Bool)

(assert (=> b!1847140 (= e!1180458 false)))

(declare-fun lt!715073 () Bool)

(declare-fun prefixMatch!771 (Regex!4994 List!20475) Bool)

(assert (=> b!1847140 (= lt!715073 (prefixMatch!771 r!26091 prefix!1614))))

(declare-fun b!1847141 () Bool)

(declare-fun tp!522220 () Bool)

(assert (=> b!1847141 (= e!1180456 (and tp_is_empty!8437 tp!522220))))

(declare-fun b!1847142 () Bool)

(declare-fun res!829343 () Bool)

(assert (=> b!1847142 (=> (not res!829343) (not e!1180458))))

(declare-fun usedCharacters!299 (Regex!4994) List!20475)

(assert (=> b!1847142 (= res!829343 (not (contains!3759 (usedCharacters!299 r!26091) c!13459)))))

(declare-fun b!1847143 () Bool)

(assert (=> b!1847143 (= e!1180457 tp_is_empty!8437)))

(declare-fun b!1847144 () Bool)

(declare-fun tp!522224 () Bool)

(assert (=> b!1847144 (= e!1180457 tp!522224)))

(assert (= (and start!184372 res!829344) b!1847139))

(assert (= (and b!1847139 res!829345) b!1847142))

(assert (= (and b!1847142 res!829343) b!1847140))

(assert (= (and start!184372 (is-ElementMatch!4994 r!26091)) b!1847143))

(assert (= (and start!184372 (is-Concat!8772 r!26091)) b!1847138))

(assert (= (and start!184372 (is-Star!4994 r!26091)) b!1847144))

(assert (= (and start!184372 (is-Union!4994 r!26091)) b!1847137))

(assert (= (and start!184372 (is-Cons!20403 prefix!1614)) b!1847141))

(declare-fun m!2275549 () Bool)

(assert (=> start!184372 m!2275549))

(declare-fun m!2275551 () Bool)

(assert (=> b!1847139 m!2275551))

(declare-fun m!2275553 () Bool)

(assert (=> b!1847140 m!2275553))

(declare-fun m!2275555 () Bool)

(assert (=> b!1847142 m!2275555))

(assert (=> b!1847142 m!2275555))

(declare-fun m!2275557 () Bool)

(assert (=> b!1847142 m!2275557))

(push 1)

(assert (not b!1847138))

(assert (not b!1847137))

(assert (not b!1847141))

(assert (not b!1847142))

(assert (not start!184372))

(assert tp_is_empty!8437)

(assert (not b!1847139))

(assert (not b!1847140))

(assert (not b!1847144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

