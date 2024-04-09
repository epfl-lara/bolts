; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3490 () Bool)

(assert start!3490)

(declare-fun b!23125 () Bool)

(declare-fun b_free!757 () Bool)

(declare-fun b_next!757 () Bool)

(assert (=> b!23125 (= b_free!757 (not b_next!757))))

(declare-fun tp!3518 () Bool)

(declare-fun b_and!1481 () Bool)

(assert (=> b!23125 (= tp!3518 b_and!1481)))

(declare-fun b!23122 () Bool)

(declare-fun e!15036 () Bool)

(declare-fun e!15032 () Bool)

(declare-fun mapRes!1022 () Bool)

(assert (=> b!23122 (= e!15036 (and e!15032 mapRes!1022))))

(declare-fun condMapEmpty!1022 () Bool)

(declare-datatypes ((V!1187 0))(
  ( (V!1188 (val!537 Int)) )
))
(declare-datatypes ((ValueCell!311 0))(
  ( (ValueCellFull!311 (v!1601 V!1187)) (EmptyCell!311) )
))
(declare-datatypes ((array!1271 0))(
  ( (array!1272 (arr!601 (Array (_ BitVec 32) ValueCell!311)) (size!697 (_ BitVec 32))) )
))
(declare-datatypes ((array!1273 0))(
  ( (array!1274 (arr!602 (Array (_ BitVec 32) (_ BitVec 64))) (size!698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!208 0))(
  ( (LongMapFixedSize!209 (defaultEntry!1742 Int) (mask!4729 (_ BitVec 32)) (extraKeys!1640 (_ BitVec 32)) (zeroValue!1665 V!1187) (minValue!1665 V!1187) (_size!149 (_ BitVec 32)) (_keys!3163 array!1273) (_values!1728 array!1271) (_vacant!149 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!208 0))(
  ( (Cell!209 (v!1602 LongMapFixedSize!208)) )
))
(declare-datatypes ((LongMap!208 0))(
  ( (LongMap!209 (underlying!115 Cell!208)) )
))
(declare-fun thiss!938 () LongMap!208)

(declare-fun mapDefault!1022 () ValueCell!311)

