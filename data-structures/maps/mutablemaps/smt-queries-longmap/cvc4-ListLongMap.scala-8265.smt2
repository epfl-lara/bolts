; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100578 () Bool)

(assert start!100578)

(declare-fun b_free!25865 () Bool)

(declare-fun b_next!25865 () Bool)

(assert (=> start!100578 (= b_free!25865 (not b_next!25865))))

(declare-fun tp!90586 () Bool)

(declare-fun b_and!42631 () Bool)

(assert (=> start!100578 (= tp!90586 b_and!42631)))

(declare-fun bm!57576 () Bool)

(declare-datatypes ((Unit!39765 0))(
  ( (Unit!39766) )
))
(declare-fun call!57585 () Unit!39765)

(declare-fun call!57582 () Unit!39765)

(assert (=> bm!57576 (= call!57585 call!57582)))

(declare-fun b!1201843 () Bool)

(declare-fun e!682516 () Bool)

(declare-fun tp_is_empty!30569 () Bool)

(assert (=> b!1201843 (= e!682516 tp_is_empty!30569)))

(declare-fun b!1201844 () Bool)

(declare-fun e!682523 () Unit!39765)

(declare-fun e!682517 () Unit!39765)

(assert (=> b!1201844 (= e!682523 e!682517)))

(declare-fun c!117536 () Bool)

