; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81538 () Bool)

(assert start!81538)

(declare-fun b!952323 () Bool)

(declare-fun b_free!18291 () Bool)

(declare-fun b_next!18291 () Bool)

(assert (=> b!952323 (= b_free!18291 (not b_next!18291))))

(declare-fun tp!63495 () Bool)

(declare-fun b_and!29789 () Bool)

(assert (=> b!952323 (= tp!63495 b_and!29789)))

(declare-fun b!952320 () Bool)

(declare-fun res!638099 () Bool)

(declare-fun e!536366 () Bool)

(assert (=> b!952320 (=> res!638099 e!536366)))

(declare-datatypes ((V!32697 0))(
  ( (V!32698 (val!10450 Int)) )
))
(declare-datatypes ((ValueCell!9918 0))(
  ( (ValueCellFull!9918 (v!13001 V!32697)) (EmptyCell!9918) )
))
(declare-datatypes ((array!57654 0))(
  ( (array!57655 (arr!27715 (Array (_ BitVec 32) ValueCell!9918)) (size!28195 (_ BitVec 32))) )
))
(declare-datatypes ((array!57656 0))(
  ( (array!57657 (arr!27716 (Array (_ BitVec 32) (_ BitVec 64))) (size!28196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4986 0))(
  ( (LongMapFixedSize!4987 (defaultEntry!5824 Int) (mask!27665 (_ BitVec 32)) (extraKeys!5556 (_ BitVec 32)) (zeroValue!5660 V!32697) (minValue!5660 V!32697) (_size!2548 (_ BitVec 32)) (_keys!10774 array!57656) (_values!5847 array!57654) (_vacant!2548 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4986)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57656 (_ BitVec 32)) Bool)

(assert (=> b!952320 (= res!638099 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10774 thiss!1141) (mask!27665 thiss!1141))))))

(declare-fun b!952321 () Bool)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952321 (= e!536366 (validKeyInArray!0 key!756))))

(declare-fun b!952322 () Bool)

(declare-fun res!638098 () Bool)

(assert (=> b!952322 (=> res!638098 e!536366)))

(assert (=> b!952322 (= res!638098 (not (= (size!28196 (_keys!10774 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27665 thiss!1141)))))))

(declare-fun e!536361 () Bool)

(declare-fun tp_is_empty!20799 () Bool)

(declare-fun e!536362 () Bool)

(declare-fun array_inv!21454 (array!57656) Bool)

(declare-fun array_inv!21455 (array!57654) Bool)

(assert (=> b!952323 (= e!536362 (and tp!63495 tp_is_empty!20799 (array_inv!21454 (_keys!10774 thiss!1141)) (array_inv!21455 (_values!5847 thiss!1141)) e!536361))))

(declare-fun mapNonEmpty!33136 () Bool)

(declare-fun mapRes!33136 () Bool)

(declare-fun tp!63496 () Bool)

(declare-fun e!536360 () Bool)

(assert (=> mapNonEmpty!33136 (= mapRes!33136 (and tp!63496 e!536360))))

(declare-fun mapValue!33136 () ValueCell!9918)

(declare-fun mapRest!33136 () (Array (_ BitVec 32) ValueCell!9918))

(declare-fun mapKey!33136 () (_ BitVec 32))

(assert (=> mapNonEmpty!33136 (= (arr!27715 (_values!5847 thiss!1141)) (store mapRest!33136 mapKey!33136 mapValue!33136))))

(declare-fun res!638103 () Bool)

(declare-fun e!536365 () Bool)

(assert (=> start!81538 (=> (not res!638103) (not e!536365))))

(declare-fun valid!1867 (LongMapFixedSize!4986) Bool)

(assert (=> start!81538 (= res!638103 (valid!1867 thiss!1141))))

(assert (=> start!81538 e!536365))

(assert (=> start!81538 e!536362))

(assert (=> start!81538 true))

(declare-fun b!952324 () Bool)

(declare-fun res!638101 () Bool)

(assert (=> b!952324 (=> (not res!638101) (not e!536365))))

(assert (=> b!952324 (= res!638101 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952325 () Bool)

(assert (=> b!952325 (= e!536360 tp_is_empty!20799)))

(declare-fun b!952326 () Bool)

(declare-fun res!638097 () Bool)

(assert (=> b!952326 (=> (not res!638097) (not e!536365))))

(declare-datatypes ((tuple2!13676 0))(
  ( (tuple2!13677 (_1!6848 (_ BitVec 64)) (_2!6848 V!32697)) )
))
(declare-datatypes ((List!19494 0))(
  ( (Nil!19491) (Cons!19490 (h!20652 tuple2!13676) (t!27857 List!19494)) )
))
(declare-datatypes ((ListLongMap!12387 0))(
  ( (ListLongMap!12388 (toList!6209 List!19494)) )
))
(declare-fun contains!5255 (ListLongMap!12387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3394 (array!57656 array!57654 (_ BitVec 32) (_ BitVec 32) V!32697 V!32697 (_ BitVec 32) Int) ListLongMap!12387)

(assert (=> b!952326 (= res!638097 (contains!5255 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)) key!756))))

(declare-fun b!952327 () Bool)

(declare-fun e!536364 () Bool)

(assert (=> b!952327 (= e!536361 (and e!536364 mapRes!33136))))

(declare-fun condMapEmpty!33136 () Bool)

(declare-fun mapDefault!33136 () ValueCell!9918)

(assert (=> b!952327 (= condMapEmpty!33136 (= (arr!27715 (_values!5847 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9918)) mapDefault!33136)))))

(declare-fun mapIsEmpty!33136 () Bool)

(assert (=> mapIsEmpty!33136 mapRes!33136))

(declare-fun b!952328 () Bool)

(assert (=> b!952328 (= e!536365 (not e!536366))))

(declare-fun res!638102 () Bool)

(assert (=> b!952328 (=> res!638102 e!536366)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952328 (= res!638102 (not (validMask!0 (mask!27665 thiss!1141))))))

(declare-fun lt!429119 () (_ BitVec 32))

(assert (=> b!952328 (arrayForallSeekEntryOrOpenFound!0 lt!429119 (_keys!10774 thiss!1141) (mask!27665 thiss!1141))))

(declare-datatypes ((Unit!32040 0))(
  ( (Unit!32041) )
))
(declare-fun lt!429117 () Unit!32040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32040)

