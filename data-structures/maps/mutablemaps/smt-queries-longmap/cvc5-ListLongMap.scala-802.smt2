; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19272 () Bool)

(assert start!19272)

(declare-fun b!189496 () Bool)

(declare-fun b_free!4651 () Bool)

(declare-fun b_next!4651 () Bool)

(assert (=> b!189496 (= b_free!4651 (not b_next!4651))))

(declare-fun tp!16785 () Bool)

(declare-fun b_and!11307 () Bool)

(assert (=> b!189496 (= tp!16785 b_and!11307)))

(declare-fun mapIsEmpty!7630 () Bool)

(declare-fun mapRes!7630 () Bool)

(assert (=> mapIsEmpty!7630 mapRes!7630))

(declare-fun mapNonEmpty!7630 () Bool)

(declare-fun tp!16786 () Bool)

(declare-fun e!124702 () Bool)

(assert (=> mapNonEmpty!7630 (= mapRes!7630 (and tp!16786 e!124702))))

(declare-datatypes ((V!5545 0))(
  ( (V!5546 (val!2256 Int)) )
))
(declare-datatypes ((ValueCell!1868 0))(
  ( (ValueCellFull!1868 (v!4173 V!5545)) (EmptyCell!1868) )
))
(declare-fun mapValue!7630 () ValueCell!1868)

(declare-fun mapKey!7630 () (_ BitVec 32))

(declare-datatypes ((array!8074 0))(
  ( (array!8075 (arr!3806 (Array (_ BitVec 32) (_ BitVec 64))) (size!4126 (_ BitVec 32))) )
))
(declare-datatypes ((array!8076 0))(
  ( (array!8077 (arr!3807 (Array (_ BitVec 32) ValueCell!1868)) (size!4127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2644 0))(
  ( (LongMapFixedSize!2645 (defaultEntry!3866 Int) (mask!9055 (_ BitVec 32)) (extraKeys!3603 (_ BitVec 32)) (zeroValue!3707 V!5545) (minValue!3707 V!5545) (_size!1371 (_ BitVec 32)) (_keys!5833 array!8074) (_values!3849 array!8076) (_vacant!1371 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2644)

(declare-fun mapRest!7630 () (Array (_ BitVec 32) ValueCell!1868))

(assert (=> mapNonEmpty!7630 (= (arr!3807 (_values!3849 thiss!1248)) (store mapRest!7630 mapKey!7630 mapValue!7630))))

(declare-datatypes ((SeekEntryResult!675 0))(
  ( (MissingZero!675 (index!4870 (_ BitVec 32))) (Found!675 (index!4871 (_ BitVec 32))) (Intermediate!675 (undefined!1487 Bool) (index!4872 (_ BitVec 32)) (x!20441 (_ BitVec 32))) (Undefined!675) (MissingVacant!675 (index!4873 (_ BitVec 32))) )
))
(declare-fun lt!93812 () SeekEntryResult!675)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!124708 () Bool)

(declare-fun b!189489 () Bool)

(assert (=> b!189489 (= e!124708 (= (select (arr!3806 (_keys!5833 thiss!1248)) (index!4871 lt!93812)) key!828))))

(declare-fun b!189490 () Bool)

(declare-datatypes ((Unit!5716 0))(
  ( (Unit!5717) )
))
(declare-fun e!124705 () Unit!5716)

(declare-fun lt!93811 () Unit!5716)

(assert (=> b!189490 (= e!124705 lt!93811)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!166 (array!8074 array!8076 (_ BitVec 32) (_ BitVec 32) V!5545 V!5545 (_ BitVec 64) Int) Unit!5716)

(assert (=> b!189490 (= lt!93811 (lemmaInListMapThenSeekEntryOrOpenFindsIt!166 (_keys!5833 thiss!1248) (_values!3849 thiss!1248) (mask!9055 thiss!1248) (extraKeys!3603 thiss!1248) (zeroValue!3707 thiss!1248) (minValue!3707 thiss!1248) key!828 (defaultEntry!3866 thiss!1248)))))

(declare-fun res!89626 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189490 (= res!89626 (inRange!0 (index!4871 lt!93812) (mask!9055 thiss!1248)))))

(assert (=> b!189490 (=> (not res!89626) (not e!124708))))

(assert (=> b!189490 e!124708))

(declare-fun b!189491 () Bool)

(declare-fun Unit!5718 () Unit!5716)

(assert (=> b!189491 (= e!124705 Unit!5718)))

(declare-fun lt!93813 () Unit!5716)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!166 (array!8074 array!8076 (_ BitVec 32) (_ BitVec 32) V!5545 V!5545 (_ BitVec 64) Int) Unit!5716)

(assert (=> b!189491 (= lt!93813 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!166 (_keys!5833 thiss!1248) (_values!3849 thiss!1248) (mask!9055 thiss!1248) (extraKeys!3603 thiss!1248) (zeroValue!3707 thiss!1248) (minValue!3707 thiss!1248) key!828 (defaultEntry!3866 thiss!1248)))))

(assert (=> b!189491 false))

(declare-fun b!189492 () Bool)

(declare-fun res!89623 () Bool)

(declare-fun e!124704 () Bool)

(assert (=> b!189492 (=> (not res!89623) (not e!124704))))

(assert (=> b!189492 (= res!89623 (not (= key!828 (bvneg key!828))))))

(declare-fun b!189493 () Bool)

(declare-fun tp_is_empty!4423 () Bool)

(assert (=> b!189493 (= e!124702 tp_is_empty!4423)))

(declare-fun res!89625 () Bool)

(assert (=> start!19272 (=> (not res!89625) (not e!124704))))

(declare-fun valid!1077 (LongMapFixedSize!2644) Bool)

(assert (=> start!19272 (= res!89625 (valid!1077 thiss!1248))))

(assert (=> start!19272 e!124704))

(declare-fun e!124703 () Bool)

(assert (=> start!19272 e!124703))

(assert (=> start!19272 true))

(assert (=> start!19272 tp_is_empty!4423))

(declare-fun b!189494 () Bool)

(declare-fun e!124706 () Bool)

(assert (=> b!189494 (= e!124706 tp_is_empty!4423)))

(declare-fun b!189495 () Bool)

(declare-fun e!124701 () Bool)

(assert (=> b!189495 (= e!124701 (and e!124706 mapRes!7630))))

(declare-fun condMapEmpty!7630 () Bool)

(declare-fun mapDefault!7630 () ValueCell!1868)

