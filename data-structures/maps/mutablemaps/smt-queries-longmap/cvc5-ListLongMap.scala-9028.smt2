; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108988 () Bool)

(assert start!108988)

(declare-fun b_free!28441 () Bool)

(declare-fun b_next!28441 () Bool)

(assert (=> start!108988 (= b_free!28441 (not b_next!28441))))

(declare-fun tp!100443 () Bool)

(declare-fun b_and!46541 () Bool)

(assert (=> start!108988 (= tp!100443 b_and!46541)))

(declare-fun b!1287202 () Bool)

(declare-fun e!735162 () Bool)

(declare-fun tp_is_empty!34081 () Bool)

(assert (=> b!1287202 (= e!735162 tp_is_empty!34081)))

(declare-fun b!1287203 () Bool)

(declare-fun res!854959 () Bool)

(declare-fun e!735159 () Bool)

(assert (=> b!1287203 (=> (not res!854959) (not e!735159))))

(declare-datatypes ((array!85167 0))(
  ( (array!85168 (arr!41080 (Array (_ BitVec 32) (_ BitVec 64))) (size!41631 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85167)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287203 (= res!854959 (not (validKeyInArray!0 (select (arr!41080 _keys!1741) from!2144))))))

(declare-fun b!1287204 () Bool)

(declare-fun res!854955 () Bool)

(assert (=> b!1287204 (=> (not res!854955) (not e!735159))))

(declare-datatypes ((List!29291 0))(
  ( (Nil!29288) (Cons!29287 (h!30496 (_ BitVec 64)) (t!42862 List!29291)) )
))
(declare-fun arrayNoDuplicates!0 (array!85167 (_ BitVec 32) List!29291) Bool)

(assert (=> b!1287204 (= res!854955 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29288))))

(declare-fun b!1287206 () Bool)

(declare-fun res!854954 () Bool)

(assert (=> b!1287206 (=> (not res!854954) (not e!735159))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50545 0))(
  ( (V!50546 (val!17115 Int)) )
))
(declare-datatypes ((ValueCell!16142 0))(
  ( (ValueCellFull!16142 (v!19716 V!50545)) (EmptyCell!16142) )
))
(declare-datatypes ((array!85169 0))(
  ( (array!85170 (arr!41081 (Array (_ BitVec 32) ValueCell!16142)) (size!41632 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85169)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287206 (= res!854954 (and (= (size!41632 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41631 _keys!1741) (size!41632 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287207 () Bool)

(declare-fun res!854960 () Bool)

(assert (=> b!1287207 (=> (not res!854960) (not e!735159))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1287207 (= res!854960 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41631 _keys!1741))))))

(declare-fun b!1287208 () Bool)

(declare-fun e!735163 () Bool)

(assert (=> b!1287208 (= e!735163 tp_is_empty!34081)))

(declare-fun b!1287209 () Bool)

(assert (=> b!1287209 (= e!735159 (not true))))

(declare-datatypes ((tuple2!22090 0))(
  ( (tuple2!22091 (_1!11055 (_ BitVec 64)) (_2!11055 V!50545)) )
))
(declare-datatypes ((List!29292 0))(
  ( (Nil!29289) (Cons!29288 (h!30497 tuple2!22090) (t!42863 List!29292)) )
))
(declare-datatypes ((ListLongMap!19759 0))(
  ( (ListLongMap!19760 (toList!9895 List!29292)) )
))
(declare-fun contains!7951 (ListLongMap!19759 (_ BitVec 64)) Bool)

(assert (=> b!1287209 (not (contains!7951 (ListLongMap!19760 Nil!29289) k!1205))))

(declare-datatypes ((Unit!42497 0))(
  ( (Unit!42498) )
))
(declare-fun lt!577789 () Unit!42497)

(declare-fun emptyContainsNothing!16 ((_ BitVec 64)) Unit!42497)

(assert (=> b!1287209 (= lt!577789 (emptyContainsNothing!16 k!1205))))

(declare-fun b!1287210 () Bool)

(declare-fun res!854961 () Bool)

(assert (=> b!1287210 (=> (not res!854961) (not e!735159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85167 (_ BitVec 32)) Bool)

(assert (=> b!1287210 (= res!854961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52682 () Bool)

(declare-fun mapRes!52682 () Bool)

(assert (=> mapIsEmpty!52682 mapRes!52682))

(declare-fun mapNonEmpty!52682 () Bool)

(declare-fun tp!100442 () Bool)

(assert (=> mapNonEmpty!52682 (= mapRes!52682 (and tp!100442 e!735162))))

(declare-fun mapValue!52682 () ValueCell!16142)

(declare-fun mapKey!52682 () (_ BitVec 32))

(declare-fun mapRest!52682 () (Array (_ BitVec 32) ValueCell!16142))

(assert (=> mapNonEmpty!52682 (= (arr!41081 _values!1445) (store mapRest!52682 mapKey!52682 mapValue!52682))))

(declare-fun b!1287205 () Bool)

(declare-fun res!854958 () Bool)

(assert (=> b!1287205 (=> (not res!854958) (not e!735159))))

(assert (=> b!1287205 (= res!854958 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41631 _keys!1741))))))

(declare-fun res!854957 () Bool)

(assert (=> start!108988 (=> (not res!854957) (not e!735159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108988 (= res!854957 (validMask!0 mask!2175))))

(assert (=> start!108988 e!735159))

(assert (=> start!108988 tp_is_empty!34081))

(assert (=> start!108988 true))

(declare-fun e!735161 () Bool)

(declare-fun array_inv!31125 (array!85169) Bool)

(assert (=> start!108988 (and (array_inv!31125 _values!1445) e!735161)))

(declare-fun array_inv!31126 (array!85167) Bool)

(assert (=> start!108988 (array_inv!31126 _keys!1741)))

(assert (=> start!108988 tp!100443))

(declare-fun b!1287211 () Bool)

(declare-fun res!854956 () Bool)

(assert (=> b!1287211 (=> (not res!854956) (not e!735159))))

(declare-fun minValue!1387 () V!50545)

(declare-fun zeroValue!1387 () V!50545)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4903 (array!85167 array!85169 (_ BitVec 32) (_ BitVec 32) V!50545 V!50545 (_ BitVec 32) Int) ListLongMap!19759)

(assert (=> b!1287211 (= res!854956 (contains!7951 (getCurrentListMap!4903 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287212 () Bool)

(assert (=> b!1287212 (= e!735161 (and e!735163 mapRes!52682))))

(declare-fun condMapEmpty!52682 () Bool)

(declare-fun mapDefault!52682 () ValueCell!16142)

