; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100254 () Bool)

(assert start!100254)

(declare-fun b!1195061 () Bool)

(declare-fun e!679167 () Bool)

(declare-fun tp_is_empty!30285 () Bool)

(assert (=> b!1195061 (= e!679167 tp_is_empty!30285)))

(declare-fun b!1195062 () Bool)

(declare-fun res!795270 () Bool)

(declare-fun e!679163 () Bool)

(assert (=> b!1195062 (=> (not res!795270) (not e!679163))))

(declare-datatypes ((array!77334 0))(
  ( (array!77335 (arr!37310 (Array (_ BitVec 32) (_ BitVec 64))) (size!37847 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77334)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1195062 (= res!795270 (= (select (arr!37310 _keys!1208) i!673) k0!934))))

(declare-fun b!1195063 () Bool)

(declare-fun res!795269 () Bool)

(assert (=> b!1195063 (=> (not res!795269) (not e!679163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195063 (= res!795269 (validKeyInArray!0 k0!934))))

(declare-fun b!1195064 () Bool)

(declare-fun res!795262 () Bool)

(assert (=> b!1195064 (=> (not res!795262) (not e!679163))))

(assert (=> b!1195064 (= res!795262 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37847 _keys!1208))))))

(declare-fun b!1195065 () Bool)

(declare-fun e!679165 () Bool)

(assert (=> b!1195065 (= e!679163 e!679165)))

(declare-fun res!795263 () Bool)

(assert (=> b!1195065 (=> (not res!795263) (not e!679165))))

(declare-fun lt!542826 () array!77334)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77334 (_ BitVec 32)) Bool)

(assert (=> b!1195065 (= res!795263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542826 mask!1564))))

