; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21918 () Bool)

(assert start!21918)

(declare-fun b!222205 () Bool)

(declare-fun b_free!5973 () Bool)

(declare-fun b_next!5973 () Bool)

(assert (=> b!222205 (= b_free!5973 (not b_next!5973))))

(declare-fun tp!21060 () Bool)

(declare-fun b_and!12889 () Bool)

(assert (=> b!222205 (= tp!21060 b_and!12889)))

(declare-fun b!222200 () Bool)

(declare-fun e!144410 () Bool)

(declare-fun tp_is_empty!5835 () Bool)

(assert (=> b!222200 (= e!144410 tp_is_empty!5835)))

(declare-fun b!222201 () Bool)

(declare-datatypes ((Unit!6653 0))(
  ( (Unit!6654) )
))
(declare-fun e!144413 () Unit!6653)

(declare-fun Unit!6655 () Unit!6653)

(assert (=> b!222201 (= e!144413 Unit!6655)))

(declare-fun lt!112632 () Unit!6653)

(declare-datatypes ((V!7427 0))(
  ( (V!7428 (val!2962 Int)) )
))
(declare-datatypes ((ValueCell!2574 0))(
  ( (ValueCellFull!2574 (v!4978 V!7427)) (EmptyCell!2574) )
))
(declare-datatypes ((array!10912 0))(
  ( (array!10913 (arr!5175 (Array (_ BitVec 32) ValueCell!2574)) (size!5508 (_ BitVec 32))) )
))
(declare-datatypes ((array!10914 0))(
  ( (array!10915 (arr!5176 (Array (_ BitVec 32) (_ BitVec 64))) (size!5509 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3048 0))(
  ( (LongMapFixedSize!3049 (defaultEntry!4183 Int) (mask!10001 (_ BitVec 32)) (extraKeys!3920 (_ BitVec 32)) (zeroValue!4024 V!7427) (minValue!4024 V!7427) (_size!1573 (_ BitVec 32)) (_keys!6237 array!10914) (_values!4166 array!10912) (_vacant!1573 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3048)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!224 (array!10914 array!10912 (_ BitVec 32) (_ BitVec 32) V!7427 V!7427 (_ BitVec 64) Int) Unit!6653)

(assert (=> b!222201 (= lt!112632 (lemmaInListMapThenSeekEntryOrOpenFindsIt!224 (_keys!6237 thiss!1504) (_values!4166 thiss!1504) (mask!10001 thiss!1504) (extraKeys!3920 thiss!1504) (zeroValue!4024 thiss!1504) (minValue!4024 thiss!1504) key!932 (defaultEntry!4183 thiss!1504)))))

(assert (=> b!222201 false))

(declare-fun b!222202 () Bool)

(declare-fun c!36916 () Bool)

(declare-datatypes ((SeekEntryResult!845 0))(
  ( (MissingZero!845 (index!5550 (_ BitVec 32))) (Found!845 (index!5551 (_ BitVec 32))) (Intermediate!845 (undefined!1657 Bool) (index!5552 (_ BitVec 32)) (x!23057 (_ BitVec 32))) (Undefined!845) (MissingVacant!845 (index!5553 (_ BitVec 32))) )
))
(declare-fun lt!112631 () SeekEntryResult!845)

(get-info :version)

(assert (=> b!222202 (= c!36916 ((_ is MissingVacant!845) lt!112631))))

(declare-fun e!144411 () Bool)

(declare-fun e!144421 () Bool)

(assert (=> b!222202 (= e!144411 e!144421)))

(declare-fun b!222203 () Bool)

(declare-fun res!109093 () Bool)

(assert (=> b!222203 (= res!109093 (= (select (arr!5176 (_keys!6237 thiss!1504)) (index!5553 lt!112631)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!144407 () Bool)

(assert (=> b!222203 (=> (not res!109093) (not e!144407))))

(declare-fun b!222204 () Bool)

(assert (=> b!222204 (= e!144421 e!144407)))

(declare-fun res!109096 () Bool)

(declare-fun call!20752 () Bool)

(assert (=> b!222204 (= res!109096 call!20752)))

(assert (=> b!222204 (=> (not res!109096) (not e!144407))))

(declare-fun e!144408 () Bool)

(declare-fun e!144423 () Bool)

(declare-fun array_inv!3417 (array!10914) Bool)

(declare-fun array_inv!3418 (array!10912) Bool)

(assert (=> b!222205 (= e!144408 (and tp!21060 tp_is_empty!5835 (array_inv!3417 (_keys!6237 thiss!1504)) (array_inv!3418 (_values!4166 thiss!1504)) e!144423))))

(declare-fun b!222206 () Bool)

(declare-fun e!144409 () Bool)

(declare-fun call!20751 () Bool)

(assert (=> b!222206 (= e!144409 (not call!20751))))

(declare-fun res!109089 () Bool)

(declare-fun e!144424 () Bool)

(assert (=> start!21918 (=> (not res!109089) (not e!144424))))

(declare-fun valid!1222 (LongMapFixedSize!3048) Bool)

(assert (=> start!21918 (= res!109089 (valid!1222 thiss!1504))))

(assert (=> start!21918 e!144424))

(assert (=> start!21918 e!144408))

(assert (=> start!21918 true))

(declare-fun b!222207 () Bool)

(declare-fun res!109084 () Bool)

(assert (=> b!222207 (=> (not res!109084) (not e!144409))))

(assert (=> b!222207 (= res!109084 (= (select (arr!5176 (_keys!6237 thiss!1504)) (index!5550 lt!112631)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222208 () Bool)

(declare-fun e!144416 () Bool)

(assert (=> b!222208 (= e!144416 false)))

(declare-fun lt!112630 () Bool)

(declare-datatypes ((List!3321 0))(
  ( (Nil!3318) (Cons!3317 (h!3965 (_ BitVec 64)) (t!8288 List!3321)) )
))
(declare-fun arrayNoDuplicates!0 (array!10914 (_ BitVec 32) List!3321) Bool)

(assert (=> b!222208 (= lt!112630 (arrayNoDuplicates!0 (_keys!6237 thiss!1504) #b00000000000000000000000000000000 Nil!3318))))

(declare-fun bm!20748 () Bool)

(declare-fun c!36917 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20748 (= call!20752 (inRange!0 (ite c!36917 (index!5550 lt!112631) (index!5553 lt!112631)) (mask!10001 thiss!1504)))))

(declare-fun b!222209 () Bool)

(declare-fun e!144417 () Unit!6653)

(declare-fun Unit!6656 () Unit!6653)

(assert (=> b!222209 (= e!144417 Unit!6656)))

(declare-fun b!222210 () Bool)

(declare-fun res!109099 () Bool)

(assert (=> b!222210 (=> (not res!109099) (not e!144409))))

(assert (=> b!222210 (= res!109099 call!20752)))

(assert (=> b!222210 (= e!144411 e!144409)))

(declare-fun b!222211 () Bool)

(declare-fun e!144420 () Bool)

(declare-fun e!144412 () Bool)

(assert (=> b!222211 (= e!144420 e!144412)))

(declare-fun res!109086 () Bool)

(assert (=> b!222211 (=> (not res!109086) (not e!144412))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222211 (= res!109086 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222212 () Bool)

(assert (=> b!222212 (= e!144407 (not call!20751))))

(declare-fun b!222213 () Bool)

(declare-fun e!144422 () Bool)

(assert (=> b!222213 (= e!144424 e!144422)))

(declare-fun res!109091 () Bool)

(assert (=> b!222213 (=> (not res!109091) (not e!144422))))

(assert (=> b!222213 (= res!109091 (or (= lt!112631 (MissingZero!845 index!297)) (= lt!112631 (MissingVacant!845 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10914 (_ BitVec 32)) SeekEntryResult!845)

(assert (=> b!222213 (= lt!112631 (seekEntryOrOpen!0 key!932 (_keys!6237 thiss!1504) (mask!10001 thiss!1504)))))

(declare-fun b!222214 () Bool)

(declare-fun mapRes!9922 () Bool)

(assert (=> b!222214 (= e!144423 (and e!144410 mapRes!9922))))

(declare-fun condMapEmpty!9922 () Bool)

(declare-fun mapDefault!9922 () ValueCell!2574)

(assert (=> b!222214 (= condMapEmpty!9922 (= (arr!5175 (_values!4166 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2574)) mapDefault!9922)))))

(declare-fun b!222215 () Bool)

(declare-fun e!144418 () Bool)

(assert (=> b!222215 (= e!144418 e!144416)))

(declare-fun res!109092 () Bool)

(assert (=> b!222215 (=> (not res!109092) (not e!144416))))

(assert (=> b!222215 (= res!109092 (and (bvslt (size!5509 (_keys!6237 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5509 (_keys!6237 thiss!1504)))))))

(declare-fun lt!112627 () Unit!6653)

(assert (=> b!222215 (= lt!112627 e!144417)))

(declare-fun c!36915 () Bool)

(declare-fun arrayContainsKey!0 (array!10914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222215 (= c!36915 (arrayContainsKey!0 (_keys!6237 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222216 () Bool)

(declare-fun lt!112626 () Unit!6653)

(assert (=> b!222216 (= e!144413 lt!112626)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!232 (array!10914 array!10912 (_ BitVec 32) (_ BitVec 32) V!7427 V!7427 (_ BitVec 64) Int) Unit!6653)

(assert (=> b!222216 (= lt!112626 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!232 (_keys!6237 thiss!1504) (_values!4166 thiss!1504) (mask!10001 thiss!1504) (extraKeys!3920 thiss!1504) (zeroValue!4024 thiss!1504) (minValue!4024 thiss!1504) key!932 (defaultEntry!4183 thiss!1504)))))

(assert (=> b!222216 (= c!36917 ((_ is MissingZero!845) lt!112631))))

(assert (=> b!222216 e!144411))

(declare-fun b!222217 () Bool)

(declare-fun res!109088 () Bool)

(assert (=> b!222217 (=> (not res!109088) (not e!144416))))

(declare-fun contains!1520 (List!3321 (_ BitVec 64)) Bool)

(assert (=> b!222217 (= res!109088 (not (contains!1520 Nil!3318 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222218 () Bool)

(assert (=> b!222218 (= e!144422 e!144418)))

(declare-fun res!109094 () Bool)

(assert (=> b!222218 (=> (not res!109094) (not e!144418))))

(assert (=> b!222218 (= res!109094 (inRange!0 index!297 (mask!10001 thiss!1504)))))

(declare-fun lt!112629 () Unit!6653)

(assert (=> b!222218 (= lt!112629 e!144413)))

(declare-fun c!36914 () Bool)

(declare-datatypes ((tuple2!4394 0))(
  ( (tuple2!4395 (_1!2207 (_ BitVec 64)) (_2!2207 V!7427)) )
))
(declare-datatypes ((List!3322 0))(
  ( (Nil!3319) (Cons!3318 (h!3966 tuple2!4394) (t!8289 List!3322)) )
))
(declare-datatypes ((ListLongMap!3321 0))(
  ( (ListLongMap!3322 (toList!1676 List!3322)) )
))
(declare-fun contains!1521 (ListLongMap!3321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1199 (array!10914 array!10912 (_ BitVec 32) (_ BitVec 32) V!7427 V!7427 (_ BitVec 32) Int) ListLongMap!3321)

(assert (=> b!222218 (= c!36914 (contains!1521 (getCurrentListMap!1199 (_keys!6237 thiss!1504) (_values!4166 thiss!1504) (mask!10001 thiss!1504) (extraKeys!3920 thiss!1504) (zeroValue!4024 thiss!1504) (minValue!4024 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4183 thiss!1504)) key!932))))

(declare-fun b!222219 () Bool)

(declare-fun res!109098 () Bool)

(assert (=> b!222219 (=> (not res!109098) (not e!144416))))

(assert (=> b!222219 (= res!109098 (not (contains!1520 Nil!3318 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!9922 () Bool)

(declare-fun tp!21061 () Bool)

(declare-fun e!144414 () Bool)

(assert (=> mapNonEmpty!9922 (= mapRes!9922 (and tp!21061 e!144414))))

(declare-fun mapKey!9922 () (_ BitVec 32))

(declare-fun mapRest!9922 () (Array (_ BitVec 32) ValueCell!2574))

(declare-fun mapValue!9922 () ValueCell!2574)

(assert (=> mapNonEmpty!9922 (= (arr!5175 (_values!4166 thiss!1504)) (store mapRest!9922 mapKey!9922 mapValue!9922))))

(declare-fun mapIsEmpty!9922 () Bool)

(assert (=> mapIsEmpty!9922 mapRes!9922))

(declare-fun b!222220 () Bool)

(declare-fun Unit!6657 () Unit!6653)

(assert (=> b!222220 (= e!144417 Unit!6657)))

(declare-fun lt!112628 () Unit!6653)

(declare-fun lemmaArrayContainsKeyThenInListMap!59 (array!10914 array!10912 (_ BitVec 32) (_ BitVec 32) V!7427 V!7427 (_ BitVec 64) (_ BitVec 32) Int) Unit!6653)

(assert (=> b!222220 (= lt!112628 (lemmaArrayContainsKeyThenInListMap!59 (_keys!6237 thiss!1504) (_values!4166 thiss!1504) (mask!10001 thiss!1504) (extraKeys!3920 thiss!1504) (zeroValue!4024 thiss!1504) (minValue!4024 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4183 thiss!1504)))))

(assert (=> b!222220 false))

(declare-fun b!222221 () Bool)

(declare-fun res!109095 () Bool)

(assert (=> b!222221 (=> (not res!109095) (not e!144416))))

(declare-fun noDuplicate!69 (List!3321) Bool)

(assert (=> b!222221 (= res!109095 (noDuplicate!69 Nil!3318))))

(declare-fun b!222222 () Bool)

(assert (=> b!222222 (= e!144412 (not (contains!1520 Nil!3318 key!932)))))

(declare-fun b!222223 () Bool)

(assert (=> b!222223 (= e!144414 tp_is_empty!5835)))

(declare-fun b!222224 () Bool)

(declare-fun e!144419 () Bool)

(assert (=> b!222224 (= e!144419 (contains!1520 Nil!3318 key!932))))

(declare-fun b!222225 () Bool)

(declare-fun res!109085 () Bool)

(assert (=> b!222225 (=> (not res!109085) (not e!144424))))

(assert (=> b!222225 (= res!109085 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222226 () Bool)

(declare-fun res!109097 () Bool)

(assert (=> b!222226 (=> (not res!109097) (not e!144416))))

(assert (=> b!222226 (= res!109097 e!144420)))

(declare-fun res!109087 () Bool)

(assert (=> b!222226 (=> res!109087 e!144420)))

(assert (=> b!222226 (= res!109087 e!144419)))

(declare-fun res!109090 () Bool)

(assert (=> b!222226 (=> (not res!109090) (not e!144419))))

(assert (=> b!222226 (= res!109090 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun bm!20749 () Bool)

(assert (=> bm!20749 (= call!20751 (arrayContainsKey!0 (_keys!6237 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222227 () Bool)

(assert (=> b!222227 (= e!144421 ((_ is Undefined!845) lt!112631))))

(assert (= (and start!21918 res!109089) b!222225))

(assert (= (and b!222225 res!109085) b!222213))

(assert (= (and b!222213 res!109091) b!222218))

(assert (= (and b!222218 c!36914) b!222201))

(assert (= (and b!222218 (not c!36914)) b!222216))

(assert (= (and b!222216 c!36917) b!222210))

(assert (= (and b!222216 (not c!36917)) b!222202))

(assert (= (and b!222210 res!109099) b!222207))

(assert (= (and b!222207 res!109084) b!222206))

(assert (= (and b!222202 c!36916) b!222204))

(assert (= (and b!222202 (not c!36916)) b!222227))

(assert (= (and b!222204 res!109096) b!222203))

(assert (= (and b!222203 res!109093) b!222212))

(assert (= (or b!222210 b!222204) bm!20748))

(assert (= (or b!222206 b!222212) bm!20749))

(assert (= (and b!222218 res!109094) b!222215))

(assert (= (and b!222215 c!36915) b!222220))

(assert (= (and b!222215 (not c!36915)) b!222209))

(assert (= (and b!222215 res!109092) b!222221))

(assert (= (and b!222221 res!109095) b!222217))

(assert (= (and b!222217 res!109088) b!222219))

(assert (= (and b!222219 res!109098) b!222226))

(assert (= (and b!222226 res!109090) b!222224))

(assert (= (and b!222226 (not res!109087)) b!222211))

(assert (= (and b!222211 res!109086) b!222222))

(assert (= (and b!222226 res!109097) b!222208))

(assert (= (and b!222214 condMapEmpty!9922) mapIsEmpty!9922))

(assert (= (and b!222214 (not condMapEmpty!9922)) mapNonEmpty!9922))

(assert (= (and mapNonEmpty!9922 ((_ is ValueCellFull!2574) mapValue!9922)) b!222223))

(assert (= (and b!222214 ((_ is ValueCellFull!2574) mapDefault!9922)) b!222200))

(assert (= b!222205 b!222214))

(assert (= start!21918 b!222205))

(declare-fun m!246443 () Bool)

(assert (=> b!222215 m!246443))

(assert (=> bm!20749 m!246443))

(declare-fun m!246445 () Bool)

(assert (=> b!222201 m!246445))

(declare-fun m!246447 () Bool)

(assert (=> b!222213 m!246447))

(declare-fun m!246449 () Bool)

(assert (=> b!222221 m!246449))

(declare-fun m!246451 () Bool)

(assert (=> b!222224 m!246451))

(declare-fun m!246453 () Bool)

(assert (=> b!222208 m!246453))

(declare-fun m!246455 () Bool)

(assert (=> b!222220 m!246455))

(declare-fun m!246457 () Bool)

(assert (=> b!222219 m!246457))

(declare-fun m!246459 () Bool)

(assert (=> b!222218 m!246459))

(declare-fun m!246461 () Bool)

(assert (=> b!222218 m!246461))

(assert (=> b!222218 m!246461))

(declare-fun m!246463 () Bool)

(assert (=> b!222218 m!246463))

(declare-fun m!246465 () Bool)

(assert (=> bm!20748 m!246465))

(declare-fun m!246467 () Bool)

(assert (=> mapNonEmpty!9922 m!246467))

(assert (=> b!222222 m!246451))

(declare-fun m!246469 () Bool)

(assert (=> start!21918 m!246469))

(declare-fun m!246471 () Bool)

(assert (=> b!222217 m!246471))

(declare-fun m!246473 () Bool)

(assert (=> b!222207 m!246473))

(declare-fun m!246475 () Bool)

(assert (=> b!222203 m!246475))

(declare-fun m!246477 () Bool)

(assert (=> b!222216 m!246477))

(declare-fun m!246479 () Bool)

(assert (=> b!222205 m!246479))

(declare-fun m!246481 () Bool)

(assert (=> b!222205 m!246481))

(check-sat (not b!222221) (not bm!20748) tp_is_empty!5835 (not mapNonEmpty!9922) (not b!222216) (not b!222219) (not b!222222) (not start!21918) (not b!222218) (not b!222201) (not bm!20749) (not b_next!5973) (not b!222217) (not b!222208) (not b!222220) (not b!222215) b_and!12889 (not b!222205) (not b!222213) (not b!222224))
(check-sat b_and!12889 (not b_next!5973))
