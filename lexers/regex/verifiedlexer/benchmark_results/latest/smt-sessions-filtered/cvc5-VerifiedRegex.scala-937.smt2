; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47776 () Bool)

(assert start!47776)

(declare-fun b!521305 () Bool)

(declare-fun e!312496 () Bool)

(declare-fun tp_is_empty!2779 () Bool)

(declare-fun tp!162082 () Bool)

(assert (=> b!521305 (= e!312496 (and tp_is_empty!2779 tp!162082))))

(declare-fun b!521304 () Bool)

(declare-fun e!312494 () Bool)

(declare-datatypes ((B!1183 0))(
  ( (B!1184 (val!1881 Int)) )
))
(declare-datatypes ((List!4829 0))(
  ( (Nil!4819) (Cons!4819 (h!10220 B!1183) (t!73419 List!4829)) )
))
(declare-fun acc!308 () List!4829)

(declare-fun list!41 () List!4829)

(declare-fun contains!1167 (List!4829 B!1183) Bool)

(assert (=> b!521304 (= e!312494 (not (contains!1167 acc!308 (h!10220 list!41))))))

(declare-fun res!221446 () Bool)

(declare-fun e!312495 () Bool)

(assert (=> start!47776 (=> (not res!221446) (not e!312495))))

(declare-fun noDuplicate!170 (List!4829) Bool)

(assert (=> start!47776 (= res!221446 (noDuplicate!170 acc!308))))

(assert (=> start!47776 e!312495))

(assert (=> start!47776 e!312496))

(declare-fun e!312493 () Bool)

(assert (=> start!47776 e!312493))

(declare-fun b!521303 () Bool)

(assert (=> b!521303 (= e!312495 false)))

(declare-fun lt!217118 () Bool)

(assert (=> b!521303 (= lt!217118 e!312494)))

(declare-fun res!221447 () Bool)

(assert (=> b!521303 (=> res!221447 e!312494)))

(assert (=> b!521303 (= res!221447 (not (is-Cons!4819 list!41)))))

(declare-fun b!521306 () Bool)

(declare-fun tp!162083 () Bool)

(assert (=> b!521306 (= e!312493 (and tp_is_empty!2779 tp!162083))))

(assert (= (and start!47776 res!221446) b!521303))

(assert (= (and b!521303 (not res!221447)) b!521304))

(assert (= (and start!47776 (is-Cons!4819 acc!308)) b!521305))

(assert (= (and start!47776 (is-Cons!4819 list!41)) b!521306))

(declare-fun m!767861 () Bool)

(assert (=> b!521304 m!767861))

(declare-fun m!767863 () Bool)

(assert (=> start!47776 m!767863))

(push 1)

(assert (not b!521305))

(assert (not b!521304))

(assert (not start!47776))

(assert (not b!521306))

(assert tp_is_empty!2779)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

