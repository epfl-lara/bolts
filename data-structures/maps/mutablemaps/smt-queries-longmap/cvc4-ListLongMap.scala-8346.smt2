; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101666 () Bool)

(assert start!101666)

(declare-fun b_free!26351 () Bool)

(declare-fun b_next!26351 () Bool)

(assert (=> start!101666 (= b_free!26351 (not b_next!26351))))

(declare-fun tp!92096 () Bool)

(declare-fun b_and!43955 () Bool)

(assert (=> start!101666 (= tp!92096 b_and!43955)))

(declare-datatypes ((array!78868 0))(
  ( (array!78869 (arr!38058 (Array (_ BitVec 32) (_ BitVec 64))) (size!38595 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78868)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!694043 () Bool)

(declare-fun b!1222039 () Bool)

(declare-fun arrayContainsKey!0 (array!78868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222039 (= e!694043 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222040 () Bool)

(declare-fun e!694047 () Bool)

(assert (=> b!1222040 (= e!694047 e!694043)))

(declare-fun res!811999 () Bool)

(assert (=> b!1222040 (=> res!811999 e!694043)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222040 (= res!811999 (not (= (select (arr!38058 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222041 () Bool)

(declare-fun res!811990 () Bool)

(declare-fun e!694055 () Bool)

(assert (=> b!1222041 (=> res!811990 e!694055)))

(declare-datatypes ((List!27023 0))(
  ( (Nil!27020) (Cons!27019 (h!28228 (_ BitVec 64)) (t!40361 List!27023)) )
))
(declare-fun contains!7050 (List!27023 (_ BitVec 64)) Bool)

(assert (=> b!1222041 (= res!811990 (contains!7050 Nil!27020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1222042 () Bool)

(declare-fun res!812000 () Bool)

(declare-fun e!694050 () Bool)

(assert (=> b!1222042 (=> (not res!812000) (not e!694050))))

(declare-fun lt!555906 () array!78868)

(declare-fun arrayNoDuplicates!0 (array!78868 (_ BitVec 32) List!27023) Bool)

(assert (=> b!1222042 (= res!812000 (arrayNoDuplicates!0 lt!555906 #b00000000000000000000000000000000 Nil!27020))))

(declare-fun b!1222043 () Bool)

(declare-fun e!694053 () Bool)

(assert (=> b!1222043 (= e!694053 e!694050)))

(declare-fun res!811994 () Bool)

(assert (=> b!1222043 (=> (not res!811994) (not e!694050))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78868 (_ BitVec 32)) Bool)

(assert (=> b!1222043 (= res!811994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555906 mask!1564))))

(assert (=> b!1222043 (= lt!555906 (array!78869 (store (arr!38058 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38595 _keys!1208)))))

(declare-fun b!1222044 () Bool)

(declare-fun res!811992 () Bool)

(assert (=> b!1222044 (=> (not res!811992) (not e!694053))))

(assert (=> b!1222044 (= res!811992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222045 () Bool)

(declare-fun e!694048 () Bool)

(declare-fun tp_is_empty!31055 () Bool)

(assert (=> b!1222045 (= e!694048 tp_is_empty!31055)))

(declare-fun b!1222046 () Bool)

(declare-fun e!694045 () Bool)

(assert (=> b!1222046 (= e!694045 tp_is_empty!31055)))

(declare-fun b!1222047 () Bool)

(declare-fun e!694049 () Bool)

(declare-fun e!694052 () Bool)

(assert (=> b!1222047 (= e!694049 e!694052)))

(declare-fun res!811987 () Bool)

(assert (=> b!1222047 (=> res!811987 e!694052)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222047 (= res!811987 (not (validKeyInArray!0 (select (arr!38058 _keys!1208) from!1455))))))

(declare-datatypes ((V!46533 0))(
  ( (V!46534 (val!15584 Int)) )
))
(declare-datatypes ((tuple2!20208 0))(
  ( (tuple2!20209 (_1!10114 (_ BitVec 64)) (_2!10114 V!46533)) )
))
(declare-datatypes ((List!27024 0))(
  ( (Nil!27021) (Cons!27020 (h!28229 tuple2!20208) (t!40362 List!27024)) )
))
(declare-datatypes ((ListLongMap!18189 0))(
  ( (ListLongMap!18190 (toList!9110 List!27024)) )
))
(declare-fun lt!555904 () ListLongMap!18189)

(declare-fun lt!555903 () ListLongMap!18189)

(assert (=> b!1222047 (= lt!555904 lt!555903)))

(declare-fun lt!555896 () ListLongMap!18189)

(declare-fun -!1954 (ListLongMap!18189 (_ BitVec 64)) ListLongMap!18189)

(assert (=> b!1222047 (= lt!555903 (-!1954 lt!555896 k!934))))

(declare-fun zeroValue!944 () V!46533)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46533)

(declare-datatypes ((ValueCell!14818 0))(
  ( (ValueCellFull!14818 (v!18246 V!46533)) (EmptyCell!14818) )
))
(declare-datatypes ((array!78870 0))(
  ( (array!78871 (arr!38059 (Array (_ BitVec 32) ValueCell!14818)) (size!38596 (_ BitVec 32))) )
))
(declare-fun lt!555895 () array!78870)

(declare-fun getCurrentListMapNoExtraKeys!5508 (array!78868 array!78870 (_ BitVec 32) (_ BitVec 32) V!46533 V!46533 (_ BitVec 32) Int) ListLongMap!18189)

(assert (=> b!1222047 (= lt!555904 (getCurrentListMapNoExtraKeys!5508 lt!555906 lt!555895 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78870)

(assert (=> b!1222047 (= lt!555896 (getCurrentListMapNoExtraKeys!5508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40390 0))(
  ( (Unit!40391) )
))
(declare-fun lt!555901 () Unit!40390)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1156 (array!78868 array!78870 (_ BitVec 32) (_ BitVec 32) V!46533 V!46533 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40390)

(assert (=> b!1222047 (= lt!555901 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1156 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48478 () Bool)

(declare-fun mapRes!48478 () Bool)

(assert (=> mapIsEmpty!48478 mapRes!48478))

(declare-fun b!1222048 () Bool)

(declare-fun res!811997 () Bool)

(assert (=> b!1222048 (=> (not res!811997) (not e!694053))))

(assert (=> b!1222048 (= res!811997 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38595 _keys!1208))))))

(declare-fun b!1222049 () Bool)

(declare-fun res!811988 () Bool)

(assert (=> b!1222049 (=> res!811988 e!694055)))

(declare-fun noDuplicate!1662 (List!27023) Bool)

(assert (=> b!1222049 (= res!811988 (not (noDuplicate!1662 Nil!27020)))))

(declare-fun b!1222050 () Bool)

(declare-fun e!694054 () Bool)

(assert (=> b!1222050 (= e!694054 (and e!694045 mapRes!48478))))

(declare-fun condMapEmpty!48478 () Bool)

(declare-fun mapDefault!48478 () ValueCell!14818)

