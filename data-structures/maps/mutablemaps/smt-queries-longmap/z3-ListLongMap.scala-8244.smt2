; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100450 () Bool)

(assert start!100450)

(declare-fun b_free!25737 () Bool)

(declare-fun b_next!25737 () Bool)

(assert (=> start!100450 (= b_free!25737 (not b_next!25737))))

(declare-fun tp!90202 () Bool)

(declare-fun b_and!42375 () Bool)

(assert (=> start!100450 (= tp!90202 b_and!42375)))

(declare-fun mapNonEmpty!47504 () Bool)

(declare-fun mapRes!47504 () Bool)

(declare-fun tp!90201 () Bool)

(declare-fun e!680860 () Bool)

(assert (=> mapNonEmpty!47504 (= mapRes!47504 (and tp!90201 e!680860))))

(declare-fun mapKey!47504 () (_ BitVec 32))

(declare-datatypes ((V!45715 0))(
  ( (V!45716 (val!15277 Int)) )
))
(declare-datatypes ((ValueCell!14511 0))(
  ( (ValueCellFull!14511 (v!17916 V!45715)) (EmptyCell!14511) )
))
(declare-fun mapValue!47504 () ValueCell!14511)

(declare-datatypes ((array!77644 0))(
  ( (array!77645 (arr!37463 (Array (_ BitVec 32) ValueCell!14511)) (size!38000 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77644)

(declare-fun mapRest!47504 () (Array (_ BitVec 32) ValueCell!14511))

(assert (=> mapNonEmpty!47504 (= (arr!37463 _values!996) (store mapRest!47504 mapKey!47504 mapValue!47504))))

(declare-fun res!797785 () Bool)

(declare-fun e!680856 () Bool)

(assert (=> start!100450 (=> (not res!797785) (not e!680856))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77646 0))(
  ( (array!77647 (arr!37464 (Array (_ BitVec 32) (_ BitVec 64))) (size!38001 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77646)

(assert (=> start!100450 (= res!797785 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38001 _keys!1208))))))

(assert (=> start!100450 e!680856))

(declare-fun tp_is_empty!30441 () Bool)

(assert (=> start!100450 tp_is_empty!30441))

(declare-fun array_inv!28454 (array!77646) Bool)

(assert (=> start!100450 (array_inv!28454 _keys!1208)))

(assert (=> start!100450 true))

(assert (=> start!100450 tp!90202))

(declare-fun e!680857 () Bool)

(declare-fun array_inv!28455 (array!77644) Bool)

(assert (=> start!100450 (and (array_inv!28455 _values!996) e!680857)))

(declare-fun b!1198552 () Bool)

(declare-fun res!797783 () Bool)

(assert (=> b!1198552 (=> (not res!797783) (not e!680856))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198552 (= res!797783 (validKeyInArray!0 k0!934))))

(declare-fun b!1198553 () Bool)

(declare-fun res!797788 () Bool)

(assert (=> b!1198553 (=> (not res!797788) (not e!680856))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198553 (= res!797788 (= (select (arr!37464 _keys!1208) i!673) k0!934))))

(declare-fun b!1198554 () Bool)

(declare-fun res!797791 () Bool)

(assert (=> b!1198554 (=> (not res!797791) (not e!680856))))

(declare-datatypes ((List!26522 0))(
  ( (Nil!26519) (Cons!26518 (h!27727 (_ BitVec 64)) (t!39246 List!26522)) )
))
(declare-fun arrayNoDuplicates!0 (array!77646 (_ BitVec 32) List!26522) Bool)

(assert (=> b!1198554 (= res!797791 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26519))))

(declare-fun b!1198555 () Bool)

(declare-fun e!680859 () Bool)

(assert (=> b!1198555 (= e!680859 true)))

(declare-fun zeroValue!944 () V!45715)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!543492 () array!77646)

(declare-datatypes ((tuple2!19694 0))(
  ( (tuple2!19695 (_1!9857 (_ BitVec 64)) (_2!9857 V!45715)) )
))
(declare-datatypes ((List!26523 0))(
  ( (Nil!26520) (Cons!26519 (h!27728 tuple2!19694) (t!39247 List!26523)) )
))
(declare-datatypes ((ListLongMap!17675 0))(
  ( (ListLongMap!17676 (toList!8853 List!26523)) )
))
(declare-fun lt!543490 () ListLongMap!17675)

(declare-fun minValue!944 () V!45715)

(declare-fun getCurrentListMapNoExtraKeys!5266 (array!77646 array!77644 (_ BitVec 32) (_ BitVec 32) V!45715 V!45715 (_ BitVec 32) Int) ListLongMap!17675)

(declare-fun dynLambda!3197 (Int (_ BitVec 64)) V!45715)

(assert (=> b!1198555 (= lt!543490 (getCurrentListMapNoExtraKeys!5266 lt!543492 (array!77645 (store (arr!37463 _values!996) i!673 (ValueCellFull!14511 (dynLambda!3197 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38000 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543491 () ListLongMap!17675)

(assert (=> b!1198555 (= lt!543491 (getCurrentListMapNoExtraKeys!5266 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198556 () Bool)

(declare-fun e!680855 () Bool)

(assert (=> b!1198556 (= e!680855 tp_is_empty!30441)))

(declare-fun b!1198557 () Bool)

(declare-fun res!797787 () Bool)

(assert (=> b!1198557 (=> (not res!797787) (not e!680856))))

(assert (=> b!1198557 (= res!797787 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38001 _keys!1208))))))

(declare-fun b!1198558 () Bool)

(declare-fun res!797790 () Bool)

(assert (=> b!1198558 (=> (not res!797790) (not e!680856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198558 (= res!797790 (validMask!0 mask!1564))))

(declare-fun b!1198559 () Bool)

(assert (=> b!1198559 (= e!680857 (and e!680855 mapRes!47504))))

(declare-fun condMapEmpty!47504 () Bool)

(declare-fun mapDefault!47504 () ValueCell!14511)

(assert (=> b!1198559 (= condMapEmpty!47504 (= (arr!37463 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14511)) mapDefault!47504)))))

(declare-fun mapIsEmpty!47504 () Bool)

(assert (=> mapIsEmpty!47504 mapRes!47504))

(declare-fun b!1198560 () Bool)

(declare-fun e!680858 () Bool)

(assert (=> b!1198560 (= e!680856 e!680858)))

(declare-fun res!797786 () Bool)

(assert (=> b!1198560 (=> (not res!797786) (not e!680858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77646 (_ BitVec 32)) Bool)

(assert (=> b!1198560 (= res!797786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543492 mask!1564))))

(assert (=> b!1198560 (= lt!543492 (array!77647 (store (arr!37464 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38001 _keys!1208)))))

(declare-fun b!1198561 () Bool)

(assert (=> b!1198561 (= e!680860 tp_is_empty!30441)))

(declare-fun b!1198562 () Bool)

(assert (=> b!1198562 (= e!680858 (not e!680859))))

(declare-fun res!797784 () Bool)

(assert (=> b!1198562 (=> res!797784 e!680859)))

(assert (=> b!1198562 (= res!797784 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198562 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39674 0))(
  ( (Unit!39675) )
))
(declare-fun lt!543493 () Unit!39674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77646 (_ BitVec 64) (_ BitVec 32)) Unit!39674)

(assert (=> b!1198562 (= lt!543493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198563 () Bool)

(declare-fun res!797793 () Bool)

(assert (=> b!1198563 (=> (not res!797793) (not e!680856))))

(assert (=> b!1198563 (= res!797793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198564 () Bool)

(declare-fun res!797792 () Bool)

(assert (=> b!1198564 (=> (not res!797792) (not e!680856))))

(assert (=> b!1198564 (= res!797792 (and (= (size!38000 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38001 _keys!1208) (size!38000 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198565 () Bool)

(declare-fun res!797789 () Bool)

(assert (=> b!1198565 (=> (not res!797789) (not e!680858))))

(assert (=> b!1198565 (= res!797789 (arrayNoDuplicates!0 lt!543492 #b00000000000000000000000000000000 Nil!26519))))

(assert (= (and start!100450 res!797785) b!1198558))

(assert (= (and b!1198558 res!797790) b!1198564))

(assert (= (and b!1198564 res!797792) b!1198563))

(assert (= (and b!1198563 res!797793) b!1198554))

(assert (= (and b!1198554 res!797791) b!1198557))

(assert (= (and b!1198557 res!797787) b!1198552))

(assert (= (and b!1198552 res!797783) b!1198553))

(assert (= (and b!1198553 res!797788) b!1198560))

(assert (= (and b!1198560 res!797786) b!1198565))

(assert (= (and b!1198565 res!797789) b!1198562))

(assert (= (and b!1198562 (not res!797784)) b!1198555))

(assert (= (and b!1198559 condMapEmpty!47504) mapIsEmpty!47504))

(assert (= (and b!1198559 (not condMapEmpty!47504)) mapNonEmpty!47504))

(get-info :version)

(assert (= (and mapNonEmpty!47504 ((_ is ValueCellFull!14511) mapValue!47504)) b!1198561))

(assert (= (and b!1198559 ((_ is ValueCellFull!14511) mapDefault!47504)) b!1198556))

(assert (= start!100450 b!1198559))

(declare-fun b_lambda!20951 () Bool)

(assert (=> (not b_lambda!20951) (not b!1198555)))

(declare-fun t!39245 () Bool)

(declare-fun tb!10545 () Bool)

(assert (=> (and start!100450 (= defaultEntry!1004 defaultEntry!1004) t!39245) tb!10545))

(declare-fun result!21659 () Bool)

(assert (=> tb!10545 (= result!21659 tp_is_empty!30441)))

(assert (=> b!1198555 t!39245))

(declare-fun b_and!42377 () Bool)

(assert (= b_and!42375 (and (=> t!39245 result!21659) b_and!42377)))

(declare-fun m!1105331 () Bool)

(assert (=> b!1198554 m!1105331))

(declare-fun m!1105333 () Bool)

(assert (=> mapNonEmpty!47504 m!1105333))

(declare-fun m!1105335 () Bool)

(assert (=> b!1198560 m!1105335))

(declare-fun m!1105337 () Bool)

(assert (=> b!1198560 m!1105337))

(declare-fun m!1105339 () Bool)

(assert (=> b!1198553 m!1105339))

(declare-fun m!1105341 () Bool)

(assert (=> b!1198565 m!1105341))

(declare-fun m!1105343 () Bool)

(assert (=> b!1198563 m!1105343))

(declare-fun m!1105345 () Bool)

(assert (=> b!1198552 m!1105345))

(declare-fun m!1105347 () Bool)

(assert (=> b!1198562 m!1105347))

(declare-fun m!1105349 () Bool)

(assert (=> b!1198562 m!1105349))

(declare-fun m!1105351 () Bool)

(assert (=> b!1198558 m!1105351))

(declare-fun m!1105353 () Bool)

(assert (=> start!100450 m!1105353))

(declare-fun m!1105355 () Bool)

(assert (=> start!100450 m!1105355))

(declare-fun m!1105357 () Bool)

(assert (=> b!1198555 m!1105357))

(declare-fun m!1105359 () Bool)

(assert (=> b!1198555 m!1105359))

(declare-fun m!1105361 () Bool)

(assert (=> b!1198555 m!1105361))

(declare-fun m!1105363 () Bool)

(assert (=> b!1198555 m!1105363))

(check-sat (not start!100450) (not b!1198552) (not b!1198563) b_and!42377 (not b!1198560) (not b!1198562) (not b!1198555) (not b!1198554) (not b_lambda!20951) (not b_next!25737) (not b!1198558) tp_is_empty!30441 (not b!1198565) (not mapNonEmpty!47504))
(check-sat b_and!42377 (not b_next!25737))
