; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109496 () Bool)

(assert start!109496)

(declare-fun b_free!28949 () Bool)

(declare-fun b_next!28949 () Bool)

(assert (=> start!109496 (= b_free!28949 (not b_next!28949))))

(declare-fun tp!101967 () Bool)

(declare-fun b_and!47049 () Bool)

(assert (=> start!109496 (= tp!101967 b_and!47049)))

(declare-datatypes ((V!51221 0))(
  ( (V!51222 (val!17369 Int)) )
))
(declare-fun minValue!1387 () V!51221)

(declare-fun c!124303 () Bool)

(declare-datatypes ((Unit!42884 0))(
  ( (Unit!42885) )
))
(declare-fun call!63284 () Unit!42884)

(declare-fun bm!63275 () Bool)

(declare-datatypes ((tuple2!22520 0))(
  ( (tuple2!22521 (_1!11270 (_ BitVec 64)) (_2!11270 V!51221)) )
))
(declare-datatypes ((List!29688 0))(
  ( (Nil!29685) (Cons!29684 (h!30893 tuple2!22520) (t!43259 List!29688)) )
))
(declare-datatypes ((ListLongMap!20189 0))(
  ( (ListLongMap!20190 (toList!10110 List!29688)) )
))
(declare-fun lt!580138 () ListLongMap!20189)

(declare-fun lt!580140 () ListLongMap!20189)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580142 () ListLongMap!20189)

(declare-fun zeroValue!1387 () V!51221)

(declare-fun c!124302 () Bool)

(declare-fun addStillNotContains!455 (ListLongMap!20189 (_ BitVec 64) V!51221 (_ BitVec 64)) Unit!42884)

(assert (=> bm!63275 (= call!63284 (addStillNotContains!455 (ite c!124302 lt!580140 (ite c!124303 lt!580138 lt!580142)) (ite (or c!124302 c!124303) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124302 c!124303) zeroValue!1387 minValue!1387) k!1205))))

(declare-fun b!1296145 () Bool)

(declare-fun res!861570 () Bool)

(declare-fun e!739509 () Bool)

(assert (=> b!1296145 (=> (not res!861570) (not e!739509))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86157 0))(
  ( (array!86158 (arr!41575 (Array (_ BitVec 32) (_ BitVec 64))) (size!42126 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86157)

(assert (=> b!1296145 (= res!861570 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42126 _keys!1741))))))

(declare-fun lt!580143 () ListLongMap!20189)

(declare-fun call!63278 () Bool)

(declare-fun bm!63276 () Bool)

(declare-fun call!63283 () ListLongMap!20189)

(declare-fun contains!8165 (ListLongMap!20189 (_ BitVec 64)) Bool)

(assert (=> bm!63276 (= call!63278 (contains!8165 (ite c!124302 lt!580143 call!63283) k!1205))))

(declare-fun b!1296146 () Bool)

(declare-fun e!739511 () Bool)

(declare-fun tp_is_empty!34589 () Bool)

(assert (=> b!1296146 (= e!739511 tp_is_empty!34589)))

(declare-fun b!1296147 () Bool)

(declare-fun call!63282 () Bool)

(assert (=> b!1296147 call!63282))

(declare-fun lt!580132 () Unit!42884)

(declare-fun call!63286 () Unit!42884)

(assert (=> b!1296147 (= lt!580132 call!63286)))

(declare-fun call!63285 () Bool)

(assert (=> b!1296147 (not call!63285)))

(declare-fun lt!580139 () Unit!42884)

(declare-fun call!63288 () Unit!42884)

(assert (=> b!1296147 (= lt!580139 call!63288)))

(declare-fun call!63279 () ListLongMap!20189)

(assert (=> b!1296147 (= lt!580138 call!63279)))

(declare-fun e!739508 () Unit!42884)

(assert (=> b!1296147 (= e!739508 lt!580132)))

(declare-fun b!1296148 () Bool)

(declare-fun e!739513 () Unit!42884)

(declare-fun lt!580141 () Unit!42884)

(assert (=> b!1296148 (= e!739513 lt!580141)))

(declare-fun call!63281 () ListLongMap!20189)

(assert (=> b!1296148 (= lt!580140 call!63281)))

(declare-fun lt!580135 () Unit!42884)

