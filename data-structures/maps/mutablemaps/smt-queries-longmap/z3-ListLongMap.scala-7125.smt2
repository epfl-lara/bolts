; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90430 () Bool)

(assert start!90430)

(declare-fun b!1034626 () Bool)

(declare-fun b_free!20805 () Bool)

(declare-fun b_next!20805 () Bool)

(assert (=> b!1034626 (= b_free!20805 (not b_next!20805))))

(declare-fun tp!73521 () Bool)

(declare-fun b_and!33323 () Bool)

(assert (=> b!1034626 (= tp!73521 b_and!33323)))

(declare-fun mapNonEmpty!38275 () Bool)

(declare-fun mapRes!38275 () Bool)

(declare-fun tp!73520 () Bool)

(declare-fun e!584931 () Bool)

(assert (=> mapNonEmpty!38275 (= mapRes!38275 (and tp!73520 e!584931))))

(declare-datatypes ((V!37573 0))(
  ( (V!37574 (val!12313 Int)) )
))
(declare-datatypes ((ValueCell!11559 0))(
  ( (ValueCellFull!11559 (v!14894 V!37573)) (EmptyCell!11559) )
))
(declare-fun mapValue!38275 () ValueCell!11559)

(declare-fun mapKey!38275 () (_ BitVec 32))

