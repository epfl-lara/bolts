; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100326 () Bool)

(assert start!100326)

(declare-fun b!1196465 () Bool)

(declare-fun res!796342 () Bool)

(declare-fun e!679812 () Bool)

(assert (=> b!1196465 (=> (not res!796342) (not e!679812))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196465 (= res!796342 (validKeyInArray!0 k0!934))))

(declare-fun b!1196466 () Bool)

(declare-fun res!796344 () Bool)

(assert (=> b!1196466 (=> (not res!796344) (not e!679812))))

(declare-datatypes ((array!77474 0))(
  ( (array!77475 (arr!37380 (Array (_ BitVec 32) (_ BitVec 64))) (size!37917 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77474)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45603 0))(
  ( (V!45604 (val!15235 Int)) )
))
(declare-datatypes ((ValueCell!14469 0))(
  ( (ValueCellFull!14469 (v!17874 V!45603)) (EmptyCell!14469) )
))
(declare-datatypes ((array!77476 0))(
  ( (array!77477 (arr!37381 (Array (_ BitVec 32) ValueCell!14469)) (size!37918 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77476)

(assert (=> b!1196466 (= res!796344 (and (= (size!37918 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37917 _keys!1208) (size!37918 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!679816 () Bool)

(declare-fun b!1196467 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196467 (= e!679816 (not (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37917 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvsub (size!37917 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (bvsub (size!37917 _keys!1208) from!1455)))))))

(declare-fun arrayContainsKey!0 (array!77474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196467 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39618 0))(
  ( (Unit!39619) )
))
(declare-fun lt!543041 () Unit!39618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77474 (_ BitVec 64) (_ BitVec 32)) Unit!39618)

(assert (=> b!1196467 (= lt!543041 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196469 () Bool)

(assert (=> b!1196469 (= e!679812 e!679816)))

(declare-fun res!796346 () Bool)

(assert (=> b!1196469 (=> (not res!796346) (not e!679816))))

(declare-fun lt!543042 () array!77474)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77474 (_ BitVec 32)) Bool)

(assert (=> b!1196469 (= res!796346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543042 mask!1564))))

(assert (=> b!1196469 (= lt!543042 (array!77475 (store (arr!37380 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37917 _keys!1208)))))

(declare-fun b!1196470 () Bool)

(declare-fun res!796349 () Bool)

(assert (=> b!1196470 (=> (not res!796349) (not e!679812))))

(assert (=> b!1196470 (= res!796349 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37917 _keys!1208))))))

(declare-fun b!1196471 () Bool)

(declare-fun res!796350 () Bool)

(assert (=> b!1196471 (=> (not res!796350) (not e!679812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196471 (= res!796350 (validMask!0 mask!1564))))

(declare-fun b!1196472 () Bool)

(declare-fun e!679814 () Bool)

(declare-fun e!679813 () Bool)

(declare-fun mapRes!47372 () Bool)

(assert (=> b!1196472 (= e!679814 (and e!679813 mapRes!47372))))

(declare-fun condMapEmpty!47372 () Bool)

(declare-fun mapDefault!47372 () ValueCell!14469)

(assert (=> b!1196472 (= condMapEmpty!47372 (= (arr!37381 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14469)) mapDefault!47372)))))

(declare-fun b!1196473 () Bool)

(declare-fun tp_is_empty!30357 () Bool)

(assert (=> b!1196473 (= e!679813 tp_is_empty!30357)))

(declare-fun mapNonEmpty!47372 () Bool)

(declare-fun tp!89983 () Bool)

(declare-fun e!679815 () Bool)

(assert (=> mapNonEmpty!47372 (= mapRes!47372 (and tp!89983 e!679815))))

(declare-fun mapValue!47372 () ValueCell!14469)

(declare-fun mapRest!47372 () (Array (_ BitVec 32) ValueCell!14469))

(declare-fun mapKey!47372 () (_ BitVec 32))

(assert (=> mapNonEmpty!47372 (= (arr!37381 _values!996) (store mapRest!47372 mapKey!47372 mapValue!47372))))

(declare-fun b!1196474 () Bool)

(declare-fun res!796347 () Bool)

(assert (=> b!1196474 (=> (not res!796347) (not e!679816))))

(declare-datatypes ((List!26462 0))(
  ( (Nil!26459) (Cons!26458 (h!27667 (_ BitVec 64)) (t!39140 List!26462)) )
))
(declare-fun arrayNoDuplicates!0 (array!77474 (_ BitVec 32) List!26462) Bool)

(assert (=> b!1196474 (= res!796347 (arrayNoDuplicates!0 lt!543042 #b00000000000000000000000000000000 Nil!26459))))

(declare-fun mapIsEmpty!47372 () Bool)

(assert (=> mapIsEmpty!47372 mapRes!47372))

(declare-fun b!1196475 () Bool)

(declare-fun res!796348 () Bool)

(assert (=> b!1196475 (=> (not res!796348) (not e!679812))))

(assert (=> b!1196475 (= res!796348 (= (select (arr!37380 _keys!1208) i!673) k0!934))))

(declare-fun b!1196476 () Bool)

(declare-fun res!796345 () Bool)

(assert (=> b!1196476 (=> (not res!796345) (not e!679812))))

(assert (=> b!1196476 (= res!796345 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26459))))

(declare-fun b!1196477 () Bool)

(declare-fun res!796351 () Bool)

(assert (=> b!1196477 (=> (not res!796351) (not e!679812))))

(assert (=> b!1196477 (= res!796351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196468 () Bool)

(assert (=> b!1196468 (= e!679815 tp_is_empty!30357)))

(declare-fun res!796343 () Bool)

(assert (=> start!100326 (=> (not res!796343) (not e!679812))))

(assert (=> start!100326 (= res!796343 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37917 _keys!1208))))))

(assert (=> start!100326 e!679812))

(declare-fun array_inv!28394 (array!77474) Bool)

(assert (=> start!100326 (array_inv!28394 _keys!1208)))

(assert (=> start!100326 true))

(declare-fun array_inv!28395 (array!77476) Bool)

(assert (=> start!100326 (and (array_inv!28395 _values!996) e!679814)))

(assert (= (and start!100326 res!796343) b!1196471))

(assert (= (and b!1196471 res!796350) b!1196466))

(assert (= (and b!1196466 res!796344) b!1196477))

(assert (= (and b!1196477 res!796351) b!1196476))

(assert (= (and b!1196476 res!796345) b!1196470))

(assert (= (and b!1196470 res!796349) b!1196465))

(assert (= (and b!1196465 res!796342) b!1196475))

(assert (= (and b!1196475 res!796348) b!1196469))

(assert (= (and b!1196469 res!796346) b!1196474))

(assert (= (and b!1196474 res!796347) b!1196467))

(assert (= (and b!1196472 condMapEmpty!47372) mapIsEmpty!47372))

(assert (= (and b!1196472 (not condMapEmpty!47372)) mapNonEmpty!47372))

(get-info :version)

(assert (= (and mapNonEmpty!47372 ((_ is ValueCellFull!14469) mapValue!47372)) b!1196468))

(assert (= (and b!1196472 ((_ is ValueCellFull!14469) mapDefault!47372)) b!1196473))

(assert (= start!100326 b!1196472))

(declare-fun m!1103725 () Bool)

(assert (=> start!100326 m!1103725))

(declare-fun m!1103727 () Bool)

(assert (=> start!100326 m!1103727))

(declare-fun m!1103729 () Bool)

(assert (=> b!1196469 m!1103729))

(declare-fun m!1103731 () Bool)

(assert (=> b!1196469 m!1103731))

(declare-fun m!1103733 () Bool)

(assert (=> b!1196465 m!1103733))

(declare-fun m!1103735 () Bool)

(assert (=> b!1196474 m!1103735))

(declare-fun m!1103737 () Bool)

(assert (=> b!1196477 m!1103737))

(declare-fun m!1103739 () Bool)

(assert (=> b!1196475 m!1103739))

(declare-fun m!1103741 () Bool)

(assert (=> mapNonEmpty!47372 m!1103741))

(declare-fun m!1103743 () Bool)

(assert (=> b!1196471 m!1103743))

(declare-fun m!1103745 () Bool)

(assert (=> b!1196476 m!1103745))

(declare-fun m!1103747 () Bool)

(assert (=> b!1196467 m!1103747))

(declare-fun m!1103749 () Bool)

(assert (=> b!1196467 m!1103749))

(check-sat (not b!1196474) (not mapNonEmpty!47372) (not b!1196469) (not b!1196476) (not b!1196465) (not b!1196467) (not start!100326) (not b!1196471) tp_is_empty!30357 (not b!1196477))
(check-sat)
