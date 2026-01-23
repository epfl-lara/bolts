; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274390 () Bool)

(assert start!274390)

(declare-fun b_free!81059 () Bool)

(declare-fun b_next!81763 () Bool)

(assert (=> start!274390 (= b_free!81059 (not b_next!81763))))

(declare-fun tp!902842 () Bool)

(declare-fun b_and!206597 () Bool)

(assert (=> start!274390 (= tp!902842 b_and!206597)))

(assert (=> start!274390 false))

(declare-fun e!1789010 () Bool)

(assert (=> start!274390 e!1789010))

(assert (=> start!274390 tp!902842))

(declare-fun e!1789009 () Bool)

(assert (=> start!274390 e!1789009))

(declare-fun b!2826656 () Bool)

(declare-fun tp_is_empty!14495 () Bool)

(declare-fun tp!902840 () Bool)

(assert (=> b!2826656 (= e!1789010 (and tp_is_empty!14495 tp!902840))))

(declare-fun b!2826657 () Bool)

(declare-fun tp!902841 () Bool)

(assert (=> b!2826657 (= e!1789009 (and tp_is_empty!14495 tp!902841))))

(declare-datatypes ((B!2445 0))(
  ( (B!2446 (val!10442 Int)) )
))
(declare-datatypes ((List!33331 0))(
  ( (Nil!33207) (Cons!33207 (h!38627 B!2445) (t!231026 List!33331)) )
))
(declare-fun l2!930 () List!33331)

(get-info :version)

(assert (= (and start!274390 ((_ is Cons!33207) l2!930)) b!2826656))

(declare-fun l1!953 () List!33331)

(assert (= (and start!274390 ((_ is Cons!33207) l1!953)) b!2826657))

(check-sat b_and!206597 (not b_next!81763) (not b!2826657) tp_is_empty!14495 (not b!2826656))
(check-sat b_and!206597 (not b_next!81763))
