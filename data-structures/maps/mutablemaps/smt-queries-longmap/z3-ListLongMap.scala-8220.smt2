; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100266 () Bool)

(assert start!100266)

(declare-fun mapNonEmpty!47282 () Bool)

(declare-fun mapRes!47282 () Bool)

(declare-fun tp!89893 () Bool)

(declare-fun e!679271 () Bool)

(assert (=> mapNonEmpty!47282 (= mapRes!47282 (and tp!89893 e!679271))))

(declare-fun mapKey!47282 () (_ BitVec 32))

(declare-datatypes ((V!45523 0))(
  ( (V!45524 (val!15205 Int)) )
))
(declare-datatypes ((ValueCell!14439 0))(
  ( (ValueCellFull!14439 (v!17844 V!45523)) (EmptyCell!14439) )
))
(declare-fun mapRest!47282 () (Array (_ BitVec 32) ValueCell!14439))

(declare-fun mapValue!47282 () ValueCell!14439)

(declare-datatypes ((array!77358 0))(
  ( (array!77359 (arr!37322 (Array (_ BitVec 32) ValueCell!14439)) (size!37859 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77358)

(assert (=> mapNonEmpty!47282 (= (arr!37322 _values!996) (store mapRest!47282 mapKey!47282 mapValue!47282))))

(declare-fun b!1195295 () Bool)

(declare-fun res!795442 () Bool)

(declare-fun e!679275 () Bool)

(assert (=> b!1195295 (=> (not res!795442) (not e!679275))))

(declare-datatypes ((array!77360 0))(
  ( (array!77361 (arr!37323 (Array (_ BitVec 32) (_ BitVec 64))) (size!37860 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77360)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1195295 (= res!795442 (and (= (size!37859 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37860 _keys!1208) (size!37859 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195296 () Bool)

(declare-fun res!795445 () Bool)

(assert (=> b!1195296 (=> (not res!795445) (not e!679275))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195296 (= res!795445 (validKeyInArray!0 k0!934))))

(declare-fun b!1195297 () Bool)

(declare-fun res!795446 () Bool)

(assert (=> b!1195297 (=> (not res!795446) (not e!679275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195297 (= res!795446 (validMask!0 mask!1564))))

(declare-fun b!1195298 () Bool)

(declare-fun res!795449 () Bool)

(declare-fun e!679276 () Bool)

(assert (=> b!1195298 (=> (not res!795449) (not e!679276))))

(declare-fun lt!542862 () array!77360)

(declare-datatypes ((List!26438 0))(
  ( (Nil!26435) (Cons!26434 (h!27643 (_ BitVec 64)) (t!39116 List!26438)) )
))
(declare-fun arrayNoDuplicates!0 (array!77360 (_ BitVec 32) List!26438) Bool)

(assert (=> b!1195298 (= res!795449 (arrayNoDuplicates!0 lt!542862 #b00000000000000000000000000000000 Nil!26435))))

(declare-fun b!1195299 () Bool)

(declare-fun res!795451 () Bool)

(assert (=> b!1195299 (=> (not res!795451) (not e!679275))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195299 (= res!795451 (= (select (arr!37323 _keys!1208) i!673) k0!934))))

(declare-fun res!795443 () Bool)

(assert (=> start!100266 (=> (not res!795443) (not e!679275))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100266 (= res!795443 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37860 _keys!1208))))))

(assert (=> start!100266 e!679275))

(declare-fun array_inv!28348 (array!77360) Bool)

(assert (=> start!100266 (array_inv!28348 _keys!1208)))

(assert (=> start!100266 true))

(declare-fun e!679273 () Bool)

(declare-fun array_inv!28349 (array!77358) Bool)

(assert (=> start!100266 (and (array_inv!28349 _values!996) e!679273)))

(declare-fun b!1195300 () Bool)

(declare-fun res!795447 () Bool)

(assert (=> b!1195300 (=> (not res!795447) (not e!679275))))

(assert (=> b!1195300 (= res!795447 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37860 _keys!1208))))))

(declare-fun b!1195301 () Bool)

(declare-fun e!679272 () Bool)

(declare-fun tp_is_empty!30297 () Bool)

(assert (=> b!1195301 (= e!679272 tp_is_empty!30297)))

(declare-fun b!1195302 () Bool)

(assert (=> b!1195302 (= e!679275 e!679276)))

(declare-fun res!795450 () Bool)

(assert (=> b!1195302 (=> (not res!795450) (not e!679276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77360 (_ BitVec 32)) Bool)

(assert (=> b!1195302 (= res!795450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542862 mask!1564))))

(assert (=> b!1195302 (= lt!542862 (array!77361 (store (arr!37323 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37860 _keys!1208)))))

(declare-fun b!1195303 () Bool)

(declare-fun res!795448 () Bool)

(assert (=> b!1195303 (=> (not res!795448) (not e!679275))))

(assert (=> b!1195303 (= res!795448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195304 () Bool)

(assert (=> b!1195304 (= e!679276 (not true))))

(declare-fun arrayContainsKey!0 (array!77360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195304 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39572 0))(
  ( (Unit!39573) )
))
(declare-fun lt!542861 () Unit!39572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77360 (_ BitVec 64) (_ BitVec 32)) Unit!39572)

(assert (=> b!1195304 (= lt!542861 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47282 () Bool)

(assert (=> mapIsEmpty!47282 mapRes!47282))

(declare-fun b!1195305 () Bool)

(declare-fun res!795444 () Bool)

(assert (=> b!1195305 (=> (not res!795444) (not e!679275))))

(assert (=> b!1195305 (= res!795444 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26435))))

(declare-fun b!1195306 () Bool)

(assert (=> b!1195306 (= e!679273 (and e!679272 mapRes!47282))))

(declare-fun condMapEmpty!47282 () Bool)

(declare-fun mapDefault!47282 () ValueCell!14439)

(assert (=> b!1195306 (= condMapEmpty!47282 (= (arr!37322 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14439)) mapDefault!47282)))))

(declare-fun b!1195307 () Bool)

(assert (=> b!1195307 (= e!679271 tp_is_empty!30297)))

(assert (= (and start!100266 res!795443) b!1195297))

(assert (= (and b!1195297 res!795446) b!1195295))

(assert (= (and b!1195295 res!795442) b!1195303))

(assert (= (and b!1195303 res!795448) b!1195305))

(assert (= (and b!1195305 res!795444) b!1195300))

(assert (= (and b!1195300 res!795447) b!1195296))

(assert (= (and b!1195296 res!795445) b!1195299))

(assert (= (and b!1195299 res!795451) b!1195302))

(assert (= (and b!1195302 res!795450) b!1195298))

(assert (= (and b!1195298 res!795449) b!1195304))

(assert (= (and b!1195306 condMapEmpty!47282) mapIsEmpty!47282))

(assert (= (and b!1195306 (not condMapEmpty!47282)) mapNonEmpty!47282))

(get-info :version)

(assert (= (and mapNonEmpty!47282 ((_ is ValueCellFull!14439) mapValue!47282)) b!1195307))

(assert (= (and b!1195306 ((_ is ValueCellFull!14439) mapDefault!47282)) b!1195301))

(assert (= start!100266 b!1195306))

(declare-fun m!1102945 () Bool)

(assert (=> b!1195305 m!1102945))

(declare-fun m!1102947 () Bool)

(assert (=> b!1195304 m!1102947))

(declare-fun m!1102949 () Bool)

(assert (=> b!1195304 m!1102949))

(declare-fun m!1102951 () Bool)

(assert (=> start!100266 m!1102951))

(declare-fun m!1102953 () Bool)

(assert (=> start!100266 m!1102953))

(declare-fun m!1102955 () Bool)

(assert (=> b!1195297 m!1102955))

(declare-fun m!1102957 () Bool)

(assert (=> mapNonEmpty!47282 m!1102957))

(declare-fun m!1102959 () Bool)

(assert (=> b!1195303 m!1102959))

(declare-fun m!1102961 () Bool)

(assert (=> b!1195298 m!1102961))

(declare-fun m!1102963 () Bool)

(assert (=> b!1195296 m!1102963))

(declare-fun m!1102965 () Bool)

(assert (=> b!1195302 m!1102965))

(declare-fun m!1102967 () Bool)

(assert (=> b!1195302 m!1102967))

(declare-fun m!1102969 () Bool)

(assert (=> b!1195299 m!1102969))

(check-sat (not b!1195296) (not b!1195297) (not b!1195302) (not b!1195304) (not start!100266) (not b!1195303) tp_is_empty!30297 (not mapNonEmpty!47282) (not b!1195298) (not b!1195305))
(check-sat)
