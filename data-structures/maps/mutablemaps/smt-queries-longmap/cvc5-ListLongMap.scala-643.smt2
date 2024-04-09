; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16218 () Bool)

(assert start!16218)

(declare-fun b!161618 () Bool)

(declare-fun b_free!3667 () Bool)

(declare-fun b_next!3667 () Bool)

(assert (=> b!161618 (= b_free!3667 (not b_next!3667))))

(declare-fun tp!13571 () Bool)

(declare-fun b_and!10099 () Bool)

(assert (=> b!161618 (= tp!13571 b_and!10099)))

(declare-fun b!161616 () Bool)

(declare-fun e!105677 () Bool)

(declare-fun tp_is_empty!3469 () Bool)

(assert (=> b!161616 (= e!105677 tp_is_empty!3469)))

(declare-fun mapNonEmpty!5891 () Bool)

(declare-fun mapRes!5891 () Bool)

(declare-fun tp!13570 () Bool)

(assert (=> mapNonEmpty!5891 (= mapRes!5891 (and tp!13570 e!105677))))

(declare-datatypes ((V!4273 0))(
  ( (V!4274 (val!1779 Int)) )
))
(declare-datatypes ((ValueCell!1391 0))(
  ( (ValueCellFull!1391 (v!3640 V!4273)) (EmptyCell!1391) )
))
(declare-fun mapRest!5891 () (Array (_ BitVec 32) ValueCell!1391))

(declare-fun mapValue!5891 () ValueCell!1391)

(declare-fun mapKey!5891 () (_ BitVec 32))

(declare-datatypes ((array!6016 0))(
  ( (array!6017 (arr!2852 (Array (_ BitVec 32) (_ BitVec 64))) (size!3136 (_ BitVec 32))) )
))
(declare-datatypes ((array!6018 0))(
  ( (array!6019 (arr!2853 (Array (_ BitVec 32) ValueCell!1391)) (size!3137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1690 0))(
  ( (LongMapFixedSize!1691 (defaultEntry!3287 Int) (mask!7885 (_ BitVec 32)) (extraKeys!3028 (_ BitVec 32)) (zeroValue!3130 V!4273) (minValue!3130 V!4273) (_size!894 (_ BitVec 32)) (_keys!5088 array!6016) (_values!3270 array!6018) (_vacant!894 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1690)

(assert (=> mapNonEmpty!5891 (= (arr!2853 (_values!3270 thiss!1248)) (store mapRest!5891 mapKey!5891 mapValue!5891))))

(declare-fun b!161617 () Bool)

(declare-fun res!76595 () Bool)

(declare-fun e!105680 () Bool)

(assert (=> b!161617 (=> (not res!76595) (not e!105680))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161617 (= res!76595 (not (= key!828 (bvneg key!828))))))

(declare-fun res!76594 () Bool)

(assert (=> start!16218 (=> (not res!76594) (not e!105680))))

(declare-fun valid!765 (LongMapFixedSize!1690) Bool)

(assert (=> start!16218 (= res!76594 (valid!765 thiss!1248))))

(assert (=> start!16218 e!105680))

(declare-fun e!105679 () Bool)

(assert (=> start!16218 e!105679))

(assert (=> start!16218 true))

(declare-fun e!105676 () Bool)

(declare-fun array_inv!1811 (array!6016) Bool)

(declare-fun array_inv!1812 (array!6018) Bool)

(assert (=> b!161618 (= e!105679 (and tp!13571 tp_is_empty!3469 (array_inv!1811 (_keys!5088 thiss!1248)) (array_inv!1812 (_values!3270 thiss!1248)) e!105676))))

(declare-fun mapIsEmpty!5891 () Bool)

(assert (=> mapIsEmpty!5891 mapRes!5891))

(declare-fun b!161619 () Bool)

(declare-fun e!105675 () Bool)

(assert (=> b!161619 (= e!105675 tp_is_empty!3469)))

(declare-fun b!161620 () Bool)

(declare-datatypes ((SeekEntryResult!366 0))(
  ( (MissingZero!366 (index!3632 (_ BitVec 32))) (Found!366 (index!3633 (_ BitVec 32))) (Intermediate!366 (undefined!1178 Bool) (index!3634 (_ BitVec 32)) (x!17854 (_ BitVec 32))) (Undefined!366) (MissingVacant!366 (index!3635 (_ BitVec 32))) )
))
(declare-fun lt!82280 () SeekEntryResult!366)

(assert (=> b!161620 (= e!105680 (and (not (is-Undefined!366 lt!82280)) (is-MissingVacant!366 lt!82280) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6016 (_ BitVec 32)) SeekEntryResult!366)

(assert (=> b!161620 (= lt!82280 (seekEntryOrOpen!0 key!828 (_keys!5088 thiss!1248) (mask!7885 thiss!1248)))))

(declare-fun b!161621 () Bool)

(assert (=> b!161621 (= e!105676 (and e!105675 mapRes!5891))))

(declare-fun condMapEmpty!5891 () Bool)

(declare-fun mapDefault!5891 () ValueCell!1391)

