; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3826 () Bool)

(assert start!3826)

(declare-fun b_free!783 () Bool)

(declare-fun b_next!783 () Bool)

(assert (=> start!3826 (= b_free!783 (not b_next!783))))

(declare-fun tp!3760 () Bool)

(declare-fun b_and!1589 () Bool)

(assert (=> start!3826 (= tp!3760 b_and!1589)))

(declare-fun b!26853 () Bool)

(declare-fun res!15913 () Bool)

(declare-fun e!17514 () Bool)

(assert (=> b!26853 (=> (not res!15913) (not e!17514))))

(declare-datatypes ((array!1505 0))(
  ( (array!1506 (arr!709 (Array (_ BitVec 32) (_ BitVec 64))) (size!810 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1505)

(declare-datatypes ((List!603 0))(
  ( (Nil!600) (Cons!599 (h!1166 (_ BitVec 64)) (t!3292 List!603)) )
))
(declare-fun arrayNoDuplicates!0 (array!1505 (_ BitVec 32) List!603) Bool)

(assert (=> b!26853 (= res!15913 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!600))))

(declare-fun mapIsEmpty!1225 () Bool)

(declare-fun mapRes!1225 () Bool)

(assert (=> mapIsEmpty!1225 mapRes!1225))

(declare-fun b!26854 () Bool)

(declare-fun e!17516 () Bool)

(declare-fun tp_is_empty!1137 () Bool)

(assert (=> b!26854 (= e!17516 tp_is_empty!1137)))

(declare-fun b!26855 () Bool)

(declare-fun res!15912 () Bool)

(assert (=> b!26855 (=> (not res!15912) (not e!17514))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26855 (= res!15912 (validKeyInArray!0 k0!1304))))

(declare-fun b!26856 () Bool)

(declare-fun res!15915 () Bool)

(assert (=> b!26856 (=> (not res!15915) (not e!17514))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1341 0))(
  ( (V!1342 (val!595 Int)) )
))
(declare-datatypes ((ValueCell!369 0))(
  ( (ValueCellFull!369 (v!1681 V!1341)) (EmptyCell!369) )
))
(declare-datatypes ((array!1507 0))(
  ( (array!1508 (arr!710 (Array (_ BitVec 32) ValueCell!369)) (size!811 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1507)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1341)

(declare-fun minValue!1443 () V!1341)

(declare-datatypes ((tuple2!984 0))(
  ( (tuple2!985 (_1!502 (_ BitVec 64)) (_2!502 V!1341)) )
))
(declare-datatypes ((List!604 0))(
  ( (Nil!601) (Cons!600 (h!1167 tuple2!984) (t!3293 List!604)) )
))
(declare-datatypes ((ListLongMap!565 0))(
  ( (ListLongMap!566 (toList!298 List!604)) )
))
(declare-fun contains!232 (ListLongMap!565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!126 (array!1505 array!1507 (_ BitVec 32) (_ BitVec 32) V!1341 V!1341 (_ BitVec 32) Int) ListLongMap!565)

(assert (=> b!26856 (= res!15915 (not (contains!232 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!26857 () Bool)

(declare-fun res!15916 () Bool)

(assert (=> b!26857 (=> (not res!15916) (not e!17514))))

(assert (=> b!26857 (= res!15916 (and (= (size!811 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!810 _keys!1833) (size!811 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26858 () Bool)

(declare-fun res!15911 () Bool)

(assert (=> b!26858 (=> (not res!15911) (not e!17514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1505 (_ BitVec 32)) Bool)

(assert (=> b!26858 (= res!15911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26859 () Bool)

(declare-fun e!17518 () Bool)

(assert (=> b!26859 (= e!17518 (and e!17516 mapRes!1225))))

(declare-fun condMapEmpty!1225 () Bool)

(declare-fun mapDefault!1225 () ValueCell!369)

(assert (=> b!26859 (= condMapEmpty!1225 (= (arr!710 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!369)) mapDefault!1225)))))

(declare-fun b!26860 () Bool)

(assert (=> b!26860 (= e!17514 (bvsge #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(declare-fun mapNonEmpty!1225 () Bool)

(declare-fun tp!3759 () Bool)

(declare-fun e!17517 () Bool)

(assert (=> mapNonEmpty!1225 (= mapRes!1225 (and tp!3759 e!17517))))

(declare-fun mapKey!1225 () (_ BitVec 32))

(declare-fun mapRest!1225 () (Array (_ BitVec 32) ValueCell!369))

(declare-fun mapValue!1225 () ValueCell!369)

(assert (=> mapNonEmpty!1225 (= (arr!710 _values!1501) (store mapRest!1225 mapKey!1225 mapValue!1225))))

(declare-fun res!15914 () Bool)

(assert (=> start!3826 (=> (not res!15914) (not e!17514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3826 (= res!15914 (validMask!0 mask!2294))))

(assert (=> start!3826 e!17514))

(assert (=> start!3826 true))

(assert (=> start!3826 tp!3760))

(declare-fun array_inv!487 (array!1507) Bool)

(assert (=> start!3826 (and (array_inv!487 _values!1501) e!17518)))

(declare-fun array_inv!488 (array!1505) Bool)

(assert (=> start!3826 (array_inv!488 _keys!1833)))

(assert (=> start!3826 tp_is_empty!1137))

(declare-fun b!26861 () Bool)

(assert (=> b!26861 (= e!17517 tp_is_empty!1137)))

(assert (= (and start!3826 res!15914) b!26857))

(assert (= (and b!26857 res!15916) b!26858))

(assert (= (and b!26858 res!15911) b!26853))

(assert (= (and b!26853 res!15913) b!26855))

(assert (= (and b!26855 res!15912) b!26856))

(assert (= (and b!26856 res!15915) b!26860))

(assert (= (and b!26859 condMapEmpty!1225) mapIsEmpty!1225))

(assert (= (and b!26859 (not condMapEmpty!1225)) mapNonEmpty!1225))

(get-info :version)

(assert (= (and mapNonEmpty!1225 ((_ is ValueCellFull!369) mapValue!1225)) b!26861))

(assert (= (and b!26859 ((_ is ValueCellFull!369) mapDefault!1225)) b!26854))

(assert (= start!3826 b!26859))

(declare-fun m!21493 () Bool)

(assert (=> start!3826 m!21493))

(declare-fun m!21495 () Bool)

(assert (=> start!3826 m!21495))

(declare-fun m!21497 () Bool)

(assert (=> start!3826 m!21497))

(declare-fun m!21499 () Bool)

(assert (=> b!26856 m!21499))

(assert (=> b!26856 m!21499))

(declare-fun m!21501 () Bool)

(assert (=> b!26856 m!21501))

(declare-fun m!21503 () Bool)

(assert (=> mapNonEmpty!1225 m!21503))

(declare-fun m!21505 () Bool)

(assert (=> b!26855 m!21505))

(declare-fun m!21507 () Bool)

(assert (=> b!26858 m!21507))

(declare-fun m!21509 () Bool)

(assert (=> b!26853 m!21509))

(check-sat (not start!3826) (not b!26855) (not b_next!783) tp_is_empty!1137 b_and!1589 (not b!26856) (not b!26858) (not mapNonEmpty!1225) (not b!26853))
(check-sat b_and!1589 (not b_next!783))
(get-model)

(declare-fun bm!2507 () Bool)

(declare-fun call!2510 () Bool)

(assert (=> bm!2507 (= call!2510 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!26897 () Bool)

(declare-fun e!17541 () Bool)

(declare-fun e!17540 () Bool)

(assert (=> b!26897 (= e!17541 e!17540)))

(declare-fun lt!10427 () (_ BitVec 64))

(assert (=> b!26897 (= lt!10427 (select (arr!709 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!631 0))(
  ( (Unit!632) )
))
(declare-fun lt!10428 () Unit!631)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1505 (_ BitVec 64) (_ BitVec 32)) Unit!631)

(assert (=> b!26897 (= lt!10428 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10427 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!26897 (arrayContainsKey!0 _keys!1833 lt!10427 #b00000000000000000000000000000000)))

(declare-fun lt!10426 () Unit!631)

(assert (=> b!26897 (= lt!10426 lt!10428)))

(declare-fun res!15939 () Bool)

(declare-datatypes ((SeekEntryResult!67 0))(
  ( (MissingZero!67 (index!2390 (_ BitVec 32))) (Found!67 (index!2391 (_ BitVec 32))) (Intermediate!67 (undefined!879 Bool) (index!2392 (_ BitVec 32)) (x!6181 (_ BitVec 32))) (Undefined!67) (MissingVacant!67 (index!2393 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1505 (_ BitVec 32)) SeekEntryResult!67)

(assert (=> b!26897 (= res!15939 (= (seekEntryOrOpen!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!67 #b00000000000000000000000000000000)))))

(assert (=> b!26897 (=> (not res!15939) (not e!17540))))

(declare-fun d!4917 () Bool)

(declare-fun res!15940 () Bool)

(declare-fun e!17542 () Bool)

(assert (=> d!4917 (=> res!15940 e!17542)))

(assert (=> d!4917 (= res!15940 (bvsge #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(assert (=> d!4917 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!17542)))

(declare-fun b!26898 () Bool)

(assert (=> b!26898 (= e!17540 call!2510)))

(declare-fun b!26899 () Bool)

(assert (=> b!26899 (= e!17541 call!2510)))

(declare-fun b!26900 () Bool)

(assert (=> b!26900 (= e!17542 e!17541)))

(declare-fun c!3673 () Bool)

(assert (=> b!26900 (= c!3673 (validKeyInArray!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!4917 (not res!15940)) b!26900))

(assert (= (and b!26900 c!3673) b!26897))

(assert (= (and b!26900 (not c!3673)) b!26899))

(assert (= (and b!26897 res!15939) b!26898))

(assert (= (or b!26898 b!26899) bm!2507))

(declare-fun m!21529 () Bool)

(assert (=> bm!2507 m!21529))

(declare-fun m!21531 () Bool)

(assert (=> b!26897 m!21531))

(declare-fun m!21533 () Bool)

(assert (=> b!26897 m!21533))

(declare-fun m!21535 () Bool)

(assert (=> b!26897 m!21535))

(assert (=> b!26897 m!21531))

(declare-fun m!21537 () Bool)

(assert (=> b!26897 m!21537))

(assert (=> b!26900 m!21531))

(assert (=> b!26900 m!21531))

(declare-fun m!21539 () Bool)

(assert (=> b!26900 m!21539))

(assert (=> b!26858 d!4917))

(declare-fun bm!2510 () Bool)

(declare-fun call!2513 () Bool)

(declare-fun c!3676 () Bool)

(assert (=> bm!2510 (= call!2513 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3676 (Cons!599 (select (arr!709 _keys!1833) #b00000000000000000000000000000000) Nil!600) Nil!600)))))

(declare-fun d!4919 () Bool)

(declare-fun res!15948 () Bool)

(declare-fun e!17552 () Bool)

(assert (=> d!4919 (=> res!15948 e!17552)))

(assert (=> d!4919 (= res!15948 (bvsge #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(assert (=> d!4919 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!600) e!17552)))

(declare-fun b!26911 () Bool)

(declare-fun e!17553 () Bool)

(declare-fun contains!233 (List!603 (_ BitVec 64)) Bool)

(assert (=> b!26911 (= e!17553 (contains!233 Nil!600 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26912 () Bool)

(declare-fun e!17554 () Bool)

(assert (=> b!26912 (= e!17552 e!17554)))

(declare-fun res!15949 () Bool)

(assert (=> b!26912 (=> (not res!15949) (not e!17554))))

(assert (=> b!26912 (= res!15949 (not e!17553))))

(declare-fun res!15947 () Bool)

(assert (=> b!26912 (=> (not res!15947) (not e!17553))))

(assert (=> b!26912 (= res!15947 (validKeyInArray!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26913 () Bool)

(declare-fun e!17551 () Bool)

(assert (=> b!26913 (= e!17551 call!2513)))

(declare-fun b!26914 () Bool)

(assert (=> b!26914 (= e!17554 e!17551)))

(assert (=> b!26914 (= c!3676 (validKeyInArray!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26915 () Bool)

(assert (=> b!26915 (= e!17551 call!2513)))

(assert (= (and d!4919 (not res!15948)) b!26912))

(assert (= (and b!26912 res!15947) b!26911))

(assert (= (and b!26912 res!15949) b!26914))

(assert (= (and b!26914 c!3676) b!26913))

(assert (= (and b!26914 (not c!3676)) b!26915))

(assert (= (or b!26913 b!26915) bm!2510))

(assert (=> bm!2510 m!21531))

(declare-fun m!21541 () Bool)

(assert (=> bm!2510 m!21541))

(assert (=> b!26911 m!21531))

(assert (=> b!26911 m!21531))

(declare-fun m!21543 () Bool)

(assert (=> b!26911 m!21543))

(assert (=> b!26912 m!21531))

(assert (=> b!26912 m!21531))

(assert (=> b!26912 m!21539))

(assert (=> b!26914 m!21531))

(assert (=> b!26914 m!21531))

(assert (=> b!26914 m!21539))

(assert (=> b!26853 d!4919))

(declare-fun d!4921 () Bool)

(assert (=> d!4921 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3826 d!4921))

(declare-fun d!4923 () Bool)

(assert (=> d!4923 (= (array_inv!487 _values!1501) (bvsge (size!811 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3826 d!4923))

(declare-fun d!4925 () Bool)

(assert (=> d!4925 (= (array_inv!488 _keys!1833) (bvsge (size!810 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3826 d!4925))

(declare-fun d!4927 () Bool)

(assert (=> d!4927 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!26855 d!4927))

(declare-fun d!4929 () Bool)

(declare-fun e!17559 () Bool)

(assert (=> d!4929 e!17559))

(declare-fun res!15952 () Bool)

(assert (=> d!4929 (=> res!15952 e!17559)))

(declare-fun lt!10439 () Bool)

(assert (=> d!4929 (= res!15952 (not lt!10439))))

(declare-fun lt!10438 () Bool)

(assert (=> d!4929 (= lt!10439 lt!10438)))

(declare-fun lt!10440 () Unit!631)

(declare-fun e!17560 () Unit!631)

(assert (=> d!4929 (= lt!10440 e!17560)))

(declare-fun c!3679 () Bool)

(assert (=> d!4929 (= c!3679 lt!10438)))

(declare-fun containsKey!26 (List!604 (_ BitVec 64)) Bool)

(assert (=> d!4929 (= lt!10438 (containsKey!26 (toList!298 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!4929 (= (contains!232 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!10439)))

(declare-fun b!26922 () Bool)

(declare-fun lt!10437 () Unit!631)

(assert (=> b!26922 (= e!17560 lt!10437)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!23 (List!604 (_ BitVec 64)) Unit!631)

(assert (=> b!26922 (= lt!10437 (lemmaContainsKeyImpliesGetValueByKeyDefined!23 (toList!298 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!68 0))(
  ( (Some!67 (v!1683 V!1341)) (None!66) )
))
(declare-fun isDefined!24 (Option!68) Bool)

(declare-fun getValueByKey!62 (List!604 (_ BitVec 64)) Option!68)

(assert (=> b!26922 (isDefined!24 (getValueByKey!62 (toList!298 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!26923 () Bool)

(declare-fun Unit!633 () Unit!631)

(assert (=> b!26923 (= e!17560 Unit!633)))

(declare-fun b!26924 () Bool)

(assert (=> b!26924 (= e!17559 (isDefined!24 (getValueByKey!62 (toList!298 (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!4929 c!3679) b!26922))

(assert (= (and d!4929 (not c!3679)) b!26923))

(assert (= (and d!4929 (not res!15952)) b!26924))

(declare-fun m!21545 () Bool)

(assert (=> d!4929 m!21545))

(declare-fun m!21547 () Bool)

(assert (=> b!26922 m!21547))

(declare-fun m!21549 () Bool)

(assert (=> b!26922 m!21549))

(assert (=> b!26922 m!21549))

(declare-fun m!21551 () Bool)

(assert (=> b!26922 m!21551))

(assert (=> b!26924 m!21549))

(assert (=> b!26924 m!21549))

(assert (=> b!26924 m!21551))

(assert (=> b!26856 d!4929))

(declare-fun b!26967 () Bool)

(declare-fun e!17595 () Bool)

(declare-fun lt!10499 () ListLongMap!565)

(declare-fun apply!30 (ListLongMap!565 (_ BitVec 64)) V!1341)

(assert (=> b!26967 (= e!17595 (= (apply!30 lt!10499 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!26968 () Bool)

(declare-fun e!17593 () Bool)

(declare-fun e!17587 () Bool)

(assert (=> b!26968 (= e!17593 e!17587)))

(declare-fun res!15972 () Bool)

(assert (=> b!26968 (=> (not res!15972) (not e!17587))))

(assert (=> b!26968 (= res!15972 (contains!232 lt!10499 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!26968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(declare-fun bm!2525 () Bool)

(declare-fun call!2534 () ListLongMap!565)

(declare-fun getCurrentListMapNoExtraKeys!17 (array!1505 array!1507 (_ BitVec 32) (_ BitVec 32) V!1341 V!1341 (_ BitVec 32) Int) ListLongMap!565)

(assert (=> bm!2525 (= call!2534 (getCurrentListMapNoExtraKeys!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!26969 () Bool)

(declare-fun e!17596 () ListLongMap!565)

(declare-fun call!2531 () ListLongMap!565)

(assert (=> b!26969 (= e!17596 call!2531)))

(declare-fun b!26970 () Bool)

(declare-fun e!17588 () Bool)

(assert (=> b!26970 (= e!17588 (validKeyInArray!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26971 () Bool)

(declare-fun get!433 (ValueCell!369 V!1341) V!1341)

(declare-fun dynLambda!147 (Int (_ BitVec 64)) V!1341)

(assert (=> b!26971 (= e!17587 (= (apply!30 lt!10499 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)) (get!433 (select (arr!710 _values!1501) #b00000000000000000000000000000000) (dynLambda!147 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!26971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!811 _values!1501)))))

(assert (=> b!26971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(declare-fun d!4931 () Bool)

(declare-fun e!17590 () Bool)

(assert (=> d!4931 e!17590))

(declare-fun res!15973 () Bool)

(assert (=> d!4931 (=> (not res!15973) (not e!17590))))

(assert (=> d!4931 (= res!15973 (or (bvsge #b00000000000000000000000000000000 (size!810 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!810 _keys!1833)))))))

(declare-fun lt!10493 () ListLongMap!565)

(assert (=> d!4931 (= lt!10499 lt!10493)))

(declare-fun lt!10485 () Unit!631)

(declare-fun e!17597 () Unit!631)

(assert (=> d!4931 (= lt!10485 e!17597)))

(declare-fun c!3692 () Bool)

(declare-fun e!17591 () Bool)

(assert (=> d!4931 (= c!3692 e!17591)))

(declare-fun res!15975 () Bool)

(assert (=> d!4931 (=> (not res!15975) (not e!17591))))

(assert (=> d!4931 (= res!15975 (bvslt #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(declare-fun e!17599 () ListLongMap!565)

(assert (=> d!4931 (= lt!10493 e!17599)))

(declare-fun c!3695 () Bool)

(assert (=> d!4931 (= c!3695 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!4931 (validMask!0 mask!2294)))

(assert (=> d!4931 (= (getCurrentListMap!126 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!10499)))

(declare-fun b!26972 () Bool)

(declare-fun c!3694 () Bool)

(assert (=> b!26972 (= c!3694 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!17594 () ListLongMap!565)

(assert (=> b!26972 (= e!17594 e!17596)))

(declare-fun bm!2526 () Bool)

(declare-fun call!2533 () ListLongMap!565)

(declare-fun call!2530 () ListLongMap!565)

(assert (=> bm!2526 (= call!2533 call!2530)))

(declare-fun b!26973 () Bool)

(declare-fun Unit!634 () Unit!631)

(assert (=> b!26973 (= e!17597 Unit!634)))

(declare-fun b!26974 () Bool)

(declare-fun res!15976 () Bool)

(assert (=> b!26974 (=> (not res!15976) (not e!17590))))

(declare-fun e!17589 () Bool)

(assert (=> b!26974 (= res!15976 e!17589)))

(declare-fun c!3697 () Bool)

(assert (=> b!26974 (= c!3697 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!26975 () Bool)

(declare-fun e!17592 () Bool)

(declare-fun call!2528 () Bool)

(assert (=> b!26975 (= e!17592 (not call!2528))))

(declare-fun bm!2527 () Bool)

(declare-fun call!2529 () ListLongMap!565)

(assert (=> bm!2527 (= call!2529 call!2534)))

(declare-fun bm!2528 () Bool)

(assert (=> bm!2528 (= call!2531 call!2529)))

(declare-fun b!26976 () Bool)

(assert (=> b!26976 (= e!17590 e!17592)))

(declare-fun c!3696 () Bool)

(assert (=> b!26976 (= c!3696 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!26977 () Bool)

(assert (=> b!26977 (= e!17591 (validKeyInArray!0 (select (arr!709 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26978 () Bool)

(declare-fun +!48 (ListLongMap!565 tuple2!984) ListLongMap!565)

(assert (=> b!26978 (= e!17599 (+!48 call!2530 (tuple2!985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!26979 () Bool)

(assert (=> b!26979 (= e!17596 call!2533)))

(declare-fun b!26980 () Bool)

(declare-fun lt!10495 () Unit!631)

(assert (=> b!26980 (= e!17597 lt!10495)))

(declare-fun lt!10498 () ListLongMap!565)

(assert (=> b!26980 (= lt!10498 (getCurrentListMapNoExtraKeys!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10494 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10494 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10502 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10502 (select (arr!709 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10489 () Unit!631)

(declare-fun addStillContains!15 (ListLongMap!565 (_ BitVec 64) V!1341 (_ BitVec 64)) Unit!631)

(assert (=> b!26980 (= lt!10489 (addStillContains!15 lt!10498 lt!10494 zeroValue!1443 lt!10502))))

(assert (=> b!26980 (contains!232 (+!48 lt!10498 (tuple2!985 lt!10494 zeroValue!1443)) lt!10502)))

(declare-fun lt!10492 () Unit!631)

(assert (=> b!26980 (= lt!10492 lt!10489)))

(declare-fun lt!10505 () ListLongMap!565)

(assert (=> b!26980 (= lt!10505 (getCurrentListMapNoExtraKeys!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10503 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10503 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10491 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10491 (select (arr!709 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10487 () Unit!631)

(declare-fun addApplyDifferent!15 (ListLongMap!565 (_ BitVec 64) V!1341 (_ BitVec 64)) Unit!631)

(assert (=> b!26980 (= lt!10487 (addApplyDifferent!15 lt!10505 lt!10503 minValue!1443 lt!10491))))

(assert (=> b!26980 (= (apply!30 (+!48 lt!10505 (tuple2!985 lt!10503 minValue!1443)) lt!10491) (apply!30 lt!10505 lt!10491))))

(declare-fun lt!10497 () Unit!631)

(assert (=> b!26980 (= lt!10497 lt!10487)))

(declare-fun lt!10500 () ListLongMap!565)

(assert (=> b!26980 (= lt!10500 (getCurrentListMapNoExtraKeys!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10501 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10501 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10504 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10504 (select (arr!709 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10488 () Unit!631)

(assert (=> b!26980 (= lt!10488 (addApplyDifferent!15 lt!10500 lt!10501 zeroValue!1443 lt!10504))))

(assert (=> b!26980 (= (apply!30 (+!48 lt!10500 (tuple2!985 lt!10501 zeroValue!1443)) lt!10504) (apply!30 lt!10500 lt!10504))))

(declare-fun lt!10506 () Unit!631)

(assert (=> b!26980 (= lt!10506 lt!10488)))

(declare-fun lt!10486 () ListLongMap!565)

(assert (=> b!26980 (= lt!10486 (getCurrentListMapNoExtraKeys!17 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10490 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10490 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10496 () (_ BitVec 64))

(assert (=> b!26980 (= lt!10496 (select (arr!709 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!26980 (= lt!10495 (addApplyDifferent!15 lt!10486 lt!10490 minValue!1443 lt!10496))))

(assert (=> b!26980 (= (apply!30 (+!48 lt!10486 (tuple2!985 lt!10490 minValue!1443)) lt!10496) (apply!30 lt!10486 lt!10496))))

(declare-fun b!26981 () Bool)

(assert (=> b!26981 (= e!17599 e!17594)))

(declare-fun c!3693 () Bool)

(assert (=> b!26981 (= c!3693 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!26982 () Bool)

(assert (=> b!26982 (= e!17589 e!17595)))

(declare-fun res!15974 () Bool)

(declare-fun call!2532 () Bool)

(assert (=> b!26982 (= res!15974 call!2532)))

(assert (=> b!26982 (=> (not res!15974) (not e!17595))))

(declare-fun bm!2529 () Bool)

(assert (=> bm!2529 (= call!2530 (+!48 (ite c!3695 call!2534 (ite c!3693 call!2529 call!2531)) (ite (or c!3695 c!3693) (tuple2!985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun bm!2530 () Bool)

(assert (=> bm!2530 (= call!2532 (contains!232 lt!10499 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!26983 () Bool)

(declare-fun res!15977 () Bool)

(assert (=> b!26983 (=> (not res!15977) (not e!17590))))

(assert (=> b!26983 (= res!15977 e!17593)))

(declare-fun res!15978 () Bool)

(assert (=> b!26983 (=> res!15978 e!17593)))

(assert (=> b!26983 (= res!15978 (not e!17588))))

(declare-fun res!15971 () Bool)

(assert (=> b!26983 (=> (not res!15971) (not e!17588))))

(assert (=> b!26983 (= res!15971 (bvslt #b00000000000000000000000000000000 (size!810 _keys!1833)))))

(declare-fun b!26984 () Bool)

(assert (=> b!26984 (= e!17589 (not call!2532))))

(declare-fun b!26985 () Bool)

(declare-fun e!17598 () Bool)

(assert (=> b!26985 (= e!17592 e!17598)))

(declare-fun res!15979 () Bool)

(assert (=> b!26985 (= res!15979 call!2528)))

(assert (=> b!26985 (=> (not res!15979) (not e!17598))))

(declare-fun b!26986 () Bool)

(assert (=> b!26986 (= e!17598 (= (apply!30 lt!10499 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!26987 () Bool)

(assert (=> b!26987 (= e!17594 call!2533)))

(declare-fun bm!2531 () Bool)

(assert (=> bm!2531 (= call!2528 (contains!232 lt!10499 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!4931 c!3695) b!26978))

(assert (= (and d!4931 (not c!3695)) b!26981))

(assert (= (and b!26981 c!3693) b!26987))

(assert (= (and b!26981 (not c!3693)) b!26972))

(assert (= (and b!26972 c!3694) b!26979))

(assert (= (and b!26972 (not c!3694)) b!26969))

(assert (= (or b!26979 b!26969) bm!2528))

(assert (= (or b!26987 bm!2528) bm!2527))

(assert (= (or b!26987 b!26979) bm!2526))

(assert (= (or b!26978 bm!2527) bm!2525))

(assert (= (or b!26978 bm!2526) bm!2529))

(assert (= (and d!4931 res!15975) b!26977))

(assert (= (and d!4931 c!3692) b!26980))

(assert (= (and d!4931 (not c!3692)) b!26973))

(assert (= (and d!4931 res!15973) b!26983))

(assert (= (and b!26983 res!15971) b!26970))

(assert (= (and b!26983 (not res!15978)) b!26968))

(assert (= (and b!26968 res!15972) b!26971))

(assert (= (and b!26983 res!15977) b!26974))

(assert (= (and b!26974 c!3697) b!26982))

(assert (= (and b!26974 (not c!3697)) b!26984))

(assert (= (and b!26982 res!15974) b!26967))

(assert (= (or b!26982 b!26984) bm!2530))

(assert (= (and b!26974 res!15976) b!26976))

(assert (= (and b!26976 c!3696) b!26985))

(assert (= (and b!26976 (not c!3696)) b!26975))

(assert (= (and b!26985 res!15979) b!26986))

(assert (= (or b!26985 b!26975) bm!2531))

(declare-fun b_lambda!1687 () Bool)

(assert (=> (not b_lambda!1687) (not b!26971)))

(declare-fun t!3295 () Bool)

(declare-fun tb!677 () Bool)

(assert (=> (and start!3826 (= defaultEntry!1504 defaultEntry!1504) t!3295) tb!677))

(declare-fun result!1137 () Bool)

(assert (=> tb!677 (= result!1137 tp_is_empty!1137)))

(assert (=> b!26971 t!3295))

(declare-fun b_and!1593 () Bool)

(assert (= b_and!1589 (and (=> t!3295 result!1137) b_and!1593)))

(assert (=> b!26970 m!21531))

(assert (=> b!26970 m!21531))

(assert (=> b!26970 m!21539))

(declare-fun m!21553 () Bool)

(assert (=> bm!2525 m!21553))

(declare-fun m!21555 () Bool)

(assert (=> b!26980 m!21555))

(declare-fun m!21557 () Bool)

(assert (=> b!26980 m!21557))

(declare-fun m!21559 () Bool)

(assert (=> b!26980 m!21559))

(declare-fun m!21561 () Bool)

(assert (=> b!26980 m!21561))

(declare-fun m!21563 () Bool)

(assert (=> b!26980 m!21563))

(declare-fun m!21565 () Bool)

(assert (=> b!26980 m!21565))

(declare-fun m!21567 () Bool)

(assert (=> b!26980 m!21567))

(declare-fun m!21569 () Bool)

(assert (=> b!26980 m!21569))

(assert (=> b!26980 m!21563))

(declare-fun m!21571 () Bool)

(assert (=> b!26980 m!21571))

(assert (=> b!26980 m!21557))

(declare-fun m!21573 () Bool)

(assert (=> b!26980 m!21573))

(assert (=> b!26980 m!21531))

(declare-fun m!21575 () Bool)

(assert (=> b!26980 m!21575))

(assert (=> b!26980 m!21553))

(declare-fun m!21577 () Bool)

(assert (=> b!26980 m!21577))

(assert (=> b!26980 m!21555))

(declare-fun m!21579 () Bool)

(assert (=> b!26980 m!21579))

(declare-fun m!21581 () Bool)

(assert (=> b!26980 m!21581))

(assert (=> b!26980 m!21577))

(declare-fun m!21583 () Bool)

(assert (=> b!26980 m!21583))

(assert (=> b!26977 m!21531))

(assert (=> b!26977 m!21531))

(assert (=> b!26977 m!21539))

(declare-fun m!21585 () Bool)

(assert (=> b!26986 m!21585))

(declare-fun m!21587 () Bool)

(assert (=> b!26978 m!21587))

(declare-fun m!21589 () Bool)

(assert (=> bm!2530 m!21589))

(assert (=> b!26968 m!21531))

(assert (=> b!26968 m!21531))

(declare-fun m!21591 () Bool)

(assert (=> b!26968 m!21591))

(declare-fun m!21593 () Bool)

(assert (=> b!26967 m!21593))

(declare-fun m!21595 () Bool)

(assert (=> b!26971 m!21595))

(declare-fun m!21597 () Bool)

(assert (=> b!26971 m!21597))

(declare-fun m!21599 () Bool)

(assert (=> b!26971 m!21599))

(assert (=> b!26971 m!21531))

(declare-fun m!21601 () Bool)

(assert (=> b!26971 m!21601))

(assert (=> b!26971 m!21595))

(assert (=> b!26971 m!21597))

(assert (=> b!26971 m!21531))

(assert (=> d!4931 m!21493))

(declare-fun m!21603 () Bool)

(assert (=> bm!2531 m!21603))

(declare-fun m!21605 () Bool)

(assert (=> bm!2529 m!21605))

(assert (=> b!26856 d!4931))

(declare-fun b!26997 () Bool)

(declare-fun e!17605 () Bool)

(assert (=> b!26997 (= e!17605 tp_is_empty!1137)))

(declare-fun condMapEmpty!1231 () Bool)

(declare-fun mapDefault!1231 () ValueCell!369)

(assert (=> mapNonEmpty!1225 (= condMapEmpty!1231 (= mapRest!1225 ((as const (Array (_ BitVec 32) ValueCell!369)) mapDefault!1231)))))

(declare-fun mapRes!1231 () Bool)

(assert (=> mapNonEmpty!1225 (= tp!3759 (and e!17605 mapRes!1231))))

(declare-fun b!26996 () Bool)

(declare-fun e!17604 () Bool)

(assert (=> b!26996 (= e!17604 tp_is_empty!1137)))

(declare-fun mapIsEmpty!1231 () Bool)

(assert (=> mapIsEmpty!1231 mapRes!1231))

(declare-fun mapNonEmpty!1231 () Bool)

(declare-fun tp!3769 () Bool)

(assert (=> mapNonEmpty!1231 (= mapRes!1231 (and tp!3769 e!17604))))

(declare-fun mapRest!1231 () (Array (_ BitVec 32) ValueCell!369))

(declare-fun mapKey!1231 () (_ BitVec 32))

(declare-fun mapValue!1231 () ValueCell!369)

(assert (=> mapNonEmpty!1231 (= mapRest!1225 (store mapRest!1231 mapKey!1231 mapValue!1231))))

(assert (= (and mapNonEmpty!1225 condMapEmpty!1231) mapIsEmpty!1231))

(assert (= (and mapNonEmpty!1225 (not condMapEmpty!1231)) mapNonEmpty!1231))

(assert (= (and mapNonEmpty!1231 ((_ is ValueCellFull!369) mapValue!1231)) b!26996))

(assert (= (and mapNonEmpty!1225 ((_ is ValueCellFull!369) mapDefault!1231)) b!26997))

(declare-fun m!21607 () Bool)

(assert (=> mapNonEmpty!1231 m!21607))

(declare-fun b_lambda!1689 () Bool)

(assert (= b_lambda!1687 (or (and start!3826 b_free!783) b_lambda!1689)))

(check-sat (not b!26897) (not b!26968) (not mapNonEmpty!1231) (not d!4931) (not b!26978) tp_is_empty!1137 (not b!26924) (not b!26912) (not b!26980) (not b!26971) (not d!4929) (not b!26900) (not bm!2510) (not bm!2529) (not b!26911) (not bm!2507) (not bm!2530) (not b_next!783) (not b!26986) b_and!1593 (not bm!2525) (not bm!2531) (not b!26970) (not b!26914) (not b!26977) (not b!26922) (not b!26967) (not b_lambda!1689))
(check-sat b_and!1593 (not b_next!783))
