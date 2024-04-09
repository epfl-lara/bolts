; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89354 () Bool)

(assert start!89354)

(declare-fun b!1023986 () Bool)

(declare-fun b_free!20343 () Bool)

(declare-fun b_next!20343 () Bool)

(assert (=> b!1023986 (= b_free!20343 (not b_next!20343))))

(declare-fun tp!72068 () Bool)

(declare-fun b_and!32607 () Bool)

(assert (=> b!1023986 (= tp!72068 b_and!32607)))

(declare-fun b!1023980 () Bool)

(declare-fun e!577173 () Bool)

(declare-fun e!577174 () Bool)

(declare-fun mapRes!37516 () Bool)

(assert (=> b!1023980 (= e!577173 (and e!577174 mapRes!37516))))

(declare-fun condMapEmpty!37516 () Bool)

(declare-datatypes ((V!36957 0))(
  ( (V!36958 (val!12082 Int)) )
))
(declare-datatypes ((ValueCell!11328 0))(
  ( (ValueCellFull!11328 (v!14652 V!36957)) (EmptyCell!11328) )
))
(declare-datatypes ((array!64156 0))(
  ( (array!64157 (arr!30885 (Array (_ BitVec 32) (_ BitVec 64))) (size!31398 (_ BitVec 32))) )
))
(declare-datatypes ((array!64158 0))(
  ( (array!64159 (arr!30886 (Array (_ BitVec 32) ValueCell!11328)) (size!31399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5250 0))(
  ( (LongMapFixedSize!5251 (defaultEntry!5977 Int) (mask!29611 (_ BitVec 32)) (extraKeys!5709 (_ BitVec 32)) (zeroValue!5813 V!36957) (minValue!5813 V!36957) (_size!2680 (_ BitVec 32)) (_keys!11120 array!64156) (_values!6000 array!64158) (_vacant!2680 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5250)

(declare-fun mapDefault!37516 () ValueCell!11328)

(assert (=> b!1023980 (= condMapEmpty!37516 (= (arr!30886 (_values!6000 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11328)) mapDefault!37516)))))

(declare-fun b!1023981 () Bool)

(declare-fun res!685737 () Bool)

(declare-fun e!577175 () Bool)

(assert (=> b!1023981 (=> (not res!685737) (not e!577175))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023981 (= res!685737 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1023982 () Bool)

(declare-fun e!577172 () Bool)

(declare-fun tp_is_empty!24063 () Bool)

(assert (=> b!1023982 (= e!577172 tp_is_empty!24063)))

(declare-fun res!685735 () Bool)

(assert (=> start!89354 (=> (not res!685735) (not e!577175))))

(declare-fun valid!1954 (LongMapFixedSize!5250) Bool)

(assert (=> start!89354 (= res!685735 (valid!1954 thiss!1427))))

(assert (=> start!89354 e!577175))

(declare-fun e!577171 () Bool)

(assert (=> start!89354 e!577171))

(assert (=> start!89354 true))

(declare-fun mapIsEmpty!37516 () Bool)

(assert (=> mapIsEmpty!37516 mapRes!37516))

(declare-fun b!1023983 () Bool)

(declare-fun res!685736 () Bool)

(assert (=> b!1023983 (=> (not res!685736) (not e!577175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023983 (= res!685736 (validMask!0 (mask!29611 thiss!1427)))))

(declare-fun b!1023984 () Bool)

(assert (=> b!1023984 (= e!577174 tp_is_empty!24063)))

(declare-fun b!1023985 () Bool)

(assert (=> b!1023985 (= e!577175 (not (= (size!31398 (_keys!11120 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29611 thiss!1427)))))))

(declare-fun mapNonEmpty!37516 () Bool)

(declare-fun tp!72069 () Bool)

(assert (=> mapNonEmpty!37516 (= mapRes!37516 (and tp!72069 e!577172))))

(declare-fun mapValue!37516 () ValueCell!11328)

(declare-fun mapRest!37516 () (Array (_ BitVec 32) ValueCell!11328))

(declare-fun mapKey!37516 () (_ BitVec 32))

(assert (=> mapNonEmpty!37516 (= (arr!30886 (_values!6000 thiss!1427)) (store mapRest!37516 mapKey!37516 mapValue!37516))))

(declare-fun array_inv!23791 (array!64156) Bool)

(declare-fun array_inv!23792 (array!64158) Bool)

(assert (=> b!1023986 (= e!577171 (and tp!72068 tp_is_empty!24063 (array_inv!23791 (_keys!11120 thiss!1427)) (array_inv!23792 (_values!6000 thiss!1427)) e!577173))))

(assert (= (and start!89354 res!685735) b!1023981))

(assert (= (and b!1023981 res!685737) b!1023983))

(assert (= (and b!1023983 res!685736) b!1023985))

(assert (= (and b!1023980 condMapEmpty!37516) mapIsEmpty!37516))

(assert (= (and b!1023980 (not condMapEmpty!37516)) mapNonEmpty!37516))

(get-info :version)

(assert (= (and mapNonEmpty!37516 ((_ is ValueCellFull!11328) mapValue!37516)) b!1023982))

(assert (= (and b!1023980 ((_ is ValueCellFull!11328) mapDefault!37516)) b!1023984))

(assert (= b!1023986 b!1023980))

(assert (= start!89354 b!1023986))

(declare-fun m!942629 () Bool)

(assert (=> start!89354 m!942629))

(declare-fun m!942631 () Bool)

(assert (=> b!1023983 m!942631))

(declare-fun m!942633 () Bool)

(assert (=> mapNonEmpty!37516 m!942633))

(declare-fun m!942635 () Bool)

(assert (=> b!1023986 m!942635))

(declare-fun m!942637 () Bool)

(assert (=> b!1023986 m!942637))

(check-sat (not b!1023983) (not start!89354) b_and!32607 (not b_next!20343) (not b!1023986) (not mapNonEmpty!37516) tp_is_empty!24063)
(check-sat b_and!32607 (not b_next!20343))
(get-model)

(declare-fun d!122559 () Bool)

(assert (=> d!122559 (= (array_inv!23791 (_keys!11120 thiss!1427)) (bvsge (size!31398 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1023986 d!122559))

(declare-fun d!122561 () Bool)

(assert (=> d!122561 (= (array_inv!23792 (_values!6000 thiss!1427)) (bvsge (size!31399 (_values!6000 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1023986 d!122561))

(declare-fun d!122563 () Bool)

(declare-fun res!685753 () Bool)

(declare-fun e!577197 () Bool)

(assert (=> d!122563 (=> (not res!685753) (not e!577197))))

(declare-fun simpleValid!387 (LongMapFixedSize!5250) Bool)

(assert (=> d!122563 (= res!685753 (simpleValid!387 thiss!1427))))

(assert (=> d!122563 (= (valid!1954 thiss!1427) e!577197)))

(declare-fun b!1024014 () Bool)

(declare-fun res!685754 () Bool)

(assert (=> b!1024014 (=> (not res!685754) (not e!577197))))

(declare-fun arrayCountValidKeys!0 (array!64156 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024014 (= res!685754 (= (arrayCountValidKeys!0 (_keys!11120 thiss!1427) #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))) (_size!2680 thiss!1427)))))

(declare-fun b!1024015 () Bool)

(declare-fun res!685755 () Bool)

(assert (=> b!1024015 (=> (not res!685755) (not e!577197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64156 (_ BitVec 32)) Bool)

(assert (=> b!1024015 (= res!685755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11120 thiss!1427) (mask!29611 thiss!1427)))))

(declare-fun b!1024016 () Bool)

(declare-datatypes ((List!21827 0))(
  ( (Nil!21824) (Cons!21823 (h!23021 (_ BitVec 64)) (t!30896 List!21827)) )
))
(declare-fun arrayNoDuplicates!0 (array!64156 (_ BitVec 32) List!21827) Bool)

(assert (=> b!1024016 (= e!577197 (arrayNoDuplicates!0 (_keys!11120 thiss!1427) #b00000000000000000000000000000000 Nil!21824))))

(assert (= (and d!122563 res!685753) b!1024014))

(assert (= (and b!1024014 res!685754) b!1024015))

(assert (= (and b!1024015 res!685755) b!1024016))

(declare-fun m!942649 () Bool)

(assert (=> d!122563 m!942649))

(declare-fun m!942651 () Bool)

(assert (=> b!1024014 m!942651))

(declare-fun m!942653 () Bool)

(assert (=> b!1024015 m!942653))

(declare-fun m!942655 () Bool)

(assert (=> b!1024016 m!942655))

(assert (=> start!89354 d!122563))

(declare-fun d!122565 () Bool)

(assert (=> d!122565 (= (validMask!0 (mask!29611 thiss!1427)) (and (or (= (mask!29611 thiss!1427) #b00000000000000000000000000000111) (= (mask!29611 thiss!1427) #b00000000000000000000000000001111) (= (mask!29611 thiss!1427) #b00000000000000000000000000011111) (= (mask!29611 thiss!1427) #b00000000000000000000000000111111) (= (mask!29611 thiss!1427) #b00000000000000000000000001111111) (= (mask!29611 thiss!1427) #b00000000000000000000000011111111) (= (mask!29611 thiss!1427) #b00000000000000000000000111111111) (= (mask!29611 thiss!1427) #b00000000000000000000001111111111) (= (mask!29611 thiss!1427) #b00000000000000000000011111111111) (= (mask!29611 thiss!1427) #b00000000000000000000111111111111) (= (mask!29611 thiss!1427) #b00000000000000000001111111111111) (= (mask!29611 thiss!1427) #b00000000000000000011111111111111) (= (mask!29611 thiss!1427) #b00000000000000000111111111111111) (= (mask!29611 thiss!1427) #b00000000000000001111111111111111) (= (mask!29611 thiss!1427) #b00000000000000011111111111111111) (= (mask!29611 thiss!1427) #b00000000000000111111111111111111) (= (mask!29611 thiss!1427) #b00000000000001111111111111111111) (= (mask!29611 thiss!1427) #b00000000000011111111111111111111) (= (mask!29611 thiss!1427) #b00000000000111111111111111111111) (= (mask!29611 thiss!1427) #b00000000001111111111111111111111) (= (mask!29611 thiss!1427) #b00000000011111111111111111111111) (= (mask!29611 thiss!1427) #b00000000111111111111111111111111) (= (mask!29611 thiss!1427) #b00000001111111111111111111111111) (= (mask!29611 thiss!1427) #b00000011111111111111111111111111) (= (mask!29611 thiss!1427) #b00000111111111111111111111111111) (= (mask!29611 thiss!1427) #b00001111111111111111111111111111) (= (mask!29611 thiss!1427) #b00011111111111111111111111111111) (= (mask!29611 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29611 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1023983 d!122565))

(declare-fun mapIsEmpty!37522 () Bool)

(declare-fun mapRes!37522 () Bool)

(assert (=> mapIsEmpty!37522 mapRes!37522))

(declare-fun b!1024023 () Bool)

(declare-fun e!577202 () Bool)

(assert (=> b!1024023 (= e!577202 tp_is_empty!24063)))

(declare-fun b!1024024 () Bool)

(declare-fun e!577203 () Bool)

(assert (=> b!1024024 (= e!577203 tp_is_empty!24063)))

(declare-fun mapNonEmpty!37522 () Bool)

(declare-fun tp!72078 () Bool)

(assert (=> mapNonEmpty!37522 (= mapRes!37522 (and tp!72078 e!577202))))

(declare-fun mapKey!37522 () (_ BitVec 32))

(declare-fun mapRest!37522 () (Array (_ BitVec 32) ValueCell!11328))

(declare-fun mapValue!37522 () ValueCell!11328)

(assert (=> mapNonEmpty!37522 (= mapRest!37516 (store mapRest!37522 mapKey!37522 mapValue!37522))))

(declare-fun condMapEmpty!37522 () Bool)

(declare-fun mapDefault!37522 () ValueCell!11328)

(assert (=> mapNonEmpty!37516 (= condMapEmpty!37522 (= mapRest!37516 ((as const (Array (_ BitVec 32) ValueCell!11328)) mapDefault!37522)))))

(assert (=> mapNonEmpty!37516 (= tp!72069 (and e!577203 mapRes!37522))))

(assert (= (and mapNonEmpty!37516 condMapEmpty!37522) mapIsEmpty!37522))

(assert (= (and mapNonEmpty!37516 (not condMapEmpty!37522)) mapNonEmpty!37522))

(assert (= (and mapNonEmpty!37522 ((_ is ValueCellFull!11328) mapValue!37522)) b!1024023))

(assert (= (and mapNonEmpty!37516 ((_ is ValueCellFull!11328) mapDefault!37522)) b!1024024))

(declare-fun m!942657 () Bool)

(assert (=> mapNonEmpty!37522 m!942657))

(check-sat (not b!1024014) (not b!1024016) b_and!32607 (not b_next!20343) (not b!1024015) tp_is_empty!24063 (not d!122563) (not mapNonEmpty!37522))
(check-sat b_and!32607 (not b_next!20343))
(get-model)

(declare-fun b!1024035 () Bool)

(declare-fun e!577214 () Bool)

(declare-fun call!43237 () Bool)

(assert (=> b!1024035 (= e!577214 call!43237)))

(declare-fun b!1024036 () Bool)

(declare-fun e!577215 () Bool)

(declare-fun e!577213 () Bool)

(assert (=> b!1024036 (= e!577215 e!577213)))

(declare-fun res!685763 () Bool)

(assert (=> b!1024036 (=> (not res!685763) (not e!577213))))

(declare-fun e!577212 () Bool)

(assert (=> b!1024036 (= res!685763 (not e!577212))))

(declare-fun res!685762 () Bool)

(assert (=> b!1024036 (=> (not res!685762) (not e!577212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1024036 (= res!685762 (validKeyInArray!0 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1024037 () Bool)

(declare-fun contains!5956 (List!21827 (_ BitVec 64)) Bool)

(assert (=> b!1024037 (= e!577212 (contains!5956 Nil!21824 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1024038 () Bool)

(assert (=> b!1024038 (= e!577213 e!577214)))

(declare-fun c!103509 () Bool)

(assert (=> b!1024038 (= c!103509 (validKeyInArray!0 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43234 () Bool)

(assert (=> bm!43234 (= call!43237 (arrayNoDuplicates!0 (_keys!11120 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103509 (Cons!21823 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000) Nil!21824) Nil!21824)))))

(declare-fun b!1024039 () Bool)

(assert (=> b!1024039 (= e!577214 call!43237)))

(declare-fun d!122567 () Bool)

(declare-fun res!685764 () Bool)

(assert (=> d!122567 (=> res!685764 e!577215)))

(assert (=> d!122567 (= res!685764 (bvsge #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))))))

(assert (=> d!122567 (= (arrayNoDuplicates!0 (_keys!11120 thiss!1427) #b00000000000000000000000000000000 Nil!21824) e!577215)))

(assert (= (and d!122567 (not res!685764)) b!1024036))

(assert (= (and b!1024036 res!685762) b!1024037))

(assert (= (and b!1024036 res!685763) b!1024038))

(assert (= (and b!1024038 c!103509) b!1024035))

(assert (= (and b!1024038 (not c!103509)) b!1024039))

(assert (= (or b!1024035 b!1024039) bm!43234))

(declare-fun m!942659 () Bool)

(assert (=> b!1024036 m!942659))

(assert (=> b!1024036 m!942659))

(declare-fun m!942661 () Bool)

(assert (=> b!1024036 m!942661))

(assert (=> b!1024037 m!942659))

(assert (=> b!1024037 m!942659))

(declare-fun m!942663 () Bool)

(assert (=> b!1024037 m!942663))

(assert (=> b!1024038 m!942659))

(assert (=> b!1024038 m!942659))

(assert (=> b!1024038 m!942661))

(assert (=> bm!43234 m!942659))

(declare-fun m!942665 () Bool)

(assert (=> bm!43234 m!942665))

(assert (=> b!1024016 d!122567))

(declare-fun b!1024048 () Bool)

(declare-fun e!577220 () (_ BitVec 32))

(declare-fun e!577221 () (_ BitVec 32))

(assert (=> b!1024048 (= e!577220 e!577221)))

(declare-fun c!103514 () Bool)

(assert (=> b!1024048 (= c!103514 (validKeyInArray!0 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!122569 () Bool)

(declare-fun lt!450529 () (_ BitVec 32))

(assert (=> d!122569 (and (bvsge lt!450529 #b00000000000000000000000000000000) (bvsle lt!450529 (bvsub (size!31398 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!122569 (= lt!450529 e!577220)))

(declare-fun c!103515 () Bool)

(assert (=> d!122569 (= c!103515 (bvsge #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))))))

(assert (=> d!122569 (and (bvsle #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31398 (_keys!11120 thiss!1427)) (size!31398 (_keys!11120 thiss!1427))))))

(assert (=> d!122569 (= (arrayCountValidKeys!0 (_keys!11120 thiss!1427) #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))) lt!450529)))

(declare-fun b!1024049 () Bool)

(assert (=> b!1024049 (= e!577220 #b00000000000000000000000000000000)))

(declare-fun b!1024050 () Bool)

(declare-fun call!43240 () (_ BitVec 32))

(assert (=> b!1024050 (= e!577221 (bvadd #b00000000000000000000000000000001 call!43240))))

(declare-fun bm!43237 () Bool)

(assert (=> bm!43237 (= call!43240 (arrayCountValidKeys!0 (_keys!11120 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31398 (_keys!11120 thiss!1427))))))

(declare-fun b!1024051 () Bool)

(assert (=> b!1024051 (= e!577221 call!43240)))

(assert (= (and d!122569 c!103515) b!1024049))

(assert (= (and d!122569 (not c!103515)) b!1024048))

(assert (= (and b!1024048 c!103514) b!1024050))

(assert (= (and b!1024048 (not c!103514)) b!1024051))

(assert (= (or b!1024050 b!1024051) bm!43237))

(assert (=> b!1024048 m!942659))

(assert (=> b!1024048 m!942659))

(assert (=> b!1024048 m!942661))

(declare-fun m!942667 () Bool)

(assert (=> bm!43237 m!942667))

(assert (=> b!1024014 d!122569))

(declare-fun b!1024062 () Bool)

(declare-fun res!685775 () Bool)

(declare-fun e!577224 () Bool)

(assert (=> b!1024062 (=> (not res!685775) (not e!577224))))

(declare-fun size!31402 (LongMapFixedSize!5250) (_ BitVec 32))

(assert (=> b!1024062 (= res!685775 (= (size!31402 thiss!1427) (bvadd (_size!2680 thiss!1427) (bvsdiv (bvadd (extraKeys!5709 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1024060 () Bool)

(declare-fun res!685774 () Bool)

(assert (=> b!1024060 (=> (not res!685774) (not e!577224))))

(assert (=> b!1024060 (= res!685774 (and (= (size!31399 (_values!6000 thiss!1427)) (bvadd (mask!29611 thiss!1427) #b00000000000000000000000000000001)) (= (size!31398 (_keys!11120 thiss!1427)) (size!31399 (_values!6000 thiss!1427))) (bvsge (_size!2680 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2680 thiss!1427) (bvadd (mask!29611 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1024063 () Bool)

(assert (=> b!1024063 (= e!577224 (and (bvsge (extraKeys!5709 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5709 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2680 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1024061 () Bool)

(declare-fun res!685776 () Bool)

(assert (=> b!1024061 (=> (not res!685776) (not e!577224))))

(assert (=> b!1024061 (= res!685776 (bvsge (size!31402 thiss!1427) (_size!2680 thiss!1427)))))

(declare-fun d!122571 () Bool)

(declare-fun res!685773 () Bool)

(assert (=> d!122571 (=> (not res!685773) (not e!577224))))

(assert (=> d!122571 (= res!685773 (validMask!0 (mask!29611 thiss!1427)))))

(assert (=> d!122571 (= (simpleValid!387 thiss!1427) e!577224)))

(assert (= (and d!122571 res!685773) b!1024060))

(assert (= (and b!1024060 res!685774) b!1024061))

(assert (= (and b!1024061 res!685776) b!1024062))

(assert (= (and b!1024062 res!685775) b!1024063))

(declare-fun m!942669 () Bool)

(assert (=> b!1024062 m!942669))

(assert (=> b!1024061 m!942669))

(assert (=> d!122571 m!942631))

(assert (=> d!122563 d!122571))

(declare-fun d!122573 () Bool)

(declare-fun res!685781 () Bool)

(declare-fun e!577232 () Bool)

(assert (=> d!122573 (=> res!685781 e!577232)))

(assert (=> d!122573 (= res!685781 (bvsge #b00000000000000000000000000000000 (size!31398 (_keys!11120 thiss!1427))))))

(assert (=> d!122573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11120 thiss!1427) (mask!29611 thiss!1427)) e!577232)))

(declare-fun b!1024072 () Bool)

(declare-fun e!577231 () Bool)

(assert (=> b!1024072 (= e!577232 e!577231)))

(declare-fun c!103518 () Bool)

(assert (=> b!1024072 (= c!103518 (validKeyInArray!0 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1024073 () Bool)

(declare-fun e!577233 () Bool)

(declare-fun call!43243 () Bool)

(assert (=> b!1024073 (= e!577233 call!43243)))

(declare-fun b!1024074 () Bool)

(assert (=> b!1024074 (= e!577231 e!577233)))

(declare-fun lt!450536 () (_ BitVec 64))

(assert (=> b!1024074 (= lt!450536 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33310 0))(
  ( (Unit!33311) )
))
(declare-fun lt!450537 () Unit!33310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64156 (_ BitVec 64) (_ BitVec 32)) Unit!33310)

(assert (=> b!1024074 (= lt!450537 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11120 thiss!1427) lt!450536 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1024074 (arrayContainsKey!0 (_keys!11120 thiss!1427) lt!450536 #b00000000000000000000000000000000)))

(declare-fun lt!450538 () Unit!33310)

(assert (=> b!1024074 (= lt!450538 lt!450537)))

(declare-fun res!685782 () Bool)

(declare-datatypes ((SeekEntryResult!9577 0))(
  ( (MissingZero!9577 (index!40678 (_ BitVec 32))) (Found!9577 (index!40679 (_ BitVec 32))) (Intermediate!9577 (undefined!10389 Bool) (index!40680 (_ BitVec 32)) (x!91018 (_ BitVec 32))) (Undefined!9577) (MissingVacant!9577 (index!40681 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64156 (_ BitVec 32)) SeekEntryResult!9577)

(assert (=> b!1024074 (= res!685782 (= (seekEntryOrOpen!0 (select (arr!30885 (_keys!11120 thiss!1427)) #b00000000000000000000000000000000) (_keys!11120 thiss!1427) (mask!29611 thiss!1427)) (Found!9577 #b00000000000000000000000000000000)))))

(assert (=> b!1024074 (=> (not res!685782) (not e!577233))))

(declare-fun bm!43240 () Bool)

(assert (=> bm!43240 (= call!43243 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11120 thiss!1427) (mask!29611 thiss!1427)))))

(declare-fun b!1024075 () Bool)

(assert (=> b!1024075 (= e!577231 call!43243)))

(assert (= (and d!122573 (not res!685781)) b!1024072))

(assert (= (and b!1024072 c!103518) b!1024074))

(assert (= (and b!1024072 (not c!103518)) b!1024075))

(assert (= (and b!1024074 res!685782) b!1024073))

(assert (= (or b!1024073 b!1024075) bm!43240))

(assert (=> b!1024072 m!942659))

(assert (=> b!1024072 m!942659))

(assert (=> b!1024072 m!942661))

(assert (=> b!1024074 m!942659))

(declare-fun m!942671 () Bool)

(assert (=> b!1024074 m!942671))

(declare-fun m!942673 () Bool)

(assert (=> b!1024074 m!942673))

(assert (=> b!1024074 m!942659))

(declare-fun m!942675 () Bool)

(assert (=> b!1024074 m!942675))

(declare-fun m!942677 () Bool)

(assert (=> bm!43240 m!942677))

(assert (=> b!1024015 d!122573))

(declare-fun mapIsEmpty!37523 () Bool)

(declare-fun mapRes!37523 () Bool)

(assert (=> mapIsEmpty!37523 mapRes!37523))

(declare-fun b!1024076 () Bool)

(declare-fun e!577234 () Bool)

(assert (=> b!1024076 (= e!577234 tp_is_empty!24063)))

(declare-fun b!1024077 () Bool)

(declare-fun e!577235 () Bool)

(assert (=> b!1024077 (= e!577235 tp_is_empty!24063)))

(declare-fun mapNonEmpty!37523 () Bool)

(declare-fun tp!72079 () Bool)

(assert (=> mapNonEmpty!37523 (= mapRes!37523 (and tp!72079 e!577234))))

(declare-fun mapValue!37523 () ValueCell!11328)

(declare-fun mapRest!37523 () (Array (_ BitVec 32) ValueCell!11328))

(declare-fun mapKey!37523 () (_ BitVec 32))

(assert (=> mapNonEmpty!37523 (= mapRest!37522 (store mapRest!37523 mapKey!37523 mapValue!37523))))

(declare-fun condMapEmpty!37523 () Bool)

(declare-fun mapDefault!37523 () ValueCell!11328)

(assert (=> mapNonEmpty!37522 (= condMapEmpty!37523 (= mapRest!37522 ((as const (Array (_ BitVec 32) ValueCell!11328)) mapDefault!37523)))))

(assert (=> mapNonEmpty!37522 (= tp!72078 (and e!577235 mapRes!37523))))

(assert (= (and mapNonEmpty!37522 condMapEmpty!37523) mapIsEmpty!37523))

(assert (= (and mapNonEmpty!37522 (not condMapEmpty!37523)) mapNonEmpty!37523))

(assert (= (and mapNonEmpty!37523 ((_ is ValueCellFull!11328) mapValue!37523)) b!1024076))

(assert (= (and mapNonEmpty!37522 ((_ is ValueCellFull!11328) mapDefault!37523)) b!1024077))

(declare-fun m!942679 () Bool)

(assert (=> mapNonEmpty!37523 m!942679))

(check-sat (not b!1024062) (not b!1024072) (not d!122571) (not b!1024061) (not b!1024036) (not b!1024037) (not bm!43237) (not b!1024074) b_and!32607 (not b_next!20343) (not bm!43240) tp_is_empty!24063 (not b!1024038) (not bm!43234) (not mapNonEmpty!37523) (not b!1024048))
(check-sat b_and!32607 (not b_next!20343))
