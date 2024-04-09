; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105634 () Bool)

(assert start!105634)

(declare-fun b_free!27213 () Bool)

(declare-fun b_next!27213 () Bool)

(assert (=> start!105634 (= b_free!27213 (not b_next!27213))))

(declare-fun tp!95160 () Bool)

(declare-fun b_and!45089 () Bool)

(assert (=> start!105634 (= tp!95160 b_and!45089)))

(declare-fun res!838508 () Bool)

(declare-fun e!715353 () Bool)

(assert (=> start!105634 (=> (not res!838508) (not e!715353))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105634 (= res!838508 (validMask!0 mask!1466))))

(assert (=> start!105634 e!715353))

(assert (=> start!105634 true))

(assert (=> start!105634 tp!95160))

(declare-fun tp_is_empty!32115 () Bool)

(assert (=> start!105634 tp_is_empty!32115))

(declare-datatypes ((array!81855 0))(
  ( (array!81856 (arr!39480 (Array (_ BitVec 32) (_ BitVec 64))) (size!40017 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81855)

(declare-fun array_inv!30021 (array!81855) Bool)

(assert (=> start!105634 (array_inv!30021 _keys!1118)))

(declare-datatypes ((V!48185 0))(
  ( (V!48186 (val!16120 Int)) )
))
(declare-datatypes ((ValueCell!15294 0))(
  ( (ValueCellFull!15294 (v!18822 V!48185)) (EmptyCell!15294) )
))
(declare-datatypes ((array!81857 0))(
  ( (array!81858 (arr!39481 (Array (_ BitVec 32) ValueCell!15294)) (size!40018 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81857)

(declare-fun e!715352 () Bool)

(declare-fun array_inv!30022 (array!81857) Bool)

(assert (=> start!105634 (and (array_inv!30022 _values!914) e!715352)))

(declare-fun b!1257854 () Bool)

(declare-fun e!715355 () Bool)

(assert (=> b!1257854 (= e!715355 tp_is_empty!32115)))

(declare-fun b!1257855 () Bool)

(declare-fun mapRes!49963 () Bool)

(assert (=> b!1257855 (= e!715352 (and e!715355 mapRes!49963))))

(declare-fun condMapEmpty!49963 () Bool)

(declare-fun mapDefault!49963 () ValueCell!15294)

(assert (=> b!1257855 (= condMapEmpty!49963 (= (arr!39481 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15294)) mapDefault!49963)))))

(declare-fun b!1257856 () Bool)

(declare-fun e!715354 () Bool)

(assert (=> b!1257856 (= e!715354 tp_is_empty!32115)))

(declare-fun b!1257857 () Bool)

(declare-fun res!838510 () Bool)

(assert (=> b!1257857 (=> (not res!838510) (not e!715353))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257857 (= res!838510 (and (= (size!40018 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40017 _keys!1118) (size!40018 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257858 () Bool)

(assert (=> b!1257858 (= e!715353 (not (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!40017 _keys!1118)))))))

(declare-datatypes ((tuple2!20986 0))(
  ( (tuple2!20987 (_1!10503 (_ BitVec 64)) (_2!10503 V!48185)) )
))
(declare-datatypes ((List!28217 0))(
  ( (Nil!28214) (Cons!28213 (h!29422 tuple2!20986) (t!41715 List!28217)) )
))
(declare-datatypes ((ListLongMap!18871 0))(
  ( (ListLongMap!18872 (toList!9451 List!28217)) )
))
(declare-fun lt!568899 () ListLongMap!18871)

(declare-fun lt!568901 () ListLongMap!18871)

(assert (=> b!1257858 (= lt!568899 lt!568901)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48185)

(declare-fun zeroValue!871 () V!48185)

(declare-datatypes ((Unit!41876 0))(
  ( (Unit!41877) )
))
(declare-fun lt!568900 () Unit!41876)

(declare-fun minValueBefore!43 () V!48185)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1121 (array!81855 array!81857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48185 V!48185 V!48185 V!48185 (_ BitVec 32) Int) Unit!41876)

(assert (=> b!1257858 (= lt!568900 (lemmaNoChangeToArrayThenSameMapNoExtras!1121 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5803 (array!81855 array!81857 (_ BitVec 32) (_ BitVec 32) V!48185 V!48185 (_ BitVec 32) Int) ListLongMap!18871)

(assert (=> b!1257858 (= lt!568901 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257858 (= lt!568899 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257859 () Bool)

(declare-fun res!838507 () Bool)

(assert (=> b!1257859 (=> (not res!838507) (not e!715353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81855 (_ BitVec 32)) Bool)

(assert (=> b!1257859 (= res!838507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257860 () Bool)

(declare-fun res!838509 () Bool)

(assert (=> b!1257860 (=> (not res!838509) (not e!715353))))

(declare-datatypes ((List!28218 0))(
  ( (Nil!28215) (Cons!28214 (h!29423 (_ BitVec 64)) (t!41716 List!28218)) )
))
(declare-fun arrayNoDuplicates!0 (array!81855 (_ BitVec 32) List!28218) Bool)

(assert (=> b!1257860 (= res!838509 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28215))))

(declare-fun mapIsEmpty!49963 () Bool)

(assert (=> mapIsEmpty!49963 mapRes!49963))

(declare-fun mapNonEmpty!49963 () Bool)

(declare-fun tp!95159 () Bool)

(assert (=> mapNonEmpty!49963 (= mapRes!49963 (and tp!95159 e!715354))))

(declare-fun mapKey!49963 () (_ BitVec 32))

(declare-fun mapValue!49963 () ValueCell!15294)

(declare-fun mapRest!49963 () (Array (_ BitVec 32) ValueCell!15294))

(assert (=> mapNonEmpty!49963 (= (arr!39481 _values!914) (store mapRest!49963 mapKey!49963 mapValue!49963))))

(assert (= (and start!105634 res!838508) b!1257857))

(assert (= (and b!1257857 res!838510) b!1257859))

(assert (= (and b!1257859 res!838507) b!1257860))

(assert (= (and b!1257860 res!838509) b!1257858))

(assert (= (and b!1257855 condMapEmpty!49963) mapIsEmpty!49963))

(assert (= (and b!1257855 (not condMapEmpty!49963)) mapNonEmpty!49963))

(get-info :version)

(assert (= (and mapNonEmpty!49963 ((_ is ValueCellFull!15294) mapValue!49963)) b!1257856))

(assert (= (and b!1257855 ((_ is ValueCellFull!15294) mapDefault!49963)) b!1257854))

(assert (= start!105634 b!1257855))

(declare-fun m!1158413 () Bool)

(assert (=> b!1257858 m!1158413))

(declare-fun m!1158415 () Bool)

(assert (=> b!1257858 m!1158415))

(declare-fun m!1158417 () Bool)

(assert (=> b!1257858 m!1158417))

(declare-fun m!1158419 () Bool)

(assert (=> b!1257860 m!1158419))

(declare-fun m!1158421 () Bool)

(assert (=> start!105634 m!1158421))

(declare-fun m!1158423 () Bool)

(assert (=> start!105634 m!1158423))

(declare-fun m!1158425 () Bool)

(assert (=> start!105634 m!1158425))

(declare-fun m!1158427 () Bool)

(assert (=> mapNonEmpty!49963 m!1158427))

(declare-fun m!1158429 () Bool)

(assert (=> b!1257859 m!1158429))

(check-sat (not mapNonEmpty!49963) (not b!1257859) (not b!1257858) b_and!45089 (not b_next!27213) (not start!105634) tp_is_empty!32115 (not b!1257860))
(check-sat b_and!45089 (not b_next!27213))
(get-model)

(declare-fun b!1257892 () Bool)

(declare-fun e!715382 () Bool)

(declare-fun e!715381 () Bool)

(assert (=> b!1257892 (= e!715382 e!715381)))

(declare-fun c!122440 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1257892 (= c!122440 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138187 () Bool)

(declare-fun res!838531 () Bool)

(declare-fun e!715380 () Bool)

(assert (=> d!138187 (=> res!838531 e!715380)))

(assert (=> d!138187 (= res!838531 (bvsge #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> d!138187 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28215) e!715380)))

(declare-fun b!1257893 () Bool)

(assert (=> b!1257893 (= e!715380 e!715382)))

(declare-fun res!838530 () Bool)

(assert (=> b!1257893 (=> (not res!838530) (not e!715382))))

(declare-fun e!715383 () Bool)

(assert (=> b!1257893 (= res!838530 (not e!715383))))

(declare-fun res!838529 () Bool)

(assert (=> b!1257893 (=> (not res!838529) (not e!715383))))

(assert (=> b!1257893 (= res!838529 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257894 () Bool)

(declare-fun call!61838 () Bool)

(assert (=> b!1257894 (= e!715381 call!61838)))

(declare-fun bm!61835 () Bool)

(assert (=> bm!61835 (= call!61838 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122440 (Cons!28214 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000) Nil!28215) Nil!28215)))))

(declare-fun b!1257895 () Bool)

(declare-fun contains!7589 (List!28218 (_ BitVec 64)) Bool)

(assert (=> b!1257895 (= e!715383 (contains!7589 Nil!28215 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257896 () Bool)

(assert (=> b!1257896 (= e!715381 call!61838)))

(assert (= (and d!138187 (not res!838531)) b!1257893))

(assert (= (and b!1257893 res!838529) b!1257895))

(assert (= (and b!1257893 res!838530) b!1257892))

(assert (= (and b!1257892 c!122440) b!1257896))

(assert (= (and b!1257892 (not c!122440)) b!1257894))

(assert (= (or b!1257896 b!1257894) bm!61835))

(declare-fun m!1158449 () Bool)

(assert (=> b!1257892 m!1158449))

(assert (=> b!1257892 m!1158449))

(declare-fun m!1158451 () Bool)

(assert (=> b!1257892 m!1158451))

(assert (=> b!1257893 m!1158449))

(assert (=> b!1257893 m!1158449))

(assert (=> b!1257893 m!1158451))

(assert (=> bm!61835 m!1158449))

(declare-fun m!1158453 () Bool)

(assert (=> bm!61835 m!1158453))

(assert (=> b!1257895 m!1158449))

(assert (=> b!1257895 m!1158449))

(declare-fun m!1158455 () Bool)

(assert (=> b!1257895 m!1158455))

(assert (=> b!1257860 d!138187))

(declare-fun b!1257905 () Bool)

(declare-fun e!715391 () Bool)

(declare-fun call!61841 () Bool)

(assert (=> b!1257905 (= e!715391 call!61841)))

(declare-fun b!1257906 () Bool)

(declare-fun e!715392 () Bool)

(declare-fun e!715390 () Bool)

(assert (=> b!1257906 (= e!715392 e!715390)))

(declare-fun c!122443 () Bool)

(assert (=> b!1257906 (= c!122443 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257907 () Bool)

(assert (=> b!1257907 (= e!715390 e!715391)))

(declare-fun lt!568918 () (_ BitVec 64))

(assert (=> b!1257907 (= lt!568918 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568919 () Unit!41876)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81855 (_ BitVec 64) (_ BitVec 32)) Unit!41876)

(assert (=> b!1257907 (= lt!568919 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!568918 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1257907 (arrayContainsKey!0 _keys!1118 lt!568918 #b00000000000000000000000000000000)))

(declare-fun lt!568917 () Unit!41876)

(assert (=> b!1257907 (= lt!568917 lt!568919)))

(declare-fun res!838537 () Bool)

(declare-datatypes ((SeekEntryResult!9965 0))(
  ( (MissingZero!9965 (index!42230 (_ BitVec 32))) (Found!9965 (index!42231 (_ BitVec 32))) (Intermediate!9965 (undefined!10777 Bool) (index!42232 (_ BitVec 32)) (x!110793 (_ BitVec 32))) (Undefined!9965) (MissingVacant!9965 (index!42233 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81855 (_ BitVec 32)) SeekEntryResult!9965)

(assert (=> b!1257907 (= res!838537 (= (seekEntryOrOpen!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9965 #b00000000000000000000000000000000)))))

(assert (=> b!1257907 (=> (not res!838537) (not e!715391))))

(declare-fun d!138189 () Bool)

(declare-fun res!838536 () Bool)

(assert (=> d!138189 (=> res!838536 e!715392)))

(assert (=> d!138189 (= res!838536 (bvsge #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> d!138189 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!715392)))

(declare-fun bm!61838 () Bool)

(assert (=> bm!61838 (= call!61841 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1257908 () Bool)

(assert (=> b!1257908 (= e!715390 call!61841)))

(assert (= (and d!138189 (not res!838536)) b!1257906))

(assert (= (and b!1257906 c!122443) b!1257907))

(assert (= (and b!1257906 (not c!122443)) b!1257908))

(assert (= (and b!1257907 res!838537) b!1257905))

(assert (= (or b!1257905 b!1257908) bm!61838))

(assert (=> b!1257906 m!1158449))

(assert (=> b!1257906 m!1158449))

(assert (=> b!1257906 m!1158451))

(assert (=> b!1257907 m!1158449))

(declare-fun m!1158457 () Bool)

(assert (=> b!1257907 m!1158457))

(declare-fun m!1158459 () Bool)

(assert (=> b!1257907 m!1158459))

(assert (=> b!1257907 m!1158449))

(declare-fun m!1158461 () Bool)

(assert (=> b!1257907 m!1158461))

(declare-fun m!1158463 () Bool)

(assert (=> bm!61838 m!1158463))

(assert (=> b!1257859 d!138189))

(declare-fun d!138191 () Bool)

(assert (=> d!138191 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105634 d!138191))

(declare-fun d!138193 () Bool)

(assert (=> d!138193 (= (array_inv!30021 _keys!1118) (bvsge (size!40017 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105634 d!138193))

(declare-fun d!138195 () Bool)

(assert (=> d!138195 (= (array_inv!30022 _values!914) (bvsge (size!40018 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105634 d!138195))

(declare-fun d!138197 () Bool)

(assert (=> d!138197 (= (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568922 () Unit!41876)

(declare-fun choose!1871 (array!81855 array!81857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48185 V!48185 V!48185 V!48185 (_ BitVec 32) Int) Unit!41876)

(assert (=> d!138197 (= lt!568922 (choose!1871 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138197 (validMask!0 mask!1466)))

(assert (=> d!138197 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1121 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568922)))

(declare-fun bs!35572 () Bool)

(assert (= bs!35572 d!138197))

(assert (=> bs!35572 m!1158417))

(assert (=> bs!35572 m!1158415))

(declare-fun m!1158465 () Bool)

(assert (=> bs!35572 m!1158465))

(assert (=> bs!35572 m!1158421))

(assert (=> b!1257858 d!138197))

(declare-fun b!1257933 () Bool)

(declare-fun e!715407 () Bool)

(declare-fun lt!568941 () ListLongMap!18871)

(declare-fun isEmpty!1035 (ListLongMap!18871) Bool)

(assert (=> b!1257933 (= e!715407 (isEmpty!1035 lt!568941))))

(declare-fun b!1257934 () Bool)

(declare-fun e!715412 () ListLongMap!18871)

(declare-fun e!715411 () ListLongMap!18871)

(assert (=> b!1257934 (= e!715412 e!715411)))

(declare-fun c!122455 () Bool)

(assert (=> b!1257934 (= c!122455 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257935 () Bool)

(declare-fun e!715409 () Bool)

(declare-fun e!715410 () Bool)

(assert (=> b!1257935 (= e!715409 e!715410)))

(declare-fun c!122454 () Bool)

(declare-fun e!715413 () Bool)

(assert (=> b!1257935 (= c!122454 e!715413)))

(declare-fun res!838548 () Bool)

(assert (=> b!1257935 (=> (not res!838548) (not e!715413))))

(assert (=> b!1257935 (= res!838548 (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun b!1257936 () Bool)

(assert (=> b!1257936 (= e!715410 e!715407)))

(declare-fun c!122452 () Bool)

(assert (=> b!1257936 (= c!122452 (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun b!1257937 () Bool)

(assert (=> b!1257937 (= e!715412 (ListLongMap!18872 Nil!28214))))

(declare-fun b!1257938 () Bool)

(assert (=> b!1257938 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> b!1257938 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40018 _values!914)))))

(declare-fun e!715408 () Bool)

(declare-fun apply!1025 (ListLongMap!18871 (_ BitVec 64)) V!48185)

(declare-fun get!20219 (ValueCell!15294 V!48185) V!48185)

(declare-fun dynLambda!3470 (Int (_ BitVec 64)) V!48185)

(assert (=> b!1257938 (= e!715408 (= (apply!1025 lt!568941 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)) (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138199 () Bool)

(assert (=> d!138199 e!715409))

(declare-fun res!838549 () Bool)

(assert (=> d!138199 (=> (not res!838549) (not e!715409))))

(declare-fun contains!7590 (ListLongMap!18871 (_ BitVec 64)) Bool)

(assert (=> d!138199 (= res!838549 (not (contains!7590 lt!568941 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138199 (= lt!568941 e!715412)))

(declare-fun c!122453 () Bool)

(assert (=> d!138199 (= c!122453 (bvsge #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> d!138199 (validMask!0 mask!1466)))

(assert (=> d!138199 (= (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568941)))

(declare-fun b!1257939 () Bool)

(declare-fun res!838546 () Bool)

(assert (=> b!1257939 (=> (not res!838546) (not e!715409))))

(assert (=> b!1257939 (= res!838546 (not (contains!7590 lt!568941 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1257940 () Bool)

(declare-fun call!61844 () ListLongMap!18871)

(assert (=> b!1257940 (= e!715411 call!61844)))

(declare-fun b!1257941 () Bool)

(declare-fun lt!568940 () Unit!41876)

(declare-fun lt!568937 () Unit!41876)

(assert (=> b!1257941 (= lt!568940 lt!568937)))

(declare-fun lt!568942 () (_ BitVec 64))

(declare-fun lt!568938 () (_ BitVec 64))

(declare-fun lt!568939 () ListLongMap!18871)

(declare-fun lt!568943 () V!48185)

(declare-fun +!4168 (ListLongMap!18871 tuple2!20986) ListLongMap!18871)

(assert (=> b!1257941 (not (contains!7590 (+!4168 lt!568939 (tuple2!20987 lt!568938 lt!568943)) lt!568942))))

(declare-fun addStillNotContains!320 (ListLongMap!18871 (_ BitVec 64) V!48185 (_ BitVec 64)) Unit!41876)

(assert (=> b!1257941 (= lt!568937 (addStillNotContains!320 lt!568939 lt!568938 lt!568943 lt!568942))))

(assert (=> b!1257941 (= lt!568942 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1257941 (= lt!568943 (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1257941 (= lt!568938 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1257941 (= lt!568939 call!61844)))

(assert (=> b!1257941 (= e!715411 (+!4168 call!61844 (tuple2!20987 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000) (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1257942 () Bool)

(assert (=> b!1257942 (= e!715407 (= lt!568941 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1257943 () Bool)

(assert (=> b!1257943 (= e!715410 e!715408)))

(assert (=> b!1257943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun res!838547 () Bool)

(assert (=> b!1257943 (= res!838547 (contains!7590 lt!568941 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257943 (=> (not res!838547) (not e!715408))))

(declare-fun bm!61841 () Bool)

(assert (=> bm!61841 (= call!61844 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1257944 () Bool)

(assert (=> b!1257944 (= e!715413 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257944 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138199 c!122453) b!1257937))

(assert (= (and d!138199 (not c!122453)) b!1257934))

(assert (= (and b!1257934 c!122455) b!1257941))

(assert (= (and b!1257934 (not c!122455)) b!1257940))

(assert (= (or b!1257941 b!1257940) bm!61841))

(assert (= (and d!138199 res!838549) b!1257939))

(assert (= (and b!1257939 res!838546) b!1257935))

(assert (= (and b!1257935 res!838548) b!1257944))

(assert (= (and b!1257935 c!122454) b!1257943))

(assert (= (and b!1257935 (not c!122454)) b!1257936))

(assert (= (and b!1257943 res!838547) b!1257938))

(assert (= (and b!1257936 c!122452) b!1257942))

(assert (= (and b!1257936 (not c!122452)) b!1257933))

(declare-fun b_lambda!22717 () Bool)

(assert (=> (not b_lambda!22717) (not b!1257938)))

(declare-fun t!41718 () Bool)

(declare-fun tb!11315 () Bool)

(assert (=> (and start!105634 (= defaultEntry!922 defaultEntry!922) t!41718) tb!11315))

(declare-fun result!23337 () Bool)

(assert (=> tb!11315 (= result!23337 tp_is_empty!32115)))

(assert (=> b!1257938 t!41718))

(declare-fun b_and!45093 () Bool)

(assert (= b_and!45089 (and (=> t!41718 result!23337) b_and!45093)))

(declare-fun b_lambda!22719 () Bool)

(assert (=> (not b_lambda!22719) (not b!1257941)))

(assert (=> b!1257941 t!41718))

(declare-fun b_and!45095 () Bool)

(assert (= b_and!45093 (and (=> t!41718 result!23337) b_and!45095)))

(declare-fun m!1158467 () Bool)

(assert (=> b!1257939 m!1158467))

(declare-fun m!1158469 () Bool)

(assert (=> b!1257942 m!1158469))

(assert (=> b!1257934 m!1158449))

(assert (=> b!1257934 m!1158449))

(assert (=> b!1257934 m!1158451))

(assert (=> b!1257943 m!1158449))

(assert (=> b!1257943 m!1158449))

(declare-fun m!1158471 () Bool)

(assert (=> b!1257943 m!1158471))

(declare-fun m!1158473 () Bool)

(assert (=> b!1257933 m!1158473))

(assert (=> b!1257938 m!1158449))

(declare-fun m!1158475 () Bool)

(assert (=> b!1257938 m!1158475))

(declare-fun m!1158477 () Bool)

(assert (=> b!1257938 m!1158477))

(declare-fun m!1158479 () Bool)

(assert (=> b!1257938 m!1158479))

(declare-fun m!1158481 () Bool)

(assert (=> b!1257938 m!1158481))

(assert (=> b!1257938 m!1158449))

(assert (=> b!1257938 m!1158477))

(assert (=> b!1257938 m!1158479))

(declare-fun m!1158483 () Bool)

(assert (=> b!1257941 m!1158483))

(declare-fun m!1158485 () Bool)

(assert (=> b!1257941 m!1158485))

(assert (=> b!1257941 m!1158483))

(declare-fun m!1158487 () Bool)

(assert (=> b!1257941 m!1158487))

(assert (=> b!1257941 m!1158477))

(assert (=> b!1257941 m!1158479))

(assert (=> b!1257941 m!1158481))

(declare-fun m!1158489 () Bool)

(assert (=> b!1257941 m!1158489))

(assert (=> b!1257941 m!1158449))

(assert (=> b!1257941 m!1158477))

(assert (=> b!1257941 m!1158479))

(assert (=> bm!61841 m!1158469))

(declare-fun m!1158491 () Bool)

(assert (=> d!138199 m!1158491))

(assert (=> d!138199 m!1158421))

(assert (=> b!1257944 m!1158449))

(assert (=> b!1257944 m!1158449))

(assert (=> b!1257944 m!1158451))

(assert (=> b!1257858 d!138199))

(declare-fun b!1257947 () Bool)

(declare-fun e!715414 () Bool)

(declare-fun lt!568948 () ListLongMap!18871)

(assert (=> b!1257947 (= e!715414 (isEmpty!1035 lt!568948))))

(declare-fun b!1257948 () Bool)

(declare-fun e!715419 () ListLongMap!18871)

(declare-fun e!715418 () ListLongMap!18871)

(assert (=> b!1257948 (= e!715419 e!715418)))

(declare-fun c!122459 () Bool)

(assert (=> b!1257948 (= c!122459 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257949 () Bool)

(declare-fun e!715416 () Bool)

(declare-fun e!715417 () Bool)

(assert (=> b!1257949 (= e!715416 e!715417)))

(declare-fun c!122458 () Bool)

(declare-fun e!715420 () Bool)

(assert (=> b!1257949 (= c!122458 e!715420)))

(declare-fun res!838552 () Bool)

(assert (=> b!1257949 (=> (not res!838552) (not e!715420))))

(assert (=> b!1257949 (= res!838552 (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun b!1257950 () Bool)

(assert (=> b!1257950 (= e!715417 e!715414)))

(declare-fun c!122456 () Bool)

(assert (=> b!1257950 (= c!122456 (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun b!1257951 () Bool)

(assert (=> b!1257951 (= e!715419 (ListLongMap!18872 Nil!28214))))

(declare-fun b!1257952 () Bool)

(assert (=> b!1257952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> b!1257952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40018 _values!914)))))

(declare-fun e!715415 () Bool)

(assert (=> b!1257952 (= e!715415 (= (apply!1025 lt!568948 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)) (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138201 () Bool)

(assert (=> d!138201 e!715416))

(declare-fun res!838553 () Bool)

(assert (=> d!138201 (=> (not res!838553) (not e!715416))))

(assert (=> d!138201 (= res!838553 (not (contains!7590 lt!568948 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138201 (= lt!568948 e!715419)))

(declare-fun c!122457 () Bool)

(assert (=> d!138201 (= c!122457 (bvsge #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(assert (=> d!138201 (validMask!0 mask!1466)))

(assert (=> d!138201 (= (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568948)))

(declare-fun b!1257953 () Bool)

(declare-fun res!838550 () Bool)

(assert (=> b!1257953 (=> (not res!838550) (not e!715416))))

(assert (=> b!1257953 (= res!838550 (not (contains!7590 lt!568948 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1257954 () Bool)

(declare-fun call!61845 () ListLongMap!18871)

(assert (=> b!1257954 (= e!715418 call!61845)))

(declare-fun b!1257955 () Bool)

(declare-fun lt!568947 () Unit!41876)

(declare-fun lt!568944 () Unit!41876)

(assert (=> b!1257955 (= lt!568947 lt!568944)))

(declare-fun lt!568945 () (_ BitVec 64))

(declare-fun lt!568949 () (_ BitVec 64))

(declare-fun lt!568946 () ListLongMap!18871)

(declare-fun lt!568950 () V!48185)

(assert (=> b!1257955 (not (contains!7590 (+!4168 lt!568946 (tuple2!20987 lt!568945 lt!568950)) lt!568949))))

(assert (=> b!1257955 (= lt!568944 (addStillNotContains!320 lt!568946 lt!568945 lt!568950 lt!568949))))

(assert (=> b!1257955 (= lt!568949 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1257955 (= lt!568950 (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1257955 (= lt!568945 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1257955 (= lt!568946 call!61845)))

(assert (=> b!1257955 (= e!715418 (+!4168 call!61845 (tuple2!20987 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000) (get!20219 (select (arr!39481 _values!914) #b00000000000000000000000000000000) (dynLambda!3470 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1257956 () Bool)

(assert (=> b!1257956 (= e!715414 (= lt!568948 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1257957 () Bool)

(assert (=> b!1257957 (= e!715417 e!715415)))

(assert (=> b!1257957 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40017 _keys!1118)))))

(declare-fun res!838551 () Bool)

(assert (=> b!1257957 (= res!838551 (contains!7590 lt!568948 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257957 (=> (not res!838551) (not e!715415))))

(declare-fun bm!61842 () Bool)

(assert (=> bm!61842 (= call!61845 (getCurrentListMapNoExtraKeys!5803 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1257958 () Bool)

(assert (=> b!1257958 (= e!715420 (validKeyInArray!0 (select (arr!39480 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257958 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138201 c!122457) b!1257951))

(assert (= (and d!138201 (not c!122457)) b!1257948))

(assert (= (and b!1257948 c!122459) b!1257955))

(assert (= (and b!1257948 (not c!122459)) b!1257954))

(assert (= (or b!1257955 b!1257954) bm!61842))

(assert (= (and d!138201 res!838553) b!1257953))

(assert (= (and b!1257953 res!838550) b!1257949))

(assert (= (and b!1257949 res!838552) b!1257958))

(assert (= (and b!1257949 c!122458) b!1257957))

(assert (= (and b!1257949 (not c!122458)) b!1257950))

(assert (= (and b!1257957 res!838551) b!1257952))

(assert (= (and b!1257950 c!122456) b!1257956))

(assert (= (and b!1257950 (not c!122456)) b!1257947))

(declare-fun b_lambda!22721 () Bool)

(assert (=> (not b_lambda!22721) (not b!1257952)))

(assert (=> b!1257952 t!41718))

(declare-fun b_and!45097 () Bool)

(assert (= b_and!45095 (and (=> t!41718 result!23337) b_and!45097)))

(declare-fun b_lambda!22723 () Bool)

(assert (=> (not b_lambda!22723) (not b!1257955)))

(assert (=> b!1257955 t!41718))

(declare-fun b_and!45099 () Bool)

(assert (= b_and!45097 (and (=> t!41718 result!23337) b_and!45099)))

(declare-fun m!1158493 () Bool)

(assert (=> b!1257953 m!1158493))

(declare-fun m!1158495 () Bool)

(assert (=> b!1257956 m!1158495))

(assert (=> b!1257948 m!1158449))

(assert (=> b!1257948 m!1158449))

(assert (=> b!1257948 m!1158451))

(assert (=> b!1257957 m!1158449))

(assert (=> b!1257957 m!1158449))

(declare-fun m!1158497 () Bool)

(assert (=> b!1257957 m!1158497))

(declare-fun m!1158499 () Bool)

(assert (=> b!1257947 m!1158499))

(assert (=> b!1257952 m!1158449))

(declare-fun m!1158501 () Bool)

(assert (=> b!1257952 m!1158501))

(assert (=> b!1257952 m!1158477))

(assert (=> b!1257952 m!1158479))

(assert (=> b!1257952 m!1158481))

(assert (=> b!1257952 m!1158449))

(assert (=> b!1257952 m!1158477))

(assert (=> b!1257952 m!1158479))

(declare-fun m!1158503 () Bool)

(assert (=> b!1257955 m!1158503))

(declare-fun m!1158505 () Bool)

(assert (=> b!1257955 m!1158505))

(assert (=> b!1257955 m!1158503))

(declare-fun m!1158507 () Bool)

(assert (=> b!1257955 m!1158507))

(assert (=> b!1257955 m!1158477))

(assert (=> b!1257955 m!1158479))

(assert (=> b!1257955 m!1158481))

(declare-fun m!1158509 () Bool)

(assert (=> b!1257955 m!1158509))

(assert (=> b!1257955 m!1158449))

(assert (=> b!1257955 m!1158477))

(assert (=> b!1257955 m!1158479))

(assert (=> bm!61842 m!1158495))

(declare-fun m!1158511 () Bool)

(assert (=> d!138201 m!1158511))

(assert (=> d!138201 m!1158421))

(assert (=> b!1257958 m!1158449))

(assert (=> b!1257958 m!1158449))

(assert (=> b!1257958 m!1158451))

(assert (=> b!1257858 d!138201))

(declare-fun condMapEmpty!49969 () Bool)

(declare-fun mapDefault!49969 () ValueCell!15294)

(assert (=> mapNonEmpty!49963 (= condMapEmpty!49969 (= mapRest!49963 ((as const (Array (_ BitVec 32) ValueCell!15294)) mapDefault!49969)))))

(declare-fun e!715425 () Bool)

(declare-fun mapRes!49969 () Bool)

(assert (=> mapNonEmpty!49963 (= tp!95159 (and e!715425 mapRes!49969))))

(declare-fun b!1257966 () Bool)

(assert (=> b!1257966 (= e!715425 tp_is_empty!32115)))

(declare-fun mapNonEmpty!49969 () Bool)

(declare-fun tp!95169 () Bool)

(declare-fun e!715426 () Bool)

(assert (=> mapNonEmpty!49969 (= mapRes!49969 (and tp!95169 e!715426))))

(declare-fun mapValue!49969 () ValueCell!15294)

(declare-fun mapRest!49969 () (Array (_ BitVec 32) ValueCell!15294))

(declare-fun mapKey!49969 () (_ BitVec 32))

(assert (=> mapNonEmpty!49969 (= mapRest!49963 (store mapRest!49969 mapKey!49969 mapValue!49969))))

(declare-fun mapIsEmpty!49969 () Bool)

(assert (=> mapIsEmpty!49969 mapRes!49969))

(declare-fun b!1257965 () Bool)

(assert (=> b!1257965 (= e!715426 tp_is_empty!32115)))

(assert (= (and mapNonEmpty!49963 condMapEmpty!49969) mapIsEmpty!49969))

(assert (= (and mapNonEmpty!49963 (not condMapEmpty!49969)) mapNonEmpty!49969))

(assert (= (and mapNonEmpty!49969 ((_ is ValueCellFull!15294) mapValue!49969)) b!1257965))

(assert (= (and mapNonEmpty!49963 ((_ is ValueCellFull!15294) mapDefault!49969)) b!1257966))

(declare-fun m!1158513 () Bool)

(assert (=> mapNonEmpty!49969 m!1158513))

(declare-fun b_lambda!22725 () Bool)

(assert (= b_lambda!22723 (or (and start!105634 b_free!27213) b_lambda!22725)))

(declare-fun b_lambda!22727 () Bool)

(assert (= b_lambda!22719 (or (and start!105634 b_free!27213) b_lambda!22727)))

(declare-fun b_lambda!22729 () Bool)

(assert (= b_lambda!22717 (or (and start!105634 b_free!27213) b_lambda!22729)))

(declare-fun b_lambda!22731 () Bool)

(assert (= b_lambda!22721 (or (and start!105634 b_free!27213) b_lambda!22731)))

(check-sat (not b!1257933) (not mapNonEmpty!49969) (not bm!61838) (not bm!61835) (not b!1257952) (not d!138197) (not b_next!27213) (not b!1257955) (not b!1257948) (not d!138201) tp_is_empty!32115 (not b!1257942) (not b_lambda!22729) (not b_lambda!22731) (not b!1257934) (not b!1257947) (not b!1257895) (not b_lambda!22727) (not b!1257939) (not d!138199) (not b!1257943) (not bm!61842) (not b!1257892) (not b!1257958) (not b!1257893) (not b!1257906) (not bm!61841) (not b!1257938) (not b!1257956) (not b!1257953) (not b!1257907) (not b_lambda!22725) (not b!1257957) (not b!1257944) b_and!45099 (not b!1257941))
(check-sat b_and!45099 (not b_next!27213))
