; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80798 () Bool)

(assert start!80798)

(declare-fun b!946887 () Bool)

(declare-fun b_free!18159 () Bool)

(declare-fun b_next!18159 () Bool)

(assert (=> b!946887 (= b_free!18159 (not b_next!18159))))

(declare-fun tp!63031 () Bool)

(declare-fun b_and!29599 () Bool)

(assert (=> b!946887 (= tp!63031 b_and!29599)))

(declare-fun e!532917 () Bool)

(declare-datatypes ((V!32521 0))(
  ( (V!32522 (val!10384 Int)) )
))
(declare-datatypes ((ValueCell!9852 0))(
  ( (ValueCellFull!9852 (v!12918 V!32521)) (EmptyCell!9852) )
))
(declare-datatypes ((array!57348 0))(
  ( (array!57349 (arr!27583 (Array (_ BitVec 32) ValueCell!9852)) (size!28057 (_ BitVec 32))) )
))
(declare-datatypes ((array!57350 0))(
  ( (array!57351 (arr!27584 (Array (_ BitVec 32) (_ BitVec 64))) (size!28058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4854 0))(
  ( (LongMapFixedSize!4855 (defaultEntry!5724 Int) (mask!27442 (_ BitVec 32)) (extraKeys!5456 (_ BitVec 32)) (zeroValue!5560 V!32521) (minValue!5560 V!32521) (_size!2482 (_ BitVec 32)) (_keys!10625 array!57350) (_values!5747 array!57348) (_vacant!2482 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4854)

(declare-fun e!532913 () Bool)

(declare-fun tp_is_empty!20667 () Bool)

(declare-fun array_inv!21364 (array!57350) Bool)

(declare-fun array_inv!21365 (array!57348) Bool)

(assert (=> b!946887 (= e!532913 (and tp!63031 tp_is_empty!20667 (array_inv!21364 (_keys!10625 thiss!1141)) (array_inv!21365 (_values!5747 thiss!1141)) e!532917))))

(declare-fun b!946888 () Bool)

(declare-fun e!532918 () Bool)

(assert (=> b!946888 (= e!532918 tp_is_empty!20667)))

(declare-fun b!946889 () Bool)

(declare-fun res!635644 () Bool)

(declare-fun e!532914 () Bool)

(assert (=> b!946889 (=> (not res!635644) (not e!532914))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946889 (= res!635644 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!946890 () Bool)

(declare-fun e!532911 () Bool)

(declare-fun e!532912 () Bool)

(assert (=> b!946890 (= e!532911 (not e!532912))))

(declare-fun res!635646 () Bool)

(assert (=> b!946890 (=> res!635646 e!532912)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946890 (= res!635646 (not (validMask!0 (mask!27442 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946890 (arrayContainsKey!0 (_keys!10625 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9100 0))(
  ( (MissingZero!9100 (index!38770 (_ BitVec 32))) (Found!9100 (index!38771 (_ BitVec 32))) (Intermediate!9100 (undefined!9912 Bool) (index!38772 (_ BitVec 32)) (x!81445 (_ BitVec 32))) (Undefined!9100) (MissingVacant!9100 (index!38773 (_ BitVec 32))) )
))
(declare-fun lt!426412 () SeekEntryResult!9100)

(declare-datatypes ((Unit!31913 0))(
  ( (Unit!31914) )
))
(declare-fun lt!426413 () Unit!31913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57350 (_ BitVec 64) (_ BitVec 32)) Unit!31913)

(assert (=> b!946890 (= lt!426413 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10625 thiss!1141) key!756 (index!38771 lt!426412)))))

(declare-fun b!946891 () Bool)

(assert (=> b!946891 (= e!532914 e!532911)))

(declare-fun res!635645 () Bool)

(assert (=> b!946891 (=> (not res!635645) (not e!532911))))

(get-info :version)

(assert (=> b!946891 (= res!635645 ((_ is Found!9100) lt!426412))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57350 (_ BitVec 32)) SeekEntryResult!9100)

(assert (=> b!946891 (= lt!426412 (seekEntry!0 key!756 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(declare-fun b!946892 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57350 (_ BitVec 32)) Bool)

(assert (=> b!946892 (= e!532912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(declare-fun b!946893 () Bool)

(declare-fun res!635647 () Bool)

(assert (=> b!946893 (=> res!635647 e!532912)))

(assert (=> b!946893 (= res!635647 (or (not (= (size!28057 (_values!5747 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27442 thiss!1141)))) (not (= (size!28058 (_keys!10625 thiss!1141)) (size!28057 (_values!5747 thiss!1141)))) (bvslt (mask!27442 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5456 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5456 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!946894 () Bool)

(declare-fun e!532915 () Bool)

(declare-fun mapRes!32869 () Bool)

(assert (=> b!946894 (= e!532917 (and e!532915 mapRes!32869))))

(declare-fun condMapEmpty!32869 () Bool)

(declare-fun mapDefault!32869 () ValueCell!9852)

(assert (=> b!946894 (= condMapEmpty!32869 (= (arr!27583 (_values!5747 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9852)) mapDefault!32869)))))

(declare-fun res!635648 () Bool)

(assert (=> start!80798 (=> (not res!635648) (not e!532914))))

(declare-fun valid!1829 (LongMapFixedSize!4854) Bool)

(assert (=> start!80798 (= res!635648 (valid!1829 thiss!1141))))

(assert (=> start!80798 e!532914))

(assert (=> start!80798 e!532913))

(assert (=> start!80798 true))

(declare-fun mapNonEmpty!32869 () Bool)

(declare-fun tp!63030 () Bool)

(assert (=> mapNonEmpty!32869 (= mapRes!32869 (and tp!63030 e!532918))))

(declare-fun mapKey!32869 () (_ BitVec 32))

(declare-fun mapRest!32869 () (Array (_ BitVec 32) ValueCell!9852))

(declare-fun mapValue!32869 () ValueCell!9852)

(assert (=> mapNonEmpty!32869 (= (arr!27583 (_values!5747 thiss!1141)) (store mapRest!32869 mapKey!32869 mapValue!32869))))

(declare-fun mapIsEmpty!32869 () Bool)

(assert (=> mapIsEmpty!32869 mapRes!32869))

(declare-fun b!946895 () Bool)

(assert (=> b!946895 (= e!532915 tp_is_empty!20667)))

(assert (= (and start!80798 res!635648) b!946889))

(assert (= (and b!946889 res!635644) b!946891))

(assert (= (and b!946891 res!635645) b!946890))

(assert (= (and b!946890 (not res!635646)) b!946893))

(assert (= (and b!946893 (not res!635647)) b!946892))

(assert (= (and b!946894 condMapEmpty!32869) mapIsEmpty!32869))

(assert (= (and b!946894 (not condMapEmpty!32869)) mapNonEmpty!32869))

(assert (= (and mapNonEmpty!32869 ((_ is ValueCellFull!9852) mapValue!32869)) b!946888))

(assert (= (and b!946894 ((_ is ValueCellFull!9852) mapDefault!32869)) b!946895))

(assert (= b!946887 b!946894))

(assert (= start!80798 b!946887))

(declare-fun m!880101 () Bool)

(assert (=> b!946892 m!880101))

(declare-fun m!880103 () Bool)

(assert (=> b!946887 m!880103))

(declare-fun m!880105 () Bool)

(assert (=> b!946887 m!880105))

(declare-fun m!880107 () Bool)

(assert (=> b!946890 m!880107))

(declare-fun m!880109 () Bool)

(assert (=> b!946890 m!880109))

(declare-fun m!880111 () Bool)

(assert (=> b!946890 m!880111))

(declare-fun m!880113 () Bool)

(assert (=> b!946891 m!880113))

(declare-fun m!880115 () Bool)

(assert (=> start!80798 m!880115))

(declare-fun m!880117 () Bool)

(assert (=> mapNonEmpty!32869 m!880117))

(check-sat (not b!946890) (not b!946892) (not start!80798) (not mapNonEmpty!32869) (not b_next!18159) (not b!946891) (not b!946887) tp_is_empty!20667 b_and!29599)
(check-sat b_and!29599 (not b_next!18159))
(get-model)

(declare-fun d!114553 () Bool)

(assert (=> d!114553 (= (validMask!0 (mask!27442 thiss!1141)) (and (or (= (mask!27442 thiss!1141) #b00000000000000000000000000000111) (= (mask!27442 thiss!1141) #b00000000000000000000000000001111) (= (mask!27442 thiss!1141) #b00000000000000000000000000011111) (= (mask!27442 thiss!1141) #b00000000000000000000000000111111) (= (mask!27442 thiss!1141) #b00000000000000000000000001111111) (= (mask!27442 thiss!1141) #b00000000000000000000000011111111) (= (mask!27442 thiss!1141) #b00000000000000000000000111111111) (= (mask!27442 thiss!1141) #b00000000000000000000001111111111) (= (mask!27442 thiss!1141) #b00000000000000000000011111111111) (= (mask!27442 thiss!1141) #b00000000000000000000111111111111) (= (mask!27442 thiss!1141) #b00000000000000000001111111111111) (= (mask!27442 thiss!1141) #b00000000000000000011111111111111) (= (mask!27442 thiss!1141) #b00000000000000000111111111111111) (= (mask!27442 thiss!1141) #b00000000000000001111111111111111) (= (mask!27442 thiss!1141) #b00000000000000011111111111111111) (= (mask!27442 thiss!1141) #b00000000000000111111111111111111) (= (mask!27442 thiss!1141) #b00000000000001111111111111111111) (= (mask!27442 thiss!1141) #b00000000000011111111111111111111) (= (mask!27442 thiss!1141) #b00000000000111111111111111111111) (= (mask!27442 thiss!1141) #b00000000001111111111111111111111) (= (mask!27442 thiss!1141) #b00000000011111111111111111111111) (= (mask!27442 thiss!1141) #b00000000111111111111111111111111) (= (mask!27442 thiss!1141) #b00000001111111111111111111111111) (= (mask!27442 thiss!1141) #b00000011111111111111111111111111) (= (mask!27442 thiss!1141) #b00000111111111111111111111111111) (= (mask!27442 thiss!1141) #b00001111111111111111111111111111) (= (mask!27442 thiss!1141) #b00011111111111111111111111111111) (= (mask!27442 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27442 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!946890 d!114553))

(declare-fun d!114555 () Bool)

(declare-fun res!635668 () Bool)

(declare-fun e!532947 () Bool)

(assert (=> d!114555 (=> res!635668 e!532947)))

(assert (=> d!114555 (= res!635668 (= (select (arr!27584 (_keys!10625 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114555 (= (arrayContainsKey!0 (_keys!10625 thiss!1141) key!756 #b00000000000000000000000000000000) e!532947)))

(declare-fun b!946927 () Bool)

(declare-fun e!532948 () Bool)

(assert (=> b!946927 (= e!532947 e!532948)))

(declare-fun res!635669 () Bool)

(assert (=> b!946927 (=> (not res!635669) (not e!532948))))

(assert (=> b!946927 (= res!635669 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28058 (_keys!10625 thiss!1141))))))

(declare-fun b!946928 () Bool)

(assert (=> b!946928 (= e!532948 (arrayContainsKey!0 (_keys!10625 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114555 (not res!635668)) b!946927))

(assert (= (and b!946927 res!635669) b!946928))

(declare-fun m!880137 () Bool)

(assert (=> d!114555 m!880137))

(declare-fun m!880139 () Bool)

(assert (=> b!946928 m!880139))

(assert (=> b!946890 d!114555))

(declare-fun d!114557 () Bool)

(assert (=> d!114557 (arrayContainsKey!0 (_keys!10625 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426422 () Unit!31913)

(declare-fun choose!13 (array!57350 (_ BitVec 64) (_ BitVec 32)) Unit!31913)

(assert (=> d!114557 (= lt!426422 (choose!13 (_keys!10625 thiss!1141) key!756 (index!38771 lt!426412)))))

(assert (=> d!114557 (bvsge (index!38771 lt!426412) #b00000000000000000000000000000000)))

(assert (=> d!114557 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10625 thiss!1141) key!756 (index!38771 lt!426412)) lt!426422)))

(declare-fun bs!26612 () Bool)

(assert (= bs!26612 d!114557))

(assert (=> bs!26612 m!880109))

(declare-fun m!880141 () Bool)

(assert (=> bs!26612 m!880141))

(assert (=> b!946890 d!114557))

(declare-fun d!114559 () Bool)

(declare-fun lt!426434 () SeekEntryResult!9100)

(assert (=> d!114559 (and (or ((_ is MissingVacant!9100) lt!426434) (not ((_ is Found!9100) lt!426434)) (and (bvsge (index!38771 lt!426434) #b00000000000000000000000000000000) (bvslt (index!38771 lt!426434) (size!28058 (_keys!10625 thiss!1141))))) (not ((_ is MissingVacant!9100) lt!426434)) (or (not ((_ is Found!9100) lt!426434)) (= (select (arr!27584 (_keys!10625 thiss!1141)) (index!38771 lt!426434)) key!756)))))

(declare-fun e!532956 () SeekEntryResult!9100)

(assert (=> d!114559 (= lt!426434 e!532956)))

(declare-fun c!98586 () Bool)

(declare-fun lt!426431 () SeekEntryResult!9100)

(assert (=> d!114559 (= c!98586 (and ((_ is Intermediate!9100) lt!426431) (undefined!9912 lt!426431)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57350 (_ BitVec 32)) SeekEntryResult!9100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114559 (= lt!426431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27442 thiss!1141)) key!756 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(assert (=> d!114559 (validMask!0 (mask!27442 thiss!1141))))

(assert (=> d!114559 (= (seekEntry!0 key!756 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)) lt!426434)))

(declare-fun b!946941 () Bool)

(declare-fun e!532955 () SeekEntryResult!9100)

(assert (=> b!946941 (= e!532956 e!532955)))

(declare-fun lt!426432 () (_ BitVec 64))

(assert (=> b!946941 (= lt!426432 (select (arr!27584 (_keys!10625 thiss!1141)) (index!38772 lt!426431)))))

(declare-fun c!98585 () Bool)

(assert (=> b!946941 (= c!98585 (= lt!426432 key!756))))

(declare-fun b!946942 () Bool)

(assert (=> b!946942 (= e!532955 (Found!9100 (index!38772 lt!426431)))))

(declare-fun b!946943 () Bool)

(assert (=> b!946943 (= e!532956 Undefined!9100)))

(declare-fun b!946944 () Bool)

(declare-fun e!532957 () SeekEntryResult!9100)

(declare-fun lt!426433 () SeekEntryResult!9100)

(assert (=> b!946944 (= e!532957 (ite ((_ is MissingVacant!9100) lt!426433) (MissingZero!9100 (index!38773 lt!426433)) lt!426433))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57350 (_ BitVec 32)) SeekEntryResult!9100)

(assert (=> b!946944 (= lt!426433 (seekKeyOrZeroReturnVacant!0 (x!81445 lt!426431) (index!38772 lt!426431) (index!38772 lt!426431) key!756 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(declare-fun b!946945 () Bool)

(assert (=> b!946945 (= e!532957 (MissingZero!9100 (index!38772 lt!426431)))))

(declare-fun b!946946 () Bool)

(declare-fun c!98587 () Bool)

(assert (=> b!946946 (= c!98587 (= lt!426432 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946946 (= e!532955 e!532957)))

(assert (= (and d!114559 c!98586) b!946943))

(assert (= (and d!114559 (not c!98586)) b!946941))

(assert (= (and b!946941 c!98585) b!946942))

(assert (= (and b!946941 (not c!98585)) b!946946))

(assert (= (and b!946946 c!98587) b!946945))

(assert (= (and b!946946 (not c!98587)) b!946944))

(declare-fun m!880143 () Bool)

(assert (=> d!114559 m!880143))

(declare-fun m!880145 () Bool)

(assert (=> d!114559 m!880145))

(assert (=> d!114559 m!880145))

(declare-fun m!880147 () Bool)

(assert (=> d!114559 m!880147))

(assert (=> d!114559 m!880107))

(declare-fun m!880149 () Bool)

(assert (=> b!946941 m!880149))

(declare-fun m!880151 () Bool)

(assert (=> b!946944 m!880151))

(assert (=> b!946891 d!114559))

(declare-fun d!114561 () Bool)

(declare-fun res!635676 () Bool)

(declare-fun e!532960 () Bool)

(assert (=> d!114561 (=> (not res!635676) (not e!532960))))

(declare-fun simpleValid!360 (LongMapFixedSize!4854) Bool)

(assert (=> d!114561 (= res!635676 (simpleValid!360 thiss!1141))))

(assert (=> d!114561 (= (valid!1829 thiss!1141) e!532960)))

(declare-fun b!946953 () Bool)

(declare-fun res!635677 () Bool)

(assert (=> b!946953 (=> (not res!635677) (not e!532960))))

(declare-fun arrayCountValidKeys!0 (array!57350 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946953 (= res!635677 (= (arrayCountValidKeys!0 (_keys!10625 thiss!1141) #b00000000000000000000000000000000 (size!28058 (_keys!10625 thiss!1141))) (_size!2482 thiss!1141)))))

(declare-fun b!946954 () Bool)

(declare-fun res!635678 () Bool)

(assert (=> b!946954 (=> (not res!635678) (not e!532960))))

(assert (=> b!946954 (= res!635678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(declare-fun b!946955 () Bool)

(declare-datatypes ((List!19430 0))(
  ( (Nil!19427) (Cons!19426 (h!20582 (_ BitVec 64)) (t!27759 List!19430)) )
))
(declare-fun arrayNoDuplicates!0 (array!57350 (_ BitVec 32) List!19430) Bool)

(assert (=> b!946955 (= e!532960 (arrayNoDuplicates!0 (_keys!10625 thiss!1141) #b00000000000000000000000000000000 Nil!19427))))

(assert (= (and d!114561 res!635676) b!946953))

(assert (= (and b!946953 res!635677) b!946954))

(assert (= (and b!946954 res!635678) b!946955))

(declare-fun m!880153 () Bool)

(assert (=> d!114561 m!880153))

(declare-fun m!880155 () Bool)

(assert (=> b!946953 m!880155))

(assert (=> b!946954 m!880101))

(declare-fun m!880157 () Bool)

(assert (=> b!946955 m!880157))

(assert (=> start!80798 d!114561))

(declare-fun d!114563 () Bool)

(assert (=> d!114563 (= (array_inv!21364 (_keys!10625 thiss!1141)) (bvsge (size!28058 (_keys!10625 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946887 d!114563))

(declare-fun d!114565 () Bool)

(assert (=> d!114565 (= (array_inv!21365 (_values!5747 thiss!1141)) (bvsge (size!28057 (_values!5747 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946887 d!114565))

(declare-fun d!114567 () Bool)

(declare-fun res!635683 () Bool)

(declare-fun e!532968 () Bool)

(assert (=> d!114567 (=> res!635683 e!532968)))

(assert (=> d!114567 (= res!635683 (bvsge #b00000000000000000000000000000000 (size!28058 (_keys!10625 thiss!1141))))))

(assert (=> d!114567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10625 thiss!1141) (mask!27442 thiss!1141)) e!532968)))

(declare-fun b!946964 () Bool)

(declare-fun e!532967 () Bool)

(declare-fun call!41106 () Bool)

(assert (=> b!946964 (= e!532967 call!41106)))

(declare-fun bm!41103 () Bool)

(assert (=> bm!41103 (= call!41106 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10625 thiss!1141) (mask!27442 thiss!1141)))))

(declare-fun b!946965 () Bool)

(declare-fun e!532969 () Bool)

(assert (=> b!946965 (= e!532969 e!532967)))

(declare-fun lt!426443 () (_ BitVec 64))

(assert (=> b!946965 (= lt!426443 (select (arr!27584 (_keys!10625 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426442 () Unit!31913)

(assert (=> b!946965 (= lt!426442 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10625 thiss!1141) lt!426443 #b00000000000000000000000000000000))))

(assert (=> b!946965 (arrayContainsKey!0 (_keys!10625 thiss!1141) lt!426443 #b00000000000000000000000000000000)))

(declare-fun lt!426441 () Unit!31913)

(assert (=> b!946965 (= lt!426441 lt!426442)))

(declare-fun res!635684 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57350 (_ BitVec 32)) SeekEntryResult!9100)

(assert (=> b!946965 (= res!635684 (= (seekEntryOrOpen!0 (select (arr!27584 (_keys!10625 thiss!1141)) #b00000000000000000000000000000000) (_keys!10625 thiss!1141) (mask!27442 thiss!1141)) (Found!9100 #b00000000000000000000000000000000)))))

(assert (=> b!946965 (=> (not res!635684) (not e!532967))))

(declare-fun b!946966 () Bool)

(assert (=> b!946966 (= e!532969 call!41106)))

(declare-fun b!946967 () Bool)

(assert (=> b!946967 (= e!532968 e!532969)))

(declare-fun c!98590 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!946967 (= c!98590 (validKeyInArray!0 (select (arr!27584 (_keys!10625 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114567 (not res!635683)) b!946967))

(assert (= (and b!946967 c!98590) b!946965))

(assert (= (and b!946967 (not c!98590)) b!946966))

(assert (= (and b!946965 res!635684) b!946964))

(assert (= (or b!946964 b!946966) bm!41103))

(declare-fun m!880159 () Bool)

(assert (=> bm!41103 m!880159))

(assert (=> b!946965 m!880137))

(declare-fun m!880161 () Bool)

(assert (=> b!946965 m!880161))

(declare-fun m!880163 () Bool)

(assert (=> b!946965 m!880163))

(assert (=> b!946965 m!880137))

(declare-fun m!880165 () Bool)

(assert (=> b!946965 m!880165))

(assert (=> b!946967 m!880137))

(assert (=> b!946967 m!880137))

(declare-fun m!880167 () Bool)

(assert (=> b!946967 m!880167))

(assert (=> b!946892 d!114567))

(declare-fun b!946974 () Bool)

(declare-fun e!532975 () Bool)

(assert (=> b!946974 (= e!532975 tp_is_empty!20667)))

(declare-fun mapNonEmpty!32875 () Bool)

(declare-fun mapRes!32875 () Bool)

(declare-fun tp!63040 () Bool)

(assert (=> mapNonEmpty!32875 (= mapRes!32875 (and tp!63040 e!532975))))

(declare-fun mapKey!32875 () (_ BitVec 32))

(declare-fun mapRest!32875 () (Array (_ BitVec 32) ValueCell!9852))

(declare-fun mapValue!32875 () ValueCell!9852)

(assert (=> mapNonEmpty!32875 (= mapRest!32869 (store mapRest!32875 mapKey!32875 mapValue!32875))))

(declare-fun b!946975 () Bool)

(declare-fun e!532974 () Bool)

(assert (=> b!946975 (= e!532974 tp_is_empty!20667)))

(declare-fun condMapEmpty!32875 () Bool)

(declare-fun mapDefault!32875 () ValueCell!9852)

(assert (=> mapNonEmpty!32869 (= condMapEmpty!32875 (= mapRest!32869 ((as const (Array (_ BitVec 32) ValueCell!9852)) mapDefault!32875)))))

(assert (=> mapNonEmpty!32869 (= tp!63030 (and e!532974 mapRes!32875))))

(declare-fun mapIsEmpty!32875 () Bool)

(assert (=> mapIsEmpty!32875 mapRes!32875))

(assert (= (and mapNonEmpty!32869 condMapEmpty!32875) mapIsEmpty!32875))

(assert (= (and mapNonEmpty!32869 (not condMapEmpty!32875)) mapNonEmpty!32875))

(assert (= (and mapNonEmpty!32875 ((_ is ValueCellFull!9852) mapValue!32875)) b!946974))

(assert (= (and mapNonEmpty!32869 ((_ is ValueCellFull!9852) mapDefault!32875)) b!946975))

(declare-fun m!880169 () Bool)

(assert (=> mapNonEmpty!32875 m!880169))

(check-sat (not d!114557) (not b!946965) (not b!946953) (not b!946928) (not mapNonEmpty!32875) (not b!946954) (not bm!41103) (not b_next!18159) (not b!946944) (not b!946967) tp_is_empty!20667 (not b!946955) b_and!29599 (not d!114559) (not d!114561))
(check-sat b_and!29599 (not b_next!18159))
