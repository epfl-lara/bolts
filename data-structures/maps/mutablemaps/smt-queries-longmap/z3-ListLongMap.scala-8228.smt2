; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100314 () Bool)

(assert start!100314)

(declare-fun b!1196231 () Bool)

(declare-fun res!796169 () Bool)

(declare-fun e!679708 () Bool)

(assert (=> b!1196231 (=> (not res!796169) (not e!679708))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77452 0))(
  ( (array!77453 (arr!37369 (Array (_ BitVec 32) (_ BitVec 64))) (size!37906 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77452)

(assert (=> b!1196231 (= res!796169 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37906 _keys!1208))))))

(declare-fun mapNonEmpty!47354 () Bool)

(declare-fun mapRes!47354 () Bool)

(declare-fun tp!89965 () Bool)

(declare-fun e!679706 () Bool)

(assert (=> mapNonEmpty!47354 (= mapRes!47354 (and tp!89965 e!679706))))

(declare-fun mapKey!47354 () (_ BitVec 32))

(declare-datatypes ((V!45587 0))(
  ( (V!45588 (val!15229 Int)) )
))
(declare-datatypes ((ValueCell!14463 0))(
  ( (ValueCellFull!14463 (v!17868 V!45587)) (EmptyCell!14463) )
))
(declare-fun mapValue!47354 () ValueCell!14463)

(declare-fun mapRest!47354 () (Array (_ BitVec 32) ValueCell!14463))

