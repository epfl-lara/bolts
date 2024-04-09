; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108450 () Bool)

(assert start!108450)

(declare-fun b_free!27961 () Bool)

(declare-fun b_next!27961 () Bool)

(assert (=> start!108450 (= b_free!27961 (not b_next!27961))))

(declare-fun tp!98994 () Bool)

(declare-fun b_and!46031 () Bool)

(assert (=> start!108450 (= tp!98994 b_and!46031)))

(declare-fun b!1279438 () Bool)

(declare-fun e!731047 () Bool)

(declare-fun tp_is_empty!33601 () Bool)

(assert (=> b!1279438 (= e!731047 tp_is_empty!33601)))

(declare-fun b!1279439 () Bool)

(declare-fun res!849989 () Bool)

(declare-fun e!731048 () Bool)

(assert (=> b!1279439 (=> (not res!849989) (not e!731048))))

(declare-datatypes ((array!84237 0))(
  ( (array!84238 (arr!40618 (Array (_ BitVec 32) (_ BitVec 64))) (size!41169 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84237)

(declare-datatypes ((List!28950 0))(
  ( (Nil!28947) (Cons!28946 (h!30155 (_ BitVec 64)) (t!42497 List!28950)) )
))
(declare-fun arrayNoDuplicates!0 (array!84237 (_ BitVec 32) List!28950) Bool)

(assert (=> b!1279439 (= res!849989 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28947))))

(declare-fun b!1279440 () Bool)

(declare-fun res!849992 () Bool)

(assert (=> b!1279440 (=> (not res!849992) (not e!731048))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49905 0))(
  ( (V!49906 (val!16875 Int)) )
))
(declare-datatypes ((ValueCell!15902 0))(
  ( (ValueCellFull!15902 (v!19473 V!49905)) (EmptyCell!15902) )
))
(declare-datatypes ((array!84239 0))(
  ( (array!84240 (arr!40619 (Array (_ BitVec 32) ValueCell!15902)) (size!41170 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84239)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279440 (= res!849992 (and (= (size!41170 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41169 _keys!1741) (size!41170 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279441 () Bool)

(declare-fun res!849988 () Bool)

(assert (=> b!1279441 (=> (not res!849988) (not e!731048))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279441 (= res!849988 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41169 _keys!1741))))))

(declare-fun b!1279442 () Bool)

(declare-fun e!731046 () Bool)

(assert (=> b!1279442 (= e!731046 tp_is_empty!33601)))

(declare-fun b!1279443 () Bool)

(assert (=> b!1279443 (= e!731048 false)))

(declare-fun minValue!1387 () V!49905)

(declare-fun zeroValue!1387 () V!49905)

(declare-fun lt!575959 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21740 0))(
  ( (tuple2!21741 (_1!10880 (_ BitVec 64)) (_2!10880 V!49905)) )
))
(declare-datatypes ((List!28951 0))(
  ( (Nil!28948) (Cons!28947 (h!30156 tuple2!21740) (t!42498 List!28951)) )
))
(declare-datatypes ((ListLongMap!19409 0))(
  ( (ListLongMap!19410 (toList!9720 List!28951)) )
))
(declare-fun contains!7773 (ListLongMap!19409 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4740 (array!84237 array!84239 (_ BitVec 32) (_ BitVec 32) V!49905 V!49905 (_ BitVec 32) Int) ListLongMap!19409)

(assert (=> b!1279443 (= lt!575959 (contains!7773 (getCurrentListMap!4740 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279444 () Bool)

(declare-fun e!731050 () Bool)

(declare-fun mapRes!51953 () Bool)

(assert (=> b!1279444 (= e!731050 (and e!731047 mapRes!51953))))

(declare-fun condMapEmpty!51953 () Bool)

(declare-fun mapDefault!51953 () ValueCell!15902)

