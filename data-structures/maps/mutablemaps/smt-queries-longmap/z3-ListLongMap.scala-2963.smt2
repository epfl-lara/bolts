; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42024 () Bool)

(assert start!42024)

(declare-fun b_free!11589 () Bool)

(declare-fun b_next!11589 () Bool)

(assert (=> start!42024 (= b_free!11589 (not b_next!11589))))

(declare-fun tp!40782 () Bool)

(declare-fun b_and!20005 () Bool)

(assert (=> start!42024 (= tp!40782 b_and!20005)))

(declare-fun b!468927 () Bool)

(declare-fun e!274555 () Bool)

(declare-fun tp_is_empty!13017 () Bool)

(assert (=> b!468927 (= e!274555 tp_is_empty!13017)))

(declare-fun mapIsEmpty!21220 () Bool)

(declare-fun mapRes!21220 () Bool)

(assert (=> mapIsEmpty!21220 mapRes!21220))

(declare-fun b!468928 () Bool)

(declare-fun res!280315 () Bool)

(declare-fun e!274557 () Bool)

(assert (=> b!468928 (=> (not res!280315) (not e!274557))))

(declare-datatypes ((array!29767 0))(
  ( (array!29768 (arr!14306 (Array (_ BitVec 32) (_ BitVec 64))) (size!14658 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29767)

(declare-datatypes ((List!8717 0))(
  ( (Nil!8714) (Cons!8713 (h!9569 (_ BitVec 64)) (t!14683 List!8717)) )
))
(declare-fun arrayNoDuplicates!0 (array!29767 (_ BitVec 32) List!8717) Bool)

(assert (=> b!468928 (= res!280315 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8714))))

(declare-fun b!468929 () Bool)

(declare-fun e!274556 () Bool)

(assert (=> b!468929 (= e!274556 (bvsle #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-datatypes ((V!18461 0))(
  ( (V!18462 (val!6553 Int)) )
))
(declare-datatypes ((tuple2!8598 0))(
  ( (tuple2!8599 (_1!4309 (_ BitVec 64)) (_2!4309 V!18461)) )
))
(declare-datatypes ((List!8718 0))(
  ( (Nil!8715) (Cons!8714 (h!9570 tuple2!8598) (t!14684 List!8718)) )
))
(declare-datatypes ((ListLongMap!7525 0))(
  ( (ListLongMap!7526 (toList!3778 List!8718)) )
))
(declare-fun lt!212402 () ListLongMap!7525)

(declare-fun lt!212405 () tuple2!8598)

(declare-fun minValueBefore!38 () V!18461)

(declare-fun +!1666 (ListLongMap!7525 tuple2!8598) ListLongMap!7525)

(assert (=> b!468929 (= (+!1666 lt!212402 lt!212405) (+!1666 (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212405))))

(declare-fun minValueAfter!38 () V!18461)

(assert (=> b!468929 (= lt!212405 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13678 0))(
  ( (Unit!13679) )
))
(declare-fun lt!212399 () Unit!13678)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!107 (ListLongMap!7525 (_ BitVec 64) V!18461 V!18461) Unit!13678)

(assert (=> b!468929 (= lt!212399 (addSameAsAddTwiceSameKeyDiffValues!107 lt!212402 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18461)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212401 () ListLongMap!7525)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6165 0))(
  ( (ValueCellFull!6165 (v!8838 V!18461)) (EmptyCell!6165) )
))
(declare-datatypes ((array!29769 0))(
  ( (array!29770 (arr!14307 (Array (_ BitVec 32) ValueCell!6165)) (size!14659 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29769)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2188 (array!29767 array!29769 (_ BitVec 32) (_ BitVec 32) V!18461 V!18461 (_ BitVec 32) Int) ListLongMap!7525)

(assert (=> b!468929 (= lt!212401 (getCurrentListMap!2188 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212404 () ListLongMap!7525)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468929 (= lt!212404 (getCurrentListMap!2188 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280319 () Bool)

(assert (=> start!42024 (=> (not res!280319) (not e!274557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42024 (= res!280319 (validMask!0 mask!1365))))

(assert (=> start!42024 e!274557))

(assert (=> start!42024 tp_is_empty!13017))

(assert (=> start!42024 tp!40782))

(assert (=> start!42024 true))

(declare-fun array_inv!10322 (array!29767) Bool)

(assert (=> start!42024 (array_inv!10322 _keys!1025)))

(declare-fun e!274558 () Bool)

(declare-fun array_inv!10323 (array!29769) Bool)

(assert (=> start!42024 (and (array_inv!10323 _values!833) e!274558)))

(declare-fun b!468930 () Bool)

(declare-fun e!274560 () Bool)

(assert (=> b!468930 (= e!274560 tp_is_empty!13017)))

(declare-fun mapNonEmpty!21220 () Bool)

(declare-fun tp!40783 () Bool)

(assert (=> mapNonEmpty!21220 (= mapRes!21220 (and tp!40783 e!274555))))

(declare-fun mapRest!21220 () (Array (_ BitVec 32) ValueCell!6165))

(declare-fun mapKey!21220 () (_ BitVec 32))

(declare-fun mapValue!21220 () ValueCell!6165)

(assert (=> mapNonEmpty!21220 (= (arr!14307 _values!833) (store mapRest!21220 mapKey!21220 mapValue!21220))))

(declare-fun b!468931 () Bool)

(declare-fun res!280318 () Bool)

(assert (=> b!468931 (=> (not res!280318) (not e!274557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29767 (_ BitVec 32)) Bool)

(assert (=> b!468931 (= res!280318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468932 () Bool)

(assert (=> b!468932 (= e!274558 (and e!274560 mapRes!21220))))

(declare-fun condMapEmpty!21220 () Bool)

(declare-fun mapDefault!21220 () ValueCell!6165)

(assert (=> b!468932 (= condMapEmpty!21220 (= (arr!14307 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6165)) mapDefault!21220)))))

(declare-fun b!468933 () Bool)

(declare-fun res!280317 () Bool)

(assert (=> b!468933 (=> (not res!280317) (not e!274557))))

(assert (=> b!468933 (= res!280317 (and (= (size!14659 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14658 _keys!1025) (size!14659 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468934 () Bool)

(assert (=> b!468934 (= e!274557 (not e!274556))))

(declare-fun res!280316 () Bool)

(assert (=> b!468934 (=> res!280316 e!274556)))

(assert (=> b!468934 (= res!280316 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212403 () ListLongMap!7525)

(assert (=> b!468934 (= lt!212402 lt!212403)))

(declare-fun lt!212400 () Unit!13678)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!137 (array!29767 array!29769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18461 V!18461 V!18461 V!18461 (_ BitVec 32) Int) Unit!13678)

(assert (=> b!468934 (= lt!212400 (lemmaNoChangeToArrayThenSameMapNoExtras!137 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1942 (array!29767 array!29769 (_ BitVec 32) (_ BitVec 32) V!18461 V!18461 (_ BitVec 32) Int) ListLongMap!7525)

(assert (=> b!468934 (= lt!212403 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468934 (= lt!212402 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42024 res!280319) b!468933))

(assert (= (and b!468933 res!280317) b!468931))

(assert (= (and b!468931 res!280318) b!468928))

(assert (= (and b!468928 res!280315) b!468934))

(assert (= (and b!468934 (not res!280316)) b!468929))

(assert (= (and b!468932 condMapEmpty!21220) mapIsEmpty!21220))

(assert (= (and b!468932 (not condMapEmpty!21220)) mapNonEmpty!21220))

(get-info :version)

(assert (= (and mapNonEmpty!21220 ((_ is ValueCellFull!6165) mapValue!21220)) b!468927))

(assert (= (and b!468932 ((_ is ValueCellFull!6165) mapDefault!21220)) b!468930))

(assert (= start!42024 b!468932))

(declare-fun m!451071 () Bool)

(assert (=> mapNonEmpty!21220 m!451071))

(declare-fun m!451073 () Bool)

(assert (=> start!42024 m!451073))

(declare-fun m!451075 () Bool)

(assert (=> start!42024 m!451075))

(declare-fun m!451077 () Bool)

(assert (=> start!42024 m!451077))

(declare-fun m!451079 () Bool)

(assert (=> b!468929 m!451079))

(declare-fun m!451081 () Bool)

(assert (=> b!468929 m!451081))

(assert (=> b!468929 m!451081))

(declare-fun m!451083 () Bool)

(assert (=> b!468929 m!451083))

(declare-fun m!451085 () Bool)

(assert (=> b!468929 m!451085))

(declare-fun m!451087 () Bool)

(assert (=> b!468929 m!451087))

(declare-fun m!451089 () Bool)

(assert (=> b!468929 m!451089))

(declare-fun m!451091 () Bool)

(assert (=> b!468928 m!451091))

(declare-fun m!451093 () Bool)

(assert (=> b!468931 m!451093))

(declare-fun m!451095 () Bool)

(assert (=> b!468934 m!451095))

(declare-fun m!451097 () Bool)

(assert (=> b!468934 m!451097))

(declare-fun m!451099 () Bool)

(assert (=> b!468934 m!451099))

(check-sat tp_is_empty!13017 (not b!468931) (not start!42024) (not b_next!11589) (not b!468929) b_and!20005 (not b!468934) (not mapNonEmpty!21220) (not b!468928))
(check-sat b_and!20005 (not b_next!11589))
(get-model)

(declare-fun d!75145 () Bool)

(assert (=> d!75145 (= (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212429 () Unit!13678)

(declare-fun choose!1351 (array!29767 array!29769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18461 V!18461 V!18461 V!18461 (_ BitVec 32) Int) Unit!13678)

(assert (=> d!75145 (= lt!212429 (choose!1351 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75145 (validMask!0 mask!1365)))

(assert (=> d!75145 (= (lemmaNoChangeToArrayThenSameMapNoExtras!137 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!212429)))

(declare-fun bs!14858 () Bool)

(assert (= bs!14858 d!75145))

(assert (=> bs!14858 m!451099))

(assert (=> bs!14858 m!451097))

(declare-fun m!451131 () Bool)

(assert (=> bs!14858 m!451131))

(assert (=> bs!14858 m!451073))

(assert (=> b!468934 d!75145))

(declare-fun b!468983 () Bool)

(declare-fun e!274596 () Bool)

(declare-fun e!274595 () Bool)

(assert (=> b!468983 (= e!274596 e!274595)))

(assert (=> b!468983 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun res!280344 () Bool)

(declare-fun lt!212450 () ListLongMap!7525)

(declare-fun contains!2537 (ListLongMap!7525 (_ BitVec 64)) Bool)

(assert (=> b!468983 (= res!280344 (contains!2537 lt!212450 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468983 (=> (not res!280344) (not e!274595))))

(declare-fun b!468984 () Bool)

(declare-fun e!274597 () ListLongMap!7525)

(declare-fun call!30355 () ListLongMap!7525)

(assert (=> b!468984 (= e!274597 call!30355)))

(declare-fun b!468986 () Bool)

(declare-fun e!274598 () ListLongMap!7525)

(assert (=> b!468986 (= e!274598 e!274597)))

(declare-fun c!56787 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!468986 (= c!56787 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468987 () Bool)

(declare-fun e!274594 () Bool)

(assert (=> b!468987 (= e!274594 e!274596)))

(declare-fun c!56786 () Bool)

(declare-fun e!274599 () Bool)

(assert (=> b!468987 (= c!56786 e!274599)))

(declare-fun res!280346 () Bool)

(assert (=> b!468987 (=> (not res!280346) (not e!274599))))

(assert (=> b!468987 (= res!280346 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!468988 () Bool)

(declare-fun e!274593 () Bool)

(assert (=> b!468988 (= e!274596 e!274593)))

(declare-fun c!56785 () Bool)

(assert (=> b!468988 (= c!56785 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!468989 () Bool)

(assert (=> b!468989 (= e!274593 (= lt!212450 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!468990 () Bool)

(assert (=> b!468990 (= e!274599 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468990 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!468991 () Bool)

(declare-fun lt!212446 () Unit!13678)

(declare-fun lt!212448 () Unit!13678)

(assert (=> b!468991 (= lt!212446 lt!212448)))

(declare-fun lt!212445 () ListLongMap!7525)

(declare-fun lt!212447 () (_ BitVec 64))

(declare-fun lt!212444 () (_ BitVec 64))

(declare-fun lt!212449 () V!18461)

(assert (=> b!468991 (not (contains!2537 (+!1666 lt!212445 (tuple2!8599 lt!212447 lt!212449)) lt!212444))))

(declare-fun addStillNotContains!161 (ListLongMap!7525 (_ BitVec 64) V!18461 (_ BitVec 64)) Unit!13678)

(assert (=> b!468991 (= lt!212448 (addStillNotContains!161 lt!212445 lt!212447 lt!212449 lt!212444))))

(assert (=> b!468991 (= lt!212444 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!7006 (ValueCell!6165 V!18461) V!18461)

(declare-fun dynLambda!918 (Int (_ BitVec 64)) V!18461)

(assert (=> b!468991 (= lt!212449 (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!468991 (= lt!212447 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!468991 (= lt!212445 call!30355)))

(assert (=> b!468991 (= e!274597 (+!1666 call!30355 (tuple2!8599 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!468985 () Bool)

(declare-fun res!280345 () Bool)

(assert (=> b!468985 (=> (not res!280345) (not e!274594))))

(assert (=> b!468985 (= res!280345 (not (contains!2537 lt!212450 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75147 () Bool)

(assert (=> d!75147 e!274594))

(declare-fun res!280343 () Bool)

(assert (=> d!75147 (=> (not res!280343) (not e!274594))))

(assert (=> d!75147 (= res!280343 (not (contains!2537 lt!212450 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75147 (= lt!212450 e!274598)))

(declare-fun c!56784 () Bool)

(assert (=> d!75147 (= c!56784 (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75147 (validMask!0 mask!1365)))

(assert (=> d!75147 (= (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!212450)))

(declare-fun bm!30352 () Bool)

(assert (=> bm!30352 (= call!30355 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!468992 () Bool)

(declare-fun isEmpty!578 (ListLongMap!7525) Bool)

(assert (=> b!468992 (= e!274593 (isEmpty!578 lt!212450))))

(declare-fun b!468993 () Bool)

(assert (=> b!468993 (= e!274598 (ListLongMap!7526 Nil!8715))))

(declare-fun b!468994 () Bool)

(assert (=> b!468994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> b!468994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14659 _values!833)))))

(declare-fun apply!326 (ListLongMap!7525 (_ BitVec 64)) V!18461)

(assert (=> b!468994 (= e!274595 (= (apply!326 lt!212450 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!75147 c!56784) b!468993))

(assert (= (and d!75147 (not c!56784)) b!468986))

(assert (= (and b!468986 c!56787) b!468991))

(assert (= (and b!468986 (not c!56787)) b!468984))

(assert (= (or b!468991 b!468984) bm!30352))

(assert (= (and d!75147 res!280343) b!468985))

(assert (= (and b!468985 res!280345) b!468987))

(assert (= (and b!468987 res!280346) b!468990))

(assert (= (and b!468987 c!56786) b!468983))

(assert (= (and b!468987 (not c!56786)) b!468988))

(assert (= (and b!468983 res!280344) b!468994))

(assert (= (and b!468988 c!56785) b!468989))

(assert (= (and b!468988 (not c!56785)) b!468992))

(declare-fun b_lambda!10119 () Bool)

(assert (=> (not b_lambda!10119) (not b!468991)))

(declare-fun t!14688 () Bool)

(declare-fun tb!3925 () Bool)

(assert (=> (and start!42024 (= defaultEntry!841 defaultEntry!841) t!14688) tb!3925))

(declare-fun result!7417 () Bool)

(assert (=> tb!3925 (= result!7417 tp_is_empty!13017)))

(assert (=> b!468991 t!14688))

(declare-fun b_and!20009 () Bool)

(assert (= b_and!20005 (and (=> t!14688 result!7417) b_and!20009)))

(declare-fun b_lambda!10121 () Bool)

(assert (=> (not b_lambda!10121) (not b!468994)))

(assert (=> b!468994 t!14688))

(declare-fun b_and!20011 () Bool)

(assert (= b_and!20009 (and (=> t!14688 result!7417) b_and!20011)))

(declare-fun m!451133 () Bool)

(assert (=> b!468983 m!451133))

(assert (=> b!468983 m!451133))

(declare-fun m!451135 () Bool)

(assert (=> b!468983 m!451135))

(declare-fun m!451137 () Bool)

(assert (=> b!468991 m!451137))

(declare-fun m!451139 () Bool)

(assert (=> b!468991 m!451139))

(assert (=> b!468991 m!451139))

(declare-fun m!451141 () Bool)

(assert (=> b!468991 m!451141))

(declare-fun m!451143 () Bool)

(assert (=> b!468991 m!451143))

(declare-fun m!451145 () Bool)

(assert (=> b!468991 m!451145))

(declare-fun m!451147 () Bool)

(assert (=> b!468991 m!451147))

(declare-fun m!451149 () Bool)

(assert (=> b!468991 m!451149))

(assert (=> b!468991 m!451147))

(assert (=> b!468991 m!451145))

(assert (=> b!468991 m!451133))

(declare-fun m!451151 () Bool)

(assert (=> b!468989 m!451151))

(assert (=> b!468986 m!451133))

(assert (=> b!468986 m!451133))

(declare-fun m!451153 () Bool)

(assert (=> b!468986 m!451153))

(assert (=> b!468994 m!451133))

(declare-fun m!451155 () Bool)

(assert (=> b!468994 m!451155))

(assert (=> b!468994 m!451145))

(assert (=> b!468994 m!451147))

(assert (=> b!468994 m!451149))

(assert (=> b!468994 m!451147))

(assert (=> b!468994 m!451145))

(assert (=> b!468994 m!451133))

(declare-fun m!451157 () Bool)

(assert (=> d!75147 m!451157))

(assert (=> d!75147 m!451073))

(assert (=> b!468990 m!451133))

(assert (=> b!468990 m!451133))

(assert (=> b!468990 m!451153))

(declare-fun m!451159 () Bool)

(assert (=> b!468985 m!451159))

(declare-fun m!451161 () Bool)

(assert (=> b!468992 m!451161))

(assert (=> bm!30352 m!451151))

(assert (=> b!468934 d!75147))

(declare-fun b!468997 () Bool)

(declare-fun e!274603 () Bool)

(declare-fun e!274602 () Bool)

(assert (=> b!468997 (= e!274603 e!274602)))

(assert (=> b!468997 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun res!280348 () Bool)

(declare-fun lt!212457 () ListLongMap!7525)

(assert (=> b!468997 (= res!280348 (contains!2537 lt!212457 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468997 (=> (not res!280348) (not e!274602))))

(declare-fun b!468998 () Bool)

(declare-fun e!274604 () ListLongMap!7525)

(declare-fun call!30356 () ListLongMap!7525)

(assert (=> b!468998 (= e!274604 call!30356)))

(declare-fun b!469000 () Bool)

(declare-fun e!274605 () ListLongMap!7525)

(assert (=> b!469000 (= e!274605 e!274604)))

(declare-fun c!56791 () Bool)

(assert (=> b!469000 (= c!56791 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469001 () Bool)

(declare-fun e!274601 () Bool)

(assert (=> b!469001 (= e!274601 e!274603)))

(declare-fun c!56790 () Bool)

(declare-fun e!274606 () Bool)

(assert (=> b!469001 (= c!56790 e!274606)))

(declare-fun res!280350 () Bool)

(assert (=> b!469001 (=> (not res!280350) (not e!274606))))

(assert (=> b!469001 (= res!280350 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469002 () Bool)

(declare-fun e!274600 () Bool)

(assert (=> b!469002 (= e!274603 e!274600)))

(declare-fun c!56789 () Bool)

(assert (=> b!469002 (= c!56789 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469003 () Bool)

(assert (=> b!469003 (= e!274600 (= lt!212457 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!469004 () Bool)

(assert (=> b!469004 (= e!274606 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469004 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!469005 () Bool)

(declare-fun lt!212453 () Unit!13678)

(declare-fun lt!212455 () Unit!13678)

(assert (=> b!469005 (= lt!212453 lt!212455)))

(declare-fun lt!212451 () (_ BitVec 64))

(declare-fun lt!212452 () ListLongMap!7525)

(declare-fun lt!212456 () V!18461)

(declare-fun lt!212454 () (_ BitVec 64))

(assert (=> b!469005 (not (contains!2537 (+!1666 lt!212452 (tuple2!8599 lt!212454 lt!212456)) lt!212451))))

(assert (=> b!469005 (= lt!212455 (addStillNotContains!161 lt!212452 lt!212454 lt!212456 lt!212451))))

(assert (=> b!469005 (= lt!212451 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!469005 (= lt!212456 (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!469005 (= lt!212454 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!469005 (= lt!212452 call!30356)))

(assert (=> b!469005 (= e!274604 (+!1666 call!30356 (tuple2!8599 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!468999 () Bool)

(declare-fun res!280349 () Bool)

(assert (=> b!468999 (=> (not res!280349) (not e!274601))))

(assert (=> b!468999 (= res!280349 (not (contains!2537 lt!212457 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75149 () Bool)

(assert (=> d!75149 e!274601))

(declare-fun res!280347 () Bool)

(assert (=> d!75149 (=> (not res!280347) (not e!274601))))

(assert (=> d!75149 (= res!280347 (not (contains!2537 lt!212457 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75149 (= lt!212457 e!274605)))

(declare-fun c!56788 () Bool)

(assert (=> d!75149 (= c!56788 (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75149 (validMask!0 mask!1365)))

(assert (=> d!75149 (= (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!212457)))

(declare-fun bm!30353 () Bool)

(assert (=> bm!30353 (= call!30356 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!469006 () Bool)

(assert (=> b!469006 (= e!274600 (isEmpty!578 lt!212457))))

(declare-fun b!469007 () Bool)

(assert (=> b!469007 (= e!274605 (ListLongMap!7526 Nil!8715))))

(declare-fun b!469008 () Bool)

(assert (=> b!469008 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> b!469008 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14659 _values!833)))))

(assert (=> b!469008 (= e!274602 (= (apply!326 lt!212457 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!75149 c!56788) b!469007))

(assert (= (and d!75149 (not c!56788)) b!469000))

(assert (= (and b!469000 c!56791) b!469005))

(assert (= (and b!469000 (not c!56791)) b!468998))

(assert (= (or b!469005 b!468998) bm!30353))

(assert (= (and d!75149 res!280347) b!468999))

(assert (= (and b!468999 res!280349) b!469001))

(assert (= (and b!469001 res!280350) b!469004))

(assert (= (and b!469001 c!56790) b!468997))

(assert (= (and b!469001 (not c!56790)) b!469002))

(assert (= (and b!468997 res!280348) b!469008))

(assert (= (and b!469002 c!56789) b!469003))

(assert (= (and b!469002 (not c!56789)) b!469006))

(declare-fun b_lambda!10123 () Bool)

(assert (=> (not b_lambda!10123) (not b!469005)))

(assert (=> b!469005 t!14688))

(declare-fun b_and!20013 () Bool)

(assert (= b_and!20011 (and (=> t!14688 result!7417) b_and!20013)))

(declare-fun b_lambda!10125 () Bool)

(assert (=> (not b_lambda!10125) (not b!469008)))

(assert (=> b!469008 t!14688))

(declare-fun b_and!20015 () Bool)

(assert (= b_and!20013 (and (=> t!14688 result!7417) b_and!20015)))

(assert (=> b!468997 m!451133))

(assert (=> b!468997 m!451133))

(declare-fun m!451163 () Bool)

(assert (=> b!468997 m!451163))

(declare-fun m!451165 () Bool)

(assert (=> b!469005 m!451165))

(declare-fun m!451167 () Bool)

(assert (=> b!469005 m!451167))

(assert (=> b!469005 m!451167))

(declare-fun m!451169 () Bool)

(assert (=> b!469005 m!451169))

(declare-fun m!451171 () Bool)

(assert (=> b!469005 m!451171))

(assert (=> b!469005 m!451145))

(assert (=> b!469005 m!451147))

(assert (=> b!469005 m!451149))

(assert (=> b!469005 m!451147))

(assert (=> b!469005 m!451145))

(assert (=> b!469005 m!451133))

(declare-fun m!451173 () Bool)

(assert (=> b!469003 m!451173))

(assert (=> b!469000 m!451133))

(assert (=> b!469000 m!451133))

(assert (=> b!469000 m!451153))

(assert (=> b!469008 m!451133))

(declare-fun m!451175 () Bool)

(assert (=> b!469008 m!451175))

(assert (=> b!469008 m!451145))

(assert (=> b!469008 m!451147))

(assert (=> b!469008 m!451149))

(assert (=> b!469008 m!451147))

(assert (=> b!469008 m!451145))

(assert (=> b!469008 m!451133))

(declare-fun m!451177 () Bool)

(assert (=> d!75149 m!451177))

(assert (=> d!75149 m!451073))

(assert (=> b!469004 m!451133))

(assert (=> b!469004 m!451133))

(assert (=> b!469004 m!451153))

(declare-fun m!451179 () Bool)

(assert (=> b!468999 m!451179))

(declare-fun m!451181 () Bool)

(assert (=> b!469006 m!451181))

(assert (=> bm!30353 m!451173))

(assert (=> b!468934 d!75149))

(declare-fun d!75151 () Bool)

(assert (=> d!75151 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42024 d!75151))

(declare-fun d!75153 () Bool)

(assert (=> d!75153 (= (array_inv!10322 _keys!1025) (bvsge (size!14658 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42024 d!75153))

(declare-fun d!75155 () Bool)

(assert (=> d!75155 (= (array_inv!10323 _values!833) (bvsge (size!14659 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42024 d!75155))

(declare-fun bm!30356 () Bool)

(declare-fun call!30359 () Bool)

(assert (=> bm!30356 (= call!30359 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!75157 () Bool)

(declare-fun res!280356 () Bool)

(declare-fun e!274614 () Bool)

(assert (=> d!75157 (=> res!280356 e!274614)))

(assert (=> d!75157 (= res!280356 (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!274614)))

(declare-fun b!469017 () Bool)

(declare-fun e!274613 () Bool)

(assert (=> b!469017 (= e!274613 call!30359)))

(declare-fun b!469018 () Bool)

(declare-fun e!274615 () Bool)

(assert (=> b!469018 (= e!274615 call!30359)))

(declare-fun b!469019 () Bool)

(assert (=> b!469019 (= e!274614 e!274613)))

(declare-fun c!56794 () Bool)

(assert (=> b!469019 (= c!56794 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469020 () Bool)

(assert (=> b!469020 (= e!274613 e!274615)))

(declare-fun lt!212464 () (_ BitVec 64))

(assert (=> b!469020 (= lt!212464 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212466 () Unit!13678)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29767 (_ BitVec 64) (_ BitVec 32)) Unit!13678)

(assert (=> b!469020 (= lt!212466 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!212464 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!469020 (arrayContainsKey!0 _keys!1025 lt!212464 #b00000000000000000000000000000000)))

(declare-fun lt!212465 () Unit!13678)

(assert (=> b!469020 (= lt!212465 lt!212466)))

(declare-fun res!280355 () Bool)

(declare-datatypes ((SeekEntryResult!3538 0))(
  ( (MissingZero!3538 (index!16331 (_ BitVec 32))) (Found!3538 (index!16332 (_ BitVec 32))) (Intermediate!3538 (undefined!4350 Bool) (index!16333 (_ BitVec 32)) (x!43903 (_ BitVec 32))) (Undefined!3538) (MissingVacant!3538 (index!16334 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29767 (_ BitVec 32)) SeekEntryResult!3538)

(assert (=> b!469020 (= res!280355 (= (seekEntryOrOpen!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3538 #b00000000000000000000000000000000)))))

(assert (=> b!469020 (=> (not res!280355) (not e!274615))))

(assert (= (and d!75157 (not res!280356)) b!469019))

(assert (= (and b!469019 c!56794) b!469020))

(assert (= (and b!469019 (not c!56794)) b!469017))

(assert (= (and b!469020 res!280355) b!469018))

(assert (= (or b!469018 b!469017) bm!30356))

(declare-fun m!451183 () Bool)

(assert (=> bm!30356 m!451183))

(assert (=> b!469019 m!451133))

(assert (=> b!469019 m!451133))

(assert (=> b!469019 m!451153))

(assert (=> b!469020 m!451133))

(declare-fun m!451185 () Bool)

(assert (=> b!469020 m!451185))

(declare-fun m!451187 () Bool)

(assert (=> b!469020 m!451187))

(assert (=> b!469020 m!451133))

(declare-fun m!451189 () Bool)

(assert (=> b!469020 m!451189))

(assert (=> b!468931 d!75157))

(declare-fun b!469031 () Bool)

(declare-fun e!274626 () Bool)

(declare-fun e!274624 () Bool)

(assert (=> b!469031 (= e!274626 e!274624)))

(declare-fun res!280365 () Bool)

(assert (=> b!469031 (=> (not res!280365) (not e!274624))))

(declare-fun e!274625 () Bool)

(assert (=> b!469031 (= res!280365 (not e!274625))))

(declare-fun res!280363 () Bool)

(assert (=> b!469031 (=> (not res!280363) (not e!274625))))

(assert (=> b!469031 (= res!280363 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469033 () Bool)

(declare-fun e!274627 () Bool)

(declare-fun call!30362 () Bool)

(assert (=> b!469033 (= e!274627 call!30362)))

(declare-fun bm!30359 () Bool)

(declare-fun c!56797 () Bool)

(assert (=> bm!30359 (= call!30362 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56797 (Cons!8713 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000) Nil!8714) Nil!8714)))))

(declare-fun b!469034 () Bool)

(assert (=> b!469034 (= e!274627 call!30362)))

(declare-fun b!469035 () Bool)

(assert (=> b!469035 (= e!274624 e!274627)))

(assert (=> b!469035 (= c!56797 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75159 () Bool)

(declare-fun res!280364 () Bool)

(assert (=> d!75159 (=> res!280364 e!274626)))

(assert (=> d!75159 (= res!280364 (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75159 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8714) e!274626)))

(declare-fun b!469032 () Bool)

(declare-fun contains!2538 (List!8717 (_ BitVec 64)) Bool)

(assert (=> b!469032 (= e!274625 (contains!2538 Nil!8714 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75159 (not res!280364)) b!469031))

(assert (= (and b!469031 res!280363) b!469032))

(assert (= (and b!469031 res!280365) b!469035))

(assert (= (and b!469035 c!56797) b!469034))

(assert (= (and b!469035 (not c!56797)) b!469033))

(assert (= (or b!469034 b!469033) bm!30359))

(assert (=> b!469031 m!451133))

(assert (=> b!469031 m!451133))

(assert (=> b!469031 m!451153))

(assert (=> bm!30359 m!451133))

(declare-fun m!451191 () Bool)

(assert (=> bm!30359 m!451191))

(assert (=> b!469035 m!451133))

(assert (=> b!469035 m!451133))

(assert (=> b!469035 m!451153))

(assert (=> b!469032 m!451133))

(assert (=> b!469032 m!451133))

(declare-fun m!451193 () Bool)

(assert (=> b!469032 m!451193))

(assert (=> b!468928 d!75159))

(declare-fun b!469078 () Bool)

(declare-fun e!274659 () Unit!13678)

(declare-fun lt!212518 () Unit!13678)

(assert (=> b!469078 (= e!274659 lt!212518)))

(declare-fun lt!212514 () ListLongMap!7525)

(assert (=> b!469078 (= lt!212514 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212527 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212527 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212521 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212521 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212530 () Unit!13678)

(declare-fun addStillContains!288 (ListLongMap!7525 (_ BitVec 64) V!18461 (_ BitVec 64)) Unit!13678)

(assert (=> b!469078 (= lt!212530 (addStillContains!288 lt!212514 lt!212527 zeroValue!794 lt!212521))))

(assert (=> b!469078 (contains!2537 (+!1666 lt!212514 (tuple2!8599 lt!212527 zeroValue!794)) lt!212521)))

(declare-fun lt!212511 () Unit!13678)

(assert (=> b!469078 (= lt!212511 lt!212530)))

(declare-fun lt!212515 () ListLongMap!7525)

(assert (=> b!469078 (= lt!212515 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212532 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212532 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212528 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212528 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212522 () Unit!13678)

(declare-fun addApplyDifferent!288 (ListLongMap!7525 (_ BitVec 64) V!18461 (_ BitVec 64)) Unit!13678)

(assert (=> b!469078 (= lt!212522 (addApplyDifferent!288 lt!212515 lt!212532 minValueAfter!38 lt!212528))))

(assert (=> b!469078 (= (apply!326 (+!1666 lt!212515 (tuple2!8599 lt!212532 minValueAfter!38)) lt!212528) (apply!326 lt!212515 lt!212528))))

(declare-fun lt!212517 () Unit!13678)

(assert (=> b!469078 (= lt!212517 lt!212522)))

(declare-fun lt!212512 () ListLongMap!7525)

(assert (=> b!469078 (= lt!212512 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212526 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212526 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212525 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212525 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212513 () Unit!13678)

(assert (=> b!469078 (= lt!212513 (addApplyDifferent!288 lt!212512 lt!212526 zeroValue!794 lt!212525))))

(assert (=> b!469078 (= (apply!326 (+!1666 lt!212512 (tuple2!8599 lt!212526 zeroValue!794)) lt!212525) (apply!326 lt!212512 lt!212525))))

(declare-fun lt!212523 () Unit!13678)

(assert (=> b!469078 (= lt!212523 lt!212513)))

(declare-fun lt!212524 () ListLongMap!7525)

(assert (=> b!469078 (= lt!212524 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212531 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212531 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212519 () (_ BitVec 64))

(assert (=> b!469078 (= lt!212519 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!469078 (= lt!212518 (addApplyDifferent!288 lt!212524 lt!212531 minValueAfter!38 lt!212519))))

(assert (=> b!469078 (= (apply!326 (+!1666 lt!212524 (tuple2!8599 lt!212531 minValueAfter!38)) lt!212519) (apply!326 lt!212524 lt!212519))))

(declare-fun e!274660 () Bool)

(declare-fun b!469079 () Bool)

(declare-fun lt!212516 () ListLongMap!7525)

(assert (=> b!469079 (= e!274660 (= (apply!326 lt!212516 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!469079 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14659 _values!833)))))

(assert (=> b!469079 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469080 () Bool)

(declare-fun e!274656 () ListLongMap!7525)

(declare-fun call!30378 () ListLongMap!7525)

(assert (=> b!469080 (= e!274656 call!30378)))

(declare-fun b!469081 () Bool)

(declare-fun e!274665 () Bool)

(assert (=> b!469081 (= e!274665 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469082 () Bool)

(declare-fun e!274663 () ListLongMap!7525)

(assert (=> b!469082 (= e!274663 call!30378)))

(declare-fun b!469083 () Bool)

(declare-fun res!280384 () Bool)

(declare-fun e!274662 () Bool)

(assert (=> b!469083 (=> (not res!280384) (not e!274662))))

(declare-fun e!274664 () Bool)

(assert (=> b!469083 (= res!280384 e!274664)))

(declare-fun res!280390 () Bool)

(assert (=> b!469083 (=> res!280390 e!274664)))

(declare-fun e!274666 () Bool)

(assert (=> b!469083 (= res!280390 (not e!274666))))

(declare-fun res!280392 () Bool)

(assert (=> b!469083 (=> (not res!280392) (not e!274666))))

(assert (=> b!469083 (= res!280392 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469084 () Bool)

(declare-fun e!274655 () ListLongMap!7525)

(assert (=> b!469084 (= e!274655 e!274663)))

(declare-fun c!56810 () Bool)

(assert (=> b!469084 (= c!56810 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30374 () Bool)

(declare-fun call!30383 () ListLongMap!7525)

(declare-fun call!30382 () ListLongMap!7525)

(assert (=> bm!30374 (= call!30383 call!30382)))

(declare-fun b!469086 () Bool)

(declare-fun e!274657 () Bool)

(assert (=> b!469086 (= e!274657 (= (apply!326 lt!212516 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!469087 () Bool)

(declare-fun e!274658 () Bool)

(declare-fun call!30380 () Bool)

(assert (=> b!469087 (= e!274658 (not call!30380))))

(declare-fun b!469088 () Bool)

(declare-fun e!274661 () Bool)

(declare-fun call!30379 () Bool)

(assert (=> b!469088 (= e!274661 (not call!30379))))

(declare-fun b!469089 () Bool)

(assert (=> b!469089 (= e!274662 e!274658)))

(declare-fun c!56815 () Bool)

(assert (=> b!469089 (= c!56815 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30375 () Bool)

(declare-fun call!30377 () ListLongMap!7525)

(assert (=> bm!30375 (= call!30378 call!30377)))

(declare-fun bm!30376 () Bool)

(declare-fun call!30381 () ListLongMap!7525)

(assert (=> bm!30376 (= call!30382 call!30381)))

(declare-fun bm!30377 () Bool)

(assert (=> bm!30377 (= call!30381 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469090 () Bool)

(assert (=> b!469090 (= e!274664 e!274660)))

(declare-fun res!280386 () Bool)

(assert (=> b!469090 (=> (not res!280386) (not e!274660))))

(assert (=> b!469090 (= res!280386 (contains!2537 lt!212516 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469090 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469091 () Bool)

(declare-fun e!274654 () Bool)

(assert (=> b!469091 (= e!274654 (= (apply!326 lt!212516 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!469092 () Bool)

(assert (=> b!469092 (= e!274661 e!274657)))

(declare-fun res!280389 () Bool)

(assert (=> b!469092 (= res!280389 call!30379)))

(assert (=> b!469092 (=> (not res!280389) (not e!274657))))

(declare-fun bm!30378 () Bool)

(declare-fun c!56812 () Bool)

(assert (=> bm!30378 (= call!30377 (+!1666 (ite c!56812 call!30381 (ite c!56810 call!30382 call!30383)) (ite (or c!56812 c!56810) (tuple2!8599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!469093 () Bool)

(assert (=> b!469093 (= e!274656 call!30383)))

(declare-fun b!469094 () Bool)

(declare-fun c!56813 () Bool)

(assert (=> b!469094 (= c!56813 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!469094 (= e!274663 e!274656)))

(declare-fun bm!30379 () Bool)

(assert (=> bm!30379 (= call!30379 (contains!2537 lt!212516 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469095 () Bool)

(assert (=> b!469095 (= e!274666 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469096 () Bool)

(assert (=> b!469096 (= e!274658 e!274654)))

(declare-fun res!280387 () Bool)

(assert (=> b!469096 (= res!280387 call!30380)))

(assert (=> b!469096 (=> (not res!280387) (not e!274654))))

(declare-fun bm!30380 () Bool)

(assert (=> bm!30380 (= call!30380 (contains!2537 lt!212516 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469085 () Bool)

(declare-fun Unit!13682 () Unit!13678)

(assert (=> b!469085 (= e!274659 Unit!13682)))

(declare-fun d!75161 () Bool)

(assert (=> d!75161 e!274662))

(declare-fun res!280388 () Bool)

(assert (=> d!75161 (=> (not res!280388) (not e!274662))))

(assert (=> d!75161 (= res!280388 (or (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))))

(declare-fun lt!212520 () ListLongMap!7525)

(assert (=> d!75161 (= lt!212516 lt!212520)))

(declare-fun lt!212529 () Unit!13678)

(assert (=> d!75161 (= lt!212529 e!274659)))

(declare-fun c!56814 () Bool)

(assert (=> d!75161 (= c!56814 e!274665)))

(declare-fun res!280385 () Bool)

(assert (=> d!75161 (=> (not res!280385) (not e!274665))))

(assert (=> d!75161 (= res!280385 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75161 (= lt!212520 e!274655)))

(assert (=> d!75161 (= c!56812 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75161 (validMask!0 mask!1365)))

(assert (=> d!75161 (= (getCurrentListMap!2188 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!212516)))

(declare-fun b!469097 () Bool)

(assert (=> b!469097 (= e!274655 (+!1666 call!30377 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!469098 () Bool)

(declare-fun res!280391 () Bool)

(assert (=> b!469098 (=> (not res!280391) (not e!274662))))

(assert (=> b!469098 (= res!280391 e!274661)))

(declare-fun c!56811 () Bool)

(assert (=> b!469098 (= c!56811 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!75161 c!56812) b!469097))

(assert (= (and d!75161 (not c!56812)) b!469084))

(assert (= (and b!469084 c!56810) b!469082))

(assert (= (and b!469084 (not c!56810)) b!469094))

(assert (= (and b!469094 c!56813) b!469080))

(assert (= (and b!469094 (not c!56813)) b!469093))

(assert (= (or b!469080 b!469093) bm!30374))

(assert (= (or b!469082 bm!30374) bm!30376))

(assert (= (or b!469082 b!469080) bm!30375))

(assert (= (or b!469097 bm!30376) bm!30377))

(assert (= (or b!469097 bm!30375) bm!30378))

(assert (= (and d!75161 res!280385) b!469081))

(assert (= (and d!75161 c!56814) b!469078))

(assert (= (and d!75161 (not c!56814)) b!469085))

(assert (= (and d!75161 res!280388) b!469083))

(assert (= (and b!469083 res!280392) b!469095))

(assert (= (and b!469083 (not res!280390)) b!469090))

(assert (= (and b!469090 res!280386) b!469079))

(assert (= (and b!469083 res!280384) b!469098))

(assert (= (and b!469098 c!56811) b!469092))

(assert (= (and b!469098 (not c!56811)) b!469088))

(assert (= (and b!469092 res!280389) b!469086))

(assert (= (or b!469092 b!469088) bm!30379))

(assert (= (and b!469098 res!280391) b!469089))

(assert (= (and b!469089 c!56815) b!469096))

(assert (= (and b!469089 (not c!56815)) b!469087))

(assert (= (and b!469096 res!280387) b!469091))

(assert (= (or b!469096 b!469087) bm!30380))

(declare-fun b_lambda!10127 () Bool)

(assert (=> (not b_lambda!10127) (not b!469079)))

(assert (=> b!469079 t!14688))

(declare-fun b_and!20017 () Bool)

(assert (= b_and!20015 (and (=> t!14688 result!7417) b_and!20017)))

(declare-fun m!451195 () Bool)

(assert (=> b!469091 m!451195))

(assert (=> d!75161 m!451073))

(declare-fun m!451197 () Bool)

(assert (=> b!469078 m!451197))

(declare-fun m!451199 () Bool)

(assert (=> b!469078 m!451199))

(declare-fun m!451201 () Bool)

(assert (=> b!469078 m!451201))

(declare-fun m!451203 () Bool)

(assert (=> b!469078 m!451203))

(declare-fun m!451205 () Bool)

(assert (=> b!469078 m!451205))

(assert (=> b!469078 m!451133))

(declare-fun m!451207 () Bool)

(assert (=> b!469078 m!451207))

(declare-fun m!451209 () Bool)

(assert (=> b!469078 m!451209))

(declare-fun m!451211 () Bool)

(assert (=> b!469078 m!451211))

(assert (=> b!469078 m!451199))

(declare-fun m!451213 () Bool)

(assert (=> b!469078 m!451213))

(assert (=> b!469078 m!451211))

(declare-fun m!451215 () Bool)

(assert (=> b!469078 m!451215))

(declare-fun m!451217 () Bool)

(assert (=> b!469078 m!451217))

(declare-fun m!451219 () Bool)

(assert (=> b!469078 m!451219))

(assert (=> b!469078 m!451207))

(declare-fun m!451221 () Bool)

(assert (=> b!469078 m!451221))

(assert (=> b!469078 m!451097))

(declare-fun m!451223 () Bool)

(assert (=> b!469078 m!451223))

(declare-fun m!451225 () Bool)

(assert (=> b!469078 m!451225))

(assert (=> b!469078 m!451217))

(assert (=> b!469081 m!451133))

(assert (=> b!469081 m!451133))

(assert (=> b!469081 m!451153))

(declare-fun m!451227 () Bool)

(assert (=> bm!30379 m!451227))

(declare-fun m!451229 () Bool)

(assert (=> bm!30378 m!451229))

(declare-fun m!451231 () Bool)

(assert (=> bm!30380 m!451231))

(assert (=> b!469079 m!451145))

(assert (=> b!469079 m!451147))

(assert (=> b!469079 m!451149))

(assert (=> b!469079 m!451145))

(assert (=> b!469079 m!451133))

(declare-fun m!451233 () Bool)

(assert (=> b!469079 m!451233))

(assert (=> b!469079 m!451147))

(assert (=> b!469079 m!451133))

(assert (=> b!469090 m!451133))

(assert (=> b!469090 m!451133))

(declare-fun m!451235 () Bool)

(assert (=> b!469090 m!451235))

(declare-fun m!451237 () Bool)

(assert (=> b!469086 m!451237))

(assert (=> bm!30377 m!451097))

(assert (=> b!469095 m!451133))

(assert (=> b!469095 m!451133))

(assert (=> b!469095 m!451153))

(declare-fun m!451239 () Bool)

(assert (=> b!469097 m!451239))

(assert (=> b!468929 d!75161))

(declare-fun d!75163 () Bool)

(declare-fun e!274669 () Bool)

(assert (=> d!75163 e!274669))

(declare-fun res!280398 () Bool)

(assert (=> d!75163 (=> (not res!280398) (not e!274669))))

(declare-fun lt!212544 () ListLongMap!7525)

(assert (=> d!75163 (= res!280398 (contains!2537 lt!212544 (_1!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!212543 () List!8718)

(assert (=> d!75163 (= lt!212544 (ListLongMap!7526 lt!212543))))

(declare-fun lt!212541 () Unit!13678)

(declare-fun lt!212542 () Unit!13678)

(assert (=> d!75163 (= lt!212541 lt!212542)))

(declare-datatypes ((Option!383 0))(
  ( (Some!382 (v!8840 V!18461)) (None!381) )
))
(declare-fun getValueByKey!377 (List!8718 (_ BitVec 64)) Option!383)

(assert (=> d!75163 (= (getValueByKey!377 lt!212543 (_1!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!382 (_2!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lemmaContainsTupThenGetReturnValue!201 (List!8718 (_ BitVec 64) V!18461) Unit!13678)

(assert (=> d!75163 (= lt!212542 (lemmaContainsTupThenGetReturnValue!201 lt!212543 (_1!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun insertStrictlySorted!203 (List!8718 (_ BitVec 64) V!18461) List!8718)

(assert (=> d!75163 (= lt!212543 (insertStrictlySorted!203 (toList!3778 lt!212402) (_1!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75163 (= (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212544)))

(declare-fun b!469103 () Bool)

(declare-fun res!280397 () Bool)

(assert (=> b!469103 (=> (not res!280397) (not e!274669))))

(assert (=> b!469103 (= res!280397 (= (getValueByKey!377 (toList!3778 lt!212544) (_1!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!382 (_2!4309 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!469104 () Bool)

(declare-fun contains!2539 (List!8718 tuple2!8598) Bool)

(assert (=> b!469104 (= e!274669 (contains!2539 (toList!3778 lt!212544) (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75163 res!280398) b!469103))

(assert (= (and b!469103 res!280397) b!469104))

(declare-fun m!451241 () Bool)

(assert (=> d!75163 m!451241))

(declare-fun m!451243 () Bool)

(assert (=> d!75163 m!451243))

(declare-fun m!451245 () Bool)

(assert (=> d!75163 m!451245))

(declare-fun m!451247 () Bool)

(assert (=> d!75163 m!451247))

(declare-fun m!451249 () Bool)

(assert (=> b!469103 m!451249))

(declare-fun m!451251 () Bool)

(assert (=> b!469104 m!451251))

(assert (=> b!468929 d!75163))

(declare-fun d!75165 () Bool)

(assert (=> d!75165 (= (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1666 (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!212547 () Unit!13678)

(declare-fun choose!1352 (ListLongMap!7525 (_ BitVec 64) V!18461 V!18461) Unit!13678)

(assert (=> d!75165 (= lt!212547 (choose!1352 lt!212402 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75165 (= (addSameAsAddTwiceSameKeyDiffValues!107 lt!212402 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!212547)))

(declare-fun bs!14859 () Bool)

(assert (= bs!14859 d!75165))

(declare-fun m!451253 () Bool)

(assert (=> bs!14859 m!451253))

(assert (=> bs!14859 m!451081))

(assert (=> bs!14859 m!451081))

(declare-fun m!451255 () Bool)

(assert (=> bs!14859 m!451255))

(declare-fun m!451257 () Bool)

(assert (=> bs!14859 m!451257))

(assert (=> b!468929 d!75165))

(declare-fun d!75167 () Bool)

(declare-fun e!274670 () Bool)

(assert (=> d!75167 e!274670))

(declare-fun res!280400 () Bool)

(assert (=> d!75167 (=> (not res!280400) (not e!274670))))

(declare-fun lt!212551 () ListLongMap!7525)

(assert (=> d!75167 (= res!280400 (contains!2537 lt!212551 (_1!4309 lt!212405)))))

(declare-fun lt!212550 () List!8718)

(assert (=> d!75167 (= lt!212551 (ListLongMap!7526 lt!212550))))

(declare-fun lt!212548 () Unit!13678)

(declare-fun lt!212549 () Unit!13678)

(assert (=> d!75167 (= lt!212548 lt!212549)))

(assert (=> d!75167 (= (getValueByKey!377 lt!212550 (_1!4309 lt!212405)) (Some!382 (_2!4309 lt!212405)))))

(assert (=> d!75167 (= lt!212549 (lemmaContainsTupThenGetReturnValue!201 lt!212550 (_1!4309 lt!212405) (_2!4309 lt!212405)))))

(assert (=> d!75167 (= lt!212550 (insertStrictlySorted!203 (toList!3778 lt!212402) (_1!4309 lt!212405) (_2!4309 lt!212405)))))

(assert (=> d!75167 (= (+!1666 lt!212402 lt!212405) lt!212551)))

(declare-fun b!469105 () Bool)

(declare-fun res!280399 () Bool)

(assert (=> b!469105 (=> (not res!280399) (not e!274670))))

(assert (=> b!469105 (= res!280399 (= (getValueByKey!377 (toList!3778 lt!212551) (_1!4309 lt!212405)) (Some!382 (_2!4309 lt!212405))))))

(declare-fun b!469106 () Bool)

(assert (=> b!469106 (= e!274670 (contains!2539 (toList!3778 lt!212551) lt!212405))))

(assert (= (and d!75167 res!280400) b!469105))

(assert (= (and b!469105 res!280399) b!469106))

(declare-fun m!451259 () Bool)

(assert (=> d!75167 m!451259))

(declare-fun m!451261 () Bool)

(assert (=> d!75167 m!451261))

(declare-fun m!451263 () Bool)

(assert (=> d!75167 m!451263))

(declare-fun m!451265 () Bool)

(assert (=> d!75167 m!451265))

(declare-fun m!451267 () Bool)

(assert (=> b!469105 m!451267))

(declare-fun m!451269 () Bool)

(assert (=> b!469106 m!451269))

(assert (=> b!468929 d!75167))

(declare-fun b!469107 () Bool)

(declare-fun e!274676 () Unit!13678)

(declare-fun lt!212559 () Unit!13678)

(assert (=> b!469107 (= e!274676 lt!212559)))

(declare-fun lt!212555 () ListLongMap!7525)

(assert (=> b!469107 (= lt!212555 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212568 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212568 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212562 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212562 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212571 () Unit!13678)

(assert (=> b!469107 (= lt!212571 (addStillContains!288 lt!212555 lt!212568 zeroValue!794 lt!212562))))

(assert (=> b!469107 (contains!2537 (+!1666 lt!212555 (tuple2!8599 lt!212568 zeroValue!794)) lt!212562)))

(declare-fun lt!212552 () Unit!13678)

(assert (=> b!469107 (= lt!212552 lt!212571)))

(declare-fun lt!212556 () ListLongMap!7525)

(assert (=> b!469107 (= lt!212556 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212573 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212573 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212569 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212569 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212563 () Unit!13678)

(assert (=> b!469107 (= lt!212563 (addApplyDifferent!288 lt!212556 lt!212573 minValueBefore!38 lt!212569))))

(assert (=> b!469107 (= (apply!326 (+!1666 lt!212556 (tuple2!8599 lt!212573 minValueBefore!38)) lt!212569) (apply!326 lt!212556 lt!212569))))

(declare-fun lt!212558 () Unit!13678)

(assert (=> b!469107 (= lt!212558 lt!212563)))

(declare-fun lt!212553 () ListLongMap!7525)

(assert (=> b!469107 (= lt!212553 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212567 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212567 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212566 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212566 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!212554 () Unit!13678)

(assert (=> b!469107 (= lt!212554 (addApplyDifferent!288 lt!212553 lt!212567 zeroValue!794 lt!212566))))

(assert (=> b!469107 (= (apply!326 (+!1666 lt!212553 (tuple2!8599 lt!212567 zeroValue!794)) lt!212566) (apply!326 lt!212553 lt!212566))))

(declare-fun lt!212564 () Unit!13678)

(assert (=> b!469107 (= lt!212564 lt!212554)))

(declare-fun lt!212565 () ListLongMap!7525)

(assert (=> b!469107 (= lt!212565 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212572 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212572 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!212560 () (_ BitVec 64))

(assert (=> b!469107 (= lt!212560 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!469107 (= lt!212559 (addApplyDifferent!288 lt!212565 lt!212572 minValueBefore!38 lt!212560))))

(assert (=> b!469107 (= (apply!326 (+!1666 lt!212565 (tuple2!8599 lt!212572 minValueBefore!38)) lt!212560) (apply!326 lt!212565 lt!212560))))

(declare-fun e!274677 () Bool)

(declare-fun b!469108 () Bool)

(declare-fun lt!212557 () ListLongMap!7525)

(assert (=> b!469108 (= e!274677 (= (apply!326 lt!212557 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)) (get!7006 (select (arr!14307 _values!833) #b00000000000000000000000000000000) (dynLambda!918 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!469108 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14659 _values!833)))))

(assert (=> b!469108 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469109 () Bool)

(declare-fun e!274673 () ListLongMap!7525)

(declare-fun call!30385 () ListLongMap!7525)

(assert (=> b!469109 (= e!274673 call!30385)))

(declare-fun b!469110 () Bool)

(declare-fun e!274682 () Bool)

(assert (=> b!469110 (= e!274682 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469111 () Bool)

(declare-fun e!274680 () ListLongMap!7525)

(assert (=> b!469111 (= e!274680 call!30385)))

(declare-fun b!469112 () Bool)

(declare-fun res!280401 () Bool)

(declare-fun e!274679 () Bool)

(assert (=> b!469112 (=> (not res!280401) (not e!274679))))

(declare-fun e!274681 () Bool)

(assert (=> b!469112 (= res!280401 e!274681)))

(declare-fun res!280407 () Bool)

(assert (=> b!469112 (=> res!280407 e!274681)))

(declare-fun e!274683 () Bool)

(assert (=> b!469112 (= res!280407 (not e!274683))))

(declare-fun res!280409 () Bool)

(assert (=> b!469112 (=> (not res!280409) (not e!274683))))

(assert (=> b!469112 (= res!280409 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469113 () Bool)

(declare-fun e!274672 () ListLongMap!7525)

(assert (=> b!469113 (= e!274672 e!274680)))

(declare-fun c!56816 () Bool)

(assert (=> b!469113 (= c!56816 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30381 () Bool)

(declare-fun call!30390 () ListLongMap!7525)

(declare-fun call!30389 () ListLongMap!7525)

(assert (=> bm!30381 (= call!30390 call!30389)))

(declare-fun b!469115 () Bool)

(declare-fun e!274674 () Bool)

(assert (=> b!469115 (= e!274674 (= (apply!326 lt!212557 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!469116 () Bool)

(declare-fun e!274675 () Bool)

(declare-fun call!30387 () Bool)

(assert (=> b!469116 (= e!274675 (not call!30387))))

(declare-fun b!469117 () Bool)

(declare-fun e!274678 () Bool)

(declare-fun call!30386 () Bool)

(assert (=> b!469117 (= e!274678 (not call!30386))))

(declare-fun b!469118 () Bool)

(assert (=> b!469118 (= e!274679 e!274675)))

(declare-fun c!56821 () Bool)

(assert (=> b!469118 (= c!56821 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30382 () Bool)

(declare-fun call!30384 () ListLongMap!7525)

(assert (=> bm!30382 (= call!30385 call!30384)))

(declare-fun bm!30383 () Bool)

(declare-fun call!30388 () ListLongMap!7525)

(assert (=> bm!30383 (= call!30389 call!30388)))

(declare-fun bm!30384 () Bool)

(assert (=> bm!30384 (= call!30388 (getCurrentListMapNoExtraKeys!1942 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469119 () Bool)

(assert (=> b!469119 (= e!274681 e!274677)))

(declare-fun res!280403 () Bool)

(assert (=> b!469119 (=> (not res!280403) (not e!274677))))

(assert (=> b!469119 (= res!280403 (contains!2537 lt!212557 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!469119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(declare-fun b!469120 () Bool)

(declare-fun e!274671 () Bool)

(assert (=> b!469120 (= e!274671 (= (apply!326 lt!212557 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!469121 () Bool)

(assert (=> b!469121 (= e!274678 e!274674)))

(declare-fun res!280406 () Bool)

(assert (=> b!469121 (= res!280406 call!30386)))

(assert (=> b!469121 (=> (not res!280406) (not e!274674))))

(declare-fun c!56818 () Bool)

(declare-fun bm!30385 () Bool)

(assert (=> bm!30385 (= call!30384 (+!1666 (ite c!56818 call!30388 (ite c!56816 call!30389 call!30390)) (ite (or c!56818 c!56816) (tuple2!8599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!469122 () Bool)

(assert (=> b!469122 (= e!274673 call!30390)))

(declare-fun b!469123 () Bool)

(declare-fun c!56819 () Bool)

(assert (=> b!469123 (= c!56819 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!469123 (= e!274680 e!274673)))

(declare-fun bm!30386 () Bool)

(assert (=> bm!30386 (= call!30386 (contains!2537 lt!212557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469124 () Bool)

(assert (=> b!469124 (= e!274683 (validKeyInArray!0 (select (arr!14306 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!469125 () Bool)

(assert (=> b!469125 (= e!274675 e!274671)))

(declare-fun res!280404 () Bool)

(assert (=> b!469125 (= res!280404 call!30387)))

(assert (=> b!469125 (=> (not res!280404) (not e!274671))))

(declare-fun bm!30387 () Bool)

(assert (=> bm!30387 (= call!30387 (contains!2537 lt!212557 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!469114 () Bool)

(declare-fun Unit!13683 () Unit!13678)

(assert (=> b!469114 (= e!274676 Unit!13683)))

(declare-fun d!75169 () Bool)

(assert (=> d!75169 e!274679))

(declare-fun res!280405 () Bool)

(assert (=> d!75169 (=> (not res!280405) (not e!274679))))

(assert (=> d!75169 (= res!280405 (or (bvsge #b00000000000000000000000000000000 (size!14658 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))))

(declare-fun lt!212561 () ListLongMap!7525)

(assert (=> d!75169 (= lt!212557 lt!212561)))

(declare-fun lt!212570 () Unit!13678)

(assert (=> d!75169 (= lt!212570 e!274676)))

(declare-fun c!56820 () Bool)

(assert (=> d!75169 (= c!56820 e!274682)))

(declare-fun res!280402 () Bool)

(assert (=> d!75169 (=> (not res!280402) (not e!274682))))

(assert (=> d!75169 (= res!280402 (bvslt #b00000000000000000000000000000000 (size!14658 _keys!1025)))))

(assert (=> d!75169 (= lt!212561 e!274672)))

(assert (=> d!75169 (= c!56818 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75169 (validMask!0 mask!1365)))

(assert (=> d!75169 (= (getCurrentListMap!2188 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!212557)))

(declare-fun b!469126 () Bool)

(assert (=> b!469126 (= e!274672 (+!1666 call!30384 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!469127 () Bool)

(declare-fun res!280408 () Bool)

(assert (=> b!469127 (=> (not res!280408) (not e!274679))))

(assert (=> b!469127 (= res!280408 e!274678)))

(declare-fun c!56817 () Bool)

(assert (=> b!469127 (= c!56817 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!75169 c!56818) b!469126))

(assert (= (and d!75169 (not c!56818)) b!469113))

(assert (= (and b!469113 c!56816) b!469111))

(assert (= (and b!469113 (not c!56816)) b!469123))

(assert (= (and b!469123 c!56819) b!469109))

(assert (= (and b!469123 (not c!56819)) b!469122))

(assert (= (or b!469109 b!469122) bm!30381))

(assert (= (or b!469111 bm!30381) bm!30383))

(assert (= (or b!469111 b!469109) bm!30382))

(assert (= (or b!469126 bm!30383) bm!30384))

(assert (= (or b!469126 bm!30382) bm!30385))

(assert (= (and d!75169 res!280402) b!469110))

(assert (= (and d!75169 c!56820) b!469107))

(assert (= (and d!75169 (not c!56820)) b!469114))

(assert (= (and d!75169 res!280405) b!469112))

(assert (= (and b!469112 res!280409) b!469124))

(assert (= (and b!469112 (not res!280407)) b!469119))

(assert (= (and b!469119 res!280403) b!469108))

(assert (= (and b!469112 res!280401) b!469127))

(assert (= (and b!469127 c!56817) b!469121))

(assert (= (and b!469127 (not c!56817)) b!469117))

(assert (= (and b!469121 res!280406) b!469115))

(assert (= (or b!469121 b!469117) bm!30386))

(assert (= (and b!469127 res!280408) b!469118))

(assert (= (and b!469118 c!56821) b!469125))

(assert (= (and b!469118 (not c!56821)) b!469116))

(assert (= (and b!469125 res!280404) b!469120))

(assert (= (or b!469125 b!469116) bm!30387))

(declare-fun b_lambda!10129 () Bool)

(assert (=> (not b_lambda!10129) (not b!469108)))

(assert (=> b!469108 t!14688))

(declare-fun b_and!20019 () Bool)

(assert (= b_and!20017 (and (=> t!14688 result!7417) b_and!20019)))

(declare-fun m!451271 () Bool)

(assert (=> b!469120 m!451271))

(assert (=> d!75169 m!451073))

(declare-fun m!451273 () Bool)

(assert (=> b!469107 m!451273))

(declare-fun m!451275 () Bool)

(assert (=> b!469107 m!451275))

(declare-fun m!451277 () Bool)

(assert (=> b!469107 m!451277))

(declare-fun m!451279 () Bool)

(assert (=> b!469107 m!451279))

(declare-fun m!451281 () Bool)

(assert (=> b!469107 m!451281))

(assert (=> b!469107 m!451133))

(declare-fun m!451283 () Bool)

(assert (=> b!469107 m!451283))

(declare-fun m!451285 () Bool)

(assert (=> b!469107 m!451285))

(declare-fun m!451287 () Bool)

(assert (=> b!469107 m!451287))

(assert (=> b!469107 m!451275))

(declare-fun m!451289 () Bool)

(assert (=> b!469107 m!451289))

(assert (=> b!469107 m!451287))

(declare-fun m!451291 () Bool)

(assert (=> b!469107 m!451291))

(declare-fun m!451293 () Bool)

(assert (=> b!469107 m!451293))

(declare-fun m!451295 () Bool)

(assert (=> b!469107 m!451295))

(assert (=> b!469107 m!451283))

(declare-fun m!451297 () Bool)

(assert (=> b!469107 m!451297))

(assert (=> b!469107 m!451099))

(declare-fun m!451299 () Bool)

(assert (=> b!469107 m!451299))

(declare-fun m!451301 () Bool)

(assert (=> b!469107 m!451301))

(assert (=> b!469107 m!451293))

(assert (=> b!469110 m!451133))

(assert (=> b!469110 m!451133))

(assert (=> b!469110 m!451153))

(declare-fun m!451303 () Bool)

(assert (=> bm!30386 m!451303))

(declare-fun m!451305 () Bool)

(assert (=> bm!30385 m!451305))

(declare-fun m!451307 () Bool)

(assert (=> bm!30387 m!451307))

(assert (=> b!469108 m!451145))

(assert (=> b!469108 m!451147))

(assert (=> b!469108 m!451149))

(assert (=> b!469108 m!451145))

(assert (=> b!469108 m!451133))

(declare-fun m!451309 () Bool)

(assert (=> b!469108 m!451309))

(assert (=> b!469108 m!451147))

(assert (=> b!469108 m!451133))

(assert (=> b!469119 m!451133))

(assert (=> b!469119 m!451133))

(declare-fun m!451311 () Bool)

(assert (=> b!469119 m!451311))

(declare-fun m!451313 () Bool)

(assert (=> b!469115 m!451313))

(assert (=> bm!30384 m!451099))

(assert (=> b!469124 m!451133))

(assert (=> b!469124 m!451133))

(assert (=> b!469124 m!451153))

(declare-fun m!451315 () Bool)

(assert (=> b!469126 m!451315))

(assert (=> b!468929 d!75169))

(declare-fun d!75171 () Bool)

(declare-fun e!274684 () Bool)

(assert (=> d!75171 e!274684))

(declare-fun res!280411 () Bool)

(assert (=> d!75171 (=> (not res!280411) (not e!274684))))

(declare-fun lt!212577 () ListLongMap!7525)

(assert (=> d!75171 (= res!280411 (contains!2537 lt!212577 (_1!4309 lt!212405)))))

(declare-fun lt!212576 () List!8718)

(assert (=> d!75171 (= lt!212577 (ListLongMap!7526 lt!212576))))

(declare-fun lt!212574 () Unit!13678)

(declare-fun lt!212575 () Unit!13678)

(assert (=> d!75171 (= lt!212574 lt!212575)))

(assert (=> d!75171 (= (getValueByKey!377 lt!212576 (_1!4309 lt!212405)) (Some!382 (_2!4309 lt!212405)))))

(assert (=> d!75171 (= lt!212575 (lemmaContainsTupThenGetReturnValue!201 lt!212576 (_1!4309 lt!212405) (_2!4309 lt!212405)))))

(assert (=> d!75171 (= lt!212576 (insertStrictlySorted!203 (toList!3778 (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4309 lt!212405) (_2!4309 lt!212405)))))

(assert (=> d!75171 (= (+!1666 (+!1666 lt!212402 (tuple2!8599 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212405) lt!212577)))

(declare-fun b!469128 () Bool)

(declare-fun res!280410 () Bool)

(assert (=> b!469128 (=> (not res!280410) (not e!274684))))

(assert (=> b!469128 (= res!280410 (= (getValueByKey!377 (toList!3778 lt!212577) (_1!4309 lt!212405)) (Some!382 (_2!4309 lt!212405))))))

(declare-fun b!469129 () Bool)

(assert (=> b!469129 (= e!274684 (contains!2539 (toList!3778 lt!212577) lt!212405))))

(assert (= (and d!75171 res!280411) b!469128))

(assert (= (and b!469128 res!280410) b!469129))

(declare-fun m!451317 () Bool)

(assert (=> d!75171 m!451317))

(declare-fun m!451319 () Bool)

(assert (=> d!75171 m!451319))

(declare-fun m!451321 () Bool)

(assert (=> d!75171 m!451321))

(declare-fun m!451323 () Bool)

(assert (=> d!75171 m!451323))

(declare-fun m!451325 () Bool)

(assert (=> b!469128 m!451325))

(declare-fun m!451327 () Bool)

(assert (=> b!469129 m!451327))

(assert (=> b!468929 d!75171))

(declare-fun b!469136 () Bool)

(declare-fun e!274689 () Bool)

(assert (=> b!469136 (= e!274689 tp_is_empty!13017)))

(declare-fun b!469137 () Bool)

(declare-fun e!274690 () Bool)

(assert (=> b!469137 (= e!274690 tp_is_empty!13017)))

(declare-fun condMapEmpty!21226 () Bool)

(declare-fun mapDefault!21226 () ValueCell!6165)

(assert (=> mapNonEmpty!21220 (= condMapEmpty!21226 (= mapRest!21220 ((as const (Array (_ BitVec 32) ValueCell!6165)) mapDefault!21226)))))

(declare-fun mapRes!21226 () Bool)

(assert (=> mapNonEmpty!21220 (= tp!40783 (and e!274690 mapRes!21226))))

(declare-fun mapNonEmpty!21226 () Bool)

(declare-fun tp!40792 () Bool)

(assert (=> mapNonEmpty!21226 (= mapRes!21226 (and tp!40792 e!274689))))

(declare-fun mapValue!21226 () ValueCell!6165)

(declare-fun mapKey!21226 () (_ BitVec 32))

(declare-fun mapRest!21226 () (Array (_ BitVec 32) ValueCell!6165))

(assert (=> mapNonEmpty!21226 (= mapRest!21220 (store mapRest!21226 mapKey!21226 mapValue!21226))))

(declare-fun mapIsEmpty!21226 () Bool)

(assert (=> mapIsEmpty!21226 mapRes!21226))

(assert (= (and mapNonEmpty!21220 condMapEmpty!21226) mapIsEmpty!21226))

(assert (= (and mapNonEmpty!21220 (not condMapEmpty!21226)) mapNonEmpty!21226))

(assert (= (and mapNonEmpty!21226 ((_ is ValueCellFull!6165) mapValue!21226)) b!469136))

(assert (= (and mapNonEmpty!21220 ((_ is ValueCellFull!6165) mapDefault!21226)) b!469137))

(declare-fun m!451329 () Bool)

(assert (=> mapNonEmpty!21226 m!451329))

(declare-fun b_lambda!10131 () Bool)

(assert (= b_lambda!10129 (or (and start!42024 b_free!11589) b_lambda!10131)))

(declare-fun b_lambda!10133 () Bool)

(assert (= b_lambda!10127 (or (and start!42024 b_free!11589) b_lambda!10133)))

(declare-fun b_lambda!10135 () Bool)

(assert (= b_lambda!10119 (or (and start!42024 b_free!11589) b_lambda!10135)))

(declare-fun b_lambda!10137 () Bool)

(assert (= b_lambda!10121 (or (and start!42024 b_free!11589) b_lambda!10137)))

(declare-fun b_lambda!10139 () Bool)

(assert (= b_lambda!10123 (or (and start!42024 b_free!11589) b_lambda!10139)))

(declare-fun b_lambda!10141 () Bool)

(assert (= b_lambda!10125 (or (and start!42024 b_free!11589) b_lambda!10141)))

(check-sat (not b!469086) (not d!75171) (not b!469107) (not bm!30385) (not d!75149) (not b_lambda!10135) (not bm!30379) (not b!469126) (not b!469000) (not b!469031) (not b!468991) (not b!469105) (not b_lambda!10133) (not b!469090) tp_is_empty!13017 (not b_lambda!10137) (not b!469104) (not d!75167) (not b!469119) (not bm!30352) (not bm!30386) (not bm!30356) (not b!469019) (not b_next!11589) (not b!469005) (not b!468997) (not b!468986) (not b!469128) (not d!75161) (not b!469004) (not bm!30384) (not b!469110) (not bm!30353) (not b!468989) (not b!469006) (not b!469120) (not bm!30377) b_and!20019 (not bm!30380) (not b_lambda!10141) (not b!469032) (not b!469129) (not b_lambda!10131) (not b!469035) (not b!468990) (not b!469108) (not b!469020) (not b!468992) (not b!468983) (not b!468985) (not b_lambda!10139) (not b!469124) (not b!469095) (not b!468999) (not b!469115) (not bm!30359) (not b!469079) (not b!469008) (not d!75163) (not d!75165) (not b!468994) (not d!75147) (not d!75169) (not b!469106) (not b!469078) (not bm!30387) (not d!75145) (not b!469091) (not b!469097) (not mapNonEmpty!21226) (not bm!30378) (not b!469003) (not b!469081) (not b!469103))
(check-sat b_and!20019 (not b_next!11589))
