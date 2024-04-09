; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16882 () Bool)

(assert start!16882)

(declare-fun b!169882 () Bool)

(declare-fun b_free!4173 () Bool)

(declare-fun b_next!4173 () Bool)

(assert (=> b!169882 (= b_free!4173 (not b_next!4173))))

(declare-fun tp!15127 () Bool)

(declare-fun b_and!10605 () Bool)

(assert (=> b!169882 (= tp!15127 b_and!10605)))

(declare-fun b!169878 () Bool)

(declare-fun e!112062 () Bool)

(declare-fun tp_is_empty!3945 () Bool)

(assert (=> b!169878 (= e!112062 tp_is_empty!3945)))

(declare-fun res!80776 () Bool)

(declare-fun e!112065 () Bool)

(assert (=> start!16882 (=> (not res!80776) (not e!112065))))

(declare-datatypes ((V!4907 0))(
  ( (V!4908 (val!2017 Int)) )
))
(declare-datatypes ((ValueCell!1629 0))(
  ( (ValueCellFull!1629 (v!3878 V!4907)) (EmptyCell!1629) )
))
(declare-datatypes ((array!6990 0))(
  ( (array!6991 (arr!3328 (Array (_ BitVec 32) (_ BitVec 64))) (size!3618 (_ BitVec 32))) )
))
(declare-datatypes ((array!6992 0))(
  ( (array!6993 (arr!3329 (Array (_ BitVec 32) ValueCell!1629)) (size!3619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2166 0))(
  ( (LongMapFixedSize!2167 (defaultEntry!3525 Int) (mask!8322 (_ BitVec 32)) (extraKeys!3266 (_ BitVec 32)) (zeroValue!3368 V!4907) (minValue!3368 V!4907) (_size!1132 (_ BitVec 32)) (_keys!5352 array!6990) (_values!3508 array!6992) (_vacant!1132 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2166)

(declare-fun valid!923 (LongMapFixedSize!2166) Bool)

(assert (=> start!16882 (= res!80776 (valid!923 thiss!1248))))

(assert (=> start!16882 e!112065))

(declare-fun e!112066 () Bool)

(assert (=> start!16882 e!112066))

(assert (=> start!16882 true))

(declare-fun b!169879 () Bool)

(declare-fun res!80778 () Bool)

(assert (=> b!169879 (=> (not res!80778) (not e!112065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!169879 (= res!80778 (validMask!0 (mask!8322 thiss!1248)))))

(declare-fun b!169880 () Bool)

(declare-fun e!112067 () Bool)

(declare-fun mapRes!6689 () Bool)

(assert (=> b!169880 (= e!112067 (and e!112062 mapRes!6689))))

(declare-fun condMapEmpty!6689 () Bool)

(declare-fun mapDefault!6689 () ValueCell!1629)

(assert (=> b!169880 (= condMapEmpty!6689 (= (arr!3329 (_values!3508 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1629)) mapDefault!6689)))))

(declare-fun b!169881 () Bool)

(declare-fun res!80777 () Bool)

(assert (=> b!169881 (=> (not res!80777) (not e!112065))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169881 (= res!80777 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!2125 (array!6990) Bool)

(declare-fun array_inv!2126 (array!6992) Bool)

(assert (=> b!169882 (= e!112066 (and tp!15127 tp_is_empty!3945 (array_inv!2125 (_keys!5352 thiss!1248)) (array_inv!2126 (_values!3508 thiss!1248)) e!112067))))

(declare-fun mapNonEmpty!6689 () Bool)

(declare-fun tp!15128 () Bool)

(declare-fun e!112063 () Bool)

(assert (=> mapNonEmpty!6689 (= mapRes!6689 (and tp!15128 e!112063))))

(declare-fun mapRest!6689 () (Array (_ BitVec 32) ValueCell!1629))

(declare-fun mapKey!6689 () (_ BitVec 32))

(declare-fun mapValue!6689 () ValueCell!1629)

(assert (=> mapNonEmpty!6689 (= (arr!3329 (_values!3508 thiss!1248)) (store mapRest!6689 mapKey!6689 mapValue!6689))))

(declare-fun mapIsEmpty!6689 () Bool)

(assert (=> mapIsEmpty!6689 mapRes!6689))

(declare-fun b!169883 () Bool)

(assert (=> b!169883 (= e!112063 tp_is_empty!3945)))

(declare-fun b!169884 () Bool)

(assert (=> b!169884 (= e!112065 (and (= (size!3619 (_values!3508 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8322 thiss!1248))) (not (= (size!3618 (_keys!5352 thiss!1248)) (size!3619 (_values!3508 thiss!1248))))))))

(assert (= (and start!16882 res!80776) b!169881))

(assert (= (and b!169881 res!80777) b!169879))

(assert (= (and b!169879 res!80778) b!169884))

(assert (= (and b!169880 condMapEmpty!6689) mapIsEmpty!6689))

(assert (= (and b!169880 (not condMapEmpty!6689)) mapNonEmpty!6689))

(get-info :version)

(assert (= (and mapNonEmpty!6689 ((_ is ValueCellFull!1629) mapValue!6689)) b!169883))

(assert (= (and b!169880 ((_ is ValueCellFull!1629) mapDefault!6689)) b!169878))

(assert (= b!169882 b!169880))

(assert (= start!16882 b!169882))

(declare-fun m!198685 () Bool)

(assert (=> start!16882 m!198685))

(declare-fun m!198687 () Bool)

(assert (=> b!169879 m!198687))

(declare-fun m!198689 () Bool)

(assert (=> b!169882 m!198689))

(declare-fun m!198691 () Bool)

(assert (=> b!169882 m!198691))

(declare-fun m!198693 () Bool)

(assert (=> mapNonEmpty!6689 m!198693))

(check-sat (not b_next!4173) (not mapNonEmpty!6689) (not b!169879) tp_is_empty!3945 (not start!16882) b_and!10605 (not b!169882))
(check-sat b_and!10605 (not b_next!4173))
(get-model)

(declare-fun d!51585 () Bool)

(assert (=> d!51585 (= (array_inv!2125 (_keys!5352 thiss!1248)) (bvsge (size!3618 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169882 d!51585))

(declare-fun d!51587 () Bool)

(assert (=> d!51587 (= (array_inv!2126 (_values!3508 thiss!1248)) (bvsge (size!3619 (_values!3508 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!169882 d!51587))

(declare-fun d!51589 () Bool)

(declare-fun res!80794 () Bool)

(declare-fun e!112088 () Bool)

(assert (=> d!51589 (=> (not res!80794) (not e!112088))))

(declare-fun simpleValid!128 (LongMapFixedSize!2166) Bool)

(assert (=> d!51589 (= res!80794 (simpleValid!128 thiss!1248))))

(assert (=> d!51589 (= (valid!923 thiss!1248) e!112088)))

(declare-fun b!169912 () Bool)

(declare-fun res!80795 () Bool)

(assert (=> b!169912 (=> (not res!80795) (not e!112088))))

(declare-fun arrayCountValidKeys!0 (array!6990 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!169912 (= res!80795 (= (arrayCountValidKeys!0 (_keys!5352 thiss!1248) #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))) (_size!1132 thiss!1248)))))

(declare-fun b!169913 () Bool)

(declare-fun res!80796 () Bool)

(assert (=> b!169913 (=> (not res!80796) (not e!112088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6990 (_ BitVec 32)) Bool)

(assert (=> b!169913 (= res!80796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5352 thiss!1248) (mask!8322 thiss!1248)))))

(declare-fun b!169914 () Bool)

(declare-datatypes ((List!2205 0))(
  ( (Nil!2202) (Cons!2201 (h!2818 (_ BitVec 64)) (t!7015 List!2205)) )
))
(declare-fun arrayNoDuplicates!0 (array!6990 (_ BitVec 32) List!2205) Bool)

(assert (=> b!169914 (= e!112088 (arrayNoDuplicates!0 (_keys!5352 thiss!1248) #b00000000000000000000000000000000 Nil!2202))))

(assert (= (and d!51589 res!80794) b!169912))

(assert (= (and b!169912 res!80795) b!169913))

(assert (= (and b!169913 res!80796) b!169914))

(declare-fun m!198705 () Bool)

(assert (=> d!51589 m!198705))

(declare-fun m!198707 () Bool)

(assert (=> b!169912 m!198707))

(declare-fun m!198709 () Bool)

(assert (=> b!169913 m!198709))

(declare-fun m!198711 () Bool)

(assert (=> b!169914 m!198711))

(assert (=> start!16882 d!51589))

(declare-fun d!51591 () Bool)

(assert (=> d!51591 (= (validMask!0 (mask!8322 thiss!1248)) (and (or (= (mask!8322 thiss!1248) #b00000000000000000000000000000111) (= (mask!8322 thiss!1248) #b00000000000000000000000000001111) (= (mask!8322 thiss!1248) #b00000000000000000000000000011111) (= (mask!8322 thiss!1248) #b00000000000000000000000000111111) (= (mask!8322 thiss!1248) #b00000000000000000000000001111111) (= (mask!8322 thiss!1248) #b00000000000000000000000011111111) (= (mask!8322 thiss!1248) #b00000000000000000000000111111111) (= (mask!8322 thiss!1248) #b00000000000000000000001111111111) (= (mask!8322 thiss!1248) #b00000000000000000000011111111111) (= (mask!8322 thiss!1248) #b00000000000000000000111111111111) (= (mask!8322 thiss!1248) #b00000000000000000001111111111111) (= (mask!8322 thiss!1248) #b00000000000000000011111111111111) (= (mask!8322 thiss!1248) #b00000000000000000111111111111111) (= (mask!8322 thiss!1248) #b00000000000000001111111111111111) (= (mask!8322 thiss!1248) #b00000000000000011111111111111111) (= (mask!8322 thiss!1248) #b00000000000000111111111111111111) (= (mask!8322 thiss!1248) #b00000000000001111111111111111111) (= (mask!8322 thiss!1248) #b00000000000011111111111111111111) (= (mask!8322 thiss!1248) #b00000000000111111111111111111111) (= (mask!8322 thiss!1248) #b00000000001111111111111111111111) (= (mask!8322 thiss!1248) #b00000000011111111111111111111111) (= (mask!8322 thiss!1248) #b00000000111111111111111111111111) (= (mask!8322 thiss!1248) #b00000001111111111111111111111111) (= (mask!8322 thiss!1248) #b00000011111111111111111111111111) (= (mask!8322 thiss!1248) #b00000111111111111111111111111111) (= (mask!8322 thiss!1248) #b00001111111111111111111111111111) (= (mask!8322 thiss!1248) #b00011111111111111111111111111111) (= (mask!8322 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8322 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!169879 d!51591))

(declare-fun b!169921 () Bool)

(declare-fun e!112093 () Bool)

(assert (=> b!169921 (= e!112093 tp_is_empty!3945)))

(declare-fun mapIsEmpty!6695 () Bool)

(declare-fun mapRes!6695 () Bool)

(assert (=> mapIsEmpty!6695 mapRes!6695))

(declare-fun condMapEmpty!6695 () Bool)

(declare-fun mapDefault!6695 () ValueCell!1629)

(assert (=> mapNonEmpty!6689 (= condMapEmpty!6695 (= mapRest!6689 ((as const (Array (_ BitVec 32) ValueCell!1629)) mapDefault!6695)))))

(declare-fun e!112094 () Bool)

(assert (=> mapNonEmpty!6689 (= tp!15128 (and e!112094 mapRes!6695))))

(declare-fun mapNonEmpty!6695 () Bool)

(declare-fun tp!15137 () Bool)

(assert (=> mapNonEmpty!6695 (= mapRes!6695 (and tp!15137 e!112093))))

(declare-fun mapKey!6695 () (_ BitVec 32))

(declare-fun mapRest!6695 () (Array (_ BitVec 32) ValueCell!1629))

(declare-fun mapValue!6695 () ValueCell!1629)

(assert (=> mapNonEmpty!6695 (= mapRest!6689 (store mapRest!6695 mapKey!6695 mapValue!6695))))

(declare-fun b!169922 () Bool)

(assert (=> b!169922 (= e!112094 tp_is_empty!3945)))

(assert (= (and mapNonEmpty!6689 condMapEmpty!6695) mapIsEmpty!6695))

(assert (= (and mapNonEmpty!6689 (not condMapEmpty!6695)) mapNonEmpty!6695))

(assert (= (and mapNonEmpty!6695 ((_ is ValueCellFull!1629) mapValue!6695)) b!169921))

(assert (= (and mapNonEmpty!6689 ((_ is ValueCellFull!1629) mapDefault!6695)) b!169922))

(declare-fun m!198713 () Bool)

(assert (=> mapNonEmpty!6695 m!198713))

(check-sat (not b_next!4173) b_and!10605 tp_is_empty!3945 (not b!169913) (not mapNonEmpty!6695) (not b!169912) (not d!51589) (not b!169914))
(check-sat b_and!10605 (not b_next!4173))
(get-model)

(declare-fun b!169931 () Bool)

(declare-fun e!112099 () (_ BitVec 32))

(declare-fun call!17354 () (_ BitVec 32))

(assert (=> b!169931 (= e!112099 (bvadd #b00000000000000000000000000000001 call!17354))))

(declare-fun b!169932 () Bool)

(declare-fun e!112100 () (_ BitVec 32))

(assert (=> b!169932 (= e!112100 #b00000000000000000000000000000000)))

(declare-fun d!51593 () Bool)

(declare-fun lt!84998 () (_ BitVec 32))

(assert (=> d!51593 (and (bvsge lt!84998 #b00000000000000000000000000000000) (bvsle lt!84998 (bvsub (size!3618 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51593 (= lt!84998 e!112100)))

(declare-fun c!30438 () Bool)

(assert (=> d!51593 (= c!30438 (bvsge #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))))))

(assert (=> d!51593 (and (bvsle #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3618 (_keys!5352 thiss!1248)) (size!3618 (_keys!5352 thiss!1248))))))

(assert (=> d!51593 (= (arrayCountValidKeys!0 (_keys!5352 thiss!1248) #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))) lt!84998)))

(declare-fun b!169933 () Bool)

(assert (=> b!169933 (= e!112100 e!112099)))

(declare-fun c!30437 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!169933 (= c!30437 (validKeyInArray!0 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169934 () Bool)

(assert (=> b!169934 (= e!112099 call!17354)))

(declare-fun bm!17351 () Bool)

(assert (=> bm!17351 (= call!17354 (arrayCountValidKeys!0 (_keys!5352 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3618 (_keys!5352 thiss!1248))))))

(assert (= (and d!51593 c!30438) b!169932))

(assert (= (and d!51593 (not c!30438)) b!169933))

(assert (= (and b!169933 c!30437) b!169931))

(assert (= (and b!169933 (not c!30437)) b!169934))

(assert (= (or b!169931 b!169934) bm!17351))

(declare-fun m!198715 () Bool)

(assert (=> b!169933 m!198715))

(assert (=> b!169933 m!198715))

(declare-fun m!198717 () Bool)

(assert (=> b!169933 m!198717))

(declare-fun m!198719 () Bool)

(assert (=> bm!17351 m!198719))

(assert (=> b!169912 d!51593))

(declare-fun b!169946 () Bool)

(declare-fun e!112103 () Bool)

(assert (=> b!169946 (= e!112103 (and (bvsge (extraKeys!3266 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3266 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1132 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!169943 () Bool)

(declare-fun res!80807 () Bool)

(assert (=> b!169943 (=> (not res!80807) (not e!112103))))

(assert (=> b!169943 (= res!80807 (and (= (size!3619 (_values!3508 thiss!1248)) (bvadd (mask!8322 thiss!1248) #b00000000000000000000000000000001)) (= (size!3618 (_keys!5352 thiss!1248)) (size!3619 (_values!3508 thiss!1248))) (bvsge (_size!1132 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1132 thiss!1248) (bvadd (mask!8322 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!169944 () Bool)

(declare-fun res!80806 () Bool)

(assert (=> b!169944 (=> (not res!80806) (not e!112103))))

(declare-fun size!3622 (LongMapFixedSize!2166) (_ BitVec 32))

(assert (=> b!169944 (= res!80806 (bvsge (size!3622 thiss!1248) (_size!1132 thiss!1248)))))

(declare-fun d!51595 () Bool)

(declare-fun res!80805 () Bool)

(assert (=> d!51595 (=> (not res!80805) (not e!112103))))

(assert (=> d!51595 (= res!80805 (validMask!0 (mask!8322 thiss!1248)))))

(assert (=> d!51595 (= (simpleValid!128 thiss!1248) e!112103)))

(declare-fun b!169945 () Bool)

(declare-fun res!80808 () Bool)

(assert (=> b!169945 (=> (not res!80808) (not e!112103))))

(assert (=> b!169945 (= res!80808 (= (size!3622 thiss!1248) (bvadd (_size!1132 thiss!1248) (bvsdiv (bvadd (extraKeys!3266 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!51595 res!80805) b!169943))

(assert (= (and b!169943 res!80807) b!169944))

(assert (= (and b!169944 res!80806) b!169945))

(assert (= (and b!169945 res!80808) b!169946))

(declare-fun m!198721 () Bool)

(assert (=> b!169944 m!198721))

(assert (=> d!51595 m!198687))

(assert (=> b!169945 m!198721))

(assert (=> d!51589 d!51595))

(declare-fun b!169957 () Bool)

(declare-fun e!112114 () Bool)

(declare-fun contains!1138 (List!2205 (_ BitVec 64)) Bool)

(assert (=> b!169957 (= e!112114 (contains!1138 Nil!2202 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169958 () Bool)

(declare-fun e!112115 () Bool)

(declare-fun call!17357 () Bool)

(assert (=> b!169958 (= e!112115 call!17357)))

(declare-fun b!169960 () Bool)

(declare-fun e!112113 () Bool)

(declare-fun e!112112 () Bool)

(assert (=> b!169960 (= e!112113 e!112112)))

(declare-fun res!80817 () Bool)

(assert (=> b!169960 (=> (not res!80817) (not e!112112))))

(assert (=> b!169960 (= res!80817 (not e!112114))))

(declare-fun res!80815 () Bool)

(assert (=> b!169960 (=> (not res!80815) (not e!112114))))

(assert (=> b!169960 (= res!80815 (validKeyInArray!0 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169961 () Bool)

(assert (=> b!169961 (= e!112112 e!112115)))

(declare-fun c!30441 () Bool)

(assert (=> b!169961 (= c!30441 (validKeyInArray!0 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17354 () Bool)

(assert (=> bm!17354 (= call!17357 (arrayNoDuplicates!0 (_keys!5352 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30441 (Cons!2201 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000) Nil!2202) Nil!2202)))))

(declare-fun d!51597 () Bool)

(declare-fun res!80816 () Bool)

(assert (=> d!51597 (=> res!80816 e!112113)))

(assert (=> d!51597 (= res!80816 (bvsge #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))))))

(assert (=> d!51597 (= (arrayNoDuplicates!0 (_keys!5352 thiss!1248) #b00000000000000000000000000000000 Nil!2202) e!112113)))

(declare-fun b!169959 () Bool)

(assert (=> b!169959 (= e!112115 call!17357)))

(assert (= (and d!51597 (not res!80816)) b!169960))

(assert (= (and b!169960 res!80815) b!169957))

(assert (= (and b!169960 res!80817) b!169961))

(assert (= (and b!169961 c!30441) b!169959))

(assert (= (and b!169961 (not c!30441)) b!169958))

(assert (= (or b!169959 b!169958) bm!17354))

(assert (=> b!169957 m!198715))

(assert (=> b!169957 m!198715))

(declare-fun m!198723 () Bool)

(assert (=> b!169957 m!198723))

(assert (=> b!169960 m!198715))

(assert (=> b!169960 m!198715))

(assert (=> b!169960 m!198717))

(assert (=> b!169961 m!198715))

(assert (=> b!169961 m!198715))

(assert (=> b!169961 m!198717))

(assert (=> bm!17354 m!198715))

(declare-fun m!198725 () Bool)

(assert (=> bm!17354 m!198725))

(assert (=> b!169914 d!51597))

(declare-fun bm!17357 () Bool)

(declare-fun call!17360 () Bool)

(assert (=> bm!17357 (= call!17360 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5352 thiss!1248) (mask!8322 thiss!1248)))))

(declare-fun b!169970 () Bool)

(declare-fun e!112124 () Bool)

(assert (=> b!169970 (= e!112124 call!17360)))

(declare-fun d!51599 () Bool)

(declare-fun res!80822 () Bool)

(declare-fun e!112122 () Bool)

(assert (=> d!51599 (=> res!80822 e!112122)))

(assert (=> d!51599 (= res!80822 (bvsge #b00000000000000000000000000000000 (size!3618 (_keys!5352 thiss!1248))))))

(assert (=> d!51599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5352 thiss!1248) (mask!8322 thiss!1248)) e!112122)))

(declare-fun b!169971 () Bool)

(declare-fun e!112123 () Bool)

(assert (=> b!169971 (= e!112123 call!17360)))

(declare-fun b!169972 () Bool)

(assert (=> b!169972 (= e!112122 e!112124)))

(declare-fun c!30444 () Bool)

(assert (=> b!169972 (= c!30444 (validKeyInArray!0 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!169973 () Bool)

(assert (=> b!169973 (= e!112124 e!112123)))

(declare-fun lt!85005 () (_ BitVec 64))

(assert (=> b!169973 (= lt!85005 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5237 0))(
  ( (Unit!5238) )
))
(declare-fun lt!85006 () Unit!5237)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6990 (_ BitVec 64) (_ BitVec 32)) Unit!5237)

(assert (=> b!169973 (= lt!85006 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5352 thiss!1248) lt!85005 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!169973 (arrayContainsKey!0 (_keys!5352 thiss!1248) lt!85005 #b00000000000000000000000000000000)))

(declare-fun lt!85007 () Unit!5237)

(assert (=> b!169973 (= lt!85007 lt!85006)))

(declare-fun res!80823 () Bool)

(declare-datatypes ((SeekEntryResult!539 0))(
  ( (MissingZero!539 (index!4324 (_ BitVec 32))) (Found!539 (index!4325 (_ BitVec 32))) (Intermediate!539 (undefined!1351 Bool) (index!4326 (_ BitVec 32)) (x!18809 (_ BitVec 32))) (Undefined!539) (MissingVacant!539 (index!4327 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6990 (_ BitVec 32)) SeekEntryResult!539)

(assert (=> b!169973 (= res!80823 (= (seekEntryOrOpen!0 (select (arr!3328 (_keys!5352 thiss!1248)) #b00000000000000000000000000000000) (_keys!5352 thiss!1248) (mask!8322 thiss!1248)) (Found!539 #b00000000000000000000000000000000)))))

(assert (=> b!169973 (=> (not res!80823) (not e!112123))))

(assert (= (and d!51599 (not res!80822)) b!169972))

(assert (= (and b!169972 c!30444) b!169973))

(assert (= (and b!169972 (not c!30444)) b!169970))

(assert (= (and b!169973 res!80823) b!169971))

(assert (= (or b!169971 b!169970) bm!17357))

(declare-fun m!198727 () Bool)

(assert (=> bm!17357 m!198727))

(assert (=> b!169972 m!198715))

(assert (=> b!169972 m!198715))

(assert (=> b!169972 m!198717))

(assert (=> b!169973 m!198715))

(declare-fun m!198729 () Bool)

(assert (=> b!169973 m!198729))

(declare-fun m!198731 () Bool)

(assert (=> b!169973 m!198731))

(assert (=> b!169973 m!198715))

(declare-fun m!198733 () Bool)

(assert (=> b!169973 m!198733))

(assert (=> b!169913 d!51599))

(declare-fun b!169974 () Bool)

(declare-fun e!112125 () Bool)

(assert (=> b!169974 (= e!112125 tp_is_empty!3945)))

(declare-fun mapIsEmpty!6696 () Bool)

(declare-fun mapRes!6696 () Bool)

(assert (=> mapIsEmpty!6696 mapRes!6696))

(declare-fun condMapEmpty!6696 () Bool)

(declare-fun mapDefault!6696 () ValueCell!1629)

(assert (=> mapNonEmpty!6695 (= condMapEmpty!6696 (= mapRest!6695 ((as const (Array (_ BitVec 32) ValueCell!1629)) mapDefault!6696)))))

(declare-fun e!112126 () Bool)

(assert (=> mapNonEmpty!6695 (= tp!15137 (and e!112126 mapRes!6696))))

(declare-fun mapNonEmpty!6696 () Bool)

(declare-fun tp!15138 () Bool)

(assert (=> mapNonEmpty!6696 (= mapRes!6696 (and tp!15138 e!112125))))

(declare-fun mapRest!6696 () (Array (_ BitVec 32) ValueCell!1629))

(declare-fun mapKey!6696 () (_ BitVec 32))

(declare-fun mapValue!6696 () ValueCell!1629)

(assert (=> mapNonEmpty!6696 (= mapRest!6695 (store mapRest!6696 mapKey!6696 mapValue!6696))))

(declare-fun b!169975 () Bool)

(assert (=> b!169975 (= e!112126 tp_is_empty!3945)))

(assert (= (and mapNonEmpty!6695 condMapEmpty!6696) mapIsEmpty!6696))

(assert (= (and mapNonEmpty!6695 (not condMapEmpty!6696)) mapNonEmpty!6696))

(assert (= (and mapNonEmpty!6696 ((_ is ValueCellFull!1629) mapValue!6696)) b!169974))

(assert (= (and mapNonEmpty!6695 ((_ is ValueCellFull!1629) mapDefault!6696)) b!169975))

(declare-fun m!198735 () Bool)

(assert (=> mapNonEmpty!6696 m!198735))

(check-sat (not b_next!4173) (not bm!17357) tp_is_empty!3945 (not b!169945) (not b!169957) (not b!169972) (not d!51595) (not bm!17354) (not b!169973) (not bm!17351) (not mapNonEmpty!6696) (not b!169961) b_and!10605 (not b!169960) (not b!169933) (not b!169944))
(check-sat b_and!10605 (not b_next!4173))
