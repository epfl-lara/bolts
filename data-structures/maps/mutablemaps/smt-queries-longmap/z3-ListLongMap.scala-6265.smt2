; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80120 () Bool)

(assert start!80120)

(declare-fun b!941313 () Bool)

(declare-fun b_free!17913 () Bool)

(declare-fun b_next!17913 () Bool)

(assert (=> b!941313 (= b_free!17913 (not b_next!17913))))

(declare-fun tp!62222 () Bool)

(declare-fun b_and!29343 () Bool)

(assert (=> b!941313 (= tp!62222 b_and!29343)))

(declare-fun b!941312 () Bool)

(declare-fun e!529230 () Bool)

(declare-fun tp_is_empty!20421 () Bool)

(assert (=> b!941312 (= e!529230 tp_is_empty!20421)))

(declare-fun e!529231 () Bool)

(declare-fun e!529234 () Bool)

(declare-datatypes ((V!32193 0))(
  ( (V!32194 (val!10261 Int)) )
))
(declare-datatypes ((ValueCell!9729 0))(
  ( (ValueCellFull!9729 (v!12792 V!32193)) (EmptyCell!9729) )
))
(declare-datatypes ((array!56816 0))(
  ( (array!56817 (arr!27337 (Array (_ BitVec 32) ValueCell!9729)) (size!27800 (_ BitVec 32))) )
))
(declare-datatypes ((array!56818 0))(
  ( (array!56819 (arr!27338 (Array (_ BitVec 32) (_ BitVec 64))) (size!27801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4608 0))(
  ( (LongMapFixedSize!4609 (defaultEntry!5595 Int) (mask!27157 (_ BitVec 32)) (extraKeys!5327 (_ BitVec 32)) (zeroValue!5431 V!32193) (minValue!5431 V!32193) (_size!2359 (_ BitVec 32)) (_keys!10446 array!56818) (_values!5618 array!56816) (_vacant!2359 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4608)

(declare-fun array_inv!21200 (array!56818) Bool)

(declare-fun array_inv!21201 (array!56816) Bool)

(assert (=> b!941313 (= e!529234 (and tp!62222 tp_is_empty!20421 (array_inv!21200 (_keys!10446 thiss!1141)) (array_inv!21201 (_values!5618 thiss!1141)) e!529231))))

(declare-fun res!632900 () Bool)

(declare-fun e!529233 () Bool)

(assert (=> start!80120 (=> (not res!632900) (not e!529233))))

(declare-fun valid!1746 (LongMapFixedSize!4608) Bool)

(assert (=> start!80120 (= res!632900 (valid!1746 thiss!1141))))

(assert (=> start!80120 e!529233))

(assert (=> start!80120 e!529234))

(assert (=> start!80120 true))

(declare-fun b!941314 () Bool)

(declare-fun res!632901 () Bool)

(assert (=> b!941314 (=> (not res!632901) (not e!529233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941314 (= res!632901 (validMask!0 (mask!27157 thiss!1141)))))

(declare-fun b!941315 () Bool)

(declare-fun res!632898 () Bool)

(assert (=> b!941315 (=> (not res!632898) (not e!529233))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941315 (= res!632898 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941316 () Bool)

(declare-fun mapRes!32429 () Bool)

(assert (=> b!941316 (= e!529231 (and e!529230 mapRes!32429))))

(declare-fun condMapEmpty!32429 () Bool)

(declare-fun mapDefault!32429 () ValueCell!9729)

(assert (=> b!941316 (= condMapEmpty!32429 (= (arr!27337 (_values!5618 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9729)) mapDefault!32429)))))

(declare-fun b!941317 () Bool)

(assert (=> b!941317 (= e!529233 (and (= (size!27800 (_values!5618 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27157 thiss!1141))) (not (= (size!27801 (_keys!10446 thiss!1141)) (size!27800 (_values!5618 thiss!1141))))))))

(declare-fun b!941318 () Bool)

(declare-fun res!632899 () Bool)

(assert (=> b!941318 (=> (not res!632899) (not e!529233))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9014 0))(
  ( (MissingZero!9014 (index!38426 (_ BitVec 32))) (Found!9014 (index!38427 (_ BitVec 32))) (Intermediate!9014 (undefined!9826 Bool) (index!38428 (_ BitVec 32)) (x!80773 (_ BitVec 32))) (Undefined!9014) (MissingVacant!9014 (index!38429 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56818 (_ BitVec 32)) SeekEntryResult!9014)

(assert (=> b!941318 (= res!632899 (not ((_ is Found!9014) (seekEntry!0 key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))))

(declare-fun b!941319 () Bool)

(declare-fun e!529232 () Bool)

(assert (=> b!941319 (= e!529232 tp_is_empty!20421)))

(declare-fun mapIsEmpty!32429 () Bool)

(assert (=> mapIsEmpty!32429 mapRes!32429))

(declare-fun mapNonEmpty!32429 () Bool)

(declare-fun tp!62221 () Bool)

(assert (=> mapNonEmpty!32429 (= mapRes!32429 (and tp!62221 e!529232))))

(declare-fun mapValue!32429 () ValueCell!9729)

(declare-fun mapRest!32429 () (Array (_ BitVec 32) ValueCell!9729))

(declare-fun mapKey!32429 () (_ BitVec 32))

(assert (=> mapNonEmpty!32429 (= (arr!27337 (_values!5618 thiss!1141)) (store mapRest!32429 mapKey!32429 mapValue!32429))))

(assert (= (and start!80120 res!632900) b!941315))

(assert (= (and b!941315 res!632898) b!941318))

(assert (= (and b!941318 res!632899) b!941314))

(assert (= (and b!941314 res!632901) b!941317))

(assert (= (and b!941316 condMapEmpty!32429) mapIsEmpty!32429))

(assert (= (and b!941316 (not condMapEmpty!32429)) mapNonEmpty!32429))

(assert (= (and mapNonEmpty!32429 ((_ is ValueCellFull!9729) mapValue!32429)) b!941319))

(assert (= (and b!941316 ((_ is ValueCellFull!9729) mapDefault!32429)) b!941312))

(assert (= b!941313 b!941316))

(assert (= start!80120 b!941313))

(declare-fun m!876497 () Bool)

(assert (=> mapNonEmpty!32429 m!876497))

(declare-fun m!876499 () Bool)

(assert (=> b!941314 m!876499))

(declare-fun m!876501 () Bool)

(assert (=> start!80120 m!876501))

(declare-fun m!876503 () Bool)

(assert (=> b!941318 m!876503))

(declare-fun m!876505 () Bool)

(assert (=> b!941313 m!876505))

(declare-fun m!876507 () Bool)

(assert (=> b!941313 m!876507))

(check-sat tp_is_empty!20421 (not start!80120) b_and!29343 (not b!941318) (not b!941314) (not b_next!17913) (not mapNonEmpty!32429) (not b!941313))
(check-sat b_and!29343 (not b_next!17913))
(get-model)

(declare-fun b!941356 () Bool)

(declare-fun c!97999 () Bool)

(declare-fun lt!424930 () (_ BitVec 64))

(assert (=> b!941356 (= c!97999 (= lt!424930 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529261 () SeekEntryResult!9014)

(declare-fun e!529260 () SeekEntryResult!9014)

(assert (=> b!941356 (= e!529261 e!529260)))

(declare-fun b!941357 () Bool)

(declare-fun lt!424931 () SeekEntryResult!9014)

(assert (=> b!941357 (= e!529260 (MissingZero!9014 (index!38428 lt!424931)))))

(declare-fun b!941358 () Bool)

(assert (=> b!941358 (= e!529261 (Found!9014 (index!38428 lt!424931)))))

(declare-fun b!941359 () Bool)

(declare-fun lt!424932 () SeekEntryResult!9014)

(assert (=> b!941359 (= e!529260 (ite ((_ is MissingVacant!9014) lt!424932) (MissingZero!9014 (index!38429 lt!424932)) lt!424932))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56818 (_ BitVec 32)) SeekEntryResult!9014)

(assert (=> b!941359 (= lt!424932 (seekKeyOrZeroReturnVacant!0 (x!80773 lt!424931) (index!38428 lt!424931) (index!38428 lt!424931) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(declare-fun b!941360 () Bool)

(declare-fun e!529262 () SeekEntryResult!9014)

(assert (=> b!941360 (= e!529262 Undefined!9014)))

(declare-fun d!113991 () Bool)

(declare-fun lt!424929 () SeekEntryResult!9014)

(assert (=> d!113991 (and (or ((_ is MissingVacant!9014) lt!424929) (not ((_ is Found!9014) lt!424929)) (and (bvsge (index!38427 lt!424929) #b00000000000000000000000000000000) (bvslt (index!38427 lt!424929) (size!27801 (_keys!10446 thiss!1141))))) (not ((_ is MissingVacant!9014) lt!424929)) (or (not ((_ is Found!9014) lt!424929)) (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38427 lt!424929)) key!756)))))

(assert (=> d!113991 (= lt!424929 e!529262)))

(declare-fun c!98000 () Bool)

(assert (=> d!113991 (= c!98000 (and ((_ is Intermediate!9014) lt!424931) (undefined!9826 lt!424931)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56818 (_ BitVec 32)) SeekEntryResult!9014)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!113991 (= lt!424931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27157 thiss!1141)) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(assert (=> d!113991 (validMask!0 (mask!27157 thiss!1141))))

(assert (=> d!113991 (= (seekEntry!0 key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)) lt!424929)))

(declare-fun b!941361 () Bool)

(assert (=> b!941361 (= e!529262 e!529261)))

(assert (=> b!941361 (= lt!424930 (select (arr!27338 (_keys!10446 thiss!1141)) (index!38428 lt!424931)))))

(declare-fun c!98001 () Bool)

(assert (=> b!941361 (= c!98001 (= lt!424930 key!756))))

(assert (= (and d!113991 c!98000) b!941360))

(assert (= (and d!113991 (not c!98000)) b!941361))

(assert (= (and b!941361 c!98001) b!941358))

(assert (= (and b!941361 (not c!98001)) b!941356))

(assert (= (and b!941356 c!97999) b!941357))

(assert (= (and b!941356 (not c!97999)) b!941359))

(declare-fun m!876521 () Bool)

(assert (=> b!941359 m!876521))

(declare-fun m!876523 () Bool)

(assert (=> d!113991 m!876523))

(declare-fun m!876525 () Bool)

(assert (=> d!113991 m!876525))

(assert (=> d!113991 m!876525))

(declare-fun m!876527 () Bool)

(assert (=> d!113991 m!876527))

(assert (=> d!113991 m!876499))

(declare-fun m!876529 () Bool)

(assert (=> b!941361 m!876529))

(assert (=> b!941318 d!113991))

(declare-fun d!113993 () Bool)

(declare-fun res!632920 () Bool)

(declare-fun e!529265 () Bool)

(assert (=> d!113993 (=> (not res!632920) (not e!529265))))

(declare-fun simpleValid!340 (LongMapFixedSize!4608) Bool)

(assert (=> d!113993 (= res!632920 (simpleValid!340 thiss!1141))))

(assert (=> d!113993 (= (valid!1746 thiss!1141) e!529265)))

(declare-fun b!941368 () Bool)

(declare-fun res!632921 () Bool)

(assert (=> b!941368 (=> (not res!632921) (not e!529265))))

(declare-fun arrayCountValidKeys!0 (array!56818 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941368 (= res!632921 (= (arrayCountValidKeys!0 (_keys!10446 thiss!1141) #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))) (_size!2359 thiss!1141)))))

(declare-fun b!941369 () Bool)

(declare-fun res!632922 () Bool)

(assert (=> b!941369 (=> (not res!632922) (not e!529265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56818 (_ BitVec 32)) Bool)

(assert (=> b!941369 (= res!632922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(declare-fun b!941370 () Bool)

(declare-datatypes ((List!19341 0))(
  ( (Nil!19338) (Cons!19337 (h!20484 (_ BitVec 64)) (t!27664 List!19341)) )
))
(declare-fun arrayNoDuplicates!0 (array!56818 (_ BitVec 32) List!19341) Bool)

(assert (=> b!941370 (= e!529265 (arrayNoDuplicates!0 (_keys!10446 thiss!1141) #b00000000000000000000000000000000 Nil!19338))))

(assert (= (and d!113993 res!632920) b!941368))

(assert (= (and b!941368 res!632921) b!941369))

(assert (= (and b!941369 res!632922) b!941370))

(declare-fun m!876531 () Bool)

(assert (=> d!113993 m!876531))

(declare-fun m!876533 () Bool)

(assert (=> b!941368 m!876533))

(declare-fun m!876535 () Bool)

(assert (=> b!941369 m!876535))

(declare-fun m!876537 () Bool)

(assert (=> b!941370 m!876537))

(assert (=> start!80120 d!113993))

(declare-fun d!113995 () Bool)

(assert (=> d!113995 (= (validMask!0 (mask!27157 thiss!1141)) (and (or (= (mask!27157 thiss!1141) #b00000000000000000000000000000111) (= (mask!27157 thiss!1141) #b00000000000000000000000000001111) (= (mask!27157 thiss!1141) #b00000000000000000000000000011111) (= (mask!27157 thiss!1141) #b00000000000000000000000000111111) (= (mask!27157 thiss!1141) #b00000000000000000000000001111111) (= (mask!27157 thiss!1141) #b00000000000000000000000011111111) (= (mask!27157 thiss!1141) #b00000000000000000000000111111111) (= (mask!27157 thiss!1141) #b00000000000000000000001111111111) (= (mask!27157 thiss!1141) #b00000000000000000000011111111111) (= (mask!27157 thiss!1141) #b00000000000000000000111111111111) (= (mask!27157 thiss!1141) #b00000000000000000001111111111111) (= (mask!27157 thiss!1141) #b00000000000000000011111111111111) (= (mask!27157 thiss!1141) #b00000000000000000111111111111111) (= (mask!27157 thiss!1141) #b00000000000000001111111111111111) (= (mask!27157 thiss!1141) #b00000000000000011111111111111111) (= (mask!27157 thiss!1141) #b00000000000000111111111111111111) (= (mask!27157 thiss!1141) #b00000000000001111111111111111111) (= (mask!27157 thiss!1141) #b00000000000011111111111111111111) (= (mask!27157 thiss!1141) #b00000000000111111111111111111111) (= (mask!27157 thiss!1141) #b00000000001111111111111111111111) (= (mask!27157 thiss!1141) #b00000000011111111111111111111111) (= (mask!27157 thiss!1141) #b00000000111111111111111111111111) (= (mask!27157 thiss!1141) #b00000001111111111111111111111111) (= (mask!27157 thiss!1141) #b00000011111111111111111111111111) (= (mask!27157 thiss!1141) #b00000111111111111111111111111111) (= (mask!27157 thiss!1141) #b00001111111111111111111111111111) (= (mask!27157 thiss!1141) #b00011111111111111111111111111111) (= (mask!27157 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27157 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941314 d!113995))

(declare-fun d!113997 () Bool)

(assert (=> d!113997 (= (array_inv!21200 (_keys!10446 thiss!1141)) (bvsge (size!27801 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941313 d!113997))

(declare-fun d!113999 () Bool)

(assert (=> d!113999 (= (array_inv!21201 (_values!5618 thiss!1141)) (bvsge (size!27800 (_values!5618 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941313 d!113999))

(declare-fun mapNonEmpty!32435 () Bool)

(declare-fun mapRes!32435 () Bool)

(declare-fun tp!62231 () Bool)

(declare-fun e!529271 () Bool)

(assert (=> mapNonEmpty!32435 (= mapRes!32435 (and tp!62231 e!529271))))

(declare-fun mapValue!32435 () ValueCell!9729)

(declare-fun mapRest!32435 () (Array (_ BitVec 32) ValueCell!9729))

(declare-fun mapKey!32435 () (_ BitVec 32))

(assert (=> mapNonEmpty!32435 (= mapRest!32429 (store mapRest!32435 mapKey!32435 mapValue!32435))))

(declare-fun b!941377 () Bool)

(assert (=> b!941377 (= e!529271 tp_is_empty!20421)))

(declare-fun condMapEmpty!32435 () Bool)

(declare-fun mapDefault!32435 () ValueCell!9729)

(assert (=> mapNonEmpty!32429 (= condMapEmpty!32435 (= mapRest!32429 ((as const (Array (_ BitVec 32) ValueCell!9729)) mapDefault!32435)))))

(declare-fun e!529270 () Bool)

(assert (=> mapNonEmpty!32429 (= tp!62221 (and e!529270 mapRes!32435))))

(declare-fun b!941378 () Bool)

(assert (=> b!941378 (= e!529270 tp_is_empty!20421)))

(declare-fun mapIsEmpty!32435 () Bool)

(assert (=> mapIsEmpty!32435 mapRes!32435))

(assert (= (and mapNonEmpty!32429 condMapEmpty!32435) mapIsEmpty!32435))

(assert (= (and mapNonEmpty!32429 (not condMapEmpty!32435)) mapNonEmpty!32435))

(assert (= (and mapNonEmpty!32435 ((_ is ValueCellFull!9729) mapValue!32435)) b!941377))

(assert (= (and mapNonEmpty!32429 ((_ is ValueCellFull!9729) mapDefault!32435)) b!941378))

(declare-fun m!876539 () Bool)

(assert (=> mapNonEmpty!32435 m!876539))

(check-sat tp_is_empty!20421 (not b!941370) (not mapNonEmpty!32435) b_and!29343 (not b!941368) (not d!113993) (not b_next!17913) (not d!113991) (not b!941359) (not b!941369))
(check-sat b_and!29343 (not b_next!17913))
(get-model)

(declare-fun b!941391 () Bool)

(declare-fun e!529280 () SeekEntryResult!9014)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941391 (= e!529280 (seekKeyOrZeroReturnVacant!0 (bvadd (x!80773 lt!424931) #b00000000000000000000000000000001) (nextIndex!0 (index!38428 lt!424931) (x!80773 lt!424931) (mask!27157 thiss!1141)) (index!38428 lt!424931) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(declare-fun lt!424937 () SeekEntryResult!9014)

(declare-fun d!114001 () Bool)

(assert (=> d!114001 (and (or ((_ is Undefined!9014) lt!424937) (not ((_ is Found!9014) lt!424937)) (and (bvsge (index!38427 lt!424937) #b00000000000000000000000000000000) (bvslt (index!38427 lt!424937) (size!27801 (_keys!10446 thiss!1141))))) (or ((_ is Undefined!9014) lt!424937) ((_ is Found!9014) lt!424937) (not ((_ is MissingVacant!9014) lt!424937)) (not (= (index!38429 lt!424937) (index!38428 lt!424931))) (and (bvsge (index!38429 lt!424937) #b00000000000000000000000000000000) (bvslt (index!38429 lt!424937) (size!27801 (_keys!10446 thiss!1141))))) (or ((_ is Undefined!9014) lt!424937) (ite ((_ is Found!9014) lt!424937) (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38427 lt!424937)) key!756) (and ((_ is MissingVacant!9014) lt!424937) (= (index!38429 lt!424937) (index!38428 lt!424931)) (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38429 lt!424937)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!529278 () SeekEntryResult!9014)

(assert (=> d!114001 (= lt!424937 e!529278)))

(declare-fun c!98009 () Bool)

(assert (=> d!114001 (= c!98009 (bvsge (x!80773 lt!424931) #b01111111111111111111111111111110))))

(declare-fun lt!424938 () (_ BitVec 64))

(assert (=> d!114001 (= lt!424938 (select (arr!27338 (_keys!10446 thiss!1141)) (index!38428 lt!424931)))))

(assert (=> d!114001 (validMask!0 (mask!27157 thiss!1141))))

(assert (=> d!114001 (= (seekKeyOrZeroReturnVacant!0 (x!80773 lt!424931) (index!38428 lt!424931) (index!38428 lt!424931) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)) lt!424937)))

(declare-fun b!941392 () Bool)

(assert (=> b!941392 (= e!529280 (MissingVacant!9014 (index!38428 lt!424931)))))

(declare-fun b!941393 () Bool)

(assert (=> b!941393 (= e!529278 Undefined!9014)))

(declare-fun b!941394 () Bool)

(declare-fun e!529279 () SeekEntryResult!9014)

(assert (=> b!941394 (= e!529278 e!529279)))

(declare-fun c!98008 () Bool)

(assert (=> b!941394 (= c!98008 (= lt!424938 key!756))))

(declare-fun b!941395 () Bool)

(assert (=> b!941395 (= e!529279 (Found!9014 (index!38428 lt!424931)))))

(declare-fun b!941396 () Bool)

(declare-fun c!98010 () Bool)

(assert (=> b!941396 (= c!98010 (= lt!424938 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941396 (= e!529279 e!529280)))

(assert (= (and d!114001 c!98009) b!941393))

(assert (= (and d!114001 (not c!98009)) b!941394))

(assert (= (and b!941394 c!98008) b!941395))

(assert (= (and b!941394 (not c!98008)) b!941396))

(assert (= (and b!941396 c!98010) b!941392))

(assert (= (and b!941396 (not c!98010)) b!941391))

(declare-fun m!876541 () Bool)

(assert (=> b!941391 m!876541))

(assert (=> b!941391 m!876541))

(declare-fun m!876543 () Bool)

(assert (=> b!941391 m!876543))

(declare-fun m!876545 () Bool)

(assert (=> d!114001 m!876545))

(declare-fun m!876547 () Bool)

(assert (=> d!114001 m!876547))

(assert (=> d!114001 m!876529))

(assert (=> d!114001 m!876499))

(assert (=> b!941359 d!114001))

(declare-fun b!941405 () Bool)

(declare-fun e!529289 () Bool)

(declare-fun e!529287 () Bool)

(assert (=> b!941405 (= e!529289 e!529287)))

(declare-fun c!98013 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!941405 (= c!98013 (validKeyInArray!0 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941406 () Bool)

(declare-fun call!40926 () Bool)

(assert (=> b!941406 (= e!529287 call!40926)))

(declare-fun b!941407 () Bool)

(declare-fun e!529288 () Bool)

(assert (=> b!941407 (= e!529288 call!40926)))

(declare-fun b!941408 () Bool)

(assert (=> b!941408 (= e!529287 e!529288)))

(declare-fun lt!424945 () (_ BitVec 64))

(assert (=> b!941408 (= lt!424945 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31807 0))(
  ( (Unit!31808) )
))
(declare-fun lt!424946 () Unit!31807)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56818 (_ BitVec 64) (_ BitVec 32)) Unit!31807)

(assert (=> b!941408 (= lt!424946 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10446 thiss!1141) lt!424945 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!56818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!941408 (arrayContainsKey!0 (_keys!10446 thiss!1141) lt!424945 #b00000000000000000000000000000000)))

(declare-fun lt!424947 () Unit!31807)

(assert (=> b!941408 (= lt!424947 lt!424946)))

(declare-fun res!632928 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56818 (_ BitVec 32)) SeekEntryResult!9014)

(assert (=> b!941408 (= res!632928 (= (seekEntryOrOpen!0 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000) (_keys!10446 thiss!1141) (mask!27157 thiss!1141)) (Found!9014 #b00000000000000000000000000000000)))))

(assert (=> b!941408 (=> (not res!632928) (not e!529288))))

(declare-fun d!114003 () Bool)

(declare-fun res!632927 () Bool)

(assert (=> d!114003 (=> res!632927 e!529289)))

(assert (=> d!114003 (= res!632927 (bvsge #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))))))

(assert (=> d!114003 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)) e!529289)))

(declare-fun bm!40923 () Bool)

(assert (=> bm!40923 (= call!40926 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(assert (= (and d!114003 (not res!632927)) b!941405))

(assert (= (and b!941405 c!98013) b!941408))

(assert (= (and b!941405 (not c!98013)) b!941406))

(assert (= (and b!941408 res!632928) b!941407))

(assert (= (or b!941407 b!941406) bm!40923))

(declare-fun m!876549 () Bool)

(assert (=> b!941405 m!876549))

(assert (=> b!941405 m!876549))

(declare-fun m!876551 () Bool)

(assert (=> b!941405 m!876551))

(assert (=> b!941408 m!876549))

(declare-fun m!876553 () Bool)

(assert (=> b!941408 m!876553))

(declare-fun m!876555 () Bool)

(assert (=> b!941408 m!876555))

(assert (=> b!941408 m!876549))

(declare-fun m!876557 () Bool)

(assert (=> b!941408 m!876557))

(declare-fun m!876559 () Bool)

(assert (=> bm!40923 m!876559))

(assert (=> b!941369 d!114003))

(declare-fun b!941417 () Bool)

(declare-fun e!529294 () (_ BitVec 32))

(declare-fun call!40929 () (_ BitVec 32))

(assert (=> b!941417 (= e!529294 (bvadd #b00000000000000000000000000000001 call!40929))))

(declare-fun d!114005 () Bool)

(declare-fun lt!424950 () (_ BitVec 32))

(assert (=> d!114005 (and (bvsge lt!424950 #b00000000000000000000000000000000) (bvsle lt!424950 (bvsub (size!27801 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!529295 () (_ BitVec 32))

(assert (=> d!114005 (= lt!424950 e!529295)))

(declare-fun c!98018 () Bool)

(assert (=> d!114005 (= c!98018 (bvsge #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))))))

(assert (=> d!114005 (and (bvsle #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27801 (_keys!10446 thiss!1141)) (size!27801 (_keys!10446 thiss!1141))))))

(assert (=> d!114005 (= (arrayCountValidKeys!0 (_keys!10446 thiss!1141) #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))) lt!424950)))

(declare-fun bm!40926 () Bool)

(assert (=> bm!40926 (= call!40929 (arrayCountValidKeys!0 (_keys!10446 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27801 (_keys!10446 thiss!1141))))))

(declare-fun b!941418 () Bool)

(assert (=> b!941418 (= e!529295 #b00000000000000000000000000000000)))

(declare-fun b!941419 () Bool)

(assert (=> b!941419 (= e!529294 call!40929)))

(declare-fun b!941420 () Bool)

(assert (=> b!941420 (= e!529295 e!529294)))

(declare-fun c!98019 () Bool)

(assert (=> b!941420 (= c!98019 (validKeyInArray!0 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114005 c!98018) b!941418))

(assert (= (and d!114005 (not c!98018)) b!941420))

(assert (= (and b!941420 c!98019) b!941417))

(assert (= (and b!941420 (not c!98019)) b!941419))

(assert (= (or b!941417 b!941419) bm!40926))

(declare-fun m!876561 () Bool)

(assert (=> bm!40926 m!876561))

(assert (=> b!941420 m!876549))

(assert (=> b!941420 m!876549))

(assert (=> b!941420 m!876551))

(assert (=> b!941368 d!114005))

(declare-fun d!114007 () Bool)

(declare-fun res!632939 () Bool)

(declare-fun e!529298 () Bool)

(assert (=> d!114007 (=> (not res!632939) (not e!529298))))

(assert (=> d!114007 (= res!632939 (validMask!0 (mask!27157 thiss!1141)))))

(assert (=> d!114007 (= (simpleValid!340 thiss!1141) e!529298)))

(declare-fun b!941429 () Bool)

(declare-fun res!632938 () Bool)

(assert (=> b!941429 (=> (not res!632938) (not e!529298))))

(assert (=> b!941429 (= res!632938 (and (= (size!27800 (_values!5618 thiss!1141)) (bvadd (mask!27157 thiss!1141) #b00000000000000000000000000000001)) (= (size!27801 (_keys!10446 thiss!1141)) (size!27800 (_values!5618 thiss!1141))) (bvsge (_size!2359 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2359 thiss!1141) (bvadd (mask!27157 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!941430 () Bool)

(declare-fun res!632940 () Bool)

(assert (=> b!941430 (=> (not res!632940) (not e!529298))))

(declare-fun size!27804 (LongMapFixedSize!4608) (_ BitVec 32))

(assert (=> b!941430 (= res!632940 (bvsge (size!27804 thiss!1141) (_size!2359 thiss!1141)))))

(declare-fun b!941432 () Bool)

(assert (=> b!941432 (= e!529298 (and (bvsge (extraKeys!5327 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5327 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2359 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!941431 () Bool)

(declare-fun res!632937 () Bool)

(assert (=> b!941431 (=> (not res!632937) (not e!529298))))

(assert (=> b!941431 (= res!632937 (= (size!27804 thiss!1141) (bvadd (_size!2359 thiss!1141) (bvsdiv (bvadd (extraKeys!5327 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!114007 res!632939) b!941429))

(assert (= (and b!941429 res!632938) b!941430))

(assert (= (and b!941430 res!632940) b!941431))

(assert (= (and b!941431 res!632937) b!941432))

(assert (=> d!114007 m!876499))

(declare-fun m!876563 () Bool)

(assert (=> b!941430 m!876563))

(assert (=> b!941431 m!876563))

(assert (=> d!113993 d!114007))

(declare-fun b!941451 () Bool)

(declare-fun e!529309 () Bool)

(declare-fun e!529312 () Bool)

(assert (=> b!941451 (= e!529309 e!529312)))

(declare-fun res!632947 () Bool)

(declare-fun lt!424956 () SeekEntryResult!9014)

(assert (=> b!941451 (= res!632947 (and ((_ is Intermediate!9014) lt!424956) (not (undefined!9826 lt!424956)) (bvslt (x!80773 lt!424956) #b01111111111111111111111111111110) (bvsge (x!80773 lt!424956) #b00000000000000000000000000000000) (bvsge (x!80773 lt!424956) #b00000000000000000000000000000000)))))

(assert (=> b!941451 (=> (not res!632947) (not e!529312))))

(declare-fun b!941452 () Bool)

(assert (=> b!941452 (and (bvsge (index!38428 lt!424956) #b00000000000000000000000000000000) (bvslt (index!38428 lt!424956) (size!27801 (_keys!10446 thiss!1141))))))

(declare-fun res!632949 () Bool)

(assert (=> b!941452 (= res!632949 (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38428 lt!424956)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!529313 () Bool)

(assert (=> b!941452 (=> res!632949 e!529313)))

(declare-fun b!941453 () Bool)

(declare-fun e!529311 () SeekEntryResult!9014)

(assert (=> b!941453 (= e!529311 (Intermediate!9014 false (toIndex!0 key!756 (mask!27157 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!941454 () Bool)

(assert (=> b!941454 (and (bvsge (index!38428 lt!424956) #b00000000000000000000000000000000) (bvslt (index!38428 lt!424956) (size!27801 (_keys!10446 thiss!1141))))))

(declare-fun res!632948 () Bool)

(assert (=> b!941454 (= res!632948 (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38428 lt!424956)) key!756))))

(assert (=> b!941454 (=> res!632948 e!529313)))

(assert (=> b!941454 (= e!529312 e!529313)))

(declare-fun b!941455 () Bool)

(assert (=> b!941455 (and (bvsge (index!38428 lt!424956) #b00000000000000000000000000000000) (bvslt (index!38428 lt!424956) (size!27801 (_keys!10446 thiss!1141))))))

(assert (=> b!941455 (= e!529313 (= (select (arr!27338 (_keys!10446 thiss!1141)) (index!38428 lt!424956)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!941456 () Bool)

(declare-fun e!529310 () SeekEntryResult!9014)

(assert (=> b!941456 (= e!529310 (Intermediate!9014 true (toIndex!0 key!756 (mask!27157 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114009 () Bool)

(assert (=> d!114009 e!529309))

(declare-fun c!98028 () Bool)

(assert (=> d!114009 (= c!98028 (and ((_ is Intermediate!9014) lt!424956) (undefined!9826 lt!424956)))))

(assert (=> d!114009 (= lt!424956 e!529310)))

(declare-fun c!98026 () Bool)

(assert (=> d!114009 (= c!98026 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!424955 () (_ BitVec 64))

(assert (=> d!114009 (= lt!424955 (select (arr!27338 (_keys!10446 thiss!1141)) (toIndex!0 key!756 (mask!27157 thiss!1141))))))

(assert (=> d!114009 (validMask!0 (mask!27157 thiss!1141))))

(assert (=> d!114009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27157 thiss!1141)) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)) lt!424956)))

(declare-fun b!941457 () Bool)

(assert (=> b!941457 (= e!529311 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27157 thiss!1141)) #b00000000000000000000000000000000 (mask!27157 thiss!1141)) key!756 (_keys!10446 thiss!1141) (mask!27157 thiss!1141)))))

(declare-fun b!941458 () Bool)

(assert (=> b!941458 (= e!529310 e!529311)))

(declare-fun c!98027 () Bool)

(assert (=> b!941458 (= c!98027 (or (= lt!424955 key!756) (= (bvadd lt!424955 lt!424955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!941459 () Bool)

(assert (=> b!941459 (= e!529309 (bvsge (x!80773 lt!424956) #b01111111111111111111111111111110))))

(assert (= (and d!114009 c!98026) b!941456))

(assert (= (and d!114009 (not c!98026)) b!941458))

(assert (= (and b!941458 c!98027) b!941453))

(assert (= (and b!941458 (not c!98027)) b!941457))

(assert (= (and d!114009 c!98028) b!941459))

(assert (= (and d!114009 (not c!98028)) b!941451))

(assert (= (and b!941451 res!632947) b!941454))

(assert (= (and b!941454 (not res!632948)) b!941452))

(assert (= (and b!941452 (not res!632949)) b!941455))

(declare-fun m!876565 () Bool)

(assert (=> b!941454 m!876565))

(assert (=> d!114009 m!876525))

(declare-fun m!876567 () Bool)

(assert (=> d!114009 m!876567))

(assert (=> d!114009 m!876499))

(assert (=> b!941457 m!876525))

(declare-fun m!876569 () Bool)

(assert (=> b!941457 m!876569))

(assert (=> b!941457 m!876569))

(declare-fun m!876571 () Bool)

(assert (=> b!941457 m!876571))

(assert (=> b!941455 m!876565))

(assert (=> b!941452 m!876565))

(assert (=> d!113991 d!114009))

(declare-fun d!114011 () Bool)

(declare-fun lt!424962 () (_ BitVec 32))

(declare-fun lt!424961 () (_ BitVec 32))

(assert (=> d!114011 (= lt!424962 (bvmul (bvxor lt!424961 (bvlshr lt!424961 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114011 (= lt!424961 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114011 (and (bvsge (mask!27157 thiss!1141) #b00000000000000000000000000000000) (let ((res!632950 (let ((h!20485 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!80790 (bvmul (bvxor h!20485 (bvlshr h!20485 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!80790 (bvlshr x!80790 #b00000000000000000000000000001101)) (mask!27157 thiss!1141)))))) (and (bvslt res!632950 (bvadd (mask!27157 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!632950 #b00000000000000000000000000000000))))))

(assert (=> d!114011 (= (toIndex!0 key!756 (mask!27157 thiss!1141)) (bvand (bvxor lt!424962 (bvlshr lt!424962 #b00000000000000000000000000001101)) (mask!27157 thiss!1141)))))

(assert (=> d!113991 d!114011))

(assert (=> d!113991 d!113995))

(declare-fun b!941470 () Bool)

(declare-fun e!529322 () Bool)

(declare-fun e!529325 () Bool)

(assert (=> b!941470 (= e!529322 e!529325)))

(declare-fun res!632958 () Bool)

(assert (=> b!941470 (=> (not res!632958) (not e!529325))))

(declare-fun e!529323 () Bool)

(assert (=> b!941470 (= res!632958 (not e!529323))))

(declare-fun res!632959 () Bool)

(assert (=> b!941470 (=> (not res!632959) (not e!529323))))

(assert (=> b!941470 (= res!632959 (validKeyInArray!0 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941471 () Bool)

(declare-fun e!529324 () Bool)

(declare-fun call!40932 () Bool)

(assert (=> b!941471 (= e!529324 call!40932)))

(declare-fun d!114013 () Bool)

(declare-fun res!632957 () Bool)

(assert (=> d!114013 (=> res!632957 e!529322)))

(assert (=> d!114013 (= res!632957 (bvsge #b00000000000000000000000000000000 (size!27801 (_keys!10446 thiss!1141))))))

(assert (=> d!114013 (= (arrayNoDuplicates!0 (_keys!10446 thiss!1141) #b00000000000000000000000000000000 Nil!19338) e!529322)))

(declare-fun b!941472 () Bool)

(assert (=> b!941472 (= e!529325 e!529324)))

(declare-fun c!98031 () Bool)

(assert (=> b!941472 (= c!98031 (validKeyInArray!0 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!40929 () Bool)

(assert (=> bm!40929 (= call!40932 (arrayNoDuplicates!0 (_keys!10446 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98031 (Cons!19337 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000) Nil!19338) Nil!19338)))))

(declare-fun b!941473 () Bool)

(declare-fun contains!5142 (List!19341 (_ BitVec 64)) Bool)

(assert (=> b!941473 (= e!529323 (contains!5142 Nil!19338 (select (arr!27338 (_keys!10446 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!941474 () Bool)

(assert (=> b!941474 (= e!529324 call!40932)))

(assert (= (and d!114013 (not res!632957)) b!941470))

(assert (= (and b!941470 res!632959) b!941473))

(assert (= (and b!941470 res!632958) b!941472))

(assert (= (and b!941472 c!98031) b!941471))

(assert (= (and b!941472 (not c!98031)) b!941474))

(assert (= (or b!941471 b!941474) bm!40929))

(assert (=> b!941470 m!876549))

(assert (=> b!941470 m!876549))

(assert (=> b!941470 m!876551))

(assert (=> b!941472 m!876549))

(assert (=> b!941472 m!876549))

(assert (=> b!941472 m!876551))

(assert (=> bm!40929 m!876549))

(declare-fun m!876573 () Bool)

(assert (=> bm!40929 m!876573))

(assert (=> b!941473 m!876549))

(assert (=> b!941473 m!876549))

(declare-fun m!876575 () Bool)

(assert (=> b!941473 m!876575))

(assert (=> b!941370 d!114013))

(declare-fun mapNonEmpty!32436 () Bool)

(declare-fun mapRes!32436 () Bool)

(declare-fun tp!62232 () Bool)

(declare-fun e!529327 () Bool)

(assert (=> mapNonEmpty!32436 (= mapRes!32436 (and tp!62232 e!529327))))

(declare-fun mapRest!32436 () (Array (_ BitVec 32) ValueCell!9729))

(declare-fun mapKey!32436 () (_ BitVec 32))

(declare-fun mapValue!32436 () ValueCell!9729)

(assert (=> mapNonEmpty!32436 (= mapRest!32435 (store mapRest!32436 mapKey!32436 mapValue!32436))))

(declare-fun b!941475 () Bool)

(assert (=> b!941475 (= e!529327 tp_is_empty!20421)))

(declare-fun condMapEmpty!32436 () Bool)

(declare-fun mapDefault!32436 () ValueCell!9729)

(assert (=> mapNonEmpty!32435 (= condMapEmpty!32436 (= mapRest!32435 ((as const (Array (_ BitVec 32) ValueCell!9729)) mapDefault!32436)))))

(declare-fun e!529326 () Bool)

(assert (=> mapNonEmpty!32435 (= tp!62231 (and e!529326 mapRes!32436))))

(declare-fun b!941476 () Bool)

(assert (=> b!941476 (= e!529326 tp_is_empty!20421)))

(declare-fun mapIsEmpty!32436 () Bool)

(assert (=> mapIsEmpty!32436 mapRes!32436))

(assert (= (and mapNonEmpty!32435 condMapEmpty!32436) mapIsEmpty!32436))

(assert (= (and mapNonEmpty!32435 (not condMapEmpty!32436)) mapNonEmpty!32436))

(assert (= (and mapNonEmpty!32436 ((_ is ValueCellFull!9729) mapValue!32436)) b!941475))

(assert (= (and mapNonEmpty!32435 ((_ is ValueCellFull!9729) mapDefault!32436)) b!941476))

(declare-fun m!876577 () Bool)

(assert (=> mapNonEmpty!32436 m!876577))

(check-sat tp_is_empty!20421 (not b!941420) (not d!114009) (not bm!40923) b_and!29343 (not bm!40929) (not bm!40926) (not b!941472) (not b!941391) (not d!114007) (not b!941470) (not b_next!17913) (not b!941431) (not b!941405) (not b!941408) (not b!941457) (not d!114001) (not b!941473) (not mapNonEmpty!32436) (not b!941430))
(check-sat b_and!29343 (not b_next!17913))
