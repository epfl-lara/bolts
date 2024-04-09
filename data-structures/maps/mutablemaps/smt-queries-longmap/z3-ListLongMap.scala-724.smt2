; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16918 () Bool)

(assert start!16918)

(declare-fun b!170091 () Bool)

(declare-fun b_free!4185 () Bool)

(declare-fun b_next!4185 () Bool)

(assert (=> b!170091 (= b_free!4185 (not b_next!4185))))

(declare-fun tp!15170 () Bool)

(declare-fun b_and!10617 () Bool)

(assert (=> b!170091 (= tp!15170 b_and!10617)))

(declare-fun mapIsEmpty!6714 () Bool)

(declare-fun mapRes!6714 () Bool)

(assert (=> mapIsEmpty!6714 mapRes!6714))

(declare-fun res!80875 () Bool)

(declare-fun e!112223 () Bool)

(assert (=> start!16918 (=> (not res!80875) (not e!112223))))

(declare-datatypes ((V!4923 0))(
  ( (V!4924 (val!2023 Int)) )
))
(declare-datatypes ((ValueCell!1635 0))(
  ( (ValueCellFull!1635 (v!3884 V!4923)) (EmptyCell!1635) )
))
(declare-datatypes ((array!7018 0))(
  ( (array!7019 (arr!3340 (Array (_ BitVec 32) (_ BitVec 64))) (size!3631 (_ BitVec 32))) )
))
(declare-datatypes ((array!7020 0))(
  ( (array!7021 (arr!3341 (Array (_ BitVec 32) ValueCell!1635)) (size!3632 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2178 0))(
  ( (LongMapFixedSize!2179 (defaultEntry!3531 Int) (mask!8335 (_ BitVec 32)) (extraKeys!3272 (_ BitVec 32)) (zeroValue!3374 V!4923) (minValue!3374 V!4923) (_size!1138 (_ BitVec 32)) (_keys!5359 array!7018) (_values!3514 array!7020) (_vacant!1138 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2178)

(declare-fun valid!927 (LongMapFixedSize!2178) Bool)

(assert (=> start!16918 (= res!80875 (valid!927 thiss!1248))))

(assert (=> start!16918 e!112223))

(declare-fun e!112222 () Bool)

(assert (=> start!16918 e!112222))

(assert (=> start!16918 true))

(declare-fun e!112225 () Bool)

(declare-fun tp_is_empty!3957 () Bool)

(declare-fun array_inv!2129 (array!7018) Bool)

(declare-fun array_inv!2130 (array!7020) Bool)

(assert (=> b!170091 (= e!112222 (and tp!15170 tp_is_empty!3957 (array_inv!2129 (_keys!5359 thiss!1248)) (array_inv!2130 (_values!3514 thiss!1248)) e!112225))))

(declare-fun b!170092 () Bool)

(declare-fun res!80877 () Bool)

(assert (=> b!170092 (=> (not res!80877) (not e!112223))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170092 (= res!80877 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170093 () Bool)

(declare-fun res!80876 () Bool)

(assert (=> b!170093 (=> (not res!80876) (not e!112223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170093 (= res!80876 (validMask!0 (mask!8335 thiss!1248)))))

(declare-fun b!170094 () Bool)

(declare-fun e!112220 () Bool)

(assert (=> b!170094 (= e!112225 (and e!112220 mapRes!6714))))

(declare-fun condMapEmpty!6714 () Bool)

(declare-fun mapDefault!6714 () ValueCell!1635)

(assert (=> b!170094 (= condMapEmpty!6714 (= (arr!3341 (_values!3514 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1635)) mapDefault!6714)))))

(declare-fun b!170095 () Bool)

(assert (=> b!170095 (= e!112223 (and (= (size!3632 (_values!3514 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8335 thiss!1248))) (= (size!3631 (_keys!5359 thiss!1248)) (size!3632 (_values!3514 thiss!1248))) (bvsge (mask!8335 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3272 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!170096 () Bool)

(declare-fun e!112224 () Bool)

(assert (=> b!170096 (= e!112224 tp_is_empty!3957)))

(declare-fun b!170097 () Bool)

(assert (=> b!170097 (= e!112220 tp_is_empty!3957)))

(declare-fun mapNonEmpty!6714 () Bool)

(declare-fun tp!15171 () Bool)

(assert (=> mapNonEmpty!6714 (= mapRes!6714 (and tp!15171 e!112224))))

(declare-fun mapValue!6714 () ValueCell!1635)

(declare-fun mapKey!6714 () (_ BitVec 32))

(declare-fun mapRest!6714 () (Array (_ BitVec 32) ValueCell!1635))

(assert (=> mapNonEmpty!6714 (= (arr!3341 (_values!3514 thiss!1248)) (store mapRest!6714 mapKey!6714 mapValue!6714))))

(assert (= (and start!16918 res!80875) b!170092))

(assert (= (and b!170092 res!80877) b!170093))

(assert (= (and b!170093 res!80876) b!170095))

(assert (= (and b!170094 condMapEmpty!6714) mapIsEmpty!6714))

(assert (= (and b!170094 (not condMapEmpty!6714)) mapNonEmpty!6714))

(get-info :version)

(assert (= (and mapNonEmpty!6714 ((_ is ValueCellFull!1635) mapValue!6714)) b!170096))

(assert (= (and b!170094 ((_ is ValueCellFull!1635) mapDefault!6714)) b!170097))

(assert (= b!170091 b!170094))

(assert (= start!16918 b!170091))

(declare-fun m!198787 () Bool)

(assert (=> start!16918 m!198787))

(declare-fun m!198789 () Bool)

(assert (=> b!170091 m!198789))

(declare-fun m!198791 () Bool)

(assert (=> b!170091 m!198791))

(declare-fun m!198793 () Bool)

(assert (=> b!170093 m!198793))

(declare-fun m!198795 () Bool)

(assert (=> mapNonEmpty!6714 m!198795))

(check-sat (not mapNonEmpty!6714) (not start!16918) b_and!10617 (not b_next!4185) (not b!170091) tp_is_empty!3957 (not b!170093))
(check-sat b_and!10617 (not b_next!4185))
(get-model)

(declare-fun d!51613 () Bool)

(declare-fun res!80893 () Bool)

(declare-fun e!112246 () Bool)

(assert (=> d!51613 (=> (not res!80893) (not e!112246))))

(declare-fun simpleValid!130 (LongMapFixedSize!2178) Bool)

(assert (=> d!51613 (= res!80893 (simpleValid!130 thiss!1248))))

(assert (=> d!51613 (= (valid!927 thiss!1248) e!112246)))

(declare-fun b!170125 () Bool)

(declare-fun res!80894 () Bool)

(assert (=> b!170125 (=> (not res!80894) (not e!112246))))

(declare-fun arrayCountValidKeys!0 (array!7018 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170125 (= res!80894 (= (arrayCountValidKeys!0 (_keys!5359 thiss!1248) #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))) (_size!1138 thiss!1248)))))

(declare-fun b!170126 () Bool)

(declare-fun res!80895 () Bool)

(assert (=> b!170126 (=> (not res!80895) (not e!112246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7018 (_ BitVec 32)) Bool)

(assert (=> b!170126 (= res!80895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5359 thiss!1248) (mask!8335 thiss!1248)))))

(declare-fun b!170127 () Bool)

(declare-datatypes ((List!2207 0))(
  ( (Nil!2204) (Cons!2203 (h!2820 (_ BitVec 64)) (t!7017 List!2207)) )
))
(declare-fun arrayNoDuplicates!0 (array!7018 (_ BitVec 32) List!2207) Bool)

(assert (=> b!170127 (= e!112246 (arrayNoDuplicates!0 (_keys!5359 thiss!1248) #b00000000000000000000000000000000 Nil!2204))))

(assert (= (and d!51613 res!80893) b!170125))

(assert (= (and b!170125 res!80894) b!170126))

(assert (= (and b!170126 res!80895) b!170127))

(declare-fun m!198807 () Bool)

(assert (=> d!51613 m!198807))

(declare-fun m!198809 () Bool)

(assert (=> b!170125 m!198809))

(declare-fun m!198811 () Bool)

(assert (=> b!170126 m!198811))

(declare-fun m!198813 () Bool)

(assert (=> b!170127 m!198813))

(assert (=> start!16918 d!51613))

(declare-fun d!51615 () Bool)

(assert (=> d!51615 (= (validMask!0 (mask!8335 thiss!1248)) (and (or (= (mask!8335 thiss!1248) #b00000000000000000000000000000111) (= (mask!8335 thiss!1248) #b00000000000000000000000000001111) (= (mask!8335 thiss!1248) #b00000000000000000000000000011111) (= (mask!8335 thiss!1248) #b00000000000000000000000000111111) (= (mask!8335 thiss!1248) #b00000000000000000000000001111111) (= (mask!8335 thiss!1248) #b00000000000000000000000011111111) (= (mask!8335 thiss!1248) #b00000000000000000000000111111111) (= (mask!8335 thiss!1248) #b00000000000000000000001111111111) (= (mask!8335 thiss!1248) #b00000000000000000000011111111111) (= (mask!8335 thiss!1248) #b00000000000000000000111111111111) (= (mask!8335 thiss!1248) #b00000000000000000001111111111111) (= (mask!8335 thiss!1248) #b00000000000000000011111111111111) (= (mask!8335 thiss!1248) #b00000000000000000111111111111111) (= (mask!8335 thiss!1248) #b00000000000000001111111111111111) (= (mask!8335 thiss!1248) #b00000000000000011111111111111111) (= (mask!8335 thiss!1248) #b00000000000000111111111111111111) (= (mask!8335 thiss!1248) #b00000000000001111111111111111111) (= (mask!8335 thiss!1248) #b00000000000011111111111111111111) (= (mask!8335 thiss!1248) #b00000000000111111111111111111111) (= (mask!8335 thiss!1248) #b00000000001111111111111111111111) (= (mask!8335 thiss!1248) #b00000000011111111111111111111111) (= (mask!8335 thiss!1248) #b00000000111111111111111111111111) (= (mask!8335 thiss!1248) #b00000001111111111111111111111111) (= (mask!8335 thiss!1248) #b00000011111111111111111111111111) (= (mask!8335 thiss!1248) #b00000111111111111111111111111111) (= (mask!8335 thiss!1248) #b00001111111111111111111111111111) (= (mask!8335 thiss!1248) #b00011111111111111111111111111111) (= (mask!8335 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8335 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!170093 d!51615))

(declare-fun d!51617 () Bool)

(assert (=> d!51617 (= (array_inv!2129 (_keys!5359 thiss!1248)) (bvsge (size!3631 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170091 d!51617))

(declare-fun d!51619 () Bool)

(assert (=> d!51619 (= (array_inv!2130 (_values!3514 thiss!1248)) (bvsge (size!3632 (_values!3514 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170091 d!51619))

(declare-fun b!170134 () Bool)

(declare-fun e!112252 () Bool)

(assert (=> b!170134 (= e!112252 tp_is_empty!3957)))

(declare-fun mapIsEmpty!6720 () Bool)

(declare-fun mapRes!6720 () Bool)

(assert (=> mapIsEmpty!6720 mapRes!6720))

(declare-fun mapNonEmpty!6720 () Bool)

(declare-fun tp!15180 () Bool)

(assert (=> mapNonEmpty!6720 (= mapRes!6720 (and tp!15180 e!112252))))

(declare-fun mapValue!6720 () ValueCell!1635)

(declare-fun mapRest!6720 () (Array (_ BitVec 32) ValueCell!1635))

(declare-fun mapKey!6720 () (_ BitVec 32))

(assert (=> mapNonEmpty!6720 (= mapRest!6714 (store mapRest!6720 mapKey!6720 mapValue!6720))))

(declare-fun condMapEmpty!6720 () Bool)

(declare-fun mapDefault!6720 () ValueCell!1635)

(assert (=> mapNonEmpty!6714 (= condMapEmpty!6720 (= mapRest!6714 ((as const (Array (_ BitVec 32) ValueCell!1635)) mapDefault!6720)))))

(declare-fun e!112251 () Bool)

(assert (=> mapNonEmpty!6714 (= tp!15171 (and e!112251 mapRes!6720))))

(declare-fun b!170135 () Bool)

(assert (=> b!170135 (= e!112251 tp_is_empty!3957)))

(assert (= (and mapNonEmpty!6714 condMapEmpty!6720) mapIsEmpty!6720))

(assert (= (and mapNonEmpty!6714 (not condMapEmpty!6720)) mapNonEmpty!6720))

(assert (= (and mapNonEmpty!6720 ((_ is ValueCellFull!1635) mapValue!6720)) b!170134))

(assert (= (and mapNonEmpty!6714 ((_ is ValueCellFull!1635) mapDefault!6720)) b!170135))

(declare-fun m!198815 () Bool)

(assert (=> mapNonEmpty!6720 m!198815))

(check-sat (not b!170127) (not mapNonEmpty!6720) (not d!51613) (not b_next!4185) (not b!170125) b_and!10617 tp_is_empty!3957 (not b!170126))
(check-sat b_and!10617 (not b_next!4185))
(get-model)

(declare-fun b!170146 () Bool)

(declare-fun res!80905 () Bool)

(declare-fun e!112255 () Bool)

(assert (=> b!170146 (=> (not res!80905) (not e!112255))))

(declare-fun size!3635 (LongMapFixedSize!2178) (_ BitVec 32))

(assert (=> b!170146 (= res!80905 (= (size!3635 thiss!1248) (bvadd (_size!1138 thiss!1248) (bvsdiv (bvadd (extraKeys!3272 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!170144 () Bool)

(declare-fun res!80904 () Bool)

(assert (=> b!170144 (=> (not res!80904) (not e!112255))))

(assert (=> b!170144 (= res!80904 (and (= (size!3632 (_values!3514 thiss!1248)) (bvadd (mask!8335 thiss!1248) #b00000000000000000000000000000001)) (= (size!3631 (_keys!5359 thiss!1248)) (size!3632 (_values!3514 thiss!1248))) (bvsge (_size!1138 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1138 thiss!1248) (bvadd (mask!8335 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!170147 () Bool)

(assert (=> b!170147 (= e!112255 (and (bvsge (extraKeys!3272 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3272 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1138 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!170145 () Bool)

(declare-fun res!80907 () Bool)

(assert (=> b!170145 (=> (not res!80907) (not e!112255))))

(assert (=> b!170145 (= res!80907 (bvsge (size!3635 thiss!1248) (_size!1138 thiss!1248)))))

(declare-fun d!51621 () Bool)

(declare-fun res!80906 () Bool)

(assert (=> d!51621 (=> (not res!80906) (not e!112255))))

(assert (=> d!51621 (= res!80906 (validMask!0 (mask!8335 thiss!1248)))))

(assert (=> d!51621 (= (simpleValid!130 thiss!1248) e!112255)))

(assert (= (and d!51621 res!80906) b!170144))

(assert (= (and b!170144 res!80904) b!170145))

(assert (= (and b!170145 res!80907) b!170146))

(assert (= (and b!170146 res!80905) b!170147))

(declare-fun m!198817 () Bool)

(assert (=> b!170146 m!198817))

(assert (=> b!170145 m!198817))

(assert (=> d!51621 m!198793))

(assert (=> d!51613 d!51621))

(declare-fun d!51623 () Bool)

(declare-fun res!80912 () Bool)

(declare-fun e!112263 () Bool)

(assert (=> d!51623 (=> res!80912 e!112263)))

(assert (=> d!51623 (= res!80912 (bvsge #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))))))

(assert (=> d!51623 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5359 thiss!1248) (mask!8335 thiss!1248)) e!112263)))

(declare-fun bm!17360 () Bool)

(declare-fun call!17363 () Bool)

(assert (=> bm!17360 (= call!17363 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5359 thiss!1248) (mask!8335 thiss!1248)))))

(declare-fun b!170156 () Bool)

(declare-fun e!112262 () Bool)

(assert (=> b!170156 (= e!112262 call!17363)))

(declare-fun b!170157 () Bool)

(declare-fun e!112264 () Bool)

(assert (=> b!170157 (= e!112264 e!112262)))

(declare-fun lt!85015 () (_ BitVec 64))

(assert (=> b!170157 (= lt!85015 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5239 0))(
  ( (Unit!5240) )
))
(declare-fun lt!85014 () Unit!5239)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7018 (_ BitVec 64) (_ BitVec 32)) Unit!5239)

(assert (=> b!170157 (= lt!85014 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5359 thiss!1248) lt!85015 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!170157 (arrayContainsKey!0 (_keys!5359 thiss!1248) lt!85015 #b00000000000000000000000000000000)))

(declare-fun lt!85016 () Unit!5239)

(assert (=> b!170157 (= lt!85016 lt!85014)))

(declare-fun res!80913 () Bool)

(declare-datatypes ((SeekEntryResult!540 0))(
  ( (MissingZero!540 (index!4328 (_ BitVec 32))) (Found!540 (index!4329 (_ BitVec 32))) (Intermediate!540 (undefined!1352 Bool) (index!4330 (_ BitVec 32)) (x!18848 (_ BitVec 32))) (Undefined!540) (MissingVacant!540 (index!4331 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7018 (_ BitVec 32)) SeekEntryResult!540)

(assert (=> b!170157 (= res!80913 (= (seekEntryOrOpen!0 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000) (_keys!5359 thiss!1248) (mask!8335 thiss!1248)) (Found!540 #b00000000000000000000000000000000)))))

(assert (=> b!170157 (=> (not res!80913) (not e!112262))))

(declare-fun b!170158 () Bool)

(assert (=> b!170158 (= e!112264 call!17363)))

(declare-fun b!170159 () Bool)

(assert (=> b!170159 (= e!112263 e!112264)))

(declare-fun c!30447 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!170159 (= c!30447 (validKeyInArray!0 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51623 (not res!80912)) b!170159))

(assert (= (and b!170159 c!30447) b!170157))

(assert (= (and b!170159 (not c!30447)) b!170158))

(assert (= (and b!170157 res!80913) b!170156))

(assert (= (or b!170156 b!170158) bm!17360))

(declare-fun m!198819 () Bool)

(assert (=> bm!17360 m!198819))

(declare-fun m!198821 () Bool)

(assert (=> b!170157 m!198821))

(declare-fun m!198823 () Bool)

(assert (=> b!170157 m!198823))

(declare-fun m!198825 () Bool)

(assert (=> b!170157 m!198825))

(assert (=> b!170157 m!198821))

(declare-fun m!198827 () Bool)

(assert (=> b!170157 m!198827))

(assert (=> b!170159 m!198821))

(assert (=> b!170159 m!198821))

(declare-fun m!198829 () Bool)

(assert (=> b!170159 m!198829))

(assert (=> b!170126 d!51623))

(declare-fun b!170170 () Bool)

(declare-fun e!112274 () Bool)

(declare-fun contains!1139 (List!2207 (_ BitVec 64)) Bool)

(assert (=> b!170170 (= e!112274 (contains!1139 Nil!2204 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51625 () Bool)

(declare-fun res!80922 () Bool)

(declare-fun e!112275 () Bool)

(assert (=> d!51625 (=> res!80922 e!112275)))

(assert (=> d!51625 (= res!80922 (bvsge #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))))))

(assert (=> d!51625 (= (arrayNoDuplicates!0 (_keys!5359 thiss!1248) #b00000000000000000000000000000000 Nil!2204) e!112275)))

(declare-fun b!170171 () Bool)

(declare-fun e!112276 () Bool)

(declare-fun e!112273 () Bool)

(assert (=> b!170171 (= e!112276 e!112273)))

(declare-fun c!30450 () Bool)

(assert (=> b!170171 (= c!30450 (validKeyInArray!0 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17363 () Bool)

(declare-fun call!17366 () Bool)

(assert (=> bm!17363 (= call!17366 (arrayNoDuplicates!0 (_keys!5359 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30450 (Cons!2203 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000) Nil!2204) Nil!2204)))))

(declare-fun b!170172 () Bool)

(assert (=> b!170172 (= e!112273 call!17366)))

(declare-fun b!170173 () Bool)

(assert (=> b!170173 (= e!112273 call!17366)))

(declare-fun b!170174 () Bool)

(assert (=> b!170174 (= e!112275 e!112276)))

(declare-fun res!80921 () Bool)

(assert (=> b!170174 (=> (not res!80921) (not e!112276))))

(assert (=> b!170174 (= res!80921 (not e!112274))))

(declare-fun res!80920 () Bool)

(assert (=> b!170174 (=> (not res!80920) (not e!112274))))

(assert (=> b!170174 (= res!80920 (validKeyInArray!0 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51625 (not res!80922)) b!170174))

(assert (= (and b!170174 res!80920) b!170170))

(assert (= (and b!170174 res!80921) b!170171))

(assert (= (and b!170171 c!30450) b!170172))

(assert (= (and b!170171 (not c!30450)) b!170173))

(assert (= (or b!170172 b!170173) bm!17363))

(assert (=> b!170170 m!198821))

(assert (=> b!170170 m!198821))

(declare-fun m!198831 () Bool)

(assert (=> b!170170 m!198831))

(assert (=> b!170171 m!198821))

(assert (=> b!170171 m!198821))

(assert (=> b!170171 m!198829))

(assert (=> bm!17363 m!198821))

(declare-fun m!198833 () Bool)

(assert (=> bm!17363 m!198833))

(assert (=> b!170174 m!198821))

(assert (=> b!170174 m!198821))

(assert (=> b!170174 m!198829))

(assert (=> b!170127 d!51625))

(declare-fun b!170183 () Bool)

(declare-fun e!112282 () (_ BitVec 32))

(declare-fun e!112281 () (_ BitVec 32))

(assert (=> b!170183 (= e!112282 e!112281)))

(declare-fun c!30455 () Bool)

(assert (=> b!170183 (= c!30455 (validKeyInArray!0 (select (arr!3340 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170184 () Bool)

(declare-fun call!17369 () (_ BitVec 32))

(assert (=> b!170184 (= e!112281 call!17369)))

(declare-fun bm!17366 () Bool)

(assert (=> bm!17366 (= call!17369 (arrayCountValidKeys!0 (_keys!5359 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3631 (_keys!5359 thiss!1248))))))

(declare-fun b!170185 () Bool)

(assert (=> b!170185 (= e!112282 #b00000000000000000000000000000000)))

(declare-fun d!51627 () Bool)

(declare-fun lt!85019 () (_ BitVec 32))

(assert (=> d!51627 (and (bvsge lt!85019 #b00000000000000000000000000000000) (bvsle lt!85019 (bvsub (size!3631 (_keys!5359 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51627 (= lt!85019 e!112282)))

(declare-fun c!30456 () Bool)

(assert (=> d!51627 (= c!30456 (bvsge #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))))))

(assert (=> d!51627 (and (bvsle #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3631 (_keys!5359 thiss!1248)) (size!3631 (_keys!5359 thiss!1248))))))

(assert (=> d!51627 (= (arrayCountValidKeys!0 (_keys!5359 thiss!1248) #b00000000000000000000000000000000 (size!3631 (_keys!5359 thiss!1248))) lt!85019)))

(declare-fun b!170186 () Bool)

(assert (=> b!170186 (= e!112281 (bvadd #b00000000000000000000000000000001 call!17369))))

(assert (= (and d!51627 c!30456) b!170185))

(assert (= (and d!51627 (not c!30456)) b!170183))

(assert (= (and b!170183 c!30455) b!170186))

(assert (= (and b!170183 (not c!30455)) b!170184))

(assert (= (or b!170186 b!170184) bm!17366))

(assert (=> b!170183 m!198821))

(assert (=> b!170183 m!198821))

(assert (=> b!170183 m!198829))

(declare-fun m!198835 () Bool)

(assert (=> bm!17366 m!198835))

(assert (=> b!170125 d!51627))

(declare-fun b!170187 () Bool)

(declare-fun e!112284 () Bool)

(assert (=> b!170187 (= e!112284 tp_is_empty!3957)))

(declare-fun mapIsEmpty!6721 () Bool)

(declare-fun mapRes!6721 () Bool)

(assert (=> mapIsEmpty!6721 mapRes!6721))

(declare-fun mapNonEmpty!6721 () Bool)

(declare-fun tp!15181 () Bool)

(assert (=> mapNonEmpty!6721 (= mapRes!6721 (and tp!15181 e!112284))))

(declare-fun mapValue!6721 () ValueCell!1635)

(declare-fun mapKey!6721 () (_ BitVec 32))

(declare-fun mapRest!6721 () (Array (_ BitVec 32) ValueCell!1635))

(assert (=> mapNonEmpty!6721 (= mapRest!6720 (store mapRest!6721 mapKey!6721 mapValue!6721))))

(declare-fun condMapEmpty!6721 () Bool)

(declare-fun mapDefault!6721 () ValueCell!1635)

(assert (=> mapNonEmpty!6720 (= condMapEmpty!6721 (= mapRest!6720 ((as const (Array (_ BitVec 32) ValueCell!1635)) mapDefault!6721)))))

(declare-fun e!112283 () Bool)

(assert (=> mapNonEmpty!6720 (= tp!15180 (and e!112283 mapRes!6721))))

(declare-fun b!170188 () Bool)

(assert (=> b!170188 (= e!112283 tp_is_empty!3957)))

(assert (= (and mapNonEmpty!6720 condMapEmpty!6721) mapIsEmpty!6721))

(assert (= (and mapNonEmpty!6720 (not condMapEmpty!6721)) mapNonEmpty!6721))

(assert (= (and mapNonEmpty!6721 ((_ is ValueCellFull!1635) mapValue!6721)) b!170187))

(assert (= (and mapNonEmpty!6720 ((_ is ValueCellFull!1635) mapDefault!6721)) b!170188))

(declare-fun m!198837 () Bool)

(assert (=> mapNonEmpty!6721 m!198837))

(check-sat (not b!170157) (not b!170146) (not bm!17360) (not d!51621) b_and!10617 (not b!170170) (not b!170159) (not b!170145) (not b!170174) (not b!170171) (not mapNonEmpty!6721) (not b!170183) (not bm!17366) (not b_next!4185) tp_is_empty!3957 (not bm!17363))
(check-sat b_and!10617 (not b_next!4185))
