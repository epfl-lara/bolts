; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99950 () Bool)

(assert start!99950)

(declare-fun b_free!25493 () Bool)

(declare-fun b_next!25493 () Bool)

(assert (=> start!99950 (= b_free!25493 (not b_next!25493))))

(declare-fun tp!89194 () Bool)

(declare-fun b_and!41867 () Bool)

(assert (=> start!99950 (= tp!89194 b_and!41867)))

(declare-fun b!1189195 () Bool)

(declare-fun e!676158 () Bool)

(declare-fun tp_is_empty!30023 () Bool)

(assert (=> b!1189195 (= e!676158 tp_is_empty!30023)))

(declare-fun b!1189196 () Bool)

(declare-fun res!790859 () Bool)

(declare-fun e!676162 () Bool)

(assert (=> b!1189196 (=> (not res!790859) (not e!676162))))

(declare-datatypes ((array!76812 0))(
  ( (array!76813 (arr!37052 (Array (_ BitVec 32) (_ BitVec 64))) (size!37589 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76812)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1189196 (= res!790859 (= (select (arr!37052 _keys!1208) i!673) k!934))))

(declare-fun b!1189197 () Bool)

(declare-fun e!676159 () Bool)

(declare-fun e!676160 () Bool)

(assert (=> b!1189197 (= e!676159 e!676160)))

(declare-fun res!790862 () Bool)

(assert (=> b!1189197 (=> res!790862 e!676160)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189197 (= res!790862 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45157 0))(
  ( (V!45158 (val!15068 Int)) )
))
(declare-fun zeroValue!944 () V!45157)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19480 0))(
  ( (tuple2!19481 (_1!9750 (_ BitVec 64)) (_2!9750 V!45157)) )
))
(declare-datatypes ((List!26240 0))(
  ( (Nil!26237) (Cons!26236 (h!27445 tuple2!19480) (t!38732 List!26240)) )
))
(declare-datatypes ((ListLongMap!17461 0))(
  ( (ListLongMap!17462 (toList!8746 List!26240)) )
))
(declare-fun lt!540943 () ListLongMap!17461)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45157)

(declare-datatypes ((ValueCell!14302 0))(
  ( (ValueCellFull!14302 (v!17707 V!45157)) (EmptyCell!14302) )
))
(declare-datatypes ((array!76814 0))(
  ( (array!76815 (arr!37053 (Array (_ BitVec 32) ValueCell!14302)) (size!37590 (_ BitVec 32))) )
))
(declare-fun lt!540945 () array!76814)

(declare-fun lt!540946 () array!76812)

(declare-fun getCurrentListMapNoExtraKeys!5160 (array!76812 array!76814 (_ BitVec 32) (_ BitVec 32) V!45157 V!45157 (_ BitVec 32) Int) ListLongMap!17461)

