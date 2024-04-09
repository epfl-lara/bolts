; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70552 () Bool)

(assert start!70552)

(declare-fun b_free!12855 () Bool)

(declare-fun b_next!12855 () Bool)

(assert (=> start!70552 (= b_free!12855 (not b_next!12855))))

(declare-fun tp!45298 () Bool)

(declare-fun b_and!21703 () Bool)

(assert (=> start!70552 (= tp!45298 b_and!21703)))

(declare-fun b!819146 () Bool)

(declare-fun res!559119 () Bool)

(declare-fun e!454917 () Bool)

(assert (=> b!819146 (=> (not res!559119) (not e!454917))))

(declare-datatypes ((array!45298 0))(
  ( (array!45299 (arr!21699 (Array (_ BitVec 32) (_ BitVec 64))) (size!22120 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45298)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45298 (_ BitVec 32)) Bool)

(assert (=> b!819146 (= res!559119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819147 () Bool)

(declare-fun e!454919 () Bool)

(assert (=> b!819147 (= e!454917 (not e!454919))))

(declare-fun res!559116 () Bool)

(assert (=> b!819147 (=> res!559116 e!454919)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819147 (= res!559116 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24421 0))(
  ( (V!24422 (val!7330 Int)) )
))
(declare-datatypes ((tuple2!9658 0))(
  ( (tuple2!9659 (_1!4839 (_ BitVec 64)) (_2!4839 V!24421)) )
))
(declare-datatypes ((List!15518 0))(
  ( (Nil!15515) (Cons!15514 (h!16643 tuple2!9658) (t!21855 List!15518)) )
))
(declare-datatypes ((ListLongMap!8495 0))(
  ( (ListLongMap!8496 (toList!4263 List!15518)) )
))
(declare-fun lt!367556 () ListLongMap!8495)

(declare-fun lt!367558 () ListLongMap!8495)

(assert (=> b!819147 (= lt!367556 lt!367558)))

(declare-datatypes ((Unit!27975 0))(
  ( (Unit!27976) )
))
(declare-fun lt!367553 () Unit!27975)

(declare-fun zeroValueBefore!34 () V!24421)

(declare-fun zeroValueAfter!34 () V!24421)

(declare-fun minValue!754 () V!24421)

(declare-datatypes ((ValueCell!6867 0))(
  ( (ValueCellFull!6867 (v!9755 V!24421)) (EmptyCell!6867) )
))
(declare-datatypes ((array!45300 0))(
  ( (array!45301 (arr!21700 (Array (_ BitVec 32) ValueCell!6867)) (size!22121 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45300)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!418 (array!45298 array!45300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24421 V!24421 V!24421 V!24421 (_ BitVec 32) Int) Unit!27975)

(assert (=> b!819147 (= lt!367553 (lemmaNoChangeToArrayThenSameMapNoExtras!418 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2302 (array!45298 array!45300 (_ BitVec 32) (_ BitVec 32) V!24421 V!24421 (_ BitVec 32) Int) ListLongMap!8495)

(assert (=> b!819147 (= lt!367558 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819147 (= lt!367556 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!559121 () Bool)

(assert (=> start!70552 (=> (not res!559121) (not e!454917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70552 (= res!559121 (validMask!0 mask!1312))))

(assert (=> start!70552 e!454917))

(declare-fun tp_is_empty!14565 () Bool)

(assert (=> start!70552 tp_is_empty!14565))

(declare-fun array_inv!17317 (array!45298) Bool)

(assert (=> start!70552 (array_inv!17317 _keys!976)))

(assert (=> start!70552 true))

(declare-fun e!454924 () Bool)

(declare-fun array_inv!17318 (array!45300) Bool)

(assert (=> start!70552 (and (array_inv!17318 _values!788) e!454924)))

(assert (=> start!70552 tp!45298))

(declare-fun mapIsEmpty!23446 () Bool)

(declare-fun mapRes!23446 () Bool)

(assert (=> mapIsEmpty!23446 mapRes!23446))

(declare-fun b!819148 () Bool)

(declare-fun e!454918 () Bool)

(assert (=> b!819148 (= e!454918 tp_is_empty!14565)))

(declare-fun b!819149 () Bool)

(assert (=> b!819149 (= e!454924 (and e!454918 mapRes!23446))))

(declare-fun condMapEmpty!23446 () Bool)

(declare-fun mapDefault!23446 () ValueCell!6867)

(assert (=> b!819149 (= condMapEmpty!23446 (= (arr!21700 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6867)) mapDefault!23446)))))

(declare-fun b!819150 () Bool)

(declare-fun e!454922 () Bool)

(assert (=> b!819150 (= e!454922 tp_is_empty!14565)))

(declare-fun lt!367554 () ListLongMap!8495)

(declare-fun b!819151 () Bool)

(declare-fun e!454921 () Bool)

(declare-fun +!1806 (ListLongMap!8495 tuple2!9658) ListLongMap!8495)

(assert (=> b!819151 (= e!454921 (= lt!367554 (+!1806 lt!367558 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!23446 () Bool)

(declare-fun tp!45297 () Bool)

(assert (=> mapNonEmpty!23446 (= mapRes!23446 (and tp!45297 e!454922))))

(declare-fun mapRest!23446 () (Array (_ BitVec 32) ValueCell!6867))

(declare-fun mapValue!23446 () ValueCell!6867)

(declare-fun mapKey!23446 () (_ BitVec 32))

(assert (=> mapNonEmpty!23446 (= (arr!21700 _values!788) (store mapRest!23446 mapKey!23446 mapValue!23446))))

(declare-fun b!819152 () Bool)

(declare-fun e!454920 () Bool)

(assert (=> b!819152 (= e!454919 e!454920)))

(declare-fun res!559115 () Bool)

(assert (=> b!819152 (=> res!559115 e!454920)))

(declare-fun lt!367560 () tuple2!9658)

(declare-fun lt!367557 () tuple2!9658)

(assert (=> b!819152 (= res!559115 (not (= lt!367554 (+!1806 (+!1806 lt!367558 lt!367557) lt!367560))))))

(declare-fun lt!367559 () ListLongMap!8495)

(assert (=> b!819152 (= (+!1806 lt!367556 lt!367560) (+!1806 lt!367559 lt!367560))))

(declare-fun lt!367555 () Unit!27975)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!184 (ListLongMap!8495 (_ BitVec 64) V!24421 V!24421) Unit!27975)

(assert (=> b!819152 (= lt!367555 (addSameAsAddTwiceSameKeyDiffValues!184 lt!367556 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819152 (= lt!367560 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819152 e!454921))

(declare-fun res!559117 () Bool)

(assert (=> b!819152 (=> (not res!559117) (not e!454921))))

(declare-fun lt!367561 () ListLongMap!8495)

(assert (=> b!819152 (= res!559117 (= lt!367561 lt!367559))))

(assert (=> b!819152 (= lt!367559 (+!1806 lt!367556 lt!367557))))

(assert (=> b!819152 (= lt!367557 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2419 (array!45298 array!45300 (_ BitVec 32) (_ BitVec 32) V!24421 V!24421 (_ BitVec 32) Int) ListLongMap!8495)

(assert (=> b!819152 (= lt!367554 (getCurrentListMap!2419 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819152 (= lt!367561 (getCurrentListMap!2419 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819153 () Bool)

(declare-fun res!559120 () Bool)

(assert (=> b!819153 (=> (not res!559120) (not e!454917))))

(assert (=> b!819153 (= res!559120 (and (= (size!22121 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22120 _keys!976) (size!22121 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819154 () Bool)

(assert (=> b!819154 (= e!454920 (bvsle #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819155 () Bool)

(declare-fun res!559118 () Bool)

(assert (=> b!819155 (=> (not res!559118) (not e!454917))))

(declare-datatypes ((List!15519 0))(
  ( (Nil!15516) (Cons!15515 (h!16644 (_ BitVec 64)) (t!21856 List!15519)) )
))
(declare-fun arrayNoDuplicates!0 (array!45298 (_ BitVec 32) List!15519) Bool)

(assert (=> b!819155 (= res!559118 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15516))))

(assert (= (and start!70552 res!559121) b!819153))

(assert (= (and b!819153 res!559120) b!819146))

(assert (= (and b!819146 res!559119) b!819155))

(assert (= (and b!819155 res!559118) b!819147))

(assert (= (and b!819147 (not res!559116)) b!819152))

(assert (= (and b!819152 res!559117) b!819151))

(assert (= (and b!819152 (not res!559115)) b!819154))

(assert (= (and b!819149 condMapEmpty!23446) mapIsEmpty!23446))

(assert (= (and b!819149 (not condMapEmpty!23446)) mapNonEmpty!23446))

(get-info :version)

(assert (= (and mapNonEmpty!23446 ((_ is ValueCellFull!6867) mapValue!23446)) b!819150))

(assert (= (and b!819149 ((_ is ValueCellFull!6867) mapDefault!23446)) b!819148))

(assert (= start!70552 b!819149))

(declare-fun m!760831 () Bool)

(assert (=> b!819151 m!760831))

(declare-fun m!760833 () Bool)

(assert (=> b!819147 m!760833))

(declare-fun m!760835 () Bool)

(assert (=> b!819147 m!760835))

(declare-fun m!760837 () Bool)

(assert (=> b!819147 m!760837))

(declare-fun m!760839 () Bool)

(assert (=> b!819152 m!760839))

(declare-fun m!760841 () Bool)

(assert (=> b!819152 m!760841))

(declare-fun m!760843 () Bool)

(assert (=> b!819152 m!760843))

(declare-fun m!760845 () Bool)

(assert (=> b!819152 m!760845))

(declare-fun m!760847 () Bool)

(assert (=> b!819152 m!760847))

(declare-fun m!760849 () Bool)

(assert (=> b!819152 m!760849))

(declare-fun m!760851 () Bool)

(assert (=> b!819152 m!760851))

(assert (=> b!819152 m!760843))

(declare-fun m!760853 () Bool)

(assert (=> b!819152 m!760853))

(declare-fun m!760855 () Bool)

(assert (=> start!70552 m!760855))

(declare-fun m!760857 () Bool)

(assert (=> start!70552 m!760857))

(declare-fun m!760859 () Bool)

(assert (=> start!70552 m!760859))

(declare-fun m!760861 () Bool)

(assert (=> b!819146 m!760861))

(declare-fun m!760863 () Bool)

(assert (=> mapNonEmpty!23446 m!760863))

(declare-fun m!760865 () Bool)

(assert (=> b!819155 m!760865))

(check-sat tp_is_empty!14565 (not b!819146) (not b!819152) b_and!21703 (not b_next!12855) (not b!819155) (not b!819147) (not start!70552) (not mapNonEmpty!23446) (not b!819151))
(check-sat b_and!21703 (not b_next!12855))
(get-model)

(declare-fun bm!35636 () Bool)

(declare-fun call!35639 () Bool)

(declare-fun c!89040 () Bool)

(assert (=> bm!35636 (= call!35639 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89040 (Cons!15515 (select (arr!21699 _keys!976) #b00000000000000000000000000000000) Nil!15516) Nil!15516)))))

(declare-fun b!819196 () Bool)

(declare-fun e!454957 () Bool)

(assert (=> b!819196 (= e!454957 call!35639)))

(declare-fun b!819197 () Bool)

(declare-fun e!454958 () Bool)

(assert (=> b!819197 (= e!454958 e!454957)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!819197 (= c!89040 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!819198 () Bool)

(assert (=> b!819198 (= e!454957 call!35639)))

(declare-fun b!819199 () Bool)

(declare-fun e!454960 () Bool)

(assert (=> b!819199 (= e!454960 e!454958)))

(declare-fun res!559150 () Bool)

(assert (=> b!819199 (=> (not res!559150) (not e!454958))))

(declare-fun e!454959 () Bool)

(assert (=> b!819199 (= res!559150 (not e!454959))))

(declare-fun res!559151 () Bool)

(assert (=> b!819199 (=> (not res!559151) (not e!454959))))

(assert (=> b!819199 (= res!559151 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!819200 () Bool)

(declare-fun contains!4159 (List!15519 (_ BitVec 64)) Bool)

(assert (=> b!819200 (= e!454959 (contains!4159 Nil!15516 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104575 () Bool)

(declare-fun res!559149 () Bool)

(assert (=> d!104575 (=> res!559149 e!454960)))

(assert (=> d!104575 (= res!559149 (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104575 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15516) e!454960)))

(assert (= (and d!104575 (not res!559149)) b!819199))

(assert (= (and b!819199 res!559151) b!819200))

(assert (= (and b!819199 res!559150) b!819197))

(assert (= (and b!819197 c!89040) b!819198))

(assert (= (and b!819197 (not c!89040)) b!819196))

(assert (= (or b!819198 b!819196) bm!35636))

(declare-fun m!760903 () Bool)

(assert (=> bm!35636 m!760903))

(declare-fun m!760905 () Bool)

(assert (=> bm!35636 m!760905))

(assert (=> b!819197 m!760903))

(assert (=> b!819197 m!760903))

(declare-fun m!760907 () Bool)

(assert (=> b!819197 m!760907))

(assert (=> b!819199 m!760903))

(assert (=> b!819199 m!760903))

(assert (=> b!819199 m!760907))

(assert (=> b!819200 m!760903))

(assert (=> b!819200 m!760903))

(declare-fun m!760909 () Bool)

(assert (=> b!819200 m!760909))

(assert (=> b!819155 d!104575))

(declare-fun d!104577 () Bool)

(declare-fun e!454963 () Bool)

(assert (=> d!104577 e!454963))

(declare-fun res!559157 () Bool)

(assert (=> d!104577 (=> (not res!559157) (not e!454963))))

(declare-fun lt!367597 () ListLongMap!8495)

(declare-fun contains!4160 (ListLongMap!8495 (_ BitVec 64)) Bool)

(assert (=> d!104577 (= res!559157 (contains!4160 lt!367597 (_1!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!367600 () List!15518)

(assert (=> d!104577 (= lt!367597 (ListLongMap!8496 lt!367600))))

(declare-fun lt!367598 () Unit!27975)

(declare-fun lt!367599 () Unit!27975)

(assert (=> d!104577 (= lt!367598 lt!367599)))

(declare-datatypes ((Option!407 0))(
  ( (Some!406 (v!9757 V!24421)) (None!405) )
))
(declare-fun getValueByKey!401 (List!15518 (_ BitVec 64)) Option!407)

(assert (=> d!104577 (= (getValueByKey!401 lt!367600 (_1!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!406 (_2!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!217 (List!15518 (_ BitVec 64) V!24421) Unit!27975)

(assert (=> d!104577 (= lt!367599 (lemmaContainsTupThenGetReturnValue!217 lt!367600 (_1!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun insertStrictlySorted!255 (List!15518 (_ BitVec 64) V!24421) List!15518)

(assert (=> d!104577 (= lt!367600 (insertStrictlySorted!255 (toList!4263 lt!367558) (_1!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104577 (= (+!1806 lt!367558 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!367597)))

(declare-fun b!819205 () Bool)

(declare-fun res!559156 () Bool)

(assert (=> b!819205 (=> (not res!559156) (not e!454963))))

(assert (=> b!819205 (= res!559156 (= (getValueByKey!401 (toList!4263 lt!367597) (_1!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!406 (_2!4839 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!819206 () Bool)

(declare-fun contains!4161 (List!15518 tuple2!9658) Bool)

(assert (=> b!819206 (= e!454963 (contains!4161 (toList!4263 lt!367597) (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!104577 res!559157) b!819205))

(assert (= (and b!819205 res!559156) b!819206))

(declare-fun m!760911 () Bool)

(assert (=> d!104577 m!760911))

(declare-fun m!760913 () Bool)

(assert (=> d!104577 m!760913))

(declare-fun m!760915 () Bool)

(assert (=> d!104577 m!760915))

(declare-fun m!760917 () Bool)

(assert (=> d!104577 m!760917))

(declare-fun m!760919 () Bool)

(assert (=> b!819205 m!760919))

(declare-fun m!760921 () Bool)

(assert (=> b!819206 m!760921))

(assert (=> b!819151 d!104577))

(declare-fun d!104579 () Bool)

(assert (=> d!104579 (= (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367603 () Unit!27975)

(declare-fun choose!1401 (array!45298 array!45300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24421 V!24421 V!24421 V!24421 (_ BitVec 32) Int) Unit!27975)

(assert (=> d!104579 (= lt!367603 (choose!1401 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104579 (validMask!0 mask!1312)))

(assert (=> d!104579 (= (lemmaNoChangeToArrayThenSameMapNoExtras!418 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!367603)))

(declare-fun bs!22831 () Bool)

(assert (= bs!22831 d!104579))

(assert (=> bs!22831 m!760837))

(assert (=> bs!22831 m!760835))

(declare-fun m!760923 () Bool)

(assert (=> bs!22831 m!760923))

(assert (=> bs!22831 m!760855))

(assert (=> b!819147 d!104579))

(declare-fun b!819232 () Bool)

(declare-fun e!454978 () ListLongMap!8495)

(assert (=> b!819232 (= e!454978 (ListLongMap!8496 Nil!15515))))

(declare-fun b!819233 () Bool)

(assert (=> b!819233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> b!819233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22121 _values!788)))))

(declare-fun e!454982 () Bool)

(declare-fun lt!367622 () ListLongMap!8495)

(declare-fun apply!354 (ListLongMap!8495 (_ BitVec 64)) V!24421)

(declare-fun get!11590 (ValueCell!6867 V!24421) V!24421)

(declare-fun dynLambda!964 (Int (_ BitVec 64)) V!24421)

(assert (=> b!819233 (= e!454982 (= (apply!354 lt!367622 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!819234 () Bool)

(declare-fun res!559168 () Bool)

(declare-fun e!454984 () Bool)

(assert (=> b!819234 (=> (not res!559168) (not e!454984))))

(assert (=> b!819234 (= res!559168 (not (contains!4160 lt!367622 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!454981 () Bool)

(declare-fun b!819235 () Bool)

(assert (=> b!819235 (= e!454981 (= lt!367622 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!819236 () Bool)

(declare-fun e!454980 () Bool)

(assert (=> b!819236 (= e!454984 e!454980)))

(declare-fun c!89049 () Bool)

(declare-fun e!454983 () Bool)

(assert (=> b!819236 (= c!89049 e!454983)))

(declare-fun res!559167 () Bool)

(assert (=> b!819236 (=> (not res!559167) (not e!454983))))

(assert (=> b!819236 (= res!559167 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun call!35642 () ListLongMap!8495)

(declare-fun bm!35639 () Bool)

(assert (=> bm!35639 (= call!35642 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!819237 () Bool)

(assert (=> b!819237 (= e!454980 e!454981)))

(declare-fun c!89051 () Bool)

(assert (=> b!819237 (= c!89051 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819238 () Bool)

(assert (=> b!819238 (= e!454980 e!454982)))

(assert (=> b!819238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun res!559166 () Bool)

(assert (=> b!819238 (= res!559166 (contains!4160 lt!367622 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819238 (=> (not res!559166) (not e!454982))))

(declare-fun b!819231 () Bool)

(declare-fun e!454979 () ListLongMap!8495)

(assert (=> b!819231 (= e!454978 e!454979)))

(declare-fun c!89050 () Bool)

(assert (=> b!819231 (= c!89050 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104581 () Bool)

(assert (=> d!104581 e!454984))

(declare-fun res!559169 () Bool)

(assert (=> d!104581 (=> (not res!559169) (not e!454984))))

(assert (=> d!104581 (= res!559169 (not (contains!4160 lt!367622 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104581 (= lt!367622 e!454978)))

(declare-fun c!89052 () Bool)

(assert (=> d!104581 (= c!89052 (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104581 (validMask!0 mask!1312)))

(assert (=> d!104581 (= (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!367622)))

(declare-fun b!819239 () Bool)

(assert (=> b!819239 (= e!454979 call!35642)))

(declare-fun b!819240 () Bool)

(declare-fun isEmpty!641 (ListLongMap!8495) Bool)

(assert (=> b!819240 (= e!454981 (isEmpty!641 lt!367622))))

(declare-fun b!819241 () Bool)

(assert (=> b!819241 (= e!454983 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819241 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!819242 () Bool)

(declare-fun lt!367620 () Unit!27975)

(declare-fun lt!367619 () Unit!27975)

(assert (=> b!819242 (= lt!367620 lt!367619)))

(declare-fun lt!367621 () ListLongMap!8495)

(declare-fun lt!367618 () (_ BitVec 64))

(declare-fun lt!367623 () (_ BitVec 64))

(declare-fun lt!367624 () V!24421)

(assert (=> b!819242 (not (contains!4160 (+!1806 lt!367621 (tuple2!9659 lt!367623 lt!367624)) lt!367618))))

(declare-fun addStillNotContains!181 (ListLongMap!8495 (_ BitVec 64) V!24421 (_ BitVec 64)) Unit!27975)

(assert (=> b!819242 (= lt!367619 (addStillNotContains!181 lt!367621 lt!367623 lt!367624 lt!367618))))

(assert (=> b!819242 (= lt!367618 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!819242 (= lt!367624 (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!819242 (= lt!367623 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!819242 (= lt!367621 call!35642)))

(assert (=> b!819242 (= e!454979 (+!1806 call!35642 (tuple2!9659 (select (arr!21699 _keys!976) #b00000000000000000000000000000000) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!104581 c!89052) b!819232))

(assert (= (and d!104581 (not c!89052)) b!819231))

(assert (= (and b!819231 c!89050) b!819242))

(assert (= (and b!819231 (not c!89050)) b!819239))

(assert (= (or b!819242 b!819239) bm!35639))

(assert (= (and d!104581 res!559169) b!819234))

(assert (= (and b!819234 res!559168) b!819236))

(assert (= (and b!819236 res!559167) b!819241))

(assert (= (and b!819236 c!89049) b!819238))

(assert (= (and b!819236 (not c!89049)) b!819237))

(assert (= (and b!819238 res!559166) b!819233))

(assert (= (and b!819237 c!89051) b!819235))

(assert (= (and b!819237 (not c!89051)) b!819240))

(declare-fun b_lambda!10977 () Bool)

(assert (=> (not b_lambda!10977) (not b!819233)))

(declare-fun t!21859 () Bool)

(declare-fun tb!4197 () Bool)

(assert (=> (and start!70552 (= defaultEntry!796 defaultEntry!796) t!21859) tb!4197))

(declare-fun result!7915 () Bool)

(assert (=> tb!4197 (= result!7915 tp_is_empty!14565)))

(assert (=> b!819233 t!21859))

(declare-fun b_and!21707 () Bool)

(assert (= b_and!21703 (and (=> t!21859 result!7915) b_and!21707)))

(declare-fun b_lambda!10979 () Bool)

(assert (=> (not b_lambda!10979) (not b!819242)))

(assert (=> b!819242 t!21859))

(declare-fun b_and!21709 () Bool)

(assert (= b_and!21707 (and (=> t!21859 result!7915) b_and!21709)))

(declare-fun m!760925 () Bool)

(assert (=> b!819240 m!760925))

(assert (=> b!819238 m!760903))

(assert (=> b!819238 m!760903))

(declare-fun m!760927 () Bool)

(assert (=> b!819238 m!760927))

(assert (=> b!819231 m!760903))

(assert (=> b!819231 m!760903))

(assert (=> b!819231 m!760907))

(declare-fun m!760929 () Bool)

(assert (=> b!819233 m!760929))

(declare-fun m!760931 () Bool)

(assert (=> b!819233 m!760931))

(declare-fun m!760933 () Bool)

(assert (=> b!819233 m!760933))

(assert (=> b!819233 m!760903))

(declare-fun m!760935 () Bool)

(assert (=> b!819233 m!760935))

(assert (=> b!819233 m!760931))

(assert (=> b!819233 m!760929))

(assert (=> b!819233 m!760903))

(declare-fun m!760937 () Bool)

(assert (=> bm!35639 m!760937))

(assert (=> b!819241 m!760903))

(assert (=> b!819241 m!760903))

(assert (=> b!819241 m!760907))

(declare-fun m!760939 () Bool)

(assert (=> b!819234 m!760939))

(declare-fun m!760941 () Bool)

(assert (=> d!104581 m!760941))

(assert (=> d!104581 m!760855))

(declare-fun m!760943 () Bool)

(assert (=> b!819242 m!760943))

(declare-fun m!760945 () Bool)

(assert (=> b!819242 m!760945))

(declare-fun m!760947 () Bool)

(assert (=> b!819242 m!760947))

(assert (=> b!819242 m!760929))

(assert (=> b!819242 m!760931))

(assert (=> b!819242 m!760933))

(declare-fun m!760949 () Bool)

(assert (=> b!819242 m!760949))

(assert (=> b!819242 m!760929))

(assert (=> b!819242 m!760903))

(assert (=> b!819242 m!760945))

(assert (=> b!819242 m!760931))

(assert (=> b!819235 m!760937))

(assert (=> b!819147 d!104581))

(declare-fun b!819246 () Bool)

(declare-fun e!454985 () ListLongMap!8495)

(assert (=> b!819246 (= e!454985 (ListLongMap!8496 Nil!15515))))

(declare-fun b!819247 () Bool)

(assert (=> b!819247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> b!819247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22121 _values!788)))))

(declare-fun e!454989 () Bool)

(declare-fun lt!367629 () ListLongMap!8495)

(assert (=> b!819247 (= e!454989 (= (apply!354 lt!367629 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!819248 () Bool)

(declare-fun res!559172 () Bool)

(declare-fun e!454991 () Bool)

(assert (=> b!819248 (=> (not res!559172) (not e!454991))))

(assert (=> b!819248 (= res!559172 (not (contains!4160 lt!367629 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!819249 () Bool)

(declare-fun e!454988 () Bool)

(assert (=> b!819249 (= e!454988 (= lt!367629 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!819250 () Bool)

(declare-fun e!454987 () Bool)

(assert (=> b!819250 (= e!454991 e!454987)))

(declare-fun c!89053 () Bool)

(declare-fun e!454990 () Bool)

(assert (=> b!819250 (= c!89053 e!454990)))

(declare-fun res!559171 () Bool)

(assert (=> b!819250 (=> (not res!559171) (not e!454990))))

(assert (=> b!819250 (= res!559171 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun call!35643 () ListLongMap!8495)

(declare-fun bm!35640 () Bool)

(assert (=> bm!35640 (= call!35643 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!819251 () Bool)

(assert (=> b!819251 (= e!454987 e!454988)))

(declare-fun c!89055 () Bool)

(assert (=> b!819251 (= c!89055 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819252 () Bool)

(assert (=> b!819252 (= e!454987 e!454989)))

(assert (=> b!819252 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun res!559170 () Bool)

(assert (=> b!819252 (= res!559170 (contains!4160 lt!367629 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819252 (=> (not res!559170) (not e!454989))))

(declare-fun b!819245 () Bool)

(declare-fun e!454986 () ListLongMap!8495)

(assert (=> b!819245 (= e!454985 e!454986)))

(declare-fun c!89054 () Bool)

(assert (=> b!819245 (= c!89054 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104583 () Bool)

(assert (=> d!104583 e!454991))

(declare-fun res!559173 () Bool)

(assert (=> d!104583 (=> (not res!559173) (not e!454991))))

(assert (=> d!104583 (= res!559173 (not (contains!4160 lt!367629 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104583 (= lt!367629 e!454985)))

(declare-fun c!89056 () Bool)

(assert (=> d!104583 (= c!89056 (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104583 (validMask!0 mask!1312)))

(assert (=> d!104583 (= (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!367629)))

(declare-fun b!819253 () Bool)

(assert (=> b!819253 (= e!454986 call!35643)))

(declare-fun b!819254 () Bool)

(assert (=> b!819254 (= e!454988 (isEmpty!641 lt!367629))))

(declare-fun b!819255 () Bool)

(assert (=> b!819255 (= e!454990 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819255 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!819256 () Bool)

(declare-fun lt!367627 () Unit!27975)

(declare-fun lt!367626 () Unit!27975)

(assert (=> b!819256 (= lt!367627 lt!367626)))

(declare-fun lt!367631 () V!24421)

(declare-fun lt!367630 () (_ BitVec 64))

(declare-fun lt!367625 () (_ BitVec 64))

(declare-fun lt!367628 () ListLongMap!8495)

(assert (=> b!819256 (not (contains!4160 (+!1806 lt!367628 (tuple2!9659 lt!367630 lt!367631)) lt!367625))))

(assert (=> b!819256 (= lt!367626 (addStillNotContains!181 lt!367628 lt!367630 lt!367631 lt!367625))))

(assert (=> b!819256 (= lt!367625 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!819256 (= lt!367631 (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!819256 (= lt!367630 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!819256 (= lt!367628 call!35643)))

(assert (=> b!819256 (= e!454986 (+!1806 call!35643 (tuple2!9659 (select (arr!21699 _keys!976) #b00000000000000000000000000000000) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!104583 c!89056) b!819246))

(assert (= (and d!104583 (not c!89056)) b!819245))

(assert (= (and b!819245 c!89054) b!819256))

(assert (= (and b!819245 (not c!89054)) b!819253))

(assert (= (or b!819256 b!819253) bm!35640))

(assert (= (and d!104583 res!559173) b!819248))

(assert (= (and b!819248 res!559172) b!819250))

(assert (= (and b!819250 res!559171) b!819255))

(assert (= (and b!819250 c!89053) b!819252))

(assert (= (and b!819250 (not c!89053)) b!819251))

(assert (= (and b!819252 res!559170) b!819247))

(assert (= (and b!819251 c!89055) b!819249))

(assert (= (and b!819251 (not c!89055)) b!819254))

(declare-fun b_lambda!10981 () Bool)

(assert (=> (not b_lambda!10981) (not b!819247)))

(assert (=> b!819247 t!21859))

(declare-fun b_and!21711 () Bool)

(assert (= b_and!21709 (and (=> t!21859 result!7915) b_and!21711)))

(declare-fun b_lambda!10983 () Bool)

(assert (=> (not b_lambda!10983) (not b!819256)))

(assert (=> b!819256 t!21859))

(declare-fun b_and!21713 () Bool)

(assert (= b_and!21711 (and (=> t!21859 result!7915) b_and!21713)))

(declare-fun m!760951 () Bool)

(assert (=> b!819254 m!760951))

(assert (=> b!819252 m!760903))

(assert (=> b!819252 m!760903))

(declare-fun m!760953 () Bool)

(assert (=> b!819252 m!760953))

(assert (=> b!819245 m!760903))

(assert (=> b!819245 m!760903))

(assert (=> b!819245 m!760907))

(assert (=> b!819247 m!760929))

(assert (=> b!819247 m!760931))

(assert (=> b!819247 m!760933))

(assert (=> b!819247 m!760903))

(declare-fun m!760955 () Bool)

(assert (=> b!819247 m!760955))

(assert (=> b!819247 m!760931))

(assert (=> b!819247 m!760929))

(assert (=> b!819247 m!760903))

(declare-fun m!760957 () Bool)

(assert (=> bm!35640 m!760957))

(assert (=> b!819255 m!760903))

(assert (=> b!819255 m!760903))

(assert (=> b!819255 m!760907))

(declare-fun m!760959 () Bool)

(assert (=> b!819248 m!760959))

(declare-fun m!760961 () Bool)

(assert (=> d!104583 m!760961))

(assert (=> d!104583 m!760855))

(declare-fun m!760963 () Bool)

(assert (=> b!819256 m!760963))

(declare-fun m!760965 () Bool)

(assert (=> b!819256 m!760965))

(declare-fun m!760967 () Bool)

(assert (=> b!819256 m!760967))

(assert (=> b!819256 m!760929))

(assert (=> b!819256 m!760931))

(assert (=> b!819256 m!760933))

(declare-fun m!760969 () Bool)

(assert (=> b!819256 m!760969))

(assert (=> b!819256 m!760929))

(assert (=> b!819256 m!760903))

(assert (=> b!819256 m!760965))

(assert (=> b!819256 m!760931))

(assert (=> b!819249 m!760957))

(assert (=> b!819147 d!104583))

(declare-fun d!104585 () Bool)

(assert (=> d!104585 (= (+!1806 lt!367556 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (+!1806 (+!1806 lt!367556 (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!367634 () Unit!27975)

(declare-fun choose!1402 (ListLongMap!8495 (_ BitVec 64) V!24421 V!24421) Unit!27975)

(assert (=> d!104585 (= lt!367634 (choose!1402 lt!367556 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> d!104585 (= (addSameAsAddTwiceSameKeyDiffValues!184 lt!367556 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34) lt!367634)))

(declare-fun bs!22832 () Bool)

(assert (= bs!22832 d!104585))

(declare-fun m!760971 () Bool)

(assert (=> bs!22832 m!760971))

(declare-fun m!760973 () Bool)

(assert (=> bs!22832 m!760973))

(assert (=> bs!22832 m!760973))

(declare-fun m!760975 () Bool)

(assert (=> bs!22832 m!760975))

(declare-fun m!760977 () Bool)

(assert (=> bs!22832 m!760977))

(assert (=> b!819152 d!104585))

(declare-fun b!819299 () Bool)

(declare-fun e!455025 () Bool)

(declare-fun lt!367699 () ListLongMap!8495)

(assert (=> b!819299 (= e!455025 (= (apply!354 lt!367699 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35655 () Bool)

(declare-fun call!35660 () Bool)

(assert (=> bm!35655 (= call!35660 (contains!4160 lt!367699 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!819300 () Bool)

(declare-fun e!455020 () Bool)

(declare-fun e!455019 () Bool)

(assert (=> b!819300 (= e!455020 e!455019)))

(declare-fun res!559194 () Bool)

(declare-fun call!35662 () Bool)

(assert (=> b!819300 (= res!559194 call!35662)))

(assert (=> b!819300 (=> (not res!559194) (not e!455019))))

(declare-fun b!819301 () Bool)

(declare-fun e!455021 () Bool)

(assert (=> b!819301 (= e!455021 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!819302 () Bool)

(assert (=> b!819302 (= e!455020 (not call!35662))))

(declare-fun b!819303 () Bool)

(declare-fun e!455027 () Bool)

(assert (=> b!819303 (= e!455027 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun call!35664 () ListLongMap!8495)

(declare-fun bm!35656 () Bool)

(assert (=> bm!35656 (= call!35664 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819304 () Bool)

(declare-fun e!455029 () ListLongMap!8495)

(declare-fun call!35659 () ListLongMap!8495)

(assert (=> b!819304 (= e!455029 (+!1806 call!35659 (tuple2!9659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!819305 () Bool)

(declare-fun e!455023 () ListLongMap!8495)

(declare-fun call!35661 () ListLongMap!8495)

(assert (=> b!819305 (= e!455023 call!35661)))

(declare-fun b!819306 () Bool)

(assert (=> b!819306 (= e!455019 (= (apply!354 lt!367699 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!819307 () Bool)

(declare-fun e!455018 () Unit!27975)

(declare-fun Unit!27977 () Unit!27975)

(assert (=> b!819307 (= e!455018 Unit!27977)))

(declare-fun b!819308 () Bool)

(declare-fun e!455028 () Bool)

(assert (=> b!819308 (= e!455028 (not call!35660))))

(declare-fun bm!35657 () Bool)

(assert (=> bm!35657 (= call!35662 (contains!4160 lt!367699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!35658 () ListLongMap!8495)

(declare-fun bm!35658 () Bool)

(declare-fun c!89072 () Bool)

(declare-fun c!89071 () Bool)

(assert (=> bm!35658 (= call!35659 (+!1806 (ite c!89071 call!35664 (ite c!89072 call!35658 call!35661)) (ite (or c!89071 c!89072) (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!819309 () Bool)

(declare-fun e!455024 () Bool)

(assert (=> b!819309 (= e!455024 e!455028)))

(declare-fun c!89074 () Bool)

(assert (=> b!819309 (= c!89074 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!819310 () Bool)

(declare-fun e!455030 () Bool)

(assert (=> b!819310 (= e!455030 (= (apply!354 lt!367699 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!819310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22121 _values!788)))))

(assert (=> b!819310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819311 () Bool)

(declare-fun res!559200 () Bool)

(assert (=> b!819311 (=> (not res!559200) (not e!455024))))

(assert (=> b!819311 (= res!559200 e!455020)))

(declare-fun c!89069 () Bool)

(assert (=> b!819311 (= c!89069 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!104587 () Bool)

(assert (=> d!104587 e!455024))

(declare-fun res!559195 () Bool)

(assert (=> d!104587 (=> (not res!559195) (not e!455024))))

(assert (=> d!104587 (= res!559195 (or (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))))

(declare-fun lt!367682 () ListLongMap!8495)

(assert (=> d!104587 (= lt!367699 lt!367682)))

(declare-fun lt!367690 () Unit!27975)

(assert (=> d!104587 (= lt!367690 e!455018)))

(declare-fun c!89070 () Bool)

(assert (=> d!104587 (= c!89070 e!455027)))

(declare-fun res!559199 () Bool)

(assert (=> d!104587 (=> (not res!559199) (not e!455027))))

(assert (=> d!104587 (= res!559199 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104587 (= lt!367682 e!455029)))

(assert (=> d!104587 (= c!89071 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104587 (validMask!0 mask!1312)))

(assert (=> d!104587 (= (getCurrentListMap!2419 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!367699)))

(declare-fun bm!35659 () Bool)

(declare-fun call!35663 () ListLongMap!8495)

(assert (=> bm!35659 (= call!35663 call!35659)))

(declare-fun b!819312 () Bool)

(assert (=> b!819312 (= e!455023 call!35663)))

(declare-fun bm!35660 () Bool)

(assert (=> bm!35660 (= call!35658 call!35664)))

(declare-fun b!819313 () Bool)

(assert (=> b!819313 (= e!455028 e!455025)))

(declare-fun res!559192 () Bool)

(assert (=> b!819313 (= res!559192 call!35660)))

(assert (=> b!819313 (=> (not res!559192) (not e!455025))))

(declare-fun b!819314 () Bool)

(declare-fun lt!367679 () Unit!27975)

(assert (=> b!819314 (= e!455018 lt!367679)))

(declare-fun lt!367693 () ListLongMap!8495)

(assert (=> b!819314 (= lt!367693 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367697 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367697 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367698 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367698 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367685 () Unit!27975)

(declare-fun addStillContains!308 (ListLongMap!8495 (_ BitVec 64) V!24421 (_ BitVec 64)) Unit!27975)

(assert (=> b!819314 (= lt!367685 (addStillContains!308 lt!367693 lt!367697 zeroValueBefore!34 lt!367698))))

(assert (=> b!819314 (contains!4160 (+!1806 lt!367693 (tuple2!9659 lt!367697 zeroValueBefore!34)) lt!367698)))

(declare-fun lt!367696 () Unit!27975)

(assert (=> b!819314 (= lt!367696 lt!367685)))

(declare-fun lt!367684 () ListLongMap!8495)

(assert (=> b!819314 (= lt!367684 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367688 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367688 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367680 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367680 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367686 () Unit!27975)

(declare-fun addApplyDifferent!308 (ListLongMap!8495 (_ BitVec 64) V!24421 (_ BitVec 64)) Unit!27975)

(assert (=> b!819314 (= lt!367686 (addApplyDifferent!308 lt!367684 lt!367688 minValue!754 lt!367680))))

(assert (=> b!819314 (= (apply!354 (+!1806 lt!367684 (tuple2!9659 lt!367688 minValue!754)) lt!367680) (apply!354 lt!367684 lt!367680))))

(declare-fun lt!367692 () Unit!27975)

(assert (=> b!819314 (= lt!367692 lt!367686)))

(declare-fun lt!367687 () ListLongMap!8495)

(assert (=> b!819314 (= lt!367687 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367689 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367689 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367683 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367683 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367694 () Unit!27975)

(assert (=> b!819314 (= lt!367694 (addApplyDifferent!308 lt!367687 lt!367689 zeroValueBefore!34 lt!367683))))

(assert (=> b!819314 (= (apply!354 (+!1806 lt!367687 (tuple2!9659 lt!367689 zeroValueBefore!34)) lt!367683) (apply!354 lt!367687 lt!367683))))

(declare-fun lt!367691 () Unit!27975)

(assert (=> b!819314 (= lt!367691 lt!367694)))

(declare-fun lt!367681 () ListLongMap!8495)

(assert (=> b!819314 (= lt!367681 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367700 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367700 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367695 () (_ BitVec 64))

(assert (=> b!819314 (= lt!367695 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!819314 (= lt!367679 (addApplyDifferent!308 lt!367681 lt!367700 minValue!754 lt!367695))))

(assert (=> b!819314 (= (apply!354 (+!1806 lt!367681 (tuple2!9659 lt!367700 minValue!754)) lt!367695) (apply!354 lt!367681 lt!367695))))

(declare-fun b!819315 () Bool)

(declare-fun e!455026 () ListLongMap!8495)

(assert (=> b!819315 (= e!455029 e!455026)))

(assert (=> b!819315 (= c!89072 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!819316 () Bool)

(declare-fun res!559198 () Bool)

(assert (=> b!819316 (=> (not res!559198) (not e!455024))))

(declare-fun e!455022 () Bool)

(assert (=> b!819316 (= res!559198 e!455022)))

(declare-fun res!559197 () Bool)

(assert (=> b!819316 (=> res!559197 e!455022)))

(assert (=> b!819316 (= res!559197 (not e!455021))))

(declare-fun res!559193 () Bool)

(assert (=> b!819316 (=> (not res!559193) (not e!455021))))

(assert (=> b!819316 (= res!559193 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819317 () Bool)

(assert (=> b!819317 (= e!455022 e!455030)))

(declare-fun res!559196 () Bool)

(assert (=> b!819317 (=> (not res!559196) (not e!455030))))

(assert (=> b!819317 (= res!559196 (contains!4160 lt!367699 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819317 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun bm!35661 () Bool)

(assert (=> bm!35661 (= call!35661 call!35658)))

(declare-fun b!819318 () Bool)

(assert (=> b!819318 (= e!455026 call!35663)))

(declare-fun b!819319 () Bool)

(declare-fun c!89073 () Bool)

(assert (=> b!819319 (= c!89073 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819319 (= e!455026 e!455023)))

(assert (= (and d!104587 c!89071) b!819304))

(assert (= (and d!104587 (not c!89071)) b!819315))

(assert (= (and b!819315 c!89072) b!819318))

(assert (= (and b!819315 (not c!89072)) b!819319))

(assert (= (and b!819319 c!89073) b!819312))

(assert (= (and b!819319 (not c!89073)) b!819305))

(assert (= (or b!819312 b!819305) bm!35661))

(assert (= (or b!819318 bm!35661) bm!35660))

(assert (= (or b!819318 b!819312) bm!35659))

(assert (= (or b!819304 bm!35660) bm!35656))

(assert (= (or b!819304 bm!35659) bm!35658))

(assert (= (and d!104587 res!559199) b!819303))

(assert (= (and d!104587 c!89070) b!819314))

(assert (= (and d!104587 (not c!89070)) b!819307))

(assert (= (and d!104587 res!559195) b!819316))

(assert (= (and b!819316 res!559193) b!819301))

(assert (= (and b!819316 (not res!559197)) b!819317))

(assert (= (and b!819317 res!559196) b!819310))

(assert (= (and b!819316 res!559198) b!819311))

(assert (= (and b!819311 c!89069) b!819300))

(assert (= (and b!819311 (not c!89069)) b!819302))

(assert (= (and b!819300 res!559194) b!819306))

(assert (= (or b!819300 b!819302) bm!35657))

(assert (= (and b!819311 res!559200) b!819309))

(assert (= (and b!819309 c!89074) b!819313))

(assert (= (and b!819309 (not c!89074)) b!819308))

(assert (= (and b!819313 res!559192) b!819299))

(assert (= (or b!819313 b!819308) bm!35655))

(declare-fun b_lambda!10985 () Bool)

(assert (=> (not b_lambda!10985) (not b!819310)))

(assert (=> b!819310 t!21859))

(declare-fun b_and!21715 () Bool)

(assert (= b_and!21713 (and (=> t!21859 result!7915) b_and!21715)))

(assert (=> d!104587 m!760855))

(declare-fun m!760979 () Bool)

(assert (=> bm!35657 m!760979))

(declare-fun m!760981 () Bool)

(assert (=> b!819299 m!760981))

(assert (=> bm!35656 m!760837))

(assert (=> b!819303 m!760903))

(assert (=> b!819303 m!760903))

(assert (=> b!819303 m!760907))

(declare-fun m!760983 () Bool)

(assert (=> b!819306 m!760983))

(assert (=> b!819301 m!760903))

(assert (=> b!819301 m!760903))

(assert (=> b!819301 m!760907))

(assert (=> b!819317 m!760903))

(assert (=> b!819317 m!760903))

(declare-fun m!760985 () Bool)

(assert (=> b!819317 m!760985))

(declare-fun m!760987 () Bool)

(assert (=> b!819304 m!760987))

(declare-fun m!760989 () Bool)

(assert (=> b!819314 m!760989))

(declare-fun m!760991 () Bool)

(assert (=> b!819314 m!760991))

(declare-fun m!760993 () Bool)

(assert (=> b!819314 m!760993))

(declare-fun m!760995 () Bool)

(assert (=> b!819314 m!760995))

(declare-fun m!760997 () Bool)

(assert (=> b!819314 m!760997))

(declare-fun m!760999 () Bool)

(assert (=> b!819314 m!760999))

(assert (=> b!819314 m!760903))

(declare-fun m!761001 () Bool)

(assert (=> b!819314 m!761001))

(declare-fun m!761003 () Bool)

(assert (=> b!819314 m!761003))

(declare-fun m!761005 () Bool)

(assert (=> b!819314 m!761005))

(declare-fun m!761007 () Bool)

(assert (=> b!819314 m!761007))

(assert (=> b!819314 m!760993))

(assert (=> b!819314 m!761005))

(declare-fun m!761009 () Bool)

(assert (=> b!819314 m!761009))

(declare-fun m!761011 () Bool)

(assert (=> b!819314 m!761011))

(declare-fun m!761013 () Bool)

(assert (=> b!819314 m!761013))

(assert (=> b!819314 m!760989))

(declare-fun m!761015 () Bool)

(assert (=> b!819314 m!761015))

(assert (=> b!819314 m!761011))

(declare-fun m!761017 () Bool)

(assert (=> b!819314 m!761017))

(assert (=> b!819314 m!760837))

(assert (=> b!819310 m!760929))

(assert (=> b!819310 m!760931))

(assert (=> b!819310 m!760933))

(assert (=> b!819310 m!760929))

(assert (=> b!819310 m!760931))

(assert (=> b!819310 m!760903))

(assert (=> b!819310 m!760903))

(declare-fun m!761019 () Bool)

(assert (=> b!819310 m!761019))

(declare-fun m!761021 () Bool)

(assert (=> bm!35655 m!761021))

(declare-fun m!761023 () Bool)

(assert (=> bm!35658 m!761023))

(assert (=> b!819152 d!104587))

(declare-fun d!104589 () Bool)

(declare-fun e!455031 () Bool)

(assert (=> d!104589 e!455031))

(declare-fun res!559202 () Bool)

(assert (=> d!104589 (=> (not res!559202) (not e!455031))))

(declare-fun lt!367701 () ListLongMap!8495)

(assert (=> d!104589 (= res!559202 (contains!4160 lt!367701 (_1!4839 lt!367557)))))

(declare-fun lt!367704 () List!15518)

(assert (=> d!104589 (= lt!367701 (ListLongMap!8496 lt!367704))))

(declare-fun lt!367702 () Unit!27975)

(declare-fun lt!367703 () Unit!27975)

(assert (=> d!104589 (= lt!367702 lt!367703)))

(assert (=> d!104589 (= (getValueByKey!401 lt!367704 (_1!4839 lt!367557)) (Some!406 (_2!4839 lt!367557)))))

(assert (=> d!104589 (= lt!367703 (lemmaContainsTupThenGetReturnValue!217 lt!367704 (_1!4839 lt!367557) (_2!4839 lt!367557)))))

(assert (=> d!104589 (= lt!367704 (insertStrictlySorted!255 (toList!4263 lt!367558) (_1!4839 lt!367557) (_2!4839 lt!367557)))))

(assert (=> d!104589 (= (+!1806 lt!367558 lt!367557) lt!367701)))

(declare-fun b!819320 () Bool)

(declare-fun res!559201 () Bool)

(assert (=> b!819320 (=> (not res!559201) (not e!455031))))

(assert (=> b!819320 (= res!559201 (= (getValueByKey!401 (toList!4263 lt!367701) (_1!4839 lt!367557)) (Some!406 (_2!4839 lt!367557))))))

(declare-fun b!819321 () Bool)

(assert (=> b!819321 (= e!455031 (contains!4161 (toList!4263 lt!367701) lt!367557))))

(assert (= (and d!104589 res!559202) b!819320))

(assert (= (and b!819320 res!559201) b!819321))

(declare-fun m!761025 () Bool)

(assert (=> d!104589 m!761025))

(declare-fun m!761027 () Bool)

(assert (=> d!104589 m!761027))

(declare-fun m!761029 () Bool)

(assert (=> d!104589 m!761029))

(declare-fun m!761031 () Bool)

(assert (=> d!104589 m!761031))

(declare-fun m!761033 () Bool)

(assert (=> b!819320 m!761033))

(declare-fun m!761035 () Bool)

(assert (=> b!819321 m!761035))

(assert (=> b!819152 d!104589))

(declare-fun b!819322 () Bool)

(declare-fun e!455039 () Bool)

(declare-fun lt!367725 () ListLongMap!8495)

(assert (=> b!819322 (= e!455039 (= (apply!354 lt!367725 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35662 () Bool)

(declare-fun call!35667 () Bool)

(assert (=> bm!35662 (= call!35667 (contains!4160 lt!367725 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!819323 () Bool)

(declare-fun e!455034 () Bool)

(declare-fun e!455033 () Bool)

(assert (=> b!819323 (= e!455034 e!455033)))

(declare-fun res!559205 () Bool)

(declare-fun call!35669 () Bool)

(assert (=> b!819323 (= res!559205 call!35669)))

(assert (=> b!819323 (=> (not res!559205) (not e!455033))))

(declare-fun b!819324 () Bool)

(declare-fun e!455035 () Bool)

(assert (=> b!819324 (= e!455035 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!819325 () Bool)

(assert (=> b!819325 (= e!455034 (not call!35669))))

(declare-fun b!819326 () Bool)

(declare-fun e!455041 () Bool)

(assert (=> b!819326 (= e!455041 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35663 () Bool)

(declare-fun call!35671 () ListLongMap!8495)

(assert (=> bm!35663 (= call!35671 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819327 () Bool)

(declare-fun e!455043 () ListLongMap!8495)

(declare-fun call!35666 () ListLongMap!8495)

(assert (=> b!819327 (= e!455043 (+!1806 call!35666 (tuple2!9659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!819328 () Bool)

(declare-fun e!455037 () ListLongMap!8495)

(declare-fun call!35668 () ListLongMap!8495)

(assert (=> b!819328 (= e!455037 call!35668)))

(declare-fun b!819329 () Bool)

(assert (=> b!819329 (= e!455033 (= (apply!354 lt!367725 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!819330 () Bool)

(declare-fun e!455032 () Unit!27975)

(declare-fun Unit!27978 () Unit!27975)

(assert (=> b!819330 (= e!455032 Unit!27978)))

(declare-fun b!819331 () Bool)

(declare-fun e!455042 () Bool)

(assert (=> b!819331 (= e!455042 (not call!35667))))

(declare-fun bm!35664 () Bool)

(assert (=> bm!35664 (= call!35669 (contains!4160 lt!367725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!89078 () Bool)

(declare-fun call!35665 () ListLongMap!8495)

(declare-fun bm!35665 () Bool)

(declare-fun c!89077 () Bool)

(assert (=> bm!35665 (= call!35666 (+!1806 (ite c!89077 call!35671 (ite c!89078 call!35665 call!35668)) (ite (or c!89077 c!89078) (tuple2!9659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!819332 () Bool)

(declare-fun e!455038 () Bool)

(assert (=> b!819332 (= e!455038 e!455042)))

(declare-fun c!89080 () Bool)

(assert (=> b!819332 (= c!89080 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!455044 () Bool)

(declare-fun b!819333 () Bool)

(assert (=> b!819333 (= e!455044 (= (apply!354 lt!367725 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)) (get!11590 (select (arr!21700 _values!788) #b00000000000000000000000000000000) (dynLambda!964 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!819333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22121 _values!788)))))

(assert (=> b!819333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819334 () Bool)

(declare-fun res!559211 () Bool)

(assert (=> b!819334 (=> (not res!559211) (not e!455038))))

(assert (=> b!819334 (= res!559211 e!455034)))

(declare-fun c!89075 () Bool)

(assert (=> b!819334 (= c!89075 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!104591 () Bool)

(assert (=> d!104591 e!455038))

(declare-fun res!559206 () Bool)

(assert (=> d!104591 (=> (not res!559206) (not e!455038))))

(assert (=> d!104591 (= res!559206 (or (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))))

(declare-fun lt!367708 () ListLongMap!8495)

(assert (=> d!104591 (= lt!367725 lt!367708)))

(declare-fun lt!367716 () Unit!27975)

(assert (=> d!104591 (= lt!367716 e!455032)))

(declare-fun c!89076 () Bool)

(assert (=> d!104591 (= c!89076 e!455041)))

(declare-fun res!559210 () Bool)

(assert (=> d!104591 (=> (not res!559210) (not e!455041))))

(assert (=> d!104591 (= res!559210 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104591 (= lt!367708 e!455043)))

(assert (=> d!104591 (= c!89077 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104591 (validMask!0 mask!1312)))

(assert (=> d!104591 (= (getCurrentListMap!2419 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!367725)))

(declare-fun bm!35666 () Bool)

(declare-fun call!35670 () ListLongMap!8495)

(assert (=> bm!35666 (= call!35670 call!35666)))

(declare-fun b!819335 () Bool)

(assert (=> b!819335 (= e!455037 call!35670)))

(declare-fun bm!35667 () Bool)

(assert (=> bm!35667 (= call!35665 call!35671)))

(declare-fun b!819336 () Bool)

(assert (=> b!819336 (= e!455042 e!455039)))

(declare-fun res!559203 () Bool)

(assert (=> b!819336 (= res!559203 call!35667)))

(assert (=> b!819336 (=> (not res!559203) (not e!455039))))

(declare-fun b!819337 () Bool)

(declare-fun lt!367705 () Unit!27975)

(assert (=> b!819337 (= e!455032 lt!367705)))

(declare-fun lt!367719 () ListLongMap!8495)

(assert (=> b!819337 (= lt!367719 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367723 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367724 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367724 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367711 () Unit!27975)

(assert (=> b!819337 (= lt!367711 (addStillContains!308 lt!367719 lt!367723 zeroValueAfter!34 lt!367724))))

(assert (=> b!819337 (contains!4160 (+!1806 lt!367719 (tuple2!9659 lt!367723 zeroValueAfter!34)) lt!367724)))

(declare-fun lt!367722 () Unit!27975)

(assert (=> b!819337 (= lt!367722 lt!367711)))

(declare-fun lt!367710 () ListLongMap!8495)

(assert (=> b!819337 (= lt!367710 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367714 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367714 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367706 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367706 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367712 () Unit!27975)

(assert (=> b!819337 (= lt!367712 (addApplyDifferent!308 lt!367710 lt!367714 minValue!754 lt!367706))))

(assert (=> b!819337 (= (apply!354 (+!1806 lt!367710 (tuple2!9659 lt!367714 minValue!754)) lt!367706) (apply!354 lt!367710 lt!367706))))

(declare-fun lt!367718 () Unit!27975)

(assert (=> b!819337 (= lt!367718 lt!367712)))

(declare-fun lt!367713 () ListLongMap!8495)

(assert (=> b!819337 (= lt!367713 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367715 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367715 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367709 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367709 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367720 () Unit!27975)

(assert (=> b!819337 (= lt!367720 (addApplyDifferent!308 lt!367713 lt!367715 zeroValueAfter!34 lt!367709))))

(assert (=> b!819337 (= (apply!354 (+!1806 lt!367713 (tuple2!9659 lt!367715 zeroValueAfter!34)) lt!367709) (apply!354 lt!367713 lt!367709))))

(declare-fun lt!367717 () Unit!27975)

(assert (=> b!819337 (= lt!367717 lt!367720)))

(declare-fun lt!367707 () ListLongMap!8495)

(assert (=> b!819337 (= lt!367707 (getCurrentListMapNoExtraKeys!2302 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!367726 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367726 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!367721 () (_ BitVec 64))

(assert (=> b!819337 (= lt!367721 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!819337 (= lt!367705 (addApplyDifferent!308 lt!367707 lt!367726 minValue!754 lt!367721))))

(assert (=> b!819337 (= (apply!354 (+!1806 lt!367707 (tuple2!9659 lt!367726 minValue!754)) lt!367721) (apply!354 lt!367707 lt!367721))))

(declare-fun b!819338 () Bool)

(declare-fun e!455040 () ListLongMap!8495)

(assert (=> b!819338 (= e!455043 e!455040)))

(assert (=> b!819338 (= c!89078 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!819339 () Bool)

(declare-fun res!559209 () Bool)

(assert (=> b!819339 (=> (not res!559209) (not e!455038))))

(declare-fun e!455036 () Bool)

(assert (=> b!819339 (= res!559209 e!455036)))

(declare-fun res!559208 () Bool)

(assert (=> b!819339 (=> res!559208 e!455036)))

(assert (=> b!819339 (= res!559208 (not e!455035))))

(declare-fun res!559204 () Bool)

(assert (=> b!819339 (=> (not res!559204) (not e!455035))))

(assert (=> b!819339 (= res!559204 (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun b!819340 () Bool)

(assert (=> b!819340 (= e!455036 e!455044)))

(declare-fun res!559207 () Bool)

(assert (=> b!819340 (=> (not res!559207) (not e!455044))))

(assert (=> b!819340 (= res!559207 (contains!4160 lt!367725 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!819340 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(declare-fun bm!35668 () Bool)

(assert (=> bm!35668 (= call!35668 call!35665)))

(declare-fun b!819341 () Bool)

(assert (=> b!819341 (= e!455040 call!35670)))

(declare-fun b!819342 () Bool)

(declare-fun c!89079 () Bool)

(assert (=> b!819342 (= c!89079 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819342 (= e!455040 e!455037)))

(assert (= (and d!104591 c!89077) b!819327))

(assert (= (and d!104591 (not c!89077)) b!819338))

(assert (= (and b!819338 c!89078) b!819341))

(assert (= (and b!819338 (not c!89078)) b!819342))

(assert (= (and b!819342 c!89079) b!819335))

(assert (= (and b!819342 (not c!89079)) b!819328))

(assert (= (or b!819335 b!819328) bm!35668))

(assert (= (or b!819341 bm!35668) bm!35667))

(assert (= (or b!819341 b!819335) bm!35666))

(assert (= (or b!819327 bm!35667) bm!35663))

(assert (= (or b!819327 bm!35666) bm!35665))

(assert (= (and d!104591 res!559210) b!819326))

(assert (= (and d!104591 c!89076) b!819337))

(assert (= (and d!104591 (not c!89076)) b!819330))

(assert (= (and d!104591 res!559206) b!819339))

(assert (= (and b!819339 res!559204) b!819324))

(assert (= (and b!819339 (not res!559208)) b!819340))

(assert (= (and b!819340 res!559207) b!819333))

(assert (= (and b!819339 res!559209) b!819334))

(assert (= (and b!819334 c!89075) b!819323))

(assert (= (and b!819334 (not c!89075)) b!819325))

(assert (= (and b!819323 res!559205) b!819329))

(assert (= (or b!819323 b!819325) bm!35664))

(assert (= (and b!819334 res!559211) b!819332))

(assert (= (and b!819332 c!89080) b!819336))

(assert (= (and b!819332 (not c!89080)) b!819331))

(assert (= (and b!819336 res!559203) b!819322))

(assert (= (or b!819336 b!819331) bm!35662))

(declare-fun b_lambda!10987 () Bool)

(assert (=> (not b_lambda!10987) (not b!819333)))

(assert (=> b!819333 t!21859))

(declare-fun b_and!21717 () Bool)

(assert (= b_and!21715 (and (=> t!21859 result!7915) b_and!21717)))

(assert (=> d!104591 m!760855))

(declare-fun m!761037 () Bool)

(assert (=> bm!35664 m!761037))

(declare-fun m!761039 () Bool)

(assert (=> b!819322 m!761039))

(assert (=> bm!35663 m!760835))

(assert (=> b!819326 m!760903))

(assert (=> b!819326 m!760903))

(assert (=> b!819326 m!760907))

(declare-fun m!761041 () Bool)

(assert (=> b!819329 m!761041))

(assert (=> b!819324 m!760903))

(assert (=> b!819324 m!760903))

(assert (=> b!819324 m!760907))

(assert (=> b!819340 m!760903))

(assert (=> b!819340 m!760903))

(declare-fun m!761043 () Bool)

(assert (=> b!819340 m!761043))

(declare-fun m!761045 () Bool)

(assert (=> b!819327 m!761045))

(declare-fun m!761047 () Bool)

(assert (=> b!819337 m!761047))

(declare-fun m!761049 () Bool)

(assert (=> b!819337 m!761049))

(declare-fun m!761051 () Bool)

(assert (=> b!819337 m!761051))

(declare-fun m!761053 () Bool)

(assert (=> b!819337 m!761053))

(declare-fun m!761055 () Bool)

(assert (=> b!819337 m!761055))

(declare-fun m!761057 () Bool)

(assert (=> b!819337 m!761057))

(assert (=> b!819337 m!760903))

(declare-fun m!761059 () Bool)

(assert (=> b!819337 m!761059))

(declare-fun m!761061 () Bool)

(assert (=> b!819337 m!761061))

(declare-fun m!761063 () Bool)

(assert (=> b!819337 m!761063))

(declare-fun m!761065 () Bool)

(assert (=> b!819337 m!761065))

(assert (=> b!819337 m!761051))

(assert (=> b!819337 m!761063))

(declare-fun m!761067 () Bool)

(assert (=> b!819337 m!761067))

(declare-fun m!761069 () Bool)

(assert (=> b!819337 m!761069))

(declare-fun m!761071 () Bool)

(assert (=> b!819337 m!761071))

(assert (=> b!819337 m!761047))

(declare-fun m!761073 () Bool)

(assert (=> b!819337 m!761073))

(assert (=> b!819337 m!761069))

(declare-fun m!761075 () Bool)

(assert (=> b!819337 m!761075))

(assert (=> b!819337 m!760835))

(assert (=> b!819333 m!760929))

(assert (=> b!819333 m!760931))

(assert (=> b!819333 m!760933))

(assert (=> b!819333 m!760929))

(assert (=> b!819333 m!760931))

(assert (=> b!819333 m!760903))

(assert (=> b!819333 m!760903))

(declare-fun m!761077 () Bool)

(assert (=> b!819333 m!761077))

(declare-fun m!761079 () Bool)

(assert (=> bm!35662 m!761079))

(declare-fun m!761081 () Bool)

(assert (=> bm!35665 m!761081))

(assert (=> b!819152 d!104591))

(declare-fun d!104593 () Bool)

(declare-fun e!455045 () Bool)

(assert (=> d!104593 e!455045))

(declare-fun res!559213 () Bool)

(assert (=> d!104593 (=> (not res!559213) (not e!455045))))

(declare-fun lt!367727 () ListLongMap!8495)

(assert (=> d!104593 (= res!559213 (contains!4160 lt!367727 (_1!4839 lt!367560)))))

(declare-fun lt!367730 () List!15518)

(assert (=> d!104593 (= lt!367727 (ListLongMap!8496 lt!367730))))

(declare-fun lt!367728 () Unit!27975)

(declare-fun lt!367729 () Unit!27975)

(assert (=> d!104593 (= lt!367728 lt!367729)))

(assert (=> d!104593 (= (getValueByKey!401 lt!367730 (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560)))))

(assert (=> d!104593 (= lt!367729 (lemmaContainsTupThenGetReturnValue!217 lt!367730 (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104593 (= lt!367730 (insertStrictlySorted!255 (toList!4263 lt!367559) (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104593 (= (+!1806 lt!367559 lt!367560) lt!367727)))

(declare-fun b!819343 () Bool)

(declare-fun res!559212 () Bool)

(assert (=> b!819343 (=> (not res!559212) (not e!455045))))

(assert (=> b!819343 (= res!559212 (= (getValueByKey!401 (toList!4263 lt!367727) (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560))))))

(declare-fun b!819344 () Bool)

(assert (=> b!819344 (= e!455045 (contains!4161 (toList!4263 lt!367727) lt!367560))))

(assert (= (and d!104593 res!559213) b!819343))

(assert (= (and b!819343 res!559212) b!819344))

(declare-fun m!761083 () Bool)

(assert (=> d!104593 m!761083))

(declare-fun m!761085 () Bool)

(assert (=> d!104593 m!761085))

(declare-fun m!761087 () Bool)

(assert (=> d!104593 m!761087))

(declare-fun m!761089 () Bool)

(assert (=> d!104593 m!761089))

(declare-fun m!761091 () Bool)

(assert (=> b!819343 m!761091))

(declare-fun m!761093 () Bool)

(assert (=> b!819344 m!761093))

(assert (=> b!819152 d!104593))

(declare-fun d!104595 () Bool)

(declare-fun e!455046 () Bool)

(assert (=> d!104595 e!455046))

(declare-fun res!559215 () Bool)

(assert (=> d!104595 (=> (not res!559215) (not e!455046))))

(declare-fun lt!367731 () ListLongMap!8495)

(assert (=> d!104595 (= res!559215 (contains!4160 lt!367731 (_1!4839 lt!367560)))))

(declare-fun lt!367734 () List!15518)

(assert (=> d!104595 (= lt!367731 (ListLongMap!8496 lt!367734))))

(declare-fun lt!367732 () Unit!27975)

(declare-fun lt!367733 () Unit!27975)

(assert (=> d!104595 (= lt!367732 lt!367733)))

(assert (=> d!104595 (= (getValueByKey!401 lt!367734 (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560)))))

(assert (=> d!104595 (= lt!367733 (lemmaContainsTupThenGetReturnValue!217 lt!367734 (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104595 (= lt!367734 (insertStrictlySorted!255 (toList!4263 (+!1806 lt!367558 lt!367557)) (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104595 (= (+!1806 (+!1806 lt!367558 lt!367557) lt!367560) lt!367731)))

(declare-fun b!819345 () Bool)

(declare-fun res!559214 () Bool)

(assert (=> b!819345 (=> (not res!559214) (not e!455046))))

(assert (=> b!819345 (= res!559214 (= (getValueByKey!401 (toList!4263 lt!367731) (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560))))))

(declare-fun b!819346 () Bool)

(assert (=> b!819346 (= e!455046 (contains!4161 (toList!4263 lt!367731) lt!367560))))

(assert (= (and d!104595 res!559215) b!819345))

(assert (= (and b!819345 res!559214) b!819346))

(declare-fun m!761095 () Bool)

(assert (=> d!104595 m!761095))

(declare-fun m!761097 () Bool)

(assert (=> d!104595 m!761097))

(declare-fun m!761099 () Bool)

(assert (=> d!104595 m!761099))

(declare-fun m!761101 () Bool)

(assert (=> d!104595 m!761101))

(declare-fun m!761103 () Bool)

(assert (=> b!819345 m!761103))

(declare-fun m!761105 () Bool)

(assert (=> b!819346 m!761105))

(assert (=> b!819152 d!104595))

(declare-fun d!104597 () Bool)

(declare-fun e!455047 () Bool)

(assert (=> d!104597 e!455047))

(declare-fun res!559217 () Bool)

(assert (=> d!104597 (=> (not res!559217) (not e!455047))))

(declare-fun lt!367735 () ListLongMap!8495)

(assert (=> d!104597 (= res!559217 (contains!4160 lt!367735 (_1!4839 lt!367557)))))

(declare-fun lt!367738 () List!15518)

(assert (=> d!104597 (= lt!367735 (ListLongMap!8496 lt!367738))))

(declare-fun lt!367736 () Unit!27975)

(declare-fun lt!367737 () Unit!27975)

(assert (=> d!104597 (= lt!367736 lt!367737)))

(assert (=> d!104597 (= (getValueByKey!401 lt!367738 (_1!4839 lt!367557)) (Some!406 (_2!4839 lt!367557)))))

(assert (=> d!104597 (= lt!367737 (lemmaContainsTupThenGetReturnValue!217 lt!367738 (_1!4839 lt!367557) (_2!4839 lt!367557)))))

(assert (=> d!104597 (= lt!367738 (insertStrictlySorted!255 (toList!4263 lt!367556) (_1!4839 lt!367557) (_2!4839 lt!367557)))))

(assert (=> d!104597 (= (+!1806 lt!367556 lt!367557) lt!367735)))

(declare-fun b!819347 () Bool)

(declare-fun res!559216 () Bool)

(assert (=> b!819347 (=> (not res!559216) (not e!455047))))

(assert (=> b!819347 (= res!559216 (= (getValueByKey!401 (toList!4263 lt!367735) (_1!4839 lt!367557)) (Some!406 (_2!4839 lt!367557))))))

(declare-fun b!819348 () Bool)

(assert (=> b!819348 (= e!455047 (contains!4161 (toList!4263 lt!367735) lt!367557))))

(assert (= (and d!104597 res!559217) b!819347))

(assert (= (and b!819347 res!559216) b!819348))

(declare-fun m!761107 () Bool)

(assert (=> d!104597 m!761107))

(declare-fun m!761109 () Bool)

(assert (=> d!104597 m!761109))

(declare-fun m!761111 () Bool)

(assert (=> d!104597 m!761111))

(declare-fun m!761113 () Bool)

(assert (=> d!104597 m!761113))

(declare-fun m!761115 () Bool)

(assert (=> b!819347 m!761115))

(declare-fun m!761117 () Bool)

(assert (=> b!819348 m!761117))

(assert (=> b!819152 d!104597))

(declare-fun d!104599 () Bool)

(declare-fun e!455048 () Bool)

(assert (=> d!104599 e!455048))

(declare-fun res!559219 () Bool)

(assert (=> d!104599 (=> (not res!559219) (not e!455048))))

(declare-fun lt!367739 () ListLongMap!8495)

(assert (=> d!104599 (= res!559219 (contains!4160 lt!367739 (_1!4839 lt!367560)))))

(declare-fun lt!367742 () List!15518)

(assert (=> d!104599 (= lt!367739 (ListLongMap!8496 lt!367742))))

(declare-fun lt!367740 () Unit!27975)

(declare-fun lt!367741 () Unit!27975)

(assert (=> d!104599 (= lt!367740 lt!367741)))

(assert (=> d!104599 (= (getValueByKey!401 lt!367742 (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560)))))

(assert (=> d!104599 (= lt!367741 (lemmaContainsTupThenGetReturnValue!217 lt!367742 (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104599 (= lt!367742 (insertStrictlySorted!255 (toList!4263 lt!367556) (_1!4839 lt!367560) (_2!4839 lt!367560)))))

(assert (=> d!104599 (= (+!1806 lt!367556 lt!367560) lt!367739)))

(declare-fun b!819349 () Bool)

(declare-fun res!559218 () Bool)

(assert (=> b!819349 (=> (not res!559218) (not e!455048))))

(assert (=> b!819349 (= res!559218 (= (getValueByKey!401 (toList!4263 lt!367739) (_1!4839 lt!367560)) (Some!406 (_2!4839 lt!367560))))))

(declare-fun b!819350 () Bool)

(assert (=> b!819350 (= e!455048 (contains!4161 (toList!4263 lt!367739) lt!367560))))

(assert (= (and d!104599 res!559219) b!819349))

(assert (= (and b!819349 res!559218) b!819350))

(declare-fun m!761119 () Bool)

(assert (=> d!104599 m!761119))

(declare-fun m!761121 () Bool)

(assert (=> d!104599 m!761121))

(declare-fun m!761123 () Bool)

(assert (=> d!104599 m!761123))

(declare-fun m!761125 () Bool)

(assert (=> d!104599 m!761125))

(declare-fun m!761127 () Bool)

(assert (=> b!819349 m!761127))

(declare-fun m!761129 () Bool)

(assert (=> b!819350 m!761129))

(assert (=> b!819152 d!104599))

(declare-fun d!104601 () Bool)

(assert (=> d!104601 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70552 d!104601))

(declare-fun d!104603 () Bool)

(assert (=> d!104603 (= (array_inv!17317 _keys!976) (bvsge (size!22120 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70552 d!104603))

(declare-fun d!104605 () Bool)

(assert (=> d!104605 (= (array_inv!17318 _values!788) (bvsge (size!22121 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70552 d!104605))

(declare-fun b!819359 () Bool)

(declare-fun e!455057 () Bool)

(declare-fun call!35674 () Bool)

(assert (=> b!819359 (= e!455057 call!35674)))

(declare-fun d!104607 () Bool)

(declare-fun res!559225 () Bool)

(declare-fun e!455056 () Bool)

(assert (=> d!104607 (=> res!559225 e!455056)))

(assert (=> d!104607 (= res!559225 (bvsge #b00000000000000000000000000000000 (size!22120 _keys!976)))))

(assert (=> d!104607 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!455056)))

(declare-fun b!819360 () Bool)

(declare-fun e!455055 () Bool)

(assert (=> b!819360 (= e!455055 e!455057)))

(declare-fun lt!367751 () (_ BitVec 64))

(assert (=> b!819360 (= lt!367751 (select (arr!21699 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!367749 () Unit!27975)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45298 (_ BitVec 64) (_ BitVec 32)) Unit!27975)

(assert (=> b!819360 (= lt!367749 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!367751 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!819360 (arrayContainsKey!0 _keys!976 lt!367751 #b00000000000000000000000000000000)))

(declare-fun lt!367750 () Unit!27975)

(assert (=> b!819360 (= lt!367750 lt!367749)))

(declare-fun res!559224 () Bool)

(declare-datatypes ((SeekEntryResult!8715 0))(
  ( (MissingZero!8715 (index!37230 (_ BitVec 32))) (Found!8715 (index!37231 (_ BitVec 32))) (Intermediate!8715 (undefined!9527 Bool) (index!37232 (_ BitVec 32)) (x!69019 (_ BitVec 32))) (Undefined!8715) (MissingVacant!8715 (index!37233 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45298 (_ BitVec 32)) SeekEntryResult!8715)

(assert (=> b!819360 (= res!559224 (= (seekEntryOrOpen!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8715 #b00000000000000000000000000000000)))))

(assert (=> b!819360 (=> (not res!559224) (not e!455057))))

(declare-fun b!819361 () Bool)

(assert (=> b!819361 (= e!455055 call!35674)))

(declare-fun b!819362 () Bool)

(assert (=> b!819362 (= e!455056 e!455055)))

(declare-fun c!89083 () Bool)

(assert (=> b!819362 (= c!89083 (validKeyInArray!0 (select (arr!21699 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35671 () Bool)

(assert (=> bm!35671 (= call!35674 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104607 (not res!559225)) b!819362))

(assert (= (and b!819362 c!89083) b!819360))

(assert (= (and b!819362 (not c!89083)) b!819361))

(assert (= (and b!819360 res!559224) b!819359))

(assert (= (or b!819359 b!819361) bm!35671))

(assert (=> b!819360 m!760903))

(declare-fun m!761131 () Bool)

(assert (=> b!819360 m!761131))

(declare-fun m!761133 () Bool)

(assert (=> b!819360 m!761133))

(assert (=> b!819360 m!760903))

(declare-fun m!761135 () Bool)

(assert (=> b!819360 m!761135))

(assert (=> b!819362 m!760903))

(assert (=> b!819362 m!760903))

(assert (=> b!819362 m!760907))

(declare-fun m!761137 () Bool)

(assert (=> bm!35671 m!761137))

(assert (=> b!819146 d!104607))

(declare-fun mapNonEmpty!23452 () Bool)

(declare-fun mapRes!23452 () Bool)

(declare-fun tp!45307 () Bool)

(declare-fun e!455063 () Bool)

(assert (=> mapNonEmpty!23452 (= mapRes!23452 (and tp!45307 e!455063))))

(declare-fun mapRest!23452 () (Array (_ BitVec 32) ValueCell!6867))

(declare-fun mapKey!23452 () (_ BitVec 32))

(declare-fun mapValue!23452 () ValueCell!6867)

(assert (=> mapNonEmpty!23452 (= mapRest!23446 (store mapRest!23452 mapKey!23452 mapValue!23452))))

(declare-fun condMapEmpty!23452 () Bool)

(declare-fun mapDefault!23452 () ValueCell!6867)

(assert (=> mapNonEmpty!23446 (= condMapEmpty!23452 (= mapRest!23446 ((as const (Array (_ BitVec 32) ValueCell!6867)) mapDefault!23452)))))

(declare-fun e!455062 () Bool)

(assert (=> mapNonEmpty!23446 (= tp!45297 (and e!455062 mapRes!23452))))

(declare-fun mapIsEmpty!23452 () Bool)

(assert (=> mapIsEmpty!23452 mapRes!23452))

(declare-fun b!819370 () Bool)

(assert (=> b!819370 (= e!455062 tp_is_empty!14565)))

(declare-fun b!819369 () Bool)

(assert (=> b!819369 (= e!455063 tp_is_empty!14565)))

(assert (= (and mapNonEmpty!23446 condMapEmpty!23452) mapIsEmpty!23452))

(assert (= (and mapNonEmpty!23446 (not condMapEmpty!23452)) mapNonEmpty!23452))

(assert (= (and mapNonEmpty!23452 ((_ is ValueCellFull!6867) mapValue!23452)) b!819369))

(assert (= (and mapNonEmpty!23446 ((_ is ValueCellFull!6867) mapDefault!23452)) b!819370))

(declare-fun m!761139 () Bool)

(assert (=> mapNonEmpty!23452 m!761139))

(declare-fun b_lambda!10989 () Bool)

(assert (= b_lambda!10977 (or (and start!70552 b_free!12855) b_lambda!10989)))

(declare-fun b_lambda!10991 () Bool)

(assert (= b_lambda!10979 (or (and start!70552 b_free!12855) b_lambda!10991)))

(declare-fun b_lambda!10993 () Bool)

(assert (= b_lambda!10985 (or (and start!70552 b_free!12855) b_lambda!10993)))

(declare-fun b_lambda!10995 () Bool)

(assert (= b_lambda!10981 (or (and start!70552 b_free!12855) b_lambda!10995)))

(declare-fun b_lambda!10997 () Bool)

(assert (= b_lambda!10987 (or (and start!70552 b_free!12855) b_lambda!10997)))

(declare-fun b_lambda!10999 () Bool)

(assert (= b_lambda!10983 (or (and start!70552 b_free!12855) b_lambda!10999)))

(check-sat (not b!819245) (not bm!35658) (not bm!35639) tp_is_empty!14565 (not d!104591) (not d!104589) (not b!819340) (not b!819233) (not b!819360) (not b!819200) (not b!819255) (not b!819197) (not bm!35640) (not b!819349) (not b!819329) (not b!819321) (not bm!35655) (not b!819337) (not b_lambda!10989) (not d!104577) (not b_lambda!10991) (not b!819199) (not b!819249) (not b!819205) (not bm!35656) (not d!104587) (not b!819256) (not b_lambda!10997) b_and!21717 (not b!819343) (not d!104599) (not b!819320) (not b!819333) (not bm!35657) (not bm!35671) (not b!819344) (not d!104583) (not b!819304) (not bm!35636) (not b!819350) (not b_lambda!10995) (not d!104579) (not d!104593) (not b!819206) (not b!819242) (not b!819231) (not b!819322) (not b!819238) (not b!819326) (not b!819347) (not d!104595) (not bm!35665) (not b!819345) (not b_lambda!10999) (not b!819362) (not b!819306) (not b!819301) (not b!819299) (not b!819254) (not bm!35664) (not b!819252) (not d!104585) (not bm!35662) (not b!819317) (not b!819327) (not b!819241) (not d!104597) (not b!819310) (not bm!35663) (not b!819346) (not b_next!12855) (not b!819247) (not b!819314) (not b!819303) (not b!819248) (not d!104581) (not b!819240) (not b!819348) (not mapNonEmpty!23452) (not b!819324) (not b!819234) (not b!819235) (not b_lambda!10993))
(check-sat b_and!21717 (not b_next!12855))
