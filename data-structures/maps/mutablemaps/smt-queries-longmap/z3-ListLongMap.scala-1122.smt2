; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22992 () Bool)

(assert start!22992)

(declare-fun b!240924 () Bool)

(declare-fun b_free!6483 () Bool)

(declare-fun b_next!6483 () Bool)

(assert (=> b!240924 (= b_free!6483 (not b_next!6483))))

(declare-fun tp!22652 () Bool)

(declare-fun b_and!13467 () Bool)

(assert (=> b!240924 (= tp!22652 b_and!13467)))

(declare-fun res!118147 () Bool)

(declare-fun e!156371 () Bool)

(assert (=> start!22992 (=> (not res!118147) (not e!156371))))

(declare-datatypes ((V!8107 0))(
  ( (V!8108 (val!3217 Int)) )
))
(declare-datatypes ((ValueCell!2829 0))(
  ( (ValueCellFull!2829 (v!5251 V!8107)) (EmptyCell!2829) )
))
(declare-datatypes ((array!11968 0))(
  ( (array!11969 (arr!5685 (Array (_ BitVec 32) ValueCell!2829)) (size!6026 (_ BitVec 32))) )
))
(declare-datatypes ((array!11970 0))(
  ( (array!11971 (arr!5686 (Array (_ BitVec 32) (_ BitVec 64))) (size!6027 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3558 0))(
  ( (LongMapFixedSize!3559 (defaultEntry!4464 Int) (mask!10526 (_ BitVec 32)) (extraKeys!4201 (_ BitVec 32)) (zeroValue!4305 V!8107) (minValue!4305 V!8107) (_size!1828 (_ BitVec 32)) (_keys!6566 array!11970) (_values!4447 array!11968) (_vacant!1828 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3558)

(declare-fun valid!1390 (LongMapFixedSize!3558) Bool)

(assert (=> start!22992 (= res!118147 (valid!1390 thiss!1504))))

(assert (=> start!22992 e!156371))

(declare-fun e!156370 () Bool)

(assert (=> start!22992 e!156370))

(assert (=> start!22992 true))

(declare-fun b!240915 () Bool)

(declare-datatypes ((Unit!7414 0))(
  ( (Unit!7415) )
))
(declare-fun e!156374 () Unit!7414)

(declare-fun Unit!7416 () Unit!7414)

(assert (=> b!240915 (= e!156374 Unit!7416)))

(declare-fun lt!121136 () Unit!7414)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!151 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) (_ BitVec 32) Int) Unit!7414)

(assert (=> b!240915 (= lt!121136 (lemmaArrayContainsKeyThenInListMap!151 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(assert (=> b!240915 false))

(declare-fun b!240916 () Bool)

(declare-fun e!156375 () Bool)

(declare-fun tp_is_empty!6345 () Bool)

(assert (=> b!240916 (= e!156375 tp_is_empty!6345)))

(declare-fun call!22407 () Bool)

(declare-datatypes ((SeekEntryResult!1063 0))(
  ( (MissingZero!1063 (index!6422 (_ BitVec 32))) (Found!1063 (index!6423 (_ BitVec 32))) (Intermediate!1063 (undefined!1875 Bool) (index!6424 (_ BitVec 32)) (x!24199 (_ BitVec 32))) (Undefined!1063) (MissingVacant!1063 (index!6425 (_ BitVec 32))) )
))
(declare-fun lt!121138 () SeekEntryResult!1063)

(declare-fun bm!22404 () Bool)

(declare-fun c!40111 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22404 (= call!22407 (inRange!0 (ite c!40111 (index!6422 lt!121138) (index!6425 lt!121138)) (mask!10526 thiss!1504)))))

(declare-fun b!240917 () Bool)

(declare-fun res!118144 () Bool)

(declare-fun e!156379 () Bool)

(assert (=> b!240917 (=> (not res!118144) (not e!156379))))

(assert (=> b!240917 (= res!118144 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6422 lt!121138)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240918 () Bool)

(declare-fun e!156380 () Bool)

(assert (=> b!240918 (= e!156371 e!156380)))

(declare-fun res!118146 () Bool)

(assert (=> b!240918 (=> (not res!118146) (not e!156380))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!240918 (= res!118146 (or (= lt!121138 (MissingZero!1063 index!297)) (= lt!121138 (MissingVacant!1063 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11970 (_ BitVec 32)) SeekEntryResult!1063)

(assert (=> b!240918 (= lt!121138 (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun b!240919 () Bool)

(declare-fun res!118148 () Bool)

(assert (=> b!240919 (=> (not res!118148) (not e!156371))))

(assert (=> b!240919 (= res!118148 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240920 () Bool)

(declare-fun e!156377 () Bool)

(declare-fun e!156376 () Bool)

(assert (=> b!240920 (= e!156377 e!156376)))

(declare-fun res!118142 () Bool)

(assert (=> b!240920 (= res!118142 call!22407)))

(assert (=> b!240920 (=> (not res!118142) (not e!156376))))

(declare-fun b!240921 () Bool)

(declare-fun res!118143 () Bool)

(assert (=> b!240921 (= res!118143 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6425 lt!121138)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!240921 (=> (not res!118143) (not e!156376))))

(declare-fun b!240922 () Bool)

(declare-fun res!118141 () Bool)

(assert (=> b!240922 (=> (not res!118141) (not e!156379))))

(assert (=> b!240922 (= res!118141 call!22407)))

(declare-fun e!156382 () Bool)

(assert (=> b!240922 (= e!156382 e!156379)))

(declare-fun b!240923 () Bool)

(declare-fun Unit!7417 () Unit!7414)

(assert (=> b!240923 (= e!156374 Unit!7417)))

(declare-fun e!156378 () Bool)

(declare-fun array_inv!3753 (array!11970) Bool)

(declare-fun array_inv!3754 (array!11968) Bool)

(assert (=> b!240924 (= e!156370 (and tp!22652 tp_is_empty!6345 (array_inv!3753 (_keys!6566 thiss!1504)) (array_inv!3754 (_values!4447 thiss!1504)) e!156378))))

(declare-fun b!240925 () Bool)

(declare-fun e!156373 () Unit!7414)

(declare-fun Unit!7418 () Unit!7414)

(assert (=> b!240925 (= e!156373 Unit!7418)))

(declare-fun lt!121134 () Unit!7414)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!346 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) Int) Unit!7414)

(assert (=> b!240925 (= lt!121134 (lemmaInListMapThenSeekEntryOrOpenFindsIt!346 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)))))

(assert (=> b!240925 false))

(declare-fun b!240926 () Bool)

(declare-fun call!22408 () Bool)

(assert (=> b!240926 (= e!156376 (not call!22408))))

(declare-fun b!240927 () Bool)

(get-info :version)

(assert (=> b!240927 (= e!156377 ((_ is Undefined!1063) lt!121138))))

(declare-fun b!240928 () Bool)

(declare-fun e!156372 () Bool)

(assert (=> b!240928 (= e!156372 tp_is_empty!6345)))

(declare-fun b!240929 () Bool)

(declare-fun lt!121133 () Unit!7414)

(assert (=> b!240929 (= e!156373 lt!121133)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!354 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) Int) Unit!7414)

(assert (=> b!240929 (= lt!121133 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!354 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)))))

(assert (=> b!240929 (= c!40111 ((_ is MissingZero!1063) lt!121138))))

(assert (=> b!240929 e!156382))

(declare-fun b!240930 () Bool)

(declare-fun mapRes!10749 () Bool)

(assert (=> b!240930 (= e!156378 (and e!156375 mapRes!10749))))

(declare-fun condMapEmpty!10749 () Bool)

(declare-fun mapDefault!10749 () ValueCell!2829)

(assert (=> b!240930 (= condMapEmpty!10749 (= (arr!5685 (_values!4447 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2829)) mapDefault!10749)))))

(declare-fun mapNonEmpty!10749 () Bool)

(declare-fun tp!22653 () Bool)

(assert (=> mapNonEmpty!10749 (= mapRes!10749 (and tp!22653 e!156372))))

(declare-fun mapRest!10749 () (Array (_ BitVec 32) ValueCell!2829))

(declare-fun mapValue!10749 () ValueCell!2829)

(declare-fun mapKey!10749 () (_ BitVec 32))

(assert (=> mapNonEmpty!10749 (= (arr!5685 (_values!4447 thiss!1504)) (store mapRest!10749 mapKey!10749 mapValue!10749))))

(declare-fun b!240931 () Bool)

(declare-fun c!40113 () Bool)

(assert (=> b!240931 (= c!40113 ((_ is MissingVacant!1063) lt!121138))))

(assert (=> b!240931 (= e!156382 e!156377)))

(declare-fun b!240932 () Bool)

(declare-fun e!156381 () Bool)

(assert (=> b!240932 (= e!156381 (bvsge (size!6027 (_keys!6566 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun lt!121137 () Unit!7414)

(assert (=> b!240932 (= lt!121137 e!156374)))

(declare-fun c!40114 () Bool)

(declare-fun arrayContainsKey!0 (array!11970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240932 (= c!40114 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240933 () Bool)

(assert (=> b!240933 (= e!156380 e!156381)))

(declare-fun res!118145 () Bool)

(assert (=> b!240933 (=> (not res!118145) (not e!156381))))

(assert (=> b!240933 (= res!118145 (inRange!0 index!297 (mask!10526 thiss!1504)))))

(declare-fun lt!121135 () Unit!7414)

(assert (=> b!240933 (= lt!121135 e!156373)))

(declare-fun c!40112 () Bool)

(declare-datatypes ((tuple2!4734 0))(
  ( (tuple2!4735 (_1!2377 (_ BitVec 64)) (_2!2377 V!8107)) )
))
(declare-datatypes ((List!3640 0))(
  ( (Nil!3637) (Cons!3636 (h!4292 tuple2!4734) (t!8643 List!3640)) )
))
(declare-datatypes ((ListLongMap!3661 0))(
  ( (ListLongMap!3662 (toList!1846 List!3640)) )
))
(declare-fun contains!1728 (ListLongMap!3661 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1369 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 32) Int) ListLongMap!3661)

(assert (=> b!240933 (= c!40112 (contains!1728 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) key!932))))

(declare-fun bm!22405 () Bool)

(assert (=> bm!22405 (= call!22408 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10749 () Bool)

(assert (=> mapIsEmpty!10749 mapRes!10749))

(declare-fun b!240934 () Bool)

(assert (=> b!240934 (= e!156379 (not call!22408))))

(assert (= (and start!22992 res!118147) b!240919))

(assert (= (and b!240919 res!118148) b!240918))

(assert (= (and b!240918 res!118146) b!240933))

(assert (= (and b!240933 c!40112) b!240925))

(assert (= (and b!240933 (not c!40112)) b!240929))

(assert (= (and b!240929 c!40111) b!240922))

(assert (= (and b!240929 (not c!40111)) b!240931))

(assert (= (and b!240922 res!118141) b!240917))

(assert (= (and b!240917 res!118144) b!240934))

(assert (= (and b!240931 c!40113) b!240920))

(assert (= (and b!240931 (not c!40113)) b!240927))

(assert (= (and b!240920 res!118142) b!240921))

(assert (= (and b!240921 res!118143) b!240926))

(assert (= (or b!240922 b!240920) bm!22404))

(assert (= (or b!240934 b!240926) bm!22405))

(assert (= (and b!240933 res!118145) b!240932))

(assert (= (and b!240932 c!40114) b!240915))

(assert (= (and b!240932 (not c!40114)) b!240923))

(assert (= (and b!240930 condMapEmpty!10749) mapIsEmpty!10749))

(assert (= (and b!240930 (not condMapEmpty!10749)) mapNonEmpty!10749))

(assert (= (and mapNonEmpty!10749 ((_ is ValueCellFull!2829) mapValue!10749)) b!240928))

(assert (= (and b!240930 ((_ is ValueCellFull!2829) mapDefault!10749)) b!240916))

(assert (= b!240924 b!240930))

(assert (= start!22992 b!240924))

(declare-fun m!260263 () Bool)

(assert (=> b!240921 m!260263))

(declare-fun m!260265 () Bool)

(assert (=> mapNonEmpty!10749 m!260265))

(declare-fun m!260267 () Bool)

(assert (=> start!22992 m!260267))

(declare-fun m!260269 () Bool)

(assert (=> bm!22404 m!260269))

(declare-fun m!260271 () Bool)

(assert (=> b!240933 m!260271))

(declare-fun m!260273 () Bool)

(assert (=> b!240933 m!260273))

(assert (=> b!240933 m!260273))

(declare-fun m!260275 () Bool)

(assert (=> b!240933 m!260275))

(declare-fun m!260277 () Bool)

(assert (=> b!240925 m!260277))

(declare-fun m!260279 () Bool)

(assert (=> b!240915 m!260279))

(declare-fun m!260281 () Bool)

(assert (=> b!240924 m!260281))

(declare-fun m!260283 () Bool)

(assert (=> b!240924 m!260283))

(declare-fun m!260285 () Bool)

(assert (=> bm!22405 m!260285))

(declare-fun m!260287 () Bool)

(assert (=> b!240917 m!260287))

(declare-fun m!260289 () Bool)

(assert (=> b!240929 m!260289))

(assert (=> b!240932 m!260285))

(declare-fun m!260291 () Bool)

(assert (=> b!240918 m!260291))

(check-sat (not b!240925) (not bm!22405) (not b!240932) (not b!240929) tp_is_empty!6345 (not b!240924) (not bm!22404) (not b!240933) (not b_next!6483) (not mapNonEmpty!10749) (not b!240918) b_and!13467 (not b!240915) (not start!22992))
(check-sat b_and!13467 (not b_next!6483))
(get-model)

(declare-fun d!59713 () Bool)

(declare-fun res!118177 () Bool)

(declare-fun e!156430 () Bool)

(assert (=> d!59713 (=> res!118177 e!156430)))

(assert (=> d!59713 (= res!118177 (= (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59713 (= (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 #b00000000000000000000000000000000) e!156430)))

(declare-fun b!240999 () Bool)

(declare-fun e!156431 () Bool)

(assert (=> b!240999 (= e!156430 e!156431)))

(declare-fun res!118178 () Bool)

(assert (=> b!240999 (=> (not res!118178) (not e!156431))))

(assert (=> b!240999 (= res!118178 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241000 () Bool)

(assert (=> b!241000 (= e!156431 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59713 (not res!118177)) b!240999))

(assert (= (and b!240999 res!118178) b!241000))

(declare-fun m!260323 () Bool)

(assert (=> d!59713 m!260323))

(declare-fun m!260325 () Bool)

(assert (=> b!241000 m!260325))

(assert (=> bm!22405 d!59713))

(declare-fun d!59715 () Bool)

(assert (=> d!59715 (= (array_inv!3753 (_keys!6566 thiss!1504)) (bvsge (size!6027 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!240924 d!59715))

(declare-fun d!59717 () Bool)

(assert (=> d!59717 (= (array_inv!3754 (_values!4447 thiss!1504)) (bvsge (size!6026 (_values!4447 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!240924 d!59717))

(declare-fun d!59719 () Bool)

(declare-fun e!156434 () Bool)

(assert (=> d!59719 e!156434))

(declare-fun res!118183 () Bool)

(assert (=> d!59719 (=> (not res!118183) (not e!156434))))

(declare-fun lt!121161 () SeekEntryResult!1063)

(assert (=> d!59719 (= res!118183 ((_ is Found!1063) lt!121161))))

(assert (=> d!59719 (= lt!121161 (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun lt!121162 () Unit!7414)

(declare-fun choose!1124 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) Int) Unit!7414)

(assert (=> d!59719 (= lt!121162 (choose!1124 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59719 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59719 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!346 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)) lt!121162)))

(declare-fun b!241005 () Bool)

(declare-fun res!118184 () Bool)

(assert (=> b!241005 (=> (not res!118184) (not e!156434))))

(assert (=> b!241005 (= res!118184 (inRange!0 (index!6423 lt!121161) (mask!10526 thiss!1504)))))

(declare-fun b!241006 () Bool)

(assert (=> b!241006 (= e!156434 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6423 lt!121161)) key!932))))

(assert (=> b!241006 (and (bvsge (index!6423 lt!121161) #b00000000000000000000000000000000) (bvslt (index!6423 lt!121161) (size!6027 (_keys!6566 thiss!1504))))))

(assert (= (and d!59719 res!118183) b!241005))

(assert (= (and b!241005 res!118184) b!241006))

(assert (=> d!59719 m!260291))

(declare-fun m!260327 () Bool)

(assert (=> d!59719 m!260327))

(declare-fun m!260329 () Bool)

(assert (=> d!59719 m!260329))

(declare-fun m!260331 () Bool)

(assert (=> b!241005 m!260331))

(declare-fun m!260333 () Bool)

(assert (=> b!241006 m!260333))

(assert (=> b!240925 d!59719))

(declare-fun d!59721 () Bool)

(assert (=> d!59721 (contains!1728 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) key!932)))

(declare-fun lt!121165 () Unit!7414)

(declare-fun choose!1125 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) (_ BitVec 32) Int) Unit!7414)

(assert (=> d!59721 (= lt!121165 (choose!1125 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(assert (=> d!59721 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59721 (= (lemmaArrayContainsKeyThenInListMap!151 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) lt!121165)))

(declare-fun bs!8835 () Bool)

(assert (= bs!8835 d!59721))

(assert (=> bs!8835 m!260273))

(assert (=> bs!8835 m!260273))

(assert (=> bs!8835 m!260275))

(declare-fun m!260335 () Bool)

(assert (=> bs!8835 m!260335))

(assert (=> bs!8835 m!260329))

(assert (=> b!240915 d!59721))

(declare-fun b!241023 () Bool)

(declare-fun res!118194 () Bool)

(declare-fun e!156446 () Bool)

(assert (=> b!241023 (=> (not res!118194) (not e!156446))))

(declare-fun call!22420 () Bool)

(assert (=> b!241023 (= res!118194 call!22420)))

(declare-fun e!156445 () Bool)

(assert (=> b!241023 (= e!156445 e!156446)))

(declare-fun b!241024 () Bool)

(declare-fun lt!121171 () SeekEntryResult!1063)

(assert (=> b!241024 (= e!156445 ((_ is Undefined!1063) lt!121171))))

(declare-fun c!40131 () Bool)

(declare-fun bm!22416 () Bool)

(assert (=> bm!22416 (= call!22420 (inRange!0 (ite c!40131 (index!6422 lt!121171) (index!6425 lt!121171)) (mask!10526 thiss!1504)))))

(declare-fun bm!22417 () Bool)

(declare-fun call!22419 () Bool)

(assert (=> bm!22417 (= call!22419 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241025 () Bool)

(declare-fun e!156443 () Bool)

(assert (=> b!241025 (= e!156443 e!156445)))

(declare-fun c!40132 () Bool)

(assert (=> b!241025 (= c!40132 ((_ is MissingVacant!1063) lt!121171))))

(declare-fun d!59723 () Bool)

(assert (=> d!59723 e!156443))

(assert (=> d!59723 (= c!40131 ((_ is MissingZero!1063) lt!121171))))

(assert (=> d!59723 (= lt!121171 (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun lt!121170 () Unit!7414)

(declare-fun choose!1126 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 64) Int) Unit!7414)

(assert (=> d!59723 (= lt!121170 (choose!1126 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)))))

(assert (=> d!59723 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59723 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!354 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)) lt!121170)))

(declare-fun b!241026 () Bool)

(assert (=> b!241026 (and (bvsge (index!6422 lt!121171) #b00000000000000000000000000000000) (bvslt (index!6422 lt!121171) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun res!118193 () Bool)

(assert (=> b!241026 (= res!118193 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6422 lt!121171)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156444 () Bool)

(assert (=> b!241026 (=> (not res!118193) (not e!156444))))

(declare-fun b!241027 () Bool)

(assert (=> b!241027 (= e!156446 (not call!22419))))

(declare-fun b!241028 () Bool)

(declare-fun res!118195 () Bool)

(assert (=> b!241028 (=> (not res!118195) (not e!156446))))

(assert (=> b!241028 (= res!118195 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6425 lt!121171)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241028 (and (bvsge (index!6425 lt!121171) #b00000000000000000000000000000000) (bvslt (index!6425 lt!121171) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241029 () Bool)

(assert (=> b!241029 (= e!156444 (not call!22419))))

(declare-fun b!241030 () Bool)

(assert (=> b!241030 (= e!156443 e!156444)))

(declare-fun res!118196 () Bool)

(assert (=> b!241030 (= res!118196 call!22420)))

(assert (=> b!241030 (=> (not res!118196) (not e!156444))))

(assert (= (and d!59723 c!40131) b!241030))

(assert (= (and d!59723 (not c!40131)) b!241025))

(assert (= (and b!241030 res!118196) b!241026))

(assert (= (and b!241026 res!118193) b!241029))

(assert (= (and b!241025 c!40132) b!241023))

(assert (= (and b!241025 (not c!40132)) b!241024))

(assert (= (and b!241023 res!118194) b!241028))

(assert (= (and b!241028 res!118195) b!241027))

(assert (= (or b!241030 b!241023) bm!22416))

(assert (= (or b!241029 b!241027) bm!22417))

(declare-fun m!260337 () Bool)

(assert (=> b!241028 m!260337))

(declare-fun m!260339 () Bool)

(assert (=> bm!22416 m!260339))

(assert (=> bm!22417 m!260285))

(assert (=> d!59723 m!260291))

(declare-fun m!260341 () Bool)

(assert (=> d!59723 m!260341))

(assert (=> d!59723 m!260329))

(declare-fun m!260343 () Bool)

(assert (=> b!241026 m!260343))

(assert (=> b!240929 d!59723))

(declare-fun d!59725 () Bool)

(declare-fun res!118203 () Bool)

(declare-fun e!156449 () Bool)

(assert (=> d!59725 (=> (not res!118203) (not e!156449))))

(declare-fun simpleValid!243 (LongMapFixedSize!3558) Bool)

(assert (=> d!59725 (= res!118203 (simpleValid!243 thiss!1504))))

(assert (=> d!59725 (= (valid!1390 thiss!1504) e!156449)))

(declare-fun b!241037 () Bool)

(declare-fun res!118204 () Bool)

(assert (=> b!241037 (=> (not res!118204) (not e!156449))))

(declare-fun arrayCountValidKeys!0 (array!11970 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!241037 (= res!118204 (= (arrayCountValidKeys!0 (_keys!6566 thiss!1504) #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))) (_size!1828 thiss!1504)))))

(declare-fun b!241038 () Bool)

(declare-fun res!118205 () Bool)

(assert (=> b!241038 (=> (not res!118205) (not e!156449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11970 (_ BitVec 32)) Bool)

(assert (=> b!241038 (= res!118205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun b!241039 () Bool)

(declare-datatypes ((List!3642 0))(
  ( (Nil!3639) (Cons!3638 (h!4294 (_ BitVec 64)) (t!8647 List!3642)) )
))
(declare-fun arrayNoDuplicates!0 (array!11970 (_ BitVec 32) List!3642) Bool)

(assert (=> b!241039 (= e!156449 (arrayNoDuplicates!0 (_keys!6566 thiss!1504) #b00000000000000000000000000000000 Nil!3639))))

(assert (= (and d!59725 res!118203) b!241037))

(assert (= (and b!241037 res!118204) b!241038))

(assert (= (and b!241038 res!118205) b!241039))

(declare-fun m!260345 () Bool)

(assert (=> d!59725 m!260345))

(declare-fun m!260347 () Bool)

(assert (=> b!241037 m!260347))

(declare-fun m!260349 () Bool)

(assert (=> b!241038 m!260349))

(declare-fun m!260351 () Bool)

(assert (=> b!241039 m!260351))

(assert (=> start!22992 d!59725))

(declare-fun b!241052 () Bool)

(declare-fun c!40141 () Bool)

(declare-fun lt!121180 () (_ BitVec 64))

(assert (=> b!241052 (= c!40141 (= lt!121180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156458 () SeekEntryResult!1063)

(declare-fun e!156457 () SeekEntryResult!1063)

(assert (=> b!241052 (= e!156458 e!156457)))

(declare-fun d!59727 () Bool)

(declare-fun lt!121178 () SeekEntryResult!1063)

(assert (=> d!59727 (and (or ((_ is Undefined!1063) lt!121178) (not ((_ is Found!1063) lt!121178)) (and (bvsge (index!6423 lt!121178) #b00000000000000000000000000000000) (bvslt (index!6423 lt!121178) (size!6027 (_keys!6566 thiss!1504))))) (or ((_ is Undefined!1063) lt!121178) ((_ is Found!1063) lt!121178) (not ((_ is MissingZero!1063) lt!121178)) (and (bvsge (index!6422 lt!121178) #b00000000000000000000000000000000) (bvslt (index!6422 lt!121178) (size!6027 (_keys!6566 thiss!1504))))) (or ((_ is Undefined!1063) lt!121178) ((_ is Found!1063) lt!121178) ((_ is MissingZero!1063) lt!121178) (not ((_ is MissingVacant!1063) lt!121178)) (and (bvsge (index!6425 lt!121178) #b00000000000000000000000000000000) (bvslt (index!6425 lt!121178) (size!6027 (_keys!6566 thiss!1504))))) (or ((_ is Undefined!1063) lt!121178) (ite ((_ is Found!1063) lt!121178) (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6423 lt!121178)) key!932) (ite ((_ is MissingZero!1063) lt!121178) (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6422 lt!121178)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1063) lt!121178) (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6425 lt!121178)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!156456 () SeekEntryResult!1063)

(assert (=> d!59727 (= lt!121178 e!156456)))

(declare-fun c!40139 () Bool)

(declare-fun lt!121179 () SeekEntryResult!1063)

(assert (=> d!59727 (= c!40139 (and ((_ is Intermediate!1063) lt!121179) (undefined!1875 lt!121179)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11970 (_ BitVec 32)) SeekEntryResult!1063)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59727 (= lt!121179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10526 thiss!1504)) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(assert (=> d!59727 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59727 (= (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)) lt!121178)))

(declare-fun b!241053 () Bool)

(assert (=> b!241053 (= e!156457 (MissingZero!1063 (index!6424 lt!121179)))))

(declare-fun b!241054 () Bool)

(assert (=> b!241054 (= e!156456 Undefined!1063)))

(declare-fun b!241055 () Bool)

(assert (=> b!241055 (= e!156456 e!156458)))

(assert (=> b!241055 (= lt!121180 (select (arr!5686 (_keys!6566 thiss!1504)) (index!6424 lt!121179)))))

(declare-fun c!40140 () Bool)

(assert (=> b!241055 (= c!40140 (= lt!121180 key!932))))

(declare-fun b!241056 () Bool)

(assert (=> b!241056 (= e!156458 (Found!1063 (index!6424 lt!121179)))))

(declare-fun b!241057 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11970 (_ BitVec 32)) SeekEntryResult!1063)

(assert (=> b!241057 (= e!156457 (seekKeyOrZeroReturnVacant!0 (x!24199 lt!121179) (index!6424 lt!121179) (index!6424 lt!121179) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(assert (= (and d!59727 c!40139) b!241054))

(assert (= (and d!59727 (not c!40139)) b!241055))

(assert (= (and b!241055 c!40140) b!241056))

(assert (= (and b!241055 (not c!40140)) b!241052))

(assert (= (and b!241052 c!40141) b!241053))

(assert (= (and b!241052 (not c!40141)) b!241057))

(declare-fun m!260353 () Bool)

(assert (=> d!59727 m!260353))

(assert (=> d!59727 m!260329))

(declare-fun m!260355 () Bool)

(assert (=> d!59727 m!260355))

(declare-fun m!260357 () Bool)

(assert (=> d!59727 m!260357))

(declare-fun m!260359 () Bool)

(assert (=> d!59727 m!260359))

(assert (=> d!59727 m!260353))

(declare-fun m!260361 () Bool)

(assert (=> d!59727 m!260361))

(declare-fun m!260363 () Bool)

(assert (=> b!241055 m!260363))

(declare-fun m!260365 () Bool)

(assert (=> b!241057 m!260365))

(assert (=> b!240918 d!59727))

(declare-fun d!59729 () Bool)

(assert (=> d!59729 (= (inRange!0 index!297 (mask!10526 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!240933 d!59729))

(declare-fun d!59731 () Bool)

(declare-fun e!156464 () Bool)

(assert (=> d!59731 e!156464))

(declare-fun res!118208 () Bool)

(assert (=> d!59731 (=> res!118208 e!156464)))

(declare-fun lt!121192 () Bool)

(assert (=> d!59731 (= res!118208 (not lt!121192))))

(declare-fun lt!121190 () Bool)

(assert (=> d!59731 (= lt!121192 lt!121190)))

(declare-fun lt!121191 () Unit!7414)

(declare-fun e!156463 () Unit!7414)

(assert (=> d!59731 (= lt!121191 e!156463)))

(declare-fun c!40144 () Bool)

(assert (=> d!59731 (= c!40144 lt!121190)))

(declare-fun containsKey!270 (List!3640 (_ BitVec 64)) Bool)

(assert (=> d!59731 (= lt!121190 (containsKey!270 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(assert (=> d!59731 (= (contains!1728 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) key!932) lt!121192)))

(declare-fun b!241064 () Bool)

(declare-fun lt!121189 () Unit!7414)

(assert (=> b!241064 (= e!156463 lt!121189)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!219 (List!3640 (_ BitVec 64)) Unit!7414)

(assert (=> b!241064 (= lt!121189 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(declare-datatypes ((Option!284 0))(
  ( (Some!283 (v!5253 V!8107)) (None!282) )
))
(declare-fun isDefined!220 (Option!284) Bool)

(declare-fun getValueByKey!278 (List!3640 (_ BitVec 64)) Option!284)

(assert (=> b!241064 (isDefined!220 (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(declare-fun b!241065 () Bool)

(declare-fun Unit!7424 () Unit!7414)

(assert (=> b!241065 (= e!156463 Unit!7424)))

(declare-fun b!241066 () Bool)

(assert (=> b!241066 (= e!156464 (isDefined!220 (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932)))))

(assert (= (and d!59731 c!40144) b!241064))

(assert (= (and d!59731 (not c!40144)) b!241065))

(assert (= (and d!59731 (not res!118208)) b!241066))

(declare-fun m!260367 () Bool)

(assert (=> d!59731 m!260367))

(declare-fun m!260369 () Bool)

(assert (=> b!241064 m!260369))

(declare-fun m!260371 () Bool)

(assert (=> b!241064 m!260371))

(assert (=> b!241064 m!260371))

(declare-fun m!260373 () Bool)

(assert (=> b!241064 m!260373))

(assert (=> b!241066 m!260371))

(assert (=> b!241066 m!260371))

(assert (=> b!241066 m!260373))

(assert (=> b!240933 d!59731))

(declare-fun b!241109 () Bool)

(declare-fun e!156497 () Bool)

(declare-fun call!22435 () Bool)

(assert (=> b!241109 (= e!156497 (not call!22435))))

(declare-fun b!241110 () Bool)

(declare-fun e!156494 () Bool)

(declare-fun lt!121252 () ListLongMap!3661)

(declare-fun apply!221 (ListLongMap!3661 (_ BitVec 64)) V!8107)

(declare-fun get!2919 (ValueCell!2829 V!8107) V!8107)

(declare-fun dynLambda!559 (Int (_ BitVec 64)) V!8107)

(assert (=> b!241110 (= e!156494 (= (apply!221 lt!121252 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)) (get!2919 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!241110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6026 (_values!4447 thiss!1504))))))

(assert (=> b!241110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun bm!22432 () Bool)

(assert (=> bm!22432 (= call!22435 (contains!1728 lt!121252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22433 () Bool)

(declare-fun call!22441 () ListLongMap!3661)

(declare-fun call!22438 () ListLongMap!3661)

(assert (=> bm!22433 (= call!22441 call!22438)))

(declare-fun b!241111 () Bool)

(declare-fun e!156493 () Bool)

(assert (=> b!241111 (= e!156493 (= (apply!221 lt!121252 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4305 thiss!1504)))))

(declare-fun d!59733 () Bool)

(declare-fun e!156501 () Bool)

(assert (=> d!59733 e!156501))

(declare-fun res!118232 () Bool)

(assert (=> d!59733 (=> (not res!118232) (not e!156501))))

(assert (=> d!59733 (= res!118232 (or (bvsge #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))))

(declare-fun lt!121237 () ListLongMap!3661)

(assert (=> d!59733 (= lt!121252 lt!121237)))

(declare-fun lt!121257 () Unit!7414)

(declare-fun e!156499 () Unit!7414)

(assert (=> d!59733 (= lt!121257 e!156499)))

(declare-fun c!40158 () Bool)

(declare-fun e!156491 () Bool)

(assert (=> d!59733 (= c!40158 e!156491)))

(declare-fun res!118234 () Bool)

(assert (=> d!59733 (=> (not res!118234) (not e!156491))))

(assert (=> d!59733 (= res!118234 (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun e!156496 () ListLongMap!3661)

(assert (=> d!59733 (= lt!121237 e!156496)))

(declare-fun c!40162 () Bool)

(assert (=> d!59733 (= c!40162 (and (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59733 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59733 (= (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) lt!121252)))

(declare-fun b!241112 () Bool)

(declare-fun +!643 (ListLongMap!3661 tuple2!4734) ListLongMap!3661)

(assert (=> b!241112 (= e!156496 (+!643 call!22438 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))

(declare-fun b!241113 () Bool)

(declare-fun e!156495 () Bool)

(assert (=> b!241113 (= e!156495 (= (apply!221 lt!121252 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4305 thiss!1504)))))

(declare-fun b!241114 () Bool)

(declare-fun e!156492 () Bool)

(declare-fun call!22439 () Bool)

(assert (=> b!241114 (= e!156492 (not call!22439))))

(declare-fun b!241115 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!241115 (= e!156491 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241116 () Bool)

(declare-fun lt!121242 () Unit!7414)

(assert (=> b!241116 (= e!156499 lt!121242)))

(declare-fun lt!121238 () ListLongMap!3661)

(declare-fun getCurrentListMapNoExtraKeys!540 (array!11970 array!11968 (_ BitVec 32) (_ BitVec 32) V!8107 V!8107 (_ BitVec 32) Int) ListLongMap!3661)

(assert (=> b!241116 (= lt!121238 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(declare-fun lt!121246 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121246 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121245 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121245 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121251 () Unit!7414)

(declare-fun addStillContains!197 (ListLongMap!3661 (_ BitVec 64) V!8107 (_ BitVec 64)) Unit!7414)

(assert (=> b!241116 (= lt!121251 (addStillContains!197 lt!121238 lt!121246 (zeroValue!4305 thiss!1504) lt!121245))))

(assert (=> b!241116 (contains!1728 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) lt!121245)))

(declare-fun lt!121253 () Unit!7414)

(assert (=> b!241116 (= lt!121253 lt!121251)))

(declare-fun lt!121244 () ListLongMap!3661)

(assert (=> b!241116 (= lt!121244 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(declare-fun lt!121254 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121254 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121256 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121256 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121249 () Unit!7414)

(declare-fun addApplyDifferent!197 (ListLongMap!3661 (_ BitVec 64) V!8107 (_ BitVec 64)) Unit!7414)

(assert (=> b!241116 (= lt!121249 (addApplyDifferent!197 lt!121244 lt!121254 (minValue!4305 thiss!1504) lt!121256))))

(assert (=> b!241116 (= (apply!221 (+!643 lt!121244 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) lt!121256) (apply!221 lt!121244 lt!121256))))

(declare-fun lt!121239 () Unit!7414)

(assert (=> b!241116 (= lt!121239 lt!121249)))

(declare-fun lt!121241 () ListLongMap!3661)

(assert (=> b!241116 (= lt!121241 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(declare-fun lt!121247 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121247 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121243 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121243 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121240 () Unit!7414)

(assert (=> b!241116 (= lt!121240 (addApplyDifferent!197 lt!121241 lt!121247 (zeroValue!4305 thiss!1504) lt!121243))))

(assert (=> b!241116 (= (apply!221 (+!643 lt!121241 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) lt!121243) (apply!221 lt!121241 lt!121243))))

(declare-fun lt!121248 () Unit!7414)

(assert (=> b!241116 (= lt!121248 lt!121240)))

(declare-fun lt!121255 () ListLongMap!3661)

(assert (=> b!241116 (= lt!121255 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(declare-fun lt!121258 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121258 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121250 () (_ BitVec 64))

(assert (=> b!241116 (= lt!121250 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241116 (= lt!121242 (addApplyDifferent!197 lt!121255 lt!121258 (minValue!4305 thiss!1504) lt!121250))))

(assert (=> b!241116 (= (apply!221 (+!643 lt!121255 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) lt!121250) (apply!221 lt!121255 lt!121250))))

(declare-fun b!241117 () Bool)

(assert (=> b!241117 (= e!156501 e!156492)))

(declare-fun c!40161 () Bool)

(assert (=> b!241117 (= c!40161 (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!241118 () Bool)

(declare-fun res!118231 () Bool)

(assert (=> b!241118 (=> (not res!118231) (not e!156501))))

(declare-fun e!156498 () Bool)

(assert (=> b!241118 (= res!118231 e!156498)))

(declare-fun res!118230 () Bool)

(assert (=> b!241118 (=> res!118230 e!156498)))

(declare-fun e!156503 () Bool)

(assert (=> b!241118 (= res!118230 (not e!156503))))

(declare-fun res!118228 () Bool)

(assert (=> b!241118 (=> (not res!118228) (not e!156503))))

(assert (=> b!241118 (= res!118228 (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241119 () Bool)

(assert (=> b!241119 (= e!156498 e!156494)))

(declare-fun res!118229 () Bool)

(assert (=> b!241119 (=> (not res!118229) (not e!156494))))

(assert (=> b!241119 (= res!118229 (contains!1728 lt!121252 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!241119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun bm!22434 () Bool)

(assert (=> bm!22434 (= call!22439 (contains!1728 lt!121252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241120 () Bool)

(declare-fun e!156500 () ListLongMap!3661)

(assert (=> b!241120 (= e!156500 call!22441)))

(declare-fun b!241121 () Bool)

(declare-fun Unit!7425 () Unit!7414)

(assert (=> b!241121 (= e!156499 Unit!7425)))

(declare-fun b!241122 () Bool)

(declare-fun e!156502 () ListLongMap!3661)

(declare-fun call!22436 () ListLongMap!3661)

(assert (=> b!241122 (= e!156502 call!22436)))

(declare-fun b!241123 () Bool)

(declare-fun c!40157 () Bool)

(assert (=> b!241123 (= c!40157 (and (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!241123 (= e!156500 e!156502)))

(declare-fun bm!22435 () Bool)

(declare-fun call!22440 () ListLongMap!3661)

(assert (=> bm!22435 (= call!22436 call!22440)))

(declare-fun c!40159 () Bool)

(declare-fun bm!22436 () Bool)

(declare-fun call!22437 () ListLongMap!3661)

(assert (=> bm!22436 (= call!22438 (+!643 (ite c!40162 call!22437 (ite c!40159 call!22440 call!22436)) (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(declare-fun b!241124 () Bool)

(assert (=> b!241124 (= e!156492 e!156493)))

(declare-fun res!118233 () Bool)

(assert (=> b!241124 (= res!118233 call!22439)))

(assert (=> b!241124 (=> (not res!118233) (not e!156493))))

(declare-fun bm!22437 () Bool)

(assert (=> bm!22437 (= call!22437 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))

(declare-fun b!241125 () Bool)

(declare-fun res!118235 () Bool)

(assert (=> b!241125 (=> (not res!118235) (not e!156501))))

(assert (=> b!241125 (= res!118235 e!156497)))

(declare-fun c!40160 () Bool)

(assert (=> b!241125 (= c!40160 (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!22438 () Bool)

(assert (=> bm!22438 (= call!22440 call!22437)))

(declare-fun b!241126 () Bool)

(assert (=> b!241126 (= e!156497 e!156495)))

(declare-fun res!118227 () Bool)

(assert (=> b!241126 (= res!118227 call!22435)))

(assert (=> b!241126 (=> (not res!118227) (not e!156495))))

(declare-fun b!241127 () Bool)

(assert (=> b!241127 (= e!156503 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241128 () Bool)

(assert (=> b!241128 (= e!156502 call!22441)))

(declare-fun b!241129 () Bool)

(assert (=> b!241129 (= e!156496 e!156500)))

(assert (=> b!241129 (= c!40159 (and (not (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4201 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!59733 c!40162) b!241112))

(assert (= (and d!59733 (not c!40162)) b!241129))

(assert (= (and b!241129 c!40159) b!241120))

(assert (= (and b!241129 (not c!40159)) b!241123))

(assert (= (and b!241123 c!40157) b!241128))

(assert (= (and b!241123 (not c!40157)) b!241122))

(assert (= (or b!241128 b!241122) bm!22435))

(assert (= (or b!241120 bm!22435) bm!22438))

(assert (= (or b!241120 b!241128) bm!22433))

(assert (= (or b!241112 bm!22438) bm!22437))

(assert (= (or b!241112 bm!22433) bm!22436))

(assert (= (and d!59733 res!118234) b!241115))

(assert (= (and d!59733 c!40158) b!241116))

(assert (= (and d!59733 (not c!40158)) b!241121))

(assert (= (and d!59733 res!118232) b!241118))

(assert (= (and b!241118 res!118228) b!241127))

(assert (= (and b!241118 (not res!118230)) b!241119))

(assert (= (and b!241119 res!118229) b!241110))

(assert (= (and b!241118 res!118231) b!241125))

(assert (= (and b!241125 c!40160) b!241126))

(assert (= (and b!241125 (not c!40160)) b!241109))

(assert (= (and b!241126 res!118227) b!241113))

(assert (= (or b!241126 b!241109) bm!22432))

(assert (= (and b!241125 res!118235) b!241117))

(assert (= (and b!241117 c!40161) b!241124))

(assert (= (and b!241117 (not c!40161)) b!241114))

(assert (= (and b!241124 res!118233) b!241111))

(assert (= (or b!241124 b!241114) bm!22434))

(declare-fun b_lambda!8009 () Bool)

(assert (=> (not b_lambda!8009) (not b!241110)))

(declare-fun t!8646 () Bool)

(declare-fun tb!2963 () Bool)

(assert (=> (and b!240924 (= (defaultEntry!4464 thiss!1504) (defaultEntry!4464 thiss!1504)) t!8646) tb!2963))

(declare-fun result!5195 () Bool)

(assert (=> tb!2963 (= result!5195 tp_is_empty!6345)))

(assert (=> b!241110 t!8646))

(declare-fun b_and!13471 () Bool)

(assert (= b_and!13467 (and (=> t!8646 result!5195) b_and!13471)))

(declare-fun m!260375 () Bool)

(assert (=> b!241116 m!260375))

(declare-fun m!260377 () Bool)

(assert (=> b!241116 m!260377))

(declare-fun m!260379 () Bool)

(assert (=> b!241116 m!260379))

(declare-fun m!260381 () Bool)

(assert (=> b!241116 m!260381))

(declare-fun m!260383 () Bool)

(assert (=> b!241116 m!260383))

(declare-fun m!260385 () Bool)

(assert (=> b!241116 m!260385))

(declare-fun m!260387 () Bool)

(assert (=> b!241116 m!260387))

(declare-fun m!260389 () Bool)

(assert (=> b!241116 m!260389))

(declare-fun m!260391 () Bool)

(assert (=> b!241116 m!260391))

(declare-fun m!260393 () Bool)

(assert (=> b!241116 m!260393))

(assert (=> b!241116 m!260383))

(declare-fun m!260395 () Bool)

(assert (=> b!241116 m!260395))

(declare-fun m!260397 () Bool)

(assert (=> b!241116 m!260397))

(assert (=> b!241116 m!260381))

(declare-fun m!260399 () Bool)

(assert (=> b!241116 m!260399))

(declare-fun m!260401 () Bool)

(assert (=> b!241116 m!260401))

(assert (=> b!241116 m!260389))

(declare-fun m!260403 () Bool)

(assert (=> b!241116 m!260403))

(assert (=> b!241116 m!260391))

(declare-fun m!260405 () Bool)

(assert (=> b!241116 m!260405))

(assert (=> b!241116 m!260323))

(assert (=> b!241127 m!260323))

(assert (=> b!241127 m!260323))

(declare-fun m!260407 () Bool)

(assert (=> b!241127 m!260407))

(declare-fun m!260409 () Bool)

(assert (=> b!241112 m!260409))

(assert (=> b!241115 m!260323))

(assert (=> b!241115 m!260323))

(assert (=> b!241115 m!260407))

(declare-fun m!260411 () Bool)

(assert (=> b!241111 m!260411))

(declare-fun m!260413 () Bool)

(assert (=> b!241113 m!260413))

(assert (=> b!241119 m!260323))

(assert (=> b!241119 m!260323))

(declare-fun m!260415 () Bool)

(assert (=> b!241119 m!260415))

(declare-fun m!260417 () Bool)

(assert (=> bm!22434 m!260417))

(declare-fun m!260419 () Bool)

(assert (=> bm!22432 m!260419))

(assert (=> d!59733 m!260329))

(declare-fun m!260421 () Bool)

(assert (=> b!241110 m!260421))

(assert (=> b!241110 m!260323))

(assert (=> b!241110 m!260421))

(declare-fun m!260423 () Bool)

(assert (=> b!241110 m!260423))

(declare-fun m!260425 () Bool)

(assert (=> b!241110 m!260425))

(assert (=> b!241110 m!260323))

(declare-fun m!260427 () Bool)

(assert (=> b!241110 m!260427))

(assert (=> b!241110 m!260423))

(assert (=> bm!22437 m!260401))

(declare-fun m!260429 () Bool)

(assert (=> bm!22436 m!260429))

(assert (=> b!240933 d!59733))

(declare-fun d!59735 () Bool)

(assert (=> d!59735 (= (inRange!0 (ite c!40111 (index!6422 lt!121138) (index!6425 lt!121138)) (mask!10526 thiss!1504)) (and (bvsge (ite c!40111 (index!6422 lt!121138) (index!6425 lt!121138)) #b00000000000000000000000000000000) (bvslt (ite c!40111 (index!6422 lt!121138) (index!6425 lt!121138)) (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22404 d!59735))

(assert (=> b!240932 d!59713))

(declare-fun mapNonEmpty!10755 () Bool)

(declare-fun mapRes!10755 () Bool)

(declare-fun tp!22662 () Bool)

(declare-fun e!156509 () Bool)

(assert (=> mapNonEmpty!10755 (= mapRes!10755 (and tp!22662 e!156509))))

(declare-fun mapRest!10755 () (Array (_ BitVec 32) ValueCell!2829))

(declare-fun mapKey!10755 () (_ BitVec 32))

(declare-fun mapValue!10755 () ValueCell!2829)

(assert (=> mapNonEmpty!10755 (= mapRest!10749 (store mapRest!10755 mapKey!10755 mapValue!10755))))

(declare-fun mapIsEmpty!10755 () Bool)

(assert (=> mapIsEmpty!10755 mapRes!10755))

(declare-fun b!241138 () Bool)

(assert (=> b!241138 (= e!156509 tp_is_empty!6345)))

(declare-fun condMapEmpty!10755 () Bool)

(declare-fun mapDefault!10755 () ValueCell!2829)

(assert (=> mapNonEmpty!10749 (= condMapEmpty!10755 (= mapRest!10749 ((as const (Array (_ BitVec 32) ValueCell!2829)) mapDefault!10755)))))

(declare-fun e!156508 () Bool)

(assert (=> mapNonEmpty!10749 (= tp!22653 (and e!156508 mapRes!10755))))

(declare-fun b!241139 () Bool)

(assert (=> b!241139 (= e!156508 tp_is_empty!6345)))

(assert (= (and mapNonEmpty!10749 condMapEmpty!10755) mapIsEmpty!10755))

(assert (= (and mapNonEmpty!10749 (not condMapEmpty!10755)) mapNonEmpty!10755))

(assert (= (and mapNonEmpty!10755 ((_ is ValueCellFull!2829) mapValue!10755)) b!241138))

(assert (= (and mapNonEmpty!10749 ((_ is ValueCellFull!2829) mapDefault!10755)) b!241139))

(declare-fun m!260431 () Bool)

(assert (=> mapNonEmpty!10755 m!260431))

(declare-fun b_lambda!8011 () Bool)

(assert (= b_lambda!8009 (or (and b!240924 b_free!6483) b_lambda!8011)))

(check-sat (not b_next!6483) (not bm!22434) (not b!241064) (not b!241115) (not d!59731) (not d!59723) (not bm!22437) (not b!241038) (not b_lambda!8011) (not b!241039) (not b!241037) (not d!59733) (not bm!22436) (not bm!22416) (not b!241119) (not b!241112) b_and!13471 (not b!241127) (not d!59727) (not bm!22417) (not b!241005) (not mapNonEmpty!10755) (not b!241057) (not d!59719) (not b!241113) (not b!241110) (not b!241000) tp_is_empty!6345 (not bm!22432) (not d!59721) (not b!241066) (not d!59725) (not b!241116) (not b!241111))
(check-sat b_and!13471 (not b_next!6483))
(get-model)

(assert (=> d!59719 d!59727))

(declare-fun d!59737 () Bool)

(declare-fun e!156512 () Bool)

(assert (=> d!59737 e!156512))

(declare-fun res!118240 () Bool)

(assert (=> d!59737 (=> (not res!118240) (not e!156512))))

(declare-fun lt!121261 () SeekEntryResult!1063)

(assert (=> d!59737 (= res!118240 ((_ is Found!1063) lt!121261))))

(assert (=> d!59737 (= lt!121261 (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(assert (=> d!59737 true))

(declare-fun _$33!156 () Unit!7414)

(assert (=> d!59737 (= (choose!1124 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)) _$33!156)))

(declare-fun b!241144 () Bool)

(declare-fun res!118241 () Bool)

(assert (=> b!241144 (=> (not res!118241) (not e!156512))))

(assert (=> b!241144 (= res!118241 (inRange!0 (index!6423 lt!121261) (mask!10526 thiss!1504)))))

(declare-fun b!241145 () Bool)

(assert (=> b!241145 (= e!156512 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6423 lt!121261)) key!932))))

(assert (= (and d!59737 res!118240) b!241144))

(assert (= (and b!241144 res!118241) b!241145))

(assert (=> d!59737 m!260291))

(declare-fun m!260433 () Bool)

(assert (=> b!241144 m!260433))

(declare-fun m!260435 () Bool)

(assert (=> b!241145 m!260435))

(assert (=> d!59719 d!59737))

(declare-fun d!59739 () Bool)

(assert (=> d!59739 (= (validMask!0 (mask!10526 thiss!1504)) (and (or (= (mask!10526 thiss!1504) #b00000000000000000000000000000111) (= (mask!10526 thiss!1504) #b00000000000000000000000000001111) (= (mask!10526 thiss!1504) #b00000000000000000000000000011111) (= (mask!10526 thiss!1504) #b00000000000000000000000000111111) (= (mask!10526 thiss!1504) #b00000000000000000000000001111111) (= (mask!10526 thiss!1504) #b00000000000000000000000011111111) (= (mask!10526 thiss!1504) #b00000000000000000000000111111111) (= (mask!10526 thiss!1504) #b00000000000000000000001111111111) (= (mask!10526 thiss!1504) #b00000000000000000000011111111111) (= (mask!10526 thiss!1504) #b00000000000000000000111111111111) (= (mask!10526 thiss!1504) #b00000000000000000001111111111111) (= (mask!10526 thiss!1504) #b00000000000000000011111111111111) (= (mask!10526 thiss!1504) #b00000000000000000111111111111111) (= (mask!10526 thiss!1504) #b00000000000000001111111111111111) (= (mask!10526 thiss!1504) #b00000000000000011111111111111111) (= (mask!10526 thiss!1504) #b00000000000000111111111111111111) (= (mask!10526 thiss!1504) #b00000000000001111111111111111111) (= (mask!10526 thiss!1504) #b00000000000011111111111111111111) (= (mask!10526 thiss!1504) #b00000000000111111111111111111111) (= (mask!10526 thiss!1504) #b00000000001111111111111111111111) (= (mask!10526 thiss!1504) #b00000000011111111111111111111111) (= (mask!10526 thiss!1504) #b00000000111111111111111111111111) (= (mask!10526 thiss!1504) #b00000001111111111111111111111111) (= (mask!10526 thiss!1504) #b00000011111111111111111111111111) (= (mask!10526 thiss!1504) #b00000111111111111111111111111111) (= (mask!10526 thiss!1504) #b00001111111111111111111111111111) (= (mask!10526 thiss!1504) #b00011111111111111111111111111111) (= (mask!10526 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10526 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> d!59719 d!59739))

(declare-fun d!59741 () Bool)

(declare-fun get!2920 (Option!284) V!8107)

(assert (=> d!59741 (= (apply!221 lt!121244 lt!121256) (get!2920 (getValueByKey!278 (toList!1846 lt!121244) lt!121256)))))

(declare-fun bs!8836 () Bool)

(assert (= bs!8836 d!59741))

(declare-fun m!260437 () Bool)

(assert (=> bs!8836 m!260437))

(assert (=> bs!8836 m!260437))

(declare-fun m!260439 () Bool)

(assert (=> bs!8836 m!260439))

(assert (=> b!241116 d!59741))

(declare-fun d!59743 () Bool)

(declare-fun e!156515 () Bool)

(assert (=> d!59743 e!156515))

(declare-fun res!118246 () Bool)

(assert (=> d!59743 (=> (not res!118246) (not e!156515))))

(declare-fun lt!121270 () ListLongMap!3661)

(assert (=> d!59743 (= res!118246 (contains!1728 lt!121270 (_1!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))))))

(declare-fun lt!121271 () List!3640)

(assert (=> d!59743 (= lt!121270 (ListLongMap!3662 lt!121271))))

(declare-fun lt!121272 () Unit!7414)

(declare-fun lt!121273 () Unit!7414)

(assert (=> d!59743 (= lt!121272 lt!121273)))

(assert (=> d!59743 (= (getValueByKey!278 lt!121271 (_1!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!156 (List!3640 (_ BitVec 64) V!8107) Unit!7414)

(assert (=> d!59743 (= lt!121273 (lemmaContainsTupThenGetReturnValue!156 lt!121271 (_1!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))))))

(declare-fun insertStrictlySorted!158 (List!3640 (_ BitVec 64) V!8107) List!3640)

(assert (=> d!59743 (= lt!121271 (insertStrictlySorted!158 (toList!1846 lt!121241) (_1!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))))))

(assert (=> d!59743 (= (+!643 lt!121241 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) lt!121270)))

(declare-fun b!241150 () Bool)

(declare-fun res!118247 () Bool)

(assert (=> b!241150 (=> (not res!118247) (not e!156515))))

(assert (=> b!241150 (= res!118247 (= (getValueByKey!278 (toList!1846 lt!121270) (_1!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))))))))

(declare-fun b!241151 () Bool)

(declare-fun contains!1730 (List!3640 tuple2!4734) Bool)

(assert (=> b!241151 (= e!156515 (contains!1730 (toList!1846 lt!121270) (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))))))

(assert (= (and d!59743 res!118246) b!241150))

(assert (= (and b!241150 res!118247) b!241151))

(declare-fun m!260441 () Bool)

(assert (=> d!59743 m!260441))

(declare-fun m!260443 () Bool)

(assert (=> d!59743 m!260443))

(declare-fun m!260445 () Bool)

(assert (=> d!59743 m!260445))

(declare-fun m!260447 () Bool)

(assert (=> d!59743 m!260447))

(declare-fun m!260449 () Bool)

(assert (=> b!241150 m!260449))

(declare-fun m!260451 () Bool)

(assert (=> b!241151 m!260451))

(assert (=> b!241116 d!59743))

(declare-fun d!59745 () Bool)

(assert (=> d!59745 (contains!1728 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) lt!121245)))

(declare-fun lt!121276 () Unit!7414)

(declare-fun choose!1127 (ListLongMap!3661 (_ BitVec 64) V!8107 (_ BitVec 64)) Unit!7414)

(assert (=> d!59745 (= lt!121276 (choose!1127 lt!121238 lt!121246 (zeroValue!4305 thiss!1504) lt!121245))))

(assert (=> d!59745 (contains!1728 lt!121238 lt!121245)))

(assert (=> d!59745 (= (addStillContains!197 lt!121238 lt!121246 (zeroValue!4305 thiss!1504) lt!121245) lt!121276)))

(declare-fun bs!8837 () Bool)

(assert (= bs!8837 d!59745))

(assert (=> bs!8837 m!260391))

(assert (=> bs!8837 m!260391))

(assert (=> bs!8837 m!260405))

(declare-fun m!260453 () Bool)

(assert (=> bs!8837 m!260453))

(declare-fun m!260455 () Bool)

(assert (=> bs!8837 m!260455))

(assert (=> b!241116 d!59745))

(declare-fun d!59747 () Bool)

(declare-fun e!156516 () Bool)

(assert (=> d!59747 e!156516))

(declare-fun res!118248 () Bool)

(assert (=> d!59747 (=> (not res!118248) (not e!156516))))

(declare-fun lt!121277 () ListLongMap!3661)

(assert (=> d!59747 (= res!118248 (contains!1728 lt!121277 (_1!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))))))

(declare-fun lt!121278 () List!3640)

(assert (=> d!59747 (= lt!121277 (ListLongMap!3662 lt!121278))))

(declare-fun lt!121279 () Unit!7414)

(declare-fun lt!121280 () Unit!7414)

(assert (=> d!59747 (= lt!121279 lt!121280)))

(assert (=> d!59747 (= (getValueByKey!278 lt!121278 (_1!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))))))

(assert (=> d!59747 (= lt!121280 (lemmaContainsTupThenGetReturnValue!156 lt!121278 (_1!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))))))

(assert (=> d!59747 (= lt!121278 (insertStrictlySorted!158 (toList!1846 lt!121255) (_1!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))))))

(assert (=> d!59747 (= (+!643 lt!121255 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) lt!121277)))

(declare-fun b!241153 () Bool)

(declare-fun res!118249 () Bool)

(assert (=> b!241153 (=> (not res!118249) (not e!156516))))

(assert (=> b!241153 (= res!118249 (= (getValueByKey!278 (toList!1846 lt!121277) (_1!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))))))))

(declare-fun b!241154 () Bool)

(assert (=> b!241154 (= e!156516 (contains!1730 (toList!1846 lt!121277) (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))))))

(assert (= (and d!59747 res!118248) b!241153))

(assert (= (and b!241153 res!118249) b!241154))

(declare-fun m!260457 () Bool)

(assert (=> d!59747 m!260457))

(declare-fun m!260459 () Bool)

(assert (=> d!59747 m!260459))

(declare-fun m!260461 () Bool)

(assert (=> d!59747 m!260461))

(declare-fun m!260463 () Bool)

(assert (=> d!59747 m!260463))

(declare-fun m!260465 () Bool)

(assert (=> b!241153 m!260465))

(declare-fun m!260467 () Bool)

(assert (=> b!241154 m!260467))

(assert (=> b!241116 d!59747))

(declare-fun d!59749 () Bool)

(declare-fun e!156517 () Bool)

(assert (=> d!59749 e!156517))

(declare-fun res!118250 () Bool)

(assert (=> d!59749 (=> (not res!118250) (not e!156517))))

(declare-fun lt!121281 () ListLongMap!3661)

(assert (=> d!59749 (= res!118250 (contains!1728 lt!121281 (_1!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))))))

(declare-fun lt!121282 () List!3640)

(assert (=> d!59749 (= lt!121281 (ListLongMap!3662 lt!121282))))

(declare-fun lt!121283 () Unit!7414)

(declare-fun lt!121284 () Unit!7414)

(assert (=> d!59749 (= lt!121283 lt!121284)))

(assert (=> d!59749 (= (getValueByKey!278 lt!121282 (_1!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))))))

(assert (=> d!59749 (= lt!121284 (lemmaContainsTupThenGetReturnValue!156 lt!121282 (_1!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))))))

(assert (=> d!59749 (= lt!121282 (insertStrictlySorted!158 (toList!1846 lt!121238) (_1!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))))))

(assert (=> d!59749 (= (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) lt!121281)))

(declare-fun b!241155 () Bool)

(declare-fun res!118251 () Bool)

(assert (=> b!241155 (=> (not res!118251) (not e!156517))))

(assert (=> b!241155 (= res!118251 (= (getValueByKey!278 (toList!1846 lt!121281) (_1!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))))))))

(declare-fun b!241156 () Bool)

(assert (=> b!241156 (= e!156517 (contains!1730 (toList!1846 lt!121281) (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))))))

(assert (= (and d!59749 res!118250) b!241155))

(assert (= (and b!241155 res!118251) b!241156))

(declare-fun m!260469 () Bool)

(assert (=> d!59749 m!260469))

(declare-fun m!260471 () Bool)

(assert (=> d!59749 m!260471))

(declare-fun m!260473 () Bool)

(assert (=> d!59749 m!260473))

(declare-fun m!260475 () Bool)

(assert (=> d!59749 m!260475))

(declare-fun m!260477 () Bool)

(assert (=> b!241155 m!260477))

(declare-fun m!260479 () Bool)

(assert (=> b!241156 m!260479))

(assert (=> b!241116 d!59749))

(declare-fun d!59751 () Bool)

(assert (=> d!59751 (= (apply!221 lt!121255 lt!121250) (get!2920 (getValueByKey!278 (toList!1846 lt!121255) lt!121250)))))

(declare-fun bs!8838 () Bool)

(assert (= bs!8838 d!59751))

(declare-fun m!260481 () Bool)

(assert (=> bs!8838 m!260481))

(assert (=> bs!8838 m!260481))

(declare-fun m!260483 () Bool)

(assert (=> bs!8838 m!260483))

(assert (=> b!241116 d!59751))

(declare-fun d!59753 () Bool)

(assert (=> d!59753 (= (apply!221 (+!643 lt!121241 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) lt!121243) (get!2920 (getValueByKey!278 (toList!1846 (+!643 lt!121241 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504)))) lt!121243)))))

(declare-fun bs!8839 () Bool)

(assert (= bs!8839 d!59753))

(declare-fun m!260485 () Bool)

(assert (=> bs!8839 m!260485))

(assert (=> bs!8839 m!260485))

(declare-fun m!260487 () Bool)

(assert (=> bs!8839 m!260487))

(assert (=> b!241116 d!59753))

(declare-fun d!59755 () Bool)

(assert (=> d!59755 (= (apply!221 (+!643 lt!121255 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) lt!121250) (apply!221 lt!121255 lt!121250))))

(declare-fun lt!121287 () Unit!7414)

(declare-fun choose!1128 (ListLongMap!3661 (_ BitVec 64) V!8107 (_ BitVec 64)) Unit!7414)

(assert (=> d!59755 (= lt!121287 (choose!1128 lt!121255 lt!121258 (minValue!4305 thiss!1504) lt!121250))))

(declare-fun e!156520 () Bool)

(assert (=> d!59755 e!156520))

(declare-fun res!118254 () Bool)

(assert (=> d!59755 (=> (not res!118254) (not e!156520))))

(assert (=> d!59755 (= res!118254 (contains!1728 lt!121255 lt!121250))))

(assert (=> d!59755 (= (addApplyDifferent!197 lt!121255 lt!121258 (minValue!4305 thiss!1504) lt!121250) lt!121287)))

(declare-fun b!241160 () Bool)

(assert (=> b!241160 (= e!156520 (not (= lt!121250 lt!121258)))))

(assert (= (and d!59755 res!118254) b!241160))

(declare-fun m!260489 () Bool)

(assert (=> d!59755 m!260489))

(assert (=> d!59755 m!260389))

(assert (=> d!59755 m!260403))

(assert (=> d!59755 m!260387))

(assert (=> d!59755 m!260389))

(declare-fun m!260491 () Bool)

(assert (=> d!59755 m!260491))

(assert (=> b!241116 d!59755))

(declare-fun d!59757 () Bool)

(assert (=> d!59757 (= (apply!221 (+!643 lt!121255 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504))) lt!121250) (get!2920 (getValueByKey!278 (toList!1846 (+!643 lt!121255 (tuple2!4735 lt!121258 (minValue!4305 thiss!1504)))) lt!121250)))))

(declare-fun bs!8840 () Bool)

(assert (= bs!8840 d!59757))

(declare-fun m!260493 () Bool)

(assert (=> bs!8840 m!260493))

(assert (=> bs!8840 m!260493))

(declare-fun m!260495 () Bool)

(assert (=> bs!8840 m!260495))

(assert (=> b!241116 d!59757))

(declare-fun d!59759 () Bool)

(declare-fun e!156522 () Bool)

(assert (=> d!59759 e!156522))

(declare-fun res!118255 () Bool)

(assert (=> d!59759 (=> res!118255 e!156522)))

(declare-fun lt!121291 () Bool)

(assert (=> d!59759 (= res!118255 (not lt!121291))))

(declare-fun lt!121289 () Bool)

(assert (=> d!59759 (= lt!121291 lt!121289)))

(declare-fun lt!121290 () Unit!7414)

(declare-fun e!156521 () Unit!7414)

(assert (=> d!59759 (= lt!121290 e!156521)))

(declare-fun c!40163 () Bool)

(assert (=> d!59759 (= c!40163 lt!121289)))

(assert (=> d!59759 (= lt!121289 (containsKey!270 (toList!1846 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) lt!121245))))

(assert (=> d!59759 (= (contains!1728 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504))) lt!121245) lt!121291)))

(declare-fun b!241161 () Bool)

(declare-fun lt!121288 () Unit!7414)

(assert (=> b!241161 (= e!156521 lt!121288)))

(assert (=> b!241161 (= lt!121288 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) lt!121245))))

(assert (=> b!241161 (isDefined!220 (getValueByKey!278 (toList!1846 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) lt!121245))))

(declare-fun b!241162 () Bool)

(declare-fun Unit!7426 () Unit!7414)

(assert (=> b!241162 (= e!156521 Unit!7426)))

(declare-fun b!241163 () Bool)

(assert (=> b!241163 (= e!156522 (isDefined!220 (getValueByKey!278 (toList!1846 (+!643 lt!121238 (tuple2!4735 lt!121246 (zeroValue!4305 thiss!1504)))) lt!121245)))))

(assert (= (and d!59759 c!40163) b!241161))

(assert (= (and d!59759 (not c!40163)) b!241162))

(assert (= (and d!59759 (not res!118255)) b!241163))

(declare-fun m!260497 () Bool)

(assert (=> d!59759 m!260497))

(declare-fun m!260499 () Bool)

(assert (=> b!241161 m!260499))

(declare-fun m!260501 () Bool)

(assert (=> b!241161 m!260501))

(assert (=> b!241161 m!260501))

(declare-fun m!260503 () Bool)

(assert (=> b!241161 m!260503))

(assert (=> b!241163 m!260501))

(assert (=> b!241163 m!260501))

(assert (=> b!241163 m!260503))

(assert (=> b!241116 d!59759))

(declare-fun bm!22441 () Bool)

(declare-fun call!22444 () ListLongMap!3661)

(assert (=> bm!22441 (= call!22444 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4464 thiss!1504)))))

(declare-fun b!241189 () Bool)

(declare-fun e!156538 () Bool)

(declare-fun e!156540 () Bool)

(assert (=> b!241189 (= e!156538 e!156540)))

(declare-fun c!40172 () Bool)

(declare-fun e!156541 () Bool)

(assert (=> b!241189 (= c!40172 e!156541)))

(declare-fun res!118267 () Bool)

(assert (=> b!241189 (=> (not res!118267) (not e!156541))))

(assert (=> b!241189 (= res!118267 (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241190 () Bool)

(declare-fun lt!121312 () Unit!7414)

(declare-fun lt!121310 () Unit!7414)

(assert (=> b!241190 (= lt!121312 lt!121310)))

(declare-fun lt!121307 () (_ BitVec 64))

(declare-fun lt!121306 () (_ BitVec 64))

(declare-fun lt!121309 () V!8107)

(declare-fun lt!121308 () ListLongMap!3661)

(assert (=> b!241190 (not (contains!1728 (+!643 lt!121308 (tuple2!4735 lt!121306 lt!121309)) lt!121307))))

(declare-fun addStillNotContains!121 (ListLongMap!3661 (_ BitVec 64) V!8107 (_ BitVec 64)) Unit!7414)

(assert (=> b!241190 (= lt!121310 (addStillNotContains!121 lt!121308 lt!121306 lt!121309 lt!121307))))

(assert (=> b!241190 (= lt!121307 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!241190 (= lt!121309 (get!2919 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!241190 (= lt!121306 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241190 (= lt!121308 call!22444)))

(declare-fun e!156539 () ListLongMap!3661)

(assert (=> b!241190 (= e!156539 (+!643 call!22444 (tuple2!4735 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) (get!2919 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!241191 () Bool)

(declare-fun res!118265 () Bool)

(assert (=> b!241191 (=> (not res!118265) (not e!156538))))

(declare-fun lt!121311 () ListLongMap!3661)

(assert (=> b!241191 (= res!118265 (not (contains!1728 lt!121311 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!59761 () Bool)

(assert (=> d!59761 e!156538))

(declare-fun res!118266 () Bool)

(assert (=> d!59761 (=> (not res!118266) (not e!156538))))

(assert (=> d!59761 (= res!118266 (not (contains!1728 lt!121311 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!156543 () ListLongMap!3661)

(assert (=> d!59761 (= lt!121311 e!156543)))

(declare-fun c!40175 () Bool)

(assert (=> d!59761 (= c!40175 (bvsge #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> d!59761 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59761 (= (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) lt!121311)))

(declare-fun b!241188 () Bool)

(assert (=> b!241188 (= e!156539 call!22444)))

(declare-fun b!241192 () Bool)

(declare-fun e!156537 () Bool)

(assert (=> b!241192 (= e!156540 e!156537)))

(assert (=> b!241192 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun res!118264 () Bool)

(assert (=> b!241192 (= res!118264 (contains!1728 lt!121311 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!241192 (=> (not res!118264) (not e!156537))))

(declare-fun b!241193 () Bool)

(declare-fun e!156542 () Bool)

(assert (=> b!241193 (= e!156542 (= lt!121311 (getCurrentListMapNoExtraKeys!540 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4464 thiss!1504))))))

(declare-fun b!241194 () Bool)

(assert (=> b!241194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> b!241194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6026 (_values!4447 thiss!1504))))))

(assert (=> b!241194 (= e!156537 (= (apply!221 lt!121311 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)) (get!2919 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!241195 () Bool)

(assert (=> b!241195 (= e!156543 (ListLongMap!3662 Nil!3637))))

(declare-fun b!241196 () Bool)

(assert (=> b!241196 (= e!156540 e!156542)))

(declare-fun c!40174 () Bool)

(assert (=> b!241196 (= c!40174 (bvslt #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241197 () Bool)

(assert (=> b!241197 (= e!156541 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!241197 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!241198 () Bool)

(assert (=> b!241198 (= e!156543 e!156539)))

(declare-fun c!40173 () Bool)

(assert (=> b!241198 (= c!40173 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241199 () Bool)

(declare-fun isEmpty!525 (ListLongMap!3661) Bool)

(assert (=> b!241199 (= e!156542 (isEmpty!525 lt!121311))))

(assert (= (and d!59761 c!40175) b!241195))

(assert (= (and d!59761 (not c!40175)) b!241198))

(assert (= (and b!241198 c!40173) b!241190))

(assert (= (and b!241198 (not c!40173)) b!241188))

(assert (= (or b!241190 b!241188) bm!22441))

(assert (= (and d!59761 res!118266) b!241191))

(assert (= (and b!241191 res!118265) b!241189))

(assert (= (and b!241189 res!118267) b!241197))

(assert (= (and b!241189 c!40172) b!241192))

(assert (= (and b!241189 (not c!40172)) b!241196))

(assert (= (and b!241192 res!118264) b!241194))

(assert (= (and b!241196 c!40174) b!241193))

(assert (= (and b!241196 (not c!40174)) b!241199))

(declare-fun b_lambda!8013 () Bool)

(assert (=> (not b_lambda!8013) (not b!241190)))

(assert (=> b!241190 t!8646))

(declare-fun b_and!13473 () Bool)

(assert (= b_and!13471 (and (=> t!8646 result!5195) b_and!13473)))

(declare-fun b_lambda!8015 () Bool)

(assert (=> (not b_lambda!8015) (not b!241194)))

(assert (=> b!241194 t!8646))

(declare-fun b_and!13475 () Bool)

(assert (= b_and!13473 (and (=> t!8646 result!5195) b_and!13475)))

(declare-fun m!260505 () Bool)

(assert (=> b!241199 m!260505))

(declare-fun m!260507 () Bool)

(assert (=> b!241190 m!260507))

(declare-fun m!260509 () Bool)

(assert (=> b!241190 m!260509))

(assert (=> b!241190 m!260421))

(assert (=> b!241190 m!260423))

(assert (=> b!241190 m!260425))

(assert (=> b!241190 m!260507))

(declare-fun m!260511 () Bool)

(assert (=> b!241190 m!260511))

(assert (=> b!241190 m!260421))

(assert (=> b!241190 m!260323))

(assert (=> b!241190 m!260423))

(declare-fun m!260513 () Bool)

(assert (=> b!241190 m!260513))

(declare-fun m!260515 () Bool)

(assert (=> b!241191 m!260515))

(declare-fun m!260517 () Bool)

(assert (=> bm!22441 m!260517))

(assert (=> b!241192 m!260323))

(assert (=> b!241192 m!260323))

(declare-fun m!260519 () Bool)

(assert (=> b!241192 m!260519))

(declare-fun m!260521 () Bool)

(assert (=> d!59761 m!260521))

(assert (=> d!59761 m!260329))

(assert (=> b!241193 m!260517))

(assert (=> b!241198 m!260323))

(assert (=> b!241198 m!260323))

(assert (=> b!241198 m!260407))

(assert (=> b!241197 m!260323))

(assert (=> b!241197 m!260323))

(assert (=> b!241197 m!260407))

(assert (=> b!241194 m!260423))

(assert (=> b!241194 m!260421))

(assert (=> b!241194 m!260423))

(assert (=> b!241194 m!260425))

(assert (=> b!241194 m!260323))

(declare-fun m!260523 () Bool)

(assert (=> b!241194 m!260523))

(assert (=> b!241194 m!260421))

(assert (=> b!241194 m!260323))

(assert (=> b!241116 d!59761))

(declare-fun d!59763 () Bool)

(declare-fun e!156544 () Bool)

(assert (=> d!59763 e!156544))

(declare-fun res!118268 () Bool)

(assert (=> d!59763 (=> (not res!118268) (not e!156544))))

(declare-fun lt!121313 () ListLongMap!3661)

(assert (=> d!59763 (= res!118268 (contains!1728 lt!121313 (_1!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))))))

(declare-fun lt!121314 () List!3640)

(assert (=> d!59763 (= lt!121313 (ListLongMap!3662 lt!121314))))

(declare-fun lt!121315 () Unit!7414)

(declare-fun lt!121316 () Unit!7414)

(assert (=> d!59763 (= lt!121315 lt!121316)))

(assert (=> d!59763 (= (getValueByKey!278 lt!121314 (_1!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))))))

(assert (=> d!59763 (= lt!121316 (lemmaContainsTupThenGetReturnValue!156 lt!121314 (_1!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))))))

(assert (=> d!59763 (= lt!121314 (insertStrictlySorted!158 (toList!1846 lt!121244) (_1!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))))))

(assert (=> d!59763 (= (+!643 lt!121244 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) lt!121313)))

(declare-fun b!241200 () Bool)

(declare-fun res!118269 () Bool)

(assert (=> b!241200 (=> (not res!118269) (not e!156544))))

(assert (=> b!241200 (= res!118269 (= (getValueByKey!278 (toList!1846 lt!121313) (_1!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))))))))

(declare-fun b!241201 () Bool)

(assert (=> b!241201 (= e!156544 (contains!1730 (toList!1846 lt!121313) (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))))))

(assert (= (and d!59763 res!118268) b!241200))

(assert (= (and b!241200 res!118269) b!241201))

(declare-fun m!260525 () Bool)

(assert (=> d!59763 m!260525))

(declare-fun m!260527 () Bool)

(assert (=> d!59763 m!260527))

(declare-fun m!260529 () Bool)

(assert (=> d!59763 m!260529))

(declare-fun m!260531 () Bool)

(assert (=> d!59763 m!260531))

(declare-fun m!260533 () Bool)

(assert (=> b!241200 m!260533))

(declare-fun m!260535 () Bool)

(assert (=> b!241201 m!260535))

(assert (=> b!241116 d!59763))

(declare-fun d!59765 () Bool)

(assert (=> d!59765 (= (apply!221 lt!121241 lt!121243) (get!2920 (getValueByKey!278 (toList!1846 lt!121241) lt!121243)))))

(declare-fun bs!8841 () Bool)

(assert (= bs!8841 d!59765))

(declare-fun m!260537 () Bool)

(assert (=> bs!8841 m!260537))

(assert (=> bs!8841 m!260537))

(declare-fun m!260539 () Bool)

(assert (=> bs!8841 m!260539))

(assert (=> b!241116 d!59765))

(declare-fun d!59767 () Bool)

(assert (=> d!59767 (= (apply!221 (+!643 lt!121244 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) lt!121256) (get!2920 (getValueByKey!278 (toList!1846 (+!643 lt!121244 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504)))) lt!121256)))))

(declare-fun bs!8842 () Bool)

(assert (= bs!8842 d!59767))

(declare-fun m!260541 () Bool)

(assert (=> bs!8842 m!260541))

(assert (=> bs!8842 m!260541))

(declare-fun m!260543 () Bool)

(assert (=> bs!8842 m!260543))

(assert (=> b!241116 d!59767))

(declare-fun d!59769 () Bool)

(assert (=> d!59769 (= (apply!221 (+!643 lt!121244 (tuple2!4735 lt!121254 (minValue!4305 thiss!1504))) lt!121256) (apply!221 lt!121244 lt!121256))))

(declare-fun lt!121317 () Unit!7414)

(assert (=> d!59769 (= lt!121317 (choose!1128 lt!121244 lt!121254 (minValue!4305 thiss!1504) lt!121256))))

(declare-fun e!156545 () Bool)

(assert (=> d!59769 e!156545))

(declare-fun res!118270 () Bool)

(assert (=> d!59769 (=> (not res!118270) (not e!156545))))

(assert (=> d!59769 (= res!118270 (contains!1728 lt!121244 lt!121256))))

(assert (=> d!59769 (= (addApplyDifferent!197 lt!121244 lt!121254 (minValue!4305 thiss!1504) lt!121256) lt!121317)))

(declare-fun b!241202 () Bool)

(assert (=> b!241202 (= e!156545 (not (= lt!121256 lt!121254)))))

(assert (= (and d!59769 res!118270) b!241202))

(declare-fun m!260545 () Bool)

(assert (=> d!59769 m!260545))

(assert (=> d!59769 m!260383))

(assert (=> d!59769 m!260395))

(assert (=> d!59769 m!260393))

(assert (=> d!59769 m!260383))

(declare-fun m!260547 () Bool)

(assert (=> d!59769 m!260547))

(assert (=> b!241116 d!59769))

(declare-fun d!59771 () Bool)

(assert (=> d!59771 (= (apply!221 (+!643 lt!121241 (tuple2!4735 lt!121247 (zeroValue!4305 thiss!1504))) lt!121243) (apply!221 lt!121241 lt!121243))))

(declare-fun lt!121318 () Unit!7414)

(assert (=> d!59771 (= lt!121318 (choose!1128 lt!121241 lt!121247 (zeroValue!4305 thiss!1504) lt!121243))))

(declare-fun e!156546 () Bool)

(assert (=> d!59771 e!156546))

(declare-fun res!118271 () Bool)

(assert (=> d!59771 (=> (not res!118271) (not e!156546))))

(assert (=> d!59771 (= res!118271 (contains!1728 lt!121241 lt!121243))))

(assert (=> d!59771 (= (addApplyDifferent!197 lt!121241 lt!121247 (zeroValue!4305 thiss!1504) lt!121243) lt!121318)))

(declare-fun b!241203 () Bool)

(assert (=> b!241203 (= e!156546 (not (= lt!121243 lt!121247)))))

(assert (= (and d!59771 res!118271) b!241203))

(declare-fun m!260549 () Bool)

(assert (=> d!59771 m!260549))

(assert (=> d!59771 m!260381))

(assert (=> d!59771 m!260399))

(assert (=> d!59771 m!260375))

(assert (=> d!59771 m!260381))

(declare-fun m!260551 () Bool)

(assert (=> d!59771 m!260551))

(assert (=> b!241116 d!59771))

(declare-fun d!59773 () Bool)

(assert (=> d!59773 (= (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!241115 d!59773))

(declare-fun d!59775 () Bool)

(declare-fun isEmpty!526 (Option!284) Bool)

(assert (=> d!59775 (= (isDefined!220 (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932)) (not (isEmpty!526 (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))))

(declare-fun bs!8843 () Bool)

(assert (= bs!8843 d!59775))

(assert (=> bs!8843 m!260371))

(declare-fun m!260553 () Bool)

(assert (=> bs!8843 m!260553))

(assert (=> b!241066 d!59775))

(declare-fun b!241214 () Bool)

(declare-fun e!156552 () Option!284)

(assert (=> b!241214 (= e!156552 (getValueByKey!278 (t!8643 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) key!932))))

(declare-fun b!241213 () Bool)

(declare-fun e!156551 () Option!284)

(assert (=> b!241213 (= e!156551 e!156552)))

(declare-fun c!40181 () Bool)

(assert (=> b!241213 (= c!40181 (and ((_ is Cons!3636) (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) (not (= (_1!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) key!932))))))

(declare-fun d!59777 () Bool)

(declare-fun c!40180 () Bool)

(assert (=> d!59777 (= c!40180 (and ((_ is Cons!3636) (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) (= (_1!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) key!932)))))

(assert (=> d!59777 (= (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932) e!156551)))

(declare-fun b!241212 () Bool)

(assert (=> b!241212 (= e!156551 (Some!283 (_2!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))))))

(declare-fun b!241215 () Bool)

(assert (=> b!241215 (= e!156552 None!282)))

(assert (= (and d!59777 c!40180) b!241212))

(assert (= (and d!59777 (not c!40180)) b!241213))

(assert (= (and b!241213 c!40181) b!241214))

(assert (= (and b!241213 (not c!40181)) b!241215))

(declare-fun m!260555 () Bool)

(assert (=> b!241214 m!260555))

(assert (=> b!241066 d!59777))

(declare-fun b!241224 () Bool)

(declare-fun res!118282 () Bool)

(declare-fun e!156555 () Bool)

(assert (=> b!241224 (=> (not res!118282) (not e!156555))))

(assert (=> b!241224 (= res!118282 (and (= (size!6026 (_values!4447 thiss!1504)) (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001)) (= (size!6027 (_keys!6566 thiss!1504)) (size!6026 (_values!4447 thiss!1504))) (bvsge (_size!1828 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1828 thiss!1504) (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!241227 () Bool)

(assert (=> b!241227 (= e!156555 (and (bvsge (extraKeys!4201 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4201 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1828 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!59779 () Bool)

(declare-fun res!118283 () Bool)

(assert (=> d!59779 (=> (not res!118283) (not e!156555))))

(assert (=> d!59779 (= res!118283 (validMask!0 (mask!10526 thiss!1504)))))

(assert (=> d!59779 (= (simpleValid!243 thiss!1504) e!156555)))

(declare-fun b!241226 () Bool)

(declare-fun res!118280 () Bool)

(assert (=> b!241226 (=> (not res!118280) (not e!156555))))

(declare-fun size!6030 (LongMapFixedSize!3558) (_ BitVec 32))

(assert (=> b!241226 (= res!118280 (= (size!6030 thiss!1504) (bvadd (_size!1828 thiss!1504) (bvsdiv (bvadd (extraKeys!4201 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!241225 () Bool)

(declare-fun res!118281 () Bool)

(assert (=> b!241225 (=> (not res!118281) (not e!156555))))

(assert (=> b!241225 (= res!118281 (bvsge (size!6030 thiss!1504) (_size!1828 thiss!1504)))))

(assert (= (and d!59779 res!118283) b!241224))

(assert (= (and b!241224 res!118282) b!241225))

(assert (= (and b!241225 res!118281) b!241226))

(assert (= (and b!241226 res!118280) b!241227))

(assert (=> d!59779 m!260329))

(declare-fun m!260557 () Bool)

(assert (=> b!241226 m!260557))

(assert (=> b!241225 m!260557))

(assert (=> d!59725 d!59779))

(declare-fun d!59781 () Bool)

(declare-fun e!156557 () Bool)

(assert (=> d!59781 e!156557))

(declare-fun res!118284 () Bool)

(assert (=> d!59781 (=> res!118284 e!156557)))

(declare-fun lt!121322 () Bool)

(assert (=> d!59781 (= res!118284 (not lt!121322))))

(declare-fun lt!121320 () Bool)

(assert (=> d!59781 (= lt!121322 lt!121320)))

(declare-fun lt!121321 () Unit!7414)

(declare-fun e!156556 () Unit!7414)

(assert (=> d!59781 (= lt!121321 e!156556)))

(declare-fun c!40182 () Bool)

(assert (=> d!59781 (= c!40182 lt!121320)))

(assert (=> d!59781 (= lt!121320 (containsKey!270 (toList!1846 lt!121252) (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59781 (= (contains!1728 lt!121252 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)) lt!121322)))

(declare-fun b!241228 () Bool)

(declare-fun lt!121319 () Unit!7414)

(assert (=> b!241228 (= e!156556 lt!121319)))

(assert (=> b!241228 (= lt!121319 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 lt!121252) (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!241228 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241229 () Bool)

(declare-fun Unit!7427 () Unit!7414)

(assert (=> b!241229 (= e!156556 Unit!7427)))

(declare-fun b!241230 () Bool)

(assert (=> b!241230 (= e!156557 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59781 c!40182) b!241228))

(assert (= (and d!59781 (not c!40182)) b!241229))

(assert (= (and d!59781 (not res!118284)) b!241230))

(assert (=> d!59781 m!260323))

(declare-fun m!260559 () Bool)

(assert (=> d!59781 m!260559))

(assert (=> b!241228 m!260323))

(declare-fun m!260561 () Bool)

(assert (=> b!241228 m!260561))

(assert (=> b!241228 m!260323))

(declare-fun m!260563 () Bool)

(assert (=> b!241228 m!260563))

(assert (=> b!241228 m!260563))

(declare-fun m!260565 () Bool)

(assert (=> b!241228 m!260565))

(assert (=> b!241230 m!260323))

(assert (=> b!241230 m!260563))

(assert (=> b!241230 m!260563))

(assert (=> b!241230 m!260565))

(assert (=> b!241119 d!59781))

(declare-fun b!241239 () Bool)

(declare-fun e!156563 () (_ BitVec 32))

(assert (=> b!241239 (= e!156563 #b00000000000000000000000000000000)))

(declare-fun d!59783 () Bool)

(declare-fun lt!121325 () (_ BitVec 32))

(assert (=> d!59783 (and (bvsge lt!121325 #b00000000000000000000000000000000) (bvsle lt!121325 (bvsub (size!6027 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59783 (= lt!121325 e!156563)))

(declare-fun c!40188 () Bool)

(assert (=> d!59783 (= c!40188 (bvsge #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> d!59783 (and (bvsle #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6027 (_keys!6566 thiss!1504)) (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> d!59783 (= (arrayCountValidKeys!0 (_keys!6566 thiss!1504) #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))) lt!121325)))

(declare-fun bm!22444 () Bool)

(declare-fun call!22447 () (_ BitVec 32))

(assert (=> bm!22444 (= call!22447 (arrayCountValidKeys!0 (_keys!6566 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241240 () Bool)

(declare-fun e!156562 () (_ BitVec 32))

(assert (=> b!241240 (= e!156563 e!156562)))

(declare-fun c!40187 () Bool)

(assert (=> b!241240 (= c!40187 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241241 () Bool)

(assert (=> b!241241 (= e!156562 (bvadd #b00000000000000000000000000000001 call!22447))))

(declare-fun b!241242 () Bool)

(assert (=> b!241242 (= e!156562 call!22447)))

(assert (= (and d!59783 c!40188) b!241239))

(assert (= (and d!59783 (not c!40188)) b!241240))

(assert (= (and b!241240 c!40187) b!241241))

(assert (= (and b!241240 (not c!40187)) b!241242))

(assert (= (or b!241241 b!241242) bm!22444))

(declare-fun m!260567 () Bool)

(assert (=> bm!22444 m!260567))

(assert (=> b!241240 m!260323))

(assert (=> b!241240 m!260323))

(assert (=> b!241240 m!260407))

(assert (=> b!241037 d!59783))

(declare-fun b!241253 () Bool)

(declare-fun e!156572 () Bool)

(declare-fun e!156575 () Bool)

(assert (=> b!241253 (= e!156572 e!156575)))

(declare-fun c!40191 () Bool)

(assert (=> b!241253 (= c!40191 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241254 () Bool)

(declare-fun call!22450 () Bool)

(assert (=> b!241254 (= e!156575 call!22450)))

(declare-fun d!59785 () Bool)

(declare-fun res!118291 () Bool)

(declare-fun e!156573 () Bool)

(assert (=> d!59785 (=> res!118291 e!156573)))

(assert (=> d!59785 (= res!118291 (bvsge #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> d!59785 (= (arrayNoDuplicates!0 (_keys!6566 thiss!1504) #b00000000000000000000000000000000 Nil!3639) e!156573)))

(declare-fun b!241255 () Bool)

(assert (=> b!241255 (= e!156575 call!22450)))

(declare-fun b!241256 () Bool)

(assert (=> b!241256 (= e!156573 e!156572)))

(declare-fun res!118292 () Bool)

(assert (=> b!241256 (=> (not res!118292) (not e!156572))))

(declare-fun e!156574 () Bool)

(assert (=> b!241256 (= res!118292 (not e!156574))))

(declare-fun res!118293 () Bool)

(assert (=> b!241256 (=> (not res!118293) (not e!156574))))

(assert (=> b!241256 (= res!118293 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241257 () Bool)

(declare-fun contains!1731 (List!3642 (_ BitVec 64)) Bool)

(assert (=> b!241257 (= e!156574 (contains!1731 Nil!3639 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22447 () Bool)

(assert (=> bm!22447 (= call!22450 (arrayNoDuplicates!0 (_keys!6566 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!40191 (Cons!3638 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) Nil!3639) Nil!3639)))))

(assert (= (and d!59785 (not res!118291)) b!241256))

(assert (= (and b!241256 res!118293) b!241257))

(assert (= (and b!241256 res!118292) b!241253))

(assert (= (and b!241253 c!40191) b!241255))

(assert (= (and b!241253 (not c!40191)) b!241254))

(assert (= (or b!241255 b!241254) bm!22447))

(assert (=> b!241253 m!260323))

(assert (=> b!241253 m!260323))

(assert (=> b!241253 m!260407))

(assert (=> b!241256 m!260323))

(assert (=> b!241256 m!260323))

(assert (=> b!241256 m!260407))

(assert (=> b!241257 m!260323))

(assert (=> b!241257 m!260323))

(declare-fun m!260569 () Bool)

(assert (=> b!241257 m!260569))

(assert (=> bm!22447 m!260323))

(declare-fun m!260571 () Bool)

(assert (=> bm!22447 m!260571))

(assert (=> b!241039 d!59785))

(declare-fun d!59787 () Bool)

(declare-fun res!118294 () Bool)

(declare-fun e!156576 () Bool)

(assert (=> d!59787 (=> res!118294 e!156576)))

(assert (=> d!59787 (= res!118294 (= (select (arr!5686 (_keys!6566 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!59787 (= (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!156576)))

(declare-fun b!241258 () Bool)

(declare-fun e!156577 () Bool)

(assert (=> b!241258 (= e!156576 e!156577)))

(declare-fun res!118295 () Bool)

(assert (=> b!241258 (=> (not res!118295) (not e!156577))))

(assert (=> b!241258 (= res!118295 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun b!241259 () Bool)

(assert (=> b!241259 (= e!156577 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!59787 (not res!118294)) b!241258))

(assert (= (and b!241258 res!118295) b!241259))

(declare-fun m!260573 () Bool)

(assert (=> d!59787 m!260573))

(declare-fun m!260575 () Bool)

(assert (=> b!241259 m!260575))

(assert (=> b!241000 d!59787))

(declare-fun d!59789 () Bool)

(declare-fun res!118301 () Bool)

(declare-fun e!156585 () Bool)

(assert (=> d!59789 (=> res!118301 e!156585)))

(assert (=> d!59789 (= res!118301 (bvsge #b00000000000000000000000000000000 (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> d!59789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)) e!156585)))

(declare-fun b!241268 () Bool)

(declare-fun e!156586 () Bool)

(assert (=> b!241268 (= e!156585 e!156586)))

(declare-fun c!40194 () Bool)

(assert (=> b!241268 (= c!40194 (validKeyInArray!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241269 () Bool)

(declare-fun e!156584 () Bool)

(declare-fun call!22453 () Bool)

(assert (=> b!241269 (= e!156584 call!22453)))

(declare-fun b!241270 () Bool)

(assert (=> b!241270 (= e!156586 e!156584)))

(declare-fun lt!121333 () (_ BitVec 64))

(assert (=> b!241270 (= lt!121333 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121334 () Unit!7414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11970 (_ BitVec 64) (_ BitVec 32)) Unit!7414)

(assert (=> b!241270 (= lt!121334 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6566 thiss!1504) lt!121333 #b00000000000000000000000000000000))))

(assert (=> b!241270 (arrayContainsKey!0 (_keys!6566 thiss!1504) lt!121333 #b00000000000000000000000000000000)))

(declare-fun lt!121332 () Unit!7414)

(assert (=> b!241270 (= lt!121332 lt!121334)))

(declare-fun res!118300 () Bool)

(assert (=> b!241270 (= res!118300 (= (seekEntryOrOpen!0 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000) (_keys!6566 thiss!1504) (mask!10526 thiss!1504)) (Found!1063 #b00000000000000000000000000000000)))))

(assert (=> b!241270 (=> (not res!118300) (not e!156584))))

(declare-fun bm!22450 () Bool)

(assert (=> bm!22450 (= call!22453 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun b!241271 () Bool)

(assert (=> b!241271 (= e!156586 call!22453)))

(assert (= (and d!59789 (not res!118301)) b!241268))

(assert (= (and b!241268 c!40194) b!241270))

(assert (= (and b!241268 (not c!40194)) b!241271))

(assert (= (and b!241270 res!118300) b!241269))

(assert (= (or b!241269 b!241271) bm!22450))

(assert (=> b!241268 m!260323))

(assert (=> b!241268 m!260323))

(assert (=> b!241268 m!260407))

(assert (=> b!241270 m!260323))

(declare-fun m!260577 () Bool)

(assert (=> b!241270 m!260577))

(declare-fun m!260579 () Bool)

(assert (=> b!241270 m!260579))

(assert (=> b!241270 m!260323))

(declare-fun m!260581 () Bool)

(assert (=> b!241270 m!260581))

(declare-fun m!260583 () Bool)

(assert (=> bm!22450 m!260583))

(assert (=> b!241038 d!59789))

(declare-fun b!241284 () Bool)

(declare-fun e!156593 () SeekEntryResult!1063)

(assert (=> b!241284 (= e!156593 Undefined!1063)))

(declare-fun d!59791 () Bool)

(declare-fun lt!121340 () SeekEntryResult!1063)

(assert (=> d!59791 (and (or ((_ is Undefined!1063) lt!121340) (not ((_ is Found!1063) lt!121340)) (and (bvsge (index!6423 lt!121340) #b00000000000000000000000000000000) (bvslt (index!6423 lt!121340) (size!6027 (_keys!6566 thiss!1504))))) (or ((_ is Undefined!1063) lt!121340) ((_ is Found!1063) lt!121340) (not ((_ is MissingVacant!1063) lt!121340)) (not (= (index!6425 lt!121340) (index!6424 lt!121179))) (and (bvsge (index!6425 lt!121340) #b00000000000000000000000000000000) (bvslt (index!6425 lt!121340) (size!6027 (_keys!6566 thiss!1504))))) (or ((_ is Undefined!1063) lt!121340) (ite ((_ is Found!1063) lt!121340) (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6423 lt!121340)) key!932) (and ((_ is MissingVacant!1063) lt!121340) (= (index!6425 lt!121340) (index!6424 lt!121179)) (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6425 lt!121340)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!59791 (= lt!121340 e!156593)))

(declare-fun c!40202 () Bool)

(assert (=> d!59791 (= c!40202 (bvsge (x!24199 lt!121179) #b01111111111111111111111111111110))))

(declare-fun lt!121339 () (_ BitVec 64))

(assert (=> d!59791 (= lt!121339 (select (arr!5686 (_keys!6566 thiss!1504)) (index!6424 lt!121179)))))

(assert (=> d!59791 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59791 (= (seekKeyOrZeroReturnVacant!0 (x!24199 lt!121179) (index!6424 lt!121179) (index!6424 lt!121179) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)) lt!121340)))

(declare-fun e!156595 () SeekEntryResult!1063)

(declare-fun b!241285 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!241285 (= e!156595 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24199 lt!121179) #b00000000000000000000000000000001) (nextIndex!0 (index!6424 lt!121179) (x!24199 lt!121179) (mask!10526 thiss!1504)) (index!6424 lt!121179) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(declare-fun b!241286 () Bool)

(declare-fun c!40203 () Bool)

(assert (=> b!241286 (= c!40203 (= lt!121339 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156594 () SeekEntryResult!1063)

(assert (=> b!241286 (= e!156594 e!156595)))

(declare-fun b!241287 () Bool)

(assert (=> b!241287 (= e!156593 e!156594)))

(declare-fun c!40201 () Bool)

(assert (=> b!241287 (= c!40201 (= lt!121339 key!932))))

(declare-fun b!241288 () Bool)

(assert (=> b!241288 (= e!156594 (Found!1063 (index!6424 lt!121179)))))

(declare-fun b!241289 () Bool)

(assert (=> b!241289 (= e!156595 (MissingVacant!1063 (index!6424 lt!121179)))))

(assert (= (and d!59791 c!40202) b!241284))

(assert (= (and d!59791 (not c!40202)) b!241287))

(assert (= (and b!241287 c!40201) b!241288))

(assert (= (and b!241287 (not c!40201)) b!241286))

(assert (= (and b!241286 c!40203) b!241289))

(assert (= (and b!241286 (not c!40203)) b!241285))

(declare-fun m!260585 () Bool)

(assert (=> d!59791 m!260585))

(declare-fun m!260587 () Bool)

(assert (=> d!59791 m!260587))

(assert (=> d!59791 m!260363))

(assert (=> d!59791 m!260329))

(declare-fun m!260589 () Bool)

(assert (=> b!241285 m!260589))

(assert (=> b!241285 m!260589))

(declare-fun m!260591 () Bool)

(assert (=> b!241285 m!260591))

(assert (=> b!241057 d!59791))

(declare-fun d!59793 () Bool)

(declare-fun e!156597 () Bool)

(assert (=> d!59793 e!156597))

(declare-fun res!118302 () Bool)

(assert (=> d!59793 (=> res!118302 e!156597)))

(declare-fun lt!121344 () Bool)

(assert (=> d!59793 (= res!118302 (not lt!121344))))

(declare-fun lt!121342 () Bool)

(assert (=> d!59793 (= lt!121344 lt!121342)))

(declare-fun lt!121343 () Unit!7414)

(declare-fun e!156596 () Unit!7414)

(assert (=> d!59793 (= lt!121343 e!156596)))

(declare-fun c!40204 () Bool)

(assert (=> d!59793 (= c!40204 lt!121342)))

(assert (=> d!59793 (= lt!121342 (containsKey!270 (toList!1846 lt!121252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59793 (= (contains!1728 lt!121252 #b1000000000000000000000000000000000000000000000000000000000000000) lt!121344)))

(declare-fun b!241290 () Bool)

(declare-fun lt!121341 () Unit!7414)

(assert (=> b!241290 (= e!156596 lt!121341)))

(assert (=> b!241290 (= lt!121341 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 lt!121252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241290 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241291 () Bool)

(declare-fun Unit!7428 () Unit!7414)

(assert (=> b!241291 (= e!156596 Unit!7428)))

(declare-fun b!241292 () Bool)

(assert (=> b!241292 (= e!156597 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59793 c!40204) b!241290))

(assert (= (and d!59793 (not c!40204)) b!241291))

(assert (= (and d!59793 (not res!118302)) b!241292))

(declare-fun m!260593 () Bool)

(assert (=> d!59793 m!260593))

(declare-fun m!260595 () Bool)

(assert (=> b!241290 m!260595))

(declare-fun m!260597 () Bool)

(assert (=> b!241290 m!260597))

(assert (=> b!241290 m!260597))

(declare-fun m!260599 () Bool)

(assert (=> b!241290 m!260599))

(assert (=> b!241292 m!260597))

(assert (=> b!241292 m!260597))

(assert (=> b!241292 m!260599))

(assert (=> bm!22434 d!59793))

(declare-fun d!59795 () Bool)

(declare-fun res!118307 () Bool)

(declare-fun e!156602 () Bool)

(assert (=> d!59795 (=> res!118307 e!156602)))

(assert (=> d!59795 (= res!118307 (and ((_ is Cons!3636) (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) (= (_1!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) key!932)))))

(assert (=> d!59795 (= (containsKey!270 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932) e!156602)))

(declare-fun b!241297 () Bool)

(declare-fun e!156603 () Bool)

(assert (=> b!241297 (= e!156602 e!156603)))

(declare-fun res!118308 () Bool)

(assert (=> b!241297 (=> (not res!118308) (not e!156603))))

(assert (=> b!241297 (= res!118308 (and (or (not ((_ is Cons!3636) (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) (bvsle (_1!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) key!932)) ((_ is Cons!3636) (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) (bvslt (_1!2377 (h!4292 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))))) key!932)))))

(declare-fun b!241298 () Bool)

(assert (=> b!241298 (= e!156603 (containsKey!270 (t!8643 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))) key!932))))

(assert (= (and d!59795 (not res!118307)) b!241297))

(assert (= (and b!241297 res!118308) b!241298))

(declare-fun m!260601 () Bool)

(assert (=> b!241298 m!260601))

(assert (=> d!59731 d!59795))

(assert (=> bm!22417 d!59713))

(declare-fun d!59797 () Bool)

(assert (=> d!59797 (= (inRange!0 (index!6423 lt!121161) (mask!10526 thiss!1504)) (and (bvsge (index!6423 lt!121161) #b00000000000000000000000000000000) (bvslt (index!6423 lt!121161) (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!241005 d!59797))

(declare-fun d!59799 () Bool)

(assert (=> d!59799 (= (inRange!0 (ite c!40131 (index!6422 lt!121171) (index!6425 lt!121171)) (mask!10526 thiss!1504)) (and (bvsge (ite c!40131 (index!6422 lt!121171) (index!6425 lt!121171)) #b00000000000000000000000000000000) (bvslt (ite c!40131 (index!6422 lt!121171) (index!6425 lt!121171)) (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22416 d!59799))

(assert (=> d!59733 d!59739))

(declare-fun d!59801 () Bool)

(declare-fun e!156604 () Bool)

(assert (=> d!59801 e!156604))

(declare-fun res!118309 () Bool)

(assert (=> d!59801 (=> (not res!118309) (not e!156604))))

(declare-fun lt!121345 () ListLongMap!3661)

(assert (=> d!59801 (= res!118309 (contains!1728 lt!121345 (_1!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))))

(declare-fun lt!121346 () List!3640)

(assert (=> d!59801 (= lt!121345 (ListLongMap!3662 lt!121346))))

(declare-fun lt!121347 () Unit!7414)

(declare-fun lt!121348 () Unit!7414)

(assert (=> d!59801 (= lt!121347 lt!121348)))

(assert (=> d!59801 (= (getValueByKey!278 lt!121346 (_1!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))) (Some!283 (_2!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))))

(assert (=> d!59801 (= lt!121348 (lemmaContainsTupThenGetReturnValue!156 lt!121346 (_1!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))) (_2!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))))

(assert (=> d!59801 (= lt!121346 (insertStrictlySorted!158 (toList!1846 (ite c!40162 call!22437 (ite c!40159 call!22440 call!22436))) (_1!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))) (_2!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))))

(assert (=> d!59801 (= (+!643 (ite c!40162 call!22437 (ite c!40159 call!22440 call!22436)) (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))) lt!121345)))

(declare-fun b!241299 () Bool)

(declare-fun res!118310 () Bool)

(assert (=> b!241299 (=> (not res!118310) (not e!156604))))

(assert (=> b!241299 (= res!118310 (= (getValueByKey!278 (toList!1846 lt!121345) (_1!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))) (Some!283 (_2!2377 (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))))

(declare-fun b!241300 () Bool)

(assert (=> b!241300 (= e!156604 (contains!1730 (toList!1846 lt!121345) (ite (or c!40162 c!40159) (tuple2!4735 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4305 thiss!1504)) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(assert (= (and d!59801 res!118309) b!241299))

(assert (= (and b!241299 res!118310) b!241300))

(declare-fun m!260603 () Bool)

(assert (=> d!59801 m!260603))

(declare-fun m!260605 () Bool)

(assert (=> d!59801 m!260605))

(declare-fun m!260607 () Bool)

(assert (=> d!59801 m!260607))

(declare-fun m!260609 () Bool)

(assert (=> d!59801 m!260609))

(declare-fun m!260611 () Bool)

(assert (=> b!241299 m!260611))

(declare-fun m!260613 () Bool)

(assert (=> b!241300 m!260613))

(assert (=> bm!22436 d!59801))

(declare-fun d!59803 () Bool)

(assert (=> d!59803 (= (apply!221 lt!121252 (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000)) (get!2920 (getValueByKey!278 (toList!1846 lt!121252) (select (arr!5686 (_keys!6566 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8844 () Bool)

(assert (= bs!8844 d!59803))

(assert (=> bs!8844 m!260323))

(assert (=> bs!8844 m!260563))

(assert (=> bs!8844 m!260563))

(declare-fun m!260615 () Bool)

(assert (=> bs!8844 m!260615))

(assert (=> b!241110 d!59803))

(declare-fun d!59805 () Bool)

(declare-fun c!40207 () Bool)

(assert (=> d!59805 (= c!40207 ((_ is ValueCellFull!2829) (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!156607 () V!8107)

(assert (=> d!59805 (= (get!2919 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!156607)))

(declare-fun b!241305 () Bool)

(declare-fun get!2921 (ValueCell!2829 V!8107) V!8107)

(assert (=> b!241305 (= e!156607 (get!2921 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!241306 () Bool)

(declare-fun get!2922 (ValueCell!2829 V!8107) V!8107)

(assert (=> b!241306 (= e!156607 (get!2922 (select (arr!5685 (_values!4447 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!559 (defaultEntry!4464 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59805 c!40207) b!241305))

(assert (= (and d!59805 (not c!40207)) b!241306))

(assert (=> b!241305 m!260421))

(assert (=> b!241305 m!260423))

(declare-fun m!260617 () Bool)

(assert (=> b!241305 m!260617))

(assert (=> b!241306 m!260421))

(assert (=> b!241306 m!260423))

(declare-fun m!260619 () Bool)

(assert (=> b!241306 m!260619))

(assert (=> b!241110 d!59805))

(assert (=> bm!22437 d!59761))

(assert (=> b!241127 d!59773))

(declare-fun d!59807 () Bool)

(assert (=> d!59807 (= (apply!221 lt!121252 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2920 (getValueByKey!278 (toList!1846 lt!121252) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8845 () Bool)

(assert (= bs!8845 d!59807))

(assert (=> bs!8845 m!260597))

(assert (=> bs!8845 m!260597))

(declare-fun m!260621 () Bool)

(assert (=> bs!8845 m!260621))

(assert (=> b!241111 d!59807))

(declare-fun d!59809 () Bool)

(declare-fun e!156609 () Bool)

(assert (=> d!59809 e!156609))

(declare-fun res!118311 () Bool)

(assert (=> d!59809 (=> res!118311 e!156609)))

(declare-fun lt!121352 () Bool)

(assert (=> d!59809 (= res!118311 (not lt!121352))))

(declare-fun lt!121350 () Bool)

(assert (=> d!59809 (= lt!121352 lt!121350)))

(declare-fun lt!121351 () Unit!7414)

(declare-fun e!156608 () Unit!7414)

(assert (=> d!59809 (= lt!121351 e!156608)))

(declare-fun c!40208 () Bool)

(assert (=> d!59809 (= c!40208 lt!121350)))

(assert (=> d!59809 (= lt!121350 (containsKey!270 (toList!1846 lt!121252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59809 (= (contains!1728 lt!121252 #b0000000000000000000000000000000000000000000000000000000000000000) lt!121352)))

(declare-fun b!241307 () Bool)

(declare-fun lt!121349 () Unit!7414)

(assert (=> b!241307 (= e!156608 lt!121349)))

(assert (=> b!241307 (= lt!121349 (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 lt!121252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241307 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241308 () Bool)

(declare-fun Unit!7429 () Unit!7414)

(assert (=> b!241308 (= e!156608 Unit!7429)))

(declare-fun b!241309 () Bool)

(assert (=> b!241309 (= e!156609 (isDefined!220 (getValueByKey!278 (toList!1846 lt!121252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59809 c!40208) b!241307))

(assert (= (and d!59809 (not c!40208)) b!241308))

(assert (= (and d!59809 (not res!118311)) b!241309))

(declare-fun m!260623 () Bool)

(assert (=> d!59809 m!260623))

(declare-fun m!260625 () Bool)

(assert (=> b!241307 m!260625))

(declare-fun m!260627 () Bool)

(assert (=> b!241307 m!260627))

(assert (=> b!241307 m!260627))

(declare-fun m!260629 () Bool)

(assert (=> b!241307 m!260629))

(assert (=> b!241309 m!260627))

(assert (=> b!241309 m!260627))

(assert (=> b!241309 m!260629))

(assert (=> bm!22432 d!59809))

(declare-fun b!241328 () Bool)

(declare-fun e!156623 () SeekEntryResult!1063)

(declare-fun e!156621 () SeekEntryResult!1063)

(assert (=> b!241328 (= e!156623 e!156621)))

(declare-fun c!40215 () Bool)

(declare-fun lt!121358 () (_ BitVec 64))

(assert (=> b!241328 (= c!40215 (or (= lt!121358 key!932) (= (bvadd lt!121358 lt!121358) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!241329 () Bool)

(assert (=> b!241329 (= e!156621 (Intermediate!1063 false (toIndex!0 key!932 (mask!10526 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!241330 () Bool)

(declare-fun lt!121357 () SeekEntryResult!1063)

(assert (=> b!241330 (and (bvsge (index!6424 lt!121357) #b00000000000000000000000000000000) (bvslt (index!6424 lt!121357) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun res!118318 () Bool)

(assert (=> b!241330 (= res!118318 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6424 lt!121357)) key!932))))

(declare-fun e!156622 () Bool)

(assert (=> b!241330 (=> res!118318 e!156622)))

(declare-fun e!156624 () Bool)

(assert (=> b!241330 (= e!156624 e!156622)))

(declare-fun b!241331 () Bool)

(declare-fun e!156620 () Bool)

(assert (=> b!241331 (= e!156620 (bvsge (x!24199 lt!121357) #b01111111111111111111111111111110))))

(declare-fun b!241332 () Bool)

(assert (=> b!241332 (= e!156620 e!156624)))

(declare-fun res!118320 () Bool)

(assert (=> b!241332 (= res!118320 (and ((_ is Intermediate!1063) lt!121357) (not (undefined!1875 lt!121357)) (bvslt (x!24199 lt!121357) #b01111111111111111111111111111110) (bvsge (x!24199 lt!121357) #b00000000000000000000000000000000) (bvsge (x!24199 lt!121357) #b00000000000000000000000000000000)))))

(assert (=> b!241332 (=> (not res!118320) (not e!156624))))

(declare-fun d!59811 () Bool)

(assert (=> d!59811 e!156620))

(declare-fun c!40216 () Bool)

(assert (=> d!59811 (= c!40216 (and ((_ is Intermediate!1063) lt!121357) (undefined!1875 lt!121357)))))

(assert (=> d!59811 (= lt!121357 e!156623)))

(declare-fun c!40217 () Bool)

(assert (=> d!59811 (= c!40217 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!59811 (= lt!121358 (select (arr!5686 (_keys!6566 thiss!1504)) (toIndex!0 key!932 (mask!10526 thiss!1504))))))

(assert (=> d!59811 (validMask!0 (mask!10526 thiss!1504))))

(assert (=> d!59811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10526 thiss!1504)) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)) lt!121357)))

(declare-fun b!241333 () Bool)

(assert (=> b!241333 (= e!156623 (Intermediate!1063 true (toIndex!0 key!932 (mask!10526 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!241334 () Bool)

(assert (=> b!241334 (and (bvsge (index!6424 lt!121357) #b00000000000000000000000000000000) (bvslt (index!6424 lt!121357) (size!6027 (_keys!6566 thiss!1504))))))

(assert (=> b!241334 (= e!156622 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6424 lt!121357)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241335 () Bool)

(assert (=> b!241335 (and (bvsge (index!6424 lt!121357) #b00000000000000000000000000000000) (bvslt (index!6424 lt!121357) (size!6027 (_keys!6566 thiss!1504))))))

(declare-fun res!118319 () Bool)

(assert (=> b!241335 (= res!118319 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6424 lt!121357)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241335 (=> res!118319 e!156622)))

(declare-fun b!241336 () Bool)

(assert (=> b!241336 (= e!156621 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10526 thiss!1504)) #b00000000000000000000000000000000 (mask!10526 thiss!1504)) key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(assert (= (and d!59811 c!40217) b!241333))

(assert (= (and d!59811 (not c!40217)) b!241328))

(assert (= (and b!241328 c!40215) b!241329))

(assert (= (and b!241328 (not c!40215)) b!241336))

(assert (= (and d!59811 c!40216) b!241331))

(assert (= (and d!59811 (not c!40216)) b!241332))

(assert (= (and b!241332 res!118320) b!241330))

(assert (= (and b!241330 (not res!118318)) b!241335))

(assert (= (and b!241335 (not res!118319)) b!241334))

(declare-fun m!260631 () Bool)

(assert (=> b!241330 m!260631))

(assert (=> b!241336 m!260353))

(declare-fun m!260633 () Bool)

(assert (=> b!241336 m!260633))

(assert (=> b!241336 m!260633))

(declare-fun m!260635 () Bool)

(assert (=> b!241336 m!260635))

(assert (=> d!59811 m!260353))

(declare-fun m!260637 () Bool)

(assert (=> d!59811 m!260637))

(assert (=> d!59811 m!260329))

(assert (=> b!241335 m!260631))

(assert (=> b!241334 m!260631))

(assert (=> d!59727 d!59811))

(declare-fun d!59813 () Bool)

(declare-fun lt!121364 () (_ BitVec 32))

(declare-fun lt!121363 () (_ BitVec 32))

(assert (=> d!59813 (= lt!121364 (bvmul (bvxor lt!121363 (bvlshr lt!121363 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59813 (= lt!121363 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59813 (and (bvsge (mask!10526 thiss!1504) #b00000000000000000000000000000000) (let ((res!118321 (let ((h!4295 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24218 (bvmul (bvxor h!4295 (bvlshr h!4295 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24218 (bvlshr x!24218 #b00000000000000000000000000001101)) (mask!10526 thiss!1504)))))) (and (bvslt res!118321 (bvadd (mask!10526 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!118321 #b00000000000000000000000000000000))))))

(assert (=> d!59813 (= (toIndex!0 key!932 (mask!10526 thiss!1504)) (bvand (bvxor lt!121364 (bvlshr lt!121364 #b00000000000000000000000000001101)) (mask!10526 thiss!1504)))))

(assert (=> d!59727 d!59813))

(assert (=> d!59727 d!59739))

(declare-fun d!59815 () Bool)

(assert (=> d!59815 (= (apply!221 lt!121252 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2920 (getValueByKey!278 (toList!1846 lt!121252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8846 () Bool)

(assert (= bs!8846 d!59815))

(assert (=> bs!8846 m!260627))

(assert (=> bs!8846 m!260627))

(declare-fun m!260639 () Bool)

(assert (=> bs!8846 m!260639))

(assert (=> b!241113 d!59815))

(declare-fun d!59817 () Bool)

(assert (=> d!59817 (isDefined!220 (getValueByKey!278 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(declare-fun lt!121367 () Unit!7414)

(declare-fun choose!1129 (List!3640 (_ BitVec 64)) Unit!7414)

(assert (=> d!59817 (= lt!121367 (choose!1129 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(declare-fun e!156627 () Bool)

(assert (=> d!59817 e!156627))

(declare-fun res!118324 () Bool)

(assert (=> d!59817 (=> (not res!118324) (not e!156627))))

(declare-fun isStrictlySorted!362 (List!3640) Bool)

(assert (=> d!59817 (= res!118324 (isStrictlySorted!362 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)))))))

(assert (=> d!59817 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!219 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932) lt!121367)))

(declare-fun b!241339 () Bool)

(assert (=> b!241339 (= e!156627 (containsKey!270 (toList!1846 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504))) key!932))))

(assert (= (and d!59817 res!118324) b!241339))

(assert (=> d!59817 m!260371))

(assert (=> d!59817 m!260371))

(assert (=> d!59817 m!260373))

(declare-fun m!260641 () Bool)

(assert (=> d!59817 m!260641))

(declare-fun m!260643 () Bool)

(assert (=> d!59817 m!260643))

(assert (=> b!241339 m!260367))

(assert (=> b!241064 d!59817))

(assert (=> b!241064 d!59775))

(assert (=> b!241064 d!59777))

(assert (=> d!59721 d!59731))

(assert (=> d!59721 d!59733))

(declare-fun d!59819 () Bool)

(assert (=> d!59819 (contains!1728 (getCurrentListMap!1369 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) key!932)))

(assert (=> d!59819 true))

(declare-fun _$17!65 () Unit!7414)

(assert (=> d!59819 (= (choose!1125 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4464 thiss!1504)) _$17!65)))

(declare-fun bs!8847 () Bool)

(assert (= bs!8847 d!59819))

(assert (=> bs!8847 m!260273))

(assert (=> bs!8847 m!260273))

(assert (=> bs!8847 m!260275))

(assert (=> d!59721 d!59819))

(assert (=> d!59721 d!59739))

(assert (=> d!59723 d!59727))

(declare-fun b!241356 () Bool)

(declare-fun e!156638 () Bool)

(declare-fun lt!121370 () SeekEntryResult!1063)

(assert (=> b!241356 (= e!156638 ((_ is Undefined!1063) lt!121370))))

(declare-fun b!241357 () Bool)

(declare-fun res!118336 () Bool)

(declare-fun e!156636 () Bool)

(assert (=> b!241357 (=> (not res!118336) (not e!156636))))

(declare-fun call!22458 () Bool)

(assert (=> b!241357 (= res!118336 call!22458)))

(assert (=> b!241357 (= e!156638 e!156636)))

(declare-fun b!241358 () Bool)

(declare-fun call!22459 () Bool)

(assert (=> b!241358 (= e!156636 (not call!22459))))

(declare-fun b!241359 () Bool)

(declare-fun res!118333 () Bool)

(assert (=> b!241359 (= res!118333 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6422 lt!121370)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156639 () Bool)

(assert (=> b!241359 (=> (not res!118333) (not e!156639))))

(declare-fun bm!22455 () Bool)

(assert (=> bm!22455 (= call!22459 (arrayContainsKey!0 (_keys!6566 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!22456 () Bool)

(declare-fun c!40222 () Bool)

(assert (=> bm!22456 (= call!22458 (inRange!0 (ite c!40222 (index!6422 lt!121370) (index!6425 lt!121370)) (mask!10526 thiss!1504)))))

(declare-fun b!241361 () Bool)

(declare-fun e!156637 () Bool)

(assert (=> b!241361 (= e!156637 e!156639)))

(declare-fun res!118335 () Bool)

(assert (=> b!241361 (= res!118335 call!22458)))

(assert (=> b!241361 (=> (not res!118335) (not e!156639))))

(declare-fun d!59821 () Bool)

(assert (=> d!59821 e!156637))

(assert (=> d!59821 (= c!40222 ((_ is MissingZero!1063) lt!121370))))

(assert (=> d!59821 (= lt!121370 (seekEntryOrOpen!0 key!932 (_keys!6566 thiss!1504) (mask!10526 thiss!1504)))))

(assert (=> d!59821 true))

(declare-fun _$34!1098 () Unit!7414)

(assert (=> d!59821 (= (choose!1126 (_keys!6566 thiss!1504) (_values!4447 thiss!1504) (mask!10526 thiss!1504) (extraKeys!4201 thiss!1504) (zeroValue!4305 thiss!1504) (minValue!4305 thiss!1504) key!932 (defaultEntry!4464 thiss!1504)) _$34!1098)))

(declare-fun b!241360 () Bool)

(assert (=> b!241360 (= e!156637 e!156638)))

(declare-fun c!40223 () Bool)

(assert (=> b!241360 (= c!40223 ((_ is MissingVacant!1063) lt!121370))))

(declare-fun b!241362 () Bool)

(declare-fun res!118334 () Bool)

(assert (=> b!241362 (=> (not res!118334) (not e!156636))))

(assert (=> b!241362 (= res!118334 (= (select (arr!5686 (_keys!6566 thiss!1504)) (index!6425 lt!121370)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241363 () Bool)

(assert (=> b!241363 (= e!156639 (not call!22459))))

(assert (= (and d!59821 c!40222) b!241361))

(assert (= (and d!59821 (not c!40222)) b!241360))

(assert (= (and b!241361 res!118335) b!241359))

(assert (= (and b!241359 res!118333) b!241363))

(assert (= (and b!241360 c!40223) b!241357))

(assert (= (and b!241360 (not c!40223)) b!241356))

(assert (= (and b!241357 res!118336) b!241362))

(assert (= (and b!241362 res!118334) b!241358))

(assert (= (or b!241361 b!241357) bm!22456))

(assert (= (or b!241363 b!241358) bm!22455))

(declare-fun m!260645 () Bool)

(assert (=> b!241359 m!260645))

(declare-fun m!260647 () Bool)

(assert (=> b!241362 m!260647))

(assert (=> d!59821 m!260291))

(assert (=> bm!22455 m!260285))

(declare-fun m!260649 () Bool)

(assert (=> bm!22456 m!260649))

(assert (=> d!59723 d!59821))

(assert (=> d!59723 d!59739))

(declare-fun d!59823 () Bool)

(declare-fun e!156640 () Bool)

(assert (=> d!59823 e!156640))

(declare-fun res!118337 () Bool)

(assert (=> d!59823 (=> (not res!118337) (not e!156640))))

(declare-fun lt!121371 () ListLongMap!3661)

(assert (=> d!59823 (= res!118337 (contains!1728 lt!121371 (_1!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(declare-fun lt!121372 () List!3640)

(assert (=> d!59823 (= lt!121371 (ListLongMap!3662 lt!121372))))

(declare-fun lt!121373 () Unit!7414)

(declare-fun lt!121374 () Unit!7414)

(assert (=> d!59823 (= lt!121373 lt!121374)))

(assert (=> d!59823 (= (getValueByKey!278 lt!121372 (_1!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(assert (=> d!59823 (= lt!121374 (lemmaContainsTupThenGetReturnValue!156 lt!121372 (_1!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(assert (=> d!59823 (= lt!121372 (insertStrictlySorted!158 (toList!1846 call!22438) (_1!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))) (_2!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))))))

(assert (=> d!59823 (= (+!643 call!22438 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))) lt!121371)))

(declare-fun b!241364 () Bool)

(declare-fun res!118338 () Bool)

(assert (=> b!241364 (=> (not res!118338) (not e!156640))))

(assert (=> b!241364 (= res!118338 (= (getValueByKey!278 (toList!1846 lt!121371) (_1!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504)))) (Some!283 (_2!2377 (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))))

(declare-fun b!241365 () Bool)

(assert (=> b!241365 (= e!156640 (contains!1730 (toList!1846 lt!121371) (tuple2!4735 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4305 thiss!1504))))))

(assert (= (and d!59823 res!118337) b!241364))

(assert (= (and b!241364 res!118338) b!241365))

(declare-fun m!260651 () Bool)

(assert (=> d!59823 m!260651))

(declare-fun m!260653 () Bool)

(assert (=> d!59823 m!260653))

(declare-fun m!260655 () Bool)

(assert (=> d!59823 m!260655))

(declare-fun m!260657 () Bool)

(assert (=> d!59823 m!260657))

(declare-fun m!260659 () Bool)

(assert (=> b!241364 m!260659))

(declare-fun m!260661 () Bool)

(assert (=> b!241365 m!260661))

(assert (=> b!241112 d!59823))

(declare-fun mapNonEmpty!10756 () Bool)

(declare-fun mapRes!10756 () Bool)

(declare-fun tp!22663 () Bool)

(declare-fun e!156642 () Bool)

(assert (=> mapNonEmpty!10756 (= mapRes!10756 (and tp!22663 e!156642))))

(declare-fun mapValue!10756 () ValueCell!2829)

(declare-fun mapRest!10756 () (Array (_ BitVec 32) ValueCell!2829))

(declare-fun mapKey!10756 () (_ BitVec 32))

(assert (=> mapNonEmpty!10756 (= mapRest!10755 (store mapRest!10756 mapKey!10756 mapValue!10756))))

(declare-fun mapIsEmpty!10756 () Bool)

(assert (=> mapIsEmpty!10756 mapRes!10756))

(declare-fun b!241366 () Bool)

(assert (=> b!241366 (= e!156642 tp_is_empty!6345)))

(declare-fun condMapEmpty!10756 () Bool)

(declare-fun mapDefault!10756 () ValueCell!2829)

(assert (=> mapNonEmpty!10755 (= condMapEmpty!10756 (= mapRest!10755 ((as const (Array (_ BitVec 32) ValueCell!2829)) mapDefault!10756)))))

(declare-fun e!156641 () Bool)

(assert (=> mapNonEmpty!10755 (= tp!22662 (and e!156641 mapRes!10756))))

(declare-fun b!241367 () Bool)

(assert (=> b!241367 (= e!156641 tp_is_empty!6345)))

(assert (= (and mapNonEmpty!10755 condMapEmpty!10756) mapIsEmpty!10756))

(assert (= (and mapNonEmpty!10755 (not condMapEmpty!10756)) mapNonEmpty!10756))

(assert (= (and mapNonEmpty!10756 ((_ is ValueCellFull!2829) mapValue!10756)) b!241366))

(assert (= (and mapNonEmpty!10755 ((_ is ValueCellFull!2829) mapDefault!10756)) b!241367))

(declare-fun m!260663 () Bool)

(assert (=> mapNonEmpty!10756 m!260663))

(declare-fun b_lambda!8017 () Bool)

(assert (= b_lambda!8015 (or (and b!240924 b_free!6483) b_lambda!8017)))

(declare-fun b_lambda!8019 () Bool)

(assert (= b_lambda!8013 (or (and b!240924 b_free!6483) b_lambda!8019)))

(check-sat (not b_next!6483) (not b!241199) (not b!241305) (not d!59743) (not b!241193) (not b!241226) (not b_lambda!8011) (not b!241150) (not b!241306) (not b!241270) (not d!59815) (not d!59809) (not b!241151) (not b!241240) (not d!59751) (not bm!22455) (not bm!22441) (not b!241198) (not b!241365) (not d!59801) (not b!241253) (not b!241190) (not b!241230) (not d!59775) (not d!59747) (not d!59803) (not b!241192) (not b!241201) (not b_lambda!8017) (not b!241225) (not b!241290) (not d!59759) (not b!241144) (not bm!22447) (not d!59757) (not b!241214) (not b!241197) (not b!241339) (not b!241299) (not d!59769) (not d!59761) (not b!241163) b_and!13475 (not d!59811) (not b!241268) (not d!59741) (not b!241285) (not bm!22456) (not d!59781) (not b_lambda!8019) (not d!59779) (not d!59771) (not b!241307) (not b!241191) (not b!241228) (not bm!22444) (not d!59791) (not b!241161) tp_is_empty!6345 (not d!59745) (not b!241156) (not b!241300) (not bm!22450) (not d!59755) (not b!241259) (not b!241256) (not d!59817) (not b!241309) (not d!59753) (not mapNonEmpty!10756) (not d!59763) (not b!241257) (not b!241153) (not b!241200) (not b!241364) (not d!59823) (not b!241292) (not d!59807) (not d!59793) (not d!59767) (not d!59819) (not d!59821) (not b!241154) (not b!241155) (not d!59737) (not d!59749) (not b!241336) (not b!241298) (not d!59765) (not b!241194))
(check-sat b_and!13475 (not b_next!6483))
