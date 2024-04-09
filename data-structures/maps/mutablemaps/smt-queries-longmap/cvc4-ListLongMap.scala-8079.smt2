; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99380 () Bool)

(assert start!99380)

(declare-fun b_free!24923 () Bool)

(declare-fun b_next!24923 () Bool)

(assert (=> start!99380 (= b_free!24923 (not b_next!24923))))

(declare-fun tp!87484 () Bool)

(declare-fun b_and!40727 () Bool)

(assert (=> start!99380 (= tp!87484 b_and!40727)))

(declare-fun b!1171383 () Bool)

(declare-fun e!665846 () Bool)

(declare-fun tp_is_empty!29453 () Bool)

(assert (=> b!1171383 (= e!665846 tp_is_empty!29453)))

(declare-fun mapIsEmpty!46007 () Bool)

(declare-fun mapRes!46007 () Bool)

(assert (=> mapIsEmpty!46007 mapRes!46007))

(declare-fun b!1171384 () Bool)

(declare-fun e!665851 () Bool)

(declare-fun e!665839 () Bool)

(assert (=> b!1171384 (= e!665851 e!665839)))

(declare-fun res!777665 () Bool)

(assert (=> b!1171384 (=> (not res!777665) (not e!665839))))

(declare-datatypes ((array!75682 0))(
  ( (array!75683 (arr!36487 (Array (_ BitVec 32) (_ BitVec 64))) (size!37024 (_ BitVec 32))) )
))
(declare-fun lt!527664 () array!75682)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75682 (_ BitVec 32)) Bool)

(assert (=> b!1171384 (= res!777665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527664 mask!1564))))

(declare-fun _keys!1208 () array!75682)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171384 (= lt!527664 (array!75683 (store (arr!36487 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37024 _keys!1208)))))

(declare-fun b!1171385 () Bool)

(declare-fun res!777655 () Bool)

(assert (=> b!1171385 (=> (not res!777655) (not e!665851))))

