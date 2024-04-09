; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100586 () Bool)

(assert start!100586)

(declare-fun b_free!25873 () Bool)

(declare-fun b_next!25873 () Bool)

(assert (=> start!100586 (= b_free!25873 (not b_next!25873))))

(declare-fun tp!90610 () Bool)

(declare-fun b_and!42647 () Bool)

(assert (=> start!100586 (= tp!90610 b_and!42647)))

(declare-fun bm!57672 () Bool)

(declare-fun call!57678 () Bool)

(declare-fun call!57682 () Bool)

(assert (=> bm!57672 (= call!57678 call!57682)))

(declare-fun b!1202151 () Bool)

(declare-fun res!800252 () Bool)

(declare-fun e!682693 () Bool)

(assert (=> b!1202151 (=> (not res!800252) (not e!682693))))

(declare-datatypes ((array!77904 0))(
  ( (array!77905 (arr!37593 (Array (_ BitVec 32) (_ BitVec 64))) (size!38130 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77904)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1202151 (= res!800252 (= (select (arr!37593 _keys!1208) i!673) k!934))))

(declare-fun b!1202152 () Bool)

(declare-fun e!682689 () Bool)

(declare-fun tp_is_empty!30577 () Bool)

(assert (=> b!1202152 (= e!682689 tp_is_empty!30577)))

(declare-fun b!1202153 () Bool)

(declare-fun res!800253 () Bool)

(assert (=> b!1202153 (=> (not res!800253) (not e!682693))))

(assert (=> b!1202153 (= res!800253 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38130 _keys!1208))))))

(declare-fun b!1202154 () Bool)

(declare-fun e!682692 () Bool)

(declare-fun e!682690 () Bool)

(assert (=> b!1202154 (= e!682692 e!682690)))

(declare-fun res!800250 () Bool)

(assert (=> b!1202154 (=> res!800250 e!682690)))

(declare-datatypes ((V!45897 0))(
  ( (V!45898 (val!15345 Int)) )
))
(declare-datatypes ((tuple2!19798 0))(
  ( (tuple2!19799 (_1!9909 (_ BitVec 64)) (_2!9909 V!45897)) )
))
(declare-datatypes ((List!26627 0))(
  ( (Nil!26624) (Cons!26623 (h!27832 tuple2!19798) (t!39487 List!26627)) )
))
(declare-datatypes ((ListLongMap!17779 0))(
  ( (ListLongMap!17780 (toList!8905 List!26627)) )
))
(declare-fun lt!544822 () ListLongMap!17779)

(declare-fun contains!6905 (ListLongMap!17779 (_ BitVec 64)) Bool)

(assert (=> b!1202154 (= res!800250 (not (contains!6905 lt!544822 k!934)))))

