; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80540 () Bool)

(assert start!80540)

(declare-fun b!945335 () Bool)

(declare-fun b_free!18099 () Bool)

(declare-fun b_next!18099 () Bool)

(assert (=> b!945335 (= b_free!18099 (not b_next!18099))))

(declare-fun tp!62815 () Bool)

(declare-fun b_and!29539 () Bool)

(assert (=> b!945335 (= tp!62815 b_and!29539)))

(declare-fun mapNonEmpty!32744 () Bool)

(declare-fun mapRes!32744 () Bool)

(declare-fun tp!62816 () Bool)

(declare-fun e!531746 () Bool)

(assert (=> mapNonEmpty!32744 (= mapRes!32744 (and tp!62816 e!531746))))

(declare-fun mapKey!32744 () (_ BitVec 32))

(declare-datatypes ((V!32441 0))(
  ( (V!32442 (val!10354 Int)) )
))
(declare-datatypes ((ValueCell!9822 0))(
  ( (ValueCellFull!9822 (v!12888 V!32441)) (EmptyCell!9822) )
))
(declare-datatypes ((array!57208 0))(
  ( (array!57209 (arr!27523 (Array (_ BitVec 32) ValueCell!9822)) (size!27992 (_ BitVec 32))) )
))
(declare-datatypes ((array!57210 0))(
  ( (array!57211 (arr!27524 (Array (_ BitVec 32) (_ BitVec 64))) (size!27993 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4794 0))(
  ( (LongMapFixedSize!4795 (defaultEntry!5694 Int) (mask!27355 (_ BitVec 32)) (extraKeys!5426 (_ BitVec 32)) (zeroValue!5530 V!32441) (minValue!5530 V!32441) (_size!2452 (_ BitVec 32)) (_keys!10570 array!57210) (_values!5717 array!57208) (_vacant!2452 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4794)

(declare-fun mapRest!32744 () (Array (_ BitVec 32) ValueCell!9822))

(declare-fun mapValue!32744 () ValueCell!9822)

(assert (=> mapNonEmpty!32744 (= (arr!27523 (_values!5717 thiss!1141)) (store mapRest!32744 mapKey!32744 mapValue!32744))))

(declare-fun b!945334 () Bool)

(declare-fun e!531745 () Bool)

(declare-fun e!531744 () Bool)

(assert (=> b!945334 (= e!531745 (and e!531744 mapRes!32744))))

(declare-fun condMapEmpty!32744 () Bool)

(declare-fun mapDefault!32744 () ValueCell!9822)

(assert (=> b!945334 (= condMapEmpty!32744 (= (arr!27523 (_values!5717 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9822)) mapDefault!32744)))))

(declare-fun tp_is_empty!20607 () Bool)

(declare-fun e!531743 () Bool)

(declare-fun array_inv!21328 (array!57210) Bool)

(declare-fun array_inv!21329 (array!57208) Bool)

(assert (=> b!945335 (= e!531743 (and tp!62815 tp_is_empty!20607 (array_inv!21328 (_keys!10570 thiss!1141)) (array_inv!21329 (_values!5717 thiss!1141)) e!531745))))

(declare-fun res!635016 () Bool)

(declare-fun e!531748 () Bool)

(assert (=> start!80540 (=> (not res!635016) (not e!531748))))

(declare-fun valid!1807 (LongMapFixedSize!4794) Bool)

(assert (=> start!80540 (= res!635016 (valid!1807 thiss!1141))))

(assert (=> start!80540 e!531748))

(assert (=> start!80540 e!531743))

(assert (=> start!80540 true))

(declare-fun mapIsEmpty!32744 () Bool)

(assert (=> mapIsEmpty!32744 mapRes!32744))

(declare-fun b!945336 () Bool)

(assert (=> b!945336 (= e!531746 tp_is_empty!20607)))

(declare-fun b!945337 () Bool)

(assert (=> b!945337 (= e!531744 tp_is_empty!20607)))

(declare-fun b!945338 () Bool)

(declare-fun res!635017 () Bool)

(assert (=> b!945338 (=> (not res!635017) (not e!531748))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945338 (= res!635017 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945339 () Bool)

(declare-datatypes ((SeekEntryResult!9078 0))(
  ( (MissingZero!9078 (index!38682 (_ BitVec 32))) (Found!9078 (index!38683 (_ BitVec 32))) (Intermediate!9078 (undefined!9890 Bool) (index!38684 (_ BitVec 32)) (x!81218 (_ BitVec 32))) (Undefined!9078) (MissingVacant!9078 (index!38685 (_ BitVec 32))) )
))
(declare-fun lt!425975 () SeekEntryResult!9078)

(get-info :version)

(assert (=> b!945339 (= e!531748 (and ((_ is Found!9078) lt!425975) (bvslt (index!38683 lt!425975) #b00000000000000000000000000000000)))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57210 (_ BitVec 32)) SeekEntryResult!9078)

(assert (=> b!945339 (= lt!425975 (seekEntry!0 key!756 (_keys!10570 thiss!1141) (mask!27355 thiss!1141)))))

(assert (= (and start!80540 res!635016) b!945338))

(assert (= (and b!945338 res!635017) b!945339))

(assert (= (and b!945334 condMapEmpty!32744) mapIsEmpty!32744))

(assert (= (and b!945334 (not condMapEmpty!32744)) mapNonEmpty!32744))

(assert (= (and mapNonEmpty!32744 ((_ is ValueCellFull!9822) mapValue!32744)) b!945336))

(assert (= (and b!945334 ((_ is ValueCellFull!9822) mapDefault!32744)) b!945337))

(assert (= b!945335 b!945334))

(assert (= start!80540 b!945335))

(declare-fun m!879233 () Bool)

(assert (=> mapNonEmpty!32744 m!879233))

(declare-fun m!879235 () Bool)

(assert (=> b!945335 m!879235))

(declare-fun m!879237 () Bool)

(assert (=> b!945335 m!879237))

(declare-fun m!879239 () Bool)

(assert (=> start!80540 m!879239))

(declare-fun m!879241 () Bool)

(assert (=> b!945339 m!879241))

(check-sat b_and!29539 (not b!945339) (not mapNonEmpty!32744) (not b_next!18099) (not start!80540) (not b!945335) tp_is_empty!20607)
(check-sat b_and!29539 (not b_next!18099))
(get-model)

(declare-fun b!945370 () Bool)

(declare-fun c!98346 () Bool)

(declare-fun lt!425988 () (_ BitVec 64))

(assert (=> b!945370 (= c!98346 (= lt!425988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!531775 () SeekEntryResult!9078)

(declare-fun e!531774 () SeekEntryResult!9078)

(assert (=> b!945370 (= e!531775 e!531774)))

(declare-fun b!945371 () Bool)

(declare-fun lt!425987 () SeekEntryResult!9078)

(assert (=> b!945371 (= e!531774 (MissingZero!9078 (index!38684 lt!425987)))))

(declare-fun b!945372 () Bool)

(declare-fun e!531773 () SeekEntryResult!9078)

(assert (=> b!945372 (= e!531773 e!531775)))

(assert (=> b!945372 (= lt!425988 (select (arr!27524 (_keys!10570 thiss!1141)) (index!38684 lt!425987)))))

(declare-fun c!98347 () Bool)

(assert (=> b!945372 (= c!98347 (= lt!425988 key!756))))

(declare-fun d!114327 () Bool)

(declare-fun lt!425989 () SeekEntryResult!9078)

(assert (=> d!114327 (and (or ((_ is MissingVacant!9078) lt!425989) (not ((_ is Found!9078) lt!425989)) (and (bvsge (index!38683 lt!425989) #b00000000000000000000000000000000) (bvslt (index!38683 lt!425989) (size!27993 (_keys!10570 thiss!1141))))) (not ((_ is MissingVacant!9078) lt!425989)) (or (not ((_ is Found!9078) lt!425989)) (= (select (arr!27524 (_keys!10570 thiss!1141)) (index!38683 lt!425989)) key!756)))))

(assert (=> d!114327 (= lt!425989 e!531773)))

(declare-fun c!98345 () Bool)

(assert (=> d!114327 (= c!98345 (and ((_ is Intermediate!9078) lt!425987) (undefined!9890 lt!425987)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57210 (_ BitVec 32)) SeekEntryResult!9078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114327 (= lt!425987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27355 thiss!1141)) key!756 (_keys!10570 thiss!1141) (mask!27355 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114327 (validMask!0 (mask!27355 thiss!1141))))

(assert (=> d!114327 (= (seekEntry!0 key!756 (_keys!10570 thiss!1141) (mask!27355 thiss!1141)) lt!425989)))

(declare-fun b!945373 () Bool)

(assert (=> b!945373 (= e!531773 Undefined!9078)))

(declare-fun b!945374 () Bool)

(declare-fun lt!425990 () SeekEntryResult!9078)

(assert (=> b!945374 (= e!531774 (ite ((_ is MissingVacant!9078) lt!425990) (MissingZero!9078 (index!38685 lt!425990)) lt!425990))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57210 (_ BitVec 32)) SeekEntryResult!9078)

(assert (=> b!945374 (= lt!425990 (seekKeyOrZeroReturnVacant!0 (x!81218 lt!425987) (index!38684 lt!425987) (index!38684 lt!425987) key!756 (_keys!10570 thiss!1141) (mask!27355 thiss!1141)))))

(declare-fun b!945375 () Bool)

(assert (=> b!945375 (= e!531775 (Found!9078 (index!38684 lt!425987)))))

(assert (= (and d!114327 c!98345) b!945373))

(assert (= (and d!114327 (not c!98345)) b!945372))

(assert (= (and b!945372 c!98347) b!945375))

(assert (= (and b!945372 (not c!98347)) b!945370))

(assert (= (and b!945370 c!98346) b!945371))

(assert (= (and b!945370 (not c!98346)) b!945374))

(declare-fun m!879253 () Bool)

(assert (=> b!945372 m!879253))

(declare-fun m!879255 () Bool)

(assert (=> d!114327 m!879255))

(declare-fun m!879257 () Bool)

(assert (=> d!114327 m!879257))

(assert (=> d!114327 m!879257))

(declare-fun m!879259 () Bool)

(assert (=> d!114327 m!879259))

(declare-fun m!879261 () Bool)

(assert (=> d!114327 m!879261))

(declare-fun m!879263 () Bool)

(assert (=> b!945374 m!879263))

(assert (=> b!945339 d!114327))

(declare-fun d!114329 () Bool)

(declare-fun res!635030 () Bool)

(declare-fun e!531778 () Bool)

(assert (=> d!114329 (=> (not res!635030) (not e!531778))))

(declare-fun simpleValid!350 (LongMapFixedSize!4794) Bool)

(assert (=> d!114329 (= res!635030 (simpleValid!350 thiss!1141))))

(assert (=> d!114329 (= (valid!1807 thiss!1141) e!531778)))

(declare-fun b!945382 () Bool)

(declare-fun res!635031 () Bool)

(assert (=> b!945382 (=> (not res!635031) (not e!531778))))

(declare-fun arrayCountValidKeys!0 (array!57210 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945382 (= res!635031 (= (arrayCountValidKeys!0 (_keys!10570 thiss!1141) #b00000000000000000000000000000000 (size!27993 (_keys!10570 thiss!1141))) (_size!2452 thiss!1141)))))

(declare-fun b!945383 () Bool)

(declare-fun res!635032 () Bool)

(assert (=> b!945383 (=> (not res!635032) (not e!531778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57210 (_ BitVec 32)) Bool)

(assert (=> b!945383 (= res!635032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10570 thiss!1141) (mask!27355 thiss!1141)))))

(declare-fun b!945384 () Bool)

(declare-datatypes ((List!19420 0))(
  ( (Nil!19417) (Cons!19416 (h!20567 (_ BitVec 64)) (t!27749 List!19420)) )
))
(declare-fun arrayNoDuplicates!0 (array!57210 (_ BitVec 32) List!19420) Bool)

(assert (=> b!945384 (= e!531778 (arrayNoDuplicates!0 (_keys!10570 thiss!1141) #b00000000000000000000000000000000 Nil!19417))))

(assert (= (and d!114329 res!635030) b!945382))

(assert (= (and b!945382 res!635031) b!945383))

(assert (= (and b!945383 res!635032) b!945384))

(declare-fun m!879265 () Bool)

(assert (=> d!114329 m!879265))

(declare-fun m!879267 () Bool)

(assert (=> b!945382 m!879267))

(declare-fun m!879269 () Bool)

(assert (=> b!945383 m!879269))

(declare-fun m!879271 () Bool)

(assert (=> b!945384 m!879271))

(assert (=> start!80540 d!114329))

(declare-fun d!114331 () Bool)

(assert (=> d!114331 (= (array_inv!21328 (_keys!10570 thiss!1141)) (bvsge (size!27993 (_keys!10570 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945335 d!114331))

(declare-fun d!114333 () Bool)

(assert (=> d!114333 (= (array_inv!21329 (_values!5717 thiss!1141)) (bvsge (size!27992 (_values!5717 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945335 d!114333))

(declare-fun mapNonEmpty!32750 () Bool)

(declare-fun mapRes!32750 () Bool)

(declare-fun tp!62825 () Bool)

(declare-fun e!531783 () Bool)

(assert (=> mapNonEmpty!32750 (= mapRes!32750 (and tp!62825 e!531783))))

(declare-fun mapRest!32750 () (Array (_ BitVec 32) ValueCell!9822))

(declare-fun mapValue!32750 () ValueCell!9822)

(declare-fun mapKey!32750 () (_ BitVec 32))

(assert (=> mapNonEmpty!32750 (= mapRest!32744 (store mapRest!32750 mapKey!32750 mapValue!32750))))

(declare-fun condMapEmpty!32750 () Bool)

(declare-fun mapDefault!32750 () ValueCell!9822)

(assert (=> mapNonEmpty!32744 (= condMapEmpty!32750 (= mapRest!32744 ((as const (Array (_ BitVec 32) ValueCell!9822)) mapDefault!32750)))))

(declare-fun e!531784 () Bool)

(assert (=> mapNonEmpty!32744 (= tp!62816 (and e!531784 mapRes!32750))))

(declare-fun b!945391 () Bool)

(assert (=> b!945391 (= e!531783 tp_is_empty!20607)))

(declare-fun b!945392 () Bool)

(assert (=> b!945392 (= e!531784 tp_is_empty!20607)))

(declare-fun mapIsEmpty!32750 () Bool)

(assert (=> mapIsEmpty!32750 mapRes!32750))

(assert (= (and mapNonEmpty!32744 condMapEmpty!32750) mapIsEmpty!32750))

(assert (= (and mapNonEmpty!32744 (not condMapEmpty!32750)) mapNonEmpty!32750))

(assert (= (and mapNonEmpty!32750 ((_ is ValueCellFull!9822) mapValue!32750)) b!945391))

(assert (= (and mapNonEmpty!32744 ((_ is ValueCellFull!9822) mapDefault!32750)) b!945392))

(declare-fun m!879273 () Bool)

(assert (=> mapNonEmpty!32750 m!879273))

(check-sat b_and!29539 (not b!945374) (not mapNonEmpty!32750) (not b_next!18099) (not b!945384) (not b!945383) (not d!114327) (not b!945382) (not d!114329) tp_is_empty!20607)
(check-sat b_and!29539 (not b_next!18099))
