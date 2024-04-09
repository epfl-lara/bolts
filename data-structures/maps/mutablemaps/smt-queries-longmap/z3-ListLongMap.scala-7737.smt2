; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97204 () Bool)

(assert start!97204)

(declare-fun b!1105240 () Bool)

(declare-fun e!630859 () Bool)

(declare-fun e!630863 () Bool)

(assert (=> b!1105240 (= e!630859 e!630863)))

(declare-fun res!737540 () Bool)

(assert (=> b!1105240 (=> (not res!737540) (not e!630863))))

(declare-datatypes ((array!71672 0))(
  ( (array!71673 (arr!34485 (Array (_ BitVec 32) (_ BitVec 64))) (size!35022 (_ BitVec 32))) )
))
(declare-fun lt!495261 () array!71672)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71672 (_ BitVec 32)) Bool)

(assert (=> b!1105240 (= res!737540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495261 mask!1564))))

(declare-fun _keys!1208 () array!71672)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105240 (= lt!495261 (array!71673 (store (arr!34485 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35022 _keys!1208)))))

(declare-fun b!1105241 () Bool)

(declare-fun e!630861 () Bool)

(declare-fun e!630858 () Bool)

(declare-fun mapRes!42916 () Bool)

(assert (=> b!1105241 (= e!630861 (and e!630858 mapRes!42916))))

(declare-fun condMapEmpty!42916 () Bool)

(declare-datatypes ((V!41659 0))(
  ( (V!41660 (val!13756 Int)) )
))
(declare-datatypes ((ValueCell!12990 0))(
  ( (ValueCellFull!12990 (v!16390 V!41659)) (EmptyCell!12990) )
))
(declare-datatypes ((array!71674 0))(
  ( (array!71675 (arr!34486 (Array (_ BitVec 32) ValueCell!12990)) (size!35023 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71674)

(declare-fun mapDefault!42916 () ValueCell!12990)

(assert (=> b!1105241 (= condMapEmpty!42916 (= (arr!34486 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12990)) mapDefault!42916)))))

(declare-fun b!1105242 () Bool)

(assert (=> b!1105242 (= e!630863 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105242 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36203 0))(
  ( (Unit!36204) )
))
(declare-fun lt!495260 () Unit!36203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71672 (_ BitVec 64) (_ BitVec 32)) Unit!36203)

(assert (=> b!1105242 (= lt!495260 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!737545 () Bool)

(assert (=> start!97204 (=> (not res!737545) (not e!630859))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97204 (= res!737545 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35022 _keys!1208))))))

(assert (=> start!97204 e!630859))

(declare-fun array_inv!26406 (array!71672) Bool)

(assert (=> start!97204 (array_inv!26406 _keys!1208)))

(assert (=> start!97204 true))

(declare-fun array_inv!26407 (array!71674) Bool)

(assert (=> start!97204 (and (array_inv!26407 _values!996) e!630861)))

(declare-fun b!1105243 () Bool)

(declare-fun res!737544 () Bool)

