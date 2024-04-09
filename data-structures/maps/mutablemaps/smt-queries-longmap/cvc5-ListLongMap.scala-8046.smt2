; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99152 () Bool)

(assert start!99152)

(declare-fun b_free!24721 () Bool)

(declare-fun b_next!24721 () Bool)

(assert (=> start!99152 (= b_free!24721 (not b_next!24721))))

(declare-fun tp!86875 () Bool)

(declare-fun b_and!40305 () Bool)

(assert (=> start!99152 (= tp!86875 b_and!40305)))

(declare-fun b!1165933 () Bool)

(declare-fun res!773407 () Bool)

(declare-fun e!662814 () Bool)

(assert (=> b!1165933 (=> (not res!773407) (not e!662814))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165933 (= res!773407 (validMask!0 mask!1564))))

(declare-fun b!1165934 () Bool)

(declare-fun res!773406 () Bool)

(assert (=> b!1165934 (=> (not res!773406) (not e!662814))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75284 0))(
  ( (array!75285 (arr!36289 (Array (_ BitVec 32) (_ BitVec 64))) (size!36826 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75284)

(assert (=> b!1165934 (= res!773406 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36826 _keys!1208))))))

(declare-fun b!1165935 () Bool)

(declare-fun res!773408 () Bool)

(assert (=> b!1165935 (=> (not res!773408) (not e!662814))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165935 (= res!773408 (validKeyInArray!0 k!934))))

(declare-fun b!1165936 () Bool)

(declare-fun res!773402 () Bool)

(assert (=> b!1165936 (=> (not res!773402) (not e!662814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75284 (_ BitVec 32)) Bool)

(assert (=> b!1165936 (= res!773402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45701 () Bool)

(declare-fun mapRes!45701 () Bool)

(assert (=> mapIsEmpty!45701 mapRes!45701))

(declare-fun b!1165937 () Bool)

(declare-fun res!773399 () Bool)

(assert (=> b!1165937 (=> (not res!773399) (not e!662814))))

(assert (=> b!1165937 (= res!773399 (= (select (arr!36289 _keys!1208) i!673) k!934))))

(declare-fun res!773405 () Bool)

(assert (=> start!99152 (=> (not res!773405) (not e!662814))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99152 (= res!773405 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36826 _keys!1208))))))

(assert (=> start!99152 e!662814))

(declare-fun tp_is_empty!29251 () Bool)

(assert (=> start!99152 tp_is_empty!29251))

(declare-fun array_inv!27626 (array!75284) Bool)

(assert (=> start!99152 (array_inv!27626 _keys!1208)))

(assert (=> start!99152 true))

(assert (=> start!99152 tp!86875))

(declare-datatypes ((V!44129 0))(
  ( (V!44130 (val!14682 Int)) )
))
(declare-datatypes ((ValueCell!13916 0))(
  ( (ValueCellFull!13916 (v!17320 V!44129)) (EmptyCell!13916) )
))
(declare-datatypes ((array!75286 0))(
  ( (array!75287 (arr!36290 (Array (_ BitVec 32) ValueCell!13916)) (size!36827 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75286)

(declare-fun e!662818 () Bool)

(declare-fun array_inv!27627 (array!75286) Bool)

(assert (=> start!99152 (and (array_inv!27627 _values!996) e!662818)))

(declare-fun b!1165938 () Bool)

(declare-fun e!662816 () Bool)

(assert (=> b!1165938 (= e!662816 tp_is_empty!29251)))

(declare-fun b!1165939 () Bool)

(declare-fun e!662820 () Bool)

(assert (=> b!1165939 (= e!662820 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525029 () array!75286)

(declare-fun minValue!944 () V!44129)

(declare-fun lt!525033 () array!75284)

(declare-fun zeroValue!944 () V!44129)

(declare-datatypes ((tuple2!18804 0))(
  ( (tuple2!18805 (_1!9412 (_ BitVec 64)) (_2!9412 V!44129)) )
))
(declare-datatypes ((List!25580 0))(
  ( (Nil!25577) (Cons!25576 (h!26785 tuple2!18804) (t!37300 List!25580)) )
))
(declare-datatypes ((ListLongMap!16785 0))(
  ( (ListLongMap!16786 (toList!8408 List!25580)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4841 (array!75284 array!75286 (_ BitVec 32) (_ BitVec 32) V!44129 V!44129 (_ BitVec 32) Int) ListLongMap!16785)

(declare-fun -!1445 (ListLongMap!16785 (_ BitVec 64)) ListLongMap!16785)

(assert (=> b!1165939 (= (getCurrentListMapNoExtraKeys!4841 lt!525033 lt!525029 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1445 (getCurrentListMapNoExtraKeys!4841 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38368 0))(
  ( (Unit!38369) )
))
(declare-fun lt!525028 () Unit!38368)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!669 (array!75284 array!75286 (_ BitVec 32) (_ BitVec 32) V!44129 V!44129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38368)

(assert (=> b!1165939 (= lt!525028 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!669 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1165940 () Bool)

(declare-fun e!662819 () Bool)

(assert (=> b!1165940 (= e!662818 (and e!662819 mapRes!45701))))

(declare-fun condMapEmpty!45701 () Bool)

(declare-fun mapDefault!45701 () ValueCell!13916)

