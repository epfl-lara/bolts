; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42098 () Bool)

(assert start!42098)

(declare-fun b_free!11643 () Bool)

(declare-fun b_next!11643 () Bool)

(assert (=> start!42098 (= b_free!11643 (not b_next!11643))))

(declare-fun tp!40947 () Bool)

(declare-fun b_and!20071 () Bool)

(assert (=> start!42098 (= tp!40947 b_and!20071)))

(declare-fun mapIsEmpty!21304 () Bool)

(declare-fun mapRes!21304 () Bool)

(assert (=> mapIsEmpty!21304 mapRes!21304))

(declare-fun b!469754 () Bool)

(declare-fun e!275155 () Bool)

(declare-fun tp_is_empty!13071 () Bool)

(assert (=> b!469754 (= e!275155 tp_is_empty!13071)))

(declare-fun mapNonEmpty!21304 () Bool)

(declare-fun tp!40948 () Bool)

(declare-fun e!275156 () Bool)

(assert (=> mapNonEmpty!21304 (= mapRes!21304 (and tp!40948 e!275156))))

(declare-datatypes ((V!18533 0))(
  ( (V!18534 (val!6580 Int)) )
))
(declare-datatypes ((ValueCell!6192 0))(
  ( (ValueCellFull!6192 (v!8866 V!18533)) (EmptyCell!6192) )
))
(declare-datatypes ((array!29875 0))(
  ( (array!29876 (arr!14359 (Array (_ BitVec 32) ValueCell!6192)) (size!14711 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29875)

(declare-fun mapValue!21304 () ValueCell!6192)

(declare-fun mapKey!21304 () (_ BitVec 32))

(declare-fun mapRest!21304 () (Array (_ BitVec 32) ValueCell!6192))

(assert (=> mapNonEmpty!21304 (= (arr!14359 _values!833) (store mapRest!21304 mapKey!21304 mapValue!21304))))

(declare-fun b!469755 () Bool)

(declare-fun res!280800 () Bool)

(declare-fun e!275153 () Bool)

(assert (=> b!469755 (=> (not res!280800) (not e!275153))))

(declare-datatypes ((array!29877 0))(
  ( (array!29878 (arr!14360 (Array (_ BitVec 32) (_ BitVec 64))) (size!14712 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29877)

(declare-datatypes ((List!8757 0))(
  ( (Nil!8754) (Cons!8753 (h!9609 (_ BitVec 64)) (t!14725 List!8757)) )
))
(declare-fun arrayNoDuplicates!0 (array!29877 (_ BitVec 32) List!8757) Bool)

(assert (=> b!469755 (= res!280800 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8754))))

(declare-fun res!280798 () Bool)

(assert (=> start!42098 (=> (not res!280798) (not e!275153))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42098 (= res!280798 (validMask!0 mask!1365))))

(assert (=> start!42098 e!275153))

(assert (=> start!42098 tp_is_empty!13071))

(assert (=> start!42098 tp!40947))

(assert (=> start!42098 true))

(declare-fun array_inv!10356 (array!29877) Bool)

(assert (=> start!42098 (array_inv!10356 _keys!1025)))

(declare-fun e!275158 () Bool)

(declare-fun array_inv!10357 (array!29875) Bool)

(assert (=> start!42098 (and (array_inv!10357 _values!833) e!275158)))

(declare-fun b!469756 () Bool)

(declare-fun e!275154 () Bool)

(assert (=> b!469756 (= e!275153 (not e!275154))))

(declare-fun res!280799 () Bool)

(assert (=> b!469756 (=> res!280799 e!275154)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469756 (= res!280799 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8638 0))(
  ( (tuple2!8639 (_1!4329 (_ BitVec 64)) (_2!4329 V!18533)) )
))
(declare-datatypes ((List!8758 0))(
  ( (Nil!8755) (Cons!8754 (h!9610 tuple2!8638) (t!14726 List!8758)) )
))
(declare-datatypes ((ListLongMap!7565 0))(
  ( (ListLongMap!7566 (toList!3798 List!8758)) )
))
(declare-fun lt!213117 () ListLongMap!7565)

(declare-fun lt!213120 () ListLongMap!7565)

(assert (=> b!469756 (= lt!213117 lt!213120)))

(declare-datatypes ((Unit!13720 0))(
  ( (Unit!13721) )
))
(declare-fun lt!213121 () Unit!13720)

(declare-fun minValueBefore!38 () V!18533)

(declare-fun zeroValue!794 () V!18533)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18533)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!155 (array!29877 array!29875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18533 V!18533 V!18533 V!18533 (_ BitVec 32) Int) Unit!13720)

(assert (=> b!469756 (= lt!213121 (lemmaNoChangeToArrayThenSameMapNoExtras!155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1960 (array!29877 array!29875 (_ BitVec 32) (_ BitVec 32) V!18533 V!18533 (_ BitVec 32) Int) ListLongMap!7565)

(assert (=> b!469756 (= lt!213120 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469756 (= lt!213117 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469757 () Bool)

(assert (=> b!469757 (= e!275154 (bvsle #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun lt!213119 () tuple2!8638)

(declare-fun +!1684 (ListLongMap!7565 tuple2!8638) ListLongMap!7565)

(assert (=> b!469757 (= (+!1684 lt!213117 lt!213119) (+!1684 (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!213119))))

(assert (=> b!469757 (= lt!213119 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!213123 () Unit!13720)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!125 (ListLongMap!7565 (_ BitVec 64) V!18533 V!18533) Unit!13720)

(assert (=> b!469757 (= lt!213123 (addSameAsAddTwiceSameKeyDiffValues!125 lt!213117 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!213118 () ListLongMap!7565)

(declare-fun getCurrentListMap!2206 (array!29877 array!29875 (_ BitVec 32) (_ BitVec 32) V!18533 V!18533 (_ BitVec 32) Int) ListLongMap!7565)

(assert (=> b!469757 (= lt!213118 (getCurrentListMap!2206 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213122 () ListLongMap!7565)

(assert (=> b!469757 (= lt!213122 (getCurrentListMap!2206 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469758 () Bool)

(assert (=> b!469758 (= e!275156 tp_is_empty!13071)))

(declare-fun b!469759 () Bool)

(declare-fun res!280797 () Bool)

(assert (=> b!469759 (=> (not res!280797) (not e!275153))))

(assert (=> b!469759 (= res!280797 (and (= (size!14711 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14712 _keys!1025) (size!14711 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469760 () Bool)

(assert (=> b!469760 (= e!275158 (and e!275155 mapRes!21304))))

(declare-fun condMapEmpty!21304 () Bool)

(declare-fun mapDefault!21304 () ValueCell!6192)

(assert (=> b!469760 (= condMapEmpty!21304 (= (arr!14359 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6192)) mapDefault!21304)))))

(declare-fun b!469761 () Bool)

(declare-fun res!280801 () Bool)

(assert (=> b!469761 (=> (not res!280801) (not e!275153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29877 (_ BitVec 32)) Bool)

(assert (=> b!469761 (= res!280801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42098 res!280798) b!469759))

(assert (= (and b!469759 res!280797) b!469761))

(assert (= (and b!469761 res!280801) b!469755))

(assert (= (and b!469755 res!280800) b!469756))

(assert (= (and b!469756 (not res!280799)) b!469757))

(assert (= (and b!469760 condMapEmpty!21304) mapIsEmpty!21304))

(assert (= (and b!469760 (not condMapEmpty!21304)) mapNonEmpty!21304))

(get-info :version)

(assert (= (and mapNonEmpty!21304 ((_ is ValueCellFull!6192) mapValue!21304)) b!469758))

(assert (= (and b!469760 ((_ is ValueCellFull!6192) mapDefault!21304)) b!469754))

(assert (= start!42098 b!469760))

(declare-fun m!452081 () Bool)

(assert (=> b!469755 m!452081))

(declare-fun m!452083 () Bool)

(assert (=> start!42098 m!452083))

(declare-fun m!452085 () Bool)

(assert (=> start!42098 m!452085))

(declare-fun m!452087 () Bool)

(assert (=> start!42098 m!452087))

(declare-fun m!452089 () Bool)

(assert (=> b!469757 m!452089))

(declare-fun m!452091 () Bool)

(assert (=> b!469757 m!452091))

(declare-fun m!452093 () Bool)

(assert (=> b!469757 m!452093))

(assert (=> b!469757 m!452091))

(declare-fun m!452095 () Bool)

(assert (=> b!469757 m!452095))

(declare-fun m!452097 () Bool)

(assert (=> b!469757 m!452097))

(declare-fun m!452099 () Bool)

(assert (=> b!469757 m!452099))

(declare-fun m!452101 () Bool)

(assert (=> b!469761 m!452101))

(declare-fun m!452103 () Bool)

(assert (=> mapNonEmpty!21304 m!452103))

(declare-fun m!452105 () Bool)

(assert (=> b!469756 m!452105))

(declare-fun m!452107 () Bool)

(assert (=> b!469756 m!452107))

(declare-fun m!452109 () Bool)

(assert (=> b!469756 m!452109))

(check-sat (not b!469757) tp_is_empty!13071 (not start!42098) (not b_next!11643) b_and!20071 (not b!469755) (not b!469761) (not mapNonEmpty!21304) (not b!469756))
(check-sat b_and!20071 (not b_next!11643))
(get-model)

(declare-fun d!75191 () Bool)

(assert (=> d!75191 (= (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213147 () Unit!13720)

(declare-fun choose!1353 (array!29877 array!29875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18533 V!18533 V!18533 V!18533 (_ BitVec 32) Int) Unit!13720)

(assert (=> d!75191 (= lt!213147 (choose!1353 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75191 (validMask!0 mask!1365)))

(assert (=> d!75191 (= (lemmaNoChangeToArrayThenSameMapNoExtras!155 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213147)))

(declare-fun bs!14887 () Bool)

(assert (= bs!14887 d!75191))

(assert (=> bs!14887 m!452109))

(assert (=> bs!14887 m!452107))

(declare-fun m!452141 () Bool)

(assert (=> bs!14887 m!452141))

(assert (=> bs!14887 m!452083))

(assert (=> b!469756 d!75191))

(declare-fun b!469810 () Bool)

(declare-fun e!275195 () Bool)

(declare-fun e!275194 () Bool)

(assert (=> b!469810 (= e!275195 e!275194)))

(declare-fun c!56831 () Bool)

(declare-fun e!275192 () Bool)

(assert (=> b!469810 (= c!56831 e!275192)))

(declare-fun res!280827 () Bool)

(assert (=> b!469810 (=> (not res!280827) (not e!275192))))

(assert (=> b!469810 (= res!280827 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun b!469811 () Bool)

(declare-fun e!275196 () Bool)

(declare-fun lt!213162 () ListLongMap!7565)

(declare-fun isEmpty!579 (ListLongMap!7565) Bool)

(assert (=> b!469811 (= e!275196 (isEmpty!579 lt!213162))))

(declare-fun b!469812 () Bool)

(declare-fun e!275193 () Bool)

(assert (=> b!469812 (= e!275194 e!275193)))

(assert (=> b!469812 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun res!280828 () Bool)

(declare-fun contains!2540 (ListLongMap!7565 (_ BitVec 64)) Bool)

(assert (=> b!469812 (= res!280828 (contains!2540 lt!213162 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469812 (=> (not res!280828) (not e!275193))))

(declare-fun b!469813 () Bool)

(declare-fun e!275197 () ListLongMap!7565)

(assert (=> b!469813 (= e!275197 (ListLongMap!7566 Nil!8755))))

(declare-fun b!469814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!469814 (= e!275192 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469814 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!469815 () Bool)

(assert (=> b!469815 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> b!469815 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14711 _values!833)))))

(declare-fun apply!327 (ListLongMap!7565 (_ BitVec 64)) V!18533)

(declare-fun get!7025 (ValueCell!6192 V!18533) V!18533)

(declare-fun dynLambda!919 (Int (_ BitVec 64)) V!18533)

(assert (=> b!469815 (= e!275193 (= (apply!327 lt!213162 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!469816 () Bool)

(declare-fun lt!213165 () Unit!13720)

(declare-fun lt!213167 () Unit!13720)

(assert (=> b!469816 (= lt!213165 lt!213167)))

(declare-fun lt!213164 () V!18533)

(declare-fun lt!213168 () (_ BitVec 64))

(declare-fun lt!213166 () (_ BitVec 64))

(declare-fun lt!213163 () ListLongMap!7565)

(assert (=> b!469816 (not (contains!2540 (+!1684 lt!213163 (tuple2!8639 lt!213168 lt!213164)) lt!213166))))

(declare-fun addStillNotContains!162 (ListLongMap!7565 (_ BitVec 64) V!18533 (_ BitVec 64)) Unit!13720)

(assert (=> b!469816 (= lt!213167 (addStillNotContains!162 lt!213163 lt!213168 lt!213164 lt!213166))))

(assert (=> b!469816 (= lt!213166 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!469816 (= lt!213164 (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!469816 (= lt!213168 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30393 () ListLongMap!7565)

(assert (=> b!469816 (= lt!213163 call!30393)))

(declare-fun e!275191 () ListLongMap!7565)

(assert (=> b!469816 (= e!275191 (+!1684 call!30393 (tuple2!8639 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!75193 () Bool)

(assert (=> d!75193 e!275195))

(declare-fun res!280826 () Bool)

(assert (=> d!75193 (=> (not res!280826) (not e!275195))))

(assert (=> d!75193 (= res!280826 (not (contains!2540 lt!213162 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75193 (= lt!213162 e!275197)))

(declare-fun c!56833 () Bool)

(assert (=> d!75193 (= c!56833 (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75193 (validMask!0 mask!1365)))

(assert (=> d!75193 (= (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213162)))

(declare-fun b!469817 () Bool)

(assert (=> b!469817 (= e!275197 e!275191)))

(declare-fun c!56832 () Bool)

(assert (=> b!469817 (= c!56832 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469818 () Bool)

(assert (=> b!469818 (= e!275191 call!30393)))

(declare-fun b!469819 () Bool)

(declare-fun res!280825 () Bool)

(assert (=> b!469819 (=> (not res!280825) (not e!275195))))

(assert (=> b!469819 (= res!280825 (not (contains!2540 lt!213162 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!30390 () Bool)

(assert (=> bm!30390 (= call!30393 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!469820 () Bool)

(assert (=> b!469820 (= e!275194 e!275196)))

(declare-fun c!56830 () Bool)

(assert (=> b!469820 (= c!56830 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun b!469821 () Bool)

(assert (=> b!469821 (= e!275196 (= lt!213162 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(assert (= (and d!75193 c!56833) b!469813))

(assert (= (and d!75193 (not c!56833)) b!469817))

(assert (= (and b!469817 c!56832) b!469816))

(assert (= (and b!469817 (not c!56832)) b!469818))

(assert (= (or b!469816 b!469818) bm!30390))

(assert (= (and d!75193 res!280826) b!469819))

(assert (= (and b!469819 res!280825) b!469810))

(assert (= (and b!469810 res!280827) b!469814))

(assert (= (and b!469810 c!56831) b!469812))

(assert (= (and b!469810 (not c!56831)) b!469820))

(assert (= (and b!469812 res!280828) b!469815))

(assert (= (and b!469820 c!56830) b!469821))

(assert (= (and b!469820 (not c!56830)) b!469811))

(declare-fun b_lambda!10143 () Bool)

(assert (=> (not b_lambda!10143) (not b!469815)))

(declare-fun t!14728 () Bool)

(declare-fun tb!3927 () Bool)

(assert (=> (and start!42098 (= defaultEntry!841 defaultEntry!841) t!14728) tb!3927))

(declare-fun result!7423 () Bool)

(assert (=> tb!3927 (= result!7423 tp_is_empty!13071)))

(assert (=> b!469815 t!14728))

(declare-fun b_and!20075 () Bool)

(assert (= b_and!20071 (and (=> t!14728 result!7423) b_and!20075)))

(declare-fun b_lambda!10145 () Bool)

(assert (=> (not b_lambda!10145) (not b!469816)))

(assert (=> b!469816 t!14728))

(declare-fun b_and!20077 () Bool)

(assert (= b_and!20075 (and (=> t!14728 result!7423) b_and!20077)))

(declare-fun m!452143 () Bool)

(assert (=> d!75193 m!452143))

(assert (=> d!75193 m!452083))

(declare-fun m!452145 () Bool)

(assert (=> b!469821 m!452145))

(declare-fun m!452147 () Bool)

(assert (=> b!469814 m!452147))

(assert (=> b!469814 m!452147))

(declare-fun m!452149 () Bool)

(assert (=> b!469814 m!452149))

(assert (=> b!469817 m!452147))

(assert (=> b!469817 m!452147))

(assert (=> b!469817 m!452149))

(assert (=> b!469812 m!452147))

(assert (=> b!469812 m!452147))

(declare-fun m!452151 () Bool)

(assert (=> b!469812 m!452151))

(assert (=> bm!30390 m!452145))

(declare-fun m!452153 () Bool)

(assert (=> b!469819 m!452153))

(declare-fun m!452155 () Bool)

(assert (=> b!469815 m!452155))

(assert (=> b!469815 m!452147))

(declare-fun m!452157 () Bool)

(assert (=> b!469815 m!452157))

(declare-fun m!452159 () Bool)

(assert (=> b!469815 m!452159))

(assert (=> b!469815 m!452155))

(declare-fun m!452161 () Bool)

(assert (=> b!469815 m!452161))

(assert (=> b!469815 m!452159))

(assert (=> b!469815 m!452147))

(declare-fun m!452163 () Bool)

(assert (=> b!469811 m!452163))

(assert (=> b!469816 m!452155))

(declare-fun m!452165 () Bool)

(assert (=> b!469816 m!452165))

(declare-fun m!452167 () Bool)

(assert (=> b!469816 m!452167))

(assert (=> b!469816 m!452159))

(assert (=> b!469816 m!452155))

(assert (=> b!469816 m!452161))

(assert (=> b!469816 m!452159))

(assert (=> b!469816 m!452165))

(assert (=> b!469816 m!452147))

(declare-fun m!452169 () Bool)

(assert (=> b!469816 m!452169))

(declare-fun m!452171 () Bool)

(assert (=> b!469816 m!452171))

(assert (=> b!469756 d!75193))

(declare-fun b!469824 () Bool)

(declare-fun e!275202 () Bool)

(declare-fun e!275201 () Bool)

(assert (=> b!469824 (= e!275202 e!275201)))

(declare-fun c!56835 () Bool)

(declare-fun e!275199 () Bool)

(assert (=> b!469824 (= c!56835 e!275199)))

(declare-fun res!280831 () Bool)

(assert (=> b!469824 (=> (not res!280831) (not e!275199))))

(assert (=> b!469824 (= res!280831 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun b!469825 () Bool)

(declare-fun e!275203 () Bool)

(declare-fun lt!213169 () ListLongMap!7565)

(assert (=> b!469825 (= e!275203 (isEmpty!579 lt!213169))))

(declare-fun b!469826 () Bool)

(declare-fun e!275200 () Bool)

(assert (=> b!469826 (= e!275201 e!275200)))

(assert (=> b!469826 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun res!280832 () Bool)

(assert (=> b!469826 (= res!280832 (contains!2540 lt!213169 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469826 (=> (not res!280832) (not e!275200))))

(declare-fun b!469827 () Bool)

(declare-fun e!275204 () ListLongMap!7565)

(assert (=> b!469827 (= e!275204 (ListLongMap!7566 Nil!8755))))

(declare-fun b!469828 () Bool)

(assert (=> b!469828 (= e!275199 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469828 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!469829 () Bool)

(assert (=> b!469829 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> b!469829 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14711 _values!833)))))

(assert (=> b!469829 (= e!275200 (= (apply!327 lt!213169 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!469830 () Bool)

(declare-fun lt!213172 () Unit!13720)

(declare-fun lt!213174 () Unit!13720)

(assert (=> b!469830 (= lt!213172 lt!213174)))

(declare-fun lt!213173 () (_ BitVec 64))

(declare-fun lt!213170 () ListLongMap!7565)

(declare-fun lt!213171 () V!18533)

(declare-fun lt!213175 () (_ BitVec 64))

(assert (=> b!469830 (not (contains!2540 (+!1684 lt!213170 (tuple2!8639 lt!213175 lt!213171)) lt!213173))))

(assert (=> b!469830 (= lt!213174 (addStillNotContains!162 lt!213170 lt!213175 lt!213171 lt!213173))))

(assert (=> b!469830 (= lt!213173 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!469830 (= lt!213171 (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!469830 (= lt!213175 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30394 () ListLongMap!7565)

(assert (=> b!469830 (= lt!213170 call!30394)))

(declare-fun e!275198 () ListLongMap!7565)

(assert (=> b!469830 (= e!275198 (+!1684 call!30394 (tuple2!8639 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!75195 () Bool)

(assert (=> d!75195 e!275202))

(declare-fun res!280830 () Bool)

(assert (=> d!75195 (=> (not res!280830) (not e!275202))))

(assert (=> d!75195 (= res!280830 (not (contains!2540 lt!213169 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75195 (= lt!213169 e!275204)))

(declare-fun c!56837 () Bool)

(assert (=> d!75195 (= c!56837 (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75195 (validMask!0 mask!1365)))

(assert (=> d!75195 (= (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213169)))

(declare-fun b!469831 () Bool)

(assert (=> b!469831 (= e!275204 e!275198)))

(declare-fun c!56836 () Bool)

(assert (=> b!469831 (= c!56836 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469832 () Bool)

(assert (=> b!469832 (= e!275198 call!30394)))

(declare-fun b!469833 () Bool)

(declare-fun res!280829 () Bool)

(assert (=> b!469833 (=> (not res!280829) (not e!275202))))

(assert (=> b!469833 (= res!280829 (not (contains!2540 lt!213169 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!30391 () Bool)

(assert (=> bm!30391 (= call!30394 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!469834 () Bool)

(assert (=> b!469834 (= e!275201 e!275203)))

(declare-fun c!56834 () Bool)

(assert (=> b!469834 (= c!56834 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun b!469835 () Bool)

(assert (=> b!469835 (= e!275203 (= lt!213169 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(assert (= (and d!75195 c!56837) b!469827))

(assert (= (and d!75195 (not c!56837)) b!469831))

(assert (= (and b!469831 c!56836) b!469830))

(assert (= (and b!469831 (not c!56836)) b!469832))

(assert (= (or b!469830 b!469832) bm!30391))

(assert (= (and d!75195 res!280830) b!469833))

(assert (= (and b!469833 res!280829) b!469824))

(assert (= (and b!469824 res!280831) b!469828))

(assert (= (and b!469824 c!56835) b!469826))

(assert (= (and b!469824 (not c!56835)) b!469834))

(assert (= (and b!469826 res!280832) b!469829))

(assert (= (and b!469834 c!56834) b!469835))

(assert (= (and b!469834 (not c!56834)) b!469825))

(declare-fun b_lambda!10147 () Bool)

(assert (=> (not b_lambda!10147) (not b!469829)))

(assert (=> b!469829 t!14728))

(declare-fun b_and!20079 () Bool)

(assert (= b_and!20077 (and (=> t!14728 result!7423) b_and!20079)))

(declare-fun b_lambda!10149 () Bool)

(assert (=> (not b_lambda!10149) (not b!469830)))

(assert (=> b!469830 t!14728))

(declare-fun b_and!20081 () Bool)

(assert (= b_and!20079 (and (=> t!14728 result!7423) b_and!20081)))

(declare-fun m!452173 () Bool)

(assert (=> d!75195 m!452173))

(assert (=> d!75195 m!452083))

(declare-fun m!452175 () Bool)

(assert (=> b!469835 m!452175))

(assert (=> b!469828 m!452147))

(assert (=> b!469828 m!452147))

(assert (=> b!469828 m!452149))

(assert (=> b!469831 m!452147))

(assert (=> b!469831 m!452147))

(assert (=> b!469831 m!452149))

(assert (=> b!469826 m!452147))

(assert (=> b!469826 m!452147))

(declare-fun m!452177 () Bool)

(assert (=> b!469826 m!452177))

(assert (=> bm!30391 m!452175))

(declare-fun m!452179 () Bool)

(assert (=> b!469833 m!452179))

(assert (=> b!469829 m!452155))

(assert (=> b!469829 m!452147))

(declare-fun m!452181 () Bool)

(assert (=> b!469829 m!452181))

(assert (=> b!469829 m!452159))

(assert (=> b!469829 m!452155))

(assert (=> b!469829 m!452161))

(assert (=> b!469829 m!452159))

(assert (=> b!469829 m!452147))

(declare-fun m!452183 () Bool)

(assert (=> b!469825 m!452183))

(assert (=> b!469830 m!452155))

(declare-fun m!452185 () Bool)

(assert (=> b!469830 m!452185))

(declare-fun m!452187 () Bool)

(assert (=> b!469830 m!452187))

(assert (=> b!469830 m!452159))

(assert (=> b!469830 m!452155))

(assert (=> b!469830 m!452161))

(assert (=> b!469830 m!452159))

(assert (=> b!469830 m!452185))

(assert (=> b!469830 m!452147))

(declare-fun m!452189 () Bool)

(assert (=> b!469830 m!452189))

(declare-fun m!452191 () Bool)

(assert (=> b!469830 m!452191))

(assert (=> b!469756 d!75195))

(declare-fun b!469844 () Bool)

(declare-fun e!275212 () Bool)

(declare-fun call!30397 () Bool)

(assert (=> b!469844 (= e!275212 call!30397)))

(declare-fun bm!30394 () Bool)

(assert (=> bm!30394 (= call!30397 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!469845 () Bool)

(declare-fun e!275213 () Bool)

(assert (=> b!469845 (= e!275213 call!30397)))

(declare-fun b!469847 () Bool)

(declare-fun e!275211 () Bool)

(assert (=> b!469847 (= e!275211 e!275212)))

(declare-fun c!56840 () Bool)

(assert (=> b!469847 (= c!56840 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469846 () Bool)

(assert (=> b!469846 (= e!275212 e!275213)))

(declare-fun lt!213182 () (_ BitVec 64))

(assert (=> b!469846 (= lt!213182 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213183 () Unit!13720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29877 (_ BitVec 64) (_ BitVec 32)) Unit!13720)

(assert (=> b!469846 (= lt!213183 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!213182 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!469846 (arrayContainsKey!0 _keys!1025 lt!213182 #b00000000000000000000000000000000)))

(declare-fun lt!213184 () Unit!13720)

(assert (=> b!469846 (= lt!213184 lt!213183)))

(declare-fun res!280838 () Bool)

(declare-datatypes ((SeekEntryResult!3539 0))(
  ( (MissingZero!3539 (index!16335 (_ BitVec 32))) (Found!3539 (index!16336 (_ BitVec 32))) (Intermediate!3539 (undefined!4351 Bool) (index!16337 (_ BitVec 32)) (x!43987 (_ BitVec 32))) (Undefined!3539) (MissingVacant!3539 (index!16338 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29877 (_ BitVec 32)) SeekEntryResult!3539)

(assert (=> b!469846 (= res!280838 (= (seekEntryOrOpen!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3539 #b00000000000000000000000000000000)))))

(assert (=> b!469846 (=> (not res!280838) (not e!275213))))

(declare-fun d!75197 () Bool)

(declare-fun res!280837 () Bool)

(assert (=> d!75197 (=> res!280837 e!275211)))

(assert (=> d!75197 (= res!280837 (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75197 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!275211)))

(assert (= (and d!75197 (not res!280837)) b!469847))

(assert (= (and b!469847 c!56840) b!469846))

(assert (= (and b!469847 (not c!56840)) b!469844))

(assert (= (and b!469846 res!280838) b!469845))

(assert (= (or b!469845 b!469844) bm!30394))

(declare-fun m!452193 () Bool)

(assert (=> bm!30394 m!452193))

(assert (=> b!469847 m!452147))

(assert (=> b!469847 m!452147))

(assert (=> b!469847 m!452149))

(assert (=> b!469846 m!452147))

(declare-fun m!452195 () Bool)

(assert (=> b!469846 m!452195))

(declare-fun m!452197 () Bool)

(assert (=> b!469846 m!452197))

(assert (=> b!469846 m!452147))

(declare-fun m!452199 () Bool)

(assert (=> b!469846 m!452199))

(assert (=> b!469761 d!75197))

(declare-fun b!469858 () Bool)

(declare-fun e!275222 () Bool)

(declare-fun contains!2541 (List!8757 (_ BitVec 64)) Bool)

(assert (=> b!469858 (= e!275222 (contains!2541 Nil!8754 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30397 () Bool)

(declare-fun call!30400 () Bool)

(declare-fun c!56843 () Bool)

(assert (=> bm!30397 (= call!30400 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56843 (Cons!8753 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000) Nil!8754) Nil!8754)))))

(declare-fun b!469859 () Bool)

(declare-fun e!275225 () Bool)

(declare-fun e!275223 () Bool)

(assert (=> b!469859 (= e!275225 e!275223)))

(declare-fun res!280847 () Bool)

(assert (=> b!469859 (=> (not res!280847) (not e!275223))))

(assert (=> b!469859 (= res!280847 (not e!275222))))

(declare-fun res!280845 () Bool)

(assert (=> b!469859 (=> (not res!280845) (not e!275222))))

(assert (=> b!469859 (= res!280845 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469860 () Bool)

(declare-fun e!275224 () Bool)

(assert (=> b!469860 (= e!275224 call!30400)))

(declare-fun d!75199 () Bool)

(declare-fun res!280846 () Bool)

(assert (=> d!75199 (=> res!280846 e!275225)))

(assert (=> d!75199 (= res!280846 (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75199 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8754) e!275225)))

(declare-fun b!469861 () Bool)

(assert (=> b!469861 (= e!275223 e!275224)))

(assert (=> b!469861 (= c!56843 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469862 () Bool)

(assert (=> b!469862 (= e!275224 call!30400)))

(assert (= (and d!75199 (not res!280846)) b!469859))

(assert (= (and b!469859 res!280845) b!469858))

(assert (= (and b!469859 res!280847) b!469861))

(assert (= (and b!469861 c!56843) b!469862))

(assert (= (and b!469861 (not c!56843)) b!469860))

(assert (= (or b!469862 b!469860) bm!30397))

(assert (=> b!469858 m!452147))

(assert (=> b!469858 m!452147))

(declare-fun m!452201 () Bool)

(assert (=> b!469858 m!452201))

(assert (=> bm!30397 m!452147))

(declare-fun m!452203 () Bool)

(assert (=> bm!30397 m!452203))

(assert (=> b!469859 m!452147))

(assert (=> b!469859 m!452147))

(assert (=> b!469859 m!452149))

(assert (=> b!469861 m!452147))

(assert (=> b!469861 m!452147))

(assert (=> b!469861 m!452149))

(assert (=> b!469755 d!75199))

(declare-fun b!469905 () Bool)

(declare-fun e!275258 () Bool)

(declare-fun call!30419 () Bool)

(assert (=> b!469905 (= e!275258 (not call!30419))))

(declare-fun bm!30412 () Bool)

(declare-fun call!30420 () Bool)

(declare-fun lt!213242 () ListLongMap!7565)

(assert (=> bm!30412 (= call!30420 (contains!2540 lt!213242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469906 () Bool)

(declare-fun e!275261 () Unit!13720)

(declare-fun Unit!13722 () Unit!13720)

(assert (=> b!469906 (= e!275261 Unit!13722)))

(declare-fun bm!30413 () Bool)

(declare-fun call!30417 () ListLongMap!7565)

(declare-fun call!30416 () ListLongMap!7565)

(assert (=> bm!30413 (= call!30417 call!30416)))

(declare-fun b!469907 () Bool)

(declare-fun e!275255 () Bool)

(assert (=> b!469907 (= e!275255 (= (apply!327 lt!213242 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!469907 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14711 _values!833)))))

(assert (=> b!469907 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun c!56859 () Bool)

(declare-fun bm!30414 () Bool)

(declare-fun call!30421 () ListLongMap!7565)

(declare-fun c!56856 () Bool)

(declare-fun call!30415 () ListLongMap!7565)

(assert (=> bm!30414 (= call!30415 (+!1684 (ite c!56859 call!30416 (ite c!56856 call!30417 call!30421)) (ite (or c!56859 c!56856) (tuple2!8639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!469908 () Bool)

(declare-fun e!275256 () Bool)

(declare-fun e!275263 () Bool)

(assert (=> b!469908 (= e!275256 e!275263)))

(declare-fun res!280866 () Bool)

(assert (=> b!469908 (= res!280866 call!30420)))

(assert (=> b!469908 (=> (not res!280866) (not e!275263))))

(declare-fun bm!30415 () Bool)

(assert (=> bm!30415 (= call!30421 call!30417)))

(declare-fun bm!30416 () Bool)

(assert (=> bm!30416 (= call!30419 (contains!2540 lt!213242 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469909 () Bool)

(declare-fun e!275252 () ListLongMap!7565)

(declare-fun e!275253 () ListLongMap!7565)

(assert (=> b!469909 (= e!275252 e!275253)))

(assert (=> b!469909 (= c!56856 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!469910 () Bool)

(declare-fun call!30418 () ListLongMap!7565)

(assert (=> b!469910 (= e!275253 call!30418)))

(declare-fun b!469911 () Bool)

(assert (=> b!469911 (= e!275263 (= (apply!327 lt!213242 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!469913 () Bool)

(declare-fun e!275254 () Bool)

(assert (=> b!469913 (= e!275254 (= (apply!327 lt!213242 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!469914 () Bool)

(declare-fun e!275259 () Bool)

(assert (=> b!469914 (= e!275259 e!275255)))

(declare-fun res!280867 () Bool)

(assert (=> b!469914 (=> (not res!280867) (not e!275255))))

(assert (=> b!469914 (= res!280867 (contains!2540 lt!213242 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469914 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun bm!30417 () Bool)

(assert (=> bm!30417 (= call!30418 call!30415)))

(declare-fun b!469915 () Bool)

(declare-fun e!275264 () Bool)

(assert (=> b!469915 (= e!275264 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469916 () Bool)

(declare-fun lt!213238 () Unit!13720)

(assert (=> b!469916 (= e!275261 lt!213238)))

(declare-fun lt!213239 () ListLongMap!7565)

(assert (=> b!469916 (= lt!213239 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213241 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213232 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213232 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213248 () Unit!13720)

(declare-fun addStillContains!289 (ListLongMap!7565 (_ BitVec 64) V!18533 (_ BitVec 64)) Unit!13720)

(assert (=> b!469916 (= lt!213248 (addStillContains!289 lt!213239 lt!213241 zeroValue!794 lt!213232))))

(assert (=> b!469916 (contains!2540 (+!1684 lt!213239 (tuple2!8639 lt!213241 zeroValue!794)) lt!213232)))

(declare-fun lt!213250 () Unit!13720)

(assert (=> b!469916 (= lt!213250 lt!213248)))

(declare-fun lt!213247 () ListLongMap!7565)

(assert (=> b!469916 (= lt!213247 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213229 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213229 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213246 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213246 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213237 () Unit!13720)

(declare-fun addApplyDifferent!289 (ListLongMap!7565 (_ BitVec 64) V!18533 (_ BitVec 64)) Unit!13720)

(assert (=> b!469916 (= lt!213237 (addApplyDifferent!289 lt!213247 lt!213229 minValueAfter!38 lt!213246))))

(assert (=> b!469916 (= (apply!327 (+!1684 lt!213247 (tuple2!8639 lt!213229 minValueAfter!38)) lt!213246) (apply!327 lt!213247 lt!213246))))

(declare-fun lt!213244 () Unit!13720)

(assert (=> b!469916 (= lt!213244 lt!213237)))

(declare-fun lt!213243 () ListLongMap!7565)

(assert (=> b!469916 (= lt!213243 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213245 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213245 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213233 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213233 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213249 () Unit!13720)

(assert (=> b!469916 (= lt!213249 (addApplyDifferent!289 lt!213243 lt!213245 zeroValue!794 lt!213233))))

(assert (=> b!469916 (= (apply!327 (+!1684 lt!213243 (tuple2!8639 lt!213245 zeroValue!794)) lt!213233) (apply!327 lt!213243 lt!213233))))

(declare-fun lt!213235 () Unit!13720)

(assert (=> b!469916 (= lt!213235 lt!213249)))

(declare-fun lt!213234 () ListLongMap!7565)

(assert (=> b!469916 (= lt!213234 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213230 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213230 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213240 () (_ BitVec 64))

(assert (=> b!469916 (= lt!213240 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!469916 (= lt!213238 (addApplyDifferent!289 lt!213234 lt!213230 minValueAfter!38 lt!213240))))

(assert (=> b!469916 (= (apply!327 (+!1684 lt!213234 (tuple2!8639 lt!213230 minValueAfter!38)) lt!213240) (apply!327 lt!213234 lt!213240))))

(declare-fun b!469917 () Bool)

(declare-fun e!275257 () Bool)

(assert (=> b!469917 (= e!275257 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469918 () Bool)

(assert (=> b!469918 (= e!275252 (+!1684 call!30415 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!469919 () Bool)

(declare-fun e!275260 () Bool)

(assert (=> b!469919 (= e!275260 e!275258)))

(declare-fun c!56860 () Bool)

(assert (=> b!469919 (= c!56860 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!469920 () Bool)

(assert (=> b!469920 (= e!275258 e!275254)))

(declare-fun res!280873 () Bool)

(assert (=> b!469920 (= res!280873 call!30419)))

(assert (=> b!469920 (=> (not res!280873) (not e!275254))))

(declare-fun b!469921 () Bool)

(declare-fun res!280871 () Bool)

(assert (=> b!469921 (=> (not res!280871) (not e!275260))))

(assert (=> b!469921 (= res!280871 e!275259)))

(declare-fun res!280874 () Bool)

(assert (=> b!469921 (=> res!280874 e!275259)))

(assert (=> b!469921 (= res!280874 (not e!275264))))

(declare-fun res!280869 () Bool)

(assert (=> b!469921 (=> (not res!280869) (not e!275264))))

(assert (=> b!469921 (= res!280869 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun bm!30418 () Bool)

(assert (=> bm!30418 (= call!30416 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun d!75201 () Bool)

(assert (=> d!75201 e!275260))

(declare-fun res!280868 () Bool)

(assert (=> d!75201 (=> (not res!280868) (not e!275260))))

(assert (=> d!75201 (= res!280868 (or (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))))

(declare-fun lt!213236 () ListLongMap!7565)

(assert (=> d!75201 (= lt!213242 lt!213236)))

(declare-fun lt!213231 () Unit!13720)

(assert (=> d!75201 (= lt!213231 e!275261)))

(declare-fun c!56857 () Bool)

(assert (=> d!75201 (= c!56857 e!275257)))

(declare-fun res!280872 () Bool)

(assert (=> d!75201 (=> (not res!280872) (not e!275257))))

(assert (=> d!75201 (= res!280872 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75201 (= lt!213236 e!275252)))

(assert (=> d!75201 (= c!56859 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75201 (validMask!0 mask!1365)))

(assert (=> d!75201 (= (getCurrentListMap!2206 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213242)))

(declare-fun b!469912 () Bool)

(declare-fun c!56861 () Bool)

(assert (=> b!469912 (= c!56861 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!275262 () ListLongMap!7565)

(assert (=> b!469912 (= e!275253 e!275262)))

(declare-fun b!469922 () Bool)

(assert (=> b!469922 (= e!275256 (not call!30420))))

(declare-fun b!469923 () Bool)

(declare-fun res!280870 () Bool)

(assert (=> b!469923 (=> (not res!280870) (not e!275260))))

(assert (=> b!469923 (= res!280870 e!275256)))

(declare-fun c!56858 () Bool)

(assert (=> b!469923 (= c!56858 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!469924 () Bool)

(assert (=> b!469924 (= e!275262 call!30421)))

(declare-fun b!469925 () Bool)

(assert (=> b!469925 (= e!275262 call!30418)))

(assert (= (and d!75201 c!56859) b!469918))

(assert (= (and d!75201 (not c!56859)) b!469909))

(assert (= (and b!469909 c!56856) b!469910))

(assert (= (and b!469909 (not c!56856)) b!469912))

(assert (= (and b!469912 c!56861) b!469925))

(assert (= (and b!469912 (not c!56861)) b!469924))

(assert (= (or b!469925 b!469924) bm!30415))

(assert (= (or b!469910 bm!30415) bm!30413))

(assert (= (or b!469910 b!469925) bm!30417))

(assert (= (or b!469918 bm!30413) bm!30418))

(assert (= (or b!469918 bm!30417) bm!30414))

(assert (= (and d!75201 res!280872) b!469917))

(assert (= (and d!75201 c!56857) b!469916))

(assert (= (and d!75201 (not c!56857)) b!469906))

(assert (= (and d!75201 res!280868) b!469921))

(assert (= (and b!469921 res!280869) b!469915))

(assert (= (and b!469921 (not res!280874)) b!469914))

(assert (= (and b!469914 res!280867) b!469907))

(assert (= (and b!469921 res!280871) b!469923))

(assert (= (and b!469923 c!56858) b!469908))

(assert (= (and b!469923 (not c!56858)) b!469922))

(assert (= (and b!469908 res!280866) b!469911))

(assert (= (or b!469908 b!469922) bm!30412))

(assert (= (and b!469923 res!280870) b!469919))

(assert (= (and b!469919 c!56860) b!469920))

(assert (= (and b!469919 (not c!56860)) b!469905))

(assert (= (and b!469920 res!280873) b!469913))

(assert (= (or b!469920 b!469905) bm!30416))

(declare-fun b_lambda!10151 () Bool)

(assert (=> (not b_lambda!10151) (not b!469907)))

(assert (=> b!469907 t!14728))

(declare-fun b_and!20083 () Bool)

(assert (= b_and!20081 (and (=> t!14728 result!7423) b_and!20083)))

(declare-fun m!452205 () Bool)

(assert (=> b!469918 m!452205))

(assert (=> b!469907 m!452155))

(assert (=> b!469907 m!452159))

(assert (=> b!469907 m!452155))

(assert (=> b!469907 m!452161))

(assert (=> b!469907 m!452159))

(assert (=> b!469907 m!452147))

(declare-fun m!452207 () Bool)

(assert (=> b!469907 m!452207))

(assert (=> b!469907 m!452147))

(declare-fun m!452209 () Bool)

(assert (=> b!469913 m!452209))

(assert (=> bm!30418 m!452107))

(assert (=> b!469915 m!452147))

(assert (=> b!469915 m!452147))

(assert (=> b!469915 m!452149))

(declare-fun m!452211 () Bool)

(assert (=> bm!30416 m!452211))

(assert (=> b!469914 m!452147))

(assert (=> b!469914 m!452147))

(declare-fun m!452213 () Bool)

(assert (=> b!469914 m!452213))

(declare-fun m!452215 () Bool)

(assert (=> b!469911 m!452215))

(declare-fun m!452217 () Bool)

(assert (=> bm!30412 m!452217))

(assert (=> b!469917 m!452147))

(assert (=> b!469917 m!452147))

(assert (=> b!469917 m!452149))

(declare-fun m!452219 () Bool)

(assert (=> b!469916 m!452219))

(declare-fun m!452221 () Bool)

(assert (=> b!469916 m!452221))

(declare-fun m!452223 () Bool)

(assert (=> b!469916 m!452223))

(declare-fun m!452225 () Bool)

(assert (=> b!469916 m!452225))

(declare-fun m!452227 () Bool)

(assert (=> b!469916 m!452227))

(declare-fun m!452229 () Bool)

(assert (=> b!469916 m!452229))

(declare-fun m!452231 () Bool)

(assert (=> b!469916 m!452231))

(declare-fun m!452233 () Bool)

(assert (=> b!469916 m!452233))

(assert (=> b!469916 m!452223))

(declare-fun m!452235 () Bool)

(assert (=> b!469916 m!452235))

(declare-fun m!452237 () Bool)

(assert (=> b!469916 m!452237))

(declare-fun m!452239 () Bool)

(assert (=> b!469916 m!452239))

(declare-fun m!452241 () Bool)

(assert (=> b!469916 m!452241))

(declare-fun m!452243 () Bool)

(assert (=> b!469916 m!452243))

(assert (=> b!469916 m!452219))

(declare-fun m!452245 () Bool)

(assert (=> b!469916 m!452245))

(declare-fun m!452247 () Bool)

(assert (=> b!469916 m!452247))

(assert (=> b!469916 m!452229))

(assert (=> b!469916 m!452245))

(assert (=> b!469916 m!452147))

(assert (=> b!469916 m!452107))

(declare-fun m!452249 () Bool)

(assert (=> bm!30414 m!452249))

(assert (=> d!75201 m!452083))

(assert (=> b!469757 d!75201))

(declare-fun d!75203 () Bool)

(declare-fun e!275267 () Bool)

(assert (=> d!75203 e!275267))

(declare-fun res!280880 () Bool)

(assert (=> d!75203 (=> (not res!280880) (not e!275267))))

(declare-fun lt!213259 () ListLongMap!7565)

(assert (=> d!75203 (= res!280880 (contains!2540 lt!213259 (_1!4329 lt!213119)))))

(declare-fun lt!213262 () List!8758)

(assert (=> d!75203 (= lt!213259 (ListLongMap!7566 lt!213262))))

(declare-fun lt!213261 () Unit!13720)

(declare-fun lt!213260 () Unit!13720)

(assert (=> d!75203 (= lt!213261 lt!213260)))

(declare-datatypes ((Option!384 0))(
  ( (Some!383 (v!8868 V!18533)) (None!382) )
))
(declare-fun getValueByKey!378 (List!8758 (_ BitVec 64)) Option!384)

(assert (=> d!75203 (= (getValueByKey!378 lt!213262 (_1!4329 lt!213119)) (Some!383 (_2!4329 lt!213119)))))

(declare-fun lemmaContainsTupThenGetReturnValue!202 (List!8758 (_ BitVec 64) V!18533) Unit!13720)

(assert (=> d!75203 (= lt!213260 (lemmaContainsTupThenGetReturnValue!202 lt!213262 (_1!4329 lt!213119) (_2!4329 lt!213119)))))

(declare-fun insertStrictlySorted!204 (List!8758 (_ BitVec 64) V!18533) List!8758)

(assert (=> d!75203 (= lt!213262 (insertStrictlySorted!204 (toList!3798 lt!213117) (_1!4329 lt!213119) (_2!4329 lt!213119)))))

(assert (=> d!75203 (= (+!1684 lt!213117 lt!213119) lt!213259)))

(declare-fun b!469930 () Bool)

(declare-fun res!280879 () Bool)

(assert (=> b!469930 (=> (not res!280879) (not e!275267))))

(assert (=> b!469930 (= res!280879 (= (getValueByKey!378 (toList!3798 lt!213259) (_1!4329 lt!213119)) (Some!383 (_2!4329 lt!213119))))))

(declare-fun b!469931 () Bool)

(declare-fun contains!2542 (List!8758 tuple2!8638) Bool)

(assert (=> b!469931 (= e!275267 (contains!2542 (toList!3798 lt!213259) lt!213119))))

(assert (= (and d!75203 res!280880) b!469930))

(assert (= (and b!469930 res!280879) b!469931))

(declare-fun m!452251 () Bool)

(assert (=> d!75203 m!452251))

(declare-fun m!452253 () Bool)

(assert (=> d!75203 m!452253))

(declare-fun m!452255 () Bool)

(assert (=> d!75203 m!452255))

(declare-fun m!452257 () Bool)

(assert (=> d!75203 m!452257))

(declare-fun m!452259 () Bool)

(assert (=> b!469930 m!452259))

(declare-fun m!452261 () Bool)

(assert (=> b!469931 m!452261))

(assert (=> b!469757 d!75203))

(declare-fun d!75205 () Bool)

(declare-fun e!275268 () Bool)

(assert (=> d!75205 e!275268))

(declare-fun res!280882 () Bool)

(assert (=> d!75205 (=> (not res!280882) (not e!275268))))

(declare-fun lt!213263 () ListLongMap!7565)

(assert (=> d!75205 (= res!280882 (contains!2540 lt!213263 (_1!4329 lt!213119)))))

(declare-fun lt!213266 () List!8758)

(assert (=> d!75205 (= lt!213263 (ListLongMap!7566 lt!213266))))

(declare-fun lt!213265 () Unit!13720)

(declare-fun lt!213264 () Unit!13720)

(assert (=> d!75205 (= lt!213265 lt!213264)))

(assert (=> d!75205 (= (getValueByKey!378 lt!213266 (_1!4329 lt!213119)) (Some!383 (_2!4329 lt!213119)))))

(assert (=> d!75205 (= lt!213264 (lemmaContainsTupThenGetReturnValue!202 lt!213266 (_1!4329 lt!213119) (_2!4329 lt!213119)))))

(assert (=> d!75205 (= lt!213266 (insertStrictlySorted!204 (toList!3798 (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4329 lt!213119) (_2!4329 lt!213119)))))

(assert (=> d!75205 (= (+!1684 (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!213119) lt!213263)))

(declare-fun b!469932 () Bool)

(declare-fun res!280881 () Bool)

(assert (=> b!469932 (=> (not res!280881) (not e!275268))))

(assert (=> b!469932 (= res!280881 (= (getValueByKey!378 (toList!3798 lt!213263) (_1!4329 lt!213119)) (Some!383 (_2!4329 lt!213119))))))

(declare-fun b!469933 () Bool)

(assert (=> b!469933 (= e!275268 (contains!2542 (toList!3798 lt!213263) lt!213119))))

(assert (= (and d!75205 res!280882) b!469932))

(assert (= (and b!469932 res!280881) b!469933))

(declare-fun m!452263 () Bool)

(assert (=> d!75205 m!452263))

(declare-fun m!452265 () Bool)

(assert (=> d!75205 m!452265))

(declare-fun m!452267 () Bool)

(assert (=> d!75205 m!452267))

(declare-fun m!452269 () Bool)

(assert (=> d!75205 m!452269))

(declare-fun m!452271 () Bool)

(assert (=> b!469932 m!452271))

(declare-fun m!452273 () Bool)

(assert (=> b!469933 m!452273))

(assert (=> b!469757 d!75205))

(declare-fun d!75207 () Bool)

(assert (=> d!75207 (= (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1684 (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!213269 () Unit!13720)

(declare-fun choose!1354 (ListLongMap!7565 (_ BitVec 64) V!18533 V!18533) Unit!13720)

(assert (=> d!75207 (= lt!213269 (choose!1354 lt!213117 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75207 (= (addSameAsAddTwiceSameKeyDiffValues!125 lt!213117 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!213269)))

(declare-fun bs!14888 () Bool)

(assert (= bs!14888 d!75207))

(declare-fun m!452275 () Bool)

(assert (=> bs!14888 m!452275))

(assert (=> bs!14888 m!452091))

(assert (=> bs!14888 m!452091))

(declare-fun m!452277 () Bool)

(assert (=> bs!14888 m!452277))

(declare-fun m!452279 () Bool)

(assert (=> bs!14888 m!452279))

(assert (=> b!469757 d!75207))

(declare-fun d!75209 () Bool)

(declare-fun e!275269 () Bool)

(assert (=> d!75209 e!275269))

(declare-fun res!280884 () Bool)

(assert (=> d!75209 (=> (not res!280884) (not e!275269))))

(declare-fun lt!213270 () ListLongMap!7565)

(assert (=> d!75209 (= res!280884 (contains!2540 lt!213270 (_1!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!213273 () List!8758)

(assert (=> d!75209 (= lt!213270 (ListLongMap!7566 lt!213273))))

(declare-fun lt!213272 () Unit!13720)

(declare-fun lt!213271 () Unit!13720)

(assert (=> d!75209 (= lt!213272 lt!213271)))

(assert (=> d!75209 (= (getValueByKey!378 lt!213273 (_1!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!383 (_2!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75209 (= lt!213271 (lemmaContainsTupThenGetReturnValue!202 lt!213273 (_1!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75209 (= lt!213273 (insertStrictlySorted!204 (toList!3798 lt!213117) (_1!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75209 (= (+!1684 lt!213117 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!213270)))

(declare-fun b!469934 () Bool)

(declare-fun res!280883 () Bool)

(assert (=> b!469934 (=> (not res!280883) (not e!275269))))

(assert (=> b!469934 (= res!280883 (= (getValueByKey!378 (toList!3798 lt!213270) (_1!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!383 (_2!4329 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!469935 () Bool)

(assert (=> b!469935 (= e!275269 (contains!2542 (toList!3798 lt!213270) (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75209 res!280884) b!469934))

(assert (= (and b!469934 res!280883) b!469935))

(declare-fun m!452281 () Bool)

(assert (=> d!75209 m!452281))

(declare-fun m!452283 () Bool)

(assert (=> d!75209 m!452283))

(declare-fun m!452285 () Bool)

(assert (=> d!75209 m!452285))

(declare-fun m!452287 () Bool)

(assert (=> d!75209 m!452287))

(declare-fun m!452289 () Bool)

(assert (=> b!469934 m!452289))

(declare-fun m!452291 () Bool)

(assert (=> b!469935 m!452291))

(assert (=> b!469757 d!75209))

(declare-fun b!469936 () Bool)

(declare-fun e!275276 () Bool)

(declare-fun call!30426 () Bool)

(assert (=> b!469936 (= e!275276 (not call!30426))))

(declare-fun bm!30419 () Bool)

(declare-fun call!30427 () Bool)

(declare-fun lt!213287 () ListLongMap!7565)

(assert (=> bm!30419 (= call!30427 (contains!2540 lt!213287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469937 () Bool)

(declare-fun e!275279 () Unit!13720)

(declare-fun Unit!13723 () Unit!13720)

(assert (=> b!469937 (= e!275279 Unit!13723)))

(declare-fun bm!30420 () Bool)

(declare-fun call!30424 () ListLongMap!7565)

(declare-fun call!30423 () ListLongMap!7565)

(assert (=> bm!30420 (= call!30424 call!30423)))

(declare-fun b!469938 () Bool)

(declare-fun e!275273 () Bool)

(assert (=> b!469938 (= e!275273 (= (apply!327 lt!213287 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)) (get!7025 (select (arr!14359 _values!833) #b00000000000000000000000000000000) (dynLambda!919 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!469938 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14711 _values!833)))))

(assert (=> b!469938 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun c!56862 () Bool)

(declare-fun call!30422 () ListLongMap!7565)

(declare-fun c!56865 () Bool)

(declare-fun call!30428 () ListLongMap!7565)

(declare-fun bm!30421 () Bool)

(assert (=> bm!30421 (= call!30422 (+!1684 (ite c!56865 call!30423 (ite c!56862 call!30424 call!30428)) (ite (or c!56865 c!56862) (tuple2!8639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!469939 () Bool)

(declare-fun e!275274 () Bool)

(declare-fun e!275281 () Bool)

(assert (=> b!469939 (= e!275274 e!275281)))

(declare-fun res!280885 () Bool)

(assert (=> b!469939 (= res!280885 call!30427)))

(assert (=> b!469939 (=> (not res!280885) (not e!275281))))

(declare-fun bm!30422 () Bool)

(assert (=> bm!30422 (= call!30428 call!30424)))

(declare-fun bm!30423 () Bool)

(assert (=> bm!30423 (= call!30426 (contains!2540 lt!213287 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469940 () Bool)

(declare-fun e!275270 () ListLongMap!7565)

(declare-fun e!275271 () ListLongMap!7565)

(assert (=> b!469940 (= e!275270 e!275271)))

(assert (=> b!469940 (= c!56862 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!469941 () Bool)

(declare-fun call!30425 () ListLongMap!7565)

(assert (=> b!469941 (= e!275271 call!30425)))

(declare-fun b!469942 () Bool)

(assert (=> b!469942 (= e!275281 (= (apply!327 lt!213287 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!469944 () Bool)

(declare-fun e!275272 () Bool)

(assert (=> b!469944 (= e!275272 (= (apply!327 lt!213287 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!469945 () Bool)

(declare-fun e!275277 () Bool)

(assert (=> b!469945 (= e!275277 e!275273)))

(declare-fun res!280886 () Bool)

(assert (=> b!469945 (=> (not res!280886) (not e!275273))))

(assert (=> b!469945 (= res!280886 (contains!2540 lt!213287 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469945 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun bm!30424 () Bool)

(assert (=> bm!30424 (= call!30425 call!30422)))

(declare-fun b!469946 () Bool)

(declare-fun e!275282 () Bool)

(assert (=> b!469946 (= e!275282 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469947 () Bool)

(declare-fun lt!213283 () Unit!13720)

(assert (=> b!469947 (= e!275279 lt!213283)))

(declare-fun lt!213284 () ListLongMap!7565)

(assert (=> b!469947 (= lt!213284 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213286 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213286 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213277 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213277 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213293 () Unit!13720)

(assert (=> b!469947 (= lt!213293 (addStillContains!289 lt!213284 lt!213286 zeroValue!794 lt!213277))))

(assert (=> b!469947 (contains!2540 (+!1684 lt!213284 (tuple2!8639 lt!213286 zeroValue!794)) lt!213277)))

(declare-fun lt!213295 () Unit!13720)

(assert (=> b!469947 (= lt!213295 lt!213293)))

(declare-fun lt!213292 () ListLongMap!7565)

(assert (=> b!469947 (= lt!213292 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213274 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213274 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213291 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213291 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213282 () Unit!13720)

(assert (=> b!469947 (= lt!213282 (addApplyDifferent!289 lt!213292 lt!213274 minValueBefore!38 lt!213291))))

(assert (=> b!469947 (= (apply!327 (+!1684 lt!213292 (tuple2!8639 lt!213274 minValueBefore!38)) lt!213291) (apply!327 lt!213292 lt!213291))))

(declare-fun lt!213289 () Unit!13720)

(assert (=> b!469947 (= lt!213289 lt!213282)))

(declare-fun lt!213288 () ListLongMap!7565)

(assert (=> b!469947 (= lt!213288 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213290 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213290 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213278 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213278 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213294 () Unit!13720)

(assert (=> b!469947 (= lt!213294 (addApplyDifferent!289 lt!213288 lt!213290 zeroValue!794 lt!213278))))

(assert (=> b!469947 (= (apply!327 (+!1684 lt!213288 (tuple2!8639 lt!213290 zeroValue!794)) lt!213278) (apply!327 lt!213288 lt!213278))))

(declare-fun lt!213280 () Unit!13720)

(assert (=> b!469947 (= lt!213280 lt!213294)))

(declare-fun lt!213279 () ListLongMap!7565)

(assert (=> b!469947 (= lt!213279 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213275 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213275 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!213285 () (_ BitVec 64))

(assert (=> b!469947 (= lt!213285 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!469947 (= lt!213283 (addApplyDifferent!289 lt!213279 lt!213275 minValueBefore!38 lt!213285))))

(assert (=> b!469947 (= (apply!327 (+!1684 lt!213279 (tuple2!8639 lt!213275 minValueBefore!38)) lt!213285) (apply!327 lt!213279 lt!213285))))

(declare-fun b!469948 () Bool)

(declare-fun e!275275 () Bool)

(assert (=> b!469948 (= e!275275 (validKeyInArray!0 (select (arr!14360 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469949 () Bool)

(assert (=> b!469949 (= e!275270 (+!1684 call!30422 (tuple2!8639 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!469950 () Bool)

(declare-fun e!275278 () Bool)

(assert (=> b!469950 (= e!275278 e!275276)))

(declare-fun c!56866 () Bool)

(assert (=> b!469950 (= c!56866 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!469951 () Bool)

(assert (=> b!469951 (= e!275276 e!275272)))

(declare-fun res!280892 () Bool)

(assert (=> b!469951 (= res!280892 call!30426)))

(assert (=> b!469951 (=> (not res!280892) (not e!275272))))

(declare-fun b!469952 () Bool)

(declare-fun res!280890 () Bool)

(assert (=> b!469952 (=> (not res!280890) (not e!275278))))

(assert (=> b!469952 (= res!280890 e!275277)))

(declare-fun res!280893 () Bool)

(assert (=> b!469952 (=> res!280893 e!275277)))

(assert (=> b!469952 (= res!280893 (not e!275282))))

(declare-fun res!280888 () Bool)

(assert (=> b!469952 (=> (not res!280888) (not e!275282))))

(assert (=> b!469952 (= res!280888 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(declare-fun bm!30425 () Bool)

(assert (=> bm!30425 (= call!30423 (getCurrentListMapNoExtraKeys!1960 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun d!75211 () Bool)

(assert (=> d!75211 e!275278))

(declare-fun res!280887 () Bool)

(assert (=> d!75211 (=> (not res!280887) (not e!275278))))

(assert (=> d!75211 (= res!280887 (or (bvsge #b00000000000000000000000000000000 (size!14712 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))))

(declare-fun lt!213281 () ListLongMap!7565)

(assert (=> d!75211 (= lt!213287 lt!213281)))

(declare-fun lt!213276 () Unit!13720)

(assert (=> d!75211 (= lt!213276 e!275279)))

(declare-fun c!56863 () Bool)

(assert (=> d!75211 (= c!56863 e!275275)))

(declare-fun res!280891 () Bool)

(assert (=> d!75211 (=> (not res!280891) (not e!275275))))

(assert (=> d!75211 (= res!280891 (bvslt #b00000000000000000000000000000000 (size!14712 _keys!1025)))))

(assert (=> d!75211 (= lt!213281 e!275270)))

(assert (=> d!75211 (= c!56865 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75211 (validMask!0 mask!1365)))

(assert (=> d!75211 (= (getCurrentListMap!2206 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213287)))

(declare-fun b!469943 () Bool)

(declare-fun c!56867 () Bool)

(assert (=> b!469943 (= c!56867 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!275280 () ListLongMap!7565)

(assert (=> b!469943 (= e!275271 e!275280)))

(declare-fun b!469953 () Bool)

(assert (=> b!469953 (= e!275274 (not call!30427))))

(declare-fun b!469954 () Bool)

(declare-fun res!280889 () Bool)

(assert (=> b!469954 (=> (not res!280889) (not e!275278))))

(assert (=> b!469954 (= res!280889 e!275274)))

(declare-fun c!56864 () Bool)

(assert (=> b!469954 (= c!56864 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!469955 () Bool)

(assert (=> b!469955 (= e!275280 call!30428)))

(declare-fun b!469956 () Bool)

(assert (=> b!469956 (= e!275280 call!30425)))

(assert (= (and d!75211 c!56865) b!469949))

(assert (= (and d!75211 (not c!56865)) b!469940))

(assert (= (and b!469940 c!56862) b!469941))

(assert (= (and b!469940 (not c!56862)) b!469943))

(assert (= (and b!469943 c!56867) b!469956))

(assert (= (and b!469943 (not c!56867)) b!469955))

(assert (= (or b!469956 b!469955) bm!30422))

(assert (= (or b!469941 bm!30422) bm!30420))

(assert (= (or b!469941 b!469956) bm!30424))

(assert (= (or b!469949 bm!30420) bm!30425))

(assert (= (or b!469949 bm!30424) bm!30421))

(assert (= (and d!75211 res!280891) b!469948))

(assert (= (and d!75211 c!56863) b!469947))

(assert (= (and d!75211 (not c!56863)) b!469937))

(assert (= (and d!75211 res!280887) b!469952))

(assert (= (and b!469952 res!280888) b!469946))

(assert (= (and b!469952 (not res!280893)) b!469945))

(assert (= (and b!469945 res!280886) b!469938))

(assert (= (and b!469952 res!280890) b!469954))

(assert (= (and b!469954 c!56864) b!469939))

(assert (= (and b!469954 (not c!56864)) b!469953))

(assert (= (and b!469939 res!280885) b!469942))

(assert (= (or b!469939 b!469953) bm!30419))

(assert (= (and b!469954 res!280889) b!469950))

(assert (= (and b!469950 c!56866) b!469951))

(assert (= (and b!469950 (not c!56866)) b!469936))

(assert (= (and b!469951 res!280892) b!469944))

(assert (= (or b!469951 b!469936) bm!30423))

(declare-fun b_lambda!10153 () Bool)

(assert (=> (not b_lambda!10153) (not b!469938)))

(assert (=> b!469938 t!14728))

(declare-fun b_and!20085 () Bool)

(assert (= b_and!20083 (and (=> t!14728 result!7423) b_and!20085)))

(declare-fun m!452293 () Bool)

(assert (=> b!469949 m!452293))

(assert (=> b!469938 m!452155))

(assert (=> b!469938 m!452159))

(assert (=> b!469938 m!452155))

(assert (=> b!469938 m!452161))

(assert (=> b!469938 m!452159))

(assert (=> b!469938 m!452147))

(declare-fun m!452295 () Bool)

(assert (=> b!469938 m!452295))

(assert (=> b!469938 m!452147))

(declare-fun m!452297 () Bool)

(assert (=> b!469944 m!452297))

(assert (=> bm!30425 m!452109))

(assert (=> b!469946 m!452147))

(assert (=> b!469946 m!452147))

(assert (=> b!469946 m!452149))

(declare-fun m!452299 () Bool)

(assert (=> bm!30423 m!452299))

(assert (=> b!469945 m!452147))

(assert (=> b!469945 m!452147))

(declare-fun m!452301 () Bool)

(assert (=> b!469945 m!452301))

(declare-fun m!452303 () Bool)

(assert (=> b!469942 m!452303))

(declare-fun m!452305 () Bool)

(assert (=> bm!30419 m!452305))

(assert (=> b!469948 m!452147))

(assert (=> b!469948 m!452147))

(assert (=> b!469948 m!452149))

(declare-fun m!452307 () Bool)

(assert (=> b!469947 m!452307))

(declare-fun m!452309 () Bool)

(assert (=> b!469947 m!452309))

(declare-fun m!452311 () Bool)

(assert (=> b!469947 m!452311))

(declare-fun m!452313 () Bool)

(assert (=> b!469947 m!452313))

(declare-fun m!452315 () Bool)

(assert (=> b!469947 m!452315))

(declare-fun m!452317 () Bool)

(assert (=> b!469947 m!452317))

(declare-fun m!452319 () Bool)

(assert (=> b!469947 m!452319))

(declare-fun m!452321 () Bool)

(assert (=> b!469947 m!452321))

(assert (=> b!469947 m!452311))

(declare-fun m!452323 () Bool)

(assert (=> b!469947 m!452323))

(declare-fun m!452325 () Bool)

(assert (=> b!469947 m!452325))

(declare-fun m!452327 () Bool)

(assert (=> b!469947 m!452327))

(declare-fun m!452329 () Bool)

(assert (=> b!469947 m!452329))

(declare-fun m!452331 () Bool)

(assert (=> b!469947 m!452331))

(assert (=> b!469947 m!452307))

(declare-fun m!452333 () Bool)

(assert (=> b!469947 m!452333))

(declare-fun m!452335 () Bool)

(assert (=> b!469947 m!452335))

(assert (=> b!469947 m!452317))

(assert (=> b!469947 m!452333))

(assert (=> b!469947 m!452147))

(assert (=> b!469947 m!452109))

(declare-fun m!452337 () Bool)

(assert (=> bm!30421 m!452337))

(assert (=> d!75211 m!452083))

(assert (=> b!469757 d!75211))

(declare-fun d!75213 () Bool)

(assert (=> d!75213 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42098 d!75213))

(declare-fun d!75215 () Bool)

(assert (=> d!75215 (= (array_inv!10356 _keys!1025) (bvsge (size!14712 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42098 d!75215))

(declare-fun d!75217 () Bool)

(assert (=> d!75217 (= (array_inv!10357 _values!833) (bvsge (size!14711 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42098 d!75217))

(declare-fun b!469963 () Bool)

(declare-fun e!275288 () Bool)

(assert (=> b!469963 (= e!275288 tp_is_empty!13071)))

(declare-fun b!469964 () Bool)

(declare-fun e!275287 () Bool)

(assert (=> b!469964 (= e!275287 tp_is_empty!13071)))

(declare-fun mapNonEmpty!21310 () Bool)

(declare-fun mapRes!21310 () Bool)

(declare-fun tp!40957 () Bool)

(assert (=> mapNonEmpty!21310 (= mapRes!21310 (and tp!40957 e!275288))))

(declare-fun mapKey!21310 () (_ BitVec 32))

(declare-fun mapRest!21310 () (Array (_ BitVec 32) ValueCell!6192))

(declare-fun mapValue!21310 () ValueCell!6192)

(assert (=> mapNonEmpty!21310 (= mapRest!21304 (store mapRest!21310 mapKey!21310 mapValue!21310))))

(declare-fun condMapEmpty!21310 () Bool)

(declare-fun mapDefault!21310 () ValueCell!6192)

(assert (=> mapNonEmpty!21304 (= condMapEmpty!21310 (= mapRest!21304 ((as const (Array (_ BitVec 32) ValueCell!6192)) mapDefault!21310)))))

(assert (=> mapNonEmpty!21304 (= tp!40948 (and e!275287 mapRes!21310))))

(declare-fun mapIsEmpty!21310 () Bool)

(assert (=> mapIsEmpty!21310 mapRes!21310))

(assert (= (and mapNonEmpty!21304 condMapEmpty!21310) mapIsEmpty!21310))

(assert (= (and mapNonEmpty!21304 (not condMapEmpty!21310)) mapNonEmpty!21310))

(assert (= (and mapNonEmpty!21310 ((_ is ValueCellFull!6192) mapValue!21310)) b!469963))

(assert (= (and mapNonEmpty!21304 ((_ is ValueCellFull!6192) mapDefault!21310)) b!469964))

(declare-fun m!452339 () Bool)

(assert (=> mapNonEmpty!21310 m!452339))

(declare-fun b_lambda!10155 () Bool)

(assert (= b_lambda!10153 (or (and start!42098 b_free!11643) b_lambda!10155)))

(declare-fun b_lambda!10157 () Bool)

(assert (= b_lambda!10151 (or (and start!42098 b_free!11643) b_lambda!10157)))

(declare-fun b_lambda!10159 () Bool)

(assert (= b_lambda!10143 (or (and start!42098 b_free!11643) b_lambda!10159)))

(declare-fun b_lambda!10161 () Bool)

(assert (= b_lambda!10149 (or (and start!42098 b_free!11643) b_lambda!10161)))

(declare-fun b_lambda!10163 () Bool)

(assert (= b_lambda!10145 (or (and start!42098 b_free!11643) b_lambda!10163)))

(declare-fun b_lambda!10165 () Bool)

(assert (= b_lambda!10147 (or (and start!42098 b_free!11643) b_lambda!10165)))

(check-sat (not bm!30419) (not b!469831) (not bm!30390) (not b!469814) (not b!469913) (not d!75211) (not b!469830) (not b!469833) (not b_lambda!10159) (not b!469916) (not b!469907) (not bm!30416) b_and!20085 (not b!469858) (not b!469861) (not b!469931) (not b!469942) (not d!75203) (not b_lambda!10163) (not b!469821) (not b_lambda!10165) (not b!469917) (not b!469944) (not b!469918) (not b!469949) tp_is_empty!13071 (not b!469819) (not b!469816) (not b!469835) (not d!75201) (not b!469812) (not b!469930) (not b_lambda!10161) (not b!469945) (not d!75191) (not b!469933) (not b!469828) (not b!469915) (not d!75207) (not b_lambda!10155) (not b!469934) (not b!469948) (not b!469938) (not bm!30391) (not b!469935) (not b!469911) (not bm!30423) (not b!469859) (not b_next!11643) (not bm!30397) (not b_lambda!10157) (not b!469829) (not b!469947) (not b!469826) (not bm!30418) (not bm!30425) (not d!75205) (not b!469946) (not d!75209) (not b!469811) (not b!469847) (not b!469846) (not b!469914) (not bm!30414) (not d!75193) (not b!469817) (not bm!30412) (not mapNonEmpty!21310) (not bm!30394) (not b!469815) (not bm!30421) (not d!75195) (not b!469825) (not b!469932))
(check-sat b_and!20085 (not b_next!11643))
