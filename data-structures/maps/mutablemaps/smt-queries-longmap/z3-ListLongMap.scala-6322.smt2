; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81326 () Bool)

(assert start!81326)

(declare-fun b!950784 () Bool)

(declare-fun b_free!18255 () Bool)

(declare-fun b_next!18255 () Bool)

(assert (=> b!950784 (= b_free!18255 (not b_next!18255))))

(declare-fun tp!63368 () Bool)

(declare-fun b_and!29737 () Bool)

(assert (=> b!950784 (= tp!63368 b_and!29737)))

(declare-fun b!950779 () Bool)

(declare-fun e!535377 () Bool)

(declare-fun e!535376 () Bool)

(declare-fun mapRes!33063 () Bool)

(assert (=> b!950779 (= e!535377 (and e!535376 mapRes!33063))))

(declare-fun condMapEmpty!33063 () Bool)

(declare-datatypes ((V!32649 0))(
  ( (V!32650 (val!10432 Int)) )
))
(declare-datatypes ((ValueCell!9900 0))(
  ( (ValueCellFull!9900 (v!12977 V!32649)) (EmptyCell!9900) )
))
(declare-datatypes ((array!57570 0))(
  ( (array!57571 (arr!27679 (Array (_ BitVec 32) ValueCell!9900)) (size!28158 (_ BitVec 32))) )
))
(declare-datatypes ((array!57572 0))(
  ( (array!57573 (arr!27680 (Array (_ BitVec 32) (_ BitVec 64))) (size!28159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4950 0))(
  ( (LongMapFixedSize!4951 (defaultEntry!5792 Int) (mask!27597 (_ BitVec 32)) (extraKeys!5524 (_ BitVec 32)) (zeroValue!5628 V!32649) (minValue!5628 V!32649) (_size!2530 (_ BitVec 32)) (_keys!10729 array!57572) (_values!5815 array!57570) (_vacant!2530 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4950)

(declare-fun mapDefault!33063 () ValueCell!9900)

(assert (=> b!950779 (= condMapEmpty!33063 (= (arr!27679 (_values!5815 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9900)) mapDefault!33063)))))

(declare-fun b!950780 () Bool)

(declare-fun res!637429 () Bool)

(declare-fun e!535374 () Bool)

(assert (=> b!950780 (=> (not res!637429) (not e!535374))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13652 0))(
  ( (tuple2!13653 (_1!6836 (_ BitVec 64)) (_2!6836 V!32649)) )
))
(declare-datatypes ((List!19476 0))(
  ( (Nil!19473) (Cons!19472 (h!20633 tuple2!13652) (t!27827 List!19476)) )
))
(declare-datatypes ((ListLongMap!12363 0))(
  ( (ListLongMap!12364 (toList!6197 List!19476)) )
))
(declare-fun contains!5241 (ListLongMap!12363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3382 (array!57572 array!57570 (_ BitVec 32) (_ BitVec 32) V!32649 V!32649 (_ BitVec 32) Int) ListLongMap!12363)

(assert (=> b!950780 (= res!637429 (contains!5241 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)) key!756))))

(declare-fun b!950781 () Bool)

(declare-fun res!637431 () Bool)

(assert (=> b!950781 (=> (not res!637431) (not e!535374))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9132 0))(
  ( (MissingZero!9132 (index!38898 (_ BitVec 32))) (Found!9132 (index!38899 (_ BitVec 32))) (Intermediate!9132 (undefined!9944 Bool) (index!38900 (_ BitVec 32)) (x!81787 (_ BitVec 32))) (Undefined!9132) (MissingVacant!9132 (index!38901 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57572 (_ BitVec 32)) SeekEntryResult!9132)

(assert (=> b!950781 (= res!637431 (not ((_ is Found!9132) (seekEntry!0 key!756 (_keys!10729 thiss!1141) (mask!27597 thiss!1141)))))))

(declare-fun b!950782 () Bool)

(declare-fun e!535373 () Bool)

(declare-fun tp_is_empty!20763 () Bool)

(assert (=> b!950782 (= e!535373 tp_is_empty!20763)))

(declare-fun b!950783 () Bool)

(declare-fun res!637428 () Bool)

(assert (=> b!950783 (=> (not res!637428) (not e!535374))))

(assert (=> b!950783 (= res!637428 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!33063 () Bool)

(assert (=> mapIsEmpty!33063 mapRes!33063))

(declare-fun mapNonEmpty!33063 () Bool)

(declare-fun tp!63369 () Bool)

(assert (=> mapNonEmpty!33063 (= mapRes!33063 (and tp!63369 e!535373))))

(declare-fun mapRest!33063 () (Array (_ BitVec 32) ValueCell!9900))

(declare-fun mapValue!33063 () ValueCell!9900)

(declare-fun mapKey!33063 () (_ BitVec 32))

(assert (=> mapNonEmpty!33063 (= (arr!27679 (_values!5815 thiss!1141)) (store mapRest!33063 mapKey!33063 mapValue!33063))))

(declare-fun res!637430 () Bool)

(assert (=> start!81326 (=> (not res!637430) (not e!535374))))

(declare-fun valid!1854 (LongMapFixedSize!4950) Bool)

(assert (=> start!81326 (= res!637430 (valid!1854 thiss!1141))))

(assert (=> start!81326 e!535374))

(declare-fun e!535378 () Bool)

(assert (=> start!81326 e!535378))

(assert (=> start!81326 true))

(declare-fun array_inv!21424 (array!57572) Bool)

(declare-fun array_inv!21425 (array!57570) Bool)

(assert (=> b!950784 (= e!535378 (and tp!63368 tp_is_empty!20763 (array_inv!21424 (_keys!10729 thiss!1141)) (array_inv!21425 (_values!5815 thiss!1141)) e!535377))))

(declare-fun b!950785 () Bool)

(declare-fun e!535375 () Bool)

(assert (=> b!950785 (= e!535375 (or (not (= (size!28159 (_keys!10729 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27597 thiss!1141)))) (bvsle #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141)))))))

(declare-fun b!950786 () Bool)

(assert (=> b!950786 (= e!535376 tp_is_empty!20763)))

(declare-fun b!950787 () Bool)

(assert (=> b!950787 (= e!535374 (not e!535375))))

(declare-fun res!637427 () Bool)

(assert (=> b!950787 (=> res!637427 e!535375)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950787 (= res!637427 (not (validMask!0 (mask!27597 thiss!1141))))))

(declare-fun lt!428234 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57572 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950787 (= lt!428234 (arrayScanForKey!0 (_keys!10729 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950787 (arrayContainsKey!0 (_keys!10729 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31998 0))(
  ( (Unit!31999) )
))
(declare-fun lt!428233 () Unit!31998)

(declare-fun lemmaKeyInListMapIsInArray!326 (array!57572 array!57570 (_ BitVec 32) (_ BitVec 32) V!32649 V!32649 (_ BitVec 64) Int) Unit!31998)

(assert (=> b!950787 (= lt!428233 (lemmaKeyInListMapIsInArray!326 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) key!756 (defaultEntry!5792 thiss!1141)))))

(assert (= (and start!81326 res!637430) b!950783))

(assert (= (and b!950783 res!637428) b!950781))

(assert (= (and b!950781 res!637431) b!950780))

(assert (= (and b!950780 res!637429) b!950787))

(assert (= (and b!950787 (not res!637427)) b!950785))

(assert (= (and b!950779 condMapEmpty!33063) mapIsEmpty!33063))

(assert (= (and b!950779 (not condMapEmpty!33063)) mapNonEmpty!33063))

(assert (= (and mapNonEmpty!33063 ((_ is ValueCellFull!9900) mapValue!33063)) b!950782))

(assert (= (and b!950779 ((_ is ValueCellFull!9900) mapDefault!33063)) b!950786))

(assert (= b!950784 b!950779))

(assert (= start!81326 b!950784))

(declare-fun m!883255 () Bool)

(assert (=> start!81326 m!883255))

(declare-fun m!883257 () Bool)

(assert (=> b!950781 m!883257))

(declare-fun m!883259 () Bool)

(assert (=> b!950780 m!883259))

(assert (=> b!950780 m!883259))

(declare-fun m!883261 () Bool)

(assert (=> b!950780 m!883261))

(declare-fun m!883263 () Bool)

(assert (=> mapNonEmpty!33063 m!883263))

(declare-fun m!883265 () Bool)

(assert (=> b!950787 m!883265))

(declare-fun m!883267 () Bool)

(assert (=> b!950787 m!883267))

(declare-fun m!883269 () Bool)

(assert (=> b!950787 m!883269))

(declare-fun m!883271 () Bool)

(assert (=> b!950787 m!883271))

(declare-fun m!883273 () Bool)

(assert (=> b!950784 m!883273))

(declare-fun m!883275 () Bool)

(assert (=> b!950784 m!883275))

(check-sat (not b!950780) (not b!950784) tp_is_empty!20763 (not b!950787) (not b_next!18255) (not start!81326) (not mapNonEmpty!33063) (not b!950781) b_and!29737)
(check-sat b_and!29737 (not b_next!18255))
(get-model)

(declare-fun d!115213 () Bool)

(declare-fun res!637453 () Bool)

(declare-fun e!535402 () Bool)

(assert (=> d!115213 (=> (not res!637453) (not e!535402))))

(declare-fun simpleValid!375 (LongMapFixedSize!4950) Bool)

(assert (=> d!115213 (= res!637453 (simpleValid!375 thiss!1141))))

(assert (=> d!115213 (= (valid!1854 thiss!1141) e!535402)))

(declare-fun b!950821 () Bool)

(declare-fun res!637454 () Bool)

(assert (=> b!950821 (=> (not res!637454) (not e!535402))))

(declare-fun arrayCountValidKeys!0 (array!57572 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950821 (= res!637454 (= (arrayCountValidKeys!0 (_keys!10729 thiss!1141) #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))) (_size!2530 thiss!1141)))))

(declare-fun b!950822 () Bool)

(declare-fun res!637455 () Bool)

(assert (=> b!950822 (=> (not res!637455) (not e!535402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57572 (_ BitVec 32)) Bool)

(assert (=> b!950822 (= res!637455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10729 thiss!1141) (mask!27597 thiss!1141)))))

(declare-fun b!950823 () Bool)

(declare-datatypes ((List!19477 0))(
  ( (Nil!19474) (Cons!19473 (h!20634 (_ BitVec 64)) (t!27830 List!19477)) )
))
(declare-fun arrayNoDuplicates!0 (array!57572 (_ BitVec 32) List!19477) Bool)

(assert (=> b!950823 (= e!535402 (arrayNoDuplicates!0 (_keys!10729 thiss!1141) #b00000000000000000000000000000000 Nil!19474))))

(assert (= (and d!115213 res!637453) b!950821))

(assert (= (and b!950821 res!637454) b!950822))

(assert (= (and b!950822 res!637455) b!950823))

(declare-fun m!883299 () Bool)

(assert (=> d!115213 m!883299))

(declare-fun m!883301 () Bool)

(assert (=> b!950821 m!883301))

(declare-fun m!883303 () Bool)

(assert (=> b!950822 m!883303))

(declare-fun m!883305 () Bool)

(assert (=> b!950823 m!883305))

(assert (=> start!81326 d!115213))

(declare-fun d!115215 () Bool)

(assert (=> d!115215 (= (validMask!0 (mask!27597 thiss!1141)) (and (or (= (mask!27597 thiss!1141) #b00000000000000000000000000000111) (= (mask!27597 thiss!1141) #b00000000000000000000000000001111) (= (mask!27597 thiss!1141) #b00000000000000000000000000011111) (= (mask!27597 thiss!1141) #b00000000000000000000000000111111) (= (mask!27597 thiss!1141) #b00000000000000000000000001111111) (= (mask!27597 thiss!1141) #b00000000000000000000000011111111) (= (mask!27597 thiss!1141) #b00000000000000000000000111111111) (= (mask!27597 thiss!1141) #b00000000000000000000001111111111) (= (mask!27597 thiss!1141) #b00000000000000000000011111111111) (= (mask!27597 thiss!1141) #b00000000000000000000111111111111) (= (mask!27597 thiss!1141) #b00000000000000000001111111111111) (= (mask!27597 thiss!1141) #b00000000000000000011111111111111) (= (mask!27597 thiss!1141) #b00000000000000000111111111111111) (= (mask!27597 thiss!1141) #b00000000000000001111111111111111) (= (mask!27597 thiss!1141) #b00000000000000011111111111111111) (= (mask!27597 thiss!1141) #b00000000000000111111111111111111) (= (mask!27597 thiss!1141) #b00000000000001111111111111111111) (= (mask!27597 thiss!1141) #b00000000000011111111111111111111) (= (mask!27597 thiss!1141) #b00000000000111111111111111111111) (= (mask!27597 thiss!1141) #b00000000001111111111111111111111) (= (mask!27597 thiss!1141) #b00000000011111111111111111111111) (= (mask!27597 thiss!1141) #b00000000111111111111111111111111) (= (mask!27597 thiss!1141) #b00000001111111111111111111111111) (= (mask!27597 thiss!1141) #b00000011111111111111111111111111) (= (mask!27597 thiss!1141) #b00000111111111111111111111111111) (= (mask!27597 thiss!1141) #b00001111111111111111111111111111) (= (mask!27597 thiss!1141) #b00011111111111111111111111111111) (= (mask!27597 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27597 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!950787 d!115215))

(declare-fun d!115217 () Bool)

(declare-fun lt!428243 () (_ BitVec 32))

(assert (=> d!115217 (and (or (bvslt lt!428243 #b00000000000000000000000000000000) (bvsge lt!428243 (size!28159 (_keys!10729 thiss!1141))) (and (bvsge lt!428243 #b00000000000000000000000000000000) (bvslt lt!428243 (size!28159 (_keys!10729 thiss!1141))))) (bvsge lt!428243 #b00000000000000000000000000000000) (bvslt lt!428243 (size!28159 (_keys!10729 thiss!1141))) (= (select (arr!27680 (_keys!10729 thiss!1141)) lt!428243) key!756))))

(declare-fun e!535405 () (_ BitVec 32))

(assert (=> d!115217 (= lt!428243 e!535405)))

(declare-fun c!99269 () Bool)

(assert (=> d!115217 (= c!99269 (= (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))) (bvslt (size!28159 (_keys!10729 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115217 (= (arrayScanForKey!0 (_keys!10729 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428243)))

(declare-fun b!950828 () Bool)

(assert (=> b!950828 (= e!535405 #b00000000000000000000000000000000)))

(declare-fun b!950829 () Bool)

(assert (=> b!950829 (= e!535405 (arrayScanForKey!0 (_keys!10729 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115217 c!99269) b!950828))

(assert (= (and d!115217 (not c!99269)) b!950829))

(declare-fun m!883307 () Bool)

(assert (=> d!115217 m!883307))

(declare-fun m!883309 () Bool)

(assert (=> d!115217 m!883309))

(declare-fun m!883311 () Bool)

(assert (=> b!950829 m!883311))

(assert (=> b!950787 d!115217))

(declare-fun d!115219 () Bool)

(declare-fun res!637460 () Bool)

(declare-fun e!535410 () Bool)

(assert (=> d!115219 (=> res!637460 e!535410)))

(assert (=> d!115219 (= res!637460 (= (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115219 (= (arrayContainsKey!0 (_keys!10729 thiss!1141) key!756 #b00000000000000000000000000000000) e!535410)))

(declare-fun b!950834 () Bool)

(declare-fun e!535411 () Bool)

(assert (=> b!950834 (= e!535410 e!535411)))

(declare-fun res!637461 () Bool)

(assert (=> b!950834 (=> (not res!637461) (not e!535411))))

(assert (=> b!950834 (= res!637461 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28159 (_keys!10729 thiss!1141))))))

(declare-fun b!950835 () Bool)

(assert (=> b!950835 (= e!535411 (arrayContainsKey!0 (_keys!10729 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115219 (not res!637460)) b!950834))

(assert (= (and b!950834 res!637461) b!950835))

(assert (=> d!115219 m!883309))

(declare-fun m!883313 () Bool)

(assert (=> b!950835 m!883313))

(assert (=> b!950787 d!115219))

(declare-fun d!115221 () Bool)

(declare-fun e!535414 () Bool)

(assert (=> d!115221 e!535414))

(declare-fun c!99272 () Bool)

(assert (=> d!115221 (= c!99272 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428246 () Unit!31998)

(declare-fun choose!1597 (array!57572 array!57570 (_ BitVec 32) (_ BitVec 32) V!32649 V!32649 (_ BitVec 64) Int) Unit!31998)

(assert (=> d!115221 (= lt!428246 (choose!1597 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) key!756 (defaultEntry!5792 thiss!1141)))))

(assert (=> d!115221 (validMask!0 (mask!27597 thiss!1141))))

(assert (=> d!115221 (= (lemmaKeyInListMapIsInArray!326 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) key!756 (defaultEntry!5792 thiss!1141)) lt!428246)))

(declare-fun b!950840 () Bool)

(assert (=> b!950840 (= e!535414 (arrayContainsKey!0 (_keys!10729 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!950841 () Bool)

(assert (=> b!950841 (= e!535414 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115221 c!99272) b!950840))

(assert (= (and d!115221 (not c!99272)) b!950841))

(declare-fun m!883315 () Bool)

(assert (=> d!115221 m!883315))

(assert (=> d!115221 m!883265))

(assert (=> b!950840 m!883269))

(assert (=> b!950787 d!115221))

(declare-fun b!950854 () Bool)

(declare-fun e!535422 () SeekEntryResult!9132)

(declare-fun lt!428258 () SeekEntryResult!9132)

(assert (=> b!950854 (= e!535422 (Found!9132 (index!38900 lt!428258)))))

(declare-fun b!950855 () Bool)

(declare-fun e!535423 () SeekEntryResult!9132)

(assert (=> b!950855 (= e!535423 (MissingZero!9132 (index!38900 lt!428258)))))

(declare-fun b!950856 () Bool)

(declare-fun e!535421 () SeekEntryResult!9132)

(assert (=> b!950856 (= e!535421 e!535422)))

(declare-fun lt!428256 () (_ BitVec 64))

(assert (=> b!950856 (= lt!428256 (select (arr!27680 (_keys!10729 thiss!1141)) (index!38900 lt!428258)))))

(declare-fun c!99279 () Bool)

(assert (=> b!950856 (= c!99279 (= lt!428256 key!756))))

(declare-fun b!950857 () Bool)

(assert (=> b!950857 (= e!535421 Undefined!9132)))

(declare-fun b!950858 () Bool)

(declare-fun lt!428257 () SeekEntryResult!9132)

(assert (=> b!950858 (= e!535423 (ite ((_ is MissingVacant!9132) lt!428257) (MissingZero!9132 (index!38901 lt!428257)) lt!428257))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57572 (_ BitVec 32)) SeekEntryResult!9132)

(assert (=> b!950858 (= lt!428257 (seekKeyOrZeroReturnVacant!0 (x!81787 lt!428258) (index!38900 lt!428258) (index!38900 lt!428258) key!756 (_keys!10729 thiss!1141) (mask!27597 thiss!1141)))))

(declare-fun d!115223 () Bool)

(declare-fun lt!428255 () SeekEntryResult!9132)

(assert (=> d!115223 (and (or ((_ is MissingVacant!9132) lt!428255) (not ((_ is Found!9132) lt!428255)) (and (bvsge (index!38899 lt!428255) #b00000000000000000000000000000000) (bvslt (index!38899 lt!428255) (size!28159 (_keys!10729 thiss!1141))))) (not ((_ is MissingVacant!9132) lt!428255)) (or (not ((_ is Found!9132) lt!428255)) (= (select (arr!27680 (_keys!10729 thiss!1141)) (index!38899 lt!428255)) key!756)))))

(assert (=> d!115223 (= lt!428255 e!535421)))

(declare-fun c!99280 () Bool)

(assert (=> d!115223 (= c!99280 (and ((_ is Intermediate!9132) lt!428258) (undefined!9944 lt!428258)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57572 (_ BitVec 32)) SeekEntryResult!9132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115223 (= lt!428258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27597 thiss!1141)) key!756 (_keys!10729 thiss!1141) (mask!27597 thiss!1141)))))

(assert (=> d!115223 (validMask!0 (mask!27597 thiss!1141))))

(assert (=> d!115223 (= (seekEntry!0 key!756 (_keys!10729 thiss!1141) (mask!27597 thiss!1141)) lt!428255)))

(declare-fun b!950859 () Bool)

(declare-fun c!99281 () Bool)

(assert (=> b!950859 (= c!99281 (= lt!428256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950859 (= e!535422 e!535423)))

(assert (= (and d!115223 c!99280) b!950857))

(assert (= (and d!115223 (not c!99280)) b!950856))

(assert (= (and b!950856 c!99279) b!950854))

(assert (= (and b!950856 (not c!99279)) b!950859))

(assert (= (and b!950859 c!99281) b!950855))

(assert (= (and b!950859 (not c!99281)) b!950858))

(declare-fun m!883317 () Bool)

(assert (=> b!950856 m!883317))

(declare-fun m!883319 () Bool)

(assert (=> b!950858 m!883319))

(declare-fun m!883321 () Bool)

(assert (=> d!115223 m!883321))

(declare-fun m!883323 () Bool)

(assert (=> d!115223 m!883323))

(assert (=> d!115223 m!883323))

(declare-fun m!883325 () Bool)

(assert (=> d!115223 m!883325))

(assert (=> d!115223 m!883265))

(assert (=> b!950781 d!115223))

(declare-fun d!115225 () Bool)

(assert (=> d!115225 (= (array_inv!21424 (_keys!10729 thiss!1141)) (bvsge (size!28159 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950784 d!115225))

(declare-fun d!115227 () Bool)

(assert (=> d!115227 (= (array_inv!21425 (_values!5815 thiss!1141)) (bvsge (size!28158 (_values!5815 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950784 d!115227))

(declare-fun d!115229 () Bool)

(declare-fun e!535428 () Bool)

(assert (=> d!115229 e!535428))

(declare-fun res!637464 () Bool)

(assert (=> d!115229 (=> res!637464 e!535428)))

(declare-fun lt!428267 () Bool)

(assert (=> d!115229 (= res!637464 (not lt!428267))))

(declare-fun lt!428269 () Bool)

(assert (=> d!115229 (= lt!428267 lt!428269)))

(declare-fun lt!428268 () Unit!31998)

(declare-fun e!535429 () Unit!31998)

(assert (=> d!115229 (= lt!428268 e!535429)))

(declare-fun c!99284 () Bool)

(assert (=> d!115229 (= c!99284 lt!428269)))

(declare-fun containsKey!467 (List!19476 (_ BitVec 64)) Bool)

(assert (=> d!115229 (= lt!428269 (containsKey!467 (toList!6197 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141))) key!756))))

(assert (=> d!115229 (= (contains!5241 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)) key!756) lt!428267)))

(declare-fun b!950866 () Bool)

(declare-fun lt!428270 () Unit!31998)

(assert (=> b!950866 (= e!535429 lt!428270)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!362 (List!19476 (_ BitVec 64)) Unit!31998)

(assert (=> b!950866 (= lt!428270 (lemmaContainsKeyImpliesGetValueByKeyDefined!362 (toList!6197 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141))) key!756))))

(declare-datatypes ((Option!508 0))(
  ( (Some!507 (v!12979 V!32649)) (None!506) )
))
(declare-fun isDefined!372 (Option!508) Bool)

(declare-fun getValueByKey!502 (List!19476 (_ BitVec 64)) Option!508)

(assert (=> b!950866 (isDefined!372 (getValueByKey!502 (toList!6197 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141))) key!756))))

(declare-fun b!950867 () Bool)

(declare-fun Unit!32000 () Unit!31998)

(assert (=> b!950867 (= e!535429 Unit!32000)))

(declare-fun b!950868 () Bool)

(assert (=> b!950868 (= e!535428 (isDefined!372 (getValueByKey!502 (toList!6197 (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141))) key!756)))))

(assert (= (and d!115229 c!99284) b!950866))

(assert (= (and d!115229 (not c!99284)) b!950867))

(assert (= (and d!115229 (not res!637464)) b!950868))

(declare-fun m!883327 () Bool)

(assert (=> d!115229 m!883327))

(declare-fun m!883329 () Bool)

(assert (=> b!950866 m!883329))

(declare-fun m!883331 () Bool)

(assert (=> b!950866 m!883331))

(assert (=> b!950866 m!883331))

(declare-fun m!883333 () Bool)

(assert (=> b!950866 m!883333))

(assert (=> b!950868 m!883331))

(assert (=> b!950868 m!883331))

(assert (=> b!950868 m!883333))

(assert (=> b!950780 d!115229))

(declare-fun b!950911 () Bool)

(declare-fun e!535460 () Bool)

(declare-fun lt!428334 () ListLongMap!12363)

(declare-fun apply!915 (ListLongMap!12363 (_ BitVec 64)) V!32649)

(assert (=> b!950911 (= e!535460 (= (apply!915 lt!428334 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5628 thiss!1141)))))

(declare-fun bm!41436 () Bool)

(declare-fun call!41439 () ListLongMap!12363)

(declare-fun call!41445 () ListLongMap!12363)

(assert (=> bm!41436 (= call!41439 call!41445)))

(declare-fun d!115231 () Bool)

(declare-fun e!535462 () Bool)

(assert (=> d!115231 e!535462))

(declare-fun res!637485 () Bool)

(assert (=> d!115231 (=> (not res!637485) (not e!535462))))

(assert (=> d!115231 (= res!637485 (or (bvsge #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))))))))

(declare-fun lt!428329 () ListLongMap!12363)

(assert (=> d!115231 (= lt!428334 lt!428329)))

(declare-fun lt!428322 () Unit!31998)

(declare-fun e!535457 () Unit!31998)

(assert (=> d!115231 (= lt!428322 e!535457)))

(declare-fun c!99302 () Bool)

(declare-fun e!535456 () Bool)

(assert (=> d!115231 (= c!99302 e!535456)))

(declare-fun res!637490 () Bool)

(assert (=> d!115231 (=> (not res!637490) (not e!535456))))

(assert (=> d!115231 (= res!637490 (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))))))

(declare-fun e!535466 () ListLongMap!12363)

(assert (=> d!115231 (= lt!428329 e!535466)))

(declare-fun c!99298 () Bool)

(assert (=> d!115231 (= c!99298 (and (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115231 (validMask!0 (mask!27597 thiss!1141))))

(assert (=> d!115231 (= (getCurrentListMap!3382 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)) lt!428334)))

(declare-fun b!950912 () Bool)

(declare-fun e!535459 () Bool)

(assert (=> b!950912 (= e!535462 e!535459)))

(declare-fun c!99301 () Bool)

(assert (=> b!950912 (= c!99301 (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!41440 () ListLongMap!12363)

(declare-fun bm!41437 () Bool)

(declare-fun c!99300 () Bool)

(declare-fun call!41444 () ListLongMap!12363)

(declare-fun +!2829 (ListLongMap!12363 tuple2!13652) ListLongMap!12363)

(assert (=> bm!41437 (= call!41444 (+!2829 (ite c!99298 call!41445 (ite c!99300 call!41439 call!41440)) (ite (or c!99298 c!99300) (tuple2!13653 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5628 thiss!1141)) (tuple2!13653 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5628 thiss!1141)))))))

(declare-fun b!950913 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!950913 (= e!535456 (validKeyInArray!0 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950914 () Bool)

(declare-fun e!535467 () Bool)

(assert (=> b!950914 (= e!535459 e!535467)))

(declare-fun res!637491 () Bool)

(declare-fun call!41443 () Bool)

(assert (=> b!950914 (= res!637491 call!41443)))

(assert (=> b!950914 (=> (not res!637491) (not e!535467))))

(declare-fun bm!41438 () Bool)

(assert (=> bm!41438 (= call!41443 (contains!5241 lt!428334 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950915 () Bool)

(declare-fun e!535461 () Bool)

(declare-fun e!535468 () Bool)

(assert (=> b!950915 (= e!535461 e!535468)))

(declare-fun res!637483 () Bool)

(assert (=> b!950915 (=> (not res!637483) (not e!535468))))

(assert (=> b!950915 (= res!637483 (contains!5241 lt!428334 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950915 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))))))

(declare-fun b!950916 () Bool)

(declare-fun e!535463 () Bool)

(assert (=> b!950916 (= e!535463 e!535460)))

(declare-fun res!637489 () Bool)

(declare-fun call!41442 () Bool)

(assert (=> b!950916 (= res!637489 call!41442)))

(assert (=> b!950916 (=> (not res!637489) (not e!535460))))

(declare-fun b!950917 () Bool)

(declare-fun c!99297 () Bool)

(assert (=> b!950917 (= c!99297 (and (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!535458 () ListLongMap!12363)

(declare-fun e!535464 () ListLongMap!12363)

(assert (=> b!950917 (= e!535458 e!535464)))

(declare-fun b!950918 () Bool)

(assert (=> b!950918 (= e!535466 (+!2829 call!41444 (tuple2!13653 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5628 thiss!1141))))))

(declare-fun bm!41439 () Bool)

(declare-fun call!41441 () ListLongMap!12363)

(assert (=> bm!41439 (= call!41441 call!41444)))

(declare-fun b!950919 () Bool)

(assert (=> b!950919 (= e!535467 (= (apply!915 lt!428334 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5628 thiss!1141)))))

(declare-fun b!950920 () Bool)

(declare-fun res!637487 () Bool)

(assert (=> b!950920 (=> (not res!637487) (not e!535462))))

(assert (=> b!950920 (= res!637487 e!535463)))

(declare-fun c!99299 () Bool)

(assert (=> b!950920 (= c!99299 (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!950921 () Bool)

(declare-fun e!535465 () Bool)

(assert (=> b!950921 (= e!535465 (validKeyInArray!0 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950922 () Bool)

(assert (=> b!950922 (= e!535464 call!41440)))

(declare-fun b!950923 () Bool)

(assert (=> b!950923 (= e!535464 call!41441)))

(declare-fun b!950924 () Bool)

(assert (=> b!950924 (= e!535458 call!41441)))

(declare-fun b!950925 () Bool)

(assert (=> b!950925 (= e!535466 e!535458)))

(assert (=> b!950925 (= c!99300 (and (not (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5524 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950926 () Bool)

(declare-fun Unit!32001 () Unit!31998)

(assert (=> b!950926 (= e!535457 Unit!32001)))

(declare-fun bm!41440 () Bool)

(assert (=> bm!41440 (= call!41440 call!41439)))

(declare-fun b!950927 () Bool)

(declare-fun get!14565 (ValueCell!9900 V!32649) V!32649)

(declare-fun dynLambda!1668 (Int (_ BitVec 64)) V!32649)

(assert (=> b!950927 (= e!535468 (= (apply!915 lt!428334 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000)) (get!14565 (select (arr!27679 (_values!5815 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1668 (defaultEntry!5792 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!950927 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28158 (_values!5815 thiss!1141))))))

(assert (=> b!950927 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))))))

(declare-fun bm!41441 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3335 (array!57572 array!57570 (_ BitVec 32) (_ BitVec 32) V!32649 V!32649 (_ BitVec 32) Int) ListLongMap!12363)

(assert (=> bm!41441 (= call!41445 (getCurrentListMapNoExtraKeys!3335 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)))))

(declare-fun bm!41442 () Bool)

(assert (=> bm!41442 (= call!41442 (contains!5241 lt!428334 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950928 () Bool)

(declare-fun lt!428336 () Unit!31998)

(assert (=> b!950928 (= e!535457 lt!428336)))

(declare-fun lt!428333 () ListLongMap!12363)

(assert (=> b!950928 (= lt!428333 (getCurrentListMapNoExtraKeys!3335 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)))))

(declare-fun lt!428320 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428320 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428315 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428315 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428328 () Unit!31998)

(declare-fun addStillContains!585 (ListLongMap!12363 (_ BitVec 64) V!32649 (_ BitVec 64)) Unit!31998)

(assert (=> b!950928 (= lt!428328 (addStillContains!585 lt!428333 lt!428320 (zeroValue!5628 thiss!1141) lt!428315))))

(assert (=> b!950928 (contains!5241 (+!2829 lt!428333 (tuple2!13653 lt!428320 (zeroValue!5628 thiss!1141))) lt!428315)))

(declare-fun lt!428316 () Unit!31998)

(assert (=> b!950928 (= lt!428316 lt!428328)))

(declare-fun lt!428327 () ListLongMap!12363)

(assert (=> b!950928 (= lt!428327 (getCurrentListMapNoExtraKeys!3335 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)))))

(declare-fun lt!428331 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428331 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428323 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428323 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428321 () Unit!31998)

(declare-fun addApplyDifferent!459 (ListLongMap!12363 (_ BitVec 64) V!32649 (_ BitVec 64)) Unit!31998)

(assert (=> b!950928 (= lt!428321 (addApplyDifferent!459 lt!428327 lt!428331 (minValue!5628 thiss!1141) lt!428323))))

(assert (=> b!950928 (= (apply!915 (+!2829 lt!428327 (tuple2!13653 lt!428331 (minValue!5628 thiss!1141))) lt!428323) (apply!915 lt!428327 lt!428323))))

(declare-fun lt!428332 () Unit!31998)

(assert (=> b!950928 (= lt!428332 lt!428321)))

(declare-fun lt!428330 () ListLongMap!12363)

(assert (=> b!950928 (= lt!428330 (getCurrentListMapNoExtraKeys!3335 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)))))

(declare-fun lt!428325 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428325 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428318 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428318 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428326 () Unit!31998)

(assert (=> b!950928 (= lt!428326 (addApplyDifferent!459 lt!428330 lt!428325 (zeroValue!5628 thiss!1141) lt!428318))))

(assert (=> b!950928 (= (apply!915 (+!2829 lt!428330 (tuple2!13653 lt!428325 (zeroValue!5628 thiss!1141))) lt!428318) (apply!915 lt!428330 lt!428318))))

(declare-fun lt!428317 () Unit!31998)

(assert (=> b!950928 (= lt!428317 lt!428326)))

(declare-fun lt!428335 () ListLongMap!12363)

(assert (=> b!950928 (= lt!428335 (getCurrentListMapNoExtraKeys!3335 (_keys!10729 thiss!1141) (_values!5815 thiss!1141) (mask!27597 thiss!1141) (extraKeys!5524 thiss!1141) (zeroValue!5628 thiss!1141) (minValue!5628 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5792 thiss!1141)))))

(declare-fun lt!428324 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428324 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428319 () (_ BitVec 64))

(assert (=> b!950928 (= lt!428319 (select (arr!27680 (_keys!10729 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950928 (= lt!428336 (addApplyDifferent!459 lt!428335 lt!428324 (minValue!5628 thiss!1141) lt!428319))))

(assert (=> b!950928 (= (apply!915 (+!2829 lt!428335 (tuple2!13653 lt!428324 (minValue!5628 thiss!1141))) lt!428319) (apply!915 lt!428335 lt!428319))))

(declare-fun b!950929 () Bool)

(declare-fun res!637484 () Bool)

(assert (=> b!950929 (=> (not res!637484) (not e!535462))))

(assert (=> b!950929 (= res!637484 e!535461)))

(declare-fun res!637488 () Bool)

(assert (=> b!950929 (=> res!637488 e!535461)))

(assert (=> b!950929 (= res!637488 (not e!535465))))

(declare-fun res!637486 () Bool)

(assert (=> b!950929 (=> (not res!637486) (not e!535465))))

(assert (=> b!950929 (= res!637486 (bvslt #b00000000000000000000000000000000 (size!28159 (_keys!10729 thiss!1141))))))

(declare-fun b!950930 () Bool)

(assert (=> b!950930 (= e!535459 (not call!41443))))

(declare-fun b!950931 () Bool)

(assert (=> b!950931 (= e!535463 (not call!41442))))

(assert (= (and d!115231 c!99298) b!950918))

(assert (= (and d!115231 (not c!99298)) b!950925))

(assert (= (and b!950925 c!99300) b!950924))

(assert (= (and b!950925 (not c!99300)) b!950917))

(assert (= (and b!950917 c!99297) b!950923))

(assert (= (and b!950917 (not c!99297)) b!950922))

(assert (= (or b!950923 b!950922) bm!41440))

(assert (= (or b!950924 bm!41440) bm!41436))

(assert (= (or b!950924 b!950923) bm!41439))

(assert (= (or b!950918 bm!41436) bm!41441))

(assert (= (or b!950918 bm!41439) bm!41437))

(assert (= (and d!115231 res!637490) b!950913))

(assert (= (and d!115231 c!99302) b!950928))

(assert (= (and d!115231 (not c!99302)) b!950926))

(assert (= (and d!115231 res!637485) b!950929))

(assert (= (and b!950929 res!637486) b!950921))

(assert (= (and b!950929 (not res!637488)) b!950915))

(assert (= (and b!950915 res!637483) b!950927))

(assert (= (and b!950929 res!637484) b!950920))

(assert (= (and b!950920 c!99299) b!950916))

(assert (= (and b!950920 (not c!99299)) b!950931))

(assert (= (and b!950916 res!637489) b!950911))

(assert (= (or b!950916 b!950931) bm!41442))

(assert (= (and b!950920 res!637487) b!950912))

(assert (= (and b!950912 c!99301) b!950914))

(assert (= (and b!950912 (not c!99301)) b!950930))

(assert (= (and b!950914 res!637491) b!950919))

(assert (= (or b!950914 b!950930) bm!41438))

(declare-fun b_lambda!14413 () Bool)

(assert (=> (not b_lambda!14413) (not b!950927)))

(declare-fun t!27829 () Bool)

(declare-fun tb!6203 () Bool)

(assert (=> (and b!950784 (= (defaultEntry!5792 thiss!1141) (defaultEntry!5792 thiss!1141)) t!27829) tb!6203))

(declare-fun result!12315 () Bool)

(assert (=> tb!6203 (= result!12315 tp_is_empty!20763)))

(assert (=> b!950927 t!27829))

(declare-fun b_and!29741 () Bool)

(assert (= b_and!29737 (and (=> t!27829 result!12315) b_and!29741)))

(assert (=> b!950913 m!883309))

(assert (=> b!950913 m!883309))

(declare-fun m!883335 () Bool)

(assert (=> b!950913 m!883335))

(assert (=> d!115231 m!883265))

(declare-fun m!883337 () Bool)

(assert (=> b!950919 m!883337))

(declare-fun m!883339 () Bool)

(assert (=> bm!41437 m!883339))

(assert (=> b!950928 m!883309))

(declare-fun m!883341 () Bool)

(assert (=> b!950928 m!883341))

(declare-fun m!883343 () Bool)

(assert (=> b!950928 m!883343))

(declare-fun m!883345 () Bool)

(assert (=> b!950928 m!883345))

(declare-fun m!883347 () Bool)

(assert (=> b!950928 m!883347))

(declare-fun m!883349 () Bool)

(assert (=> b!950928 m!883349))

(assert (=> b!950928 m!883345))

(declare-fun m!883351 () Bool)

(assert (=> b!950928 m!883351))

(declare-fun m!883353 () Bool)

(assert (=> b!950928 m!883353))

(declare-fun m!883355 () Bool)

(assert (=> b!950928 m!883355))

(declare-fun m!883357 () Bool)

(assert (=> b!950928 m!883357))

(declare-fun m!883359 () Bool)

(assert (=> b!950928 m!883359))

(declare-fun m!883361 () Bool)

(assert (=> b!950928 m!883361))

(assert (=> b!950928 m!883359))

(declare-fun m!883363 () Bool)

(assert (=> b!950928 m!883363))

(declare-fun m!883365 () Bool)

(assert (=> b!950928 m!883365))

(declare-fun m!883367 () Bool)

(assert (=> b!950928 m!883367))

(assert (=> b!950928 m!883367))

(declare-fun m!883369 () Bool)

(assert (=> b!950928 m!883369))

(assert (=> b!950928 m!883363))

(declare-fun m!883371 () Bool)

(assert (=> b!950928 m!883371))

(assert (=> b!950927 m!883309))

(declare-fun m!883373 () Bool)

(assert (=> b!950927 m!883373))

(assert (=> b!950927 m!883309))

(declare-fun m!883375 () Bool)

(assert (=> b!950927 m!883375))

(declare-fun m!883377 () Bool)

(assert (=> b!950927 m!883377))

(assert (=> b!950927 m!883373))

(assert (=> b!950927 m!883377))

(declare-fun m!883379 () Bool)

(assert (=> b!950927 m!883379))

(declare-fun m!883381 () Bool)

(assert (=> b!950918 m!883381))

(assert (=> b!950921 m!883309))

(assert (=> b!950921 m!883309))

(assert (=> b!950921 m!883335))

(assert (=> bm!41441 m!883355))

(declare-fun m!883383 () Bool)

(assert (=> bm!41442 m!883383))

(declare-fun m!883385 () Bool)

(assert (=> b!950911 m!883385))

(assert (=> b!950915 m!883309))

(assert (=> b!950915 m!883309))

(declare-fun m!883387 () Bool)

(assert (=> b!950915 m!883387))

(declare-fun m!883389 () Bool)

(assert (=> bm!41438 m!883389))

(assert (=> b!950780 d!115231))

(declare-fun b!950941 () Bool)

(declare-fun e!535474 () Bool)

(assert (=> b!950941 (= e!535474 tp_is_empty!20763)))

(declare-fun b!950940 () Bool)

(declare-fun e!535473 () Bool)

(assert (=> b!950940 (= e!535473 tp_is_empty!20763)))

(declare-fun mapIsEmpty!33069 () Bool)

(declare-fun mapRes!33069 () Bool)

(assert (=> mapIsEmpty!33069 mapRes!33069))

(declare-fun mapNonEmpty!33069 () Bool)

(declare-fun tp!63378 () Bool)

(assert (=> mapNonEmpty!33069 (= mapRes!33069 (and tp!63378 e!535473))))

(declare-fun mapRest!33069 () (Array (_ BitVec 32) ValueCell!9900))

(declare-fun mapValue!33069 () ValueCell!9900)

(declare-fun mapKey!33069 () (_ BitVec 32))

(assert (=> mapNonEmpty!33069 (= mapRest!33063 (store mapRest!33069 mapKey!33069 mapValue!33069))))

(declare-fun condMapEmpty!33069 () Bool)

(declare-fun mapDefault!33069 () ValueCell!9900)

(assert (=> mapNonEmpty!33063 (= condMapEmpty!33069 (= mapRest!33063 ((as const (Array (_ BitVec 32) ValueCell!9900)) mapDefault!33069)))))

(assert (=> mapNonEmpty!33063 (= tp!63369 (and e!535474 mapRes!33069))))

(assert (= (and mapNonEmpty!33063 condMapEmpty!33069) mapIsEmpty!33069))

(assert (= (and mapNonEmpty!33063 (not condMapEmpty!33069)) mapNonEmpty!33069))

(assert (= (and mapNonEmpty!33069 ((_ is ValueCellFull!9900) mapValue!33069)) b!950940))

(assert (= (and mapNonEmpty!33063 ((_ is ValueCellFull!9900) mapDefault!33069)) b!950941))

(declare-fun m!883391 () Bool)

(assert (=> mapNonEmpty!33069 m!883391))

(declare-fun b_lambda!14415 () Bool)

(assert (= b_lambda!14413 (or (and b!950784 b_free!18255) b_lambda!14415)))

(check-sat (not d!115223) (not b!950915) (not b!950829) (not b!950840) (not d!115213) (not bm!41441) tp_is_empty!20763 b_and!29741 (not bm!41442) (not b!950866) (not d!115221) (not b!950928) (not b!950868) (not bm!41438) (not b_next!18255) (not b!950927) (not d!115229) (not b!950921) (not b!950835) (not b_lambda!14415) (not b!950822) (not b!950858) (not b!950918) (not mapNonEmpty!33069) (not b!950913) (not b!950911) (not bm!41437) (not b!950821) (not d!115231) (not b!950919) (not b!950823))
(check-sat b_and!29741 (not b_next!18255))
