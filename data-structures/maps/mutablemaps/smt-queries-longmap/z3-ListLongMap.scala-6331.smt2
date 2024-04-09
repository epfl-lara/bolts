; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81610 () Bool)

(assert start!81610)

(declare-fun b!952897 () Bool)

(declare-fun b_free!18309 () Bool)

(declare-fun b_next!18309 () Bool)

(assert (=> b!952897 (= b_free!18309 (not b_next!18309))))

(declare-fun tp!63555 () Bool)

(declare-fun b_and!29811 () Bool)

(assert (=> b!952897 (= tp!63555 b_and!29811)))

(declare-fun b!952893 () Bool)

(declare-datatypes ((Unit!32060 0))(
  ( (Unit!32061) )
))
(declare-fun e!536729 () Unit!32060)

(declare-fun Unit!32062 () Unit!32060)

(assert (=> b!952893 (= e!536729 Unit!32062)))

(declare-fun lt!429452 () Unit!32060)

(declare-datatypes ((V!32721 0))(
  ( (V!32722 (val!10459 Int)) )
))
(declare-datatypes ((ValueCell!9927 0))(
  ( (ValueCellFull!9927 (v!13012 V!32721)) (EmptyCell!9927) )
))
(declare-datatypes ((array!57694 0))(
  ( (array!57695 (arr!27733 (Array (_ BitVec 32) ValueCell!9927)) (size!28213 (_ BitVec 32))) )
))
(declare-datatypes ((array!57696 0))(
  ( (array!57697 (arr!27734 (Array (_ BitVec 32) (_ BitVec 64))) (size!28214 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5004 0))(
  ( (LongMapFixedSize!5005 (defaultEntry!5837 Int) (mask!27693 (_ BitVec 32)) (extraKeys!5569 (_ BitVec 32)) (zeroValue!5673 V!32721) (minValue!5673 V!32721) (_size!2557 (_ BitVec 32)) (_keys!10792 array!57696) (_values!5860 array!57694) (_vacant!2557 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!5004)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun lemmaKeyInListMapIsInArray!346 (array!57696 array!57694 (_ BitVec 32) (_ BitVec 32) V!32721 V!32721 (_ BitVec 64) Int) Unit!32060)

(assert (=> b!952893 (= lt!429452 (lemmaKeyInListMapIsInArray!346 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) key!756 (defaultEntry!5837 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952893 (arrayContainsKey!0 (_keys!10792 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429451 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57696 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952893 (= lt!429451 (arrayScanForKey!0 (_keys!10792 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!429450 () Unit!32060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32060)

(assert (=> b!952893 (= lt!429450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10792 thiss!1141) (mask!27693 thiss!1141) #b00000000000000000000000000000000 lt!429451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57696 (_ BitVec 32)) Bool)

(assert (=> b!952893 (arrayForallSeekEntryOrOpenFound!0 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141))))

(declare-fun lt!429448 () Unit!32060)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57696 (_ BitVec 32)) Unit!32060)

(assert (=> b!952893 (= lt!429448 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(assert (=> b!952893 false))

(declare-fun b!952894 () Bool)

(declare-fun res!638355 () Bool)

(declare-fun e!536723 () Bool)

(assert (=> b!952894 (=> (not res!638355) (not e!536723))))

(assert (=> b!952894 (= res!638355 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952895 () Bool)

(declare-fun e!536724 () Bool)

(declare-fun tp_is_empty!20817 () Bool)

(assert (=> b!952895 (= e!536724 tp_is_empty!20817)))

(declare-fun mapIsEmpty!33169 () Bool)

(declare-fun mapRes!33169 () Bool)

(assert (=> mapIsEmpty!33169 mapRes!33169))

(declare-fun b!952896 () Bool)

(declare-fun Unit!32063 () Unit!32060)

(assert (=> b!952896 (= e!536729 Unit!32063)))

(declare-fun e!536726 () Bool)

(declare-fun e!536728 () Bool)

(declare-fun array_inv!21468 (array!57696) Bool)

(declare-fun array_inv!21469 (array!57694) Bool)

(assert (=> b!952897 (= e!536726 (and tp!63555 tp_is_empty!20817 (array_inv!21468 (_keys!10792 thiss!1141)) (array_inv!21469 (_values!5860 thiss!1141)) e!536728))))

(declare-fun b!952898 () Bool)

(assert (=> b!952898 (= e!536728 (and e!536724 mapRes!33169))))

(declare-fun condMapEmpty!33169 () Bool)

(declare-fun mapDefault!33169 () ValueCell!9927)

(assert (=> b!952898 (= condMapEmpty!33169 (= (arr!27733 (_values!5860 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9927)) mapDefault!33169)))))

(declare-fun b!952899 () Bool)

(declare-fun e!536727 () Bool)

(assert (=> b!952899 (= e!536727 tp_is_empty!20817)))

(declare-fun mapNonEmpty!33169 () Bool)

(declare-fun tp!63556 () Bool)

(assert (=> mapNonEmpty!33169 (= mapRes!33169 (and tp!63556 e!536727))))

(declare-fun mapRest!33169 () (Array (_ BitVec 32) ValueCell!9927))

(declare-fun mapValue!33169 () ValueCell!9927)

(declare-fun mapKey!33169 () (_ BitVec 32))

(assert (=> mapNonEmpty!33169 (= (arr!27733 (_values!5860 thiss!1141)) (store mapRest!33169 mapKey!33169 mapValue!33169))))

(declare-fun b!952901 () Bool)

(declare-fun res!638356 () Bool)

(assert (=> b!952901 (=> (not res!638356) (not e!536723))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9155 0))(
  ( (MissingZero!9155 (index!38990 (_ BitVec 32))) (Found!9155 (index!38991 (_ BitVec 32))) (Intermediate!9155 (undefined!9967 Bool) (index!38992 (_ BitVec 32)) (x!81970 (_ BitVec 32))) (Undefined!9155) (MissingVacant!9155 (index!38993 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57696 (_ BitVec 32)) SeekEntryResult!9155)

(assert (=> b!952901 (= res!638356 (not ((_ is Found!9155) (seekEntry!0 key!756 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))))

(declare-fun res!638354 () Bool)

(assert (=> start!81610 (=> (not res!638354) (not e!536723))))

(declare-fun valid!1874 (LongMapFixedSize!5004) Bool)

(assert (=> start!81610 (= res!638354 (valid!1874 thiss!1141))))

(assert (=> start!81610 e!536723))

(assert (=> start!81610 e!536726))

(assert (=> start!81610 true))

(declare-fun b!952900 () Bool)

(declare-datatypes ((tuple2!13690 0))(
  ( (tuple2!13691 (_1!6855 (_ BitVec 64)) (_2!6855 V!32721)) )
))
(declare-datatypes ((List!19503 0))(
  ( (Nil!19500) (Cons!19499 (h!20661 tuple2!13690) (t!27870 List!19503)) )
))
(declare-datatypes ((ListLongMap!12401 0))(
  ( (ListLongMap!12402 (toList!6216 List!19503)) )
))
(declare-fun contains!5262 (ListLongMap!12401 (_ BitVec 64)) Bool)

(declare-fun map!13114 (LongMapFixedSize!5004) ListLongMap!12401)

(assert (=> b!952900 (= e!536723 (contains!5262 (map!13114 thiss!1141) key!756))))

(declare-fun lt!429449 () Unit!32060)

(assert (=> b!952900 (= lt!429449 e!536729)))

(declare-fun c!99657 () Bool)

(declare-fun getCurrentListMap!3401 (array!57696 array!57694 (_ BitVec 32) (_ BitVec 32) V!32721 V!32721 (_ BitVec 32) Int) ListLongMap!12401)

(assert (=> b!952900 (= c!99657 (contains!5262 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)) key!756))))

(assert (= (and start!81610 res!638354) b!952894))

(assert (= (and b!952894 res!638355) b!952901))

(assert (= (and b!952901 res!638356) b!952900))

(assert (= (and b!952900 c!99657) b!952893))

(assert (= (and b!952900 (not c!99657)) b!952896))

(assert (= (and b!952898 condMapEmpty!33169) mapIsEmpty!33169))

(assert (= (and b!952898 (not condMapEmpty!33169)) mapNonEmpty!33169))

(assert (= (and mapNonEmpty!33169 ((_ is ValueCellFull!9927) mapValue!33169)) b!952899))

(assert (= (and b!952898 ((_ is ValueCellFull!9927) mapDefault!33169)) b!952895))

(assert (= b!952897 b!952898))

(assert (= start!81610 b!952897))

(declare-fun m!885083 () Bool)

(assert (=> b!952901 m!885083))

(declare-fun m!885085 () Bool)

(assert (=> b!952897 m!885085))

(declare-fun m!885087 () Bool)

(assert (=> b!952897 m!885087))

(declare-fun m!885089 () Bool)

(assert (=> mapNonEmpty!33169 m!885089))

(declare-fun m!885091 () Bool)

(assert (=> start!81610 m!885091))

(declare-fun m!885093 () Bool)

(assert (=> b!952900 m!885093))

(assert (=> b!952900 m!885093))

(declare-fun m!885095 () Bool)

(assert (=> b!952900 m!885095))

(declare-fun m!885097 () Bool)

(assert (=> b!952900 m!885097))

(assert (=> b!952900 m!885097))

(declare-fun m!885099 () Bool)

(assert (=> b!952900 m!885099))

(declare-fun m!885101 () Bool)

(assert (=> b!952893 m!885101))

(declare-fun m!885103 () Bool)

(assert (=> b!952893 m!885103))

(declare-fun m!885105 () Bool)

(assert (=> b!952893 m!885105))

(declare-fun m!885107 () Bool)

(assert (=> b!952893 m!885107))

(declare-fun m!885109 () Bool)

(assert (=> b!952893 m!885109))

(declare-fun m!885111 () Bool)

(assert (=> b!952893 m!885111))

(check-sat (not b!952897) (not b!952893) (not b!952900) tp_is_empty!20817 (not b_next!18309) (not start!81610) b_and!29811 (not b!952901) (not mapNonEmpty!33169))
(check-sat b_and!29811 (not b_next!18309))
(get-model)

(declare-fun d!115517 () Bool)

(declare-fun e!536755 () Bool)

(assert (=> d!115517 e!536755))

(declare-fun res!638368 () Bool)

(assert (=> d!115517 (=> res!638368 e!536755)))

(declare-fun lt!429476 () Bool)

(assert (=> d!115517 (= res!638368 (not lt!429476))))

(declare-fun lt!429477 () Bool)

(assert (=> d!115517 (= lt!429476 lt!429477)))

(declare-fun lt!429478 () Unit!32060)

(declare-fun e!536756 () Unit!32060)

(assert (=> d!115517 (= lt!429478 e!536756)))

(declare-fun c!99663 () Bool)

(assert (=> d!115517 (= c!99663 lt!429477)))

(declare-fun containsKey!475 (List!19503 (_ BitVec 64)) Bool)

(assert (=> d!115517 (= lt!429477 (containsKey!475 (toList!6216 (map!13114 thiss!1141)) key!756))))

(assert (=> d!115517 (= (contains!5262 (map!13114 thiss!1141) key!756) lt!429476)))

(declare-fun b!952935 () Bool)

(declare-fun lt!429479 () Unit!32060)

(assert (=> b!952935 (= e!536756 lt!429479)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!370 (List!19503 (_ BitVec 64)) Unit!32060)

(assert (=> b!952935 (= lt!429479 (lemmaContainsKeyImpliesGetValueByKeyDefined!370 (toList!6216 (map!13114 thiss!1141)) key!756))))

(declare-datatypes ((Option!516 0))(
  ( (Some!515 (v!13014 V!32721)) (None!514) )
))
(declare-fun isDefined!380 (Option!516) Bool)

(declare-fun getValueByKey!510 (List!19503 (_ BitVec 64)) Option!516)

(assert (=> b!952935 (isDefined!380 (getValueByKey!510 (toList!6216 (map!13114 thiss!1141)) key!756))))

(declare-fun b!952936 () Bool)

(declare-fun Unit!32068 () Unit!32060)

(assert (=> b!952936 (= e!536756 Unit!32068)))

(declare-fun b!952937 () Bool)

(assert (=> b!952937 (= e!536755 (isDefined!380 (getValueByKey!510 (toList!6216 (map!13114 thiss!1141)) key!756)))))

(assert (= (and d!115517 c!99663) b!952935))

(assert (= (and d!115517 (not c!99663)) b!952936))

(assert (= (and d!115517 (not res!638368)) b!952937))

(declare-fun m!885143 () Bool)

(assert (=> d!115517 m!885143))

(declare-fun m!885145 () Bool)

(assert (=> b!952935 m!885145))

(declare-fun m!885147 () Bool)

(assert (=> b!952935 m!885147))

(assert (=> b!952935 m!885147))

(declare-fun m!885149 () Bool)

(assert (=> b!952935 m!885149))

(assert (=> b!952937 m!885147))

(assert (=> b!952937 m!885147))

(assert (=> b!952937 m!885149))

(assert (=> b!952900 d!115517))

(declare-fun d!115519 () Bool)

(assert (=> d!115519 (= (map!13114 thiss!1141) (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun bs!26766 () Bool)

(assert (= bs!26766 d!115519))

(assert (=> bs!26766 m!885097))

(assert (=> b!952900 d!115519))

(declare-fun d!115521 () Bool)

(declare-fun e!536757 () Bool)

(assert (=> d!115521 e!536757))

(declare-fun res!638369 () Bool)

(assert (=> d!115521 (=> res!638369 e!536757)))

(declare-fun lt!429480 () Bool)

(assert (=> d!115521 (= res!638369 (not lt!429480))))

(declare-fun lt!429481 () Bool)

(assert (=> d!115521 (= lt!429480 lt!429481)))

(declare-fun lt!429482 () Unit!32060)

(declare-fun e!536758 () Unit!32060)

(assert (=> d!115521 (= lt!429482 e!536758)))

(declare-fun c!99664 () Bool)

(assert (=> d!115521 (= c!99664 lt!429481)))

(assert (=> d!115521 (= lt!429481 (containsKey!475 (toList!6216 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141))) key!756))))

(assert (=> d!115521 (= (contains!5262 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)) key!756) lt!429480)))

(declare-fun b!952938 () Bool)

(declare-fun lt!429483 () Unit!32060)

(assert (=> b!952938 (= e!536758 lt!429483)))

(assert (=> b!952938 (= lt!429483 (lemmaContainsKeyImpliesGetValueByKeyDefined!370 (toList!6216 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141))) key!756))))

(assert (=> b!952938 (isDefined!380 (getValueByKey!510 (toList!6216 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141))) key!756))))

(declare-fun b!952939 () Bool)

(declare-fun Unit!32069 () Unit!32060)

(assert (=> b!952939 (= e!536758 Unit!32069)))

(declare-fun b!952940 () Bool)

(assert (=> b!952940 (= e!536757 (isDefined!380 (getValueByKey!510 (toList!6216 (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141))) key!756)))))

(assert (= (and d!115521 c!99664) b!952938))

(assert (= (and d!115521 (not c!99664)) b!952939))

(assert (= (and d!115521 (not res!638369)) b!952940))

(declare-fun m!885151 () Bool)

(assert (=> d!115521 m!885151))

(declare-fun m!885153 () Bool)

(assert (=> b!952938 m!885153))

(declare-fun m!885155 () Bool)

(assert (=> b!952938 m!885155))

(assert (=> b!952938 m!885155))

(declare-fun m!885157 () Bool)

(assert (=> b!952938 m!885157))

(assert (=> b!952940 m!885155))

(assert (=> b!952940 m!885155))

(assert (=> b!952940 m!885157))

(assert (=> b!952900 d!115521))

(declare-fun b!952983 () Bool)

(declare-fun c!99679 () Bool)

(assert (=> b!952983 (= c!99679 (and (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!536795 () ListLongMap!12401)

(declare-fun e!536793 () ListLongMap!12401)

(assert (=> b!952983 (= e!536795 e!536793)))

(declare-fun bm!41636 () Bool)

(declare-fun call!41640 () Bool)

(declare-fun lt!429533 () ListLongMap!12401)

(assert (=> bm!41636 (= call!41640 (contains!5262 lt!429533 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!952984 () Bool)

(declare-fun e!536792 () Bool)

(declare-fun e!536787 () Bool)

(assert (=> b!952984 (= e!536792 e!536787)))

(declare-fun c!99680 () Bool)

(assert (=> b!952984 (= c!99680 (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41637 () Bool)

(declare-fun call!41641 () ListLongMap!12401)

(declare-fun getCurrentListMapNoExtraKeys!3343 (array!57696 array!57694 (_ BitVec 32) (_ BitVec 32) V!32721 V!32721 (_ BitVec 32) Int) ListLongMap!12401)

(assert (=> bm!41637 (= call!41641 (getCurrentListMapNoExtraKeys!3343 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun bm!41638 () Bool)

(declare-fun call!41643 () Bool)

(assert (=> bm!41638 (= call!41643 (contains!5262 lt!429533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41639 () Bool)

(declare-fun call!41645 () ListLongMap!12401)

(declare-fun call!41642 () ListLongMap!12401)

(assert (=> bm!41639 (= call!41645 call!41642)))

(declare-fun b!952985 () Bool)

(declare-fun call!41639 () ListLongMap!12401)

(assert (=> b!952985 (= e!536793 call!41639)))

(declare-fun b!952986 () Bool)

(declare-fun e!536790 () ListLongMap!12401)

(declare-fun call!41644 () ListLongMap!12401)

(declare-fun +!2837 (ListLongMap!12401 tuple2!13690) ListLongMap!12401)

(assert (=> b!952986 (= e!536790 (+!2837 call!41644 (tuple2!13691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5673 thiss!1141))))))

(declare-fun b!952987 () Bool)

(declare-fun e!536785 () Bool)

(declare-fun apply!923 (ListLongMap!12401 (_ BitVec 64)) V!32721)

(assert (=> b!952987 (= e!536785 (= (apply!923 lt!429533 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5673 thiss!1141)))))

(declare-fun bm!41640 () Bool)

(assert (=> bm!41640 (= call!41642 call!41641)))

(declare-fun b!952988 () Bool)

(declare-fun e!536791 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952988 (= e!536791 (validKeyInArray!0 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952989 () Bool)

(assert (=> b!952989 (= e!536795 call!41639)))

(declare-fun b!952990 () Bool)

(declare-fun e!536797 () Bool)

(declare-fun get!14594 (ValueCell!9927 V!32721) V!32721)

(declare-fun dynLambda!1676 (Int (_ BitVec 64)) V!32721)

(assert (=> b!952990 (= e!536797 (= (apply!923 lt!429533 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000)) (get!14594 (select (arr!27733 (_values!5860 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1676 (defaultEntry!5837 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28213 (_values!5860 thiss!1141))))))

(assert (=> b!952990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))))))

(declare-fun b!952991 () Bool)

(assert (=> b!952991 (= e!536787 (not call!41640))))

(declare-fun b!952992 () Bool)

(declare-fun e!536796 () Bool)

(assert (=> b!952992 (= e!536796 e!536797)))

(declare-fun res!638390 () Bool)

(assert (=> b!952992 (=> (not res!638390) (not e!536797))))

(assert (=> b!952992 (= res!638390 (contains!5262 lt!429533 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!952992 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))))))

(declare-fun b!952993 () Bool)

(assert (=> b!952993 (= e!536787 e!536785)))

(declare-fun res!638391 () Bool)

(assert (=> b!952993 (= res!638391 call!41640)))

(assert (=> b!952993 (=> (not res!638391) (not e!536785))))

(declare-fun b!952994 () Bool)

(assert (=> b!952994 (= e!536790 e!536795)))

(declare-fun c!99681 () Bool)

(assert (=> b!952994 (= c!99681 (and (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!115523 () Bool)

(assert (=> d!115523 e!536792))

(declare-fun res!638394 () Bool)

(assert (=> d!115523 (=> (not res!638394) (not e!536792))))

(assert (=> d!115523 (= res!638394 (or (bvsge #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))))))))

(declare-fun lt!429546 () ListLongMap!12401)

(assert (=> d!115523 (= lt!429533 lt!429546)))

(declare-fun lt!429545 () Unit!32060)

(declare-fun e!536794 () Unit!32060)

(assert (=> d!115523 (= lt!429545 e!536794)))

(declare-fun c!99678 () Bool)

(assert (=> d!115523 (= c!99678 e!536791)))

(declare-fun res!638388 () Bool)

(assert (=> d!115523 (=> (not res!638388) (not e!536791))))

(assert (=> d!115523 (= res!638388 (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))))))

(assert (=> d!115523 (= lt!429546 e!536790)))

(declare-fun c!99677 () Bool)

(assert (=> d!115523 (= c!99677 (and (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!115523 (validMask!0 (mask!27693 thiss!1141))))

(assert (=> d!115523 (= (getCurrentListMap!3401 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)) lt!429533)))

(declare-fun b!952995 () Bool)

(declare-fun res!638395 () Bool)

(assert (=> b!952995 (=> (not res!638395) (not e!536792))))

(declare-fun e!536786 () Bool)

(assert (=> b!952995 (= res!638395 e!536786)))

(declare-fun c!99682 () Bool)

(assert (=> b!952995 (= c!99682 (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!952996 () Bool)

(declare-fun e!536788 () Bool)

(assert (=> b!952996 (= e!536788 (= (apply!923 lt!429533 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5673 thiss!1141)))))

(declare-fun b!952997 () Bool)

(declare-fun res!638393 () Bool)

(assert (=> b!952997 (=> (not res!638393) (not e!536792))))

(assert (=> b!952997 (= res!638393 e!536796)))

(declare-fun res!638396 () Bool)

(assert (=> b!952997 (=> res!638396 e!536796)))

(declare-fun e!536789 () Bool)

(assert (=> b!952997 (= res!638396 (not e!536789))))

(declare-fun res!638392 () Bool)

(assert (=> b!952997 (=> (not res!638392) (not e!536789))))

(assert (=> b!952997 (= res!638392 (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))))))

(declare-fun b!952998 () Bool)

(assert (=> b!952998 (= e!536786 e!536788)))

(declare-fun res!638389 () Bool)

(assert (=> b!952998 (= res!638389 call!41643)))

(assert (=> b!952998 (=> (not res!638389) (not e!536788))))

(declare-fun b!952999 () Bool)

(declare-fun Unit!32070 () Unit!32060)

(assert (=> b!952999 (= e!536794 Unit!32070)))

(declare-fun bm!41641 () Bool)

(assert (=> bm!41641 (= call!41639 call!41644)))

(declare-fun b!953000 () Bool)

(declare-fun lt!429534 () Unit!32060)

(assert (=> b!953000 (= e!536794 lt!429534)))

(declare-fun lt!429548 () ListLongMap!12401)

(assert (=> b!953000 (= lt!429548 (getCurrentListMapNoExtraKeys!3343 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun lt!429529 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429541 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429541 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429536 () Unit!32060)

(declare-fun addStillContains!593 (ListLongMap!12401 (_ BitVec 64) V!32721 (_ BitVec 64)) Unit!32060)

(assert (=> b!953000 (= lt!429536 (addStillContains!593 lt!429548 lt!429529 (zeroValue!5673 thiss!1141) lt!429541))))

(assert (=> b!953000 (contains!5262 (+!2837 lt!429548 (tuple2!13691 lt!429529 (zeroValue!5673 thiss!1141))) lt!429541)))

(declare-fun lt!429528 () Unit!32060)

(assert (=> b!953000 (= lt!429528 lt!429536)))

(declare-fun lt!429537 () ListLongMap!12401)

(assert (=> b!953000 (= lt!429537 (getCurrentListMapNoExtraKeys!3343 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun lt!429532 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429532 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429547 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429547 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429539 () Unit!32060)

(declare-fun addApplyDifferent!467 (ListLongMap!12401 (_ BitVec 64) V!32721 (_ BitVec 64)) Unit!32060)

(assert (=> b!953000 (= lt!429539 (addApplyDifferent!467 lt!429537 lt!429532 (minValue!5673 thiss!1141) lt!429547))))

(assert (=> b!953000 (= (apply!923 (+!2837 lt!429537 (tuple2!13691 lt!429532 (minValue!5673 thiss!1141))) lt!429547) (apply!923 lt!429537 lt!429547))))

(declare-fun lt!429530 () Unit!32060)

(assert (=> b!953000 (= lt!429530 lt!429539)))

(declare-fun lt!429535 () ListLongMap!12401)

(assert (=> b!953000 (= lt!429535 (getCurrentListMapNoExtraKeys!3343 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun lt!429549 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429549 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429531 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429531 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429544 () Unit!32060)

(assert (=> b!953000 (= lt!429544 (addApplyDifferent!467 lt!429535 lt!429549 (zeroValue!5673 thiss!1141) lt!429531))))

(assert (=> b!953000 (= (apply!923 (+!2837 lt!429535 (tuple2!13691 lt!429549 (zeroValue!5673 thiss!1141))) lt!429531) (apply!923 lt!429535 lt!429531))))

(declare-fun lt!429540 () Unit!32060)

(assert (=> b!953000 (= lt!429540 lt!429544)))

(declare-fun lt!429538 () ListLongMap!12401)

(assert (=> b!953000 (= lt!429538 (getCurrentListMapNoExtraKeys!3343 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5837 thiss!1141)))))

(declare-fun lt!429542 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429543 () (_ BitVec 64))

(assert (=> b!953000 (= lt!429543 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!953000 (= lt!429534 (addApplyDifferent!467 lt!429538 lt!429542 (minValue!5673 thiss!1141) lt!429543))))

(assert (=> b!953000 (= (apply!923 (+!2837 lt!429538 (tuple2!13691 lt!429542 (minValue!5673 thiss!1141))) lt!429543) (apply!923 lt!429538 lt!429543))))

(declare-fun b!953001 () Bool)

(assert (=> b!953001 (= e!536789 (validKeyInArray!0 (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!953002 () Bool)

(assert (=> b!953002 (= e!536793 call!41645)))

(declare-fun b!953003 () Bool)

(assert (=> b!953003 (= e!536786 (not call!41643))))

(declare-fun bm!41642 () Bool)

(assert (=> bm!41642 (= call!41644 (+!2837 (ite c!99677 call!41641 (ite c!99681 call!41642 call!41645)) (ite (or c!99677 c!99681) (tuple2!13691 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5673 thiss!1141)) (tuple2!13691 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5673 thiss!1141)))))))

(assert (= (and d!115523 c!99677) b!952986))

(assert (= (and d!115523 (not c!99677)) b!952994))

(assert (= (and b!952994 c!99681) b!952989))

(assert (= (and b!952994 (not c!99681)) b!952983))

(assert (= (and b!952983 c!99679) b!952985))

(assert (= (and b!952983 (not c!99679)) b!953002))

(assert (= (or b!952985 b!953002) bm!41639))

(assert (= (or b!952989 bm!41639) bm!41640))

(assert (= (or b!952989 b!952985) bm!41641))

(assert (= (or b!952986 bm!41640) bm!41637))

(assert (= (or b!952986 bm!41641) bm!41642))

(assert (= (and d!115523 res!638388) b!952988))

(assert (= (and d!115523 c!99678) b!953000))

(assert (= (and d!115523 (not c!99678)) b!952999))

(assert (= (and d!115523 res!638394) b!952997))

(assert (= (and b!952997 res!638392) b!953001))

(assert (= (and b!952997 (not res!638396)) b!952992))

(assert (= (and b!952992 res!638390) b!952990))

(assert (= (and b!952997 res!638393) b!952995))

(assert (= (and b!952995 c!99682) b!952998))

(assert (= (and b!952995 (not c!99682)) b!953003))

(assert (= (and b!952998 res!638389) b!952996))

(assert (= (or b!952998 b!953003) bm!41638))

(assert (= (and b!952995 res!638395) b!952984))

(assert (= (and b!952984 c!99680) b!952993))

(assert (= (and b!952984 (not c!99680)) b!952991))

(assert (= (and b!952993 res!638391) b!952987))

(assert (= (or b!952993 b!952991) bm!41636))

(declare-fun b_lambda!14453 () Bool)

(assert (=> (not b_lambda!14453) (not b!952990)))

(declare-fun t!27873 () Bool)

(declare-fun tb!6219 () Bool)

(assert (=> (and b!952897 (= (defaultEntry!5837 thiss!1141) (defaultEntry!5837 thiss!1141)) t!27873) tb!6219))

(declare-fun result!12363 () Bool)

(assert (=> tb!6219 (= result!12363 tp_is_empty!20817)))

(assert (=> b!952990 t!27873))

(declare-fun b_and!29815 () Bool)

(assert (= b_and!29811 (and (=> t!27873 result!12363) b_and!29815)))

(declare-fun m!885159 () Bool)

(assert (=> bm!41637 m!885159))

(declare-fun m!885161 () Bool)

(assert (=> b!953001 m!885161))

(assert (=> b!953001 m!885161))

(declare-fun m!885163 () Bool)

(assert (=> b!953001 m!885163))

(assert (=> b!952992 m!885161))

(assert (=> b!952992 m!885161))

(declare-fun m!885165 () Bool)

(assert (=> b!952992 m!885165))

(declare-fun m!885167 () Bool)

(assert (=> d!115523 m!885167))

(assert (=> b!952988 m!885161))

(assert (=> b!952988 m!885161))

(assert (=> b!952988 m!885163))

(declare-fun m!885169 () Bool)

(assert (=> bm!41636 m!885169))

(declare-fun m!885171 () Bool)

(assert (=> b!952996 m!885171))

(declare-fun m!885173 () Bool)

(assert (=> b!952990 m!885173))

(assert (=> b!952990 m!885161))

(declare-fun m!885175 () Bool)

(assert (=> b!952990 m!885175))

(declare-fun m!885177 () Bool)

(assert (=> b!952990 m!885177))

(assert (=> b!952990 m!885173))

(assert (=> b!952990 m!885177))

(declare-fun m!885179 () Bool)

(assert (=> b!952990 m!885179))

(assert (=> b!952990 m!885161))

(declare-fun m!885181 () Bool)

(assert (=> bm!41638 m!885181))

(declare-fun m!885183 () Bool)

(assert (=> b!953000 m!885183))

(declare-fun m!885185 () Bool)

(assert (=> b!953000 m!885185))

(declare-fun m!885187 () Bool)

(assert (=> b!953000 m!885187))

(declare-fun m!885189 () Bool)

(assert (=> b!953000 m!885189))

(declare-fun m!885191 () Bool)

(assert (=> b!953000 m!885191))

(declare-fun m!885193 () Bool)

(assert (=> b!953000 m!885193))

(assert (=> b!953000 m!885161))

(declare-fun m!885195 () Bool)

(assert (=> b!953000 m!885195))

(declare-fun m!885197 () Bool)

(assert (=> b!953000 m!885197))

(declare-fun m!885199 () Bool)

(assert (=> b!953000 m!885199))

(assert (=> b!953000 m!885187))

(declare-fun m!885201 () Bool)

(assert (=> b!953000 m!885201))

(declare-fun m!885203 () Bool)

(assert (=> b!953000 m!885203))

(assert (=> b!953000 m!885191))

(declare-fun m!885205 () Bool)

(assert (=> b!953000 m!885205))

(declare-fun m!885207 () Bool)

(assert (=> b!953000 m!885207))

(declare-fun m!885209 () Bool)

(assert (=> b!953000 m!885209))

(assert (=> b!953000 m!885197))

(declare-fun m!885211 () Bool)

(assert (=> b!953000 m!885211))

(assert (=> b!953000 m!885159))

(assert (=> b!953000 m!885207))

(declare-fun m!885213 () Bool)

(assert (=> b!952987 m!885213))

(declare-fun m!885215 () Bool)

(assert (=> bm!41642 m!885215))

(declare-fun m!885217 () Bool)

(assert (=> b!952986 m!885217))

(assert (=> b!952900 d!115523))

(declare-fun d!115525 () Bool)

(assert (=> d!115525 (= (array_inv!21468 (_keys!10792 thiss!1141)) (bvsge (size!28214 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952897 d!115525))

(declare-fun d!115527 () Bool)

(assert (=> d!115527 (= (array_inv!21469 (_values!5860 thiss!1141)) (bvsge (size!28213 (_values!5860 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952897 d!115527))

(declare-fun d!115529 () Bool)

(declare-fun lt!429555 () SeekEntryResult!9155)

(assert (=> d!115529 (and ((_ is Found!9155) lt!429555) (= (index!38991 lt!429555) lt!429451))))

(assert (=> d!115529 (= lt!429555 (seekEntry!0 key!756 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(declare-fun lt!429554 () Unit!32060)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!57696 (_ BitVec 32)) Unit!32060)

(assert (=> d!115529 (= lt!429554 (choose!0 key!756 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(assert (=> d!115529 (validMask!0 (mask!27693 thiss!1141))))

(assert (=> d!115529 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)) lt!429554)))

(declare-fun bs!26767 () Bool)

(assert (= bs!26767 d!115529))

(assert (=> bs!26767 m!885083))

(declare-fun m!885219 () Bool)

(assert (=> bs!26767 m!885219))

(assert (=> bs!26767 m!885167))

(assert (=> b!952893 d!115529))

(declare-fun d!115531 () Bool)

(declare-fun res!638401 () Bool)

(declare-fun e!536802 () Bool)

(assert (=> d!115531 (=> res!638401 e!536802)))

(assert (=> d!115531 (= res!638401 (= (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115531 (= (arrayContainsKey!0 (_keys!10792 thiss!1141) key!756 #b00000000000000000000000000000000) e!536802)))

(declare-fun b!953010 () Bool)

(declare-fun e!536803 () Bool)

(assert (=> b!953010 (= e!536802 e!536803)))

(declare-fun res!638402 () Bool)

(assert (=> b!953010 (=> (not res!638402) (not e!536803))))

(assert (=> b!953010 (= res!638402 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28214 (_keys!10792 thiss!1141))))))

(declare-fun b!953011 () Bool)

(assert (=> b!953011 (= e!536803 (arrayContainsKey!0 (_keys!10792 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115531 (not res!638401)) b!953010))

(assert (= (and b!953010 res!638402) b!953011))

(assert (=> d!115531 m!885161))

(declare-fun m!885221 () Bool)

(assert (=> b!953011 m!885221))

(assert (=> b!952893 d!115531))

(declare-fun d!115533 () Bool)

(declare-fun e!536806 () Bool)

(assert (=> d!115533 e!536806))

(declare-fun c!99685 () Bool)

(assert (=> d!115533 (= c!99685 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!429558 () Unit!32060)

(declare-fun choose!1608 (array!57696 array!57694 (_ BitVec 32) (_ BitVec 32) V!32721 V!32721 (_ BitVec 64) Int) Unit!32060)

(assert (=> d!115533 (= lt!429558 (choose!1608 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) key!756 (defaultEntry!5837 thiss!1141)))))

(assert (=> d!115533 (validMask!0 (mask!27693 thiss!1141))))

(assert (=> d!115533 (= (lemmaKeyInListMapIsInArray!346 (_keys!10792 thiss!1141) (_values!5860 thiss!1141) (mask!27693 thiss!1141) (extraKeys!5569 thiss!1141) (zeroValue!5673 thiss!1141) (minValue!5673 thiss!1141) key!756 (defaultEntry!5837 thiss!1141)) lt!429558)))

(declare-fun b!953016 () Bool)

(assert (=> b!953016 (= e!536806 (arrayContainsKey!0 (_keys!10792 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!953017 () Bool)

(assert (=> b!953017 (= e!536806 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5569 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115533 c!99685) b!953016))

(assert (= (and d!115533 (not c!99685)) b!953017))

(declare-fun m!885223 () Bool)

(assert (=> d!115533 m!885223))

(assert (=> d!115533 m!885167))

(assert (=> b!953016 m!885111))

(assert (=> b!952893 d!115533))

(declare-fun d!115535 () Bool)

(declare-fun lt!429561 () (_ BitVec 32))

(assert (=> d!115535 (and (or (bvslt lt!429561 #b00000000000000000000000000000000) (bvsge lt!429561 (size!28214 (_keys!10792 thiss!1141))) (and (bvsge lt!429561 #b00000000000000000000000000000000) (bvslt lt!429561 (size!28214 (_keys!10792 thiss!1141))))) (bvsge lt!429561 #b00000000000000000000000000000000) (bvslt lt!429561 (size!28214 (_keys!10792 thiss!1141))) (= (select (arr!27734 (_keys!10792 thiss!1141)) lt!429561) key!756))))

(declare-fun e!536809 () (_ BitVec 32))

(assert (=> d!115535 (= lt!429561 e!536809)))

(declare-fun c!99688 () Bool)

(assert (=> d!115535 (= c!99688 (= (select (arr!27734 (_keys!10792 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115535 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))) (bvslt (size!28214 (_keys!10792 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115535 (= (arrayScanForKey!0 (_keys!10792 thiss!1141) key!756 #b00000000000000000000000000000000) lt!429561)))

(declare-fun b!953022 () Bool)

(assert (=> b!953022 (= e!536809 #b00000000000000000000000000000000)))

(declare-fun b!953023 () Bool)

(assert (=> b!953023 (= e!536809 (arrayScanForKey!0 (_keys!10792 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115535 c!99688) b!953022))

(assert (= (and d!115535 (not c!99688)) b!953023))

(declare-fun m!885225 () Bool)

(assert (=> d!115535 m!885225))

(assert (=> d!115535 m!885161))

(declare-fun m!885227 () Bool)

(assert (=> b!953023 m!885227))

(assert (=> b!952893 d!115535))

(declare-fun bm!41645 () Bool)

(declare-fun call!41648 () Bool)

(assert (=> bm!41645 (= call!41648 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!429451 #b00000000000000000000000000000001) (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(declare-fun b!953032 () Bool)

(declare-fun e!536818 () Bool)

(declare-fun e!536816 () Bool)

(assert (=> b!953032 (= e!536818 e!536816)))

(declare-fun lt!429569 () (_ BitVec 64))

(assert (=> b!953032 (= lt!429569 (select (arr!27734 (_keys!10792 thiss!1141)) lt!429451))))

(declare-fun lt!429570 () Unit!32060)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57696 (_ BitVec 64) (_ BitVec 32)) Unit!32060)

(assert (=> b!953032 (= lt!429570 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10792 thiss!1141) lt!429569 lt!429451))))

(assert (=> b!953032 (arrayContainsKey!0 (_keys!10792 thiss!1141) lt!429569 #b00000000000000000000000000000000)))

(declare-fun lt!429568 () Unit!32060)

(assert (=> b!953032 (= lt!429568 lt!429570)))

(declare-fun res!638408 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57696 (_ BitVec 32)) SeekEntryResult!9155)

(assert (=> b!953032 (= res!638408 (= (seekEntryOrOpen!0 (select (arr!27734 (_keys!10792 thiss!1141)) lt!429451) (_keys!10792 thiss!1141) (mask!27693 thiss!1141)) (Found!9155 lt!429451)))))

(assert (=> b!953032 (=> (not res!638408) (not e!536816))))

(declare-fun d!115537 () Bool)

(declare-fun res!638407 () Bool)

(declare-fun e!536817 () Bool)

(assert (=> d!115537 (=> res!638407 e!536817)))

(assert (=> d!115537 (= res!638407 (bvsge lt!429451 (size!28214 (_keys!10792 thiss!1141))))))

(assert (=> d!115537 (= (arrayForallSeekEntryOrOpenFound!0 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)) e!536817)))

(declare-fun b!953033 () Bool)

(assert (=> b!953033 (= e!536817 e!536818)))

(declare-fun c!99691 () Bool)

(assert (=> b!953033 (= c!99691 (validKeyInArray!0 (select (arr!27734 (_keys!10792 thiss!1141)) lt!429451)))))

(declare-fun b!953034 () Bool)

(assert (=> b!953034 (= e!536818 call!41648)))

(declare-fun b!953035 () Bool)

(assert (=> b!953035 (= e!536816 call!41648)))

(assert (= (and d!115537 (not res!638407)) b!953033))

(assert (= (and b!953033 c!99691) b!953032))

(assert (= (and b!953033 (not c!99691)) b!953034))

(assert (= (and b!953032 res!638408) b!953035))

(assert (= (or b!953035 b!953034) bm!41645))

(declare-fun m!885229 () Bool)

(assert (=> bm!41645 m!885229))

(declare-fun m!885231 () Bool)

(assert (=> b!953032 m!885231))

(declare-fun m!885233 () Bool)

(assert (=> b!953032 m!885233))

(declare-fun m!885235 () Bool)

(assert (=> b!953032 m!885235))

(assert (=> b!953032 m!885231))

(declare-fun m!885237 () Bool)

(assert (=> b!953032 m!885237))

(assert (=> b!953033 m!885231))

(assert (=> b!953033 m!885231))

(declare-fun m!885239 () Bool)

(assert (=> b!953033 m!885239))

(assert (=> b!952893 d!115537))

(declare-fun d!115539 () Bool)

(assert (=> d!115539 (arrayForallSeekEntryOrOpenFound!0 lt!429451 (_keys!10792 thiss!1141) (mask!27693 thiss!1141))))

(declare-fun lt!429573 () Unit!32060)

(declare-fun choose!38 (array!57696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32060)

(assert (=> d!115539 (= lt!429573 (choose!38 (_keys!10792 thiss!1141) (mask!27693 thiss!1141) #b00000000000000000000000000000000 lt!429451))))

(assert (=> d!115539 (validMask!0 (mask!27693 thiss!1141))))

(assert (=> d!115539 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10792 thiss!1141) (mask!27693 thiss!1141) #b00000000000000000000000000000000 lt!429451) lt!429573)))

(declare-fun bs!26768 () Bool)

(assert (= bs!26768 d!115539))

(assert (=> bs!26768 m!885105))

(declare-fun m!885241 () Bool)

(assert (=> bs!26768 m!885241))

(assert (=> bs!26768 m!885167))

(assert (=> b!952893 d!115539))

(declare-fun d!115541 () Bool)

(declare-fun res!638415 () Bool)

(declare-fun e!536821 () Bool)

(assert (=> d!115541 (=> (not res!638415) (not e!536821))))

(declare-fun simpleValid!383 (LongMapFixedSize!5004) Bool)

(assert (=> d!115541 (= res!638415 (simpleValid!383 thiss!1141))))

(assert (=> d!115541 (= (valid!1874 thiss!1141) e!536821)))

(declare-fun b!953042 () Bool)

(declare-fun res!638416 () Bool)

(assert (=> b!953042 (=> (not res!638416) (not e!536821))))

(declare-fun arrayCountValidKeys!0 (array!57696 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!953042 (= res!638416 (= (arrayCountValidKeys!0 (_keys!10792 thiss!1141) #b00000000000000000000000000000000 (size!28214 (_keys!10792 thiss!1141))) (_size!2557 thiss!1141)))))

(declare-fun b!953043 () Bool)

(declare-fun res!638417 () Bool)

(assert (=> b!953043 (=> (not res!638417) (not e!536821))))

(assert (=> b!953043 (= res!638417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(declare-fun b!953044 () Bool)

(declare-datatypes ((List!19505 0))(
  ( (Nil!19502) (Cons!19501 (h!20663 (_ BitVec 64)) (t!27874 List!19505)) )
))
(declare-fun arrayNoDuplicates!0 (array!57696 (_ BitVec 32) List!19505) Bool)

(assert (=> b!953044 (= e!536821 (arrayNoDuplicates!0 (_keys!10792 thiss!1141) #b00000000000000000000000000000000 Nil!19502))))

(assert (= (and d!115541 res!638415) b!953042))

(assert (= (and b!953042 res!638416) b!953043))

(assert (= (and b!953043 res!638417) b!953044))

(declare-fun m!885243 () Bool)

(assert (=> d!115541 m!885243))

(declare-fun m!885245 () Bool)

(assert (=> b!953042 m!885245))

(declare-fun m!885247 () Bool)

(assert (=> b!953043 m!885247))

(declare-fun m!885249 () Bool)

(assert (=> b!953044 m!885249))

(assert (=> start!81610 d!115541))

(declare-fun b!953057 () Bool)

(declare-fun e!536830 () SeekEntryResult!9155)

(declare-fun lt!429584 () SeekEntryResult!9155)

(assert (=> b!953057 (= e!536830 (ite ((_ is MissingVacant!9155) lt!429584) (MissingZero!9155 (index!38993 lt!429584)) lt!429584))))

(declare-fun lt!429585 () SeekEntryResult!9155)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57696 (_ BitVec 32)) SeekEntryResult!9155)

(assert (=> b!953057 (= lt!429584 (seekKeyOrZeroReturnVacant!0 (x!81970 lt!429585) (index!38992 lt!429585) (index!38992 lt!429585) key!756 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(declare-fun b!953058 () Bool)

(declare-fun c!99699 () Bool)

(declare-fun lt!429582 () (_ BitVec 64))

(assert (=> b!953058 (= c!99699 (= lt!429582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!536828 () SeekEntryResult!9155)

(assert (=> b!953058 (= e!536828 e!536830)))

(declare-fun b!953059 () Bool)

(declare-fun e!536829 () SeekEntryResult!9155)

(assert (=> b!953059 (= e!536829 Undefined!9155)))

(declare-fun b!953060 () Bool)

(assert (=> b!953060 (= e!536830 (MissingZero!9155 (index!38992 lt!429585)))))

(declare-fun d!115543 () Bool)

(declare-fun lt!429583 () SeekEntryResult!9155)

(assert (=> d!115543 (and (or ((_ is MissingVacant!9155) lt!429583) (not ((_ is Found!9155) lt!429583)) (and (bvsge (index!38991 lt!429583) #b00000000000000000000000000000000) (bvslt (index!38991 lt!429583) (size!28214 (_keys!10792 thiss!1141))))) (not ((_ is MissingVacant!9155) lt!429583)) (or (not ((_ is Found!9155) lt!429583)) (= (select (arr!27734 (_keys!10792 thiss!1141)) (index!38991 lt!429583)) key!756)))))

(assert (=> d!115543 (= lt!429583 e!536829)))

(declare-fun c!99698 () Bool)

(assert (=> d!115543 (= c!99698 (and ((_ is Intermediate!9155) lt!429585) (undefined!9967 lt!429585)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57696 (_ BitVec 32)) SeekEntryResult!9155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115543 (= lt!429585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27693 thiss!1141)) key!756 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)))))

(assert (=> d!115543 (validMask!0 (mask!27693 thiss!1141))))

(assert (=> d!115543 (= (seekEntry!0 key!756 (_keys!10792 thiss!1141) (mask!27693 thiss!1141)) lt!429583)))

(declare-fun b!953061 () Bool)

(assert (=> b!953061 (= e!536828 (Found!9155 (index!38992 lt!429585)))))

(declare-fun b!953062 () Bool)

(assert (=> b!953062 (= e!536829 e!536828)))

(assert (=> b!953062 (= lt!429582 (select (arr!27734 (_keys!10792 thiss!1141)) (index!38992 lt!429585)))))

(declare-fun c!99700 () Bool)

(assert (=> b!953062 (= c!99700 (= lt!429582 key!756))))

(assert (= (and d!115543 c!99698) b!953059))

(assert (= (and d!115543 (not c!99698)) b!953062))

(assert (= (and b!953062 c!99700) b!953061))

(assert (= (and b!953062 (not c!99700)) b!953058))

(assert (= (and b!953058 c!99699) b!953060))

(assert (= (and b!953058 (not c!99699)) b!953057))

(declare-fun m!885251 () Bool)

(assert (=> b!953057 m!885251))

(declare-fun m!885253 () Bool)

(assert (=> d!115543 m!885253))

(declare-fun m!885255 () Bool)

(assert (=> d!115543 m!885255))

(assert (=> d!115543 m!885255))

(declare-fun m!885257 () Bool)

(assert (=> d!115543 m!885257))

(assert (=> d!115543 m!885167))

(declare-fun m!885259 () Bool)

(assert (=> b!953062 m!885259))

(assert (=> b!952901 d!115543))

(declare-fun mapNonEmpty!33175 () Bool)

(declare-fun mapRes!33175 () Bool)

(declare-fun tp!63565 () Bool)

(declare-fun e!536836 () Bool)

(assert (=> mapNonEmpty!33175 (= mapRes!33175 (and tp!63565 e!536836))))

(declare-fun mapKey!33175 () (_ BitVec 32))

(declare-fun mapRest!33175 () (Array (_ BitVec 32) ValueCell!9927))

(declare-fun mapValue!33175 () ValueCell!9927)

(assert (=> mapNonEmpty!33175 (= mapRest!33169 (store mapRest!33175 mapKey!33175 mapValue!33175))))

(declare-fun b!953070 () Bool)

(declare-fun e!536835 () Bool)

(assert (=> b!953070 (= e!536835 tp_is_empty!20817)))

(declare-fun b!953069 () Bool)

(assert (=> b!953069 (= e!536836 tp_is_empty!20817)))

(declare-fun mapIsEmpty!33175 () Bool)

(assert (=> mapIsEmpty!33175 mapRes!33175))

(declare-fun condMapEmpty!33175 () Bool)

(declare-fun mapDefault!33175 () ValueCell!9927)

(assert (=> mapNonEmpty!33169 (= condMapEmpty!33175 (= mapRest!33169 ((as const (Array (_ BitVec 32) ValueCell!9927)) mapDefault!33175)))))

(assert (=> mapNonEmpty!33169 (= tp!63556 (and e!536835 mapRes!33175))))

(assert (= (and mapNonEmpty!33169 condMapEmpty!33175) mapIsEmpty!33175))

(assert (= (and mapNonEmpty!33169 (not condMapEmpty!33175)) mapNonEmpty!33175))

(assert (= (and mapNonEmpty!33175 ((_ is ValueCellFull!9927) mapValue!33175)) b!953069))

(assert (= (and mapNonEmpty!33169 ((_ is ValueCellFull!9927) mapDefault!33175)) b!953070))

(declare-fun m!885261 () Bool)

(assert (=> mapNonEmpty!33175 m!885261))

(declare-fun b_lambda!14455 () Bool)

(assert (= b_lambda!14453 (or (and b!952897 b_free!18309) b_lambda!14455)))

(check-sat (not b!953000) (not d!115541) (not bm!41645) (not b!953011) (not b!953044) (not b!952987) (not b!952996) (not b!952988) (not b!953023) (not b!953033) (not b!952937) (not mapNonEmpty!33175) (not d!115521) (not b!953043) (not b!953001) (not d!115529) (not d!115533) (not d!115519) b_and!29815 (not bm!41642) (not b!952940) (not d!115543) (not d!115523) (not b!953016) (not b_lambda!14455) (not b!952935) (not b!953032) (not bm!41638) (not b!953057) (not b!953042) (not b!952938) (not d!115539) (not bm!41637) (not d!115517) (not bm!41636) tp_is_empty!20817 (not b!952990) (not b!952992) (not b!952986) (not b_next!18309))
(check-sat b_and!29815 (not b_next!18309))
