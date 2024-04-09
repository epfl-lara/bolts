; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16984 () Bool)

(assert start!16984)

(declare-fun b!170594 () Bool)

(declare-fun b_free!4219 () Bool)

(declare-fun b_next!4219 () Bool)

(assert (=> b!170594 (= b_free!4219 (not b_next!4219))))

(declare-fun tp!15281 () Bool)

(declare-fun b_and!10651 () Bool)

(assert (=> b!170594 (= tp!15281 b_and!10651)))

(declare-fun b!170590 () Bool)

(declare-fun res!81104 () Bool)

(declare-fun e!112613 () Bool)

(assert (=> b!170590 (=> (not res!81104) (not e!112613))))

(declare-datatypes ((V!4969 0))(
  ( (V!4970 (val!2040 Int)) )
))
(declare-datatypes ((ValueCell!1652 0))(
  ( (ValueCellFull!1652 (v!3901 V!4969)) (EmptyCell!1652) )
))
(declare-datatypes ((array!7090 0))(
  ( (array!7091 (arr!3374 (Array (_ BitVec 32) (_ BitVec 64))) (size!3667 (_ BitVec 32))) )
))
(declare-datatypes ((array!7092 0))(
  ( (array!7093 (arr!3375 (Array (_ BitVec 32) ValueCell!1652)) (size!3668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2212 0))(
  ( (LongMapFixedSize!2213 (defaultEntry!3548 Int) (mask!8368 (_ BitVec 32)) (extraKeys!3289 (_ BitVec 32)) (zeroValue!3391 V!4969) (minValue!3391 V!4969) (_size!1155 (_ BitVec 32)) (_keys!5378 array!7090) (_values!3531 array!7092) (_vacant!1155 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2212)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170590 (= res!81104 (validMask!0 (mask!8368 thiss!1248)))))

(declare-fun b!170591 () Bool)

(declare-fun e!112611 () Bool)

(declare-fun tp_is_empty!3991 () Bool)

(assert (=> b!170591 (= e!112611 tp_is_empty!3991)))

(declare-fun b!170592 () Bool)

(declare-fun e!112612 () Bool)

(assert (=> b!170592 (= e!112612 tp_is_empty!3991)))

(declare-fun b!170593 () Bool)

(declare-fun res!81102 () Bool)

(assert (=> b!170593 (=> (not res!81102) (not e!112613))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170593 (= res!81102 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!112610 () Bool)

(declare-fun e!112608 () Bool)

(declare-fun array_inv!2147 (array!7090) Bool)

(declare-fun array_inv!2148 (array!7092) Bool)

(assert (=> b!170594 (= e!112608 (and tp!15281 tp_is_empty!3991 (array_inv!2147 (_keys!5378 thiss!1248)) (array_inv!2148 (_values!3531 thiss!1248)) e!112610))))

(declare-fun b!170595 () Bool)

(declare-fun res!81105 () Bool)

(assert (=> b!170595 (=> (not res!81105) (not e!112613))))

(assert (=> b!170595 (= res!81105 (and (= (size!3668 (_values!3531 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8368 thiss!1248))) (= (size!3667 (_keys!5378 thiss!1248)) (size!3668 (_values!3531 thiss!1248))) (bvsge (mask!8368 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3289 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3289 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3289 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3289 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3289 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3289 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!3289 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!170596 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7090 (_ BitVec 32)) Bool)

(assert (=> b!170596 (= e!112613 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5378 thiss!1248) (mask!8368 thiss!1248))))))

(declare-fun mapIsEmpty!6773 () Bool)

(declare-fun mapRes!6773 () Bool)

(assert (=> mapIsEmpty!6773 mapRes!6773))

(declare-fun b!170597 () Bool)

(assert (=> b!170597 (= e!112610 (and e!112612 mapRes!6773))))

(declare-fun condMapEmpty!6773 () Bool)

(declare-fun mapDefault!6773 () ValueCell!1652)

