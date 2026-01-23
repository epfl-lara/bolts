; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185276 () Bool)

(assert start!185276)

(declare-fun b!1855929 () Bool)

(declare-fun e!1185646 () Bool)

(declare-fun tp!527883 () Bool)

(declare-fun tp!527880 () Bool)

(assert (=> b!1855929 (= e!1185646 (and tp!527883 tp!527880))))

(declare-fun b!1855930 () Bool)

(declare-fun tp_is_empty!8521 () Bool)

(assert (=> b!1855930 (= e!1185646 tp_is_empty!8521)))

(declare-fun b!1855931 () Bool)

(declare-fun res!831948 () Bool)

(declare-fun e!1185648 () Bool)

(assert (=> b!1855931 (=> (not res!831948) (not e!1185648))))

(declare-datatypes ((C!10250 0))(
  ( (C!10251 (val!5861 Int)) )
))
(declare-datatypes ((Regex!5050 0))(
  ( (ElementMatch!5050 (c!302386 C!10250)) (Concat!8849 (regOne!10612 Regex!5050) (regTwo!10612 Regex!5050)) (EmptyExpr!5050) (Star!5050 (reg!5379 Regex!5050)) (EmptyLang!5050) (Union!5050 (regOne!10613 Regex!5050) (regTwo!10613 Regex!5050)) )
))
(declare-fun r!19073 () Regex!5050)

(declare-datatypes ((List!20664 0))(
  ( (Nil!20586) (Cons!20586 (h!25987 C!10250) (t!172531 List!20664)) )
))
(declare-fun s!13412 () List!20664)

(declare-fun matchR!2461 (Regex!5050 List!20664) Bool)

(assert (=> b!1855931 (= res!831948 (matchR!2461 r!19073 s!13412))))

(declare-fun res!831946 () Bool)

(assert (=> start!185276 (=> (not res!831946) (not e!1185648))))

(declare-fun validRegex!2072 (Regex!5050) Bool)

(assert (=> start!185276 (= res!831946 (validRegex!2072 r!19073))))

(assert (=> start!185276 e!1185648))

(assert (=> start!185276 e!1185646))

(declare-fun e!1185647 () Bool)

(assert (=> start!185276 e!1185647))

(declare-fun e!1185645 () Bool)

(assert (=> start!185276 e!1185645))

(declare-fun b!1855932 () Bool)

(declare-fun tp!527879 () Bool)

(assert (=> b!1855932 (= e!1185647 (and tp_is_empty!8521 tp!527879))))

(declare-fun b!1855933 () Bool)

(declare-fun tp!527882 () Bool)

(assert (=> b!1855933 (= e!1185646 tp!527882)))

(declare-fun b!1855934 () Bool)

(declare-fun tp!527878 () Bool)

(assert (=> b!1855934 (= e!1185645 (and tp_is_empty!8521 tp!527878))))

(declare-fun b!1855935 () Bool)

(declare-fun tp!527881 () Bool)

(declare-fun tp!527877 () Bool)

(assert (=> b!1855935 (= e!1185646 (and tp!527881 tp!527877))))

(declare-fun b!1855936 () Bool)

(declare-fun res!831947 () Bool)

(assert (=> b!1855936 (=> (not res!831947) (not e!1185648))))

(declare-fun prefix!1439 () List!20664)

(declare-fun isPrefix!1900 (List!20664 List!20664) Bool)

(assert (=> b!1855936 (= res!831947 (isPrefix!1900 prefix!1439 s!13412))))

(declare-fun b!1855937 () Bool)

(assert (=> b!1855937 (= e!1185648 false)))

(declare-fun lt!716903 () Bool)

(declare-fun prefixMatch!799 (Regex!5050 List!20664) Bool)

(assert (=> b!1855937 (= lt!716903 (prefixMatch!799 r!19073 prefix!1439))))

(assert (= (and start!185276 res!831946) b!1855936))

(assert (= (and b!1855936 res!831947) b!1855931))

(assert (= (and b!1855931 res!831948) b!1855937))

(assert (= (and start!185276 (is-ElementMatch!5050 r!19073)) b!1855930))

(assert (= (and start!185276 (is-Concat!8849 r!19073)) b!1855935))

(assert (= (and start!185276 (is-Star!5050 r!19073)) b!1855933))

(assert (= (and start!185276 (is-Union!5050 r!19073)) b!1855929))

(assert (= (and start!185276 (is-Cons!20586 prefix!1439)) b!1855932))

(assert (= (and start!185276 (is-Cons!20586 s!13412)) b!1855934))

(declare-fun m!2281283 () Bool)

(assert (=> b!1855931 m!2281283))

(declare-fun m!2281285 () Bool)

(assert (=> start!185276 m!2281285))

(declare-fun m!2281287 () Bool)

(assert (=> b!1855936 m!2281287))

(declare-fun m!2281289 () Bool)

(assert (=> b!1855937 m!2281289))

(push 1)

(assert (not b!1855937))

(assert (not b!1855936))

(assert (not b!1855935))

(assert (not b!1855933))

(assert (not b!1855931))

(assert (not b!1855934))

(assert (not start!185276))

(assert (not b!1855932))

(assert tp_is_empty!8521)

(assert (not b!1855929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

