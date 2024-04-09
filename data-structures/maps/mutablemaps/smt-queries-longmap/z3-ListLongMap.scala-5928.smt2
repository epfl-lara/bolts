; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77258 () Bool)

(assert start!77258)

(declare-fun b!900997 () Bool)

(declare-fun b_free!16071 () Bool)

(declare-fun b_next!16071 () Bool)

(assert (=> b!900997 (= b_free!16071 (not b_next!16071))))

(declare-fun tp!56311 () Bool)

(declare-fun b_and!26415 () Bool)

(assert (=> b!900997 (= tp!56311 b_and!26415)))

(declare-fun b!900994 () Bool)

(declare-fun e!504413 () Bool)

(declare-datatypes ((SeekEntryResult!8935 0))(
  ( (MissingZero!8935 (index!38110 (_ BitVec 32))) (Found!8935 (index!38111 (_ BitVec 32))) (Intermediate!8935 (undefined!9747 Bool) (index!38112 (_ BitVec 32)) (x!76759 (_ BitVec 32))) (Undefined!8935) (MissingVacant!8935 (index!38113 (_ BitVec 32))) )
))
(declare-fun lt!407199 () SeekEntryResult!8935)

(declare-datatypes ((array!52838 0))(
  ( (array!52839 (arr!25384 (Array (_ BitVec 32) (_ BitVec 64))) (size!25844 (_ BitVec 32))) )
))
(declare-datatypes ((V!29497 0))(
  ( (V!29498 (val!9250 Int)) )
))
(declare-datatypes ((ValueCell!8718 0))(
  ( (ValueCellFull!8718 (v!11746 V!29497)) (EmptyCell!8718) )
))
(declare-datatypes ((array!52840 0))(
  ( (array!52841 (arr!25385 (Array (_ BitVec 32) ValueCell!8718)) (size!25845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4452 0))(
  ( (LongMapFixedSize!4453 (defaultEntry!5464 Int) (mask!26260 (_ BitVec 32)) (extraKeys!5192 (_ BitVec 32)) (zeroValue!5296 V!29497) (minValue!5296 V!29497) (_size!2281 (_ BitVec 32)) (_keys!10270 array!52838) (_values!5483 array!52840) (_vacant!2281 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4452)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900994 (= e!504413 (inRange!0 (index!38111 lt!407199) (mask!26260 thiss!1181)))))

(declare-fun b!900995 () Bool)

(declare-fun e!504412 () Bool)

(declare-fun e!504408 () Bool)

(declare-fun mapRes!29281 () Bool)

(assert (=> b!900995 (= e!504412 (and e!504408 mapRes!29281))))

(declare-fun condMapEmpty!29281 () Bool)

(declare-fun mapDefault!29281 () ValueCell!8718)

(assert (=> b!900995 (= condMapEmpty!29281 (= (arr!25385 (_values!5483 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8718)) mapDefault!29281)))))

(declare-fun b!900996 () Bool)

(declare-fun e!504409 () Bool)

(declare-fun e!504414 () Bool)

(assert (=> b!900996 (= e!504409 e!504414)))

(declare-fun res!608500 () Bool)

(assert (=> b!900996 (=> res!608500 e!504414)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900996 (= res!608500 (not (validMask!0 (mask!26260 thiss!1181))))))

(declare-datatypes ((tuple2!12086 0))(
  ( (tuple2!12087 (_1!6053 (_ BitVec 64)) (_2!6053 V!29497)) )
))
(declare-datatypes ((List!17947 0))(
  ( (Nil!17944) (Cons!17943 (h!19089 tuple2!12086) (t!25312 List!17947)) )
))
(declare-datatypes ((ListLongMap!10797 0))(
  ( (ListLongMap!10798 (toList!5414 List!17947)) )
))
(declare-fun lt!407196 () ListLongMap!10797)

(declare-fun contains!4423 (ListLongMap!10797 (_ BitVec 64)) Bool)

(assert (=> b!900996 (contains!4423 lt!407196 (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199)))))

(declare-fun getCurrentListMap!2656 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 32) Int) ListLongMap!10797)

(assert (=> b!900996 (= lt!407196 (getCurrentListMap!2656 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-datatypes ((Unit!30578 0))(
  ( (Unit!30579) )
))
(declare-fun lt!407198 () Unit!30578)

(declare-fun lemmaValidKeyInArrayIsInListMap!249 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 32) Int) Unit!30578)

(assert (=> b!900996 (= lt!407198 (lemmaValidKeyInArrayIsInListMap!249 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) (index!38111 lt!407199) (defaultEntry!5464 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900996 (arrayContainsKey!0 (_keys!10270 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407197 () Unit!30578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52838 (_ BitVec 64) (_ BitVec 32)) Unit!30578)

(assert (=> b!900996 (= lt!407197 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10270 thiss!1181) key!785 (index!38111 lt!407199)))))

(declare-fun tp_is_empty!18399 () Bool)

(declare-fun e!504415 () Bool)

(declare-fun array_inv!19888 (array!52838) Bool)

(declare-fun array_inv!19889 (array!52840) Bool)

(assert (=> b!900997 (= e!504415 (and tp!56311 tp_is_empty!18399 (array_inv!19888 (_keys!10270 thiss!1181)) (array_inv!19889 (_values!5483 thiss!1181)) e!504412))))

(declare-fun b!900998 () Bool)

(assert (=> b!900998 (= e!504414 (= (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199)) key!785))))

(declare-fun b!900999 () Bool)

(declare-fun res!608496 () Bool)

(declare-fun e!504407 () Bool)

(assert (=> b!900999 (=> (not res!608496) (not e!504407))))

(assert (=> b!900999 (= res!608496 (not (= key!785 (bvneg key!785))))))

(declare-fun b!901000 () Bool)

(declare-fun res!608493 () Bool)

(assert (=> b!901000 (=> res!608493 e!504414)))

(assert (=> b!901000 (= res!608493 (not (inRange!0 (index!38111 lt!407199) (mask!26260 thiss!1181))))))

(declare-fun b!901001 () Bool)

(declare-fun res!608499 () Bool)

(assert (=> b!901001 (=> res!608499 e!504414)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52838 (_ BitVec 32)) Bool)

(assert (=> b!901001 (= res!608499 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10270 thiss!1181) (mask!26260 thiss!1181))))))

(declare-fun b!901002 () Bool)

(assert (=> b!901002 (= e!504407 (not e!504409))))

(declare-fun res!608495 () Bool)

(assert (=> b!901002 (=> res!608495 e!504409)))

(get-info :version)

(assert (=> b!901002 (= res!608495 (not ((_ is Found!8935) lt!407199)))))

(assert (=> b!901002 e!504413))

(declare-fun res!608494 () Bool)

(assert (=> b!901002 (=> res!608494 e!504413)))

(assert (=> b!901002 (= res!608494 (not ((_ is Found!8935) lt!407199)))))

(declare-fun lt!407195 () Unit!30578)

(declare-fun lemmaSeekEntryGivesInRangeIndex!114 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 64)) Unit!30578)