(assert (=> b!1171385 (= res!777655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46007 () Bool)

(declare-fun tp!87483 () Bool)

(declare-fun e!665849 () Bool)

(assert (=> mapNonEmpty!46007 (= mapRes!46007 (and tp!87483 e!665849))))

(declare-datatypes ((V!44397 0))(
  ( (V!44398 (val!14783 Int)) )
))
(declare-datatypes ((ValueCell!14017 0))(
  ( (ValueCellFull!14017 (v!17422 V!44397)) (EmptyCell!14017) )
))
(declare-fun mapValue!46007 () ValueCell!14017)

(declare-fun mapKey!46007 () (_ BitVec 32))

(declare-fun mapRest!46007 () (Array (_ BitVec 32) ValueCell!14017))

(declare-datatypes ((array!75684 0))(
  ( (array!75685 (arr!36488 (Array (_ BitVec 32) ValueCell!14017)) (size!37025 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75684)

(assert (=> mapNonEmpty!46007 (= (arr!36488 _values!996) (store mapRest!46007 mapKey!46007 mapValue!46007))))

(declare-fun res!777661 () Bool)

(assert (=> start!99380 (=> (not res!777661) (not e!665851))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99380 (= res!777661 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37024 _keys!1208))))))

(assert (=> start!99380 e!665851))

(assert (=> start!99380 tp_is_empty!29453))

(declare-fun array_inv!27768 (array!75682) Bool)

(assert (=> start!99380 (array_inv!27768 _keys!1208)))

(assert (=> start!99380 true))

(assert (=> start!99380 tp!87484))

(declare-fun e!665842 () Bool)

(declare-fun array_inv!27769 (array!75684) Bool)

(assert (=> start!99380 (and (array_inv!27769 _values!996) e!665842)))

(declare-fun b!1171386 () Bool)

(declare-fun res!777664 () Bool)

(declare-fun e!665840 () Bool)

(assert (=> b!1171386 (=> res!777664 e!665840)))

(declare-datatypes ((List!25748 0))(
  ( (Nil!25745) (Cons!25744 (h!26953 (_ BitVec 64)) (t!37670 List!25748)) )
))
(declare-fun noDuplicate!1630 (List!25748) Bool)

(assert (=> b!1171386 (= res!777664 (not (noDuplicate!1630 Nil!25745)))))

(declare-fun b!1171387 () Bool)

(declare-fun e!665841 () Bool)

(declare-fun e!665844 () Bool)

(assert (=> b!1171387 (= e!665841 e!665844)))

(declare-fun res!777653 () Bool)

(assert (=> b!1171387 (=> res!777653 e!665844)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1171387 (= res!777653 (not (= (select (arr!36487 _keys!1208) from!1455) k!934)))))

(declare-fun b!1171388 () Bool)

(declare-fun res!777652 () Bool)

(assert (=> b!1171388 (=> (not res!777652) (not e!665851))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1171388 (= res!777652 (and (= (size!37025 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37024 _keys!1208) (size!37025 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171389 () Bool)

(declare-fun e!665843 () Bool)

(declare-fun e!665845 () Bool)

(assert (=> b!1171389 (= e!665843 e!665845)))

(declare-fun res!777666 () Bool)

(assert (=> b!1171389 (=> res!777666 e!665845)))

(assert (=> b!1171389 (= res!777666 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44397)

(declare-fun lt!527660 () array!75684)

(declare-fun minValue!944 () V!44397)

(declare-datatypes ((tuple2!18976 0))(
  ( (tuple2!18977 (_1!9498 (_ BitVec 64)) (_2!9498 V!44397)) )
))
(declare-datatypes ((List!25749 0))(
  ( (Nil!25746) (Cons!25745 (h!26954 tuple2!18976) (t!37671 List!25749)) )
))
(declare-datatypes ((ListLongMap!16957 0))(
  ( (ListLongMap!16958 (toList!8494 List!25749)) )
))
(declare-fun lt!527662 () ListLongMap!16957)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4926 (array!75682 array!75684 (_ BitVec 32) (_ BitVec 32) V!44397 V!44397 (_ BitVec 32) Int) ListLongMap!16957)

(assert (=> b!1171389 (= lt!527662 (getCurrentListMapNoExtraKeys!4926 lt!527664 lt!527660 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527653 () V!44397)

(assert (=> b!1171389 (= lt!527660 (array!75685 (store (arr!36488 _values!996) i!673 (ValueCellFull!14017 lt!527653)) (size!37025 _values!996)))))

(declare-fun dynLambda!2914 (Int (_ BitVec 64)) V!44397)

(assert (=> b!1171389 (= lt!527653 (dynLambda!2914 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527656 () ListLongMap!16957)

(assert (=> b!1171389 (= lt!527656 (getCurrentListMapNoExtraKeys!4926 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171390 () Bool)

(declare-fun res!777662 () Bool)

(assert (=> b!1171390 (=> (not res!777662) (not e!665851))))

(declare-fun arrayNoDuplicates!0 (array!75682 (_ BitVec 32) List!25748) Bool)

(assert (=> b!1171390 (= res!777662 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25745))))

(declare-fun b!1171391 () Bool)

(declare-fun e!665850 () Bool)

(assert (=> b!1171391 (= e!665845 e!665850)))

(declare-fun res!777658 () Bool)

(assert (=> b!1171391 (=> res!777658 e!665850)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171391 (= res!777658 (not (validKeyInArray!0 (select (arr!36487 _keys!1208) from!1455))))))

(declare-fun lt!527661 () ListLongMap!16957)

(declare-fun lt!527655 () ListLongMap!16957)

(assert (=> b!1171391 (= lt!527661 lt!527655)))

(declare-fun lt!527654 () ListLongMap!16957)

(declare-fun -!1511 (ListLongMap!16957 (_ BitVec 64)) ListLongMap!16957)

(assert (=> b!1171391 (= lt!527655 (-!1511 lt!527654 k!934))))

(assert (=> b!1171391 (= lt!527661 (getCurrentListMapNoExtraKeys!4926 lt!527664 lt!527660 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171391 (= lt!527654 (getCurrentListMapNoExtraKeys!4926 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38534 0))(
  ( (Unit!38535) )
))
(declare-fun lt!527659 () Unit!38534)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!735 (array!75682 array!75684 (_ BitVec 32) (_ BitVec 32) V!44397 V!44397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38534)

(assert (=> b!1171391 (= lt!527659 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!735 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171392 () Bool)

(declare-fun res!777669 () Bool)

(assert (=> b!1171392 (=> (not res!777669) (not e!665851))))

(assert (=> b!1171392 (= res!777669 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37024 _keys!1208))))))

(declare-fun b!1171393 () Bool)

(assert (=> b!1171393 (= e!665839 (not e!665843))))

(declare-fun res!777654 () Bool)

(assert (=> b!1171393 (=> res!777654 e!665843)))

(assert (=> b!1171393 (= res!777654 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171393 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527652 () Unit!38534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75682 (_ BitVec 64) (_ BitVec 32)) Unit!38534)

(assert (=> b!1171393 (= lt!527652 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171394 () Bool)

(declare-fun e!665847 () Bool)

(assert (=> b!1171394 (= e!665850 e!665847)))

(declare-fun res!777670 () Bool)

(assert (=> b!1171394 (=> res!777670 e!665847)))

(assert (=> b!1171394 (= res!777670 (not (= (select (arr!36487 _keys!1208) from!1455) k!934)))))

(assert (=> b!1171394 e!665841))

(declare-fun res!777663 () Bool)

(assert (=> b!1171394 (=> (not res!777663) (not e!665841))))

(declare-fun +!3734 (ListLongMap!16957 tuple2!18976) ListLongMap!16957)

(declare-fun get!18641 (ValueCell!14017 V!44397) V!44397)

(assert (=> b!1171394 (= res!777663 (= lt!527662 (+!3734 lt!527655 (tuple2!18977 (select (arr!36487 _keys!1208) from!1455) (get!18641 (select (arr!36488 _values!996) from!1455) lt!527653)))))))

(declare-fun b!1171395 () Bool)

(assert (=> b!1171395 (= e!665847 e!665840)))

(declare-fun res!777657 () Bool)

(assert (=> b!1171395 (=> res!777657 e!665840)))

(assert (=> b!1171395 (= res!777657 (or (bvsge (size!37024 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37024 _keys!1208)) (bvsge from!1455 (size!37024 _keys!1208))))))

(assert (=> b!1171395 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25745)))

(declare-fun lt!527657 () Unit!38534)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75682 (_ BitVec 32) (_ BitVec 32)) Unit!38534)

(assert (=> b!1171395 (= lt!527657 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171395 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527663 () Unit!38534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38534)

(assert (=> b!1171395 (= lt!527663 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171396 () Bool)

(declare-fun res!777668 () Bool)

(assert (=> b!1171396 (=> (not res!777668) (not e!665839))))

(assert (=> b!1171396 (= res!777668 (arrayNoDuplicates!0 lt!527664 #b00000000000000000000000000000000 Nil!25745))))

(declare-fun b!1171397 () Bool)

(declare-fun res!777667 () Bool)

(assert (=> b!1171397 (=> (not res!777667) (not e!665851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171397 (= res!777667 (validMask!0 mask!1564))))

(declare-fun b!1171398 () Bool)

(declare-fun res!777660 () Bool)

(assert (=> b!1171398 (=> res!777660 e!665840)))

(declare-fun contains!6865 (List!25748 (_ BitVec 64)) Bool)

(assert (=> b!1171398 (= res!777660 (contains!6865 Nil!25745 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171399 () Bool)

(assert (=> b!1171399 (= e!665842 (and e!665846 mapRes!46007))))

(declare-fun condMapEmpty!46007 () Bool)

(declare-fun mapDefault!46007 () ValueCell!14017)

