; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21896 () Bool)

(assert start!21896)

(declare-fun b!221355 () Bool)

(declare-fun b_free!5951 () Bool)

(declare-fun b_next!5951 () Bool)

(assert (=> b!221355 (= b_free!5951 (not b_next!5951))))

(declare-fun tp!20994 () Bool)

(declare-fun b_and!12867 () Bool)

(assert (=> b!221355 (= tp!20994 b_and!12867)))

(declare-fun b!221336 () Bool)

(declare-fun e!143863 () Bool)

(declare-fun e!143866 () Bool)

(assert (=> b!221336 (= e!143863 e!143866)))

(declare-fun res!108607 () Bool)

(declare-fun call!20685 () Bool)

(assert (=> b!221336 (= res!108607 call!20685)))

(assert (=> b!221336 (=> (not res!108607) (not e!143866))))

(declare-fun b!221337 () Bool)

(declare-fun res!108597 () Bool)

(declare-fun e!143874 () Bool)

(assert (=> b!221337 (=> (not res!108597) (not e!143874))))

(declare-datatypes ((V!7397 0))(
  ( (V!7398 (val!2951 Int)) )
))
(declare-datatypes ((ValueCell!2563 0))(
  ( (ValueCellFull!2563 (v!4967 V!7397)) (EmptyCell!2563) )
))
(declare-datatypes ((array!10868 0))(
  ( (array!10869 (arr!5153 (Array (_ BitVec 32) ValueCell!2563)) (size!5486 (_ BitVec 32))) )
))
(declare-datatypes ((array!10870 0))(
  ( (array!10871 (arr!5154 (Array (_ BitVec 32) (_ BitVec 64))) (size!5487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3026 0))(
  ( (LongMapFixedSize!3027 (defaultEntry!4172 Int) (mask!9982 (_ BitVec 32)) (extraKeys!3909 (_ BitVec 32)) (zeroValue!4013 V!7397) (minValue!4013 V!7397) (_size!1562 (_ BitVec 32)) (_keys!6226 array!10870) (_values!4155 array!10868) (_vacant!1562 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3026)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10870 (_ BitVec 32)) Bool)

(assert (=> b!221337 (= res!108597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6226 thiss!1504) (mask!9982 thiss!1504)))))

(declare-fun mapIsEmpty!9889 () Bool)

(declare-fun mapRes!9889 () Bool)

(assert (=> mapIsEmpty!9889 mapRes!9889))

(declare-fun b!221339 () Bool)

(declare-datatypes ((Unit!6611 0))(
  ( (Unit!6612) )
))
(declare-fun e!143870 () Unit!6611)

(declare-fun Unit!6613 () Unit!6611)

(assert (=> b!221339 (= e!143870 Unit!6613)))

(declare-fun lt!112417 () Unit!6611)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!216 (array!10870 array!10868 (_ BitVec 32) (_ BitVec 32) V!7397 V!7397 (_ BitVec 64) Int) Unit!6611)

(assert (=> b!221339 (= lt!112417 (lemmaInListMapThenSeekEntryOrOpenFindsIt!216 (_keys!6226 thiss!1504) (_values!4155 thiss!1504) (mask!9982 thiss!1504) (extraKeys!3909 thiss!1504) (zeroValue!4013 thiss!1504) (minValue!4013 thiss!1504) key!932 (defaultEntry!4172 thiss!1504)))))

(assert (=> b!221339 false))

(declare-fun b!221340 () Bool)

(assert (=> b!221340 (= e!143874 false)))

(declare-fun lt!112419 () Bool)

(declare-datatypes ((List!3300 0))(
  ( (Nil!3297) (Cons!3296 (h!3944 (_ BitVec 64)) (t!8267 List!3300)) )
))
(declare-fun arrayNoDuplicates!0 (array!10870 (_ BitVec 32) List!3300) Bool)

(assert (=> b!221340 (= lt!112419 (arrayNoDuplicates!0 (_keys!6226 thiss!1504) #b00000000000000000000000000000000 Nil!3297))))

(declare-fun b!221341 () Bool)

(declare-fun e!143875 () Bool)

(declare-fun call!20686 () Bool)

(assert (=> b!221341 (= e!143875 (not call!20686))))

(declare-fun b!221342 () Bool)

(declare-fun res!108604 () Bool)

(declare-fun e!143871 () Bool)

(assert (=> b!221342 (=> (not res!108604) (not e!143871))))

(assert (=> b!221342 (= res!108604 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221343 () Bool)

(declare-fun e!143872 () Bool)

(declare-fun tp_is_empty!5813 () Bool)

(assert (=> b!221343 (= e!143872 tp_is_empty!5813)))

(declare-fun b!221344 () Bool)

(declare-fun res!108605 () Bool)

(assert (=> b!221344 (=> (not res!108605) (not e!143874))))

(declare-fun arrayContainsKey!0 (array!10870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221344 (= res!108605 (arrayContainsKey!0 (_keys!6226 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221345 () Bool)

(declare-datatypes ((SeekEntryResult!834 0))(
  ( (MissingZero!834 (index!5506 (_ BitVec 32))) (Found!834 (index!5507 (_ BitVec 32))) (Intermediate!834 (undefined!1646 Bool) (index!5508 (_ BitVec 32)) (x!23014 (_ BitVec 32))) (Undefined!834) (MissingVacant!834 (index!5509 (_ BitVec 32))) )
))
(declare-fun lt!112415 () SeekEntryResult!834)

(assert (=> b!221345 (= e!143863 (is-Undefined!834 lt!112415))))

(declare-fun bm!20682 () Bool)

(assert (=> bm!20682 (= call!20686 (arrayContainsKey!0 (_keys!6226 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9889 () Bool)

(declare-fun tp!20995 () Bool)

(declare-fun e!143869 () Bool)

(assert (=> mapNonEmpty!9889 (= mapRes!9889 (and tp!20995 e!143869))))

(declare-fun mapRest!9889 () (Array (_ BitVec 32) ValueCell!2563))

(declare-fun mapValue!9889 () ValueCell!2563)

(declare-fun mapKey!9889 () (_ BitVec 32))

(assert (=> mapNonEmpty!9889 (= (arr!5153 (_values!4155 thiss!1504)) (store mapRest!9889 mapKey!9889 mapValue!9889))))

(declare-fun c!36794 () Bool)

(declare-fun bm!20683 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20683 (= call!20685 (inRange!0 (ite c!36794 (index!5506 lt!112415) (index!5509 lt!112415)) (mask!9982 thiss!1504)))))

(declare-fun b!221346 () Bool)

(declare-fun lt!112418 () Unit!6611)

(assert (=> b!221346 (= e!143870 lt!112418)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!224 (array!10870 array!10868 (_ BitVec 32) (_ BitVec 32) V!7397 V!7397 (_ BitVec 64) Int) Unit!6611)

(assert (=> b!221346 (= lt!112418 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!224 (_keys!6226 thiss!1504) (_values!4155 thiss!1504) (mask!9982 thiss!1504) (extraKeys!3909 thiss!1504) (zeroValue!4013 thiss!1504) (minValue!4013 thiss!1504) key!932 (defaultEntry!4172 thiss!1504)))))

(assert (=> b!221346 (= c!36794 (is-MissingZero!834 lt!112415))))

(declare-fun e!143867 () Bool)

(assert (=> b!221346 e!143867))

(declare-fun b!221347 () Bool)

(declare-fun res!108600 () Bool)

(assert (=> b!221347 (= res!108600 (= (select (arr!5154 (_keys!6226 thiss!1504)) (index!5509 lt!112415)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221347 (=> (not res!108600) (not e!143866))))

(declare-fun b!221348 () Bool)

(declare-fun e!143864 () Bool)

(assert (=> b!221348 (= e!143864 e!143874)))

(declare-fun res!108606 () Bool)

(assert (=> b!221348 (=> (not res!108606) (not e!143874))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221348 (= res!108606 (inRange!0 index!297 (mask!9982 thiss!1504)))))

(declare-fun lt!112416 () Unit!6611)

(assert (=> b!221348 (= lt!112416 e!143870)))

(declare-fun c!36793 () Bool)

(declare-datatypes ((tuple2!4374 0))(
  ( (tuple2!4375 (_1!2197 (_ BitVec 64)) (_2!2197 V!7397)) )
))
(declare-datatypes ((List!3301 0))(
  ( (Nil!3298) (Cons!3297 (h!3945 tuple2!4374) (t!8268 List!3301)) )
))
(declare-datatypes ((ListLongMap!3301 0))(
  ( (ListLongMap!3302 (toList!1666 List!3301)) )
))
(declare-fun contains!1503 (ListLongMap!3301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1189 (array!10870 array!10868 (_ BitVec 32) (_ BitVec 32) V!7397 V!7397 (_ BitVec 32) Int) ListLongMap!3301)

(assert (=> b!221348 (= c!36793 (contains!1503 (getCurrentListMap!1189 (_keys!6226 thiss!1504) (_values!4155 thiss!1504) (mask!9982 thiss!1504) (extraKeys!3909 thiss!1504) (zeroValue!4013 thiss!1504) (minValue!4013 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4172 thiss!1504)) key!932))))

(declare-fun b!221338 () Bool)

(declare-fun res!108601 () Bool)

(assert (=> b!221338 (=> (not res!108601) (not e!143874))))

(assert (=> b!221338 (= res!108601 (and (= (size!5486 (_values!4155 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9982 thiss!1504))) (= (size!5487 (_keys!6226 thiss!1504)) (size!5486 (_values!4155 thiss!1504))) (bvsge (mask!9982 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3909 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3909 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!108602 () Bool)

(assert (=> start!21896 (=> (not res!108602) (not e!143871))))

(declare-fun valid!1213 (LongMapFixedSize!3026) Bool)

(assert (=> start!21896 (= res!108602 (valid!1213 thiss!1504))))

(assert (=> start!21896 e!143871))

(declare-fun e!143865 () Bool)

(assert (=> start!21896 e!143865))

(assert (=> start!21896 true))

(declare-fun b!221349 () Bool)

(assert (=> b!221349 (= e!143871 e!143864)))

(declare-fun res!108603 () Bool)

(assert (=> b!221349 (=> (not res!108603) (not e!143864))))

(assert (=> b!221349 (= res!108603 (or (= lt!112415 (MissingZero!834 index!297)) (= lt!112415 (MissingVacant!834 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10870 (_ BitVec 32)) SeekEntryResult!834)

(assert (=> b!221349 (= lt!112415 (seekEntryOrOpen!0 key!932 (_keys!6226 thiss!1504) (mask!9982 thiss!1504)))))

(declare-fun b!221350 () Bool)

(assert (=> b!221350 (= e!143869 tp_is_empty!5813)))

(declare-fun b!221351 () Bool)

(declare-fun c!36792 () Bool)

(assert (=> b!221351 (= c!36792 (is-MissingVacant!834 lt!112415))))

(assert (=> b!221351 (= e!143867 e!143863)))

(declare-fun b!221352 () Bool)

(declare-fun res!108596 () Bool)

(assert (=> b!221352 (=> (not res!108596) (not e!143874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221352 (= res!108596 (validMask!0 (mask!9982 thiss!1504)))))

(declare-fun b!221353 () Bool)

(declare-fun e!143868 () Bool)

(assert (=> b!221353 (= e!143868 (and e!143872 mapRes!9889))))

(declare-fun condMapEmpty!9889 () Bool)

(declare-fun mapDefault!9889 () ValueCell!2563)

