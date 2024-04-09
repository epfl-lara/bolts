; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79504 () Bool)

(assert start!79504)

(declare-fun b_free!17631 () Bool)

(declare-fun b_next!17631 () Bool)

(assert (=> start!79504 (= b_free!17631 (not b_next!17631))))

(declare-fun tp!61341 () Bool)

(declare-fun b_and!28847 () Bool)

(assert (=> start!79504 (= tp!61341 b_and!28847)))

(declare-fun b!933986 () Bool)

(declare-fun res!629162 () Bool)

(declare-fun e!524476 () Bool)

(assert (=> b!933986 (=> (not res!629162) (not e!524476))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933986 (= res!629162 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933987 () Bool)

(declare-fun e!524474 () Bool)

(declare-fun e!524478 () Bool)

(declare-fun mapRes!31971 () Bool)

(assert (=> b!933987 (= e!524474 (and e!524478 mapRes!31971))))

(declare-fun condMapEmpty!31971 () Bool)

(declare-datatypes ((V!31817 0))(
  ( (V!31818 (val!10120 Int)) )
))
(declare-datatypes ((ValueCell!9588 0))(
  ( (ValueCellFull!9588 (v!12640 V!31817)) (EmptyCell!9588) )
))
(declare-datatypes ((array!56236 0))(
  ( (array!56237 (arr!27057 (Array (_ BitVec 32) ValueCell!9588)) (size!27517 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56236)

(declare-fun mapDefault!31971 () ValueCell!9588)

(assert (=> b!933987 (= condMapEmpty!31971 (= (arr!27057 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9588)) mapDefault!31971)))))

(declare-fun b!933988 () Bool)

(declare-fun res!629170 () Bool)

(assert (=> b!933988 (=> (not res!629170) (not e!524476))))

(declare-fun v!791 () V!31817)

(declare-datatypes ((tuple2!13376 0))(
  ( (tuple2!13377 (_1!6698 (_ BitVec 64)) (_2!6698 V!31817)) )
))
(declare-datatypes ((List!19183 0))(
  ( (Nil!19180) (Cons!19179 (h!20325 tuple2!13376) (t!27366 List!19183)) )
))
(declare-datatypes ((ListLongMap!12087 0))(
  ( (ListLongMap!12088 (toList!6059 List!19183)) )
))
(declare-fun lt!420773 () ListLongMap!12087)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!840 (ListLongMap!12087 (_ BitVec 64)) V!31817)

(assert (=> b!933988 (= res!629170 (= (apply!840 lt!420773 k0!1099) v!791))))

(declare-fun b!933989 () Bool)

(declare-fun res!629166 () Bool)

(declare-fun e!524473 () Bool)

(assert (=> b!933989 (=> (not res!629166) (not e!524473))))

(declare-datatypes ((array!56238 0))(
  ( (array!56239 (arr!27058 (Array (_ BitVec 32) (_ BitVec 64))) (size!27518 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56238)

(declare-datatypes ((List!19184 0))(
  ( (Nil!19181) (Cons!19180 (h!20326 (_ BitVec 64)) (t!27367 List!19184)) )
))
(declare-fun arrayNoDuplicates!0 (array!56238 (_ BitVec 32) List!19184) Bool)

(assert (=> b!933989 (= res!629166 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19181))))

(declare-fun b!933990 () Bool)

(declare-fun tp_is_empty!20139 () Bool)

(assert (=> b!933990 (= e!524478 tp_is_empty!20139)))

(declare-fun mapIsEmpty!31971 () Bool)

(assert (=> mapIsEmpty!31971 mapRes!31971))

(declare-fun b!933991 () Bool)

(declare-fun e!524475 () Bool)

(assert (=> b!933991 (= e!524475 tp_is_empty!20139)))

(declare-fun mapNonEmpty!31971 () Bool)

(declare-fun tp!61340 () Bool)

(assert (=> mapNonEmpty!31971 (= mapRes!31971 (and tp!61340 e!524475))))

(declare-fun mapValue!31971 () ValueCell!9588)

(declare-fun mapRest!31971 () (Array (_ BitVec 32) ValueCell!9588))

(declare-fun mapKey!31971 () (_ BitVec 32))

(assert (=> mapNonEmpty!31971 (= (arr!27057 _values!1231) (store mapRest!31971 mapKey!31971 mapValue!31971))))

(declare-fun b!933993 () Bool)

(declare-fun e!524477 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!933993 (= e!524477 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!933994 () Bool)

(declare-fun res!629167 () Bool)

(assert (=> b!933994 (=> (not res!629167) (not e!524473))))

(assert (=> b!933994 (= res!629167 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27518 _keys!1487))))))

(declare-fun b!933995 () Bool)

(declare-fun res!629171 () Bool)

(assert (=> b!933995 (=> (not res!629171) (not e!524473))))

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!933995 (= res!629171 (and (= (size!27517 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27518 _keys!1487) (size!27517 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933996 () Bool)

(assert (=> b!933996 (= e!524473 e!524476)))

(declare-fun res!629165 () Bool)

(assert (=> b!933996 (=> (not res!629165) (not e!524476))))

(declare-fun contains!5060 (ListLongMap!12087 (_ BitVec 64)) Bool)

(assert (=> b!933996 (= res!629165 (contains!5060 lt!420773 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31817)

(declare-fun minValue!1173 () V!31817)

(declare-fun getCurrentListMap!3251 (array!56238 array!56236 (_ BitVec 32) (_ BitVec 32) V!31817 V!31817 (_ BitVec 32) Int) ListLongMap!12087)

(assert (=> b!933996 (= lt!420773 (getCurrentListMap!3251 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933997 () Bool)

(declare-fun e!524479 () Bool)

(assert (=> b!933997 (= e!524479 (not true))))

(assert (=> b!933997 e!524477))

(declare-fun c!97055 () Bool)

(assert (=> b!933997 (= c!97055 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31511 0))(
  ( (Unit!31512) )
))
(declare-fun lt!420770 () Unit!31511)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!272 (array!56238 array!56236 (_ BitVec 32) (_ BitVec 32) V!31817 V!31817 (_ BitVec 64) (_ BitVec 32) Int) Unit!31511)

(assert (=> b!933997 (= lt!420770 (lemmaListMapContainsThenArrayContainsFrom!272 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!933997 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19181)))

(declare-fun lt!420775 () Unit!31511)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56238 (_ BitVec 32) (_ BitVec 32)) Unit!31511)

(assert (=> b!933997 (= lt!420775 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420774 () tuple2!13376)

(declare-fun +!2759 (ListLongMap!12087 tuple2!13376) ListLongMap!12087)

(assert (=> b!933997 (contains!5060 (+!2759 lt!420773 lt!420774) k0!1099)))

(declare-fun lt!420769 () Unit!31511)

(declare-fun lt!420772 () V!31817)

(declare-fun lt!420776 () (_ BitVec 64))

(declare-fun addStillContains!515 (ListLongMap!12087 (_ BitVec 64) V!31817 (_ BitVec 64)) Unit!31511)

(assert (=> b!933997 (= lt!420769 (addStillContains!515 lt!420773 lt!420776 lt!420772 k0!1099))))

(assert (=> b!933997 (= (getCurrentListMap!3251 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2759 (getCurrentListMap!3251 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420774))))

(assert (=> b!933997 (= lt!420774 (tuple2!13377 lt!420776 lt!420772))))

(declare-fun get!14254 (ValueCell!9588 V!31817) V!31817)

(declare-fun dynLambda!1598 (Int (_ BitVec 64)) V!31817)

(assert (=> b!933997 (= lt!420772 (get!14254 (select (arr!27057 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1598 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420771 () Unit!31511)

(declare-fun lemmaListMapRecursiveValidKeyArray!194 (array!56238 array!56236 (_ BitVec 32) (_ BitVec 32) V!31817 V!31817 (_ BitVec 32) Int) Unit!31511)

(assert (=> b!933997 (= lt!420771 (lemmaListMapRecursiveValidKeyArray!194 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933998 () Bool)

(declare-fun arrayContainsKey!0 (array!56238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!933998 (= e!524477 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!933999 () Bool)

(declare-fun res!629163 () Bool)

(assert (=> b!933999 (=> (not res!629163) (not e!524473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56238 (_ BitVec 32)) Bool)

(assert (=> b!933999 (= res!629163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934000 () Bool)

(declare-fun res!629164 () Bool)

(assert (=> b!934000 (=> (not res!629164) (not e!524476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934000 (= res!629164 (validKeyInArray!0 k0!1099))))

(declare-fun b!933992 () Bool)

(assert (=> b!933992 (= e!524476 e!524479)))

(declare-fun res!629168 () Bool)

(assert (=> b!933992 (=> (not res!629168) (not e!524479))))

(assert (=> b!933992 (= res!629168 (validKeyInArray!0 lt!420776))))

(assert (=> b!933992 (= lt!420776 (select (arr!27058 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!629169 () Bool)

(assert (=> start!79504 (=> (not res!629169) (not e!524473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79504 (= res!629169 (validMask!0 mask!1881))))

(assert (=> start!79504 e!524473))

(assert (=> start!79504 true))

(assert (=> start!79504 tp_is_empty!20139))

(declare-fun array_inv!21010 (array!56236) Bool)

(assert (=> start!79504 (and (array_inv!21010 _values!1231) e!524474)))

(assert (=> start!79504 tp!61341))

(declare-fun array_inv!21011 (array!56238) Bool)

(assert (=> start!79504 (array_inv!21011 _keys!1487)))

(assert (= (and start!79504 res!629169) b!933995))

(assert (= (and b!933995 res!629171) b!933999))

(assert (= (and b!933999 res!629163) b!933989))

(assert (= (and b!933989 res!629166) b!933994))

(assert (= (and b!933994 res!629167) b!933996))

(assert (= (and b!933996 res!629165) b!933988))

(assert (= (and b!933988 res!629170) b!933986))

(assert (= (and b!933986 res!629162) b!934000))

(assert (= (and b!934000 res!629164) b!933992))

(assert (= (and b!933992 res!629168) b!933997))

(assert (= (and b!933997 c!97055) b!933998))

(assert (= (and b!933997 (not c!97055)) b!933993))

(assert (= (and b!933987 condMapEmpty!31971) mapIsEmpty!31971))

(assert (= (and b!933987 (not condMapEmpty!31971)) mapNonEmpty!31971))

(get-info :version)

(assert (= (and mapNonEmpty!31971 ((_ is ValueCellFull!9588) mapValue!31971)) b!933991))

(assert (= (and b!933987 ((_ is ValueCellFull!9588) mapDefault!31971)) b!933990))

(assert (= start!79504 b!933987))

(declare-fun b_lambda!14013 () Bool)

(assert (=> (not b_lambda!14013) (not b!933997)))

(declare-fun t!27365 () Bool)

(declare-fun tb!6033 () Bool)

(assert (=> (and start!79504 (= defaultEntry!1235 defaultEntry!1235) t!27365) tb!6033))

(declare-fun result!11885 () Bool)

(assert (=> tb!6033 (= result!11885 tp_is_empty!20139)))

(assert (=> b!933997 t!27365))

(declare-fun b_and!28849 () Bool)

(assert (= b_and!28847 (and (=> t!27365 result!11885) b_and!28849)))

(declare-fun m!868355 () Bool)

(assert (=> b!933989 m!868355))

(declare-fun m!868357 () Bool)

(assert (=> b!933992 m!868357))

(declare-fun m!868359 () Bool)

(assert (=> b!933992 m!868359))

(declare-fun m!868361 () Bool)

(assert (=> start!79504 m!868361))

(declare-fun m!868363 () Bool)

(assert (=> start!79504 m!868363))

(declare-fun m!868365 () Bool)

(assert (=> start!79504 m!868365))

(declare-fun m!868367 () Bool)

(assert (=> b!933996 m!868367))

(declare-fun m!868369 () Bool)

(assert (=> b!933996 m!868369))

(declare-fun m!868371 () Bool)

(assert (=> b!933998 m!868371))

(declare-fun m!868373 () Bool)

(assert (=> b!933999 m!868373))

(declare-fun m!868375 () Bool)

(assert (=> b!934000 m!868375))

(declare-fun m!868377 () Bool)

(assert (=> b!933997 m!868377))

(declare-fun m!868379 () Bool)

(assert (=> b!933997 m!868379))

(declare-fun m!868381 () Bool)

(assert (=> b!933997 m!868381))

(declare-fun m!868383 () Bool)

(assert (=> b!933997 m!868383))

(declare-fun m!868385 () Bool)

(assert (=> b!933997 m!868385))

(assert (=> b!933997 m!868377))

(assert (=> b!933997 m!868379))

(declare-fun m!868387 () Bool)

(assert (=> b!933997 m!868387))

(declare-fun m!868389 () Bool)

(assert (=> b!933997 m!868389))

(declare-fun m!868391 () Bool)

(assert (=> b!933997 m!868391))

(declare-fun m!868393 () Bool)

(assert (=> b!933997 m!868393))

(declare-fun m!868395 () Bool)

(assert (=> b!933997 m!868395))

(assert (=> b!933997 m!868383))

(declare-fun m!868397 () Bool)

(assert (=> b!933997 m!868397))

(declare-fun m!868399 () Bool)

(assert (=> b!933997 m!868399))

(assert (=> b!933997 m!868393))

(declare-fun m!868401 () Bool)

(assert (=> b!933997 m!868401))

(declare-fun m!868403 () Bool)

(assert (=> mapNonEmpty!31971 m!868403))

(declare-fun m!868405 () Bool)

(assert (=> b!933988 m!868405))

(check-sat (not b!934000) (not mapNonEmpty!31971) (not b!933992) (not start!79504) b_and!28849 (not b!933998) (not b!933989) (not b!933999) (not b_lambda!14013) (not b_next!17631) tp_is_empty!20139 (not b!933988) (not b!933997) (not b!933996))
(check-sat b_and!28849 (not b_next!17631))
