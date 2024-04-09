; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99382 () Bool)

(assert start!99382)

(declare-fun b_free!24925 () Bool)

(declare-fun b_next!24925 () Bool)

(assert (=> start!99382 (= b_free!24925 (not b_next!24925))))

(declare-fun tp!87489 () Bool)

(declare-fun b_and!40731 () Bool)

(assert (=> start!99382 (= tp!87489 b_and!40731)))

(declare-fun b!1171451 () Bool)

(declare-fun e!665887 () Bool)

(declare-fun e!665886 () Bool)

(assert (=> b!1171451 (= e!665887 (not e!665886))))

(declare-fun res!777722 () Bool)

(assert (=> b!1171451 (=> res!777722 e!665886)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171451 (= res!777722 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75686 0))(
  ( (array!75687 (arr!36489 (Array (_ BitVec 32) (_ BitVec 64))) (size!37026 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75686)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171451 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38536 0))(
  ( (Unit!38537) )
))
(declare-fun lt!527698 () Unit!38536)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75686 (_ BitVec 64) (_ BitVec 32)) Unit!38536)

(assert (=> b!1171451 (= lt!527698 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171452 () Bool)

(declare-fun res!777719 () Bool)

(declare-fun e!665885 () Bool)

(assert (=> b!1171452 (=> (not res!777719) (not e!665885))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75686 (_ BitVec 32)) Bool)

(assert (=> b!1171452 (= res!777719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171454 () Bool)

(declare-fun e!665890 () Bool)

(declare-fun tp_is_empty!29455 () Bool)

(assert (=> b!1171454 (= e!665890 tp_is_empty!29455)))

(declare-fun b!1171455 () Bool)

(declare-fun res!777717 () Bool)

(declare-fun e!665889 () Bool)

(assert (=> b!1171455 (=> res!777717 e!665889)))

(declare-datatypes ((List!25750 0))(
  ( (Nil!25747) (Cons!25746 (h!26955 (_ BitVec 64)) (t!37674 List!25750)) )
))
(declare-fun noDuplicate!1631 (List!25750) Bool)

(assert (=> b!1171455 (= res!777717 (not (noDuplicate!1631 Nil!25747)))))

(declare-fun b!1171456 () Bool)

(declare-fun res!777726 () Bool)

(assert (=> b!1171456 (=> (not res!777726) (not e!665885))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44401 0))(
  ( (V!44402 (val!14784 Int)) )
))
(declare-datatypes ((ValueCell!14018 0))(
  ( (ValueCellFull!14018 (v!17423 V!44401)) (EmptyCell!14018) )
))
(declare-datatypes ((array!75688 0))(
  ( (array!75689 (arr!36490 (Array (_ BitVec 32) ValueCell!14018)) (size!37027 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75688)

(assert (=> b!1171456 (= res!777726 (and (= (size!37027 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37026 _keys!1208) (size!37027 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171457 () Bool)

(declare-fun res!777709 () Bool)

(assert (=> b!1171457 (=> (not res!777709) (not e!665885))))

(assert (=> b!1171457 (= res!777709 (= (select (arr!36489 _keys!1208) i!673) k!934))))

(declare-fun b!1171458 () Bool)

(declare-fun res!777716 () Bool)

(assert (=> b!1171458 (=> (not res!777716) (not e!665885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171458 (= res!777716 (validMask!0 mask!1564))))

(declare-fun b!1171459 () Bool)

(declare-fun e!665879 () Bool)

(assert (=> b!1171459 (= e!665879 e!665889)))

(declare-fun res!777725 () Bool)

(assert (=> b!1171459 (=> res!777725 e!665889)))

(assert (=> b!1171459 (= res!777725 (or (bvsge (size!37026 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37026 _keys!1208)) (bvsge from!1455 (size!37026 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!75686 (_ BitVec 32) List!25750) Bool)

(assert (=> b!1171459 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25747)))

(declare-fun lt!527696 () Unit!38536)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75686 (_ BitVec 32) (_ BitVec 32)) Unit!38536)

(assert (=> b!1171459 (= lt!527696 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171459 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527697 () Unit!38536)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38536)

(assert (=> b!1171459 (= lt!527697 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171460 () Bool)

(declare-fun res!777711 () Bool)

(assert (=> b!1171460 (=> (not res!777711) (not e!665887))))

(declare-fun lt!527692 () array!75686)

(assert (=> b!1171460 (= res!777711 (arrayNoDuplicates!0 lt!527692 #b00000000000000000000000000000000 Nil!25747))))

(declare-fun mapNonEmpty!46010 () Bool)

(declare-fun mapRes!46010 () Bool)

(declare-fun tp!87490 () Bool)

(assert (=> mapNonEmpty!46010 (= mapRes!46010 (and tp!87490 e!665890))))

(declare-fun mapKey!46010 () (_ BitVec 32))

(declare-fun mapRest!46010 () (Array (_ BitVec 32) ValueCell!14018))

(declare-fun mapValue!46010 () ValueCell!14018)

(assert (=> mapNonEmpty!46010 (= (arr!36490 _values!996) (store mapRest!46010 mapKey!46010 mapValue!46010))))

(declare-fun mapIsEmpty!46010 () Bool)

(assert (=> mapIsEmpty!46010 mapRes!46010))

(declare-fun b!1171461 () Bool)

(declare-fun e!665880 () Bool)

(assert (=> b!1171461 (= e!665886 e!665880)))

(declare-fun res!777727 () Bool)

(assert (=> b!1171461 (=> res!777727 e!665880)))

(assert (=> b!1171461 (= res!777727 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44401)

(declare-datatypes ((tuple2!18978 0))(
  ( (tuple2!18979 (_1!9499 (_ BitVec 64)) (_2!9499 V!44401)) )
))
(declare-datatypes ((List!25751 0))(
  ( (Nil!25748) (Cons!25747 (h!26956 tuple2!18978) (t!37675 List!25751)) )
))
(declare-datatypes ((ListLongMap!16959 0))(
  ( (ListLongMap!16960 (toList!8495 List!25751)) )
))
(declare-fun lt!527701 () ListLongMap!16959)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527694 () array!75688)

(declare-fun minValue!944 () V!44401)

(declare-fun getCurrentListMapNoExtraKeys!4927 (array!75686 array!75688 (_ BitVec 32) (_ BitVec 32) V!44401 V!44401 (_ BitVec 32) Int) ListLongMap!16959)

(assert (=> b!1171461 (= lt!527701 (getCurrentListMapNoExtraKeys!4927 lt!527692 lt!527694 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527702 () V!44401)

(assert (=> b!1171461 (= lt!527694 (array!75689 (store (arr!36490 _values!996) i!673 (ValueCellFull!14018 lt!527702)) (size!37027 _values!996)))))

(declare-fun dynLambda!2915 (Int (_ BitVec 64)) V!44401)

(assert (=> b!1171461 (= lt!527702 (dynLambda!2915 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527695 () ListLongMap!16959)

(assert (=> b!1171461 (= lt!527695 (getCurrentListMapNoExtraKeys!4927 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!665888 () Bool)

(declare-fun b!1171462 () Bool)

(assert (=> b!1171462 (= e!665888 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171463 () Bool)

(declare-fun e!665878 () Bool)

(declare-fun e!665882 () Bool)

(assert (=> b!1171463 (= e!665878 (and e!665882 mapRes!46010))))

(declare-fun condMapEmpty!46010 () Bool)

(declare-fun mapDefault!46010 () ValueCell!14018)

