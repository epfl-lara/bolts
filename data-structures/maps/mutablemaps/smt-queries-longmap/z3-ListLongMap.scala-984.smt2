; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21256 () Bool)

(assert start!21256)

(declare-fun b!214020 () Bool)

(declare-fun b_free!5655 () Bool)

(declare-fun b_next!5655 () Bool)

(assert (=> b!214020 (= b_free!5655 (not b_next!5655))))

(declare-fun tp!20042 () Bool)

(declare-fun b_and!12563 () Bool)

(assert (=> b!214020 (= tp!20042 b_and!12563)))

(declare-fun b!214015 () Bool)

(declare-fun e!139172 () Bool)

(declare-fun tp_is_empty!5517 () Bool)

(assert (=> b!214015 (= e!139172 tp_is_empty!5517)))

(declare-fun b!214016 () Bool)

(declare-fun e!139169 () Bool)

(assert (=> b!214016 (= e!139169 tp_is_empty!5517)))

(declare-fun mapNonEmpty!9380 () Bool)

(declare-fun mapRes!9380 () Bool)

(declare-fun tp!20041 () Bool)

(assert (=> mapNonEmpty!9380 (= mapRes!9380 (and tp!20041 e!139172))))

(declare-datatypes ((V!7003 0))(
  ( (V!7004 (val!2803 Int)) )
))
(declare-datatypes ((ValueCell!2415 0))(
  ( (ValueCellFull!2415 (v!4817 V!7003)) (EmptyCell!2415) )
))
(declare-datatypes ((array!10238 0))(
  ( (array!10239 (arr!4857 (Array (_ BitVec 32) ValueCell!2415)) (size!5182 (_ BitVec 32))) )
))
(declare-datatypes ((array!10240 0))(
  ( (array!10241 (arr!4858 (Array (_ BitVec 32) (_ BitVec 64))) (size!5183 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2730 0))(
  ( (LongMapFixedSize!2731 (defaultEntry!4015 Int) (mask!9663 (_ BitVec 32)) (extraKeys!3752 (_ BitVec 32)) (zeroValue!3856 V!7003) (minValue!3856 V!7003) (_size!1414 (_ BitVec 32)) (_keys!6031 array!10240) (_values!3998 array!10238) (_vacant!1414 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2730)

(declare-fun mapValue!9380 () ValueCell!2415)

(declare-fun mapKey!9380 () (_ BitVec 32))

(declare-fun mapRest!9380 () (Array (_ BitVec 32) ValueCell!2415))

(assert (=> mapNonEmpty!9380 (= (arr!4857 (_values!3998 thiss!1504)) (store mapRest!9380 mapKey!9380 mapValue!9380))))

(declare-fun b!214017 () Bool)

(declare-fun e!139170 () Bool)

(assert (=> b!214017 (= e!139170 (and e!139169 mapRes!9380))))

(declare-fun condMapEmpty!9380 () Bool)

(declare-fun mapDefault!9380 () ValueCell!2415)

(assert (=> b!214017 (= condMapEmpty!9380 (= (arr!4857 (_values!3998 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2415)) mapDefault!9380)))))

(declare-fun b!214018 () Bool)

(declare-fun e!139173 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214018 (= e!139173 (not (validMask!0 (mask!9663 thiss!1504))))))

(declare-fun b!214019 () Bool)

(declare-fun res!104793 () Bool)

(assert (=> b!214019 (=> (not res!104793) (not e!139173))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214019 (= res!104793 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!104794 () Bool)

(assert (=> start!21256 (=> (not res!104794) (not e!139173))))

(declare-fun valid!1111 (LongMapFixedSize!2730) Bool)

(assert (=> start!21256 (= res!104794 (valid!1111 thiss!1504))))

(assert (=> start!21256 e!139173))

(declare-fun e!139171 () Bool)

(assert (=> start!21256 e!139171))

(assert (=> start!21256 true))

(declare-fun mapIsEmpty!9380 () Bool)

(assert (=> mapIsEmpty!9380 mapRes!9380))

(declare-fun array_inv!3203 (array!10240) Bool)

(declare-fun array_inv!3204 (array!10238) Bool)

(assert (=> b!214020 (= e!139171 (and tp!20042 tp_is_empty!5517 (array_inv!3203 (_keys!6031 thiss!1504)) (array_inv!3204 (_values!3998 thiss!1504)) e!139170))))

(assert (= (and start!21256 res!104794) b!214019))

(assert (= (and b!214019 res!104793) b!214018))

(assert (= (and b!214017 condMapEmpty!9380) mapIsEmpty!9380))

(assert (= (and b!214017 (not condMapEmpty!9380)) mapNonEmpty!9380))

(get-info :version)

(assert (= (and mapNonEmpty!9380 ((_ is ValueCellFull!2415) mapValue!9380)) b!214015))

(assert (= (and b!214017 ((_ is ValueCellFull!2415) mapDefault!9380)) b!214016))

(assert (= b!214020 b!214017))

(assert (= start!21256 b!214020))

(declare-fun m!241907 () Bool)

(assert (=> mapNonEmpty!9380 m!241907))

(declare-fun m!241909 () Bool)

(assert (=> b!214018 m!241909))

(declare-fun m!241911 () Bool)

(assert (=> start!21256 m!241911))

(declare-fun m!241913 () Bool)

(assert (=> b!214020 m!241913))

(declare-fun m!241915 () Bool)

(assert (=> b!214020 m!241915))

(check-sat (not b!214018) (not start!21256) b_and!12563 (not mapNonEmpty!9380) (not b!214020) (not b_next!5655) tp_is_empty!5517)
(check-sat b_and!12563 (not b_next!5655))
(get-model)

(declare-fun d!58177 () Bool)

(declare-fun res!104807 () Bool)

(declare-fun e!139195 () Bool)

(assert (=> d!58177 (=> (not res!104807) (not e!139195))))

(declare-fun simpleValid!206 (LongMapFixedSize!2730) Bool)

(assert (=> d!58177 (= res!104807 (simpleValid!206 thiss!1504))))

(assert (=> d!58177 (= (valid!1111 thiss!1504) e!139195)))

(declare-fun b!214045 () Bool)

(declare-fun res!104808 () Bool)

(assert (=> b!214045 (=> (not res!104808) (not e!139195))))

(declare-fun arrayCountValidKeys!0 (array!10240 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214045 (= res!104808 (= (arrayCountValidKeys!0 (_keys!6031 thiss!1504) #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))) (_size!1414 thiss!1504)))))

(declare-fun b!214046 () Bool)

(declare-fun res!104809 () Bool)

(assert (=> b!214046 (=> (not res!104809) (not e!139195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10240 (_ BitVec 32)) Bool)

(assert (=> b!214046 (= res!104809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6031 thiss!1504) (mask!9663 thiss!1504)))))

(declare-fun b!214047 () Bool)

(declare-datatypes ((List!3146 0))(
  ( (Nil!3143) (Cons!3142 (h!3784 (_ BitVec 64)) (t!8109 List!3146)) )
))
(declare-fun arrayNoDuplicates!0 (array!10240 (_ BitVec 32) List!3146) Bool)

(assert (=> b!214047 (= e!139195 (arrayNoDuplicates!0 (_keys!6031 thiss!1504) #b00000000000000000000000000000000 Nil!3143))))

(assert (= (and d!58177 res!104807) b!214045))

(assert (= (and b!214045 res!104808) b!214046))

(assert (= (and b!214046 res!104809) b!214047))

(declare-fun m!241927 () Bool)

(assert (=> d!58177 m!241927))

(declare-fun m!241929 () Bool)

(assert (=> b!214045 m!241929))

(declare-fun m!241931 () Bool)

(assert (=> b!214046 m!241931))

(declare-fun m!241933 () Bool)

(assert (=> b!214047 m!241933))

(assert (=> start!21256 d!58177))

(declare-fun d!58179 () Bool)

(assert (=> d!58179 (= (array_inv!3203 (_keys!6031 thiss!1504)) (bvsge (size!5183 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214020 d!58179))

(declare-fun d!58181 () Bool)

(assert (=> d!58181 (= (array_inv!3204 (_values!3998 thiss!1504)) (bvsge (size!5182 (_values!3998 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214020 d!58181))

(declare-fun d!58183 () Bool)

(assert (=> d!58183 (= (validMask!0 (mask!9663 thiss!1504)) (and (or (= (mask!9663 thiss!1504) #b00000000000000000000000000000111) (= (mask!9663 thiss!1504) #b00000000000000000000000000001111) (= (mask!9663 thiss!1504) #b00000000000000000000000000011111) (= (mask!9663 thiss!1504) #b00000000000000000000000000111111) (= (mask!9663 thiss!1504) #b00000000000000000000000001111111) (= (mask!9663 thiss!1504) #b00000000000000000000000011111111) (= (mask!9663 thiss!1504) #b00000000000000000000000111111111) (= (mask!9663 thiss!1504) #b00000000000000000000001111111111) (= (mask!9663 thiss!1504) #b00000000000000000000011111111111) (= (mask!9663 thiss!1504) #b00000000000000000000111111111111) (= (mask!9663 thiss!1504) #b00000000000000000001111111111111) (= (mask!9663 thiss!1504) #b00000000000000000011111111111111) (= (mask!9663 thiss!1504) #b00000000000000000111111111111111) (= (mask!9663 thiss!1504) #b00000000000000001111111111111111) (= (mask!9663 thiss!1504) #b00000000000000011111111111111111) (= (mask!9663 thiss!1504) #b00000000000000111111111111111111) (= (mask!9663 thiss!1504) #b00000000000001111111111111111111) (= (mask!9663 thiss!1504) #b00000000000011111111111111111111) (= (mask!9663 thiss!1504) #b00000000000111111111111111111111) (= (mask!9663 thiss!1504) #b00000000001111111111111111111111) (= (mask!9663 thiss!1504) #b00000000011111111111111111111111) (= (mask!9663 thiss!1504) #b00000000111111111111111111111111) (= (mask!9663 thiss!1504) #b00000001111111111111111111111111) (= (mask!9663 thiss!1504) #b00000011111111111111111111111111) (= (mask!9663 thiss!1504) #b00000111111111111111111111111111) (= (mask!9663 thiss!1504) #b00001111111111111111111111111111) (= (mask!9663 thiss!1504) #b00011111111111111111111111111111) (= (mask!9663 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9663 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214018 d!58183))

(declare-fun b!214054 () Bool)

(declare-fun e!139201 () Bool)

(assert (=> b!214054 (= e!139201 tp_is_empty!5517)))

(declare-fun b!214055 () Bool)

(declare-fun e!139200 () Bool)

(assert (=> b!214055 (= e!139200 tp_is_empty!5517)))

(declare-fun mapNonEmpty!9386 () Bool)

(declare-fun mapRes!9386 () Bool)

(declare-fun tp!20051 () Bool)

(assert (=> mapNonEmpty!9386 (= mapRes!9386 (and tp!20051 e!139201))))

(declare-fun mapValue!9386 () ValueCell!2415)

(declare-fun mapKey!9386 () (_ BitVec 32))

(declare-fun mapRest!9386 () (Array (_ BitVec 32) ValueCell!2415))

(assert (=> mapNonEmpty!9386 (= mapRest!9380 (store mapRest!9386 mapKey!9386 mapValue!9386))))

(declare-fun condMapEmpty!9386 () Bool)

(declare-fun mapDefault!9386 () ValueCell!2415)

(assert (=> mapNonEmpty!9380 (= condMapEmpty!9386 (= mapRest!9380 ((as const (Array (_ BitVec 32) ValueCell!2415)) mapDefault!9386)))))

(assert (=> mapNonEmpty!9380 (= tp!20041 (and e!139200 mapRes!9386))))

(declare-fun mapIsEmpty!9386 () Bool)

(assert (=> mapIsEmpty!9386 mapRes!9386))

(assert (= (and mapNonEmpty!9380 condMapEmpty!9386) mapIsEmpty!9386))

(assert (= (and mapNonEmpty!9380 (not condMapEmpty!9386)) mapNonEmpty!9386))

(assert (= (and mapNonEmpty!9386 ((_ is ValueCellFull!2415) mapValue!9386)) b!214054))

(assert (= (and mapNonEmpty!9380 ((_ is ValueCellFull!2415) mapDefault!9386)) b!214055))

(declare-fun m!241935 () Bool)

(assert (=> mapNonEmpty!9386 m!241935))

(check-sat (not mapNonEmpty!9386) (not d!58177) (not b!214045) (not b!214047) b_and!12563 (not b!214046) (not b_next!5655) tp_is_empty!5517)
(check-sat b_and!12563 (not b_next!5655))
(get-model)

(declare-fun bm!20302 () Bool)

(declare-fun call!20305 () Bool)

(declare-fun c!36007 () Bool)

(assert (=> bm!20302 (= call!20305 (arrayNoDuplicates!0 (_keys!6031 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36007 (Cons!3142 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000) Nil!3143) Nil!3143)))))

(declare-fun d!58185 () Bool)

(declare-fun res!104816 () Bool)

(declare-fun e!139211 () Bool)

(assert (=> d!58185 (=> res!104816 e!139211)))

(assert (=> d!58185 (= res!104816 (bvsge #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))))))

(assert (=> d!58185 (= (arrayNoDuplicates!0 (_keys!6031 thiss!1504) #b00000000000000000000000000000000 Nil!3143) e!139211)))

(declare-fun b!214066 () Bool)

(declare-fun e!139213 () Bool)

(declare-fun e!139212 () Bool)

(assert (=> b!214066 (= e!139213 e!139212)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214066 (= c!36007 (validKeyInArray!0 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214067 () Bool)

(assert (=> b!214067 (= e!139212 call!20305)))

(declare-fun b!214068 () Bool)

(declare-fun e!139210 () Bool)

(declare-fun contains!1424 (List!3146 (_ BitVec 64)) Bool)

(assert (=> b!214068 (= e!139210 (contains!1424 Nil!3143 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214069 () Bool)

(assert (=> b!214069 (= e!139211 e!139213)))

(declare-fun res!104817 () Bool)

(assert (=> b!214069 (=> (not res!104817) (not e!139213))))

(assert (=> b!214069 (= res!104817 (not e!139210))))

(declare-fun res!104818 () Bool)

(assert (=> b!214069 (=> (not res!104818) (not e!139210))))

(assert (=> b!214069 (= res!104818 (validKeyInArray!0 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214070 () Bool)

(assert (=> b!214070 (= e!139212 call!20305)))

(assert (= (and d!58185 (not res!104816)) b!214069))

(assert (= (and b!214069 res!104818) b!214068))

(assert (= (and b!214069 res!104817) b!214066))

(assert (= (and b!214066 c!36007) b!214067))

(assert (= (and b!214066 (not c!36007)) b!214070))

(assert (= (or b!214067 b!214070) bm!20302))

(declare-fun m!241937 () Bool)

(assert (=> bm!20302 m!241937))

(declare-fun m!241939 () Bool)

(assert (=> bm!20302 m!241939))

(assert (=> b!214066 m!241937))

(assert (=> b!214066 m!241937))

(declare-fun m!241941 () Bool)

(assert (=> b!214066 m!241941))

(assert (=> b!214068 m!241937))

(assert (=> b!214068 m!241937))

(declare-fun m!241943 () Bool)

(assert (=> b!214068 m!241943))

(assert (=> b!214069 m!241937))

(assert (=> b!214069 m!241937))

(assert (=> b!214069 m!241941))

(assert (=> b!214047 d!58185))

(declare-fun d!58187 () Bool)

(declare-fun res!104823 () Bool)

(declare-fun e!139221 () Bool)

(assert (=> d!58187 (=> res!104823 e!139221)))

(assert (=> d!58187 (= res!104823 (bvsge #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))))))

(assert (=> d!58187 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6031 thiss!1504) (mask!9663 thiss!1504)) e!139221)))

(declare-fun b!214079 () Bool)

(declare-fun e!139220 () Bool)

(declare-fun e!139222 () Bool)

(assert (=> b!214079 (= e!139220 e!139222)))

(declare-fun lt!110797 () (_ BitVec 64))

(assert (=> b!214079 (= lt!110797 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6485 0))(
  ( (Unit!6486) )
))
(declare-fun lt!110796 () Unit!6485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10240 (_ BitVec 64) (_ BitVec 32)) Unit!6485)

(assert (=> b!214079 (= lt!110796 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6031 thiss!1504) lt!110797 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!214079 (arrayContainsKey!0 (_keys!6031 thiss!1504) lt!110797 #b00000000000000000000000000000000)))

(declare-fun lt!110795 () Unit!6485)

(assert (=> b!214079 (= lt!110795 lt!110796)))

(declare-fun res!104824 () Bool)

(declare-datatypes ((SeekEntryResult!726 0))(
  ( (MissingZero!726 (index!5074 (_ BitVec 32))) (Found!726 (index!5075 (_ BitVec 32))) (Intermediate!726 (undefined!1538 Bool) (index!5076 (_ BitVec 32)) (x!22307 (_ BitVec 32))) (Undefined!726) (MissingVacant!726 (index!5077 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10240 (_ BitVec 32)) SeekEntryResult!726)

(assert (=> b!214079 (= res!104824 (= (seekEntryOrOpen!0 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000) (_keys!6031 thiss!1504) (mask!9663 thiss!1504)) (Found!726 #b00000000000000000000000000000000)))))

(assert (=> b!214079 (=> (not res!104824) (not e!139222))))

(declare-fun bm!20305 () Bool)

(declare-fun call!20308 () Bool)

(assert (=> bm!20305 (= call!20308 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6031 thiss!1504) (mask!9663 thiss!1504)))))

(declare-fun b!214080 () Bool)

(assert (=> b!214080 (= e!139222 call!20308)))

(declare-fun b!214081 () Bool)

(assert (=> b!214081 (= e!139221 e!139220)))

(declare-fun c!36010 () Bool)

(assert (=> b!214081 (= c!36010 (validKeyInArray!0 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214082 () Bool)

(assert (=> b!214082 (= e!139220 call!20308)))

(assert (= (and d!58187 (not res!104823)) b!214081))

(assert (= (and b!214081 c!36010) b!214079))

(assert (= (and b!214081 (not c!36010)) b!214082))

(assert (= (and b!214079 res!104824) b!214080))

(assert (= (or b!214080 b!214082) bm!20305))

(assert (=> b!214079 m!241937))

(declare-fun m!241945 () Bool)

(assert (=> b!214079 m!241945))

(declare-fun m!241947 () Bool)

(assert (=> b!214079 m!241947))

(assert (=> b!214079 m!241937))

(declare-fun m!241949 () Bool)

(assert (=> b!214079 m!241949))

(declare-fun m!241951 () Bool)

(assert (=> bm!20305 m!241951))

(assert (=> b!214081 m!241937))

(assert (=> b!214081 m!241937))

(assert (=> b!214081 m!241941))

(assert (=> b!214046 d!58187))

(declare-fun b!214093 () Bool)

(declare-fun res!104834 () Bool)

(declare-fun e!139225 () Bool)

(assert (=> b!214093 (=> (not res!104834) (not e!139225))))

(declare-fun size!5186 (LongMapFixedSize!2730) (_ BitVec 32))

(assert (=> b!214093 (= res!104834 (= (size!5186 thiss!1504) (bvadd (_size!1414 thiss!1504) (bvsdiv (bvadd (extraKeys!3752 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!214091 () Bool)

(declare-fun res!104833 () Bool)

(assert (=> b!214091 (=> (not res!104833) (not e!139225))))

(assert (=> b!214091 (= res!104833 (and (= (size!5182 (_values!3998 thiss!1504)) (bvadd (mask!9663 thiss!1504) #b00000000000000000000000000000001)) (= (size!5183 (_keys!6031 thiss!1504)) (size!5182 (_values!3998 thiss!1504))) (bvsge (_size!1414 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1414 thiss!1504) (bvadd (mask!9663 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!214094 () Bool)

(assert (=> b!214094 (= e!139225 (and (bvsge (extraKeys!3752 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3752 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1414 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!58189 () Bool)

(declare-fun res!104836 () Bool)

(assert (=> d!58189 (=> (not res!104836) (not e!139225))))

(assert (=> d!58189 (= res!104836 (validMask!0 (mask!9663 thiss!1504)))))

(assert (=> d!58189 (= (simpleValid!206 thiss!1504) e!139225)))

(declare-fun b!214092 () Bool)

(declare-fun res!104835 () Bool)

(assert (=> b!214092 (=> (not res!104835) (not e!139225))))

(assert (=> b!214092 (= res!104835 (bvsge (size!5186 thiss!1504) (_size!1414 thiss!1504)))))

(assert (= (and d!58189 res!104836) b!214091))

(assert (= (and b!214091 res!104833) b!214092))

(assert (= (and b!214092 res!104835) b!214093))

(assert (= (and b!214093 res!104834) b!214094))

(declare-fun m!241953 () Bool)

(assert (=> b!214093 m!241953))

(assert (=> d!58189 m!241909))

(assert (=> b!214092 m!241953))

(assert (=> d!58177 d!58189))

(declare-fun bm!20308 () Bool)

(declare-fun call!20311 () (_ BitVec 32))

(assert (=> bm!20308 (= call!20311 (arrayCountValidKeys!0 (_keys!6031 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5183 (_keys!6031 thiss!1504))))))

(declare-fun b!214103 () Bool)

(declare-fun e!139230 () (_ BitVec 32))

(assert (=> b!214103 (= e!139230 call!20311)))

(declare-fun b!214104 () Bool)

(assert (=> b!214104 (= e!139230 (bvadd #b00000000000000000000000000000001 call!20311))))

(declare-fun d!58191 () Bool)

(declare-fun lt!110800 () (_ BitVec 32))

(assert (=> d!58191 (and (bvsge lt!110800 #b00000000000000000000000000000000) (bvsle lt!110800 (bvsub (size!5183 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!139231 () (_ BitVec 32))

(assert (=> d!58191 (= lt!110800 e!139231)))

(declare-fun c!36015 () Bool)

(assert (=> d!58191 (= c!36015 (bvsge #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))))))

(assert (=> d!58191 (and (bvsle #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5183 (_keys!6031 thiss!1504)) (size!5183 (_keys!6031 thiss!1504))))))

(assert (=> d!58191 (= (arrayCountValidKeys!0 (_keys!6031 thiss!1504) #b00000000000000000000000000000000 (size!5183 (_keys!6031 thiss!1504))) lt!110800)))

(declare-fun b!214105 () Bool)

(assert (=> b!214105 (= e!139231 e!139230)))

(declare-fun c!36016 () Bool)

(assert (=> b!214105 (= c!36016 (validKeyInArray!0 (select (arr!4858 (_keys!6031 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214106 () Bool)

(assert (=> b!214106 (= e!139231 #b00000000000000000000000000000000)))

(assert (= (and d!58191 c!36015) b!214106))

(assert (= (and d!58191 (not c!36015)) b!214105))

(assert (= (and b!214105 c!36016) b!214104))

(assert (= (and b!214105 (not c!36016)) b!214103))

(assert (= (or b!214104 b!214103) bm!20308))

(declare-fun m!241955 () Bool)

(assert (=> bm!20308 m!241955))

(assert (=> b!214105 m!241937))

(assert (=> b!214105 m!241937))

(assert (=> b!214105 m!241941))

(assert (=> b!214045 d!58191))

(declare-fun b!214107 () Bool)

(declare-fun e!139233 () Bool)

(assert (=> b!214107 (= e!139233 tp_is_empty!5517)))

(declare-fun b!214108 () Bool)

(declare-fun e!139232 () Bool)

(assert (=> b!214108 (= e!139232 tp_is_empty!5517)))

(declare-fun mapNonEmpty!9387 () Bool)

(declare-fun mapRes!9387 () Bool)

(declare-fun tp!20052 () Bool)

(assert (=> mapNonEmpty!9387 (= mapRes!9387 (and tp!20052 e!139233))))

(declare-fun mapRest!9387 () (Array (_ BitVec 32) ValueCell!2415))

(declare-fun mapValue!9387 () ValueCell!2415)

(declare-fun mapKey!9387 () (_ BitVec 32))

(assert (=> mapNonEmpty!9387 (= mapRest!9386 (store mapRest!9387 mapKey!9387 mapValue!9387))))

(declare-fun condMapEmpty!9387 () Bool)

(declare-fun mapDefault!9387 () ValueCell!2415)

(assert (=> mapNonEmpty!9386 (= condMapEmpty!9387 (= mapRest!9386 ((as const (Array (_ BitVec 32) ValueCell!2415)) mapDefault!9387)))))

(assert (=> mapNonEmpty!9386 (= tp!20051 (and e!139232 mapRes!9387))))

(declare-fun mapIsEmpty!9387 () Bool)

(assert (=> mapIsEmpty!9387 mapRes!9387))

(assert (= (and mapNonEmpty!9386 condMapEmpty!9387) mapIsEmpty!9387))

(assert (= (and mapNonEmpty!9386 (not condMapEmpty!9387)) mapNonEmpty!9387))

(assert (= (and mapNonEmpty!9387 ((_ is ValueCellFull!2415) mapValue!9387)) b!214107))

(assert (= (and mapNonEmpty!9386 ((_ is ValueCellFull!2415) mapDefault!9387)) b!214108))

(declare-fun m!241957 () Bool)

(assert (=> mapNonEmpty!9387 m!241957))

(check-sat (not b!214092) (not mapNonEmpty!9387) (not b!214081) (not d!58189) (not bm!20302) b_and!12563 (not b!214079) (not bm!20305) (not b!214069) (not b_next!5655) tp_is_empty!5517 (not b!214105) (not b!214068) (not b!214093) (not bm!20308) (not b!214066))
(check-sat b_and!12563 (not b_next!5655))
