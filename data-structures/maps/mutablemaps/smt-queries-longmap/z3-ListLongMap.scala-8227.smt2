; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100308 () Bool)

(assert start!100308)

(declare-fun b!1196114 () Bool)

(declare-fun res!796073 () Bool)

(declare-fun e!679652 () Bool)

(assert (=> b!1196114 (=> (not res!796073) (not e!679652))))

(declare-datatypes ((array!77440 0))(
  ( (array!77441 (arr!37363 (Array (_ BitVec 32) (_ BitVec 64))) (size!37900 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77440)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1196114 (= res!796073 (= (select (arr!37363 _keys!1208) i!673) k0!934))))

(declare-fun b!1196115 () Bool)

(declare-fun res!796080 () Bool)

(assert (=> b!1196115 (=> (not res!796080) (not e!679652))))

(declare-datatypes ((List!26455 0))(
  ( (Nil!26452) (Cons!26451 (h!27660 (_ BitVec 64)) (t!39133 List!26455)) )
))
(declare-fun arrayNoDuplicates!0 (array!77440 (_ BitVec 32) List!26455) Bool)

(assert (=> b!1196115 (= res!796080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26452))))

(declare-fun mapIsEmpty!47345 () Bool)

(declare-fun mapRes!47345 () Bool)

(assert (=> mapIsEmpty!47345 mapRes!47345))

(declare-fun b!1196116 () Bool)

(declare-fun e!679649 () Bool)

(declare-fun tp_is_empty!30339 () Bool)

(assert (=> b!1196116 (= e!679649 tp_is_empty!30339)))

(declare-fun res!796074 () Bool)

(assert (=> start!100308 (=> (not res!796074) (not e!679652))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100308 (= res!796074 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37900 _keys!1208))))))

(assert (=> start!100308 e!679652))

(declare-fun array_inv!28380 (array!77440) Bool)

(assert (=> start!100308 (array_inv!28380 _keys!1208)))

(assert (=> start!100308 true))

