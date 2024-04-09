; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80940 () Bool)

(assert start!80940)

(declare-fun b!947888 () Bool)

(declare-fun b_free!18195 () Bool)

(declare-fun b_next!18195 () Bool)

(assert (=> b!947888 (= b_free!18195 (not b_next!18195))))

(declare-fun tp!63157 () Bool)

(declare-fun b_and!29639 () Bool)

(assert (=> b!947888 (= tp!63157 b_and!29639)))

(declare-fun res!636143 () Bool)

(declare-fun e!533615 () Bool)

(assert (=> start!80940 (=> (not res!636143) (not e!533615))))

(declare-datatypes ((V!32569 0))(
  ( (V!32570 (val!10402 Int)) )
))
(declare-datatypes ((ValueCell!9870 0))(
  ( (ValueCellFull!9870 (v!12938 V!32569)) (EmptyCell!9870) )
))
(declare-datatypes ((array!57432 0))(
  ( (array!57433 (arr!27619 (Array (_ BitVec 32) ValueCell!9870)) (size!28093 (_ BitVec 32))) )
))
(declare-datatypes ((array!57434 0))(
  ( (array!57435 (arr!27620 (Array (_ BitVec 32) (_ BitVec 64))) (size!28094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4890 0))(
  ( (LongMapFixedSize!4891 (defaultEntry!5745 Int) (mask!27490 (_ BitVec 32)) (extraKeys!5477 (_ BitVec 32)) (zeroValue!5581 V!32569) (minValue!5581 V!32569) (_size!2500 (_ BitVec 32)) (_keys!10656 array!57434) (_values!5768 array!57432) (_vacant!2500 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4890)

(declare-fun valid!1839 (LongMapFixedSize!4890) Bool)

(assert (=> start!80940 (= res!636143 (valid!1839 thiss!1141))))

(assert (=> start!80940 e!533615))

(declare-fun e!533612 () Bool)

(assert (=> start!80940 e!533612))

(assert (=> start!80940 true))

(declare-fun b!947887 () Bool)

(declare-fun e!533616 () Bool)

(declare-fun tp_is_empty!20703 () Bool)

(assert (=> b!947887 (= e!533616 tp_is_empty!20703)))

(declare-fun e!533614 () Bool)

(declare-fun array_inv!21386 (array!57434) Bool)

(declare-fun array_inv!21387 (array!57432) Bool)

(assert (=> b!947888 (= e!533612 (and tp!63157 tp_is_empty!20703 (array_inv!21386 (_keys!10656 thiss!1141)) (array_inv!21387 (_values!5768 thiss!1141)) e!533614))))

(declare-fun b!947889 () Bool)

(declare-fun res!636144 () Bool)

(assert (=> b!947889 (=> (not res!636144) (not e!533615))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13616 0))(
  ( (tuple2!13617 (_1!6818 (_ BitVec 64)) (_2!6818 V!32569)) )
))
(declare-datatypes ((List!19445 0))(
  ( (Nil!19442) (Cons!19441 (h!20597 tuple2!13616) (t!27778 List!19445)) )
))
(declare-datatypes ((ListLongMap!12327 0))(
  ( (ListLongMap!12328 (toList!6179 List!19445)) )
))
(declare-fun contains!5212 (ListLongMap!12327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3364 (array!57434 array!57432 (_ BitVec 32) (_ BitVec 32) V!32569 V!32569 (_ BitVec 32) Int) ListLongMap!12327)

(assert (=> b!947889 (= res!636144 (contains!5212 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)) key!756))))

(declare-fun b!947890 () Bool)

(declare-fun e!533613 () Bool)

(assert (=> b!947890 (= e!533613 tp_is_empty!20703)))

(declare-fun b!947891 () Bool)

(declare-fun res!636140 () Bool)

(assert (=> b!947891 (=> (not res!636140) (not e!533615))))

(assert (=> b!947891 (= res!636140 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947892 () Bool)

(declare-fun res!636142 () Bool)

(assert (=> b!947892 (=> (not res!636142) (not e!533615))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9115 0))(
  ( (MissingZero!9115 (index!38830 (_ BitVec 32))) (Found!9115 (index!38831 (_ BitVec 32))) (Intermediate!9115 (undefined!9927 Bool) (index!38832 (_ BitVec 32)) (x!81560 (_ BitVec 32))) (Undefined!9115) (MissingVacant!9115 (index!38833 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57434 (_ BitVec 32)) SeekEntryResult!9115)

(assert (=> b!947892 (= res!636142 (not ((_ is Found!9115) (seekEntry!0 key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))))

(declare-fun b!947893 () Bool)

(declare-fun mapRes!32941 () Bool)

(assert (=> b!947893 (= e!533614 (and e!533613 mapRes!32941))))

(declare-fun condMapEmpty!32941 () Bool)

(declare-fun mapDefault!32941 () ValueCell!9870)

(assert (=> b!947893 (= condMapEmpty!32941 (= (arr!27619 (_values!5768 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9870)) mapDefault!32941)))))

(declare-fun mapIsEmpty!32941 () Bool)

(assert (=> mapIsEmpty!32941 mapRes!32941))

(declare-fun b!947894 () Bool)

(declare-fun res!636141 () Bool)

(assert (=> b!947894 (=> (not res!636141) (not e!533615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947894 (= res!636141 (validMask!0 (mask!27490 thiss!1141)))))

(declare-fun mapNonEmpty!32941 () Bool)

(declare-fun tp!63156 () Bool)

(assert (=> mapNonEmpty!32941 (= mapRes!32941 (and tp!63156 e!533616))))

(declare-fun mapRest!32941 () (Array (_ BitVec 32) ValueCell!9870))

(declare-fun mapKey!32941 () (_ BitVec 32))

(declare-fun mapValue!32941 () ValueCell!9870)

(assert (=> mapNonEmpty!32941 (= (arr!27619 (_values!5768 thiss!1141)) (store mapRest!32941 mapKey!32941 mapValue!32941))))

(declare-fun b!947895 () Bool)

(assert (=> b!947895 (= e!533615 (not (= (size!28093 (_values!5768 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27490 thiss!1141)))))))

(assert (= (and start!80940 res!636143) b!947891))

(assert (= (and b!947891 res!636140) b!947892))

(assert (= (and b!947892 res!636142) b!947889))

(assert (= (and b!947889 res!636144) b!947894))

(assert (= (and b!947894 res!636141) b!947895))

(assert (= (and b!947893 condMapEmpty!32941) mapIsEmpty!32941))

(assert (= (and b!947893 (not condMapEmpty!32941)) mapNonEmpty!32941))

(assert (= (and mapNonEmpty!32941 ((_ is ValueCellFull!9870) mapValue!32941)) b!947887))

(assert (= (and b!947893 ((_ is ValueCellFull!9870) mapDefault!32941)) b!947890))

(assert (= b!947888 b!947893))

(assert (= start!80940 b!947888))

(declare-fun m!880801 () Bool)

(assert (=> start!80940 m!880801))

(declare-fun m!880803 () Bool)

(assert (=> b!947888 m!880803))

(declare-fun m!880805 () Bool)

(assert (=> b!947888 m!880805))

(declare-fun m!880807 () Bool)

(assert (=> b!947894 m!880807))

(declare-fun m!880809 () Bool)

(assert (=> b!947892 m!880809))

(declare-fun m!880811 () Bool)

(assert (=> b!947889 m!880811))

(assert (=> b!947889 m!880811))

(declare-fun m!880813 () Bool)

(assert (=> b!947889 m!880813))

(declare-fun m!880815 () Bool)

(assert (=> mapNonEmpty!32941 m!880815))

(check-sat (not b_next!18195) (not b!947888) (not start!80940) (not b!947889) (not mapNonEmpty!32941) tp_is_empty!20703 (not b!947892) b_and!29639 (not b!947894))
(check-sat b_and!29639 (not b_next!18195))
(get-model)

(declare-fun b!947935 () Bool)

(declare-fun e!533642 () SeekEntryResult!9115)

(assert (=> b!947935 (= e!533642 Undefined!9115)))

(declare-fun d!114673 () Bool)

(declare-fun lt!426795 () SeekEntryResult!9115)

(assert (=> d!114673 (and (or ((_ is MissingVacant!9115) lt!426795) (not ((_ is Found!9115) lt!426795)) (and (bvsge (index!38831 lt!426795) #b00000000000000000000000000000000) (bvslt (index!38831 lt!426795) (size!28094 (_keys!10656 thiss!1141))))) (not ((_ is MissingVacant!9115) lt!426795)) (or (not ((_ is Found!9115) lt!426795)) (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38831 lt!426795)) key!756)))))

(assert (=> d!114673 (= lt!426795 e!533642)))

(declare-fun c!98703 () Bool)

(declare-fun lt!426798 () SeekEntryResult!9115)

(assert (=> d!114673 (= c!98703 (and ((_ is Intermediate!9115) lt!426798) (undefined!9927 lt!426798)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57434 (_ BitVec 32)) SeekEntryResult!9115)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114673 (= lt!426798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27490 thiss!1141)) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(assert (=> d!114673 (validMask!0 (mask!27490 thiss!1141))))

(assert (=> d!114673 (= (seekEntry!0 key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)) lt!426795)))

(declare-fun b!947936 () Bool)

(declare-fun e!533641 () SeekEntryResult!9115)

(declare-fun lt!426797 () SeekEntryResult!9115)

(assert (=> b!947936 (= e!533641 (ite ((_ is MissingVacant!9115) lt!426797) (MissingZero!9115 (index!38833 lt!426797)) lt!426797))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57434 (_ BitVec 32)) SeekEntryResult!9115)

(assert (=> b!947936 (= lt!426797 (seekKeyOrZeroReturnVacant!0 (x!81560 lt!426798) (index!38832 lt!426798) (index!38832 lt!426798) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(declare-fun b!947937 () Bool)

(declare-fun e!533643 () SeekEntryResult!9115)

(assert (=> b!947937 (= e!533643 (Found!9115 (index!38832 lt!426798)))))

(declare-fun b!947938 () Bool)

(assert (=> b!947938 (= e!533642 e!533643)))

(declare-fun lt!426796 () (_ BitVec 64))

(assert (=> b!947938 (= lt!426796 (select (arr!27620 (_keys!10656 thiss!1141)) (index!38832 lt!426798)))))

(declare-fun c!98705 () Bool)

(assert (=> b!947938 (= c!98705 (= lt!426796 key!756))))

(declare-fun b!947939 () Bool)

(assert (=> b!947939 (= e!533641 (MissingZero!9115 (index!38832 lt!426798)))))

(declare-fun b!947940 () Bool)

(declare-fun c!98704 () Bool)

(assert (=> b!947940 (= c!98704 (= lt!426796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!947940 (= e!533643 e!533641)))

(assert (= (and d!114673 c!98703) b!947935))

(assert (= (and d!114673 (not c!98703)) b!947938))

(assert (= (and b!947938 c!98705) b!947937))

(assert (= (and b!947938 (not c!98705)) b!947940))

(assert (= (and b!947940 c!98704) b!947939))

(assert (= (and b!947940 (not c!98704)) b!947936))

(declare-fun m!880833 () Bool)

(assert (=> d!114673 m!880833))

(declare-fun m!880835 () Bool)

(assert (=> d!114673 m!880835))

(assert (=> d!114673 m!880835))

(declare-fun m!880837 () Bool)

(assert (=> d!114673 m!880837))

(assert (=> d!114673 m!880807))

(declare-fun m!880839 () Bool)

(assert (=> b!947936 m!880839))

(declare-fun m!880841 () Bool)

(assert (=> b!947938 m!880841))

(assert (=> b!947892 d!114673))

(declare-fun d!114675 () Bool)

(declare-fun res!636166 () Bool)

(declare-fun e!533646 () Bool)

(assert (=> d!114675 (=> (not res!636166) (not e!533646))))

(declare-fun simpleValid!366 (LongMapFixedSize!4890) Bool)

(assert (=> d!114675 (= res!636166 (simpleValid!366 thiss!1141))))

(assert (=> d!114675 (= (valid!1839 thiss!1141) e!533646)))

(declare-fun b!947947 () Bool)

(declare-fun res!636167 () Bool)

(assert (=> b!947947 (=> (not res!636167) (not e!533646))))

(declare-fun arrayCountValidKeys!0 (array!57434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947947 (= res!636167 (= (arrayCountValidKeys!0 (_keys!10656 thiss!1141) #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))) (_size!2500 thiss!1141)))))

(declare-fun b!947948 () Bool)

(declare-fun res!636168 () Bool)

(assert (=> b!947948 (=> (not res!636168) (not e!533646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57434 (_ BitVec 32)) Bool)

(assert (=> b!947948 (= res!636168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(declare-fun b!947949 () Bool)

(declare-datatypes ((List!19447 0))(
  ( (Nil!19444) (Cons!19443 (h!20599 (_ BitVec 64)) (t!27782 List!19447)) )
))
(declare-fun arrayNoDuplicates!0 (array!57434 (_ BitVec 32) List!19447) Bool)

(assert (=> b!947949 (= e!533646 (arrayNoDuplicates!0 (_keys!10656 thiss!1141) #b00000000000000000000000000000000 Nil!19444))))

(assert (= (and d!114675 res!636166) b!947947))

(assert (= (and b!947947 res!636167) b!947948))

(assert (= (and b!947948 res!636168) b!947949))

(declare-fun m!880843 () Bool)

(assert (=> d!114675 m!880843))

(declare-fun m!880845 () Bool)

(assert (=> b!947947 m!880845))

(declare-fun m!880847 () Bool)

(assert (=> b!947948 m!880847))

(declare-fun m!880849 () Bool)

(assert (=> b!947949 m!880849))

(assert (=> start!80940 d!114675))

(declare-fun d!114677 () Bool)

(assert (=> d!114677 (= (validMask!0 (mask!27490 thiss!1141)) (and (or (= (mask!27490 thiss!1141) #b00000000000000000000000000000111) (= (mask!27490 thiss!1141) #b00000000000000000000000000001111) (= (mask!27490 thiss!1141) #b00000000000000000000000000011111) (= (mask!27490 thiss!1141) #b00000000000000000000000000111111) (= (mask!27490 thiss!1141) #b00000000000000000000000001111111) (= (mask!27490 thiss!1141) #b00000000000000000000000011111111) (= (mask!27490 thiss!1141) #b00000000000000000000000111111111) (= (mask!27490 thiss!1141) #b00000000000000000000001111111111) (= (mask!27490 thiss!1141) #b00000000000000000000011111111111) (= (mask!27490 thiss!1141) #b00000000000000000000111111111111) (= (mask!27490 thiss!1141) #b00000000000000000001111111111111) (= (mask!27490 thiss!1141) #b00000000000000000011111111111111) (= (mask!27490 thiss!1141) #b00000000000000000111111111111111) (= (mask!27490 thiss!1141) #b00000000000000001111111111111111) (= (mask!27490 thiss!1141) #b00000000000000011111111111111111) (= (mask!27490 thiss!1141) #b00000000000000111111111111111111) (= (mask!27490 thiss!1141) #b00000000000001111111111111111111) (= (mask!27490 thiss!1141) #b00000000000011111111111111111111) (= (mask!27490 thiss!1141) #b00000000000111111111111111111111) (= (mask!27490 thiss!1141) #b00000000001111111111111111111111) (= (mask!27490 thiss!1141) #b00000000011111111111111111111111) (= (mask!27490 thiss!1141) #b00000000111111111111111111111111) (= (mask!27490 thiss!1141) #b00000001111111111111111111111111) (= (mask!27490 thiss!1141) #b00000011111111111111111111111111) (= (mask!27490 thiss!1141) #b00000111111111111111111111111111) (= (mask!27490 thiss!1141) #b00001111111111111111111111111111) (= (mask!27490 thiss!1141) #b00011111111111111111111111111111) (= (mask!27490 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27490 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!947894 d!114677))

(declare-fun d!114679 () Bool)

(declare-fun e!533651 () Bool)

(assert (=> d!114679 e!533651))

(declare-fun res!636171 () Bool)

(assert (=> d!114679 (=> res!636171 e!533651)))

(declare-fun lt!426808 () Bool)

(assert (=> d!114679 (= res!636171 (not lt!426808))))

(declare-fun lt!426809 () Bool)

(assert (=> d!114679 (= lt!426808 lt!426809)))

(declare-datatypes ((Unit!31936 0))(
  ( (Unit!31937) )
))
(declare-fun lt!426810 () Unit!31936)

(declare-fun e!533652 () Unit!31936)

(assert (=> d!114679 (= lt!426810 e!533652)))

(declare-fun c!98708 () Bool)

(assert (=> d!114679 (= c!98708 lt!426809)))

(declare-fun containsKey!458 (List!19445 (_ BitVec 64)) Bool)

(assert (=> d!114679 (= lt!426809 (containsKey!458 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(assert (=> d!114679 (= (contains!5212 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)) key!756) lt!426808)))

(declare-fun b!947956 () Bool)

(declare-fun lt!426807 () Unit!31936)

(assert (=> b!947956 (= e!533652 lt!426807)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!353 (List!19445 (_ BitVec 64)) Unit!31936)

(assert (=> b!947956 (= lt!426807 (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(declare-datatypes ((Option!499 0))(
  ( (Some!498 (v!12940 V!32569)) (None!497) )
))
(declare-fun isDefined!363 (Option!499) Bool)

(declare-fun getValueByKey!493 (List!19445 (_ BitVec 64)) Option!499)

(assert (=> b!947956 (isDefined!363 (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(declare-fun b!947957 () Bool)

(declare-fun Unit!31938 () Unit!31936)

(assert (=> b!947957 (= e!533652 Unit!31938)))

(declare-fun b!947958 () Bool)

(assert (=> b!947958 (= e!533651 (isDefined!363 (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756)))))

(assert (= (and d!114679 c!98708) b!947956))

(assert (= (and d!114679 (not c!98708)) b!947957))

(assert (= (and d!114679 (not res!636171)) b!947958))

(declare-fun m!880851 () Bool)

(assert (=> d!114679 m!880851))

(declare-fun m!880853 () Bool)

(assert (=> b!947956 m!880853))

(declare-fun m!880855 () Bool)

(assert (=> b!947956 m!880855))

(assert (=> b!947956 m!880855))

(declare-fun m!880857 () Bool)

(assert (=> b!947956 m!880857))

(assert (=> b!947958 m!880855))

(assert (=> b!947958 m!880855))

(assert (=> b!947958 m!880857))

(assert (=> b!947889 d!114679))

(declare-fun b!948001 () Bool)

(declare-fun e!533690 () ListLongMap!12327)

(declare-fun call!41184 () ListLongMap!12327)

(declare-fun +!2820 (ListLongMap!12327 tuple2!13616) ListLongMap!12327)

(assert (=> b!948001 (= e!533690 (+!2820 call!41184 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))

(declare-fun b!948003 () Bool)

(declare-fun e!533680 () ListLongMap!12327)

(assert (=> b!948003 (= e!533690 e!533680)))

(declare-fun c!98722 () Bool)

(assert (=> b!948003 (= c!98722 (and (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948004 () Bool)

(declare-fun e!533682 () Unit!31936)

(declare-fun lt!426866 () Unit!31936)

(assert (=> b!948004 (= e!533682 lt!426866)))

(declare-fun lt!426857 () ListLongMap!12327)

(declare-fun getCurrentListMapNoExtraKeys!3326 (array!57434 array!57432 (_ BitVec 32) (_ BitVec 32) V!32569 V!32569 (_ BitVec 32) Int) ListLongMap!12327)

(assert (=> b!948004 (= lt!426857 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))

(declare-fun lt!426860 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426860 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426876 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426876 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426868 () Unit!31936)

(declare-fun addStillContains!576 (ListLongMap!12327 (_ BitVec 64) V!32569 (_ BitVec 64)) Unit!31936)

(assert (=> b!948004 (= lt!426868 (addStillContains!576 lt!426857 lt!426860 (zeroValue!5581 thiss!1141) lt!426876))))

(assert (=> b!948004 (contains!5212 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) lt!426876)))

(declare-fun lt!426862 () Unit!31936)

(assert (=> b!948004 (= lt!426862 lt!426868)))

(declare-fun lt!426861 () ListLongMap!12327)

(assert (=> b!948004 (= lt!426861 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))

(declare-fun lt!426865 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426865 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426875 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426875 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426873 () Unit!31936)

(declare-fun addApplyDifferent!450 (ListLongMap!12327 (_ BitVec 64) V!32569 (_ BitVec 64)) Unit!31936)

(assert (=> b!948004 (= lt!426873 (addApplyDifferent!450 lt!426861 lt!426865 (minValue!5581 thiss!1141) lt!426875))))

(declare-fun apply!906 (ListLongMap!12327 (_ BitVec 64)) V!32569)

(assert (=> b!948004 (= (apply!906 (+!2820 lt!426861 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) lt!426875) (apply!906 lt!426861 lt!426875))))

(declare-fun lt!426864 () Unit!31936)

(assert (=> b!948004 (= lt!426864 lt!426873)))

(declare-fun lt!426871 () ListLongMap!12327)

(assert (=> b!948004 (= lt!426871 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))

(declare-fun lt!426874 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426874 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426863 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426863 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426858 () Unit!31936)

(assert (=> b!948004 (= lt!426858 (addApplyDifferent!450 lt!426871 lt!426874 (zeroValue!5581 thiss!1141) lt!426863))))

(assert (=> b!948004 (= (apply!906 (+!2820 lt!426871 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) lt!426863) (apply!906 lt!426871 lt!426863))))

(declare-fun lt!426870 () Unit!31936)

(assert (=> b!948004 (= lt!426870 lt!426858)))

(declare-fun lt!426869 () ListLongMap!12327)

(assert (=> b!948004 (= lt!426869 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))

(declare-fun lt!426855 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426855 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426859 () (_ BitVec 64))

(assert (=> b!948004 (= lt!426859 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948004 (= lt!426866 (addApplyDifferent!450 lt!426869 lt!426855 (minValue!5581 thiss!1141) lt!426859))))

(assert (=> b!948004 (= (apply!906 (+!2820 lt!426869 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) lt!426859) (apply!906 lt!426869 lt!426859))))

(declare-fun b!948005 () Bool)

(declare-fun call!41183 () ListLongMap!12327)

(assert (=> b!948005 (= e!533680 call!41183)))

(declare-fun b!948006 () Bool)

(declare-fun e!533687 () Bool)

(declare-fun e!533689 () Bool)

(assert (=> b!948006 (= e!533687 e!533689)))

(declare-fun res!636194 () Bool)

(declare-fun call!41181 () Bool)

(assert (=> b!948006 (= res!636194 call!41181)))

(assert (=> b!948006 (=> (not res!636194) (not e!533689))))

(declare-fun bm!41178 () Bool)

(declare-fun lt!426867 () ListLongMap!12327)

(assert (=> bm!41178 (= call!41181 (contains!5212 lt!426867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41179 () Bool)

(declare-fun call!41185 () ListLongMap!12327)

(assert (=> bm!41179 (= call!41185 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))

(declare-fun b!948007 () Bool)

(declare-fun e!533683 () Bool)

(declare-fun e!533679 () Bool)

(assert (=> b!948007 (= e!533683 e!533679)))

(declare-fun res!636198 () Bool)

(assert (=> b!948007 (=> (not res!636198) (not e!533679))))

(assert (=> b!948007 (= res!636198 (contains!5212 lt!426867 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun b!948008 () Bool)

(declare-fun e!533684 () Bool)

(declare-fun e!533681 () Bool)

(assert (=> b!948008 (= e!533684 e!533681)))

(declare-fun res!636193 () Bool)

(declare-fun call!41186 () Bool)

(assert (=> b!948008 (= res!636193 call!41186)))

(assert (=> b!948008 (=> (not res!636193) (not e!533681))))

(declare-fun b!948009 () Bool)

(declare-fun res!636192 () Bool)

(declare-fun e!533686 () Bool)

(assert (=> b!948009 (=> (not res!636192) (not e!533686))))

(assert (=> b!948009 (= res!636192 e!533687)))

(declare-fun c!98724 () Bool)

(assert (=> b!948009 (= c!98724 (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!948010 () Bool)

(assert (=> b!948010 (= e!533687 (not call!41181))))

(declare-fun b!948002 () Bool)

(declare-fun Unit!31939 () Unit!31936)

(assert (=> b!948002 (= e!533682 Unit!31939)))

(declare-fun d!114681 () Bool)

(assert (=> d!114681 e!533686))

(declare-fun res!636197 () Bool)

(assert (=> d!114681 (=> (not res!636197) (not e!533686))))

(assert (=> d!114681 (= res!636197 (or (bvsge #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))))

(declare-fun lt!426856 () ListLongMap!12327)

(assert (=> d!114681 (= lt!426867 lt!426856)))

(declare-fun lt!426872 () Unit!31936)

(assert (=> d!114681 (= lt!426872 e!533682)))

(declare-fun c!98725 () Bool)

(declare-fun e!533688 () Bool)

(assert (=> d!114681 (= c!98725 e!533688)))

(declare-fun res!636190 () Bool)

(assert (=> d!114681 (=> (not res!636190) (not e!533688))))

(assert (=> d!114681 (= res!636190 (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114681 (= lt!426856 e!533690)))

(declare-fun c!98726 () Bool)

(assert (=> d!114681 (= c!98726 (and (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114681 (validMask!0 (mask!27490 thiss!1141))))

(assert (=> d!114681 (= (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)) lt!426867)))

(declare-fun bm!41180 () Bool)

(declare-fun call!41187 () ListLongMap!12327)

(declare-fun call!41182 () ListLongMap!12327)

(assert (=> bm!41180 (= call!41184 (+!2820 (ite c!98726 call!41185 (ite c!98722 call!41187 call!41182)) (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(declare-fun b!948011 () Bool)

(declare-fun e!533685 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!948011 (= e!533685 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948012 () Bool)

(declare-fun res!636195 () Bool)

(assert (=> b!948012 (=> (not res!636195) (not e!533686))))

(assert (=> b!948012 (= res!636195 e!533683)))

(declare-fun res!636191 () Bool)

(assert (=> b!948012 (=> res!636191 e!533683)))

(assert (=> b!948012 (= res!636191 (not e!533685))))

(declare-fun res!636196 () Bool)

(assert (=> b!948012 (=> (not res!636196) (not e!533685))))

(assert (=> b!948012 (= res!636196 (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun b!948013 () Bool)

(declare-fun e!533691 () ListLongMap!12327)

(assert (=> b!948013 (= e!533691 call!41183)))

(declare-fun b!948014 () Bool)

(declare-fun get!14521 (ValueCell!9870 V!32569) V!32569)

(declare-fun dynLambda!1659 (Int (_ BitVec 64)) V!32569)

(assert (=> b!948014 (= e!533679 (= (apply!906 lt!426867 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)) (get!14521 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948014 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28093 (_values!5768 thiss!1141))))))

(assert (=> b!948014 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun b!948015 () Bool)

(assert (=> b!948015 (= e!533681 (= (apply!906 lt!426867 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5581 thiss!1141)))))

(declare-fun b!948016 () Bool)

(assert (=> b!948016 (= e!533684 (not call!41186))))

(declare-fun b!948017 () Bool)

(assert (=> b!948017 (= e!533691 call!41182)))

(declare-fun b!948018 () Bool)

(assert (=> b!948018 (= e!533686 e!533684)))

(declare-fun c!98721 () Bool)

(assert (=> b!948018 (= c!98721 (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41181 () Bool)

(assert (=> bm!41181 (= call!41187 call!41185)))

(declare-fun bm!41182 () Bool)

(assert (=> bm!41182 (= call!41183 call!41184)))

(declare-fun b!948019 () Bool)

(assert (=> b!948019 (= e!533689 (= (apply!906 lt!426867 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5581 thiss!1141)))))

(declare-fun b!948020 () Bool)

(declare-fun c!98723 () Bool)

(assert (=> b!948020 (= c!98723 (and (not (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5477 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!948020 (= e!533680 e!533691)))

(declare-fun b!948021 () Bool)

(assert (=> b!948021 (= e!533688 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41183 () Bool)

(assert (=> bm!41183 (= call!41186 (contains!5212 lt!426867 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41184 () Bool)

(assert (=> bm!41184 (= call!41182 call!41187)))

(assert (= (and d!114681 c!98726) b!948001))

(assert (= (and d!114681 (not c!98726)) b!948003))

(assert (= (and b!948003 c!98722) b!948005))

(assert (= (and b!948003 (not c!98722)) b!948020))

(assert (= (and b!948020 c!98723) b!948013))

(assert (= (and b!948020 (not c!98723)) b!948017))

(assert (= (or b!948013 b!948017) bm!41184))

(assert (= (or b!948005 bm!41184) bm!41181))

(assert (= (or b!948005 b!948013) bm!41182))

(assert (= (or b!948001 bm!41181) bm!41179))

(assert (= (or b!948001 bm!41182) bm!41180))

(assert (= (and d!114681 res!636190) b!948021))

(assert (= (and d!114681 c!98725) b!948004))

(assert (= (and d!114681 (not c!98725)) b!948002))

(assert (= (and d!114681 res!636197) b!948012))

(assert (= (and b!948012 res!636196) b!948011))

(assert (= (and b!948012 (not res!636191)) b!948007))

(assert (= (and b!948007 res!636198) b!948014))

(assert (= (and b!948012 res!636195) b!948009))

(assert (= (and b!948009 c!98724) b!948006))

(assert (= (and b!948009 (not c!98724)) b!948010))

(assert (= (and b!948006 res!636194) b!948019))

(assert (= (or b!948006 b!948010) bm!41178))

(assert (= (and b!948009 res!636192) b!948018))

(assert (= (and b!948018 c!98721) b!948008))

(assert (= (and b!948018 (not c!98721)) b!948016))

(assert (= (and b!948008 res!636193) b!948015))

(assert (= (or b!948008 b!948016) bm!41183))

(declare-fun b_lambda!14337 () Bool)

(assert (=> (not b_lambda!14337) (not b!948014)))

(declare-fun t!27781 () Bool)

(declare-fun tb!6185 () Bool)

(assert (=> (and b!947888 (= (defaultEntry!5745 thiss!1141) (defaultEntry!5745 thiss!1141)) t!27781) tb!6185))

(declare-fun result!12261 () Bool)

(assert (=> tb!6185 (= result!12261 tp_is_empty!20703)))

(assert (=> b!948014 t!27781))

(declare-fun b_and!29643 () Bool)

(assert (= b_and!29639 (and (=> t!27781 result!12261) b_and!29643)))

(assert (=> d!114681 m!880807))

(declare-fun m!880859 () Bool)

(assert (=> bm!41180 m!880859))

(declare-fun m!880861 () Bool)

(assert (=> bm!41178 m!880861))

(declare-fun m!880863 () Bool)

(assert (=> b!948014 m!880863))

(declare-fun m!880865 () Bool)

(assert (=> b!948014 m!880865))

(declare-fun m!880867 () Bool)

(assert (=> b!948014 m!880867))

(declare-fun m!880869 () Bool)

(assert (=> b!948014 m!880869))

(assert (=> b!948014 m!880869))

(assert (=> b!948014 m!880863))

(declare-fun m!880871 () Bool)

(assert (=> b!948014 m!880871))

(assert (=> b!948014 m!880865))

(declare-fun m!880873 () Bool)

(assert (=> b!948004 m!880873))

(declare-fun m!880875 () Bool)

(assert (=> b!948004 m!880875))

(declare-fun m!880877 () Bool)

(assert (=> b!948004 m!880877))

(declare-fun m!880879 () Bool)

(assert (=> b!948004 m!880879))

(declare-fun m!880881 () Bool)

(assert (=> b!948004 m!880881))

(declare-fun m!880883 () Bool)

(assert (=> b!948004 m!880883))

(declare-fun m!880885 () Bool)

(assert (=> b!948004 m!880885))

(assert (=> b!948004 m!880873))

(declare-fun m!880887 () Bool)

(assert (=> b!948004 m!880887))

(declare-fun m!880889 () Bool)

(assert (=> b!948004 m!880889))

(declare-fun m!880891 () Bool)

(assert (=> b!948004 m!880891))

(declare-fun m!880893 () Bool)

(assert (=> b!948004 m!880893))

(declare-fun m!880895 () Bool)

(assert (=> b!948004 m!880895))

(declare-fun m!880897 () Bool)

(assert (=> b!948004 m!880897))

(assert (=> b!948004 m!880883))

(assert (=> b!948004 m!880875))

(assert (=> b!948004 m!880865))

(declare-fun m!880899 () Bool)

(assert (=> b!948004 m!880899))

(declare-fun m!880901 () Bool)

(assert (=> b!948004 m!880901))

(declare-fun m!880903 () Bool)

(assert (=> b!948004 m!880903))

(assert (=> b!948004 m!880891))

(assert (=> bm!41179 m!880899))

(assert (=> b!948007 m!880865))

(assert (=> b!948007 m!880865))

(declare-fun m!880905 () Bool)

(assert (=> b!948007 m!880905))

(declare-fun m!880907 () Bool)

(assert (=> bm!41183 m!880907))

(declare-fun m!880909 () Bool)

(assert (=> b!948001 m!880909))

(assert (=> b!948011 m!880865))

(assert (=> b!948011 m!880865))

(declare-fun m!880911 () Bool)

(assert (=> b!948011 m!880911))

(declare-fun m!880913 () Bool)

(assert (=> b!948019 m!880913))

(assert (=> b!948021 m!880865))

(assert (=> b!948021 m!880865))

(assert (=> b!948021 m!880911))

(declare-fun m!880915 () Bool)

(assert (=> b!948015 m!880915))

(assert (=> b!947889 d!114681))

(declare-fun d!114683 () Bool)

(assert (=> d!114683 (= (array_inv!21386 (_keys!10656 thiss!1141)) (bvsge (size!28094 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947888 d!114683))

(declare-fun d!114685 () Bool)

(assert (=> d!114685 (= (array_inv!21387 (_values!5768 thiss!1141)) (bvsge (size!28093 (_values!5768 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947888 d!114685))

(declare-fun mapIsEmpty!32947 () Bool)

(declare-fun mapRes!32947 () Bool)

(assert (=> mapIsEmpty!32947 mapRes!32947))

(declare-fun mapNonEmpty!32947 () Bool)

(declare-fun tp!63166 () Bool)

(declare-fun e!533696 () Bool)

(assert (=> mapNonEmpty!32947 (= mapRes!32947 (and tp!63166 e!533696))))

(declare-fun mapRest!32947 () (Array (_ BitVec 32) ValueCell!9870))

(declare-fun mapValue!32947 () ValueCell!9870)

(declare-fun mapKey!32947 () (_ BitVec 32))

(assert (=> mapNonEmpty!32947 (= mapRest!32941 (store mapRest!32947 mapKey!32947 mapValue!32947))))

(declare-fun b!948031 () Bool)

(declare-fun e!533697 () Bool)

(assert (=> b!948031 (= e!533697 tp_is_empty!20703)))

(declare-fun condMapEmpty!32947 () Bool)

(declare-fun mapDefault!32947 () ValueCell!9870)

(assert (=> mapNonEmpty!32941 (= condMapEmpty!32947 (= mapRest!32941 ((as const (Array (_ BitVec 32) ValueCell!9870)) mapDefault!32947)))))

(assert (=> mapNonEmpty!32941 (= tp!63156 (and e!533697 mapRes!32947))))

(declare-fun b!948030 () Bool)

(assert (=> b!948030 (= e!533696 tp_is_empty!20703)))

(assert (= (and mapNonEmpty!32941 condMapEmpty!32947) mapIsEmpty!32947))

(assert (= (and mapNonEmpty!32941 (not condMapEmpty!32947)) mapNonEmpty!32947))

(assert (= (and mapNonEmpty!32947 ((_ is ValueCellFull!9870) mapValue!32947)) b!948030))

(assert (= (and mapNonEmpty!32941 ((_ is ValueCellFull!9870) mapDefault!32947)) b!948031))

(declare-fun m!880917 () Bool)

(assert (=> mapNonEmpty!32947 m!880917))

(declare-fun b_lambda!14339 () Bool)

(assert (= b_lambda!14337 (or (and b!947888 b_free!18195) b_lambda!14339)))

(check-sat (not d!114681) (not mapNonEmpty!32947) (not d!114673) (not b!947958) (not b!948001) (not b!947947) (not b!947948) (not d!114675) (not b!947956) (not b!948011) (not b_lambda!14339) (not b!948015) (not bm!41183) (not b!948019) tp_is_empty!20703 (not bm!41179) (not b!948004) b_and!29643 (not b_next!18195) (not b!948007) (not b!948021) (not d!114679) (not b!948014) (not bm!41178) (not bm!41180) (not b!947949) (not b!947936))
(check-sat b_and!29643 (not b_next!18195))
(get-model)

(declare-fun b!948042 () Bool)

(declare-fun e!533706 () Bool)

(declare-fun e!533707 () Bool)

(assert (=> b!948042 (= e!533706 e!533707)))

(declare-fun c!98729 () Bool)

(assert (=> b!948042 (= c!98729 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948043 () Bool)

(declare-fun call!41190 () Bool)

(assert (=> b!948043 (= e!533707 call!41190)))

(declare-fun d!114687 () Bool)

(declare-fun res!636207 () Bool)

(declare-fun e!533708 () Bool)

(assert (=> d!114687 (=> res!636207 e!533708)))

(assert (=> d!114687 (= res!636207 (bvsge #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114687 (= (arrayNoDuplicates!0 (_keys!10656 thiss!1141) #b00000000000000000000000000000000 Nil!19444) e!533708)))

(declare-fun b!948044 () Bool)

(assert (=> b!948044 (= e!533708 e!533706)))

(declare-fun res!636206 () Bool)

(assert (=> b!948044 (=> (not res!636206) (not e!533706))))

(declare-fun e!533709 () Bool)

(assert (=> b!948044 (= res!636206 (not e!533709))))

(declare-fun res!636205 () Bool)

(assert (=> b!948044 (=> (not res!636205) (not e!533709))))

(assert (=> b!948044 (= res!636205 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948045 () Bool)

(assert (=> b!948045 (= e!533707 call!41190)))

(declare-fun bm!41187 () Bool)

(assert (=> bm!41187 (= call!41190 (arrayNoDuplicates!0 (_keys!10656 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98729 (Cons!19443 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000) Nil!19444) Nil!19444)))))

(declare-fun b!948046 () Bool)

(declare-fun contains!5214 (List!19447 (_ BitVec 64)) Bool)

(assert (=> b!948046 (= e!533709 (contains!5214 Nil!19444 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114687 (not res!636207)) b!948044))

(assert (= (and b!948044 res!636205) b!948046))

(assert (= (and b!948044 res!636206) b!948042))

(assert (= (and b!948042 c!98729) b!948043))

(assert (= (and b!948042 (not c!98729)) b!948045))

(assert (= (or b!948043 b!948045) bm!41187))

(assert (=> b!948042 m!880865))

(assert (=> b!948042 m!880865))

(assert (=> b!948042 m!880911))

(assert (=> b!948044 m!880865))

(assert (=> b!948044 m!880865))

(assert (=> b!948044 m!880911))

(assert (=> bm!41187 m!880865))

(declare-fun m!880919 () Bool)

(assert (=> bm!41187 m!880919))

(assert (=> b!948046 m!880865))

(assert (=> b!948046 m!880865))

(declare-fun m!880921 () Bool)

(assert (=> b!948046 m!880921))

(assert (=> b!947949 d!114687))

(declare-fun d!114689 () Bool)

(declare-fun e!533710 () Bool)

(assert (=> d!114689 e!533710))

(declare-fun res!636208 () Bool)

(assert (=> d!114689 (=> res!636208 e!533710)))

(declare-fun lt!426878 () Bool)

(assert (=> d!114689 (= res!636208 (not lt!426878))))

(declare-fun lt!426879 () Bool)

(assert (=> d!114689 (= lt!426878 lt!426879)))

(declare-fun lt!426880 () Unit!31936)

(declare-fun e!533711 () Unit!31936)

(assert (=> d!114689 (= lt!426880 e!533711)))

(declare-fun c!98730 () Bool)

(assert (=> d!114689 (= c!98730 lt!426879)))

(assert (=> d!114689 (= lt!426879 (containsKey!458 (toList!6179 lt!426867) (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114689 (= (contains!5212 lt!426867 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)) lt!426878)))

(declare-fun b!948047 () Bool)

(declare-fun lt!426877 () Unit!31936)

(assert (=> b!948047 (= e!533711 lt!426877)))

(assert (=> b!948047 (= lt!426877 (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 lt!426867) (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948047 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948048 () Bool)

(declare-fun Unit!31940 () Unit!31936)

(assert (=> b!948048 (= e!533711 Unit!31940)))

(declare-fun b!948049 () Bool)

(assert (=> b!948049 (= e!533710 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!114689 c!98730) b!948047))

(assert (= (and d!114689 (not c!98730)) b!948048))

(assert (= (and d!114689 (not res!636208)) b!948049))

(assert (=> d!114689 m!880865))

(declare-fun m!880923 () Bool)

(assert (=> d!114689 m!880923))

(assert (=> b!948047 m!880865))

(declare-fun m!880925 () Bool)

(assert (=> b!948047 m!880925))

(assert (=> b!948047 m!880865))

(declare-fun m!880927 () Bool)

(assert (=> b!948047 m!880927))

(assert (=> b!948047 m!880927))

(declare-fun m!880929 () Bool)

(assert (=> b!948047 m!880929))

(assert (=> b!948049 m!880865))

(assert (=> b!948049 m!880927))

(assert (=> b!948049 m!880927))

(assert (=> b!948049 m!880929))

(assert (=> b!948007 d!114689))

(declare-fun d!114691 () Bool)

(declare-fun isEmpty!709 (Option!499) Bool)

(assert (=> d!114691 (= (isDefined!363 (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756)) (not (isEmpty!709 (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))))

(declare-fun bs!26636 () Bool)

(assert (= bs!26636 d!114691))

(assert (=> bs!26636 m!880855))

(declare-fun m!880931 () Bool)

(assert (=> bs!26636 m!880931))

(assert (=> b!947958 d!114691))

(declare-fun d!114693 () Bool)

(declare-fun c!98735 () Bool)

(assert (=> d!114693 (= c!98735 (and ((_ is Cons!19441) (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) (= (_1!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) key!756)))))

(declare-fun e!533716 () Option!499)

(assert (=> d!114693 (= (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756) e!533716)))

(declare-fun b!948058 () Bool)

(assert (=> b!948058 (= e!533716 (Some!498 (_2!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))))))

(declare-fun b!948059 () Bool)

(declare-fun e!533717 () Option!499)

(assert (=> b!948059 (= e!533716 e!533717)))

(declare-fun c!98736 () Bool)

(assert (=> b!948059 (= c!98736 (and ((_ is Cons!19441) (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) (not (= (_1!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) key!756))))))

(declare-fun b!948061 () Bool)

(assert (=> b!948061 (= e!533717 None!497)))

(declare-fun b!948060 () Bool)

(assert (=> b!948060 (= e!533717 (getValueByKey!493 (t!27778 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) key!756))))

(assert (= (and d!114693 c!98735) b!948058))

(assert (= (and d!114693 (not c!98735)) b!948059))

(assert (= (and b!948059 c!98736) b!948060))

(assert (= (and b!948059 (not c!98736)) b!948061))

(declare-fun m!880933 () Bool)

(assert (=> b!948060 m!880933))

(assert (=> b!947958 d!114693))

(declare-fun b!948070 () Bool)

(declare-fun e!533724 () Bool)

(declare-fun call!41193 () Bool)

(assert (=> b!948070 (= e!533724 call!41193)))

(declare-fun d!114695 () Bool)

(declare-fun res!636214 () Bool)

(declare-fun e!533725 () Bool)

(assert (=> d!114695 (=> res!636214 e!533725)))

(assert (=> d!114695 (= res!636214 (bvsge #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114695 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)) e!533725)))

(declare-fun b!948071 () Bool)

(assert (=> b!948071 (= e!533725 e!533724)))

(declare-fun c!98739 () Bool)

(assert (=> b!948071 (= c!98739 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41190 () Bool)

(assert (=> bm!41190 (= call!41193 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(declare-fun b!948072 () Bool)

(declare-fun e!533726 () Bool)

(assert (=> b!948072 (= e!533726 call!41193)))

(declare-fun b!948073 () Bool)

(assert (=> b!948073 (= e!533724 e!533726)))

(declare-fun lt!426888 () (_ BitVec 64))

(assert (=> b!948073 (= lt!426888 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426889 () Unit!31936)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57434 (_ BitVec 64) (_ BitVec 32)) Unit!31936)

(assert (=> b!948073 (= lt!426889 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10656 thiss!1141) lt!426888 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!948073 (arrayContainsKey!0 (_keys!10656 thiss!1141) lt!426888 #b00000000000000000000000000000000)))

(declare-fun lt!426887 () Unit!31936)

(assert (=> b!948073 (= lt!426887 lt!426889)))

(declare-fun res!636213 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57434 (_ BitVec 32)) SeekEntryResult!9115)

(assert (=> b!948073 (= res!636213 (= (seekEntryOrOpen!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000) (_keys!10656 thiss!1141) (mask!27490 thiss!1141)) (Found!9115 #b00000000000000000000000000000000)))))

(assert (=> b!948073 (=> (not res!636213) (not e!533726))))

(assert (= (and d!114695 (not res!636214)) b!948071))

(assert (= (and b!948071 c!98739) b!948073))

(assert (= (and b!948071 (not c!98739)) b!948070))

(assert (= (and b!948073 res!636213) b!948072))

(assert (= (or b!948072 b!948070) bm!41190))

(assert (=> b!948071 m!880865))

(assert (=> b!948071 m!880865))

(assert (=> b!948071 m!880911))

(declare-fun m!880935 () Bool)

(assert (=> bm!41190 m!880935))

(assert (=> b!948073 m!880865))

(declare-fun m!880937 () Bool)

(assert (=> b!948073 m!880937))

(declare-fun m!880939 () Bool)

(assert (=> b!948073 m!880939))

(assert (=> b!948073 m!880865))

(declare-fun m!880941 () Bool)

(assert (=> b!948073 m!880941))

(assert (=> b!947948 d!114695))

(assert (=> d!114681 d!114677))

(declare-fun d!114697 () Bool)

(declare-fun lt!426892 () (_ BitVec 32))

(assert (=> d!114697 (and (bvsge lt!426892 #b00000000000000000000000000000000) (bvsle lt!426892 (bvsub (size!28094 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!533731 () (_ BitVec 32))

(assert (=> d!114697 (= lt!426892 e!533731)))

(declare-fun c!98744 () Bool)

(assert (=> d!114697 (= c!98744 (bvsge #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114697 (and (bvsle #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28094 (_keys!10656 thiss!1141)) (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114697 (= (arrayCountValidKeys!0 (_keys!10656 thiss!1141) #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))) lt!426892)))

(declare-fun b!948082 () Bool)

(assert (=> b!948082 (= e!533731 #b00000000000000000000000000000000)))

(declare-fun b!948083 () Bool)

(declare-fun e!533732 () (_ BitVec 32))

(assert (=> b!948083 (= e!533731 e!533732)))

(declare-fun c!98745 () Bool)

(assert (=> b!948083 (= c!98745 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948084 () Bool)

(declare-fun call!41196 () (_ BitVec 32))

(assert (=> b!948084 (= e!533732 (bvadd #b00000000000000000000000000000001 call!41196))))

(declare-fun b!948085 () Bool)

(assert (=> b!948085 (= e!533732 call!41196)))

(declare-fun bm!41193 () Bool)

(assert (=> bm!41193 (= call!41196 (arrayCountValidKeys!0 (_keys!10656 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28094 (_keys!10656 thiss!1141))))))

(assert (= (and d!114697 c!98744) b!948082))

(assert (= (and d!114697 (not c!98744)) b!948083))

(assert (= (and b!948083 c!98745) b!948084))

(assert (= (and b!948083 (not c!98745)) b!948085))

(assert (= (or b!948084 b!948085) bm!41193))

(assert (=> b!948083 m!880865))

(assert (=> b!948083 m!880865))

(assert (=> b!948083 m!880911))

(declare-fun m!880943 () Bool)

(assert (=> bm!41193 m!880943))

(assert (=> b!947947 d!114697))

(declare-fun b!948097 () Bool)

(declare-fun e!533735 () Bool)

(assert (=> b!948097 (= e!533735 (and (bvsge (extraKeys!5477 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5477 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2500 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun d!114699 () Bool)

(declare-fun res!636224 () Bool)

(assert (=> d!114699 (=> (not res!636224) (not e!533735))))

(assert (=> d!114699 (= res!636224 (validMask!0 (mask!27490 thiss!1141)))))

(assert (=> d!114699 (= (simpleValid!366 thiss!1141) e!533735)))

(declare-fun b!948096 () Bool)

(declare-fun res!636225 () Bool)

(assert (=> b!948096 (=> (not res!636225) (not e!533735))))

(declare-fun size!28097 (LongMapFixedSize!4890) (_ BitVec 32))

(assert (=> b!948096 (= res!636225 (= (size!28097 thiss!1141) (bvadd (_size!2500 thiss!1141) (bvsdiv (bvadd (extraKeys!5477 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!948094 () Bool)

(declare-fun res!636226 () Bool)

(assert (=> b!948094 (=> (not res!636226) (not e!533735))))

(assert (=> b!948094 (= res!636226 (and (= (size!28093 (_values!5768 thiss!1141)) (bvadd (mask!27490 thiss!1141) #b00000000000000000000000000000001)) (= (size!28094 (_keys!10656 thiss!1141)) (size!28093 (_values!5768 thiss!1141))) (bvsge (_size!2500 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2500 thiss!1141) (bvadd (mask!27490 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!948095 () Bool)

(declare-fun res!636223 () Bool)

(assert (=> b!948095 (=> (not res!636223) (not e!533735))))

(assert (=> b!948095 (= res!636223 (bvsge (size!28097 thiss!1141) (_size!2500 thiss!1141)))))

(assert (= (and d!114699 res!636224) b!948094))

(assert (= (and b!948094 res!636226) b!948095))

(assert (= (and b!948095 res!636223) b!948096))

(assert (= (and b!948096 res!636225) b!948097))

(assert (=> d!114699 m!880807))

(declare-fun m!880945 () Bool)

(assert (=> b!948096 m!880945))

(assert (=> b!948095 m!880945))

(assert (=> d!114675 d!114699))

(declare-fun b!948122 () Bool)

(declare-fun res!636235 () Bool)

(declare-fun e!533751 () Bool)

(assert (=> b!948122 (=> (not res!636235) (not e!533751))))

(declare-fun lt!426909 () ListLongMap!12327)

(assert (=> b!948122 (= res!636235 (not (contains!5212 lt!426909 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!41196 () Bool)

(declare-fun call!41199 () ListLongMap!12327)

(assert (=> bm!41196 (= call!41199 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5745 thiss!1141)))))

(declare-fun b!948124 () Bool)

(declare-fun e!533750 () ListLongMap!12327)

(assert (=> b!948124 (= e!533750 (ListLongMap!12328 Nil!19442))))

(declare-fun b!948125 () Bool)

(declare-fun lt!426907 () Unit!31936)

(declare-fun lt!426910 () Unit!31936)

(assert (=> b!948125 (= lt!426907 lt!426910)))

(declare-fun lt!426911 () (_ BitVec 64))

(declare-fun lt!426912 () V!32569)

(declare-fun lt!426913 () ListLongMap!12327)

(declare-fun lt!426908 () (_ BitVec 64))

(assert (=> b!948125 (not (contains!5212 (+!2820 lt!426913 (tuple2!13617 lt!426911 lt!426912)) lt!426908))))

(declare-fun addStillNotContains!225 (ListLongMap!12327 (_ BitVec 64) V!32569 (_ BitVec 64)) Unit!31936)

(assert (=> b!948125 (= lt!426910 (addStillNotContains!225 lt!426913 lt!426911 lt!426912 lt!426908))))

(assert (=> b!948125 (= lt!426908 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!948125 (= lt!426912 (get!14521 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!948125 (= lt!426911 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948125 (= lt!426913 call!41199)))

(declare-fun e!533754 () ListLongMap!12327)

(assert (=> b!948125 (= e!533754 (+!2820 call!41199 (tuple2!13617 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000) (get!14521 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!948126 () Bool)

(assert (=> b!948126 (= e!533750 e!533754)))

(declare-fun c!98756 () Bool)

(assert (=> b!948126 (= c!98756 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948127 () Bool)

(declare-fun e!533752 () Bool)

(declare-fun isEmpty!710 (ListLongMap!12327) Bool)

(assert (=> b!948127 (= e!533752 (isEmpty!710 lt!426909))))

(declare-fun b!948128 () Bool)

(declare-fun e!533753 () Bool)

(assert (=> b!948128 (= e!533753 e!533752)))

(declare-fun c!98757 () Bool)

(assert (=> b!948128 (= c!98757 (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun b!948129 () Bool)

(declare-fun e!533755 () Bool)

(assert (=> b!948129 (= e!533753 e!533755)))

(assert (=> b!948129 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun res!636237 () Bool)

(assert (=> b!948129 (= res!636237 (contains!5212 lt!426909 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948129 (=> (not res!636237) (not e!533755))))

(declare-fun b!948130 () Bool)

(assert (=> b!948130 (= e!533751 e!533753)))

(declare-fun c!98755 () Bool)

(declare-fun e!533756 () Bool)

(assert (=> b!948130 (= c!98755 e!533756)))

(declare-fun res!636236 () Bool)

(assert (=> b!948130 (=> (not res!636236) (not e!533756))))

(assert (=> b!948130 (= res!636236 (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun b!948131 () Bool)

(assert (=> b!948131 (= e!533752 (= lt!426909 (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5745 thiss!1141))))))

(declare-fun b!948123 () Bool)

(assert (=> b!948123 (= e!533756 (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948123 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!114701 () Bool)

(assert (=> d!114701 e!533751))

(declare-fun res!636238 () Bool)

(assert (=> d!114701 (=> (not res!636238) (not e!533751))))

(assert (=> d!114701 (= res!636238 (not (contains!5212 lt!426909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!114701 (= lt!426909 e!533750)))

(declare-fun c!98754 () Bool)

(assert (=> d!114701 (= c!98754 (bvsge #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> d!114701 (validMask!0 (mask!27490 thiss!1141))))

(assert (=> d!114701 (= (getCurrentListMapNoExtraKeys!3326 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)) lt!426909)))

(declare-fun b!948132 () Bool)

(assert (=> b!948132 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> b!948132 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28093 (_values!5768 thiss!1141))))))

(assert (=> b!948132 (= e!533755 (= (apply!906 lt!426909 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)) (get!14521 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948133 () Bool)

(assert (=> b!948133 (= e!533754 call!41199)))

(assert (= (and d!114701 c!98754) b!948124))

(assert (= (and d!114701 (not c!98754)) b!948126))

(assert (= (and b!948126 c!98756) b!948125))

(assert (= (and b!948126 (not c!98756)) b!948133))

(assert (= (or b!948125 b!948133) bm!41196))

(assert (= (and d!114701 res!636238) b!948122))

(assert (= (and b!948122 res!636235) b!948130))

(assert (= (and b!948130 res!636236) b!948123))

(assert (= (and b!948130 c!98755) b!948129))

(assert (= (and b!948130 (not c!98755)) b!948128))

(assert (= (and b!948129 res!636237) b!948132))

(assert (= (and b!948128 c!98757) b!948131))

(assert (= (and b!948128 (not c!98757)) b!948127))

(declare-fun b_lambda!14341 () Bool)

(assert (=> (not b_lambda!14341) (not b!948125)))

(assert (=> b!948125 t!27781))

(declare-fun b_and!29645 () Bool)

(assert (= b_and!29643 (and (=> t!27781 result!12261) b_and!29645)))

(declare-fun b_lambda!14343 () Bool)

(assert (=> (not b_lambda!14343) (not b!948132)))

(assert (=> b!948132 t!27781))

(declare-fun b_and!29647 () Bool)

(assert (= b_and!29645 (and (=> t!27781 result!12261) b_and!29647)))

(declare-fun m!880947 () Bool)

(assert (=> b!948125 m!880947))

(assert (=> b!948125 m!880869))

(assert (=> b!948125 m!880869))

(assert (=> b!948125 m!880863))

(assert (=> b!948125 m!880871))

(declare-fun m!880949 () Bool)

(assert (=> b!948125 m!880949))

(declare-fun m!880951 () Bool)

(assert (=> b!948125 m!880951))

(assert (=> b!948125 m!880865))

(assert (=> b!948125 m!880863))

(assert (=> b!948125 m!880947))

(declare-fun m!880953 () Bool)

(assert (=> b!948125 m!880953))

(declare-fun m!880955 () Bool)

(assert (=> d!114701 m!880955))

(assert (=> d!114701 m!880807))

(declare-fun m!880957 () Bool)

(assert (=> b!948131 m!880957))

(declare-fun m!880959 () Bool)

(assert (=> b!948127 m!880959))

(assert (=> b!948123 m!880865))

(assert (=> b!948123 m!880865))

(assert (=> b!948123 m!880911))

(assert (=> bm!41196 m!880957))

(assert (=> b!948132 m!880869))

(assert (=> b!948132 m!880869))

(assert (=> b!948132 m!880863))

(assert (=> b!948132 m!880871))

(assert (=> b!948132 m!880865))

(declare-fun m!880961 () Bool)

(assert (=> b!948132 m!880961))

(assert (=> b!948132 m!880865))

(assert (=> b!948132 m!880863))

(assert (=> b!948126 m!880865))

(assert (=> b!948126 m!880865))

(assert (=> b!948126 m!880911))

(assert (=> b!948129 m!880865))

(assert (=> b!948129 m!880865))

(declare-fun m!880963 () Bool)

(assert (=> b!948129 m!880963))

(declare-fun m!880965 () Bool)

(assert (=> b!948122 m!880965))

(assert (=> bm!41179 d!114701))

(declare-fun d!114703 () Bool)

(declare-fun e!533757 () Bool)

(assert (=> d!114703 e!533757))

(declare-fun res!636239 () Bool)

(assert (=> d!114703 (=> res!636239 e!533757)))

(declare-fun lt!426915 () Bool)

(assert (=> d!114703 (= res!636239 (not lt!426915))))

(declare-fun lt!426916 () Bool)

(assert (=> d!114703 (= lt!426915 lt!426916)))

(declare-fun lt!426917 () Unit!31936)

(declare-fun e!533758 () Unit!31936)

(assert (=> d!114703 (= lt!426917 e!533758)))

(declare-fun c!98758 () Bool)

(assert (=> d!114703 (= c!98758 lt!426916)))

(assert (=> d!114703 (= lt!426916 (containsKey!458 (toList!6179 lt!426867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114703 (= (contains!5212 lt!426867 #b0000000000000000000000000000000000000000000000000000000000000000) lt!426915)))

(declare-fun b!948134 () Bool)

(declare-fun lt!426914 () Unit!31936)

(assert (=> b!948134 (= e!533758 lt!426914)))

(assert (=> b!948134 (= lt!426914 (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 lt!426867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948134 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948135 () Bool)

(declare-fun Unit!31941 () Unit!31936)

(assert (=> b!948135 (= e!533758 Unit!31941)))

(declare-fun b!948136 () Bool)

(assert (=> b!948136 (= e!533757 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114703 c!98758) b!948134))

(assert (= (and d!114703 (not c!98758)) b!948135))

(assert (= (and d!114703 (not res!636239)) b!948136))

(declare-fun m!880967 () Bool)

(assert (=> d!114703 m!880967))

(declare-fun m!880969 () Bool)

(assert (=> b!948134 m!880969))

(declare-fun m!880971 () Bool)

(assert (=> b!948134 m!880971))

(assert (=> b!948134 m!880971))

(declare-fun m!880973 () Bool)

(assert (=> b!948134 m!880973))

(assert (=> b!948136 m!880971))

(assert (=> b!948136 m!880971))

(assert (=> b!948136 m!880973))

(assert (=> bm!41178 d!114703))

(declare-fun d!114705 () Bool)

(assert (=> d!114705 (isDefined!363 (getValueByKey!493 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(declare-fun lt!426920 () Unit!31936)

(declare-fun choose!1580 (List!19445 (_ BitVec 64)) Unit!31936)

(assert (=> d!114705 (= lt!426920 (choose!1580 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(declare-fun e!533761 () Bool)

(assert (=> d!114705 e!533761))

(declare-fun res!636242 () Bool)

(assert (=> d!114705 (=> (not res!636242) (not e!533761))))

(declare-fun isStrictlySorted!504 (List!19445) Bool)

(assert (=> d!114705 (= res!636242 (isStrictlySorted!504 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))))))

(assert (=> d!114705 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756) lt!426920)))

(declare-fun b!948139 () Bool)

(assert (=> b!948139 (= e!533761 (containsKey!458 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756))))

(assert (= (and d!114705 res!636242) b!948139))

(assert (=> d!114705 m!880855))

(assert (=> d!114705 m!880855))

(assert (=> d!114705 m!880857))

(declare-fun m!880975 () Bool)

(assert (=> d!114705 m!880975))

(declare-fun m!880977 () Bool)

(assert (=> d!114705 m!880977))

(assert (=> b!948139 m!880851))

(assert (=> b!947956 d!114705))

(assert (=> b!947956 d!114691))

(assert (=> b!947956 d!114693))

(declare-fun d!114707 () Bool)

(declare-fun get!14522 (Option!499) V!32569)

(assert (=> d!114707 (= (apply!906 lt!426867 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14522 (getValueByKey!493 (toList!6179 lt!426867) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26637 () Bool)

(assert (= bs!26637 d!114707))

(declare-fun m!880979 () Bool)

(assert (=> bs!26637 m!880979))

(assert (=> bs!26637 m!880979))

(declare-fun m!880981 () Bool)

(assert (=> bs!26637 m!880981))

(assert (=> b!948015 d!114707))

(declare-fun d!114709 () Bool)

(assert (=> d!114709 (= (apply!906 lt!426867 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)) (get!14522 (getValueByKey!493 (toList!6179 lt!426867) (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26638 () Bool)

(assert (= bs!26638 d!114709))

(assert (=> bs!26638 m!880865))

(assert (=> bs!26638 m!880927))

(assert (=> bs!26638 m!880927))

(declare-fun m!880983 () Bool)

(assert (=> bs!26638 m!880983))

(assert (=> b!948014 d!114709))

(declare-fun d!114711 () Bool)

(declare-fun c!98761 () Bool)

(assert (=> d!114711 (= c!98761 ((_ is ValueCellFull!9870) (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!533764 () V!32569)

(assert (=> d!114711 (= (get!14521 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!533764)))

(declare-fun b!948144 () Bool)

(declare-fun get!14523 (ValueCell!9870 V!32569) V!32569)

(assert (=> b!948144 (= e!533764 (get!14523 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!948145 () Bool)

(declare-fun get!14524 (ValueCell!9870 V!32569) V!32569)

(assert (=> b!948145 (= e!533764 (get!14524 (select (arr!27619 (_values!5768 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1659 (defaultEntry!5745 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114711 c!98761) b!948144))

(assert (= (and d!114711 (not c!98761)) b!948145))

(assert (=> b!948144 m!880869))

(assert (=> b!948144 m!880863))

(declare-fun m!880985 () Bool)

(assert (=> b!948144 m!880985))

(assert (=> b!948145 m!880869))

(assert (=> b!948145 m!880863))

(declare-fun m!880987 () Bool)

(assert (=> b!948145 m!880987))

(assert (=> b!948014 d!114711))

(declare-fun d!114713 () Bool)

(declare-fun e!533765 () Bool)

(assert (=> d!114713 e!533765))

(declare-fun res!636243 () Bool)

(assert (=> d!114713 (=> res!636243 e!533765)))

(declare-fun lt!426922 () Bool)

(assert (=> d!114713 (= res!636243 (not lt!426922))))

(declare-fun lt!426923 () Bool)

(assert (=> d!114713 (= lt!426922 lt!426923)))

(declare-fun lt!426924 () Unit!31936)

(declare-fun e!533766 () Unit!31936)

(assert (=> d!114713 (= lt!426924 e!533766)))

(declare-fun c!98762 () Bool)

(assert (=> d!114713 (= c!98762 lt!426923)))

(assert (=> d!114713 (= lt!426923 (containsKey!458 (toList!6179 lt!426867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114713 (= (contains!5212 lt!426867 #b1000000000000000000000000000000000000000000000000000000000000000) lt!426922)))

(declare-fun b!948146 () Bool)

(declare-fun lt!426921 () Unit!31936)

(assert (=> b!948146 (= e!533766 lt!426921)))

(assert (=> b!948146 (= lt!426921 (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 lt!426867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948146 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948147 () Bool)

(declare-fun Unit!31942 () Unit!31936)

(assert (=> b!948147 (= e!533766 Unit!31942)))

(declare-fun b!948148 () Bool)

(assert (=> b!948148 (= e!533765 (isDefined!363 (getValueByKey!493 (toList!6179 lt!426867) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114713 c!98762) b!948146))

(assert (= (and d!114713 (not c!98762)) b!948147))

(assert (= (and d!114713 (not res!636243)) b!948148))

(declare-fun m!880989 () Bool)

(assert (=> d!114713 m!880989))

(declare-fun m!880991 () Bool)

(assert (=> b!948146 m!880991))

(assert (=> b!948146 m!880979))

(assert (=> b!948146 m!880979))

(declare-fun m!880993 () Bool)

(assert (=> b!948146 m!880993))

(assert (=> b!948148 m!880979))

(assert (=> b!948148 m!880979))

(assert (=> b!948148 m!880993))

(assert (=> bm!41183 d!114713))

(declare-fun b!948167 () Bool)

(declare-fun e!533779 () SeekEntryResult!9115)

(declare-fun e!533777 () SeekEntryResult!9115)

(assert (=> b!948167 (= e!533779 e!533777)))

(declare-fun c!98770 () Bool)

(declare-fun lt!426929 () (_ BitVec 64))

(assert (=> b!948167 (= c!98770 (or (= lt!426929 key!756) (= (bvadd lt!426929 lt!426929) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!948168 () Bool)

(declare-fun lt!426930 () SeekEntryResult!9115)

(assert (=> b!948168 (and (bvsge (index!38832 lt!426930) #b00000000000000000000000000000000) (bvslt (index!38832 lt!426930) (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun res!636252 () Bool)

(assert (=> b!948168 (= res!636252 (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38832 lt!426930)) key!756))))

(declare-fun e!533778 () Bool)

(assert (=> b!948168 (=> res!636252 e!533778)))

(declare-fun e!533780 () Bool)

(assert (=> b!948168 (= e!533780 e!533778)))

(declare-fun d!114715 () Bool)

(declare-fun e!533781 () Bool)

(assert (=> d!114715 e!533781))

(declare-fun c!98771 () Bool)

(assert (=> d!114715 (= c!98771 (and ((_ is Intermediate!9115) lt!426930) (undefined!9927 lt!426930)))))

(assert (=> d!114715 (= lt!426930 e!533779)))

(declare-fun c!98769 () Bool)

(assert (=> d!114715 (= c!98769 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114715 (= lt!426929 (select (arr!27620 (_keys!10656 thiss!1141)) (toIndex!0 key!756 (mask!27490 thiss!1141))))))

(assert (=> d!114715 (validMask!0 (mask!27490 thiss!1141))))

(assert (=> d!114715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27490 thiss!1141)) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)) lt!426930)))

(declare-fun b!948169 () Bool)

(assert (=> b!948169 (= e!533781 e!533780)))

(declare-fun res!636251 () Bool)

(assert (=> b!948169 (= res!636251 (and ((_ is Intermediate!9115) lt!426930) (not (undefined!9927 lt!426930)) (bvslt (x!81560 lt!426930) #b01111111111111111111111111111110) (bvsge (x!81560 lt!426930) #b00000000000000000000000000000000) (bvsge (x!81560 lt!426930) #b00000000000000000000000000000000)))))

(assert (=> b!948169 (=> (not res!636251) (not e!533780))))

(declare-fun b!948170 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!948170 (= e!533777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27490 thiss!1141)) #b00000000000000000000000000000000 (mask!27490 thiss!1141)) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(declare-fun b!948171 () Bool)

(assert (=> b!948171 (and (bvsge (index!38832 lt!426930) #b00000000000000000000000000000000) (bvslt (index!38832 lt!426930) (size!28094 (_keys!10656 thiss!1141))))))

(declare-fun res!636250 () Bool)

(assert (=> b!948171 (= res!636250 (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38832 lt!426930)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!948171 (=> res!636250 e!533778)))

(declare-fun b!948172 () Bool)

(assert (=> b!948172 (= e!533781 (bvsge (x!81560 lt!426930) #b01111111111111111111111111111110))))

(declare-fun b!948173 () Bool)

(assert (=> b!948173 (= e!533777 (Intermediate!9115 false (toIndex!0 key!756 (mask!27490 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!948174 () Bool)

(assert (=> b!948174 (and (bvsge (index!38832 lt!426930) #b00000000000000000000000000000000) (bvslt (index!38832 lt!426930) (size!28094 (_keys!10656 thiss!1141))))))

(assert (=> b!948174 (= e!533778 (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38832 lt!426930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948175 () Bool)

(assert (=> b!948175 (= e!533779 (Intermediate!9115 true (toIndex!0 key!756 (mask!27490 thiss!1141)) #b00000000000000000000000000000000))))

(assert (= (and d!114715 c!98769) b!948175))

(assert (= (and d!114715 (not c!98769)) b!948167))

(assert (= (and b!948167 c!98770) b!948173))

(assert (= (and b!948167 (not c!98770)) b!948170))

(assert (= (and d!114715 c!98771) b!948172))

(assert (= (and d!114715 (not c!98771)) b!948169))

(assert (= (and b!948169 res!636251) b!948168))

(assert (= (and b!948168 (not res!636252)) b!948171))

(assert (= (and b!948171 (not res!636250)) b!948174))

(declare-fun m!880995 () Bool)

(assert (=> b!948174 m!880995))

(assert (=> d!114715 m!880835))

(declare-fun m!880997 () Bool)

(assert (=> d!114715 m!880997))

(assert (=> d!114715 m!880807))

(assert (=> b!948171 m!880995))

(assert (=> b!948168 m!880995))

(assert (=> b!948170 m!880835))

(declare-fun m!880999 () Bool)

(assert (=> b!948170 m!880999))

(assert (=> b!948170 m!880999))

(declare-fun m!881001 () Bool)

(assert (=> b!948170 m!881001))

(assert (=> d!114673 d!114715))

(declare-fun d!114717 () Bool)

(declare-fun lt!426936 () (_ BitVec 32))

(declare-fun lt!426935 () (_ BitVec 32))

(assert (=> d!114717 (= lt!426936 (bvmul (bvxor lt!426935 (bvlshr lt!426935 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114717 (= lt!426935 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114717 (and (bvsge (mask!27490 thiss!1141) #b00000000000000000000000000000000) (let ((res!636253 (let ((h!20600 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81578 (bvmul (bvxor h!20600 (bvlshr h!20600 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81578 (bvlshr x!81578 #b00000000000000000000000000001101)) (mask!27490 thiss!1141)))))) (and (bvslt res!636253 (bvadd (mask!27490 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!636253 #b00000000000000000000000000000000))))))

(assert (=> d!114717 (= (toIndex!0 key!756 (mask!27490 thiss!1141)) (bvand (bvxor lt!426936 (bvlshr lt!426936 #b00000000000000000000000000001101)) (mask!27490 thiss!1141)))))

(assert (=> d!114673 d!114717))

(assert (=> d!114673 d!114677))

(declare-fun d!114719 () Bool)

(assert (=> d!114719 (= (validKeyInArray!0 (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27620 (_keys!10656 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948021 d!114719))

(declare-fun d!114721 () Bool)

(declare-fun e!533784 () Bool)

(assert (=> d!114721 e!533784))

(declare-fun res!636258 () Bool)

(assert (=> d!114721 (=> (not res!636258) (not e!533784))))

(declare-fun lt!426948 () ListLongMap!12327)

(assert (=> d!114721 (= res!636258 (contains!5212 lt!426948 (_1!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))))))

(declare-fun lt!426946 () List!19445)

(assert (=> d!114721 (= lt!426948 (ListLongMap!12328 lt!426946))))

(declare-fun lt!426945 () Unit!31936)

(declare-fun lt!426947 () Unit!31936)

(assert (=> d!114721 (= lt!426945 lt!426947)))

(assert (=> d!114721 (= (getValueByKey!493 lt!426946 (_1!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!263 (List!19445 (_ BitVec 64) V!32569) Unit!31936)

(assert (=> d!114721 (= lt!426947 (lemmaContainsTupThenGetReturnValue!263 lt!426946 (_1!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))))))

(declare-fun insertStrictlySorted!319 (List!19445 (_ BitVec 64) V!32569) List!19445)

(assert (=> d!114721 (= lt!426946 (insertStrictlySorted!319 (toList!6179 lt!426869) (_1!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))))))

(assert (=> d!114721 (= (+!2820 lt!426869 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) lt!426948)))

(declare-fun b!948180 () Bool)

(declare-fun res!636259 () Bool)

(assert (=> b!948180 (=> (not res!636259) (not e!533784))))

(assert (=> b!948180 (= res!636259 (= (getValueByKey!493 (toList!6179 lt!426948) (_1!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))))))))

(declare-fun b!948181 () Bool)

(declare-fun contains!5215 (List!19445 tuple2!13616) Bool)

(assert (=> b!948181 (= e!533784 (contains!5215 (toList!6179 lt!426948) (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))))))

(assert (= (and d!114721 res!636258) b!948180))

(assert (= (and b!948180 res!636259) b!948181))

(declare-fun m!881003 () Bool)

(assert (=> d!114721 m!881003))

(declare-fun m!881005 () Bool)

(assert (=> d!114721 m!881005))

(declare-fun m!881007 () Bool)

(assert (=> d!114721 m!881007))

(declare-fun m!881009 () Bool)

(assert (=> d!114721 m!881009))

(declare-fun m!881011 () Bool)

(assert (=> b!948180 m!881011))

(declare-fun m!881013 () Bool)

(assert (=> b!948181 m!881013))

(assert (=> b!948004 d!114721))

(declare-fun d!114723 () Bool)

(declare-fun e!533785 () Bool)

(assert (=> d!114723 e!533785))

(declare-fun res!636260 () Bool)

(assert (=> d!114723 (=> res!636260 e!533785)))

(declare-fun lt!426950 () Bool)

(assert (=> d!114723 (= res!636260 (not lt!426950))))

(declare-fun lt!426951 () Bool)

(assert (=> d!114723 (= lt!426950 lt!426951)))

(declare-fun lt!426952 () Unit!31936)

(declare-fun e!533786 () Unit!31936)

(assert (=> d!114723 (= lt!426952 e!533786)))

(declare-fun c!98772 () Bool)

(assert (=> d!114723 (= c!98772 lt!426951)))

(assert (=> d!114723 (= lt!426951 (containsKey!458 (toList!6179 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) lt!426876))))

(assert (=> d!114723 (= (contains!5212 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) lt!426876) lt!426950)))

(declare-fun b!948182 () Bool)

(declare-fun lt!426949 () Unit!31936)

(assert (=> b!948182 (= e!533786 lt!426949)))

(assert (=> b!948182 (= lt!426949 (lemmaContainsKeyImpliesGetValueByKeyDefined!353 (toList!6179 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) lt!426876))))

(assert (=> b!948182 (isDefined!363 (getValueByKey!493 (toList!6179 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) lt!426876))))

(declare-fun b!948183 () Bool)

(declare-fun Unit!31943 () Unit!31936)

(assert (=> b!948183 (= e!533786 Unit!31943)))

(declare-fun b!948184 () Bool)

(assert (=> b!948184 (= e!533785 (isDefined!363 (getValueByKey!493 (toList!6179 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) lt!426876)))))

(assert (= (and d!114723 c!98772) b!948182))

(assert (= (and d!114723 (not c!98772)) b!948183))

(assert (= (and d!114723 (not res!636260)) b!948184))

(declare-fun m!881015 () Bool)

(assert (=> d!114723 m!881015))

(declare-fun m!881017 () Bool)

(assert (=> b!948182 m!881017))

(declare-fun m!881019 () Bool)

(assert (=> b!948182 m!881019))

(assert (=> b!948182 m!881019))

(declare-fun m!881021 () Bool)

(assert (=> b!948182 m!881021))

(assert (=> b!948184 m!881019))

(assert (=> b!948184 m!881019))

(assert (=> b!948184 m!881021))

(assert (=> b!948004 d!114723))

(declare-fun d!114725 () Bool)

(assert (=> d!114725 (= (apply!906 lt!426869 lt!426859) (get!14522 (getValueByKey!493 (toList!6179 lt!426869) lt!426859)))))

(declare-fun bs!26639 () Bool)

(assert (= bs!26639 d!114725))

(declare-fun m!881023 () Bool)

(assert (=> bs!26639 m!881023))

(assert (=> bs!26639 m!881023))

(declare-fun m!881025 () Bool)

(assert (=> bs!26639 m!881025))

(assert (=> b!948004 d!114725))

(declare-fun d!114727 () Bool)

(assert (=> d!114727 (= (apply!906 (+!2820 lt!426869 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) lt!426859) (apply!906 lt!426869 lt!426859))))

(declare-fun lt!426955 () Unit!31936)

(declare-fun choose!1581 (ListLongMap!12327 (_ BitVec 64) V!32569 (_ BitVec 64)) Unit!31936)

(assert (=> d!114727 (= lt!426955 (choose!1581 lt!426869 lt!426855 (minValue!5581 thiss!1141) lt!426859))))

(declare-fun e!533789 () Bool)

(assert (=> d!114727 e!533789))

(declare-fun res!636263 () Bool)

(assert (=> d!114727 (=> (not res!636263) (not e!533789))))

(assert (=> d!114727 (= res!636263 (contains!5212 lt!426869 lt!426859))))

(assert (=> d!114727 (= (addApplyDifferent!450 lt!426869 lt!426855 (minValue!5581 thiss!1141) lt!426859) lt!426955)))

(declare-fun b!948188 () Bool)

(assert (=> b!948188 (= e!533789 (not (= lt!426859 lt!426855)))))

(assert (= (and d!114727 res!636263) b!948188))

(declare-fun m!881027 () Bool)

(assert (=> d!114727 m!881027))

(declare-fun m!881029 () Bool)

(assert (=> d!114727 m!881029))

(assert (=> d!114727 m!880891))

(assert (=> d!114727 m!880893))

(assert (=> d!114727 m!880897))

(assert (=> d!114727 m!880891))

(assert (=> b!948004 d!114727))

(declare-fun d!114729 () Bool)

(declare-fun e!533790 () Bool)

(assert (=> d!114729 e!533790))

(declare-fun res!636264 () Bool)

(assert (=> d!114729 (=> (not res!636264) (not e!533790))))

(declare-fun lt!426959 () ListLongMap!12327)

(assert (=> d!114729 (= res!636264 (contains!5212 lt!426959 (_1!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))))))

(declare-fun lt!426957 () List!19445)

(assert (=> d!114729 (= lt!426959 (ListLongMap!12328 lt!426957))))

(declare-fun lt!426956 () Unit!31936)

(declare-fun lt!426958 () Unit!31936)

(assert (=> d!114729 (= lt!426956 lt!426958)))

(assert (=> d!114729 (= (getValueByKey!493 lt!426957 (_1!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114729 (= lt!426958 (lemmaContainsTupThenGetReturnValue!263 lt!426957 (_1!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114729 (= lt!426957 (insertStrictlySorted!319 (toList!6179 lt!426857) (_1!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114729 (= (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) lt!426959)))

(declare-fun b!948189 () Bool)

(declare-fun res!636265 () Bool)

(assert (=> b!948189 (=> (not res!636265) (not e!533790))))

(assert (=> b!948189 (= res!636265 (= (getValueByKey!493 (toList!6179 lt!426959) (_1!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))))))))

(declare-fun b!948190 () Bool)

(assert (=> b!948190 (= e!533790 (contains!5215 (toList!6179 lt!426959) (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))))))

(assert (= (and d!114729 res!636264) b!948189))

(assert (= (and b!948189 res!636265) b!948190))

(declare-fun m!881031 () Bool)

(assert (=> d!114729 m!881031))

(declare-fun m!881033 () Bool)

(assert (=> d!114729 m!881033))

(declare-fun m!881035 () Bool)

(assert (=> d!114729 m!881035))

(declare-fun m!881037 () Bool)

(assert (=> d!114729 m!881037))

(declare-fun m!881039 () Bool)

(assert (=> b!948189 m!881039))

(declare-fun m!881041 () Bool)

(assert (=> b!948190 m!881041))

(assert (=> b!948004 d!114729))

(declare-fun d!114731 () Bool)

(assert (=> d!114731 (= (apply!906 lt!426871 lt!426863) (get!14522 (getValueByKey!493 (toList!6179 lt!426871) lt!426863)))))

(declare-fun bs!26640 () Bool)

(assert (= bs!26640 d!114731))

(declare-fun m!881043 () Bool)

(assert (=> bs!26640 m!881043))

(assert (=> bs!26640 m!881043))

(declare-fun m!881045 () Bool)

(assert (=> bs!26640 m!881045))

(assert (=> b!948004 d!114731))

(declare-fun d!114733 () Bool)

(assert (=> d!114733 (= (apply!906 (+!2820 lt!426861 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) lt!426875) (get!14522 (getValueByKey!493 (toList!6179 (+!2820 lt!426861 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))) lt!426875)))))

(declare-fun bs!26641 () Bool)

(assert (= bs!26641 d!114733))

(declare-fun m!881047 () Bool)

(assert (=> bs!26641 m!881047))

(assert (=> bs!26641 m!881047))

(declare-fun m!881049 () Bool)

(assert (=> bs!26641 m!881049))

(assert (=> b!948004 d!114733))

(declare-fun d!114735 () Bool)

(assert (=> d!114735 (= (apply!906 (+!2820 lt!426861 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) lt!426875) (apply!906 lt!426861 lt!426875))))

(declare-fun lt!426960 () Unit!31936)

(assert (=> d!114735 (= lt!426960 (choose!1581 lt!426861 lt!426865 (minValue!5581 thiss!1141) lt!426875))))

(declare-fun e!533791 () Bool)

(assert (=> d!114735 e!533791))

(declare-fun res!636266 () Bool)

(assert (=> d!114735 (=> (not res!636266) (not e!533791))))

(assert (=> d!114735 (= res!636266 (contains!5212 lt!426861 lt!426875))))

(assert (=> d!114735 (= (addApplyDifferent!450 lt!426861 lt!426865 (minValue!5581 thiss!1141) lt!426875) lt!426960)))

(declare-fun b!948191 () Bool)

(assert (=> b!948191 (= e!533791 (not (= lt!426875 lt!426865)))))

(assert (= (and d!114735 res!636266) b!948191))

(declare-fun m!881051 () Bool)

(assert (=> d!114735 m!881051))

(declare-fun m!881053 () Bool)

(assert (=> d!114735 m!881053))

(assert (=> d!114735 m!880873))

(assert (=> d!114735 m!880887))

(assert (=> d!114735 m!880881))

(assert (=> d!114735 m!880873))

(assert (=> b!948004 d!114735))

(declare-fun d!114737 () Bool)

(declare-fun e!533792 () Bool)

(assert (=> d!114737 e!533792))

(declare-fun res!636267 () Bool)

(assert (=> d!114737 (=> (not res!636267) (not e!533792))))

(declare-fun lt!426964 () ListLongMap!12327)

(assert (=> d!114737 (= res!636267 (contains!5212 lt!426964 (_1!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))))))

(declare-fun lt!426962 () List!19445)

(assert (=> d!114737 (= lt!426964 (ListLongMap!12328 lt!426962))))

(declare-fun lt!426961 () Unit!31936)

(declare-fun lt!426963 () Unit!31936)

(assert (=> d!114737 (= lt!426961 lt!426963)))

(assert (=> d!114737 (= (getValueByKey!493 lt!426962 (_1!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114737 (= lt!426963 (lemmaContainsTupThenGetReturnValue!263 lt!426962 (_1!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114737 (= lt!426962 (insertStrictlySorted!319 (toList!6179 lt!426871) (_1!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))))))

(assert (=> d!114737 (= (+!2820 lt!426871 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) lt!426964)))

(declare-fun b!948192 () Bool)

(declare-fun res!636268 () Bool)

(assert (=> b!948192 (=> (not res!636268) (not e!533792))))

(assert (=> b!948192 (= res!636268 (= (getValueByKey!493 (toList!6179 lt!426964) (_1!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))))))))

(declare-fun b!948193 () Bool)

(assert (=> b!948193 (= e!533792 (contains!5215 (toList!6179 lt!426964) (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))))))

(assert (= (and d!114737 res!636267) b!948192))

(assert (= (and b!948192 res!636268) b!948193))

(declare-fun m!881055 () Bool)

(assert (=> d!114737 m!881055))

(declare-fun m!881057 () Bool)

(assert (=> d!114737 m!881057))

(declare-fun m!881059 () Bool)

(assert (=> d!114737 m!881059))

(declare-fun m!881061 () Bool)

(assert (=> d!114737 m!881061))

(declare-fun m!881063 () Bool)

(assert (=> b!948192 m!881063))

(declare-fun m!881065 () Bool)

(assert (=> b!948193 m!881065))

(assert (=> b!948004 d!114737))

(declare-fun d!114739 () Bool)

(assert (=> d!114739 (= (apply!906 (+!2820 lt!426871 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) lt!426863) (get!14522 (getValueByKey!493 (toList!6179 (+!2820 lt!426871 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141)))) lt!426863)))))

(declare-fun bs!26642 () Bool)

(assert (= bs!26642 d!114739))

(declare-fun m!881067 () Bool)

(assert (=> bs!26642 m!881067))

(assert (=> bs!26642 m!881067))

(declare-fun m!881069 () Bool)

(assert (=> bs!26642 m!881069))

(assert (=> b!948004 d!114739))

(assert (=> b!948004 d!114701))

(declare-fun d!114741 () Bool)

(assert (=> d!114741 (= (apply!906 (+!2820 lt!426869 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141))) lt!426859) (get!14522 (getValueByKey!493 (toList!6179 (+!2820 lt!426869 (tuple2!13617 lt!426855 (minValue!5581 thiss!1141)))) lt!426859)))))

(declare-fun bs!26643 () Bool)

(assert (= bs!26643 d!114741))

(declare-fun m!881071 () Bool)

(assert (=> bs!26643 m!881071))

(assert (=> bs!26643 m!881071))

(declare-fun m!881073 () Bool)

(assert (=> bs!26643 m!881073))

(assert (=> b!948004 d!114741))

(declare-fun d!114743 () Bool)

(assert (=> d!114743 (= (apply!906 (+!2820 lt!426871 (tuple2!13617 lt!426874 (zeroValue!5581 thiss!1141))) lt!426863) (apply!906 lt!426871 lt!426863))))

(declare-fun lt!426965 () Unit!31936)

(assert (=> d!114743 (= lt!426965 (choose!1581 lt!426871 lt!426874 (zeroValue!5581 thiss!1141) lt!426863))))

(declare-fun e!533793 () Bool)

(assert (=> d!114743 e!533793))

(declare-fun res!636269 () Bool)

(assert (=> d!114743 (=> (not res!636269) (not e!533793))))

(assert (=> d!114743 (= res!636269 (contains!5212 lt!426871 lt!426863))))

(assert (=> d!114743 (= (addApplyDifferent!450 lt!426871 lt!426874 (zeroValue!5581 thiss!1141) lt!426863) lt!426965)))

(declare-fun b!948194 () Bool)

(assert (=> b!948194 (= e!533793 (not (= lt!426863 lt!426874)))))

(assert (= (and d!114743 res!636269) b!948194))

(declare-fun m!881075 () Bool)

(assert (=> d!114743 m!881075))

(declare-fun m!881077 () Bool)

(assert (=> d!114743 m!881077))

(assert (=> d!114743 m!880883))

(assert (=> d!114743 m!880885))

(assert (=> d!114743 m!880889))

(assert (=> d!114743 m!880883))

(assert (=> b!948004 d!114743))

(declare-fun d!114745 () Bool)

(assert (=> d!114745 (= (apply!906 lt!426861 lt!426875) (get!14522 (getValueByKey!493 (toList!6179 lt!426861) lt!426875)))))

(declare-fun bs!26644 () Bool)

(assert (= bs!26644 d!114745))

(declare-fun m!881079 () Bool)

(assert (=> bs!26644 m!881079))

(assert (=> bs!26644 m!881079))

(declare-fun m!881081 () Bool)

(assert (=> bs!26644 m!881081))

(assert (=> b!948004 d!114745))

(declare-fun d!114747 () Bool)

(assert (=> d!114747 (contains!5212 (+!2820 lt!426857 (tuple2!13617 lt!426860 (zeroValue!5581 thiss!1141))) lt!426876)))

(declare-fun lt!426968 () Unit!31936)

(declare-fun choose!1582 (ListLongMap!12327 (_ BitVec 64) V!32569 (_ BitVec 64)) Unit!31936)

(assert (=> d!114747 (= lt!426968 (choose!1582 lt!426857 lt!426860 (zeroValue!5581 thiss!1141) lt!426876))))

(assert (=> d!114747 (contains!5212 lt!426857 lt!426876)))

(assert (=> d!114747 (= (addStillContains!576 lt!426857 lt!426860 (zeroValue!5581 thiss!1141) lt!426876) lt!426968)))

(declare-fun bs!26645 () Bool)

(assert (= bs!26645 d!114747))

(assert (=> bs!26645 m!880875))

(assert (=> bs!26645 m!880875))

(assert (=> bs!26645 m!880877))

(declare-fun m!881083 () Bool)

(assert (=> bs!26645 m!881083))

(declare-fun m!881085 () Bool)

(assert (=> bs!26645 m!881085))

(assert (=> b!948004 d!114747))

(declare-fun d!114749 () Bool)

(declare-fun e!533794 () Bool)

(assert (=> d!114749 e!533794))

(declare-fun res!636270 () Bool)

(assert (=> d!114749 (=> (not res!636270) (not e!533794))))

(declare-fun lt!426972 () ListLongMap!12327)

(assert (=> d!114749 (= res!636270 (contains!5212 lt!426972 (_1!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))))))

(declare-fun lt!426970 () List!19445)

(assert (=> d!114749 (= lt!426972 (ListLongMap!12328 lt!426970))))

(declare-fun lt!426969 () Unit!31936)

(declare-fun lt!426971 () Unit!31936)

(assert (=> d!114749 (= lt!426969 lt!426971)))

(assert (=> d!114749 (= (getValueByKey!493 lt!426970 (_1!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))))))

(assert (=> d!114749 (= lt!426971 (lemmaContainsTupThenGetReturnValue!263 lt!426970 (_1!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))))))

(assert (=> d!114749 (= lt!426970 (insertStrictlySorted!319 (toList!6179 lt!426861) (_1!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))))))

(assert (=> d!114749 (= (+!2820 lt!426861 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))) lt!426972)))

(declare-fun b!948196 () Bool)

(declare-fun res!636271 () Bool)

(assert (=> b!948196 (=> (not res!636271) (not e!533794))))

(assert (=> b!948196 (= res!636271 (= (getValueByKey!493 (toList!6179 lt!426972) (_1!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))))))))

(declare-fun b!948197 () Bool)

(assert (=> b!948197 (= e!533794 (contains!5215 (toList!6179 lt!426972) (tuple2!13617 lt!426865 (minValue!5581 thiss!1141))))))

(assert (= (and d!114749 res!636270) b!948196))

(assert (= (and b!948196 res!636271) b!948197))

(declare-fun m!881087 () Bool)

(assert (=> d!114749 m!881087))

(declare-fun m!881089 () Bool)

(assert (=> d!114749 m!881089))

(declare-fun m!881091 () Bool)

(assert (=> d!114749 m!881091))

(declare-fun m!881093 () Bool)

(assert (=> d!114749 m!881093))

(declare-fun m!881095 () Bool)

(assert (=> b!948196 m!881095))

(declare-fun m!881097 () Bool)

(assert (=> b!948197 m!881097))

(assert (=> b!948004 d!114749))

(declare-fun d!114751 () Bool)

(declare-fun res!636276 () Bool)

(declare-fun e!533799 () Bool)

(assert (=> d!114751 (=> res!636276 e!533799)))

(assert (=> d!114751 (= res!636276 (and ((_ is Cons!19441) (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) (= (_1!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) key!756)))))

(assert (=> d!114751 (= (containsKey!458 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))) key!756) e!533799)))

(declare-fun b!948202 () Bool)

(declare-fun e!533800 () Bool)

(assert (=> b!948202 (= e!533799 e!533800)))

(declare-fun res!636277 () Bool)

(assert (=> b!948202 (=> (not res!636277) (not e!533800))))

(assert (=> b!948202 (= res!636277 (and (or (not ((_ is Cons!19441) (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) (bvsle (_1!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) key!756)) ((_ is Cons!19441) (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) (bvslt (_1!6818 (h!20597 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141))))) key!756)))))

(declare-fun b!948203 () Bool)

(assert (=> b!948203 (= e!533800 (containsKey!458 (t!27778 (toList!6179 (getCurrentListMap!3364 (_keys!10656 thiss!1141) (_values!5768 thiss!1141) (mask!27490 thiss!1141) (extraKeys!5477 thiss!1141) (zeroValue!5581 thiss!1141) (minValue!5581 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5745 thiss!1141)))) key!756))))

(assert (= (and d!114751 (not res!636276)) b!948202))

(assert (= (and b!948202 res!636277) b!948203))

(declare-fun m!881099 () Bool)

(assert (=> b!948203 m!881099))

(assert (=> d!114679 d!114751))

(assert (=> b!948011 d!114719))

(declare-fun d!114753 () Bool)

(declare-fun e!533801 () Bool)

(assert (=> d!114753 e!533801))

(declare-fun res!636278 () Bool)

(assert (=> d!114753 (=> (not res!636278) (not e!533801))))

(declare-fun lt!426976 () ListLongMap!12327)

(assert (=> d!114753 (= res!636278 (contains!5212 lt!426976 (_1!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))))

(declare-fun lt!426974 () List!19445)

(assert (=> d!114753 (= lt!426976 (ListLongMap!12328 lt!426974))))

(declare-fun lt!426973 () Unit!31936)

(declare-fun lt!426975 () Unit!31936)

(assert (=> d!114753 (= lt!426973 lt!426975)))

(assert (=> d!114753 (= (getValueByKey!493 lt!426974 (_1!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))) (Some!498 (_2!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))))

(assert (=> d!114753 (= lt!426975 (lemmaContainsTupThenGetReturnValue!263 lt!426974 (_1!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))) (_2!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))))

(assert (=> d!114753 (= lt!426974 (insertStrictlySorted!319 (toList!6179 (ite c!98726 call!41185 (ite c!98722 call!41187 call!41182))) (_1!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))) (_2!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))))

(assert (=> d!114753 (= (+!2820 (ite c!98726 call!41185 (ite c!98722 call!41187 call!41182)) (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))) lt!426976)))

(declare-fun b!948204 () Bool)

(declare-fun res!636279 () Bool)

(assert (=> b!948204 (=> (not res!636279) (not e!533801))))

(assert (=> b!948204 (= res!636279 (= (getValueByKey!493 (toList!6179 lt!426976) (_1!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))) (Some!498 (_2!6818 (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))))

(declare-fun b!948205 () Bool)

(assert (=> b!948205 (= e!533801 (contains!5215 (toList!6179 lt!426976) (ite (or c!98726 c!98722) (tuple2!13617 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5581 thiss!1141)) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(assert (= (and d!114753 res!636278) b!948204))

(assert (= (and b!948204 res!636279) b!948205))

(declare-fun m!881101 () Bool)

(assert (=> d!114753 m!881101))

(declare-fun m!881103 () Bool)

(assert (=> d!114753 m!881103))

(declare-fun m!881105 () Bool)

(assert (=> d!114753 m!881105))

(declare-fun m!881107 () Bool)

(assert (=> d!114753 m!881107))

(declare-fun m!881109 () Bool)

(assert (=> b!948204 m!881109))

(declare-fun m!881111 () Bool)

(assert (=> b!948205 m!881111))

(assert (=> bm!41180 d!114753))

(declare-fun b!948218 () Bool)

(declare-fun c!98780 () Bool)

(declare-fun lt!426981 () (_ BitVec 64))

(assert (=> b!948218 (= c!98780 (= lt!426981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!533808 () SeekEntryResult!9115)

(declare-fun e!533809 () SeekEntryResult!9115)

(assert (=> b!948218 (= e!533808 e!533809)))

(declare-fun lt!426982 () SeekEntryResult!9115)

(declare-fun d!114755 () Bool)

(assert (=> d!114755 (and (or ((_ is Undefined!9115) lt!426982) (not ((_ is Found!9115) lt!426982)) (and (bvsge (index!38831 lt!426982) #b00000000000000000000000000000000) (bvslt (index!38831 lt!426982) (size!28094 (_keys!10656 thiss!1141))))) (or ((_ is Undefined!9115) lt!426982) ((_ is Found!9115) lt!426982) (not ((_ is MissingVacant!9115) lt!426982)) (not (= (index!38833 lt!426982) (index!38832 lt!426798))) (and (bvsge (index!38833 lt!426982) #b00000000000000000000000000000000) (bvslt (index!38833 lt!426982) (size!28094 (_keys!10656 thiss!1141))))) (or ((_ is Undefined!9115) lt!426982) (ite ((_ is Found!9115) lt!426982) (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38831 lt!426982)) key!756) (and ((_ is MissingVacant!9115) lt!426982) (= (index!38833 lt!426982) (index!38832 lt!426798)) (= (select (arr!27620 (_keys!10656 thiss!1141)) (index!38833 lt!426982)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!533810 () SeekEntryResult!9115)

(assert (=> d!114755 (= lt!426982 e!533810)))

(declare-fun c!98779 () Bool)

(assert (=> d!114755 (= c!98779 (bvsge (x!81560 lt!426798) #b01111111111111111111111111111110))))

(assert (=> d!114755 (= lt!426981 (select (arr!27620 (_keys!10656 thiss!1141)) (index!38832 lt!426798)))))

(assert (=> d!114755 (validMask!0 (mask!27490 thiss!1141))))

(assert (=> d!114755 (= (seekKeyOrZeroReturnVacant!0 (x!81560 lt!426798) (index!38832 lt!426798) (index!38832 lt!426798) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)) lt!426982)))

(declare-fun b!948219 () Bool)

(assert (=> b!948219 (= e!533810 Undefined!9115)))

(declare-fun b!948220 () Bool)

(assert (=> b!948220 (= e!533810 e!533808)))

(declare-fun c!98781 () Bool)

(assert (=> b!948220 (= c!98781 (= lt!426981 key!756))))

(declare-fun b!948221 () Bool)

(assert (=> b!948221 (= e!533809 (MissingVacant!9115 (index!38832 lt!426798)))))

(declare-fun b!948222 () Bool)

(assert (=> b!948222 (= e!533808 (Found!9115 (index!38832 lt!426798)))))

(declare-fun b!948223 () Bool)

(assert (=> b!948223 (= e!533809 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81560 lt!426798) #b00000000000000000000000000000001) (nextIndex!0 (index!38832 lt!426798) (x!81560 lt!426798) (mask!27490 thiss!1141)) (index!38832 lt!426798) key!756 (_keys!10656 thiss!1141) (mask!27490 thiss!1141)))))

(assert (= (and d!114755 c!98779) b!948219))

(assert (= (and d!114755 (not c!98779)) b!948220))

(assert (= (and b!948220 c!98781) b!948222))

(assert (= (and b!948220 (not c!98781)) b!948218))

(assert (= (and b!948218 c!98780) b!948221))

(assert (= (and b!948218 (not c!98780)) b!948223))

(declare-fun m!881113 () Bool)

(assert (=> d!114755 m!881113))

(declare-fun m!881115 () Bool)

(assert (=> d!114755 m!881115))

(assert (=> d!114755 m!880841))

(assert (=> d!114755 m!880807))

(declare-fun m!881117 () Bool)

(assert (=> b!948223 m!881117))

(assert (=> b!948223 m!881117))

(declare-fun m!881119 () Bool)

(assert (=> b!948223 m!881119))

(assert (=> b!947936 d!114755))

(declare-fun d!114757 () Bool)

(assert (=> d!114757 (= (apply!906 lt!426867 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14522 (getValueByKey!493 (toList!6179 lt!426867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26646 () Bool)

(assert (= bs!26646 d!114757))

(assert (=> bs!26646 m!880971))

(assert (=> bs!26646 m!880971))

(declare-fun m!881121 () Bool)

(assert (=> bs!26646 m!881121))

(assert (=> b!948019 d!114757))

(declare-fun d!114759 () Bool)

(declare-fun e!533811 () Bool)

(assert (=> d!114759 e!533811))

(declare-fun res!636280 () Bool)

(assert (=> d!114759 (=> (not res!636280) (not e!533811))))

(declare-fun lt!426986 () ListLongMap!12327)

(assert (=> d!114759 (= res!636280 (contains!5212 lt!426986 (_1!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(declare-fun lt!426984 () List!19445)

(assert (=> d!114759 (= lt!426986 (ListLongMap!12328 lt!426984))))

(declare-fun lt!426983 () Unit!31936)

(declare-fun lt!426985 () Unit!31936)

(assert (=> d!114759 (= lt!426983 lt!426985)))

(assert (=> d!114759 (= (getValueByKey!493 lt!426984 (_1!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(assert (=> d!114759 (= lt!426985 (lemmaContainsTupThenGetReturnValue!263 lt!426984 (_1!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(assert (=> d!114759 (= lt!426984 (insertStrictlySorted!319 (toList!6179 call!41184) (_1!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))) (_2!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))))))

(assert (=> d!114759 (= (+!2820 call!41184 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))) lt!426986)))

(declare-fun b!948224 () Bool)

(declare-fun res!636281 () Bool)

(assert (=> b!948224 (=> (not res!636281) (not e!533811))))

(assert (=> b!948224 (= res!636281 (= (getValueByKey!493 (toList!6179 lt!426986) (_1!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141)))) (Some!498 (_2!6818 (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))))

(declare-fun b!948225 () Bool)

(assert (=> b!948225 (= e!533811 (contains!5215 (toList!6179 lt!426986) (tuple2!13617 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5581 thiss!1141))))))

(assert (= (and d!114759 res!636280) b!948224))

(assert (= (and b!948224 res!636281) b!948225))

(declare-fun m!881123 () Bool)

(assert (=> d!114759 m!881123))

(declare-fun m!881125 () Bool)

(assert (=> d!114759 m!881125))

(declare-fun m!881127 () Bool)

(assert (=> d!114759 m!881127))

(declare-fun m!881129 () Bool)

(assert (=> d!114759 m!881129))

(declare-fun m!881131 () Bool)

(assert (=> b!948224 m!881131))

(declare-fun m!881133 () Bool)

(assert (=> b!948225 m!881133))

(assert (=> b!948001 d!114759))

(declare-fun mapIsEmpty!32948 () Bool)

(declare-fun mapRes!32948 () Bool)

(assert (=> mapIsEmpty!32948 mapRes!32948))

(declare-fun mapNonEmpty!32948 () Bool)

(declare-fun tp!63167 () Bool)

(declare-fun e!533812 () Bool)

(assert (=> mapNonEmpty!32948 (= mapRes!32948 (and tp!63167 e!533812))))

(declare-fun mapValue!32948 () ValueCell!9870)

(declare-fun mapRest!32948 () (Array (_ BitVec 32) ValueCell!9870))

(declare-fun mapKey!32948 () (_ BitVec 32))

(assert (=> mapNonEmpty!32948 (= mapRest!32947 (store mapRest!32948 mapKey!32948 mapValue!32948))))

(declare-fun b!948227 () Bool)

(declare-fun e!533813 () Bool)

(assert (=> b!948227 (= e!533813 tp_is_empty!20703)))

(declare-fun condMapEmpty!32948 () Bool)

(declare-fun mapDefault!32948 () ValueCell!9870)

(assert (=> mapNonEmpty!32947 (= condMapEmpty!32948 (= mapRest!32947 ((as const (Array (_ BitVec 32) ValueCell!9870)) mapDefault!32948)))))

(assert (=> mapNonEmpty!32947 (= tp!63166 (and e!533813 mapRes!32948))))

(declare-fun b!948226 () Bool)

(assert (=> b!948226 (= e!533812 tp_is_empty!20703)))

(assert (= (and mapNonEmpty!32947 condMapEmpty!32948) mapIsEmpty!32948))

(assert (= (and mapNonEmpty!32947 (not condMapEmpty!32948)) mapNonEmpty!32948))

(assert (= (and mapNonEmpty!32948 ((_ is ValueCellFull!9870) mapValue!32948)) b!948226))

(assert (= (and mapNonEmpty!32947 ((_ is ValueCellFull!9870) mapDefault!32948)) b!948227))

(declare-fun m!881135 () Bool)

(assert (=> mapNonEmpty!32948 m!881135))

(declare-fun b_lambda!14345 () Bool)

(assert (= b_lambda!14343 (or (and b!947888 b_free!18195) b_lambda!14345)))

(declare-fun b_lambda!14347 () Bool)

(assert (= b_lambda!14341 (or (and b!947888 b_free!18195) b_lambda!14347)))

(check-sat (not b!948181) (not b!948132) (not b!948189) (not d!114733) (not d!114709) (not b!948204) (not b!948131) (not d!114745) (not d!114713) (not b!948184) (not b_lambda!14347) (not mapNonEmpty!32948) (not b!948127) (not d!114689) (not bm!41196) (not b!948148) (not b_next!18195) (not b!948042) (not d!114749) (not d!114741) (not b!948203) (not d!114735) (not d!114721) (not b!948180) (not bm!41187) (not b!948193) (not b!948197) (not bm!41193) (not b!948182) (not b!948190) (not b!948224) (not b!948126) (not d!114759) (not d!114725) (not b!948044) (not b!948134) (not b!948122) (not b!948129) (not d!114691) (not b!948047) (not b!948144) (not d!114739) (not d!114731) (not d!114707) (not d!114737) (not d!114755) (not b!948125) (not b!948192) (not b_lambda!14339) (not d!114757) (not b!948096) (not b!948223) (not d!114705) (not d!114703) b_and!29647 (not b!948095) (not b!948225) (not b!948145) (not d!114715) (not b!948060) (not b!948205) (not d!114729) (not b!948073) (not b!948046) (not d!114727) (not b_lambda!14345) (not d!114747) (not b!948146) (not b!948123) (not b!948139) tp_is_empty!20703 (not d!114753) (not d!114723) (not b!948136) (not bm!41190) (not d!114743) (not b!948170) (not d!114701) (not d!114699) (not b!948049) (not b!948196) (not b!948071) (not b!948083))
(check-sat b_and!29647 (not b_next!18195))