(declare-fun lt!544662 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1201844 (= c!117536 (and (not lt!544662) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1201845 () Bool)

(declare-fun res!800074 () Bool)

(declare-fun e!682520 () Bool)

(assert (=> b!1201845 (=> (not res!800074) (not e!682520))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201845 (= res!800074 (validMask!0 mask!1564))))

(declare-datatypes ((V!45885 0))(
  ( (V!45886 (val!15341 Int)) )
))
(declare-fun zeroValue!944 () V!45885)

(declare-fun c!117535 () Bool)

(declare-datatypes ((tuple2!19790 0))(
  ( (tuple2!19791 (_1!9905 (_ BitVec 64)) (_2!9905 V!45885)) )
))
(declare-datatypes ((List!26620 0))(
  ( (Nil!26617) (Cons!26616 (h!27825 tuple2!19790) (t!39472 List!26620)) )
))
(declare-datatypes ((ListLongMap!17771 0))(
  ( (ListLongMap!17772 (toList!8901 List!26620)) )
))
(declare-fun lt!544666 () ListLongMap!17771)

(declare-fun bm!57577 () Bool)

(declare-fun lt!544664 () ListLongMap!17771)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45885)

(declare-fun addStillContains!1002 (ListLongMap!17771 (_ BitVec 64) V!45885 (_ BitVec 64)) Unit!39765)

(assert (=> bm!57577 (= call!57582 (addStillContains!1002 (ite c!117535 lt!544664 lt!544666) (ite c!117535 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117536 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117535 minValue!944 (ite c!117536 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1201846 () Bool)

(declare-fun res!800084 () Bool)

(declare-fun e!682526 () Bool)

(assert (=> b!1201846 (=> (not res!800084) (not e!682526))))

(declare-datatypes ((array!77888 0))(
  ( (array!77889 (arr!37585 (Array (_ BitVec 32) (_ BitVec 64))) (size!38122 (_ BitVec 32))) )
))
(declare-fun lt!544659 () array!77888)

(declare-datatypes ((List!26621 0))(
  ( (Nil!26618) (Cons!26617 (h!27826 (_ BitVec 64)) (t!39473 List!26621)) )
))
(declare-fun arrayNoDuplicates!0 (array!77888 (_ BitVec 32) List!26621) Bool)

(assert (=> b!1201846 (= res!800084 (arrayNoDuplicates!0 lt!544659 #b00000000000000000000000000000000 Nil!26618))))

(declare-fun b!1201847 () Bool)

(declare-fun res!800080 () Bool)

(assert (=> b!1201847 (=> (not res!800080) (not e!682520))))

(declare-fun _keys!1208 () array!77888)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201847 (= res!800080 (= (select (arr!37585 _keys!1208) i!673) k!934))))

(declare-fun b!1201848 () Bool)

(declare-fun c!117538 () Bool)

(assert (=> b!1201848 (= c!117538 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544662))))

(declare-fun e!682525 () Unit!39765)

(assert (=> b!1201848 (= e!682517 e!682525)))

(declare-fun mapNonEmpty!47696 () Bool)

(declare-fun mapRes!47696 () Bool)

(declare-fun tp!90585 () Bool)

(declare-fun e!682528 () Bool)

(assert (=> mapNonEmpty!47696 (= mapRes!47696 (and tp!90585 e!682528))))

(declare-datatypes ((ValueCell!14575 0))(
  ( (ValueCellFull!14575 (v!17980 V!45885)) (EmptyCell!14575) )
))
(declare-fun mapRest!47696 () (Array (_ BitVec 32) ValueCell!14575))

(declare-fun mapKey!47696 () (_ BitVec 32))

(declare-datatypes ((array!77890 0))(
  ( (array!77891 (arr!37586 (Array (_ BitVec 32) ValueCell!14575)) (size!38123 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77890)

(declare-fun mapValue!47696 () ValueCell!14575)

(assert (=> mapNonEmpty!47696 (= (arr!37586 _values!996) (store mapRest!47696 mapKey!47696 mapValue!47696))))

(declare-fun bm!57578 () Bool)

(declare-fun call!57581 () ListLongMap!17771)

(declare-fun call!57583 () ListLongMap!17771)

(assert (=> bm!57578 (= call!57581 call!57583)))

(declare-fun call!57579 () ListLongMap!17771)

(declare-fun b!1201849 () Bool)

(declare-fun e!682527 () Bool)

(declare-fun call!57584 () ListLongMap!17771)

(declare-fun -!1821 (ListLongMap!17771 (_ BitVec 64)) ListLongMap!17771)

(assert (=> b!1201849 (= e!682527 (= call!57584 (-!1821 call!57579 k!934)))))

(declare-fun b!1201850 () Bool)

(declare-fun e!682518 () Bool)

(declare-fun e!682521 () Bool)

(assert (=> b!1201850 (= e!682518 e!682521)))

(declare-fun res!800077 () Bool)

(assert (=> b!1201850 (=> res!800077 e!682521)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1201850 (= res!800077 (not (= (select (arr!37585 _keys!1208) from!1455) k!934)))))

(assert (=> b!1201850 e!682527))

(declare-fun c!117537 () Bool)

(assert (=> b!1201850 (= c!117537 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!544658 () Unit!39765)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1026 (array!77888 array!77890 (_ BitVec 32) (_ BitVec 32) V!45885 V!45885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39765)

(assert (=> b!1201850 (= lt!544658 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1026 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201851 () Bool)

(declare-fun e!682519 () Bool)

(assert (=> b!1201851 (= e!682526 (not e!682519))))

(declare-fun res!800072 () Bool)

(assert (=> b!1201851 (=> res!800072 e!682519)))

(assert (=> b!1201851 (= res!800072 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201851 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!544656 () Unit!39765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77888 (_ BitVec 64) (_ BitVec 32)) Unit!39765)

(assert (=> b!1201851 (= lt!544656 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1201852 () Bool)

(declare-fun e!682522 () Bool)

(assert (=> b!1201852 (= e!682522 true)))

(declare-fun lt!544663 () Unit!39765)

(assert (=> b!1201852 (= lt!544663 e!682523)))

(assert (=> b!1201852 (= c!117535 (and (not lt!544662) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201852 (= lt!544662 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!47696 () Bool)

(assert (=> mapIsEmpty!47696 mapRes!47696))

(declare-fun bm!57579 () Bool)

(declare-fun call!57586 () Bool)

(declare-fun call!57580 () Bool)

(assert (=> bm!57579 (= call!57586 call!57580)))

(declare-fun b!1201853 () Bool)

(assert (=> b!1201853 call!57586))

(declare-fun lt!544655 () Unit!39765)

(assert (=> b!1201853 (= lt!544655 call!57585)))

(assert (=> b!1201853 (= e!682517 lt!544655)))

(declare-fun b!1201854 () Bool)

(declare-fun Unit!39767 () Unit!39765)

(assert (=> b!1201854 (= e!682525 Unit!39767)))

(declare-fun bm!57580 () Bool)

(declare-fun contains!6901 (ListLongMap!17771 (_ BitVec 64)) Bool)

(assert (=> bm!57580 (= call!57580 (contains!6901 (ite c!117535 lt!544664 call!57581) k!934))))

(declare-fun b!1201855 () Bool)

(declare-fun res!800083 () Bool)

(assert (=> b!1201855 (=> (not res!800083) (not e!682520))))

(assert (=> b!1201855 (= res!800083 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26618))))

(declare-fun b!1201856 () Bool)

(declare-fun res!800078 () Bool)

(assert (=> b!1201856 (=> (not res!800078) (not e!682520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77888 (_ BitVec 32)) Bool)

(assert (=> b!1201856 (= res!800078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1201857 () Bool)

(assert (=> b!1201857 (= e!682521 e!682522)))

(declare-fun res!800082 () Bool)

(assert (=> b!1201857 (=> res!800082 e!682522)))

(assert (=> b!1201857 (= res!800082 (not (contains!6901 lt!544666 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!5312 (array!77888 array!77890 (_ BitVec 32) (_ BitVec 32) V!45885 V!45885 (_ BitVec 32) Int) ListLongMap!17771)

(assert (=> b!1201857 (= lt!544666 (getCurrentListMapNoExtraKeys!5312 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201858 () Bool)

(declare-fun res!800081 () Bool)

(assert (=> b!1201858 (=> (not res!800081) (not e!682520))))

(assert (=> b!1201858 (= res!800081 (and (= (size!38123 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38122 _keys!1208) (size!38123 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201859 () Bool)

(assert (=> b!1201859 (= e!682528 tp_is_empty!30569)))

(declare-fun res!800076 () Bool)

(assert (=> start!100578 (=> (not res!800076) (not e!682520))))

(assert (=> start!100578 (= res!800076 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38122 _keys!1208))))))

(assert (=> start!100578 e!682520))

(assert (=> start!100578 tp_is_empty!30569))

(declare-fun array_inv!28532 (array!77888) Bool)

(assert (=> start!100578 (array_inv!28532 _keys!1208)))

(assert (=> start!100578 true))

(assert (=> start!100578 tp!90586))

(declare-fun e!682515 () Bool)

(declare-fun array_inv!28533 (array!77890) Bool)

(assert (=> start!100578 (and (array_inv!28533 _values!996) e!682515)))

(declare-fun b!1201860 () Bool)

(declare-fun res!800085 () Bool)

(assert (=> b!1201860 (=> (not res!800085) (not e!682520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201860 (= res!800085 (validKeyInArray!0 k!934))))

(declare-fun b!1201861 () Bool)

(assert (=> b!1201861 (= e!682520 e!682526)))

(declare-fun res!800079 () Bool)

(assert (=> b!1201861 (=> (not res!800079) (not e!682526))))

(assert (=> b!1201861 (= res!800079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544659 mask!1564))))

(assert (=> b!1201861 (= lt!544659 (array!77889 (store (arr!37585 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38122 _keys!1208)))))

(declare-fun b!1201862 () Bool)

(assert (=> b!1201862 (= e!682527 (= call!57584 call!57579))))

(declare-fun b!1201863 () Bool)

(assert (=> b!1201863 (= e!682515 (and e!682516 mapRes!47696))))

(declare-fun condMapEmpty!47696 () Bool)

(declare-fun mapDefault!47696 () ValueCell!14575)

