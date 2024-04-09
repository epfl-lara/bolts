; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98014 () Bool)

(assert start!98014)

(declare-fun b_free!23679 () Bool)

(declare-fun b_next!23679 () Bool)

(assert (=> start!98014 (= b_free!23679 (not b_next!23679))))

(declare-fun tp!83741 () Bool)

(declare-fun b_and!38163 () Bool)

(assert (=> start!98014 (= tp!83741 b_and!38163)))

(declare-fun b!1123392 () Bool)

(declare-fun res!750628 () Bool)

(declare-fun e!639587 () Bool)

(assert (=> b!1123392 (=> (not res!750628) (not e!639587))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123392 (= res!750628 (validKeyInArray!0 k0!934))))

(declare-fun b!1123393 () Bool)

(declare-fun res!750629 () Bool)

(assert (=> b!1123393 (=> (not res!750629) (not e!639587))))

(declare-datatypes ((array!73244 0))(
  ( (array!73245 (arr!35271 (Array (_ BitVec 32) (_ BitVec 64))) (size!35808 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73244)

(declare-datatypes ((List!24692 0))(
  ( (Nil!24689) (Cons!24688 (h!25897 (_ BitVec 64)) (t!35370 List!24692)) )
))
(declare-fun arrayNoDuplicates!0 (array!73244 (_ BitVec 32) List!24692) Bool)

(assert (=> b!1123393 (= res!750629 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24689))))

(declare-datatypes ((V!42739 0))(
  ( (V!42740 (val!14161 Int)) )
))
(declare-datatypes ((tuple2!17858 0))(
  ( (tuple2!17859 (_1!8939 (_ BitVec 64)) (_2!8939 V!42739)) )
))
(declare-datatypes ((List!24693 0))(
  ( (Nil!24690) (Cons!24689 (h!25898 tuple2!17858) (t!35371 List!24693)) )
))
(declare-datatypes ((ListLongMap!15839 0))(
  ( (ListLongMap!15840 (toList!7935 List!24693)) )
))
(declare-fun call!47320 () ListLongMap!15839)

(declare-fun b!1123395 () Bool)

(declare-fun call!47321 () ListLongMap!15839)

(declare-fun e!639593 () Bool)

(declare-fun -!1093 (ListLongMap!15839 (_ BitVec 64)) ListLongMap!15839)

(assert (=> b!1123395 (= e!639593 (= call!47321 (-!1093 call!47320 k0!934)))))

(declare-fun b!1123396 () Bool)

(declare-fun res!750623 () Bool)

(assert (=> b!1123396 (=> (not res!750623) (not e!639587))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123396 (= res!750623 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35808 _keys!1208))))))

(declare-fun b!1123397 () Bool)

(declare-fun res!750621 () Bool)

