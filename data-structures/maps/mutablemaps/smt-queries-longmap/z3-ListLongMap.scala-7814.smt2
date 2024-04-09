; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97666 () Bool)

(assert start!97666)

(declare-fun b!1115497 () Bool)

(declare-fun e!635698 () Bool)

(declare-fun tp_is_empty!27861 () Bool)

(assert (=> b!1115497 (= e!635698 tp_is_empty!27861)))

(declare-fun b!1115498 () Bool)

(declare-fun e!635697 () Bool)

(declare-fun mapRes!43609 () Bool)

(assert (=> b!1115498 (= e!635697 (and e!635698 mapRes!43609))))

(declare-fun condMapEmpty!43609 () Bool)

(declare-datatypes ((V!42275 0))(
  ( (V!42276 (val!13987 Int)) )
))
(declare-datatypes ((ValueCell!13221 0))(
  ( (ValueCellFull!13221 (v!16621 V!42275)) (EmptyCell!13221) )
))
(declare-datatypes ((array!72562 0))(
  ( (array!72563 (arr!34930 (Array (_ BitVec 32) ValueCell!13221)) (size!35467 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72562)

(declare-fun mapDefault!43609 () ValueCell!13221)

(assert (=> b!1115498 (= condMapEmpty!43609 (= (arr!34930 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13221)) mapDefault!43609)))))

(declare-fun b!1115499 () Bool)

(declare-fun res!744796 () Bool)

(declare-fun e!635699 () Bool)

(assert (=> b!1115499 (=> (not res!744796) (not e!635699))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115499 (= res!744796 (validKeyInArray!0 k0!934))))

(declare-fun res!744792 () Bool)

(assert (=> start!97666 (=> (not res!744792) (not e!635699))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72564 0))(
  ( (array!72565 (arr!34931 (Array (_ BitVec 32) (_ BitVec 64))) (size!35468 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72564)

(assert (=> start!97666 (= res!744792 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35468 _keys!1208))))))

(assert (=> start!97666 e!635699))

(declare-fun array_inv!26710 (array!72564) Bool)

(assert (=> start!97666 (array_inv!26710 _keys!1208)))

(assert (=> start!97666 true))

(declare-fun array_inv!26711 (array!72562) Bool)

(assert (=> start!97666 (and (array_inv!26711 _values!996) e!635697)))

(declare-fun b!1115500 () Bool)

(declare-fun e!635694 () Bool)

(assert (=> b!1115500 (= e!635694 (not true))))

(declare-fun arrayContainsKey!0 (array!72564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115500 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36511 0))(
  ( (Unit!36512) )
))
(declare-fun lt!496970 () Unit!36511)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72564 (_ BitVec 64) (_ BitVec 32)) Unit!36511)

(assert (=> b!1115500 (= lt!496970 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1115501 () Bool)

(declare-fun res!744799 () Bool)

(assert (=> b!1115501 (=> (not res!744799) (not e!635699))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115501 (= res!744799 (validMask!0 mask!1564))))

(declare-fun b!1115502 () Bool)

(declare-fun res!744795 () Bool)

(assert (=> b!1115502 (=> (not res!744795) (not e!635699))))

(declare-datatypes ((List!24455 0))(
  ( (Nil!24452) (Cons!24451 (h!25660 (_ BitVec 64)) (t!34943 List!24455)) )
))
(declare-fun arrayNoDuplicates!0 (array!72564 (_ BitVec 32) List!24455) Bool)

(assert (=> b!1115502 (= res!744795 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24452))))

(declare-fun mapNonEmpty!43609 () Bool)

(declare-fun tp!82854 () Bool)

(declare-fun e!635696 () Bool)

(assert (=> mapNonEmpty!43609 (= mapRes!43609 (and tp!82854 e!635696))))

(declare-fun mapValue!43609 () ValueCell!13221)

(declare-fun mapKey!43609 () (_ BitVec 32))

(declare-fun mapRest!43609 () (Array (_ BitVec 32) ValueCell!13221))

(assert (=> mapNonEmpty!43609 (= (arr!34930 _values!996) (store mapRest!43609 mapKey!43609 mapValue!43609))))

(declare-fun mapIsEmpty!43609 () Bool)

(assert (=> mapIsEmpty!43609 mapRes!43609))

(declare-fun b!1115503 () Bool)

(assert (=> b!1115503 (= e!635699 e!635694)))

(declare-fun res!744800 () Bool)

(assert (=> b!1115503 (=> (not res!744800) (not e!635694))))

(declare-fun lt!496971 () array!72564)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72564 (_ BitVec 32)) Bool)

