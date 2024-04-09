; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80460 () Bool)

(assert start!80460)

(declare-fun b!944744 () Bool)

(declare-fun b_free!18075 () Bool)

(declare-fun b_next!18075 () Bool)

(assert (=> b!944744 (= b_free!18075 (not b_next!18075))))

(declare-fun tp!62735 () Bool)

(declare-fun b_and!29511 () Bool)

(assert (=> b!944744 (= tp!62735 b_and!29511)))

(declare-fun b!944737 () Bool)

(declare-fun res!634763 () Bool)

(declare-fun e!531313 () Bool)

(assert (=> b!944737 (=> (not res!634763) (not e!531313))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944737 (= res!634763 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944738 () Bool)

(declare-fun e!531314 () Bool)

(declare-fun e!531318 () Bool)

(declare-fun mapRes!32700 () Bool)

(assert (=> b!944738 (= e!531314 (and e!531318 mapRes!32700))))

(declare-fun condMapEmpty!32700 () Bool)

(declare-datatypes ((V!32409 0))(
  ( (V!32410 (val!10342 Int)) )
))
(declare-datatypes ((ValueCell!9810 0))(
  ( (ValueCellFull!9810 (v!12874 V!32409)) (EmptyCell!9810) )
))
(declare-datatypes ((array!57156 0))(
  ( (array!57157 (arr!27499 (Array (_ BitVec 32) ValueCell!9810)) (size!27966 (_ BitVec 32))) )
))
(declare-datatypes ((array!57158 0))(
  ( (array!57159 (arr!27500 (Array (_ BitVec 32) (_ BitVec 64))) (size!27967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4770 0))(
  ( (LongMapFixedSize!4771 (defaultEntry!5680 Int) (mask!27331 (_ BitVec 32)) (extraKeys!5412 (_ BitVec 32)) (zeroValue!5516 V!32409) (minValue!5516 V!32409) (_size!2440 (_ BitVec 32)) (_keys!10554 array!57158) (_values!5703 array!57156) (_vacant!2440 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4770)

(declare-fun mapDefault!32700 () ValueCell!9810)

(assert (=> b!944738 (= condMapEmpty!32700 (= (arr!27499 (_values!5703 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9810)) mapDefault!32700)))))

(declare-fun mapNonEmpty!32700 () Bool)

(declare-fun tp!62736 () Bool)

(declare-fun e!531317 () Bool)

(assert (=> mapNonEmpty!32700 (= mapRes!32700 (and tp!62736 e!531317))))

(declare-fun mapRest!32700 () (Array (_ BitVec 32) ValueCell!9810))

(declare-fun mapKey!32700 () (_ BitVec 32))

(declare-fun mapValue!32700 () ValueCell!9810)

(assert (=> mapNonEmpty!32700 (= (arr!27499 (_values!5703 thiss!1141)) (store mapRest!32700 mapKey!32700 mapValue!32700))))

(declare-fun res!634761 () Bool)

(assert (=> start!80460 (=> (not res!634761) (not e!531313))))

(declare-fun valid!1799 (LongMapFixedSize!4770) Bool)

(assert (=> start!80460 (= res!634761 (valid!1799 thiss!1141))))

(assert (=> start!80460 e!531313))

(declare-fun e!531312 () Bool)

(assert (=> start!80460 e!531312))

(assert (=> start!80460 true))

(declare-fun b!944739 () Bool)

(declare-fun res!634767 () Bool)

(declare-fun e!531315 () Bool)

(assert (=> b!944739 (=> res!634767 e!531315)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944739 (= res!634767 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944740 () Bool)

(declare-fun res!634762 () Bool)

(assert (=> b!944740 (=> res!634762 e!531315)))

(assert (=> b!944740 (= res!634762 (not (= (size!27967 (_keys!10554 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27331 thiss!1141)))))))

(declare-fun b!944741 () Bool)

(declare-fun tp_is_empty!20583 () Bool)

(assert (=> b!944741 (= e!531317 tp_is_empty!20583)))

(declare-fun b!944742 () Bool)

(assert (=> b!944742 (= e!531313 (not e!531315))))

(declare-fun res!634768 () Bool)

(assert (=> b!944742 (=> res!634768 e!531315)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944742 (= res!634768 (not (validMask!0 (mask!27331 thiss!1141))))))

(declare-fun lt!425725 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57158 (_ BitVec 32)) Bool)

(assert (=> b!944742 (arrayForallSeekEntryOrOpenFound!0 lt!425725 (_keys!10554 thiss!1141) (mask!27331 thiss!1141))))

(declare-datatypes ((Unit!31865 0))(
  ( (Unit!31866) )
))
(declare-fun lt!425724 () Unit!31865)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31865)

(assert (=> b!944742 (= lt!425724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10554 thiss!1141) (mask!27331 thiss!1141) #b00000000000000000000000000000000 lt!425725))))

(declare-fun arrayScanForKey!0 (array!57158 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944742 (= lt!425725 (arrayScanForKey!0 (_keys!10554 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944742 (arrayContainsKey!0 (_keys!10554 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425726 () Unit!31865)

(declare-fun lemmaKeyInListMapIsInArray!316 (array!57158 array!57156 (_ BitVec 32) (_ BitVec 32) V!32409 V!32409 (_ BitVec 64) Int) Unit!31865)

(assert (=> b!944742 (= lt!425726 (lemmaKeyInListMapIsInArray!316 (_keys!10554 thiss!1141) (_values!5703 thiss!1141) (mask!27331 thiss!1141) (extraKeys!5412 thiss!1141) (zeroValue!5516 thiss!1141) (minValue!5516 thiss!1141) key!756 (defaultEntry!5680 thiss!1141)))))

(declare-fun b!944743 () Bool)

(declare-fun res!634766 () Bool)

(assert (=> b!944743 (=> res!634766 e!531315)))

(assert (=> b!944743 (= res!634766 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10554 thiss!1141) (mask!27331 thiss!1141))))))

(declare-fun array_inv!21308 (array!57158) Bool)

(declare-fun array_inv!21309 (array!57156) Bool)

(assert (=> b!944744 (= e!531312 (and tp!62735 tp_is_empty!20583 (array_inv!21308 (_keys!10554 thiss!1141)) (array_inv!21309 (_values!5703 thiss!1141)) e!531314))))

(declare-fun mapIsEmpty!32700 () Bool)

(assert (=> mapIsEmpty!32700 mapRes!32700))

(declare-fun b!944745 () Bool)

(declare-fun res!634764 () Bool)

(assert (=> b!944745 (=> (not res!634764) (not e!531313))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9070 0))(
  ( (MissingZero!9070 (index!38650 (_ BitVec 32))) (Found!9070 (index!38651 (_ BitVec 32))) (Intermediate!9070 (undefined!9882 Bool) (index!38652 (_ BitVec 32)) (x!81146 (_ BitVec 32))) (Undefined!9070) (MissingVacant!9070 (index!38653 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57158 (_ BitVec 32)) SeekEntryResult!9070)

(assert (=> b!944745 (= res!634764 (not ((_ is Found!9070) (seekEntry!0 key!756 (_keys!10554 thiss!1141) (mask!27331 thiss!1141)))))))

(declare-fun b!944746 () Bool)

(assert (=> b!944746 (= e!531315 true)))

(declare-fun lt!425723 () SeekEntryResult!9070)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57158 (_ BitVec 32)) SeekEntryResult!9070)

(assert (=> b!944746 (= lt!425723 (seekEntryOrOpen!0 key!756 (_keys!10554 thiss!1141) (mask!27331 thiss!1141)))))

(declare-fun b!944747 () Bool)

(assert (=> b!944747 (= e!531318 tp_is_empty!20583)))

(declare-fun b!944748 () Bool)

(declare-fun res!634765 () Bool)

(assert (=> b!944748 (=> (not res!634765) (not e!531313))))

(declare-datatypes ((tuple2!13592 0))(
  ( (tuple2!13593 (_1!6806 (_ BitVec 64)) (_2!6806 V!32409)) )
))
(declare-datatypes ((List!19410 0))(
  ( (Nil!19407) (Cons!19406 (h!20557 tuple2!13592) (t!27735 List!19410)) )
))
(declare-datatypes ((ListLongMap!12303 0))(
  ( (ListLongMap!12304 (toList!6167 List!19410)) )
))
(declare-fun contains!5190 (ListLongMap!12303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3355 (array!57158 array!57156 (_ BitVec 32) (_ BitVec 32) V!32409 V!32409 (_ BitVec 32) Int) ListLongMap!12303)

(assert (=> b!944748 (= res!634765 (contains!5190 (getCurrentListMap!3355 (_keys!10554 thiss!1141) (_values!5703 thiss!1141) (mask!27331 thiss!1141) (extraKeys!5412 thiss!1141) (zeroValue!5516 thiss!1141) (minValue!5516 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5680 thiss!1141)) key!756))))

(assert (= (and start!80460 res!634761) b!944737))

(assert (= (and b!944737 res!634763) b!944745))

(assert (= (and b!944745 res!634764) b!944748))

(assert (= (and b!944748 res!634765) b!944742))

(assert (= (and b!944742 (not res!634768)) b!944740))

(assert (= (and b!944740 (not res!634762)) b!944743))

(assert (= (and b!944743 (not res!634766)) b!944739))

(assert (= (and b!944739 (not res!634767)) b!944746))

(assert (= (and b!944738 condMapEmpty!32700) mapIsEmpty!32700))

(assert (= (and b!944738 (not condMapEmpty!32700)) mapNonEmpty!32700))

(assert (= (and mapNonEmpty!32700 ((_ is ValueCellFull!9810) mapValue!32700)) b!944741))

(assert (= (and b!944738 ((_ is ValueCellFull!9810) mapDefault!32700)) b!944747))

(assert (= b!944744 b!944738))

(assert (= start!80460 b!944744))

(declare-fun m!878793 () Bool)

(assert (=> b!944745 m!878793))

(declare-fun m!878795 () Bool)

(assert (=> mapNonEmpty!32700 m!878795))

(declare-fun m!878797 () Bool)

(assert (=> b!944742 m!878797))

(declare-fun m!878799 () Bool)

(assert (=> b!944742 m!878799))

(declare-fun m!878801 () Bool)

(assert (=> b!944742 m!878801))

(declare-fun m!878803 () Bool)

(assert (=> b!944742 m!878803))

(declare-fun m!878805 () Bool)

(assert (=> b!944742 m!878805))

(declare-fun m!878807 () Bool)

(assert (=> b!944742 m!878807))

(declare-fun m!878809 () Bool)

(assert (=> b!944744 m!878809))

(declare-fun m!878811 () Bool)

(assert (=> b!944744 m!878811))

(declare-fun m!878813 () Bool)

(assert (=> b!944746 m!878813))

(declare-fun m!878815 () Bool)

(assert (=> b!944748 m!878815))

(assert (=> b!944748 m!878815))

(declare-fun m!878817 () Bool)

(assert (=> b!944748 m!878817))

(declare-fun m!878819 () Bool)

(assert (=> start!80460 m!878819))

(declare-fun m!878821 () Bool)

(assert (=> b!944739 m!878821))

(declare-fun m!878823 () Bool)

(assert (=> b!944743 m!878823))

(check-sat b_and!29511 (not b!944739) tp_is_empty!20583 (not b!944746) (not b!944744) (not start!80460) (not b_next!18075) (not b!944745) (not b!944742) (not mapNonEmpty!32700) (not b!944743) (not b!944748))
(check-sat b_and!29511 (not b_next!18075))
