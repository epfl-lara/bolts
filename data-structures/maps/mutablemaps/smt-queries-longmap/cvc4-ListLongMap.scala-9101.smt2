; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109430 () Bool)

(assert start!109430)

(declare-fun b_free!28883 () Bool)

(declare-fun b_next!28883 () Bool)

(assert (=> start!109430 (= b_free!28883 (not b_next!28883))))

(declare-fun tp!101769 () Bool)

(declare-fun b_and!46983 () Bool)

(assert (=> start!109430 (= tp!101769 b_and!46983)))

(declare-fun b!1294917 () Bool)

(declare-fun e!738896 () Bool)

(declare-fun tp_is_empty!34523 () Bool)

(assert (=> b!1294917 (= e!738896 tp_is_empty!34523)))

(declare-fun res!860684 () Bool)

(declare-fun e!738898 () Bool)

(assert (=> start!109430 (=> (not res!860684) (not e!738898))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109430 (= res!860684 (validMask!0 mask!2175))))

(assert (=> start!109430 e!738898))

(assert (=> start!109430 tp_is_empty!34523))

(assert (=> start!109430 true))

(declare-datatypes ((V!51133 0))(
  ( (V!51134 (val!17336 Int)) )
))
(declare-datatypes ((ValueCell!16363 0))(
  ( (ValueCellFull!16363 (v!19937 V!51133)) (EmptyCell!16363) )
))
(declare-datatypes ((array!86031 0))(
  ( (array!86032 (arr!41512 (Array (_ BitVec 32) ValueCell!16363)) (size!42063 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86031)

(declare-fun e!738900 () Bool)

(declare-fun array_inv!31413 (array!86031) Bool)

(assert (=> start!109430 (and (array_inv!31413 _values!1445) e!738900)))

(declare-datatypes ((array!86033 0))(
  ( (array!86034 (arr!41513 (Array (_ BitVec 32) (_ BitVec 64))) (size!42064 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86033)

(declare-fun array_inv!31414 (array!86033) Bool)

(assert (=> start!109430 (array_inv!31414 _keys!1741)))

(assert (=> start!109430 tp!101769))

(declare-fun b!1294918 () Bool)

(declare-fun res!860682 () Bool)

(assert (=> b!1294918 (=> (not res!860682) (not e!738898))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294918 (= res!860682 (and (= (size!42063 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42064 _keys!1741) (size!42063 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294919 () Bool)

(declare-fun res!860686 () Bool)

(assert (=> b!1294919 (=> (not res!860686) (not e!738898))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1294919 (= res!860686 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42064 _keys!1741))))))

(declare-fun b!1294920 () Bool)

(declare-fun e!738899 () Bool)

(assert (=> b!1294920 (= e!738899 true)))

(declare-datatypes ((tuple2!22468 0))(
  ( (tuple2!22469 (_1!11244 (_ BitVec 64)) (_2!11244 V!51133)) )
))
(declare-datatypes ((List!29638 0))(
  ( (Nil!29635) (Cons!29634 (h!30843 tuple2!22468) (t!43209 List!29638)) )
))
(declare-datatypes ((ListLongMap!20137 0))(
  ( (ListLongMap!20138 (toList!10084 List!29638)) )
))
(declare-fun lt!579730 () ListLongMap!20137)

(declare-fun minValue!1387 () V!51133)

(declare-fun contains!8140 (ListLongMap!20137 (_ BitVec 64)) Bool)

(declare-fun +!4388 (ListLongMap!20137 tuple2!22468) ListLongMap!20137)

(assert (=> b!1294920 (not (contains!8140 (+!4388 lt!579730 (tuple2!22469 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42835 0))(
  ( (Unit!42836) )
))
(declare-fun lt!579728 () Unit!42835)

(declare-fun addStillNotContains!433 (ListLongMap!20137 (_ BitVec 64) V!51133 (_ BitVec 64)) Unit!42835)

(assert (=> b!1294920 (= lt!579728 (addStillNotContains!433 lt!579730 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51133)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6104 (array!86033 array!86031 (_ BitVec 32) (_ BitVec 32) V!51133 V!51133 (_ BitVec 32) Int) ListLongMap!20137)

(assert (=> b!1294920 (= lt!579730 (getCurrentListMapNoExtraKeys!6104 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53345 () Bool)

(declare-fun mapRes!53345 () Bool)

(assert (=> mapIsEmpty!53345 mapRes!53345))

(declare-fun b!1294921 () Bool)

(declare-fun res!860683 () Bool)

(assert (=> b!1294921 (=> (not res!860683) (not e!738898))))

(assert (=> b!1294921 (= res!860683 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42064 _keys!1741))))))

(declare-fun b!1294922 () Bool)

(assert (=> b!1294922 (= e!738900 (and e!738896 mapRes!53345))))

(declare-fun condMapEmpty!53345 () Bool)

(declare-fun mapDefault!53345 () ValueCell!16363)

