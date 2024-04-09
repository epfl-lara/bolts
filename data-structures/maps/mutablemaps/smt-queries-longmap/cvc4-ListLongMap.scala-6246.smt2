; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79948 () Bool)

(assert start!79948)

(declare-fun b!939630 () Bool)

(declare-fun b_free!17801 () Bool)

(declare-fun b_next!17801 () Bool)

(assert (=> b!939630 (= b_free!17801 (not b_next!17801))))

(declare-fun tp!61872 () Bool)

(declare-fun b_and!29231 () Bool)

(assert (=> b!939630 (= tp!61872 b_and!29231)))

(declare-fun b!939624 () Bool)

(declare-fun e!527894 () Bool)

(declare-fun e!527896 () Bool)

(declare-fun mapRes!32247 () Bool)

(assert (=> b!939624 (= e!527894 (and e!527896 mapRes!32247))))

(declare-fun condMapEmpty!32247 () Bool)

(declare-datatypes ((V!32043 0))(
  ( (V!32044 (val!10205 Int)) )
))
(declare-datatypes ((ValueCell!9673 0))(
  ( (ValueCellFull!9673 (v!12736 V!32043)) (EmptyCell!9673) )
))
(declare-datatypes ((array!56584 0))(
  ( (array!56585 (arr!27225 (Array (_ BitVec 32) ValueCell!9673)) (size!27686 (_ BitVec 32))) )
))
(declare-datatypes ((array!56586 0))(
  ( (array!56587 (arr!27226 (Array (_ BitVec 32) (_ BitVec 64))) (size!27687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4496 0))(
  ( (LongMapFixedSize!4497 (defaultEntry!5539 Int) (mask!27052 (_ BitVec 32)) (extraKeys!5271 (_ BitVec 32)) (zeroValue!5375 V!32043) (minValue!5375 V!32043) (_size!2303 (_ BitVec 32)) (_keys!10384 array!56586) (_values!5562 array!56584) (_vacant!2303 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4496)

(declare-fun mapDefault!32247 () ValueCell!9673)

