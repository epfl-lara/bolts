; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97622 () Bool)

(assert start!97622)

(declare-fun b!1114639 () Bool)

(declare-fun e!635303 () Bool)

(declare-fun tp_is_empty!27817 () Bool)

(assert (=> b!1114639 (= e!635303 tp_is_empty!27817)))

(declare-fun b!1114640 () Bool)

(declare-fun res!744141 () Bool)

(declare-fun e!635299 () Bool)

(assert (=> b!1114640 (=> (not res!744141) (not e!635299))))

(declare-datatypes ((array!72482 0))(
  ( (array!72483 (arr!34890 (Array (_ BitVec 32) (_ BitVec 64))) (size!35427 (_ BitVec 32))) )
))
(declare-fun lt!496838 () array!72482)

(declare-datatypes ((List!24440 0))(
  ( (Nil!24437) (Cons!24436 (h!25645 (_ BitVec 64)) (t!34928 List!24440)) )
))
(declare-fun arrayNoDuplicates!0 (array!72482 (_ BitVec 32) List!24440) Bool)

(assert (=> b!1114640 (= res!744141 (arrayNoDuplicates!0 lt!496838 #b00000000000000000000000000000000 Nil!24437))))

(declare-fun mapIsEmpty!43543 () Bool)

(declare-fun mapRes!43543 () Bool)

(assert (=> mapIsEmpty!43543 mapRes!43543))

(declare-fun res!744135 () Bool)

(declare-fun e!635298 () Bool)

(assert (=> start!97622 (=> (not res!744135) (not e!635298))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!72482)

(assert (=> start!97622 (= res!744135 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35427 _keys!1208))))))

(assert (=> start!97622 e!635298))

(declare-fun array_inv!26690 (array!72482) Bool)

(assert (=> start!97622 (array_inv!26690 _keys!1208)))

(assert (=> start!97622 true))

(declare-datatypes ((V!42217 0))(
  ( (V!42218 (val!13965 Int)) )
))
(declare-datatypes ((ValueCell!13199 0))(
  ( (ValueCellFull!13199 (v!16599 V!42217)) (EmptyCell!13199) )
))
(declare-datatypes ((array!72484 0))(
  ( (array!72485 (arr!34891 (Array (_ BitVec 32) ValueCell!13199)) (size!35428 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72484)

(declare-fun e!635302 () Bool)

(declare-fun array_inv!26691 (array!72484) Bool)

(assert (=> start!97622 (and (array_inv!26691 _values!996) e!635302)))

(declare-fun b!1114641 () Bool)

(assert (=> b!1114641 (= e!635298 e!635299)))

(declare-fun res!744138 () Bool)

(assert (=> b!1114641 (=> (not res!744138) (not e!635299))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72482 (_ BitVec 32)) Bool)

(assert (=> b!1114641 (= res!744138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496838 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114641 (= lt!496838 (array!72483 (store (arr!34890 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35427 _keys!1208)))))

(declare-fun mapNonEmpty!43543 () Bool)

(declare-fun tp!82788 () Bool)

(declare-fun e!635301 () Bool)

(assert (=> mapNonEmpty!43543 (= mapRes!43543 (and tp!82788 e!635301))))

(declare-fun mapValue!43543 () ValueCell!13199)

(declare-fun mapRest!43543 () (Array (_ BitVec 32) ValueCell!13199))

(declare-fun mapKey!43543 () (_ BitVec 32))

(assert (=> mapNonEmpty!43543 (= (arr!34891 _values!996) (store mapRest!43543 mapKey!43543 mapValue!43543))))

(declare-fun b!1114642 () Bool)

(declare-fun res!744134 () Bool)

(assert (=> b!1114642 (=> (not res!744134) (not e!635298))))

(assert (=> b!1114642 (= res!744134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114643 () Bool)

(declare-fun res!744139 () Bool)

(assert (=> b!1114643 (=> (not res!744139) (not e!635298))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114643 (= res!744139 (and (= (size!35428 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35427 _keys!1208) (size!35428 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114644 () Bool)

(declare-fun res!744132 () Bool)

(assert (=> b!1114644 (=> (not res!744132) (not e!635298))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114644 (= res!744132 (= (select (arr!34890 _keys!1208) i!673) k!934))))

(declare-fun b!1114645 () Bool)

(declare-fun res!744140 () Bool)

(assert (=> b!1114645 (=> (not res!744140) (not e!635298))))

(assert (=> b!1114645 (= res!744140 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35427 _keys!1208))))))

(declare-fun b!1114646 () Bool)

(declare-fun res!744136 () Bool)

(assert (=> b!1114646 (=> (not res!744136) (not e!635298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114646 (= res!744136 (validKeyInArray!0 k!934))))

(declare-fun b!1114647 () Bool)

(assert (=> b!1114647 (= e!635301 tp_is_empty!27817)))

(declare-fun b!1114648 () Bool)

(assert (=> b!1114648 (= e!635299 (not true))))

(declare-fun arrayContainsKey!0 (array!72482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114648 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36487 0))(
  ( (Unit!36488) )
))
(declare-fun lt!496839 () Unit!36487)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72482 (_ BitVec 64) (_ BitVec 32)) Unit!36487)

(assert (=> b!1114648 (= lt!496839 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114649 () Bool)

(declare-fun res!744133 () Bool)

(assert (=> b!1114649 (=> (not res!744133) (not e!635298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114649 (= res!744133 (validMask!0 mask!1564))))

(declare-fun b!1114650 () Bool)

(declare-fun res!744137 () Bool)

(assert (=> b!1114650 (=> (not res!744137) (not e!635298))))

(assert (=> b!1114650 (= res!744137 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24437))))

(declare-fun b!1114651 () Bool)

(assert (=> b!1114651 (= e!635302 (and e!635303 mapRes!43543))))

(declare-fun condMapEmpty!43543 () Bool)

(declare-fun mapDefault!43543 () ValueCell!13199)

