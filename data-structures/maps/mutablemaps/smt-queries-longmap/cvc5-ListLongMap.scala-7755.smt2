; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97310 () Bool)

(assert start!97310)

(declare-fun b_free!23245 () Bool)

(declare-fun b_next!23245 () Bool)

(assert (=> start!97310 (= b_free!23245 (not b_next!23245))))

(declare-fun tp!82034 () Bool)

(declare-fun b_and!37339 () Bool)

(assert (=> start!97310 (= tp!82034 b_and!37339)))

(declare-fun b!1107445 () Bool)

(declare-fun e!631890 () Bool)

(declare-fun tp_is_empty!27505 () Bool)

(assert (=> b!1107445 (= e!631890 tp_is_empty!27505)))

(declare-fun mapNonEmpty!43075 () Bool)

(declare-fun mapRes!43075 () Bool)

(declare-fun tp!82035 () Bool)

(declare-fun e!631892 () Bool)

(assert (=> mapNonEmpty!43075 (= mapRes!43075 (and tp!82035 e!631892))))

(declare-fun mapKey!43075 () (_ BitVec 32))

(declare-datatypes ((V!41801 0))(
  ( (V!41802 (val!13809 Int)) )
))
(declare-datatypes ((ValueCell!13043 0))(
  ( (ValueCellFull!13043 (v!16443 V!41801)) (EmptyCell!13043) )
))
(declare-fun mapValue!43075 () ValueCell!13043)

(declare-fun mapRest!43075 () (Array (_ BitVec 32) ValueCell!13043))

(declare-datatypes ((array!71880 0))(
  ( (array!71881 (arr!34589 (Array (_ BitVec 32) ValueCell!13043)) (size!35126 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71880)

(assert (=> mapNonEmpty!43075 (= (arr!34589 _values!996) (store mapRest!43075 mapKey!43075 mapValue!43075))))

(declare-fun b!1107446 () Bool)

(declare-fun e!631894 () Bool)

(assert (=> b!1107446 (= e!631894 true)))

(declare-fun e!631888 () Bool)

(assert (=> b!1107446 e!631888))

(declare-fun c!108995 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107446 (= c!108995 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41801)

(declare-datatypes ((array!71882 0))(
  ( (array!71883 (arr!34590 (Array (_ BitVec 32) (_ BitVec 64))) (size!35127 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71882)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36281 0))(
  ( (Unit!36282) )
))
(declare-fun lt!495616 () Unit!36281)

(declare-fun minValue!944 () V!41801)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!251 (array!71882 array!71880 (_ BitVec 32) (_ BitVec 32) V!41801 V!41801 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36281)

(assert (=> b!1107446 (= lt!495616 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!251 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107447 () Bool)

(assert (=> b!1107447 (= e!631892 tp_is_empty!27505)))

(declare-fun res!739170 () Bool)

(declare-fun e!631893 () Bool)

(assert (=> start!97310 (=> (not res!739170) (not e!631893))))

(assert (=> start!97310 (= res!739170 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35127 _keys!1208))))))

(assert (=> start!97310 e!631893))

(assert (=> start!97310 tp_is_empty!27505))

(declare-fun array_inv!26484 (array!71882) Bool)

(assert (=> start!97310 (array_inv!26484 _keys!1208)))

(assert (=> start!97310 true))

(assert (=> start!97310 tp!82034))

(declare-fun e!631889 () Bool)

(declare-fun array_inv!26485 (array!71880) Bool)

(assert (=> start!97310 (and (array_inv!26485 _values!996) e!631889)))

(declare-fun b!1107448 () Bool)

(declare-fun res!739171 () Bool)

(assert (=> b!1107448 (=> (not res!739171) (not e!631893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107448 (= res!739171 (validMask!0 mask!1564))))

(declare-fun b!1107449 () Bool)

(declare-datatypes ((tuple2!17510 0))(
  ( (tuple2!17511 (_1!8765 (_ BitVec 64)) (_2!8765 V!41801)) )
))
(declare-datatypes ((List!24247 0))(
  ( (Nil!24244) (Cons!24243 (h!25452 tuple2!17510) (t!34545 List!24247)) )
))
(declare-datatypes ((ListLongMap!15491 0))(
  ( (ListLongMap!15492 (toList!7761 List!24247)) )
))
(declare-fun call!46433 () ListLongMap!15491)

(declare-fun call!46432 () ListLongMap!15491)

(declare-fun -!995 (ListLongMap!15491 (_ BitVec 64)) ListLongMap!15491)

(assert (=> b!1107449 (= e!631888 (= call!46433 (-!995 call!46432 k!934)))))

(declare-fun b!1107450 () Bool)

(declare-fun res!739166 () Bool)

(assert (=> b!1107450 (=> (not res!739166) (not e!631893))))

(declare-datatypes ((List!24248 0))(
  ( (Nil!24245) (Cons!24244 (h!25453 (_ BitVec 64)) (t!34546 List!24248)) )
))
(declare-fun arrayNoDuplicates!0 (array!71882 (_ BitVec 32) List!24248) Bool)

(assert (=> b!1107450 (= res!739166 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24245))))

(declare-fun mapIsEmpty!43075 () Bool)

(assert (=> mapIsEmpty!43075 mapRes!43075))

(declare-fun b!1107451 () Bool)

(assert (=> b!1107451 (= e!631889 (and e!631890 mapRes!43075))))

(declare-fun condMapEmpty!43075 () Bool)

(declare-fun mapDefault!43075 () ValueCell!13043)

