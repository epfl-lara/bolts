; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100480 () Bool)

(assert start!100480)

(declare-fun b_free!25767 () Bool)

(declare-fun b_next!25767 () Bool)

(assert (=> start!100480 (= b_free!25767 (not b_next!25767))))

(declare-fun tp!90292 () Bool)

(declare-fun b_and!42435 () Bool)

(assert (=> start!100480 (= tp!90292 b_and!42435)))

(declare-fun b!1199212 () Bool)

(declare-fun e!681169 () Bool)

(declare-fun e!681173 () Bool)

(assert (=> b!1199212 (= e!681169 (not e!681173))))

(declare-fun res!798278 () Bool)

(assert (=> b!1199212 (=> res!798278 e!681173)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199212 (= res!798278 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77700 0))(
  ( (array!77701 (arr!37491 (Array (_ BitVec 32) (_ BitVec 64))) (size!38028 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77700)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199212 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39698 0))(
  ( (Unit!39699) )
))
(declare-fun lt!543673 () Unit!39698)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77700 (_ BitVec 64) (_ BitVec 32)) Unit!39698)

(assert (=> b!1199212 (= lt!543673 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199213 () Bool)

(declare-fun res!798285 () Bool)

(declare-fun e!681172 () Bool)

(assert (=> b!1199213 (=> (not res!798285) (not e!681172))))

(assert (=> b!1199213 (= res!798285 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38028 _keys!1208))))))

(declare-fun b!1199215 () Bool)

(declare-fun e!681170 () Bool)

(declare-fun tp_is_empty!30471 () Bool)

(assert (=> b!1199215 (= e!681170 tp_is_empty!30471)))

(declare-fun b!1199216 () Bool)

(declare-fun e!681174 () Bool)

(declare-fun mapRes!47549 () Bool)

(assert (=> b!1199216 (= e!681174 (and e!681170 mapRes!47549))))

(declare-fun condMapEmpty!47549 () Bool)

