; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109252 () Bool)

(assert start!109252)

(declare-fun b_free!28705 () Bool)

(declare-fun b_next!28705 () Bool)

(assert (=> start!109252 (= b_free!28705 (not b_next!28705))))

(declare-fun tp!101235 () Bool)

(declare-fun b_and!46805 () Bool)

(assert (=> start!109252 (= tp!101235 b_and!46805)))

(declare-fun b!1291855 () Bool)

(declare-fun res!858422 () Bool)

(declare-fun e!737439 () Bool)

(assert (=> b!1291855 (=> (not res!858422) (not e!737439))))

(declare-datatypes ((array!85683 0))(
  ( (array!85684 (arr!41338 (Array (_ BitVec 32) (_ BitVec 64))) (size!41889 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85683)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291855 (= res!858422 (not (validKeyInArray!0 (select (arr!41338 _keys!1741) from!2144))))))

(declare-fun b!1291856 () Bool)

(declare-fun res!858426 () Bool)

(assert (=> b!1291856 (=> (not res!858426) (not e!737439))))

(declare-datatypes ((List!29505 0))(
  ( (Nil!29502) (Cons!29501 (h!30710 (_ BitVec 64)) (t!43076 List!29505)) )
))
(declare-fun arrayNoDuplicates!0 (array!85683 (_ BitVec 32) List!29505) Bool)

(assert (=> b!1291856 (= res!858426 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29502))))

(declare-fun b!1291857 () Bool)

(declare-fun res!858424 () Bool)

(assert (=> b!1291857 (=> (not res!858424) (not e!737439))))

(assert (=> b!1291857 (= res!858424 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41889 _keys!1741))))))

(declare-fun res!858423 () Bool)

(assert (=> start!109252 (=> (not res!858423) (not e!737439))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109252 (= res!858423 (validMask!0 mask!2175))))

(assert (=> start!109252 e!737439))

(declare-fun tp_is_empty!34345 () Bool)

(assert (=> start!109252 tp_is_empty!34345))

(assert (=> start!109252 true))

(declare-datatypes ((V!50897 0))(
  ( (V!50898 (val!17247 Int)) )
))
(declare-datatypes ((ValueCell!16274 0))(
  ( (ValueCellFull!16274 (v!19848 V!50897)) (EmptyCell!16274) )
))
(declare-datatypes ((array!85685 0))(
  ( (array!85686 (arr!41339 (Array (_ BitVec 32) ValueCell!16274)) (size!41890 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85685)

(declare-fun e!737436 () Bool)

(declare-fun array_inv!31293 (array!85685) Bool)

(assert (=> start!109252 (and (array_inv!31293 _values!1445) e!737436)))

(declare-fun array_inv!31294 (array!85683) Bool)

(assert (=> start!109252 (array_inv!31294 _keys!1741)))

(assert (=> start!109252 tp!101235))

(declare-fun mapNonEmpty!53078 () Bool)

(declare-fun mapRes!53078 () Bool)

(declare-fun tp!101234 () Bool)

(declare-fun e!737437 () Bool)

(assert (=> mapNonEmpty!53078 (= mapRes!53078 (and tp!101234 e!737437))))

(declare-fun mapRest!53078 () (Array (_ BitVec 32) ValueCell!16274))

(declare-fun mapKey!53078 () (_ BitVec 32))

(declare-fun mapValue!53078 () ValueCell!16274)

(assert (=> mapNonEmpty!53078 (= (arr!41339 _values!1445) (store mapRest!53078 mapKey!53078 mapValue!53078))))

(declare-fun b!1291858 () Bool)

(declare-fun res!858425 () Bool)

(assert (=> b!1291858 (=> (not res!858425) (not e!737439))))

(declare-fun zeroValue!1387 () V!50897)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!50897)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22314 0))(
  ( (tuple2!22315 (_1!11167 (_ BitVec 64)) (_2!11167 V!50897)) )
))
(declare-datatypes ((List!29506 0))(
  ( (Nil!29503) (Cons!29502 (h!30711 tuple2!22314) (t!43077 List!29506)) )
))
(declare-datatypes ((ListLongMap!19983 0))(
  ( (ListLongMap!19984 (toList!10007 List!29506)) )
))
(declare-fun contains!8063 (ListLongMap!19983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5000 (array!85683 array!85685 (_ BitVec 32) (_ BitVec 32) V!50897 V!50897 (_ BitVec 32) Int) ListLongMap!19983)

(assert (=> b!1291858 (= res!858425 (contains!8063 (getCurrentListMap!5000 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291859 () Bool)

(declare-fun res!858420 () Bool)

(assert (=> b!1291859 (=> (not res!858420) (not e!737439))))

(assert (=> b!1291859 (= res!858420 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41889 _keys!1741))))))

(declare-fun b!1291860 () Bool)

(assert (=> b!1291860 (= e!737437 tp_is_empty!34345)))

(declare-fun b!1291861 () Bool)

(declare-fun res!858419 () Bool)

(assert (=> b!1291861 (=> (not res!858419) (not e!737439))))

(assert (=> b!1291861 (= res!858419 (and (= (size!41890 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41889 _keys!1741) (size!41890 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291862 () Bool)

(declare-fun res!858421 () Bool)

(assert (=> b!1291862 (=> (not res!858421) (not e!737439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85683 (_ BitVec 32)) Bool)

(assert (=> b!1291862 (= res!858421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291863 () Bool)

(assert (=> b!1291863 (= e!737439 (not true))))

(assert (=> b!1291863 (not (contains!8063 (ListLongMap!19984 Nil!29503) k!1205))))

(declare-datatypes ((Unit!42701 0))(
  ( (Unit!42702) )
))
(declare-fun lt!579229 () Unit!42701)

(declare-fun emptyContainsNothing!107 ((_ BitVec 64)) Unit!42701)

(assert (=> b!1291863 (= lt!579229 (emptyContainsNothing!107 k!1205))))

(declare-fun b!1291864 () Bool)

(declare-fun e!737438 () Bool)

(assert (=> b!1291864 (= e!737438 tp_is_empty!34345)))

(declare-fun mapIsEmpty!53078 () Bool)

(assert (=> mapIsEmpty!53078 mapRes!53078))

(declare-fun b!1291865 () Bool)

(assert (=> b!1291865 (= e!737436 (and e!737438 mapRes!53078))))

(declare-fun condMapEmpty!53078 () Bool)

(declare-fun mapDefault!53078 () ValueCell!16274)

