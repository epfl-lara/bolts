; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97744 () Bool)

(assert start!97744)

(declare-fun b!1117018 () Bool)

(declare-fun res!745969 () Bool)

(declare-fun e!636400 () Bool)

(assert (=> b!1117018 (=> (not res!745969) (not e!636400))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72714 0))(
  ( (array!72715 (arr!35006 (Array (_ BitVec 32) (_ BitVec 64))) (size!35543 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72714)

(assert (=> b!1117018 (= res!745969 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35543 _keys!1208))))))

(declare-fun b!1117019 () Bool)

(declare-fun res!745970 () Bool)

(declare-fun e!636396 () Bool)

(assert (=> b!1117019 (=> (not res!745970) (not e!636396))))

(declare-fun lt!497204 () array!72714)

(declare-datatypes ((List!24485 0))(
  ( (Nil!24482) (Cons!24481 (h!25690 (_ BitVec 64)) (t!34973 List!24485)) )
))
(declare-fun arrayNoDuplicates!0 (array!72714 (_ BitVec 32) List!24485) Bool)

(assert (=> b!1117019 (= res!745970 (arrayNoDuplicates!0 lt!497204 #b00000000000000000000000000000000 Nil!24482))))

(declare-fun b!1117020 () Bool)

(declare-fun res!745966 () Bool)

(assert (=> b!1117020 (=> (not res!745966) (not e!636400))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1117020 (= res!745966 (= (select (arr!35006 _keys!1208) i!673) k0!934))))

(declare-fun b!1117022 () Bool)

(declare-fun res!745971 () Bool)

(assert (=> b!1117022 (=> (not res!745971) (not e!636400))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72714 (_ BitVec 32)) Bool)

(assert (=> b!1117022 (= res!745971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117023 () Bool)

(declare-fun e!636397 () Bool)

(declare-fun e!636399 () Bool)

(declare-fun mapRes!43726 () Bool)

(assert (=> b!1117023 (= e!636397 (and e!636399 mapRes!43726))))

(declare-fun condMapEmpty!43726 () Bool)

(declare-datatypes ((V!42379 0))(
  ( (V!42380 (val!14026 Int)) )
))
(declare-datatypes ((ValueCell!13260 0))(
  ( (ValueCellFull!13260 (v!16660 V!42379)) (EmptyCell!13260) )
))
(declare-datatypes ((array!72716 0))(
  ( (array!72717 (arr!35007 (Array (_ BitVec 32) ValueCell!13260)) (size!35544 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72716)

(declare-fun mapDefault!43726 () ValueCell!13260)

(assert (=> b!1117023 (= condMapEmpty!43726 (= (arr!35007 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13260)) mapDefault!43726)))))

(declare-fun mapIsEmpty!43726 () Bool)

(assert (=> mapIsEmpty!43726 mapRes!43726))

(declare-fun b!1117024 () Bool)

(declare-fun res!745965 () Bool)

(assert (=> b!1117024 (=> (not res!745965) (not e!636400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117024 (= res!745965 (validKeyInArray!0 k0!934))))

(declare-fun b!1117025 () Bool)

(declare-fun res!745964 () Bool)

(assert (=> b!1117025 (=> (not res!745964) (not e!636400))))

(assert (=> b!1117025 (= res!745964 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24482))))

(declare-fun b!1117026 () Bool)

(declare-fun tp_is_empty!27939 () Bool)

(assert (=> b!1117026 (= e!636399 tp_is_empty!27939)))

(declare-fun b!1117027 () Bool)

(declare-fun res!745967 () Bool)

(assert (=> b!1117027 (=> (not res!745967) (not e!636400))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117027 (= res!745967 (and (= (size!35544 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35543 _keys!1208) (size!35544 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117021 () Bool)

(assert (=> b!1117021 (= e!636396 (not true))))

(declare-fun arrayContainsKey!0 (array!72714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117021 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36565 0))(
  ( (Unit!36566) )
))
(declare-fun lt!497205 () Unit!36565)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72714 (_ BitVec 64) (_ BitVec 32)) Unit!36565)

(assert (=> b!1117021 (= lt!497205 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!745968 () Bool)

(assert (=> start!97744 (=> (not res!745968) (not e!636400))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97744 (= res!745968 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35543 _keys!1208))))))

(assert (=> start!97744 e!636400))

(declare-fun array_inv!26764 (array!72714) Bool)

(assert (=> start!97744 (array_inv!26764 _keys!1208)))

(assert (=> start!97744 true))

(declare-fun array_inv!26765 (array!72716) Bool)

(assert (=> start!97744 (and (array_inv!26765 _values!996) e!636397)))

(declare-fun b!1117028 () Bool)

(assert (=> b!1117028 (= e!636400 e!636396)))

(declare-fun res!745962 () Bool)

(assert (=> b!1117028 (=> (not res!745962) (not e!636396))))

(assert (=> b!1117028 (= res!745962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497204 mask!1564))))

(assert (=> b!1117028 (= lt!497204 (array!72715 (store (arr!35006 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35543 _keys!1208)))))

(declare-fun b!1117029 () Bool)

(declare-fun res!745963 () Bool)

(assert (=> b!1117029 (=> (not res!745963) (not e!636400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117029 (= res!745963 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43726 () Bool)

(declare-fun tp!82971 () Bool)

(declare-fun e!636398 () Bool)

(assert (=> mapNonEmpty!43726 (= mapRes!43726 (and tp!82971 e!636398))))

(declare-fun mapKey!43726 () (_ BitVec 32))

(declare-fun mapRest!43726 () (Array (_ BitVec 32) ValueCell!13260))

(declare-fun mapValue!43726 () ValueCell!13260)

(assert (=> mapNonEmpty!43726 (= (arr!35007 _values!996) (store mapRest!43726 mapKey!43726 mapValue!43726))))

(declare-fun b!1117030 () Bool)

(assert (=> b!1117030 (= e!636398 tp_is_empty!27939)))

(assert (= (and start!97744 res!745968) b!1117029))

(assert (= (and b!1117029 res!745963) b!1117027))

(assert (= (and b!1117027 res!745967) b!1117022))

(assert (= (and b!1117022 res!745971) b!1117025))

(assert (= (and b!1117025 res!745964) b!1117018))

(assert (= (and b!1117018 res!745969) b!1117024))

(assert (= (and b!1117024 res!745965) b!1117020))

(assert (= (and b!1117020 res!745966) b!1117028))

(assert (= (and b!1117028 res!745962) b!1117019))

(assert (= (and b!1117019 res!745970) b!1117021))

(assert (= (and b!1117023 condMapEmpty!43726) mapIsEmpty!43726))

(assert (= (and b!1117023 (not condMapEmpty!43726)) mapNonEmpty!43726))

(get-info :version)

(assert (= (and mapNonEmpty!43726 ((_ is ValueCellFull!13260) mapValue!43726)) b!1117030))

(assert (= (and b!1117023 ((_ is ValueCellFull!13260) mapDefault!43726)) b!1117026))

(assert (= start!97744 b!1117023))

(declare-fun m!1033137 () Bool)

(assert (=> b!1117020 m!1033137))

(declare-fun m!1033139 () Bool)

(assert (=> b!1117024 m!1033139))

(declare-fun m!1033141 () Bool)

(assert (=> b!1117021 m!1033141))

(declare-fun m!1033143 () Bool)

(assert (=> b!1117021 m!1033143))

(declare-fun m!1033145 () Bool)

(assert (=> start!97744 m!1033145))

(declare-fun m!1033147 () Bool)

(assert (=> start!97744 m!1033147))

(declare-fun m!1033149 () Bool)

(assert (=> b!1117025 m!1033149))

(declare-fun m!1033151 () Bool)

(assert (=> b!1117019 m!1033151))

(declare-fun m!1033153 () Bool)

(assert (=> mapNonEmpty!43726 m!1033153))

(declare-fun m!1033155 () Bool)

(assert (=> b!1117029 m!1033155))

(declare-fun m!1033157 () Bool)

(assert (=> b!1117022 m!1033157))

(declare-fun m!1033159 () Bool)

(assert (=> b!1117028 m!1033159))

(declare-fun m!1033161 () Bool)

(assert (=> b!1117028 m!1033161))

(check-sat tp_is_empty!27939 (not start!97744) (not b!1117029) (not b!1117024) (not b!1117028) (not b!1117021) (not b!1117022) (not b!1117025) (not mapNonEmpty!43726) (not b!1117019))
(check-sat)
