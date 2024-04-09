; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101770 () Bool)

(assert start!101770)

(declare-fun b_free!26423 () Bool)

(declare-fun b_next!26423 () Bool)

(assert (=> start!101770 (= b_free!26423 (not b_next!26423))))

(declare-fun tp!92315 () Bool)

(declare-fun b_and!44117 () Bool)

(assert (=> start!101770 (= tp!92315 b_and!44117)))

(declare-fun b!1224497 () Bool)

(declare-fun e!695503 () Bool)

(declare-fun e!695498 () Bool)

(assert (=> b!1224497 (= e!695503 e!695498)))

(declare-fun res!813776 () Bool)

(assert (=> b!1224497 (=> res!813776 e!695498)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224497 (= res!813776 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46629 0))(
  ( (V!46630 (val!15620 Int)) )
))
(declare-fun zeroValue!944 () V!46629)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14854 0))(
  ( (ValueCellFull!14854 (v!18283 V!46629)) (EmptyCell!14854) )
))
(declare-datatypes ((array!79012 0))(
  ( (array!79013 (arr!38129 (Array (_ BitVec 32) ValueCell!14854)) (size!38666 (_ BitVec 32))) )
))
(declare-fun lt!557553 () array!79012)

(declare-fun minValue!944 () V!46629)

(declare-datatypes ((array!79014 0))(
  ( (array!79015 (arr!38130 (Array (_ BitVec 32) (_ BitVec 64))) (size!38667 (_ BitVec 32))) )
))
(declare-fun lt!557551 () array!79014)

(declare-datatypes ((tuple2!20278 0))(
  ( (tuple2!20279 (_1!10149 (_ BitVec 64)) (_2!10149 V!46629)) )
))
(declare-datatypes ((List!27089 0))(
  ( (Nil!27086) (Cons!27085 (h!28294 tuple2!20278) (t!40499 List!27089)) )
))
(declare-datatypes ((ListLongMap!18259 0))(
  ( (ListLongMap!18260 (toList!9145 List!27089)) )
))
(declare-fun lt!557560 () ListLongMap!18259)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5542 (array!79014 array!79012 (_ BitVec 32) (_ BitVec 32) V!46629 V!46629 (_ BitVec 32) Int) ListLongMap!18259)

