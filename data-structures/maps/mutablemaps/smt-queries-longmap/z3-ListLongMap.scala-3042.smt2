; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42686 () Bool)

(assert start!42686)

(declare-fun b_free!12063 () Bool)

(declare-fun b_next!12063 () Bool)

(assert (=> start!42686 (= b_free!12063 (not b_next!12063))))

(declare-fun tp!42237 () Bool)

(declare-fun b_and!20593 () Bool)

(assert (=> start!42686 (= tp!42237 b_and!20593)))

(declare-fun b!475828 () Bool)

(declare-fun res!284165 () Bool)

(declare-fun e!279460 () Bool)

(assert (=> b!475828 (=> (not res!284165) (not e!279460))))

(declare-datatypes ((array!30693 0))(
  ( (array!30694 (arr!14758 (Array (_ BitVec 32) (_ BitVec 64))) (size!15110 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30693)

(declare-datatypes ((List!9063 0))(
  ( (Nil!9060) (Cons!9059 (h!9915 (_ BitVec 64)) (t!15051 List!9063)) )
))
(declare-fun arrayNoDuplicates!0 (array!30693 (_ BitVec 32) List!9063) Bool)

(assert (=> b!475828 (= res!284165 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9060))))

(declare-fun b!475830 () Bool)

(declare-fun e!279459 () Bool)

(declare-fun tp_is_empty!13491 () Bool)

(assert (=> b!475830 (= e!279459 tp_is_empty!13491)))

(declare-fun mapIsEmpty!21964 () Bool)

(declare-fun mapRes!21964 () Bool)

(assert (=> mapIsEmpty!21964 mapRes!21964))

(declare-fun b!475831 () Bool)

(declare-fun res!284168 () Bool)

(assert (=> b!475831 (=> (not res!284168) (not e!279460))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30693 (_ BitVec 32)) Bool)

(assert (=> b!475831 (= res!284168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475832 () Bool)

(declare-fun e!279462 () Bool)

(declare-fun e!279458 () Bool)

(assert (=> b!475832 (= e!279462 (and e!279458 mapRes!21964))))

(declare-fun condMapEmpty!21964 () Bool)

(declare-datatypes ((V!19093 0))(
  ( (V!19094 (val!6790 Int)) )
))
(declare-datatypes ((ValueCell!6402 0))(
  ( (ValueCellFull!6402 (v!9081 V!19093)) (EmptyCell!6402) )
))
(declare-datatypes ((array!30695 0))(
  ( (array!30696 (arr!14759 (Array (_ BitVec 32) ValueCell!6402)) (size!15111 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30695)

(declare-fun mapDefault!21964 () ValueCell!6402)

(assert (=> b!475832 (= condMapEmpty!21964 (= (arr!14759 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6402)) mapDefault!21964)))))

(declare-fun b!475833 () Bool)

(declare-fun e!279461 () Bool)

(assert (=> b!475833 (= e!279460 (not e!279461))))

(declare-fun res!284166 () Bool)

(assert (=> b!475833 (=> res!284166 e!279461)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475833 (= res!284166 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8954 0))(
  ( (tuple2!8955 (_1!4487 (_ BitVec 64)) (_2!4487 V!19093)) )
))
(declare-datatypes ((List!9064 0))(
  ( (Nil!9061) (Cons!9060 (h!9916 tuple2!8954) (t!15052 List!9064)) )
))
(declare-datatypes ((ListLongMap!7881 0))(
  ( (ListLongMap!7882 (toList!3956 List!9064)) )
))
(declare-fun lt!216880 () ListLongMap!7881)

(declare-fun lt!216881 () ListLongMap!7881)

(assert (=> b!475833 (= lt!216880 lt!216881)))

(declare-fun minValueBefore!38 () V!19093)

(declare-fun zeroValue!794 () V!19093)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13993 0))(
  ( (Unit!13994) )
))
(declare-fun lt!216879 () Unit!13993)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!19093)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!280 (array!30693 array!30695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19093 V!19093 V!19093 V!19093 (_ BitVec 32) Int) Unit!13993)

(assert (=> b!475833 (= lt!216879 (lemmaNoChangeToArrayThenSameMapNoExtras!280 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2109 (array!30693 array!30695 (_ BitVec 32) (_ BitVec 32) V!19093 V!19093 (_ BitVec 32) Int) ListLongMap!7881)

(assert (=> b!475833 (= lt!216881 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475833 (= lt!216880 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21964 () Bool)

(declare-fun tp!42238 () Bool)

(assert (=> mapNonEmpty!21964 (= mapRes!21964 (and tp!42238 e!279459))))

(declare-fun mapKey!21964 () (_ BitVec 32))

(declare-fun mapRest!21964 () (Array (_ BitVec 32) ValueCell!6402))

(declare-fun mapValue!21964 () ValueCell!6402)

(assert (=> mapNonEmpty!21964 (= (arr!14759 _values!833) (store mapRest!21964 mapKey!21964 mapValue!21964))))

(declare-fun b!475829 () Bool)

(declare-fun res!284169 () Bool)

(assert (=> b!475829 (=> (not res!284169) (not e!279460))))

(assert (=> b!475829 (= res!284169 (and (= (size!15111 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15110 _keys!1025) (size!15111 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!284167 () Bool)

(assert (=> start!42686 (=> (not res!284167) (not e!279460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42686 (= res!284167 (validMask!0 mask!1365))))

(assert (=> start!42686 e!279460))

(assert (=> start!42686 tp_is_empty!13491))

(assert (=> start!42686 tp!42237))

(assert (=> start!42686 true))

(declare-fun array_inv!10636 (array!30693) Bool)

(assert (=> start!42686 (array_inv!10636 _keys!1025)))

(declare-fun array_inv!10637 (array!30695) Bool)

(assert (=> start!42686 (and (array_inv!10637 _values!833) e!279462)))

(declare-fun b!475834 () Bool)

(assert (=> b!475834 (= e!279458 tp_is_empty!13491)))

(declare-fun b!475835 () Bool)

(declare-fun +!1734 (ListLongMap!7881 tuple2!8954) ListLongMap!7881)

(declare-fun getCurrentListMap!2270 (array!30693 array!30695 (_ BitVec 32) (_ BitVec 32) V!19093 V!19093 (_ BitVec 32) Int) ListLongMap!7881)

(assert (=> b!475835 (= e!279461 (= (+!1734 (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(assert (= (and start!42686 res!284167) b!475829))

(assert (= (and b!475829 res!284169) b!475831))

(assert (= (and b!475831 res!284168) b!475828))

(assert (= (and b!475828 res!284165) b!475833))

(assert (= (and b!475833 (not res!284166)) b!475835))

(assert (= (and b!475832 condMapEmpty!21964) mapIsEmpty!21964))

(assert (= (and b!475832 (not condMapEmpty!21964)) mapNonEmpty!21964))

(get-info :version)

(assert (= (and mapNonEmpty!21964 ((_ is ValueCellFull!6402) mapValue!21964)) b!475830))

(assert (= (and b!475832 ((_ is ValueCellFull!6402) mapDefault!21964)) b!475834))

(assert (= start!42686 b!475832))

(declare-fun m!458093 () Bool)

(assert (=> mapNonEmpty!21964 m!458093))

(declare-fun m!458095 () Bool)

(assert (=> b!475833 m!458095))

(declare-fun m!458097 () Bool)

(assert (=> b!475833 m!458097))

(declare-fun m!458099 () Bool)

(assert (=> b!475833 m!458099))

(declare-fun m!458101 () Bool)

(assert (=> b!475828 m!458101))

(declare-fun m!458103 () Bool)

(assert (=> b!475835 m!458103))

(assert (=> b!475835 m!458103))

(declare-fun m!458105 () Bool)

(assert (=> b!475835 m!458105))

(declare-fun m!458107 () Bool)

(assert (=> b!475835 m!458107))

(declare-fun m!458109 () Bool)

(assert (=> start!42686 m!458109))

(declare-fun m!458111 () Bool)

(assert (=> start!42686 m!458111))

(declare-fun m!458113 () Bool)

(assert (=> start!42686 m!458113))

(declare-fun m!458115 () Bool)

(assert (=> b!475831 m!458115))

(check-sat (not b_next!12063) (not b!475831) (not b!475833) b_and!20593 (not b!475828) tp_is_empty!13491 (not b!475835) (not mapNonEmpty!21964) (not start!42686))
(check-sat b_and!20593 (not b_next!12063))
(get-model)

(declare-fun d!75551 () Bool)

(declare-fun e!279483 () Bool)

(assert (=> d!75551 e!279483))

(declare-fun res!284189 () Bool)

(assert (=> d!75551 (=> (not res!284189) (not e!279483))))

(declare-fun lt!216902 () ListLongMap!7881)

(declare-fun contains!2565 (ListLongMap!7881 (_ BitVec 64)) Bool)

(assert (=> d!75551 (= res!284189 (contains!2565 lt!216902 (_1!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lt!216901 () List!9064)

(assert (=> d!75551 (= lt!216902 (ListLongMap!7882 lt!216901))))

(declare-fun lt!216900 () Unit!13993)

(declare-fun lt!216899 () Unit!13993)

(assert (=> d!75551 (= lt!216900 lt!216899)))

(declare-datatypes ((Option!389 0))(
  ( (Some!388 (v!9083 V!19093)) (None!387) )
))
(declare-fun getValueByKey!383 (List!9064 (_ BitVec 64)) Option!389)

(assert (=> d!75551 (= (getValueByKey!383 lt!216901 (_1!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!388 (_2!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lemmaContainsTupThenGetReturnValue!207 (List!9064 (_ BitVec 64) V!19093) Unit!13993)

(assert (=> d!75551 (= lt!216899 (lemmaContainsTupThenGetReturnValue!207 lt!216901 (_1!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun insertStrictlySorted!209 (List!9064 (_ BitVec 64) V!19093) List!9064)

(assert (=> d!75551 (= lt!216901 (insertStrictlySorted!209 (toList!3956 (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841)) (_1!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(assert (=> d!75551 (= (+!1734 (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) lt!216902)))

(declare-fun b!475864 () Bool)

(declare-fun res!284190 () Bool)

(assert (=> b!475864 (=> (not res!284190) (not e!279483))))

(assert (=> b!475864 (= res!284190 (= (getValueByKey!383 (toList!3956 lt!216902) (_1!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!388 (_2!4487 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))))

(declare-fun b!475865 () Bool)

(declare-fun contains!2566 (List!9064 tuple2!8954) Bool)

(assert (=> b!475865 (= e!279483 (contains!2566 (toList!3956 lt!216902) (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(assert (= (and d!75551 res!284189) b!475864))

(assert (= (and b!475864 res!284190) b!475865))

(declare-fun m!458141 () Bool)

(assert (=> d!75551 m!458141))

(declare-fun m!458143 () Bool)

(assert (=> d!75551 m!458143))

(declare-fun m!458145 () Bool)

(assert (=> d!75551 m!458145))

(declare-fun m!458147 () Bool)

(assert (=> d!75551 m!458147))

(declare-fun m!458149 () Bool)

(assert (=> b!475864 m!458149))

(declare-fun m!458151 () Bool)

(assert (=> b!475865 m!458151))

(assert (=> b!475835 d!75551))

(declare-fun d!75553 () Bool)

(declare-fun e!279519 () Bool)

(assert (=> d!75553 e!279519))

(declare-fun res!284215 () Bool)

(assert (=> d!75553 (=> (not res!284215) (not e!279519))))

(assert (=> d!75553 (= res!284215 (or (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))))

(declare-fun lt!216964 () ListLongMap!7881)

(declare-fun lt!216965 () ListLongMap!7881)

(assert (=> d!75553 (= lt!216964 lt!216965)))

(declare-fun lt!216954 () Unit!13993)

(declare-fun e!279522 () Unit!13993)

(assert (=> d!75553 (= lt!216954 e!279522)))

(declare-fun c!57196 () Bool)

(declare-fun e!279510 () Bool)

(assert (=> d!75553 (= c!57196 e!279510)))

(declare-fun res!284213 () Bool)

(assert (=> d!75553 (=> (not res!284213) (not e!279510))))

(assert (=> d!75553 (= res!284213 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun e!279518 () ListLongMap!7881)

(assert (=> d!75553 (= lt!216965 e!279518)))

(declare-fun c!57197 () Bool)

(assert (=> d!75553 (= c!57197 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75553 (validMask!0 mask!1365)))

(assert (=> d!75553 (= (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216964)))

(declare-fun b!475908 () Bool)

(declare-fun e!279514 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!475908 (= e!279514 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30663 () Bool)

(declare-fun call!30667 () Bool)

(assert (=> bm!30663 (= call!30667 (contains!2565 lt!216964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30664 () Bool)

(declare-fun call!30671 () Bool)

(assert (=> bm!30664 (= call!30671 (contains!2565 lt!216964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475909 () Bool)

(declare-fun e!279516 () Bool)

(declare-fun apply!337 (ListLongMap!7881 (_ BitVec 64)) V!19093)

(assert (=> b!475909 (= e!279516 (= (apply!337 lt!216964 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475910 () Bool)

(declare-fun res!284212 () Bool)

(assert (=> b!475910 (=> (not res!284212) (not e!279519))))

(declare-fun e!279515 () Bool)

(assert (=> b!475910 (= res!284212 e!279515)))

(declare-fun c!57193 () Bool)

(assert (=> b!475910 (= c!57193 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!475911 () Bool)

(declare-fun lt!216950 () Unit!13993)

(assert (=> b!475911 (= e!279522 lt!216950)))

(declare-fun lt!216960 () ListLongMap!7881)

(assert (=> b!475911 (= lt!216960 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216967 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216967 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216959 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216959 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216951 () Unit!13993)

(declare-fun addStillContains!295 (ListLongMap!7881 (_ BitVec 64) V!19093 (_ BitVec 64)) Unit!13993)

(assert (=> b!475911 (= lt!216951 (addStillContains!295 lt!216960 lt!216967 zeroValue!794 lt!216959))))

(assert (=> b!475911 (contains!2565 (+!1734 lt!216960 (tuple2!8955 lt!216967 zeroValue!794)) lt!216959)))

(declare-fun lt!216947 () Unit!13993)

(assert (=> b!475911 (= lt!216947 lt!216951)))

(declare-fun lt!216958 () ListLongMap!7881)

(assert (=> b!475911 (= lt!216958 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216966 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216966 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216953 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216953 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216957 () Unit!13993)

(declare-fun addApplyDifferent!295 (ListLongMap!7881 (_ BitVec 64) V!19093 (_ BitVec 64)) Unit!13993)

(assert (=> b!475911 (= lt!216957 (addApplyDifferent!295 lt!216958 lt!216966 minValueBefore!38 lt!216953))))

(assert (=> b!475911 (= (apply!337 (+!1734 lt!216958 (tuple2!8955 lt!216966 minValueBefore!38)) lt!216953) (apply!337 lt!216958 lt!216953))))

(declare-fun lt!216955 () Unit!13993)

(assert (=> b!475911 (= lt!216955 lt!216957)))

(declare-fun lt!216962 () ListLongMap!7881)

(assert (=> b!475911 (= lt!216962 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216948 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216948 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216963 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216963 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216961 () Unit!13993)

(assert (=> b!475911 (= lt!216961 (addApplyDifferent!295 lt!216962 lt!216948 zeroValue!794 lt!216963))))

(assert (=> b!475911 (= (apply!337 (+!1734 lt!216962 (tuple2!8955 lt!216948 zeroValue!794)) lt!216963) (apply!337 lt!216962 lt!216963))))

(declare-fun lt!216952 () Unit!13993)

(assert (=> b!475911 (= lt!216952 lt!216961)))

(declare-fun lt!216949 () ListLongMap!7881)

(assert (=> b!475911 (= lt!216949 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216968 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216968 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216956 () (_ BitVec 64))

(assert (=> b!475911 (= lt!216956 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475911 (= lt!216950 (addApplyDifferent!295 lt!216949 lt!216968 minValueBefore!38 lt!216956))))

(assert (=> b!475911 (= (apply!337 (+!1734 lt!216949 (tuple2!8955 lt!216968 minValueBefore!38)) lt!216956) (apply!337 lt!216949 lt!216956))))

(declare-fun b!475912 () Bool)

(declare-fun e!279517 () Bool)

(assert (=> b!475912 (= e!279517 (= (apply!337 lt!216964 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!475913 () Bool)

(declare-fun e!279521 () ListLongMap!7881)

(declare-fun call!30669 () ListLongMap!7881)

(assert (=> b!475913 (= e!279521 call!30669)))

(declare-fun bm!30665 () Bool)

(declare-fun call!30672 () ListLongMap!7881)

(declare-fun call!30668 () ListLongMap!7881)

(assert (=> bm!30665 (= call!30672 call!30668)))

(declare-fun b!475914 () Bool)

(declare-fun e!279511 () Bool)

(declare-fun get!7175 (ValueCell!6402 V!19093) V!19093)

(declare-fun dynLambda!929 (Int (_ BitVec 64)) V!19093)

(assert (=> b!475914 (= e!279511 (= (apply!337 lt!216964 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475914 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15111 _values!833)))))

(assert (=> b!475914 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun call!30670 () ListLongMap!7881)

(declare-fun bm!30666 () Bool)

(assert (=> bm!30666 (= call!30670 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475915 () Bool)

(assert (=> b!475915 (= e!279518 (+!1734 call!30668 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!475916 () Bool)

(declare-fun res!284216 () Bool)

(assert (=> b!475916 (=> (not res!284216) (not e!279519))))

(declare-fun e!279520 () Bool)

(assert (=> b!475916 (= res!284216 e!279520)))

(declare-fun res!284214 () Bool)

(assert (=> b!475916 (=> res!284214 e!279520)))

(assert (=> b!475916 (= res!284214 (not e!279514))))

(declare-fun res!284217 () Bool)

(assert (=> b!475916 (=> (not res!284217) (not e!279514))))

(assert (=> b!475916 (= res!284217 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475917 () Bool)

(assert (=> b!475917 (= e!279521 call!30672)))

(declare-fun b!475918 () Bool)

(declare-fun e!279512 () ListLongMap!7881)

(assert (=> b!475918 (= e!279512 call!30672)))

(declare-fun b!475919 () Bool)

(declare-fun c!57192 () Bool)

(assert (=> b!475919 (= c!57192 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475919 (= e!279512 e!279521)))

(declare-fun b!475920 () Bool)

(declare-fun e!279513 () Bool)

(assert (=> b!475920 (= e!279513 (not call!30667))))

(declare-fun b!475921 () Bool)

(assert (=> b!475921 (= e!279515 (not call!30671))))

(declare-fun call!30666 () ListLongMap!7881)

(declare-fun c!57195 () Bool)

(declare-fun bm!30667 () Bool)

(assert (=> bm!30667 (= call!30668 (+!1734 (ite c!57197 call!30670 (ite c!57195 call!30666 call!30669)) (ite (or c!57197 c!57195) (tuple2!8955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!475922 () Bool)

(assert (=> b!475922 (= e!279520 e!279511)))

(declare-fun res!284209 () Bool)

(assert (=> b!475922 (=> (not res!284209) (not e!279511))))

(assert (=> b!475922 (= res!284209 (contains!2565 lt!216964 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475922 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475923 () Bool)

(assert (=> b!475923 (= e!279513 e!279517)))

(declare-fun res!284211 () Bool)

(assert (=> b!475923 (= res!284211 call!30667)))

(assert (=> b!475923 (=> (not res!284211) (not e!279517))))

(declare-fun b!475924 () Bool)

(declare-fun Unit!13997 () Unit!13993)

(assert (=> b!475924 (= e!279522 Unit!13997)))

(declare-fun bm!30668 () Bool)

(assert (=> bm!30668 (= call!30669 call!30666)))

(declare-fun b!475925 () Bool)

(assert (=> b!475925 (= e!279518 e!279512)))

(assert (=> b!475925 (= c!57195 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475926 () Bool)

(assert (=> b!475926 (= e!279515 e!279516)))

(declare-fun res!284210 () Bool)

(assert (=> b!475926 (= res!284210 call!30671)))

(assert (=> b!475926 (=> (not res!284210) (not e!279516))))

(declare-fun b!475927 () Bool)

(assert (=> b!475927 (= e!279510 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475928 () Bool)

(assert (=> b!475928 (= e!279519 e!279513)))

(declare-fun c!57194 () Bool)

(assert (=> b!475928 (= c!57194 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30669 () Bool)

(assert (=> bm!30669 (= call!30666 call!30670)))

(assert (= (and d!75553 c!57197) b!475915))

(assert (= (and d!75553 (not c!57197)) b!475925))

(assert (= (and b!475925 c!57195) b!475918))

(assert (= (and b!475925 (not c!57195)) b!475919))

(assert (= (and b!475919 c!57192) b!475917))

(assert (= (and b!475919 (not c!57192)) b!475913))

(assert (= (or b!475917 b!475913) bm!30668))

(assert (= (or b!475918 bm!30668) bm!30669))

(assert (= (or b!475918 b!475917) bm!30665))

(assert (= (or b!475915 bm!30669) bm!30666))

(assert (= (or b!475915 bm!30665) bm!30667))

(assert (= (and d!75553 res!284213) b!475927))

(assert (= (and d!75553 c!57196) b!475911))

(assert (= (and d!75553 (not c!57196)) b!475924))

(assert (= (and d!75553 res!284215) b!475916))

(assert (= (and b!475916 res!284217) b!475908))

(assert (= (and b!475916 (not res!284214)) b!475922))

(assert (= (and b!475922 res!284209) b!475914))

(assert (= (and b!475916 res!284216) b!475910))

(assert (= (and b!475910 c!57193) b!475926))

(assert (= (and b!475910 (not c!57193)) b!475921))

(assert (= (and b!475926 res!284210) b!475909))

(assert (= (or b!475926 b!475921) bm!30664))

(assert (= (and b!475910 res!284212) b!475928))

(assert (= (and b!475928 c!57194) b!475923))

(assert (= (and b!475928 (not c!57194)) b!475920))

(assert (= (and b!475923 res!284211) b!475912))

(assert (= (or b!475923 b!475920) bm!30663))

(declare-fun b_lambda!10347 () Bool)

(assert (=> (not b_lambda!10347) (not b!475914)))

(declare-fun t!15055 () Bool)

(declare-fun tb!3947 () Bool)

(assert (=> (and start!42686 (= defaultEntry!841 defaultEntry!841) t!15055) tb!3947))

(declare-fun result!7483 () Bool)

(assert (=> tb!3947 (= result!7483 tp_is_empty!13491)))

(assert (=> b!475914 t!15055))

(declare-fun b_and!20597 () Bool)

(assert (= b_and!20593 (and (=> t!15055 result!7483) b_and!20597)))

(assert (=> bm!30666 m!458099))

(declare-fun m!458153 () Bool)

(assert (=> b!475927 m!458153))

(assert (=> b!475927 m!458153))

(declare-fun m!458155 () Bool)

(assert (=> b!475927 m!458155))

(assert (=> b!475922 m!458153))

(assert (=> b!475922 m!458153))

(declare-fun m!458157 () Bool)

(assert (=> b!475922 m!458157))

(assert (=> b!475908 m!458153))

(assert (=> b!475908 m!458153))

(assert (=> b!475908 m!458155))

(assert (=> d!75553 m!458109))

(declare-fun m!458159 () Bool)

(assert (=> b!475915 m!458159))

(declare-fun m!458161 () Bool)

(assert (=> bm!30663 m!458161))

(declare-fun m!458163 () Bool)

(assert (=> bm!30664 m!458163))

(declare-fun m!458165 () Bool)

(assert (=> b!475912 m!458165))

(declare-fun m!458167 () Bool)

(assert (=> b!475911 m!458167))

(declare-fun m!458169 () Bool)

(assert (=> b!475911 m!458169))

(declare-fun m!458171 () Bool)

(assert (=> b!475911 m!458171))

(declare-fun m!458173 () Bool)

(assert (=> b!475911 m!458173))

(declare-fun m!458175 () Bool)

(assert (=> b!475911 m!458175))

(declare-fun m!458177 () Bool)

(assert (=> b!475911 m!458177))

(declare-fun m!458179 () Bool)

(assert (=> b!475911 m!458179))

(declare-fun m!458181 () Bool)

(assert (=> b!475911 m!458181))

(declare-fun m!458183 () Bool)

(assert (=> b!475911 m!458183))

(declare-fun m!458185 () Bool)

(assert (=> b!475911 m!458185))

(assert (=> b!475911 m!458099))

(assert (=> b!475911 m!458169))

(declare-fun m!458187 () Bool)

(assert (=> b!475911 m!458187))

(assert (=> b!475911 m!458173))

(declare-fun m!458189 () Bool)

(assert (=> b!475911 m!458189))

(declare-fun m!458191 () Bool)

(assert (=> b!475911 m!458191))

(declare-fun m!458193 () Bool)

(assert (=> b!475911 m!458193))

(declare-fun m!458195 () Bool)

(assert (=> b!475911 m!458195))

(assert (=> b!475911 m!458181))

(assert (=> b!475911 m!458193))

(assert (=> b!475911 m!458153))

(declare-fun m!458197 () Bool)

(assert (=> bm!30667 m!458197))

(declare-fun m!458199 () Bool)

(assert (=> b!475909 m!458199))

(declare-fun m!458201 () Bool)

(assert (=> b!475914 m!458201))

(assert (=> b!475914 m!458201))

(declare-fun m!458203 () Bool)

(assert (=> b!475914 m!458203))

(declare-fun m!458205 () Bool)

(assert (=> b!475914 m!458205))

(assert (=> b!475914 m!458203))

(assert (=> b!475914 m!458153))

(declare-fun m!458207 () Bool)

(assert (=> b!475914 m!458207))

(assert (=> b!475914 m!458153))

(assert (=> b!475835 d!75553))

(declare-fun d!75555 () Bool)

(declare-fun e!279532 () Bool)

(assert (=> d!75555 e!279532))

(declare-fun res!284224 () Bool)

(assert (=> d!75555 (=> (not res!284224) (not e!279532))))

(assert (=> d!75555 (= res!284224 (or (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))))

(declare-fun lt!216986 () ListLongMap!7881)

(declare-fun lt!216987 () ListLongMap!7881)

(assert (=> d!75555 (= lt!216986 lt!216987)))

(declare-fun lt!216976 () Unit!13993)

(declare-fun e!279535 () Unit!13993)

(assert (=> d!75555 (= lt!216976 e!279535)))

(declare-fun c!57202 () Bool)

(declare-fun e!279523 () Bool)

(assert (=> d!75555 (= c!57202 e!279523)))

(declare-fun res!284222 () Bool)

(assert (=> d!75555 (=> (not res!284222) (not e!279523))))

(assert (=> d!75555 (= res!284222 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun e!279531 () ListLongMap!7881)

(assert (=> d!75555 (= lt!216987 e!279531)))

(declare-fun c!57203 () Bool)

(assert (=> d!75555 (= c!57203 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75555 (validMask!0 mask!1365)))

(assert (=> d!75555 (= (getCurrentListMap!2270 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216986)))

(declare-fun b!475931 () Bool)

(declare-fun e!279527 () Bool)

(assert (=> b!475931 (= e!279527 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30670 () Bool)

(declare-fun call!30674 () Bool)

(assert (=> bm!30670 (= call!30674 (contains!2565 lt!216986 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30671 () Bool)

(declare-fun call!30678 () Bool)

(assert (=> bm!30671 (= call!30678 (contains!2565 lt!216986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475932 () Bool)

(declare-fun e!279529 () Bool)

(assert (=> b!475932 (= e!279529 (= (apply!337 lt!216986 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475933 () Bool)

(declare-fun res!284221 () Bool)

(assert (=> b!475933 (=> (not res!284221) (not e!279532))))

(declare-fun e!279528 () Bool)

(assert (=> b!475933 (= res!284221 e!279528)))

(declare-fun c!57199 () Bool)

(assert (=> b!475933 (= c!57199 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!475934 () Bool)

(declare-fun lt!216972 () Unit!13993)

(assert (=> b!475934 (= e!279535 lt!216972)))

(declare-fun lt!216982 () ListLongMap!7881)

(assert (=> b!475934 (= lt!216982 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216989 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216989 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216981 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216981 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216973 () Unit!13993)

(assert (=> b!475934 (= lt!216973 (addStillContains!295 lt!216982 lt!216989 zeroValue!794 lt!216981))))

(assert (=> b!475934 (contains!2565 (+!1734 lt!216982 (tuple2!8955 lt!216989 zeroValue!794)) lt!216981)))

(declare-fun lt!216969 () Unit!13993)

(assert (=> b!475934 (= lt!216969 lt!216973)))

(declare-fun lt!216980 () ListLongMap!7881)

(assert (=> b!475934 (= lt!216980 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216988 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216988 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216975 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216975 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216979 () Unit!13993)

(assert (=> b!475934 (= lt!216979 (addApplyDifferent!295 lt!216980 lt!216988 minValueAfter!38 lt!216975))))

(assert (=> b!475934 (= (apply!337 (+!1734 lt!216980 (tuple2!8955 lt!216988 minValueAfter!38)) lt!216975) (apply!337 lt!216980 lt!216975))))

(declare-fun lt!216977 () Unit!13993)

(assert (=> b!475934 (= lt!216977 lt!216979)))

(declare-fun lt!216984 () ListLongMap!7881)

(assert (=> b!475934 (= lt!216984 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216970 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216970 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216985 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216985 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216983 () Unit!13993)

(assert (=> b!475934 (= lt!216983 (addApplyDifferent!295 lt!216984 lt!216970 zeroValue!794 lt!216985))))

(assert (=> b!475934 (= (apply!337 (+!1734 lt!216984 (tuple2!8955 lt!216970 zeroValue!794)) lt!216985) (apply!337 lt!216984 lt!216985))))

(declare-fun lt!216974 () Unit!13993)

(assert (=> b!475934 (= lt!216974 lt!216983)))

(declare-fun lt!216971 () ListLongMap!7881)

(assert (=> b!475934 (= lt!216971 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216990 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216990 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216978 () (_ BitVec 64))

(assert (=> b!475934 (= lt!216978 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475934 (= lt!216972 (addApplyDifferent!295 lt!216971 lt!216990 minValueAfter!38 lt!216978))))

(assert (=> b!475934 (= (apply!337 (+!1734 lt!216971 (tuple2!8955 lt!216990 minValueAfter!38)) lt!216978) (apply!337 lt!216971 lt!216978))))

(declare-fun b!475935 () Bool)

(declare-fun e!279530 () Bool)

(assert (=> b!475935 (= e!279530 (= (apply!337 lt!216986 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!475936 () Bool)

(declare-fun e!279534 () ListLongMap!7881)

(declare-fun call!30676 () ListLongMap!7881)

(assert (=> b!475936 (= e!279534 call!30676)))

(declare-fun bm!30672 () Bool)

(declare-fun call!30679 () ListLongMap!7881)

(declare-fun call!30675 () ListLongMap!7881)

(assert (=> bm!30672 (= call!30679 call!30675)))

(declare-fun e!279524 () Bool)

(declare-fun b!475937 () Bool)

(assert (=> b!475937 (= e!279524 (= (apply!337 lt!216986 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475937 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15111 _values!833)))))

(assert (=> b!475937 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun bm!30673 () Bool)

(declare-fun call!30677 () ListLongMap!7881)

(assert (=> bm!30673 (= call!30677 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475938 () Bool)

(assert (=> b!475938 (= e!279531 (+!1734 call!30675 (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!475939 () Bool)

(declare-fun res!284225 () Bool)

(assert (=> b!475939 (=> (not res!284225) (not e!279532))))

(declare-fun e!279533 () Bool)

(assert (=> b!475939 (= res!284225 e!279533)))

(declare-fun res!284223 () Bool)

(assert (=> b!475939 (=> res!284223 e!279533)))

(assert (=> b!475939 (= res!284223 (not e!279527))))

(declare-fun res!284226 () Bool)

(assert (=> b!475939 (=> (not res!284226) (not e!279527))))

(assert (=> b!475939 (= res!284226 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475940 () Bool)

(assert (=> b!475940 (= e!279534 call!30679)))

(declare-fun b!475941 () Bool)

(declare-fun e!279525 () ListLongMap!7881)

(assert (=> b!475941 (= e!279525 call!30679)))

(declare-fun b!475942 () Bool)

(declare-fun c!57198 () Bool)

(assert (=> b!475942 (= c!57198 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475942 (= e!279525 e!279534)))

(declare-fun b!475943 () Bool)

(declare-fun e!279526 () Bool)

(assert (=> b!475943 (= e!279526 (not call!30674))))

(declare-fun b!475944 () Bool)

(assert (=> b!475944 (= e!279528 (not call!30678))))

(declare-fun call!30673 () ListLongMap!7881)

(declare-fun c!57201 () Bool)

(declare-fun bm!30674 () Bool)

(assert (=> bm!30674 (= call!30675 (+!1734 (ite c!57203 call!30677 (ite c!57201 call!30673 call!30676)) (ite (or c!57203 c!57201) (tuple2!8955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!475945 () Bool)

(assert (=> b!475945 (= e!279533 e!279524)))

(declare-fun res!284218 () Bool)

(assert (=> b!475945 (=> (not res!284218) (not e!279524))))

(assert (=> b!475945 (= res!284218 (contains!2565 lt!216986 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475945 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475946 () Bool)

(assert (=> b!475946 (= e!279526 e!279530)))

(declare-fun res!284220 () Bool)

(assert (=> b!475946 (= res!284220 call!30674)))

(assert (=> b!475946 (=> (not res!284220) (not e!279530))))

(declare-fun b!475947 () Bool)

(declare-fun Unit!13998 () Unit!13993)

(assert (=> b!475947 (= e!279535 Unit!13998)))

(declare-fun bm!30675 () Bool)

(assert (=> bm!30675 (= call!30676 call!30673)))

(declare-fun b!475948 () Bool)

(assert (=> b!475948 (= e!279531 e!279525)))

(assert (=> b!475948 (= c!57201 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475949 () Bool)

(assert (=> b!475949 (= e!279528 e!279529)))

(declare-fun res!284219 () Bool)

(assert (=> b!475949 (= res!284219 call!30678)))

(assert (=> b!475949 (=> (not res!284219) (not e!279529))))

(declare-fun b!475950 () Bool)

(assert (=> b!475950 (= e!279523 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475951 () Bool)

(assert (=> b!475951 (= e!279532 e!279526)))

(declare-fun c!57200 () Bool)

(assert (=> b!475951 (= c!57200 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30676 () Bool)

(assert (=> bm!30676 (= call!30673 call!30677)))

(assert (= (and d!75555 c!57203) b!475938))

(assert (= (and d!75555 (not c!57203)) b!475948))

(assert (= (and b!475948 c!57201) b!475941))

(assert (= (and b!475948 (not c!57201)) b!475942))

(assert (= (and b!475942 c!57198) b!475940))

(assert (= (and b!475942 (not c!57198)) b!475936))

(assert (= (or b!475940 b!475936) bm!30675))

(assert (= (or b!475941 bm!30675) bm!30676))

(assert (= (or b!475941 b!475940) bm!30672))

(assert (= (or b!475938 bm!30676) bm!30673))

(assert (= (or b!475938 bm!30672) bm!30674))

(assert (= (and d!75555 res!284222) b!475950))

(assert (= (and d!75555 c!57202) b!475934))

(assert (= (and d!75555 (not c!57202)) b!475947))

(assert (= (and d!75555 res!284224) b!475939))

(assert (= (and b!475939 res!284226) b!475931))

(assert (= (and b!475939 (not res!284223)) b!475945))

(assert (= (and b!475945 res!284218) b!475937))

(assert (= (and b!475939 res!284225) b!475933))

(assert (= (and b!475933 c!57199) b!475949))

(assert (= (and b!475933 (not c!57199)) b!475944))

(assert (= (and b!475949 res!284219) b!475932))

(assert (= (or b!475949 b!475944) bm!30671))

(assert (= (and b!475933 res!284221) b!475951))

(assert (= (and b!475951 c!57200) b!475946))

(assert (= (and b!475951 (not c!57200)) b!475943))

(assert (= (and b!475946 res!284220) b!475935))

(assert (= (or b!475946 b!475943) bm!30670))

(declare-fun b_lambda!10349 () Bool)

(assert (=> (not b_lambda!10349) (not b!475937)))

(assert (=> b!475937 t!15055))

(declare-fun b_and!20599 () Bool)

(assert (= b_and!20597 (and (=> t!15055 result!7483) b_and!20599)))

(assert (=> bm!30673 m!458097))

(assert (=> b!475950 m!458153))

(assert (=> b!475950 m!458153))

(assert (=> b!475950 m!458155))

(assert (=> b!475945 m!458153))

(assert (=> b!475945 m!458153))

(declare-fun m!458209 () Bool)

(assert (=> b!475945 m!458209))

(assert (=> b!475931 m!458153))

(assert (=> b!475931 m!458153))

(assert (=> b!475931 m!458155))

(assert (=> d!75555 m!458109))

(declare-fun m!458211 () Bool)

(assert (=> b!475938 m!458211))

(declare-fun m!458213 () Bool)

(assert (=> bm!30670 m!458213))

(declare-fun m!458215 () Bool)

(assert (=> bm!30671 m!458215))

(declare-fun m!458217 () Bool)

(assert (=> b!475935 m!458217))

(declare-fun m!458219 () Bool)

(assert (=> b!475934 m!458219))

(declare-fun m!458221 () Bool)

(assert (=> b!475934 m!458221))

(declare-fun m!458223 () Bool)

(assert (=> b!475934 m!458223))

(declare-fun m!458225 () Bool)

(assert (=> b!475934 m!458225))

(declare-fun m!458227 () Bool)

(assert (=> b!475934 m!458227))

(declare-fun m!458229 () Bool)

(assert (=> b!475934 m!458229))

(declare-fun m!458231 () Bool)

(assert (=> b!475934 m!458231))

(declare-fun m!458233 () Bool)

(assert (=> b!475934 m!458233))

(declare-fun m!458235 () Bool)

(assert (=> b!475934 m!458235))

(declare-fun m!458237 () Bool)

(assert (=> b!475934 m!458237))

(assert (=> b!475934 m!458097))

(assert (=> b!475934 m!458221))

(declare-fun m!458239 () Bool)

(assert (=> b!475934 m!458239))

(assert (=> b!475934 m!458225))

(declare-fun m!458241 () Bool)

(assert (=> b!475934 m!458241))

(declare-fun m!458243 () Bool)

(assert (=> b!475934 m!458243))

(declare-fun m!458245 () Bool)

(assert (=> b!475934 m!458245))

(declare-fun m!458247 () Bool)

(assert (=> b!475934 m!458247))

(assert (=> b!475934 m!458233))

(assert (=> b!475934 m!458245))

(assert (=> b!475934 m!458153))

(declare-fun m!458249 () Bool)

(assert (=> bm!30674 m!458249))

(declare-fun m!458251 () Bool)

(assert (=> b!475932 m!458251))

(assert (=> b!475937 m!458201))

(assert (=> b!475937 m!458201))

(assert (=> b!475937 m!458203))

(assert (=> b!475937 m!458205))

(assert (=> b!475937 m!458203))

(assert (=> b!475937 m!458153))

(declare-fun m!458253 () Bool)

(assert (=> b!475937 m!458253))

(assert (=> b!475937 m!458153))

(assert (=> b!475835 d!75555))

(declare-fun b!475960 () Bool)

(declare-fun e!279544 () Bool)

(declare-fun e!279542 () Bool)

(assert (=> b!475960 (= e!279544 e!279542)))

(declare-fun c!57206 () Bool)

(assert (=> b!475960 (= c!57206 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475961 () Bool)

(declare-fun call!30682 () Bool)

(assert (=> b!475961 (= e!279542 call!30682)))

(declare-fun b!475962 () Bool)

(declare-fun e!279543 () Bool)

(assert (=> b!475962 (= e!279542 e!279543)))

(declare-fun lt!216999 () (_ BitVec 64))

(assert (=> b!475962 (= lt!216999 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216998 () Unit!13993)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30693 (_ BitVec 64) (_ BitVec 32)) Unit!13993)

(assert (=> b!475962 (= lt!216998 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!216999 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!475962 (arrayContainsKey!0 _keys!1025 lt!216999 #b00000000000000000000000000000000)))

(declare-fun lt!216997 () Unit!13993)

(assert (=> b!475962 (= lt!216997 lt!216998)))

(declare-fun res!284232 () Bool)

(declare-datatypes ((SeekEntryResult!3549 0))(
  ( (MissingZero!3549 (index!16375 (_ BitVec 32))) (Found!3549 (index!16376 (_ BitVec 32))) (Intermediate!3549 (undefined!4361 Bool) (index!16377 (_ BitVec 32)) (x!44667 (_ BitVec 32))) (Undefined!3549) (MissingVacant!3549 (index!16378 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30693 (_ BitVec 32)) SeekEntryResult!3549)

(assert (=> b!475962 (= res!284232 (= (seekEntryOrOpen!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3549 #b00000000000000000000000000000000)))))

(assert (=> b!475962 (=> (not res!284232) (not e!279543))))

(declare-fun b!475963 () Bool)

(assert (=> b!475963 (= e!279543 call!30682)))

(declare-fun bm!30679 () Bool)

(assert (=> bm!30679 (= call!30682 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!75557 () Bool)

(declare-fun res!284231 () Bool)

(assert (=> d!75557 (=> res!284231 e!279544)))

(assert (=> d!75557 (= res!284231 (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> d!75557 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!279544)))

(assert (= (and d!75557 (not res!284231)) b!475960))

(assert (= (and b!475960 c!57206) b!475962))

(assert (= (and b!475960 (not c!57206)) b!475961))

(assert (= (and b!475962 res!284232) b!475963))

(assert (= (or b!475963 b!475961) bm!30679))

(assert (=> b!475960 m!458153))

(assert (=> b!475960 m!458153))

(assert (=> b!475960 m!458155))

(assert (=> b!475962 m!458153))

(declare-fun m!458255 () Bool)

(assert (=> b!475962 m!458255))

(declare-fun m!458257 () Bool)

(assert (=> b!475962 m!458257))

(assert (=> b!475962 m!458153))

(declare-fun m!458259 () Bool)

(assert (=> b!475962 m!458259))

(declare-fun m!458261 () Bool)

(assert (=> bm!30679 m!458261))

(assert (=> b!475831 d!75557))

(declare-fun d!75559 () Bool)

(assert (=> d!75559 (= (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!217002 () Unit!13993)

(declare-fun choose!1366 (array!30693 array!30695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19093 V!19093 V!19093 V!19093 (_ BitVec 32) Int) Unit!13993)

(assert (=> d!75559 (= lt!217002 (choose!1366 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75559 (validMask!0 mask!1365)))

(assert (=> d!75559 (= (lemmaNoChangeToArrayThenSameMapNoExtras!280 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217002)))

(declare-fun bs!15110 () Bool)

(assert (= bs!15110 d!75559))

(assert (=> bs!15110 m!458099))

(assert (=> bs!15110 m!458097))

(declare-fun m!458263 () Bool)

(assert (=> bs!15110 m!458263))

(assert (=> bs!15110 m!458109))

(assert (=> b!475833 d!75559))

(declare-fun b!475988 () Bool)

(declare-fun e!279560 () Bool)

(declare-fun lt!217017 () ListLongMap!7881)

(declare-fun isEmpty!589 (ListLongMap!7881) Bool)

(assert (=> b!475988 (= e!279560 (isEmpty!589 lt!217017))))

(declare-fun b!475989 () Bool)

(declare-fun e!279559 () Bool)

(declare-fun e!279565 () Bool)

(assert (=> b!475989 (= e!279559 e!279565)))

(declare-fun c!57218 () Bool)

(declare-fun e!279562 () Bool)

(assert (=> b!475989 (= c!57218 e!279562)))

(declare-fun res!284243 () Bool)

(assert (=> b!475989 (=> (not res!284243) (not e!279562))))

(assert (=> b!475989 (= res!284243 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475990 () Bool)

(assert (=> b!475990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> b!475990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15111 _values!833)))))

(declare-fun e!279564 () Bool)

(assert (=> b!475990 (= e!279564 (= (apply!337 lt!217017 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30682 () Bool)

(declare-fun call!30685 () ListLongMap!7881)

(assert (=> bm!30682 (= call!30685 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475992 () Bool)

(assert (=> b!475992 (= e!279560 (= lt!217017 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!475993 () Bool)

(assert (=> b!475993 (= e!279565 e!279560)))

(declare-fun c!57217 () Bool)

(assert (=> b!475993 (= c!57217 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!475994 () Bool)

(declare-fun res!284244 () Bool)

(assert (=> b!475994 (=> (not res!284244) (not e!279559))))

(assert (=> b!475994 (= res!284244 (not (contains!2565 lt!217017 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475995 () Bool)

(assert (=> b!475995 (= e!279565 e!279564)))

(assert (=> b!475995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun res!284242 () Bool)

(assert (=> b!475995 (= res!284242 (contains!2565 lt!217017 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475995 (=> (not res!284242) (not e!279564))))

(declare-fun b!475996 () Bool)

(declare-fun e!279563 () ListLongMap!7881)

(assert (=> b!475996 (= e!279563 call!30685)))

(declare-fun b!475997 () Bool)

(declare-fun e!279561 () ListLongMap!7881)

(assert (=> b!475997 (= e!279561 (ListLongMap!7882 Nil!9061))))

(declare-fun b!475998 () Bool)

(assert (=> b!475998 (= e!279562 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475998 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!475999 () Bool)

(declare-fun lt!217022 () Unit!13993)

(declare-fun lt!217021 () Unit!13993)

(assert (=> b!475999 (= lt!217022 lt!217021)))

(declare-fun lt!217023 () (_ BitVec 64))

(declare-fun lt!217020 () (_ BitVec 64))

(declare-fun lt!217019 () V!19093)

(declare-fun lt!217018 () ListLongMap!7881)

(assert (=> b!475999 (not (contains!2565 (+!1734 lt!217018 (tuple2!8955 lt!217020 lt!217019)) lt!217023))))

(declare-fun addStillNotContains!172 (ListLongMap!7881 (_ BitVec 64) V!19093 (_ BitVec 64)) Unit!13993)

(assert (=> b!475999 (= lt!217021 (addStillNotContains!172 lt!217018 lt!217020 lt!217019 lt!217023))))

(assert (=> b!475999 (= lt!217023 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475999 (= lt!217019 (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475999 (= lt!217020 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475999 (= lt!217018 call!30685)))

(assert (=> b!475999 (= e!279563 (+!1734 call!30685 (tuple2!8955 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!75561 () Bool)

(assert (=> d!75561 e!279559))

(declare-fun res!284241 () Bool)

(assert (=> d!75561 (=> (not res!284241) (not e!279559))))

(assert (=> d!75561 (= res!284241 (not (contains!2565 lt!217017 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75561 (= lt!217017 e!279561)))

(declare-fun c!57215 () Bool)

(assert (=> d!75561 (= c!57215 (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> d!75561 (validMask!0 mask!1365)))

(assert (=> d!75561 (= (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217017)))

(declare-fun b!475991 () Bool)

(assert (=> b!475991 (= e!279561 e!279563)))

(declare-fun c!57216 () Bool)

(assert (=> b!475991 (= c!57216 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75561 c!57215) b!475997))

(assert (= (and d!75561 (not c!57215)) b!475991))

(assert (= (and b!475991 c!57216) b!475999))

(assert (= (and b!475991 (not c!57216)) b!475996))

(assert (= (or b!475999 b!475996) bm!30682))

(assert (= (and d!75561 res!284241) b!475994))

(assert (= (and b!475994 res!284244) b!475989))

(assert (= (and b!475989 res!284243) b!475998))

(assert (= (and b!475989 c!57218) b!475995))

(assert (= (and b!475989 (not c!57218)) b!475993))

(assert (= (and b!475995 res!284242) b!475990))

(assert (= (and b!475993 c!57217) b!475992))

(assert (= (and b!475993 (not c!57217)) b!475988))

(declare-fun b_lambda!10351 () Bool)

(assert (=> (not b_lambda!10351) (not b!475990)))

(assert (=> b!475990 t!15055))

(declare-fun b_and!20601 () Bool)

(assert (= b_and!20599 (and (=> t!15055 result!7483) b_and!20601)))

(declare-fun b_lambda!10353 () Bool)

(assert (=> (not b_lambda!10353) (not b!475999)))

(assert (=> b!475999 t!15055))

(declare-fun b_and!20603 () Bool)

(assert (= b_and!20601 (and (=> t!15055 result!7483) b_and!20603)))

(declare-fun m!458265 () Bool)

(assert (=> bm!30682 m!458265))

(assert (=> b!475990 m!458203))

(assert (=> b!475990 m!458153))

(assert (=> b!475990 m!458201))

(assert (=> b!475990 m!458203))

(assert (=> b!475990 m!458205))

(assert (=> b!475990 m!458153))

(declare-fun m!458267 () Bool)

(assert (=> b!475990 m!458267))

(assert (=> b!475990 m!458201))

(assert (=> b!475998 m!458153))

(assert (=> b!475998 m!458153))

(assert (=> b!475998 m!458155))

(assert (=> b!475995 m!458153))

(assert (=> b!475995 m!458153))

(declare-fun m!458269 () Bool)

(assert (=> b!475995 m!458269))

(assert (=> b!475992 m!458265))

(assert (=> b!475991 m!458153))

(assert (=> b!475991 m!458153))

(assert (=> b!475991 m!458155))

(declare-fun m!458271 () Bool)

(assert (=> d!75561 m!458271))

(assert (=> d!75561 m!458109))

(declare-fun m!458273 () Bool)

(assert (=> b!475988 m!458273))

(declare-fun m!458275 () Bool)

(assert (=> b!475999 m!458275))

(assert (=> b!475999 m!458203))

(assert (=> b!475999 m!458153))

(assert (=> b!475999 m!458201))

(assert (=> b!475999 m!458203))

(assert (=> b!475999 m!458205))

(declare-fun m!458277 () Bool)

(assert (=> b!475999 m!458277))

(declare-fun m!458279 () Bool)

(assert (=> b!475999 m!458279))

(assert (=> b!475999 m!458275))

(declare-fun m!458281 () Bool)

(assert (=> b!475999 m!458281))

(assert (=> b!475999 m!458201))

(declare-fun m!458283 () Bool)

(assert (=> b!475994 m!458283))

(assert (=> b!475833 d!75561))

(declare-fun b!476000 () Bool)

(declare-fun e!279567 () Bool)

(declare-fun lt!217024 () ListLongMap!7881)

(assert (=> b!476000 (= e!279567 (isEmpty!589 lt!217024))))

(declare-fun b!476001 () Bool)

(declare-fun e!279566 () Bool)

(declare-fun e!279572 () Bool)

(assert (=> b!476001 (= e!279566 e!279572)))

(declare-fun c!57222 () Bool)

(declare-fun e!279569 () Bool)

(assert (=> b!476001 (= c!57222 e!279569)))

(declare-fun res!284247 () Bool)

(assert (=> b!476001 (=> (not res!284247) (not e!279569))))

(assert (=> b!476001 (= res!284247 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!476002 () Bool)

(assert (=> b!476002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> b!476002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15111 _values!833)))))

(declare-fun e!279571 () Bool)

(assert (=> b!476002 (= e!279571 (= (apply!337 lt!217024 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30683 () Bool)

(declare-fun call!30686 () ListLongMap!7881)

(assert (=> bm!30683 (= call!30686 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!476004 () Bool)

(assert (=> b!476004 (= e!279567 (= lt!217024 (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!476005 () Bool)

(assert (=> b!476005 (= e!279572 e!279567)))

(declare-fun c!57221 () Bool)

(assert (=> b!476005 (= c!57221 (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun b!476006 () Bool)

(declare-fun res!284248 () Bool)

(assert (=> b!476006 (=> (not res!284248) (not e!279566))))

(assert (=> b!476006 (= res!284248 (not (contains!2565 lt!217024 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!476007 () Bool)

(assert (=> b!476007 (= e!279572 e!279571)))

(assert (=> b!476007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(declare-fun res!284246 () Bool)

(assert (=> b!476007 (= res!284246 (contains!2565 lt!217024 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476007 (=> (not res!284246) (not e!279571))))

(declare-fun b!476008 () Bool)

(declare-fun e!279570 () ListLongMap!7881)

(assert (=> b!476008 (= e!279570 call!30686)))

(declare-fun b!476009 () Bool)

(declare-fun e!279568 () ListLongMap!7881)

(assert (=> b!476009 (= e!279568 (ListLongMap!7882 Nil!9061))))

(declare-fun b!476010 () Bool)

(assert (=> b!476010 (= e!279569 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!476010 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!476011 () Bool)

(declare-fun lt!217029 () Unit!13993)

(declare-fun lt!217028 () Unit!13993)

(assert (=> b!476011 (= lt!217029 lt!217028)))

(declare-fun lt!217030 () (_ BitVec 64))

(declare-fun lt!217025 () ListLongMap!7881)

(declare-fun lt!217026 () V!19093)

(declare-fun lt!217027 () (_ BitVec 64))

(assert (=> b!476011 (not (contains!2565 (+!1734 lt!217025 (tuple2!8955 lt!217027 lt!217026)) lt!217030))))

(assert (=> b!476011 (= lt!217028 (addStillNotContains!172 lt!217025 lt!217027 lt!217026 lt!217030))))

(assert (=> b!476011 (= lt!217030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!476011 (= lt!217026 (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!476011 (= lt!217027 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!476011 (= lt!217025 call!30686)))

(assert (=> b!476011 (= e!279570 (+!1734 call!30686 (tuple2!8955 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000) (get!7175 (select (arr!14759 _values!833) #b00000000000000000000000000000000) (dynLambda!929 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!75563 () Bool)

(assert (=> d!75563 e!279566))

(declare-fun res!284245 () Bool)

(assert (=> d!75563 (=> (not res!284245) (not e!279566))))

(assert (=> d!75563 (= res!284245 (not (contains!2565 lt!217024 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75563 (= lt!217024 e!279568)))

(declare-fun c!57219 () Bool)

(assert (=> d!75563 (= c!57219 (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> d!75563 (validMask!0 mask!1365)))

(assert (=> d!75563 (= (getCurrentListMapNoExtraKeys!2109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!217024)))

(declare-fun b!476003 () Bool)

(assert (=> b!476003 (= e!279568 e!279570)))

(declare-fun c!57220 () Bool)

(assert (=> b!476003 (= c!57220 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75563 c!57219) b!476009))

(assert (= (and d!75563 (not c!57219)) b!476003))

(assert (= (and b!476003 c!57220) b!476011))

(assert (= (and b!476003 (not c!57220)) b!476008))

(assert (= (or b!476011 b!476008) bm!30683))

(assert (= (and d!75563 res!284245) b!476006))

(assert (= (and b!476006 res!284248) b!476001))

(assert (= (and b!476001 res!284247) b!476010))

(assert (= (and b!476001 c!57222) b!476007))

(assert (= (and b!476001 (not c!57222)) b!476005))

(assert (= (and b!476007 res!284246) b!476002))

(assert (= (and b!476005 c!57221) b!476004))

(assert (= (and b!476005 (not c!57221)) b!476000))

(declare-fun b_lambda!10355 () Bool)

(assert (=> (not b_lambda!10355) (not b!476002)))

(assert (=> b!476002 t!15055))

(declare-fun b_and!20605 () Bool)

(assert (= b_and!20603 (and (=> t!15055 result!7483) b_and!20605)))

(declare-fun b_lambda!10357 () Bool)

(assert (=> (not b_lambda!10357) (not b!476011)))

(assert (=> b!476011 t!15055))

(declare-fun b_and!20607 () Bool)

(assert (= b_and!20605 (and (=> t!15055 result!7483) b_and!20607)))

(declare-fun m!458285 () Bool)

(assert (=> bm!30683 m!458285))

(assert (=> b!476002 m!458203))

(assert (=> b!476002 m!458153))

(assert (=> b!476002 m!458201))

(assert (=> b!476002 m!458203))

(assert (=> b!476002 m!458205))

(assert (=> b!476002 m!458153))

(declare-fun m!458287 () Bool)

(assert (=> b!476002 m!458287))

(assert (=> b!476002 m!458201))

(assert (=> b!476010 m!458153))

(assert (=> b!476010 m!458153))

(assert (=> b!476010 m!458155))

(assert (=> b!476007 m!458153))

(assert (=> b!476007 m!458153))

(declare-fun m!458289 () Bool)

(assert (=> b!476007 m!458289))

(assert (=> b!476004 m!458285))

(assert (=> b!476003 m!458153))

(assert (=> b!476003 m!458153))

(assert (=> b!476003 m!458155))

(declare-fun m!458291 () Bool)

(assert (=> d!75563 m!458291))

(assert (=> d!75563 m!458109))

(declare-fun m!458293 () Bool)

(assert (=> b!476000 m!458293))

(declare-fun m!458295 () Bool)

(assert (=> b!476011 m!458295))

(assert (=> b!476011 m!458203))

(assert (=> b!476011 m!458153))

(assert (=> b!476011 m!458201))

(assert (=> b!476011 m!458203))

(assert (=> b!476011 m!458205))

(declare-fun m!458297 () Bool)

(assert (=> b!476011 m!458297))

(declare-fun m!458299 () Bool)

(assert (=> b!476011 m!458299))

(assert (=> b!476011 m!458295))

(declare-fun m!458301 () Bool)

(assert (=> b!476011 m!458301))

(assert (=> b!476011 m!458201))

(declare-fun m!458303 () Bool)

(assert (=> b!476006 m!458303))

(assert (=> b!475833 d!75563))

(declare-fun b!476022 () Bool)

(declare-fun e!279584 () Bool)

(declare-fun e!279581 () Bool)

(assert (=> b!476022 (= e!279584 e!279581)))

(declare-fun res!284255 () Bool)

(assert (=> b!476022 (=> (not res!284255) (not e!279581))))

(declare-fun e!279582 () Bool)

(assert (=> b!476022 (= res!284255 (not e!279582))))

(declare-fun res!284256 () Bool)

(assert (=> b!476022 (=> (not res!284256) (not e!279582))))

(assert (=> b!476022 (= res!284256 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30686 () Bool)

(declare-fun call!30689 () Bool)

(declare-fun c!57225 () Bool)

(assert (=> bm!30686 (= call!30689 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57225 (Cons!9059 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000) Nil!9060) Nil!9060)))))

(declare-fun b!476023 () Bool)

(declare-fun e!279583 () Bool)

(assert (=> b!476023 (= e!279581 e!279583)))

(assert (=> b!476023 (= c!57225 (validKeyInArray!0 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476024 () Bool)

(declare-fun contains!2567 (List!9063 (_ BitVec 64)) Bool)

(assert (=> b!476024 (= e!279582 (contains!2567 Nil!9060 (select (arr!14758 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!476025 () Bool)

(assert (=> b!476025 (= e!279583 call!30689)))

(declare-fun b!476026 () Bool)

(assert (=> b!476026 (= e!279583 call!30689)))

(declare-fun d!75565 () Bool)

(declare-fun res!284257 () Bool)

(assert (=> d!75565 (=> res!284257 e!279584)))

(assert (=> d!75565 (= res!284257 (bvsge #b00000000000000000000000000000000 (size!15110 _keys!1025)))))

(assert (=> d!75565 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9060) e!279584)))

(assert (= (and d!75565 (not res!284257)) b!476022))

(assert (= (and b!476022 res!284256) b!476024))

(assert (= (and b!476022 res!284255) b!476023))

(assert (= (and b!476023 c!57225) b!476025))

(assert (= (and b!476023 (not c!57225)) b!476026))

(assert (= (or b!476025 b!476026) bm!30686))

(assert (=> b!476022 m!458153))

(assert (=> b!476022 m!458153))

(assert (=> b!476022 m!458155))

(assert (=> bm!30686 m!458153))

(declare-fun m!458305 () Bool)

(assert (=> bm!30686 m!458305))

(assert (=> b!476023 m!458153))

(assert (=> b!476023 m!458153))

(assert (=> b!476023 m!458155))

(assert (=> b!476024 m!458153))

(assert (=> b!476024 m!458153))

(declare-fun m!458307 () Bool)

(assert (=> b!476024 m!458307))

(assert (=> b!475828 d!75565))

(declare-fun d!75567 () Bool)

(assert (=> d!75567 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42686 d!75567))

(declare-fun d!75569 () Bool)

(assert (=> d!75569 (= (array_inv!10636 _keys!1025) (bvsge (size!15110 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42686 d!75569))

(declare-fun d!75571 () Bool)

(assert (=> d!75571 (= (array_inv!10637 _values!833) (bvsge (size!15111 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42686 d!75571))

(declare-fun b!476033 () Bool)

(declare-fun e!279590 () Bool)

(assert (=> b!476033 (= e!279590 tp_is_empty!13491)))

(declare-fun mapNonEmpty!21970 () Bool)

(declare-fun mapRes!21970 () Bool)

(declare-fun tp!42247 () Bool)

(assert (=> mapNonEmpty!21970 (= mapRes!21970 (and tp!42247 e!279590))))

(declare-fun mapRest!21970 () (Array (_ BitVec 32) ValueCell!6402))

(declare-fun mapValue!21970 () ValueCell!6402)

(declare-fun mapKey!21970 () (_ BitVec 32))

(assert (=> mapNonEmpty!21970 (= mapRest!21964 (store mapRest!21970 mapKey!21970 mapValue!21970))))

(declare-fun b!476034 () Bool)

(declare-fun e!279589 () Bool)

(assert (=> b!476034 (= e!279589 tp_is_empty!13491)))

(declare-fun condMapEmpty!21970 () Bool)

(declare-fun mapDefault!21970 () ValueCell!6402)

(assert (=> mapNonEmpty!21964 (= condMapEmpty!21970 (= mapRest!21964 ((as const (Array (_ BitVec 32) ValueCell!6402)) mapDefault!21970)))))

(assert (=> mapNonEmpty!21964 (= tp!42238 (and e!279589 mapRes!21970))))

(declare-fun mapIsEmpty!21970 () Bool)

(assert (=> mapIsEmpty!21970 mapRes!21970))

(assert (= (and mapNonEmpty!21964 condMapEmpty!21970) mapIsEmpty!21970))

(assert (= (and mapNonEmpty!21964 (not condMapEmpty!21970)) mapNonEmpty!21970))

(assert (= (and mapNonEmpty!21970 ((_ is ValueCellFull!6402) mapValue!21970)) b!476033))

(assert (= (and mapNonEmpty!21964 ((_ is ValueCellFull!6402) mapDefault!21970)) b!476034))

(declare-fun m!458309 () Bool)

(assert (=> mapNonEmpty!21970 m!458309))

(declare-fun b_lambda!10359 () Bool)

(assert (= b_lambda!10357 (or (and start!42686 b_free!12063) b_lambda!10359)))

(declare-fun b_lambda!10361 () Bool)

(assert (= b_lambda!10351 (or (and start!42686 b_free!12063) b_lambda!10361)))

(declare-fun b_lambda!10363 () Bool)

(assert (= b_lambda!10347 (or (and start!42686 b_free!12063) b_lambda!10363)))

(declare-fun b_lambda!10365 () Bool)

(assert (= b_lambda!10349 (or (and start!42686 b_free!12063) b_lambda!10365)))

(declare-fun b_lambda!10367 () Bool)

(assert (= b_lambda!10353 (or (and start!42686 b_free!12063) b_lambda!10367)))

(declare-fun b_lambda!10369 () Bool)

(assert (= b_lambda!10355 (or (and start!42686 b_free!12063) b_lambda!10369)))

(check-sat (not b!475999) (not b!475950) (not bm!30664) (not b!475915) (not b!475960) (not b!475934) (not d!75563) (not b!475865) (not b!476007) (not b!476010) (not b!475912) (not b_next!12063) (not b_lambda!10363) (not bm!30682) (not b!475998) (not b!476006) (not b!476000) (not b!475994) (not b_lambda!10365) (not d!75555) (not b!476004) (not b!475988) (not bm!30670) (not b!475922) (not b!476011) (not b!475962) (not b!475995) (not b!475945) (not bm!30671) (not b!475927) b_and!20607 (not b!476022) (not b!475990) (not bm!30663) (not b!476002) (not mapNonEmpty!21970) (not b_lambda!10361) (not b_lambda!10367) (not b!476023) (not b!475914) (not b!475911) (not d!75561) (not bm!30679) (not b!476024) (not bm!30686) (not b!475909) (not b!475991) (not d!75551) (not bm!30667) (not b!475908) (not d!75559) (not b_lambda!10359) (not bm!30666) (not b!475932) (not b!475937) (not b!476003) (not b!475992) (not bm!30683) (not b!475931) (not d!75553) (not b!475935) (not bm!30673) tp_is_empty!13491 (not b!475864) (not b!475938) (not b_lambda!10369) (not bm!30674))
(check-sat b_and!20607 (not b_next!12063))
