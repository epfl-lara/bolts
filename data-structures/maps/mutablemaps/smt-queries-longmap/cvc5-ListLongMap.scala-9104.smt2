; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109444 () Bool)

(assert start!109444)

(declare-fun b_free!28897 () Bool)

(declare-fun b_next!28897 () Bool)

(assert (=> start!109444 (= b_free!28897 (not b_next!28897))))

(declare-fun tp!101811 () Bool)

(declare-fun b_and!46997 () Bool)

(assert (=> start!109444 (= tp!101811 b_and!46997)))

(declare-fun mapIsEmpty!53366 () Bool)

(declare-fun mapRes!53366 () Bool)

(assert (=> mapIsEmpty!53366 mapRes!53366))

(declare-fun b!1295170 () Bool)

(declare-fun e!739027 () Bool)

(declare-fun e!739023 () Bool)

(assert (=> b!1295170 (= e!739027 (not e!739023))))

(declare-fun res!860877 () Bool)

(assert (=> b!1295170 (=> res!860877 e!739023)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295170 (= res!860877 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51153 0))(
  ( (V!51154 (val!17343 Int)) )
))
(declare-datatypes ((tuple2!22480 0))(
  ( (tuple2!22481 (_1!11250 (_ BitVec 64)) (_2!11250 V!51153)) )
))
(declare-datatypes ((List!29649 0))(
  ( (Nil!29646) (Cons!29645 (h!30854 tuple2!22480) (t!43220 List!29649)) )
))
(declare-datatypes ((ListLongMap!20149 0))(
  ( (ListLongMap!20150 (toList!10090 List!29649)) )
))
(declare-fun contains!8146 (ListLongMap!20149 (_ BitVec 64)) Bool)

(assert (=> b!1295170 (not (contains!8146 (ListLongMap!20150 Nil!29646) k!1205))))

(declare-datatypes ((Unit!42847 0))(
  ( (Unit!42848) )
))
(declare-fun lt!579791 () Unit!42847)

(declare-fun emptyContainsNothing!179 ((_ BitVec 64)) Unit!42847)

(assert (=> b!1295170 (= lt!579791 (emptyContainsNothing!179 k!1205))))

(declare-fun b!1295171 () Bool)

(declare-fun res!860874 () Bool)

(assert (=> b!1295171 (=> (not res!860874) (not e!739027))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86057 0))(
  ( (array!86058 (arr!41525 (Array (_ BitVec 32) (_ BitVec 64))) (size!42076 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86057)

(assert (=> b!1295171 (= res!860874 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42076 _keys!1741))))))

(declare-fun b!1295172 () Bool)

(declare-fun e!739026 () Bool)

(declare-fun tp_is_empty!34537 () Bool)

(assert (=> b!1295172 (= e!739026 tp_is_empty!34537)))

(declare-fun b!1295173 () Bool)

(declare-fun res!860873 () Bool)

(assert (=> b!1295173 (=> (not res!860873) (not e!739027))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86057 (_ BitVec 32)) Bool)

(assert (=> b!1295173 (= res!860873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295174 () Bool)

(declare-fun res!860870 () Bool)

(assert (=> b!1295174 (=> (not res!860870) (not e!739027))))

(declare-datatypes ((ValueCell!16370 0))(
  ( (ValueCellFull!16370 (v!19944 V!51153)) (EmptyCell!16370) )
))
(declare-datatypes ((array!86059 0))(
  ( (array!86060 (arr!41526 (Array (_ BitVec 32) ValueCell!16370)) (size!42077 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86059)

(assert (=> b!1295174 (= res!860870 (and (= (size!42077 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42076 _keys!1741) (size!42077 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295175 () Bool)

(assert (=> b!1295175 (= e!739023 true)))

(declare-fun lt!579793 () ListLongMap!20149)

(declare-fun minValue!1387 () V!51153)

(declare-fun +!4394 (ListLongMap!20149 tuple2!22480) ListLongMap!20149)

(assert (=> b!1295175 (not (contains!8146 (+!4394 lt!579793 (tuple2!22481 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579792 () Unit!42847)

(declare-fun addStillNotContains!439 (ListLongMap!20149 (_ BitVec 64) V!51153 (_ BitVec 64)) Unit!42847)

(assert (=> b!1295175 (= lt!579792 (addStillNotContains!439 lt!579793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51153)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6110 (array!86057 array!86059 (_ BitVec 32) (_ BitVec 32) V!51153 V!51153 (_ BitVec 32) Int) ListLongMap!20149)

(assert (=> b!1295175 (= lt!579793 (getCurrentListMapNoExtraKeys!6110 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295176 () Bool)

(declare-fun e!739024 () Bool)

(assert (=> b!1295176 (= e!739024 tp_is_empty!34537)))

(declare-fun b!1295177 () Bool)

(declare-fun res!860872 () Bool)

(assert (=> b!1295177 (=> (not res!860872) (not e!739027))))

(declare-fun getCurrentListMap!5071 (array!86057 array!86059 (_ BitVec 32) (_ BitVec 32) V!51153 V!51153 (_ BitVec 32) Int) ListLongMap!20149)

(assert (=> b!1295177 (= res!860872 (contains!8146 (getCurrentListMap!5071 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295178 () Bool)

(declare-fun res!860871 () Bool)

(assert (=> b!1295178 (=> (not res!860871) (not e!739027))))

(assert (=> b!1295178 (= res!860871 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42076 _keys!1741))))))

(declare-fun mapNonEmpty!53366 () Bool)

(declare-fun tp!101810 () Bool)

(assert (=> mapNonEmpty!53366 (= mapRes!53366 (and tp!101810 e!739026))))

(declare-fun mapKey!53366 () (_ BitVec 32))

(declare-fun mapRest!53366 () (Array (_ BitVec 32) ValueCell!16370))

(declare-fun mapValue!53366 () ValueCell!16370)

(assert (=> mapNonEmpty!53366 (= (arr!41526 _values!1445) (store mapRest!53366 mapKey!53366 mapValue!53366))))

(declare-fun b!1295179 () Bool)

(declare-fun e!739022 () Bool)

(assert (=> b!1295179 (= e!739022 (and e!739024 mapRes!53366))))

(declare-fun condMapEmpty!53366 () Bool)

(declare-fun mapDefault!53366 () ValueCell!16370)

