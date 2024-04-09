; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109094 () Bool)

(assert start!109094)

(declare-fun b_free!28547 () Bool)

(declare-fun b_next!28547 () Bool)

(assert (=> start!109094 (= b_free!28547 (not b_next!28547))))

(declare-fun tp!100761 () Bool)

(declare-fun b_and!46647 () Bool)

(assert (=> start!109094 (= tp!100761 b_and!46647)))

(declare-fun b!1289031 () Bool)

(declare-fun e!736036 () Bool)

(declare-fun tp_is_empty!34187 () Bool)

(assert (=> b!1289031 (= e!736036 tp_is_empty!34187)))

(declare-fun mapNonEmpty!52841 () Bool)

(declare-fun mapRes!52841 () Bool)

(declare-fun tp!100760 () Bool)

(assert (=> mapNonEmpty!52841 (= mapRes!52841 (and tp!100760 e!736036))))

(declare-datatypes ((V!50685 0))(
  ( (V!50686 (val!17168 Int)) )
))
(declare-datatypes ((ValueCell!16195 0))(
  ( (ValueCellFull!16195 (v!19769 V!50685)) (EmptyCell!16195) )
))
(declare-fun mapRest!52841 () (Array (_ BitVec 32) ValueCell!16195))

(declare-datatypes ((array!85373 0))(
  ( (array!85374 (arr!41183 (Array (_ BitVec 32) ValueCell!16195)) (size!41734 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85373)

(declare-fun mapValue!52841 () ValueCell!16195)

(declare-fun mapKey!52841 () (_ BitVec 32))

(assert (=> mapNonEmpty!52841 (= (arr!41183 _values!1445) (store mapRest!52841 mapKey!52841 mapValue!52841))))

(declare-fun b!1289032 () Bool)

(declare-fun e!736038 () Bool)

(declare-fun e!736037 () Bool)

(assert (=> b!1289032 (= e!736038 (not e!736037))))

(declare-fun res!856306 () Bool)

(assert (=> b!1289032 (=> res!856306 e!736037)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289032 (= res!856306 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22178 0))(
  ( (tuple2!22179 (_1!11099 (_ BitVec 64)) (_2!11099 V!50685)) )
))
(declare-datatypes ((List!29378 0))(
  ( (Nil!29375) (Cons!29374 (h!30583 tuple2!22178) (t!42949 List!29378)) )
))
(declare-datatypes ((ListLongMap!19847 0))(
  ( (ListLongMap!19848 (toList!9939 List!29378)) )
))
(declare-fun contains!7995 (ListLongMap!19847 (_ BitVec 64)) Bool)

(assert (=> b!1289032 (not (contains!7995 (ListLongMap!19848 Nil!29375) k!1205))))

(declare-datatypes ((Unit!42573 0))(
  ( (Unit!42574) )
))
(declare-fun lt!578101 () Unit!42573)

(declare-fun emptyContainsNothing!51 ((_ BitVec 64)) Unit!42573)

(assert (=> b!1289032 (= lt!578101 (emptyContainsNothing!51 k!1205))))

(declare-fun mapIsEmpty!52841 () Bool)

(assert (=> mapIsEmpty!52841 mapRes!52841))

(declare-fun b!1289033 () Bool)

(declare-fun res!856313 () Bool)

(assert (=> b!1289033 (=> (not res!856313) (not e!736038))))

(declare-fun minValue!1387 () V!50685)

(declare-fun zeroValue!1387 () V!50685)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85375 0))(
  ( (array!85376 (arr!41184 (Array (_ BitVec 32) (_ BitVec 64))) (size!41735 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85375)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4942 (array!85375 array!85373 (_ BitVec 32) (_ BitVec 32) V!50685 V!50685 (_ BitVec 32) Int) ListLongMap!19847)

(assert (=> b!1289033 (= res!856313 (contains!7995 (getCurrentListMap!4942 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289034 () Bool)

(declare-fun res!856307 () Bool)

(assert (=> b!1289034 (=> (not res!856307) (not e!736038))))

(assert (=> b!1289034 (= res!856307 (and (= (size!41734 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41735 _keys!1741) (size!41734 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289036 () Bool)

(declare-fun res!856314 () Bool)

(assert (=> b!1289036 (=> (not res!856314) (not e!736038))))

(assert (=> b!1289036 (= res!856314 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41735 _keys!1741))))))

(declare-fun b!1289037 () Bool)

(declare-fun res!856310 () Bool)

(assert (=> b!1289037 (=> (not res!856310) (not e!736038))))

(declare-datatypes ((List!29379 0))(
  ( (Nil!29376) (Cons!29375 (h!30584 (_ BitVec 64)) (t!42950 List!29379)) )
))
(declare-fun arrayNoDuplicates!0 (array!85375 (_ BitVec 32) List!29379) Bool)

(assert (=> b!1289037 (= res!856310 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29376))))

(declare-fun b!1289038 () Bool)

(declare-fun e!736035 () Bool)

(declare-fun e!736034 () Bool)

(assert (=> b!1289038 (= e!736035 (and e!736034 mapRes!52841))))

(declare-fun condMapEmpty!52841 () Bool)

(declare-fun mapDefault!52841 () ValueCell!16195)

