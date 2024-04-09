; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109012 () Bool)

(assert start!109012)

(declare-fun b_free!28465 () Bool)

(declare-fun b_next!28465 () Bool)

(assert (=> start!109012 (= b_free!28465 (not b_next!28465))))

(declare-fun tp!100515 () Bool)

(declare-fun b_and!46565 () Bool)

(assert (=> start!109012 (= tp!100515 b_and!46565)))

(declare-fun mapNonEmpty!52718 () Bool)

(declare-fun mapRes!52718 () Bool)

(declare-fun tp!100514 () Bool)

(declare-fun e!735343 () Bool)

(assert (=> mapNonEmpty!52718 (= mapRes!52718 (and tp!100514 e!735343))))

(declare-fun mapKey!52718 () (_ BitVec 32))

(declare-datatypes ((V!50577 0))(
  ( (V!50578 (val!17127 Int)) )
))
(declare-datatypes ((ValueCell!16154 0))(
  ( (ValueCellFull!16154 (v!19728 V!50577)) (EmptyCell!16154) )
))
(declare-fun mapRest!52718 () (Array (_ BitVec 32) ValueCell!16154))

(declare-fun mapValue!52718 () ValueCell!16154)

(declare-datatypes ((array!85213 0))(
  ( (array!85214 (arr!41103 (Array (_ BitVec 32) ValueCell!16154)) (size!41654 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85213)

(assert (=> mapNonEmpty!52718 (= (arr!41103 _values!1445) (store mapRest!52718 mapKey!52718 mapValue!52718))))

(declare-fun res!855246 () Bool)

(declare-fun e!735342 () Bool)

(assert (=> start!109012 (=> (not res!855246) (not e!735342))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109012 (= res!855246 (validMask!0 mask!2175))))

(assert (=> start!109012 e!735342))

(declare-fun tp_is_empty!34105 () Bool)

(assert (=> start!109012 tp_is_empty!34105))

(assert (=> start!109012 true))

(declare-fun e!735339 () Bool)

(declare-fun array_inv!31139 (array!85213) Bool)

(assert (=> start!109012 (and (array_inv!31139 _values!1445) e!735339)))

(declare-datatypes ((array!85215 0))(
  ( (array!85216 (arr!41104 (Array (_ BitVec 32) (_ BitVec 64))) (size!41655 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85215)

(declare-fun array_inv!31140 (array!85215) Bool)

(assert (=> start!109012 (array_inv!31140 _keys!1741)))

(assert (=> start!109012 tp!100515))

(declare-fun b!1287598 () Bool)

(declare-fun res!855243 () Bool)

(assert (=> b!1287598 (=> (not res!855243) (not e!735342))))

(declare-fun minValue!1387 () V!50577)

(declare-fun zeroValue!1387 () V!50577)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22112 0))(
  ( (tuple2!22113 (_1!11066 (_ BitVec 64)) (_2!11066 V!50577)) )
))
(declare-datatypes ((List!29311 0))(
  ( (Nil!29308) (Cons!29307 (h!30516 tuple2!22112) (t!42882 List!29311)) )
))
(declare-datatypes ((ListLongMap!19781 0))(
  ( (ListLongMap!19782 (toList!9906 List!29311)) )
))
(declare-fun contains!7962 (ListLongMap!19781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4912 (array!85215 array!85213 (_ BitVec 32) (_ BitVec 32) V!50577 V!50577 (_ BitVec 32) Int) ListLongMap!19781)

(assert (=> b!1287598 (= res!855243 (contains!7962 (getCurrentListMap!4912 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287599 () Bool)

(declare-fun res!855249 () Bool)

(assert (=> b!1287599 (=> (not res!855249) (not e!735342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287599 (= res!855249 (not (validKeyInArray!0 (select (arr!41104 _keys!1741) from!2144))))))

(declare-fun b!1287600 () Bool)

(declare-fun res!855248 () Bool)

(assert (=> b!1287600 (=> (not res!855248) (not e!735342))))

(assert (=> b!1287600 (= res!855248 (and (= (size!41654 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41655 _keys!1741) (size!41654 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287601 () Bool)

(declare-fun res!855247 () Bool)

(assert (=> b!1287601 (=> (not res!855247) (not e!735342))))

(declare-datatypes ((List!29312 0))(
  ( (Nil!29309) (Cons!29308 (h!30517 (_ BitVec 64)) (t!42883 List!29312)) )
))
(declare-fun arrayNoDuplicates!0 (array!85215 (_ BitVec 32) List!29312) Bool)

(assert (=> b!1287601 (= res!855247 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29309))))

(declare-fun b!1287602 () Bool)

(declare-fun e!735341 () Bool)

(assert (=> b!1287602 (= e!735339 (and e!735341 mapRes!52718))))

(declare-fun condMapEmpty!52718 () Bool)

(declare-fun mapDefault!52718 () ValueCell!16154)

