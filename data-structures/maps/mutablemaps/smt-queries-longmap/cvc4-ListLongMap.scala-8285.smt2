; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100986 () Bool)

(assert start!100986)

(declare-fun b_free!25985 () Bool)

(declare-fun b_next!25985 () Bool)

(assert (=> start!100986 (= b_free!25985 (not b_next!25985))))

(declare-fun tp!90968 () Bool)

(declare-fun b_and!43043 () Bool)

(assert (=> start!100986 (= tp!90968 b_and!43043)))

(declare-fun b!1208770 () Bool)

(declare-datatypes ((Unit!39992 0))(
  ( (Unit!39993) )
))
(declare-fun e!686545 () Unit!39992)

(declare-fun Unit!39994 () Unit!39992)

(assert (=> b!1208770 (= e!686545 Unit!39994)))

(declare-fun b!1208771 () Bool)

(declare-fun e!686543 () Bool)

(declare-fun tp_is_empty!30689 () Bool)

(assert (=> b!1208771 (= e!686543 tp_is_empty!30689)))

(declare-datatypes ((V!46045 0))(
  ( (V!46046 (val!15401 Int)) )
))
(declare-fun zeroValue!944 () V!46045)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14635 0))(
  ( (ValueCellFull!14635 (v!18051 V!46045)) (EmptyCell!14635) )
))
(declare-datatypes ((array!78138 0))(
  ( (array!78139 (arr!37703 (Array (_ BitVec 32) ValueCell!14635)) (size!38240 (_ BitVec 32))) )
))
(declare-fun lt!548601 () array!78138)

(declare-fun bm!59235 () Bool)

(declare-fun minValue!944 () V!46045)

(declare-datatypes ((tuple2!19906 0))(
  ( (tuple2!19907 (_1!9963 (_ BitVec 64)) (_2!9963 V!46045)) )
))
(declare-datatypes ((List!26727 0))(
  ( (Nil!26724) (Cons!26723 (h!27932 tuple2!19906) (t!39699 List!26727)) )
))
(declare-datatypes ((ListLongMap!17887 0))(
  ( (ListLongMap!17888 (toList!8959 List!26727)) )
))
(declare-fun call!59241 () ListLongMap!17887)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78140 0))(
  ( (array!78141 (arr!37704 (Array (_ BitVec 32) (_ BitVec 64))) (size!38241 (_ BitVec 32))) )
))
(declare-fun lt!548600 () array!78140)

(declare-fun getCurrentListMapNoExtraKeys!5366 (array!78140 array!78138 (_ BitVec 32) (_ BitVec 32) V!46045 V!46045 (_ BitVec 32) Int) ListLongMap!17887)

