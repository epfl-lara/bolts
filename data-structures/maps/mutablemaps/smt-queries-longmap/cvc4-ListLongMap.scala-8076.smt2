; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99362 () Bool)

(assert start!99362)

(declare-fun b_free!24905 () Bool)

(declare-fun b_next!24905 () Bool)

(assert (=> start!99362 (= b_free!24905 (not b_next!24905))))

(declare-fun tp!87429 () Bool)

(declare-fun b_and!40691 () Bool)

(assert (=> start!99362 (= tp!87429 b_and!40691)))

(declare-fun mapIsEmpty!45980 () Bool)

(declare-fun mapRes!45980 () Bool)

(assert (=> mapIsEmpty!45980 mapRes!45980))

(declare-fun b!1170774 () Bool)

(declare-fun res!777155 () Bool)

(declare-fun e!665499 () Bool)

(assert (=> b!1170774 (=> (not res!777155) (not e!665499))))

(declare-datatypes ((array!75646 0))(
  ( (array!75647 (arr!36469 (Array (_ BitVec 32) (_ BitVec 64))) (size!37006 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75646)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75646 (_ BitVec 32)) Bool)

(assert (=> b!1170774 (= res!777155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170775 () Bool)

(declare-fun res!777153 () Bool)

(assert (=> b!1170775 (=> (not res!777153) (not e!665499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170775 (= res!777153 (validMask!0 mask!1564))))

(declare-fun b!1170776 () Bool)

(declare-fun e!665494 () Bool)

(declare-fun e!665495 () Bool)

(assert (=> b!1170776 (= e!665494 e!665495)))

(declare-fun res!777156 () Bool)

(assert (=> b!1170776 (=> res!777156 e!665495)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170776 (= res!777156 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44373 0))(
  ( (V!44374 (val!14774 Int)) )
))
(declare-fun zeroValue!944 () V!44373)

(declare-datatypes ((tuple2!18962 0))(
  ( (tuple2!18963 (_1!9491 (_ BitVec 64)) (_2!9491 V!44373)) )
))
(declare-datatypes ((List!25732 0))(
  ( (Nil!25729) (Cons!25728 (h!26937 tuple2!18962) (t!37636 List!25732)) )
))
(declare-datatypes ((ListLongMap!16943 0))(
  ( (ListLongMap!16944 (toList!8487 List!25732)) )
))
(declare-fun lt!527311 () ListLongMap!16943)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527307 () array!75646)

(declare-datatypes ((ValueCell!14008 0))(
  ( (ValueCellFull!14008 (v!17413 V!44373)) (EmptyCell!14008) )
))
(declare-datatypes ((array!75648 0))(
  ( (array!75649 (arr!36470 (Array (_ BitVec 32) ValueCell!14008)) (size!37007 (_ BitVec 32))) )
))
(declare-fun lt!527313 () array!75648)

(declare-fun minValue!944 () V!44373)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4919 (array!75646 array!75648 (_ BitVec 32) (_ BitVec 32) V!44373 V!44373 (_ BitVec 32) Int) ListLongMap!16943)

(assert (=> b!1170776 (= lt!527311 (getCurrentListMapNoExtraKeys!4919 lt!527307 lt!527313 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527306 () V!44373)

(declare-fun _values!996 () array!75648)

(assert (=> b!1170776 (= lt!527313 (array!75649 (store (arr!36470 _values!996) i!673 (ValueCellFull!14008 lt!527306)) (size!37007 _values!996)))))

(declare-fun dynLambda!2908 (Int (_ BitVec 64)) V!44373)

(assert (=> b!1170776 (= lt!527306 (dynLambda!2908 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527303 () ListLongMap!16943)

(assert (=> b!1170776 (= lt!527303 (getCurrentListMapNoExtraKeys!4919 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170777 () Bool)

(declare-fun res!777147 () Bool)

(assert (=> b!1170777 (=> (not res!777147) (not e!665499))))

(declare-datatypes ((List!25733 0))(
  ( (Nil!25730) (Cons!25729 (h!26938 (_ BitVec 64)) (t!37637 List!25733)) )
))
(declare-fun arrayNoDuplicates!0 (array!75646 (_ BitVec 32) List!25733) Bool)

(assert (=> b!1170777 (= res!777147 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25730))))

(declare-fun b!1170778 () Bool)

(declare-fun res!777150 () Bool)

(assert (=> b!1170778 (=> (not res!777150) (not e!665499))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1170778 (= res!777150 (= (select (arr!36469 _keys!1208) i!673) k!934))))

(declare-fun b!1170779 () Bool)

(declare-fun e!665500 () Bool)

(assert (=> b!1170779 (= e!665500 true)))

(declare-fun arrayContainsKey!0 (array!75646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170779 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!38516 0))(
  ( (Unit!38517) )
))
(declare-fun lt!527312 () Unit!38516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75646 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38516)

(assert (=> b!1170779 (= lt!527312 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170780 () Bool)

(declare-fun res!777149 () Bool)

(assert (=> b!1170780 (=> (not res!777149) (not e!665499))))

(assert (=> b!1170780 (= res!777149 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37006 _keys!1208))))))

(declare-fun b!1170781 () Bool)

(declare-fun res!777145 () Bool)

(assert (=> b!1170781 (=> (not res!777145) (not e!665499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170781 (= res!777145 (validKeyInArray!0 k!934))))

(declare-fun b!1170782 () Bool)

(declare-fun e!665491 () Bool)

(assert (=> b!1170782 (= e!665491 (not e!665494))))

(declare-fun res!777154 () Bool)

(assert (=> b!1170782 (=> res!777154 e!665494)))

(assert (=> b!1170782 (= res!777154 (bvsgt from!1455 i!673))))

(assert (=> b!1170782 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527309 () Unit!38516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75646 (_ BitVec 64) (_ BitVec 32)) Unit!38516)

(assert (=> b!1170782 (= lt!527309 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170783 () Bool)

(declare-fun e!665489 () Bool)

(declare-fun e!665492 () Bool)

(assert (=> b!1170783 (= e!665489 (and e!665492 mapRes!45980))))

(declare-fun condMapEmpty!45980 () Bool)

(declare-fun mapDefault!45980 () ValueCell!14008)

