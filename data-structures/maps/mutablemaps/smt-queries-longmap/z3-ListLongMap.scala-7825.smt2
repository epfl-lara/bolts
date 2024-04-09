; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97732 () Bool)

(assert start!97732)

(declare-fun b!1116784 () Bool)

(declare-fun e!636293 () Bool)

(declare-fun e!636289 () Bool)

(declare-fun mapRes!43708 () Bool)

(assert (=> b!1116784 (= e!636293 (and e!636289 mapRes!43708))))

(declare-fun condMapEmpty!43708 () Bool)

(declare-datatypes ((V!42363 0))(
  ( (V!42364 (val!14020 Int)) )
))
(declare-datatypes ((ValueCell!13254 0))(
  ( (ValueCellFull!13254 (v!16654 V!42363)) (EmptyCell!13254) )
))
(declare-datatypes ((array!72692 0))(
  ( (array!72693 (arr!34995 (Array (_ BitVec 32) ValueCell!13254)) (size!35532 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72692)

(declare-fun mapDefault!43708 () ValueCell!13254)

(assert (=> b!1116784 (= condMapEmpty!43708 (= (arr!34995 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13254)) mapDefault!43708)))))

(declare-fun mapNonEmpty!43708 () Bool)

(declare-fun tp!82953 () Bool)

(declare-fun e!636288 () Bool)

(assert (=> mapNonEmpty!43708 (= mapRes!43708 (and tp!82953 e!636288))))

(declare-fun mapValue!43708 () ValueCell!13254)

(declare-fun mapRest!43708 () (Array (_ BitVec 32) ValueCell!13254))

(declare-fun mapKey!43708 () (_ BitVec 32))

(assert (=> mapNonEmpty!43708 (= (arr!34995 _values!996) (store mapRest!43708 mapKey!43708 mapValue!43708))))

(declare-fun b!1116786 () Bool)

(declare-fun tp_is_empty!27927 () Bool)

(assert (=> b!1116786 (= e!636289 tp_is_empty!27927)))

(declare-fun b!1116787 () Bool)

(declare-fun res!745784 () Bool)

(declare-fun e!636292 () Bool)

(assert (=> b!1116787 (=> (not res!745784) (not e!636292))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116787 (= res!745784 (validMask!0 mask!1564))))

(declare-fun b!1116788 () Bool)

(assert (=> b!1116788 (= e!636288 tp_is_empty!27927)))

(declare-fun b!1116789 () Bool)

(declare-fun res!745790 () Bool)

(assert (=> b!1116789 (=> (not res!745790) (not e!636292))))

(declare-datatypes ((array!72694 0))(
  ( (array!72695 (arr!34996 (Array (_ BitVec 32) (_ BitVec 64))) (size!35533 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72694)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72694 (_ BitVec 32)) Bool)

(assert (=> b!1116789 (= res!745790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116790 () Bool)

(declare-fun res!745789 () Bool)

(assert (=> b!1116790 (=> (not res!745789) (not e!636292))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116790 (= res!745789 (validKeyInArray!0 k0!934))))

(declare-fun b!1116791 () Bool)

(declare-fun res!745787 () Bool)

(assert (=> b!1116791 (=> (not res!745787) (not e!636292))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116791 (= res!745787 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35533 _keys!1208))))))

(declare-fun mapIsEmpty!43708 () Bool)

(assert (=> mapIsEmpty!43708 mapRes!43708))

(declare-fun b!1116792 () Bool)

(declare-fun res!745788 () Bool)

(assert (=> b!1116792 (=> (not res!745788) (not e!636292))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116792 (= res!745788 (and (= (size!35532 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35533 _keys!1208) (size!35532 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116793 () Bool)

(declare-fun res!745782 () Bool)

(assert (=> b!1116793 (=> (not res!745782) (not e!636292))))

(assert (=> b!1116793 (= res!745782 (= (select (arr!34996 _keys!1208) i!673) k0!934))))

(declare-fun res!745791 () Bool)

(assert (=> start!97732 (=> (not res!745791) (not e!636292))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97732 (= res!745791 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35533 _keys!1208))))))

(assert (=> start!97732 e!636292))

(declare-fun array_inv!26756 (array!72694) Bool)

(assert (=> start!97732 (array_inv!26756 _keys!1208)))

(assert (=> start!97732 true))

(declare-fun array_inv!26757 (array!72692) Bool)

(assert (=> start!97732 (and (array_inv!26757 _values!996) e!636293)))

(declare-fun b!1116785 () Bool)

(declare-fun res!745785 () Bool)

(assert (=> b!1116785 (=> (not res!745785) (not e!636292))))

(declare-datatypes ((List!24482 0))(
  ( (Nil!24479) (Cons!24478 (h!25687 (_ BitVec 64)) (t!34970 List!24482)) )
))
(declare-fun arrayNoDuplicates!0 (array!72694 (_ BitVec 32) List!24482) Bool)

(assert (=> b!1116785 (= res!745785 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24479))))

(declare-fun b!1116794 () Bool)

(declare-fun e!636290 () Bool)

(assert (=> b!1116794 (= e!636290 (not true))))

(declare-fun arrayContainsKey!0 (array!72694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116794 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36557 0))(
  ( (Unit!36558) )
))
(declare-fun lt!497169 () Unit!36557)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72694 (_ BitVec 64) (_ BitVec 32)) Unit!36557)

(assert (=> b!1116794 (= lt!497169 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1116795 () Bool)

(assert (=> b!1116795 (= e!636292 e!636290)))

(declare-fun res!745786 () Bool)

(assert (=> b!1116795 (=> (not res!745786) (not e!636290))))

(declare-fun lt!497168 () array!72694)

(assert (=> b!1116795 (= res!745786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497168 mask!1564))))

(assert (=> b!1116795 (= lt!497168 (array!72695 (store (arr!34996 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35533 _keys!1208)))))

(declare-fun b!1116796 () Bool)

(declare-fun res!745783 () Bool)

(assert (=> b!1116796 (=> (not res!745783) (not e!636290))))

(assert (=> b!1116796 (= res!745783 (arrayNoDuplicates!0 lt!497168 #b00000000000000000000000000000000 Nil!24479))))

(assert (= (and start!97732 res!745791) b!1116787))

(assert (= (and b!1116787 res!745784) b!1116792))

(assert (= (and b!1116792 res!745788) b!1116789))

(assert (= (and b!1116789 res!745790) b!1116785))

(assert (= (and b!1116785 res!745785) b!1116791))

(assert (= (and b!1116791 res!745787) b!1116790))

(assert (= (and b!1116790 res!745789) b!1116793))

(assert (= (and b!1116793 res!745782) b!1116795))

(assert (= (and b!1116795 res!745786) b!1116796))

(assert (= (and b!1116796 res!745783) b!1116794))

(assert (= (and b!1116784 condMapEmpty!43708) mapIsEmpty!43708))

(assert (= (and b!1116784 (not condMapEmpty!43708)) mapNonEmpty!43708))

(get-info :version)

(assert (= (and mapNonEmpty!43708 ((_ is ValueCellFull!13254) mapValue!43708)) b!1116788))

(assert (= (and b!1116784 ((_ is ValueCellFull!13254) mapDefault!43708)) b!1116786))

(assert (= start!97732 b!1116784))

(declare-fun m!1032981 () Bool)

(assert (=> b!1116790 m!1032981))

(declare-fun m!1032983 () Bool)

(assert (=> b!1116793 m!1032983))

(declare-fun m!1032985 () Bool)

(assert (=> b!1116795 m!1032985))

(declare-fun m!1032987 () Bool)

(assert (=> b!1116795 m!1032987))

(declare-fun m!1032989 () Bool)

(assert (=> start!97732 m!1032989))

(declare-fun m!1032991 () Bool)

(assert (=> start!97732 m!1032991))

(declare-fun m!1032993 () Bool)

(assert (=> b!1116796 m!1032993))

(declare-fun m!1032995 () Bool)

(assert (=> b!1116787 m!1032995))

(declare-fun m!1032997 () Bool)

(assert (=> b!1116789 m!1032997))

(declare-fun m!1032999 () Bool)

(assert (=> mapNonEmpty!43708 m!1032999))

(declare-fun m!1033001 () Bool)

(assert (=> b!1116785 m!1033001))

(declare-fun m!1033003 () Bool)

(assert (=> b!1116794 m!1033003))

(declare-fun m!1033005 () Bool)

(assert (=> b!1116794 m!1033005))

(check-sat (not b!1116785) (not b!1116796) (not b!1116787) (not mapNonEmpty!43708) (not start!97732) (not b!1116790) (not b!1116789) (not b!1116794) (not b!1116795) tp_is_empty!27927)
(check-sat)