(assert (=> b!1123397 (=> (not res!750621) (not e!639587))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13395 0))(
  ( (ValueCellFull!13395 (v!16795 V!42739)) (EmptyCell!13395) )
))
(declare-datatypes ((array!73246 0))(
  ( (array!73247 (arr!35272 (Array (_ BitVec 32) ValueCell!13395)) (size!35809 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73246)

(assert (=> b!1123397 (= res!750621 (and (= (size!35809 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35808 _keys!1208) (size!35809 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123398 () Bool)

(declare-fun res!750626 () Bool)

(declare-fun e!639590 () Bool)

(assert (=> b!1123398 (=> res!750626 e!639590)))

(declare-fun zeroValue!944 () V!42739)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42739)

(declare-fun contains!6452 (ListLongMap!15839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4395 (array!73244 array!73246 (_ BitVec 32) (_ BitVec 32) V!42739 V!42739 (_ BitVec 32) Int) ListLongMap!15839)

(assert (=> b!1123398 (= res!750626 (not (contains!6452 (getCurrentListMapNoExtraKeys!4395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934)))))

(declare-fun b!1123399 () Bool)

(assert (=> b!1123399 (= e!639590 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35808 _keys!1208)))))))

(declare-fun b!1123400 () Bool)

(declare-fun res!750625 () Bool)

(declare-fun e!639592 () Bool)

(assert (=> b!1123400 (=> (not res!750625) (not e!639592))))

(declare-fun lt!499054 () array!73244)

(assert (=> b!1123400 (= res!750625 (arrayNoDuplicates!0 lt!499054 #b00000000000000000000000000000000 Nil!24689))))

(declare-fun b!1123401 () Bool)

(assert (=> b!1123401 (= e!639587 e!639592)))

(declare-fun res!750630 () Bool)

(assert (=> b!1123401 (=> (not res!750630) (not e!639592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73244 (_ BitVec 32)) Bool)

(assert (=> b!1123401 (= res!750630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499054 mask!1564))))

(assert (=> b!1123401 (= lt!499054 (array!73245 (store (arr!35271 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35808 _keys!1208)))))

(declare-fun b!1123402 () Bool)

(declare-fun e!639585 () Bool)

(assert (=> b!1123402 (= e!639585 e!639590)))

(declare-fun res!750619 () Bool)

(assert (=> b!1123402 (=> res!750619 e!639590)))

(assert (=> b!1123402 (= res!750619 (not (= (select (arr!35271 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1123402 e!639593))

(declare-fun c!109469 () Bool)

(assert (=> b!1123402 (= c!109469 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36775 0))(
  ( (Unit!36776) )
))
(declare-fun lt!499051 () Unit!36775)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!345 (array!73244 array!73246 (_ BitVec 32) (_ BitVec 32) V!42739 V!42739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36775)

(assert (=> b!1123402 (= lt!499051 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!345 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!499055 () array!73246)

(declare-fun bm!47317 () Bool)

(assert (=> bm!47317 (= call!47321 (getCurrentListMapNoExtraKeys!4395 lt!499054 lt!499055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!750618 () Bool)

(assert (=> start!98014 (=> (not res!750618) (not e!639587))))

(assert (=> start!98014 (= res!750618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35808 _keys!1208))))))

(assert (=> start!98014 e!639587))

(declare-fun tp_is_empty!28209 () Bool)

(assert (=> start!98014 tp_is_empty!28209))

(declare-fun array_inv!26954 (array!73244) Bool)

(assert (=> start!98014 (array_inv!26954 _keys!1208)))

(assert (=> start!98014 true))

(assert (=> start!98014 tp!83741))

(declare-fun e!639584 () Bool)

(declare-fun array_inv!26955 (array!73246) Bool)

(assert (=> start!98014 (and (array_inv!26955 _values!996) e!639584)))

(declare-fun b!1123394 () Bool)

(declare-fun e!639591 () Bool)

(assert (=> b!1123394 (= e!639591 e!639585)))

(declare-fun res!750620 () Bool)

(assert (=> b!1123394 (=> res!750620 e!639585)))

(assert (=> b!1123394 (= res!750620 (not (= from!1455 i!673)))))

(declare-fun lt!499056 () ListLongMap!15839)

(assert (=> b!1123394 (= lt!499056 (getCurrentListMapNoExtraKeys!4395 lt!499054 lt!499055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2487 (Int (_ BitVec 64)) V!42739)

(assert (=> b!1123394 (= lt!499055 (array!73247 (store (arr!35272 _values!996) i!673 (ValueCellFull!13395 (dynLambda!2487 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35809 _values!996)))))

(declare-fun lt!499053 () ListLongMap!15839)

(assert (=> b!1123394 (= lt!499053 (getCurrentListMapNoExtraKeys!4395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47318 () Bool)

(assert (=> bm!47318 (= call!47320 (getCurrentListMapNoExtraKeys!4395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123403 () Bool)

(assert (=> b!1123403 (= e!639593 (= call!47321 call!47320))))

(declare-fun b!1123404 () Bool)

(declare-fun e!639589 () Bool)

(assert (=> b!1123404 (= e!639589 tp_is_empty!28209)))

(declare-fun b!1123405 () Bool)

(declare-fun res!750624 () Bool)

(assert (=> b!1123405 (=> (not res!750624) (not e!639587))))

(assert (=> b!1123405 (= res!750624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123406 () Bool)

(declare-fun res!750617 () Bool)

(assert (=> b!1123406 (=> (not res!750617) (not e!639587))))

(assert (=> b!1123406 (= res!750617 (= (select (arr!35271 _keys!1208) i!673) k0!934))))

(declare-fun b!1123407 () Bool)

(declare-fun mapRes!44131 () Bool)

(assert (=> b!1123407 (= e!639584 (and e!639589 mapRes!44131))))

(declare-fun condMapEmpty!44131 () Bool)

(declare-fun mapDefault!44131 () ValueCell!13395)

(assert (=> b!1123407 (= condMapEmpty!44131 (= (arr!35272 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13395)) mapDefault!44131)))))

(declare-fun mapNonEmpty!44131 () Bool)

(declare-fun tp!83742 () Bool)

(declare-fun e!639588 () Bool)

(assert (=> mapNonEmpty!44131 (= mapRes!44131 (and tp!83742 e!639588))))

(declare-fun mapRest!44131 () (Array (_ BitVec 32) ValueCell!13395))

(declare-fun mapValue!44131 () ValueCell!13395)

(declare-fun mapKey!44131 () (_ BitVec 32))

(assert (=> mapNonEmpty!44131 (= (arr!35272 _values!996) (store mapRest!44131 mapKey!44131 mapValue!44131))))

(declare-fun b!1123408 () Bool)

(assert (=> b!1123408 (= e!639592 (not e!639591))))

(declare-fun res!750627 () Bool)

(assert (=> b!1123408 (=> res!750627 e!639591)))

(assert (=> b!1123408 (= res!750627 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123408 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499052 () Unit!36775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73244 (_ BitVec 64) (_ BitVec 32)) Unit!36775)

(assert (=> b!1123408 (= lt!499052 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!44131 () Bool)

(assert (=> mapIsEmpty!44131 mapRes!44131))

(declare-fun b!1123409 () Bool)

(declare-fun res!750622 () Bool)

(assert (=> b!1123409 (=> (not res!750622) (not e!639587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123409 (= res!750622 (validMask!0 mask!1564))))

(declare-fun b!1123410 () Bool)

(assert (=> b!1123410 (= e!639588 tp_is_empty!28209)))

(assert (= (and start!98014 res!750618) b!1123409))

(assert (= (and b!1123409 res!750622) b!1123397))

(assert (= (and b!1123397 res!750621) b!1123405))

(assert (= (and b!1123405 res!750624) b!1123393))

(assert (= (and b!1123393 res!750629) b!1123396))

(assert (= (and b!1123396 res!750623) b!1123392))

(assert (= (and b!1123392 res!750628) b!1123406))

(assert (= (and b!1123406 res!750617) b!1123401))

(assert (= (and b!1123401 res!750630) b!1123400))

(assert (= (and b!1123400 res!750625) b!1123408))

(assert (= (and b!1123408 (not res!750627)) b!1123394))

(assert (= (and b!1123394 (not res!750620)) b!1123402))

(assert (= (and b!1123402 c!109469) b!1123395))

(assert (= (and b!1123402 (not c!109469)) b!1123403))

(assert (= (or b!1123395 b!1123403) bm!47317))

(assert (= (or b!1123395 b!1123403) bm!47318))

(assert (= (and b!1123402 (not res!750619)) b!1123398))

(assert (= (and b!1123398 (not res!750626)) b!1123399))

(assert (= (and b!1123407 condMapEmpty!44131) mapIsEmpty!44131))

(assert (= (and b!1123407 (not condMapEmpty!44131)) mapNonEmpty!44131))

(get-info :version)

(assert (= (and mapNonEmpty!44131 ((_ is ValueCellFull!13395) mapValue!44131)) b!1123410))

(assert (= (and b!1123407 ((_ is ValueCellFull!13395) mapDefault!44131)) b!1123404))

(assert (= start!98014 b!1123407))

(declare-fun b_lambda!18683 () Bool)

(assert (=> (not b_lambda!18683) (not b!1123394)))

(declare-fun t!35369 () Bool)

(declare-fun tb!8499 () Bool)

(assert (=> (and start!98014 (= defaultEntry!1004 defaultEntry!1004) t!35369) tb!8499))

(declare-fun result!17551 () Bool)

(assert (=> tb!8499 (= result!17551 tp_is_empty!28209)))

(assert (=> b!1123394 t!35369))

(declare-fun b_and!38165 () Bool)

(assert (= b_and!38163 (and (=> t!35369 result!17551) b_and!38165)))

(declare-fun m!1037977 () Bool)

(assert (=> mapNonEmpty!44131 m!1037977))

(declare-fun m!1037979 () Bool)

(assert (=> b!1123392 m!1037979))

(declare-fun m!1037981 () Bool)

(assert (=> b!1123395 m!1037981))

(declare-fun m!1037983 () Bool)

(assert (=> b!1123409 m!1037983))

(declare-fun m!1037985 () Bool)

(assert (=> b!1123393 m!1037985))

(declare-fun m!1037987 () Bool)

(assert (=> b!1123405 m!1037987))

(declare-fun m!1037989 () Bool)

(assert (=> b!1123406 m!1037989))

(declare-fun m!1037991 () Bool)

(assert (=> bm!47317 m!1037991))

(declare-fun m!1037993 () Bool)

(assert (=> bm!47318 m!1037993))

(declare-fun m!1037995 () Bool)

(assert (=> b!1123400 m!1037995))

(declare-fun m!1037997 () Bool)

(assert (=> b!1123402 m!1037997))

(declare-fun m!1037999 () Bool)

(assert (=> b!1123402 m!1037999))

(declare-fun m!1038001 () Bool)

(assert (=> start!98014 m!1038001))

(declare-fun m!1038003 () Bool)

(assert (=> start!98014 m!1038003))

(declare-fun m!1038005 () Bool)

(assert (=> b!1123394 m!1038005))

(declare-fun m!1038007 () Bool)

(assert (=> b!1123394 m!1038007))

(declare-fun m!1038009 () Bool)

(assert (=> b!1123394 m!1038009))

(declare-fun m!1038011 () Bool)

(assert (=> b!1123394 m!1038011))

(declare-fun m!1038013 () Bool)

(assert (=> b!1123408 m!1038013))

(declare-fun m!1038015 () Bool)

(assert (=> b!1123408 m!1038015))

(assert (=> b!1123398 m!1037993))

(assert (=> b!1123398 m!1037993))

(declare-fun m!1038017 () Bool)

(assert (=> b!1123398 m!1038017))

(declare-fun m!1038019 () Bool)

(assert (=> b!1123401 m!1038019))

(declare-fun m!1038021 () Bool)

(assert (=> b!1123401 m!1038021))

(check-sat (not bm!47317) (not mapNonEmpty!44131) (not b!1123402) (not b!1123405) b_and!38165 (not b!1123394) tp_is_empty!28209 (not start!98014) (not bm!47318) (not b!1123409) (not b!1123395) (not b!1123400) (not b!1123408) (not b!1123392) (not b!1123401) (not b_next!23679) (not b!1123398) (not b_lambda!18683) (not b!1123393))
(check-sat b_and!38165 (not b_next!23679))
