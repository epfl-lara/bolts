; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79986 () Bool)

(assert start!79986)

(declare-fun b!939838 () Bool)

(declare-fun b_free!17813 () Bool)

(declare-fun b_next!17813 () Bool)

(assert (=> b!939838 (= b_free!17813 (not b_next!17813))))

(declare-fun tp!61914 () Bool)

(declare-fun b_and!29243 () Bool)

(assert (=> b!939838 (= tp!61914 b_and!29243)))

(declare-fun e!528053 () Bool)

(declare-datatypes ((V!32059 0))(
  ( (V!32060 (val!10211 Int)) )
))
(declare-datatypes ((ValueCell!9679 0))(
  ( (ValueCellFull!9679 (v!12742 V!32059)) (EmptyCell!9679) )
))
(declare-datatypes ((array!56612 0))(
  ( (array!56613 (arr!27237 (Array (_ BitVec 32) ValueCell!9679)) (size!27699 (_ BitVec 32))) )
))
(declare-datatypes ((array!56614 0))(
  ( (array!56615 (arr!27238 (Array (_ BitVec 32) (_ BitVec 64))) (size!27700 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4508 0))(
  ( (LongMapFixedSize!4509 (defaultEntry!5545 Int) (mask!27065 (_ BitVec 32)) (extraKeys!5277 (_ BitVec 32)) (zeroValue!5381 V!32059) (minValue!5381 V!32059) (_size!2309 (_ BitVec 32)) (_keys!10391 array!56614) (_values!5568 array!56612) (_vacant!2309 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4508)

(declare-fun tp_is_empty!20321 () Bool)

(declare-fun e!528051 () Bool)

(declare-fun array_inv!21132 (array!56614) Bool)

(declare-fun array_inv!21133 (array!56612) Bool)

(assert (=> b!939838 (= e!528053 (and tp!61914 tp_is_empty!20321 (array_inv!21132 (_keys!10391 thiss!1141)) (array_inv!21133 (_values!5568 thiss!1141)) e!528051))))

(declare-fun b!939839 () Bool)

(declare-fun e!528052 () Bool)

(declare-fun mapRes!32272 () Bool)

(assert (=> b!939839 (= e!528051 (and e!528052 mapRes!32272))))

(declare-fun condMapEmpty!32272 () Bool)

(declare-fun mapDefault!32272 () ValueCell!9679)

