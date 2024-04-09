; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7632 () Bool)

(assert start!7632)

(assert (=> start!7632 false))

(declare-fun e!31243 () Bool)

(assert (=> start!7632 e!31243))

(assert (=> start!7632 true))

(declare-fun b!48660 () Bool)

(declare-fun tp_is_empty!2115 () Bool)

(declare-fun tp!6431 () Bool)

(assert (=> b!48660 (= e!31243 (and tp_is_empty!2115 tp!6431))))

(declare-datatypes ((B!964 0))(
  ( (B!965 (val!1102 Int)) )
))
(declare-datatypes ((tuple2!1790 0))(
  ( (tuple2!1791 (_1!905 (_ BitVec 64)) (_2!905 B!964)) )
))
(declare-datatypes ((List!1318 0))(
  ( (Nil!1315) (Cons!1314 (h!1894 tuple2!1790) (t!4354 List!1318)) )
))
(declare-fun l!1333 () List!1318)

(get-info :version)

(assert (= (and start!7632 ((_ is Cons!1314) l!1333)) b!48660))

(check-sat (not b!48660) tp_is_empty!2115)
(check-sat)
