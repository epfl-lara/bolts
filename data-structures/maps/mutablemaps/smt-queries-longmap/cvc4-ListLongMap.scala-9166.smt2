; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110110 () Bool)

(assert start!110110)

(declare-fun b_free!29273 () Bool)

(declare-fun b_next!29273 () Bool)

(assert (=> start!110110 (= b_free!29273 (not b_next!29273))))

(declare-fun tp!102970 () Bool)

(declare-fun b_and!47447 () Bool)

(assert (=> start!110110 (= tp!102970 b_and!47447)))

(declare-fun res!865918 () Bool)

(declare-fun e!743562 () Bool)

(assert (=> start!110110 (=> (not res!865918) (not e!743562))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110110 (= res!865918 (validMask!0 mask!2175))))

(assert (=> start!110110 e!743562))

(declare-fun tp_is_empty!34913 () Bool)

(assert (=> start!110110 tp_is_empty!34913))

(assert (=> start!110110 true))

(declare-datatypes ((V!51653 0))(
  ( (V!51654 (val!17531 Int)) )
))
(declare-datatypes ((ValueCell!16558 0))(
  ( (ValueCellFull!16558 (v!20145 V!51653)) (EmptyCell!16558) )
))
(declare-datatypes ((array!86803 0))(
  ( (array!86804 (arr!41888 (Array (_ BitVec 32) ValueCell!16558)) (size!42439 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86803)

(declare-fun e!743558 () Bool)

(declare-fun array_inv!31677 (array!86803) Bool)

(assert (=> start!110110 (and (array_inv!31677 _values!1445) e!743558)))

(declare-datatypes ((array!86805 0))(
  ( (array!86806 (arr!41889 (Array (_ BitVec 32) (_ BitVec 64))) (size!42440 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86805)

(declare-fun array_inv!31678 (array!86805) Bool)

(assert (=> start!110110 (array_inv!31678 _keys!1741)))

(assert (=> start!110110 tp!102970))

(declare-fun b!1303562 () Bool)

(declare-fun e!743560 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1303562 (= e!743560 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k!1205)))))

(declare-fun mapIsEmpty!53962 () Bool)

(declare-fun mapRes!53962 () Bool)

(assert (=> mapIsEmpty!53962 mapRes!53962))

(declare-fun mapNonEmpty!53962 () Bool)

(declare-fun tp!102971 () Bool)

(declare-fun e!743561 () Bool)

(assert (=> mapNonEmpty!53962 (= mapRes!53962 (and tp!102971 e!743561))))

(declare-fun mapRest!53962 () (Array (_ BitVec 32) ValueCell!16558))

(declare-fun mapKey!53962 () (_ BitVec 32))

(declare-fun mapValue!53962 () ValueCell!16558)

(assert (=> mapNonEmpty!53962 (= (arr!41888 _values!1445) (store mapRest!53962 mapKey!53962 mapValue!53962))))

(declare-fun b!1303563 () Bool)

(declare-fun e!743559 () Bool)

(assert (=> b!1303563 (= e!743559 tp_is_empty!34913)))

(declare-fun b!1303564 () Bool)

(declare-fun res!865915 () Bool)

(assert (=> b!1303564 (=> (not res!865915) (not e!743562))))

(declare-datatypes ((List!29931 0))(
  ( (Nil!29928) (Cons!29927 (h!31136 (_ BitVec 64)) (t!43532 List!29931)) )
))
(declare-fun arrayNoDuplicates!0 (array!86805 (_ BitVec 32) List!29931) Bool)

(assert (=> b!1303564 (= res!865915 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29928))))

(declare-fun b!1303565 () Bool)

(declare-fun e!743564 () Bool)

(assert (=> b!1303565 (= e!743564 e!743560)))

(declare-fun res!865911 () Bool)

(assert (=> b!1303565 (=> (not res!865911) (not e!743560))))

(declare-fun minValue!1387 () V!51653)

(declare-fun zeroValue!1387 () V!51653)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22780 0))(
  ( (tuple2!22781 (_1!11400 (_ BitVec 64)) (_2!11400 V!51653)) )
))
(declare-datatypes ((List!29932 0))(
  ( (Nil!29929) (Cons!29928 (h!31137 tuple2!22780) (t!43533 List!29932)) )
))
(declare-datatypes ((ListLongMap!20449 0))(
  ( (ListLongMap!20450 (toList!10240 List!29932)) )
))
(declare-fun contains!8311 (ListLongMap!20449 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6174 (array!86805 array!86803 (_ BitVec 32) (_ BitVec 32) V!51653 V!51653 (_ BitVec 32) Int) ListLongMap!20449)

(assert (=> b!1303565 (= res!865911 (not (contains!8311 (getCurrentListMapNoExtraKeys!6174 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205)))))

(declare-fun b!1303566 () Bool)

(declare-fun res!865914 () Bool)

(assert (=> b!1303566 (=> (not res!865914) (not e!743562))))

(assert (=> b!1303566 (= res!865914 (and (= (size!42439 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42440 _keys!1741) (size!42439 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303567 () Bool)

(declare-fun res!865910 () Bool)

(assert (=> b!1303567 (=> (not res!865910) (not e!743562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303567 (= res!865910 (not (validKeyInArray!0 (select (arr!41889 _keys!1741) from!2144))))))

(declare-fun b!1303568 () Bool)

(declare-fun res!865917 () Bool)

(assert (=> b!1303568 (=> (not res!865917) (not e!743562))))

(assert (=> b!1303568 (= res!865917 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42440 _keys!1741))))))

(declare-fun b!1303569 () Bool)

(assert (=> b!1303569 (= e!743561 tp_is_empty!34913)))

(declare-fun b!1303570 () Bool)

(declare-fun res!865909 () Bool)

(assert (=> b!1303570 (=> (not res!865909) (not e!743562))))

(declare-fun getCurrentListMap!5200 (array!86805 array!86803 (_ BitVec 32) (_ BitVec 32) V!51653 V!51653 (_ BitVec 32) Int) ListLongMap!20449)

(assert (=> b!1303570 (= res!865909 (contains!8311 (getCurrentListMap!5200 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1303571 () Bool)

(assert (=> b!1303571 (= e!743562 (not e!743564))))

(declare-fun res!865916 () Bool)

(assert (=> b!1303571 (=> res!865916 e!743564)))

(assert (=> b!1303571 (= res!865916 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303571 (not (contains!8311 (ListLongMap!20450 Nil!29929) k!1205))))

(declare-datatypes ((Unit!43112 0))(
  ( (Unit!43113) )
))
(declare-fun lt!583284 () Unit!43112)

(declare-fun emptyContainsNothing!225 ((_ BitVec 64)) Unit!43112)

(assert (=> b!1303571 (= lt!583284 (emptyContainsNothing!225 k!1205))))

(declare-fun b!1303572 () Bool)

(declare-fun res!865913 () Bool)

(assert (=> b!1303572 (=> (not res!865913) (not e!743562))))

(assert (=> b!1303572 (= res!865913 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42440 _keys!1741))))))

(declare-fun b!1303573 () Bool)

(assert (=> b!1303573 (= e!743558 (and e!743559 mapRes!53962))))

(declare-fun condMapEmpty!53962 () Bool)

(declare-fun mapDefault!53962 () ValueCell!16558)

