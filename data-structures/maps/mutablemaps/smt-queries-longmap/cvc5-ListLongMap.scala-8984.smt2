; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108700 () Bool)

(assert start!108700)

(declare-fun b_free!28177 () Bool)

(declare-fun b_next!28177 () Bool)

(assert (=> start!108700 (= b_free!28177 (not b_next!28177))))

(declare-fun tp!99648 () Bool)

(declare-fun b_and!46253 () Bool)

(assert (=> start!108700 (= tp!99648 b_and!46253)))

(declare-fun mapIsEmpty!52283 () Bool)

(declare-fun mapRes!52283 () Bool)

(assert (=> mapIsEmpty!52283 mapRes!52283))

(declare-fun b!1282563 () Bool)

(declare-fun e!732864 () Bool)

(assert (=> b!1282563 (= e!732864 false)))

(declare-datatypes ((V!50193 0))(
  ( (V!50194 (val!16983 Int)) )
))
(declare-fun minValue!1387 () V!50193)

(declare-fun zeroValue!1387 () V!50193)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16010 0))(
  ( (ValueCellFull!16010 (v!19583 V!50193)) (EmptyCell!16010) )
))
(declare-datatypes ((array!84655 0))(
  ( (array!84656 (arr!40825 (Array (_ BitVec 32) ValueCell!16010)) (size!41376 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84655)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!576498 () Bool)

(declare-datatypes ((array!84657 0))(
  ( (array!84658 (arr!40826 (Array (_ BitVec 32) (_ BitVec 64))) (size!41377 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84657)

(declare-datatypes ((tuple2!21890 0))(
  ( (tuple2!21891 (_1!10955 (_ BitVec 64)) (_2!10955 V!50193)) )
))
(declare-datatypes ((List!29100 0))(
  ( (Nil!29097) (Cons!29096 (h!30305 tuple2!21890) (t!42651 List!29100)) )
))
(declare-datatypes ((ListLongMap!19559 0))(
  ( (ListLongMap!19560 (toList!9795 List!29100)) )
))
(declare-fun contains!7850 (ListLongMap!19559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4815 (array!84657 array!84655 (_ BitVec 32) (_ BitVec 32) V!50193 V!50193 (_ BitVec 32) Int) ListLongMap!19559)

(assert (=> b!1282563 (= lt!576498 (contains!7850 (getCurrentListMap!4815 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282564 () Bool)

(declare-fun res!851996 () Bool)

(assert (=> b!1282564 (=> (not res!851996) (not e!732864))))

(assert (=> b!1282564 (= res!851996 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41377 _keys!1741))))))

(declare-fun res!851994 () Bool)

(assert (=> start!108700 (=> (not res!851994) (not e!732864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108700 (= res!851994 (validMask!0 mask!2175))))

(assert (=> start!108700 e!732864))

(declare-fun tp_is_empty!33817 () Bool)

(assert (=> start!108700 tp_is_empty!33817))

(assert (=> start!108700 true))

(declare-fun e!732865 () Bool)

(declare-fun array_inv!30951 (array!84655) Bool)

(assert (=> start!108700 (and (array_inv!30951 _values!1445) e!732865)))

(declare-fun array_inv!30952 (array!84657) Bool)

(assert (=> start!108700 (array_inv!30952 _keys!1741)))

(assert (=> start!108700 tp!99648))

(declare-fun b!1282565 () Bool)

(declare-fun e!732862 () Bool)

(assert (=> b!1282565 (= e!732862 tp_is_empty!33817)))

(declare-fun b!1282566 () Bool)

(assert (=> b!1282566 (= e!732865 (and e!732862 mapRes!52283))))

(declare-fun condMapEmpty!52283 () Bool)

(declare-fun mapDefault!52283 () ValueCell!16010)

