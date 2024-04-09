; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99800 () Bool)

(assert start!99800)

(declare-fun b_free!25343 () Bool)

(declare-fun b_next!25343 () Bool)

(assert (=> start!99800 (= b_free!25343 (not b_next!25343))))

(declare-fun tp!88743 () Bool)

(declare-fun b_and!41567 () Bool)

(assert (=> start!99800 (= tp!88743 b_and!41567)))

(declare-fun b!1184855 () Bool)

(declare-fun e!673711 () Bool)

(assert (=> b!1184855 (= e!673711 true)))

(declare-datatypes ((V!44957 0))(
  ( (V!44958 (val!14993 Int)) )
))
(declare-datatypes ((tuple2!19350 0))(
  ( (tuple2!19351 (_1!9685 (_ BitVec 64)) (_2!9685 V!44957)) )
))
(declare-datatypes ((List!26112 0))(
  ( (Nil!26109) (Cons!26108 (h!27317 tuple2!19350) (t!38454 List!26112)) )
))
(declare-datatypes ((ListLongMap!17331 0))(
  ( (ListLongMap!17332 (toList!8681 List!26112)) )
))
(declare-fun lt!537474 () ListLongMap!17331)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!537476 () ListLongMap!17331)

(declare-fun -!1668 (ListLongMap!17331 (_ BitVec 64)) ListLongMap!17331)

(assert (=> b!1184855 (= (-!1668 lt!537474 k!934) lt!537476)))

(declare-datatypes ((Unit!39165 0))(
  ( (Unit!39166) )
))
(declare-fun lt!537481 () Unit!39165)

(declare-datatypes ((array!76514 0))(
  ( (array!76515 (arr!36903 (Array (_ BitVec 32) (_ BitVec 64))) (size!37440 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76514)

(declare-fun lt!537482 () ListLongMap!17331)

(declare-fun lt!537480 () V!44957)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun addRemoveCommutativeForDiffKeys!180 (ListLongMap!17331 (_ BitVec 64) V!44957 (_ BitVec 64)) Unit!39165)

(assert (=> b!1184855 (= lt!537481 (addRemoveCommutativeForDiffKeys!180 lt!537482 (select (arr!36903 _keys!1208) from!1455) lt!537480 k!934))))

(declare-fun lt!537479 () ListLongMap!17331)

(declare-fun lt!537492 () ListLongMap!17331)

(declare-fun lt!537484 () ListLongMap!17331)

(assert (=> b!1184855 (and (= lt!537479 lt!537474) (= lt!537492 lt!537484))))

(declare-fun lt!537489 () tuple2!19350)

(declare-fun +!3890 (ListLongMap!17331 tuple2!19350) ListLongMap!17331)

(assert (=> b!1184855 (= lt!537474 (+!3890 lt!537482 lt!537489))))

(assert (=> b!1184855 (not (= (select (arr!36903 _keys!1208) from!1455) k!934))))

(declare-fun lt!537475 () Unit!39165)

(declare-fun e!673716 () Unit!39165)

(assert (=> b!1184855 (= lt!537475 e!673716)))

(declare-fun c!117086 () Bool)

(assert (=> b!1184855 (= c!117086 (= (select (arr!36903 _keys!1208) from!1455) k!934))))

(declare-fun e!673714 () Bool)

(assert (=> b!1184855 e!673714))

(declare-fun res!787672 () Bool)

(assert (=> b!1184855 (=> (not res!787672) (not e!673714))))

(declare-fun lt!537486 () ListLongMap!17331)

(assert (=> b!1184855 (= res!787672 (= lt!537486 lt!537476))))

(assert (=> b!1184855 (= lt!537476 (+!3890 lt!537492 lt!537489))))

(assert (=> b!1184855 (= lt!537489 (tuple2!19351 (select (arr!36903 _keys!1208) from!1455) lt!537480))))

(declare-fun lt!537485 () V!44957)

(declare-datatypes ((ValueCell!14227 0))(
  ( (ValueCellFull!14227 (v!17632 V!44957)) (EmptyCell!14227) )
))
(declare-datatypes ((array!76516 0))(
  ( (array!76517 (arr!36904 (Array (_ BitVec 32) ValueCell!14227)) (size!37441 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76516)

(declare-fun get!18926 (ValueCell!14227 V!44957) V!44957)

(assert (=> b!1184855 (= lt!537480 (get!18926 (select (arr!36904 _values!996) from!1455) lt!537485))))

(declare-fun res!787669 () Bool)

(declare-fun e!673712 () Bool)

(assert (=> start!99800 (=> (not res!787669) (not e!673712))))

(assert (=> start!99800 (= res!787669 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37440 _keys!1208))))))

(assert (=> start!99800 e!673712))

(declare-fun tp_is_empty!29873 () Bool)

(assert (=> start!99800 tp_is_empty!29873))

(declare-fun array_inv!28044 (array!76514) Bool)

(assert (=> start!99800 (array_inv!28044 _keys!1208)))

(assert (=> start!99800 true))

(assert (=> start!99800 tp!88743))

(declare-fun e!673710 () Bool)

(declare-fun array_inv!28045 (array!76516) Bool)

(assert (=> start!99800 (and (array_inv!28045 _values!996) e!673710)))

(declare-fun b!1184856 () Bool)

(declare-fun res!787675 () Bool)

(assert (=> b!1184856 (=> (not res!787675) (not e!673712))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184856 (= res!787675 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37440 _keys!1208))))))

(declare-fun b!1184857 () Bool)

(declare-fun res!787667 () Bool)

(assert (=> b!1184857 (=> (not res!787667) (not e!673712))))

(declare-datatypes ((List!26113 0))(
  ( (Nil!26110) (Cons!26109 (h!27318 (_ BitVec 64)) (t!38455 List!26113)) )
))
(declare-fun arrayNoDuplicates!0 (array!76514 (_ BitVec 32) List!26113) Bool)

(assert (=> b!1184857 (= res!787667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26110))))

