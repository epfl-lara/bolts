; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99182 () Bool)

(assert start!99182)

(declare-fun b_free!24751 () Bool)

(declare-fun b_next!24751 () Bool)

(assert (=> start!99182 (= b_free!24751 (not b_next!24751))))

(declare-fun tp!86965 () Bool)

(declare-fun b_and!40365 () Bool)

(assert (=> start!99182 (= tp!86965 b_and!40365)))

(declare-fun b!1166638 () Bool)

(declare-fun res!773944 () Bool)

(declare-fun e!663175 () Bool)

(assert (=> b!1166638 (=> (not res!773944) (not e!663175))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166638 (= res!773944 (validKeyInArray!0 k!934))))

(declare-fun b!1166639 () Bool)

(declare-fun res!773945 () Bool)

(assert (=> b!1166639 (=> (not res!773945) (not e!663175))))

(declare-datatypes ((array!75340 0))(
  ( (array!75341 (arr!36317 (Array (_ BitVec 32) (_ BitVec 64))) (size!36854 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75340)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166639 (= res!773945 (= (select (arr!36317 _keys!1208) i!673) k!934))))

(declare-fun b!1166640 () Bool)

(declare-fun e!663178 () Bool)

(declare-fun e!663174 () Bool)

(assert (=> b!1166640 (= e!663178 e!663174)))

(declare-fun res!773947 () Bool)

(assert (=> b!1166640 (=> res!773947 e!663174)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1166640 (= res!773947 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44169 0))(
  ( (V!44170 (val!14697 Int)) )
))
(declare-fun zeroValue!944 () V!44169)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13931 0))(
  ( (ValueCellFull!13931 (v!17335 V!44169)) (EmptyCell!13931) )
))
(declare-datatypes ((array!75342 0))(
  ( (array!75343 (arr!36318 (Array (_ BitVec 32) ValueCell!13931)) (size!36855 (_ BitVec 32))) )
))
(declare-fun lt!525303 () array!75342)

(declare-fun minValue!944 () V!44169)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18824 0))(
  ( (tuple2!18825 (_1!9422 (_ BitVec 64)) (_2!9422 V!44169)) )
))
(declare-datatypes ((List!25600 0))(
  ( (Nil!25597) (Cons!25596 (h!26805 tuple2!18824) (t!37350 List!25600)) )
))
(declare-datatypes ((ListLongMap!16805 0))(
  ( (ListLongMap!16806 (toList!8418 List!25600)) )
))
(declare-fun lt!525302 () ListLongMap!16805)

(declare-fun lt!525298 () array!75340)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4851 (array!75340 array!75342 (_ BitVec 32) (_ BitVec 32) V!44169 V!44169 (_ BitVec 32) Int) ListLongMap!16805)

