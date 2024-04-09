; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109406 () Bool)

(assert start!109406)

(declare-fun b_free!28859 () Bool)

(declare-fun b_next!28859 () Bool)

(assert (=> start!109406 (= b_free!28859 (not b_next!28859))))

(declare-fun tp!101697 () Bool)

(declare-fun b_and!46959 () Bool)

(assert (=> start!109406 (= tp!101697 b_and!46959)))

(declare-fun b!1294504 () Bool)

(declare-fun e!738699 () Bool)

(declare-fun tp_is_empty!34499 () Bool)

(assert (=> b!1294504 (= e!738699 tp_is_empty!34499)))

(declare-fun b!1294505 () Bool)

(declare-fun res!860375 () Bool)

(declare-fun e!738700 () Bool)

(assert (=> b!1294505 (=> (not res!860375) (not e!738700))))

(declare-datatypes ((V!51101 0))(
  ( (V!51102 (val!17324 Int)) )
))
(declare-fun minValue!1387 () V!51101)

(declare-fun zeroValue!1387 () V!51101)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16351 0))(
  ( (ValueCellFull!16351 (v!19925 V!51101)) (EmptyCell!16351) )
))
(declare-datatypes ((array!85983 0))(
  ( (array!85984 (arr!41488 (Array (_ BitVec 32) ValueCell!16351)) (size!42039 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85983)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85985 0))(
  ( (array!85986 (arr!41489 (Array (_ BitVec 32) (_ BitVec 64))) (size!42040 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85985)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22446 0))(
  ( (tuple2!22447 (_1!11233 (_ BitVec 64)) (_2!11233 V!51101)) )
))
(declare-datatypes ((List!29621 0))(
  ( (Nil!29618) (Cons!29617 (h!30826 tuple2!22446) (t!43192 List!29621)) )
))
(declare-datatypes ((ListLongMap!20115 0))(
  ( (ListLongMap!20116 (toList!10073 List!29621)) )
))
(declare-fun contains!8129 (ListLongMap!20115 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5057 (array!85985 array!85983 (_ BitVec 32) (_ BitVec 32) V!51101 V!51101 (_ BitVec 32) Int) ListLongMap!20115)

(assert (=> b!1294505 (= res!860375 (contains!8129 (getCurrentListMap!5057 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294506 () Bool)

(assert (=> b!1294506 (= e!738700 (not true))))

(assert (=> b!1294506 (not (contains!8129 (ListLongMap!20116 Nil!29618) k!1205))))

(declare-datatypes ((Unit!42817 0))(
  ( (Unit!42818) )
))
(declare-fun lt!579667 () Unit!42817)

(declare-fun emptyContainsNothing!165 ((_ BitVec 64)) Unit!42817)

(assert (=> b!1294506 (= lt!579667 (emptyContainsNothing!165 k!1205))))

(declare-fun res!860380 () Bool)

(assert (=> start!109406 (=> (not res!860380) (not e!738700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109406 (= res!860380 (validMask!0 mask!2175))))

(assert (=> start!109406 e!738700))

(assert (=> start!109406 tp_is_empty!34499))

(assert (=> start!109406 true))

(declare-fun e!738703 () Bool)

(declare-fun array_inv!31395 (array!85983) Bool)

(assert (=> start!109406 (and (array_inv!31395 _values!1445) e!738703)))

(declare-fun array_inv!31396 (array!85985) Bool)

(assert (=> start!109406 (array_inv!31396 _keys!1741)))

(assert (=> start!109406 tp!101697))

(declare-fun b!1294507 () Bool)

(declare-fun e!738702 () Bool)

(assert (=> b!1294507 (= e!738702 tp_is_empty!34499)))

(declare-fun b!1294508 () Bool)

(declare-fun res!860376 () Bool)

(assert (=> b!1294508 (=> (not res!860376) (not e!738700))))

(assert (=> b!1294508 (= res!860376 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42040 _keys!1741))))))

(declare-fun mapIsEmpty!53309 () Bool)

(declare-fun mapRes!53309 () Bool)

(assert (=> mapIsEmpty!53309 mapRes!53309))

(declare-fun b!1294509 () Bool)

(declare-fun res!860379 () Bool)

(assert (=> b!1294509 (=> (not res!860379) (not e!738700))))

(assert (=> b!1294509 (= res!860379 (and (= (size!42039 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42040 _keys!1741) (size!42039 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294510 () Bool)

(declare-fun res!860377 () Bool)

(assert (=> b!1294510 (=> (not res!860377) (not e!738700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294510 (= res!860377 (not (validKeyInArray!0 (select (arr!41489 _keys!1741) from!2144))))))

(declare-fun b!1294511 () Bool)

(assert (=> b!1294511 (= e!738703 (and e!738702 mapRes!53309))))

(declare-fun condMapEmpty!53309 () Bool)

(declare-fun mapDefault!53309 () ValueCell!16351)

