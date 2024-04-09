; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97292 () Bool)

(assert start!97292)

(declare-fun b_free!23227 () Bool)

(declare-fun b_next!23227 () Bool)

(assert (=> start!97292 (= b_free!23227 (not b_next!23227))))

(declare-fun tp!81980 () Bool)

(declare-fun b_and!37303 () Bool)

(assert (=> start!97292 (= tp!81980 b_and!37303)))

(declare-fun b!1106995 () Bool)

(declare-fun e!631673 () Bool)

(declare-datatypes ((V!41777 0))(
  ( (V!41778 (val!13800 Int)) )
))
(declare-datatypes ((tuple2!17492 0))(
  ( (tuple2!17493 (_1!8756 (_ BitVec 64)) (_2!8756 V!41777)) )
))
(declare-datatypes ((List!24230 0))(
  ( (Nil!24227) (Cons!24226 (h!25435 tuple2!17492) (t!34510 List!24230)) )
))
(declare-datatypes ((ListLongMap!15473 0))(
  ( (ListLongMap!15474 (toList!7752 List!24230)) )
))
(declare-fun call!46379 () ListLongMap!15473)

(declare-fun call!46378 () ListLongMap!15473)

(assert (=> b!1106995 (= e!631673 (= call!46379 call!46378))))

(declare-fun b!1106996 () Bool)

(declare-fun e!631679 () Bool)

(declare-fun tp_is_empty!27487 () Bool)

(assert (=> b!1106996 (= e!631679 tp_is_empty!27487)))

(declare-fun b!1106997 () Bool)

(declare-fun res!738873 () Bool)

(declare-fun e!631677 () Bool)

(assert (=> b!1106997 (=> (not res!738873) (not e!631677))))

(declare-datatypes ((array!71844 0))(
  ( (array!71845 (arr!34571 (Array (_ BitVec 32) (_ BitVec 64))) (size!35108 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71844)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13034 0))(
  ( (ValueCellFull!13034 (v!16434 V!41777)) (EmptyCell!13034) )
))
(declare-datatypes ((array!71846 0))(
  ( (array!71847 (arr!34572 (Array (_ BitVec 32) ValueCell!13034)) (size!35109 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71846)

(assert (=> b!1106997 (= res!738873 (and (= (size!35109 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35108 _keys!1208) (size!35109 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!41777)

(declare-fun bm!46375 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41777)

(declare-fun getCurrentListMapNoExtraKeys!4221 (array!71844 array!71846 (_ BitVec 32) (_ BitVec 32) V!41777 V!41777 (_ BitVec 32) Int) ListLongMap!15473)

(assert (=> bm!46375 (= call!46378 (getCurrentListMapNoExtraKeys!4221 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1106998 () Bool)

(declare-fun res!738870 () Bool)

(assert (=> b!1106998 (=> (not res!738870) (not e!631677))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106998 (= res!738870 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35108 _keys!1208))))))

(declare-fun b!1106999 () Bool)

(declare-fun e!631674 () Bool)

(declare-fun e!631672 () Bool)

(assert (=> b!1106999 (= e!631674 (not e!631672))))

(declare-fun res!738875 () Bool)

(assert (=> b!1106999 (=> res!738875 e!631672)))

(assert (=> b!1106999 (= res!738875 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35108 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106999 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36267 0))(
  ( (Unit!36268) )
))
(declare-fun lt!495535 () Unit!36267)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71844 (_ BitVec 64) (_ BitVec 32)) Unit!36267)

(assert (=> b!1106999 (= lt!495535 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1107000 () Bool)

(declare-fun res!738877 () Bool)

(assert (=> b!1107000 (=> (not res!738877) (not e!631677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71844 (_ BitVec 32)) Bool)

(assert (=> b!1107000 (= res!738877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107001 () Bool)

(declare-fun res!738876 () Bool)

(assert (=> b!1107001 (=> (not res!738876) (not e!631677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107001 (= res!738876 (validKeyInArray!0 k!934))))

(declare-fun b!1107002 () Bool)

(declare-fun res!738869 () Bool)

(assert (=> b!1107002 (=> (not res!738869) (not e!631677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107002 (= res!738869 (validMask!0 mask!1564))))

(declare-fun b!1107003 () Bool)

(assert (=> b!1107003 (= e!631677 e!631674)))

(declare-fun res!738871 () Bool)

(assert (=> b!1107003 (=> (not res!738871) (not e!631674))))

(declare-fun lt!495536 () array!71844)

(assert (=> b!1107003 (= res!738871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495536 mask!1564))))

(assert (=> b!1107003 (= lt!495536 (array!71845 (store (arr!34571 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35108 _keys!1208)))))

(declare-fun b!1107004 () Bool)

(declare-fun res!738872 () Bool)

(assert (=> b!1107004 (=> (not res!738872) (not e!631674))))

(declare-datatypes ((List!24231 0))(
  ( (Nil!24228) (Cons!24227 (h!25436 (_ BitVec 64)) (t!34511 List!24231)) )
))
(declare-fun arrayNoDuplicates!0 (array!71844 (_ BitVec 32) List!24231) Bool)

(assert (=> b!1107004 (= res!738872 (arrayNoDuplicates!0 lt!495536 #b00000000000000000000000000000000 Nil!24228))))

(declare-fun b!1107005 () Bool)

(declare-fun res!738878 () Bool)

(assert (=> b!1107005 (=> (not res!738878) (not e!631677))))

(assert (=> b!1107005 (= res!738878 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24228))))

(declare-fun res!738879 () Bool)

(assert (=> start!97292 (=> (not res!738879) (not e!631677))))

(assert (=> start!97292 (= res!738879 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35108 _keys!1208))))))

(assert (=> start!97292 e!631677))

(assert (=> start!97292 tp_is_empty!27487))

(declare-fun array_inv!26468 (array!71844) Bool)

(assert (=> start!97292 (array_inv!26468 _keys!1208)))

(assert (=> start!97292 true))

(assert (=> start!97292 tp!81980))

(declare-fun e!631675 () Bool)

(declare-fun array_inv!26469 (array!71846) Bool)

(assert (=> start!97292 (and (array_inv!26469 _values!996) e!631675)))

(declare-fun b!1107006 () Bool)

(declare-fun -!988 (ListLongMap!15473 (_ BitVec 64)) ListLongMap!15473)

(assert (=> b!1107006 (= e!631673 (= call!46379 (-!988 call!46378 k!934)))))

(declare-fun mapIsEmpty!43048 () Bool)

(declare-fun mapRes!43048 () Bool)

(assert (=> mapIsEmpty!43048 mapRes!43048))

(declare-fun b!1107007 () Bool)

(assert (=> b!1107007 (= e!631675 (and e!631679 mapRes!43048))))

(declare-fun condMapEmpty!43048 () Bool)

(declare-fun mapDefault!43048 () ValueCell!13034)

