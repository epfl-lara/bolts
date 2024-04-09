; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19276 () Bool)

(assert start!19276)

(declare-fun b!189556 () Bool)

(declare-fun b_free!4655 () Bool)

(declare-fun b_next!4655 () Bool)

(assert (=> b!189556 (= b_free!4655 (not b_next!4655))))

(declare-fun tp!16798 () Bool)

(declare-fun b_and!11311 () Bool)

(assert (=> b!189556 (= tp!16798 b_and!11311)))

(declare-fun b!189549 () Bool)

(declare-fun e!124761 () Bool)

(declare-datatypes ((SeekEntryResult!677 0))(
  ( (MissingZero!677 (index!4878 (_ BitVec 32))) (Found!677 (index!4879 (_ BitVec 32))) (Intermediate!677 (undefined!1489 Bool) (index!4880 (_ BitVec 32)) (x!20443 (_ BitVec 32))) (Undefined!677) (MissingVacant!677 (index!4881 (_ BitVec 32))) )
))
(declare-fun lt!93849 () SeekEntryResult!677)

(declare-datatypes ((V!5549 0))(
  ( (V!5550 (val!2258 Int)) )
))
(declare-datatypes ((ValueCell!1870 0))(
  ( (ValueCellFull!1870 (v!4175 V!5549)) (EmptyCell!1870) )
))
(declare-datatypes ((array!8082 0))(
  ( (array!8083 (arr!3810 (Array (_ BitVec 32) (_ BitVec 64))) (size!4130 (_ BitVec 32))) )
))
(declare-datatypes ((array!8084 0))(
  ( (array!8085 (arr!3811 (Array (_ BitVec 32) ValueCell!1870)) (size!4131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2648 0))(
  ( (LongMapFixedSize!2649 (defaultEntry!3868 Int) (mask!9057 (_ BitVec 32)) (extraKeys!3605 (_ BitVec 32)) (zeroValue!3709 V!5549) (minValue!3709 V!5549) (_size!1373 (_ BitVec 32)) (_keys!5835 array!8082) (_values!3851 array!8084) (_vacant!1373 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2648)

(assert (=> b!189549 (= e!124761 (not (and (bvsge (index!4879 lt!93849) #b00000000000000000000000000000000) (bvslt (index!4879 lt!93849) (size!4131 (_values!3851 thiss!1248))))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!5549)

(declare-datatypes ((tuple2!3508 0))(
  ( (tuple2!3509 (_1!1764 (_ BitVec 64)) (_2!1764 V!5549)) )
))
(declare-datatypes ((List!2430 0))(
  ( (Nil!2427) (Cons!2426 (h!3063 tuple2!3508) (t!7342 List!2430)) )
))
(declare-datatypes ((ListLongMap!2439 0))(
  ( (ListLongMap!2440 (toList!1235 List!2430)) )
))
(declare-fun lt!93844 () ListLongMap!2439)

(declare-fun +!293 (ListLongMap!2439 tuple2!3508) ListLongMap!2439)

(declare-fun getCurrentListMap!878 (array!8082 array!8084 (_ BitVec 32) (_ BitVec 32) V!5549 V!5549 (_ BitVec 32) Int) ListLongMap!2439)

(assert (=> b!189549 (= (+!293 lt!93844 (tuple2!3509 key!828 v!309)) (getCurrentListMap!878 (_keys!5835 thiss!1248) (array!8085 (store (arr!3811 (_values!3851 thiss!1248)) (index!4879 lt!93849) (ValueCellFull!1870 v!309)) (size!4131 (_values!3851 thiss!1248))) (mask!9057 thiss!1248) (extraKeys!3605 thiss!1248) (zeroValue!3709 thiss!1248) (minValue!3709 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3868 thiss!1248)))))

(declare-datatypes ((Unit!5722 0))(
  ( (Unit!5723) )
))
(declare-fun lt!93846 () Unit!5722)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!99 (array!8082 array!8084 (_ BitVec 32) (_ BitVec 32) V!5549 V!5549 (_ BitVec 32) (_ BitVec 64) V!5549 Int) Unit!5722)

(assert (=> b!189549 (= lt!93846 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!99 (_keys!5835 thiss!1248) (_values!3851 thiss!1248) (mask!9057 thiss!1248) (extraKeys!3605 thiss!1248) (zeroValue!3709 thiss!1248) (minValue!3709 thiss!1248) (index!4879 lt!93849) key!828 v!309 (defaultEntry!3868 thiss!1248)))))

(declare-fun lt!93847 () Unit!5722)

(declare-fun e!124760 () Unit!5722)

(assert (=> b!189549 (= lt!93847 e!124760)))

(declare-fun c!34036 () Bool)

(declare-fun contains!1336 (ListLongMap!2439 (_ BitVec 64)) Bool)

(assert (=> b!189549 (= c!34036 (contains!1336 lt!93844 key!828))))

(assert (=> b!189549 (= lt!93844 (getCurrentListMap!878 (_keys!5835 thiss!1248) (_values!3851 thiss!1248) (mask!9057 thiss!1248) (extraKeys!3605 thiss!1248) (zeroValue!3709 thiss!1248) (minValue!3709 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3868 thiss!1248)))))

(declare-fun b!189551 () Bool)

(declare-fun e!124763 () Bool)

(assert (=> b!189551 (= e!124763 e!124761)))

(declare-fun res!89650 () Bool)

(assert (=> b!189551 (=> (not res!89650) (not e!124761))))

(assert (=> b!189551 (= res!89650 (and (not (is-Undefined!677 lt!93849)) (not (is-MissingVacant!677 lt!93849)) (not (is-MissingZero!677 lt!93849)) (is-Found!677 lt!93849)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8082 (_ BitVec 32)) SeekEntryResult!677)

(assert (=> b!189551 (= lt!93849 (seekEntryOrOpen!0 key!828 (_keys!5835 thiss!1248) (mask!9057 thiss!1248)))))

(declare-fun mapIsEmpty!7636 () Bool)

(declare-fun mapRes!7636 () Bool)

(assert (=> mapIsEmpty!7636 mapRes!7636))

(declare-fun b!189552 () Bool)

(declare-fun e!124755 () Bool)

(assert (=> b!189552 (= e!124755 (= (select (arr!3810 (_keys!5835 thiss!1248)) (index!4879 lt!93849)) key!828))))

(declare-fun mapNonEmpty!7636 () Bool)

(declare-fun tp!16797 () Bool)

(declare-fun e!124757 () Bool)

(assert (=> mapNonEmpty!7636 (= mapRes!7636 (and tp!16797 e!124757))))

(declare-fun mapKey!7636 () (_ BitVec 32))

(declare-fun mapRest!7636 () (Array (_ BitVec 32) ValueCell!1870))

(declare-fun mapValue!7636 () ValueCell!1870)

(assert (=> mapNonEmpty!7636 (= (arr!3811 (_values!3851 thiss!1248)) (store mapRest!7636 mapKey!7636 mapValue!7636))))

(declare-fun b!189553 () Bool)

(declare-fun e!124758 () Bool)

(declare-fun tp_is_empty!4427 () Bool)

(assert (=> b!189553 (= e!124758 tp_is_empty!4427)))

(declare-fun res!89649 () Bool)

(assert (=> start!19276 (=> (not res!89649) (not e!124763))))

(declare-fun valid!1079 (LongMapFixedSize!2648) Bool)

(assert (=> start!19276 (= res!89649 (valid!1079 thiss!1248))))

(assert (=> start!19276 e!124763))

(declare-fun e!124759 () Bool)

(assert (=> start!19276 e!124759))

(assert (=> start!19276 true))

(assert (=> start!19276 tp_is_empty!4427))

(declare-fun b!189550 () Bool)

(declare-fun Unit!5724 () Unit!5722)

(assert (=> b!189550 (= e!124760 Unit!5724)))

(declare-fun lt!93848 () Unit!5722)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!168 (array!8082 array!8084 (_ BitVec 32) (_ BitVec 32) V!5549 V!5549 (_ BitVec 64) Int) Unit!5722)

(assert (=> b!189550 (= lt!93848 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!168 (_keys!5835 thiss!1248) (_values!3851 thiss!1248) (mask!9057 thiss!1248) (extraKeys!3605 thiss!1248) (zeroValue!3709 thiss!1248) (minValue!3709 thiss!1248) key!828 (defaultEntry!3868 thiss!1248)))))

(assert (=> b!189550 false))

(declare-fun b!189554 () Bool)

(declare-fun e!124756 () Bool)

(assert (=> b!189554 (= e!124756 (and e!124758 mapRes!7636))))

(declare-fun condMapEmpty!7636 () Bool)

(declare-fun mapDefault!7636 () ValueCell!1870)

