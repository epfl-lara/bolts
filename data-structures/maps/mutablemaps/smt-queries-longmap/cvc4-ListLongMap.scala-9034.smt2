; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109028 () Bool)

(assert start!109028)

(declare-fun b_free!28481 () Bool)

(declare-fun b_next!28481 () Bool)

(assert (=> start!109028 (= b_free!28481 (not b_next!28481))))

(declare-fun tp!100562 () Bool)

(declare-fun b_and!46581 () Bool)

(assert (=> start!109028 (= tp!100562 b_and!46581)))

(declare-fun res!855440 () Bool)

(declare-fun e!735461 () Bool)

(assert (=> start!109028 (=> (not res!855440) (not e!735461))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109028 (= res!855440 (validMask!0 mask!2175))))

(assert (=> start!109028 e!735461))

(declare-fun tp_is_empty!34121 () Bool)

(assert (=> start!109028 tp_is_empty!34121))

(assert (=> start!109028 true))

(declare-datatypes ((V!50597 0))(
  ( (V!50598 (val!17135 Int)) )
))
(declare-datatypes ((ValueCell!16162 0))(
  ( (ValueCellFull!16162 (v!19736 V!50597)) (EmptyCell!16162) )
))
(declare-datatypes ((array!85243 0))(
  ( (array!85244 (arr!41118 (Array (_ BitVec 32) ValueCell!16162)) (size!41669 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85243)

(declare-fun e!735459 () Bool)

(declare-fun array_inv!31151 (array!85243) Bool)

(assert (=> start!109028 (and (array_inv!31151 _values!1445) e!735459)))

(declare-datatypes ((array!85245 0))(
  ( (array!85246 (arr!41119 (Array (_ BitVec 32) (_ BitVec 64))) (size!41670 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85245)

(declare-fun array_inv!31152 (array!85245) Bool)

(assert (=> start!109028 (array_inv!31152 _keys!1741)))

(assert (=> start!109028 tp!100562))

(declare-fun mapNonEmpty!52742 () Bool)

(declare-fun mapRes!52742 () Bool)

(declare-fun tp!100563 () Bool)

(declare-fun e!735460 () Bool)

(assert (=> mapNonEmpty!52742 (= mapRes!52742 (and tp!100563 e!735460))))

(declare-fun mapRest!52742 () (Array (_ BitVec 32) ValueCell!16162))

(declare-fun mapKey!52742 () (_ BitVec 32))

(declare-fun mapValue!52742 () ValueCell!16162)

(assert (=> mapNonEmpty!52742 (= (arr!41118 _values!1445) (store mapRest!52742 mapKey!52742 mapValue!52742))))

(declare-fun b!1287862 () Bool)

(declare-fun res!855437 () Bool)

(assert (=> b!1287862 (=> (not res!855437) (not e!735461))))

(declare-datatypes ((List!29325 0))(
  ( (Nil!29322) (Cons!29321 (h!30530 (_ BitVec 64)) (t!42896 List!29325)) )
))
(declare-fun arrayNoDuplicates!0 (array!85245 (_ BitVec 32) List!29325) Bool)

(assert (=> b!1287862 (= res!855437 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29322))))

(declare-fun b!1287863 () Bool)

(declare-fun res!855436 () Bool)

(assert (=> b!1287863 (=> (not res!855436) (not e!735461))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287863 (= res!855436 (and (= (size!41669 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41670 _keys!1741) (size!41669 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287864 () Bool)

(declare-fun res!855435 () Bool)

(assert (=> b!1287864 (=> (not res!855435) (not e!735461))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1287864 (= res!855435 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41670 _keys!1741))))))

(declare-fun b!1287865 () Bool)

(declare-fun res!855434 () Bool)

(assert (=> b!1287865 (=> (not res!855434) (not e!735461))))

(assert (=> b!1287865 (= res!855434 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41670 _keys!1741))))))

(declare-fun b!1287866 () Bool)

(assert (=> b!1287866 (= e!735460 tp_is_empty!34121)))

(declare-fun b!1287867 () Bool)

(assert (=> b!1287867 (= e!735461 (not true))))

(declare-datatypes ((tuple2!22126 0))(
  ( (tuple2!22127 (_1!11073 (_ BitVec 64)) (_2!11073 V!50597)) )
))
(declare-datatypes ((List!29326 0))(
  ( (Nil!29323) (Cons!29322 (h!30531 tuple2!22126) (t!42897 List!29326)) )
))
(declare-datatypes ((ListLongMap!19795 0))(
  ( (ListLongMap!19796 (toList!9913 List!29326)) )
))
(declare-fun contains!7969 (ListLongMap!19795 (_ BitVec 64)) Bool)

(assert (=> b!1287867 (not (contains!7969 (ListLongMap!19796 Nil!29323) k!1205))))

(declare-datatypes ((Unit!42523 0))(
  ( (Unit!42524) )
))
(declare-fun lt!577849 () Unit!42523)

(declare-fun emptyContainsNothing!29 ((_ BitVec 64)) Unit!42523)

(assert (=> b!1287867 (= lt!577849 (emptyContainsNothing!29 k!1205))))

(declare-fun b!1287868 () Bool)

(declare-fun res!855441 () Bool)

(assert (=> b!1287868 (=> (not res!855441) (not e!735461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287868 (= res!855441 (not (validKeyInArray!0 (select (arr!41119 _keys!1741) from!2144))))))

(declare-fun b!1287869 () Bool)

(declare-fun res!855439 () Bool)

(assert (=> b!1287869 (=> (not res!855439) (not e!735461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85245 (_ BitVec 32)) Bool)

(assert (=> b!1287869 (= res!855439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287870 () Bool)

(declare-fun res!855438 () Bool)

(assert (=> b!1287870 (=> (not res!855438) (not e!735461))))

(declare-fun minValue!1387 () V!50597)

(declare-fun zeroValue!1387 () V!50597)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4918 (array!85245 array!85243 (_ BitVec 32) (_ BitVec 32) V!50597 V!50597 (_ BitVec 32) Int) ListLongMap!19795)

(assert (=> b!1287870 (= res!855438 (contains!7969 (getCurrentListMap!4918 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287871 () Bool)

(declare-fun e!735463 () Bool)

(assert (=> b!1287871 (= e!735459 (and e!735463 mapRes!52742))))

(declare-fun condMapEmpty!52742 () Bool)

(declare-fun mapDefault!52742 () ValueCell!16162)

