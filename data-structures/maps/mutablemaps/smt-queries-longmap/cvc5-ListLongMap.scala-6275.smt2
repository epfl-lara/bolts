; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80300 () Bool)

(assert start!80300)

(declare-fun b!942761 () Bool)

(declare-fun b_free!17971 () Bool)

(declare-fun b_next!17971 () Bool)

(assert (=> b!942761 (= b_free!17971 (not b_next!17971))))

(declare-fun tp!62420 () Bool)

(declare-fun b_and!29401 () Bool)

(assert (=> b!942761 (= tp!62420 b_and!29401)))

(declare-fun b!942754 () Bool)

(declare-fun e!530099 () Bool)

(declare-fun e!530100 () Bool)

(declare-fun mapRes!32540 () Bool)

(assert (=> b!942754 (= e!530099 (and e!530100 mapRes!32540))))

(declare-fun condMapEmpty!32540 () Bool)

(declare-datatypes ((V!32271 0))(
  ( (V!32272 (val!10290 Int)) )
))
(declare-datatypes ((ValueCell!9758 0))(
  ( (ValueCellFull!9758 (v!12821 V!32271)) (EmptyCell!9758) )
))
(declare-datatypes ((array!56946 0))(
  ( (array!56947 (arr!27395 (Array (_ BitVec 32) ValueCell!9758)) (size!27861 (_ BitVec 32))) )
))
(declare-datatypes ((array!56948 0))(
  ( (array!56949 (arr!27396 (Array (_ BitVec 32) (_ BitVec 64))) (size!27862 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4666 0))(
  ( (LongMapFixedSize!4667 (defaultEntry!5624 Int) (mask!27235 (_ BitVec 32)) (extraKeys!5356 (_ BitVec 32)) (zeroValue!5460 V!32271) (minValue!5460 V!32271) (_size!2388 (_ BitVec 32)) (_keys!10494 array!56948) (_values!5647 array!56946) (_vacant!2388 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4666)

(declare-fun mapDefault!32540 () ValueCell!9758)

