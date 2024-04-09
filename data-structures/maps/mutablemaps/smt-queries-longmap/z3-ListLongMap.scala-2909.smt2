; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41606 () Bool)

(assert start!41606)

(declare-fun b_free!11265 () Bool)

(declare-fun b_next!11265 () Bool)

(assert (=> start!41606 (= b_free!11265 (not b_next!11265))))

(declare-fun tp!39793 () Bool)

(declare-fun b_and!19623 () Bool)

(assert (=> start!41606 (= tp!39793 b_and!19623)))

(declare-fun b!464434 () Bool)

(declare-fun e!271327 () Bool)

(declare-fun tp_is_empty!12693 () Bool)

(assert (=> b!464434 (= e!271327 tp_is_empty!12693)))

(declare-fun res!277737 () Bool)

(declare-fun e!271330 () Bool)

(assert (=> start!41606 (=> (not res!277737) (not e!271330))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41606 (= res!277737 (validMask!0 mask!1365))))

(assert (=> start!41606 e!271330))

(assert (=> start!41606 tp_is_empty!12693))

(assert (=> start!41606 tp!39793))

(assert (=> start!41606 true))

(declare-datatypes ((array!29133 0))(
  ( (array!29134 (arr!13995 (Array (_ BitVec 32) (_ BitVec 64))) (size!14347 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29133)

(declare-fun array_inv!10088 (array!29133) Bool)

(assert (=> start!41606 (array_inv!10088 _keys!1025)))

(declare-datatypes ((V!18029 0))(
  ( (V!18030 (val!6391 Int)) )
))
(declare-datatypes ((ValueCell!6003 0))(
  ( (ValueCellFull!6003 (v!8674 V!18029)) (EmptyCell!6003) )
))
(declare-datatypes ((array!29135 0))(
  ( (array!29136 (arr!13996 (Array (_ BitVec 32) ValueCell!6003)) (size!14348 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29135)

(declare-fun e!271328 () Bool)

(declare-fun array_inv!10089 (array!29135) Bool)

(assert (=> start!41606 (and (array_inv!10089 _values!833) e!271328)))

(declare-fun b!464435 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!464435 (= e!271330 (not (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14347 _keys!1025)))))))

(declare-datatypes ((tuple2!8350 0))(
  ( (tuple2!8351 (_1!4185 (_ BitVec 64)) (_2!4185 V!18029)) )
))
(declare-datatypes ((List!8478 0))(
  ( (Nil!8475) (Cons!8474 (h!9330 tuple2!8350) (t!14432 List!8478)) )
))
(declare-datatypes ((ListLongMap!7277 0))(
  ( (ListLongMap!7278 (toList!3654 List!8478)) )
))
(declare-fun lt!209758 () ListLongMap!7277)

(declare-fun lt!209759 () ListLongMap!7277)

(assert (=> b!464435 (= lt!209758 lt!209759)))

(declare-fun minValueBefore!38 () V!18029)

(declare-fun zeroValue!794 () V!18029)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13429 0))(
  ( (Unit!13430) )
))
(declare-fun lt!209760 () Unit!13429)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18029)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!17 (array!29133 array!29135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18029 V!18029 V!18029 V!18029 (_ BitVec 32) Int) Unit!13429)

