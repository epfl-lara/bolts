; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80844 () Bool)

(assert start!80844)

(declare-fun b!947197 () Bool)

(declare-fun b_free!18171 () Bool)

(declare-fun b_next!18171 () Bool)

(assert (=> b!947197 (= b_free!18171 (not b_next!18171))))

(declare-fun tp!63072 () Bool)

(declare-fun b_and!29611 () Bool)

(assert (=> b!947197 (= tp!63072 b_and!29611)))

(declare-fun b!947189 () Bool)

(declare-fun res!635807 () Bool)

(declare-fun e!533137 () Bool)

(assert (=> b!947189 (=> res!635807 e!533137)))

(declare-datatypes ((V!32537 0))(
  ( (V!32538 (val!10390 Int)) )
))
(declare-datatypes ((ValueCell!9858 0))(
  ( (ValueCellFull!9858 (v!12924 V!32537)) (EmptyCell!9858) )
))
(declare-datatypes ((array!57376 0))(
  ( (array!57377 (arr!27595 (Array (_ BitVec 32) ValueCell!9858)) (size!28069 (_ BitVec 32))) )
))
(declare-datatypes ((array!57378 0))(
  ( (array!57379 (arr!27596 (Array (_ BitVec 32) (_ BitVec 64))) (size!28070 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4866 0))(
  ( (LongMapFixedSize!4867 (defaultEntry!5730 Int) (mask!27458 (_ BitVec 32)) (extraKeys!5462 (_ BitVec 32)) (zeroValue!5566 V!32537) (minValue!5566 V!32537) (_size!2488 (_ BitVec 32)) (_keys!10635 array!57378) (_values!5753 array!57376) (_vacant!2488 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4866)

(declare-datatypes ((List!19434 0))(
  ( (Nil!19431) (Cons!19430 (h!20586 (_ BitVec 64)) (t!27763 List!19434)) )
))
(declare-fun arrayNoDuplicates!0 (array!57378 (_ BitVec 32) List!19434) Bool)

(assert (=> b!947189 (= res!635807 (not (arrayNoDuplicates!0 (_keys!10635 thiss!1141) #b00000000000000000000000000000000 Nil!19431)))))

(declare-fun b!947190 () Bool)

(declare-fun e!533138 () Bool)

(declare-fun tp_is_empty!20679 () Bool)

(assert (=> b!947190 (= e!533138 tp_is_empty!20679)))

(declare-fun b!947191 () Bool)

(declare-fun res!635805 () Bool)

(assert (=> b!947191 (=> res!635805 e!533137)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57378 (_ BitVec 32)) Bool)

(assert (=> b!947191 (= res!635805 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10635 thiss!1141) (mask!27458 thiss!1141))))))

(declare-fun b!947192 () Bool)

(declare-fun e!533135 () Bool)

(declare-fun mapRes!32893 () Bool)

(assert (=> b!947192 (= e!533135 (and e!533138 mapRes!32893))))

(declare-fun condMapEmpty!32893 () Bool)

(declare-fun mapDefault!32893 () ValueCell!9858)

(assert (=> b!947192 (= condMapEmpty!32893 (= (arr!27595 (_values!5753 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9858)) mapDefault!32893)))))

(declare-fun b!947193 () Bool)

(declare-fun e!533133 () Bool)

(assert (=> b!947193 (= e!533133 (not e!533137))))

(declare-fun res!635809 () Bool)

(assert (=> b!947193 (=> res!635809 e!533137)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947193 (= res!635809 (not (validMask!0 (mask!27458 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947193 (arrayContainsKey!0 (_keys!10635 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9105 0))(
  ( (MissingZero!9105 (index!38790 (_ BitVec 32))) (Found!9105 (index!38791 (_ BitVec 32))) (Intermediate!9105 (undefined!9917 Bool) (index!38792 (_ BitVec 32)) (x!81482 (_ BitVec 32))) (Undefined!9105) (MissingVacant!9105 (index!38793 (_ BitVec 32))) )
))
(declare-fun lt!426497 () SeekEntryResult!9105)

(declare-datatypes ((Unit!31919 0))(
  ( (Unit!31920) )
))
(declare-fun lt!426496 () Unit!31919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57378 (_ BitVec 64) (_ BitVec 32)) Unit!31919)

(assert (=> b!947193 (= lt!426496 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10635 thiss!1141) key!756 (index!38791 lt!426497)))))

(declare-fun b!947194 () Bool)

(declare-fun e!533139 () Bool)

(assert (=> b!947194 (= e!533139 e!533133)))

(declare-fun res!635808 () Bool)

(assert (=> b!947194 (=> (not res!635808) (not e!533133))))

(get-info :version)

(assert (=> b!947194 (= res!635808 ((_ is Found!9105) lt!426497))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57378 (_ BitVec 32)) SeekEntryResult!9105)

(assert (=> b!947194 (= lt!426497 (seekEntry!0 key!756 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)))))

(declare-fun mapIsEmpty!32893 () Bool)

(assert (=> mapIsEmpty!32893 mapRes!32893))

(declare-fun res!635806 () Bool)

(assert (=> start!80844 (=> (not res!635806) (not e!533139))))

(declare-fun valid!1832 (LongMapFixedSize!4866) Bool)

(assert (=> start!80844 (= res!635806 (valid!1832 thiss!1141))))

(assert (=> start!80844 e!533139))

(declare-fun e!533140 () Bool)

(assert (=> start!80844 e!533140))

(assert (=> start!80844 true))

(declare-fun b!947195 () Bool)

(declare-fun res!635810 () Bool)

(assert (=> b!947195 (=> res!635810 e!533137)))

(assert (=> b!947195 (= res!635810 (or (not (= (size!28069 (_values!5753 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27458 thiss!1141)))) (not (= (size!28070 (_keys!10635 thiss!1141)) (size!28069 (_values!5753 thiss!1141)))) (bvslt (mask!27458 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5462 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5462 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!947196 () Bool)

(declare-fun res!635804 () Bool)

(assert (=> b!947196 (=> (not res!635804) (not e!533139))))

(assert (=> b!947196 (= res!635804 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32893 () Bool)

(declare-fun tp!63073 () Bool)

(declare-fun e!533134 () Bool)

(assert (=> mapNonEmpty!32893 (= mapRes!32893 (and tp!63073 e!533134))))

(declare-fun mapValue!32893 () ValueCell!9858)

(declare-fun mapKey!32893 () (_ BitVec 32))

(declare-fun mapRest!32893 () (Array (_ BitVec 32) ValueCell!9858))

(assert (=> mapNonEmpty!32893 (= (arr!27595 (_values!5753 thiss!1141)) (store mapRest!32893 mapKey!32893 mapValue!32893))))

(declare-fun array_inv!21370 (array!57378) Bool)

(declare-fun array_inv!21371 (array!57376) Bool)

(assert (=> b!947197 (= e!533140 (and tp!63072 tp_is_empty!20679 (array_inv!21370 (_keys!10635 thiss!1141)) (array_inv!21371 (_values!5753 thiss!1141)) e!533135))))

(declare-fun b!947198 () Bool)

(assert (=> b!947198 (= e!533134 tp_is_empty!20679)))

(declare-fun b!947199 () Bool)

(assert (=> b!947199 (= e!533137 (and (bvsge (index!38791 lt!426497) #b00000000000000000000000000000000) (bvslt (index!38791 lt!426497) (size!28070 (_keys!10635 thiss!1141)))))))

(assert (= (and start!80844 res!635806) b!947196))

(assert (= (and b!947196 res!635804) b!947194))

(assert (= (and b!947194 res!635808) b!947193))

(assert (= (and b!947193 (not res!635809)) b!947195))

(assert (= (and b!947195 (not res!635810)) b!947191))

(assert (= (and b!947191 (not res!635805)) b!947189))

(assert (= (and b!947189 (not res!635807)) b!947199))

(assert (= (and b!947192 condMapEmpty!32893) mapIsEmpty!32893))

(assert (= (and b!947192 (not condMapEmpty!32893)) mapNonEmpty!32893))

(assert (= (and mapNonEmpty!32893 ((_ is ValueCellFull!9858) mapValue!32893)) b!947198))

(assert (= (and b!947192 ((_ is ValueCellFull!9858) mapDefault!32893)) b!947190))

(assert (= b!947197 b!947192))

(assert (= start!80844 b!947197))

(declare-fun m!880287 () Bool)

(assert (=> b!947189 m!880287))

(declare-fun m!880289 () Bool)

(assert (=> b!947194 m!880289))

(declare-fun m!880291 () Bool)

(assert (=> start!80844 m!880291))

(declare-fun m!880293 () Bool)

(assert (=> b!947191 m!880293))

(declare-fun m!880295 () Bool)

(assert (=> b!947193 m!880295))

(declare-fun m!880297 () Bool)

(assert (=> b!947193 m!880297))

(declare-fun m!880299 () Bool)

(assert (=> b!947193 m!880299))

(declare-fun m!880301 () Bool)

(assert (=> b!947197 m!880301))

(declare-fun m!880303 () Bool)

(assert (=> b!947197 m!880303))

(declare-fun m!880305 () Bool)

(assert (=> mapNonEmpty!32893 m!880305))

(check-sat (not mapNonEmpty!32893) b_and!29611 (not b!947194) (not b!947189) tp_is_empty!20679 (not b!947193) (not b!947191) (not b!947197) (not start!80844) (not b_next!18171))
(check-sat b_and!29611 (not b_next!18171))
(get-model)

(declare-fun d!114591 () Bool)

(declare-fun res!635840 () Bool)

(declare-fun e!533176 () Bool)

(assert (=> d!114591 (=> res!635840 e!533176)))

(assert (=> d!114591 (= res!635840 (bvsge #b00000000000000000000000000000000 (size!28070 (_keys!10635 thiss!1141))))))

(assert (=> d!114591 (= (arrayNoDuplicates!0 (_keys!10635 thiss!1141) #b00000000000000000000000000000000 Nil!19431) e!533176)))

(declare-fun b!947243 () Bool)

(declare-fun e!533175 () Bool)

(assert (=> b!947243 (= e!533176 e!533175)))

(declare-fun res!635838 () Bool)

(assert (=> b!947243 (=> (not res!635838) (not e!533175))))

(declare-fun e!533173 () Bool)

(assert (=> b!947243 (= res!635838 (not e!533173))))

(declare-fun res!635839 () Bool)

(assert (=> b!947243 (=> (not res!635839) (not e!533173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947243 (= res!635839 (validKeyInArray!0 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947244 () Bool)

(declare-fun e!533174 () Bool)

(declare-fun call!41115 () Bool)

(assert (=> b!947244 (= e!533174 call!41115)))

(declare-fun b!947245 () Bool)

(declare-fun contains!5206 (List!19434 (_ BitVec 64)) Bool)

(assert (=> b!947245 (= e!533173 (contains!5206 Nil!19431 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947246 () Bool)

(assert (=> b!947246 (= e!533174 call!41115)))

(declare-fun bm!41112 () Bool)

(declare-fun c!98608 () Bool)

(assert (=> bm!41112 (= call!41115 (arrayNoDuplicates!0 (_keys!10635 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98608 (Cons!19430 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000) Nil!19431) Nil!19431)))))

(declare-fun b!947247 () Bool)

(assert (=> b!947247 (= e!533175 e!533174)))

(assert (=> b!947247 (= c!98608 (validKeyInArray!0 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114591 (not res!635840)) b!947243))

(assert (= (and b!947243 res!635839) b!947245))

(assert (= (and b!947243 res!635838) b!947247))

(assert (= (and b!947247 c!98608) b!947244))

(assert (= (and b!947247 (not c!98608)) b!947246))

(assert (= (or b!947244 b!947246) bm!41112))

(declare-fun m!880327 () Bool)

(assert (=> b!947243 m!880327))

(assert (=> b!947243 m!880327))

(declare-fun m!880329 () Bool)

(assert (=> b!947243 m!880329))

(assert (=> b!947245 m!880327))

(assert (=> b!947245 m!880327))

(declare-fun m!880331 () Bool)

(assert (=> b!947245 m!880331))

(assert (=> bm!41112 m!880327))

(declare-fun m!880333 () Bool)

(assert (=> bm!41112 m!880333))

(assert (=> b!947247 m!880327))

(assert (=> b!947247 m!880327))

(assert (=> b!947247 m!880329))

(assert (=> b!947189 d!114591))

(declare-fun b!947260 () Bool)

(declare-fun c!98615 () Bool)

(declare-fun lt!426514 () (_ BitVec 64))

(assert (=> b!947260 (= c!98615 (= lt!426514 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!533183 () SeekEntryResult!9105)

(declare-fun e!533184 () SeekEntryResult!9105)

(assert (=> b!947260 (= e!533183 e!533184)))

(declare-fun b!947261 () Bool)

(declare-fun lt!426512 () SeekEntryResult!9105)

(assert (=> b!947261 (= e!533183 (Found!9105 (index!38792 lt!426512)))))

(declare-fun b!947262 () Bool)

(assert (=> b!947262 (= e!533184 (MissingZero!9105 (index!38792 lt!426512)))))

(declare-fun b!947263 () Bool)

(declare-fun lt!426515 () SeekEntryResult!9105)

(assert (=> b!947263 (= e!533184 (ite ((_ is MissingVacant!9105) lt!426515) (MissingZero!9105 (index!38793 lt!426515)) lt!426515))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57378 (_ BitVec 32)) SeekEntryResult!9105)

(assert (=> b!947263 (= lt!426515 (seekKeyOrZeroReturnVacant!0 (x!81482 lt!426512) (index!38792 lt!426512) (index!38792 lt!426512) key!756 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)))))

(declare-fun b!947264 () Bool)

(declare-fun e!533185 () SeekEntryResult!9105)

(assert (=> b!947264 (= e!533185 Undefined!9105)))

(declare-fun d!114593 () Bool)

(declare-fun lt!426513 () SeekEntryResult!9105)

(assert (=> d!114593 (and (or ((_ is MissingVacant!9105) lt!426513) (not ((_ is Found!9105) lt!426513)) (and (bvsge (index!38791 lt!426513) #b00000000000000000000000000000000) (bvslt (index!38791 lt!426513) (size!28070 (_keys!10635 thiss!1141))))) (not ((_ is MissingVacant!9105) lt!426513)) (or (not ((_ is Found!9105) lt!426513)) (= (select (arr!27596 (_keys!10635 thiss!1141)) (index!38791 lt!426513)) key!756)))))

(assert (=> d!114593 (= lt!426513 e!533185)))

(declare-fun c!98616 () Bool)

(assert (=> d!114593 (= c!98616 (and ((_ is Intermediate!9105) lt!426512) (undefined!9917 lt!426512)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57378 (_ BitVec 32)) SeekEntryResult!9105)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114593 (= lt!426512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27458 thiss!1141)) key!756 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)))))

(assert (=> d!114593 (validMask!0 (mask!27458 thiss!1141))))

(assert (=> d!114593 (= (seekEntry!0 key!756 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)) lt!426513)))

(declare-fun b!947265 () Bool)

(assert (=> b!947265 (= e!533185 e!533183)))

(assert (=> b!947265 (= lt!426514 (select (arr!27596 (_keys!10635 thiss!1141)) (index!38792 lt!426512)))))

(declare-fun c!98617 () Bool)

(assert (=> b!947265 (= c!98617 (= lt!426514 key!756))))

(assert (= (and d!114593 c!98616) b!947264))

(assert (= (and d!114593 (not c!98616)) b!947265))

(assert (= (and b!947265 c!98617) b!947261))

(assert (= (and b!947265 (not c!98617)) b!947260))

(assert (= (and b!947260 c!98615) b!947262))

(assert (= (and b!947260 (not c!98615)) b!947263))

(declare-fun m!880335 () Bool)

(assert (=> b!947263 m!880335))

(declare-fun m!880337 () Bool)

(assert (=> d!114593 m!880337))

(declare-fun m!880339 () Bool)

(assert (=> d!114593 m!880339))

(assert (=> d!114593 m!880339))

(declare-fun m!880341 () Bool)

(assert (=> d!114593 m!880341))

(assert (=> d!114593 m!880295))

(declare-fun m!880343 () Bool)

(assert (=> b!947265 m!880343))

(assert (=> b!947194 d!114593))

(declare-fun d!114595 () Bool)

(assert (=> d!114595 (= (array_inv!21370 (_keys!10635 thiss!1141)) (bvsge (size!28070 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947197 d!114595))

(declare-fun d!114597 () Bool)

(assert (=> d!114597 (= (array_inv!21371 (_values!5753 thiss!1141)) (bvsge (size!28069 (_values!5753 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947197 d!114597))

(declare-fun d!114599 () Bool)

(declare-fun res!635847 () Bool)

(declare-fun e!533188 () Bool)

(assert (=> d!114599 (=> (not res!635847) (not e!533188))))

(declare-fun simpleValid!362 (LongMapFixedSize!4866) Bool)

(assert (=> d!114599 (= res!635847 (simpleValid!362 thiss!1141))))

(assert (=> d!114599 (= (valid!1832 thiss!1141) e!533188)))

(declare-fun b!947272 () Bool)

(declare-fun res!635848 () Bool)

(assert (=> b!947272 (=> (not res!635848) (not e!533188))))

(declare-fun arrayCountValidKeys!0 (array!57378 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947272 (= res!635848 (= (arrayCountValidKeys!0 (_keys!10635 thiss!1141) #b00000000000000000000000000000000 (size!28070 (_keys!10635 thiss!1141))) (_size!2488 thiss!1141)))))

(declare-fun b!947273 () Bool)

(declare-fun res!635849 () Bool)

(assert (=> b!947273 (=> (not res!635849) (not e!533188))))

(assert (=> b!947273 (= res!635849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)))))

(declare-fun b!947274 () Bool)

(assert (=> b!947274 (= e!533188 (arrayNoDuplicates!0 (_keys!10635 thiss!1141) #b00000000000000000000000000000000 Nil!19431))))

(assert (= (and d!114599 res!635847) b!947272))

(assert (= (and b!947272 res!635848) b!947273))

(assert (= (and b!947273 res!635849) b!947274))

(declare-fun m!880345 () Bool)

(assert (=> d!114599 m!880345))

(declare-fun m!880347 () Bool)

(assert (=> b!947272 m!880347))

(assert (=> b!947273 m!880293))

(assert (=> b!947274 m!880287))

(assert (=> start!80844 d!114599))

(declare-fun b!947283 () Bool)

(declare-fun e!533195 () Bool)

(declare-fun call!41118 () Bool)

(assert (=> b!947283 (= e!533195 call!41118)))

(declare-fun bm!41115 () Bool)

(assert (=> bm!41115 (= call!41118 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10635 thiss!1141) (mask!27458 thiss!1141)))))

(declare-fun d!114601 () Bool)

(declare-fun res!635854 () Bool)

(declare-fun e!533197 () Bool)

(assert (=> d!114601 (=> res!635854 e!533197)))

(assert (=> d!114601 (= res!635854 (bvsge #b00000000000000000000000000000000 (size!28070 (_keys!10635 thiss!1141))))))

(assert (=> d!114601 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10635 thiss!1141) (mask!27458 thiss!1141)) e!533197)))

(declare-fun b!947284 () Bool)

(declare-fun e!533196 () Bool)

(assert (=> b!947284 (= e!533196 e!533195)))

(declare-fun lt!426522 () (_ BitVec 64))

(assert (=> b!947284 (= lt!426522 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426524 () Unit!31919)

(assert (=> b!947284 (= lt!426524 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10635 thiss!1141) lt!426522 #b00000000000000000000000000000000))))

(assert (=> b!947284 (arrayContainsKey!0 (_keys!10635 thiss!1141) lt!426522 #b00000000000000000000000000000000)))

(declare-fun lt!426523 () Unit!31919)

(assert (=> b!947284 (= lt!426523 lt!426524)))

(declare-fun res!635855 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57378 (_ BitVec 32)) SeekEntryResult!9105)

(assert (=> b!947284 (= res!635855 (= (seekEntryOrOpen!0 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000) (_keys!10635 thiss!1141) (mask!27458 thiss!1141)) (Found!9105 #b00000000000000000000000000000000)))))

(assert (=> b!947284 (=> (not res!635855) (not e!533195))))

(declare-fun b!947285 () Bool)

(assert (=> b!947285 (= e!533196 call!41118)))

(declare-fun b!947286 () Bool)

(assert (=> b!947286 (= e!533197 e!533196)))

(declare-fun c!98620 () Bool)

(assert (=> b!947286 (= c!98620 (validKeyInArray!0 (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114601 (not res!635854)) b!947286))

(assert (= (and b!947286 c!98620) b!947284))

(assert (= (and b!947286 (not c!98620)) b!947285))

(assert (= (and b!947284 res!635855) b!947283))

(assert (= (or b!947283 b!947285) bm!41115))

(declare-fun m!880349 () Bool)

(assert (=> bm!41115 m!880349))

(assert (=> b!947284 m!880327))

(declare-fun m!880351 () Bool)

(assert (=> b!947284 m!880351))

(declare-fun m!880353 () Bool)

(assert (=> b!947284 m!880353))

(assert (=> b!947284 m!880327))

(declare-fun m!880355 () Bool)

(assert (=> b!947284 m!880355))

(assert (=> b!947286 m!880327))

(assert (=> b!947286 m!880327))

(assert (=> b!947286 m!880329))

(assert (=> b!947191 d!114601))

(declare-fun d!114603 () Bool)

(assert (=> d!114603 (= (validMask!0 (mask!27458 thiss!1141)) (and (or (= (mask!27458 thiss!1141) #b00000000000000000000000000000111) (= (mask!27458 thiss!1141) #b00000000000000000000000000001111) (= (mask!27458 thiss!1141) #b00000000000000000000000000011111) (= (mask!27458 thiss!1141) #b00000000000000000000000000111111) (= (mask!27458 thiss!1141) #b00000000000000000000000001111111) (= (mask!27458 thiss!1141) #b00000000000000000000000011111111) (= (mask!27458 thiss!1141) #b00000000000000000000000111111111) (= (mask!27458 thiss!1141) #b00000000000000000000001111111111) (= (mask!27458 thiss!1141) #b00000000000000000000011111111111) (= (mask!27458 thiss!1141) #b00000000000000000000111111111111) (= (mask!27458 thiss!1141) #b00000000000000000001111111111111) (= (mask!27458 thiss!1141) #b00000000000000000011111111111111) (= (mask!27458 thiss!1141) #b00000000000000000111111111111111) (= (mask!27458 thiss!1141) #b00000000000000001111111111111111) (= (mask!27458 thiss!1141) #b00000000000000011111111111111111) (= (mask!27458 thiss!1141) #b00000000000000111111111111111111) (= (mask!27458 thiss!1141) #b00000000000001111111111111111111) (= (mask!27458 thiss!1141) #b00000000000011111111111111111111) (= (mask!27458 thiss!1141) #b00000000000111111111111111111111) (= (mask!27458 thiss!1141) #b00000000001111111111111111111111) (= (mask!27458 thiss!1141) #b00000000011111111111111111111111) (= (mask!27458 thiss!1141) #b00000000111111111111111111111111) (= (mask!27458 thiss!1141) #b00000001111111111111111111111111) (= (mask!27458 thiss!1141) #b00000011111111111111111111111111) (= (mask!27458 thiss!1141) #b00000111111111111111111111111111) (= (mask!27458 thiss!1141) #b00001111111111111111111111111111) (= (mask!27458 thiss!1141) #b00011111111111111111111111111111) (= (mask!27458 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27458 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!947193 d!114603))

(declare-fun d!114605 () Bool)

(declare-fun res!635860 () Bool)

(declare-fun e!533202 () Bool)

(assert (=> d!114605 (=> res!635860 e!533202)))

(assert (=> d!114605 (= res!635860 (= (select (arr!27596 (_keys!10635 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114605 (= (arrayContainsKey!0 (_keys!10635 thiss!1141) key!756 #b00000000000000000000000000000000) e!533202)))

(declare-fun b!947291 () Bool)

(declare-fun e!533203 () Bool)

(assert (=> b!947291 (= e!533202 e!533203)))

(declare-fun res!635861 () Bool)

(assert (=> b!947291 (=> (not res!635861) (not e!533203))))

(assert (=> b!947291 (= res!635861 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28070 (_keys!10635 thiss!1141))))))

(declare-fun b!947292 () Bool)

(assert (=> b!947292 (= e!533203 (arrayContainsKey!0 (_keys!10635 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114605 (not res!635860)) b!947291))

(assert (= (and b!947291 res!635861) b!947292))

(assert (=> d!114605 m!880327))

(declare-fun m!880357 () Bool)

(assert (=> b!947292 m!880357))

(assert (=> b!947193 d!114605))

(declare-fun d!114607 () Bool)

(assert (=> d!114607 (arrayContainsKey!0 (_keys!10635 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426527 () Unit!31919)

(declare-fun choose!13 (array!57378 (_ BitVec 64) (_ BitVec 32)) Unit!31919)

(assert (=> d!114607 (= lt!426527 (choose!13 (_keys!10635 thiss!1141) key!756 (index!38791 lt!426497)))))

(assert (=> d!114607 (bvsge (index!38791 lt!426497) #b00000000000000000000000000000000)))

(assert (=> d!114607 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10635 thiss!1141) key!756 (index!38791 lt!426497)) lt!426527)))

(declare-fun bs!26620 () Bool)

(assert (= bs!26620 d!114607))

(assert (=> bs!26620 m!880297))

(declare-fun m!880359 () Bool)

(assert (=> bs!26620 m!880359))

(assert (=> b!947193 d!114607))

(declare-fun mapNonEmpty!32899 () Bool)

(declare-fun mapRes!32899 () Bool)

(declare-fun tp!63082 () Bool)

(declare-fun e!533208 () Bool)

(assert (=> mapNonEmpty!32899 (= mapRes!32899 (and tp!63082 e!533208))))

(declare-fun mapKey!32899 () (_ BitVec 32))

(declare-fun mapValue!32899 () ValueCell!9858)

(declare-fun mapRest!32899 () (Array (_ BitVec 32) ValueCell!9858))

(assert (=> mapNonEmpty!32899 (= mapRest!32893 (store mapRest!32899 mapKey!32899 mapValue!32899))))

(declare-fun b!947300 () Bool)

(declare-fun e!533209 () Bool)

(assert (=> b!947300 (= e!533209 tp_is_empty!20679)))

(declare-fun mapIsEmpty!32899 () Bool)

(assert (=> mapIsEmpty!32899 mapRes!32899))

(declare-fun b!947299 () Bool)

(assert (=> b!947299 (= e!533208 tp_is_empty!20679)))

(declare-fun condMapEmpty!32899 () Bool)

(declare-fun mapDefault!32899 () ValueCell!9858)

(assert (=> mapNonEmpty!32893 (= condMapEmpty!32899 (= mapRest!32893 ((as const (Array (_ BitVec 32) ValueCell!9858)) mapDefault!32899)))))

(assert (=> mapNonEmpty!32893 (= tp!63073 (and e!533209 mapRes!32899))))

(assert (= (and mapNonEmpty!32893 condMapEmpty!32899) mapIsEmpty!32899))

(assert (= (and mapNonEmpty!32893 (not condMapEmpty!32899)) mapNonEmpty!32899))

(assert (= (and mapNonEmpty!32899 ((_ is ValueCellFull!9858) mapValue!32899)) b!947299))

(assert (= (and mapNonEmpty!32893 ((_ is ValueCellFull!9858) mapDefault!32899)) b!947300))

(declare-fun m!880361 () Bool)

(assert (=> mapNonEmpty!32899 m!880361))

(check-sat (not b!947243) (not bm!41115) (not bm!41112) (not b!947272) (not mapNonEmpty!32899) (not d!114607) b_and!29611 (not d!114593) (not b!947247) (not b_next!18171) (not b!947292) (not b!947274) (not b!947245) (not b!947286) tp_is_empty!20679 (not b!947263) (not d!114599) (not b!947273) (not b!947284))
(check-sat b_and!29611 (not b_next!18171))
