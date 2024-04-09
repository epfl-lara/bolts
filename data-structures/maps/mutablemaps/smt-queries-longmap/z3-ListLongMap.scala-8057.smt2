; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99220 () Bool)

(assert start!99220)

(declare-fun b_free!24789 () Bool)

(declare-fun b_next!24789 () Bool)

(assert (=> start!99220 (= b_free!24789 (not b_next!24789))))

(declare-fun tp!87078 () Bool)

(declare-fun b_and!40441 () Bool)

(assert (=> start!99220 (= tp!87078 b_and!40441)))

(declare-fun b!1167531 () Bool)

(declare-fun res!774630 () Bool)

(declare-fun e!663633 () Bool)

(assert (=> b!1167531 (=> (not res!774630) (not e!663633))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167531 (= res!774630 (validMask!0 mask!1564))))

(declare-fun b!1167532 () Bool)

(declare-fun e!663629 () Bool)

(assert (=> b!1167532 (= e!663633 e!663629)))

(declare-fun res!774621 () Bool)

(assert (=> b!1167532 (=> (not res!774621) (not e!663629))))

(declare-datatypes ((array!75416 0))(
  ( (array!75417 (arr!36355 (Array (_ BitVec 32) (_ BitVec 64))) (size!36892 (_ BitVec 32))) )
))
(declare-fun lt!525645 () array!75416)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75416 (_ BitVec 32)) Bool)

(assert (=> b!1167532 (= res!774621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525645 mask!1564))))

(declare-fun _keys!1208 () array!75416)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167532 (= lt!525645 (array!75417 (store (arr!36355 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36892 _keys!1208)))))

(declare-fun res!774627 () Bool)

(assert (=> start!99220 (=> (not res!774627) (not e!663633))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99220 (= res!774627 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36892 _keys!1208))))))

(assert (=> start!99220 e!663633))

(declare-fun tp_is_empty!29319 () Bool)

(assert (=> start!99220 tp_is_empty!29319))

(declare-fun array_inv!27672 (array!75416) Bool)

(assert (=> start!99220 (array_inv!27672 _keys!1208)))

(assert (=> start!99220 true))

(assert (=> start!99220 tp!87078))