(assert (=> b!1195065 (= lt!542826 (array!77335 (store (arr!37310 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37847 _keys!1208)))))

(declare-fun b!1195066 () Bool)

(declare-fun res!795271 () Bool)

(assert (=> b!1195066 (=> (not res!795271) (not e!679163))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45507 0))(
  ( (V!45508 (val!15199 Int)) )
))
(declare-datatypes ((ValueCell!14433 0))(
  ( (ValueCellFull!14433 (v!17838 V!45507)) (EmptyCell!14433) )
))
(declare-datatypes ((array!77336 0))(
  ( (array!77337 (arr!37311 (Array (_ BitVec 32) ValueCell!14433)) (size!37848 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77336)

(assert (=> b!1195066 (= res!795271 (and (= (size!37848 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37847 _keys!1208) (size!37848 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195067 () Bool)

(declare-fun res!795267 () Bool)

(assert (=> b!1195067 (=> (not res!795267) (not e!679165))))

(declare-datatypes ((List!26432 0))(
  ( (Nil!26429) (Cons!26428 (h!27637 (_ BitVec 64)) (t!39110 List!26432)) )
))
(declare-fun arrayNoDuplicates!0 (array!77334 (_ BitVec 32) List!26432) Bool)

(assert (=> b!1195067 (= res!795267 (arrayNoDuplicates!0 lt!542826 #b00000000000000000000000000000000 Nil!26429))))

(declare-fun mapNonEmpty!47264 () Bool)

(declare-fun mapRes!47264 () Bool)

(declare-fun tp!89875 () Bool)

(declare-fun e!679166 () Bool)

(assert (=> mapNonEmpty!47264 (= mapRes!47264 (and tp!89875 e!679166))))

(declare-fun mapValue!47264 () ValueCell!14433)

(declare-fun mapKey!47264 () (_ BitVec 32))

(declare-fun mapRest!47264 () (Array (_ BitVec 32) ValueCell!14433))

(assert (=> mapNonEmpty!47264 (= (arr!37311 _values!996) (store mapRest!47264 mapKey!47264 mapValue!47264))))

(declare-fun b!1195069 () Bool)

(declare-fun e!679164 () Bool)

(assert (=> b!1195069 (= e!679164 (and e!679167 mapRes!47264))))

(declare-fun condMapEmpty!47264 () Bool)

(declare-fun mapDefault!47264 () ValueCell!14433)

(assert (=> b!1195069 (= condMapEmpty!47264 (= (arr!37311 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14433)) mapDefault!47264)))))

(declare-fun mapIsEmpty!47264 () Bool)

(assert (=> mapIsEmpty!47264 mapRes!47264))

(declare-fun b!1195070 () Bool)

(declare-fun res!795268 () Bool)

(assert (=> b!1195070 (=> (not res!795268) (not e!679163))))

(assert (=> b!1195070 (= res!795268 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26429))))

(declare-fun b!1195071 () Bool)

(assert (=> b!1195071 (= e!679165 (not true))))

(declare-fun arrayContainsKey!0 (array!77334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195071 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39560 0))(
  ( (Unit!39561) )
))
(declare-fun lt!542825 () Unit!39560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77334 (_ BitVec 64) (_ BitVec 32)) Unit!39560)

(assert (=> b!1195071 (= lt!542825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1195072 () Bool)

(assert (=> b!1195072 (= e!679166 tp_is_empty!30285)))

(declare-fun b!1195073 () Bool)

(declare-fun res!795266 () Bool)

(assert (=> b!1195073 (=> (not res!795266) (not e!679163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195073 (= res!795266 (validMask!0 mask!1564))))

(declare-fun res!795264 () Bool)

(assert (=> start!100254 (=> (not res!795264) (not e!679163))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100254 (= res!795264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37847 _keys!1208))))))

(assert (=> start!100254 e!679163))

(declare-fun array_inv!28340 (array!77334) Bool)

(assert (=> start!100254 (array_inv!28340 _keys!1208)))

(assert (=> start!100254 true))

(declare-fun array_inv!28341 (array!77336) Bool)

(assert (=> start!100254 (and (array_inv!28341 _values!996) e!679164)))

(declare-fun b!1195068 () Bool)

(declare-fun res!795265 () Bool)

(assert (=> b!1195068 (=> (not res!795265) (not e!679163))))

(assert (=> b!1195068 (= res!795265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!100254 res!795264) b!1195073))

(assert (= (and b!1195073 res!795266) b!1195066))

(assert (= (and b!1195066 res!795271) b!1195068))

(assert (= (and b!1195068 res!795265) b!1195070))

(assert (= (and b!1195070 res!795268) b!1195064))

(assert (= (and b!1195064 res!795262) b!1195063))

(assert (= (and b!1195063 res!795269) b!1195062))

(assert (= (and b!1195062 res!795270) b!1195065))

(assert (= (and b!1195065 res!795263) b!1195067))

(assert (= (and b!1195067 res!795267) b!1195071))

(assert (= (and b!1195069 condMapEmpty!47264) mapIsEmpty!47264))

(assert (= (and b!1195069 (not condMapEmpty!47264)) mapNonEmpty!47264))

(get-info :version)

(assert (= (and mapNonEmpty!47264 ((_ is ValueCellFull!14433) mapValue!47264)) b!1195072))

(assert (= (and b!1195069 ((_ is ValueCellFull!14433) mapDefault!47264)) b!1195061))

(assert (= start!100254 b!1195069))

(declare-fun m!1102789 () Bool)

(assert (=> start!100254 m!1102789))

(declare-fun m!1102791 () Bool)

(assert (=> start!100254 m!1102791))

(declare-fun m!1102793 () Bool)

(assert (=> b!1195070 m!1102793))

(declare-fun m!1102795 () Bool)

(assert (=> mapNonEmpty!47264 m!1102795))

(declare-fun m!1102797 () Bool)

(assert (=> b!1195063 m!1102797))

(declare-fun m!1102799 () Bool)

(assert (=> b!1195065 m!1102799))

(declare-fun m!1102801 () Bool)

(assert (=> b!1195065 m!1102801))

(declare-fun m!1102803 () Bool)

(assert (=> b!1195073 m!1102803))

(declare-fun m!1102805 () Bool)

(assert (=> b!1195067 m!1102805))

(declare-fun m!1102807 () Bool)

(assert (=> b!1195068 m!1102807))

(declare-fun m!1102809 () Bool)

(assert (=> b!1195071 m!1102809))

(declare-fun m!1102811 () Bool)

(assert (=> b!1195071 m!1102811))

(declare-fun m!1102813 () Bool)

(assert (=> b!1195062 m!1102813))

(check-sat (not b!1195065) tp_is_empty!30285 (not b!1195067) (not b!1195063) (not b!1195068) (not b!1195073) (not mapNonEmpty!47264) (not start!100254) (not b!1195070) (not b!1195071))
(check-sat)
