; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100128 () Bool)

(assert start!100128)

(declare-fun b!1193366 () Bool)

(declare-fun res!794054 () Bool)

(declare-fun e!678287 () Bool)

(assert (=> b!1193366 (=> (not res!794054) (not e!678287))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193366 (= res!794054 (validKeyInArray!0 k0!934))))

(declare-fun b!1193367 () Bool)

(declare-fun res!794056 () Bool)

(assert (=> b!1193367 (=> (not res!794056) (not e!678287))))

(declare-datatypes ((array!77166 0))(
  ( (array!77167 (arr!37229 (Array (_ BitVec 32) (_ BitVec 64))) (size!37766 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77166)

(declare-datatypes ((List!26392 0))(
  ( (Nil!26389) (Cons!26388 (h!27597 (_ BitVec 64)) (t!39058 List!26392)) )
))
(declare-fun arrayNoDuplicates!0 (array!77166 (_ BitVec 32) List!26392) Bool)

(assert (=> b!1193367 (= res!794056 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26389))))

(declare-fun b!1193368 () Bool)

(declare-fun e!678286 () Bool)

(declare-fun e!678288 () Bool)

(declare-fun mapRes!47129 () Bool)

(assert (=> b!1193368 (= e!678286 (and e!678288 mapRes!47129))))

(declare-fun condMapEmpty!47129 () Bool)

(declare-datatypes ((V!45395 0))(
  ( (V!45396 (val!15157 Int)) )
))
(declare-datatypes ((ValueCell!14391 0))(
  ( (ValueCellFull!14391 (v!17796 V!45395)) (EmptyCell!14391) )
))
(declare-datatypes ((array!77168 0))(
  ( (array!77169 (arr!37230 (Array (_ BitVec 32) ValueCell!14391)) (size!37767 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77168)

(declare-fun mapDefault!47129 () ValueCell!14391)

(assert (=> b!1193368 (= condMapEmpty!47129 (= (arr!37230 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14391)) mapDefault!47129)))))

(declare-fun mapNonEmpty!47129 () Bool)

(declare-fun tp!89722 () Bool)

(declare-fun e!678289 () Bool)

(assert (=> mapNonEmpty!47129 (= mapRes!47129 (and tp!89722 e!678289))))

(declare-fun mapValue!47129 () ValueCell!14391)

(declare-fun mapRest!47129 () (Array (_ BitVec 32) ValueCell!14391))

(declare-fun mapKey!47129 () (_ BitVec 32))

(assert (=> mapNonEmpty!47129 (= (arr!37230 _values!996) (store mapRest!47129 mapKey!47129 mapValue!47129))))

(declare-fun b!1193369 () Bool)

(declare-fun res!794055 () Bool)

(assert (=> b!1193369 (=> (not res!794055) (not e!678287))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77166 (_ BitVec 32)) Bool)

(assert (=> b!1193369 (= res!794055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193370 () Bool)

(declare-fun e!678285 () Bool)

(assert (=> b!1193370 (= e!678285 (not true))))

(declare-fun arrayContainsKey!0 (array!77166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193370 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39532 0))(
  ( (Unit!39533) )
))
(declare-fun lt!542526 () Unit!39532)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77166 (_ BitVec 64) (_ BitVec 32)) Unit!39532)

(assert (=> b!1193370 (= lt!542526 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1193371 () Bool)

(declare-fun res!794048 () Bool)

(assert (=> b!1193371 (=> (not res!794048) (not e!678287))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193371 (= res!794048 (and (= (size!37767 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37766 _keys!1208) (size!37767 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47129 () Bool)

(assert (=> mapIsEmpty!47129 mapRes!47129))

(declare-fun b!1193372 () Bool)

(assert (=> b!1193372 (= e!678287 e!678285)))

(declare-fun res!794047 () Bool)

(assert (=> b!1193372 (=> (not res!794047) (not e!678285))))

(declare-fun lt!542525 () array!77166)

(assert (=> b!1193372 (= res!794047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542525 mask!1564))))

(assert (=> b!1193372 (= lt!542525 (array!77167 (store (arr!37229 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37766 _keys!1208)))))

(declare-fun b!1193374 () Bool)

(declare-fun res!794052 () Bool)

(assert (=> b!1193374 (=> (not res!794052) (not e!678285))))

(assert (=> b!1193374 (= res!794052 (arrayNoDuplicates!0 lt!542525 #b00000000000000000000000000000000 Nil!26389))))

(declare-fun b!1193375 () Bool)

(declare-fun res!794049 () Bool)

(assert (=> b!1193375 (=> (not res!794049) (not e!678287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193375 (= res!794049 (validMask!0 mask!1564))))

(declare-fun b!1193376 () Bool)

(declare-fun tp_is_empty!30201 () Bool)

(assert (=> b!1193376 (= e!678289 tp_is_empty!30201)))

(declare-fun b!1193377 () Bool)

(assert (=> b!1193377 (= e!678288 tp_is_empty!30201)))

(declare-fun b!1193378 () Bool)

(declare-fun res!794051 () Bool)

(assert (=> b!1193378 (=> (not res!794051) (not e!678287))))

(assert (=> b!1193378 (= res!794051 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37766 _keys!1208))))))

(declare-fun b!1193373 () Bool)

(declare-fun res!794050 () Bool)

(assert (=> b!1193373 (=> (not res!794050) (not e!678287))))

(assert (=> b!1193373 (= res!794050 (= (select (arr!37229 _keys!1208) i!673) k0!934))))

(declare-fun res!794053 () Bool)

(assert (=> start!100128 (=> (not res!794053) (not e!678287))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100128 (= res!794053 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37766 _keys!1208))))))

(assert (=> start!100128 e!678287))

(declare-fun array_inv!28280 (array!77166) Bool)

(assert (=> start!100128 (array_inv!28280 _keys!1208)))

(assert (=> start!100128 true))

(declare-fun array_inv!28281 (array!77168) Bool)

(assert (=> start!100128 (and (array_inv!28281 _values!996) e!678286)))

(assert (= (and start!100128 res!794053) b!1193375))

(assert (= (and b!1193375 res!794049) b!1193371))

(assert (= (and b!1193371 res!794048) b!1193369))

(assert (= (and b!1193369 res!794055) b!1193367))

(assert (= (and b!1193367 res!794056) b!1193378))

(assert (= (and b!1193378 res!794051) b!1193366))

(assert (= (and b!1193366 res!794054) b!1193373))

(assert (= (and b!1193373 res!794050) b!1193372))

(assert (= (and b!1193372 res!794047) b!1193374))

(assert (= (and b!1193374 res!794052) b!1193370))

(assert (= (and b!1193368 condMapEmpty!47129) mapIsEmpty!47129))

(assert (= (and b!1193368 (not condMapEmpty!47129)) mapNonEmpty!47129))

(get-info :version)

(assert (= (and mapNonEmpty!47129 ((_ is ValueCellFull!14391) mapValue!47129)) b!1193376))

(assert (= (and b!1193368 ((_ is ValueCellFull!14391) mapDefault!47129)) b!1193377))

(assert (= start!100128 b!1193368))

(declare-fun m!1101667 () Bool)

(assert (=> b!1193370 m!1101667))

(declare-fun m!1101669 () Bool)

(assert (=> b!1193370 m!1101669))

(declare-fun m!1101671 () Bool)

(assert (=> b!1193367 m!1101671))

(declare-fun m!1101673 () Bool)

(assert (=> b!1193369 m!1101673))

(declare-fun m!1101675 () Bool)

(assert (=> mapNonEmpty!47129 m!1101675))

(declare-fun m!1101677 () Bool)

(assert (=> b!1193373 m!1101677))

(declare-fun m!1101679 () Bool)

(assert (=> b!1193374 m!1101679))

(declare-fun m!1101681 () Bool)

(assert (=> b!1193375 m!1101681))

(declare-fun m!1101683 () Bool)

(assert (=> b!1193372 m!1101683))

(declare-fun m!1101685 () Bool)

(assert (=> b!1193372 m!1101685))

(declare-fun m!1101687 () Bool)

(assert (=> start!100128 m!1101687))

(declare-fun m!1101689 () Bool)

(assert (=> start!100128 m!1101689))

(declare-fun m!1101691 () Bool)

(assert (=> b!1193366 m!1101691))

(check-sat (not b!1193366) (not b!1193370) (not b!1193375) (not b!1193372) (not b!1193369) (not start!100128) tp_is_empty!30201 (not b!1193374) (not mapNonEmpty!47129) (not b!1193367))
(check-sat)
