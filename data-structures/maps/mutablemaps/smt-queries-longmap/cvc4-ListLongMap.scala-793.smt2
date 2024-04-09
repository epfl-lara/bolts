; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18920 () Bool)

(assert start!18920)

(declare-fun b!186637 () Bool)

(declare-fun b_free!4601 () Bool)

(declare-fun b_next!4601 () Bool)

(assert (=> b!186637 (= b_free!4601 (not b_next!4601))))

(declare-fun tp!16609 () Bool)

(declare-fun b_and!11229 () Bool)

(assert (=> b!186637 (= tp!16609 b_and!11229)))

(declare-fun res!88290 () Bool)

(declare-fun e!122851 () Bool)

(assert (=> start!18920 (=> (not res!88290) (not e!122851))))

(declare-datatypes ((V!5477 0))(
  ( (V!5478 (val!2231 Int)) )
))
(declare-datatypes ((ValueCell!1843 0))(
  ( (ValueCellFull!1843 (v!4140 V!5477)) (EmptyCell!1843) )
))
(declare-datatypes ((array!7958 0))(
  ( (array!7959 (arr!3756 (Array (_ BitVec 32) (_ BitVec 64))) (size!4073 (_ BitVec 32))) )
))
(declare-datatypes ((array!7960 0))(
  ( (array!7961 (arr!3757 (Array (_ BitVec 32) ValueCell!1843)) (size!4074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2594 0))(
  ( (LongMapFixedSize!2595 (defaultEntry!3808 Int) (mask!8939 (_ BitVec 32)) (extraKeys!3545 (_ BitVec 32)) (zeroValue!3649 V!5477) (minValue!3649 V!5477) (_size!1346 (_ BitVec 32)) (_keys!5754 array!7958) (_values!3791 array!7960) (_vacant!1346 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2594)

(declare-fun valid!1060 (LongMapFixedSize!2594) Bool)

(assert (=> start!18920 (= res!88290 (valid!1060 thiss!1248))))

(assert (=> start!18920 e!122851))

(declare-fun e!122854 () Bool)

(assert (=> start!18920 e!122854))

(assert (=> start!18920 true))

(declare-fun b!186630 () Bool)

(declare-fun e!122847 () Bool)

(declare-fun tp_is_empty!4373 () Bool)

(assert (=> b!186630 (= e!122847 tp_is_empty!4373)))

(declare-fun b!186631 () Bool)

(declare-datatypes ((Unit!5621 0))(
  ( (Unit!5622) )
))
(declare-fun e!122855 () Unit!5621)

(declare-fun Unit!5623 () Unit!5621)

(assert (=> b!186631 (= e!122855 Unit!5623)))

(declare-fun lt!92328 () Unit!5621)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!147 (array!7958 array!7960 (_ BitVec 32) (_ BitVec 32) V!5477 V!5477 (_ BitVec 64) Int) Unit!5621)

(assert (=> b!186631 (= lt!92328 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!147 (_keys!5754 thiss!1248) (_values!3791 thiss!1248) (mask!8939 thiss!1248) (extraKeys!3545 thiss!1248) (zeroValue!3649 thiss!1248) (minValue!3649 thiss!1248) key!828 (defaultEntry!3808 thiss!1248)))))

(assert (=> b!186631 false))

(declare-fun b!186632 () Bool)

(declare-fun e!122846 () Bool)

(declare-fun e!122850 () Bool)

(assert (=> b!186632 (= e!122846 e!122850)))

(declare-fun res!88291 () Bool)

(assert (=> b!186632 (=> (not res!88291) (not e!122850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!186632 (= res!88291 (validMask!0 (mask!8939 thiss!1248)))))

(declare-fun lt!92330 () Unit!5621)

(assert (=> b!186632 (= lt!92330 e!122855)))

(declare-fun c!33463 () Bool)

(declare-datatypes ((tuple2!3468 0))(
  ( (tuple2!3469 (_1!1744 (_ BitVec 64)) (_2!1744 V!5477)) )
))
(declare-datatypes ((List!2397 0))(
  ( (Nil!2394) (Cons!2393 (h!3027 tuple2!3468) (t!7293 List!2397)) )
))
(declare-datatypes ((ListLongMap!2399 0))(
  ( (ListLongMap!2400 (toList!1215 List!2397)) )
))
(declare-fun contains!1307 (ListLongMap!2399 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!858 (array!7958 array!7960 (_ BitVec 32) (_ BitVec 32) V!5477 V!5477 (_ BitVec 32) Int) ListLongMap!2399)

(assert (=> b!186632 (= c!33463 (contains!1307 (getCurrentListMap!858 (_keys!5754 thiss!1248) (_values!3791 thiss!1248) (mask!8939 thiss!1248) (extraKeys!3545 thiss!1248) (zeroValue!3649 thiss!1248) (minValue!3649 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3808 thiss!1248)) key!828))))

(declare-fun b!186633 () Bool)

(assert (=> b!186633 (= e!122850 (and (= (size!4074 (_values!3791 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8939 thiss!1248))) (not (= (size!4073 (_keys!5754 thiss!1248)) (size!4074 (_values!3791 thiss!1248))))))))

(declare-fun b!186634 () Bool)

(declare-fun lt!92331 () Unit!5621)

(assert (=> b!186634 (= e!122855 lt!92331)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!148 (array!7958 array!7960 (_ BitVec 32) (_ BitVec 32) V!5477 V!5477 (_ BitVec 64) Int) Unit!5621)

(assert (=> b!186634 (= lt!92331 (lemmaInListMapThenSeekEntryOrOpenFindsIt!148 (_keys!5754 thiss!1248) (_values!3791 thiss!1248) (mask!8939 thiss!1248) (extraKeys!3545 thiss!1248) (zeroValue!3649 thiss!1248) (minValue!3649 thiss!1248) key!828 (defaultEntry!3808 thiss!1248)))))

(declare-fun res!88287 () Bool)

(declare-datatypes ((SeekEntryResult!655 0))(
  ( (MissingZero!655 (index!4790 (_ BitVec 32))) (Found!655 (index!4791 (_ BitVec 32))) (Intermediate!655 (undefined!1467 Bool) (index!4792 (_ BitVec 32)) (x!20245 (_ BitVec 32))) (Undefined!655) (MissingVacant!655 (index!4793 (_ BitVec 32))) )
))
(declare-fun lt!92329 () SeekEntryResult!655)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!186634 (= res!88287 (inRange!0 (index!4791 lt!92329) (mask!8939 thiss!1248)))))

(declare-fun e!122849 () Bool)

(assert (=> b!186634 (=> (not res!88287) (not e!122849))))

(assert (=> b!186634 e!122849))

(declare-fun b!186635 () Bool)

(declare-fun res!88288 () Bool)

(assert (=> b!186635 (=> (not res!88288) (not e!122851))))

(assert (=> b!186635 (= res!88288 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7528 () Bool)

(declare-fun mapRes!7528 () Bool)

(assert (=> mapIsEmpty!7528 mapRes!7528))

(declare-fun mapNonEmpty!7528 () Bool)

(declare-fun tp!16608 () Bool)

(declare-fun e!122852 () Bool)

(assert (=> mapNonEmpty!7528 (= mapRes!7528 (and tp!16608 e!122852))))

(declare-fun mapRest!7528 () (Array (_ BitVec 32) ValueCell!1843))

(declare-fun mapKey!7528 () (_ BitVec 32))

(declare-fun mapValue!7528 () ValueCell!1843)

(assert (=> mapNonEmpty!7528 (= (arr!3757 (_values!3791 thiss!1248)) (store mapRest!7528 mapKey!7528 mapValue!7528))))

(declare-fun b!186636 () Bool)

(assert (=> b!186636 (= e!122849 (= (select (arr!3756 (_keys!5754 thiss!1248)) (index!4791 lt!92329)) key!828))))

(declare-fun e!122853 () Bool)

(declare-fun array_inv!2419 (array!7958) Bool)

(declare-fun array_inv!2420 (array!7960) Bool)

(assert (=> b!186637 (= e!122854 (and tp!16609 tp_is_empty!4373 (array_inv!2419 (_keys!5754 thiss!1248)) (array_inv!2420 (_values!3791 thiss!1248)) e!122853))))

(declare-fun b!186638 () Bool)

(assert (=> b!186638 (= e!122853 (and e!122847 mapRes!7528))))

(declare-fun condMapEmpty!7528 () Bool)

(declare-fun mapDefault!7528 () ValueCell!1843)

