; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79466 () Bool)

(assert start!79466)

(declare-fun b_free!17625 () Bool)

(declare-fun b_next!17625 () Bool)

(assert (=> start!79466 (= b_free!17625 (not b_next!17625))))

(declare-fun tp!61320 () Bool)

(declare-fun b_and!28827 () Bool)

(assert (=> start!79466 (= tp!61320 b_and!28827)))

(declare-fun b!933658 () Bool)

(declare-fun e!524279 () Bool)

(declare-fun e!524285 () Bool)

(assert (=> b!933658 (= e!524279 e!524285)))

(declare-fun res!628988 () Bool)

(assert (=> b!933658 (=> (not res!628988) (not e!524285))))

(declare-datatypes ((V!31809 0))(
  ( (V!31810 (val!10117 Int)) )
))
(declare-datatypes ((tuple2!13372 0))(
  ( (tuple2!13373 (_1!6696 (_ BitVec 64)) (_2!6696 V!31809)) )
))
(declare-datatypes ((List!19179 0))(
  ( (Nil!19176) (Cons!19175 (h!20321 tuple2!13372) (t!27356 List!19179)) )
))
(declare-datatypes ((ListLongMap!12083 0))(
  ( (ListLongMap!12084 (toList!6057 List!19179)) )
))
(declare-fun lt!420534 () ListLongMap!12083)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5056 (ListLongMap!12083 (_ BitVec 64)) Bool)

(assert (=> b!933658 (= res!628988 (contains!5056 lt!420534 k0!1099))))