(assert (=> b!952328 (= lt!429117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10774 thiss!1141) (mask!27665 thiss!1141) #b00000000000000000000000000000000 lt!429119))))

(declare-fun arrayScanForKey!0 (array!57656 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952328 (= lt!429119 (arrayScanForKey!0 (_keys!10774 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952328 (arrayContainsKey!0 (_keys!10774 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429118 () Unit!32040)

(declare-fun lemmaKeyInListMapIsInArray!339 (array!57656 array!57654 (_ BitVec 32) (_ BitVec 32) V!32697 V!32697 (_ BitVec 64) Int) Unit!32040)

(assert (=> b!952328 (= lt!429118 (lemmaKeyInListMapIsInArray!339 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) key!756 (defaultEntry!5824 thiss!1141)))))

(declare-fun b!952329 () Bool)

(declare-fun res!638100 () Bool)

(assert (=> b!952329 (=> (not res!638100) (not e!536365))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9148 0))(
  ( (MissingZero!9148 (index!38962 (_ BitVec 32))) (Found!9148 (index!38963 (_ BitVec 32))) (Intermediate!9148 (undefined!9960 Bool) (index!38964 (_ BitVec 32)) (x!81919 (_ BitVec 32))) (Undefined!9148) (MissingVacant!9148 (index!38965 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57656 (_ BitVec 32)) SeekEntryResult!9148)

(assert (=> b!952329 (= res!638100 (not ((_ is Found!9148) (seekEntry!0 key!756 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))))

(declare-fun b!952330 () Bool)

(assert (=> b!952330 (= e!536364 tp_is_empty!20799)))

(assert (= (and start!81538 res!638103) b!952324))

(assert (= (and b!952324 res!638101) b!952329))

(assert (= (and b!952329 res!638100) b!952326))

(assert (= (and b!952326 res!638097) b!952328))

(assert (= (and b!952328 (not res!638102)) b!952322))

(assert (= (and b!952322 (not res!638098)) b!952320))

(assert (= (and b!952320 (not res!638099)) b!952321))

(assert (= (and b!952327 condMapEmpty!33136) mapIsEmpty!33136))

(assert (= (and b!952327 (not condMapEmpty!33136)) mapNonEmpty!33136))

(assert (= (and mapNonEmpty!33136 ((_ is ValueCellFull!9918) mapValue!33136)) b!952325))

(assert (= (and b!952327 ((_ is ValueCellFull!9918) mapDefault!33136)) b!952330))

(assert (= b!952323 b!952327))

(assert (= start!81538 b!952323))

(declare-fun m!884581 () Bool)

(assert (=> b!952321 m!884581))

(declare-fun m!884583 () Bool)

(assert (=> b!952329 m!884583))

(declare-fun m!884585 () Bool)

(assert (=> start!81538 m!884585))

(declare-fun m!884587 () Bool)

(assert (=> b!952320 m!884587))

(declare-fun m!884589 () Bool)

(assert (=> b!952328 m!884589))

(declare-fun m!884591 () Bool)

(assert (=> b!952328 m!884591))

(declare-fun m!884593 () Bool)

(assert (=> b!952328 m!884593))

(declare-fun m!884595 () Bool)

(assert (=> b!952328 m!884595))

(declare-fun m!884597 () Bool)

(assert (=> b!952328 m!884597))

(declare-fun m!884599 () Bool)

(assert (=> b!952328 m!884599))

(declare-fun m!884601 () Bool)

(assert (=> b!952326 m!884601))

(assert (=> b!952326 m!884601))

(declare-fun m!884603 () Bool)

(assert (=> b!952326 m!884603))

(declare-fun m!884605 () Bool)

(assert (=> b!952323 m!884605))

(declare-fun m!884607 () Bool)

(assert (=> b!952323 m!884607))

(declare-fun m!884609 () Bool)

(assert (=> mapNonEmpty!33136 m!884609))

(check-sat (not b!952326) (not start!81538) (not b_next!18291) (not mapNonEmpty!33136) (not b!952321) tp_is_empty!20799 (not b!952328) (not b!952323) (not b!952320) b_and!29789 (not b!952329))
(check-sat b_and!29789 (not b_next!18291))
(get-model)

(declare-fun d!115453 () Bool)

(assert (=> d!115453 (= (array_inv!21454 (_keys!10774 thiss!1141)) (bvsge (size!28196 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952323 d!115453))

(declare-fun d!115455 () Bool)

(assert (=> d!115455 (= (array_inv!21455 (_values!5847 thiss!1141)) (bvsge (size!28195 (_values!5847 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952323 d!115455))

(declare-fun d!115457 () Bool)

(declare-fun res!638131 () Bool)

(declare-fun e!536390 () Bool)

(assert (=> d!115457 (=> (not res!638131) (not e!536390))))

(declare-fun simpleValid!381 (LongMapFixedSize!4986) Bool)

(assert (=> d!115457 (= res!638131 (simpleValid!381 thiss!1141))))

(assert (=> d!115457 (= (valid!1867 thiss!1141) e!536390)))

(declare-fun b!952370 () Bool)

(declare-fun res!638132 () Bool)

(assert (=> b!952370 (=> (not res!638132) (not e!536390))))

(declare-fun arrayCountValidKeys!0 (array!57656 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952370 (= res!638132 (= (arrayCountValidKeys!0 (_keys!10774 thiss!1141) #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))) (_size!2548 thiss!1141)))))

(declare-fun b!952371 () Bool)

(declare-fun res!638133 () Bool)

(assert (=> b!952371 (=> (not res!638133) (not e!536390))))

(assert (=> b!952371 (= res!638133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))

(declare-fun b!952372 () Bool)

(declare-datatypes ((List!19495 0))(
  ( (Nil!19492) (Cons!19491 (h!20653 (_ BitVec 64)) (t!27860 List!19495)) )
))
(declare-fun arrayNoDuplicates!0 (array!57656 (_ BitVec 32) List!19495) Bool)

(assert (=> b!952372 (= e!536390 (arrayNoDuplicates!0 (_keys!10774 thiss!1141) #b00000000000000000000000000000000 Nil!19492))))

(assert (= (and d!115457 res!638131) b!952370))

(assert (= (and b!952370 res!638132) b!952371))

(assert (= (and b!952371 res!638133) b!952372))

(declare-fun m!884641 () Bool)

(assert (=> d!115457 m!884641))

(declare-fun m!884643 () Bool)

(assert (=> b!952370 m!884643))

(assert (=> b!952371 m!884587))

(declare-fun m!884645 () Bool)

(assert (=> b!952372 m!884645))

(assert (=> start!81538 d!115457))

(declare-fun d!115459 () Bool)

(declare-fun e!536396 () Bool)

(assert (=> d!115459 e!536396))

(declare-fun res!638136 () Bool)

(assert (=> d!115459 (=> res!638136 e!536396)))

(declare-fun lt!429140 () Bool)

(assert (=> d!115459 (= res!638136 (not lt!429140))))

(declare-fun lt!429138 () Bool)

(assert (=> d!115459 (= lt!429140 lt!429138)))

(declare-fun lt!429139 () Unit!32040)

(declare-fun e!536395 () Unit!32040)

(assert (=> d!115459 (= lt!429139 e!536395)))

(declare-fun c!99565 () Bool)

(assert (=> d!115459 (= c!99565 lt!429138)))

(declare-fun containsKey!473 (List!19494 (_ BitVec 64)) Bool)

(assert (=> d!115459 (= lt!429138 (containsKey!473 (toList!6209 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141))) key!756))))

(assert (=> d!115459 (= (contains!5255 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)) key!756) lt!429140)))

(declare-fun b!952379 () Bool)

(declare-fun lt!429137 () Unit!32040)

(assert (=> b!952379 (= e!536395 lt!429137)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!368 (List!19494 (_ BitVec 64)) Unit!32040)

(assert (=> b!952379 (= lt!429137 (lemmaContainsKeyImpliesGetValueByKeyDefined!368 (toList!6209 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141))) key!756))))

(declare-datatypes ((Option!514 0))(
  ( (Some!513 (v!13003 V!32697)) (None!512) )
))
(declare-fun isDefined!378 (Option!514) Bool)

(declare-fun getValueByKey!508 (List!19494 (_ BitVec 64)) Option!514)

(assert (=> b!952379 (isDefined!378 (getValueByKey!508 (toList!6209 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141))) key!756))))

(declare-fun b!952380 () Bool)

(declare-fun Unit!32042 () Unit!32040)

(assert (=> b!952380 (= e!536395 Unit!32042)))

(declare-fun b!952381 () Bool)

(assert (=> b!952381 (= e!536396 (isDefined!378 (getValueByKey!508 (toList!6209 (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141))) key!756)))))

(assert (= (and d!115459 c!99565) b!952379))

(assert (= (and d!115459 (not c!99565)) b!952380))

(assert (= (and d!115459 (not res!638136)) b!952381))

(declare-fun m!884647 () Bool)

(assert (=> d!115459 m!884647))

(declare-fun m!884649 () Bool)

(assert (=> b!952379 m!884649))

(declare-fun m!884651 () Bool)

(assert (=> b!952379 m!884651))

(assert (=> b!952379 m!884651))

(declare-fun m!884653 () Bool)

(assert (=> b!952379 m!884653))

(assert (=> b!952381 m!884651))

(assert (=> b!952381 m!884651))

(assert (=> b!952381 m!884653))

(assert (=> b!952326 d!115459))

(declare-fun bm!41586 () Bool)

(declare-fun call!41591 () Bool)

(declare-fun lt!429194 () ListLongMap!12387)

(assert (=> bm!41586 (= call!41591 (contains!5255 lt!429194 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!952424 () Bool)

(declare-fun e!536425 () ListLongMap!12387)

(declare-fun e!536423 () ListLongMap!12387)

(assert (=> b!952424 (= e!536425 e!536423)))

(declare-fun c!99578 () Bool)

(assert (=> b!952424 (= c!99578 (and (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!952425 () Bool)

(declare-fun e!536429 () Bool)

(declare-fun e!536427 () Bool)

(assert (=> b!952425 (= e!536429 e!536427)))

(declare-fun res!638158 () Bool)

(assert (=> b!952425 (= res!638158 call!41591)))

(assert (=> b!952425 (=> (not res!638158) (not e!536427))))

(declare-fun b!952426 () Bool)

(declare-fun call!41595 () ListLongMap!12387)

(declare-fun +!2835 (ListLongMap!12387 tuple2!13676) ListLongMap!12387)

(assert (=> b!952426 (= e!536425 (+!2835 call!41595 (tuple2!13677 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5660 thiss!1141))))))

(declare-fun b!952427 () Bool)

(declare-fun e!536428 () Bool)

(declare-fun e!536426 () Bool)

(assert (=> b!952427 (= e!536428 e!536426)))

(declare-fun res!638159 () Bool)

(assert (=> b!952427 (=> (not res!638159) (not e!536426))))

(assert (=> b!952427 (= res!638159 (contains!5255 lt!429194 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!952427 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))

(declare-fun bm!41587 () Bool)

(declare-fun call!41592 () ListLongMap!12387)

(assert (=> bm!41587 (= call!41592 call!41595)))

(declare-fun bm!41588 () Bool)

(declare-fun call!41589 () ListLongMap!12387)

(declare-fun call!41593 () ListLongMap!12387)

(assert (=> bm!41588 (= call!41589 call!41593)))

(declare-fun b!952428 () Bool)

(declare-fun e!536435 () ListLongMap!12387)

(declare-fun call!41590 () ListLongMap!12387)

(assert (=> b!952428 (= e!536435 call!41590)))

(declare-fun bm!41589 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3341 (array!57656 array!57654 (_ BitVec 32) (_ BitVec 32) V!32697 V!32697 (_ BitVec 32) Int) ListLongMap!12387)

(assert (=> bm!41589 (= call!41593 (getCurrentListMapNoExtraKeys!3341 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)))))

(declare-fun bm!41590 () Bool)

(assert (=> bm!41590 (= call!41590 call!41589)))

(declare-fun d!115461 () Bool)

(declare-fun e!536431 () Bool)

(assert (=> d!115461 e!536431))

(declare-fun res!638161 () Bool)

(assert (=> d!115461 (=> (not res!638161) (not e!536431))))

(assert (=> d!115461 (= res!638161 (or (bvsge #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))))

(declare-fun lt!429189 () ListLongMap!12387)

(assert (=> d!115461 (= lt!429194 lt!429189)))

(declare-fun lt!429186 () Unit!32040)

(declare-fun e!536433 () Unit!32040)

(assert (=> d!115461 (= lt!429186 e!536433)))

(declare-fun c!99581 () Bool)

(declare-fun e!536432 () Bool)

(assert (=> d!115461 (= c!99581 e!536432)))

(declare-fun res!638163 () Bool)

(assert (=> d!115461 (=> (not res!638163) (not e!536432))))

(assert (=> d!115461 (= res!638163 (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))

(assert (=> d!115461 (= lt!429189 e!536425)))

(declare-fun c!99580 () Bool)

(assert (=> d!115461 (= c!99580 (and (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115461 (validMask!0 (mask!27665 thiss!1141))))

(assert (=> d!115461 (= (getCurrentListMap!3394 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)) lt!429194)))

(declare-fun bm!41591 () Bool)

(assert (=> bm!41591 (= call!41595 (+!2835 (ite c!99580 call!41593 (ite c!99578 call!41589 call!41590)) (ite (or c!99580 c!99578) (tuple2!13677 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5660 thiss!1141)) (tuple2!13677 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5660 thiss!1141)))))))

(declare-fun b!952429 () Bool)

(assert (=> b!952429 (= e!536435 call!41592)))

(declare-fun b!952430 () Bool)

(declare-fun apply!921 (ListLongMap!12387 (_ BitVec 64)) V!32697)

(declare-fun get!14586 (ValueCell!9918 V!32697) V!32697)

(declare-fun dynLambda!1674 (Int (_ BitVec 64)) V!32697)

(assert (=> b!952430 (= e!536426 (= (apply!921 lt!429194 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000)) (get!14586 (select (arr!27715 (_values!5847 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1674 (defaultEntry!5824 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952430 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28195 (_values!5847 thiss!1141))))))

(assert (=> b!952430 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))

(declare-fun b!952431 () Bool)

(declare-fun res!638162 () Bool)

(assert (=> b!952431 (=> (not res!638162) (not e!536431))))

(assert (=> b!952431 (= res!638162 e!536428)))

(declare-fun res!638155 () Bool)

(assert (=> b!952431 (=> res!638155 e!536428)))

(declare-fun e!536424 () Bool)

(assert (=> b!952431 (= res!638155 (not e!536424))))

(declare-fun res!638160 () Bool)

(assert (=> b!952431 (=> (not res!638160) (not e!536424))))

(assert (=> b!952431 (= res!638160 (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))

(declare-fun b!952432 () Bool)

(declare-fun lt!429204 () Unit!32040)

(assert (=> b!952432 (= e!536433 lt!429204)))

(declare-fun lt!429198 () ListLongMap!12387)

(assert (=> b!952432 (= lt!429198 (getCurrentListMapNoExtraKeys!3341 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)))))

(declare-fun lt!429195 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429195 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429188 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429188 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429187 () Unit!32040)

(declare-fun addStillContains!591 (ListLongMap!12387 (_ BitVec 64) V!32697 (_ BitVec 64)) Unit!32040)

(assert (=> b!952432 (= lt!429187 (addStillContains!591 lt!429198 lt!429195 (zeroValue!5660 thiss!1141) lt!429188))))

(assert (=> b!952432 (contains!5255 (+!2835 lt!429198 (tuple2!13677 lt!429195 (zeroValue!5660 thiss!1141))) lt!429188)))

(declare-fun lt!429190 () Unit!32040)

(assert (=> b!952432 (= lt!429190 lt!429187)))

(declare-fun lt!429202 () ListLongMap!12387)

(assert (=> b!952432 (= lt!429202 (getCurrentListMapNoExtraKeys!3341 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)))))

(declare-fun lt!429193 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429193 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429199 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429199 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429185 () Unit!32040)

(declare-fun addApplyDifferent!465 (ListLongMap!12387 (_ BitVec 64) V!32697 (_ BitVec 64)) Unit!32040)

(assert (=> b!952432 (= lt!429185 (addApplyDifferent!465 lt!429202 lt!429193 (minValue!5660 thiss!1141) lt!429199))))

(assert (=> b!952432 (= (apply!921 (+!2835 lt!429202 (tuple2!13677 lt!429193 (minValue!5660 thiss!1141))) lt!429199) (apply!921 lt!429202 lt!429199))))

(declare-fun lt!429206 () Unit!32040)

(assert (=> b!952432 (= lt!429206 lt!429185)))

(declare-fun lt!429192 () ListLongMap!12387)

(assert (=> b!952432 (= lt!429192 (getCurrentListMapNoExtraKeys!3341 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)))))

(declare-fun lt!429201 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429201 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429196 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429196 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429205 () Unit!32040)

(assert (=> b!952432 (= lt!429205 (addApplyDifferent!465 lt!429192 lt!429201 (zeroValue!5660 thiss!1141) lt!429196))))

(assert (=> b!952432 (= (apply!921 (+!2835 lt!429192 (tuple2!13677 lt!429201 (zeroValue!5660 thiss!1141))) lt!429196) (apply!921 lt!429192 lt!429196))))

(declare-fun lt!429191 () Unit!32040)

(assert (=> b!952432 (= lt!429191 lt!429205)))

(declare-fun lt!429200 () ListLongMap!12387)

(assert (=> b!952432 (= lt!429200 (getCurrentListMapNoExtraKeys!3341 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5824 thiss!1141)))))

(declare-fun lt!429203 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429203 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429197 () (_ BitVec 64))

(assert (=> b!952432 (= lt!429197 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952432 (= lt!429204 (addApplyDifferent!465 lt!429200 lt!429203 (minValue!5660 thiss!1141) lt!429197))))

(assert (=> b!952432 (= (apply!921 (+!2835 lt!429200 (tuple2!13677 lt!429203 (minValue!5660 thiss!1141))) lt!429197) (apply!921 lt!429200 lt!429197))))

(declare-fun b!952433 () Bool)

(declare-fun e!536434 () Bool)

(declare-fun call!41594 () Bool)

(assert (=> b!952433 (= e!536434 (not call!41594))))

(declare-fun b!952434 () Bool)

(declare-fun e!536430 () Bool)

(assert (=> b!952434 (= e!536430 (= (apply!921 lt!429194 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5660 thiss!1141)))))

(declare-fun b!952435 () Bool)

(declare-fun c!99579 () Bool)

(assert (=> b!952435 (= c!99579 (and (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!952435 (= e!536423 e!536435)))

(declare-fun b!952436 () Bool)

(declare-fun res!638157 () Bool)

(assert (=> b!952436 (=> (not res!638157) (not e!536431))))

(assert (=> b!952436 (= res!638157 e!536434)))

(declare-fun c!99583 () Bool)

(assert (=> b!952436 (= c!99583 (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!952437 () Bool)

(assert (=> b!952437 (= e!536434 e!536430)))

(declare-fun res!638156 () Bool)

(assert (=> b!952437 (= res!638156 call!41594)))

(assert (=> b!952437 (=> (not res!638156) (not e!536430))))

(declare-fun b!952438 () Bool)

(assert (=> b!952438 (= e!536427 (= (apply!921 lt!429194 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5660 thiss!1141)))))

(declare-fun b!952439 () Bool)

(declare-fun Unit!32043 () Unit!32040)

(assert (=> b!952439 (= e!536433 Unit!32043)))

(declare-fun b!952440 () Bool)

(assert (=> b!952440 (= e!536431 e!536429)))

(declare-fun c!99582 () Bool)

(assert (=> b!952440 (= c!99582 (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!952441 () Bool)

(assert (=> b!952441 (= e!536424 (validKeyInArray!0 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952442 () Bool)

(assert (=> b!952442 (= e!536432 (validKeyInArray!0 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952443 () Bool)

(assert (=> b!952443 (= e!536423 call!41592)))

(declare-fun bm!41592 () Bool)

(assert (=> bm!41592 (= call!41594 (contains!5255 lt!429194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!952444 () Bool)

(assert (=> b!952444 (= e!536429 (not call!41591))))

(assert (= (and d!115461 c!99580) b!952426))

(assert (= (and d!115461 (not c!99580)) b!952424))

(assert (= (and b!952424 c!99578) b!952443))

(assert (= (and b!952424 (not c!99578)) b!952435))

(assert (= (and b!952435 c!99579) b!952429))

(assert (= (and b!952435 (not c!99579)) b!952428))

(assert (= (or b!952429 b!952428) bm!41590))

(assert (= (or b!952443 bm!41590) bm!41588))

(assert (= (or b!952443 b!952429) bm!41587))

(assert (= (or b!952426 bm!41588) bm!41589))

(assert (= (or b!952426 bm!41587) bm!41591))

(assert (= (and d!115461 res!638163) b!952442))

(assert (= (and d!115461 c!99581) b!952432))

(assert (= (and d!115461 (not c!99581)) b!952439))

(assert (= (and d!115461 res!638161) b!952431))

(assert (= (and b!952431 res!638160) b!952441))

(assert (= (and b!952431 (not res!638155)) b!952427))

(assert (= (and b!952427 res!638159) b!952430))

(assert (= (and b!952431 res!638162) b!952436))

(assert (= (and b!952436 c!99583) b!952437))

(assert (= (and b!952436 (not c!99583)) b!952433))

(assert (= (and b!952437 res!638156) b!952434))

(assert (= (or b!952437 b!952433) bm!41592))

(assert (= (and b!952436 res!638157) b!952440))

(assert (= (and b!952440 c!99582) b!952425))

(assert (= (and b!952440 (not c!99582)) b!952444))

(assert (= (and b!952425 res!638158) b!952438))

(assert (= (or b!952425 b!952444) bm!41586))

(declare-fun b_lambda!14445 () Bool)

(assert (=> (not b_lambda!14445) (not b!952430)))

(declare-fun t!27859 () Bool)

(declare-fun tb!6215 () Bool)

(assert (=> (and b!952323 (= (defaultEntry!5824 thiss!1141) (defaultEntry!5824 thiss!1141)) t!27859) tb!6215))

(declare-fun result!12351 () Bool)

(assert (=> tb!6215 (= result!12351 tp_is_empty!20799)))

(assert (=> b!952430 t!27859))

(declare-fun b_and!29793 () Bool)

(assert (= b_and!29789 (and (=> t!27859 result!12351) b_and!29793)))

(declare-fun m!884655 () Bool)

(assert (=> b!952426 m!884655))

(declare-fun m!884657 () Bool)

(assert (=> b!952430 m!884657))

(declare-fun m!884659 () Bool)

(assert (=> b!952430 m!884659))

(declare-fun m!884661 () Bool)

(assert (=> b!952430 m!884661))

(declare-fun m!884663 () Bool)

(assert (=> b!952430 m!884663))

(declare-fun m!884665 () Bool)

(assert (=> b!952430 m!884665))

(assert (=> b!952430 m!884661))

(assert (=> b!952430 m!884663))

(assert (=> b!952430 m!884657))

(declare-fun m!884667 () Bool)

(assert (=> bm!41589 m!884667))

(declare-fun m!884669 () Bool)

(assert (=> b!952438 m!884669))

(declare-fun m!884671 () Bool)

(assert (=> b!952432 m!884671))

(declare-fun m!884673 () Bool)

(assert (=> b!952432 m!884673))

(declare-fun m!884675 () Bool)

(assert (=> b!952432 m!884675))

(declare-fun m!884677 () Bool)

(assert (=> b!952432 m!884677))

(declare-fun m!884679 () Bool)

(assert (=> b!952432 m!884679))

(declare-fun m!884681 () Bool)

(assert (=> b!952432 m!884681))

(declare-fun m!884683 () Bool)

(assert (=> b!952432 m!884683))

(assert (=> b!952432 m!884671))

(declare-fun m!884685 () Bool)

(assert (=> b!952432 m!884685))

(assert (=> b!952432 m!884673))

(declare-fun m!884687 () Bool)

(assert (=> b!952432 m!884687))

(declare-fun m!884689 () Bool)

(assert (=> b!952432 m!884689))

(declare-fun m!884691 () Bool)

(assert (=> b!952432 m!884691))

(declare-fun m!884693 () Bool)

(assert (=> b!952432 m!884693))

(declare-fun m!884695 () Bool)

(assert (=> b!952432 m!884695))

(assert (=> b!952432 m!884689))

(declare-fun m!884697 () Bool)

(assert (=> b!952432 m!884697))

(declare-fun m!884699 () Bool)

(assert (=> b!952432 m!884699))

(assert (=> b!952432 m!884657))

(assert (=> b!952432 m!884667))

(assert (=> b!952432 m!884693))

(assert (=> b!952442 m!884657))

(assert (=> b!952442 m!884657))

(declare-fun m!884701 () Bool)

(assert (=> b!952442 m!884701))

(assert (=> b!952427 m!884657))

(assert (=> b!952427 m!884657))

(declare-fun m!884703 () Bool)

(assert (=> b!952427 m!884703))

(declare-fun m!884705 () Bool)

(assert (=> bm!41586 m!884705))

(assert (=> d!115461 m!884595))

(assert (=> b!952441 m!884657))

(assert (=> b!952441 m!884657))

(assert (=> b!952441 m!884701))

(declare-fun m!884707 () Bool)

(assert (=> bm!41591 m!884707))

(declare-fun m!884709 () Bool)

(assert (=> b!952434 m!884709))

(declare-fun m!884711 () Bool)

(assert (=> bm!41592 m!884711))

(assert (=> b!952326 d!115461))

(declare-fun d!115463 () Bool)

(assert (=> d!115463 (= (validKeyInArray!0 key!756) (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952321 d!115463))

(declare-fun b!952459 () Bool)

(declare-fun e!536442 () SeekEntryResult!9148)

(assert (=> b!952459 (= e!536442 Undefined!9148)))

(declare-fun b!952460 () Bool)

(declare-fun e!536444 () SeekEntryResult!9148)

(declare-fun lt!429215 () SeekEntryResult!9148)

(assert (=> b!952460 (= e!536444 (ite ((_ is MissingVacant!9148) lt!429215) (MissingZero!9148 (index!38965 lt!429215)) lt!429215))))

(declare-fun lt!429216 () SeekEntryResult!9148)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57656 (_ BitVec 32)) SeekEntryResult!9148)

(assert (=> b!952460 (= lt!429215 (seekKeyOrZeroReturnVacant!0 (x!81919 lt!429216) (index!38964 lt!429216) (index!38964 lt!429216) key!756 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))

(declare-fun d!115465 () Bool)

(declare-fun lt!429217 () SeekEntryResult!9148)

(assert (=> d!115465 (and (or ((_ is MissingVacant!9148) lt!429217) (not ((_ is Found!9148) lt!429217)) (and (bvsge (index!38963 lt!429217) #b00000000000000000000000000000000) (bvslt (index!38963 lt!429217) (size!28196 (_keys!10774 thiss!1141))))) (not ((_ is MissingVacant!9148) lt!429217)) (or (not ((_ is Found!9148) lt!429217)) (= (select (arr!27716 (_keys!10774 thiss!1141)) (index!38963 lt!429217)) key!756)))))

(assert (=> d!115465 (= lt!429217 e!536442)))

(declare-fun c!99592 () Bool)

(assert (=> d!115465 (= c!99592 (and ((_ is Intermediate!9148) lt!429216) (undefined!9960 lt!429216)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57656 (_ BitVec 32)) SeekEntryResult!9148)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115465 (= lt!429216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27665 thiss!1141)) key!756 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))

(assert (=> d!115465 (validMask!0 (mask!27665 thiss!1141))))

(assert (=> d!115465 (= (seekEntry!0 key!756 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)) lt!429217)))

(declare-fun b!952461 () Bool)

(declare-fun e!536443 () SeekEntryResult!9148)

(assert (=> b!952461 (= e!536442 e!536443)))

(declare-fun lt!429218 () (_ BitVec 64))

(assert (=> b!952461 (= lt!429218 (select (arr!27716 (_keys!10774 thiss!1141)) (index!38964 lt!429216)))))

(declare-fun c!99591 () Bool)

(assert (=> b!952461 (= c!99591 (= lt!429218 key!756))))

(declare-fun b!952462 () Bool)

(assert (=> b!952462 (= e!536443 (Found!9148 (index!38964 lt!429216)))))

(declare-fun b!952463 () Bool)

(assert (=> b!952463 (= e!536444 (MissingZero!9148 (index!38964 lt!429216)))))

(declare-fun b!952464 () Bool)

(declare-fun c!99590 () Bool)

(assert (=> b!952464 (= c!99590 (= lt!429218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!952464 (= e!536443 e!536444)))

(assert (= (and d!115465 c!99592) b!952459))

(assert (= (and d!115465 (not c!99592)) b!952461))

(assert (= (and b!952461 c!99591) b!952462))

(assert (= (and b!952461 (not c!99591)) b!952464))

(assert (= (and b!952464 c!99590) b!952463))

(assert (= (and b!952464 (not c!99590)) b!952460))

(declare-fun m!884713 () Bool)

(assert (=> b!952460 m!884713))

(declare-fun m!884715 () Bool)

(assert (=> d!115465 m!884715))

(declare-fun m!884717 () Bool)

(assert (=> d!115465 m!884717))

(assert (=> d!115465 m!884717))

(declare-fun m!884719 () Bool)

(assert (=> d!115465 m!884719))

(assert (=> d!115465 m!884595))

(declare-fun m!884721 () Bool)

(assert (=> b!952461 m!884721))

(assert (=> b!952329 d!115465))

(declare-fun d!115467 () Bool)

(declare-fun res!638168 () Bool)

(declare-fun e!536452 () Bool)

(assert (=> d!115467 (=> res!638168 e!536452)))

(assert (=> d!115467 (= res!638168 (bvsge #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))))))

(assert (=> d!115467 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)) e!536452)))

(declare-fun b!952473 () Bool)

(declare-fun e!536453 () Bool)

(assert (=> b!952473 (= e!536452 e!536453)))

(declare-fun c!99595 () Bool)

(assert (=> b!952473 (= c!99595 (validKeyInArray!0 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952474 () Bool)

(declare-fun e!536451 () Bool)

(declare-fun call!41598 () Bool)

(assert (=> b!952474 (= e!536451 call!41598)))

(declare-fun b!952475 () Bool)

(assert (=> b!952475 (= e!536453 e!536451)))

(declare-fun lt!429226 () (_ BitVec 64))

(assert (=> b!952475 (= lt!429226 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429225 () Unit!32040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57656 (_ BitVec 64) (_ BitVec 32)) Unit!32040)

(assert (=> b!952475 (= lt!429225 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10774 thiss!1141) lt!429226 #b00000000000000000000000000000000))))

(assert (=> b!952475 (arrayContainsKey!0 (_keys!10774 thiss!1141) lt!429226 #b00000000000000000000000000000000)))

(declare-fun lt!429227 () Unit!32040)

(assert (=> b!952475 (= lt!429227 lt!429225)))

(declare-fun res!638169 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57656 (_ BitVec 32)) SeekEntryResult!9148)

(assert (=> b!952475 (= res!638169 (= (seekEntryOrOpen!0 (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000) (_keys!10774 thiss!1141) (mask!27665 thiss!1141)) (Found!9148 #b00000000000000000000000000000000)))))

(assert (=> b!952475 (=> (not res!638169) (not e!536451))))

(declare-fun bm!41595 () Bool)

(assert (=> bm!41595 (= call!41598 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))

(declare-fun b!952476 () Bool)

(assert (=> b!952476 (= e!536453 call!41598)))

(assert (= (and d!115467 (not res!638168)) b!952473))

(assert (= (and b!952473 c!99595) b!952475))

(assert (= (and b!952473 (not c!99595)) b!952476))

(assert (= (and b!952475 res!638169) b!952474))

(assert (= (or b!952474 b!952476) bm!41595))

(assert (=> b!952473 m!884657))

(assert (=> b!952473 m!884657))

(assert (=> b!952473 m!884701))

(assert (=> b!952475 m!884657))

(declare-fun m!884723 () Bool)

(assert (=> b!952475 m!884723))

(declare-fun m!884725 () Bool)

(assert (=> b!952475 m!884725))

(assert (=> b!952475 m!884657))

(declare-fun m!884727 () Bool)

(assert (=> b!952475 m!884727))

(declare-fun m!884729 () Bool)

(assert (=> bm!41595 m!884729))

(assert (=> b!952320 d!115467))

(declare-fun d!115469 () Bool)

(declare-fun res!638174 () Bool)

(declare-fun e!536458 () Bool)

(assert (=> d!115469 (=> res!638174 e!536458)))

(assert (=> d!115469 (= res!638174 (= (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115469 (= (arrayContainsKey!0 (_keys!10774 thiss!1141) key!756 #b00000000000000000000000000000000) e!536458)))

(declare-fun b!952481 () Bool)

(declare-fun e!536459 () Bool)

(assert (=> b!952481 (= e!536458 e!536459)))

(declare-fun res!638175 () Bool)

(assert (=> b!952481 (=> (not res!638175) (not e!536459))))

(assert (=> b!952481 (= res!638175 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28196 (_keys!10774 thiss!1141))))))

(declare-fun b!952482 () Bool)

(assert (=> b!952482 (= e!536459 (arrayContainsKey!0 (_keys!10774 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115469 (not res!638174)) b!952481))

(assert (= (and b!952481 res!638175) b!952482))

(assert (=> d!115469 m!884657))

(declare-fun m!884731 () Bool)

(assert (=> b!952482 m!884731))

(assert (=> b!952328 d!115469))

(declare-fun d!115471 () Bool)

(declare-fun e!536462 () Bool)

(assert (=> d!115471 e!536462))

(declare-fun c!99598 () Bool)

(assert (=> d!115471 (= c!99598 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!429230 () Unit!32040)

(declare-fun choose!1606 (array!57656 array!57654 (_ BitVec 32) (_ BitVec 32) V!32697 V!32697 (_ BitVec 64) Int) Unit!32040)

(assert (=> d!115471 (= lt!429230 (choose!1606 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) key!756 (defaultEntry!5824 thiss!1141)))))

(assert (=> d!115471 (validMask!0 (mask!27665 thiss!1141))))

(assert (=> d!115471 (= (lemmaKeyInListMapIsInArray!339 (_keys!10774 thiss!1141) (_values!5847 thiss!1141) (mask!27665 thiss!1141) (extraKeys!5556 thiss!1141) (zeroValue!5660 thiss!1141) (minValue!5660 thiss!1141) key!756 (defaultEntry!5824 thiss!1141)) lt!429230)))

(declare-fun b!952487 () Bool)

(assert (=> b!952487 (= e!536462 (arrayContainsKey!0 (_keys!10774 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!952488 () Bool)

(assert (=> b!952488 (= e!536462 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5556 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115471 c!99598) b!952487))

(assert (= (and d!115471 (not c!99598)) b!952488))

(declare-fun m!884733 () Bool)

(assert (=> d!115471 m!884733))

(assert (=> d!115471 m!884595))

(assert (=> b!952487 m!884599))

(assert (=> b!952328 d!115471))

(declare-fun d!115473 () Bool)

(declare-fun lt!429233 () (_ BitVec 32))

(assert (=> d!115473 (and (or (bvslt lt!429233 #b00000000000000000000000000000000) (bvsge lt!429233 (size!28196 (_keys!10774 thiss!1141))) (and (bvsge lt!429233 #b00000000000000000000000000000000) (bvslt lt!429233 (size!28196 (_keys!10774 thiss!1141))))) (bvsge lt!429233 #b00000000000000000000000000000000) (bvslt lt!429233 (size!28196 (_keys!10774 thiss!1141))) (= (select (arr!27716 (_keys!10774 thiss!1141)) lt!429233) key!756))))

(declare-fun e!536465 () (_ BitVec 32))

(assert (=> d!115473 (= lt!429233 e!536465)))

(declare-fun c!99601 () Bool)

(assert (=> d!115473 (= c!99601 (= (select (arr!27716 (_keys!10774 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115473 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28196 (_keys!10774 thiss!1141))) (bvslt (size!28196 (_keys!10774 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115473 (= (arrayScanForKey!0 (_keys!10774 thiss!1141) key!756 #b00000000000000000000000000000000) lt!429233)))

(declare-fun b!952493 () Bool)

(assert (=> b!952493 (= e!536465 #b00000000000000000000000000000000)))

(declare-fun b!952494 () Bool)

(assert (=> b!952494 (= e!536465 (arrayScanForKey!0 (_keys!10774 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115473 c!99601) b!952493))

(assert (= (and d!115473 (not c!99601)) b!952494))

(declare-fun m!884735 () Bool)

(assert (=> d!115473 m!884735))

(assert (=> d!115473 m!884657))

(declare-fun m!884737 () Bool)

(assert (=> b!952494 m!884737))

(assert (=> b!952328 d!115473))

(declare-fun d!115475 () Bool)

(assert (=> d!115475 (= (validMask!0 (mask!27665 thiss!1141)) (and (or (= (mask!27665 thiss!1141) #b00000000000000000000000000000111) (= (mask!27665 thiss!1141) #b00000000000000000000000000001111) (= (mask!27665 thiss!1141) #b00000000000000000000000000011111) (= (mask!27665 thiss!1141) #b00000000000000000000000000111111) (= (mask!27665 thiss!1141) #b00000000000000000000000001111111) (= (mask!27665 thiss!1141) #b00000000000000000000000011111111) (= (mask!27665 thiss!1141) #b00000000000000000000000111111111) (= (mask!27665 thiss!1141) #b00000000000000000000001111111111) (= (mask!27665 thiss!1141) #b00000000000000000000011111111111) (= (mask!27665 thiss!1141) #b00000000000000000000111111111111) (= (mask!27665 thiss!1141) #b00000000000000000001111111111111) (= (mask!27665 thiss!1141) #b00000000000000000011111111111111) (= (mask!27665 thiss!1141) #b00000000000000000111111111111111) (= (mask!27665 thiss!1141) #b00000000000000001111111111111111) (= (mask!27665 thiss!1141) #b00000000000000011111111111111111) (= (mask!27665 thiss!1141) #b00000000000000111111111111111111) (= (mask!27665 thiss!1141) #b00000000000001111111111111111111) (= (mask!27665 thiss!1141) #b00000000000011111111111111111111) (= (mask!27665 thiss!1141) #b00000000000111111111111111111111) (= (mask!27665 thiss!1141) #b00000000001111111111111111111111) (= (mask!27665 thiss!1141) #b00000000011111111111111111111111) (= (mask!27665 thiss!1141) #b00000000111111111111111111111111) (= (mask!27665 thiss!1141) #b00000001111111111111111111111111) (= (mask!27665 thiss!1141) #b00000011111111111111111111111111) (= (mask!27665 thiss!1141) #b00000111111111111111111111111111) (= (mask!27665 thiss!1141) #b00001111111111111111111111111111) (= (mask!27665 thiss!1141) #b00011111111111111111111111111111) (= (mask!27665 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27665 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!952328 d!115475))

(declare-fun d!115477 () Bool)

(declare-fun res!638176 () Bool)

(declare-fun e!536467 () Bool)

(assert (=> d!115477 (=> res!638176 e!536467)))

(assert (=> d!115477 (= res!638176 (bvsge lt!429119 (size!28196 (_keys!10774 thiss!1141))))))

(assert (=> d!115477 (= (arrayForallSeekEntryOrOpenFound!0 lt!429119 (_keys!10774 thiss!1141) (mask!27665 thiss!1141)) e!536467)))

(declare-fun b!952495 () Bool)

(declare-fun e!536468 () Bool)

(assert (=> b!952495 (= e!536467 e!536468)))

(declare-fun c!99602 () Bool)

(assert (=> b!952495 (= c!99602 (validKeyInArray!0 (select (arr!27716 (_keys!10774 thiss!1141)) lt!429119)))))

(declare-fun b!952496 () Bool)

(declare-fun e!536466 () Bool)

(declare-fun call!41599 () Bool)

(assert (=> b!952496 (= e!536466 call!41599)))

(declare-fun b!952497 () Bool)

(assert (=> b!952497 (= e!536468 e!536466)))

(declare-fun lt!429235 () (_ BitVec 64))

(assert (=> b!952497 (= lt!429235 (select (arr!27716 (_keys!10774 thiss!1141)) lt!429119))))

(declare-fun lt!429234 () Unit!32040)

(assert (=> b!952497 (= lt!429234 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10774 thiss!1141) lt!429235 lt!429119))))

(assert (=> b!952497 (arrayContainsKey!0 (_keys!10774 thiss!1141) lt!429235 #b00000000000000000000000000000000)))

(declare-fun lt!429236 () Unit!32040)

(assert (=> b!952497 (= lt!429236 lt!429234)))

(declare-fun res!638177 () Bool)

(assert (=> b!952497 (= res!638177 (= (seekEntryOrOpen!0 (select (arr!27716 (_keys!10774 thiss!1141)) lt!429119) (_keys!10774 thiss!1141) (mask!27665 thiss!1141)) (Found!9148 lt!429119)))))

(assert (=> b!952497 (=> (not res!638177) (not e!536466))))

(declare-fun bm!41596 () Bool)

(assert (=> bm!41596 (= call!41599 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!429119 #b00000000000000000000000000000001) (_keys!10774 thiss!1141) (mask!27665 thiss!1141)))))

(declare-fun b!952498 () Bool)

(assert (=> b!952498 (= e!536468 call!41599)))

(assert (= (and d!115477 (not res!638176)) b!952495))

(assert (= (and b!952495 c!99602) b!952497))

(assert (= (and b!952495 (not c!99602)) b!952498))

(assert (= (and b!952497 res!638177) b!952496))

(assert (= (or b!952496 b!952498) bm!41596))

(declare-fun m!884739 () Bool)

(assert (=> b!952495 m!884739))

(assert (=> b!952495 m!884739))

(declare-fun m!884741 () Bool)

(assert (=> b!952495 m!884741))

(assert (=> b!952497 m!884739))

(declare-fun m!884743 () Bool)

(assert (=> b!952497 m!884743))

(declare-fun m!884745 () Bool)

(assert (=> b!952497 m!884745))

(assert (=> b!952497 m!884739))

(declare-fun m!884747 () Bool)

(assert (=> b!952497 m!884747))

(declare-fun m!884749 () Bool)

(assert (=> bm!41596 m!884749))

(assert (=> b!952328 d!115477))

(declare-fun d!115479 () Bool)

(assert (=> d!115479 (arrayForallSeekEntryOrOpenFound!0 lt!429119 (_keys!10774 thiss!1141) (mask!27665 thiss!1141))))

(declare-fun lt!429239 () Unit!32040)

(declare-fun choose!38 (array!57656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32040)

(assert (=> d!115479 (= lt!429239 (choose!38 (_keys!10774 thiss!1141) (mask!27665 thiss!1141) #b00000000000000000000000000000000 lt!429119))))

(assert (=> d!115479 (validMask!0 (mask!27665 thiss!1141))))

(assert (=> d!115479 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10774 thiss!1141) (mask!27665 thiss!1141) #b00000000000000000000000000000000 lt!429119) lt!429239)))

(declare-fun bs!26755 () Bool)

(assert (= bs!26755 d!115479))

(assert (=> bs!26755 m!884593))

(declare-fun m!884751 () Bool)

(assert (=> bs!26755 m!884751))

(assert (=> bs!26755 m!884595))

(assert (=> b!952328 d!115479))

(declare-fun mapNonEmpty!33142 () Bool)

(declare-fun mapRes!33142 () Bool)

(declare-fun tp!63505 () Bool)

(declare-fun e!536473 () Bool)

(assert (=> mapNonEmpty!33142 (= mapRes!33142 (and tp!63505 e!536473))))

(declare-fun mapRest!33142 () (Array (_ BitVec 32) ValueCell!9918))

(declare-fun mapValue!33142 () ValueCell!9918)

(declare-fun mapKey!33142 () (_ BitVec 32))

(assert (=> mapNonEmpty!33142 (= mapRest!33136 (store mapRest!33142 mapKey!33142 mapValue!33142))))

(declare-fun condMapEmpty!33142 () Bool)

(declare-fun mapDefault!33142 () ValueCell!9918)

(assert (=> mapNonEmpty!33136 (= condMapEmpty!33142 (= mapRest!33136 ((as const (Array (_ BitVec 32) ValueCell!9918)) mapDefault!33142)))))

(declare-fun e!536474 () Bool)

(assert (=> mapNonEmpty!33136 (= tp!63496 (and e!536474 mapRes!33142))))

(declare-fun mapIsEmpty!33142 () Bool)

(assert (=> mapIsEmpty!33142 mapRes!33142))

(declare-fun b!952506 () Bool)

(assert (=> b!952506 (= e!536474 tp_is_empty!20799)))

(declare-fun b!952505 () Bool)

(assert (=> b!952505 (= e!536473 tp_is_empty!20799)))

(assert (= (and mapNonEmpty!33136 condMapEmpty!33142) mapIsEmpty!33142))

(assert (= (and mapNonEmpty!33136 (not condMapEmpty!33142)) mapNonEmpty!33142))

(assert (= (and mapNonEmpty!33142 ((_ is ValueCellFull!9918) mapValue!33142)) b!952505))

(assert (= (and mapNonEmpty!33136 ((_ is ValueCellFull!9918) mapDefault!33142)) b!952506))

(declare-fun m!884753 () Bool)

(assert (=> mapNonEmpty!33142 m!884753))

(declare-fun b_lambda!14447 () Bool)

(assert (= b_lambda!14445 (or (and b!952323 b_free!18291) b_lambda!14447)))

(check-sat (not b!952432) (not bm!41596) (not d!115471) (not b!952434) (not b!952427) (not b!952381) (not b!952430) (not mapNonEmpty!33142) (not b!952482) (not b!952372) (not b!952371) (not d!115479) (not d!115461) (not bm!41592) (not b!952497) (not b!952442) (not b!952487) (not b!952494) b_and!29793 (not b!952438) (not b_next!18291) (not b!952426) (not bm!41595) (not b_lambda!14447) tp_is_empty!20799 (not b!952441) (not d!115465) (not bm!41589) (not b!952370) (not b!952495) (not d!115457) (not d!115459) (not b!952460) (not b!952379) (not b!952475) (not bm!41591) (not b!952473) (not bm!41586))
(check-sat b_and!29793 (not b_next!18291))
