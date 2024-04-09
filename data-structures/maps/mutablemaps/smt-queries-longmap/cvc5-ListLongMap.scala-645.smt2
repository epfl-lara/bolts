; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16230 () Bool)

(assert start!16230)

(declare-fun b!161724 () Bool)

(declare-fun b_free!3679 () Bool)

(declare-fun b_next!3679 () Bool)

(assert (=> b!161724 (= b_free!3679 (not b_next!3679))))

(declare-fun tp!13607 () Bool)

(declare-fun b_and!10111 () Bool)

(assert (=> b!161724 (= tp!13607 b_and!10111)))

(declare-fun e!105788 () Bool)

(declare-fun tp_is_empty!3481 () Bool)

(declare-fun e!105786 () Bool)

(declare-datatypes ((V!4289 0))(
  ( (V!4290 (val!1785 Int)) )
))
(declare-datatypes ((ValueCell!1397 0))(
  ( (ValueCellFull!1397 (v!3646 V!4289)) (EmptyCell!1397) )
))
(declare-datatypes ((array!6040 0))(
  ( (array!6041 (arr!2864 (Array (_ BitVec 32) (_ BitVec 64))) (size!3148 (_ BitVec 32))) )
))
(declare-datatypes ((array!6042 0))(
  ( (array!6043 (arr!2865 (Array (_ BitVec 32) ValueCell!1397)) (size!3149 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1702 0))(
  ( (LongMapFixedSize!1703 (defaultEntry!3293 Int) (mask!7895 (_ BitVec 32)) (extraKeys!3034 (_ BitVec 32)) (zeroValue!3136 V!4289) (minValue!3136 V!4289) (_size!900 (_ BitVec 32)) (_keys!5094 array!6040) (_values!3276 array!6042) (_vacant!900 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1702)

(declare-fun array_inv!1821 (array!6040) Bool)

(declare-fun array_inv!1822 (array!6042) Bool)

(assert (=> b!161724 (= e!105788 (and tp!13607 tp_is_empty!3481 (array_inv!1821 (_keys!5094 thiss!1248)) (array_inv!1822 (_values!3276 thiss!1248)) e!105786))))

(declare-fun b!161725 () Bool)

(declare-fun e!105783 () Bool)

(assert (=> b!161725 (= e!105783 tp_is_empty!3481)))

(declare-fun mapNonEmpty!5909 () Bool)

(declare-fun mapRes!5909 () Bool)

(declare-fun tp!13606 () Bool)

(declare-fun e!105787 () Bool)

(assert (=> mapNonEmpty!5909 (= mapRes!5909 (and tp!13606 e!105787))))

(declare-fun mapKey!5909 () (_ BitVec 32))

(declare-fun mapValue!5909 () ValueCell!1397)

(declare-fun mapRest!5909 () (Array (_ BitVec 32) ValueCell!1397))

(assert (=> mapNonEmpty!5909 (= (arr!2865 (_values!3276 thiss!1248)) (store mapRest!5909 mapKey!5909 mapValue!5909))))

(declare-fun mapIsEmpty!5909 () Bool)

(assert (=> mapIsEmpty!5909 mapRes!5909))

(declare-fun b!161726 () Bool)

(declare-fun res!76630 () Bool)

(declare-fun e!105785 () Bool)

(assert (=> b!161726 (=> (not res!76630) (not e!105785))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161726 (= res!76630 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161727 () Bool)

(declare-datatypes ((SeekEntryResult!371 0))(
  ( (MissingZero!371 (index!3652 (_ BitVec 32))) (Found!371 (index!3653 (_ BitVec 32))) (Intermediate!371 (undefined!1183 Bool) (index!3654 (_ BitVec 32)) (x!17875 (_ BitVec 32))) (Undefined!371) (MissingVacant!371 (index!3655 (_ BitVec 32))) )
))
(declare-fun lt!82298 () SeekEntryResult!371)

(assert (=> b!161727 (= e!105785 (and (not (is-Undefined!371 lt!82298)) (is-MissingVacant!371 lt!82298) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!82298 (MissingZero!371 (index!3655 lt!82298)))) (not (= lt!82298 (MissingVacant!371 (index!3655 lt!82298))))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6040 (_ BitVec 32)) SeekEntryResult!371)

(assert (=> b!161727 (= lt!82298 (seekEntryOrOpen!0 key!828 (_keys!5094 thiss!1248) (mask!7895 thiss!1248)))))

(declare-fun b!161728 () Bool)

(assert (=> b!161728 (= e!105787 tp_is_empty!3481)))

(declare-fun b!161729 () Bool)

(assert (=> b!161729 (= e!105786 (and e!105783 mapRes!5909))))

(declare-fun condMapEmpty!5909 () Bool)

(declare-fun mapDefault!5909 () ValueCell!1397)

