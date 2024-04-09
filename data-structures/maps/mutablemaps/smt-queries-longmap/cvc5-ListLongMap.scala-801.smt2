; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19266 () Bool)

(assert start!19266)

(declare-fun b!189359 () Bool)

(declare-fun b_free!4645 () Bool)

(declare-fun b_next!4645 () Bool)

(assert (=> b!189359 (= b_free!4645 (not b_next!4645))))

(declare-fun tp!16768 () Bool)

(declare-fun b_and!11301 () Bool)

(assert (=> b!189359 (= tp!16768 b_and!11301)))

(declare-fun mapNonEmpty!7621 () Bool)

(declare-fun mapRes!7621 () Bool)

(declare-fun tp!16767 () Bool)

(declare-fun e!124619 () Bool)

(assert (=> mapNonEmpty!7621 (= mapRes!7621 (and tp!16767 e!124619))))

(declare-fun mapKey!7621 () (_ BitVec 32))

(declare-datatypes ((V!5537 0))(
  ( (V!5538 (val!2253 Int)) )
))
(declare-datatypes ((ValueCell!1865 0))(
  ( (ValueCellFull!1865 (v!4170 V!5537)) (EmptyCell!1865) )
))
(declare-datatypes ((array!8062 0))(
  ( (array!8063 (arr!3800 (Array (_ BitVec 32) (_ BitVec 64))) (size!4120 (_ BitVec 32))) )
))
(declare-datatypes ((array!8064 0))(
  ( (array!8065 (arr!3801 (Array (_ BitVec 32) ValueCell!1865)) (size!4121 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2638 0))(
  ( (LongMapFixedSize!2639 (defaultEntry!3863 Int) (mask!9050 (_ BitVec 32)) (extraKeys!3600 (_ BitVec 32)) (zeroValue!3704 V!5537) (minValue!3704 V!5537) (_size!1368 (_ BitVec 32)) (_keys!5830 array!8062) (_values!3846 array!8064) (_vacant!1368 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2638)

(declare-fun mapValue!7621 () ValueCell!1865)

(declare-fun mapRest!7621 () (Array (_ BitVec 32) ValueCell!1865))

(assert (=> mapNonEmpty!7621 (= (arr!3801 (_values!3846 thiss!1248)) (store mapRest!7621 mapKey!7621 mapValue!7621))))

(declare-fun b!189357 () Bool)

(declare-fun res!89546 () Bool)

(declare-fun e!124615 () Bool)

(assert (=> b!189357 (=> (not res!89546) (not e!124615))))

(assert (=> b!189357 (= res!89546 (and (= (size!4121 (_values!3846 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9050 thiss!1248))) (= (size!4120 (_keys!5830 thiss!1248)) (size!4121 (_values!3846 thiss!1248))) (bvsge (mask!9050 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3600 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3600 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!189358 () Bool)

(declare-datatypes ((Unit!5708 0))(
  ( (Unit!5709) )
))
(declare-fun e!124622 () Unit!5708)

(declare-fun lt!93768 () Unit!5708)

(assert (=> b!189358 (= e!124622 lt!93768)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!163 (array!8062 array!8064 (_ BitVec 32) (_ BitVec 32) V!5537 V!5537 (_ BitVec 64) Int) Unit!5708)

(assert (=> b!189358 (= lt!93768 (lemmaInListMapThenSeekEntryOrOpenFindsIt!163 (_keys!5830 thiss!1248) (_values!3846 thiss!1248) (mask!9050 thiss!1248) (extraKeys!3600 thiss!1248) (zeroValue!3704 thiss!1248) (minValue!3704 thiss!1248) key!828 (defaultEntry!3863 thiss!1248)))))

(declare-fun res!89548 () Bool)

(declare-datatypes ((SeekEntryResult!672 0))(
  ( (MissingZero!672 (index!4858 (_ BitVec 32))) (Found!672 (index!4859 (_ BitVec 32))) (Intermediate!672 (undefined!1484 Bool) (index!4860 (_ BitVec 32)) (x!20430 (_ BitVec 32))) (Undefined!672) (MissingVacant!672 (index!4861 (_ BitVec 32))) )
))
(declare-fun lt!93771 () SeekEntryResult!672)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189358 (= res!89548 (inRange!0 (index!4859 lt!93771) (mask!9050 thiss!1248)))))

(declare-fun e!124614 () Bool)

(assert (=> b!189358 (=> (not res!89548) (not e!124614))))

(assert (=> b!189358 e!124614))

(declare-fun e!124613 () Bool)

(declare-fun tp_is_empty!4417 () Bool)

(declare-fun e!124620 () Bool)

(declare-fun array_inv!2453 (array!8062) Bool)

(declare-fun array_inv!2454 (array!8064) Bool)

(assert (=> b!189359 (= e!124613 (and tp!16768 tp_is_empty!4417 (array_inv!2453 (_keys!5830 thiss!1248)) (array_inv!2454 (_values!3846 thiss!1248)) e!124620))))

(declare-fun b!189360 () Bool)

(declare-fun e!124617 () Bool)

(declare-fun e!124616 () Bool)

(assert (=> b!189360 (= e!124617 e!124616)))

(declare-fun res!89545 () Bool)

(assert (=> b!189360 (=> (not res!89545) (not e!124616))))

(assert (=> b!189360 (= res!89545 (and (not (is-Undefined!672 lt!93771)) (not (is-MissingVacant!672 lt!93771)) (not (is-MissingZero!672 lt!93771)) (is-Found!672 lt!93771)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8062 (_ BitVec 32)) SeekEntryResult!672)

(assert (=> b!189360 (= lt!93771 (seekEntryOrOpen!0 key!828 (_keys!5830 thiss!1248) (mask!9050 thiss!1248)))))

(declare-fun b!189361 () Bool)

(declare-fun res!89552 () Bool)

(assert (=> b!189361 (=> (not res!89552) (not e!124615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8062 (_ BitVec 32)) Bool)

(assert (=> b!189361 (= res!89552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5830 thiss!1248) (mask!9050 thiss!1248)))))

(declare-fun b!189362 () Bool)

(declare-fun Unit!5710 () Unit!5708)

(assert (=> b!189362 (= e!124622 Unit!5710)))

(declare-fun lt!93770 () Unit!5708)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!164 (array!8062 array!8064 (_ BitVec 32) (_ BitVec 32) V!5537 V!5537 (_ BitVec 64) Int) Unit!5708)

(assert (=> b!189362 (= lt!93770 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!164 (_keys!5830 thiss!1248) (_values!3846 thiss!1248) (mask!9050 thiss!1248) (extraKeys!3600 thiss!1248) (zeroValue!3704 thiss!1248) (minValue!3704 thiss!1248) key!828 (defaultEntry!3863 thiss!1248)))))

(assert (=> b!189362 false))

(declare-fun b!189363 () Bool)

(assert (=> b!189363 (= e!124619 tp_is_empty!4417)))

(declare-fun b!189365 () Bool)

(assert (=> b!189365 (= e!124614 (= (select (arr!3800 (_keys!5830 thiss!1248)) (index!4859 lt!93771)) key!828))))

(declare-fun b!189366 () Bool)

(assert (=> b!189366 (= e!124616 e!124615)))

(declare-fun res!89554 () Bool)

(assert (=> b!189366 (=> (not res!89554) (not e!124615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189366 (= res!89554 (validMask!0 (mask!9050 thiss!1248)))))

(declare-fun lt!93769 () Unit!5708)

(assert (=> b!189366 (= lt!93769 e!124622)))

(declare-fun c!34021 () Bool)

(declare-datatypes ((tuple2!3502 0))(
  ( (tuple2!3503 (_1!1761 (_ BitVec 64)) (_2!1761 V!5537)) )
))
(declare-datatypes ((List!2426 0))(
  ( (Nil!2423) (Cons!2422 (h!3059 tuple2!3502) (t!7338 List!2426)) )
))
(declare-datatypes ((ListLongMap!2433 0))(
  ( (ListLongMap!2434 (toList!1232 List!2426)) )
))
(declare-fun contains!1333 (ListLongMap!2433 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!875 (array!8062 array!8064 (_ BitVec 32) (_ BitVec 32) V!5537 V!5537 (_ BitVec 32) Int) ListLongMap!2433)

(assert (=> b!189366 (= c!34021 (contains!1333 (getCurrentListMap!875 (_keys!5830 thiss!1248) (_values!3846 thiss!1248) (mask!9050 thiss!1248) (extraKeys!3600 thiss!1248) (zeroValue!3704 thiss!1248) (minValue!3704 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3863 thiss!1248)) key!828))))

(declare-fun b!189367 () Bool)

(declare-fun e!124621 () Bool)

(assert (=> b!189367 (= e!124620 (and e!124621 mapRes!7621))))

(declare-fun condMapEmpty!7621 () Bool)

(declare-fun mapDefault!7621 () ValueCell!1865)

