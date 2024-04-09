; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109508 () Bool)

(assert start!109508)

(declare-fun b_free!28961 () Bool)

(declare-fun b_next!28961 () Bool)

(assert (=> start!109508 (= b_free!28961 (not b_next!28961))))

(declare-fun tp!102003 () Bool)

(declare-fun b_and!47061 () Bool)

(assert (=> start!109508 (= tp!102003 b_and!47061)))

(declare-fun bm!63491 () Bool)

(declare-datatypes ((Unit!42899 0))(
  ( (Unit!42900) )
))
(declare-fun call!63497 () Unit!42899)

(declare-fun call!63501 () Unit!42899)

(assert (=> bm!63491 (= call!63497 call!63501)))

(declare-fun b!1296451 () Bool)

(declare-fun e!739654 () Unit!42899)

(declare-fun lt!580417 () Unit!42899)

(assert (=> b!1296451 (= e!739654 lt!580417)))

(declare-datatypes ((V!51237 0))(
  ( (V!51238 (val!17375 Int)) )
))
(declare-datatypes ((tuple2!22532 0))(
  ( (tuple2!22533 (_1!11276 (_ BitVec 64)) (_2!11276 V!51237)) )
))
(declare-datatypes ((List!29697 0))(
  ( (Nil!29694) (Cons!29693 (h!30902 tuple2!22532) (t!43268 List!29697)) )
))
(declare-datatypes ((ListLongMap!20201 0))(
  ( (ListLongMap!20202 (toList!10116 List!29697)) )
))
(declare-fun lt!580423 () ListLongMap!20201)

(declare-fun call!63496 () ListLongMap!20201)

(assert (=> b!1296451 (= lt!580423 call!63496)))

(declare-fun lt!580418 () Unit!42899)

(declare-fun call!63498 () Unit!42899)

(assert (=> b!1296451 (= lt!580418 call!63498)))

(declare-fun call!63494 () Bool)

(assert (=> b!1296451 (not call!63494)))

(assert (=> b!1296451 (= lt!580417 call!63497)))

(declare-fun call!63499 () Bool)

(assert (=> b!1296451 call!63499))

(declare-fun b!1296452 () Bool)

(declare-fun e!739653 () Unit!42899)

(declare-fun lt!580430 () Unit!42899)

(assert (=> b!1296452 (= e!739653 lt!580430)))

(declare-fun lt!580428 () ListLongMap!20201)

(declare-fun call!63505 () ListLongMap!20201)

(assert (=> b!1296452 (= lt!580428 call!63505)))

(declare-fun lt!580427 () Unit!42899)

(declare-fun call!63495 () Unit!42899)

(assert (=> b!1296452 (= lt!580427 call!63495)))

(declare-fun lt!580421 () ListLongMap!20201)

(declare-fun zeroValue!1387 () V!51237)

(declare-fun +!4414 (ListLongMap!20201 tuple2!22532) ListLongMap!20201)

