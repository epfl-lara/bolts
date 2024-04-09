; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81436 () Bool)

(assert start!81436)

(declare-fun b!951635 () Bool)

(declare-fun b_free!18279 () Bool)

(declare-fun b_next!18279 () Bool)

(assert (=> b!951635 (= b_free!18279 (not b_next!18279))))

(declare-fun tp!63452 () Bool)

(declare-fun b_and!29769 () Bool)

(assert (=> b!951635 (= tp!63452 b_and!29769)))

(declare-fun mapIsEmpty!33111 () Bool)

(declare-fun mapRes!33111 () Bool)

(assert (=> mapIsEmpty!33111 mapRes!33111))

(declare-fun mapNonEmpty!33111 () Bool)

(declare-fun tp!63453 () Bool)

(declare-fun e!535937 () Bool)

(assert (=> mapNonEmpty!33111 (= mapRes!33111 (and tp!63453 e!535937))))

(declare-fun mapKey!33111 () (_ BitVec 32))

(declare-datatypes ((V!32681 0))(
  ( (V!32682 (val!10444 Int)) )
))
(declare-datatypes ((ValueCell!9912 0))(
  ( (ValueCellFull!9912 (v!12993 V!32681)) (EmptyCell!9912) )
))
(declare-fun mapRest!33111 () (Array (_ BitVec 32) ValueCell!9912))

(declare-fun mapValue!33111 () ValueCell!9912)

