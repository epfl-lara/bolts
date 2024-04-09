; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101672 () Bool)

(assert start!101672)

(declare-fun b_free!26357 () Bool)

(declare-fun b_next!26357 () Bool)

(assert (=> start!101672 (= b_free!26357 (not b_next!26357))))

(declare-fun tp!92114 () Bool)

(declare-fun b_and!43967 () Bool)

(assert (=> start!101672 (= tp!92114 b_and!43967)))

(declare-fun b!1222219 () Bool)

(declare-fun res!812146 () Bool)

(declare-fun e!694162 () Bool)

(assert (=> b!1222219 (=> (not res!812146) (not e!694162))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222219 (= res!812146 (validMask!0 mask!1564))))

(declare-fun b!1222220 () Bool)

(declare-fun e!694158 () Bool)

(declare-fun tp_is_empty!31061 () Bool)

(assert (=> b!1222220 (= e!694158 tp_is_empty!31061)))

(declare-fun b!1222221 () Bool)

(declare-fun e!694161 () Bool)

(declare-fun e!694155 () Bool)

(assert (=> b!1222221 (= e!694161 e!694155)))

(declare-fun res!812148 () Bool)

(assert (=> b!1222221 (=> res!812148 e!694155)))

(declare-datatypes ((array!78880 0))(
  ( (array!78881 (arr!38064 (Array (_ BitVec 32) (_ BitVec 64))) (size!38601 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78880)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222221 (= res!812148 (not (validKeyInArray!0 (select (arr!38064 _keys!1208) from!1455))))))

(declare-datatypes ((V!46541 0))(
  ( (V!46542 (val!15587 Int)) )
))
(declare-datatypes ((tuple2!20214 0))(
  ( (tuple2!20215 (_1!10117 (_ BitVec 64)) (_2!10117 V!46541)) )
))
(declare-datatypes ((List!27028 0))(
  ( (Nil!27025) (Cons!27024 (h!28233 tuple2!20214) (t!40372 List!27028)) )
))
(declare-datatypes ((ListLongMap!18195 0))(
  ( (ListLongMap!18196 (toList!9113 List!27028)) )
))
(declare-fun lt!556019 () ListLongMap!18195)

(declare-fun lt!556015 () ListLongMap!18195)

(assert (=> b!1222221 (= lt!556019 lt!556015)))

(declare-fun lt!556013 () ListLongMap!18195)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1956 (ListLongMap!18195 (_ BitVec 64)) ListLongMap!18195)

(assert (=> b!1222221 (= lt!556015 (-!1956 lt!556013 k!934))))

(declare-fun zeroValue!944 () V!46541)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!556020 () array!78880)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14821 0))(
  ( (ValueCellFull!14821 (v!18249 V!46541)) (EmptyCell!14821) )
))
(declare-datatypes ((array!78882 0))(
  ( (array!78883 (arr!38065 (Array (_ BitVec 32) ValueCell!14821)) (size!38602 (_ BitVec 32))) )
))
(declare-fun lt!556011 () array!78882)

(declare-fun minValue!944 () V!46541)

(declare-fun getCurrentListMapNoExtraKeys!5511 (array!78880 array!78882 (_ BitVec 32) (_ BitVec 32) V!46541 V!46541 (_ BitVec 32) Int) ListLongMap!18195)

(assert (=> b!1222221 (= lt!556019 (getCurrentListMapNoExtraKeys!5511 lt!556020 lt!556011 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78882)

(assert (=> b!1222221 (= lt!556013 (getCurrentListMapNoExtraKeys!5511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40396 0))(
  ( (Unit!40397) )
))
(declare-fun lt!556016 () Unit!40396)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1158 (array!78880 array!78882 (_ BitVec 32) (_ BitVec 32) V!46541 V!46541 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40396)

(assert (=> b!1222221 (= lt!556016 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1158 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222222 () Bool)

(declare-fun e!694160 () Bool)

(assert (=> b!1222222 (= e!694160 tp_is_empty!31061)))

(declare-fun b!1222223 () Bool)

(declare-fun e!694153 () Bool)

(declare-fun arrayContainsKey!0 (array!78880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222223 (= e!694153 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48487 () Bool)

(declare-fun mapRes!48487 () Bool)

(declare-fun tp!92115 () Bool)

(assert (=> mapNonEmpty!48487 (= mapRes!48487 (and tp!92115 e!694158))))

(declare-fun mapRest!48487 () (Array (_ BitVec 32) ValueCell!14821))

(declare-fun mapKey!48487 () (_ BitVec 32))

(declare-fun mapValue!48487 () ValueCell!14821)

(assert (=> mapNonEmpty!48487 (= (arr!38065 _values!996) (store mapRest!48487 mapKey!48487 mapValue!48487))))

(declare-fun b!1222224 () Bool)

(declare-fun res!812149 () Bool)

(assert (=> b!1222224 (=> (not res!812149) (not e!694162))))

(assert (=> b!1222224 (= res!812149 (validKeyInArray!0 k!934))))

(declare-fun b!1222225 () Bool)

(declare-fun e!694157 () Bool)

(assert (=> b!1222225 (= e!694157 e!694161)))

(declare-fun res!812143 () Bool)

(assert (=> b!1222225 (=> res!812143 e!694161)))

(assert (=> b!1222225 (= res!812143 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!556012 () ListLongMap!18195)

(assert (=> b!1222225 (= lt!556012 (getCurrentListMapNoExtraKeys!5511 lt!556020 lt!556011 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556021 () V!46541)

(assert (=> b!1222225 (= lt!556011 (array!78883 (store (arr!38065 _values!996) i!673 (ValueCellFull!14821 lt!556021)) (size!38602 _values!996)))))

(declare-fun dynLambda!3409 (Int (_ BitVec 64)) V!46541)

(assert (=> b!1222225 (= lt!556021 (dynLambda!3409 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556018 () ListLongMap!18195)

(assert (=> b!1222225 (= lt!556018 (getCurrentListMapNoExtraKeys!5511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!812145 () Bool)

(assert (=> start!101672 (=> (not res!812145) (not e!694162))))

(assert (=> start!101672 (= res!812145 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38601 _keys!1208))))))

(assert (=> start!101672 e!694162))

(assert (=> start!101672 tp_is_empty!31061))

(declare-fun array_inv!28876 (array!78880) Bool)

(assert (=> start!101672 (array_inv!28876 _keys!1208)))

(assert (=> start!101672 true))

(assert (=> start!101672 tp!92114))

(declare-fun e!694156 () Bool)

(declare-fun array_inv!28877 (array!78882) Bool)

(assert (=> start!101672 (and (array_inv!28877 _values!996) e!694156)))

(declare-fun b!1222226 () Bool)

(assert (=> b!1222226 (= e!694156 (and e!694160 mapRes!48487))))

(declare-fun condMapEmpty!48487 () Bool)

(declare-fun mapDefault!48487 () ValueCell!14821)

