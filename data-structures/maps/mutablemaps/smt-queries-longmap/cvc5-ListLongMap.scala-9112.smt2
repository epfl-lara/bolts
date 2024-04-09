; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109492 () Bool)

(assert start!109492)

(declare-fun b_free!28945 () Bool)

(declare-fun b_next!28945 () Bool)

(assert (=> start!109492 (= b_free!28945 (not b_next!28945))))

(declare-fun tp!101954 () Bool)

(declare-fun b_and!47045 () Bool)

(assert (=> start!109492 (= tp!101954 b_and!47045)))

(declare-datatypes ((V!51217 0))(
  ( (V!51218 (val!17367 Int)) )
))
(declare-fun minValue!1387 () V!51217)

(declare-fun zeroValue!1387 () V!51217)

(declare-fun c!124285 () Bool)

(declare-fun bm!63203 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!42879 0))(
  ( (Unit!42880) )
))
(declare-fun call!63212 () Unit!42879)

(declare-datatypes ((tuple2!22516 0))(
  ( (tuple2!22517 (_1!11268 (_ BitVec 64)) (_2!11268 V!51217)) )
))
(declare-datatypes ((List!29684 0))(
  ( (Nil!29681) (Cons!29680 (h!30889 tuple2!22516) (t!43255 List!29684)) )
))
(declare-datatypes ((ListLongMap!20185 0))(
  ( (ListLongMap!20186 (toList!10108 List!29684)) )
))
(declare-fun lt!580043 () ListLongMap!20185)

(declare-fun lt!580039 () ListLongMap!20185)

(declare-fun c!124283 () Bool)

(declare-fun lt!580038 () ListLongMap!20185)

(declare-fun addStillNotContains!453 (ListLongMap!20185 (_ BitVec 64) V!51217 (_ BitVec 64)) Unit!42879)

(assert (=> bm!63203 (= call!63212 (addStillNotContains!453 (ite c!124283 lt!580039 (ite c!124285 lt!580038 lt!580043)) (ite (or c!124283 c!124285) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124283 c!124285) zeroValue!1387 minValue!1387) k!1205))))

(declare-fun b!1296043 () Bool)

(declare-fun res!861521 () Bool)

(declare-fun e!739462 () Bool)

(assert (=> b!1296043 (=> (not res!861521) (not e!739462))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86149 0))(
  ( (array!86150 (arr!41571 (Array (_ BitVec 32) (_ BitVec 64))) (size!42122 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86149)

(assert (=> b!1296043 (= res!861521 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42122 _keys!1741))))))

(declare-fun call!63215 () ListLongMap!20185)

(declare-fun bm!63204 () Bool)

(declare-fun +!4408 (ListLongMap!20185 tuple2!22516) ListLongMap!20185)

(assert (=> bm!63204 (= call!63215 (+!4408 (ite c!124283 lt!580039 (ite c!124285 lt!580038 lt!580043)) (ite (or c!124283 c!124285) (tuple2!22517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22517 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1296044 () Bool)

(declare-fun res!861520 () Bool)

(assert (=> b!1296044 (=> (not res!861520) (not e!739462))))

(declare-datatypes ((List!29685 0))(
  ( (Nil!29682) (Cons!29681 (h!30890 (_ BitVec 64)) (t!43256 List!29685)) )
))
(declare-fun arrayNoDuplicates!0 (array!86149 (_ BitVec 32) List!29685) Bool)

(assert (=> b!1296044 (= res!861520 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29682))))

(declare-fun bm!63205 () Bool)

(declare-fun call!63210 () Unit!42879)

(declare-fun call!63208 () Unit!42879)

(assert (=> bm!63205 (= call!63210 call!63208)))

(declare-fun mapIsEmpty!53438 () Bool)

(declare-fun mapRes!53438 () Bool)

(assert (=> mapIsEmpty!53438 mapRes!53438))

(declare-fun b!1296045 () Bool)

(declare-fun e!739463 () Bool)

(declare-fun e!739461 () Bool)

(assert (=> b!1296045 (= e!739463 (and e!739461 mapRes!53438))))

(declare-fun condMapEmpty!53438 () Bool)

(declare-datatypes ((ValueCell!16394 0))(
  ( (ValueCellFull!16394 (v!19968 V!51217)) (EmptyCell!16394) )
))
(declare-datatypes ((array!86151 0))(
  ( (array!86152 (arr!41572 (Array (_ BitVec 32) ValueCell!16394)) (size!42123 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86151)

(declare-fun mapDefault!53438 () ValueCell!16394)

