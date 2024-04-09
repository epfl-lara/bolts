; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109132 () Bool)

(assert start!109132)

(declare-fun b_free!28585 () Bool)

(declare-fun b_next!28585 () Bool)

(assert (=> start!109132 (= b_free!28585 (not b_next!28585))))

(declare-fun tp!100874 () Bool)

(declare-fun b_and!46685 () Bool)

(assert (=> start!109132 (= tp!100874 b_and!46685)))

(declare-fun b!1289715 () Bool)

(declare-fun res!856824 () Bool)

(declare-fun e!736377 () Bool)

(assert (=> b!1289715 (=> (not res!856824) (not e!736377))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85449 0))(
  ( (array!85450 (arr!41221 (Array (_ BitVec 32) (_ BitVec 64))) (size!41772 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85449)

(assert (=> b!1289715 (= res!856824 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41772 _keys!1741))))))

(declare-fun b!1289716 () Bool)

(declare-fun e!736380 () Bool)

(declare-fun tp_is_empty!34225 () Bool)

(assert (=> b!1289716 (= e!736380 tp_is_empty!34225)))

(declare-fun mapIsEmpty!52898 () Bool)

(declare-fun mapRes!52898 () Bool)

(assert (=> mapIsEmpty!52898 mapRes!52898))

(declare-fun b!1289718 () Bool)

(declare-fun res!856827 () Bool)

(assert (=> b!1289718 (=> (not res!856827) (not e!736377))))

(declare-datatypes ((V!50737 0))(
  ( (V!50738 (val!17187 Int)) )
))
(declare-fun minValue!1387 () V!50737)

(declare-fun zeroValue!1387 () V!50737)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16214 0))(
  ( (ValueCellFull!16214 (v!19788 V!50737)) (EmptyCell!16214) )
))
(declare-datatypes ((array!85451 0))(
  ( (array!85452 (arr!41222 (Array (_ BitVec 32) ValueCell!16214)) (size!41773 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85451)

(declare-datatypes ((tuple2!22212 0))(
  ( (tuple2!22213 (_1!11116 (_ BitVec 64)) (_2!11116 V!50737)) )
))
(declare-datatypes ((List!29411 0))(
  ( (Nil!29408) (Cons!29407 (h!30616 tuple2!22212) (t!42982 List!29411)) )
))
(declare-datatypes ((ListLongMap!19881 0))(
  ( (ListLongMap!19882 (toList!9956 List!29411)) )
))
(declare-fun contains!8012 (ListLongMap!19881 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4958 (array!85449 array!85451 (_ BitVec 32) (_ BitVec 32) V!50737 V!50737 (_ BitVec 32) Int) ListLongMap!19881)

(assert (=> b!1289718 (= res!856827 (contains!8012 (getCurrentListMap!4958 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289719 () Bool)

(declare-fun res!856826 () Bool)

(assert (=> b!1289719 (=> (not res!856826) (not e!736377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85449 (_ BitVec 32)) Bool)

(assert (=> b!1289719 (= res!856826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289720 () Bool)

(declare-fun e!736378 () Bool)

(assert (=> b!1289720 (= e!736378 (and e!736380 mapRes!52898))))

(declare-fun condMapEmpty!52898 () Bool)

(declare-fun mapDefault!52898 () ValueCell!16214)