(assert (=> b!1115503 (= res!744800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496971 mask!1564))))

(assert (=> b!1115503 (= lt!496971 (array!72565 (store (arr!34931 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35468 _keys!1208)))))

(declare-fun b!1115504 () Bool)

(assert (=> b!1115504 (= e!635696 tp_is_empty!27861)))

(declare-fun b!1115505 () Bool)

(declare-fun res!744801 () Bool)

(assert (=> b!1115505 (=> (not res!744801) (not e!635699))))

(assert (=> b!1115505 (= res!744801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115506 () Bool)

(declare-fun res!744793 () Bool)

(assert (=> b!1115506 (=> (not res!744793) (not e!635694))))

(assert (=> b!1115506 (= res!744793 (arrayNoDuplicates!0 lt!496971 #b00000000000000000000000000000000 Nil!24452))))

(declare-fun b!1115507 () Bool)

(declare-fun res!744794 () Bool)

(assert (=> b!1115507 (=> (not res!744794) (not e!635699))))

(assert (=> b!1115507 (= res!744794 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35468 _keys!1208))))))

(declare-fun b!1115508 () Bool)

(declare-fun res!744798 () Bool)

(assert (=> b!1115508 (=> (not res!744798) (not e!635699))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115508 (= res!744798 (and (= (size!35467 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35468 _keys!1208) (size!35467 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115509 () Bool)

(declare-fun res!744797 () Bool)

(assert (=> b!1115509 (=> (not res!744797) (not e!635699))))

(assert (=> b!1115509 (= res!744797 (= (select (arr!34931 _keys!1208) i!673) k0!934))))

(assert (= (and start!97666 res!744792) b!1115501))

(assert (= (and b!1115501 res!744799) b!1115508))

(assert (= (and b!1115508 res!744798) b!1115505))

(assert (= (and b!1115505 res!744801) b!1115502))

(assert (= (and b!1115502 res!744795) b!1115507))

(assert (= (and b!1115507 res!744794) b!1115499))

(assert (= (and b!1115499 res!744796) b!1115509))

(assert (= (and b!1115509 res!744797) b!1115503))

(assert (= (and b!1115503 res!744800) b!1115506))

(assert (= (and b!1115506 res!744793) b!1115500))

(assert (= (and b!1115498 condMapEmpty!43609) mapIsEmpty!43609))

(assert (= (and b!1115498 (not condMapEmpty!43609)) mapNonEmpty!43609))

(get-info :version)

(assert (= (and mapNonEmpty!43609 ((_ is ValueCellFull!13221) mapValue!43609)) b!1115504))

(assert (= (and b!1115498 ((_ is ValueCellFull!13221) mapDefault!43609)) b!1115497))

(assert (= start!97666 b!1115498))

(declare-fun m!1032123 () Bool)

(assert (=> b!1115503 m!1032123))

(declare-fun m!1032125 () Bool)

(assert (=> b!1115503 m!1032125))

(declare-fun m!1032127 () Bool)

(assert (=> b!1115500 m!1032127))

(declare-fun m!1032129 () Bool)

(assert (=> b!1115500 m!1032129))

(declare-fun m!1032131 () Bool)

(assert (=> b!1115499 m!1032131))

(declare-fun m!1032133 () Bool)

(assert (=> b!1115509 m!1032133))

(declare-fun m!1032135 () Bool)

(assert (=> b!1115502 m!1032135))

(declare-fun m!1032137 () Bool)

(assert (=> start!97666 m!1032137))

(declare-fun m!1032139 () Bool)

(assert (=> start!97666 m!1032139))

(declare-fun m!1032141 () Bool)

(assert (=> mapNonEmpty!43609 m!1032141))

(declare-fun m!1032143 () Bool)

(assert (=> b!1115506 m!1032143))

(declare-fun m!1032145 () Bool)

(assert (=> b!1115505 m!1032145))

(declare-fun m!1032147 () Bool)

(assert (=> b!1115501 m!1032147))

(check-sat (not b!1115503) (not b!1115502) (not start!97666) tp_is_empty!27861 (not b!1115500) (not b!1115505) (not b!1115501) (not b!1115506) (not b!1115499) (not mapNonEmpty!43609))
(check-sat)