(assert (=> b!1296452 (= lt!580421 (+!4414 lt!580428 (tuple2!22533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun call!63504 () Bool)

(assert (=> b!1296452 (not call!63504)))

(declare-fun minValue!1387 () V!51237)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580426 () Unit!42899)

(declare-fun addStillNotContains!461 (ListLongMap!20201 (_ BitVec 64) V!51237 (_ BitVec 64)) Unit!42899)

(assert (=> b!1296452 (= lt!580426 (addStillNotContains!461 lt!580428 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun call!63503 () ListLongMap!20201)

(declare-fun contains!8170 (ListLongMap!20201 (_ BitVec 64)) Bool)

(assert (=> b!1296452 (not (contains!8170 call!63503 k!1205))))

(declare-fun lt!580424 () Unit!42899)

(assert (=> b!1296452 (= lt!580424 call!63501)))

(assert (=> b!1296452 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!65 ((_ BitVec 64) (_ BitVec 64) V!51237 ListLongMap!20201) Unit!42899)

(assert (=> b!1296452 (= lt!580430 (lemmaInListMapAfterAddingDiffThenInBefore!65 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!580428))))

(declare-fun lt!580429 () Bool)

(declare-fun call!63502 () Bool)

(assert (=> b!1296452 (= lt!580429 call!63502)))

(declare-fun b!1296453 () Bool)

(declare-fun e!739652 () Bool)

(declare-fun tp_is_empty!34601 () Bool)

(assert (=> b!1296453 (= e!739652 tp_is_empty!34601)))

(declare-fun b!1296454 () Bool)

(declare-fun Unit!42901 () Unit!42899)

(assert (=> b!1296454 (= e!739654 Unit!42901)))

(declare-fun b!1296455 () Bool)

(declare-fun e!739655 () Unit!42899)

(assert (=> b!1296455 (= e!739653 e!739655)))

(declare-fun c!124356 () Bool)

(declare-fun lt!580425 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1296455 (= c!124356 (and (not lt!580425) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1296456 () Bool)

(declare-fun e!739651 () Bool)

(assert (=> b!1296456 (= e!739651 (not true))))

(declare-fun lt!580422 () Unit!42899)

(assert (=> b!1296456 (= lt!580422 e!739653)))

(declare-fun c!124357 () Bool)

(assert (=> b!1296456 (= c!124357 (and (not lt!580425) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1296456 (= lt!580425 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1296456 (not (contains!8170 (ListLongMap!20202 Nil!29694) k!1205))))

(declare-fun lt!580420 () Unit!42899)

(declare-fun emptyContainsNothing!198 ((_ BitVec 64)) Unit!42899)

(assert (=> b!1296456 (= lt!580420 (emptyContainsNothing!198 k!1205))))

(declare-fun bm!63492 () Bool)

(assert (=> bm!63492 (= call!63499 call!63504)))

(declare-fun b!1296457 () Bool)

(declare-fun res!861707 () Bool)

(assert (=> b!1296457 (=> (not res!861707) (not e!739651))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86181 0))(
  ( (array!86182 (arr!41587 (Array (_ BitVec 32) (_ BitVec 64))) (size!42138 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86181)

(assert (=> b!1296457 (= res!861707 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42138 _keys!1741))))))

(declare-fun b!1296458 () Bool)

(declare-fun res!861710 () Bool)

(assert (=> b!1296458 (=> (not res!861710) (not e!739651))))

(declare-datatypes ((List!29698 0))(
  ( (Nil!29695) (Cons!29694 (h!30903 (_ BitVec 64)) (t!43269 List!29698)) )
))
(declare-fun arrayNoDuplicates!0 (array!86181 (_ BitVec 32) List!29698) Bool)

(assert (=> b!1296458 (= res!861710 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29695))))

(declare-fun res!861712 () Bool)

(assert (=> start!109508 (=> (not res!861712) (not e!739651))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109508 (= res!861712 (validMask!0 mask!2175))))

(assert (=> start!109508 e!739651))

(assert (=> start!109508 tp_is_empty!34601))

(assert (=> start!109508 true))

(declare-datatypes ((ValueCell!16402 0))(
  ( (ValueCellFull!16402 (v!19976 V!51237)) (EmptyCell!16402) )
))
(declare-datatypes ((array!86183 0))(
  ( (array!86184 (arr!41588 (Array (_ BitVec 32) ValueCell!16402)) (size!42139 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86183)

(declare-fun e!739650 () Bool)

(declare-fun array_inv!31473 (array!86183) Bool)

(assert (=> start!109508 (and (array_inv!31473 _values!1445) e!739650)))

(declare-fun array_inv!31474 (array!86181) Bool)

(assert (=> start!109508 (array_inv!31474 _keys!1741)))

(assert (=> start!109508 tp!102003))

(declare-fun b!1296459 () Bool)

(declare-fun res!861714 () Bool)

(assert (=> b!1296459 (=> (not res!861714) (not e!739651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296459 (= res!861714 (not (validKeyInArray!0 (select (arr!41587 _keys!1741) from!2144))))))

(declare-fun bm!63493 () Bool)

(declare-fun lt!580432 () ListLongMap!20201)

(assert (=> bm!63493 (= call!63504 (contains!8170 (ite c!124357 lt!580421 (ite c!124356 lt!580432 lt!580423)) k!1205))))

(declare-fun bm!63494 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6127 (array!86181 array!86183 (_ BitVec 32) (_ BitVec 32) V!51237 V!51237 (_ BitVec 32) Int) ListLongMap!20201)

(assert (=> bm!63494 (= call!63505 (getCurrentListMapNoExtraKeys!6127 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1296460 () Bool)

(declare-fun res!861713 () Bool)

(assert (=> b!1296460 (=> (not res!861713) (not e!739651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86181 (_ BitVec 32)) Bool)

(assert (=> b!1296460 (= res!861713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296461 () Bool)

(declare-fun res!861709 () Bool)

(assert (=> b!1296461 (=> (not res!861709) (not e!739651))))

(assert (=> b!1296461 (= res!861709 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42138 _keys!1741))))))

(declare-fun b!1296462 () Bool)

(assert (=> b!1296462 call!63499))

(declare-fun lt!580431 () Unit!42899)

(assert (=> b!1296462 (= lt!580431 call!63497)))

(assert (=> b!1296462 (not call!63494)))

(declare-fun lt!580419 () Unit!42899)

(assert (=> b!1296462 (= lt!580419 call!63498)))

(assert (=> b!1296462 (= lt!580432 call!63496)))

(assert (=> b!1296462 (= e!739655 lt!580431)))

(declare-fun call!63500 () ListLongMap!20201)

(declare-fun bm!63495 () Bool)

(assert (=> bm!63495 (= call!63502 (contains!8170 (ite c!124357 lt!580428 call!63500) k!1205))))

(declare-fun b!1296463 () Bool)

(declare-fun e!739657 () Bool)

(declare-fun mapRes!53462 () Bool)

(assert (=> b!1296463 (= e!739650 (and e!739657 mapRes!53462))))

(declare-fun condMapEmpty!53462 () Bool)

(declare-fun mapDefault!53462 () ValueCell!16402)

