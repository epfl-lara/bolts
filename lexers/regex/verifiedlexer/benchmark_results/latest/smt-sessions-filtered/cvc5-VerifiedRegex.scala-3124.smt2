; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184384 () Bool)

(assert start!184384)

(declare-fun b!1847347 () Bool)

(assert (=> b!1847347 true))

(assert (=> b!1847347 true))

(declare-fun b!1847342 () Bool)

(declare-fun e!1180540 () Bool)

(assert (=> b!1847342 (= e!1180540 true)))

(declare-datatypes ((C!10150 0))(
  ( (C!10151 (val!5801 Int)) )
))
(declare-datatypes ((List!20481 0))(
  ( (Nil!20409) (Cons!20409 (h!25810 C!10150) (t!172254 List!20481)) )
))
(declare-fun lt!715094 () List!20481)

(declare-fun lambda!72989 () Int)

(declare-fun pickWitness!253 (Int) List!20481)

(assert (=> b!1847342 (= lt!715094 (pickWitness!253 lambda!72989))))

(declare-fun b!1847343 () Bool)

(declare-fun e!1180542 () Bool)

(declare-fun tp_is_empty!8449 () Bool)

(declare-fun tp!522331 () Bool)

(assert (=> b!1847343 (= e!1180542 (and tp_is_empty!8449 tp!522331))))

(declare-fun b!1847344 () Bool)

(declare-fun e!1180543 () Bool)

(assert (=> b!1847344 (= e!1180543 tp_is_empty!8449)))

(declare-fun b!1847345 () Bool)

(declare-fun tp!522329 () Bool)

(declare-fun tp!522328 () Bool)

(assert (=> b!1847345 (= e!1180543 (and tp!522329 tp!522328))))

(declare-fun b!1847346 () Bool)

(declare-fun tp!522332 () Bool)

(declare-fun tp!522330 () Bool)

(assert (=> b!1847346 (= e!1180543 (and tp!522332 tp!522330))))

(declare-fun e!1180541 () Bool)

(assert (=> b!1847347 (= e!1180541 (not e!1180540))))

(declare-fun res!829443 () Bool)

(assert (=> b!1847347 (=> res!829443 e!1180540)))

(declare-fun Exists!954 (Int) Bool)

(assert (=> b!1847347 (= res!829443 (not (Exists!954 lambda!72989)))))

(assert (=> b!1847347 (Exists!954 lambda!72989)))

(declare-datatypes ((Unit!35075 0))(
  ( (Unit!35076) )
))
(declare-fun lt!715093 () Unit!35075)

(declare-datatypes ((Regex!5000 0))(
  ( (ElementMatch!5000 (c!301625 C!10150)) (Concat!8778 (regOne!10512 Regex!5000) (regTwo!10512 Regex!5000)) (EmptyExpr!5000) (Star!5000 (reg!5329 Regex!5000)) (EmptyLang!5000) (Union!5000 (regOne!10513 Regex!5000) (regTwo!10513 Regex!5000)) )
))
(declare-fun r!26091 () Regex!5000)

(declare-fun prefix!1614 () List!20481)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!272 (Regex!5000 List!20481) Unit!35075)

(assert (=> b!1847347 (= lt!715093 (lemmaPrefixMatchThenExistsStringThatMatches!272 r!26091 prefix!1614))))

(declare-fun b!1847348 () Bool)

(declare-fun tp!522333 () Bool)

(assert (=> b!1847348 (= e!1180543 tp!522333)))

(declare-fun b!1847349 () Bool)

(declare-fun res!829441 () Bool)

(assert (=> b!1847349 (=> (not res!829441) (not e!1180541))))

(declare-fun prefixMatch!777 (Regex!5000 List!20481) Bool)

(assert (=> b!1847349 (= res!829441 (prefixMatch!777 r!26091 prefix!1614))))

(declare-fun b!1847350 () Bool)

(declare-fun res!829444 () Bool)

(assert (=> b!1847350 (=> (not res!829444) (not e!1180541))))

(declare-fun c!13459 () C!10150)

(declare-fun contains!3765 (List!20481 C!10150) Bool)

(declare-fun usedCharacters!305 (Regex!5000) List!20481)

(assert (=> b!1847350 (= res!829444 (not (contains!3765 (usedCharacters!305 r!26091) c!13459)))))

(declare-fun res!829445 () Bool)

(assert (=> start!184384 (=> (not res!829445) (not e!1180541))))

(declare-fun validRegex!2044 (Regex!5000) Bool)

(assert (=> start!184384 (= res!829445 (validRegex!2044 r!26091))))

(assert (=> start!184384 e!1180541))

(assert (=> start!184384 e!1180543))

(assert (=> start!184384 e!1180542))

(assert (=> start!184384 tp_is_empty!8449))

(declare-fun b!1847341 () Bool)

(declare-fun res!829442 () Bool)

(assert (=> b!1847341 (=> (not res!829442) (not e!1180541))))

(assert (=> b!1847341 (= res!829442 (contains!3765 prefix!1614 c!13459))))

(assert (= (and start!184384 res!829445) b!1847341))

(assert (= (and b!1847341 res!829442) b!1847350))

(assert (= (and b!1847350 res!829444) b!1847349))

(assert (= (and b!1847349 res!829441) b!1847347))

(assert (= (and b!1847347 (not res!829443)) b!1847342))

(assert (= (and start!184384 (is-ElementMatch!5000 r!26091)) b!1847344))

(assert (= (and start!184384 (is-Concat!8778 r!26091)) b!1847346))

(assert (= (and start!184384 (is-Star!5000 r!26091)) b!1847348))

(assert (= (and start!184384 (is-Union!5000 r!26091)) b!1847345))

(assert (= (and start!184384 (is-Cons!20409 prefix!1614)) b!1847343))

(declare-fun m!2275625 () Bool)

(assert (=> start!184384 m!2275625))

(declare-fun m!2275627 () Bool)

(assert (=> b!1847349 m!2275627))

(declare-fun m!2275629 () Bool)

(assert (=> b!1847342 m!2275629))

(declare-fun m!2275631 () Bool)

(assert (=> b!1847341 m!2275631))

(declare-fun m!2275633 () Bool)

(assert (=> b!1847350 m!2275633))

(assert (=> b!1847350 m!2275633))

(declare-fun m!2275635 () Bool)

(assert (=> b!1847350 m!2275635))

(declare-fun m!2275637 () Bool)

(assert (=> b!1847347 m!2275637))

(assert (=> b!1847347 m!2275637))

(declare-fun m!2275639 () Bool)

(assert (=> b!1847347 m!2275639))

(push 1)

(assert (not b!1847346))

(assert (not start!184384))

(assert (not b!1847348))

(assert (not b!1847345))

(assert (not b!1847349))

(assert (not b!1847343))

(assert (not b!1847342))

(assert (not b!1847350))

(assert (not b!1847341))

(assert tp_is_empty!8449)

(assert (not b!1847347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

