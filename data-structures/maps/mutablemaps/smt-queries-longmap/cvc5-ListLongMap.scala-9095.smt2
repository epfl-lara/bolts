; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109390 () Bool)

(assert start!109390)

(declare-fun b_free!28843 () Bool)

(declare-fun b_next!28843 () Bool)

(assert (=> start!109390 (= b_free!28843 (not b_next!28843))))

(declare-fun tp!101648 () Bool)

(declare-fun b_and!46943 () Bool)

(assert (=> start!109390 (= tp!101648 b_and!46943)))

(declare-fun b!1294240 () Bool)

(declare-fun res!860186 () Bool)

(declare-fun e!738581 () Bool)

(assert (=> b!1294240 (=> (not res!860186) (not e!738581))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51081 0))(
  ( (V!51082 (val!17316 Int)) )
))
(declare-datatypes ((ValueCell!16343 0))(
  ( (ValueCellFull!16343 (v!19917 V!51081)) (EmptyCell!16343) )
))
(declare-datatypes ((array!85953 0))(
  ( (array!85954 (arr!41473 (Array (_ BitVec 32) ValueCell!16343)) (size!42024 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85953)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85955 0))(
  ( (array!85956 (arr!41474 (Array (_ BitVec 32) (_ BitVec 64))) (size!42025 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85955)

(assert (=> b!1294240 (= res!860186 (and (= (size!42024 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42025 _keys!1741) (size!42024 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53285 () Bool)

(declare-fun mapRes!53285 () Bool)

(assert (=> mapIsEmpty!53285 mapRes!53285))

(declare-fun b!1294241 () Bool)

(declare-fun res!860190 () Bool)

(assert (=> b!1294241 (=> (not res!860190) (not e!738581))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1294241 (= res!860190 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42025 _keys!1741))))))

(declare-fun b!1294242 () Bool)

(assert (=> b!1294242 (= e!738581 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22434 0))(
  ( (tuple2!22435 (_1!11227 (_ BitVec 64)) (_2!11227 V!51081)) )
))
(declare-datatypes ((List!29610 0))(
  ( (Nil!29607) (Cons!29606 (h!30815 tuple2!22434) (t!43181 List!29610)) )
))
(declare-datatypes ((ListLongMap!20103 0))(
  ( (ListLongMap!20104 (toList!10067 List!29610)) )
))
(declare-fun contains!8123 (ListLongMap!20103 (_ BitVec 64)) Bool)

(assert (=> b!1294242 (not (contains!8123 (ListLongMap!20104 Nil!29607) k!1205))))

(declare-datatypes ((Unit!42805 0))(
  ( (Unit!42806) )
))
(declare-fun lt!579643 () Unit!42805)

(declare-fun emptyContainsNothing!159 ((_ BitVec 64)) Unit!42805)

(assert (=> b!1294242 (= lt!579643 (emptyContainsNothing!159 k!1205))))

(declare-fun b!1294243 () Bool)

(declare-fun res!860188 () Bool)

(assert (=> b!1294243 (=> (not res!860188) (not e!738581))))

(declare-fun minValue!1387 () V!51081)

(declare-fun zeroValue!1387 () V!51081)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5052 (array!85955 array!85953 (_ BitVec 32) (_ BitVec 32) V!51081 V!51081 (_ BitVec 32) Int) ListLongMap!20103)

(assert (=> b!1294243 (= res!860188 (contains!8123 (getCurrentListMap!5052 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294244 () Bool)

(declare-fun e!738582 () Bool)

(declare-fun e!738583 () Bool)

(assert (=> b!1294244 (= e!738582 (and e!738583 mapRes!53285))))

(declare-fun condMapEmpty!53285 () Bool)

(declare-fun mapDefault!53285 () ValueCell!16343)

