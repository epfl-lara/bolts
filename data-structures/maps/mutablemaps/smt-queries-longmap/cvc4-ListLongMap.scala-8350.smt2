; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101690 () Bool)

(assert start!101690)

(declare-fun b_free!26375 () Bool)

(declare-fun b_next!26375 () Bool)

(assert (=> start!101690 (= b_free!26375 (not b_next!26375))))

(declare-fun tp!92168 () Bool)

(declare-fun b_and!44003 () Bool)

(assert (=> start!101690 (= tp!92168 b_and!44003)))

(declare-fun mapNonEmpty!48514 () Bool)

(declare-fun mapRes!48514 () Bool)

(declare-fun tp!92169 () Bool)

(declare-fun e!694483 () Bool)

(assert (=> mapNonEmpty!48514 (= mapRes!48514 (and tp!92169 e!694483))))

(declare-fun mapKey!48514 () (_ BitVec 32))

(declare-datatypes ((V!46565 0))(
  ( (V!46566 (val!15596 Int)) )
))
(declare-datatypes ((ValueCell!14830 0))(
  ( (ValueCellFull!14830 (v!18258 V!46565)) (EmptyCell!14830) )
))
(declare-fun mapRest!48514 () (Array (_ BitVec 32) ValueCell!14830))

(declare-fun mapValue!48514 () ValueCell!14830)

