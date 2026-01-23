; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107210 () Bool)

(assert start!107210)

(declare-fun res!542197 () Bool)

(declare-fun e!772259 () Bool)

(assert (=> start!107210 (=> (not res!542197) (not e!772259))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107210 (= res!542197 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107210 e!772259))

(assert (=> start!107210 true))

(declare-fun e!772261 () Bool)

(assert (=> start!107210 e!772261))

(declare-fun e!772260 () Bool)

(assert (=> start!107210 e!772260))

(declare-datatypes ((T!21948 0))(
  ( (T!21949 (val!3911 Int)) )
))
(declare-datatypes ((List!12090 0))(
  ( (Nil!12066) (Cons!12066 (h!17467 T!21948) (t!112506 List!12090)) )
))
(declare-fun l!2744 () List!12090)

(declare-fun b!1203715 () Bool)

(declare-fun r!2028 () List!12090)

(declare-fun lt!411450 () Int)

(declare-fun lt!411449 () Int)

(assert (=> b!1203715 (= e!772259 (and (<= until!61 (+ lt!411449 lt!411450)) (not (= l!2744 Nil!12066)) (not (= r!2028 Nil!12066)) (= until!61 0) (<= lt!411449 from!613) (let ((bdg!42880 (- from!613 lt!411449))) (let ((bdg!42881 (- until!61 lt!411449))) (or (> 0 bdg!42880) (> bdg!42880 bdg!42881) (> bdg!42881 lt!411450))))))))

(declare-fun size!9606 (List!12090) Int)

(assert (=> b!1203715 (= lt!411450 (size!9606 r!2028))))

(assert (=> b!1203715 (= lt!411449 (size!9606 l!2744))))

(declare-fun b!1203716 () Bool)

(declare-fun tp_is_empty!6025 () Bool)

(declare-fun tp!341666 () Bool)

(assert (=> b!1203716 (= e!772261 (and tp_is_empty!6025 tp!341666))))

(declare-fun b!1203717 () Bool)

(declare-fun tp!341667 () Bool)

(assert (=> b!1203717 (= e!772260 (and tp_is_empty!6025 tp!341667))))

(assert (= (and start!107210 res!542197) b!1203715))

(assert (= (and start!107210 (is-Cons!12066 l!2744)) b!1203716))

(assert (= (and start!107210 (is-Cons!12066 r!2028)) b!1203717))

(declare-fun m!1379353 () Bool)

(assert (=> b!1203715 m!1379353))

(declare-fun m!1379355 () Bool)

(assert (=> b!1203715 m!1379355))

(push 1)

(assert (not b!1203715))

(assert (not b!1203717))

(assert (not b!1203716))

(assert tp_is_empty!6025)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

