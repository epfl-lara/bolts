; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89332 () Bool)

(assert start!89332)

(declare-fun b!1023854 () Bool)

(declare-fun b_free!20337 () Bool)

(declare-fun b_next!20337 () Bool)

(assert (=> b!1023854 (= b_free!20337 (not b_next!20337))))

(declare-fun tp!72047 () Bool)

(declare-fun b_and!32601 () Bool)

(assert (=> b!1023854 (= tp!72047 b_and!32601)))

(declare-fun b!1023851 () Bool)

(declare-fun res!685676 () Bool)

(declare-fun e!577077 () Bool)

(assert (=> b!1023851 (=> (not res!685676) (not e!577077))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023851 (= res!685676 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1023852 () Bool)

(declare-datatypes ((V!36949 0))(
  ( (V!36950 (val!12079 Int)) )
))
(declare-datatypes ((ValueCell!11325 0))(
  ( (ValueCellFull!11325 (v!14649 V!36949)) (EmptyCell!11325) )
))
(declare-datatypes ((array!64142 0))(
  ( (array!64143 (arr!30879 (Array (_ BitVec 32) (_ BitVec 64))) (size!31391 (_ BitVec 32))) )
))
(declare-datatypes ((array!64144 0))(
  ( (array!64145 (arr!30880 (Array (_ BitVec 32) ValueCell!11325)) (size!31392 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5244 0))(
  ( (LongMapFixedSize!5245 (defaultEntry!5974 Int) (mask!29604 (_ BitVec 32)) (extraKeys!5706 (_ BitVec 32)) (zeroValue!5810 V!36949) (minValue!5810 V!36949) (_size!2677 (_ BitVec 32)) (_keys!11116 array!64142) (_values!5997 array!64144) (_vacant!2677 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5244)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023852 (= e!577077 (not (validMask!0 (mask!29604 thiss!1427))))))

(declare-fun b!1023853 () Bool)

(declare-fun e!577076 () Bool)

(declare-fun e!577080 () Bool)

(declare-fun mapRes!37503 () Bool)

(assert (=> b!1023853 (= e!577076 (and e!577080 mapRes!37503))))

(declare-fun condMapEmpty!37503 () Bool)

(declare-fun mapDefault!37503 () ValueCell!11325)

(assert (=> b!1023853 (= condMapEmpty!37503 (= (arr!30880 (_values!5997 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11325)) mapDefault!37503)))))

(declare-fun tp_is_empty!24057 () Bool)

(declare-fun e!577078 () Bool)

(declare-fun array_inv!23789 (array!64142) Bool)

(declare-fun array_inv!23790 (array!64144) Bool)

(assert (=> b!1023854 (= e!577078 (and tp!72047 tp_is_empty!24057 (array_inv!23789 (_keys!11116 thiss!1427)) (array_inv!23790 (_values!5997 thiss!1427)) e!577076))))

(declare-fun b!1023855 () Bool)

(assert (=> b!1023855 (= e!577080 tp_is_empty!24057)))

(declare-fun res!685677 () Bool)

(assert (=> start!89332 (=> (not res!685677) (not e!577077))))

(declare-fun valid!1952 (LongMapFixedSize!5244) Bool)

(assert (=> start!89332 (= res!685677 (valid!1952 thiss!1427))))

(assert (=> start!89332 e!577077))

(assert (=> start!89332 e!577078))

(assert (=> start!89332 true))

(declare-fun mapIsEmpty!37503 () Bool)

(assert (=> mapIsEmpty!37503 mapRes!37503))

(declare-fun mapNonEmpty!37503 () Bool)

(declare-fun tp!72046 () Bool)

(declare-fun e!577081 () Bool)

(assert (=> mapNonEmpty!37503 (= mapRes!37503 (and tp!72046 e!577081))))

(declare-fun mapKey!37503 () (_ BitVec 32))

(declare-fun mapRest!37503 () (Array (_ BitVec 32) ValueCell!11325))

(declare-fun mapValue!37503 () ValueCell!11325)

(assert (=> mapNonEmpty!37503 (= (arr!30880 (_values!5997 thiss!1427)) (store mapRest!37503 mapKey!37503 mapValue!37503))))

(declare-fun b!1023856 () Bool)

(assert (=> b!1023856 (= e!577081 tp_is_empty!24057)))

(assert (= (and start!89332 res!685677) b!1023851))

(assert (= (and b!1023851 res!685676) b!1023852))

(assert (= (and b!1023853 condMapEmpty!37503) mapIsEmpty!37503))

(assert (= (and b!1023853 (not condMapEmpty!37503)) mapNonEmpty!37503))

(get-info :version)

(assert (= (and mapNonEmpty!37503 ((_ is ValueCellFull!11325) mapValue!37503)) b!1023856))

(assert (= (and b!1023853 ((_ is ValueCellFull!11325) mapDefault!37503)) b!1023855))

(assert (= b!1023854 b!1023853))

(assert (= start!89332 b!1023854))

(declare-fun m!942567 () Bool)

(assert (=> b!1023852 m!942567))

(declare-fun m!942569 () Bool)

(assert (=> b!1023854 m!942569))

(declare-fun m!942571 () Bool)

(assert (=> b!1023854 m!942571))

(declare-fun m!942573 () Bool)

(assert (=> start!89332 m!942573))

(declare-fun m!942575 () Bool)

(assert (=> mapNonEmpty!37503 m!942575))

(check-sat tp_is_empty!24057 (not start!89332) (not b_next!20337) b_and!32601 (not mapNonEmpty!37503) (not b!1023854) (not b!1023852))
(check-sat b_and!32601 (not b_next!20337))
(get-model)

(declare-fun d!122541 () Bool)

(assert (=> d!122541 (= (validMask!0 (mask!29604 thiss!1427)) (and (or (= (mask!29604 thiss!1427) #b00000000000000000000000000000111) (= (mask!29604 thiss!1427) #b00000000000000000000000000001111) (= (mask!29604 thiss!1427) #b00000000000000000000000000011111) (= (mask!29604 thiss!1427) #b00000000000000000000000000111111) (= (mask!29604 thiss!1427) #b00000000000000000000000001111111) (= (mask!29604 thiss!1427) #b00000000000000000000000011111111) (= (mask!29604 thiss!1427) #b00000000000000000000000111111111) (= (mask!29604 thiss!1427) #b00000000000000000000001111111111) (= (mask!29604 thiss!1427) #b00000000000000000000011111111111) (= (mask!29604 thiss!1427) #b00000000000000000000111111111111) (= (mask!29604 thiss!1427) #b00000000000000000001111111111111) (= (mask!29604 thiss!1427) #b00000000000000000011111111111111) (= (mask!29604 thiss!1427) #b00000000000000000111111111111111) (= (mask!29604 thiss!1427) #b00000000000000001111111111111111) (= (mask!29604 thiss!1427) #b00000000000000011111111111111111) (= (mask!29604 thiss!1427) #b00000000000000111111111111111111) (= (mask!29604 thiss!1427) #b00000000000001111111111111111111) (= (mask!29604 thiss!1427) #b00000000000011111111111111111111) (= (mask!29604 thiss!1427) #b00000000000111111111111111111111) (= (mask!29604 thiss!1427) #b00000000001111111111111111111111) (= (mask!29604 thiss!1427) #b00000000011111111111111111111111) (= (mask!29604 thiss!1427) #b00000000111111111111111111111111) (= (mask!29604 thiss!1427) #b00000001111111111111111111111111) (= (mask!29604 thiss!1427) #b00000011111111111111111111111111) (= (mask!29604 thiss!1427) #b00000111111111111111111111111111) (= (mask!29604 thiss!1427) #b00001111111111111111111111111111) (= (mask!29604 thiss!1427) #b00011111111111111111111111111111) (= (mask!29604 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29604 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1023852 d!122541))

(declare-fun d!122543 () Bool)

(assert (=> d!122543 (= (array_inv!23789 (_keys!11116 thiss!1427)) (bvsge (size!31391 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1023854 d!122543))

(declare-fun d!122545 () Bool)

(assert (=> d!122545 (= (array_inv!23790 (_values!5997 thiss!1427)) (bvsge (size!31392 (_values!5997 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1023854 d!122545))

(declare-fun d!122547 () Bool)

(declare-fun res!685690 () Bool)

(declare-fun e!577102 () Bool)

(assert (=> d!122547 (=> (not res!685690) (not e!577102))))

(declare-fun simpleValid!386 (LongMapFixedSize!5244) Bool)

(assert (=> d!122547 (= res!685690 (simpleValid!386 thiss!1427))))

(assert (=> d!122547 (= (valid!1952 thiss!1427) e!577102)))

(declare-fun b!1023881 () Bool)

(declare-fun res!685691 () Bool)

(assert (=> b!1023881 (=> (not res!685691) (not e!577102))))

(declare-fun arrayCountValidKeys!0 (array!64142 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1023881 (= res!685691 (= (arrayCountValidKeys!0 (_keys!11116 thiss!1427) #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))) (_size!2677 thiss!1427)))))

(declare-fun b!1023882 () Bool)

(declare-fun res!685692 () Bool)

(assert (=> b!1023882 (=> (not res!685692) (not e!577102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64142 (_ BitVec 32)) Bool)

(assert (=> b!1023882 (= res!685692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11116 thiss!1427) (mask!29604 thiss!1427)))))

(declare-fun b!1023883 () Bool)

(declare-datatypes ((List!21826 0))(
  ( (Nil!21823) (Cons!21822 (h!23020 (_ BitVec 64)) (t!30895 List!21826)) )
))
(declare-fun arrayNoDuplicates!0 (array!64142 (_ BitVec 32) List!21826) Bool)

(assert (=> b!1023883 (= e!577102 (arrayNoDuplicates!0 (_keys!11116 thiss!1427) #b00000000000000000000000000000000 Nil!21823))))

(assert (= (and d!122547 res!685690) b!1023881))

(assert (= (and b!1023881 res!685691) b!1023882))

(assert (= (and b!1023882 res!685692) b!1023883))

(declare-fun m!942587 () Bool)

(assert (=> d!122547 m!942587))

(declare-fun m!942589 () Bool)

(assert (=> b!1023881 m!942589))

(declare-fun m!942591 () Bool)

(assert (=> b!1023882 m!942591))

(declare-fun m!942593 () Bool)

(assert (=> b!1023883 m!942593))

(assert (=> start!89332 d!122547))

(declare-fun mapNonEmpty!37509 () Bool)

(declare-fun mapRes!37509 () Bool)

(declare-fun tp!72056 () Bool)

(declare-fun e!577108 () Bool)

(assert (=> mapNonEmpty!37509 (= mapRes!37509 (and tp!72056 e!577108))))

(declare-fun mapRest!37509 () (Array (_ BitVec 32) ValueCell!11325))

(declare-fun mapValue!37509 () ValueCell!11325)

(declare-fun mapKey!37509 () (_ BitVec 32))

(assert (=> mapNonEmpty!37509 (= mapRest!37503 (store mapRest!37509 mapKey!37509 mapValue!37509))))

(declare-fun b!1023890 () Bool)

(assert (=> b!1023890 (= e!577108 tp_is_empty!24057)))

(declare-fun condMapEmpty!37509 () Bool)

(declare-fun mapDefault!37509 () ValueCell!11325)

(assert (=> mapNonEmpty!37503 (= condMapEmpty!37509 (= mapRest!37503 ((as const (Array (_ BitVec 32) ValueCell!11325)) mapDefault!37509)))))

(declare-fun e!577107 () Bool)

(assert (=> mapNonEmpty!37503 (= tp!72046 (and e!577107 mapRes!37509))))

(declare-fun mapIsEmpty!37509 () Bool)

(assert (=> mapIsEmpty!37509 mapRes!37509))

(declare-fun b!1023891 () Bool)

(assert (=> b!1023891 (= e!577107 tp_is_empty!24057)))

(assert (= (and mapNonEmpty!37503 condMapEmpty!37509) mapIsEmpty!37509))

(assert (= (and mapNonEmpty!37503 (not condMapEmpty!37509)) mapNonEmpty!37509))

(assert (= (and mapNonEmpty!37509 ((_ is ValueCellFull!11325) mapValue!37509)) b!1023890))

(assert (= (and mapNonEmpty!37503 ((_ is ValueCellFull!11325) mapDefault!37509)) b!1023891))

(declare-fun m!942595 () Bool)

(assert (=> mapNonEmpty!37509 m!942595))

(check-sat tp_is_empty!24057 (not b!1023882) (not b_next!20337) (not b!1023881) b_and!32601 (not b!1023883) (not mapNonEmpty!37509) (not d!122547))
(check-sat b_and!32601 (not b_next!20337))
(get-model)

(declare-fun b!1023901 () Bool)

(declare-fun res!685702 () Bool)

(declare-fun e!577111 () Bool)

(assert (=> b!1023901 (=> (not res!685702) (not e!577111))))

(declare-fun size!31395 (LongMapFixedSize!5244) (_ BitVec 32))

(assert (=> b!1023901 (= res!685702 (bvsge (size!31395 thiss!1427) (_size!2677 thiss!1427)))))

(declare-fun b!1023903 () Bool)

(assert (=> b!1023903 (= e!577111 (and (bvsge (extraKeys!5706 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5706 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2677 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1023902 () Bool)

(declare-fun res!685704 () Bool)

(assert (=> b!1023902 (=> (not res!685704) (not e!577111))))

(assert (=> b!1023902 (= res!685704 (= (size!31395 thiss!1427) (bvadd (_size!2677 thiss!1427) (bvsdiv (bvadd (extraKeys!5706 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!122549 () Bool)

(declare-fun res!685701 () Bool)

(assert (=> d!122549 (=> (not res!685701) (not e!577111))))

(assert (=> d!122549 (= res!685701 (validMask!0 (mask!29604 thiss!1427)))))

(assert (=> d!122549 (= (simpleValid!386 thiss!1427) e!577111)))

(declare-fun b!1023900 () Bool)

(declare-fun res!685703 () Bool)

(assert (=> b!1023900 (=> (not res!685703) (not e!577111))))

(assert (=> b!1023900 (= res!685703 (and (= (size!31392 (_values!5997 thiss!1427)) (bvadd (mask!29604 thiss!1427) #b00000000000000000000000000000001)) (= (size!31391 (_keys!11116 thiss!1427)) (size!31392 (_values!5997 thiss!1427))) (bvsge (_size!2677 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2677 thiss!1427) (bvadd (mask!29604 thiss!1427) #b00000000000000000000000000000001))))))

(assert (= (and d!122549 res!685701) b!1023900))

(assert (= (and b!1023900 res!685703) b!1023901))

(assert (= (and b!1023901 res!685702) b!1023902))

(assert (= (and b!1023902 res!685704) b!1023903))

(declare-fun m!942597 () Bool)

(assert (=> b!1023901 m!942597))

(assert (=> b!1023902 m!942597))

(assert (=> d!122549 m!942567))

(assert (=> d!122547 d!122549))

(declare-fun b!1023912 () Bool)

(declare-fun e!577120 () Bool)

(declare-fun e!577118 () Bool)

(assert (=> b!1023912 (= e!577120 e!577118)))

(declare-fun c!103497 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1023912 (= c!103497 (validKeyInArray!0 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1023914 () Bool)

(declare-fun call!43228 () Bool)

(assert (=> b!1023914 (= e!577118 call!43228)))

(declare-fun b!1023915 () Bool)

(declare-fun e!577119 () Bool)

(assert (=> b!1023915 (= e!577118 e!577119)))

(declare-fun lt!450521 () (_ BitVec 64))

(assert (=> b!1023915 (= lt!450521 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33308 0))(
  ( (Unit!33309) )
))
(declare-fun lt!450523 () Unit!33308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64142 (_ BitVec 64) (_ BitVec 32)) Unit!33308)

(assert (=> b!1023915 (= lt!450523 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11116 thiss!1427) lt!450521 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1023915 (arrayContainsKey!0 (_keys!11116 thiss!1427) lt!450521 #b00000000000000000000000000000000)))

(declare-fun lt!450522 () Unit!33308)

(assert (=> b!1023915 (= lt!450522 lt!450523)))

(declare-fun res!685709 () Bool)

(declare-datatypes ((SeekEntryResult!9576 0))(
  ( (MissingZero!9576 (index!40674 (_ BitVec 32))) (Found!9576 (index!40675 (_ BitVec 32))) (Intermediate!9576 (undefined!10388 Bool) (index!40676 (_ BitVec 32)) (x!90995 (_ BitVec 32))) (Undefined!9576) (MissingVacant!9576 (index!40677 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64142 (_ BitVec 32)) SeekEntryResult!9576)

(assert (=> b!1023915 (= res!685709 (= (seekEntryOrOpen!0 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000) (_keys!11116 thiss!1427) (mask!29604 thiss!1427)) (Found!9576 #b00000000000000000000000000000000)))))

(assert (=> b!1023915 (=> (not res!685709) (not e!577119))))

(declare-fun bm!43225 () Bool)

(assert (=> bm!43225 (= call!43228 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11116 thiss!1427) (mask!29604 thiss!1427)))))

(declare-fun b!1023913 () Bool)

(assert (=> b!1023913 (= e!577119 call!43228)))

(declare-fun d!122551 () Bool)

(declare-fun res!685710 () Bool)

(assert (=> d!122551 (=> res!685710 e!577120)))

(assert (=> d!122551 (= res!685710 (bvsge #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))))))

(assert (=> d!122551 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11116 thiss!1427) (mask!29604 thiss!1427)) e!577120)))

(assert (= (and d!122551 (not res!685710)) b!1023912))

(assert (= (and b!1023912 c!103497) b!1023915))

(assert (= (and b!1023912 (not c!103497)) b!1023914))

(assert (= (and b!1023915 res!685709) b!1023913))

(assert (= (or b!1023913 b!1023914) bm!43225))

(declare-fun m!942599 () Bool)

(assert (=> b!1023912 m!942599))

(assert (=> b!1023912 m!942599))

(declare-fun m!942601 () Bool)

(assert (=> b!1023912 m!942601))

(assert (=> b!1023915 m!942599))

(declare-fun m!942603 () Bool)

(assert (=> b!1023915 m!942603))

(declare-fun m!942605 () Bool)

(assert (=> b!1023915 m!942605))

(assert (=> b!1023915 m!942599))

(declare-fun m!942607 () Bool)

(assert (=> b!1023915 m!942607))

(declare-fun m!942609 () Bool)

(assert (=> bm!43225 m!942609))

(assert (=> b!1023882 d!122551))

(declare-fun b!1023924 () Bool)

(declare-fun e!577126 () (_ BitVec 32))

(declare-fun call!43231 () (_ BitVec 32))

(assert (=> b!1023924 (= e!577126 call!43231)))

(declare-fun b!1023925 () Bool)

(assert (=> b!1023925 (= e!577126 (bvadd #b00000000000000000000000000000001 call!43231))))

(declare-fun b!1023926 () Bool)

(declare-fun e!577125 () (_ BitVec 32))

(assert (=> b!1023926 (= e!577125 e!577126)))

(declare-fun c!103502 () Bool)

(assert (=> b!1023926 (= c!103502 (validKeyInArray!0 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!122553 () Bool)

(declare-fun lt!450526 () (_ BitVec 32))

(assert (=> d!122553 (and (bvsge lt!450526 #b00000000000000000000000000000000) (bvsle lt!450526 (bvsub (size!31391 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!122553 (= lt!450526 e!577125)))

(declare-fun c!103503 () Bool)

(assert (=> d!122553 (= c!103503 (bvsge #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))))))

(assert (=> d!122553 (and (bvsle #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31391 (_keys!11116 thiss!1427)) (size!31391 (_keys!11116 thiss!1427))))))

(assert (=> d!122553 (= (arrayCountValidKeys!0 (_keys!11116 thiss!1427) #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))) lt!450526)))

(declare-fun bm!43228 () Bool)

(assert (=> bm!43228 (= call!43231 (arrayCountValidKeys!0 (_keys!11116 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31391 (_keys!11116 thiss!1427))))))

(declare-fun b!1023927 () Bool)

(assert (=> b!1023927 (= e!577125 #b00000000000000000000000000000000)))

(assert (= (and d!122553 c!103503) b!1023927))

(assert (= (and d!122553 (not c!103503)) b!1023926))

(assert (= (and b!1023926 c!103502) b!1023925))

(assert (= (and b!1023926 (not c!103502)) b!1023924))

(assert (= (or b!1023925 b!1023924) bm!43228))

(assert (=> b!1023926 m!942599))

(assert (=> b!1023926 m!942599))

(assert (=> b!1023926 m!942601))

(declare-fun m!942611 () Bool)

(assert (=> bm!43228 m!942611))

(assert (=> b!1023881 d!122553))

(declare-fun b!1023939 () Bool)

(declare-fun e!577137 () Bool)

(declare-fun e!577138 () Bool)

(assert (=> b!1023939 (= e!577137 e!577138)))

(declare-fun res!685719 () Bool)

(assert (=> b!1023939 (=> (not res!685719) (not e!577138))))

(declare-fun e!577136 () Bool)

(assert (=> b!1023939 (= res!685719 (not e!577136))))

(declare-fun res!685718 () Bool)

(assert (=> b!1023939 (=> (not res!685718) (not e!577136))))

(assert (=> b!1023939 (= res!685718 (validKeyInArray!0 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1023940 () Bool)

(declare-fun e!577135 () Bool)

(assert (=> b!1023940 (= e!577138 e!577135)))

(declare-fun c!103506 () Bool)

(assert (=> b!1023940 (= c!103506 (validKeyInArray!0 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1023941 () Bool)

(declare-fun call!43234 () Bool)

(assert (=> b!1023941 (= e!577135 call!43234)))

(declare-fun bm!43231 () Bool)

(assert (=> bm!43231 (= call!43234 (arrayNoDuplicates!0 (_keys!11116 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103506 (Cons!21822 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000) Nil!21823) Nil!21823)))))

(declare-fun b!1023942 () Bool)

(assert (=> b!1023942 (= e!577135 call!43234)))

(declare-fun d!122555 () Bool)

(declare-fun res!685717 () Bool)

(assert (=> d!122555 (=> res!685717 e!577137)))

(assert (=> d!122555 (= res!685717 (bvsge #b00000000000000000000000000000000 (size!31391 (_keys!11116 thiss!1427))))))

(assert (=> d!122555 (= (arrayNoDuplicates!0 (_keys!11116 thiss!1427) #b00000000000000000000000000000000 Nil!21823) e!577137)))

(declare-fun b!1023938 () Bool)

(declare-fun contains!5955 (List!21826 (_ BitVec 64)) Bool)

(assert (=> b!1023938 (= e!577136 (contains!5955 Nil!21823 (select (arr!30879 (_keys!11116 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!122555 (not res!685717)) b!1023939))

(assert (= (and b!1023939 res!685718) b!1023938))

(assert (= (and b!1023939 res!685719) b!1023940))

(assert (= (and b!1023940 c!103506) b!1023941))

(assert (= (and b!1023940 (not c!103506)) b!1023942))

(assert (= (or b!1023941 b!1023942) bm!43231))

(assert (=> b!1023939 m!942599))

(assert (=> b!1023939 m!942599))

(assert (=> b!1023939 m!942601))

(assert (=> b!1023940 m!942599))

(assert (=> b!1023940 m!942599))

(assert (=> b!1023940 m!942601))

(assert (=> bm!43231 m!942599))

(declare-fun m!942613 () Bool)

(assert (=> bm!43231 m!942613))

(assert (=> b!1023938 m!942599))

(assert (=> b!1023938 m!942599))

(declare-fun m!942615 () Bool)

(assert (=> b!1023938 m!942615))

(assert (=> b!1023883 d!122555))

(declare-fun mapNonEmpty!37510 () Bool)

(declare-fun mapRes!37510 () Bool)

(declare-fun tp!72057 () Bool)

(declare-fun e!577140 () Bool)

(assert (=> mapNonEmpty!37510 (= mapRes!37510 (and tp!72057 e!577140))))

(declare-fun mapKey!37510 () (_ BitVec 32))

(declare-fun mapValue!37510 () ValueCell!11325)

(declare-fun mapRest!37510 () (Array (_ BitVec 32) ValueCell!11325))

(assert (=> mapNonEmpty!37510 (= mapRest!37509 (store mapRest!37510 mapKey!37510 mapValue!37510))))

(declare-fun b!1023943 () Bool)

(assert (=> b!1023943 (= e!577140 tp_is_empty!24057)))

(declare-fun condMapEmpty!37510 () Bool)

(declare-fun mapDefault!37510 () ValueCell!11325)

(assert (=> mapNonEmpty!37509 (= condMapEmpty!37510 (= mapRest!37509 ((as const (Array (_ BitVec 32) ValueCell!11325)) mapDefault!37510)))))

(declare-fun e!577139 () Bool)

(assert (=> mapNonEmpty!37509 (= tp!72056 (and e!577139 mapRes!37510))))

(declare-fun mapIsEmpty!37510 () Bool)

(assert (=> mapIsEmpty!37510 mapRes!37510))

(declare-fun b!1023944 () Bool)

(assert (=> b!1023944 (= e!577139 tp_is_empty!24057)))

(assert (= (and mapNonEmpty!37509 condMapEmpty!37510) mapIsEmpty!37510))

(assert (= (and mapNonEmpty!37509 (not condMapEmpty!37510)) mapNonEmpty!37510))

(assert (= (and mapNonEmpty!37510 ((_ is ValueCellFull!11325) mapValue!37510)) b!1023943))

(assert (= (and mapNonEmpty!37509 ((_ is ValueCellFull!11325) mapDefault!37510)) b!1023944))

(declare-fun m!942617 () Bool)

(assert (=> mapNonEmpty!37510 m!942617))

(check-sat tp_is_empty!24057 (not d!122549) (not bm!43228) (not b!1023940) (not b!1023901) (not mapNonEmpty!37510) (not b!1023912) (not b!1023926) (not b!1023938) (not b!1023939) (not b_next!20337) (not bm!43225) (not bm!43231) b_and!32601 (not b!1023915) (not b!1023902))
(check-sat b_and!32601 (not b_next!20337))
