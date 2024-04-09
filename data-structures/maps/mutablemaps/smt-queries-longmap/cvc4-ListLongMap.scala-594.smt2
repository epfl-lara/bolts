; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15722 () Bool)

(assert start!15722)

(declare-fun b!156658 () Bool)

(declare-fun b_free!3377 () Bool)

(declare-fun b_next!3377 () Bool)

(assert (=> b!156658 (= b_free!3377 (not b_next!3377))))

(declare-fun tp!12656 () Bool)

(declare-fun b_and!9809 () Bool)

(assert (=> b!156658 (= tp!12656 b_and!9809)))

(declare-fun b!156652 () Bool)

(declare-fun res!74053 () Bool)

(declare-fun e!102468 () Bool)

(assert (=> b!156652 (=> (not res!74053) (not e!102468))))

(declare-datatypes ((V!3885 0))(
  ( (V!3886 (val!1634 Int)) )
))
(declare-datatypes ((ValueCell!1246 0))(
  ( (ValueCellFull!1246 (v!3495 V!3885)) (EmptyCell!1246) )
))
(declare-datatypes ((array!5410 0))(
  ( (array!5411 (arr!2562 (Array (_ BitVec 32) (_ BitVec 64))) (size!2840 (_ BitVec 32))) )
))
(declare-datatypes ((array!5412 0))(
  ( (array!5413 (arr!2563 (Array (_ BitVec 32) ValueCell!1246)) (size!2841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1400 0))(
  ( (LongMapFixedSize!1401 (defaultEntry!3142 Int) (mask!7599 (_ BitVec 32)) (extraKeys!2883 (_ BitVec 32)) (zeroValue!2985 V!3885) (minValue!2985 V!3885) (_size!749 (_ BitVec 32)) (_keys!4917 array!5410) (_values!3125 array!5412) (_vacant!749 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1400)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156652 (= res!74053 (validMask!0 (mask!7599 thiss!1248)))))

(declare-fun b!156653 () Bool)

(declare-fun e!102470 () Bool)

(declare-fun tp_is_empty!3179 () Bool)

(assert (=> b!156653 (= e!102470 tp_is_empty!3179)))

(declare-fun b!156654 () Bool)

(declare-fun res!74056 () Bool)

(assert (=> b!156654 (=> (not res!74056) (not e!102468))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156654 (= res!74056 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!74052 () Bool)

(assert (=> start!15722 (=> (not res!74052) (not e!102468))))

(declare-fun valid!672 (LongMapFixedSize!1400) Bool)

(assert (=> start!15722 (= res!74052 (valid!672 thiss!1248))))

(assert (=> start!15722 e!102468))

(declare-fun e!102465 () Bool)

(assert (=> start!15722 e!102465))

(assert (=> start!15722 true))

(declare-fun b!156655 () Bool)

(declare-fun e!102467 () Bool)

(assert (=> b!156655 (= e!102467 tp_is_empty!3179)))

(declare-fun b!156656 () Bool)

(declare-fun res!74055 () Bool)

(assert (=> b!156656 (=> (not res!74055) (not e!102468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5410 (_ BitVec 32)) Bool)

(assert (=> b!156656 (= res!74055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4917 thiss!1248) (mask!7599 thiss!1248)))))

(declare-fun b!156657 () Bool)

(declare-fun res!74054 () Bool)

(assert (=> b!156657 (=> (not res!74054) (not e!102468))))

(assert (=> b!156657 (= res!74054 (and (= (size!2841 (_values!3125 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7599 thiss!1248))) (= (size!2840 (_keys!4917 thiss!1248)) (size!2841 (_values!3125 thiss!1248))) (bvsge (mask!7599 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2883 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2883 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2883 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2883 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2883 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2883 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2883 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5411 () Bool)

(declare-fun mapRes!5411 () Bool)

(assert (=> mapIsEmpty!5411 mapRes!5411))

(declare-fun e!102466 () Bool)

(declare-fun array_inv!1617 (array!5410) Bool)

(declare-fun array_inv!1618 (array!5412) Bool)

(assert (=> b!156658 (= e!102465 (and tp!12656 tp_is_empty!3179 (array_inv!1617 (_keys!4917 thiss!1248)) (array_inv!1618 (_values!3125 thiss!1248)) e!102466))))

(declare-fun mapNonEmpty!5411 () Bool)

(declare-fun tp!12655 () Bool)

(assert (=> mapNonEmpty!5411 (= mapRes!5411 (and tp!12655 e!102470))))

(declare-fun mapKey!5411 () (_ BitVec 32))

(declare-fun mapRest!5411 () (Array (_ BitVec 32) ValueCell!1246))

(declare-fun mapValue!5411 () ValueCell!1246)

(assert (=> mapNonEmpty!5411 (= (arr!2563 (_values!3125 thiss!1248)) (store mapRest!5411 mapKey!5411 mapValue!5411))))

(declare-fun b!156659 () Bool)

(assert (=> b!156659 (= e!102466 (and e!102467 mapRes!5411))))

(declare-fun condMapEmpty!5411 () Bool)

(declare-fun mapDefault!5411 () ValueCell!1246)

