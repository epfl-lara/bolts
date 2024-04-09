; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100278 () Bool)

(assert start!100278)

(declare-fun b!1195529 () Bool)

(declare-fun res!795629 () Bool)

(declare-fun e!679382 () Bool)

(assert (=> b!1195529 (=> (not res!795629) (not e!679382))))

(declare-datatypes ((array!77382 0))(
  ( (array!77383 (arr!37334 (Array (_ BitVec 32) (_ BitVec 64))) (size!37871 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77382)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1195529 (= res!795629 (= (select (arr!37334 _keys!1208) i!673) k0!934))))

(declare-fun b!1195530 () Bool)

(declare-fun res!795630 () Bool)

(assert (=> b!1195530 (=> (not res!795630) (not e!679382))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45539 0))(
  ( (V!45540 (val!15211 Int)) )
))
(declare-datatypes ((ValueCell!14445 0))(
  ( (ValueCellFull!14445 (v!17850 V!45539)) (EmptyCell!14445) )
))
(declare-datatypes ((array!77384 0))(
  ( (array!77385 (arr!37335 (Array (_ BitVec 32) ValueCell!14445)) (size!37872 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77384)

(assert (=> b!1195530 (= res!795630 (and (= (size!37872 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37871 _keys!1208) (size!37872 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195531 () Bool)

(declare-fun res!795626 () Bool)

(declare-fun e!679384 () Bool)

(assert (=> b!1195531 (=> (not res!795626) (not e!679384))))

(declare-fun lt!542897 () array!77382)

(declare-datatypes ((List!26443 0))(
  ( (Nil!26440) (Cons!26439 (h!27648 (_ BitVec 64)) (t!39121 List!26443)) )
))
(declare-fun arrayNoDuplicates!0 (array!77382 (_ BitVec 32) List!26443) Bool)

(assert (=> b!1195531 (= res!795626 (arrayNoDuplicates!0 lt!542897 #b00000000000000000000000000000000 Nil!26440))))

(declare-fun res!795622 () Bool)

(assert (=> start!100278 (=> (not res!795622) (not e!679382))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100278 (= res!795622 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37871 _keys!1208))))))

(assert (=> start!100278 e!679382))

(declare-fun array_inv!28358 (array!77382) Bool)

(assert (=> start!100278 (array_inv!28358 _keys!1208)))

(assert (=> start!100278 true))

(declare-fun e!679383 () Bool)

(declare-fun array_inv!28359 (array!77384) Bool)

(assert (=> start!100278 (and (array_inv!28359 _values!996) e!679383)))

(declare-fun mapNonEmpty!47300 () Bool)

(declare-fun mapRes!47300 () Bool)

(declare-fun tp!89911 () Bool)

(declare-fun e!679380 () Bool)

(assert (=> mapNonEmpty!47300 (= mapRes!47300 (and tp!89911 e!679380))))

(declare-fun mapValue!47300 () ValueCell!14445)

(declare-fun mapRest!47300 () (Array (_ BitVec 32) ValueCell!14445))

(declare-fun mapKey!47300 () (_ BitVec 32))

(assert (=> mapNonEmpty!47300 (= (arr!37335 _values!996) (store mapRest!47300 mapKey!47300 mapValue!47300))))

(declare-fun b!1195532 () Bool)

(declare-fun res!795631 () Bool)

(assert (=> b!1195532 (=> (not res!795631) (not e!679382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77382 (_ BitVec 32)) Bool)

(assert (=> b!1195532 (= res!795631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195533 () Bool)

(declare-fun res!795627 () Bool)

(assert (=> b!1195533 (=> (not res!795627) (not e!679382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195533 (= res!795627 (validMask!0 mask!1564))))

(declare-fun b!1195534 () Bool)

(declare-fun e!679379 () Bool)

(assert (=> b!1195534 (= e!679383 (and e!679379 mapRes!47300))))

(declare-fun condMapEmpty!47300 () Bool)

(declare-fun mapDefault!47300 () ValueCell!14445)

(assert (=> b!1195534 (= condMapEmpty!47300 (= (arr!37335 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14445)) mapDefault!47300)))))

(declare-fun b!1195535 () Bool)

(declare-fun res!795625 () Bool)

(assert (=> b!1195535 (=> (not res!795625) (not e!679382))))

(assert (=> b!1195535 (= res!795625 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26440))))

(declare-fun b!1195536 () Bool)

(assert (=> b!1195536 (= e!679384 (not true))))

(declare-fun arrayContainsKey!0 (array!77382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195536 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39582 0))(
  ( (Unit!39583) )
))
(declare-fun lt!542898 () Unit!39582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77382 (_ BitVec 64) (_ BitVec 32)) Unit!39582)

(assert (=> b!1195536 (= lt!542898 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1195537 () Bool)

(declare-fun res!795628 () Bool)

(assert (=> b!1195537 (=> (not res!795628) (not e!679382))))

(assert (=> b!1195537 (= res!795628 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37871 _keys!1208))))))

(declare-fun b!1195538 () Bool)

(declare-fun tp_is_empty!30309 () Bool)

(assert (=> b!1195538 (= e!679379 tp_is_empty!30309)))

(declare-fun b!1195539 () Bool)

(declare-fun res!795624 () Bool)

(assert (=> b!1195539 (=> (not res!795624) (not e!679382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195539 (= res!795624 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!47300 () Bool)

(assert (=> mapIsEmpty!47300 mapRes!47300))

(declare-fun b!1195540 () Bool)

(assert (=> b!1195540 (= e!679382 e!679384)))

(declare-fun res!795623 () Bool)

(assert (=> b!1195540 (=> (not res!795623) (not e!679384))))

(assert (=> b!1195540 (= res!795623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542897 mask!1564))))

(assert (=> b!1195540 (= lt!542897 (array!77383 (store (arr!37334 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37871 _keys!1208)))))

(declare-fun b!1195541 () Bool)

(assert (=> b!1195541 (= e!679380 tp_is_empty!30309)))

(assert (= (and start!100278 res!795622) b!1195533))

(assert (= (and b!1195533 res!795627) b!1195530))

(assert (= (and b!1195530 res!795630) b!1195532))

(assert (= (and b!1195532 res!795631) b!1195535))

(assert (= (and b!1195535 res!795625) b!1195537))

(assert (= (and b!1195537 res!795628) b!1195539))

(assert (= (and b!1195539 res!795624) b!1195529))

(assert (= (and b!1195529 res!795629) b!1195540))

(assert (= (and b!1195540 res!795623) b!1195531))

(assert (= (and b!1195531 res!795626) b!1195536))

(assert (= (and b!1195534 condMapEmpty!47300) mapIsEmpty!47300))

(assert (= (and b!1195534 (not condMapEmpty!47300)) mapNonEmpty!47300))

(get-info :version)

(assert (= (and mapNonEmpty!47300 ((_ is ValueCellFull!14445) mapValue!47300)) b!1195541))

(assert (= (and b!1195534 ((_ is ValueCellFull!14445) mapDefault!47300)) b!1195538))

(assert (= start!100278 b!1195534))

(declare-fun m!1103101 () Bool)

(assert (=> b!1195533 m!1103101))

(declare-fun m!1103103 () Bool)

(assert (=> b!1195540 m!1103103))

(declare-fun m!1103105 () Bool)

(assert (=> b!1195540 m!1103105))

(declare-fun m!1103107 () Bool)

(assert (=> b!1195531 m!1103107))

(declare-fun m!1103109 () Bool)

(assert (=> b!1195535 m!1103109))

(declare-fun m!1103111 () Bool)

(assert (=> b!1195536 m!1103111))

(declare-fun m!1103113 () Bool)

(assert (=> b!1195536 m!1103113))

(declare-fun m!1103115 () Bool)

(assert (=> b!1195539 m!1103115))

(declare-fun m!1103117 () Bool)

(assert (=> mapNonEmpty!47300 m!1103117))

(declare-fun m!1103119 () Bool)

(assert (=> b!1195532 m!1103119))

(declare-fun m!1103121 () Bool)

(assert (=> start!100278 m!1103121))

(declare-fun m!1103123 () Bool)

(assert (=> start!100278 m!1103123))

(declare-fun m!1103125 () Bool)

(assert (=> b!1195529 m!1103125))

(check-sat (not b!1195533) (not b!1195539) (not b!1195532) (not b!1195540) (not mapNonEmpty!47300) tp_is_empty!30309 (not b!1195535) (not b!1195536) (not start!100278) (not b!1195531))
(check-sat)
