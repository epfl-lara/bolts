; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108694 () Bool)

(assert start!108694)

(declare-fun b_free!28171 () Bool)

(declare-fun b_next!28171 () Bool)

(assert (=> start!108694 (= b_free!28171 (not b_next!28171))))

(declare-fun tp!99630 () Bool)

(declare-fun b_and!46247 () Bool)

(assert (=> start!108694 (= tp!99630 b_and!46247)))

(declare-fun b!1282491 () Bool)

(declare-fun res!851951 () Bool)

(declare-fun e!732816 () Bool)

(assert (=> b!1282491 (=> (not res!851951) (not e!732816))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84643 0))(
  ( (array!84644 (arr!40819 (Array (_ BitVec 32) (_ BitVec 64))) (size!41370 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84643)

(declare-datatypes ((V!50185 0))(
  ( (V!50186 (val!16980 Int)) )
))
(declare-datatypes ((ValueCell!16007 0))(
  ( (ValueCellFull!16007 (v!19580 V!50185)) (EmptyCell!16007) )
))
(declare-datatypes ((array!84645 0))(
  ( (array!84646 (arr!40820 (Array (_ BitVec 32) ValueCell!16007)) (size!41371 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84645)

(assert (=> b!1282491 (= res!851951 (and (= (size!41371 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41370 _keys!1741) (size!41371 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282492 () Bool)

(declare-fun res!851950 () Bool)

(assert (=> b!1282492 (=> (not res!851950) (not e!732816))))

(declare-datatypes ((List!29096 0))(
  ( (Nil!29093) (Cons!29092 (h!30301 (_ BitVec 64)) (t!42647 List!29096)) )
))
(declare-fun arrayNoDuplicates!0 (array!84643 (_ BitVec 32) List!29096) Bool)

(assert (=> b!1282492 (= res!851950 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29093))))

(declare-fun b!1282493 () Bool)

(assert (=> b!1282493 (= e!732816 false)))

(declare-fun minValue!1387 () V!50185)

(declare-fun zeroValue!1387 () V!50185)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576489 () Bool)

(declare-datatypes ((tuple2!21886 0))(
  ( (tuple2!21887 (_1!10953 (_ BitVec 64)) (_2!10953 V!50185)) )
))
(declare-datatypes ((List!29097 0))(
  ( (Nil!29094) (Cons!29093 (h!30302 tuple2!21886) (t!42648 List!29097)) )
))
(declare-datatypes ((ListLongMap!19555 0))(
  ( (ListLongMap!19556 (toList!9793 List!29097)) )
))
(declare-fun contains!7848 (ListLongMap!19555 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4813 (array!84643 array!84645 (_ BitVec 32) (_ BitVec 32) V!50185 V!50185 (_ BitVec 32) Int) ListLongMap!19555)

(assert (=> b!1282493 (= lt!576489 (contains!7848 (getCurrentListMap!4813 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282494 () Bool)

(declare-fun e!732817 () Bool)

(declare-fun tp_is_empty!33811 () Bool)

(assert (=> b!1282494 (= e!732817 tp_is_empty!33811)))

(declare-fun b!1282495 () Bool)

(declare-fun res!851949 () Bool)

(assert (=> b!1282495 (=> (not res!851949) (not e!732816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84643 (_ BitVec 32)) Bool)

(assert (=> b!1282495 (= res!851949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282496 () Bool)

(declare-fun res!851952 () Bool)

(assert (=> b!1282496 (=> (not res!851952) (not e!732816))))

(assert (=> b!1282496 (= res!851952 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41370 _keys!1741))))))

(declare-fun b!1282497 () Bool)

(declare-fun e!732820 () Bool)

(assert (=> b!1282497 (= e!732820 tp_is_empty!33811)))

(declare-fun mapNonEmpty!52274 () Bool)

(declare-fun mapRes!52274 () Bool)

(declare-fun tp!99629 () Bool)

(assert (=> mapNonEmpty!52274 (= mapRes!52274 (and tp!99629 e!732817))))

(declare-fun mapKey!52274 () (_ BitVec 32))

(declare-fun mapRest!52274 () (Array (_ BitVec 32) ValueCell!16007))

(declare-fun mapValue!52274 () ValueCell!16007)

(assert (=> mapNonEmpty!52274 (= (arr!40820 _values!1445) (store mapRest!52274 mapKey!52274 mapValue!52274))))

(declare-fun mapIsEmpty!52274 () Bool)

(assert (=> mapIsEmpty!52274 mapRes!52274))

(declare-fun res!851948 () Bool)

(assert (=> start!108694 (=> (not res!851948) (not e!732816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108694 (= res!851948 (validMask!0 mask!2175))))

(assert (=> start!108694 e!732816))

(assert (=> start!108694 tp_is_empty!33811))

(assert (=> start!108694 true))

(declare-fun e!732819 () Bool)

(declare-fun array_inv!30947 (array!84645) Bool)

(assert (=> start!108694 (and (array_inv!30947 _values!1445) e!732819)))

(declare-fun array_inv!30948 (array!84643) Bool)

(assert (=> start!108694 (array_inv!30948 _keys!1741)))

(assert (=> start!108694 tp!99630))

(declare-fun b!1282498 () Bool)

(assert (=> b!1282498 (= e!732819 (and e!732820 mapRes!52274))))

(declare-fun condMapEmpty!52274 () Bool)

(declare-fun mapDefault!52274 () ValueCell!16007)

