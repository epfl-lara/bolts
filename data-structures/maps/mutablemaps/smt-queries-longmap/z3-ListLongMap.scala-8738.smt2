; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105990 () Bool)

(assert start!105990)

(declare-fun b_free!27465 () Bool)

(declare-fun b_next!27465 () Bool)

(assert (=> start!105990 (= b_free!27465 (not b_next!27465))))

(declare-fun tp!95933 () Bool)

(declare-fun b_and!45401 () Bool)

(assert (=> start!105990 (= tp!95933 b_and!45401)))

(declare-fun b!1261793 () Bool)

(declare-fun e!718231 () Bool)

(declare-fun e!718233 () Bool)

(declare-fun mapRes!50359 () Bool)

(assert (=> b!1261793 (= e!718231 (and e!718233 mapRes!50359))))

(declare-fun condMapEmpty!50359 () Bool)

(declare-datatypes ((V!48521 0))(
  ( (V!48522 (val!16246 Int)) )
))
(declare-datatypes ((ValueCell!15420 0))(
  ( (ValueCellFull!15420 (v!18951 V!48521)) (EmptyCell!15420) )
))
(declare-datatypes ((array!82335 0))(
  ( (array!82336 (arr!39714 (Array (_ BitVec 32) ValueCell!15420)) (size!40251 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82335)

(declare-fun mapDefault!50359 () ValueCell!15420)

(assert (=> b!1261793 (= condMapEmpty!50359 (= (arr!39714 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15420)) mapDefault!50359)))))

(declare-fun b!1261794 () Bool)

(declare-fun res!840817 () Bool)

(declare-fun e!718234 () Bool)

(assert (=> b!1261794 (=> (not res!840817) (not e!718234))))

(declare-datatypes ((array!82337 0))(
  ( (array!82338 (arr!39715 (Array (_ BitVec 32) (_ BitVec 64))) (size!40252 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82337)

(declare-datatypes ((List!28392 0))(
  ( (Nil!28389) (Cons!28388 (h!29597 (_ BitVec 64)) (t!41902 List!28392)) )
))
(declare-fun arrayNoDuplicates!0 (array!82337 (_ BitVec 32) List!28392) Bool)

(assert (=> b!1261794 (= res!840817 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28389))))

(declare-fun b!1261795 () Bool)

(declare-fun res!840819 () Bool)

(assert (=> b!1261795 (=> (not res!840819) (not e!718234))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1261795 (= res!840819 (and (= (size!40251 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40252 _keys!1118) (size!40251 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50359 () Bool)

(assert (=> mapIsEmpty!50359 mapRes!50359))

(declare-fun b!1261796 () Bool)

(declare-fun res!840818 () Bool)

(assert (=> b!1261796 (=> (not res!840818) (not e!718234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82337 (_ BitVec 32)) Bool)

(assert (=> b!1261796 (= res!840818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261797 () Bool)

(declare-fun e!718232 () Bool)

(declare-fun e!718235 () Bool)

(assert (=> b!1261797 (= e!718232 e!718235)))

(declare-fun res!840814 () Bool)

(assert (=> b!1261797 (=> res!840814 e!718235)))

(declare-datatypes ((tuple2!21170 0))(
  ( (tuple2!21171 (_1!10595 (_ BitVec 64)) (_2!10595 V!48521)) )
))
(declare-datatypes ((List!28393 0))(
  ( (Nil!28390) (Cons!28389 (h!29598 tuple2!21170) (t!41903 List!28393)) )
))
(declare-datatypes ((ListLongMap!19055 0))(
  ( (ListLongMap!19056 (toList!9543 List!28393)) )
))
(declare-fun lt!571807 () ListLongMap!19055)

(declare-fun contains!7608 (ListLongMap!19055 (_ BitVec 64)) Bool)

(assert (=> b!1261797 (= res!840814 (contains!7608 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48521)

(declare-fun minValueBefore!43 () V!48521)

(declare-fun getCurrentListMap!4649 (array!82337 array!82335 (_ BitVec 32) (_ BitVec 32) V!48521 V!48521 (_ BitVec 32) Int) ListLongMap!19055)

(assert (=> b!1261797 (= lt!571807 (getCurrentListMap!4649 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261798 () Bool)

(declare-fun tp_is_empty!32367 () Bool)

(assert (=> b!1261798 (= e!718233 tp_is_empty!32367)))

(declare-fun b!1261799 () Bool)

(assert (=> b!1261799 (= e!718234 (not e!718232))))

(declare-fun res!840816 () Bool)

(assert (=> b!1261799 (=> res!840816 e!718232)))

(assert (=> b!1261799 (= res!840816 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!571802 () ListLongMap!19055)

(declare-fun lt!571803 () ListLongMap!19055)

(assert (=> b!1261799 (= lt!571802 lt!571803)))

(declare-fun minValueAfter!43 () V!48521)

(declare-datatypes ((Unit!42015 0))(
  ( (Unit!42016) )
))
(declare-fun lt!571804 () Unit!42015)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1180 (array!82337 array!82335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48521 V!48521 V!48521 V!48521 (_ BitVec 32) Int) Unit!42015)

(assert (=> b!1261799 (= lt!571804 (lemmaNoChangeToArrayThenSameMapNoExtras!1180 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5884 (array!82337 array!82335 (_ BitVec 32) (_ BitVec 32) V!48521 V!48521 (_ BitVec 32) Int) ListLongMap!19055)

(assert (=> b!1261799 (= lt!571803 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1261799 (= lt!571802 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50359 () Bool)

(declare-fun tp!95934 () Bool)

(declare-fun e!718230 () Bool)

(assert (=> mapNonEmpty!50359 (= mapRes!50359 (and tp!95934 e!718230))))

(declare-fun mapRest!50359 () (Array (_ BitVec 32) ValueCell!15420))

(declare-fun mapValue!50359 () ValueCell!15420)

(declare-fun mapKey!50359 () (_ BitVec 32))

(assert (=> mapNonEmpty!50359 (= (arr!39714 _values!914) (store mapRest!50359 mapKey!50359 mapValue!50359))))

(declare-fun b!1261800 () Bool)

(declare-fun lt!571806 () ListLongMap!19055)

(assert (=> b!1261800 (= e!718235 (= lt!571806 (getCurrentListMap!4649 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922)))))

(assert (=> b!1261800 (= lt!571806 lt!571807)))

(declare-fun -!2142 (ListLongMap!19055 (_ BitVec 64)) ListLongMap!19055)

(assert (=> b!1261800 (= lt!571806 (-!2142 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!571805 () Unit!42015)

(declare-fun removeNotPresentStillSame!142 (ListLongMap!19055 (_ BitVec 64)) Unit!42015)

(assert (=> b!1261800 (= lt!571805 (removeNotPresentStillSame!142 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!840815 () Bool)

(assert (=> start!105990 (=> (not res!840815) (not e!718234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105990 (= res!840815 (validMask!0 mask!1466))))

(assert (=> start!105990 e!718234))

(assert (=> start!105990 true))

(assert (=> start!105990 tp!95933))

(assert (=> start!105990 tp_is_empty!32367))

(declare-fun array_inv!30183 (array!82337) Bool)

(assert (=> start!105990 (array_inv!30183 _keys!1118)))

(declare-fun array_inv!30184 (array!82335) Bool)

(assert (=> start!105990 (and (array_inv!30184 _values!914) e!718231)))

(declare-fun b!1261801 () Bool)

(assert (=> b!1261801 (= e!718230 tp_is_empty!32367)))

(assert (= (and start!105990 res!840815) b!1261795))

(assert (= (and b!1261795 res!840819) b!1261796))

(assert (= (and b!1261796 res!840818) b!1261794))

(assert (= (and b!1261794 res!840817) b!1261799))

(assert (= (and b!1261799 (not res!840816)) b!1261797))

(assert (= (and b!1261797 (not res!840814)) b!1261800))

(assert (= (and b!1261793 condMapEmpty!50359) mapIsEmpty!50359))

(assert (= (and b!1261793 (not condMapEmpty!50359)) mapNonEmpty!50359))

(get-info :version)

(assert (= (and mapNonEmpty!50359 ((_ is ValueCellFull!15420) mapValue!50359)) b!1261801))

(assert (= (and b!1261793 ((_ is ValueCellFull!15420) mapDefault!50359)) b!1261798))

(assert (= start!105990 b!1261793))

(declare-fun m!1162369 () Bool)

(assert (=> b!1261799 m!1162369))

(declare-fun m!1162371 () Bool)

(assert (=> b!1261799 m!1162371))

(declare-fun m!1162373 () Bool)

(assert (=> b!1261799 m!1162373))

(declare-fun m!1162375 () Bool)

(assert (=> b!1261794 m!1162375))

(declare-fun m!1162377 () Bool)

(assert (=> b!1261797 m!1162377))

(declare-fun m!1162379 () Bool)

(assert (=> b!1261797 m!1162379))

(declare-fun m!1162381 () Bool)

(assert (=> b!1261800 m!1162381))

(declare-fun m!1162383 () Bool)

(assert (=> b!1261800 m!1162383))

(declare-fun m!1162385 () Bool)

(assert (=> b!1261800 m!1162385))

(declare-fun m!1162387 () Bool)

(assert (=> mapNonEmpty!50359 m!1162387))

(declare-fun m!1162389 () Bool)

(assert (=> start!105990 m!1162389))

(declare-fun m!1162391 () Bool)

(assert (=> start!105990 m!1162391))

(declare-fun m!1162393 () Bool)

(assert (=> start!105990 m!1162393))

(declare-fun m!1162395 () Bool)

(assert (=> b!1261796 m!1162395))

(check-sat (not b!1261800) (not b!1261797) (not start!105990) (not b!1261796) (not mapNonEmpty!50359) (not b!1261799) b_and!45401 (not b_next!27465) (not b!1261794) tp_is_empty!32367)
(check-sat b_and!45401 (not b_next!27465))
(get-model)

(declare-fun b!1261871 () Bool)

(declare-fun e!718287 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1261871 (= e!718287 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261872 () Bool)

(declare-fun e!718284 () Bool)

(assert (=> b!1261872 (= e!718284 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261873 () Bool)

(declare-fun res!840860 () Bool)

(declare-fun e!718295 () Bool)

(assert (=> b!1261873 (=> (not res!840860) (not e!718295))))

(declare-fun e!718285 () Bool)

(assert (=> b!1261873 (= res!840860 e!718285)))

(declare-fun res!840862 () Bool)

(assert (=> b!1261873 (=> res!840862 e!718285)))

(assert (=> b!1261873 (= res!840862 (not e!718284))))

(declare-fun res!840858 () Bool)

(assert (=> b!1261873 (=> (not res!840858) (not e!718284))))

(assert (=> b!1261873 (= res!840858 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261874 () Bool)

(declare-fun e!718296 () ListLongMap!19055)

(declare-fun call!62009 () ListLongMap!19055)

(assert (=> b!1261874 (= e!718296 call!62009)))

(declare-fun b!1261875 () Bool)

(declare-fun e!718290 () Bool)

(assert (=> b!1261875 (= e!718295 e!718290)))

(declare-fun c!122670 () Bool)

(assert (=> b!1261875 (= c!122670 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261876 () Bool)

(declare-fun e!718294 () Bool)

(declare-fun lt!571889 () ListLongMap!19055)

(declare-fun apply!1031 (ListLongMap!19055 (_ BitVec 64)) V!48521)

(assert (=> b!1261876 (= e!718294 (= (apply!1031 lt!571889 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1261877 () Bool)

(declare-fun e!718293 () ListLongMap!19055)

(declare-fun call!62010 () ListLongMap!19055)

(declare-fun +!4214 (ListLongMap!19055 tuple2!21170) ListLongMap!19055)

(assert (=> b!1261877 (= e!718293 (+!4214 call!62010 (tuple2!21171 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun bm!62005 () Bool)

(declare-fun call!62012 () ListLongMap!19055)

(declare-fun call!62008 () ListLongMap!19055)

(assert (=> bm!62005 (= call!62012 call!62008)))

(declare-fun b!1261878 () Bool)

(declare-fun call!62014 () Bool)

(assert (=> b!1261878 (= e!718290 (not call!62014))))

(declare-fun bm!62006 () Bool)

(assert (=> bm!62006 (= call!62014 (contains!7608 lt!571889 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!138403 () Bool)

(assert (=> d!138403 e!718295))

(declare-fun res!840856 () Bool)

(assert (=> d!138403 (=> (not res!840856) (not e!718295))))

(assert (=> d!138403 (= res!840856 (or (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))))

(declare-fun lt!571873 () ListLongMap!19055)

(assert (=> d!138403 (= lt!571889 lt!571873)))

(declare-fun lt!571890 () Unit!42015)

(declare-fun e!718288 () Unit!42015)

(assert (=> d!138403 (= lt!571890 e!718288)))

(declare-fun c!122669 () Bool)

(assert (=> d!138403 (= c!122669 e!718287)))

(declare-fun res!840857 () Bool)

(assert (=> d!138403 (=> (not res!840857) (not e!718287))))

(assert (=> d!138403 (= res!840857 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138403 (= lt!571873 e!718293)))

(declare-fun c!122673 () Bool)

(assert (=> d!138403 (= c!122673 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138403 (validMask!0 mask!1466)))

(assert (=> d!138403 (= (getCurrentListMap!4649 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571889)))

(declare-fun bm!62007 () Bool)

(declare-fun call!62011 () Bool)

(assert (=> bm!62007 (= call!62011 (contains!7608 lt!571889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62008 () Bool)

(declare-fun call!62013 () ListLongMap!19055)

(assert (=> bm!62008 (= call!62008 call!62013)))

(declare-fun bm!62009 () Bool)

(declare-fun c!122672 () Bool)

(assert (=> bm!62009 (= call!62010 (+!4214 (ite c!122673 call!62013 (ite c!122672 call!62008 call!62012)) (ite (or c!122673 c!122672) (tuple2!21171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21171 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun b!1261879 () Bool)

(declare-fun e!718292 () Bool)

(assert (=> b!1261879 (= e!718292 (not call!62011))))

(declare-fun bm!62010 () Bool)

(assert (=> bm!62010 (= call!62013 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun e!718291 () Bool)

(declare-fun b!1261880 () Bool)

(declare-fun get!20309 (ValueCell!15420 V!48521) V!48521)

(declare-fun dynLambda!3476 (Int (_ BitVec 64)) V!48521)

(assert (=> b!1261880 (= e!718291 (= (apply!1031 lt!571889 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1261880 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40251 _values!914)))))

(assert (=> b!1261880 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261881 () Bool)

(declare-fun c!122671 () Bool)

(assert (=> b!1261881 (= c!122671 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!718289 () ListLongMap!19055)

(assert (=> b!1261881 (= e!718289 e!718296)))

(declare-fun b!1261882 () Bool)

(assert (=> b!1261882 (= e!718289 call!62009)))

(declare-fun b!1261883 () Bool)

(declare-fun e!718286 () Bool)

(assert (=> b!1261883 (= e!718286 (= (apply!1031 lt!571889 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1261884 () Bool)

(assert (=> b!1261884 (= e!718296 call!62012)))

(declare-fun b!1261885 () Bool)

(assert (=> b!1261885 (= e!718292 e!718294)))

(declare-fun res!840864 () Bool)

(assert (=> b!1261885 (= res!840864 call!62011)))

(assert (=> b!1261885 (=> (not res!840864) (not e!718294))))

(declare-fun b!1261886 () Bool)

(declare-fun res!840863 () Bool)

(assert (=> b!1261886 (=> (not res!840863) (not e!718295))))

(assert (=> b!1261886 (= res!840863 e!718292)))

(declare-fun c!122674 () Bool)

(assert (=> b!1261886 (= c!122674 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62011 () Bool)

(assert (=> bm!62011 (= call!62009 call!62010)))

(declare-fun b!1261887 () Bool)

(declare-fun Unit!42019 () Unit!42015)

(assert (=> b!1261887 (= e!718288 Unit!42019)))

(declare-fun b!1261888 () Bool)

(assert (=> b!1261888 (= e!718290 e!718286)))

(declare-fun res!840861 () Bool)

(assert (=> b!1261888 (= res!840861 call!62014)))

(assert (=> b!1261888 (=> (not res!840861) (not e!718286))))

(declare-fun b!1261889 () Bool)

(assert (=> b!1261889 (= e!718285 e!718291)))

(declare-fun res!840859 () Bool)

(assert (=> b!1261889 (=> (not res!840859) (not e!718291))))

(assert (=> b!1261889 (= res!840859 (contains!7608 lt!571889 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261890 () Bool)

(assert (=> b!1261890 (= e!718293 e!718289)))

(assert (=> b!1261890 (= c!122672 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261891 () Bool)

(declare-fun lt!571879 () Unit!42015)

(assert (=> b!1261891 (= e!718288 lt!571879)))

(declare-fun lt!571885 () ListLongMap!19055)

(assert (=> b!1261891 (= lt!571885 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571871 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571871 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571872 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571872 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571886 () Unit!42015)

(declare-fun addStillContains!1102 (ListLongMap!19055 (_ BitVec 64) V!48521 (_ BitVec 64)) Unit!42015)

(assert (=> b!1261891 (= lt!571886 (addStillContains!1102 lt!571885 lt!571871 zeroValue!871 lt!571872))))

(assert (=> b!1261891 (contains!7608 (+!4214 lt!571885 (tuple2!21171 lt!571871 zeroValue!871)) lt!571872)))

(declare-fun lt!571881 () Unit!42015)

(assert (=> b!1261891 (= lt!571881 lt!571886)))

(declare-fun lt!571878 () ListLongMap!19055)

(assert (=> b!1261891 (= lt!571878 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571876 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571876 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571870 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571870 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571891 () Unit!42015)

(declare-fun addApplyDifferent!536 (ListLongMap!19055 (_ BitVec 64) V!48521 (_ BitVec 64)) Unit!42015)

(assert (=> b!1261891 (= lt!571891 (addApplyDifferent!536 lt!571878 lt!571876 minValueAfter!43 lt!571870))))

(assert (=> b!1261891 (= (apply!1031 (+!4214 lt!571878 (tuple2!21171 lt!571876 minValueAfter!43)) lt!571870) (apply!1031 lt!571878 lt!571870))))

(declare-fun lt!571888 () Unit!42015)

(assert (=> b!1261891 (= lt!571888 lt!571891)))

(declare-fun lt!571884 () ListLongMap!19055)

(assert (=> b!1261891 (= lt!571884 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571882 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571882 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571887 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571887 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571883 () Unit!42015)

(assert (=> b!1261891 (= lt!571883 (addApplyDifferent!536 lt!571884 lt!571882 zeroValue!871 lt!571887))))

(assert (=> b!1261891 (= (apply!1031 (+!4214 lt!571884 (tuple2!21171 lt!571882 zeroValue!871)) lt!571887) (apply!1031 lt!571884 lt!571887))))

(declare-fun lt!571874 () Unit!42015)

(assert (=> b!1261891 (= lt!571874 lt!571883)))

(declare-fun lt!571875 () ListLongMap!19055)

(assert (=> b!1261891 (= lt!571875 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571877 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571877 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571880 () (_ BitVec 64))

(assert (=> b!1261891 (= lt!571880 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1261891 (= lt!571879 (addApplyDifferent!536 lt!571875 lt!571877 minValueAfter!43 lt!571880))))

(assert (=> b!1261891 (= (apply!1031 (+!4214 lt!571875 (tuple2!21171 lt!571877 minValueAfter!43)) lt!571880) (apply!1031 lt!571875 lt!571880))))

(assert (= (and d!138403 c!122673) b!1261877))

(assert (= (and d!138403 (not c!122673)) b!1261890))

(assert (= (and b!1261890 c!122672) b!1261882))

(assert (= (and b!1261890 (not c!122672)) b!1261881))

(assert (= (and b!1261881 c!122671) b!1261874))

(assert (= (and b!1261881 (not c!122671)) b!1261884))

(assert (= (or b!1261874 b!1261884) bm!62005))

(assert (= (or b!1261882 bm!62005) bm!62008))

(assert (= (or b!1261882 b!1261874) bm!62011))

(assert (= (or b!1261877 bm!62008) bm!62010))

(assert (= (or b!1261877 bm!62011) bm!62009))

(assert (= (and d!138403 res!840857) b!1261871))

(assert (= (and d!138403 c!122669) b!1261891))

(assert (= (and d!138403 (not c!122669)) b!1261887))

(assert (= (and d!138403 res!840856) b!1261873))

(assert (= (and b!1261873 res!840858) b!1261872))

(assert (= (and b!1261873 (not res!840862)) b!1261889))

(assert (= (and b!1261889 res!840859) b!1261880))

(assert (= (and b!1261873 res!840860) b!1261886))

(assert (= (and b!1261886 c!122674) b!1261885))

(assert (= (and b!1261886 (not c!122674)) b!1261879))

(assert (= (and b!1261885 res!840864) b!1261876))

(assert (= (or b!1261885 b!1261879) bm!62007))

(assert (= (and b!1261886 res!840863) b!1261875))

(assert (= (and b!1261875 c!122670) b!1261888))

(assert (= (and b!1261875 (not c!122670)) b!1261878))

(assert (= (and b!1261888 res!840861) b!1261883))

(assert (= (or b!1261888 b!1261878) bm!62006))

(declare-fun b_lambda!22837 () Bool)

(assert (=> (not b_lambda!22837) (not b!1261880)))

(declare-fun t!41907 () Bool)

(declare-fun tb!11327 () Bool)

(assert (=> (and start!105990 (= defaultEntry!922 defaultEntry!922) t!41907) tb!11327))

(declare-fun result!23373 () Bool)

(assert (=> tb!11327 (= result!23373 tp_is_empty!32367)))

(assert (=> b!1261880 t!41907))

(declare-fun b_and!45405 () Bool)

(assert (= b_and!45401 (and (=> t!41907 result!23373) b_and!45405)))

(declare-fun m!1162425 () Bool)

(assert (=> b!1261891 m!1162425))

(declare-fun m!1162427 () Bool)

(assert (=> b!1261891 m!1162427))

(declare-fun m!1162429 () Bool)

(assert (=> b!1261891 m!1162429))

(declare-fun m!1162431 () Bool)

(assert (=> b!1261891 m!1162431))

(declare-fun m!1162433 () Bool)

(assert (=> b!1261891 m!1162433))

(declare-fun m!1162435 () Bool)

(assert (=> b!1261891 m!1162435))

(declare-fun m!1162437 () Bool)

(assert (=> b!1261891 m!1162437))

(assert (=> b!1261891 m!1162425))

(declare-fun m!1162439 () Bool)

(assert (=> b!1261891 m!1162439))

(declare-fun m!1162441 () Bool)

(assert (=> b!1261891 m!1162441))

(declare-fun m!1162443 () Bool)

(assert (=> b!1261891 m!1162443))

(assert (=> b!1261891 m!1162431))

(declare-fun m!1162445 () Bool)

(assert (=> b!1261891 m!1162445))

(declare-fun m!1162447 () Bool)

(assert (=> b!1261891 m!1162447))

(declare-fun m!1162449 () Bool)

(assert (=> b!1261891 m!1162449))

(declare-fun m!1162451 () Bool)

(assert (=> b!1261891 m!1162451))

(assert (=> b!1261891 m!1162445))

(assert (=> b!1261891 m!1162439))

(declare-fun m!1162453 () Bool)

(assert (=> b!1261891 m!1162453))

(declare-fun m!1162455 () Bool)

(assert (=> b!1261891 m!1162455))

(assert (=> b!1261891 m!1162371))

(declare-fun m!1162457 () Bool)

(assert (=> bm!62006 m!1162457))

(assert (=> b!1261880 m!1162437))

(declare-fun m!1162459 () Bool)

(assert (=> b!1261880 m!1162459))

(declare-fun m!1162461 () Bool)

(assert (=> b!1261880 m!1162461))

(declare-fun m!1162463 () Bool)

(assert (=> b!1261880 m!1162463))

(declare-fun m!1162465 () Bool)

(assert (=> b!1261880 m!1162465))

(assert (=> b!1261880 m!1162463))

(assert (=> b!1261880 m!1162461))

(assert (=> b!1261880 m!1162437))

(declare-fun m!1162467 () Bool)

(assert (=> bm!62007 m!1162467))

(assert (=> b!1261889 m!1162437))

(assert (=> b!1261889 m!1162437))

(declare-fun m!1162469 () Bool)

(assert (=> b!1261889 m!1162469))

(assert (=> d!138403 m!1162389))

(assert (=> b!1261871 m!1162437))

(assert (=> b!1261871 m!1162437))

(declare-fun m!1162471 () Bool)

(assert (=> b!1261871 m!1162471))

(declare-fun m!1162473 () Bool)

(assert (=> b!1261876 m!1162473))

(assert (=> b!1261872 m!1162437))

(assert (=> b!1261872 m!1162437))

(assert (=> b!1261872 m!1162471))

(declare-fun m!1162475 () Bool)

(assert (=> b!1261883 m!1162475))

(declare-fun m!1162477 () Bool)

(assert (=> bm!62009 m!1162477))

(assert (=> bm!62010 m!1162371))

(declare-fun m!1162479 () Bool)

(assert (=> b!1261877 m!1162479))

(assert (=> b!1261800 d!138403))

(declare-fun d!138405 () Bool)

(declare-fun lt!571894 () ListLongMap!19055)

(assert (=> d!138405 (not (contains!7608 lt!571894 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!145 (List!28393 (_ BitVec 64)) List!28393)

(assert (=> d!138405 (= lt!571894 (ListLongMap!19056 (removeStrictlySorted!145 (toList!9543 lt!571807) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138405 (= (-!2142 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571894)))

(declare-fun bs!35709 () Bool)

(assert (= bs!35709 d!138405))

(declare-fun m!1162481 () Bool)

(assert (=> bs!35709 m!1162481))

(declare-fun m!1162483 () Bool)

(assert (=> bs!35709 m!1162483))

(assert (=> b!1261800 d!138405))

(declare-fun d!138407 () Bool)

(assert (=> d!138407 (= (-!2142 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571807)))

(declare-fun lt!571897 () Unit!42015)

(declare-fun choose!1878 (ListLongMap!19055 (_ BitVec 64)) Unit!42015)

(assert (=> d!138407 (= lt!571897 (choose!1878 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138407 (not (contains!7608 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138407 (= (removeNotPresentStillSame!142 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571897)))

(declare-fun bs!35710 () Bool)

(assert (= bs!35710 d!138407))

(assert (=> bs!35710 m!1162383))

(declare-fun m!1162485 () Bool)

(assert (=> bs!35710 m!1162485))

(assert (=> bs!35710 m!1162377))

(assert (=> b!1261800 d!138407))

(declare-fun b!1261902 () Bool)

(declare-fun e!718304 () Bool)

(declare-fun call!62017 () Bool)

(assert (=> b!1261902 (= e!718304 call!62017)))

(declare-fun d!138409 () Bool)

(declare-fun res!840869 () Bool)

(declare-fun e!718303 () Bool)

(assert (=> d!138409 (=> res!840869 e!718303)))

(assert (=> d!138409 (= res!840869 (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138409 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!718303)))

(declare-fun b!1261903 () Bool)

(declare-fun e!718305 () Bool)

(assert (=> b!1261903 (= e!718305 call!62017)))

(declare-fun b!1261904 () Bool)

(assert (=> b!1261904 (= e!718303 e!718305)))

(declare-fun c!122677 () Bool)

(assert (=> b!1261904 (= c!122677 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261905 () Bool)

(assert (=> b!1261905 (= e!718305 e!718304)))

(declare-fun lt!571906 () (_ BitVec 64))

(assert (=> b!1261905 (= lt!571906 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571904 () Unit!42015)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82337 (_ BitVec 64) (_ BitVec 32)) Unit!42015)

(assert (=> b!1261905 (= lt!571904 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!571906 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1261905 (arrayContainsKey!0 _keys!1118 lt!571906 #b00000000000000000000000000000000)))

(declare-fun lt!571905 () Unit!42015)

(assert (=> b!1261905 (= lt!571905 lt!571904)))

(declare-fun res!840870 () Bool)

(declare-datatypes ((SeekEntryResult!9971 0))(
  ( (MissingZero!9971 (index!42254 (_ BitVec 32))) (Found!9971 (index!42255 (_ BitVec 32))) (Intermediate!9971 (undefined!10783 Bool) (index!42256 (_ BitVec 32)) (x!111201 (_ BitVec 32))) (Undefined!9971) (MissingVacant!9971 (index!42257 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82337 (_ BitVec 32)) SeekEntryResult!9971)

(assert (=> b!1261905 (= res!840870 (= (seekEntryOrOpen!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9971 #b00000000000000000000000000000000)))))

(assert (=> b!1261905 (=> (not res!840870) (not e!718304))))

(declare-fun bm!62014 () Bool)

(assert (=> bm!62014 (= call!62017 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!138409 (not res!840869)) b!1261904))

(assert (= (and b!1261904 c!122677) b!1261905))

(assert (= (and b!1261904 (not c!122677)) b!1261903))

(assert (= (and b!1261905 res!840870) b!1261902))

(assert (= (or b!1261902 b!1261903) bm!62014))

(assert (=> b!1261904 m!1162437))

(assert (=> b!1261904 m!1162437))

(assert (=> b!1261904 m!1162471))

(assert (=> b!1261905 m!1162437))

(declare-fun m!1162487 () Bool)

(assert (=> b!1261905 m!1162487))

(declare-fun m!1162489 () Bool)

(assert (=> b!1261905 m!1162489))

(assert (=> b!1261905 m!1162437))

(declare-fun m!1162491 () Bool)

(assert (=> b!1261905 m!1162491))

(declare-fun m!1162493 () Bool)

(assert (=> bm!62014 m!1162493))

(assert (=> b!1261796 d!138409))

(declare-fun d!138411 () Bool)

(declare-fun e!718311 () Bool)

(assert (=> d!138411 e!718311))

(declare-fun res!840873 () Bool)

(assert (=> d!138411 (=> res!840873 e!718311)))

(declare-fun lt!571916 () Bool)

(assert (=> d!138411 (= res!840873 (not lt!571916))))

(declare-fun lt!571918 () Bool)

(assert (=> d!138411 (= lt!571916 lt!571918)))

(declare-fun lt!571915 () Unit!42015)

(declare-fun e!718310 () Unit!42015)

(assert (=> d!138411 (= lt!571915 e!718310)))

(declare-fun c!122680 () Bool)

(assert (=> d!138411 (= c!122680 lt!571918)))

(declare-fun containsKey!622 (List!28393 (_ BitVec 64)) Bool)

(assert (=> d!138411 (= lt!571918 (containsKey!622 (toList!9543 lt!571807) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138411 (= (contains!7608 lt!571807 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571916)))

(declare-fun b!1261912 () Bool)

(declare-fun lt!571917 () Unit!42015)

(assert (=> b!1261912 (= e!718310 lt!571917)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!432 (List!28393 (_ BitVec 64)) Unit!42015)

(assert (=> b!1261912 (= lt!571917 (lemmaContainsKeyImpliesGetValueByKeyDefined!432 (toList!9543 lt!571807) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!715 0))(
  ( (Some!714 (v!18953 V!48521)) (None!713) )
))
(declare-fun isDefined!472 (Option!715) Bool)

(declare-fun getValueByKey!664 (List!28393 (_ BitVec 64)) Option!715)

(assert (=> b!1261912 (isDefined!472 (getValueByKey!664 (toList!9543 lt!571807) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1261913 () Bool)

(declare-fun Unit!42020 () Unit!42015)

(assert (=> b!1261913 (= e!718310 Unit!42020)))

(declare-fun b!1261914 () Bool)

(assert (=> b!1261914 (= e!718311 (isDefined!472 (getValueByKey!664 (toList!9543 lt!571807) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138411 c!122680) b!1261912))

(assert (= (and d!138411 (not c!122680)) b!1261913))

(assert (= (and d!138411 (not res!840873)) b!1261914))

(declare-fun m!1162495 () Bool)

(assert (=> d!138411 m!1162495))

(declare-fun m!1162497 () Bool)

(assert (=> b!1261912 m!1162497))

(declare-fun m!1162499 () Bool)

(assert (=> b!1261912 m!1162499))

(assert (=> b!1261912 m!1162499))

(declare-fun m!1162501 () Bool)

(assert (=> b!1261912 m!1162501))

(assert (=> b!1261914 m!1162499))

(assert (=> b!1261914 m!1162499))

(assert (=> b!1261914 m!1162501))

(assert (=> b!1261797 d!138411))

(declare-fun b!1261915 () Bool)

(declare-fun e!718315 () Bool)

(assert (=> b!1261915 (= e!718315 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261916 () Bool)

(declare-fun e!718312 () Bool)

(assert (=> b!1261916 (= e!718312 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261917 () Bool)

(declare-fun res!840878 () Bool)

(declare-fun e!718323 () Bool)

(assert (=> b!1261917 (=> (not res!840878) (not e!718323))))

(declare-fun e!718313 () Bool)

(assert (=> b!1261917 (= res!840878 e!718313)))

(declare-fun res!840880 () Bool)

(assert (=> b!1261917 (=> res!840880 e!718313)))

(assert (=> b!1261917 (= res!840880 (not e!718312))))

(declare-fun res!840876 () Bool)

(assert (=> b!1261917 (=> (not res!840876) (not e!718312))))

(assert (=> b!1261917 (= res!840876 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261918 () Bool)

(declare-fun e!718324 () ListLongMap!19055)

(declare-fun call!62019 () ListLongMap!19055)

(assert (=> b!1261918 (= e!718324 call!62019)))

(declare-fun b!1261919 () Bool)

(declare-fun e!718318 () Bool)

(assert (=> b!1261919 (= e!718323 e!718318)))

(declare-fun c!122682 () Bool)

(assert (=> b!1261919 (= c!122682 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261920 () Bool)

(declare-fun e!718322 () Bool)

(declare-fun lt!571938 () ListLongMap!19055)

(assert (=> b!1261920 (= e!718322 (= (apply!1031 lt!571938 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1261921 () Bool)

(declare-fun e!718321 () ListLongMap!19055)

(declare-fun call!62020 () ListLongMap!19055)

(assert (=> b!1261921 (= e!718321 (+!4214 call!62020 (tuple2!21171 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!62015 () Bool)

(declare-fun call!62022 () ListLongMap!19055)

(declare-fun call!62018 () ListLongMap!19055)

(assert (=> bm!62015 (= call!62022 call!62018)))

(declare-fun b!1261922 () Bool)

(declare-fun call!62024 () Bool)

(assert (=> b!1261922 (= e!718318 (not call!62024))))

(declare-fun bm!62016 () Bool)

(assert (=> bm!62016 (= call!62024 (contains!7608 lt!571938 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!138413 () Bool)

(assert (=> d!138413 e!718323))

(declare-fun res!840874 () Bool)

(assert (=> d!138413 (=> (not res!840874) (not e!718323))))

(assert (=> d!138413 (= res!840874 (or (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))))

(declare-fun lt!571922 () ListLongMap!19055)

(assert (=> d!138413 (= lt!571938 lt!571922)))

(declare-fun lt!571939 () Unit!42015)

(declare-fun e!718316 () Unit!42015)

(assert (=> d!138413 (= lt!571939 e!718316)))

(declare-fun c!122681 () Bool)

(assert (=> d!138413 (= c!122681 e!718315)))

(declare-fun res!840875 () Bool)

(assert (=> d!138413 (=> (not res!840875) (not e!718315))))

(assert (=> d!138413 (= res!840875 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138413 (= lt!571922 e!718321)))

(declare-fun c!122685 () Bool)

(assert (=> d!138413 (= c!122685 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138413 (validMask!0 mask!1466)))

(assert (=> d!138413 (= (getCurrentListMap!4649 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571938)))

(declare-fun bm!62017 () Bool)

(declare-fun call!62021 () Bool)

(assert (=> bm!62017 (= call!62021 (contains!7608 lt!571938 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62018 () Bool)

(declare-fun call!62023 () ListLongMap!19055)

(assert (=> bm!62018 (= call!62018 call!62023)))

(declare-fun c!122684 () Bool)

(declare-fun bm!62019 () Bool)

(assert (=> bm!62019 (= call!62020 (+!4214 (ite c!122685 call!62023 (ite c!122684 call!62018 call!62022)) (ite (or c!122685 c!122684) (tuple2!21171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21171 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1261923 () Bool)

(declare-fun e!718320 () Bool)

(assert (=> b!1261923 (= e!718320 (not call!62021))))

(declare-fun bm!62020 () Bool)

(assert (=> bm!62020 (= call!62023 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun e!718319 () Bool)

(declare-fun b!1261924 () Bool)

(assert (=> b!1261924 (= e!718319 (= (apply!1031 lt!571938 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1261924 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40251 _values!914)))))

(assert (=> b!1261924 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261925 () Bool)

(declare-fun c!122683 () Bool)

(assert (=> b!1261925 (= c!122683 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!718317 () ListLongMap!19055)

(assert (=> b!1261925 (= e!718317 e!718324)))

(declare-fun b!1261926 () Bool)

(assert (=> b!1261926 (= e!718317 call!62019)))

(declare-fun b!1261927 () Bool)

(declare-fun e!718314 () Bool)

(assert (=> b!1261927 (= e!718314 (= (apply!1031 lt!571938 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1261928 () Bool)

(assert (=> b!1261928 (= e!718324 call!62022)))

(declare-fun b!1261929 () Bool)

(assert (=> b!1261929 (= e!718320 e!718322)))

(declare-fun res!840882 () Bool)

(assert (=> b!1261929 (= res!840882 call!62021)))

(assert (=> b!1261929 (=> (not res!840882) (not e!718322))))

(declare-fun b!1261930 () Bool)

(declare-fun res!840881 () Bool)

(assert (=> b!1261930 (=> (not res!840881) (not e!718323))))

(assert (=> b!1261930 (= res!840881 e!718320)))

(declare-fun c!122686 () Bool)

(assert (=> b!1261930 (= c!122686 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62021 () Bool)

(assert (=> bm!62021 (= call!62019 call!62020)))

(declare-fun b!1261931 () Bool)

(declare-fun Unit!42021 () Unit!42015)

(assert (=> b!1261931 (= e!718316 Unit!42021)))

(declare-fun b!1261932 () Bool)

(assert (=> b!1261932 (= e!718318 e!718314)))

(declare-fun res!840879 () Bool)

(assert (=> b!1261932 (= res!840879 call!62024)))

(assert (=> b!1261932 (=> (not res!840879) (not e!718314))))

(declare-fun b!1261933 () Bool)

(assert (=> b!1261933 (= e!718313 e!718319)))

(declare-fun res!840877 () Bool)

(assert (=> b!1261933 (=> (not res!840877) (not e!718319))))

(assert (=> b!1261933 (= res!840877 (contains!7608 lt!571938 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261933 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261934 () Bool)

(assert (=> b!1261934 (= e!718321 e!718317)))

(assert (=> b!1261934 (= c!122684 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261935 () Bool)

(declare-fun lt!571928 () Unit!42015)

(assert (=> b!1261935 (= e!718316 lt!571928)))

(declare-fun lt!571934 () ListLongMap!19055)

(assert (=> b!1261935 (= lt!571934 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571920 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571920 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571921 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571921 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571935 () Unit!42015)

(assert (=> b!1261935 (= lt!571935 (addStillContains!1102 lt!571934 lt!571920 zeroValue!871 lt!571921))))

(assert (=> b!1261935 (contains!7608 (+!4214 lt!571934 (tuple2!21171 lt!571920 zeroValue!871)) lt!571921)))

(declare-fun lt!571930 () Unit!42015)

(assert (=> b!1261935 (= lt!571930 lt!571935)))

(declare-fun lt!571927 () ListLongMap!19055)

(assert (=> b!1261935 (= lt!571927 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571925 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571925 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571919 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571919 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571940 () Unit!42015)

(assert (=> b!1261935 (= lt!571940 (addApplyDifferent!536 lt!571927 lt!571925 minValueBefore!43 lt!571919))))

(assert (=> b!1261935 (= (apply!1031 (+!4214 lt!571927 (tuple2!21171 lt!571925 minValueBefore!43)) lt!571919) (apply!1031 lt!571927 lt!571919))))

(declare-fun lt!571937 () Unit!42015)

(assert (=> b!1261935 (= lt!571937 lt!571940)))

(declare-fun lt!571933 () ListLongMap!19055)

(assert (=> b!1261935 (= lt!571933 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571931 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571931 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571936 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571936 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571932 () Unit!42015)

(assert (=> b!1261935 (= lt!571932 (addApplyDifferent!536 lt!571933 lt!571931 zeroValue!871 lt!571936))))

(assert (=> b!1261935 (= (apply!1031 (+!4214 lt!571933 (tuple2!21171 lt!571931 zeroValue!871)) lt!571936) (apply!1031 lt!571933 lt!571936))))

(declare-fun lt!571923 () Unit!42015)

(assert (=> b!1261935 (= lt!571923 lt!571932)))

(declare-fun lt!571924 () ListLongMap!19055)

(assert (=> b!1261935 (= lt!571924 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571926 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571926 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571929 () (_ BitVec 64))

(assert (=> b!1261935 (= lt!571929 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1261935 (= lt!571928 (addApplyDifferent!536 lt!571924 lt!571926 minValueBefore!43 lt!571929))))

(assert (=> b!1261935 (= (apply!1031 (+!4214 lt!571924 (tuple2!21171 lt!571926 minValueBefore!43)) lt!571929) (apply!1031 lt!571924 lt!571929))))

(assert (= (and d!138413 c!122685) b!1261921))

(assert (= (and d!138413 (not c!122685)) b!1261934))

(assert (= (and b!1261934 c!122684) b!1261926))

(assert (= (and b!1261934 (not c!122684)) b!1261925))

(assert (= (and b!1261925 c!122683) b!1261918))

(assert (= (and b!1261925 (not c!122683)) b!1261928))

(assert (= (or b!1261918 b!1261928) bm!62015))

(assert (= (or b!1261926 bm!62015) bm!62018))

(assert (= (or b!1261926 b!1261918) bm!62021))

(assert (= (or b!1261921 bm!62018) bm!62020))

(assert (= (or b!1261921 bm!62021) bm!62019))

(assert (= (and d!138413 res!840875) b!1261915))

(assert (= (and d!138413 c!122681) b!1261935))

(assert (= (and d!138413 (not c!122681)) b!1261931))

(assert (= (and d!138413 res!840874) b!1261917))

(assert (= (and b!1261917 res!840876) b!1261916))

(assert (= (and b!1261917 (not res!840880)) b!1261933))

(assert (= (and b!1261933 res!840877) b!1261924))

(assert (= (and b!1261917 res!840878) b!1261930))

(assert (= (and b!1261930 c!122686) b!1261929))

(assert (= (and b!1261930 (not c!122686)) b!1261923))

(assert (= (and b!1261929 res!840882) b!1261920))

(assert (= (or b!1261929 b!1261923) bm!62017))

(assert (= (and b!1261930 res!840881) b!1261919))

(assert (= (and b!1261919 c!122682) b!1261932))

(assert (= (and b!1261919 (not c!122682)) b!1261922))

(assert (= (and b!1261932 res!840879) b!1261927))

(assert (= (or b!1261932 b!1261922) bm!62016))

(declare-fun b_lambda!22839 () Bool)

(assert (=> (not b_lambda!22839) (not b!1261924)))

(assert (=> b!1261924 t!41907))

(declare-fun b_and!45407 () Bool)

(assert (= b_and!45405 (and (=> t!41907 result!23373) b_and!45407)))

(declare-fun m!1162503 () Bool)

(assert (=> b!1261935 m!1162503))

(declare-fun m!1162505 () Bool)

(assert (=> b!1261935 m!1162505))

(declare-fun m!1162507 () Bool)

(assert (=> b!1261935 m!1162507))

(declare-fun m!1162509 () Bool)

(assert (=> b!1261935 m!1162509))

(declare-fun m!1162511 () Bool)

(assert (=> b!1261935 m!1162511))

(declare-fun m!1162513 () Bool)

(assert (=> b!1261935 m!1162513))

(assert (=> b!1261935 m!1162437))

(assert (=> b!1261935 m!1162503))

(declare-fun m!1162515 () Bool)

(assert (=> b!1261935 m!1162515))

(declare-fun m!1162517 () Bool)

(assert (=> b!1261935 m!1162517))

(declare-fun m!1162519 () Bool)

(assert (=> b!1261935 m!1162519))

(assert (=> b!1261935 m!1162509))

(declare-fun m!1162521 () Bool)

(assert (=> b!1261935 m!1162521))

(declare-fun m!1162523 () Bool)

(assert (=> b!1261935 m!1162523))

(declare-fun m!1162525 () Bool)

(assert (=> b!1261935 m!1162525))

(declare-fun m!1162527 () Bool)

(assert (=> b!1261935 m!1162527))

(assert (=> b!1261935 m!1162521))

(assert (=> b!1261935 m!1162515))

(declare-fun m!1162529 () Bool)

(assert (=> b!1261935 m!1162529))

(declare-fun m!1162531 () Bool)

(assert (=> b!1261935 m!1162531))

(assert (=> b!1261935 m!1162373))

(declare-fun m!1162533 () Bool)

(assert (=> bm!62016 m!1162533))

(assert (=> b!1261924 m!1162437))

(declare-fun m!1162535 () Bool)

(assert (=> b!1261924 m!1162535))

(assert (=> b!1261924 m!1162461))

(assert (=> b!1261924 m!1162463))

(assert (=> b!1261924 m!1162465))

(assert (=> b!1261924 m!1162463))

(assert (=> b!1261924 m!1162461))

(assert (=> b!1261924 m!1162437))

(declare-fun m!1162537 () Bool)

(assert (=> bm!62017 m!1162537))

(assert (=> b!1261933 m!1162437))

(assert (=> b!1261933 m!1162437))

(declare-fun m!1162539 () Bool)

(assert (=> b!1261933 m!1162539))

(assert (=> d!138413 m!1162389))

(assert (=> b!1261915 m!1162437))

(assert (=> b!1261915 m!1162437))

(assert (=> b!1261915 m!1162471))

(declare-fun m!1162541 () Bool)

(assert (=> b!1261920 m!1162541))

(assert (=> b!1261916 m!1162437))

(assert (=> b!1261916 m!1162437))

(assert (=> b!1261916 m!1162471))

(declare-fun m!1162543 () Bool)

(assert (=> b!1261927 m!1162543))

(declare-fun m!1162545 () Bool)

(assert (=> bm!62019 m!1162545))

(assert (=> bm!62020 m!1162373))

(declare-fun m!1162547 () Bool)

(assert (=> b!1261921 m!1162547))

(assert (=> b!1261797 d!138413))

(declare-fun d!138415 () Bool)

(assert (=> d!138415 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105990 d!138415))

(declare-fun d!138417 () Bool)

(assert (=> d!138417 (= (array_inv!30183 _keys!1118) (bvsge (size!40252 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105990 d!138417))

(declare-fun d!138419 () Bool)

(assert (=> d!138419 (= (array_inv!30184 _values!914) (bvsge (size!40251 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105990 d!138419))

(declare-fun b!1261946 () Bool)

(declare-fun e!718335 () Bool)

(declare-fun call!62027 () Bool)

(assert (=> b!1261946 (= e!718335 call!62027)))

(declare-fun bm!62024 () Bool)

(declare-fun c!122689 () Bool)

(assert (=> bm!62024 (= call!62027 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122689 (Cons!28388 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000) Nil!28389) Nil!28389)))))

(declare-fun b!1261947 () Bool)

(declare-fun e!718333 () Bool)

(assert (=> b!1261947 (= e!718333 e!718335)))

(assert (=> b!1261947 (= c!122689 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261948 () Bool)

(assert (=> b!1261948 (= e!718335 call!62027)))

(declare-fun d!138421 () Bool)

(declare-fun res!840890 () Bool)

(declare-fun e!718336 () Bool)

(assert (=> d!138421 (=> res!840890 e!718336)))

(assert (=> d!138421 (= res!840890 (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138421 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28389) e!718336)))

(declare-fun b!1261949 () Bool)

(assert (=> b!1261949 (= e!718336 e!718333)))

(declare-fun res!840889 () Bool)

(assert (=> b!1261949 (=> (not res!840889) (not e!718333))))

(declare-fun e!718334 () Bool)

(assert (=> b!1261949 (= res!840889 (not e!718334))))

(declare-fun res!840891 () Bool)

(assert (=> b!1261949 (=> (not res!840891) (not e!718334))))

(assert (=> b!1261949 (= res!840891 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261950 () Bool)

(declare-fun contains!7609 (List!28392 (_ BitVec 64)) Bool)

(assert (=> b!1261950 (= e!718334 (contains!7609 Nil!28389 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138421 (not res!840890)) b!1261949))

(assert (= (and b!1261949 res!840891) b!1261950))

(assert (= (and b!1261949 res!840889) b!1261947))

(assert (= (and b!1261947 c!122689) b!1261946))

(assert (= (and b!1261947 (not c!122689)) b!1261948))

(assert (= (or b!1261946 b!1261948) bm!62024))

(assert (=> bm!62024 m!1162437))

(declare-fun m!1162549 () Bool)

(assert (=> bm!62024 m!1162549))

(assert (=> b!1261947 m!1162437))

(assert (=> b!1261947 m!1162437))

(assert (=> b!1261947 m!1162471))

(assert (=> b!1261949 m!1162437))

(assert (=> b!1261949 m!1162437))

(assert (=> b!1261949 m!1162471))

(assert (=> b!1261950 m!1162437))

(assert (=> b!1261950 m!1162437))

(declare-fun m!1162551 () Bool)

(assert (=> b!1261950 m!1162551))

(assert (=> b!1261794 d!138421))

(declare-fun d!138423 () Bool)

(assert (=> d!138423 (= (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571943 () Unit!42015)

(declare-fun choose!1879 (array!82337 array!82335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48521 V!48521 V!48521 V!48521 (_ BitVec 32) Int) Unit!42015)

(assert (=> d!138423 (= lt!571943 (choose!1879 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138423 (validMask!0 mask!1466)))

(assert (=> d!138423 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1180 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571943)))

(declare-fun bs!35711 () Bool)

(assert (= bs!35711 d!138423))

(assert (=> bs!35711 m!1162373))

(assert (=> bs!35711 m!1162371))

(declare-fun m!1162553 () Bool)

(assert (=> bs!35711 m!1162553))

(assert (=> bs!35711 m!1162389))

(assert (=> b!1261799 d!138423))

(declare-fun e!718357 () Bool)

(declare-fun b!1261975 () Bool)

(declare-fun lt!571963 () ListLongMap!19055)

(assert (=> b!1261975 (= e!718357 (= lt!571963 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261976 () Bool)

(declare-fun isEmpty!1041 (ListLongMap!19055) Bool)

(assert (=> b!1261976 (= e!718357 (isEmpty!1041 lt!571963))))

(declare-fun b!1261977 () Bool)

(declare-fun lt!571962 () Unit!42015)

(declare-fun lt!571961 () Unit!42015)

(assert (=> b!1261977 (= lt!571962 lt!571961)))

(declare-fun lt!571959 () (_ BitVec 64))

(declare-fun lt!571960 () V!48521)

(declare-fun lt!571958 () (_ BitVec 64))

(declare-fun lt!571964 () ListLongMap!19055)

(assert (=> b!1261977 (not (contains!7608 (+!4214 lt!571964 (tuple2!21171 lt!571958 lt!571960)) lt!571959))))

(declare-fun addStillNotContains!326 (ListLongMap!19055 (_ BitVec 64) V!48521 (_ BitVec 64)) Unit!42015)

(assert (=> b!1261977 (= lt!571961 (addStillNotContains!326 lt!571964 lt!571958 lt!571960 lt!571959))))

(assert (=> b!1261977 (= lt!571959 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1261977 (= lt!571960 (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261977 (= lt!571958 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62030 () ListLongMap!19055)

(assert (=> b!1261977 (= lt!571964 call!62030)))

(declare-fun e!718354 () ListLongMap!19055)

(assert (=> b!1261977 (= e!718354 (+!4214 call!62030 (tuple2!21171 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1261978 () Bool)

(assert (=> b!1261978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> b!1261978 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40251 _values!914)))))

(declare-fun e!718356 () Bool)

(assert (=> b!1261978 (= e!718356 (= (apply!1031 lt!571963 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1261979 () Bool)

(declare-fun e!718355 () Bool)

(assert (=> b!1261979 (= e!718355 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261979 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1261980 () Bool)

(declare-fun res!840901 () Bool)

(declare-fun e!718352 () Bool)

(assert (=> b!1261980 (=> (not res!840901) (not e!718352))))

(assert (=> b!1261980 (= res!840901 (not (contains!7608 lt!571963 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261981 () Bool)

(declare-fun e!718351 () Bool)

(assert (=> b!1261981 (= e!718351 e!718356)))

(assert (=> b!1261981 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun res!840903 () Bool)

(assert (=> b!1261981 (= res!840903 (contains!7608 lt!571963 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261981 (=> (not res!840903) (not e!718356))))

(declare-fun b!1261982 () Bool)

(assert (=> b!1261982 (= e!718351 e!718357)))

(declare-fun c!122700 () Bool)

(assert (=> b!1261982 (= c!122700 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261983 () Bool)

(assert (=> b!1261983 (= e!718354 call!62030)))

(declare-fun d!138425 () Bool)

(assert (=> d!138425 e!718352))

(declare-fun res!840900 () Bool)

(assert (=> d!138425 (=> (not res!840900) (not e!718352))))

(assert (=> d!138425 (= res!840900 (not (contains!7608 lt!571963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!718353 () ListLongMap!19055)

(assert (=> d!138425 (= lt!571963 e!718353)))

(declare-fun c!122699 () Bool)

(assert (=> d!138425 (= c!122699 (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138425 (validMask!0 mask!1466)))

(assert (=> d!138425 (= (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571963)))

(declare-fun b!1261984 () Bool)

(assert (=> b!1261984 (= e!718352 e!718351)))

(declare-fun c!122698 () Bool)

(assert (=> b!1261984 (= c!122698 e!718355)))

(declare-fun res!840902 () Bool)

(assert (=> b!1261984 (=> (not res!840902) (not e!718355))))

(assert (=> b!1261984 (= res!840902 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261985 () Bool)

(assert (=> b!1261985 (= e!718353 (ListLongMap!19056 Nil!28390))))

(declare-fun bm!62027 () Bool)

(assert (=> bm!62027 (= call!62030 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261986 () Bool)

(assert (=> b!1261986 (= e!718353 e!718354)))

(declare-fun c!122701 () Bool)

(assert (=> b!1261986 (= c!122701 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138425 c!122699) b!1261985))

(assert (= (and d!138425 (not c!122699)) b!1261986))

(assert (= (and b!1261986 c!122701) b!1261977))

(assert (= (and b!1261986 (not c!122701)) b!1261983))

(assert (= (or b!1261977 b!1261983) bm!62027))

(assert (= (and d!138425 res!840900) b!1261980))

(assert (= (and b!1261980 res!840901) b!1261984))

(assert (= (and b!1261984 res!840902) b!1261979))

(assert (= (and b!1261984 c!122698) b!1261981))

(assert (= (and b!1261984 (not c!122698)) b!1261982))

(assert (= (and b!1261981 res!840903) b!1261978))

(assert (= (and b!1261982 c!122700) b!1261975))

(assert (= (and b!1261982 (not c!122700)) b!1261976))

(declare-fun b_lambda!22841 () Bool)

(assert (=> (not b_lambda!22841) (not b!1261977)))

(assert (=> b!1261977 t!41907))

(declare-fun b_and!45409 () Bool)

(assert (= b_and!45407 (and (=> t!41907 result!23373) b_and!45409)))

(declare-fun b_lambda!22843 () Bool)

(assert (=> (not b_lambda!22843) (not b!1261978)))

(assert (=> b!1261978 t!41907))

(declare-fun b_and!45411 () Bool)

(assert (= b_and!45409 (and (=> t!41907 result!23373) b_and!45411)))

(declare-fun m!1162555 () Bool)

(assert (=> b!1261980 m!1162555))

(declare-fun m!1162557 () Bool)

(assert (=> b!1261975 m!1162557))

(assert (=> b!1261986 m!1162437))

(assert (=> b!1261986 m!1162437))

(assert (=> b!1261986 m!1162471))

(declare-fun m!1162559 () Bool)

(assert (=> d!138425 m!1162559))

(assert (=> d!138425 m!1162389))

(assert (=> b!1261977 m!1162463))

(assert (=> b!1261977 m!1162461))

(assert (=> b!1261977 m!1162463))

(assert (=> b!1261977 m!1162465))

(declare-fun m!1162561 () Bool)

(assert (=> b!1261977 m!1162561))

(assert (=> b!1261977 m!1162561))

(declare-fun m!1162563 () Bool)

(assert (=> b!1261977 m!1162563))

(declare-fun m!1162565 () Bool)

(assert (=> b!1261977 m!1162565))

(assert (=> b!1261977 m!1162437))

(assert (=> b!1261977 m!1162461))

(declare-fun m!1162567 () Bool)

(assert (=> b!1261977 m!1162567))

(assert (=> bm!62027 m!1162557))

(assert (=> b!1261978 m!1162463))

(assert (=> b!1261978 m!1162461))

(assert (=> b!1261978 m!1162437))

(declare-fun m!1162569 () Bool)

(assert (=> b!1261978 m!1162569))

(assert (=> b!1261978 m!1162461))

(assert (=> b!1261978 m!1162463))

(assert (=> b!1261978 m!1162465))

(assert (=> b!1261978 m!1162437))

(assert (=> b!1261981 m!1162437))

(assert (=> b!1261981 m!1162437))

(declare-fun m!1162571 () Bool)

(assert (=> b!1261981 m!1162571))

(assert (=> b!1261979 m!1162437))

(assert (=> b!1261979 m!1162437))

(assert (=> b!1261979 m!1162471))

(declare-fun m!1162573 () Bool)

(assert (=> b!1261976 m!1162573))

(assert (=> b!1261799 d!138425))

(declare-fun b!1261987 () Bool)

(declare-fun e!718364 () Bool)

(declare-fun lt!571970 () ListLongMap!19055)

(assert (=> b!1261987 (= e!718364 (= lt!571970 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261988 () Bool)

(assert (=> b!1261988 (= e!718364 (isEmpty!1041 lt!571970))))

(declare-fun b!1261989 () Bool)

(declare-fun lt!571969 () Unit!42015)

(declare-fun lt!571968 () Unit!42015)

(assert (=> b!1261989 (= lt!571969 lt!571968)))

(declare-fun lt!571967 () V!48521)

(declare-fun lt!571966 () (_ BitVec 64))

(declare-fun lt!571965 () (_ BitVec 64))

(declare-fun lt!571971 () ListLongMap!19055)

(assert (=> b!1261989 (not (contains!7608 (+!4214 lt!571971 (tuple2!21171 lt!571965 lt!571967)) lt!571966))))

(assert (=> b!1261989 (= lt!571968 (addStillNotContains!326 lt!571971 lt!571965 lt!571967 lt!571966))))

(assert (=> b!1261989 (= lt!571966 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1261989 (= lt!571967 (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261989 (= lt!571965 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!62031 () ListLongMap!19055)

(assert (=> b!1261989 (= lt!571971 call!62031)))

(declare-fun e!718361 () ListLongMap!19055)

(assert (=> b!1261989 (= e!718361 (+!4214 call!62031 (tuple2!21171 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1261990 () Bool)

(assert (=> b!1261990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> b!1261990 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40251 _values!914)))))

(declare-fun e!718363 () Bool)

(assert (=> b!1261990 (= e!718363 (= (apply!1031 lt!571970 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)) (get!20309 (select (arr!39714 _values!914) #b00000000000000000000000000000000) (dynLambda!3476 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1261991 () Bool)

(declare-fun e!718362 () Bool)

(assert (=> b!1261991 (= e!718362 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261991 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1261992 () Bool)

(declare-fun res!840905 () Bool)

(declare-fun e!718359 () Bool)

(assert (=> b!1261992 (=> (not res!840905) (not e!718359))))

(assert (=> b!1261992 (= res!840905 (not (contains!7608 lt!571970 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261993 () Bool)

(declare-fun e!718358 () Bool)

(assert (=> b!1261993 (= e!718358 e!718363)))

(assert (=> b!1261993 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun res!840907 () Bool)

(assert (=> b!1261993 (= res!840907 (contains!7608 lt!571970 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261993 (=> (not res!840907) (not e!718363))))

(declare-fun b!1261994 () Bool)

(assert (=> b!1261994 (= e!718358 e!718364)))

(declare-fun c!122704 () Bool)

(assert (=> b!1261994 (= c!122704 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261995 () Bool)

(assert (=> b!1261995 (= e!718361 call!62031)))

(declare-fun d!138427 () Bool)

(assert (=> d!138427 e!718359))

(declare-fun res!840904 () Bool)

(assert (=> d!138427 (=> (not res!840904) (not e!718359))))

(assert (=> d!138427 (= res!840904 (not (contains!7608 lt!571970 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!718360 () ListLongMap!19055)

(assert (=> d!138427 (= lt!571970 e!718360)))

(declare-fun c!122703 () Bool)

(assert (=> d!138427 (= c!122703 (bvsge #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(assert (=> d!138427 (validMask!0 mask!1466)))

(assert (=> d!138427 (= (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571970)))

(declare-fun b!1261996 () Bool)

(assert (=> b!1261996 (= e!718359 e!718358)))

(declare-fun c!122702 () Bool)

(assert (=> b!1261996 (= c!122702 e!718362)))

(declare-fun res!840906 () Bool)

(assert (=> b!1261996 (=> (not res!840906) (not e!718362))))

(assert (=> b!1261996 (= res!840906 (bvslt #b00000000000000000000000000000000 (size!40252 _keys!1118)))))

(declare-fun b!1261997 () Bool)

(assert (=> b!1261997 (= e!718360 (ListLongMap!19056 Nil!28390))))

(declare-fun bm!62028 () Bool)

(assert (=> bm!62028 (= call!62031 (getCurrentListMapNoExtraKeys!5884 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261998 () Bool)

(assert (=> b!1261998 (= e!718360 e!718361)))

(declare-fun c!122705 () Bool)

(assert (=> b!1261998 (= c!122705 (validKeyInArray!0 (select (arr!39715 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138427 c!122703) b!1261997))

(assert (= (and d!138427 (not c!122703)) b!1261998))

(assert (= (and b!1261998 c!122705) b!1261989))

(assert (= (and b!1261998 (not c!122705)) b!1261995))

(assert (= (or b!1261989 b!1261995) bm!62028))

(assert (= (and d!138427 res!840904) b!1261992))

(assert (= (and b!1261992 res!840905) b!1261996))

(assert (= (and b!1261996 res!840906) b!1261991))

(assert (= (and b!1261996 c!122702) b!1261993))

(assert (= (and b!1261996 (not c!122702)) b!1261994))

(assert (= (and b!1261993 res!840907) b!1261990))

(assert (= (and b!1261994 c!122704) b!1261987))

(assert (= (and b!1261994 (not c!122704)) b!1261988))

(declare-fun b_lambda!22845 () Bool)

(assert (=> (not b_lambda!22845) (not b!1261989)))

(assert (=> b!1261989 t!41907))

(declare-fun b_and!45413 () Bool)

(assert (= b_and!45411 (and (=> t!41907 result!23373) b_and!45413)))

(declare-fun b_lambda!22847 () Bool)

(assert (=> (not b_lambda!22847) (not b!1261990)))

(assert (=> b!1261990 t!41907))

(declare-fun b_and!45415 () Bool)

(assert (= b_and!45413 (and (=> t!41907 result!23373) b_and!45415)))

(declare-fun m!1162575 () Bool)

(assert (=> b!1261992 m!1162575))

(declare-fun m!1162577 () Bool)

(assert (=> b!1261987 m!1162577))

(assert (=> b!1261998 m!1162437))

(assert (=> b!1261998 m!1162437))

(assert (=> b!1261998 m!1162471))

(declare-fun m!1162579 () Bool)

(assert (=> d!138427 m!1162579))

(assert (=> d!138427 m!1162389))

(assert (=> b!1261989 m!1162463))

(assert (=> b!1261989 m!1162461))

(assert (=> b!1261989 m!1162463))

(assert (=> b!1261989 m!1162465))

(declare-fun m!1162581 () Bool)

(assert (=> b!1261989 m!1162581))

(assert (=> b!1261989 m!1162581))

(declare-fun m!1162583 () Bool)

(assert (=> b!1261989 m!1162583))

(declare-fun m!1162585 () Bool)

(assert (=> b!1261989 m!1162585))

(assert (=> b!1261989 m!1162437))

(assert (=> b!1261989 m!1162461))

(declare-fun m!1162587 () Bool)

(assert (=> b!1261989 m!1162587))

(assert (=> bm!62028 m!1162577))

(assert (=> b!1261990 m!1162463))

(assert (=> b!1261990 m!1162461))

(assert (=> b!1261990 m!1162437))

(declare-fun m!1162589 () Bool)

(assert (=> b!1261990 m!1162589))

(assert (=> b!1261990 m!1162461))

(assert (=> b!1261990 m!1162463))

(assert (=> b!1261990 m!1162465))

(assert (=> b!1261990 m!1162437))

(assert (=> b!1261993 m!1162437))

(assert (=> b!1261993 m!1162437))

(declare-fun m!1162591 () Bool)

(assert (=> b!1261993 m!1162591))

(assert (=> b!1261991 m!1162437))

(assert (=> b!1261991 m!1162437))

(assert (=> b!1261991 m!1162471))

(declare-fun m!1162593 () Bool)

(assert (=> b!1261988 m!1162593))

(assert (=> b!1261799 d!138427))

(declare-fun mapNonEmpty!50365 () Bool)

(declare-fun mapRes!50365 () Bool)

(declare-fun tp!95943 () Bool)

(declare-fun e!718370 () Bool)

(assert (=> mapNonEmpty!50365 (= mapRes!50365 (and tp!95943 e!718370))))

(declare-fun mapValue!50365 () ValueCell!15420)

(declare-fun mapRest!50365 () (Array (_ BitVec 32) ValueCell!15420))

(declare-fun mapKey!50365 () (_ BitVec 32))

(assert (=> mapNonEmpty!50365 (= mapRest!50359 (store mapRest!50365 mapKey!50365 mapValue!50365))))

(declare-fun b!1262006 () Bool)

(declare-fun e!718369 () Bool)

(assert (=> b!1262006 (= e!718369 tp_is_empty!32367)))

(declare-fun b!1262005 () Bool)

(assert (=> b!1262005 (= e!718370 tp_is_empty!32367)))

(declare-fun condMapEmpty!50365 () Bool)

(declare-fun mapDefault!50365 () ValueCell!15420)

(assert (=> mapNonEmpty!50359 (= condMapEmpty!50365 (= mapRest!50359 ((as const (Array (_ BitVec 32) ValueCell!15420)) mapDefault!50365)))))

(assert (=> mapNonEmpty!50359 (= tp!95934 (and e!718369 mapRes!50365))))

(declare-fun mapIsEmpty!50365 () Bool)

(assert (=> mapIsEmpty!50365 mapRes!50365))

(assert (= (and mapNonEmpty!50359 condMapEmpty!50365) mapIsEmpty!50365))

(assert (= (and mapNonEmpty!50359 (not condMapEmpty!50365)) mapNonEmpty!50365))

(assert (= (and mapNonEmpty!50365 ((_ is ValueCellFull!15420) mapValue!50365)) b!1262005))

(assert (= (and mapNonEmpty!50359 ((_ is ValueCellFull!15420) mapDefault!50365)) b!1262006))

(declare-fun m!1162595 () Bool)

(assert (=> mapNonEmpty!50365 m!1162595))

(declare-fun b_lambda!22849 () Bool)

(assert (= b_lambda!22843 (or (and start!105990 b_free!27465) b_lambda!22849)))

(declare-fun b_lambda!22851 () Bool)

(assert (= b_lambda!22837 (or (and start!105990 b_free!27465) b_lambda!22851)))

(declare-fun b_lambda!22853 () Bool)

(assert (= b_lambda!22839 (or (and start!105990 b_free!27465) b_lambda!22853)))

(declare-fun b_lambda!22855 () Bool)

(assert (= b_lambda!22845 (or (and start!105990 b_free!27465) b_lambda!22855)))

(declare-fun b_lambda!22857 () Bool)

(assert (= b_lambda!22841 (or (and start!105990 b_free!27465) b_lambda!22857)))

(declare-fun b_lambda!22859 () Bool)

(assert (= b_lambda!22847 (or (and start!105990 b_free!27465) b_lambda!22859)))

(check-sat (not bm!62014) (not b!1261877) (not b!1261990) (not d!138423) (not mapNonEmpty!50365) (not b!1261872) (not b!1261935) (not b!1261912) (not d!138411) (not b!1261998) (not b!1261880) (not bm!62024) (not b_lambda!22851) (not bm!62007) (not b!1261921) (not b!1261916) (not bm!62017) (not b_next!27465) (not d!138403) (not bm!62020) (not b!1261991) (not b!1261883) (not b!1261924) (not d!138425) (not b!1261978) (not bm!62010) (not d!138407) (not bm!62019) (not b!1261989) (not b!1261975) (not bm!62006) (not b!1261992) (not b!1261891) (not d!138427) (not b!1261979) (not b!1261993) (not b!1261915) (not b_lambda!22853) (not d!138413) (not d!138405) (not b!1261920) (not b_lambda!22855) (not b_lambda!22857) (not bm!62009) (not b!1261988) (not b!1261927) (not b!1261947) (not b!1261950) (not b!1261977) (not bm!62016) (not b!1261876) (not b!1261914) (not bm!62027) (not bm!62028) (not b!1261949) (not b!1261987) (not b_lambda!22849) (not b!1261871) (not b!1261981) (not b!1261980) b_and!45415 (not b!1261986) (not b!1261905) (not b!1261904) tp_is_empty!32367 (not b!1261889) (not b_lambda!22859) (not b!1261976) (not b!1261933))
(check-sat b_and!45415 (not b_next!27465))
