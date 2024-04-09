; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109420 () Bool)

(assert start!109420)

(declare-fun b_free!28873 () Bool)

(declare-fun b_next!28873 () Bool)

(assert (=> start!109420 (= b_free!28873 (not b_next!28873))))

(declare-fun tp!101738 () Bool)

(declare-fun b_and!46973 () Bool)

(assert (=> start!109420 (= tp!101738 b_and!46973)))

(declare-fun res!860548 () Bool)

(declare-fun e!738808 () Bool)

(assert (=> start!109420 (=> (not res!860548) (not e!738808))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109420 (= res!860548 (validMask!0 mask!2175))))

(assert (=> start!109420 e!738808))

(declare-fun tp_is_empty!34513 () Bool)

(assert (=> start!109420 tp_is_empty!34513))

(assert (=> start!109420 true))

(declare-datatypes ((V!51121 0))(
  ( (V!51122 (val!17331 Int)) )
))
(declare-datatypes ((ValueCell!16358 0))(
  ( (ValueCellFull!16358 (v!19932 V!51121)) (EmptyCell!16358) )
))
(declare-datatypes ((array!86011 0))(
  ( (array!86012 (arr!41502 (Array (_ BitVec 32) ValueCell!16358)) (size!42053 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86011)

(declare-fun e!738807 () Bool)

(declare-fun array_inv!31405 (array!86011) Bool)

(assert (=> start!109420 (and (array_inv!31405 _values!1445) e!738807)))

(declare-datatypes ((array!86013 0))(
  ( (array!86014 (arr!41503 (Array (_ BitVec 32) (_ BitVec 64))) (size!42054 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86013)

(declare-fun array_inv!31406 (array!86013) Bool)

(assert (=> start!109420 (array_inv!31406 _keys!1741)))

(assert (=> start!109420 tp!101738))

(declare-fun b!1294737 () Bool)

(declare-fun res!860550 () Bool)

(assert (=> b!1294737 (=> (not res!860550) (not e!738808))))

(declare-datatypes ((List!29629 0))(
  ( (Nil!29626) (Cons!29625 (h!30834 (_ BitVec 64)) (t!43200 List!29629)) )
))
(declare-fun arrayNoDuplicates!0 (array!86013 (_ BitVec 32) List!29629) Bool)

(assert (=> b!1294737 (= res!860550 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29626))))

(declare-fun b!1294738 () Bool)

(declare-fun e!738806 () Bool)

(assert (=> b!1294738 (= e!738806 tp_is_empty!34513)))

(declare-fun b!1294739 () Bool)

(declare-fun e!738811 () Bool)

(assert (=> b!1294739 (= e!738811 true)))

(declare-fun minValue!1387 () V!51121)

(declare-fun zeroValue!1387 () V!51121)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!579691 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22458 0))(
  ( (tuple2!22459 (_1!11239 (_ BitVec 64)) (_2!11239 V!51121)) )
))
(declare-datatypes ((List!29630 0))(
  ( (Nil!29627) (Cons!29626 (h!30835 tuple2!22458) (t!43201 List!29630)) )
))
(declare-datatypes ((ListLongMap!20127 0))(
  ( (ListLongMap!20128 (toList!10079 List!29630)) )
))
(declare-fun contains!8135 (ListLongMap!20127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6099 (array!86013 array!86011 (_ BitVec 32) (_ BitVec 32) V!51121 V!51121 (_ BitVec 32) Int) ListLongMap!20127)

(assert (=> b!1294739 (= lt!579691 (contains!8135 (getCurrentListMapNoExtraKeys!6099 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294740 () Bool)

(assert (=> b!1294740 (= e!738808 (not e!738811))))

(declare-fun res!860546 () Bool)

(assert (=> b!1294740 (=> res!860546 e!738811)))

(assert (=> b!1294740 (= res!860546 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1294740 (not (contains!8135 (ListLongMap!20128 Nil!29627) k!1205))))

(declare-datatypes ((Unit!42825 0))(
  ( (Unit!42826) )
))
(declare-fun lt!579690 () Unit!42825)

(declare-fun emptyContainsNothing!169 ((_ BitVec 64)) Unit!42825)

(assert (=> b!1294740 (= lt!579690 (emptyContainsNothing!169 k!1205))))

(declare-fun b!1294741 () Bool)

(declare-fun res!860545 () Bool)

(assert (=> b!1294741 (=> (not res!860545) (not e!738808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294741 (= res!860545 (not (validKeyInArray!0 (select (arr!41503 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53330 () Bool)

(declare-fun mapRes!53330 () Bool)

(assert (=> mapIsEmpty!53330 mapRes!53330))

(declare-fun b!1294742 () Bool)

(declare-fun res!860552 () Bool)

(assert (=> b!1294742 (=> (not res!860552) (not e!738808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86013 (_ BitVec 32)) Bool)

(assert (=> b!1294742 (= res!860552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294743 () Bool)

(declare-fun res!860553 () Bool)

(assert (=> b!1294743 (=> (not res!860553) (not e!738808))))

(declare-fun getCurrentListMap!5062 (array!86013 array!86011 (_ BitVec 32) (_ BitVec 32) V!51121 V!51121 (_ BitVec 32) Int) ListLongMap!20127)

(assert (=> b!1294743 (= res!860553 (contains!8135 (getCurrentListMap!5062 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294744 () Bool)

(declare-fun res!860551 () Bool)

(assert (=> b!1294744 (=> (not res!860551) (not e!738808))))

(assert (=> b!1294744 (= res!860551 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42054 _keys!1741))))))

(declare-fun b!1294745 () Bool)

(declare-fun e!738809 () Bool)

(assert (=> b!1294745 (= e!738809 tp_is_empty!34513)))

(declare-fun b!1294746 () Bool)

(declare-fun res!860547 () Bool)

(assert (=> b!1294746 (=> (not res!860547) (not e!738808))))

(assert (=> b!1294746 (= res!860547 (and (= (size!42053 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42054 _keys!1741) (size!42053 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53330 () Bool)

(declare-fun tp!101739 () Bool)

(assert (=> mapNonEmpty!53330 (= mapRes!53330 (and tp!101739 e!738809))))

(declare-fun mapKey!53330 () (_ BitVec 32))

(declare-fun mapRest!53330 () (Array (_ BitVec 32) ValueCell!16358))

(declare-fun mapValue!53330 () ValueCell!16358)

(assert (=> mapNonEmpty!53330 (= (arr!41502 _values!1445) (store mapRest!53330 mapKey!53330 mapValue!53330))))

(declare-fun b!1294747 () Bool)

(assert (=> b!1294747 (= e!738807 (and e!738806 mapRes!53330))))

(declare-fun condMapEmpty!53330 () Bool)

(declare-fun mapDefault!53330 () ValueCell!16358)