(declare-fun zeroValue!944 () V!45897)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14579 0))(
  ( (ValueCellFull!14579 (v!17984 V!45897)) (EmptyCell!14579) )
))
(declare-datatypes ((array!77906 0))(
  ( (array!77907 (arr!37594 (Array (_ BitVec 32) ValueCell!14579)) (size!38131 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77906)

(declare-fun minValue!944 () V!45897)

(declare-fun getCurrentListMapNoExtraKeys!5316 (array!77904 array!77906 (_ BitVec 32) (_ BitVec 32) V!45897 V!45897 (_ BitVec 32) Int) ListLongMap!17779)

(assert (=> b!1202154 (= lt!544822 (getCurrentListMapNoExtraKeys!5316 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57673 () Bool)

(declare-fun call!57677 () ListLongMap!17779)

(assert (=> bm!57673 (= call!57677 (getCurrentListMapNoExtraKeys!5316 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202155 () Bool)

(declare-fun res!800249 () Bool)

(assert (=> b!1202155 (=> (not res!800249) (not e!682693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202155 (= res!800249 (validMask!0 mask!1564))))

(declare-fun b!1202156 () Bool)

(declare-fun e!682691 () Bool)

(declare-fun call!57680 () ListLongMap!17779)

(assert (=> b!1202156 (= e!682691 (= call!57680 call!57677))))

(declare-fun b!1202157 () Bool)

(declare-datatypes ((Unit!39777 0))(
  ( (Unit!39778) )
))
(declare-fun e!682685 () Unit!39777)

(declare-fun Unit!39779 () Unit!39777)

(assert (=> b!1202157 (= e!682685 Unit!39779)))

(declare-fun bm!57674 () Bool)

(declare-fun call!57681 () ListLongMap!17779)

(declare-fun c!117586 () Bool)

(declare-fun c!117584 () Bool)

(declare-fun +!3943 (ListLongMap!17779 tuple2!19798) ListLongMap!17779)

(assert (=> bm!57674 (= call!57681 (+!3943 lt!544822 (ite (or c!117584 c!117586) (tuple2!19799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1202158 () Bool)

(declare-fun e!682686 () Bool)

(declare-fun e!682695 () Bool)

(assert (=> b!1202158 (= e!682686 (not e!682695))))

(declare-fun res!800241 () Bool)

(assert (=> b!1202158 (=> res!800241 e!682695)))

(assert (=> b!1202158 (= res!800241 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202158 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!544831 () Unit!39777)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77904 (_ BitVec 64) (_ BitVec 32)) Unit!39777)

(assert (=> b!1202158 (= lt!544831 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1202159 () Bool)

(declare-fun e!682683 () Bool)

(assert (=> b!1202159 (= e!682695 e!682683)))

(declare-fun res!800244 () Bool)

(assert (=> b!1202159 (=> res!800244 e!682683)))

(assert (=> b!1202159 (= res!800244 (not (= from!1455 i!673)))))

(declare-fun lt!544829 () array!77906)

(declare-fun lt!544833 () ListLongMap!17779)

(declare-fun lt!544824 () array!77904)

(assert (=> b!1202159 (= lt!544833 (getCurrentListMapNoExtraKeys!5316 lt!544824 lt!544829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3241 (Int (_ BitVec 64)) V!45897)

(assert (=> b!1202159 (= lt!544829 (array!77907 (store (arr!37594 _values!996) i!673 (ValueCellFull!14579 (dynLambda!3241 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38131 _values!996)))))

(declare-fun lt!544827 () ListLongMap!17779)

(assert (=> b!1202159 (= lt!544827 (getCurrentListMapNoExtraKeys!5316 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202160 () Bool)

(assert (=> b!1202160 call!57678))

(declare-fun lt!544825 () Unit!39777)

(declare-fun call!57675 () Unit!39777)

(assert (=> b!1202160 (= lt!544825 call!57675)))

(declare-fun e!682684 () Unit!39777)

(assert (=> b!1202160 (= e!682684 lt!544825)))

(declare-fun res!800248 () Bool)

(assert (=> start!100586 (=> (not res!800248) (not e!682693))))

(assert (=> start!100586 (= res!800248 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38130 _keys!1208))))))

(assert (=> start!100586 e!682693))

(assert (=> start!100586 tp_is_empty!30577))

(declare-fun array_inv!28536 (array!77904) Bool)

(assert (=> start!100586 (array_inv!28536 _keys!1208)))

(assert (=> start!100586 true))

(assert (=> start!100586 tp!90610))

(declare-fun e!682696 () Bool)

(declare-fun array_inv!28537 (array!77906) Bool)

(assert (=> start!100586 (and (array_inv!28537 _values!996) e!682696)))

(declare-fun mapNonEmpty!47708 () Bool)

(declare-fun mapRes!47708 () Bool)

(declare-fun tp!90609 () Bool)

(declare-fun e!682688 () Bool)

(assert (=> mapNonEmpty!47708 (= mapRes!47708 (and tp!90609 e!682688))))

(declare-fun mapKey!47708 () (_ BitVec 32))

(declare-fun mapRest!47708 () (Array (_ BitVec 32) ValueCell!14579))

(declare-fun mapValue!47708 () ValueCell!14579)

(assert (=> mapNonEmpty!47708 (= (arr!37594 _values!996) (store mapRest!47708 mapKey!47708 mapValue!47708))))

(declare-fun b!1202161 () Bool)

(declare-fun res!800245 () Bool)

(assert (=> b!1202161 (=> (not res!800245) (not e!682693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202161 (= res!800245 (validKeyInArray!0 k!934))))

(declare-fun b!1202162 () Bool)

(assert (=> b!1202162 (= e!682688 tp_is_empty!30577)))

(declare-fun b!1202163 () Bool)

(declare-fun e!682694 () Unit!39777)

(declare-fun lt!544834 () Unit!39777)

(assert (=> b!1202163 (= e!682694 lt!544834)))

(declare-fun lt!544830 () Unit!39777)

(declare-fun call!57676 () Unit!39777)

(assert (=> b!1202163 (= lt!544830 call!57676)))

(declare-fun lt!544832 () ListLongMap!17779)

(assert (=> b!1202163 (= lt!544832 call!57681)))

(assert (=> b!1202163 call!57682))

(declare-fun addStillContains!1005 (ListLongMap!17779 (_ BitVec 64) V!45897 (_ BitVec 64)) Unit!39777)

(assert (=> b!1202163 (= lt!544834 (addStillContains!1005 lt!544832 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1202163 (contains!6905 (+!3943 lt!544832 (tuple2!19799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1202164 () Bool)

(declare-fun -!1823 (ListLongMap!17779 (_ BitVec 64)) ListLongMap!17779)

(assert (=> b!1202164 (= e!682691 (= call!57680 (-!1823 call!57677 k!934)))))

(declare-fun bm!57675 () Bool)

(assert (=> bm!57675 (= call!57675 call!57676)))

(declare-fun b!1202165 () Bool)

(declare-fun res!800247 () Bool)

(assert (=> b!1202165 (=> (not res!800247) (not e!682693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77904 (_ BitVec 32)) Bool)

(assert (=> b!1202165 (= res!800247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202166 () Bool)

(declare-fun c!117585 () Bool)

(declare-fun lt!544821 () Bool)

(assert (=> b!1202166 (= c!117585 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544821))))

(assert (=> b!1202166 (= e!682684 e!682685)))

(declare-fun b!1202167 () Bool)

(assert (=> b!1202167 (= e!682690 true)))

(declare-fun lt!544823 () Unit!39777)

(assert (=> b!1202167 (= lt!544823 e!682694)))

(assert (=> b!1202167 (= c!117584 (and (not lt!544821) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202167 (= lt!544821 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202168 () Bool)

(assert (=> b!1202168 (= e!682683 e!682692)))

(declare-fun res!800243 () Bool)

(assert (=> b!1202168 (=> res!800243 e!682692)))

(assert (=> b!1202168 (= res!800243 (not (= (select (arr!37593 _keys!1208) from!1455) k!934)))))

(assert (=> b!1202168 e!682691))

(declare-fun c!117583 () Bool)

(assert (=> b!1202168 (= c!117583 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544826 () Unit!39777)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1029 (array!77904 array!77906 (_ BitVec 32) (_ BitVec 32) V!45897 V!45897 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39777)

(assert (=> b!1202168 (= lt!544826 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1029 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202169 () Bool)

(declare-fun res!800246 () Bool)

(assert (=> b!1202169 (=> (not res!800246) (not e!682693))))

(assert (=> b!1202169 (= res!800246 (and (= (size!38131 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38130 _keys!1208) (size!38131 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47708 () Bool)

(assert (=> mapIsEmpty!47708 mapRes!47708))

(declare-fun b!1202170 () Bool)

(declare-fun res!800251 () Bool)

(assert (=> b!1202170 (=> (not res!800251) (not e!682693))))

(declare-datatypes ((List!26628 0))(
  ( (Nil!26625) (Cons!26624 (h!27833 (_ BitVec 64)) (t!39488 List!26628)) )
))
(declare-fun arrayNoDuplicates!0 (array!77904 (_ BitVec 32) List!26628) Bool)

(assert (=> b!1202170 (= res!800251 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26625))))

(declare-fun bm!57676 () Bool)

(assert (=> bm!57676 (= call!57680 (getCurrentListMapNoExtraKeys!5316 lt!544824 lt!544829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202171 () Bool)

(declare-fun res!800240 () Bool)

(assert (=> b!1202171 (=> (not res!800240) (not e!682686))))

(assert (=> b!1202171 (= res!800240 (arrayNoDuplicates!0 lt!544824 #b00000000000000000000000000000000 Nil!26625))))

(declare-fun bm!57677 () Bool)

(declare-fun call!57679 () ListLongMap!17779)

(assert (=> bm!57677 (= call!57682 (contains!6905 (ite c!117584 lt!544832 call!57679) k!934))))

(declare-fun b!1202172 () Bool)

(declare-fun lt!544828 () Unit!39777)

(assert (=> b!1202172 (= e!682685 lt!544828)))

(assert (=> b!1202172 (= lt!544828 call!57675)))

(assert (=> b!1202172 call!57678))

(declare-fun b!1202173 () Bool)

(assert (=> b!1202173 (= e!682693 e!682686)))

(declare-fun res!800242 () Bool)

(assert (=> b!1202173 (=> (not res!800242) (not e!682686))))

(assert (=> b!1202173 (= res!800242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544824 mask!1564))))

(assert (=> b!1202173 (= lt!544824 (array!77905 (store (arr!37593 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38130 _keys!1208)))))

(declare-fun b!1202174 () Bool)

(assert (=> b!1202174 (= e!682696 (and e!682689 mapRes!47708))))

(declare-fun condMapEmpty!47708 () Bool)

(declare-fun mapDefault!47708 () ValueCell!14579)

