; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100320 () Bool)

(assert start!100320)

(declare-fun b!1196348 () Bool)

(declare-fun e!679759 () Bool)

(assert (=> b!1196348 (= e!679759 (not true))))

(declare-datatypes ((array!77462 0))(
  ( (array!77463 (arr!37374 (Array (_ BitVec 32) (_ BitVec 64))) (size!37911 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77462)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196348 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39616 0))(
  ( (Unit!39617) )
))
(declare-fun lt!543024 () Unit!39616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77462 (_ BitVec 64) (_ BitVec 32)) Unit!39616)

(assert (=> b!1196348 (= lt!543024 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196349 () Bool)

(declare-fun e!679757 () Bool)

(declare-fun tp_is_empty!30351 () Bool)

(assert (=> b!1196349 (= e!679757 tp_is_empty!30351)))

(declare-fun mapNonEmpty!47363 () Bool)

(declare-fun mapRes!47363 () Bool)

(declare-fun tp!89974 () Bool)

(declare-fun e!679761 () Bool)

(assert (=> mapNonEmpty!47363 (= mapRes!47363 (and tp!89974 e!679761))))

(declare-datatypes ((V!45595 0))(
  ( (V!45596 (val!15232 Int)) )
))
(declare-datatypes ((ValueCell!14466 0))(
  ( (ValueCellFull!14466 (v!17871 V!45595)) (EmptyCell!14466) )
))
(declare-fun mapValue!47363 () ValueCell!14466)

(declare-datatypes ((array!77464 0))(
  ( (array!77465 (arr!37375 (Array (_ BitVec 32) ValueCell!14466)) (size!37912 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77464)

(declare-fun mapKey!47363 () (_ BitVec 32))

(declare-fun mapRest!47363 () (Array (_ BitVec 32) ValueCell!14466))

(assert (=> mapNonEmpty!47363 (= (arr!37375 _values!996) (store mapRest!47363 mapKey!47363 mapValue!47363))))

(declare-fun b!1196351 () Bool)

(assert (=> b!1196351 (= e!679761 tp_is_empty!30351)))

(declare-fun b!1196352 () Bool)

(declare-fun res!796253 () Bool)

(declare-fun e!679762 () Bool)

(assert (=> b!1196352 (=> (not res!796253) (not e!679762))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77462 (_ BitVec 32)) Bool)

(assert (=> b!1196352 (= res!796253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196353 () Bool)

(declare-fun res!796256 () Bool)

(assert (=> b!1196353 (=> (not res!796256) (not e!679762))))

(declare-datatypes ((List!26460 0))(
  ( (Nil!26457) (Cons!26456 (h!27665 (_ BitVec 64)) (t!39138 List!26460)) )
))
(declare-fun arrayNoDuplicates!0 (array!77462 (_ BitVec 32) List!26460) Bool)

(assert (=> b!1196353 (= res!796256 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26457))))

(declare-fun b!1196354 () Bool)

(declare-fun res!796259 () Bool)

(assert (=> b!1196354 (=> (not res!796259) (not e!679762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196354 (= res!796259 (validMask!0 mask!1564))))

(declare-fun b!1196355 () Bool)

(declare-fun res!796257 () Bool)

(assert (=> b!1196355 (=> (not res!796257) (not e!679759))))

(declare-fun lt!543023 () array!77462)

(assert (=> b!1196355 (= res!796257 (arrayNoDuplicates!0 lt!543023 #b00000000000000000000000000000000 Nil!26457))))

(declare-fun b!1196356 () Bool)

(declare-fun res!796254 () Bool)

(assert (=> b!1196356 (=> (not res!796254) (not e!679762))))

(assert (=> b!1196356 (= res!796254 (= (select (arr!37374 _keys!1208) i!673) k0!934))))

(declare-fun b!1196357 () Bool)

(declare-fun e!679758 () Bool)

(assert (=> b!1196357 (= e!679758 (and e!679757 mapRes!47363))))

(declare-fun condMapEmpty!47363 () Bool)

(declare-fun mapDefault!47363 () ValueCell!14466)

(assert (=> b!1196357 (= condMapEmpty!47363 (= (arr!37375 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14466)) mapDefault!47363)))))

(declare-fun b!1196358 () Bool)

(declare-fun res!796260 () Bool)

(assert (=> b!1196358 (=> (not res!796260) (not e!679762))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1196358 (= res!796260 (and (= (size!37912 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37911 _keys!1208) (size!37912 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196359 () Bool)

(assert (=> b!1196359 (= e!679762 e!679759)))

(declare-fun res!796252 () Bool)

(assert (=> b!1196359 (=> (not res!796252) (not e!679759))))

(assert (=> b!1196359 (= res!796252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543023 mask!1564))))

(assert (=> b!1196359 (= lt!543023 (array!77463 (store (arr!37374 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37911 _keys!1208)))))

(declare-fun b!1196350 () Bool)

(declare-fun res!796258 () Bool)

(assert (=> b!1196350 (=> (not res!796258) (not e!679762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196350 (= res!796258 (validKeyInArray!0 k0!934))))

(declare-fun res!796261 () Bool)

(assert (=> start!100320 (=> (not res!796261) (not e!679762))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100320 (= res!796261 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37911 _keys!1208))))))

(assert (=> start!100320 e!679762))

(declare-fun array_inv!28390 (array!77462) Bool)

(assert (=> start!100320 (array_inv!28390 _keys!1208)))

(assert (=> start!100320 true))

(declare-fun array_inv!28391 (array!77464) Bool)

(assert (=> start!100320 (and (array_inv!28391 _values!996) e!679758)))

(declare-fun b!1196360 () Bool)

(declare-fun res!796255 () Bool)

(assert (=> b!1196360 (=> (not res!796255) (not e!679762))))

(assert (=> b!1196360 (= res!796255 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37911 _keys!1208))))))

(declare-fun mapIsEmpty!47363 () Bool)

(assert (=> mapIsEmpty!47363 mapRes!47363))

(assert (= (and start!100320 res!796261) b!1196354))

(assert (= (and b!1196354 res!796259) b!1196358))

(assert (= (and b!1196358 res!796260) b!1196352))

(assert (= (and b!1196352 res!796253) b!1196353))

(assert (= (and b!1196353 res!796256) b!1196360))

(assert (= (and b!1196360 res!796255) b!1196350))

(assert (= (and b!1196350 res!796258) b!1196356))

(assert (= (and b!1196356 res!796254) b!1196359))

(assert (= (and b!1196359 res!796252) b!1196355))

(assert (= (and b!1196355 res!796257) b!1196348))

(assert (= (and b!1196357 condMapEmpty!47363) mapIsEmpty!47363))

(assert (= (and b!1196357 (not condMapEmpty!47363)) mapNonEmpty!47363))

(get-info :version)

(assert (= (and mapNonEmpty!47363 ((_ is ValueCellFull!14466) mapValue!47363)) b!1196351))

(assert (= (and b!1196357 ((_ is ValueCellFull!14466) mapDefault!47363)) b!1196349))

(assert (= start!100320 b!1196357))

(declare-fun m!1103647 () Bool)

(assert (=> start!100320 m!1103647))

(declare-fun m!1103649 () Bool)

(assert (=> start!100320 m!1103649))

(declare-fun m!1103651 () Bool)

(assert (=> b!1196348 m!1103651))

(declare-fun m!1103653 () Bool)

(assert (=> b!1196348 m!1103653))

(declare-fun m!1103655 () Bool)

(assert (=> b!1196359 m!1103655))

(declare-fun m!1103657 () Bool)

(assert (=> b!1196359 m!1103657))

(declare-fun m!1103659 () Bool)

(assert (=> mapNonEmpty!47363 m!1103659))

(declare-fun m!1103661 () Bool)

(assert (=> b!1196353 m!1103661))

(declare-fun m!1103663 () Bool)

(assert (=> b!1196352 m!1103663))

(declare-fun m!1103665 () Bool)

(assert (=> b!1196350 m!1103665))

(declare-fun m!1103667 () Bool)

(assert (=> b!1196354 m!1103667))

(declare-fun m!1103669 () Bool)

(assert (=> b!1196355 m!1103669))

(declare-fun m!1103671 () Bool)

(assert (=> b!1196356 m!1103671))

(check-sat (not b!1196350) (not b!1196348) (not mapNonEmpty!47363) (not b!1196354) tp_is_empty!30351 (not b!1196355) (not start!100320) (not b!1196353) (not b!1196352) (not b!1196359))
(check-sat)