(declare-datatypes ((V!45579 0))(
  ( (V!45580 (val!15226 Int)) )
))
(declare-datatypes ((ValueCell!14460 0))(
  ( (ValueCellFull!14460 (v!17865 V!45579)) (EmptyCell!14460) )
))
(declare-datatypes ((array!77442 0))(
  ( (array!77443 (arr!37364 (Array (_ BitVec 32) ValueCell!14460)) (size!37901 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77442)

(declare-fun e!679650 () Bool)

(declare-fun array_inv!28381 (array!77442) Bool)

(assert (=> start!100308 (and (array_inv!28381 _values!996) e!679650)))

(declare-fun b!1196117 () Bool)

(declare-fun res!796075 () Bool)

(assert (=> b!1196117 (=> (not res!796075) (not e!679652))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196117 (= res!796075 (validMask!0 mask!1564))))

(declare-fun b!1196118 () Bool)

(declare-fun e!679653 () Bool)

(assert (=> b!1196118 (= e!679653 (not true))))

(declare-fun arrayContainsKey!0 (array!77440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196118 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39606 0))(
  ( (Unit!39607) )
))
(declare-fun lt!542988 () Unit!39606)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77440 (_ BitVec 64) (_ BitVec 32)) Unit!39606)

(assert (=> b!1196118 (= lt!542988 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196119 () Bool)

(declare-fun e!679654 () Bool)

(assert (=> b!1196119 (= e!679654 tp_is_empty!30339)))

(declare-fun b!1196120 () Bool)

(declare-fun res!796078 () Bool)

(assert (=> b!1196120 (=> (not res!796078) (not e!679652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77440 (_ BitVec 32)) Bool)

(assert (=> b!1196120 (= res!796078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47345 () Bool)

(declare-fun tp!89956 () Bool)

(assert (=> mapNonEmpty!47345 (= mapRes!47345 (and tp!89956 e!679654))))

(declare-fun mapRest!47345 () (Array (_ BitVec 32) ValueCell!14460))

(declare-fun mapKey!47345 () (_ BitVec 32))

(declare-fun mapValue!47345 () ValueCell!14460)

(assert (=> mapNonEmpty!47345 (= (arr!37364 _values!996) (store mapRest!47345 mapKey!47345 mapValue!47345))))

(declare-fun b!1196121 () Bool)

(declare-fun res!796077 () Bool)

(assert (=> b!1196121 (=> (not res!796077) (not e!679653))))

(declare-fun lt!542987 () array!77440)

(assert (=> b!1196121 (= res!796077 (arrayNoDuplicates!0 lt!542987 #b00000000000000000000000000000000 Nil!26452))))

(declare-fun b!1196122 () Bool)

(assert (=> b!1196122 (= e!679650 (and e!679649 mapRes!47345))))

(declare-fun condMapEmpty!47345 () Bool)

(declare-fun mapDefault!47345 () ValueCell!14460)

(assert (=> b!1196122 (= condMapEmpty!47345 (= (arr!37364 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14460)) mapDefault!47345)))))

(declare-fun b!1196123 () Bool)

(declare-fun res!796079 () Bool)

(assert (=> b!1196123 (=> (not res!796079) (not e!679652))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1196123 (= res!796079 (and (= (size!37901 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37900 _keys!1208) (size!37901 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196124 () Bool)

(declare-fun res!796076 () Bool)

(assert (=> b!1196124 (=> (not res!796076) (not e!679652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196124 (= res!796076 (validKeyInArray!0 k0!934))))

(declare-fun b!1196125 () Bool)

(declare-fun res!796072 () Bool)

(assert (=> b!1196125 (=> (not res!796072) (not e!679652))))

(assert (=> b!1196125 (= res!796072 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37900 _keys!1208))))))

(declare-fun b!1196126 () Bool)

(assert (=> b!1196126 (= e!679652 e!679653)))

(declare-fun res!796081 () Bool)

(assert (=> b!1196126 (=> (not res!796081) (not e!679653))))

(assert (=> b!1196126 (= res!796081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542987 mask!1564))))

(assert (=> b!1196126 (= lt!542987 (array!77441 (store (arr!37363 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37900 _keys!1208)))))

(assert (= (and start!100308 res!796074) b!1196117))

(assert (= (and b!1196117 res!796075) b!1196123))

(assert (= (and b!1196123 res!796079) b!1196120))

(assert (= (and b!1196120 res!796078) b!1196115))

(assert (= (and b!1196115 res!796080) b!1196125))

(assert (= (and b!1196125 res!796072) b!1196124))

(assert (= (and b!1196124 res!796076) b!1196114))

(assert (= (and b!1196114 res!796073) b!1196126))

(assert (= (and b!1196126 res!796081) b!1196121))

(assert (= (and b!1196121 res!796077) b!1196118))

(assert (= (and b!1196122 condMapEmpty!47345) mapIsEmpty!47345))

(assert (= (and b!1196122 (not condMapEmpty!47345)) mapNonEmpty!47345))

(get-info :version)

(assert (= (and mapNonEmpty!47345 ((_ is ValueCellFull!14460) mapValue!47345)) b!1196119))

(assert (= (and b!1196122 ((_ is ValueCellFull!14460) mapDefault!47345)) b!1196116))

(assert (= start!100308 b!1196122))

(declare-fun m!1103491 () Bool)

(assert (=> b!1196117 m!1103491))

(declare-fun m!1103493 () Bool)

(assert (=> b!1196124 m!1103493))

(declare-fun m!1103495 () Bool)

(assert (=> mapNonEmpty!47345 m!1103495))

(declare-fun m!1103497 () Bool)

(assert (=> b!1196114 m!1103497))

(declare-fun m!1103499 () Bool)

(assert (=> b!1196115 m!1103499))

(declare-fun m!1103501 () Bool)

(assert (=> b!1196126 m!1103501))

(declare-fun m!1103503 () Bool)

(assert (=> b!1196126 m!1103503))

(declare-fun m!1103505 () Bool)

(assert (=> start!100308 m!1103505))

(declare-fun m!1103507 () Bool)

(assert (=> start!100308 m!1103507))

(declare-fun m!1103509 () Bool)

(assert (=> b!1196120 m!1103509))

(declare-fun m!1103511 () Bool)

(assert (=> b!1196118 m!1103511))

(declare-fun m!1103513 () Bool)

(assert (=> b!1196118 m!1103513))

(declare-fun m!1103515 () Bool)

(assert (=> b!1196121 m!1103515))

(check-sat (not b!1196120) (not b!1196118) (not b!1196121) (not b!1196124) (not b!1196126) (not b!1196117) (not start!100308) tp_is_empty!30339 (not b!1196115) (not mapNonEmpty!47345))
(check-sat)
