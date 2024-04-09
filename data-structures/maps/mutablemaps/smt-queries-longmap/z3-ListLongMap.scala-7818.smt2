; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97690 () Bool)

(assert start!97690)

(declare-fun b!1115966 () Bool)

(declare-fun e!635910 () Bool)

(assert (=> b!1115966 (= e!635910 (not true))))

(declare-datatypes ((array!72610 0))(
  ( (array!72611 (arr!34954 (Array (_ BitVec 32) (_ BitVec 64))) (size!35491 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72610)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115966 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36525 0))(
  ( (Unit!36526) )
))
(declare-fun lt!497042 () Unit!36525)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72610 (_ BitVec 64) (_ BitVec 32)) Unit!36525)

(assert (=> b!1115966 (= lt!497042 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1115967 () Bool)

(declare-fun res!745160 () Bool)

(declare-fun e!635914 () Bool)

(assert (=> b!1115967 (=> (not res!745160) (not e!635914))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42307 0))(
  ( (V!42308 (val!13999 Int)) )
))
(declare-datatypes ((ValueCell!13233 0))(
  ( (ValueCellFull!13233 (v!16633 V!42307)) (EmptyCell!13233) )
))
(declare-datatypes ((array!72612 0))(
  ( (array!72613 (arr!34955 (Array (_ BitVec 32) ValueCell!13233)) (size!35492 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72612)

(assert (=> b!1115967 (= res!745160 (and (= (size!35492 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35491 _keys!1208) (size!35492 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43645 () Bool)

(declare-fun mapRes!43645 () Bool)

(assert (=> mapIsEmpty!43645 mapRes!43645))

(declare-fun b!1115968 () Bool)

(assert (=> b!1115968 (= e!635914 e!635910)))

(declare-fun res!745159 () Bool)

(assert (=> b!1115968 (=> (not res!745159) (not e!635910))))

(declare-fun lt!497043 () array!72610)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72610 (_ BitVec 32)) Bool)

(assert (=> b!1115968 (= res!745159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497043 mask!1564))))

(assert (=> b!1115968 (= lt!497043 (array!72611 (store (arr!34954 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35491 _keys!1208)))))

(declare-fun b!1115969 () Bool)

(declare-fun res!745156 () Bool)

(assert (=> b!1115969 (=> (not res!745156) (not e!635914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115969 (= res!745156 (validKeyInArray!0 k0!934))))

(declare-fun b!1115970 () Bool)

(declare-fun res!745161 () Bool)

(assert (=> b!1115970 (=> (not res!745161) (not e!635910))))

(declare-datatypes ((List!24465 0))(
  ( (Nil!24462) (Cons!24461 (h!25670 (_ BitVec 64)) (t!34953 List!24465)) )
))
(declare-fun arrayNoDuplicates!0 (array!72610 (_ BitVec 32) List!24465) Bool)

(assert (=> b!1115970 (= res!745161 (arrayNoDuplicates!0 lt!497043 #b00000000000000000000000000000000 Nil!24462))))

(declare-fun b!1115971 () Bool)

(declare-fun res!745153 () Bool)

(assert (=> b!1115971 (=> (not res!745153) (not e!635914))))

(assert (=> b!1115971 (= res!745153 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35491 _keys!1208))))))

(declare-fun b!1115972 () Bool)

(declare-fun res!745157 () Bool)

(assert (=> b!1115972 (=> (not res!745157) (not e!635914))))

(assert (=> b!1115972 (= res!745157 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24462))))

(declare-fun b!1115973 () Bool)

(declare-fun res!745152 () Bool)

(assert (=> b!1115973 (=> (not res!745152) (not e!635914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115973 (= res!745152 (validMask!0 mask!1564))))

(declare-fun b!1115965 () Bool)

(declare-fun res!745158 () Bool)

(assert (=> b!1115965 (=> (not res!745158) (not e!635914))))

(assert (=> b!1115965 (= res!745158 (= (select (arr!34954 _keys!1208) i!673) k0!934))))

(declare-fun res!745155 () Bool)

(assert (=> start!97690 (=> (not res!745155) (not e!635914))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97690 (= res!745155 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35491 _keys!1208))))))

(assert (=> start!97690 e!635914))

(declare-fun array_inv!26726 (array!72610) Bool)

(assert (=> start!97690 (array_inv!26726 _keys!1208)))

(assert (=> start!97690 true))

(declare-fun e!635913 () Bool)

(declare-fun array_inv!26727 (array!72612) Bool)

(assert (=> start!97690 (and (array_inv!26727 _values!996) e!635913)))

(declare-fun b!1115974 () Bool)

(declare-fun e!635911 () Bool)

(declare-fun tp_is_empty!27885 () Bool)

(assert (=> b!1115974 (= e!635911 tp_is_empty!27885)))

(declare-fun mapNonEmpty!43645 () Bool)

(declare-fun tp!82890 () Bool)

(assert (=> mapNonEmpty!43645 (= mapRes!43645 (and tp!82890 e!635911))))

(declare-fun mapKey!43645 () (_ BitVec 32))

(declare-fun mapValue!43645 () ValueCell!13233)

(declare-fun mapRest!43645 () (Array (_ BitVec 32) ValueCell!13233))

(assert (=> mapNonEmpty!43645 (= (arr!34955 _values!996) (store mapRest!43645 mapKey!43645 mapValue!43645))))

(declare-fun b!1115975 () Bool)

(declare-fun e!635915 () Bool)

(assert (=> b!1115975 (= e!635913 (and e!635915 mapRes!43645))))

(declare-fun condMapEmpty!43645 () Bool)

(declare-fun mapDefault!43645 () ValueCell!13233)

(assert (=> b!1115975 (= condMapEmpty!43645 (= (arr!34955 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13233)) mapDefault!43645)))))

(declare-fun b!1115976 () Bool)

(declare-fun res!745154 () Bool)

(assert (=> b!1115976 (=> (not res!745154) (not e!635914))))

(assert (=> b!1115976 (= res!745154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115977 () Bool)

(assert (=> b!1115977 (= e!635915 tp_is_empty!27885)))

(assert (= (and start!97690 res!745155) b!1115973))

(assert (= (and b!1115973 res!745152) b!1115967))

(assert (= (and b!1115967 res!745160) b!1115976))

(assert (= (and b!1115976 res!745154) b!1115972))

(assert (= (and b!1115972 res!745157) b!1115971))

(assert (= (and b!1115971 res!745153) b!1115969))

(assert (= (and b!1115969 res!745156) b!1115965))

(assert (= (and b!1115965 res!745158) b!1115968))

(assert (= (and b!1115968 res!745159) b!1115970))

(assert (= (and b!1115970 res!745161) b!1115966))

(assert (= (and b!1115975 condMapEmpty!43645) mapIsEmpty!43645))

(assert (= (and b!1115975 (not condMapEmpty!43645)) mapNonEmpty!43645))

(get-info :version)

(assert (= (and mapNonEmpty!43645 ((_ is ValueCellFull!13233) mapValue!43645)) b!1115974))

(assert (= (and b!1115975 ((_ is ValueCellFull!13233) mapDefault!43645)) b!1115977))

(assert (= start!97690 b!1115975))

(declare-fun m!1032435 () Bool)

(assert (=> start!97690 m!1032435))

(declare-fun m!1032437 () Bool)

(assert (=> start!97690 m!1032437))

(declare-fun m!1032439 () Bool)

(assert (=> b!1115973 m!1032439))

(declare-fun m!1032441 () Bool)

(assert (=> b!1115969 m!1032441))

(declare-fun m!1032443 () Bool)

(assert (=> b!1115966 m!1032443))

(declare-fun m!1032445 () Bool)

(assert (=> b!1115966 m!1032445))

(declare-fun m!1032447 () Bool)

(assert (=> b!1115965 m!1032447))

(declare-fun m!1032449 () Bool)

(assert (=> b!1115970 m!1032449))

(declare-fun m!1032451 () Bool)

(assert (=> mapNonEmpty!43645 m!1032451))

(declare-fun m!1032453 () Bool)

(assert (=> b!1115968 m!1032453))

(declare-fun m!1032455 () Bool)

(assert (=> b!1115968 m!1032455))

(declare-fun m!1032457 () Bool)

(assert (=> b!1115976 m!1032457))

(declare-fun m!1032459 () Bool)

(assert (=> b!1115972 m!1032459))

(check-sat (not mapNonEmpty!43645) (not b!1115968) (not b!1115976) (not start!97690) (not b!1115970) (not b!1115966) tp_is_empty!27885 (not b!1115973) (not b!1115969) (not b!1115972))
(check-sat)
