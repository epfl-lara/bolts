; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100138 () Bool)

(assert start!100138)

(declare-fun b_free!25675 () Bool)

(declare-fun b_next!25675 () Bool)

(assert (=> start!100138 (= b_free!25675 (not b_next!25675))))

(declare-fun tp!89748 () Bool)

(declare-fun b_and!42231 () Bool)

(assert (=> start!100138 (= tp!89748 b_and!42231)))

(declare-fun b!1193605 () Bool)

(declare-fun e!678404 () Bool)

(declare-fun e!678407 () Bool)

(assert (=> b!1193605 (= e!678404 (not e!678407))))

(declare-fun res!794224 () Bool)

(assert (=> b!1193605 (=> res!794224 e!678407)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193605 (= res!794224 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77186 0))(
  ( (array!77187 (arr!37239 (Array (_ BitVec 32) (_ BitVec 64))) (size!37776 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77186)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193605 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39538 0))(
  ( (Unit!39539) )
))
(declare-fun lt!542595 () Unit!39538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77186 (_ BitVec 64) (_ BitVec 32)) Unit!39538)

(assert (=> b!1193605 (= lt!542595 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193606 () Bool)

(declare-fun res!794220 () Bool)

(declare-fun e!678406 () Bool)

(assert (=> b!1193606 (=> (not res!794220) (not e!678406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193606 (= res!794220 (validKeyInArray!0 k!934))))

(declare-fun b!1193607 () Bool)

(declare-fun res!794222 () Bool)

(assert (=> b!1193607 (=> (not res!794222) (not e!678406))))

(assert (=> b!1193607 (= res!794222 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37776 _keys!1208))))))

(declare-fun b!1193608 () Bool)

(declare-fun res!794223 () Bool)

(assert (=> b!1193608 (=> (not res!794223) (not e!678406))))

(declare-datatypes ((List!26398 0))(
  ( (Nil!26395) (Cons!26394 (h!27603 (_ BitVec 64)) (t!39072 List!26398)) )
))
(declare-fun arrayNoDuplicates!0 (array!77186 (_ BitVec 32) List!26398) Bool)

(assert (=> b!1193608 (= res!794223 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26395))))

(declare-fun b!1193609 () Bool)

(declare-fun res!794225 () Bool)

(assert (=> b!1193609 (=> (not res!794225) (not e!678406))))

(assert (=> b!1193609 (= res!794225 (= (select (arr!37239 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47144 () Bool)

(declare-fun mapRes!47144 () Bool)

(assert (=> mapIsEmpty!47144 mapRes!47144))

(declare-fun b!1193610 () Bool)

(declare-fun res!794218 () Bool)

(assert (=> b!1193610 (=> (not res!794218) (not e!678406))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193610 (= res!794218 (validMask!0 mask!1564))))

(declare-fun b!1193611 () Bool)

(declare-fun e!678409 () Bool)

(declare-fun tp_is_empty!30211 () Bool)

(assert (=> b!1193611 (= e!678409 tp_is_empty!30211)))

(declare-fun b!1193612 () Bool)

(declare-fun e!678408 () Bool)

(assert (=> b!1193612 (= e!678408 tp_is_empty!30211)))

(declare-fun b!1193613 () Bool)

(assert (=> b!1193613 (= e!678406 e!678404)))

(declare-fun res!794217 () Bool)

(assert (=> b!1193613 (=> (not res!794217) (not e!678404))))

(declare-fun lt!542597 () array!77186)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77186 (_ BitVec 32)) Bool)

(assert (=> b!1193613 (= res!794217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542597 mask!1564))))

(assert (=> b!1193613 (= lt!542597 (array!77187 (store (arr!37239 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37776 _keys!1208)))))

(declare-fun b!1193614 () Bool)

(declare-fun res!794226 () Bool)

(assert (=> b!1193614 (=> (not res!794226) (not e!678406))))

(assert (=> b!1193614 (= res!794226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193615 () Bool)

(declare-fun res!794227 () Bool)

(assert (=> b!1193615 (=> (not res!794227) (not e!678404))))

(assert (=> b!1193615 (= res!794227 (arrayNoDuplicates!0 lt!542597 #b00000000000000000000000000000000 Nil!26395))))

(declare-fun mapNonEmpty!47144 () Bool)

(declare-fun tp!89749 () Bool)

(assert (=> mapNonEmpty!47144 (= mapRes!47144 (and tp!89749 e!678409))))

(declare-datatypes ((V!45409 0))(
  ( (V!45410 (val!15162 Int)) )
))
(declare-datatypes ((ValueCell!14396 0))(
  ( (ValueCellFull!14396 (v!17801 V!45409)) (EmptyCell!14396) )
))
(declare-fun mapValue!47144 () ValueCell!14396)

(declare-fun mapRest!47144 () (Array (_ BitVec 32) ValueCell!14396))

(declare-fun mapKey!47144 () (_ BitVec 32))

(declare-datatypes ((array!77188 0))(
  ( (array!77189 (arr!37240 (Array (_ BitVec 32) ValueCell!14396)) (size!37777 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77188)

(assert (=> mapNonEmpty!47144 (= (arr!37240 _values!996) (store mapRest!47144 mapKey!47144 mapValue!47144))))

(declare-fun b!1193616 () Bool)

(assert (=> b!1193616 (= e!678407 (or (= from!1455 i!673) (bvslt from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45409)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!45409)

(declare-datatypes ((tuple2!19640 0))(
  ( (tuple2!19641 (_1!9830 (_ BitVec 64)) (_2!9830 V!45409)) )
))
(declare-datatypes ((List!26399 0))(
  ( (Nil!26396) (Cons!26395 (h!27604 tuple2!19640) (t!39073 List!26399)) )
))
(declare-datatypes ((ListLongMap!17621 0))(
  ( (ListLongMap!17622 (toList!8826 List!26399)) )
))
(declare-fun lt!542596 () ListLongMap!17621)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5240 (array!77186 array!77188 (_ BitVec 32) (_ BitVec 32) V!45409 V!45409 (_ BitVec 32) Int) ListLongMap!17621)

(declare-fun dynLambda!3177 (Int (_ BitVec 64)) V!45409)

(assert (=> b!1193616 (= lt!542596 (getCurrentListMapNoExtraKeys!5240 lt!542597 (array!77189 (store (arr!37240 _values!996) i!673 (ValueCellFull!14396 (dynLambda!3177 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37777 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!542598 () ListLongMap!17621)

(assert (=> b!1193616 (= lt!542598 (getCurrentListMapNoExtraKeys!5240 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!794219 () Bool)

(assert (=> start!100138 (=> (not res!794219) (not e!678406))))

(assert (=> start!100138 (= res!794219 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37776 _keys!1208))))))

(assert (=> start!100138 e!678406))

(assert (=> start!100138 tp_is_empty!30211))

(declare-fun array_inv!28288 (array!77186) Bool)

(assert (=> start!100138 (array_inv!28288 _keys!1208)))

(assert (=> start!100138 true))

(assert (=> start!100138 tp!89748))

(declare-fun e!678405 () Bool)

(declare-fun array_inv!28289 (array!77188) Bool)

(assert (=> start!100138 (and (array_inv!28289 _values!996) e!678405)))

(declare-fun b!1193617 () Bool)

(assert (=> b!1193617 (= e!678405 (and e!678408 mapRes!47144))))

(declare-fun condMapEmpty!47144 () Bool)

(declare-fun mapDefault!47144 () ValueCell!14396)

