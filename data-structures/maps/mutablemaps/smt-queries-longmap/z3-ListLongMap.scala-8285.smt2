; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100984 () Bool)

(assert start!100984)

(declare-fun b_free!25983 () Bool)

(declare-fun b_next!25983 () Bool)

(assert (=> start!100984 (= b_free!25983 (not b_next!25983))))

(declare-fun tp!90963 () Bool)

(declare-fun b_and!43039 () Bool)

(assert (=> start!100984 (= tp!90963 b_and!43039)))

(declare-fun b!1208675 () Bool)

(declare-fun call!59214 () Bool)

(assert (=> b!1208675 call!59214))

(declare-datatypes ((Unit!39989 0))(
  ( (Unit!39990) )
))
(declare-fun lt!548542 () Unit!39989)

(declare-fun call!59217 () Unit!39989)

(assert (=> b!1208675 (= lt!548542 call!59217)))

(declare-fun e!686495 () Unit!39989)

(assert (=> b!1208675 (= e!686495 lt!548542)))

(declare-fun b!1208676 () Bool)

(declare-fun res!803487 () Bool)

(declare-fun e!686488 () Bool)

(assert (=> b!1208676 (=> (not res!803487) (not e!686488))))

(declare-datatypes ((array!78134 0))(
  ( (array!78135 (arr!37701 (Array (_ BitVec 32) (_ BitVec 64))) (size!38238 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78134)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1208676 (= res!803487 (= (select (arr!37701 _keys!1208) i!673) k0!934))))

(declare-fun b!1208677 () Bool)

(declare-fun e!686486 () Bool)

(declare-fun tp_is_empty!30687 () Bool)

(assert (=> b!1208677 (= e!686486 tp_is_empty!30687)))

(declare-fun bm!59211 () Bool)

(declare-fun call!59219 () Bool)

(assert (=> bm!59211 (= call!59214 call!59219)))

(declare-fun b!1208678 () Bool)

(declare-datatypes ((V!46043 0))(
  ( (V!46044 (val!15400 Int)) )
))
(declare-datatypes ((tuple2!19904 0))(
  ( (tuple2!19905 (_1!9962 (_ BitVec 64)) (_2!9962 V!46043)) )
))
(declare-datatypes ((List!26725 0))(
  ( (Nil!26722) (Cons!26721 (h!27930 tuple2!19904) (t!39695 List!26725)) )
))
(declare-datatypes ((ListLongMap!17885 0))(
  ( (ListLongMap!17886 (toList!8958 List!26725)) )
))
(declare-fun call!59215 () ListLongMap!17885)

(declare-fun e!686499 () Bool)

(declare-fun call!59221 () ListLongMap!17885)

(declare-fun -!1862 (ListLongMap!17885 (_ BitVec 64)) ListLongMap!17885)

(assert (=> b!1208678 (= e!686499 (= call!59215 (-!1862 call!59221 k0!934)))))

(declare-fun b!1208679 () Bool)

(declare-fun e!686492 () Bool)

(declare-fun e!686484 () Bool)

(assert (=> b!1208679 (= e!686492 (not e!686484))))

(declare-fun res!803490 () Bool)

(assert (=> b!1208679 (=> res!803490 e!686484)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1208679 (= res!803490 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208679 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548540 () Unit!39989)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78134 (_ BitVec 64) (_ BitVec 32)) Unit!39989)

(assert (=> b!1208679 (= lt!548540 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1208681 () Bool)

(declare-fun e!686500 () Bool)

(declare-fun mapRes!47896 () Bool)

(assert (=> b!1208681 (= e!686500 (and e!686486 mapRes!47896))))

(declare-fun condMapEmpty!47896 () Bool)

(declare-datatypes ((ValueCell!14634 0))(
  ( (ValueCellFull!14634 (v!18050 V!46043)) (EmptyCell!14634) )
))
(declare-datatypes ((array!78136 0))(
  ( (array!78137 (arr!37702 (Array (_ BitVec 32) ValueCell!14634)) (size!38239 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78136)

(declare-fun mapDefault!47896 () ValueCell!14634)

(assert (=> b!1208681 (= condMapEmpty!47896 (= (arr!37702 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14634)) mapDefault!47896)))))

(declare-fun b!1208682 () Bool)

(declare-fun e!686489 () Bool)

(assert (=> b!1208682 (= e!686484 e!686489)))

(declare-fun res!803474 () Bool)

(assert (=> b!1208682 (=> res!803474 e!686489)))

(assert (=> b!1208682 (= res!803474 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46043)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!548552 () ListLongMap!17885)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!548549 () array!78136)

(declare-fun lt!548541 () array!78134)

(declare-fun minValue!944 () V!46043)

(declare-fun getCurrentListMapNoExtraKeys!5365 (array!78134 array!78136 (_ BitVec 32) (_ BitVec 32) V!46043 V!46043 (_ BitVec 32) Int) ListLongMap!17885)

(assert (=> b!1208682 (= lt!548552 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3283 (Int (_ BitVec 64)) V!46043)

(assert (=> b!1208682 (= lt!548549 (array!78137 (store (arr!37702 _values!996) i!673 (ValueCellFull!14634 (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38239 _values!996)))))

(declare-fun lt!548553 () ListLongMap!17885)

(assert (=> b!1208682 (= lt!548553 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1208683 () Bool)

(declare-fun e!686491 () Bool)

(declare-fun e!686497 () Bool)

(assert (=> b!1208683 (= e!686491 e!686497)))

(declare-fun res!803491 () Bool)

(assert (=> b!1208683 (=> res!803491 e!686497)))

(declare-fun lt!548550 () ListLongMap!17885)

(declare-fun contains!6965 (ListLongMap!17885 (_ BitVec 64)) Bool)

(assert (=> b!1208683 (= res!803491 (not (contains!6965 lt!548550 k0!934)))))

(assert (=> b!1208683 (= lt!548550 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!118892 () Bool)

(declare-fun bm!59212 () Bool)

(declare-fun lt!548544 () ListLongMap!17885)

(declare-fun call!59216 () ListLongMap!17885)

(assert (=> bm!59212 (= call!59219 (contains!6965 (ite c!118892 lt!548544 call!59216) k0!934))))

(declare-fun e!686496 () Bool)

(declare-fun lt!548545 () Bool)

(declare-fun b!1208684 () Bool)

(assert (=> b!1208684 (= e!686496 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548545) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1208685 () Bool)

(declare-fun res!803486 () Bool)

(assert (=> b!1208685 (=> (not res!803486) (not e!686488))))

(declare-datatypes ((List!26726 0))(
  ( (Nil!26723) (Cons!26722 (h!27931 (_ BitVec 64)) (t!39696 List!26726)) )
))
(declare-fun arrayNoDuplicates!0 (array!78134 (_ BitVec 32) List!26726) Bool)

(assert (=> b!1208685 (= res!803486 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26723))))

(declare-fun b!1208686 () Bool)

(assert (=> b!1208686 (= e!686496 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208687 () Bool)

(declare-fun e!686498 () Unit!39989)

(declare-fun Unit!39991 () Unit!39989)

(assert (=> b!1208687 (= e!686498 Unit!39991)))

(declare-fun b!1208688 () Bool)

(assert (=> b!1208688 (= e!686489 e!686491)))

(declare-fun res!803480 () Bool)

(assert (=> b!1208688 (=> res!803480 e!686491)))

(assert (=> b!1208688 (= res!803480 (not (= (select (arr!37701 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1208688 e!686499))

(declare-fun c!118893 () Bool)

(assert (=> b!1208688 (= c!118893 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548548 () Unit!39989)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1067 (array!78134 array!78136 (_ BitVec 32) (_ BitVec 32) V!46043 V!46043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39989)

(assert (=> b!1208688 (= lt!548548 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1067 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208689 () Bool)

(assert (=> b!1208689 (= e!686488 e!686492)))

(declare-fun res!803478 () Bool)

(assert (=> b!1208689 (=> (not res!803478) (not e!686492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78134 (_ BitVec 32)) Bool)

(assert (=> b!1208689 (= res!803478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548541 mask!1564))))

(assert (=> b!1208689 (= lt!548541 (array!78135 (store (arr!37701 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38238 _keys!1208)))))

(declare-fun bm!59213 () Bool)

(declare-fun call!59220 () ListLongMap!17885)

(assert (=> bm!59213 (= call!59216 call!59220)))

(declare-fun b!1208690 () Bool)

(declare-fun e!686493 () Unit!39989)

(declare-fun lt!548539 () Unit!39989)

(assert (=> b!1208690 (= e!686493 lt!548539)))

(declare-fun lt!548551 () Unit!39989)

(declare-fun addStillContains!1050 (ListLongMap!17885 (_ BitVec 64) V!46043 (_ BitVec 64)) Unit!39989)

(assert (=> b!1208690 (= lt!548551 (addStillContains!1050 lt!548550 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun +!3985 (ListLongMap!17885 tuple2!19904) ListLongMap!17885)

(assert (=> b!1208690 (= lt!548544 (+!3985 lt!548550 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1208690 call!59219))

(declare-fun call!59218 () Unit!39989)

(assert (=> b!1208690 (= lt!548539 call!59218)))

(assert (=> b!1208690 (contains!6965 call!59220 k0!934)))

(declare-fun b!1208691 () Bool)

(declare-fun res!803481 () Bool)

(assert (=> b!1208691 (=> (not res!803481) (not e!686492))))

(assert (=> b!1208691 (= res!803481 (arrayNoDuplicates!0 lt!548541 #b00000000000000000000000000000000 Nil!26723))))

(declare-fun b!1208692 () Bool)

(declare-fun res!803482 () Bool)

(assert (=> b!1208692 (=> (not res!803482) (not e!686488))))

(assert (=> b!1208692 (= res!803482 (and (= (size!38239 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38238 _keys!1208) (size!38239 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1208693 () Bool)

(declare-fun res!803475 () Bool)

(declare-fun e!686501 () Bool)

(assert (=> b!1208693 (=> res!803475 e!686501)))

(declare-fun noDuplicate!1647 (List!26726) Bool)

(assert (=> b!1208693 (= res!803475 (not (noDuplicate!1647 Nil!26723)))))

(declare-fun b!1208694 () Bool)

(assert (=> b!1208694 (= e!686499 (= call!59215 call!59221))))

(declare-fun b!1208695 () Bool)

(declare-fun e!686485 () Bool)

(assert (=> b!1208695 (= e!686485 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208696 () Bool)

(declare-fun res!803483 () Bool)

(assert (=> b!1208696 (=> (not res!803483) (not e!686488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1208696 (= res!803483 (validMask!0 mask!1564))))

(declare-fun b!1208697 () Bool)

(declare-fun res!803477 () Bool)

(assert (=> b!1208697 (=> (not res!803477) (not e!686488))))

(assert (=> b!1208697 (= res!803477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1208698 () Bool)

(declare-fun e!686487 () Bool)

(assert (=> b!1208698 (= e!686501 e!686487)))

(declare-fun res!803489 () Bool)

(assert (=> b!1208698 (=> (not res!803489) (not e!686487))))

(declare-fun contains!6966 (List!26726 (_ BitVec 64)) Bool)

(assert (=> b!1208698 (= res!803489 (not (contains!6966 Nil!26723 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!59214 () Bool)

(assert (=> bm!59214 (= call!59221 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208699 () Bool)

(assert (=> b!1208699 (= e!686487 (not (contains!6966 Nil!26723 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208700 () Bool)

(declare-fun c!118894 () Bool)

(assert (=> b!1208700 (= c!118894 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548545))))

(assert (=> b!1208700 (= e!686495 e!686498)))

(declare-fun res!803485 () Bool)

(assert (=> start!100984 (=> (not res!803485) (not e!686488))))

(assert (=> start!100984 (= res!803485 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38238 _keys!1208))))))

(assert (=> start!100984 e!686488))

(assert (=> start!100984 tp_is_empty!30687))

(declare-fun array_inv!28624 (array!78134) Bool)

(assert (=> start!100984 (array_inv!28624 _keys!1208)))

(assert (=> start!100984 true))

(assert (=> start!100984 tp!90963))

(declare-fun array_inv!28625 (array!78136) Bool)

(assert (=> start!100984 (and (array_inv!28625 _values!996) e!686500)))

(declare-fun b!1208680 () Bool)

(declare-fun res!803479 () Bool)

(assert (=> b!1208680 (=> (not res!803479) (not e!686488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1208680 (= res!803479 (validKeyInArray!0 k0!934))))

(declare-fun b!1208701 () Bool)

(declare-fun res!803476 () Bool)

(assert (=> b!1208701 (=> (not res!803476) (not e!686488))))

(assert (=> b!1208701 (= res!803476 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38238 _keys!1208))))))

(declare-fun b!1208702 () Bool)

(assert (=> b!1208702 (= e!686497 e!686501)))

(declare-fun res!803488 () Bool)

(assert (=> b!1208702 (=> res!803488 e!686501)))

(assert (=> b!1208702 (= res!803488 (or (bvsge (size!38238 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)) (bvsge from!1455 (size!38238 _keys!1208))))))

(assert (=> b!1208702 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26723)))

(declare-fun lt!548543 () Unit!39989)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78134 (_ BitVec 32) (_ BitVec 32)) Unit!39989)

(assert (=> b!1208702 (= lt!548543 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1208702 e!686485))

(declare-fun res!803484 () Bool)

(assert (=> b!1208702 (=> (not res!803484) (not e!686485))))

(assert (=> b!1208702 (= res!803484 e!686496)))

(declare-fun c!118890 () Bool)

(assert (=> b!1208702 (= c!118890 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548546 () Unit!39989)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!587 (array!78134 array!78136 (_ BitVec 32) (_ BitVec 32) V!46043 V!46043 (_ BitVec 64) (_ BitVec 32) Int) Unit!39989)

(assert (=> b!1208702 (= lt!548546 (lemmaListMapContainsThenArrayContainsFrom!587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548554 () Unit!39989)

(assert (=> b!1208702 (= lt!548554 e!686493)))

(assert (=> b!1208702 (= c!118892 (and (not lt!548545) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1208702 (= lt!548545 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1208703 () Bool)

(assert (=> b!1208703 (= e!686493 e!686495)))

(declare-fun c!118891 () Bool)

(assert (=> b!1208703 (= c!118891 (and (not lt!548545) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!59215 () Bool)

(assert (=> bm!59215 (= call!59218 (addStillContains!1050 (ite c!118892 lt!548544 lt!548550) (ite c!118892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118891 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118892 minValue!944 (ite c!118891 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!59216 () Bool)

(assert (=> bm!59216 (= call!59217 call!59218)))

(declare-fun bm!59217 () Bool)

(assert (=> bm!59217 (= call!59215 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208704 () Bool)

(declare-fun lt!548547 () Unit!39989)

(assert (=> b!1208704 (= e!686498 lt!548547)))

(assert (=> b!1208704 (= lt!548547 call!59217)))

(assert (=> b!1208704 call!59214))

(declare-fun bm!59218 () Bool)

(assert (=> bm!59218 (= call!59220 (+!3985 (ite c!118892 lt!548544 lt!548550) (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapIsEmpty!47896 () Bool)

(assert (=> mapIsEmpty!47896 mapRes!47896))

(declare-fun b!1208705 () Bool)

(declare-fun e!686494 () Bool)

(assert (=> b!1208705 (= e!686494 tp_is_empty!30687)))

(declare-fun mapNonEmpty!47896 () Bool)

(declare-fun tp!90962 () Bool)

(assert (=> mapNonEmpty!47896 (= mapRes!47896 (and tp!90962 e!686494))))

(declare-fun mapRest!47896 () (Array (_ BitVec 32) ValueCell!14634))

(declare-fun mapValue!47896 () ValueCell!14634)

(declare-fun mapKey!47896 () (_ BitVec 32))

(assert (=> mapNonEmpty!47896 (= (arr!37702 _values!996) (store mapRest!47896 mapKey!47896 mapValue!47896))))

(assert (= (and start!100984 res!803485) b!1208696))

(assert (= (and b!1208696 res!803483) b!1208692))

(assert (= (and b!1208692 res!803482) b!1208697))

(assert (= (and b!1208697 res!803477) b!1208685))

(assert (= (and b!1208685 res!803486) b!1208701))

(assert (= (and b!1208701 res!803476) b!1208680))

(assert (= (and b!1208680 res!803479) b!1208676))

(assert (= (and b!1208676 res!803487) b!1208689))

(assert (= (and b!1208689 res!803478) b!1208691))

(assert (= (and b!1208691 res!803481) b!1208679))

(assert (= (and b!1208679 (not res!803490)) b!1208682))

(assert (= (and b!1208682 (not res!803474)) b!1208688))

(assert (= (and b!1208688 c!118893) b!1208678))

(assert (= (and b!1208688 (not c!118893)) b!1208694))

(assert (= (or b!1208678 b!1208694) bm!59217))

(assert (= (or b!1208678 b!1208694) bm!59214))

(assert (= (and b!1208688 (not res!803480)) b!1208683))

(assert (= (and b!1208683 (not res!803491)) b!1208702))

(assert (= (and b!1208702 c!118892) b!1208690))

(assert (= (and b!1208702 (not c!118892)) b!1208703))

(assert (= (and b!1208703 c!118891) b!1208675))

(assert (= (and b!1208703 (not c!118891)) b!1208700))

(assert (= (and b!1208700 c!118894) b!1208704))

(assert (= (and b!1208700 (not c!118894)) b!1208687))

(assert (= (or b!1208675 b!1208704) bm!59216))

(assert (= (or b!1208675 b!1208704) bm!59213))

(assert (= (or b!1208675 b!1208704) bm!59211))

(assert (= (or b!1208690 bm!59211) bm!59212))

(assert (= (or b!1208690 bm!59216) bm!59215))

(assert (= (or b!1208690 bm!59213) bm!59218))

(assert (= (and b!1208702 c!118890) b!1208686))

(assert (= (and b!1208702 (not c!118890)) b!1208684))

(assert (= (and b!1208702 res!803484) b!1208695))

(assert (= (and b!1208702 (not res!803488)) b!1208693))

(assert (= (and b!1208693 (not res!803475)) b!1208698))

(assert (= (and b!1208698 res!803489) b!1208699))

(assert (= (and b!1208681 condMapEmpty!47896) mapIsEmpty!47896))

(assert (= (and b!1208681 (not condMapEmpty!47896)) mapNonEmpty!47896))

(get-info :version)

(assert (= (and mapNonEmpty!47896 ((_ is ValueCellFull!14634) mapValue!47896)) b!1208705))

(assert (= (and b!1208681 ((_ is ValueCellFull!14634) mapDefault!47896)) b!1208677))

(assert (= start!100984 b!1208681))

(declare-fun b_lambda!21555 () Bool)

(assert (=> (not b_lambda!21555) (not b!1208682)))

(declare-fun t!39694 () Bool)

(declare-fun tb!10791 () Bool)

(assert (=> (and start!100984 (= defaultEntry!1004 defaultEntry!1004) t!39694) tb!10791))

(declare-fun result!22165 () Bool)

(assert (=> tb!10791 (= result!22165 tp_is_empty!30687)))

(assert (=> b!1208682 t!39694))

(declare-fun b_and!43041 () Bool)

(assert (= b_and!43039 (and (=> t!39694 result!22165) b_and!43041)))

(declare-fun m!1114505 () Bool)

(assert (=> bm!59217 m!1114505))

(declare-fun m!1114507 () Bool)

(assert (=> b!1208689 m!1114507))

(declare-fun m!1114509 () Bool)

(assert (=> b!1208689 m!1114509))

(declare-fun m!1114511 () Bool)

(assert (=> b!1208683 m!1114511))

(declare-fun m!1114513 () Bool)

(assert (=> b!1208683 m!1114513))

(declare-fun m!1114515 () Bool)

(assert (=> bm!59215 m!1114515))

(declare-fun m!1114517 () Bool)

(assert (=> b!1208698 m!1114517))

(declare-fun m!1114519 () Bool)

(assert (=> b!1208691 m!1114519))

(declare-fun m!1114521 () Bool)

(assert (=> b!1208679 m!1114521))

(declare-fun m!1114523 () Bool)

(assert (=> b!1208679 m!1114523))

(declare-fun m!1114525 () Bool)

(assert (=> b!1208682 m!1114525))

(declare-fun m!1114527 () Bool)

(assert (=> b!1208682 m!1114527))

(declare-fun m!1114529 () Bool)

(assert (=> b!1208682 m!1114529))

(declare-fun m!1114531 () Bool)

(assert (=> b!1208682 m!1114531))

(declare-fun m!1114533 () Bool)

(assert (=> b!1208693 m!1114533))

(declare-fun m!1114535 () Bool)

(assert (=> b!1208685 m!1114535))

(declare-fun m!1114537 () Bool)

(assert (=> b!1208695 m!1114537))

(declare-fun m!1114539 () Bool)

(assert (=> b!1208702 m!1114539))

(declare-fun m!1114541 () Bool)

(assert (=> b!1208702 m!1114541))

(declare-fun m!1114543 () Bool)

(assert (=> b!1208702 m!1114543))

(declare-fun m!1114545 () Bool)

(assert (=> b!1208696 m!1114545))

(declare-fun m!1114547 () Bool)

(assert (=> bm!59218 m!1114547))

(declare-fun m!1114549 () Bool)

(assert (=> b!1208697 m!1114549))

(assert (=> b!1208686 m!1114537))

(declare-fun m!1114551 () Bool)

(assert (=> start!100984 m!1114551))

(declare-fun m!1114553 () Bool)

(assert (=> start!100984 m!1114553))

(declare-fun m!1114555 () Bool)

(assert (=> bm!59212 m!1114555))

(declare-fun m!1114557 () Bool)

(assert (=> mapNonEmpty!47896 m!1114557))

(declare-fun m!1114559 () Bool)

(assert (=> b!1208690 m!1114559))

(declare-fun m!1114561 () Bool)

(assert (=> b!1208690 m!1114561))

(declare-fun m!1114563 () Bool)

(assert (=> b!1208690 m!1114563))

(assert (=> bm!59214 m!1114513))

(declare-fun m!1114565 () Bool)

(assert (=> b!1208678 m!1114565))

(declare-fun m!1114567 () Bool)

(assert (=> b!1208680 m!1114567))

(declare-fun m!1114569 () Bool)

(assert (=> b!1208676 m!1114569))

(declare-fun m!1114571 () Bool)

(assert (=> b!1208699 m!1114571))

(declare-fun m!1114573 () Bool)

(assert (=> b!1208688 m!1114573))

(declare-fun m!1114575 () Bool)

(assert (=> b!1208688 m!1114575))

(check-sat (not b!1208683) (not b_next!25983) (not b!1208698) (not b!1208690) (not b!1208691) (not b_lambda!21555) (not bm!59215) (not b!1208680) (not b!1208695) (not b!1208699) (not b!1208697) (not b!1208689) (not mapNonEmpty!47896) (not bm!59217) (not b!1208696) (not start!100984) (not b!1208688) (not b!1208678) (not b!1208682) b_and!43041 (not bm!59214) (not b!1208679) (not b!1208685) (not bm!59218) (not b!1208702) tp_is_empty!30687 (not b!1208693) (not b!1208686) (not bm!59212))
(check-sat b_and!43041 (not b_next!25983))
(get-model)

(declare-fun b_lambda!21559 () Bool)

(assert (= b_lambda!21555 (or (and start!100984 b_free!25983) b_lambda!21559)))

(check-sat (not b!1208683) (not b_next!25983) (not b!1208698) (not b_lambda!21559) (not b!1208690) (not b!1208691) (not bm!59215) (not b!1208680) (not b!1208695) (not b!1208699) (not b!1208697) (not b!1208689) (not mapNonEmpty!47896) (not bm!59217) (not b!1208696) (not start!100984) (not b!1208688) (not b!1208678) (not b!1208682) b_and!43041 (not bm!59214) (not b!1208679) (not b!1208685) (not bm!59218) (not b!1208702) tp_is_empty!30687 (not b!1208693) (not b!1208686) (not bm!59212))
(check-sat b_and!43041 (not b_next!25983))
(get-model)

(declare-fun b!1208827 () Bool)

(declare-fun e!686573 () Bool)

(declare-fun lt!548622 () ListLongMap!17885)

(assert (=> b!1208827 (= e!686573 (= lt!548622 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208828 () Bool)

(declare-fun e!686570 () Bool)

(assert (=> b!1208828 (= e!686570 e!686573)))

(declare-fun c!118921 () Bool)

(assert (=> b!1208828 (= c!118921 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(declare-fun b!1208829 () Bool)

(declare-fun isEmpty!994 (ListLongMap!17885) Bool)

(assert (=> b!1208829 (= e!686573 (isEmpty!994 lt!548622))))

(declare-fun b!1208830 () Bool)

(assert (=> b!1208830 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(assert (=> b!1208830 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38239 _values!996)))))

(declare-fun e!686576 () Bool)

(declare-fun apply!1002 (ListLongMap!17885 (_ BitVec 64)) V!46043)

(declare-fun get!19256 (ValueCell!14634 V!46043) V!46043)

(assert (=> b!1208830 (= e!686576 (= (apply!1002 lt!548622 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19256 (select (arr!37702 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133207 () Bool)

(declare-fun e!686571 () Bool)

(assert (=> d!133207 e!686571))

(declare-fun res!803555 () Bool)

(assert (=> d!133207 (=> (not res!803555) (not e!686571))))

(assert (=> d!133207 (= res!803555 (not (contains!6965 lt!548622 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!686574 () ListLongMap!17885)

(assert (=> d!133207 (= lt!548622 e!686574)))

(declare-fun c!118919 () Bool)

(assert (=> d!133207 (= c!118919 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(assert (=> d!133207 (validMask!0 mask!1564)))

(assert (=> d!133207 (= (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548622)))

(declare-fun b!1208831 () Bool)

(declare-fun e!686575 () ListLongMap!17885)

(assert (=> b!1208831 (= e!686574 e!686575)))

(declare-fun c!118920 () Bool)

(assert (=> b!1208831 (= c!118920 (validKeyInArray!0 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun bm!59245 () Bool)

(declare-fun call!59248 () ListLongMap!17885)

(assert (=> bm!59245 (= call!59248 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1208832 () Bool)

(assert (=> b!1208832 (= e!686574 (ListLongMap!17886 Nil!26722))))

(declare-fun b!1208833 () Bool)

(assert (=> b!1208833 (= e!686570 e!686576)))

(assert (=> b!1208833 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(declare-fun res!803557 () Bool)

(assert (=> b!1208833 (= res!803557 (contains!6965 lt!548622 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208833 (=> (not res!803557) (not e!686576))))

(declare-fun b!1208834 () Bool)

(declare-fun res!803556 () Bool)

(assert (=> b!1208834 (=> (not res!803556) (not e!686571))))

(assert (=> b!1208834 (= res!803556 (not (contains!6965 lt!548622 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208835 () Bool)

(assert (=> b!1208835 (= e!686571 e!686570)))

(declare-fun c!118918 () Bool)

(declare-fun e!686572 () Bool)

(assert (=> b!1208835 (= c!118918 e!686572)))

(declare-fun res!803554 () Bool)

(assert (=> b!1208835 (=> (not res!803554) (not e!686572))))

(assert (=> b!1208835 (= res!803554 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(declare-fun b!1208836 () Bool)

(assert (=> b!1208836 (= e!686572 (validKeyInArray!0 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208836 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1208837 () Bool)

(assert (=> b!1208837 (= e!686575 call!59248)))

(declare-fun b!1208838 () Bool)

(declare-fun lt!548619 () Unit!39989)

(declare-fun lt!548621 () Unit!39989)

(assert (=> b!1208838 (= lt!548619 lt!548621)))

(declare-fun lt!548623 () (_ BitVec 64))

(declare-fun lt!548620 () V!46043)

(declare-fun lt!548618 () ListLongMap!17885)

(declare-fun lt!548617 () (_ BitVec 64))

(assert (=> b!1208838 (not (contains!6965 (+!3985 lt!548618 (tuple2!19905 lt!548623 lt!548620)) lt!548617))))

(declare-fun addStillNotContains!297 (ListLongMap!17885 (_ BitVec 64) V!46043 (_ BitVec 64)) Unit!39989)

(assert (=> b!1208838 (= lt!548621 (addStillNotContains!297 lt!548618 lt!548623 lt!548620 lt!548617))))

(assert (=> b!1208838 (= lt!548617 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208838 (= lt!548620 (get!19256 (select (arr!37702 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208838 (= lt!548623 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1208838 (= lt!548618 call!59248)))

(assert (=> b!1208838 (= e!686575 (+!3985 call!59248 (tuple2!19905 (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19256 (select (arr!37702 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133207 c!118919) b!1208832))

(assert (= (and d!133207 (not c!118919)) b!1208831))

(assert (= (and b!1208831 c!118920) b!1208838))

(assert (= (and b!1208831 (not c!118920)) b!1208837))

(assert (= (or b!1208838 b!1208837) bm!59245))

(assert (= (and d!133207 res!803555) b!1208834))

(assert (= (and b!1208834 res!803556) b!1208835))

(assert (= (and b!1208835 res!803554) b!1208836))

(assert (= (and b!1208835 c!118918) b!1208833))

(assert (= (and b!1208835 (not c!118918)) b!1208828))

(assert (= (and b!1208833 res!803557) b!1208830))

(assert (= (and b!1208828 c!118921) b!1208827))

(assert (= (and b!1208828 (not c!118921)) b!1208829))

(declare-fun b_lambda!21561 () Bool)

(assert (=> (not b_lambda!21561) (not b!1208830)))

(assert (=> b!1208830 t!39694))

(declare-fun b_and!43047 () Bool)

(assert (= b_and!43041 (and (=> t!39694 result!22165) b_and!43047)))

(declare-fun b_lambda!21563 () Bool)

(assert (=> (not b_lambda!21563) (not b!1208838)))

(assert (=> b!1208838 t!39694))

(declare-fun b_and!43049 () Bool)

(assert (= b_and!43047 (and (=> t!39694 result!22165) b_and!43049)))

(declare-fun m!1114649 () Bool)

(assert (=> bm!59245 m!1114649))

(declare-fun m!1114651 () Bool)

(assert (=> b!1208834 m!1114651))

(declare-fun m!1114653 () Bool)

(assert (=> b!1208838 m!1114653))

(assert (=> b!1208838 m!1114527))

(declare-fun m!1114655 () Bool)

(assert (=> b!1208838 m!1114655))

(declare-fun m!1114657 () Bool)

(assert (=> b!1208838 m!1114657))

(declare-fun m!1114659 () Bool)

(assert (=> b!1208838 m!1114659))

(assert (=> b!1208838 m!1114527))

(declare-fun m!1114661 () Bool)

(assert (=> b!1208838 m!1114661))

(assert (=> b!1208838 m!1114653))

(declare-fun m!1114663 () Bool)

(assert (=> b!1208838 m!1114663))

(assert (=> b!1208838 m!1114661))

(declare-fun m!1114665 () Bool)

(assert (=> b!1208838 m!1114665))

(assert (=> b!1208827 m!1114649))

(assert (=> b!1208830 m!1114653))

(assert (=> b!1208830 m!1114527))

(assert (=> b!1208830 m!1114655))

(assert (=> b!1208830 m!1114659))

(assert (=> b!1208830 m!1114527))

(assert (=> b!1208830 m!1114653))

(assert (=> b!1208830 m!1114659))

(declare-fun m!1114667 () Bool)

(assert (=> b!1208830 m!1114667))

(declare-fun m!1114669 () Bool)

(assert (=> d!133207 m!1114669))

(assert (=> d!133207 m!1114545))

(assert (=> b!1208836 m!1114659))

(assert (=> b!1208836 m!1114659))

(declare-fun m!1114671 () Bool)

(assert (=> b!1208836 m!1114671))

(declare-fun m!1114673 () Bool)

(assert (=> b!1208829 m!1114673))

(assert (=> b!1208831 m!1114659))

(assert (=> b!1208831 m!1114659))

(assert (=> b!1208831 m!1114671))

(assert (=> b!1208833 m!1114659))

(assert (=> b!1208833 m!1114659))

(declare-fun m!1114675 () Bool)

(assert (=> b!1208833 m!1114675))

(assert (=> bm!59214 d!133207))

(declare-fun d!133209 () Bool)

(assert (=> d!133209 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1208680 d!133209))

(declare-fun d!133211 () Bool)

(declare-fun res!803562 () Bool)

(declare-fun e!686581 () Bool)

(assert (=> d!133211 (=> res!803562 e!686581)))

(assert (=> d!133211 (= res!803562 (= (select (arr!37701 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133211 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!686581)))

(declare-fun b!1208843 () Bool)

(declare-fun e!686582 () Bool)

(assert (=> b!1208843 (= e!686581 e!686582)))

(declare-fun res!803563 () Bool)

(assert (=> b!1208843 (=> (not res!803563) (not e!686582))))

(assert (=> b!1208843 (= res!803563 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38238 _keys!1208)))))

(declare-fun b!1208844 () Bool)

(assert (=> b!1208844 (= e!686582 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133211 (not res!803562)) b!1208843))

(assert (= (and b!1208843 res!803563) b!1208844))

(declare-fun m!1114677 () Bool)

(assert (=> d!133211 m!1114677))

(declare-fun m!1114679 () Bool)

(assert (=> b!1208844 m!1114679))

(assert (=> b!1208679 d!133211))

(declare-fun d!133213 () Bool)

(assert (=> d!133213 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548626 () Unit!39989)

(declare-fun choose!13 (array!78134 (_ BitVec 64) (_ BitVec 32)) Unit!39989)

(assert (=> d!133213 (= lt!548626 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133213 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133213 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!548626)))

(declare-fun bs!34160 () Bool)

(assert (= bs!34160 d!133213))

(assert (=> bs!34160 m!1114521))

(declare-fun m!1114681 () Bool)

(assert (=> bs!34160 m!1114681))

(assert (=> b!1208679 d!133213))

(declare-fun d!133215 () Bool)

(declare-fun lt!548629 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!550 (List!26726) (InoxSet (_ BitVec 64)))

(assert (=> d!133215 (= lt!548629 (select (content!550 Nil!26723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!686588 () Bool)

(assert (=> d!133215 (= lt!548629 e!686588)))

(declare-fun res!803569 () Bool)

(assert (=> d!133215 (=> (not res!803569) (not e!686588))))

(assert (=> d!133215 (= res!803569 ((_ is Cons!26722) Nil!26723))))

(assert (=> d!133215 (= (contains!6966 Nil!26723 #b0000000000000000000000000000000000000000000000000000000000000000) lt!548629)))

(declare-fun b!1208849 () Bool)

(declare-fun e!686587 () Bool)

(assert (=> b!1208849 (= e!686588 e!686587)))

(declare-fun res!803568 () Bool)

(assert (=> b!1208849 (=> res!803568 e!686587)))

(assert (=> b!1208849 (= res!803568 (= (h!27931 Nil!26723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1208850 () Bool)

(assert (=> b!1208850 (= e!686587 (contains!6966 (t!39696 Nil!26723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133215 res!803569) b!1208849))

(assert (= (and b!1208849 (not res!803568)) b!1208850))

(declare-fun m!1114683 () Bool)

(assert (=> d!133215 m!1114683))

(declare-fun m!1114685 () Bool)

(assert (=> d!133215 m!1114685))

(declare-fun m!1114687 () Bool)

(assert (=> b!1208850 m!1114687))

(assert (=> b!1208698 d!133215))

(declare-fun d!133217 () Bool)

(declare-fun res!803575 () Bool)

(declare-fun e!686597 () Bool)

(assert (=> d!133217 (=> res!803575 e!686597)))

(assert (=> d!133217 (= res!803575 (bvsge #b00000000000000000000000000000000 (size!38238 _keys!1208)))))

(assert (=> d!133217 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!686597)))

(declare-fun b!1208859 () Bool)

(declare-fun e!686596 () Bool)

(declare-fun call!59251 () Bool)

(assert (=> b!1208859 (= e!686596 call!59251)))

(declare-fun b!1208860 () Bool)

(declare-fun e!686595 () Bool)

(assert (=> b!1208860 (= e!686596 e!686595)))

(declare-fun lt!548636 () (_ BitVec 64))

(assert (=> b!1208860 (= lt!548636 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!548638 () Unit!39989)

(assert (=> b!1208860 (= lt!548638 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!548636 #b00000000000000000000000000000000))))

(assert (=> b!1208860 (arrayContainsKey!0 _keys!1208 lt!548636 #b00000000000000000000000000000000)))

(declare-fun lt!548637 () Unit!39989)

(assert (=> b!1208860 (= lt!548637 lt!548638)))

(declare-fun res!803574 () Bool)

(declare-datatypes ((SeekEntryResult!9937 0))(
  ( (MissingZero!9937 (index!42118 (_ BitVec 32))) (Found!9937 (index!42119 (_ BitVec 32))) (Intermediate!9937 (undefined!10749 Bool) (index!42120 (_ BitVec 32)) (x!106642 (_ BitVec 32))) (Undefined!9937) (MissingVacant!9937 (index!42121 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78134 (_ BitVec 32)) SeekEntryResult!9937)

(assert (=> b!1208860 (= res!803574 (= (seekEntryOrOpen!0 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9937 #b00000000000000000000000000000000)))))

(assert (=> b!1208860 (=> (not res!803574) (not e!686595))))

(declare-fun bm!59248 () Bool)

(assert (=> bm!59248 (= call!59251 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1208861 () Bool)

(assert (=> b!1208861 (= e!686597 e!686596)))

(declare-fun c!118924 () Bool)

(assert (=> b!1208861 (= c!118924 (validKeyInArray!0 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208862 () Bool)

(assert (=> b!1208862 (= e!686595 call!59251)))

(assert (= (and d!133217 (not res!803575)) b!1208861))

(assert (= (and b!1208861 c!118924) b!1208860))

(assert (= (and b!1208861 (not c!118924)) b!1208859))

(assert (= (and b!1208860 res!803574) b!1208862))

(assert (= (or b!1208862 b!1208859) bm!59248))

(assert (=> b!1208860 m!1114677))

(declare-fun m!1114689 () Bool)

(assert (=> b!1208860 m!1114689))

(declare-fun m!1114691 () Bool)

(assert (=> b!1208860 m!1114691))

(assert (=> b!1208860 m!1114677))

(declare-fun m!1114693 () Bool)

(assert (=> b!1208860 m!1114693))

(declare-fun m!1114695 () Bool)

(assert (=> bm!59248 m!1114695))

(assert (=> b!1208861 m!1114677))

(assert (=> b!1208861 m!1114677))

(declare-fun m!1114697 () Bool)

(assert (=> b!1208861 m!1114697))

(assert (=> b!1208697 d!133217))

(declare-fun d!133219 () Bool)

(declare-fun lt!548641 () ListLongMap!17885)

(assert (=> d!133219 (not (contains!6965 lt!548641 k0!934))))

(declare-fun removeStrictlySorted!101 (List!26725 (_ BitVec 64)) List!26725)

(assert (=> d!133219 (= lt!548641 (ListLongMap!17886 (removeStrictlySorted!101 (toList!8958 call!59221) k0!934)))))

(assert (=> d!133219 (= (-!1862 call!59221 k0!934) lt!548641)))

(declare-fun bs!34161 () Bool)

(assert (= bs!34161 d!133219))

(declare-fun m!1114699 () Bool)

(assert (=> bs!34161 m!1114699))

(declare-fun m!1114701 () Bool)

(assert (=> bs!34161 m!1114701))

(assert (=> b!1208678 d!133219))

(declare-fun b!1208863 () Bool)

(declare-fun e!686601 () Bool)

(declare-fun lt!548647 () ListLongMap!17885)

(assert (=> b!1208863 (= e!686601 (= lt!548647 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208864 () Bool)

(declare-fun e!686598 () Bool)

(assert (=> b!1208864 (= e!686598 e!686601)))

(declare-fun c!118928 () Bool)

(assert (=> b!1208864 (= c!118928 (bvslt from!1455 (size!38238 lt!548541)))))

(declare-fun b!1208865 () Bool)

(assert (=> b!1208865 (= e!686601 (isEmpty!994 lt!548647))))

(declare-fun b!1208866 () Bool)

(assert (=> b!1208866 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38238 lt!548541)))))

(assert (=> b!1208866 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38239 lt!548549)))))

(declare-fun e!686604 () Bool)

(assert (=> b!1208866 (= e!686604 (= (apply!1002 lt!548647 (select (arr!37701 lt!548541) from!1455)) (get!19256 (select (arr!37702 lt!548549) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133221 () Bool)

(declare-fun e!686599 () Bool)

(assert (=> d!133221 e!686599))

(declare-fun res!803577 () Bool)

(assert (=> d!133221 (=> (not res!803577) (not e!686599))))

(assert (=> d!133221 (= res!803577 (not (contains!6965 lt!548647 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!686602 () ListLongMap!17885)

(assert (=> d!133221 (= lt!548647 e!686602)))

(declare-fun c!118926 () Bool)

(assert (=> d!133221 (= c!118926 (bvsge from!1455 (size!38238 lt!548541)))))

(assert (=> d!133221 (validMask!0 mask!1564)))

(assert (=> d!133221 (= (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!548647)))

(declare-fun b!1208867 () Bool)

(declare-fun e!686603 () ListLongMap!17885)

(assert (=> b!1208867 (= e!686602 e!686603)))

(declare-fun c!118927 () Bool)

(assert (=> b!1208867 (= c!118927 (validKeyInArray!0 (select (arr!37701 lt!548541) from!1455)))))

(declare-fun bm!59249 () Bool)

(declare-fun call!59252 () ListLongMap!17885)

(assert (=> bm!59249 (= call!59252 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1208868 () Bool)

(assert (=> b!1208868 (= e!686602 (ListLongMap!17886 Nil!26722))))

(declare-fun b!1208869 () Bool)

(assert (=> b!1208869 (= e!686598 e!686604)))

(assert (=> b!1208869 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38238 lt!548541)))))

(declare-fun res!803579 () Bool)

(assert (=> b!1208869 (= res!803579 (contains!6965 lt!548647 (select (arr!37701 lt!548541) from!1455)))))

(assert (=> b!1208869 (=> (not res!803579) (not e!686604))))

(declare-fun b!1208870 () Bool)

(declare-fun res!803578 () Bool)

(assert (=> b!1208870 (=> (not res!803578) (not e!686599))))

(assert (=> b!1208870 (= res!803578 (not (contains!6965 lt!548647 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208871 () Bool)

(assert (=> b!1208871 (= e!686599 e!686598)))

(declare-fun c!118925 () Bool)

(declare-fun e!686600 () Bool)

(assert (=> b!1208871 (= c!118925 e!686600)))

(declare-fun res!803576 () Bool)

(assert (=> b!1208871 (=> (not res!803576) (not e!686600))))

(assert (=> b!1208871 (= res!803576 (bvslt from!1455 (size!38238 lt!548541)))))

(declare-fun b!1208872 () Bool)

(assert (=> b!1208872 (= e!686600 (validKeyInArray!0 (select (arr!37701 lt!548541) from!1455)))))

(assert (=> b!1208872 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1208873 () Bool)

(assert (=> b!1208873 (= e!686603 call!59252)))

(declare-fun b!1208874 () Bool)

(declare-fun lt!548644 () Unit!39989)

(declare-fun lt!548646 () Unit!39989)

(assert (=> b!1208874 (= lt!548644 lt!548646)))

(declare-fun lt!548643 () ListLongMap!17885)

(declare-fun lt!548645 () V!46043)

(declare-fun lt!548642 () (_ BitVec 64))

(declare-fun lt!548648 () (_ BitVec 64))

(assert (=> b!1208874 (not (contains!6965 (+!3985 lt!548643 (tuple2!19905 lt!548648 lt!548645)) lt!548642))))

(assert (=> b!1208874 (= lt!548646 (addStillNotContains!297 lt!548643 lt!548648 lt!548645 lt!548642))))

(assert (=> b!1208874 (= lt!548642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208874 (= lt!548645 (get!19256 (select (arr!37702 lt!548549) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208874 (= lt!548648 (select (arr!37701 lt!548541) from!1455))))

(assert (=> b!1208874 (= lt!548643 call!59252)))

(assert (=> b!1208874 (= e!686603 (+!3985 call!59252 (tuple2!19905 (select (arr!37701 lt!548541) from!1455) (get!19256 (select (arr!37702 lt!548549) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133221 c!118926) b!1208868))

(assert (= (and d!133221 (not c!118926)) b!1208867))

(assert (= (and b!1208867 c!118927) b!1208874))

(assert (= (and b!1208867 (not c!118927)) b!1208873))

(assert (= (or b!1208874 b!1208873) bm!59249))

(assert (= (and d!133221 res!803577) b!1208870))

(assert (= (and b!1208870 res!803578) b!1208871))

(assert (= (and b!1208871 res!803576) b!1208872))

(assert (= (and b!1208871 c!118925) b!1208869))

(assert (= (and b!1208871 (not c!118925)) b!1208864))

(assert (= (and b!1208869 res!803579) b!1208866))

(assert (= (and b!1208864 c!118928) b!1208863))

(assert (= (and b!1208864 (not c!118928)) b!1208865))

(declare-fun b_lambda!21565 () Bool)

(assert (=> (not b_lambda!21565) (not b!1208866)))

(assert (=> b!1208866 t!39694))

(declare-fun b_and!43051 () Bool)

(assert (= b_and!43049 (and (=> t!39694 result!22165) b_and!43051)))

(declare-fun b_lambda!21567 () Bool)

(assert (=> (not b_lambda!21567) (not b!1208874)))

(assert (=> b!1208874 t!39694))

(declare-fun b_and!43053 () Bool)

(assert (= b_and!43051 (and (=> t!39694 result!22165) b_and!43053)))

(declare-fun m!1114703 () Bool)

(assert (=> bm!59249 m!1114703))

(declare-fun m!1114705 () Bool)

(assert (=> b!1208870 m!1114705))

(declare-fun m!1114707 () Bool)

(assert (=> b!1208874 m!1114707))

(assert (=> b!1208874 m!1114527))

(declare-fun m!1114709 () Bool)

(assert (=> b!1208874 m!1114709))

(declare-fun m!1114711 () Bool)

(assert (=> b!1208874 m!1114711))

(declare-fun m!1114713 () Bool)

(assert (=> b!1208874 m!1114713))

(assert (=> b!1208874 m!1114527))

(declare-fun m!1114715 () Bool)

(assert (=> b!1208874 m!1114715))

(assert (=> b!1208874 m!1114707))

(declare-fun m!1114717 () Bool)

(assert (=> b!1208874 m!1114717))

(assert (=> b!1208874 m!1114715))

(declare-fun m!1114719 () Bool)

(assert (=> b!1208874 m!1114719))

(assert (=> b!1208863 m!1114703))

(assert (=> b!1208866 m!1114707))

(assert (=> b!1208866 m!1114527))

(assert (=> b!1208866 m!1114709))

(assert (=> b!1208866 m!1114713))

(assert (=> b!1208866 m!1114527))

(assert (=> b!1208866 m!1114707))

(assert (=> b!1208866 m!1114713))

(declare-fun m!1114721 () Bool)

(assert (=> b!1208866 m!1114721))

(declare-fun m!1114723 () Bool)

(assert (=> d!133221 m!1114723))

(assert (=> d!133221 m!1114545))

(assert (=> b!1208872 m!1114713))

(assert (=> b!1208872 m!1114713))

(declare-fun m!1114725 () Bool)

(assert (=> b!1208872 m!1114725))

(declare-fun m!1114727 () Bool)

(assert (=> b!1208865 m!1114727))

(assert (=> b!1208867 m!1114713))

(assert (=> b!1208867 m!1114713))

(assert (=> b!1208867 m!1114725))

(assert (=> b!1208869 m!1114713))

(assert (=> b!1208869 m!1114713))

(declare-fun m!1114729 () Bool)

(assert (=> b!1208869 m!1114729))

(assert (=> b!1208682 d!133221))

(declare-fun lt!548654 () ListLongMap!17885)

(declare-fun e!686608 () Bool)

(declare-fun b!1208875 () Bool)

(assert (=> b!1208875 (= e!686608 (= lt!548654 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208876 () Bool)

(declare-fun e!686605 () Bool)

(assert (=> b!1208876 (= e!686605 e!686608)))

(declare-fun c!118932 () Bool)

(assert (=> b!1208876 (= c!118932 (bvslt from!1455 (size!38238 _keys!1208)))))

(declare-fun b!1208877 () Bool)

(assert (=> b!1208877 (= e!686608 (isEmpty!994 lt!548654))))

(declare-fun b!1208878 () Bool)

(assert (=> b!1208878 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38238 _keys!1208)))))

(assert (=> b!1208878 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38239 _values!996)))))

(declare-fun e!686611 () Bool)

(assert (=> b!1208878 (= e!686611 (= (apply!1002 lt!548654 (select (arr!37701 _keys!1208) from!1455)) (get!19256 (select (arr!37702 _values!996) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133223 () Bool)

(declare-fun e!686606 () Bool)

(assert (=> d!133223 e!686606))

(declare-fun res!803581 () Bool)

(assert (=> d!133223 (=> (not res!803581) (not e!686606))))

(assert (=> d!133223 (= res!803581 (not (contains!6965 lt!548654 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!686609 () ListLongMap!17885)

(assert (=> d!133223 (= lt!548654 e!686609)))

(declare-fun c!118930 () Bool)

(assert (=> d!133223 (= c!118930 (bvsge from!1455 (size!38238 _keys!1208)))))

(assert (=> d!133223 (validMask!0 mask!1564)))

(assert (=> d!133223 (= (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!548654)))

(declare-fun b!1208879 () Bool)

(declare-fun e!686610 () ListLongMap!17885)

(assert (=> b!1208879 (= e!686609 e!686610)))

(declare-fun c!118931 () Bool)

(assert (=> b!1208879 (= c!118931 (validKeyInArray!0 (select (arr!37701 _keys!1208) from!1455)))))

(declare-fun call!59253 () ListLongMap!17885)

(declare-fun bm!59250 () Bool)

(assert (=> bm!59250 (= call!59253 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1208880 () Bool)

(assert (=> b!1208880 (= e!686609 (ListLongMap!17886 Nil!26722))))

(declare-fun b!1208881 () Bool)

(assert (=> b!1208881 (= e!686605 e!686611)))

(assert (=> b!1208881 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38238 _keys!1208)))))

(declare-fun res!803583 () Bool)

(assert (=> b!1208881 (= res!803583 (contains!6965 lt!548654 (select (arr!37701 _keys!1208) from!1455)))))

(assert (=> b!1208881 (=> (not res!803583) (not e!686611))))

(declare-fun b!1208882 () Bool)

(declare-fun res!803582 () Bool)

(assert (=> b!1208882 (=> (not res!803582) (not e!686606))))

(assert (=> b!1208882 (= res!803582 (not (contains!6965 lt!548654 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208883 () Bool)

(assert (=> b!1208883 (= e!686606 e!686605)))

(declare-fun c!118929 () Bool)

(declare-fun e!686607 () Bool)

(assert (=> b!1208883 (= c!118929 e!686607)))

(declare-fun res!803580 () Bool)

(assert (=> b!1208883 (=> (not res!803580) (not e!686607))))

(assert (=> b!1208883 (= res!803580 (bvslt from!1455 (size!38238 _keys!1208)))))

(declare-fun b!1208884 () Bool)

(assert (=> b!1208884 (= e!686607 (validKeyInArray!0 (select (arr!37701 _keys!1208) from!1455)))))

(assert (=> b!1208884 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1208885 () Bool)

(assert (=> b!1208885 (= e!686610 call!59253)))

(declare-fun b!1208886 () Bool)

(declare-fun lt!548651 () Unit!39989)

(declare-fun lt!548653 () Unit!39989)

(assert (=> b!1208886 (= lt!548651 lt!548653)))

(declare-fun lt!548655 () (_ BitVec 64))

(declare-fun lt!548652 () V!46043)

(declare-fun lt!548649 () (_ BitVec 64))

(declare-fun lt!548650 () ListLongMap!17885)

(assert (=> b!1208886 (not (contains!6965 (+!3985 lt!548650 (tuple2!19905 lt!548655 lt!548652)) lt!548649))))

(assert (=> b!1208886 (= lt!548653 (addStillNotContains!297 lt!548650 lt!548655 lt!548652 lt!548649))))

(assert (=> b!1208886 (= lt!548649 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208886 (= lt!548652 (get!19256 (select (arr!37702 _values!996) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208886 (= lt!548655 (select (arr!37701 _keys!1208) from!1455))))

(assert (=> b!1208886 (= lt!548650 call!59253)))

(assert (=> b!1208886 (= e!686610 (+!3985 call!59253 (tuple2!19905 (select (arr!37701 _keys!1208) from!1455) (get!19256 (select (arr!37702 _values!996) from!1455) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133223 c!118930) b!1208880))

(assert (= (and d!133223 (not c!118930)) b!1208879))

(assert (= (and b!1208879 c!118931) b!1208886))

(assert (= (and b!1208879 (not c!118931)) b!1208885))

(assert (= (or b!1208886 b!1208885) bm!59250))

(assert (= (and d!133223 res!803581) b!1208882))

(assert (= (and b!1208882 res!803582) b!1208883))

(assert (= (and b!1208883 res!803580) b!1208884))

(assert (= (and b!1208883 c!118929) b!1208881))

(assert (= (and b!1208883 (not c!118929)) b!1208876))

(assert (= (and b!1208881 res!803583) b!1208878))

(assert (= (and b!1208876 c!118932) b!1208875))

(assert (= (and b!1208876 (not c!118932)) b!1208877))

(declare-fun b_lambda!21569 () Bool)

(assert (=> (not b_lambda!21569) (not b!1208878)))

(assert (=> b!1208878 t!39694))

(declare-fun b_and!43055 () Bool)

(assert (= b_and!43053 (and (=> t!39694 result!22165) b_and!43055)))

(declare-fun b_lambda!21571 () Bool)

(assert (=> (not b_lambda!21571) (not b!1208886)))

(assert (=> b!1208886 t!39694))

(declare-fun b_and!43057 () Bool)

(assert (= b_and!43055 (and (=> t!39694 result!22165) b_and!43057)))

(declare-fun m!1114731 () Bool)

(assert (=> bm!59250 m!1114731))

(declare-fun m!1114733 () Bool)

(assert (=> b!1208882 m!1114733))

(declare-fun m!1114735 () Bool)

(assert (=> b!1208886 m!1114735))

(assert (=> b!1208886 m!1114527))

(declare-fun m!1114737 () Bool)

(assert (=> b!1208886 m!1114737))

(declare-fun m!1114739 () Bool)

(assert (=> b!1208886 m!1114739))

(assert (=> b!1208886 m!1114573))

(assert (=> b!1208886 m!1114527))

(declare-fun m!1114741 () Bool)

(assert (=> b!1208886 m!1114741))

(assert (=> b!1208886 m!1114735))

(declare-fun m!1114743 () Bool)

(assert (=> b!1208886 m!1114743))

(assert (=> b!1208886 m!1114741))

(declare-fun m!1114745 () Bool)

(assert (=> b!1208886 m!1114745))

(assert (=> b!1208875 m!1114731))

(assert (=> b!1208878 m!1114735))

(assert (=> b!1208878 m!1114527))

(assert (=> b!1208878 m!1114737))

(assert (=> b!1208878 m!1114573))

(assert (=> b!1208878 m!1114527))

(assert (=> b!1208878 m!1114735))

(assert (=> b!1208878 m!1114573))

(declare-fun m!1114747 () Bool)

(assert (=> b!1208878 m!1114747))

(declare-fun m!1114749 () Bool)

(assert (=> d!133223 m!1114749))

(assert (=> d!133223 m!1114545))

(assert (=> b!1208884 m!1114573))

(assert (=> b!1208884 m!1114573))

(declare-fun m!1114751 () Bool)

(assert (=> b!1208884 m!1114751))

(declare-fun m!1114753 () Bool)

(assert (=> b!1208877 m!1114753))

(assert (=> b!1208879 m!1114573))

(assert (=> b!1208879 m!1114573))

(assert (=> b!1208879 m!1114751))

(assert (=> b!1208881 m!1114573))

(assert (=> b!1208881 m!1114573))

(declare-fun m!1114755 () Bool)

(assert (=> b!1208881 m!1114755))

(assert (=> b!1208682 d!133223))

(declare-fun d!133225 () Bool)

(declare-fun lt!548656 () Bool)

(assert (=> d!133225 (= lt!548656 (select (content!550 Nil!26723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!686613 () Bool)

(assert (=> d!133225 (= lt!548656 e!686613)))

(declare-fun res!803585 () Bool)

(assert (=> d!133225 (=> (not res!803585) (not e!686613))))

(assert (=> d!133225 (= res!803585 ((_ is Cons!26722) Nil!26723))))

(assert (=> d!133225 (= (contains!6966 Nil!26723 #b1000000000000000000000000000000000000000000000000000000000000000) lt!548656)))

(declare-fun b!1208887 () Bool)

(declare-fun e!686612 () Bool)

(assert (=> b!1208887 (= e!686613 e!686612)))

(declare-fun res!803584 () Bool)

(assert (=> b!1208887 (=> res!803584 e!686612)))

(assert (=> b!1208887 (= res!803584 (= (h!27931 Nil!26723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1208888 () Bool)

(assert (=> b!1208888 (= e!686612 (contains!6966 (t!39696 Nil!26723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133225 res!803585) b!1208887))

(assert (= (and b!1208887 (not res!803584)) b!1208888))

(assert (=> d!133225 m!1114683))

(declare-fun m!1114757 () Bool)

(assert (=> d!133225 m!1114757))

(declare-fun m!1114759 () Bool)

(assert (=> b!1208888 m!1114759))

(assert (=> b!1208699 d!133225))

(declare-fun d!133227 () Bool)

(declare-fun res!803590 () Bool)

(declare-fun e!686618 () Bool)

(assert (=> d!133227 (=> res!803590 e!686618)))

(assert (=> d!133227 (= res!803590 ((_ is Nil!26723) Nil!26723))))

(assert (=> d!133227 (= (noDuplicate!1647 Nil!26723) e!686618)))

(declare-fun b!1208893 () Bool)

(declare-fun e!686619 () Bool)

(assert (=> b!1208893 (= e!686618 e!686619)))

(declare-fun res!803591 () Bool)

(assert (=> b!1208893 (=> (not res!803591) (not e!686619))))

(assert (=> b!1208893 (= res!803591 (not (contains!6966 (t!39696 Nil!26723) (h!27931 Nil!26723))))))

(declare-fun b!1208894 () Bool)

(assert (=> b!1208894 (= e!686619 (noDuplicate!1647 (t!39696 Nil!26723)))))

(assert (= (and d!133227 (not res!803590)) b!1208893))

(assert (= (and b!1208893 res!803591) b!1208894))

(declare-fun m!1114761 () Bool)

(assert (=> b!1208893 m!1114761))

(declare-fun m!1114763 () Bool)

(assert (=> b!1208894 m!1114763))

(assert (=> b!1208693 d!133227))

(declare-fun d!133229 () Bool)

(assert (=> d!133229 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1208696 d!133229))

(declare-fun d!133231 () Bool)

(declare-fun res!803592 () Bool)

(declare-fun e!686620 () Bool)

(assert (=> d!133231 (=> res!803592 e!686620)))

(assert (=> d!133231 (= res!803592 (= (select (arr!37701 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133231 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!686620)))

(declare-fun b!1208895 () Bool)

(declare-fun e!686621 () Bool)

(assert (=> b!1208895 (= e!686620 e!686621)))

(declare-fun res!803593 () Bool)

(assert (=> b!1208895 (=> (not res!803593) (not e!686621))))

(assert (=> b!1208895 (= res!803593 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38238 _keys!1208)))))

(declare-fun b!1208896 () Bool)

(assert (=> b!1208896 (= e!686621 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133231 (not res!803592)) b!1208895))

(assert (= (and b!1208895 res!803593) b!1208896))

(assert (=> d!133231 m!1114659))

(declare-fun m!1114765 () Bool)

(assert (=> b!1208896 m!1114765))

(assert (=> b!1208695 d!133231))

(declare-fun d!133233 () Bool)

(assert (=> d!133233 (= (array_inv!28624 _keys!1208) (bvsge (size!38238 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100984 d!133233))

(declare-fun d!133235 () Bool)

(assert (=> d!133235 (= (array_inv!28625 _values!996) (bvsge (size!38239 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100984 d!133235))

(declare-fun d!133237 () Bool)

(declare-fun e!686624 () Bool)

(assert (=> d!133237 e!686624))

(declare-fun res!803599 () Bool)

(assert (=> d!133237 (=> (not res!803599) (not e!686624))))

(declare-fun lt!548667 () ListLongMap!17885)

(assert (=> d!133237 (= res!803599 (contains!6965 lt!548667 (_1!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!548668 () List!26725)

(assert (=> d!133237 (= lt!548667 (ListLongMap!17886 lt!548668))))

(declare-fun lt!548665 () Unit!39989)

(declare-fun lt!548666 () Unit!39989)

(assert (=> d!133237 (= lt!548665 lt!548666)))

(declare-datatypes ((Option!692 0))(
  ( (Some!691 (v!18053 V!46043)) (None!690) )
))
(declare-fun getValueByKey!641 (List!26725 (_ BitVec 64)) Option!692)

(assert (=> d!133237 (= (getValueByKey!641 lt!548668 (_1!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!691 (_2!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!316 (List!26725 (_ BitVec 64) V!46043) Unit!39989)

(assert (=> d!133237 (= lt!548666 (lemmaContainsTupThenGetReturnValue!316 lt!548668 (_1!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun insertStrictlySorted!408 (List!26725 (_ BitVec 64) V!46043) List!26725)

(assert (=> d!133237 (= lt!548668 (insertStrictlySorted!408 (toList!8958 (ite c!118892 lt!548544 lt!548550)) (_1!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!133237 (= (+!3985 (ite c!118892 lt!548544 lt!548550) (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!548667)))

(declare-fun b!1208901 () Bool)

(declare-fun res!803598 () Bool)

(assert (=> b!1208901 (=> (not res!803598) (not e!686624))))

(assert (=> b!1208901 (= res!803598 (= (getValueByKey!641 (toList!8958 lt!548667) (_1!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!691 (_2!9962 (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1208902 () Bool)

(declare-fun contains!6969 (List!26725 tuple2!19904) Bool)

(assert (=> b!1208902 (= e!686624 (contains!6969 (toList!8958 lt!548667) (ite c!118892 (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118891 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!133237 res!803599) b!1208901))

(assert (= (and b!1208901 res!803598) b!1208902))

(declare-fun m!1114767 () Bool)

(assert (=> d!133237 m!1114767))

(declare-fun m!1114769 () Bool)

(assert (=> d!133237 m!1114769))

(declare-fun m!1114771 () Bool)

(assert (=> d!133237 m!1114771))

(declare-fun m!1114773 () Bool)

(assert (=> d!133237 m!1114773))

(declare-fun m!1114775 () Bool)

(assert (=> b!1208901 m!1114775))

(declare-fun m!1114777 () Bool)

(assert (=> b!1208902 m!1114777))

(assert (=> bm!59218 d!133237))

(declare-fun d!133239 () Bool)

(declare-fun res!803601 () Bool)

(declare-fun e!686627 () Bool)

(assert (=> d!133239 (=> res!803601 e!686627)))

(assert (=> d!133239 (= res!803601 (bvsge #b00000000000000000000000000000000 (size!38238 lt!548541)))))

(assert (=> d!133239 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548541 mask!1564) e!686627)))

(declare-fun b!1208903 () Bool)

(declare-fun e!686626 () Bool)

(declare-fun call!59254 () Bool)

(assert (=> b!1208903 (= e!686626 call!59254)))

(declare-fun b!1208904 () Bool)

(declare-fun e!686625 () Bool)

(assert (=> b!1208904 (= e!686626 e!686625)))

(declare-fun lt!548669 () (_ BitVec 64))

(assert (=> b!1208904 (= lt!548669 (select (arr!37701 lt!548541) #b00000000000000000000000000000000))))

(declare-fun lt!548671 () Unit!39989)

(assert (=> b!1208904 (= lt!548671 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!548541 lt!548669 #b00000000000000000000000000000000))))

(assert (=> b!1208904 (arrayContainsKey!0 lt!548541 lt!548669 #b00000000000000000000000000000000)))

(declare-fun lt!548670 () Unit!39989)

(assert (=> b!1208904 (= lt!548670 lt!548671)))

(declare-fun res!803600 () Bool)

(assert (=> b!1208904 (= res!803600 (= (seekEntryOrOpen!0 (select (arr!37701 lt!548541) #b00000000000000000000000000000000) lt!548541 mask!1564) (Found!9937 #b00000000000000000000000000000000)))))

(assert (=> b!1208904 (=> (not res!803600) (not e!686625))))

(declare-fun bm!59251 () Bool)

(assert (=> bm!59251 (= call!59254 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!548541 mask!1564))))

(declare-fun b!1208905 () Bool)

(assert (=> b!1208905 (= e!686627 e!686626)))

(declare-fun c!118933 () Bool)

(assert (=> b!1208905 (= c!118933 (validKeyInArray!0 (select (arr!37701 lt!548541) #b00000000000000000000000000000000)))))

(declare-fun b!1208906 () Bool)

(assert (=> b!1208906 (= e!686625 call!59254)))

(assert (= (and d!133239 (not res!803601)) b!1208905))

(assert (= (and b!1208905 c!118933) b!1208904))

(assert (= (and b!1208905 (not c!118933)) b!1208903))

(assert (= (and b!1208904 res!803600) b!1208906))

(assert (= (or b!1208906 b!1208903) bm!59251))

(declare-fun m!1114779 () Bool)

(assert (=> b!1208904 m!1114779))

(declare-fun m!1114781 () Bool)

(assert (=> b!1208904 m!1114781))

(declare-fun m!1114783 () Bool)

(assert (=> b!1208904 m!1114783))

(assert (=> b!1208904 m!1114779))

(declare-fun m!1114785 () Bool)

(assert (=> b!1208904 m!1114785))

(declare-fun m!1114787 () Bool)

(assert (=> bm!59251 m!1114787))

(assert (=> b!1208905 m!1114779))

(assert (=> b!1208905 m!1114779))

(declare-fun m!1114789 () Bool)

(assert (=> b!1208905 m!1114789))

(assert (=> b!1208689 d!133239))

(declare-fun bm!59256 () Bool)

(declare-fun call!59259 () ListLongMap!17885)

(assert (=> bm!59256 (= call!59259 (getCurrentListMapNoExtraKeys!5365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208913 () Bool)

(declare-fun e!686633 () Bool)

(declare-fun call!59260 () ListLongMap!17885)

(assert (=> b!1208913 (= e!686633 (= call!59260 call!59259))))

(assert (=> b!1208913 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38239 _values!996)))))

(declare-fun d!133241 () Bool)

(declare-fun e!686632 () Bool)

(assert (=> d!133241 e!686632))

(declare-fun res!803604 () Bool)

(assert (=> d!133241 (=> (not res!803604) (not e!686632))))

(assert (=> d!133241 (= res!803604 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38238 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38238 _keys!1208))))))))

(declare-fun lt!548674 () Unit!39989)

(declare-fun choose!1817 (array!78134 array!78136 (_ BitVec 32) (_ BitVec 32) V!46043 V!46043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39989)

(assert (=> d!133241 (= lt!548674 (choose!1817 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133241 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 _keys!1208)))))

(assert (=> d!133241 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1067 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548674)))

(declare-fun b!1208914 () Bool)

(assert (=> b!1208914 (= e!686632 e!686633)))

(declare-fun c!118936 () Bool)

(assert (=> b!1208914 (= c!118936 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun bm!59257 () Bool)

(assert (=> bm!59257 (= call!59260 (getCurrentListMapNoExtraKeys!5365 (array!78135 (store (arr!37701 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38238 _keys!1208)) (array!78137 (store (arr!37702 _values!996) i!673 (ValueCellFull!14634 (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38239 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208915 () Bool)

(assert (=> b!1208915 (= e!686633 (= call!59260 (-!1862 call!59259 k0!934)))))

(assert (=> b!1208915 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38239 _values!996)))))

(assert (= (and d!133241 res!803604) b!1208914))

(assert (= (and b!1208914 c!118936) b!1208915))

(assert (= (and b!1208914 (not c!118936)) b!1208913))

(assert (= (or b!1208915 b!1208913) bm!59256))

(assert (= (or b!1208915 b!1208913) bm!59257))

(declare-fun b_lambda!21573 () Bool)

(assert (=> (not b_lambda!21573) (not bm!59257)))

(assert (=> bm!59257 t!39694))

(declare-fun b_and!43059 () Bool)

(assert (= b_and!43057 (and (=> t!39694 result!22165) b_and!43059)))

(assert (=> bm!59256 m!1114513))

(declare-fun m!1114791 () Bool)

(assert (=> d!133241 m!1114791))

(assert (=> bm!59257 m!1114509))

(assert (=> bm!59257 m!1114527))

(assert (=> bm!59257 m!1114529))

(declare-fun m!1114793 () Bool)

(assert (=> bm!59257 m!1114793))

(declare-fun m!1114795 () Bool)

(assert (=> b!1208915 m!1114795))

(assert (=> b!1208688 d!133241))

(declare-fun b!1208926 () Bool)

(declare-fun e!686642 () Bool)

(declare-fun e!686644 () Bool)

(assert (=> b!1208926 (= e!686642 e!686644)))

(declare-fun c!118939 () Bool)

(assert (=> b!1208926 (= c!118939 (validKeyInArray!0 (select (arr!37701 lt!548541) #b00000000000000000000000000000000)))))

(declare-fun b!1208927 () Bool)

(declare-fun e!686645 () Bool)

(assert (=> b!1208927 (= e!686645 (contains!6966 Nil!26723 (select (arr!37701 lt!548541) #b00000000000000000000000000000000)))))

(declare-fun bm!59260 () Bool)

(declare-fun call!59263 () Bool)

(assert (=> bm!59260 (= call!59263 (arrayNoDuplicates!0 lt!548541 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118939 (Cons!26722 (select (arr!37701 lt!548541) #b00000000000000000000000000000000) Nil!26723) Nil!26723)))))

(declare-fun d!133243 () Bool)

(declare-fun res!803613 () Bool)

(declare-fun e!686643 () Bool)

(assert (=> d!133243 (=> res!803613 e!686643)))

(assert (=> d!133243 (= res!803613 (bvsge #b00000000000000000000000000000000 (size!38238 lt!548541)))))

(assert (=> d!133243 (= (arrayNoDuplicates!0 lt!548541 #b00000000000000000000000000000000 Nil!26723) e!686643)))

(declare-fun b!1208928 () Bool)

(assert (=> b!1208928 (= e!686643 e!686642)))

(declare-fun res!803612 () Bool)

(assert (=> b!1208928 (=> (not res!803612) (not e!686642))))

(assert (=> b!1208928 (= res!803612 (not e!686645))))

(declare-fun res!803611 () Bool)

(assert (=> b!1208928 (=> (not res!803611) (not e!686645))))

(assert (=> b!1208928 (= res!803611 (validKeyInArray!0 (select (arr!37701 lt!548541) #b00000000000000000000000000000000)))))

(declare-fun b!1208929 () Bool)

(assert (=> b!1208929 (= e!686644 call!59263)))

(declare-fun b!1208930 () Bool)

(assert (=> b!1208930 (= e!686644 call!59263)))

(assert (= (and d!133243 (not res!803613)) b!1208928))

(assert (= (and b!1208928 res!803611) b!1208927))

(assert (= (and b!1208928 res!803612) b!1208926))

(assert (= (and b!1208926 c!118939) b!1208929))

(assert (= (and b!1208926 (not c!118939)) b!1208930))

(assert (= (or b!1208929 b!1208930) bm!59260))

(assert (=> b!1208926 m!1114779))

(assert (=> b!1208926 m!1114779))

(assert (=> b!1208926 m!1114789))

(assert (=> b!1208927 m!1114779))

(assert (=> b!1208927 m!1114779))

(declare-fun m!1114797 () Bool)

(assert (=> b!1208927 m!1114797))

(assert (=> bm!59260 m!1114779))

(declare-fun m!1114799 () Bool)

(assert (=> bm!59260 m!1114799))

(assert (=> b!1208928 m!1114779))

(assert (=> b!1208928 m!1114779))

(assert (=> b!1208928 m!1114789))

(assert (=> b!1208691 d!133243))

(declare-fun d!133245 () Bool)

(assert (=> d!133245 (contains!6965 (+!3985 lt!548550 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!548677 () Unit!39989)

(declare-fun choose!1818 (ListLongMap!17885 (_ BitVec 64) V!46043 (_ BitVec 64)) Unit!39989)

(assert (=> d!133245 (= lt!548677 (choose!1818 lt!548550 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!133245 (contains!6965 lt!548550 k0!934)))

(assert (=> d!133245 (= (addStillContains!1050 lt!548550 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!548677)))

(declare-fun bs!34162 () Bool)

(assert (= bs!34162 d!133245))

(assert (=> bs!34162 m!1114561))

(assert (=> bs!34162 m!1114561))

(declare-fun m!1114801 () Bool)

(assert (=> bs!34162 m!1114801))

(declare-fun m!1114803 () Bool)

(assert (=> bs!34162 m!1114803))

(assert (=> bs!34162 m!1114511))

(assert (=> b!1208690 d!133245))

(declare-fun d!133247 () Bool)

(declare-fun e!686646 () Bool)

(assert (=> d!133247 e!686646))

(declare-fun res!803615 () Bool)

(assert (=> d!133247 (=> (not res!803615) (not e!686646))))

(declare-fun lt!548680 () ListLongMap!17885)

(assert (=> d!133247 (= res!803615 (contains!6965 lt!548680 (_1!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!548681 () List!26725)

(assert (=> d!133247 (= lt!548680 (ListLongMap!17886 lt!548681))))

(declare-fun lt!548678 () Unit!39989)

(declare-fun lt!548679 () Unit!39989)

(assert (=> d!133247 (= lt!548678 lt!548679)))

(assert (=> d!133247 (= (getValueByKey!641 lt!548681 (_1!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!691 (_2!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!133247 (= lt!548679 (lemmaContainsTupThenGetReturnValue!316 lt!548681 (_1!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!133247 (= lt!548681 (insertStrictlySorted!408 (toList!8958 lt!548550) (_1!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!133247 (= (+!3985 lt!548550 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!548680)))

(declare-fun b!1208932 () Bool)

(declare-fun res!803614 () Bool)

(assert (=> b!1208932 (=> (not res!803614) (not e!686646))))

(assert (=> b!1208932 (= res!803614 (= (getValueByKey!641 (toList!8958 lt!548680) (_1!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!691 (_2!9962 (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1208933 () Bool)

(assert (=> b!1208933 (= e!686646 (contains!6969 (toList!8958 lt!548680) (tuple2!19905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!133247 res!803615) b!1208932))

(assert (= (and b!1208932 res!803614) b!1208933))

(declare-fun m!1114805 () Bool)

(assert (=> d!133247 m!1114805))

(declare-fun m!1114807 () Bool)

(assert (=> d!133247 m!1114807))

(declare-fun m!1114809 () Bool)

(assert (=> d!133247 m!1114809))

(declare-fun m!1114811 () Bool)

(assert (=> d!133247 m!1114811))

(declare-fun m!1114813 () Bool)

(assert (=> b!1208932 m!1114813))

(declare-fun m!1114815 () Bool)

(assert (=> b!1208933 m!1114815))

(assert (=> b!1208690 d!133247))

(declare-fun d!133249 () Bool)

(declare-fun e!686652 () Bool)

(assert (=> d!133249 e!686652))

(declare-fun res!803618 () Bool)

(assert (=> d!133249 (=> res!803618 e!686652)))

(declare-fun lt!548691 () Bool)

(assert (=> d!133249 (= res!803618 (not lt!548691))))

(declare-fun lt!548693 () Bool)

(assert (=> d!133249 (= lt!548691 lt!548693)))

(declare-fun lt!548690 () Unit!39989)

(declare-fun e!686651 () Unit!39989)

(assert (=> d!133249 (= lt!548690 e!686651)))

(declare-fun c!118942 () Bool)

(assert (=> d!133249 (= c!118942 lt!548693)))

(declare-fun containsKey!595 (List!26725 (_ BitVec 64)) Bool)

(assert (=> d!133249 (= lt!548693 (containsKey!595 (toList!8958 call!59220) k0!934))))

(assert (=> d!133249 (= (contains!6965 call!59220 k0!934) lt!548691)))

(declare-fun b!1208940 () Bool)

(declare-fun lt!548692 () Unit!39989)

(assert (=> b!1208940 (= e!686651 lt!548692)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!424 (List!26725 (_ BitVec 64)) Unit!39989)

(assert (=> b!1208940 (= lt!548692 (lemmaContainsKeyImpliesGetValueByKeyDefined!424 (toList!8958 call!59220) k0!934))))

(declare-fun isDefined!464 (Option!692) Bool)

(assert (=> b!1208940 (isDefined!464 (getValueByKey!641 (toList!8958 call!59220) k0!934))))

(declare-fun b!1208941 () Bool)

(declare-fun Unit!39995 () Unit!39989)

(assert (=> b!1208941 (= e!686651 Unit!39995)))

(declare-fun b!1208942 () Bool)

(assert (=> b!1208942 (= e!686652 (isDefined!464 (getValueByKey!641 (toList!8958 call!59220) k0!934)))))

(assert (= (and d!133249 c!118942) b!1208940))

(assert (= (and d!133249 (not c!118942)) b!1208941))

(assert (= (and d!133249 (not res!803618)) b!1208942))

(declare-fun m!1114817 () Bool)

(assert (=> d!133249 m!1114817))

(declare-fun m!1114819 () Bool)

(assert (=> b!1208940 m!1114819))

(declare-fun m!1114821 () Bool)

(assert (=> b!1208940 m!1114821))

(assert (=> b!1208940 m!1114821))

(declare-fun m!1114823 () Bool)

(assert (=> b!1208940 m!1114823))

(assert (=> b!1208942 m!1114821))

(assert (=> b!1208942 m!1114821))

(assert (=> b!1208942 m!1114823))

(assert (=> b!1208690 d!133249))

(declare-fun b!1208943 () Bool)

(declare-fun e!686653 () Bool)

(declare-fun e!686655 () Bool)

(assert (=> b!1208943 (= e!686653 e!686655)))

(declare-fun c!118943 () Bool)

(assert (=> b!1208943 (= c!118943 (validKeyInArray!0 (select (arr!37701 _keys!1208) from!1455)))))

(declare-fun b!1208944 () Bool)

(declare-fun e!686656 () Bool)

(assert (=> b!1208944 (= e!686656 (contains!6966 Nil!26723 (select (arr!37701 _keys!1208) from!1455)))))

(declare-fun bm!59261 () Bool)

(declare-fun call!59264 () Bool)

(assert (=> bm!59261 (= call!59264 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!118943 (Cons!26722 (select (arr!37701 _keys!1208) from!1455) Nil!26723) Nil!26723)))))

(declare-fun d!133251 () Bool)

(declare-fun res!803621 () Bool)

(declare-fun e!686654 () Bool)

(assert (=> d!133251 (=> res!803621 e!686654)))

(assert (=> d!133251 (= res!803621 (bvsge from!1455 (size!38238 _keys!1208)))))

(assert (=> d!133251 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26723) e!686654)))

(declare-fun b!1208945 () Bool)

(assert (=> b!1208945 (= e!686654 e!686653)))

(declare-fun res!803620 () Bool)

(assert (=> b!1208945 (=> (not res!803620) (not e!686653))))

(assert (=> b!1208945 (= res!803620 (not e!686656))))

(declare-fun res!803619 () Bool)

(assert (=> b!1208945 (=> (not res!803619) (not e!686656))))

(assert (=> b!1208945 (= res!803619 (validKeyInArray!0 (select (arr!37701 _keys!1208) from!1455)))))

(declare-fun b!1208946 () Bool)

(assert (=> b!1208946 (= e!686655 call!59264)))

(declare-fun b!1208947 () Bool)

(assert (=> b!1208947 (= e!686655 call!59264)))

(assert (= (and d!133251 (not res!803621)) b!1208945))

(assert (= (and b!1208945 res!803619) b!1208944))

(assert (= (and b!1208945 res!803620) b!1208943))

(assert (= (and b!1208943 c!118943) b!1208946))

(assert (= (and b!1208943 (not c!118943)) b!1208947))

(assert (= (or b!1208946 b!1208947) bm!59261))

(assert (=> b!1208943 m!1114573))

(assert (=> b!1208943 m!1114573))

(assert (=> b!1208943 m!1114751))

(assert (=> b!1208944 m!1114573))

(assert (=> b!1208944 m!1114573))

(declare-fun m!1114825 () Bool)

(assert (=> b!1208944 m!1114825))

(assert (=> bm!59261 m!1114573))

(declare-fun m!1114827 () Bool)

(assert (=> bm!59261 m!1114827))

(assert (=> b!1208945 m!1114573))

(assert (=> b!1208945 m!1114573))

(assert (=> b!1208945 m!1114751))

(assert (=> b!1208702 d!133251))

(declare-fun d!133253 () Bool)

(assert (=> d!133253 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26723)))

(declare-fun lt!548696 () Unit!39989)

(declare-fun choose!39 (array!78134 (_ BitVec 32) (_ BitVec 32)) Unit!39989)

(assert (=> d!133253 (= lt!548696 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133253 (bvslt (size!38238 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133253 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!548696)))

(declare-fun bs!34163 () Bool)

(assert (= bs!34163 d!133253))

(assert (=> bs!34163 m!1114539))

(declare-fun m!1114829 () Bool)

(assert (=> bs!34163 m!1114829))

(assert (=> b!1208702 d!133253))

(declare-fun d!133255 () Bool)

(declare-fun e!686659 () Bool)

(assert (=> d!133255 e!686659))

(declare-fun c!118946 () Bool)

(assert (=> d!133255 (= c!118946 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548699 () Unit!39989)

(declare-fun choose!1819 (array!78134 array!78136 (_ BitVec 32) (_ BitVec 32) V!46043 V!46043 (_ BitVec 64) (_ BitVec 32) Int) Unit!39989)

(assert (=> d!133255 (= lt!548699 (choose!1819 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133255 (validMask!0 mask!1564)))

(assert (=> d!133255 (= (lemmaListMapContainsThenArrayContainsFrom!587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548699)))

(declare-fun b!1208952 () Bool)

(assert (=> b!1208952 (= e!686659 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208953 () Bool)

(assert (=> b!1208953 (= e!686659 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!133255 c!118946) b!1208952))

(assert (= (and d!133255 (not c!118946)) b!1208953))

(declare-fun m!1114831 () Bool)

(assert (=> d!133255 m!1114831))

(assert (=> d!133255 m!1114545))

(assert (=> b!1208952 m!1114537))

(assert (=> b!1208702 d!133255))

(declare-fun d!133257 () Bool)

(declare-fun e!686661 () Bool)

(assert (=> d!133257 e!686661))

(declare-fun res!803622 () Bool)

(assert (=> d!133257 (=> res!803622 e!686661)))

(declare-fun lt!548701 () Bool)

(assert (=> d!133257 (= res!803622 (not lt!548701))))

(declare-fun lt!548703 () Bool)

(assert (=> d!133257 (= lt!548701 lt!548703)))

(declare-fun lt!548700 () Unit!39989)

(declare-fun e!686660 () Unit!39989)

(assert (=> d!133257 (= lt!548700 e!686660)))

(declare-fun c!118947 () Bool)

(assert (=> d!133257 (= c!118947 lt!548703)))

(assert (=> d!133257 (= lt!548703 (containsKey!595 (toList!8958 (ite c!118892 lt!548544 call!59216)) k0!934))))

(assert (=> d!133257 (= (contains!6965 (ite c!118892 lt!548544 call!59216) k0!934) lt!548701)))

(declare-fun b!1208954 () Bool)

(declare-fun lt!548702 () Unit!39989)

(assert (=> b!1208954 (= e!686660 lt!548702)))

(assert (=> b!1208954 (= lt!548702 (lemmaContainsKeyImpliesGetValueByKeyDefined!424 (toList!8958 (ite c!118892 lt!548544 call!59216)) k0!934))))

(assert (=> b!1208954 (isDefined!464 (getValueByKey!641 (toList!8958 (ite c!118892 lt!548544 call!59216)) k0!934))))

(declare-fun b!1208955 () Bool)

(declare-fun Unit!39996 () Unit!39989)

(assert (=> b!1208955 (= e!686660 Unit!39996)))

(declare-fun b!1208956 () Bool)

(assert (=> b!1208956 (= e!686661 (isDefined!464 (getValueByKey!641 (toList!8958 (ite c!118892 lt!548544 call!59216)) k0!934)))))

(assert (= (and d!133257 c!118947) b!1208954))

(assert (= (and d!133257 (not c!118947)) b!1208955))

(assert (= (and d!133257 (not res!803622)) b!1208956))

(declare-fun m!1114833 () Bool)

(assert (=> d!133257 m!1114833))

(declare-fun m!1114835 () Bool)

(assert (=> b!1208954 m!1114835))

(declare-fun m!1114837 () Bool)

(assert (=> b!1208954 m!1114837))

(assert (=> b!1208954 m!1114837))

(declare-fun m!1114839 () Bool)

(assert (=> b!1208954 m!1114839))

(assert (=> b!1208956 m!1114837))

(assert (=> b!1208956 m!1114837))

(assert (=> b!1208956 m!1114839))

(assert (=> bm!59212 d!133257))

(declare-fun d!133259 () Bool)

(declare-fun e!686663 () Bool)

(assert (=> d!133259 e!686663))

(declare-fun res!803623 () Bool)

(assert (=> d!133259 (=> res!803623 e!686663)))

(declare-fun lt!548705 () Bool)

(assert (=> d!133259 (= res!803623 (not lt!548705))))

(declare-fun lt!548707 () Bool)

(assert (=> d!133259 (= lt!548705 lt!548707)))

(declare-fun lt!548704 () Unit!39989)

(declare-fun e!686662 () Unit!39989)

(assert (=> d!133259 (= lt!548704 e!686662)))

(declare-fun c!118948 () Bool)

(assert (=> d!133259 (= c!118948 lt!548707)))

(assert (=> d!133259 (= lt!548707 (containsKey!595 (toList!8958 lt!548550) k0!934))))

(assert (=> d!133259 (= (contains!6965 lt!548550 k0!934) lt!548705)))

(declare-fun b!1208957 () Bool)

(declare-fun lt!548706 () Unit!39989)

(assert (=> b!1208957 (= e!686662 lt!548706)))

(assert (=> b!1208957 (= lt!548706 (lemmaContainsKeyImpliesGetValueByKeyDefined!424 (toList!8958 lt!548550) k0!934))))

(assert (=> b!1208957 (isDefined!464 (getValueByKey!641 (toList!8958 lt!548550) k0!934))))

(declare-fun b!1208958 () Bool)

(declare-fun Unit!39997 () Unit!39989)

(assert (=> b!1208958 (= e!686662 Unit!39997)))

(declare-fun b!1208959 () Bool)

(assert (=> b!1208959 (= e!686663 (isDefined!464 (getValueByKey!641 (toList!8958 lt!548550) k0!934)))))

(assert (= (and d!133259 c!118948) b!1208957))

(assert (= (and d!133259 (not c!118948)) b!1208958))

(assert (= (and d!133259 (not res!803623)) b!1208959))

(declare-fun m!1114841 () Bool)

(assert (=> d!133259 m!1114841))

(declare-fun m!1114843 () Bool)

(assert (=> b!1208957 m!1114843))

(declare-fun m!1114845 () Bool)

(assert (=> b!1208957 m!1114845))

(assert (=> b!1208957 m!1114845))

(declare-fun m!1114847 () Bool)

(assert (=> b!1208957 m!1114847))

(assert (=> b!1208959 m!1114845))

(assert (=> b!1208959 m!1114845))

(assert (=> b!1208959 m!1114847))

(assert (=> b!1208683 d!133259))

(assert (=> b!1208683 d!133207))

(declare-fun lt!548713 () ListLongMap!17885)

(declare-fun e!686667 () Bool)

(declare-fun b!1208960 () Bool)

(assert (=> b!1208960 (= e!686667 (= lt!548713 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208961 () Bool)

(declare-fun e!686664 () Bool)

(assert (=> b!1208961 (= e!686664 e!686667)))

(declare-fun c!118952 () Bool)

(assert (=> b!1208961 (= c!118952 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 lt!548541)))))

(declare-fun b!1208962 () Bool)

(assert (=> b!1208962 (= e!686667 (isEmpty!994 lt!548713))))

(declare-fun b!1208963 () Bool)

(assert (=> b!1208963 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 lt!548541)))))

(assert (=> b!1208963 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38239 lt!548549)))))

(declare-fun e!686670 () Bool)

(assert (=> b!1208963 (= e!686670 (= (apply!1002 lt!548713 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19256 (select (arr!37702 lt!548549) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133261 () Bool)

(declare-fun e!686665 () Bool)

(assert (=> d!133261 e!686665))

(declare-fun res!803625 () Bool)

(assert (=> d!133261 (=> (not res!803625) (not e!686665))))

(assert (=> d!133261 (= res!803625 (not (contains!6965 lt!548713 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!686668 () ListLongMap!17885)

(assert (=> d!133261 (= lt!548713 e!686668)))

(declare-fun c!118950 () Bool)

(assert (=> d!133261 (= c!118950 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 lt!548541)))))

(assert (=> d!133261 (validMask!0 mask!1564)))

(assert (=> d!133261 (= (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548713)))

(declare-fun b!1208964 () Bool)

(declare-fun e!686669 () ListLongMap!17885)

(assert (=> b!1208964 (= e!686668 e!686669)))

(declare-fun c!118951 () Bool)

(assert (=> b!1208964 (= c!118951 (validKeyInArray!0 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun bm!59262 () Bool)

(declare-fun call!59265 () ListLongMap!17885)

(assert (=> bm!59262 (= call!59265 (getCurrentListMapNoExtraKeys!5365 lt!548541 lt!548549 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1208965 () Bool)

(assert (=> b!1208965 (= e!686668 (ListLongMap!17886 Nil!26722))))

(declare-fun b!1208966 () Bool)

(assert (=> b!1208966 (= e!686664 e!686670)))

(assert (=> b!1208966 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 lt!548541)))))

(declare-fun res!803627 () Bool)

(assert (=> b!1208966 (= res!803627 (contains!6965 lt!548713 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208966 (=> (not res!803627) (not e!686670))))

(declare-fun b!1208967 () Bool)

(declare-fun res!803626 () Bool)

(assert (=> b!1208967 (=> (not res!803626) (not e!686665))))

(assert (=> b!1208967 (= res!803626 (not (contains!6965 lt!548713 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208968 () Bool)

(assert (=> b!1208968 (= e!686665 e!686664)))

(declare-fun c!118949 () Bool)

(declare-fun e!686666 () Bool)

(assert (=> b!1208968 (= c!118949 e!686666)))

(declare-fun res!803624 () Bool)

(assert (=> b!1208968 (=> (not res!803624) (not e!686666))))

(assert (=> b!1208968 (= res!803624 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38238 lt!548541)))))

(declare-fun b!1208969 () Bool)

(assert (=> b!1208969 (= e!686666 (validKeyInArray!0 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208969 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1208970 () Bool)

(assert (=> b!1208970 (= e!686669 call!59265)))

(declare-fun b!1208971 () Bool)

(declare-fun lt!548710 () Unit!39989)

(declare-fun lt!548712 () Unit!39989)

(assert (=> b!1208971 (= lt!548710 lt!548712)))

(declare-fun lt!548714 () (_ BitVec 64))

(declare-fun lt!548708 () (_ BitVec 64))

(declare-fun lt!548709 () ListLongMap!17885)

(declare-fun lt!548711 () V!46043)

(assert (=> b!1208971 (not (contains!6965 (+!3985 lt!548709 (tuple2!19905 lt!548714 lt!548711)) lt!548708))))

(assert (=> b!1208971 (= lt!548712 (addStillNotContains!297 lt!548709 lt!548714 lt!548711 lt!548708))))

(assert (=> b!1208971 (= lt!548708 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208971 (= lt!548711 (get!19256 (select (arr!37702 lt!548549) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208971 (= lt!548714 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1208971 (= lt!548709 call!59265)))

(assert (=> b!1208971 (= e!686669 (+!3985 call!59265 (tuple2!19905 (select (arr!37701 lt!548541) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19256 (select (arr!37702 lt!548549) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3283 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133261 c!118950) b!1208965))

(assert (= (and d!133261 (not c!118950)) b!1208964))

(assert (= (and b!1208964 c!118951) b!1208971))

(assert (= (and b!1208964 (not c!118951)) b!1208970))

(assert (= (or b!1208971 b!1208970) bm!59262))

(assert (= (and d!133261 res!803625) b!1208967))

(assert (= (and b!1208967 res!803626) b!1208968))

(assert (= (and b!1208968 res!803624) b!1208969))

(assert (= (and b!1208968 c!118949) b!1208966))

(assert (= (and b!1208968 (not c!118949)) b!1208961))

(assert (= (and b!1208966 res!803627) b!1208963))

(assert (= (and b!1208961 c!118952) b!1208960))

(assert (= (and b!1208961 (not c!118952)) b!1208962))

(declare-fun b_lambda!21575 () Bool)

(assert (=> (not b_lambda!21575) (not b!1208963)))

(assert (=> b!1208963 t!39694))

(declare-fun b_and!43061 () Bool)

(assert (= b_and!43059 (and (=> t!39694 result!22165) b_and!43061)))

(declare-fun b_lambda!21577 () Bool)

(assert (=> (not b_lambda!21577) (not b!1208971)))

(assert (=> b!1208971 t!39694))

(declare-fun b_and!43063 () Bool)

(assert (= b_and!43061 (and (=> t!39694 result!22165) b_and!43063)))

(declare-fun m!1114849 () Bool)

(assert (=> bm!59262 m!1114849))

(declare-fun m!1114851 () Bool)

(assert (=> b!1208967 m!1114851))

(declare-fun m!1114853 () Bool)

(assert (=> b!1208971 m!1114853))

(assert (=> b!1208971 m!1114527))

(declare-fun m!1114855 () Bool)

(assert (=> b!1208971 m!1114855))

(declare-fun m!1114857 () Bool)

(assert (=> b!1208971 m!1114857))

(declare-fun m!1114859 () Bool)

(assert (=> b!1208971 m!1114859))

(assert (=> b!1208971 m!1114527))

(declare-fun m!1114861 () Bool)

(assert (=> b!1208971 m!1114861))

(assert (=> b!1208971 m!1114853))

(declare-fun m!1114863 () Bool)

(assert (=> b!1208971 m!1114863))

(assert (=> b!1208971 m!1114861))

(declare-fun m!1114865 () Bool)

(assert (=> b!1208971 m!1114865))

(assert (=> b!1208960 m!1114849))

(assert (=> b!1208963 m!1114853))

(assert (=> b!1208963 m!1114527))

(assert (=> b!1208963 m!1114855))

(assert (=> b!1208963 m!1114859))

(assert (=> b!1208963 m!1114527))

(assert (=> b!1208963 m!1114853))

(assert (=> b!1208963 m!1114859))

(declare-fun m!1114867 () Bool)

(assert (=> b!1208963 m!1114867))

(declare-fun m!1114869 () Bool)

(assert (=> d!133261 m!1114869))

(assert (=> d!133261 m!1114545))

(assert (=> b!1208969 m!1114859))

(assert (=> b!1208969 m!1114859))

(declare-fun m!1114871 () Bool)

(assert (=> b!1208969 m!1114871))

(declare-fun m!1114873 () Bool)

(assert (=> b!1208962 m!1114873))

(assert (=> b!1208964 m!1114859))

(assert (=> b!1208964 m!1114859))

(assert (=> b!1208964 m!1114871))

(assert (=> b!1208966 m!1114859))

(assert (=> b!1208966 m!1114859))

(declare-fun m!1114875 () Bool)

(assert (=> b!1208966 m!1114875))

(assert (=> bm!59217 d!133261))

(assert (=> b!1208686 d!133231))

(declare-fun d!133263 () Bool)

(assert (=> d!133263 (contains!6965 (+!3985 (ite c!118892 lt!548544 lt!548550) (tuple2!19905 (ite c!118892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118891 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118892 minValue!944 (ite c!118891 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!548715 () Unit!39989)

(assert (=> d!133263 (= lt!548715 (choose!1818 (ite c!118892 lt!548544 lt!548550) (ite c!118892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118891 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118892 minValue!944 (ite c!118891 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!133263 (contains!6965 (ite c!118892 lt!548544 lt!548550) k0!934)))

(assert (=> d!133263 (= (addStillContains!1050 (ite c!118892 lt!548544 lt!548550) (ite c!118892 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118891 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118892 minValue!944 (ite c!118891 zeroValue!944 minValue!944)) k0!934) lt!548715)))

(declare-fun bs!34164 () Bool)

(assert (= bs!34164 d!133263))

(declare-fun m!1114877 () Bool)

(assert (=> bs!34164 m!1114877))

(assert (=> bs!34164 m!1114877))

(declare-fun m!1114879 () Bool)

(assert (=> bs!34164 m!1114879))

(declare-fun m!1114881 () Bool)

(assert (=> bs!34164 m!1114881))

(declare-fun m!1114883 () Bool)

(assert (=> bs!34164 m!1114883))

(assert (=> bm!59215 d!133263))

(declare-fun b!1208972 () Bool)

(declare-fun e!686671 () Bool)

(declare-fun e!686673 () Bool)

(assert (=> b!1208972 (= e!686671 e!686673)))

(declare-fun c!118953 () Bool)

(assert (=> b!1208972 (= c!118953 (validKeyInArray!0 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208973 () Bool)

(declare-fun e!686674 () Bool)

(assert (=> b!1208973 (= e!686674 (contains!6966 Nil!26723 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!59263 () Bool)

(declare-fun call!59266 () Bool)

(assert (=> bm!59263 (= call!59266 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118953 (Cons!26722 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000) Nil!26723) Nil!26723)))))

(declare-fun d!133265 () Bool)

(declare-fun res!803630 () Bool)

(declare-fun e!686672 () Bool)

(assert (=> d!133265 (=> res!803630 e!686672)))

(assert (=> d!133265 (= res!803630 (bvsge #b00000000000000000000000000000000 (size!38238 _keys!1208)))))

(assert (=> d!133265 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26723) e!686672)))

(declare-fun b!1208974 () Bool)

(assert (=> b!1208974 (= e!686672 e!686671)))

(declare-fun res!803629 () Bool)

(assert (=> b!1208974 (=> (not res!803629) (not e!686671))))

(assert (=> b!1208974 (= res!803629 (not e!686674))))

(declare-fun res!803628 () Bool)

(assert (=> b!1208974 (=> (not res!803628) (not e!686674))))

(assert (=> b!1208974 (= res!803628 (validKeyInArray!0 (select (arr!37701 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208975 () Bool)

(assert (=> b!1208975 (= e!686673 call!59266)))

(declare-fun b!1208976 () Bool)

(assert (=> b!1208976 (= e!686673 call!59266)))

(assert (= (and d!133265 (not res!803630)) b!1208974))

(assert (= (and b!1208974 res!803628) b!1208973))

(assert (= (and b!1208974 res!803629) b!1208972))

(assert (= (and b!1208972 c!118953) b!1208975))

(assert (= (and b!1208972 (not c!118953)) b!1208976))

(assert (= (or b!1208975 b!1208976) bm!59263))

(assert (=> b!1208972 m!1114677))

(assert (=> b!1208972 m!1114677))

(assert (=> b!1208972 m!1114697))

(assert (=> b!1208973 m!1114677))

(assert (=> b!1208973 m!1114677))

(declare-fun m!1114885 () Bool)

(assert (=> b!1208973 m!1114885))

(assert (=> bm!59263 m!1114677))

(declare-fun m!1114887 () Bool)

(assert (=> bm!59263 m!1114887))

(assert (=> b!1208974 m!1114677))

(assert (=> b!1208974 m!1114677))

(assert (=> b!1208974 m!1114697))

(assert (=> b!1208685 d!133265))

(declare-fun mapNonEmpty!47902 () Bool)

(declare-fun mapRes!47902 () Bool)

(declare-fun tp!90972 () Bool)

(declare-fun e!686680 () Bool)

(assert (=> mapNonEmpty!47902 (= mapRes!47902 (and tp!90972 e!686680))))

(declare-fun mapRest!47902 () (Array (_ BitVec 32) ValueCell!14634))

(declare-fun mapValue!47902 () ValueCell!14634)

(declare-fun mapKey!47902 () (_ BitVec 32))

(assert (=> mapNonEmpty!47902 (= mapRest!47896 (store mapRest!47902 mapKey!47902 mapValue!47902))))

(declare-fun mapIsEmpty!47902 () Bool)

(assert (=> mapIsEmpty!47902 mapRes!47902))

(declare-fun b!1208984 () Bool)

(declare-fun e!686679 () Bool)

(assert (=> b!1208984 (= e!686679 tp_is_empty!30687)))

(declare-fun condMapEmpty!47902 () Bool)

(declare-fun mapDefault!47902 () ValueCell!14634)

(assert (=> mapNonEmpty!47896 (= condMapEmpty!47902 (= mapRest!47896 ((as const (Array (_ BitVec 32) ValueCell!14634)) mapDefault!47902)))))

(assert (=> mapNonEmpty!47896 (= tp!90962 (and e!686679 mapRes!47902))))

(declare-fun b!1208983 () Bool)

(assert (=> b!1208983 (= e!686680 tp_is_empty!30687)))

(assert (= (and mapNonEmpty!47896 condMapEmpty!47902) mapIsEmpty!47902))

(assert (= (and mapNonEmpty!47896 (not condMapEmpty!47902)) mapNonEmpty!47902))

(assert (= (and mapNonEmpty!47902 ((_ is ValueCellFull!14634) mapValue!47902)) b!1208983))

(assert (= (and mapNonEmpty!47896 ((_ is ValueCellFull!14634) mapDefault!47902)) b!1208984))

(declare-fun m!1114889 () Bool)

(assert (=> mapNonEmpty!47902 m!1114889))

(declare-fun b_lambda!21579 () Bool)

(assert (= b_lambda!21569 (or (and start!100984 b_free!25983) b_lambda!21579)))

(declare-fun b_lambda!21581 () Bool)

(assert (= b_lambda!21575 (or (and start!100984 b_free!25983) b_lambda!21581)))

(declare-fun b_lambda!21583 () Bool)

(assert (= b_lambda!21573 (or (and start!100984 b_free!25983) b_lambda!21583)))

(declare-fun b_lambda!21585 () Bool)

(assert (= b_lambda!21567 (or (and start!100984 b_free!25983) b_lambda!21585)))

(declare-fun b_lambda!21587 () Bool)

(assert (= b_lambda!21565 (or (and start!100984 b_free!25983) b_lambda!21587)))

(declare-fun b_lambda!21589 () Bool)

(assert (= b_lambda!21563 (or (and start!100984 b_free!25983) b_lambda!21589)))

(declare-fun b_lambda!21591 () Bool)

(assert (= b_lambda!21571 (or (and start!100984 b_free!25983) b_lambda!21591)))

(declare-fun b_lambda!21593 () Bool)

(assert (= b_lambda!21561 (or (and start!100984 b_free!25983) b_lambda!21593)))

(declare-fun b_lambda!21595 () Bool)

(assert (= b_lambda!21577 (or (and start!100984 b_free!25983) b_lambda!21595)))

(check-sat (not b_lambda!21559) tp_is_empty!30687 (not b!1208893) (not d!133249) (not b!1208905) (not b!1208861) (not d!133257) (not d!133221) (not d!133263) (not b!1208872) (not b!1208943) (not b!1208844) (not b!1208894) (not d!133245) (not b!1208974) (not b!1208833) (not b_next!25983) (not b_lambda!21593) (not b!1208969) (not b!1208928) (not b!1208932) (not mapNonEmpty!47902) (not b!1208971) (not b!1208904) (not bm!59245) (not bm!59261) (not b!1208834) (not bm!59249) (not d!133219) (not b!1208966) (not b!1208827) (not b!1208944) (not bm!59251) (not bm!59260) (not b_lambda!21591) (not b!1208884) (not b!1208940) (not b!1208882) (not bm!59263) (not b_lambda!21579) (not d!133215) (not b!1208942) (not b!1208831) (not b!1208870) (not b!1208886) (not b_lambda!21595) (not bm!59257) (not b!1208838) (not d!133207) (not b!1208874) (not b!1208926) (not d!133213) (not b!1208866) (not d!133255) (not b!1208959) (not b!1208830) (not b!1208901) (not b!1208860) (not b!1208863) (not b!1208963) (not d!133223) (not d!133237) (not d!133253) (not b!1208867) (not b!1208878) (not b!1208875) (not b!1208973) (not b!1208902) (not d!133247) (not b!1208850) (not b!1208962) (not b_lambda!21585) (not b!1208877) (not b!1208927) (not b!1208964) (not b!1208836) (not b!1208954) (not b!1208956) (not d!133259) (not b_lambda!21583) (not b!1208869) (not b_lambda!21581) (not d!133225) (not b!1208879) (not bm!59248) (not b!1208915) (not d!133241) (not b!1208960) (not bm!59250) (not b_lambda!21589) (not b_lambda!21587) (not b!1208933) (not b!1208967) (not bm!59256) (not b!1208972) (not b!1208888) (not bm!59262) (not b!1208957) (not b!1208945) (not b!1208881) (not b!1208829) (not b!1208865) (not b!1208952) b_and!43063 (not b!1208896) (not d!133261))
(check-sat b_and!43063 (not b_next!25983))