(assert (=> bm!59235 (= call!59241 (getCurrentListMapNoExtraKeys!5366 lt!548600 lt!548601 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208772 () Bool)

(declare-fun res!803541 () Bool)

(declare-fun e!686539 () Bool)

(assert (=> b!1208772 (=> (not res!803541) (not e!686539))))

(declare-datatypes ((List!26728 0))(
  ( (Nil!26725) (Cons!26724 (h!27933 (_ BitVec 64)) (t!39700 List!26728)) )
))
(declare-fun arrayNoDuplicates!0 (array!78140 (_ BitVec 32) List!26728) Bool)

(assert (=> b!1208772 (= res!803541 (arrayNoDuplicates!0 lt!548600 #b00000000000000000000000000000000 Nil!26725))))

(declare-fun b!1208773 () Bool)

(declare-fun res!803545 () Bool)

(declare-fun e!686540 () Bool)

(assert (=> b!1208773 (=> (not res!803545) (not e!686540))))

(declare-fun _keys!1208 () array!78140)

(declare-fun _values!996 () array!78138)

(assert (=> b!1208773 (= res!803545 (and (= (size!38240 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38241 _keys!1208) (size!38240 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!686555 () Bool)

(declare-fun lt!548591 () Bool)

(declare-fun b!1208774 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1208774 (= e!686555 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548591) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun c!118905 () Bool)

(declare-fun call!59244 () Unit!39992)

(declare-fun lt!548594 () ListLongMap!17887)

(declare-fun bm!59236 () Bool)

(declare-fun lt!548598 () ListLongMap!17887)

(declare-fun c!118907 () Bool)

(declare-fun addStillContains!1051 (ListLongMap!17887 (_ BitVec 64) V!46045 (_ BitVec 64)) Unit!39992)

(assert (=> bm!59236 (= call!59244 (addStillContains!1051 (ite c!118907 lt!548598 lt!548594) (ite c!118907 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118905 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118907 minValue!944 (ite c!118905 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1208775 () Bool)

(declare-fun e!686538 () Bool)

(declare-fun e!686552 () Bool)

(assert (=> b!1208775 (= e!686538 e!686552)))

(declare-fun res!803538 () Bool)

(assert (=> b!1208775 (=> res!803538 e!686552)))

(declare-fun contains!6967 (ListLongMap!17887 (_ BitVec 64)) Bool)

(assert (=> b!1208775 (= res!803538 (not (contains!6967 lt!548594 k!934)))))

(assert (=> b!1208775 (= lt!548594 (getCurrentListMapNoExtraKeys!5366 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208776 () Bool)

(declare-fun res!803539 () Bool)

(assert (=> b!1208776 (=> (not res!803539) (not e!686540))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1208776 (= res!803539 (= (select (arr!37704 _keys!1208) i!673) k!934))))

(declare-fun b!1208777 () Bool)

(declare-fun e!686546 () Bool)

(declare-fun contains!6968 (List!26728 (_ BitVec 64)) Bool)

(assert (=> b!1208777 (= e!686546 (not (contains!6968 Nil!26725 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208778 () Bool)

(declare-fun e!686548 () Bool)

(assert (=> b!1208778 (= e!686539 (not e!686548))))

(declare-fun res!803528 () Bool)

(assert (=> b!1208778 (=> res!803528 e!686548)))

(assert (=> b!1208778 (= res!803528 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208778 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!548592 () Unit!39992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78140 (_ BitVec 64) (_ BitVec 32)) Unit!39992)

(assert (=> b!1208778 (= lt!548592 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!59237 () Bool)

(declare-fun call!59243 () ListLongMap!17887)

(declare-fun call!59245 () ListLongMap!17887)

(assert (=> bm!59237 (= call!59243 call!59245)))

(declare-fun b!1208780 () Bool)

(declare-fun e!686554 () Bool)

(declare-fun call!59242 () ListLongMap!17887)

(assert (=> b!1208780 (= e!686554 (= call!59241 call!59242))))

(declare-fun b!1208781 () Bool)

(declare-fun res!803542 () Bool)

(assert (=> b!1208781 (=> (not res!803542) (not e!686540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78140 (_ BitVec 32)) Bool)

(assert (=> b!1208781 (= res!803542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1208782 () Bool)

(assert (=> b!1208782 (= e!686540 e!686539)))

(declare-fun res!803533 () Bool)

(assert (=> b!1208782 (=> (not res!803533) (not e!686539))))

(assert (=> b!1208782 (= res!803533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548600 mask!1564))))

(assert (=> b!1208782 (= lt!548600 (array!78141 (store (arr!37704 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38241 _keys!1208)))))

(declare-fun b!1208783 () Bool)

(declare-fun c!118908 () Bool)

(assert (=> b!1208783 (= c!118908 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548591))))

(declare-fun e!686549 () Unit!39992)

(assert (=> b!1208783 (= e!686549 e!686545)))

(declare-fun bm!59238 () Bool)

(assert (=> bm!59238 (= call!59242 (getCurrentListMapNoExtraKeys!5366 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208784 () Bool)

(declare-fun e!686542 () Unit!39992)

(assert (=> b!1208784 (= e!686542 e!686549)))

(assert (=> b!1208784 (= c!118905 (and (not lt!548591) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!59239 () Bool)

(declare-fun +!3986 (ListLongMap!17887 tuple2!19906) ListLongMap!17887)

(assert (=> bm!59239 (= call!59245 (+!3986 (ite c!118907 lt!548598 lt!548594) (ite c!118907 (tuple2!19907 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118905 (tuple2!19907 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19907 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!59240 () Bool)

(declare-fun call!59239 () Bool)

(declare-fun call!59238 () Bool)

(assert (=> bm!59240 (= call!59239 call!59238)))

(declare-fun mapIsEmpty!47899 () Bool)

(declare-fun mapRes!47899 () Bool)

(assert (=> mapIsEmpty!47899 mapRes!47899))

(declare-fun bm!59241 () Bool)

(declare-fun call!59240 () Unit!39992)

(assert (=> bm!59241 (= call!59240 call!59244)))

(declare-fun b!1208785 () Bool)

(declare-fun res!803540 () Bool)

(assert (=> b!1208785 (=> (not res!803540) (not e!686540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1208785 (= res!803540 (validKeyInArray!0 k!934))))

(declare-fun b!1208786 () Bool)

(declare-fun res!803536 () Bool)

(assert (=> b!1208786 (=> (not res!803536) (not e!686540))))

(assert (=> b!1208786 (= res!803536 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26725))))

(declare-fun b!1208787 () Bool)

(declare-fun lt!548593 () Unit!39992)

(assert (=> b!1208787 (= e!686545 lt!548593)))

(assert (=> b!1208787 (= lt!548593 call!59240)))

(assert (=> b!1208787 call!59239))

(declare-fun b!1208788 () Bool)

(assert (=> b!1208788 (= e!686555 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208789 () Bool)

(declare-fun res!803544 () Bool)

(assert (=> b!1208789 (=> (not res!803544) (not e!686540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1208789 (= res!803544 (validMask!0 mask!1564))))

(declare-fun b!1208790 () Bool)

(declare-fun e!686551 () Bool)

(assert (=> b!1208790 (= e!686551 e!686538)))

(declare-fun res!803532 () Bool)

(assert (=> b!1208790 (=> res!803532 e!686538)))

(assert (=> b!1208790 (= res!803532 (not (= (select (arr!37704 _keys!1208) from!1455) k!934)))))

(assert (=> b!1208790 e!686554))

(declare-fun c!118906 () Bool)

(assert (=> b!1208790 (= c!118906 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548596 () Unit!39992)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1068 (array!78140 array!78138 (_ BitVec 32) (_ BitVec 32) V!46045 V!46045 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39992)

(assert (=> b!1208790 (= lt!548596 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1068 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47899 () Bool)

(declare-fun tp!90969 () Bool)

(declare-fun e!686541 () Bool)

(assert (=> mapNonEmpty!47899 (= mapRes!47899 (and tp!90969 e!686541))))

(declare-fun mapRest!47899 () (Array (_ BitVec 32) ValueCell!14635))

(declare-fun mapKey!47899 () (_ BitVec 32))

(declare-fun mapValue!47899 () ValueCell!14635)

(assert (=> mapNonEmpty!47899 (= (arr!37703 _values!996) (store mapRest!47899 mapKey!47899 mapValue!47899))))

(declare-fun b!1208791 () Bool)

(assert (=> b!1208791 (= e!686541 tp_is_empty!30689)))

(declare-fun b!1208792 () Bool)

(declare-fun e!686550 () Bool)

(assert (=> b!1208792 (= e!686552 e!686550)))

(declare-fun res!803534 () Bool)

(assert (=> b!1208792 (=> res!803534 e!686550)))

(assert (=> b!1208792 (= res!803534 (or (bvsge (size!38241 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38241 _keys!1208)) (bvsge from!1455 (size!38241 _keys!1208))))))

(assert (=> b!1208792 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26725)))

(declare-fun lt!548587 () Unit!39992)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78140 (_ BitVec 32) (_ BitVec 32)) Unit!39992)

(assert (=> b!1208792 (= lt!548587 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686553 () Bool)

(assert (=> b!1208792 e!686553))

(declare-fun res!803530 () Bool)

(assert (=> b!1208792 (=> (not res!803530) (not e!686553))))

(assert (=> b!1208792 (= res!803530 e!686555)))

(declare-fun c!118909 () Bool)

(assert (=> b!1208792 (= c!118909 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548588 () Unit!39992)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!588 (array!78140 array!78138 (_ BitVec 32) (_ BitVec 32) V!46045 V!46045 (_ BitVec 64) (_ BitVec 32) Int) Unit!39992)

(assert (=> b!1208792 (= lt!548588 (lemmaListMapContainsThenArrayContainsFrom!588 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548595 () Unit!39992)

(assert (=> b!1208792 (= lt!548595 e!686542)))

(assert (=> b!1208792 (= c!118907 (and (not lt!548591) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1208792 (= lt!548591 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1208793 () Bool)

(declare-fun res!803529 () Bool)

(assert (=> b!1208793 (=> res!803529 e!686550)))

(declare-fun noDuplicate!1648 (List!26728) Bool)

(assert (=> b!1208793 (= res!803529 (not (noDuplicate!1648 Nil!26725)))))

(declare-fun bm!59242 () Bool)

(assert (=> bm!59242 (= call!59238 (contains!6967 (ite c!118907 lt!548598 call!59243) k!934))))

(declare-fun b!1208794 () Bool)

(declare-fun res!803535 () Bool)

(assert (=> b!1208794 (=> (not res!803535) (not e!686540))))

(assert (=> b!1208794 (= res!803535 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38241 _keys!1208))))))

(declare-fun b!1208795 () Bool)

(declare-fun -!1863 (ListLongMap!17887 (_ BitVec 64)) ListLongMap!17887)

(assert (=> b!1208795 (= e!686554 (= call!59241 (-!1863 call!59242 k!934)))))

(declare-fun b!1208796 () Bool)

(declare-fun e!686544 () Bool)

(assert (=> b!1208796 (= e!686544 (and e!686543 mapRes!47899))))

(declare-fun condMapEmpty!47899 () Bool)

(declare-fun mapDefault!47899 () ValueCell!14635)

