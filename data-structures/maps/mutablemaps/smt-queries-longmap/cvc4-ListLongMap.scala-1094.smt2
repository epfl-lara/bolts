; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22440 () Bool)

(assert start!22440)

(declare-fun b!234676 () Bool)

(declare-fun b_free!6317 () Bool)

(declare-fun b_next!6317 () Bool)

(assert (=> b!234676 (= b_free!6317 (not b_next!6317))))

(declare-fun tp!22111 () Bool)

(declare-fun b_and!13255 () Bool)

(assert (=> b!234676 (= tp!22111 b_and!13255)))

(declare-fun b!234668 () Bool)

(declare-fun e!152438 () Bool)

(declare-fun tp_is_empty!6179 () Bool)

(assert (=> b!234668 (= e!152438 tp_is_empty!6179)))

(declare-fun b!234669 () Bool)

(declare-fun e!152434 () Bool)

(declare-datatypes ((V!7885 0))(
  ( (V!7886 (val!3134 Int)) )
))
(declare-datatypes ((ValueCell!2746 0))(
  ( (ValueCellFull!2746 (v!5155 V!7885)) (EmptyCell!2746) )
))
(declare-datatypes ((array!11610 0))(
  ( (array!11611 (arr!5519 (Array (_ BitVec 32) ValueCell!2746)) (size!5855 (_ BitVec 32))) )
))
(declare-datatypes ((array!11612 0))(
  ( (array!11613 (arr!5520 (Array (_ BitVec 32) (_ BitVec 64))) (size!5856 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3392 0))(
  ( (LongMapFixedSize!3393 (defaultEntry!4363 Int) (mask!10317 (_ BitVec 32)) (extraKeys!4100 (_ BitVec 32)) (zeroValue!4204 V!7885) (minValue!4204 V!7885) (_size!1745 (_ BitVec 32)) (_keys!6431 array!11612) (_values!4346 array!11610) (_vacant!1745 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3392)

(assert (=> b!234669 (= e!152434 (and (= (size!5855 (_values!4346 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10317 thiss!1504))) (= (size!5856 (_keys!6431 thiss!1504)) (size!5855 (_values!4346 thiss!1504))) (bvsge (mask!10317 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4100 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4100 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!234670 () Bool)

(declare-fun res!115113 () Bool)

(assert (=> b!234670 (=> (not res!115113) (not e!152434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234670 (= res!115113 (validMask!0 (mask!10317 thiss!1504)))))

(declare-fun b!234671 () Bool)

(declare-fun e!152437 () Bool)

(declare-fun e!152440 () Bool)

(declare-fun mapRes!10456 () Bool)

(assert (=> b!234671 (= e!152437 (and e!152440 mapRes!10456))))

(declare-fun condMapEmpty!10456 () Bool)

(declare-fun mapDefault!10456 () ValueCell!2746)

