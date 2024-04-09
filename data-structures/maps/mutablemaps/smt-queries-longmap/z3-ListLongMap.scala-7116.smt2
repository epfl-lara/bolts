; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90236 () Bool)

(assert start!90236)

(declare-fun b!1032799 () Bool)

(declare-fun b_free!20751 () Bool)

(declare-fun b_next!20751 () Bool)

(assert (=> b!1032799 (= b_free!20751 (not b_next!20751))))

(declare-fun tp!73340 () Bool)

(declare-fun b_and!33237 () Bool)

(assert (=> b!1032799 (= tp!73340 b_and!33237)))

(declare-fun b!1032793 () Bool)

(declare-fun e!583683 () Bool)

(declare-fun e!583686 () Bool)

(declare-fun mapRes!38175 () Bool)

(assert (=> b!1032793 (= e!583683 (and e!583686 mapRes!38175))))

(declare-fun condMapEmpty!38175 () Bool)

(declare-datatypes ((V!37501 0))(
  ( (V!37502 (val!12286 Int)) )
))
(declare-datatypes ((ValueCell!11532 0))(
  ( (ValueCellFull!11532 (v!14864 V!37501)) (EmptyCell!11532) )
))
(declare-datatypes ((array!64998 0))(
  ( (array!64999 (arr!31293 (Array (_ BitVec 32) (_ BitVec 64))) (size!31814 (_ BitVec 32))) )
))
(declare-datatypes ((array!65000 0))(
  ( (array!65001 (arr!31294 (Array (_ BitVec 32) ValueCell!11532)) (size!31815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5658 0))(
  ( (LongMapFixedSize!5659 (defaultEntry!6203 Int) (mask!30031 (_ BitVec 32)) (extraKeys!5935 (_ BitVec 32)) (zeroValue!6039 V!37501) (minValue!6039 V!37501) (_size!2884 (_ BitVec 32)) (_keys!11376 array!64998) (_values!6226 array!65000) (_vacant!2884 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5658)

(declare-fun mapDefault!38175 () ValueCell!11532)

(assert (=> b!1032793 (= condMapEmpty!38175 (= (arr!31294 (_values!6226 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11532)) mapDefault!38175)))))

(declare-fun res!690288 () Bool)

(declare-fun e!583684 () Bool)

(assert (=> start!90236 (=> (not res!690288) (not e!583684))))

(declare-fun valid!2090 (LongMapFixedSize!5658) Bool)

(assert (=> start!90236 (= res!690288 (valid!2090 thiss!1427))))

(assert (=> start!90236 e!583684))

(declare-fun e!583682 () Bool)

(assert (=> start!90236 e!583682))

(assert (=> start!90236 true))

(declare-fun b!1032794 () Bool)

(declare-fun res!690286 () Bool)

(assert (=> b!1032794 (=> (not res!690286) (not e!583684))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032794 (= res!690286 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032795 () Bool)

(assert (=> b!1032795 (= e!583684 (and (= (size!31815 (_values!6226 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30031 thiss!1427))) (= (size!31814 (_keys!11376 thiss!1427)) (size!31815 (_values!6226 thiss!1427))) (bvsge (mask!30031 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5935 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1032796 () Bool)

(declare-fun e!583685 () Bool)

(declare-fun tp_is_empty!24471 () Bool)

(assert (=> b!1032796 (= e!583685 tp_is_empty!24471)))

(declare-fun b!1032797 () Bool)

(declare-fun res!690287 () Bool)

(assert (=> b!1032797 (=> (not res!690287) (not e!583684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032797 (= res!690287 (validMask!0 (mask!30031 thiss!1427)))))

(declare-fun mapNonEmpty!38175 () Bool)

(declare-fun tp!73339 () Bool)

(assert (=> mapNonEmpty!38175 (= mapRes!38175 (and tp!73339 e!583685))))

(declare-fun mapRest!38175 () (Array (_ BitVec 32) ValueCell!11532))

(declare-fun mapValue!38175 () ValueCell!11532)

(declare-fun mapKey!38175 () (_ BitVec 32))

(assert (=> mapNonEmpty!38175 (= (arr!31294 (_values!6226 thiss!1427)) (store mapRest!38175 mapKey!38175 mapValue!38175))))

(declare-fun b!1032798 () Bool)

(assert (=> b!1032798 (= e!583686 tp_is_empty!24471)))

(declare-fun array_inv!24053 (array!64998) Bool)

(declare-fun array_inv!24054 (array!65000) Bool)

(assert (=> b!1032799 (= e!583682 (and tp!73340 tp_is_empty!24471 (array_inv!24053 (_keys!11376 thiss!1427)) (array_inv!24054 (_values!6226 thiss!1427)) e!583683))))

(declare-fun mapIsEmpty!38175 () Bool)

(assert (=> mapIsEmpty!38175 mapRes!38175))

(assert (= (and start!90236 res!690288) b!1032794))

(assert (= (and b!1032794 res!690286) b!1032797))

(assert (= (and b!1032797 res!690287) b!1032795))

(assert (= (and b!1032793 condMapEmpty!38175) mapIsEmpty!38175))

(assert (= (and b!1032793 (not condMapEmpty!38175)) mapNonEmpty!38175))

(get-info :version)

(assert (= (and mapNonEmpty!38175 ((_ is ValueCellFull!11532) mapValue!38175)) b!1032796))

(assert (= (and b!1032793 ((_ is ValueCellFull!11532) mapDefault!38175)) b!1032798))

(assert (= b!1032799 b!1032793))

(assert (= start!90236 b!1032799))

(declare-fun m!952997 () Bool)

(assert (=> start!90236 m!952997))

(declare-fun m!952999 () Bool)

(assert (=> b!1032797 m!952999))

(declare-fun m!953001 () Bool)

(assert (=> mapNonEmpty!38175 m!953001))

(declare-fun m!953003 () Bool)

(assert (=> b!1032799 m!953003))

(declare-fun m!953005 () Bool)

(assert (=> b!1032799 m!953005))

(check-sat tp_is_empty!24471 (not b!1032799) (not b!1032797) (not b_next!20751) (not mapNonEmpty!38175) b_and!33237 (not start!90236))
(check-sat b_and!33237 (not b_next!20751))
(get-model)

(declare-fun d!123689 () Bool)

(assert (=> d!123689 (= (array_inv!24053 (_keys!11376 thiss!1427)) (bvsge (size!31814 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032799 d!123689))

(declare-fun d!123691 () Bool)

(assert (=> d!123691 (= (array_inv!24054 (_values!6226 thiss!1427)) (bvsge (size!31815 (_values!6226 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032799 d!123691))

(declare-fun d!123693 () Bool)

(declare-fun res!690304 () Bool)

(declare-fun e!583708 () Bool)

(assert (=> d!123693 (=> (not res!690304) (not e!583708))))

(declare-fun simpleValid!400 (LongMapFixedSize!5658) Bool)

(assert (=> d!123693 (= res!690304 (simpleValid!400 thiss!1427))))

(assert (=> d!123693 (= (valid!2090 thiss!1427) e!583708)))

(declare-fun b!1032827 () Bool)

(declare-fun res!690305 () Bool)

(assert (=> b!1032827 (=> (not res!690305) (not e!583708))))

(declare-fun arrayCountValidKeys!0 (array!64998 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032827 (= res!690305 (= (arrayCountValidKeys!0 (_keys!11376 thiss!1427) #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))) (_size!2884 thiss!1427)))))

(declare-fun b!1032828 () Bool)

(declare-fun res!690306 () Bool)

(assert (=> b!1032828 (=> (not res!690306) (not e!583708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64998 (_ BitVec 32)) Bool)

(assert (=> b!1032828 (= res!690306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11376 thiss!1427) (mask!30031 thiss!1427)))))

(declare-fun b!1032829 () Bool)

(declare-datatypes ((List!22016 0))(
  ( (Nil!22013) (Cons!22012 (h!23214 (_ BitVec 64)) (t!31217 List!22016)) )
))
(declare-fun arrayNoDuplicates!0 (array!64998 (_ BitVec 32) List!22016) Bool)

(assert (=> b!1032829 (= e!583708 (arrayNoDuplicates!0 (_keys!11376 thiss!1427) #b00000000000000000000000000000000 Nil!22013))))

(assert (= (and d!123693 res!690304) b!1032827))

(assert (= (and b!1032827 res!690305) b!1032828))

(assert (= (and b!1032828 res!690306) b!1032829))

(declare-fun m!953017 () Bool)

(assert (=> d!123693 m!953017))

(declare-fun m!953019 () Bool)

(assert (=> b!1032827 m!953019))

(declare-fun m!953021 () Bool)

(assert (=> b!1032828 m!953021))

(declare-fun m!953023 () Bool)

(assert (=> b!1032829 m!953023))

(assert (=> start!90236 d!123693))

(declare-fun d!123695 () Bool)

(assert (=> d!123695 (= (validMask!0 (mask!30031 thiss!1427)) (and (or (= (mask!30031 thiss!1427) #b00000000000000000000000000000111) (= (mask!30031 thiss!1427) #b00000000000000000000000000001111) (= (mask!30031 thiss!1427) #b00000000000000000000000000011111) (= (mask!30031 thiss!1427) #b00000000000000000000000000111111) (= (mask!30031 thiss!1427) #b00000000000000000000000001111111) (= (mask!30031 thiss!1427) #b00000000000000000000000011111111) (= (mask!30031 thiss!1427) #b00000000000000000000000111111111) (= (mask!30031 thiss!1427) #b00000000000000000000001111111111) (= (mask!30031 thiss!1427) #b00000000000000000000011111111111) (= (mask!30031 thiss!1427) #b00000000000000000000111111111111) (= (mask!30031 thiss!1427) #b00000000000000000001111111111111) (= (mask!30031 thiss!1427) #b00000000000000000011111111111111) (= (mask!30031 thiss!1427) #b00000000000000000111111111111111) (= (mask!30031 thiss!1427) #b00000000000000001111111111111111) (= (mask!30031 thiss!1427) #b00000000000000011111111111111111) (= (mask!30031 thiss!1427) #b00000000000000111111111111111111) (= (mask!30031 thiss!1427) #b00000000000001111111111111111111) (= (mask!30031 thiss!1427) #b00000000000011111111111111111111) (= (mask!30031 thiss!1427) #b00000000000111111111111111111111) (= (mask!30031 thiss!1427) #b00000000001111111111111111111111) (= (mask!30031 thiss!1427) #b00000000011111111111111111111111) (= (mask!30031 thiss!1427) #b00000000111111111111111111111111) (= (mask!30031 thiss!1427) #b00000001111111111111111111111111) (= (mask!30031 thiss!1427) #b00000011111111111111111111111111) (= (mask!30031 thiss!1427) #b00000111111111111111111111111111) (= (mask!30031 thiss!1427) #b00001111111111111111111111111111) (= (mask!30031 thiss!1427) #b00011111111111111111111111111111) (= (mask!30031 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30031 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032797 d!123695))

(declare-fun b!1032836 () Bool)

(declare-fun e!583714 () Bool)

(assert (=> b!1032836 (= e!583714 tp_is_empty!24471)))

(declare-fun condMapEmpty!38181 () Bool)

(declare-fun mapDefault!38181 () ValueCell!11532)

(assert (=> mapNonEmpty!38175 (= condMapEmpty!38181 (= mapRest!38175 ((as const (Array (_ BitVec 32) ValueCell!11532)) mapDefault!38181)))))

(declare-fun e!583713 () Bool)

(declare-fun mapRes!38181 () Bool)

(assert (=> mapNonEmpty!38175 (= tp!73339 (and e!583713 mapRes!38181))))

(declare-fun mapIsEmpty!38181 () Bool)

(assert (=> mapIsEmpty!38181 mapRes!38181))

(declare-fun b!1032837 () Bool)

(assert (=> b!1032837 (= e!583713 tp_is_empty!24471)))

(declare-fun mapNonEmpty!38181 () Bool)

(declare-fun tp!73349 () Bool)

(assert (=> mapNonEmpty!38181 (= mapRes!38181 (and tp!73349 e!583714))))

(declare-fun mapKey!38181 () (_ BitVec 32))

(declare-fun mapRest!38181 () (Array (_ BitVec 32) ValueCell!11532))

(declare-fun mapValue!38181 () ValueCell!11532)

(assert (=> mapNonEmpty!38181 (= mapRest!38175 (store mapRest!38181 mapKey!38181 mapValue!38181))))

(assert (= (and mapNonEmpty!38175 condMapEmpty!38181) mapIsEmpty!38181))

(assert (= (and mapNonEmpty!38175 (not condMapEmpty!38181)) mapNonEmpty!38181))

(assert (= (and mapNonEmpty!38181 ((_ is ValueCellFull!11532) mapValue!38181)) b!1032836))

(assert (= (and mapNonEmpty!38175 ((_ is ValueCellFull!11532) mapDefault!38181)) b!1032837))

(declare-fun m!953025 () Bool)

(assert (=> mapNonEmpty!38181 m!953025))

(check-sat tp_is_empty!24471 (not b!1032828) (not b!1032827) b_and!33237 (not mapNonEmpty!38181) (not d!123693) (not b!1032829) (not b_next!20751))
(check-sat b_and!33237 (not b_next!20751))
(get-model)

(declare-fun b!1032848 () Bool)

(declare-fun e!583726 () Bool)

(declare-fun contains!6032 (List!22016 (_ BitVec 64)) Bool)

(assert (=> b!1032848 (= e!583726 (contains!6032 Nil!22013 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032849 () Bool)

(declare-fun e!583725 () Bool)

(declare-fun call!43621 () Bool)

(assert (=> b!1032849 (= e!583725 call!43621)))

(declare-fun bm!43618 () Bool)

(declare-fun c!104288 () Bool)

(assert (=> bm!43618 (= call!43621 (arrayNoDuplicates!0 (_keys!11376 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104288 (Cons!22012 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000) Nil!22013) Nil!22013)))))

(declare-fun b!1032850 () Bool)

(declare-fun e!583723 () Bool)

(assert (=> b!1032850 (= e!583723 e!583725)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1032850 (= c!104288 (validKeyInArray!0 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032851 () Bool)

(assert (=> b!1032851 (= e!583725 call!43621)))

(declare-fun b!1032852 () Bool)

(declare-fun e!583724 () Bool)

(assert (=> b!1032852 (= e!583724 e!583723)))

(declare-fun res!690314 () Bool)

(assert (=> b!1032852 (=> (not res!690314) (not e!583723))))

(assert (=> b!1032852 (= res!690314 (not e!583726))))

(declare-fun res!690313 () Bool)

(assert (=> b!1032852 (=> (not res!690313) (not e!583726))))

(assert (=> b!1032852 (= res!690313 (validKeyInArray!0 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123697 () Bool)

(declare-fun res!690315 () Bool)

(assert (=> d!123697 (=> res!690315 e!583724)))

(assert (=> d!123697 (= res!690315 (bvsge #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))))))

(assert (=> d!123697 (= (arrayNoDuplicates!0 (_keys!11376 thiss!1427) #b00000000000000000000000000000000 Nil!22013) e!583724)))

(assert (= (and d!123697 (not res!690315)) b!1032852))

(assert (= (and b!1032852 res!690313) b!1032848))

(assert (= (and b!1032852 res!690314) b!1032850))

(assert (= (and b!1032850 c!104288) b!1032849))

(assert (= (and b!1032850 (not c!104288)) b!1032851))

(assert (= (or b!1032849 b!1032851) bm!43618))

(declare-fun m!953027 () Bool)

(assert (=> b!1032848 m!953027))

(assert (=> b!1032848 m!953027))

(declare-fun m!953029 () Bool)

(assert (=> b!1032848 m!953029))

(assert (=> bm!43618 m!953027))

(declare-fun m!953031 () Bool)

(assert (=> bm!43618 m!953031))

(assert (=> b!1032850 m!953027))

(assert (=> b!1032850 m!953027))

(declare-fun m!953033 () Bool)

(assert (=> b!1032850 m!953033))

(assert (=> b!1032852 m!953027))

(assert (=> b!1032852 m!953027))

(assert (=> b!1032852 m!953033))

(assert (=> b!1032829 d!123697))

(declare-fun b!1032863 () Bool)

(declare-fun res!690324 () Bool)

(declare-fun e!583729 () Bool)

(assert (=> b!1032863 (=> (not res!690324) (not e!583729))))

(declare-fun size!31818 (LongMapFixedSize!5658) (_ BitVec 32))

(assert (=> b!1032863 (= res!690324 (= (size!31818 thiss!1427) (bvadd (_size!2884 thiss!1427) (bvsdiv (bvadd (extraKeys!5935 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!123699 () Bool)

(declare-fun res!690327 () Bool)

(assert (=> d!123699 (=> (not res!690327) (not e!583729))))

(assert (=> d!123699 (= res!690327 (validMask!0 (mask!30031 thiss!1427)))))

(assert (=> d!123699 (= (simpleValid!400 thiss!1427) e!583729)))

(declare-fun b!1032861 () Bool)

(declare-fun res!690325 () Bool)

(assert (=> b!1032861 (=> (not res!690325) (not e!583729))))

(assert (=> b!1032861 (= res!690325 (and (= (size!31815 (_values!6226 thiss!1427)) (bvadd (mask!30031 thiss!1427) #b00000000000000000000000000000001)) (= (size!31814 (_keys!11376 thiss!1427)) (size!31815 (_values!6226 thiss!1427))) (bvsge (_size!2884 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2884 thiss!1427) (bvadd (mask!30031 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1032862 () Bool)

(declare-fun res!690326 () Bool)

(assert (=> b!1032862 (=> (not res!690326) (not e!583729))))

(assert (=> b!1032862 (= res!690326 (bvsge (size!31818 thiss!1427) (_size!2884 thiss!1427)))))

(declare-fun b!1032864 () Bool)

(assert (=> b!1032864 (= e!583729 (and (bvsge (extraKeys!5935 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5935 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2884 thiss!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!123699 res!690327) b!1032861))

(assert (= (and b!1032861 res!690325) b!1032862))

(assert (= (and b!1032862 res!690326) b!1032863))

(assert (= (and b!1032863 res!690324) b!1032864))

(declare-fun m!953035 () Bool)

(assert (=> b!1032863 m!953035))

(assert (=> d!123699 m!952999))

(assert (=> b!1032862 m!953035))

(assert (=> d!123693 d!123699))

(declare-fun bm!43621 () Bool)

(declare-fun call!43624 () (_ BitVec 32))

(assert (=> bm!43621 (= call!43624 (arrayCountValidKeys!0 (_keys!11376 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31814 (_keys!11376 thiss!1427))))))

(declare-fun d!123701 () Bool)

(declare-fun lt!456045 () (_ BitVec 32))

(assert (=> d!123701 (and (bvsge lt!456045 #b00000000000000000000000000000000) (bvsle lt!456045 (bvsub (size!31814 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!583734 () (_ BitVec 32))

(assert (=> d!123701 (= lt!456045 e!583734)))

(declare-fun c!104294 () Bool)

(assert (=> d!123701 (= c!104294 (bvsge #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))))))

(assert (=> d!123701 (and (bvsle #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31814 (_keys!11376 thiss!1427)) (size!31814 (_keys!11376 thiss!1427))))))

(assert (=> d!123701 (= (arrayCountValidKeys!0 (_keys!11376 thiss!1427) #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))) lt!456045)))

(declare-fun b!1032873 () Bool)

(declare-fun e!583735 () (_ BitVec 32))

(assert (=> b!1032873 (= e!583735 call!43624)))

(declare-fun b!1032874 () Bool)

(assert (=> b!1032874 (= e!583735 (bvadd #b00000000000000000000000000000001 call!43624))))

(declare-fun b!1032875 () Bool)

(assert (=> b!1032875 (= e!583734 #b00000000000000000000000000000000)))

(declare-fun b!1032876 () Bool)

(assert (=> b!1032876 (= e!583734 e!583735)))

(declare-fun c!104293 () Bool)

(assert (=> b!1032876 (= c!104293 (validKeyInArray!0 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123701 c!104294) b!1032875))

(assert (= (and d!123701 (not c!104294)) b!1032876))

(assert (= (and b!1032876 c!104293) b!1032874))

(assert (= (and b!1032876 (not c!104293)) b!1032873))

(assert (= (or b!1032874 b!1032873) bm!43621))

(declare-fun m!953037 () Bool)

(assert (=> bm!43621 m!953037))

(assert (=> b!1032876 m!953027))

(assert (=> b!1032876 m!953027))

(assert (=> b!1032876 m!953033))

(assert (=> b!1032827 d!123701))

(declare-fun b!1032885 () Bool)

(declare-fun e!583744 () Bool)

(declare-fun e!583743 () Bool)

(assert (=> b!1032885 (= e!583744 e!583743)))

(declare-fun c!104297 () Bool)

(assert (=> b!1032885 (= c!104297 (validKeyInArray!0 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032886 () Bool)

(declare-fun e!583742 () Bool)

(assert (=> b!1032886 (= e!583743 e!583742)))

(declare-fun lt!456054 () (_ BitVec 64))

(assert (=> b!1032886 (= lt!456054 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33802 0))(
  ( (Unit!33803) )
))
(declare-fun lt!456053 () Unit!33802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64998 (_ BitVec 64) (_ BitVec 32)) Unit!33802)

(assert (=> b!1032886 (= lt!456053 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11376 thiss!1427) lt!456054 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032886 (arrayContainsKey!0 (_keys!11376 thiss!1427) lt!456054 #b00000000000000000000000000000000)))

(declare-fun lt!456052 () Unit!33802)

(assert (=> b!1032886 (= lt!456052 lt!456053)))

(declare-fun res!690332 () Bool)

(declare-datatypes ((SeekEntryResult!9729 0))(
  ( (MissingZero!9729 (index!41286 (_ BitVec 32))) (Found!9729 (index!41287 (_ BitVec 32))) (Intermediate!9729 (undefined!10541 Bool) (index!41288 (_ BitVec 32)) (x!92084 (_ BitVec 32))) (Undefined!9729) (MissingVacant!9729 (index!41289 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64998 (_ BitVec 32)) SeekEntryResult!9729)

(assert (=> b!1032886 (= res!690332 (= (seekEntryOrOpen!0 (select (arr!31293 (_keys!11376 thiss!1427)) #b00000000000000000000000000000000) (_keys!11376 thiss!1427) (mask!30031 thiss!1427)) (Found!9729 #b00000000000000000000000000000000)))))

(assert (=> b!1032886 (=> (not res!690332) (not e!583742))))

(declare-fun bm!43624 () Bool)

(declare-fun call!43627 () Bool)

(assert (=> bm!43624 (= call!43627 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11376 thiss!1427) (mask!30031 thiss!1427)))))

(declare-fun b!1032887 () Bool)

(assert (=> b!1032887 (= e!583742 call!43627)))

(declare-fun b!1032888 () Bool)

(assert (=> b!1032888 (= e!583743 call!43627)))

(declare-fun d!123703 () Bool)

(declare-fun res!690333 () Bool)

(assert (=> d!123703 (=> res!690333 e!583744)))

(assert (=> d!123703 (= res!690333 (bvsge #b00000000000000000000000000000000 (size!31814 (_keys!11376 thiss!1427))))))

(assert (=> d!123703 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11376 thiss!1427) (mask!30031 thiss!1427)) e!583744)))

(assert (= (and d!123703 (not res!690333)) b!1032885))

(assert (= (and b!1032885 c!104297) b!1032886))

(assert (= (and b!1032885 (not c!104297)) b!1032888))

(assert (= (and b!1032886 res!690332) b!1032887))

(assert (= (or b!1032887 b!1032888) bm!43624))

(assert (=> b!1032885 m!953027))

(assert (=> b!1032885 m!953027))

(assert (=> b!1032885 m!953033))

(assert (=> b!1032886 m!953027))

(declare-fun m!953039 () Bool)

(assert (=> b!1032886 m!953039))

(declare-fun m!953041 () Bool)

(assert (=> b!1032886 m!953041))

(assert (=> b!1032886 m!953027))

(declare-fun m!953043 () Bool)

(assert (=> b!1032886 m!953043))

(declare-fun m!953045 () Bool)

(assert (=> bm!43624 m!953045))

(assert (=> b!1032828 d!123703))

(declare-fun b!1032889 () Bool)

(declare-fun e!583746 () Bool)

(assert (=> b!1032889 (= e!583746 tp_is_empty!24471)))

(declare-fun condMapEmpty!38182 () Bool)

(declare-fun mapDefault!38182 () ValueCell!11532)

(assert (=> mapNonEmpty!38181 (= condMapEmpty!38182 (= mapRest!38181 ((as const (Array (_ BitVec 32) ValueCell!11532)) mapDefault!38182)))))

(declare-fun e!583745 () Bool)

(declare-fun mapRes!38182 () Bool)

(assert (=> mapNonEmpty!38181 (= tp!73349 (and e!583745 mapRes!38182))))

(declare-fun mapIsEmpty!38182 () Bool)

(assert (=> mapIsEmpty!38182 mapRes!38182))

(declare-fun b!1032890 () Bool)

(assert (=> b!1032890 (= e!583745 tp_is_empty!24471)))

(declare-fun mapNonEmpty!38182 () Bool)

(declare-fun tp!73350 () Bool)

(assert (=> mapNonEmpty!38182 (= mapRes!38182 (and tp!73350 e!583746))))

(declare-fun mapValue!38182 () ValueCell!11532)

(declare-fun mapKey!38182 () (_ BitVec 32))

(declare-fun mapRest!38182 () (Array (_ BitVec 32) ValueCell!11532))

(assert (=> mapNonEmpty!38182 (= mapRest!38181 (store mapRest!38182 mapKey!38182 mapValue!38182))))

(assert (= (and mapNonEmpty!38181 condMapEmpty!38182) mapIsEmpty!38182))

(assert (= (and mapNonEmpty!38181 (not condMapEmpty!38182)) mapNonEmpty!38182))

(assert (= (and mapNonEmpty!38182 ((_ is ValueCellFull!11532) mapValue!38182)) b!1032889))

(assert (= (and mapNonEmpty!38181 ((_ is ValueCellFull!11532) mapDefault!38182)) b!1032890))

(declare-fun m!953047 () Bool)

(assert (=> mapNonEmpty!38182 m!953047))

(check-sat (not b!1032885) (not b!1032876) (not bm!43618) (not d!123699) (not bm!43624) (not b!1032848) (not b!1032862) (not b!1032863) (not b!1032850) b_and!33237 (not mapNonEmpty!38182) (not b!1032886) tp_is_empty!24471 (not b!1032852) (not b_next!20751) (not bm!43621))
(check-sat b_and!33237 (not b_next!20751))