(assert (=> b!1296148 (= lt!580135 call!63284)))

(declare-fun call!63280 () ListLongMap!20189)

(assert (=> b!1296148 (= lt!580143 call!63280)))

(assert (=> b!1296148 (not call!63278)))

(declare-fun lt!580129 () Unit!42884)

(assert (=> b!1296148 (= lt!580129 (addStillNotContains!455 lt!580140 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun +!4410 (ListLongMap!20189 tuple2!22520) ListLongMap!20189)

(assert (=> b!1296148 (not (contains!8165 (+!4410 lt!580140 (tuple2!22521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!580136 () Unit!42884)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!60 ((_ BitVec 64) (_ BitVec 64) V!51221 ListLongMap!20189) Unit!42884)

(assert (=> b!1296148 (= lt!580136 (lemmaInListMapAfterAddingDiffThenInBefore!60 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!580143))))

(assert (=> b!1296148 false))

(declare-fun call!63289 () Unit!42884)

(assert (=> b!1296148 (= lt!580141 call!63289)))

(declare-fun lt!580144 () Bool)

(declare-fun call!63287 () Bool)

(assert (=> b!1296148 (= lt!580144 call!63287)))

(declare-fun b!1296149 () Bool)

(assert (=> b!1296149 (= e!739509 (not true))))

(declare-fun lt!580131 () Unit!42884)

(assert (=> b!1296149 (= lt!580131 e!739513)))

(declare-fun lt!580133 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1296149 (= c!124302 (and (not lt!580133) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1296149 (= lt!580133 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1296149 (not (contains!8165 (ListLongMap!20190 Nil!29685) k!1205))))

(declare-fun lt!580137 () Unit!42884)

(declare-fun emptyContainsNothing!195 ((_ BitVec 64)) Unit!42884)

(assert (=> b!1296149 (= lt!580137 (emptyContainsNothing!195 k!1205))))

(declare-fun b!1296150 () Bool)

(declare-fun res!861569 () Bool)

(assert (=> b!1296150 (=> (not res!861569) (not e!739509))))

(declare-datatypes ((List!29689 0))(
  ( (Nil!29686) (Cons!29685 (h!30894 (_ BitVec 64)) (t!43260 List!29689)) )
))
(declare-fun arrayNoDuplicates!0 (array!86157 (_ BitVec 32) List!29689) Bool)

(assert (=> b!1296150 (= res!861569 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29686))))

(declare-fun mapIsEmpty!53444 () Bool)

(declare-fun mapRes!53444 () Bool)

(assert (=> mapIsEmpty!53444 mapRes!53444))

(declare-fun b!1296151 () Bool)

(declare-fun res!861563 () Bool)

(assert (=> b!1296151 (=> (not res!861563) (not e!739509))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16396 0))(
  ( (ValueCellFull!16396 (v!19970 V!51221)) (EmptyCell!16396) )
))
(declare-datatypes ((array!86159 0))(
  ( (array!86160 (arr!41576 (Array (_ BitVec 32) ValueCell!16396)) (size!42127 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86159)

(assert (=> b!1296151 (= res!861563 (and (= (size!42127 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42126 _keys!1741) (size!42127 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!63277 () Bool)

(assert (=> bm!63277 (= call!63287 (contains!8165 (ite c!124302 lt!580140 (ite c!124303 lt!580138 lt!580142)) k!1205))))

(declare-fun bm!63278 () Bool)

(assert (=> bm!63278 (= call!63285 call!63278)))

(declare-fun bm!63279 () Bool)

(assert (=> bm!63279 (= call!63282 call!63287)))

(declare-fun b!1296152 () Bool)

(declare-fun res!861568 () Bool)

(assert (=> b!1296152 (=> (not res!861568) (not e!739509))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5087 (array!86157 array!86159 (_ BitVec 32) (_ BitVec 32) V!51221 V!51221 (_ BitVec 32) Int) ListLongMap!20189)

(assert (=> b!1296152 (= res!861568 (contains!8165 (getCurrentListMap!5087 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53444 () Bool)

(declare-fun tp!101966 () Bool)

(assert (=> mapNonEmpty!53444 (= mapRes!53444 (and tp!101966 e!739511))))

(declare-fun mapRest!53444 () (Array (_ BitVec 32) ValueCell!16396))

(declare-fun mapKey!53444 () (_ BitVec 32))

(declare-fun mapValue!53444 () ValueCell!16396)

(assert (=> mapNonEmpty!53444 (= (arr!41576 _values!1445) (store mapRest!53444 mapKey!53444 mapValue!53444))))

(declare-fun bm!63280 () Bool)

(assert (=> bm!63280 (= call!63283 call!63280)))

(declare-fun bm!63281 () Bool)

(assert (=> bm!63281 (= call!63279 call!63281)))

(declare-fun res!861566 () Bool)

(assert (=> start!109496 (=> (not res!861566) (not e!739509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109496 (= res!861566 (validMask!0 mask!2175))))

(assert (=> start!109496 e!739509))

(assert (=> start!109496 tp_is_empty!34589))

(assert (=> start!109496 true))

(declare-fun e!739512 () Bool)

(declare-fun array_inv!31465 (array!86159) Bool)

(assert (=> start!109496 (and (array_inv!31465 _values!1445) e!739512)))

(declare-fun array_inv!31466 (array!86157) Bool)

(assert (=> start!109496 (array_inv!31466 _keys!1741)))

(assert (=> start!109496 tp!101967))

(declare-fun b!1296153 () Bool)

(declare-fun res!861565 () Bool)

(assert (=> b!1296153 (=> (not res!861565) (not e!739509))))

(assert (=> b!1296153 (= res!861565 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42126 _keys!1741))))))

(declare-fun bm!63282 () Bool)

(assert (=> bm!63282 (= call!63280 (+!4410 (ite c!124302 lt!580140 (ite c!124303 lt!580138 lt!580142)) (ite (or c!124302 c!124303) (tuple2!22521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22521 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1296154 () Bool)

(declare-fun res!861567 () Bool)

(assert (=> b!1296154 (=> (not res!861567) (not e!739509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296154 (= res!861567 (not (validKeyInArray!0 (select (arr!41575 _keys!1741) from!2144))))))

(declare-fun b!1296155 () Bool)

(declare-fun e!739507 () Bool)

(assert (=> b!1296155 (= e!739507 tp_is_empty!34589)))

(declare-fun bm!63283 () Bool)

(assert (=> bm!63283 (= call!63288 call!63284)))

(declare-fun b!1296156 () Bool)

(declare-fun e!739506 () Unit!42884)

(declare-fun Unit!42886 () Unit!42884)

(assert (=> b!1296156 (= e!739506 Unit!42886)))

(declare-fun b!1296157 () Bool)

(assert (=> b!1296157 (= e!739513 e!739508)))

(assert (=> b!1296157 (= c!124303 (and (not lt!580133) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1296158 () Bool)

(declare-fun res!861564 () Bool)

(assert (=> b!1296158 (=> (not res!861564) (not e!739509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86157 (_ BitVec 32)) Bool)

(assert (=> b!1296158 (= res!861564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296159 () Bool)

(declare-fun lt!580134 () Unit!42884)

(assert (=> b!1296159 (= e!739506 lt!580134)))

(assert (=> b!1296159 (= lt!580142 call!63279)))

(declare-fun lt!580130 () Unit!42884)

(assert (=> b!1296159 (= lt!580130 call!63288)))

(assert (=> b!1296159 (not call!63285)))

(assert (=> b!1296159 (= lt!580134 call!63286)))

(assert (=> b!1296159 call!63282))

(declare-fun b!1296160 () Bool)

(declare-fun c!124301 () Bool)

(assert (=> b!1296160 (= c!124301 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!580133))))

(assert (=> b!1296160 (= e!739508 e!739506)))

(declare-fun bm!63284 () Bool)

(assert (=> bm!63284 (= call!63289 (lemmaInListMapAfterAddingDiffThenInBefore!60 k!1205 (ite (or c!124302 c!124303) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124302 c!124303) zeroValue!1387 minValue!1387) (ite c!124302 lt!580140 (ite c!124303 lt!580138 lt!580142))))))

(declare-fun b!1296161 () Bool)

(assert (=> b!1296161 (= e!739512 (and e!739507 mapRes!53444))))

(declare-fun condMapEmpty!53444 () Bool)

(declare-fun mapDefault!53444 () ValueCell!16396)

