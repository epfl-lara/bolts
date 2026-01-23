; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184376 () Bool)

(assert start!184376)

(declare-fun b!1847194 () Bool)

(assert (=> b!1847194 true))

(assert (=> b!1847194 true))

(declare-fun b!1847189 () Bool)

(declare-fun e!1180476 () Bool)

(declare-fun tp!522260 () Bool)

(declare-fun tp!522258 () Bool)

(assert (=> b!1847189 (= e!1180476 (and tp!522260 tp!522258))))

(declare-fun b!1847190 () Bool)

(declare-fun res!829368 () Bool)

(declare-fun e!1180477 () Bool)

(assert (=> b!1847190 (=> (not res!829368) (not e!1180477))))

(declare-datatypes ((C!10142 0))(
  ( (C!10143 (val!5797 Int)) )
))
(declare-datatypes ((Regex!4996 0))(
  ( (ElementMatch!4996 (c!301621 C!10142)) (Concat!8774 (regOne!10504 Regex!4996) (regTwo!10504 Regex!4996)) (EmptyExpr!4996) (Star!4996 (reg!5325 Regex!4996)) (EmptyLang!4996) (Union!4996 (regOne!10505 Regex!4996) (regTwo!10505 Regex!4996)) )
))
(declare-fun r!26091 () Regex!4996)

(declare-datatypes ((List!20477 0))(
  ( (Nil!20405) (Cons!20405 (h!25806 C!10142) (t!172250 List!20477)) )
))
(declare-fun prefix!1614 () List!20477)

(declare-fun prefixMatch!773 (Regex!4996 List!20477) Bool)

(assert (=> b!1847190 (= res!829368 (prefixMatch!773 r!26091 prefix!1614))))

(declare-fun b!1847191 () Bool)

(declare-fun tp!522261 () Bool)

(declare-fun tp!522257 () Bool)

(assert (=> b!1847191 (= e!1180476 (and tp!522261 tp!522257))))

(declare-fun b!1847193 () Bool)

(declare-fun tp!522259 () Bool)

(assert (=> b!1847193 (= e!1180476 tp!522259)))

(assert (=> b!1847194 (= e!1180477 (not true))))

(declare-fun lambda!72965 () Int)

(declare-fun Exists!950 (Int) Bool)

(assert (=> b!1847194 (Exists!950 lambda!72965)))

(declare-datatypes ((Unit!35067 0))(
  ( (Unit!35068) )
))
(declare-fun lt!715079 () Unit!35067)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!268 (Regex!4996 List!20477) Unit!35067)

(assert (=> b!1847194 (= lt!715079 (lemmaPrefixMatchThenExistsStringThatMatches!268 r!26091 prefix!1614))))

(declare-fun b!1847195 () Bool)

(declare-fun e!1180478 () Bool)

(declare-fun tp_is_empty!8441 () Bool)

(declare-fun tp!522256 () Bool)

(assert (=> b!1847195 (= e!1180478 (and tp_is_empty!8441 tp!522256))))

(declare-fun b!1847196 () Bool)

(declare-fun res!829367 () Bool)

(assert (=> b!1847196 (=> (not res!829367) (not e!1180477))))

(declare-fun c!13459 () C!10142)

(declare-fun contains!3761 (List!20477 C!10142) Bool)

(declare-fun usedCharacters!301 (Regex!4996) List!20477)

(assert (=> b!1847196 (= res!829367 (not (contains!3761 (usedCharacters!301 r!26091) c!13459)))))

(declare-fun b!1847197 () Bool)

(assert (=> b!1847197 (= e!1180476 tp_is_empty!8441)))

(declare-fun b!1847192 () Bool)

(declare-fun res!829366 () Bool)

(assert (=> b!1847192 (=> (not res!829366) (not e!1180477))))

(assert (=> b!1847192 (= res!829366 (contains!3761 prefix!1614 c!13459))))

(declare-fun res!829365 () Bool)

(assert (=> start!184376 (=> (not res!829365) (not e!1180477))))

(declare-fun validRegex!2040 (Regex!4996) Bool)

(assert (=> start!184376 (= res!829365 (validRegex!2040 r!26091))))

(assert (=> start!184376 e!1180477))

(assert (=> start!184376 e!1180476))

(assert (=> start!184376 e!1180478))

(assert (=> start!184376 tp_is_empty!8441))

(assert (= (and start!184376 res!829365) b!1847192))

(assert (= (and b!1847192 res!829366) b!1847196))

(assert (= (and b!1847196 res!829367) b!1847190))

(assert (= (and b!1847190 res!829368) b!1847194))

(assert (= (and start!184376 (is-ElementMatch!4996 r!26091)) b!1847197))

(assert (= (and start!184376 (is-Concat!8774 r!26091)) b!1847189))

(assert (= (and start!184376 (is-Star!4996 r!26091)) b!1847193))

(assert (= (and start!184376 (is-Union!4996 r!26091)) b!1847191))

(assert (= (and start!184376 (is-Cons!20405 prefix!1614)) b!1847195))

(declare-fun m!2275569 () Bool)

(assert (=> b!1847196 m!2275569))

(assert (=> b!1847196 m!2275569))

(declare-fun m!2275571 () Bool)

(assert (=> b!1847196 m!2275571))

(declare-fun m!2275573 () Bool)

(assert (=> start!184376 m!2275573))

(declare-fun m!2275575 () Bool)

(assert (=> b!1847192 m!2275575))

(declare-fun m!2275577 () Bool)

(assert (=> b!1847194 m!2275577))

(declare-fun m!2275579 () Bool)

(assert (=> b!1847194 m!2275579))

(declare-fun m!2275581 () Bool)

(assert (=> b!1847190 m!2275581))

(push 1)

(assert (not b!1847195))

(assert (not b!1847192))

(assert (not b!1847191))

(assert (not b!1847194))

(assert (not start!184376))

(assert (not b!1847196))

(assert (not b!1847193))

(assert (not b!1847189))

(assert tp_is_empty!8441)

(assert (not b!1847190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