(assert (=> b!1166640 (= lt!525302 (getCurrentListMapNoExtraKeys!4851 lt!525298 lt!525303 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75342)

(declare-fun dynLambda!2846 (Int (_ BitVec 64)) V!44169)

(assert (=> b!1166640 (= lt!525303 (array!75343 (store (arr!36318 _values!996) i!673 (ValueCellFull!13931 (dynLambda!2846 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36855 _values!996)))))

(declare-fun lt!525301 () ListLongMap!16805)

(assert (=> b!1166640 (= lt!525301 (getCurrentListMapNoExtraKeys!4851 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166641 () Bool)

(assert (=> b!1166641 (= e!663174 true)))

(declare-fun -!1454 (ListLongMap!16805 (_ BitVec 64)) ListLongMap!16805)

(assert (=> b!1166641 (= (getCurrentListMapNoExtraKeys!4851 lt!525298 lt!525303 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1454 (getCurrentListMapNoExtraKeys!4851 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38390 0))(
  ( (Unit!38391) )
))
(declare-fun lt!525300 () Unit!38390)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!678 (array!75340 array!75342 (_ BitVec 32) (_ BitVec 32) V!44169 V!44169 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38390)

(assert (=> b!1166641 (= lt!525300 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!678 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166642 () Bool)

(declare-fun res!773939 () Bool)

(assert (=> b!1166642 (=> (not res!773939) (not e!663175))))

(assert (=> b!1166642 (= res!773939 (and (= (size!36855 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36854 _keys!1208) (size!36855 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166643 () Bool)

(declare-fun res!773937 () Bool)

(assert (=> b!1166643 (=> (not res!773937) (not e!663175))))

(assert (=> b!1166643 (= res!773937 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36854 _keys!1208))))))

(declare-fun b!1166644 () Bool)

(declare-fun res!773942 () Bool)

(declare-fun e!663180 () Bool)

(assert (=> b!1166644 (=> (not res!773942) (not e!663180))))

(declare-datatypes ((List!25601 0))(
  ( (Nil!25598) (Cons!25597 (h!26806 (_ BitVec 64)) (t!37351 List!25601)) )
))
(declare-fun arrayNoDuplicates!0 (array!75340 (_ BitVec 32) List!25601) Bool)

(assert (=> b!1166644 (= res!773942 (arrayNoDuplicates!0 lt!525298 #b00000000000000000000000000000000 Nil!25598))))

(declare-fun b!1166645 () Bool)

(declare-fun e!663177 () Bool)

(declare-fun tp_is_empty!29281 () Bool)

(assert (=> b!1166645 (= e!663177 tp_is_empty!29281)))

(declare-fun b!1166647 () Bool)

(assert (=> b!1166647 (= e!663175 e!663180)))

(declare-fun res!773938 () Bool)

(assert (=> b!1166647 (=> (not res!773938) (not e!663180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75340 (_ BitVec 32)) Bool)

(assert (=> b!1166647 (= res!773938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525298 mask!1564))))

(assert (=> b!1166647 (= lt!525298 (array!75341 (store (arr!36317 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36854 _keys!1208)))))

(declare-fun b!1166648 () Bool)

(declare-fun e!663173 () Bool)

(assert (=> b!1166648 (= e!663173 tp_is_empty!29281)))

(declare-fun b!1166649 () Bool)

(assert (=> b!1166649 (= e!663180 (not e!663178))))

(declare-fun res!773940 () Bool)

(assert (=> b!1166649 (=> res!773940 e!663178)))

(assert (=> b!1166649 (= res!773940 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166649 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525299 () Unit!38390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75340 (_ BitVec 64) (_ BitVec 32)) Unit!38390)

(assert (=> b!1166649 (= lt!525299 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45746 () Bool)

(declare-fun mapRes!45746 () Bool)

(assert (=> mapIsEmpty!45746 mapRes!45746))

(declare-fun b!1166650 () Bool)

(declare-fun res!773941 () Bool)

(assert (=> b!1166650 (=> (not res!773941) (not e!663175))))

(assert (=> b!1166650 (= res!773941 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25598))))

(declare-fun b!1166651 () Bool)

(declare-fun res!773946 () Bool)

(assert (=> b!1166651 (=> (not res!773946) (not e!663175))))

(assert (=> b!1166651 (= res!773946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!773943 () Bool)

(assert (=> start!99182 (=> (not res!773943) (not e!663175))))

(assert (=> start!99182 (= res!773943 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36854 _keys!1208))))))

(assert (=> start!99182 e!663175))

(assert (=> start!99182 tp_is_empty!29281))

(declare-fun array_inv!27648 (array!75340) Bool)

(assert (=> start!99182 (array_inv!27648 _keys!1208)))

(assert (=> start!99182 true))

(assert (=> start!99182 tp!86965))

(declare-fun e!663179 () Bool)

(declare-fun array_inv!27649 (array!75342) Bool)

(assert (=> start!99182 (and (array_inv!27649 _values!996) e!663179)))

(declare-fun b!1166646 () Bool)

(assert (=> b!1166646 (= e!663179 (and e!663177 mapRes!45746))))

(declare-fun condMapEmpty!45746 () Bool)

(declare-fun mapDefault!45746 () ValueCell!13931)

