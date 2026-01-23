; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239854 () Bool)

(assert start!239854)

(declare-fun b_free!70567 () Bool)

(declare-fun b_next!71271 () Bool)

(assert (=> start!239854 (= b_free!70567 (not b_next!71271))))

(declare-fun tp!783387 () Bool)

(declare-fun b_and!185559 () Bool)

(assert (=> start!239854 (= tp!783387 b_and!185559)))

(assert (=> start!239854 false))

(declare-fun e!1560546 () Bool)

(assert (=> start!239854 e!1560546))

(assert (=> start!239854 tp!783387))

(declare-fun b!2460544 () Bool)

(declare-fun tp_is_empty!11895 () Bool)

(declare-fun tp!783386 () Bool)

(assert (=> b!2460544 (= e!1560546 (and tp_is_empty!11895 tp!783386))))

(declare-datatypes ((B!1865 0))(
  ( (B!1866 (val!8562 Int)) )
))
(declare-datatypes ((List!28719 0))(
  ( (Nil!28619) (Cons!28619 (h!34020 B!1865) (t!208694 List!28719)) )
))
(declare-fun l!3055 () List!28719)

(get-info :version)

(assert (= (and start!239854 ((_ is Cons!28619) l!3055)) b!2460544))

(check-sat (not b!2460544) tp_is_empty!11895 b_and!185559 (not b_next!71271))
(check-sat b_and!185559 (not b_next!71271))
