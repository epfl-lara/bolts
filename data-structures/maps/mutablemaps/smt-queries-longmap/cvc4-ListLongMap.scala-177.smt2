; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3448 () Bool)

(assert start!3448)

(declare-fun b!22393 () Bool)

(declare-fun b_free!743 () Bool)

(declare-fun b_next!743 () Bool)

(assert (=> b!22393 (= b_free!743 (not b_next!743))))

(declare-fun tp!3469 () Bool)

(declare-fun b_and!1457 () Bool)

(assert (=> b!22393 (= tp!3469 b_and!1457)))

(declare-fun bm!1573 () Bool)

(declare-datatypes ((V!1167 0))(
  ( (V!1168 (val!530 Int)) )
))
(declare-datatypes ((ValueCell!304 0))(
  ( (ValueCellFull!304 (v!1585 V!1167)) (EmptyCell!304) )
))
(declare-datatypes ((array!1239 0))(
  ( (array!1240 (arr!587 (Array (_ BitVec 32) ValueCell!304)) (size!683 (_ BitVec 32))) )
))
(declare-datatypes ((array!1241 0))(
  ( (array!1242 (arr!588 (Array (_ BitVec 32) (_ BitVec 64))) (size!684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!194 0))(
  ( (LongMapFixedSize!195 (defaultEntry!1733 Int) (mask!4713 (_ BitVec 32)) (extraKeys!1633 (_ BitVec 32)) (zeroValue!1658 V!1167) (minValue!1658 V!1167) (_size!140 (_ BitVec 32)) (_keys!3156 array!1241) (_values!1721 array!1239) (_vacant!140 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!904 0))(
  ( (tuple2!905 (_1!456 Bool) (_2!456 LongMapFixedSize!194)) )
))
(declare-fun call!1576 () tuple2!904)

(declare-fun call!1577 () tuple2!904)

(assert (=> bm!1573 (= call!1576 call!1577)))

(declare-fun b!22387 () Bool)

(declare-fun e!14551 () Bool)

(declare-fun e!14553 () Bool)

(declare-fun mapRes!995 () Bool)

(assert (=> b!22387 (= e!14551 (and e!14553 mapRes!995))))

(declare-fun condMapEmpty!995 () Bool)

(declare-datatypes ((Cell!194 0))(
  ( (Cell!195 (v!1586 LongMapFixedSize!194)) )
))
(declare-datatypes ((LongMap!194 0))(
  ( (LongMap!195 (underlying!108 Cell!194)) )
))
(declare-fun thiss!938 () LongMap!194)

(declare-fun mapDefault!995 () ValueCell!304)

