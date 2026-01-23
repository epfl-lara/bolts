; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187330 () Bool)

(assert start!187330)

(declare-fun res!837616 () Bool)

(declare-fun e!1193688 () Bool)

(assert (=> start!187330 (=> (not res!837616) (not e!1193688))))

(declare-datatypes ((T!33310 0))(
  ( (T!33311 (val!5969 Int)) )
))
(declare-datatypes ((List!20786 0))(
  ( (Nil!20704) (Cons!20704 (h!26105 T!33310) (t!173003 List!20786)) )
))
(declare-fun l!2791 () List!20786)

(declare-fun size!16437 (List!20786) Int)

(assert (=> start!187330 (= res!837616 (> (size!16437 l!2791) 0))))

(assert (=> start!187330 e!1193688))

(declare-fun e!1193689 () Bool)

(assert (=> start!187330 e!1193689))

(declare-fun b!1871047 () Bool)

(assert (=> b!1871047 (= e!1193688 (and (not (is-Nil!20704 l!2791)) (= l!2791 Nil!20704)))))

(declare-fun b!1871048 () Bool)

(declare-fun tp_is_empty!8717 () Bool)

(declare-fun tp!532280 () Bool)

(assert (=> b!1871048 (= e!1193689 (and tp_is_empty!8717 tp!532280))))

(assert (= (and start!187330 res!837616) b!1871047))

(assert (= (and start!187330 (is-Cons!20704 l!2791)) b!1871048))

(declare-fun m!2297159 () Bool)

(assert (=> start!187330 m!2297159))

(push 1)

(assert (not start!187330))

(assert (not b!1871048))

(assert tp_is_empty!8717)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

