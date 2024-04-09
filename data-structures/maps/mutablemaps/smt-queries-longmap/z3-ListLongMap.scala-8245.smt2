; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100456 () Bool)

(assert start!100456)

(declare-fun b_free!25743 () Bool)

(declare-fun b_next!25743 () Bool)

(assert (=> start!100456 (= b_free!25743 (not b_next!25743))))

(declare-fun tp!90219 () Bool)

(declare-fun b_and!42387 () Bool)

(assert (=> start!100456 (= tp!90219 b_and!42387)))

(declare-fun b!1198684 () Bool)

(declare-fun e!680918 () Bool)

(assert (=> b!1198684 (= e!680918 true)))

(declare-datatypes ((V!45723 0))(
  ( (V!45724 (val!15280 Int)) )
))
(declare-fun zeroValue!944 () V!45723)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!77654 0))(
  ( (array!77655 (arr!37468 (Array (_ BitVec 32) (_ BitVec 64))) (size!38005 (_ BitVec 32))) )
))
(declare-fun lt!543528 () array!77654)

(declare-datatypes ((ValueCell!14514 0))(
  ( (ValueCellFull!14514 (v!17919 V!45723)) (EmptyCell!14514) )
))
(declare-datatypes ((array!77656 0))(
  ( (array!77657 (arr!37469 (Array (_ BitVec 32) ValueCell!14514)) (size!38006 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77656)

(declare-fun minValue!944 () V!45723)

(declare-datatypes ((tuple2!19698 0))(
  ( (tuple2!19699 (_1!9859 (_ BitVec 64)) (_2!9859 V!45723)) )
))
(declare-datatypes ((List!26526 0))(
  ( (Nil!26523) (Cons!26522 (h!27731 tuple2!19698) (t!39256 List!26526)) )
))
(declare-datatypes ((ListLongMap!17679 0))(
  ( (ListLongMap!17680 (toList!8855 List!26526)) )
))
(declare-fun lt!543529 () ListLongMap!17679)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5268 (array!77654 array!77656 (_ BitVec 32) (_ BitVec 32) V!45723 V!45723 (_ BitVec 32) Int) ListLongMap!17679)

(declare-fun dynLambda!3199 (Int (_ BitVec 64)) V!45723)

(assert (=> b!1198684 (= lt!543529 (getCurrentListMapNoExtraKeys!5268 lt!543528 (array!77657 (store (arr!37469 _values!996) i!673 (ValueCellFull!14514 (dynLambda!3199 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38006 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!77654)

(declare-fun lt!543526 () ListLongMap!17679)

(assert (=> b!1198684 (= lt!543526 (getCurrentListMapNoExtraKeys!5268 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198685 () Bool)

(declare-fun res!797882 () Bool)

(declare-fun e!680919 () Bool)

(assert (=> b!1198685 (=> (not res!797882) (not e!680919))))

(declare-datatypes ((List!26527 0))(
  ( (Nil!26524) (Cons!26523 (h!27732 (_ BitVec 64)) (t!39257 List!26527)) )
))
(declare-fun arrayNoDuplicates!0 (array!77654 (_ BitVec 32) List!26527) Bool)

(assert (=> b!1198685 (= res!797882 (arrayNoDuplicates!0 lt!543528 #b00000000000000000000000000000000 Nil!26524))))

(declare-fun b!1198686 () Bool)

(declare-fun res!797888 () Bool)

(declare-fun e!680921 () Bool)

(assert (=> b!1198686 (=> (not res!797888) (not e!680921))))

(assert (=> b!1198686 (= res!797888 (and (= (size!38006 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38005 _keys!1208) (size!38006 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198687 () Bool)

(assert (=> b!1198687 (= e!680919 (not e!680918))))

(declare-fun res!797892 () Bool)

(assert (=> b!1198687 (=> res!797892 e!680918)))

(assert (=> b!1198687 (= res!797892 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198687 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39678 0))(
  ( (Unit!39679) )
))
(declare-fun lt!543527 () Unit!39678)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77654 (_ BitVec 64) (_ BitVec 32)) Unit!39678)

(assert (=> b!1198687 (= lt!543527 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198688 () Bool)

(declare-fun e!680920 () Bool)

(declare-fun tp_is_empty!30447 () Bool)

(assert (=> b!1198688 (= e!680920 tp_is_empty!30447)))

(declare-fun b!1198689 () Bool)

(declare-fun res!797886 () Bool)

(assert (=> b!1198689 (=> (not res!797886) (not e!680921))))

(assert (=> b!1198689 (= res!797886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38005 _keys!1208))))))

(declare-fun mapNonEmpty!47513 () Bool)

(declare-fun mapRes!47513 () Bool)

(declare-fun tp!90220 () Bool)

(assert (=> mapNonEmpty!47513 (= mapRes!47513 (and tp!90220 e!680920))))

(declare-fun mapValue!47513 () ValueCell!14514)

(declare-fun mapRest!47513 () (Array (_ BitVec 32) ValueCell!14514))

(declare-fun mapKey!47513 () (_ BitVec 32))

(assert (=> mapNonEmpty!47513 (= (arr!37469 _values!996) (store mapRest!47513 mapKey!47513 mapValue!47513))))

(declare-fun b!1198690 () Bool)

(assert (=> b!1198690 (= e!680921 e!680919)))

(declare-fun res!797890 () Bool)

(assert (=> b!1198690 (=> (not res!797890) (not e!680919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77654 (_ BitVec 32)) Bool)

(assert (=> b!1198690 (= res!797890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543528 mask!1564))))

(assert (=> b!1198690 (= lt!543528 (array!77655 (store (arr!37468 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38005 _keys!1208)))))

(declare-fun b!1198691 () Bool)

(declare-fun res!797891 () Bool)

(assert (=> b!1198691 (=> (not res!797891) (not e!680921))))

(assert (=> b!1198691 (= res!797891 (= (select (arr!37468 _keys!1208) i!673) k0!934))))

(declare-fun b!1198692 () Bool)

(declare-fun res!797885 () Bool)

(assert (=> b!1198692 (=> (not res!797885) (not e!680921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198692 (= res!797885 (validKeyInArray!0 k0!934))))

(declare-fun b!1198693 () Bool)

(declare-fun res!797887 () Bool)

(assert (=> b!1198693 (=> (not res!797887) (not e!680921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198693 (= res!797887 (validMask!0 mask!1564))))

(declare-fun b!1198694 () Bool)

(declare-fun res!797889 () Bool)

(assert (=> b!1198694 (=> (not res!797889) (not e!680921))))

(assert (=> b!1198694 (= res!797889 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26524))))

(declare-fun res!797884 () Bool)

(assert (=> start!100456 (=> (not res!797884) (not e!680921))))

(assert (=> start!100456 (= res!797884 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38005 _keys!1208))))))

(assert (=> start!100456 e!680921))

(assert (=> start!100456 tp_is_empty!30447))

(declare-fun array_inv!28458 (array!77654) Bool)

(assert (=> start!100456 (array_inv!28458 _keys!1208)))

(assert (=> start!100456 true))

(assert (=> start!100456 tp!90219))

(declare-fun e!680923 () Bool)

(declare-fun array_inv!28459 (array!77656) Bool)

(assert (=> start!100456 (and (array_inv!28459 _values!996) e!680923)))

(declare-fun b!1198695 () Bool)

(declare-fun e!680922 () Bool)

(assert (=> b!1198695 (= e!680922 tp_is_empty!30447)))

(declare-fun b!1198696 () Bool)

(declare-fun res!797883 () Bool)

(assert (=> b!1198696 (=> (not res!797883) (not e!680921))))

(assert (=> b!1198696 (= res!797883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47513 () Bool)

(assert (=> mapIsEmpty!47513 mapRes!47513))

(declare-fun b!1198697 () Bool)

(assert (=> b!1198697 (= e!680923 (and e!680922 mapRes!47513))))

(declare-fun condMapEmpty!47513 () Bool)

(declare-fun mapDefault!47513 () ValueCell!14514)

(assert (=> b!1198697 (= condMapEmpty!47513 (= (arr!37469 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14514)) mapDefault!47513)))))

(assert (= (and start!100456 res!797884) b!1198693))

(assert (= (and b!1198693 res!797887) b!1198686))

(assert (= (and b!1198686 res!797888) b!1198696))

(assert (= (and b!1198696 res!797883) b!1198694))

(assert (= (and b!1198694 res!797889) b!1198689))

(assert (= (and b!1198689 res!797886) b!1198692))

(assert (= (and b!1198692 res!797885) b!1198691))

(assert (= (and b!1198691 res!797891) b!1198690))

(assert (= (and b!1198690 res!797890) b!1198685))

(assert (= (and b!1198685 res!797882) b!1198687))

(assert (= (and b!1198687 (not res!797892)) b!1198684))

(assert (= (and b!1198697 condMapEmpty!47513) mapIsEmpty!47513))

(assert (= (and b!1198697 (not condMapEmpty!47513)) mapNonEmpty!47513))

(get-info :version)

(assert (= (and mapNonEmpty!47513 ((_ is ValueCellFull!14514) mapValue!47513)) b!1198688))

(assert (= (and b!1198697 ((_ is ValueCellFull!14514) mapDefault!47513)) b!1198695))

(assert (= start!100456 b!1198697))

(declare-fun b_lambda!20957 () Bool)

(assert (=> (not b_lambda!20957) (not b!1198684)))

(declare-fun t!39255 () Bool)

(declare-fun tb!10551 () Bool)

(assert (=> (and start!100456 (= defaultEntry!1004 defaultEntry!1004) t!39255) tb!10551))

(declare-fun result!21671 () Bool)

(assert (=> tb!10551 (= result!21671 tp_is_empty!30447)))

(assert (=> b!1198684 t!39255))

(declare-fun b_and!42389 () Bool)

(assert (= b_and!42387 (and (=> t!39255 result!21671) b_and!42389)))

(declare-fun m!1105433 () Bool)

(assert (=> b!1198691 m!1105433))

(declare-fun m!1105435 () Bool)

(assert (=> b!1198685 m!1105435))

(declare-fun m!1105437 () Bool)

(assert (=> b!1198696 m!1105437))

(declare-fun m!1105439 () Bool)

(assert (=> b!1198684 m!1105439))

(declare-fun m!1105441 () Bool)

(assert (=> b!1198684 m!1105441))

(declare-fun m!1105443 () Bool)

(assert (=> b!1198684 m!1105443))

(declare-fun m!1105445 () Bool)

(assert (=> b!1198684 m!1105445))

(declare-fun m!1105447 () Bool)

(assert (=> b!1198694 m!1105447))

(declare-fun m!1105449 () Bool)

(assert (=> mapNonEmpty!47513 m!1105449))

(declare-fun m!1105451 () Bool)

(assert (=> b!1198687 m!1105451))

(declare-fun m!1105453 () Bool)

(assert (=> b!1198687 m!1105453))

(declare-fun m!1105455 () Bool)

(assert (=> b!1198690 m!1105455))

(declare-fun m!1105457 () Bool)

(assert (=> b!1198690 m!1105457))

(declare-fun m!1105459 () Bool)

(assert (=> start!100456 m!1105459))

(declare-fun m!1105461 () Bool)

(assert (=> start!100456 m!1105461))

(declare-fun m!1105463 () Bool)

(assert (=> b!1198693 m!1105463))

(declare-fun m!1105465 () Bool)

(assert (=> b!1198692 m!1105465))

(check-sat (not b!1198684) b_and!42389 (not b!1198690) (not b_next!25743) (not b!1198694) (not b_lambda!20957) (not b!1198685) (not b!1198693) tp_is_empty!30447 (not mapNonEmpty!47513) (not b!1198687) (not b!1198696) (not start!100456) (not b!1198692))
(check-sat b_and!42389 (not b_next!25743))
