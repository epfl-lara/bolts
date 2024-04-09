; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109040 () Bool)

(assert start!109040)

(declare-fun b_free!28493 () Bool)

(declare-fun b_next!28493 () Bool)

(assert (=> start!109040 (= b_free!28493 (not b_next!28493))))

(declare-fun tp!100599 () Bool)

(declare-fun b_and!46593 () Bool)

(assert (=> start!109040 (= tp!100599 b_and!46593)))

(declare-fun res!855581 () Bool)

(declare-fun e!735549 () Bool)

(assert (=> start!109040 (=> (not res!855581) (not e!735549))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109040 (= res!855581 (validMask!0 mask!2175))))

(assert (=> start!109040 e!735549))

(declare-fun tp_is_empty!34133 () Bool)

(assert (=> start!109040 tp_is_empty!34133))

(assert (=> start!109040 true))

(declare-datatypes ((V!50613 0))(
  ( (V!50614 (val!17141 Int)) )
))
(declare-datatypes ((ValueCell!16168 0))(
  ( (ValueCellFull!16168 (v!19742 V!50613)) (EmptyCell!16168) )
))
(declare-datatypes ((array!85267 0))(
  ( (array!85268 (arr!41130 (Array (_ BitVec 32) ValueCell!16168)) (size!41681 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85267)

(declare-fun e!735553 () Bool)

(declare-fun array_inv!31161 (array!85267) Bool)

(assert (=> start!109040 (and (array_inv!31161 _values!1445) e!735553)))

(declare-datatypes ((array!85269 0))(
  ( (array!85270 (arr!41131 (Array (_ BitVec 32) (_ BitVec 64))) (size!41682 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85269)

(declare-fun array_inv!31162 (array!85269) Bool)

(assert (=> start!109040 (array_inv!31162 _keys!1741)))

(assert (=> start!109040 tp!100599))

(declare-fun b!1288060 () Bool)

(declare-fun res!855584 () Bool)

(assert (=> b!1288060 (=> (not res!855584) (not e!735549))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1288060 (= res!855584 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41682 _keys!1741))))))

(declare-fun b!1288061 () Bool)

(declare-fun res!855578 () Bool)

(assert (=> b!1288061 (=> (not res!855578) (not e!735549))))

(assert (=> b!1288061 (= res!855578 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41682 _keys!1741))))))

(declare-fun b!1288062 () Bool)

(declare-fun res!855582 () Bool)

(assert (=> b!1288062 (=> (not res!855582) (not e!735549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288062 (= res!855582 (not (validKeyInArray!0 (select (arr!41131 _keys!1741) from!2144))))))

(declare-fun b!1288063 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288063 (= e!735549 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle from!2144 (size!41682 _keys!1741)))))))

(declare-datatypes ((tuple2!22136 0))(
  ( (tuple2!22137 (_1!11078 (_ BitVec 64)) (_2!11078 V!50613)) )
))
(declare-datatypes ((List!29336 0))(
  ( (Nil!29333) (Cons!29332 (h!30541 tuple2!22136) (t!42907 List!29336)) )
))
(declare-datatypes ((ListLongMap!19805 0))(
  ( (ListLongMap!19806 (toList!9918 List!29336)) )
))
(declare-fun contains!7974 (ListLongMap!19805 (_ BitVec 64)) Bool)

(assert (=> b!1288063 (not (contains!7974 (ListLongMap!19806 Nil!29333) k!1205))))

(declare-datatypes ((Unit!42533 0))(
  ( (Unit!42534) )
))
(declare-fun lt!577867 () Unit!42533)

(declare-fun emptyContainsNothing!34 ((_ BitVec 64)) Unit!42533)

(assert (=> b!1288063 (= lt!577867 (emptyContainsNothing!34 k!1205))))

(declare-fun b!1288064 () Bool)

(declare-fun e!735550 () Bool)

(declare-fun mapRes!52760 () Bool)

(assert (=> b!1288064 (= e!735553 (and e!735550 mapRes!52760))))

(declare-fun condMapEmpty!52760 () Bool)

(declare-fun mapDefault!52760 () ValueCell!16168)