(assert (=> b!1189197 (= lt!540943 (getCurrentListMapNoExtraKeys!5160 lt!540946 lt!540945 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76814)

(declare-fun dynLambda!3113 (Int (_ BitVec 64)) V!45157)

(assert (=> b!1189197 (= lt!540945 (array!76815 (store (arr!37053 _values!996) i!673 (ValueCellFull!14302 (dynLambda!3113 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37590 _values!996)))))

(declare-fun lt!540944 () ListLongMap!17461)

(assert (=> b!1189197 (= lt!540944 (getCurrentListMapNoExtraKeys!5160 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189198 () Bool)

(declare-fun res!790856 () Bool)

(assert (=> b!1189198 (=> (not res!790856) (not e!676162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76812 (_ BitVec 32)) Bool)

(assert (=> b!1189198 (= res!790856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189199 () Bool)

(assert (=> b!1189199 (= e!676160 true)))

(declare-fun -!1730 (ListLongMap!17461 (_ BitVec 64)) ListLongMap!17461)

(assert (=> b!1189199 (= (getCurrentListMapNoExtraKeys!5160 lt!540946 lt!540945 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1730 (getCurrentListMapNoExtraKeys!5160 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39386 0))(
  ( (Unit!39387) )
))
(declare-fun lt!540947 () Unit!39386)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!936 (array!76812 array!76814 (_ BitVec 32) (_ BitVec 32) V!45157 V!45157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39386)

(assert (=> b!1189199 (= lt!540947 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!936 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189200 () Bool)

(declare-fun res!790857 () Bool)

(assert (=> b!1189200 (=> (not res!790857) (not e!676162))))

(assert (=> b!1189200 (= res!790857 (and (= (size!37590 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37589 _keys!1208) (size!37590 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46862 () Bool)

(declare-fun mapRes!46862 () Bool)

(assert (=> mapIsEmpty!46862 mapRes!46862))

(declare-fun mapNonEmpty!46862 () Bool)

(declare-fun tp!89193 () Bool)

(declare-fun e!676165 () Bool)

(assert (=> mapNonEmpty!46862 (= mapRes!46862 (and tp!89193 e!676165))))

(declare-fun mapRest!46862 () (Array (_ BitVec 32) ValueCell!14302))

(declare-fun mapValue!46862 () ValueCell!14302)

(declare-fun mapKey!46862 () (_ BitVec 32))

(assert (=> mapNonEmpty!46862 (= (arr!37053 _values!996) (store mapRest!46862 mapKey!46862 mapValue!46862))))

(declare-fun b!1189201 () Bool)

(declare-fun res!790858 () Bool)

(declare-fun e!676163 () Bool)

(assert (=> b!1189201 (=> (not res!790858) (not e!676163))))

(declare-datatypes ((List!26241 0))(
  ( (Nil!26238) (Cons!26237 (h!27446 (_ BitVec 64)) (t!38733 List!26241)) )
))
(declare-fun arrayNoDuplicates!0 (array!76812 (_ BitVec 32) List!26241) Bool)

(assert (=> b!1189201 (= res!790858 (arrayNoDuplicates!0 lt!540946 #b00000000000000000000000000000000 Nil!26238))))

(declare-fun b!1189202 () Bool)

(assert (=> b!1189202 (= e!676162 e!676163)))

(declare-fun res!790860 () Bool)

(assert (=> b!1189202 (=> (not res!790860) (not e!676163))))

(assert (=> b!1189202 (= res!790860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540946 mask!1564))))

(assert (=> b!1189202 (= lt!540946 (array!76813 (store (arr!37052 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37589 _keys!1208)))))

(declare-fun b!1189203 () Bool)

(assert (=> b!1189203 (= e!676165 tp_is_empty!30023)))

(declare-fun res!790855 () Bool)

(assert (=> start!99950 (=> (not res!790855) (not e!676162))))

(assert (=> start!99950 (= res!790855 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37589 _keys!1208))))))

(assert (=> start!99950 e!676162))

(assert (=> start!99950 tp_is_empty!30023))

(declare-fun array_inv!28154 (array!76812) Bool)

(assert (=> start!99950 (array_inv!28154 _keys!1208)))

(assert (=> start!99950 true))

(assert (=> start!99950 tp!89194))

(declare-fun e!676164 () Bool)

(declare-fun array_inv!28155 (array!76814) Bool)

(assert (=> start!99950 (and (array_inv!28155 _values!996) e!676164)))

(declare-fun b!1189204 () Bool)

(declare-fun res!790864 () Bool)

(assert (=> b!1189204 (=> (not res!790864) (not e!676162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189204 (= res!790864 (validKeyInArray!0 k!934))))

(declare-fun b!1189205 () Bool)

(assert (=> b!1189205 (= e!676164 (and e!676158 mapRes!46862))))

(declare-fun condMapEmpty!46862 () Bool)

(declare-fun mapDefault!46862 () ValueCell!14302)

