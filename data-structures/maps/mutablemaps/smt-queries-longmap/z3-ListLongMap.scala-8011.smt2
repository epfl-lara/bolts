; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98944 () Bool)

(assert start!98944)

(declare-fun b_free!24513 () Bool)

(declare-fun b_next!24513 () Bool)

(assert (=> start!98944 (= b_free!24513 (not b_next!24513))))

(declare-fun tp!86251 () Bool)

(declare-fun b_and!39889 () Bool)

(assert (=> start!98944 (= tp!86251 b_and!39889)))

(declare-fun b!1158546 () Bool)

(declare-fun res!769266 () Bool)

(declare-fun e!658880 () Bool)

(assert (=> b!1158546 (=> (not res!769266) (not e!658880))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74876 0))(
  ( (array!74877 (arr!36085 (Array (_ BitVec 32) (_ BitVec 64))) (size!36622 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74876)

(assert (=> b!1158546 (= res!769266 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36622 _keys!1208))))))

(declare-fun b!1158547 () Bool)

(declare-fun call!55702 () Bool)

(assert (=> b!1158547 call!55702))

(declare-datatypes ((Unit!38066 0))(
  ( (Unit!38067) )
))
(declare-fun lt!520627 () Unit!38066)

(declare-fun call!55703 () Unit!38066)

(assert (=> b!1158547 (= lt!520627 call!55703)))

(declare-fun e!658881 () Unit!38066)

(assert (=> b!1158547 (= e!658881 lt!520627)))

(declare-fun b!1158548 () Bool)

(declare-fun e!658875 () Bool)

(declare-fun e!658882 () Bool)

(assert (=> b!1158548 (= e!658875 e!658882)))

(declare-fun res!769257 () Bool)

(assert (=> b!1158548 (=> res!769257 e!658882)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1158548 (= res!769257 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43851 0))(
  ( (V!43852 (val!14578 Int)) )
))
(declare-fun zeroValue!944 () V!43851)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18626 0))(
  ( (tuple2!18627 (_1!9323 (_ BitVec 64)) (_2!9323 V!43851)) )
))
(declare-datatypes ((List!25404 0))(
  ( (Nil!25401) (Cons!25400 (h!26609 tuple2!18626) (t!36916 List!25404)) )
))
(declare-datatypes ((ListLongMap!16607 0))(
  ( (ListLongMap!16608 (toList!8319 List!25404)) )
))
(declare-fun lt!520620 () ListLongMap!16607)

(declare-datatypes ((ValueCell!13812 0))(
  ( (ValueCellFull!13812 (v!17216 V!43851)) (EmptyCell!13812) )
))
(declare-datatypes ((array!74878 0))(
  ( (array!74879 (arr!36086 (Array (_ BitVec 32) ValueCell!13812)) (size!36623 (_ BitVec 32))) )
))
(declare-fun lt!520608 () array!74878)

(declare-fun minValue!944 () V!43851)

(declare-fun lt!520624 () array!74876)

(declare-fun getCurrentListMapNoExtraKeys!4756 (array!74876 array!74878 (_ BitVec 32) (_ BitVec 32) V!43851 V!43851 (_ BitVec 32) Int) ListLongMap!16607)

