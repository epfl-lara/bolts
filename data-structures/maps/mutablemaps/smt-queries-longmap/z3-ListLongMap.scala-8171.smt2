; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99930 () Bool)

(assert start!99930)

(declare-fun b_free!25473 () Bool)

(declare-fun b_next!25473 () Bool)

(assert (=> start!99930 (= b_free!25473 (not b_next!25473))))

(declare-fun tp!89133 () Bool)

(declare-fun b_and!41827 () Bool)

(assert (=> start!99930 (= tp!89133 b_and!41827)))

(declare-fun b!1188725 () Bool)

(declare-fun e!675922 () Bool)

(declare-fun e!675919 () Bool)

(assert (=> b!1188725 (= e!675922 (not e!675919))))

(declare-fun res!790500 () Bool)

(assert (=> b!1188725 (=> res!790500 e!675919)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188725 (= res!790500 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76774 0))(
  ( (array!76775 (arr!37033 (Array (_ BitVec 32) (_ BitVec 64))) (size!37570 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76774)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188725 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39370 0))(
  ( (Unit!39371) )
))
(declare-fun lt!540768 () Unit!39370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76774 (_ BitVec 64) (_ BitVec 32)) Unit!39370)

(assert (=> b!1188725 (= lt!540768 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!790498 () Bool)

(declare-fun e!675925 () Bool)

(assert (=> start!99930 (=> (not res!790498) (not e!675925))))

(assert (=> start!99930 (= res!790498 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37570 _keys!1208))))))

(assert (=> start!99930 e!675925))

(declare-fun tp_is_empty!30003 () Bool)

(assert (=> start!99930 tp_is_empty!30003))

(declare-fun array_inv!28142 (array!76774) Bool)

(assert (=> start!99930 (array_inv!28142 _keys!1208)))

(assert (=> start!99930 true))

(assert (=> start!99930 tp!89133))

(declare-datatypes ((V!45131 0))(
  ( (V!45132 (val!15058 Int)) )
))
(declare-datatypes ((ValueCell!14292 0))(
  ( (ValueCellFull!14292 (v!17697 V!45131)) (EmptyCell!14292) )
))
(declare-datatypes ((array!76776 0))(
  ( (array!76777 (arr!37034 (Array (_ BitVec 32) ValueCell!14292)) (size!37571 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76776)

(declare-fun e!675924 () Bool)

(declare-fun array_inv!28143 (array!76776) Bool)

(assert (=> start!99930 (and (array_inv!28143 _values!996) e!675924)))

(declare-fun b!1188726 () Bool)

(declare-fun e!675921 () Bool)

(declare-fun mapRes!46832 () Bool)

(assert (=> b!1188726 (= e!675924 (and e!675921 mapRes!46832))))

(declare-fun condMapEmpty!46832 () Bool)

(declare-fun mapDefault!46832 () ValueCell!14292)

(assert (=> b!1188726 (= condMapEmpty!46832 (= (arr!37034 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14292)) mapDefault!46832)))))

(declare-fun b!1188727 () Bool)

(assert (=> b!1188727 (= e!675925 e!675922)))

(declare-fun res!790495 () Bool)

(assert (=> b!1188727 (=> (not res!790495) (not e!675922))))

(declare-fun lt!540765 () array!76774)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76774 (_ BitVec 32)) Bool)

(assert (=> b!1188727 (= res!790495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540765 mask!1564))))

