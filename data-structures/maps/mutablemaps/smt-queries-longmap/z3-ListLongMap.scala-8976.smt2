; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108640 () Bool)

(assert start!108640)

(declare-fun b_free!28131 () Bool)

(declare-fun b_next!28131 () Bool)

(assert (=> start!108640 (= b_free!28131 (not b_next!28131))))

(declare-fun tp!99507 () Bool)

(declare-fun b_and!46205 () Bool)

(assert (=> start!108640 (= tp!99507 b_and!46205)))

(declare-fun b!1281898 () Bool)

(declare-fun e!732447 () Bool)

(declare-fun tp_is_empty!33771 () Bool)

(assert (=> b!1281898 (= e!732447 tp_is_empty!33771)))

(declare-fun b!1281899 () Bool)

(declare-fun res!851599 () Bool)

(declare-fun e!732445 () Bool)

(assert (=> b!1281899 (=> (not res!851599) (not e!732445))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84565 0))(
  ( (array!84566 (arr!40781 (Array (_ BitVec 32) (_ BitVec 64))) (size!41332 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84565)

(assert (=> b!1281899 (= res!851599 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41332 _keys!1741))))))

(declare-fun mapNonEmpty!52211 () Bool)

(declare-fun mapRes!52211 () Bool)

(declare-fun tp!99506 () Bool)

(declare-fun e!732448 () Bool)

(assert (=> mapNonEmpty!52211 (= mapRes!52211 (and tp!99506 e!732448))))

(declare-datatypes ((V!50131 0))(
  ( (V!50132 (val!16960 Int)) )
))
(declare-datatypes ((ValueCell!15987 0))(
  ( (ValueCellFull!15987 (v!19559 V!50131)) (EmptyCell!15987) )
))
(declare-fun mapValue!52211 () ValueCell!15987)

