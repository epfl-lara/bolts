; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108688 () Bool)

(assert start!108688)

(declare-fun b_free!28165 () Bool)

(declare-fun b_next!28165 () Bool)

(assert (=> start!108688 (= b_free!28165 (not b_next!28165))))

(declare-fun tp!99612 () Bool)

(declare-fun b_and!46241 () Bool)

(assert (=> start!108688 (= tp!99612 b_and!46241)))

(declare-fun b!1282419 () Bool)

(declare-fun e!732775 () Bool)

(assert (=> b!1282419 (= e!732775 false)))

(declare-datatypes ((V!50177 0))(
  ( (V!50178 (val!16977 Int)) )
))
(declare-fun minValue!1387 () V!50177)

(declare-fun zeroValue!1387 () V!50177)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16004 0))(
  ( (ValueCellFull!16004 (v!19577 V!50177)) (EmptyCell!16004) )
))
(declare-datatypes ((array!84631 0))(
  ( (array!84632 (arr!40813 (Array (_ BitVec 32) ValueCell!16004)) (size!41364 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84631)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84633 0))(
  ( (array!84634 (arr!40814 (Array (_ BitVec 32) (_ BitVec 64))) (size!41365 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84633)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!576480 () Bool)

(declare-datatypes ((tuple2!21882 0))(
  ( (tuple2!21883 (_1!10951 (_ BitVec 64)) (_2!10951 V!50177)) )
))
(declare-datatypes ((List!29092 0))(
  ( (Nil!29089) (Cons!29088 (h!30297 tuple2!21882) (t!42643 List!29092)) )
))
(declare-datatypes ((ListLongMap!19551 0))(
  ( (ListLongMap!19552 (toList!9791 List!29092)) )
))
(declare-fun contains!7846 (ListLongMap!19551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4811 (array!84633 array!84631 (_ BitVec 32) (_ BitVec 32) V!50177 V!50177 (_ BitVec 32) Int) ListLongMap!19551)

(assert (=> b!1282419 (= lt!576480 (contains!7846 (getCurrentListMap!4811 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282420 () Bool)

(declare-fun res!851905 () Bool)

(assert (=> b!1282420 (=> (not res!851905) (not e!732775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84633 (_ BitVec 32)) Bool)

(assert (=> b!1282420 (= res!851905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282421 () Bool)

(declare-fun res!851907 () Bool)

(assert (=> b!1282421 (=> (not res!851907) (not e!732775))))

(assert (=> b!1282421 (= res!851907 (and (= (size!41364 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41365 _keys!1741) (size!41364 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282422 () Bool)

(declare-fun e!732774 () Bool)

(declare-fun tp_is_empty!33805 () Bool)

(assert (=> b!1282422 (= e!732774 tp_is_empty!33805)))

(declare-fun b!1282423 () Bool)

(declare-fun e!732772 () Bool)

(declare-fun e!732771 () Bool)

(declare-fun mapRes!52265 () Bool)

(assert (=> b!1282423 (= e!732772 (and e!732771 mapRes!52265))))

(declare-fun condMapEmpty!52265 () Bool)

(declare-fun mapDefault!52265 () ValueCell!16004)

