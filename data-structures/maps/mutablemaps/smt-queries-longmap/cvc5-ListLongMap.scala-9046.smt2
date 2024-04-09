; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109096 () Bool)

(assert start!109096)

(declare-fun b_free!28549 () Bool)

(declare-fun b_next!28549 () Bool)

(assert (=> start!109096 (= b_free!28549 (not b_next!28549))))

(declare-fun tp!100767 () Bool)

(declare-fun b_and!46649 () Bool)

(assert (=> start!109096 (= tp!100767 b_and!46649)))

(declare-fun b!1289067 () Bool)

(declare-fun res!856341 () Bool)

(declare-fun e!736057 () Bool)

(assert (=> b!1289067 (=> (not res!856341) (not e!736057))))

(declare-datatypes ((V!50689 0))(
  ( (V!50690 (val!17169 Int)) )
))
(declare-fun minValue!1387 () V!50689)

(declare-fun zeroValue!1387 () V!50689)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16196 0))(
  ( (ValueCellFull!16196 (v!19770 V!50689)) (EmptyCell!16196) )
))
(declare-datatypes ((array!85377 0))(
  ( (array!85378 (arr!41185 (Array (_ BitVec 32) ValueCell!16196)) (size!41736 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85377)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85379 0))(
  ( (array!85380 (arr!41186 (Array (_ BitVec 32) (_ BitVec 64))) (size!41737 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85379)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22180 0))(
  ( (tuple2!22181 (_1!11100 (_ BitVec 64)) (_2!11100 V!50689)) )
))
(declare-datatypes ((List!29380 0))(
  ( (Nil!29377) (Cons!29376 (h!30585 tuple2!22180) (t!42951 List!29380)) )
))
(declare-datatypes ((ListLongMap!19849 0))(
  ( (ListLongMap!19850 (toList!9940 List!29380)) )
))
(declare-fun contains!7996 (ListLongMap!19849 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4943 (array!85379 array!85377 (_ BitVec 32) (_ BitVec 32) V!50689 V!50689 (_ BitVec 32) Int) ListLongMap!19849)

(assert (=> b!1289067 (= res!856341 (contains!7996 (getCurrentListMap!4943 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!856338 () Bool)

(assert (=> start!109096 (=> (not res!856338) (not e!736057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109096 (= res!856338 (validMask!0 mask!2175))))

(assert (=> start!109096 e!736057))

(declare-fun tp_is_empty!34189 () Bool)

(assert (=> start!109096 tp_is_empty!34189))

(assert (=> start!109096 true))

(declare-fun e!736056 () Bool)

(declare-fun array_inv!31195 (array!85377) Bool)

(assert (=> start!109096 (and (array_inv!31195 _values!1445) e!736056)))

(declare-fun array_inv!31196 (array!85379) Bool)

(assert (=> start!109096 (array_inv!31196 _keys!1741)))

(assert (=> start!109096 tp!100767))

(declare-fun mapNonEmpty!52844 () Bool)

(declare-fun mapRes!52844 () Bool)

(declare-fun tp!100766 () Bool)

(declare-fun e!736053 () Bool)

(assert (=> mapNonEmpty!52844 (= mapRes!52844 (and tp!100766 e!736053))))

(declare-fun mapRest!52844 () (Array (_ BitVec 32) ValueCell!16196))

(declare-fun mapValue!52844 () ValueCell!16196)

(declare-fun mapKey!52844 () (_ BitVec 32))

(assert (=> mapNonEmpty!52844 (= (arr!41185 _values!1445) (store mapRest!52844 mapKey!52844 mapValue!52844))))

(declare-fun b!1289068 () Bool)

(declare-fun res!856334 () Bool)

(assert (=> b!1289068 (=> (not res!856334) (not e!736057))))

(assert (=> b!1289068 (= res!856334 (and (= (size!41736 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41737 _keys!1741) (size!41736 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289069 () Bool)

(declare-fun res!856336 () Bool)

(assert (=> b!1289069 (=> (not res!856336) (not e!736057))))

(assert (=> b!1289069 (= res!856336 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41737 _keys!1741))))))

(declare-fun b!1289070 () Bool)

(declare-fun e!736054 () Bool)

(assert (=> b!1289070 (= e!736057 (not e!736054))))

(declare-fun res!856335 () Bool)

(assert (=> b!1289070 (=> res!856335 e!736054)))

(assert (=> b!1289070 (= res!856335 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289070 (not (contains!7996 (ListLongMap!19850 Nil!29377) k!1205))))

(declare-datatypes ((Unit!42575 0))(
  ( (Unit!42576) )
))
(declare-fun lt!578109 () Unit!42575)

(declare-fun emptyContainsNothing!52 ((_ BitVec 64)) Unit!42575)

(assert (=> b!1289070 (= lt!578109 (emptyContainsNothing!52 k!1205))))

(declare-fun b!1289071 () Bool)

(declare-fun e!736052 () Bool)

(assert (=> b!1289071 (= e!736056 (and e!736052 mapRes!52844))))

(declare-fun condMapEmpty!52844 () Bool)

(declare-fun mapDefault!52844 () ValueCell!16196)

