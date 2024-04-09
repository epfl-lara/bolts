; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107708 () Bool)

(assert start!107708)

(declare-fun b!1274001 () Bool)

(declare-fun b_free!27765 () Bool)

(declare-fun b_next!27765 () Bool)

(assert (=> b!1274001 (= b_free!27765 (not b_next!27765))))

(declare-fun tp!97862 () Bool)

(declare-fun b_and!45831 () Bool)

(assert (=> b!1274001 (= tp!97862 b_and!45831)))

(declare-fun b!1273995 () Bool)

(declare-fun e!727029 () Bool)

(declare-fun e!727028 () Bool)

(declare-fun mapRes!51344 () Bool)

(assert (=> b!1273995 (= e!727029 (and e!727028 mapRes!51344))))

(declare-fun condMapEmpty!51344 () Bool)

(declare-datatypes ((V!49373 0))(
  ( (V!49374 (val!16642 Int)) )
))
(declare-datatypes ((ValueCell!15714 0))(
  ( (ValueCellFull!15714 (v!19277 V!49373)) (EmptyCell!15714) )
))
(declare-datatypes ((array!83497 0))(
  ( (array!83498 (arr!40263 (Array (_ BitVec 32) ValueCell!15714)) (size!40812 (_ BitVec 32))) )
))
(declare-datatypes ((array!83499 0))(
  ( (array!83500 (arr!40264 (Array (_ BitVec 32) (_ BitVec 64))) (size!40813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6192 0))(
  ( (LongMapFixedSize!6193 (defaultEntry!6742 Int) (mask!34540 (_ BitVec 32)) (extraKeys!6421 (_ BitVec 32)) (zeroValue!6527 V!49373) (minValue!6527 V!49373) (_size!3151 (_ BitVec 32)) (_keys!12156 array!83499) (_values!6765 array!83497) (_vacant!3151 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6192)

(declare-fun mapDefault!51344 () ValueCell!15714)

(assert (=> b!1273995 (= condMapEmpty!51344 (= (arr!40263 (_values!6765 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15714)) mapDefault!51344)))))

(declare-fun b!1273996 () Bool)

(declare-fun tp_is_empty!33135 () Bool)

(assert (=> b!1273996 (= e!727028 tp_is_empty!33135)))

(declare-fun b!1273997 () Bool)

(declare-fun res!847120 () Bool)

(declare-fun e!727030 () Bool)

(assert (=> b!1273997 (=> (not res!847120) (not e!727030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83499 (_ BitVec 32)) Bool)

(assert (=> b!1273997 (= res!847120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12156 thiss!1551) (mask!34540 thiss!1551)))))

(declare-fun b!1273998 () Bool)

(declare-fun res!847119 () Bool)

(assert (=> b!1273998 (=> (not res!847119) (not e!727030))))

(assert (=> b!1273998 (= res!847119 (and (bvsle #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))) (bvslt (size!40813 (_keys!12156 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun b!1273999 () Bool)

(declare-fun e!727033 () Bool)

(assert (=> b!1273999 (= e!727033 tp_is_empty!33135)))

(declare-fun res!847121 () Bool)

(assert (=> start!107708 (=> (not res!847121) (not e!727030))))

(declare-fun simpleValid!477 (LongMapFixedSize!6192) Bool)

(assert (=> start!107708 (= res!847121 (simpleValid!477 thiss!1551))))

(assert (=> start!107708 e!727030))

(declare-fun e!727032 () Bool)

(assert (=> start!107708 e!727032))

(declare-fun b!1274000 () Bool)

(declare-fun res!847118 () Bool)

(assert (=> b!1274000 (=> (not res!847118) (not e!727030))))

(declare-fun arrayCountValidKeys!0 (array!83499 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1274000 (= res!847118 (= (arrayCountValidKeys!0 (_keys!12156 thiss!1551) #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))) (_size!3151 thiss!1551)))))

(declare-fun array_inv!30555 (array!83499) Bool)

(declare-fun array_inv!30556 (array!83497) Bool)

(assert (=> b!1274001 (= e!727032 (and tp!97862 tp_is_empty!33135 (array_inv!30555 (_keys!12156 thiss!1551)) (array_inv!30556 (_values!6765 thiss!1551)) e!727029))))

(declare-fun b!1274002 () Bool)

(declare-datatypes ((List!28726 0))(
  ( (Nil!28723) (Cons!28722 (h!29931 (_ BitVec 64)) (t!42266 List!28726)) )
))
(declare-fun noDuplicate!2073 (List!28726) Bool)

(assert (=> b!1274002 (= e!727030 (not (noDuplicate!2073 Nil!28723)))))

(declare-fun mapIsEmpty!51344 () Bool)

(assert (=> mapIsEmpty!51344 mapRes!51344))

(declare-fun mapNonEmpty!51344 () Bool)

(declare-fun tp!97863 () Bool)

(assert (=> mapNonEmpty!51344 (= mapRes!51344 (and tp!97863 e!727033))))

(declare-fun mapValue!51344 () ValueCell!15714)

(declare-fun mapKey!51344 () (_ BitVec 32))

(declare-fun mapRest!51344 () (Array (_ BitVec 32) ValueCell!15714))

(assert (=> mapNonEmpty!51344 (= (arr!40263 (_values!6765 thiss!1551)) (store mapRest!51344 mapKey!51344 mapValue!51344))))

(assert (= (and start!107708 res!847121) b!1274000))

(assert (= (and b!1274000 res!847118) b!1273997))

(assert (= (and b!1273997 res!847120) b!1273998))

(assert (= (and b!1273998 res!847119) b!1274002))

(assert (= (and b!1273995 condMapEmpty!51344) mapIsEmpty!51344))

(assert (= (and b!1273995 (not condMapEmpty!51344)) mapNonEmpty!51344))

(get-info :version)

(assert (= (and mapNonEmpty!51344 ((_ is ValueCellFull!15714) mapValue!51344)) b!1273999))

(assert (= (and b!1273995 ((_ is ValueCellFull!15714) mapDefault!51344)) b!1273996))

(assert (= b!1274001 b!1273995))

(assert (= start!107708 b!1274001))

(declare-fun m!1170929 () Bool)

(assert (=> b!1274000 m!1170929))

(declare-fun m!1170931 () Bool)

(assert (=> b!1274002 m!1170931))

(declare-fun m!1170933 () Bool)

(assert (=> start!107708 m!1170933))

(declare-fun m!1170935 () Bool)

(assert (=> mapNonEmpty!51344 m!1170935))

(declare-fun m!1170937 () Bool)

(assert (=> b!1273997 m!1170937))

(declare-fun m!1170939 () Bool)

(assert (=> b!1274001 m!1170939))

(declare-fun m!1170941 () Bool)

(assert (=> b!1274001 m!1170941))

(check-sat (not b_next!27765) (not b!1274002) tp_is_empty!33135 (not mapNonEmpty!51344) (not b!1274000) (not start!107708) (not b!1273997) b_and!45831 (not b!1274001))
(check-sat b_and!45831 (not b_next!27765))
(get-model)

(declare-fun b!1274038 () Bool)

(declare-fun e!727054 () Bool)

(assert (=> b!1274038 (= e!727054 (and (bvsge (extraKeys!6421 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6421 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3151 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1274036 () Bool)

(declare-fun res!847145 () Bool)

(assert (=> b!1274036 (=> (not res!847145) (not e!727054))))

(declare-fun size!40816 (LongMapFixedSize!6192) (_ BitVec 32))

(assert (=> b!1274036 (= res!847145 (bvsge (size!40816 thiss!1551) (_size!3151 thiss!1551)))))

(declare-fun b!1274037 () Bool)

(declare-fun res!847143 () Bool)

(assert (=> b!1274037 (=> (not res!847143) (not e!727054))))

(assert (=> b!1274037 (= res!847143 (= (size!40816 thiss!1551) (bvadd (_size!3151 thiss!1551) (bvsdiv (bvadd (extraKeys!6421 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1274035 () Bool)

(declare-fun res!847142 () Bool)

(assert (=> b!1274035 (=> (not res!847142) (not e!727054))))

(assert (=> b!1274035 (= res!847142 (and (= (size!40812 (_values!6765 thiss!1551)) (bvadd (mask!34540 thiss!1551) #b00000000000000000000000000000001)) (= (size!40813 (_keys!12156 thiss!1551)) (size!40812 (_values!6765 thiss!1551))) (bvsge (_size!3151 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3151 thiss!1551) (bvadd (mask!34540 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun d!140001 () Bool)

(declare-fun res!847144 () Bool)

(assert (=> d!140001 (=> (not res!847144) (not e!727054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!140001 (= res!847144 (validMask!0 (mask!34540 thiss!1551)))))

(assert (=> d!140001 (= (simpleValid!477 thiss!1551) e!727054)))

(assert (= (and d!140001 res!847144) b!1274035))

(assert (= (and b!1274035 res!847142) b!1274036))

(assert (= (and b!1274036 res!847145) b!1274037))

(assert (= (and b!1274037 res!847143) b!1274038))

(declare-fun m!1170957 () Bool)

(assert (=> b!1274036 m!1170957))

(assert (=> b!1274037 m!1170957))

(declare-fun m!1170959 () Bool)

(assert (=> d!140001 m!1170959))

(assert (=> start!107708 d!140001))

(declare-fun bm!62616 () Bool)

(declare-fun call!62619 () (_ BitVec 32))

(assert (=> bm!62616 (= call!62619 (arrayCountValidKeys!0 (_keys!12156 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40813 (_keys!12156 thiss!1551))))))

(declare-fun b!1274048 () Bool)

(declare-fun e!727060 () (_ BitVec 32))

(assert (=> b!1274048 (= e!727060 call!62619)))

(declare-fun b!1274049 () Bool)

(declare-fun e!727059 () (_ BitVec 32))

(assert (=> b!1274049 (= e!727059 e!727060)))

(declare-fun c!123755 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1274049 (= c!123755 (validKeyInArray!0 (select (arr!40264 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1274050 () Bool)

(assert (=> b!1274050 (= e!727060 (bvadd #b00000000000000000000000000000001 call!62619))))

(declare-fun d!140003 () Bool)

(declare-fun lt!575128 () (_ BitVec 32))

(assert (=> d!140003 (and (bvsge lt!575128 #b00000000000000000000000000000000) (bvsle lt!575128 (bvsub (size!40813 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000)))))

(assert (=> d!140003 (= lt!575128 e!727059)))

(declare-fun c!123756 () Bool)

(assert (=> d!140003 (= c!123756 (bvsge #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))))))

(assert (=> d!140003 (and (bvsle #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40813 (_keys!12156 thiss!1551)) (size!40813 (_keys!12156 thiss!1551))))))

(assert (=> d!140003 (= (arrayCountValidKeys!0 (_keys!12156 thiss!1551) #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))) lt!575128)))

(declare-fun b!1274047 () Bool)

(assert (=> b!1274047 (= e!727059 #b00000000000000000000000000000000)))

(assert (= (and d!140003 c!123756) b!1274047))

(assert (= (and d!140003 (not c!123756)) b!1274049))

(assert (= (and b!1274049 c!123755) b!1274050))

(assert (= (and b!1274049 (not c!123755)) b!1274048))

(assert (= (or b!1274050 b!1274048) bm!62616))

(declare-fun m!1170961 () Bool)

(assert (=> bm!62616 m!1170961))

(declare-fun m!1170963 () Bool)

(assert (=> b!1274049 m!1170963))

(assert (=> b!1274049 m!1170963))

(declare-fun m!1170965 () Bool)

(assert (=> b!1274049 m!1170965))

(assert (=> b!1274000 d!140003))

(declare-fun d!140005 () Bool)

(assert (=> d!140005 (= (array_inv!30555 (_keys!12156 thiss!1551)) (bvsge (size!40813 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1274001 d!140005))

(declare-fun d!140007 () Bool)

(assert (=> d!140007 (= (array_inv!30556 (_values!6765 thiss!1551)) (bvsge (size!40812 (_values!6765 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1274001 d!140007))

(declare-fun d!140009 () Bool)

(declare-fun res!847150 () Bool)

(declare-fun e!727065 () Bool)

(assert (=> d!140009 (=> res!847150 e!727065)))

(assert (=> d!140009 (= res!847150 ((_ is Nil!28723) Nil!28723))))

(assert (=> d!140009 (= (noDuplicate!2073 Nil!28723) e!727065)))

(declare-fun b!1274055 () Bool)

(declare-fun e!727066 () Bool)

(assert (=> b!1274055 (= e!727065 e!727066)))

(declare-fun res!847151 () Bool)

(assert (=> b!1274055 (=> (not res!847151) (not e!727066))))

(declare-fun contains!7693 (List!28726 (_ BitVec 64)) Bool)

(assert (=> b!1274055 (= res!847151 (not (contains!7693 (t!42266 Nil!28723) (h!29931 Nil!28723))))))

(declare-fun b!1274056 () Bool)

(assert (=> b!1274056 (= e!727066 (noDuplicate!2073 (t!42266 Nil!28723)))))

(assert (= (and d!140009 (not res!847150)) b!1274055))

(assert (= (and b!1274055 res!847151) b!1274056))

(declare-fun m!1170967 () Bool)

(assert (=> b!1274055 m!1170967))

(declare-fun m!1170969 () Bool)

(assert (=> b!1274056 m!1170969))

(assert (=> b!1274002 d!140009))

(declare-fun bm!62619 () Bool)

(declare-fun call!62622 () Bool)

(assert (=> bm!62619 (= call!62622 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12156 thiss!1551) (mask!34540 thiss!1551)))))

(declare-fun d!140011 () Bool)

(declare-fun res!847156 () Bool)

(declare-fun e!727073 () Bool)

(assert (=> d!140011 (=> res!847156 e!727073)))

(assert (=> d!140011 (= res!847156 (bvsge #b00000000000000000000000000000000 (size!40813 (_keys!12156 thiss!1551))))))

(assert (=> d!140011 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12156 thiss!1551) (mask!34540 thiss!1551)) e!727073)))

(declare-fun b!1274065 () Bool)

(declare-fun e!727075 () Bool)

(declare-fun e!727074 () Bool)

(assert (=> b!1274065 (= e!727075 e!727074)))

(declare-fun lt!575135 () (_ BitVec 64))

(assert (=> b!1274065 (= lt!575135 (select (arr!40264 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42282 0))(
  ( (Unit!42283) )
))
(declare-fun lt!575137 () Unit!42282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83499 (_ BitVec 64) (_ BitVec 32)) Unit!42282)

(assert (=> b!1274065 (= lt!575137 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12156 thiss!1551) lt!575135 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1274065 (arrayContainsKey!0 (_keys!12156 thiss!1551) lt!575135 #b00000000000000000000000000000000)))

(declare-fun lt!575136 () Unit!42282)

(assert (=> b!1274065 (= lt!575136 lt!575137)))

(declare-fun res!847157 () Bool)

(declare-datatypes ((SeekEntryResult!9996 0))(
  ( (MissingZero!9996 (index!42354 (_ BitVec 32))) (Found!9996 (index!42355 (_ BitVec 32))) (Intermediate!9996 (undefined!10808 Bool) (index!42356 (_ BitVec 32)) (x!112712 (_ BitVec 32))) (Undefined!9996) (MissingVacant!9996 (index!42357 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83499 (_ BitVec 32)) SeekEntryResult!9996)

(assert (=> b!1274065 (= res!847157 (= (seekEntryOrOpen!0 (select (arr!40264 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000) (_keys!12156 thiss!1551) (mask!34540 thiss!1551)) (Found!9996 #b00000000000000000000000000000000)))))

(assert (=> b!1274065 (=> (not res!847157) (not e!727074))))

(declare-fun b!1274066 () Bool)

(assert (=> b!1274066 (= e!727074 call!62622)))

(declare-fun b!1274067 () Bool)

(assert (=> b!1274067 (= e!727073 e!727075)))

(declare-fun c!123759 () Bool)

(assert (=> b!1274067 (= c!123759 (validKeyInArray!0 (select (arr!40264 (_keys!12156 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1274068 () Bool)

(assert (=> b!1274068 (= e!727075 call!62622)))

(assert (= (and d!140011 (not res!847156)) b!1274067))

(assert (= (and b!1274067 c!123759) b!1274065))

(assert (= (and b!1274067 (not c!123759)) b!1274068))

(assert (= (and b!1274065 res!847157) b!1274066))

(assert (= (or b!1274066 b!1274068) bm!62619))

(declare-fun m!1170971 () Bool)

(assert (=> bm!62619 m!1170971))

(assert (=> b!1274065 m!1170963))

(declare-fun m!1170973 () Bool)

(assert (=> b!1274065 m!1170973))

(declare-fun m!1170975 () Bool)

(assert (=> b!1274065 m!1170975))

(assert (=> b!1274065 m!1170963))

(declare-fun m!1170977 () Bool)

(assert (=> b!1274065 m!1170977))

(assert (=> b!1274067 m!1170963))

(assert (=> b!1274067 m!1170963))

(assert (=> b!1274067 m!1170965))

(assert (=> b!1273997 d!140011))

(declare-fun mapIsEmpty!51350 () Bool)

(declare-fun mapRes!51350 () Bool)

(assert (=> mapIsEmpty!51350 mapRes!51350))

(declare-fun mapNonEmpty!51350 () Bool)

(declare-fun tp!97872 () Bool)

(declare-fun e!727080 () Bool)

(assert (=> mapNonEmpty!51350 (= mapRes!51350 (and tp!97872 e!727080))))

(declare-fun mapValue!51350 () ValueCell!15714)

(declare-fun mapKey!51350 () (_ BitVec 32))

(declare-fun mapRest!51350 () (Array (_ BitVec 32) ValueCell!15714))

(assert (=> mapNonEmpty!51350 (= mapRest!51344 (store mapRest!51350 mapKey!51350 mapValue!51350))))

(declare-fun b!1274076 () Bool)

(declare-fun e!727081 () Bool)

(assert (=> b!1274076 (= e!727081 tp_is_empty!33135)))

(declare-fun b!1274075 () Bool)

(assert (=> b!1274075 (= e!727080 tp_is_empty!33135)))

(declare-fun condMapEmpty!51350 () Bool)

(declare-fun mapDefault!51350 () ValueCell!15714)

(assert (=> mapNonEmpty!51344 (= condMapEmpty!51350 (= mapRest!51344 ((as const (Array (_ BitVec 32) ValueCell!15714)) mapDefault!51350)))))

(assert (=> mapNonEmpty!51344 (= tp!97863 (and e!727081 mapRes!51350))))

(assert (= (and mapNonEmpty!51344 condMapEmpty!51350) mapIsEmpty!51350))

(assert (= (and mapNonEmpty!51344 (not condMapEmpty!51350)) mapNonEmpty!51350))

(assert (= (and mapNonEmpty!51350 ((_ is ValueCellFull!15714) mapValue!51350)) b!1274075))

(assert (= (and mapNonEmpty!51344 ((_ is ValueCellFull!15714) mapDefault!51350)) b!1274076))

(declare-fun m!1170979 () Bool)

(assert (=> mapNonEmpty!51350 m!1170979))

(check-sat (not bm!62619) (not b!1274067) (not b_next!27765) (not mapNonEmpty!51350) (not bm!62616) (not b!1274036) (not b!1274065) (not b!1274049) (not b!1274056) (not b!1274055) b_and!45831 (not b!1274037) tp_is_empty!33135 (not d!140001))
(check-sat b_and!45831 (not b_next!27765))