(assert (=> b!1158548 (= lt!520620 (getCurrentListMapNoExtraKeys!4756 lt!520624 lt!520608 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!520628 () V!43851)

(declare-fun _values!996 () array!74878)

(assert (=> b!1158548 (= lt!520608 (array!74879 (store (arr!36086 _values!996) i!673 (ValueCellFull!13812 lt!520628)) (size!36623 _values!996)))))

(declare-fun dynLambda!2761 (Int (_ BitVec 64)) V!43851)

(assert (=> b!1158548 (= lt!520628 (dynLambda!2761 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!520610 () ListLongMap!16607)

(assert (=> b!1158548 (= lt!520610 (getCurrentListMapNoExtraKeys!4756 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1158549 () Bool)

(declare-fun lt!520616 () ListLongMap!16607)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6803 (ListLongMap!16607 (_ BitVec 64)) Bool)

(declare-fun +!3647 (ListLongMap!16607 tuple2!18626) ListLongMap!16607)

(assert (=> b!1158549 (contains!6803 (+!3647 lt!520616 (tuple2!18627 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!520626 () Unit!38066)

(declare-fun call!55698 () Unit!38066)

(assert (=> b!1158549 (= lt!520626 call!55698)))

(declare-fun call!55697 () Bool)

(assert (=> b!1158549 call!55697))

(declare-fun call!55699 () ListLongMap!16607)

(assert (=> b!1158549 (= lt!520616 call!55699)))

(declare-fun lt!520621 () Unit!38066)

(declare-fun lt!520629 () ListLongMap!16607)

(declare-fun addStillContains!943 (ListLongMap!16607 (_ BitVec 64) V!43851 (_ BitVec 64)) Unit!38066)

(assert (=> b!1158549 (= lt!520621 (addStillContains!943 lt!520629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!658879 () Unit!38066)

(assert (=> b!1158549 (= e!658879 lt!520626)))

(declare-fun bm!55694 () Bool)

(assert (=> bm!55694 (= call!55703 call!55698)))

(declare-fun b!1158550 () Bool)

(declare-fun res!769259 () Bool)

(assert (=> b!1158550 (=> (not res!769259) (not e!658880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158550 (= res!769259 (validKeyInArray!0 k0!934))))

(declare-fun b!1158551 () Bool)

(declare-fun e!658868 () Unit!38066)

(declare-fun lt!520615 () Unit!38066)

(assert (=> b!1158551 (= e!658868 lt!520615)))

(assert (=> b!1158551 (= lt!520615 call!55703)))

(assert (=> b!1158551 call!55702))

(declare-fun b!1158552 () Bool)

(declare-fun e!658871 () Bool)

(declare-fun arrayContainsKey!0 (array!74876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158552 (= e!658871 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158553 () Bool)

(declare-fun lt!520622 () Bool)

(assert (=> b!1158553 (= e!658871 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520622) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1158554 () Bool)

(declare-fun e!658869 () Unit!38066)

(declare-fun Unit!38068 () Unit!38066)

(assert (=> b!1158554 (= e!658869 Unit!38068)))

(declare-fun b!1158555 () Bool)

(declare-fun res!769254 () Bool)

(assert (=> b!1158555 (=> (not res!769254) (not e!658880))))

(declare-datatypes ((List!25405 0))(
  ( (Nil!25402) (Cons!25401 (h!26610 (_ BitVec 64)) (t!36917 List!25405)) )
))
(declare-fun arrayNoDuplicates!0 (array!74876 (_ BitVec 32) List!25405) Bool)

(assert (=> b!1158555 (= res!769254 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25402))))

(declare-fun e!658884 () Bool)

(declare-fun lt!520619 () ListLongMap!16607)

(declare-fun b!1158556 () Bool)

(assert (=> b!1158556 (= e!658884 (= lt!520619 (getCurrentListMapNoExtraKeys!4756 lt!520624 lt!520608 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1158557 () Bool)

(declare-fun c!115428 () Bool)

(assert (=> b!1158557 (= c!115428 (and (not lt!520622) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1158557 (= e!658879 e!658868)))

(declare-fun b!1158558 () Bool)

(declare-fun res!769263 () Bool)

(assert (=> b!1158558 (=> (not res!769263) (not e!658880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158558 (= res!769263 (validMask!0 mask!1564))))

(declare-fun c!115427 () Bool)

(declare-fun bm!55695 () Bool)

(assert (=> bm!55695 (= call!55698 (addStillContains!943 (ite c!115427 lt!520616 lt!520629) (ite c!115427 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115428 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115427 minValue!944 (ite c!115428 zeroValue!944 minValue!944)) k0!934))))

(declare-fun call!55701 () ListLongMap!16607)

(declare-fun bm!55696 () Bool)

(assert (=> bm!55696 (= call!55701 (getCurrentListMapNoExtraKeys!4756 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158559 () Bool)

(declare-fun Unit!38069 () Unit!38066)

(assert (=> b!1158559 (= e!658869 Unit!38069)))

(assert (=> b!1158559 (= lt!520622 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1158559 (= c!115427 (and (not lt!520622) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520623 () Unit!38066)

(assert (=> b!1158559 (= lt!520623 e!658879)))

(declare-fun lt!520612 () Unit!38066)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!518 (array!74876 array!74878 (_ BitVec 32) (_ BitVec 32) V!43851 V!43851 (_ BitVec 64) (_ BitVec 32) Int) Unit!38066)

(assert (=> b!1158559 (= lt!520612 (lemmaListMapContainsThenArrayContainsFrom!518 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115425 () Bool)

(assert (=> b!1158559 (= c!115425 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769258 () Bool)

(assert (=> b!1158559 (= res!769258 e!658871)))

(declare-fun e!658873 () Bool)

(assert (=> b!1158559 (=> (not res!769258) (not e!658873))))

(assert (=> b!1158559 e!658873))

(declare-fun lt!520617 () Unit!38066)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74876 (_ BitVec 32) (_ BitVec 32)) Unit!38066)

(assert (=> b!1158559 (= lt!520617 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1158559 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25402)))

(declare-fun lt!520613 () Unit!38066)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74876 (_ BitVec 64) (_ BitVec 32) List!25405) Unit!38066)

(assert (=> b!1158559 (= lt!520613 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25402))))

(assert (=> b!1158559 false))

(declare-fun bm!55697 () Bool)

(assert (=> bm!55697 (= call!55699 (+!3647 lt!520629 (ite (or c!115427 c!115428) (tuple2!18627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18627 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun res!769260 () Bool)

(assert (=> start!98944 (=> (not res!769260) (not e!658880))))

(assert (=> start!98944 (= res!769260 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36622 _keys!1208))))))

(assert (=> start!98944 e!658880))

(declare-fun tp_is_empty!29043 () Bool)

(assert (=> start!98944 tp_is_empty!29043))

(declare-fun array_inv!27482 (array!74876) Bool)

(assert (=> start!98944 (array_inv!27482 _keys!1208)))

(assert (=> start!98944 true))

(assert (=> start!98944 tp!86251))

(declare-fun e!658883 () Bool)

(declare-fun array_inv!27483 (array!74878) Bool)

(assert (=> start!98944 (and (array_inv!27483 _values!996) e!658883)))

(declare-fun b!1158560 () Bool)

(declare-fun e!658878 () Bool)

(declare-fun mapRes!45389 () Bool)

(assert (=> b!1158560 (= e!658883 (and e!658878 mapRes!45389))))

(declare-fun condMapEmpty!45389 () Bool)

(declare-fun mapDefault!45389 () ValueCell!13812)

(assert (=> b!1158560 (= condMapEmpty!45389 (= (arr!36086 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13812)) mapDefault!45389)))))

(declare-fun b!1158561 () Bool)

(declare-fun e!658870 () Bool)

(assert (=> b!1158561 (= e!658880 e!658870)))

(declare-fun res!769256 () Bool)

(assert (=> b!1158561 (=> (not res!769256) (not e!658870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74876 (_ BitVec 32)) Bool)

(assert (=> b!1158561 (= res!769256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520624 mask!1564))))

(assert (=> b!1158561 (= lt!520624 (array!74877 (store (arr!36085 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36622 _keys!1208)))))

(declare-fun b!1158562 () Bool)

(declare-fun e!658874 () Bool)

(declare-fun call!55700 () ListLongMap!16607)

(assert (=> b!1158562 (= e!658874 (= call!55700 call!55701))))

(declare-fun bm!55698 () Bool)

(assert (=> bm!55698 (= call!55702 call!55697)))

(declare-fun b!1158563 () Bool)

(assert (=> b!1158563 (= e!658868 e!658881)))

(declare-fun c!115424 () Bool)

(assert (=> b!1158563 (= c!115424 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520622))))

(declare-fun b!1158564 () Bool)

(declare-fun -!1392 (ListLongMap!16607 (_ BitVec 64)) ListLongMap!16607)

(assert (=> b!1158564 (= e!658874 (= call!55700 (-!1392 call!55701 k0!934)))))

(declare-fun bm!55699 () Bool)

(assert (=> bm!55699 (= call!55700 (getCurrentListMapNoExtraKeys!4756 lt!520624 lt!520608 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158565 () Bool)

(declare-fun e!658876 () Bool)

(assert (=> b!1158565 (= e!658876 true)))

(assert (=> b!1158565 e!658884))

(declare-fun res!769267 () Bool)

(assert (=> b!1158565 (=> (not res!769267) (not e!658884))))

(assert (=> b!1158565 (= res!769267 (= lt!520619 lt!520629))))

(assert (=> b!1158565 (= lt!520619 (-!1392 lt!520610 k0!934))))

(declare-fun lt!520625 () V!43851)

(assert (=> b!1158565 (= (-!1392 (+!3647 lt!520629 (tuple2!18627 (select (arr!36085 _keys!1208) from!1455) lt!520625)) (select (arr!36085 _keys!1208) from!1455)) lt!520629)))

(declare-fun lt!520618 () Unit!38066)

(declare-fun addThenRemoveForNewKeyIsSame!232 (ListLongMap!16607 (_ BitVec 64) V!43851) Unit!38066)

(assert (=> b!1158565 (= lt!520618 (addThenRemoveForNewKeyIsSame!232 lt!520629 (select (arr!36085 _keys!1208) from!1455) lt!520625))))

(declare-fun get!18424 (ValueCell!13812 V!43851) V!43851)

(assert (=> b!1158565 (= lt!520625 (get!18424 (select (arr!36086 _values!996) from!1455) lt!520628))))

(declare-fun lt!520609 () Unit!38066)

(assert (=> b!1158565 (= lt!520609 e!658869)))

(declare-fun c!115426 () Bool)

(assert (=> b!1158565 (= c!115426 (contains!6803 lt!520629 k0!934))))

(assert (=> b!1158565 (= lt!520629 (getCurrentListMapNoExtraKeys!4756 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158566 () Bool)

(assert (=> b!1158566 (= e!658870 (not e!658875))))

(declare-fun res!769262 () Bool)

(assert (=> b!1158566 (=> res!769262 e!658875)))

(assert (=> b!1158566 (= res!769262 (bvsgt from!1455 i!673))))

(assert (=> b!1158566 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!520614 () Unit!38066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74876 (_ BitVec 64) (_ BitVec 32)) Unit!38066)

(assert (=> b!1158566 (= lt!520614 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1158567 () Bool)

(assert (=> b!1158567 (= e!658882 e!658876)))

(declare-fun res!769265 () Bool)

(assert (=> b!1158567 (=> res!769265 e!658876)))

(assert (=> b!1158567 (= res!769265 (not (= (select (arr!36085 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1158567 e!658874))

(declare-fun c!115423 () Bool)

(assert (=> b!1158567 (= c!115423 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520611 () Unit!38066)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!619 (array!74876 array!74878 (_ BitVec 32) (_ BitVec 32) V!43851 V!43851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38066)

(assert (=> b!1158567 (= lt!520611 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!619 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55700 () Bool)

(declare-fun call!55704 () ListLongMap!16607)

(assert (=> bm!55700 (= call!55704 call!55699)))

(declare-fun mapNonEmpty!45389 () Bool)

(declare-fun tp!86250 () Bool)

(declare-fun e!658872 () Bool)

(assert (=> mapNonEmpty!45389 (= mapRes!45389 (and tp!86250 e!658872))))

(declare-fun mapRest!45389 () (Array (_ BitVec 32) ValueCell!13812))

(declare-fun mapKey!45389 () (_ BitVec 32))

(declare-fun mapValue!45389 () ValueCell!13812)

(assert (=> mapNonEmpty!45389 (= (arr!36086 _values!996) (store mapRest!45389 mapKey!45389 mapValue!45389))))

(declare-fun mapIsEmpty!45389 () Bool)

(assert (=> mapIsEmpty!45389 mapRes!45389))

(declare-fun bm!55701 () Bool)

(assert (=> bm!55701 (= call!55697 (contains!6803 (ite c!115427 lt!520616 call!55704) k0!934))))

(declare-fun b!1158568 () Bool)

(declare-fun res!769264 () Bool)

(assert (=> b!1158568 (=> (not res!769264) (not e!658870))))

(assert (=> b!1158568 (= res!769264 (arrayNoDuplicates!0 lt!520624 #b00000000000000000000000000000000 Nil!25402))))

(declare-fun b!1158569 () Bool)

(declare-fun res!769261 () Bool)

(assert (=> b!1158569 (=> (not res!769261) (not e!658880))))

(assert (=> b!1158569 (= res!769261 (= (select (arr!36085 _keys!1208) i!673) k0!934))))

(declare-fun b!1158570 () Bool)

(declare-fun Unit!38070 () Unit!38066)

(assert (=> b!1158570 (= e!658881 Unit!38070)))

(declare-fun b!1158571 () Bool)

(declare-fun res!769268 () Bool)

(assert (=> b!1158571 (=> (not res!769268) (not e!658880))))

(assert (=> b!1158571 (= res!769268 (and (= (size!36623 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36622 _keys!1208) (size!36623 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1158572 () Bool)

(assert (=> b!1158572 (= e!658873 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158573 () Bool)

(declare-fun res!769255 () Bool)

(assert (=> b!1158573 (=> (not res!769255) (not e!658880))))

(assert (=> b!1158573 (= res!769255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1158574 () Bool)

(assert (=> b!1158574 (= e!658878 tp_is_empty!29043)))

(declare-fun b!1158575 () Bool)

(assert (=> b!1158575 (= e!658872 tp_is_empty!29043)))

(assert (= (and start!98944 res!769260) b!1158558))

(assert (= (and b!1158558 res!769263) b!1158571))

(assert (= (and b!1158571 res!769268) b!1158573))

(assert (= (and b!1158573 res!769255) b!1158555))

(assert (= (and b!1158555 res!769254) b!1158546))

(assert (= (and b!1158546 res!769266) b!1158550))

(assert (= (and b!1158550 res!769259) b!1158569))

(assert (= (and b!1158569 res!769261) b!1158561))

(assert (= (and b!1158561 res!769256) b!1158568))

(assert (= (and b!1158568 res!769264) b!1158566))

(assert (= (and b!1158566 (not res!769262)) b!1158548))

(assert (= (and b!1158548 (not res!769257)) b!1158567))

(assert (= (and b!1158567 c!115423) b!1158564))

(assert (= (and b!1158567 (not c!115423)) b!1158562))

(assert (= (or b!1158564 b!1158562) bm!55699))

(assert (= (or b!1158564 b!1158562) bm!55696))

(assert (= (and b!1158567 (not res!769265)) b!1158565))

(assert (= (and b!1158565 c!115426) b!1158559))

(assert (= (and b!1158565 (not c!115426)) b!1158554))

(assert (= (and b!1158559 c!115427) b!1158549))

(assert (= (and b!1158559 (not c!115427)) b!1158557))

(assert (= (and b!1158557 c!115428) b!1158551))

(assert (= (and b!1158557 (not c!115428)) b!1158563))

(assert (= (and b!1158563 c!115424) b!1158547))

(assert (= (and b!1158563 (not c!115424)) b!1158570))

(assert (= (or b!1158551 b!1158547) bm!55694))

(assert (= (or b!1158551 b!1158547) bm!55700))

(assert (= (or b!1158551 b!1158547) bm!55698))

(assert (= (or b!1158549 bm!55698) bm!55701))

(assert (= (or b!1158549 bm!55694) bm!55695))

(assert (= (or b!1158549 bm!55700) bm!55697))

(assert (= (and b!1158559 c!115425) b!1158552))

(assert (= (and b!1158559 (not c!115425)) b!1158553))

(assert (= (and b!1158559 res!769258) b!1158572))

(assert (= (and b!1158565 res!769267) b!1158556))

(assert (= (and b!1158560 condMapEmpty!45389) mapIsEmpty!45389))

(assert (= (and b!1158560 (not condMapEmpty!45389)) mapNonEmpty!45389))

(get-info :version)

(assert (= (and mapNonEmpty!45389 ((_ is ValueCellFull!13812) mapValue!45389)) b!1158575))

(assert (= (and b!1158560 ((_ is ValueCellFull!13812) mapDefault!45389)) b!1158574))

(assert (= start!98944 b!1158560))

(declare-fun b_lambda!19637 () Bool)

(assert (=> (not b_lambda!19637) (not b!1158548)))

(declare-fun t!36915 () Bool)

(declare-fun tb!9333 () Bool)

(assert (=> (and start!98944 (= defaultEntry!1004 defaultEntry!1004) t!36915) tb!9333))

(declare-fun result!19223 () Bool)

(assert (=> tb!9333 (= result!19223 tp_is_empty!29043)))

(assert (=> b!1158548 t!36915))

(declare-fun b_and!39891 () Bool)

(assert (= b_and!39889 (and (=> t!36915 result!19223) b_and!39891)))

(declare-fun m!1067783 () Bool)

(assert (=> b!1158549 m!1067783))

(assert (=> b!1158549 m!1067783))

(declare-fun m!1067785 () Bool)

(assert (=> b!1158549 m!1067785))

(declare-fun m!1067787 () Bool)

(assert (=> b!1158549 m!1067787))

(declare-fun m!1067789 () Bool)

(assert (=> b!1158572 m!1067789))

(declare-fun m!1067791 () Bool)

(assert (=> b!1158558 m!1067791))

(declare-fun m!1067793 () Bool)

(assert (=> b!1158561 m!1067793))

(declare-fun m!1067795 () Bool)

(assert (=> b!1158561 m!1067795))

(declare-fun m!1067797 () Bool)

(assert (=> b!1158567 m!1067797))

(declare-fun m!1067799 () Bool)

(assert (=> b!1158567 m!1067799))

(declare-fun m!1067801 () Bool)

(assert (=> b!1158550 m!1067801))

(declare-fun m!1067803 () Bool)

(assert (=> bm!55696 m!1067803))

(declare-fun m!1067805 () Bool)

(assert (=> bm!55695 m!1067805))

(declare-fun m!1067807 () Bool)

(assert (=> b!1158559 m!1067807))

(declare-fun m!1067809 () Bool)

(assert (=> b!1158559 m!1067809))

(declare-fun m!1067811 () Bool)

(assert (=> b!1158559 m!1067811))

(declare-fun m!1067813 () Bool)

(assert (=> b!1158559 m!1067813))

(declare-fun m!1067815 () Bool)

(assert (=> bm!55701 m!1067815))

(declare-fun m!1067817 () Bool)

(assert (=> bm!55697 m!1067817))

(declare-fun m!1067819 () Bool)

(assert (=> b!1158548 m!1067819))

(declare-fun m!1067821 () Bool)

(assert (=> b!1158548 m!1067821))

(declare-fun m!1067823 () Bool)

(assert (=> b!1158548 m!1067823))

(declare-fun m!1067825 () Bool)

(assert (=> b!1158548 m!1067825))

(declare-fun m!1067827 () Bool)

(assert (=> b!1158566 m!1067827))

(declare-fun m!1067829 () Bool)

(assert (=> b!1158566 m!1067829))

(declare-fun m!1067831 () Bool)

(assert (=> start!98944 m!1067831))

(declare-fun m!1067833 () Bool)

(assert (=> start!98944 m!1067833))

(declare-fun m!1067835 () Bool)

(assert (=> bm!55699 m!1067835))

(assert (=> b!1158565 m!1067803))

(assert (=> b!1158565 m!1067797))

(declare-fun m!1067837 () Bool)

(assert (=> b!1158565 m!1067837))

(declare-fun m!1067839 () Bool)

(assert (=> b!1158565 m!1067839))

(declare-fun m!1067841 () Bool)

(assert (=> b!1158565 m!1067841))

(declare-fun m!1067843 () Bool)

(assert (=> b!1158565 m!1067843))

(assert (=> b!1158565 m!1067841))

(assert (=> b!1158565 m!1067797))

(declare-fun m!1067845 () Bool)

(assert (=> b!1158565 m!1067845))

(assert (=> b!1158565 m!1067797))

(declare-fun m!1067847 () Bool)

(assert (=> b!1158565 m!1067847))

(assert (=> b!1158565 m!1067847))

(declare-fun m!1067849 () Bool)

(assert (=> b!1158565 m!1067849))

(declare-fun m!1067851 () Bool)

(assert (=> b!1158573 m!1067851))

(assert (=> b!1158556 m!1067835))

(declare-fun m!1067853 () Bool)

(assert (=> b!1158569 m!1067853))

(declare-fun m!1067855 () Bool)

(assert (=> b!1158568 m!1067855))

(declare-fun m!1067857 () Bool)

(assert (=> mapNonEmpty!45389 m!1067857))

(declare-fun m!1067859 () Bool)

(assert (=> b!1158555 m!1067859))

(assert (=> b!1158552 m!1067789))

(declare-fun m!1067861 () Bool)

(assert (=> b!1158564 m!1067861))

(check-sat (not b_lambda!19637) (not start!98944) (not b!1158550) (not b!1158568) (not b!1158565) (not b!1158561) (not b!1158572) (not b!1158552) (not bm!55699) (not b_next!24513) (not b!1158559) (not b!1158555) (not mapNonEmpty!45389) (not b!1158549) (not b!1158548) (not b!1158564) (not b!1158573) (not b!1158566) (not bm!55697) (not bm!55701) (not bm!55696) (not b!1158567) (not b!1158558) (not b!1158556) b_and!39891 tp_is_empty!29043 (not bm!55695))
(check-sat b_and!39891 (not b_next!24513))
