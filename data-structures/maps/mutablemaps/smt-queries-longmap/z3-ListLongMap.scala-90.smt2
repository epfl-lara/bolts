; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1304 () Bool)

(assert start!1304)

(declare-fun b_free!405 () Bool)

(declare-fun b_next!405 () Bool)

(assert (=> start!1304 (= b_free!405 (not b_next!405))))

(declare-fun tp!1617 () Bool)

(declare-fun b_and!587 () Bool)

(assert (=> start!1304 (= tp!1617 b_and!587)))

(assert (=> start!1304 false))

(declare-datatypes ((B!346 0))(
  ( (B!347 (val!268 Int)) )
))
(declare-datatypes ((tuple2!318 0))(
  ( (tuple2!319 (_1!159 (_ BitVec 64)) (_2!159 B!346)) )
))
(declare-datatypes ((List!315 0))(
  ( (Nil!312) (Cons!311 (h!877 tuple2!318) (t!2486 List!315)) )
))
(declare-datatypes ((ListLongMap!299 0))(
  ( (ListLongMap!300 (toList!165 List!315)) )
))
(declare-fun lm!227 () ListLongMap!299)

(declare-fun e!6194 () Bool)

(declare-fun inv!503 (ListLongMap!299) Bool)

(assert (=> start!1304 (and (inv!503 lm!227) e!6194)))

(assert (=> start!1304 tp!1617))

(declare-fun e!6193 () Bool)

(assert (=> start!1304 e!6193))

(declare-fun b!10639 () Bool)

(declare-fun tp!1618 () Bool)

(assert (=> b!10639 (= e!6194 tp!1618)))

(declare-fun b!10640 () Bool)

(declare-fun tp_is_empty!519 () Bool)

(declare-fun tp!1619 () Bool)

(assert (=> b!10640 (= e!6193 (and tp_is_empty!519 tp!1619))))

(assert (= start!1304 b!10639))

(declare-fun kvs!4 () List!315)

(get-info :version)

(assert (= (and start!1304 ((_ is Cons!311) kvs!4)) b!10640))

(declare-fun m!6853 () Bool)

(assert (=> start!1304 m!6853))

(check-sat (not start!1304) (not b!10640) (not b_next!405) tp_is_empty!519 b_and!587 (not b!10639))
(check-sat b_and!587 (not b_next!405))
