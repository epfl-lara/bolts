; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3444 () Bool)

(assert start!3444)

(declare-fun b!22293 () Bool)

(declare-fun b_free!739 () Bool)

(declare-fun b_next!739 () Bool)

(assert (=> b!22293 (= b_free!739 (not b_next!739))))

(declare-fun tp!3458 () Bool)

(declare-fun b_and!1453 () Bool)

(assert (=> b!22293 (= tp!3458 b_and!1453)))

(declare-fun b!22291 () Bool)

(declare-fun e!14464 () Bool)

(declare-fun e!14468 () Bool)

(declare-fun mapRes!989 () Bool)

(assert (=> b!22291 (= e!14464 (and e!14468 mapRes!989))))

(declare-fun condMapEmpty!989 () Bool)

(declare-datatypes ((V!1163 0))(
  ( (V!1164 (val!528 Int)) )
))
(declare-datatypes ((ValueCell!302 0))(
  ( (ValueCellFull!302 (v!1581 V!1163)) (EmptyCell!302) )
))
(declare-datatypes ((array!1231 0))(
  ( (array!1232 (arr!583 (Array (_ BitVec 32) ValueCell!302)) (size!679 (_ BitVec 32))) )
))
(declare-datatypes ((array!1233 0))(
  ( (array!1234 (arr!584 (Array (_ BitVec 32) (_ BitVec 64))) (size!680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!190 0))(
  ( (LongMapFixedSize!191 (defaultEntry!1731 Int) (mask!4711 (_ BitVec 32)) (extraKeys!1631 (_ BitVec 32)) (zeroValue!1656 V!1163) (minValue!1656 V!1163) (_size!138 (_ BitVec 32)) (_keys!3154 array!1233) (_values!1719 array!1231) (_vacant!138 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!190 0))(
  ( (Cell!191 (v!1582 LongMapFixedSize!190)) )
))
(declare-datatypes ((LongMap!190 0))(
  ( (LongMap!191 (underlying!106 Cell!190)) )
))
(declare-fun thiss!938 () LongMap!190)

(declare-fun mapDefault!989 () ValueCell!302)

