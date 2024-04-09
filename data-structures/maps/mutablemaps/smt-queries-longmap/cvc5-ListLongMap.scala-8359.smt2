; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101772 () Bool)

(assert start!101772)

(declare-fun b_free!26425 () Bool)

(declare-fun b_next!26425 () Bool)

(assert (=> start!101772 (= b_free!26425 (not b_next!26425))))

(declare-fun tp!92321 () Bool)

(declare-fun b_and!44121 () Bool)

(assert (=> start!101772 (= tp!92321 b_and!44121)))

(declare-fun b!1224561 () Bool)

(declare-fun e!695542 () Bool)

(declare-fun e!695537 () Bool)

(assert (=> b!1224561 (= e!695542 e!695537)))

(declare-fun res!813815 () Bool)

(assert (=> b!1224561 (=> res!813815 e!695537)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224561 (= res!813815 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46633 0))(
  ( (V!46634 (val!15621 Int)) )
))
(declare-fun zeroValue!944 () V!46633)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!79016 0))(
  ( (array!79017 (arr!38131 (Array (_ BitVec 32) (_ BitVec 64))) (size!38668 (_ BitVec 32))) )
))
(declare-fun lt!557602 () array!79016)

(declare-datatypes ((ValueCell!14855 0))(
  ( (ValueCellFull!14855 (v!18284 V!46633)) (EmptyCell!14855) )
))
(declare-datatypes ((array!79018 0))(
  ( (array!79019 (arr!38132 (Array (_ BitVec 32) ValueCell!14855)) (size!38669 (_ BitVec 32))) )
))
(declare-fun lt!557611 () array!79018)

(declare-fun minValue!944 () V!46633)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!20280 0))(
  ( (tuple2!20281 (_1!10150 (_ BitVec 64)) (_2!10150 V!46633)) )
))
(declare-datatypes ((List!27091 0))(
  ( (Nil!27088) (Cons!27087 (h!28296 tuple2!20280) (t!40503 List!27091)) )
))
(declare-datatypes ((ListLongMap!18261 0))(
  ( (ListLongMap!18262 (toList!9146 List!27091)) )
))
(declare-fun lt!557609 () ListLongMap!18261)

(declare-fun getCurrentListMapNoExtraKeys!5543 (array!79016 array!79018 (_ BitVec 32) (_ BitVec 32) V!46633 V!46633 (_ BitVec 32) Int) ListLongMap!18261)

