; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110294 () Bool)

(assert start!110294)

(declare-fun b_free!29305 () Bool)

(declare-fun b_next!29305 () Bool)

(assert (=> start!110294 (= b_free!29305 (not b_next!29305))))

(declare-fun tp!103081 () Bool)

(declare-fun b_and!47511 () Bool)

(assert (=> start!110294 (= tp!103081 b_and!47511)))

(declare-fun b!1305080 () Bool)

(declare-fun res!866747 () Bool)

(declare-fun e!744458 () Bool)

(assert (=> b!1305080 (=> (not res!866747) (not e!744458))))

(declare-datatypes ((array!86871 0))(
  ( (array!86872 (arr!41918 (Array (_ BitVec 32) (_ BitVec 64))) (size!42469 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86871)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86871 (_ BitVec 32)) Bool)

(assert (=> b!1305080 (= res!866747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun call!64364 () Bool)

(declare-datatypes ((V!51697 0))(
  ( (V!51698 (val!17547 Int)) )
))
(declare-datatypes ((tuple2!22808 0))(
  ( (tuple2!22809 (_1!11414 (_ BitVec 64)) (_2!11414 V!51697)) )
))
(declare-datatypes ((List!29957 0))(
  ( (Nil!29954) (Cons!29953 (h!31162 tuple2!22808) (t!43566 List!29957)) )
))
(declare-datatypes ((ListLongMap!20477 0))(
  ( (ListLongMap!20478 (toList!10254 List!29957)) )
))
(declare-fun lt!584173 () ListLongMap!20477)

(declare-fun bm!64350 () Bool)

(declare-fun call!64361 () ListLongMap!20477)

(declare-fun c!125289 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8333 (ListLongMap!20477 (_ BitVec 64)) Bool)

(assert (=> bm!64350 (= call!64364 (contains!8333 (ite c!125289 lt!584173 call!64361) k!1205))))

(declare-fun b!1305081 () Bool)

(declare-fun e!744461 () Bool)

(declare-fun tp_is_empty!34945 () Bool)

(assert (=> b!1305081 (= e!744461 tp_is_empty!34945)))

(declare-fun b!1305082 () Bool)

(declare-datatypes ((Unit!43172 0))(
  ( (Unit!43173) )
))
(declare-fun e!744464 () Unit!43172)

(declare-fun lt!584171 () Unit!43172)

(assert (=> b!1305082 (= e!744464 lt!584171)))

(declare-fun lt!584178 () ListLongMap!20477)

(declare-fun call!64356 () ListLongMap!20477)

(assert (=> b!1305082 (= lt!584178 call!64356)))

(declare-fun lt!584174 () Unit!43172)

(declare-fun call!64363 () Unit!43172)

(assert (=> b!1305082 (= lt!584174 call!64363)))

(declare-fun call!64355 () Bool)

(assert (=> b!1305082 (not call!64355)))

(declare-fun call!64358 () Unit!43172)

(assert (=> b!1305082 (= lt!584171 call!64358)))

(declare-fun call!64362 () Bool)

(assert (=> b!1305082 call!64362))

(declare-fun b!1305083 () Bool)

(declare-fun res!866749 () Bool)

(assert (=> b!1305083 (=> (not res!866749) (not e!744458))))

(declare-datatypes ((ValueCell!16574 0))(
  ( (ValueCellFull!16574 (v!20167 V!51697)) (EmptyCell!16574) )
))
(declare-datatypes ((array!86873 0))(
  ( (array!86874 (arr!41919 (Array (_ BitVec 32) ValueCell!16574)) (size!42470 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86873)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1305083 (= res!866749 (and (= (size!42470 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42469 _keys!1741) (size!42470 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1305084 () Bool)

(assert (=> b!1305084 call!64362))

(declare-fun lt!584177 () Unit!43172)

(assert (=> b!1305084 (= lt!584177 call!64358)))

(assert (=> b!1305084 (not call!64355)))

(declare-fun lt!584181 () Unit!43172)

(assert (=> b!1305084 (= lt!584181 call!64363)))

(declare-fun lt!584180 () ListLongMap!20477)

(assert (=> b!1305084 (= lt!584180 call!64356)))

(declare-fun e!744462 () Unit!43172)

(assert (=> b!1305084 (= e!744462 lt!584177)))

(declare-fun b!1305085 () Bool)

(declare-fun res!866748 () Bool)

(assert (=> b!1305085 (=> (not res!866748) (not e!744458))))

(declare-fun minValue!1387 () V!51697)

(declare-fun zeroValue!1387 () V!51697)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5211 (array!86871 array!86873 (_ BitVec 32) (_ BitVec 32) V!51697 V!51697 (_ BitVec 32) Int) ListLongMap!20477)

(assert (=> b!1305085 (= res!866748 (contains!8333 (getCurrentListMap!5211 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1305086 () Bool)

(declare-fun res!866754 () Bool)

(assert (=> b!1305086 (=> (not res!866754) (not e!744458))))

(assert (=> b!1305086 (= res!866754 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42469 _keys!1741))))))

(declare-fun bm!64351 () Bool)

(assert (=> bm!64351 (= call!64355 call!64364)))

(declare-fun b!1305087 () Bool)

(declare-fun e!744460 () Unit!43172)

(assert (=> b!1305087 (= e!744460 e!744462)))

(declare-fun c!125290 () Bool)

(declare-fun lt!584176 () Bool)

(assert (=> b!1305087 (= c!125290 (and (not lt!584176) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1305089 () Bool)

(declare-fun lt!584169 () Unit!43172)

(assert (=> b!1305089 (= e!744460 lt!584169)))

(declare-fun lt!584170 () ListLongMap!20477)

(declare-fun call!64353 () ListLongMap!20477)

(assert (=> b!1305089 (= lt!584170 call!64353)))

(declare-fun lt!584166 () Unit!43172)

(declare-fun call!64354 () Unit!43172)

(assert (=> b!1305089 (= lt!584166 call!64354)))

(declare-fun call!64360 () ListLongMap!20477)

(assert (=> b!1305089 (= lt!584173 call!64360)))

(assert (=> b!1305089 (not call!64364)))

(declare-fun lt!584179 () Unit!43172)

(declare-fun addStillNotContains!495 (ListLongMap!20477 (_ BitVec 64) V!51697 (_ BitVec 64)) Unit!43172)

(assert (=> b!1305089 (= lt!584179 (addStillNotContains!495 lt!584170 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun +!4471 (ListLongMap!20477 tuple2!22808) ListLongMap!20477)

(assert (=> b!1305089 (not (contains!8333 (+!4471 lt!584170 (tuple2!22809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!584168 () Unit!43172)

(declare-fun call!64357 () Unit!43172)

(assert (=> b!1305089 (= lt!584168 call!64357)))

(assert (=> b!1305089 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!91 ((_ BitVec 64) (_ BitVec 64) V!51697 ListLongMap!20477) Unit!43172)

(assert (=> b!1305089 (= lt!584169 (lemmaInListMapAfterAddingDiffThenInBefore!91 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!584170))))

(declare-fun lt!584167 () Bool)

(declare-fun call!64359 () Bool)

(assert (=> b!1305089 (= lt!584167 call!64359)))

(declare-fun mapNonEmpty!54024 () Bool)

(declare-fun mapRes!54024 () Bool)

(declare-fun tp!103080 () Bool)

(assert (=> mapNonEmpty!54024 (= mapRes!54024 (and tp!103080 e!744461))))

(declare-fun mapValue!54024 () ValueCell!16574)

(declare-fun mapKey!54024 () (_ BitVec 32))

(declare-fun mapRest!54024 () (Array (_ BitVec 32) ValueCell!16574))

(assert (=> mapNonEmpty!54024 (= (arr!41919 _values!1445) (store mapRest!54024 mapKey!54024 mapValue!54024))))

(declare-fun bm!64352 () Bool)

(assert (=> bm!64352 (= call!64363 call!64354)))

(declare-fun bm!64353 () Bool)

(assert (=> bm!64353 (= call!64362 call!64359)))

(declare-fun bm!64354 () Bool)

(assert (=> bm!64354 (= call!64354 (addStillNotContains!495 (ite c!125289 lt!584170 (ite c!125290 lt!584180 lt!584178)) (ite (or c!125289 c!125290) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125289 c!125290) zeroValue!1387 minValue!1387) k!1205))))

(declare-fun bm!64355 () Bool)

(assert (=> bm!64355 (= call!64359 (contains!8333 (ite c!125289 lt!584170 (ite c!125290 lt!584180 lt!584178)) k!1205))))

(declare-fun bm!64356 () Bool)

(assert (=> bm!64356 (= call!64360 (+!4471 (ite c!125289 lt!584170 (ite c!125290 lt!584180 lt!584178)) (ite (or c!125289 c!125290) (tuple2!22809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1305090 () Bool)

(declare-fun Unit!43174 () Unit!43172)

(assert (=> b!1305090 (= e!744464 Unit!43174)))

(declare-fun bm!64357 () Bool)

(assert (=> bm!64357 (= call!64357 (lemmaInListMapAfterAddingDiffThenInBefore!91 k!1205 (ite c!125289 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!125290 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!125289 minValue!1387 (ite c!125290 zeroValue!1387 minValue!1387)) (ite c!125289 lt!584173 (ite c!125290 lt!584180 lt!584178))))))

(declare-fun mapIsEmpty!54024 () Bool)

(assert (=> mapIsEmpty!54024 mapRes!54024))

(declare-fun bm!64358 () Bool)

(assert (=> bm!64358 (= call!64361 call!64360)))

(declare-fun b!1305091 () Bool)

(declare-fun res!866750 () Bool)

(assert (=> b!1305091 (=> (not res!866750) (not e!744458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305091 (= res!866750 (not (validKeyInArray!0 (select (arr!41918 _keys!1741) from!2144))))))

(declare-fun bm!64359 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6188 (array!86871 array!86873 (_ BitVec 32) (_ BitVec 32) V!51697 V!51697 (_ BitVec 32) Int) ListLongMap!20477)

(assert (=> bm!64359 (= call!64353 (getCurrentListMapNoExtraKeys!6188 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!64360 () Bool)

(assert (=> bm!64360 (= call!64356 call!64353)))

(declare-fun bm!64361 () Bool)

(assert (=> bm!64361 (= call!64358 call!64357)))

(declare-fun b!1305092 () Bool)

(declare-fun e!744465 () Bool)

(assert (=> b!1305092 (= e!744465 tp_is_empty!34945)))

(declare-fun b!1305093 () Bool)

(declare-fun e!744459 () Bool)

(assert (=> b!1305093 (= e!744459 (and e!744465 mapRes!54024))))

(declare-fun condMapEmpty!54024 () Bool)

(declare-fun mapDefault!54024 () ValueCell!16574)

