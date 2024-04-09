; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23538 () Bool)

(assert start!23538)

(declare-fun b!247063 () Bool)

(declare-fun b_free!6579 () Bool)

(declare-fun b_next!6579 () Bool)

(assert (=> b!247063 (= b_free!6579 (not b_next!6579))))

(declare-fun tp!22982 () Bool)

(declare-fun b_and!13597 () Bool)

(assert (=> b!247063 (= tp!22982 b_and!13597)))

(declare-fun b!247050 () Bool)

(declare-fun e!160281 () Bool)

(declare-datatypes ((SeekEntryResult!1108 0))(
  ( (MissingZero!1108 (index!6602 (_ BitVec 32))) (Found!1108 (index!6603 (_ BitVec 32))) (Intermediate!1108 (undefined!1920 Bool) (index!6604 (_ BitVec 32)) (x!24518 (_ BitVec 32))) (Undefined!1108) (MissingVacant!1108 (index!6605 (_ BitVec 32))) )
))
(declare-fun lt!123775 () SeekEntryResult!1108)

(get-info :version)

(assert (=> b!247050 (= e!160281 ((_ is Undefined!1108) lt!123775))))

(declare-fun b!247051 () Bool)

(declare-fun e!160287 () Bool)

(declare-fun e!160282 () Bool)

(assert (=> b!247051 (= e!160287 (not e!160282))))

(declare-fun res!121125 () Bool)

(assert (=> b!247051 (=> res!121125 e!160282)))

