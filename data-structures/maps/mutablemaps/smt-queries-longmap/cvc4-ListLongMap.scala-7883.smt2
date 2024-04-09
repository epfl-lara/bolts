; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98082 () Bool)

(assert start!98082)

(declare-fun b_free!23747 () Bool)

(declare-fun b_next!23747 () Bool)

(assert (=> start!98082 (= b_free!23747 (not b_next!23747))))

(declare-fun tp!83946 () Bool)

(declare-fun b_and!38299 () Bool)

(assert (=> start!98082 (= tp!83946 b_and!38299)))

(declare-fun b!1125478 () Bool)

(declare-fun e!640703 () Bool)

(declare-fun e!640699 () Bool)

(assert (=> b!1125478 (= e!640703 (not e!640699))))

(declare-fun res!752131 () Bool)

(assert (=> b!1125478 (=> res!752131 e!640699)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125478 (= res!752131 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73376 0))(
  ( (array!73377 (arr!35337 (Array (_ BitVec 32) (_ BitVec 64))) (size!35874 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73376)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125478 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36831 0))(
  ( (Unit!36832) )
))
(declare-fun lt!499857 () Unit!36831)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73376 (_ BitVec 64) (_ BitVec 32)) Unit!36831)

(assert (=> b!1125478 (= lt!499857 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125479 () Bool)

(declare-fun e!640695 () Bool)

(assert (=> b!1125479 (= e!640695 true)))

(declare-datatypes ((V!42829 0))(
  ( (V!42830 (val!14195 Int)) )
))
(declare-datatypes ((tuple2!17922 0))(
  ( (tuple2!17923 (_1!8971 (_ BitVec 64)) (_2!8971 V!42829)) )
))
(declare-datatypes ((List!24752 0))(
  ( (Nil!24749) (Cons!24748 (h!25957 tuple2!17922) (t!35498 List!24752)) )
))
(declare-datatypes ((ListLongMap!15903 0))(
  ( (ListLongMap!15904 (toList!7967 List!24752)) )
))
(declare-fun lt!499852 () ListLongMap!15903)

(declare-fun zeroValue!944 () V!42829)

(declare-fun contains!6478 (ListLongMap!15903 (_ BitVec 64)) Bool)

(declare-fun +!3391 (ListLongMap!15903 tuple2!17922) ListLongMap!15903)

(assert (=> b!1125479 (contains!6478 (+!3391 lt!499852 (tuple2!17923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-fun lt!499850 () Unit!36831)

(declare-fun addStillContains!690 (ListLongMap!15903 (_ BitVec 64) V!42829 (_ BitVec 64)) Unit!36831)

(assert (=> b!1125479 (= lt!499850 (addStillContains!690 lt!499852 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun res!752137 () Bool)

(declare-fun e!640700 () Bool)

(assert (=> start!98082 (=> (not res!752137) (not e!640700))))

(assert (=> start!98082 (= res!752137 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35874 _keys!1208))))))

(assert (=> start!98082 e!640700))

(declare-fun tp_is_empty!28277 () Bool)

(assert (=> start!98082 tp_is_empty!28277))

(declare-fun array_inv!26998 (array!73376) Bool)

(assert (=> start!98082 (array_inv!26998 _keys!1208)))

(assert (=> start!98082 true))

(assert (=> start!98082 tp!83946))

(declare-datatypes ((ValueCell!13429 0))(
  ( (ValueCellFull!13429 (v!16829 V!42829)) (EmptyCell!13429) )
))
(declare-datatypes ((array!73378 0))(
  ( (array!73379 (arr!35338 (Array (_ BitVec 32) ValueCell!13429)) (size!35875 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73378)

(declare-fun e!640702 () Bool)

(declare-fun array_inv!26999 (array!73378) Bool)

(assert (=> start!98082 (and (array_inv!26999 _values!996) e!640702)))

(declare-fun b!1125480 () Bool)

(declare-fun res!752136 () Bool)

(assert (=> b!1125480 (=> res!752136 e!640695)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1125480 (= res!752136 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!47525 () ListLongMap!15903)

(declare-fun lt!499853 () array!73376)

(declare-fun minValue!944 () V!42829)

(declare-fun bm!47521 () Bool)

(declare-fun lt!499855 () array!73378)

(declare-fun getCurrentListMapNoExtraKeys!4426 (array!73376 array!73378 (_ BitVec 32) (_ BitVec 32) V!42829 V!42829 (_ BitVec 32) Int) ListLongMap!15903)

(assert (=> bm!47521 (= call!47525 (getCurrentListMapNoExtraKeys!4426 lt!499853 lt!499855 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125481 () Bool)

(declare-fun res!752127 () Bool)

(assert (=> b!1125481 (=> (not res!752127) (not e!640700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125481 (= res!752127 (validMask!0 mask!1564))))

(declare-fun b!1125482 () Bool)

(declare-fun e!640694 () Bool)

(declare-fun e!640698 () Bool)

(assert (=> b!1125482 (= e!640694 e!640698)))

(declare-fun res!752135 () Bool)

(assert (=> b!1125482 (=> res!752135 e!640698)))

(assert (=> b!1125482 (= res!752135 (not (= (select (arr!35337 _keys!1208) from!1455) k!934)))))

(declare-fun e!640697 () Bool)

(assert (=> b!1125482 e!640697))

(declare-fun c!109571 () Bool)

(assert (=> b!1125482 (= c!109571 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499856 () Unit!36831)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!368 (array!73376 array!73378 (_ BitVec 32) (_ BitVec 32) V!42829 V!42829 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36831)

(assert (=> b!1125482 (= lt!499856 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125483 () Bool)

(declare-fun res!752125 () Bool)

(assert (=> b!1125483 (=> (not res!752125) (not e!640700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125483 (= res!752125 (validKeyInArray!0 k!934))))

(declare-fun b!1125484 () Bool)

(declare-fun res!752126 () Bool)

(assert (=> b!1125484 (=> (not res!752126) (not e!640700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73376 (_ BitVec 32)) Bool)

(assert (=> b!1125484 (= res!752126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125485 () Bool)

(declare-fun e!640696 () Bool)

(declare-fun mapRes!44233 () Bool)

(assert (=> b!1125485 (= e!640702 (and e!640696 mapRes!44233))))

(declare-fun condMapEmpty!44233 () Bool)

(declare-fun mapDefault!44233 () ValueCell!13429)

