; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97328 () Bool)

(assert start!97328)

(declare-fun b_free!23263 () Bool)

(declare-fun b_next!23263 () Bool)

(assert (=> start!97328 (= b_free!23263 (not b_next!23263))))

(declare-fun tp!82089 () Bool)

(declare-fun b_and!37375 () Bool)

(assert (=> start!97328 (= tp!82089 b_and!37375)))

(declare-fun b!1107895 () Bool)

(declare-fun e!632109 () Bool)

(declare-fun e!632111 () Bool)

(assert (=> b!1107895 (= e!632109 e!632111)))

(declare-fun res!739470 () Bool)

(assert (=> b!1107895 (=> (not res!739470) (not e!632111))))

(declare-datatypes ((array!71914 0))(
  ( (array!71915 (arr!34606 (Array (_ BitVec 32) (_ BitVec 64))) (size!35143 (_ BitVec 32))) )
))
(declare-fun lt!495697 () array!71914)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71914 (_ BitVec 32)) Bool)

(assert (=> b!1107895 (= res!739470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495697 mask!1564))))

(declare-fun _keys!1208 () array!71914)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107895 (= lt!495697 (array!71915 (store (arr!34606 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35143 _keys!1208)))))

(declare-fun b!1107896 () Bool)

(declare-fun res!739467 () Bool)

(assert (=> b!1107896 (=> (not res!739467) (not e!632109))))

(assert (=> b!1107896 (= res!739467 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35143 _keys!1208))))))

(declare-fun b!1107897 () Bool)

(declare-fun e!632105 () Bool)

(assert (=> b!1107897 (= e!632105 true)))

(declare-fun e!632108 () Bool)

(assert (=> b!1107897 e!632108))

(declare-fun c!109022 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1107897 (= c!109022 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41825 0))(
  ( (V!41826 (val!13818 Int)) )
))
(declare-fun zeroValue!944 () V!41825)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13052 0))(
  ( (ValueCellFull!13052 (v!16452 V!41825)) (EmptyCell!13052) )
))
(declare-datatypes ((array!71916 0))(
  ( (array!71917 (arr!34607 (Array (_ BitVec 32) ValueCell!13052)) (size!35144 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71916)

(declare-fun minValue!944 () V!41825)

(declare-datatypes ((Unit!36293 0))(
  ( (Unit!36294) )
))
(declare-fun lt!495699 () Unit!36293)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!256 (array!71914 array!71916 (_ BitVec 32) (_ BitVec 32) V!41825 V!41825 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36293)

(assert (=> b!1107897 (= lt!495699 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!256 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!739465 () Bool)

(assert (=> start!97328 (=> (not res!739465) (not e!632109))))

(assert (=> start!97328 (= res!739465 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35143 _keys!1208))))))

(assert (=> start!97328 e!632109))

(declare-fun tp_is_empty!27523 () Bool)

(assert (=> start!97328 tp_is_empty!27523))

(declare-fun array_inv!26498 (array!71914) Bool)

(assert (=> start!97328 (array_inv!26498 _keys!1208)))

(assert (=> start!97328 true))

(assert (=> start!97328 tp!82089))

(declare-fun e!632104 () Bool)

(declare-fun array_inv!26499 (array!71916) Bool)

(assert (=> start!97328 (and (array_inv!26499 _values!996) e!632104)))

(declare-fun b!1107898 () Bool)

(declare-fun res!739468 () Bool)

(assert (=> b!1107898 (=> (not res!739468) (not e!632109))))

(assert (=> b!1107898 (= res!739468 (and (= (size!35144 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35143 _keys!1208) (size!35144 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43102 () Bool)

(declare-fun mapRes!43102 () Bool)

(assert (=> mapIsEmpty!43102 mapRes!43102))

(declare-fun b!1107899 () Bool)

(declare-fun e!632106 () Bool)

(assert (=> b!1107899 (= e!632104 (and e!632106 mapRes!43102))))

(declare-fun condMapEmpty!43102 () Bool)

(declare-fun mapDefault!43102 () ValueCell!13052)