(declare-datatypes ((array!57626 0))(
  ( (array!57627 (arr!27703 (Array (_ BitVec 32) ValueCell!9912)) (size!28182 (_ BitVec 32))) )
))
(declare-datatypes ((array!57628 0))(
  ( (array!57629 (arr!27704 (Array (_ BitVec 32) (_ BitVec 64))) (size!28183 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4974 0))(
  ( (LongMapFixedSize!4975 (defaultEntry!5812 Int) (mask!27636 (_ BitVec 32)) (extraKeys!5544 (_ BitVec 32)) (zeroValue!5648 V!32681) (minValue!5648 V!32681) (_size!2542 (_ BitVec 32)) (_keys!10755 array!57628) (_values!5835 array!57626) (_vacant!2542 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4974)

(assert (=> mapNonEmpty!33111 (= (arr!27703 (_values!5835 thiss!1141)) (store mapRest!33111 mapKey!33111 mapValue!33111))))

(declare-fun tp_is_empty!20787 () Bool)

(declare-fun e!535938 () Bool)

(declare-fun e!535939 () Bool)

(declare-fun array_inv!21446 (array!57628) Bool)

(declare-fun array_inv!21447 (array!57626) Bool)

(assert (=> b!951635 (= e!535938 (and tp!63452 tp_is_empty!20787 (array_inv!21446 (_keys!10755 thiss!1141)) (array_inv!21447 (_values!5835 thiss!1141)) e!535939))))

(declare-fun b!951636 () Bool)

(declare-fun res!637799 () Bool)

(declare-fun e!535936 () Bool)

(assert (=> b!951636 (=> (not res!637799) (not e!535936))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9144 0))(
  ( (MissingZero!9144 (index!38946 (_ BitVec 32))) (Found!9144 (index!38947 (_ BitVec 32))) (Intermediate!9144 (undefined!9956 Bool) (index!38948 (_ BitVec 32)) (x!81871 (_ BitVec 32))) (Undefined!9144) (MissingVacant!9144 (index!38949 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57628 (_ BitVec 32)) SeekEntryResult!9144)

(assert (=> b!951636 (= res!637799 (not ((_ is Found!9144) (seekEntry!0 key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))))

(declare-fun b!951637 () Bool)

(declare-fun e!535935 () Bool)

(assert (=> b!951637 (= e!535936 (not e!535935))))

(declare-fun res!637800 () Bool)

(assert (=> b!951637 (=> res!637800 e!535935)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951637 (= res!637800 (not (validMask!0 (mask!27636 thiss!1141))))))

(declare-fun lt!428724 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57628 (_ BitVec 32)) Bool)

(assert (=> b!951637 (arrayForallSeekEntryOrOpenFound!0 lt!428724 (_keys!10755 thiss!1141) (mask!27636 thiss!1141))))

(declare-datatypes ((Unit!32026 0))(
  ( (Unit!32027) )
))
(declare-fun lt!428725 () Unit!32026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32026)

(assert (=> b!951637 (= lt!428725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10755 thiss!1141) (mask!27636 thiss!1141) #b00000000000000000000000000000000 lt!428724))))

(declare-fun arrayScanForKey!0 (array!57628 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951637 (= lt!428724 (arrayScanForKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951637 (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428726 () Unit!32026)

(declare-fun lemmaKeyInListMapIsInArray!336 (array!57628 array!57626 (_ BitVec 32) (_ BitVec 32) V!32681 V!32681 (_ BitVec 64) Int) Unit!32026)

(assert (=> b!951637 (= lt!428726 (lemmaKeyInListMapIsInArray!336 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) key!756 (defaultEntry!5812 thiss!1141)))))

(declare-fun b!951638 () Bool)

(declare-fun res!637802 () Bool)

(assert (=> b!951638 (=> (not res!637802) (not e!535936))))

(assert (=> b!951638 (= res!637802 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951639 () Bool)

(assert (=> b!951639 (= e!535935 (= (size!28183 (_keys!10755 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27636 thiss!1141))))))

(declare-fun b!951640 () Bool)

(declare-fun e!535934 () Bool)

(assert (=> b!951640 (= e!535934 tp_is_empty!20787)))

(declare-fun res!637801 () Bool)

(assert (=> start!81436 (=> (not res!637801) (not e!535936))))

(declare-fun valid!1864 (LongMapFixedSize!4974) Bool)

(assert (=> start!81436 (= res!637801 (valid!1864 thiss!1141))))

(assert (=> start!81436 e!535936))

(assert (=> start!81436 e!535938))

(assert (=> start!81436 true))

(declare-fun b!951641 () Bool)

(assert (=> b!951641 (= e!535937 tp_is_empty!20787)))

(declare-fun b!951642 () Bool)

(assert (=> b!951642 (= e!535939 (and e!535934 mapRes!33111))))

(declare-fun condMapEmpty!33111 () Bool)

(declare-fun mapDefault!33111 () ValueCell!9912)

(assert (=> b!951642 (= condMapEmpty!33111 (= (arr!27703 (_values!5835 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9912)) mapDefault!33111)))))

(declare-fun b!951643 () Bool)

(declare-fun res!637803 () Bool)

(assert (=> b!951643 (=> (not res!637803) (not e!535936))))

(declare-datatypes ((tuple2!13670 0))(
  ( (tuple2!13671 (_1!6845 (_ BitVec 64)) (_2!6845 V!32681)) )
))
(declare-datatypes ((List!19489 0))(
  ( (Nil!19486) (Cons!19485 (h!20646 tuple2!13670) (t!27848 List!19489)) )
))
(declare-datatypes ((ListLongMap!12381 0))(
  ( (ListLongMap!12382 (toList!6206 List!19489)) )
))
(declare-fun contains!5250 (ListLongMap!12381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3391 (array!57628 array!57626 (_ BitVec 32) (_ BitVec 32) V!32681 V!32681 (_ BitVec 32) Int) ListLongMap!12381)

(assert (=> b!951643 (= res!637803 (contains!5250 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)) key!756))))

(assert (= (and start!81436 res!637801) b!951638))

(assert (= (and b!951638 res!637802) b!951636))

(assert (= (and b!951636 res!637799) b!951643))

(assert (= (and b!951643 res!637803) b!951637))

(assert (= (and b!951637 (not res!637800)) b!951639))

(assert (= (and b!951642 condMapEmpty!33111) mapIsEmpty!33111))

(assert (= (and b!951642 (not condMapEmpty!33111)) mapNonEmpty!33111))

(assert (= (and mapNonEmpty!33111 ((_ is ValueCellFull!9912) mapValue!33111)) b!951641))

(assert (= (and b!951642 ((_ is ValueCellFull!9912) mapDefault!33111)) b!951640))

(assert (= b!951635 b!951642))

(assert (= start!81436 b!951635))

(declare-fun m!883937 () Bool)

(assert (=> mapNonEmpty!33111 m!883937))

(declare-fun m!883939 () Bool)

(assert (=> b!951643 m!883939))

(assert (=> b!951643 m!883939))

(declare-fun m!883941 () Bool)

(assert (=> b!951643 m!883941))

(declare-fun m!883943 () Bool)

(assert (=> b!951637 m!883943))

(declare-fun m!883945 () Bool)

(assert (=> b!951637 m!883945))

(declare-fun m!883947 () Bool)

(assert (=> b!951637 m!883947))

(declare-fun m!883949 () Bool)

(assert (=> b!951637 m!883949))

(declare-fun m!883951 () Bool)

(assert (=> b!951637 m!883951))

(declare-fun m!883953 () Bool)

(assert (=> b!951637 m!883953))

(declare-fun m!883955 () Bool)

(assert (=> b!951635 m!883955))

(declare-fun m!883957 () Bool)

(assert (=> b!951635 m!883957))

(declare-fun m!883959 () Bool)

(assert (=> b!951636 m!883959))

(declare-fun m!883961 () Bool)

(assert (=> start!81436 m!883961))

(check-sat (not b!951636) (not b!951635) tp_is_empty!20787 (not b!951643) (not b_next!18279) (not start!81436) (not mapNonEmpty!33111) (not b!951637) b_and!29769)
(check-sat b_and!29769 (not b_next!18279))
(get-model)

(declare-fun b!951683 () Bool)

(declare-fun e!535968 () SeekEntryResult!9144)

(declare-fun e!535967 () SeekEntryResult!9144)

(assert (=> b!951683 (= e!535968 e!535967)))

(declare-fun lt!428747 () (_ BitVec 64))

(declare-fun lt!428746 () SeekEntryResult!9144)

(assert (=> b!951683 (= lt!428747 (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428746)))))

(declare-fun c!99424 () Bool)

(assert (=> b!951683 (= c!99424 (= lt!428747 key!756))))

(declare-fun b!951684 () Bool)

(declare-fun c!99423 () Bool)

(assert (=> b!951684 (= c!99423 (= lt!428747 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!535969 () SeekEntryResult!9144)

(assert (=> b!951684 (= e!535967 e!535969)))

(declare-fun b!951685 () Bool)

(declare-fun lt!428745 () SeekEntryResult!9144)

(assert (=> b!951685 (= e!535969 (ite ((_ is MissingVacant!9144) lt!428745) (MissingZero!9144 (index!38949 lt!428745)) lt!428745))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57628 (_ BitVec 32)) SeekEntryResult!9144)

(assert (=> b!951685 (= lt!428745 (seekKeyOrZeroReturnVacant!0 (x!81871 lt!428746) (index!38948 lt!428746) (index!38948 lt!428746) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun d!115307 () Bool)

(declare-fun lt!428744 () SeekEntryResult!9144)

(assert (=> d!115307 (and (or ((_ is MissingVacant!9144) lt!428744) (not ((_ is Found!9144) lt!428744)) (and (bvsge (index!38947 lt!428744) #b00000000000000000000000000000000) (bvslt (index!38947 lt!428744) (size!28183 (_keys!10755 thiss!1141))))) (not ((_ is MissingVacant!9144) lt!428744)) (or (not ((_ is Found!9144) lt!428744)) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38947 lt!428744)) key!756)))))

(assert (=> d!115307 (= lt!428744 e!535968)))

(declare-fun c!99425 () Bool)

(assert (=> d!115307 (= c!99425 (and ((_ is Intermediate!9144) lt!428746) (undefined!9956 lt!428746)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57628 (_ BitVec 32)) SeekEntryResult!9144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115307 (= lt!428746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27636 thiss!1141)) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(assert (=> d!115307 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115307 (= (seekEntry!0 key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) lt!428744)))

(declare-fun b!951686 () Bool)

(assert (=> b!951686 (= e!535968 Undefined!9144)))

(declare-fun b!951687 () Bool)

(assert (=> b!951687 (= e!535969 (MissingZero!9144 (index!38948 lt!428746)))))

(declare-fun b!951688 () Bool)

(assert (=> b!951688 (= e!535967 (Found!9144 (index!38948 lt!428746)))))

(assert (= (and d!115307 c!99425) b!951686))

(assert (= (and d!115307 (not c!99425)) b!951683))

(assert (= (and b!951683 c!99424) b!951688))

(assert (= (and b!951683 (not c!99424)) b!951684))

(assert (= (and b!951684 c!99423) b!951687))

(assert (= (and b!951684 (not c!99423)) b!951685))

(declare-fun m!883989 () Bool)

(assert (=> b!951683 m!883989))

(declare-fun m!883991 () Bool)

(assert (=> b!951685 m!883991))

(declare-fun m!883993 () Bool)

(assert (=> d!115307 m!883993))

(declare-fun m!883995 () Bool)

(assert (=> d!115307 m!883995))

(assert (=> d!115307 m!883995))

(declare-fun m!883997 () Bool)

(assert (=> d!115307 m!883997))

(assert (=> d!115307 m!883949))

(assert (=> b!951636 d!115307))

(declare-fun d!115309 () Bool)

(assert (=> d!115309 (= (array_inv!21446 (_keys!10755 thiss!1141)) (bvsge (size!28183 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951635 d!115309))

(declare-fun d!115311 () Bool)

(assert (=> d!115311 (= (array_inv!21447 (_values!5835 thiss!1141)) (bvsge (size!28182 (_values!5835 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951635 d!115311))

(declare-fun d!115313 () Bool)

(declare-fun res!637825 () Bool)

(declare-fun e!535972 () Bool)

(assert (=> d!115313 (=> (not res!637825) (not e!535972))))

(declare-fun simpleValid!379 (LongMapFixedSize!4974) Bool)

(assert (=> d!115313 (= res!637825 (simpleValid!379 thiss!1141))))

(assert (=> d!115313 (= (valid!1864 thiss!1141) e!535972)))

(declare-fun b!951695 () Bool)

(declare-fun res!637826 () Bool)

(assert (=> b!951695 (=> (not res!637826) (not e!535972))))

(declare-fun arrayCountValidKeys!0 (array!57628 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951695 (= res!637826 (= (arrayCountValidKeys!0 (_keys!10755 thiss!1141) #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))) (_size!2542 thiss!1141)))))

(declare-fun b!951696 () Bool)

(declare-fun res!637827 () Bool)

(assert (=> b!951696 (=> (not res!637827) (not e!535972))))

(assert (=> b!951696 (= res!637827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951697 () Bool)

(declare-datatypes ((List!19490 0))(
  ( (Nil!19487) (Cons!19486 (h!20647 (_ BitVec 64)) (t!27851 List!19490)) )
))
(declare-fun arrayNoDuplicates!0 (array!57628 (_ BitVec 32) List!19490) Bool)

(assert (=> b!951697 (= e!535972 (arrayNoDuplicates!0 (_keys!10755 thiss!1141) #b00000000000000000000000000000000 Nil!19487))))

(assert (= (and d!115313 res!637825) b!951695))

(assert (= (and b!951695 res!637826) b!951696))

(assert (= (and b!951696 res!637827) b!951697))

(declare-fun m!883999 () Bool)

(assert (=> d!115313 m!883999))

(declare-fun m!884001 () Bool)

(assert (=> b!951695 m!884001))

(declare-fun m!884003 () Bool)

(assert (=> b!951696 m!884003))

(declare-fun m!884005 () Bool)

(assert (=> b!951697 m!884005))

(assert (=> start!81436 d!115313))

(declare-fun d!115315 () Bool)

(assert (=> d!115315 (arrayForallSeekEntryOrOpenFound!0 lt!428724 (_keys!10755 thiss!1141) (mask!27636 thiss!1141))))

(declare-fun lt!428750 () Unit!32026)

(declare-fun choose!38 (array!57628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32026)

(assert (=> d!115315 (= lt!428750 (choose!38 (_keys!10755 thiss!1141) (mask!27636 thiss!1141) #b00000000000000000000000000000000 lt!428724))))

(assert (=> d!115315 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115315 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10755 thiss!1141) (mask!27636 thiss!1141) #b00000000000000000000000000000000 lt!428724) lt!428750)))

(declare-fun bs!26734 () Bool)

(assert (= bs!26734 d!115315))

(assert (=> bs!26734 m!883947))

(declare-fun m!884007 () Bool)

(assert (=> bs!26734 m!884007))

(assert (=> bs!26734 m!883949))

(assert (=> b!951637 d!115315))

(declare-fun d!115317 () Bool)

(declare-fun res!637832 () Bool)

(declare-fun e!535977 () Bool)

(assert (=> d!115317 (=> res!637832 e!535977)))

(assert (=> d!115317 (= res!637832 (= (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115317 (= (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000) e!535977)))

(declare-fun b!951702 () Bool)

(declare-fun e!535978 () Bool)

(assert (=> b!951702 (= e!535977 e!535978)))

(declare-fun res!637833 () Bool)

(assert (=> b!951702 (=> (not res!637833) (not e!535978))))

(assert (=> b!951702 (= res!637833 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951703 () Bool)

(assert (=> b!951703 (= e!535978 (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115317 (not res!637832)) b!951702))

(assert (= (and b!951702 res!637833) b!951703))

(declare-fun m!884009 () Bool)

(assert (=> d!115317 m!884009))

(declare-fun m!884011 () Bool)

(assert (=> b!951703 m!884011))

(assert (=> b!951637 d!115317))

(declare-fun d!115319 () Bool)

(declare-fun e!535981 () Bool)

(assert (=> d!115319 e!535981))

(declare-fun c!99428 () Bool)

(assert (=> d!115319 (= c!99428 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428753 () Unit!32026)

(declare-fun choose!1601 (array!57628 array!57626 (_ BitVec 32) (_ BitVec 32) V!32681 V!32681 (_ BitVec 64) Int) Unit!32026)

(assert (=> d!115319 (= lt!428753 (choose!1601 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) key!756 (defaultEntry!5812 thiss!1141)))))

(assert (=> d!115319 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115319 (= (lemmaKeyInListMapIsInArray!336 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) key!756 (defaultEntry!5812 thiss!1141)) lt!428753)))

(declare-fun b!951708 () Bool)

(assert (=> b!951708 (= e!535981 (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!951709 () Bool)

(assert (=> b!951709 (= e!535981 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115319 c!99428) b!951708))

(assert (= (and d!115319 (not c!99428)) b!951709))

(declare-fun m!884013 () Bool)

(assert (=> d!115319 m!884013))

(assert (=> d!115319 m!883949))

(assert (=> b!951708 m!883953))

(assert (=> b!951637 d!115319))

(declare-fun d!115321 () Bool)

(declare-fun lt!428756 () (_ BitVec 32))

(assert (=> d!115321 (and (or (bvslt lt!428756 #b00000000000000000000000000000000) (bvsge lt!428756 (size!28183 (_keys!10755 thiss!1141))) (and (bvsge lt!428756 #b00000000000000000000000000000000) (bvslt lt!428756 (size!28183 (_keys!10755 thiss!1141))))) (bvsge lt!428756 #b00000000000000000000000000000000) (bvslt lt!428756 (size!28183 (_keys!10755 thiss!1141))) (= (select (arr!27704 (_keys!10755 thiss!1141)) lt!428756) key!756))))

(declare-fun e!535984 () (_ BitVec 32))

(assert (=> d!115321 (= lt!428756 e!535984)))

(declare-fun c!99431 () Bool)

(assert (=> d!115321 (= c!99431 (= (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))) (bvslt (size!28183 (_keys!10755 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115321 (= (arrayScanForKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428756)))

(declare-fun b!951714 () Bool)

(assert (=> b!951714 (= e!535984 #b00000000000000000000000000000000)))

(declare-fun b!951715 () Bool)

(assert (=> b!951715 (= e!535984 (arrayScanForKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115321 c!99431) b!951714))

(assert (= (and d!115321 (not c!99431)) b!951715))

(declare-fun m!884015 () Bool)

(assert (=> d!115321 m!884015))

(assert (=> d!115321 m!884009))

(declare-fun m!884017 () Bool)

(assert (=> b!951715 m!884017))

(assert (=> b!951637 d!115321))

(declare-fun bm!41514 () Bool)

(declare-fun call!41517 () Bool)

(assert (=> bm!41514 (= call!41517 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!428724 #b00000000000000000000000000000001) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951725 () Bool)

(declare-fun e!535992 () Bool)

(declare-fun e!535993 () Bool)

(assert (=> b!951725 (= e!535992 e!535993)))

(declare-fun c!99434 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!951725 (= c!99434 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724)))))

(declare-fun b!951726 () Bool)

(declare-fun e!535991 () Bool)

(assert (=> b!951726 (= e!535991 call!41517)))

(declare-fun b!951727 () Bool)

(assert (=> b!951727 (= e!535993 call!41517)))

(declare-fun b!951724 () Bool)

(assert (=> b!951724 (= e!535993 e!535991)))

(declare-fun lt!428764 () (_ BitVec 64))

(assert (=> b!951724 (= lt!428764 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724))))

(declare-fun lt!428763 () Unit!32026)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57628 (_ BitVec 64) (_ BitVec 32)) Unit!32026)

(assert (=> b!951724 (= lt!428763 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10755 thiss!1141) lt!428764 lt!428724))))

(assert (=> b!951724 (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428764 #b00000000000000000000000000000000)))

(declare-fun lt!428765 () Unit!32026)

(assert (=> b!951724 (= lt!428765 lt!428763)))

(declare-fun res!637839 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57628 (_ BitVec 32)) SeekEntryResult!9144)

(assert (=> b!951724 (= res!637839 (= (seekEntryOrOpen!0 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) (Found!9144 lt!428724)))))

(assert (=> b!951724 (=> (not res!637839) (not e!535991))))

(declare-fun d!115323 () Bool)

(declare-fun res!637838 () Bool)

(assert (=> d!115323 (=> res!637838 e!535992)))

(assert (=> d!115323 (= res!637838 (bvsge lt!428724 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115323 (= (arrayForallSeekEntryOrOpenFound!0 lt!428724 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) e!535992)))

(assert (= (and d!115323 (not res!637838)) b!951725))

(assert (= (and b!951725 c!99434) b!951724))

(assert (= (and b!951725 (not c!99434)) b!951727))

(assert (= (and b!951724 res!637839) b!951726))

(assert (= (or b!951726 b!951727) bm!41514))

(declare-fun m!884019 () Bool)

(assert (=> bm!41514 m!884019))

(declare-fun m!884021 () Bool)

(assert (=> b!951725 m!884021))

(assert (=> b!951725 m!884021))

(declare-fun m!884023 () Bool)

(assert (=> b!951725 m!884023))

(assert (=> b!951724 m!884021))

(declare-fun m!884025 () Bool)

(assert (=> b!951724 m!884025))

(declare-fun m!884027 () Bool)

(assert (=> b!951724 m!884027))

(assert (=> b!951724 m!884021))

(declare-fun m!884029 () Bool)

(assert (=> b!951724 m!884029))

(assert (=> b!951637 d!115323))

(declare-fun d!115325 () Bool)

(assert (=> d!115325 (= (validMask!0 (mask!27636 thiss!1141)) (and (or (= (mask!27636 thiss!1141) #b00000000000000000000000000000111) (= (mask!27636 thiss!1141) #b00000000000000000000000000001111) (= (mask!27636 thiss!1141) #b00000000000000000000000000011111) (= (mask!27636 thiss!1141) #b00000000000000000000000000111111) (= (mask!27636 thiss!1141) #b00000000000000000000000001111111) (= (mask!27636 thiss!1141) #b00000000000000000000000011111111) (= (mask!27636 thiss!1141) #b00000000000000000000000111111111) (= (mask!27636 thiss!1141) #b00000000000000000000001111111111) (= (mask!27636 thiss!1141) #b00000000000000000000011111111111) (= (mask!27636 thiss!1141) #b00000000000000000000111111111111) (= (mask!27636 thiss!1141) #b00000000000000000001111111111111) (= (mask!27636 thiss!1141) #b00000000000000000011111111111111) (= (mask!27636 thiss!1141) #b00000000000000000111111111111111) (= (mask!27636 thiss!1141) #b00000000000000001111111111111111) (= (mask!27636 thiss!1141) #b00000000000000011111111111111111) (= (mask!27636 thiss!1141) #b00000000000000111111111111111111) (= (mask!27636 thiss!1141) #b00000000000001111111111111111111) (= (mask!27636 thiss!1141) #b00000000000011111111111111111111) (= (mask!27636 thiss!1141) #b00000000000111111111111111111111) (= (mask!27636 thiss!1141) #b00000000001111111111111111111111) (= (mask!27636 thiss!1141) #b00000000011111111111111111111111) (= (mask!27636 thiss!1141) #b00000000111111111111111111111111) (= (mask!27636 thiss!1141) #b00000001111111111111111111111111) (= (mask!27636 thiss!1141) #b00000011111111111111111111111111) (= (mask!27636 thiss!1141) #b00000111111111111111111111111111) (= (mask!27636 thiss!1141) #b00001111111111111111111111111111) (= (mask!27636 thiss!1141) #b00011111111111111111111111111111) (= (mask!27636 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27636 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!951637 d!115325))

(declare-fun d!115327 () Bool)

(declare-fun e!535999 () Bool)

(assert (=> d!115327 e!535999))

(declare-fun res!637842 () Bool)

(assert (=> d!115327 (=> res!637842 e!535999)))

(declare-fun lt!428776 () Bool)

(assert (=> d!115327 (= res!637842 (not lt!428776))))

(declare-fun lt!428777 () Bool)

(assert (=> d!115327 (= lt!428776 lt!428777)))

(declare-fun lt!428774 () Unit!32026)

(declare-fun e!535998 () Unit!32026)

(assert (=> d!115327 (= lt!428774 e!535998)))

(declare-fun c!99437 () Bool)

(assert (=> d!115327 (= c!99437 lt!428777)))

(declare-fun containsKey!471 (List!19489 (_ BitVec 64)) Bool)

(assert (=> d!115327 (= lt!428777 (containsKey!471 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(assert (=> d!115327 (= (contains!5250 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)) key!756) lt!428776)))

(declare-fun b!951734 () Bool)

(declare-fun lt!428775 () Unit!32026)

(assert (=> b!951734 (= e!535998 lt!428775)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!366 (List!19489 (_ BitVec 64)) Unit!32026)

(assert (=> b!951734 (= lt!428775 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(declare-datatypes ((Option!512 0))(
  ( (Some!511 (v!12995 V!32681)) (None!510) )
))
(declare-fun isDefined!376 (Option!512) Bool)

(declare-fun getValueByKey!506 (List!19489 (_ BitVec 64)) Option!512)

(assert (=> b!951734 (isDefined!376 (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(declare-fun b!951735 () Bool)

(declare-fun Unit!32028 () Unit!32026)

(assert (=> b!951735 (= e!535998 Unit!32028)))

(declare-fun b!951736 () Bool)

(assert (=> b!951736 (= e!535999 (isDefined!376 (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756)))))

(assert (= (and d!115327 c!99437) b!951734))

(assert (= (and d!115327 (not c!99437)) b!951735))

(assert (= (and d!115327 (not res!637842)) b!951736))

(declare-fun m!884031 () Bool)

(assert (=> d!115327 m!884031))

(declare-fun m!884033 () Bool)

(assert (=> b!951734 m!884033))

(declare-fun m!884035 () Bool)

(assert (=> b!951734 m!884035))

(assert (=> b!951734 m!884035))

(declare-fun m!884037 () Bool)

(assert (=> b!951734 m!884037))

(assert (=> b!951736 m!884035))

(assert (=> b!951736 m!884035))

(assert (=> b!951736 m!884037))

(assert (=> b!951643 d!115327))

(declare-fun b!951779 () Bool)

(declare-fun e!536028 () Unit!32026)

(declare-fun Unit!32029 () Unit!32026)

(assert (=> b!951779 (= e!536028 Unit!32029)))

(declare-fun b!951780 () Bool)

(declare-fun e!536036 () ListLongMap!12381)

(declare-fun call!41537 () ListLongMap!12381)

(assert (=> b!951780 (= e!536036 call!41537)))

(declare-fun b!951781 () Bool)

(declare-fun call!41534 () ListLongMap!12381)

(assert (=> b!951781 (= e!536036 call!41534)))

(declare-fun bm!41529 () Bool)

(declare-fun call!41536 () Bool)

(declare-fun lt!428836 () ListLongMap!12381)

(assert (=> bm!41529 (= call!41536 (contains!5250 lt!428836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951782 () Bool)

(declare-fun e!536032 () ListLongMap!12381)

(declare-fun call!41533 () ListLongMap!12381)

(declare-fun +!2833 (ListLongMap!12381 tuple2!13670) ListLongMap!12381)

(assert (=> b!951782 (= e!536032 (+!2833 call!41533 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))

(declare-fun b!951783 () Bool)

(declare-fun e!536029 () Bool)

(assert (=> b!951783 (= e!536029 (not call!41536))))

(declare-fun bm!41530 () Bool)

(declare-fun call!41532 () ListLongMap!12381)

(assert (=> bm!41530 (= call!41534 call!41532)))

(declare-fun b!951784 () Bool)

(declare-fun e!536033 () Bool)

(declare-fun apply!919 (ListLongMap!12381 (_ BitVec 64)) V!32681)

(assert (=> b!951784 (= e!536033 (= (apply!919 lt!428836 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5648 thiss!1141)))))

(declare-fun bm!41532 () Bool)

(assert (=> bm!41532 (= call!41537 call!41533)))

(declare-fun b!951785 () Bool)

(declare-fun e!536026 () Bool)

(assert (=> b!951785 (= e!536026 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951786 () Bool)

(declare-fun e!536038 () Bool)

(assert (=> b!951786 (= e!536038 e!536033)))

(declare-fun res!637863 () Bool)

(declare-fun call!41535 () Bool)

(assert (=> b!951786 (= res!637863 call!41535)))

(assert (=> b!951786 (=> (not res!637863) (not e!536033))))

(declare-fun b!951787 () Bool)

(declare-fun e!536037 () ListLongMap!12381)

(assert (=> b!951787 (= e!536037 call!41537)))

(declare-fun bm!41533 () Bool)

(declare-fun call!41538 () ListLongMap!12381)

(assert (=> bm!41533 (= call!41532 call!41538)))

(declare-fun b!951788 () Bool)

(declare-fun e!536031 () Bool)

(declare-fun get!14577 (ValueCell!9912 V!32681) V!32681)

(declare-fun dynLambda!1672 (Int (_ BitVec 64)) V!32681)

(assert (=> b!951788 (= e!536031 (= (apply!919 lt!428836 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)) (get!14577 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951788 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28182 (_values!5835 thiss!1141))))))

(assert (=> b!951788 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951789 () Bool)

(declare-fun lt!428827 () Unit!32026)

(assert (=> b!951789 (= e!536028 lt!428827)))

(declare-fun lt!428822 () ListLongMap!12381)

(declare-fun getCurrentListMapNoExtraKeys!3339 (array!57628 array!57626 (_ BitVec 32) (_ BitVec 32) V!32681 V!32681 (_ BitVec 32) Int) ListLongMap!12381)

(assert (=> b!951789 (= lt!428822 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))

(declare-fun lt!428833 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428824 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428824 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428835 () Unit!32026)

(declare-fun addStillContains!589 (ListLongMap!12381 (_ BitVec 64) V!32681 (_ BitVec 64)) Unit!32026)

(assert (=> b!951789 (= lt!428835 (addStillContains!589 lt!428822 lt!428833 (zeroValue!5648 thiss!1141) lt!428824))))

(assert (=> b!951789 (contains!5250 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) lt!428824)))

(declare-fun lt!428823 () Unit!32026)

(assert (=> b!951789 (= lt!428823 lt!428835)))

(declare-fun lt!428831 () ListLongMap!12381)

(assert (=> b!951789 (= lt!428831 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))

(declare-fun lt!428839 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428839 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428826 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428826 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428840 () Unit!32026)

(declare-fun addApplyDifferent!463 (ListLongMap!12381 (_ BitVec 64) V!32681 (_ BitVec 64)) Unit!32026)

(assert (=> b!951789 (= lt!428840 (addApplyDifferent!463 lt!428831 lt!428839 (minValue!5648 thiss!1141) lt!428826))))

(assert (=> b!951789 (= (apply!919 (+!2833 lt!428831 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) lt!428826) (apply!919 lt!428831 lt!428826))))

(declare-fun lt!428828 () Unit!32026)

(assert (=> b!951789 (= lt!428828 lt!428840)))

(declare-fun lt!428842 () ListLongMap!12381)

(assert (=> b!951789 (= lt!428842 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))

(declare-fun lt!428841 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428841 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428832 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428832 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428830 () Unit!32026)

(assert (=> b!951789 (= lt!428830 (addApplyDifferent!463 lt!428842 lt!428841 (zeroValue!5648 thiss!1141) lt!428832))))

(assert (=> b!951789 (= (apply!919 (+!2833 lt!428842 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) lt!428832) (apply!919 lt!428842 lt!428832))))

(declare-fun lt!428825 () Unit!32026)

(assert (=> b!951789 (= lt!428825 lt!428830)))

(declare-fun lt!428838 () ListLongMap!12381)

(assert (=> b!951789 (= lt!428838 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))

(declare-fun lt!428834 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428834 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428843 () (_ BitVec 64))

(assert (=> b!951789 (= lt!428843 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951789 (= lt!428827 (addApplyDifferent!463 lt!428838 lt!428834 (minValue!5648 thiss!1141) lt!428843))))

(assert (=> b!951789 (= (apply!919 (+!2833 lt!428838 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) lt!428843) (apply!919 lt!428838 lt!428843))))

(declare-fun b!951790 () Bool)

(assert (=> b!951790 (= e!536038 (not call!41535))))

(declare-fun b!951791 () Bool)

(declare-fun res!637869 () Bool)

(declare-fun e!536027 () Bool)

(assert (=> b!951791 (=> (not res!637869) (not e!536027))))

(assert (=> b!951791 (= res!637869 e!536029)))

(declare-fun c!99454 () Bool)

(assert (=> b!951791 (= c!99454 (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!951792 () Bool)

(declare-fun c!99452 () Bool)

(assert (=> b!951792 (= c!99452 (and (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!951792 (= e!536037 e!536036)))

(declare-fun b!951793 () Bool)

(declare-fun e!536035 () Bool)

(assert (=> b!951793 (= e!536035 e!536031)))

(declare-fun res!637868 () Bool)

(assert (=> b!951793 (=> (not res!637868) (not e!536031))))

(assert (=> b!951793 (= res!637868 (contains!5250 lt!428836 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951793 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun bm!41534 () Bool)

(declare-fun c!99453 () Bool)

(declare-fun c!99451 () Bool)

(assert (=> bm!41534 (= call!41533 (+!2833 (ite c!99451 call!41538 (ite c!99453 call!41532 call!41534)) (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(declare-fun b!951794 () Bool)

(declare-fun e!536030 () Bool)

(assert (=> b!951794 (= e!536030 (= (apply!919 lt!428836 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5648 thiss!1141)))))

(declare-fun b!951795 () Bool)

(declare-fun e!536034 () Bool)

(assert (=> b!951795 (= e!536034 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!115329 () Bool)

(assert (=> d!115329 e!536027))

(declare-fun res!637861 () Bool)

(assert (=> d!115329 (=> (not res!637861) (not e!536027))))

(assert (=> d!115329 (= res!637861 (or (bvsge #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))))

(declare-fun lt!428837 () ListLongMap!12381)

(assert (=> d!115329 (= lt!428836 lt!428837)))

(declare-fun lt!428829 () Unit!32026)

(assert (=> d!115329 (= lt!428829 e!536028)))

(declare-fun c!99455 () Bool)

(assert (=> d!115329 (= c!99455 e!536026)))

(declare-fun res!637864 () Bool)

(assert (=> d!115329 (=> (not res!637864) (not e!536026))))

(assert (=> d!115329 (= res!637864 (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115329 (= lt!428837 e!536032)))

(assert (=> d!115329 (= c!99451 (and (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115329 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115329 (= (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)) lt!428836)))

(declare-fun bm!41531 () Bool)

(assert (=> bm!41531 (= call!41535 (contains!5250 lt!428836 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41535 () Bool)

(assert (=> bm!41535 (= call!41538 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))

(declare-fun b!951796 () Bool)

(assert (=> b!951796 (= e!536029 e!536030)))

(declare-fun res!637865 () Bool)

(assert (=> b!951796 (= res!637865 call!41536)))

(assert (=> b!951796 (=> (not res!637865) (not e!536030))))

(declare-fun b!951797 () Bool)

(declare-fun res!637867 () Bool)

(assert (=> b!951797 (=> (not res!637867) (not e!536027))))

(assert (=> b!951797 (= res!637867 e!536035)))

(declare-fun res!637866 () Bool)

(assert (=> b!951797 (=> res!637866 e!536035)))

(assert (=> b!951797 (= res!637866 (not e!536034))))

(declare-fun res!637862 () Bool)

(assert (=> b!951797 (=> (not res!637862) (not e!536034))))

(assert (=> b!951797 (= res!637862 (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951798 () Bool)

(assert (=> b!951798 (= e!536032 e!536037)))

(assert (=> b!951798 (= c!99453 (and (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!951799 () Bool)

(assert (=> b!951799 (= e!536027 e!536038)))

(declare-fun c!99450 () Bool)

(assert (=> b!951799 (= c!99450 (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!115329 c!99451) b!951782))

(assert (= (and d!115329 (not c!99451)) b!951798))

(assert (= (and b!951798 c!99453) b!951787))

(assert (= (and b!951798 (not c!99453)) b!951792))

(assert (= (and b!951792 c!99452) b!951780))

(assert (= (and b!951792 (not c!99452)) b!951781))

(assert (= (or b!951780 b!951781) bm!41530))

(assert (= (or b!951787 bm!41530) bm!41533))

(assert (= (or b!951787 b!951780) bm!41532))

(assert (= (or b!951782 bm!41533) bm!41535))

(assert (= (or b!951782 bm!41532) bm!41534))

(assert (= (and d!115329 res!637864) b!951785))

(assert (= (and d!115329 c!99455) b!951789))

(assert (= (and d!115329 (not c!99455)) b!951779))

(assert (= (and d!115329 res!637861) b!951797))

(assert (= (and b!951797 res!637862) b!951795))

(assert (= (and b!951797 (not res!637866)) b!951793))

(assert (= (and b!951793 res!637868) b!951788))

(assert (= (and b!951797 res!637867) b!951791))

(assert (= (and b!951791 c!99454) b!951796))

(assert (= (and b!951791 (not c!99454)) b!951783))

(assert (= (and b!951796 res!637865) b!951794))

(assert (= (or b!951796 b!951783) bm!41529))

(assert (= (and b!951791 res!637869) b!951799))

(assert (= (and b!951799 c!99450) b!951786))

(assert (= (and b!951799 (not c!99450)) b!951790))

(assert (= (and b!951786 res!637863) b!951784))

(assert (= (or b!951786 b!951790) bm!41531))

(declare-fun b_lambda!14429 () Bool)

(assert (=> (not b_lambda!14429) (not b!951788)))

(declare-fun t!27850 () Bool)

(declare-fun tb!6211 () Bool)

(assert (=> (and b!951635 (= (defaultEntry!5812 thiss!1141) (defaultEntry!5812 thiss!1141)) t!27850) tb!6211))

(declare-fun result!12339 () Bool)

(assert (=> tb!6211 (= result!12339 tp_is_empty!20787)))

(assert (=> b!951788 t!27850))

(declare-fun b_and!29773 () Bool)

(assert (= b_and!29769 (and (=> t!27850 result!12339) b_and!29773)))

(declare-fun m!884039 () Bool)

(assert (=> b!951789 m!884039))

(declare-fun m!884041 () Bool)

(assert (=> b!951789 m!884041))

(declare-fun m!884043 () Bool)

(assert (=> b!951789 m!884043))

(declare-fun m!884045 () Bool)

(assert (=> b!951789 m!884045))

(declare-fun m!884047 () Bool)

(assert (=> b!951789 m!884047))

(declare-fun m!884049 () Bool)

(assert (=> b!951789 m!884049))

(declare-fun m!884051 () Bool)

(assert (=> b!951789 m!884051))

(declare-fun m!884053 () Bool)

(assert (=> b!951789 m!884053))

(assert (=> b!951789 m!884051))

(declare-fun m!884055 () Bool)

(assert (=> b!951789 m!884055))

(assert (=> b!951789 m!884043))

(declare-fun m!884057 () Bool)

(assert (=> b!951789 m!884057))

(assert (=> b!951789 m!884047))

(declare-fun m!884059 () Bool)

(assert (=> b!951789 m!884059))

(assert (=> b!951789 m!884039))

(declare-fun m!884061 () Bool)

(assert (=> b!951789 m!884061))

(declare-fun m!884063 () Bool)

(assert (=> b!951789 m!884063))

(assert (=> b!951789 m!884009))

(declare-fun m!884065 () Bool)

(assert (=> b!951789 m!884065))

(declare-fun m!884067 () Bool)

(assert (=> b!951789 m!884067))

(declare-fun m!884069 () Bool)

(assert (=> b!951789 m!884069))

(declare-fun m!884071 () Bool)

(assert (=> bm!41529 m!884071))

(assert (=> d!115329 m!883949))

(assert (=> b!951795 m!884009))

(assert (=> b!951795 m!884009))

(declare-fun m!884073 () Bool)

(assert (=> b!951795 m!884073))

(declare-fun m!884075 () Bool)

(assert (=> bm!41531 m!884075))

(assert (=> bm!41535 m!884067))

(assert (=> b!951788 m!884009))

(declare-fun m!884077 () Bool)

(assert (=> b!951788 m!884077))

(assert (=> b!951788 m!884009))

(declare-fun m!884079 () Bool)

(assert (=> b!951788 m!884079))

(declare-fun m!884081 () Bool)

(assert (=> b!951788 m!884081))

(assert (=> b!951788 m!884077))

(declare-fun m!884083 () Bool)

(assert (=> b!951788 m!884083))

(assert (=> b!951788 m!884081))

(declare-fun m!884085 () Bool)

(assert (=> bm!41534 m!884085))

(declare-fun m!884087 () Bool)

(assert (=> b!951784 m!884087))

(assert (=> b!951785 m!884009))

(assert (=> b!951785 m!884009))

(assert (=> b!951785 m!884073))

(declare-fun m!884089 () Bool)

(assert (=> b!951782 m!884089))

(assert (=> b!951793 m!884009))

(assert (=> b!951793 m!884009))

(declare-fun m!884091 () Bool)

(assert (=> b!951793 m!884091))

(declare-fun m!884093 () Bool)

(assert (=> b!951794 m!884093))

(assert (=> b!951643 d!115329))

(declare-fun condMapEmpty!33117 () Bool)

(declare-fun mapDefault!33117 () ValueCell!9912)

(assert (=> mapNonEmpty!33111 (= condMapEmpty!33117 (= mapRest!33111 ((as const (Array (_ BitVec 32) ValueCell!9912)) mapDefault!33117)))))

(declare-fun e!536044 () Bool)

(declare-fun mapRes!33117 () Bool)

(assert (=> mapNonEmpty!33111 (= tp!63453 (and e!536044 mapRes!33117))))

(declare-fun mapNonEmpty!33117 () Bool)

(declare-fun tp!63462 () Bool)

(declare-fun e!536043 () Bool)

(assert (=> mapNonEmpty!33117 (= mapRes!33117 (and tp!63462 e!536043))))

(declare-fun mapValue!33117 () ValueCell!9912)

(declare-fun mapKey!33117 () (_ BitVec 32))

(declare-fun mapRest!33117 () (Array (_ BitVec 32) ValueCell!9912))

(assert (=> mapNonEmpty!33117 (= mapRest!33111 (store mapRest!33117 mapKey!33117 mapValue!33117))))

(declare-fun b!951808 () Bool)

(assert (=> b!951808 (= e!536043 tp_is_empty!20787)))

(declare-fun b!951809 () Bool)

(assert (=> b!951809 (= e!536044 tp_is_empty!20787)))

(declare-fun mapIsEmpty!33117 () Bool)

(assert (=> mapIsEmpty!33117 mapRes!33117))

(assert (= (and mapNonEmpty!33111 condMapEmpty!33117) mapIsEmpty!33117))

(assert (= (and mapNonEmpty!33111 (not condMapEmpty!33117)) mapNonEmpty!33117))

(assert (= (and mapNonEmpty!33117 ((_ is ValueCellFull!9912) mapValue!33117)) b!951808))

(assert (= (and mapNonEmpty!33111 ((_ is ValueCellFull!9912) mapDefault!33117)) b!951809))

(declare-fun m!884095 () Bool)

(assert (=> mapNonEmpty!33117 m!884095))

(declare-fun b_lambda!14431 () Bool)

(assert (= b_lambda!14429 (or (and b!951635 b_free!18279) b_lambda!14431)))

(check-sat (not mapNonEmpty!33117) (not bm!41535) (not d!115329) (not bm!41534) (not d!115315) (not b!951785) (not b!951788) (not b!951784) (not b!951703) (not d!115327) (not b!951697) (not b_next!18279) (not b!951685) (not bm!41531) b_and!29773 (not b_lambda!14431) (not d!115307) (not d!115313) (not b!951696) tp_is_empty!20787 (not b!951708) (not b!951793) (not b!951794) (not bm!41529) (not b!951724) (not b!951695) (not bm!41514) (not b!951725) (not b!951715) (not b!951782) (not d!115319) (not b!951795) (not b!951789) (not b!951736) (not b!951734))
(check-sat b_and!29773 (not b_next!18279))
(get-model)

(declare-fun d!115331 () Bool)

(declare-fun get!14578 (Option!512) V!32681)

(assert (=> d!115331 (= (apply!919 lt!428836 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14578 (getValueByKey!506 (toList!6206 lt!428836) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26735 () Bool)

(assert (= bs!26735 d!115331))

(declare-fun m!884097 () Bool)

(assert (=> bs!26735 m!884097))

(assert (=> bs!26735 m!884097))

(declare-fun m!884099 () Bool)

(assert (=> bs!26735 m!884099))

(assert (=> b!951784 d!115331))

(declare-fun b!951821 () Bool)

(declare-fun e!536056 () Bool)

(declare-fun e!536053 () Bool)

(assert (=> b!951821 (= e!536056 e!536053)))

(declare-fun c!99458 () Bool)

(assert (=> b!951821 (= c!99458 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41538 () Bool)

(declare-fun call!41541 () Bool)

(assert (=> bm!41538 (= call!41541 (arrayNoDuplicates!0 (_keys!10755 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99458 (Cons!19486 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) Nil!19487) Nil!19487)))))

(declare-fun b!951822 () Bool)

(assert (=> b!951822 (= e!536053 call!41541)))

(declare-fun b!951823 () Bool)

(declare-fun e!536054 () Bool)

(assert (=> b!951823 (= e!536054 e!536056)))

(declare-fun res!637876 () Bool)

(assert (=> b!951823 (=> (not res!637876) (not e!536056))))

(declare-fun e!536055 () Bool)

(assert (=> b!951823 (= res!637876 (not e!536055))))

(declare-fun res!637878 () Bool)

(assert (=> b!951823 (=> (not res!637878) (not e!536055))))

(assert (=> b!951823 (= res!637878 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951824 () Bool)

(declare-fun contains!5251 (List!19490 (_ BitVec 64)) Bool)

(assert (=> b!951824 (= e!536055 (contains!5251 Nil!19487 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!115333 () Bool)

(declare-fun res!637877 () Bool)

(assert (=> d!115333 (=> res!637877 e!536054)))

(assert (=> d!115333 (= res!637877 (bvsge #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115333 (= (arrayNoDuplicates!0 (_keys!10755 thiss!1141) #b00000000000000000000000000000000 Nil!19487) e!536054)))

(declare-fun b!951820 () Bool)

(assert (=> b!951820 (= e!536053 call!41541)))

(assert (= (and d!115333 (not res!637877)) b!951823))

(assert (= (and b!951823 res!637878) b!951824))

(assert (= (and b!951823 res!637876) b!951821))

(assert (= (and b!951821 c!99458) b!951820))

(assert (= (and b!951821 (not c!99458)) b!951822))

(assert (= (or b!951820 b!951822) bm!41538))

(assert (=> b!951821 m!884009))

(assert (=> b!951821 m!884009))

(assert (=> b!951821 m!884073))

(assert (=> bm!41538 m!884009))

(declare-fun m!884101 () Bool)

(assert (=> bm!41538 m!884101))

(assert (=> b!951823 m!884009))

(assert (=> b!951823 m!884009))

(assert (=> b!951823 m!884073))

(assert (=> b!951824 m!884009))

(assert (=> b!951824 m!884009))

(declare-fun m!884103 () Bool)

(assert (=> b!951824 m!884103))

(assert (=> b!951697 d!115333))

(declare-fun d!115335 () Bool)

(declare-fun e!536058 () Bool)

(assert (=> d!115335 e!536058))

(declare-fun res!637879 () Bool)

(assert (=> d!115335 (=> res!637879 e!536058)))

(declare-fun lt!428846 () Bool)

(assert (=> d!115335 (= res!637879 (not lt!428846))))

(declare-fun lt!428847 () Bool)

(assert (=> d!115335 (= lt!428846 lt!428847)))

(declare-fun lt!428844 () Unit!32026)

(declare-fun e!536057 () Unit!32026)

(assert (=> d!115335 (= lt!428844 e!536057)))

(declare-fun c!99459 () Bool)

(assert (=> d!115335 (= c!99459 lt!428847)))

(assert (=> d!115335 (= lt!428847 (containsKey!471 (toList!6206 lt!428836) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!115335 (= (contains!5250 lt!428836 #b1000000000000000000000000000000000000000000000000000000000000000) lt!428846)))

(declare-fun b!951825 () Bool)

(declare-fun lt!428845 () Unit!32026)

(assert (=> b!951825 (= e!536057 lt!428845)))

(assert (=> b!951825 (= lt!428845 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 lt!428836) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!951825 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951826 () Bool)

(declare-fun Unit!32030 () Unit!32026)

(assert (=> b!951826 (= e!536057 Unit!32030)))

(declare-fun b!951827 () Bool)

(assert (=> b!951827 (= e!536058 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115335 c!99459) b!951825))

(assert (= (and d!115335 (not c!99459)) b!951826))

(assert (= (and d!115335 (not res!637879)) b!951827))

(declare-fun m!884105 () Bool)

(assert (=> d!115335 m!884105))

(declare-fun m!884107 () Bool)

(assert (=> b!951825 m!884107))

(assert (=> b!951825 m!884097))

(assert (=> b!951825 m!884097))

(declare-fun m!884109 () Bool)

(assert (=> b!951825 m!884109))

(assert (=> b!951827 m!884097))

(assert (=> b!951827 m!884097))

(assert (=> b!951827 m!884109))

(assert (=> bm!41531 d!115335))

(declare-fun d!115337 () Bool)

(declare-fun isEmpty!719 (Option!512) Bool)

(assert (=> d!115337 (= (isDefined!376 (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756)) (not (isEmpty!719 (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))))

(declare-fun bs!26736 () Bool)

(assert (= bs!26736 d!115337))

(assert (=> bs!26736 m!884035))

(declare-fun m!884111 () Bool)

(assert (=> bs!26736 m!884111))

(assert (=> b!951736 d!115337))

(declare-fun b!951836 () Bool)

(declare-fun e!536063 () Option!512)

(assert (=> b!951836 (= e!536063 (Some!511 (_2!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))))))

(declare-fun d!115339 () Bool)

(declare-fun c!99464 () Bool)

(assert (=> d!115339 (= c!99464 (and ((_ is Cons!19485) (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) (= (_1!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) key!756)))))

(assert (=> d!115339 (= (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756) e!536063)))

(declare-fun b!951838 () Bool)

(declare-fun e!536064 () Option!512)

(assert (=> b!951838 (= e!536064 (getValueByKey!506 (t!27848 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) key!756))))

(declare-fun b!951839 () Bool)

(assert (=> b!951839 (= e!536064 None!510)))

(declare-fun b!951837 () Bool)

(assert (=> b!951837 (= e!536063 e!536064)))

(declare-fun c!99465 () Bool)

(assert (=> b!951837 (= c!99465 (and ((_ is Cons!19485) (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) (not (= (_1!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) key!756))))))

(assert (= (and d!115339 c!99464) b!951836))

(assert (= (and d!115339 (not c!99464)) b!951837))

(assert (= (and b!951837 c!99465) b!951838))

(assert (= (and b!951837 (not c!99465)) b!951839))

(declare-fun m!884113 () Bool)

(assert (=> b!951838 m!884113))

(assert (=> b!951736 d!115339))

(declare-fun d!115341 () Bool)

(declare-fun e!536067 () Bool)

(assert (=> d!115341 e!536067))

(declare-fun res!637885 () Bool)

(assert (=> d!115341 (=> (not res!637885) (not e!536067))))

(declare-fun lt!428859 () ListLongMap!12381)

(assert (=> d!115341 (= res!637885 (contains!5250 lt!428859 (_1!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(declare-fun lt!428858 () List!19489)

(assert (=> d!115341 (= lt!428859 (ListLongMap!12382 lt!428858))))

(declare-fun lt!428856 () Unit!32026)

(declare-fun lt!428857 () Unit!32026)

(assert (=> d!115341 (= lt!428856 lt!428857)))

(assert (=> d!115341 (= (getValueByKey!506 lt!428858 (_1!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!268 (List!19489 (_ BitVec 64) V!32681) Unit!32026)

(assert (=> d!115341 (= lt!428857 (lemmaContainsTupThenGetReturnValue!268 lt!428858 (_1!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(declare-fun insertStrictlySorted!324 (List!19489 (_ BitVec 64) V!32681) List!19489)

(assert (=> d!115341 (= lt!428858 (insertStrictlySorted!324 (toList!6206 call!41533) (_1!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(assert (=> d!115341 (= (+!2833 call!41533 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))) lt!428859)))

(declare-fun b!951844 () Bool)

(declare-fun res!637884 () Bool)

(assert (=> b!951844 (=> (not res!637884) (not e!536067))))

(assert (=> b!951844 (= res!637884 (= (getValueByKey!506 (toList!6206 lt!428859) (_1!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))))

(declare-fun b!951845 () Bool)

(declare-fun contains!5252 (List!19489 tuple2!13670) Bool)

(assert (=> b!951845 (= e!536067 (contains!5252 (toList!6206 lt!428859) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))

(assert (= (and d!115341 res!637885) b!951844))

(assert (= (and b!951844 res!637884) b!951845))

(declare-fun m!884115 () Bool)

(assert (=> d!115341 m!884115))

(declare-fun m!884117 () Bool)

(assert (=> d!115341 m!884117))

(declare-fun m!884119 () Bool)

(assert (=> d!115341 m!884119))

(declare-fun m!884121 () Bool)

(assert (=> d!115341 m!884121))

(declare-fun m!884123 () Bool)

(assert (=> b!951844 m!884123))

(declare-fun m!884125 () Bool)

(assert (=> b!951845 m!884125))

(assert (=> b!951782 d!115341))

(declare-fun b!951856 () Bool)

(declare-fun res!637895 () Bool)

(declare-fun e!536070 () Bool)

(assert (=> b!951856 (=> (not res!637895) (not e!536070))))

(declare-fun size!28186 (LongMapFixedSize!4974) (_ BitVec 32))

(assert (=> b!951856 (= res!637895 (= (size!28186 thiss!1141) (bvadd (_size!2542 thiss!1141) (bvsdiv (bvadd (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!951854 () Bool)

(declare-fun res!637894 () Bool)

(assert (=> b!951854 (=> (not res!637894) (not e!536070))))

(assert (=> b!951854 (= res!637894 (and (= (size!28182 (_values!5835 thiss!1141)) (bvadd (mask!27636 thiss!1141) #b00000000000000000000000000000001)) (= (size!28183 (_keys!10755 thiss!1141)) (size!28182 (_values!5835 thiss!1141))) (bvsge (_size!2542 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2542 thiss!1141) (bvadd (mask!27636 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!951857 () Bool)

(assert (=> b!951857 (= e!536070 (and (bvsge (extraKeys!5544 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5544 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2542 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!951855 () Bool)

(declare-fun res!637896 () Bool)

(assert (=> b!951855 (=> (not res!637896) (not e!536070))))

(assert (=> b!951855 (= res!637896 (bvsge (size!28186 thiss!1141) (_size!2542 thiss!1141)))))

(declare-fun d!115343 () Bool)

(declare-fun res!637897 () Bool)

(assert (=> d!115343 (=> (not res!637897) (not e!536070))))

(assert (=> d!115343 (= res!637897 (validMask!0 (mask!27636 thiss!1141)))))

(assert (=> d!115343 (= (simpleValid!379 thiss!1141) e!536070)))

(assert (= (and d!115343 res!637897) b!951854))

(assert (= (and b!951854 res!637894) b!951855))

(assert (= (and b!951855 res!637896) b!951856))

(assert (= (and b!951856 res!637895) b!951857))

(declare-fun m!884127 () Bool)

(assert (=> b!951856 m!884127))

(assert (=> b!951855 m!884127))

(assert (=> d!115343 m!883949))

(assert (=> d!115313 d!115343))

(declare-fun b!951866 () Bool)

(declare-fun e!536076 () (_ BitVec 32))

(declare-fun e!536075 () (_ BitVec 32))

(assert (=> b!951866 (= e!536076 e!536075)))

(declare-fun c!99471 () Bool)

(assert (=> b!951866 (= c!99471 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41541 () Bool)

(declare-fun call!41544 () (_ BitVec 32))

(assert (=> bm!41541 (= call!41544 (arrayCountValidKeys!0 (_keys!10755 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951867 () Bool)

(assert (=> b!951867 (= e!536075 (bvadd #b00000000000000000000000000000001 call!41544))))

(declare-fun b!951868 () Bool)

(assert (=> b!951868 (= e!536075 call!41544)))

(declare-fun d!115345 () Bool)

(declare-fun lt!428862 () (_ BitVec 32))

(assert (=> d!115345 (and (bvsge lt!428862 #b00000000000000000000000000000000) (bvsle lt!428862 (bvsub (size!28183 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!115345 (= lt!428862 e!536076)))

(declare-fun c!99470 () Bool)

(assert (=> d!115345 (= c!99470 (bvsge #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115345 (and (bvsle #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28183 (_keys!10755 thiss!1141)) (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115345 (= (arrayCountValidKeys!0 (_keys!10755 thiss!1141) #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))) lt!428862)))

(declare-fun b!951869 () Bool)

(assert (=> b!951869 (= e!536076 #b00000000000000000000000000000000)))

(assert (= (and d!115345 c!99470) b!951869))

(assert (= (and d!115345 (not c!99470)) b!951866))

(assert (= (and b!951866 c!99471) b!951867))

(assert (= (and b!951866 (not c!99471)) b!951868))

(assert (= (or b!951867 b!951868) bm!41541))

(assert (=> b!951866 m!884009))

(assert (=> b!951866 m!884009))

(assert (=> b!951866 m!884073))

(declare-fun m!884129 () Bool)

(assert (=> bm!41541 m!884129))

(assert (=> b!951695 d!115345))

(declare-fun bm!41542 () Bool)

(declare-fun call!41545 () Bool)

(assert (=> bm!41542 (= call!41545 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951871 () Bool)

(declare-fun e!536078 () Bool)

(declare-fun e!536079 () Bool)

(assert (=> b!951871 (= e!536078 e!536079)))

(declare-fun c!99472 () Bool)

(assert (=> b!951871 (= c!99472 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951872 () Bool)

(declare-fun e!536077 () Bool)

(assert (=> b!951872 (= e!536077 call!41545)))

(declare-fun b!951873 () Bool)

(assert (=> b!951873 (= e!536079 call!41545)))

(declare-fun b!951870 () Bool)

(assert (=> b!951870 (= e!536079 e!536077)))

(declare-fun lt!428864 () (_ BitVec 64))

(assert (=> b!951870 (= lt!428864 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428863 () Unit!32026)

(assert (=> b!951870 (= lt!428863 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10755 thiss!1141) lt!428864 #b00000000000000000000000000000000))))

(assert (=> b!951870 (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428864 #b00000000000000000000000000000000)))

(declare-fun lt!428865 () Unit!32026)

(assert (=> b!951870 (= lt!428865 lt!428863)))

(declare-fun res!637899 () Bool)

(assert (=> b!951870 (= res!637899 (= (seekEntryOrOpen!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) (Found!9144 #b00000000000000000000000000000000)))))

(assert (=> b!951870 (=> (not res!637899) (not e!536077))))

(declare-fun d!115347 () Bool)

(declare-fun res!637898 () Bool)

(assert (=> d!115347 (=> res!637898 e!536078)))

(assert (=> d!115347 (= res!637898 (bvsge #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115347 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) e!536078)))

(assert (= (and d!115347 (not res!637898)) b!951871))

(assert (= (and b!951871 c!99472) b!951870))

(assert (= (and b!951871 (not c!99472)) b!951873))

(assert (= (and b!951870 res!637899) b!951872))

(assert (= (or b!951872 b!951873) bm!41542))

(declare-fun m!884131 () Bool)

(assert (=> bm!41542 m!884131))

(assert (=> b!951871 m!884009))

(assert (=> b!951871 m!884009))

(assert (=> b!951871 m!884073))

(assert (=> b!951870 m!884009))

(declare-fun m!884133 () Bool)

(assert (=> b!951870 m!884133))

(declare-fun m!884135 () Bool)

(assert (=> b!951870 m!884135))

(assert (=> b!951870 m!884009))

(declare-fun m!884137 () Bool)

(assert (=> b!951870 m!884137))

(assert (=> b!951696 d!115347))

(declare-fun d!115349 () Bool)

(assert (=> d!115349 (isDefined!376 (getValueByKey!506 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(declare-fun lt!428868 () Unit!32026)

(declare-fun choose!1602 (List!19489 (_ BitVec 64)) Unit!32026)

(assert (=> d!115349 (= lt!428868 (choose!1602 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(declare-fun e!536082 () Bool)

(assert (=> d!115349 e!536082))

(declare-fun res!637902 () Bool)

(assert (=> d!115349 (=> (not res!637902) (not e!536082))))

(declare-fun isStrictlySorted!509 (List!19489) Bool)

(assert (=> d!115349 (= res!637902 (isStrictlySorted!509 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))))))

(assert (=> d!115349 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756) lt!428868)))

(declare-fun b!951876 () Bool)

(assert (=> b!951876 (= e!536082 (containsKey!471 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756))))

(assert (= (and d!115349 res!637902) b!951876))

(assert (=> d!115349 m!884035))

(assert (=> d!115349 m!884035))

(assert (=> d!115349 m!884037))

(declare-fun m!884139 () Bool)

(assert (=> d!115349 m!884139))

(declare-fun m!884141 () Bool)

(assert (=> d!115349 m!884141))

(assert (=> b!951876 m!884031))

(assert (=> b!951734 d!115349))

(assert (=> b!951734 d!115337))

(assert (=> b!951734 d!115339))

(declare-fun bm!41543 () Bool)

(declare-fun call!41546 () Bool)

(assert (=> bm!41543 (= call!41546 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!428724 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951878 () Bool)

(declare-fun e!536084 () Bool)

(declare-fun e!536085 () Bool)

(assert (=> b!951878 (= e!536084 e!536085)))

(declare-fun c!99473 () Bool)

(assert (=> b!951878 (= c!99473 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) (bvadd lt!428724 #b00000000000000000000000000000001))))))

(declare-fun b!951879 () Bool)

(declare-fun e!536083 () Bool)

(assert (=> b!951879 (= e!536083 call!41546)))

(declare-fun b!951880 () Bool)

(assert (=> b!951880 (= e!536085 call!41546)))

(declare-fun b!951877 () Bool)

(assert (=> b!951877 (= e!536085 e!536083)))

(declare-fun lt!428870 () (_ BitVec 64))

(assert (=> b!951877 (= lt!428870 (select (arr!27704 (_keys!10755 thiss!1141)) (bvadd lt!428724 #b00000000000000000000000000000001)))))

(declare-fun lt!428869 () Unit!32026)

(assert (=> b!951877 (= lt!428869 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10755 thiss!1141) lt!428870 (bvadd lt!428724 #b00000000000000000000000000000001)))))

(assert (=> b!951877 (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428870 #b00000000000000000000000000000000)))

(declare-fun lt!428871 () Unit!32026)

(assert (=> b!951877 (= lt!428871 lt!428869)))

(declare-fun res!637904 () Bool)

(assert (=> b!951877 (= res!637904 (= (seekEntryOrOpen!0 (select (arr!27704 (_keys!10755 thiss!1141)) (bvadd lt!428724 #b00000000000000000000000000000001)) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) (Found!9144 (bvadd lt!428724 #b00000000000000000000000000000001))))))

(assert (=> b!951877 (=> (not res!637904) (not e!536083))))

(declare-fun d!115351 () Bool)

(declare-fun res!637903 () Bool)

(assert (=> d!115351 (=> res!637903 e!536084)))

(assert (=> d!115351 (= res!637903 (bvsge (bvadd lt!428724 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115351 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!428724 #b00000000000000000000000000000001) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) e!536084)))

(assert (= (and d!115351 (not res!637903)) b!951878))

(assert (= (and b!951878 c!99473) b!951877))

(assert (= (and b!951878 (not c!99473)) b!951880))

(assert (= (and b!951877 res!637904) b!951879))

(assert (= (or b!951879 b!951880) bm!41543))

(declare-fun m!884143 () Bool)

(assert (=> bm!41543 m!884143))

(declare-fun m!884145 () Bool)

(assert (=> b!951878 m!884145))

(assert (=> b!951878 m!884145))

(declare-fun m!884147 () Bool)

(assert (=> b!951878 m!884147))

(assert (=> b!951877 m!884145))

(declare-fun m!884149 () Bool)

(assert (=> b!951877 m!884149))

(declare-fun m!884151 () Bool)

(assert (=> b!951877 m!884151))

(assert (=> b!951877 m!884145))

(declare-fun m!884153 () Bool)

(assert (=> b!951877 m!884153))

(assert (=> bm!41514 d!115351))

(declare-fun d!115353 () Bool)

(assert (=> d!115353 (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428764 #b00000000000000000000000000000000)))

(declare-fun lt!428874 () Unit!32026)

(declare-fun choose!13 (array!57628 (_ BitVec 64) (_ BitVec 32)) Unit!32026)

(assert (=> d!115353 (= lt!428874 (choose!13 (_keys!10755 thiss!1141) lt!428764 lt!428724))))

(assert (=> d!115353 (bvsge lt!428724 #b00000000000000000000000000000000)))

(assert (=> d!115353 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10755 thiss!1141) lt!428764 lt!428724) lt!428874)))

(declare-fun bs!26737 () Bool)

(assert (= bs!26737 d!115353))

(assert (=> bs!26737 m!884027))

(declare-fun m!884155 () Bool)

(assert (=> bs!26737 m!884155))

(assert (=> b!951724 d!115353))

(declare-fun d!115355 () Bool)

(declare-fun res!637905 () Bool)

(declare-fun e!536086 () Bool)

(assert (=> d!115355 (=> res!637905 e!536086)))

(assert (=> d!115355 (= res!637905 (= (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) lt!428764))))

(assert (=> d!115355 (= (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428764 #b00000000000000000000000000000000) e!536086)))

(declare-fun b!951881 () Bool)

(declare-fun e!536087 () Bool)

(assert (=> b!951881 (= e!536086 e!536087)))

(declare-fun res!637906 () Bool)

(assert (=> b!951881 (=> (not res!637906) (not e!536087))))

(assert (=> b!951881 (= res!637906 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951882 () Bool)

(assert (=> b!951882 (= e!536087 (arrayContainsKey!0 (_keys!10755 thiss!1141) lt!428764 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115355 (not res!637905)) b!951881))

(assert (= (and b!951881 res!637906) b!951882))

(assert (=> d!115355 m!884009))

(declare-fun m!884157 () Bool)

(assert (=> b!951882 m!884157))

(assert (=> b!951724 d!115355))

(declare-fun b!951895 () Bool)

(declare-fun e!536096 () SeekEntryResult!9144)

(declare-fun lt!428881 () SeekEntryResult!9144)

(assert (=> b!951895 (= e!536096 (Found!9144 (index!38948 lt!428881)))))

(declare-fun b!951896 () Bool)

(declare-fun e!536095 () SeekEntryResult!9144)

(assert (=> b!951896 (= e!536095 (seekKeyOrZeroReturnVacant!0 (x!81871 lt!428881) (index!38948 lt!428881) (index!38948 lt!428881) (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951898 () Bool)

(declare-fun e!536094 () SeekEntryResult!9144)

(assert (=> b!951898 (= e!536094 Undefined!9144)))

(declare-fun b!951899 () Bool)

(assert (=> b!951899 (= e!536095 (MissingZero!9144 (index!38948 lt!428881)))))

(declare-fun b!951900 () Bool)

(assert (=> b!951900 (= e!536094 e!536096)))

(declare-fun lt!428882 () (_ BitVec 64))

(assert (=> b!951900 (= lt!428882 (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428881)))))

(declare-fun c!99482 () Bool)

(assert (=> b!951900 (= c!99482 (= lt!428882 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724)))))

(declare-fun b!951897 () Bool)

(declare-fun c!99481 () Bool)

(assert (=> b!951897 (= c!99481 (= lt!428882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!951897 (= e!536096 e!536095)))

(declare-fun d!115357 () Bool)

(declare-fun lt!428883 () SeekEntryResult!9144)

(assert (=> d!115357 (and (or ((_ is Undefined!9144) lt!428883) (not ((_ is Found!9144) lt!428883)) (and (bvsge (index!38947 lt!428883) #b00000000000000000000000000000000) (bvslt (index!38947 lt!428883) (size!28183 (_keys!10755 thiss!1141))))) (or ((_ is Undefined!9144) lt!428883) ((_ is Found!9144) lt!428883) (not ((_ is MissingZero!9144) lt!428883)) (and (bvsge (index!38946 lt!428883) #b00000000000000000000000000000000) (bvslt (index!38946 lt!428883) (size!28183 (_keys!10755 thiss!1141))))) (or ((_ is Undefined!9144) lt!428883) ((_ is Found!9144) lt!428883) ((_ is MissingZero!9144) lt!428883) (not ((_ is MissingVacant!9144) lt!428883)) (and (bvsge (index!38949 lt!428883) #b00000000000000000000000000000000) (bvslt (index!38949 lt!428883) (size!28183 (_keys!10755 thiss!1141))))) (or ((_ is Undefined!9144) lt!428883) (ite ((_ is Found!9144) lt!428883) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38947 lt!428883)) (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724)) (ite ((_ is MissingZero!9144) lt!428883) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38946 lt!428883)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9144) lt!428883) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38949 lt!428883)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!115357 (= lt!428883 e!536094)))

(declare-fun c!99480 () Bool)

(assert (=> d!115357 (= c!99480 (and ((_ is Intermediate!9144) lt!428881) (undefined!9956 lt!428881)))))

(assert (=> d!115357 (= lt!428881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) (mask!27636 thiss!1141)) (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(assert (=> d!115357 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115357 (= (seekEntryOrOpen!0 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) lt!428883)))

(assert (= (and d!115357 c!99480) b!951898))

(assert (= (and d!115357 (not c!99480)) b!951900))

(assert (= (and b!951900 c!99482) b!951895))

(assert (= (and b!951900 (not c!99482)) b!951897))

(assert (= (and b!951897 c!99481) b!951899))

(assert (= (and b!951897 (not c!99481)) b!951896))

(assert (=> b!951896 m!884021))

(declare-fun m!884159 () Bool)

(assert (=> b!951896 m!884159))

(declare-fun m!884161 () Bool)

(assert (=> b!951900 m!884161))

(declare-fun m!884163 () Bool)

(assert (=> d!115357 m!884163))

(declare-fun m!884165 () Bool)

(assert (=> d!115357 m!884165))

(declare-fun m!884167 () Bool)

(assert (=> d!115357 m!884167))

(declare-fun m!884169 () Bool)

(assert (=> d!115357 m!884169))

(assert (=> d!115357 m!884021))

(declare-fun m!884171 () Bool)

(assert (=> d!115357 m!884171))

(assert (=> d!115357 m!883949))

(assert (=> d!115357 m!884021))

(assert (=> d!115357 m!884169))

(assert (=> b!951724 d!115357))

(declare-fun d!115359 () Bool)

(declare-fun res!637911 () Bool)

(declare-fun e!536101 () Bool)

(assert (=> d!115359 (=> res!637911 e!536101)))

(assert (=> d!115359 (= res!637911 (and ((_ is Cons!19485) (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) (= (_1!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) key!756)))))

(assert (=> d!115359 (= (containsKey!471 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))) key!756) e!536101)))

(declare-fun b!951905 () Bool)

(declare-fun e!536102 () Bool)

(assert (=> b!951905 (= e!536101 e!536102)))

(declare-fun res!637912 () Bool)

(assert (=> b!951905 (=> (not res!637912) (not e!536102))))

(assert (=> b!951905 (= res!637912 (and (or (not ((_ is Cons!19485) (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) (bvsle (_1!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) key!756)) ((_ is Cons!19485) (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) (bvslt (_1!6845 (h!20646 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141))))) key!756)))))

(declare-fun b!951906 () Bool)

(assert (=> b!951906 (= e!536102 (containsKey!471 (t!27848 (toList!6206 (getCurrentListMap!3391 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)))) key!756))))

(assert (= (and d!115359 (not res!637911)) b!951905))

(assert (= (and b!951905 res!637912) b!951906))

(declare-fun m!884173 () Bool)

(assert (=> b!951906 m!884173))

(assert (=> d!115327 d!115359))

(declare-fun d!115361 () Bool)

(assert (=> d!115361 (= (apply!919 lt!428836 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)) (get!14578 (getValueByKey!506 (toList!6206 lt!428836) (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26738 () Bool)

(assert (= bs!26738 d!115361))

(assert (=> bs!26738 m!884009))

(declare-fun m!884175 () Bool)

(assert (=> bs!26738 m!884175))

(assert (=> bs!26738 m!884175))

(declare-fun m!884177 () Bool)

(assert (=> bs!26738 m!884177))

(assert (=> b!951788 d!115361))

(declare-fun d!115363 () Bool)

(declare-fun c!99485 () Bool)

(assert (=> d!115363 (= c!99485 ((_ is ValueCellFull!9912) (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!536105 () V!32681)

(assert (=> d!115363 (= (get!14577 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!536105)))

(declare-fun b!951911 () Bool)

(declare-fun get!14579 (ValueCell!9912 V!32681) V!32681)

(assert (=> b!951911 (= e!536105 (get!14579 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!951912 () Bool)

(declare-fun get!14580 (ValueCell!9912 V!32681) V!32681)

(assert (=> b!951912 (= e!536105 (get!14580 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115363 c!99485) b!951911))

(assert (= (and d!115363 (not c!99485)) b!951912))

(assert (=> b!951911 m!884081))

(assert (=> b!951911 m!884077))

(declare-fun m!884179 () Bool)

(assert (=> b!951911 m!884179))

(assert (=> b!951912 m!884081))

(assert (=> b!951912 m!884077))

(declare-fun m!884181 () Bool)

(assert (=> b!951912 m!884181))

(assert (=> b!951788 d!115363))

(declare-fun d!115365 () Bool)

(assert (=> d!115365 (= (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724)) (and (not (= (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27704 (_keys!10755 thiss!1141)) lt!428724) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951725 d!115365))

(declare-fun b!951931 () Bool)

(declare-fun e!536120 () SeekEntryResult!9144)

(declare-fun e!536118 () SeekEntryResult!9144)

(assert (=> b!951931 (= e!536120 e!536118)))

(declare-fun c!99493 () Bool)

(declare-fun lt!428888 () (_ BitVec 64))

(assert (=> b!951931 (= c!99493 (or (= lt!428888 key!756) (= (bvadd lt!428888 lt!428888) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!951932 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951932 (= e!536118 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27636 thiss!1141)) #b00000000000000000000000000000000 (mask!27636 thiss!1141)) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(declare-fun b!951933 () Bool)

(declare-fun lt!428889 () SeekEntryResult!9144)

(assert (=> b!951933 (and (bvsge (index!38948 lt!428889) #b00000000000000000000000000000000) (bvslt (index!38948 lt!428889) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun res!637920 () Bool)

(assert (=> b!951933 (= res!637920 (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428889)) key!756))))

(declare-fun e!536117 () Bool)

(assert (=> b!951933 (=> res!637920 e!536117)))

(declare-fun e!536119 () Bool)

(assert (=> b!951933 (= e!536119 e!536117)))

(declare-fun b!951934 () Bool)

(assert (=> b!951934 (and (bvsge (index!38948 lt!428889) #b00000000000000000000000000000000) (bvslt (index!38948 lt!428889) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun res!637921 () Bool)

(assert (=> b!951934 (= res!637921 (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428889)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!951934 (=> res!637921 e!536117)))

(declare-fun b!951935 () Bool)

(assert (=> b!951935 (and (bvsge (index!38948 lt!428889) #b00000000000000000000000000000000) (bvslt (index!38948 lt!428889) (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> b!951935 (= e!536117 (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428889)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951936 () Bool)

(assert (=> b!951936 (= e!536120 (Intermediate!9144 true (toIndex!0 key!756 (mask!27636 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!951937 () Bool)

(declare-fun e!536116 () Bool)

(assert (=> b!951937 (= e!536116 e!536119)))

(declare-fun res!637919 () Bool)

(assert (=> b!951937 (= res!637919 (and ((_ is Intermediate!9144) lt!428889) (not (undefined!9956 lt!428889)) (bvslt (x!81871 lt!428889) #b01111111111111111111111111111110) (bvsge (x!81871 lt!428889) #b00000000000000000000000000000000) (bvsge (x!81871 lt!428889) #b00000000000000000000000000000000)))))

(assert (=> b!951937 (=> (not res!637919) (not e!536119))))

(declare-fun b!951938 () Bool)

(assert (=> b!951938 (= e!536116 (bvsge (x!81871 lt!428889) #b01111111111111111111111111111110))))

(declare-fun d!115367 () Bool)

(assert (=> d!115367 e!536116))

(declare-fun c!99494 () Bool)

(assert (=> d!115367 (= c!99494 (and ((_ is Intermediate!9144) lt!428889) (undefined!9956 lt!428889)))))

(assert (=> d!115367 (= lt!428889 e!536120)))

(declare-fun c!99492 () Bool)

(assert (=> d!115367 (= c!99492 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!115367 (= lt!428888 (select (arr!27704 (_keys!10755 thiss!1141)) (toIndex!0 key!756 (mask!27636 thiss!1141))))))

(assert (=> d!115367 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27636 thiss!1141)) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) lt!428889)))

(declare-fun b!951939 () Bool)

(assert (=> b!951939 (= e!536118 (Intermediate!9144 false (toIndex!0 key!756 (mask!27636 thiss!1141)) #b00000000000000000000000000000000))))

(assert (= (and d!115367 c!99492) b!951936))

(assert (= (and d!115367 (not c!99492)) b!951931))

(assert (= (and b!951931 c!99493) b!951939))

(assert (= (and b!951931 (not c!99493)) b!951932))

(assert (= (and d!115367 c!99494) b!951938))

(assert (= (and d!115367 (not c!99494)) b!951937))

(assert (= (and b!951937 res!637919) b!951933))

(assert (= (and b!951933 (not res!637920)) b!951934))

(assert (= (and b!951934 (not res!637921)) b!951935))

(assert (=> b!951932 m!883995))

(declare-fun m!884183 () Bool)

(assert (=> b!951932 m!884183))

(assert (=> b!951932 m!884183))

(declare-fun m!884185 () Bool)

(assert (=> b!951932 m!884185))

(declare-fun m!884187 () Bool)

(assert (=> b!951933 m!884187))

(assert (=> b!951935 m!884187))

(assert (=> d!115367 m!883995))

(declare-fun m!884189 () Bool)

(assert (=> d!115367 m!884189))

(assert (=> d!115367 m!883949))

(assert (=> b!951934 m!884187))

(assert (=> d!115307 d!115367))

(declare-fun d!115369 () Bool)

(declare-fun lt!428895 () (_ BitVec 32))

(declare-fun lt!428894 () (_ BitVec 32))

(assert (=> d!115369 (= lt!428895 (bvmul (bvxor lt!428894 (bvlshr lt!428894 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!115369 (= lt!428894 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!115369 (and (bvsge (mask!27636 thiss!1141) #b00000000000000000000000000000000) (let ((res!637922 (let ((h!20648 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81887 (bvmul (bvxor h!20648 (bvlshr h!20648 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81887 (bvlshr x!81887 #b00000000000000000000000000001101)) (mask!27636 thiss!1141)))))) (and (bvslt res!637922 (bvadd (mask!27636 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!637922 #b00000000000000000000000000000000))))))

(assert (=> d!115369 (= (toIndex!0 key!756 (mask!27636 thiss!1141)) (bvand (bvxor lt!428895 (bvlshr lt!428895 #b00000000000000000000000000001101)) (mask!27636 thiss!1141)))))

(assert (=> d!115307 d!115369))

(assert (=> d!115307 d!115325))

(declare-fun d!115371 () Bool)

(assert (=> d!115371 (= (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951785 d!115371))

(declare-fun d!115373 () Bool)

(declare-fun res!637923 () Bool)

(declare-fun e!536121 () Bool)

(assert (=> d!115373 (=> res!637923 e!536121)))

(assert (=> d!115373 (= res!637923 (= (select (arr!27704 (_keys!10755 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!115373 (= (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!536121)))

(declare-fun b!951940 () Bool)

(declare-fun e!536122 () Bool)

(assert (=> b!951940 (= e!536121 e!536122)))

(declare-fun res!637924 () Bool)

(assert (=> b!951940 (=> (not res!637924) (not e!536122))))

(assert (=> b!951940 (= res!637924 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!951941 () Bool)

(assert (=> b!951941 (= e!536122 (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!115373 (not res!637923)) b!951940))

(assert (= (and b!951940 res!637924) b!951941))

(declare-fun m!884191 () Bool)

(assert (=> d!115373 m!884191))

(declare-fun m!884193 () Bool)

(assert (=> b!951941 m!884193))

(assert (=> b!951703 d!115373))

(declare-fun d!115375 () Bool)

(declare-fun e!536125 () Bool)

(assert (=> d!115375 e!536125))

(declare-fun c!99497 () Bool)

(assert (=> d!115375 (= c!99497 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!115375 true))

(declare-fun _$15!107 () Unit!32026)

(assert (=> d!115375 (= (choose!1601 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) key!756 (defaultEntry!5812 thiss!1141)) _$15!107)))

(declare-fun b!951946 () Bool)

(assert (=> b!951946 (= e!536125 (arrayContainsKey!0 (_keys!10755 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!951947 () Bool)

(assert (=> b!951947 (= e!536125 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5544 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115375 c!99497) b!951946))

(assert (= (and d!115375 (not c!99497)) b!951947))

(assert (=> b!951946 m!883953))

(assert (=> d!115319 d!115375))

(assert (=> d!115319 d!115325))

(assert (=> d!115315 d!115323))

(declare-fun d!115377 () Bool)

(assert (=> d!115377 (arrayForallSeekEntryOrOpenFound!0 lt!428724 (_keys!10755 thiss!1141) (mask!27636 thiss!1141))))

(assert (=> d!115377 true))

(declare-fun _$72!122 () Unit!32026)

(assert (=> d!115377 (= (choose!38 (_keys!10755 thiss!1141) (mask!27636 thiss!1141) #b00000000000000000000000000000000 lt!428724) _$72!122)))

(declare-fun bs!26739 () Bool)

(assert (= bs!26739 d!115377))

(assert (=> bs!26739 m!883947))

(assert (=> d!115315 d!115377))

(assert (=> d!115315 d!115325))

(assert (=> d!115329 d!115325))

(declare-fun d!115379 () Bool)

(declare-fun e!536127 () Bool)

(assert (=> d!115379 e!536127))

(declare-fun res!637925 () Bool)

(assert (=> d!115379 (=> res!637925 e!536127)))

(declare-fun lt!428898 () Bool)

(assert (=> d!115379 (= res!637925 (not lt!428898))))

(declare-fun lt!428899 () Bool)

(assert (=> d!115379 (= lt!428898 lt!428899)))

(declare-fun lt!428896 () Unit!32026)

(declare-fun e!536126 () Unit!32026)

(assert (=> d!115379 (= lt!428896 e!536126)))

(declare-fun c!99498 () Bool)

(assert (=> d!115379 (= c!99498 lt!428899)))

(assert (=> d!115379 (= lt!428899 (containsKey!471 (toList!6206 lt!428836) (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!115379 (= (contains!5250 lt!428836 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)) lt!428898)))

(declare-fun b!951948 () Bool)

(declare-fun lt!428897 () Unit!32026)

(assert (=> b!951948 (= e!536126 lt!428897)))

(assert (=> b!951948 (= lt!428897 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 lt!428836) (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951948 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951949 () Bool)

(declare-fun Unit!32031 () Unit!32026)

(assert (=> b!951949 (= e!536126 Unit!32031)))

(declare-fun b!951950 () Bool)

(assert (=> b!951950 (= e!536127 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!115379 c!99498) b!951948))

(assert (= (and d!115379 (not c!99498)) b!951949))

(assert (= (and d!115379 (not res!637925)) b!951950))

(assert (=> d!115379 m!884009))

(declare-fun m!884195 () Bool)

(assert (=> d!115379 m!884195))

(assert (=> b!951948 m!884009))

(declare-fun m!884197 () Bool)

(assert (=> b!951948 m!884197))

(assert (=> b!951948 m!884009))

(assert (=> b!951948 m!884175))

(assert (=> b!951948 m!884175))

(declare-fun m!884199 () Bool)

(assert (=> b!951948 m!884199))

(assert (=> b!951950 m!884009))

(assert (=> b!951950 m!884175))

(assert (=> b!951950 m!884175))

(assert (=> b!951950 m!884199))

(assert (=> b!951793 d!115379))

(declare-fun d!115381 () Bool)

(declare-fun e!536128 () Bool)

(assert (=> d!115381 e!536128))

(declare-fun res!637927 () Bool)

(assert (=> d!115381 (=> (not res!637927) (not e!536128))))

(declare-fun lt!428903 () ListLongMap!12381)

(assert (=> d!115381 (= res!637927 (contains!5250 lt!428903 (_1!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))))))

(declare-fun lt!428902 () List!19489)

(assert (=> d!115381 (= lt!428903 (ListLongMap!12382 lt!428902))))

(declare-fun lt!428900 () Unit!32026)

(declare-fun lt!428901 () Unit!32026)

(assert (=> d!115381 (= lt!428900 lt!428901)))

(assert (=> d!115381 (= (getValueByKey!506 lt!428902 (_1!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115381 (= lt!428901 (lemmaContainsTupThenGetReturnValue!268 lt!428902 (_1!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115381 (= lt!428902 (insertStrictlySorted!324 (toList!6206 lt!428822) (_1!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115381 (= (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) lt!428903)))

(declare-fun b!951951 () Bool)

(declare-fun res!637926 () Bool)

(assert (=> b!951951 (=> (not res!637926) (not e!536128))))

(assert (=> b!951951 (= res!637926 (= (getValueByKey!506 (toList!6206 lt!428903) (_1!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))))))))

(declare-fun b!951952 () Bool)

(assert (=> b!951952 (= e!536128 (contains!5252 (toList!6206 lt!428903) (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))))))

(assert (= (and d!115381 res!637927) b!951951))

(assert (= (and b!951951 res!637926) b!951952))

(declare-fun m!884201 () Bool)

(assert (=> d!115381 m!884201))

(declare-fun m!884203 () Bool)

(assert (=> d!115381 m!884203))

(declare-fun m!884205 () Bool)

(assert (=> d!115381 m!884205))

(declare-fun m!884207 () Bool)

(assert (=> d!115381 m!884207))

(declare-fun m!884209 () Bool)

(assert (=> b!951951 m!884209))

(declare-fun m!884211 () Bool)

(assert (=> b!951952 m!884211))

(assert (=> b!951789 d!115381))

(declare-fun d!115383 () Bool)

(assert (=> d!115383 (= (apply!919 (+!2833 lt!428831 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) lt!428826) (get!14578 (getValueByKey!506 (toList!6206 (+!2833 lt!428831 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))) lt!428826)))))

(declare-fun bs!26740 () Bool)

(assert (= bs!26740 d!115383))

(declare-fun m!884213 () Bool)

(assert (=> bs!26740 m!884213))

(assert (=> bs!26740 m!884213))

(declare-fun m!884215 () Bool)

(assert (=> bs!26740 m!884215))

(assert (=> b!951789 d!115383))

(declare-fun d!115385 () Bool)

(declare-fun e!536130 () Bool)

(assert (=> d!115385 e!536130))

(declare-fun res!637928 () Bool)

(assert (=> d!115385 (=> res!637928 e!536130)))

(declare-fun lt!428906 () Bool)

(assert (=> d!115385 (= res!637928 (not lt!428906))))

(declare-fun lt!428907 () Bool)

(assert (=> d!115385 (= lt!428906 lt!428907)))

(declare-fun lt!428904 () Unit!32026)

(declare-fun e!536129 () Unit!32026)

(assert (=> d!115385 (= lt!428904 e!536129)))

(declare-fun c!99499 () Bool)

(assert (=> d!115385 (= c!99499 lt!428907)))

(assert (=> d!115385 (= lt!428907 (containsKey!471 (toList!6206 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) lt!428824))))

(assert (=> d!115385 (= (contains!5250 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) lt!428824) lt!428906)))

(declare-fun b!951953 () Bool)

(declare-fun lt!428905 () Unit!32026)

(assert (=> b!951953 (= e!536129 lt!428905)))

(assert (=> b!951953 (= lt!428905 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) lt!428824))))

(assert (=> b!951953 (isDefined!376 (getValueByKey!506 (toList!6206 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) lt!428824))))

(declare-fun b!951954 () Bool)

(declare-fun Unit!32032 () Unit!32026)

(assert (=> b!951954 (= e!536129 Unit!32032)))

(declare-fun b!951955 () Bool)

(assert (=> b!951955 (= e!536130 (isDefined!376 (getValueByKey!506 (toList!6206 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141)))) lt!428824)))))

(assert (= (and d!115385 c!99499) b!951953))

(assert (= (and d!115385 (not c!99499)) b!951954))

(assert (= (and d!115385 (not res!637928)) b!951955))

(declare-fun m!884217 () Bool)

(assert (=> d!115385 m!884217))

(declare-fun m!884219 () Bool)

(assert (=> b!951953 m!884219))

(declare-fun m!884221 () Bool)

(assert (=> b!951953 m!884221))

(assert (=> b!951953 m!884221))

(declare-fun m!884223 () Bool)

(assert (=> b!951953 m!884223))

(assert (=> b!951955 m!884221))

(assert (=> b!951955 m!884221))

(assert (=> b!951955 m!884223))

(assert (=> b!951789 d!115385))

(declare-fun d!115387 () Bool)

(assert (=> d!115387 (= (apply!919 (+!2833 lt!428842 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) lt!428832) (apply!919 lt!428842 lt!428832))))

(declare-fun lt!428910 () Unit!32026)

(declare-fun choose!1603 (ListLongMap!12381 (_ BitVec 64) V!32681 (_ BitVec 64)) Unit!32026)

(assert (=> d!115387 (= lt!428910 (choose!1603 lt!428842 lt!428841 (zeroValue!5648 thiss!1141) lt!428832))))

(declare-fun e!536133 () Bool)

(assert (=> d!115387 e!536133))

(declare-fun res!637931 () Bool)

(assert (=> d!115387 (=> (not res!637931) (not e!536133))))

(assert (=> d!115387 (= res!637931 (contains!5250 lt!428842 lt!428832))))

(assert (=> d!115387 (= (addApplyDifferent!463 lt!428842 lt!428841 (zeroValue!5648 thiss!1141) lt!428832) lt!428910)))

(declare-fun b!951959 () Bool)

(assert (=> b!951959 (= e!536133 (not (= lt!428832 lt!428841)))))

(assert (= (and d!115387 res!637931) b!951959))

(assert (=> d!115387 m!884051))

(assert (=> d!115387 m!884053))

(assert (=> d!115387 m!884051))

(assert (=> d!115387 m!884063))

(declare-fun m!884225 () Bool)

(assert (=> d!115387 m!884225))

(declare-fun m!884227 () Bool)

(assert (=> d!115387 m!884227))

(assert (=> b!951789 d!115387))

(declare-fun d!115389 () Bool)

(declare-fun e!536134 () Bool)

(assert (=> d!115389 e!536134))

(declare-fun res!637933 () Bool)

(assert (=> d!115389 (=> (not res!637933) (not e!536134))))

(declare-fun lt!428914 () ListLongMap!12381)

(assert (=> d!115389 (= res!637933 (contains!5250 lt!428914 (_1!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))))))

(declare-fun lt!428913 () List!19489)

(assert (=> d!115389 (= lt!428914 (ListLongMap!12382 lt!428913))))

(declare-fun lt!428911 () Unit!32026)

(declare-fun lt!428912 () Unit!32026)

(assert (=> d!115389 (= lt!428911 lt!428912)))

(assert (=> d!115389 (= (getValueByKey!506 lt!428913 (_1!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))))))

(assert (=> d!115389 (= lt!428912 (lemmaContainsTupThenGetReturnValue!268 lt!428913 (_1!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))))))

(assert (=> d!115389 (= lt!428913 (insertStrictlySorted!324 (toList!6206 lt!428838) (_1!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))))))

(assert (=> d!115389 (= (+!2833 lt!428838 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) lt!428914)))

(declare-fun b!951960 () Bool)

(declare-fun res!637932 () Bool)

(assert (=> b!951960 (=> (not res!637932) (not e!536134))))

(assert (=> b!951960 (= res!637932 (= (getValueByKey!506 (toList!6206 lt!428914) (_1!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))))))))

(declare-fun b!951961 () Bool)

(assert (=> b!951961 (= e!536134 (contains!5252 (toList!6206 lt!428914) (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))))))

(assert (= (and d!115389 res!637933) b!951960))

(assert (= (and b!951960 res!637932) b!951961))

(declare-fun m!884229 () Bool)

(assert (=> d!115389 m!884229))

(declare-fun m!884231 () Bool)

(assert (=> d!115389 m!884231))

(declare-fun m!884233 () Bool)

(assert (=> d!115389 m!884233))

(declare-fun m!884235 () Bool)

(assert (=> d!115389 m!884235))

(declare-fun m!884237 () Bool)

(assert (=> b!951960 m!884237))

(declare-fun m!884239 () Bool)

(assert (=> b!951961 m!884239))

(assert (=> b!951789 d!115389))

(declare-fun d!115391 () Bool)

(declare-fun e!536135 () Bool)

(assert (=> d!115391 e!536135))

(declare-fun res!637935 () Bool)

(assert (=> d!115391 (=> (not res!637935) (not e!536135))))

(declare-fun lt!428918 () ListLongMap!12381)

(assert (=> d!115391 (= res!637935 (contains!5250 lt!428918 (_1!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))))))

(declare-fun lt!428917 () List!19489)

(assert (=> d!115391 (= lt!428918 (ListLongMap!12382 lt!428917))))

(declare-fun lt!428915 () Unit!32026)

(declare-fun lt!428916 () Unit!32026)

(assert (=> d!115391 (= lt!428915 lt!428916)))

(assert (=> d!115391 (= (getValueByKey!506 lt!428917 (_1!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115391 (= lt!428916 (lemmaContainsTupThenGetReturnValue!268 lt!428917 (_1!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115391 (= lt!428917 (insertStrictlySorted!324 (toList!6206 lt!428842) (_1!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))))))

(assert (=> d!115391 (= (+!2833 lt!428842 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) lt!428918)))

(declare-fun b!951962 () Bool)

(declare-fun res!637934 () Bool)

(assert (=> b!951962 (=> (not res!637934) (not e!536135))))

(assert (=> b!951962 (= res!637934 (= (getValueByKey!506 (toList!6206 lt!428918) (_1!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))))))))

(declare-fun b!951963 () Bool)

(assert (=> b!951963 (= e!536135 (contains!5252 (toList!6206 lt!428918) (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))))))

(assert (= (and d!115391 res!637935) b!951962))

(assert (= (and b!951962 res!637934) b!951963))

(declare-fun m!884241 () Bool)

(assert (=> d!115391 m!884241))

(declare-fun m!884243 () Bool)

(assert (=> d!115391 m!884243))

(declare-fun m!884245 () Bool)

(assert (=> d!115391 m!884245))

(declare-fun m!884247 () Bool)

(assert (=> d!115391 m!884247))

(declare-fun m!884249 () Bool)

(assert (=> b!951962 m!884249))

(declare-fun m!884251 () Bool)

(assert (=> b!951963 m!884251))

(assert (=> b!951789 d!115391))

(declare-fun d!115393 () Bool)

(assert (=> d!115393 (= (apply!919 lt!428831 lt!428826) (get!14578 (getValueByKey!506 (toList!6206 lt!428831) lt!428826)))))

(declare-fun bs!26741 () Bool)

(assert (= bs!26741 d!115393))

(declare-fun m!884253 () Bool)

(assert (=> bs!26741 m!884253))

(assert (=> bs!26741 m!884253))

(declare-fun m!884255 () Bool)

(assert (=> bs!26741 m!884255))

(assert (=> b!951789 d!115393))

(declare-fun d!115395 () Bool)

(assert (=> d!115395 (contains!5250 (+!2833 lt!428822 (tuple2!13671 lt!428833 (zeroValue!5648 thiss!1141))) lt!428824)))

(declare-fun lt!428921 () Unit!32026)

(declare-fun choose!1604 (ListLongMap!12381 (_ BitVec 64) V!32681 (_ BitVec 64)) Unit!32026)

(assert (=> d!115395 (= lt!428921 (choose!1604 lt!428822 lt!428833 (zeroValue!5648 thiss!1141) lt!428824))))

(assert (=> d!115395 (contains!5250 lt!428822 lt!428824)))

(assert (=> d!115395 (= (addStillContains!589 lt!428822 lt!428833 (zeroValue!5648 thiss!1141) lt!428824) lt!428921)))

(declare-fun bs!26742 () Bool)

(assert (= bs!26742 d!115395))

(assert (=> bs!26742 m!884043))

(assert (=> bs!26742 m!884043))

(assert (=> bs!26742 m!884057))

(declare-fun m!884257 () Bool)

(assert (=> bs!26742 m!884257))

(declare-fun m!884259 () Bool)

(assert (=> bs!26742 m!884259))

(assert (=> b!951789 d!115395))

(declare-fun d!115397 () Bool)

(assert (=> d!115397 (= (apply!919 lt!428842 lt!428832) (get!14578 (getValueByKey!506 (toList!6206 lt!428842) lt!428832)))))

(declare-fun bs!26743 () Bool)

(assert (= bs!26743 d!115397))

(declare-fun m!884261 () Bool)

(assert (=> bs!26743 m!884261))

(assert (=> bs!26743 m!884261))

(declare-fun m!884263 () Bool)

(assert (=> bs!26743 m!884263))

(assert (=> b!951789 d!115397))

(declare-fun d!115399 () Bool)

(declare-fun e!536136 () Bool)

(assert (=> d!115399 e!536136))

(declare-fun res!637937 () Bool)

(assert (=> d!115399 (=> (not res!637937) (not e!536136))))

(declare-fun lt!428925 () ListLongMap!12381)

(assert (=> d!115399 (= res!637937 (contains!5250 lt!428925 (_1!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))))))

(declare-fun lt!428924 () List!19489)

(assert (=> d!115399 (= lt!428925 (ListLongMap!12382 lt!428924))))

(declare-fun lt!428922 () Unit!32026)

(declare-fun lt!428923 () Unit!32026)

(assert (=> d!115399 (= lt!428922 lt!428923)))

(assert (=> d!115399 (= (getValueByKey!506 lt!428924 (_1!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))))))

(assert (=> d!115399 (= lt!428923 (lemmaContainsTupThenGetReturnValue!268 lt!428924 (_1!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))))))

(assert (=> d!115399 (= lt!428924 (insertStrictlySorted!324 (toList!6206 lt!428831) (_1!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) (_2!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))))))

(assert (=> d!115399 (= (+!2833 lt!428831 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) lt!428925)))

(declare-fun b!951965 () Bool)

(declare-fun res!637936 () Bool)

(assert (=> b!951965 (=> (not res!637936) (not e!536136))))

(assert (=> b!951965 (= res!637936 (= (getValueByKey!506 (toList!6206 lt!428925) (_1!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141)))) (Some!511 (_2!6845 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))))))))

(declare-fun b!951966 () Bool)

(assert (=> b!951966 (= e!536136 (contains!5252 (toList!6206 lt!428925) (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))))))

(assert (= (and d!115399 res!637937) b!951965))

(assert (= (and b!951965 res!637936) b!951966))

(declare-fun m!884265 () Bool)

(assert (=> d!115399 m!884265))

(declare-fun m!884267 () Bool)

(assert (=> d!115399 m!884267))

(declare-fun m!884269 () Bool)

(assert (=> d!115399 m!884269))

(declare-fun m!884271 () Bool)

(assert (=> d!115399 m!884271))

(declare-fun m!884273 () Bool)

(assert (=> b!951965 m!884273))

(declare-fun m!884275 () Bool)

(assert (=> b!951966 m!884275))

(assert (=> b!951789 d!115399))

(declare-fun d!115401 () Bool)

(assert (=> d!115401 (= (apply!919 (+!2833 lt!428838 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) lt!428843) (apply!919 lt!428838 lt!428843))))

(declare-fun lt!428926 () Unit!32026)

(assert (=> d!115401 (= lt!428926 (choose!1603 lt!428838 lt!428834 (minValue!5648 thiss!1141) lt!428843))))

(declare-fun e!536137 () Bool)

(assert (=> d!115401 e!536137))

(declare-fun res!637938 () Bool)

(assert (=> d!115401 (=> (not res!637938) (not e!536137))))

(assert (=> d!115401 (= res!637938 (contains!5250 lt!428838 lt!428843))))

(assert (=> d!115401 (= (addApplyDifferent!463 lt!428838 lt!428834 (minValue!5648 thiss!1141) lt!428843) lt!428926)))

(declare-fun b!951967 () Bool)

(assert (=> b!951967 (= e!536137 (not (= lt!428843 lt!428834)))))

(assert (= (and d!115401 res!637938) b!951967))

(assert (=> d!115401 m!884047))

(assert (=> d!115401 m!884049))

(assert (=> d!115401 m!884047))

(assert (=> d!115401 m!884069))

(declare-fun m!884277 () Bool)

(assert (=> d!115401 m!884277))

(declare-fun m!884279 () Bool)

(assert (=> d!115401 m!884279))

(assert (=> b!951789 d!115401))

(declare-fun d!115403 () Bool)

(assert (=> d!115403 (= (apply!919 (+!2833 lt!428842 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141))) lt!428832) (get!14578 (getValueByKey!506 (toList!6206 (+!2833 lt!428842 (tuple2!13671 lt!428841 (zeroValue!5648 thiss!1141)))) lt!428832)))))

(declare-fun bs!26744 () Bool)

(assert (= bs!26744 d!115403))

(declare-fun m!884281 () Bool)

(assert (=> bs!26744 m!884281))

(assert (=> bs!26744 m!884281))

(declare-fun m!884283 () Bool)

(assert (=> bs!26744 m!884283))

(assert (=> b!951789 d!115403))

(declare-fun d!115405 () Bool)

(assert (=> d!115405 (= (apply!919 (+!2833 lt!428838 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141))) lt!428843) (get!14578 (getValueByKey!506 (toList!6206 (+!2833 lt!428838 (tuple2!13671 lt!428834 (minValue!5648 thiss!1141)))) lt!428843)))))

(declare-fun bs!26745 () Bool)

(assert (= bs!26745 d!115405))

(declare-fun m!884285 () Bool)

(assert (=> bs!26745 m!884285))

(assert (=> bs!26745 m!884285))

(declare-fun m!884287 () Bool)

(assert (=> bs!26745 m!884287))

(assert (=> b!951789 d!115405))

(declare-fun d!115407 () Bool)

(assert (=> d!115407 (= (apply!919 (+!2833 lt!428831 (tuple2!13671 lt!428839 (minValue!5648 thiss!1141))) lt!428826) (apply!919 lt!428831 lt!428826))))

(declare-fun lt!428927 () Unit!32026)

(assert (=> d!115407 (= lt!428927 (choose!1603 lt!428831 lt!428839 (minValue!5648 thiss!1141) lt!428826))))

(declare-fun e!536138 () Bool)

(assert (=> d!115407 e!536138))

(declare-fun res!637939 () Bool)

(assert (=> d!115407 (=> (not res!637939) (not e!536138))))

(assert (=> d!115407 (= res!637939 (contains!5250 lt!428831 lt!428826))))

(assert (=> d!115407 (= (addApplyDifferent!463 lt!428831 lt!428839 (minValue!5648 thiss!1141) lt!428826) lt!428927)))

(declare-fun b!951968 () Bool)

(assert (=> b!951968 (= e!536138 (not (= lt!428826 lt!428839)))))

(assert (= (and d!115407 res!637939) b!951968))

(assert (=> d!115407 m!884039))

(assert (=> d!115407 m!884041))

(assert (=> d!115407 m!884039))

(assert (=> d!115407 m!884061))

(declare-fun m!884289 () Bool)

(assert (=> d!115407 m!884289))

(declare-fun m!884291 () Bool)

(assert (=> d!115407 m!884291))

(assert (=> b!951789 d!115407))

(declare-fun b!951993 () Bool)

(declare-fun e!536155 () ListLongMap!12381)

(assert (=> b!951993 (= e!536155 (ListLongMap!12382 Nil!19486))))

(declare-fun b!951994 () Bool)

(declare-fun e!536159 () Bool)

(declare-fun e!536158 () Bool)

(assert (=> b!951994 (= e!536159 e!536158)))

(assert (=> b!951994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun res!637950 () Bool)

(declare-fun lt!428947 () ListLongMap!12381)

(assert (=> b!951994 (= res!637950 (contains!5250 lt!428947 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951994 (=> (not res!637950) (not e!536158))))

(declare-fun b!951995 () Bool)

(declare-fun e!536156 () ListLongMap!12381)

(assert (=> b!951995 (= e!536155 e!536156)))

(declare-fun c!99509 () Bool)

(assert (=> b!951995 (= c!99509 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951996 () Bool)

(declare-fun res!637949 () Bool)

(declare-fun e!536153 () Bool)

(assert (=> b!951996 (=> (not res!637949) (not e!536153))))

(assert (=> b!951996 (= res!637949 (not (contains!5250 lt!428947 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!41546 () Bool)

(declare-fun call!41549 () ListLongMap!12381)

(assert (=> bm!41546 (= call!41549 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5812 thiss!1141)))))

(declare-fun b!951997 () Bool)

(declare-fun e!536154 () Bool)

(assert (=> b!951997 (= e!536154 (= lt!428947 (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5812 thiss!1141))))))

(declare-fun b!951998 () Bool)

(assert (=> b!951998 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> b!951998 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28182 (_values!5835 thiss!1141))))))

(assert (=> b!951998 (= e!536158 (= (apply!919 lt!428947 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)) (get!14577 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951999 () Bool)

(assert (=> b!951999 (= e!536159 e!536154)))

(declare-fun c!99511 () Bool)

(assert (=> b!951999 (= c!99511 (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(declare-fun b!952001 () Bool)

(declare-fun isEmpty!720 (ListLongMap!12381) Bool)

(assert (=> b!952001 (= e!536154 (isEmpty!720 lt!428947))))

(declare-fun b!952002 () Bool)

(declare-fun e!536157 () Bool)

(assert (=> b!952002 (= e!536157 (validKeyInArray!0 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!952002 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!952003 () Bool)

(assert (=> b!952003 (= e!536156 call!41549)))

(declare-fun b!952004 () Bool)

(declare-fun lt!428948 () Unit!32026)

(declare-fun lt!428946 () Unit!32026)

(assert (=> b!952004 (= lt!428948 lt!428946)))

(declare-fun lt!428942 () (_ BitVec 64))

(declare-fun lt!428944 () V!32681)

(declare-fun lt!428945 () ListLongMap!12381)

(declare-fun lt!428943 () (_ BitVec 64))

(assert (=> b!952004 (not (contains!5250 (+!2833 lt!428945 (tuple2!13671 lt!428942 lt!428944)) lt!428943))))

(declare-fun addStillNotContains!230 (ListLongMap!12381 (_ BitVec 64) V!32681 (_ BitVec 64)) Unit!32026)

(assert (=> b!952004 (= lt!428946 (addStillNotContains!230 lt!428945 lt!428942 lt!428944 lt!428943))))

(assert (=> b!952004 (= lt!428943 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!952004 (= lt!428944 (get!14577 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!952004 (= lt!428942 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952004 (= lt!428945 call!41549)))

(assert (=> b!952004 (= e!536156 (+!2833 call!41549 (tuple2!13671 (select (arr!27704 (_keys!10755 thiss!1141)) #b00000000000000000000000000000000) (get!14577 (select (arr!27703 (_values!5835 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1672 (defaultEntry!5812 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!115409 () Bool)

(assert (=> d!115409 e!536153))

(declare-fun res!637948 () Bool)

(assert (=> d!115409 (=> (not res!637948) (not e!536153))))

(assert (=> d!115409 (= res!637948 (not (contains!5250 lt!428947 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!115409 (= lt!428947 e!536155)))

(declare-fun c!99510 () Bool)

(assert (=> d!115409 (= c!99510 (bvsge #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (=> d!115409 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115409 (= (getCurrentListMapNoExtraKeys!3339 (_keys!10755 thiss!1141) (_values!5835 thiss!1141) (mask!27636 thiss!1141) (extraKeys!5544 thiss!1141) (zeroValue!5648 thiss!1141) (minValue!5648 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5812 thiss!1141)) lt!428947)))

(declare-fun b!952000 () Bool)

(assert (=> b!952000 (= e!536153 e!536159)))

(declare-fun c!99508 () Bool)

(assert (=> b!952000 (= c!99508 e!536157)))

(declare-fun res!637951 () Bool)

(assert (=> b!952000 (=> (not res!637951) (not e!536157))))

(assert (=> b!952000 (= res!637951 (bvslt #b00000000000000000000000000000000 (size!28183 (_keys!10755 thiss!1141))))))

(assert (= (and d!115409 c!99510) b!951993))

(assert (= (and d!115409 (not c!99510)) b!951995))

(assert (= (and b!951995 c!99509) b!952004))

(assert (= (and b!951995 (not c!99509)) b!952003))

(assert (= (or b!952004 b!952003) bm!41546))

(assert (= (and d!115409 res!637948) b!951996))

(assert (= (and b!951996 res!637949) b!952000))

(assert (= (and b!952000 res!637951) b!952002))

(assert (= (and b!952000 c!99508) b!951994))

(assert (= (and b!952000 (not c!99508)) b!951999))

(assert (= (and b!951994 res!637950) b!951998))

(assert (= (and b!951999 c!99511) b!951997))

(assert (= (and b!951999 (not c!99511)) b!952001))

(declare-fun b_lambda!14433 () Bool)

(assert (=> (not b_lambda!14433) (not b!951998)))

(assert (=> b!951998 t!27850))

(declare-fun b_and!29775 () Bool)

(assert (= b_and!29773 (and (=> t!27850 result!12339) b_and!29775)))

(declare-fun b_lambda!14435 () Bool)

(assert (=> (not b_lambda!14435) (not b!952004)))

(assert (=> b!952004 t!27850))

(declare-fun b_and!29777 () Bool)

(assert (= b_and!29775 (and (=> t!27850 result!12339) b_and!29777)))

(declare-fun m!884293 () Bool)

(assert (=> b!952001 m!884293))

(assert (=> b!952002 m!884009))

(assert (=> b!952002 m!884009))

(assert (=> b!952002 m!884073))

(declare-fun m!884295 () Bool)

(assert (=> b!952004 m!884295))

(declare-fun m!884297 () Bool)

(assert (=> b!952004 m!884297))

(declare-fun m!884299 () Bool)

(assert (=> b!952004 m!884299))

(declare-fun m!884301 () Bool)

(assert (=> b!952004 m!884301))

(assert (=> b!952004 m!884081))

(assert (=> b!952004 m!884295))

(assert (=> b!952004 m!884009))

(assert (=> b!952004 m!884077))

(assert (=> b!952004 m!884081))

(assert (=> b!952004 m!884077))

(assert (=> b!952004 m!884083))

(assert (=> b!951995 m!884009))

(assert (=> b!951995 m!884009))

(assert (=> b!951995 m!884073))

(declare-fun m!884303 () Bool)

(assert (=> d!115409 m!884303))

(assert (=> d!115409 m!883949))

(declare-fun m!884305 () Bool)

(assert (=> bm!41546 m!884305))

(assert (=> b!951994 m!884009))

(assert (=> b!951994 m!884009))

(declare-fun m!884307 () Bool)

(assert (=> b!951994 m!884307))

(assert (=> b!951998 m!884009))

(declare-fun m!884309 () Bool)

(assert (=> b!951998 m!884309))

(assert (=> b!951998 m!884081))

(assert (=> b!951998 m!884009))

(assert (=> b!951998 m!884077))

(assert (=> b!951998 m!884081))

(assert (=> b!951998 m!884077))

(assert (=> b!951998 m!884083))

(declare-fun m!884311 () Bool)

(assert (=> b!951996 m!884311))

(assert (=> b!951997 m!884305))

(assert (=> b!951789 d!115409))

(declare-fun d!115411 () Bool)

(assert (=> d!115411 (= (apply!919 lt!428838 lt!428843) (get!14578 (getValueByKey!506 (toList!6206 lt!428838) lt!428843)))))

(declare-fun bs!26746 () Bool)

(assert (= bs!26746 d!115411))

(declare-fun m!884313 () Bool)

(assert (=> bs!26746 m!884313))

(assert (=> bs!26746 m!884313))

(declare-fun m!884315 () Bool)

(assert (=> bs!26746 m!884315))

(assert (=> b!951789 d!115411))

(assert (=> bm!41535 d!115409))

(declare-fun d!115413 () Bool)

(declare-fun e!536161 () Bool)

(assert (=> d!115413 e!536161))

(declare-fun res!637952 () Bool)

(assert (=> d!115413 (=> res!637952 e!536161)))

(declare-fun lt!428951 () Bool)

(assert (=> d!115413 (= res!637952 (not lt!428951))))

(declare-fun lt!428952 () Bool)

(assert (=> d!115413 (= lt!428951 lt!428952)))

(declare-fun lt!428949 () Unit!32026)

(declare-fun e!536160 () Unit!32026)

(assert (=> d!115413 (= lt!428949 e!536160)))

(declare-fun c!99512 () Bool)

(assert (=> d!115413 (= c!99512 lt!428952)))

(assert (=> d!115413 (= lt!428952 (containsKey!471 (toList!6206 lt!428836) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!115413 (= (contains!5250 lt!428836 #b0000000000000000000000000000000000000000000000000000000000000000) lt!428951)))

(declare-fun b!952005 () Bool)

(declare-fun lt!428950 () Unit!32026)

(assert (=> b!952005 (= e!536160 lt!428950)))

(assert (=> b!952005 (= lt!428950 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!6206 lt!428836) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!952005 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!952006 () Bool)

(declare-fun Unit!32033 () Unit!32026)

(assert (=> b!952006 (= e!536160 Unit!32033)))

(declare-fun b!952007 () Bool)

(assert (=> b!952007 (= e!536161 (isDefined!376 (getValueByKey!506 (toList!6206 lt!428836) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115413 c!99512) b!952005))

(assert (= (and d!115413 (not c!99512)) b!952006))

(assert (= (and d!115413 (not res!637952)) b!952007))

(declare-fun m!884317 () Bool)

(assert (=> d!115413 m!884317))

(declare-fun m!884319 () Bool)

(assert (=> b!952005 m!884319))

(declare-fun m!884321 () Bool)

(assert (=> b!952005 m!884321))

(assert (=> b!952005 m!884321))

(declare-fun m!884323 () Bool)

(assert (=> b!952005 m!884323))

(assert (=> b!952007 m!884321))

(assert (=> b!952007 m!884321))

(assert (=> b!952007 m!884323))

(assert (=> bm!41529 d!115413))

(declare-fun d!115415 () Bool)

(declare-fun lt!428953 () (_ BitVec 32))

(assert (=> d!115415 (and (or (bvslt lt!428953 #b00000000000000000000000000000000) (bvsge lt!428953 (size!28183 (_keys!10755 thiss!1141))) (and (bvsge lt!428953 #b00000000000000000000000000000000) (bvslt lt!428953 (size!28183 (_keys!10755 thiss!1141))))) (bvsge lt!428953 #b00000000000000000000000000000000) (bvslt lt!428953 (size!28183 (_keys!10755 thiss!1141))) (= (select (arr!27704 (_keys!10755 thiss!1141)) lt!428953) key!756))))

(declare-fun e!536162 () (_ BitVec 32))

(assert (=> d!115415 (= lt!428953 e!536162)))

(declare-fun c!99513 () Bool)

(assert (=> d!115415 (= c!99513 (= (select (arr!27704 (_keys!10755 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!115415 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28183 (_keys!10755 thiss!1141))) (bvslt (size!28183 (_keys!10755 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115415 (= (arrayScanForKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!428953)))

(declare-fun b!952008 () Bool)

(assert (=> b!952008 (= e!536162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!952009 () Bool)

(assert (=> b!952009 (= e!536162 (arrayScanForKey!0 (_keys!10755 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!115415 c!99513) b!952008))

(assert (= (and d!115415 (not c!99513)) b!952009))

(declare-fun m!884325 () Bool)

(assert (=> d!115415 m!884325))

(assert (=> d!115415 m!884191))

(declare-fun m!884327 () Bool)

(assert (=> b!952009 m!884327))

(assert (=> b!951715 d!115415))

(assert (=> b!951708 d!115317))

(declare-fun d!115417 () Bool)

(declare-fun e!536163 () Bool)

(assert (=> d!115417 e!536163))

(declare-fun res!637954 () Bool)

(assert (=> d!115417 (=> (not res!637954) (not e!536163))))

(declare-fun lt!428957 () ListLongMap!12381)

(assert (=> d!115417 (= res!637954 (contains!5250 lt!428957 (_1!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))))

(declare-fun lt!428956 () List!19489)

(assert (=> d!115417 (= lt!428957 (ListLongMap!12382 lt!428956))))

(declare-fun lt!428954 () Unit!32026)

(declare-fun lt!428955 () Unit!32026)

(assert (=> d!115417 (= lt!428954 lt!428955)))

(assert (=> d!115417 (= (getValueByKey!506 lt!428956 (_1!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))) (Some!511 (_2!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))))

(assert (=> d!115417 (= lt!428955 (lemmaContainsTupThenGetReturnValue!268 lt!428956 (_1!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))) (_2!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))))

(assert (=> d!115417 (= lt!428956 (insertStrictlySorted!324 (toList!6206 (ite c!99451 call!41538 (ite c!99453 call!41532 call!41534))) (_1!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))) (_2!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))))))

(assert (=> d!115417 (= (+!2833 (ite c!99451 call!41538 (ite c!99453 call!41532 call!41534)) (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))) lt!428957)))

(declare-fun b!952010 () Bool)

(declare-fun res!637953 () Bool)

(assert (=> b!952010 (=> (not res!637953) (not e!536163))))

(assert (=> b!952010 (= res!637953 (= (getValueByKey!506 (toList!6206 lt!428957) (_1!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141))))) (Some!511 (_2!6845 (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))))

(declare-fun b!952011 () Bool)

(assert (=> b!952011 (= e!536163 (contains!5252 (toList!6206 lt!428957) (ite (or c!99451 c!99453) (tuple2!13671 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5648 thiss!1141)) (tuple2!13671 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5648 thiss!1141)))))))

(assert (= (and d!115417 res!637954) b!952010))

(assert (= (and b!952010 res!637953) b!952011))

(declare-fun m!884329 () Bool)

(assert (=> d!115417 m!884329))

(declare-fun m!884331 () Bool)

(assert (=> d!115417 m!884331))

(declare-fun m!884333 () Bool)

(assert (=> d!115417 m!884333))

(declare-fun m!884335 () Bool)

(assert (=> d!115417 m!884335))

(declare-fun m!884337 () Bool)

(assert (=> b!952010 m!884337))

(declare-fun m!884339 () Bool)

(assert (=> b!952011 m!884339))

(assert (=> bm!41534 d!115417))

(declare-fun d!115419 () Bool)

(assert (=> d!115419 (= (apply!919 lt!428836 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14578 (getValueByKey!506 (toList!6206 lt!428836) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26747 () Bool)

(assert (= bs!26747 d!115419))

(assert (=> bs!26747 m!884321))

(assert (=> bs!26747 m!884321))

(declare-fun m!884341 () Bool)

(assert (=> bs!26747 m!884341))

(assert (=> b!951794 d!115419))

(declare-fun b!952024 () Bool)

(declare-fun e!536172 () SeekEntryResult!9144)

(declare-fun e!536171 () SeekEntryResult!9144)

(assert (=> b!952024 (= e!536172 e!536171)))

(declare-fun c!99522 () Bool)

(declare-fun lt!428963 () (_ BitVec 64))

(assert (=> b!952024 (= c!99522 (= lt!428963 key!756))))

(declare-fun b!952025 () Bool)

(assert (=> b!952025 (= e!536172 Undefined!9144)))

(declare-fun lt!428962 () SeekEntryResult!9144)

(declare-fun d!115421 () Bool)

(assert (=> d!115421 (and (or ((_ is Undefined!9144) lt!428962) (not ((_ is Found!9144) lt!428962)) (and (bvsge (index!38947 lt!428962) #b00000000000000000000000000000000) (bvslt (index!38947 lt!428962) (size!28183 (_keys!10755 thiss!1141))))) (or ((_ is Undefined!9144) lt!428962) ((_ is Found!9144) lt!428962) (not ((_ is MissingVacant!9144) lt!428962)) (not (= (index!38949 lt!428962) (index!38948 lt!428746))) (and (bvsge (index!38949 lt!428962) #b00000000000000000000000000000000) (bvslt (index!38949 lt!428962) (size!28183 (_keys!10755 thiss!1141))))) (or ((_ is Undefined!9144) lt!428962) (ite ((_ is Found!9144) lt!428962) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38947 lt!428962)) key!756) (and ((_ is MissingVacant!9144) lt!428962) (= (index!38949 lt!428962) (index!38948 lt!428746)) (= (select (arr!27704 (_keys!10755 thiss!1141)) (index!38949 lt!428962)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!115421 (= lt!428962 e!536172)))

(declare-fun c!99520 () Bool)

(assert (=> d!115421 (= c!99520 (bvsge (x!81871 lt!428746) #b01111111111111111111111111111110))))

(assert (=> d!115421 (= lt!428963 (select (arr!27704 (_keys!10755 thiss!1141)) (index!38948 lt!428746)))))

(assert (=> d!115421 (validMask!0 (mask!27636 thiss!1141))))

(assert (=> d!115421 (= (seekKeyOrZeroReturnVacant!0 (x!81871 lt!428746) (index!38948 lt!428746) (index!38948 lt!428746) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)) lt!428962)))

(declare-fun b!952026 () Bool)

(declare-fun c!99521 () Bool)

(assert (=> b!952026 (= c!99521 (= lt!428963 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!536170 () SeekEntryResult!9144)

(assert (=> b!952026 (= e!536171 e!536170)))

(declare-fun b!952027 () Bool)

(assert (=> b!952027 (= e!536170 (MissingVacant!9144 (index!38948 lt!428746)))))

(declare-fun b!952028 () Bool)

(assert (=> b!952028 (= e!536171 (Found!9144 (index!38948 lt!428746)))))

(declare-fun b!952029 () Bool)

(assert (=> b!952029 (= e!536170 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81871 lt!428746) #b00000000000000000000000000000001) (nextIndex!0 (index!38948 lt!428746) (x!81871 lt!428746) (mask!27636 thiss!1141)) (index!38948 lt!428746) key!756 (_keys!10755 thiss!1141) (mask!27636 thiss!1141)))))

(assert (= (and d!115421 c!99520) b!952025))

(assert (= (and d!115421 (not c!99520)) b!952024))

(assert (= (and b!952024 c!99522) b!952028))

(assert (= (and b!952024 (not c!99522)) b!952026))

(assert (= (and b!952026 c!99521) b!952027))

(assert (= (and b!952026 (not c!99521)) b!952029))

(declare-fun m!884343 () Bool)

(assert (=> d!115421 m!884343))

(declare-fun m!884345 () Bool)

(assert (=> d!115421 m!884345))

(assert (=> d!115421 m!883989))

(assert (=> d!115421 m!883949))

(declare-fun m!884347 () Bool)

(assert (=> b!952029 m!884347))

(assert (=> b!952029 m!884347))

(declare-fun m!884349 () Bool)

(assert (=> b!952029 m!884349))

(assert (=> b!951685 d!115421))

(assert (=> b!951795 d!115371))

(declare-fun condMapEmpty!33118 () Bool)

(declare-fun mapDefault!33118 () ValueCell!9912)

(assert (=> mapNonEmpty!33117 (= condMapEmpty!33118 (= mapRest!33117 ((as const (Array (_ BitVec 32) ValueCell!9912)) mapDefault!33118)))))

(declare-fun e!536174 () Bool)

(declare-fun mapRes!33118 () Bool)

(assert (=> mapNonEmpty!33117 (= tp!63462 (and e!536174 mapRes!33118))))

(declare-fun mapNonEmpty!33118 () Bool)

(declare-fun tp!63463 () Bool)

(declare-fun e!536173 () Bool)

(assert (=> mapNonEmpty!33118 (= mapRes!33118 (and tp!63463 e!536173))))

(declare-fun mapValue!33118 () ValueCell!9912)

(declare-fun mapKey!33118 () (_ BitVec 32))

(declare-fun mapRest!33118 () (Array (_ BitVec 32) ValueCell!9912))

(assert (=> mapNonEmpty!33118 (= mapRest!33117 (store mapRest!33118 mapKey!33118 mapValue!33118))))

(declare-fun b!952030 () Bool)

(assert (=> b!952030 (= e!536173 tp_is_empty!20787)))

(declare-fun b!952031 () Bool)

(assert (=> b!952031 (= e!536174 tp_is_empty!20787)))

(declare-fun mapIsEmpty!33118 () Bool)

(assert (=> mapIsEmpty!33118 mapRes!33118))

(assert (= (and mapNonEmpty!33117 condMapEmpty!33118) mapIsEmpty!33118))

(assert (= (and mapNonEmpty!33117 (not condMapEmpty!33118)) mapNonEmpty!33118))

(assert (= (and mapNonEmpty!33118 ((_ is ValueCellFull!9912) mapValue!33118)) b!952030))

(assert (= (and mapNonEmpty!33117 ((_ is ValueCellFull!9912) mapDefault!33118)) b!952031))

(declare-fun m!884351 () Bool)

(assert (=> mapNonEmpty!33118 m!884351))

(declare-fun b_lambda!14437 () Bool)

(assert (= b_lambda!14435 (or (and b!951635 b_free!18279) b_lambda!14437)))

(declare-fun b_lambda!14439 () Bool)

(assert (= b_lambda!14433 (or (and b!951635 b_free!18279) b_lambda!14439)))

(check-sat (not b!951824) (not d!115413) (not b!951998) (not d!115331) (not b_lambda!14431) (not b!951996) (not b!951953) (not d!115407) (not b!951855) (not b!952011) (not b!951951) (not d!115391) (not b!951960) (not b!951827) (not d!115417) (not bm!41538) (not d!115335) (not d!115349) (not b!951870) (not b!951963) (not b!951871) (not d!115409) (not b!951911) (not d!115377) (not b!951845) (not b!951961) (not d!115411) tp_is_empty!20787 (not d!115379) (not b!952009) (not d!115381) (not b!952001) (not d!115361) (not b!951932) (not b!951878) (not d!115393) (not bm!41542) (not d!115421) (not d!115387) (not d!115401) (not b!951821) (not bm!41541) (not b!951838) (not bm!41546) (not b!952002) (not d!115395) (not d!115403) (not b!951995) (not d!115343) (not b!951948) (not d!115337) (not d!115389) (not b!951896) (not b!952007) (not b!951844) (not d!115399) (not b!951941) (not d!115383) (not b_lambda!14437) (not b!951966) (not b!951952) (not b!951906) (not bm!41543) (not b!951876) (not b!951877) (not b!952010) (not d!115405) (not d!115357) (not b!951946) (not d!115385) (not b!951965) (not b!951882) (not mapNonEmpty!33118) (not b!951866) (not b!952004) (not b!951825) (not b_next!18279) (not b!951955) (not d!115353) (not b!951856) (not b!951962) (not d!115419) (not b!951997) (not b_lambda!14439) (not b!951823) (not b!952005) (not b!952029) (not d!115341) (not d!115367) (not d!115397) b_and!29777 (not b!951994) (not b!951912) (not b!951950))
(check-sat b_and!29777 (not b_next!18279))
