; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110200 () Bool)

(assert start!110200)

(declare-fun b_free!29287 () Bool)

(declare-fun b_next!29287 () Bool)

(assert (=> start!110200 (= b_free!29287 (not b_next!29287))))

(declare-fun tp!103019 () Bool)

(declare-fun b_and!47477 () Bool)

(assert (=> start!110200 (= tp!103019 b_and!47477)))

(declare-fun b!1304278 () Bool)

(declare-fun e!743992 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1304278 (= e!743992 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!1205)))))

(declare-fun b!1304279 () Bool)

(declare-fun res!866304 () Bool)

(declare-fun e!743990 () Bool)

(assert (=> b!1304279 (=> (not res!866304) (not e!743990))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51673 0))(
  ( (V!51674 (val!17538 Int)) )
))
(declare-datatypes ((ValueCell!16565 0))(
  ( (ValueCellFull!16565 (v!20155 V!51673)) (EmptyCell!16565) )
))
(declare-datatypes ((array!86835 0))(
  ( (array!86836 (arr!41902 (Array (_ BitVec 32) ValueCell!16565)) (size!42453 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86835)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86837 0))(
  ( (array!86838 (arr!41903 (Array (_ BitVec 32) (_ BitVec 64))) (size!42454 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86837)

(assert (=> b!1304279 (= res!866304 (and (= (size!42453 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42454 _keys!1741) (size!42453 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53990 () Bool)

(declare-fun mapRes!53990 () Bool)

(declare-fun tp!103020 () Bool)

(declare-fun e!743988 () Bool)

(assert (=> mapNonEmpty!53990 (= mapRes!53990 (and tp!103020 e!743988))))

(declare-fun mapValue!53990 () ValueCell!16565)

(declare-fun mapRest!53990 () (Array (_ BitVec 32) ValueCell!16565))

(declare-fun mapKey!53990 () (_ BitVec 32))

(assert (=> mapNonEmpty!53990 (= (arr!41902 _values!1445) (store mapRest!53990 mapKey!53990 mapValue!53990))))

(declare-fun b!1304281 () Bool)

(declare-fun e!743991 () Bool)

(assert (=> b!1304281 (= e!743991 e!743992)))

(declare-fun res!866306 () Bool)

(assert (=> b!1304281 (=> (not res!866306) (not e!743992))))

(declare-fun minValue!1387 () V!51673)

(declare-fun zeroValue!1387 () V!51673)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22794 0))(
  ( (tuple2!22795 (_1!11407 (_ BitVec 64)) (_2!11407 V!51673)) )
))
(declare-datatypes ((List!29944 0))(
  ( (Nil!29941) (Cons!29940 (h!31149 tuple2!22794) (t!43549 List!29944)) )
))
(declare-datatypes ((ListLongMap!20463 0))(
  ( (ListLongMap!20464 (toList!10247 List!29944)) )
))
(declare-fun contains!8322 (ListLongMap!20463 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6181 (array!86837 array!86835 (_ BitVec 32) (_ BitVec 32) V!51673 V!51673 (_ BitVec 32) Int) ListLongMap!20463)

(assert (=> b!1304281 (= res!866306 (not (contains!8322 (getCurrentListMapNoExtraKeys!6181 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205)))))

(declare-fun b!1304282 () Bool)

(declare-fun res!866309 () Bool)

(assert (=> b!1304282 (=> (not res!866309) (not e!743990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304282 (= res!866309 (not (validKeyInArray!0 (select (arr!41903 _keys!1741) from!2144))))))

(declare-fun b!1304283 () Bool)

(declare-fun res!866303 () Bool)

(assert (=> b!1304283 (=> (not res!866303) (not e!743990))))

(declare-datatypes ((List!29945 0))(
  ( (Nil!29942) (Cons!29941 (h!31150 (_ BitVec 64)) (t!43550 List!29945)) )
))
(declare-fun arrayNoDuplicates!0 (array!86837 (_ BitVec 32) List!29945) Bool)

(assert (=> b!1304283 (= res!866303 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29942))))

(declare-fun b!1304284 () Bool)

(declare-fun res!866308 () Bool)

(assert (=> b!1304284 (=> (not res!866308) (not e!743990))))

(assert (=> b!1304284 (= res!866308 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42454 _keys!1741))))))

(declare-fun b!1304285 () Bool)

(assert (=> b!1304285 (= e!743990 (not e!743991))))

(declare-fun res!866302 () Bool)

(assert (=> b!1304285 (=> res!866302 e!743991)))

(assert (=> b!1304285 (= res!866302 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1304285 (not (contains!8322 (ListLongMap!20464 Nil!29941) k!1205))))

(declare-datatypes ((Unit!43142 0))(
  ( (Unit!43143) )
))
(declare-fun lt!583707 () Unit!43142)

(declare-fun emptyContainsNothing!230 ((_ BitVec 64)) Unit!43142)

(assert (=> b!1304285 (= lt!583707 (emptyContainsNothing!230 k!1205))))

(declare-fun b!1304280 () Bool)

(declare-fun tp_is_empty!34927 () Bool)

(assert (=> b!1304280 (= e!743988 tp_is_empty!34927)))

(declare-fun res!866305 () Bool)

(assert (=> start!110200 (=> (not res!866305) (not e!743990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110200 (= res!866305 (validMask!0 mask!2175))))

(assert (=> start!110200 e!743990))

(assert (=> start!110200 tp_is_empty!34927))

(assert (=> start!110200 true))

(declare-fun e!743989 () Bool)

(declare-fun array_inv!31689 (array!86835) Bool)

(assert (=> start!110200 (and (array_inv!31689 _values!1445) e!743989)))

(declare-fun array_inv!31690 (array!86837) Bool)

(assert (=> start!110200 (array_inv!31690 _keys!1741)))

(assert (=> start!110200 tp!103019))

(declare-fun mapIsEmpty!53990 () Bool)

(assert (=> mapIsEmpty!53990 mapRes!53990))

(declare-fun b!1304286 () Bool)

(declare-fun e!743987 () Bool)

(assert (=> b!1304286 (= e!743989 (and e!743987 mapRes!53990))))

(declare-fun condMapEmpty!53990 () Bool)

(declare-fun mapDefault!53990 () ValueCell!16565)

