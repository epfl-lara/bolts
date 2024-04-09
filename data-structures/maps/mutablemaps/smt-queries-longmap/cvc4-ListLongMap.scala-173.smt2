; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3300 () Bool)

(assert start!3300)

(declare-fun b!20405 () Bool)

(declare-fun b_free!719 () Bool)

(declare-fun b_next!719 () Bool)

(assert (=> b!20405 (= b_free!719 (not b_next!719))))

(declare-fun tp!3384 () Bool)

(declare-fun b_and!1397 () Bool)

(assert (=> b!20405 (= tp!3384 b_and!1397)))

(declare-fun b!20391 () Bool)

(declare-fun e!13339 () Bool)

(declare-fun tp_is_empty!983 () Bool)

(assert (=> b!20391 (= e!13339 tp_is_empty!983)))

(declare-fun bm!1008 () Bool)

(declare-datatypes ((V!1135 0))(
  ( (V!1136 (val!518 Int)) )
))
(declare-datatypes ((ValueCell!292 0))(
  ( (ValueCellFull!292 (v!1553 V!1135)) (EmptyCell!292) )
))
(declare-datatypes ((array!1183 0))(
  ( (array!1184 (arr!563 (Array (_ BitVec 32) ValueCell!292)) (size!656 (_ BitVec 32))) )
))
(declare-datatypes ((array!1185 0))(
  ( (array!1186 (arr!564 (Array (_ BitVec 32) (_ BitVec 64))) (size!657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!170 0))(
  ( (LongMapFixedSize!171 (defaultEntry!1708 Int) (mask!4672 (_ BitVec 32)) (extraKeys!1614 (_ BitVec 32)) (zeroValue!1638 V!1135) (minValue!1638 V!1135) (_size!123 (_ BitVec 32)) (_keys!3132 array!1185) (_values!1700 array!1183) (_vacant!123 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!842 0))(
  ( (tuple2!843 (_1!424 Bool) (_2!424 LongMapFixedSize!170)) )
))
(declare-fun call!1011 () tuple2!842)

(declare-fun call!1012 () tuple2!842)

(assert (=> bm!1008 (= call!1011 call!1012)))

(declare-fun b!20392 () Bool)

(declare-fun e!13345 () Bool)

(declare-datatypes ((Cell!170 0))(
  ( (Cell!171 (v!1554 LongMapFixedSize!170)) )
))
(declare-datatypes ((LongMap!170 0))(
  ( (LongMap!171 (underlying!96 Cell!170)) )
))
(declare-fun thiss!938 () LongMap!170)

(assert (=> b!20392 (= e!13345 (and (= (size!657 (_keys!3132 (v!1554 (underlying!96 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4672 (v!1554 (underlying!96 thiss!938))))) (bvsge (bvsub (size!657 (_keys!3132 (v!1554 (underlying!96 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub (size!657 (_keys!3132 (v!1554 (underlying!96 thiss!938)))) #b00000000000000000000000000000001) (size!657 (_keys!3132 (v!1554 (underlying!96 thiss!938)))))))))

(declare-fun b!20393 () Bool)

(declare-fun e!13344 () Bool)

(declare-fun e!13336 () Bool)

(declare-fun mapRes!946 () Bool)

(assert (=> b!20393 (= e!13344 (and e!13336 mapRes!946))))

(declare-fun condMapEmpty!946 () Bool)

(declare-fun mapDefault!946 () ValueCell!292)

