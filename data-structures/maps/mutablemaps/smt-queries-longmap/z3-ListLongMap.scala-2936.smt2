; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41814 () Bool)

(assert start!41814)

(declare-fun b_free!11427 () Bool)

(declare-fun b_next!11427 () Bool)

(assert (=> start!41814 (= b_free!11427 (not b_next!11427))))

(declare-fun tp!40288 () Bool)

(declare-fun b_and!19813 () Bool)

(assert (=> start!41814 (= tp!40288 b_and!19813)))

(declare-fun mapIsEmpty!20968 () Bool)

(declare-fun mapRes!20968 () Bool)

(assert (=> mapIsEmpty!20968 mapRes!20968))

(declare-fun b!466652 () Bool)

(declare-fun res!279020 () Bool)

(declare-fun e!272923 () Bool)

(assert (=> b!466652 (=> (not res!279020) (not e!272923))))

(declare-datatypes ((array!29445 0))(
  ( (array!29446 (arr!14148 (Array (_ BitVec 32) (_ BitVec 64))) (size!14500 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29445)

(declare-datatypes ((List!8595 0))(
  ( (Nil!8592) (Cons!8591 (h!9447 (_ BitVec 64)) (t!14555 List!8595)) )
))
(declare-fun arrayNoDuplicates!0 (array!29445 (_ BitVec 32) List!8595) Bool)

(assert (=> b!466652 (= res!279020 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8592))))

(declare-fun b!466653 () Bool)

(declare-fun res!279016 () Bool)

(assert (=> b!466653 (=> (not res!279016) (not e!272923))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18245 0))(
  ( (V!18246 (val!6472 Int)) )
))
(declare-datatypes ((ValueCell!6084 0))(
  ( (ValueCellFull!6084 (v!8756 V!18245)) (EmptyCell!6084) )
))
(declare-datatypes ((array!29447 0))(
  ( (array!29448 (arr!14149 (Array (_ BitVec 32) ValueCell!6084)) (size!14501 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29447)

(assert (=> b!466653 (= res!279016 (and (= (size!14501 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14500 _keys!1025) (size!14501 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466654 () Bool)

(declare-fun e!272919 () Bool)

(declare-fun tp_is_empty!12855 () Bool)

(assert (=> b!466654 (= e!272919 tp_is_empty!12855)))

(declare-fun b!466655 () Bool)

(declare-fun res!279015 () Bool)

(assert (=> b!466655 (=> (not res!279015) (not e!272923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29445 (_ BitVec 32)) Bool)

(assert (=> b!466655 (= res!279015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!279018 () Bool)

(assert (=> start!41814 (=> (not res!279018) (not e!272923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41814 (= res!279018 (validMask!0 mask!1365))))

(assert (=> start!41814 e!272923))

(assert (=> start!41814 tp_is_empty!12855))

(assert (=> start!41814 tp!40288))

(assert (=> start!41814 true))

(declare-fun array_inv!10196 (array!29445) Bool)

(assert (=> start!41814 (array_inv!10196 _keys!1025)))

(declare-fun e!272924 () Bool)

(declare-fun array_inv!10197 (array!29447) Bool)

(assert (=> start!41814 (and (array_inv!10197 _values!833) e!272924)))

(declare-fun b!466656 () Bool)

(declare-fun res!279019 () Bool)

(declare-fun e!272920 () Bool)

(assert (=> b!466656 (=> res!279019 e!272920)))

(declare-fun minValueBefore!38 () V!18245)

(declare-fun zeroValue!794 () V!18245)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18245)

(declare-datatypes ((tuple2!8478 0))(
  ( (tuple2!8479 (_1!4249 (_ BitVec 64)) (_2!4249 V!18245)) )
))
(declare-datatypes ((List!8596 0))(
  ( (Nil!8593) (Cons!8592 (h!9448 tuple2!8478) (t!14556 List!8596)) )
))
(declare-datatypes ((ListLongMap!7405 0))(
  ( (ListLongMap!7406 (toList!3718 List!8596)) )
))
(declare-fun +!1646 (ListLongMap!7405 tuple2!8478) ListLongMap!7405)

(declare-fun getCurrentListMap!2155 (array!29445 array!29447 (_ BitVec 32) (_ BitVec 32) V!18245 V!18245 (_ BitVec 32) Int) ListLongMap!7405)

(assert (=> b!466656 (= res!279019 (not (= (+!1646 (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))))

(declare-fun b!466657 () Bool)

(assert (=> b!466657 (= e!272924 (and e!272919 mapRes!20968))))

(declare-fun condMapEmpty!20968 () Bool)

(declare-fun mapDefault!20968 () ValueCell!6084)

(assert (=> b!466657 (= condMapEmpty!20968 (= (arr!14149 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6084)) mapDefault!20968)))))

(declare-fun mapNonEmpty!20968 () Bool)

(declare-fun tp!40287 () Bool)

(declare-fun e!272921 () Bool)

(assert (=> mapNonEmpty!20968 (= mapRes!20968 (and tp!40287 e!272921))))

(declare-fun mapKey!20968 () (_ BitVec 32))

(declare-fun mapValue!20968 () ValueCell!6084)

(declare-fun mapRest!20968 () (Array (_ BitVec 32) ValueCell!6084))

(assert (=> mapNonEmpty!20968 (= (arr!14149 _values!833) (store mapRest!20968 mapKey!20968 mapValue!20968))))

(declare-fun b!466658 () Bool)

(assert (=> b!466658 (= e!272920 (bvsle #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466659 () Bool)

(assert (=> b!466659 (= e!272921 tp_is_empty!12855)))

(declare-fun b!466660 () Bool)

(assert (=> b!466660 (= e!272923 (not e!272920))))

(declare-fun res!279017 () Bool)

(assert (=> b!466660 (=> res!279017 e!272920)))

(assert (=> b!466660 (= res!279017 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210997 () ListLongMap!7405)

(declare-fun lt!210995 () ListLongMap!7405)

(assert (=> b!466660 (= lt!210997 lt!210995)))

(declare-datatypes ((Unit!13555 0))(
  ( (Unit!13556) )
))
(declare-fun lt!210996 () Unit!13555)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!79 (array!29445 array!29447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18245 V!18245 V!18245 V!18245 (_ BitVec 32) Int) Unit!13555)

(assert (=> b!466660 (= lt!210996 (lemmaNoChangeToArrayThenSameMapNoExtras!79 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1884 (array!29445 array!29447 (_ BitVec 32) (_ BitVec 32) V!18245 V!18245 (_ BitVec 32) Int) ListLongMap!7405)

(assert (=> b!466660 (= lt!210995 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466660 (= lt!210997 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41814 res!279018) b!466653))

(assert (= (and b!466653 res!279016) b!466655))

(assert (= (and b!466655 res!279015) b!466652))

(assert (= (and b!466652 res!279020) b!466660))

(assert (= (and b!466660 (not res!279017)) b!466656))

(assert (= (and b!466656 (not res!279019)) b!466658))

(assert (= (and b!466657 condMapEmpty!20968) mapIsEmpty!20968))

(assert (= (and b!466657 (not condMapEmpty!20968)) mapNonEmpty!20968))

(get-info :version)

(assert (= (and mapNonEmpty!20968 ((_ is ValueCellFull!6084) mapValue!20968)) b!466659))

(assert (= (and b!466657 ((_ is ValueCellFull!6084) mapDefault!20968)) b!466654))

(assert (= start!41814 b!466657))

(declare-fun m!448899 () Bool)

(assert (=> start!41814 m!448899))

(declare-fun m!448901 () Bool)

(assert (=> start!41814 m!448901))

(declare-fun m!448903 () Bool)

(assert (=> start!41814 m!448903))

(declare-fun m!448905 () Bool)

(assert (=> b!466655 m!448905))

(declare-fun m!448907 () Bool)

(assert (=> mapNonEmpty!20968 m!448907))

(declare-fun m!448909 () Bool)

(assert (=> b!466656 m!448909))

(assert (=> b!466656 m!448909))

(declare-fun m!448911 () Bool)

(assert (=> b!466656 m!448911))

(declare-fun m!448913 () Bool)

(assert (=> b!466656 m!448913))

(declare-fun m!448915 () Bool)

(assert (=> b!466652 m!448915))

(declare-fun m!448917 () Bool)

(assert (=> b!466660 m!448917))

(declare-fun m!448919 () Bool)

(assert (=> b!466660 m!448919))

(declare-fun m!448921 () Bool)

(assert (=> b!466660 m!448921))

(check-sat b_and!19813 (not b!466656) tp_is_empty!12855 (not mapNonEmpty!20968) (not start!41814) (not b!466652) (not b!466660) (not b!466655) (not b_next!11427))
(check-sat b_and!19813 (not b_next!11427))
(get-model)

(declare-fun b!466696 () Bool)

(declare-fun e!272951 () Bool)

(declare-fun e!272949 () Bool)

(assert (=> b!466696 (= e!272951 e!272949)))

(declare-fun c!56670 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!466696 (= c!56670 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30273 () Bool)

(declare-fun call!30276 () Bool)

(assert (=> bm!30273 (= call!30276 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!466698 () Bool)

(assert (=> b!466698 (= e!272949 call!30276)))

(declare-fun b!466699 () Bool)

(declare-fun e!272950 () Bool)

(assert (=> b!466699 (= e!272950 call!30276)))

(declare-fun b!466697 () Bool)

(assert (=> b!466697 (= e!272949 e!272950)))

(declare-fun lt!211015 () (_ BitVec 64))

(assert (=> b!466697 (= lt!211015 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211014 () Unit!13555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29445 (_ BitVec 64) (_ BitVec 32)) Unit!13555)

(assert (=> b!466697 (= lt!211014 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!211015 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!466697 (arrayContainsKey!0 _keys!1025 lt!211015 #b00000000000000000000000000000000)))

(declare-fun lt!211013 () Unit!13555)

(assert (=> b!466697 (= lt!211013 lt!211014)))

(declare-fun res!279044 () Bool)

(declare-datatypes ((SeekEntryResult!3535 0))(
  ( (MissingZero!3535 (index!16319 (_ BitVec 32))) (Found!3535 (index!16320 (_ BitVec 32))) (Intermediate!3535 (undefined!4347 Bool) (index!16321 (_ BitVec 32)) (x!43651 (_ BitVec 32))) (Undefined!3535) (MissingVacant!3535 (index!16322 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29445 (_ BitVec 32)) SeekEntryResult!3535)

(assert (=> b!466697 (= res!279044 (= (seekEntryOrOpen!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3535 #b00000000000000000000000000000000)))))

(assert (=> b!466697 (=> (not res!279044) (not e!272950))))

(declare-fun d!75035 () Bool)

(declare-fun res!279043 () Bool)

(assert (=> d!75035 (=> res!279043 e!272951)))

(assert (=> d!75035 (= res!279043 (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!272951)))

(assert (= (and d!75035 (not res!279043)) b!466696))

(assert (= (and b!466696 c!56670) b!466697))

(assert (= (and b!466696 (not c!56670)) b!466698))

(assert (= (and b!466697 res!279044) b!466699))

(assert (= (or b!466699 b!466698) bm!30273))

(declare-fun m!448947 () Bool)

(assert (=> b!466696 m!448947))

(assert (=> b!466696 m!448947))

(declare-fun m!448949 () Bool)

(assert (=> b!466696 m!448949))

(declare-fun m!448951 () Bool)

(assert (=> bm!30273 m!448951))

(assert (=> b!466697 m!448947))

(declare-fun m!448953 () Bool)

(assert (=> b!466697 m!448953))

(declare-fun m!448955 () Bool)

(assert (=> b!466697 m!448955))

(assert (=> b!466697 m!448947))

(declare-fun m!448957 () Bool)

(assert (=> b!466697 m!448957))

(assert (=> b!466655 d!75035))

(declare-fun d!75037 () Bool)

(assert (=> d!75037 (= (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211018 () Unit!13555)

(declare-fun choose!1348 (array!29445 array!29447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18245 V!18245 V!18245 V!18245 (_ BitVec 32) Int) Unit!13555)

(assert (=> d!75037 (= lt!211018 (choose!1348 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75037 (validMask!0 mask!1365)))

(assert (=> d!75037 (= (lemmaNoChangeToArrayThenSameMapNoExtras!79 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211018)))

(declare-fun bs!14774 () Bool)

(assert (= bs!14774 d!75037))

(assert (=> bs!14774 m!448921))

(assert (=> bs!14774 m!448919))

(declare-fun m!448959 () Bool)

(assert (=> bs!14774 m!448959))

(assert (=> bs!14774 m!448899))

(assert (=> b!466660 d!75037))

(declare-fun b!466724 () Bool)

(declare-fun e!272968 () Bool)

(assert (=> b!466724 (= e!272968 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466724 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!466725 () Bool)

(declare-fun e!272966 () ListLongMap!7405)

(assert (=> b!466725 (= e!272966 (ListLongMap!7406 Nil!8593))))

(declare-fun b!466726 () Bool)

(declare-fun e!272969 () ListLongMap!7405)

(declare-fun call!30279 () ListLongMap!7405)

(assert (=> b!466726 (= e!272969 call!30279)))

(declare-fun b!466727 () Bool)

(declare-fun e!272971 () Bool)

(declare-fun e!272967 () Bool)

(assert (=> b!466727 (= e!272971 e!272967)))

(declare-fun c!56680 () Bool)

(assert (=> b!466727 (= c!56680 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466728 () Bool)

(declare-fun lt!211035 () Unit!13555)

(declare-fun lt!211033 () Unit!13555)

(assert (=> b!466728 (= lt!211035 lt!211033)))

(declare-fun lt!211034 () ListLongMap!7405)

(declare-fun lt!211038 () (_ BitVec 64))

(declare-fun lt!211037 () V!18245)

(declare-fun lt!211036 () (_ BitVec 64))

(declare-fun contains!2530 (ListLongMap!7405 (_ BitVec 64)) Bool)

(assert (=> b!466728 (not (contains!2530 (+!1646 lt!211034 (tuple2!8479 lt!211038 lt!211037)) lt!211036))))

(declare-fun addStillNotContains!158 (ListLongMap!7405 (_ BitVec 64) V!18245 (_ BitVec 64)) Unit!13555)

(assert (=> b!466728 (= lt!211033 (addStillNotContains!158 lt!211034 lt!211038 lt!211037 lt!211036))))

(assert (=> b!466728 (= lt!211036 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6949 (ValueCell!6084 V!18245) V!18245)

(declare-fun dynLambda!915 (Int (_ BitVec 64)) V!18245)

(assert (=> b!466728 (= lt!211037 (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!466728 (= lt!211038 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!466728 (= lt!211034 call!30279)))

(assert (=> b!466728 (= e!272969 (+!1646 call!30279 (tuple2!8479 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30276 () Bool)

(assert (=> bm!30276 (= call!30279 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!466730 () Bool)

(declare-fun lt!211039 () ListLongMap!7405)

(declare-fun isEmpty!575 (ListLongMap!7405) Bool)

(assert (=> b!466730 (= e!272967 (isEmpty!575 lt!211039))))

(declare-fun b!466731 () Bool)

(assert (=> b!466731 (= e!272966 e!272969)))

(declare-fun c!56682 () Bool)

(assert (=> b!466731 (= c!56682 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466732 () Bool)

(declare-fun e!272970 () Bool)

(assert (=> b!466732 (= e!272971 e!272970)))

(assert (=> b!466732 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun res!279056 () Bool)

(assert (=> b!466732 (= res!279056 (contains!2530 lt!211039 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466732 (=> (not res!279056) (not e!272970))))

(declare-fun b!466733 () Bool)

(assert (=> b!466733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> b!466733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14501 _values!833)))))

(declare-fun apply!323 (ListLongMap!7405 (_ BitVec 64)) V!18245)

(assert (=> b!466733 (= e!272970 (= (apply!323 lt!211039 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!75039 () Bool)

(declare-fun e!272972 () Bool)

(assert (=> d!75039 e!272972))

(declare-fun res!279053 () Bool)

(assert (=> d!75039 (=> (not res!279053) (not e!272972))))

(assert (=> d!75039 (= res!279053 (not (contains!2530 lt!211039 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75039 (= lt!211039 e!272966)))

(declare-fun c!56681 () Bool)

(assert (=> d!75039 (= c!56681 (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75039 (validMask!0 mask!1365)))

(assert (=> d!75039 (= (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211039)))

(declare-fun b!466729 () Bool)

(assert (=> b!466729 (= e!272967 (= lt!211039 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!466734 () Bool)

(declare-fun res!279055 () Bool)

(assert (=> b!466734 (=> (not res!279055) (not e!272972))))

(assert (=> b!466734 (= res!279055 (not (contains!2530 lt!211039 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!466735 () Bool)

(assert (=> b!466735 (= e!272972 e!272971)))

(declare-fun c!56679 () Bool)

(assert (=> b!466735 (= c!56679 e!272968)))

(declare-fun res!279054 () Bool)

(assert (=> b!466735 (=> (not res!279054) (not e!272968))))

(assert (=> b!466735 (= res!279054 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (= (and d!75039 c!56681) b!466725))

(assert (= (and d!75039 (not c!56681)) b!466731))

(assert (= (and b!466731 c!56682) b!466728))

(assert (= (and b!466731 (not c!56682)) b!466726))

(assert (= (or b!466728 b!466726) bm!30276))

(assert (= (and d!75039 res!279053) b!466734))

(assert (= (and b!466734 res!279055) b!466735))

(assert (= (and b!466735 res!279054) b!466724))

(assert (= (and b!466735 c!56679) b!466732))

(assert (= (and b!466735 (not c!56679)) b!466727))

(assert (= (and b!466732 res!279056) b!466733))

(assert (= (and b!466727 c!56680) b!466729))

(assert (= (and b!466727 (not c!56680)) b!466730))

(declare-fun b_lambda!10059 () Bool)

(assert (=> (not b_lambda!10059) (not b!466728)))

(declare-fun t!14560 () Bool)

(declare-fun tb!3919 () Bool)

(assert (=> (and start!41814 (= defaultEntry!841 defaultEntry!841) t!14560) tb!3919))

(declare-fun result!7399 () Bool)

(assert (=> tb!3919 (= result!7399 tp_is_empty!12855)))

(assert (=> b!466728 t!14560))

(declare-fun b_and!19817 () Bool)

(assert (= b_and!19813 (and (=> t!14560 result!7399) b_and!19817)))

(declare-fun b_lambda!10061 () Bool)

(assert (=> (not b_lambda!10061) (not b!466733)))

(assert (=> b!466733 t!14560))

(declare-fun b_and!19819 () Bool)

(assert (= b_and!19817 (and (=> t!14560 result!7399) b_and!19819)))

(declare-fun m!448961 () Bool)

(assert (=> b!466730 m!448961))

(assert (=> b!466732 m!448947))

(assert (=> b!466732 m!448947))

(declare-fun m!448963 () Bool)

(assert (=> b!466732 m!448963))

(declare-fun m!448965 () Bool)

(assert (=> b!466728 m!448965))

(assert (=> b!466728 m!448947))

(declare-fun m!448967 () Bool)

(assert (=> b!466728 m!448967))

(declare-fun m!448969 () Bool)

(assert (=> b!466728 m!448969))

(assert (=> b!466728 m!448967))

(declare-fun m!448971 () Bool)

(assert (=> b!466728 m!448971))

(declare-fun m!448973 () Bool)

(assert (=> b!466728 m!448973))

(declare-fun m!448975 () Bool)

(assert (=> b!466728 m!448975))

(declare-fun m!448977 () Bool)

(assert (=> b!466728 m!448977))

(assert (=> b!466728 m!448971))

(assert (=> b!466728 m!448975))

(declare-fun m!448979 () Bool)

(assert (=> b!466734 m!448979))

(declare-fun m!448981 () Bool)

(assert (=> bm!30276 m!448981))

(assert (=> b!466724 m!448947))

(assert (=> b!466724 m!448947))

(assert (=> b!466724 m!448949))

(declare-fun m!448983 () Bool)

(assert (=> d!75039 m!448983))

(assert (=> d!75039 m!448899))

(assert (=> b!466733 m!448947))

(assert (=> b!466733 m!448967))

(assert (=> b!466733 m!448971))

(assert (=> b!466733 m!448967))

(assert (=> b!466733 m!448971))

(assert (=> b!466733 m!448973))

(assert (=> b!466733 m!448947))

(declare-fun m!448985 () Bool)

(assert (=> b!466733 m!448985))

(assert (=> b!466729 m!448981))

(assert (=> b!466731 m!448947))

(assert (=> b!466731 m!448947))

(assert (=> b!466731 m!448949))

(assert (=> b!466660 d!75039))

(declare-fun b!466738 () Bool)

(declare-fun e!272975 () Bool)

(assert (=> b!466738 (= e!272975 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466738 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!466739 () Bool)

(declare-fun e!272973 () ListLongMap!7405)

(assert (=> b!466739 (= e!272973 (ListLongMap!7406 Nil!8593))))

(declare-fun b!466740 () Bool)

(declare-fun e!272976 () ListLongMap!7405)

(declare-fun call!30280 () ListLongMap!7405)

(assert (=> b!466740 (= e!272976 call!30280)))

(declare-fun b!466741 () Bool)

(declare-fun e!272978 () Bool)

(declare-fun e!272974 () Bool)

(assert (=> b!466741 (= e!272978 e!272974)))

(declare-fun c!56684 () Bool)

(assert (=> b!466741 (= c!56684 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466742 () Bool)

(declare-fun lt!211042 () Unit!13555)

(declare-fun lt!211040 () Unit!13555)

(assert (=> b!466742 (= lt!211042 lt!211040)))

(declare-fun lt!211043 () (_ BitVec 64))

(declare-fun lt!211041 () ListLongMap!7405)

(declare-fun lt!211044 () V!18245)

(declare-fun lt!211045 () (_ BitVec 64))

(assert (=> b!466742 (not (contains!2530 (+!1646 lt!211041 (tuple2!8479 lt!211045 lt!211044)) lt!211043))))

(assert (=> b!466742 (= lt!211040 (addStillNotContains!158 lt!211041 lt!211045 lt!211044 lt!211043))))

(assert (=> b!466742 (= lt!211043 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!466742 (= lt!211044 (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!466742 (= lt!211045 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!466742 (= lt!211041 call!30280)))

(assert (=> b!466742 (= e!272976 (+!1646 call!30280 (tuple2!8479 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30277 () Bool)

(assert (=> bm!30277 (= call!30280 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!466744 () Bool)

(declare-fun lt!211046 () ListLongMap!7405)

(assert (=> b!466744 (= e!272974 (isEmpty!575 lt!211046))))

(declare-fun b!466745 () Bool)

(assert (=> b!466745 (= e!272973 e!272976)))

(declare-fun c!56686 () Bool)

(assert (=> b!466745 (= c!56686 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466746 () Bool)

(declare-fun e!272977 () Bool)

(assert (=> b!466746 (= e!272978 e!272977)))

(assert (=> b!466746 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun res!279060 () Bool)

(assert (=> b!466746 (= res!279060 (contains!2530 lt!211046 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466746 (=> (not res!279060) (not e!272977))))

(declare-fun b!466747 () Bool)

(assert (=> b!466747 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> b!466747 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14501 _values!833)))))

(assert (=> b!466747 (= e!272977 (= (apply!323 lt!211046 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!75041 () Bool)

(declare-fun e!272979 () Bool)

(assert (=> d!75041 e!272979))

(declare-fun res!279057 () Bool)

(assert (=> d!75041 (=> (not res!279057) (not e!272979))))

(assert (=> d!75041 (= res!279057 (not (contains!2530 lt!211046 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75041 (= lt!211046 e!272973)))

(declare-fun c!56685 () Bool)

(assert (=> d!75041 (= c!56685 (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75041 (validMask!0 mask!1365)))

(assert (=> d!75041 (= (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211046)))

(declare-fun b!466743 () Bool)

(assert (=> b!466743 (= e!272974 (= lt!211046 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!466748 () Bool)

(declare-fun res!279059 () Bool)

(assert (=> b!466748 (=> (not res!279059) (not e!272979))))

(assert (=> b!466748 (= res!279059 (not (contains!2530 lt!211046 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!466749 () Bool)

(assert (=> b!466749 (= e!272979 e!272978)))

(declare-fun c!56683 () Bool)

(assert (=> b!466749 (= c!56683 e!272975)))

(declare-fun res!279058 () Bool)

(assert (=> b!466749 (=> (not res!279058) (not e!272975))))

(assert (=> b!466749 (= res!279058 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (= (and d!75041 c!56685) b!466739))

(assert (= (and d!75041 (not c!56685)) b!466745))

(assert (= (and b!466745 c!56686) b!466742))

(assert (= (and b!466745 (not c!56686)) b!466740))

(assert (= (or b!466742 b!466740) bm!30277))

(assert (= (and d!75041 res!279057) b!466748))

(assert (= (and b!466748 res!279059) b!466749))

(assert (= (and b!466749 res!279058) b!466738))

(assert (= (and b!466749 c!56683) b!466746))

(assert (= (and b!466749 (not c!56683)) b!466741))

(assert (= (and b!466746 res!279060) b!466747))

(assert (= (and b!466741 c!56684) b!466743))

(assert (= (and b!466741 (not c!56684)) b!466744))

(declare-fun b_lambda!10063 () Bool)

(assert (=> (not b_lambda!10063) (not b!466742)))

(assert (=> b!466742 t!14560))

(declare-fun b_and!19821 () Bool)

(assert (= b_and!19819 (and (=> t!14560 result!7399) b_and!19821)))

(declare-fun b_lambda!10065 () Bool)

(assert (=> (not b_lambda!10065) (not b!466747)))

(assert (=> b!466747 t!14560))

(declare-fun b_and!19823 () Bool)

(assert (= b_and!19821 (and (=> t!14560 result!7399) b_and!19823)))

(declare-fun m!448987 () Bool)

(assert (=> b!466744 m!448987))

(assert (=> b!466746 m!448947))

(assert (=> b!466746 m!448947))

(declare-fun m!448989 () Bool)

(assert (=> b!466746 m!448989))

(declare-fun m!448991 () Bool)

(assert (=> b!466742 m!448991))

(assert (=> b!466742 m!448947))

(assert (=> b!466742 m!448967))

(declare-fun m!448993 () Bool)

(assert (=> b!466742 m!448993))

(assert (=> b!466742 m!448967))

(assert (=> b!466742 m!448971))

(assert (=> b!466742 m!448973))

(declare-fun m!448995 () Bool)

(assert (=> b!466742 m!448995))

(declare-fun m!448997 () Bool)

(assert (=> b!466742 m!448997))

(assert (=> b!466742 m!448971))

(assert (=> b!466742 m!448995))

(declare-fun m!448999 () Bool)

(assert (=> b!466748 m!448999))

(declare-fun m!449001 () Bool)

(assert (=> bm!30277 m!449001))

(assert (=> b!466738 m!448947))

(assert (=> b!466738 m!448947))

(assert (=> b!466738 m!448949))

(declare-fun m!449003 () Bool)

(assert (=> d!75041 m!449003))

(assert (=> d!75041 m!448899))

(assert (=> b!466747 m!448947))

(assert (=> b!466747 m!448967))

(assert (=> b!466747 m!448971))

(assert (=> b!466747 m!448967))

(assert (=> b!466747 m!448971))

(assert (=> b!466747 m!448973))

(assert (=> b!466747 m!448947))

(declare-fun m!449005 () Bool)

(assert (=> b!466747 m!449005))

(assert (=> b!466743 m!449001))

(assert (=> b!466745 m!448947))

(assert (=> b!466745 m!448947))

(assert (=> b!466745 m!448949))

(assert (=> b!466660 d!75041))

(declare-fun b!466760 () Bool)

(declare-fun e!272989 () Bool)

(declare-fun contains!2531 (List!8595 (_ BitVec 64)) Bool)

(assert (=> b!466760 (= e!272989 (contains!2531 Nil!8592 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30280 () Bool)

(declare-fun call!30283 () Bool)

(declare-fun c!56689 () Bool)

(assert (=> bm!30280 (= call!30283 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56689 (Cons!8591 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000) Nil!8592) Nil!8592)))))

(declare-fun b!466761 () Bool)

(declare-fun e!272990 () Bool)

(assert (=> b!466761 (= e!272990 call!30283)))

(declare-fun b!466762 () Bool)

(assert (=> b!466762 (= e!272990 call!30283)))

(declare-fun b!466763 () Bool)

(declare-fun e!272991 () Bool)

(declare-fun e!272988 () Bool)

(assert (=> b!466763 (= e!272991 e!272988)))

(declare-fun res!279069 () Bool)

(assert (=> b!466763 (=> (not res!279069) (not e!272988))))

(assert (=> b!466763 (= res!279069 (not e!272989))))

(declare-fun res!279067 () Bool)

(assert (=> b!466763 (=> (not res!279067) (not e!272989))))

(assert (=> b!466763 (= res!279067 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75043 () Bool)

(declare-fun res!279068 () Bool)

(assert (=> d!75043 (=> res!279068 e!272991)))

(assert (=> d!75043 (= res!279068 (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75043 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8592) e!272991)))

(declare-fun b!466764 () Bool)

(assert (=> b!466764 (= e!272988 e!272990)))

(assert (=> b!466764 (= c!56689 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75043 (not res!279068)) b!466763))

(assert (= (and b!466763 res!279067) b!466760))

(assert (= (and b!466763 res!279069) b!466764))

(assert (= (and b!466764 c!56689) b!466761))

(assert (= (and b!466764 (not c!56689)) b!466762))

(assert (= (or b!466761 b!466762) bm!30280))

(assert (=> b!466760 m!448947))

(assert (=> b!466760 m!448947))

(declare-fun m!449007 () Bool)

(assert (=> b!466760 m!449007))

(assert (=> bm!30280 m!448947))

(declare-fun m!449009 () Bool)

(assert (=> bm!30280 m!449009))

(assert (=> b!466763 m!448947))

(assert (=> b!466763 m!448947))

(assert (=> b!466763 m!448949))

(assert (=> b!466764 m!448947))

(assert (=> b!466764 m!448947))

(assert (=> b!466764 m!448949))

(assert (=> b!466652 d!75043))

(declare-fun d!75045 () Bool)

(assert (=> d!75045 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41814 d!75045))

(declare-fun d!75047 () Bool)

(assert (=> d!75047 (= (array_inv!10196 _keys!1025) (bvsge (size!14500 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41814 d!75047))

(declare-fun d!75049 () Bool)

(assert (=> d!75049 (= (array_inv!10197 _values!833) (bvsge (size!14501 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41814 d!75049))

(declare-fun d!75051 () Bool)

(declare-fun e!272994 () Bool)

(assert (=> d!75051 e!272994))

(declare-fun res!279075 () Bool)

(assert (=> d!75051 (=> (not res!279075) (not e!272994))))

(declare-fun lt!211058 () ListLongMap!7405)

(assert (=> d!75051 (= res!279075 (contains!2530 lt!211058 (_1!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lt!211057 () List!8596)

(assert (=> d!75051 (= lt!211058 (ListLongMap!7406 lt!211057))))

(declare-fun lt!211055 () Unit!13555)

(declare-fun lt!211056 () Unit!13555)

(assert (=> d!75051 (= lt!211055 lt!211056)))

(declare-datatypes ((Option!382 0))(
  ( (Some!381 (v!8758 V!18245)) (None!380) )
))
(declare-fun getValueByKey!376 (List!8596 (_ BitVec 64)) Option!382)

(assert (=> d!75051 (= (getValueByKey!376 lt!211057 (_1!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!381 (_2!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lemmaContainsTupThenGetReturnValue!200 (List!8596 (_ BitVec 64) V!18245) Unit!13555)

(assert (=> d!75051 (= lt!211056 (lemmaContainsTupThenGetReturnValue!200 lt!211057 (_1!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun insertStrictlySorted!202 (List!8596 (_ BitVec 64) V!18245) List!8596)

(assert (=> d!75051 (= lt!211057 (insertStrictlySorted!202 (toList!3718 (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841)) (_1!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(assert (=> d!75051 (= (+!1646 (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) lt!211058)))

(declare-fun b!466769 () Bool)

(declare-fun res!279074 () Bool)

(assert (=> b!466769 (=> (not res!279074) (not e!272994))))

(assert (=> b!466769 (= res!279074 (= (getValueByKey!376 (toList!3718 lt!211058) (_1!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!381 (_2!4249 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))))

(declare-fun b!466770 () Bool)

(declare-fun contains!2532 (List!8596 tuple2!8478) Bool)

(assert (=> b!466770 (= e!272994 (contains!2532 (toList!3718 lt!211058) (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(assert (= (and d!75051 res!279075) b!466769))

(assert (= (and b!466769 res!279074) b!466770))

(declare-fun m!449011 () Bool)

(assert (=> d!75051 m!449011))

(declare-fun m!449013 () Bool)

(assert (=> d!75051 m!449013))

(declare-fun m!449015 () Bool)

(assert (=> d!75051 m!449015))

(declare-fun m!449017 () Bool)

(assert (=> d!75051 m!449017))

(declare-fun m!449019 () Bool)

(assert (=> b!466769 m!449019))

(declare-fun m!449021 () Bool)

(assert (=> b!466770 m!449021))

(assert (=> b!466656 d!75051))

(declare-fun bm!30295 () Bool)

(declare-fun call!30300 () ListLongMap!7405)

(declare-fun call!30299 () ListLongMap!7405)

(assert (=> bm!30295 (= call!30300 call!30299)))

(declare-fun b!466813 () Bool)

(declare-fun e!273025 () ListLongMap!7405)

(declare-fun call!30303 () ListLongMap!7405)

(assert (=> b!466813 (= e!273025 call!30303)))

(declare-fun b!466814 () Bool)

(declare-fun e!273024 () Bool)

(declare-fun e!273027 () Bool)

(assert (=> b!466814 (= e!273024 e!273027)))

(declare-fun c!56703 () Bool)

(assert (=> b!466814 (= c!56703 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30296 () Bool)

(declare-fun call!30301 () Bool)

(declare-fun lt!211111 () ListLongMap!7405)

(assert (=> bm!30296 (= call!30301 (contains!2530 lt!211111 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!466815 () Bool)

(declare-fun e!273026 () Bool)

(declare-fun e!273022 () Bool)

(assert (=> b!466815 (= e!273026 e!273022)))

(declare-fun res!279099 () Bool)

(assert (=> b!466815 (= res!279099 call!30301)))

(assert (=> b!466815 (=> (not res!279099) (not e!273022))))

(declare-fun b!466816 () Bool)

(declare-fun e!273032 () Bool)

(assert (=> b!466816 (= e!273032 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466817 () Bool)

(declare-fun res!279094 () Bool)

(assert (=> b!466817 (=> (not res!279094) (not e!273024))))

(declare-fun e!273021 () Bool)

(assert (=> b!466817 (= res!279094 e!273021)))

(declare-fun res!279098 () Bool)

(assert (=> b!466817 (=> res!279098 e!273021)))

(assert (=> b!466817 (= res!279098 (not e!273032))))

(declare-fun res!279101 () Bool)

(assert (=> b!466817 (=> (not res!279101) (not e!273032))))

(assert (=> b!466817 (= res!279101 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466818 () Bool)

(declare-fun e!273030 () ListLongMap!7405)

(declare-fun call!30302 () ListLongMap!7405)

(assert (=> b!466818 (= e!273030 (+!1646 call!30302 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun d!75053 () Bool)

(assert (=> d!75053 e!273024))

(declare-fun res!279102 () Bool)

(assert (=> d!75053 (=> (not res!279102) (not e!273024))))

(assert (=> d!75053 (= res!279102 (or (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))))

(declare-fun lt!211108 () ListLongMap!7405)

(assert (=> d!75053 (= lt!211111 lt!211108)))

(declare-fun lt!211116 () Unit!13555)

(declare-fun e!273023 () Unit!13555)

(assert (=> d!75053 (= lt!211116 e!273023)))

(declare-fun c!56702 () Bool)

(declare-fun e!273029 () Bool)

(assert (=> d!75053 (= c!56702 e!273029)))

(declare-fun res!279097 () Bool)

(assert (=> d!75053 (=> (not res!279097) (not e!273029))))

(assert (=> d!75053 (= res!279097 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75053 (= lt!211108 e!273030)))

(declare-fun c!56705 () Bool)

(assert (=> d!75053 (= c!56705 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75053 (validMask!0 mask!1365)))

(assert (=> d!75053 (= (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211111)))

(declare-fun b!466819 () Bool)

(assert (=> b!466819 (= e!273026 (not call!30301))))

(declare-fun b!466820 () Bool)

(declare-fun e!273033 () Bool)

(assert (=> b!466820 (= e!273033 (= (apply!323 lt!211111 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!466820 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14501 _values!833)))))

(assert (=> b!466820 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun bm!30297 () Bool)

(assert (=> bm!30297 (= call!30299 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466821 () Bool)

(assert (=> b!466821 (= e!273021 e!273033)))

(declare-fun res!279095 () Bool)

(assert (=> b!466821 (=> (not res!279095) (not e!273033))))

(assert (=> b!466821 (= res!279095 (contains!2530 lt!211111 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466821 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466822 () Bool)

(declare-fun call!30298 () ListLongMap!7405)

(assert (=> b!466822 (= e!273025 call!30298)))

(declare-fun b!466823 () Bool)

(assert (=> b!466823 (= e!273029 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466824 () Bool)

(declare-fun c!56704 () Bool)

(assert (=> b!466824 (= c!56704 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!273031 () ListLongMap!7405)

(assert (=> b!466824 (= e!273031 e!273025)))

(declare-fun bm!30298 () Bool)

(assert (=> bm!30298 (= call!30298 call!30300)))

(declare-fun b!466825 () Bool)

(declare-fun res!279100 () Bool)

(assert (=> b!466825 (=> (not res!279100) (not e!273024))))

(assert (=> b!466825 (= res!279100 e!273026)))

(declare-fun c!56706 () Bool)

(assert (=> b!466825 (= c!56706 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!466826 () Bool)

(assert (=> b!466826 (= e!273030 e!273031)))

(declare-fun c!56707 () Bool)

(assert (=> b!466826 (= c!56707 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!466827 () Bool)

(declare-fun Unit!13559 () Unit!13555)

(assert (=> b!466827 (= e!273023 Unit!13559)))

(declare-fun b!466828 () Bool)

(declare-fun lt!211115 () Unit!13555)

(assert (=> b!466828 (= e!273023 lt!211115)))

(declare-fun lt!211117 () ListLongMap!7405)

(assert (=> b!466828 (= lt!211117 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211113 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211113 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211103 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211103 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211124 () Unit!13555)

(declare-fun addStillContains!286 (ListLongMap!7405 (_ BitVec 64) V!18245 (_ BitVec 64)) Unit!13555)

(assert (=> b!466828 (= lt!211124 (addStillContains!286 lt!211117 lt!211113 zeroValue!794 lt!211103))))

(assert (=> b!466828 (contains!2530 (+!1646 lt!211117 (tuple2!8479 lt!211113 zeroValue!794)) lt!211103)))

(declare-fun lt!211120 () Unit!13555)

(assert (=> b!466828 (= lt!211120 lt!211124)))

(declare-fun lt!211110 () ListLongMap!7405)

(assert (=> b!466828 (= lt!211110 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211119 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211119 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211122 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211122 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211105 () Unit!13555)

(declare-fun addApplyDifferent!286 (ListLongMap!7405 (_ BitVec 64) V!18245 (_ BitVec 64)) Unit!13555)

(assert (=> b!466828 (= lt!211105 (addApplyDifferent!286 lt!211110 lt!211119 minValueBefore!38 lt!211122))))

(assert (=> b!466828 (= (apply!323 (+!1646 lt!211110 (tuple2!8479 lt!211119 minValueBefore!38)) lt!211122) (apply!323 lt!211110 lt!211122))))

(declare-fun lt!211118 () Unit!13555)

(assert (=> b!466828 (= lt!211118 lt!211105)))

(declare-fun lt!211121 () ListLongMap!7405)

(assert (=> b!466828 (= lt!211121 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211106 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211106 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211109 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211109 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211112 () Unit!13555)

(assert (=> b!466828 (= lt!211112 (addApplyDifferent!286 lt!211121 lt!211106 zeroValue!794 lt!211109))))

(assert (=> b!466828 (= (apply!323 (+!1646 lt!211121 (tuple2!8479 lt!211106 zeroValue!794)) lt!211109) (apply!323 lt!211121 lt!211109))))

(declare-fun lt!211114 () Unit!13555)

(assert (=> b!466828 (= lt!211114 lt!211112)))

(declare-fun lt!211104 () ListLongMap!7405)

(assert (=> b!466828 (= lt!211104 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211107 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211107 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211123 () (_ BitVec 64))

(assert (=> b!466828 (= lt!211123 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!466828 (= lt!211115 (addApplyDifferent!286 lt!211104 lt!211107 minValueBefore!38 lt!211123))))

(assert (=> b!466828 (= (apply!323 (+!1646 lt!211104 (tuple2!8479 lt!211107 minValueBefore!38)) lt!211123) (apply!323 lt!211104 lt!211123))))

(declare-fun b!466829 () Bool)

(declare-fun e!273028 () Bool)

(assert (=> b!466829 (= e!273028 (= (apply!323 lt!211111 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun bm!30299 () Bool)

(declare-fun call!30304 () Bool)

(assert (=> bm!30299 (= call!30304 (contains!2530 lt!211111 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30300 () Bool)

(assert (=> bm!30300 (= call!30303 call!30302)))

(declare-fun b!466830 () Bool)

(assert (=> b!466830 (= e!273027 (not call!30304))))

(declare-fun b!466831 () Bool)

(assert (=> b!466831 (= e!273031 call!30303)))

(declare-fun b!466832 () Bool)

(assert (=> b!466832 (= e!273022 (= (apply!323 lt!211111 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun bm!30301 () Bool)

(assert (=> bm!30301 (= call!30302 (+!1646 (ite c!56705 call!30299 (ite c!56707 call!30300 call!30298)) (ite (or c!56705 c!56707) (tuple2!8479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!466833 () Bool)

(assert (=> b!466833 (= e!273027 e!273028)))

(declare-fun res!279096 () Bool)

(assert (=> b!466833 (= res!279096 call!30304)))

(assert (=> b!466833 (=> (not res!279096) (not e!273028))))

(assert (= (and d!75053 c!56705) b!466818))

(assert (= (and d!75053 (not c!56705)) b!466826))

(assert (= (and b!466826 c!56707) b!466831))

(assert (= (and b!466826 (not c!56707)) b!466824))

(assert (= (and b!466824 c!56704) b!466813))

(assert (= (and b!466824 (not c!56704)) b!466822))

(assert (= (or b!466813 b!466822) bm!30298))

(assert (= (or b!466831 bm!30298) bm!30295))

(assert (= (or b!466831 b!466813) bm!30300))

(assert (= (or b!466818 bm!30295) bm!30297))

(assert (= (or b!466818 bm!30300) bm!30301))

(assert (= (and d!75053 res!279097) b!466823))

(assert (= (and d!75053 c!56702) b!466828))

(assert (= (and d!75053 (not c!56702)) b!466827))

(assert (= (and d!75053 res!279102) b!466817))

(assert (= (and b!466817 res!279101) b!466816))

(assert (= (and b!466817 (not res!279098)) b!466821))

(assert (= (and b!466821 res!279095) b!466820))

(assert (= (and b!466817 res!279094) b!466825))

(assert (= (and b!466825 c!56706) b!466815))

(assert (= (and b!466825 (not c!56706)) b!466819))

(assert (= (and b!466815 res!279099) b!466832))

(assert (= (or b!466815 b!466819) bm!30296))

(assert (= (and b!466825 res!279100) b!466814))

(assert (= (and b!466814 c!56703) b!466833))

(assert (= (and b!466814 (not c!56703)) b!466830))

(assert (= (and b!466833 res!279096) b!466829))

(assert (= (or b!466833 b!466830) bm!30299))

(declare-fun b_lambda!10067 () Bool)

(assert (=> (not b_lambda!10067) (not b!466820)))

(assert (=> b!466820 t!14560))

(declare-fun b_and!19825 () Bool)

(assert (= b_and!19823 (and (=> t!14560 result!7399) b_and!19825)))

(declare-fun m!449023 () Bool)

(assert (=> b!466832 m!449023))

(assert (=> b!466820 m!448947))

(declare-fun m!449025 () Bool)

(assert (=> b!466820 m!449025))

(assert (=> b!466820 m!448967))

(assert (=> b!466820 m!448971))

(assert (=> b!466820 m!448947))

(assert (=> b!466820 m!448967))

(assert (=> b!466820 m!448971))

(assert (=> b!466820 m!448973))

(assert (=> bm!30297 m!448921))

(assert (=> b!466823 m!448947))

(assert (=> b!466823 m!448947))

(assert (=> b!466823 m!448949))

(declare-fun m!449027 () Bool)

(assert (=> bm!30301 m!449027))

(assert (=> b!466821 m!448947))

(assert (=> b!466821 m!448947))

(declare-fun m!449029 () Bool)

(assert (=> b!466821 m!449029))

(declare-fun m!449031 () Bool)

(assert (=> b!466828 m!449031))

(declare-fun m!449033 () Bool)

(assert (=> b!466828 m!449033))

(declare-fun m!449035 () Bool)

(assert (=> b!466828 m!449035))

(declare-fun m!449037 () Bool)

(assert (=> b!466828 m!449037))

(declare-fun m!449039 () Bool)

(assert (=> b!466828 m!449039))

(declare-fun m!449041 () Bool)

(assert (=> b!466828 m!449041))

(assert (=> b!466828 m!448947))

(declare-fun m!449043 () Bool)

(assert (=> b!466828 m!449043))

(declare-fun m!449045 () Bool)

(assert (=> b!466828 m!449045))

(declare-fun m!449047 () Bool)

(assert (=> b!466828 m!449047))

(assert (=> b!466828 m!449031))

(declare-fun m!449049 () Bool)

(assert (=> b!466828 m!449049))

(declare-fun m!449051 () Bool)

(assert (=> b!466828 m!449051))

(assert (=> b!466828 m!449033))

(declare-fun m!449053 () Bool)

(assert (=> b!466828 m!449053))

(assert (=> b!466828 m!449051))

(declare-fun m!449055 () Bool)

(assert (=> b!466828 m!449055))

(assert (=> b!466828 m!449045))

(declare-fun m!449057 () Bool)

(assert (=> b!466828 m!449057))

(assert (=> b!466828 m!448921))

(declare-fun m!449059 () Bool)

(assert (=> b!466828 m!449059))

(assert (=> d!75053 m!448899))

(declare-fun m!449061 () Bool)

(assert (=> bm!30299 m!449061))

(assert (=> b!466816 m!448947))

(assert (=> b!466816 m!448947))

(assert (=> b!466816 m!448949))

(declare-fun m!449063 () Bool)

(assert (=> bm!30296 m!449063))

(declare-fun m!449065 () Bool)

(assert (=> b!466818 m!449065))

(declare-fun m!449067 () Bool)

(assert (=> b!466829 m!449067))

(assert (=> b!466656 d!75053))

(declare-fun bm!30302 () Bool)

(declare-fun call!30307 () ListLongMap!7405)

(declare-fun call!30306 () ListLongMap!7405)

(assert (=> bm!30302 (= call!30307 call!30306)))

(declare-fun b!466834 () Bool)

(declare-fun e!273038 () ListLongMap!7405)

(declare-fun call!30310 () ListLongMap!7405)

(assert (=> b!466834 (= e!273038 call!30310)))

(declare-fun b!466835 () Bool)

(declare-fun e!273037 () Bool)

(declare-fun e!273040 () Bool)

(assert (=> b!466835 (= e!273037 e!273040)))

(declare-fun c!56709 () Bool)

(assert (=> b!466835 (= c!56709 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30303 () Bool)

(declare-fun call!30308 () Bool)

(declare-fun lt!211133 () ListLongMap!7405)

(assert (=> bm!30303 (= call!30308 (contains!2530 lt!211133 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!466836 () Bool)

(declare-fun e!273039 () Bool)

(declare-fun e!273035 () Bool)

(assert (=> b!466836 (= e!273039 e!273035)))

(declare-fun res!279108 () Bool)

(assert (=> b!466836 (= res!279108 call!30308)))

(assert (=> b!466836 (=> (not res!279108) (not e!273035))))

(declare-fun b!466837 () Bool)

(declare-fun e!273045 () Bool)

(assert (=> b!466837 (= e!273045 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466838 () Bool)

(declare-fun res!279103 () Bool)

(assert (=> b!466838 (=> (not res!279103) (not e!273037))))

(declare-fun e!273034 () Bool)

(assert (=> b!466838 (= res!279103 e!273034)))

(declare-fun res!279107 () Bool)

(assert (=> b!466838 (=> res!279107 e!273034)))

(assert (=> b!466838 (= res!279107 (not e!273045))))

(declare-fun res!279110 () Bool)

(assert (=> b!466838 (=> (not res!279110) (not e!273045))))

(assert (=> b!466838 (= res!279110 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466839 () Bool)

(declare-fun e!273043 () ListLongMap!7405)

(declare-fun call!30309 () ListLongMap!7405)

(assert (=> b!466839 (= e!273043 (+!1646 call!30309 (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun d!75055 () Bool)

(assert (=> d!75055 e!273037))

(declare-fun res!279111 () Bool)

(assert (=> d!75055 (=> (not res!279111) (not e!273037))))

(assert (=> d!75055 (= res!279111 (or (bvsge #b00000000000000000000000000000000 (size!14500 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))))

(declare-fun lt!211130 () ListLongMap!7405)

(assert (=> d!75055 (= lt!211133 lt!211130)))

(declare-fun lt!211138 () Unit!13555)

(declare-fun e!273036 () Unit!13555)

(assert (=> d!75055 (= lt!211138 e!273036)))

(declare-fun c!56708 () Bool)

(declare-fun e!273042 () Bool)

(assert (=> d!75055 (= c!56708 e!273042)))

(declare-fun res!279106 () Bool)

(assert (=> d!75055 (=> (not res!279106) (not e!273042))))

(assert (=> d!75055 (= res!279106 (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(assert (=> d!75055 (= lt!211130 e!273043)))

(declare-fun c!56711 () Bool)

(assert (=> d!75055 (= c!56711 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75055 (validMask!0 mask!1365)))

(assert (=> d!75055 (= (getCurrentListMap!2155 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211133)))

(declare-fun b!466840 () Bool)

(assert (=> b!466840 (= e!273039 (not call!30308))))

(declare-fun e!273046 () Bool)

(declare-fun b!466841 () Bool)

(assert (=> b!466841 (= e!273046 (= (apply!323 lt!211133 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)) (get!6949 (select (arr!14149 _values!833) #b00000000000000000000000000000000) (dynLambda!915 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!466841 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14501 _values!833)))))

(assert (=> b!466841 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun bm!30304 () Bool)

(assert (=> bm!30304 (= call!30306 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466842 () Bool)

(assert (=> b!466842 (= e!273034 e!273046)))

(declare-fun res!279104 () Bool)

(assert (=> b!466842 (=> (not res!279104) (not e!273046))))

(assert (=> b!466842 (= res!279104 (contains!2530 lt!211133 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466842 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14500 _keys!1025)))))

(declare-fun b!466843 () Bool)

(declare-fun call!30305 () ListLongMap!7405)

(assert (=> b!466843 (= e!273038 call!30305)))

(declare-fun b!466844 () Bool)

(assert (=> b!466844 (= e!273042 (validKeyInArray!0 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!466845 () Bool)

(declare-fun c!56710 () Bool)

(assert (=> b!466845 (= c!56710 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!273044 () ListLongMap!7405)

(assert (=> b!466845 (= e!273044 e!273038)))

(declare-fun bm!30305 () Bool)

(assert (=> bm!30305 (= call!30305 call!30307)))

(declare-fun b!466846 () Bool)

(declare-fun res!279109 () Bool)

(assert (=> b!466846 (=> (not res!279109) (not e!273037))))

(assert (=> b!466846 (= res!279109 e!273039)))

(declare-fun c!56712 () Bool)

(assert (=> b!466846 (= c!56712 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!466847 () Bool)

(assert (=> b!466847 (= e!273043 e!273044)))

(declare-fun c!56713 () Bool)

(assert (=> b!466847 (= c!56713 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!466848 () Bool)

(declare-fun Unit!13560 () Unit!13555)

(assert (=> b!466848 (= e!273036 Unit!13560)))

(declare-fun b!466849 () Bool)

(declare-fun lt!211137 () Unit!13555)

(assert (=> b!466849 (= e!273036 lt!211137)))

(declare-fun lt!211139 () ListLongMap!7405)

(assert (=> b!466849 (= lt!211139 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211135 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211135 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211125 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211125 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211146 () Unit!13555)

(assert (=> b!466849 (= lt!211146 (addStillContains!286 lt!211139 lt!211135 zeroValue!794 lt!211125))))

(assert (=> b!466849 (contains!2530 (+!1646 lt!211139 (tuple2!8479 lt!211135 zeroValue!794)) lt!211125)))

(declare-fun lt!211142 () Unit!13555)

(assert (=> b!466849 (= lt!211142 lt!211146)))

(declare-fun lt!211132 () ListLongMap!7405)

(assert (=> b!466849 (= lt!211132 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211141 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211141 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211144 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211144 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211127 () Unit!13555)

(assert (=> b!466849 (= lt!211127 (addApplyDifferent!286 lt!211132 lt!211141 minValueAfter!38 lt!211144))))

(assert (=> b!466849 (= (apply!323 (+!1646 lt!211132 (tuple2!8479 lt!211141 minValueAfter!38)) lt!211144) (apply!323 lt!211132 lt!211144))))

(declare-fun lt!211140 () Unit!13555)

(assert (=> b!466849 (= lt!211140 lt!211127)))

(declare-fun lt!211143 () ListLongMap!7405)

(assert (=> b!466849 (= lt!211143 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211128 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211128 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211131 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211131 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211134 () Unit!13555)

(assert (=> b!466849 (= lt!211134 (addApplyDifferent!286 lt!211143 lt!211128 zeroValue!794 lt!211131))))

(assert (=> b!466849 (= (apply!323 (+!1646 lt!211143 (tuple2!8479 lt!211128 zeroValue!794)) lt!211131) (apply!323 lt!211143 lt!211131))))

(declare-fun lt!211136 () Unit!13555)

(assert (=> b!466849 (= lt!211136 lt!211134)))

(declare-fun lt!211126 () ListLongMap!7405)

(assert (=> b!466849 (= lt!211126 (getCurrentListMapNoExtraKeys!1884 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211129 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211129 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211145 () (_ BitVec 64))

(assert (=> b!466849 (= lt!211145 (select (arr!14148 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!466849 (= lt!211137 (addApplyDifferent!286 lt!211126 lt!211129 minValueAfter!38 lt!211145))))

(assert (=> b!466849 (= (apply!323 (+!1646 lt!211126 (tuple2!8479 lt!211129 minValueAfter!38)) lt!211145) (apply!323 lt!211126 lt!211145))))

(declare-fun b!466850 () Bool)

(declare-fun e!273041 () Bool)

(assert (=> b!466850 (= e!273041 (= (apply!323 lt!211133 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun bm!30306 () Bool)

(declare-fun call!30311 () Bool)

(assert (=> bm!30306 (= call!30311 (contains!2530 lt!211133 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30307 () Bool)

(assert (=> bm!30307 (= call!30310 call!30309)))

(declare-fun b!466851 () Bool)

(assert (=> b!466851 (= e!273040 (not call!30311))))

(declare-fun b!466852 () Bool)

(assert (=> b!466852 (= e!273044 call!30310)))

(declare-fun b!466853 () Bool)

(assert (=> b!466853 (= e!273035 (= (apply!323 lt!211133 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun bm!30308 () Bool)

(assert (=> bm!30308 (= call!30309 (+!1646 (ite c!56711 call!30306 (ite c!56713 call!30307 call!30305)) (ite (or c!56711 c!56713) (tuple2!8479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8479 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!466854 () Bool)

(assert (=> b!466854 (= e!273040 e!273041)))

(declare-fun res!279105 () Bool)

(assert (=> b!466854 (= res!279105 call!30311)))

(assert (=> b!466854 (=> (not res!279105) (not e!273041))))

(assert (= (and d!75055 c!56711) b!466839))

(assert (= (and d!75055 (not c!56711)) b!466847))

(assert (= (and b!466847 c!56713) b!466852))

(assert (= (and b!466847 (not c!56713)) b!466845))

(assert (= (and b!466845 c!56710) b!466834))

(assert (= (and b!466845 (not c!56710)) b!466843))

(assert (= (or b!466834 b!466843) bm!30305))

(assert (= (or b!466852 bm!30305) bm!30302))

(assert (= (or b!466852 b!466834) bm!30307))

(assert (= (or b!466839 bm!30302) bm!30304))

(assert (= (or b!466839 bm!30307) bm!30308))

(assert (= (and d!75055 res!279106) b!466844))

(assert (= (and d!75055 c!56708) b!466849))

(assert (= (and d!75055 (not c!56708)) b!466848))

(assert (= (and d!75055 res!279111) b!466838))

(assert (= (and b!466838 res!279110) b!466837))

(assert (= (and b!466838 (not res!279107)) b!466842))

(assert (= (and b!466842 res!279104) b!466841))

(assert (= (and b!466838 res!279103) b!466846))

(assert (= (and b!466846 c!56712) b!466836))

(assert (= (and b!466846 (not c!56712)) b!466840))

(assert (= (and b!466836 res!279108) b!466853))

(assert (= (or b!466836 b!466840) bm!30303))

(assert (= (and b!466846 res!279109) b!466835))

(assert (= (and b!466835 c!56709) b!466854))

(assert (= (and b!466835 (not c!56709)) b!466851))

(assert (= (and b!466854 res!279105) b!466850))

(assert (= (or b!466854 b!466851) bm!30306))

(declare-fun b_lambda!10069 () Bool)

(assert (=> (not b_lambda!10069) (not b!466841)))

(assert (=> b!466841 t!14560))

(declare-fun b_and!19827 () Bool)

(assert (= b_and!19825 (and (=> t!14560 result!7399) b_and!19827)))

(declare-fun m!449069 () Bool)

(assert (=> b!466853 m!449069))

(assert (=> b!466841 m!448947))

(declare-fun m!449071 () Bool)

(assert (=> b!466841 m!449071))

(assert (=> b!466841 m!448967))

(assert (=> b!466841 m!448971))

(assert (=> b!466841 m!448947))

(assert (=> b!466841 m!448967))

(assert (=> b!466841 m!448971))

(assert (=> b!466841 m!448973))

(assert (=> bm!30304 m!448919))

(assert (=> b!466844 m!448947))

(assert (=> b!466844 m!448947))

(assert (=> b!466844 m!448949))

(declare-fun m!449073 () Bool)

(assert (=> bm!30308 m!449073))

(assert (=> b!466842 m!448947))

(assert (=> b!466842 m!448947))

(declare-fun m!449075 () Bool)

(assert (=> b!466842 m!449075))

(declare-fun m!449077 () Bool)

(assert (=> b!466849 m!449077))

(declare-fun m!449079 () Bool)

(assert (=> b!466849 m!449079))

(declare-fun m!449081 () Bool)

(assert (=> b!466849 m!449081))

(declare-fun m!449083 () Bool)

(assert (=> b!466849 m!449083))

(declare-fun m!449085 () Bool)

(assert (=> b!466849 m!449085))

(declare-fun m!449087 () Bool)

(assert (=> b!466849 m!449087))

(assert (=> b!466849 m!448947))

(declare-fun m!449089 () Bool)

(assert (=> b!466849 m!449089))

(declare-fun m!449091 () Bool)

(assert (=> b!466849 m!449091))

(declare-fun m!449093 () Bool)

(assert (=> b!466849 m!449093))

(assert (=> b!466849 m!449077))

(declare-fun m!449095 () Bool)

(assert (=> b!466849 m!449095))

(declare-fun m!449097 () Bool)

(assert (=> b!466849 m!449097))

(assert (=> b!466849 m!449079))

(declare-fun m!449099 () Bool)

(assert (=> b!466849 m!449099))

(assert (=> b!466849 m!449097))

(declare-fun m!449101 () Bool)

(assert (=> b!466849 m!449101))

(assert (=> b!466849 m!449091))

(declare-fun m!449103 () Bool)

(assert (=> b!466849 m!449103))

(assert (=> b!466849 m!448919))

(declare-fun m!449105 () Bool)

(assert (=> b!466849 m!449105))

(assert (=> d!75055 m!448899))

(declare-fun m!449107 () Bool)

(assert (=> bm!30306 m!449107))

(assert (=> b!466837 m!448947))

(assert (=> b!466837 m!448947))

(assert (=> b!466837 m!448949))

(declare-fun m!449109 () Bool)

(assert (=> bm!30303 m!449109))

(declare-fun m!449111 () Bool)

(assert (=> b!466839 m!449111))

(declare-fun m!449113 () Bool)

(assert (=> b!466850 m!449113))

(assert (=> b!466656 d!75055))

(declare-fun mapNonEmpty!20974 () Bool)

(declare-fun mapRes!20974 () Bool)

(declare-fun tp!40297 () Bool)

(declare-fun e!273052 () Bool)

(assert (=> mapNonEmpty!20974 (= mapRes!20974 (and tp!40297 e!273052))))

(declare-fun mapValue!20974 () ValueCell!6084)

(declare-fun mapRest!20974 () (Array (_ BitVec 32) ValueCell!6084))

(declare-fun mapKey!20974 () (_ BitVec 32))

(assert (=> mapNonEmpty!20974 (= mapRest!20968 (store mapRest!20974 mapKey!20974 mapValue!20974))))

(declare-fun condMapEmpty!20974 () Bool)

(declare-fun mapDefault!20974 () ValueCell!6084)

(assert (=> mapNonEmpty!20968 (= condMapEmpty!20974 (= mapRest!20968 ((as const (Array (_ BitVec 32) ValueCell!6084)) mapDefault!20974)))))

(declare-fun e!273051 () Bool)

(assert (=> mapNonEmpty!20968 (= tp!40287 (and e!273051 mapRes!20974))))

(declare-fun b!466862 () Bool)

(assert (=> b!466862 (= e!273051 tp_is_empty!12855)))

(declare-fun b!466861 () Bool)

(assert (=> b!466861 (= e!273052 tp_is_empty!12855)))

(declare-fun mapIsEmpty!20974 () Bool)

(assert (=> mapIsEmpty!20974 mapRes!20974))

(assert (= (and mapNonEmpty!20968 condMapEmpty!20974) mapIsEmpty!20974))

(assert (= (and mapNonEmpty!20968 (not condMapEmpty!20974)) mapNonEmpty!20974))

(assert (= (and mapNonEmpty!20974 ((_ is ValueCellFull!6084) mapValue!20974)) b!466861))

(assert (= (and mapNonEmpty!20968 ((_ is ValueCellFull!6084) mapDefault!20974)) b!466862))

(declare-fun m!449115 () Bool)

(assert (=> mapNonEmpty!20974 m!449115))

(declare-fun b_lambda!10071 () Bool)

(assert (= b_lambda!10059 (or (and start!41814 b_free!11427) b_lambda!10071)))

(declare-fun b_lambda!10073 () Bool)

(assert (= b_lambda!10063 (or (and start!41814 b_free!11427) b_lambda!10073)))

(declare-fun b_lambda!10075 () Bool)

(assert (= b_lambda!10067 (or (and start!41814 b_free!11427) b_lambda!10075)))

(declare-fun b_lambda!10077 () Bool)

(assert (= b_lambda!10061 (or (and start!41814 b_free!11427) b_lambda!10077)))

(declare-fun b_lambda!10079 () Bool)

(assert (= b_lambda!10069 (or (and start!41814 b_free!11427) b_lambda!10079)))

(declare-fun b_lambda!10081 () Bool)

(assert (= b_lambda!10065 (or (and start!41814 b_free!11427) b_lambda!10081)))

(check-sat (not bm!30276) (not b!466743) (not b!466742) (not b!466828) (not b_lambda!10079) (not b!466734) (not d!75037) (not b!466769) (not bm!30303) (not b!466763) (not b!466818) (not b!466849) (not b!466837) (not b!466844) (not d!75055) (not b!466744) (not b!466738) (not b!466839) (not bm!30308) (not b!466816) (not b!466747) (not mapNonEmpty!20974) (not b!466821) tp_is_empty!12855 (not b!466730) (not b!466850) (not b!466745) (not d!75039) (not b!466724) (not b_lambda!10077) (not b!466823) (not bm!30306) (not b_lambda!10081) (not b!466820) (not bm!30301) (not b!466841) (not bm!30277) (not b!466829) (not b_lambda!10071) (not bm!30296) (not bm!30304) (not b!466731) (not b!466729) (not b!466842) (not bm!30273) (not bm!30297) (not b!466760) (not b!466748) (not b!466733) (not b!466770) (not d!75041) (not b!466728) b_and!19827 (not b_lambda!10075) (not b!466746) (not d!75053) (not d!75051) (not b!466697) (not b_lambda!10073) (not b!466832) (not b_next!11427) (not b!466853) (not b!466732) (not b!466764) (not bm!30280) (not bm!30299) (not b!466696))
(check-sat b_and!19827 (not b_next!11427))
