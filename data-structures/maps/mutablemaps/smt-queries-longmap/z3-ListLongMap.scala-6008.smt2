; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77930 () Bool)

(assert start!77930)

(declare-fun b_free!16461 () Bool)

(declare-fun b_next!16461 () Bool)

(assert (=> start!77930 (= b_free!16461 (not b_next!16461))))

(declare-fun tp!57648 () Bool)

(declare-fun b_and!27047 () Bool)

(assert (=> start!77930 (= tp!57648 b_and!27047)))

(declare-fun b!909461 () Bool)

(declare-fun res!613930 () Bool)

(declare-fun e!509846 () Bool)

(assert (=> b!909461 (=> (not res!613930) (not e!509846))))

(declare-datatypes ((array!53774 0))(
  ( (array!53775 (arr!25841 (Array (_ BitVec 32) (_ BitVec 64))) (size!26301 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53774)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53774 (_ BitVec 32)) Bool)

(assert (=> b!909461 (= res!613930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30034 () Bool)

(declare-fun mapRes!30034 () Bool)

(assert (=> mapIsEmpty!30034 mapRes!30034))

(declare-fun b!909463 () Bool)

(declare-fun res!613928 () Bool)

(assert (=> b!909463 (=> (not res!613928) (not e!509846))))

(declare-datatypes ((V!30137 0))(
  ( (V!30138 (val!9490 Int)) )
))
(declare-datatypes ((ValueCell!8958 0))(
  ( (ValueCellFull!8958 (v!11997 V!30137)) (EmptyCell!8958) )
))
(declare-datatypes ((array!53776 0))(
  ( (array!53777 (arr!25842 (Array (_ BitVec 32) ValueCell!8958)) (size!26302 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53776)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30137)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30137)

(declare-datatypes ((tuple2!12396 0))(
  ( (tuple2!12397 (_1!6208 (_ BitVec 64)) (_2!6208 V!30137)) )
))
(declare-datatypes ((List!18252 0))(
  ( (Nil!18249) (Cons!18248 (h!19394 tuple2!12396) (t!25841 List!18252)) )
))
(declare-datatypes ((ListLongMap!11107 0))(
  ( (ListLongMap!11108 (toList!5569 List!18252)) )
))
(declare-fun contains!4576 (ListLongMap!11107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2799 (array!53774 array!53776 (_ BitVec 32) (_ BitVec 32) V!30137 V!30137 (_ BitVec 32) Int) ListLongMap!11107)

(assert (=> b!909463 (= res!613928 (contains!4576 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909464 () Bool)

(declare-fun e!509849 () Bool)

(declare-fun tp_is_empty!18879 () Bool)

(assert (=> b!909464 (= e!509849 tp_is_empty!18879)))

(declare-fun b!909465 () Bool)

(declare-fun res!613926 () Bool)

(assert (=> b!909465 (=> (not res!613926) (not e!509846))))

(assert (=> b!909465 (= res!613926 (and (= (size!26302 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26301 _keys!1386) (size!26302 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30034 () Bool)

(declare-fun tp!57649 () Bool)

(declare-fun e!509847 () Bool)

(assert (=> mapNonEmpty!30034 (= mapRes!30034 (and tp!57649 e!509847))))

(declare-fun mapValue!30034 () ValueCell!8958)

(declare-fun mapKey!30034 () (_ BitVec 32))

(declare-fun mapRest!30034 () (Array (_ BitVec 32) ValueCell!8958))

(assert (=> mapNonEmpty!30034 (= (arr!25842 _values!1152) (store mapRest!30034 mapKey!30034 mapValue!30034))))

(declare-fun b!909466 () Bool)

(declare-fun res!613927 () Bool)

(assert (=> b!909466 (=> (not res!613927) (not e!509846))))

(declare-datatypes ((List!18253 0))(
  ( (Nil!18250) (Cons!18249 (h!19395 (_ BitVec 64)) (t!25842 List!18253)) )
))
(declare-fun arrayNoDuplicates!0 (array!53774 (_ BitVec 32) List!18253) Bool)

(assert (=> b!909466 (= res!613927 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18250))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun b!909467 () Bool)

(assert (=> b!909467 (= e!509846 (and (= (select (arr!25841 _keys!1386) i!717) k0!1033) (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!26301 _keys!1386))))))

(declare-fun b!909468 () Bool)

(declare-fun res!613929 () Bool)

(assert (=> b!909468 (=> (not res!613929) (not e!509846))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!909468 (= res!613929 (inRange!0 i!717 mask!1756))))

(declare-fun b!909469 () Bool)

(declare-fun e!509845 () Bool)

(assert (=> b!909469 (= e!509845 (and e!509849 mapRes!30034))))

(declare-fun condMapEmpty!30034 () Bool)

(declare-fun mapDefault!30034 () ValueCell!8958)

(assert (=> b!909469 (= condMapEmpty!30034 (= (arr!25842 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8958)) mapDefault!30034)))))

(declare-fun res!613925 () Bool)

(assert (=> start!77930 (=> (not res!613925) (not e!509846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77930 (= res!613925 (validMask!0 mask!1756))))

(assert (=> start!77930 e!509846))

(declare-fun array_inv!20192 (array!53776) Bool)

(assert (=> start!77930 (and (array_inv!20192 _values!1152) e!509845)))

(assert (=> start!77930 tp!57648))

(assert (=> start!77930 true))

(assert (=> start!77930 tp_is_empty!18879))

(declare-fun array_inv!20193 (array!53774) Bool)

(assert (=> start!77930 (array_inv!20193 _keys!1386)))

(declare-fun b!909462 () Bool)

(assert (=> b!909462 (= e!509847 tp_is_empty!18879)))

(assert (= (and start!77930 res!613925) b!909465))

(assert (= (and b!909465 res!613926) b!909461))

(assert (= (and b!909461 res!613930) b!909466))

(assert (= (and b!909466 res!613927) b!909463))

(assert (= (and b!909463 res!613928) b!909468))

(assert (= (and b!909468 res!613929) b!909467))

(assert (= (and b!909469 condMapEmpty!30034) mapIsEmpty!30034))

(assert (= (and b!909469 (not condMapEmpty!30034)) mapNonEmpty!30034))

(get-info :version)

(assert (= (and mapNonEmpty!30034 ((_ is ValueCellFull!8958) mapValue!30034)) b!909462))

(assert (= (and b!909469 ((_ is ValueCellFull!8958) mapDefault!30034)) b!909464))

(assert (= start!77930 b!909469))

(declare-fun m!844769 () Bool)

(assert (=> mapNonEmpty!30034 m!844769))

(declare-fun m!844771 () Bool)

(assert (=> b!909466 m!844771))

(declare-fun m!844773 () Bool)

(assert (=> b!909463 m!844773))

(assert (=> b!909463 m!844773))

(declare-fun m!844775 () Bool)

(assert (=> b!909463 m!844775))

(declare-fun m!844777 () Bool)

(assert (=> b!909468 m!844777))

(declare-fun m!844779 () Bool)

(assert (=> b!909467 m!844779))

(declare-fun m!844781 () Bool)

(assert (=> b!909461 m!844781))

(declare-fun m!844783 () Bool)

(assert (=> start!77930 m!844783))

(declare-fun m!844785 () Bool)

(assert (=> start!77930 m!844785))

(declare-fun m!844787 () Bool)

(assert (=> start!77930 m!844787))

(check-sat (not b!909466) tp_is_empty!18879 (not b!909461) b_and!27047 (not start!77930) (not b!909463) (not mapNonEmpty!30034) (not b_next!16461) (not b!909468))
(check-sat b_and!27047 (not b_next!16461))
(get-model)

(declare-fun d!112081 () Bool)

(declare-fun e!509869 () Bool)

(assert (=> d!112081 e!509869))

(declare-fun res!613951 () Bool)

(assert (=> d!112081 (=> res!613951 e!509869)))

(declare-fun lt!409967 () Bool)

(assert (=> d!112081 (= res!613951 (not lt!409967))))

(declare-fun lt!409969 () Bool)

(assert (=> d!112081 (= lt!409967 lt!409969)))

(declare-datatypes ((Unit!30825 0))(
  ( (Unit!30826) )
))
(declare-fun lt!409968 () Unit!30825)

(declare-fun e!509870 () Unit!30825)

(assert (=> d!112081 (= lt!409968 e!509870)))

(declare-fun c!95609 () Bool)

(assert (=> d!112081 (= c!95609 lt!409969)))

(declare-fun containsKey!438 (List!18252 (_ BitVec 64)) Bool)

(assert (=> d!112081 (= lt!409969 (containsKey!438 (toList!5569 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112081 (= (contains!4576 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!409967)))

(declare-fun b!909503 () Bool)

(declare-fun lt!409966 () Unit!30825)

(assert (=> b!909503 (= e!509870 lt!409966)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!333 (List!18252 (_ BitVec 64)) Unit!30825)

(assert (=> b!909503 (= lt!409966 (lemmaContainsKeyImpliesGetValueByKeyDefined!333 (toList!5569 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!479 0))(
  ( (Some!478 (v!11999 V!30137)) (None!477) )
))
(declare-fun isDefined!343 (Option!479) Bool)

(declare-fun getValueByKey!473 (List!18252 (_ BitVec 64)) Option!479)

(assert (=> b!909503 (isDefined!343 (getValueByKey!473 (toList!5569 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!909504 () Bool)

(declare-fun Unit!30827 () Unit!30825)

(assert (=> b!909504 (= e!509870 Unit!30827)))

(declare-fun b!909505 () Bool)

(assert (=> b!909505 (= e!509869 (isDefined!343 (getValueByKey!473 (toList!5569 (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112081 c!95609) b!909503))

(assert (= (and d!112081 (not c!95609)) b!909504))

(assert (= (and d!112081 (not res!613951)) b!909505))

(declare-fun m!844809 () Bool)

(assert (=> d!112081 m!844809))

(declare-fun m!844811 () Bool)

(assert (=> b!909503 m!844811))

(declare-fun m!844813 () Bool)

(assert (=> b!909503 m!844813))

(assert (=> b!909503 m!844813))

(declare-fun m!844815 () Bool)

(assert (=> b!909503 m!844815))

(assert (=> b!909505 m!844813))

(assert (=> b!909505 m!844813))

(assert (=> b!909505 m!844815))

(assert (=> b!909463 d!112081))

(declare-fun bm!40298 () Bool)

(declare-fun call!40307 () Bool)

(declare-fun lt!410021 () ListLongMap!11107)

(assert (=> bm!40298 (= call!40307 (contains!4576 lt!410021 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!909548 () Bool)

(declare-fun e!509897 () ListLongMap!11107)

(declare-fun call!40301 () ListLongMap!11107)

(assert (=> b!909548 (= e!509897 call!40301)))

(declare-fun b!909549 () Bool)

(declare-fun e!509902 () Bool)

(declare-fun apply!525 (ListLongMap!11107 (_ BitVec 64)) V!30137)

(assert (=> b!909549 (= e!509902 (= (apply!525 lt!410021 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!909550 () Bool)

(declare-fun e!509908 () Bool)

(declare-fun e!509909 () Bool)

(assert (=> b!909550 (= e!509908 e!509909)))

(declare-fun res!613976 () Bool)

(assert (=> b!909550 (= res!613976 call!40307)))

(assert (=> b!909550 (=> (not res!613976) (not e!509909))))

(declare-fun bm!40299 () Bool)

(declare-fun call!40302 () ListLongMap!11107)

(declare-fun call!40305 () ListLongMap!11107)

(assert (=> bm!40299 (= call!40302 call!40305)))

(declare-fun b!909551 () Bool)

(declare-fun e!509906 () Unit!30825)

(declare-fun Unit!30828 () Unit!30825)

(assert (=> b!909551 (= e!509906 Unit!30828)))

(declare-fun b!909552 () Bool)

(declare-fun e!509901 () Bool)

(assert (=> b!909552 (= e!509901 e!509902)))

(declare-fun res!613973 () Bool)

(declare-fun call!40304 () Bool)

(assert (=> b!909552 (= res!613973 call!40304)))

(assert (=> b!909552 (=> (not res!613973) (not e!509902))))

(declare-fun bm!40300 () Bool)

(declare-fun call!40303 () ListLongMap!11107)

(assert (=> bm!40300 (= call!40301 call!40303)))

(declare-fun b!909553 () Bool)

(declare-fun e!509900 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!909553 (= e!509900 (validKeyInArray!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!909554 () Bool)

(declare-fun e!509905 () ListLongMap!11107)

(assert (=> b!909554 (= e!509905 call!40301)))

(declare-fun c!95627 () Bool)

(declare-fun bm!40301 () Bool)

(declare-fun c!95624 () Bool)

(declare-fun call!40306 () ListLongMap!11107)

(declare-fun +!2558 (ListLongMap!11107 tuple2!12396) ListLongMap!11107)

(assert (=> bm!40301 (= call!40303 (+!2558 (ite c!95627 call!40305 (ite c!95624 call!40302 call!40306)) (ite (or c!95627 c!95624) (tuple2!12397 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12397 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!909555 () Bool)

(assert (=> b!909555 (= e!509897 call!40306)))

(declare-fun b!909556 () Bool)

(declare-fun lt!410018 () Unit!30825)

(assert (=> b!909556 (= e!509906 lt!410018)))

(declare-fun lt!410019 () ListLongMap!11107)

(declare-fun getCurrentListMapNoExtraKeys!3306 (array!53774 array!53776 (_ BitVec 32) (_ BitVec 32) V!30137 V!30137 (_ BitVec 32) Int) ListLongMap!11107)

(assert (=> b!909556 (= lt!410019 (getCurrentListMapNoExtraKeys!3306 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410026 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410026 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410020 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410020 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410030 () Unit!30825)

(declare-fun addStillContains!344 (ListLongMap!11107 (_ BitVec 64) V!30137 (_ BitVec 64)) Unit!30825)

(assert (=> b!909556 (= lt!410030 (addStillContains!344 lt!410019 lt!410026 zeroValue!1094 lt!410020))))

(assert (=> b!909556 (contains!4576 (+!2558 lt!410019 (tuple2!12397 lt!410026 zeroValue!1094)) lt!410020)))

(declare-fun lt!410015 () Unit!30825)

(assert (=> b!909556 (= lt!410015 lt!410030)))

(declare-fun lt!410023 () ListLongMap!11107)

(assert (=> b!909556 (= lt!410023 (getCurrentListMapNoExtraKeys!3306 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410034 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410034 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410032 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410032 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410028 () Unit!30825)

(declare-fun addApplyDifferent!344 (ListLongMap!11107 (_ BitVec 64) V!30137 (_ BitVec 64)) Unit!30825)

(assert (=> b!909556 (= lt!410028 (addApplyDifferent!344 lt!410023 lt!410034 minValue!1094 lt!410032))))

(assert (=> b!909556 (= (apply!525 (+!2558 lt!410023 (tuple2!12397 lt!410034 minValue!1094)) lt!410032) (apply!525 lt!410023 lt!410032))))

(declare-fun lt!410029 () Unit!30825)

(assert (=> b!909556 (= lt!410029 lt!410028)))

(declare-fun lt!410016 () ListLongMap!11107)

(assert (=> b!909556 (= lt!410016 (getCurrentListMapNoExtraKeys!3306 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410014 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410014 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410022 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410022 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410035 () Unit!30825)

(assert (=> b!909556 (= lt!410035 (addApplyDifferent!344 lt!410016 lt!410014 zeroValue!1094 lt!410022))))

(assert (=> b!909556 (= (apply!525 (+!2558 lt!410016 (tuple2!12397 lt!410014 zeroValue!1094)) lt!410022) (apply!525 lt!410016 lt!410022))))

(declare-fun lt!410025 () Unit!30825)

(assert (=> b!909556 (= lt!410025 lt!410035)))

(declare-fun lt!410031 () ListLongMap!11107)

(assert (=> b!909556 (= lt!410031 (getCurrentListMapNoExtraKeys!3306 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410027 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410027 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410017 () (_ BitVec 64))

(assert (=> b!909556 (= lt!410017 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!909556 (= lt!410018 (addApplyDifferent!344 lt!410031 lt!410027 minValue!1094 lt!410017))))

(assert (=> b!909556 (= (apply!525 (+!2558 lt!410031 (tuple2!12397 lt!410027 minValue!1094)) lt!410017) (apply!525 lt!410031 lt!410017))))

(declare-fun b!909557 () Bool)

(declare-fun e!509903 () Bool)

(assert (=> b!909557 (= e!509903 e!509908)))

(declare-fun c!95622 () Bool)

(assert (=> b!909557 (= c!95622 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!909558 () Bool)

(declare-fun e!509907 () Bool)

(assert (=> b!909558 (= e!509907 (validKeyInArray!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!909559 () Bool)

(declare-fun res!613971 () Bool)

(assert (=> b!909559 (=> (not res!613971) (not e!509903))))

(assert (=> b!909559 (= res!613971 e!509901)))

(declare-fun c!95623 () Bool)

(assert (=> b!909559 (= c!95623 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!909560 () Bool)

(assert (=> b!909560 (= e!509901 (not call!40304))))

(declare-fun bm!40302 () Bool)

(assert (=> bm!40302 (= call!40306 call!40302)))

(declare-fun bm!40303 () Bool)

(assert (=> bm!40303 (= call!40304 (contains!4576 lt!410021 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!909561 () Bool)

(assert (=> b!909561 (= e!509909 (= (apply!525 lt!410021 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun bm!40304 () Bool)

(assert (=> bm!40304 (= call!40305 (getCurrentListMapNoExtraKeys!3306 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!909562 () Bool)

(assert (=> b!909562 (= e!509908 (not call!40307))))

(declare-fun b!909563 () Bool)

(declare-fun res!613974 () Bool)

(assert (=> b!909563 (=> (not res!613974) (not e!509903))))

(declare-fun e!509899 () Bool)

(assert (=> b!909563 (= res!613974 e!509899)))

(declare-fun res!613978 () Bool)

(assert (=> b!909563 (=> res!613978 e!509899)))

(assert (=> b!909563 (= res!613978 (not e!509900))))

(declare-fun res!613972 () Bool)

(assert (=> b!909563 (=> (not res!613972) (not e!509900))))

(assert (=> b!909563 (= res!613972 (bvslt #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(declare-fun b!909564 () Bool)

(declare-fun e!509898 () ListLongMap!11107)

(assert (=> b!909564 (= e!509898 e!509905)))

(assert (=> b!909564 (= c!95624 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!509904 () Bool)

(declare-fun b!909565 () Bool)

(declare-fun get!13615 (ValueCell!8958 V!30137) V!30137)

(declare-fun dynLambda!1392 (Int (_ BitVec 64)) V!30137)

(assert (=> b!909565 (= e!509904 (= (apply!525 lt!410021 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)) (get!13615 (select (arr!25842 _values!1152) #b00000000000000000000000000000000) (dynLambda!1392 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!909565 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26302 _values!1152)))))

(assert (=> b!909565 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(declare-fun b!909566 () Bool)

(assert (=> b!909566 (= e!509898 (+!2558 call!40303 (tuple2!12397 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun d!112083 () Bool)

(assert (=> d!112083 e!509903))

(declare-fun res!613975 () Bool)

(assert (=> d!112083 (=> (not res!613975) (not e!509903))))

(assert (=> d!112083 (= res!613975 (or (bvsge #b00000000000000000000000000000000 (size!26301 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26301 _keys!1386)))))))

(declare-fun lt!410024 () ListLongMap!11107)

(assert (=> d!112083 (= lt!410021 lt!410024)))

(declare-fun lt!410033 () Unit!30825)

(assert (=> d!112083 (= lt!410033 e!509906)))

(declare-fun c!95626 () Bool)

(assert (=> d!112083 (= c!95626 e!509907)))

(declare-fun res!613977 () Bool)

(assert (=> d!112083 (=> (not res!613977) (not e!509907))))

(assert (=> d!112083 (= res!613977 (bvslt #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(assert (=> d!112083 (= lt!410024 e!509898)))

(assert (=> d!112083 (= c!95627 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112083 (validMask!0 mask!1756)))

(assert (=> d!112083 (= (getCurrentListMap!2799 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410021)))

(declare-fun b!909567 () Bool)

(declare-fun c!95625 () Bool)

(assert (=> b!909567 (= c!95625 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!909567 (= e!509905 e!509897)))

(declare-fun b!909568 () Bool)

(assert (=> b!909568 (= e!509899 e!509904)))

(declare-fun res!613970 () Bool)

(assert (=> b!909568 (=> (not res!613970) (not e!509904))))

(assert (=> b!909568 (= res!613970 (contains!4576 lt!410021 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!909568 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(assert (= (and d!112083 c!95627) b!909566))

(assert (= (and d!112083 (not c!95627)) b!909564))

(assert (= (and b!909564 c!95624) b!909554))

(assert (= (and b!909564 (not c!95624)) b!909567))

(assert (= (and b!909567 c!95625) b!909548))

(assert (= (and b!909567 (not c!95625)) b!909555))

(assert (= (or b!909548 b!909555) bm!40302))

(assert (= (or b!909554 bm!40302) bm!40299))

(assert (= (or b!909554 b!909548) bm!40300))

(assert (= (or b!909566 bm!40299) bm!40304))

(assert (= (or b!909566 bm!40300) bm!40301))

(assert (= (and d!112083 res!613977) b!909558))

(assert (= (and d!112083 c!95626) b!909556))

(assert (= (and d!112083 (not c!95626)) b!909551))

(assert (= (and d!112083 res!613975) b!909563))

(assert (= (and b!909563 res!613972) b!909553))

(assert (= (and b!909563 (not res!613978)) b!909568))

(assert (= (and b!909568 res!613970) b!909565))

(assert (= (and b!909563 res!613974) b!909559))

(assert (= (and b!909559 c!95623) b!909552))

(assert (= (and b!909559 (not c!95623)) b!909560))

(assert (= (and b!909552 res!613973) b!909549))

(assert (= (or b!909552 b!909560) bm!40303))

(assert (= (and b!909559 res!613971) b!909557))

(assert (= (and b!909557 c!95622) b!909550))

(assert (= (and b!909557 (not c!95622)) b!909562))

(assert (= (and b!909550 res!613976) b!909561))

(assert (= (or b!909550 b!909562) bm!40298))

(declare-fun b_lambda!13325 () Bool)

(assert (=> (not b_lambda!13325) (not b!909565)))

(declare-fun t!25845 () Bool)

(declare-fun tb!5441 () Bool)

(assert (=> (and start!77930 (= defaultEntry!1160 defaultEntry!1160) t!25845) tb!5441))

(declare-fun result!10671 () Bool)

(assert (=> tb!5441 (= result!10671 tp_is_empty!18879)))

(assert (=> b!909565 t!25845))

(declare-fun b_and!27051 () Bool)

(assert (= b_and!27047 (and (=> t!25845 result!10671) b_and!27051)))

(declare-fun m!844817 () Bool)

(assert (=> bm!40301 m!844817))

(declare-fun m!844819 () Bool)

(assert (=> b!909549 m!844819))

(declare-fun m!844821 () Bool)

(assert (=> b!909553 m!844821))

(assert (=> b!909553 m!844821))

(declare-fun m!844823 () Bool)

(assert (=> b!909553 m!844823))

(assert (=> b!909558 m!844821))

(assert (=> b!909558 m!844821))

(assert (=> b!909558 m!844823))

(declare-fun m!844825 () Bool)

(assert (=> bm!40298 m!844825))

(assert (=> b!909565 m!844821))

(declare-fun m!844827 () Bool)

(assert (=> b!909565 m!844827))

(declare-fun m!844829 () Bool)

(assert (=> b!909565 m!844829))

(assert (=> b!909565 m!844829))

(declare-fun m!844831 () Bool)

(assert (=> b!909565 m!844831))

(declare-fun m!844833 () Bool)

(assert (=> b!909565 m!844833))

(assert (=> b!909565 m!844821))

(assert (=> b!909565 m!844831))

(declare-fun m!844835 () Bool)

(assert (=> b!909556 m!844835))

(declare-fun m!844837 () Bool)

(assert (=> b!909556 m!844837))

(declare-fun m!844839 () Bool)

(assert (=> b!909556 m!844839))

(declare-fun m!844841 () Bool)

(assert (=> b!909556 m!844841))

(declare-fun m!844843 () Bool)

(assert (=> b!909556 m!844843))

(declare-fun m!844845 () Bool)

(assert (=> b!909556 m!844845))

(assert (=> b!909556 m!844835))

(declare-fun m!844847 () Bool)

(assert (=> b!909556 m!844847))

(declare-fun m!844849 () Bool)

(assert (=> b!909556 m!844849))

(declare-fun m!844851 () Bool)

(assert (=> b!909556 m!844851))

(assert (=> b!909556 m!844845))

(declare-fun m!844853 () Bool)

(assert (=> b!909556 m!844853))

(assert (=> b!909556 m!844821))

(declare-fun m!844855 () Bool)

(assert (=> b!909556 m!844855))

(declare-fun m!844857 () Bool)

(assert (=> b!909556 m!844857))

(assert (=> b!909556 m!844847))

(declare-fun m!844859 () Bool)

(assert (=> b!909556 m!844859))

(assert (=> b!909556 m!844843))

(declare-fun m!844861 () Bool)

(assert (=> b!909556 m!844861))

(declare-fun m!844863 () Bool)

(assert (=> b!909556 m!844863))

(declare-fun m!844865 () Bool)

(assert (=> b!909556 m!844865))

(declare-fun m!844867 () Bool)

(assert (=> b!909566 m!844867))

(declare-fun m!844869 () Bool)

(assert (=> b!909561 m!844869))

(assert (=> b!909568 m!844821))

(assert (=> b!909568 m!844821))

(declare-fun m!844871 () Bool)

(assert (=> b!909568 m!844871))

(assert (=> d!112083 m!844783))

(assert (=> bm!40304 m!844849))

(declare-fun m!844873 () Bool)

(assert (=> bm!40303 m!844873))

(assert (=> b!909463 d!112083))

(declare-fun d!112085 () Bool)

(assert (=> d!112085 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!909468 d!112085))

(declare-fun d!112087 () Bool)

(assert (=> d!112087 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77930 d!112087))

(declare-fun d!112089 () Bool)

(assert (=> d!112089 (= (array_inv!20192 _values!1152) (bvsge (size!26302 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77930 d!112089))

(declare-fun d!112091 () Bool)

(assert (=> d!112091 (= (array_inv!20193 _keys!1386) (bvsge (size!26301 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77930 d!112091))

(declare-fun b!909579 () Bool)

(declare-fun e!509916 () Bool)

(declare-fun call!40310 () Bool)

(assert (=> b!909579 (= e!509916 call!40310)))

(declare-fun b!909580 () Bool)

(declare-fun e!509917 () Bool)

(assert (=> b!909580 (= e!509917 e!509916)))

(declare-fun lt!410044 () (_ BitVec 64))

(assert (=> b!909580 (= lt!410044 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410043 () Unit!30825)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!53774 (_ BitVec 64) (_ BitVec 32)) Unit!30825)

(assert (=> b!909580 (= lt!410043 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410044 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!53774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!909580 (arrayContainsKey!0 _keys!1386 lt!410044 #b00000000000000000000000000000000)))

(declare-fun lt!410042 () Unit!30825)

(assert (=> b!909580 (= lt!410042 lt!410043)))

(declare-fun res!613983 () Bool)

(declare-datatypes ((SeekEntryResult!8951 0))(
  ( (MissingZero!8951 (index!38174 (_ BitVec 32))) (Found!8951 (index!38175 (_ BitVec 32))) (Intermediate!8951 (undefined!9763 Bool) (index!38176 (_ BitVec 32)) (x!77703 (_ BitVec 32))) (Undefined!8951) (MissingVacant!8951 (index!38177 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!53774 (_ BitVec 32)) SeekEntryResult!8951)

(assert (=> b!909580 (= res!613983 (= (seekEntryOrOpen!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8951 #b00000000000000000000000000000000)))))

(assert (=> b!909580 (=> (not res!613983) (not e!509916))))

(declare-fun b!909581 () Bool)

(assert (=> b!909581 (= e!509917 call!40310)))

(declare-fun b!909582 () Bool)

(declare-fun e!509918 () Bool)

(assert (=> b!909582 (= e!509918 e!509917)))

(declare-fun c!95630 () Bool)

(assert (=> b!909582 (= c!95630 (validKeyInArray!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40307 () Bool)

(assert (=> bm!40307 (= call!40310 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun d!112093 () Bool)

(declare-fun res!613984 () Bool)

(assert (=> d!112093 (=> res!613984 e!509918)))

(assert (=> d!112093 (= res!613984 (bvsge #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(assert (=> d!112093 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!509918)))

(assert (= (and d!112093 (not res!613984)) b!909582))

(assert (= (and b!909582 c!95630) b!909580))

(assert (= (and b!909582 (not c!95630)) b!909581))

(assert (= (and b!909580 res!613983) b!909579))

(assert (= (or b!909579 b!909581) bm!40307))

(assert (=> b!909580 m!844821))

(declare-fun m!844875 () Bool)

(assert (=> b!909580 m!844875))

(declare-fun m!844877 () Bool)

(assert (=> b!909580 m!844877))

(assert (=> b!909580 m!844821))

(declare-fun m!844879 () Bool)

(assert (=> b!909580 m!844879))

(assert (=> b!909582 m!844821))

(assert (=> b!909582 m!844821))

(assert (=> b!909582 m!844823))

(declare-fun m!844881 () Bool)

(assert (=> bm!40307 m!844881))

(assert (=> b!909461 d!112093))

(declare-fun bm!40310 () Bool)

(declare-fun call!40313 () Bool)

(declare-fun c!95633 () Bool)

(assert (=> bm!40310 (= call!40313 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95633 (Cons!18249 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000) Nil!18250) Nil!18250)))))

(declare-fun b!909593 () Bool)

(declare-fun e!509930 () Bool)

(declare-fun e!509927 () Bool)

(assert (=> b!909593 (= e!509930 e!509927)))

(declare-fun res!613991 () Bool)

(assert (=> b!909593 (=> (not res!613991) (not e!509927))))

(declare-fun e!509928 () Bool)

(assert (=> b!909593 (= res!613991 (not e!509928))))

(declare-fun res!613992 () Bool)

(assert (=> b!909593 (=> (not res!613992) (not e!509928))))

(assert (=> b!909593 (= res!613992 (validKeyInArray!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!909594 () Bool)

(declare-fun e!509929 () Bool)

(assert (=> b!909594 (= e!509929 call!40313)))

(declare-fun d!112095 () Bool)

(declare-fun res!613993 () Bool)

(assert (=> d!112095 (=> res!613993 e!509930)))

(assert (=> d!112095 (= res!613993 (bvsge #b00000000000000000000000000000000 (size!26301 _keys!1386)))))

(assert (=> d!112095 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18250) e!509930)))

(declare-fun b!909595 () Bool)

(assert (=> b!909595 (= e!509929 call!40313)))

(declare-fun b!909596 () Bool)

(declare-fun contains!4577 (List!18253 (_ BitVec 64)) Bool)

(assert (=> b!909596 (= e!509928 (contains!4577 Nil!18250 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!909597 () Bool)

(assert (=> b!909597 (= e!509927 e!509929)))

(assert (=> b!909597 (= c!95633 (validKeyInArray!0 (select (arr!25841 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112095 (not res!613993)) b!909593))

(assert (= (and b!909593 res!613992) b!909596))

(assert (= (and b!909593 res!613991) b!909597))

(assert (= (and b!909597 c!95633) b!909594))

(assert (= (and b!909597 (not c!95633)) b!909595))

(assert (= (or b!909594 b!909595) bm!40310))

(assert (=> bm!40310 m!844821))

(declare-fun m!844883 () Bool)

(assert (=> bm!40310 m!844883))

(assert (=> b!909593 m!844821))

(assert (=> b!909593 m!844821))

(assert (=> b!909593 m!844823))

(assert (=> b!909596 m!844821))

(assert (=> b!909596 m!844821))

(declare-fun m!844885 () Bool)

(assert (=> b!909596 m!844885))

(assert (=> b!909597 m!844821))

(assert (=> b!909597 m!844821))

(assert (=> b!909597 m!844823))

(assert (=> b!909466 d!112095))

(declare-fun b!909605 () Bool)

(declare-fun e!509936 () Bool)

(assert (=> b!909605 (= e!509936 tp_is_empty!18879)))

(declare-fun mapNonEmpty!30040 () Bool)

(declare-fun mapRes!30040 () Bool)

(declare-fun tp!57658 () Bool)

(declare-fun e!509935 () Bool)

(assert (=> mapNonEmpty!30040 (= mapRes!30040 (and tp!57658 e!509935))))

(declare-fun mapRest!30040 () (Array (_ BitVec 32) ValueCell!8958))

(declare-fun mapKey!30040 () (_ BitVec 32))

(declare-fun mapValue!30040 () ValueCell!8958)

(assert (=> mapNonEmpty!30040 (= mapRest!30034 (store mapRest!30040 mapKey!30040 mapValue!30040))))

(declare-fun condMapEmpty!30040 () Bool)

(declare-fun mapDefault!30040 () ValueCell!8958)

(assert (=> mapNonEmpty!30034 (= condMapEmpty!30040 (= mapRest!30034 ((as const (Array (_ BitVec 32) ValueCell!8958)) mapDefault!30040)))))

(assert (=> mapNonEmpty!30034 (= tp!57649 (and e!509936 mapRes!30040))))

(declare-fun b!909604 () Bool)

(assert (=> b!909604 (= e!509935 tp_is_empty!18879)))

(declare-fun mapIsEmpty!30040 () Bool)

(assert (=> mapIsEmpty!30040 mapRes!30040))

(assert (= (and mapNonEmpty!30034 condMapEmpty!30040) mapIsEmpty!30040))

(assert (= (and mapNonEmpty!30034 (not condMapEmpty!30040)) mapNonEmpty!30040))

(assert (= (and mapNonEmpty!30040 ((_ is ValueCellFull!8958) mapValue!30040)) b!909604))

(assert (= (and mapNonEmpty!30034 ((_ is ValueCellFull!8958) mapDefault!30040)) b!909605))

(declare-fun m!844887 () Bool)

(assert (=> mapNonEmpty!30040 m!844887))

(declare-fun b_lambda!13327 () Bool)

(assert (= b_lambda!13325 (or (and start!77930 b_free!16461) b_lambda!13327)))

(check-sat (not b!909596) b_and!27051 tp_is_empty!18879 (not b!909566) (not d!112083) (not bm!40298) (not b!909558) (not bm!40307) (not b_lambda!13327) (not b!909593) (not d!112081) (not b!909556) (not b!909582) (not b!909597) (not b!909580) (not b!909565) (not bm!40304) (not b!909503) (not mapNonEmpty!30040) (not b!909549) (not bm!40310) (not bm!40301) (not b!909561) (not bm!40303) (not b!909505) (not b!909553) (not b!909568) (not b_next!16461))
(check-sat b_and!27051 (not b_next!16461))
