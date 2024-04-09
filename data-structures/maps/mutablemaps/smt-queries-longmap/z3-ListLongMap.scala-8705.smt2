; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105702 () Bool)

(assert start!105702)

(declare-fun b_free!27267 () Bool)

(declare-fun b_next!27267 () Bool)

(assert (=> start!105702 (= b_free!27267 (not b_next!27267))))

(declare-fun tp!95324 () Bool)

(declare-fun b_and!45151 () Bool)

(assert (=> start!105702 (= tp!95324 b_and!45151)))

(declare-fun res!838941 () Bool)

(declare-fun e!715891 () Bool)

(assert (=> start!105702 (=> (not res!838941) (not e!715891))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105702 (= res!838941 (validMask!0 mask!1466))))

(assert (=> start!105702 e!715891))

(assert (=> start!105702 true))

(assert (=> start!105702 tp!95324))

(declare-fun tp_is_empty!32169 () Bool)

(assert (=> start!105702 tp_is_empty!32169))

(declare-datatypes ((array!81953 0))(
  ( (array!81954 (arr!39528 (Array (_ BitVec 32) (_ BitVec 64))) (size!40065 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81953)

(declare-fun array_inv!30055 (array!81953) Bool)

(assert (=> start!105702 (array_inv!30055 _keys!1118)))

(declare-datatypes ((V!48257 0))(
  ( (V!48258 (val!16147 Int)) )
))
(declare-datatypes ((ValueCell!15321 0))(
  ( (ValueCellFull!15321 (v!18849 V!48257)) (EmptyCell!15321) )
))
(declare-datatypes ((array!81955 0))(
  ( (array!81956 (arr!39529 (Array (_ BitVec 32) ValueCell!15321)) (size!40066 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81955)

(declare-fun e!715889 () Bool)

(declare-fun array_inv!30056 (array!81955) Bool)

(assert (=> start!105702 (and (array_inv!30056 _values!914) e!715889)))

(declare-fun b!1258583 () Bool)

(declare-fun e!715893 () Bool)

(assert (=> b!1258583 (= e!715891 (not e!715893))))

(declare-fun res!838939 () Bool)

(assert (=> b!1258583 (=> res!838939 e!715893)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258583 (= res!838939 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21022 0))(
  ( (tuple2!21023 (_1!10521 (_ BitVec 64)) (_2!10521 V!48257)) )
))
(declare-datatypes ((List!28254 0))(
  ( (Nil!28251) (Cons!28250 (h!29459 tuple2!21022) (t!41754 List!28254)) )
))
(declare-datatypes ((ListLongMap!18907 0))(
  ( (ListLongMap!18908 (toList!9469 List!28254)) )
))
(declare-fun lt!569259 () ListLongMap!18907)

(declare-fun lt!569261 () ListLongMap!18907)

(assert (=> b!1258583 (= lt!569259 lt!569261)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48257)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48257)

(declare-fun minValueBefore!43 () V!48257)

(declare-datatypes ((Unit!41908 0))(
  ( (Unit!41909) )
))
(declare-fun lt!569262 () Unit!41908)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1137 (array!81953 array!81955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48257 V!48257 V!48257 V!48257 (_ BitVec 32) Int) Unit!41908)

(assert (=> b!1258583 (= lt!569262 (lemmaNoChangeToArrayThenSameMapNoExtras!1137 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5819 (array!81953 array!81955 (_ BitVec 32) (_ BitVec 32) V!48257 V!48257 (_ BitVec 32) Int) ListLongMap!18907)

(assert (=> b!1258583 (= lt!569261 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258583 (= lt!569259 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258584 () Bool)

(declare-fun e!715894 () Bool)

(assert (=> b!1258584 (= e!715894 tp_is_empty!32169)))

(declare-fun b!1258585 () Bool)

(declare-fun e!715892 () Bool)

(assert (=> b!1258585 (= e!715892 tp_is_empty!32169)))

(declare-fun b!1258586 () Bool)

(declare-fun mapRes!50047 () Bool)

(assert (=> b!1258586 (= e!715889 (and e!715892 mapRes!50047))))

(declare-fun condMapEmpty!50047 () Bool)

(declare-fun mapDefault!50047 () ValueCell!15321)

(assert (=> b!1258586 (= condMapEmpty!50047 (= (arr!39529 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15321)) mapDefault!50047)))))

(declare-fun b!1258587 () Bool)

(declare-fun res!838940 () Bool)

(assert (=> b!1258587 (=> (not res!838940) (not e!715891))))

(assert (=> b!1258587 (= res!838940 (and (= (size!40066 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40065 _keys!1118) (size!40066 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50047 () Bool)

(declare-fun tp!95325 () Bool)

(assert (=> mapNonEmpty!50047 (= mapRes!50047 (and tp!95325 e!715894))))

(declare-fun mapRest!50047 () (Array (_ BitVec 32) ValueCell!15321))

(declare-fun mapKey!50047 () (_ BitVec 32))

(declare-fun mapValue!50047 () ValueCell!15321)

(assert (=> mapNonEmpty!50047 (= (arr!39529 _values!914) (store mapRest!50047 mapKey!50047 mapValue!50047))))

(declare-fun mapIsEmpty!50047 () Bool)

(assert (=> mapIsEmpty!50047 mapRes!50047))

(declare-fun b!1258588 () Bool)

(declare-fun res!838943 () Bool)

(assert (=> b!1258588 (=> (not res!838943) (not e!715891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81953 (_ BitVec 32)) Bool)

(assert (=> b!1258588 (= res!838943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258589 () Bool)

(declare-fun res!838942 () Bool)

(assert (=> b!1258589 (=> (not res!838942) (not e!715891))))

(declare-datatypes ((List!28255 0))(
  ( (Nil!28252) (Cons!28251 (h!29460 (_ BitVec 64)) (t!41755 List!28255)) )
))
(declare-fun arrayNoDuplicates!0 (array!81953 (_ BitVec 32) List!28255) Bool)

(assert (=> b!1258589 (= res!838942 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28252))))

(declare-fun b!1258590 () Bool)

(assert (=> b!1258590 (= e!715893 (bvsle #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun lt!569260 () ListLongMap!18907)

(declare-fun getCurrentListMap!4608 (array!81953 array!81955 (_ BitVec 32) (_ BitVec 32) V!48257 V!48257 (_ BitVec 32) Int) ListLongMap!18907)

(assert (=> b!1258590 (= lt!569260 (getCurrentListMap!4608 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105702 res!838941) b!1258587))

(assert (= (and b!1258587 res!838940) b!1258588))

(assert (= (and b!1258588 res!838943) b!1258589))

(assert (= (and b!1258589 res!838942) b!1258583))

(assert (= (and b!1258583 (not res!838939)) b!1258590))

(assert (= (and b!1258586 condMapEmpty!50047) mapIsEmpty!50047))

(assert (= (and b!1258586 (not condMapEmpty!50047)) mapNonEmpty!50047))

(get-info :version)

(assert (= (and mapNonEmpty!50047 ((_ is ValueCellFull!15321) mapValue!50047)) b!1258584))

(assert (= (and b!1258586 ((_ is ValueCellFull!15321) mapDefault!50047)) b!1258585))

(assert (= start!105702 b!1258586))

(declare-fun m!1159015 () Bool)

(assert (=> b!1258589 m!1159015))

(declare-fun m!1159017 () Bool)

(assert (=> b!1258588 m!1159017))

(declare-fun m!1159019 () Bool)

(assert (=> b!1258590 m!1159019))

(declare-fun m!1159021 () Bool)

(assert (=> start!105702 m!1159021))

(declare-fun m!1159023 () Bool)

(assert (=> start!105702 m!1159023))

(declare-fun m!1159025 () Bool)

(assert (=> start!105702 m!1159025))

(declare-fun m!1159027 () Bool)

(assert (=> mapNonEmpty!50047 m!1159027))

(declare-fun m!1159029 () Bool)

(assert (=> b!1258583 m!1159029))

(declare-fun m!1159031 () Bool)

(assert (=> b!1258583 m!1159031))

(declare-fun m!1159033 () Bool)

(assert (=> b!1258583 m!1159033))

(check-sat tp_is_empty!32169 b_and!45151 (not b_next!27267) (not b!1258590) (not b!1258588) (not mapNonEmpty!50047) (not start!105702) (not b!1258583) (not b!1258589))
(check-sat b_and!45151 (not b_next!27267))
(get-model)

(declare-fun d!138221 () Bool)

(assert (=> d!138221 (= (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569277 () Unit!41908)

(declare-fun choose!1872 (array!81953 array!81955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48257 V!48257 V!48257 V!48257 (_ BitVec 32) Int) Unit!41908)

(assert (=> d!138221 (= lt!569277 (choose!1872 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138221 (validMask!0 mask!1466)))

(assert (=> d!138221 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1137 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!569277)))

(declare-fun bs!35600 () Bool)

(assert (= bs!35600 d!138221))

(assert (=> bs!35600 m!1159033))

(assert (=> bs!35600 m!1159031))

(declare-fun m!1159055 () Bool)

(assert (=> bs!35600 m!1159055))

(assert (=> bs!35600 m!1159021))

(assert (=> b!1258583 d!138221))

(declare-fun b!1258639 () Bool)

(declare-fun e!715929 () Bool)

(declare-fun lt!569295 () ListLongMap!18907)

(assert (=> b!1258639 (= e!715929 (= lt!569295 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1258640 () Bool)

(declare-fun isEmpty!1036 (ListLongMap!18907) Bool)

(assert (=> b!1258640 (= e!715929 (isEmpty!1036 lt!569295))))

(declare-fun b!1258641 () Bool)

(declare-fun e!715927 () Bool)

(assert (=> b!1258641 (= e!715927 e!715929)))

(declare-fun c!122468 () Bool)

(assert (=> b!1258641 (= c!122468 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258642 () Bool)

(declare-fun e!715932 () ListLongMap!18907)

(declare-fun e!715933 () ListLongMap!18907)

(assert (=> b!1258642 (= e!715932 e!715933)))

(declare-fun c!122470 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1258642 (= c!122470 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1258643 () Bool)

(declare-fun e!715928 () Bool)

(assert (=> b!1258643 (= e!715928 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1258643 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1258644 () Bool)

(declare-fun lt!569294 () Unit!41908)

(declare-fun lt!569296 () Unit!41908)

(assert (=> b!1258644 (= lt!569294 lt!569296)))

(declare-fun lt!569298 () ListLongMap!18907)

(declare-fun lt!569293 () (_ BitVec 64))

(declare-fun lt!569297 () V!48257)

(declare-fun lt!569292 () (_ BitVec 64))

(declare-fun contains!7591 (ListLongMap!18907 (_ BitVec 64)) Bool)

(declare-fun +!4169 (ListLongMap!18907 tuple2!21022) ListLongMap!18907)

(assert (=> b!1258644 (not (contains!7591 (+!4169 lt!569298 (tuple2!21023 lt!569292 lt!569297)) lt!569293))))

(declare-fun addStillNotContains!321 (ListLongMap!18907 (_ BitVec 64) V!48257 (_ BitVec 64)) Unit!41908)

(assert (=> b!1258644 (= lt!569296 (addStillNotContains!321 lt!569298 lt!569292 lt!569297 lt!569293))))

(assert (=> b!1258644 (= lt!569293 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20238 (ValueCell!15321 V!48257) V!48257)

(declare-fun dynLambda!3471 (Int (_ BitVec 64)) V!48257)

(assert (=> b!1258644 (= lt!569297 (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1258644 (= lt!569292 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61848 () ListLongMap!18907)

(assert (=> b!1258644 (= lt!569298 call!61848)))

(assert (=> b!1258644 (= e!715933 (+!4169 call!61848 (tuple2!21023 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000) (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1258645 () Bool)

(declare-fun e!715930 () Bool)

(assert (=> b!1258645 (= e!715927 e!715930)))

(assert (=> b!1258645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun res!838967 () Bool)

(assert (=> b!1258645 (= res!838967 (contains!7591 lt!569295 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1258645 (=> (not res!838967) (not e!715930))))

(declare-fun d!138223 () Bool)

(declare-fun e!715931 () Bool)

(assert (=> d!138223 e!715931))

(declare-fun res!838970 () Bool)

(assert (=> d!138223 (=> (not res!838970) (not e!715931))))

(assert (=> d!138223 (= res!838970 (not (contains!7591 lt!569295 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138223 (= lt!569295 e!715932)))

(declare-fun c!122471 () Bool)

(assert (=> d!138223 (= c!122471 (bvsge #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> d!138223 (validMask!0 mask!1466)))

(assert (=> d!138223 (= (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!569295)))

(declare-fun bm!61845 () Bool)

(assert (=> bm!61845 (= call!61848 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1258646 () Bool)

(assert (=> b!1258646 (= e!715933 call!61848)))

(declare-fun b!1258647 () Bool)

(assert (=> b!1258647 (= e!715931 e!715927)))

(declare-fun c!122469 () Bool)

(assert (=> b!1258647 (= c!122469 e!715928)))

(declare-fun res!838968 () Bool)

(assert (=> b!1258647 (=> (not res!838968) (not e!715928))))

(assert (=> b!1258647 (= res!838968 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258648 () Bool)

(assert (=> b!1258648 (= e!715932 (ListLongMap!18908 Nil!28251))))

(declare-fun b!1258649 () Bool)

(assert (=> b!1258649 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> b!1258649 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40066 _values!914)))))

(declare-fun apply!1026 (ListLongMap!18907 (_ BitVec 64)) V!48257)

(assert (=> b!1258649 (= e!715930 (= (apply!1026 lt!569295 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)) (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1258650 () Bool)

(declare-fun res!838969 () Bool)

(assert (=> b!1258650 (=> (not res!838969) (not e!715931))))

(assert (=> b!1258650 (= res!838969 (not (contains!7591 lt!569295 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138223 c!122471) b!1258648))

(assert (= (and d!138223 (not c!122471)) b!1258642))

(assert (= (and b!1258642 c!122470) b!1258644))

(assert (= (and b!1258642 (not c!122470)) b!1258646))

(assert (= (or b!1258644 b!1258646) bm!61845))

(assert (= (and d!138223 res!838970) b!1258650))

(assert (= (and b!1258650 res!838969) b!1258647))

(assert (= (and b!1258647 res!838968) b!1258643))

(assert (= (and b!1258647 c!122469) b!1258645))

(assert (= (and b!1258647 (not c!122469)) b!1258641))

(assert (= (and b!1258645 res!838967) b!1258649))

(assert (= (and b!1258641 c!122468) b!1258639))

(assert (= (and b!1258641 (not c!122468)) b!1258640))

(declare-fun b_lambda!22733 () Bool)

(assert (=> (not b_lambda!22733) (not b!1258644)))

(declare-fun t!41758 () Bool)

(declare-fun tb!11317 () Bool)

(assert (=> (and start!105702 (= defaultEntry!922 defaultEntry!922) t!41758) tb!11317))

(declare-fun result!23343 () Bool)

(assert (=> tb!11317 (= result!23343 tp_is_empty!32169)))

(assert (=> b!1258644 t!41758))

(declare-fun b_and!45155 () Bool)

(assert (= b_and!45151 (and (=> t!41758 result!23343) b_and!45155)))

(declare-fun b_lambda!22735 () Bool)

(assert (=> (not b_lambda!22735) (not b!1258649)))

(assert (=> b!1258649 t!41758))

(declare-fun b_and!45157 () Bool)

(assert (= b_and!45155 (and (=> t!41758 result!23343) b_and!45157)))

(declare-fun m!1159057 () Bool)

(assert (=> b!1258640 m!1159057))

(declare-fun m!1159059 () Bool)

(assert (=> b!1258645 m!1159059))

(assert (=> b!1258645 m!1159059))

(declare-fun m!1159061 () Bool)

(assert (=> b!1258645 m!1159061))

(declare-fun m!1159063 () Bool)

(assert (=> d!138223 m!1159063))

(assert (=> d!138223 m!1159021))

(assert (=> b!1258643 m!1159059))

(assert (=> b!1258643 m!1159059))

(declare-fun m!1159065 () Bool)

(assert (=> b!1258643 m!1159065))

(declare-fun m!1159067 () Bool)

(assert (=> bm!61845 m!1159067))

(declare-fun m!1159069 () Bool)

(assert (=> b!1258650 m!1159069))

(assert (=> b!1258639 m!1159067))

(declare-fun m!1159071 () Bool)

(assert (=> b!1258644 m!1159071))

(declare-fun m!1159073 () Bool)

(assert (=> b!1258644 m!1159073))

(declare-fun m!1159075 () Bool)

(assert (=> b!1258644 m!1159075))

(declare-fun m!1159077 () Bool)

(assert (=> b!1258644 m!1159077))

(assert (=> b!1258644 m!1159059))

(declare-fun m!1159079 () Bool)

(assert (=> b!1258644 m!1159079))

(declare-fun m!1159081 () Bool)

(assert (=> b!1258644 m!1159081))

(assert (=> b!1258644 m!1159079))

(assert (=> b!1258644 m!1159073))

(assert (=> b!1258644 m!1159071))

(declare-fun m!1159083 () Bool)

(assert (=> b!1258644 m!1159083))

(assert (=> b!1258642 m!1159059))

(assert (=> b!1258642 m!1159059))

(assert (=> b!1258642 m!1159065))

(assert (=> b!1258649 m!1159071))

(assert (=> b!1258649 m!1159059))

(declare-fun m!1159085 () Bool)

(assert (=> b!1258649 m!1159085))

(assert (=> b!1258649 m!1159059))

(assert (=> b!1258649 m!1159073))

(assert (=> b!1258649 m!1159073))

(assert (=> b!1258649 m!1159071))

(assert (=> b!1258649 m!1159083))

(assert (=> b!1258583 d!138223))

(declare-fun e!715936 () Bool)

(declare-fun lt!569302 () ListLongMap!18907)

(declare-fun b!1258653 () Bool)

(assert (=> b!1258653 (= e!715936 (= lt!569302 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1258654 () Bool)

(assert (=> b!1258654 (= e!715936 (isEmpty!1036 lt!569302))))

(declare-fun b!1258655 () Bool)

(declare-fun e!715934 () Bool)

(assert (=> b!1258655 (= e!715934 e!715936)))

(declare-fun c!122472 () Bool)

(assert (=> b!1258655 (= c!122472 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258656 () Bool)

(declare-fun e!715939 () ListLongMap!18907)

(declare-fun e!715940 () ListLongMap!18907)

(assert (=> b!1258656 (= e!715939 e!715940)))

(declare-fun c!122474 () Bool)

(assert (=> b!1258656 (= c!122474 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1258657 () Bool)

(declare-fun e!715935 () Bool)

(assert (=> b!1258657 (= e!715935 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1258657 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1258658 () Bool)

(declare-fun lt!569301 () Unit!41908)

(declare-fun lt!569303 () Unit!41908)

(assert (=> b!1258658 (= lt!569301 lt!569303)))

(declare-fun lt!569300 () (_ BitVec 64))

(declare-fun lt!569305 () ListLongMap!18907)

(declare-fun lt!569304 () V!48257)

(declare-fun lt!569299 () (_ BitVec 64))

(assert (=> b!1258658 (not (contains!7591 (+!4169 lt!569305 (tuple2!21023 lt!569299 lt!569304)) lt!569300))))

(assert (=> b!1258658 (= lt!569303 (addStillNotContains!321 lt!569305 lt!569299 lt!569304 lt!569300))))

(assert (=> b!1258658 (= lt!569300 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1258658 (= lt!569304 (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1258658 (= lt!569299 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61849 () ListLongMap!18907)

(assert (=> b!1258658 (= lt!569305 call!61849)))

(assert (=> b!1258658 (= e!715940 (+!4169 call!61849 (tuple2!21023 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000) (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1258659 () Bool)

(declare-fun e!715937 () Bool)

(assert (=> b!1258659 (= e!715934 e!715937)))

(assert (=> b!1258659 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun res!838971 () Bool)

(assert (=> b!1258659 (= res!838971 (contains!7591 lt!569302 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1258659 (=> (not res!838971) (not e!715937))))

(declare-fun d!138225 () Bool)

(declare-fun e!715938 () Bool)

(assert (=> d!138225 e!715938))

(declare-fun res!838974 () Bool)

(assert (=> d!138225 (=> (not res!838974) (not e!715938))))

(assert (=> d!138225 (= res!838974 (not (contains!7591 lt!569302 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138225 (= lt!569302 e!715939)))

(declare-fun c!122475 () Bool)

(assert (=> d!138225 (= c!122475 (bvsge #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> d!138225 (validMask!0 mask!1466)))

(assert (=> d!138225 (= (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!569302)))

(declare-fun bm!61846 () Bool)

(assert (=> bm!61846 (= call!61849 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1258660 () Bool)

(assert (=> b!1258660 (= e!715940 call!61849)))

(declare-fun b!1258661 () Bool)

(assert (=> b!1258661 (= e!715938 e!715934)))

(declare-fun c!122473 () Bool)

(assert (=> b!1258661 (= c!122473 e!715935)))

(declare-fun res!838972 () Bool)

(assert (=> b!1258661 (=> (not res!838972) (not e!715935))))

(assert (=> b!1258661 (= res!838972 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258662 () Bool)

(assert (=> b!1258662 (= e!715939 (ListLongMap!18908 Nil!28251))))

(declare-fun b!1258663 () Bool)

(assert (=> b!1258663 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> b!1258663 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40066 _values!914)))))

(assert (=> b!1258663 (= e!715937 (= (apply!1026 lt!569302 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)) (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1258664 () Bool)

(declare-fun res!838973 () Bool)

(assert (=> b!1258664 (=> (not res!838973) (not e!715938))))

(assert (=> b!1258664 (= res!838973 (not (contains!7591 lt!569302 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138225 c!122475) b!1258662))

(assert (= (and d!138225 (not c!122475)) b!1258656))

(assert (= (and b!1258656 c!122474) b!1258658))

(assert (= (and b!1258656 (not c!122474)) b!1258660))

(assert (= (or b!1258658 b!1258660) bm!61846))

(assert (= (and d!138225 res!838974) b!1258664))

(assert (= (and b!1258664 res!838973) b!1258661))

(assert (= (and b!1258661 res!838972) b!1258657))

(assert (= (and b!1258661 c!122473) b!1258659))

(assert (= (and b!1258661 (not c!122473)) b!1258655))

(assert (= (and b!1258659 res!838971) b!1258663))

(assert (= (and b!1258655 c!122472) b!1258653))

(assert (= (and b!1258655 (not c!122472)) b!1258654))

(declare-fun b_lambda!22737 () Bool)

(assert (=> (not b_lambda!22737) (not b!1258658)))

(assert (=> b!1258658 t!41758))

(declare-fun b_and!45159 () Bool)

(assert (= b_and!45157 (and (=> t!41758 result!23343) b_and!45159)))

(declare-fun b_lambda!22739 () Bool)

(assert (=> (not b_lambda!22739) (not b!1258663)))

(assert (=> b!1258663 t!41758))

(declare-fun b_and!45161 () Bool)

(assert (= b_and!45159 (and (=> t!41758 result!23343) b_and!45161)))

(declare-fun m!1159087 () Bool)

(assert (=> b!1258654 m!1159087))

(assert (=> b!1258659 m!1159059))

(assert (=> b!1258659 m!1159059))

(declare-fun m!1159089 () Bool)

(assert (=> b!1258659 m!1159089))

(declare-fun m!1159091 () Bool)

(assert (=> d!138225 m!1159091))

(assert (=> d!138225 m!1159021))

(assert (=> b!1258657 m!1159059))

(assert (=> b!1258657 m!1159059))

(assert (=> b!1258657 m!1159065))

(declare-fun m!1159093 () Bool)

(assert (=> bm!61846 m!1159093))

(declare-fun m!1159095 () Bool)

(assert (=> b!1258664 m!1159095))

(assert (=> b!1258653 m!1159093))

(assert (=> b!1258658 m!1159071))

(assert (=> b!1258658 m!1159073))

(declare-fun m!1159097 () Bool)

(assert (=> b!1258658 m!1159097))

(declare-fun m!1159099 () Bool)

(assert (=> b!1258658 m!1159099))

(assert (=> b!1258658 m!1159059))

(declare-fun m!1159101 () Bool)

(assert (=> b!1258658 m!1159101))

(declare-fun m!1159103 () Bool)

(assert (=> b!1258658 m!1159103))

(assert (=> b!1258658 m!1159101))

(assert (=> b!1258658 m!1159073))

(assert (=> b!1258658 m!1159071))

(assert (=> b!1258658 m!1159083))

(assert (=> b!1258656 m!1159059))

(assert (=> b!1258656 m!1159059))

(assert (=> b!1258656 m!1159065))

(assert (=> b!1258663 m!1159071))

(assert (=> b!1258663 m!1159059))

(declare-fun m!1159105 () Bool)

(assert (=> b!1258663 m!1159105))

(assert (=> b!1258663 m!1159059))

(assert (=> b!1258663 m!1159073))

(assert (=> b!1258663 m!1159073))

(assert (=> b!1258663 m!1159071))

(assert (=> b!1258663 m!1159083))

(assert (=> b!1258583 d!138225))

(declare-fun b!1258673 () Bool)

(declare-fun e!715947 () Bool)

(declare-fun e!715949 () Bool)

(assert (=> b!1258673 (= e!715947 e!715949)))

(declare-fun c!122478 () Bool)

(assert (=> b!1258673 (= c!122478 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138227 () Bool)

(declare-fun res!838979 () Bool)

(assert (=> d!138227 (=> res!838979 e!715947)))

(assert (=> d!138227 (= res!838979 (bvsge #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> d!138227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!715947)))

(declare-fun b!1258674 () Bool)

(declare-fun call!61852 () Bool)

(assert (=> b!1258674 (= e!715949 call!61852)))

(declare-fun bm!61849 () Bool)

(assert (=> bm!61849 (= call!61852 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1258675 () Bool)

(declare-fun e!715948 () Bool)

(assert (=> b!1258675 (= e!715948 call!61852)))

(declare-fun b!1258676 () Bool)

(assert (=> b!1258676 (= e!715949 e!715948)))

(declare-fun lt!569312 () (_ BitVec 64))

(assert (=> b!1258676 (= lt!569312 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!569313 () Unit!41908)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81953 (_ BitVec 64) (_ BitVec 32)) Unit!41908)

(assert (=> b!1258676 (= lt!569313 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!569312 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1258676 (arrayContainsKey!0 _keys!1118 lt!569312 #b00000000000000000000000000000000)))

(declare-fun lt!569314 () Unit!41908)

(assert (=> b!1258676 (= lt!569314 lt!569313)))

(declare-fun res!838980 () Bool)

(declare-datatypes ((SeekEntryResult!9966 0))(
  ( (MissingZero!9966 (index!42234 (_ BitVec 32))) (Found!9966 (index!42235 (_ BitVec 32))) (Intermediate!9966 (undefined!10778 Bool) (index!42236 (_ BitVec 32)) (x!110877 (_ BitVec 32))) (Undefined!9966) (MissingVacant!9966 (index!42237 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81953 (_ BitVec 32)) SeekEntryResult!9966)

(assert (=> b!1258676 (= res!838980 (= (seekEntryOrOpen!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9966 #b00000000000000000000000000000000)))))

(assert (=> b!1258676 (=> (not res!838980) (not e!715948))))

(assert (= (and d!138227 (not res!838979)) b!1258673))

(assert (= (and b!1258673 c!122478) b!1258676))

(assert (= (and b!1258673 (not c!122478)) b!1258674))

(assert (= (and b!1258676 res!838980) b!1258675))

(assert (= (or b!1258675 b!1258674) bm!61849))

(assert (=> b!1258673 m!1159059))

(assert (=> b!1258673 m!1159059))

(assert (=> b!1258673 m!1159065))

(declare-fun m!1159107 () Bool)

(assert (=> bm!61849 m!1159107))

(assert (=> b!1258676 m!1159059))

(declare-fun m!1159109 () Bool)

(assert (=> b!1258676 m!1159109))

(declare-fun m!1159111 () Bool)

(assert (=> b!1258676 m!1159111))

(assert (=> b!1258676 m!1159059))

(declare-fun m!1159113 () Bool)

(assert (=> b!1258676 m!1159113))

(assert (=> b!1258588 d!138227))

(declare-fun b!1258687 () Bool)

(declare-fun e!715959 () Bool)

(declare-fun e!715958 () Bool)

(assert (=> b!1258687 (= e!715959 e!715958)))

(declare-fun c!122481 () Bool)

(assert (=> b!1258687 (= c!122481 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1258688 () Bool)

(declare-fun call!61855 () Bool)

(assert (=> b!1258688 (= e!715958 call!61855)))

(declare-fun bm!61852 () Bool)

(assert (=> bm!61852 (= call!61855 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122481 (Cons!28251 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000) Nil!28252) Nil!28252)))))

(declare-fun b!1258689 () Bool)

(declare-fun e!715960 () Bool)

(assert (=> b!1258689 (= e!715960 e!715959)))

(declare-fun res!838989 () Bool)

(assert (=> b!1258689 (=> (not res!838989) (not e!715959))))

(declare-fun e!715961 () Bool)

(assert (=> b!1258689 (= res!838989 (not e!715961))))

(declare-fun res!838987 () Bool)

(assert (=> b!1258689 (=> (not res!838987) (not e!715961))))

(assert (=> b!1258689 (= res!838987 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138229 () Bool)

(declare-fun res!838988 () Bool)

(assert (=> d!138229 (=> res!838988 e!715960)))

(assert (=> d!138229 (= res!838988 (bvsge #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> d!138229 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28252) e!715960)))

(declare-fun b!1258690 () Bool)

(assert (=> b!1258690 (= e!715958 call!61855)))

(declare-fun b!1258691 () Bool)

(declare-fun contains!7592 (List!28255 (_ BitVec 64)) Bool)

(assert (=> b!1258691 (= e!715961 (contains!7592 Nil!28252 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138229 (not res!838988)) b!1258689))

(assert (= (and b!1258689 res!838987) b!1258691))

(assert (= (and b!1258689 res!838989) b!1258687))

(assert (= (and b!1258687 c!122481) b!1258690))

(assert (= (and b!1258687 (not c!122481)) b!1258688))

(assert (= (or b!1258690 b!1258688) bm!61852))

(assert (=> b!1258687 m!1159059))

(assert (=> b!1258687 m!1159059))

(assert (=> b!1258687 m!1159065))

(assert (=> bm!61852 m!1159059))

(declare-fun m!1159115 () Bool)

(assert (=> bm!61852 m!1159115))

(assert (=> b!1258689 m!1159059))

(assert (=> b!1258689 m!1159059))

(assert (=> b!1258689 m!1159065))

(assert (=> b!1258691 m!1159059))

(assert (=> b!1258691 m!1159059))

(declare-fun m!1159117 () Bool)

(assert (=> b!1258691 m!1159117))

(assert (=> b!1258589 d!138229))

(declare-fun b!1258734 () Bool)

(declare-fun e!715991 () Bool)

(declare-fun e!715996 () Bool)

(assert (=> b!1258734 (= e!715991 e!715996)))

(declare-fun c!122494 () Bool)

(assert (=> b!1258734 (= c!122494 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258735 () Bool)

(declare-fun e!715994 () Bool)

(declare-fun call!61874 () Bool)

(assert (=> b!1258735 (= e!715994 (not call!61874))))

(declare-fun bm!61867 () Bool)

(declare-fun call!61872 () ListLongMap!18907)

(declare-fun call!61875 () ListLongMap!18907)

(assert (=> bm!61867 (= call!61872 call!61875)))

(declare-fun bm!61868 () Bool)

(declare-fun call!61873 () Bool)

(declare-fun lt!569367 () ListLongMap!18907)

(assert (=> bm!61868 (= call!61873 (contains!7591 lt!569367 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1258737 () Bool)

(declare-fun e!715999 () Bool)

(assert (=> b!1258737 (= e!715999 (= (apply!1026 lt!569367 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)) (get!20238 (select (arr!39529 _values!914) #b00000000000000000000000000000000) (dynLambda!3471 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1258737 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40066 _values!914)))))

(assert (=> b!1258737 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258738 () Bool)

(declare-fun e!715990 () Bool)

(assert (=> b!1258738 (= e!715990 e!715999)))

(declare-fun res!839015 () Bool)

(assert (=> b!1258738 (=> (not res!839015) (not e!715999))))

(assert (=> b!1258738 (= res!839015 (contains!7591 lt!569367 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1258738 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258739 () Bool)

(declare-fun e!715993 () Unit!41908)

(declare-fun lt!569364 () Unit!41908)

(assert (=> b!1258739 (= e!715993 lt!569364)))

(declare-fun lt!569379 () ListLongMap!18907)

(assert (=> b!1258739 (= lt!569379 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569377 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569377 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!569369 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569369 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!569380 () Unit!41908)

(declare-fun addStillContains!1098 (ListLongMap!18907 (_ BitVec 64) V!48257 (_ BitVec 64)) Unit!41908)

(assert (=> b!1258739 (= lt!569380 (addStillContains!1098 lt!569379 lt!569377 zeroValue!871 lt!569369))))

(assert (=> b!1258739 (contains!7591 (+!4169 lt!569379 (tuple2!21023 lt!569377 zeroValue!871)) lt!569369)))

(declare-fun lt!569373 () Unit!41908)

(assert (=> b!1258739 (= lt!569373 lt!569380)))

(declare-fun lt!569371 () ListLongMap!18907)

(assert (=> b!1258739 (= lt!569371 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569374 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569374 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!569370 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569370 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!569368 () Unit!41908)

(declare-fun addApplyDifferent!532 (ListLongMap!18907 (_ BitVec 64) V!48257 (_ BitVec 64)) Unit!41908)

(assert (=> b!1258739 (= lt!569368 (addApplyDifferent!532 lt!569371 lt!569374 minValueBefore!43 lt!569370))))

(assert (=> b!1258739 (= (apply!1026 (+!4169 lt!569371 (tuple2!21023 lt!569374 minValueBefore!43)) lt!569370) (apply!1026 lt!569371 lt!569370))))

(declare-fun lt!569359 () Unit!41908)

(assert (=> b!1258739 (= lt!569359 lt!569368)))

(declare-fun lt!569360 () ListLongMap!18907)

(assert (=> b!1258739 (= lt!569360 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569372 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569372 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!569376 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569376 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!569363 () Unit!41908)

(assert (=> b!1258739 (= lt!569363 (addApplyDifferent!532 lt!569360 lt!569372 zeroValue!871 lt!569376))))

(assert (=> b!1258739 (= (apply!1026 (+!4169 lt!569360 (tuple2!21023 lt!569372 zeroValue!871)) lt!569376) (apply!1026 lt!569360 lt!569376))))

(declare-fun lt!569366 () Unit!41908)

(assert (=> b!1258739 (= lt!569366 lt!569363)))

(declare-fun lt!569362 () ListLongMap!18907)

(assert (=> b!1258739 (= lt!569362 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569375 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569375 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!569365 () (_ BitVec 64))

(assert (=> b!1258739 (= lt!569365 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1258739 (= lt!569364 (addApplyDifferent!532 lt!569362 lt!569375 minValueBefore!43 lt!569365))))

(assert (=> b!1258739 (= (apply!1026 (+!4169 lt!569362 (tuple2!21023 lt!569375 minValueBefore!43)) lt!569365) (apply!1026 lt!569362 lt!569365))))

(declare-fun b!1258740 () Bool)

(declare-fun e!715992 () Bool)

(assert (=> b!1258740 (= e!715992 (= (apply!1026 lt!569367 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun call!61871 () ListLongMap!18907)

(declare-fun bm!61869 () Bool)

(assert (=> bm!61869 (= call!61871 (getCurrentListMapNoExtraKeys!5819 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258741 () Bool)

(declare-fun e!715995 () Bool)

(assert (=> b!1258741 (= e!715995 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1258742 () Bool)

(declare-fun e!715989 () ListLongMap!18907)

(assert (=> b!1258742 (= e!715989 call!61872)))

(declare-fun bm!61870 () Bool)

(assert (=> bm!61870 (= call!61874 (contains!7591 lt!569367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1258743 () Bool)

(declare-fun Unit!41912 () Unit!41908)

(assert (=> b!1258743 (= e!715993 Unit!41912)))

(declare-fun bm!61871 () Bool)

(declare-fun call!61876 () ListLongMap!18907)

(declare-fun call!61870 () ListLongMap!18907)

(assert (=> bm!61871 (= call!61876 call!61870)))

(declare-fun b!1258744 () Bool)

(declare-fun e!715997 () ListLongMap!18907)

(assert (=> b!1258744 (= e!715997 (+!4169 call!61870 (tuple2!21023 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1258736 () Bool)

(declare-fun c!122495 () Bool)

(assert (=> b!1258736 (= c!122495 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!715988 () ListLongMap!18907)

(assert (=> b!1258736 (= e!715988 e!715989)))

(declare-fun d!138231 () Bool)

(assert (=> d!138231 e!715991))

(declare-fun res!839011 () Bool)

(assert (=> d!138231 (=> (not res!839011) (not e!715991))))

(assert (=> d!138231 (= res!839011 (or (bvsge #b00000000000000000000000000000000 (size!40065 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))))

(declare-fun lt!569378 () ListLongMap!18907)

(assert (=> d!138231 (= lt!569367 lt!569378)))

(declare-fun lt!569361 () Unit!41908)

(assert (=> d!138231 (= lt!569361 e!715993)))

(declare-fun c!122497 () Bool)

(declare-fun e!715998 () Bool)

(assert (=> d!138231 (= c!122497 e!715998)))

(declare-fun res!839016 () Bool)

(assert (=> d!138231 (=> (not res!839016) (not e!715998))))

(assert (=> d!138231 (= res!839016 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(assert (=> d!138231 (= lt!569378 e!715997)))

(declare-fun c!122496 () Bool)

(assert (=> d!138231 (= c!122496 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138231 (validMask!0 mask!1466)))

(assert (=> d!138231 (= (getCurrentListMap!4608 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!569367)))

(declare-fun b!1258745 () Bool)

(declare-fun res!839014 () Bool)

(assert (=> b!1258745 (=> (not res!839014) (not e!715991))))

(assert (=> b!1258745 (= res!839014 e!715990)))

(declare-fun res!839008 () Bool)

(assert (=> b!1258745 (=> res!839008 e!715990)))

(assert (=> b!1258745 (= res!839008 (not e!715995))))

(declare-fun res!839012 () Bool)

(assert (=> b!1258745 (=> (not res!839012) (not e!715995))))

(assert (=> b!1258745 (= res!839012 (bvslt #b00000000000000000000000000000000 (size!40065 _keys!1118)))))

(declare-fun b!1258746 () Bool)

(assert (=> b!1258746 (= e!715989 call!61876)))

(declare-fun b!1258747 () Bool)

(assert (=> b!1258747 (= e!715997 e!715988)))

(declare-fun c!122499 () Bool)

(assert (=> b!1258747 (= c!122499 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258748 () Bool)

(assert (=> b!1258748 (= e!715988 call!61876)))

(declare-fun bm!61872 () Bool)

(assert (=> bm!61872 (= call!61870 (+!4169 (ite c!122496 call!61871 (ite c!122499 call!61875 call!61872)) (ite (or c!122496 c!122499) (tuple2!21023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21023 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1258749 () Bool)

(declare-fun e!716000 () Bool)

(assert (=> b!1258749 (= e!716000 (= (apply!1026 lt!569367 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!61873 () Bool)

(assert (=> bm!61873 (= call!61875 call!61871)))

(declare-fun b!1258750 () Bool)

(assert (=> b!1258750 (= e!715994 e!716000)))

(declare-fun res!839009 () Bool)

(assert (=> b!1258750 (= res!839009 call!61874)))

(assert (=> b!1258750 (=> (not res!839009) (not e!716000))))

(declare-fun b!1258751 () Bool)

(assert (=> b!1258751 (= e!715996 (not call!61873))))

(declare-fun b!1258752 () Bool)

(declare-fun res!839013 () Bool)

(assert (=> b!1258752 (=> (not res!839013) (not e!715991))))

(assert (=> b!1258752 (= res!839013 e!715994)))

(declare-fun c!122498 () Bool)

(assert (=> b!1258752 (= c!122498 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1258753 () Bool)

(assert (=> b!1258753 (= e!715998 (validKeyInArray!0 (select (arr!39528 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1258754 () Bool)

(assert (=> b!1258754 (= e!715996 e!715992)))

(declare-fun res!839010 () Bool)

(assert (=> b!1258754 (= res!839010 call!61873)))

(assert (=> b!1258754 (=> (not res!839010) (not e!715992))))

(assert (= (and d!138231 c!122496) b!1258744))

(assert (= (and d!138231 (not c!122496)) b!1258747))

(assert (= (and b!1258747 c!122499) b!1258748))

(assert (= (and b!1258747 (not c!122499)) b!1258736))

(assert (= (and b!1258736 c!122495) b!1258746))

(assert (= (and b!1258736 (not c!122495)) b!1258742))

(assert (= (or b!1258746 b!1258742) bm!61867))

(assert (= (or b!1258748 bm!61867) bm!61873))

(assert (= (or b!1258748 b!1258746) bm!61871))

(assert (= (or b!1258744 bm!61873) bm!61869))

(assert (= (or b!1258744 bm!61871) bm!61872))

(assert (= (and d!138231 res!839016) b!1258753))

(assert (= (and d!138231 c!122497) b!1258739))

(assert (= (and d!138231 (not c!122497)) b!1258743))

(assert (= (and d!138231 res!839011) b!1258745))

(assert (= (and b!1258745 res!839012) b!1258741))

(assert (= (and b!1258745 (not res!839008)) b!1258738))

(assert (= (and b!1258738 res!839015) b!1258737))

(assert (= (and b!1258745 res!839014) b!1258752))

(assert (= (and b!1258752 c!122498) b!1258750))

(assert (= (and b!1258752 (not c!122498)) b!1258735))

(assert (= (and b!1258750 res!839009) b!1258749))

(assert (= (or b!1258750 b!1258735) bm!61870))

(assert (= (and b!1258752 res!839013) b!1258734))

(assert (= (and b!1258734 c!122494) b!1258754))

(assert (= (and b!1258734 (not c!122494)) b!1258751))

(assert (= (and b!1258754 res!839010) b!1258740))

(assert (= (or b!1258754 b!1258751) bm!61868))

(declare-fun b_lambda!22741 () Bool)

(assert (=> (not b_lambda!22741) (not b!1258737)))

(assert (=> b!1258737 t!41758))

(declare-fun b_and!45163 () Bool)

(assert (= b_and!45161 (and (=> t!41758 result!23343) b_and!45163)))

(declare-fun m!1159119 () Bool)

(assert (=> bm!61870 m!1159119))

(assert (=> bm!61869 m!1159033))

(declare-fun m!1159121 () Bool)

(assert (=> b!1258740 m!1159121))

(declare-fun m!1159123 () Bool)

(assert (=> b!1258744 m!1159123))

(declare-fun m!1159125 () Bool)

(assert (=> b!1258749 m!1159125))

(assert (=> d!138231 m!1159021))

(assert (=> b!1258738 m!1159059))

(assert (=> b!1258738 m!1159059))

(declare-fun m!1159127 () Bool)

(assert (=> b!1258738 m!1159127))

(declare-fun m!1159129 () Bool)

(assert (=> bm!61872 m!1159129))

(assert (=> b!1258753 m!1159059))

(assert (=> b!1258753 m!1159059))

(assert (=> b!1258753 m!1159065))

(assert (=> b!1258739 m!1159033))

(declare-fun m!1159131 () Bool)

(assert (=> b!1258739 m!1159131))

(declare-fun m!1159133 () Bool)

(assert (=> b!1258739 m!1159133))

(declare-fun m!1159135 () Bool)

(assert (=> b!1258739 m!1159135))

(declare-fun m!1159137 () Bool)

(assert (=> b!1258739 m!1159137))

(assert (=> b!1258739 m!1159133))

(declare-fun m!1159139 () Bool)

(assert (=> b!1258739 m!1159139))

(declare-fun m!1159141 () Bool)

(assert (=> b!1258739 m!1159141))

(declare-fun m!1159143 () Bool)

(assert (=> b!1258739 m!1159143))

(declare-fun m!1159145 () Bool)

(assert (=> b!1258739 m!1159145))

(declare-fun m!1159147 () Bool)

(assert (=> b!1258739 m!1159147))

(assert (=> b!1258739 m!1159135))

(declare-fun m!1159149 () Bool)

(assert (=> b!1258739 m!1159149))

(declare-fun m!1159151 () Bool)

(assert (=> b!1258739 m!1159151))

(assert (=> b!1258739 m!1159141))

(declare-fun m!1159153 () Bool)

(assert (=> b!1258739 m!1159153))

(declare-fun m!1159155 () Bool)

(assert (=> b!1258739 m!1159155))

(assert (=> b!1258739 m!1159059))

(assert (=> b!1258739 m!1159145))

(declare-fun m!1159157 () Bool)

(assert (=> b!1258739 m!1159157))

(declare-fun m!1159159 () Bool)

(assert (=> b!1258739 m!1159159))

(declare-fun m!1159161 () Bool)

(assert (=> bm!61868 m!1159161))

(assert (=> b!1258737 m!1159071))

(assert (=> b!1258737 m!1159073))

(assert (=> b!1258737 m!1159071))

(assert (=> b!1258737 m!1159083))

(assert (=> b!1258737 m!1159059))

(assert (=> b!1258737 m!1159059))

(declare-fun m!1159163 () Bool)

(assert (=> b!1258737 m!1159163))

(assert (=> b!1258737 m!1159073))

(assert (=> b!1258741 m!1159059))

(assert (=> b!1258741 m!1159059))

(assert (=> b!1258741 m!1159065))

(assert (=> b!1258590 d!138231))

(declare-fun d!138233 () Bool)

(assert (=> d!138233 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105702 d!138233))

(declare-fun d!138235 () Bool)

(assert (=> d!138235 (= (array_inv!30055 _keys!1118) (bvsge (size!40065 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105702 d!138235))

(declare-fun d!138237 () Bool)

(assert (=> d!138237 (= (array_inv!30056 _values!914) (bvsge (size!40066 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105702 d!138237))

(declare-fun mapNonEmpty!50053 () Bool)

(declare-fun mapRes!50053 () Bool)

(declare-fun tp!95334 () Bool)

(declare-fun e!716005 () Bool)

(assert (=> mapNonEmpty!50053 (= mapRes!50053 (and tp!95334 e!716005))))

(declare-fun mapValue!50053 () ValueCell!15321)

(declare-fun mapKey!50053 () (_ BitVec 32))

(declare-fun mapRest!50053 () (Array (_ BitVec 32) ValueCell!15321))

(assert (=> mapNonEmpty!50053 (= mapRest!50047 (store mapRest!50053 mapKey!50053 mapValue!50053))))

(declare-fun b!1258761 () Bool)

(assert (=> b!1258761 (= e!716005 tp_is_empty!32169)))

(declare-fun b!1258762 () Bool)

(declare-fun e!716006 () Bool)

(assert (=> b!1258762 (= e!716006 tp_is_empty!32169)))

(declare-fun mapIsEmpty!50053 () Bool)

(assert (=> mapIsEmpty!50053 mapRes!50053))

(declare-fun condMapEmpty!50053 () Bool)

(declare-fun mapDefault!50053 () ValueCell!15321)

(assert (=> mapNonEmpty!50047 (= condMapEmpty!50053 (= mapRest!50047 ((as const (Array (_ BitVec 32) ValueCell!15321)) mapDefault!50053)))))

(assert (=> mapNonEmpty!50047 (= tp!95325 (and e!716006 mapRes!50053))))

(assert (= (and mapNonEmpty!50047 condMapEmpty!50053) mapIsEmpty!50053))

(assert (= (and mapNonEmpty!50047 (not condMapEmpty!50053)) mapNonEmpty!50053))

(assert (= (and mapNonEmpty!50053 ((_ is ValueCellFull!15321) mapValue!50053)) b!1258761))

(assert (= (and mapNonEmpty!50047 ((_ is ValueCellFull!15321) mapDefault!50053)) b!1258762))

(declare-fun m!1159165 () Bool)

(assert (=> mapNonEmpty!50053 m!1159165))

(declare-fun b_lambda!22743 () Bool)

(assert (= b_lambda!22737 (or (and start!105702 b_free!27267) b_lambda!22743)))

(declare-fun b_lambda!22745 () Bool)

(assert (= b_lambda!22741 (or (and start!105702 b_free!27267) b_lambda!22745)))

(declare-fun b_lambda!22747 () Bool)

(assert (= b_lambda!22733 (or (and start!105702 b_free!27267) b_lambda!22747)))

(declare-fun b_lambda!22749 () Bool)

(assert (= b_lambda!22735 (or (and start!105702 b_free!27267) b_lambda!22749)))

(declare-fun b_lambda!22751 () Bool)

(assert (= b_lambda!22739 (or (and start!105702 b_free!27267) b_lambda!22751)))

(check-sat tp_is_empty!32169 (not b!1258737) (not bm!61849) (not b_next!27267) (not b_lambda!22743) (not b!1258749) (not b!1258653) (not b!1258644) (not b!1258687) (not mapNonEmpty!50053) (not b!1258738) (not bm!61869) (not d!138221) (not bm!61845) (not b!1258650) (not bm!61870) (not b!1258639) (not b_lambda!22749) (not b!1258689) (not d!138231) (not b_lambda!22751) (not b!1258663) (not bm!61852) (not b!1258744) (not b!1258739) (not b_lambda!22745) (not b!1258658) (not b!1258642) (not b!1258664) (not b!1258673) (not d!138225) (not b_lambda!22747) (not bm!61868) (not b!1258741) (not bm!61846) b_and!45163 (not b!1258640) (not bm!61872) (not b!1258659) (not b!1258654) (not b!1258676) (not b!1258657) (not b!1258643) (not d!138223) (not b!1258753) (not b!1258656) (not b!1258740) (not b!1258645) (not b!1258691) (not b!1258649))
(check-sat b_and!45163 (not b_next!27267))