(declare-datatypes ((V!44219 0))(
  ( (V!44220 (val!14716 Int)) )
))
(declare-datatypes ((ValueCell!13950 0))(
  ( (ValueCellFull!13950 (v!17354 V!44219)) (EmptyCell!13950) )
))
(declare-datatypes ((array!75418 0))(
  ( (array!75419 (arr!36356 (Array (_ BitVec 32) ValueCell!13950)) (size!36893 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75418)

(declare-fun e!663635 () Bool)

(declare-fun array_inv!27673 (array!75418) Bool)

(assert (=> start!99220 (and (array_inv!27673 _values!996) e!663635)))

(declare-fun b!1167533 () Bool)

(declare-fun res!774623 () Bool)

(assert (=> b!1167533 (=> (not res!774623) (not e!663629))))

(declare-datatypes ((List!25633 0))(
  ( (Nil!25630) (Cons!25629 (h!26838 (_ BitVec 64)) (t!37421 List!25633)) )
))
(declare-fun arrayNoDuplicates!0 (array!75416 (_ BitVec 32) List!25633) Bool)

(assert (=> b!1167533 (= res!774623 (arrayNoDuplicates!0 lt!525645 #b00000000000000000000000000000000 Nil!25630))))

(declare-fun b!1167534 () Bool)

(declare-fun res!774622 () Bool)

(assert (=> b!1167534 (=> (not res!774622) (not e!663633))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1167534 (= res!774622 (and (= (size!36893 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36892 _keys!1208) (size!36893 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167535 () Bool)

(declare-fun res!774631 () Bool)

(assert (=> b!1167535 (=> (not res!774631) (not e!663633))))

(assert (=> b!1167535 (= res!774631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167536 () Bool)

(declare-fun e!663631 () Bool)

(assert (=> b!1167536 (= e!663631 tp_is_empty!29319)))

(declare-fun b!1167537 () Bool)

(declare-fun res!774624 () Bool)

(assert (=> b!1167537 (=> (not res!774624) (not e!663633))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1167537 (= res!774624 (= (select (arr!36355 _keys!1208) i!673) k0!934))))

(declare-fun b!1167538 () Bool)

(declare-fun res!774625 () Bool)

(assert (=> b!1167538 (=> (not res!774625) (not e!663633))))

(assert (=> b!1167538 (= res!774625 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25630))))

(declare-fun mapNonEmpty!45803 () Bool)

(declare-fun mapRes!45803 () Bool)

(declare-fun tp!87079 () Bool)

(declare-fun e!663634 () Bool)

(assert (=> mapNonEmpty!45803 (= mapRes!45803 (and tp!87079 e!663634))))

(declare-fun mapRest!45803 () (Array (_ BitVec 32) ValueCell!13950))

(declare-fun mapKey!45803 () (_ BitVec 32))

(declare-fun mapValue!45803 () ValueCell!13950)

(assert (=> mapNonEmpty!45803 (= (arr!36356 _values!996) (store mapRest!45803 mapKey!45803 mapValue!45803))))

(declare-fun b!1167539 () Bool)

(declare-fun e!663630 () Bool)

(assert (=> b!1167539 (= e!663630 true)))

(declare-fun zeroValue!944 () V!44219)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44219)

(declare-fun lt!525643 () array!75418)

(declare-datatypes ((tuple2!18856 0))(
  ( (tuple2!18857 (_1!9438 (_ BitVec 64)) (_2!9438 V!44219)) )
))
(declare-datatypes ((List!25634 0))(
  ( (Nil!25631) (Cons!25630 (h!26839 tuple2!18856) (t!37422 List!25634)) )
))
(declare-datatypes ((ListLongMap!16837 0))(
  ( (ListLongMap!16838 (toList!8434 List!25634)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4867 (array!75416 array!75418 (_ BitVec 32) (_ BitVec 32) V!44219 V!44219 (_ BitVec 32) Int) ListLongMap!16837)

(declare-fun -!1468 (ListLongMap!16837 (_ BitVec 64)) ListLongMap!16837)

(assert (=> b!1167539 (= (getCurrentListMapNoExtraKeys!4867 lt!525645 lt!525643 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1468 (getCurrentListMapNoExtraKeys!4867 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38424 0))(
  ( (Unit!38425) )
))
(declare-fun lt!525640 () Unit!38424)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!692 (array!75416 array!75418 (_ BitVec 32) (_ BitVec 32) V!44219 V!44219 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38424)

(assert (=> b!1167539 (= lt!525640 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!692 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167540 () Bool)

(assert (=> b!1167540 (= e!663634 tp_is_empty!29319)))

(declare-fun b!1167541 () Bool)

(declare-fun res!774628 () Bool)

(assert (=> b!1167541 (=> (not res!774628) (not e!663633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167541 (= res!774628 (validKeyInArray!0 k0!934))))

(declare-fun b!1167542 () Bool)

(declare-fun e!663636 () Bool)

(assert (=> b!1167542 (= e!663629 (not e!663636))))

(declare-fun res!774629 () Bool)

(assert (=> b!1167542 (=> res!774629 e!663636)))

(assert (=> b!1167542 (= res!774629 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167542 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525641 () Unit!38424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75416 (_ BitVec 64) (_ BitVec 32)) Unit!38424)

(assert (=> b!1167542 (= lt!525641 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167543 () Bool)

(assert (=> b!1167543 (= e!663636 e!663630)))

(declare-fun res!774632 () Bool)

(assert (=> b!1167543 (=> res!774632 e!663630)))

(assert (=> b!1167543 (= res!774632 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525644 () ListLongMap!16837)

(assert (=> b!1167543 (= lt!525644 (getCurrentListMapNoExtraKeys!4867 lt!525645 lt!525643 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2859 (Int (_ BitVec 64)) V!44219)

(assert (=> b!1167543 (= lt!525643 (array!75419 (store (arr!36356 _values!996) i!673 (ValueCellFull!13950 (dynLambda!2859 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36893 _values!996)))))

(declare-fun lt!525642 () ListLongMap!16837)

(assert (=> b!1167543 (= lt!525642 (getCurrentListMapNoExtraKeys!4867 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167544 () Bool)

(declare-fun res!774626 () Bool)

(assert (=> b!1167544 (=> (not res!774626) (not e!663633))))

(assert (=> b!1167544 (= res!774626 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36892 _keys!1208))))))

(declare-fun b!1167545 () Bool)

(assert (=> b!1167545 (= e!663635 (and e!663631 mapRes!45803))))

(declare-fun condMapEmpty!45803 () Bool)

(declare-fun mapDefault!45803 () ValueCell!13950)

(assert (=> b!1167545 (= condMapEmpty!45803 (= (arr!36356 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13950)) mapDefault!45803)))))

(declare-fun mapIsEmpty!45803 () Bool)

(assert (=> mapIsEmpty!45803 mapRes!45803))

(assert (= (and start!99220 res!774627) b!1167531))

(assert (= (and b!1167531 res!774630) b!1167534))

(assert (= (and b!1167534 res!774622) b!1167535))

(assert (= (and b!1167535 res!774631) b!1167538))

(assert (= (and b!1167538 res!774625) b!1167544))

(assert (= (and b!1167544 res!774626) b!1167541))

(assert (= (and b!1167541 res!774628) b!1167537))

(assert (= (and b!1167537 res!774624) b!1167532))

(assert (= (and b!1167532 res!774621) b!1167533))

(assert (= (and b!1167533 res!774623) b!1167542))

(assert (= (and b!1167542 (not res!774629)) b!1167543))

(assert (= (and b!1167543 (not res!774632)) b!1167539))

(assert (= (and b!1167545 condMapEmpty!45803) mapIsEmpty!45803))

(assert (= (and b!1167545 (not condMapEmpty!45803)) mapNonEmpty!45803))

(get-info :version)

(assert (= (and mapNonEmpty!45803 ((_ is ValueCellFull!13950) mapValue!45803)) b!1167540))

(assert (= (and b!1167545 ((_ is ValueCellFull!13950) mapDefault!45803)) b!1167536))

(assert (= start!99220 b!1167545))

(declare-fun b_lambda!19913 () Bool)

(assert (=> (not b_lambda!19913) (not b!1167543)))

(declare-fun t!37420 () Bool)

(declare-fun tb!9609 () Bool)

(assert (=> (and start!99220 (= defaultEntry!1004 defaultEntry!1004) t!37420) tb!9609))

(declare-fun result!19775 () Bool)

(assert (=> tb!9609 (= result!19775 tp_is_empty!29319)))

(assert (=> b!1167543 t!37420))

(declare-fun b_and!40443 () Bool)

(assert (= b_and!40441 (and (=> t!37420 result!19775) b_and!40443)))

(declare-fun m!1075501 () Bool)

(assert (=> b!1167541 m!1075501))

(declare-fun m!1075503 () Bool)

(assert (=> b!1167535 m!1075503))

(declare-fun m!1075505 () Bool)

(assert (=> b!1167531 m!1075505))

(declare-fun m!1075507 () Bool)

(assert (=> b!1167537 m!1075507))

(declare-fun m!1075509 () Bool)

(assert (=> b!1167533 m!1075509))

(declare-fun m!1075511 () Bool)

(assert (=> b!1167539 m!1075511))

(declare-fun m!1075513 () Bool)

(assert (=> b!1167539 m!1075513))

(assert (=> b!1167539 m!1075513))

(declare-fun m!1075515 () Bool)

(assert (=> b!1167539 m!1075515))

(declare-fun m!1075517 () Bool)

(assert (=> b!1167539 m!1075517))

(declare-fun m!1075519 () Bool)

(assert (=> mapNonEmpty!45803 m!1075519))

(declare-fun m!1075521 () Bool)

(assert (=> b!1167542 m!1075521))

(declare-fun m!1075523 () Bool)

(assert (=> b!1167542 m!1075523))

(declare-fun m!1075525 () Bool)

(assert (=> b!1167538 m!1075525))

(declare-fun m!1075527 () Bool)

(assert (=> b!1167532 m!1075527))

(declare-fun m!1075529 () Bool)

(assert (=> b!1167532 m!1075529))

(declare-fun m!1075531 () Bool)

(assert (=> b!1167543 m!1075531))

(declare-fun m!1075533 () Bool)

(assert (=> b!1167543 m!1075533))

(declare-fun m!1075535 () Bool)

(assert (=> b!1167543 m!1075535))

(declare-fun m!1075537 () Bool)

(assert (=> b!1167543 m!1075537))

(declare-fun m!1075539 () Bool)

(assert (=> start!99220 m!1075539))

(declare-fun m!1075541 () Bool)

(assert (=> start!99220 m!1075541))

(check-sat (not b!1167532) (not b!1167538) (not b!1167531) (not b!1167541) (not b!1167533) (not start!99220) (not b_lambda!19913) (not mapNonEmpty!45803) (not b_next!24789) (not b!1167542) (not b!1167535) b_and!40443 tp_is_empty!29319 (not b!1167543) (not b!1167539))
(check-sat b_and!40443 (not b_next!24789))
