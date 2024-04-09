; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80598 () Bool)

(assert start!80598)

(declare-fun b!945709 () Bool)

(declare-fun b_free!18117 () Bool)

(declare-fun b_next!18117 () Bool)

(assert (=> b!945709 (= b_free!18117 (not b_next!18117))))

(declare-fun tp!62879 () Bool)

(declare-fun b_and!29557 () Bool)

(assert (=> b!945709 (= tp!62879 b_and!29557)))

(declare-fun b!945704 () Bool)

(declare-datatypes ((V!32465 0))(
  ( (V!32466 (val!10363 Int)) )
))
(declare-datatypes ((ValueCell!9831 0))(
  ( (ValueCellFull!9831 (v!12897 V!32465)) (EmptyCell!9831) )
))
(declare-datatypes ((array!57250 0))(
  ( (array!57251 (arr!27541 (Array (_ BitVec 32) ValueCell!9831)) (size!28011 (_ BitVec 32))) )
))
(declare-datatypes ((array!57252 0))(
  ( (array!57253 (arr!27542 (Array (_ BitVec 32) (_ BitVec 64))) (size!28012 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4812 0))(
  ( (LongMapFixedSize!4813 (defaultEntry!5703 Int) (mask!27378 (_ BitVec 32)) (extraKeys!5435 (_ BitVec 32)) (zeroValue!5539 V!32465) (minValue!5539 V!32465) (_size!2461 (_ BitVec 32)) (_keys!10585 array!57252) (_values!5726 array!57250) (_vacant!2461 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4812)

(declare-datatypes ((SeekEntryResult!9085 0))(
  ( (MissingZero!9085 (index!38710 (_ BitVec 32))) (Found!9085 (index!38711 (_ BitVec 32))) (Intermediate!9085 (undefined!9897 Bool) (index!38712 (_ BitVec 32)) (x!81282 (_ BitVec 32))) (Undefined!9085) (MissingVacant!9085 (index!38713 (_ BitVec 32))) )
))
(declare-fun lt!426068 () SeekEntryResult!9085)

(declare-fun e!532025 () Bool)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945704 (= e!532025 (not (arrayContainsKey!0 (_keys!10585 thiss!1141) key!756 (index!38711 lt!426068))))))

(declare-fun b!945705 () Bool)

(declare-fun e!532026 () Bool)

(assert (=> b!945705 (= e!532026 e!532025)))

(declare-fun res!635140 () Bool)

(assert (=> b!945705 (=> (not res!635140) (not e!532025))))

(get-info :version)

(assert (=> b!945705 (= res!635140 (and ((_ is Found!9085) lt!426068) (bvsge (index!38711 lt!426068) #b00000000000000000000000000000000) (bvslt (index!38711 lt!426068) (size!28012 (_keys!10585 thiss!1141))) (bvslt (size!28012 (_keys!10585 thiss!1141)) #b01111111111111111111111111111111)))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57252 (_ BitVec 32)) SeekEntryResult!9085)

(assert (=> b!945705 (= lt!426068 (seekEntry!0 key!756 (_keys!10585 thiss!1141) (mask!27378 thiss!1141)))))

(declare-fun res!635141 () Bool)

(assert (=> start!80598 (=> (not res!635141) (not e!532026))))

(declare-fun valid!1814 (LongMapFixedSize!4812) Bool)

(assert (=> start!80598 (= res!635141 (valid!1814 thiss!1141))))

(assert (=> start!80598 e!532026))

(declare-fun e!532021 () Bool)

(assert (=> start!80598 e!532021))

(assert (=> start!80598 true))

(declare-fun b!945706 () Bool)

(declare-fun e!532023 () Bool)

(declare-fun e!532024 () Bool)

(declare-fun mapRes!32781 () Bool)

(assert (=> b!945706 (= e!532023 (and e!532024 mapRes!32781))))

(declare-fun condMapEmpty!32781 () Bool)

(declare-fun mapDefault!32781 () ValueCell!9831)

(assert (=> b!945706 (= condMapEmpty!32781 (= (arr!27541 (_values!5726 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9831)) mapDefault!32781)))))

(declare-fun mapIsEmpty!32781 () Bool)

(assert (=> mapIsEmpty!32781 mapRes!32781))

(declare-fun b!945707 () Bool)

(declare-fun tp_is_empty!20625 () Bool)

(assert (=> b!945707 (= e!532024 tp_is_empty!20625)))

(declare-fun b!945708 () Bool)

(declare-fun res!635139 () Bool)

(assert (=> b!945708 (=> (not res!635139) (not e!532026))))

(assert (=> b!945708 (= res!635139 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!21342 (array!57252) Bool)

(declare-fun array_inv!21343 (array!57250) Bool)

(assert (=> b!945709 (= e!532021 (and tp!62879 tp_is_empty!20625 (array_inv!21342 (_keys!10585 thiss!1141)) (array_inv!21343 (_values!5726 thiss!1141)) e!532023))))

(declare-fun b!945710 () Bool)

(declare-fun e!532022 () Bool)

(assert (=> b!945710 (= e!532022 tp_is_empty!20625)))

(declare-fun mapNonEmpty!32781 () Bool)

(declare-fun tp!62880 () Bool)

(assert (=> mapNonEmpty!32781 (= mapRes!32781 (and tp!62880 e!532022))))

(declare-fun mapKey!32781 () (_ BitVec 32))

(declare-fun mapValue!32781 () ValueCell!9831)

(declare-fun mapRest!32781 () (Array (_ BitVec 32) ValueCell!9831))

(assert (=> mapNonEmpty!32781 (= (arr!27541 (_values!5726 thiss!1141)) (store mapRest!32781 mapKey!32781 mapValue!32781))))

(assert (= (and start!80598 res!635141) b!945708))

(assert (= (and b!945708 res!635139) b!945705))

(assert (= (and b!945705 res!635140) b!945704))

(assert (= (and b!945706 condMapEmpty!32781) mapIsEmpty!32781))

(assert (= (and b!945706 (not condMapEmpty!32781)) mapNonEmpty!32781))

(assert (= (and mapNonEmpty!32781 ((_ is ValueCellFull!9831) mapValue!32781)) b!945710))

(assert (= (and b!945706 ((_ is ValueCellFull!9831) mapDefault!32781)) b!945707))

(assert (= b!945709 b!945706))

(assert (= start!80598 b!945709))

(declare-fun m!879429 () Bool)

(assert (=> start!80598 m!879429))

(declare-fun m!879431 () Bool)

(assert (=> b!945705 m!879431))

(declare-fun m!879433 () Bool)

(assert (=> b!945704 m!879433))

(declare-fun m!879435 () Bool)

(assert (=> b!945709 m!879435))

(declare-fun m!879437 () Bool)

(assert (=> b!945709 m!879437))

(declare-fun m!879439 () Bool)

(assert (=> mapNonEmpty!32781 m!879439))

(check-sat (not b!945704) tp_is_empty!20625 b_and!29557 (not b!945705) (not mapNonEmpty!32781) (not b!945709) (not start!80598) (not b_next!18117))
(check-sat b_and!29557 (not b_next!18117))
(get-model)

(declare-fun b!945744 () Bool)

(declare-fun e!532056 () SeekEntryResult!9085)

(declare-fun e!532055 () SeekEntryResult!9085)

(assert (=> b!945744 (= e!532056 e!532055)))

(declare-fun lt!426081 () (_ BitVec 64))

(declare-fun lt!426082 () SeekEntryResult!9085)

(assert (=> b!945744 (= lt!426081 (select (arr!27542 (_keys!10585 thiss!1141)) (index!38712 lt!426082)))))

(declare-fun c!98403 () Bool)

(assert (=> b!945744 (= c!98403 (= lt!426081 key!756))))

(declare-fun b!945745 () Bool)

(assert (=> b!945745 (= e!532056 Undefined!9085)))

(declare-fun b!945746 () Bool)

(declare-fun e!532054 () SeekEntryResult!9085)

(assert (=> b!945746 (= e!532054 (MissingZero!9085 (index!38712 lt!426082)))))

(declare-fun d!114373 () Bool)

(declare-fun lt!426083 () SeekEntryResult!9085)

(assert (=> d!114373 (and (or ((_ is MissingVacant!9085) lt!426083) (not ((_ is Found!9085) lt!426083)) (and (bvsge (index!38711 lt!426083) #b00000000000000000000000000000000) (bvslt (index!38711 lt!426083) (size!28012 (_keys!10585 thiss!1141))))) (not ((_ is MissingVacant!9085) lt!426083)) (or (not ((_ is Found!9085) lt!426083)) (= (select (arr!27542 (_keys!10585 thiss!1141)) (index!38711 lt!426083)) key!756)))))

(assert (=> d!114373 (= lt!426083 e!532056)))

(declare-fun c!98402 () Bool)

(assert (=> d!114373 (= c!98402 (and ((_ is Intermediate!9085) lt!426082) (undefined!9897 lt!426082)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57252 (_ BitVec 32)) SeekEntryResult!9085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114373 (= lt!426082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27378 thiss!1141)) key!756 (_keys!10585 thiss!1141) (mask!27378 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114373 (validMask!0 (mask!27378 thiss!1141))))

(assert (=> d!114373 (= (seekEntry!0 key!756 (_keys!10585 thiss!1141) (mask!27378 thiss!1141)) lt!426083)))

(declare-fun b!945747 () Bool)

(declare-fun lt!426080 () SeekEntryResult!9085)

(assert (=> b!945747 (= e!532054 (ite ((_ is MissingVacant!9085) lt!426080) (MissingZero!9085 (index!38713 lt!426080)) lt!426080))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57252 (_ BitVec 32)) SeekEntryResult!9085)

(assert (=> b!945747 (= lt!426080 (seekKeyOrZeroReturnVacant!0 (x!81282 lt!426082) (index!38712 lt!426082) (index!38712 lt!426082) key!756 (_keys!10585 thiss!1141) (mask!27378 thiss!1141)))))

(declare-fun b!945748 () Bool)

(declare-fun c!98404 () Bool)

(assert (=> b!945748 (= c!98404 (= lt!426081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!945748 (= e!532055 e!532054)))

(declare-fun b!945749 () Bool)

(assert (=> b!945749 (= e!532055 (Found!9085 (index!38712 lt!426082)))))

(assert (= (and d!114373 c!98402) b!945745))

(assert (= (and d!114373 (not c!98402)) b!945744))

(assert (= (and b!945744 c!98403) b!945749))

(assert (= (and b!945744 (not c!98403)) b!945748))

(assert (= (and b!945748 c!98404) b!945746))

(assert (= (and b!945748 (not c!98404)) b!945747))

(declare-fun m!879453 () Bool)

(assert (=> b!945744 m!879453))

(declare-fun m!879455 () Bool)

(assert (=> d!114373 m!879455))

(declare-fun m!879457 () Bool)

(assert (=> d!114373 m!879457))

(assert (=> d!114373 m!879457))

(declare-fun m!879459 () Bool)

(assert (=> d!114373 m!879459))

(declare-fun m!879461 () Bool)

(assert (=> d!114373 m!879461))

(declare-fun m!879463 () Bool)

(assert (=> b!945747 m!879463))

(assert (=> b!945705 d!114373))

(declare-fun d!114375 () Bool)

(declare-fun res!635157 () Bool)

(declare-fun e!532059 () Bool)

(assert (=> d!114375 (=> (not res!635157) (not e!532059))))

(declare-fun simpleValid!353 (LongMapFixedSize!4812) Bool)

(assert (=> d!114375 (= res!635157 (simpleValid!353 thiss!1141))))

(assert (=> d!114375 (= (valid!1814 thiss!1141) e!532059)))

(declare-fun b!945756 () Bool)

(declare-fun res!635158 () Bool)

(assert (=> b!945756 (=> (not res!635158) (not e!532059))))

(declare-fun arrayCountValidKeys!0 (array!57252 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945756 (= res!635158 (= (arrayCountValidKeys!0 (_keys!10585 thiss!1141) #b00000000000000000000000000000000 (size!28012 (_keys!10585 thiss!1141))) (_size!2461 thiss!1141)))))

(declare-fun b!945757 () Bool)

(declare-fun res!635159 () Bool)

(assert (=> b!945757 (=> (not res!635159) (not e!532059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57252 (_ BitVec 32)) Bool)

(assert (=> b!945757 (= res!635159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10585 thiss!1141) (mask!27378 thiss!1141)))))

(declare-fun b!945758 () Bool)

(declare-datatypes ((List!19423 0))(
  ( (Nil!19420) (Cons!19419 (h!20571 (_ BitVec 64)) (t!27752 List!19423)) )
))
(declare-fun arrayNoDuplicates!0 (array!57252 (_ BitVec 32) List!19423) Bool)

(assert (=> b!945758 (= e!532059 (arrayNoDuplicates!0 (_keys!10585 thiss!1141) #b00000000000000000000000000000000 Nil!19420))))

(assert (= (and d!114375 res!635157) b!945756))

(assert (= (and b!945756 res!635158) b!945757))

(assert (= (and b!945757 res!635159) b!945758))

(declare-fun m!879465 () Bool)

(assert (=> d!114375 m!879465))

(declare-fun m!879467 () Bool)

(assert (=> b!945756 m!879467))

(declare-fun m!879469 () Bool)

(assert (=> b!945757 m!879469))

(declare-fun m!879471 () Bool)

(assert (=> b!945758 m!879471))

(assert (=> start!80598 d!114375))

(declare-fun d!114377 () Bool)

(declare-fun res!635164 () Bool)

(declare-fun e!532064 () Bool)

(assert (=> d!114377 (=> res!635164 e!532064)))

(assert (=> d!114377 (= res!635164 (= (select (arr!27542 (_keys!10585 thiss!1141)) (index!38711 lt!426068)) key!756))))

(assert (=> d!114377 (= (arrayContainsKey!0 (_keys!10585 thiss!1141) key!756 (index!38711 lt!426068)) e!532064)))

(declare-fun b!945763 () Bool)

(declare-fun e!532065 () Bool)

(assert (=> b!945763 (= e!532064 e!532065)))

(declare-fun res!635165 () Bool)

(assert (=> b!945763 (=> (not res!635165) (not e!532065))))

(assert (=> b!945763 (= res!635165 (bvslt (bvadd (index!38711 lt!426068) #b00000000000000000000000000000001) (size!28012 (_keys!10585 thiss!1141))))))

(declare-fun b!945764 () Bool)

(assert (=> b!945764 (= e!532065 (arrayContainsKey!0 (_keys!10585 thiss!1141) key!756 (bvadd (index!38711 lt!426068) #b00000000000000000000000000000001)))))

(assert (= (and d!114377 (not res!635164)) b!945763))

(assert (= (and b!945763 res!635165) b!945764))

(declare-fun m!879473 () Bool)

(assert (=> d!114377 m!879473))

(declare-fun m!879475 () Bool)

(assert (=> b!945764 m!879475))

(assert (=> b!945704 d!114377))

(declare-fun d!114379 () Bool)

(assert (=> d!114379 (= (array_inv!21342 (_keys!10585 thiss!1141)) (bvsge (size!28012 (_keys!10585 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945709 d!114379))

(declare-fun d!114381 () Bool)

(assert (=> d!114381 (= (array_inv!21343 (_values!5726 thiss!1141)) (bvsge (size!28011 (_values!5726 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945709 d!114381))

(declare-fun mapNonEmpty!32787 () Bool)

(declare-fun mapRes!32787 () Bool)

(declare-fun tp!62889 () Bool)

(declare-fun e!532071 () Bool)

(assert (=> mapNonEmpty!32787 (= mapRes!32787 (and tp!62889 e!532071))))

(declare-fun mapKey!32787 () (_ BitVec 32))

(declare-fun mapRest!32787 () (Array (_ BitVec 32) ValueCell!9831))

(declare-fun mapValue!32787 () ValueCell!9831)

(assert (=> mapNonEmpty!32787 (= mapRest!32781 (store mapRest!32787 mapKey!32787 mapValue!32787))))

(declare-fun mapIsEmpty!32787 () Bool)

(assert (=> mapIsEmpty!32787 mapRes!32787))

(declare-fun condMapEmpty!32787 () Bool)

(declare-fun mapDefault!32787 () ValueCell!9831)

(assert (=> mapNonEmpty!32781 (= condMapEmpty!32787 (= mapRest!32781 ((as const (Array (_ BitVec 32) ValueCell!9831)) mapDefault!32787)))))

(declare-fun e!532070 () Bool)

(assert (=> mapNonEmpty!32781 (= tp!62880 (and e!532070 mapRes!32787))))

(declare-fun b!945772 () Bool)

(assert (=> b!945772 (= e!532070 tp_is_empty!20625)))

(declare-fun b!945771 () Bool)

(assert (=> b!945771 (= e!532071 tp_is_empty!20625)))

(assert (= (and mapNonEmpty!32781 condMapEmpty!32787) mapIsEmpty!32787))

(assert (= (and mapNonEmpty!32781 (not condMapEmpty!32787)) mapNonEmpty!32787))

(assert (= (and mapNonEmpty!32787 ((_ is ValueCellFull!9831) mapValue!32787)) b!945771))

(assert (= (and mapNonEmpty!32781 ((_ is ValueCellFull!9831) mapDefault!32787)) b!945772))

(declare-fun m!879477 () Bool)

(assert (=> mapNonEmpty!32787 m!879477))

(check-sat (not d!114373) (not b!945758) tp_is_empty!20625 b_and!29557 (not d!114375) (not mapNonEmpty!32787) (not b!945757) (not b_next!18117) (not b!945747) (not b!945756) (not b!945764))
(check-sat b_and!29557 (not b_next!18117))
