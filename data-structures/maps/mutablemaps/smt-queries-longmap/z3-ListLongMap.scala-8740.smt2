; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106042 () Bool)

(assert start!106042)

(declare-fun b_free!27477 () Bool)

(declare-fun b_next!27477 () Bool)

(assert (=> start!106042 (= b_free!27477 (not b_next!27477))))

(declare-fun tp!95976 () Bool)

(declare-fun b_and!45437 () Bool)

(assert (=> start!106042 (= tp!95976 b_and!45437)))

(declare-fun mapIsEmpty!50383 () Bool)

(declare-fun mapRes!50383 () Bool)

(assert (=> mapIsEmpty!50383 mapRes!50383))

(declare-fun b!1262304 () Bool)

(declare-fun res!841062 () Bool)

(declare-fun e!718579 () Bool)

(assert (=> b!1262304 (=> (not res!841062) (not e!718579))))

(declare-datatypes ((array!82361 0))(
  ( (array!82362 (arr!39725 (Array (_ BitVec 32) (_ BitVec 64))) (size!40262 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82361)

(declare-datatypes ((List!28402 0))(
  ( (Nil!28399) (Cons!28398 (h!29607 (_ BitVec 64)) (t!41916 List!28402)) )
))
(declare-fun arrayNoDuplicates!0 (array!82361 (_ BitVec 32) List!28402) Bool)

(assert (=> b!1262304 (= res!841062 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28399))))

(declare-fun res!841066 () Bool)

(assert (=> start!106042 (=> (not res!841066) (not e!718579))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106042 (= res!841066 (validMask!0 mask!1466))))

(assert (=> start!106042 e!718579))

(assert (=> start!106042 true))

(assert (=> start!106042 tp!95976))

(declare-fun tp_is_empty!32379 () Bool)

(assert (=> start!106042 tp_is_empty!32379))

(declare-fun array_inv!30191 (array!82361) Bool)

(assert (=> start!106042 (array_inv!30191 _keys!1118)))

(declare-datatypes ((V!48537 0))(
  ( (V!48538 (val!16252 Int)) )
))
(declare-datatypes ((ValueCell!15426 0))(
  ( (ValueCellFull!15426 (v!18959 V!48537)) (EmptyCell!15426) )
))
(declare-datatypes ((array!82363 0))(
  ( (array!82364 (arr!39726 (Array (_ BitVec 32) ValueCell!15426)) (size!40263 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82363)

(declare-fun e!718580 () Bool)

(declare-fun array_inv!30192 (array!82363) Bool)

(assert (=> start!106042 (and (array_inv!30192 _values!914) e!718580)))

(declare-fun b!1262305 () Bool)

(declare-fun e!718578 () Bool)

(assert (=> b!1262305 (= e!718580 (and e!718578 mapRes!50383))))

(declare-fun condMapEmpty!50383 () Bool)

(declare-fun mapDefault!50383 () ValueCell!15426)

(assert (=> b!1262305 (= condMapEmpty!50383 (= (arr!39726 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15426)) mapDefault!50383)))))

(declare-fun b!1262306 () Bool)

(declare-fun e!718581 () Bool)

(declare-fun e!718582 () Bool)

(assert (=> b!1262306 (= e!718581 e!718582)))

(declare-fun res!841064 () Bool)

(assert (=> b!1262306 (=> res!841064 e!718582)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262306 (= res!841064 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50383 () Bool)

(declare-fun tp!95975 () Bool)

(declare-fun e!718577 () Bool)

(assert (=> mapNonEmpty!50383 (= mapRes!50383 (and tp!95975 e!718577))))

(declare-fun mapRest!50383 () (Array (_ BitVec 32) ValueCell!15426))

(declare-fun mapValue!50383 () ValueCell!15426)

(declare-fun mapKey!50383 () (_ BitVec 32))

(assert (=> mapNonEmpty!50383 (= (arr!39726 _values!914) (store mapRest!50383 mapKey!50383 mapValue!50383))))

(declare-fun b!1262307 () Bool)

(assert (=> b!1262307 (= e!718577 tp_is_empty!32379)))

(declare-fun b!1262308 () Bool)

(declare-fun res!841065 () Bool)

(assert (=> b!1262308 (=> (not res!841065) (not e!718579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82361 (_ BitVec 32)) Bool)

(assert (=> b!1262308 (= res!841065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262309 () Bool)

(declare-fun res!841067 () Bool)

(assert (=> b!1262309 (=> (not res!841067) (not e!718579))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1262309 (= res!841067 (and (= (size!40263 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40262 _keys!1118) (size!40263 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun b!1262310 () Bool)

(declare-fun minValueAfter!43 () V!48537)

(declare-fun zeroValue!871 () V!48537)

(declare-datatypes ((tuple2!21180 0))(
  ( (tuple2!21181 (_1!10600 (_ BitVec 64)) (_2!10600 V!48537)) )
))
(declare-datatypes ((List!28403 0))(
  ( (Nil!28400) (Cons!28399 (h!29608 tuple2!21180) (t!41917 List!28403)) )
))
(declare-datatypes ((ListLongMap!19065 0))(
  ( (ListLongMap!19066 (toList!9548 List!28403)) )
))
(declare-fun lt!572165 () ListLongMap!19065)

(declare-fun e!718575 () Bool)

(declare-fun getCurrentListMap!4653 (array!82361 array!82363 (_ BitVec 32) (_ BitVec 32) V!48537 V!48537 (_ BitVec 32) Int) ListLongMap!19065)

(assert (=> b!1262310 (= e!718575 (= (getCurrentListMap!4653 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572165))))

(declare-fun b!1262311 () Bool)

(assert (=> b!1262311 (= e!718578 tp_is_empty!32379)))

(declare-fun b!1262312 () Bool)

(declare-fun lt!572164 () ListLongMap!19065)

(declare-fun minValueBefore!43 () V!48537)

(declare-fun +!4216 (ListLongMap!19065 tuple2!21180) ListLongMap!19065)

(assert (=> b!1262312 (= e!718582 (= (getCurrentListMap!4653 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4216 lt!572164 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1262313 () Bool)

(assert (=> b!1262313 (= e!718579 (not e!718575))))

(declare-fun res!841061 () Bool)

(assert (=> b!1262313 (=> res!841061 e!718575)))

(assert (=> b!1262313 (= res!841061 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1262313 e!718581))

(declare-fun res!841063 () Bool)

(assert (=> b!1262313 (=> (not res!841063) (not e!718581))))

(assert (=> b!1262313 (= res!841063 (= lt!572164 lt!572165))))

(declare-datatypes ((Unit!42028 0))(
  ( (Unit!42029) )
))
(declare-fun lt!572163 () Unit!42028)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1184 (array!82361 array!82363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48537 V!48537 V!48537 V!48537 (_ BitVec 32) Int) Unit!42028)

(assert (=> b!1262313 (= lt!572163 (lemmaNoChangeToArrayThenSameMapNoExtras!1184 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5888 (array!82361 array!82363 (_ BitVec 32) (_ BitVec 32) V!48537 V!48537 (_ BitVec 32) Int) ListLongMap!19065)

(assert (=> b!1262313 (= lt!572165 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262313 (= lt!572164 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!106042 res!841066) b!1262309))

(assert (= (and b!1262309 res!841067) b!1262308))

(assert (= (and b!1262308 res!841065) b!1262304))

(assert (= (and b!1262304 res!841062) b!1262313))

(assert (= (and b!1262313 res!841063) b!1262306))

(assert (= (and b!1262306 (not res!841064)) b!1262312))

(assert (= (and b!1262313 (not res!841061)) b!1262310))

(assert (= (and b!1262305 condMapEmpty!50383) mapIsEmpty!50383))

(assert (= (and b!1262305 (not condMapEmpty!50383)) mapNonEmpty!50383))

(get-info :version)

(assert (= (and mapNonEmpty!50383 ((_ is ValueCellFull!15426) mapValue!50383)) b!1262307))

(assert (= (and b!1262305 ((_ is ValueCellFull!15426) mapDefault!50383)) b!1262311))

(assert (= start!106042 b!1262305))

(declare-fun m!1162863 () Bool)

(assert (=> b!1262312 m!1162863))

(declare-fun m!1162865 () Bool)

(assert (=> b!1262312 m!1162865))

(declare-fun m!1162867 () Bool)

(assert (=> b!1262308 m!1162867))

(declare-fun m!1162869 () Bool)

(assert (=> b!1262310 m!1162869))

(declare-fun m!1162871 () Bool)

(assert (=> mapNonEmpty!50383 m!1162871))

(declare-fun m!1162873 () Bool)

(assert (=> b!1262313 m!1162873))

(declare-fun m!1162875 () Bool)

(assert (=> b!1262313 m!1162875))

(declare-fun m!1162877 () Bool)

(assert (=> b!1262313 m!1162877))

(declare-fun m!1162879 () Bool)

(assert (=> b!1262304 m!1162879))

(declare-fun m!1162881 () Bool)

(assert (=> start!106042 m!1162881))

(declare-fun m!1162883 () Bool)

(assert (=> start!106042 m!1162883))

(declare-fun m!1162885 () Bool)

(assert (=> start!106042 m!1162885))

(check-sat (not b!1262312) b_and!45437 (not mapNonEmpty!50383) (not b!1262308) (not b!1262310) (not b!1262313) tp_is_empty!32379 (not b!1262304) (not b_next!27477) (not start!106042))
(check-sat b_and!45437 (not b_next!27477))
(get-model)

(declare-fun bm!62081 () Bool)

(declare-fun call!62088 () ListLongMap!19065)

(declare-fun call!62089 () ListLongMap!19065)

(assert (=> bm!62081 (= call!62088 call!62089)))

(declare-fun d!138455 () Bool)

(declare-fun e!718633 () Bool)

(assert (=> d!138455 e!718633))

(declare-fun res!841115 () Bool)

(assert (=> d!138455 (=> (not res!841115) (not e!718633))))

(assert (=> d!138455 (= res!841115 (or (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))))

(declare-fun lt!572221 () ListLongMap!19065)

(declare-fun lt!572230 () ListLongMap!19065)

(assert (=> d!138455 (= lt!572221 lt!572230)))

(declare-fun lt!572231 () Unit!42028)

(declare-fun e!718638 () Unit!42028)

(assert (=> d!138455 (= lt!572231 e!718638)))

(declare-fun c!122765 () Bool)

(declare-fun e!718644 () Bool)

(assert (=> d!138455 (= c!122765 e!718644)))

(declare-fun res!841107 () Bool)

(assert (=> d!138455 (=> (not res!841107) (not e!718644))))

(assert (=> d!138455 (= res!841107 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun e!718642 () ListLongMap!19065)

(assert (=> d!138455 (= lt!572230 e!718642)))

(declare-fun c!122769 () Bool)

(assert (=> d!138455 (= c!122769 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138455 (validMask!0 mask!1466)))

(assert (=> d!138455 (= (getCurrentListMap!4653 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572221)))

(declare-fun b!1262386 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1262386 (= e!718644 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262387 () Bool)

(declare-fun e!718637 () Bool)

(declare-fun call!62086 () Bool)

(assert (=> b!1262387 (= e!718637 (not call!62086))))

(declare-fun b!1262388 () Bool)

(declare-fun c!122764 () Bool)

(assert (=> b!1262388 (= c!122764 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!718640 () ListLongMap!19065)

(declare-fun e!718645 () ListLongMap!19065)

(assert (=> b!1262388 (= e!718640 e!718645)))

(declare-fun b!1262389 () Bool)

(declare-fun e!718643 () Bool)

(declare-fun apply!1033 (ListLongMap!19065 (_ BitVec 64)) V!48537)

(declare-fun get!20315 (ValueCell!15426 V!48537) V!48537)

(declare-fun dynLambda!3478 (Int (_ BitVec 64)) V!48537)

(assert (=> b!1262389 (= e!718643 (= (apply!1033 lt!572221 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40263 _values!914)))))

(assert (=> b!1262389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262390 () Bool)

(declare-fun call!62087 () ListLongMap!19065)

(assert (=> b!1262390 (= e!718642 (+!4216 call!62087 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun bm!62082 () Bool)

(assert (=> bm!62082 (= call!62089 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262391 () Bool)

(declare-fun e!718635 () Bool)

(assert (=> b!1262391 (= e!718635 (= (apply!1033 lt!572221 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!62083 () Bool)

(declare-fun call!62090 () ListLongMap!19065)

(assert (=> bm!62083 (= call!62090 call!62088)))

(declare-fun b!1262392 () Bool)

(assert (=> b!1262392 (= e!718637 e!718635)))

(declare-fun res!841110 () Bool)

(assert (=> b!1262392 (= res!841110 call!62086)))

(assert (=> b!1262392 (=> (not res!841110) (not e!718635))))

(declare-fun b!1262393 () Bool)

(declare-fun res!841109 () Bool)

(assert (=> b!1262393 (=> (not res!841109) (not e!718633))))

(declare-fun e!718636 () Bool)

(assert (=> b!1262393 (= res!841109 e!718636)))

(declare-fun res!841114 () Bool)

(assert (=> b!1262393 (=> res!841114 e!718636)))

(declare-fun e!718641 () Bool)

(assert (=> b!1262393 (= res!841114 (not e!718641))))

(declare-fun res!841108 () Bool)

(assert (=> b!1262393 (=> (not res!841108) (not e!718641))))

(assert (=> b!1262393 (= res!841108 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262394 () Bool)

(declare-fun e!718639 () Bool)

(assert (=> b!1262394 (= e!718633 e!718639)))

(declare-fun c!122766 () Bool)

(assert (=> b!1262394 (= c!122766 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262395 () Bool)

(assert (=> b!1262395 (= e!718645 call!62090)))

(declare-fun b!1262396 () Bool)

(declare-fun res!841111 () Bool)

(assert (=> b!1262396 (=> (not res!841111) (not e!718633))))

(assert (=> b!1262396 (= res!841111 e!718637)))

(declare-fun c!122768 () Bool)

(assert (=> b!1262396 (= c!122768 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62084 () Bool)

(declare-fun contains!7613 (ListLongMap!19065 (_ BitVec 64)) Bool)

(assert (=> bm!62084 (= call!62086 (contains!7613 lt!572221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262397 () Bool)

(declare-fun call!62084 () ListLongMap!19065)

(assert (=> b!1262397 (= e!718640 call!62084)))

(declare-fun bm!62085 () Bool)

(assert (=> bm!62085 (= call!62084 call!62087)))

(declare-fun b!1262398 () Bool)

(assert (=> b!1262398 (= e!718645 call!62084)))

(declare-fun b!1262399 () Bool)

(assert (=> b!1262399 (= e!718642 e!718640)))

(declare-fun c!122767 () Bool)

(assert (=> b!1262399 (= c!122767 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262400 () Bool)

(declare-fun lt!572238 () Unit!42028)

(assert (=> b!1262400 (= e!718638 lt!572238)))

(declare-fun lt!572229 () ListLongMap!19065)

(assert (=> b!1262400 (= lt!572229 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572228 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572228 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572224 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572224 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572237 () Unit!42028)

(declare-fun addStillContains!1104 (ListLongMap!19065 (_ BitVec 64) V!48537 (_ BitVec 64)) Unit!42028)

(assert (=> b!1262400 (= lt!572237 (addStillContains!1104 lt!572229 lt!572228 zeroValue!871 lt!572224))))

(assert (=> b!1262400 (contains!7613 (+!4216 lt!572229 (tuple2!21181 lt!572228 zeroValue!871)) lt!572224)))

(declare-fun lt!572234 () Unit!42028)

(assert (=> b!1262400 (= lt!572234 lt!572237)))

(declare-fun lt!572239 () ListLongMap!19065)

(assert (=> b!1262400 (= lt!572239 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572233 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572233 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572235 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572235 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572220 () Unit!42028)

(declare-fun addApplyDifferent!538 (ListLongMap!19065 (_ BitVec 64) V!48537 (_ BitVec 64)) Unit!42028)

(assert (=> b!1262400 (= lt!572220 (addApplyDifferent!538 lt!572239 lt!572233 minValueAfter!43 lt!572235))))

(assert (=> b!1262400 (= (apply!1033 (+!4216 lt!572239 (tuple2!21181 lt!572233 minValueAfter!43)) lt!572235) (apply!1033 lt!572239 lt!572235))))

(declare-fun lt!572240 () Unit!42028)

(assert (=> b!1262400 (= lt!572240 lt!572220)))

(declare-fun lt!572227 () ListLongMap!19065)

(assert (=> b!1262400 (= lt!572227 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572226 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572226 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572223 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572223 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572232 () Unit!42028)

(assert (=> b!1262400 (= lt!572232 (addApplyDifferent!538 lt!572227 lt!572226 zeroValue!871 lt!572223))))

(assert (=> b!1262400 (= (apply!1033 (+!4216 lt!572227 (tuple2!21181 lt!572226 zeroValue!871)) lt!572223) (apply!1033 lt!572227 lt!572223))))

(declare-fun lt!572236 () Unit!42028)

(assert (=> b!1262400 (= lt!572236 lt!572232)))

(declare-fun lt!572225 () ListLongMap!19065)

(assert (=> b!1262400 (= lt!572225 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572222 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572222 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572219 () (_ BitVec 64))

(assert (=> b!1262400 (= lt!572219 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262400 (= lt!572238 (addApplyDifferent!538 lt!572225 lt!572222 minValueAfter!43 lt!572219))))

(assert (=> b!1262400 (= (apply!1033 (+!4216 lt!572225 (tuple2!21181 lt!572222 minValueAfter!43)) lt!572219) (apply!1033 lt!572225 lt!572219))))

(declare-fun b!1262401 () Bool)

(declare-fun call!62085 () Bool)

(assert (=> b!1262401 (= e!718639 (not call!62085))))

(declare-fun b!1262402 () Bool)

(assert (=> b!1262402 (= e!718636 e!718643)))

(declare-fun res!841112 () Bool)

(assert (=> b!1262402 (=> (not res!841112) (not e!718643))))

(assert (=> b!1262402 (= res!841112 (contains!7613 lt!572221 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262402 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262403 () Bool)

(declare-fun e!718634 () Bool)

(assert (=> b!1262403 (= e!718634 (= (apply!1033 lt!572221 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1262404 () Bool)

(declare-fun Unit!42032 () Unit!42028)

(assert (=> b!1262404 (= e!718638 Unit!42032)))

(declare-fun bm!62086 () Bool)

(assert (=> bm!62086 (= call!62085 (contains!7613 lt!572221 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262405 () Bool)

(assert (=> b!1262405 (= e!718641 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62087 () Bool)

(assert (=> bm!62087 (= call!62087 (+!4216 (ite c!122769 call!62089 (ite c!122767 call!62088 call!62090)) (ite (or c!122769 c!122767) (tuple2!21181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1262406 () Bool)

(assert (=> b!1262406 (= e!718639 e!718634)))

(declare-fun res!841113 () Bool)

(assert (=> b!1262406 (= res!841113 call!62085)))

(assert (=> b!1262406 (=> (not res!841113) (not e!718634))))

(assert (= (and d!138455 c!122769) b!1262390))

(assert (= (and d!138455 (not c!122769)) b!1262399))

(assert (= (and b!1262399 c!122767) b!1262397))

(assert (= (and b!1262399 (not c!122767)) b!1262388))

(assert (= (and b!1262388 c!122764) b!1262398))

(assert (= (and b!1262388 (not c!122764)) b!1262395))

(assert (= (or b!1262398 b!1262395) bm!62083))

(assert (= (or b!1262397 bm!62083) bm!62081))

(assert (= (or b!1262397 b!1262398) bm!62085))

(assert (= (or b!1262390 bm!62081) bm!62082))

(assert (= (or b!1262390 bm!62085) bm!62087))

(assert (= (and d!138455 res!841107) b!1262386))

(assert (= (and d!138455 c!122765) b!1262400))

(assert (= (and d!138455 (not c!122765)) b!1262404))

(assert (= (and d!138455 res!841115) b!1262393))

(assert (= (and b!1262393 res!841108) b!1262405))

(assert (= (and b!1262393 (not res!841114)) b!1262402))

(assert (= (and b!1262402 res!841112) b!1262389))

(assert (= (and b!1262393 res!841109) b!1262396))

(assert (= (and b!1262396 c!122768) b!1262392))

(assert (= (and b!1262396 (not c!122768)) b!1262387))

(assert (= (and b!1262392 res!841110) b!1262391))

(assert (= (or b!1262392 b!1262387) bm!62084))

(assert (= (and b!1262396 res!841111) b!1262394))

(assert (= (and b!1262394 c!122766) b!1262406))

(assert (= (and b!1262394 (not c!122766)) b!1262401))

(assert (= (and b!1262406 res!841113) b!1262403))

(assert (= (or b!1262406 b!1262401) bm!62086))

(declare-fun b_lambda!22885 () Bool)

(assert (=> (not b_lambda!22885) (not b!1262389)))

(declare-fun t!41920 () Bool)

(declare-fun tb!11331 () Bool)

(assert (=> (and start!106042 (= defaultEntry!922 defaultEntry!922) t!41920) tb!11331))

(declare-fun result!23385 () Bool)

(assert (=> tb!11331 (= result!23385 tp_is_empty!32379)))

(assert (=> b!1262389 t!41920))

(declare-fun b_and!45441 () Bool)

(assert (= b_and!45437 (and (=> t!41920 result!23385) b_and!45441)))

(declare-fun m!1162911 () Bool)

(assert (=> b!1262403 m!1162911))

(declare-fun m!1162913 () Bool)

(assert (=> b!1262405 m!1162913))

(assert (=> b!1262405 m!1162913))

(declare-fun m!1162915 () Bool)

(assert (=> b!1262405 m!1162915))

(declare-fun m!1162917 () Bool)

(assert (=> bm!62087 m!1162917))

(assert (=> b!1262389 m!1162913))

(declare-fun m!1162919 () Bool)

(assert (=> b!1262389 m!1162919))

(declare-fun m!1162921 () Bool)

(assert (=> b!1262389 m!1162921))

(declare-fun m!1162923 () Bool)

(assert (=> b!1262389 m!1162923))

(declare-fun m!1162925 () Bool)

(assert (=> b!1262389 m!1162925))

(assert (=> b!1262389 m!1162921))

(assert (=> b!1262389 m!1162913))

(assert (=> b!1262389 m!1162923))

(assert (=> b!1262386 m!1162913))

(assert (=> b!1262386 m!1162913))

(assert (=> b!1262386 m!1162915))

(declare-fun m!1162927 () Bool)

(assert (=> bm!62084 m!1162927))

(declare-fun m!1162929 () Bool)

(assert (=> bm!62086 m!1162929))

(declare-fun m!1162931 () Bool)

(assert (=> b!1262400 m!1162931))

(declare-fun m!1162933 () Bool)

(assert (=> b!1262400 m!1162933))

(declare-fun m!1162935 () Bool)

(assert (=> b!1262400 m!1162935))

(declare-fun m!1162937 () Bool)

(assert (=> b!1262400 m!1162937))

(declare-fun m!1162939 () Bool)

(assert (=> b!1262400 m!1162939))

(declare-fun m!1162941 () Bool)

(assert (=> b!1262400 m!1162941))

(declare-fun m!1162943 () Bool)

(assert (=> b!1262400 m!1162943))

(declare-fun m!1162945 () Bool)

(assert (=> b!1262400 m!1162945))

(declare-fun m!1162947 () Bool)

(assert (=> b!1262400 m!1162947))

(assert (=> b!1262400 m!1162875))

(assert (=> b!1262400 m!1162913))

(assert (=> b!1262400 m!1162935))

(declare-fun m!1162949 () Bool)

(assert (=> b!1262400 m!1162949))

(declare-fun m!1162951 () Bool)

(assert (=> b!1262400 m!1162951))

(assert (=> b!1262400 m!1162941))

(declare-fun m!1162953 () Bool)

(assert (=> b!1262400 m!1162953))

(declare-fun m!1162955 () Bool)

(assert (=> b!1262400 m!1162955))

(assert (=> b!1262400 m!1162945))

(declare-fun m!1162957 () Bool)

(assert (=> b!1262400 m!1162957))

(assert (=> b!1262400 m!1162955))

(declare-fun m!1162959 () Bool)

(assert (=> b!1262400 m!1162959))

(declare-fun m!1162961 () Bool)

(assert (=> b!1262391 m!1162961))

(assert (=> bm!62082 m!1162875))

(assert (=> d!138455 m!1162881))

(declare-fun m!1162963 () Bool)

(assert (=> b!1262390 m!1162963))

(assert (=> b!1262402 m!1162913))

(assert (=> b!1262402 m!1162913))

(declare-fun m!1162965 () Bool)

(assert (=> b!1262402 m!1162965))

(assert (=> b!1262310 d!138455))

(declare-fun b!1262419 () Bool)

(declare-fun e!718655 () Bool)

(declare-fun e!718657 () Bool)

(assert (=> b!1262419 (= e!718655 e!718657)))

(declare-fun c!122772 () Bool)

(assert (=> b!1262419 (= c!122772 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138457 () Bool)

(declare-fun res!841122 () Bool)

(declare-fun e!718656 () Bool)

(assert (=> d!138457 (=> res!841122 e!718656)))

(assert (=> d!138457 (= res!841122 (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> d!138457 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28399) e!718656)))

(declare-fun b!1262420 () Bool)

(declare-fun call!62093 () Bool)

(assert (=> b!1262420 (= e!718657 call!62093)))

(declare-fun b!1262421 () Bool)

(declare-fun e!718654 () Bool)

(declare-fun contains!7614 (List!28402 (_ BitVec 64)) Bool)

(assert (=> b!1262421 (= e!718654 (contains!7614 Nil!28399 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62090 () Bool)

(assert (=> bm!62090 (= call!62093 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122772 (Cons!28398 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000) Nil!28399) Nil!28399)))))

(declare-fun b!1262422 () Bool)

(assert (=> b!1262422 (= e!718656 e!718655)))

(declare-fun res!841124 () Bool)

(assert (=> b!1262422 (=> (not res!841124) (not e!718655))))

(assert (=> b!1262422 (= res!841124 (not e!718654))))

(declare-fun res!841123 () Bool)

(assert (=> b!1262422 (=> (not res!841123) (not e!718654))))

(assert (=> b!1262422 (= res!841123 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262423 () Bool)

(assert (=> b!1262423 (= e!718657 call!62093)))

(assert (= (and d!138457 (not res!841122)) b!1262422))

(assert (= (and b!1262422 res!841123) b!1262421))

(assert (= (and b!1262422 res!841124) b!1262419))

(assert (= (and b!1262419 c!122772) b!1262420))

(assert (= (and b!1262419 (not c!122772)) b!1262423))

(assert (= (or b!1262420 b!1262423) bm!62090))

(assert (=> b!1262419 m!1162913))

(assert (=> b!1262419 m!1162913))

(assert (=> b!1262419 m!1162915))

(assert (=> b!1262421 m!1162913))

(assert (=> b!1262421 m!1162913))

(declare-fun m!1162967 () Bool)

(assert (=> b!1262421 m!1162967))

(assert (=> bm!62090 m!1162913))

(declare-fun m!1162969 () Bool)

(assert (=> bm!62090 m!1162969))

(assert (=> b!1262422 m!1162913))

(assert (=> b!1262422 m!1162913))

(assert (=> b!1262422 m!1162915))

(assert (=> b!1262304 d!138457))

(declare-fun b!1262432 () Bool)

(declare-fun e!718664 () Bool)

(declare-fun call!62096 () Bool)

(assert (=> b!1262432 (= e!718664 call!62096)))

(declare-fun bm!62093 () Bool)

(assert (=> bm!62093 (= call!62096 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1262433 () Bool)

(declare-fun e!718666 () Bool)

(declare-fun e!718665 () Bool)

(assert (=> b!1262433 (= e!718666 e!718665)))

(declare-fun c!122775 () Bool)

(assert (=> b!1262433 (= c!122775 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138459 () Bool)

(declare-fun res!841130 () Bool)

(assert (=> d!138459 (=> res!841130 e!718666)))

(assert (=> d!138459 (= res!841130 (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> d!138459 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!718666)))

(declare-fun b!1262434 () Bool)

(assert (=> b!1262434 (= e!718665 call!62096)))

(declare-fun b!1262435 () Bool)

(assert (=> b!1262435 (= e!718665 e!718664)))

(declare-fun lt!572247 () (_ BitVec 64))

(assert (=> b!1262435 (= lt!572247 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572249 () Unit!42028)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82361 (_ BitVec 64) (_ BitVec 32)) Unit!42028)

(assert (=> b!1262435 (= lt!572249 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!572247 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1262435 (arrayContainsKey!0 _keys!1118 lt!572247 #b00000000000000000000000000000000)))

(declare-fun lt!572248 () Unit!42028)

(assert (=> b!1262435 (= lt!572248 lt!572249)))

(declare-fun res!841129 () Bool)

(declare-datatypes ((SeekEntryResult!9973 0))(
  ( (MissingZero!9973 (index!42262 (_ BitVec 32))) (Found!9973 (index!42263 (_ BitVec 32))) (Intermediate!9973 (undefined!10785 Bool) (index!42264 (_ BitVec 32)) (x!111241 (_ BitVec 32))) (Undefined!9973) (MissingVacant!9973 (index!42265 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82361 (_ BitVec 32)) SeekEntryResult!9973)

(assert (=> b!1262435 (= res!841129 (= (seekEntryOrOpen!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9973 #b00000000000000000000000000000000)))))

(assert (=> b!1262435 (=> (not res!841129) (not e!718664))))

(assert (= (and d!138459 (not res!841130)) b!1262433))

(assert (= (and b!1262433 c!122775) b!1262435))

(assert (= (and b!1262433 (not c!122775)) b!1262434))

(assert (= (and b!1262435 res!841129) b!1262432))

(assert (= (or b!1262432 b!1262434) bm!62093))

(declare-fun m!1162971 () Bool)

(assert (=> bm!62093 m!1162971))

(assert (=> b!1262433 m!1162913))

(assert (=> b!1262433 m!1162913))

(assert (=> b!1262433 m!1162915))

(assert (=> b!1262435 m!1162913))

(declare-fun m!1162973 () Bool)

(assert (=> b!1262435 m!1162973))

(declare-fun m!1162975 () Bool)

(assert (=> b!1262435 m!1162975))

(assert (=> b!1262435 m!1162913))

(declare-fun m!1162977 () Bool)

(assert (=> b!1262435 m!1162977))

(assert (=> b!1262308 d!138459))

(declare-fun d!138461 () Bool)

(assert (=> d!138461 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106042 d!138461))

(declare-fun d!138463 () Bool)

(assert (=> d!138463 (= (array_inv!30191 _keys!1118) (bvsge (size!40262 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106042 d!138463))

(declare-fun d!138465 () Bool)

(assert (=> d!138465 (= (array_inv!30192 _values!914) (bvsge (size!40263 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106042 d!138465))

(declare-fun bm!62094 () Bool)

(declare-fun call!62101 () ListLongMap!19065)

(declare-fun call!62102 () ListLongMap!19065)

(assert (=> bm!62094 (= call!62101 call!62102)))

(declare-fun d!138467 () Bool)

(declare-fun e!718667 () Bool)

(assert (=> d!138467 e!718667))

(declare-fun res!841139 () Bool)

(assert (=> d!138467 (=> (not res!841139) (not e!718667))))

(assert (=> d!138467 (= res!841139 (or (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))))

(declare-fun lt!572252 () ListLongMap!19065)

(declare-fun lt!572261 () ListLongMap!19065)

(assert (=> d!138467 (= lt!572252 lt!572261)))

(declare-fun lt!572262 () Unit!42028)

(declare-fun e!718672 () Unit!42028)

(assert (=> d!138467 (= lt!572262 e!718672)))

(declare-fun c!122777 () Bool)

(declare-fun e!718678 () Bool)

(assert (=> d!138467 (= c!122777 e!718678)))

(declare-fun res!841131 () Bool)

(assert (=> d!138467 (=> (not res!841131) (not e!718678))))

(assert (=> d!138467 (= res!841131 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun e!718676 () ListLongMap!19065)

(assert (=> d!138467 (= lt!572261 e!718676)))

(declare-fun c!122781 () Bool)

(assert (=> d!138467 (= c!122781 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138467 (validMask!0 mask!1466)))

(assert (=> d!138467 (= (getCurrentListMap!4653 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572252)))

(declare-fun b!1262436 () Bool)

(assert (=> b!1262436 (= e!718678 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262437 () Bool)

(declare-fun e!718671 () Bool)

(declare-fun call!62099 () Bool)

(assert (=> b!1262437 (= e!718671 (not call!62099))))

(declare-fun b!1262438 () Bool)

(declare-fun c!122776 () Bool)

(assert (=> b!1262438 (= c!122776 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!718674 () ListLongMap!19065)

(declare-fun e!718679 () ListLongMap!19065)

(assert (=> b!1262438 (= e!718674 e!718679)))

(declare-fun e!718677 () Bool)

(declare-fun b!1262439 () Bool)

(assert (=> b!1262439 (= e!718677 (= (apply!1033 lt!572252 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1262439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40263 _values!914)))))

(assert (=> b!1262439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262440 () Bool)

(declare-fun call!62100 () ListLongMap!19065)

(assert (=> b!1262440 (= e!718676 (+!4216 call!62100 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!62095 () Bool)

(assert (=> bm!62095 (= call!62102 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262441 () Bool)

(declare-fun e!718669 () Bool)

(assert (=> b!1262441 (= e!718669 (= (apply!1033 lt!572252 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!62096 () Bool)

(declare-fun call!62103 () ListLongMap!19065)

(assert (=> bm!62096 (= call!62103 call!62101)))

(declare-fun b!1262442 () Bool)

(assert (=> b!1262442 (= e!718671 e!718669)))

(declare-fun res!841134 () Bool)

(assert (=> b!1262442 (= res!841134 call!62099)))

(assert (=> b!1262442 (=> (not res!841134) (not e!718669))))

(declare-fun b!1262443 () Bool)

(declare-fun res!841133 () Bool)

(assert (=> b!1262443 (=> (not res!841133) (not e!718667))))

(declare-fun e!718670 () Bool)

(assert (=> b!1262443 (= res!841133 e!718670)))

(declare-fun res!841138 () Bool)

(assert (=> b!1262443 (=> res!841138 e!718670)))

(declare-fun e!718675 () Bool)

(assert (=> b!1262443 (= res!841138 (not e!718675))))

(declare-fun res!841132 () Bool)

(assert (=> b!1262443 (=> (not res!841132) (not e!718675))))

(assert (=> b!1262443 (= res!841132 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262444 () Bool)

(declare-fun e!718673 () Bool)

(assert (=> b!1262444 (= e!718667 e!718673)))

(declare-fun c!122778 () Bool)

(assert (=> b!1262444 (= c!122778 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262445 () Bool)

(assert (=> b!1262445 (= e!718679 call!62103)))

(declare-fun b!1262446 () Bool)

(declare-fun res!841135 () Bool)

(assert (=> b!1262446 (=> (not res!841135) (not e!718667))))

(assert (=> b!1262446 (= res!841135 e!718671)))

(declare-fun c!122780 () Bool)

(assert (=> b!1262446 (= c!122780 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62097 () Bool)

(assert (=> bm!62097 (= call!62099 (contains!7613 lt!572252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262447 () Bool)

(declare-fun call!62097 () ListLongMap!19065)

(assert (=> b!1262447 (= e!718674 call!62097)))

(declare-fun bm!62098 () Bool)

(assert (=> bm!62098 (= call!62097 call!62100)))

(declare-fun b!1262448 () Bool)

(assert (=> b!1262448 (= e!718679 call!62097)))

(declare-fun b!1262449 () Bool)

(assert (=> b!1262449 (= e!718676 e!718674)))

(declare-fun c!122779 () Bool)

(assert (=> b!1262449 (= c!122779 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262450 () Bool)

(declare-fun lt!572269 () Unit!42028)

(assert (=> b!1262450 (= e!718672 lt!572269)))

(declare-fun lt!572260 () ListLongMap!19065)

(assert (=> b!1262450 (= lt!572260 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572259 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572259 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572255 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572255 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572268 () Unit!42028)

(assert (=> b!1262450 (= lt!572268 (addStillContains!1104 lt!572260 lt!572259 zeroValue!871 lt!572255))))

(assert (=> b!1262450 (contains!7613 (+!4216 lt!572260 (tuple2!21181 lt!572259 zeroValue!871)) lt!572255)))

(declare-fun lt!572265 () Unit!42028)

(assert (=> b!1262450 (= lt!572265 lt!572268)))

(declare-fun lt!572270 () ListLongMap!19065)

(assert (=> b!1262450 (= lt!572270 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572264 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572264 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572266 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572266 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572251 () Unit!42028)

(assert (=> b!1262450 (= lt!572251 (addApplyDifferent!538 lt!572270 lt!572264 minValueBefore!43 lt!572266))))

(assert (=> b!1262450 (= (apply!1033 (+!4216 lt!572270 (tuple2!21181 lt!572264 minValueBefore!43)) lt!572266) (apply!1033 lt!572270 lt!572266))))

(declare-fun lt!572271 () Unit!42028)

(assert (=> b!1262450 (= lt!572271 lt!572251)))

(declare-fun lt!572258 () ListLongMap!19065)

(assert (=> b!1262450 (= lt!572258 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572257 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572257 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572254 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572254 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572263 () Unit!42028)

(assert (=> b!1262450 (= lt!572263 (addApplyDifferent!538 lt!572258 lt!572257 zeroValue!871 lt!572254))))

(assert (=> b!1262450 (= (apply!1033 (+!4216 lt!572258 (tuple2!21181 lt!572257 zeroValue!871)) lt!572254) (apply!1033 lt!572258 lt!572254))))

(declare-fun lt!572267 () Unit!42028)

(assert (=> b!1262450 (= lt!572267 lt!572263)))

(declare-fun lt!572256 () ListLongMap!19065)

(assert (=> b!1262450 (= lt!572256 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572253 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572253 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572250 () (_ BitVec 64))

(assert (=> b!1262450 (= lt!572250 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262450 (= lt!572269 (addApplyDifferent!538 lt!572256 lt!572253 minValueBefore!43 lt!572250))))

(assert (=> b!1262450 (= (apply!1033 (+!4216 lt!572256 (tuple2!21181 lt!572253 minValueBefore!43)) lt!572250) (apply!1033 lt!572256 lt!572250))))

(declare-fun b!1262451 () Bool)

(declare-fun call!62098 () Bool)

(assert (=> b!1262451 (= e!718673 (not call!62098))))

(declare-fun b!1262452 () Bool)

(assert (=> b!1262452 (= e!718670 e!718677)))

(declare-fun res!841136 () Bool)

(assert (=> b!1262452 (=> (not res!841136) (not e!718677))))

(assert (=> b!1262452 (= res!841136 (contains!7613 lt!572252 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262452 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262453 () Bool)

(declare-fun e!718668 () Bool)

(assert (=> b!1262453 (= e!718668 (= (apply!1033 lt!572252 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1262454 () Bool)

(declare-fun Unit!42033 () Unit!42028)

(assert (=> b!1262454 (= e!718672 Unit!42033)))

(declare-fun bm!62099 () Bool)

(assert (=> bm!62099 (= call!62098 (contains!7613 lt!572252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1262455 () Bool)

(assert (=> b!1262455 (= e!718675 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!62100 () Bool)

(assert (=> bm!62100 (= call!62100 (+!4216 (ite c!122781 call!62102 (ite c!122779 call!62101 call!62103)) (ite (or c!122781 c!122779) (tuple2!21181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1262456 () Bool)

(assert (=> b!1262456 (= e!718673 e!718668)))

(declare-fun res!841137 () Bool)

(assert (=> b!1262456 (= res!841137 call!62098)))

(assert (=> b!1262456 (=> (not res!841137) (not e!718668))))

(assert (= (and d!138467 c!122781) b!1262440))

(assert (= (and d!138467 (not c!122781)) b!1262449))

(assert (= (and b!1262449 c!122779) b!1262447))

(assert (= (and b!1262449 (not c!122779)) b!1262438))

(assert (= (and b!1262438 c!122776) b!1262448))

(assert (= (and b!1262438 (not c!122776)) b!1262445))

(assert (= (or b!1262448 b!1262445) bm!62096))

(assert (= (or b!1262447 bm!62096) bm!62094))

(assert (= (or b!1262447 b!1262448) bm!62098))

(assert (= (or b!1262440 bm!62094) bm!62095))

(assert (= (or b!1262440 bm!62098) bm!62100))

(assert (= (and d!138467 res!841131) b!1262436))

(assert (= (and d!138467 c!122777) b!1262450))

(assert (= (and d!138467 (not c!122777)) b!1262454))

(assert (= (and d!138467 res!841139) b!1262443))

(assert (= (and b!1262443 res!841132) b!1262455))

(assert (= (and b!1262443 (not res!841138)) b!1262452))

(assert (= (and b!1262452 res!841136) b!1262439))

(assert (= (and b!1262443 res!841133) b!1262446))

(assert (= (and b!1262446 c!122780) b!1262442))

(assert (= (and b!1262446 (not c!122780)) b!1262437))

(assert (= (and b!1262442 res!841134) b!1262441))

(assert (= (or b!1262442 b!1262437) bm!62097))

(assert (= (and b!1262446 res!841135) b!1262444))

(assert (= (and b!1262444 c!122778) b!1262456))

(assert (= (and b!1262444 (not c!122778)) b!1262451))

(assert (= (and b!1262456 res!841137) b!1262453))

(assert (= (or b!1262456 b!1262451) bm!62099))

(declare-fun b_lambda!22887 () Bool)

(assert (=> (not b_lambda!22887) (not b!1262439)))

(assert (=> b!1262439 t!41920))

(declare-fun b_and!45443 () Bool)

(assert (= b_and!45441 (and (=> t!41920 result!23385) b_and!45443)))

(declare-fun m!1162979 () Bool)

(assert (=> b!1262453 m!1162979))

(assert (=> b!1262455 m!1162913))

(assert (=> b!1262455 m!1162913))

(assert (=> b!1262455 m!1162915))

(declare-fun m!1162981 () Bool)

(assert (=> bm!62100 m!1162981))

(assert (=> b!1262439 m!1162913))

(declare-fun m!1162983 () Bool)

(assert (=> b!1262439 m!1162983))

(assert (=> b!1262439 m!1162921))

(assert (=> b!1262439 m!1162923))

(assert (=> b!1262439 m!1162925))

(assert (=> b!1262439 m!1162921))

(assert (=> b!1262439 m!1162913))

(assert (=> b!1262439 m!1162923))

(assert (=> b!1262436 m!1162913))

(assert (=> b!1262436 m!1162913))

(assert (=> b!1262436 m!1162915))

(declare-fun m!1162985 () Bool)

(assert (=> bm!62097 m!1162985))

(declare-fun m!1162987 () Bool)

(assert (=> bm!62099 m!1162987))

(declare-fun m!1162989 () Bool)

(assert (=> b!1262450 m!1162989))

(declare-fun m!1162991 () Bool)

(assert (=> b!1262450 m!1162991))

(declare-fun m!1162993 () Bool)

(assert (=> b!1262450 m!1162993))

(declare-fun m!1162995 () Bool)

(assert (=> b!1262450 m!1162995))

(declare-fun m!1162997 () Bool)

(assert (=> b!1262450 m!1162997))

(declare-fun m!1162999 () Bool)

(assert (=> b!1262450 m!1162999))

(declare-fun m!1163001 () Bool)

(assert (=> b!1262450 m!1163001))

(declare-fun m!1163003 () Bool)

(assert (=> b!1262450 m!1163003))

(declare-fun m!1163005 () Bool)

(assert (=> b!1262450 m!1163005))

(assert (=> b!1262450 m!1162877))

(assert (=> b!1262450 m!1162913))

(assert (=> b!1262450 m!1162993))

(declare-fun m!1163007 () Bool)

(assert (=> b!1262450 m!1163007))

(declare-fun m!1163009 () Bool)

(assert (=> b!1262450 m!1163009))

(assert (=> b!1262450 m!1162999))

(declare-fun m!1163011 () Bool)

(assert (=> b!1262450 m!1163011))

(declare-fun m!1163013 () Bool)

(assert (=> b!1262450 m!1163013))

(assert (=> b!1262450 m!1163003))

(declare-fun m!1163015 () Bool)

(assert (=> b!1262450 m!1163015))

(assert (=> b!1262450 m!1163013))

(declare-fun m!1163017 () Bool)

(assert (=> b!1262450 m!1163017))

(declare-fun m!1163019 () Bool)

(assert (=> b!1262441 m!1163019))

(assert (=> bm!62095 m!1162877))

(assert (=> d!138467 m!1162881))

(declare-fun m!1163021 () Bool)

(assert (=> b!1262440 m!1163021))

(assert (=> b!1262452 m!1162913))

(assert (=> b!1262452 m!1162913))

(declare-fun m!1163023 () Bool)

(assert (=> b!1262452 m!1163023))

(assert (=> b!1262312 d!138467))

(declare-fun d!138469 () Bool)

(declare-fun e!718682 () Bool)

(assert (=> d!138469 e!718682))

(declare-fun res!841145 () Bool)

(assert (=> d!138469 (=> (not res!841145) (not e!718682))))

(declare-fun lt!572281 () ListLongMap!19065)

(assert (=> d!138469 (= res!841145 (contains!7613 lt!572281 (_1!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!572280 () List!28403)

(assert (=> d!138469 (= lt!572281 (ListLongMap!19066 lt!572280))))

(declare-fun lt!572282 () Unit!42028)

(declare-fun lt!572283 () Unit!42028)

(assert (=> d!138469 (= lt!572282 lt!572283)))

(declare-datatypes ((Option!717 0))(
  ( (Some!716 (v!18961 V!48537)) (None!715) )
))
(declare-fun getValueByKey!666 (List!28403 (_ BitVec 64)) Option!717)

(assert (=> d!138469 (= (getValueByKey!666 lt!572280 (_1!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!716 (_2!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!335 (List!28403 (_ BitVec 64) V!48537) Unit!42028)

(assert (=> d!138469 (= lt!572283 (lemmaContainsTupThenGetReturnValue!335 lt!572280 (_1!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!448 (List!28403 (_ BitVec 64) V!48537) List!28403)

(assert (=> d!138469 (= lt!572280 (insertStrictlySorted!448 (toList!9548 lt!572164) (_1!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138469 (= (+!4216 lt!572164 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!572281)))

(declare-fun b!1262461 () Bool)

(declare-fun res!841144 () Bool)

(assert (=> b!1262461 (=> (not res!841144) (not e!718682))))

(assert (=> b!1262461 (= res!841144 (= (getValueByKey!666 (toList!9548 lt!572281) (_1!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!716 (_2!10600 (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1262462 () Bool)

(declare-fun contains!7615 (List!28403 tuple2!21180) Bool)

(assert (=> b!1262462 (= e!718682 (contains!7615 (toList!9548 lt!572281) (tuple2!21181 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138469 res!841145) b!1262461))

(assert (= (and b!1262461 res!841144) b!1262462))

(declare-fun m!1163025 () Bool)

(assert (=> d!138469 m!1163025))

(declare-fun m!1163027 () Bool)

(assert (=> d!138469 m!1163027))

(declare-fun m!1163029 () Bool)

(assert (=> d!138469 m!1163029))

(declare-fun m!1163031 () Bool)

(assert (=> d!138469 m!1163031))

(declare-fun m!1163033 () Bool)

(assert (=> b!1262461 m!1163033))

(declare-fun m!1163035 () Bool)

(assert (=> b!1262462 m!1163035))

(assert (=> b!1262312 d!138469))

(declare-fun d!138471 () Bool)

(assert (=> d!138471 (= (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572286 () Unit!42028)

(declare-fun choose!1881 (array!82361 array!82363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48537 V!48537 V!48537 V!48537 (_ BitVec 32) Int) Unit!42028)

(assert (=> d!138471 (= lt!572286 (choose!1881 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138471 (validMask!0 mask!1466)))

(assert (=> d!138471 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1184 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572286)))

(declare-fun bs!35719 () Bool)

(assert (= bs!35719 d!138471))

(assert (=> bs!35719 m!1162877))

(assert (=> bs!35719 m!1162875))

(declare-fun m!1163037 () Bool)

(assert (=> bs!35719 m!1163037))

(assert (=> bs!35719 m!1162881))

(assert (=> b!1262313 d!138471))

(declare-fun b!1262487 () Bool)

(declare-fun e!718702 () Bool)

(declare-fun lt!572304 () ListLongMap!19065)

(declare-fun isEmpty!1043 (ListLongMap!19065) Bool)

(assert (=> b!1262487 (= e!718702 (isEmpty!1043 lt!572304))))

(declare-fun b!1262488 () Bool)

(declare-fun e!718697 () Bool)

(declare-fun e!718700 () Bool)

(assert (=> b!1262488 (= e!718697 e!718700)))

(assert (=> b!1262488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun res!841157 () Bool)

(assert (=> b!1262488 (= res!841157 (contains!7613 lt!572304 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262488 (=> (not res!841157) (not e!718700))))

(declare-fun b!1262489 () Bool)

(declare-fun e!718698 () ListLongMap!19065)

(declare-fun e!718699 () ListLongMap!19065)

(assert (=> b!1262489 (= e!718698 e!718699)))

(declare-fun c!122790 () Bool)

(assert (=> b!1262489 (= c!122790 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262490 () Bool)

(assert (=> b!1262490 (= e!718702 (= lt!572304 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262491 () Bool)

(declare-fun e!718701 () Bool)

(assert (=> b!1262491 (= e!718701 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262491 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1262492 () Bool)

(declare-fun e!718703 () Bool)

(assert (=> b!1262492 (= e!718703 e!718697)))

(declare-fun c!122792 () Bool)

(assert (=> b!1262492 (= c!122792 e!718701)))

(declare-fun res!841155 () Bool)

(assert (=> b!1262492 (=> (not res!841155) (not e!718701))))

(assert (=> b!1262492 (= res!841155 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262493 () Bool)

(declare-fun call!62106 () ListLongMap!19065)

(assert (=> b!1262493 (= e!718699 call!62106)))

(declare-fun bm!62103 () Bool)

(assert (=> bm!62103 (= call!62106 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262494 () Bool)

(assert (=> b!1262494 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> b!1262494 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40263 _values!914)))))

(assert (=> b!1262494 (= e!718700 (= (apply!1033 lt!572304 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138473 () Bool)

(assert (=> d!138473 e!718703))

(declare-fun res!841156 () Bool)

(assert (=> d!138473 (=> (not res!841156) (not e!718703))))

(assert (=> d!138473 (= res!841156 (not (contains!7613 lt!572304 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138473 (= lt!572304 e!718698)))

(declare-fun c!122793 () Bool)

(assert (=> d!138473 (= c!122793 (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> d!138473 (validMask!0 mask!1466)))

(assert (=> d!138473 (= (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572304)))

(declare-fun b!1262495 () Bool)

(declare-fun lt!572301 () Unit!42028)

(declare-fun lt!572302 () Unit!42028)

(assert (=> b!1262495 (= lt!572301 lt!572302)))

(declare-fun lt!572307 () (_ BitVec 64))

(declare-fun lt!572306 () (_ BitVec 64))

(declare-fun lt!572305 () ListLongMap!19065)

(declare-fun lt!572303 () V!48537)

(assert (=> b!1262495 (not (contains!7613 (+!4216 lt!572305 (tuple2!21181 lt!572307 lt!572303)) lt!572306))))

(declare-fun addStillNotContains!328 (ListLongMap!19065 (_ BitVec 64) V!48537 (_ BitVec 64)) Unit!42028)

(assert (=> b!1262495 (= lt!572302 (addStillNotContains!328 lt!572305 lt!572307 lt!572303 lt!572306))))

(assert (=> b!1262495 (= lt!572306 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262495 (= lt!572303 (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262495 (= lt!572307 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262495 (= lt!572305 call!62106)))

(assert (=> b!1262495 (= e!718699 (+!4216 call!62106 (tuple2!21181 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1262496 () Bool)

(declare-fun res!841154 () Bool)

(assert (=> b!1262496 (=> (not res!841154) (not e!718703))))

(assert (=> b!1262496 (= res!841154 (not (contains!7613 lt!572304 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262497 () Bool)

(assert (=> b!1262497 (= e!718698 (ListLongMap!19066 Nil!28400))))

(declare-fun b!1262498 () Bool)

(assert (=> b!1262498 (= e!718697 e!718702)))

(declare-fun c!122791 () Bool)

(assert (=> b!1262498 (= c!122791 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (= (and d!138473 c!122793) b!1262497))

(assert (= (and d!138473 (not c!122793)) b!1262489))

(assert (= (and b!1262489 c!122790) b!1262495))

(assert (= (and b!1262489 (not c!122790)) b!1262493))

(assert (= (or b!1262495 b!1262493) bm!62103))

(assert (= (and d!138473 res!841156) b!1262496))

(assert (= (and b!1262496 res!841154) b!1262492))

(assert (= (and b!1262492 res!841155) b!1262491))

(assert (= (and b!1262492 c!122792) b!1262488))

(assert (= (and b!1262492 (not c!122792)) b!1262498))

(assert (= (and b!1262488 res!841157) b!1262494))

(assert (= (and b!1262498 c!122791) b!1262490))

(assert (= (and b!1262498 (not c!122791)) b!1262487))

(declare-fun b_lambda!22889 () Bool)

(assert (=> (not b_lambda!22889) (not b!1262494)))

(assert (=> b!1262494 t!41920))

(declare-fun b_and!45445 () Bool)

(assert (= b_and!45443 (and (=> t!41920 result!23385) b_and!45445)))

(declare-fun b_lambda!22891 () Bool)

(assert (=> (not b_lambda!22891) (not b!1262495)))

(assert (=> b!1262495 t!41920))

(declare-fun b_and!45447 () Bool)

(assert (= b_and!45445 (and (=> t!41920 result!23385) b_and!45447)))

(declare-fun m!1163039 () Bool)

(assert (=> bm!62103 m!1163039))

(assert (=> b!1262494 m!1162923))

(assert (=> b!1262494 m!1162913))

(assert (=> b!1262494 m!1162913))

(declare-fun m!1163041 () Bool)

(assert (=> b!1262494 m!1163041))

(assert (=> b!1262494 m!1162921))

(assert (=> b!1262494 m!1162923))

(assert (=> b!1262494 m!1162925))

(assert (=> b!1262494 m!1162921))

(assert (=> b!1262489 m!1162913))

(assert (=> b!1262489 m!1162913))

(assert (=> b!1262489 m!1162915))

(declare-fun m!1163043 () Bool)

(assert (=> b!1262496 m!1163043))

(declare-fun m!1163045 () Bool)

(assert (=> d!138473 m!1163045))

(assert (=> d!138473 m!1162881))

(declare-fun m!1163047 () Bool)

(assert (=> b!1262487 m!1163047))

(assert (=> b!1262491 m!1162913))

(assert (=> b!1262491 m!1162913))

(assert (=> b!1262491 m!1162915))

(declare-fun m!1163049 () Bool)

(assert (=> b!1262495 m!1163049))

(assert (=> b!1262495 m!1162923))

(assert (=> b!1262495 m!1162913))

(declare-fun m!1163051 () Bool)

(assert (=> b!1262495 m!1163051))

(declare-fun m!1163053 () Bool)

(assert (=> b!1262495 m!1163053))

(assert (=> b!1262495 m!1163051))

(assert (=> b!1262495 m!1162921))

(assert (=> b!1262495 m!1162921))

(assert (=> b!1262495 m!1162923))

(assert (=> b!1262495 m!1162925))

(declare-fun m!1163055 () Bool)

(assert (=> b!1262495 m!1163055))

(assert (=> b!1262490 m!1163039))

(assert (=> b!1262488 m!1162913))

(assert (=> b!1262488 m!1162913))

(declare-fun m!1163057 () Bool)

(assert (=> b!1262488 m!1163057))

(assert (=> b!1262313 d!138473))

(declare-fun b!1262499 () Bool)

(declare-fun e!718709 () Bool)

(declare-fun lt!572311 () ListLongMap!19065)

(assert (=> b!1262499 (= e!718709 (isEmpty!1043 lt!572311))))

(declare-fun b!1262500 () Bool)

(declare-fun e!718704 () Bool)

(declare-fun e!718707 () Bool)

(assert (=> b!1262500 (= e!718704 e!718707)))

(assert (=> b!1262500 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun res!841161 () Bool)

(assert (=> b!1262500 (= res!841161 (contains!7613 lt!572311 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262500 (=> (not res!841161) (not e!718707))))

(declare-fun b!1262501 () Bool)

(declare-fun e!718705 () ListLongMap!19065)

(declare-fun e!718706 () ListLongMap!19065)

(assert (=> b!1262501 (= e!718705 e!718706)))

(declare-fun c!122794 () Bool)

(assert (=> b!1262501 (= c!122794 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1262502 () Bool)

(assert (=> b!1262502 (= e!718709 (= lt!572311 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1262503 () Bool)

(declare-fun e!718708 () Bool)

(assert (=> b!1262503 (= e!718708 (validKeyInArray!0 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1262503 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1262504 () Bool)

(declare-fun e!718710 () Bool)

(assert (=> b!1262504 (= e!718710 e!718704)))

(declare-fun c!122796 () Bool)

(assert (=> b!1262504 (= c!122796 e!718708)))

(declare-fun res!841159 () Bool)

(assert (=> b!1262504 (=> (not res!841159) (not e!718708))))

(assert (=> b!1262504 (= res!841159 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(declare-fun b!1262505 () Bool)

(declare-fun call!62107 () ListLongMap!19065)

(assert (=> b!1262505 (= e!718706 call!62107)))

(declare-fun bm!62104 () Bool)

(assert (=> bm!62104 (= call!62107 (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1262506 () Bool)

(assert (=> b!1262506 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> b!1262506 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40263 _values!914)))))

(assert (=> b!1262506 (= e!718707 (= (apply!1033 lt!572311 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000)) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!138475 () Bool)

(assert (=> d!138475 e!718710))

(declare-fun res!841160 () Bool)

(assert (=> d!138475 (=> (not res!841160) (not e!718710))))

(assert (=> d!138475 (= res!841160 (not (contains!7613 lt!572311 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138475 (= lt!572311 e!718705)))

(declare-fun c!122797 () Bool)

(assert (=> d!138475 (= c!122797 (bvsge #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (=> d!138475 (validMask!0 mask!1466)))

(assert (=> d!138475 (= (getCurrentListMapNoExtraKeys!5888 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572311)))

(declare-fun b!1262507 () Bool)

(declare-fun lt!572308 () Unit!42028)

(declare-fun lt!572309 () Unit!42028)

(assert (=> b!1262507 (= lt!572308 lt!572309)))

(declare-fun lt!572312 () ListLongMap!19065)

(declare-fun lt!572310 () V!48537)

(declare-fun lt!572314 () (_ BitVec 64))

(declare-fun lt!572313 () (_ BitVec 64))

(assert (=> b!1262507 (not (contains!7613 (+!4216 lt!572312 (tuple2!21181 lt!572314 lt!572310)) lt!572313))))

(assert (=> b!1262507 (= lt!572309 (addStillNotContains!328 lt!572312 lt!572314 lt!572310 lt!572313))))

(assert (=> b!1262507 (= lt!572313 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1262507 (= lt!572310 (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1262507 (= lt!572314 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1262507 (= lt!572312 call!62107)))

(assert (=> b!1262507 (= e!718706 (+!4216 call!62107 (tuple2!21181 (select (arr!39725 _keys!1118) #b00000000000000000000000000000000) (get!20315 (select (arr!39726 _values!914) #b00000000000000000000000000000000) (dynLambda!3478 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1262508 () Bool)

(declare-fun res!841158 () Bool)

(assert (=> b!1262508 (=> (not res!841158) (not e!718710))))

(assert (=> b!1262508 (= res!841158 (not (contains!7613 lt!572311 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262509 () Bool)

(assert (=> b!1262509 (= e!718705 (ListLongMap!19066 Nil!28400))))

(declare-fun b!1262510 () Bool)

(assert (=> b!1262510 (= e!718704 e!718709)))

(declare-fun c!122795 () Bool)

(assert (=> b!1262510 (= c!122795 (bvslt #b00000000000000000000000000000000 (size!40262 _keys!1118)))))

(assert (= (and d!138475 c!122797) b!1262509))

(assert (= (and d!138475 (not c!122797)) b!1262501))

(assert (= (and b!1262501 c!122794) b!1262507))

(assert (= (and b!1262501 (not c!122794)) b!1262505))

(assert (= (or b!1262507 b!1262505) bm!62104))

(assert (= (and d!138475 res!841160) b!1262508))

(assert (= (and b!1262508 res!841158) b!1262504))

(assert (= (and b!1262504 res!841159) b!1262503))

(assert (= (and b!1262504 c!122796) b!1262500))

(assert (= (and b!1262504 (not c!122796)) b!1262510))

(assert (= (and b!1262500 res!841161) b!1262506))

(assert (= (and b!1262510 c!122795) b!1262502))

(assert (= (and b!1262510 (not c!122795)) b!1262499))

(declare-fun b_lambda!22893 () Bool)

(assert (=> (not b_lambda!22893) (not b!1262506)))

(assert (=> b!1262506 t!41920))

(declare-fun b_and!45449 () Bool)

(assert (= b_and!45447 (and (=> t!41920 result!23385) b_and!45449)))

(declare-fun b_lambda!22895 () Bool)

(assert (=> (not b_lambda!22895) (not b!1262507)))

(assert (=> b!1262507 t!41920))

(declare-fun b_and!45451 () Bool)

(assert (= b_and!45449 (and (=> t!41920 result!23385) b_and!45451)))

(declare-fun m!1163059 () Bool)

(assert (=> bm!62104 m!1163059))

(assert (=> b!1262506 m!1162923))

(assert (=> b!1262506 m!1162913))

(assert (=> b!1262506 m!1162913))

(declare-fun m!1163061 () Bool)

(assert (=> b!1262506 m!1163061))

(assert (=> b!1262506 m!1162921))

(assert (=> b!1262506 m!1162923))

(assert (=> b!1262506 m!1162925))

(assert (=> b!1262506 m!1162921))

(assert (=> b!1262501 m!1162913))

(assert (=> b!1262501 m!1162913))

(assert (=> b!1262501 m!1162915))

(declare-fun m!1163063 () Bool)

(assert (=> b!1262508 m!1163063))

(declare-fun m!1163065 () Bool)

(assert (=> d!138475 m!1163065))

(assert (=> d!138475 m!1162881))

(declare-fun m!1163067 () Bool)

(assert (=> b!1262499 m!1163067))

(assert (=> b!1262503 m!1162913))

(assert (=> b!1262503 m!1162913))

(assert (=> b!1262503 m!1162915))

(declare-fun m!1163069 () Bool)

(assert (=> b!1262507 m!1163069))

(assert (=> b!1262507 m!1162923))

(assert (=> b!1262507 m!1162913))

(declare-fun m!1163071 () Bool)

(assert (=> b!1262507 m!1163071))

(declare-fun m!1163073 () Bool)

(assert (=> b!1262507 m!1163073))

(assert (=> b!1262507 m!1163071))

(assert (=> b!1262507 m!1162921))

(assert (=> b!1262507 m!1162921))

(assert (=> b!1262507 m!1162923))

(assert (=> b!1262507 m!1162925))

(declare-fun m!1163075 () Bool)

(assert (=> b!1262507 m!1163075))

(assert (=> b!1262502 m!1163059))

(assert (=> b!1262500 m!1162913))

(assert (=> b!1262500 m!1162913))

(declare-fun m!1163077 () Bool)

(assert (=> b!1262500 m!1163077))

(assert (=> b!1262313 d!138475))

(declare-fun b!1262517 () Bool)

(declare-fun e!718716 () Bool)

(assert (=> b!1262517 (= e!718716 tp_is_empty!32379)))

(declare-fun condMapEmpty!50389 () Bool)

(declare-fun mapDefault!50389 () ValueCell!15426)

(assert (=> mapNonEmpty!50383 (= condMapEmpty!50389 (= mapRest!50383 ((as const (Array (_ BitVec 32) ValueCell!15426)) mapDefault!50389)))))

(declare-fun e!718715 () Bool)

(declare-fun mapRes!50389 () Bool)

(assert (=> mapNonEmpty!50383 (= tp!95975 (and e!718715 mapRes!50389))))

(declare-fun mapNonEmpty!50389 () Bool)

(declare-fun tp!95985 () Bool)

(assert (=> mapNonEmpty!50389 (= mapRes!50389 (and tp!95985 e!718716))))

(declare-fun mapRest!50389 () (Array (_ BitVec 32) ValueCell!15426))

(declare-fun mapValue!50389 () ValueCell!15426)

(declare-fun mapKey!50389 () (_ BitVec 32))

(assert (=> mapNonEmpty!50389 (= mapRest!50383 (store mapRest!50389 mapKey!50389 mapValue!50389))))

(declare-fun mapIsEmpty!50389 () Bool)

(assert (=> mapIsEmpty!50389 mapRes!50389))

(declare-fun b!1262518 () Bool)

(assert (=> b!1262518 (= e!718715 tp_is_empty!32379)))

(assert (= (and mapNonEmpty!50383 condMapEmpty!50389) mapIsEmpty!50389))

(assert (= (and mapNonEmpty!50383 (not condMapEmpty!50389)) mapNonEmpty!50389))

(assert (= (and mapNonEmpty!50389 ((_ is ValueCellFull!15426) mapValue!50389)) b!1262517))

(assert (= (and mapNonEmpty!50383 ((_ is ValueCellFull!15426) mapDefault!50389)) b!1262518))

(declare-fun m!1163079 () Bool)

(assert (=> mapNonEmpty!50389 m!1163079))

(declare-fun b_lambda!22897 () Bool)

(assert (= b_lambda!22887 (or (and start!106042 b_free!27477) b_lambda!22897)))

(declare-fun b_lambda!22899 () Bool)

(assert (= b_lambda!22895 (or (and start!106042 b_free!27477) b_lambda!22899)))

(declare-fun b_lambda!22901 () Bool)

(assert (= b_lambda!22893 (or (and start!106042 b_free!27477) b_lambda!22901)))

(declare-fun b_lambda!22903 () Bool)

(assert (= b_lambda!22889 (or (and start!106042 b_free!27477) b_lambda!22903)))

(declare-fun b_lambda!22905 () Bool)

(assert (= b_lambda!22885 (or (and start!106042 b_free!27477) b_lambda!22905)))

(declare-fun b_lambda!22907 () Bool)

(assert (= b_lambda!22891 (or (and start!106042 b_free!27477) b_lambda!22907)))

(check-sat (not bm!62082) (not bm!62084) (not b!1262386) (not b!1262462) (not b!1262389) (not b!1262433) (not b!1262441) (not bm!62090) (not b!1262506) (not b!1262390) (not b_lambda!22897) (not d!138471) (not bm!62086) (not b_lambda!22901) (not bm!62103) (not b!1262489) (not b!1262450) (not b_lambda!22905) (not bm!62100) (not bm!62104) (not b!1262452) tp_is_empty!32379 (not d!138469) (not b!1262495) (not b!1262422) (not b!1262400) (not b!1262494) (not b!1262500) (not bm!62095) (not b!1262403) (not b!1262487) (not bm!62093) (not b_lambda!22903) (not b!1262488) (not d!138473) (not b!1262490) (not b!1262421) (not b!1262502) (not b_lambda!22907) (not d!138455) (not b!1262440) (not b!1262405) (not b!1262503) (not d!138467) b_and!45451 (not b!1262461) (not b!1262402) (not b!1262507) (not b!1262435) (not b!1262391) (not b!1262455) (not b!1262419) (not b!1262453) (not b!1262496) (not d!138475) (not bm!62099) (not b!1262439) (not b_lambda!22899) (not bm!62097) (not b!1262436) (not mapNonEmpty!50389) (not bm!62087) (not b!1262501) (not b!1262508) (not b!1262491) (not b!1262499) (not b_next!27477))
(check-sat b_and!45451 (not b_next!27477))
