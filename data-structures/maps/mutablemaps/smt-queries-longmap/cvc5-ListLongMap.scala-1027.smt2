; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21856 () Bool)

(assert start!21856)

(declare-fun b!220033 () Bool)

(declare-fun b_free!5911 () Bool)

(declare-fun b_next!5911 () Bool)

(assert (=> b!220033 (= b_free!5911 (not b_next!5911))))

(declare-fun tp!20874 () Bool)

(declare-fun b_and!12827 () Bool)

(assert (=> b!220033 (= tp!20874 b_and!12827)))

(declare-fun b!220016 () Bool)

(declare-fun e!143092 () Bool)

(declare-datatypes ((SeekEntryResult!816 0))(
  ( (MissingZero!816 (index!5434 (_ BitVec 32))) (Found!816 (index!5435 (_ BitVec 32))) (Intermediate!816 (undefined!1628 Bool) (index!5436 (_ BitVec 32)) (x!22948 (_ BitVec 32))) (Undefined!816) (MissingVacant!816 (index!5437 (_ BitVec 32))) )
))
(declare-fun lt!112117 () SeekEntryResult!816)

(assert (=> b!220016 (= e!143092 (is-Undefined!816 lt!112117))))

(declare-fun bm!20562 () Bool)

(declare-fun call!20565 () Bool)