(declare-datatypes ((V!45755 0))(
  ( (V!45756 (val!15292 Int)) )
))
(declare-datatypes ((ValueCell!14526 0))(
  ( (ValueCellFull!14526 (v!17931 V!45755)) (EmptyCell!14526) )
))
(declare-datatypes ((array!77702 0))(
  ( (array!77703 (arr!37492 (Array (_ BitVec 32) ValueCell!14526)) (size!38029 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77702)

(declare-fun mapDefault!47549 () ValueCell!14526)

(assert (=> b!1199216 (= condMapEmpty!47549 (= (arr!37492 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14526)) mapDefault!47549)))))

(declare-fun b!1199217 () Bool)

(declare-fun res!798287 () Bool)

(assert (=> b!1199217 (=> (not res!798287) (not e!681172))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199217 (= res!798287 (validMask!0 mask!1564))))

(declare-fun b!1199218 () Bool)

(declare-fun e!681175 () Bool)

(assert (=> b!1199218 (= e!681175 tp_is_empty!30471)))

(declare-fun mapNonEmpty!47549 () Bool)

(declare-fun tp!90291 () Bool)

(assert (=> mapNonEmpty!47549 (= mapRes!47549 (and tp!90291 e!681175))))

(declare-fun mapRest!47549 () (Array (_ BitVec 32) ValueCell!14526))

(declare-fun mapKey!47549 () (_ BitVec 32))

(declare-fun mapValue!47549 () ValueCell!14526)

(assert (=> mapNonEmpty!47549 (= (arr!37492 _values!996) (store mapRest!47549 mapKey!47549 mapValue!47549))))

(declare-fun b!1199219 () Bool)

(declare-fun res!798279 () Bool)

(assert (=> b!1199219 (=> (not res!798279) (not e!681169))))

(declare-fun lt!543671 () array!77700)

(declare-datatypes ((List!26545 0))(
  ( (Nil!26542) (Cons!26541 (h!27750 (_ BitVec 64)) (t!39299 List!26545)) )
))
(declare-fun arrayNoDuplicates!0 (array!77700 (_ BitVec 32) List!26545) Bool)

(assert (=> b!1199219 (= res!798279 (arrayNoDuplicates!0 lt!543671 #b00000000000000000000000000000000 Nil!26542))))

(declare-fun mapIsEmpty!47549 () Bool)

(assert (=> mapIsEmpty!47549 mapRes!47549))

(declare-fun b!1199220 () Bool)

(declare-fun res!798280 () Bool)

(assert (=> b!1199220 (=> (not res!798280) (not e!681172))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1199220 (= res!798280 (and (= (size!38029 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38028 _keys!1208) (size!38029 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199221 () Bool)

(declare-fun res!798286 () Bool)

(assert (=> b!1199221 (=> (not res!798286) (not e!681172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77700 (_ BitVec 32)) Bool)

(assert (=> b!1199221 (= res!798286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!798283 () Bool)

(assert (=> start!100480 (=> (not res!798283) (not e!681172))))

(assert (=> start!100480 (= res!798283 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38028 _keys!1208))))))

(assert (=> start!100480 e!681172))

(assert (=> start!100480 tp_is_empty!30471))

(declare-fun array_inv!28474 (array!77700) Bool)

(assert (=> start!100480 (array_inv!28474 _keys!1208)))

(assert (=> start!100480 true))

(assert (=> start!100480 tp!90292))

(declare-fun array_inv!28475 (array!77702) Bool)

(assert (=> start!100480 (and (array_inv!28475 _values!996) e!681174)))

(declare-fun b!1199214 () Bool)

(declare-fun res!798284 () Bool)

(assert (=> b!1199214 (=> (not res!798284) (not e!681172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199214 (= res!798284 (validKeyInArray!0 k0!934))))

(declare-fun b!1199222 () Bool)

(declare-fun res!798282 () Bool)

(assert (=> b!1199222 (=> (not res!798282) (not e!681172))))

(assert (=> b!1199222 (= res!798282 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26542))))

(declare-fun b!1199223 () Bool)

(assert (=> b!1199223 (= e!681172 e!681169)))

(declare-fun res!798288 () Bool)

(assert (=> b!1199223 (=> (not res!798288) (not e!681169))))

(assert (=> b!1199223 (= res!798288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543671 mask!1564))))

(assert (=> b!1199223 (= lt!543671 (array!77701 (store (arr!37491 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38028 _keys!1208)))))

(declare-fun b!1199224 () Bool)

(declare-fun res!798281 () Bool)

(assert (=> b!1199224 (=> (not res!798281) (not e!681172))))

(assert (=> b!1199224 (= res!798281 (= (select (arr!37491 _keys!1208) i!673) k0!934))))

(declare-fun b!1199225 () Bool)

(assert (=> b!1199225 (= e!681173 true)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45755)

(declare-datatypes ((tuple2!19714 0))(
  ( (tuple2!19715 (_1!9867 (_ BitVec 64)) (_2!9867 V!45755)) )
))
(declare-datatypes ((List!26546 0))(
  ( (Nil!26543) (Cons!26542 (h!27751 tuple2!19714) (t!39300 List!26546)) )
))
(declare-datatypes ((ListLongMap!17695 0))(
  ( (ListLongMap!17696 (toList!8863 List!26546)) )
))
(declare-fun lt!543670 () ListLongMap!17695)

(declare-fun zeroValue!944 () V!45755)

(declare-fun getCurrentListMapNoExtraKeys!5276 (array!77700 array!77702 (_ BitVec 32) (_ BitVec 32) V!45755 V!45755 (_ BitVec 32) Int) ListLongMap!17695)

(declare-fun dynLambda!3207 (Int (_ BitVec 64)) V!45755)

(assert (=> b!1199225 (= lt!543670 (getCurrentListMapNoExtraKeys!5276 lt!543671 (array!77703 (store (arr!37492 _values!996) i!673 (ValueCellFull!14526 (dynLambda!3207 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38029 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543672 () ListLongMap!17695)

(assert (=> b!1199225 (= lt!543672 (getCurrentListMapNoExtraKeys!5276 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!100480 res!798283) b!1199217))

(assert (= (and b!1199217 res!798287) b!1199220))

(assert (= (and b!1199220 res!798280) b!1199221))

(assert (= (and b!1199221 res!798286) b!1199222))

(assert (= (and b!1199222 res!798282) b!1199213))

(assert (= (and b!1199213 res!798285) b!1199214))

(assert (= (and b!1199214 res!798284) b!1199224))

(assert (= (and b!1199224 res!798281) b!1199223))

(assert (= (and b!1199223 res!798288) b!1199219))

(assert (= (and b!1199219 res!798279) b!1199212))

(assert (= (and b!1199212 (not res!798278)) b!1199225))

(assert (= (and b!1199216 condMapEmpty!47549) mapIsEmpty!47549))

(assert (= (and b!1199216 (not condMapEmpty!47549)) mapNonEmpty!47549))

(get-info :version)

(assert (= (and mapNonEmpty!47549 ((_ is ValueCellFull!14526) mapValue!47549)) b!1199218))

(assert (= (and b!1199216 ((_ is ValueCellFull!14526) mapDefault!47549)) b!1199215))

(assert (= start!100480 b!1199216))

(declare-fun b_lambda!20981 () Bool)

(assert (=> (not b_lambda!20981) (not b!1199225)))

(declare-fun t!39298 () Bool)

(declare-fun tb!10575 () Bool)

(assert (=> (and start!100480 (= defaultEntry!1004 defaultEntry!1004) t!39298) tb!10575))

(declare-fun result!21719 () Bool)

(assert (=> tb!10575 (= result!21719 tp_is_empty!30471)))

(assert (=> b!1199225 t!39298))

(declare-fun b_and!42437 () Bool)

(assert (= b_and!42435 (and (=> t!39298 result!21719) b_and!42437)))

(declare-fun m!1105841 () Bool)

(assert (=> b!1199221 m!1105841))

(declare-fun m!1105843 () Bool)

(assert (=> b!1199217 m!1105843))

(declare-fun m!1105845 () Bool)

(assert (=> b!1199219 m!1105845))

(declare-fun m!1105847 () Bool)

(assert (=> b!1199214 m!1105847))

(declare-fun m!1105849 () Bool)

(assert (=> b!1199222 m!1105849))

(declare-fun m!1105851 () Bool)

(assert (=> b!1199212 m!1105851))

(declare-fun m!1105853 () Bool)

(assert (=> b!1199212 m!1105853))

(declare-fun m!1105855 () Bool)

(assert (=> mapNonEmpty!47549 m!1105855))

(declare-fun m!1105857 () Bool)

(assert (=> b!1199225 m!1105857))

(declare-fun m!1105859 () Bool)

(assert (=> b!1199225 m!1105859))

(declare-fun m!1105861 () Bool)

(assert (=> b!1199225 m!1105861))

(declare-fun m!1105863 () Bool)

(assert (=> b!1199225 m!1105863))

(declare-fun m!1105865 () Bool)

(assert (=> b!1199224 m!1105865))

(declare-fun m!1105867 () Bool)

(assert (=> start!100480 m!1105867))

(declare-fun m!1105869 () Bool)

(assert (=> start!100480 m!1105869))

(declare-fun m!1105871 () Bool)

(assert (=> b!1199223 m!1105871))

(declare-fun m!1105873 () Bool)

(assert (=> b!1199223 m!1105873))

(check-sat (not b_lambda!20981) (not mapNonEmpty!47549) tp_is_empty!30471 (not b!1199212) (not b!1199222) (not b!1199225) (not start!100480) (not b!1199221) (not b!1199219) (not b_next!25767) (not b!1199217) (not b!1199223) (not b!1199214) b_and!42437)
(check-sat b_and!42437 (not b_next!25767))
