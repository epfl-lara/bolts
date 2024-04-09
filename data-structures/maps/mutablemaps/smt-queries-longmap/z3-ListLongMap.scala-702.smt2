; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16730 () Bool)

(assert start!16730)

(declare-fun b!167727 () Bool)

(declare-fun b_free!4023 () Bool)

(declare-fun b_next!4023 () Bool)

(assert (=> b!167727 (= b_free!4023 (not b_next!4023))))

(declare-fun tp!14669 () Bool)

(declare-fun b_and!10455 () Bool)

(assert (=> b!167727 (= tp!14669 b_and!10455)))

(declare-fun b!167716 () Bool)

(declare-fun e!110195 () Bool)

(declare-fun e!110197 () Bool)

(assert (=> b!167716 (= e!110195 (not e!110197))))

(declare-fun res!79809 () Bool)

(assert (=> b!167716 (=> res!79809 e!110197)))

(declare-datatypes ((V!4747 0))(
  ( (V!4748 (val!1957 Int)) )
))
(declare-datatypes ((ValueCell!1569 0))(
  ( (ValueCellFull!1569 (v!3818 V!4747)) (EmptyCell!1569) )
))
(declare-datatypes ((array!6746 0))(
  ( (array!6747 (arr!3208 (Array (_ BitVec 32) (_ BitVec 64))) (size!3496 (_ BitVec 32))) )
))
(declare-datatypes ((array!6748 0))(
  ( (array!6749 (arr!3209 (Array (_ BitVec 32) ValueCell!1569)) (size!3497 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2046 0))(
  ( (LongMapFixedSize!2047 (defaultEntry!3465 Int) (mask!8218 (_ BitVec 32)) (extraKeys!3206 (_ BitVec 32)) (zeroValue!3308 V!4747) (minValue!3308 V!4747) (_size!1072 (_ BitVec 32)) (_keys!5290 array!6746) (_values!3448 array!6748) (_vacant!1072 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2046)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167716 (= res!79809 (not (validMask!0 (mask!8218 thiss!1248))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4747)

(declare-datatypes ((tuple2!3146 0))(
  ( (tuple2!3147 (_1!1583 (_ BitVec 64)) (_2!1583 V!4747)) )
))
(declare-datatypes ((List!2158 0))(
  ( (Nil!2155) (Cons!2154 (h!2771 tuple2!3146) (t!6968 List!2158)) )
))
(declare-datatypes ((ListLongMap!2115 0))(
  ( (ListLongMap!2116 (toList!1073 List!2158)) )
))
(declare-fun lt!83888 () ListLongMap!2115)

(declare-datatypes ((SeekEntryResult!496 0))(
  ( (MissingZero!496 (index!4152 (_ BitVec 32))) (Found!496 (index!4153 (_ BitVec 32))) (Intermediate!496 (undefined!1308 Bool) (index!4154 (_ BitVec 32)) (x!18564 (_ BitVec 32))) (Undefined!496) (MissingVacant!496 (index!4155 (_ BitVec 32))) )
))
(declare-fun lt!83884 () SeekEntryResult!496)

(declare-fun +!215 (ListLongMap!2115 tuple2!3146) ListLongMap!2115)

(declare-fun getCurrentListMap!726 (array!6746 array!6748 (_ BitVec 32) (_ BitVec 32) V!4747 V!4747 (_ BitVec 32) Int) ListLongMap!2115)

(assert (=> b!167716 (= (+!215 lt!83888 (tuple2!3147 key!828 v!309)) (getCurrentListMap!726 (_keys!5290 thiss!1248) (array!6749 (store (arr!3209 (_values!3448 thiss!1248)) (index!4153 lt!83884) (ValueCellFull!1569 v!309)) (size!3497 (_values!3448 thiss!1248))) (mask!8218 thiss!1248) (extraKeys!3206 thiss!1248) (zeroValue!3308 thiss!1248) (minValue!3308 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3465 thiss!1248)))))

(declare-datatypes ((Unit!5142 0))(
  ( (Unit!5143) )
))
(declare-fun lt!83886 () Unit!5142)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!75 (array!6746 array!6748 (_ BitVec 32) (_ BitVec 32) V!4747 V!4747 (_ BitVec 32) (_ BitVec 64) V!4747 Int) Unit!5142)

(assert (=> b!167716 (= lt!83886 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!75 (_keys!5290 thiss!1248) (_values!3448 thiss!1248) (mask!8218 thiss!1248) (extraKeys!3206 thiss!1248) (zeroValue!3308 thiss!1248) (minValue!3308 thiss!1248) (index!4153 lt!83884) key!828 v!309 (defaultEntry!3465 thiss!1248)))))

(declare-fun lt!83885 () Unit!5142)

(declare-fun e!110192 () Unit!5142)

(assert (=> b!167716 (= lt!83885 e!110192)))

(declare-fun c!30297 () Bool)

(declare-fun contains!1109 (ListLongMap!2115 (_ BitVec 64)) Bool)

(assert (=> b!167716 (= c!30297 (contains!1109 lt!83888 key!828))))

(assert (=> b!167716 (= lt!83888 (getCurrentListMap!726 (_keys!5290 thiss!1248) (_values!3448 thiss!1248) (mask!8218 thiss!1248) (extraKeys!3206 thiss!1248) (zeroValue!3308 thiss!1248) (minValue!3308 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3465 thiss!1248)))))

(declare-fun b!167717 () Bool)

(declare-fun e!110193 () Bool)

(declare-fun e!110191 () Bool)

(declare-fun mapRes!6456 () Bool)

(assert (=> b!167717 (= e!110193 (and e!110191 mapRes!6456))))

(declare-fun condMapEmpty!6456 () Bool)

(declare-fun mapDefault!6456 () ValueCell!1569)

(assert (=> b!167717 (= condMapEmpty!6456 (= (arr!3209 (_values!3448 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1569)) mapDefault!6456)))))

(declare-fun b!167718 () Bool)

(declare-fun Unit!5144 () Unit!5142)

(assert (=> b!167718 (= e!110192 Unit!5144)))

(declare-fun lt!83882 () Unit!5142)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!110 (array!6746 array!6748 (_ BitVec 32) (_ BitVec 32) V!4747 V!4747 (_ BitVec 64) Int) Unit!5142)

(assert (=> b!167718 (= lt!83882 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!110 (_keys!5290 thiss!1248) (_values!3448 thiss!1248) (mask!8218 thiss!1248) (extraKeys!3206 thiss!1248) (zeroValue!3308 thiss!1248) (minValue!3308 thiss!1248) key!828 (defaultEntry!3465 thiss!1248)))))

(assert (=> b!167718 false))

(declare-fun res!79808 () Bool)

(declare-fun e!110200 () Bool)

(assert (=> start!16730 (=> (not res!79808) (not e!110200))))

(declare-fun valid!883 (LongMapFixedSize!2046) Bool)

(assert (=> start!16730 (= res!79808 (valid!883 thiss!1248))))

(assert (=> start!16730 e!110200))

(declare-fun e!110198 () Bool)

(assert (=> start!16730 e!110198))

(assert (=> start!16730 true))

(declare-fun tp_is_empty!3825 () Bool)

(assert (=> start!16730 tp_is_empty!3825))

(declare-fun b!167719 () Bool)

(assert (=> b!167719 (= e!110200 e!110195)))

(declare-fun res!79806 () Bool)

(assert (=> b!167719 (=> (not res!79806) (not e!110195))))

(get-info :version)

(assert (=> b!167719 (= res!79806 (and (not ((_ is Undefined!496) lt!83884)) (not ((_ is MissingVacant!496) lt!83884)) (not ((_ is MissingZero!496) lt!83884)) ((_ is Found!496) lt!83884)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6746 (_ BitVec 32)) SeekEntryResult!496)

(assert (=> b!167719 (= lt!83884 (seekEntryOrOpen!0 key!828 (_keys!5290 thiss!1248) (mask!8218 thiss!1248)))))

(declare-fun b!167720 () Bool)

(declare-fun e!110199 () Bool)

(assert (=> b!167720 (= e!110199 tp_is_empty!3825)))

(declare-fun e!110196 () Bool)

(declare-fun b!167721 () Bool)

(assert (=> b!167721 (= e!110196 (= (select (arr!3208 (_keys!5290 thiss!1248)) (index!4153 lt!83884)) key!828))))

(declare-fun b!167722 () Bool)

(declare-fun res!79811 () Bool)

(assert (=> b!167722 (=> res!79811 e!110197)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6746 (_ BitVec 32)) Bool)

(assert (=> b!167722 (= res!79811 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5290 thiss!1248) (mask!8218 thiss!1248))))))

(declare-fun b!167723 () Bool)

(assert (=> b!167723 (= e!110191 tp_is_empty!3825)))

(declare-fun b!167724 () Bool)

(declare-fun lt!83883 () Unit!5142)

(assert (=> b!167724 (= e!110192 lt!83883)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!112 (array!6746 array!6748 (_ BitVec 32) (_ BitVec 32) V!4747 V!4747 (_ BitVec 64) Int) Unit!5142)

(assert (=> b!167724 (= lt!83883 (lemmaInListMapThenSeekEntryOrOpenFindsIt!112 (_keys!5290 thiss!1248) (_values!3448 thiss!1248) (mask!8218 thiss!1248) (extraKeys!3206 thiss!1248) (zeroValue!3308 thiss!1248) (minValue!3308 thiss!1248) key!828 (defaultEntry!3465 thiss!1248)))))

(declare-fun res!79812 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167724 (= res!79812 (inRange!0 (index!4153 lt!83884) (mask!8218 thiss!1248)))))

(assert (=> b!167724 (=> (not res!79812) (not e!110196))))

(assert (=> b!167724 e!110196))

(declare-fun b!167725 () Bool)

(declare-fun res!79807 () Bool)

(assert (=> b!167725 (=> res!79807 e!110197)))

(assert (=> b!167725 (= res!79807 (or (not (= (size!3497 (_values!3448 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8218 thiss!1248)))) (not (= (size!3496 (_keys!5290 thiss!1248)) (size!3497 (_values!3448 thiss!1248)))) (bvslt (mask!8218 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3206 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3206 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!6456 () Bool)

(assert (=> mapIsEmpty!6456 mapRes!6456))

(declare-fun mapNonEmpty!6456 () Bool)

(declare-fun tp!14670 () Bool)

(assert (=> mapNonEmpty!6456 (= mapRes!6456 (and tp!14670 e!110199))))

(declare-fun mapRest!6456 () (Array (_ BitVec 32) ValueCell!1569))

(declare-fun mapKey!6456 () (_ BitVec 32))

(declare-fun mapValue!6456 () ValueCell!1569)

(assert (=> mapNonEmpty!6456 (= (arr!3209 (_values!3448 thiss!1248)) (store mapRest!6456 mapKey!6456 mapValue!6456))))

(declare-fun b!167726 () Bool)

(declare-fun res!79810 () Bool)

(assert (=> b!167726 (=> (not res!79810) (not e!110200))))

(assert (=> b!167726 (= res!79810 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2055 (array!6746) Bool)

(declare-fun array_inv!2056 (array!6748) Bool)

(assert (=> b!167727 (= e!110198 (and tp!14669 tp_is_empty!3825 (array_inv!2055 (_keys!5290 thiss!1248)) (array_inv!2056 (_values!3448 thiss!1248)) e!110193))))

(declare-fun b!167728 () Bool)

(assert (=> b!167728 (= e!110197 true)))

(declare-fun lt!83887 () Bool)

(declare-datatypes ((List!2159 0))(
  ( (Nil!2156) (Cons!2155 (h!2772 (_ BitVec 64)) (t!6969 List!2159)) )
))
(declare-fun arrayNoDuplicates!0 (array!6746 (_ BitVec 32) List!2159) Bool)

(assert (=> b!167728 (= lt!83887 (arrayNoDuplicates!0 (_keys!5290 thiss!1248) #b00000000000000000000000000000000 Nil!2156))))

(assert (= (and start!16730 res!79808) b!167726))

(assert (= (and b!167726 res!79810) b!167719))

(assert (= (and b!167719 res!79806) b!167716))

(assert (= (and b!167716 c!30297) b!167724))

(assert (= (and b!167716 (not c!30297)) b!167718))

(assert (= (and b!167724 res!79812) b!167721))

(assert (= (and b!167716 (not res!79809)) b!167725))

(assert (= (and b!167725 (not res!79807)) b!167722))

(assert (= (and b!167722 (not res!79811)) b!167728))

(assert (= (and b!167717 condMapEmpty!6456) mapIsEmpty!6456))

(assert (= (and b!167717 (not condMapEmpty!6456)) mapNonEmpty!6456))

(assert (= (and mapNonEmpty!6456 ((_ is ValueCellFull!1569) mapValue!6456)) b!167720))

(assert (= (and b!167717 ((_ is ValueCellFull!1569) mapDefault!6456)) b!167723))

(assert (= b!167727 b!167717))

(assert (= start!16730 b!167727))

(declare-fun m!196865 () Bool)

(assert (=> b!167719 m!196865))

(declare-fun m!196867 () Bool)

(assert (=> b!167716 m!196867))

(declare-fun m!196869 () Bool)

(assert (=> b!167716 m!196869))

(declare-fun m!196871 () Bool)

(assert (=> b!167716 m!196871))

(declare-fun m!196873 () Bool)

(assert (=> b!167716 m!196873))

(declare-fun m!196875 () Bool)

(assert (=> b!167716 m!196875))

(declare-fun m!196877 () Bool)

(assert (=> b!167716 m!196877))

(declare-fun m!196879 () Bool)

(assert (=> b!167716 m!196879))

(declare-fun m!196881 () Bool)

(assert (=> b!167724 m!196881))

(declare-fun m!196883 () Bool)

(assert (=> b!167724 m!196883))

(declare-fun m!196885 () Bool)

(assert (=> b!167722 m!196885))

(declare-fun m!196887 () Bool)

(assert (=> b!167718 m!196887))

(declare-fun m!196889 () Bool)

(assert (=> b!167728 m!196889))

(declare-fun m!196891 () Bool)

(assert (=> start!16730 m!196891))

(declare-fun m!196893 () Bool)

(assert (=> mapNonEmpty!6456 m!196893))

(declare-fun m!196895 () Bool)

(assert (=> b!167727 m!196895))

(declare-fun m!196897 () Bool)

(assert (=> b!167727 m!196897))

(declare-fun m!196899 () Bool)

(assert (=> b!167721 m!196899))

(check-sat (not b!167718) b_and!10455 (not b!167722) (not b!167724) (not b!167727) (not b!167719) (not b_next!4023) (not start!16730) tp_is_empty!3825 (not mapNonEmpty!6456) (not b!167716) (not b!167728))
(check-sat b_and!10455 (not b_next!4023))
