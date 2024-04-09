; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109030 () Bool)

(assert start!109030)

(declare-fun b_free!28483 () Bool)

(declare-fun b_next!28483 () Bool)

(assert (=> start!109030 (= b_free!28483 (not b_next!28483))))

(declare-fun tp!100569 () Bool)

(declare-fun b_and!46583 () Bool)

(assert (=> start!109030 (= tp!100569 b_and!46583)))

(declare-fun b!1287895 () Bool)

(declare-fun e!735476 () Bool)

(declare-fun tp_is_empty!34123 () Bool)

(assert (=> b!1287895 (= e!735476 tp_is_empty!34123)))

(declare-fun mapIsEmpty!52745 () Bool)

(declare-fun mapRes!52745 () Bool)

(assert (=> mapIsEmpty!52745 mapRes!52745))

(declare-fun b!1287896 () Bool)

(declare-fun res!855464 () Bool)

(declare-fun e!735474 () Bool)

(assert (=> b!1287896 (=> (not res!855464) (not e!735474))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85247 0))(
  ( (array!85248 (arr!41120 (Array (_ BitVec 32) (_ BitVec 64))) (size!41671 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85247)

(assert (=> b!1287896 (= res!855464 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41671 _keys!1741))))))

(declare-fun b!1287897 () Bool)

(declare-fun res!855459 () Bool)

(assert (=> b!1287897 (=> (not res!855459) (not e!735474))))

(declare-datatypes ((V!50601 0))(
  ( (V!50602 (val!17136 Int)) )
))
(declare-fun minValue!1387 () V!50601)

(declare-fun zeroValue!1387 () V!50601)

(declare-datatypes ((ValueCell!16163 0))(
  ( (ValueCellFull!16163 (v!19737 V!50601)) (EmptyCell!16163) )
))
(declare-datatypes ((array!85249 0))(
  ( (array!85250 (arr!41121 (Array (_ BitVec 32) ValueCell!16163)) (size!41672 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85249)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22128 0))(
  ( (tuple2!22129 (_1!11074 (_ BitVec 64)) (_2!11074 V!50601)) )
))
(declare-datatypes ((List!29327 0))(
  ( (Nil!29324) (Cons!29323 (h!30532 tuple2!22128) (t!42898 List!29327)) )
))
(declare-datatypes ((ListLongMap!19797 0))(
  ( (ListLongMap!19798 (toList!9914 List!29327)) )
))
(declare-fun contains!7970 (ListLongMap!19797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4919 (array!85247 array!85249 (_ BitVec 32) (_ BitVec 32) V!50601 V!50601 (_ BitVec 32) Int) ListLongMap!19797)

(assert (=> b!1287897 (= res!855459 (contains!7970 (getCurrentListMap!4919 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!855461 () Bool)

(assert (=> start!109030 (=> (not res!855461) (not e!735474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109030 (= res!855461 (validMask!0 mask!2175))))

(assert (=> start!109030 e!735474))

(assert (=> start!109030 tp_is_empty!34123))

(assert (=> start!109030 true))

(declare-fun e!735477 () Bool)

(declare-fun array_inv!31153 (array!85249) Bool)

(assert (=> start!109030 (and (array_inv!31153 _values!1445) e!735477)))

(declare-fun array_inv!31154 (array!85247) Bool)

(assert (=> start!109030 (array_inv!31154 _keys!1741)))

(assert (=> start!109030 tp!100569))

(declare-fun b!1287898 () Bool)

(declare-fun res!855463 () Bool)

(assert (=> b!1287898 (=> (not res!855463) (not e!735474))))

(declare-datatypes ((List!29328 0))(
  ( (Nil!29325) (Cons!29324 (h!30533 (_ BitVec 64)) (t!42899 List!29328)) )
))
(declare-fun arrayNoDuplicates!0 (array!85247 (_ BitVec 32) List!29328) Bool)

(assert (=> b!1287898 (= res!855463 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29325))))

(declare-fun b!1287899 () Bool)

(declare-fun e!735478 () Bool)

(assert (=> b!1287899 (= e!735478 tp_is_empty!34123)))

(declare-fun mapNonEmpty!52745 () Bool)

(declare-fun tp!100568 () Bool)

(assert (=> mapNonEmpty!52745 (= mapRes!52745 (and tp!100568 e!735476))))

(declare-fun mapKey!52745 () (_ BitVec 32))

(declare-fun mapRest!52745 () (Array (_ BitVec 32) ValueCell!16163))

(declare-fun mapValue!52745 () ValueCell!16163)

(assert (=> mapNonEmpty!52745 (= (arr!41121 _values!1445) (store mapRest!52745 mapKey!52745 mapValue!52745))))

(declare-fun b!1287900 () Bool)

(declare-fun res!855460 () Bool)

(assert (=> b!1287900 (=> (not res!855460) (not e!735474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85247 (_ BitVec 32)) Bool)

(assert (=> b!1287900 (= res!855460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287901 () Bool)

(declare-fun res!855458 () Bool)

(assert (=> b!1287901 (=> (not res!855458) (not e!735474))))

(assert (=> b!1287901 (= res!855458 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41671 _keys!1741))))))

(declare-fun b!1287902 () Bool)

(declare-fun res!855462 () Bool)

(assert (=> b!1287902 (=> (not res!855462) (not e!735474))))

(assert (=> b!1287902 (= res!855462 (and (= (size!41672 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41671 _keys!1741) (size!41672 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287903 () Bool)

(assert (=> b!1287903 (= e!735474 (not true))))

(assert (=> b!1287903 (not (contains!7970 (ListLongMap!19798 Nil!29324) k!1205))))

(declare-datatypes ((Unit!42525 0))(
  ( (Unit!42526) )
))
(declare-fun lt!577852 () Unit!42525)

(declare-fun emptyContainsNothing!30 ((_ BitVec 64)) Unit!42525)

(assert (=> b!1287903 (= lt!577852 (emptyContainsNothing!30 k!1205))))

(declare-fun b!1287904 () Bool)

(declare-fun res!855465 () Bool)

(assert (=> b!1287904 (=> (not res!855465) (not e!735474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287904 (= res!855465 (not (validKeyInArray!0 (select (arr!41120 _keys!1741) from!2144))))))

(declare-fun b!1287905 () Bool)

(assert (=> b!1287905 (= e!735477 (and e!735478 mapRes!52745))))

(declare-fun condMapEmpty!52745 () Bool)

(declare-fun mapDefault!52745 () ValueCell!16163)

