; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109114 () Bool)

(assert start!109114)

(declare-fun b_free!28567 () Bool)

(declare-fun b_next!28567 () Bool)

(assert (=> start!109114 (= b_free!28567 (not b_next!28567))))

(declare-fun tp!100821 () Bool)

(declare-fun b_and!46667 () Bool)

(assert (=> start!109114 (= tp!100821 b_and!46667)))

(declare-fun b!1289391 () Bool)

(declare-fun res!856582 () Bool)

(declare-fun e!736214 () Bool)

(assert (=> b!1289391 (=> (not res!856582) (not e!736214))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50713 0))(
  ( (V!50714 (val!17178 Int)) )
))
(declare-datatypes ((ValueCell!16205 0))(
  ( (ValueCellFull!16205 (v!19779 V!50713)) (EmptyCell!16205) )
))
(declare-datatypes ((array!85413 0))(
  ( (array!85414 (arr!41203 (Array (_ BitVec 32) ValueCell!16205)) (size!41754 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85413)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85415 0))(
  ( (array!85416 (arr!41204 (Array (_ BitVec 32) (_ BitVec 64))) (size!41755 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85415)

(assert (=> b!1289391 (= res!856582 (and (= (size!41754 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41755 _keys!1741) (size!41754 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289392 () Bool)

(declare-fun e!736219 () Bool)

(assert (=> b!1289392 (= e!736214 (not e!736219))))

(declare-fun res!856577 () Bool)

(assert (=> b!1289392 (=> res!856577 e!736219)))

(assert (=> b!1289392 (= res!856577 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22196 0))(
  ( (tuple2!22197 (_1!11108 (_ BitVec 64)) (_2!11108 V!50713)) )
))
(declare-datatypes ((List!29396 0))(
  ( (Nil!29393) (Cons!29392 (h!30601 tuple2!22196) (t!42967 List!29396)) )
))
(declare-datatypes ((ListLongMap!19865 0))(
  ( (ListLongMap!19866 (toList!9948 List!29396)) )
))
(declare-fun contains!8004 (ListLongMap!19865 (_ BitVec 64)) Bool)

(assert (=> b!1289392 (not (contains!8004 (ListLongMap!19866 Nil!29393) k!1205))))

(declare-datatypes ((Unit!42591 0))(
  ( (Unit!42592) )
))
(declare-fun lt!578209 () Unit!42591)

(declare-fun emptyContainsNothing!60 ((_ BitVec 64)) Unit!42591)

(assert (=> b!1289392 (= lt!578209 (emptyContainsNothing!60 k!1205))))

(declare-fun b!1289393 () Bool)

(declare-fun res!856583 () Bool)

(assert (=> b!1289393 (=> (not res!856583) (not e!736214))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1289393 (= res!856583 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41755 _keys!1741))))))

(declare-fun b!1289394 () Bool)

(declare-fun res!856581 () Bool)

(assert (=> b!1289394 (=> (not res!856581) (not e!736214))))

(declare-datatypes ((List!29397 0))(
  ( (Nil!29394) (Cons!29393 (h!30602 (_ BitVec 64)) (t!42968 List!29397)) )
))
(declare-fun arrayNoDuplicates!0 (array!85415 (_ BitVec 32) List!29397) Bool)

(assert (=> b!1289394 (= res!856581 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29394))))

(declare-fun mapIsEmpty!52871 () Bool)

(declare-fun mapRes!52871 () Bool)

(assert (=> mapIsEmpty!52871 mapRes!52871))

(declare-fun b!1289395 () Bool)

(declare-fun res!856579 () Bool)

(assert (=> b!1289395 (=> (not res!856579) (not e!736214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85415 (_ BitVec 32)) Bool)

(assert (=> b!1289395 (= res!856579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289397 () Bool)

(declare-fun res!856576 () Bool)

(assert (=> b!1289397 (=> (not res!856576) (not e!736214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289397 (= res!856576 (not (validKeyInArray!0 (select (arr!41204 _keys!1741) from!2144))))))

(declare-fun b!1289398 () Bool)

(declare-fun res!856580 () Bool)

(assert (=> b!1289398 (=> (not res!856580) (not e!736214))))

(declare-fun minValue!1387 () V!50713)

(declare-fun zeroValue!1387 () V!50713)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4951 (array!85415 array!85413 (_ BitVec 32) (_ BitVec 32) V!50713 V!50713 (_ BitVec 32) Int) ListLongMap!19865)

(assert (=> b!1289398 (= res!856580 (contains!8004 (getCurrentListMap!4951 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289399 () Bool)

(declare-fun res!856584 () Bool)

(assert (=> b!1289399 (=> (not res!856584) (not e!736214))))

(assert (=> b!1289399 (= res!856584 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41755 _keys!1741))))))

(declare-fun b!1289400 () Bool)

(declare-fun e!736218 () Bool)

(declare-fun tp_is_empty!34207 () Bool)

(assert (=> b!1289400 (= e!736218 tp_is_empty!34207)))

(declare-fun b!1289401 () Bool)

(declare-fun e!736216 () Bool)

(assert (=> b!1289401 (= e!736216 (and e!736218 mapRes!52871))))

(declare-fun condMapEmpty!52871 () Bool)

(declare-fun mapDefault!52871 () ValueCell!16205)

