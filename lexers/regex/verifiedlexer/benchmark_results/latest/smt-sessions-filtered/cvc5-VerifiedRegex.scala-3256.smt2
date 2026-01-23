; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187800 () Bool)

(assert start!187800)

(declare-fun res!838404 () Bool)

(declare-fun e!1195572 () Bool)

(assert (=> start!187800 (=> (not res!838404) (not e!1195572))))

(declare-datatypes ((C!10318 0))(
  ( (C!10319 (val!6047 Int)) )
))
(declare-datatypes ((List!20884 0))(
  ( (Nil!20802) (Cons!20802 (h!26203 C!10318) (t!173101 List!20884)) )
))
(declare-fun input!3792 () List!20884)

(declare-fun isEmpty!12960 (List!20884) Bool)

(assert (=> start!187800 (= res!838404 (not (isEmpty!12960 input!3792)))))

(assert (=> start!187800 e!1195572))

(declare-fun e!1195573 () Bool)

(assert (=> start!187800 e!1195573))

(declare-fun b!1873967 () Bool)

(assert (=> b!1873967 (= e!1195572 (= input!3792 Nil!20802))))

(declare-fun b!1873968 () Bool)

(declare-fun tp_is_empty!8861 () Bool)

(declare-fun tp!533419 () Bool)

(assert (=> b!1873968 (= e!1195573 (and tp_is_empty!8861 tp!533419))))

(assert (= (and start!187800 res!838404) b!1873967))

(assert (= (and start!187800 (is-Cons!20802 input!3792)) b!1873968))

(declare-fun m!2299137 () Bool)

(assert (=> start!187800 m!2299137))

(push 1)

(assert (not start!187800))

(assert (not b!1873968))

(assert tp_is_empty!8861)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572705 () Bool)

(assert (=> d!572705 (= (isEmpty!12960 input!3792) (is-Nil!20802 input!3792))))

(assert (=> start!187800 d!572705))

(declare-fun b!1873979 () Bool)

(declare-fun e!1195582 () Bool)

(declare-fun tp!533425 () Bool)

(assert (=> b!1873979 (= e!1195582 (and tp_is_empty!8861 tp!533425))))

(assert (=> b!1873968 (= tp!533419 e!1195582)))

(assert (= (and b!1873968 (is-Cons!20802 (t!173101 input!3792))) b!1873979))

(push 1)

(assert (not b!1873979))

(assert tp_is_empty!8861)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

