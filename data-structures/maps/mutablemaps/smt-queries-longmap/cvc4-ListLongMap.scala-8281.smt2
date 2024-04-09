; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100858 () Bool)

(assert start!100858)

(declare-fun b_free!25961 () Bool)

(declare-fun b_next!25961 () Bool)

(assert (=> start!100858 (= b_free!25961 (not b_next!25961))))

(declare-fun tp!90890 () Bool)

(declare-fun b_and!42937 () Bool)

(assert (=> start!100858 (= tp!90890 b_and!42937)))

(declare-datatypes ((array!78088 0))(
  ( (array!78089 (arr!37680 (Array (_ BitVec 32) (_ BitVec 64))) (size!38217 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78088)

(declare-fun e!685492 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1207001 () Bool)

(declare-fun arrayContainsKey!0 (array!78088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1207001 (= e!685492 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207002 () Bool)

(declare-fun e!685487 () Bool)

(declare-fun tp_is_empty!30665 () Bool)

(assert (=> b!1207002 (= e!685487 tp_is_empty!30665)))

(declare-fun e!685489 () Bool)

(declare-fun b!1207003 () Bool)

(declare-datatypes ((V!46013 0))(
  ( (V!46014 (val!15389 Int)) )
))
(declare-datatypes ((tuple2!19884 0))(
  ( (tuple2!19885 (_1!9952 (_ BitVec 64)) (_2!9952 V!46013)) )
))
(declare-datatypes ((List!26707 0))(
  ( (Nil!26704) (Cons!26703 (h!27912 tuple2!19884) (t!39655 List!26707)) )
))
(declare-datatypes ((ListLongMap!17865 0))(
  ( (ListLongMap!17866 (toList!8948 List!26707)) )
))
(declare-fun call!58885 () ListLongMap!17865)

(declare-fun call!58881 () ListLongMap!17865)

(declare-fun -!1856 (ListLongMap!17865 (_ BitVec 64)) ListLongMap!17865)

(assert (=> b!1207003 (= e!685489 (= call!58885 (-!1856 call!58881 k!934)))))

(declare-fun b!1207004 () Bool)

(declare-datatypes ((Unit!39935 0))(
  ( (Unit!39936) )
))
(declare-fun e!685484 () Unit!39935)

(declare-fun lt!547599 () Unit!39935)

(assert (=> b!1207004 (= e!685484 lt!547599)))

(declare-fun zeroValue!944 () V!46013)

(declare-fun lt!547593 () ListLongMap!17865)

(declare-fun lt!547600 () Unit!39935)

(declare-fun addStillContains!1041 (ListLongMap!17865 (_ BitVec 64) V!46013 (_ BitVec 64)) Unit!39935)

(assert (=> b!1207004 (= lt!547600 (addStillContains!1041 lt!547593 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!547588 () ListLongMap!17865)

(declare-fun +!3977 (ListLongMap!17865 tuple2!19884) ListLongMap!17865)

(assert (=> b!1207004 (= lt!547588 (+!3977 lt!547593 (tuple2!19885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!58880 () Bool)

(assert (=> b!1207004 call!58880))

(declare-fun call!58887 () Unit!39935)

(assert (=> b!1207004 (= lt!547599 call!58887)))

(declare-fun call!58883 () ListLongMap!17865)

(declare-fun contains!6951 (ListLongMap!17865 (_ BitVec 64)) Bool)

(assert (=> b!1207004 (contains!6951 call!58883 k!934)))

(declare-fun b!1207005 () Bool)

(declare-fun e!685481 () Bool)

(declare-fun e!685494 () Bool)

(assert (=> b!1207005 (= e!685481 e!685494)))

(declare-fun res!802683 () Bool)

(assert (=> b!1207005 (=> res!802683 e!685494)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1207005 (= res!802683 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!547596 () ListLongMap!17865)

(declare-datatypes ((ValueCell!14623 0))(
  ( (ValueCellFull!14623 (v!18035 V!46013)) (EmptyCell!14623) )
))
(declare-datatypes ((array!78090 0))(
  ( (array!78091 (arr!37681 (Array (_ BitVec 32) ValueCell!14623)) (size!38218 (_ BitVec 32))) )
))
(declare-fun lt!547601 () array!78090)

(declare-fun lt!547594 () array!78088)

(declare-fun minValue!944 () V!46013)

(declare-fun getCurrentListMapNoExtraKeys!5355 (array!78088 array!78090 (_ BitVec 32) (_ BitVec 32) V!46013 V!46013 (_ BitVec 32) Int) ListLongMap!17865)

(assert (=> b!1207005 (= lt!547596 (getCurrentListMapNoExtraKeys!5355 lt!547594 lt!547601 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78090)

(declare-fun dynLambda!3274 (Int (_ BitVec 64)) V!46013)

(assert (=> b!1207005 (= lt!547601 (array!78091 (store (arr!37681 _values!996) i!673 (ValueCellFull!14623 (dynLambda!3274 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38218 _values!996)))))

(declare-fun lt!547590 () ListLongMap!17865)

(assert (=> b!1207005 (= lt!547590 (getCurrentListMapNoExtraKeys!5355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1207006 () Bool)

(declare-fun e!685495 () Bool)

(declare-fun e!685493 () Bool)

(assert (=> b!1207006 (= e!685495 e!685493)))

(declare-fun res!802669 () Bool)

(assert (=> b!1207006 (=> (not res!802669) (not e!685493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78088 (_ BitVec 32)) Bool)

(assert (=> b!1207006 (= res!802669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547594 mask!1564))))

(assert (=> b!1207006 (= lt!547594 (array!78089 (store (arr!37680 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38217 _keys!1208)))))

(declare-fun c!118527 () Bool)

(declare-fun c!118530 () Bool)

(declare-fun bm!58877 () Bool)

(assert (=> bm!58877 (= call!58887 (addStillContains!1041 (ite c!118530 lt!547588 lt!547593) (ite c!118530 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118527 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118530 minValue!944 (ite c!118527 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1207007 () Bool)

(declare-fun res!802680 () Bool)

(assert (=> b!1207007 (=> (not res!802680) (not e!685495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1207007 (= res!802680 (validKeyInArray!0 k!934))))

(declare-fun res!802678 () Bool)

(assert (=> start!100858 (=> (not res!802678) (not e!685495))))

(assert (=> start!100858 (= res!802678 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38217 _keys!1208))))))

(assert (=> start!100858 e!685495))

(assert (=> start!100858 tp_is_empty!30665))

(declare-fun array_inv!28606 (array!78088) Bool)

(assert (=> start!100858 (array_inv!28606 _keys!1208)))

(assert (=> start!100858 true))

(assert (=> start!100858 tp!90890))

(declare-fun e!685486 () Bool)

(declare-fun array_inv!28607 (array!78090) Bool)

(assert (=> start!100858 (and (array_inv!28607 _values!996) e!685486)))

(declare-fun e!685496 () Bool)

(declare-fun b!1207008 () Bool)

(assert (=> b!1207008 (= e!685496 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207009 () Bool)

(declare-fun lt!547598 () Bool)

(assert (=> b!1207009 (= e!685492 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547598) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!47856 () Bool)

(declare-fun mapRes!47856 () Bool)

(assert (=> mapIsEmpty!47856 mapRes!47856))

(declare-fun mapNonEmpty!47856 () Bool)

(declare-fun tp!90889 () Bool)

(declare-fun e!685483 () Bool)

(assert (=> mapNonEmpty!47856 (= mapRes!47856 (and tp!90889 e!685483))))

(declare-fun mapRest!47856 () (Array (_ BitVec 32) ValueCell!14623))

(declare-fun mapValue!47856 () ValueCell!14623)

(declare-fun mapKey!47856 () (_ BitVec 32))

(assert (=> mapNonEmpty!47856 (= (arr!37681 _values!996) (store mapRest!47856 mapKey!47856 mapValue!47856))))

(declare-fun b!1207010 () Bool)

(declare-fun res!802677 () Bool)

(assert (=> b!1207010 (=> (not res!802677) (not e!685495))))

(assert (=> b!1207010 (= res!802677 (= (select (arr!37680 _keys!1208) i!673) k!934))))

(declare-fun b!1207011 () Bool)

(declare-fun e!685485 () Unit!39935)

(declare-fun Unit!39937 () Unit!39935)

(assert (=> b!1207011 (= e!685485 Unit!39937)))

(declare-fun b!1207012 () Bool)

(declare-fun e!685491 () Bool)

(assert (=> b!1207012 (= e!685491 true)))

(declare-datatypes ((List!26708 0))(
  ( (Nil!26705) (Cons!26704 (h!27913 (_ BitVec 64)) (t!39656 List!26708)) )
))
(declare-fun arrayNoDuplicates!0 (array!78088 (_ BitVec 32) List!26708) Bool)

(assert (=> b!1207012 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26705)))

(declare-fun lt!547592 () Unit!39935)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78088 (_ BitVec 32) (_ BitVec 32)) Unit!39935)

(assert (=> b!1207012 (= lt!547592 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1207012 e!685496))

(declare-fun res!802675 () Bool)

(assert (=> b!1207012 (=> (not res!802675) (not e!685496))))

(assert (=> b!1207012 (= res!802675 e!685492)))

(declare-fun c!118531 () Bool)

(assert (=> b!1207012 (= c!118531 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547589 () Unit!39935)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!579 (array!78088 array!78090 (_ BitVec 32) (_ BitVec 32) V!46013 V!46013 (_ BitVec 64) (_ BitVec 32) Int) Unit!39935)

(assert (=> b!1207012 (= lt!547589 (lemmaListMapContainsThenArrayContainsFrom!579 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547586 () Unit!39935)

(assert (=> b!1207012 (= lt!547586 e!685484)))

(assert (=> b!1207012 (= c!118530 (and (not lt!547598) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1207012 (= lt!547598 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1207013 () Bool)

(declare-fun res!802670 () Bool)

(assert (=> b!1207013 (=> (not res!802670) (not e!685495))))

(assert (=> b!1207013 (= res!802670 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38217 _keys!1208))))))

(declare-fun b!1207014 () Bool)

(declare-fun e!685488 () Unit!39935)

(assert (=> b!1207014 (= e!685484 e!685488)))

(assert (=> b!1207014 (= c!118527 (and (not lt!547598) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1207015 () Bool)

(declare-fun call!58884 () Bool)

(assert (=> b!1207015 call!58884))

(declare-fun lt!547591 () Unit!39935)

(declare-fun call!58886 () Unit!39935)

(assert (=> b!1207015 (= lt!547591 call!58886)))

(assert (=> b!1207015 (= e!685488 lt!547591)))

(declare-fun b!1207016 () Bool)

(declare-fun res!802672 () Bool)

(assert (=> b!1207016 (=> (not res!802672) (not e!685495))))

(assert (=> b!1207016 (= res!802672 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26705))))

(declare-fun b!1207017 () Bool)

(declare-fun e!685482 () Bool)

(assert (=> b!1207017 (= e!685494 e!685482)))

(declare-fun res!802682 () Bool)

(assert (=> b!1207017 (=> res!802682 e!685482)))

(assert (=> b!1207017 (= res!802682 (not (= (select (arr!37680 _keys!1208) from!1455) k!934)))))

(assert (=> b!1207017 e!685489))

(declare-fun c!118529 () Bool)

(assert (=> b!1207017 (= c!118529 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547595 () Unit!39935)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1060 (array!78088 array!78090 (_ BitVec 32) (_ BitVec 32) V!46013 V!46013 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39935)

(assert (=> b!1207017 (= lt!547595 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1060 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207018 () Bool)

(declare-fun c!118528 () Bool)

(assert (=> b!1207018 (= c!118528 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547598))))

(assert (=> b!1207018 (= e!685488 e!685485)))

(declare-fun b!1207019 () Bool)

(declare-fun res!802676 () Bool)

(assert (=> b!1207019 (=> (not res!802676) (not e!685495))))

(assert (=> b!1207019 (= res!802676 (and (= (size!38218 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38217 _keys!1208) (size!38218 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!58878 () Bool)

(assert (=> bm!58878 (= call!58886 call!58887)))

(declare-fun bm!58879 () Bool)

(assert (=> bm!58879 (= call!58881 (getCurrentListMapNoExtraKeys!5355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207020 () Bool)

(assert (=> b!1207020 (= e!685486 (and e!685487 mapRes!47856))))

(declare-fun condMapEmpty!47856 () Bool)

(declare-fun mapDefault!47856 () ValueCell!14623)