(assert (=> b!1188727 (= lt!540765 (array!76775 (store (arr!37033 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37570 _keys!1208)))))

(declare-fun mapIsEmpty!46832 () Bool)

(assert (=> mapIsEmpty!46832 mapRes!46832))

(declare-fun b!1188728 () Bool)

(declare-fun res!790504 () Bool)

(assert (=> b!1188728 (=> (not res!790504) (not e!675925))))

(assert (=> b!1188728 (= res!790504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188729 () Bool)

(declare-fun res!790501 () Bool)

(assert (=> b!1188729 (=> (not res!790501) (not e!675925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188729 (= res!790501 (validMask!0 mask!1564))))

(declare-fun b!1188730 () Bool)

(declare-fun res!790493 () Bool)

(assert (=> b!1188730 (=> (not res!790493) (not e!675925))))

(assert (=> b!1188730 (= res!790493 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37570 _keys!1208))))))

(declare-fun mapNonEmpty!46832 () Bool)

(declare-fun tp!89134 () Bool)

(declare-fun e!675923 () Bool)

(assert (=> mapNonEmpty!46832 (= mapRes!46832 (and tp!89134 e!675923))))

(declare-fun mapRest!46832 () (Array (_ BitVec 32) ValueCell!14292))

(declare-fun mapValue!46832 () ValueCell!14292)

(declare-fun mapKey!46832 () (_ BitVec 32))

(assert (=> mapNonEmpty!46832 (= (arr!37034 _values!996) (store mapRest!46832 mapKey!46832 mapValue!46832))))

(declare-fun b!1188731 () Bool)

(declare-fun res!790494 () Bool)

(assert (=> b!1188731 (=> (not res!790494) (not e!675925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188731 (= res!790494 (validKeyInArray!0 k0!934))))

(declare-fun b!1188732 () Bool)

(declare-fun res!790496 () Bool)

(assert (=> b!1188732 (=> (not res!790496) (not e!675925))))

(assert (=> b!1188732 (= res!790496 (= (select (arr!37033 _keys!1208) i!673) k0!934))))

(declare-fun b!1188733 () Bool)

(declare-fun e!675918 () Bool)

(assert (=> b!1188733 (= e!675919 e!675918)))

(declare-fun res!790503 () Bool)

(assert (=> b!1188733 (=> res!790503 e!675918)))

(assert (=> b!1188733 (= res!790503 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45131)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19466 0))(
  ( (tuple2!19467 (_1!9743 (_ BitVec 64)) (_2!9743 V!45131)) )
))
(declare-datatypes ((List!26226 0))(
  ( (Nil!26223) (Cons!26222 (h!27431 tuple2!19466) (t!38698 List!26226)) )
))
(declare-datatypes ((ListLongMap!17447 0))(
  ( (ListLongMap!17448 (toList!8739 List!26226)) )
))
(declare-fun lt!540767 () ListLongMap!17447)

(declare-fun lt!540763 () array!76776)

(declare-fun minValue!944 () V!45131)

(declare-fun getCurrentListMapNoExtraKeys!5153 (array!76774 array!76776 (_ BitVec 32) (_ BitVec 32) V!45131 V!45131 (_ BitVec 32) Int) ListLongMap!17447)

(assert (=> b!1188733 (= lt!540767 (getCurrentListMapNoExtraKeys!5153 lt!540765 lt!540763 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3107 (Int (_ BitVec 64)) V!45131)

(assert (=> b!1188733 (= lt!540763 (array!76777 (store (arr!37034 _values!996) i!673 (ValueCellFull!14292 (dynLambda!3107 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37571 _values!996)))))

(declare-fun lt!540766 () ListLongMap!17447)

(assert (=> b!1188733 (= lt!540766 (getCurrentListMapNoExtraKeys!5153 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188734 () Bool)

(assert (=> b!1188734 (= e!675918 true)))

(declare-fun -!1723 (ListLongMap!17447 (_ BitVec 64)) ListLongMap!17447)

(assert (=> b!1188734 (= (getCurrentListMapNoExtraKeys!5153 lt!540765 lt!540763 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1723 (getCurrentListMapNoExtraKeys!5153 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540764 () Unit!39370)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!929 (array!76774 array!76776 (_ BitVec 32) (_ BitVec 32) V!45131 V!45131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39370)

(assert (=> b!1188734 (= lt!540764 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!929 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188735 () Bool)

(declare-fun res!790502 () Bool)

(assert (=> b!1188735 (=> (not res!790502) (not e!675925))))

(assert (=> b!1188735 (= res!790502 (and (= (size!37571 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37570 _keys!1208) (size!37571 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188736 () Bool)

(assert (=> b!1188736 (= e!675921 tp_is_empty!30003)))

(declare-fun b!1188737 () Bool)

(declare-fun res!790499 () Bool)

(assert (=> b!1188737 (=> (not res!790499) (not e!675925))))

(declare-datatypes ((List!26227 0))(
  ( (Nil!26224) (Cons!26223 (h!27432 (_ BitVec 64)) (t!38699 List!26227)) )
))
(declare-fun arrayNoDuplicates!0 (array!76774 (_ BitVec 32) List!26227) Bool)

(assert (=> b!1188737 (= res!790499 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26224))))

(declare-fun b!1188738 () Bool)

(declare-fun res!790497 () Bool)

(assert (=> b!1188738 (=> (not res!790497) (not e!675922))))

(assert (=> b!1188738 (= res!790497 (arrayNoDuplicates!0 lt!540765 #b00000000000000000000000000000000 Nil!26224))))

(declare-fun b!1188739 () Bool)

(assert (=> b!1188739 (= e!675923 tp_is_empty!30003)))

(assert (= (and start!99930 res!790498) b!1188729))

(assert (= (and b!1188729 res!790501) b!1188735))

(assert (= (and b!1188735 res!790502) b!1188728))

(assert (= (and b!1188728 res!790504) b!1188737))

(assert (= (and b!1188737 res!790499) b!1188730))

(assert (= (and b!1188730 res!790493) b!1188731))

(assert (= (and b!1188731 res!790494) b!1188732))

(assert (= (and b!1188732 res!790496) b!1188727))

(assert (= (and b!1188727 res!790495) b!1188738))

(assert (= (and b!1188738 res!790497) b!1188725))

(assert (= (and b!1188725 (not res!790500)) b!1188733))

(assert (= (and b!1188733 (not res!790503)) b!1188734))

(assert (= (and b!1188726 condMapEmpty!46832) mapIsEmpty!46832))

(assert (= (and b!1188726 (not condMapEmpty!46832)) mapNonEmpty!46832))

(get-info :version)

(assert (= (and mapNonEmpty!46832 ((_ is ValueCellFull!14292) mapValue!46832)) b!1188739))

(assert (= (and b!1188726 ((_ is ValueCellFull!14292) mapDefault!46832)) b!1188736))

(assert (= start!99930 b!1188726))

(declare-fun b_lambda!20635 () Bool)

(assert (=> (not b_lambda!20635) (not b!1188733)))

(declare-fun t!38697 () Bool)

(declare-fun tb!10293 () Bool)

(assert (=> (and start!99930 (= defaultEntry!1004 defaultEntry!1004) t!38697) tb!10293))

(declare-fun result!21145 () Bool)

(assert (=> tb!10293 (= result!21145 tp_is_empty!30003)))

(assert (=> b!1188733 t!38697))

(declare-fun b_and!41829 () Bool)

(assert (= b_and!41827 (and (=> t!38697 result!21145) b_and!41829)))

(declare-fun m!1097525 () Bool)

(assert (=> b!1188731 m!1097525))

(declare-fun m!1097527 () Bool)

(assert (=> b!1188727 m!1097527))

(declare-fun m!1097529 () Bool)

(assert (=> b!1188727 m!1097529))

(declare-fun m!1097531 () Bool)

(assert (=> b!1188734 m!1097531))

(declare-fun m!1097533 () Bool)

(assert (=> b!1188734 m!1097533))

(assert (=> b!1188734 m!1097533))

(declare-fun m!1097535 () Bool)

(assert (=> b!1188734 m!1097535))

(declare-fun m!1097537 () Bool)

(assert (=> b!1188734 m!1097537))

(declare-fun m!1097539 () Bool)

(assert (=> b!1188728 m!1097539))

(declare-fun m!1097541 () Bool)

(assert (=> b!1188737 m!1097541))

(declare-fun m!1097543 () Bool)

(assert (=> start!99930 m!1097543))

(declare-fun m!1097545 () Bool)

(assert (=> start!99930 m!1097545))

(declare-fun m!1097547 () Bool)

(assert (=> b!1188738 m!1097547))

(declare-fun m!1097549 () Bool)

(assert (=> b!1188733 m!1097549))

(declare-fun m!1097551 () Bool)

(assert (=> b!1188733 m!1097551))

(declare-fun m!1097553 () Bool)

(assert (=> b!1188733 m!1097553))

(declare-fun m!1097555 () Bool)

(assert (=> b!1188733 m!1097555))

(declare-fun m!1097557 () Bool)

(assert (=> b!1188725 m!1097557))

(declare-fun m!1097559 () Bool)

(assert (=> b!1188725 m!1097559))

(declare-fun m!1097561 () Bool)

(assert (=> b!1188729 m!1097561))

(declare-fun m!1097563 () Bool)

(assert (=> b!1188732 m!1097563))

(declare-fun m!1097565 () Bool)

(assert (=> mapNonEmpty!46832 m!1097565))

(check-sat (not b_next!25473) (not b!1188727) (not mapNonEmpty!46832) (not b!1188725) (not b!1188733) (not b!1188729) (not b!1188731) (not start!99930) (not b!1188734) tp_is_empty!30003 (not b!1188737) (not b!1188738) b_and!41829 (not b_lambda!20635) (not b!1188728))
(check-sat b_and!41829 (not b_next!25473))