(declare-fun b!1184858 () Bool)

(declare-fun res!787677 () Bool)

(assert (=> b!1184858 (=> (not res!787677) (not e!673712))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184858 (= res!787677 (validMask!0 mask!1564))))

(declare-fun b!1184859 () Bool)

(declare-fun res!787666 () Bool)

(assert (=> b!1184859 (=> (not res!787666) (not e!673712))))

(assert (=> b!1184859 (= res!787666 (= (select (arr!36903 _keys!1208) i!673) k!934))))

(declare-fun b!1184860 () Bool)

(declare-fun e!673706 () Bool)

(assert (=> b!1184860 (= e!673706 e!673711)))

(declare-fun res!787668 () Bool)

(assert (=> b!1184860 (=> res!787668 e!673711)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184860 (= res!787668 (not (validKeyInArray!0 (select (arr!36903 _keys!1208) from!1455))))))

(assert (=> b!1184860 (= lt!537484 lt!537492)))

(assert (=> b!1184860 (= lt!537492 (-!1668 lt!537482 k!934))))

(declare-fun zeroValue!944 () V!44957)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!537487 () array!76516)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!537483 () array!76514)

(declare-fun minValue!944 () V!44957)

(declare-fun getCurrentListMapNoExtraKeys!5100 (array!76514 array!76516 (_ BitVec 32) (_ BitVec 32) V!44957 V!44957 (_ BitVec 32) Int) ListLongMap!17331)

