; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295882 () Bool)

(assert start!295882)

(declare-fun b!3139274 () Bool)

(declare-fun e!1958397 () Bool)

(declare-fun tp!982928 () Bool)

(assert (=> b!3139274 (= e!1958397 tp!982928)))

(declare-fun b!3139275 () Bool)

(declare-fun res!1282527 () Bool)

(declare-fun e!1958398 () Bool)

(assert (=> b!3139275 (=> (not res!1282527) (not e!1958398))))

(declare-datatypes ((C!19502 0))(
  ( (C!19503 (val!11787 Int)) )
))
(declare-datatypes ((Regex!9658 0))(
  ( (ElementMatch!9658 (c!527614 C!19502)) (Concat!14979 (regOne!19828 Regex!9658) (regTwo!19828 Regex!9658)) (EmptyExpr!9658) (Star!9658 (reg!9987 Regex!9658)) (EmptyLang!9658) (Union!9658 (regOne!19829 Regex!9658) (regTwo!19829 Regex!9658)) )
))
(declare-fun r!17345 () Regex!9658)

(assert (=> b!3139275 (= res!1282527 (and (not (is-EmptyLang!9658 r!17345)) (is-ElementMatch!9658 r!17345)))))

(declare-fun res!1282525 () Bool)

(assert (=> start!295882 (=> (not res!1282525) (not e!1958398))))

(declare-fun validRegex!4391 (Regex!9658) Bool)

(assert (=> start!295882 (= res!1282525 (validRegex!4391 r!17345))))

(assert (=> start!295882 e!1958398))

(assert (=> start!295882 e!1958397))

(declare-fun b!3139276 () Bool)

(declare-fun tp_is_empty!16879 () Bool)

(assert (=> b!3139276 (= e!1958397 tp_is_empty!16879)))

(declare-fun b!3139277 () Bool)

(declare-fun e!1958396 () Bool)

(declare-fun nullable!3292 (Regex!9658) Bool)

(assert (=> b!3139277 (= e!1958396 (not (= (nullable!3292 r!17345) (nullable!3292 r!17345))))))

(declare-fun b!3139278 () Bool)

(assert (=> b!3139278 (= e!1958398 e!1958396)))

(declare-fun res!1282526 () Bool)

(assert (=> b!3139278 (=> res!1282526 e!1958396)))

(assert (=> b!3139278 (= res!1282526 (not (validRegex!4391 r!17345)))))

(declare-fun b!3139279 () Bool)

(declare-fun tp!982926 () Bool)

(declare-fun tp!982927 () Bool)

(assert (=> b!3139279 (= e!1958397 (and tp!982926 tp!982927))))

(declare-fun b!3139280 () Bool)

(declare-fun tp!982930 () Bool)

(declare-fun tp!982929 () Bool)

(assert (=> b!3139280 (= e!1958397 (and tp!982930 tp!982929))))

(assert (= (and start!295882 res!1282525) b!3139275))

(assert (= (and b!3139275 res!1282527) b!3139278))

(assert (= (and b!3139278 (not res!1282526)) b!3139277))

(assert (= (and start!295882 (is-ElementMatch!9658 r!17345)) b!3139276))

(assert (= (and start!295882 (is-Concat!14979 r!17345)) b!3139280))

(assert (= (and start!295882 (is-Star!9658 r!17345)) b!3139274))

(assert (= (and start!295882 (is-Union!9658 r!17345)) b!3139279))

(declare-fun m!3417537 () Bool)

(assert (=> start!295882 m!3417537))

(declare-fun m!3417539 () Bool)

(assert (=> b!3139277 m!3417539))

(assert (=> b!3139278 m!3417537))

(push 1)

(assert (not b!3139278))

(assert (not b!3139277))

(assert (not b!3139280))

(assert (not b!3139279))

(assert (not start!295882))

(assert tp_is_empty!16879)

(assert (not b!3139274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

