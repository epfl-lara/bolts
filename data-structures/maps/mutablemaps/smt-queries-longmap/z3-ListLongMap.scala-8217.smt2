; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100248 () Bool)

(assert start!100248)

(declare-fun b!1194944 () Bool)

(declare-fun e!679114 () Bool)

(declare-fun e!679109 () Bool)

(declare-fun mapRes!47255 () Bool)

(assert (=> b!1194944 (= e!679114 (and e!679109 mapRes!47255))))

(declare-fun condMapEmpty!47255 () Bool)

(declare-datatypes ((V!45499 0))(
  ( (V!45500 (val!15196 Int)) )
))
(declare-datatypes ((ValueCell!14430 0))(
  ( (ValueCellFull!14430 (v!17835 V!45499)) (EmptyCell!14430) )
))
(declare-datatypes ((array!77322 0))(
  ( (array!77323 (arr!37304 (Array (_ BitVec 32) ValueCell!14430)) (size!37841 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77322)

(declare-fun mapDefault!47255 () ValueCell!14430)

(assert (=> b!1194944 (= condMapEmpty!47255 (= (arr!37304 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14430)) mapDefault!47255)))))

(declare-fun res!795174 () Bool)

(declare-fun e!679113 () Bool)

(assert (=> start!100248 (=> (not res!795174) (not e!679113))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77324 0))(
  ( (array!77325 (arr!37305 (Array (_ BitVec 32) (_ BitVec 64))) (size!37842 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77324)

(assert (=> start!100248 (= res!795174 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37842 _keys!1208))))))

(assert (=> start!100248 e!679113))

(declare-fun array_inv!28336 (array!77324) Bool)

(assert (=> start!100248 (array_inv!28336 _keys!1208)))

(assert (=> start!100248 true))

(declare-fun array_inv!28337 (array!77322) Bool)

(assert (=> start!100248 (and (array_inv!28337 _values!996) e!679114)))

(declare-fun b!1194945 () Bool)

(declare-fun tp_is_empty!30279 () Bool)

(assert (=> b!1194945 (= e!679109 tp_is_empty!30279)))

(declare-fun b!1194946 () Bool)

(declare-fun res!795173 () Bool)

(declare-fun e!679112 () Bool)

(assert (=> b!1194946 (=> (not res!795173) (not e!679112))))

(declare-fun lt!542807 () array!77324)

(declare-datatypes ((List!26430 0))(
  ( (Nil!26427) (Cons!26426 (h!27635 (_ BitVec 64)) (t!39108 List!26430)) )
))
(declare-fun arrayNoDuplicates!0 (array!77324 (_ BitVec 32) List!26430) Bool)

(assert (=> b!1194946 (= res!795173 (arrayNoDuplicates!0 lt!542807 #b00000000000000000000000000000000 Nil!26427))))

(declare-fun b!1194947 () Bool)

(declare-fun res!795180 () Bool)

(assert (=> b!1194947 (=> (not res!795180) (not e!679113))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1194947 (= res!795180 (= (select (arr!37305 _keys!1208) i!673) k0!934))))

(declare-fun b!1194948 () Bool)

(assert (=> b!1194948 (= e!679113 e!679112)))

(declare-fun res!795172 () Bool)

(assert (=> b!1194948 (=> (not res!795172) (not e!679112))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77324 (_ BitVec 32)) Bool)

(assert (=> b!1194948 (= res!795172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542807 mask!1564))))

(assert (=> b!1194948 (= lt!542807 (array!77325 (store (arr!37305 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37842 _keys!1208)))))

(declare-fun b!1194949 () Bool)

(declare-fun res!795177 () Bool)

(assert (=> b!1194949 (=> (not res!795177) (not e!679113))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1194949 (= res!795177 (and (= (size!37841 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37842 _keys!1208) (size!37841 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194950 () Bool)

(assert (=> b!1194950 (= e!679112 (not true))))

(declare-fun arrayContainsKey!0 (array!77324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194950 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39556 0))(
  ( (Unit!39557) )
))
(declare-fun lt!542808 () Unit!39556)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77324 (_ BitVec 64) (_ BitVec 32)) Unit!39556)

(assert (=> b!1194950 (= lt!542808 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47255 () Bool)

(assert (=> mapIsEmpty!47255 mapRes!47255))

(declare-fun b!1194951 () Bool)

(declare-fun res!795176 () Bool)

(assert (=> b!1194951 (=> (not res!795176) (not e!679113))))

(assert (=> b!1194951 (= res!795176 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37842 _keys!1208))))))

(declare-fun b!1194952 () Bool)

(declare-fun res!795178 () Bool)

(assert (=> b!1194952 (=> (not res!795178) (not e!679113))))

(assert (=> b!1194952 (= res!795178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194953 () Bool)

(declare-fun e!679111 () Bool)

(assert (=> b!1194953 (= e!679111 tp_is_empty!30279)))

(declare-fun b!1194954 () Bool)

(declare-fun res!795181 () Bool)

(assert (=> b!1194954 (=> (not res!795181) (not e!679113))))

(assert (=> b!1194954 (= res!795181 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26427))))

(declare-fun mapNonEmpty!47255 () Bool)

(declare-fun tp!89866 () Bool)

(assert (=> mapNonEmpty!47255 (= mapRes!47255 (and tp!89866 e!679111))))

(declare-fun mapValue!47255 () ValueCell!14430)

(declare-fun mapRest!47255 () (Array (_ BitVec 32) ValueCell!14430))

(declare-fun mapKey!47255 () (_ BitVec 32))

(assert (=> mapNonEmpty!47255 (= (arr!37304 _values!996) (store mapRest!47255 mapKey!47255 mapValue!47255))))

(declare-fun b!1194955 () Bool)

(declare-fun res!795175 () Bool)

(assert (=> b!1194955 (=> (not res!795175) (not e!679113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194955 (= res!795175 (validMask!0 mask!1564))))

(declare-fun b!1194956 () Bool)

(declare-fun res!795179 () Bool)

(assert (=> b!1194956 (=> (not res!795179) (not e!679113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194956 (= res!795179 (validKeyInArray!0 k0!934))))

(assert (= (and start!100248 res!795174) b!1194955))

(assert (= (and b!1194955 res!795175) b!1194949))

(assert (= (and b!1194949 res!795177) b!1194952))

(assert (= (and b!1194952 res!795178) b!1194954))

(assert (= (and b!1194954 res!795181) b!1194951))

(assert (= (and b!1194951 res!795176) b!1194956))

(assert (= (and b!1194956 res!795179) b!1194947))

(assert (= (and b!1194947 res!795180) b!1194948))

(assert (= (and b!1194948 res!795172) b!1194946))

(assert (= (and b!1194946 res!795173) b!1194950))

(assert (= (and b!1194944 condMapEmpty!47255) mapIsEmpty!47255))

(assert (= (and b!1194944 (not condMapEmpty!47255)) mapNonEmpty!47255))

(get-info :version)

(assert (= (and mapNonEmpty!47255 ((_ is ValueCellFull!14430) mapValue!47255)) b!1194953))

(assert (= (and b!1194944 ((_ is ValueCellFull!14430) mapDefault!47255)) b!1194945))

(assert (= start!100248 b!1194944))

(declare-fun m!1102711 () Bool)

(assert (=> start!100248 m!1102711))

(declare-fun m!1102713 () Bool)

(assert (=> start!100248 m!1102713))

(declare-fun m!1102715 () Bool)

(assert (=> b!1194948 m!1102715))

(declare-fun m!1102717 () Bool)

(assert (=> b!1194948 m!1102717))

(declare-fun m!1102719 () Bool)

(assert (=> b!1194950 m!1102719))

(declare-fun m!1102721 () Bool)

(assert (=> b!1194950 m!1102721))

(declare-fun m!1102723 () Bool)

(assert (=> b!1194955 m!1102723))

(declare-fun m!1102725 () Bool)

(assert (=> b!1194952 m!1102725))

(declare-fun m!1102727 () Bool)

(assert (=> b!1194956 m!1102727))

(declare-fun m!1102729 () Bool)

(assert (=> b!1194946 m!1102729))

(declare-fun m!1102731 () Bool)

(assert (=> b!1194947 m!1102731))

(declare-fun m!1102733 () Bool)

(assert (=> b!1194954 m!1102733))

(declare-fun m!1102735 () Bool)

(assert (=> mapNonEmpty!47255 m!1102735))

(check-sat (not b!1194956) (not b!1194955) (not b!1194952) (not b!1194954) (not mapNonEmpty!47255) tp_is_empty!30279 (not b!1194946) (not b!1194948) (not start!100248) (not b!1194950))
(check-sat)
