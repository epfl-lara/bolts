; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100534 () Bool)

(assert start!100534)

(declare-fun b_free!25821 () Bool)

(declare-fun b_next!25821 () Bool)

(assert (=> start!100534 (= b_free!25821 (not b_next!25821))))

(declare-fun tp!90453 () Bool)

(declare-fun b_and!42543 () Bool)

(assert (=> start!100534 (= tp!90453 b_and!42543)))

(declare-datatypes ((V!45827 0))(
  ( (V!45828 (val!15319 Int)) )
))
(declare-fun zeroValue!944 () V!45827)

(declare-datatypes ((array!77804 0))(
  ( (array!77805 (arr!37543 (Array (_ BitVec 32) (_ BitVec 64))) (size!38080 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77804)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57288 () Bool)

(declare-fun minValue!944 () V!45827)

(declare-datatypes ((ValueCell!14553 0))(
  ( (ValueCellFull!14553 (v!17958 V!45827)) (EmptyCell!14553) )
))
(declare-datatypes ((array!77806 0))(
  ( (array!77807 (arr!37544 (Array (_ BitVec 32) ValueCell!14553)) (size!38081 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77806)

(declare-datatypes ((tuple2!19750 0))(
  ( (tuple2!19751 (_1!9885 (_ BitVec 64)) (_2!9885 V!45827)) )
))
(declare-datatypes ((List!26584 0))(
  ( (Nil!26581) (Cons!26580 (h!27789 tuple2!19750) (t!39392 List!26584)) )
))
(declare-datatypes ((ListLongMap!17731 0))(
  ( (ListLongMap!17732 (toList!8881 List!26584)) )
))
(declare-fun call!57292 () ListLongMap!17731)

(declare-fun getCurrentListMapNoExtraKeys!5294 (array!77804 array!77806 (_ BitVec 32) (_ BitVec 32) V!45827 V!45827 (_ BitVec 32) Int) ListLongMap!17731)

(assert (=> bm!57288 (= call!57292 (getCurrentListMapNoExtraKeys!5294 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200415 () Bool)

(declare-fun res!799175 () Bool)

(declare-fun e!681747 () Bool)

(assert (=> b!1200415 (=> (not res!799175) (not e!681747))))

(assert (=> b!1200415 (= res!799175 (and (= (size!38081 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38080 _keys!1208) (size!38081 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200416 () Bool)

(declare-fun e!681746 () Bool)

(declare-fun e!681752 () Bool)

(declare-fun mapRes!47630 () Bool)

(assert (=> b!1200416 (= e!681746 (and e!681752 mapRes!47630))))

(declare-fun condMapEmpty!47630 () Bool)

(declare-fun mapDefault!47630 () ValueCell!14553)

(assert (=> b!1200416 (= condMapEmpty!47630 (= (arr!37544 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14553)) mapDefault!47630)))))

(declare-fun res!799177 () Bool)

(assert (=> start!100534 (=> (not res!799177) (not e!681747))))

(assert (=> start!100534 (= res!799177 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38080 _keys!1208))))))

(assert (=> start!100534 e!681747))

(declare-fun tp_is_empty!30525 () Bool)

(assert (=> start!100534 tp_is_empty!30525))

(declare-fun array_inv!28508 (array!77804) Bool)

(assert (=> start!100534 (array_inv!28508 _keys!1208)))

(assert (=> start!100534 true))

(assert (=> start!100534 tp!90453))

(declare-fun array_inv!28509 (array!77806) Bool)

(assert (=> start!100534 (and (array_inv!28509 _values!996) e!681746)))

(declare-fun mapNonEmpty!47630 () Bool)

(declare-fun tp!90454 () Bool)

(declare-fun e!681748 () Bool)

(assert (=> mapNonEmpty!47630 (= mapRes!47630 (and tp!90454 e!681748))))

(declare-fun mapValue!47630 () ValueCell!14553)

(declare-fun mapKey!47630 () (_ BitVec 32))

(declare-fun mapRest!47630 () (Array (_ BitVec 32) ValueCell!14553))

(assert (=> mapNonEmpty!47630 (= (arr!37544 _values!996) (store mapRest!47630 mapKey!47630 mapValue!47630))))

(declare-fun b!1200417 () Bool)

(declare-fun e!681750 () Bool)

(declare-fun e!681749 () Bool)

(assert (=> b!1200417 (= e!681750 e!681749)))

(declare-fun res!799178 () Bool)

(assert (=> b!1200417 (=> res!799178 e!681749)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200417 (= res!799178 (not (= from!1455 i!673)))))

(declare-fun lt!544005 () array!77804)

(declare-fun lt!544008 () ListLongMap!17731)

(declare-fun lt!544009 () array!77806)

(assert (=> b!1200417 (= lt!544008 (getCurrentListMapNoExtraKeys!5294 lt!544005 lt!544009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3225 (Int (_ BitVec 64)) V!45827)

(assert (=> b!1200417 (= lt!544009 (array!77807 (store (arr!37544 _values!996) i!673 (ValueCellFull!14553 (dynLambda!3225 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38081 _values!996)))))

(declare-fun lt!544006 () ListLongMap!17731)

(assert (=> b!1200417 (= lt!544006 (getCurrentListMapNoExtraKeys!5294 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200418 () Bool)

(declare-fun res!799179 () Bool)

(assert (=> b!1200418 (=> (not res!799179) (not e!681747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200418 (= res!799179 (validMask!0 mask!1564))))

(declare-fun b!1200419 () Bool)

(declare-fun res!799176 () Bool)

(assert (=> b!1200419 (=> (not res!799176) (not e!681747))))

(declare-datatypes ((List!26585 0))(
  ( (Nil!26582) (Cons!26581 (h!27790 (_ BitVec 64)) (t!39393 List!26585)) )
))
(declare-fun arrayNoDuplicates!0 (array!77804 (_ BitVec 32) List!26585) Bool)

(assert (=> b!1200419 (= res!799176 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26582))))

(declare-fun b!1200420 () Bool)

(assert (=> b!1200420 (= e!681752 tp_is_empty!30525)))

(declare-fun b!1200421 () Bool)

(declare-fun res!799180 () Bool)

(assert (=> b!1200421 (=> (not res!799180) (not e!681747))))

(assert (=> b!1200421 (= res!799180 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38080 _keys!1208))))))

(declare-fun b!1200422 () Bool)

(assert (=> b!1200422 (= e!681749 (bvslt from!1455 (size!38080 _keys!1208)))))

(declare-fun e!681753 () Bool)

(assert (=> b!1200422 e!681753))

(declare-fun c!117391 () Bool)

(assert (=> b!1200422 (= c!117391 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39728 0))(
  ( (Unit!39729) )
))
(declare-fun lt!544007 () Unit!39728)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1013 (array!77804 array!77806 (_ BitVec 32) (_ BitVec 32) V!45827 V!45827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39728)

(assert (=> b!1200422 (= lt!544007 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1013 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200423 () Bool)

(declare-fun e!681751 () Bool)

(assert (=> b!1200423 (= e!681751 (not e!681750))))

(declare-fun res!799181 () Bool)

(assert (=> b!1200423 (=> res!799181 e!681750)))

(assert (=> b!1200423 (= res!799181 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200423 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544004 () Unit!39728)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77804 (_ BitVec 64) (_ BitVec 32)) Unit!39728)

(assert (=> b!1200423 (= lt!544004 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1200424 () Bool)

(declare-fun res!799174 () Bool)

(assert (=> b!1200424 (=> (not res!799174) (not e!681747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200424 (= res!799174 (validKeyInArray!0 k0!934))))

(declare-fun call!57291 () ListLongMap!17731)

(declare-fun b!1200425 () Bool)

(declare-fun -!1808 (ListLongMap!17731 (_ BitVec 64)) ListLongMap!17731)

(assert (=> b!1200425 (= e!681753 (= call!57291 (-!1808 call!57292 k0!934)))))

(declare-fun b!1200426 () Bool)

(assert (=> b!1200426 (= e!681748 tp_is_empty!30525)))

(declare-fun b!1200427 () Bool)

(declare-fun res!799182 () Bool)

(assert (=> b!1200427 (=> (not res!799182) (not e!681751))))

(assert (=> b!1200427 (= res!799182 (arrayNoDuplicates!0 lt!544005 #b00000000000000000000000000000000 Nil!26582))))

(declare-fun b!1200428 () Bool)

(declare-fun res!799183 () Bool)

(assert (=> b!1200428 (=> (not res!799183) (not e!681747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77804 (_ BitVec 32)) Bool)

(assert (=> b!1200428 (= res!799183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200429 () Bool)

(assert (=> b!1200429 (= e!681747 e!681751)))

(declare-fun res!799184 () Bool)

(assert (=> b!1200429 (=> (not res!799184) (not e!681751))))

(assert (=> b!1200429 (= res!799184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544005 mask!1564))))

(assert (=> b!1200429 (= lt!544005 (array!77805 (store (arr!37543 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38080 _keys!1208)))))

(declare-fun b!1200430 () Bool)

(assert (=> b!1200430 (= e!681753 (= call!57291 call!57292))))

(declare-fun mapIsEmpty!47630 () Bool)

(assert (=> mapIsEmpty!47630 mapRes!47630))

(declare-fun bm!57289 () Bool)

(assert (=> bm!57289 (= call!57291 (getCurrentListMapNoExtraKeys!5294 lt!544005 lt!544009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200431 () Bool)

(declare-fun res!799185 () Bool)

(assert (=> b!1200431 (=> (not res!799185) (not e!681747))))

(assert (=> b!1200431 (= res!799185 (= (select (arr!37543 _keys!1208) i!673) k0!934))))

(assert (= (and start!100534 res!799177) b!1200418))

(assert (= (and b!1200418 res!799179) b!1200415))

(assert (= (and b!1200415 res!799175) b!1200428))

(assert (= (and b!1200428 res!799183) b!1200419))

(assert (= (and b!1200419 res!799176) b!1200421))

(assert (= (and b!1200421 res!799180) b!1200424))

(assert (= (and b!1200424 res!799174) b!1200431))

(assert (= (and b!1200431 res!799185) b!1200429))

(assert (= (and b!1200429 res!799184) b!1200427))

(assert (= (and b!1200427 res!799182) b!1200423))

(assert (= (and b!1200423 (not res!799181)) b!1200417))

(assert (= (and b!1200417 (not res!799178)) b!1200422))

(assert (= (and b!1200422 c!117391) b!1200425))

(assert (= (and b!1200422 (not c!117391)) b!1200430))

(assert (= (or b!1200425 b!1200430) bm!57289))

(assert (= (or b!1200425 b!1200430) bm!57288))

(assert (= (and b!1200416 condMapEmpty!47630) mapIsEmpty!47630))

(assert (= (and b!1200416 (not condMapEmpty!47630)) mapNonEmpty!47630))

(get-info :version)

(assert (= (and mapNonEmpty!47630 ((_ is ValueCellFull!14553) mapValue!47630)) b!1200426))

(assert (= (and b!1200416 ((_ is ValueCellFull!14553) mapDefault!47630)) b!1200420))

(assert (= start!100534 b!1200416))

(declare-fun b_lambda!21035 () Bool)

(assert (=> (not b_lambda!21035) (not b!1200417)))

(declare-fun t!39391 () Bool)

(declare-fun tb!10629 () Bool)

(assert (=> (and start!100534 (= defaultEntry!1004 defaultEntry!1004) t!39391) tb!10629))

(declare-fun result!21827 () Bool)

(assert (=> tb!10629 (= result!21827 tp_is_empty!30525)))

(assert (=> b!1200417 t!39391))

(declare-fun b_and!42545 () Bool)

(assert (= b_and!42543 (and (=> t!39391 result!21827) b_and!42545)))

(declare-fun m!1106767 () Bool)

(assert (=> b!1200418 m!1106767))

(declare-fun m!1106769 () Bool)

(assert (=> bm!57289 m!1106769))

(declare-fun m!1106771 () Bool)

(assert (=> b!1200417 m!1106771))

(declare-fun m!1106773 () Bool)

(assert (=> b!1200417 m!1106773))

(declare-fun m!1106775 () Bool)

(assert (=> b!1200417 m!1106775))

(declare-fun m!1106777 () Bool)

(assert (=> b!1200417 m!1106777))

(declare-fun m!1106779 () Bool)

(assert (=> b!1200425 m!1106779))

(declare-fun m!1106781 () Bool)

(assert (=> start!100534 m!1106781))

(declare-fun m!1106783 () Bool)

(assert (=> start!100534 m!1106783))

(declare-fun m!1106785 () Bool)

(assert (=> mapNonEmpty!47630 m!1106785))

(declare-fun m!1106787 () Bool)

(assert (=> b!1200431 m!1106787))

(declare-fun m!1106789 () Bool)

(assert (=> b!1200422 m!1106789))

(declare-fun m!1106791 () Bool)

(assert (=> b!1200424 m!1106791))

(declare-fun m!1106793 () Bool)

(assert (=> b!1200428 m!1106793))

(declare-fun m!1106795 () Bool)

(assert (=> b!1200419 m!1106795))

(declare-fun m!1106797 () Bool)

(assert (=> b!1200423 m!1106797))

(declare-fun m!1106799 () Bool)

(assert (=> b!1200423 m!1106799))

(declare-fun m!1106801 () Bool)

(assert (=> b!1200427 m!1106801))

(declare-fun m!1106803 () Bool)

(assert (=> bm!57288 m!1106803))

(declare-fun m!1106805 () Bool)

(assert (=> b!1200429 m!1106805))

(declare-fun m!1106807 () Bool)

(assert (=> b!1200429 m!1106807))

(check-sat (not bm!57289) (not b!1200428) (not start!100534) (not b!1200419) b_and!42545 (not b!1200427) (not b!1200418) tp_is_empty!30525 (not b!1200423) (not b!1200424) (not bm!57288) (not b!1200417) (not mapNonEmpty!47630) (not b_lambda!21035) (not b!1200429) (not b!1200422) (not b_next!25821) (not b!1200425))
(check-sat b_and!42545 (not b_next!25821))