(declare-datatypes ((array!78916 0))(
  ( (array!78917 (arr!38082 (Array (_ BitVec 32) ValueCell!14830)) (size!38619 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78916)

(assert (=> mapNonEmpty!48514 (= (arr!38082 _values!996) (store mapRest!48514 mapKey!48514 mapValue!48514))))

(declare-fun res!812542 () Bool)

(declare-fun e!694486 () Bool)

(assert (=> start!101690 (=> (not res!812542) (not e!694486))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78918 0))(
  ( (array!78919 (arr!38083 (Array (_ BitVec 32) (_ BitVec 64))) (size!38620 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78918)

(assert (=> start!101690 (= res!812542 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38620 _keys!1208))))))

(assert (=> start!101690 e!694486))

(declare-fun tp_is_empty!31079 () Bool)

(assert (=> start!101690 tp_is_empty!31079))

(declare-fun array_inv!28892 (array!78918) Bool)

(assert (=> start!101690 (array_inv!28892 _keys!1208)))

(assert (=> start!101690 true))

(assert (=> start!101690 tp!92168))

(declare-fun e!694482 () Bool)

(declare-fun array_inv!28893 (array!78916) Bool)

(assert (=> start!101690 (and (array_inv!28893 _values!996) e!694482)))

(declare-fun b!1222776 () Bool)

(declare-fun e!694481 () Bool)

(assert (=> b!1222776 (= e!694481 tp_is_empty!31079)))

(declare-fun b!1222777 () Bool)

(declare-fun res!812549 () Bool)

(assert (=> b!1222777 (=> (not res!812549) (not e!694486))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222777 (= res!812549 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38620 _keys!1208))))))

(declare-fun b!1222778 () Bool)

(declare-fun res!812541 () Bool)

(assert (=> b!1222778 (=> (not res!812541) (not e!694486))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222778 (= res!812541 (validKeyInArray!0 k!934))))

(declare-fun b!1222779 () Bool)

(declare-fun e!694484 () Bool)

(declare-fun e!694487 () Bool)

(assert (=> b!1222779 (= e!694484 e!694487)))

(declare-fun res!812545 () Bool)

(assert (=> b!1222779 (=> res!812545 e!694487)))

(assert (=> b!1222779 (= res!812545 (not (validKeyInArray!0 (select (arr!38083 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20232 0))(
  ( (tuple2!20233 (_1!10126 (_ BitVec 64)) (_2!10126 V!46565)) )
))
(declare-datatypes ((List!27045 0))(
  ( (Nil!27042) (Cons!27041 (h!28250 tuple2!20232) (t!40407 List!27045)) )
))
(declare-datatypes ((ListLongMap!18213 0))(
  ( (ListLongMap!18214 (toList!9122 List!27045)) )
))
(declare-fun lt!556393 () ListLongMap!18213)

(declare-fun lt!556388 () ListLongMap!18213)

(assert (=> b!1222779 (= lt!556393 lt!556388)))

(declare-fun lt!556390 () ListLongMap!18213)

(declare-fun -!1964 (ListLongMap!18213 (_ BitVec 64)) ListLongMap!18213)

(assert (=> b!1222779 (= lt!556388 (-!1964 lt!556390 k!934))))

(declare-fun zeroValue!944 () V!46565)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!556397 () array!78918)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556400 () array!78916)

(declare-fun minValue!944 () V!46565)

(declare-fun getCurrentListMapNoExtraKeys!5520 (array!78918 array!78916 (_ BitVec 32) (_ BitVec 32) V!46565 V!46565 (_ BitVec 32) Int) ListLongMap!18213)

(assert (=> b!1222779 (= lt!556393 (getCurrentListMapNoExtraKeys!5520 lt!556397 lt!556400 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222779 (= lt!556390 (getCurrentListMapNoExtraKeys!5520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40427 0))(
  ( (Unit!40428) )
))
(declare-fun lt!556398 () Unit!40427)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1166 (array!78918 array!78916 (_ BitVec 32) (_ BitVec 32) V!46565 V!46565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40427)

(assert (=> b!1222779 (= lt!556398 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1166 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222780 () Bool)

(declare-fun e!694479 () Unit!40427)

(declare-fun Unit!40429 () Unit!40427)

(assert (=> b!1222780 (= e!694479 Unit!40429)))

(declare-fun lt!556401 () Unit!40427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78918 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40427)

(assert (=> b!1222780 (= lt!556401 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222780 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556395 () Unit!40427)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78918 (_ BitVec 32) (_ BitVec 32)) Unit!40427)

(assert (=> b!1222780 (= lt!556395 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27046 0))(
  ( (Nil!27043) (Cons!27042 (h!28251 (_ BitVec 64)) (t!40408 List!27046)) )
))
(declare-fun arrayNoDuplicates!0 (array!78918 (_ BitVec 32) List!27046) Bool)

(assert (=> b!1222780 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27043)))

(declare-fun lt!556396 () Unit!40427)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78918 (_ BitVec 64) (_ BitVec 32) List!27046) Unit!40427)

(assert (=> b!1222780 (= lt!556396 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27043))))

(assert (=> b!1222780 false))

(declare-fun b!1222781 () Bool)

(declare-fun e!694485 () Bool)

(assert (=> b!1222781 (= e!694485 e!694484)))

(declare-fun res!812552 () Bool)

(assert (=> b!1222781 (=> res!812552 e!694484)))

(assert (=> b!1222781 (= res!812552 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!556391 () ListLongMap!18213)

(assert (=> b!1222781 (= lt!556391 (getCurrentListMapNoExtraKeys!5520 lt!556397 lt!556400 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556399 () V!46565)

(assert (=> b!1222781 (= lt!556400 (array!78917 (store (arr!38082 _values!996) i!673 (ValueCellFull!14830 lt!556399)) (size!38619 _values!996)))))

(declare-fun dynLambda!3417 (Int (_ BitVec 64)) V!46565)

(assert (=> b!1222781 (= lt!556399 (dynLambda!3417 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556394 () ListLongMap!18213)

(assert (=> b!1222781 (= lt!556394 (getCurrentListMapNoExtraKeys!5520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!694477 () Bool)

(declare-fun b!1222782 () Bool)

(assert (=> b!1222782 (= e!694477 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222783 () Bool)

(declare-fun e!694476 () Bool)

(assert (=> b!1222783 (= e!694486 e!694476)))

(declare-fun res!812540 () Bool)

(assert (=> b!1222783 (=> (not res!812540) (not e!694476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78918 (_ BitVec 32)) Bool)

(assert (=> b!1222783 (= res!812540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556397 mask!1564))))

(assert (=> b!1222783 (= lt!556397 (array!78919 (store (arr!38083 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38620 _keys!1208)))))

(declare-fun b!1222784 () Bool)

(declare-fun Unit!40430 () Unit!40427)

(assert (=> b!1222784 (= e!694479 Unit!40430)))

(declare-fun b!1222785 () Bool)

(assert (=> b!1222785 (= e!694487 (bvslt from!1455 (size!38620 _keys!1208)))))

(assert (=> b!1222785 (not (= (select (arr!38083 _keys!1208) from!1455) k!934))))

(declare-fun lt!556392 () Unit!40427)

(assert (=> b!1222785 (= lt!556392 e!694479)))

(declare-fun c!120288 () Bool)

(assert (=> b!1222785 (= c!120288 (= (select (arr!38083 _keys!1208) from!1455) k!934))))

(declare-fun e!694480 () Bool)

(assert (=> b!1222785 e!694480))

(declare-fun res!812547 () Bool)

(assert (=> b!1222785 (=> (not res!812547) (not e!694480))))

(declare-fun +!4087 (ListLongMap!18213 tuple2!20232) ListLongMap!18213)

(declare-fun get!19483 (ValueCell!14830 V!46565) V!46565)

(assert (=> b!1222785 (= res!812547 (= lt!556391 (+!4087 lt!556388 (tuple2!20233 (select (arr!38083 _keys!1208) from!1455) (get!19483 (select (arr!38082 _values!996) from!1455) lt!556399)))))))

(declare-fun b!1222786 () Bool)

(assert (=> b!1222786 (= e!694476 (not e!694485))))

(declare-fun res!812548 () Bool)

(assert (=> b!1222786 (=> res!812548 e!694485)))

(assert (=> b!1222786 (= res!812548 (bvsgt from!1455 i!673))))

(assert (=> b!1222786 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!556389 () Unit!40427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78918 (_ BitVec 64) (_ BitVec 32)) Unit!40427)

(assert (=> b!1222786 (= lt!556389 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222787 () Bool)

(declare-fun res!812544 () Bool)

(assert (=> b!1222787 (=> (not res!812544) (not e!694486))))

(assert (=> b!1222787 (= res!812544 (= (select (arr!38083 _keys!1208) i!673) k!934))))

(declare-fun b!1222788 () Bool)

(assert (=> b!1222788 (= e!694483 tp_is_empty!31079)))

(declare-fun b!1222789 () Bool)

(declare-fun res!812543 () Bool)

(assert (=> b!1222789 (=> (not res!812543) (not e!694486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222789 (= res!812543 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48514 () Bool)

(assert (=> mapIsEmpty!48514 mapRes!48514))

(declare-fun b!1222790 () Bool)

(declare-fun res!812551 () Bool)

(assert (=> b!1222790 (=> (not res!812551) (not e!694486))))

(assert (=> b!1222790 (= res!812551 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27043))))

(declare-fun b!1222791 () Bool)

(assert (=> b!1222791 (= e!694482 (and e!694481 mapRes!48514))))

(declare-fun condMapEmpty!48514 () Bool)

(declare-fun mapDefault!48514 () ValueCell!14830)