(assert (=> b!901002 (= lt!407195 (lemmaSeekEntryGivesInRangeIndex!114 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52838 (_ BitVec 32)) SeekEntryResult!8935)

(assert (=> b!901002 (= lt!407199 (seekEntry!0 key!785 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(declare-fun res!608498 () Bool)

(assert (=> start!77258 (=> (not res!608498) (not e!504407))))

(declare-fun valid!1693 (LongMapFixedSize!4452) Bool)

(assert (=> start!77258 (= res!608498 (valid!1693 thiss!1181))))

(assert (=> start!77258 e!504407))

(assert (=> start!77258 e!504415))

(assert (=> start!77258 true))

(declare-fun mapIsEmpty!29281 () Bool)

(assert (=> mapIsEmpty!29281 mapRes!29281))

(declare-fun b!901003 () Bool)

(declare-fun res!608502 () Bool)

(assert (=> b!901003 (=> res!608502 e!504414)))

(assert (=> b!901003 (= res!608502 (not (contains!4423 lt!407196 key!785)))))

(declare-fun b!901004 () Bool)

(declare-fun res!608497 () Bool)

(assert (=> b!901004 (=> res!608497 e!504414)))

(declare-datatypes ((List!17948 0))(
  ( (Nil!17945) (Cons!17944 (h!19090 (_ BitVec 64)) (t!25313 List!17948)) )
))
(declare-fun arrayNoDuplicates!0 (array!52838 (_ BitVec 32) List!17948) Bool)

(assert (=> b!901004 (= res!608497 (not (arrayNoDuplicates!0 (_keys!10270 thiss!1181) #b00000000000000000000000000000000 Nil!17945)))))

(declare-fun b!901005 () Bool)

(declare-fun res!608501 () Bool)

(assert (=> b!901005 (=> res!608501 e!504414)))

(assert (=> b!901005 (= res!608501 (or (not (= (size!25845 (_values!5483 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26260 thiss!1181)))) (not (= (size!25844 (_keys!10270 thiss!1181)) (size!25845 (_values!5483 thiss!1181)))) (bvslt (mask!26260 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5192 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5192 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29281 () Bool)

(declare-fun tp!56310 () Bool)

(declare-fun e!504410 () Bool)

(assert (=> mapNonEmpty!29281 (= mapRes!29281 (and tp!56310 e!504410))))

(declare-fun mapRest!29281 () (Array (_ BitVec 32) ValueCell!8718))

(declare-fun mapKey!29281 () (_ BitVec 32))

(declare-fun mapValue!29281 () ValueCell!8718)

(assert (=> mapNonEmpty!29281 (= (arr!25385 (_values!5483 thiss!1181)) (store mapRest!29281 mapKey!29281 mapValue!29281))))

(declare-fun b!901006 () Bool)

(assert (=> b!901006 (= e!504408 tp_is_empty!18399)))

(declare-fun b!901007 () Bool)

(assert (=> b!901007 (= e!504410 tp_is_empty!18399)))

(assert (= (and start!77258 res!608498) b!900999))

(assert (= (and b!900999 res!608496) b!901002))

(assert (= (and b!901002 (not res!608494)) b!900994))

(assert (= (and b!901002 (not res!608495)) b!900996))

(assert (= (and b!900996 (not res!608500)) b!901005))

(assert (= (and b!901005 (not res!608501)) b!901001))

(assert (= (and b!901001 (not res!608499)) b!901004))

(assert (= (and b!901004 (not res!608497)) b!901003))

(assert (= (and b!901003 (not res!608502)) b!901000))

(assert (= (and b!901000 (not res!608493)) b!900998))

(assert (= (and b!900995 condMapEmpty!29281) mapIsEmpty!29281))

(assert (= (and b!900995 (not condMapEmpty!29281)) mapNonEmpty!29281))

(assert (= (and mapNonEmpty!29281 ((_ is ValueCellFull!8718) mapValue!29281)) b!901007))

(assert (= (and b!900995 ((_ is ValueCellFull!8718) mapDefault!29281)) b!901006))

(assert (= b!900997 b!900995))

(assert (= start!77258 b!900997))

(declare-fun m!837425 () Bool)

(assert (=> b!900998 m!837425))

(declare-fun m!837427 () Bool)

(assert (=> start!77258 m!837427))

(declare-fun m!837429 () Bool)

(assert (=> b!901001 m!837429))

(declare-fun m!837431 () Bool)

(assert (=> b!900994 m!837431))

(declare-fun m!837433 () Bool)

(assert (=> b!900996 m!837433))

(declare-fun m!837435 () Bool)

(assert (=> b!900996 m!837435))

(declare-fun m!837437 () Bool)

(assert (=> b!900996 m!837437))

(declare-fun m!837439 () Bool)

(assert (=> b!900996 m!837439))

(assert (=> b!900996 m!837425))

(declare-fun m!837441 () Bool)

(assert (=> b!900996 m!837441))

(assert (=> b!900996 m!837425))

(declare-fun m!837443 () Bool)

(assert (=> b!900996 m!837443))

(declare-fun m!837445 () Bool)

(assert (=> b!901004 m!837445))

(declare-fun m!837447 () Bool)

(assert (=> b!901003 m!837447))

(assert (=> b!901000 m!837431))

(declare-fun m!837449 () Bool)

(assert (=> mapNonEmpty!29281 m!837449))

(declare-fun m!837451 () Bool)

(assert (=> b!901002 m!837451))

(declare-fun m!837453 () Bool)

(assert (=> b!901002 m!837453))

(declare-fun m!837455 () Bool)

(assert (=> b!900997 m!837455))

(declare-fun m!837457 () Bool)

(assert (=> b!900997 m!837457))

(check-sat (not b!901001) (not b!901003) tp_is_empty!18399 (not b!901002) (not start!77258) b_and!26415 (not b!901000) (not b!900997) (not b!901004) (not b!900996) (not b!900994) (not mapNonEmpty!29281) (not b_next!16071))
(check-sat b_and!26415 (not b_next!16071))
(get-model)

(declare-fun d!111719 () Bool)

(assert (=> d!111719 (= (array_inv!19888 (_keys!10270 thiss!1181)) (bvsge (size!25844 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900997 d!111719))

(declare-fun d!111721 () Bool)

(assert (=> d!111721 (= (array_inv!19889 (_values!5483 thiss!1181)) (bvsge (size!25845 (_values!5483 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!900997 d!111721))

(declare-fun d!111723 () Bool)

(declare-fun res!608539 () Bool)

(declare-fun e!504445 () Bool)

(assert (=> d!111723 (=> (not res!608539) (not e!504445))))

(declare-fun simpleValid!331 (LongMapFixedSize!4452) Bool)

(assert (=> d!111723 (= res!608539 (simpleValid!331 thiss!1181))))

(assert (=> d!111723 (= (valid!1693 thiss!1181) e!504445)))

(declare-fun b!901056 () Bool)

(declare-fun res!608540 () Bool)

(assert (=> b!901056 (=> (not res!608540) (not e!504445))))

(declare-fun arrayCountValidKeys!0 (array!52838 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901056 (= res!608540 (= (arrayCountValidKeys!0 (_keys!10270 thiss!1181) #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))) (_size!2281 thiss!1181)))))

(declare-fun b!901057 () Bool)

(declare-fun res!608541 () Bool)

(assert (=> b!901057 (=> (not res!608541) (not e!504445))))

(assert (=> b!901057 (= res!608541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(declare-fun b!901058 () Bool)

(assert (=> b!901058 (= e!504445 (arrayNoDuplicates!0 (_keys!10270 thiss!1181) #b00000000000000000000000000000000 Nil!17945))))

(assert (= (and d!111723 res!608539) b!901056))

(assert (= (and b!901056 res!608540) b!901057))

(assert (= (and b!901057 res!608541) b!901058))

(declare-fun m!837493 () Bool)

(assert (=> d!111723 m!837493))

(declare-fun m!837495 () Bool)

(assert (=> b!901056 m!837495))

(assert (=> b!901057 m!837429))

(assert (=> b!901058 m!837445))

(assert (=> start!77258 d!111723))

(declare-fun d!111725 () Bool)

(declare-fun e!504448 () Bool)

(assert (=> d!111725 e!504448))

(declare-fun res!608544 () Bool)

(assert (=> d!111725 (=> res!608544 e!504448)))

(declare-fun lt!407220 () SeekEntryResult!8935)

(assert (=> d!111725 (= res!608544 (not ((_ is Found!8935) lt!407220)))))

(assert (=> d!111725 (= lt!407220 (seekEntry!0 key!785 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(declare-fun lt!407219 () Unit!30578)

(declare-fun choose!1526 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 64)) Unit!30578)

(assert (=> d!111725 (= lt!407219 (choose!1526 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) key!785))))

(assert (=> d!111725 (validMask!0 (mask!26260 thiss!1181))))

(assert (=> d!111725 (= (lemmaSeekEntryGivesInRangeIndex!114 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) key!785) lt!407219)))

(declare-fun b!901061 () Bool)

(assert (=> b!901061 (= e!504448 (inRange!0 (index!38111 lt!407220) (mask!26260 thiss!1181)))))

(assert (= (and d!111725 (not res!608544)) b!901061))

(assert (=> d!111725 m!837453))

(declare-fun m!837497 () Bool)

(assert (=> d!111725 m!837497))

(assert (=> d!111725 m!837439))

(declare-fun m!837499 () Bool)

(assert (=> b!901061 m!837499))

(assert (=> b!901002 d!111725))

(declare-fun b!901074 () Bool)

(declare-fun e!504456 () SeekEntryResult!8935)

(declare-fun lt!407229 () SeekEntryResult!8935)

(assert (=> b!901074 (= e!504456 (MissingZero!8935 (index!38112 lt!407229)))))

(declare-fun b!901075 () Bool)

(declare-fun e!504457 () SeekEntryResult!8935)

(assert (=> b!901075 (= e!504457 (Found!8935 (index!38112 lt!407229)))))

(declare-fun d!111727 () Bool)

(declare-fun lt!407230 () SeekEntryResult!8935)

(assert (=> d!111727 (and (or ((_ is MissingVacant!8935) lt!407230) (not ((_ is Found!8935) lt!407230)) (and (bvsge (index!38111 lt!407230) #b00000000000000000000000000000000) (bvslt (index!38111 lt!407230) (size!25844 (_keys!10270 thiss!1181))))) (not ((_ is MissingVacant!8935) lt!407230)) (or (not ((_ is Found!8935) lt!407230)) (= (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407230)) key!785)))))

(declare-fun e!504455 () SeekEntryResult!8935)

(assert (=> d!111727 (= lt!407230 e!504455)))

(declare-fun c!95346 () Bool)

(assert (=> d!111727 (= c!95346 (and ((_ is Intermediate!8935) lt!407229) (undefined!9747 lt!407229)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52838 (_ BitVec 32)) SeekEntryResult!8935)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111727 (= lt!407229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26260 thiss!1181)) key!785 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(assert (=> d!111727 (validMask!0 (mask!26260 thiss!1181))))

(assert (=> d!111727 (= (seekEntry!0 key!785 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)) lt!407230)))

(declare-fun b!901076 () Bool)

(declare-fun c!95344 () Bool)

(declare-fun lt!407231 () (_ BitVec 64))

(assert (=> b!901076 (= c!95344 (= lt!407231 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!901076 (= e!504457 e!504456)))

(declare-fun b!901077 () Bool)

(declare-fun lt!407232 () SeekEntryResult!8935)

(assert (=> b!901077 (= e!504456 (ite ((_ is MissingVacant!8935) lt!407232) (MissingZero!8935 (index!38113 lt!407232)) lt!407232))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52838 (_ BitVec 32)) SeekEntryResult!8935)

(assert (=> b!901077 (= lt!407232 (seekKeyOrZeroReturnVacant!0 (x!76759 lt!407229) (index!38112 lt!407229) (index!38112 lt!407229) key!785 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(declare-fun b!901078 () Bool)

(assert (=> b!901078 (= e!504455 Undefined!8935)))

(declare-fun b!901079 () Bool)

(assert (=> b!901079 (= e!504455 e!504457)))

(assert (=> b!901079 (= lt!407231 (select (arr!25384 (_keys!10270 thiss!1181)) (index!38112 lt!407229)))))

(declare-fun c!95345 () Bool)

(assert (=> b!901079 (= c!95345 (= lt!407231 key!785))))

(assert (= (and d!111727 c!95346) b!901078))

(assert (= (and d!111727 (not c!95346)) b!901079))

(assert (= (and b!901079 c!95345) b!901075))

(assert (= (and b!901079 (not c!95345)) b!901076))

(assert (= (and b!901076 c!95344) b!901074))

(assert (= (and b!901076 (not c!95344)) b!901077))

(declare-fun m!837501 () Bool)

(assert (=> d!111727 m!837501))

(declare-fun m!837503 () Bool)

(assert (=> d!111727 m!837503))

(assert (=> d!111727 m!837503))

(declare-fun m!837505 () Bool)

(assert (=> d!111727 m!837505))

(assert (=> d!111727 m!837439))

(declare-fun m!837507 () Bool)

(assert (=> b!901077 m!837507))

(declare-fun m!837509 () Bool)

(assert (=> b!901079 m!837509))

(assert (=> b!901002 d!111727))

(declare-fun d!111729 () Bool)

(declare-fun e!504462 () Bool)

(assert (=> d!111729 e!504462))

(declare-fun res!608547 () Bool)

(assert (=> d!111729 (=> res!608547 e!504462)))

(declare-fun lt!407242 () Bool)

(assert (=> d!111729 (= res!608547 (not lt!407242))))

(declare-fun lt!407241 () Bool)

(assert (=> d!111729 (= lt!407242 lt!407241)))

(declare-fun lt!407244 () Unit!30578)

(declare-fun e!504463 () Unit!30578)

(assert (=> d!111729 (= lt!407244 e!504463)))

(declare-fun c!95349 () Bool)

(assert (=> d!111729 (= c!95349 lt!407241)))

(declare-fun containsKey!434 (List!17947 (_ BitVec 64)) Bool)

(assert (=> d!111729 (= lt!407241 (containsKey!434 (toList!5414 lt!407196) key!785))))

(assert (=> d!111729 (= (contains!4423 lt!407196 key!785) lt!407242)))

(declare-fun b!901086 () Bool)

(declare-fun lt!407243 () Unit!30578)

(assert (=> b!901086 (= e!504463 lt!407243)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!329 (List!17947 (_ BitVec 64)) Unit!30578)

(assert (=> b!901086 (= lt!407243 (lemmaContainsKeyImpliesGetValueByKeyDefined!329 (toList!5414 lt!407196) key!785))))

(declare-datatypes ((Option!470 0))(
  ( (Some!469 (v!11748 V!29497)) (None!468) )
))
(declare-fun isDefined!339 (Option!470) Bool)

(declare-fun getValueByKey!464 (List!17947 (_ BitVec 64)) Option!470)

(assert (=> b!901086 (isDefined!339 (getValueByKey!464 (toList!5414 lt!407196) key!785))))

(declare-fun b!901087 () Bool)

(declare-fun Unit!30580 () Unit!30578)

(assert (=> b!901087 (= e!504463 Unit!30580)))

(declare-fun b!901088 () Bool)

(assert (=> b!901088 (= e!504462 (isDefined!339 (getValueByKey!464 (toList!5414 lt!407196) key!785)))))

(assert (= (and d!111729 c!95349) b!901086))

(assert (= (and d!111729 (not c!95349)) b!901087))

(assert (= (and d!111729 (not res!608547)) b!901088))

(declare-fun m!837511 () Bool)

(assert (=> d!111729 m!837511))

(declare-fun m!837513 () Bool)

(assert (=> b!901086 m!837513))

(declare-fun m!837515 () Bool)

(assert (=> b!901086 m!837515))

(assert (=> b!901086 m!837515))

(declare-fun m!837517 () Bool)

(assert (=> b!901086 m!837517))

(assert (=> b!901088 m!837515))

(assert (=> b!901088 m!837515))

(assert (=> b!901088 m!837517))

(assert (=> b!901003 d!111729))

(declare-fun bm!40087 () Bool)

(declare-fun call!40090 () Bool)

(declare-fun c!95352 () Bool)

(assert (=> bm!40087 (= call!40090 (arrayNoDuplicates!0 (_keys!10270 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95352 (Cons!17944 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000) Nil!17945) Nil!17945)))))

(declare-fun b!901099 () Bool)

(declare-fun e!504474 () Bool)

(assert (=> b!901099 (= e!504474 call!40090)))

(declare-fun b!901100 () Bool)

(declare-fun e!504475 () Bool)

(assert (=> b!901100 (= e!504475 e!504474)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!901100 (= c!95352 (validKeyInArray!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111731 () Bool)

(declare-fun res!608554 () Bool)

(declare-fun e!504472 () Bool)

(assert (=> d!111731 (=> res!608554 e!504472)))

(assert (=> d!111731 (= res!608554 (bvsge #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(assert (=> d!111731 (= (arrayNoDuplicates!0 (_keys!10270 thiss!1181) #b00000000000000000000000000000000 Nil!17945) e!504472)))

(declare-fun b!901101 () Bool)

(assert (=> b!901101 (= e!504474 call!40090)))

(declare-fun b!901102 () Bool)

(assert (=> b!901102 (= e!504472 e!504475)))

(declare-fun res!608556 () Bool)

(assert (=> b!901102 (=> (not res!608556) (not e!504475))))

(declare-fun e!504473 () Bool)

(assert (=> b!901102 (= res!608556 (not e!504473))))

(declare-fun res!608555 () Bool)

(assert (=> b!901102 (=> (not res!608555) (not e!504473))))

(assert (=> b!901102 (= res!608555 (validKeyInArray!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901103 () Bool)

(declare-fun contains!4425 (List!17948 (_ BitVec 64)) Bool)

(assert (=> b!901103 (= e!504473 (contains!4425 Nil!17945 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111731 (not res!608554)) b!901102))

(assert (= (and b!901102 res!608555) b!901103))

(assert (= (and b!901102 res!608556) b!901100))

(assert (= (and b!901100 c!95352) b!901101))

(assert (= (and b!901100 (not c!95352)) b!901099))

(assert (= (or b!901101 b!901099) bm!40087))

(declare-fun m!837519 () Bool)

(assert (=> bm!40087 m!837519))

(declare-fun m!837521 () Bool)

(assert (=> bm!40087 m!837521))

(assert (=> b!901100 m!837519))

(assert (=> b!901100 m!837519))

(declare-fun m!837523 () Bool)

(assert (=> b!901100 m!837523))

(assert (=> b!901102 m!837519))

(assert (=> b!901102 m!837519))

(assert (=> b!901102 m!837523))

(assert (=> b!901103 m!837519))

(assert (=> b!901103 m!837519))

(declare-fun m!837525 () Bool)

(assert (=> b!901103 m!837525))

(assert (=> b!901004 d!111731))

(declare-fun d!111733 () Bool)

(assert (=> d!111733 (= (inRange!0 (index!38111 lt!407199) (mask!26260 thiss!1181)) (and (bvsge (index!38111 lt!407199) #b00000000000000000000000000000000) (bvslt (index!38111 lt!407199) (bvadd (mask!26260 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!901000 d!111733))

(assert (=> b!900994 d!111733))

(declare-fun d!111735 () Bool)

(declare-fun res!608562 () Bool)

(declare-fun e!504484 () Bool)

(assert (=> d!111735 (=> res!608562 e!504484)))

(assert (=> d!111735 (= res!608562 (bvsge #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(assert (=> d!111735 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10270 thiss!1181) (mask!26260 thiss!1181)) e!504484)))

(declare-fun b!901112 () Bool)

(declare-fun e!504482 () Bool)

(assert (=> b!901112 (= e!504484 e!504482)))

(declare-fun c!95355 () Bool)

(assert (=> b!901112 (= c!95355 (validKeyInArray!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901113 () Bool)

(declare-fun call!40093 () Bool)

(assert (=> b!901113 (= e!504482 call!40093)))

(declare-fun b!901114 () Bool)

(declare-fun e!504483 () Bool)

(assert (=> b!901114 (= e!504483 call!40093)))

(declare-fun b!901115 () Bool)

(assert (=> b!901115 (= e!504482 e!504483)))

(declare-fun lt!407252 () (_ BitVec 64))

(assert (=> b!901115 (= lt!407252 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407253 () Unit!30578)

(assert (=> b!901115 (= lt!407253 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10270 thiss!1181) lt!407252 #b00000000000000000000000000000000))))

(assert (=> b!901115 (arrayContainsKey!0 (_keys!10270 thiss!1181) lt!407252 #b00000000000000000000000000000000)))

(declare-fun lt!407251 () Unit!30578)

(assert (=> b!901115 (= lt!407251 lt!407253)))

(declare-fun res!608561 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52838 (_ BitVec 32)) SeekEntryResult!8935)

(assert (=> b!901115 (= res!608561 (= (seekEntryOrOpen!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000) (_keys!10270 thiss!1181) (mask!26260 thiss!1181)) (Found!8935 #b00000000000000000000000000000000)))))

(assert (=> b!901115 (=> (not res!608561) (not e!504483))))

(declare-fun bm!40090 () Bool)

(assert (=> bm!40090 (= call!40093 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10270 thiss!1181) (mask!26260 thiss!1181)))))

(assert (= (and d!111735 (not res!608562)) b!901112))

(assert (= (and b!901112 c!95355) b!901115))

(assert (= (and b!901112 (not c!95355)) b!901113))

(assert (= (and b!901115 res!608561) b!901114))

(assert (= (or b!901114 b!901113) bm!40090))

(assert (=> b!901112 m!837519))

(assert (=> b!901112 m!837519))

(assert (=> b!901112 m!837523))

(assert (=> b!901115 m!837519))

(declare-fun m!837527 () Bool)

(assert (=> b!901115 m!837527))

(declare-fun m!837529 () Bool)

(assert (=> b!901115 m!837529))

(assert (=> b!901115 m!837519))

(declare-fun m!837531 () Bool)

(assert (=> b!901115 m!837531))

(declare-fun m!837533 () Bool)

(assert (=> bm!40090 m!837533))

(assert (=> b!901001 d!111735))

(declare-fun d!111737 () Bool)

(assert (=> d!111737 (arrayContainsKey!0 (_keys!10270 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407256 () Unit!30578)

(declare-fun choose!13 (array!52838 (_ BitVec 64) (_ BitVec 32)) Unit!30578)

(assert (=> d!111737 (= lt!407256 (choose!13 (_keys!10270 thiss!1181) key!785 (index!38111 lt!407199)))))

(assert (=> d!111737 (bvsge (index!38111 lt!407199) #b00000000000000000000000000000000)))

(assert (=> d!111737 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10270 thiss!1181) key!785 (index!38111 lt!407199)) lt!407256)))

(declare-fun bs!25293 () Bool)

(assert (= bs!25293 d!111737))

(assert (=> bs!25293 m!837435))

(declare-fun m!837535 () Bool)

(assert (=> bs!25293 m!837535))

(assert (=> b!900996 d!111737))

(declare-fun d!111739 () Bool)

(declare-fun res!608567 () Bool)

(declare-fun e!504489 () Bool)

(assert (=> d!111739 (=> res!608567 e!504489)))

(assert (=> d!111739 (= res!608567 (= (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111739 (= (arrayContainsKey!0 (_keys!10270 thiss!1181) key!785 #b00000000000000000000000000000000) e!504489)))

(declare-fun b!901120 () Bool)

(declare-fun e!504490 () Bool)

(assert (=> b!901120 (= e!504489 e!504490)))

(declare-fun res!608568 () Bool)

(assert (=> b!901120 (=> (not res!608568) (not e!504490))))

(assert (=> b!901120 (= res!608568 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25844 (_keys!10270 thiss!1181))))))

(declare-fun b!901121 () Bool)

(assert (=> b!901121 (= e!504490 (arrayContainsKey!0 (_keys!10270 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111739 (not res!608567)) b!901120))

(assert (= (and b!901120 res!608568) b!901121))

(assert (=> d!111739 m!837519))

(declare-fun m!837537 () Bool)

(assert (=> b!901121 m!837537))

(assert (=> b!900996 d!111739))

(declare-fun d!111741 () Bool)

(declare-fun e!504491 () Bool)

(assert (=> d!111741 e!504491))

(declare-fun res!608569 () Bool)

(assert (=> d!111741 (=> res!608569 e!504491)))

(declare-fun lt!407258 () Bool)

(assert (=> d!111741 (= res!608569 (not lt!407258))))

(declare-fun lt!407257 () Bool)

(assert (=> d!111741 (= lt!407258 lt!407257)))

(declare-fun lt!407260 () Unit!30578)

(declare-fun e!504492 () Unit!30578)

(assert (=> d!111741 (= lt!407260 e!504492)))

(declare-fun c!95356 () Bool)

(assert (=> d!111741 (= c!95356 lt!407257)))

(assert (=> d!111741 (= lt!407257 (containsKey!434 (toList!5414 lt!407196) (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199))))))

(assert (=> d!111741 (= (contains!4423 lt!407196 (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199))) lt!407258)))

(declare-fun b!901122 () Bool)

(declare-fun lt!407259 () Unit!30578)

(assert (=> b!901122 (= e!504492 lt!407259)))

(assert (=> b!901122 (= lt!407259 (lemmaContainsKeyImpliesGetValueByKeyDefined!329 (toList!5414 lt!407196) (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199))))))

(assert (=> b!901122 (isDefined!339 (getValueByKey!464 (toList!5414 lt!407196) (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199))))))

(declare-fun b!901123 () Bool)

(declare-fun Unit!30581 () Unit!30578)

(assert (=> b!901123 (= e!504492 Unit!30581)))

(declare-fun b!901124 () Bool)

(assert (=> b!901124 (= e!504491 (isDefined!339 (getValueByKey!464 (toList!5414 lt!407196) (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199)))))))

(assert (= (and d!111741 c!95356) b!901122))

(assert (= (and d!111741 (not c!95356)) b!901123))

(assert (= (and d!111741 (not res!608569)) b!901124))

(assert (=> d!111741 m!837425))

(declare-fun m!837539 () Bool)

(assert (=> d!111741 m!837539))

(assert (=> b!901122 m!837425))

(declare-fun m!837541 () Bool)

(assert (=> b!901122 m!837541))

(assert (=> b!901122 m!837425))

(declare-fun m!837543 () Bool)

(assert (=> b!901122 m!837543))

(assert (=> b!901122 m!837543))

(declare-fun m!837545 () Bool)

(assert (=> b!901122 m!837545))

(assert (=> b!901124 m!837425))

(assert (=> b!901124 m!837543))

(assert (=> b!901124 m!837543))

(assert (=> b!901124 m!837545))

(assert (=> b!900996 d!111741))

(declare-fun bm!40105 () Bool)

(declare-fun call!40108 () ListLongMap!10797)

(declare-fun call!40110 () ListLongMap!10797)

(assert (=> bm!40105 (= call!40108 call!40110)))

(declare-fun b!901167 () Bool)

(declare-fun e!504524 () Bool)

(assert (=> b!901167 (= e!504524 (validKeyInArray!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40106 () Bool)

(declare-fun call!40109 () ListLongMap!10797)

(declare-fun getCurrentListMapNoExtraKeys!3302 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 32) Int) ListLongMap!10797)

(assert (=> bm!40106 (= call!40109 (getCurrentListMapNoExtraKeys!3302 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-fun bm!40107 () Bool)

(declare-fun call!40111 () ListLongMap!10797)

(declare-fun call!40112 () ListLongMap!10797)

(assert (=> bm!40107 (= call!40111 call!40112)))

(declare-fun b!901168 () Bool)

(declare-fun e!504531 () Bool)

(declare-fun lt!407319 () ListLongMap!10797)

(declare-fun apply!418 (ListLongMap!10797 (_ BitVec 64)) V!29497)

(declare-fun get!13365 (ValueCell!8718 V!29497) V!29497)

(declare-fun dynLambda!1313 (Int (_ BitVec 64)) V!29497)

(assert (=> b!901168 (= e!504531 (= (apply!418 lt!407319 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)) (get!13365 (select (arr!25385 (_values!5483 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1313 (defaultEntry!5464 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!901168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25845 (_values!5483 thiss!1181))))))

(assert (=> b!901168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(declare-fun b!901169 () Bool)

(declare-fun e!504525 () ListLongMap!10797)

(assert (=> b!901169 (= e!504525 call!40111)))

(declare-fun d!111743 () Bool)

(declare-fun e!504526 () Bool)

(assert (=> d!111743 e!504526))

(declare-fun res!608589 () Bool)

(assert (=> d!111743 (=> (not res!608589) (not e!504526))))

(assert (=> d!111743 (= res!608589 (or (bvsge #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))))

(declare-fun lt!407316 () ListLongMap!10797)

(assert (=> d!111743 (= lt!407319 lt!407316)))

(declare-fun lt!407326 () Unit!30578)

(declare-fun e!504527 () Unit!30578)

(assert (=> d!111743 (= lt!407326 e!504527)))

(declare-fun c!95369 () Bool)

(assert (=> d!111743 (= c!95369 e!504524)))

(declare-fun res!608593 () Bool)

(assert (=> d!111743 (=> (not res!608593) (not e!504524))))

(assert (=> d!111743 (= res!608593 (bvslt #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(declare-fun e!504529 () ListLongMap!10797)

(assert (=> d!111743 (= lt!407316 e!504529)))

(declare-fun c!95372 () Bool)

(assert (=> d!111743 (= c!95372 (and (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111743 (validMask!0 (mask!26260 thiss!1181))))

(assert (=> d!111743 (= (getCurrentListMap!2656 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)) lt!407319)))

(declare-fun b!901170 () Bool)

(declare-fun e!504528 () Bool)

(assert (=> b!901170 (= e!504526 e!504528)))

(declare-fun c!95374 () Bool)

(assert (=> b!901170 (= c!95374 (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!901171 () Bool)

(declare-fun Unit!30582 () Unit!30578)

(assert (=> b!901171 (= e!504527 Unit!30582)))

(declare-fun b!901172 () Bool)

(declare-fun lt!407306 () Unit!30578)

(assert (=> b!901172 (= e!504527 lt!407306)))

(declare-fun lt!407318 () ListLongMap!10797)

(assert (=> b!901172 (= lt!407318 (getCurrentListMapNoExtraKeys!3302 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-fun lt!407323 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407323 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407324 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407324 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407315 () Unit!30578)

(declare-fun addStillContains!340 (ListLongMap!10797 (_ BitVec 64) V!29497 (_ BitVec 64)) Unit!30578)

(assert (=> b!901172 (= lt!407315 (addStillContains!340 lt!407318 lt!407323 (zeroValue!5296 thiss!1181) lt!407324))))

(declare-fun +!2554 (ListLongMap!10797 tuple2!12086) ListLongMap!10797)

(assert (=> b!901172 (contains!4423 (+!2554 lt!407318 (tuple2!12087 lt!407323 (zeroValue!5296 thiss!1181))) lt!407324)))

(declare-fun lt!407309 () Unit!30578)

(assert (=> b!901172 (= lt!407309 lt!407315)))

(declare-fun lt!407314 () ListLongMap!10797)

(assert (=> b!901172 (= lt!407314 (getCurrentListMapNoExtraKeys!3302 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-fun lt!407313 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407313 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407325 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407325 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407305 () Unit!30578)

(declare-fun addApplyDifferent!340 (ListLongMap!10797 (_ BitVec 64) V!29497 (_ BitVec 64)) Unit!30578)

(assert (=> b!901172 (= lt!407305 (addApplyDifferent!340 lt!407314 lt!407313 (minValue!5296 thiss!1181) lt!407325))))

(assert (=> b!901172 (= (apply!418 (+!2554 lt!407314 (tuple2!12087 lt!407313 (minValue!5296 thiss!1181))) lt!407325) (apply!418 lt!407314 lt!407325))))

(declare-fun lt!407308 () Unit!30578)

(assert (=> b!901172 (= lt!407308 lt!407305)))

(declare-fun lt!407320 () ListLongMap!10797)

(assert (=> b!901172 (= lt!407320 (getCurrentListMapNoExtraKeys!3302 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-fun lt!407311 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407311 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407312 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407312 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407322 () Unit!30578)

(assert (=> b!901172 (= lt!407322 (addApplyDifferent!340 lt!407320 lt!407311 (zeroValue!5296 thiss!1181) lt!407312))))

(assert (=> b!901172 (= (apply!418 (+!2554 lt!407320 (tuple2!12087 lt!407311 (zeroValue!5296 thiss!1181))) lt!407312) (apply!418 lt!407320 lt!407312))))

(declare-fun lt!407317 () Unit!30578)

(assert (=> b!901172 (= lt!407317 lt!407322)))

(declare-fun lt!407310 () ListLongMap!10797)

(assert (=> b!901172 (= lt!407310 (getCurrentListMapNoExtraKeys!3302 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)))))

(declare-fun lt!407321 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407321 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407307 () (_ BitVec 64))

(assert (=> b!901172 (= lt!407307 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901172 (= lt!407306 (addApplyDifferent!340 lt!407310 lt!407321 (minValue!5296 thiss!1181) lt!407307))))

(assert (=> b!901172 (= (apply!418 (+!2554 lt!407310 (tuple2!12087 lt!407321 (minValue!5296 thiss!1181))) lt!407307) (apply!418 lt!407310 lt!407307))))

(declare-fun b!901173 () Bool)

(declare-fun e!504519 () Bool)

(assert (=> b!901173 (= e!504519 e!504531)))

(declare-fun res!608594 () Bool)

(assert (=> b!901173 (=> (not res!608594) (not e!504531))))

(assert (=> b!901173 (= res!608594 (contains!4423 lt!407319 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!901173 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(declare-fun b!901174 () Bool)

(declare-fun call!40113 () Bool)

(assert (=> b!901174 (= e!504528 (not call!40113))))

(declare-fun b!901175 () Bool)

(declare-fun c!95373 () Bool)

(assert (=> b!901175 (= c!95373 (and (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!504530 () ListLongMap!10797)

(assert (=> b!901175 (= e!504530 e!504525)))

(declare-fun b!901176 () Bool)

(assert (=> b!901176 (= e!504530 call!40108)))

(declare-fun b!901177 () Bool)

(declare-fun e!504523 () Bool)

(assert (=> b!901177 (= e!504528 e!504523)))

(declare-fun res!608596 () Bool)

(assert (=> b!901177 (= res!608596 call!40113)))

(assert (=> b!901177 (=> (not res!608596) (not e!504523))))

(declare-fun b!901178 () Bool)

(declare-fun e!504520 () Bool)

(assert (=> b!901178 (= e!504520 (= (apply!418 lt!407319 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5296 thiss!1181)))))

(declare-fun b!901179 () Bool)

(assert (=> b!901179 (= e!504525 call!40108)))

(declare-fun b!901180 () Bool)

(assert (=> b!901180 (= e!504529 e!504530)))

(declare-fun c!95371 () Bool)

(assert (=> b!901180 (= c!95371 (and (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!901181 () Bool)

(declare-fun res!608588 () Bool)

(assert (=> b!901181 (=> (not res!608588) (not e!504526))))

(assert (=> b!901181 (= res!608588 e!504519)))

(declare-fun res!608590 () Bool)

(assert (=> b!901181 (=> res!608590 e!504519)))

(declare-fun e!504522 () Bool)

(assert (=> b!901181 (= res!608590 (not e!504522))))

(declare-fun res!608595 () Bool)

(assert (=> b!901181 (=> (not res!608595) (not e!504522))))

(assert (=> b!901181 (= res!608595 (bvslt #b00000000000000000000000000000000 (size!25844 (_keys!10270 thiss!1181))))))

(declare-fun b!901182 () Bool)

(assert (=> b!901182 (= e!504523 (= (apply!418 lt!407319 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5296 thiss!1181)))))

(declare-fun bm!40108 () Bool)

(declare-fun call!40114 () Bool)

(assert (=> bm!40108 (= call!40114 (contains!4423 lt!407319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40109 () Bool)

(assert (=> bm!40109 (= call!40110 (+!2554 (ite c!95372 call!40109 (ite c!95371 call!40112 call!40111)) (ite (or c!95372 c!95371) (tuple2!12087 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5296 thiss!1181)) (tuple2!12087 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5296 thiss!1181)))))))

(declare-fun b!901183 () Bool)

(declare-fun res!608592 () Bool)

(assert (=> b!901183 (=> (not res!608592) (not e!504526))))

(declare-fun e!504521 () Bool)

(assert (=> b!901183 (= res!608592 e!504521)))

(declare-fun c!95370 () Bool)

(assert (=> b!901183 (= c!95370 (not (= (bvand (extraKeys!5192 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40110 () Bool)

(assert (=> bm!40110 (= call!40112 call!40109)))

(declare-fun b!901184 () Bool)

(assert (=> b!901184 (= e!504521 e!504520)))

(declare-fun res!608591 () Bool)

(assert (=> b!901184 (= res!608591 call!40114)))

(assert (=> b!901184 (=> (not res!608591) (not e!504520))))

(declare-fun bm!40111 () Bool)

(assert (=> bm!40111 (= call!40113 (contains!4423 lt!407319 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901185 () Bool)

(assert (=> b!901185 (= e!504522 (validKeyInArray!0 (select (arr!25384 (_keys!10270 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901186 () Bool)

(assert (=> b!901186 (= e!504521 (not call!40114))))

(declare-fun b!901187 () Bool)

(assert (=> b!901187 (= e!504529 (+!2554 call!40110 (tuple2!12087 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5296 thiss!1181))))))

(assert (= (and d!111743 c!95372) b!901187))

(assert (= (and d!111743 (not c!95372)) b!901180))

(assert (= (and b!901180 c!95371) b!901176))

(assert (= (and b!901180 (not c!95371)) b!901175))

(assert (= (and b!901175 c!95373) b!901179))

(assert (= (and b!901175 (not c!95373)) b!901169))

(assert (= (or b!901179 b!901169) bm!40107))

(assert (= (or b!901176 bm!40107) bm!40110))

(assert (= (or b!901176 b!901179) bm!40105))

(assert (= (or b!901187 bm!40110) bm!40106))

(assert (= (or b!901187 bm!40105) bm!40109))

(assert (= (and d!111743 res!608593) b!901167))

(assert (= (and d!111743 c!95369) b!901172))

(assert (= (and d!111743 (not c!95369)) b!901171))

(assert (= (and d!111743 res!608589) b!901181))

(assert (= (and b!901181 res!608595) b!901185))

(assert (= (and b!901181 (not res!608590)) b!901173))

(assert (= (and b!901173 res!608594) b!901168))

(assert (= (and b!901181 res!608588) b!901183))

(assert (= (and b!901183 c!95370) b!901184))

(assert (= (and b!901183 (not c!95370)) b!901186))

(assert (= (and b!901184 res!608591) b!901178))

(assert (= (or b!901184 b!901186) bm!40108))

(assert (= (and b!901183 res!608592) b!901170))

(assert (= (and b!901170 c!95374) b!901177))

(assert (= (and b!901170 (not c!95374)) b!901174))

(assert (= (and b!901177 res!608596) b!901182))

(assert (= (or b!901177 b!901174) bm!40111))

(declare-fun b_lambda!13057 () Bool)

(assert (=> (not b_lambda!13057) (not b!901168)))

(declare-fun t!25316 () Bool)

(declare-fun tb!5217 () Bool)

(assert (=> (and b!900997 (= (defaultEntry!5464 thiss!1181) (defaultEntry!5464 thiss!1181)) t!25316) tb!5217))

(declare-fun result!10207 () Bool)

(assert (=> tb!5217 (= result!10207 tp_is_empty!18399)))

(assert (=> b!901168 t!25316))

(declare-fun b_and!26419 () Bool)

(assert (= b_and!26415 (and (=> t!25316 result!10207) b_and!26419)))

(assert (=> d!111743 m!837439))

(declare-fun m!837547 () Bool)

(assert (=> b!901187 m!837547))

(declare-fun m!837549 () Bool)

(assert (=> bm!40106 m!837549))

(declare-fun m!837551 () Bool)

(assert (=> b!901172 m!837551))

(assert (=> b!901172 m!837519))

(declare-fun m!837553 () Bool)

(assert (=> b!901172 m!837553))

(declare-fun m!837555 () Bool)

(assert (=> b!901172 m!837555))

(declare-fun m!837557 () Bool)

(assert (=> b!901172 m!837557))

(declare-fun m!837559 () Bool)

(assert (=> b!901172 m!837559))

(declare-fun m!837561 () Bool)

(assert (=> b!901172 m!837561))

(declare-fun m!837563 () Bool)

(assert (=> b!901172 m!837563))

(declare-fun m!837565 () Bool)

(assert (=> b!901172 m!837565))

(declare-fun m!837567 () Bool)

(assert (=> b!901172 m!837567))

(assert (=> b!901172 m!837563))

(declare-fun m!837569 () Bool)

(assert (=> b!901172 m!837569))

(assert (=> b!901172 m!837569))

(declare-fun m!837571 () Bool)

(assert (=> b!901172 m!837571))

(declare-fun m!837573 () Bool)

(assert (=> b!901172 m!837573))

(assert (=> b!901172 m!837557))

(declare-fun m!837575 () Bool)

(assert (=> b!901172 m!837575))

(assert (=> b!901172 m!837573))

(declare-fun m!837577 () Bool)

(assert (=> b!901172 m!837577))

(declare-fun m!837579 () Bool)

(assert (=> b!901172 m!837579))

(assert (=> b!901172 m!837549))

(assert (=> b!901185 m!837519))

(assert (=> b!901185 m!837519))

(assert (=> b!901185 m!837523))

(declare-fun m!837581 () Bool)

(assert (=> b!901168 m!837581))

(assert (=> b!901168 m!837519))

(declare-fun m!837583 () Bool)

(assert (=> b!901168 m!837583))

(assert (=> b!901168 m!837519))

(declare-fun m!837585 () Bool)

(assert (=> b!901168 m!837585))

(assert (=> b!901168 m!837581))

(assert (=> b!901168 m!837585))

(declare-fun m!837587 () Bool)

(assert (=> b!901168 m!837587))

(declare-fun m!837589 () Bool)

(assert (=> bm!40108 m!837589))

(assert (=> b!901173 m!837519))

(assert (=> b!901173 m!837519))

(declare-fun m!837591 () Bool)

(assert (=> b!901173 m!837591))

(assert (=> b!901167 m!837519))

(assert (=> b!901167 m!837519))

(assert (=> b!901167 m!837523))

(declare-fun m!837593 () Bool)

(assert (=> bm!40109 m!837593))

(declare-fun m!837595 () Bool)

(assert (=> b!901182 m!837595))

(declare-fun m!837597 () Bool)

(assert (=> b!901178 m!837597))

(declare-fun m!837599 () Bool)

(assert (=> bm!40111 m!837599))

(assert (=> b!900996 d!111743))

(declare-fun d!111745 () Bool)

(declare-fun e!504534 () Bool)

(assert (=> d!111745 e!504534))

(declare-fun res!608599 () Bool)

(assert (=> d!111745 (=> (not res!608599) (not e!504534))))

(assert (=> d!111745 (= res!608599 (and (bvsge (index!38111 lt!407199) #b00000000000000000000000000000000) (bvslt (index!38111 lt!407199) (size!25844 (_keys!10270 thiss!1181)))))))

(declare-fun lt!407329 () Unit!30578)

(declare-fun choose!1527 (array!52838 array!52840 (_ BitVec 32) (_ BitVec 32) V!29497 V!29497 (_ BitVec 32) Int) Unit!30578)

(assert (=> d!111745 (= lt!407329 (choose!1527 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) (index!38111 lt!407199) (defaultEntry!5464 thiss!1181)))))

(assert (=> d!111745 (validMask!0 (mask!26260 thiss!1181))))

(assert (=> d!111745 (= (lemmaValidKeyInArrayIsInListMap!249 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) (index!38111 lt!407199) (defaultEntry!5464 thiss!1181)) lt!407329)))

(declare-fun b!901192 () Bool)

(assert (=> b!901192 (= e!504534 (contains!4423 (getCurrentListMap!2656 (_keys!10270 thiss!1181) (_values!5483 thiss!1181) (mask!26260 thiss!1181) (extraKeys!5192 thiss!1181) (zeroValue!5296 thiss!1181) (minValue!5296 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5464 thiss!1181)) (select (arr!25384 (_keys!10270 thiss!1181)) (index!38111 lt!407199))))))

(assert (= (and d!111745 res!608599) b!901192))

(declare-fun m!837601 () Bool)

(assert (=> d!111745 m!837601))

(assert (=> d!111745 m!837439))

(assert (=> b!901192 m!837443))

(assert (=> b!901192 m!837425))

(assert (=> b!901192 m!837443))

(assert (=> b!901192 m!837425))

(declare-fun m!837603 () Bool)

(assert (=> b!901192 m!837603))

(assert (=> b!900996 d!111745))

(declare-fun d!111747 () Bool)

(assert (=> d!111747 (= (validMask!0 (mask!26260 thiss!1181)) (and (or (= (mask!26260 thiss!1181) #b00000000000000000000000000000111) (= (mask!26260 thiss!1181) #b00000000000000000000000000001111) (= (mask!26260 thiss!1181) #b00000000000000000000000000011111) (= (mask!26260 thiss!1181) #b00000000000000000000000000111111) (= (mask!26260 thiss!1181) #b00000000000000000000000001111111) (= (mask!26260 thiss!1181) #b00000000000000000000000011111111) (= (mask!26260 thiss!1181) #b00000000000000000000000111111111) (= (mask!26260 thiss!1181) #b00000000000000000000001111111111) (= (mask!26260 thiss!1181) #b00000000000000000000011111111111) (= (mask!26260 thiss!1181) #b00000000000000000000111111111111) (= (mask!26260 thiss!1181) #b00000000000000000001111111111111) (= (mask!26260 thiss!1181) #b00000000000000000011111111111111) (= (mask!26260 thiss!1181) #b00000000000000000111111111111111) (= (mask!26260 thiss!1181) #b00000000000000001111111111111111) (= (mask!26260 thiss!1181) #b00000000000000011111111111111111) (= (mask!26260 thiss!1181) #b00000000000000111111111111111111) (= (mask!26260 thiss!1181) #b00000000000001111111111111111111) (= (mask!26260 thiss!1181) #b00000000000011111111111111111111) (= (mask!26260 thiss!1181) #b00000000000111111111111111111111) (= (mask!26260 thiss!1181) #b00000000001111111111111111111111) (= (mask!26260 thiss!1181) #b00000000011111111111111111111111) (= (mask!26260 thiss!1181) #b00000000111111111111111111111111) (= (mask!26260 thiss!1181) #b00000001111111111111111111111111) (= (mask!26260 thiss!1181) #b00000011111111111111111111111111) (= (mask!26260 thiss!1181) #b00000111111111111111111111111111) (= (mask!26260 thiss!1181) #b00001111111111111111111111111111) (= (mask!26260 thiss!1181) #b00011111111111111111111111111111) (= (mask!26260 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26260 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!900996 d!111747))

(declare-fun condMapEmpty!29287 () Bool)

(declare-fun mapDefault!29287 () ValueCell!8718)

(assert (=> mapNonEmpty!29281 (= condMapEmpty!29287 (= mapRest!29281 ((as const (Array (_ BitVec 32) ValueCell!8718)) mapDefault!29287)))))

(declare-fun e!504539 () Bool)

(declare-fun mapRes!29287 () Bool)

(assert (=> mapNonEmpty!29281 (= tp!56310 (and e!504539 mapRes!29287))))

(declare-fun b!901199 () Bool)

(declare-fun e!504540 () Bool)

(assert (=> b!901199 (= e!504540 tp_is_empty!18399)))

(declare-fun mapIsEmpty!29287 () Bool)

(assert (=> mapIsEmpty!29287 mapRes!29287))

(declare-fun mapNonEmpty!29287 () Bool)

(declare-fun tp!56320 () Bool)

(assert (=> mapNonEmpty!29287 (= mapRes!29287 (and tp!56320 e!504540))))

(declare-fun mapRest!29287 () (Array (_ BitVec 32) ValueCell!8718))

(declare-fun mapValue!29287 () ValueCell!8718)

(declare-fun mapKey!29287 () (_ BitVec 32))

(assert (=> mapNonEmpty!29287 (= mapRest!29281 (store mapRest!29287 mapKey!29287 mapValue!29287))))

(declare-fun b!901200 () Bool)

(assert (=> b!901200 (= e!504539 tp_is_empty!18399)))

(assert (= (and mapNonEmpty!29281 condMapEmpty!29287) mapIsEmpty!29287))

(assert (= (and mapNonEmpty!29281 (not condMapEmpty!29287)) mapNonEmpty!29287))

(assert (= (and mapNonEmpty!29287 ((_ is ValueCellFull!8718) mapValue!29287)) b!901199))

(assert (= (and mapNonEmpty!29281 ((_ is ValueCellFull!8718) mapDefault!29287)) b!901200))

(declare-fun m!837605 () Bool)

(assert (=> mapNonEmpty!29287 m!837605))

(declare-fun b_lambda!13059 () Bool)

(assert (= b_lambda!13057 (or (and b!900997 b_free!16071) b_lambda!13059)))

(check-sat (not b!901086) (not bm!40087) (not mapNonEmpty!29287) (not b!901167) (not b!901185) (not b!901077) (not d!111737) (not d!111725) (not d!111723) (not b!901088) (not b!901173) (not d!111745) (not b!901192) (not b!901115) (not b!901058) (not b!901124) (not bm!40106) (not b!901100) (not b!901102) (not b!901057) (not b!901103) (not b!901172) (not b_lambda!13059) (not d!111729) (not bm!40108) (not b!901187) (not b!901061) tp_is_empty!18399 (not b!901121) (not b!901112) (not b!901168) (not d!111743) (not bm!40109) (not b!901122) (not d!111741) (not b_next!16071) (not b!901182) (not d!111727) (not bm!40111) (not b!901178) (not bm!40090) (not b!901056) b_and!26419)
(check-sat b_and!26419 (not b_next!16071))