(assert (=> b!464435 (= lt!209760 (lemmaNoChangeToArrayThenSameMapNoExtras!17 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1822 (array!29133 array!29135 (_ BitVec 32) (_ BitVec 32) V!18029 V!18029 (_ BitVec 32) Int) ListLongMap!7277)

(assert (=> b!464435 (= lt!209759 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464435 (= lt!209758 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464436 () Bool)

(declare-fun res!277738 () Bool)

(assert (=> b!464436 (=> (not res!277738) (not e!271330))))

(declare-datatypes ((List!8479 0))(
  ( (Nil!8476) (Cons!8475 (h!9331 (_ BitVec 64)) (t!14433 List!8479)) )
))
(declare-fun arrayNoDuplicates!0 (array!29133 (_ BitVec 32) List!8479) Bool)

(assert (=> b!464436 (= res!277738 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8476))))

(declare-fun mapNonEmpty!20716 () Bool)

(declare-fun mapRes!20716 () Bool)

(declare-fun tp!39792 () Bool)

(declare-fun e!271329 () Bool)

(assert (=> mapNonEmpty!20716 (= mapRes!20716 (and tp!39792 e!271329))))

(declare-fun mapKey!20716 () (_ BitVec 32))

(declare-fun mapRest!20716 () (Array (_ BitVec 32) ValueCell!6003))

(declare-fun mapValue!20716 () ValueCell!6003)

(assert (=> mapNonEmpty!20716 (= (arr!13996 _values!833) (store mapRest!20716 mapKey!20716 mapValue!20716))))

(declare-fun mapIsEmpty!20716 () Bool)

(assert (=> mapIsEmpty!20716 mapRes!20716))

(declare-fun b!464437 () Bool)

(assert (=> b!464437 (= e!271328 (and e!271327 mapRes!20716))))

(declare-fun condMapEmpty!20716 () Bool)

(declare-fun mapDefault!20716 () ValueCell!6003)

(assert (=> b!464437 (= condMapEmpty!20716 (= (arr!13996 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6003)) mapDefault!20716)))))

(declare-fun b!464438 () Bool)

(declare-fun res!277739 () Bool)

(assert (=> b!464438 (=> (not res!277739) (not e!271330))))

(assert (=> b!464438 (= res!277739 (and (= (size!14348 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14347 _keys!1025) (size!14348 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464439 () Bool)

(assert (=> b!464439 (= e!271329 tp_is_empty!12693)))

(declare-fun b!464440 () Bool)

(declare-fun res!277736 () Bool)

(assert (=> b!464440 (=> (not res!277736) (not e!271330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29133 (_ BitVec 32)) Bool)

(assert (=> b!464440 (= res!277736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41606 res!277737) b!464438))

(assert (= (and b!464438 res!277739) b!464440))

(assert (= (and b!464440 res!277736) b!464436))

(assert (= (and b!464436 res!277738) b!464435))

(assert (= (and b!464437 condMapEmpty!20716) mapIsEmpty!20716))

(assert (= (and b!464437 (not condMapEmpty!20716)) mapNonEmpty!20716))

(get-info :version)

(assert (= (and mapNonEmpty!20716 ((_ is ValueCellFull!6003) mapValue!20716)) b!464439))

(assert (= (and b!464437 ((_ is ValueCellFull!6003) mapDefault!20716)) b!464434))

(assert (= start!41606 b!464437))

(declare-fun m!446827 () Bool)

(assert (=> start!41606 m!446827))

(declare-fun m!446829 () Bool)

(assert (=> start!41606 m!446829))

(declare-fun m!446831 () Bool)

(assert (=> start!41606 m!446831))

(declare-fun m!446833 () Bool)

(assert (=> mapNonEmpty!20716 m!446833))

(declare-fun m!446835 () Bool)

(assert (=> b!464440 m!446835))

(declare-fun m!446837 () Bool)

(assert (=> b!464436 m!446837))

(declare-fun m!446839 () Bool)

(assert (=> b!464435 m!446839))

(declare-fun m!446841 () Bool)

(assert (=> b!464435 m!446841))

(declare-fun m!446843 () Bool)

(assert (=> b!464435 m!446843))

(check-sat (not b_next!11265) (not b!464436) (not b!464435) (not start!41606) (not b!464440) tp_is_empty!12693 (not mapNonEmpty!20716) b_and!19623)
(check-sat b_and!19623 (not b_next!11265))
(get-model)

(declare-fun d!74927 () Bool)

(assert (=> d!74927 (= (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209772 () Unit!13429)

(declare-fun choose!1345 (array!29133 array!29135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18029 V!18029 V!18029 V!18029 (_ BitVec 32) Int) Unit!13429)

(assert (=> d!74927 (= lt!209772 (choose!1345 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!74927 (validMask!0 mask!1365)))

(assert (=> d!74927 (= (lemmaNoChangeToArrayThenSameMapNoExtras!17 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!209772)))

(declare-fun bs!14690 () Bool)

(assert (= bs!14690 d!74927))

(assert (=> bs!14690 m!446843))

(assert (=> bs!14690 m!446841))

(declare-fun m!446863 () Bool)

(assert (=> bs!14690 m!446863))

(assert (=> bs!14690 m!446827))

(assert (=> b!464435 d!74927))

(declare-fun b!464486 () Bool)

(declare-fun lt!209789 () Unit!13429)

(declare-fun lt!209791 () Unit!13429)

(assert (=> b!464486 (= lt!209789 lt!209791)))

(declare-fun lt!209788 () V!18029)

(declare-fun lt!209793 () (_ BitVec 64))

(declare-fun lt!209792 () ListLongMap!7277)

(declare-fun lt!209787 () (_ BitVec 64))

(declare-fun contains!2523 (ListLongMap!7277 (_ BitVec 64)) Bool)

(declare-fun +!1612 (ListLongMap!7277 tuple2!8350) ListLongMap!7277)

(assert (=> b!464486 (not (contains!2523 (+!1612 lt!209792 (tuple2!8351 lt!209787 lt!209788)) lt!209793))))

(declare-fun addStillNotContains!155 (ListLongMap!7277 (_ BitVec 64) V!18029 (_ BitVec 64)) Unit!13429)

(assert (=> b!464486 (= lt!209791 (addStillNotContains!155 lt!209792 lt!209787 lt!209788 lt!209793))))

(assert (=> b!464486 (= lt!209793 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6892 (ValueCell!6003 V!18029) V!18029)

(declare-fun dynLambda!912 (Int (_ BitVec 64)) V!18029)

(assert (=> b!464486 (= lt!209788 (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!464486 (= lt!209787 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30218 () ListLongMap!7277)

(assert (=> b!464486 (= lt!209792 call!30218)))

(declare-fun e!271364 () ListLongMap!7277)

(assert (=> b!464486 (= e!271364 (+!1612 call!30218 (tuple2!8351 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000) (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!464487 () Bool)

(declare-fun e!271361 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!464487 (= e!271361 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!464487 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!464488 () Bool)

(declare-fun e!271366 () Bool)

(declare-fun e!271365 () Bool)

(assert (=> b!464488 (= e!271366 e!271365)))

(declare-fun c!56589 () Bool)

(assert (=> b!464488 (= c!56589 (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun d!74929 () Bool)

(declare-fun e!271362 () Bool)

(assert (=> d!74929 e!271362))

(declare-fun res!277760 () Bool)

(assert (=> d!74929 (=> (not res!277760) (not e!271362))))

(declare-fun lt!209790 () ListLongMap!7277)

(assert (=> d!74929 (= res!277760 (not (contains!2523 lt!209790 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!271363 () ListLongMap!7277)

(assert (=> d!74929 (= lt!209790 e!271363)))

(declare-fun c!56587 () Bool)

(assert (=> d!74929 (= c!56587 (bvsge #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> d!74929 (validMask!0 mask!1365)))

(assert (=> d!74929 (= (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!209790)))

(declare-fun b!464489 () Bool)

(declare-fun isEmpty!572 (ListLongMap!7277) Bool)

(assert (=> b!464489 (= e!271365 (isEmpty!572 lt!209790))))

(declare-fun b!464490 () Bool)

(assert (=> b!464490 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> b!464490 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14348 _values!833)))))

(declare-fun e!271360 () Bool)

(declare-fun apply!320 (ListLongMap!7277 (_ BitVec 64)) V!18029)

(assert (=> b!464490 (= e!271360 (= (apply!320 lt!209790 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)) (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30215 () Bool)

(assert (=> bm!30215 (= call!30218 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!464491 () Bool)

(assert (=> b!464491 (= e!271364 call!30218)))

(declare-fun b!464492 () Bool)

(assert (=> b!464492 (= e!271363 (ListLongMap!7278 Nil!8475))))

(declare-fun b!464493 () Bool)

(assert (=> b!464493 (= e!271363 e!271364)))

(declare-fun c!56588 () Bool)

(assert (=> b!464493 (= c!56588 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!464494 () Bool)

(assert (=> b!464494 (= e!271366 e!271360)))

(assert (=> b!464494 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun res!277762 () Bool)

(assert (=> b!464494 (= res!277762 (contains!2523 lt!209790 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!464494 (=> (not res!277762) (not e!271360))))

(declare-fun b!464495 () Bool)

(assert (=> b!464495 (= e!271362 e!271366)))

(declare-fun c!56586 () Bool)

(assert (=> b!464495 (= c!56586 e!271361)))

(declare-fun res!277763 () Bool)

(assert (=> b!464495 (=> (not res!277763) (not e!271361))))

(assert (=> b!464495 (= res!277763 (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun b!464496 () Bool)

(assert (=> b!464496 (= e!271365 (= lt!209790 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!464497 () Bool)

(declare-fun res!277761 () Bool)

(assert (=> b!464497 (=> (not res!277761) (not e!271362))))

(assert (=> b!464497 (= res!277761 (not (contains!2523 lt!209790 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74929 c!56587) b!464492))

(assert (= (and d!74929 (not c!56587)) b!464493))

(assert (= (and b!464493 c!56588) b!464486))

(assert (= (and b!464493 (not c!56588)) b!464491))

(assert (= (or b!464486 b!464491) bm!30215))

(assert (= (and d!74929 res!277760) b!464497))

(assert (= (and b!464497 res!277761) b!464495))

(assert (= (and b!464495 res!277763) b!464487))

(assert (= (and b!464495 c!56586) b!464494))

(assert (= (and b!464495 (not c!56586)) b!464488))

(assert (= (and b!464494 res!277762) b!464490))

(assert (= (and b!464488 c!56589) b!464496))

(assert (= (and b!464488 (not c!56589)) b!464489))

(declare-fun b_lambda!10003 () Bool)

(assert (=> (not b_lambda!10003) (not b!464486)))

(declare-fun t!14435 () Bool)

(declare-fun tb!3913 () Bool)

(assert (=> (and start!41606 (= defaultEntry!841 defaultEntry!841) t!14435) tb!3913))

(declare-fun result!7381 () Bool)

(assert (=> tb!3913 (= result!7381 tp_is_empty!12693)))

(assert (=> b!464486 t!14435))

(declare-fun b_and!19627 () Bool)

(assert (= b_and!19623 (and (=> t!14435 result!7381) b_and!19627)))

(declare-fun b_lambda!10005 () Bool)

(assert (=> (not b_lambda!10005) (not b!464490)))

(assert (=> b!464490 t!14435))

(declare-fun b_and!19629 () Bool)

(assert (= b_and!19627 (and (=> t!14435 result!7381) b_and!19629)))

(declare-fun m!446865 () Bool)

(assert (=> b!464497 m!446865))

(declare-fun m!446867 () Bool)

(assert (=> bm!30215 m!446867))

(declare-fun m!446869 () Bool)

(assert (=> b!464494 m!446869))

(assert (=> b!464494 m!446869))

(declare-fun m!446871 () Bool)

(assert (=> b!464494 m!446871))

(declare-fun m!446873 () Bool)

(assert (=> b!464489 m!446873))

(declare-fun m!446875 () Bool)

(assert (=> d!74929 m!446875))

(assert (=> d!74929 m!446827))

(declare-fun m!446877 () Bool)

(assert (=> b!464490 m!446877))

(declare-fun m!446879 () Bool)

(assert (=> b!464490 m!446879))

(declare-fun m!446881 () Bool)

(assert (=> b!464490 m!446881))

(assert (=> b!464490 m!446869))

(assert (=> b!464490 m!446869))

(declare-fun m!446883 () Bool)

(assert (=> b!464490 m!446883))

(assert (=> b!464490 m!446879))

(assert (=> b!464490 m!446877))

(assert (=> b!464487 m!446869))

(assert (=> b!464487 m!446869))

(declare-fun m!446885 () Bool)

(assert (=> b!464487 m!446885))

(declare-fun m!446887 () Bool)

(assert (=> b!464486 m!446887))

(declare-fun m!446889 () Bool)

(assert (=> b!464486 m!446889))

(declare-fun m!446891 () Bool)

(assert (=> b!464486 m!446891))

(assert (=> b!464486 m!446877))

(assert (=> b!464486 m!446879))

(assert (=> b!464486 m!446881))

(assert (=> b!464486 m!446869))

(assert (=> b!464486 m!446891))

(declare-fun m!446893 () Bool)

(assert (=> b!464486 m!446893))

(assert (=> b!464486 m!446879))

(assert (=> b!464486 m!446877))

(assert (=> b!464493 m!446869))

(assert (=> b!464493 m!446869))

(assert (=> b!464493 m!446885))

(assert (=> b!464496 m!446867))

(assert (=> b!464435 d!74929))

(declare-fun b!464500 () Bool)

(declare-fun lt!209796 () Unit!13429)

(declare-fun lt!209798 () Unit!13429)

(assert (=> b!464500 (= lt!209796 lt!209798)))

(declare-fun lt!209794 () (_ BitVec 64))

(declare-fun lt!209799 () ListLongMap!7277)

(declare-fun lt!209800 () (_ BitVec 64))

(declare-fun lt!209795 () V!18029)

(assert (=> b!464500 (not (contains!2523 (+!1612 lt!209799 (tuple2!8351 lt!209794 lt!209795)) lt!209800))))

(assert (=> b!464500 (= lt!209798 (addStillNotContains!155 lt!209799 lt!209794 lt!209795 lt!209800))))

(assert (=> b!464500 (= lt!209800 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!464500 (= lt!209795 (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!464500 (= lt!209794 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30219 () ListLongMap!7277)

(assert (=> b!464500 (= lt!209799 call!30219)))

(declare-fun e!271371 () ListLongMap!7277)

(assert (=> b!464500 (= e!271371 (+!1612 call!30219 (tuple2!8351 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000) (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!464501 () Bool)

(declare-fun e!271368 () Bool)

(assert (=> b!464501 (= e!271368 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!464501 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!464502 () Bool)

(declare-fun e!271373 () Bool)

(declare-fun e!271372 () Bool)

(assert (=> b!464502 (= e!271373 e!271372)))

(declare-fun c!56593 () Bool)

(assert (=> b!464502 (= c!56593 (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun d!74931 () Bool)

(declare-fun e!271369 () Bool)

(assert (=> d!74931 e!271369))

(declare-fun res!277764 () Bool)

(assert (=> d!74931 (=> (not res!277764) (not e!271369))))

(declare-fun lt!209797 () ListLongMap!7277)

(assert (=> d!74931 (= res!277764 (not (contains!2523 lt!209797 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!271370 () ListLongMap!7277)

(assert (=> d!74931 (= lt!209797 e!271370)))

(declare-fun c!56591 () Bool)

(assert (=> d!74931 (= c!56591 (bvsge #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> d!74931 (validMask!0 mask!1365)))

(assert (=> d!74931 (= (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!209797)))

(declare-fun b!464503 () Bool)

(assert (=> b!464503 (= e!271372 (isEmpty!572 lt!209797))))

(declare-fun b!464504 () Bool)

(assert (=> b!464504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> b!464504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14348 _values!833)))))

(declare-fun e!271367 () Bool)

(assert (=> b!464504 (= e!271367 (= (apply!320 lt!209797 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)) (get!6892 (select (arr!13996 _values!833) #b00000000000000000000000000000000) (dynLambda!912 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!30216 () Bool)

(assert (=> bm!30216 (= call!30219 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!464505 () Bool)

(assert (=> b!464505 (= e!271371 call!30219)))

(declare-fun b!464506 () Bool)

(assert (=> b!464506 (= e!271370 (ListLongMap!7278 Nil!8475))))

(declare-fun b!464507 () Bool)

(assert (=> b!464507 (= e!271370 e!271371)))

(declare-fun c!56592 () Bool)

(assert (=> b!464507 (= c!56592 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!464508 () Bool)

(assert (=> b!464508 (= e!271373 e!271367)))

(assert (=> b!464508 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun res!277766 () Bool)

(assert (=> b!464508 (= res!277766 (contains!2523 lt!209797 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!464508 (=> (not res!277766) (not e!271367))))

(declare-fun b!464509 () Bool)

(assert (=> b!464509 (= e!271369 e!271373)))

(declare-fun c!56590 () Bool)

(assert (=> b!464509 (= c!56590 e!271368)))

(declare-fun res!277767 () Bool)

(assert (=> b!464509 (=> (not res!277767) (not e!271368))))

(assert (=> b!464509 (= res!277767 (bvslt #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(declare-fun b!464510 () Bool)

(assert (=> b!464510 (= e!271372 (= lt!209797 (getCurrentListMapNoExtraKeys!1822 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!464511 () Bool)

(declare-fun res!277765 () Bool)

(assert (=> b!464511 (=> (not res!277765) (not e!271369))))

(assert (=> b!464511 (= res!277765 (not (contains!2523 lt!209797 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74931 c!56591) b!464506))

(assert (= (and d!74931 (not c!56591)) b!464507))

(assert (= (and b!464507 c!56592) b!464500))

(assert (= (and b!464507 (not c!56592)) b!464505))

(assert (= (or b!464500 b!464505) bm!30216))

(assert (= (and d!74931 res!277764) b!464511))

(assert (= (and b!464511 res!277765) b!464509))

(assert (= (and b!464509 res!277767) b!464501))

(assert (= (and b!464509 c!56590) b!464508))

(assert (= (and b!464509 (not c!56590)) b!464502))

(assert (= (and b!464508 res!277766) b!464504))

(assert (= (and b!464502 c!56593) b!464510))

(assert (= (and b!464502 (not c!56593)) b!464503))

(declare-fun b_lambda!10007 () Bool)

(assert (=> (not b_lambda!10007) (not b!464500)))

(assert (=> b!464500 t!14435))

(declare-fun b_and!19631 () Bool)

(assert (= b_and!19629 (and (=> t!14435 result!7381) b_and!19631)))

(declare-fun b_lambda!10009 () Bool)

(assert (=> (not b_lambda!10009) (not b!464504)))

(assert (=> b!464504 t!14435))

(declare-fun b_and!19633 () Bool)

(assert (= b_and!19631 (and (=> t!14435 result!7381) b_and!19633)))

(declare-fun m!446895 () Bool)

(assert (=> b!464511 m!446895))

(declare-fun m!446897 () Bool)

(assert (=> bm!30216 m!446897))

(assert (=> b!464508 m!446869))

(assert (=> b!464508 m!446869))

(declare-fun m!446899 () Bool)

(assert (=> b!464508 m!446899))

(declare-fun m!446901 () Bool)

(assert (=> b!464503 m!446901))

(declare-fun m!446903 () Bool)

(assert (=> d!74931 m!446903))

(assert (=> d!74931 m!446827))

(assert (=> b!464504 m!446877))

(assert (=> b!464504 m!446879))

(assert (=> b!464504 m!446881))

(assert (=> b!464504 m!446869))

(assert (=> b!464504 m!446869))

(declare-fun m!446905 () Bool)

(assert (=> b!464504 m!446905))

(assert (=> b!464504 m!446879))

(assert (=> b!464504 m!446877))

(assert (=> b!464501 m!446869))

(assert (=> b!464501 m!446869))

(assert (=> b!464501 m!446885))

(declare-fun m!446907 () Bool)

(assert (=> b!464500 m!446907))

(declare-fun m!446909 () Bool)

(assert (=> b!464500 m!446909))

(declare-fun m!446911 () Bool)

(assert (=> b!464500 m!446911))

(assert (=> b!464500 m!446877))

(assert (=> b!464500 m!446879))

(assert (=> b!464500 m!446881))

(assert (=> b!464500 m!446869))

(assert (=> b!464500 m!446911))

(declare-fun m!446913 () Bool)

(assert (=> b!464500 m!446913))

(assert (=> b!464500 m!446879))

(assert (=> b!464500 m!446877))

(assert (=> b!464507 m!446869))

(assert (=> b!464507 m!446869))

(assert (=> b!464507 m!446885))

(assert (=> b!464510 m!446897))

(assert (=> b!464435 d!74931))

(declare-fun bm!30219 () Bool)

(declare-fun call!30222 () Bool)

(declare-fun c!56596 () Bool)

(assert (=> bm!30219 (= call!30222 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56596 (Cons!8475 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000) Nil!8476) Nil!8476)))))

(declare-fun b!464523 () Bool)

(declare-fun e!271382 () Bool)

(declare-fun e!271383 () Bool)

(assert (=> b!464523 (= e!271382 e!271383)))

(assert (=> b!464523 (= c!56596 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!464524 () Bool)

(assert (=> b!464524 (= e!271383 call!30222)))

(declare-fun b!464525 () Bool)

(assert (=> b!464525 (= e!271383 call!30222)))

(declare-fun b!464526 () Bool)

(declare-fun e!271385 () Bool)

(assert (=> b!464526 (= e!271385 e!271382)))

(declare-fun res!277776 () Bool)

(assert (=> b!464526 (=> (not res!277776) (not e!271382))))

(declare-fun e!271384 () Bool)

(assert (=> b!464526 (= res!277776 (not e!271384))))

(declare-fun res!277774 () Bool)

(assert (=> b!464526 (=> (not res!277774) (not e!271384))))

(assert (=> b!464526 (= res!277774 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!464522 () Bool)

(declare-fun contains!2524 (List!8479 (_ BitVec 64)) Bool)

(assert (=> b!464522 (= e!271384 (contains!2524 Nil!8476 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74933 () Bool)

(declare-fun res!277775 () Bool)

(assert (=> d!74933 (=> res!277775 e!271385)))

(assert (=> d!74933 (= res!277775 (bvsge #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> d!74933 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8476) e!271385)))

(assert (= (and d!74933 (not res!277775)) b!464526))

(assert (= (and b!464526 res!277774) b!464522))

(assert (= (and b!464526 res!277776) b!464523))

(assert (= (and b!464523 c!56596) b!464525))

(assert (= (and b!464523 (not c!56596)) b!464524))

(assert (= (or b!464525 b!464524) bm!30219))

(assert (=> bm!30219 m!446869))

(declare-fun m!446915 () Bool)

(assert (=> bm!30219 m!446915))

(assert (=> b!464523 m!446869))

(assert (=> b!464523 m!446869))

(assert (=> b!464523 m!446885))

(assert (=> b!464526 m!446869))

(assert (=> b!464526 m!446869))

(assert (=> b!464526 m!446885))

(assert (=> b!464522 m!446869))

(assert (=> b!464522 m!446869))

(declare-fun m!446917 () Bool)

(assert (=> b!464522 m!446917))

(assert (=> b!464436 d!74933))

(declare-fun d!74935 () Bool)

(assert (=> d!74935 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41606 d!74935))

(declare-fun d!74937 () Bool)

(assert (=> d!74937 (= (array_inv!10088 _keys!1025) (bvsge (size!14347 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41606 d!74937))

(declare-fun d!74939 () Bool)

(assert (=> d!74939 (= (array_inv!10089 _values!833) (bvsge (size!14348 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41606 d!74939))

(declare-fun bm!30222 () Bool)

(declare-fun call!30225 () Bool)

(assert (=> bm!30222 (= call!30225 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!464535 () Bool)

(declare-fun e!271392 () Bool)

(assert (=> b!464535 (= e!271392 call!30225)))

(declare-fun b!464536 () Bool)

(declare-fun e!271393 () Bool)

(assert (=> b!464536 (= e!271393 e!271392)))

(declare-fun c!56599 () Bool)

(assert (=> b!464536 (= c!56599 (validKeyInArray!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!464537 () Bool)

(declare-fun e!271394 () Bool)

(assert (=> b!464537 (= e!271394 call!30225)))

(declare-fun d!74941 () Bool)

(declare-fun res!277782 () Bool)

(assert (=> d!74941 (=> res!277782 e!271393)))

(assert (=> d!74941 (= res!277782 (bvsge #b00000000000000000000000000000000 (size!14347 _keys!1025)))))

(assert (=> d!74941 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!271393)))

(declare-fun b!464538 () Bool)

(assert (=> b!464538 (= e!271392 e!271394)))

(declare-fun lt!209808 () (_ BitVec 64))

(assert (=> b!464538 (= lt!209808 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!209807 () Unit!13429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29133 (_ BitVec 64) (_ BitVec 32)) Unit!13429)

(assert (=> b!464538 (= lt!209807 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209808 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!464538 (arrayContainsKey!0 _keys!1025 lt!209808 #b00000000000000000000000000000000)))

(declare-fun lt!209809 () Unit!13429)

(assert (=> b!464538 (= lt!209809 lt!209807)))

(declare-fun res!277781 () Bool)

(declare-datatypes ((SeekEntryResult!3532 0))(
  ( (MissingZero!3532 (index!16307 (_ BitVec 32))) (Found!3532 (index!16308 (_ BitVec 32))) (Intermediate!3532 (undefined!4344 Bool) (index!16309 (_ BitVec 32)) (x!43399 (_ BitVec 32))) (Undefined!3532) (MissingVacant!3532 (index!16310 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29133 (_ BitVec 32)) SeekEntryResult!3532)

(assert (=> b!464538 (= res!277781 (= (seekEntryOrOpen!0 (select (arr!13995 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3532 #b00000000000000000000000000000000)))))

(assert (=> b!464538 (=> (not res!277781) (not e!271394))))

(assert (= (and d!74941 (not res!277782)) b!464536))

(assert (= (and b!464536 c!56599) b!464538))

(assert (= (and b!464536 (not c!56599)) b!464535))

(assert (= (and b!464538 res!277781) b!464537))

(assert (= (or b!464537 b!464535) bm!30222))

(declare-fun m!446919 () Bool)

(assert (=> bm!30222 m!446919))

(assert (=> b!464536 m!446869))

(assert (=> b!464536 m!446869))

(assert (=> b!464536 m!446885))

(assert (=> b!464538 m!446869))

(declare-fun m!446921 () Bool)

(assert (=> b!464538 m!446921))

(declare-fun m!446923 () Bool)

(assert (=> b!464538 m!446923))

(assert (=> b!464538 m!446869))

(declare-fun m!446925 () Bool)

(assert (=> b!464538 m!446925))

(assert (=> b!464440 d!74941))

(declare-fun condMapEmpty!20722 () Bool)

(declare-fun mapDefault!20722 () ValueCell!6003)

(assert (=> mapNonEmpty!20716 (= condMapEmpty!20722 (= mapRest!20716 ((as const (Array (_ BitVec 32) ValueCell!6003)) mapDefault!20722)))))

(declare-fun e!271400 () Bool)

(declare-fun mapRes!20722 () Bool)

(assert (=> mapNonEmpty!20716 (= tp!39792 (and e!271400 mapRes!20722))))

(declare-fun mapNonEmpty!20722 () Bool)

(declare-fun tp!39802 () Bool)

(declare-fun e!271399 () Bool)

(assert (=> mapNonEmpty!20722 (= mapRes!20722 (and tp!39802 e!271399))))

(declare-fun mapValue!20722 () ValueCell!6003)

(declare-fun mapKey!20722 () (_ BitVec 32))

(declare-fun mapRest!20722 () (Array (_ BitVec 32) ValueCell!6003))

(assert (=> mapNonEmpty!20722 (= mapRest!20716 (store mapRest!20722 mapKey!20722 mapValue!20722))))

(declare-fun b!464546 () Bool)

(assert (=> b!464546 (= e!271400 tp_is_empty!12693)))

(declare-fun mapIsEmpty!20722 () Bool)

(assert (=> mapIsEmpty!20722 mapRes!20722))

(declare-fun b!464545 () Bool)

(assert (=> b!464545 (= e!271399 tp_is_empty!12693)))

(assert (= (and mapNonEmpty!20716 condMapEmpty!20722) mapIsEmpty!20722))

(assert (= (and mapNonEmpty!20716 (not condMapEmpty!20722)) mapNonEmpty!20722))

(assert (= (and mapNonEmpty!20722 ((_ is ValueCellFull!6003) mapValue!20722)) b!464545))

(assert (= (and mapNonEmpty!20716 ((_ is ValueCellFull!6003) mapDefault!20722)) b!464546))

(declare-fun m!446927 () Bool)

(assert (=> mapNonEmpty!20722 m!446927))

(declare-fun b_lambda!10011 () Bool)

(assert (= b_lambda!10005 (or (and start!41606 b_free!11265) b_lambda!10011)))

(declare-fun b_lambda!10013 () Bool)

(assert (= b_lambda!10009 (or (and start!41606 b_free!11265) b_lambda!10013)))

(declare-fun b_lambda!10015 () Bool)

(assert (= b_lambda!10003 (or (and start!41606 b_free!11265) b_lambda!10015)))

(declare-fun b_lambda!10017 () Bool)

(assert (= b_lambda!10007 (or (and start!41606 b_free!11265) b_lambda!10017)))

(check-sat (not b!464489) (not b_lambda!10017) (not d!74927) (not b!464487) (not b!464511) (not bm!30215) (not bm!30216) (not b!464500) (not b!464501) (not d!74931) (not b!464526) b_and!19633 (not d!74929) (not b_next!11265) (not b!464522) (not b!464508) (not b!464536) (not b!464496) (not bm!30222) (not b!464497) (not b!464494) (not b!464504) (not b!464503) (not b!464507) (not b_lambda!10011) (not b!464510) (not b_lambda!10015) (not bm!30219) (not b!464523) (not b_lambda!10013) (not b!464486) (not b!464538) (not mapNonEmpty!20722) tp_is_empty!12693 (not b!464493) (not b!464490))
(check-sat b_and!19633 (not b_next!11265))
