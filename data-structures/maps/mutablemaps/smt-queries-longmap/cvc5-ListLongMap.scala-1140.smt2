; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23582 () Bool)

(assert start!23582)

(declare-fun b!247577 () Bool)

(declare-fun b_free!6589 () Bool)

(declare-fun b_next!6589 () Bool)

(assert (=> b!247577 (= b_free!6589 (not b_next!6589))))

(declare-fun tp!23014 () Bool)

(declare-fun b_and!13609 () Bool)

(assert (=> b!247577 (= tp!23014 b_and!13609)))

(declare-fun mapNonEmpty!10952 () Bool)

(declare-fun mapRes!10952 () Bool)

(declare-fun tp!23015 () Bool)

(declare-fun e!160620 () Bool)

(assert (=> mapNonEmpty!10952 (= mapRes!10952 (and tp!23015 e!160620))))

(declare-fun mapKey!10952 () (_ BitVec 32))

(declare-datatypes ((V!8249 0))(
  ( (V!8250 (val!3270 Int)) )
))
(declare-datatypes ((ValueCell!2882 0))(
  ( (ValueCellFull!2882 (v!5324 V!8249)) (EmptyCell!2882) )
))
(declare-fun mapValue!10952 () ValueCell!2882)

(declare-datatypes ((array!12208 0))(
  ( (array!12209 (arr!5791 (Array (_ BitVec 32) ValueCell!2882)) (size!6134 (_ BitVec 32))) )
))
(declare-datatypes ((array!12210 0))(
  ( (array!12211 (arr!5792 (Array (_ BitVec 32) (_ BitVec 64))) (size!6135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3664 0))(
  ( (LongMapFixedSize!3665 (defaultEntry!4581 Int) (mask!10721 (_ BitVec 32)) (extraKeys!4318 (_ BitVec 32)) (zeroValue!4422 V!8249) (minValue!4422 V!8249) (_size!1881 (_ BitVec 32)) (_keys!6703 array!12210) (_values!4564 array!12208) (_vacant!1881 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3664)

(declare-fun mapRest!10952 () (Array (_ BitVec 32) ValueCell!2882))

(assert (=> mapNonEmpty!10952 (= (arr!5791 (_values!4564 thiss!1504)) (store mapRest!10952 mapKey!10952 mapValue!10952))))

(declare-fun b!247576 () Bool)

(declare-fun e!160616 () Bool)

(assert (=> b!247576 (= e!160616 (not true))))

(declare-fun lt!124037 () array!12210)

(declare-fun arrayCountValidKeys!0 (array!12210 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247576 (= (arrayCountValidKeys!0 lt!124037 #b00000000000000000000000000000000 (size!6135 (_keys!6703 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6703 thiss!1504) #b00000000000000000000000000000000 (size!6135 (_keys!6703 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7653 0))(
  ( (Unit!7654) )
))
(declare-fun lt!124039 () Unit!7653)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12210 (_ BitVec 32) (_ BitVec 64)) Unit!7653)

(assert (=> b!247576 (= lt!124039 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6703 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3715 0))(
  ( (Nil!3712) (Cons!3711 (h!4369 (_ BitVec 64)) (t!8746 List!3715)) )
))
(declare-fun arrayNoDuplicates!0 (array!12210 (_ BitVec 32) List!3715) Bool)

(assert (=> b!247576 (arrayNoDuplicates!0 lt!124037 #b00000000000000000000000000000000 Nil!3712)))

(assert (=> b!247576 (= lt!124037 (array!12211 (store (arr!5792 (_keys!6703 thiss!1504)) index!297 key!932) (size!6135 (_keys!6703 thiss!1504))))))

(declare-fun lt!124034 () Unit!7653)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12210 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3715) Unit!7653)

(assert (=> b!247576 (= lt!124034 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6703 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3712))))

(declare-fun lt!124033 () Unit!7653)

(declare-fun e!160623 () Unit!7653)

(assert (=> b!247576 (= lt!124033 e!160623)))

(declare-fun c!41443 () Bool)

(declare-fun arrayContainsKey!0 (array!12210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247576 (= c!41443 (arrayContainsKey!0 (_keys!6703 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!160615 () Bool)

(declare-fun tp_is_empty!6451 () Bool)

(declare-fun e!160624 () Bool)

(declare-fun array_inv!3815 (array!12210) Bool)

(declare-fun array_inv!3816 (array!12208) Bool)

(assert (=> b!247577 (= e!160624 (and tp!23014 tp_is_empty!6451 (array_inv!3815 (_keys!6703 thiss!1504)) (array_inv!3816 (_values!4564 thiss!1504)) e!160615))))

(declare-fun b!247578 () Bool)

(declare-fun c!41442 () Bool)

(declare-datatypes ((SeekEntryResult!1113 0))(
  ( (MissingZero!1113 (index!6622 (_ BitVec 32))) (Found!1113 (index!6623 (_ BitVec 32))) (Intermediate!1113 (undefined!1925 Bool) (index!6624 (_ BitVec 32)) (x!24549 (_ BitVec 32))) (Undefined!1113) (MissingVacant!1113 (index!6625 (_ BitVec 32))) )
))
(declare-fun lt!124038 () SeekEntryResult!1113)

(assert (=> b!247578 (= c!41442 (is-MissingVacant!1113 lt!124038))))

(declare-fun e!160617 () Bool)

(declare-fun e!160614 () Bool)

(assert (=> b!247578 (= e!160617 e!160614)))

(declare-fun b!247579 () Bool)

(assert (=> b!247579 (= e!160620 tp_is_empty!6451)))

(declare-fun b!247580 () Bool)

(declare-fun e!160622 () Bool)

(declare-fun call!23187 () Bool)

(assert (=> b!247580 (= e!160622 (not call!23187))))

(declare-fun b!247581 () Bool)

(declare-fun Unit!7655 () Unit!7653)

(assert (=> b!247581 (= e!160623 Unit!7655)))

(declare-fun lt!124036 () Unit!7653)

(declare-fun lemmaArrayContainsKeyThenInListMap!186 (array!12210 array!12208 (_ BitVec 32) (_ BitVec 32) V!8249 V!8249 (_ BitVec 64) (_ BitVec 32) Int) Unit!7653)

(assert (=> b!247581 (= lt!124036 (lemmaArrayContainsKeyThenInListMap!186 (_keys!6703 thiss!1504) (_values!4564 thiss!1504) (mask!10721 thiss!1504) (extraKeys!4318 thiss!1504) (zeroValue!4422 thiss!1504) (minValue!4422 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4581 thiss!1504)))))

(assert (=> b!247581 false))

(declare-fun b!247582 () Bool)

(assert (=> b!247582 (= e!160614 (is-Undefined!1113 lt!124038))))

(declare-fun b!247583 () Bool)

(declare-fun res!121362 () Bool)

(declare-fun e!160619 () Bool)

(assert (=> b!247583 (=> (not res!121362) (not e!160619))))

(assert (=> b!247583 (= res!121362 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247584 () Bool)

(declare-fun e!160621 () Bool)

(assert (=> b!247584 (= e!160614 e!160621)))

(declare-fun res!121367 () Bool)

(declare-fun call!23186 () Bool)

(assert (=> b!247584 (= res!121367 call!23186)))

(assert (=> b!247584 (=> (not res!121367) (not e!160621))))

(declare-fun b!247585 () Bool)

(declare-fun e!160618 () Bool)

(assert (=> b!247585 (= e!160618 tp_is_empty!6451)))

(declare-fun b!247586 () Bool)

(declare-fun e!160612 () Bool)

(assert (=> b!247586 (= e!160619 e!160612)))

(declare-fun res!121368 () Bool)

(assert (=> b!247586 (=> (not res!121368) (not e!160612))))

(assert (=> b!247586 (= res!121368 (or (= lt!124038 (MissingZero!1113 index!297)) (= lt!124038 (MissingVacant!1113 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12210 (_ BitVec 32)) SeekEntryResult!1113)

(assert (=> b!247586 (= lt!124038 (seekEntryOrOpen!0 key!932 (_keys!6703 thiss!1504) (mask!10721 thiss!1504)))))

(declare-fun res!121364 () Bool)

(assert (=> start!23582 (=> (not res!121364) (not e!160619))))

(declare-fun valid!1425 (LongMapFixedSize!3664) Bool)

(assert (=> start!23582 (= res!121364 (valid!1425 thiss!1504))))

(assert (=> start!23582 e!160619))

(assert (=> start!23582 e!160624))

(assert (=> start!23582 true))

(declare-fun bm!23183 () Bool)

(assert (=> bm!23183 (= call!23187 (arrayContainsKey!0 (_keys!6703 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247587 () Bool)

(declare-fun e!160625 () Unit!7653)

(declare-fun Unit!7656 () Unit!7653)

(assert (=> b!247587 (= e!160625 Unit!7656)))

(declare-fun lt!124031 () Unit!7653)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!385 (array!12210 array!12208 (_ BitVec 32) (_ BitVec 32) V!8249 V!8249 (_ BitVec 64) Int) Unit!7653)

(assert (=> b!247587 (= lt!124031 (lemmaInListMapThenSeekEntryOrOpenFindsIt!385 (_keys!6703 thiss!1504) (_values!4564 thiss!1504) (mask!10721 thiss!1504) (extraKeys!4318 thiss!1504) (zeroValue!4422 thiss!1504) (minValue!4422 thiss!1504) key!932 (defaultEntry!4581 thiss!1504)))))

(assert (=> b!247587 false))

(declare-fun b!247588 () Bool)

(assert (=> b!247588 (= e!160612 e!160616)))

(declare-fun res!121369 () Bool)

(assert (=> b!247588 (=> (not res!121369) (not e!160616))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!247588 (= res!121369 (inRange!0 index!297 (mask!10721 thiss!1504)))))

(declare-fun lt!124032 () Unit!7653)

(assert (=> b!247588 (= lt!124032 e!160625)))

(declare-fun c!41440 () Bool)

(declare-datatypes ((tuple2!4810 0))(
  ( (tuple2!4811 (_1!2415 (_ BitVec 64)) (_2!2415 V!8249)) )
))
(declare-datatypes ((List!3716 0))(
  ( (Nil!3713) (Cons!3712 (h!4370 tuple2!4810) (t!8747 List!3716)) )
))
(declare-datatypes ((ListLongMap!3737 0))(
  ( (ListLongMap!3738 (toList!1884 List!3716)) )
))
(declare-fun contains!1792 (ListLongMap!3737 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1407 (array!12210 array!12208 (_ BitVec 32) (_ BitVec 32) V!8249 V!8249 (_ BitVec 32) Int) ListLongMap!3737)

(assert (=> b!247588 (= c!41440 (contains!1792 (getCurrentListMap!1407 (_keys!6703 thiss!1504) (_values!4564 thiss!1504) (mask!10721 thiss!1504) (extraKeys!4318 thiss!1504) (zeroValue!4422 thiss!1504) (minValue!4422 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4581 thiss!1504)) key!932))))

(declare-fun b!247589 () Bool)

(declare-fun Unit!7657 () Unit!7653)

(assert (=> b!247589 (= e!160623 Unit!7657)))

(declare-fun bm!23184 () Bool)

(declare-fun c!41441 () Bool)

(assert (=> bm!23184 (= call!23186 (inRange!0 (ite c!41441 (index!6622 lt!124038) (index!6625 lt!124038)) (mask!10721 thiss!1504)))))

(declare-fun b!247590 () Bool)

(declare-fun lt!124035 () Unit!7653)

(assert (=> b!247590 (= e!160625 lt!124035)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!386 (array!12210 array!12208 (_ BitVec 32) (_ BitVec 32) V!8249 V!8249 (_ BitVec 64) Int) Unit!7653)

(assert (=> b!247590 (= lt!124035 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!386 (_keys!6703 thiss!1504) (_values!4564 thiss!1504) (mask!10721 thiss!1504) (extraKeys!4318 thiss!1504) (zeroValue!4422 thiss!1504) (minValue!4422 thiss!1504) key!932 (defaultEntry!4581 thiss!1504)))))

(assert (=> b!247590 (= c!41441 (is-MissingZero!1113 lt!124038))))

(assert (=> b!247590 e!160617))

(declare-fun mapIsEmpty!10952 () Bool)

(assert (=> mapIsEmpty!10952 mapRes!10952))

(declare-fun b!247591 () Bool)

(assert (=> b!247591 (= e!160615 (and e!160618 mapRes!10952))))

(declare-fun condMapEmpty!10952 () Bool)

(declare-fun mapDefault!10952 () ValueCell!2882)