(assert (=> b!1105243 (=> (not res!737544) (not e!630859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105243 (= res!737544 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!42916 () Bool)

(declare-fun tp!81837 () Bool)

(declare-fun e!630860 () Bool)

(assert (=> mapNonEmpty!42916 (= mapRes!42916 (and tp!81837 e!630860))))

(declare-fun mapValue!42916 () ValueCell!12990)

(declare-fun mapKey!42916 () (_ BitVec 32))

(declare-fun mapRest!42916 () (Array (_ BitVec 32) ValueCell!12990))

(assert (=> mapNonEmpty!42916 (= (arr!34486 _values!996) (store mapRest!42916 mapKey!42916 mapValue!42916))))

(declare-fun mapIsEmpty!42916 () Bool)

(assert (=> mapIsEmpty!42916 mapRes!42916))

(declare-fun b!1105244 () Bool)

(declare-fun res!737547 () Bool)

(assert (=> b!1105244 (=> (not res!737547) (not e!630863))))

(declare-datatypes ((List!24191 0))(
  ( (Nil!24188) (Cons!24187 (h!25396 (_ BitVec 64)) (t!34463 List!24191)) )
))
(declare-fun arrayNoDuplicates!0 (array!71672 (_ BitVec 32) List!24191) Bool)

(assert (=> b!1105244 (= res!737547 (arrayNoDuplicates!0 lt!495261 #b00000000000000000000000000000000 Nil!24188))))

(declare-fun b!1105245 () Bool)

(declare-fun res!737543 () Bool)

(assert (=> b!1105245 (=> (not res!737543) (not e!630859))))

(assert (=> b!1105245 (= res!737543 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35022 _keys!1208))))))

(declare-fun b!1105246 () Bool)

(declare-fun tp_is_empty!27399 () Bool)

(assert (=> b!1105246 (= e!630860 tp_is_empty!27399)))

(declare-fun b!1105247 () Bool)

(declare-fun res!737546 () Bool)

(assert (=> b!1105247 (=> (not res!737546) (not e!630859))))

(assert (=> b!1105247 (= res!737546 (= (select (arr!34485 _keys!1208) i!673) k0!934))))

(declare-fun b!1105248 () Bool)

(declare-fun res!737541 () Bool)

(assert (=> b!1105248 (=> (not res!737541) (not e!630859))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105248 (= res!737541 (and (= (size!35023 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35022 _keys!1208) (size!35023 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105249 () Bool)

(declare-fun res!737538 () Bool)

(assert (=> b!1105249 (=> (not res!737538) (not e!630859))))

(assert (=> b!1105249 (= res!737538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105250 () Bool)

(assert (=> b!1105250 (= e!630858 tp_is_empty!27399)))

(declare-fun b!1105251 () Bool)

(declare-fun res!737542 () Bool)

(assert (=> b!1105251 (=> (not res!737542) (not e!630859))))

(assert (=> b!1105251 (= res!737542 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24188))))

(declare-fun b!1105252 () Bool)

(declare-fun res!737539 () Bool)

(assert (=> b!1105252 (=> (not res!737539) (not e!630859))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105252 (= res!737539 (validKeyInArray!0 k0!934))))

(assert (= (and start!97204 res!737545) b!1105243))

(assert (= (and b!1105243 res!737544) b!1105248))

(assert (= (and b!1105248 res!737541) b!1105249))

(assert (= (and b!1105249 res!737538) b!1105251))

(assert (= (and b!1105251 res!737542) b!1105245))

(assert (= (and b!1105245 res!737543) b!1105252))

(assert (= (and b!1105252 res!737539) b!1105247))

(assert (= (and b!1105247 res!737546) b!1105240))

(assert (= (and b!1105240 res!737540) b!1105244))

(assert (= (and b!1105244 res!737547) b!1105242))

(assert (= (and b!1105241 condMapEmpty!42916) mapIsEmpty!42916))

(assert (= (and b!1105241 (not condMapEmpty!42916)) mapNonEmpty!42916))

(get-info :version)

(assert (= (and mapNonEmpty!42916 ((_ is ValueCellFull!12990) mapValue!42916)) b!1105246))

(assert (= (and b!1105241 ((_ is ValueCellFull!12990) mapDefault!42916)) b!1105250))

(assert (= start!97204 b!1105241))

(declare-fun m!1024821 () Bool)

(assert (=> b!1105242 m!1024821))

(declare-fun m!1024823 () Bool)

(assert (=> b!1105242 m!1024823))

(declare-fun m!1024825 () Bool)

(assert (=> b!1105244 m!1024825))

(declare-fun m!1024827 () Bool)

(assert (=> b!1105251 m!1024827))

(declare-fun m!1024829 () Bool)

(assert (=> start!97204 m!1024829))

(declare-fun m!1024831 () Bool)

(assert (=> start!97204 m!1024831))

(declare-fun m!1024833 () Bool)

(assert (=> b!1105249 m!1024833))

(declare-fun m!1024835 () Bool)

(assert (=> b!1105243 m!1024835))

(declare-fun m!1024837 () Bool)

(assert (=> b!1105247 m!1024837))

(declare-fun m!1024839 () Bool)

(assert (=> b!1105252 m!1024839))

(declare-fun m!1024841 () Bool)

(assert (=> b!1105240 m!1024841))

(declare-fun m!1024843 () Bool)

(assert (=> b!1105240 m!1024843))

(declare-fun m!1024845 () Bool)

(assert (=> mapNonEmpty!42916 m!1024845))

(check-sat (not b!1105252) (not b!1105240) (not b!1105249) (not b!1105243) tp_is_empty!27399 (not b!1105244) (not b!1105251) (not b!1105242) (not mapNonEmpty!42916) (not start!97204))
(check-sat)
