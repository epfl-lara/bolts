; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90736 () Bool)

(assert start!90736)

(declare-fun b!1037154 () Bool)

(declare-fun b_free!20889 () Bool)

(declare-fun b_next!20889 () Bool)

(assert (=> b!1037154 (= b_free!20889 (not b_next!20889))))

(declare-fun tp!73811 () Bool)

(declare-fun b_and!33439 () Bool)

(assert (=> b!1037154 (= tp!73811 b_and!33439)))

(declare-fun b!1037153 () Bool)

(declare-fun e!586679 () Bool)

(declare-datatypes ((V!37685 0))(
  ( (V!37686 (val!12355 Int)) )
))
(declare-datatypes ((ValueCell!11601 0))(
  ( (ValueCellFull!11601 (v!14939 V!37685)) (EmptyCell!11601) )
))
(declare-datatypes ((array!65304 0))(
  ( (array!65305 (arr!31431 (Array (_ BitVec 32) (_ BitVec 64))) (size!31962 (_ BitVec 32))) )
))
(declare-datatypes ((array!65306 0))(
  ( (array!65307 (arr!31432 (Array (_ BitVec 32) ValueCell!11601)) (size!31963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5796 0))(
  ( (LongMapFixedSize!5797 (defaultEntry!6280 Int) (mask!30189 (_ BitVec 32)) (extraKeys!6008 (_ BitVec 32)) (zeroValue!6114 V!37685) (minValue!6114 V!37685) (_size!2953 (_ BitVec 32)) (_keys!11472 array!65304) (_values!6303 array!65306) (_vacant!2953 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5796)

(assert (=> b!1037153 (= e!586679 (not (bvslt (size!31962 (_keys!11472 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-datatypes ((SeekEntryResult!9746 0))(
  ( (MissingZero!9746 (index!41354 (_ BitVec 32))) (Found!9746 (index!41355 (_ BitVec 32))) (Intermediate!9746 (undefined!10558 Bool) (index!41356 (_ BitVec 32)) (x!92508 (_ BitVec 32))) (Undefined!9746) (MissingVacant!9746 (index!41357 (_ BitVec 32))) )
))
(declare-fun lt!457403 () SeekEntryResult!9746)

(declare-fun arrayCountValidKeys!0 (array!65304 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037153 (= (arrayCountValidKeys!0 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427))) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11472 thiss!1427) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33924 0))(
  ( (Unit!33925) )
))
(declare-fun lt!457402 () Unit!33924)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65304 (_ BitVec 32) (_ BitVec 64)) Unit!33924)

(assert (=> b!1037153 (= lt!457402 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11472 thiss!1427) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586683 () Bool)

(declare-fun tp_is_empty!24609 () Bool)

(declare-fun e!586680 () Bool)

(declare-fun array_inv!24143 (array!65304) Bool)

(declare-fun array_inv!24144 (array!65306) Bool)

(assert (=> b!1037154 (= e!586683 (and tp!73811 tp_is_empty!24609 (array_inv!24143 (_keys!11472 thiss!1427)) (array_inv!24144 (_values!6303 thiss!1427)) e!586680))))

(declare-fun b!1037155 () Bool)

(declare-fun e!586678 () Bool)

(declare-fun mapRes!38439 () Bool)

(assert (=> b!1037155 (= e!586680 (and e!586678 mapRes!38439))))

(declare-fun condMapEmpty!38439 () Bool)

(declare-fun mapDefault!38439 () ValueCell!11601)

(assert (=> b!1037155 (= condMapEmpty!38439 (= (arr!31432 (_values!6303 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11601)) mapDefault!38439)))))

(declare-fun mapIsEmpty!38439 () Bool)

(assert (=> mapIsEmpty!38439 mapRes!38439))

(declare-fun b!1037156 () Bool)

(declare-fun e!586681 () Bool)

(assert (=> b!1037156 (= e!586681 tp_is_empty!24609)))

(declare-fun b!1037157 () Bool)

(declare-fun res!692148 () Bool)

(declare-fun e!586682 () Bool)

(assert (=> b!1037157 (=> (not res!692148) (not e!586682))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037157 (= res!692148 (not (= key!909 (bvneg key!909))))))

(declare-fun res!692149 () Bool)

(assert (=> start!90736 (=> (not res!692149) (not e!586682))))

(declare-fun valid!2138 (LongMapFixedSize!5796) Bool)

(assert (=> start!90736 (= res!692149 (valid!2138 thiss!1427))))

(assert (=> start!90736 e!586682))

(assert (=> start!90736 e!586683))

(assert (=> start!90736 true))

(declare-fun b!1037158 () Bool)

(assert (=> b!1037158 (= e!586678 tp_is_empty!24609)))

(declare-fun b!1037159 () Bool)

(assert (=> b!1037159 (= e!586682 e!586679)))

(declare-fun res!692147 () Bool)

(assert (=> b!1037159 (=> (not res!692147) (not e!586679))))

(get-info :version)

(assert (=> b!1037159 (= res!692147 ((_ is Found!9746) lt!457403))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65304 (_ BitVec 32)) SeekEntryResult!9746)

(assert (=> b!1037159 (= lt!457403 (seekEntry!0 key!909 (_keys!11472 thiss!1427) (mask!30189 thiss!1427)))))

(declare-fun mapNonEmpty!38439 () Bool)

(declare-fun tp!73810 () Bool)

(assert (=> mapNonEmpty!38439 (= mapRes!38439 (and tp!73810 e!586681))))

(declare-fun mapKey!38439 () (_ BitVec 32))

(declare-fun mapRest!38439 () (Array (_ BitVec 32) ValueCell!11601))

(declare-fun mapValue!38439 () ValueCell!11601)

(assert (=> mapNonEmpty!38439 (= (arr!31432 (_values!6303 thiss!1427)) (store mapRest!38439 mapKey!38439 mapValue!38439))))

(assert (= (and start!90736 res!692149) b!1037157))

(assert (= (and b!1037157 res!692148) b!1037159))

(assert (= (and b!1037159 res!692147) b!1037153))

(assert (= (and b!1037155 condMapEmpty!38439) mapIsEmpty!38439))

(assert (= (and b!1037155 (not condMapEmpty!38439)) mapNonEmpty!38439))

(assert (= (and mapNonEmpty!38439 ((_ is ValueCellFull!11601) mapValue!38439)) b!1037156))

(assert (= (and b!1037155 ((_ is ValueCellFull!11601) mapDefault!38439)) b!1037158))

(assert (= b!1037154 b!1037155))

(assert (= start!90736 b!1037154))

(declare-fun m!957555 () Bool)

(assert (=> b!1037159 m!957555))

(declare-fun m!957557 () Bool)

(assert (=> mapNonEmpty!38439 m!957557))

(declare-fun m!957559 () Bool)

(assert (=> b!1037154 m!957559))

(declare-fun m!957561 () Bool)

(assert (=> b!1037154 m!957561))

(declare-fun m!957563 () Bool)

(assert (=> start!90736 m!957563))

(declare-fun m!957565 () Bool)

(assert (=> b!1037153 m!957565))

(declare-fun m!957567 () Bool)

(assert (=> b!1037153 m!957567))

(declare-fun m!957569 () Bool)

(assert (=> b!1037153 m!957569))

(declare-fun m!957571 () Bool)

(assert (=> b!1037153 m!957571))

(check-sat b_and!33439 (not b!1037159) (not mapNonEmpty!38439) (not b_next!20889) tp_is_empty!24609 (not b!1037153) (not start!90736) (not b!1037154))
(check-sat b_and!33439 (not b_next!20889))
(get-model)

(declare-fun b!1037193 () Bool)

(declare-fun e!586713 () SeekEntryResult!9746)

(assert (=> b!1037193 (= e!586713 Undefined!9746)))

(declare-fun b!1037194 () Bool)

(declare-fun e!586711 () SeekEntryResult!9746)

(assert (=> b!1037194 (= e!586713 e!586711)))

(declare-fun lt!457421 () (_ BitVec 64))

(declare-fun lt!457420 () SeekEntryResult!9746)

(assert (=> b!1037194 (= lt!457421 (select (arr!31431 (_keys!11472 thiss!1427)) (index!41356 lt!457420)))))

(declare-fun c!105045 () Bool)

(assert (=> b!1037194 (= c!105045 (= lt!457421 key!909))))

(declare-fun b!1037195 () Bool)

(assert (=> b!1037195 (= e!586711 (Found!9746 (index!41356 lt!457420)))))

(declare-fun b!1037196 () Bool)

(declare-fun e!586712 () SeekEntryResult!9746)

(assert (=> b!1037196 (= e!586712 (MissingZero!9746 (index!41356 lt!457420)))))

(declare-fun d!125161 () Bool)

(declare-fun lt!457418 () SeekEntryResult!9746)

(assert (=> d!125161 (and (or ((_ is MissingVacant!9746) lt!457418) (not ((_ is Found!9746) lt!457418)) (and (bvsge (index!41355 lt!457418) #b00000000000000000000000000000000) (bvslt (index!41355 lt!457418) (size!31962 (_keys!11472 thiss!1427))))) (not ((_ is MissingVacant!9746) lt!457418)) (or (not ((_ is Found!9746) lt!457418)) (= (select (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457418)) key!909)))))

(assert (=> d!125161 (= lt!457418 e!586713)))

(declare-fun c!105047 () Bool)

(assert (=> d!125161 (= c!105047 (and ((_ is Intermediate!9746) lt!457420) (undefined!10558 lt!457420)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65304 (_ BitVec 32)) SeekEntryResult!9746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125161 (= lt!457420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30189 thiss!1427)) key!909 (_keys!11472 thiss!1427) (mask!30189 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125161 (validMask!0 (mask!30189 thiss!1427))))

(assert (=> d!125161 (= (seekEntry!0 key!909 (_keys!11472 thiss!1427) (mask!30189 thiss!1427)) lt!457418)))

(declare-fun b!1037197 () Bool)

(declare-fun lt!457419 () SeekEntryResult!9746)

(assert (=> b!1037197 (= e!586712 (ite ((_ is MissingVacant!9746) lt!457419) (MissingZero!9746 (index!41357 lt!457419)) lt!457419))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65304 (_ BitVec 32)) SeekEntryResult!9746)

(assert (=> b!1037197 (= lt!457419 (seekKeyOrZeroReturnVacant!0 (x!92508 lt!457420) (index!41356 lt!457420) (index!41356 lt!457420) key!909 (_keys!11472 thiss!1427) (mask!30189 thiss!1427)))))

(declare-fun b!1037198 () Bool)

(declare-fun c!105046 () Bool)

(assert (=> b!1037198 (= c!105046 (= lt!457421 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1037198 (= e!586711 e!586712)))

(assert (= (and d!125161 c!105047) b!1037193))

(assert (= (and d!125161 (not c!105047)) b!1037194))

(assert (= (and b!1037194 c!105045) b!1037195))

(assert (= (and b!1037194 (not c!105045)) b!1037198))

(assert (= (and b!1037198 c!105046) b!1037196))

(assert (= (and b!1037198 (not c!105046)) b!1037197))

(declare-fun m!957591 () Bool)

(assert (=> b!1037194 m!957591))

(declare-fun m!957593 () Bool)

(assert (=> d!125161 m!957593))

(declare-fun m!957595 () Bool)

(assert (=> d!125161 m!957595))

(assert (=> d!125161 m!957595))

(declare-fun m!957597 () Bool)

(assert (=> d!125161 m!957597))

(declare-fun m!957599 () Bool)

(assert (=> d!125161 m!957599))

(declare-fun m!957601 () Bool)

(assert (=> b!1037197 m!957601))

(assert (=> b!1037159 d!125161))

(declare-fun d!125163 () Bool)

(assert (=> d!125163 (= (array_inv!24143 (_keys!11472 thiss!1427)) (bvsge (size!31962 (_keys!11472 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037154 d!125163))

(declare-fun d!125165 () Bool)

(assert (=> d!125165 (= (array_inv!24144 (_values!6303 thiss!1427)) (bvsge (size!31963 (_values!6303 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037154 d!125165))

(declare-fun b!1037207 () Bool)

(declare-fun e!586719 () (_ BitVec 32))

(assert (=> b!1037207 (= e!586719 #b00000000000000000000000000000000)))

(declare-fun b!1037208 () Bool)

(declare-fun e!586718 () (_ BitVec 32))

(declare-fun call!43915 () (_ BitVec 32))

(assert (=> b!1037208 (= e!586718 call!43915)))

(declare-fun b!1037209 () Bool)

(assert (=> b!1037209 (= e!586718 (bvadd #b00000000000000000000000000000001 call!43915))))

(declare-fun b!1037210 () Bool)

(assert (=> b!1037210 (= e!586719 e!586718)))

(declare-fun c!105053 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1037210 (= c!105053 (validKeyInArray!0 (select (arr!31431 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!125167 () Bool)

(declare-fun lt!457424 () (_ BitVec 32))

(assert (=> d!125167 (and (bvsge lt!457424 #b00000000000000000000000000000000) (bvsle lt!457424 (bvsub (size!31962 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125167 (= lt!457424 e!586719)))

(declare-fun c!105052 () Bool)

(assert (=> d!125167 (= c!105052 (bvsge #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))))))

(assert (=> d!125167 (and (bvsle #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31962 (_keys!11472 thiss!1427)) (size!31962 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427))))))))

(assert (=> d!125167 (= (arrayCountValidKeys!0 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427))) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) lt!457424)))

(declare-fun bm!43912 () Bool)

(assert (=> bm!43912 (= call!43915 (arrayCountValidKeys!0 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31962 (_keys!11472 thiss!1427))))))

(assert (= (and d!125167 c!105052) b!1037207))

(assert (= (and d!125167 (not c!105052)) b!1037210))

(assert (= (and b!1037210 c!105053) b!1037209))

(assert (= (and b!1037210 (not c!105053)) b!1037208))

(assert (= (or b!1037209 b!1037208) bm!43912))

(declare-fun m!957603 () Bool)

(assert (=> b!1037210 m!957603))

(assert (=> b!1037210 m!957603))

(declare-fun m!957605 () Bool)

(assert (=> b!1037210 m!957605))

(declare-fun m!957607 () Bool)

(assert (=> bm!43912 m!957607))

(assert (=> b!1037153 d!125167))

(declare-fun b!1037211 () Bool)

(declare-fun e!586721 () (_ BitVec 32))

(assert (=> b!1037211 (= e!586721 #b00000000000000000000000000000000)))

(declare-fun b!1037212 () Bool)

(declare-fun e!586720 () (_ BitVec 32))

(declare-fun call!43916 () (_ BitVec 32))

(assert (=> b!1037212 (= e!586720 call!43916)))

(declare-fun b!1037213 () Bool)

(assert (=> b!1037213 (= e!586720 (bvadd #b00000000000000000000000000000001 call!43916))))

(declare-fun b!1037214 () Bool)

(assert (=> b!1037214 (= e!586721 e!586720)))

(declare-fun c!105055 () Bool)

(assert (=> b!1037214 (= c!105055 (validKeyInArray!0 (select (arr!31431 (_keys!11472 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125169 () Bool)

(declare-fun lt!457425 () (_ BitVec 32))

(assert (=> d!125169 (and (bvsge lt!457425 #b00000000000000000000000000000000) (bvsle lt!457425 (bvsub (size!31962 (_keys!11472 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125169 (= lt!457425 e!586721)))

(declare-fun c!105054 () Bool)

(assert (=> d!125169 (= c!105054 (bvsge #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))))))

(assert (=> d!125169 (and (bvsle #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31962 (_keys!11472 thiss!1427)) (size!31962 (_keys!11472 thiss!1427))))))

(assert (=> d!125169 (= (arrayCountValidKeys!0 (_keys!11472 thiss!1427) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) lt!457425)))

(declare-fun bm!43913 () Bool)

(assert (=> bm!43913 (= call!43916 (arrayCountValidKeys!0 (_keys!11472 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31962 (_keys!11472 thiss!1427))))))

(assert (= (and d!125169 c!105054) b!1037211))

(assert (= (and d!125169 (not c!105054)) b!1037214))

(assert (= (and b!1037214 c!105055) b!1037213))

(assert (= (and b!1037214 (not c!105055)) b!1037212))

(assert (= (or b!1037213 b!1037212) bm!43913))

(declare-fun m!957609 () Bool)

(assert (=> b!1037214 m!957609))

(assert (=> b!1037214 m!957609))

(declare-fun m!957611 () Bool)

(assert (=> b!1037214 m!957611))

(declare-fun m!957613 () Bool)

(assert (=> bm!43913 m!957613))

(assert (=> b!1037153 d!125169))

(declare-fun b!1037226 () Bool)

(declare-fun e!586727 () Bool)

(assert (=> b!1037226 (= e!586727 (= (arrayCountValidKeys!0 (array!65305 (store (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31962 (_keys!11472 thiss!1427))) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11472 thiss!1427) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!125171 () Bool)

(assert (=> d!125171 e!586727))

(declare-fun res!692170 () Bool)

(assert (=> d!125171 (=> (not res!692170) (not e!586727))))

(assert (=> d!125171 (= res!692170 (and (bvsge (index!41355 lt!457403) #b00000000000000000000000000000000) (bvslt (index!41355 lt!457403) (size!31962 (_keys!11472 thiss!1427)))))))

(declare-fun lt!457428 () Unit!33924)

(declare-fun choose!82 (array!65304 (_ BitVec 32) (_ BitVec 64)) Unit!33924)

(assert (=> d!125171 (= lt!457428 (choose!82 (_keys!11472 thiss!1427) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586726 () Bool)

(assert (=> d!125171 e!586726))

(declare-fun res!692169 () Bool)

(assert (=> d!125171 (=> (not res!692169) (not e!586726))))

(assert (=> d!125171 (= res!692169 (and (bvsge (index!41355 lt!457403) #b00000000000000000000000000000000) (bvslt (index!41355 lt!457403) (size!31962 (_keys!11472 thiss!1427)))))))

(assert (=> d!125171 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11472 thiss!1427) (index!41355 lt!457403) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457428)))

(declare-fun b!1037223 () Bool)

(declare-fun res!692167 () Bool)

(assert (=> b!1037223 (=> (not res!692167) (not e!586726))))

(assert (=> b!1037223 (= res!692167 (validKeyInArray!0 (select (arr!31431 (_keys!11472 thiss!1427)) (index!41355 lt!457403))))))

(declare-fun b!1037224 () Bool)

(declare-fun res!692168 () Bool)

(assert (=> b!1037224 (=> (not res!692168) (not e!586726))))

(assert (=> b!1037224 (= res!692168 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1037225 () Bool)

(assert (=> b!1037225 (= e!586726 (bvslt (size!31962 (_keys!11472 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125171 res!692169) b!1037223))

(assert (= (and b!1037223 res!692167) b!1037224))

(assert (= (and b!1037224 res!692168) b!1037225))

(assert (= (and d!125171 res!692170) b!1037226))

(assert (=> b!1037226 m!957565))

(assert (=> b!1037226 m!957567))

(assert (=> b!1037226 m!957569))

(declare-fun m!957615 () Bool)

(assert (=> d!125171 m!957615))

(declare-fun m!957617 () Bool)

(assert (=> b!1037223 m!957617))

(assert (=> b!1037223 m!957617))

(declare-fun m!957619 () Bool)

(assert (=> b!1037223 m!957619))

(declare-fun m!957621 () Bool)

(assert (=> b!1037224 m!957621))

(assert (=> b!1037153 d!125171))

(declare-fun d!125173 () Bool)

(declare-fun res!692177 () Bool)

(declare-fun e!586730 () Bool)

(assert (=> d!125173 (=> (not res!692177) (not e!586730))))

(declare-fun simpleValid!415 (LongMapFixedSize!5796) Bool)

(assert (=> d!125173 (= res!692177 (simpleValid!415 thiss!1427))))

(assert (=> d!125173 (= (valid!2138 thiss!1427) e!586730)))

(declare-fun b!1037233 () Bool)

(declare-fun res!692178 () Bool)

(assert (=> b!1037233 (=> (not res!692178) (not e!586730))))

(assert (=> b!1037233 (= res!692178 (= (arrayCountValidKeys!0 (_keys!11472 thiss!1427) #b00000000000000000000000000000000 (size!31962 (_keys!11472 thiss!1427))) (_size!2953 thiss!1427)))))

(declare-fun b!1037234 () Bool)

(declare-fun res!692179 () Bool)

(assert (=> b!1037234 (=> (not res!692179) (not e!586730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65304 (_ BitVec 32)) Bool)

(assert (=> b!1037234 (= res!692179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11472 thiss!1427) (mask!30189 thiss!1427)))))

(declare-fun b!1037235 () Bool)

(declare-datatypes ((List!22038 0))(
  ( (Nil!22035) (Cons!22034 (h!23237 (_ BitVec 64)) (t!31259 List!22038)) )
))
(declare-fun arrayNoDuplicates!0 (array!65304 (_ BitVec 32) List!22038) Bool)

(assert (=> b!1037235 (= e!586730 (arrayNoDuplicates!0 (_keys!11472 thiss!1427) #b00000000000000000000000000000000 Nil!22035))))

(assert (= (and d!125173 res!692177) b!1037233))

(assert (= (and b!1037233 res!692178) b!1037234))

(assert (= (and b!1037234 res!692179) b!1037235))

(declare-fun m!957623 () Bool)

(assert (=> d!125173 m!957623))

(assert (=> b!1037233 m!957569))

(declare-fun m!957625 () Bool)

(assert (=> b!1037234 m!957625))

(declare-fun m!957627 () Bool)

(assert (=> b!1037235 m!957627))

(assert (=> start!90736 d!125173))

(declare-fun b!1037242 () Bool)

(declare-fun e!586735 () Bool)

(assert (=> b!1037242 (= e!586735 tp_is_empty!24609)))

(declare-fun mapIsEmpty!38445 () Bool)

(declare-fun mapRes!38445 () Bool)

(assert (=> mapIsEmpty!38445 mapRes!38445))

(declare-fun condMapEmpty!38445 () Bool)

(declare-fun mapDefault!38445 () ValueCell!11601)

(assert (=> mapNonEmpty!38439 (= condMapEmpty!38445 (= mapRest!38439 ((as const (Array (_ BitVec 32) ValueCell!11601)) mapDefault!38445)))))

(declare-fun e!586736 () Bool)

(assert (=> mapNonEmpty!38439 (= tp!73810 (and e!586736 mapRes!38445))))

(declare-fun b!1037243 () Bool)

(assert (=> b!1037243 (= e!586736 tp_is_empty!24609)))

(declare-fun mapNonEmpty!38445 () Bool)

(declare-fun tp!73820 () Bool)

(assert (=> mapNonEmpty!38445 (= mapRes!38445 (and tp!73820 e!586735))))

(declare-fun mapValue!38445 () ValueCell!11601)

(declare-fun mapRest!38445 () (Array (_ BitVec 32) ValueCell!11601))

(declare-fun mapKey!38445 () (_ BitVec 32))

(assert (=> mapNonEmpty!38445 (= mapRest!38439 (store mapRest!38445 mapKey!38445 mapValue!38445))))

(assert (= (and mapNonEmpty!38439 condMapEmpty!38445) mapIsEmpty!38445))

(assert (= (and mapNonEmpty!38439 (not condMapEmpty!38445)) mapNonEmpty!38445))

(assert (= (and mapNonEmpty!38445 ((_ is ValueCellFull!11601) mapValue!38445)) b!1037242))

(assert (= (and mapNonEmpty!38439 ((_ is ValueCellFull!11601) mapDefault!38445)) b!1037243))

(declare-fun m!957629 () Bool)

(assert (=> mapNonEmpty!38445 m!957629))

(check-sat (not b!1037224) (not b!1037235) b_and!33439 (not b!1037233) (not b!1037234) (not b_next!20889) (not b!1037214) tp_is_empty!24609 (not d!125161) (not d!125171) (not bm!43913) (not d!125173) (not bm!43912) (not mapNonEmpty!38445) (not b!1037210) (not b!1037226) (not b!1037223) (not b!1037197))
(check-sat b_and!33439 (not b_next!20889))