(declare-datatypes ((V!7345 0))(
  ( (V!7346 (val!2931 Int)) )
))
(declare-datatypes ((ValueCell!2543 0))(
  ( (ValueCellFull!2543 (v!4947 V!7345)) (EmptyCell!2543) )
))
(declare-datatypes ((array!10788 0))(
  ( (array!10789 (arr!5113 (Array (_ BitVec 32) ValueCell!2543)) (size!5446 (_ BitVec 32))) )
))
(declare-datatypes ((array!10790 0))(
  ( (array!10791 (arr!5114 (Array (_ BitVec 32) (_ BitVec 64))) (size!5447 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2986 0))(
  ( (LongMapFixedSize!2987 (defaultEntry!4152 Int) (mask!9950 (_ BitVec 32)) (extraKeys!3889 (_ BitVec 32)) (zeroValue!3993 V!7345) (minValue!3993 V!7345) (_size!1542 (_ BitVec 32)) (_keys!6206 array!10790) (_values!4135 array!10788) (_vacant!1542 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2986)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20562 (= call!20565 (arrayContainsKey!0 (_keys!6206 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9829 () Bool)

(declare-fun mapRes!9829 () Bool)

(declare-fun tp!20875 () Bool)

(declare-fun e!143089 () Bool)

(assert (=> mapNonEmpty!9829 (= mapRes!9829 (and tp!20875 e!143089))))

(declare-fun mapRest!9829 () (Array (_ BitVec 32) ValueCell!2543))

(declare-fun mapValue!9829 () ValueCell!2543)

(declare-fun mapKey!9829 () (_ BitVec 32))

(assert (=> mapNonEmpty!9829 (= (arr!5113 (_values!4135 thiss!1504)) (store mapRest!9829 mapKey!9829 mapValue!9829))))

(declare-fun b!220017 () Bool)

(declare-fun tp_is_empty!5773 () Bool)

(assert (=> b!220017 (= e!143089 tp_is_empty!5773)))

(declare-fun b!220018 () Bool)

(declare-fun res!107887 () Bool)

(declare-fun e!143084 () Bool)

(assert (=> b!220018 (=> (not res!107887) (not e!143084))))

(assert (=> b!220018 (= res!107887 (= (select (arr!5114 (_keys!6206 thiss!1504)) (index!5434 lt!112117)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20563 () Bool)

(declare-fun call!20566 () Bool)

(declare-fun c!36613 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20563 (= call!20566 (inRange!0 (ite c!36613 (index!5434 lt!112117) (index!5437 lt!112117)) (mask!9950 thiss!1504)))))

(declare-fun b!220019 () Bool)

(declare-fun e!143091 () Bool)

(assert (=> b!220019 (= e!143092 e!143091)))

(declare-fun res!107885 () Bool)

(assert (=> b!220019 (= res!107885 call!20566)))

(assert (=> b!220019 (=> (not res!107885) (not e!143091))))

(declare-fun b!220020 () Bool)

(declare-fun e!143087 () Bool)

(assert (=> b!220020 (= e!143087 false)))

(declare-fun lt!112118 () Bool)

(declare-datatypes ((List!3275 0))(
  ( (Nil!3272) (Cons!3271 (h!3919 (_ BitVec 64)) (t!8242 List!3275)) )
))
(declare-fun arrayNoDuplicates!0 (array!10790 (_ BitVec 32) List!3275) Bool)

(assert (=> b!220020 (= lt!112118 (arrayNoDuplicates!0 (_keys!6206 thiss!1504) #b00000000000000000000000000000000 Nil!3272))))

(declare-fun b!220021 () Bool)

(declare-fun c!36614 () Bool)

(assert (=> b!220021 (= c!36614 (is-MissingVacant!816 lt!112117))))

(declare-fun e!143093 () Bool)

(assert (=> b!220021 (= e!143093 e!143092)))

(declare-fun b!220022 () Bool)

(declare-fun e!143095 () Bool)

(declare-fun e!143094 () Bool)

(assert (=> b!220022 (= e!143095 e!143094)))

(declare-fun res!107881 () Bool)

(assert (=> b!220022 (=> (not res!107881) (not e!143094))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220022 (= res!107881 (or (= lt!112117 (MissingZero!816 index!297)) (= lt!112117 (MissingVacant!816 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10790 (_ BitVec 32)) SeekEntryResult!816)

(assert (=> b!220022 (= lt!112117 (seekEntryOrOpen!0 key!932 (_keys!6206 thiss!1504) (mask!9950 thiss!1504)))))

(declare-fun b!220023 () Bool)

(declare-fun res!107883 () Bool)

(assert (=> b!220023 (=> (not res!107883) (not e!143087))))

(assert (=> b!220023 (= res!107883 (and (= (size!5446 (_values!4135 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9950 thiss!1504))) (= (size!5447 (_keys!6206 thiss!1504)) (size!5446 (_values!4135 thiss!1504))) (bvsge (mask!9950 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3889 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3889 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220024 () Bool)

(assert (=> b!220024 (= e!143091 (not call!20565))))

(declare-fun b!220025 () Bool)

(declare-fun res!107878 () Bool)

(assert (=> b!220025 (=> (not res!107878) (not e!143095))))

(assert (=> b!220025 (= res!107878 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220026 () Bool)

(declare-fun res!107882 () Bool)

(assert (=> b!220026 (=> (not res!107882) (not e!143087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220026 (= res!107882 (validMask!0 (mask!9950 thiss!1504)))))

(declare-fun b!220027 () Bool)

(declare-fun res!107879 () Bool)

(assert (=> b!220027 (=> (not res!107879) (not e!143084))))

(assert (=> b!220027 (= res!107879 call!20566)))

(assert (=> b!220027 (= e!143093 e!143084)))

(declare-fun mapIsEmpty!9829 () Bool)

(assert (=> mapIsEmpty!9829 mapRes!9829))

(declare-fun b!220028 () Bool)

(declare-fun res!107876 () Bool)

(assert (=> b!220028 (=> (not res!107876) (not e!143087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10790 (_ BitVec 32)) Bool)

(assert (=> b!220028 (= res!107876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6206 thiss!1504) (mask!9950 thiss!1504)))))

(declare-fun b!220029 () Bool)

(assert (=> b!220029 (= e!143084 (not call!20565))))

(declare-fun b!220030 () Bool)

(declare-fun res!107877 () Bool)

(assert (=> b!220030 (=> (not res!107877) (not e!143087))))

(assert (=> b!220030 (= res!107877 (arrayContainsKey!0 (_keys!6206 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220031 () Bool)

(assert (=> b!220031 (= e!143094 e!143087)))

(declare-fun res!107884 () Bool)

(assert (=> b!220031 (=> (not res!107884) (not e!143087))))

(assert (=> b!220031 (= res!107884 (inRange!0 index!297 (mask!9950 thiss!1504)))))

(declare-datatypes ((Unit!6560 0))(
  ( (Unit!6561) )
))
(declare-fun lt!112116 () Unit!6560)

(declare-fun e!143088 () Unit!6560)

(assert (=> b!220031 (= lt!112116 e!143088)))

(declare-fun c!36612 () Bool)

(declare-datatypes ((tuple2!4348 0))(
  ( (tuple2!4349 (_1!2184 (_ BitVec 64)) (_2!2184 V!7345)) )
))
(declare-datatypes ((List!3276 0))(
  ( (Nil!3273) (Cons!3272 (h!3920 tuple2!4348) (t!8243 List!3276)) )
))
(declare-datatypes ((ListLongMap!3275 0))(
  ( (ListLongMap!3276 (toList!1653 List!3276)) )
))
(declare-fun contains!1490 (ListLongMap!3275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1176 (array!10790 array!10788 (_ BitVec 32) (_ BitVec 32) V!7345 V!7345 (_ BitVec 32) Int) ListLongMap!3275)

(assert (=> b!220031 (= c!36612 (contains!1490 (getCurrentListMap!1176 (_keys!6206 thiss!1504) (_values!4135 thiss!1504) (mask!9950 thiss!1504) (extraKeys!3889 thiss!1504) (zeroValue!3993 thiss!1504) (minValue!3993 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4152 thiss!1504)) key!932))))

(declare-fun b!220032 () Bool)

(declare-fun res!107880 () Bool)

(assert (=> b!220032 (= res!107880 (= (select (arr!5114 (_keys!6206 thiss!1504)) (index!5437 lt!112117)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!220032 (=> (not res!107880) (not e!143091))))

(declare-fun e!143086 () Bool)

(declare-fun e!143085 () Bool)

(declare-fun array_inv!3375 (array!10790) Bool)

(declare-fun array_inv!3376 (array!10788) Bool)

(assert (=> b!220033 (= e!143086 (and tp!20874 tp_is_empty!5773 (array_inv!3375 (_keys!6206 thiss!1504)) (array_inv!3376 (_values!4135 thiss!1504)) e!143085))))

(declare-fun b!220034 () Bool)

(declare-fun Unit!6562 () Unit!6560)

(assert (=> b!220034 (= e!143088 Unit!6562)))

(declare-fun lt!112119 () Unit!6560)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!201 (array!10790 array!10788 (_ BitVec 32) (_ BitVec 32) V!7345 V!7345 (_ BitVec 64) Int) Unit!6560)

(assert (=> b!220034 (= lt!112119 (lemmaInListMapThenSeekEntryOrOpenFindsIt!201 (_keys!6206 thiss!1504) (_values!4135 thiss!1504) (mask!9950 thiss!1504) (extraKeys!3889 thiss!1504) (zeroValue!3993 thiss!1504) (minValue!3993 thiss!1504) key!932 (defaultEntry!4152 thiss!1504)))))

(assert (=> b!220034 false))

(declare-fun b!220035 () Bool)

(declare-fun lt!112115 () Unit!6560)

(assert (=> b!220035 (= e!143088 lt!112115)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!210 (array!10790 array!10788 (_ BitVec 32) (_ BitVec 32) V!7345 V!7345 (_ BitVec 64) Int) Unit!6560)

(assert (=> b!220035 (= lt!112115 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!210 (_keys!6206 thiss!1504) (_values!4135 thiss!1504) (mask!9950 thiss!1504) (extraKeys!3889 thiss!1504) (zeroValue!3993 thiss!1504) (minValue!3993 thiss!1504) key!932 (defaultEntry!4152 thiss!1504)))))

(assert (=> b!220035 (= c!36613 (is-MissingZero!816 lt!112117))))

(assert (=> b!220035 e!143093))

(declare-fun b!220036 () Bool)

(declare-fun e!143083 () Bool)

(assert (=> b!220036 (= e!143085 (and e!143083 mapRes!9829))))

(declare-fun condMapEmpty!9829 () Bool)

(declare-fun mapDefault!9829 () ValueCell!2543)

