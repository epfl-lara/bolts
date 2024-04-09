; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90452 () Bool)

(assert start!90452)

(declare-fun b!1034761 () Bool)

(declare-fun b_free!20811 () Bool)

(declare-fun b_next!20811 () Bool)

(assert (=> b!1034761 (= b_free!20811 (not b_next!20811))))

(declare-fun tp!73543 () Bool)

(declare-fun b_and!33329 () Bool)

(assert (=> b!1034761 (= tp!73543 b_and!33329)))

(declare-fun b!1034755 () Bool)

(declare-fun e!585029 () Bool)

(declare-fun tp_is_empty!24531 () Bool)

(assert (=> b!1034755 (= e!585029 tp_is_empty!24531)))

(declare-fun mapNonEmpty!38288 () Bool)

(declare-fun mapRes!38288 () Bool)

(declare-fun tp!73542 () Bool)

(declare-fun e!585026 () Bool)

(assert (=> mapNonEmpty!38288 (= mapRes!38288 (and tp!73542 e!585026))))

(declare-datatypes ((V!37581 0))(
  ( (V!37582 (val!12316 Int)) )
))
(declare-datatypes ((ValueCell!11562 0))(
  ( (ValueCellFull!11562 (v!14897 V!37581)) (EmptyCell!11562) )
))
(declare-fun mapRest!38288 () (Array (_ BitVec 32) ValueCell!11562))

(declare-fun mapKey!38288 () (_ BitVec 32))

(declare-fun mapValue!38288 () ValueCell!11562)

