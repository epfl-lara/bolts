; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80920 () Bool)

(assert start!80920)

(declare-fun b!947702 () Bool)

(declare-fun b_free!18189 () Bool)

(declare-fun b_next!18189 () Bool)

(assert (=> b!947702 (= b_free!18189 (not b_next!18189))))

(declare-fun tp!63136 () Bool)

(declare-fun b_and!29631 () Bool)

(assert (=> b!947702 (= tp!63136 b_and!29631)))

(declare-fun res!636063 () Bool)

(declare-fun e!533498 () Bool)

(assert (=> start!80920 (=> (not res!636063) (not e!533498))))

(declare-datatypes ((V!32561 0))(
  ( (V!32562 (val!10399 Int)) )
))
(declare-datatypes ((ValueCell!9867 0))(
  ( (ValueCellFull!9867 (v!12934 V!32561)) (EmptyCell!9867) )
))
(declare-datatypes ((array!57418 0))(
  ( (array!57419 (arr!27613 (Array (_ BitVec 32) ValueCell!9867)) (size!28087 (_ BitVec 32))) )
))
(declare-datatypes ((array!57420 0))(
  ( (array!57421 (arr!27614 (Array (_ BitVec 32) (_ BitVec 64))) (size!28088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4884 0))(
  ( (LongMapFixedSize!4885 (defaultEntry!5741 Int) (mask!27482 (_ BitVec 32)) (extraKeys!5473 (_ BitVec 32)) (zeroValue!5577 V!32561) (minValue!5577 V!32561) (_size!2497 (_ BitVec 32)) (_keys!10651 array!57420) (_values!5764 array!57418) (_vacant!2497 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4884)

(declare-fun valid!1838 (LongMapFixedSize!4884) Bool)

(assert (=> start!80920 (= res!636063 (valid!1838 thiss!1141))))

(assert (=> start!80920 e!533498))

(declare-fun e!533495 () Bool)

(assert (=> start!80920 e!533495))

(assert (=> start!80920 true))

(declare-fun b!947701 () Bool)

(declare-fun e!533499 () Bool)

(declare-fun tp_is_empty!20697 () Bool)

(assert (=> b!947701 (= e!533499 tp_is_empty!20697)))

(declare-fun e!533497 () Bool)

(declare-fun array_inv!21384 (array!57420) Bool)

(declare-fun array_inv!21385 (array!57418) Bool)

(assert (=> b!947702 (= e!533495 (and tp!63136 tp_is_empty!20697 (array_inv!21384 (_keys!10651 thiss!1141)) (array_inv!21385 (_values!5764 thiss!1141)) e!533497))))

(declare-fun b!947703 () Bool)

(declare-fun e!533496 () Bool)

(declare-fun mapRes!32929 () Bool)

(assert (=> b!947703 (= e!533497 (and e!533496 mapRes!32929))))

(declare-fun condMapEmpty!32929 () Bool)

(declare-fun mapDefault!32929 () ValueCell!9867)

(assert (=> b!947703 (= condMapEmpty!32929 (= (arr!27613 (_values!5764 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9867)) mapDefault!32929)))))

(declare-fun b!947704 () Bool)

(declare-fun res!636061 () Bool)

(assert (=> b!947704 (=> (not res!636061) (not e!533498))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9113 0))(
  ( (MissingZero!9113 (index!38822 (_ BitVec 32))) (Found!9113 (index!38823 (_ BitVec 32))) (Intermediate!9113 (undefined!9925 Bool) (index!38824 (_ BitVec 32)) (x!81540 (_ BitVec 32))) (Undefined!9113) (MissingVacant!9113 (index!38825 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57420 (_ BitVec 32)) SeekEntryResult!9113)

(assert (=> b!947704 (= res!636061 (not ((_ is Found!9113) (seekEntry!0 key!756 (_keys!10651 thiss!1141) (mask!27482 thiss!1141)))))))

(declare-fun mapNonEmpty!32929 () Bool)

(declare-fun tp!63135 () Bool)

(assert (=> mapNonEmpty!32929 (= mapRes!32929 (and tp!63135 e!533499))))

(declare-fun mapValue!32929 () ValueCell!9867)

(declare-fun mapKey!32929 () (_ BitVec 32))

(declare-fun mapRest!32929 () (Array (_ BitVec 32) ValueCell!9867))

(assert (=> mapNonEmpty!32929 (= (arr!27613 (_values!5764 thiss!1141)) (store mapRest!32929 mapKey!32929 mapValue!32929))))

(declare-fun b!947705 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947705 (= e!533498 (not (validMask!0 (mask!27482 thiss!1141))))))

(declare-fun mapIsEmpty!32929 () Bool)

(assert (=> mapIsEmpty!32929 mapRes!32929))

(declare-fun b!947706 () Bool)

(assert (=> b!947706 (= e!533496 tp_is_empty!20697)))

(declare-fun b!947707 () Bool)

(declare-fun res!636060 () Bool)

(assert (=> b!947707 (=> (not res!636060) (not e!533498))))

(assert (=> b!947707 (= res!636060 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947708 () Bool)

(declare-fun res!636062 () Bool)

(assert (=> b!947708 (=> (not res!636062) (not e!533498))))

(declare-datatypes ((tuple2!13614 0))(
  ( (tuple2!13615 (_1!6817 (_ BitVec 64)) (_2!6817 V!32561)) )
))
(declare-datatypes ((List!19443 0))(
  ( (Nil!19440) (Cons!19439 (h!20595 tuple2!13614) (t!27774 List!19443)) )
))
(declare-datatypes ((ListLongMap!12325 0))(
  ( (ListLongMap!12326 (toList!6178 List!19443)) )
))
(declare-fun contains!5211 (ListLongMap!12325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3363 (array!57420 array!57418 (_ BitVec 32) (_ BitVec 32) V!32561 V!32561 (_ BitVec 32) Int) ListLongMap!12325)

(assert (=> b!947708 (= res!636062 (contains!5211 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)) key!756))))

(assert (= (and start!80920 res!636063) b!947707))

(assert (= (and b!947707 res!636060) b!947704))

(assert (= (and b!947704 res!636061) b!947708))

(assert (= (and b!947708 res!636062) b!947705))

(assert (= (and b!947703 condMapEmpty!32929) mapIsEmpty!32929))

(assert (= (and b!947703 (not condMapEmpty!32929)) mapNonEmpty!32929))

(assert (= (and mapNonEmpty!32929 ((_ is ValueCellFull!9867) mapValue!32929)) b!947701))

(assert (= (and b!947703 ((_ is ValueCellFull!9867) mapDefault!32929)) b!947706))

(assert (= b!947702 b!947703))

(assert (= start!80920 b!947702))

(declare-fun m!880667 () Bool)

(assert (=> mapNonEmpty!32929 m!880667))

(declare-fun m!880669 () Bool)

(assert (=> b!947704 m!880669))

(declare-fun m!880671 () Bool)

(assert (=> b!947702 m!880671))

(declare-fun m!880673 () Bool)

(assert (=> b!947702 m!880673))

(declare-fun m!880675 () Bool)

(assert (=> start!80920 m!880675))

(declare-fun m!880677 () Bool)

(assert (=> b!947705 m!880677))

(declare-fun m!880679 () Bool)

(assert (=> b!947708 m!880679))

(assert (=> b!947708 m!880679))

(declare-fun m!880681 () Bool)

(assert (=> b!947708 m!880681))

(check-sat (not b!947705) (not b!947702) (not b_next!18189) (not start!80920) tp_is_empty!20697 (not b!947704) (not mapNonEmpty!32929) b_and!29631 (not b!947708))
(check-sat b_and!29631 (not b_next!18189))
(get-model)

(declare-fun d!114657 () Bool)

(assert (=> d!114657 (= (validMask!0 (mask!27482 thiss!1141)) (and (or (= (mask!27482 thiss!1141) #b00000000000000000000000000000111) (= (mask!27482 thiss!1141) #b00000000000000000000000000001111) (= (mask!27482 thiss!1141) #b00000000000000000000000000011111) (= (mask!27482 thiss!1141) #b00000000000000000000000000111111) (= (mask!27482 thiss!1141) #b00000000000000000000000001111111) (= (mask!27482 thiss!1141) #b00000000000000000000000011111111) (= (mask!27482 thiss!1141) #b00000000000000000000000111111111) (= (mask!27482 thiss!1141) #b00000000000000000000001111111111) (= (mask!27482 thiss!1141) #b00000000000000000000011111111111) (= (mask!27482 thiss!1141) #b00000000000000000000111111111111) (= (mask!27482 thiss!1141) #b00000000000000000001111111111111) (= (mask!27482 thiss!1141) #b00000000000000000011111111111111) (= (mask!27482 thiss!1141) #b00000000000000000111111111111111) (= (mask!27482 thiss!1141) #b00000000000000001111111111111111) (= (mask!27482 thiss!1141) #b00000000000000011111111111111111) (= (mask!27482 thiss!1141) #b00000000000000111111111111111111) (= (mask!27482 thiss!1141) #b00000000000001111111111111111111) (= (mask!27482 thiss!1141) #b00000000000011111111111111111111) (= (mask!27482 thiss!1141) #b00000000000111111111111111111111) (= (mask!27482 thiss!1141) #b00000000001111111111111111111111) (= (mask!27482 thiss!1141) #b00000000011111111111111111111111) (= (mask!27482 thiss!1141) #b00000000111111111111111111111111) (= (mask!27482 thiss!1141) #b00000001111111111111111111111111) (= (mask!27482 thiss!1141) #b00000011111111111111111111111111) (= (mask!27482 thiss!1141) #b00000111111111111111111111111111) (= (mask!27482 thiss!1141) #b00001111111111111111111111111111) (= (mask!27482 thiss!1141) #b00011111111111111111111111111111) (= (mask!27482 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27482 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!947705 d!114657))

(declare-fun d!114659 () Bool)

(assert (=> d!114659 (= (array_inv!21384 (_keys!10651 thiss!1141)) (bvsge (size!28088 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947702 d!114659))

(declare-fun d!114661 () Bool)

(assert (=> d!114661 (= (array_inv!21385 (_values!5764 thiss!1141)) (bvsge (size!28087 (_values!5764 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947702 d!114661))

(declare-fun b!947745 () Bool)

(declare-fun c!98673 () Bool)

(declare-fun lt!426705 () (_ BitVec 64))

(assert (=> b!947745 (= c!98673 (= lt!426705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!533526 () SeekEntryResult!9113)

(declare-fun e!533524 () SeekEntryResult!9113)

(assert (=> b!947745 (= e!533526 e!533524)))

(declare-fun b!947746 () Bool)

(declare-fun lt!426707 () SeekEntryResult!9113)

(assert (=> b!947746 (= e!533524 (ite ((_ is MissingVacant!9113) lt!426707) (MissingZero!9113 (index!38825 lt!426707)) lt!426707))))

(declare-fun lt!426706 () SeekEntryResult!9113)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57420 (_ BitVec 32)) SeekEntryResult!9113)

(assert (=> b!947746 (= lt!426707 (seekKeyOrZeroReturnVacant!0 (x!81540 lt!426706) (index!38824 lt!426706) (index!38824 lt!426706) key!756 (_keys!10651 thiss!1141) (mask!27482 thiss!1141)))))

(declare-fun d!114663 () Bool)

(declare-fun lt!426708 () SeekEntryResult!9113)

(assert (=> d!114663 (and (or ((_ is MissingVacant!9113) lt!426708) (not ((_ is Found!9113) lt!426708)) (and (bvsge (index!38823 lt!426708) #b00000000000000000000000000000000) (bvslt (index!38823 lt!426708) (size!28088 (_keys!10651 thiss!1141))))) (not ((_ is MissingVacant!9113) lt!426708)) (or (not ((_ is Found!9113) lt!426708)) (= (select (arr!27614 (_keys!10651 thiss!1141)) (index!38823 lt!426708)) key!756)))))

(declare-fun e!533525 () SeekEntryResult!9113)

(assert (=> d!114663 (= lt!426708 e!533525)))

(declare-fun c!98674 () Bool)

(assert (=> d!114663 (= c!98674 (and ((_ is Intermediate!9113) lt!426706) (undefined!9925 lt!426706)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57420 (_ BitVec 32)) SeekEntryResult!9113)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114663 (= lt!426706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27482 thiss!1141)) key!756 (_keys!10651 thiss!1141) (mask!27482 thiss!1141)))))

(assert (=> d!114663 (validMask!0 (mask!27482 thiss!1141))))

(assert (=> d!114663 (= (seekEntry!0 key!756 (_keys!10651 thiss!1141) (mask!27482 thiss!1141)) lt!426708)))

(declare-fun b!947747 () Bool)

(assert (=> b!947747 (= e!533526 (Found!9113 (index!38824 lt!426706)))))

(declare-fun b!947748 () Bool)

(assert (=> b!947748 (= e!533525 e!533526)))

(assert (=> b!947748 (= lt!426705 (select (arr!27614 (_keys!10651 thiss!1141)) (index!38824 lt!426706)))))

(declare-fun c!98675 () Bool)

(assert (=> b!947748 (= c!98675 (= lt!426705 key!756))))

(declare-fun b!947749 () Bool)

(assert (=> b!947749 (= e!533524 (MissingZero!9113 (index!38824 lt!426706)))))

(declare-fun b!947750 () Bool)

(assert (=> b!947750 (= e!533525 Undefined!9113)))

(assert (= (and d!114663 c!98674) b!947750))

(assert (= (and d!114663 (not c!98674)) b!947748))

(assert (= (and b!947748 c!98675) b!947747))

(assert (= (and b!947748 (not c!98675)) b!947745))

(assert (= (and b!947745 c!98673) b!947749))

(assert (= (and b!947745 (not c!98673)) b!947746))

(declare-fun m!880699 () Bool)

(assert (=> b!947746 m!880699))

(declare-fun m!880701 () Bool)

(assert (=> d!114663 m!880701))

(declare-fun m!880703 () Bool)

(assert (=> d!114663 m!880703))

(assert (=> d!114663 m!880703))

(declare-fun m!880705 () Bool)

(assert (=> d!114663 m!880705))

(assert (=> d!114663 m!880677))

(declare-fun m!880707 () Bool)

(assert (=> b!947748 m!880707))

(assert (=> b!947704 d!114663))

(declare-fun d!114665 () Bool)

(declare-fun res!636082 () Bool)

(declare-fun e!533529 () Bool)

(assert (=> d!114665 (=> (not res!636082) (not e!533529))))

(declare-fun simpleValid!365 (LongMapFixedSize!4884) Bool)

(assert (=> d!114665 (= res!636082 (simpleValid!365 thiss!1141))))

(assert (=> d!114665 (= (valid!1838 thiss!1141) e!533529)))

(declare-fun b!947757 () Bool)

(declare-fun res!636083 () Bool)

(assert (=> b!947757 (=> (not res!636083) (not e!533529))))

(declare-fun arrayCountValidKeys!0 (array!57420 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947757 (= res!636083 (= (arrayCountValidKeys!0 (_keys!10651 thiss!1141) #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))) (_size!2497 thiss!1141)))))

(declare-fun b!947758 () Bool)

(declare-fun res!636084 () Bool)

(assert (=> b!947758 (=> (not res!636084) (not e!533529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57420 (_ BitVec 32)) Bool)

(assert (=> b!947758 (= res!636084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10651 thiss!1141) (mask!27482 thiss!1141)))))

(declare-fun b!947759 () Bool)

(declare-datatypes ((List!19444 0))(
  ( (Nil!19441) (Cons!19440 (h!20596 (_ BitVec 64)) (t!27777 List!19444)) )
))
(declare-fun arrayNoDuplicates!0 (array!57420 (_ BitVec 32) List!19444) Bool)

(assert (=> b!947759 (= e!533529 (arrayNoDuplicates!0 (_keys!10651 thiss!1141) #b00000000000000000000000000000000 Nil!19441))))

(assert (= (and d!114665 res!636082) b!947757))

(assert (= (and b!947757 res!636083) b!947758))

(assert (= (and b!947758 res!636084) b!947759))

(declare-fun m!880709 () Bool)

(assert (=> d!114665 m!880709))

(declare-fun m!880711 () Bool)

(assert (=> b!947757 m!880711))

(declare-fun m!880713 () Bool)

(assert (=> b!947758 m!880713))

(declare-fun m!880715 () Bool)

(assert (=> b!947759 m!880715))

(assert (=> start!80920 d!114665))

(declare-fun d!114667 () Bool)

(declare-fun e!533535 () Bool)

(assert (=> d!114667 e!533535))

(declare-fun res!636087 () Bool)

(assert (=> d!114667 (=> res!636087 e!533535)))

(declare-fun lt!426717 () Bool)

(assert (=> d!114667 (= res!636087 (not lt!426717))))

(declare-fun lt!426720 () Bool)

(assert (=> d!114667 (= lt!426717 lt!426720)))

(declare-datatypes ((Unit!31932 0))(
  ( (Unit!31933) )
))
(declare-fun lt!426718 () Unit!31932)

(declare-fun e!533534 () Unit!31932)

(assert (=> d!114667 (= lt!426718 e!533534)))

(declare-fun c!98678 () Bool)

(assert (=> d!114667 (= c!98678 lt!426720)))

(declare-fun containsKey!457 (List!19443 (_ BitVec 64)) Bool)

(assert (=> d!114667 (= lt!426720 (containsKey!457 (toList!6178 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141))) key!756))))

(assert (=> d!114667 (= (contains!5211 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)) key!756) lt!426717)))

(declare-fun b!947766 () Bool)

(declare-fun lt!426719 () Unit!31932)

(assert (=> b!947766 (= e!533534 lt!426719)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!352 (List!19443 (_ BitVec 64)) Unit!31932)

(assert (=> b!947766 (= lt!426719 (lemmaContainsKeyImpliesGetValueByKeyDefined!352 (toList!6178 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141))) key!756))))

(declare-datatypes ((Option!498 0))(
  ( (Some!497 (v!12936 V!32561)) (None!496) )
))
(declare-fun isDefined!362 (Option!498) Bool)

(declare-fun getValueByKey!492 (List!19443 (_ BitVec 64)) Option!498)

(assert (=> b!947766 (isDefined!362 (getValueByKey!492 (toList!6178 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141))) key!756))))

(declare-fun b!947767 () Bool)

(declare-fun Unit!31934 () Unit!31932)

(assert (=> b!947767 (= e!533534 Unit!31934)))

(declare-fun b!947768 () Bool)

(assert (=> b!947768 (= e!533535 (isDefined!362 (getValueByKey!492 (toList!6178 (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141))) key!756)))))

(assert (= (and d!114667 c!98678) b!947766))

(assert (= (and d!114667 (not c!98678)) b!947767))

(assert (= (and d!114667 (not res!636087)) b!947768))

(declare-fun m!880717 () Bool)

(assert (=> d!114667 m!880717))

(declare-fun m!880719 () Bool)

(assert (=> b!947766 m!880719))

(declare-fun m!880721 () Bool)

(assert (=> b!947766 m!880721))

(assert (=> b!947766 m!880721))

(declare-fun m!880723 () Bool)

(assert (=> b!947766 m!880723))

(assert (=> b!947768 m!880721))

(assert (=> b!947768 m!880721))

(assert (=> b!947768 m!880723))

(assert (=> b!947708 d!114667))

(declare-fun c!98696 () Bool)

(declare-fun call!41166 () ListLongMap!12325)

(declare-fun c!98695 () Bool)

(declare-fun call!41165 () ListLongMap!12325)

(declare-fun call!41162 () ListLongMap!12325)

(declare-fun call!41164 () ListLongMap!12325)

(declare-fun bm!41157 () Bool)

(declare-fun +!2819 (ListLongMap!12325 tuple2!13614) ListLongMap!12325)

(assert (=> bm!41157 (= call!41166 (+!2819 (ite c!98695 call!41164 (ite c!98696 call!41165 call!41162)) (ite (or c!98695 c!98696) (tuple2!13615 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5577 thiss!1141)) (tuple2!13615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5577 thiss!1141)))))))

(declare-fun b!947811 () Bool)

(declare-fun e!533567 () ListLongMap!12325)

(declare-fun call!41161 () ListLongMap!12325)

(assert (=> b!947811 (= e!533567 call!41161)))

(declare-fun b!947812 () Bool)

(declare-fun e!533564 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947812 (= e!533564 (validKeyInArray!0 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947813 () Bool)

(declare-fun e!533569 () Bool)

(declare-fun lt!426775 () ListLongMap!12325)

(declare-fun apply!905 (ListLongMap!12325 (_ BitVec 64)) V!32561)

(assert (=> b!947813 (= e!533569 (= (apply!905 lt!426775 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5577 thiss!1141)))))

(declare-fun b!947814 () Bool)

(declare-fun e!533570 () Bool)

(declare-fun e!533571 () Bool)

(assert (=> b!947814 (= e!533570 e!533571)))

(declare-fun res!636113 () Bool)

(declare-fun call!41163 () Bool)

(assert (=> b!947814 (= res!636113 call!41163)))

(assert (=> b!947814 (=> (not res!636113) (not e!533571))))

(declare-fun d!114669 () Bool)

(declare-fun e!533563 () Bool)

(assert (=> d!114669 e!533563))

(declare-fun res!636111 () Bool)

(assert (=> d!114669 (=> (not res!636111) (not e!533563))))

(assert (=> d!114669 (= res!636111 (or (bvsge #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))))))))

(declare-fun lt!426777 () ListLongMap!12325)

(assert (=> d!114669 (= lt!426775 lt!426777)))

(declare-fun lt!426767 () Unit!31932)

(declare-fun e!533568 () Unit!31932)

(assert (=> d!114669 (= lt!426767 e!533568)))

(declare-fun c!98693 () Bool)

(declare-fun e!533566 () Bool)

(assert (=> d!114669 (= c!98693 e!533566)))

(declare-fun res!636112 () Bool)

(assert (=> d!114669 (=> (not res!636112) (not e!533566))))

(assert (=> d!114669 (= res!636112 (bvslt #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))))))

(declare-fun e!533574 () ListLongMap!12325)

(assert (=> d!114669 (= lt!426777 e!533574)))

(assert (=> d!114669 (= c!98695 (and (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114669 (validMask!0 (mask!27482 thiss!1141))))

(assert (=> d!114669 (= (getCurrentListMap!3363 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)) lt!426775)))

(declare-fun b!947815 () Bool)

(declare-fun e!533565 () ListLongMap!12325)

(assert (=> b!947815 (= e!533565 call!41161)))

(declare-fun bm!41158 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3325 (array!57420 array!57418 (_ BitVec 32) (_ BitVec 32) V!32561 V!32561 (_ BitVec 32) Int) ListLongMap!12325)

(assert (=> bm!41158 (= call!41164 (getCurrentListMapNoExtraKeys!3325 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)))))

(declare-fun b!947816 () Bool)

(declare-fun res!636110 () Bool)

(assert (=> b!947816 (=> (not res!636110) (not e!533563))))

(declare-fun e!533562 () Bool)

(assert (=> b!947816 (= res!636110 e!533562)))

(declare-fun c!98691 () Bool)

(assert (=> b!947816 (= c!98691 (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!947817 () Bool)

(assert (=> b!947817 (= e!533574 e!533567)))

(assert (=> b!947817 (= c!98696 (and (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!947818 () Bool)

(assert (=> b!947818 (= e!533562 e!533569)))

(declare-fun res!636108 () Bool)

(declare-fun call!41160 () Bool)

(assert (=> b!947818 (= res!636108 call!41160)))

(assert (=> b!947818 (=> (not res!636108) (not e!533569))))

(declare-fun b!947819 () Bool)

(assert (=> b!947819 (= e!533566 (validKeyInArray!0 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947820 () Bool)

(declare-fun res!636107 () Bool)

(assert (=> b!947820 (=> (not res!636107) (not e!533563))))

(declare-fun e!533572 () Bool)

(assert (=> b!947820 (= res!636107 e!533572)))

(declare-fun res!636114 () Bool)

(assert (=> b!947820 (=> res!636114 e!533572)))

(assert (=> b!947820 (= res!636114 (not e!533564))))

(declare-fun res!636109 () Bool)

(assert (=> b!947820 (=> (not res!636109) (not e!533564))))

(assert (=> b!947820 (= res!636109 (bvslt #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))))))

(declare-fun bm!41159 () Bool)

(assert (=> bm!41159 (= call!41165 call!41164)))

(declare-fun bm!41160 () Bool)

(assert (=> bm!41160 (= call!41160 (contains!5211 lt!426775 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!947821 () Bool)

(declare-fun c!98694 () Bool)

(assert (=> b!947821 (= c!98694 (and (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!947821 (= e!533567 e!533565)))

(declare-fun b!947822 () Bool)

(assert (=> b!947822 (= e!533574 (+!2819 call!41166 (tuple2!13615 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5577 thiss!1141))))))

(declare-fun bm!41161 () Bool)

(assert (=> bm!41161 (= call!41163 (contains!5211 lt!426775 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!947823 () Bool)

(declare-fun lt!426768 () Unit!31932)

(assert (=> b!947823 (= e!533568 lt!426768)))

(declare-fun lt!426782 () ListLongMap!12325)

(assert (=> b!947823 (= lt!426782 (getCurrentListMapNoExtraKeys!3325 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)))))

(declare-fun lt!426772 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426772 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426765 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426765 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426781 () Unit!31932)

(declare-fun addStillContains!575 (ListLongMap!12325 (_ BitVec 64) V!32561 (_ BitVec 64)) Unit!31932)

(assert (=> b!947823 (= lt!426781 (addStillContains!575 lt!426782 lt!426772 (zeroValue!5577 thiss!1141) lt!426765))))

(assert (=> b!947823 (contains!5211 (+!2819 lt!426782 (tuple2!13615 lt!426772 (zeroValue!5577 thiss!1141))) lt!426765)))

(declare-fun lt!426770 () Unit!31932)

(assert (=> b!947823 (= lt!426770 lt!426781)))

(declare-fun lt!426780 () ListLongMap!12325)

(assert (=> b!947823 (= lt!426780 (getCurrentListMapNoExtraKeys!3325 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)))))

(declare-fun lt!426773 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426773 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426776 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426776 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426778 () Unit!31932)

(declare-fun addApplyDifferent!449 (ListLongMap!12325 (_ BitVec 64) V!32561 (_ BitVec 64)) Unit!31932)

(assert (=> b!947823 (= lt!426778 (addApplyDifferent!449 lt!426780 lt!426773 (minValue!5577 thiss!1141) lt!426776))))

(assert (=> b!947823 (= (apply!905 (+!2819 lt!426780 (tuple2!13615 lt!426773 (minValue!5577 thiss!1141))) lt!426776) (apply!905 lt!426780 lt!426776))))

(declare-fun lt!426779 () Unit!31932)

(assert (=> b!947823 (= lt!426779 lt!426778)))

(declare-fun lt!426784 () ListLongMap!12325)

(assert (=> b!947823 (= lt!426784 (getCurrentListMapNoExtraKeys!3325 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)))))

(declare-fun lt!426785 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426766 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426766 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426786 () Unit!31932)

(assert (=> b!947823 (= lt!426786 (addApplyDifferent!449 lt!426784 lt!426785 (zeroValue!5577 thiss!1141) lt!426766))))

(assert (=> b!947823 (= (apply!905 (+!2819 lt!426784 (tuple2!13615 lt!426785 (zeroValue!5577 thiss!1141))) lt!426766) (apply!905 lt!426784 lt!426766))))

(declare-fun lt!426769 () Unit!31932)

(assert (=> b!947823 (= lt!426769 lt!426786)))

(declare-fun lt!426783 () ListLongMap!12325)

(assert (=> b!947823 (= lt!426783 (getCurrentListMapNoExtraKeys!3325 (_keys!10651 thiss!1141) (_values!5764 thiss!1141) (mask!27482 thiss!1141) (extraKeys!5473 thiss!1141) (zeroValue!5577 thiss!1141) (minValue!5577 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5741 thiss!1141)))))

(declare-fun lt!426771 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426771 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426774 () (_ BitVec 64))

(assert (=> b!947823 (= lt!426774 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947823 (= lt!426768 (addApplyDifferent!449 lt!426783 lt!426771 (minValue!5577 thiss!1141) lt!426774))))

(assert (=> b!947823 (= (apply!905 (+!2819 lt!426783 (tuple2!13615 lt!426771 (minValue!5577 thiss!1141))) lt!426774) (apply!905 lt!426783 lt!426774))))

(declare-fun b!947824 () Bool)

(assert (=> b!947824 (= e!533563 e!533570)))

(declare-fun c!98692 () Bool)

(assert (=> b!947824 (= c!98692 (not (= (bvand (extraKeys!5473 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!947825 () Bool)

(assert (=> b!947825 (= e!533565 call!41162)))

(declare-fun b!947826 () Bool)

(declare-fun Unit!31935 () Unit!31932)

(assert (=> b!947826 (= e!533568 Unit!31935)))

(declare-fun b!947827 () Bool)

(assert (=> b!947827 (= e!533562 (not call!41160))))

(declare-fun b!947828 () Bool)

(declare-fun e!533573 () Bool)

(assert (=> b!947828 (= e!533572 e!533573)))

(declare-fun res!636106 () Bool)

(assert (=> b!947828 (=> (not res!636106) (not e!533573))))

(assert (=> b!947828 (= res!636106 (contains!5211 lt!426775 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!947828 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))))))

(declare-fun b!947829 () Bool)

(assert (=> b!947829 (= e!533570 (not call!41163))))

(declare-fun bm!41162 () Bool)

(assert (=> bm!41162 (= call!41161 call!41166)))

(declare-fun bm!41163 () Bool)

(assert (=> bm!41163 (= call!41162 call!41165)))

(declare-fun b!947830 () Bool)

(assert (=> b!947830 (= e!533571 (= (apply!905 lt!426775 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5577 thiss!1141)))))

(declare-fun b!947831 () Bool)

(declare-fun get!14518 (ValueCell!9867 V!32561) V!32561)

(declare-fun dynLambda!1658 (Int (_ BitVec 64)) V!32561)

(assert (=> b!947831 (= e!533573 (= (apply!905 lt!426775 (select (arr!27614 (_keys!10651 thiss!1141)) #b00000000000000000000000000000000)) (get!14518 (select (arr!27613 (_values!5764 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1658 (defaultEntry!5741 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!947831 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28087 (_values!5764 thiss!1141))))))

(assert (=> b!947831 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28088 (_keys!10651 thiss!1141))))))

(assert (= (and d!114669 c!98695) b!947822))

(assert (= (and d!114669 (not c!98695)) b!947817))

(assert (= (and b!947817 c!98696) b!947811))

(assert (= (and b!947817 (not c!98696)) b!947821))

(assert (= (and b!947821 c!98694) b!947815))

(assert (= (and b!947821 (not c!98694)) b!947825))

(assert (= (or b!947815 b!947825) bm!41163))

(assert (= (or b!947811 bm!41163) bm!41159))

(assert (= (or b!947811 b!947815) bm!41162))

(assert (= (or b!947822 bm!41159) bm!41158))

(assert (= (or b!947822 bm!41162) bm!41157))

(assert (= (and d!114669 res!636112) b!947819))

(assert (= (and d!114669 c!98693) b!947823))

(assert (= (and d!114669 (not c!98693)) b!947826))

(assert (= (and d!114669 res!636111) b!947820))

(assert (= (and b!947820 res!636109) b!947812))

(assert (= (and b!947820 (not res!636114)) b!947828))

(assert (= (and b!947828 res!636106) b!947831))

(assert (= (and b!947820 res!636107) b!947816))

(assert (= (and b!947816 c!98691) b!947818))

(assert (= (and b!947816 (not c!98691)) b!947827))

(assert (= (and b!947818 res!636108) b!947813))

(assert (= (or b!947818 b!947827) bm!41160))

(assert (= (and b!947816 res!636110) b!947824))

(assert (= (and b!947824 c!98692) b!947814))

(assert (= (and b!947824 (not c!98692)) b!947829))

(assert (= (and b!947814 res!636113) b!947830))

(assert (= (or b!947814 b!947829) bm!41161))

(declare-fun b_lambda!14333 () Bool)

(assert (=> (not b_lambda!14333) (not b!947831)))

(declare-fun t!27776 () Bool)

(declare-fun tb!6183 () Bool)

(assert (=> (and b!947702 (= (defaultEntry!5741 thiss!1141) (defaultEntry!5741 thiss!1141)) t!27776) tb!6183))

(declare-fun result!12255 () Bool)

(assert (=> tb!6183 (= result!12255 tp_is_empty!20697)))

(assert (=> b!947831 t!27776))

(declare-fun b_and!29635 () Bool)

(assert (= b_and!29631 (and (=> t!27776 result!12255) b_and!29635)))

(declare-fun m!880725 () Bool)

(assert (=> b!947813 m!880725))

(assert (=> d!114669 m!880677))

(declare-fun m!880727 () Bool)

(assert (=> b!947828 m!880727))

(assert (=> b!947828 m!880727))

(declare-fun m!880729 () Bool)

(assert (=> b!947828 m!880729))

(declare-fun m!880731 () Bool)

(assert (=> b!947822 m!880731))

(declare-fun m!880733 () Bool)

(assert (=> bm!41161 m!880733))

(assert (=> b!947819 m!880727))

(assert (=> b!947819 m!880727))

(declare-fun m!880735 () Bool)

(assert (=> b!947819 m!880735))

(declare-fun m!880737 () Bool)

(assert (=> bm!41157 m!880737))

(declare-fun m!880739 () Bool)

(assert (=> b!947831 m!880739))

(declare-fun m!880741 () Bool)

(assert (=> b!947831 m!880741))

(assert (=> b!947831 m!880727))

(declare-fun m!880743 () Bool)

(assert (=> b!947831 m!880743))

(assert (=> b!947831 m!880727))

(assert (=> b!947831 m!880741))

(assert (=> b!947831 m!880739))

(declare-fun m!880745 () Bool)

(assert (=> b!947831 m!880745))

(assert (=> b!947812 m!880727))

(assert (=> b!947812 m!880727))

(assert (=> b!947812 m!880735))

(declare-fun m!880747 () Bool)

(assert (=> bm!41160 m!880747))

(declare-fun m!880749 () Bool)

(assert (=> bm!41158 m!880749))

(declare-fun m!880751 () Bool)

(assert (=> b!947830 m!880751))

(declare-fun m!880753 () Bool)

(assert (=> b!947823 m!880753))

(declare-fun m!880755 () Bool)

(assert (=> b!947823 m!880755))

(declare-fun m!880757 () Bool)

(assert (=> b!947823 m!880757))

(declare-fun m!880759 () Bool)

(assert (=> b!947823 m!880759))

(declare-fun m!880761 () Bool)

(assert (=> b!947823 m!880761))

(declare-fun m!880763 () Bool)

(assert (=> b!947823 m!880763))

(declare-fun m!880765 () Bool)

(assert (=> b!947823 m!880765))

(declare-fun m!880767 () Bool)

(assert (=> b!947823 m!880767))

(declare-fun m!880769 () Bool)

(assert (=> b!947823 m!880769))

(assert (=> b!947823 m!880727))

(assert (=> b!947823 m!880749))

(assert (=> b!947823 m!880757))

(declare-fun m!880771 () Bool)

(assert (=> b!947823 m!880771))

(declare-fun m!880773 () Bool)

(assert (=> b!947823 m!880773))

(declare-fun m!880775 () Bool)

(assert (=> b!947823 m!880775))

(declare-fun m!880777 () Bool)

(assert (=> b!947823 m!880777))

(assert (=> b!947823 m!880773))

(declare-fun m!880779 () Bool)

(assert (=> b!947823 m!880779))

(assert (=> b!947823 m!880755))

(declare-fun m!880781 () Bool)

(assert (=> b!947823 m!880781))

(assert (=> b!947823 m!880761))

(assert (=> b!947708 d!114669))

(declare-fun mapNonEmpty!32935 () Bool)

(declare-fun mapRes!32935 () Bool)

(declare-fun tp!63145 () Bool)

(declare-fun e!533580 () Bool)

(assert (=> mapNonEmpty!32935 (= mapRes!32935 (and tp!63145 e!533580))))

(declare-fun mapKey!32935 () (_ BitVec 32))

(declare-fun mapValue!32935 () ValueCell!9867)

(declare-fun mapRest!32935 () (Array (_ BitVec 32) ValueCell!9867))

(assert (=> mapNonEmpty!32935 (= mapRest!32929 (store mapRest!32935 mapKey!32935 mapValue!32935))))

(declare-fun b!947840 () Bool)

(assert (=> b!947840 (= e!533580 tp_is_empty!20697)))

(declare-fun b!947841 () Bool)

(declare-fun e!533579 () Bool)

(assert (=> b!947841 (= e!533579 tp_is_empty!20697)))

(declare-fun mapIsEmpty!32935 () Bool)

(assert (=> mapIsEmpty!32935 mapRes!32935))

(declare-fun condMapEmpty!32935 () Bool)

(declare-fun mapDefault!32935 () ValueCell!9867)

(assert (=> mapNonEmpty!32929 (= condMapEmpty!32935 (= mapRest!32929 ((as const (Array (_ BitVec 32) ValueCell!9867)) mapDefault!32935)))))

(assert (=> mapNonEmpty!32929 (= tp!63135 (and e!533579 mapRes!32935))))

(assert (= (and mapNonEmpty!32929 condMapEmpty!32935) mapIsEmpty!32935))

(assert (= (and mapNonEmpty!32929 (not condMapEmpty!32935)) mapNonEmpty!32935))

(assert (= (and mapNonEmpty!32935 ((_ is ValueCellFull!9867) mapValue!32935)) b!947840))

(assert (= (and mapNonEmpty!32929 ((_ is ValueCellFull!9867) mapDefault!32935)) b!947841))

(declare-fun m!880783 () Bool)

(assert (=> mapNonEmpty!32935 m!880783))

(declare-fun b_lambda!14335 () Bool)

(assert (= b_lambda!14333 (or (and b!947702 b_free!18189) b_lambda!14335)))

(check-sat (not mapNonEmpty!32935) (not b_lambda!14335) (not b!947823) (not bm!41157) (not d!114667) (not b_next!18189) (not bm!41158) (not b!947757) (not b!947746) (not b!947822) (not b!947819) b_and!29635 (not b!947766) (not bm!41160) (not d!114663) (not b!947758) (not d!114665) (not b!947831) (not b!947830) (not b!947813) (not d!114669) (not b!947759) (not b!947828) (not b!947768) (not bm!41161) tp_is_empty!20697 (not b!947812))
(check-sat b_and!29635 (not b_next!18189))
