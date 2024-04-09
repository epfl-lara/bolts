; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109292 () Bool)

(assert start!109292)

(declare-fun b_free!28745 () Bool)

(declare-fun b_next!28745 () Bool)

(assert (=> start!109292 (= b_free!28745 (not b_next!28745))))

(declare-fun tp!101355 () Bool)

(declare-fun b_and!46845 () Bool)

(assert (=> start!109292 (= tp!101355 b_and!46845)))

(declare-fun mapNonEmpty!53138 () Bool)

(declare-fun mapRes!53138 () Bool)

(declare-fun tp!101354 () Bool)

(declare-fun e!737738 () Bool)

(assert (=> mapNonEmpty!53138 (= mapRes!53138 (and tp!101354 e!737738))))

(declare-datatypes ((V!50949 0))(
  ( (V!50950 (val!17267 Int)) )
))
(declare-datatypes ((ValueCell!16294 0))(
  ( (ValueCellFull!16294 (v!19868 V!50949)) (EmptyCell!16294) )
))
(declare-fun mapValue!53138 () ValueCell!16294)

(declare-fun mapRest!53138 () (Array (_ BitVec 32) ValueCell!16294))

(declare-datatypes ((array!85761 0))(
  ( (array!85762 (arr!41377 (Array (_ BitVec 32) ValueCell!16294)) (size!41928 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85761)

(declare-fun mapKey!53138 () (_ BitVec 32))

(assert (=> mapNonEmpty!53138 (= (arr!41377 _values!1445) (store mapRest!53138 mapKey!53138 mapValue!53138))))

(declare-fun b!1292515 () Bool)

(declare-fun tp_is_empty!34385 () Bool)

(assert (=> b!1292515 (= e!737738 tp_is_empty!34385)))

(declare-fun b!1292517 () Bool)

(declare-fun res!858904 () Bool)

(declare-fun e!737739 () Bool)

(assert (=> b!1292517 (=> (not res!858904) (not e!737739))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85763 0))(
  ( (array!85764 (arr!41378 (Array (_ BitVec 32) (_ BitVec 64))) (size!41929 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85763)

(assert (=> b!1292517 (= res!858904 (and (= (size!41928 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41929 _keys!1741) (size!41928 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292518 () Bool)

(declare-fun res!858901 () Bool)

(assert (=> b!1292518 (=> (not res!858901) (not e!737739))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1292518 (= res!858901 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41929 _keys!1741))))))

(declare-fun b!1292519 () Bool)

(declare-fun res!858906 () Bool)

(assert (=> b!1292519 (=> (not res!858906) (not e!737739))))

(declare-fun minValue!1387 () V!50949)

(declare-fun zeroValue!1387 () V!50949)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22352 0))(
  ( (tuple2!22353 (_1!11186 (_ BitVec 64)) (_2!11186 V!50949)) )
))
(declare-datatypes ((List!29538 0))(
  ( (Nil!29535) (Cons!29534 (h!30743 tuple2!22352) (t!43109 List!29538)) )
))
(declare-datatypes ((ListLongMap!20021 0))(
  ( (ListLongMap!20022 (toList!10026 List!29538)) )
))
(declare-fun contains!8082 (ListLongMap!20021 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5017 (array!85763 array!85761 (_ BitVec 32) (_ BitVec 32) V!50949 V!50949 (_ BitVec 32) Int) ListLongMap!20021)

(assert (=> b!1292519 (= res!858906 (contains!8082 (getCurrentListMap!5017 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292520 () Bool)

(assert (=> b!1292520 (= e!737739 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle from!2144 (size!41929 _keys!1741)))))))

(assert (=> b!1292520 (not (contains!8082 (ListLongMap!20022 Nil!29535) k!1205))))

(declare-datatypes ((Unit!42733 0))(
  ( (Unit!42734) )
))
(declare-fun lt!579289 () Unit!42733)

(declare-fun emptyContainsNothing!123 ((_ BitVec 64)) Unit!42733)

(assert (=> b!1292520 (= lt!579289 (emptyContainsNothing!123 k!1205))))

(declare-fun b!1292521 () Bool)

(declare-fun res!858903 () Bool)

(assert (=> b!1292521 (=> (not res!858903) (not e!737739))))

(declare-datatypes ((List!29539 0))(
  ( (Nil!29536) (Cons!29535 (h!30744 (_ BitVec 64)) (t!43110 List!29539)) )
))
(declare-fun arrayNoDuplicates!0 (array!85763 (_ BitVec 32) List!29539) Bool)

(assert (=> b!1292521 (= res!858903 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29536))))

(declare-fun b!1292522 () Bool)

(declare-fun e!737736 () Bool)

(declare-fun e!737740 () Bool)

(assert (=> b!1292522 (= e!737736 (and e!737740 mapRes!53138))))

(declare-fun condMapEmpty!53138 () Bool)

(declare-fun mapDefault!53138 () ValueCell!16294)