(declare-datatypes ((array!56224 0))(
  ( (array!56225 (arr!27052 (Array (_ BitVec 32) (_ BitVec 64))) (size!27512 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56224)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9585 0))(
  ( (ValueCellFull!9585 (v!12636 V!31809)) (EmptyCell!9585) )
))
(declare-datatypes ((array!56226 0))(
  ( (array!56227 (arr!27053 (Array (_ BitVec 32) ValueCell!9585)) (size!27513 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56226)

(declare-fun zeroValue!1173 () V!31809)

(declare-fun minValue!1173 () V!31809)

(declare-fun getCurrentListMap!3249 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 32) Int) ListLongMap!12083)

(assert (=> b!933658 (= lt!420534 (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933660 () Bool)

(declare-fun res!628994 () Bool)

(assert (=> b!933660 (=> (not res!628994) (not e!524285))))

(declare-fun v!791 () V!31809)

(declare-fun apply!839 (ListLongMap!12083 (_ BitVec 64)) V!31809)

(assert (=> b!933660 (= res!628994 (= (apply!839 lt!420534 k0!1099) v!791))))

(declare-fun b!933661 () Bool)

(declare-fun e!524283 () Bool)

(declare-fun tp_is_empty!20133 () Bool)

(assert (=> b!933661 (= e!524283 tp_is_empty!20133)))

(declare-fun mapNonEmpty!31959 () Bool)

(declare-fun mapRes!31959 () Bool)

(declare-fun tp!61319 () Bool)

(assert (=> mapNonEmpty!31959 (= mapRes!31959 (and tp!61319 e!524283))))

(declare-fun mapKey!31959 () (_ BitVec 32))

(declare-fun mapRest!31959 () (Array (_ BitVec 32) ValueCell!9585))

(declare-fun mapValue!31959 () ValueCell!9585)

(assert (=> mapNonEmpty!31959 (= (arr!27053 _values!1231) (store mapRest!31959 mapKey!31959 mapValue!31959))))

(declare-fun b!933662 () Bool)

(declare-fun res!628995 () Bool)

(assert (=> b!933662 (=> (not res!628995) (not e!524279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56224 (_ BitVec 32)) Bool)

(assert (=> b!933662 (= res!628995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933663 () Bool)

(declare-fun e!524280 () Bool)

(assert (=> b!933663 (= e!524280 tp_is_empty!20133)))

(declare-fun b!933664 () Bool)

(declare-fun res!628990 () Bool)

(assert (=> b!933664 (=> (not res!628990) (not e!524285))))

(assert (=> b!933664 (= res!628990 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933665 () Bool)

(declare-fun e!524281 () Bool)

(assert (=> b!933665 (= e!524281 (not (bvslt (size!27512 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun e!524282 () Bool)

(assert (=> b!933665 e!524282))

(declare-fun c!96999 () Bool)

(assert (=> b!933665 (= c!96999 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31502 0))(
  ( (Unit!31503) )
))
(declare-fun lt!420536 () Unit!31502)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!270 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 64) (_ BitVec 32) Int) Unit!31502)

(assert (=> b!933665 (= lt!420536 (lemmaListMapContainsThenArrayContainsFrom!270 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19180 0))(
  ( (Nil!19177) (Cons!19176 (h!20322 (_ BitVec 64)) (t!27357 List!19180)) )
))
(declare-fun arrayNoDuplicates!0 (array!56224 (_ BitVec 32) List!19180) Bool)

(assert (=> b!933665 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19177)))

(declare-fun lt!420541 () Unit!31502)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56224 (_ BitVec 32) (_ BitVec 32)) Unit!31502)

(assert (=> b!933665 (= lt!420541 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420539 () tuple2!13372)

(declare-fun +!2757 (ListLongMap!12083 tuple2!13372) ListLongMap!12083)

(assert (=> b!933665 (contains!5056 (+!2757 lt!420534 lt!420539) k0!1099)))

(declare-fun lt!420535 () Unit!31502)

(declare-fun lt!420538 () (_ BitVec 64))

(declare-fun lt!420537 () V!31809)

(declare-fun addStillContains!513 (ListLongMap!12083 (_ BitVec 64) V!31809 (_ BitVec 64)) Unit!31502)

(assert (=> b!933665 (= lt!420535 (addStillContains!513 lt!420534 lt!420538 lt!420537 k0!1099))))

(assert (=> b!933665 (= (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2757 (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420539))))

(assert (=> b!933665 (= lt!420539 (tuple2!13373 lt!420538 lt!420537))))

(declare-fun get!14247 (ValueCell!9585 V!31809) V!31809)

(declare-fun dynLambda!1596 (Int (_ BitVec 64)) V!31809)

(assert (=> b!933665 (= lt!420537 (get!14247 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420540 () Unit!31502)

(declare-fun lemmaListMapRecursiveValidKeyArray!192 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 32) Int) Unit!31502)

(assert (=> b!933665 (= lt!420540 (lemmaListMapRecursiveValidKeyArray!192 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933666 () Bool)

(declare-fun res!628996 () Bool)

(assert (=> b!933666 (=> (not res!628996) (not e!524285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933666 (= res!628996 (validKeyInArray!0 k0!1099))))

(declare-fun b!933667 () Bool)

(declare-fun res!628993 () Bool)

(assert (=> b!933667 (=> (not res!628993) (not e!524279))))

(assert (=> b!933667 (= res!628993 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19177))))

(declare-fun b!933668 () Bool)

(declare-fun e!524284 () Bool)

(assert (=> b!933668 (= e!524284 (and e!524280 mapRes!31959))))

(declare-fun condMapEmpty!31959 () Bool)

(declare-fun mapDefault!31959 () ValueCell!9585)

(assert (=> b!933668 (= condMapEmpty!31959 (= (arr!27053 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9585)) mapDefault!31959)))))

(declare-fun mapIsEmpty!31959 () Bool)

(assert (=> mapIsEmpty!31959 mapRes!31959))

(declare-fun b!933669 () Bool)

(assert (=> b!933669 (= e!524285 e!524281)))

(declare-fun res!628992 () Bool)

(assert (=> b!933669 (=> (not res!628992) (not e!524281))))

(assert (=> b!933669 (= res!628992 (validKeyInArray!0 lt!420538))))

(assert (=> b!933669 (= lt!420538 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933670 () Bool)

(declare-fun arrayContainsKey!0 (array!56224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!933670 (= e!524282 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!933659 () Bool)

(declare-fun res!628991 () Bool)

(assert (=> b!933659 (=> (not res!628991) (not e!524279))))

(assert (=> b!933659 (= res!628991 (and (= (size!27513 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27512 _keys!1487) (size!27513 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!628997 () Bool)

(assert (=> start!79466 (=> (not res!628997) (not e!524279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79466 (= res!628997 (validMask!0 mask!1881))))

(assert (=> start!79466 e!524279))

(assert (=> start!79466 true))

(assert (=> start!79466 tp_is_empty!20133))

(declare-fun array_inv!21008 (array!56226) Bool)

(assert (=> start!79466 (and (array_inv!21008 _values!1231) e!524284)))

(assert (=> start!79466 tp!61320))

(declare-fun array_inv!21009 (array!56224) Bool)

(assert (=> start!79466 (array_inv!21009 _keys!1487)))

(declare-fun b!933671 () Bool)

(declare-fun res!628989 () Bool)

(assert (=> b!933671 (=> (not res!628989) (not e!524279))))

(assert (=> b!933671 (= res!628989 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27512 _keys!1487))))))

(declare-fun b!933672 () Bool)

(assert (=> b!933672 (= e!524282 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!79466 res!628997) b!933659))

(assert (= (and b!933659 res!628991) b!933662))

(assert (= (and b!933662 res!628995) b!933667))

(assert (= (and b!933667 res!628993) b!933671))

(assert (= (and b!933671 res!628989) b!933658))

(assert (= (and b!933658 res!628988) b!933660))

(assert (= (and b!933660 res!628994) b!933664))

(assert (= (and b!933664 res!628990) b!933666))

(assert (= (and b!933666 res!628996) b!933669))

(assert (= (and b!933669 res!628992) b!933665))

(assert (= (and b!933665 c!96999) b!933670))

(assert (= (and b!933665 (not c!96999)) b!933672))

(assert (= (and b!933668 condMapEmpty!31959) mapIsEmpty!31959))

(assert (= (and b!933668 (not condMapEmpty!31959)) mapNonEmpty!31959))

(get-info :version)

(assert (= (and mapNonEmpty!31959 ((_ is ValueCellFull!9585) mapValue!31959)) b!933661))

(assert (= (and b!933668 ((_ is ValueCellFull!9585) mapDefault!31959)) b!933663))

(assert (= start!79466 b!933668))

(declare-fun b_lambda!13989 () Bool)

(assert (=> (not b_lambda!13989) (not b!933665)))

(declare-fun t!27355 () Bool)

(declare-fun tb!6027 () Bool)

(assert (=> (and start!79466 (= defaultEntry!1235 defaultEntry!1235) t!27355) tb!6027))

(declare-fun result!11871 () Bool)

(assert (=> tb!6027 (= result!11871 tp_is_empty!20133)))

(assert (=> b!933665 t!27355))

(declare-fun b_and!28829 () Bool)

(assert (= b_and!28827 (and (=> t!27355 result!11871) b_and!28829)))

(declare-fun m!867951 () Bool)

(assert (=> b!933658 m!867951))

(declare-fun m!867953 () Bool)

(assert (=> b!933658 m!867953))

(declare-fun m!867955 () Bool)

(assert (=> b!933666 m!867955))

(declare-fun m!867957 () Bool)

(assert (=> b!933667 m!867957))

(declare-fun m!867959 () Bool)

(assert (=> b!933662 m!867959))

(declare-fun m!867961 () Bool)

(assert (=> mapNonEmpty!31959 m!867961))

(declare-fun m!867963 () Bool)

(assert (=> start!79466 m!867963))

(declare-fun m!867965 () Bool)

(assert (=> start!79466 m!867965))

(declare-fun m!867967 () Bool)

(assert (=> start!79466 m!867967))

(declare-fun m!867969 () Bool)

(assert (=> b!933670 m!867969))

(declare-fun m!867971 () Bool)

(assert (=> b!933660 m!867971))

(declare-fun m!867973 () Bool)

(assert (=> b!933665 m!867973))

(declare-fun m!867975 () Bool)

(assert (=> b!933665 m!867975))

(declare-fun m!867977 () Bool)

(assert (=> b!933665 m!867977))

(declare-fun m!867979 () Bool)

(assert (=> b!933665 m!867979))

(declare-fun m!867981 () Bool)

(assert (=> b!933665 m!867981))

(declare-fun m!867983 () Bool)

(assert (=> b!933665 m!867983))

(assert (=> b!933665 m!867977))

(declare-fun m!867985 () Bool)

(assert (=> b!933665 m!867985))

(assert (=> b!933665 m!867981))

(assert (=> b!933665 m!867983))

(declare-fun m!867987 () Bool)

(assert (=> b!933665 m!867987))

(declare-fun m!867989 () Bool)

(assert (=> b!933665 m!867989))

(declare-fun m!867991 () Bool)

(assert (=> b!933665 m!867991))

(declare-fun m!867993 () Bool)

(assert (=> b!933665 m!867993))

(declare-fun m!867995 () Bool)

(assert (=> b!933665 m!867995))

(assert (=> b!933665 m!867973))

(declare-fun m!867997 () Bool)

(assert (=> b!933665 m!867997))

(declare-fun m!867999 () Bool)

(assert (=> b!933669 m!867999))

(declare-fun m!868001 () Bool)

(assert (=> b!933669 m!868001))

(check-sat (not b!933662) tp_is_empty!20133 (not b!933660) (not b!933667) (not b!933665) b_and!28829 (not b_lambda!13989) (not b!933670) (not mapNonEmpty!31959) (not b!933669) (not start!79466) (not b!933658) (not b!933666) (not b_next!17625))
(check-sat b_and!28829 (not b_next!17625))
(get-model)

(declare-fun b_lambda!13993 () Bool)

(assert (= b_lambda!13989 (or (and start!79466 b_free!17625) b_lambda!13993)))

(check-sat (not b!933662) tp_is_empty!20133 (not b!933660) (not b!933667) (not b!933665) (not b!933670) (not mapNonEmpty!31959) (not b!933669) (not start!79466) (not b!933658) (not b!933666) (not b_next!17625) (not b_lambda!13993) b_and!28829)
(check-sat b_and!28829 (not b_next!17625))
(get-model)

(declare-fun d!113015 () Bool)

(assert (=> d!113015 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!933666 d!113015))

(declare-fun d!113017 () Bool)

(declare-fun res!629032 () Bool)

(declare-fun e!524314 () Bool)

(assert (=> d!113017 (=> res!629032 e!524314)))

(assert (=> d!113017 (= res!629032 (= (select (arr!27052 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113017 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!524314)))

(declare-fun b!933726 () Bool)

(declare-fun e!524315 () Bool)

(assert (=> b!933726 (= e!524314 e!524315)))

(declare-fun res!629033 () Bool)

(assert (=> b!933726 (=> (not res!629033) (not e!524315))))

(assert (=> b!933726 (= res!629033 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(declare-fun b!933727 () Bool)

(assert (=> b!933727 (= e!524315 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113017 (not res!629032)) b!933726))

(assert (= (and b!933726 res!629033) b!933727))

(declare-fun m!868055 () Bool)

(assert (=> d!113017 m!868055))

(declare-fun m!868057 () Bool)

(assert (=> b!933727 m!868057))

(assert (=> b!933670 d!113017))

(declare-fun b!933736 () Bool)

(declare-fun e!524324 () Bool)

(declare-fun call!40593 () Bool)

(assert (=> b!933736 (= e!524324 call!40593)))

(declare-fun bm!40590 () Bool)

(assert (=> bm!40590 (= call!40593 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun d!113019 () Bool)

(declare-fun res!629038 () Bool)

(declare-fun e!524323 () Bool)

(assert (=> d!113019 (=> res!629038 e!524323)))

(assert (=> d!113019 (= res!629038 (bvsge #b00000000000000000000000000000000 (size!27512 _keys!1487)))))

(assert (=> d!113019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!524323)))

(declare-fun b!933737 () Bool)

(assert (=> b!933737 (= e!524323 e!524324)))

(declare-fun c!97005 () Bool)

(assert (=> b!933737 (= c!97005 (validKeyInArray!0 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!933738 () Bool)

(declare-fun e!524322 () Bool)

(assert (=> b!933738 (= e!524322 call!40593)))

(declare-fun b!933739 () Bool)

(assert (=> b!933739 (= e!524324 e!524322)))

(declare-fun lt!420572 () (_ BitVec 64))

(assert (=> b!933739 (= lt!420572 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!420573 () Unit!31502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56224 (_ BitVec 64) (_ BitVec 32)) Unit!31502)

(assert (=> b!933739 (= lt!420573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!420572 #b00000000000000000000000000000000))))

(assert (=> b!933739 (arrayContainsKey!0 _keys!1487 lt!420572 #b00000000000000000000000000000000)))

(declare-fun lt!420574 () Unit!31502)

(assert (=> b!933739 (= lt!420574 lt!420573)))

(declare-fun res!629039 () Bool)

(declare-datatypes ((SeekEntryResult!8964 0))(
  ( (MissingZero!8964 (index!38226 (_ BitVec 32))) (Found!8964 (index!38227 (_ BitVec 32))) (Intermediate!8964 (undefined!9776 Bool) (index!38228 (_ BitVec 32)) (x!80074 (_ BitVec 32))) (Undefined!8964) (MissingVacant!8964 (index!38229 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56224 (_ BitVec 32)) SeekEntryResult!8964)

(assert (=> b!933739 (= res!629039 (= (seekEntryOrOpen!0 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8964 #b00000000000000000000000000000000)))))

(assert (=> b!933739 (=> (not res!629039) (not e!524322))))

(assert (= (and d!113019 (not res!629038)) b!933737))

(assert (= (and b!933737 c!97005) b!933739))

(assert (= (and b!933737 (not c!97005)) b!933736))

(assert (= (and b!933739 res!629039) b!933738))

(assert (= (or b!933738 b!933736) bm!40590))

(declare-fun m!868059 () Bool)

(assert (=> bm!40590 m!868059))

(declare-fun m!868061 () Bool)

(assert (=> b!933737 m!868061))

(assert (=> b!933737 m!868061))

(declare-fun m!868063 () Bool)

(assert (=> b!933737 m!868063))

(assert (=> b!933739 m!868061))

(declare-fun m!868065 () Bool)

(assert (=> b!933739 m!868065))

(declare-fun m!868067 () Bool)

(assert (=> b!933739 m!868067))

(assert (=> b!933739 m!868061))

(declare-fun m!868069 () Bool)

(assert (=> b!933739 m!868069))

(assert (=> b!933662 d!113019))

(declare-fun b!933750 () Bool)

(declare-fun e!524333 () Bool)

(declare-fun e!524335 () Bool)

(assert (=> b!933750 (= e!524333 e!524335)))

(declare-fun c!97008 () Bool)

(assert (=> b!933750 (= c!97008 (validKeyInArray!0 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun bm!40593 () Bool)

(declare-fun call!40596 () Bool)

(assert (=> bm!40593 (= call!40596 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97008 (Cons!19176 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000) Nil!19177) Nil!19177)))))

(declare-fun b!933751 () Bool)

(assert (=> b!933751 (= e!524335 call!40596)))

(declare-fun b!933752 () Bool)

(declare-fun e!524336 () Bool)

(assert (=> b!933752 (= e!524336 e!524333)))

(declare-fun res!629048 () Bool)

(assert (=> b!933752 (=> (not res!629048) (not e!524333))))

(declare-fun e!524334 () Bool)

(assert (=> b!933752 (= res!629048 (not e!524334))))

(declare-fun res!629046 () Bool)

(assert (=> b!933752 (=> (not res!629046) (not e!524334))))

(assert (=> b!933752 (= res!629046 (validKeyInArray!0 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!113021 () Bool)

(declare-fun res!629047 () Bool)

(assert (=> d!113021 (=> res!629047 e!524336)))

(assert (=> d!113021 (= res!629047 (bvsge #b00000000000000000000000000000000 (size!27512 _keys!1487)))))

(assert (=> d!113021 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19177) e!524336)))

(declare-fun b!933753 () Bool)

(declare-fun contains!5057 (List!19180 (_ BitVec 64)) Bool)

(assert (=> b!933753 (= e!524334 (contains!5057 Nil!19177 (select (arr!27052 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!933754 () Bool)

(assert (=> b!933754 (= e!524335 call!40596)))

(assert (= (and d!113021 (not res!629047)) b!933752))

(assert (= (and b!933752 res!629046) b!933753))

(assert (= (and b!933752 res!629048) b!933750))

(assert (= (and b!933750 c!97008) b!933751))

(assert (= (and b!933750 (not c!97008)) b!933754))

(assert (= (or b!933751 b!933754) bm!40593))

(assert (=> b!933750 m!868061))

(assert (=> b!933750 m!868061))

(assert (=> b!933750 m!868063))

(assert (=> bm!40593 m!868061))

(declare-fun m!868071 () Bool)

(assert (=> bm!40593 m!868071))

(assert (=> b!933752 m!868061))

(assert (=> b!933752 m!868061))

(assert (=> b!933752 m!868063))

(assert (=> b!933753 m!868061))

(assert (=> b!933753 m!868061))

(declare-fun m!868073 () Bool)

(assert (=> b!933753 m!868073))

(assert (=> b!933667 d!113021))

(declare-fun d!113023 () Bool)

(declare-fun e!524342 () Bool)

(assert (=> d!113023 e!524342))

(declare-fun res!629051 () Bool)

(assert (=> d!113023 (=> res!629051 e!524342)))

(declare-fun lt!420585 () Bool)

(assert (=> d!113023 (= res!629051 (not lt!420585))))

(declare-fun lt!420583 () Bool)

(assert (=> d!113023 (= lt!420585 lt!420583)))

(declare-fun lt!420586 () Unit!31502)

(declare-fun e!524341 () Unit!31502)

(assert (=> d!113023 (= lt!420586 e!524341)))

(declare-fun c!97011 () Bool)

(assert (=> d!113023 (= c!97011 lt!420583)))

(declare-fun containsKey!447 (List!19179 (_ BitVec 64)) Bool)

(assert (=> d!113023 (= lt!420583 (containsKey!447 (toList!6057 lt!420534) k0!1099))))

(assert (=> d!113023 (= (contains!5056 lt!420534 k0!1099) lt!420585)))

(declare-fun b!933761 () Bool)

(declare-fun lt!420584 () Unit!31502)

(assert (=> b!933761 (= e!524341 lt!420584)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!342 (List!19179 (_ BitVec 64)) Unit!31502)

(assert (=> b!933761 (= lt!420584 (lemmaContainsKeyImpliesGetValueByKeyDefined!342 (toList!6057 lt!420534) k0!1099))))

(declare-datatypes ((Option!488 0))(
  ( (Some!487 (v!12638 V!31809)) (None!486) )
))
(declare-fun isDefined!352 (Option!488) Bool)

(declare-fun getValueByKey!482 (List!19179 (_ BitVec 64)) Option!488)

(assert (=> b!933761 (isDefined!352 (getValueByKey!482 (toList!6057 lt!420534) k0!1099))))

(declare-fun b!933762 () Bool)

(declare-fun Unit!31504 () Unit!31502)

(assert (=> b!933762 (= e!524341 Unit!31504)))

(declare-fun b!933763 () Bool)

(assert (=> b!933763 (= e!524342 (isDefined!352 (getValueByKey!482 (toList!6057 lt!420534) k0!1099)))))

(assert (= (and d!113023 c!97011) b!933761))

(assert (= (and d!113023 (not c!97011)) b!933762))

(assert (= (and d!113023 (not res!629051)) b!933763))

(declare-fun m!868075 () Bool)

(assert (=> d!113023 m!868075))

(declare-fun m!868077 () Bool)

(assert (=> b!933761 m!868077))

(declare-fun m!868079 () Bool)

(assert (=> b!933761 m!868079))

(assert (=> b!933761 m!868079))

(declare-fun m!868081 () Bool)

(assert (=> b!933761 m!868081))

(assert (=> b!933763 m!868079))

(assert (=> b!933763 m!868079))

(assert (=> b!933763 m!868081))

(assert (=> b!933658 d!113023))

(declare-fun bm!40608 () Bool)

(declare-fun call!40616 () ListLongMap!12083)

(declare-fun call!40611 () ListLongMap!12083)

(assert (=> bm!40608 (= call!40616 call!40611)))

(declare-fun b!933806 () Bool)

(declare-fun e!524377 () Bool)

(assert (=> b!933806 (= e!524377 (validKeyInArray!0 (select (arr!27052 _keys!1487) from!1844)))))

(declare-fun bm!40609 () Bool)

(declare-fun call!40613 () Bool)

(declare-fun lt!420632 () ListLongMap!12083)

(assert (=> bm!40609 (= call!40613 (contains!5056 lt!420632 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933807 () Bool)

(declare-fun e!524371 () Unit!31502)

(declare-fun Unit!31505 () Unit!31502)

(assert (=> b!933807 (= e!524371 Unit!31505)))

(declare-fun bm!40611 () Bool)

(declare-fun call!40617 () ListLongMap!12083)

(declare-fun call!40614 () ListLongMap!12083)

(assert (=> bm!40611 (= call!40617 call!40614)))

(declare-fun b!933808 () Bool)

(declare-fun lt!420635 () Unit!31502)

(assert (=> b!933808 (= e!524371 lt!420635)))

(declare-fun lt!420647 () ListLongMap!12083)

(declare-fun getCurrentListMapNoExtraKeys!3315 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 32) Int) ListLongMap!12083)

(assert (=> b!933808 (= lt!420647 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!420641 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420641 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420645 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420645 (select (arr!27052 _keys!1487) from!1844))))

(declare-fun lt!420650 () Unit!31502)

(assert (=> b!933808 (= lt!420650 (addStillContains!513 lt!420647 lt!420641 zeroValue!1173 lt!420645))))

(assert (=> b!933808 (contains!5056 (+!2757 lt!420647 (tuple2!13373 lt!420641 zeroValue!1173)) lt!420645)))

(declare-fun lt!420648 () Unit!31502)

(assert (=> b!933808 (= lt!420648 lt!420650)))

(declare-fun lt!420640 () ListLongMap!12083)

(assert (=> b!933808 (= lt!420640 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!420633 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420633 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420631 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420631 (select (arr!27052 _keys!1487) from!1844))))

(declare-fun lt!420649 () Unit!31502)

(declare-fun addApplyDifferent!410 (ListLongMap!12083 (_ BitVec 64) V!31809 (_ BitVec 64)) Unit!31502)

(assert (=> b!933808 (= lt!420649 (addApplyDifferent!410 lt!420640 lt!420633 minValue!1173 lt!420631))))

(assert (=> b!933808 (= (apply!839 (+!2757 lt!420640 (tuple2!13373 lt!420633 minValue!1173)) lt!420631) (apply!839 lt!420640 lt!420631))))

(declare-fun lt!420634 () Unit!31502)

(assert (=> b!933808 (= lt!420634 lt!420649)))

(declare-fun lt!420637 () ListLongMap!12083)

(assert (=> b!933808 (= lt!420637 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!420651 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420644 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420644 (select (arr!27052 _keys!1487) from!1844))))

(declare-fun lt!420646 () Unit!31502)

(assert (=> b!933808 (= lt!420646 (addApplyDifferent!410 lt!420637 lt!420651 zeroValue!1173 lt!420644))))

(assert (=> b!933808 (= (apply!839 (+!2757 lt!420637 (tuple2!13373 lt!420651 zeroValue!1173)) lt!420644) (apply!839 lt!420637 lt!420644))))

(declare-fun lt!420636 () Unit!31502)

(assert (=> b!933808 (= lt!420636 lt!420646)))

(declare-fun lt!420652 () ListLongMap!12083)

(assert (=> b!933808 (= lt!420652 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!420639 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420639 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420642 () (_ BitVec 64))

(assert (=> b!933808 (= lt!420642 (select (arr!27052 _keys!1487) from!1844))))

(assert (=> b!933808 (= lt!420635 (addApplyDifferent!410 lt!420652 lt!420639 minValue!1173 lt!420642))))

(assert (=> b!933808 (= (apply!839 (+!2757 lt!420652 (tuple2!13373 lt!420639 minValue!1173)) lt!420642) (apply!839 lt!420652 lt!420642))))

(declare-fun b!933809 () Bool)

(declare-fun e!524379 () Bool)

(declare-fun e!524373 () Bool)

(assert (=> b!933809 (= e!524379 e!524373)))

(declare-fun res!629074 () Bool)

(assert (=> b!933809 (=> (not res!629074) (not e!524373))))

(assert (=> b!933809 (= res!629074 (contains!5056 lt!420632 (select (arr!27052 _keys!1487) from!1844)))))

(assert (=> b!933809 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27512 _keys!1487)))))

(declare-fun b!933810 () Bool)

(declare-fun c!97025 () Bool)

(assert (=> b!933810 (= c!97025 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!524369 () ListLongMap!12083)

(declare-fun e!524375 () ListLongMap!12083)

(assert (=> b!933810 (= e!524369 e!524375)))

(declare-fun b!933811 () Bool)

(assert (=> b!933811 (= e!524373 (= (apply!839 lt!420632 (select (arr!27052 _keys!1487) from!1844)) (get!14247 (select (arr!27053 _values!1231) from!1844) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!933811 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27513 _values!1231)))))

(assert (=> b!933811 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27512 _keys!1487)))))

(declare-fun b!933812 () Bool)

(declare-fun e!524381 () Bool)

(declare-fun e!524372 () Bool)

(assert (=> b!933812 (= e!524381 e!524372)))

(declare-fun res!629071 () Bool)

(assert (=> b!933812 (= res!629071 call!40613)))

(assert (=> b!933812 (=> (not res!629071) (not e!524372))))

(declare-fun b!933813 () Bool)

(declare-fun e!524378 () ListLongMap!12083)

(assert (=> b!933813 (= e!524378 e!524369)))

(declare-fun c!97028 () Bool)

(assert (=> b!933813 (= c!97028 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!933814 () Bool)

(declare-fun e!524376 () Bool)

(declare-fun call!40612 () Bool)

(assert (=> b!933814 (= e!524376 (not call!40612))))

(declare-fun b!933815 () Bool)

(declare-fun res!629073 () Bool)

(declare-fun e!524370 () Bool)

(assert (=> b!933815 (=> (not res!629073) (not e!524370))))

(assert (=> b!933815 (= res!629073 e!524379)))

(declare-fun res!629078 () Bool)

(assert (=> b!933815 (=> res!629078 e!524379)))

(declare-fun e!524374 () Bool)

(assert (=> b!933815 (= res!629078 (not e!524374))))

(declare-fun res!629072 () Bool)

(assert (=> b!933815 (=> (not res!629072) (not e!524374))))

(assert (=> b!933815 (= res!629072 (bvslt from!1844 (size!27512 _keys!1487)))))

(declare-fun b!933816 () Bool)

(declare-fun res!629070 () Bool)

(assert (=> b!933816 (=> (not res!629070) (not e!524370))))

(assert (=> b!933816 (= res!629070 e!524381)))

(declare-fun c!97024 () Bool)

(assert (=> b!933816 (= c!97024 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40612 () Bool)

(declare-fun call!40615 () ListLongMap!12083)

(assert (=> bm!40612 (= call!40611 call!40615)))

(declare-fun b!933817 () Bool)

(assert (=> b!933817 (= e!524378 (+!2757 call!40614 (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40613 () Bool)

(assert (=> bm!40613 (= call!40615 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933818 () Bool)

(assert (=> b!933818 (= e!524381 (not call!40613))))

(declare-fun b!933819 () Bool)

(assert (=> b!933819 (= e!524370 e!524376)))

(declare-fun c!97026 () Bool)

(assert (=> b!933819 (= c!97026 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113025 () Bool)

(assert (=> d!113025 e!524370))

(declare-fun res!629077 () Bool)

(assert (=> d!113025 (=> (not res!629077) (not e!524370))))

(assert (=> d!113025 (= res!629077 (or (bvsge from!1844 (size!27512 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27512 _keys!1487)))))))

(declare-fun lt!420638 () ListLongMap!12083)

(assert (=> d!113025 (= lt!420632 lt!420638)))

(declare-fun lt!420643 () Unit!31502)

(assert (=> d!113025 (= lt!420643 e!524371)))

(declare-fun c!97027 () Bool)

(assert (=> d!113025 (= c!97027 e!524377)))

(declare-fun res!629076 () Bool)

(assert (=> d!113025 (=> (not res!629076) (not e!524377))))

(assert (=> d!113025 (= res!629076 (bvslt from!1844 (size!27512 _keys!1487)))))

(assert (=> d!113025 (= lt!420638 e!524378)))

(declare-fun c!97029 () Bool)

(assert (=> d!113025 (= c!97029 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113025 (validMask!0 mask!1881)))

(assert (=> d!113025 (= (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!420632)))

(declare-fun bm!40610 () Bool)

(assert (=> bm!40610 (= call!40612 (contains!5056 lt!420632 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933820 () Bool)

(assert (=> b!933820 (= e!524375 call!40617)))

(declare-fun b!933821 () Bool)

(declare-fun e!524380 () Bool)

(assert (=> b!933821 (= e!524376 e!524380)))

(declare-fun res!629075 () Bool)

(assert (=> b!933821 (= res!629075 call!40612)))

(assert (=> b!933821 (=> (not res!629075) (not e!524380))))

(declare-fun b!933822 () Bool)

(assert (=> b!933822 (= e!524374 (validKeyInArray!0 (select (arr!27052 _keys!1487) from!1844)))))

(declare-fun b!933823 () Bool)

(assert (=> b!933823 (= e!524380 (= (apply!839 lt!420632 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!933824 () Bool)

(assert (=> b!933824 (= e!524375 call!40616)))

(declare-fun bm!40614 () Bool)

(assert (=> bm!40614 (= call!40614 (+!2757 (ite c!97029 call!40615 (ite c!97028 call!40611 call!40616)) (ite (or c!97029 c!97028) (tuple2!13373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!933825 () Bool)

(assert (=> b!933825 (= e!524372 (= (apply!839 lt!420632 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!933826 () Bool)

(assert (=> b!933826 (= e!524369 call!40617)))

(assert (= (and d!113025 c!97029) b!933817))

(assert (= (and d!113025 (not c!97029)) b!933813))

(assert (= (and b!933813 c!97028) b!933826))

(assert (= (and b!933813 (not c!97028)) b!933810))

(assert (= (and b!933810 c!97025) b!933820))

(assert (= (and b!933810 (not c!97025)) b!933824))

(assert (= (or b!933820 b!933824) bm!40608))

(assert (= (or b!933826 bm!40608) bm!40612))

(assert (= (or b!933826 b!933820) bm!40611))

(assert (= (or b!933817 bm!40612) bm!40613))

(assert (= (or b!933817 bm!40611) bm!40614))

(assert (= (and d!113025 res!629076) b!933806))

(assert (= (and d!113025 c!97027) b!933808))

(assert (= (and d!113025 (not c!97027)) b!933807))

(assert (= (and d!113025 res!629077) b!933815))

(assert (= (and b!933815 res!629072) b!933822))

(assert (= (and b!933815 (not res!629078)) b!933809))

(assert (= (and b!933809 res!629074) b!933811))

(assert (= (and b!933815 res!629073) b!933816))

(assert (= (and b!933816 c!97024) b!933812))

(assert (= (and b!933816 (not c!97024)) b!933818))

(assert (= (and b!933812 res!629071) b!933825))

(assert (= (or b!933812 b!933818) bm!40609))

(assert (= (and b!933816 res!629070) b!933819))

(assert (= (and b!933819 c!97026) b!933821))

(assert (= (and b!933819 (not c!97026)) b!933814))

(assert (= (and b!933821 res!629075) b!933823))

(assert (= (or b!933821 b!933814) bm!40610))

(declare-fun b_lambda!13995 () Bool)

(assert (=> (not b_lambda!13995) (not b!933811)))

(assert (=> b!933811 t!27355))

(declare-fun b_and!28835 () Bool)

(assert (= b_and!28829 (and (=> t!27355 result!11871) b_and!28835)))

(assert (=> b!933806 m!868055))

(assert (=> b!933806 m!868055))

(declare-fun m!868083 () Bool)

(assert (=> b!933806 m!868083))

(assert (=> b!933809 m!868055))

(assert (=> b!933809 m!868055))

(declare-fun m!868085 () Bool)

(assert (=> b!933809 m!868085))

(declare-fun m!868087 () Bool)

(assert (=> b!933808 m!868087))

(declare-fun m!868089 () Bool)

(assert (=> b!933808 m!868089))

(declare-fun m!868091 () Bool)

(assert (=> b!933808 m!868091))

(declare-fun m!868093 () Bool)

(assert (=> b!933808 m!868093))

(declare-fun m!868095 () Bool)

(assert (=> b!933808 m!868095))

(declare-fun m!868097 () Bool)

(assert (=> b!933808 m!868097))

(assert (=> b!933808 m!868055))

(assert (=> b!933808 m!868097))

(declare-fun m!868099 () Bool)

(assert (=> b!933808 m!868099))

(declare-fun m!868101 () Bool)

(assert (=> b!933808 m!868101))

(assert (=> b!933808 m!868087))

(declare-fun m!868103 () Bool)

(assert (=> b!933808 m!868103))

(declare-fun m!868105 () Bool)

(assert (=> b!933808 m!868105))

(declare-fun m!868107 () Bool)

(assert (=> b!933808 m!868107))

(declare-fun m!868109 () Bool)

(assert (=> b!933808 m!868109))

(assert (=> b!933808 m!868105))

(declare-fun m!868111 () Bool)

(assert (=> b!933808 m!868111))

(declare-fun m!868113 () Bool)

(assert (=> b!933808 m!868113))

(declare-fun m!868115 () Bool)

(assert (=> b!933808 m!868115))

(assert (=> b!933808 m!868095))

(declare-fun m!868117 () Bool)

(assert (=> b!933808 m!868117))

(assert (=> bm!40613 m!868093))

(declare-fun m!868119 () Bool)

(assert (=> b!933823 m!868119))

(declare-fun m!868121 () Bool)

(assert (=> b!933825 m!868121))

(declare-fun m!868123 () Bool)

(assert (=> bm!40610 m!868123))

(assert (=> d!113025 m!867963))

(assert (=> b!933822 m!868055))

(assert (=> b!933822 m!868055))

(assert (=> b!933822 m!868083))

(assert (=> b!933811 m!867983))

(declare-fun m!868125 () Bool)

(assert (=> b!933811 m!868125))

(assert (=> b!933811 m!868055))

(assert (=> b!933811 m!868125))

(assert (=> b!933811 m!867983))

(declare-fun m!868127 () Bool)

(assert (=> b!933811 m!868127))

(assert (=> b!933811 m!868055))

(declare-fun m!868129 () Bool)

(assert (=> b!933811 m!868129))

(declare-fun m!868131 () Bool)

(assert (=> bm!40609 m!868131))

(declare-fun m!868133 () Bool)

(assert (=> b!933817 m!868133))

(declare-fun m!868135 () Bool)

(assert (=> bm!40614 m!868135))

(assert (=> b!933658 d!113025))

(declare-fun d!113027 () Bool)

(assert (=> d!113027 (= (validKeyInArray!0 lt!420538) (and (not (= lt!420538 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!420538 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!933669 d!113027))

(declare-fun d!113029 () Bool)

(declare-fun get!14248 (Option!488) V!31809)

(assert (=> d!113029 (= (apply!839 lt!420534 k0!1099) (get!14248 (getValueByKey!482 (toList!6057 lt!420534) k0!1099)))))

(declare-fun bs!26219 () Bool)

(assert (= bs!26219 d!113029))

(assert (=> bs!26219 m!868079))

(assert (=> bs!26219 m!868079))

(declare-fun m!868137 () Bool)

(assert (=> bs!26219 m!868137))

(assert (=> b!933660 d!113029))

(declare-fun d!113031 () Bool)

(assert (=> d!113031 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79466 d!113031))

(declare-fun d!113033 () Bool)

(assert (=> d!113033 (= (array_inv!21008 _values!1231) (bvsge (size!27513 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79466 d!113033))

(declare-fun d!113035 () Bool)

(assert (=> d!113035 (= (array_inv!21009 _keys!1487) (bvsge (size!27512 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79466 d!113035))

(declare-fun d!113037 () Bool)

(declare-fun e!524384 () Bool)

(assert (=> d!113037 e!524384))

(declare-fun res!629081 () Bool)

(assert (=> d!113037 (=> (not res!629081) (not e!524384))))

(assert (=> d!113037 (= res!629081 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27513 _values!1231))))))

(declare-fun lt!420655 () Unit!31502)

(declare-fun choose!1549 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 32) Int) Unit!31502)

(assert (=> d!113037 (= lt!420655 (choose!1549 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113037 (validMask!0 mask!1881)))

(assert (=> d!113037 (= (lemmaListMapRecursiveValidKeyArray!192 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!420655)))

(declare-fun b!933829 () Bool)

(assert (=> b!933829 (= e!524384 (= (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2757 (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13373 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14247 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113037 res!629081) b!933829))

(declare-fun b_lambda!13997 () Bool)

(assert (=> (not b_lambda!13997) (not b!933829)))

(assert (=> b!933829 t!27355))

(declare-fun b_and!28837 () Bool)

(assert (= b_and!28835 (and (=> t!27355 result!11871) b_and!28837)))

(declare-fun m!868139 () Bool)

(assert (=> d!113037 m!868139))

(assert (=> d!113037 m!867963))

(assert (=> b!933829 m!867981))

(assert (=> b!933829 m!867989))

(assert (=> b!933829 m!867983))

(declare-fun m!868141 () Bool)

(assert (=> b!933829 m!868141))

(declare-fun m!868143 () Bool)

(assert (=> b!933829 m!868143))

(assert (=> b!933829 m!868141))

(assert (=> b!933829 m!868001))

(assert (=> b!933829 m!867981))

(assert (=> b!933829 m!867983))

(assert (=> b!933829 m!867987))

(assert (=> b!933665 d!113037))

(declare-fun b!933830 () Bool)

(declare-fun e!524385 () Bool)

(declare-fun e!524387 () Bool)

(assert (=> b!933830 (= e!524385 e!524387)))

(declare-fun c!97030 () Bool)

(assert (=> b!933830 (= c!97030 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun call!40618 () Bool)

(declare-fun bm!40615 () Bool)

(assert (=> bm!40615 (= call!40618 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97030 (Cons!19176 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19177) Nil!19177)))))

(declare-fun b!933831 () Bool)

(assert (=> b!933831 (= e!524387 call!40618)))

(declare-fun b!933832 () Bool)

(declare-fun e!524388 () Bool)

(assert (=> b!933832 (= e!524388 e!524385)))

(declare-fun res!629084 () Bool)

(assert (=> b!933832 (=> (not res!629084) (not e!524385))))

(declare-fun e!524386 () Bool)

(assert (=> b!933832 (= res!629084 (not e!524386))))

(declare-fun res!629082 () Bool)

(assert (=> b!933832 (=> (not res!629082) (not e!524386))))

(assert (=> b!933832 (= res!629082 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun d!113039 () Bool)

(declare-fun res!629083 () Bool)

(assert (=> d!113039 (=> res!629083 e!524388)))

(assert (=> d!113039 (= res!629083 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(assert (=> d!113039 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19177) e!524388)))

(declare-fun b!933833 () Bool)

(assert (=> b!933833 (= e!524386 (contains!5057 Nil!19177 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!933834 () Bool)

(assert (=> b!933834 (= e!524387 call!40618)))

(assert (= (and d!113039 (not res!629083)) b!933832))

(assert (= (and b!933832 res!629082) b!933833))

(assert (= (and b!933832 res!629084) b!933830))

(assert (= (and b!933830 c!97030) b!933831))

(assert (= (and b!933830 (not c!97030)) b!933834))

(assert (= (or b!933831 b!933834) bm!40615))

(assert (=> b!933830 m!868001))

(assert (=> b!933830 m!868001))

(declare-fun m!868145 () Bool)

(assert (=> b!933830 m!868145))

(assert (=> bm!40615 m!868001))

(declare-fun m!868147 () Bool)

(assert (=> bm!40615 m!868147))

(assert (=> b!933832 m!868001))

(assert (=> b!933832 m!868001))

(assert (=> b!933832 m!868145))

(assert (=> b!933833 m!868001))

(assert (=> b!933833 m!868001))

(declare-fun m!868149 () Bool)

(assert (=> b!933833 m!868149))

(assert (=> b!933665 d!113039))

(declare-fun d!113041 () Bool)

(declare-fun e!524391 () Bool)

(assert (=> d!113041 e!524391))

(declare-fun res!629089 () Bool)

(assert (=> d!113041 (=> (not res!629089) (not e!524391))))

(declare-fun lt!420665 () ListLongMap!12083)

(assert (=> d!113041 (= res!629089 (contains!5056 lt!420665 (_1!6696 lt!420539)))))

(declare-fun lt!420664 () List!19179)

(assert (=> d!113041 (= lt!420665 (ListLongMap!12084 lt!420664))))

(declare-fun lt!420667 () Unit!31502)

(declare-fun lt!420666 () Unit!31502)

(assert (=> d!113041 (= lt!420667 lt!420666)))

(assert (=> d!113041 (= (getValueByKey!482 lt!420664 (_1!6696 lt!420539)) (Some!487 (_2!6696 lt!420539)))))

(declare-fun lemmaContainsTupThenGetReturnValue!256 (List!19179 (_ BitVec 64) V!31809) Unit!31502)

(assert (=> d!113041 (= lt!420666 (lemmaContainsTupThenGetReturnValue!256 lt!420664 (_1!6696 lt!420539) (_2!6696 lt!420539)))))

(declare-fun insertStrictlySorted!312 (List!19179 (_ BitVec 64) V!31809) List!19179)

(assert (=> d!113041 (= lt!420664 (insertStrictlySorted!312 (toList!6057 (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6696 lt!420539) (_2!6696 lt!420539)))))

(assert (=> d!113041 (= (+!2757 (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420539) lt!420665)))

(declare-fun b!933839 () Bool)

(declare-fun res!629090 () Bool)

(assert (=> b!933839 (=> (not res!629090) (not e!524391))))

(assert (=> b!933839 (= res!629090 (= (getValueByKey!482 (toList!6057 lt!420665) (_1!6696 lt!420539)) (Some!487 (_2!6696 lt!420539))))))

(declare-fun b!933840 () Bool)

(declare-fun contains!5058 (List!19179 tuple2!13372) Bool)

(assert (=> b!933840 (= e!524391 (contains!5058 (toList!6057 lt!420665) lt!420539))))

(assert (= (and d!113041 res!629089) b!933839))

(assert (= (and b!933839 res!629090) b!933840))

(declare-fun m!868151 () Bool)

(assert (=> d!113041 m!868151))

(declare-fun m!868153 () Bool)

(assert (=> d!113041 m!868153))

(declare-fun m!868155 () Bool)

(assert (=> d!113041 m!868155))

(declare-fun m!868157 () Bool)

(assert (=> d!113041 m!868157))

(declare-fun m!868159 () Bool)

(assert (=> b!933839 m!868159))

(declare-fun m!868161 () Bool)

(assert (=> b!933840 m!868161))

(assert (=> b!933665 d!113041))

(declare-fun d!113043 () Bool)

(declare-fun e!524394 () Bool)

(assert (=> d!113043 e!524394))

(declare-fun c!97033 () Bool)

(assert (=> d!113043 (= c!97033 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!420670 () Unit!31502)

(declare-fun choose!1550 (array!56224 array!56226 (_ BitVec 32) (_ BitVec 32) V!31809 V!31809 (_ BitVec 64) (_ BitVec 32) Int) Unit!31502)

(assert (=> d!113043 (= lt!420670 (choose!1550 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113043 (validMask!0 mask!1881)))

(assert (=> d!113043 (= (lemmaListMapContainsThenArrayContainsFrom!270 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!420670)))

(declare-fun b!933845 () Bool)

(assert (=> b!933845 (= e!524394 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!933846 () Bool)

(assert (=> b!933846 (= e!524394 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113043 c!97033) b!933845))

(assert (= (and d!113043 (not c!97033)) b!933846))

(declare-fun m!868163 () Bool)

(assert (=> d!113043 m!868163))

(assert (=> d!113043 m!867963))

(assert (=> b!933845 m!867969))

(assert (=> b!933665 d!113043))

(declare-fun d!113045 () Bool)

(declare-fun e!524395 () Bool)

(assert (=> d!113045 e!524395))

(declare-fun res!629091 () Bool)

(assert (=> d!113045 (=> (not res!629091) (not e!524395))))

(declare-fun lt!420672 () ListLongMap!12083)

(assert (=> d!113045 (= res!629091 (contains!5056 lt!420672 (_1!6696 lt!420539)))))

(declare-fun lt!420671 () List!19179)

(assert (=> d!113045 (= lt!420672 (ListLongMap!12084 lt!420671))))

(declare-fun lt!420674 () Unit!31502)

(declare-fun lt!420673 () Unit!31502)

(assert (=> d!113045 (= lt!420674 lt!420673)))

(assert (=> d!113045 (= (getValueByKey!482 lt!420671 (_1!6696 lt!420539)) (Some!487 (_2!6696 lt!420539)))))

(assert (=> d!113045 (= lt!420673 (lemmaContainsTupThenGetReturnValue!256 lt!420671 (_1!6696 lt!420539) (_2!6696 lt!420539)))))

(assert (=> d!113045 (= lt!420671 (insertStrictlySorted!312 (toList!6057 lt!420534) (_1!6696 lt!420539) (_2!6696 lt!420539)))))

(assert (=> d!113045 (= (+!2757 lt!420534 lt!420539) lt!420672)))

(declare-fun b!933847 () Bool)

(declare-fun res!629092 () Bool)

(assert (=> b!933847 (=> (not res!629092) (not e!524395))))

(assert (=> b!933847 (= res!629092 (= (getValueByKey!482 (toList!6057 lt!420672) (_1!6696 lt!420539)) (Some!487 (_2!6696 lt!420539))))))

(declare-fun b!933848 () Bool)

(assert (=> b!933848 (= e!524395 (contains!5058 (toList!6057 lt!420672) lt!420539))))

(assert (= (and d!113045 res!629091) b!933847))

(assert (= (and b!933847 res!629092) b!933848))

(declare-fun m!868165 () Bool)

(assert (=> d!113045 m!868165))

(declare-fun m!868167 () Bool)

(assert (=> d!113045 m!868167))

(declare-fun m!868169 () Bool)

(assert (=> d!113045 m!868169))

(declare-fun m!868171 () Bool)

(assert (=> d!113045 m!868171))

(declare-fun m!868173 () Bool)

(assert (=> b!933847 m!868173))

(declare-fun m!868175 () Bool)

(assert (=> b!933848 m!868175))

(assert (=> b!933665 d!113045))

(declare-fun d!113047 () Bool)

(assert (=> d!113047 (contains!5056 (+!2757 lt!420534 (tuple2!13373 lt!420538 lt!420537)) k0!1099)))

(declare-fun lt!420677 () Unit!31502)

(declare-fun choose!1551 (ListLongMap!12083 (_ BitVec 64) V!31809 (_ BitVec 64)) Unit!31502)

(assert (=> d!113047 (= lt!420677 (choose!1551 lt!420534 lt!420538 lt!420537 k0!1099))))

(assert (=> d!113047 (contains!5056 lt!420534 k0!1099)))

(assert (=> d!113047 (= (addStillContains!513 lt!420534 lt!420538 lt!420537 k0!1099) lt!420677)))

(declare-fun bs!26220 () Bool)

(assert (= bs!26220 d!113047))

(declare-fun m!868177 () Bool)

(assert (=> bs!26220 m!868177))

(assert (=> bs!26220 m!868177))

(declare-fun m!868179 () Bool)

(assert (=> bs!26220 m!868179))

(declare-fun m!868181 () Bool)

(assert (=> bs!26220 m!868181))

(assert (=> bs!26220 m!867951))

(assert (=> b!933665 d!113047))

(declare-fun bm!40616 () Bool)

(declare-fun call!40624 () ListLongMap!12083)

(declare-fun call!40619 () ListLongMap!12083)

(assert (=> bm!40616 (= call!40624 call!40619)))

(declare-fun b!933850 () Bool)

(declare-fun e!524404 () Bool)

(assert (=> b!933850 (= e!524404 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun bm!40617 () Bool)

(declare-fun call!40621 () Bool)

(declare-fun lt!420679 () ListLongMap!12083)

(assert (=> bm!40617 (= call!40621 (contains!5056 lt!420679 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933851 () Bool)

(declare-fun e!524398 () Unit!31502)

(declare-fun Unit!31506 () Unit!31502)

(assert (=> b!933851 (= e!524398 Unit!31506)))

(declare-fun bm!40619 () Bool)

(declare-fun call!40625 () ListLongMap!12083)

(declare-fun call!40622 () ListLongMap!12083)

(assert (=> bm!40619 (= call!40625 call!40622)))

(declare-fun b!933852 () Bool)

(declare-fun lt!420682 () Unit!31502)

(assert (=> b!933852 (= e!524398 lt!420682)))

(declare-fun lt!420694 () ListLongMap!12083)

(assert (=> b!933852 (= lt!420694 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!420688 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420688 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420692 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420692 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420697 () Unit!31502)

(assert (=> b!933852 (= lt!420697 (addStillContains!513 lt!420694 lt!420688 zeroValue!1173 lt!420692))))

(assert (=> b!933852 (contains!5056 (+!2757 lt!420694 (tuple2!13373 lt!420688 zeroValue!1173)) lt!420692)))

(declare-fun lt!420695 () Unit!31502)

(assert (=> b!933852 (= lt!420695 lt!420697)))

(declare-fun lt!420687 () ListLongMap!12083)

(assert (=> b!933852 (= lt!420687 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!420680 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420680 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420678 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420678 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420696 () Unit!31502)

(assert (=> b!933852 (= lt!420696 (addApplyDifferent!410 lt!420687 lt!420680 minValue!1173 lt!420678))))

(assert (=> b!933852 (= (apply!839 (+!2757 lt!420687 (tuple2!13373 lt!420680 minValue!1173)) lt!420678) (apply!839 lt!420687 lt!420678))))

(declare-fun lt!420681 () Unit!31502)

(assert (=> b!933852 (= lt!420681 lt!420696)))

(declare-fun lt!420684 () ListLongMap!12083)

(assert (=> b!933852 (= lt!420684 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!420698 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420698 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420691 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420691 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420693 () Unit!31502)

(assert (=> b!933852 (= lt!420693 (addApplyDifferent!410 lt!420684 lt!420698 zeroValue!1173 lt!420691))))

(assert (=> b!933852 (= (apply!839 (+!2757 lt!420684 (tuple2!13373 lt!420698 zeroValue!1173)) lt!420691) (apply!839 lt!420684 lt!420691))))

(declare-fun lt!420683 () Unit!31502)

(assert (=> b!933852 (= lt!420683 lt!420693)))

(declare-fun lt!420699 () ListLongMap!12083)

(assert (=> b!933852 (= lt!420699 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!420686 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420686 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420689 () (_ BitVec 64))

(assert (=> b!933852 (= lt!420689 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!933852 (= lt!420682 (addApplyDifferent!410 lt!420699 lt!420686 minValue!1173 lt!420689))))

(assert (=> b!933852 (= (apply!839 (+!2757 lt!420699 (tuple2!13373 lt!420686 minValue!1173)) lt!420689) (apply!839 lt!420699 lt!420689))))

(declare-fun b!933853 () Bool)

(declare-fun e!524406 () Bool)

(declare-fun e!524400 () Bool)

(assert (=> b!933853 (= e!524406 e!524400)))

(declare-fun res!629097 () Bool)

(assert (=> b!933853 (=> (not res!629097) (not e!524400))))

(assert (=> b!933853 (= res!629097 (contains!5056 lt!420679 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!933853 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(declare-fun b!933854 () Bool)

(declare-fun c!97035 () Bool)

(assert (=> b!933854 (= c!97035 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!524396 () ListLongMap!12083)

(declare-fun e!524402 () ListLongMap!12083)

(assert (=> b!933854 (= e!524396 e!524402)))

(declare-fun b!933855 () Bool)

(assert (=> b!933855 (= e!524400 (= (apply!839 lt!420679 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14247 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!933855 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27513 _values!1231)))))

(assert (=> b!933855 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(declare-fun b!933856 () Bool)

(declare-fun e!524408 () Bool)

(declare-fun e!524399 () Bool)

(assert (=> b!933856 (= e!524408 e!524399)))

(declare-fun res!629094 () Bool)

(assert (=> b!933856 (= res!629094 call!40621)))

(assert (=> b!933856 (=> (not res!629094) (not e!524399))))

(declare-fun b!933857 () Bool)

(declare-fun e!524405 () ListLongMap!12083)

(assert (=> b!933857 (= e!524405 e!524396)))

(declare-fun c!97038 () Bool)

(assert (=> b!933857 (= c!97038 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!933858 () Bool)

(declare-fun e!524403 () Bool)

(declare-fun call!40620 () Bool)

(assert (=> b!933858 (= e!524403 (not call!40620))))

(declare-fun b!933859 () Bool)

(declare-fun res!629096 () Bool)

(declare-fun e!524397 () Bool)

(assert (=> b!933859 (=> (not res!629096) (not e!524397))))

(assert (=> b!933859 (= res!629096 e!524406)))

(declare-fun res!629101 () Bool)

(assert (=> b!933859 (=> res!629101 e!524406)))

(declare-fun e!524401 () Bool)

(assert (=> b!933859 (= res!629101 (not e!524401))))

(declare-fun res!629095 () Bool)

(assert (=> b!933859 (=> (not res!629095) (not e!524401))))

(assert (=> b!933859 (= res!629095 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(declare-fun b!933860 () Bool)

(declare-fun res!629093 () Bool)

(assert (=> b!933860 (=> (not res!629093) (not e!524397))))

(assert (=> b!933860 (= res!629093 e!524408)))

(declare-fun c!97034 () Bool)

(assert (=> b!933860 (= c!97034 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40620 () Bool)

(declare-fun call!40623 () ListLongMap!12083)

(assert (=> bm!40620 (= call!40619 call!40623)))

(declare-fun b!933861 () Bool)

(assert (=> b!933861 (= e!524405 (+!2757 call!40622 (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40621 () Bool)

(assert (=> bm!40621 (= call!40623 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933862 () Bool)

(assert (=> b!933862 (= e!524408 (not call!40621))))

(declare-fun b!933863 () Bool)

(assert (=> b!933863 (= e!524397 e!524403)))

(declare-fun c!97036 () Bool)

(assert (=> b!933863 (= c!97036 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113049 () Bool)

(assert (=> d!113049 e!524397))

(declare-fun res!629100 () Bool)

(assert (=> d!113049 (=> (not res!629100) (not e!524397))))

(assert (=> d!113049 (= res!629100 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))))

(declare-fun lt!420685 () ListLongMap!12083)

(assert (=> d!113049 (= lt!420679 lt!420685)))

(declare-fun lt!420690 () Unit!31502)

(assert (=> d!113049 (= lt!420690 e!524398)))

(declare-fun c!97037 () Bool)

(assert (=> d!113049 (= c!97037 e!524404)))

(declare-fun res!629099 () Bool)

(assert (=> d!113049 (=> (not res!629099) (not e!524404))))

(assert (=> d!113049 (= res!629099 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27512 _keys!1487)))))

(assert (=> d!113049 (= lt!420685 e!524405)))

(declare-fun c!97039 () Bool)

(assert (=> d!113049 (= c!97039 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113049 (validMask!0 mask!1881)))

(assert (=> d!113049 (= (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!420679)))

(declare-fun bm!40618 () Bool)

(assert (=> bm!40618 (= call!40620 (contains!5056 lt!420679 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933864 () Bool)

(assert (=> b!933864 (= e!524402 call!40625)))

(declare-fun b!933865 () Bool)

(declare-fun e!524407 () Bool)

(assert (=> b!933865 (= e!524403 e!524407)))

(declare-fun res!629098 () Bool)

(assert (=> b!933865 (= res!629098 call!40620)))

(assert (=> b!933865 (=> (not res!629098) (not e!524407))))

(declare-fun b!933866 () Bool)

(assert (=> b!933866 (= e!524401 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!933867 () Bool)

(assert (=> b!933867 (= e!524407 (= (apply!839 lt!420679 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!933868 () Bool)

(assert (=> b!933868 (= e!524402 call!40624)))

(declare-fun bm!40622 () Bool)

(assert (=> bm!40622 (= call!40622 (+!2757 (ite c!97039 call!40623 (ite c!97038 call!40619 call!40624)) (ite (or c!97039 c!97038) (tuple2!13373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!933869 () Bool)

(assert (=> b!933869 (= e!524399 (= (apply!839 lt!420679 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!933870 () Bool)

(assert (=> b!933870 (= e!524396 call!40625)))

(assert (= (and d!113049 c!97039) b!933861))

(assert (= (and d!113049 (not c!97039)) b!933857))

(assert (= (and b!933857 c!97038) b!933870))

(assert (= (and b!933857 (not c!97038)) b!933854))

(assert (= (and b!933854 c!97035) b!933864))

(assert (= (and b!933854 (not c!97035)) b!933868))

(assert (= (or b!933864 b!933868) bm!40616))

(assert (= (or b!933870 bm!40616) bm!40620))

(assert (= (or b!933870 b!933864) bm!40619))

(assert (= (or b!933861 bm!40620) bm!40621))

(assert (= (or b!933861 bm!40619) bm!40622))

(assert (= (and d!113049 res!629099) b!933850))

(assert (= (and d!113049 c!97037) b!933852))

(assert (= (and d!113049 (not c!97037)) b!933851))

(assert (= (and d!113049 res!629100) b!933859))

(assert (= (and b!933859 res!629095) b!933866))

(assert (= (and b!933859 (not res!629101)) b!933853))

(assert (= (and b!933853 res!629097) b!933855))

(assert (= (and b!933859 res!629096) b!933860))

(assert (= (and b!933860 c!97034) b!933856))

(assert (= (and b!933860 (not c!97034)) b!933862))

(assert (= (and b!933856 res!629094) b!933869))

(assert (= (or b!933856 b!933862) bm!40617))

(assert (= (and b!933860 res!629093) b!933863))

(assert (= (and b!933863 c!97036) b!933865))

(assert (= (and b!933863 (not c!97036)) b!933858))

(assert (= (and b!933865 res!629098) b!933867))

(assert (= (or b!933865 b!933858) bm!40618))

(declare-fun b_lambda!13999 () Bool)

(assert (=> (not b_lambda!13999) (not b!933855)))

(assert (=> b!933855 t!27355))

(declare-fun b_and!28839 () Bool)

(assert (= b_and!28837 (and (=> t!27355 result!11871) b_and!28839)))

(assert (=> b!933850 m!868001))

(assert (=> b!933850 m!868001))

(assert (=> b!933850 m!868145))

(assert (=> b!933853 m!868001))

(assert (=> b!933853 m!868001))

(declare-fun m!868183 () Bool)

(assert (=> b!933853 m!868183))

(declare-fun m!868185 () Bool)

(assert (=> b!933852 m!868185))

(declare-fun m!868187 () Bool)

(assert (=> b!933852 m!868187))

(declare-fun m!868189 () Bool)

(assert (=> b!933852 m!868189))

(declare-fun m!868191 () Bool)

(assert (=> b!933852 m!868191))

(declare-fun m!868193 () Bool)

(assert (=> b!933852 m!868193))

(declare-fun m!868195 () Bool)

(assert (=> b!933852 m!868195))

(assert (=> b!933852 m!868001))

(assert (=> b!933852 m!868195))

(declare-fun m!868197 () Bool)

(assert (=> b!933852 m!868197))

(declare-fun m!868199 () Bool)

(assert (=> b!933852 m!868199))

(assert (=> b!933852 m!868185))

(declare-fun m!868201 () Bool)

(assert (=> b!933852 m!868201))

(declare-fun m!868203 () Bool)

(assert (=> b!933852 m!868203))

(declare-fun m!868205 () Bool)

(assert (=> b!933852 m!868205))

(declare-fun m!868207 () Bool)

(assert (=> b!933852 m!868207))

(assert (=> b!933852 m!868203))

(declare-fun m!868209 () Bool)

(assert (=> b!933852 m!868209))

(declare-fun m!868211 () Bool)

(assert (=> b!933852 m!868211))

(declare-fun m!868213 () Bool)

(assert (=> b!933852 m!868213))

(assert (=> b!933852 m!868193))

(declare-fun m!868215 () Bool)

(assert (=> b!933852 m!868215))

(assert (=> bm!40621 m!868191))

(declare-fun m!868217 () Bool)

(assert (=> b!933867 m!868217))

(declare-fun m!868219 () Bool)

(assert (=> b!933869 m!868219))

(declare-fun m!868221 () Bool)

(assert (=> bm!40618 m!868221))

(assert (=> d!113049 m!867963))

(assert (=> b!933866 m!868001))

(assert (=> b!933866 m!868001))

(assert (=> b!933866 m!868145))

(assert (=> b!933855 m!867983))

(assert (=> b!933855 m!867981))

(assert (=> b!933855 m!868001))

(assert (=> b!933855 m!867981))

(assert (=> b!933855 m!867983))

(assert (=> b!933855 m!867987))

(assert (=> b!933855 m!868001))

(declare-fun m!868223 () Bool)

(assert (=> b!933855 m!868223))

(declare-fun m!868225 () Bool)

(assert (=> bm!40617 m!868225))

(declare-fun m!868227 () Bool)

(assert (=> b!933861 m!868227))

(declare-fun m!868229 () Bool)

(assert (=> bm!40622 m!868229))

(assert (=> b!933665 d!113049))

(declare-fun d!113051 () Bool)

(declare-fun e!524410 () Bool)

(assert (=> d!113051 e!524410))

(declare-fun res!629102 () Bool)

(assert (=> d!113051 (=> res!629102 e!524410)))

(declare-fun lt!420702 () Bool)

(assert (=> d!113051 (= res!629102 (not lt!420702))))

(declare-fun lt!420700 () Bool)

(assert (=> d!113051 (= lt!420702 lt!420700)))

(declare-fun lt!420703 () Unit!31502)

(declare-fun e!524409 () Unit!31502)

(assert (=> d!113051 (= lt!420703 e!524409)))

(declare-fun c!97040 () Bool)

(assert (=> d!113051 (= c!97040 lt!420700)))

(assert (=> d!113051 (= lt!420700 (containsKey!447 (toList!6057 (+!2757 lt!420534 lt!420539)) k0!1099))))

(assert (=> d!113051 (= (contains!5056 (+!2757 lt!420534 lt!420539) k0!1099) lt!420702)))

(declare-fun b!933871 () Bool)

(declare-fun lt!420701 () Unit!31502)

(assert (=> b!933871 (= e!524409 lt!420701)))

(assert (=> b!933871 (= lt!420701 (lemmaContainsKeyImpliesGetValueByKeyDefined!342 (toList!6057 (+!2757 lt!420534 lt!420539)) k0!1099))))

(assert (=> b!933871 (isDefined!352 (getValueByKey!482 (toList!6057 (+!2757 lt!420534 lt!420539)) k0!1099))))

(declare-fun b!933872 () Bool)

(declare-fun Unit!31507 () Unit!31502)

(assert (=> b!933872 (= e!524409 Unit!31507)))

(declare-fun b!933873 () Bool)

(assert (=> b!933873 (= e!524410 (isDefined!352 (getValueByKey!482 (toList!6057 (+!2757 lt!420534 lt!420539)) k0!1099)))))

(assert (= (and d!113051 c!97040) b!933871))

(assert (= (and d!113051 (not c!97040)) b!933872))

(assert (= (and d!113051 (not res!629102)) b!933873))

(declare-fun m!868231 () Bool)

(assert (=> d!113051 m!868231))

(declare-fun m!868233 () Bool)

(assert (=> b!933871 m!868233))

(declare-fun m!868235 () Bool)

(assert (=> b!933871 m!868235))

(assert (=> b!933871 m!868235))

(declare-fun m!868237 () Bool)

(assert (=> b!933871 m!868237))

(assert (=> b!933873 m!868235))

(assert (=> b!933873 m!868235))

(assert (=> b!933873 m!868237))

(assert (=> b!933665 d!113051))

(declare-fun bm!40623 () Bool)

(declare-fun call!40631 () ListLongMap!12083)

(declare-fun call!40626 () ListLongMap!12083)

(assert (=> bm!40623 (= call!40631 call!40626)))

(declare-fun b!933874 () Bool)

(declare-fun e!524419 () Bool)

(assert (=> b!933874 (= e!524419 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun bm!40624 () Bool)

(declare-fun call!40628 () Bool)

(declare-fun lt!420705 () ListLongMap!12083)

(assert (=> bm!40624 (= call!40628 (contains!5056 lt!420705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933875 () Bool)

(declare-fun e!524413 () Unit!31502)

(declare-fun Unit!31508 () Unit!31502)

(assert (=> b!933875 (= e!524413 Unit!31508)))

(declare-fun bm!40626 () Bool)

(declare-fun call!40632 () ListLongMap!12083)

(declare-fun call!40629 () ListLongMap!12083)

(assert (=> bm!40626 (= call!40632 call!40629)))

(declare-fun b!933876 () Bool)

(declare-fun lt!420708 () Unit!31502)

(assert (=> b!933876 (= e!524413 lt!420708)))

(declare-fun lt!420720 () ListLongMap!12083)

(assert (=> b!933876 (= lt!420720 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!420714 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420714 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420718 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420718 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!420723 () Unit!31502)

(assert (=> b!933876 (= lt!420723 (addStillContains!513 lt!420720 lt!420714 zeroValue!1173 lt!420718))))

(assert (=> b!933876 (contains!5056 (+!2757 lt!420720 (tuple2!13373 lt!420714 zeroValue!1173)) lt!420718)))

(declare-fun lt!420721 () Unit!31502)

(assert (=> b!933876 (= lt!420721 lt!420723)))

(declare-fun lt!420713 () ListLongMap!12083)

(assert (=> b!933876 (= lt!420713 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!420706 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420706 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420704 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420704 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!420722 () Unit!31502)

(assert (=> b!933876 (= lt!420722 (addApplyDifferent!410 lt!420713 lt!420706 minValue!1173 lt!420704))))

(assert (=> b!933876 (= (apply!839 (+!2757 lt!420713 (tuple2!13373 lt!420706 minValue!1173)) lt!420704) (apply!839 lt!420713 lt!420704))))

(declare-fun lt!420707 () Unit!31502)

(assert (=> b!933876 (= lt!420707 lt!420722)))

(declare-fun lt!420710 () ListLongMap!12083)

(assert (=> b!933876 (= lt!420710 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!420724 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420717 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420717 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!420719 () Unit!31502)

(assert (=> b!933876 (= lt!420719 (addApplyDifferent!410 lt!420710 lt!420724 zeroValue!1173 lt!420717))))

(assert (=> b!933876 (= (apply!839 (+!2757 lt!420710 (tuple2!13373 lt!420724 zeroValue!1173)) lt!420717) (apply!839 lt!420710 lt!420717))))

(declare-fun lt!420709 () Unit!31502)

(assert (=> b!933876 (= lt!420709 lt!420719)))

(declare-fun lt!420725 () ListLongMap!12083)

(assert (=> b!933876 (= lt!420725 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!420712 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420712 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!420715 () (_ BitVec 64))

(assert (=> b!933876 (= lt!420715 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!933876 (= lt!420708 (addApplyDifferent!410 lt!420725 lt!420712 minValue!1173 lt!420715))))

(assert (=> b!933876 (= (apply!839 (+!2757 lt!420725 (tuple2!13373 lt!420712 minValue!1173)) lt!420715) (apply!839 lt!420725 lt!420715))))

(declare-fun b!933877 () Bool)

(declare-fun e!524421 () Bool)

(declare-fun e!524415 () Bool)

(assert (=> b!933877 (= e!524421 e!524415)))

(declare-fun res!629107 () Bool)

(assert (=> b!933877 (=> (not res!629107) (not e!524415))))

(assert (=> b!933877 (= res!629107 (contains!5056 lt!420705 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!933877 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)))))

(declare-fun b!933878 () Bool)

(declare-fun c!97042 () Bool)

(assert (=> b!933878 (= c!97042 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!524411 () ListLongMap!12083)

(declare-fun e!524417 () ListLongMap!12083)

(assert (=> b!933878 (= e!524411 e!524417)))

(declare-fun b!933879 () Bool)

(assert (=> b!933879 (= e!524415 (= (apply!839 lt!420705 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14247 (select (arr!27053 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!933879 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27513 _values!1231)))))

(assert (=> b!933879 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)))))

(declare-fun b!933880 () Bool)

(declare-fun e!524423 () Bool)

(declare-fun e!524414 () Bool)

(assert (=> b!933880 (= e!524423 e!524414)))

(declare-fun res!629104 () Bool)

(assert (=> b!933880 (= res!629104 call!40628)))

(assert (=> b!933880 (=> (not res!629104) (not e!524414))))

(declare-fun b!933881 () Bool)

(declare-fun e!524420 () ListLongMap!12083)

(assert (=> b!933881 (= e!524420 e!524411)))

(declare-fun c!97045 () Bool)

(assert (=> b!933881 (= c!97045 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!933882 () Bool)

(declare-fun e!524418 () Bool)

(declare-fun call!40627 () Bool)

(assert (=> b!933882 (= e!524418 (not call!40627))))

(declare-fun b!933883 () Bool)

(declare-fun res!629106 () Bool)

(declare-fun e!524412 () Bool)

(assert (=> b!933883 (=> (not res!629106) (not e!524412))))

(assert (=> b!933883 (= res!629106 e!524421)))

(declare-fun res!629111 () Bool)

(assert (=> b!933883 (=> res!629111 e!524421)))

(declare-fun e!524416 () Bool)

(assert (=> b!933883 (= res!629111 (not e!524416))))

(declare-fun res!629105 () Bool)

(assert (=> b!933883 (=> (not res!629105) (not e!524416))))

(assert (=> b!933883 (= res!629105 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)))))

(declare-fun b!933884 () Bool)

(declare-fun res!629103 () Bool)

(assert (=> b!933884 (=> (not res!629103) (not e!524412))))

(assert (=> b!933884 (= res!629103 e!524423)))

(declare-fun c!97041 () Bool)

(assert (=> b!933884 (= c!97041 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40627 () Bool)

(declare-fun call!40630 () ListLongMap!12083)

(assert (=> bm!40627 (= call!40626 call!40630)))

(declare-fun b!933885 () Bool)

(assert (=> b!933885 (= e!524420 (+!2757 call!40629 (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40628 () Bool)

(assert (=> bm!40628 (= call!40630 (getCurrentListMapNoExtraKeys!3315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun b!933886 () Bool)

(assert (=> b!933886 (= e!524423 (not call!40628))))

(declare-fun b!933887 () Bool)

(assert (=> b!933887 (= e!524412 e!524418)))

(declare-fun c!97043 () Bool)

(assert (=> b!933887 (= c!97043 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113053 () Bool)

(assert (=> d!113053 e!524412))

(declare-fun res!629110 () Bool)

(assert (=> d!113053 (=> (not res!629110) (not e!524412))))

(assert (=> d!113053 (= res!629110 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)))))))

(declare-fun lt!420711 () ListLongMap!12083)

(assert (=> d!113053 (= lt!420705 lt!420711)))

(declare-fun lt!420716 () Unit!31502)

(assert (=> d!113053 (= lt!420716 e!524413)))

(declare-fun c!97044 () Bool)

(assert (=> d!113053 (= c!97044 e!524419)))

(declare-fun res!629109 () Bool)

(assert (=> d!113053 (=> (not res!629109) (not e!524419))))

(assert (=> d!113053 (= res!629109 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27512 _keys!1487)))))

(assert (=> d!113053 (= lt!420711 e!524420)))

(declare-fun c!97046 () Bool)

(assert (=> d!113053 (= c!97046 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113053 (validMask!0 mask!1881)))

(assert (=> d!113053 (= (getCurrentListMap!3249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420705)))

(declare-fun bm!40625 () Bool)

(assert (=> bm!40625 (= call!40627 (contains!5056 lt!420705 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!933888 () Bool)

(assert (=> b!933888 (= e!524417 call!40632)))

(declare-fun b!933889 () Bool)

(declare-fun e!524422 () Bool)

(assert (=> b!933889 (= e!524418 e!524422)))

(declare-fun res!629108 () Bool)

(assert (=> b!933889 (= res!629108 call!40627)))

(assert (=> b!933889 (=> (not res!629108) (not e!524422))))

(declare-fun b!933890 () Bool)

(assert (=> b!933890 (= e!524416 (validKeyInArray!0 (select (arr!27052 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!933891 () Bool)

(assert (=> b!933891 (= e!524422 (= (apply!839 lt!420705 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!933892 () Bool)

(assert (=> b!933892 (= e!524417 call!40631)))

(declare-fun bm!40629 () Bool)

(assert (=> bm!40629 (= call!40629 (+!2757 (ite c!97046 call!40630 (ite c!97045 call!40626 call!40631)) (ite (or c!97046 c!97045) (tuple2!13373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!933893 () Bool)

(assert (=> b!933893 (= e!524414 (= (apply!839 lt!420705 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!933894 () Bool)

(assert (=> b!933894 (= e!524411 call!40632)))

(assert (= (and d!113053 c!97046) b!933885))

(assert (= (and d!113053 (not c!97046)) b!933881))

(assert (= (and b!933881 c!97045) b!933894))

(assert (= (and b!933881 (not c!97045)) b!933878))

(assert (= (and b!933878 c!97042) b!933888))

(assert (= (and b!933878 (not c!97042)) b!933892))

(assert (= (or b!933888 b!933892) bm!40623))

(assert (= (or b!933894 bm!40623) bm!40627))

(assert (= (or b!933894 b!933888) bm!40626))

(assert (= (or b!933885 bm!40627) bm!40628))

(assert (= (or b!933885 bm!40626) bm!40629))

(assert (= (and d!113053 res!629109) b!933874))

(assert (= (and d!113053 c!97044) b!933876))

(assert (= (and d!113053 (not c!97044)) b!933875))

(assert (= (and d!113053 res!629110) b!933883))

(assert (= (and b!933883 res!629105) b!933890))

(assert (= (and b!933883 (not res!629111)) b!933877))

(assert (= (and b!933877 res!629107) b!933879))

(assert (= (and b!933883 res!629106) b!933884))

(assert (= (and b!933884 c!97041) b!933880))

(assert (= (and b!933884 (not c!97041)) b!933886))

(assert (= (and b!933880 res!629104) b!933893))

(assert (= (or b!933880 b!933886) bm!40624))

(assert (= (and b!933884 res!629103) b!933887))

(assert (= (and b!933887 c!97043) b!933889))

(assert (= (and b!933887 (not c!97043)) b!933882))

(assert (= (and b!933889 res!629108) b!933891))

(assert (= (or b!933889 b!933882) bm!40625))

(declare-fun b_lambda!14001 () Bool)

(assert (=> (not b_lambda!14001) (not b!933879)))

(assert (=> b!933879 t!27355))

(declare-fun b_and!28841 () Bool)

(assert (= b_and!28839 (and (=> t!27355 result!11871) b_and!28841)))

(declare-fun m!868239 () Bool)

(assert (=> b!933874 m!868239))

(assert (=> b!933874 m!868239))

(declare-fun m!868241 () Bool)

(assert (=> b!933874 m!868241))

(assert (=> b!933877 m!868239))

(assert (=> b!933877 m!868239))

(declare-fun m!868243 () Bool)

(assert (=> b!933877 m!868243))

(declare-fun m!868245 () Bool)

(assert (=> b!933876 m!868245))

(declare-fun m!868247 () Bool)

(assert (=> b!933876 m!868247))

(declare-fun m!868249 () Bool)

(assert (=> b!933876 m!868249))

(declare-fun m!868251 () Bool)

(assert (=> b!933876 m!868251))

(declare-fun m!868253 () Bool)

(assert (=> b!933876 m!868253))

(declare-fun m!868255 () Bool)

(assert (=> b!933876 m!868255))

(assert (=> b!933876 m!868239))

(assert (=> b!933876 m!868255))

(declare-fun m!868257 () Bool)

(assert (=> b!933876 m!868257))

(declare-fun m!868259 () Bool)

(assert (=> b!933876 m!868259))

(assert (=> b!933876 m!868245))

(declare-fun m!868261 () Bool)

(assert (=> b!933876 m!868261))

(declare-fun m!868263 () Bool)

(assert (=> b!933876 m!868263))

(declare-fun m!868265 () Bool)

(assert (=> b!933876 m!868265))

(declare-fun m!868267 () Bool)

(assert (=> b!933876 m!868267))

(assert (=> b!933876 m!868263))

(declare-fun m!868269 () Bool)

(assert (=> b!933876 m!868269))

(declare-fun m!868271 () Bool)

(assert (=> b!933876 m!868271))

(declare-fun m!868273 () Bool)

(assert (=> b!933876 m!868273))

(assert (=> b!933876 m!868253))

(declare-fun m!868275 () Bool)

(assert (=> b!933876 m!868275))

(assert (=> bm!40628 m!868251))

(declare-fun m!868277 () Bool)

(assert (=> b!933891 m!868277))

(declare-fun m!868279 () Bool)

(assert (=> b!933893 m!868279))

(declare-fun m!868281 () Bool)

(assert (=> bm!40625 m!868281))

(assert (=> d!113053 m!867963))

(assert (=> b!933890 m!868239))

(assert (=> b!933890 m!868239))

(assert (=> b!933890 m!868241))

(assert (=> b!933879 m!867983))

(declare-fun m!868283 () Bool)

(assert (=> b!933879 m!868283))

(assert (=> b!933879 m!868239))

(assert (=> b!933879 m!868283))

(assert (=> b!933879 m!867983))

(declare-fun m!868285 () Bool)

(assert (=> b!933879 m!868285))

(assert (=> b!933879 m!868239))

(declare-fun m!868287 () Bool)

(assert (=> b!933879 m!868287))

(declare-fun m!868289 () Bool)

(assert (=> bm!40624 m!868289))

(declare-fun m!868291 () Bool)

(assert (=> b!933885 m!868291))

(declare-fun m!868293 () Bool)

(assert (=> bm!40629 m!868293))

(assert (=> b!933665 d!113053))

(declare-fun d!113055 () Bool)

(declare-fun c!97049 () Bool)

(assert (=> d!113055 (= c!97049 ((_ is ValueCellFull!9585) (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!524426 () V!31809)

(assert (=> d!113055 (= (get!14247 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!524426)))

(declare-fun b!933899 () Bool)

(declare-fun get!14249 (ValueCell!9585 V!31809) V!31809)

(assert (=> b!933899 (= e!524426 (get!14249 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!933900 () Bool)

(declare-fun get!14250 (ValueCell!9585 V!31809) V!31809)

(assert (=> b!933900 (= e!524426 (get!14250 (select (arr!27053 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1596 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113055 c!97049) b!933899))

(assert (= (and d!113055 (not c!97049)) b!933900))

(assert (=> b!933899 m!867981))

(assert (=> b!933899 m!867983))

(declare-fun m!868295 () Bool)

(assert (=> b!933899 m!868295))

(assert (=> b!933900 m!867981))

(assert (=> b!933900 m!867983))

(declare-fun m!868297 () Bool)

(assert (=> b!933900 m!868297))

(assert (=> b!933665 d!113055))

(declare-fun d!113057 () Bool)

(assert (=> d!113057 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19177)))

(declare-fun lt!420728 () Unit!31502)

(declare-fun choose!39 (array!56224 (_ BitVec 32) (_ BitVec 32)) Unit!31502)

(assert (=> d!113057 (= lt!420728 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113057 (bvslt (size!27512 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113057 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!420728)))

(declare-fun bs!26221 () Bool)

(assert (= bs!26221 d!113057))

(assert (=> bs!26221 m!867993))

(declare-fun m!868299 () Bool)

(assert (=> bs!26221 m!868299))

(assert (=> b!933665 d!113057))

(declare-fun mapNonEmpty!31965 () Bool)

(declare-fun mapRes!31965 () Bool)

(declare-fun tp!61329 () Bool)

(declare-fun e!524431 () Bool)

(assert (=> mapNonEmpty!31965 (= mapRes!31965 (and tp!61329 e!524431))))

(declare-fun mapKey!31965 () (_ BitVec 32))

(declare-fun mapRest!31965 () (Array (_ BitVec 32) ValueCell!9585))

(declare-fun mapValue!31965 () ValueCell!9585)

(assert (=> mapNonEmpty!31965 (= mapRest!31959 (store mapRest!31965 mapKey!31965 mapValue!31965))))

(declare-fun b!933908 () Bool)

(declare-fun e!524432 () Bool)

(assert (=> b!933908 (= e!524432 tp_is_empty!20133)))

(declare-fun b!933907 () Bool)

(assert (=> b!933907 (= e!524431 tp_is_empty!20133)))

(declare-fun condMapEmpty!31965 () Bool)

(declare-fun mapDefault!31965 () ValueCell!9585)

(assert (=> mapNonEmpty!31959 (= condMapEmpty!31965 (= mapRest!31959 ((as const (Array (_ BitVec 32) ValueCell!9585)) mapDefault!31965)))))

(assert (=> mapNonEmpty!31959 (= tp!61319 (and e!524432 mapRes!31965))))

(declare-fun mapIsEmpty!31965 () Bool)

(assert (=> mapIsEmpty!31965 mapRes!31965))

(assert (= (and mapNonEmpty!31959 condMapEmpty!31965) mapIsEmpty!31965))

(assert (= (and mapNonEmpty!31959 (not condMapEmpty!31965)) mapNonEmpty!31965))

(assert (= (and mapNonEmpty!31965 ((_ is ValueCellFull!9585) mapValue!31965)) b!933907))

(assert (= (and mapNonEmpty!31959 ((_ is ValueCellFull!9585) mapDefault!31965)) b!933908))

(declare-fun m!868301 () Bool)

(assert (=> mapNonEmpty!31965 m!868301))

(declare-fun b_lambda!14003 () Bool)

(assert (= b_lambda!13995 (or (and start!79466 b_free!17625) b_lambda!14003)))

(declare-fun b_lambda!14005 () Bool)

(assert (= b_lambda!13997 (or (and start!79466 b_free!17625) b_lambda!14005)))

(declare-fun b_lambda!14007 () Bool)

(assert (= b_lambda!13999 (or (and start!79466 b_free!17625) b_lambda!14007)))

(declare-fun b_lambda!14009 () Bool)

(assert (= b_lambda!14001 (or (and start!79466 b_free!17625) b_lambda!14009)))

(check-sat (not bm!40618) (not b!933853) (not b!933817) (not b!933761) (not b!933753) (not d!113041) (not b!933811) (not b!933737) (not d!113051) (not b!933855) (not bm!40613) (not b!933866) tp_is_empty!20133 (not b!933739) (not b!933879) (not bm!40625) (not b_lambda!14003) (not b!933850) (not b_lambda!14007) (not b!933840) (not bm!40624) (not b!933893) (not b!933890) (not b!933871) (not b_lambda!14009) (not b!933839) (not d!113057) (not d!113053) (not bm!40593) (not b!933825) (not b!933899) (not b_lambda!13993) (not b!933848) (not bm!40629) (not b!933829) (not bm!40628) (not mapNonEmpty!31965) (not d!113045) (not b!933727) (not d!113025) (not d!113023) (not b!933867) (not bm!40614) (not d!113029) (not b!933876) (not b!933830) (not b!933845) (not b!933806) (not b!933752) (not b!933852) (not b!933832) (not b!933823) (not b_lambda!14005) b_and!28841 (not b!933847) (not b!933763) (not bm!40590) (not d!113049) (not b!933873) (not b!933861) (not b!933833) (not bm!40622) (not bm!40610) (not d!113047) (not d!113037) (not b_next!17625) (not bm!40621) (not b!933750) (not b!933877) (not d!113043) (not b!933900) (not b!933874) (not b!933808) (not b!933885) (not bm!40615) (not b!933809) (not b!933869) (not bm!40617) (not b!933891) (not b!933822) (not bm!40609))
(check-sat b_and!28841 (not b_next!17625))
