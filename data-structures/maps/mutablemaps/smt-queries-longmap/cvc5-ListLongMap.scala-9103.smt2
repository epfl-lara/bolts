; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109438 () Bool)

(assert start!109438)

(declare-fun b_free!28891 () Bool)

(declare-fun b_next!28891 () Bool)

(assert (=> start!109438 (= b_free!28891 (not b_next!28891))))

(declare-fun tp!101793 () Bool)

(declare-fun b_and!46991 () Bool)

(assert (=> start!109438 (= tp!101793 b_and!46991)))

(declare-fun b!1295061 () Bool)

(declare-fun e!738968 () Bool)

(declare-fun tp_is_empty!34531 () Bool)

(assert (=> b!1295061 (= e!738968 tp_is_empty!34531)))

(declare-fun b!1295062 () Bool)

(declare-fun res!860789 () Bool)

(declare-fun e!738971 () Bool)

(assert (=> b!1295062 (=> (not res!860789) (not e!738971))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51145 0))(
  ( (V!51146 (val!17340 Int)) )
))
(declare-datatypes ((ValueCell!16367 0))(
  ( (ValueCellFull!16367 (v!19941 V!51145)) (EmptyCell!16367) )
))
(declare-datatypes ((array!86045 0))(
  ( (array!86046 (arr!41519 (Array (_ BitVec 32) ValueCell!16367)) (size!42070 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86045)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86047 0))(
  ( (array!86048 (arr!41520 (Array (_ BitVec 32) (_ BitVec 64))) (size!42071 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86047)

(assert (=> b!1295062 (= res!860789 (and (= (size!42070 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42071 _keys!1741) (size!42070 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295063 () Bool)

(declare-fun e!738969 () Bool)

(assert (=> b!1295063 (= e!738969 true)))

(declare-datatypes ((tuple2!22474 0))(
  ( (tuple2!22475 (_1!11247 (_ BitVec 64)) (_2!11247 V!51145)) )
))
(declare-datatypes ((List!29643 0))(
  ( (Nil!29640) (Cons!29639 (h!30848 tuple2!22474) (t!43214 List!29643)) )
))
(declare-datatypes ((ListLongMap!20143 0))(
  ( (ListLongMap!20144 (toList!10087 List!29643)) )
))
(declare-fun lt!579765 () ListLongMap!20143)

(declare-fun minValue!1387 () V!51145)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8143 (ListLongMap!20143 (_ BitVec 64)) Bool)

(declare-fun +!4391 (ListLongMap!20143 tuple2!22474) ListLongMap!20143)

(assert (=> b!1295063 (not (contains!8143 (+!4391 lt!579765 (tuple2!22475 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42841 0))(
  ( (Unit!42842) )
))
(declare-fun lt!579764 () Unit!42841)

(declare-fun addStillNotContains!436 (ListLongMap!20143 (_ BitVec 64) V!51145 (_ BitVec 64)) Unit!42841)

(assert (=> b!1295063 (= lt!579764 (addStillNotContains!436 lt!579765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51145)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6107 (array!86047 array!86045 (_ BitVec 32) (_ BitVec 32) V!51145 V!51145 (_ BitVec 32) Int) ListLongMap!20143)

(assert (=> b!1295063 (= lt!579765 (getCurrentListMapNoExtraKeys!6107 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!53357 () Bool)

(declare-fun mapRes!53357 () Bool)

(declare-fun tp!101792 () Bool)

(assert (=> mapNonEmpty!53357 (= mapRes!53357 (and tp!101792 e!738968))))

(declare-fun mapKey!53357 () (_ BitVec 32))

(declare-fun mapValue!53357 () ValueCell!16367)

(declare-fun mapRest!53357 () (Array (_ BitVec 32) ValueCell!16367))

(assert (=> mapNonEmpty!53357 (= (arr!41519 _values!1445) (store mapRest!53357 mapKey!53357 mapValue!53357))))

(declare-fun mapIsEmpty!53357 () Bool)

(assert (=> mapIsEmpty!53357 mapRes!53357))

(declare-fun b!1295065 () Bool)

(assert (=> b!1295065 (= e!738971 (not e!738969))))

(declare-fun res!860794 () Bool)

(assert (=> b!1295065 (=> res!860794 e!738969)))

(assert (=> b!1295065 (= res!860794 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295065 (not (contains!8143 (ListLongMap!20144 Nil!29640) k!1205))))

(declare-fun lt!579766 () Unit!42841)

(declare-fun emptyContainsNothing!176 ((_ BitVec 64)) Unit!42841)

(assert (=> b!1295065 (= lt!579766 (emptyContainsNothing!176 k!1205))))

(declare-fun b!1295066 () Bool)

(declare-fun res!860788 () Bool)

(assert (=> b!1295066 (=> (not res!860788) (not e!738971))))

(declare-datatypes ((List!29644 0))(
  ( (Nil!29641) (Cons!29640 (h!30849 (_ BitVec 64)) (t!43215 List!29644)) )
))
(declare-fun arrayNoDuplicates!0 (array!86047 (_ BitVec 32) List!29644) Bool)

(assert (=> b!1295066 (= res!860788 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29641))))

(declare-fun b!1295067 () Bool)

(declare-fun res!860792 () Bool)

(assert (=> b!1295067 (=> (not res!860792) (not e!738971))))

(assert (=> b!1295067 (= res!860792 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42071 _keys!1741))))))

(declare-fun b!1295068 () Bool)

(declare-fun e!738970 () Bool)

(assert (=> b!1295068 (= e!738970 tp_is_empty!34531)))

(declare-fun b!1295069 () Bool)

(declare-fun res!860793 () Bool)

(assert (=> b!1295069 (=> (not res!860793) (not e!738971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295069 (= res!860793 (not (validKeyInArray!0 (select (arr!41520 _keys!1741) from!2144))))))

(declare-fun b!1295070 () Bool)

(declare-fun res!860790 () Bool)

(assert (=> b!1295070 (=> (not res!860790) (not e!738971))))

(assert (=> b!1295070 (= res!860790 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42071 _keys!1741))))))

(declare-fun res!860795 () Bool)

(assert (=> start!109438 (=> (not res!860795) (not e!738971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109438 (= res!860795 (validMask!0 mask!2175))))

(assert (=> start!109438 e!738971))

(assert (=> start!109438 tp_is_empty!34531))

(assert (=> start!109438 true))

(declare-fun e!738973 () Bool)

(declare-fun array_inv!31419 (array!86045) Bool)

(assert (=> start!109438 (and (array_inv!31419 _values!1445) e!738973)))

(declare-fun array_inv!31420 (array!86047) Bool)

(assert (=> start!109438 (array_inv!31420 _keys!1741)))

(assert (=> start!109438 tp!101793))

(declare-fun b!1295064 () Bool)

(declare-fun res!860796 () Bool)

(assert (=> b!1295064 (=> (not res!860796) (not e!738971))))

(declare-fun getCurrentListMap!5068 (array!86047 array!86045 (_ BitVec 32) (_ BitVec 32) V!51145 V!51145 (_ BitVec 32) Int) ListLongMap!20143)

(assert (=> b!1295064 (= res!860796 (contains!8143 (getCurrentListMap!5068 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295071 () Bool)

(assert (=> b!1295071 (= e!738973 (and e!738970 mapRes!53357))))

(declare-fun condMapEmpty!53357 () Bool)

(declare-fun mapDefault!53357 () ValueCell!16367)

