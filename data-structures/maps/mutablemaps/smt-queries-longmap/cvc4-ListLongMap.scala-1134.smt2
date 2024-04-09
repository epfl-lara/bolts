; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23344 () Bool)

(assert start!23344)

(declare-fun b!245372 () Bool)

(declare-fun b_free!6557 () Bool)

(declare-fun b_next!6557 () Bool)

(assert (=> b!245372 (= b_free!6557 (not b_next!6557))))

(declare-fun tp!22902 () Bool)

(declare-fun b_and!13563 () Bool)

(assert (=> b!245372 (= tp!22902 b_and!13563)))

(declare-fun b!245355 () Bool)

(declare-fun e!159202 () Bool)

(declare-datatypes ((V!8205 0))(
  ( (V!8206 (val!3254 Int)) )
))
(declare-datatypes ((ValueCell!2866 0))(
  ( (ValueCellFull!2866 (v!5302 V!8205)) (EmptyCell!2866) )
))
(declare-datatypes ((array!12134 0))(
  ( (array!12135 (arr!5759 (Array (_ BitVec 32) ValueCell!2866)) (size!6101 (_ BitVec 32))) )
))
(declare-datatypes ((array!12136 0))(
  ( (array!12137 (arr!5760 (Array (_ BitVec 32) (_ BitVec 64))) (size!6102 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3632 0))(
  ( (LongMapFixedSize!3633 (defaultEntry!4541 Int) (mask!10650 (_ BitVec 32)) (extraKeys!4278 (_ BitVec 32)) (zeroValue!4382 V!8205) (minValue!4382 V!8205) (_size!1865 (_ BitVec 32)) (_keys!6655 array!12136) (_values!4524 array!12134) (_vacant!1865 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3632)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!245355 (= e!159202 (not (validMask!0 (mask!10650 thiss!1504))))))

(declare-fun lt!122918 () array!12136)

(declare-fun arrayCountValidKeys!0 (array!12136 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245355 (= (arrayCountValidKeys!0 lt!122918 #b00000000000000000000000000000000 (size!6102 (_keys!6655 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6655 thiss!1504) #b00000000000000000000000000000000 (size!6102 (_keys!6655 thiss!1504)))))))

(declare-datatypes ((Unit!7577 0))(
  ( (Unit!7578) )
))
(declare-fun lt!122914 () Unit!7577)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12136 (_ BitVec 32) (_ BitVec 64)) Unit!7577)

(assert (=> b!245355 (= lt!122914 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6655 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3690 0))(
  ( (Nil!3687) (Cons!3686 (h!4343 (_ BitVec 64)) (t!8711 List!3690)) )
))
(declare-fun arrayNoDuplicates!0 (array!12136 (_ BitVec 32) List!3690) Bool)

(assert (=> b!245355 (arrayNoDuplicates!0 lt!122918 #b00000000000000000000000000000000 Nil!3687)))

(assert (=> b!245355 (= lt!122918 (array!12137 (store (arr!5760 (_keys!6655 thiss!1504)) index!297 key!932) (size!6102 (_keys!6655 thiss!1504))))))

(declare-fun lt!122912 () Unit!7577)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12136 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3690) Unit!7577)

(assert (=> b!245355 (= lt!122912 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6655 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3687))))

(declare-fun lt!122919 () Unit!7577)

(declare-fun e!159193 () Unit!7577)

(assert (=> b!245355 (= lt!122919 e!159193)))

(declare-fun c!40953 () Bool)

(declare-fun arrayContainsKey!0 (array!12136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!245355 (= c!40953 (arrayContainsKey!0 (_keys!6655 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245356 () Bool)

(declare-fun res!120369 () Bool)

(declare-fun e!159195 () Bool)

(assert (=> b!245356 (=> (not res!120369) (not e!159195))))

(assert (=> b!245356 (= res!120369 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!245357 () Bool)

(declare-fun e!159192 () Bool)

(declare-fun e!159196 () Bool)

(assert (=> b!245357 (= e!159192 e!159196)))

(declare-fun res!120364 () Bool)

(declare-fun call!22902 () Bool)

(assert (=> b!245357 (= res!120364 call!22902)))

(assert (=> b!245357 (=> (not res!120364) (not e!159196))))

(declare-fun b!245358 () Bool)

(declare-fun e!159194 () Bool)

(declare-fun call!22903 () Bool)

(assert (=> b!245358 (= e!159194 (not call!22903))))

(declare-fun bm!22899 () Bool)

(declare-datatypes ((SeekEntryResult!1099 0))(
  ( (MissingZero!1099 (index!6566 (_ BitVec 32))) (Found!1099 (index!6567 (_ BitVec 32))) (Intermediate!1099 (undefined!1911 Bool) (index!6568 (_ BitVec 32)) (x!24429 (_ BitVec 32))) (Undefined!1099) (MissingVacant!1099 (index!6569 (_ BitVec 32))) )
))
(declare-fun lt!122917 () SeekEntryResult!1099)

(declare-fun c!40954 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22899 (= call!22902 (inRange!0 (ite c!40954 (index!6566 lt!122917) (index!6569 lt!122917)) (mask!10650 thiss!1504)))))

(declare-fun b!245360 () Bool)

(declare-fun res!120368 () Bool)

(assert (=> b!245360 (=> (not res!120368) (not e!159194))))

(assert (=> b!245360 (= res!120368 call!22902)))

(declare-fun e!159201 () Bool)

(assert (=> b!245360 (= e!159201 e!159194)))

(declare-fun mapNonEmpty!10888 () Bool)

(declare-fun mapRes!10888 () Bool)

(declare-fun tp!22903 () Bool)

(declare-fun e!159191 () Bool)

(assert (=> mapNonEmpty!10888 (= mapRes!10888 (and tp!22903 e!159191))))

(declare-fun mapRest!10888 () (Array (_ BitVec 32) ValueCell!2866))

(declare-fun mapValue!10888 () ValueCell!2866)

(declare-fun mapKey!10888 () (_ BitVec 32))

(assert (=> mapNonEmpty!10888 (= (arr!5759 (_values!4524 thiss!1504)) (store mapRest!10888 mapKey!10888 mapValue!10888))))

(declare-fun b!245361 () Bool)

(declare-fun e!159197 () Bool)

(assert (=> b!245361 (= e!159195 e!159197)))

(declare-fun res!120362 () Bool)

(assert (=> b!245361 (=> (not res!120362) (not e!159197))))

(assert (=> b!245361 (= res!120362 (or (= lt!122917 (MissingZero!1099 index!297)) (= lt!122917 (MissingVacant!1099 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12136 (_ BitVec 32)) SeekEntryResult!1099)

(assert (=> b!245361 (= lt!122917 (seekEntryOrOpen!0 key!932 (_keys!6655 thiss!1504) (mask!10650 thiss!1504)))))

(declare-fun mapIsEmpty!10888 () Bool)

(assert (=> mapIsEmpty!10888 mapRes!10888))

(declare-fun b!245362 () Bool)

(declare-fun tp_is_empty!6419 () Bool)

(assert (=> b!245362 (= e!159191 tp_is_empty!6419)))

(declare-fun b!245363 () Bool)

(declare-fun e!159198 () Bool)

(assert (=> b!245363 (= e!159198 tp_is_empty!6419)))

(declare-fun b!245364 () Bool)

(assert (=> b!245364 (= e!159192 (is-Undefined!1099 lt!122917))))

(declare-fun b!245365 () Bool)

(declare-fun res!120366 () Bool)

(assert (=> b!245365 (=> (not res!120366) (not e!159194))))

(assert (=> b!245365 (= res!120366 (= (select (arr!5760 (_keys!6655 thiss!1504)) (index!6566 lt!122917)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245366 () Bool)

(declare-fun e!159204 () Unit!7577)

(declare-fun Unit!7579 () Unit!7577)

(assert (=> b!245366 (= e!159204 Unit!7579)))

(declare-fun lt!122913 () Unit!7577)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!373 (array!12136 array!12134 (_ BitVec 32) (_ BitVec 32) V!8205 V!8205 (_ BitVec 64) Int) Unit!7577)

(assert (=> b!245366 (= lt!122913 (lemmaInListMapThenSeekEntryOrOpenFindsIt!373 (_keys!6655 thiss!1504) (_values!4524 thiss!1504) (mask!10650 thiss!1504) (extraKeys!4278 thiss!1504) (zeroValue!4382 thiss!1504) (minValue!4382 thiss!1504) key!932 (defaultEntry!4541 thiss!1504)))))

(assert (=> b!245366 false))

(declare-fun b!245367 () Bool)

(assert (=> b!245367 (= e!159196 (not call!22903))))

(declare-fun res!120365 () Bool)

(assert (=> start!23344 (=> (not res!120365) (not e!159195))))

(declare-fun valid!1413 (LongMapFixedSize!3632) Bool)

(assert (=> start!23344 (= res!120365 (valid!1413 thiss!1504))))

(assert (=> start!23344 e!159195))

(declare-fun e!159199 () Bool)

(assert (=> start!23344 e!159199))

(assert (=> start!23344 true))

(declare-fun b!245359 () Bool)

(assert (=> b!245359 (= e!159197 e!159202)))

(declare-fun res!120363 () Bool)

(assert (=> b!245359 (=> (not res!120363) (not e!159202))))

(assert (=> b!245359 (= res!120363 (inRange!0 index!297 (mask!10650 thiss!1504)))))

(declare-fun lt!122915 () Unit!7577)

(assert (=> b!245359 (= lt!122915 e!159204)))

(declare-fun c!40955 () Bool)

(declare-datatypes ((tuple2!4784 0))(
  ( (tuple2!4785 (_1!2402 (_ BitVec 64)) (_2!2402 V!8205)) )
))
(declare-datatypes ((List!3691 0))(
  ( (Nil!3688) (Cons!3687 (h!4344 tuple2!4784) (t!8712 List!3691)) )
))
(declare-datatypes ((ListLongMap!3711 0))(
  ( (ListLongMap!3712 (toList!1871 List!3691)) )
))
(declare-fun contains!1773 (ListLongMap!3711 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1394 (array!12136 array!12134 (_ BitVec 32) (_ BitVec 32) V!8205 V!8205 (_ BitVec 32) Int) ListLongMap!3711)

(assert (=> b!245359 (= c!40955 (contains!1773 (getCurrentListMap!1394 (_keys!6655 thiss!1504) (_values!4524 thiss!1504) (mask!10650 thiss!1504) (extraKeys!4278 thiss!1504) (zeroValue!4382 thiss!1504) (minValue!4382 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4541 thiss!1504)) key!932))))

(declare-fun b!245368 () Bool)

(declare-fun e!159200 () Bool)

(assert (=> b!245368 (= e!159200 (and e!159198 mapRes!10888))))

(declare-fun condMapEmpty!10888 () Bool)

(declare-fun mapDefault!10888 () ValueCell!2866)