(declare-datatypes ((array!77454 0))(
  ( (array!77455 (arr!37370 (Array (_ BitVec 32) ValueCell!14463)) (size!37907 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77454)

(assert (=> mapNonEmpty!47354 (= (arr!37370 _values!996) (store mapRest!47354 mapKey!47354 mapValue!47354))))

(declare-fun b!1196232 () Bool)

(declare-fun e!679705 () Bool)

(declare-fun tp_is_empty!30345 () Bool)

(assert (=> b!1196232 (= e!679705 tp_is_empty!30345)))

(declare-fun b!1196233 () Bool)

(declare-fun res!796165 () Bool)

(assert (=> b!1196233 (=> (not res!796165) (not e!679708))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1196233 (= res!796165 (and (= (size!37907 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37906 _keys!1208) (size!37907 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196234 () Bool)

(declare-fun e!679703 () Bool)

(assert (=> b!1196234 (= e!679703 (and e!679705 mapRes!47354))))

(declare-fun condMapEmpty!47354 () Bool)

(declare-fun mapDefault!47354 () ValueCell!14463)

(assert (=> b!1196234 (= condMapEmpty!47354 (= (arr!37370 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14463)) mapDefault!47354)))))

(declare-fun b!1196235 () Bool)

(declare-fun res!796170 () Bool)

(assert (=> b!1196235 (=> (not res!796170) (not e!679708))))

(declare-datatypes ((List!26458 0))(
  ( (Nil!26455) (Cons!26454 (h!27663 (_ BitVec 64)) (t!39136 List!26458)) )
))
(declare-fun arrayNoDuplicates!0 (array!77452 (_ BitVec 32) List!26458) Bool)

(assert (=> b!1196235 (= res!796170 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26455))))

(declare-fun b!1196236 () Bool)

(declare-fun e!679707 () Bool)

(assert (=> b!1196236 (= e!679707 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196236 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39612 0))(
  ( (Unit!39613) )
))
(declare-fun lt!543005 () Unit!39612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77452 (_ BitVec 64) (_ BitVec 32)) Unit!39612)

(assert (=> b!1196236 (= lt!543005 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196237 () Bool)

(declare-fun res!796163 () Bool)

(assert (=> b!1196237 (=> (not res!796163) (not e!679708))))

(assert (=> b!1196237 (= res!796163 (= (select (arr!37369 _keys!1208) i!673) k0!934))))

(declare-fun b!1196238 () Bool)

(declare-fun res!796164 () Bool)

(assert (=> b!1196238 (=> (not res!796164) (not e!679708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77452 (_ BitVec 32)) Bool)

(assert (=> b!1196238 (= res!796164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196239 () Bool)

(declare-fun res!796162 () Bool)

(assert (=> b!1196239 (=> (not res!796162) (not e!679708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196239 (= res!796162 (validKeyInArray!0 k0!934))))

(declare-fun b!1196240 () Bool)

(assert (=> b!1196240 (= e!679708 e!679707)))

(declare-fun res!796166 () Bool)

(assert (=> b!1196240 (=> (not res!796166) (not e!679707))))

(declare-fun lt!543006 () array!77452)

(assert (=> b!1196240 (= res!796166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543006 mask!1564))))

(assert (=> b!1196240 (= lt!543006 (array!77453 (store (arr!37369 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37906 _keys!1208)))))

(declare-fun b!1196241 () Bool)

(declare-fun res!796168 () Bool)

(assert (=> b!1196241 (=> (not res!796168) (not e!679708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196241 (= res!796168 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47354 () Bool)

(assert (=> mapIsEmpty!47354 mapRes!47354))

(declare-fun res!796167 () Bool)

(assert (=> start!100314 (=> (not res!796167) (not e!679708))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100314 (= res!796167 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37906 _keys!1208))))))

(assert (=> start!100314 e!679708))

(declare-fun array_inv!28386 (array!77452) Bool)

(assert (=> start!100314 (array_inv!28386 _keys!1208)))

(assert (=> start!100314 true))

(declare-fun array_inv!28387 (array!77454) Bool)

(assert (=> start!100314 (and (array_inv!28387 _values!996) e!679703)))

(declare-fun b!1196242 () Bool)

(assert (=> b!1196242 (= e!679706 tp_is_empty!30345)))

(declare-fun b!1196243 () Bool)

(declare-fun res!796171 () Bool)

(assert (=> b!1196243 (=> (not res!796171) (not e!679707))))

(assert (=> b!1196243 (= res!796171 (arrayNoDuplicates!0 lt!543006 #b00000000000000000000000000000000 Nil!26455))))

(assert (= (and start!100314 res!796167) b!1196241))

(assert (= (and b!1196241 res!796168) b!1196233))

(assert (= (and b!1196233 res!796165) b!1196238))

(assert (= (and b!1196238 res!796164) b!1196235))

(assert (= (and b!1196235 res!796170) b!1196231))

(assert (= (and b!1196231 res!796169) b!1196239))

(assert (= (and b!1196239 res!796162) b!1196237))

(assert (= (and b!1196237 res!796163) b!1196240))

(assert (= (and b!1196240 res!796166) b!1196243))

(assert (= (and b!1196243 res!796171) b!1196236))

(assert (= (and b!1196234 condMapEmpty!47354) mapIsEmpty!47354))

(assert (= (and b!1196234 (not condMapEmpty!47354)) mapNonEmpty!47354))

(get-info :version)

(assert (= (and mapNonEmpty!47354 ((_ is ValueCellFull!14463) mapValue!47354)) b!1196242))

(assert (= (and b!1196234 ((_ is ValueCellFull!14463) mapDefault!47354)) b!1196232))

(assert (= start!100314 b!1196234))

(declare-fun m!1103569 () Bool)

(assert (=> b!1196239 m!1103569))

(declare-fun m!1103571 () Bool)

(assert (=> mapNonEmpty!47354 m!1103571))

(declare-fun m!1103573 () Bool)

(assert (=> b!1196241 m!1103573))

(declare-fun m!1103575 () Bool)

(assert (=> start!100314 m!1103575))

(declare-fun m!1103577 () Bool)

(assert (=> start!100314 m!1103577))

(declare-fun m!1103579 () Bool)

(assert (=> b!1196237 m!1103579))

(declare-fun m!1103581 () Bool)

(assert (=> b!1196240 m!1103581))

(declare-fun m!1103583 () Bool)

(assert (=> b!1196240 m!1103583))

(declare-fun m!1103585 () Bool)

(assert (=> b!1196235 m!1103585))

(declare-fun m!1103587 () Bool)

(assert (=> b!1196243 m!1103587))

(declare-fun m!1103589 () Bool)

(assert (=> b!1196238 m!1103589))

(declare-fun m!1103591 () Bool)

(assert (=> b!1196236 m!1103591))

(declare-fun m!1103593 () Bool)

(assert (=> b!1196236 m!1103593))

(check-sat (not start!100314) (not b!1196241) (not b!1196239) (not b!1196243) (not b!1196235) (not mapNonEmpty!47354) tp_is_empty!30345 (not b!1196238) (not b!1196236) (not b!1196240))
(check-sat)
