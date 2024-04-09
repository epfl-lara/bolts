; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22844 () Bool)

(assert start!22844)

(declare-fun b!237865 () Bool)

(declare-fun b_free!6389 () Bool)

(declare-fun b_next!6389 () Bool)

(assert (=> b!237865 (= b_free!6389 (not b_next!6389))))

(declare-fun tp!22362 () Bool)

(declare-fun b_and!13367 () Bool)

(assert (=> b!237865 (= tp!22362 b_and!13367)))

(declare-fun b!237856 () Bool)

(declare-fun e!154464 () Bool)

(declare-fun tp_is_empty!6251 () Bool)

(assert (=> b!237856 (= e!154464 tp_is_empty!6251)))

(declare-fun b!237857 () Bool)

(declare-fun res!116578 () Bool)

(declare-fun e!154466 () Bool)

(assert (=> b!237857 (=> (not res!116578) (not e!154466))))

(declare-datatypes ((V!7981 0))(
  ( (V!7982 (val!3170 Int)) )
))
(declare-datatypes ((ValueCell!2782 0))(
  ( (ValueCellFull!2782 (v!5201 V!7981)) (EmptyCell!2782) )
))
(declare-datatypes ((array!11774 0))(
  ( (array!11775 (arr!5591 (Array (_ BitVec 32) ValueCell!2782)) (size!5932 (_ BitVec 32))) )
))
(declare-datatypes ((array!11776 0))(
  ( (array!11777 (arr!5592 (Array (_ BitVec 32) (_ BitVec 64))) (size!5933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3464 0))(
  ( (LongMapFixedSize!3465 (defaultEntry!4414 Int) (mask!10435 (_ BitVec 32)) (extraKeys!4151 (_ BitVec 32)) (zeroValue!4255 V!7981) (minValue!4255 V!7981) (_size!1781 (_ BitVec 32)) (_keys!6510 array!11776) (_values!4397 array!11774) (_vacant!1781 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3464)

(assert (=> b!237857 (= res!116578 (and (= (size!5932 (_values!4397 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10435 thiss!1504))) (= (size!5933 (_keys!6510 thiss!1504)) (size!5932 (_values!4397 thiss!1504))) (bvsge (mask!10435 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4151 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4151 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!237858 () Bool)

(declare-fun res!116576 () Bool)

(declare-fun e!154461 () Bool)

(assert (=> b!237858 (=> (not res!116576) (not e!154461))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!237858 (= res!116576 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237859 () Bool)

(declare-fun e!154462 () Bool)

(declare-fun e!154463 () Bool)

(declare-fun mapRes!10599 () Bool)

(assert (=> b!237859 (= e!154462 (and e!154463 mapRes!10599))))

(declare-fun condMapEmpty!10599 () Bool)

(declare-fun mapDefault!10599 () ValueCell!2782)