(assert (=> b!1224497 (= lt!557560 (getCurrentListMapNoExtraKeys!5542 lt!557551 lt!557553 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557549 () V!46629)

(declare-fun _values!996 () array!79012)

(assert (=> b!1224497 (= lt!557553 (array!79013 (store (arr!38129 _values!996) i!673 (ValueCellFull!14854 lt!557549)) (size!38666 _values!996)))))

(declare-fun dynLambda!3437 (Int (_ BitVec 64)) V!46629)

(assert (=> b!1224497 (= lt!557549 (dynLambda!3437 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!79014)

(declare-fun lt!557547 () ListLongMap!18259)

(assert (=> b!1224497 (= lt!557547 (getCurrentListMapNoExtraKeys!5542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224498 () Bool)

(declare-fun res!813771 () Bool)

(declare-fun e!695500 () Bool)

(assert (=> b!1224498 (=> (not res!813771) (not e!695500))))

(declare-fun lt!557556 () ListLongMap!18259)

(declare-fun lt!557550 () tuple2!20278)

(declare-fun +!4107 (ListLongMap!18259 tuple2!20278) ListLongMap!18259)

(assert (=> b!1224498 (= res!813771 (= lt!557547 (+!4107 lt!557556 lt!557550)))))

(declare-fun b!1224499 () Bool)

(declare-fun e!695504 () Bool)

(assert (=> b!1224499 (= e!695504 (not e!695503))))

(declare-fun res!813783 () Bool)

(assert (=> b!1224499 (=> res!813783 e!695503)))

(assert (=> b!1224499 (= res!813783 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224499 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40505 0))(
  ( (Unit!40506) )
))
(declare-fun lt!557546 () Unit!40505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79014 (_ BitVec 64) (_ BitVec 32)) Unit!40505)

(assert (=> b!1224499 (= lt!557546 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224500 () Bool)

(declare-fun res!813774 () Bool)

(declare-fun e!695501 () Bool)

(assert (=> b!1224500 (=> (not res!813774) (not e!695501))))

(declare-datatypes ((List!27090 0))(
  ( (Nil!27087) (Cons!27086 (h!28295 (_ BitVec 64)) (t!40500 List!27090)) )
))
(declare-fun arrayNoDuplicates!0 (array!79014 (_ BitVec 32) List!27090) Bool)

(assert (=> b!1224500 (= res!813774 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27087))))

(declare-fun b!1224502 () Bool)

(declare-fun res!813767 () Bool)

(assert (=> b!1224502 (=> (not res!813767) (not e!695501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79014 (_ BitVec 32)) Bool)

(assert (=> b!1224502 (= res!813767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224503 () Bool)

(declare-fun e!695508 () Bool)

(assert (=> b!1224503 (= e!695508 true)))

(assert (=> b!1224503 e!695500))

(declare-fun res!813782 () Bool)

(assert (=> b!1224503 (=> (not res!813782) (not e!695500))))

(assert (=> b!1224503 (= res!813782 (not (= (select (arr!38130 _keys!1208) from!1455) k!934)))))

(declare-fun lt!557548 () Unit!40505)

(declare-fun e!695506 () Unit!40505)

(assert (=> b!1224503 (= lt!557548 e!695506)))

(declare-fun c!120399 () Bool)

(assert (=> b!1224503 (= c!120399 (= (select (arr!38130 _keys!1208) from!1455) k!934))))

(declare-fun e!695499 () Bool)

(assert (=> b!1224503 e!695499))

(declare-fun res!813772 () Bool)

(assert (=> b!1224503 (=> (not res!813772) (not e!695499))))

(declare-fun lt!557558 () ListLongMap!18259)

(assert (=> b!1224503 (= res!813772 (= lt!557560 (+!4107 lt!557558 lt!557550)))))

(declare-fun get!19519 (ValueCell!14854 V!46629) V!46629)

(assert (=> b!1224503 (= lt!557550 (tuple2!20279 (select (arr!38130 _keys!1208) from!1455) (get!19519 (select (arr!38129 _values!996) from!1455) lt!557549)))))

(declare-fun mapNonEmpty!48589 () Bool)

(declare-fun mapRes!48589 () Bool)

(declare-fun tp!92316 () Bool)

(declare-fun e!695497 () Bool)

(assert (=> mapNonEmpty!48589 (= mapRes!48589 (and tp!92316 e!695497))))

(declare-fun mapValue!48589 () ValueCell!14854)

(declare-fun mapRest!48589 () (Array (_ BitVec 32) ValueCell!14854))

(declare-fun mapKey!48589 () (_ BitVec 32))

(assert (=> mapNonEmpty!48589 (= (arr!38129 _values!996) (store mapRest!48589 mapKey!48589 mapValue!48589))))

(declare-fun b!1224504 () Bool)

(assert (=> b!1224504 (= e!695498 e!695508)))

(declare-fun res!813770 () Bool)

(assert (=> b!1224504 (=> res!813770 e!695508)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224504 (= res!813770 (not (validKeyInArray!0 (select (arr!38130 _keys!1208) from!1455))))))

(declare-fun lt!557555 () ListLongMap!18259)

(assert (=> b!1224504 (= lt!557555 lt!557558)))

(declare-fun -!1981 (ListLongMap!18259 (_ BitVec 64)) ListLongMap!18259)

(assert (=> b!1224504 (= lt!557558 (-!1981 lt!557556 k!934))))

(assert (=> b!1224504 (= lt!557555 (getCurrentListMapNoExtraKeys!5542 lt!557551 lt!557553 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224504 (= lt!557556 (getCurrentListMapNoExtraKeys!5542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557557 () Unit!40505)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1183 (array!79014 array!79012 (_ BitVec 32) (_ BitVec 32) V!46629 V!46629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40505)

(assert (=> b!1224504 (= lt!557557 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1183 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224505 () Bool)

(declare-fun res!813769 () Bool)

(assert (=> b!1224505 (=> (not res!813769) (not e!695501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224505 (= res!813769 (validMask!0 mask!1564))))

(declare-fun b!1224506 () Bool)

(declare-fun res!813778 () Bool)

(assert (=> b!1224506 (=> (not res!813778) (not e!695501))))

(assert (=> b!1224506 (= res!813778 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38667 _keys!1208))))))

(declare-fun b!1224507 () Bool)

(declare-fun res!813768 () Bool)

(assert (=> b!1224507 (=> (not res!813768) (not e!695501))))

(assert (=> b!1224507 (= res!813768 (= (select (arr!38130 _keys!1208) i!673) k!934))))

(declare-fun b!1224508 () Bool)

(assert (=> b!1224508 (= e!695501 e!695504)))

(declare-fun res!813781 () Bool)

(assert (=> b!1224508 (=> (not res!813781) (not e!695504))))

(assert (=> b!1224508 (= res!813781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557551 mask!1564))))

(assert (=> b!1224508 (= lt!557551 (array!79015 (store (arr!38130 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38667 _keys!1208)))))

(declare-fun b!1224509 () Bool)

(declare-fun res!813777 () Bool)

(assert (=> b!1224509 (=> (not res!813777) (not e!695501))))

(assert (=> b!1224509 (= res!813777 (validKeyInArray!0 k!934))))

(declare-fun b!1224510 () Bool)

(declare-fun tp_is_empty!31127 () Bool)

(assert (=> b!1224510 (= e!695497 tp_is_empty!31127)))

(declare-fun b!1224511 () Bool)

(declare-fun res!813780 () Bool)

(assert (=> b!1224511 (=> (not res!813780) (not e!695504))))

(assert (=> b!1224511 (= res!813780 (arrayNoDuplicates!0 lt!557551 #b00000000000000000000000000000000 Nil!27087))))

(declare-fun b!1224512 () Bool)

(declare-fun res!813775 () Bool)

(assert (=> b!1224512 (=> (not res!813775) (not e!695501))))

(assert (=> b!1224512 (= res!813775 (and (= (size!38666 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38667 _keys!1208) (size!38666 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224513 () Bool)

(declare-fun e!695502 () Bool)

(assert (=> b!1224513 (= e!695499 e!695502)))

(declare-fun res!813773 () Bool)

(assert (=> b!1224513 (=> res!813773 e!695502)))

(assert (=> b!1224513 (= res!813773 (not (= (select (arr!38130 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224501 () Bool)

(declare-fun Unit!40507 () Unit!40505)

(assert (=> b!1224501 (= e!695506 Unit!40507)))

(declare-fun lt!557554 () Unit!40505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79014 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40505)

(assert (=> b!1224501 (= lt!557554 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224501 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557552 () Unit!40505)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79014 (_ BitVec 32) (_ BitVec 32)) Unit!40505)

(assert (=> b!1224501 (= lt!557552 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224501 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27087)))

(declare-fun lt!557559 () Unit!40505)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79014 (_ BitVec 64) (_ BitVec 32) List!27090) Unit!40505)

(assert (=> b!1224501 (= lt!557559 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27087))))

(assert (=> b!1224501 false))

(declare-fun res!813779 () Bool)

(assert (=> start!101770 (=> (not res!813779) (not e!695501))))

(assert (=> start!101770 (= res!813779 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38667 _keys!1208))))))

(assert (=> start!101770 e!695501))

(assert (=> start!101770 tp_is_empty!31127))

(declare-fun array_inv!28922 (array!79014) Bool)

(assert (=> start!101770 (array_inv!28922 _keys!1208)))

(assert (=> start!101770 true))

(assert (=> start!101770 tp!92315))

(declare-fun e!695496 () Bool)

(declare-fun array_inv!28923 (array!79012) Bool)

(assert (=> start!101770 (and (array_inv!28923 _values!996) e!695496)))

(declare-fun b!1224514 () Bool)

(declare-fun e!695507 () Bool)

(assert (=> b!1224514 (= e!695496 (and e!695507 mapRes!48589))))

(declare-fun condMapEmpty!48589 () Bool)

(declare-fun mapDefault!48589 () ValueCell!14854)