(assert (=> b!1224561 (= lt!557609 (getCurrentListMapNoExtraKeys!5543 lt!557602 lt!557611 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557610 () V!46633)

(declare-fun _values!996 () array!79018)

(assert (=> b!1224561 (= lt!557611 (array!79019 (store (arr!38132 _values!996) i!673 (ValueCellFull!14855 lt!557610)) (size!38669 _values!996)))))

(declare-fun dynLambda!3438 (Int (_ BitVec 64)) V!46633)

(assert (=> b!1224561 (= lt!557610 (dynLambda!3438 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!79016)

(declare-fun lt!557606 () ListLongMap!18261)

(assert (=> b!1224561 (= lt!557606 (getCurrentListMapNoExtraKeys!5543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224562 () Bool)

(declare-fun res!813817 () Bool)

(declare-fun e!695534 () Bool)

(assert (=> b!1224562 (=> (not res!813817) (not e!695534))))

(declare-datatypes ((List!27092 0))(
  ( (Nil!27089) (Cons!27088 (h!28297 (_ BitVec 64)) (t!40504 List!27092)) )
))
(declare-fun arrayNoDuplicates!0 (array!79016 (_ BitVec 32) List!27092) Bool)

(assert (=> b!1224562 (= res!813817 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27089))))

(declare-fun b!1224563 () Bool)

(declare-fun e!695539 () Bool)

(declare-fun tp_is_empty!31129 () Bool)

(assert (=> b!1224563 (= e!695539 tp_is_empty!31129)))

(declare-fun mapNonEmpty!48592 () Bool)

(declare-fun mapRes!48592 () Bool)

(declare-fun tp!92322 () Bool)

(assert (=> mapNonEmpty!48592 (= mapRes!48592 (and tp!92322 e!695539))))

(declare-fun mapValue!48592 () ValueCell!14855)

(declare-fun mapKey!48592 () (_ BitVec 32))

(declare-fun mapRest!48592 () (Array (_ BitVec 32) ValueCell!14855))

(assert (=> mapNonEmpty!48592 (= (arr!38132 _values!996) (store mapRest!48592 mapKey!48592 mapValue!48592))))

(declare-fun b!1224565 () Bool)

(declare-fun res!813818 () Bool)

(assert (=> b!1224565 (=> (not res!813818) (not e!695534))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224565 (= res!813818 (validKeyInArray!0 k!934))))

(declare-fun b!1224566 () Bool)

(declare-fun e!695544 () Bool)

(assert (=> b!1224566 (= e!695537 e!695544)))

(declare-fun res!813821 () Bool)

(assert (=> b!1224566 (=> res!813821 e!695544)))

(assert (=> b!1224566 (= res!813821 (not (validKeyInArray!0 (select (arr!38131 _keys!1208) from!1455))))))

(declare-fun lt!557600 () ListLongMap!18261)

(declare-fun lt!557612 () ListLongMap!18261)

(assert (=> b!1224566 (= lt!557600 lt!557612)))

(declare-fun lt!557604 () ListLongMap!18261)

(declare-fun -!1982 (ListLongMap!18261 (_ BitVec 64)) ListLongMap!18261)

(assert (=> b!1224566 (= lt!557612 (-!1982 lt!557604 k!934))))

(assert (=> b!1224566 (= lt!557600 (getCurrentListMapNoExtraKeys!5543 lt!557602 lt!557611 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224566 (= lt!557604 (getCurrentListMapNoExtraKeys!5543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40508 0))(
  ( (Unit!40509) )
))
(declare-fun lt!557614 () Unit!40508)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1184 (array!79016 array!79018 (_ BitVec 32) (_ BitVec 32) V!46633 V!46633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40508)

(assert (=> b!1224566 (= lt!557614 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1184 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224567 () Bool)

(declare-fun e!695536 () Bool)

(assert (=> b!1224567 (= e!695536 tp_is_empty!31129)))

(declare-fun b!1224568 () Bool)

(declare-fun res!813822 () Bool)

(declare-fun e!695543 () Bool)

(assert (=> b!1224568 (=> (not res!813822) (not e!695543))))

(assert (=> b!1224568 (= res!813822 (arrayNoDuplicates!0 lt!557602 #b00000000000000000000000000000000 Nil!27089))))

(declare-fun mapIsEmpty!48592 () Bool)

(assert (=> mapIsEmpty!48592 mapRes!48592))

(declare-fun b!1224569 () Bool)

(declare-fun res!813825 () Bool)

(assert (=> b!1224569 (=> (not res!813825) (not e!695534))))

(assert (=> b!1224569 (= res!813825 (and (= (size!38669 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38668 _keys!1208) (size!38669 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224570 () Bool)

(declare-fun e!695540 () Bool)

(declare-fun e!695533 () Bool)

(assert (=> b!1224570 (= e!695540 e!695533)))

(declare-fun res!813826 () Bool)

(assert (=> b!1224570 (=> res!813826 e!695533)))

(assert (=> b!1224570 (= res!813826 (not (= (select (arr!38131 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224564 () Bool)

(assert (=> b!1224564 (= e!695534 e!695543)))

(declare-fun res!813828 () Bool)

(assert (=> b!1224564 (=> (not res!813828) (not e!695543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79016 (_ BitVec 32)) Bool)

(assert (=> b!1224564 (= res!813828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557602 mask!1564))))

(assert (=> b!1224564 (= lt!557602 (array!79017 (store (arr!38131 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38668 _keys!1208)))))

(declare-fun res!813823 () Bool)

(assert (=> start!101772 (=> (not res!813823) (not e!695534))))

(assert (=> start!101772 (= res!813823 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38668 _keys!1208))))))

(assert (=> start!101772 e!695534))

(assert (=> start!101772 tp_is_empty!31129))

(declare-fun array_inv!28924 (array!79016) Bool)

(assert (=> start!101772 (array_inv!28924 _keys!1208)))

(assert (=> start!101772 true))

(assert (=> start!101772 tp!92321))

(declare-fun e!695535 () Bool)

(declare-fun array_inv!28925 (array!79018) Bool)

(assert (=> start!101772 (and (array_inv!28925 _values!996) e!695535)))

(declare-fun b!1224571 () Bool)

(declare-fun arrayContainsKey!0 (array!79016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224571 (= e!695533 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224572 () Bool)

(declare-fun e!695538 () Unit!40508)

(declare-fun Unit!40510 () Unit!40508)

(assert (=> b!1224572 (= e!695538 Unit!40510)))

(declare-fun b!1224573 () Bool)

(declare-fun Unit!40511 () Unit!40508)

(assert (=> b!1224573 (= e!695538 Unit!40511)))

(declare-fun lt!557616 () Unit!40508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79016 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40508)

(assert (=> b!1224573 (= lt!557616 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224573 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557617 () Unit!40508)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79016 (_ BitVec 32) (_ BitVec 32)) Unit!40508)

(assert (=> b!1224573 (= lt!557617 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224573 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27089)))

(declare-fun lt!557615 () Unit!40508)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79016 (_ BitVec 64) (_ BitVec 32) List!27092) Unit!40508)

(assert (=> b!1224573 (= lt!557615 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27089))))

(assert (=> b!1224573 false))

(declare-fun b!1224574 () Bool)

(assert (=> b!1224574 (= e!695544 true)))

(declare-fun lt!557603 () ListLongMap!18261)

(declare-fun lt!557607 () ListLongMap!18261)

(assert (=> b!1224574 (= (-!1982 lt!557603 k!934) lt!557607)))

(declare-fun lt!557613 () Unit!40508)

(declare-fun lt!557599 () V!46633)

(declare-fun addRemoveCommutativeForDiffKeys!223 (ListLongMap!18261 (_ BitVec 64) V!46633 (_ BitVec 64)) Unit!40508)

(assert (=> b!1224574 (= lt!557613 (addRemoveCommutativeForDiffKeys!223 lt!557604 (select (arr!38131 _keys!1208) from!1455) lt!557599 k!934))))

(assert (=> b!1224574 (and (= lt!557606 lt!557603) (= lt!557612 lt!557600))))

(declare-fun lt!557601 () tuple2!20280)

(declare-fun +!4108 (ListLongMap!18261 tuple2!20280) ListLongMap!18261)

(assert (=> b!1224574 (= lt!557603 (+!4108 lt!557604 lt!557601))))

(assert (=> b!1224574 (not (= (select (arr!38131 _keys!1208) from!1455) k!934))))

(declare-fun lt!557608 () Unit!40508)

(assert (=> b!1224574 (= lt!557608 e!695538)))

(declare-fun c!120402 () Bool)

(assert (=> b!1224574 (= c!120402 (= (select (arr!38131 _keys!1208) from!1455) k!934))))

(assert (=> b!1224574 e!695540))

(declare-fun res!813814 () Bool)

(assert (=> b!1224574 (=> (not res!813814) (not e!695540))))

(assert (=> b!1224574 (= res!813814 (= lt!557609 lt!557607))))

(assert (=> b!1224574 (= lt!557607 (+!4108 lt!557612 lt!557601))))

(assert (=> b!1224574 (= lt!557601 (tuple2!20281 (select (arr!38131 _keys!1208) from!1455) lt!557599))))

(declare-fun get!19522 (ValueCell!14855 V!46633) V!46633)

(assert (=> b!1224574 (= lt!557599 (get!19522 (select (arr!38132 _values!996) from!1455) lt!557610))))

(declare-fun b!1224575 () Bool)

(assert (=> b!1224575 (= e!695535 (and e!695536 mapRes!48592))))

(declare-fun condMapEmpty!48592 () Bool)

(declare-fun mapDefault!48592 () ValueCell!14855)

