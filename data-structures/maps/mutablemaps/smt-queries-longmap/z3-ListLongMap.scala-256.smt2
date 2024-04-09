; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4218 () Bool)

(assert start!4218)

(declare-fun b_free!1125 () Bool)

(declare-fun b_next!1125 () Bool)

(assert (=> start!4218 (= b_free!1125 (not b_next!1125))))

(declare-fun tp!4795 () Bool)

(declare-fun b_and!1937 () Bool)

(assert (=> start!4218 (= tp!4795 b_and!1937)))

(declare-fun b!32276 () Bool)

(declare-fun res!19609 () Bool)

(declare-fun e!20517 () Bool)

(assert (=> b!32276 (=> (not res!19609) (not e!20517))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32276 (= res!19609 (validKeyInArray!0 k0!1304))))

(declare-fun b!32277 () Bool)

(declare-fun res!19603 () Bool)

(assert (=> b!32277 (=> (not res!19603) (not e!20517))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1797 0))(
  ( (V!1798 (val!766 Int)) )
))
(declare-datatypes ((ValueCell!540 0))(
  ( (ValueCellFull!540 (v!1855 V!1797)) (EmptyCell!540) )
))
(declare-datatypes ((array!2163 0))(
  ( (array!2164 (arr!1035 (Array (_ BitVec 32) ValueCell!540)) (size!1136 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2163)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2165 0))(
  ( (array!2166 (arr!1036 (Array (_ BitVec 32) (_ BitVec 64))) (size!1137 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2165)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1797)

(declare-fun minValue!1443 () V!1797)

(declare-datatypes ((tuple2!1238 0))(
  ( (tuple2!1239 (_1!629 (_ BitVec 64)) (_2!629 V!1797)) )
))
(declare-datatypes ((List!841 0))(
  ( (Nil!838) (Cons!837 (h!1404 tuple2!1238) (t!3536 List!841)) )
))
(declare-datatypes ((ListLongMap!819 0))(
  ( (ListLongMap!820 (toList!425 List!841)) )
))
(declare-fun contains!362 (ListLongMap!819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!250 (array!2165 array!2163 (_ BitVec 32) (_ BitVec 32) V!1797 V!1797 (_ BitVec 32) Int) ListLongMap!819)

(assert (=> b!32277 (= res!19603 (not (contains!362 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapNonEmpty!1747 () Bool)

(declare-fun mapRes!1747 () Bool)

(declare-fun tp!4794 () Bool)

(declare-fun e!20519 () Bool)

(assert (=> mapNonEmpty!1747 (= mapRes!1747 (and tp!4794 e!20519))))

(declare-fun mapKey!1747 () (_ BitVec 32))

(declare-fun mapRest!1747 () (Array (_ BitVec 32) ValueCell!540))

(declare-fun mapValue!1747 () ValueCell!540)

(assert (=> mapNonEmpty!1747 (= (arr!1035 _values!1501) (store mapRest!1747 mapKey!1747 mapValue!1747))))

(declare-fun b!32278 () Bool)

(declare-fun e!20520 () Bool)

(declare-fun e!20518 () Bool)

(assert (=> b!32278 (= e!20520 (and e!20518 mapRes!1747))))

(declare-fun condMapEmpty!1747 () Bool)

(declare-fun mapDefault!1747 () ValueCell!540)

(assert (=> b!32278 (= condMapEmpty!1747 (= (arr!1035 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!540)) mapDefault!1747)))))

(declare-fun b!32279 () Bool)

(declare-fun res!19604 () Bool)

(assert (=> b!32279 (=> (not res!19604) (not e!20517))))

(declare-fun arrayContainsKey!0 (array!2165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32279 (= res!19604 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!1747 () Bool)

(assert (=> mapIsEmpty!1747 mapRes!1747))

(declare-fun res!19605 () Bool)

(assert (=> start!4218 (=> (not res!19605) (not e!20517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4218 (= res!19605 (validMask!0 mask!2294))))

(assert (=> start!4218 e!20517))

(assert (=> start!4218 true))

(assert (=> start!4218 tp!4795))

(declare-fun array_inv!687 (array!2163) Bool)

(assert (=> start!4218 (and (array_inv!687 _values!1501) e!20520)))

(declare-fun array_inv!688 (array!2165) Bool)

(assert (=> start!4218 (array_inv!688 _keys!1833)))

(declare-fun tp_is_empty!1479 () Bool)

(assert (=> start!4218 tp_is_empty!1479))

(declare-fun b!32280 () Bool)

(assert (=> b!32280 (= e!20518 tp_is_empty!1479)))

(declare-fun b!32281 () Bool)

(declare-fun res!19606 () Bool)

(assert (=> b!32281 (=> (not res!19606) (not e!20517))))

(assert (=> b!32281 (= res!19606 (and (= (size!1136 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1137 _keys!1833) (size!1136 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32282 () Bool)

(declare-fun lt!11658 () (_ BitVec 32))

(assert (=> b!32282 (= e!20517 (or (bvslt lt!11658 #b00000000000000000000000000000000) (bvsge lt!11658 (size!1137 _keys!1833))))))

(declare-fun arrayScanForKey!0 (array!2165 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32282 (= lt!11658 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32283 () Bool)

(declare-fun res!19608 () Bool)

(assert (=> b!32283 (=> (not res!19608) (not e!20517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2165 (_ BitVec 32)) Bool)

(assert (=> b!32283 (= res!19608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32284 () Bool)

(declare-fun res!19607 () Bool)

(assert (=> b!32284 (=> (not res!19607) (not e!20517))))

(declare-datatypes ((List!842 0))(
  ( (Nil!839) (Cons!838 (h!1405 (_ BitVec 64)) (t!3537 List!842)) )
))
(declare-fun arrayNoDuplicates!0 (array!2165 (_ BitVec 32) List!842) Bool)

(assert (=> b!32284 (= res!19607 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!839))))

(declare-fun b!32285 () Bool)

(assert (=> b!32285 (= e!20519 tp_is_empty!1479)))

(assert (= (and start!4218 res!19605) b!32281))

(assert (= (and b!32281 res!19606) b!32283))

(assert (= (and b!32283 res!19608) b!32284))

(assert (= (and b!32284 res!19607) b!32276))

(assert (= (and b!32276 res!19609) b!32277))

(assert (= (and b!32277 res!19603) b!32279))

(assert (= (and b!32279 res!19604) b!32282))

(assert (= (and b!32278 condMapEmpty!1747) mapIsEmpty!1747))

(assert (= (and b!32278 (not condMapEmpty!1747)) mapNonEmpty!1747))

(get-info :version)

(assert (= (and mapNonEmpty!1747 ((_ is ValueCellFull!540) mapValue!1747)) b!32285))

(assert (= (and b!32278 ((_ is ValueCellFull!540) mapDefault!1747)) b!32280))

(assert (= start!4218 b!32278))

(declare-fun m!25843 () Bool)

(assert (=> start!4218 m!25843))

(declare-fun m!25845 () Bool)

(assert (=> start!4218 m!25845))

(declare-fun m!25847 () Bool)

(assert (=> start!4218 m!25847))

(declare-fun m!25849 () Bool)

(assert (=> b!32279 m!25849))

(declare-fun m!25851 () Bool)

(assert (=> b!32282 m!25851))

(declare-fun m!25853 () Bool)

(assert (=> mapNonEmpty!1747 m!25853))

(declare-fun m!25855 () Bool)

(assert (=> b!32276 m!25855))

(declare-fun m!25857 () Bool)

(assert (=> b!32283 m!25857))

(declare-fun m!25859 () Bool)

(assert (=> b!32284 m!25859))

(declare-fun m!25861 () Bool)

(assert (=> b!32277 m!25861))

(assert (=> b!32277 m!25861))

(declare-fun m!25863 () Bool)

(assert (=> b!32277 m!25863))

(check-sat (not b!32276) tp_is_empty!1479 (not b!32279) (not b_next!1125) (not b!32283) (not b!32284) (not mapNonEmpty!1747) (not b!32277) (not start!4218) b_and!1937 (not b!32282))
(check-sat b_and!1937 (not b_next!1125))
(get-model)

(declare-fun d!5081 () Bool)

(assert (=> d!5081 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4218 d!5081))

(declare-fun d!5083 () Bool)

(assert (=> d!5083 (= (array_inv!687 _values!1501) (bvsge (size!1136 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4218 d!5083))

(declare-fun d!5085 () Bool)

(assert (=> d!5085 (= (array_inv!688 _keys!1833) (bvsge (size!1137 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4218 d!5085))

(declare-fun d!5087 () Bool)

(declare-fun e!20542 () Bool)

(assert (=> d!5087 e!20542))

(declare-fun res!19633 () Bool)

(assert (=> d!5087 (=> res!19633 e!20542)))

(declare-fun lt!11671 () Bool)

(assert (=> d!5087 (= res!19633 (not lt!11671))))

(declare-fun lt!11673 () Bool)

(assert (=> d!5087 (= lt!11671 lt!11673)))

(declare-datatypes ((Unit!707 0))(
  ( (Unit!708) )
))
(declare-fun lt!11670 () Unit!707)

(declare-fun e!20541 () Unit!707)

(assert (=> d!5087 (= lt!11670 e!20541)))

(declare-fun c!3754 () Bool)

(assert (=> d!5087 (= c!3754 lt!11673)))

(declare-fun containsKey!29 (List!841 (_ BitVec 64)) Bool)

(assert (=> d!5087 (= lt!11673 (containsKey!29 (toList!425 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!5087 (= (contains!362 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!11671)))

(declare-fun b!32322 () Bool)

(declare-fun lt!11672 () Unit!707)

(assert (=> b!32322 (= e!20541 lt!11672)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!26 (List!841 (_ BitVec 64)) Unit!707)

(assert (=> b!32322 (= lt!11672 (lemmaContainsKeyImpliesGetValueByKeyDefined!26 (toList!425 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!71 0))(
  ( (Some!70 (v!1857 V!1797)) (None!69) )
))
(declare-fun isDefined!27 (Option!71) Bool)

(declare-fun getValueByKey!65 (List!841 (_ BitVec 64)) Option!71)

(assert (=> b!32322 (isDefined!27 (getValueByKey!65 (toList!425 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!32323 () Bool)

(declare-fun Unit!709 () Unit!707)

(assert (=> b!32323 (= e!20541 Unit!709)))

(declare-fun b!32324 () Bool)

(assert (=> b!32324 (= e!20542 (isDefined!27 (getValueByKey!65 (toList!425 (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!5087 c!3754) b!32322))

(assert (= (and d!5087 (not c!3754)) b!32323))

(assert (= (and d!5087 (not res!19633)) b!32324))

(declare-fun m!25887 () Bool)

(assert (=> d!5087 m!25887))

(declare-fun m!25889 () Bool)

(assert (=> b!32322 m!25889))

(declare-fun m!25891 () Bool)

(assert (=> b!32322 m!25891))

(assert (=> b!32322 m!25891))

(declare-fun m!25893 () Bool)

(assert (=> b!32322 m!25893))

(assert (=> b!32324 m!25891))

(assert (=> b!32324 m!25891))

(assert (=> b!32324 m!25893))

(assert (=> b!32277 d!5087))

(declare-fun b!32367 () Bool)

(declare-fun e!20581 () Unit!707)

(declare-fun lt!11727 () Unit!707)

(assert (=> b!32367 (= e!20581 lt!11727)))

(declare-fun lt!11718 () ListLongMap!819)

(declare-fun getCurrentListMapNoExtraKeys!20 (array!2165 array!2163 (_ BitVec 32) (_ BitVec 32) V!1797 V!1797 (_ BitVec 32) Int) ListLongMap!819)

(assert (=> b!32367 (= lt!11718 (getCurrentListMapNoExtraKeys!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11724 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11736 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11736 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11726 () Unit!707)

(declare-fun addStillContains!18 (ListLongMap!819 (_ BitVec 64) V!1797 (_ BitVec 64)) Unit!707)

(assert (=> b!32367 (= lt!11726 (addStillContains!18 lt!11718 lt!11724 zeroValue!1443 lt!11736))))

(declare-fun +!51 (ListLongMap!819 tuple2!1238) ListLongMap!819)

(assert (=> b!32367 (contains!362 (+!51 lt!11718 (tuple2!1239 lt!11724 zeroValue!1443)) lt!11736)))

(declare-fun lt!11719 () Unit!707)

(assert (=> b!32367 (= lt!11719 lt!11726)))

(declare-fun lt!11733 () ListLongMap!819)

(assert (=> b!32367 (= lt!11733 (getCurrentListMapNoExtraKeys!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11722 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11722 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11720 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11720 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11731 () Unit!707)

(declare-fun addApplyDifferent!18 (ListLongMap!819 (_ BitVec 64) V!1797 (_ BitVec 64)) Unit!707)

(assert (=> b!32367 (= lt!11731 (addApplyDifferent!18 lt!11733 lt!11722 minValue!1443 lt!11720))))

(declare-fun apply!33 (ListLongMap!819 (_ BitVec 64)) V!1797)

(assert (=> b!32367 (= (apply!33 (+!51 lt!11733 (tuple2!1239 lt!11722 minValue!1443)) lt!11720) (apply!33 lt!11733 lt!11720))))

(declare-fun lt!11730 () Unit!707)

(assert (=> b!32367 (= lt!11730 lt!11731)))

(declare-fun lt!11738 () ListLongMap!819)

(assert (=> b!32367 (= lt!11738 (getCurrentListMapNoExtraKeys!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11723 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11737 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11737 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11729 () Unit!707)

(assert (=> b!32367 (= lt!11729 (addApplyDifferent!18 lt!11738 lt!11723 zeroValue!1443 lt!11737))))

(assert (=> b!32367 (= (apply!33 (+!51 lt!11738 (tuple2!1239 lt!11723 zeroValue!1443)) lt!11737) (apply!33 lt!11738 lt!11737))))

(declare-fun lt!11732 () Unit!707)

(assert (=> b!32367 (= lt!11732 lt!11729)))

(declare-fun lt!11734 () ListLongMap!819)

(assert (=> b!32367 (= lt!11734 (getCurrentListMapNoExtraKeys!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11725 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11725 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11739 () (_ BitVec 64))

(assert (=> b!32367 (= lt!11739 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!32367 (= lt!11727 (addApplyDifferent!18 lt!11734 lt!11725 minValue!1443 lt!11739))))

(assert (=> b!32367 (= (apply!33 (+!51 lt!11734 (tuple2!1239 lt!11725 minValue!1443)) lt!11739) (apply!33 lt!11734 lt!11739))))

(declare-fun b!32368 () Bool)

(declare-fun res!19660 () Bool)

(declare-fun e!20575 () Bool)

(assert (=> b!32368 (=> (not res!19660) (not e!20575))))

(declare-fun e!20576 () Bool)

(assert (=> b!32368 (= res!19660 e!20576)))

(declare-fun c!3768 () Bool)

(assert (=> b!32368 (= c!3768 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!32369 () Bool)

(declare-fun e!20570 () ListLongMap!819)

(declare-fun call!2604 () ListLongMap!819)

(assert (=> b!32369 (= e!20570 call!2604)))

(declare-fun b!32370 () Bool)

(declare-fun e!20572 () ListLongMap!819)

(assert (=> b!32370 (= e!20572 call!2604)))

(declare-fun b!32371 () Bool)

(declare-fun e!20574 () Bool)

(assert (=> b!32371 (= e!20574 (validKeyInArray!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32372 () Bool)

(declare-fun e!20577 () ListLongMap!819)

(declare-fun call!2603 () ListLongMap!819)

(assert (=> b!32372 (= e!20577 (+!51 call!2603 (tuple2!1239 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!32373 () Bool)

(assert (=> b!32373 (= e!20577 e!20572)))

(declare-fun c!3772 () Bool)

(assert (=> b!32373 (= c!3772 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!5089 () Bool)

(assert (=> d!5089 e!20575))

(declare-fun res!19657 () Bool)

(assert (=> d!5089 (=> (not res!19657) (not e!20575))))

(assert (=> d!5089 (= res!19657 (or (bvsge #b00000000000000000000000000000000 (size!1137 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)))))))

(declare-fun lt!11721 () ListLongMap!819)

(declare-fun lt!11735 () ListLongMap!819)

(assert (=> d!5089 (= lt!11721 lt!11735)))

(declare-fun lt!11728 () Unit!707)

(assert (=> d!5089 (= lt!11728 e!20581)))

(declare-fun c!3769 () Bool)

(assert (=> d!5089 (= c!3769 e!20574)))

(declare-fun res!19658 () Bool)

(assert (=> d!5089 (=> (not res!19658) (not e!20574))))

(assert (=> d!5089 (= res!19658 (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(assert (=> d!5089 (= lt!11735 e!20577)))

(declare-fun c!3770 () Bool)

(assert (=> d!5089 (= c!3770 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5089 (validMask!0 mask!2294)))

(assert (=> d!5089 (= (getCurrentListMap!250 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!11721)))

(declare-fun b!32374 () Bool)

(declare-fun call!2608 () ListLongMap!819)

(assert (=> b!32374 (= e!20570 call!2608)))

(declare-fun b!32375 () Bool)

(declare-fun c!3771 () Bool)

(assert (=> b!32375 (= c!3771 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!32375 (= e!20572 e!20570)))

(declare-fun bm!2600 () Bool)

(declare-fun call!2605 () ListLongMap!819)

(assert (=> bm!2600 (= call!2608 call!2605)))

(declare-fun b!32376 () Bool)

(declare-fun e!20578 () Bool)

(declare-fun get!550 (ValueCell!540 V!1797) V!1797)

(declare-fun dynLambda!150 (Int (_ BitVec 64)) V!1797)

(assert (=> b!32376 (= e!20578 (= (apply!33 lt!11721 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)) (get!550 (select (arr!1035 _values!1501) #b00000000000000000000000000000000) (dynLambda!150 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!32376 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1136 _values!1501)))))

(assert (=> b!32376 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(declare-fun b!32377 () Bool)

(declare-fun e!20580 () Bool)

(assert (=> b!32377 (= e!20580 (validKeyInArray!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32378 () Bool)

(declare-fun e!20569 () Bool)

(assert (=> b!32378 (= e!20575 e!20569)))

(declare-fun c!3767 () Bool)

(assert (=> b!32378 (= c!3767 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2601 () Bool)

(declare-fun call!2606 () ListLongMap!819)

(assert (=> bm!2601 (= call!2605 call!2606)))

(declare-fun b!32379 () Bool)

(declare-fun e!20571 () Bool)

(assert (=> b!32379 (= e!20569 e!20571)))

(declare-fun res!19656 () Bool)

(declare-fun call!2607 () Bool)

(assert (=> b!32379 (= res!19656 call!2607)))

(assert (=> b!32379 (=> (not res!19656) (not e!20571))))

(declare-fun b!32380 () Bool)

(declare-fun e!20579 () Bool)

(assert (=> b!32380 (= e!20576 e!20579)))

(declare-fun res!19654 () Bool)

(declare-fun call!2609 () Bool)

(assert (=> b!32380 (= res!19654 call!2609)))

(assert (=> b!32380 (=> (not res!19654) (not e!20579))))

(declare-fun b!32381 () Bool)

(declare-fun res!19653 () Bool)

(assert (=> b!32381 (=> (not res!19653) (not e!20575))))

(declare-fun e!20573 () Bool)

(assert (=> b!32381 (= res!19653 e!20573)))

(declare-fun res!19652 () Bool)

(assert (=> b!32381 (=> res!19652 e!20573)))

(assert (=> b!32381 (= res!19652 (not e!20580))))

(declare-fun res!19659 () Bool)

(assert (=> b!32381 (=> (not res!19659) (not e!20580))))

(assert (=> b!32381 (= res!19659 (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(declare-fun bm!2602 () Bool)

(assert (=> bm!2602 (= call!2607 (contains!362 lt!11721 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!32382 () Bool)

(assert (=> b!32382 (= e!20576 (not call!2609))))

(declare-fun b!32383 () Bool)

(assert (=> b!32383 (= e!20579 (= (apply!33 lt!11721 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!32384 () Bool)

(declare-fun Unit!710 () Unit!707)

(assert (=> b!32384 (= e!20581 Unit!710)))

(declare-fun b!32385 () Bool)

(assert (=> b!32385 (= e!20571 (= (apply!33 lt!11721 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun bm!2603 () Bool)

(assert (=> bm!2603 (= call!2609 (contains!362 lt!11721 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2604 () Bool)

(assert (=> bm!2604 (= call!2603 (+!51 (ite c!3770 call!2606 (ite c!3772 call!2605 call!2608)) (ite (or c!3770 c!3772) (tuple2!1239 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1239 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!32386 () Bool)

(assert (=> b!32386 (= e!20569 (not call!2607))))

(declare-fun b!32387 () Bool)

(assert (=> b!32387 (= e!20573 e!20578)))

(declare-fun res!19655 () Bool)

(assert (=> b!32387 (=> (not res!19655) (not e!20578))))

(assert (=> b!32387 (= res!19655 (contains!362 lt!11721 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!32387 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(declare-fun bm!2605 () Bool)

(assert (=> bm!2605 (= call!2604 call!2603)))

(declare-fun bm!2606 () Bool)

(assert (=> bm!2606 (= call!2606 (getCurrentListMapNoExtraKeys!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(assert (= (and d!5089 c!3770) b!32372))

(assert (= (and d!5089 (not c!3770)) b!32373))

(assert (= (and b!32373 c!3772) b!32370))

(assert (= (and b!32373 (not c!3772)) b!32375))

(assert (= (and b!32375 c!3771) b!32369))

(assert (= (and b!32375 (not c!3771)) b!32374))

(assert (= (or b!32369 b!32374) bm!2600))

(assert (= (or b!32370 bm!2600) bm!2601))

(assert (= (or b!32370 b!32369) bm!2605))

(assert (= (or b!32372 bm!2601) bm!2606))

(assert (= (or b!32372 bm!2605) bm!2604))

(assert (= (and d!5089 res!19658) b!32371))

(assert (= (and d!5089 c!3769) b!32367))

(assert (= (and d!5089 (not c!3769)) b!32384))

(assert (= (and d!5089 res!19657) b!32381))

(assert (= (and b!32381 res!19659) b!32377))

(assert (= (and b!32381 (not res!19652)) b!32387))

(assert (= (and b!32387 res!19655) b!32376))

(assert (= (and b!32381 res!19653) b!32368))

(assert (= (and b!32368 c!3768) b!32380))

(assert (= (and b!32368 (not c!3768)) b!32382))

(assert (= (and b!32380 res!19654) b!32383))

(assert (= (or b!32380 b!32382) bm!2603))

(assert (= (and b!32368 res!19660) b!32378))

(assert (= (and b!32378 c!3767) b!32379))

(assert (= (and b!32378 (not c!3767)) b!32386))

(assert (= (and b!32379 res!19656) b!32385))

(assert (= (or b!32379 b!32386) bm!2602))

(declare-fun b_lambda!1699 () Bool)

(assert (=> (not b_lambda!1699) (not b!32376)))

(declare-fun t!3539 () Bool)

(declare-fun tb!683 () Bool)

(assert (=> (and start!4218 (= defaultEntry!1504 defaultEntry!1504) t!3539) tb!683))

(declare-fun result!1155 () Bool)

(assert (=> tb!683 (= result!1155 tp_is_empty!1479)))

(assert (=> b!32376 t!3539))

(declare-fun b_and!1941 () Bool)

(assert (= b_and!1937 (and (=> t!3539 result!1155) b_and!1941)))

(declare-fun m!25895 () Bool)

(assert (=> b!32372 m!25895))

(declare-fun m!25897 () Bool)

(assert (=> b!32387 m!25897))

(assert (=> b!32387 m!25897))

(declare-fun m!25899 () Bool)

(assert (=> b!32387 m!25899))

(assert (=> b!32371 m!25897))

(assert (=> b!32371 m!25897))

(declare-fun m!25901 () Bool)

(assert (=> b!32371 m!25901))

(declare-fun m!25903 () Bool)

(assert (=> b!32383 m!25903))

(assert (=> d!5089 m!25843))

(declare-fun m!25905 () Bool)

(assert (=> b!32385 m!25905))

(declare-fun m!25907 () Bool)

(assert (=> b!32367 m!25907))

(declare-fun m!25909 () Bool)

(assert (=> b!32367 m!25909))

(declare-fun m!25911 () Bool)

(assert (=> b!32367 m!25911))

(declare-fun m!25913 () Bool)

(assert (=> b!32367 m!25913))

(declare-fun m!25915 () Bool)

(assert (=> b!32367 m!25915))

(declare-fun m!25917 () Bool)

(assert (=> b!32367 m!25917))

(assert (=> b!32367 m!25897))

(declare-fun m!25919 () Bool)

(assert (=> b!32367 m!25919))

(assert (=> b!32367 m!25907))

(declare-fun m!25921 () Bool)

(assert (=> b!32367 m!25921))

(declare-fun m!25923 () Bool)

(assert (=> b!32367 m!25923))

(assert (=> b!32367 m!25923))

(declare-fun m!25925 () Bool)

(assert (=> b!32367 m!25925))

(declare-fun m!25927 () Bool)

(assert (=> b!32367 m!25927))

(assert (=> b!32367 m!25915))

(declare-fun m!25929 () Bool)

(assert (=> b!32367 m!25929))

(declare-fun m!25931 () Bool)

(assert (=> b!32367 m!25931))

(declare-fun m!25933 () Bool)

(assert (=> b!32367 m!25933))

(assert (=> b!32367 m!25931))

(declare-fun m!25935 () Bool)

(assert (=> b!32367 m!25935))

(declare-fun m!25937 () Bool)

(assert (=> b!32367 m!25937))

(assert (=> b!32377 m!25897))

(assert (=> b!32377 m!25897))

(assert (=> b!32377 m!25901))

(assert (=> b!32376 m!25897))

(assert (=> b!32376 m!25897))

(declare-fun m!25939 () Bool)

(assert (=> b!32376 m!25939))

(declare-fun m!25941 () Bool)

(assert (=> b!32376 m!25941))

(declare-fun m!25943 () Bool)

(assert (=> b!32376 m!25943))

(assert (=> b!32376 m!25941))

(assert (=> b!32376 m!25943))

(declare-fun m!25945 () Bool)

(assert (=> b!32376 m!25945))

(assert (=> bm!2606 m!25937))

(declare-fun m!25947 () Bool)

(assert (=> bm!2603 m!25947))

(declare-fun m!25949 () Bool)

(assert (=> bm!2604 m!25949))

(declare-fun m!25951 () Bool)

(assert (=> bm!2602 m!25951))

(assert (=> b!32277 d!5089))

(declare-fun d!5091 () Bool)

(assert (=> d!5091 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!32276 d!5091))

(declare-fun b!32400 () Bool)

(declare-fun e!20593 () Bool)

(declare-fun call!2612 () Bool)

(assert (=> b!32400 (= e!20593 call!2612)))

(declare-fun d!5093 () Bool)

(declare-fun res!19669 () Bool)

(declare-fun e!20590 () Bool)

(assert (=> d!5093 (=> res!19669 e!20590)))

(assert (=> d!5093 (= res!19669 (bvsge #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(assert (=> d!5093 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!839) e!20590)))

(declare-fun b!32401 () Bool)

(declare-fun e!20592 () Bool)

(assert (=> b!32401 (= e!20590 e!20592)))

(declare-fun res!19667 () Bool)

(assert (=> b!32401 (=> (not res!19667) (not e!20592))))

(declare-fun e!20591 () Bool)

(assert (=> b!32401 (= res!19667 (not e!20591))))

(declare-fun res!19668 () Bool)

(assert (=> b!32401 (=> (not res!19668) (not e!20591))))

(assert (=> b!32401 (= res!19668 (validKeyInArray!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32402 () Bool)

(declare-fun contains!363 (List!842 (_ BitVec 64)) Bool)

(assert (=> b!32402 (= e!20591 (contains!363 Nil!839 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32403 () Bool)

(assert (=> b!32403 (= e!20592 e!20593)))

(declare-fun c!3775 () Bool)

(assert (=> b!32403 (= c!3775 (validKeyInArray!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2609 () Bool)

(assert (=> bm!2609 (= call!2612 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3775 (Cons!838 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000) Nil!839) Nil!839)))))

(declare-fun b!32404 () Bool)

(assert (=> b!32404 (= e!20593 call!2612)))

(assert (= (and d!5093 (not res!19669)) b!32401))

(assert (= (and b!32401 res!19668) b!32402))

(assert (= (and b!32401 res!19667) b!32403))

(assert (= (and b!32403 c!3775) b!32404))

(assert (= (and b!32403 (not c!3775)) b!32400))

(assert (= (or b!32404 b!32400) bm!2609))

(assert (=> b!32401 m!25897))

(assert (=> b!32401 m!25897))

(assert (=> b!32401 m!25901))

(assert (=> b!32402 m!25897))

(assert (=> b!32402 m!25897))

(declare-fun m!25953 () Bool)

(assert (=> b!32402 m!25953))

(assert (=> b!32403 m!25897))

(assert (=> b!32403 m!25897))

(assert (=> b!32403 m!25901))

(assert (=> bm!2609 m!25897))

(declare-fun m!25955 () Bool)

(assert (=> bm!2609 m!25955))

(assert (=> b!32284 d!5093))

(declare-fun d!5095 () Bool)

(declare-fun res!19674 () Bool)

(declare-fun e!20598 () Bool)

(assert (=> d!5095 (=> res!19674 e!20598)))

(assert (=> d!5095 (= res!19674 (= (select (arr!1036 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5095 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!20598)))

(declare-fun b!32409 () Bool)

(declare-fun e!20599 () Bool)

(assert (=> b!32409 (= e!20598 e!20599)))

(declare-fun res!19675 () Bool)

(assert (=> b!32409 (=> (not res!19675) (not e!20599))))

(assert (=> b!32409 (= res!19675 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1137 _keys!1833)))))

(declare-fun b!32410 () Bool)

(assert (=> b!32410 (= e!20599 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5095 (not res!19674)) b!32409))

(assert (= (and b!32409 res!19675) b!32410))

(assert (=> d!5095 m!25897))

(declare-fun m!25957 () Bool)

(assert (=> b!32410 m!25957))

(assert (=> b!32279 d!5095))

(declare-fun b!32419 () Bool)

(declare-fun e!20606 () Bool)

(declare-fun call!2615 () Bool)

(assert (=> b!32419 (= e!20606 call!2615)))

(declare-fun b!32420 () Bool)

(declare-fun e!20607 () Bool)

(assert (=> b!32420 (= e!20607 call!2615)))

(declare-fun b!32421 () Bool)

(assert (=> b!32421 (= e!20607 e!20606)))

(declare-fun lt!11748 () (_ BitVec 64))

(assert (=> b!32421 (= lt!11748 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11747 () Unit!707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2165 (_ BitVec 64) (_ BitVec 32)) Unit!707)

(assert (=> b!32421 (= lt!11747 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!11748 #b00000000000000000000000000000000))))

(assert (=> b!32421 (arrayContainsKey!0 _keys!1833 lt!11748 #b00000000000000000000000000000000)))

(declare-fun lt!11746 () Unit!707)

(assert (=> b!32421 (= lt!11746 lt!11747)))

(declare-fun res!19680 () Bool)

(declare-datatypes ((SeekEntryResult!129 0))(
  ( (MissingZero!129 (index!2638 (_ BitVec 32))) (Found!129 (index!2639 (_ BitVec 32))) (Intermediate!129 (undefined!941 Bool) (index!2640 (_ BitVec 32)) (x!6729 (_ BitVec 32))) (Undefined!129) (MissingVacant!129 (index!2641 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2165 (_ BitVec 32)) SeekEntryResult!129)

(assert (=> b!32421 (= res!19680 (= (seekEntryOrOpen!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!129 #b00000000000000000000000000000000)))))

(assert (=> b!32421 (=> (not res!19680) (not e!20606))))

(declare-fun d!5097 () Bool)

(declare-fun res!19681 () Bool)

(declare-fun e!20608 () Bool)

(assert (=> d!5097 (=> res!19681 e!20608)))

(assert (=> d!5097 (= res!19681 (bvsge #b00000000000000000000000000000000 (size!1137 _keys!1833)))))

(assert (=> d!5097 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!20608)))

(declare-fun bm!2612 () Bool)

(assert (=> bm!2612 (= call!2615 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!32422 () Bool)

(assert (=> b!32422 (= e!20608 e!20607)))

(declare-fun c!3778 () Bool)

(assert (=> b!32422 (= c!3778 (validKeyInArray!0 (select (arr!1036 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5097 (not res!19681)) b!32422))

(assert (= (and b!32422 c!3778) b!32421))

(assert (= (and b!32422 (not c!3778)) b!32420))

(assert (= (and b!32421 res!19680) b!32419))

(assert (= (or b!32419 b!32420) bm!2612))

(assert (=> b!32421 m!25897))

(declare-fun m!25959 () Bool)

(assert (=> b!32421 m!25959))

(declare-fun m!25961 () Bool)

(assert (=> b!32421 m!25961))

(assert (=> b!32421 m!25897))

(declare-fun m!25963 () Bool)

(assert (=> b!32421 m!25963))

(declare-fun m!25965 () Bool)

(assert (=> bm!2612 m!25965))

(assert (=> b!32422 m!25897))

(assert (=> b!32422 m!25897))

(assert (=> b!32422 m!25901))

(assert (=> b!32283 d!5097))

(declare-fun d!5099 () Bool)

(declare-fun lt!11751 () (_ BitVec 32))

(assert (=> d!5099 (and (or (bvslt lt!11751 #b00000000000000000000000000000000) (bvsge lt!11751 (size!1137 _keys!1833)) (and (bvsge lt!11751 #b00000000000000000000000000000000) (bvslt lt!11751 (size!1137 _keys!1833)))) (bvsge lt!11751 #b00000000000000000000000000000000) (bvslt lt!11751 (size!1137 _keys!1833)) (= (select (arr!1036 _keys!1833) lt!11751) k0!1304))))

(declare-fun e!20611 () (_ BitVec 32))

(assert (=> d!5099 (= lt!11751 e!20611)))

(declare-fun c!3781 () Bool)

(assert (=> d!5099 (= c!3781 (= (select (arr!1036 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5099 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1137 _keys!1833)) (bvslt (size!1137 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5099 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!11751)))

(declare-fun b!32427 () Bool)

(assert (=> b!32427 (= e!20611 #b00000000000000000000000000000000)))

(declare-fun b!32428 () Bool)

(assert (=> b!32428 (= e!20611 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5099 c!3781) b!32427))

(assert (= (and d!5099 (not c!3781)) b!32428))

(declare-fun m!25967 () Bool)

(assert (=> d!5099 m!25967))

(assert (=> d!5099 m!25897))

(declare-fun m!25969 () Bool)

(assert (=> b!32428 m!25969))

(assert (=> b!32282 d!5099))

(declare-fun mapNonEmpty!1753 () Bool)

(declare-fun mapRes!1753 () Bool)

(declare-fun tp!4804 () Bool)

(declare-fun e!20616 () Bool)

(assert (=> mapNonEmpty!1753 (= mapRes!1753 (and tp!4804 e!20616))))

(declare-fun mapKey!1753 () (_ BitVec 32))

(declare-fun mapRest!1753 () (Array (_ BitVec 32) ValueCell!540))

(declare-fun mapValue!1753 () ValueCell!540)

(assert (=> mapNonEmpty!1753 (= mapRest!1747 (store mapRest!1753 mapKey!1753 mapValue!1753))))

(declare-fun b!32436 () Bool)

(declare-fun e!20617 () Bool)

(assert (=> b!32436 (= e!20617 tp_is_empty!1479)))

(declare-fun condMapEmpty!1753 () Bool)

(declare-fun mapDefault!1753 () ValueCell!540)

(assert (=> mapNonEmpty!1747 (= condMapEmpty!1753 (= mapRest!1747 ((as const (Array (_ BitVec 32) ValueCell!540)) mapDefault!1753)))))

(assert (=> mapNonEmpty!1747 (= tp!4794 (and e!20617 mapRes!1753))))

(declare-fun b!32435 () Bool)

(assert (=> b!32435 (= e!20616 tp_is_empty!1479)))

(declare-fun mapIsEmpty!1753 () Bool)

(assert (=> mapIsEmpty!1753 mapRes!1753))

(assert (= (and mapNonEmpty!1747 condMapEmpty!1753) mapIsEmpty!1753))

(assert (= (and mapNonEmpty!1747 (not condMapEmpty!1753)) mapNonEmpty!1753))

(assert (= (and mapNonEmpty!1753 ((_ is ValueCellFull!540) mapValue!1753)) b!32435))

(assert (= (and mapNonEmpty!1747 ((_ is ValueCellFull!540) mapDefault!1753)) b!32436))

(declare-fun m!25971 () Bool)

(assert (=> mapNonEmpty!1753 m!25971))

(declare-fun b_lambda!1701 () Bool)

(assert (= b_lambda!1699 (or (and start!4218 b_free!1125) b_lambda!1701)))

(check-sat (not b!32410) (not bm!2609) (not b!32428) (not b!32376) (not d!5089) (not b!32377) b_and!1941 (not b!32383) (not bm!2606) (not bm!2603) (not bm!2602) tp_is_empty!1479 (not b!32372) (not b!32371) (not b!32367) (not b!32422) (not b!32403) (not mapNonEmpty!1753) (not b!32387) (not bm!2604) (not b!32421) (not b_lambda!1701) (not b!32401) (not b!32402) (not d!5087) (not b!32385) (not b_next!1125) (not b!32324) (not bm!2612) (not b!32322))
(check-sat b_and!1941 (not b_next!1125))
