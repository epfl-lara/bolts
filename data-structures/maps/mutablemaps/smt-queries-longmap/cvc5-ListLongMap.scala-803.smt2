; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19300 () Bool)

(assert start!19300)

(declare-fun b!189757 () Bool)

(declare-fun b_free!4657 () Bool)

(declare-fun b_next!4657 () Bool)

(assert (=> b!189757 (= b_free!4657 (not b_next!4657))))

(declare-fun tp!16806 () Bool)

(declare-fun b_and!11317 () Bool)

(assert (=> b!189757 (= tp!16806 b_and!11317)))

(declare-fun b!189748 () Bool)

(declare-datatypes ((Unit!5728 0))(
  ( (Unit!5729) )
))
(declare-fun e!124881 () Unit!5728)

(declare-fun Unit!5730 () Unit!5728)

(assert (=> b!189748 (= e!124881 Unit!5730)))

(declare-fun lt!93999 () Unit!5728)

(declare-datatypes ((V!5553 0))(
  ( (V!5554 (val!2259 Int)) )
))
(declare-datatypes ((ValueCell!1871 0))(
  ( (ValueCellFull!1871 (v!4179 V!5553)) (EmptyCell!1871) )
))
(declare-datatypes ((array!8088 0))(
  ( (array!8089 (arr!3812 (Array (_ BitVec 32) (_ BitVec 64))) (size!4132 (_ BitVec 32))) )
))
(declare-datatypes ((array!8090 0))(
  ( (array!8091 (arr!3813 (Array (_ BitVec 32) ValueCell!1871)) (size!4133 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2650 0))(
  ( (LongMapFixedSize!2651 (defaultEntry!3873 Int) (mask!9066 (_ BitVec 32)) (extraKeys!3610 (_ BitVec 32)) (zeroValue!3714 V!5553) (minValue!3714 V!5553) (_size!1374 (_ BitVec 32)) (_keys!5841 array!8088) (_values!3856 array!8090) (_vacant!1374 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2650)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!169 (array!8088 array!8090 (_ BitVec 32) (_ BitVec 32) V!5553 V!5553 (_ BitVec 64) Int) Unit!5728)

(assert (=> b!189748 (= lt!93999 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!169 (_keys!5841 thiss!1248) (_values!3856 thiss!1248) (mask!9066 thiss!1248) (extraKeys!3610 thiss!1248) (zeroValue!3714 thiss!1248) (minValue!3714 thiss!1248) key!828 (defaultEntry!3873 thiss!1248)))))

(assert (=> b!189748 false))

(declare-fun mapNonEmpty!7642 () Bool)

(declare-fun mapRes!7642 () Bool)

(declare-fun tp!16807 () Bool)

(declare-fun e!124883 () Bool)

(assert (=> mapNonEmpty!7642 (= mapRes!7642 (and tp!16807 e!124883))))

(declare-fun mapKey!7642 () (_ BitVec 32))

(declare-fun mapRest!7642 () (Array (_ BitVec 32) ValueCell!1871))

(declare-fun mapValue!7642 () ValueCell!1871)

(assert (=> mapNonEmpty!7642 (= (arr!3813 (_values!3856 thiss!1248)) (store mapRest!7642 mapKey!7642 mapValue!7642))))

(declare-fun b!189750 () Bool)

(declare-fun e!124887 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189750 (= e!124887 (not (validMask!0 (mask!9066 thiss!1248))))))

(declare-datatypes ((tuple2!3510 0))(
  ( (tuple2!3511 (_1!1765 (_ BitVec 64)) (_2!1765 V!5553)) )
))
(declare-datatypes ((List!2432 0))(
  ( (Nil!2429) (Cons!2428 (h!3065 tuple2!3510) (t!7346 List!2432)) )
))
(declare-datatypes ((ListLongMap!2441 0))(
  ( (ListLongMap!2442 (toList!1236 List!2432)) )
))
(declare-fun lt!94002 () ListLongMap!2441)

(declare-fun v!309 () V!5553)

(declare-datatypes ((SeekEntryResult!678 0))(
  ( (MissingZero!678 (index!4882 (_ BitVec 32))) (Found!678 (index!4883 (_ BitVec 32))) (Intermediate!678 (undefined!1490 Bool) (index!4884 (_ BitVec 32)) (x!20462 (_ BitVec 32))) (Undefined!678) (MissingVacant!678 (index!4885 (_ BitVec 32))) )
))
(declare-fun lt!94000 () SeekEntryResult!678)

(declare-fun +!294 (ListLongMap!2441 tuple2!3510) ListLongMap!2441)

(declare-fun getCurrentListMap!879 (array!8088 array!8090 (_ BitVec 32) (_ BitVec 32) V!5553 V!5553 (_ BitVec 32) Int) ListLongMap!2441)

(assert (=> b!189750 (= (+!294 lt!94002 (tuple2!3511 key!828 v!309)) (getCurrentListMap!879 (_keys!5841 thiss!1248) (array!8091 (store (arr!3813 (_values!3856 thiss!1248)) (index!4883 lt!94000) (ValueCellFull!1871 v!309)) (size!4133 (_values!3856 thiss!1248))) (mask!9066 thiss!1248) (extraKeys!3610 thiss!1248) (zeroValue!3714 thiss!1248) (minValue!3714 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3873 thiss!1248)))))

(declare-fun lt!94003 () Unit!5728)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!100 (array!8088 array!8090 (_ BitVec 32) (_ BitVec 32) V!5553 V!5553 (_ BitVec 32) (_ BitVec 64) V!5553 Int) Unit!5728)

(assert (=> b!189750 (= lt!94003 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!100 (_keys!5841 thiss!1248) (_values!3856 thiss!1248) (mask!9066 thiss!1248) (extraKeys!3610 thiss!1248) (zeroValue!3714 thiss!1248) (minValue!3714 thiss!1248) (index!4883 lt!94000) key!828 v!309 (defaultEntry!3873 thiss!1248)))))

(declare-fun lt!94001 () Unit!5728)

(assert (=> b!189750 (= lt!94001 e!124881)))

(declare-fun c!34081 () Bool)

(declare-fun contains!1338 (ListLongMap!2441 (_ BitVec 64)) Bool)

(assert (=> b!189750 (= c!34081 (contains!1338 lt!94002 key!828))))

(assert (=> b!189750 (= lt!94002 (getCurrentListMap!879 (_keys!5841 thiss!1248) (_values!3856 thiss!1248) (mask!9066 thiss!1248) (extraKeys!3610 thiss!1248) (zeroValue!3714 thiss!1248) (minValue!3714 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3873 thiss!1248)))))

(declare-fun mapIsEmpty!7642 () Bool)

(assert (=> mapIsEmpty!7642 mapRes!7642))

(declare-fun b!189751 () Bool)

(declare-fun tp_is_empty!4429 () Bool)

(assert (=> b!189751 (= e!124883 tp_is_empty!4429)))

(declare-fun b!189749 () Bool)

(declare-fun e!124882 () Bool)

(assert (=> b!189749 (= e!124882 e!124887)))

(declare-fun res!89737 () Bool)

(assert (=> b!189749 (=> (not res!89737) (not e!124887))))

(assert (=> b!189749 (= res!89737 (and (not (is-Undefined!678 lt!94000)) (not (is-MissingVacant!678 lt!94000)) (not (is-MissingZero!678 lt!94000)) (is-Found!678 lt!94000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8088 (_ BitVec 32)) SeekEntryResult!678)

(assert (=> b!189749 (= lt!94000 (seekEntryOrOpen!0 key!828 (_keys!5841 thiss!1248) (mask!9066 thiss!1248)))))

(declare-fun res!89734 () Bool)

(assert (=> start!19300 (=> (not res!89734) (not e!124882))))

(declare-fun valid!1080 (LongMapFixedSize!2650) Bool)

(assert (=> start!19300 (= res!89734 (valid!1080 thiss!1248))))

(assert (=> start!19300 e!124882))

(declare-fun e!124885 () Bool)

(assert (=> start!19300 e!124885))

(assert (=> start!19300 true))

(assert (=> start!19300 tp_is_empty!4429))

(declare-fun b!189752 () Bool)

(declare-fun e!124880 () Bool)

(assert (=> b!189752 (= e!124880 tp_is_empty!4429)))

(declare-fun b!189753 () Bool)

(declare-fun lt!93998 () Unit!5728)

(assert (=> b!189753 (= e!124881 lt!93998)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!168 (array!8088 array!8090 (_ BitVec 32) (_ BitVec 32) V!5553 V!5553 (_ BitVec 64) Int) Unit!5728)

(assert (=> b!189753 (= lt!93998 (lemmaInListMapThenSeekEntryOrOpenFindsIt!168 (_keys!5841 thiss!1248) (_values!3856 thiss!1248) (mask!9066 thiss!1248) (extraKeys!3610 thiss!1248) (zeroValue!3714 thiss!1248) (minValue!3714 thiss!1248) key!828 (defaultEntry!3873 thiss!1248)))))

(declare-fun res!89736 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189753 (= res!89736 (inRange!0 (index!4883 lt!94000) (mask!9066 thiss!1248)))))

(declare-fun e!124886 () Bool)

(assert (=> b!189753 (=> (not res!89736) (not e!124886))))

(assert (=> b!189753 e!124886))

(declare-fun b!189754 () Bool)

(declare-fun e!124879 () Bool)

(assert (=> b!189754 (= e!124879 (and e!124880 mapRes!7642))))

(declare-fun condMapEmpty!7642 () Bool)

(declare-fun mapDefault!7642 () ValueCell!1871)