(declare-datatypes ((array!65116 0))(
  ( (array!65117 (arr!31347 (Array (_ BitVec 32) (_ BitVec 64))) (size!31871 (_ BitVec 32))) )
))
(declare-datatypes ((array!65118 0))(
  ( (array!65119 (arr!31348 (Array (_ BitVec 32) ValueCell!11559)) (size!31872 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5712 0))(
  ( (LongMapFixedSize!5713 (defaultEntry!6234 Int) (mask!30091 (_ BitVec 32)) (extraKeys!5964 (_ BitVec 32)) (zeroValue!6068 V!37573) (minValue!6070 V!37573) (_size!2911 (_ BitVec 32)) (_keys!11413 array!65116) (_values!6257 array!65118) (_vacant!2911 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5712)

(declare-fun mapRest!38275 () (Array (_ BitVec 32) ValueCell!11559))

(assert (=> mapNonEmpty!38275 (= (arr!31348 (_values!6257 thiss!1427)) (store mapRest!38275 mapKey!38275 mapValue!38275))))

(declare-fun b!1034627 () Bool)

(declare-fun res!691059 () Bool)

(declare-fun e!584935 () Bool)

(assert (=> b!1034627 (=> (not res!691059) (not e!584935))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034627 (= res!691059 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034628 () Bool)

(declare-fun tp_is_empty!24525 () Bool)

(assert (=> b!1034628 (= e!584931 tp_is_empty!24525)))

(declare-fun res!691058 () Bool)

(assert (=> start!90430 (=> (not res!691058) (not e!584935))))

(declare-fun valid!2107 (LongMapFixedSize!5712) Bool)

(assert (=> start!90430 (= res!691058 (valid!2107 thiss!1427))))

(assert (=> start!90430 e!584935))

(declare-fun e!584933 () Bool)

(assert (=> start!90430 e!584933))

(assert (=> start!90430 true))

(declare-fun e!584934 () Bool)

(declare-fun array_inv!24085 (array!65116) Bool)

(declare-fun array_inv!24086 (array!65118) Bool)

(assert (=> b!1034626 (= e!584933 (and tp!73521 tp_is_empty!24525 (array_inv!24085 (_keys!11413 thiss!1427)) (array_inv!24086 (_values!6257 thiss!1427)) e!584934))))

(declare-fun b!1034629 () Bool)

(declare-fun e!584932 () Bool)

(assert (=> b!1034629 (= e!584934 (and e!584932 mapRes!38275))))

(declare-fun condMapEmpty!38275 () Bool)

(declare-fun mapDefault!38275 () ValueCell!11559)

(assert (=> b!1034629 (= condMapEmpty!38275 (= (arr!31348 (_values!6257 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11559)) mapDefault!38275)))))

(declare-fun mapIsEmpty!38275 () Bool)

(assert (=> mapIsEmpty!38275 mapRes!38275))

(declare-fun b!1034630 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034630 (= e!584935 (not (validMask!0 (mask!30091 thiss!1427))))))

(declare-fun b!1034631 () Bool)

(assert (=> b!1034631 (= e!584932 tp_is_empty!24525)))

(assert (= (and start!90430 res!691058) b!1034627))

(assert (= (and b!1034627 res!691059) b!1034630))

(assert (= (and b!1034629 condMapEmpty!38275) mapIsEmpty!38275))

(assert (= (and b!1034629 (not condMapEmpty!38275)) mapNonEmpty!38275))

(get-info :version)

(assert (= (and mapNonEmpty!38275 ((_ is ValueCellFull!11559) mapValue!38275)) b!1034628))

(assert (= (and b!1034629 ((_ is ValueCellFull!11559) mapDefault!38275)) b!1034631))

(assert (= b!1034626 b!1034629))

(assert (= start!90430 b!1034626))

(declare-fun m!955107 () Bool)

(assert (=> mapNonEmpty!38275 m!955107))

(declare-fun m!955109 () Bool)

(assert (=> start!90430 m!955109))

(declare-fun m!955111 () Bool)

(assert (=> b!1034626 m!955111))

(declare-fun m!955113 () Bool)

(assert (=> b!1034626 m!955113))

(declare-fun m!955115 () Bool)

(assert (=> b!1034630 m!955115))

(check-sat (not mapNonEmpty!38275) tp_is_empty!24525 (not b!1034630) b_and!33323 (not start!90430) (not b!1034626) (not b_next!20805))
(check-sat b_and!33323 (not b_next!20805))
(get-model)

(declare-fun d!124379 () Bool)

(declare-fun res!691072 () Bool)

(declare-fun e!584956 () Bool)

(assert (=> d!124379 (=> (not res!691072) (not e!584956))))

(declare-fun simpleValid!405 (LongMapFixedSize!5712) Bool)

(assert (=> d!124379 (= res!691072 (simpleValid!405 thiss!1427))))

(assert (=> d!124379 (= (valid!2107 thiss!1427) e!584956)))

(declare-fun b!1034656 () Bool)

(declare-fun res!691073 () Bool)

(assert (=> b!1034656 (=> (not res!691073) (not e!584956))))

(declare-fun arrayCountValidKeys!0 (array!65116 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1034656 (= res!691073 (= (arrayCountValidKeys!0 (_keys!11413 thiss!1427) #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))) (_size!2911 thiss!1427)))))

(declare-fun b!1034657 () Bool)

(declare-fun res!691074 () Bool)

(assert (=> b!1034657 (=> (not res!691074) (not e!584956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65116 (_ BitVec 32)) Bool)

(assert (=> b!1034657 (= res!691074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11413 thiss!1427) (mask!30091 thiss!1427)))))

(declare-fun b!1034658 () Bool)

(declare-datatypes ((List!22024 0))(
  ( (Nil!22021) (Cons!22020 (h!23222 (_ BitVec 64)) (t!31234 List!22024)) )
))
(declare-fun arrayNoDuplicates!0 (array!65116 (_ BitVec 32) List!22024) Bool)

(assert (=> b!1034658 (= e!584956 (arrayNoDuplicates!0 (_keys!11413 thiss!1427) #b00000000000000000000000000000000 Nil!22021))))

(assert (= (and d!124379 res!691072) b!1034656))

(assert (= (and b!1034656 res!691073) b!1034657))

(assert (= (and b!1034657 res!691074) b!1034658))

(declare-fun m!955127 () Bool)

(assert (=> d!124379 m!955127))

(declare-fun m!955129 () Bool)

(assert (=> b!1034656 m!955129))

(declare-fun m!955131 () Bool)

(assert (=> b!1034657 m!955131))

(declare-fun m!955133 () Bool)

(assert (=> b!1034658 m!955133))

(assert (=> start!90430 d!124379))

(declare-fun d!124381 () Bool)

(assert (=> d!124381 (= (validMask!0 (mask!30091 thiss!1427)) (and (or (= (mask!30091 thiss!1427) #b00000000000000000000000000000111) (= (mask!30091 thiss!1427) #b00000000000000000000000000001111) (= (mask!30091 thiss!1427) #b00000000000000000000000000011111) (= (mask!30091 thiss!1427) #b00000000000000000000000000111111) (= (mask!30091 thiss!1427) #b00000000000000000000000001111111) (= (mask!30091 thiss!1427) #b00000000000000000000000011111111) (= (mask!30091 thiss!1427) #b00000000000000000000000111111111) (= (mask!30091 thiss!1427) #b00000000000000000000001111111111) (= (mask!30091 thiss!1427) #b00000000000000000000011111111111) (= (mask!30091 thiss!1427) #b00000000000000000000111111111111) (= (mask!30091 thiss!1427) #b00000000000000000001111111111111) (= (mask!30091 thiss!1427) #b00000000000000000011111111111111) (= (mask!30091 thiss!1427) #b00000000000000000111111111111111) (= (mask!30091 thiss!1427) #b00000000000000001111111111111111) (= (mask!30091 thiss!1427) #b00000000000000011111111111111111) (= (mask!30091 thiss!1427) #b00000000000000111111111111111111) (= (mask!30091 thiss!1427) #b00000000000001111111111111111111) (= (mask!30091 thiss!1427) #b00000000000011111111111111111111) (= (mask!30091 thiss!1427) #b00000000000111111111111111111111) (= (mask!30091 thiss!1427) #b00000000001111111111111111111111) (= (mask!30091 thiss!1427) #b00000000011111111111111111111111) (= (mask!30091 thiss!1427) #b00000000111111111111111111111111) (= (mask!30091 thiss!1427) #b00000001111111111111111111111111) (= (mask!30091 thiss!1427) #b00000011111111111111111111111111) (= (mask!30091 thiss!1427) #b00000111111111111111111111111111) (= (mask!30091 thiss!1427) #b00001111111111111111111111111111) (= (mask!30091 thiss!1427) #b00011111111111111111111111111111) (= (mask!30091 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30091 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1034630 d!124381))

(declare-fun d!124383 () Bool)

(assert (=> d!124383 (= (array_inv!24085 (_keys!11413 thiss!1427)) (bvsge (size!31871 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034626 d!124383))

(declare-fun d!124385 () Bool)

(assert (=> d!124385 (= (array_inv!24086 (_values!6257 thiss!1427)) (bvsge (size!31872 (_values!6257 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1034626 d!124385))

(declare-fun condMapEmpty!38281 () Bool)

(declare-fun mapDefault!38281 () ValueCell!11559)

(assert (=> mapNonEmpty!38275 (= condMapEmpty!38281 (= mapRest!38275 ((as const (Array (_ BitVec 32) ValueCell!11559)) mapDefault!38281)))))

(declare-fun e!584962 () Bool)

(declare-fun mapRes!38281 () Bool)

(assert (=> mapNonEmpty!38275 (= tp!73520 (and e!584962 mapRes!38281))))

(declare-fun mapNonEmpty!38281 () Bool)

(declare-fun tp!73530 () Bool)

(declare-fun e!584961 () Bool)

(assert (=> mapNonEmpty!38281 (= mapRes!38281 (and tp!73530 e!584961))))

(declare-fun mapValue!38281 () ValueCell!11559)

(declare-fun mapRest!38281 () (Array (_ BitVec 32) ValueCell!11559))

(declare-fun mapKey!38281 () (_ BitVec 32))

(assert (=> mapNonEmpty!38281 (= mapRest!38275 (store mapRest!38281 mapKey!38281 mapValue!38281))))

(declare-fun b!1034666 () Bool)

(assert (=> b!1034666 (= e!584962 tp_is_empty!24525)))

(declare-fun mapIsEmpty!38281 () Bool)

(assert (=> mapIsEmpty!38281 mapRes!38281))

(declare-fun b!1034665 () Bool)

(assert (=> b!1034665 (= e!584961 tp_is_empty!24525)))

(assert (= (and mapNonEmpty!38275 condMapEmpty!38281) mapIsEmpty!38281))

(assert (= (and mapNonEmpty!38275 (not condMapEmpty!38281)) mapNonEmpty!38281))

(assert (= (and mapNonEmpty!38281 ((_ is ValueCellFull!11559) mapValue!38281)) b!1034665))

(assert (= (and mapNonEmpty!38275 ((_ is ValueCellFull!11559) mapDefault!38281)) b!1034666))

(declare-fun m!955135 () Bool)

(assert (=> mapNonEmpty!38281 m!955135))

(check-sat (not b!1034657) (not b!1034656) b_and!33323 (not mapNonEmpty!38281) (not b_next!20805) (not b!1034658) (not d!124379) tp_is_empty!24525)
(check-sat b_and!33323 (not b_next!20805))
(get-model)

(declare-fun b!1034676 () Bool)

(declare-fun res!691086 () Bool)

(declare-fun e!584965 () Bool)

(assert (=> b!1034676 (=> (not res!691086) (not e!584965))))

(declare-fun size!31875 (LongMapFixedSize!5712) (_ BitVec 32))

(assert (=> b!1034676 (= res!691086 (bvsge (size!31875 thiss!1427) (_size!2911 thiss!1427)))))

(declare-fun b!1034677 () Bool)

(declare-fun res!691084 () Bool)

(assert (=> b!1034677 (=> (not res!691084) (not e!584965))))

(assert (=> b!1034677 (= res!691084 (= (size!31875 thiss!1427) (bvadd (_size!2911 thiss!1427) (bvsdiv (bvadd (extraKeys!5964 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1034678 () Bool)

(assert (=> b!1034678 (= e!584965 (and (bvsge (extraKeys!5964 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5964 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2911 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1034675 () Bool)

(declare-fun res!691085 () Bool)

(assert (=> b!1034675 (=> (not res!691085) (not e!584965))))

(assert (=> b!1034675 (= res!691085 (and (= (size!31872 (_values!6257 thiss!1427)) (bvadd (mask!30091 thiss!1427) #b00000000000000000000000000000001)) (= (size!31871 (_keys!11413 thiss!1427)) (size!31872 (_values!6257 thiss!1427))) (bvsge (_size!2911 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2911 thiss!1427) (bvadd (mask!30091 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!124387 () Bool)

(declare-fun res!691083 () Bool)

(assert (=> d!124387 (=> (not res!691083) (not e!584965))))

(assert (=> d!124387 (= res!691083 (validMask!0 (mask!30091 thiss!1427)))))

(assert (=> d!124387 (= (simpleValid!405 thiss!1427) e!584965)))

(assert (= (and d!124387 res!691083) b!1034675))

(assert (= (and b!1034675 res!691085) b!1034676))

(assert (= (and b!1034676 res!691086) b!1034677))

(assert (= (and b!1034677 res!691084) b!1034678))

(declare-fun m!955137 () Bool)

(assert (=> b!1034676 m!955137))

(assert (=> b!1034677 m!955137))

(assert (=> d!124387 m!955115))

(assert (=> d!124379 d!124387))

(declare-fun d!124389 () Bool)

(declare-fun res!691093 () Bool)

(declare-fun e!584977 () Bool)

(assert (=> d!124389 (=> res!691093 e!584977)))

(assert (=> d!124389 (= res!691093 (bvsge #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))))))

(assert (=> d!124389 (= (arrayNoDuplicates!0 (_keys!11413 thiss!1427) #b00000000000000000000000000000000 Nil!22021) e!584977)))

(declare-fun b!1034689 () Bool)

(declare-fun e!584975 () Bool)

(assert (=> b!1034689 (= e!584977 e!584975)))

(declare-fun res!691094 () Bool)

(assert (=> b!1034689 (=> (not res!691094) (not e!584975))))

(declare-fun e!584976 () Bool)

(assert (=> b!1034689 (= res!691094 (not e!584976))))

(declare-fun res!691095 () Bool)

(assert (=> b!1034689 (=> (not res!691095) (not e!584976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1034689 (= res!691095 (validKeyInArray!0 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034690 () Bool)

(declare-fun e!584974 () Bool)

(declare-fun call!43750 () Bool)

(assert (=> b!1034690 (= e!584974 call!43750)))

(declare-fun b!1034691 () Bool)

(assert (=> b!1034691 (= e!584975 e!584974)))

(declare-fun c!104627 () Bool)

(assert (=> b!1034691 (= c!104627 (validKeyInArray!0 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034692 () Bool)

(declare-fun contains!6038 (List!22024 (_ BitVec 64)) Bool)

(assert (=> b!1034692 (= e!584976 (contains!6038 Nil!22021 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43747 () Bool)

(assert (=> bm!43747 (= call!43750 (arrayNoDuplicates!0 (_keys!11413 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104627 (Cons!22020 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000) Nil!22021) Nil!22021)))))

(declare-fun b!1034693 () Bool)

(assert (=> b!1034693 (= e!584974 call!43750)))

(assert (= (and d!124389 (not res!691093)) b!1034689))

(assert (= (and b!1034689 res!691095) b!1034692))

(assert (= (and b!1034689 res!691094) b!1034691))

(assert (= (and b!1034691 c!104627) b!1034690))

(assert (= (and b!1034691 (not c!104627)) b!1034693))

(assert (= (or b!1034690 b!1034693) bm!43747))

(declare-fun m!955139 () Bool)

(assert (=> b!1034689 m!955139))

(assert (=> b!1034689 m!955139))

(declare-fun m!955141 () Bool)

(assert (=> b!1034689 m!955141))

(assert (=> b!1034691 m!955139))

(assert (=> b!1034691 m!955139))

(assert (=> b!1034691 m!955141))

(assert (=> b!1034692 m!955139))

(assert (=> b!1034692 m!955139))

(declare-fun m!955143 () Bool)

(assert (=> b!1034692 m!955143))

(assert (=> bm!43747 m!955139))

(declare-fun m!955145 () Bool)

(assert (=> bm!43747 m!955145))

(assert (=> b!1034658 d!124389))

(declare-fun b!1034702 () Bool)

(declare-fun e!584985 () Bool)

(declare-fun e!584984 () Bool)

(assert (=> b!1034702 (= e!584985 e!584984)))

(declare-fun lt!456682 () (_ BitVec 64))

(assert (=> b!1034702 (= lt!456682 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33857 0))(
  ( (Unit!33858) )
))
(declare-fun lt!456681 () Unit!33857)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65116 (_ BitVec 64) (_ BitVec 32)) Unit!33857)

(assert (=> b!1034702 (= lt!456681 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11413 thiss!1427) lt!456682 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1034702 (arrayContainsKey!0 (_keys!11413 thiss!1427) lt!456682 #b00000000000000000000000000000000)))

(declare-fun lt!456680 () Unit!33857)

(assert (=> b!1034702 (= lt!456680 lt!456681)))

(declare-fun res!691101 () Bool)

(declare-datatypes ((SeekEntryResult!9734 0))(
  ( (MissingZero!9734 (index!41306 (_ BitVec 32))) (Found!9734 (index!41307 (_ BitVec 32))) (Intermediate!9734 (undefined!10546 Bool) (index!41308 (_ BitVec 32)) (x!92246 (_ BitVec 32))) (Undefined!9734) (MissingVacant!9734 (index!41309 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65116 (_ BitVec 32)) SeekEntryResult!9734)

(assert (=> b!1034702 (= res!691101 (= (seekEntryOrOpen!0 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000) (_keys!11413 thiss!1427) (mask!30091 thiss!1427)) (Found!9734 #b00000000000000000000000000000000)))))

(assert (=> b!1034702 (=> (not res!691101) (not e!584984))))

(declare-fun d!124391 () Bool)

(declare-fun res!691100 () Bool)

(declare-fun e!584986 () Bool)

(assert (=> d!124391 (=> res!691100 e!584986)))

(assert (=> d!124391 (= res!691100 (bvsge #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))))))

(assert (=> d!124391 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11413 thiss!1427) (mask!30091 thiss!1427)) e!584986)))

(declare-fun bm!43750 () Bool)

(declare-fun call!43753 () Bool)

(assert (=> bm!43750 (= call!43753 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11413 thiss!1427) (mask!30091 thiss!1427)))))

(declare-fun b!1034703 () Bool)

(assert (=> b!1034703 (= e!584985 call!43753)))

(declare-fun b!1034704 () Bool)

(assert (=> b!1034704 (= e!584986 e!584985)))

(declare-fun c!104630 () Bool)

(assert (=> b!1034704 (= c!104630 (validKeyInArray!0 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034705 () Bool)

(assert (=> b!1034705 (= e!584984 call!43753)))

(assert (= (and d!124391 (not res!691100)) b!1034704))

(assert (= (and b!1034704 c!104630) b!1034702))

(assert (= (and b!1034704 (not c!104630)) b!1034703))

(assert (= (and b!1034702 res!691101) b!1034705))

(assert (= (or b!1034705 b!1034703) bm!43750))

(assert (=> b!1034702 m!955139))

(declare-fun m!955147 () Bool)

(assert (=> b!1034702 m!955147))

(declare-fun m!955149 () Bool)

(assert (=> b!1034702 m!955149))

(assert (=> b!1034702 m!955139))

(declare-fun m!955151 () Bool)

(assert (=> b!1034702 m!955151))

(declare-fun m!955153 () Bool)

(assert (=> bm!43750 m!955153))

(assert (=> b!1034704 m!955139))

(assert (=> b!1034704 m!955139))

(assert (=> b!1034704 m!955141))

(assert (=> b!1034657 d!124391))

(declare-fun b!1034714 () Bool)

(declare-fun e!584991 () (_ BitVec 32))

(declare-fun call!43756 () (_ BitVec 32))

(assert (=> b!1034714 (= e!584991 (bvadd #b00000000000000000000000000000001 call!43756))))

(declare-fun d!124393 () Bool)

(declare-fun lt!456685 () (_ BitVec 32))

(assert (=> d!124393 (and (bvsge lt!456685 #b00000000000000000000000000000000) (bvsle lt!456685 (bvsub (size!31871 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!584992 () (_ BitVec 32))

(assert (=> d!124393 (= lt!456685 e!584992)))

(declare-fun c!104635 () Bool)

(assert (=> d!124393 (= c!104635 (bvsge #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))))))

(assert (=> d!124393 (and (bvsle #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31871 (_keys!11413 thiss!1427)) (size!31871 (_keys!11413 thiss!1427))))))

(assert (=> d!124393 (= (arrayCountValidKeys!0 (_keys!11413 thiss!1427) #b00000000000000000000000000000000 (size!31871 (_keys!11413 thiss!1427))) lt!456685)))

(declare-fun b!1034715 () Bool)

(assert (=> b!1034715 (= e!584991 call!43756)))

(declare-fun bm!43753 () Bool)

(assert (=> bm!43753 (= call!43756 (arrayCountValidKeys!0 (_keys!11413 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31871 (_keys!11413 thiss!1427))))))

(declare-fun b!1034716 () Bool)

(assert (=> b!1034716 (= e!584992 #b00000000000000000000000000000000)))

(declare-fun b!1034717 () Bool)

(assert (=> b!1034717 (= e!584992 e!584991)))

(declare-fun c!104636 () Bool)

(assert (=> b!1034717 (= c!104636 (validKeyInArray!0 (select (arr!31347 (_keys!11413 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124393 c!104635) b!1034716))

(assert (= (and d!124393 (not c!104635)) b!1034717))

(assert (= (and b!1034717 c!104636) b!1034714))

(assert (= (and b!1034717 (not c!104636)) b!1034715))

(assert (= (or b!1034714 b!1034715) bm!43753))

(declare-fun m!955155 () Bool)

(assert (=> bm!43753 m!955155))

(assert (=> b!1034717 m!955139))

(assert (=> b!1034717 m!955139))

(assert (=> b!1034717 m!955141))

(assert (=> b!1034656 d!124393))

(declare-fun condMapEmpty!38282 () Bool)

(declare-fun mapDefault!38282 () ValueCell!11559)

(assert (=> mapNonEmpty!38281 (= condMapEmpty!38282 (= mapRest!38281 ((as const (Array (_ BitVec 32) ValueCell!11559)) mapDefault!38282)))))

(declare-fun e!584994 () Bool)

(declare-fun mapRes!38282 () Bool)

(assert (=> mapNonEmpty!38281 (= tp!73530 (and e!584994 mapRes!38282))))

(declare-fun mapNonEmpty!38282 () Bool)

(declare-fun tp!73531 () Bool)

(declare-fun e!584993 () Bool)

(assert (=> mapNonEmpty!38282 (= mapRes!38282 (and tp!73531 e!584993))))

(declare-fun mapRest!38282 () (Array (_ BitVec 32) ValueCell!11559))

(declare-fun mapValue!38282 () ValueCell!11559)

(declare-fun mapKey!38282 () (_ BitVec 32))

(assert (=> mapNonEmpty!38282 (= mapRest!38281 (store mapRest!38282 mapKey!38282 mapValue!38282))))

(declare-fun b!1034719 () Bool)

(assert (=> b!1034719 (= e!584994 tp_is_empty!24525)))

(declare-fun mapIsEmpty!38282 () Bool)

(assert (=> mapIsEmpty!38282 mapRes!38282))

(declare-fun b!1034718 () Bool)

(assert (=> b!1034718 (= e!584993 tp_is_empty!24525)))

(assert (= (and mapNonEmpty!38281 condMapEmpty!38282) mapIsEmpty!38282))

(assert (= (and mapNonEmpty!38281 (not condMapEmpty!38282)) mapNonEmpty!38282))

(assert (= (and mapNonEmpty!38282 ((_ is ValueCellFull!11559) mapValue!38282)) b!1034718))

(assert (= (and mapNonEmpty!38281 ((_ is ValueCellFull!11559) mapDefault!38282)) b!1034719))

(declare-fun m!955157 () Bool)

(assert (=> mapNonEmpty!38282 m!955157))

(check-sat (not b!1034677) (not mapNonEmpty!38282) (not bm!43753) (not b!1034704) (not b!1034717) (not b!1034676) b_and!33323 (not bm!43747) (not b!1034702) (not b!1034692) (not bm!43750) tp_is_empty!24525 (not b!1034689) (not d!124387) (not b_next!20805) (not b!1034691))
(check-sat b_and!33323 (not b_next!20805))
