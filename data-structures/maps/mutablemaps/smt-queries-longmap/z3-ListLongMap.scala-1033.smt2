; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21894 () Bool)

(assert start!21894)

(declare-fun b!221282 () Bool)

(declare-fun b_free!5949 () Bool)

(declare-fun b_next!5949 () Bool)

(assert (=> b!221282 (= b_free!5949 (not b_next!5949))))

(declare-fun tp!20988 () Bool)

(declare-fun b_and!12865 () Bool)

(assert (=> b!221282 (= tp!20988 b_and!12865)))

(declare-fun bm!20676 () Bool)

(declare-fun call!20679 () Bool)

(declare-datatypes ((V!7395 0))(
  ( (V!7396 (val!2950 Int)) )
))
(declare-datatypes ((ValueCell!2562 0))(
  ( (ValueCellFull!2562 (v!4966 V!7395)) (EmptyCell!2562) )
))
(declare-datatypes ((array!10864 0))(
  ( (array!10865 (arr!5151 (Array (_ BitVec 32) ValueCell!2562)) (size!5484 (_ BitVec 32))) )
))
(declare-datatypes ((array!10866 0))(
  ( (array!10867 (arr!5152 (Array (_ BitVec 32) (_ BitVec 64))) (size!5485 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3024 0))(
  ( (LongMapFixedSize!3025 (defaultEntry!4171 Int) (mask!9981 (_ BitVec 32)) (extraKeys!3908 (_ BitVec 32)) (zeroValue!4012 V!7395) (minValue!4012 V!7395) (_size!1561 (_ BitVec 32)) (_keys!6225 array!10866) (_values!4154 array!10864) (_vacant!1561 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3024)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20676 (= call!20679 (arrayContainsKey!0 (_keys!6225 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221270 () Bool)

(declare-fun c!36783 () Bool)

(declare-datatypes ((SeekEntryResult!833 0))(
  ( (MissingZero!833 (index!5502 (_ BitVec 32))) (Found!833 (index!5503 (_ BitVec 32))) (Intermediate!833 (undefined!1645 Bool) (index!5504 (_ BitVec 32)) (x!23013 (_ BitVec 32))) (Undefined!833) (MissingVacant!833 (index!5505 (_ BitVec 32))) )
))
(declare-fun lt!112404 () SeekEntryResult!833)

(get-info :version)

(assert (=> b!221270 (= c!36783 ((_ is MissingVacant!833) lt!112404))))

(declare-fun e!143832 () Bool)

(declare-fun e!143830 () Bool)

(assert (=> b!221270 (= e!143832 e!143830)))

(declare-fun b!221271 () Bool)

(declare-fun res!108571 () Bool)

(assert (=> b!221271 (= res!108571 (= (select (arr!5152 (_keys!6225 thiss!1504)) (index!5505 lt!112404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143826 () Bool)

(assert (=> b!221271 (=> (not res!108571) (not e!143826))))

(declare-fun mapIsEmpty!9886 () Bool)

(declare-fun mapRes!9886 () Bool)

(assert (=> mapIsEmpty!9886 mapRes!9886))

(declare-fun b!221272 () Bool)

(declare-fun e!143824 () Bool)

(declare-fun e!143836 () Bool)

(assert (=> b!221272 (= e!143824 (and e!143836 mapRes!9886))))

(declare-fun condMapEmpty!9886 () Bool)

(declare-fun mapDefault!9886 () ValueCell!2562)

(assert (=> b!221272 (= condMapEmpty!9886 (= (arr!5151 (_values!4154 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2562)) mapDefault!9886)))))

(declare-fun b!221273 () Bool)

(declare-fun e!143834 () Bool)

(assert (=> b!221273 (= e!143834 (not call!20679))))

(declare-fun b!221274 () Bool)

(assert (=> b!221274 (= e!143830 e!143826)))

(declare-fun res!108563 () Bool)

(declare-fun call!20680 () Bool)

(assert (=> b!221274 (= res!108563 call!20680)))

(assert (=> b!221274 (=> (not res!108563) (not e!143826))))

(declare-fun b!221275 () Bool)

(declare-fun res!108564 () Bool)

(declare-fun e!143825 () Bool)

(assert (=> b!221275 (=> (not res!108564) (not e!143825))))

(assert (=> b!221275 (= res!108564 (and (= (size!5484 (_values!4154 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9981 thiss!1504))) (= (size!5485 (_keys!6225 thiss!1504)) (size!5484 (_values!4154 thiss!1504))) (bvsge (mask!9981 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3908 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3908 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221276 () Bool)

(declare-fun res!108561 () Bool)

(assert (=> b!221276 (=> (not res!108561) (not e!143825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10866 (_ BitVec 32)) Bool)

(assert (=> b!221276 (= res!108561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6225 thiss!1504) (mask!9981 thiss!1504)))))

(declare-fun b!221278 () Bool)

(declare-fun res!108562 () Bool)

(declare-fun e!143835 () Bool)

(assert (=> b!221278 (=> (not res!108562) (not e!143835))))

(assert (=> b!221278 (= res!108562 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221279 () Bool)

(declare-fun res!108567 () Bool)

(assert (=> b!221279 (=> (not res!108567) (not e!143825))))

(assert (=> b!221279 (= res!108567 (arrayContainsKey!0 (_keys!6225 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9886 () Bool)

(declare-fun tp!20989 () Bool)

(declare-fun e!143831 () Bool)

(assert (=> mapNonEmpty!9886 (= mapRes!9886 (and tp!20989 e!143831))))

(declare-fun mapRest!9886 () (Array (_ BitVec 32) ValueCell!2562))

(declare-fun mapKey!9886 () (_ BitVec 32))

(declare-fun mapValue!9886 () ValueCell!2562)

(assert (=> mapNonEmpty!9886 (= (arr!5151 (_values!4154 thiss!1504)) (store mapRest!9886 mapKey!9886 mapValue!9886))))

(declare-fun b!221280 () Bool)

(declare-fun e!143833 () Bool)

(assert (=> b!221280 (= e!143833 e!143825)))

(declare-fun res!108565 () Bool)

(assert (=> b!221280 (=> (not res!108565) (not e!143825))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!221280 (= res!108565 (inRange!0 index!297 (mask!9981 thiss!1504)))))

(declare-datatypes ((Unit!6608 0))(
  ( (Unit!6609) )
))
(declare-fun lt!112401 () Unit!6608)

(declare-fun e!143827 () Unit!6608)

(assert (=> b!221280 (= lt!112401 e!143827)))

(declare-fun c!36784 () Bool)

(declare-datatypes ((tuple2!4372 0))(
  ( (tuple2!4373 (_1!2196 (_ BitVec 64)) (_2!2196 V!7395)) )
))
(declare-datatypes ((List!3298 0))(
  ( (Nil!3295) (Cons!3294 (h!3942 tuple2!4372) (t!8265 List!3298)) )
))
(declare-datatypes ((ListLongMap!3299 0))(
  ( (ListLongMap!3300 (toList!1665 List!3298)) )
))
(declare-fun contains!1502 (ListLongMap!3299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1188 (array!10866 array!10864 (_ BitVec 32) (_ BitVec 32) V!7395 V!7395 (_ BitVec 32) Int) ListLongMap!3299)

(assert (=> b!221280 (= c!36784 (contains!1502 (getCurrentListMap!1188 (_keys!6225 thiss!1504) (_values!4154 thiss!1504) (mask!9981 thiss!1504) (extraKeys!3908 thiss!1504) (zeroValue!4012 thiss!1504) (minValue!4012 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4171 thiss!1504)) key!932))))

(declare-fun b!221281 () Bool)

(declare-fun Unit!6610 () Unit!6608)

(assert (=> b!221281 (= e!143827 Unit!6610)))

(declare-fun lt!112400 () Unit!6608)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!215 (array!10866 array!10864 (_ BitVec 32) (_ BitVec 32) V!7395 V!7395 (_ BitVec 64) Int) Unit!6608)

(assert (=> b!221281 (= lt!112400 (lemmaInListMapThenSeekEntryOrOpenFindsIt!215 (_keys!6225 thiss!1504) (_values!4154 thiss!1504) (mask!9981 thiss!1504) (extraKeys!3908 thiss!1504) (zeroValue!4012 thiss!1504) (minValue!4012 thiss!1504) key!932 (defaultEntry!4171 thiss!1504)))))

(assert (=> b!221281 false))

(declare-fun e!143828 () Bool)

(declare-fun tp_is_empty!5811 () Bool)

(declare-fun array_inv!3401 (array!10866) Bool)

(declare-fun array_inv!3402 (array!10864) Bool)

(assert (=> b!221282 (= e!143828 (and tp!20988 tp_is_empty!5811 (array_inv!3401 (_keys!6225 thiss!1504)) (array_inv!3402 (_values!4154 thiss!1504)) e!143824))))

(declare-fun b!221283 () Bool)

(declare-fun lt!112403 () Unit!6608)

(assert (=> b!221283 (= e!143827 lt!112403)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!223 (array!10866 array!10864 (_ BitVec 32) (_ BitVec 32) V!7395 V!7395 (_ BitVec 64) Int) Unit!6608)

(assert (=> b!221283 (= lt!112403 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!223 (_keys!6225 thiss!1504) (_values!4154 thiss!1504) (mask!9981 thiss!1504) (extraKeys!3908 thiss!1504) (zeroValue!4012 thiss!1504) (minValue!4012 thiss!1504) key!932 (defaultEntry!4171 thiss!1504)))))

(declare-fun c!36785 () Bool)

(assert (=> b!221283 (= c!36785 ((_ is MissingZero!833) lt!112404))))

(assert (=> b!221283 e!143832))

(declare-fun b!221284 () Bool)

(assert (=> b!221284 (= e!143831 tp_is_empty!5811)))

(declare-fun b!221285 () Bool)

(assert (=> b!221285 (= e!143836 tp_is_empty!5811)))

(declare-fun b!221286 () Bool)

(assert (=> b!221286 (= e!143825 false)))

(declare-fun lt!112402 () Bool)

(declare-datatypes ((List!3299 0))(
  ( (Nil!3296) (Cons!3295 (h!3943 (_ BitVec 64)) (t!8266 List!3299)) )
))
(declare-fun arrayNoDuplicates!0 (array!10866 (_ BitVec 32) List!3299) Bool)

(assert (=> b!221286 (= lt!112402 (arrayNoDuplicates!0 (_keys!6225 thiss!1504) #b00000000000000000000000000000000 Nil!3296))))

(declare-fun b!221287 () Bool)

(assert (=> b!221287 (= e!143826 (not call!20679))))

(declare-fun b!221288 () Bool)

(declare-fun res!108566 () Bool)

(assert (=> b!221288 (=> (not res!108566) (not e!143834))))

(assert (=> b!221288 (= res!108566 (= (select (arr!5152 (_keys!6225 thiss!1504)) (index!5502 lt!112404)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20677 () Bool)

(assert (=> bm!20677 (= call!20680 (inRange!0 (ite c!36785 (index!5502 lt!112404) (index!5505 lt!112404)) (mask!9981 thiss!1504)))))

(declare-fun b!221289 () Bool)

(assert (=> b!221289 (= e!143835 e!143833)))

(declare-fun res!108560 () Bool)

(assert (=> b!221289 (=> (not res!108560) (not e!143833))))

(assert (=> b!221289 (= res!108560 (or (= lt!112404 (MissingZero!833 index!297)) (= lt!112404 (MissingVacant!833 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10866 (_ BitVec 32)) SeekEntryResult!833)

(assert (=> b!221289 (= lt!112404 (seekEntryOrOpen!0 key!932 (_keys!6225 thiss!1504) (mask!9981 thiss!1504)))))

(declare-fun b!221290 () Bool)

(assert (=> b!221290 (= e!143830 ((_ is Undefined!833) lt!112404))))

(declare-fun b!221291 () Bool)

(declare-fun res!108570 () Bool)

(assert (=> b!221291 (=> (not res!108570) (not e!143825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221291 (= res!108570 (validMask!0 (mask!9981 thiss!1504)))))

(declare-fun res!108569 () Bool)

(assert (=> start!21894 (=> (not res!108569) (not e!143835))))

(declare-fun valid!1212 (LongMapFixedSize!3024) Bool)

(assert (=> start!21894 (= res!108569 (valid!1212 thiss!1504))))

(assert (=> start!21894 e!143835))

(assert (=> start!21894 e!143828))

(assert (=> start!21894 true))

(declare-fun b!221277 () Bool)

(declare-fun res!108568 () Bool)

(assert (=> b!221277 (=> (not res!108568) (not e!143834))))

(assert (=> b!221277 (= res!108568 call!20680)))

(assert (=> b!221277 (= e!143832 e!143834)))

(assert (= (and start!21894 res!108569) b!221278))

(assert (= (and b!221278 res!108562) b!221289))

(assert (= (and b!221289 res!108560) b!221280))

(assert (= (and b!221280 c!36784) b!221281))

(assert (= (and b!221280 (not c!36784)) b!221283))

(assert (= (and b!221283 c!36785) b!221277))

(assert (= (and b!221283 (not c!36785)) b!221270))

(assert (= (and b!221277 res!108568) b!221288))

(assert (= (and b!221288 res!108566) b!221273))

(assert (= (and b!221270 c!36783) b!221274))

(assert (= (and b!221270 (not c!36783)) b!221290))

(assert (= (and b!221274 res!108563) b!221271))

(assert (= (and b!221271 res!108571) b!221287))

(assert (= (or b!221277 b!221274) bm!20677))

(assert (= (or b!221273 b!221287) bm!20676))

(assert (= (and b!221280 res!108565) b!221279))

(assert (= (and b!221279 res!108567) b!221291))

(assert (= (and b!221291 res!108570) b!221275))

(assert (= (and b!221275 res!108564) b!221276))

(assert (= (and b!221276 res!108561) b!221286))

(assert (= (and b!221272 condMapEmpty!9886) mapIsEmpty!9886))

(assert (= (and b!221272 (not condMapEmpty!9886)) mapNonEmpty!9886))

(assert (= (and mapNonEmpty!9886 ((_ is ValueCellFull!2562) mapValue!9886)) b!221284))

(assert (= (and b!221272 ((_ is ValueCellFull!2562) mapDefault!9886)) b!221285))

(assert (= b!221282 b!221272))

(assert (= start!21894 b!221282))

(declare-fun m!245993 () Bool)

(assert (=> b!221280 m!245993))

(declare-fun m!245995 () Bool)

(assert (=> b!221280 m!245995))

(assert (=> b!221280 m!245995))

(declare-fun m!245997 () Bool)

(assert (=> b!221280 m!245997))

(declare-fun m!245999 () Bool)

(assert (=> b!221283 m!245999))

(declare-fun m!246001 () Bool)

(assert (=> b!221291 m!246001))

(declare-fun m!246003 () Bool)

(assert (=> b!221276 m!246003))

(declare-fun m!246005 () Bool)

(assert (=> b!221288 m!246005))

(declare-fun m!246007 () Bool)

(assert (=> b!221282 m!246007))

(declare-fun m!246009 () Bool)

(assert (=> b!221282 m!246009))

(declare-fun m!246011 () Bool)

(assert (=> b!221281 m!246011))

(declare-fun m!246013 () Bool)

(assert (=> bm!20676 m!246013))

(declare-fun m!246015 () Bool)

(assert (=> b!221289 m!246015))

(declare-fun m!246017 () Bool)

(assert (=> start!21894 m!246017))

(declare-fun m!246019 () Bool)

(assert (=> mapNonEmpty!9886 m!246019))

(assert (=> b!221279 m!246013))

(declare-fun m!246021 () Bool)

(assert (=> bm!20677 m!246021))

(declare-fun m!246023 () Bool)

(assert (=> b!221271 m!246023))

(declare-fun m!246025 () Bool)

(assert (=> b!221286 m!246025))

(check-sat (not b!221281) (not b!221283) (not b!221276) (not start!21894) (not b_next!5949) (not mapNonEmpty!9886) (not bm!20676) b_and!12865 (not b!221291) (not b!221279) tp_is_empty!5811 (not b!221282) (not b!221280) (not b!221286) (not bm!20677) (not b!221289))
(check-sat b_and!12865 (not b_next!5949))
