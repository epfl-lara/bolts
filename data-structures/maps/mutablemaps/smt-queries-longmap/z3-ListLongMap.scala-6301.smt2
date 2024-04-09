; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80634 () Bool)

(assert start!80634)

(declare-fun b!945920 () Bool)

(declare-fun b_free!18129 () Bool)

(declare-fun b_next!18129 () Bool)

(assert (=> b!945920 (= b_free!18129 (not b_next!18129))))

(declare-fun tp!62921 () Bool)

(declare-fun b_and!29569 () Bool)

(assert (=> b!945920 (= tp!62921 b_and!29569)))

(declare-fun b!945917 () Bool)

(declare-fun e!532203 () Bool)

(declare-fun tp_is_empty!20637 () Bool)

(assert (=> b!945917 (= e!532203 tp_is_empty!20637)))

(declare-fun b!945918 () Bool)

(declare-fun res!635229 () Bool)

(declare-fun e!532204 () Bool)

(assert (=> b!945918 (=> (not res!635229) (not e!532204))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945918 (= res!635229 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945919 () Bool)

(declare-fun e!532201 () Bool)

(assert (=> b!945919 (= e!532201 tp_is_empty!20637)))

(declare-fun mapIsEmpty!32805 () Bool)

(declare-fun mapRes!32805 () Bool)

(assert (=> mapIsEmpty!32805 mapRes!32805))

(declare-fun mapNonEmpty!32805 () Bool)

(declare-fun tp!62922 () Bool)

(assert (=> mapNonEmpty!32805 (= mapRes!32805 (and tp!62922 e!532203))))

(declare-datatypes ((V!32481 0))(
  ( (V!32482 (val!10369 Int)) )
))
(declare-datatypes ((ValueCell!9837 0))(
  ( (ValueCellFull!9837 (v!12903 V!32481)) (EmptyCell!9837) )
))
(declare-fun mapValue!32805 () ValueCell!9837)

(declare-fun mapRest!32805 () (Array (_ BitVec 32) ValueCell!9837))

(declare-fun mapKey!32805 () (_ BitVec 32))

(declare-datatypes ((array!57278 0))(
  ( (array!57279 (arr!27553 (Array (_ BitVec 32) ValueCell!9837)) (size!28023 (_ BitVec 32))) )
))
(declare-datatypes ((array!57280 0))(
  ( (array!57281 (arr!27554 (Array (_ BitVec 32) (_ BitVec 64))) (size!28024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4824 0))(
  ( (LongMapFixedSize!4825 (defaultEntry!5709 Int) (mask!27391 (_ BitVec 32)) (extraKeys!5441 (_ BitVec 32)) (zeroValue!5545 V!32481) (minValue!5545 V!32481) (_size!2467 (_ BitVec 32)) (_keys!10593 array!57280) (_values!5732 array!57278) (_vacant!2467 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4824)

(assert (=> mapNonEmpty!32805 (= (arr!27553 (_values!5732 thiss!1141)) (store mapRest!32805 mapKey!32805 mapValue!32805))))

(declare-fun e!532199 () Bool)

(declare-fun e!532200 () Bool)

(declare-fun array_inv!21346 (array!57280) Bool)

(declare-fun array_inv!21347 (array!57278) Bool)

(assert (=> b!945920 (= e!532200 (and tp!62921 tp_is_empty!20637 (array_inv!21346 (_keys!10593 thiss!1141)) (array_inv!21347 (_values!5732 thiss!1141)) e!532199))))

(declare-fun b!945921 () Bool)

(declare-fun e!532202 () Bool)

(assert (=> b!945921 (= e!532204 e!532202)))

(declare-fun res!635230 () Bool)

(assert (=> b!945921 (=> (not res!635230) (not e!532202))))

(declare-datatypes ((SeekEntryResult!9089 0))(
  ( (MissingZero!9089 (index!38726 (_ BitVec 32))) (Found!9089 (index!38727 (_ BitVec 32))) (Intermediate!9089 (undefined!9901 Bool) (index!38728 (_ BitVec 32)) (x!81318 (_ BitVec 32))) (Undefined!9089) (MissingVacant!9089 (index!38729 (_ BitVec 32))) )
))
(declare-fun lt!426127 () SeekEntryResult!9089)

(get-info :version)

(assert (=> b!945921 (= res!635230 ((_ is Found!9089) lt!426127))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57280 (_ BitVec 32)) SeekEntryResult!9089)

(assert (=> b!945921 (= lt!426127 (seekEntry!0 key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(declare-fun b!945922 () Bool)

(declare-fun e!532205 () Bool)

(assert (=> b!945922 (= e!532205 (= (size!28023 (_values!5732 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27391 thiss!1141))))))

(declare-fun b!945923 () Bool)

(assert (=> b!945923 (= e!532202 (not e!532205))))

(declare-fun res!635231 () Bool)

(assert (=> b!945923 (=> res!635231 e!532205)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!945923 (= res!635231 (not (validMask!0 (mask!27391 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945923 (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31895 0))(
  ( (Unit!31896) )
))
(declare-fun lt!426128 () Unit!31895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57280 (_ BitVec 64) (_ BitVec 32)) Unit!31895)

(assert (=> b!945923 (= lt!426128 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10593 thiss!1141) key!756 (index!38727 lt!426127)))))

(declare-fun res!635228 () Bool)

(assert (=> start!80634 (=> (not res!635228) (not e!532204))))

(declare-fun valid!1818 (LongMapFixedSize!4824) Bool)

(assert (=> start!80634 (= res!635228 (valid!1818 thiss!1141))))

(assert (=> start!80634 e!532204))

(assert (=> start!80634 e!532200))

(assert (=> start!80634 true))

(declare-fun b!945924 () Bool)

(assert (=> b!945924 (= e!532199 (and e!532201 mapRes!32805))))

(declare-fun condMapEmpty!32805 () Bool)

(declare-fun mapDefault!32805 () ValueCell!9837)

(assert (=> b!945924 (= condMapEmpty!32805 (= (arr!27553 (_values!5732 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9837)) mapDefault!32805)))))

(assert (= (and start!80634 res!635228) b!945918))

(assert (= (and b!945918 res!635229) b!945921))

(assert (= (and b!945921 res!635230) b!945923))

(assert (= (and b!945923 (not res!635231)) b!945922))

(assert (= (and b!945924 condMapEmpty!32805) mapIsEmpty!32805))

(assert (= (and b!945924 (not condMapEmpty!32805)) mapNonEmpty!32805))

(assert (= (and mapNonEmpty!32805 ((_ is ValueCellFull!9837) mapValue!32805)) b!945917))

(assert (= (and b!945924 ((_ is ValueCellFull!9837) mapDefault!32805)) b!945919))

(assert (= b!945920 b!945924))

(assert (= start!80634 b!945920))

(declare-fun m!879569 () Bool)

(assert (=> mapNonEmpty!32805 m!879569))

(declare-fun m!879571 () Bool)

(assert (=> b!945921 m!879571))

(declare-fun m!879573 () Bool)

(assert (=> b!945923 m!879573))

(declare-fun m!879575 () Bool)

(assert (=> b!945923 m!879575))

(declare-fun m!879577 () Bool)

(assert (=> b!945923 m!879577))

(declare-fun m!879579 () Bool)

(assert (=> b!945920 m!879579))

(declare-fun m!879581 () Bool)

(assert (=> b!945920 m!879581))

(declare-fun m!879583 () Bool)

(assert (=> start!80634 m!879583))

(check-sat b_and!29569 (not mapNonEmpty!32805) tp_is_empty!20637 (not b!945920) (not start!80634) (not b_next!18129) (not b!945921) (not b!945923))
(check-sat b_and!29569 (not b_next!18129))
(get-model)

(declare-fun d!114401 () Bool)

(declare-fun res!635250 () Bool)

(declare-fun e!532233 () Bool)

(assert (=> d!114401 (=> (not res!635250) (not e!532233))))

(declare-fun simpleValid!355 (LongMapFixedSize!4824) Bool)

(assert (=> d!114401 (= res!635250 (simpleValid!355 thiss!1141))))

(assert (=> d!114401 (= (valid!1818 thiss!1141) e!532233)))

(declare-fun b!945955 () Bool)

(declare-fun res!635251 () Bool)

(assert (=> b!945955 (=> (not res!635251) (not e!532233))))

(declare-fun arrayCountValidKeys!0 (array!57280 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945955 (= res!635251 (= (arrayCountValidKeys!0 (_keys!10593 thiss!1141) #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))) (_size!2467 thiss!1141)))))

(declare-fun b!945956 () Bool)

(declare-fun res!635252 () Bool)

(assert (=> b!945956 (=> (not res!635252) (not e!532233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57280 (_ BitVec 32)) Bool)

(assert (=> b!945956 (= res!635252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(declare-fun b!945957 () Bool)

(declare-datatypes ((List!19425 0))(
  ( (Nil!19422) (Cons!19421 (h!20573 (_ BitVec 64)) (t!27754 List!19425)) )
))
(declare-fun arrayNoDuplicates!0 (array!57280 (_ BitVec 32) List!19425) Bool)

(assert (=> b!945957 (= e!532233 (arrayNoDuplicates!0 (_keys!10593 thiss!1141) #b00000000000000000000000000000000 Nil!19422))))

(assert (= (and d!114401 res!635250) b!945955))

(assert (= (and b!945955 res!635251) b!945956))

(assert (= (and b!945956 res!635252) b!945957))

(declare-fun m!879601 () Bool)

(assert (=> d!114401 m!879601))

(declare-fun m!879603 () Bool)

(assert (=> b!945955 m!879603))

(declare-fun m!879605 () Bool)

(assert (=> b!945956 m!879605))

(declare-fun m!879607 () Bool)

(assert (=> b!945957 m!879607))

(assert (=> start!80634 d!114401))

(declare-fun d!114403 () Bool)

(assert (=> d!114403 (= (validMask!0 (mask!27391 thiss!1141)) (and (or (= (mask!27391 thiss!1141) #b00000000000000000000000000000111) (= (mask!27391 thiss!1141) #b00000000000000000000000000001111) (= (mask!27391 thiss!1141) #b00000000000000000000000000011111) (= (mask!27391 thiss!1141) #b00000000000000000000000000111111) (= (mask!27391 thiss!1141) #b00000000000000000000000001111111) (= (mask!27391 thiss!1141) #b00000000000000000000000011111111) (= (mask!27391 thiss!1141) #b00000000000000000000000111111111) (= (mask!27391 thiss!1141) #b00000000000000000000001111111111) (= (mask!27391 thiss!1141) #b00000000000000000000011111111111) (= (mask!27391 thiss!1141) #b00000000000000000000111111111111) (= (mask!27391 thiss!1141) #b00000000000000000001111111111111) (= (mask!27391 thiss!1141) #b00000000000000000011111111111111) (= (mask!27391 thiss!1141) #b00000000000000000111111111111111) (= (mask!27391 thiss!1141) #b00000000000000001111111111111111) (= (mask!27391 thiss!1141) #b00000000000000011111111111111111) (= (mask!27391 thiss!1141) #b00000000000000111111111111111111) (= (mask!27391 thiss!1141) #b00000000000001111111111111111111) (= (mask!27391 thiss!1141) #b00000000000011111111111111111111) (= (mask!27391 thiss!1141) #b00000000000111111111111111111111) (= (mask!27391 thiss!1141) #b00000000001111111111111111111111) (= (mask!27391 thiss!1141) #b00000000011111111111111111111111) (= (mask!27391 thiss!1141) #b00000000111111111111111111111111) (= (mask!27391 thiss!1141) #b00000001111111111111111111111111) (= (mask!27391 thiss!1141) #b00000011111111111111111111111111) (= (mask!27391 thiss!1141) #b00000111111111111111111111111111) (= (mask!27391 thiss!1141) #b00001111111111111111111111111111) (= (mask!27391 thiss!1141) #b00011111111111111111111111111111) (= (mask!27391 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27391 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!945923 d!114403))

(declare-fun d!114405 () Bool)

(declare-fun res!635257 () Bool)

(declare-fun e!532238 () Bool)

(assert (=> d!114405 (=> res!635257 e!532238)))

(assert (=> d!114405 (= res!635257 (= (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114405 (= (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 #b00000000000000000000000000000000) e!532238)))

(declare-fun b!945962 () Bool)

(declare-fun e!532239 () Bool)

(assert (=> b!945962 (= e!532238 e!532239)))

(declare-fun res!635258 () Bool)

(assert (=> b!945962 (=> (not res!635258) (not e!532239))))

(assert (=> b!945962 (= res!635258 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28024 (_keys!10593 thiss!1141))))))

(declare-fun b!945963 () Bool)

(assert (=> b!945963 (= e!532239 (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114405 (not res!635257)) b!945962))

(assert (= (and b!945962 res!635258) b!945963))

(declare-fun m!879609 () Bool)

(assert (=> d!114405 m!879609))

(declare-fun m!879611 () Bool)

(assert (=> b!945963 m!879611))

(assert (=> b!945923 d!114405))

(declare-fun d!114407 () Bool)

(assert (=> d!114407 (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426137 () Unit!31895)

(declare-fun choose!13 (array!57280 (_ BitVec 64) (_ BitVec 32)) Unit!31895)

(assert (=> d!114407 (= lt!426137 (choose!13 (_keys!10593 thiss!1141) key!756 (index!38727 lt!426127)))))

(assert (=> d!114407 (bvsge (index!38727 lt!426127) #b00000000000000000000000000000000)))

(assert (=> d!114407 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10593 thiss!1141) key!756 (index!38727 lt!426127)) lt!426137)))

(declare-fun bs!26588 () Bool)

(assert (= bs!26588 d!114407))

(assert (=> bs!26588 m!879575))

(declare-fun m!879613 () Bool)

(assert (=> bs!26588 m!879613))

(assert (=> b!945923 d!114407))

(declare-fun b!945976 () Bool)

(declare-fun e!532247 () SeekEntryResult!9089)

(declare-fun lt!426149 () SeekEntryResult!9089)

(assert (=> b!945976 (= e!532247 (ite ((_ is MissingVacant!9089) lt!426149) (MissingZero!9089 (index!38729 lt!426149)) lt!426149))))

(declare-fun lt!426146 () SeekEntryResult!9089)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57280 (_ BitVec 32)) SeekEntryResult!9089)

(assert (=> b!945976 (= lt!426149 (seekKeyOrZeroReturnVacant!0 (x!81318 lt!426146) (index!38728 lt!426146) (index!38728 lt!426146) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(declare-fun b!945977 () Bool)

(declare-fun e!532248 () SeekEntryResult!9089)

(assert (=> b!945977 (= e!532248 Undefined!9089)))

(declare-fun b!945978 () Bool)

(declare-fun e!532246 () SeekEntryResult!9089)

(assert (=> b!945978 (= e!532248 e!532246)))

(declare-fun lt!426147 () (_ BitVec 64))

(assert (=> b!945978 (= lt!426147 (select (arr!27554 (_keys!10593 thiss!1141)) (index!38728 lt!426146)))))

(declare-fun c!98422 () Bool)

(assert (=> b!945978 (= c!98422 (= lt!426147 key!756))))

(declare-fun b!945980 () Bool)

(assert (=> b!945980 (= e!532247 (MissingZero!9089 (index!38728 lt!426146)))))

(declare-fun b!945981 () Bool)

(declare-fun c!98421 () Bool)

(assert (=> b!945981 (= c!98421 (= lt!426147 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!945981 (= e!532246 e!532247)))

(declare-fun b!945979 () Bool)

(assert (=> b!945979 (= e!532246 (Found!9089 (index!38728 lt!426146)))))

(declare-fun d!114409 () Bool)

(declare-fun lt!426148 () SeekEntryResult!9089)

(assert (=> d!114409 (and (or ((_ is MissingVacant!9089) lt!426148) (not ((_ is Found!9089) lt!426148)) (and (bvsge (index!38727 lt!426148) #b00000000000000000000000000000000) (bvslt (index!38727 lt!426148) (size!28024 (_keys!10593 thiss!1141))))) (not ((_ is MissingVacant!9089) lt!426148)) (or (not ((_ is Found!9089) lt!426148)) (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38727 lt!426148)) key!756)))))

(assert (=> d!114409 (= lt!426148 e!532248)))

(declare-fun c!98420 () Bool)

(assert (=> d!114409 (= c!98420 (and ((_ is Intermediate!9089) lt!426146) (undefined!9901 lt!426146)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57280 (_ BitVec 32)) SeekEntryResult!9089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114409 (= lt!426146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27391 thiss!1141)) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(assert (=> d!114409 (validMask!0 (mask!27391 thiss!1141))))

(assert (=> d!114409 (= (seekEntry!0 key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)) lt!426148)))

(assert (= (and d!114409 c!98420) b!945977))

(assert (= (and d!114409 (not c!98420)) b!945978))

(assert (= (and b!945978 c!98422) b!945979))

(assert (= (and b!945978 (not c!98422)) b!945981))

(assert (= (and b!945981 c!98421) b!945980))

(assert (= (and b!945981 (not c!98421)) b!945976))

(declare-fun m!879615 () Bool)

(assert (=> b!945976 m!879615))

(declare-fun m!879617 () Bool)

(assert (=> b!945978 m!879617))

(declare-fun m!879619 () Bool)

(assert (=> d!114409 m!879619))

(declare-fun m!879621 () Bool)

(assert (=> d!114409 m!879621))

(assert (=> d!114409 m!879621))

(declare-fun m!879623 () Bool)

(assert (=> d!114409 m!879623))

(assert (=> d!114409 m!879573))

(assert (=> b!945921 d!114409))

(declare-fun d!114411 () Bool)

(assert (=> d!114411 (= (array_inv!21346 (_keys!10593 thiss!1141)) (bvsge (size!28024 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945920 d!114411))

(declare-fun d!114413 () Bool)

(assert (=> d!114413 (= (array_inv!21347 (_values!5732 thiss!1141)) (bvsge (size!28023 (_values!5732 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945920 d!114413))

(declare-fun condMapEmpty!32811 () Bool)

(declare-fun mapDefault!32811 () ValueCell!9837)

(assert (=> mapNonEmpty!32805 (= condMapEmpty!32811 (= mapRest!32805 ((as const (Array (_ BitVec 32) ValueCell!9837)) mapDefault!32811)))))

(declare-fun e!532254 () Bool)

(declare-fun mapRes!32811 () Bool)

(assert (=> mapNonEmpty!32805 (= tp!62922 (and e!532254 mapRes!32811))))

(declare-fun b!945988 () Bool)

(declare-fun e!532253 () Bool)

(assert (=> b!945988 (= e!532253 tp_is_empty!20637)))

(declare-fun b!945989 () Bool)

(assert (=> b!945989 (= e!532254 tp_is_empty!20637)))

(declare-fun mapNonEmpty!32811 () Bool)

(declare-fun tp!62931 () Bool)

(assert (=> mapNonEmpty!32811 (= mapRes!32811 (and tp!62931 e!532253))))

(declare-fun mapKey!32811 () (_ BitVec 32))

(declare-fun mapValue!32811 () ValueCell!9837)

(declare-fun mapRest!32811 () (Array (_ BitVec 32) ValueCell!9837))

(assert (=> mapNonEmpty!32811 (= mapRest!32805 (store mapRest!32811 mapKey!32811 mapValue!32811))))

(declare-fun mapIsEmpty!32811 () Bool)

(assert (=> mapIsEmpty!32811 mapRes!32811))

(assert (= (and mapNonEmpty!32805 condMapEmpty!32811) mapIsEmpty!32811))

(assert (= (and mapNonEmpty!32805 (not condMapEmpty!32811)) mapNonEmpty!32811))

(assert (= (and mapNonEmpty!32811 ((_ is ValueCellFull!9837) mapValue!32811)) b!945988))

(assert (= (and mapNonEmpty!32805 ((_ is ValueCellFull!9837) mapDefault!32811)) b!945989))

(declare-fun m!879625 () Bool)

(assert (=> mapNonEmpty!32811 m!879625))

(check-sat (not d!114409) (not b!945976) (not b!945957) (not b!945955) b_and!29569 (not b!945963) (not d!114407) tp_is_empty!20637 (not b_next!18129) (not b!945956) (not d!114401) (not mapNonEmpty!32811))
(check-sat b_and!29569 (not b_next!18129))
(get-model)

(declare-fun d!114415 () Bool)

(declare-fun res!635259 () Bool)

(declare-fun e!532255 () Bool)

(assert (=> d!114415 (=> res!635259 e!532255)))

(assert (=> d!114415 (= res!635259 (= (select (arr!27554 (_keys!10593 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!114415 (= (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!532255)))

(declare-fun b!945990 () Bool)

(declare-fun e!532256 () Bool)

(assert (=> b!945990 (= e!532255 e!532256)))

(declare-fun res!635260 () Bool)

(assert (=> b!945990 (=> (not res!635260) (not e!532256))))

(assert (=> b!945990 (= res!635260 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28024 (_keys!10593 thiss!1141))))))

(declare-fun b!945991 () Bool)

(assert (=> b!945991 (= e!532256 (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!114415 (not res!635259)) b!945990))

(assert (= (and b!945990 res!635260) b!945991))

(declare-fun m!879627 () Bool)

(assert (=> d!114415 m!879627))

(declare-fun m!879629 () Bool)

(assert (=> b!945991 m!879629))

(assert (=> b!945963 d!114415))

(declare-fun d!114417 () Bool)

(declare-fun res!635269 () Bool)

(declare-fun e!532268 () Bool)

(assert (=> d!114417 (=> res!635269 e!532268)))

(assert (=> d!114417 (= res!635269 (bvsge #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))))))

(assert (=> d!114417 (= (arrayNoDuplicates!0 (_keys!10593 thiss!1141) #b00000000000000000000000000000000 Nil!19422) e!532268)))

(declare-fun b!946002 () Bool)

(declare-fun e!532266 () Bool)

(assert (=> b!946002 (= e!532268 e!532266)))

(declare-fun res!635267 () Bool)

(assert (=> b!946002 (=> (not res!635267) (not e!532266))))

(declare-fun e!532267 () Bool)

(assert (=> b!946002 (= res!635267 (not e!532267))))

(declare-fun res!635268 () Bool)

(assert (=> b!946002 (=> (not res!635268) (not e!532267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!946002 (= res!635268 (validKeyInArray!0 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946003 () Bool)

(declare-fun e!532265 () Bool)

(declare-fun call!41070 () Bool)

(assert (=> b!946003 (= e!532265 call!41070)))

(declare-fun b!946004 () Bool)

(assert (=> b!946004 (= e!532265 call!41070)))

(declare-fun b!946005 () Bool)

(assert (=> b!946005 (= e!532266 e!532265)))

(declare-fun c!98425 () Bool)

(assert (=> b!946005 (= c!98425 (validKeyInArray!0 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41067 () Bool)

(assert (=> bm!41067 (= call!41070 (arrayNoDuplicates!0 (_keys!10593 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98425 (Cons!19421 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000) Nil!19422) Nil!19422)))))

(declare-fun b!946006 () Bool)

(declare-fun contains!5201 (List!19425 (_ BitVec 64)) Bool)

(assert (=> b!946006 (= e!532267 (contains!5201 Nil!19422 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114417 (not res!635269)) b!946002))

(assert (= (and b!946002 res!635268) b!946006))

(assert (= (and b!946002 res!635267) b!946005))

(assert (= (and b!946005 c!98425) b!946003))

(assert (= (and b!946005 (not c!98425)) b!946004))

(assert (= (or b!946003 b!946004) bm!41067))

(assert (=> b!946002 m!879609))

(assert (=> b!946002 m!879609))

(declare-fun m!879631 () Bool)

(assert (=> b!946002 m!879631))

(assert (=> b!946005 m!879609))

(assert (=> b!946005 m!879609))

(assert (=> b!946005 m!879631))

(assert (=> bm!41067 m!879609))

(declare-fun m!879633 () Bool)

(assert (=> bm!41067 m!879633))

(assert (=> b!946006 m!879609))

(assert (=> b!946006 m!879609))

(declare-fun m!879635 () Bool)

(assert (=> b!946006 m!879635))

(assert (=> b!945957 d!114417))

(assert (=> d!114407 d!114405))

(declare-fun d!114419 () Bool)

(assert (=> d!114419 (arrayContainsKey!0 (_keys!10593 thiss!1141) key!756 #b00000000000000000000000000000000)))

(assert (=> d!114419 true))

(declare-fun _$60!430 () Unit!31895)

(assert (=> d!114419 (= (choose!13 (_keys!10593 thiss!1141) key!756 (index!38727 lt!426127)) _$60!430)))

(declare-fun bs!26589 () Bool)

(assert (= bs!26589 d!114419))

(assert (=> bs!26589 m!879575))

(assert (=> d!114407 d!114419))

(declare-fun b!946015 () Bool)

(declare-fun e!532273 () (_ BitVec 32))

(assert (=> b!946015 (= e!532273 #b00000000000000000000000000000000)))

(declare-fun b!946016 () Bool)

(declare-fun e!532274 () (_ BitVec 32))

(assert (=> b!946016 (= e!532273 e!532274)))

(declare-fun c!98430 () Bool)

(assert (=> b!946016 (= c!98430 (validKeyInArray!0 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114421 () Bool)

(declare-fun lt!426152 () (_ BitVec 32))

(assert (=> d!114421 (and (bvsge lt!426152 #b00000000000000000000000000000000) (bvsle lt!426152 (bvsub (size!28024 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114421 (= lt!426152 e!532273)))

(declare-fun c!98431 () Bool)

(assert (=> d!114421 (= c!98431 (bvsge #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))))))

(assert (=> d!114421 (and (bvsle #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28024 (_keys!10593 thiss!1141)) (size!28024 (_keys!10593 thiss!1141))))))

(assert (=> d!114421 (= (arrayCountValidKeys!0 (_keys!10593 thiss!1141) #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))) lt!426152)))

(declare-fun b!946017 () Bool)

(declare-fun call!41073 () (_ BitVec 32))

(assert (=> b!946017 (= e!532274 (bvadd #b00000000000000000000000000000001 call!41073))))

(declare-fun bm!41070 () Bool)

(assert (=> bm!41070 (= call!41073 (arrayCountValidKeys!0 (_keys!10593 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28024 (_keys!10593 thiss!1141))))))

(declare-fun b!946018 () Bool)

(assert (=> b!946018 (= e!532274 call!41073)))

(assert (= (and d!114421 c!98431) b!946015))

(assert (= (and d!114421 (not c!98431)) b!946016))

(assert (= (and b!946016 c!98430) b!946017))

(assert (= (and b!946016 (not c!98430)) b!946018))

(assert (= (or b!946017 b!946018) bm!41070))

(assert (=> b!946016 m!879609))

(assert (=> b!946016 m!879609))

(assert (=> b!946016 m!879631))

(declare-fun m!879637 () Bool)

(assert (=> bm!41070 m!879637))

(assert (=> b!945955 d!114421))

(declare-fun b!946037 () Bool)

(declare-fun lt!426157 () SeekEntryResult!9089)

(assert (=> b!946037 (and (bvsge (index!38728 lt!426157) #b00000000000000000000000000000000) (bvslt (index!38728 lt!426157) (size!28024 (_keys!10593 thiss!1141))))))

(declare-fun res!635277 () Bool)

(assert (=> b!946037 (= res!635277 (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38728 lt!426157)) key!756))))

(declare-fun e!532287 () Bool)

(assert (=> b!946037 (=> res!635277 e!532287)))

(declare-fun e!532286 () Bool)

(assert (=> b!946037 (= e!532286 e!532287)))

(declare-fun b!946038 () Bool)

(declare-fun e!532285 () SeekEntryResult!9089)

(assert (=> b!946038 (= e!532285 (Intermediate!9089 true (toIndex!0 key!756 (mask!27391 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114423 () Bool)

(declare-fun e!532288 () Bool)

(assert (=> d!114423 e!532288))

(declare-fun c!98439 () Bool)

(assert (=> d!114423 (= c!98439 (and ((_ is Intermediate!9089) lt!426157) (undefined!9901 lt!426157)))))

(assert (=> d!114423 (= lt!426157 e!532285)))

(declare-fun c!98440 () Bool)

(assert (=> d!114423 (= c!98440 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!426158 () (_ BitVec 64))

(assert (=> d!114423 (= lt!426158 (select (arr!27554 (_keys!10593 thiss!1141)) (toIndex!0 key!756 (mask!27391 thiss!1141))))))

(assert (=> d!114423 (validMask!0 (mask!27391 thiss!1141))))

(assert (=> d!114423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27391 thiss!1141)) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)) lt!426157)))

(declare-fun b!946039 () Bool)

(assert (=> b!946039 (= e!532288 e!532286)))

(declare-fun res!635276 () Bool)

(assert (=> b!946039 (= res!635276 (and ((_ is Intermediate!9089) lt!426157) (not (undefined!9901 lt!426157)) (bvslt (x!81318 lt!426157) #b01111111111111111111111111111110) (bvsge (x!81318 lt!426157) #b00000000000000000000000000000000) (bvsge (x!81318 lt!426157) #b00000000000000000000000000000000)))))

(assert (=> b!946039 (=> (not res!635276) (not e!532286))))

(declare-fun b!946040 () Bool)

(assert (=> b!946040 (and (bvsge (index!38728 lt!426157) #b00000000000000000000000000000000) (bvslt (index!38728 lt!426157) (size!28024 (_keys!10593 thiss!1141))))))

(declare-fun res!635278 () Bool)

(assert (=> b!946040 (= res!635278 (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38728 lt!426157)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946040 (=> res!635278 e!532287)))

(declare-fun b!946041 () Bool)

(declare-fun e!532289 () SeekEntryResult!9089)

(assert (=> b!946041 (= e!532289 (Intermediate!9089 false (toIndex!0 key!756 (mask!27391 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!946042 () Bool)

(assert (=> b!946042 (and (bvsge (index!38728 lt!426157) #b00000000000000000000000000000000) (bvslt (index!38728 lt!426157) (size!28024 (_keys!10593 thiss!1141))))))

(assert (=> b!946042 (= e!532287 (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38728 lt!426157)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!946043 () Bool)

(assert (=> b!946043 (= e!532288 (bvsge (x!81318 lt!426157) #b01111111111111111111111111111110))))

(declare-fun b!946044 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946044 (= e!532289 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27391 thiss!1141)) #b00000000000000000000000000000000 (mask!27391 thiss!1141)) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(declare-fun b!946045 () Bool)

(assert (=> b!946045 (= e!532285 e!532289)))

(declare-fun c!98438 () Bool)

(assert (=> b!946045 (= c!98438 (or (= lt!426158 key!756) (= (bvadd lt!426158 lt!426158) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114423 c!98440) b!946038))

(assert (= (and d!114423 (not c!98440)) b!946045))

(assert (= (and b!946045 c!98438) b!946041))

(assert (= (and b!946045 (not c!98438)) b!946044))

(assert (= (and d!114423 c!98439) b!946043))

(assert (= (and d!114423 (not c!98439)) b!946039))

(assert (= (and b!946039 res!635276) b!946037))

(assert (= (and b!946037 (not res!635277)) b!946040))

(assert (= (and b!946040 (not res!635278)) b!946042))

(declare-fun m!879639 () Bool)

(assert (=> b!946040 m!879639))

(assert (=> d!114423 m!879621))

(declare-fun m!879641 () Bool)

(assert (=> d!114423 m!879641))

(assert (=> d!114423 m!879573))

(assert (=> b!946037 m!879639))

(assert (=> b!946044 m!879621))

(declare-fun m!879643 () Bool)

(assert (=> b!946044 m!879643))

(assert (=> b!946044 m!879643))

(declare-fun m!879645 () Bool)

(assert (=> b!946044 m!879645))

(assert (=> b!946042 m!879639))

(assert (=> d!114409 d!114423))

(declare-fun d!114425 () Bool)

(declare-fun lt!426164 () (_ BitVec 32))

(declare-fun lt!426163 () (_ BitVec 32))

(assert (=> d!114425 (= lt!426164 (bvmul (bvxor lt!426163 (bvlshr lt!426163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114425 (= lt!426163 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114425 (and (bvsge (mask!27391 thiss!1141) #b00000000000000000000000000000000) (let ((res!635279 (let ((h!20574 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81334 (bvmul (bvxor h!20574 (bvlshr h!20574 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81334 (bvlshr x!81334 #b00000000000000000000000000001101)) (mask!27391 thiss!1141)))))) (and (bvslt res!635279 (bvadd (mask!27391 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!635279 #b00000000000000000000000000000000))))))

(assert (=> d!114425 (= (toIndex!0 key!756 (mask!27391 thiss!1141)) (bvand (bvxor lt!426164 (bvlshr lt!426164 #b00000000000000000000000000001101)) (mask!27391 thiss!1141)))))

(assert (=> d!114409 d!114425))

(assert (=> d!114409 d!114403))

(declare-fun b!946057 () Bool)

(declare-fun e!532292 () Bool)

(assert (=> b!946057 (= e!532292 (and (bvsge (extraKeys!5441 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5441 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2467 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!946056 () Bool)

(declare-fun res!635289 () Bool)

(assert (=> b!946056 (=> (not res!635289) (not e!532292))))

(declare-fun size!28027 (LongMapFixedSize!4824) (_ BitVec 32))

(assert (=> b!946056 (= res!635289 (= (size!28027 thiss!1141) (bvadd (_size!2467 thiss!1141) (bvsdiv (bvadd (extraKeys!5441 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!114427 () Bool)

(declare-fun res!635288 () Bool)

(assert (=> d!114427 (=> (not res!635288) (not e!532292))))

(assert (=> d!114427 (= res!635288 (validMask!0 (mask!27391 thiss!1141)))))

(assert (=> d!114427 (= (simpleValid!355 thiss!1141) e!532292)))

(declare-fun b!946054 () Bool)

(declare-fun res!635290 () Bool)

(assert (=> b!946054 (=> (not res!635290) (not e!532292))))

(assert (=> b!946054 (= res!635290 (and (= (size!28023 (_values!5732 thiss!1141)) (bvadd (mask!27391 thiss!1141) #b00000000000000000000000000000001)) (= (size!28024 (_keys!10593 thiss!1141)) (size!28023 (_values!5732 thiss!1141))) (bvsge (_size!2467 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2467 thiss!1141) (bvadd (mask!27391 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!946055 () Bool)

(declare-fun res!635291 () Bool)

(assert (=> b!946055 (=> (not res!635291) (not e!532292))))

(assert (=> b!946055 (= res!635291 (bvsge (size!28027 thiss!1141) (_size!2467 thiss!1141)))))

(assert (= (and d!114427 res!635288) b!946054))

(assert (= (and b!946054 res!635290) b!946055))

(assert (= (and b!946055 res!635291) b!946056))

(assert (= (and b!946056 res!635289) b!946057))

(declare-fun m!879647 () Bool)

(assert (=> b!946056 m!879647))

(assert (=> d!114427 m!879573))

(assert (=> b!946055 m!879647))

(assert (=> d!114401 d!114427))

(declare-fun b!946070 () Bool)

(declare-fun c!98449 () Bool)

(declare-fun lt!426169 () (_ BitVec 64))

(assert (=> b!946070 (= c!98449 (= lt!426169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!532299 () SeekEntryResult!9089)

(declare-fun e!532301 () SeekEntryResult!9089)

(assert (=> b!946070 (= e!532299 e!532301)))

(declare-fun b!946071 () Bool)

(assert (=> b!946071 (= e!532299 (Found!9089 (index!38728 lt!426146)))))

(declare-fun d!114429 () Bool)

(declare-fun lt!426170 () SeekEntryResult!9089)

(assert (=> d!114429 (and (or ((_ is Undefined!9089) lt!426170) (not ((_ is Found!9089) lt!426170)) (and (bvsge (index!38727 lt!426170) #b00000000000000000000000000000000) (bvslt (index!38727 lt!426170) (size!28024 (_keys!10593 thiss!1141))))) (or ((_ is Undefined!9089) lt!426170) ((_ is Found!9089) lt!426170) (not ((_ is MissingVacant!9089) lt!426170)) (not (= (index!38729 lt!426170) (index!38728 lt!426146))) (and (bvsge (index!38729 lt!426170) #b00000000000000000000000000000000) (bvslt (index!38729 lt!426170) (size!28024 (_keys!10593 thiss!1141))))) (or ((_ is Undefined!9089) lt!426170) (ite ((_ is Found!9089) lt!426170) (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38727 lt!426170)) key!756) (and ((_ is MissingVacant!9089) lt!426170) (= (index!38729 lt!426170) (index!38728 lt!426146)) (= (select (arr!27554 (_keys!10593 thiss!1141)) (index!38729 lt!426170)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!532300 () SeekEntryResult!9089)

(assert (=> d!114429 (= lt!426170 e!532300)))

(declare-fun c!98448 () Bool)

(assert (=> d!114429 (= c!98448 (bvsge (x!81318 lt!426146) #b01111111111111111111111111111110))))

(assert (=> d!114429 (= lt!426169 (select (arr!27554 (_keys!10593 thiss!1141)) (index!38728 lt!426146)))))

(assert (=> d!114429 (validMask!0 (mask!27391 thiss!1141))))

(assert (=> d!114429 (= (seekKeyOrZeroReturnVacant!0 (x!81318 lt!426146) (index!38728 lt!426146) (index!38728 lt!426146) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)) lt!426170)))

(declare-fun b!946072 () Bool)

(assert (=> b!946072 (= e!532300 e!532299)))

(declare-fun c!98447 () Bool)

(assert (=> b!946072 (= c!98447 (= lt!426169 key!756))))

(declare-fun b!946073 () Bool)

(assert (=> b!946073 (= e!532300 Undefined!9089)))

(declare-fun b!946074 () Bool)

(assert (=> b!946074 (= e!532301 (MissingVacant!9089 (index!38728 lt!426146)))))

(declare-fun b!946075 () Bool)

(assert (=> b!946075 (= e!532301 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81318 lt!426146) #b00000000000000000000000000000001) (nextIndex!0 (index!38728 lt!426146) (x!81318 lt!426146) (mask!27391 thiss!1141)) (index!38728 lt!426146) key!756 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(assert (= (and d!114429 c!98448) b!946073))

(assert (= (and d!114429 (not c!98448)) b!946072))

(assert (= (and b!946072 c!98447) b!946071))

(assert (= (and b!946072 (not c!98447)) b!946070))

(assert (= (and b!946070 c!98449) b!946074))

(assert (= (and b!946070 (not c!98449)) b!946075))

(declare-fun m!879649 () Bool)

(assert (=> d!114429 m!879649))

(declare-fun m!879651 () Bool)

(assert (=> d!114429 m!879651))

(assert (=> d!114429 m!879617))

(assert (=> d!114429 m!879573))

(declare-fun m!879653 () Bool)

(assert (=> b!946075 m!879653))

(assert (=> b!946075 m!879653))

(declare-fun m!879655 () Bool)

(assert (=> b!946075 m!879655))

(assert (=> b!945976 d!114429))

(declare-fun b!946084 () Bool)

(declare-fun e!532308 () Bool)

(declare-fun e!532309 () Bool)

(assert (=> b!946084 (= e!532308 e!532309)))

(declare-fun lt!426179 () (_ BitVec 64))

(assert (=> b!946084 (= lt!426179 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426178 () Unit!31895)

(assert (=> b!946084 (= lt!426178 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10593 thiss!1141) lt!426179 #b00000000000000000000000000000000))))

(assert (=> b!946084 (arrayContainsKey!0 (_keys!10593 thiss!1141) lt!426179 #b00000000000000000000000000000000)))

(declare-fun lt!426177 () Unit!31895)

(assert (=> b!946084 (= lt!426177 lt!426178)))

(declare-fun res!635297 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57280 (_ BitVec 32)) SeekEntryResult!9089)

(assert (=> b!946084 (= res!635297 (= (seekEntryOrOpen!0 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000) (_keys!10593 thiss!1141) (mask!27391 thiss!1141)) (Found!9089 #b00000000000000000000000000000000)))))

(assert (=> b!946084 (=> (not res!635297) (not e!532309))))

(declare-fun b!946085 () Bool)

(declare-fun call!41076 () Bool)

(assert (=> b!946085 (= e!532308 call!41076)))

(declare-fun b!946086 () Bool)

(assert (=> b!946086 (= e!532309 call!41076)))

(declare-fun d!114431 () Bool)

(declare-fun res!635296 () Bool)

(declare-fun e!532310 () Bool)

(assert (=> d!114431 (=> res!635296 e!532310)))

(assert (=> d!114431 (= res!635296 (bvsge #b00000000000000000000000000000000 (size!28024 (_keys!10593 thiss!1141))))))

(assert (=> d!114431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10593 thiss!1141) (mask!27391 thiss!1141)) e!532310)))

(declare-fun b!946087 () Bool)

(assert (=> b!946087 (= e!532310 e!532308)))

(declare-fun c!98452 () Bool)

(assert (=> b!946087 (= c!98452 (validKeyInArray!0 (select (arr!27554 (_keys!10593 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41073 () Bool)

(assert (=> bm!41073 (= call!41076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10593 thiss!1141) (mask!27391 thiss!1141)))))

(assert (= (and d!114431 (not res!635296)) b!946087))

(assert (= (and b!946087 c!98452) b!946084))

(assert (= (and b!946087 (not c!98452)) b!946085))

(assert (= (and b!946084 res!635297) b!946086))

(assert (= (or b!946086 b!946085) bm!41073))

(assert (=> b!946084 m!879609))

(declare-fun m!879657 () Bool)

(assert (=> b!946084 m!879657))

(declare-fun m!879659 () Bool)

(assert (=> b!946084 m!879659))

(assert (=> b!946084 m!879609))

(declare-fun m!879661 () Bool)

(assert (=> b!946084 m!879661))

(assert (=> b!946087 m!879609))

(assert (=> b!946087 m!879609))

(assert (=> b!946087 m!879631))

(declare-fun m!879663 () Bool)

(assert (=> bm!41073 m!879663))

(assert (=> b!945956 d!114431))

(declare-fun condMapEmpty!32812 () Bool)

(declare-fun mapDefault!32812 () ValueCell!9837)

(assert (=> mapNonEmpty!32811 (= condMapEmpty!32812 (= mapRest!32811 ((as const (Array (_ BitVec 32) ValueCell!9837)) mapDefault!32812)))))

(declare-fun e!532312 () Bool)

(declare-fun mapRes!32812 () Bool)

(assert (=> mapNonEmpty!32811 (= tp!62931 (and e!532312 mapRes!32812))))

(declare-fun b!946088 () Bool)

(declare-fun e!532311 () Bool)

(assert (=> b!946088 (= e!532311 tp_is_empty!20637)))

(declare-fun b!946089 () Bool)

(assert (=> b!946089 (= e!532312 tp_is_empty!20637)))

(declare-fun mapNonEmpty!32812 () Bool)

(declare-fun tp!62932 () Bool)

(assert (=> mapNonEmpty!32812 (= mapRes!32812 (and tp!62932 e!532311))))

(declare-fun mapRest!32812 () (Array (_ BitVec 32) ValueCell!9837))

(declare-fun mapValue!32812 () ValueCell!9837)

(declare-fun mapKey!32812 () (_ BitVec 32))

(assert (=> mapNonEmpty!32812 (= mapRest!32811 (store mapRest!32812 mapKey!32812 mapValue!32812))))

(declare-fun mapIsEmpty!32812 () Bool)

(assert (=> mapIsEmpty!32812 mapRes!32812))

(assert (= (and mapNonEmpty!32811 condMapEmpty!32812) mapIsEmpty!32812))

(assert (= (and mapNonEmpty!32811 (not condMapEmpty!32812)) mapNonEmpty!32812))

(assert (= (and mapNonEmpty!32812 ((_ is ValueCellFull!9837) mapValue!32812)) b!946088))

(assert (= (and mapNonEmpty!32811 ((_ is ValueCellFull!9837) mapDefault!32812)) b!946089))

(declare-fun m!879665 () Bool)

(assert (=> mapNonEmpty!32812 m!879665))

(check-sat (not bm!41067) (not b!946006) (not b!946044) (not b!945991) tp_is_empty!20637 (not b_next!18129) (not b!946087) (not b!946002) (not b!946016) (not d!114429) (not b!946055) b_and!29569 (not bm!41073) (not bm!41070) (not b!946056) (not d!114427) (not b!946005) (not d!114419) (not b!946075) (not mapNonEmpty!32812) (not b!946084) (not d!114423))
(check-sat b_and!29569 (not b_next!18129))