(declare-datatypes ((V!8235 0))(
  ( (V!8236 (val!3265 Int)) )
))
(declare-datatypes ((ValueCell!2877 0))(
  ( (ValueCellFull!2877 (v!5318 V!8235)) (EmptyCell!2877) )
))
(declare-datatypes ((array!12186 0))(
  ( (array!12187 (arr!5781 (Array (_ BitVec 32) ValueCell!2877)) (size!6124 (_ BitVec 32))) )
))
(declare-datatypes ((array!12188 0))(
  ( (array!12189 (arr!5782 (Array (_ BitVec 32) (_ BitVec 64))) (size!6125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3654 0))(
  ( (LongMapFixedSize!3655 (defaultEntry!4572 Int) (mask!10705 (_ BitVec 32)) (extraKeys!4309 (_ BitVec 32)) (zeroValue!4413 V!8235) (minValue!4413 V!8235) (_size!1876 (_ BitVec 32)) (_keys!6693 array!12188) (_values!4555 array!12186) (_vacant!1876 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3654)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247051 (= res!121125 (not (validMask!0 (mask!10705 thiss!1504))))))

(declare-fun lt!123783 () array!12188)

(declare-fun arrayCountValidKeys!0 (array!12188 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247051 (= (arrayCountValidKeys!0 lt!123783 #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6693 thiss!1504) #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504)))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7628 0))(
  ( (Unit!7629) )
))
(declare-fun lt!123782 () Unit!7628)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12188 (_ BitVec 32) (_ BitVec 64)) Unit!7628)

(assert (=> b!247051 (= lt!123782 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6693 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3705 0))(
  ( (Nil!3702) (Cons!3701 (h!4359 (_ BitVec 64)) (t!8734 List!3705)) )
))
(declare-fun arrayNoDuplicates!0 (array!12188 (_ BitVec 32) List!3705) Bool)

(assert (=> b!247051 (arrayNoDuplicates!0 lt!123783 #b00000000000000000000000000000000 Nil!3702)))

(assert (=> b!247051 (= lt!123783 (array!12189 (store (arr!5782 (_keys!6693 thiss!1504)) index!297 key!932) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun lt!123778 () Unit!7628)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12188 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3705) Unit!7628)

(assert (=> b!247051 (= lt!123778 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6693 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3702))))

(declare-fun lt!123776 () Unit!7628)

(declare-fun e!160284 () Unit!7628)

(assert (=> b!247051 (= lt!123776 e!160284)))

(declare-fun c!41333 () Bool)

(declare-fun arrayContainsKey!0 (array!12188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247051 (= c!41333 (arrayContainsKey!0 (_keys!6693 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247052 () Bool)

(declare-fun e!160276 () Unit!7628)

(declare-fun Unit!7630 () Unit!7628)

(assert (=> b!247052 (= e!160276 Unit!7630)))

(declare-fun lt!123781 () Unit!7628)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!380 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) Int) Unit!7628)

(assert (=> b!247052 (= lt!123781 (lemmaInListMapThenSeekEntryOrOpenFindsIt!380 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)))))

(assert (=> b!247052 false))

(declare-fun b!247053 () Bool)

(declare-fun e!160290 () Bool)

(declare-fun call!23122 () Bool)

(assert (=> b!247053 (= e!160290 (not call!23122))))

(declare-fun res!121129 () Bool)

(declare-fun e!160288 () Bool)

(assert (=> start!23538 (=> (not res!121129) (not e!160288))))

(declare-fun valid!1421 (LongMapFixedSize!3654) Bool)

(assert (=> start!23538 (= res!121129 (valid!1421 thiss!1504))))

(assert (=> start!23538 e!160288))

(declare-fun e!160286 () Bool)

(assert (=> start!23538 e!160286))

(assert (=> start!23538 true))

(declare-fun b!247054 () Bool)

(declare-fun c!41334 () Bool)

(assert (=> b!247054 (= c!41334 ((_ is MissingVacant!1108) lt!123775))))

(declare-fun e!160279 () Bool)

(assert (=> b!247054 (= e!160279 e!160281)))

(declare-fun b!247055 () Bool)

(declare-fun e!160289 () Bool)

(declare-fun tp_is_empty!6441 () Bool)

(assert (=> b!247055 (= e!160289 tp_is_empty!6441)))

(declare-fun b!247056 () Bool)

(declare-fun e!160278 () Bool)

(assert (=> b!247056 (= e!160278 tp_is_empty!6441)))

(declare-fun b!247057 () Bool)

(declare-fun e!160277 () Bool)

(assert (=> b!247057 (= e!160277 e!160287)))

(declare-fun res!121128 () Bool)

(assert (=> b!247057 (=> (not res!121128) (not e!160287))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!247057 (= res!121128 (inRange!0 index!297 (mask!10705 thiss!1504)))))

(declare-fun lt!123780 () Unit!7628)

(assert (=> b!247057 (= lt!123780 e!160276)))

(declare-fun c!41336 () Bool)

(declare-datatypes ((tuple2!4800 0))(
  ( (tuple2!4801 (_1!2410 (_ BitVec 64)) (_2!2410 V!8235)) )
))
(declare-datatypes ((List!3706 0))(
  ( (Nil!3703) (Cons!3702 (h!4360 tuple2!4800) (t!8735 List!3706)) )
))
(declare-datatypes ((ListLongMap!3727 0))(
  ( (ListLongMap!3728 (toList!1879 List!3706)) )
))
(declare-fun contains!1786 (ListLongMap!3727 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1402 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 32) Int) ListLongMap!3727)

(assert (=> b!247057 (= c!41336 (contains!1786 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)) key!932))))

(declare-fun b!247058 () Bool)

(declare-fun res!121126 () Bool)

(assert (=> b!247058 (=> (not res!121126) (not e!160290))))

(assert (=> b!247058 (= res!121126 (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6602 lt!123775)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247059 () Bool)

(declare-fun e!160280 () Bool)

(assert (=> b!247059 (= e!160281 e!160280)))

(declare-fun res!121121 () Bool)

(declare-fun call!23123 () Bool)

(assert (=> b!247059 (= res!121121 call!23123)))

(assert (=> b!247059 (=> (not res!121121) (not e!160280))))

(declare-fun b!247060 () Bool)

(assert (=> b!247060 (= e!160280 (not call!23122))))

(declare-fun b!247061 () Bool)

(declare-fun Unit!7631 () Unit!7628)

(assert (=> b!247061 (= e!160284 Unit!7631)))

(declare-fun lt!123777 () Unit!7628)

(declare-fun lemmaArrayContainsKeyThenInListMap!183 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) (_ BitVec 32) Int) Unit!7628)

(assert (=> b!247061 (= lt!123777 (lemmaArrayContainsKeyThenInListMap!183 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(assert (=> b!247061 false))

(declare-fun b!247062 () Bool)

(declare-fun res!121127 () Bool)

(assert (=> b!247062 (= res!121127 (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6605 lt!123775)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247062 (=> (not res!121127) (not e!160280))))

(declare-fun mapNonEmpty!10934 () Bool)

(declare-fun mapRes!10934 () Bool)

(declare-fun tp!22981 () Bool)

(assert (=> mapNonEmpty!10934 (= mapRes!10934 (and tp!22981 e!160289))))

(declare-fun mapKey!10934 () (_ BitVec 32))

(declare-fun mapRest!10934 () (Array (_ BitVec 32) ValueCell!2877))

(declare-fun mapValue!10934 () ValueCell!2877)

(assert (=> mapNonEmpty!10934 (= (arr!5781 (_values!4555 thiss!1504)) (store mapRest!10934 mapKey!10934 mapValue!10934))))

(declare-fun e!160283 () Bool)

(declare-fun array_inv!3809 (array!12188) Bool)

(declare-fun array_inv!3810 (array!12186) Bool)

(assert (=> b!247063 (= e!160286 (and tp!22982 tp_is_empty!6441 (array_inv!3809 (_keys!6693 thiss!1504)) (array_inv!3810 (_values!4555 thiss!1504)) e!160283))))

(declare-fun mapIsEmpty!10934 () Bool)

(assert (=> mapIsEmpty!10934 mapRes!10934))

(declare-fun b!247064 () Bool)

(declare-fun lt!123779 () Unit!7628)

(assert (=> b!247064 (= e!160276 lt!123779)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!382 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) Int) Unit!7628)

(assert (=> b!247064 (= lt!123779 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!382 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)))))

(declare-fun c!41335 () Bool)

(assert (=> b!247064 (= c!41335 ((_ is MissingZero!1108) lt!123775))))

(assert (=> b!247064 e!160279))

(declare-fun b!247065 () Bool)

(assert (=> b!247065 (= e!160283 (and e!160278 mapRes!10934))))

(declare-fun condMapEmpty!10934 () Bool)

(declare-fun mapDefault!10934 () ValueCell!2877)

(assert (=> b!247065 (= condMapEmpty!10934 (= (arr!5781 (_values!4555 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2877)) mapDefault!10934)))))

(declare-fun b!247066 () Bool)

(declare-fun res!121124 () Bool)

(assert (=> b!247066 (=> res!121124 e!160282)))

(assert (=> b!247066 (= res!121124 (or (not (= (size!6125 (_keys!6693 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10705 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6125 (_keys!6693 thiss!1504)))))))

(declare-fun b!247067 () Bool)

(declare-fun res!121123 () Bool)

(assert (=> b!247067 (=> (not res!121123) (not e!160290))))

(assert (=> b!247067 (= res!121123 call!23123)))

(assert (=> b!247067 (= e!160279 e!160290)))

(declare-fun bm!23119 () Bool)

(assert (=> bm!23119 (= call!23122 (arrayContainsKey!0 (_keys!6693 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247068 () Bool)

(assert (=> b!247068 (= e!160288 e!160277)))

(declare-fun res!121120 () Bool)

(assert (=> b!247068 (=> (not res!121120) (not e!160277))))

(assert (=> b!247068 (= res!121120 (or (= lt!123775 (MissingZero!1108 index!297)) (= lt!123775 (MissingVacant!1108 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12188 (_ BitVec 32)) SeekEntryResult!1108)

(assert (=> b!247068 (= lt!123775 (seekEntryOrOpen!0 key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(declare-fun b!247069 () Bool)

(declare-fun Unit!7632 () Unit!7628)

(assert (=> b!247069 (= e!160284 Unit!7632)))

(declare-fun b!247070 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247070 (= e!160282 (validKeyInArray!0 key!932))))

(declare-fun b!247071 () Bool)

(declare-fun res!121122 () Bool)

(assert (=> b!247071 (=> (not res!121122) (not e!160288))))

(assert (=> b!247071 (= res!121122 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!23120 () Bool)

(assert (=> bm!23120 (= call!23123 (inRange!0 (ite c!41335 (index!6602 lt!123775) (index!6605 lt!123775)) (mask!10705 thiss!1504)))))

(assert (= (and start!23538 res!121129) b!247071))

(assert (= (and b!247071 res!121122) b!247068))

(assert (= (and b!247068 res!121120) b!247057))

(assert (= (and b!247057 c!41336) b!247052))

(assert (= (and b!247057 (not c!41336)) b!247064))

(assert (= (and b!247064 c!41335) b!247067))

(assert (= (and b!247064 (not c!41335)) b!247054))

(assert (= (and b!247067 res!121123) b!247058))

(assert (= (and b!247058 res!121126) b!247053))

(assert (= (and b!247054 c!41334) b!247059))

(assert (= (and b!247054 (not c!41334)) b!247050))

(assert (= (and b!247059 res!121121) b!247062))

(assert (= (and b!247062 res!121127) b!247060))

(assert (= (or b!247067 b!247059) bm!23120))

(assert (= (or b!247053 b!247060) bm!23119))

(assert (= (and b!247057 res!121128) b!247051))

(assert (= (and b!247051 c!41333) b!247061))

(assert (= (and b!247051 (not c!41333)) b!247069))

(assert (= (and b!247051 (not res!121125)) b!247066))

(assert (= (and b!247066 (not res!121124)) b!247070))

(assert (= (and b!247065 condMapEmpty!10934) mapIsEmpty!10934))

(assert (= (and b!247065 (not condMapEmpty!10934)) mapNonEmpty!10934))

(assert (= (and mapNonEmpty!10934 ((_ is ValueCellFull!2877) mapValue!10934)) b!247055))

(assert (= (and b!247065 ((_ is ValueCellFull!2877) mapDefault!10934)) b!247056))

(assert (= b!247063 b!247065))

(assert (= start!23538 b!247063))

(declare-fun m!264249 () Bool)

(assert (=> bm!23120 m!264249))

(declare-fun m!264251 () Bool)

(assert (=> mapNonEmpty!10934 m!264251))

(declare-fun m!264253 () Bool)

(assert (=> b!247052 m!264253))

(declare-fun m!264255 () Bool)

(assert (=> b!247058 m!264255))

(declare-fun m!264257 () Bool)

(assert (=> b!247064 m!264257))

(declare-fun m!264259 () Bool)

(assert (=> b!247057 m!264259))

(declare-fun m!264261 () Bool)

(assert (=> b!247057 m!264261))

(assert (=> b!247057 m!264261))

(declare-fun m!264263 () Bool)

(assert (=> b!247057 m!264263))

(declare-fun m!264265 () Bool)

(assert (=> b!247063 m!264265))

(declare-fun m!264267 () Bool)

(assert (=> b!247063 m!264267))

(declare-fun m!264269 () Bool)

(assert (=> b!247051 m!264269))

(declare-fun m!264271 () Bool)

(assert (=> b!247051 m!264271))

(declare-fun m!264273 () Bool)

(assert (=> b!247051 m!264273))

(declare-fun m!264275 () Bool)

(assert (=> b!247051 m!264275))

(declare-fun m!264277 () Bool)

(assert (=> b!247051 m!264277))

(declare-fun m!264279 () Bool)

(assert (=> b!247051 m!264279))

(declare-fun m!264281 () Bool)

(assert (=> b!247051 m!264281))

(declare-fun m!264283 () Bool)

(assert (=> b!247051 m!264283))

(declare-fun m!264285 () Bool)

(assert (=> b!247068 m!264285))

(declare-fun m!264287 () Bool)

(assert (=> b!247070 m!264287))

(declare-fun m!264289 () Bool)

(assert (=> start!23538 m!264289))

(declare-fun m!264291 () Bool)

(assert (=> b!247062 m!264291))

(declare-fun m!264293 () Bool)

(assert (=> b!247061 m!264293))

(assert (=> bm!23119 m!264271))

(check-sat (not b!247063) (not mapNonEmpty!10934) (not bm!23119) (not b!247061) (not b!247051) (not bm!23120) (not b!247057) (not b!247064) b_and!13597 (not b!247052) (not b_next!6579) (not b!247068) tp_is_empty!6441 (not b!247070) (not start!23538))
(check-sat b_and!13597 (not b_next!6579))
(get-model)

(declare-fun d!60355 () Bool)

(declare-fun res!121164 () Bool)

(declare-fun e!160340 () Bool)

(assert (=> d!60355 (=> res!121164 e!160340)))

(assert (=> d!60355 (= res!121164 (= (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60355 (= (arrayContainsKey!0 (_keys!6693 thiss!1504) key!932 #b00000000000000000000000000000000) e!160340)))

(declare-fun b!247142 () Bool)

(declare-fun e!160341 () Bool)

(assert (=> b!247142 (= e!160340 e!160341)))

(declare-fun res!121165 () Bool)

(assert (=> b!247142 (=> (not res!121165) (not e!160341))))

(assert (=> b!247142 (= res!121165 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247143 () Bool)

(assert (=> b!247143 (= e!160341 (arrayContainsKey!0 (_keys!6693 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60355 (not res!121164)) b!247142))

(assert (= (and b!247142 res!121165) b!247143))

(declare-fun m!264341 () Bool)

(assert (=> d!60355 m!264341))

(declare-fun m!264343 () Bool)

(assert (=> b!247143 m!264343))

(assert (=> bm!23119 d!60355))

(declare-fun d!60357 () Bool)

(assert (=> d!60357 (= (inRange!0 (ite c!41335 (index!6602 lt!123775) (index!6605 lt!123775)) (mask!10705 thiss!1504)) (and (bvsge (ite c!41335 (index!6602 lt!123775) (index!6605 lt!123775)) #b00000000000000000000000000000000) (bvslt (ite c!41335 (index!6602 lt!123775) (index!6605 lt!123775)) (bvadd (mask!10705 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23120 d!60357))

(declare-fun d!60359 () Bool)

(declare-fun res!121172 () Bool)

(declare-fun e!160344 () Bool)

(assert (=> d!60359 (=> (not res!121172) (not e!160344))))

(declare-fun simpleValid!256 (LongMapFixedSize!3654) Bool)

(assert (=> d!60359 (= res!121172 (simpleValid!256 thiss!1504))))

(assert (=> d!60359 (= (valid!1421 thiss!1504) e!160344)))

(declare-fun b!247150 () Bool)

(declare-fun res!121173 () Bool)

(assert (=> b!247150 (=> (not res!121173) (not e!160344))))

(assert (=> b!247150 (= res!121173 (= (arrayCountValidKeys!0 (_keys!6693 thiss!1504) #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (_size!1876 thiss!1504)))))

(declare-fun b!247151 () Bool)

(declare-fun res!121174 () Bool)

(assert (=> b!247151 (=> (not res!121174) (not e!160344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12188 (_ BitVec 32)) Bool)

(assert (=> b!247151 (= res!121174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(declare-fun b!247152 () Bool)

(assert (=> b!247152 (= e!160344 (arrayNoDuplicates!0 (_keys!6693 thiss!1504) #b00000000000000000000000000000000 Nil!3702))))

(assert (= (and d!60359 res!121172) b!247150))

(assert (= (and b!247150 res!121173) b!247151))

(assert (= (and b!247151 res!121174) b!247152))

(declare-fun m!264345 () Bool)

(assert (=> d!60359 m!264345))

(assert (=> b!247150 m!264281))

(declare-fun m!264347 () Bool)

(assert (=> b!247151 m!264347))

(declare-fun m!264349 () Bool)

(assert (=> b!247152 m!264349))

(assert (=> start!23538 d!60359))

(declare-fun d!60361 () Bool)

(assert (=> d!60361 (= (array_inv!3809 (_keys!6693 thiss!1504)) (bvsge (size!6125 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!247063 d!60361))

(declare-fun d!60363 () Bool)

(assert (=> d!60363 (= (array_inv!3810 (_values!4555 thiss!1504)) (bvsge (size!6124 (_values!4555 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!247063 d!60363))

(declare-fun d!60365 () Bool)

(declare-fun e!160347 () Bool)

(assert (=> d!60365 e!160347))

(declare-fun res!121179 () Bool)

(assert (=> d!60365 (=> (not res!121179) (not e!160347))))

(declare-fun lt!123815 () SeekEntryResult!1108)

(assert (=> d!60365 (= res!121179 ((_ is Found!1108) lt!123815))))

(assert (=> d!60365 (= lt!123815 (seekEntryOrOpen!0 key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(declare-fun lt!123816 () Unit!7628)

(declare-fun choose!1169 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) Int) Unit!7628)

(assert (=> d!60365 (= lt!123816 (choose!1169 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)))))

(assert (=> d!60365 (validMask!0 (mask!10705 thiss!1504))))

(assert (=> d!60365 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!380 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)) lt!123816)))

(declare-fun b!247157 () Bool)

(declare-fun res!121180 () Bool)

(assert (=> b!247157 (=> (not res!121180) (not e!160347))))

(assert (=> b!247157 (= res!121180 (inRange!0 (index!6603 lt!123815) (mask!10705 thiss!1504)))))

(declare-fun b!247158 () Bool)

(assert (=> b!247158 (= e!160347 (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6603 lt!123815)) key!932))))

(assert (=> b!247158 (and (bvsge (index!6603 lt!123815) #b00000000000000000000000000000000) (bvslt (index!6603 lt!123815) (size!6125 (_keys!6693 thiss!1504))))))

(assert (= (and d!60365 res!121179) b!247157))

(assert (= (and b!247157 res!121180) b!247158))

(assert (=> d!60365 m!264285))

(declare-fun m!264351 () Bool)

(assert (=> d!60365 m!264351))

(assert (=> d!60365 m!264269))

(declare-fun m!264353 () Bool)

(assert (=> b!247157 m!264353))

(declare-fun m!264355 () Bool)

(assert (=> b!247158 m!264355))

(assert (=> b!247052 d!60365))

(declare-fun d!60367 () Bool)

(assert (=> d!60367 (= (inRange!0 index!297 (mask!10705 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10705 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!247057 d!60367))

(declare-fun d!60369 () Bool)

(declare-fun e!160352 () Bool)

(assert (=> d!60369 e!160352))

(declare-fun res!121183 () Bool)

(assert (=> d!60369 (=> res!121183 e!160352)))

(declare-fun lt!123827 () Bool)

(assert (=> d!60369 (= res!121183 (not lt!123827))))

(declare-fun lt!123828 () Bool)

(assert (=> d!60369 (= lt!123827 lt!123828)))

(declare-fun lt!123825 () Unit!7628)

(declare-fun e!160353 () Unit!7628)

(assert (=> d!60369 (= lt!123825 e!160353)))

(declare-fun c!41351 () Bool)

(assert (=> d!60369 (= c!41351 lt!123828)))

(declare-fun containsKey!283 (List!3706 (_ BitVec 64)) Bool)

(assert (=> d!60369 (= lt!123828 (containsKey!283 (toList!1879 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504))) key!932))))

(assert (=> d!60369 (= (contains!1786 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)) key!932) lt!123827)))

(declare-fun b!247165 () Bool)

(declare-fun lt!123826 () Unit!7628)

(assert (=> b!247165 (= e!160353 lt!123826)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!232 (List!3706 (_ BitVec 64)) Unit!7628)

(assert (=> b!247165 (= lt!123826 (lemmaContainsKeyImpliesGetValueByKeyDefined!232 (toList!1879 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504))) key!932))))

(declare-datatypes ((Option!297 0))(
  ( (Some!296 (v!5320 V!8235)) (None!295) )
))
(declare-fun isDefined!233 (Option!297) Bool)

(declare-fun getValueByKey!291 (List!3706 (_ BitVec 64)) Option!297)

(assert (=> b!247165 (isDefined!233 (getValueByKey!291 (toList!1879 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504))) key!932))))

(declare-fun b!247166 () Bool)

(declare-fun Unit!7637 () Unit!7628)

(assert (=> b!247166 (= e!160353 Unit!7637)))

(declare-fun b!247167 () Bool)

(assert (=> b!247167 (= e!160352 (isDefined!233 (getValueByKey!291 (toList!1879 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504))) key!932)))))

(assert (= (and d!60369 c!41351) b!247165))

(assert (= (and d!60369 (not c!41351)) b!247166))

(assert (= (and d!60369 (not res!121183)) b!247167))

(declare-fun m!264357 () Bool)

(assert (=> d!60369 m!264357))

(declare-fun m!264359 () Bool)

(assert (=> b!247165 m!264359))

(declare-fun m!264361 () Bool)

(assert (=> b!247165 m!264361))

(assert (=> b!247165 m!264361))

(declare-fun m!264363 () Bool)

(assert (=> b!247165 m!264363))

(assert (=> b!247167 m!264361))

(assert (=> b!247167 m!264361))

(assert (=> b!247167 m!264363))

(assert (=> b!247057 d!60369))

(declare-fun b!247210 () Bool)

(declare-fun e!160380 () ListLongMap!3727)

(declare-fun call!23144 () ListLongMap!3727)

(declare-fun +!656 (ListLongMap!3727 tuple2!4800) ListLongMap!3727)

(assert (=> b!247210 (= e!160380 (+!656 call!23144 (tuple2!4801 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4413 thiss!1504))))))

(declare-fun b!247211 () Bool)

(declare-fun e!160383 () Bool)

(declare-fun call!23146 () Bool)

(assert (=> b!247211 (= e!160383 (not call!23146))))

(declare-fun b!247212 () Bool)

(declare-fun e!160384 () Bool)

(assert (=> b!247212 (= e!160383 e!160384)))

(declare-fun res!121205 () Bool)

(assert (=> b!247212 (= res!121205 call!23146)))

(assert (=> b!247212 (=> (not res!121205) (not e!160384))))

(declare-fun bm!23141 () Bool)

(declare-fun call!23150 () ListLongMap!3727)

(declare-fun getCurrentListMapNoExtraKeys!553 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 32) Int) ListLongMap!3727)

(assert (=> bm!23141 (= call!23150 (getCurrentListMapNoExtraKeys!553 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(declare-fun b!247213 () Bool)

(declare-fun e!160381 () ListLongMap!3727)

(declare-fun call!23147 () ListLongMap!3727)

(assert (=> b!247213 (= e!160381 call!23147)))

(declare-fun bm!23142 () Bool)

(declare-fun call!23148 () ListLongMap!3727)

(assert (=> bm!23142 (= call!23148 call!23144)))

(declare-fun b!247214 () Bool)

(declare-fun e!160390 () Unit!7628)

(declare-fun Unit!7638 () Unit!7628)

(assert (=> b!247214 (= e!160390 Unit!7638)))

(declare-fun b!247215 () Bool)

(declare-fun e!160387 () ListLongMap!3727)

(assert (=> b!247215 (= e!160387 call!23148)))

(declare-fun b!247216 () Bool)

(declare-fun e!160388 () Bool)

(declare-fun lt!123894 () ListLongMap!3727)

(declare-fun apply!234 (ListLongMap!3727 (_ BitVec 64)) V!8235)

(declare-fun get!2970 (ValueCell!2877 V!8235) V!8235)

(declare-fun dynLambda!572 (Int (_ BitVec 64)) V!8235)

(assert (=> b!247216 (= e!160388 (= (apply!234 lt!123894 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)) (get!2970 (select (arr!5781 (_values!4555 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!572 (defaultEntry!4572 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!247216 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6124 (_values!4555 thiss!1504))))))

(assert (=> b!247216 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247217 () Bool)

(assert (=> b!247217 (= e!160384 (= (apply!234 lt!123894 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4413 thiss!1504)))))

(declare-fun bm!23143 () Bool)

(declare-fun call!23149 () ListLongMap!3727)

(assert (=> bm!23143 (= call!23147 call!23149)))

(declare-fun d!60371 () Bool)

(declare-fun e!160389 () Bool)

(assert (=> d!60371 e!160389))

(declare-fun res!121203 () Bool)

(assert (=> d!60371 (=> (not res!121203) (not e!160389))))

(assert (=> d!60371 (= res!121203 (or (bvsge #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))))

(declare-fun lt!123878 () ListLongMap!3727)

(assert (=> d!60371 (= lt!123894 lt!123878)))

(declare-fun lt!123883 () Unit!7628)

(assert (=> d!60371 (= lt!123883 e!160390)))

(declare-fun c!41365 () Bool)

(declare-fun e!160392 () Bool)

(assert (=> d!60371 (= c!41365 e!160392)))

(declare-fun res!121204 () Bool)

(assert (=> d!60371 (=> (not res!121204) (not e!160392))))

(assert (=> d!60371 (= res!121204 (bvslt #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(assert (=> d!60371 (= lt!123878 e!160380)))

(declare-fun c!41367 () Bool)

(assert (=> d!60371 (= c!41367 (and (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60371 (validMask!0 (mask!10705 thiss!1504))))

(assert (=> d!60371 (= (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)) lt!123894)))

(declare-fun b!247218 () Bool)

(assert (=> b!247218 (= e!160381 call!23148)))

(declare-fun c!41364 () Bool)

(declare-fun bm!23144 () Bool)

(assert (=> bm!23144 (= call!23144 (+!656 (ite c!41367 call!23150 (ite c!41364 call!23149 call!23147)) (ite (or c!41367 c!41364) (tuple2!4801 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4413 thiss!1504)) (tuple2!4801 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4413 thiss!1504)))))))

(declare-fun b!247219 () Bool)

(assert (=> b!247219 (= e!160392 (validKeyInArray!0 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!247220 () Bool)

(declare-fun res!121210 () Bool)

(assert (=> b!247220 (=> (not res!121210) (not e!160389))))

(declare-fun e!160391 () Bool)

(assert (=> b!247220 (= res!121210 e!160391)))

(declare-fun c!41366 () Bool)

(assert (=> b!247220 (= c!41366 (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!247221 () Bool)

(assert (=> b!247221 (= e!160389 e!160383)))

(declare-fun c!41368 () Bool)

(assert (=> b!247221 (= c!41368 (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!247222 () Bool)

(declare-fun call!23145 () Bool)

(assert (=> b!247222 (= e!160391 (not call!23145))))

(declare-fun b!247223 () Bool)

(declare-fun e!160385 () Bool)

(assert (=> b!247223 (= e!160391 e!160385)))

(declare-fun res!121202 () Bool)

(assert (=> b!247223 (= res!121202 call!23145)))

(assert (=> b!247223 (=> (not res!121202) (not e!160385))))

(declare-fun b!247224 () Bool)

(assert (=> b!247224 (= e!160380 e!160387)))

(assert (=> b!247224 (= c!41364 (and (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23145 () Bool)

(assert (=> bm!23145 (= call!23149 call!23150)))

(declare-fun bm!23146 () Bool)

(assert (=> bm!23146 (= call!23145 (contains!1786 lt!123894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247225 () Bool)

(assert (=> b!247225 (= e!160385 (= (apply!234 lt!123894 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4413 thiss!1504)))))

(declare-fun b!247226 () Bool)

(declare-fun c!41369 () Bool)

(assert (=> b!247226 (= c!41369 (and (not (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4309 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!247226 (= e!160387 e!160381)))

(declare-fun b!247227 () Bool)

(declare-fun res!121207 () Bool)

(assert (=> b!247227 (=> (not res!121207) (not e!160389))))

(declare-fun e!160386 () Bool)

(assert (=> b!247227 (= res!121207 e!160386)))

(declare-fun res!121206 () Bool)

(assert (=> b!247227 (=> res!121206 e!160386)))

(declare-fun e!160382 () Bool)

(assert (=> b!247227 (= res!121206 (not e!160382))))

(declare-fun res!121208 () Bool)

(assert (=> b!247227 (=> (not res!121208) (not e!160382))))

(assert (=> b!247227 (= res!121208 (bvslt #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247228 () Bool)

(assert (=> b!247228 (= e!160382 (validKeyInArray!0 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!247229 () Bool)

(assert (=> b!247229 (= e!160386 e!160388)))

(declare-fun res!121209 () Bool)

(assert (=> b!247229 (=> (not res!121209) (not e!160388))))

(assert (=> b!247229 (= res!121209 (contains!1786 lt!123894 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!247229 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun bm!23147 () Bool)

(assert (=> bm!23147 (= call!23146 (contains!1786 lt!123894 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247230 () Bool)

(declare-fun lt!123881 () Unit!7628)

(assert (=> b!247230 (= e!160390 lt!123881)))

(declare-fun lt!123875 () ListLongMap!3727)

(assert (=> b!247230 (= lt!123875 (getCurrentListMapNoExtraKeys!553 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(declare-fun lt!123885 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123885 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123884 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123884 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123887 () Unit!7628)

(declare-fun addStillContains!210 (ListLongMap!3727 (_ BitVec 64) V!8235 (_ BitVec 64)) Unit!7628)

(assert (=> b!247230 (= lt!123887 (addStillContains!210 lt!123875 lt!123885 (zeroValue!4413 thiss!1504) lt!123884))))

(assert (=> b!247230 (contains!1786 (+!656 lt!123875 (tuple2!4801 lt!123885 (zeroValue!4413 thiss!1504))) lt!123884)))

(declare-fun lt!123886 () Unit!7628)

(assert (=> b!247230 (= lt!123886 lt!123887)))

(declare-fun lt!123877 () ListLongMap!3727)

(assert (=> b!247230 (= lt!123877 (getCurrentListMapNoExtraKeys!553 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(declare-fun lt!123874 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123874 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123888 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123888 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123876 () Unit!7628)

(declare-fun addApplyDifferent!210 (ListLongMap!3727 (_ BitVec 64) V!8235 (_ BitVec 64)) Unit!7628)

(assert (=> b!247230 (= lt!123876 (addApplyDifferent!210 lt!123877 lt!123874 (minValue!4413 thiss!1504) lt!123888))))

(assert (=> b!247230 (= (apply!234 (+!656 lt!123877 (tuple2!4801 lt!123874 (minValue!4413 thiss!1504))) lt!123888) (apply!234 lt!123877 lt!123888))))

(declare-fun lt!123890 () Unit!7628)

(assert (=> b!247230 (= lt!123890 lt!123876)))

(declare-fun lt!123882 () ListLongMap!3727)

(assert (=> b!247230 (= lt!123882 (getCurrentListMapNoExtraKeys!553 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(declare-fun lt!123873 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123873 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123879 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123879 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123889 () Unit!7628)

(assert (=> b!247230 (= lt!123889 (addApplyDifferent!210 lt!123882 lt!123873 (zeroValue!4413 thiss!1504) lt!123879))))

(assert (=> b!247230 (= (apply!234 (+!656 lt!123882 (tuple2!4801 lt!123873 (zeroValue!4413 thiss!1504))) lt!123879) (apply!234 lt!123882 lt!123879))))

(declare-fun lt!123891 () Unit!7628)

(assert (=> b!247230 (= lt!123891 lt!123889)))

(declare-fun lt!123880 () ListLongMap!3727)

(assert (=> b!247230 (= lt!123880 (getCurrentListMapNoExtraKeys!553 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(declare-fun lt!123893 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123893 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123892 () (_ BitVec 64))

(assert (=> b!247230 (= lt!123892 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!247230 (= lt!123881 (addApplyDifferent!210 lt!123880 lt!123893 (minValue!4413 thiss!1504) lt!123892))))

(assert (=> b!247230 (= (apply!234 (+!656 lt!123880 (tuple2!4801 lt!123893 (minValue!4413 thiss!1504))) lt!123892) (apply!234 lt!123880 lt!123892))))

(assert (= (and d!60371 c!41367) b!247210))

(assert (= (and d!60371 (not c!41367)) b!247224))

(assert (= (and b!247224 c!41364) b!247215))

(assert (= (and b!247224 (not c!41364)) b!247226))

(assert (= (and b!247226 c!41369) b!247218))

(assert (= (and b!247226 (not c!41369)) b!247213))

(assert (= (or b!247218 b!247213) bm!23143))

(assert (= (or b!247215 bm!23143) bm!23145))

(assert (= (or b!247215 b!247218) bm!23142))

(assert (= (or b!247210 bm!23145) bm!23141))

(assert (= (or b!247210 bm!23142) bm!23144))

(assert (= (and d!60371 res!121204) b!247219))

(assert (= (and d!60371 c!41365) b!247230))

(assert (= (and d!60371 (not c!41365)) b!247214))

(assert (= (and d!60371 res!121203) b!247227))

(assert (= (and b!247227 res!121208) b!247228))

(assert (= (and b!247227 (not res!121206)) b!247229))

(assert (= (and b!247229 res!121209) b!247216))

(assert (= (and b!247227 res!121207) b!247220))

(assert (= (and b!247220 c!41366) b!247223))

(assert (= (and b!247220 (not c!41366)) b!247222))

(assert (= (and b!247223 res!121202) b!247225))

(assert (= (or b!247223 b!247222) bm!23146))

(assert (= (and b!247220 res!121210) b!247221))

(assert (= (and b!247221 c!41368) b!247212))

(assert (= (and b!247221 (not c!41368)) b!247211))

(assert (= (and b!247212 res!121205) b!247217))

(assert (= (or b!247212 b!247211) bm!23147))

(declare-fun b_lambda!8077 () Bool)

(assert (=> (not b_lambda!8077) (not b!247216)))

(declare-fun t!8739 () Bool)

(declare-fun tb!2989 () Bool)

(assert (=> (and b!247063 (= (defaultEntry!4572 thiss!1504) (defaultEntry!4572 thiss!1504)) t!8739) tb!2989))

(declare-fun result!5273 () Bool)

(assert (=> tb!2989 (= result!5273 tp_is_empty!6441)))

(assert (=> b!247216 t!8739))

(declare-fun b_and!13601 () Bool)

(assert (= b_and!13597 (and (=> t!8739 result!5273) b_and!13601)))

(assert (=> b!247219 m!264341))

(assert (=> b!247219 m!264341))

(declare-fun m!264365 () Bool)

(assert (=> b!247219 m!264365))

(assert (=> d!60371 m!264269))

(assert (=> b!247216 m!264341))

(declare-fun m!264367 () Bool)

(assert (=> b!247216 m!264367))

(declare-fun m!264369 () Bool)

(assert (=> b!247216 m!264369))

(declare-fun m!264371 () Bool)

(assert (=> b!247216 m!264371))

(declare-fun m!264373 () Bool)

(assert (=> b!247216 m!264373))

(assert (=> b!247216 m!264341))

(assert (=> b!247216 m!264369))

(assert (=> b!247216 m!264371))

(declare-fun m!264375 () Bool)

(assert (=> b!247217 m!264375))

(declare-fun m!264377 () Bool)

(assert (=> b!247210 m!264377))

(declare-fun m!264379 () Bool)

(assert (=> bm!23141 m!264379))

(declare-fun m!264381 () Bool)

(assert (=> b!247230 m!264381))

(declare-fun m!264383 () Bool)

(assert (=> b!247230 m!264383))

(declare-fun m!264385 () Bool)

(assert (=> b!247230 m!264385))

(declare-fun m!264387 () Bool)

(assert (=> b!247230 m!264387))

(declare-fun m!264389 () Bool)

(assert (=> b!247230 m!264389))

(assert (=> b!247230 m!264381))

(declare-fun m!264391 () Bool)

(assert (=> b!247230 m!264391))

(assert (=> b!247230 m!264341))

(declare-fun m!264393 () Bool)

(assert (=> b!247230 m!264393))

(declare-fun m!264395 () Bool)

(assert (=> b!247230 m!264395))

(declare-fun m!264397 () Bool)

(assert (=> b!247230 m!264397))

(declare-fun m!264399 () Bool)

(assert (=> b!247230 m!264399))

(declare-fun m!264401 () Bool)

(assert (=> b!247230 m!264401))

(declare-fun m!264403 () Bool)

(assert (=> b!247230 m!264403))

(declare-fun m!264405 () Bool)

(assert (=> b!247230 m!264405))

(declare-fun m!264407 () Bool)

(assert (=> b!247230 m!264407))

(assert (=> b!247230 m!264379))

(assert (=> b!247230 m!264395))

(assert (=> b!247230 m!264405))

(declare-fun m!264409 () Bool)

(assert (=> b!247230 m!264409))

(assert (=> b!247230 m!264383))

(declare-fun m!264411 () Bool)

(assert (=> bm!23146 m!264411))

(assert (=> b!247228 m!264341))

(assert (=> b!247228 m!264341))

(assert (=> b!247228 m!264365))

(assert (=> b!247229 m!264341))

(assert (=> b!247229 m!264341))

(declare-fun m!264413 () Bool)

(assert (=> b!247229 m!264413))

(declare-fun m!264415 () Bool)

(assert (=> bm!23144 m!264415))

(declare-fun m!264417 () Bool)

(assert (=> b!247225 m!264417))

(declare-fun m!264419 () Bool)

(assert (=> bm!23147 m!264419))

(assert (=> b!247057 d!60371))

(declare-fun d!60373 () Bool)

(assert (=> d!60373 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!247070 d!60373))

(declare-fun b!247241 () Bool)

(declare-fun e!160398 () (_ BitVec 32))

(declare-fun call!23153 () (_ BitVec 32))

(assert (=> b!247241 (= e!160398 (bvadd #b00000000000000000000000000000001 call!23153))))

(declare-fun d!60375 () Bool)

(declare-fun lt!123897 () (_ BitVec 32))

(assert (=> d!60375 (and (bvsge lt!123897 #b00000000000000000000000000000000) (bvsle lt!123897 (bvsub (size!6125 lt!123783) #b00000000000000000000000000000000)))))

(declare-fun e!160397 () (_ BitVec 32))

(assert (=> d!60375 (= lt!123897 e!160397)))

(declare-fun c!41374 () Bool)

(assert (=> d!60375 (= c!41374 (bvsge #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(assert (=> d!60375 (and (bvsle #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6125 (_keys!6693 thiss!1504)) (size!6125 lt!123783)))))

(assert (=> d!60375 (= (arrayCountValidKeys!0 lt!123783 #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) lt!123897)))

(declare-fun b!247242 () Bool)

(assert (=> b!247242 (= e!160397 #b00000000000000000000000000000000)))

(declare-fun b!247243 () Bool)

(assert (=> b!247243 (= e!160398 call!23153)))

(declare-fun bm!23150 () Bool)

(assert (=> bm!23150 (= call!23153 (arrayCountValidKeys!0 lt!123783 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247244 () Bool)

(assert (=> b!247244 (= e!160397 e!160398)))

(declare-fun c!41375 () Bool)

(assert (=> b!247244 (= c!41375 (validKeyInArray!0 (select (arr!5782 lt!123783) #b00000000000000000000000000000000)))))

(assert (= (and d!60375 c!41374) b!247242))

(assert (= (and d!60375 (not c!41374)) b!247244))

(assert (= (and b!247244 c!41375) b!247241))

(assert (= (and b!247244 (not c!41375)) b!247243))

(assert (= (or b!247241 b!247243) bm!23150))

(declare-fun m!264421 () Bool)

(assert (=> bm!23150 m!264421))

(declare-fun m!264423 () Bool)

(assert (=> b!247244 m!264423))

(assert (=> b!247244 m!264423))

(declare-fun m!264425 () Bool)

(assert (=> b!247244 m!264425))

(assert (=> b!247051 d!60375))

(declare-fun d!60377 () Bool)

(declare-fun e!160404 () Bool)

(assert (=> d!60377 e!160404))

(declare-fun res!121220 () Bool)

(assert (=> d!60377 (=> (not res!121220) (not e!160404))))

(assert (=> d!60377 (= res!121220 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6125 (_keys!6693 thiss!1504)))))))

(declare-fun lt!123900 () Unit!7628)

(declare-fun choose!1 (array!12188 (_ BitVec 32) (_ BitVec 64)) Unit!7628)

(assert (=> d!60377 (= lt!123900 (choose!1 (_keys!6693 thiss!1504) index!297 key!932))))

(declare-fun e!160403 () Bool)

(assert (=> d!60377 e!160403))

(declare-fun res!121219 () Bool)

(assert (=> d!60377 (=> (not res!121219) (not e!160403))))

(assert (=> d!60377 (= res!121219 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6125 (_keys!6693 thiss!1504)))))))

(assert (=> d!60377 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6693 thiss!1504) index!297 key!932) lt!123900)))

(declare-fun b!247255 () Bool)

(assert (=> b!247255 (= e!160403 (bvslt (size!6125 (_keys!6693 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!247253 () Bool)

(declare-fun res!121221 () Bool)

(assert (=> b!247253 (=> (not res!121221) (not e!160403))))

(assert (=> b!247253 (= res!121221 (not (validKeyInArray!0 (select (arr!5782 (_keys!6693 thiss!1504)) index!297))))))

(declare-fun b!247256 () Bool)

(assert (=> b!247256 (= e!160404 (= (arrayCountValidKeys!0 (array!12189 (store (arr!5782 (_keys!6693 thiss!1504)) index!297 key!932) (size!6125 (_keys!6693 thiss!1504))) #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6693 thiss!1504) #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!247254 () Bool)

(declare-fun res!121222 () Bool)

(assert (=> b!247254 (=> (not res!121222) (not e!160403))))

(assert (=> b!247254 (= res!121222 (validKeyInArray!0 key!932))))

(assert (= (and d!60377 res!121219) b!247253))

(assert (= (and b!247253 res!121221) b!247254))

(assert (= (and b!247254 res!121222) b!247255))

(assert (= (and d!60377 res!121220) b!247256))

(declare-fun m!264427 () Bool)

(assert (=> d!60377 m!264427))

(declare-fun m!264429 () Bool)

(assert (=> b!247253 m!264429))

(assert (=> b!247253 m!264429))

(declare-fun m!264431 () Bool)

(assert (=> b!247253 m!264431))

(assert (=> b!247256 m!264279))

(declare-fun m!264433 () Bool)

(assert (=> b!247256 m!264433))

(assert (=> b!247256 m!264281))

(assert (=> b!247254 m!264287))

(assert (=> b!247051 d!60377))

(assert (=> b!247051 d!60355))

(declare-fun b!247257 () Bool)

(declare-fun e!160406 () (_ BitVec 32))

(declare-fun call!23154 () (_ BitVec 32))

(assert (=> b!247257 (= e!160406 (bvadd #b00000000000000000000000000000001 call!23154))))

(declare-fun d!60379 () Bool)

(declare-fun lt!123901 () (_ BitVec 32))

(assert (=> d!60379 (and (bvsge lt!123901 #b00000000000000000000000000000000) (bvsle lt!123901 (bvsub (size!6125 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!160405 () (_ BitVec 32))

(assert (=> d!60379 (= lt!123901 e!160405)))

(declare-fun c!41376 () Bool)

(assert (=> d!60379 (= c!41376 (bvsge #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))))))

(assert (=> d!60379 (and (bvsle #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6125 (_keys!6693 thiss!1504)) (size!6125 (_keys!6693 thiss!1504))))))

(assert (=> d!60379 (= (arrayCountValidKeys!0 (_keys!6693 thiss!1504) #b00000000000000000000000000000000 (size!6125 (_keys!6693 thiss!1504))) lt!123901)))

(declare-fun b!247258 () Bool)

(assert (=> b!247258 (= e!160405 #b00000000000000000000000000000000)))

(declare-fun b!247259 () Bool)

(assert (=> b!247259 (= e!160406 call!23154)))

(declare-fun bm!23151 () Bool)

(assert (=> bm!23151 (= call!23154 (arrayCountValidKeys!0 (_keys!6693 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247260 () Bool)

(assert (=> b!247260 (= e!160405 e!160406)))

(declare-fun c!41377 () Bool)

(assert (=> b!247260 (= c!41377 (validKeyInArray!0 (select (arr!5782 (_keys!6693 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!60379 c!41376) b!247258))

(assert (= (and d!60379 (not c!41376)) b!247260))

(assert (= (and b!247260 c!41377) b!247257))

(assert (= (and b!247260 (not c!41377)) b!247259))

(assert (= (or b!247257 b!247259) bm!23151))

(declare-fun m!264435 () Bool)

(assert (=> bm!23151 m!264435))

(assert (=> b!247260 m!264341))

(assert (=> b!247260 m!264341))

(assert (=> b!247260 m!264365))

(assert (=> b!247051 d!60379))

(declare-fun d!60381 () Bool)

(assert (=> d!60381 (= (validMask!0 (mask!10705 thiss!1504)) (and (or (= (mask!10705 thiss!1504) #b00000000000000000000000000000111) (= (mask!10705 thiss!1504) #b00000000000000000000000000001111) (= (mask!10705 thiss!1504) #b00000000000000000000000000011111) (= (mask!10705 thiss!1504) #b00000000000000000000000000111111) (= (mask!10705 thiss!1504) #b00000000000000000000000001111111) (= (mask!10705 thiss!1504) #b00000000000000000000000011111111) (= (mask!10705 thiss!1504) #b00000000000000000000000111111111) (= (mask!10705 thiss!1504) #b00000000000000000000001111111111) (= (mask!10705 thiss!1504) #b00000000000000000000011111111111) (= (mask!10705 thiss!1504) #b00000000000000000000111111111111) (= (mask!10705 thiss!1504) #b00000000000000000001111111111111) (= (mask!10705 thiss!1504) #b00000000000000000011111111111111) (= (mask!10705 thiss!1504) #b00000000000000000111111111111111) (= (mask!10705 thiss!1504) #b00000000000000001111111111111111) (= (mask!10705 thiss!1504) #b00000000000000011111111111111111) (= (mask!10705 thiss!1504) #b00000000000000111111111111111111) (= (mask!10705 thiss!1504) #b00000000000001111111111111111111) (= (mask!10705 thiss!1504) #b00000000000011111111111111111111) (= (mask!10705 thiss!1504) #b00000000000111111111111111111111) (= (mask!10705 thiss!1504) #b00000000001111111111111111111111) (= (mask!10705 thiss!1504) #b00000000011111111111111111111111) (= (mask!10705 thiss!1504) #b00000000111111111111111111111111) (= (mask!10705 thiss!1504) #b00000001111111111111111111111111) (= (mask!10705 thiss!1504) #b00000011111111111111111111111111) (= (mask!10705 thiss!1504) #b00000111111111111111111111111111) (= (mask!10705 thiss!1504) #b00001111111111111111111111111111) (= (mask!10705 thiss!1504) #b00011111111111111111111111111111) (= (mask!10705 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10705 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!247051 d!60381))

(declare-fun b!247271 () Bool)

(declare-fun e!160417 () Bool)

(declare-fun contains!1788 (List!3705 (_ BitVec 64)) Bool)

(assert (=> b!247271 (= e!160417 (contains!1788 Nil!3702 (select (arr!5782 lt!123783) #b00000000000000000000000000000000)))))

(declare-fun b!247272 () Bool)

(declare-fun e!160415 () Bool)

(declare-fun e!160418 () Bool)

(assert (=> b!247272 (= e!160415 e!160418)))

(declare-fun c!41380 () Bool)

(assert (=> b!247272 (= c!41380 (validKeyInArray!0 (select (arr!5782 lt!123783) #b00000000000000000000000000000000)))))

(declare-fun b!247273 () Bool)

(declare-fun e!160416 () Bool)

(assert (=> b!247273 (= e!160416 e!160415)))

(declare-fun res!121230 () Bool)

(assert (=> b!247273 (=> (not res!121230) (not e!160415))))

(assert (=> b!247273 (= res!121230 (not e!160417))))

(declare-fun res!121229 () Bool)

(assert (=> b!247273 (=> (not res!121229) (not e!160417))))

(assert (=> b!247273 (= res!121229 (validKeyInArray!0 (select (arr!5782 lt!123783) #b00000000000000000000000000000000)))))

(declare-fun b!247274 () Bool)

(declare-fun call!23157 () Bool)

(assert (=> b!247274 (= e!160418 call!23157)))

(declare-fun d!60383 () Bool)

(declare-fun res!121231 () Bool)

(assert (=> d!60383 (=> res!121231 e!160416)))

(assert (=> d!60383 (= res!121231 (bvsge #b00000000000000000000000000000000 (size!6125 lt!123783)))))

(assert (=> d!60383 (= (arrayNoDuplicates!0 lt!123783 #b00000000000000000000000000000000 Nil!3702) e!160416)))

(declare-fun bm!23154 () Bool)

(assert (=> bm!23154 (= call!23157 (arrayNoDuplicates!0 lt!123783 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41380 (Cons!3701 (select (arr!5782 lt!123783) #b00000000000000000000000000000000) Nil!3702) Nil!3702)))))

(declare-fun b!247275 () Bool)

(assert (=> b!247275 (= e!160418 call!23157)))

(assert (= (and d!60383 (not res!121231)) b!247273))

(assert (= (and b!247273 res!121229) b!247271))

(assert (= (and b!247273 res!121230) b!247272))

(assert (= (and b!247272 c!41380) b!247275))

(assert (= (and b!247272 (not c!41380)) b!247274))

(assert (= (or b!247275 b!247274) bm!23154))

(assert (=> b!247271 m!264423))

(assert (=> b!247271 m!264423))

(declare-fun m!264437 () Bool)

(assert (=> b!247271 m!264437))

(assert (=> b!247272 m!264423))

(assert (=> b!247272 m!264423))

(assert (=> b!247272 m!264425))

(assert (=> b!247273 m!264423))

(assert (=> b!247273 m!264423))

(assert (=> b!247273 m!264425))

(assert (=> bm!23154 m!264423))

(declare-fun m!264439 () Bool)

(assert (=> bm!23154 m!264439))

(assert (=> b!247051 d!60383))

(declare-fun d!60385 () Bool)

(declare-fun e!160421 () Bool)

(assert (=> d!60385 e!160421))

(declare-fun res!121234 () Bool)

(assert (=> d!60385 (=> (not res!121234) (not e!160421))))

(assert (=> d!60385 (= res!121234 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6125 (_keys!6693 thiss!1504)))))))

(declare-fun lt!123904 () Unit!7628)

(declare-fun choose!41 (array!12188 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3705) Unit!7628)

(assert (=> d!60385 (= lt!123904 (choose!41 (_keys!6693 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3702))))

(assert (=> d!60385 (bvslt (size!6125 (_keys!6693 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60385 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6693 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3702) lt!123904)))

(declare-fun b!247278 () Bool)

(assert (=> b!247278 (= e!160421 (arrayNoDuplicates!0 (array!12189 (store (arr!5782 (_keys!6693 thiss!1504)) index!297 key!932) (size!6125 (_keys!6693 thiss!1504))) #b00000000000000000000000000000000 Nil!3702))))

(assert (= (and d!60385 res!121234) b!247278))

(declare-fun m!264441 () Bool)

(assert (=> d!60385 m!264441))

(assert (=> b!247278 m!264279))

(declare-fun m!264443 () Bool)

(assert (=> b!247278 m!264443))

(assert (=> b!247051 d!60385))

(declare-fun d!60387 () Bool)

(assert (=> d!60387 (contains!1786 (getCurrentListMap!1402 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)) key!932)))

(declare-fun lt!123907 () Unit!7628)

(declare-fun choose!1170 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) (_ BitVec 32) Int) Unit!7628)

(assert (=> d!60387 (= lt!123907 (choose!1170 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)))))

(assert (=> d!60387 (validMask!0 (mask!10705 thiss!1504))))

(assert (=> d!60387 (= (lemmaArrayContainsKeyThenInListMap!183 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4572 thiss!1504)) lt!123907)))

(declare-fun bs!8922 () Bool)

(assert (= bs!8922 d!60387))

(assert (=> bs!8922 m!264261))

(assert (=> bs!8922 m!264261))

(assert (=> bs!8922 m!264263))

(declare-fun m!264445 () Bool)

(assert (=> bs!8922 m!264445))

(assert (=> bs!8922 m!264269))

(assert (=> b!247061 d!60387))

(declare-fun bm!23159 () Bool)

(declare-fun call!23162 () Bool)

(assert (=> bm!23159 (= call!23162 (arrayContainsKey!0 (_keys!6693 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247295 () Bool)

(declare-fun res!121244 () Bool)

(declare-fun e!160432 () Bool)

(assert (=> b!247295 (=> (not res!121244) (not e!160432))))

(declare-fun call!23163 () Bool)

(assert (=> b!247295 (= res!121244 call!23163)))

(declare-fun e!160431 () Bool)

(assert (=> b!247295 (= e!160431 e!160432)))

(declare-fun b!247297 () Bool)

(declare-fun e!160433 () Bool)

(declare-fun e!160430 () Bool)

(assert (=> b!247297 (= e!160433 e!160430)))

(declare-fun res!121243 () Bool)

(assert (=> b!247297 (= res!121243 call!23163)))

(assert (=> b!247297 (=> (not res!121243) (not e!160430))))

(declare-fun b!247298 () Bool)

(declare-fun res!121245 () Bool)

(assert (=> b!247298 (=> (not res!121245) (not e!160432))))

(declare-fun lt!123912 () SeekEntryResult!1108)

(assert (=> b!247298 (= res!121245 (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6605 lt!123912)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247298 (and (bvsge (index!6605 lt!123912) #b00000000000000000000000000000000) (bvslt (index!6605 lt!123912) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun b!247299 () Bool)

(assert (=> b!247299 (and (bvsge (index!6602 lt!123912) #b00000000000000000000000000000000) (bvslt (index!6602 lt!123912) (size!6125 (_keys!6693 thiss!1504))))))

(declare-fun res!121246 () Bool)

(assert (=> b!247299 (= res!121246 (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6602 lt!123912)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247299 (=> (not res!121246) (not e!160430))))

(declare-fun b!247300 () Bool)

(assert (=> b!247300 (= e!160431 ((_ is Undefined!1108) lt!123912))))

(declare-fun b!247301 () Bool)

(assert (=> b!247301 (= e!160432 (not call!23162))))

(declare-fun d!60389 () Bool)

(assert (=> d!60389 e!160433))

(declare-fun c!41385 () Bool)

(assert (=> d!60389 (= c!41385 ((_ is MissingZero!1108) lt!123912))))

(assert (=> d!60389 (= lt!123912 (seekEntryOrOpen!0 key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(declare-fun lt!123913 () Unit!7628)

(declare-fun choose!1171 (array!12188 array!12186 (_ BitVec 32) (_ BitVec 32) V!8235 V!8235 (_ BitVec 64) Int) Unit!7628)

(assert (=> d!60389 (= lt!123913 (choose!1171 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)))))

(assert (=> d!60389 (validMask!0 (mask!10705 thiss!1504))))

(assert (=> d!60389 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!382 (_keys!6693 thiss!1504) (_values!4555 thiss!1504) (mask!10705 thiss!1504) (extraKeys!4309 thiss!1504) (zeroValue!4413 thiss!1504) (minValue!4413 thiss!1504) key!932 (defaultEntry!4572 thiss!1504)) lt!123913)))

(declare-fun b!247296 () Bool)

(assert (=> b!247296 (= e!160433 e!160431)))

(declare-fun c!41386 () Bool)

(assert (=> b!247296 (= c!41386 ((_ is MissingVacant!1108) lt!123912))))

(declare-fun bm!23160 () Bool)

(assert (=> bm!23160 (= call!23163 (inRange!0 (ite c!41385 (index!6602 lt!123912) (index!6605 lt!123912)) (mask!10705 thiss!1504)))))

(declare-fun b!247302 () Bool)

(assert (=> b!247302 (= e!160430 (not call!23162))))

(assert (= (and d!60389 c!41385) b!247297))

(assert (= (and d!60389 (not c!41385)) b!247296))

(assert (= (and b!247297 res!121243) b!247299))

(assert (= (and b!247299 res!121246) b!247302))

(assert (= (and b!247296 c!41386) b!247295))

(assert (= (and b!247296 (not c!41386)) b!247300))

(assert (= (and b!247295 res!121244) b!247298))

(assert (= (and b!247298 res!121245) b!247301))

(assert (= (or b!247297 b!247295) bm!23160))

(assert (= (or b!247302 b!247301) bm!23159))

(declare-fun m!264447 () Bool)

(assert (=> bm!23160 m!264447))

(declare-fun m!264449 () Bool)

(assert (=> b!247299 m!264449))

(assert (=> d!60389 m!264285))

(declare-fun m!264451 () Bool)

(assert (=> d!60389 m!264451))

(assert (=> d!60389 m!264269))

(declare-fun m!264453 () Bool)

(assert (=> b!247298 m!264453))

(assert (=> bm!23159 m!264271))

(assert (=> b!247064 d!60389))

(declare-fun b!247315 () Bool)

(declare-fun e!160440 () SeekEntryResult!1108)

(declare-fun lt!123922 () SeekEntryResult!1108)

(assert (=> b!247315 (= e!160440 (Found!1108 (index!6604 lt!123922)))))

(declare-fun b!247316 () Bool)

(declare-fun e!160441 () SeekEntryResult!1108)

(assert (=> b!247316 (= e!160441 (MissingZero!1108 (index!6604 lt!123922)))))

(declare-fun b!247317 () Bool)

(declare-fun e!160442 () SeekEntryResult!1108)

(assert (=> b!247317 (= e!160442 Undefined!1108)))

(declare-fun b!247318 () Bool)

(assert (=> b!247318 (= e!160442 e!160440)))

(declare-fun lt!123921 () (_ BitVec 64))

(assert (=> b!247318 (= lt!123921 (select (arr!5782 (_keys!6693 thiss!1504)) (index!6604 lt!123922)))))

(declare-fun c!41395 () Bool)

(assert (=> b!247318 (= c!41395 (= lt!123921 key!932))))

(declare-fun b!247319 () Bool)

(declare-fun c!41394 () Bool)

(assert (=> b!247319 (= c!41394 (= lt!123921 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247319 (= e!160440 e!160441)))

(declare-fun d!60391 () Bool)

(declare-fun lt!123920 () SeekEntryResult!1108)

(assert (=> d!60391 (and (or ((_ is Undefined!1108) lt!123920) (not ((_ is Found!1108) lt!123920)) (and (bvsge (index!6603 lt!123920) #b00000000000000000000000000000000) (bvslt (index!6603 lt!123920) (size!6125 (_keys!6693 thiss!1504))))) (or ((_ is Undefined!1108) lt!123920) ((_ is Found!1108) lt!123920) (not ((_ is MissingZero!1108) lt!123920)) (and (bvsge (index!6602 lt!123920) #b00000000000000000000000000000000) (bvslt (index!6602 lt!123920) (size!6125 (_keys!6693 thiss!1504))))) (or ((_ is Undefined!1108) lt!123920) ((_ is Found!1108) lt!123920) ((_ is MissingZero!1108) lt!123920) (not ((_ is MissingVacant!1108) lt!123920)) (and (bvsge (index!6605 lt!123920) #b00000000000000000000000000000000) (bvslt (index!6605 lt!123920) (size!6125 (_keys!6693 thiss!1504))))) (or ((_ is Undefined!1108) lt!123920) (ite ((_ is Found!1108) lt!123920) (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6603 lt!123920)) key!932) (ite ((_ is MissingZero!1108) lt!123920) (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6602 lt!123920)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1108) lt!123920) (= (select (arr!5782 (_keys!6693 thiss!1504)) (index!6605 lt!123920)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60391 (= lt!123920 e!160442)))

(declare-fun c!41393 () Bool)

(assert (=> d!60391 (= c!41393 (and ((_ is Intermediate!1108) lt!123922) (undefined!1920 lt!123922)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12188 (_ BitVec 32)) SeekEntryResult!1108)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60391 (= lt!123922 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10705 thiss!1504)) key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(assert (=> d!60391 (validMask!0 (mask!10705 thiss!1504))))

(assert (=> d!60391 (= (seekEntryOrOpen!0 key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)) lt!123920)))

(declare-fun b!247320 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12188 (_ BitVec 32)) SeekEntryResult!1108)

(assert (=> b!247320 (= e!160441 (seekKeyOrZeroReturnVacant!0 (x!24518 lt!123922) (index!6604 lt!123922) (index!6604 lt!123922) key!932 (_keys!6693 thiss!1504) (mask!10705 thiss!1504)))))

(assert (= (and d!60391 c!41393) b!247317))

(assert (= (and d!60391 (not c!41393)) b!247318))

(assert (= (and b!247318 c!41395) b!247315))

(assert (= (and b!247318 (not c!41395)) b!247319))

(assert (= (and b!247319 c!41394) b!247316))

(assert (= (and b!247319 (not c!41394)) b!247320))

(declare-fun m!264455 () Bool)

(assert (=> b!247318 m!264455))

(assert (=> d!60391 m!264269))

(declare-fun m!264457 () Bool)

(assert (=> d!60391 m!264457))

(assert (=> d!60391 m!264457))

(declare-fun m!264459 () Bool)

(assert (=> d!60391 m!264459))

(declare-fun m!264461 () Bool)

(assert (=> d!60391 m!264461))

(declare-fun m!264463 () Bool)

(assert (=> d!60391 m!264463))

(declare-fun m!264465 () Bool)

(assert (=> d!60391 m!264465))

(declare-fun m!264467 () Bool)

(assert (=> b!247320 m!264467))

(assert (=> b!247068 d!60391))

(declare-fun mapNonEmpty!10940 () Bool)

(declare-fun mapRes!10940 () Bool)

(declare-fun tp!22991 () Bool)

(declare-fun e!160447 () Bool)

(assert (=> mapNonEmpty!10940 (= mapRes!10940 (and tp!22991 e!160447))))

(declare-fun mapKey!10940 () (_ BitVec 32))

(declare-fun mapRest!10940 () (Array (_ BitVec 32) ValueCell!2877))

(declare-fun mapValue!10940 () ValueCell!2877)

(assert (=> mapNonEmpty!10940 (= mapRest!10934 (store mapRest!10940 mapKey!10940 mapValue!10940))))

(declare-fun b!247327 () Bool)

(assert (=> b!247327 (= e!160447 tp_is_empty!6441)))

(declare-fun condMapEmpty!10940 () Bool)

(declare-fun mapDefault!10940 () ValueCell!2877)

(assert (=> mapNonEmpty!10934 (= condMapEmpty!10940 (= mapRest!10934 ((as const (Array (_ BitVec 32) ValueCell!2877)) mapDefault!10940)))))

(declare-fun e!160448 () Bool)

(assert (=> mapNonEmpty!10934 (= tp!22981 (and e!160448 mapRes!10940))))

(declare-fun b!247328 () Bool)

(assert (=> b!247328 (= e!160448 tp_is_empty!6441)))

(declare-fun mapIsEmpty!10940 () Bool)

(assert (=> mapIsEmpty!10940 mapRes!10940))

(assert (= (and mapNonEmpty!10934 condMapEmpty!10940) mapIsEmpty!10940))

(assert (= (and mapNonEmpty!10934 (not condMapEmpty!10940)) mapNonEmpty!10940))

(assert (= (and mapNonEmpty!10940 ((_ is ValueCellFull!2877) mapValue!10940)) b!247327))

(assert (= (and mapNonEmpty!10934 ((_ is ValueCellFull!2877) mapDefault!10940)) b!247328))

(declare-fun m!264469 () Bool)

(assert (=> mapNonEmpty!10940 m!264469))

(declare-fun b_lambda!8079 () Bool)

(assert (= b_lambda!8077 (or (and b!247063 b_free!6579) b_lambda!8079)))

(check-sat (not bm!23146) (not b!247254) (not d!60365) (not b!247260) (not b!247253) (not b!247216) (not b!247244) (not b!247167) (not b!247150) (not d!60377) (not bm!23147) (not b!247272) (not d!60371) (not b!247271) b_and!13601 (not b!247230) (not bm!23141) (not bm!23154) (not b!247217) (not d!60385) (not b_next!6579) (not d!60359) (not b!247273) (not d!60369) (not bm!23144) (not b!247151) (not b!247157) (not b!247225) (not mapNonEmpty!10940) (not d!60391) (not b!247229) (not b!247228) (not b!247320) (not b!247278) (not b_lambda!8079) (not bm!23151) (not b!247256) (not b!247210) (not bm!23160) (not bm!23159) (not b!247152) (not b!247143) (not b!247219) (not d!60389) (not d!60387) tp_is_empty!6441 (not bm!23150) (not b!247165))
(check-sat b_and!13601 (not b_next!6579))