(declare-datatypes ((array!65130 0))(
  ( (array!65131 (arr!31353 (Array (_ BitVec 32) (_ BitVec 64))) (size!31878 (_ BitVec 32))) )
))
(declare-datatypes ((array!65132 0))(
  ( (array!65133 (arr!31354 (Array (_ BitVec 32) ValueCell!11562)) (size!31879 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5718 0))(
  ( (LongMapFixedSize!5719 (defaultEntry!6237 Int) (mask!30098 (_ BitVec 32)) (extraKeys!5967 (_ BitVec 32)) (zeroValue!6071 V!37581) (minValue!6073 V!37581) (_size!2914 (_ BitVec 32)) (_keys!11417 array!65130) (_values!6260 array!65132) (_vacant!2914 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5718)

(assert (=> mapNonEmpty!38288 (= (arr!31354 (_values!6260 thiss!1427)) (store mapRest!38288 mapKey!38288 mapValue!38288))))

(declare-fun b!1034756 () Bool)

(declare-fun e!585025 () Bool)

(assert (=> b!1034756 (= e!585025 (and e!585029 mapRes!38288))))

(declare-fun condMapEmpty!38288 () Bool)

(declare-fun mapDefault!38288 () ValueCell!11562)

(assert (=> b!1034756 (= condMapEmpty!38288 (= (arr!31354 (_values!6260 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11562)) mapDefault!38288)))))

(declare-fun b!1034757 () Bool)

(assert (=> b!1034757 (= e!585026 tp_is_empty!24531)))

(declare-fun b!1034758 () Bool)

(declare-fun e!585027 () Bool)

(assert (=> b!1034758 (= e!585027 (not (= (size!31879 (_values!6260 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30098 thiss!1427)))))))

(declare-fun b!1034759 () Bool)

(declare-fun res!691117 () Bool)

(assert (=> b!1034759 (=> (not res!691117) (not e!585027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034759 (= res!691117 (validMask!0 (mask!30098 thiss!1427)))))

(declare-fun b!1034760 () Bool)

(declare-fun res!691119 () Bool)

(assert (=> b!1034760 (=> (not res!691119) (not e!585027))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034760 (= res!691119 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!38288 () Bool)

(assert (=> mapIsEmpty!38288 mapRes!38288))

(declare-fun res!691118 () Bool)

(assert (=> start!90452 (=> (not res!691118) (not e!585027))))

(declare-fun valid!2110 (LongMapFixedSize!5718) Bool)

(assert (=> start!90452 (= res!691118 (valid!2110 thiss!1427))))

(assert (=> start!90452 e!585027))

(declare-fun e!585028 () Bool)

(assert (=> start!90452 e!585028))

(assert (=> start!90452 true))

(declare-fun array_inv!24087 (array!65130) Bool)

(declare-fun array_inv!24088 (array!65132) Bool)

(assert (=> b!1034761 (= e!585028 (and tp!73543 tp_is_empty!24531 (array_inv!24087 (_keys!11417 thiss!1427)) (array_inv!24088 (_values!6260 thiss!1427)) e!585025))))

(assert (= (and start!90452 res!691118) b!1034760))

(assert (= (and b!1034760 res!691119) b!1034759))

(assert (= (and b!1034759 res!691117) b!1034758))

(assert (= (and b!1034756 condMapEmpty!38288) mapIsEmpty!38288))

(assert (= (and b!1034756 (not condMapEmpty!38288)) mapNonEmpty!38288))

(get-info :version)

(assert (= (and mapNonEmpty!38288 ((_ is ValueCellFull!11562) mapValue!38288)) b!1034757))

(assert (= (and b!1034756 ((_ is ValueCellFull!11562) mapDefault!38288)) b!1034755))

(assert (= b!1034761 b!1034756))

(assert (= start!90452 b!1034761))

(declare-fun m!955169 () Bool)

(assert (=> mapNonEmpty!38288 m!955169))

(declare-fun m!955171 () Bool)

(assert (=> b!1034759 m!955171))

(declare-fun m!955173 () Bool)

(assert (=> start!90452 m!955173))

(declare-fun m!955175 () Bool)

(assert (=> b!1034761 m!955175))

(declare-fun m!955177 () Bool)

(assert (=> b!1034761 m!955177))

(check-sat (not start!90452) (not b!1034759) (not b!1034761) (not b_next!20811) tp_is_empty!24531 (not mapNonEmpty!38288) b_and!33329)
(check-sat b_and!33329 (not b_next!20811))
(get-model)

(declare-fun d!124397 () Bool)

(assert (=> d!124397 (= (validMask!0 (mask!30098 thiss!1427)) (and (or (= (mask!30098 thiss!1427) #b00000000000000000000000000000111) (= (mask!30098 thiss!1427) #b00000000000000000000000000001111) (= (mask!30098 thiss!1427) #b00000000000000000000000000011111) (= (mask!30098 thiss!1427) #b00000000000000000000000000111111) (= (mask!30098 thiss!1427) #b00000000000000000000000001111111) (= (mask!30098 thiss!1427) #b00000000000000000000000011111111) (= (mask!30098 thiss!1427) #b00000000000000000000000111111111) (= (mask!30098 thiss!1427) #b00000000000000000000001111111111) (= (mask!30098 thiss!1427) #b00000000000000000000011111111111) (= (mask!30098 thiss!1427) #b00000000000000000000111111111111) (= (mask!30098 thiss!1427) #b00000000000000000001111111111111) (= (mask!30098 thiss!1427) #b00000000000000000011111111111111) (= (mask!30098 thiss!1427) #b00000000000000000111111111111111) (= (mask!30098 thiss!1427) #b00000000000000001111111111111111) (= (mask!30098 thiss!1427) #b00000000000000011111111111111111) (= (mask!30098 thiss!1427) #b00000000000000111111111111111111) (= (mask!30098 thiss!1427) #b00000000000001111111111111111111) (= (mask!30098 thiss!1427) #b00000000000011111111111111111111) (= (mask!30098 thiss!1427) #b00000000000111111111111111111111) (= (mask!30098 thiss!1427) #b00000000001111111111111111111111) (= (mask!30098 thiss!1427) #b00000000011111111111111111111111) (= (mask!30098 thiss!1427) #b00000000111111111111111111111111) (= (mask!30098 thiss!1427) #b00000001111111111111111111111111) (= (mask!30098 thiss!1427) #b00000011111111111111111111111111) (= (mask!30098 thiss!1427) #b00000111111111111111111111111111) (= (mask!30098 thiss!1427) #b00001111111111111111111111111111) (= (mask!30098 thiss!1427) #b00011111111111111111111111111111) (= (mask!30098 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30098 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1034759 d!124397))

(declare-fun d!124399 () Bool)

(assert (=> d!124399 (= (array_inv!24087 (_keys!11417 thiss!1427)) (bvsge (size!31878 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034761 d!124399))

(declare-fun d!124401 () Bool)

(assert (=> d!124401 (= (array_inv!24088 (_values!6260 thiss!1427)) (bvsge (size!31879 (_values!6260 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034761 d!124401))

(declare-fun d!124403 () Bool)

(declare-fun res!691135 () Bool)

(declare-fun e!585051 () Bool)

(assert (=> d!124403 (=> (not res!691135) (not e!585051))))

(declare-fun simpleValid!406 (LongMapFixedSize!5718) Bool)

(assert (=> d!124403 (= res!691135 (simpleValid!406 thiss!1427))))

(assert (=> d!124403 (= (valid!2110 thiss!1427) e!585051)))

(declare-fun b!1034789 () Bool)

(declare-fun res!691136 () Bool)

(assert (=> b!1034789 (=> (not res!691136) (not e!585051))))

(declare-fun arrayCountValidKeys!0 (array!65130 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1034789 (= res!691136 (= (arrayCountValidKeys!0 (_keys!11417 thiss!1427) #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))) (_size!2914 thiss!1427)))))

(declare-fun b!1034790 () Bool)

(declare-fun res!691137 () Bool)

(assert (=> b!1034790 (=> (not res!691137) (not e!585051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65130 (_ BitVec 32)) Bool)

(assert (=> b!1034790 (= res!691137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11417 thiss!1427) (mask!30098 thiss!1427)))))

(declare-fun b!1034791 () Bool)

(declare-datatypes ((List!22025 0))(
  ( (Nil!22022) (Cons!22021 (h!23223 (_ BitVec 64)) (t!31235 List!22025)) )
))
(declare-fun arrayNoDuplicates!0 (array!65130 (_ BitVec 32) List!22025) Bool)

(assert (=> b!1034791 (= e!585051 (arrayNoDuplicates!0 (_keys!11417 thiss!1427) #b00000000000000000000000000000000 Nil!22022))))

(assert (= (and d!124403 res!691135) b!1034789))

(assert (= (and b!1034789 res!691136) b!1034790))

(assert (= (and b!1034790 res!691137) b!1034791))

(declare-fun m!955189 () Bool)

(assert (=> d!124403 m!955189))

(declare-fun m!955191 () Bool)

(assert (=> b!1034789 m!955191))

(declare-fun m!955193 () Bool)

(assert (=> b!1034790 m!955193))

(declare-fun m!955195 () Bool)

(assert (=> b!1034791 m!955195))

(assert (=> start!90452 d!124403))

(declare-fun mapNonEmpty!38294 () Bool)

(declare-fun mapRes!38294 () Bool)

(declare-fun tp!73552 () Bool)

(declare-fun e!585057 () Bool)

(assert (=> mapNonEmpty!38294 (= mapRes!38294 (and tp!73552 e!585057))))

(declare-fun mapRest!38294 () (Array (_ BitVec 32) ValueCell!11562))

(declare-fun mapValue!38294 () ValueCell!11562)

(declare-fun mapKey!38294 () (_ BitVec 32))

(assert (=> mapNonEmpty!38294 (= mapRest!38288 (store mapRest!38294 mapKey!38294 mapValue!38294))))

(declare-fun condMapEmpty!38294 () Bool)

(declare-fun mapDefault!38294 () ValueCell!11562)

(assert (=> mapNonEmpty!38288 (= condMapEmpty!38294 (= mapRest!38288 ((as const (Array (_ BitVec 32) ValueCell!11562)) mapDefault!38294)))))

(declare-fun e!585056 () Bool)

(assert (=> mapNonEmpty!38288 (= tp!73542 (and e!585056 mapRes!38294))))

(declare-fun b!1034799 () Bool)

(assert (=> b!1034799 (= e!585056 tp_is_empty!24531)))

(declare-fun b!1034798 () Bool)

(assert (=> b!1034798 (= e!585057 tp_is_empty!24531)))

(declare-fun mapIsEmpty!38294 () Bool)

(assert (=> mapIsEmpty!38294 mapRes!38294))

(assert (= (and mapNonEmpty!38288 condMapEmpty!38294) mapIsEmpty!38294))

(assert (= (and mapNonEmpty!38288 (not condMapEmpty!38294)) mapNonEmpty!38294))

(assert (= (and mapNonEmpty!38294 ((_ is ValueCellFull!11562) mapValue!38294)) b!1034798))

(assert (= (and mapNonEmpty!38288 ((_ is ValueCellFull!11562) mapDefault!38294)) b!1034799))

(declare-fun m!955197 () Bool)

(assert (=> mapNonEmpty!38294 m!955197))

(check-sat (not b!1034790) (not b_next!20811) tp_is_empty!24531 (not d!124403) (not mapNonEmpty!38294) b_and!33329 (not b!1034791) (not b!1034789))
(check-sat b_and!33329 (not b_next!20811))
(get-model)

(declare-fun b!1034810 () Bool)

(declare-fun res!691149 () Bool)

(declare-fun e!585060 () Bool)

(assert (=> b!1034810 (=> (not res!691149) (not e!585060))))

(declare-fun size!31882 (LongMapFixedSize!5718) (_ BitVec 32))

(assert (=> b!1034810 (= res!691149 (= (size!31882 thiss!1427) (bvadd (_size!2914 thiss!1427) (bvsdiv (bvadd (extraKeys!5967 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1034811 () Bool)

(assert (=> b!1034811 (= e!585060 (and (bvsge (extraKeys!5967 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5967 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2914 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1034808 () Bool)

(declare-fun res!691147 () Bool)

(assert (=> b!1034808 (=> (not res!691147) (not e!585060))))

(assert (=> b!1034808 (= res!691147 (and (= (size!31879 (_values!6260 thiss!1427)) (bvadd (mask!30098 thiss!1427) #b00000000000000000000000000000001)) (= (size!31878 (_keys!11417 thiss!1427)) (size!31879 (_values!6260 thiss!1427))) (bvsge (_size!2914 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2914 thiss!1427) (bvadd (mask!30098 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1034809 () Bool)

(declare-fun res!691146 () Bool)

(assert (=> b!1034809 (=> (not res!691146) (not e!585060))))

(assert (=> b!1034809 (= res!691146 (bvsge (size!31882 thiss!1427) (_size!2914 thiss!1427)))))

(declare-fun d!124405 () Bool)

(declare-fun res!691148 () Bool)

(assert (=> d!124405 (=> (not res!691148) (not e!585060))))

(assert (=> d!124405 (= res!691148 (validMask!0 (mask!30098 thiss!1427)))))

(assert (=> d!124405 (= (simpleValid!406 thiss!1427) e!585060)))

(assert (= (and d!124405 res!691148) b!1034808))

(assert (= (and b!1034808 res!691147) b!1034809))

(assert (= (and b!1034809 res!691146) b!1034810))

(assert (= (and b!1034810 res!691149) b!1034811))

(declare-fun m!955199 () Bool)

(assert (=> b!1034810 m!955199))

(assert (=> b!1034809 m!955199))

(assert (=> d!124405 m!955171))

(assert (=> d!124403 d!124405))

(declare-fun d!124407 () Bool)

(declare-fun lt!456688 () (_ BitVec 32))

(assert (=> d!124407 (and (bvsge lt!456688 #b00000000000000000000000000000000) (bvsle lt!456688 (bvsub (size!31878 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!585066 () (_ BitVec 32))

(assert (=> d!124407 (= lt!456688 e!585066)))

(declare-fun c!104642 () Bool)

(assert (=> d!124407 (= c!104642 (bvsge #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))))))

(assert (=> d!124407 (and (bvsle #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31878 (_keys!11417 thiss!1427)) (size!31878 (_keys!11417 thiss!1427))))))

(assert (=> d!124407 (= (arrayCountValidKeys!0 (_keys!11417 thiss!1427) #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))) lt!456688)))

(declare-fun b!1034820 () Bool)

(assert (=> b!1034820 (= e!585066 #b00000000000000000000000000000000)))

(declare-fun bm!43756 () Bool)

(declare-fun call!43759 () (_ BitVec 32))

(assert (=> bm!43756 (= call!43759 (arrayCountValidKeys!0 (_keys!11417 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31878 (_keys!11417 thiss!1427))))))

(declare-fun b!1034821 () Bool)

(declare-fun e!585065 () (_ BitVec 32))

(assert (=> b!1034821 (= e!585066 e!585065)))

(declare-fun c!104641 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1034821 (= c!104641 (validKeyInArray!0 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034822 () Bool)

(assert (=> b!1034822 (= e!585065 (bvadd #b00000000000000000000000000000001 call!43759))))

(declare-fun b!1034823 () Bool)

(assert (=> b!1034823 (= e!585065 call!43759)))

(assert (= (and d!124407 c!104642) b!1034820))

(assert (= (and d!124407 (not c!104642)) b!1034821))

(assert (= (and b!1034821 c!104641) b!1034822))

(assert (= (and b!1034821 (not c!104641)) b!1034823))

(assert (= (or b!1034822 b!1034823) bm!43756))

(declare-fun m!955201 () Bool)

(assert (=> bm!43756 m!955201))

(declare-fun m!955203 () Bool)

(assert (=> b!1034821 m!955203))

(assert (=> b!1034821 m!955203))

(declare-fun m!955205 () Bool)

(assert (=> b!1034821 m!955205))

(assert (=> b!1034789 d!124407))

(declare-fun b!1034834 () Bool)

(declare-fun e!585078 () Bool)

(declare-fun contains!6039 (List!22025 (_ BitVec 64)) Bool)

(assert (=> b!1034834 (= e!585078 (contains!6039 Nil!22022 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034835 () Bool)

(declare-fun e!585077 () Bool)

(declare-fun e!585076 () Bool)

(assert (=> b!1034835 (= e!585077 e!585076)))

(declare-fun c!104645 () Bool)

(assert (=> b!1034835 (= c!104645 (validKeyInArray!0 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124409 () Bool)

(declare-fun res!691158 () Bool)

(declare-fun e!585075 () Bool)

(assert (=> d!124409 (=> res!691158 e!585075)))

(assert (=> d!124409 (= res!691158 (bvsge #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))))))

(assert (=> d!124409 (= (arrayNoDuplicates!0 (_keys!11417 thiss!1427) #b00000000000000000000000000000000 Nil!22022) e!585075)))

(declare-fun b!1034836 () Bool)

(assert (=> b!1034836 (= e!585075 e!585077)))

(declare-fun res!691157 () Bool)

(assert (=> b!1034836 (=> (not res!691157) (not e!585077))))

(assert (=> b!1034836 (= res!691157 (not e!585078))))

(declare-fun res!691156 () Bool)

(assert (=> b!1034836 (=> (not res!691156) (not e!585078))))

(assert (=> b!1034836 (= res!691156 (validKeyInArray!0 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43759 () Bool)

(declare-fun call!43762 () Bool)

(assert (=> bm!43759 (= call!43762 (arrayNoDuplicates!0 (_keys!11417 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104645 (Cons!22021 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000) Nil!22022) Nil!22022)))))

(declare-fun b!1034837 () Bool)

(assert (=> b!1034837 (= e!585076 call!43762)))

(declare-fun b!1034838 () Bool)

(assert (=> b!1034838 (= e!585076 call!43762)))

(assert (= (and d!124409 (not res!691158)) b!1034836))

(assert (= (and b!1034836 res!691156) b!1034834))

(assert (= (and b!1034836 res!691157) b!1034835))

(assert (= (and b!1034835 c!104645) b!1034837))

(assert (= (and b!1034835 (not c!104645)) b!1034838))

(assert (= (or b!1034837 b!1034838) bm!43759))

(assert (=> b!1034834 m!955203))

(assert (=> b!1034834 m!955203))

(declare-fun m!955207 () Bool)

(assert (=> b!1034834 m!955207))

(assert (=> b!1034835 m!955203))

(assert (=> b!1034835 m!955203))

(assert (=> b!1034835 m!955205))

(assert (=> b!1034836 m!955203))

(assert (=> b!1034836 m!955203))

(assert (=> b!1034836 m!955205))

(assert (=> bm!43759 m!955203))

(declare-fun m!955209 () Bool)

(assert (=> bm!43759 m!955209))

(assert (=> b!1034791 d!124409))

(declare-fun d!124411 () Bool)

(declare-fun res!691163 () Bool)

(declare-fun e!585086 () Bool)

(assert (=> d!124411 (=> res!691163 e!585086)))

(assert (=> d!124411 (= res!691163 (bvsge #b00000000000000000000000000000000 (size!31878 (_keys!11417 thiss!1427))))))

(assert (=> d!124411 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11417 thiss!1427) (mask!30098 thiss!1427)) e!585086)))

(declare-fun b!1034847 () Bool)

(declare-fun e!585087 () Bool)

(assert (=> b!1034847 (= e!585086 e!585087)))

(declare-fun c!104648 () Bool)

(assert (=> b!1034847 (= c!104648 (validKeyInArray!0 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034848 () Bool)

(declare-fun call!43765 () Bool)

(assert (=> b!1034848 (= e!585087 call!43765)))

(declare-fun bm!43762 () Bool)

(assert (=> bm!43762 (= call!43765 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11417 thiss!1427) (mask!30098 thiss!1427)))))

(declare-fun b!1034849 () Bool)

(declare-fun e!585085 () Bool)

(assert (=> b!1034849 (= e!585087 e!585085)))

(declare-fun lt!456696 () (_ BitVec 64))

(assert (=> b!1034849 (= lt!456696 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33859 0))(
  ( (Unit!33860) )
))
(declare-fun lt!456695 () Unit!33859)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65130 (_ BitVec 64) (_ BitVec 32)) Unit!33859)

(assert (=> b!1034849 (= lt!456695 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11417 thiss!1427) lt!456696 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1034849 (arrayContainsKey!0 (_keys!11417 thiss!1427) lt!456696 #b00000000000000000000000000000000)))

(declare-fun lt!456697 () Unit!33859)

(assert (=> b!1034849 (= lt!456697 lt!456695)))

(declare-fun res!691164 () Bool)

(declare-datatypes ((SeekEntryResult!9735 0))(
  ( (MissingZero!9735 (index!41310 (_ BitVec 32))) (Found!9735 (index!41311 (_ BitVec 32))) (Intermediate!9735 (undefined!10547 Bool) (index!41312 (_ BitVec 32)) (x!92269 (_ BitVec 32))) (Undefined!9735) (MissingVacant!9735 (index!41313 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65130 (_ BitVec 32)) SeekEntryResult!9735)

(assert (=> b!1034849 (= res!691164 (= (seekEntryOrOpen!0 (select (arr!31353 (_keys!11417 thiss!1427)) #b00000000000000000000000000000000) (_keys!11417 thiss!1427) (mask!30098 thiss!1427)) (Found!9735 #b00000000000000000000000000000000)))))

(assert (=> b!1034849 (=> (not res!691164) (not e!585085))))

(declare-fun b!1034850 () Bool)

(assert (=> b!1034850 (= e!585085 call!43765)))

(assert (= (and d!124411 (not res!691163)) b!1034847))

(assert (= (and b!1034847 c!104648) b!1034849))

(assert (= (and b!1034847 (not c!104648)) b!1034848))

(assert (= (and b!1034849 res!691164) b!1034850))

(assert (= (or b!1034850 b!1034848) bm!43762))

(assert (=> b!1034847 m!955203))

(assert (=> b!1034847 m!955203))

(assert (=> b!1034847 m!955205))

(declare-fun m!955211 () Bool)

(assert (=> bm!43762 m!955211))

(assert (=> b!1034849 m!955203))

(declare-fun m!955213 () Bool)

(assert (=> b!1034849 m!955213))

(declare-fun m!955215 () Bool)

(assert (=> b!1034849 m!955215))

(assert (=> b!1034849 m!955203))

(declare-fun m!955217 () Bool)

(assert (=> b!1034849 m!955217))

(assert (=> b!1034790 d!124411))

(declare-fun mapNonEmpty!38295 () Bool)

(declare-fun mapRes!38295 () Bool)

(declare-fun tp!73553 () Bool)

(declare-fun e!585089 () Bool)

(assert (=> mapNonEmpty!38295 (= mapRes!38295 (and tp!73553 e!585089))))

(declare-fun mapValue!38295 () ValueCell!11562)

(declare-fun mapKey!38295 () (_ BitVec 32))

(declare-fun mapRest!38295 () (Array (_ BitVec 32) ValueCell!11562))

(assert (=> mapNonEmpty!38295 (= mapRest!38294 (store mapRest!38295 mapKey!38295 mapValue!38295))))

(declare-fun condMapEmpty!38295 () Bool)

(declare-fun mapDefault!38295 () ValueCell!11562)

(assert (=> mapNonEmpty!38294 (= condMapEmpty!38295 (= mapRest!38294 ((as const (Array (_ BitVec 32) ValueCell!11562)) mapDefault!38295)))))

(declare-fun e!585088 () Bool)

(assert (=> mapNonEmpty!38294 (= tp!73552 (and e!585088 mapRes!38295))))

(declare-fun b!1034852 () Bool)

(assert (=> b!1034852 (= e!585088 tp_is_empty!24531)))

(declare-fun b!1034851 () Bool)

(assert (=> b!1034851 (= e!585089 tp_is_empty!24531)))

(declare-fun mapIsEmpty!38295 () Bool)

(assert (=> mapIsEmpty!38295 mapRes!38295))

(assert (= (and mapNonEmpty!38294 condMapEmpty!38295) mapIsEmpty!38295))

(assert (= (and mapNonEmpty!38294 (not condMapEmpty!38295)) mapNonEmpty!38295))

(assert (= (and mapNonEmpty!38295 ((_ is ValueCellFull!11562) mapValue!38295)) b!1034851))

(assert (= (and mapNonEmpty!38294 ((_ is ValueCellFull!11562) mapDefault!38295)) b!1034852))

(declare-fun m!955219 () Bool)

(assert (=> mapNonEmpty!38295 m!955219))

(check-sat (not b!1034847) (not mapNonEmpty!38295) (not b_next!20811) (not b!1034835) (not d!124405) (not b!1034836) (not b!1034821) (not bm!43756) (not bm!43762) (not b!1034809) tp_is_empty!24531 (not b!1034834) b_and!33329 (not bm!43759) (not b!1034810) (not b!1034849))
(check-sat b_and!33329 (not b_next!20811))
