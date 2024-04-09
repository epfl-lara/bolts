; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100284 () Bool)

(assert start!100284)

(declare-fun b!1195646 () Bool)

(declare-fun e!679437 () Bool)

(assert (=> b!1195646 (= e!679437 (not true))))

(declare-datatypes ((array!77392 0))(
  ( (array!77393 (arr!37339 (Array (_ BitVec 32) (_ BitVec 64))) (size!37876 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77392)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195646 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39586 0))(
  ( (Unit!39587) )
))
(declare-fun lt!542916 () Unit!39586)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77392 (_ BitVec 64) (_ BitVec 32)) Unit!39586)

(assert (=> b!1195646 (= lt!542916 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1195647 () Bool)

(declare-fun res!795715 () Bool)

(declare-fun e!679436 () Bool)

(assert (=> b!1195647 (=> (not res!795715) (not e!679436))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77392 (_ BitVec 32)) Bool)

(assert (=> b!1195647 (= res!795715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195648 () Bool)

(declare-fun e!679435 () Bool)

(declare-fun e!679434 () Bool)

(declare-fun mapRes!47309 () Bool)

(assert (=> b!1195648 (= e!679435 (and e!679434 mapRes!47309))))

(declare-fun condMapEmpty!47309 () Bool)

(declare-datatypes ((V!45547 0))(
  ( (V!45548 (val!15214 Int)) )
))
(declare-datatypes ((ValueCell!14448 0))(
  ( (ValueCellFull!14448 (v!17853 V!45547)) (EmptyCell!14448) )
))
(declare-datatypes ((array!77394 0))(
  ( (array!77395 (arr!37340 (Array (_ BitVec 32) ValueCell!14448)) (size!37877 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77394)

(declare-fun mapDefault!47309 () ValueCell!14448)

(assert (=> b!1195648 (= condMapEmpty!47309 (= (arr!37340 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14448)) mapDefault!47309)))))

(declare-fun b!1195649 () Bool)

(declare-fun res!795720 () Bool)

(assert (=> b!1195649 (=> (not res!795720) (not e!679436))))

(assert (=> b!1195649 (= res!795720 (= (select (arr!37339 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47309 () Bool)

(declare-fun tp!89920 () Bool)

(declare-fun e!679438 () Bool)

(assert (=> mapNonEmpty!47309 (= mapRes!47309 (and tp!89920 e!679438))))

(declare-fun mapRest!47309 () (Array (_ BitVec 32) ValueCell!14448))

(declare-fun mapValue!47309 () ValueCell!14448)

(declare-fun mapKey!47309 () (_ BitVec 32))

(assert (=> mapNonEmpty!47309 (= (arr!37340 _values!996) (store mapRest!47309 mapKey!47309 mapValue!47309))))

(declare-fun b!1195650 () Bool)

(declare-fun res!795719 () Bool)

(assert (=> b!1195650 (=> (not res!795719) (not e!679436))))

(declare-datatypes ((List!26445 0))(
  ( (Nil!26442) (Cons!26441 (h!27650 (_ BitVec 64)) (t!39123 List!26445)) )
))
(declare-fun arrayNoDuplicates!0 (array!77392 (_ BitVec 32) List!26445) Bool)

(assert (=> b!1195650 (= res!795719 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26442))))

(declare-fun b!1195651 () Bool)

(assert (=> b!1195651 (= e!679436 e!679437)))

(declare-fun res!795712 () Bool)

(assert (=> b!1195651 (=> (not res!795712) (not e!679437))))

(declare-fun lt!542915 () array!77392)

(assert (=> b!1195651 (= res!795712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542915 mask!1564))))

(assert (=> b!1195651 (= lt!542915 (array!77393 (store (arr!37339 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37876 _keys!1208)))))

(declare-fun res!795714 () Bool)

(assert (=> start!100284 (=> (not res!795714) (not e!679436))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100284 (= res!795714 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37876 _keys!1208))))))

(assert (=> start!100284 e!679436))

(declare-fun array_inv!28360 (array!77392) Bool)

(assert (=> start!100284 (array_inv!28360 _keys!1208)))

(assert (=> start!100284 true))

(declare-fun array_inv!28361 (array!77394) Bool)

(assert (=> start!100284 (and (array_inv!28361 _values!996) e!679435)))

(declare-fun b!1195652 () Bool)

(declare-fun tp_is_empty!30315 () Bool)

(assert (=> b!1195652 (= e!679438 tp_is_empty!30315)))

(declare-fun b!1195653 () Bool)

(declare-fun res!795713 () Bool)

(assert (=> b!1195653 (=> (not res!795713) (not e!679436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195653 (= res!795713 (validMask!0 mask!1564))))

(declare-fun b!1195654 () Bool)

(declare-fun res!795721 () Bool)

(assert (=> b!1195654 (=> (not res!795721) (not e!679437))))

(assert (=> b!1195654 (= res!795721 (arrayNoDuplicates!0 lt!542915 #b00000000000000000000000000000000 Nil!26442))))

(declare-fun b!1195655 () Bool)

(declare-fun res!795716 () Bool)

(assert (=> b!1195655 (=> (not res!795716) (not e!679436))))

(assert (=> b!1195655 (= res!795716 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37876 _keys!1208))))))

(declare-fun b!1195656 () Bool)

(declare-fun res!795718 () Bool)

(assert (=> b!1195656 (=> (not res!795718) (not e!679436))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195656 (= res!795718 (and (= (size!37877 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37876 _keys!1208) (size!37877 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195657 () Bool)

(declare-fun res!795717 () Bool)

(assert (=> b!1195657 (=> (not res!795717) (not e!679436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195657 (= res!795717 (validKeyInArray!0 k0!934))))

(declare-fun b!1195658 () Bool)

(assert (=> b!1195658 (= e!679434 tp_is_empty!30315)))

(declare-fun mapIsEmpty!47309 () Bool)

(assert (=> mapIsEmpty!47309 mapRes!47309))

(assert (= (and start!100284 res!795714) b!1195653))

(assert (= (and b!1195653 res!795713) b!1195656))

(assert (= (and b!1195656 res!795718) b!1195647))

(assert (= (and b!1195647 res!795715) b!1195650))

(assert (= (and b!1195650 res!795719) b!1195655))

(assert (= (and b!1195655 res!795716) b!1195657))

(assert (= (and b!1195657 res!795717) b!1195649))

(assert (= (and b!1195649 res!795720) b!1195651))

(assert (= (and b!1195651 res!795712) b!1195654))

(assert (= (and b!1195654 res!795721) b!1195646))

(assert (= (and b!1195648 condMapEmpty!47309) mapIsEmpty!47309))

(assert (= (and b!1195648 (not condMapEmpty!47309)) mapNonEmpty!47309))

(get-info :version)

(assert (= (and mapNonEmpty!47309 ((_ is ValueCellFull!14448) mapValue!47309)) b!1195652))

(assert (= (and b!1195648 ((_ is ValueCellFull!14448) mapDefault!47309)) b!1195658))

(assert (= start!100284 b!1195648))

(declare-fun m!1103179 () Bool)

(assert (=> b!1195650 m!1103179))

(declare-fun m!1103181 () Bool)

(assert (=> b!1195651 m!1103181))

(declare-fun m!1103183 () Bool)

(assert (=> b!1195651 m!1103183))

(declare-fun m!1103185 () Bool)

(assert (=> start!100284 m!1103185))

(declare-fun m!1103187 () Bool)

(assert (=> start!100284 m!1103187))

(declare-fun m!1103189 () Bool)

(assert (=> b!1195649 m!1103189))

(declare-fun m!1103191 () Bool)

(assert (=> b!1195653 m!1103191))

(declare-fun m!1103193 () Bool)

(assert (=> b!1195654 m!1103193))

(declare-fun m!1103195 () Bool)

(assert (=> b!1195657 m!1103195))

(declare-fun m!1103197 () Bool)

(assert (=> b!1195647 m!1103197))

(declare-fun m!1103199 () Bool)

(assert (=> b!1195646 m!1103199))

(declare-fun m!1103201 () Bool)

(assert (=> b!1195646 m!1103201))

(declare-fun m!1103203 () Bool)

(assert (=> mapNonEmpty!47309 m!1103203))

(check-sat (not start!100284) (not b!1195650) (not b!1195651) (not b!1195657) (not b!1195647) (not b!1195646) (not b!1195654) (not b!1195653) tp_is_empty!30315 (not mapNonEmpty!47309))
(check-sat)
