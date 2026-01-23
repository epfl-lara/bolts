; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184368 () Bool)

(assert start!184368)

(declare-fun b!1847093 () Bool)

(declare-fun res!829329 () Bool)

(declare-fun e!1180438 () Bool)

(assert (=> b!1847093 (=> (not res!829329) (not e!1180438))))

(declare-datatypes ((C!10134 0))(
  ( (C!10135 (val!5793 Int)) )
))
(declare-datatypes ((List!20473 0))(
  ( (Nil!20401) (Cons!20401 (h!25802 C!10134) (t!172246 List!20473)) )
))
(declare-fun prefix!1614 () List!20473)

(declare-fun c!13459 () C!10134)

(declare-fun contains!3757 (List!20473 C!10134) Bool)

(assert (=> b!1847093 (= res!829329 (contains!3757 prefix!1614 c!13459))))

(declare-fun b!1847094 () Bool)

(declare-fun e!1180439 () Bool)

(declare-fun tp!522184 () Bool)

(assert (=> b!1847094 (= e!1180439 tp!522184)))

(declare-fun res!829330 () Bool)

(assert (=> start!184368 (=> (not res!829330) (not e!1180438))))

(declare-datatypes ((Regex!4992 0))(
  ( (ElementMatch!4992 (c!301617 C!10134)) (Concat!8770 (regOne!10496 Regex!4992) (regTwo!10496 Regex!4992)) (EmptyExpr!4992) (Star!4992 (reg!5321 Regex!4992)) (EmptyLang!4992) (Union!4992 (regOne!10497 Regex!4992) (regTwo!10497 Regex!4992)) )
))
(declare-fun r!26091 () Regex!4992)

(declare-fun validRegex!2036 (Regex!4992) Bool)

(assert (=> start!184368 (= res!829330 (validRegex!2036 r!26091))))

(assert (=> start!184368 e!1180438))

(assert (=> start!184368 e!1180439))

(declare-fun e!1180440 () Bool)

(assert (=> start!184368 e!1180440))

(declare-fun tp_is_empty!8433 () Bool)

(assert (=> start!184368 tp_is_empty!8433))

(declare-fun b!1847095 () Bool)

(declare-fun tp!522185 () Bool)

(declare-fun tp!522188 () Bool)

(assert (=> b!1847095 (= e!1180439 (and tp!522185 tp!522188))))

(declare-fun b!1847096 () Bool)

(declare-fun tp!522187 () Bool)

(declare-fun tp!522189 () Bool)

(assert (=> b!1847096 (= e!1180439 (and tp!522187 tp!522189))))

(declare-fun b!1847097 () Bool)

(declare-fun tp!522186 () Bool)

(assert (=> b!1847097 (= e!1180440 (and tp_is_empty!8433 tp!522186))))

(declare-fun b!1847098 () Bool)

(assert (=> b!1847098 (= e!1180439 tp_is_empty!8433)))

(declare-fun b!1847099 () Bool)

(assert (=> b!1847099 (= e!1180438 false)))

(declare-fun lt!715067 () Bool)

(declare-fun usedCharacters!297 (Regex!4992) List!20473)

(assert (=> b!1847099 (= lt!715067 (contains!3757 (usedCharacters!297 r!26091) c!13459))))

(assert (= (and start!184368 res!829330) b!1847093))

(assert (= (and b!1847093 res!829329) b!1847099))

(assert (= (and start!184368 (is-ElementMatch!4992 r!26091)) b!1847098))

(assert (= (and start!184368 (is-Concat!8770 r!26091)) b!1847096))

(assert (= (and start!184368 (is-Star!4992 r!26091)) b!1847094))

(assert (= (and start!184368 (is-Union!4992 r!26091)) b!1847095))

(assert (= (and start!184368 (is-Cons!20401 prefix!1614)) b!1847097))

(declare-fun m!2275533 () Bool)

(assert (=> b!1847093 m!2275533))

(declare-fun m!2275535 () Bool)

(assert (=> start!184368 m!2275535))

(declare-fun m!2275537 () Bool)

(assert (=> b!1847099 m!2275537))

(assert (=> b!1847099 m!2275537))

(declare-fun m!2275539 () Bool)

(assert (=> b!1847099 m!2275539))

(push 1)

(assert (not start!184368))

(assert (not b!1847097))

(assert (not b!1847099))

(assert (not b!1847096))

(assert (not b!1847094))

(assert (not b!1847093))

(assert tp_is_empty!8433)

(assert (not b!1847095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

