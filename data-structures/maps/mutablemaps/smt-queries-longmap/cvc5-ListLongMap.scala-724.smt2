; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16916 () Bool)

(assert start!16916)

(declare-fun b!170073 () Bool)

(declare-fun b_free!4183 () Bool)

(declare-fun b_next!4183 () Bool)

(assert (=> b!170073 (= b_free!4183 (not b_next!4183))))

(declare-fun tp!15165 () Bool)

(declare-fun b_and!10615 () Bool)

(assert (=> b!170073 (= tp!15165 b_and!10615)))

(declare-fun b!170070 () Bool)

(declare-fun e!112203 () Bool)

(declare-datatypes ((V!4921 0))(
  ( (V!4922 (val!2022 Int)) )
))
(declare-datatypes ((ValueCell!1634 0))(
  ( (ValueCellFull!1634 (v!3883 V!4921)) (EmptyCell!1634) )
))
(declare-datatypes ((array!7014 0))(
  ( (array!7015 (arr!3338 (Array (_ BitVec 32) (_ BitVec 64))) (size!3629 (_ BitVec 32))) )
))
(declare-datatypes ((array!7016 0))(
  ( (array!7017 (arr!3339 (Array (_ BitVec 32) ValueCell!1634)) (size!3630 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2176 0))(
  ( (LongMapFixedSize!2177 (defaultEntry!3530 Int) (mask!8334 (_ BitVec 32)) (extraKeys!3271 (_ BitVec 32)) (zeroValue!3373 V!4921) (minValue!3373 V!4921) (_size!1137 (_ BitVec 32)) (_keys!5358 array!7014) (_values!3513 array!7016) (_vacant!1137 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2176)

(assert (=> b!170070 (= e!112203 (and (= (size!3630 (_values!3513 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8334 thiss!1248))) (= (size!3629 (_keys!5358 thiss!1248)) (size!3630 (_values!3513 thiss!1248))) (bvsge (mask!8334 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3271 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!170071 () Bool)

(declare-fun e!112207 () Bool)

(declare-fun e!112204 () Bool)

(declare-fun mapRes!6711 () Bool)

(assert (=> b!170071 (= e!112207 (and e!112204 mapRes!6711))))

(declare-fun condMapEmpty!6711 () Bool)

(declare-fun mapDefault!6711 () ValueCell!1634)