(declare-datatypes ((array!84567 0))(
  ( (array!84568 (arr!40782 (Array (_ BitVec 32) ValueCell!15987)) (size!41333 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84567)

(declare-fun mapRest!52211 () (Array (_ BitVec 32) ValueCell!15987))

(declare-fun mapKey!52211 () (_ BitVec 32))

(assert (=> mapNonEmpty!52211 (= (arr!40782 _values!1445) (store mapRest!52211 mapKey!52211 mapValue!52211))))

(declare-fun res!851600 () Bool)

(assert (=> start!108640 (=> (not res!851600) (not e!732445))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108640 (= res!851600 (validMask!0 mask!2175))))

(assert (=> start!108640 e!732445))

(assert (=> start!108640 tp_is_empty!33771))

(assert (=> start!108640 true))

(declare-fun e!732444 () Bool)

(declare-fun array_inv!30923 (array!84567) Bool)

(assert (=> start!108640 (and (array_inv!30923 _values!1445) e!732444)))

(declare-fun array_inv!30924 (array!84565) Bool)

(assert (=> start!108640 (array_inv!30924 _keys!1741)))

(assert (=> start!108640 tp!99507))

(declare-fun b!1281900 () Bool)

(assert (=> b!1281900 (= e!732444 (and e!732447 mapRes!52211))))

(declare-fun condMapEmpty!52211 () Bool)

(declare-fun mapDefault!52211 () ValueCell!15987)

(assert (=> b!1281900 (= condMapEmpty!52211 (= (arr!40782 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15987)) mapDefault!52211)))))

(declare-fun b!1281901 () Bool)

(assert (=> b!1281901 (= e!732448 tp_is_empty!33771)))

(declare-fun b!1281902 () Bool)

(declare-fun res!851603 () Bool)

(assert (=> b!1281902 (=> (not res!851603) (not e!732445))))

(declare-datatypes ((List!29071 0))(
  ( (Nil!29068) (Cons!29067 (h!30276 (_ BitVec 64)) (t!42620 List!29071)) )
))
(declare-fun arrayNoDuplicates!0 (array!84565 (_ BitVec 32) List!29071) Bool)

(assert (=> b!1281902 (= res!851603 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29068))))

(declare-fun b!1281903 () Bool)

(declare-fun res!851604 () Bool)

(assert (=> b!1281903 (=> (not res!851604) (not e!732445))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1281903 (= res!851604 (and (= (size!41333 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41332 _keys!1741) (size!41333 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281904 () Bool)

(declare-fun res!851602 () Bool)

(assert (=> b!1281904 (=> (not res!851602) (not e!732445))))

(declare-fun minValue!1387 () V!50131)

(declare-fun zeroValue!1387 () V!50131)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21864 0))(
  ( (tuple2!21865 (_1!10942 (_ BitVec 64)) (_2!10942 V!50131)) )
))
(declare-datatypes ((List!29072 0))(
  ( (Nil!29069) (Cons!29068 (h!30277 tuple2!21864) (t!42621 List!29072)) )
))
(declare-datatypes ((ListLongMap!19533 0))(
  ( (ListLongMap!19534 (toList!9782 List!29072)) )
))
(declare-fun contains!7836 (ListLongMap!19533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4802 (array!84565 array!84567 (_ BitVec 32) (_ BitVec 32) V!50131 V!50131 (_ BitVec 32) Int) ListLongMap!19533)

(assert (=> b!1281904 (= res!851602 (contains!7836 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1281905 () Bool)

(declare-fun res!851601 () Bool)

(assert (=> b!1281905 (=> (not res!851601) (not e!732445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84565 (_ BitVec 32)) Bool)

(assert (=> b!1281905 (= res!851601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281906 () Bool)

(assert (=> b!1281906 (= e!732445 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41332 _keys!1741)) (= (select (arr!40781 _keys!1741) from!2144) k0!1205) (bvsge (size!41332 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!52211 () Bool)

(assert (=> mapIsEmpty!52211 mapRes!52211))

(assert (= (and start!108640 res!851600) b!1281903))

(assert (= (and b!1281903 res!851604) b!1281905))

(assert (= (and b!1281905 res!851601) b!1281902))

(assert (= (and b!1281902 res!851603) b!1281899))

(assert (= (and b!1281899 res!851599) b!1281904))

(assert (= (and b!1281904 res!851602) b!1281906))

(assert (= (and b!1281900 condMapEmpty!52211) mapIsEmpty!52211))

(assert (= (and b!1281900 (not condMapEmpty!52211)) mapNonEmpty!52211))

(get-info :version)

(assert (= (and mapNonEmpty!52211 ((_ is ValueCellFull!15987) mapValue!52211)) b!1281901))

(assert (= (and b!1281900 ((_ is ValueCellFull!15987) mapDefault!52211)) b!1281898))

(assert (= start!108640 b!1281900))

(declare-fun m!1176281 () Bool)

(assert (=> start!108640 m!1176281))

(declare-fun m!1176283 () Bool)

(assert (=> start!108640 m!1176283))

(declare-fun m!1176285 () Bool)

(assert (=> start!108640 m!1176285))

(declare-fun m!1176287 () Bool)

(assert (=> mapNonEmpty!52211 m!1176287))

(declare-fun m!1176289 () Bool)

(assert (=> b!1281904 m!1176289))

(assert (=> b!1281904 m!1176289))

(declare-fun m!1176291 () Bool)

(assert (=> b!1281904 m!1176291))

(declare-fun m!1176293 () Bool)

(assert (=> b!1281906 m!1176293))

(declare-fun m!1176295 () Bool)

(assert (=> b!1281902 m!1176295))

(declare-fun m!1176297 () Bool)

(assert (=> b!1281905 m!1176297))

(check-sat tp_is_empty!33771 (not b_next!28131) (not b!1281905) (not b!1281904) (not start!108640) (not mapNonEmpty!52211) b_and!46205 (not b!1281902))
(check-sat b_and!46205 (not b_next!28131))
(get-model)

(declare-fun d!140591 () Bool)

(declare-fun e!732469 () Bool)

(assert (=> d!140591 e!732469))

(declare-fun res!851625 () Bool)

(assert (=> d!140591 (=> res!851625 e!732469)))

(declare-fun lt!576357 () Bool)

(assert (=> d!140591 (= res!851625 (not lt!576357))))

(declare-fun lt!576354 () Bool)

(assert (=> d!140591 (= lt!576357 lt!576354)))

(declare-datatypes ((Unit!42395 0))(
  ( (Unit!42396) )
))
(declare-fun lt!576355 () Unit!42395)

(declare-fun e!732468 () Unit!42395)

(assert (=> d!140591 (= lt!576355 e!732468)))

(declare-fun c!124021 () Bool)

(assert (=> d!140591 (= c!124021 lt!576354)))

(declare-fun containsKey!713 (List!29072 (_ BitVec 64)) Bool)

(assert (=> d!140591 (= lt!576354 (containsKey!713 (toList!9782 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!140591 (= (contains!7836 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!576357)))

(declare-fun b!1281940 () Bool)

(declare-fun lt!576356 () Unit!42395)

(assert (=> b!1281940 (= e!732468 lt!576356)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!458 (List!29072 (_ BitVec 64)) Unit!42395)

(assert (=> b!1281940 (= lt!576356 (lemmaContainsKeyImpliesGetValueByKeyDefined!458 (toList!9782 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!746 0))(
  ( (Some!745 (v!19561 V!50131)) (None!744) )
))
(declare-fun isDefined!498 (Option!746) Bool)

(declare-fun getValueByKey!695 (List!29072 (_ BitVec 64)) Option!746)

(assert (=> b!1281940 (isDefined!498 (getValueByKey!695 (toList!9782 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1281941 () Bool)

(declare-fun Unit!42397 () Unit!42395)

(assert (=> b!1281941 (= e!732468 Unit!42397)))

(declare-fun b!1281942 () Bool)

(assert (=> b!1281942 (= e!732469 (isDefined!498 (getValueByKey!695 (toList!9782 (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140591 c!124021) b!1281940))

(assert (= (and d!140591 (not c!124021)) b!1281941))

(assert (= (and d!140591 (not res!851625)) b!1281942))

(declare-fun m!1176317 () Bool)

(assert (=> d!140591 m!1176317))

(declare-fun m!1176319 () Bool)

(assert (=> b!1281940 m!1176319))

(declare-fun m!1176321 () Bool)

(assert (=> b!1281940 m!1176321))

(assert (=> b!1281940 m!1176321))

(declare-fun m!1176323 () Bool)

(assert (=> b!1281940 m!1176323))

(assert (=> b!1281942 m!1176321))

(assert (=> b!1281942 m!1176321))

(assert (=> b!1281942 m!1176323))

(assert (=> b!1281904 d!140591))

(declare-fun b!1281985 () Bool)

(declare-fun e!732496 () Bool)

(declare-fun call!62761 () Bool)

(assert (=> b!1281985 (= e!732496 (not call!62761))))

(declare-fun bm!62758 () Bool)

(declare-fun call!62766 () ListLongMap!19533)

(declare-fun call!62762 () ListLongMap!19533)

(assert (=> bm!62758 (= call!62766 call!62762)))

(declare-fun b!1281986 () Bool)

(declare-fun e!732504 () Unit!42395)

(declare-fun lt!576411 () Unit!42395)

(assert (=> b!1281986 (= e!732504 lt!576411)))

(declare-fun lt!576406 () ListLongMap!19533)

(declare-fun getCurrentListMapNoExtraKeys!5958 (array!84565 array!84567 (_ BitVec 32) (_ BitVec 32) V!50131 V!50131 (_ BitVec 32) Int) ListLongMap!19533)

(assert (=> b!1281986 (= lt!576406 (getCurrentListMapNoExtraKeys!5958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576416 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576416 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576418 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576418 (select (arr!40781 _keys!1741) from!2144))))

(declare-fun lt!576405 () Unit!42395)

(declare-fun addStillContains!1114 (ListLongMap!19533 (_ BitVec 64) V!50131 (_ BitVec 64)) Unit!42395)

(assert (=> b!1281986 (= lt!576405 (addStillContains!1114 lt!576406 lt!576416 zeroValue!1387 lt!576418))))

(declare-fun +!4247 (ListLongMap!19533 tuple2!21864) ListLongMap!19533)

(assert (=> b!1281986 (contains!7836 (+!4247 lt!576406 (tuple2!21865 lt!576416 zeroValue!1387)) lt!576418)))

(declare-fun lt!576421 () Unit!42395)

(assert (=> b!1281986 (= lt!576421 lt!576405)))

(declare-fun lt!576403 () ListLongMap!19533)

(assert (=> b!1281986 (= lt!576403 (getCurrentListMapNoExtraKeys!5958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576407 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576407 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576417 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576417 (select (arr!40781 _keys!1741) from!2144))))

(declare-fun lt!576420 () Unit!42395)

(declare-fun addApplyDifferent!548 (ListLongMap!19533 (_ BitVec 64) V!50131 (_ BitVec 64)) Unit!42395)

(assert (=> b!1281986 (= lt!576420 (addApplyDifferent!548 lt!576403 lt!576407 minValue!1387 lt!576417))))

(declare-fun apply!1045 (ListLongMap!19533 (_ BitVec 64)) V!50131)

(assert (=> b!1281986 (= (apply!1045 (+!4247 lt!576403 (tuple2!21865 lt!576407 minValue!1387)) lt!576417) (apply!1045 lt!576403 lt!576417))))

(declare-fun lt!576402 () Unit!42395)

(assert (=> b!1281986 (= lt!576402 lt!576420)))

(declare-fun lt!576409 () ListLongMap!19533)

(assert (=> b!1281986 (= lt!576409 (getCurrentListMapNoExtraKeys!5958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576410 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576410 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576414 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576414 (select (arr!40781 _keys!1741) from!2144))))

(declare-fun lt!576413 () Unit!42395)

(assert (=> b!1281986 (= lt!576413 (addApplyDifferent!548 lt!576409 lt!576410 zeroValue!1387 lt!576414))))

(assert (=> b!1281986 (= (apply!1045 (+!4247 lt!576409 (tuple2!21865 lt!576410 zeroValue!1387)) lt!576414) (apply!1045 lt!576409 lt!576414))))

(declare-fun lt!576415 () Unit!42395)

(assert (=> b!1281986 (= lt!576415 lt!576413)))

(declare-fun lt!576412 () ListLongMap!19533)

(assert (=> b!1281986 (= lt!576412 (getCurrentListMapNoExtraKeys!5958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576423 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576423 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576422 () (_ BitVec 64))

(assert (=> b!1281986 (= lt!576422 (select (arr!40781 _keys!1741) from!2144))))

(assert (=> b!1281986 (= lt!576411 (addApplyDifferent!548 lt!576412 lt!576423 minValue!1387 lt!576422))))

(assert (=> b!1281986 (= (apply!1045 (+!4247 lt!576412 (tuple2!21865 lt!576423 minValue!1387)) lt!576422) (apply!1045 lt!576412 lt!576422))))

(declare-fun b!1281987 () Bool)

(declare-fun Unit!42398 () Unit!42395)

(assert (=> b!1281987 (= e!732504 Unit!42398)))

(declare-fun d!140593 () Bool)

(declare-fun e!732503 () Bool)

(assert (=> d!140593 e!732503))

(declare-fun res!851652 () Bool)

(assert (=> d!140593 (=> (not res!851652) (not e!732503))))

(assert (=> d!140593 (= res!851652 (or (bvsge from!2144 (size!41332 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41332 _keys!1741)))))))

(declare-fun lt!576419 () ListLongMap!19533)

(declare-fun lt!576404 () ListLongMap!19533)

(assert (=> d!140593 (= lt!576419 lt!576404)))

(declare-fun lt!576408 () Unit!42395)

(assert (=> d!140593 (= lt!576408 e!732504)))

(declare-fun c!124034 () Bool)

(declare-fun e!732501 () Bool)

(assert (=> d!140593 (= c!124034 e!732501)))

(declare-fun res!851647 () Bool)

(assert (=> d!140593 (=> (not res!851647) (not e!732501))))

(assert (=> d!140593 (= res!851647 (bvslt from!2144 (size!41332 _keys!1741)))))

(declare-fun e!732505 () ListLongMap!19533)

(assert (=> d!140593 (= lt!576404 e!732505)))

(declare-fun c!124035 () Bool)

(assert (=> d!140593 (= c!124035 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140593 (validMask!0 mask!2175)))

(assert (=> d!140593 (= (getCurrentListMap!4802 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!576419)))

(declare-fun bm!62759 () Bool)

(assert (=> bm!62759 (= call!62761 (contains!7836 lt!576419 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1281988 () Bool)

(declare-fun e!732507 () Bool)

(declare-fun e!732497 () Bool)

(assert (=> b!1281988 (= e!732507 e!732497)))

(declare-fun res!851649 () Bool)

(declare-fun call!62767 () Bool)

(assert (=> b!1281988 (= res!851649 call!62767)))

(assert (=> b!1281988 (=> (not res!851649) (not e!732497))))

(declare-fun b!1281989 () Bool)

(declare-fun e!732499 () Bool)

(assert (=> b!1281989 (= e!732499 (= (apply!1045 lt!576419 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1281990 () Bool)

(declare-fun e!732498 () ListLongMap!19533)

(declare-fun call!62765 () ListLongMap!19533)

(assert (=> b!1281990 (= e!732498 call!62765)))

(declare-fun b!1281991 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1281991 (= e!732501 (validKeyInArray!0 (select (arr!40781 _keys!1741) from!2144)))))

(declare-fun b!1281992 () Bool)

(declare-fun e!732502 () Bool)

(assert (=> b!1281992 (= e!732502 (validKeyInArray!0 (select (arr!40781 _keys!1741) from!2144)))))

(declare-fun b!1281993 () Bool)

(declare-fun res!851646 () Bool)

(assert (=> b!1281993 (=> (not res!851646) (not e!732503))))

(declare-fun e!732508 () Bool)

(assert (=> b!1281993 (= res!851646 e!732508)))

(declare-fun res!851650 () Bool)

(assert (=> b!1281993 (=> res!851650 e!732508)))

(assert (=> b!1281993 (= res!851650 (not e!732502))))

(declare-fun res!851644 () Bool)

(assert (=> b!1281993 (=> (not res!851644) (not e!732502))))

(assert (=> b!1281993 (= res!851644 (bvslt from!2144 (size!41332 _keys!1741)))))

(declare-fun b!1281994 () Bool)

(assert (=> b!1281994 (= e!732503 e!732496)))

(declare-fun c!124036 () Bool)

(assert (=> b!1281994 (= c!124036 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!62763 () ListLongMap!19533)

(declare-fun call!62764 () ListLongMap!19533)

(declare-fun bm!62760 () Bool)

(declare-fun c!124039 () Bool)

(assert (=> bm!62760 (= call!62762 (+!4247 (ite c!124035 call!62763 (ite c!124039 call!62764 call!62765)) (ite (or c!124035 c!124039) (tuple2!21865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!21865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1281995 () Bool)

(assert (=> b!1281995 (= e!732507 (not call!62767))))

(declare-fun e!732500 () Bool)

(declare-fun b!1281996 () Bool)

(declare-fun get!20799 (ValueCell!15987 V!50131) V!50131)

(declare-fun dynLambda!3490 (Int (_ BitVec 64)) V!50131)

(assert (=> b!1281996 (= e!732500 (= (apply!1045 lt!576419 (select (arr!40781 _keys!1741) from!2144)) (get!20799 (select (arr!40782 _values!1445) from!2144) (dynLambda!3490 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1281996 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41333 _values!1445)))))

(assert (=> b!1281996 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41332 _keys!1741)))))

(declare-fun bm!62761 () Bool)

(assert (=> bm!62761 (= call!62763 (getCurrentListMapNoExtraKeys!5958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!62762 () Bool)

(assert (=> bm!62762 (= call!62767 (contains!7836 lt!576419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62763 () Bool)

(assert (=> bm!62763 (= call!62764 call!62763)))

(declare-fun b!1281997 () Bool)

(declare-fun res!851645 () Bool)

(assert (=> b!1281997 (=> (not res!851645) (not e!732503))))

(assert (=> b!1281997 (= res!851645 e!732507)))

(declare-fun c!124038 () Bool)

(assert (=> b!1281997 (= c!124038 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!62764 () Bool)

(assert (=> bm!62764 (= call!62765 call!62764)))

(declare-fun b!1281998 () Bool)

(assert (=> b!1281998 (= e!732508 e!732500)))

(declare-fun res!851648 () Bool)

(assert (=> b!1281998 (=> (not res!851648) (not e!732500))))

(assert (=> b!1281998 (= res!851648 (contains!7836 lt!576419 (select (arr!40781 _keys!1741) from!2144)))))

(assert (=> b!1281998 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41332 _keys!1741)))))

(declare-fun b!1281999 () Bool)

(assert (=> b!1281999 (= e!732496 e!732499)))

(declare-fun res!851651 () Bool)

(assert (=> b!1281999 (= res!851651 call!62761)))

(assert (=> b!1281999 (=> (not res!851651) (not e!732499))))

(declare-fun b!1282000 () Bool)

(assert (=> b!1282000 (= e!732497 (= (apply!1045 lt!576419 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1282001 () Bool)

(assert (=> b!1282001 (= e!732505 (+!4247 call!62762 (tuple2!21865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1282002 () Bool)

(assert (=> b!1282002 (= e!732498 call!62766)))

(declare-fun b!1282003 () Bool)

(declare-fun e!732506 () ListLongMap!19533)

(assert (=> b!1282003 (= e!732505 e!732506)))

(assert (=> b!1282003 (= c!124039 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1282004 () Bool)

(declare-fun c!124037 () Bool)

(assert (=> b!1282004 (= c!124037 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1282004 (= e!732506 e!732498)))

(declare-fun b!1282005 () Bool)

(assert (=> b!1282005 (= e!732506 call!62766)))

(assert (= (and d!140593 c!124035) b!1282001))

(assert (= (and d!140593 (not c!124035)) b!1282003))

(assert (= (and b!1282003 c!124039) b!1282005))

(assert (= (and b!1282003 (not c!124039)) b!1282004))

(assert (= (and b!1282004 c!124037) b!1282002))

(assert (= (and b!1282004 (not c!124037)) b!1281990))

(assert (= (or b!1282002 b!1281990) bm!62764))

(assert (= (or b!1282005 bm!62764) bm!62763))

(assert (= (or b!1282005 b!1282002) bm!62758))

(assert (= (or b!1282001 bm!62763) bm!62761))

(assert (= (or b!1282001 bm!62758) bm!62760))

(assert (= (and d!140593 res!851647) b!1281991))

(assert (= (and d!140593 c!124034) b!1281986))

(assert (= (and d!140593 (not c!124034)) b!1281987))

(assert (= (and d!140593 res!851652) b!1281993))

(assert (= (and b!1281993 res!851644) b!1281992))

(assert (= (and b!1281993 (not res!851650)) b!1281998))

(assert (= (and b!1281998 res!851648) b!1281996))

(assert (= (and b!1281993 res!851646) b!1281997))

(assert (= (and b!1281997 c!124038) b!1281988))

(assert (= (and b!1281997 (not c!124038)) b!1281995))

(assert (= (and b!1281988 res!851649) b!1282000))

(assert (= (or b!1281988 b!1281995) bm!62762))

(assert (= (and b!1281997 res!851645) b!1281994))

(assert (= (and b!1281994 c!124036) b!1281999))

(assert (= (and b!1281994 (not c!124036)) b!1281985))

(assert (= (and b!1281999 res!851651) b!1281989))

(assert (= (or b!1281999 b!1281985) bm!62759))

(declare-fun b_lambda!23113 () Bool)

(assert (=> (not b_lambda!23113) (not b!1281996)))

(declare-fun t!42623 () Bool)

(declare-fun tb!11355 () Bool)

(assert (=> (and start!108640 (= defaultEntry!1448 defaultEntry!1448) t!42623) tb!11355))

(declare-fun result!23699 () Bool)

(assert (=> tb!11355 (= result!23699 tp_is_empty!33771)))

(assert (=> b!1281996 t!42623))

(declare-fun b_and!46209 () Bool)

(assert (= b_and!46205 (and (=> t!42623 result!23699) b_and!46209)))

(declare-fun m!1176325 () Bool)

(assert (=> bm!62760 m!1176325))

(declare-fun m!1176327 () Bool)

(assert (=> b!1282000 m!1176327))

(declare-fun m!1176329 () Bool)

(assert (=> b!1281986 m!1176329))

(declare-fun m!1176331 () Bool)

(assert (=> b!1281986 m!1176331))

(declare-fun m!1176333 () Bool)

(assert (=> b!1281986 m!1176333))

(declare-fun m!1176335 () Bool)

(assert (=> b!1281986 m!1176335))

(declare-fun m!1176337 () Bool)

(assert (=> b!1281986 m!1176337))

(declare-fun m!1176339 () Bool)

(assert (=> b!1281986 m!1176339))

(declare-fun m!1176341 () Bool)

(assert (=> b!1281986 m!1176341))

(declare-fun m!1176343 () Bool)

(assert (=> b!1281986 m!1176343))

(declare-fun m!1176345 () Bool)

(assert (=> b!1281986 m!1176345))

(assert (=> b!1281986 m!1176293))

(declare-fun m!1176347 () Bool)

(assert (=> b!1281986 m!1176347))

(assert (=> b!1281986 m!1176329))

(declare-fun m!1176349 () Bool)

(assert (=> b!1281986 m!1176349))

(declare-fun m!1176351 () Bool)

(assert (=> b!1281986 m!1176351))

(assert (=> b!1281986 m!1176341))

(declare-fun m!1176353 () Bool)

(assert (=> b!1281986 m!1176353))

(declare-fun m!1176355 () Bool)

(assert (=> b!1281986 m!1176355))

(declare-fun m!1176357 () Bool)

(assert (=> b!1281986 m!1176357))

(assert (=> b!1281986 m!1176355))

(declare-fun m!1176359 () Bool)

(assert (=> b!1281986 m!1176359))

(assert (=> b!1281986 m!1176337))

(assert (=> b!1281998 m!1176293))

(assert (=> b!1281998 m!1176293))

(declare-fun m!1176361 () Bool)

(assert (=> b!1281998 m!1176361))

(assert (=> b!1281992 m!1176293))

(assert (=> b!1281992 m!1176293))

(declare-fun m!1176363 () Bool)

(assert (=> b!1281992 m!1176363))

(declare-fun m!1176365 () Bool)

(assert (=> bm!62762 m!1176365))

(declare-fun m!1176367 () Bool)

(assert (=> b!1281996 m!1176367))

(assert (=> b!1281996 m!1176293))

(assert (=> b!1281996 m!1176367))

(declare-fun m!1176369 () Bool)

(assert (=> b!1281996 m!1176369))

(declare-fun m!1176371 () Bool)

(assert (=> b!1281996 m!1176371))

(assert (=> b!1281996 m!1176369))

(assert (=> b!1281996 m!1176293))

(declare-fun m!1176373 () Bool)

(assert (=> b!1281996 m!1176373))

(declare-fun m!1176375 () Bool)

(assert (=> bm!62759 m!1176375))

(assert (=> d!140593 m!1176281))

(assert (=> b!1281991 m!1176293))

(assert (=> b!1281991 m!1176293))

(assert (=> b!1281991 m!1176363))

(declare-fun m!1176377 () Bool)

(assert (=> b!1282001 m!1176377))

(declare-fun m!1176379 () Bool)

(assert (=> b!1281989 m!1176379))

(assert (=> bm!62761 m!1176351))

(assert (=> b!1281904 d!140593))

(declare-fun b!1282016 () Bool)

(declare-fun e!732517 () Bool)

(declare-fun call!62770 () Bool)

(assert (=> b!1282016 (= e!732517 call!62770)))

(declare-fun bm!62767 () Bool)

(assert (=> bm!62767 (= call!62770 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1282017 () Bool)

(declare-fun e!732516 () Bool)

(assert (=> b!1282017 (= e!732517 e!732516)))

(declare-fun lt!576431 () (_ BitVec 64))

(assert (=> b!1282017 (= lt!576431 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!576432 () Unit!42395)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!84565 (_ BitVec 64) (_ BitVec 32)) Unit!42395)

(assert (=> b!1282017 (= lt!576432 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!576431 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!84565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1282017 (arrayContainsKey!0 _keys!1741 lt!576431 #b00000000000000000000000000000000)))

(declare-fun lt!576430 () Unit!42395)

(assert (=> b!1282017 (= lt!576430 lt!576432)))

(declare-fun res!851658 () Bool)

(declare-datatypes ((SeekEntryResult!10010 0))(
  ( (MissingZero!10010 (index!42410 (_ BitVec 32))) (Found!10010 (index!42411 (_ BitVec 32))) (Intermediate!10010 (undefined!10822 Bool) (index!42412 (_ BitVec 32)) (x!113704 (_ BitVec 32))) (Undefined!10010) (MissingVacant!10010 (index!42413 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!84565 (_ BitVec 32)) SeekEntryResult!10010)

(assert (=> b!1282017 (= res!851658 (= (seekEntryOrOpen!0 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10010 #b00000000000000000000000000000000)))))

(assert (=> b!1282017 (=> (not res!851658) (not e!732516))))

(declare-fun d!140595 () Bool)

(declare-fun res!851657 () Bool)

(declare-fun e!732515 () Bool)

(assert (=> d!140595 (=> res!851657 e!732515)))

(assert (=> d!140595 (= res!851657 (bvsge #b00000000000000000000000000000000 (size!41332 _keys!1741)))))

(assert (=> d!140595 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!732515)))

(declare-fun b!1282018 () Bool)

(assert (=> b!1282018 (= e!732515 e!732517)))

(declare-fun c!124042 () Bool)

(assert (=> b!1282018 (= c!124042 (validKeyInArray!0 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1282019 () Bool)

(assert (=> b!1282019 (= e!732516 call!62770)))

(assert (= (and d!140595 (not res!851657)) b!1282018))

(assert (= (and b!1282018 c!124042) b!1282017))

(assert (= (and b!1282018 (not c!124042)) b!1282016))

(assert (= (and b!1282017 res!851658) b!1282019))

(assert (= (or b!1282019 b!1282016) bm!62767))

(declare-fun m!1176381 () Bool)

(assert (=> bm!62767 m!1176381))

(declare-fun m!1176383 () Bool)

(assert (=> b!1282017 m!1176383))

(declare-fun m!1176385 () Bool)

(assert (=> b!1282017 m!1176385))

(declare-fun m!1176387 () Bool)

(assert (=> b!1282017 m!1176387))

(assert (=> b!1282017 m!1176383))

(declare-fun m!1176389 () Bool)

(assert (=> b!1282017 m!1176389))

(assert (=> b!1282018 m!1176383))

(assert (=> b!1282018 m!1176383))

(declare-fun m!1176391 () Bool)

(assert (=> b!1282018 m!1176391))

(assert (=> b!1281905 d!140595))

(declare-fun d!140597 () Bool)

(assert (=> d!140597 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108640 d!140597))

(declare-fun d!140599 () Bool)

(assert (=> d!140599 (= (array_inv!30923 _values!1445) (bvsge (size!41333 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108640 d!140599))

(declare-fun d!140601 () Bool)

(assert (=> d!140601 (= (array_inv!30924 _keys!1741) (bvsge (size!41332 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108640 d!140601))

(declare-fun bm!62770 () Bool)

(declare-fun call!62773 () Bool)

(declare-fun c!124045 () Bool)

(assert (=> bm!62770 (= call!62773 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124045 (Cons!29067 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000) Nil!29068) Nil!29068)))))

(declare-fun b!1282030 () Bool)

(declare-fun e!732526 () Bool)

(declare-fun e!732527 () Bool)

(assert (=> b!1282030 (= e!732526 e!732527)))

(assert (=> b!1282030 (= c!124045 (validKeyInArray!0 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1282031 () Bool)

(assert (=> b!1282031 (= e!732527 call!62773)))

(declare-fun b!1282032 () Bool)

(declare-fun e!732529 () Bool)

(assert (=> b!1282032 (= e!732529 e!732526)))

(declare-fun res!851665 () Bool)

(assert (=> b!1282032 (=> (not res!851665) (not e!732526))))

(declare-fun e!732528 () Bool)

(assert (=> b!1282032 (= res!851665 (not e!732528))))

(declare-fun res!851667 () Bool)

(assert (=> b!1282032 (=> (not res!851667) (not e!732528))))

(assert (=> b!1282032 (= res!851667 (validKeyInArray!0 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1282033 () Bool)

(declare-fun contains!7837 (List!29071 (_ BitVec 64)) Bool)

(assert (=> b!1282033 (= e!732528 (contains!7837 Nil!29068 (select (arr!40781 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!140603 () Bool)

(declare-fun res!851666 () Bool)

(assert (=> d!140603 (=> res!851666 e!732529)))

(assert (=> d!140603 (= res!851666 (bvsge #b00000000000000000000000000000000 (size!41332 _keys!1741)))))

(assert (=> d!140603 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29068) e!732529)))

(declare-fun b!1282034 () Bool)

(assert (=> b!1282034 (= e!732527 call!62773)))

(assert (= (and d!140603 (not res!851666)) b!1282032))

(assert (= (and b!1282032 res!851667) b!1282033))

(assert (= (and b!1282032 res!851665) b!1282030))

(assert (= (and b!1282030 c!124045) b!1282031))

(assert (= (and b!1282030 (not c!124045)) b!1282034))

(assert (= (or b!1282031 b!1282034) bm!62770))

(assert (=> bm!62770 m!1176383))

(declare-fun m!1176393 () Bool)

(assert (=> bm!62770 m!1176393))

(assert (=> b!1282030 m!1176383))

(assert (=> b!1282030 m!1176383))

(assert (=> b!1282030 m!1176391))

(assert (=> b!1282032 m!1176383))

(assert (=> b!1282032 m!1176383))

(assert (=> b!1282032 m!1176391))

(assert (=> b!1282033 m!1176383))

(assert (=> b!1282033 m!1176383))

(declare-fun m!1176395 () Bool)

(assert (=> b!1282033 m!1176395))

(assert (=> b!1281902 d!140603))

(declare-fun b!1282042 () Bool)

(declare-fun e!732534 () Bool)

(assert (=> b!1282042 (= e!732534 tp_is_empty!33771)))

(declare-fun mapNonEmpty!52217 () Bool)

(declare-fun mapRes!52217 () Bool)

(declare-fun tp!99516 () Bool)

(declare-fun e!732535 () Bool)

(assert (=> mapNonEmpty!52217 (= mapRes!52217 (and tp!99516 e!732535))))

(declare-fun mapKey!52217 () (_ BitVec 32))

(declare-fun mapValue!52217 () ValueCell!15987)

(declare-fun mapRest!52217 () (Array (_ BitVec 32) ValueCell!15987))

(assert (=> mapNonEmpty!52217 (= mapRest!52211 (store mapRest!52217 mapKey!52217 mapValue!52217))))

(declare-fun mapIsEmpty!52217 () Bool)

(assert (=> mapIsEmpty!52217 mapRes!52217))

(declare-fun b!1282041 () Bool)

(assert (=> b!1282041 (= e!732535 tp_is_empty!33771)))

(declare-fun condMapEmpty!52217 () Bool)

(declare-fun mapDefault!52217 () ValueCell!15987)

(assert (=> mapNonEmpty!52211 (= condMapEmpty!52217 (= mapRest!52211 ((as const (Array (_ BitVec 32) ValueCell!15987)) mapDefault!52217)))))

(assert (=> mapNonEmpty!52211 (= tp!99506 (and e!732534 mapRes!52217))))

(assert (= (and mapNonEmpty!52211 condMapEmpty!52217) mapIsEmpty!52217))

(assert (= (and mapNonEmpty!52211 (not condMapEmpty!52217)) mapNonEmpty!52217))

(assert (= (and mapNonEmpty!52217 ((_ is ValueCellFull!15987) mapValue!52217)) b!1282041))

(assert (= (and mapNonEmpty!52211 ((_ is ValueCellFull!15987) mapDefault!52217)) b!1282042))

(declare-fun m!1176397 () Bool)

(assert (=> mapNonEmpty!52217 m!1176397))

(declare-fun b_lambda!23115 () Bool)

(assert (= b_lambda!23113 (or (and start!108640 b_free!28131) b_lambda!23115)))

(check-sat (not b_next!28131) (not b!1281989) (not b!1281940) (not bm!62762) b_and!46209 (not bm!62760) (not bm!62759) (not b!1281986) (not b!1282017) (not d!140593) (not b_lambda!23115) (not b!1281998) (not b!1282033) tp_is_empty!33771 (not b!1282018) (not b!1281992) (not bm!62761) (not b!1282030) (not b!1281996) (not b!1282001) (not b!1282000) (not bm!62767) (not mapNonEmpty!52217) (not b!1281942) (not b!1281991) (not d!140591) (not bm!62770) (not b!1282032))
(check-sat b_and!46209 (not b_next!28131))
