; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97762 () Bool)

(assert start!97762)

(declare-fun b!1117369 () Bool)

(declare-fun e!636560 () Bool)

(declare-fun tp_is_empty!27957 () Bool)

(assert (=> b!1117369 (= e!636560 tp_is_empty!27957)))

(declare-fun res!746233 () Bool)

(declare-fun e!636562 () Bool)

(assert (=> start!97762 (=> (not res!746233) (not e!636562))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72748 0))(
  ( (array!72749 (arr!35023 (Array (_ BitVec 32) (_ BitVec 64))) (size!35560 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72748)

(assert (=> start!97762 (= res!746233 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35560 _keys!1208))))))

(assert (=> start!97762 e!636562))

(declare-fun array_inv!26776 (array!72748) Bool)

(assert (=> start!97762 (array_inv!26776 _keys!1208)))

(assert (=> start!97762 true))

(declare-datatypes ((V!42403 0))(
  ( (V!42404 (val!14035 Int)) )
))
(declare-datatypes ((ValueCell!13269 0))(
  ( (ValueCellFull!13269 (v!16669 V!42403)) (EmptyCell!13269) )
))
(declare-datatypes ((array!72750 0))(
  ( (array!72751 (arr!35024 (Array (_ BitVec 32) ValueCell!13269)) (size!35561 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72750)

(declare-fun e!636559 () Bool)

(declare-fun array_inv!26777 (array!72750) Bool)

(assert (=> start!97762 (and (array_inv!26777 _values!996) e!636559)))

(declare-fun mapIsEmpty!43753 () Bool)

(declare-fun mapRes!43753 () Bool)

(assert (=> mapIsEmpty!43753 mapRes!43753))

(declare-fun b!1117370 () Bool)

(declare-fun res!746235 () Bool)

(assert (=> b!1117370 (=> (not res!746235) (not e!636562))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72748 (_ BitVec 32)) Bool)

(assert (=> b!1117370 (= res!746235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117371 () Bool)

(declare-fun res!746240 () Bool)

(assert (=> b!1117371 (=> (not res!746240) (not e!636562))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1117371 (= res!746240 (= (select (arr!35023 _keys!1208) i!673) k0!934))))

(declare-fun b!1117372 () Bool)

(declare-fun res!746241 () Bool)

(assert (=> b!1117372 (=> (not res!746241) (not e!636562))))

(declare-datatypes ((List!24491 0))(
  ( (Nil!24488) (Cons!24487 (h!25696 (_ BitVec 64)) (t!34979 List!24491)) )
))
(declare-fun arrayNoDuplicates!0 (array!72748 (_ BitVec 32) List!24491) Bool)

(assert (=> b!1117372 (= res!746241 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24488))))

(declare-fun b!1117373 () Bool)

(declare-fun e!636558 () Bool)

(assert (=> b!1117373 (= e!636558 (not true))))

(declare-fun arrayContainsKey!0 (array!72748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117373 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36579 0))(
  ( (Unit!36580) )
))
(declare-fun lt!497259 () Unit!36579)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72748 (_ BitVec 64) (_ BitVec 32)) Unit!36579)

(assert (=> b!1117373 (= lt!497259 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43753 () Bool)

(declare-fun tp!82998 () Bool)

(declare-fun e!636561 () Bool)

(assert (=> mapNonEmpty!43753 (= mapRes!43753 (and tp!82998 e!636561))))

(declare-fun mapRest!43753 () (Array (_ BitVec 32) ValueCell!13269))

(declare-fun mapKey!43753 () (_ BitVec 32))

(declare-fun mapValue!43753 () ValueCell!13269)

(assert (=> mapNonEmpty!43753 (= (arr!35024 _values!996) (store mapRest!43753 mapKey!43753 mapValue!43753))))

(declare-fun b!1117374 () Bool)

(declare-fun res!746232 () Bool)

(assert (=> b!1117374 (=> (not res!746232) (not e!636562))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117374 (= res!746232 (and (= (size!35561 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35560 _keys!1208) (size!35561 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117375 () Bool)

(declare-fun res!746239 () Bool)

(assert (=> b!1117375 (=> (not res!746239) (not e!636562))))

(assert (=> b!1117375 (= res!746239 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35560 _keys!1208))))))

(declare-fun b!1117376 () Bool)

(assert (=> b!1117376 (= e!636561 tp_is_empty!27957)))

(declare-fun b!1117377 () Bool)

(declare-fun res!746236 () Bool)

(assert (=> b!1117377 (=> (not res!746236) (not e!636558))))

(declare-fun lt!497258 () array!72748)

(assert (=> b!1117377 (= res!746236 (arrayNoDuplicates!0 lt!497258 #b00000000000000000000000000000000 Nil!24488))))

(declare-fun b!1117378 () Bool)

(assert (=> b!1117378 (= e!636559 (and e!636560 mapRes!43753))))

(declare-fun condMapEmpty!43753 () Bool)

(declare-fun mapDefault!43753 () ValueCell!13269)

(assert (=> b!1117378 (= condMapEmpty!43753 (= (arr!35024 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13269)) mapDefault!43753)))))

(declare-fun b!1117379 () Bool)

(assert (=> b!1117379 (= e!636562 e!636558)))

(declare-fun res!746238 () Bool)

(assert (=> b!1117379 (=> (not res!746238) (not e!636558))))

(assert (=> b!1117379 (= res!746238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497258 mask!1564))))

(assert (=> b!1117379 (= lt!497258 (array!72749 (store (arr!35023 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35560 _keys!1208)))))

(declare-fun b!1117380 () Bool)

(declare-fun res!746234 () Bool)

(assert (=> b!1117380 (=> (not res!746234) (not e!636562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117380 (= res!746234 (validKeyInArray!0 k0!934))))

(declare-fun b!1117381 () Bool)

(declare-fun res!746237 () Bool)

(assert (=> b!1117381 (=> (not res!746237) (not e!636562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117381 (= res!746237 (validMask!0 mask!1564))))

(assert (= (and start!97762 res!746233) b!1117381))

(assert (= (and b!1117381 res!746237) b!1117374))

(assert (= (and b!1117374 res!746232) b!1117370))

(assert (= (and b!1117370 res!746235) b!1117372))

(assert (= (and b!1117372 res!746241) b!1117375))

(assert (= (and b!1117375 res!746239) b!1117380))

(assert (= (and b!1117380 res!746234) b!1117371))

(assert (= (and b!1117371 res!746240) b!1117379))

(assert (= (and b!1117379 res!746238) b!1117377))

(assert (= (and b!1117377 res!746236) b!1117373))

(assert (= (and b!1117378 condMapEmpty!43753) mapIsEmpty!43753))

(assert (= (and b!1117378 (not condMapEmpty!43753)) mapNonEmpty!43753))

(get-info :version)

(assert (= (and mapNonEmpty!43753 ((_ is ValueCellFull!13269) mapValue!43753)) b!1117376))

(assert (= (and b!1117378 ((_ is ValueCellFull!13269) mapDefault!43753)) b!1117369))

(assert (= start!97762 b!1117378))

(declare-fun m!1033371 () Bool)

(assert (=> b!1117381 m!1033371))

(declare-fun m!1033373 () Bool)

(assert (=> start!97762 m!1033373))

(declare-fun m!1033375 () Bool)

(assert (=> start!97762 m!1033375))

(declare-fun m!1033377 () Bool)

(assert (=> b!1117371 m!1033377))

(declare-fun m!1033379 () Bool)

(assert (=> b!1117380 m!1033379))

(declare-fun m!1033381 () Bool)

(assert (=> b!1117372 m!1033381))

(declare-fun m!1033383 () Bool)

(assert (=> b!1117379 m!1033383))

(declare-fun m!1033385 () Bool)

(assert (=> b!1117379 m!1033385))

(declare-fun m!1033387 () Bool)

(assert (=> b!1117377 m!1033387))

(declare-fun m!1033389 () Bool)

(assert (=> mapNonEmpty!43753 m!1033389))

(declare-fun m!1033391 () Bool)

(assert (=> b!1117373 m!1033391))

(declare-fun m!1033393 () Bool)

(assert (=> b!1117373 m!1033393))

(declare-fun m!1033395 () Bool)

(assert (=> b!1117370 m!1033395))

(check-sat (not b!1117370) (not mapNonEmpty!43753) (not b!1117373) (not start!97762) (not b!1117381) (not b!1117377) (not b!1117380) (not b!1117379) tp_is_empty!27957 (not b!1117372))
(check-sat)
