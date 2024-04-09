; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108992 () Bool)

(assert start!108992)

(declare-fun b_free!28445 () Bool)

(declare-fun b_next!28445 () Bool)

(assert (=> start!108992 (= b_free!28445 (not b_next!28445))))

(declare-fun tp!100455 () Bool)

(declare-fun b_and!46545 () Bool)

(assert (=> start!108992 (= tp!100455 b_and!46545)))

(declare-fun b!1287268 () Bool)

(declare-fun res!855005 () Bool)

(declare-fun e!735192 () Bool)

(assert (=> b!1287268 (=> (not res!855005) (not e!735192))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85175 0))(
  ( (array!85176 (arr!41084 (Array (_ BitVec 32) (_ BitVec 64))) (size!41635 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85175)

(assert (=> b!1287268 (= res!855005 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41635 _keys!1741))))))

(declare-fun mapNonEmpty!52688 () Bool)

(declare-fun mapRes!52688 () Bool)

(declare-fun tp!100454 () Bool)

(declare-fun e!735191 () Bool)

(assert (=> mapNonEmpty!52688 (= mapRes!52688 (and tp!100454 e!735191))))

(declare-datatypes ((V!50549 0))(
  ( (V!50550 (val!17117 Int)) )
))
(declare-datatypes ((ValueCell!16144 0))(
  ( (ValueCellFull!16144 (v!19718 V!50549)) (EmptyCell!16144) )
))
(declare-fun mapValue!52688 () ValueCell!16144)

(declare-fun mapKey!52688 () (_ BitVec 32))

(declare-datatypes ((array!85177 0))(
  ( (array!85178 (arr!41085 (Array (_ BitVec 32) ValueCell!16144)) (size!41636 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85177)

(declare-fun mapRest!52688 () (Array (_ BitVec 32) ValueCell!16144))

(assert (=> mapNonEmpty!52688 (= (arr!41085 _values!1445) (store mapRest!52688 mapKey!52688 mapValue!52688))))

(declare-fun mapIsEmpty!52688 () Bool)

(assert (=> mapIsEmpty!52688 mapRes!52688))

(declare-fun b!1287269 () Bool)

(declare-fun res!855002 () Bool)

(assert (=> b!1287269 (=> (not res!855002) (not e!735192))))

(declare-datatypes ((List!29295 0))(
  ( (Nil!29292) (Cons!29291 (h!30500 (_ BitVec 64)) (t!42866 List!29295)) )
))
(declare-fun arrayNoDuplicates!0 (array!85175 (_ BitVec 32) List!29295) Bool)

(assert (=> b!1287269 (= res!855002 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29292))))

(declare-fun res!855003 () Bool)

(assert (=> start!108992 (=> (not res!855003) (not e!735192))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108992 (= res!855003 (validMask!0 mask!2175))))

(assert (=> start!108992 e!735192))

(declare-fun tp_is_empty!34085 () Bool)

(assert (=> start!108992 tp_is_empty!34085))

(assert (=> start!108992 true))

(declare-fun e!735193 () Bool)

(declare-fun array_inv!31129 (array!85177) Bool)

(assert (=> start!108992 (and (array_inv!31129 _values!1445) e!735193)))

(declare-fun array_inv!31130 (array!85175) Bool)

(assert (=> start!108992 (array_inv!31130 _keys!1741)))

(assert (=> start!108992 tp!100455))

(declare-fun b!1287270 () Bool)

(declare-fun res!855004 () Bool)

(assert (=> b!1287270 (=> (not res!855004) (not e!735192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287270 (= res!855004 (not (validKeyInArray!0 (select (arr!41084 _keys!1741) from!2144))))))

(declare-fun b!1287271 () Bool)

(declare-fun res!855006 () Bool)

(assert (=> b!1287271 (=> (not res!855006) (not e!735192))))

(declare-fun minValue!1387 () V!50549)

(declare-fun zeroValue!1387 () V!50549)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22094 0))(
  ( (tuple2!22095 (_1!11057 (_ BitVec 64)) (_2!11057 V!50549)) )
))
(declare-datatypes ((List!29296 0))(
  ( (Nil!29293) (Cons!29292 (h!30501 tuple2!22094) (t!42867 List!29296)) )
))
(declare-datatypes ((ListLongMap!19763 0))(
  ( (ListLongMap!19764 (toList!9897 List!29296)) )
))
(declare-fun contains!7953 (ListLongMap!19763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4905 (array!85175 array!85177 (_ BitVec 32) (_ BitVec 32) V!50549 V!50549 (_ BitVec 32) Int) ListLongMap!19763)

(assert (=> b!1287271 (= res!855006 (contains!7953 (getCurrentListMap!4905 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287272 () Bool)

(declare-fun e!735189 () Bool)

(assert (=> b!1287272 (= e!735193 (and e!735189 mapRes!52688))))

(declare-fun condMapEmpty!52688 () Bool)

(declare-fun mapDefault!52688 () ValueCell!16144)

