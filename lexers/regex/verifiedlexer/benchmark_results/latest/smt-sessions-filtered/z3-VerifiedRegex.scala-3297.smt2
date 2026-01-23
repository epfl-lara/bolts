; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188872 () Bool)

(assert start!188872)

(assert (=> start!188872 false))

(declare-fun e!1203474 () Bool)

(assert (=> start!188872 e!1203474))

(declare-fun e!1203476 () Bool)

(assert (=> start!188872 e!1203476))

(declare-fun e!1203475 () Bool)

(assert (=> start!188872 e!1203475))

(declare-fun b!1886122 () Bool)

(declare-fun tp_is_empty!8925 () Bool)

(declare-fun tp!537796 () Bool)

(assert (=> b!1886122 (= e!1203474 (and tp_is_empty!8925 tp!537796))))

(declare-fun b!1886123 () Bool)

(declare-fun tp!537797 () Bool)

(assert (=> b!1886123 (= e!1203476 (and tp_is_empty!8925 tp!537797))))

(declare-fun b!1886124 () Bool)

(declare-fun tp!537798 () Bool)

(assert (=> b!1886124 (= e!1203475 (and tp_is_empty!8925 tp!537798))))

(declare-datatypes ((B!1669 0))(
  ( (B!1670 (val!6120 Int)) )
))
(declare-datatypes ((List!21113 0))(
  ( (Nil!21031) (Cons!21031 (h!26432 B!1669) (t!175112 List!21113)) )
))
(declare-fun l1!1329 () List!21113)

(get-info :version)

(assert (= (and start!188872 ((_ is Cons!21031) l1!1329)) b!1886122))

(declare-fun l2!1298 () List!21113)

(assert (= (and start!188872 ((_ is Cons!21031) l2!1298)) b!1886123))

(declare-fun l3!256 () List!21113)

(assert (= (and start!188872 ((_ is Cons!21031) l3!256)) b!1886124))

(check-sat (not b!1886122) (not b!1886123) (not b!1886124) tp_is_empty!8925)
(check-sat)
