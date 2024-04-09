; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1302 () Bool)

(assert start!1302)

(declare-fun b_free!403 () Bool)

(declare-fun b_next!403 () Bool)

(assert (=> start!1302 (= b_free!403 (not b_next!403))))

(declare-fun tp!1608 () Bool)

(declare-fun b_and!585 () Bool)

(assert (=> start!1302 (= tp!1608 b_and!585)))

(assert (=> start!1302 false))

(declare-datatypes ((B!344 0))(
  ( (B!345 (val!267 Int)) )
))
(declare-datatypes ((tuple2!316 0))(
  ( (tuple2!317 (_1!158 (_ BitVec 64)) (_2!158 B!344)) )
))
(declare-datatypes ((List!314 0))(
  ( (Nil!311) (Cons!310 (h!876 tuple2!316) (t!2485 List!314)) )
))
(declare-datatypes ((ListLongMap!297 0))(
  ( (ListLongMap!298 (toList!164 List!314)) )
))
(declare-fun lm!227 () ListLongMap!297)

(declare-fun e!6188 () Bool)

(declare-fun inv!502 (ListLongMap!297) Bool)

(assert (=> start!1302 (and (inv!502 lm!227) e!6188)))

(assert (=> start!1302 tp!1608))

(declare-fun e!6187 () Bool)

(assert (=> start!1302 e!6187))

(declare-fun b!10633 () Bool)

(declare-fun tp!1610 () Bool)

(assert (=> b!10633 (= e!6188 tp!1610)))

(declare-fun b!10634 () Bool)

(declare-fun tp_is_empty!517 () Bool)

(declare-fun tp!1609 () Bool)

(assert (=> b!10634 (= e!6187 (and tp_is_empty!517 tp!1609))))

(assert (= start!1302 b!10633))

(declare-fun kvs!4 () List!314)

(assert (= (and start!1302 (is-Cons!310 kvs!4)) b!10634))

(declare-fun m!6851 () Bool)

(assert (=> start!1302 m!6851))

(push 1)

(assert tp_is_empty!517)

(assert (not b!10633))

(assert (not start!1302))

(assert b_and!585)

(assert (not b!10634))

(assert (not b_next!403))

(check-sat)

(pop 1)

(push 1)

(assert b_and!585)

(assert (not b_next!403))

(check-sat)

