; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108084 () Bool)

(assert start!108084)

(declare-fun lt!414594 () Bool)

(declare-datatypes ((B!1395 0))(
  ( (B!1396 (val!4055 Int)) )
))
(declare-datatypes ((List!12302 0))(
  ( (Nil!12244) (Cons!12244 (h!17645 B!1395) (t!112686 List!12302)) )
))
(declare-fun l!3821 () List!12302)

(declare-fun e!9491 () B!1395)

(declare-fun contains!2061 (List!12302 B!1395) Bool)

(assert (=> start!108084 (= lt!414594 (contains!2061 l!3821 e!9491))))

(assert (=> start!108084 false))

(declare-fun e!777153 () Bool)

(assert (=> start!108084 e!777153))

(declare-fun tp_is_empty!6253 () Bool)

(assert (=> start!108084 tp_is_empty!6253))

(declare-fun b!1211362 () Bool)

(declare-fun tp!343008 () Bool)

(assert (=> b!1211362 (= e!777153 (and tp_is_empty!6253 tp!343008))))

(assert (= (and start!108084 (is-Cons!12244 l!3821)) b!1211362))

(declare-fun m!1387039 () Bool)

(assert (=> start!108084 m!1387039))

(push 1)

(assert (not start!108084))

(assert (not b!1211362))

(assert tp_is_empty!6253)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

