; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108866 () Bool)

(assert start!108866)

(declare-fun b_free!28343 () Bool)

(declare-fun b_next!28343 () Bool)

(assert (=> start!108866 (= b_free!28343 (not b_next!28343))))

(declare-fun tp!100145 () Bool)

(declare-fun b_and!46419 () Bool)

(assert (=> start!108866 (= tp!100145 b_and!46419)))

(declare-fun b!1285149 () Bool)

(declare-fun res!853833 () Bool)

(declare-fun e!734106 () Bool)

(assert (=> b!1285149 (=> (not res!853833) (not e!734106))))

(declare-datatypes ((array!84977 0))(
  ( (array!84978 (arr!40986 (Array (_ BitVec 32) (_ BitVec 64))) (size!41537 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84977)

(declare-datatypes ((List!29217 0))(
  ( (Nil!29214) (Cons!29213 (h!30422 (_ BitVec 64)) (t!42768 List!29217)) )
))
(declare-fun arrayNoDuplicates!0 (array!84977 (_ BitVec 32) List!29217) Bool)

(assert (=> b!1285149 (= res!853833 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29214))))

(declare-fun mapIsEmpty!52532 () Bool)

(declare-fun mapRes!52532 () Bool)

(assert (=> mapIsEmpty!52532 mapRes!52532))

(declare-fun b!1285150 () Bool)

(declare-fun res!853835 () Bool)

(assert (=> b!1285150 (=> (not res!853835) (not e!734106))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84977 (_ BitVec 32)) Bool)

(assert (=> b!1285150 (= res!853835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52532 () Bool)

(declare-fun tp!100146 () Bool)

(declare-fun e!734110 () Bool)

(assert (=> mapNonEmpty!52532 (= mapRes!52532 (and tp!100146 e!734110))))

(declare-datatypes ((V!50413 0))(
  ( (V!50414 (val!17066 Int)) )
))
(declare-datatypes ((ValueCell!16093 0))(
  ( (ValueCellFull!16093 (v!19666 V!50413)) (EmptyCell!16093) )
))
(declare-fun mapRest!52532 () (Array (_ BitVec 32) ValueCell!16093))

(declare-datatypes ((array!84979 0))(
  ( (array!84980 (arr!40987 (Array (_ BitVec 32) ValueCell!16093)) (size!41538 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84979)

(declare-fun mapKey!52532 () (_ BitVec 32))

(declare-fun mapValue!52532 () ValueCell!16093)

(assert (=> mapNonEmpty!52532 (= (arr!40987 _values!1445) (store mapRest!52532 mapKey!52532 mapValue!52532))))

(declare-fun b!1285151 () Bool)

(assert (=> b!1285151 (= e!734106 false)))

(declare-fun minValue!1387 () V!50413)

(declare-fun zeroValue!1387 () V!50413)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576828 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22004 0))(
  ( (tuple2!22005 (_1!11012 (_ BitVec 64)) (_2!11012 V!50413)) )
))
(declare-datatypes ((List!29218 0))(
  ( (Nil!29215) (Cons!29214 (h!30423 tuple2!22004) (t!42769 List!29218)) )
))
(declare-datatypes ((ListLongMap!19673 0))(
  ( (ListLongMap!19674 (toList!9852 List!29218)) )
))
(declare-fun contains!7907 (ListLongMap!19673 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4868 (array!84977 array!84979 (_ BitVec 32) (_ BitVec 32) V!50413 V!50413 (_ BitVec 32) Int) ListLongMap!19673)

(assert (=> b!1285151 (= lt!576828 (contains!7907 (getCurrentListMap!4868 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285152 () Bool)

(declare-fun res!853836 () Bool)

(assert (=> b!1285152 (=> (not res!853836) (not e!734106))))

(assert (=> b!1285152 (= res!853836 (and (= (size!41538 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41537 _keys!1741) (size!41538 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285153 () Bool)

(declare-fun e!734109 () Bool)

(declare-fun tp_is_empty!33983 () Bool)

(assert (=> b!1285153 (= e!734109 tp_is_empty!33983)))

(declare-fun b!1285155 () Bool)

(assert (=> b!1285155 (= e!734110 tp_is_empty!33983)))

(declare-fun b!1285156 () Bool)

(declare-fun res!853834 () Bool)

(assert (=> b!1285156 (=> (not res!853834) (not e!734106))))

(assert (=> b!1285156 (= res!853834 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41537 _keys!1741))))))

(declare-fun res!853832 () Bool)

(assert (=> start!108866 (=> (not res!853832) (not e!734106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108866 (= res!853832 (validMask!0 mask!2175))))

(assert (=> start!108866 e!734106))

(assert (=> start!108866 tp_is_empty!33983))

(assert (=> start!108866 true))

(declare-fun e!734107 () Bool)

(declare-fun array_inv!31063 (array!84979) Bool)

(assert (=> start!108866 (and (array_inv!31063 _values!1445) e!734107)))

(declare-fun array_inv!31064 (array!84977) Bool)

(assert (=> start!108866 (array_inv!31064 _keys!1741)))

(assert (=> start!108866 tp!100145))

(declare-fun b!1285154 () Bool)

(assert (=> b!1285154 (= e!734107 (and e!734109 mapRes!52532))))

(declare-fun condMapEmpty!52532 () Bool)

(declare-fun mapDefault!52532 () ValueCell!16093)

