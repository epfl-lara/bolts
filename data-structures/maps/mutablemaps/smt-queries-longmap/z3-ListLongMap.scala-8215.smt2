; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100220 () Bool)

(assert start!100220)

(declare-fun b!1194660 () Bool)

(declare-fun e!678963 () Bool)

(declare-fun tp_is_empty!30267 () Bool)

(assert (=> b!1194660 (= e!678963 tp_is_empty!30267)))

(declare-fun b!1194661 () Bool)

(declare-fun e!678964 () Bool)

(assert (=> b!1194661 (= e!678964 (not true))))

(declare-datatypes ((array!77298 0))(
  ( (array!77299 (arr!37293 (Array (_ BitVec 32) (_ BitVec 64))) (size!37830 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77298)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1194661 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39548 0))(
  ( (Unit!39549) )
))
(declare-fun lt!542756 () Unit!39548)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77298 (_ BitVec 64) (_ BitVec 32)) Unit!39548)

(assert (=> b!1194661 (= lt!542756 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1194662 () Bool)

(declare-fun res!794973 () Bool)

(declare-fun e!678961 () Bool)

(assert (=> b!1194662 (=> (not res!794973) (not e!678961))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77298 (_ BitVec 32)) Bool)

(assert (=> b!1194662 (= res!794973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!794966 () Bool)

(assert (=> start!100220 (=> (not res!794966) (not e!678961))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100220 (= res!794966 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37830 _keys!1208))))))

(assert (=> start!100220 e!678961))

(declare-fun array_inv!28330 (array!77298) Bool)

(assert (=> start!100220 (array_inv!28330 _keys!1208)))

(assert (=> start!100220 true))

(declare-datatypes ((V!45483 0))(
  ( (V!45484 (val!15190 Int)) )
))
(declare-datatypes ((ValueCell!14424 0))(
  ( (ValueCellFull!14424 (v!17829 V!45483)) (EmptyCell!14424) )
))
(declare-datatypes ((array!77300 0))(
  ( (array!77301 (arr!37294 (Array (_ BitVec 32) ValueCell!14424)) (size!37831 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77300)

(declare-fun e!678966 () Bool)

(declare-fun array_inv!28331 (array!77300) Bool)

(assert (=> start!100220 (and (array_inv!28331 _values!996) e!678966)))

(declare-fun b!1194663 () Bool)

(declare-fun e!678965 () Bool)

(assert (=> b!1194663 (= e!678965 tp_is_empty!30267)))

(declare-fun b!1194664 () Bool)

(declare-fun res!794974 () Bool)

(assert (=> b!1194664 (=> (not res!794974) (not e!678961))))

(assert (=> b!1194664 (= res!794974 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37830 _keys!1208))))))

(declare-fun b!1194665 () Bool)

(declare-fun res!794975 () Bool)

(assert (=> b!1194665 (=> (not res!794975) (not e!678961))))

(declare-datatypes ((List!26425 0))(
  ( (Nil!26422) (Cons!26421 (h!27630 (_ BitVec 64)) (t!39103 List!26425)) )
))
(declare-fun arrayNoDuplicates!0 (array!77298 (_ BitVec 32) List!26425) Bool)

(assert (=> b!1194665 (= res!794975 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26422))))

(declare-fun b!1194666 () Bool)

(declare-fun res!794971 () Bool)

(assert (=> b!1194666 (=> (not res!794971) (not e!678961))))

(assert (=> b!1194666 (= res!794971 (= (select (arr!37293 _keys!1208) i!673) k0!934))))

(declare-fun b!1194667 () Bool)

(declare-fun res!794970 () Bool)

(assert (=> b!1194667 (=> (not res!794970) (not e!678961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194667 (= res!794970 (validKeyInArray!0 k0!934))))

(declare-fun b!1194668 () Bool)

(declare-fun mapRes!47234 () Bool)

(assert (=> b!1194668 (= e!678966 (and e!678963 mapRes!47234))))

(declare-fun condMapEmpty!47234 () Bool)

(declare-fun mapDefault!47234 () ValueCell!14424)

(assert (=> b!1194668 (= condMapEmpty!47234 (= (arr!37294 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14424)) mapDefault!47234)))))

(declare-fun b!1194669 () Bool)

(declare-fun res!794972 () Bool)

(assert (=> b!1194669 (=> (not res!794972) (not e!678961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194669 (= res!794972 (validMask!0 mask!1564))))

(declare-fun b!1194670 () Bool)

(assert (=> b!1194670 (= e!678961 e!678964)))

(declare-fun res!794967 () Bool)

(assert (=> b!1194670 (=> (not res!794967) (not e!678964))))

(declare-fun lt!542757 () array!77298)

(assert (=> b!1194670 (= res!794967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542757 mask!1564))))

(assert (=> b!1194670 (= lt!542757 (array!77299 (store (arr!37293 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37830 _keys!1208)))))

(declare-fun mapNonEmpty!47234 () Bool)

(declare-fun tp!89845 () Bool)

(assert (=> mapNonEmpty!47234 (= mapRes!47234 (and tp!89845 e!678965))))

(declare-fun mapValue!47234 () ValueCell!14424)

(declare-fun mapRest!47234 () (Array (_ BitVec 32) ValueCell!14424))

(declare-fun mapKey!47234 () (_ BitVec 32))

(assert (=> mapNonEmpty!47234 (= (arr!37294 _values!996) (store mapRest!47234 mapKey!47234 mapValue!47234))))

(declare-fun mapIsEmpty!47234 () Bool)

(assert (=> mapIsEmpty!47234 mapRes!47234))

(declare-fun b!1194671 () Bool)

(declare-fun res!794968 () Bool)

(assert (=> b!1194671 (=> (not res!794968) (not e!678961))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1194671 (= res!794968 (and (= (size!37831 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37830 _keys!1208) (size!37831 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194672 () Bool)

(declare-fun res!794969 () Bool)

(assert (=> b!1194672 (=> (not res!794969) (not e!678964))))

(assert (=> b!1194672 (= res!794969 (arrayNoDuplicates!0 lt!542757 #b00000000000000000000000000000000 Nil!26422))))

(assert (= (and start!100220 res!794966) b!1194669))

(assert (= (and b!1194669 res!794972) b!1194671))

(assert (= (and b!1194671 res!794968) b!1194662))

(assert (= (and b!1194662 res!794973) b!1194665))

(assert (= (and b!1194665 res!794975) b!1194664))

(assert (= (and b!1194664 res!794974) b!1194667))

(assert (= (and b!1194667 res!794970) b!1194666))

(assert (= (and b!1194666 res!794971) b!1194670))

(assert (= (and b!1194670 res!794967) b!1194672))

(assert (= (and b!1194672 res!794969) b!1194661))

(assert (= (and b!1194668 condMapEmpty!47234) mapIsEmpty!47234))

(assert (= (and b!1194668 (not condMapEmpty!47234)) mapNonEmpty!47234))

(get-info :version)

(assert (= (and mapNonEmpty!47234 ((_ is ValueCellFull!14424) mapValue!47234)) b!1194663))

(assert (= (and b!1194668 ((_ is ValueCellFull!14424) mapDefault!47234)) b!1194660))

(assert (= start!100220 b!1194668))

(declare-fun m!1102517 () Bool)

(assert (=> b!1194670 m!1102517))

(declare-fun m!1102519 () Bool)

(assert (=> b!1194670 m!1102519))

(declare-fun m!1102521 () Bool)

(assert (=> b!1194666 m!1102521))

(declare-fun m!1102523 () Bool)

(assert (=> b!1194662 m!1102523))

(declare-fun m!1102525 () Bool)

(assert (=> mapNonEmpty!47234 m!1102525))

(declare-fun m!1102527 () Bool)

(assert (=> b!1194669 m!1102527))

(declare-fun m!1102529 () Bool)

(assert (=> start!100220 m!1102529))

(declare-fun m!1102531 () Bool)

(assert (=> start!100220 m!1102531))

(declare-fun m!1102533 () Bool)

(assert (=> b!1194665 m!1102533))

(declare-fun m!1102535 () Bool)

(assert (=> b!1194667 m!1102535))

(declare-fun m!1102537 () Bool)

(assert (=> b!1194661 m!1102537))

(declare-fun m!1102539 () Bool)

(assert (=> b!1194661 m!1102539))

(declare-fun m!1102541 () Bool)

(assert (=> b!1194672 m!1102541))

(check-sat (not b!1194670) (not b!1194667) (not start!100220) (not b!1194661) (not b!1194669) (not b!1194662) tp_is_empty!30267 (not mapNonEmpty!47234) (not b!1194672) (not b!1194665))
(check-sat)
