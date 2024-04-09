; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16978 () Bool)

(assert start!16978)

(declare-fun b!170528 () Bool)

(declare-fun b_free!4213 () Bool)

(declare-fun b_next!4213 () Bool)

(assert (=> b!170528 (= b_free!4213 (not b_next!4213))))

(declare-fun tp!15263 () Bool)

(declare-fun b_and!10645 () Bool)

(assert (=> b!170528 (= tp!15263 b_and!10645)))

(declare-fun b!170525 () Bool)

(declare-fun e!112558 () Bool)

(declare-fun tp_is_empty!3985 () Bool)

(assert (=> b!170525 (= e!112558 tp_is_empty!3985)))

(declare-fun b!170526 () Bool)

(declare-fun e!112554 () Bool)

(declare-datatypes ((V!4961 0))(
  ( (V!4962 (val!2037 Int)) )
))
(declare-datatypes ((ValueCell!1649 0))(
  ( (ValueCellFull!1649 (v!3898 V!4961)) (EmptyCell!1649) )
))
(declare-datatypes ((array!7078 0))(
  ( (array!7079 (arr!3368 (Array (_ BitVec 32) (_ BitVec 64))) (size!3661 (_ BitVec 32))) )
))
(declare-datatypes ((array!7080 0))(
  ( (array!7081 (arr!3369 (Array (_ BitVec 32) ValueCell!1649)) (size!3662 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2206 0))(
  ( (LongMapFixedSize!2207 (defaultEntry!3545 Int) (mask!8363 (_ BitVec 32)) (extraKeys!3286 (_ BitVec 32)) (zeroValue!3388 V!4961) (minValue!3388 V!4961) (_size!1152 (_ BitVec 32)) (_keys!5375 array!7078) (_values!3528 array!7080) (_vacant!1152 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2206)

(assert (=> b!170526 (= e!112554 (and (= (size!3662 (_values!3528 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8363 thiss!1248))) (= (size!3661 (_keys!5375 thiss!1248)) (size!3662 (_values!3528 thiss!1248))) (bvsge (mask!8363 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3286 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3286 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3286 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3286 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3286 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3286 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (= (bvand (bvor (extraKeys!3286 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!170527 () Bool)

(declare-fun res!81074 () Bool)

(assert (=> b!170527 (=> (not res!81074) (not e!112554))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170527 (= res!81074 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!112556 () Bool)

(declare-fun e!112557 () Bool)

(declare-fun array_inv!2143 (array!7078) Bool)

(declare-fun array_inv!2144 (array!7080) Bool)

(assert (=> b!170528 (= e!112556 (and tp!15263 tp_is_empty!3985 (array_inv!2143 (_keys!5375 thiss!1248)) (array_inv!2144 (_values!3528 thiss!1248)) e!112557))))

(declare-fun mapIsEmpty!6764 () Bool)

(declare-fun mapRes!6764 () Bool)

(assert (=> mapIsEmpty!6764 mapRes!6764))

(declare-fun b!170529 () Bool)

(assert (=> b!170529 (= e!112557 (and e!112558 mapRes!6764))))

(declare-fun condMapEmpty!6764 () Bool)

(declare-fun mapDefault!6764 () ValueCell!1649)