(assert (=> b!1184860 (= lt!537484 (getCurrentListMapNoExtraKeys!5100 lt!537483 lt!537487 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184860 (= lt!537482 (getCurrentListMapNoExtraKeys!5100 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537490 () Unit!39165)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!883 (array!76514 array!76516 (_ BitVec 32) (_ BitVec 32) V!44957 V!44957 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39165)

(assert (=> b!1184860 (= lt!537490 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!883 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184861 () Bool)

(declare-fun res!787678 () Bool)

(assert (=> b!1184861 (=> (not res!787678) (not e!673712))))

(assert (=> b!1184861 (= res!787678 (validKeyInArray!0 k!934))))

(declare-fun b!1184862 () Bool)

(declare-fun Unit!39167 () Unit!39165)

(assert (=> b!1184862 (= e!673716 Unit!39167)))

(declare-fun lt!537478 () Unit!39165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39165)

(assert (=> b!1184862 (= lt!537478 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184862 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537488 () Unit!39165)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76514 (_ BitVec 32) (_ BitVec 32)) Unit!39165)

(assert (=> b!1184862 (= lt!537488 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1184862 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26110)))

(declare-fun lt!537491 () Unit!39165)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76514 (_ BitVec 64) (_ BitVec 32) List!26113) Unit!39165)

(assert (=> b!1184862 (= lt!537491 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26110))))

(assert (=> b!1184862 false))

(declare-fun b!1184863 () Bool)

(declare-fun res!787673 () Bool)

(assert (=> b!1184863 (=> (not res!787673) (not e!673712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76514 (_ BitVec 32)) Bool)

(assert (=> b!1184863 (= res!787673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184864 () Bool)

(declare-fun Unit!39168 () Unit!39165)

(assert (=> b!1184864 (= e!673716 Unit!39168)))

(declare-fun b!1184865 () Bool)

(declare-fun e!673715 () Bool)

(declare-fun e!673713 () Bool)

(assert (=> b!1184865 (= e!673715 (not e!673713))))

(declare-fun res!787665 () Bool)

(assert (=> b!1184865 (=> res!787665 e!673713)))

(assert (=> b!1184865 (= res!787665 (bvsgt from!1455 i!673))))

(assert (=> b!1184865 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!537477 () Unit!39165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76514 (_ BitVec 64) (_ BitVec 32)) Unit!39165)

(assert (=> b!1184865 (= lt!537477 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184866 () Bool)

(assert (=> b!1184866 (= e!673712 e!673715)))

(declare-fun res!787674 () Bool)

(assert (=> b!1184866 (=> (not res!787674) (not e!673715))))

(assert (=> b!1184866 (= res!787674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537483 mask!1564))))

(assert (=> b!1184866 (= lt!537483 (array!76515 (store (arr!36903 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37440 _keys!1208)))))

(declare-fun b!1184867 () Bool)

(assert (=> b!1184867 (= e!673713 e!673706)))

(declare-fun res!787670 () Bool)

(assert (=> b!1184867 (=> res!787670 e!673706)))

(assert (=> b!1184867 (= res!787670 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1184867 (= lt!537486 (getCurrentListMapNoExtraKeys!5100 lt!537483 lt!537487 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184867 (= lt!537487 (array!76517 (store (arr!36904 _values!996) i!673 (ValueCellFull!14227 lt!537485)) (size!37441 _values!996)))))

(declare-fun dynLambda!3063 (Int (_ BitVec 64)) V!44957)

(assert (=> b!1184867 (= lt!537485 (dynLambda!3063 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184867 (= lt!537479 (getCurrentListMapNoExtraKeys!5100 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184868 () Bool)

(declare-fun res!787671 () Bool)

(assert (=> b!1184868 (=> (not res!787671) (not e!673715))))

(assert (=> b!1184868 (= res!787671 (arrayNoDuplicates!0 lt!537483 #b00000000000000000000000000000000 Nil!26110))))

(declare-fun b!1184869 () Bool)

(declare-fun e!673709 () Bool)

(assert (=> b!1184869 (= e!673709 tp_is_empty!29873)))

(declare-fun mapNonEmpty!46637 () Bool)

(declare-fun mapRes!46637 () Bool)

(declare-fun tp!88744 () Bool)

(declare-fun e!673707 () Bool)

(assert (=> mapNonEmpty!46637 (= mapRes!46637 (and tp!88744 e!673707))))

(declare-fun mapRest!46637 () (Array (_ BitVec 32) ValueCell!14227))

(declare-fun mapValue!46637 () ValueCell!14227)

(declare-fun mapKey!46637 () (_ BitVec 32))

(assert (=> mapNonEmpty!46637 (= (arr!36904 _values!996) (store mapRest!46637 mapKey!46637 mapValue!46637))))

(declare-fun b!1184870 () Bool)

(declare-fun e!673717 () Bool)

(assert (=> b!1184870 (= e!673717 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184871 () Bool)

(assert (=> b!1184871 (= e!673710 (and e!673709 mapRes!46637))))

(declare-fun condMapEmpty!46637 () Bool)

(declare-fun mapDefault!46637 () ValueCell!14227)

