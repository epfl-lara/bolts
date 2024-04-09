; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100862 () Bool)

(assert start!100862)

(declare-fun b_free!25965 () Bool)

(declare-fun b_next!25965 () Bool)

(assert (=> start!100862 (= b_free!25965 (not b_next!25965))))

(declare-fun tp!90902 () Bool)

(declare-fun b_and!42945 () Bool)

(assert (=> start!100862 (= tp!90902 b_and!42945)))

(declare-fun bm!58925 () Bool)

(declare-fun c!118558 () Bool)

(declare-datatypes ((V!46019 0))(
  ( (V!46020 (val!15391 Int)) )
))
(declare-datatypes ((tuple2!19886 0))(
  ( (tuple2!19887 (_1!9953 (_ BitVec 64)) (_2!9953 V!46019)) )
))
(declare-datatypes ((List!26709 0))(
  ( (Nil!26706) (Cons!26705 (h!27914 tuple2!19886) (t!39661 List!26709)) )
))
(declare-datatypes ((ListLongMap!17867 0))(
  ( (ListLongMap!17868 (toList!8949 List!26709)) )
))
(declare-fun call!58928 () ListLongMap!17867)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!58933 () Bool)

(declare-fun lt!547686 () ListLongMap!17867)

(declare-fun contains!6952 (ListLongMap!17867 (_ BitVec 64)) Bool)

(assert (=> bm!58925 (= call!58933 (contains!6952 (ite c!118558 lt!547686 call!58928) k0!934))))

(declare-fun b!1207173 () Bool)

(declare-datatypes ((Unit!39940 0))(
  ( (Unit!39941) )
))
(declare-fun e!685585 () Unit!39940)

(declare-fun Unit!39942 () Unit!39940)

(assert (=> b!1207173 (= e!685585 Unit!39942)))

(declare-fun zeroValue!944 () V!46019)

(declare-datatypes ((array!78094 0))(
  ( (array!78095 (arr!37683 (Array (_ BitVec 32) (_ BitVec 64))) (size!38220 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78094)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun call!58930 () ListLongMap!17867)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!58926 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14625 0))(
  ( (ValueCellFull!14625 (v!18037 V!46019)) (EmptyCell!14625) )
))
(declare-datatypes ((array!78096 0))(
  ( (array!78097 (arr!37684 (Array (_ BitVec 32) ValueCell!14625)) (size!38221 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78096)

(declare-fun minValue!944 () V!46019)

(declare-fun getCurrentListMapNoExtraKeys!5356 (array!78094 array!78096 (_ BitVec 32) (_ BitVec 32) V!46019 V!46019 (_ BitVec 32) Int) ListLongMap!17867)

(assert (=> bm!58926 (= call!58930 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207175 () Bool)

(declare-fun e!685586 () Bool)

(declare-fun e!685587 () Bool)

(assert (=> b!1207175 (= e!685586 (not e!685587))))

(declare-fun res!802766 () Bool)

(assert (=> b!1207175 (=> res!802766 e!685587)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1207175 (= res!802766 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1207175 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547690 () Unit!39940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78094 (_ BitVec 64) (_ BitVec 32)) Unit!39940)

(assert (=> b!1207175 (= lt!547690 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1207176 () Bool)

(declare-fun e!685578 () Bool)

(declare-fun tp_is_empty!30669 () Bool)

(assert (=> b!1207176 (= e!685578 tp_is_empty!30669)))

(declare-fun e!685580 () Bool)

(declare-fun lt!547689 () Bool)

(declare-fun b!1207177 () Bool)

(assert (=> b!1207177 (= e!685580 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547689) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1207178 () Bool)

(declare-fun res!802773 () Bool)

(declare-fun e!685591 () Bool)

(assert (=> b!1207178 (=> (not res!802773) (not e!685591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78094 (_ BitVec 32)) Bool)

(assert (=> b!1207178 (= res!802773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1207179 () Bool)

(declare-fun e!685588 () Bool)

(declare-fun e!685592 () Bool)

(assert (=> b!1207179 (= e!685588 e!685592)))

(declare-fun res!802765 () Bool)

(assert (=> b!1207179 (=> res!802765 e!685592)))

(declare-fun lt!547694 () ListLongMap!17867)

(assert (=> b!1207179 (= res!802765 (not (contains!6952 lt!547694 k0!934)))))

(assert (=> b!1207179 (= lt!547694 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207180 () Bool)

(declare-fun e!685577 () Bool)

(assert (=> b!1207180 (= e!685577 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!685584 () Bool)

(declare-fun call!58929 () ListLongMap!17867)

(declare-fun b!1207181 () Bool)

(declare-fun -!1857 (ListLongMap!17867 (_ BitVec 64)) ListLongMap!17867)

(assert (=> b!1207181 (= e!685584 (= call!58929 (-!1857 call!58930 k0!934)))))

(declare-fun b!1207182 () Bool)

(assert (=> b!1207182 (= e!685592 (or (bvsge (size!38220 _keys!1208) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208))))))

(declare-datatypes ((List!26710 0))(
  ( (Nil!26707) (Cons!26706 (h!27915 (_ BitVec 64)) (t!39662 List!26710)) )
))
(declare-fun arrayNoDuplicates!0 (array!78094 (_ BitVec 32) List!26710) Bool)

(assert (=> b!1207182 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26707)))

(declare-fun lt!547682 () Unit!39940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78094 (_ BitVec 32) (_ BitVec 32)) Unit!39940)

(assert (=> b!1207182 (= lt!547682 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1207182 e!685577))

(declare-fun res!802764 () Bool)

(assert (=> b!1207182 (=> (not res!802764) (not e!685577))))

(assert (=> b!1207182 (= res!802764 e!685580)))

(declare-fun c!118561 () Bool)

(assert (=> b!1207182 (= c!118561 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547696 () Unit!39940)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!580 (array!78094 array!78096 (_ BitVec 32) (_ BitVec 32) V!46019 V!46019 (_ BitVec 64) (_ BitVec 32) Int) Unit!39940)

(assert (=> b!1207182 (= lt!547696 (lemmaListMapContainsThenArrayContainsFrom!580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547684 () Unit!39940)

(declare-fun e!685590 () Unit!39940)

(assert (=> b!1207182 (= lt!547684 e!685590)))

(assert (=> b!1207182 (= c!118558 (and (not lt!547689) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1207182 (= lt!547689 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1207183 () Bool)

(assert (=> b!1207183 (= e!685591 e!685586)))

(declare-fun res!802760 () Bool)

(assert (=> b!1207183 (=> (not res!802760) (not e!685586))))

(declare-fun lt!547687 () array!78094)

(assert (=> b!1207183 (= res!802760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547687 mask!1564))))

(assert (=> b!1207183 (= lt!547687 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))

(declare-fun b!1207184 () Bool)

(declare-fun e!685581 () Bool)

(assert (=> b!1207184 (= e!685587 e!685581)))

(declare-fun res!802769 () Bool)

(assert (=> b!1207184 (=> res!802769 e!685581)))

(assert (=> b!1207184 (= res!802769 (not (= from!1455 i!673)))))

(declare-fun lt!547692 () array!78096)

(declare-fun lt!547688 () ListLongMap!17867)

(assert (=> b!1207184 (= lt!547688 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3275 (Int (_ BitVec 64)) V!46019)

(assert (=> b!1207184 (= lt!547692 (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)))))

(declare-fun lt!547693 () ListLongMap!17867)

(assert (=> b!1207184 (= lt!547693 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!58927 () Bool)

(declare-fun call!58932 () ListLongMap!17867)

(declare-fun c!118560 () Bool)

(declare-fun +!3978 (ListLongMap!17867 tuple2!19886) ListLongMap!17867)

(assert (=> bm!58927 (= call!58932 (+!3978 lt!547694 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207185 () Bool)

(declare-fun lt!547683 () Unit!39940)

(assert (=> b!1207185 (= e!685585 lt!547683)))

(declare-fun call!58935 () Unit!39940)

(assert (=> b!1207185 (= lt!547683 call!58935)))

(declare-fun call!58931 () Bool)

(assert (=> b!1207185 call!58931))

(declare-fun b!1207186 () Bool)

(assert (=> b!1207186 (= e!685584 (= call!58929 call!58930))))

(declare-fun b!1207187 () Bool)

(assert (=> b!1207187 (= e!685581 e!685588)))

(declare-fun res!802768 () Bool)

(assert (=> b!1207187 (=> res!802768 e!685588)))

(assert (=> b!1207187 (= res!802768 (not (= (select (arr!37683 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1207187 e!685584))

(declare-fun c!118559 () Bool)

(assert (=> b!1207187 (= c!118559 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547695 () Unit!39940)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1061 (array!78094 array!78096 (_ BitVec 32) (_ BitVec 32) V!46019 V!46019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39940)

(assert (=> b!1207187 (= lt!547695 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1061 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207188 () Bool)

(assert (=> b!1207188 (= e!685580 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!47862 () Bool)

(declare-fun mapRes!47862 () Bool)

(declare-fun tp!90901 () Bool)

(declare-fun e!685589 () Bool)

(assert (=> mapNonEmpty!47862 (= mapRes!47862 (and tp!90901 e!685589))))

(declare-fun mapRest!47862 () (Array (_ BitVec 32) ValueCell!14625))

(declare-fun mapKey!47862 () (_ BitVec 32))

(declare-fun mapValue!47862 () ValueCell!14625)

(assert (=> mapNonEmpty!47862 (= (arr!37684 _values!996) (store mapRest!47862 mapKey!47862 mapValue!47862))))

(declare-fun bm!58928 () Bool)

(declare-fun call!58934 () Unit!39940)

(assert (=> bm!58928 (= call!58935 call!58934)))

(declare-fun bm!58929 () Bool)

(declare-fun addStillContains!1042 (ListLongMap!17867 (_ BitVec 64) V!46019 (_ BitVec 64)) Unit!39940)

(assert (=> bm!58929 (= call!58934 (addStillContains!1042 lt!547694 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1207189 () Bool)

(declare-fun res!802763 () Bool)

(assert (=> b!1207189 (=> (not res!802763) (not e!685591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1207189 (= res!802763 (validKeyInArray!0 k0!934))))

(declare-fun b!1207190 () Bool)

(declare-fun lt!547685 () Unit!39940)

(assert (=> b!1207190 (= e!685590 lt!547685)))

(declare-fun lt!547691 () Unit!39940)

(assert (=> b!1207190 (= lt!547691 call!58934)))

(assert (=> b!1207190 (= lt!547686 call!58932)))

(assert (=> b!1207190 call!58933))

(assert (=> b!1207190 (= lt!547685 (addStillContains!1042 lt!547686 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1207190 (contains!6952 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun bm!58930 () Bool)

(assert (=> bm!58930 (= call!58929 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!802761 () Bool)

(assert (=> start!100862 (=> (not res!802761) (not e!685591))))

(assert (=> start!100862 (= res!802761 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38220 _keys!1208))))))

(assert (=> start!100862 e!685591))

(assert (=> start!100862 tp_is_empty!30669))

(declare-fun array_inv!28608 (array!78094) Bool)

(assert (=> start!100862 (array_inv!28608 _keys!1208)))

(assert (=> start!100862 true))

(assert (=> start!100862 tp!90902))

(declare-fun e!685582 () Bool)

(declare-fun array_inv!28609 (array!78096) Bool)

(assert (=> start!100862 (and (array_inv!28609 _values!996) e!685582)))

(declare-fun b!1207174 () Bool)

(declare-fun res!802767 () Bool)

(assert (=> b!1207174 (=> (not res!802767) (not e!685591))))

(assert (=> b!1207174 (= res!802767 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38220 _keys!1208))))))

(declare-fun b!1207191 () Bool)

(assert (=> b!1207191 (= e!685582 (and e!685578 mapRes!47862))))

(declare-fun condMapEmpty!47862 () Bool)

(declare-fun mapDefault!47862 () ValueCell!14625)

(assert (=> b!1207191 (= condMapEmpty!47862 (= (arr!37684 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14625)) mapDefault!47862)))))

(declare-fun b!1207192 () Bool)

(declare-fun res!802762 () Bool)

(assert (=> b!1207192 (=> (not res!802762) (not e!685586))))

(assert (=> b!1207192 (= res!802762 (arrayNoDuplicates!0 lt!547687 #b00000000000000000000000000000000 Nil!26707))))

(declare-fun b!1207193 () Bool)

(declare-fun c!118557 () Bool)

(assert (=> b!1207193 (= c!118557 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547689))))

(declare-fun e!685579 () Unit!39940)

(assert (=> b!1207193 (= e!685579 e!685585)))

(declare-fun mapIsEmpty!47862 () Bool)

(assert (=> mapIsEmpty!47862 mapRes!47862))

(declare-fun b!1207194 () Bool)

(assert (=> b!1207194 call!58931))

(declare-fun lt!547697 () Unit!39940)

(assert (=> b!1207194 (= lt!547697 call!58935)))

(assert (=> b!1207194 (= e!685579 lt!547697)))

(declare-fun b!1207195 () Bool)

(assert (=> b!1207195 (= e!685590 e!685579)))

(assert (=> b!1207195 (= c!118560 (and (not lt!547689) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1207196 () Bool)

(declare-fun res!802770 () Bool)

(assert (=> b!1207196 (=> (not res!802770) (not e!685591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1207196 (= res!802770 (validMask!0 mask!1564))))

(declare-fun bm!58931 () Bool)

(assert (=> bm!58931 (= call!58928 call!58932)))

(declare-fun b!1207197 () Bool)

(assert (=> b!1207197 (= e!685589 tp_is_empty!30669)))

(declare-fun b!1207198 () Bool)

(declare-fun res!802759 () Bool)

(assert (=> b!1207198 (=> (not res!802759) (not e!685591))))

(assert (=> b!1207198 (= res!802759 (= (select (arr!37683 _keys!1208) i!673) k0!934))))

(declare-fun bm!58932 () Bool)

(assert (=> bm!58932 (= call!58931 call!58933)))

(declare-fun b!1207199 () Bool)

(declare-fun res!802771 () Bool)

(assert (=> b!1207199 (=> (not res!802771) (not e!685591))))

(assert (=> b!1207199 (= res!802771 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26707))))

(declare-fun b!1207200 () Bool)

(declare-fun res!802772 () Bool)

(assert (=> b!1207200 (=> (not res!802772) (not e!685591))))

(assert (=> b!1207200 (= res!802772 (and (= (size!38221 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38220 _keys!1208) (size!38221 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!100862 res!802761) b!1207196))

(assert (= (and b!1207196 res!802770) b!1207200))

(assert (= (and b!1207200 res!802772) b!1207178))

(assert (= (and b!1207178 res!802773) b!1207199))

(assert (= (and b!1207199 res!802771) b!1207174))

(assert (= (and b!1207174 res!802767) b!1207189))

(assert (= (and b!1207189 res!802763) b!1207198))

(assert (= (and b!1207198 res!802759) b!1207183))

(assert (= (and b!1207183 res!802760) b!1207192))

(assert (= (and b!1207192 res!802762) b!1207175))

(assert (= (and b!1207175 (not res!802766)) b!1207184))

(assert (= (and b!1207184 (not res!802769)) b!1207187))

(assert (= (and b!1207187 c!118559) b!1207181))

(assert (= (and b!1207187 (not c!118559)) b!1207186))

(assert (= (or b!1207181 b!1207186) bm!58930))

(assert (= (or b!1207181 b!1207186) bm!58926))

(assert (= (and b!1207187 (not res!802768)) b!1207179))

(assert (= (and b!1207179 (not res!802765)) b!1207182))

(assert (= (and b!1207182 c!118558) b!1207190))

(assert (= (and b!1207182 (not c!118558)) b!1207195))

(assert (= (and b!1207195 c!118560) b!1207194))

(assert (= (and b!1207195 (not c!118560)) b!1207193))

(assert (= (and b!1207193 c!118557) b!1207185))

(assert (= (and b!1207193 (not c!118557)) b!1207173))

(assert (= (or b!1207194 b!1207185) bm!58928))

(assert (= (or b!1207194 b!1207185) bm!58931))

(assert (= (or b!1207194 b!1207185) bm!58932))

(assert (= (or b!1207190 bm!58932) bm!58925))

(assert (= (or b!1207190 bm!58928) bm!58929))

(assert (= (or b!1207190 bm!58931) bm!58927))

(assert (= (and b!1207182 c!118561) b!1207188))

(assert (= (and b!1207182 (not c!118561)) b!1207177))

(assert (= (and b!1207182 res!802764) b!1207180))

(assert (= (and b!1207191 condMapEmpty!47862) mapIsEmpty!47862))

(assert (= (and b!1207191 (not condMapEmpty!47862)) mapNonEmpty!47862))

(get-info :version)

(assert (= (and mapNonEmpty!47862 ((_ is ValueCellFull!14625) mapValue!47862)) b!1207197))

(assert (= (and b!1207191 ((_ is ValueCellFull!14625) mapDefault!47862)) b!1207176))

(assert (= start!100862 b!1207191))

(declare-fun b_lambda!21417 () Bool)

(assert (=> (not b_lambda!21417) (not b!1207184)))

(declare-fun t!39660 () Bool)

(declare-fun tb!10773 () Bool)

(assert (=> (and start!100862 (= defaultEntry!1004 defaultEntry!1004) t!39660) tb!10773))

(declare-fun result!22125 () Bool)

(assert (=> tb!10773 (= result!22125 tp_is_empty!30669)))

(assert (=> b!1207184 t!39660))

(declare-fun b_and!42947 () Bool)

(assert (= b_and!42945 (and (=> t!39660 result!22125) b_and!42947)))

(declare-fun m!1112785 () Bool)

(assert (=> b!1207184 m!1112785))

(declare-fun m!1112787 () Bool)

(assert (=> b!1207184 m!1112787))

(declare-fun m!1112789 () Bool)

(assert (=> b!1207184 m!1112789))

(declare-fun m!1112791 () Bool)

(assert (=> b!1207184 m!1112791))

(declare-fun m!1112793 () Bool)

(assert (=> b!1207189 m!1112793))

(declare-fun m!1112795 () Bool)

(assert (=> b!1207196 m!1112795))

(declare-fun m!1112797 () Bool)

(assert (=> b!1207199 m!1112797))

(declare-fun m!1112799 () Bool)

(assert (=> b!1207180 m!1112799))

(declare-fun m!1112801 () Bool)

(assert (=> start!100862 m!1112801))

(declare-fun m!1112803 () Bool)

(assert (=> start!100862 m!1112803))

(declare-fun m!1112805 () Bool)

(assert (=> b!1207192 m!1112805))

(declare-fun m!1112807 () Bool)

(assert (=> b!1207187 m!1112807))

(declare-fun m!1112809 () Bool)

(assert (=> b!1207187 m!1112809))

(declare-fun m!1112811 () Bool)

(assert (=> bm!58927 m!1112811))

(declare-fun m!1112813 () Bool)

(assert (=> b!1207183 m!1112813))

(declare-fun m!1112815 () Bool)

(assert (=> b!1207183 m!1112815))

(declare-fun m!1112817 () Bool)

(assert (=> bm!58929 m!1112817))

(declare-fun m!1112819 () Bool)

(assert (=> b!1207198 m!1112819))

(declare-fun m!1112821 () Bool)

(assert (=> b!1207181 m!1112821))

(declare-fun m!1112823 () Bool)

(assert (=> b!1207182 m!1112823))

(declare-fun m!1112825 () Bool)

(assert (=> b!1207182 m!1112825))

(declare-fun m!1112827 () Bool)

(assert (=> b!1207182 m!1112827))

(assert (=> b!1207188 m!1112799))

(declare-fun m!1112829 () Bool)

(assert (=> mapNonEmpty!47862 m!1112829))

(declare-fun m!1112831 () Bool)

(assert (=> b!1207178 m!1112831))

(declare-fun m!1112833 () Bool)

(assert (=> bm!58930 m!1112833))

(declare-fun m!1112835 () Bool)

(assert (=> b!1207190 m!1112835))

(declare-fun m!1112837 () Bool)

(assert (=> b!1207190 m!1112837))

(assert (=> b!1207190 m!1112837))

(declare-fun m!1112839 () Bool)

(assert (=> b!1207190 m!1112839))

(declare-fun m!1112841 () Bool)

(assert (=> b!1207175 m!1112841))

(declare-fun m!1112843 () Bool)

(assert (=> b!1207175 m!1112843))

(declare-fun m!1112845 () Bool)

(assert (=> bm!58925 m!1112845))

(declare-fun m!1112847 () Bool)

(assert (=> b!1207179 m!1112847))

(declare-fun m!1112849 () Bool)

(assert (=> b!1207179 m!1112849))

(assert (=> bm!58926 m!1112849))

(check-sat (not b!1207183) (not b_lambda!21417) (not mapNonEmpty!47862) (not b!1207178) (not start!100862) (not b!1207184) (not bm!58926) (not b!1207189) b_and!42947 (not b!1207192) (not b!1207199) (not b!1207182) (not b!1207180) (not b!1207187) (not b!1207181) (not bm!58927) tp_is_empty!30669 (not b!1207188) (not bm!58929) (not bm!58930) (not b!1207179) (not b!1207175) (not b_next!25965) (not b!1207196) (not b!1207190) (not bm!58925))
(check-sat b_and!42947 (not b_next!25965))
(get-model)

(declare-fun b_lambda!21421 () Bool)

(assert (= b_lambda!21417 (or (and start!100862 b_free!25965) b_lambda!21421)))

(check-sat (not b!1207183) (not mapNonEmpty!47862) (not b!1207178) (not start!100862) (not b!1207184) (not bm!58926) (not b!1207189) b_and!42947 (not b!1207192) (not b!1207199) (not b!1207182) (not b!1207180) (not b!1207187) (not b!1207181) (not bm!58927) tp_is_empty!30669 (not b!1207188) (not bm!58929) (not bm!58930) (not b!1207179) (not b!1207175) (not b_lambda!21421) (not b_next!25965) (not b!1207196) (not b!1207190) (not bm!58925))
(check-sat b_and!42947 (not b_next!25965))
(get-model)

(declare-fun d!132885 () Bool)

(declare-fun e!685643 () Bool)

(assert (=> d!132885 e!685643))

(declare-fun res!802823 () Bool)

(assert (=> d!132885 (=> (not res!802823) (not e!685643))))

(declare-fun lt!547756 () ListLongMap!17867)

(assert (=> d!132885 (= res!802823 (contains!6952 lt!547756 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!547754 () List!26709)

(assert (=> d!132885 (= lt!547756 (ListLongMap!17868 lt!547754))))

(declare-fun lt!547755 () Unit!39940)

(declare-fun lt!547757 () Unit!39940)

(assert (=> d!132885 (= lt!547755 lt!547757)))

(declare-datatypes ((Option!690 0))(
  ( (Some!689 (v!18039 V!46019)) (None!688) )
))
(declare-fun getValueByKey!639 (List!26709 (_ BitVec 64)) Option!690)

(assert (=> d!132885 (= (getValueByKey!639 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!689 (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!314 (List!26709 (_ BitVec 64) V!46019) Unit!39940)

(assert (=> d!132885 (= lt!547757 (lemmaContainsTupThenGetReturnValue!314 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun insertStrictlySorted!406 (List!26709 (_ BitVec 64) V!46019) List!26709)

(assert (=> d!132885 (= lt!547754 (insertStrictlySorted!406 (toList!8949 lt!547694) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132885 (= (+!3978 lt!547694 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547756)))

(declare-fun b!1207293 () Bool)

(declare-fun res!802824 () Bool)

(assert (=> b!1207293 (=> (not res!802824) (not e!685643))))

(assert (=> b!1207293 (= res!802824 (= (getValueByKey!639 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!689 (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1207294 () Bool)

(declare-fun contains!6954 (List!26709 tuple2!19886) Bool)

(assert (=> b!1207294 (= e!685643 (contains!6954 (toList!8949 lt!547756) (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132885 res!802823) b!1207293))

(assert (= (and b!1207293 res!802824) b!1207294))

(declare-fun m!1112919 () Bool)

(assert (=> d!132885 m!1112919))

(declare-fun m!1112921 () Bool)

(assert (=> d!132885 m!1112921))

(declare-fun m!1112923 () Bool)

(assert (=> d!132885 m!1112923))

(declare-fun m!1112925 () Bool)

(assert (=> d!132885 m!1112925))

(declare-fun m!1112927 () Bool)

(assert (=> b!1207293 m!1112927))

(declare-fun m!1112929 () Bool)

(assert (=> b!1207294 m!1112929))

(assert (=> bm!58927 d!132885))

(declare-fun b!1207319 () Bool)

(declare-fun lt!547777 () Unit!39940)

(declare-fun lt!547772 () Unit!39940)

(assert (=> b!1207319 (= lt!547777 lt!547772)))

(declare-fun lt!547776 () (_ BitVec 64))

(declare-fun lt!547778 () V!46019)

(declare-fun lt!547774 () ListLongMap!17867)

(declare-fun lt!547773 () (_ BitVec 64))

(assert (=> b!1207319 (not (contains!6952 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778)) lt!547776))))

(declare-fun addStillNotContains!295 (ListLongMap!17867 (_ BitVec 64) V!46019 (_ BitVec 64)) Unit!39940)

(assert (=> b!1207319 (= lt!547772 (addStillNotContains!295 lt!547774 lt!547773 lt!547778 lt!547776))))

(assert (=> b!1207319 (= lt!547776 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19245 (ValueCell!14625 V!46019) V!46019)

(assert (=> b!1207319 (= lt!547778 (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207319 (= lt!547773 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58962 () ListLongMap!17867)

(assert (=> b!1207319 (= lt!547774 call!58962)))

(declare-fun e!685659 () ListLongMap!17867)

(assert (=> b!1207319 (= e!685659 (+!3978 call!58962 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207320 () Bool)

(declare-fun res!802836 () Bool)

(declare-fun e!685658 () Bool)

(assert (=> b!1207320 (=> (not res!802836) (not e!685658))))

(declare-fun lt!547775 () ListLongMap!17867)

(assert (=> b!1207320 (= res!802836 (not (contains!6952 lt!547775 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207321 () Bool)

(declare-fun e!685660 () ListLongMap!17867)

(assert (=> b!1207321 (= e!685660 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207322 () Bool)

(declare-fun e!685662 () Bool)

(declare-fun e!685664 () Bool)

(assert (=> b!1207322 (= e!685662 e!685664)))

(declare-fun c!118586 () Bool)

(assert (=> b!1207322 (= c!118586 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 lt!547687)))))

(declare-fun b!1207324 () Bool)

(declare-fun e!685661 () Bool)

(assert (=> b!1207324 (= e!685662 e!685661)))

(assert (=> b!1207324 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 lt!547687)))))

(declare-fun res!802833 () Bool)

(assert (=> b!1207324 (= res!802833 (contains!6952 lt!547775 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207324 (=> (not res!802833) (not e!685661))))

(declare-fun b!1207325 () Bool)

(declare-fun isEmpty!990 (ListLongMap!17867) Bool)

(assert (=> b!1207325 (= e!685664 (isEmpty!990 lt!547775))))

(declare-fun b!1207326 () Bool)

(assert (=> b!1207326 (= e!685660 e!685659)))

(declare-fun c!118587 () Bool)

(assert (=> b!1207326 (= c!118587 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1207327 () Bool)

(assert (=> b!1207327 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 lt!547687)))))

(assert (=> b!1207327 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38221 lt!547692)))))

(declare-fun apply!1000 (ListLongMap!17867 (_ BitVec 64)) V!46019)

(assert (=> b!1207327 (= e!685661 (= (apply!1000 lt!547775 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207328 () Bool)

(assert (=> b!1207328 (= e!685664 (= lt!547775 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207329 () Bool)

(assert (=> b!1207329 (= e!685659 call!58962)))

(declare-fun d!132887 () Bool)

(assert (=> d!132887 e!685658))

(declare-fun res!802835 () Bool)

(assert (=> d!132887 (=> (not res!802835) (not e!685658))))

(assert (=> d!132887 (= res!802835 (not (contains!6952 lt!547775 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132887 (= lt!547775 e!685660)))

(declare-fun c!118585 () Bool)

(assert (=> d!132887 (= c!118585 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 lt!547687)))))

(assert (=> d!132887 (validMask!0 mask!1564)))

(assert (=> d!132887 (= (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547775)))

(declare-fun b!1207323 () Bool)

(assert (=> b!1207323 (= e!685658 e!685662)))

(declare-fun c!118588 () Bool)

(declare-fun e!685663 () Bool)

(assert (=> b!1207323 (= c!118588 e!685663)))

(declare-fun res!802834 () Bool)

(assert (=> b!1207323 (=> (not res!802834) (not e!685663))))

(assert (=> b!1207323 (= res!802834 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 lt!547687)))))

(declare-fun b!1207330 () Bool)

(assert (=> b!1207330 (= e!685663 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207330 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!58959 () Bool)

(assert (=> bm!58959 (= call!58962 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132887 c!118585) b!1207321))

(assert (= (and d!132887 (not c!118585)) b!1207326))

(assert (= (and b!1207326 c!118587) b!1207319))

(assert (= (and b!1207326 (not c!118587)) b!1207329))

(assert (= (or b!1207319 b!1207329) bm!58959))

(assert (= (and d!132887 res!802835) b!1207320))

(assert (= (and b!1207320 res!802836) b!1207323))

(assert (= (and b!1207323 res!802834) b!1207330))

(assert (= (and b!1207323 c!118588) b!1207324))

(assert (= (and b!1207323 (not c!118588)) b!1207322))

(assert (= (and b!1207324 res!802833) b!1207327))

(assert (= (and b!1207322 c!118586) b!1207328))

(assert (= (and b!1207322 (not c!118586)) b!1207325))

(declare-fun b_lambda!21423 () Bool)

(assert (=> (not b_lambda!21423) (not b!1207319)))

(assert (=> b!1207319 t!39660))

(declare-fun b_and!42953 () Bool)

(assert (= b_and!42947 (and (=> t!39660 result!22125) b_and!42953)))

(declare-fun b_lambda!21425 () Bool)

(assert (=> (not b_lambda!21425) (not b!1207327)))

(assert (=> b!1207327 t!39660))

(declare-fun b_and!42955 () Bool)

(assert (= b_and!42953 (and (=> t!39660 result!22125) b_and!42955)))

(declare-fun m!1112931 () Bool)

(assert (=> b!1207325 m!1112931))

(assert (=> b!1207319 m!1112787))

(declare-fun m!1112933 () Bool)

(assert (=> b!1207319 m!1112933))

(assert (=> b!1207319 m!1112787))

(declare-fun m!1112935 () Bool)

(assert (=> b!1207319 m!1112935))

(declare-fun m!1112937 () Bool)

(assert (=> b!1207319 m!1112937))

(declare-fun m!1112939 () Bool)

(assert (=> b!1207319 m!1112939))

(assert (=> b!1207319 m!1112939))

(declare-fun m!1112941 () Bool)

(assert (=> b!1207319 m!1112941))

(assert (=> b!1207319 m!1112933))

(declare-fun m!1112943 () Bool)

(assert (=> b!1207319 m!1112943))

(declare-fun m!1112945 () Bool)

(assert (=> b!1207319 m!1112945))

(assert (=> b!1207327 m!1112787))

(assert (=> b!1207327 m!1112933))

(assert (=> b!1207327 m!1112787))

(assert (=> b!1207327 m!1112935))

(assert (=> b!1207327 m!1112937))

(assert (=> b!1207327 m!1112937))

(declare-fun m!1112947 () Bool)

(assert (=> b!1207327 m!1112947))

(assert (=> b!1207327 m!1112933))

(assert (=> b!1207326 m!1112937))

(assert (=> b!1207326 m!1112937))

(declare-fun m!1112949 () Bool)

(assert (=> b!1207326 m!1112949))

(declare-fun m!1112951 () Bool)

(assert (=> b!1207328 m!1112951))

(declare-fun m!1112953 () Bool)

(assert (=> d!132887 m!1112953))

(assert (=> d!132887 m!1112795))

(assert (=> b!1207324 m!1112937))

(assert (=> b!1207324 m!1112937))

(declare-fun m!1112955 () Bool)

(assert (=> b!1207324 m!1112955))

(declare-fun m!1112957 () Bool)

(assert (=> b!1207320 m!1112957))

(assert (=> b!1207330 m!1112937))

(assert (=> b!1207330 m!1112937))

(assert (=> b!1207330 m!1112949))

(assert (=> bm!58959 m!1112951))

(assert (=> bm!58930 d!132887))

(declare-fun b!1207331 () Bool)

(declare-fun lt!547784 () Unit!39940)

(declare-fun lt!547779 () Unit!39940)

(assert (=> b!1207331 (= lt!547784 lt!547779)))

(declare-fun lt!547780 () (_ BitVec 64))

(declare-fun lt!547785 () V!46019)

(declare-fun lt!547783 () (_ BitVec 64))

(declare-fun lt!547781 () ListLongMap!17867)

(assert (=> b!1207331 (not (contains!6952 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785)) lt!547783))))

(assert (=> b!1207331 (= lt!547779 (addStillNotContains!295 lt!547781 lt!547780 lt!547785 lt!547783))))

(assert (=> b!1207331 (= lt!547783 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207331 (= lt!547785 (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207331 (= lt!547780 (select (arr!37683 lt!547687) from!1455))))

(declare-fun call!58963 () ListLongMap!17867)

(assert (=> b!1207331 (= lt!547781 call!58963)))

(declare-fun e!685666 () ListLongMap!17867)

(assert (=> b!1207331 (= e!685666 (+!3978 call!58963 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207332 () Bool)

(declare-fun res!802840 () Bool)

(declare-fun e!685665 () Bool)

(assert (=> b!1207332 (=> (not res!802840) (not e!685665))))

(declare-fun lt!547782 () ListLongMap!17867)

(assert (=> b!1207332 (= res!802840 (not (contains!6952 lt!547782 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207333 () Bool)

(declare-fun e!685667 () ListLongMap!17867)

(assert (=> b!1207333 (= e!685667 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207334 () Bool)

(declare-fun e!685669 () Bool)

(declare-fun e!685671 () Bool)

(assert (=> b!1207334 (= e!685669 e!685671)))

(declare-fun c!118590 () Bool)

(assert (=> b!1207334 (= c!118590 (bvslt from!1455 (size!38220 lt!547687)))))

(declare-fun b!1207336 () Bool)

(declare-fun e!685668 () Bool)

(assert (=> b!1207336 (= e!685669 e!685668)))

(assert (=> b!1207336 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38220 lt!547687)))))

(declare-fun res!802837 () Bool)

(assert (=> b!1207336 (= res!802837 (contains!6952 lt!547782 (select (arr!37683 lt!547687) from!1455)))))

(assert (=> b!1207336 (=> (not res!802837) (not e!685668))))

(declare-fun b!1207337 () Bool)

(assert (=> b!1207337 (= e!685671 (isEmpty!990 lt!547782))))

(declare-fun b!1207338 () Bool)

(assert (=> b!1207338 (= e!685667 e!685666)))

(declare-fun c!118591 () Bool)

(assert (=> b!1207338 (= c!118591 (validKeyInArray!0 (select (arr!37683 lt!547687) from!1455)))))

(declare-fun b!1207339 () Bool)

(assert (=> b!1207339 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38220 lt!547687)))))

(assert (=> b!1207339 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38221 lt!547692)))))

(assert (=> b!1207339 (= e!685668 (= (apply!1000 lt!547782 (select (arr!37683 lt!547687) from!1455)) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207340 () Bool)

(assert (=> b!1207340 (= e!685671 (= lt!547782 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207341 () Bool)

(assert (=> b!1207341 (= e!685666 call!58963)))

(declare-fun d!132889 () Bool)

(assert (=> d!132889 e!685665))

(declare-fun res!802839 () Bool)

(assert (=> d!132889 (=> (not res!802839) (not e!685665))))

(assert (=> d!132889 (= res!802839 (not (contains!6952 lt!547782 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132889 (= lt!547782 e!685667)))

(declare-fun c!118589 () Bool)

(assert (=> d!132889 (= c!118589 (bvsge from!1455 (size!38220 lt!547687)))))

(assert (=> d!132889 (validMask!0 mask!1564)))

(assert (=> d!132889 (= (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!547782)))

(declare-fun b!1207335 () Bool)

(assert (=> b!1207335 (= e!685665 e!685669)))

(declare-fun c!118592 () Bool)

(declare-fun e!685670 () Bool)

(assert (=> b!1207335 (= c!118592 e!685670)))

(declare-fun res!802838 () Bool)

(assert (=> b!1207335 (=> (not res!802838) (not e!685670))))

(assert (=> b!1207335 (= res!802838 (bvslt from!1455 (size!38220 lt!547687)))))

(declare-fun b!1207342 () Bool)

(assert (=> b!1207342 (= e!685670 (validKeyInArray!0 (select (arr!37683 lt!547687) from!1455)))))

(assert (=> b!1207342 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!58960 () Bool)

(assert (=> bm!58960 (= call!58963 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132889 c!118589) b!1207333))

(assert (= (and d!132889 (not c!118589)) b!1207338))

(assert (= (and b!1207338 c!118591) b!1207331))

(assert (= (and b!1207338 (not c!118591)) b!1207341))

(assert (= (or b!1207331 b!1207341) bm!58960))

(assert (= (and d!132889 res!802839) b!1207332))

(assert (= (and b!1207332 res!802840) b!1207335))

(assert (= (and b!1207335 res!802838) b!1207342))

(assert (= (and b!1207335 c!118592) b!1207336))

(assert (= (and b!1207335 (not c!118592)) b!1207334))

(assert (= (and b!1207336 res!802837) b!1207339))

(assert (= (and b!1207334 c!118590) b!1207340))

(assert (= (and b!1207334 (not c!118590)) b!1207337))

(declare-fun b_lambda!21427 () Bool)

(assert (=> (not b_lambda!21427) (not b!1207331)))

(assert (=> b!1207331 t!39660))

(declare-fun b_and!42957 () Bool)

(assert (= b_and!42955 (and (=> t!39660 result!22125) b_and!42957)))

(declare-fun b_lambda!21429 () Bool)

(assert (=> (not b_lambda!21429) (not b!1207339)))

(assert (=> b!1207339 t!39660))

(declare-fun b_and!42959 () Bool)

(assert (= b_and!42957 (and (=> t!39660 result!22125) b_and!42959)))

(declare-fun m!1112959 () Bool)

(assert (=> b!1207337 m!1112959))

(assert (=> b!1207331 m!1112787))

(declare-fun m!1112961 () Bool)

(assert (=> b!1207331 m!1112961))

(assert (=> b!1207331 m!1112787))

(declare-fun m!1112963 () Bool)

(assert (=> b!1207331 m!1112963))

(declare-fun m!1112965 () Bool)

(assert (=> b!1207331 m!1112965))

(declare-fun m!1112967 () Bool)

(assert (=> b!1207331 m!1112967))

(assert (=> b!1207331 m!1112967))

(declare-fun m!1112969 () Bool)

(assert (=> b!1207331 m!1112969))

(assert (=> b!1207331 m!1112961))

(declare-fun m!1112971 () Bool)

(assert (=> b!1207331 m!1112971))

(declare-fun m!1112973 () Bool)

(assert (=> b!1207331 m!1112973))

(assert (=> b!1207339 m!1112787))

(assert (=> b!1207339 m!1112961))

(assert (=> b!1207339 m!1112787))

(assert (=> b!1207339 m!1112963))

(assert (=> b!1207339 m!1112965))

(assert (=> b!1207339 m!1112965))

(declare-fun m!1112975 () Bool)

(assert (=> b!1207339 m!1112975))

(assert (=> b!1207339 m!1112961))

(assert (=> b!1207338 m!1112965))

(assert (=> b!1207338 m!1112965))

(declare-fun m!1112977 () Bool)

(assert (=> b!1207338 m!1112977))

(declare-fun m!1112979 () Bool)

(assert (=> b!1207340 m!1112979))

(declare-fun m!1112981 () Bool)

(assert (=> d!132889 m!1112981))

(assert (=> d!132889 m!1112795))

(assert (=> b!1207336 m!1112965))

(assert (=> b!1207336 m!1112965))

(declare-fun m!1112983 () Bool)

(assert (=> b!1207336 m!1112983))

(declare-fun m!1112985 () Bool)

(assert (=> b!1207332 m!1112985))

(assert (=> b!1207342 m!1112965))

(assert (=> b!1207342 m!1112965))

(assert (=> b!1207342 m!1112977))

(assert (=> bm!58960 m!1112979))

(assert (=> b!1207184 d!132889))

(declare-fun b!1207343 () Bool)

(declare-fun lt!547791 () Unit!39940)

(declare-fun lt!547786 () Unit!39940)

(assert (=> b!1207343 (= lt!547791 lt!547786)))

(declare-fun lt!547787 () (_ BitVec 64))

(declare-fun lt!547788 () ListLongMap!17867)

(declare-fun lt!547792 () V!46019)

(declare-fun lt!547790 () (_ BitVec 64))

(assert (=> b!1207343 (not (contains!6952 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792)) lt!547790))))

(assert (=> b!1207343 (= lt!547786 (addStillNotContains!295 lt!547788 lt!547787 lt!547792 lt!547790))))

(assert (=> b!1207343 (= lt!547790 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207343 (= lt!547792 (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207343 (= lt!547787 (select (arr!37683 _keys!1208) from!1455))))

(declare-fun call!58964 () ListLongMap!17867)

(assert (=> b!1207343 (= lt!547788 call!58964)))

(declare-fun e!685673 () ListLongMap!17867)

(assert (=> b!1207343 (= e!685673 (+!3978 call!58964 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207344 () Bool)

(declare-fun res!802844 () Bool)

(declare-fun e!685672 () Bool)

(assert (=> b!1207344 (=> (not res!802844) (not e!685672))))

(declare-fun lt!547789 () ListLongMap!17867)

(assert (=> b!1207344 (= res!802844 (not (contains!6952 lt!547789 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207345 () Bool)

(declare-fun e!685674 () ListLongMap!17867)

(assert (=> b!1207345 (= e!685674 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207346 () Bool)

(declare-fun e!685676 () Bool)

(declare-fun e!685678 () Bool)

(assert (=> b!1207346 (= e!685676 e!685678)))

(declare-fun c!118594 () Bool)

(assert (=> b!1207346 (= c!118594 (bvslt from!1455 (size!38220 _keys!1208)))))

(declare-fun b!1207348 () Bool)

(declare-fun e!685675 () Bool)

(assert (=> b!1207348 (= e!685676 e!685675)))

(assert (=> b!1207348 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38220 _keys!1208)))))

(declare-fun res!802841 () Bool)

(assert (=> b!1207348 (= res!802841 (contains!6952 lt!547789 (select (arr!37683 _keys!1208) from!1455)))))

(assert (=> b!1207348 (=> (not res!802841) (not e!685675))))

(declare-fun b!1207349 () Bool)

(assert (=> b!1207349 (= e!685678 (isEmpty!990 lt!547789))))

(declare-fun b!1207350 () Bool)

(assert (=> b!1207350 (= e!685674 e!685673)))

(declare-fun c!118595 () Bool)

(assert (=> b!1207350 (= c!118595 (validKeyInArray!0 (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun b!1207351 () Bool)

(assert (=> b!1207351 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38220 _keys!1208)))))

(assert (=> b!1207351 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38221 _values!996)))))

(assert (=> b!1207351 (= e!685675 (= (apply!1000 lt!547789 (select (arr!37683 _keys!1208) from!1455)) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207352 () Bool)

(assert (=> b!1207352 (= e!685678 (= lt!547789 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207353 () Bool)

(assert (=> b!1207353 (= e!685673 call!58964)))

(declare-fun d!132891 () Bool)

(assert (=> d!132891 e!685672))

(declare-fun res!802843 () Bool)

(assert (=> d!132891 (=> (not res!802843) (not e!685672))))

(assert (=> d!132891 (= res!802843 (not (contains!6952 lt!547789 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132891 (= lt!547789 e!685674)))

(declare-fun c!118593 () Bool)

(assert (=> d!132891 (= c!118593 (bvsge from!1455 (size!38220 _keys!1208)))))

(assert (=> d!132891 (validMask!0 mask!1564)))

(assert (=> d!132891 (= (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!547789)))

(declare-fun b!1207347 () Bool)

(assert (=> b!1207347 (= e!685672 e!685676)))

(declare-fun c!118596 () Bool)

(declare-fun e!685677 () Bool)

(assert (=> b!1207347 (= c!118596 e!685677)))

(declare-fun res!802842 () Bool)

(assert (=> b!1207347 (=> (not res!802842) (not e!685677))))

(assert (=> b!1207347 (= res!802842 (bvslt from!1455 (size!38220 _keys!1208)))))

(declare-fun b!1207354 () Bool)

(assert (=> b!1207354 (= e!685677 (validKeyInArray!0 (select (arr!37683 _keys!1208) from!1455)))))

(assert (=> b!1207354 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!58961 () Bool)

(assert (=> bm!58961 (= call!58964 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132891 c!118593) b!1207345))

(assert (= (and d!132891 (not c!118593)) b!1207350))

(assert (= (and b!1207350 c!118595) b!1207343))

(assert (= (and b!1207350 (not c!118595)) b!1207353))

(assert (= (or b!1207343 b!1207353) bm!58961))

(assert (= (and d!132891 res!802843) b!1207344))

(assert (= (and b!1207344 res!802844) b!1207347))

(assert (= (and b!1207347 res!802842) b!1207354))

(assert (= (and b!1207347 c!118596) b!1207348))

(assert (= (and b!1207347 (not c!118596)) b!1207346))

(assert (= (and b!1207348 res!802841) b!1207351))

(assert (= (and b!1207346 c!118594) b!1207352))

(assert (= (and b!1207346 (not c!118594)) b!1207349))

(declare-fun b_lambda!21431 () Bool)

(assert (=> (not b_lambda!21431) (not b!1207343)))

(assert (=> b!1207343 t!39660))

(declare-fun b_and!42961 () Bool)

(assert (= b_and!42959 (and (=> t!39660 result!22125) b_and!42961)))

(declare-fun b_lambda!21433 () Bool)

(assert (=> (not b_lambda!21433) (not b!1207351)))

(assert (=> b!1207351 t!39660))

(declare-fun b_and!42963 () Bool)

(assert (= b_and!42961 (and (=> t!39660 result!22125) b_and!42963)))

(declare-fun m!1112987 () Bool)

(assert (=> b!1207349 m!1112987))

(assert (=> b!1207343 m!1112787))

(declare-fun m!1112989 () Bool)

(assert (=> b!1207343 m!1112989))

(assert (=> b!1207343 m!1112787))

(declare-fun m!1112991 () Bool)

(assert (=> b!1207343 m!1112991))

(assert (=> b!1207343 m!1112807))

(declare-fun m!1112993 () Bool)

(assert (=> b!1207343 m!1112993))

(assert (=> b!1207343 m!1112993))

(declare-fun m!1112995 () Bool)

(assert (=> b!1207343 m!1112995))

(assert (=> b!1207343 m!1112989))

(declare-fun m!1112997 () Bool)

(assert (=> b!1207343 m!1112997))

(declare-fun m!1112999 () Bool)

(assert (=> b!1207343 m!1112999))

(assert (=> b!1207351 m!1112787))

(assert (=> b!1207351 m!1112989))

(assert (=> b!1207351 m!1112787))

(assert (=> b!1207351 m!1112991))

(assert (=> b!1207351 m!1112807))

(assert (=> b!1207351 m!1112807))

(declare-fun m!1113001 () Bool)

(assert (=> b!1207351 m!1113001))

(assert (=> b!1207351 m!1112989))

(assert (=> b!1207350 m!1112807))

(assert (=> b!1207350 m!1112807))

(declare-fun m!1113003 () Bool)

(assert (=> b!1207350 m!1113003))

(declare-fun m!1113005 () Bool)

(assert (=> b!1207352 m!1113005))

(declare-fun m!1113007 () Bool)

(assert (=> d!132891 m!1113007))

(assert (=> d!132891 m!1112795))

(assert (=> b!1207348 m!1112807))

(assert (=> b!1207348 m!1112807))

(declare-fun m!1113009 () Bool)

(assert (=> b!1207348 m!1113009))

(declare-fun m!1113011 () Bool)

(assert (=> b!1207344 m!1113011))

(assert (=> b!1207354 m!1112807))

(assert (=> b!1207354 m!1112807))

(assert (=> b!1207354 m!1113003))

(assert (=> bm!58961 m!1113005))

(assert (=> b!1207184 d!132891))

(declare-fun b!1207355 () Bool)

(declare-fun lt!547798 () Unit!39940)

(declare-fun lt!547793 () Unit!39940)

(assert (=> b!1207355 (= lt!547798 lt!547793)))

(declare-fun lt!547797 () (_ BitVec 64))

(declare-fun lt!547799 () V!46019)

(declare-fun lt!547794 () (_ BitVec 64))

(declare-fun lt!547795 () ListLongMap!17867)

(assert (=> b!1207355 (not (contains!6952 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799)) lt!547797))))

(assert (=> b!1207355 (= lt!547793 (addStillNotContains!295 lt!547795 lt!547794 lt!547799 lt!547797))))

(assert (=> b!1207355 (= lt!547797 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207355 (= lt!547799 (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207355 (= lt!547794 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58965 () ListLongMap!17867)

(assert (=> b!1207355 (= lt!547795 call!58965)))

(declare-fun e!685680 () ListLongMap!17867)

(assert (=> b!1207355 (= e!685680 (+!3978 call!58965 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207356 () Bool)

(declare-fun res!802848 () Bool)

(declare-fun e!685679 () Bool)

(assert (=> b!1207356 (=> (not res!802848) (not e!685679))))

(declare-fun lt!547796 () ListLongMap!17867)

(assert (=> b!1207356 (= res!802848 (not (contains!6952 lt!547796 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207357 () Bool)

(declare-fun e!685681 () ListLongMap!17867)

(assert (=> b!1207357 (= e!685681 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207358 () Bool)

(declare-fun e!685683 () Bool)

(declare-fun e!685685 () Bool)

(assert (=> b!1207358 (= e!685683 e!685685)))

(declare-fun c!118598 () Bool)

(assert (=> b!1207358 (= c!118598 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(declare-fun b!1207360 () Bool)

(declare-fun e!685682 () Bool)

(assert (=> b!1207360 (= e!685683 e!685682)))

(assert (=> b!1207360 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(declare-fun res!802845 () Bool)

(assert (=> b!1207360 (= res!802845 (contains!6952 lt!547796 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207360 (=> (not res!802845) (not e!685682))))

(declare-fun b!1207361 () Bool)

(assert (=> b!1207361 (= e!685685 (isEmpty!990 lt!547796))))

(declare-fun b!1207362 () Bool)

(assert (=> b!1207362 (= e!685681 e!685680)))

(declare-fun c!118599 () Bool)

(assert (=> b!1207362 (= c!118599 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1207363 () Bool)

(assert (=> b!1207363 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(assert (=> b!1207363 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38221 _values!996)))))

(assert (=> b!1207363 (= e!685682 (= (apply!1000 lt!547796 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207364 () Bool)

(assert (=> b!1207364 (= e!685685 (= lt!547796 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207365 () Bool)

(assert (=> b!1207365 (= e!685680 call!58965)))

(declare-fun d!132893 () Bool)

(assert (=> d!132893 e!685679))

(declare-fun res!802847 () Bool)

(assert (=> d!132893 (=> (not res!802847) (not e!685679))))

(assert (=> d!132893 (= res!802847 (not (contains!6952 lt!547796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132893 (= lt!547796 e!685681)))

(declare-fun c!118597 () Bool)

(assert (=> d!132893 (= c!118597 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(assert (=> d!132893 (validMask!0 mask!1564)))

(assert (=> d!132893 (= (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547796)))

(declare-fun b!1207359 () Bool)

(assert (=> b!1207359 (= e!685679 e!685683)))

(declare-fun c!118600 () Bool)

(declare-fun e!685684 () Bool)

(assert (=> b!1207359 (= c!118600 e!685684)))

(declare-fun res!802846 () Bool)

(assert (=> b!1207359 (=> (not res!802846) (not e!685684))))

(assert (=> b!1207359 (= res!802846 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(declare-fun b!1207366 () Bool)

(assert (=> b!1207366 (= e!685684 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207366 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!58962 () Bool)

(assert (=> bm!58962 (= call!58965 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132893 c!118597) b!1207357))

(assert (= (and d!132893 (not c!118597)) b!1207362))

(assert (= (and b!1207362 c!118599) b!1207355))

(assert (= (and b!1207362 (not c!118599)) b!1207365))

(assert (= (or b!1207355 b!1207365) bm!58962))

(assert (= (and d!132893 res!802847) b!1207356))

(assert (= (and b!1207356 res!802848) b!1207359))

(assert (= (and b!1207359 res!802846) b!1207366))

(assert (= (and b!1207359 c!118600) b!1207360))

(assert (= (and b!1207359 (not c!118600)) b!1207358))

(assert (= (and b!1207360 res!802845) b!1207363))

(assert (= (and b!1207358 c!118598) b!1207364))

(assert (= (and b!1207358 (not c!118598)) b!1207361))

(declare-fun b_lambda!21435 () Bool)

(assert (=> (not b_lambda!21435) (not b!1207355)))

(assert (=> b!1207355 t!39660))

(declare-fun b_and!42965 () Bool)

(assert (= b_and!42963 (and (=> t!39660 result!22125) b_and!42965)))

(declare-fun b_lambda!21437 () Bool)

(assert (=> (not b_lambda!21437) (not b!1207363)))

(assert (=> b!1207363 t!39660))

(declare-fun b_and!42967 () Bool)

(assert (= b_and!42965 (and (=> t!39660 result!22125) b_and!42967)))

(declare-fun m!1113013 () Bool)

(assert (=> b!1207361 m!1113013))

(assert (=> b!1207355 m!1112787))

(declare-fun m!1113015 () Bool)

(assert (=> b!1207355 m!1113015))

(assert (=> b!1207355 m!1112787))

(declare-fun m!1113017 () Bool)

(assert (=> b!1207355 m!1113017))

(declare-fun m!1113019 () Bool)

(assert (=> b!1207355 m!1113019))

(declare-fun m!1113021 () Bool)

(assert (=> b!1207355 m!1113021))

(assert (=> b!1207355 m!1113021))

(declare-fun m!1113023 () Bool)

(assert (=> b!1207355 m!1113023))

(assert (=> b!1207355 m!1113015))

(declare-fun m!1113025 () Bool)

(assert (=> b!1207355 m!1113025))

(declare-fun m!1113027 () Bool)

(assert (=> b!1207355 m!1113027))

(assert (=> b!1207363 m!1112787))

(assert (=> b!1207363 m!1113015))

(assert (=> b!1207363 m!1112787))

(assert (=> b!1207363 m!1113017))

(assert (=> b!1207363 m!1113019))

(assert (=> b!1207363 m!1113019))

(declare-fun m!1113029 () Bool)

(assert (=> b!1207363 m!1113029))

(assert (=> b!1207363 m!1113015))

(assert (=> b!1207362 m!1113019))

(assert (=> b!1207362 m!1113019))

(declare-fun m!1113031 () Bool)

(assert (=> b!1207362 m!1113031))

(declare-fun m!1113033 () Bool)

(assert (=> b!1207364 m!1113033))

(declare-fun m!1113035 () Bool)

(assert (=> d!132893 m!1113035))

(assert (=> d!132893 m!1112795))

(assert (=> b!1207360 m!1113019))

(assert (=> b!1207360 m!1113019))

(declare-fun m!1113037 () Bool)

(assert (=> b!1207360 m!1113037))

(declare-fun m!1113039 () Bool)

(assert (=> b!1207356 m!1113039))

(assert (=> b!1207366 m!1113019))

(assert (=> b!1207366 m!1113019))

(assert (=> b!1207366 m!1113031))

(assert (=> bm!58962 m!1113033))

(assert (=> bm!58926 d!132893))

(declare-fun d!132895 () Bool)

(assert (=> d!132895 (contains!6952 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!547802 () Unit!39940)

(declare-fun choose!1808 (ListLongMap!17867 (_ BitVec 64) V!46019 (_ BitVec 64)) Unit!39940)

(assert (=> d!132895 (= lt!547802 (choose!1808 lt!547686 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!132895 (contains!6952 lt!547686 k0!934)))

(assert (=> d!132895 (= (addStillContains!1042 lt!547686 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!547802)))

(declare-fun bs!34123 () Bool)

(assert (= bs!34123 d!132895))

(assert (=> bs!34123 m!1112837))

(assert (=> bs!34123 m!1112837))

(assert (=> bs!34123 m!1112839))

(declare-fun m!1113041 () Bool)

(assert (=> bs!34123 m!1113041))

(declare-fun m!1113043 () Bool)

(assert (=> bs!34123 m!1113043))

(assert (=> b!1207190 d!132895))

(declare-fun d!132897 () Bool)

(declare-fun e!685691 () Bool)

(assert (=> d!132897 e!685691))

(declare-fun res!802851 () Bool)

(assert (=> d!132897 (=> res!802851 e!685691)))

(declare-fun lt!547814 () Bool)

(assert (=> d!132897 (= res!802851 (not lt!547814))))

(declare-fun lt!547811 () Bool)

(assert (=> d!132897 (= lt!547814 lt!547811)))

(declare-fun lt!547812 () Unit!39940)

(declare-fun e!685690 () Unit!39940)

(assert (=> d!132897 (= lt!547812 e!685690)))

(declare-fun c!118603 () Bool)

(assert (=> d!132897 (= c!118603 lt!547811)))

(declare-fun containsKey!593 (List!26709 (_ BitVec 64)) Bool)

(assert (=> d!132897 (= lt!547811 (containsKey!593 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!132897 (= (contains!6952 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!547814)))

(declare-fun b!1207374 () Bool)

(declare-fun lt!547813 () Unit!39940)

(assert (=> b!1207374 (= e!685690 lt!547813)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!422 (List!26709 (_ BitVec 64)) Unit!39940)

(assert (=> b!1207374 (= lt!547813 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun isDefined!462 (Option!690) Bool)

(assert (=> b!1207374 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1207375 () Bool)

(declare-fun Unit!39946 () Unit!39940)

(assert (=> b!1207375 (= e!685690 Unit!39946)))

(declare-fun b!1207376 () Bool)

(assert (=> b!1207376 (= e!685691 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!132897 c!118603) b!1207374))

(assert (= (and d!132897 (not c!118603)) b!1207375))

(assert (= (and d!132897 (not res!802851)) b!1207376))

(declare-fun m!1113045 () Bool)

(assert (=> d!132897 m!1113045))

(declare-fun m!1113047 () Bool)

(assert (=> b!1207374 m!1113047))

(declare-fun m!1113049 () Bool)

(assert (=> b!1207374 m!1113049))

(assert (=> b!1207374 m!1113049))

(declare-fun m!1113051 () Bool)

(assert (=> b!1207374 m!1113051))

(assert (=> b!1207376 m!1113049))

(assert (=> b!1207376 m!1113049))

(assert (=> b!1207376 m!1113051))

(assert (=> b!1207190 d!132897))

(declare-fun d!132899 () Bool)

(declare-fun e!685692 () Bool)

(assert (=> d!132899 e!685692))

(declare-fun res!802852 () Bool)

(assert (=> d!132899 (=> (not res!802852) (not e!685692))))

(declare-fun lt!547817 () ListLongMap!17867)

(assert (=> d!132899 (= res!802852 (contains!6952 lt!547817 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!547815 () List!26709)

(assert (=> d!132899 (= lt!547817 (ListLongMap!17868 lt!547815))))

(declare-fun lt!547816 () Unit!39940)

(declare-fun lt!547818 () Unit!39940)

(assert (=> d!132899 (= lt!547816 lt!547818)))

(assert (=> d!132899 (= (getValueByKey!639 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!689 (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132899 (= lt!547818 (lemmaContainsTupThenGetReturnValue!314 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132899 (= lt!547815 (insertStrictlySorted!406 (toList!8949 lt!547686) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132899 (= (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!547817)))

(declare-fun b!1207377 () Bool)

(declare-fun res!802853 () Bool)

(assert (=> b!1207377 (=> (not res!802853) (not e!685692))))

(assert (=> b!1207377 (= res!802853 (= (getValueByKey!639 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!689 (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207378 () Bool)

(assert (=> b!1207378 (= e!685692 (contains!6954 (toList!8949 lt!547817) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!132899 res!802852) b!1207377))

(assert (= (and b!1207377 res!802853) b!1207378))

(declare-fun m!1113053 () Bool)

(assert (=> d!132899 m!1113053))

(declare-fun m!1113055 () Bool)

(assert (=> d!132899 m!1113055))

(declare-fun m!1113057 () Bool)

(assert (=> d!132899 m!1113057))

(declare-fun m!1113059 () Bool)

(assert (=> d!132899 m!1113059))

(declare-fun m!1113061 () Bool)

(assert (=> b!1207377 m!1113061))

(declare-fun m!1113063 () Bool)

(assert (=> b!1207378 m!1113063))

(assert (=> b!1207190 d!132899))

(declare-fun bm!58965 () Bool)

(declare-fun call!58968 () Bool)

(assert (=> bm!58965 (= call!58968 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!547687 mask!1564))))

(declare-fun b!1207387 () Bool)

(declare-fun e!685701 () Bool)

(assert (=> b!1207387 (= e!685701 call!58968)))

(declare-fun b!1207388 () Bool)

(declare-fun e!685699 () Bool)

(assert (=> b!1207388 (= e!685699 e!685701)))

(declare-fun lt!547825 () (_ BitVec 64))

(assert (=> b!1207388 (= lt!547825 (select (arr!37683 lt!547687) #b00000000000000000000000000000000))))

(declare-fun lt!547826 () Unit!39940)

(assert (=> b!1207388 (= lt!547826 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!547687 lt!547825 #b00000000000000000000000000000000))))

(assert (=> b!1207388 (arrayContainsKey!0 lt!547687 lt!547825 #b00000000000000000000000000000000)))

(declare-fun lt!547827 () Unit!39940)

(assert (=> b!1207388 (= lt!547827 lt!547826)))

(declare-fun res!802859 () Bool)

(declare-datatypes ((SeekEntryResult!9935 0))(
  ( (MissingZero!9935 (index!42110 (_ BitVec 32))) (Found!9935 (index!42111 (_ BitVec 32))) (Intermediate!9935 (undefined!10747 Bool) (index!42112 (_ BitVec 32)) (x!106572 (_ BitVec 32))) (Undefined!9935) (MissingVacant!9935 (index!42113 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78094 (_ BitVec 32)) SeekEntryResult!9935)

(assert (=> b!1207388 (= res!802859 (= (seekEntryOrOpen!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) lt!547687 mask!1564) (Found!9935 #b00000000000000000000000000000000)))))

(assert (=> b!1207388 (=> (not res!802859) (not e!685701))))

(declare-fun b!1207389 () Bool)

(assert (=> b!1207389 (= e!685699 call!58968)))

(declare-fun b!1207390 () Bool)

(declare-fun e!685700 () Bool)

(assert (=> b!1207390 (= e!685700 e!685699)))

(declare-fun c!118606 () Bool)

(assert (=> b!1207390 (= c!118606 (validKeyInArray!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun d!132901 () Bool)

(declare-fun res!802858 () Bool)

(assert (=> d!132901 (=> res!802858 e!685700)))

(assert (=> d!132901 (= res!802858 (bvsge #b00000000000000000000000000000000 (size!38220 lt!547687)))))

(assert (=> d!132901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547687 mask!1564) e!685700)))

(assert (= (and d!132901 (not res!802858)) b!1207390))

(assert (= (and b!1207390 c!118606) b!1207388))

(assert (= (and b!1207390 (not c!118606)) b!1207389))

(assert (= (and b!1207388 res!802859) b!1207387))

(assert (= (or b!1207387 b!1207389) bm!58965))

(declare-fun m!1113065 () Bool)

(assert (=> bm!58965 m!1113065))

(declare-fun m!1113067 () Bool)

(assert (=> b!1207388 m!1113067))

(declare-fun m!1113069 () Bool)

(assert (=> b!1207388 m!1113069))

(declare-fun m!1113071 () Bool)

(assert (=> b!1207388 m!1113071))

(assert (=> b!1207388 m!1113067))

(declare-fun m!1113073 () Bool)

(assert (=> b!1207388 m!1113073))

(assert (=> b!1207390 m!1113067))

(assert (=> b!1207390 m!1113067))

(declare-fun m!1113075 () Bool)

(assert (=> b!1207390 m!1113075))

(assert (=> b!1207183 d!132901))

(declare-fun d!132903 () Bool)

(assert (=> d!132903 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207189 d!132903))

(declare-fun b!1207401 () Bool)

(declare-fun e!685712 () Bool)

(declare-fun e!685711 () Bool)

(assert (=> b!1207401 (= e!685712 e!685711)))

(declare-fun c!118609 () Bool)

(assert (=> b!1207401 (= c!118609 (validKeyInArray!0 (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun bm!58968 () Bool)

(declare-fun call!58971 () Bool)

(assert (=> bm!58968 (= call!58971 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!118609 (Cons!26706 (select (arr!37683 _keys!1208) from!1455) Nil!26707) Nil!26707)))))

(declare-fun d!132905 () Bool)

(declare-fun res!802867 () Bool)

(declare-fun e!685713 () Bool)

(assert (=> d!132905 (=> res!802867 e!685713)))

(assert (=> d!132905 (= res!802867 (bvsge from!1455 (size!38220 _keys!1208)))))

(assert (=> d!132905 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26707) e!685713)))

(declare-fun b!1207402 () Bool)

(assert (=> b!1207402 (= e!685711 call!58971)))

(declare-fun b!1207403 () Bool)

(declare-fun e!685710 () Bool)

(declare-fun contains!6955 (List!26710 (_ BitVec 64)) Bool)

(assert (=> b!1207403 (= e!685710 (contains!6955 Nil!26707 (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun b!1207404 () Bool)

(assert (=> b!1207404 (= e!685711 call!58971)))

(declare-fun b!1207405 () Bool)

(assert (=> b!1207405 (= e!685713 e!685712)))

(declare-fun res!802868 () Bool)

(assert (=> b!1207405 (=> (not res!802868) (not e!685712))))

(assert (=> b!1207405 (= res!802868 (not e!685710))))

(declare-fun res!802866 () Bool)

(assert (=> b!1207405 (=> (not res!802866) (not e!685710))))

(assert (=> b!1207405 (= res!802866 (validKeyInArray!0 (select (arr!37683 _keys!1208) from!1455)))))

(assert (= (and d!132905 (not res!802867)) b!1207405))

(assert (= (and b!1207405 res!802866) b!1207403))

(assert (= (and b!1207405 res!802868) b!1207401))

(assert (= (and b!1207401 c!118609) b!1207402))

(assert (= (and b!1207401 (not c!118609)) b!1207404))

(assert (= (or b!1207402 b!1207404) bm!58968))

(assert (=> b!1207401 m!1112807))

(assert (=> b!1207401 m!1112807))

(assert (=> b!1207401 m!1113003))

(assert (=> bm!58968 m!1112807))

(declare-fun m!1113077 () Bool)

(assert (=> bm!58968 m!1113077))

(assert (=> b!1207403 m!1112807))

(assert (=> b!1207403 m!1112807))

(declare-fun m!1113079 () Bool)

(assert (=> b!1207403 m!1113079))

(assert (=> b!1207405 m!1112807))

(assert (=> b!1207405 m!1112807))

(assert (=> b!1207405 m!1113003))

(assert (=> b!1207182 d!132905))

(declare-fun d!132907 () Bool)

(assert (=> d!132907 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26707)))

(declare-fun lt!547830 () Unit!39940)

(declare-fun choose!39 (array!78094 (_ BitVec 32) (_ BitVec 32)) Unit!39940)

(assert (=> d!132907 (= lt!547830 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!132907 (bvslt (size!38220 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!132907 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!547830)))

(declare-fun bs!34124 () Bool)

(assert (= bs!34124 d!132907))

(assert (=> bs!34124 m!1112823))

(declare-fun m!1113081 () Bool)

(assert (=> bs!34124 m!1113081))

(assert (=> b!1207182 d!132907))

(declare-fun d!132909 () Bool)

(declare-fun e!685716 () Bool)

(assert (=> d!132909 e!685716))

(declare-fun c!118612 () Bool)

(assert (=> d!132909 (= c!118612 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547833 () Unit!39940)

(declare-fun choose!1809 (array!78094 array!78096 (_ BitVec 32) (_ BitVec 32) V!46019 V!46019 (_ BitVec 64) (_ BitVec 32) Int) Unit!39940)

(assert (=> d!132909 (= lt!547833 (choose!1809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132909 (validMask!0 mask!1564)))

(assert (=> d!132909 (= (lemmaListMapContainsThenArrayContainsFrom!580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547833)))

(declare-fun b!1207410 () Bool)

(assert (=> b!1207410 (= e!685716 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207411 () Bool)

(assert (=> b!1207411 (= e!685716 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!132909 c!118612) b!1207410))

(assert (= (and d!132909 (not c!118612)) b!1207411))

(declare-fun m!1113083 () Bool)

(assert (=> d!132909 m!1113083))

(assert (=> d!132909 m!1112795))

(assert (=> b!1207410 m!1112799))

(assert (=> b!1207182 d!132909))

(declare-fun d!132911 () Bool)

(declare-fun e!685718 () Bool)

(assert (=> d!132911 e!685718))

(declare-fun res!802869 () Bool)

(assert (=> d!132911 (=> res!802869 e!685718)))

(declare-fun lt!547837 () Bool)

(assert (=> d!132911 (= res!802869 (not lt!547837))))

(declare-fun lt!547834 () Bool)

(assert (=> d!132911 (= lt!547837 lt!547834)))

(declare-fun lt!547835 () Unit!39940)

(declare-fun e!685717 () Unit!39940)

(assert (=> d!132911 (= lt!547835 e!685717)))

(declare-fun c!118613 () Bool)

(assert (=> d!132911 (= c!118613 lt!547834)))

(assert (=> d!132911 (= lt!547834 (containsKey!593 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(assert (=> d!132911 (= (contains!6952 (ite c!118558 lt!547686 call!58928) k0!934) lt!547837)))

(declare-fun b!1207412 () Bool)

(declare-fun lt!547836 () Unit!39940)

(assert (=> b!1207412 (= e!685717 lt!547836)))

(assert (=> b!1207412 (= lt!547836 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(assert (=> b!1207412 (isDefined!462 (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(declare-fun b!1207413 () Bool)

(declare-fun Unit!39947 () Unit!39940)

(assert (=> b!1207413 (= e!685717 Unit!39947)))

(declare-fun b!1207414 () Bool)

(assert (=> b!1207414 (= e!685718 (isDefined!462 (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934)))))

(assert (= (and d!132911 c!118613) b!1207412))

(assert (= (and d!132911 (not c!118613)) b!1207413))

(assert (= (and d!132911 (not res!802869)) b!1207414))

(declare-fun m!1113085 () Bool)

(assert (=> d!132911 m!1113085))

(declare-fun m!1113087 () Bool)

(assert (=> b!1207412 m!1113087))

(declare-fun m!1113089 () Bool)

(assert (=> b!1207412 m!1113089))

(assert (=> b!1207412 m!1113089))

(declare-fun m!1113091 () Bool)

(assert (=> b!1207412 m!1113091))

(assert (=> b!1207414 m!1113089))

(assert (=> b!1207414 m!1113089))

(assert (=> b!1207414 m!1113091))

(assert (=> bm!58925 d!132911))

(declare-fun d!132913 () Bool)

(assert (=> d!132913 (contains!6952 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!547838 () Unit!39940)

(assert (=> d!132913 (= lt!547838 (choose!1808 lt!547694 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!132913 (contains!6952 lt!547694 k0!934)))

(assert (=> d!132913 (= (addStillContains!1042 lt!547694 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944) k0!934) lt!547838)))

(declare-fun bs!34125 () Bool)

(assert (= bs!34125 d!132913))

(declare-fun m!1113093 () Bool)

(assert (=> bs!34125 m!1113093))

(assert (=> bs!34125 m!1113093))

(declare-fun m!1113095 () Bool)

(assert (=> bs!34125 m!1113095))

(declare-fun m!1113097 () Bool)

(assert (=> bs!34125 m!1113097))

(assert (=> bs!34125 m!1112847))

(assert (=> bm!58929 d!132913))

(declare-fun d!132915 () Bool)

(declare-fun lt!547841 () ListLongMap!17867)

(assert (=> d!132915 (not (contains!6952 lt!547841 k0!934))))

(declare-fun removeStrictlySorted!99 (List!26709 (_ BitVec 64)) List!26709)

(assert (=> d!132915 (= lt!547841 (ListLongMap!17868 (removeStrictlySorted!99 (toList!8949 call!58930) k0!934)))))

(assert (=> d!132915 (= (-!1857 call!58930 k0!934) lt!547841)))

(declare-fun bs!34126 () Bool)

(assert (= bs!34126 d!132915))

(declare-fun m!1113099 () Bool)

(assert (=> bs!34126 m!1113099))

(declare-fun m!1113101 () Bool)

(assert (=> bs!34126 m!1113101))

(assert (=> b!1207181 d!132915))

(declare-fun d!132917 () Bool)

(assert (=> d!132917 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1207196 d!132917))

(declare-fun d!132919 () Bool)

(declare-fun res!802874 () Bool)

(declare-fun e!685723 () Bool)

(assert (=> d!132919 (=> res!802874 e!685723)))

(assert (=> d!132919 (= res!802874 (= (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!132919 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!685723)))

(declare-fun b!1207419 () Bool)

(declare-fun e!685724 () Bool)

(assert (=> b!1207419 (= e!685723 e!685724)))

(declare-fun res!802875 () Bool)

(assert (=> b!1207419 (=> (not res!802875) (not e!685724))))

(assert (=> b!1207419 (= res!802875 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207420 () Bool)

(assert (=> b!1207420 (= e!685724 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!132919 (not res!802874)) b!1207419))

(assert (= (and b!1207419 res!802875) b!1207420))

(assert (=> d!132919 m!1113019))

(declare-fun m!1113103 () Bool)

(assert (=> b!1207420 m!1113103))

(assert (=> b!1207180 d!132919))

(declare-fun d!132921 () Bool)

(declare-fun e!685726 () Bool)

(assert (=> d!132921 e!685726))

(declare-fun res!802876 () Bool)

(assert (=> d!132921 (=> res!802876 e!685726)))

(declare-fun lt!547845 () Bool)

(assert (=> d!132921 (= res!802876 (not lt!547845))))

(declare-fun lt!547842 () Bool)

(assert (=> d!132921 (= lt!547845 lt!547842)))

(declare-fun lt!547843 () Unit!39940)

(declare-fun e!685725 () Unit!39940)

(assert (=> d!132921 (= lt!547843 e!685725)))

(declare-fun c!118614 () Bool)

(assert (=> d!132921 (= c!118614 lt!547842)))

(assert (=> d!132921 (= lt!547842 (containsKey!593 (toList!8949 lt!547694) k0!934))))

(assert (=> d!132921 (= (contains!6952 lt!547694 k0!934) lt!547845)))

(declare-fun b!1207421 () Bool)

(declare-fun lt!547844 () Unit!39940)

(assert (=> b!1207421 (= e!685725 lt!547844)))

(assert (=> b!1207421 (= lt!547844 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547694) k0!934))))

(assert (=> b!1207421 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547694) k0!934))))

(declare-fun b!1207422 () Bool)

(declare-fun Unit!39948 () Unit!39940)

(assert (=> b!1207422 (= e!685725 Unit!39948)))

(declare-fun b!1207423 () Bool)

(assert (=> b!1207423 (= e!685726 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547694) k0!934)))))

(assert (= (and d!132921 c!118614) b!1207421))

(assert (= (and d!132921 (not c!118614)) b!1207422))

(assert (= (and d!132921 (not res!802876)) b!1207423))

(declare-fun m!1113105 () Bool)

(assert (=> d!132921 m!1113105))

(declare-fun m!1113107 () Bool)

(assert (=> b!1207421 m!1113107))

(declare-fun m!1113109 () Bool)

(assert (=> b!1207421 m!1113109))

(assert (=> b!1207421 m!1113109))

(declare-fun m!1113111 () Bool)

(assert (=> b!1207421 m!1113111))

(assert (=> b!1207423 m!1113109))

(assert (=> b!1207423 m!1113109))

(assert (=> b!1207423 m!1113111))

(assert (=> b!1207179 d!132921))

(assert (=> b!1207179 d!132893))

(assert (=> b!1207188 d!132919))

(declare-fun bm!58969 () Bool)

(declare-fun call!58972 () Bool)

(assert (=> bm!58969 (= call!58972 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1207424 () Bool)

(declare-fun e!685729 () Bool)

(assert (=> b!1207424 (= e!685729 call!58972)))

(declare-fun b!1207425 () Bool)

(declare-fun e!685727 () Bool)

(assert (=> b!1207425 (= e!685727 e!685729)))

(declare-fun lt!547846 () (_ BitVec 64))

(assert (=> b!1207425 (= lt!547846 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!547847 () Unit!39940)

(assert (=> b!1207425 (= lt!547847 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!547846 #b00000000000000000000000000000000))))

(assert (=> b!1207425 (arrayContainsKey!0 _keys!1208 lt!547846 #b00000000000000000000000000000000)))

(declare-fun lt!547848 () Unit!39940)

(assert (=> b!1207425 (= lt!547848 lt!547847)))

(declare-fun res!802878 () Bool)

(assert (=> b!1207425 (= res!802878 (= (seekEntryOrOpen!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9935 #b00000000000000000000000000000000)))))

(assert (=> b!1207425 (=> (not res!802878) (not e!685729))))

(declare-fun b!1207426 () Bool)

(assert (=> b!1207426 (= e!685727 call!58972)))

(declare-fun b!1207427 () Bool)

(declare-fun e!685728 () Bool)

(assert (=> b!1207427 (= e!685728 e!685727)))

(declare-fun c!118615 () Bool)

(assert (=> b!1207427 (= c!118615 (validKeyInArray!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132923 () Bool)

(declare-fun res!802877 () Bool)

(assert (=> d!132923 (=> res!802877 e!685728)))

(assert (=> d!132923 (= res!802877 (bvsge #b00000000000000000000000000000000 (size!38220 _keys!1208)))))

(assert (=> d!132923 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!685728)))

(assert (= (and d!132923 (not res!802877)) b!1207427))

(assert (= (and b!1207427 c!118615) b!1207425))

(assert (= (and b!1207427 (not c!118615)) b!1207426))

(assert (= (and b!1207425 res!802878) b!1207424))

(assert (= (or b!1207424 b!1207426) bm!58969))

(declare-fun m!1113113 () Bool)

(assert (=> bm!58969 m!1113113))

(declare-fun m!1113115 () Bool)

(assert (=> b!1207425 m!1113115))

(declare-fun m!1113117 () Bool)

(assert (=> b!1207425 m!1113117))

(declare-fun m!1113119 () Bool)

(assert (=> b!1207425 m!1113119))

(assert (=> b!1207425 m!1113115))

(declare-fun m!1113121 () Bool)

(assert (=> b!1207425 m!1113121))

(assert (=> b!1207427 m!1113115))

(assert (=> b!1207427 m!1113115))

(declare-fun m!1113123 () Bool)

(assert (=> b!1207427 m!1113123))

(assert (=> b!1207178 d!132923))

(declare-fun call!58977 () ListLongMap!17867)

(declare-fun bm!58974 () Bool)

(assert (=> bm!58974 (= call!58977 (getCurrentListMapNoExtraKeys!5356 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)) (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!132925 () Bool)

(declare-fun e!685735 () Bool)

(assert (=> d!132925 e!685735))

(declare-fun res!802881 () Bool)

(assert (=> d!132925 (=> (not res!802881) (not e!685735))))

(assert (=> d!132925 (= res!802881 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38220 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38220 _keys!1208))))))))

(declare-fun lt!547851 () Unit!39940)

(declare-fun choose!1810 (array!78094 array!78096 (_ BitVec 32) (_ BitVec 32) V!46019 V!46019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39940)

(assert (=> d!132925 (= lt!547851 (choose!1810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132925 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 _keys!1208)))))

(assert (=> d!132925 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1061 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547851)))

(declare-fun b!1207434 () Bool)

(declare-fun e!685734 () Bool)

(declare-fun call!58978 () ListLongMap!17867)

(assert (=> b!1207434 (= e!685734 (= call!58977 call!58978))))

(assert (=> b!1207434 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38221 _values!996)))))

(declare-fun b!1207435 () Bool)

(assert (=> b!1207435 (= e!685734 (= call!58977 (-!1857 call!58978 k0!934)))))

(assert (=> b!1207435 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38221 _values!996)))))

(declare-fun bm!58975 () Bool)

(assert (=> bm!58975 (= call!58978 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207436 () Bool)

(assert (=> b!1207436 (= e!685735 e!685734)))

(declare-fun c!118618 () Bool)

(assert (=> b!1207436 (= c!118618 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (= (and d!132925 res!802881) b!1207436))

(assert (= (and b!1207436 c!118618) b!1207435))

(assert (= (and b!1207436 (not c!118618)) b!1207434))

(assert (= (or b!1207435 b!1207434) bm!58975))

(assert (= (or b!1207435 b!1207434) bm!58974))

(declare-fun b_lambda!21439 () Bool)

(assert (=> (not b_lambda!21439) (not bm!58974)))

(assert (=> bm!58974 t!39660))

(declare-fun b_and!42969 () Bool)

(assert (= b_and!42967 (and (=> t!39660 result!22125) b_and!42969)))

(assert (=> bm!58974 m!1112815))

(assert (=> bm!58974 m!1112787))

(assert (=> bm!58974 m!1112789))

(declare-fun m!1113125 () Bool)

(assert (=> bm!58974 m!1113125))

(declare-fun m!1113127 () Bool)

(assert (=> d!132925 m!1113127))

(declare-fun m!1113129 () Bool)

(assert (=> b!1207435 m!1113129))

(assert (=> bm!58975 m!1112849))

(assert (=> b!1207187 d!132925))

(declare-fun d!132927 () Bool)

(assert (=> d!132927 (= (array_inv!28608 _keys!1208) (bvsge (size!38220 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100862 d!132927))

(declare-fun d!132929 () Bool)

(assert (=> d!132929 (= (array_inv!28609 _values!996) (bvsge (size!38221 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100862 d!132929))

(declare-fun b!1207437 () Bool)

(declare-fun e!685738 () Bool)

(declare-fun e!685737 () Bool)

(assert (=> b!1207437 (= e!685738 e!685737)))

(declare-fun c!118619 () Bool)

(assert (=> b!1207437 (= c!118619 (validKeyInArray!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun bm!58976 () Bool)

(declare-fun call!58979 () Bool)

(assert (=> bm!58976 (= call!58979 (arrayNoDuplicates!0 lt!547687 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118619 (Cons!26706 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) Nil!26707) Nil!26707)))))

(declare-fun d!132931 () Bool)

(declare-fun res!802883 () Bool)

(declare-fun e!685739 () Bool)

(assert (=> d!132931 (=> res!802883 e!685739)))

(assert (=> d!132931 (= res!802883 (bvsge #b00000000000000000000000000000000 (size!38220 lt!547687)))))

(assert (=> d!132931 (= (arrayNoDuplicates!0 lt!547687 #b00000000000000000000000000000000 Nil!26707) e!685739)))

(declare-fun b!1207438 () Bool)

(assert (=> b!1207438 (= e!685737 call!58979)))

(declare-fun b!1207439 () Bool)

(declare-fun e!685736 () Bool)

(assert (=> b!1207439 (= e!685736 (contains!6955 Nil!26707 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun b!1207440 () Bool)

(assert (=> b!1207440 (= e!685737 call!58979)))

(declare-fun b!1207441 () Bool)

(assert (=> b!1207441 (= e!685739 e!685738)))

(declare-fun res!802884 () Bool)

(assert (=> b!1207441 (=> (not res!802884) (not e!685738))))

(assert (=> b!1207441 (= res!802884 (not e!685736))))

(declare-fun res!802882 () Bool)

(assert (=> b!1207441 (=> (not res!802882) (not e!685736))))

(assert (=> b!1207441 (= res!802882 (validKeyInArray!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(assert (= (and d!132931 (not res!802883)) b!1207441))

(assert (= (and b!1207441 res!802882) b!1207439))

(assert (= (and b!1207441 res!802884) b!1207437))

(assert (= (and b!1207437 c!118619) b!1207438))

(assert (= (and b!1207437 (not c!118619)) b!1207440))

(assert (= (or b!1207438 b!1207440) bm!58976))

(assert (=> b!1207437 m!1113067))

(assert (=> b!1207437 m!1113067))

(assert (=> b!1207437 m!1113075))

(assert (=> bm!58976 m!1113067))

(declare-fun m!1113131 () Bool)

(assert (=> bm!58976 m!1113131))

(assert (=> b!1207439 m!1113067))

(assert (=> b!1207439 m!1113067))

(declare-fun m!1113133 () Bool)

(assert (=> b!1207439 m!1113133))

(assert (=> b!1207441 m!1113067))

(assert (=> b!1207441 m!1113067))

(assert (=> b!1207441 m!1113075))

(assert (=> b!1207192 d!132931))

(declare-fun d!132933 () Bool)

(declare-fun res!802885 () Bool)

(declare-fun e!685740 () Bool)

(assert (=> d!132933 (=> res!802885 e!685740)))

(assert (=> d!132933 (= res!802885 (= (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132933 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!685740)))

(declare-fun b!1207442 () Bool)

(declare-fun e!685741 () Bool)

(assert (=> b!1207442 (= e!685740 e!685741)))

(declare-fun res!802886 () Bool)

(assert (=> b!1207442 (=> (not res!802886) (not e!685741))))

(assert (=> b!1207442 (= res!802886 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207443 () Bool)

(assert (=> b!1207443 (= e!685741 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132933 (not res!802885)) b!1207442))

(assert (= (and b!1207442 res!802886) b!1207443))

(assert (=> d!132933 m!1113115))

(declare-fun m!1113135 () Bool)

(assert (=> b!1207443 m!1113135))

(assert (=> b!1207175 d!132933))

(declare-fun d!132935 () Bool)

(assert (=> d!132935 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547854 () Unit!39940)

(declare-fun choose!13 (array!78094 (_ BitVec 64) (_ BitVec 32)) Unit!39940)

(assert (=> d!132935 (= lt!547854 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132935 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132935 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!547854)))

(declare-fun bs!34127 () Bool)

(assert (= bs!34127 d!132935))

(assert (=> bs!34127 m!1112841))

(declare-fun m!1113137 () Bool)

(assert (=> bs!34127 m!1113137))

(assert (=> b!1207175 d!132935))

(declare-fun b!1207444 () Bool)

(declare-fun e!685744 () Bool)

(declare-fun e!685743 () Bool)

(assert (=> b!1207444 (= e!685744 e!685743)))

(declare-fun c!118620 () Bool)

(assert (=> b!1207444 (= c!118620 (validKeyInArray!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!58977 () Bool)

(declare-fun call!58980 () Bool)

(assert (=> bm!58977 (= call!58980 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118620 (Cons!26706 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) Nil!26707) Nil!26707)))))

(declare-fun d!132937 () Bool)

(declare-fun res!802888 () Bool)

(declare-fun e!685745 () Bool)

(assert (=> d!132937 (=> res!802888 e!685745)))

(assert (=> d!132937 (= res!802888 (bvsge #b00000000000000000000000000000000 (size!38220 _keys!1208)))))

(assert (=> d!132937 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26707) e!685745)))

(declare-fun b!1207445 () Bool)

(assert (=> b!1207445 (= e!685743 call!58980)))

(declare-fun b!1207446 () Bool)

(declare-fun e!685742 () Bool)

(assert (=> b!1207446 (= e!685742 (contains!6955 Nil!26707 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1207447 () Bool)

(assert (=> b!1207447 (= e!685743 call!58980)))

(declare-fun b!1207448 () Bool)

(assert (=> b!1207448 (= e!685745 e!685744)))

(declare-fun res!802889 () Bool)

(assert (=> b!1207448 (=> (not res!802889) (not e!685744))))

(assert (=> b!1207448 (= res!802889 (not e!685742))))

(declare-fun res!802887 () Bool)

(assert (=> b!1207448 (=> (not res!802887) (not e!685742))))

(assert (=> b!1207448 (= res!802887 (validKeyInArray!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132937 (not res!802888)) b!1207448))

(assert (= (and b!1207448 res!802887) b!1207446))

(assert (= (and b!1207448 res!802889) b!1207444))

(assert (= (and b!1207444 c!118620) b!1207445))

(assert (= (and b!1207444 (not c!118620)) b!1207447))

(assert (= (or b!1207445 b!1207447) bm!58977))

(assert (=> b!1207444 m!1113115))

(assert (=> b!1207444 m!1113115))

(assert (=> b!1207444 m!1113123))

(assert (=> bm!58977 m!1113115))

(declare-fun m!1113139 () Bool)

(assert (=> bm!58977 m!1113139))

(assert (=> b!1207446 m!1113115))

(assert (=> b!1207446 m!1113115))

(declare-fun m!1113141 () Bool)

(assert (=> b!1207446 m!1113141))

(assert (=> b!1207448 m!1113115))

(assert (=> b!1207448 m!1113115))

(assert (=> b!1207448 m!1113123))

(assert (=> b!1207199 d!132937))

(declare-fun mapIsEmpty!47868 () Bool)

(declare-fun mapRes!47868 () Bool)

(assert (=> mapIsEmpty!47868 mapRes!47868))

(declare-fun condMapEmpty!47868 () Bool)

(declare-fun mapDefault!47868 () ValueCell!14625)

(assert (=> mapNonEmpty!47862 (= condMapEmpty!47868 (= mapRest!47862 ((as const (Array (_ BitVec 32) ValueCell!14625)) mapDefault!47868)))))

(declare-fun e!685751 () Bool)

(assert (=> mapNonEmpty!47862 (= tp!90901 (and e!685751 mapRes!47868))))

(declare-fun b!1207455 () Bool)

(declare-fun e!685750 () Bool)

(assert (=> b!1207455 (= e!685750 tp_is_empty!30669)))

(declare-fun mapNonEmpty!47868 () Bool)

(declare-fun tp!90911 () Bool)

(assert (=> mapNonEmpty!47868 (= mapRes!47868 (and tp!90911 e!685750))))

(declare-fun mapRest!47868 () (Array (_ BitVec 32) ValueCell!14625))

(declare-fun mapValue!47868 () ValueCell!14625)

(declare-fun mapKey!47868 () (_ BitVec 32))

(assert (=> mapNonEmpty!47868 (= mapRest!47862 (store mapRest!47868 mapKey!47868 mapValue!47868))))

(declare-fun b!1207456 () Bool)

(assert (=> b!1207456 (= e!685751 tp_is_empty!30669)))

(assert (= (and mapNonEmpty!47862 condMapEmpty!47868) mapIsEmpty!47868))

(assert (= (and mapNonEmpty!47862 (not condMapEmpty!47868)) mapNonEmpty!47868))

(assert (= (and mapNonEmpty!47868 ((_ is ValueCellFull!14625) mapValue!47868)) b!1207455))

(assert (= (and mapNonEmpty!47862 ((_ is ValueCellFull!14625) mapDefault!47868)) b!1207456))

(declare-fun m!1113143 () Bool)

(assert (=> mapNonEmpty!47868 m!1113143))

(declare-fun b_lambda!21441 () Bool)

(assert (= b_lambda!21423 (or (and start!100862 b_free!25965) b_lambda!21441)))

(declare-fun b_lambda!21443 () Bool)

(assert (= b_lambda!21439 (or (and start!100862 b_free!25965) b_lambda!21443)))

(declare-fun b_lambda!21445 () Bool)

(assert (= b_lambda!21435 (or (and start!100862 b_free!25965) b_lambda!21445)))

(declare-fun b_lambda!21447 () Bool)

(assert (= b_lambda!21427 (or (and start!100862 b_free!25965) b_lambda!21447)))

(declare-fun b_lambda!21449 () Bool)

(assert (= b_lambda!21437 (or (and start!100862 b_free!25965) b_lambda!21449)))

(declare-fun b_lambda!21451 () Bool)

(assert (= b_lambda!21429 (or (and start!100862 b_free!25965) b_lambda!21451)))

(declare-fun b_lambda!21453 () Bool)

(assert (= b_lambda!21433 (or (and start!100862 b_free!25965) b_lambda!21453)))

(declare-fun b_lambda!21455 () Bool)

(assert (= b_lambda!21431 (or (and start!100862 b_free!25965) b_lambda!21455)))

(declare-fun b_lambda!21457 () Bool)

(assert (= b_lambda!21425 (or (and start!100862 b_free!25965) b_lambda!21457)))

(check-sat (not b_lambda!21455) (not bm!58962) (not b!1207343) (not b!1207351) (not b!1207439) (not b!1207403) (not b!1207360) (not b!1207412) (not d!132915) (not b!1207340) (not d!132921) (not b!1207338) (not b!1207443) (not b!1207330) (not b!1207388) (not b!1207435) (not bm!58960) (not d!132935) (not d!132909) (not b!1207421) (not bm!58976) (not d!132913) (not b!1207320) (not bm!58974) (not d!132889) (not bm!58969) (not b!1207354) (not d!132885) (not b!1207444) (not b!1207362) (not d!132899) (not b!1207414) (not b!1207420) (not b!1207361) b_and!42969 (not b!1207377) (not b!1207437) (not b!1207350) (not b!1207363) (not b!1207425) (not b_lambda!21457) (not b!1207441) (not b!1207446) (not b!1207405) (not bm!58959) (not b!1207352) (not d!132925) (not b!1207327) (not bm!58975) (not b!1207339) (not b!1207349) (not bm!58965) (not d!132895) (not b!1207374) tp_is_empty!30669 (not b!1207326) (not b!1207294) (not b!1207337) (not bm!58961) (not b_lambda!21443) (not b!1207410) (not b_lambda!21441) (not b!1207324) (not d!132911) (not b_lambda!21447) (not b!1207344) (not b_lambda!21445) (not b!1207336) (not b!1207328) (not b!1207356) (not b_lambda!21421) (not bm!58968) (not d!132887) (not b_next!25965) (not b!1207348) (not b!1207319) (not d!132891) (not d!132893) (not bm!58977) (not b_lambda!21449) (not b!1207427) (not b!1207331) (not b!1207423) (not b!1207376) (not b!1207342) (not b!1207293) (not b!1207448) (not b_lambda!21451) (not b!1207366) (not b!1207355) (not b!1207332) (not b_lambda!21453) (not b!1207401) (not b!1207325) (not d!132897) (not mapNonEmpty!47868) (not b!1207364) (not b!1207378) (not d!132907) (not b!1207390))
(check-sat b_and!42969 (not b_next!25965))
(get-model)

(declare-fun d!132939 () Bool)

(assert (=> d!132939 (= (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207362 d!132939))

(assert (=> d!132907 d!132905))

(declare-fun d!132941 () Bool)

(assert (=> d!132941 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26707)))

(assert (=> d!132941 true))

(declare-fun _$71!186 () Unit!39940)

(assert (=> d!132941 (= (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455) _$71!186)))

(declare-fun bs!34128 () Bool)

(assert (= bs!34128 d!132941))

(assert (=> bs!34128 m!1112823))

(assert (=> d!132907 d!132941))

(declare-fun d!132943 () Bool)

(declare-fun e!685753 () Bool)

(assert (=> d!132943 e!685753))

(declare-fun res!802890 () Bool)

(assert (=> d!132943 (=> res!802890 e!685753)))

(declare-fun lt!547858 () Bool)

(assert (=> d!132943 (= res!802890 (not lt!547858))))

(declare-fun lt!547855 () Bool)

(assert (=> d!132943 (= lt!547858 lt!547855)))

(declare-fun lt!547856 () Unit!39940)

(declare-fun e!685752 () Unit!39940)

(assert (=> d!132943 (= lt!547856 e!685752)))

(declare-fun c!118621 () Bool)

(assert (=> d!132943 (= c!118621 lt!547855)))

(assert (=> d!132943 (= lt!547855 (containsKey!593 (toList!8949 lt!547796) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!132943 (= (contains!6952 lt!547796 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) lt!547858)))

(declare-fun b!1207457 () Bool)

(declare-fun lt!547857 () Unit!39940)

(assert (=> b!1207457 (= e!685752 lt!547857)))

(assert (=> b!1207457 (= lt!547857 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547796) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207457 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1207458 () Bool)

(declare-fun Unit!39949 () Unit!39940)

(assert (=> b!1207458 (= e!685752 Unit!39949)))

(declare-fun b!1207459 () Bool)

(assert (=> b!1207459 (= e!685753 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!132943 c!118621) b!1207457))

(assert (= (and d!132943 (not c!118621)) b!1207458))

(assert (= (and d!132943 (not res!802890)) b!1207459))

(assert (=> d!132943 m!1113019))

(declare-fun m!1113145 () Bool)

(assert (=> d!132943 m!1113145))

(assert (=> b!1207457 m!1113019))

(declare-fun m!1113147 () Bool)

(assert (=> b!1207457 m!1113147))

(assert (=> b!1207457 m!1113019))

(declare-fun m!1113149 () Bool)

(assert (=> b!1207457 m!1113149))

(assert (=> b!1207457 m!1113149))

(declare-fun m!1113151 () Bool)

(assert (=> b!1207457 m!1113151))

(assert (=> b!1207459 m!1113019))

(assert (=> b!1207459 m!1113149))

(assert (=> b!1207459 m!1113149))

(assert (=> b!1207459 m!1113151))

(assert (=> b!1207360 d!132943))

(declare-fun d!132945 () Bool)

(assert (=> d!132945 (= (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207330 d!132945))

(declare-fun b!1207460 () Bool)

(declare-fun lt!547864 () Unit!39940)

(declare-fun lt!547859 () Unit!39940)

(assert (=> b!1207460 (= lt!547864 lt!547859)))

(declare-fun lt!547860 () (_ BitVec 64))

(declare-fun lt!547865 () V!46019)

(declare-fun lt!547863 () (_ BitVec 64))

(declare-fun lt!547861 () ListLongMap!17867)

(assert (=> b!1207460 (not (contains!6952 (+!3978 lt!547861 (tuple2!19887 lt!547860 lt!547865)) lt!547863))))

(assert (=> b!1207460 (= lt!547859 (addStillNotContains!295 lt!547861 lt!547860 lt!547865 lt!547863))))

(assert (=> b!1207460 (= lt!547863 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207460 (= lt!547865 (get!19245 (select (arr!37684 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207460 (= lt!547860 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!58981 () ListLongMap!17867)

(assert (=> b!1207460 (= lt!547861 call!58981)))

(declare-fun e!685755 () ListLongMap!17867)

(assert (=> b!1207460 (= e!685755 (+!3978 call!58981 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)) (get!19245 (select (arr!37684 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207461 () Bool)

(declare-fun res!802894 () Bool)

(declare-fun e!685754 () Bool)

(assert (=> b!1207461 (=> (not res!802894) (not e!685754))))

(declare-fun lt!547862 () ListLongMap!17867)

(assert (=> b!1207461 (= res!802894 (not (contains!6952 lt!547862 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207462 () Bool)

(declare-fun e!685756 () ListLongMap!17867)

(assert (=> b!1207462 (= e!685756 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207463 () Bool)

(declare-fun e!685758 () Bool)

(declare-fun e!685760 () Bool)

(assert (=> b!1207463 (= e!685758 e!685760)))

(declare-fun c!118623 () Bool)

(assert (=> b!1207463 (= c!118623 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207465 () Bool)

(declare-fun e!685757 () Bool)

(assert (=> b!1207465 (= e!685758 e!685757)))

(assert (=> b!1207465 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun res!802891 () Bool)

(assert (=> b!1207465 (= res!802891 (contains!6952 lt!547862 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207465 (=> (not res!802891) (not e!685757))))

(declare-fun b!1207466 () Bool)

(assert (=> b!1207466 (= e!685760 (isEmpty!990 lt!547862))))

(declare-fun b!1207467 () Bool)

(assert (=> b!1207467 (= e!685756 e!685755)))

(declare-fun c!118624 () Bool)

(assert (=> b!1207467 (= c!118624 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1207468 () Bool)

(assert (=> b!1207468 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> b!1207468 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38221 _values!996)))))

(assert (=> b!1207468 (= e!685757 (= (apply!1000 lt!547862 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))) (get!19245 (select (arr!37684 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207469 () Bool)

(assert (=> b!1207469 (= e!685760 (= lt!547862 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207470 () Bool)

(assert (=> b!1207470 (= e!685755 call!58981)))

(declare-fun d!132947 () Bool)

(assert (=> d!132947 e!685754))

(declare-fun res!802893 () Bool)

(assert (=> d!132947 (=> (not res!802893) (not e!685754))))

(assert (=> d!132947 (= res!802893 (not (contains!6952 lt!547862 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132947 (= lt!547862 e!685756)))

(declare-fun c!118622 () Bool)

(assert (=> d!132947 (= c!118622 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> d!132947 (validMask!0 mask!1564)))

(assert (=> d!132947 (= (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!547862)))

(declare-fun b!1207464 () Bool)

(assert (=> b!1207464 (= e!685754 e!685758)))

(declare-fun c!118625 () Bool)

(declare-fun e!685759 () Bool)

(assert (=> b!1207464 (= c!118625 e!685759)))

(declare-fun res!802892 () Bool)

(assert (=> b!1207464 (=> (not res!802892) (not e!685759))))

(assert (=> b!1207464 (= res!802892 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207471 () Bool)

(assert (=> b!1207471 (= e!685759 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207471 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!58978 () Bool)

(assert (=> bm!58978 (= call!58981 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132947 c!118622) b!1207462))

(assert (= (and d!132947 (not c!118622)) b!1207467))

(assert (= (and b!1207467 c!118624) b!1207460))

(assert (= (and b!1207467 (not c!118624)) b!1207470))

(assert (= (or b!1207460 b!1207470) bm!58978))

(assert (= (and d!132947 res!802893) b!1207461))

(assert (= (and b!1207461 res!802894) b!1207464))

(assert (= (and b!1207464 res!802892) b!1207471))

(assert (= (and b!1207464 c!118625) b!1207465))

(assert (= (and b!1207464 (not c!118625)) b!1207463))

(assert (= (and b!1207465 res!802891) b!1207468))

(assert (= (and b!1207463 c!118623) b!1207469))

(assert (= (and b!1207463 (not c!118623)) b!1207466))

(declare-fun b_lambda!21459 () Bool)

(assert (=> (not b_lambda!21459) (not b!1207460)))

(assert (=> b!1207460 t!39660))

(declare-fun b_and!42971 () Bool)

(assert (= b_and!42969 (and (=> t!39660 result!22125) b_and!42971)))

(declare-fun b_lambda!21461 () Bool)

(assert (=> (not b_lambda!21461) (not b!1207468)))

(assert (=> b!1207468 t!39660))

(declare-fun b_and!42973 () Bool)

(assert (= b_and!42971 (and (=> t!39660 result!22125) b_and!42973)))

(declare-fun m!1113153 () Bool)

(assert (=> b!1207466 m!1113153))

(assert (=> b!1207460 m!1112787))

(declare-fun m!1113155 () Bool)

(assert (=> b!1207460 m!1113155))

(assert (=> b!1207460 m!1112787))

(declare-fun m!1113157 () Bool)

(assert (=> b!1207460 m!1113157))

(declare-fun m!1113159 () Bool)

(assert (=> b!1207460 m!1113159))

(declare-fun m!1113161 () Bool)

(assert (=> b!1207460 m!1113161))

(assert (=> b!1207460 m!1113161))

(declare-fun m!1113163 () Bool)

(assert (=> b!1207460 m!1113163))

(assert (=> b!1207460 m!1113155))

(declare-fun m!1113165 () Bool)

(assert (=> b!1207460 m!1113165))

(declare-fun m!1113167 () Bool)

(assert (=> b!1207460 m!1113167))

(assert (=> b!1207468 m!1112787))

(assert (=> b!1207468 m!1113155))

(assert (=> b!1207468 m!1112787))

(assert (=> b!1207468 m!1113157))

(assert (=> b!1207468 m!1113159))

(assert (=> b!1207468 m!1113159))

(declare-fun m!1113169 () Bool)

(assert (=> b!1207468 m!1113169))

(assert (=> b!1207468 m!1113155))

(assert (=> b!1207467 m!1113159))

(assert (=> b!1207467 m!1113159))

(declare-fun m!1113171 () Bool)

(assert (=> b!1207467 m!1113171))

(declare-fun m!1113173 () Bool)

(assert (=> b!1207469 m!1113173))

(declare-fun m!1113175 () Bool)

(assert (=> d!132947 m!1113175))

(assert (=> d!132947 m!1112795))

(assert (=> b!1207465 m!1113159))

(assert (=> b!1207465 m!1113159))

(declare-fun m!1113177 () Bool)

(assert (=> b!1207465 m!1113177))

(declare-fun m!1113179 () Bool)

(assert (=> b!1207461 m!1113179))

(assert (=> b!1207471 m!1113159))

(assert (=> b!1207471 m!1113159))

(assert (=> b!1207471 m!1113171))

(assert (=> bm!58978 m!1113173))

(assert (=> bm!58961 d!132947))

(declare-fun d!132949 () Bool)

(declare-fun e!685763 () Bool)

(assert (=> d!132949 e!685763))

(declare-fun c!118628 () Bool)

(assert (=> d!132949 (= c!118628 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (=> d!132949 true))

(declare-fun _$12!468 () Unit!39940)

(assert (=> d!132949 (= (choose!1810 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) _$12!468)))

(declare-fun call!58986 () ListLongMap!17867)

(declare-fun bm!58983 () Bool)

(assert (=> bm!58983 (= call!58986 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58984 () Bool)

(declare-fun call!58987 () ListLongMap!17867)

(assert (=> bm!58984 (= call!58987 (getCurrentListMapNoExtraKeys!5356 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)) (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207476 () Bool)

(assert (=> b!1207476 (= e!685763 (= call!58987 (-!1857 call!58986 k0!934)))))

(declare-fun b!1207477 () Bool)

(assert (=> b!1207477 (= e!685763 (= call!58987 call!58986))))

(assert (= (and d!132949 c!118628) b!1207476))

(assert (= (and d!132949 (not c!118628)) b!1207477))

(assert (= (or b!1207476 b!1207477) bm!58983))

(assert (= (or b!1207476 b!1207477) bm!58984))

(declare-fun b_lambda!21463 () Bool)

(assert (=> (not b_lambda!21463) (not bm!58984)))

(assert (=> bm!58984 t!39660))

(declare-fun b_and!42975 () Bool)

(assert (= b_and!42973 (and (=> t!39660 result!22125) b_and!42975)))

(assert (=> bm!58983 m!1112849))

(assert (=> bm!58984 m!1112815))

(assert (=> bm!58984 m!1112787))

(assert (=> bm!58984 m!1112789))

(assert (=> bm!58984 m!1113125))

(declare-fun m!1113181 () Bool)

(assert (=> b!1207476 m!1113181))

(assert (=> d!132925 d!132949))

(declare-fun d!132951 () Bool)

(assert (=> d!132951 (not (contains!6952 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785)) lt!547783))))

(declare-fun lt!547868 () Unit!39940)

(declare-fun choose!1811 (ListLongMap!17867 (_ BitVec 64) V!46019 (_ BitVec 64)) Unit!39940)

(assert (=> d!132951 (= lt!547868 (choose!1811 lt!547781 lt!547780 lt!547785 lt!547783))))

(declare-fun e!685766 () Bool)

(assert (=> d!132951 e!685766))

(declare-fun res!802897 () Bool)

(assert (=> d!132951 (=> (not res!802897) (not e!685766))))

(assert (=> d!132951 (= res!802897 (not (contains!6952 lt!547781 lt!547783)))))

(assert (=> d!132951 (= (addStillNotContains!295 lt!547781 lt!547780 lt!547785 lt!547783) lt!547868)))

(declare-fun b!1207481 () Bool)

(assert (=> b!1207481 (= e!685766 (not (= lt!547780 lt!547783)))))

(assert (= (and d!132951 res!802897) b!1207481))

(assert (=> d!132951 m!1112967))

(assert (=> d!132951 m!1112967))

(assert (=> d!132951 m!1112969))

(declare-fun m!1113183 () Bool)

(assert (=> d!132951 m!1113183))

(declare-fun m!1113185 () Bool)

(assert (=> d!132951 m!1113185))

(assert (=> b!1207331 d!132951))

(declare-fun d!132953 () Bool)

(declare-fun c!118631 () Bool)

(assert (=> d!132953 (= c!118631 ((_ is ValueCellFull!14625) (select (arr!37684 lt!547692) from!1455)))))

(declare-fun e!685769 () V!46019)

(assert (=> d!132953 (= (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!685769)))

(declare-fun b!1207486 () Bool)

(declare-fun get!19246 (ValueCell!14625 V!46019) V!46019)

(assert (=> b!1207486 (= e!685769 (get!19246 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207487 () Bool)

(declare-fun get!19247 (ValueCell!14625 V!46019) V!46019)

(assert (=> b!1207487 (= e!685769 (get!19247 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132953 c!118631) b!1207486))

(assert (= (and d!132953 (not c!118631)) b!1207487))

(assert (=> b!1207486 m!1112961))

(assert (=> b!1207486 m!1112787))

(declare-fun m!1113187 () Bool)

(assert (=> b!1207486 m!1113187))

(assert (=> b!1207487 m!1112961))

(assert (=> b!1207487 m!1112787))

(declare-fun m!1113189 () Bool)

(assert (=> b!1207487 m!1113189))

(assert (=> b!1207331 d!132953))

(declare-fun d!132955 () Bool)

(declare-fun e!685771 () Bool)

(assert (=> d!132955 e!685771))

(declare-fun res!802898 () Bool)

(assert (=> d!132955 (=> res!802898 e!685771)))

(declare-fun lt!547872 () Bool)

(assert (=> d!132955 (= res!802898 (not lt!547872))))

(declare-fun lt!547869 () Bool)

(assert (=> d!132955 (= lt!547872 lt!547869)))

(declare-fun lt!547870 () Unit!39940)

(declare-fun e!685770 () Unit!39940)

(assert (=> d!132955 (= lt!547870 e!685770)))

(declare-fun c!118632 () Bool)

(assert (=> d!132955 (= c!118632 lt!547869)))

(assert (=> d!132955 (= lt!547869 (containsKey!593 (toList!8949 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785))) lt!547783))))

(assert (=> d!132955 (= (contains!6952 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785)) lt!547783) lt!547872)))

(declare-fun b!1207488 () Bool)

(declare-fun lt!547871 () Unit!39940)

(assert (=> b!1207488 (= e!685770 lt!547871)))

(assert (=> b!1207488 (= lt!547871 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785))) lt!547783))))

(assert (=> b!1207488 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785))) lt!547783))))

(declare-fun b!1207489 () Bool)

(declare-fun Unit!39950 () Unit!39940)

(assert (=> b!1207489 (= e!685770 Unit!39950)))

(declare-fun b!1207490 () Bool)

(assert (=> b!1207490 (= e!685771 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785))) lt!547783)))))

(assert (= (and d!132955 c!118632) b!1207488))

(assert (= (and d!132955 (not c!118632)) b!1207489))

(assert (= (and d!132955 (not res!802898)) b!1207490))

(declare-fun m!1113191 () Bool)

(assert (=> d!132955 m!1113191))

(declare-fun m!1113193 () Bool)

(assert (=> b!1207488 m!1113193))

(declare-fun m!1113195 () Bool)

(assert (=> b!1207488 m!1113195))

(assert (=> b!1207488 m!1113195))

(declare-fun m!1113197 () Bool)

(assert (=> b!1207488 m!1113197))

(assert (=> b!1207490 m!1113195))

(assert (=> b!1207490 m!1113195))

(assert (=> b!1207490 m!1113197))

(assert (=> b!1207331 d!132955))

(declare-fun d!132957 () Bool)

(declare-fun e!685772 () Bool)

(assert (=> d!132957 e!685772))

(declare-fun res!802899 () Bool)

(assert (=> d!132957 (=> (not res!802899) (not e!685772))))

(declare-fun lt!547875 () ListLongMap!17867)

(assert (=> d!132957 (= res!802899 (contains!6952 lt!547875 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!547873 () List!26709)

(assert (=> d!132957 (= lt!547875 (ListLongMap!17868 lt!547873))))

(declare-fun lt!547874 () Unit!39940)

(declare-fun lt!547876 () Unit!39940)

(assert (=> d!132957 (= lt!547874 lt!547876)))

(assert (=> d!132957 (= (getValueByKey!639 lt!547873 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132957 (= lt!547876 (lemmaContainsTupThenGetReturnValue!314 lt!547873 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132957 (= lt!547873 (insertStrictlySorted!406 (toList!8949 call!58963) (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132957 (= (+!3978 call!58963 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!547875)))

(declare-fun b!1207491 () Bool)

(declare-fun res!802900 () Bool)

(assert (=> b!1207491 (=> (not res!802900) (not e!685772))))

(assert (=> b!1207491 (= res!802900 (= (getValueByKey!639 (toList!8949 lt!547875) (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1207492 () Bool)

(assert (=> b!1207492 (= e!685772 (contains!6954 (toList!8949 lt!547875) (tuple2!19887 (select (arr!37683 lt!547687) from!1455) (get!19245 (select (arr!37684 lt!547692) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!132957 res!802899) b!1207491))

(assert (= (and b!1207491 res!802900) b!1207492))

(declare-fun m!1113199 () Bool)

(assert (=> d!132957 m!1113199))

(declare-fun m!1113201 () Bool)

(assert (=> d!132957 m!1113201))

(declare-fun m!1113203 () Bool)

(assert (=> d!132957 m!1113203))

(declare-fun m!1113205 () Bool)

(assert (=> d!132957 m!1113205))

(declare-fun m!1113207 () Bool)

(assert (=> b!1207491 m!1113207))

(declare-fun m!1113209 () Bool)

(assert (=> b!1207492 m!1113209))

(assert (=> b!1207331 d!132957))

(declare-fun d!132959 () Bool)

(declare-fun e!685773 () Bool)

(assert (=> d!132959 e!685773))

(declare-fun res!802901 () Bool)

(assert (=> d!132959 (=> (not res!802901) (not e!685773))))

(declare-fun lt!547879 () ListLongMap!17867)

(assert (=> d!132959 (= res!802901 (contains!6952 lt!547879 (_1!9953 (tuple2!19887 lt!547780 lt!547785))))))

(declare-fun lt!547877 () List!26709)

(assert (=> d!132959 (= lt!547879 (ListLongMap!17868 lt!547877))))

(declare-fun lt!547878 () Unit!39940)

(declare-fun lt!547880 () Unit!39940)

(assert (=> d!132959 (= lt!547878 lt!547880)))

(assert (=> d!132959 (= (getValueByKey!639 lt!547877 (_1!9953 (tuple2!19887 lt!547780 lt!547785))) (Some!689 (_2!9953 (tuple2!19887 lt!547780 lt!547785))))))

(assert (=> d!132959 (= lt!547880 (lemmaContainsTupThenGetReturnValue!314 lt!547877 (_1!9953 (tuple2!19887 lt!547780 lt!547785)) (_2!9953 (tuple2!19887 lt!547780 lt!547785))))))

(assert (=> d!132959 (= lt!547877 (insertStrictlySorted!406 (toList!8949 lt!547781) (_1!9953 (tuple2!19887 lt!547780 lt!547785)) (_2!9953 (tuple2!19887 lt!547780 lt!547785))))))

(assert (=> d!132959 (= (+!3978 lt!547781 (tuple2!19887 lt!547780 lt!547785)) lt!547879)))

(declare-fun b!1207493 () Bool)

(declare-fun res!802902 () Bool)

(assert (=> b!1207493 (=> (not res!802902) (not e!685773))))

(assert (=> b!1207493 (= res!802902 (= (getValueByKey!639 (toList!8949 lt!547879) (_1!9953 (tuple2!19887 lt!547780 lt!547785))) (Some!689 (_2!9953 (tuple2!19887 lt!547780 lt!547785)))))))

(declare-fun b!1207494 () Bool)

(assert (=> b!1207494 (= e!685773 (contains!6954 (toList!8949 lt!547879) (tuple2!19887 lt!547780 lt!547785)))))

(assert (= (and d!132959 res!802901) b!1207493))

(assert (= (and b!1207493 res!802902) b!1207494))

(declare-fun m!1113211 () Bool)

(assert (=> d!132959 m!1113211))

(declare-fun m!1113213 () Bool)

(assert (=> d!132959 m!1113213))

(declare-fun m!1113215 () Bool)

(assert (=> d!132959 m!1113215))

(declare-fun m!1113217 () Bool)

(assert (=> d!132959 m!1113217))

(declare-fun m!1113219 () Bool)

(assert (=> b!1207493 m!1113219))

(declare-fun m!1113221 () Bool)

(assert (=> b!1207494 m!1113221))

(assert (=> b!1207331 d!132959))

(declare-fun d!132961 () Bool)

(assert (=> d!132961 (= (validKeyInArray!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)) (and (not (= (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207444 d!132961))

(declare-fun b!1207495 () Bool)

(declare-fun lt!547886 () Unit!39940)

(declare-fun lt!547881 () Unit!39940)

(assert (=> b!1207495 (= lt!547886 lt!547881)))

(declare-fun lt!547883 () ListLongMap!17867)

(declare-fun lt!547885 () (_ BitVec 64))

(declare-fun lt!547882 () (_ BitVec 64))

(declare-fun lt!547887 () V!46019)

(assert (=> b!1207495 (not (contains!6952 (+!3978 lt!547883 (tuple2!19887 lt!547882 lt!547887)) lt!547885))))

(assert (=> b!1207495 (= lt!547881 (addStillNotContains!295 lt!547883 lt!547882 lt!547887 lt!547885))))

(assert (=> b!1207495 (= lt!547885 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207495 (= lt!547887 (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207495 (= lt!547882 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!58988 () ListLongMap!17867)

(assert (=> b!1207495 (= lt!547883 call!58988)))

(declare-fun e!685775 () ListLongMap!17867)

(assert (=> b!1207495 (= e!685775 (+!3978 call!58988 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207496 () Bool)

(declare-fun res!802906 () Bool)

(declare-fun e!685774 () Bool)

(assert (=> b!1207496 (=> (not res!802906) (not e!685774))))

(declare-fun lt!547884 () ListLongMap!17867)

(assert (=> b!1207496 (= res!802906 (not (contains!6952 lt!547884 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207497 () Bool)

(declare-fun e!685776 () ListLongMap!17867)

(assert (=> b!1207497 (= e!685776 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207498 () Bool)

(declare-fun e!685778 () Bool)

(declare-fun e!685780 () Bool)

(assert (=> b!1207498 (= e!685778 e!685780)))

(declare-fun c!118634 () Bool)

(assert (=> b!1207498 (= c!118634 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun b!1207500 () Bool)

(declare-fun e!685777 () Bool)

(assert (=> b!1207500 (= e!685778 e!685777)))

(assert (=> b!1207500 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun res!802903 () Bool)

(assert (=> b!1207500 (= res!802903 (contains!6952 lt!547884 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207500 (=> (not res!802903) (not e!685777))))

(declare-fun b!1207501 () Bool)

(assert (=> b!1207501 (= e!685780 (isEmpty!990 lt!547884))))

(declare-fun b!1207502 () Bool)

(assert (=> b!1207502 (= e!685776 e!685775)))

(declare-fun c!118635 () Bool)

(assert (=> b!1207502 (= c!118635 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1207503 () Bool)

(assert (=> b!1207503 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> b!1207503 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38221 lt!547692)))))

(assert (=> b!1207503 (= e!685777 (= (apply!1000 lt!547884 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207504 () Bool)

(assert (=> b!1207504 (= e!685780 (= lt!547884 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207505 () Bool)

(assert (=> b!1207505 (= e!685775 call!58988)))

(declare-fun d!132963 () Bool)

(assert (=> d!132963 e!685774))

(declare-fun res!802905 () Bool)

(assert (=> d!132963 (=> (not res!802905) (not e!685774))))

(assert (=> d!132963 (= res!802905 (not (contains!6952 lt!547884 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132963 (= lt!547884 e!685776)))

(declare-fun c!118633 () Bool)

(assert (=> d!132963 (= c!118633 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> d!132963 (validMask!0 mask!1564)))

(assert (=> d!132963 (= (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!547884)))

(declare-fun b!1207499 () Bool)

(assert (=> b!1207499 (= e!685774 e!685778)))

(declare-fun c!118636 () Bool)

(declare-fun e!685779 () Bool)

(assert (=> b!1207499 (= c!118636 e!685779)))

(declare-fun res!802904 () Bool)

(assert (=> b!1207499 (=> (not res!802904) (not e!685779))))

(assert (=> b!1207499 (= res!802904 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun b!1207506 () Bool)

(assert (=> b!1207506 (= e!685779 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207506 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!58985 () Bool)

(assert (=> bm!58985 (= call!58988 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132963 c!118633) b!1207497))

(assert (= (and d!132963 (not c!118633)) b!1207502))

(assert (= (and b!1207502 c!118635) b!1207495))

(assert (= (and b!1207502 (not c!118635)) b!1207505))

(assert (= (or b!1207495 b!1207505) bm!58985))

(assert (= (and d!132963 res!802905) b!1207496))

(assert (= (and b!1207496 res!802906) b!1207499))

(assert (= (and b!1207499 res!802904) b!1207506))

(assert (= (and b!1207499 c!118636) b!1207500))

(assert (= (and b!1207499 (not c!118636)) b!1207498))

(assert (= (and b!1207500 res!802903) b!1207503))

(assert (= (and b!1207498 c!118634) b!1207504))

(assert (= (and b!1207498 (not c!118634)) b!1207501))

(declare-fun b_lambda!21465 () Bool)

(assert (=> (not b_lambda!21465) (not b!1207495)))

(assert (=> b!1207495 t!39660))

(declare-fun b_and!42977 () Bool)

(assert (= b_and!42975 (and (=> t!39660 result!22125) b_and!42977)))

(declare-fun b_lambda!21467 () Bool)

(assert (=> (not b_lambda!21467) (not b!1207503)))

(assert (=> b!1207503 t!39660))

(declare-fun b_and!42979 () Bool)

(assert (= b_and!42977 (and (=> t!39660 result!22125) b_and!42979)))

(declare-fun m!1113223 () Bool)

(assert (=> b!1207501 m!1113223))

(assert (=> b!1207495 m!1112787))

(declare-fun m!1113225 () Bool)

(assert (=> b!1207495 m!1113225))

(assert (=> b!1207495 m!1112787))

(declare-fun m!1113227 () Bool)

(assert (=> b!1207495 m!1113227))

(declare-fun m!1113229 () Bool)

(assert (=> b!1207495 m!1113229))

(declare-fun m!1113231 () Bool)

(assert (=> b!1207495 m!1113231))

(assert (=> b!1207495 m!1113231))

(declare-fun m!1113233 () Bool)

(assert (=> b!1207495 m!1113233))

(assert (=> b!1207495 m!1113225))

(declare-fun m!1113235 () Bool)

(assert (=> b!1207495 m!1113235))

(declare-fun m!1113237 () Bool)

(assert (=> b!1207495 m!1113237))

(assert (=> b!1207503 m!1112787))

(assert (=> b!1207503 m!1113225))

(assert (=> b!1207503 m!1112787))

(assert (=> b!1207503 m!1113227))

(assert (=> b!1207503 m!1113229))

(assert (=> b!1207503 m!1113229))

(declare-fun m!1113239 () Bool)

(assert (=> b!1207503 m!1113239))

(assert (=> b!1207503 m!1113225))

(assert (=> b!1207502 m!1113229))

(assert (=> b!1207502 m!1113229))

(declare-fun m!1113241 () Bool)

(assert (=> b!1207502 m!1113241))

(declare-fun m!1113243 () Bool)

(assert (=> b!1207504 m!1113243))

(declare-fun m!1113245 () Bool)

(assert (=> d!132963 m!1113245))

(assert (=> d!132963 m!1112795))

(assert (=> b!1207500 m!1113229))

(assert (=> b!1207500 m!1113229))

(declare-fun m!1113247 () Bool)

(assert (=> b!1207500 m!1113247))

(declare-fun m!1113249 () Bool)

(assert (=> b!1207496 m!1113249))

(assert (=> b!1207506 m!1113229))

(assert (=> b!1207506 m!1113229))

(assert (=> b!1207506 m!1113241))

(assert (=> bm!58985 m!1113243))

(assert (=> b!1207328 d!132963))

(declare-fun d!132965 () Bool)

(declare-fun res!802911 () Bool)

(declare-fun e!685785 () Bool)

(assert (=> d!132965 (=> res!802911 e!685785)))

(assert (=> d!132965 (= res!802911 (and ((_ is Cons!26705) (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (= (_1!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(assert (=> d!132965 (= (containsKey!593 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) e!685785)))

(declare-fun b!1207511 () Bool)

(declare-fun e!685786 () Bool)

(assert (=> b!1207511 (= e!685785 e!685786)))

(declare-fun res!802912 () Bool)

(assert (=> b!1207511 (=> (not res!802912) (not e!685786))))

(assert (=> b!1207511 (= res!802912 (and (or (not ((_ is Cons!26705) (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (bvsle (_1!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)) ((_ is Cons!26705) (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (bvslt (_1!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(declare-fun b!1207512 () Bool)

(assert (=> b!1207512 (= e!685786 (containsKey!593 (t!39661 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) k0!934))))

(assert (= (and d!132965 (not res!802911)) b!1207511))

(assert (= (and b!1207511 res!802912) b!1207512))

(declare-fun m!1113251 () Bool)

(assert (=> b!1207512 m!1113251))

(assert (=> d!132897 d!132965))

(declare-fun d!132967 () Bool)

(assert (=> d!132967 (= (validKeyInArray!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)) (and (not (= (select (arr!37683 lt!547687) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 lt!547687) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207437 d!132967))

(declare-fun d!132969 () Bool)

(declare-fun e!685788 () Bool)

(assert (=> d!132969 e!685788))

(declare-fun res!802913 () Bool)

(assert (=> d!132969 (=> res!802913 e!685788)))

(declare-fun lt!547891 () Bool)

(assert (=> d!132969 (= res!802913 (not lt!547891))))

(declare-fun lt!547888 () Bool)

(assert (=> d!132969 (= lt!547891 lt!547888)))

(declare-fun lt!547889 () Unit!39940)

(declare-fun e!685787 () Unit!39940)

(assert (=> d!132969 (= lt!547889 e!685787)))

(declare-fun c!118637 () Bool)

(assert (=> d!132969 (= c!118637 lt!547888)))

(assert (=> d!132969 (= lt!547888 (containsKey!593 (toList!8949 lt!547796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132969 (= (contains!6952 lt!547796 #b1000000000000000000000000000000000000000000000000000000000000000) lt!547891)))

(declare-fun b!1207513 () Bool)

(declare-fun lt!547890 () Unit!39940)

(assert (=> b!1207513 (= e!685787 lt!547890)))

(assert (=> b!1207513 (= lt!547890 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207513 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207514 () Bool)

(declare-fun Unit!39951 () Unit!39940)

(assert (=> b!1207514 (= e!685787 Unit!39951)))

(declare-fun b!1207515 () Bool)

(assert (=> b!1207515 (= e!685788 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132969 c!118637) b!1207513))

(assert (= (and d!132969 (not c!118637)) b!1207514))

(assert (= (and d!132969 (not res!802913)) b!1207515))

(declare-fun m!1113253 () Bool)

(assert (=> d!132969 m!1113253))

(declare-fun m!1113255 () Bool)

(assert (=> b!1207513 m!1113255))

(declare-fun m!1113257 () Bool)

(assert (=> b!1207513 m!1113257))

(assert (=> b!1207513 m!1113257))

(declare-fun m!1113259 () Bool)

(assert (=> b!1207513 m!1113259))

(assert (=> b!1207515 m!1113257))

(assert (=> b!1207515 m!1113257))

(assert (=> b!1207515 m!1113259))

(assert (=> b!1207356 d!132969))

(declare-fun lt!547894 () Bool)

(declare-fun d!132971 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!548 (List!26709) (InoxSet tuple2!19886))

(assert (=> d!132971 (= lt!547894 (select (content!548 (toList!8949 lt!547756)) (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun e!685793 () Bool)

(assert (=> d!132971 (= lt!547894 e!685793)))

(declare-fun res!802919 () Bool)

(assert (=> d!132971 (=> (not res!802919) (not e!685793))))

(assert (=> d!132971 (= res!802919 ((_ is Cons!26705) (toList!8949 lt!547756)))))

(assert (=> d!132971 (= (contains!6954 (toList!8949 lt!547756) (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547894)))

(declare-fun b!1207520 () Bool)

(declare-fun e!685794 () Bool)

(assert (=> b!1207520 (= e!685793 e!685794)))

(declare-fun res!802918 () Bool)

(assert (=> b!1207520 (=> res!802918 e!685794)))

(assert (=> b!1207520 (= res!802918 (= (h!27914 (toList!8949 lt!547756)) (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207521 () Bool)

(assert (=> b!1207521 (= e!685794 (contains!6954 (t!39661 (toList!8949 lt!547756)) (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132971 res!802919) b!1207520))

(assert (= (and b!1207520 (not res!802918)) b!1207521))

(declare-fun m!1113261 () Bool)

(assert (=> d!132971 m!1113261))

(declare-fun m!1113263 () Bool)

(assert (=> d!132971 m!1113263))

(declare-fun m!1113265 () Bool)

(assert (=> b!1207521 m!1113265))

(assert (=> b!1207294 d!132971))

(assert (=> b!1207326 d!132945))

(assert (=> d!132935 d!132933))

(declare-fun d!132973 () Bool)

(assert (=> d!132973 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(assert (=> d!132973 true))

(declare-fun _$60!451 () Unit!39940)

(assert (=> d!132973 (= (choose!13 _keys!1208 k0!934 i!673) _$60!451)))

(declare-fun bs!34129 () Bool)

(assert (= bs!34129 d!132973))

(assert (=> bs!34129 m!1112841))

(assert (=> d!132935 d!132973))

(declare-fun d!132975 () Bool)

(declare-fun get!19248 (Option!690) V!46019)

(assert (=> d!132975 (= (apply!1000 lt!547789 (select (arr!37683 _keys!1208) from!1455)) (get!19248 (getValueByKey!639 (toList!8949 lt!547789) (select (arr!37683 _keys!1208) from!1455))))))

(declare-fun bs!34130 () Bool)

(assert (= bs!34130 d!132975))

(assert (=> bs!34130 m!1112807))

(declare-fun m!1113267 () Bool)

(assert (=> bs!34130 m!1113267))

(assert (=> bs!34130 m!1113267))

(declare-fun m!1113269 () Bool)

(assert (=> bs!34130 m!1113269))

(assert (=> b!1207351 d!132975))

(declare-fun d!132977 () Bool)

(declare-fun c!118638 () Bool)

(assert (=> d!132977 (= c!118638 ((_ is ValueCellFull!14625) (select (arr!37684 _values!996) from!1455)))))

(declare-fun e!685795 () V!46019)

(assert (=> d!132977 (= (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!685795)))

(declare-fun b!1207522 () Bool)

(assert (=> b!1207522 (= e!685795 (get!19246 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207523 () Bool)

(assert (=> b!1207523 (= e!685795 (get!19247 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132977 c!118638) b!1207522))

(assert (= (and d!132977 (not c!118638)) b!1207523))

(assert (=> b!1207522 m!1112989))

(assert (=> b!1207522 m!1112787))

(declare-fun m!1113271 () Bool)

(assert (=> b!1207522 m!1113271))

(assert (=> b!1207523 m!1112989))

(assert (=> b!1207523 m!1112787))

(declare-fun m!1113273 () Bool)

(assert (=> b!1207523 m!1113273))

(assert (=> b!1207351 d!132977))

(assert (=> b!1207410 d!132919))

(declare-fun d!132979 () Bool)

(declare-fun e!685797 () Bool)

(assert (=> d!132979 e!685797))

(declare-fun res!802920 () Bool)

(assert (=> d!132979 (=> res!802920 e!685797)))

(declare-fun lt!547898 () Bool)

(assert (=> d!132979 (= res!802920 (not lt!547898))))

(declare-fun lt!547895 () Bool)

(assert (=> d!132979 (= lt!547898 lt!547895)))

(declare-fun lt!547896 () Unit!39940)

(declare-fun e!685796 () Unit!39940)

(assert (=> d!132979 (= lt!547896 e!685796)))

(declare-fun c!118639 () Bool)

(assert (=> d!132979 (= c!118639 lt!547895)))

(assert (=> d!132979 (= lt!547895 (containsKey!593 (toList!8949 lt!547775) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!132979 (= (contains!6952 lt!547775 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))) lt!547898)))

(declare-fun b!1207524 () Bool)

(declare-fun lt!547897 () Unit!39940)

(assert (=> b!1207524 (= e!685796 lt!547897)))

(assert (=> b!1207524 (= lt!547897 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547775) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207524 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1207525 () Bool)

(declare-fun Unit!39952 () Unit!39940)

(assert (=> b!1207525 (= e!685796 Unit!39952)))

(declare-fun b!1207526 () Bool)

(assert (=> b!1207526 (= e!685797 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!132979 c!118639) b!1207524))

(assert (= (and d!132979 (not c!118639)) b!1207525))

(assert (= (and d!132979 (not res!802920)) b!1207526))

(assert (=> d!132979 m!1112937))

(declare-fun m!1113275 () Bool)

(assert (=> d!132979 m!1113275))

(assert (=> b!1207524 m!1112937))

(declare-fun m!1113277 () Bool)

(assert (=> b!1207524 m!1113277))

(assert (=> b!1207524 m!1112937))

(declare-fun m!1113279 () Bool)

(assert (=> b!1207524 m!1113279))

(assert (=> b!1207524 m!1113279))

(declare-fun m!1113281 () Bool)

(assert (=> b!1207524 m!1113281))

(assert (=> b!1207526 m!1112937))

(assert (=> b!1207526 m!1113279))

(assert (=> b!1207526 m!1113279))

(assert (=> b!1207526 m!1113281))

(assert (=> b!1207324 d!132979))

(declare-fun d!132981 () Bool)

(assert (=> d!132981 (= (validKeyInArray!0 (select (arr!37683 _keys!1208) from!1455)) (and (not (= (select (arr!37683 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207405 d!132981))

(declare-fun d!132983 () Bool)

(declare-fun isEmpty!991 (List!26709) Bool)

(assert (=> d!132983 (= (isEmpty!990 lt!547789) (isEmpty!991 (toList!8949 lt!547789)))))

(declare-fun bs!34131 () Bool)

(assert (= bs!34131 d!132983))

(declare-fun m!1113283 () Bool)

(assert (=> bs!34131 m!1113283))

(assert (=> b!1207349 d!132983))

(declare-fun d!132985 () Bool)

(declare-fun lt!547901 () Bool)

(declare-fun content!549 (List!26710) (InoxSet (_ BitVec 64)))

(assert (=> d!132985 (= lt!547901 (select (content!549 Nil!26707) (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun e!685802 () Bool)

(assert (=> d!132985 (= lt!547901 e!685802)))

(declare-fun res!802926 () Bool)

(assert (=> d!132985 (=> (not res!802926) (not e!685802))))

(assert (=> d!132985 (= res!802926 ((_ is Cons!26706) Nil!26707))))

(assert (=> d!132985 (= (contains!6955 Nil!26707 (select (arr!37683 _keys!1208) from!1455)) lt!547901)))

(declare-fun b!1207531 () Bool)

(declare-fun e!685803 () Bool)

(assert (=> b!1207531 (= e!685802 e!685803)))

(declare-fun res!802925 () Bool)

(assert (=> b!1207531 (=> res!802925 e!685803)))

(assert (=> b!1207531 (= res!802925 (= (h!27915 Nil!26707) (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun b!1207532 () Bool)

(assert (=> b!1207532 (= e!685803 (contains!6955 (t!39662 Nil!26707) (select (arr!37683 _keys!1208) from!1455)))))

(assert (= (and d!132985 res!802926) b!1207531))

(assert (= (and b!1207531 (not res!802925)) b!1207532))

(declare-fun m!1113285 () Bool)

(assert (=> d!132985 m!1113285))

(assert (=> d!132985 m!1112807))

(declare-fun m!1113287 () Bool)

(assert (=> d!132985 m!1113287))

(assert (=> b!1207532 m!1112807))

(declare-fun m!1113289 () Bool)

(assert (=> b!1207532 m!1113289))

(assert (=> b!1207403 d!132985))

(declare-fun d!132987 () Bool)

(declare-fun res!802927 () Bool)

(declare-fun e!685804 () Bool)

(assert (=> d!132987 (=> res!802927 e!685804)))

(assert (=> d!132987 (= res!802927 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (= (_1!9953 (h!27914 (toList!8949 lt!547694))) k0!934)))))

(assert (=> d!132987 (= (containsKey!593 (toList!8949 lt!547694) k0!934) e!685804)))

(declare-fun b!1207533 () Bool)

(declare-fun e!685805 () Bool)

(assert (=> b!1207533 (= e!685804 e!685805)))

(declare-fun res!802928 () Bool)

(assert (=> b!1207533 (=> (not res!802928) (not e!685805))))

(assert (=> b!1207533 (= res!802928 (and (or (not ((_ is Cons!26705) (toList!8949 lt!547694))) (bvsle (_1!9953 (h!27914 (toList!8949 lt!547694))) k0!934)) ((_ is Cons!26705) (toList!8949 lt!547694)) (bvslt (_1!9953 (h!27914 (toList!8949 lt!547694))) k0!934)))))

(declare-fun b!1207534 () Bool)

(assert (=> b!1207534 (= e!685805 (containsKey!593 (t!39661 (toList!8949 lt!547694)) k0!934))))

(assert (= (and d!132987 (not res!802927)) b!1207533))

(assert (= (and b!1207533 res!802928) b!1207534))

(declare-fun m!1113291 () Bool)

(assert (=> b!1207534 m!1113291))

(assert (=> d!132921 d!132987))

(declare-fun d!132989 () Bool)

(declare-fun e!685807 () Bool)

(assert (=> d!132989 e!685807))

(declare-fun res!802929 () Bool)

(assert (=> d!132989 (=> res!802929 e!685807)))

(declare-fun lt!547905 () Bool)

(assert (=> d!132989 (= res!802929 (not lt!547905))))

(declare-fun lt!547902 () Bool)

(assert (=> d!132989 (= lt!547905 lt!547902)))

(declare-fun lt!547903 () Unit!39940)

(declare-fun e!685806 () Unit!39940)

(assert (=> d!132989 (= lt!547903 e!685806)))

(declare-fun c!118640 () Bool)

(assert (=> d!132989 (= c!118640 lt!547902)))

(assert (=> d!132989 (= lt!547902 (containsKey!593 (toList!8949 lt!547796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132989 (= (contains!6952 lt!547796 #b0000000000000000000000000000000000000000000000000000000000000000) lt!547905)))

(declare-fun b!1207535 () Bool)

(declare-fun lt!547904 () Unit!39940)

(assert (=> b!1207535 (= e!685806 lt!547904)))

(assert (=> b!1207535 (= lt!547904 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207535 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207536 () Bool)

(declare-fun Unit!39953 () Unit!39940)

(assert (=> b!1207536 (= e!685806 Unit!39953)))

(declare-fun b!1207537 () Bool)

(assert (=> b!1207537 (= e!685807 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547796) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132989 c!118640) b!1207535))

(assert (= (and d!132989 (not c!118640)) b!1207536))

(assert (= (and d!132989 (not res!802929)) b!1207537))

(declare-fun m!1113293 () Bool)

(assert (=> d!132989 m!1113293))

(declare-fun m!1113295 () Bool)

(assert (=> b!1207535 m!1113295))

(declare-fun m!1113297 () Bool)

(assert (=> b!1207535 m!1113297))

(assert (=> b!1207535 m!1113297))

(declare-fun m!1113299 () Bool)

(assert (=> b!1207535 m!1113299))

(assert (=> b!1207537 m!1113297))

(assert (=> b!1207537 m!1113297))

(assert (=> b!1207537 m!1113299))

(assert (=> d!132893 d!132989))

(assert (=> d!132893 d!132917))

(declare-fun d!132991 () Bool)

(declare-fun isEmpty!992 (Option!690) Bool)

(assert (=> d!132991 (= (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)) (not (isEmpty!992 (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))))

(declare-fun bs!34132 () Bool)

(assert (= bs!34132 d!132991))

(assert (=> bs!34132 m!1113049))

(declare-fun m!1113301 () Bool)

(assert (=> bs!34132 m!1113301))

(assert (=> b!1207376 d!132991))

(declare-fun b!1207549 () Bool)

(declare-fun e!685813 () Option!690)

(assert (=> b!1207549 (= e!685813 None!688)))

(declare-fun b!1207547 () Bool)

(declare-fun e!685812 () Option!690)

(assert (=> b!1207547 (= e!685812 e!685813)))

(declare-fun c!118646 () Bool)

(assert (=> b!1207547 (= c!118646 (and ((_ is Cons!26705) (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (not (= (_1!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934))))))

(declare-fun b!1207548 () Bool)

(assert (=> b!1207548 (= e!685813 (getValueByKey!639 (t!39661 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) k0!934))))

(declare-fun c!118645 () Bool)

(declare-fun d!132993 () Bool)

(assert (=> d!132993 (= c!118645 (and ((_ is Cons!26705) (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (= (_1!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(assert (=> d!132993 (= (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) e!685812)))

(declare-fun b!1207546 () Bool)

(assert (=> b!1207546 (= e!685812 (Some!689 (_2!9953 (h!27914 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(assert (= (and d!132993 c!118645) b!1207546))

(assert (= (and d!132993 (not c!118645)) b!1207547))

(assert (= (and b!1207547 c!118646) b!1207548))

(assert (= (and b!1207547 (not c!118646)) b!1207549))

(declare-fun m!1113303 () Bool)

(assert (=> b!1207548 m!1113303))

(assert (=> b!1207376 d!132993))

(declare-fun d!132995 () Bool)

(assert (=> d!132995 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun lt!547908 () Unit!39940)

(declare-fun choose!1812 (List!26709 (_ BitVec 64)) Unit!39940)

(assert (=> d!132995 (= lt!547908 (choose!1812 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun e!685816 () Bool)

(assert (=> d!132995 e!685816))

(declare-fun res!802932 () Bool)

(assert (=> d!132995 (=> (not res!802932) (not e!685816))))

(declare-fun isStrictlySorted!725 (List!26709) Bool)

(assert (=> d!132995 (= res!802932 (isStrictlySorted!725 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132995 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) lt!547908)))

(declare-fun b!1207552 () Bool)

(assert (=> b!1207552 (= e!685816 (containsKey!593 (toList!8949 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (= (and d!132995 res!802932) b!1207552))

(assert (=> d!132995 m!1113049))

(assert (=> d!132995 m!1113049))

(assert (=> d!132995 m!1113051))

(declare-fun m!1113305 () Bool)

(assert (=> d!132995 m!1113305))

(declare-fun m!1113307 () Bool)

(assert (=> d!132995 m!1113307))

(assert (=> b!1207552 m!1113045))

(assert (=> b!1207374 d!132995))

(assert (=> b!1207374 d!132991))

(assert (=> b!1207374 d!132993))

(declare-fun d!132997 () Bool)

(assert (=> d!132997 (= (isDefined!462 (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934)) (not (isEmpty!992 (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))))

(declare-fun bs!34133 () Bool)

(assert (= bs!34133 d!132997))

(assert (=> bs!34133 m!1113089))

(declare-fun m!1113309 () Bool)

(assert (=> bs!34133 m!1113309))

(assert (=> b!1207414 d!132997))

(declare-fun b!1207556 () Bool)

(declare-fun e!685818 () Option!690)

(assert (=> b!1207556 (= e!685818 None!688)))

(declare-fun b!1207554 () Bool)

(declare-fun e!685817 () Option!690)

(assert (=> b!1207554 (= e!685817 e!685818)))

(declare-fun c!118648 () Bool)

(assert (=> b!1207554 (= c!118648 (and ((_ is Cons!26705) (toList!8949 (ite c!118558 lt!547686 call!58928))) (not (= (_1!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928)))) k0!934))))))

(declare-fun b!1207555 () Bool)

(assert (=> b!1207555 (= e!685818 (getValueByKey!639 (t!39661 (toList!8949 (ite c!118558 lt!547686 call!58928))) k0!934))))

(declare-fun d!132999 () Bool)

(declare-fun c!118647 () Bool)

(assert (=> d!132999 (= c!118647 (and ((_ is Cons!26705) (toList!8949 (ite c!118558 lt!547686 call!58928))) (= (_1!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928)))) k0!934)))))

(assert (=> d!132999 (= (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934) e!685817)))

(declare-fun b!1207553 () Bool)

(assert (=> b!1207553 (= e!685817 (Some!689 (_2!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928))))))))

(assert (= (and d!132999 c!118647) b!1207553))

(assert (= (and d!132999 (not c!118647)) b!1207554))

(assert (= (and b!1207554 c!118648) b!1207555))

(assert (= (and b!1207554 (not c!118648)) b!1207556))

(declare-fun m!1113311 () Bool)

(assert (=> b!1207555 m!1113311))

(assert (=> b!1207414 d!132999))

(declare-fun b!1207557 () Bool)

(declare-fun lt!547914 () Unit!39940)

(declare-fun lt!547909 () Unit!39940)

(assert (=> b!1207557 (= lt!547914 lt!547909)))

(declare-fun lt!547915 () V!46019)

(declare-fun lt!547911 () ListLongMap!17867)

(declare-fun lt!547913 () (_ BitVec 64))

(declare-fun lt!547910 () (_ BitVec 64))

(assert (=> b!1207557 (not (contains!6952 (+!3978 lt!547911 (tuple2!19887 lt!547910 lt!547915)) lt!547913))))

(assert (=> b!1207557 (= lt!547909 (addStillNotContains!295 lt!547911 lt!547910 lt!547915 lt!547913))))

(assert (=> b!1207557 (= lt!547913 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207557 (= lt!547915 (get!19245 (select (arr!37684 lt!547692) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207557 (= lt!547910 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!58989 () ListLongMap!17867)

(assert (=> b!1207557 (= lt!547911 call!58989)))

(declare-fun e!685820 () ListLongMap!17867)

(assert (=> b!1207557 (= e!685820 (+!3978 call!58989 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001)) (get!19245 (select (arr!37684 lt!547692) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207558 () Bool)

(declare-fun res!802936 () Bool)

(declare-fun e!685819 () Bool)

(assert (=> b!1207558 (=> (not res!802936) (not e!685819))))

(declare-fun lt!547912 () ListLongMap!17867)

(assert (=> b!1207558 (= res!802936 (not (contains!6952 lt!547912 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207559 () Bool)

(declare-fun e!685821 () ListLongMap!17867)

(assert (=> b!1207559 (= e!685821 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207560 () Bool)

(declare-fun e!685823 () Bool)

(declare-fun e!685825 () Bool)

(assert (=> b!1207560 (= e!685823 e!685825)))

(declare-fun c!118650 () Bool)

(assert (=> b!1207560 (= c!118650 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun b!1207562 () Bool)

(declare-fun e!685822 () Bool)

(assert (=> b!1207562 (= e!685823 e!685822)))

(assert (=> b!1207562 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun res!802933 () Bool)

(assert (=> b!1207562 (= res!802933 (contains!6952 lt!547912 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207562 (=> (not res!802933) (not e!685822))))

(declare-fun b!1207563 () Bool)

(assert (=> b!1207563 (= e!685825 (isEmpty!990 lt!547912))))

(declare-fun b!1207564 () Bool)

(assert (=> b!1207564 (= e!685821 e!685820)))

(declare-fun c!118651 () Bool)

(assert (=> b!1207564 (= c!118651 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1207565 () Bool)

(assert (=> b!1207565 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> b!1207565 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38221 lt!547692)))))

(assert (=> b!1207565 (= e!685822 (= (apply!1000 lt!547912 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001))) (get!19245 (select (arr!37684 lt!547692) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207566 () Bool)

(assert (=> b!1207566 (= e!685825 (= lt!547912 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207567 () Bool)

(assert (=> b!1207567 (= e!685820 call!58989)))

(declare-fun d!133001 () Bool)

(assert (=> d!133001 e!685819))

(declare-fun res!802935 () Bool)

(assert (=> d!133001 (=> (not res!802935) (not e!685819))))

(assert (=> d!133001 (= res!802935 (not (contains!6952 lt!547912 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133001 (= lt!547912 e!685821)))

(declare-fun c!118649 () Bool)

(assert (=> d!133001 (= c!118649 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> d!133001 (validMask!0 mask!1564)))

(assert (=> d!133001 (= (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!547912)))

(declare-fun b!1207561 () Bool)

(assert (=> b!1207561 (= e!685819 e!685823)))

(declare-fun c!118652 () Bool)

(declare-fun e!685824 () Bool)

(assert (=> b!1207561 (= c!118652 e!685824)))

(declare-fun res!802934 () Bool)

(assert (=> b!1207561 (=> (not res!802934) (not e!685824))))

(assert (=> b!1207561 (= res!802934 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun b!1207568 () Bool)

(assert (=> b!1207568 (= e!685824 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207568 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!58986 () Bool)

(assert (=> bm!58986 (= call!58989 (getCurrentListMapNoExtraKeys!5356 lt!547687 lt!547692 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133001 c!118649) b!1207559))

(assert (= (and d!133001 (not c!118649)) b!1207564))

(assert (= (and b!1207564 c!118651) b!1207557))

(assert (= (and b!1207564 (not c!118651)) b!1207567))

(assert (= (or b!1207557 b!1207567) bm!58986))

(assert (= (and d!133001 res!802935) b!1207558))

(assert (= (and b!1207558 res!802936) b!1207561))

(assert (= (and b!1207561 res!802934) b!1207568))

(assert (= (and b!1207561 c!118652) b!1207562))

(assert (= (and b!1207561 (not c!118652)) b!1207560))

(assert (= (and b!1207562 res!802933) b!1207565))

(assert (= (and b!1207560 c!118650) b!1207566))

(assert (= (and b!1207560 (not c!118650)) b!1207563))

(declare-fun b_lambda!21469 () Bool)

(assert (=> (not b_lambda!21469) (not b!1207557)))

(assert (=> b!1207557 t!39660))

(declare-fun b_and!42981 () Bool)

(assert (= b_and!42979 (and (=> t!39660 result!22125) b_and!42981)))

(declare-fun b_lambda!21471 () Bool)

(assert (=> (not b_lambda!21471) (not b!1207565)))

(assert (=> b!1207565 t!39660))

(declare-fun b_and!42983 () Bool)

(assert (= b_and!42981 (and (=> t!39660 result!22125) b_and!42983)))

(declare-fun m!1113313 () Bool)

(assert (=> b!1207563 m!1113313))

(assert (=> b!1207557 m!1112787))

(declare-fun m!1113315 () Bool)

(assert (=> b!1207557 m!1113315))

(assert (=> b!1207557 m!1112787))

(declare-fun m!1113317 () Bool)

(assert (=> b!1207557 m!1113317))

(declare-fun m!1113319 () Bool)

(assert (=> b!1207557 m!1113319))

(declare-fun m!1113321 () Bool)

(assert (=> b!1207557 m!1113321))

(assert (=> b!1207557 m!1113321))

(declare-fun m!1113323 () Bool)

(assert (=> b!1207557 m!1113323))

(assert (=> b!1207557 m!1113315))

(declare-fun m!1113325 () Bool)

(assert (=> b!1207557 m!1113325))

(declare-fun m!1113327 () Bool)

(assert (=> b!1207557 m!1113327))

(assert (=> b!1207565 m!1112787))

(assert (=> b!1207565 m!1113315))

(assert (=> b!1207565 m!1112787))

(assert (=> b!1207565 m!1113317))

(assert (=> b!1207565 m!1113319))

(assert (=> b!1207565 m!1113319))

(declare-fun m!1113329 () Bool)

(assert (=> b!1207565 m!1113329))

(assert (=> b!1207565 m!1113315))

(assert (=> b!1207564 m!1113319))

(assert (=> b!1207564 m!1113319))

(declare-fun m!1113331 () Bool)

(assert (=> b!1207564 m!1113331))

(declare-fun m!1113333 () Bool)

(assert (=> b!1207566 m!1113333))

(declare-fun m!1113335 () Bool)

(assert (=> d!133001 m!1113335))

(assert (=> d!133001 m!1112795))

(assert (=> b!1207562 m!1113319))

(assert (=> b!1207562 m!1113319))

(declare-fun m!1113337 () Bool)

(assert (=> b!1207562 m!1113337))

(declare-fun m!1113339 () Bool)

(assert (=> b!1207558 m!1113339))

(assert (=> b!1207568 m!1113319))

(assert (=> b!1207568 m!1113319))

(assert (=> b!1207568 m!1113331))

(assert (=> bm!58986 m!1113333))

(assert (=> bm!58960 d!133001))

(declare-fun d!133003 () Bool)

(declare-fun lt!547916 () Bool)

(assert (=> d!133003 (= lt!547916 (select (content!548 (toList!8949 lt!547817)) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(declare-fun e!685826 () Bool)

(assert (=> d!133003 (= lt!547916 e!685826)))

(declare-fun res!802938 () Bool)

(assert (=> d!133003 (=> (not res!802938) (not e!685826))))

(assert (=> d!133003 (= res!802938 ((_ is Cons!26705) (toList!8949 lt!547817)))))

(assert (=> d!133003 (= (contains!6954 (toList!8949 lt!547817) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!547916)))

(declare-fun b!1207569 () Bool)

(declare-fun e!685827 () Bool)

(assert (=> b!1207569 (= e!685826 e!685827)))

(declare-fun res!802937 () Bool)

(assert (=> b!1207569 (=> res!802937 e!685827)))

(assert (=> b!1207569 (= res!802937 (= (h!27914 (toList!8949 lt!547817)) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(declare-fun b!1207570 () Bool)

(assert (=> b!1207570 (= e!685827 (contains!6954 (t!39661 (toList!8949 lt!547817)) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!133003 res!802938) b!1207569))

(assert (= (and b!1207569 (not res!802937)) b!1207570))

(declare-fun m!1113341 () Bool)

(assert (=> d!133003 m!1113341))

(declare-fun m!1113343 () Bool)

(assert (=> d!133003 m!1113343))

(declare-fun m!1113345 () Bool)

(assert (=> b!1207570 m!1113345))

(assert (=> b!1207378 d!133003))

(declare-fun d!133005 () Bool)

(assert (=> d!133005 (isDefined!462 (getValueByKey!639 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(declare-fun lt!547917 () Unit!39940)

(assert (=> d!133005 (= lt!547917 (choose!1812 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(declare-fun e!685828 () Bool)

(assert (=> d!133005 e!685828))

(declare-fun res!802939 () Bool)

(assert (=> d!133005 (=> (not res!802939) (not e!685828))))

(assert (=> d!133005 (= res!802939 (isStrictlySorted!725 (toList!8949 (ite c!118558 lt!547686 call!58928))))))

(assert (=> d!133005 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934) lt!547917)))

(declare-fun b!1207571 () Bool)

(assert (=> b!1207571 (= e!685828 (containsKey!593 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934))))

(assert (= (and d!133005 res!802939) b!1207571))

(assert (=> d!133005 m!1113089))

(assert (=> d!133005 m!1113089))

(assert (=> d!133005 m!1113091))

(declare-fun m!1113347 () Bool)

(assert (=> d!133005 m!1113347))

(declare-fun m!1113349 () Bool)

(assert (=> d!133005 m!1113349))

(assert (=> b!1207571 m!1113085))

(assert (=> b!1207412 d!133005))

(assert (=> b!1207412 d!132997))

(assert (=> b!1207412 d!132999))

(declare-fun d!133007 () Bool)

(declare-fun e!685830 () Bool)

(assert (=> d!133007 e!685830))

(declare-fun res!802940 () Bool)

(assert (=> d!133007 (=> res!802940 e!685830)))

(declare-fun lt!547921 () Bool)

(assert (=> d!133007 (= res!802940 (not lt!547921))))

(declare-fun lt!547918 () Bool)

(assert (=> d!133007 (= lt!547921 lt!547918)))

(declare-fun lt!547919 () Unit!39940)

(declare-fun e!685829 () Unit!39940)

(assert (=> d!133007 (= lt!547919 e!685829)))

(declare-fun c!118653 () Bool)

(assert (=> d!133007 (= c!118653 lt!547918)))

(assert (=> d!133007 (= lt!547918 (containsKey!593 (toList!8949 lt!547775) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133007 (= (contains!6952 lt!547775 #b0000000000000000000000000000000000000000000000000000000000000000) lt!547921)))

(declare-fun b!1207572 () Bool)

(declare-fun lt!547920 () Unit!39940)

(assert (=> b!1207572 (= e!685829 lt!547920)))

(assert (=> b!1207572 (= lt!547920 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547775) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207572 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207573 () Bool)

(declare-fun Unit!39954 () Unit!39940)

(assert (=> b!1207573 (= e!685829 Unit!39954)))

(declare-fun b!1207574 () Bool)

(assert (=> b!1207574 (= e!685830 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133007 c!118653) b!1207572))

(assert (= (and d!133007 (not c!118653)) b!1207573))

(assert (= (and d!133007 (not res!802940)) b!1207574))

(declare-fun m!1113351 () Bool)

(assert (=> d!133007 m!1113351))

(declare-fun m!1113353 () Bool)

(assert (=> b!1207572 m!1113353))

(declare-fun m!1113355 () Bool)

(assert (=> b!1207572 m!1113355))

(assert (=> b!1207572 m!1113355))

(declare-fun m!1113357 () Bool)

(assert (=> b!1207572 m!1113357))

(assert (=> b!1207574 m!1113355))

(assert (=> b!1207574 m!1113355))

(assert (=> b!1207574 m!1113357))

(assert (=> d!132887 d!133007))

(assert (=> d!132887 d!132917))

(declare-fun d!133009 () Bool)

(declare-fun e!685832 () Bool)

(assert (=> d!133009 e!685832))

(declare-fun res!802941 () Bool)

(assert (=> d!133009 (=> res!802941 e!685832)))

(declare-fun lt!547925 () Bool)

(assert (=> d!133009 (= res!802941 (not lt!547925))))

(declare-fun lt!547922 () Bool)

(assert (=> d!133009 (= lt!547925 lt!547922)))

(declare-fun lt!547923 () Unit!39940)

(declare-fun e!685831 () Unit!39940)

(assert (=> d!133009 (= lt!547923 e!685831)))

(declare-fun c!118654 () Bool)

(assert (=> d!133009 (= c!118654 lt!547922)))

(assert (=> d!133009 (= lt!547922 (containsKey!593 (toList!8949 lt!547789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133009 (= (contains!6952 lt!547789 #b1000000000000000000000000000000000000000000000000000000000000000) lt!547925)))

(declare-fun b!1207575 () Bool)

(declare-fun lt!547924 () Unit!39940)

(assert (=> b!1207575 (= e!685831 lt!547924)))

(assert (=> b!1207575 (= lt!547924 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207575 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207576 () Bool)

(declare-fun Unit!39955 () Unit!39940)

(assert (=> b!1207576 (= e!685831 Unit!39955)))

(declare-fun b!1207577 () Bool)

(assert (=> b!1207577 (= e!685832 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133009 c!118654) b!1207575))

(assert (= (and d!133009 (not c!118654)) b!1207576))

(assert (= (and d!133009 (not res!802941)) b!1207577))

(declare-fun m!1113359 () Bool)

(assert (=> d!133009 m!1113359))

(declare-fun m!1113361 () Bool)

(assert (=> b!1207575 m!1113361))

(declare-fun m!1113363 () Bool)

(assert (=> b!1207575 m!1113363))

(assert (=> b!1207575 m!1113363))

(declare-fun m!1113365 () Bool)

(assert (=> b!1207575 m!1113365))

(assert (=> b!1207577 m!1113363))

(assert (=> b!1207577 m!1113363))

(assert (=> b!1207577 m!1113365))

(assert (=> b!1207344 d!133009))

(assert (=> b!1207401 d!132981))

(declare-fun d!133011 () Bool)

(declare-fun e!685833 () Bool)

(assert (=> d!133011 e!685833))

(declare-fun res!802942 () Bool)

(assert (=> d!133011 (=> (not res!802942) (not e!685833))))

(declare-fun lt!547928 () ListLongMap!17867)

(assert (=> d!133011 (= res!802942 (contains!6952 lt!547928 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!547926 () List!26709)

(assert (=> d!133011 (= lt!547928 (ListLongMap!17868 lt!547926))))

(declare-fun lt!547927 () Unit!39940)

(declare-fun lt!547929 () Unit!39940)

(assert (=> d!133011 (= lt!547927 lt!547929)))

(assert (=> d!133011 (= (getValueByKey!639 lt!547926 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133011 (= lt!547929 (lemmaContainsTupThenGetReturnValue!314 lt!547926 (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133011 (= lt!547926 (insertStrictlySorted!406 (toList!8949 call!58962) (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133011 (= (+!3978 call!58962 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!547928)))

(declare-fun b!1207578 () Bool)

(declare-fun res!802943 () Bool)

(assert (=> b!1207578 (=> (not res!802943) (not e!685833))))

(assert (=> b!1207578 (= res!802943 (= (getValueByKey!639 (toList!8949 lt!547928) (_1!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1207579 () Bool)

(assert (=> b!1207579 (= e!685833 (contains!6954 (toList!8949 lt!547928) (tuple2!19887 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133011 res!802942) b!1207578))

(assert (= (and b!1207578 res!802943) b!1207579))

(declare-fun m!1113367 () Bool)

(assert (=> d!133011 m!1113367))

(declare-fun m!1113369 () Bool)

(assert (=> d!133011 m!1113369))

(declare-fun m!1113371 () Bool)

(assert (=> d!133011 m!1113371))

(declare-fun m!1113373 () Bool)

(assert (=> d!133011 m!1113373))

(declare-fun m!1113375 () Bool)

(assert (=> b!1207578 m!1113375))

(declare-fun m!1113377 () Bool)

(assert (=> b!1207579 m!1113377))

(assert (=> b!1207319 d!133011))

(declare-fun d!133013 () Bool)

(declare-fun c!118655 () Bool)

(assert (=> d!133013 (= c!118655 ((_ is ValueCellFull!14625) (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!685834 () V!46019)

(assert (=> d!133013 (= (get!19245 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!685834)))

(declare-fun b!1207580 () Bool)

(assert (=> b!1207580 (= e!685834 (get!19246 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207581 () Bool)

(assert (=> b!1207581 (= e!685834 (get!19247 (select (arr!37684 lt!547692) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133013 c!118655) b!1207580))

(assert (= (and d!133013 (not c!118655)) b!1207581))

(assert (=> b!1207580 m!1112933))

(assert (=> b!1207580 m!1112787))

(declare-fun m!1113379 () Bool)

(assert (=> b!1207580 m!1113379))

(assert (=> b!1207581 m!1112933))

(assert (=> b!1207581 m!1112787))

(declare-fun m!1113381 () Bool)

(assert (=> b!1207581 m!1113381))

(assert (=> b!1207319 d!133013))

(declare-fun d!133015 () Bool)

(assert (=> d!133015 (not (contains!6952 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778)) lt!547776))))

(declare-fun lt!547930 () Unit!39940)

(assert (=> d!133015 (= lt!547930 (choose!1811 lt!547774 lt!547773 lt!547778 lt!547776))))

(declare-fun e!685835 () Bool)

(assert (=> d!133015 e!685835))

(declare-fun res!802944 () Bool)

(assert (=> d!133015 (=> (not res!802944) (not e!685835))))

(assert (=> d!133015 (= res!802944 (not (contains!6952 lt!547774 lt!547776)))))

(assert (=> d!133015 (= (addStillNotContains!295 lt!547774 lt!547773 lt!547778 lt!547776) lt!547930)))

(declare-fun b!1207582 () Bool)

(assert (=> b!1207582 (= e!685835 (not (= lt!547773 lt!547776)))))

(assert (= (and d!133015 res!802944) b!1207582))

(assert (=> d!133015 m!1112939))

(assert (=> d!133015 m!1112939))

(assert (=> d!133015 m!1112941))

(declare-fun m!1113383 () Bool)

(assert (=> d!133015 m!1113383))

(declare-fun m!1113385 () Bool)

(assert (=> d!133015 m!1113385))

(assert (=> b!1207319 d!133015))

(declare-fun d!133017 () Bool)

(declare-fun e!685836 () Bool)

(assert (=> d!133017 e!685836))

(declare-fun res!802945 () Bool)

(assert (=> d!133017 (=> (not res!802945) (not e!685836))))

(declare-fun lt!547933 () ListLongMap!17867)

(assert (=> d!133017 (= res!802945 (contains!6952 lt!547933 (_1!9953 (tuple2!19887 lt!547773 lt!547778))))))

(declare-fun lt!547931 () List!26709)

(assert (=> d!133017 (= lt!547933 (ListLongMap!17868 lt!547931))))

(declare-fun lt!547932 () Unit!39940)

(declare-fun lt!547934 () Unit!39940)

(assert (=> d!133017 (= lt!547932 lt!547934)))

(assert (=> d!133017 (= (getValueByKey!639 lt!547931 (_1!9953 (tuple2!19887 lt!547773 lt!547778))) (Some!689 (_2!9953 (tuple2!19887 lt!547773 lt!547778))))))

(assert (=> d!133017 (= lt!547934 (lemmaContainsTupThenGetReturnValue!314 lt!547931 (_1!9953 (tuple2!19887 lt!547773 lt!547778)) (_2!9953 (tuple2!19887 lt!547773 lt!547778))))))

(assert (=> d!133017 (= lt!547931 (insertStrictlySorted!406 (toList!8949 lt!547774) (_1!9953 (tuple2!19887 lt!547773 lt!547778)) (_2!9953 (tuple2!19887 lt!547773 lt!547778))))))

(assert (=> d!133017 (= (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778)) lt!547933)))

(declare-fun b!1207583 () Bool)

(declare-fun res!802946 () Bool)

(assert (=> b!1207583 (=> (not res!802946) (not e!685836))))

(assert (=> b!1207583 (= res!802946 (= (getValueByKey!639 (toList!8949 lt!547933) (_1!9953 (tuple2!19887 lt!547773 lt!547778))) (Some!689 (_2!9953 (tuple2!19887 lt!547773 lt!547778)))))))

(declare-fun b!1207584 () Bool)

(assert (=> b!1207584 (= e!685836 (contains!6954 (toList!8949 lt!547933) (tuple2!19887 lt!547773 lt!547778)))))

(assert (= (and d!133017 res!802945) b!1207583))

(assert (= (and b!1207583 res!802946) b!1207584))

(declare-fun m!1113387 () Bool)

(assert (=> d!133017 m!1113387))

(declare-fun m!1113389 () Bool)

(assert (=> d!133017 m!1113389))

(declare-fun m!1113391 () Bool)

(assert (=> d!133017 m!1113391))

(declare-fun m!1113393 () Bool)

(assert (=> d!133017 m!1113393))

(declare-fun m!1113395 () Bool)

(assert (=> b!1207583 m!1113395))

(declare-fun m!1113397 () Bool)

(assert (=> b!1207584 m!1113397))

(assert (=> b!1207319 d!133017))

(declare-fun d!133019 () Bool)

(declare-fun e!685838 () Bool)

(assert (=> d!133019 e!685838))

(declare-fun res!802947 () Bool)

(assert (=> d!133019 (=> res!802947 e!685838)))

(declare-fun lt!547938 () Bool)

(assert (=> d!133019 (= res!802947 (not lt!547938))))

(declare-fun lt!547935 () Bool)

(assert (=> d!133019 (= lt!547938 lt!547935)))

(declare-fun lt!547936 () Unit!39940)

(declare-fun e!685837 () Unit!39940)

(assert (=> d!133019 (= lt!547936 e!685837)))

(declare-fun c!118656 () Bool)

(assert (=> d!133019 (= c!118656 lt!547935)))

(assert (=> d!133019 (= lt!547935 (containsKey!593 (toList!8949 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778))) lt!547776))))

(assert (=> d!133019 (= (contains!6952 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778)) lt!547776) lt!547938)))

(declare-fun b!1207585 () Bool)

(declare-fun lt!547937 () Unit!39940)

(assert (=> b!1207585 (= e!685837 lt!547937)))

(assert (=> b!1207585 (= lt!547937 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778))) lt!547776))))

(assert (=> b!1207585 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778))) lt!547776))))

(declare-fun b!1207586 () Bool)

(declare-fun Unit!39956 () Unit!39940)

(assert (=> b!1207586 (= e!685837 Unit!39956)))

(declare-fun b!1207587 () Bool)

(assert (=> b!1207587 (= e!685838 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547774 (tuple2!19887 lt!547773 lt!547778))) lt!547776)))))

(assert (= (and d!133019 c!118656) b!1207585))

(assert (= (and d!133019 (not c!118656)) b!1207586))

(assert (= (and d!133019 (not res!802947)) b!1207587))

(declare-fun m!1113399 () Bool)

(assert (=> d!133019 m!1113399))

(declare-fun m!1113401 () Bool)

(assert (=> b!1207585 m!1113401))

(declare-fun m!1113403 () Bool)

(assert (=> b!1207585 m!1113403))

(assert (=> b!1207585 m!1113403))

(declare-fun m!1113405 () Bool)

(assert (=> b!1207585 m!1113405))

(assert (=> b!1207587 m!1113403))

(assert (=> b!1207587 m!1113403))

(assert (=> b!1207587 m!1113405))

(assert (=> b!1207319 d!133019))

(assert (=> b!1207366 d!132939))

(declare-fun d!133021 () Bool)

(assert (=> d!133021 (= (apply!1000 lt!547782 (select (arr!37683 lt!547687) from!1455)) (get!19248 (getValueByKey!639 (toList!8949 lt!547782) (select (arr!37683 lt!547687) from!1455))))))

(declare-fun bs!34134 () Bool)

(assert (= bs!34134 d!133021))

(assert (=> bs!34134 m!1112965))

(declare-fun m!1113407 () Bool)

(assert (=> bs!34134 m!1113407))

(assert (=> bs!34134 m!1113407))

(declare-fun m!1113409 () Bool)

(assert (=> bs!34134 m!1113409))

(assert (=> b!1207339 d!133021))

(assert (=> b!1207339 d!132953))

(declare-fun d!133023 () Bool)

(declare-fun e!685840 () Bool)

(assert (=> d!133023 e!685840))

(declare-fun res!802948 () Bool)

(assert (=> d!133023 (=> res!802948 e!685840)))

(declare-fun lt!547942 () Bool)

(assert (=> d!133023 (= res!802948 (not lt!547942))))

(declare-fun lt!547939 () Bool)

(assert (=> d!133023 (= lt!547942 lt!547939)))

(declare-fun lt!547940 () Unit!39940)

(declare-fun e!685839 () Unit!39940)

(assert (=> d!133023 (= lt!547940 e!685839)))

(declare-fun c!118657 () Bool)

(assert (=> d!133023 (= c!118657 lt!547939)))

(assert (=> d!133023 (= lt!547939 (containsKey!593 (toList!8949 lt!547789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133023 (= (contains!6952 lt!547789 #b0000000000000000000000000000000000000000000000000000000000000000) lt!547942)))

(declare-fun b!1207588 () Bool)

(declare-fun lt!547941 () Unit!39940)

(assert (=> b!1207588 (= e!685839 lt!547941)))

(assert (=> b!1207588 (= lt!547941 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207588 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207589 () Bool)

(declare-fun Unit!39957 () Unit!39940)

(assert (=> b!1207589 (= e!685839 Unit!39957)))

(declare-fun b!1207590 () Bool)

(assert (=> b!1207590 (= e!685840 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133023 c!118657) b!1207588))

(assert (= (and d!133023 (not c!118657)) b!1207589))

(assert (= (and d!133023 (not res!802948)) b!1207590))

(declare-fun m!1113411 () Bool)

(assert (=> d!133023 m!1113411))

(declare-fun m!1113413 () Bool)

(assert (=> b!1207588 m!1113413))

(declare-fun m!1113415 () Bool)

(assert (=> b!1207588 m!1113415))

(assert (=> b!1207588 m!1113415))

(declare-fun m!1113417 () Bool)

(assert (=> b!1207588 m!1113417))

(assert (=> b!1207590 m!1113415))

(assert (=> b!1207590 m!1113415))

(assert (=> b!1207590 m!1113417))

(assert (=> d!132891 d!133023))

(assert (=> d!132891 d!132917))

(declare-fun b!1207591 () Bool)

(declare-fun lt!547948 () Unit!39940)

(declare-fun lt!547943 () Unit!39940)

(assert (=> b!1207591 (= lt!547948 lt!547943)))

(declare-fun lt!547945 () ListLongMap!17867)

(declare-fun lt!547949 () V!46019)

(declare-fun lt!547947 () (_ BitVec 64))

(declare-fun lt!547944 () (_ BitVec 64))

(assert (=> b!1207591 (not (contains!6952 (+!3978 lt!547945 (tuple2!19887 lt!547944 lt!547949)) lt!547947))))

(assert (=> b!1207591 (= lt!547943 (addStillNotContains!295 lt!547945 lt!547944 lt!547949 lt!547947))))

(assert (=> b!1207591 (= lt!547947 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207591 (= lt!547949 (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207591 (= lt!547944 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(declare-fun call!58990 () ListLongMap!17867)

(assert (=> b!1207591 (= lt!547945 call!58990)))

(declare-fun e!685842 () ListLongMap!17867)

(assert (=> b!1207591 (= e!685842 (+!3978 call!58990 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207592 () Bool)

(declare-fun res!802952 () Bool)

(declare-fun e!685841 () Bool)

(assert (=> b!1207592 (=> (not res!802952) (not e!685841))))

(declare-fun lt!547946 () ListLongMap!17867)

(assert (=> b!1207592 (= res!802952 (not (contains!6952 lt!547946 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207593 () Bool)

(declare-fun e!685843 () ListLongMap!17867)

(assert (=> b!1207593 (= e!685843 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207594 () Bool)

(declare-fun e!685845 () Bool)

(declare-fun e!685847 () Bool)

(assert (=> b!1207594 (= e!685845 e!685847)))

(declare-fun c!118659 () Bool)

(assert (=> b!1207594 (= c!118659 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207596 () Bool)

(declare-fun e!685844 () Bool)

(assert (=> b!1207596 (= e!685845 e!685844)))

(assert (=> b!1207596 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun res!802949 () Bool)

(assert (=> b!1207596 (= res!802949 (contains!6952 lt!547946 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207596 (=> (not res!802949) (not e!685844))))

(declare-fun b!1207597 () Bool)

(assert (=> b!1207597 (= e!685847 (isEmpty!990 lt!547946))))

(declare-fun b!1207598 () Bool)

(assert (=> b!1207598 (= e!685843 e!685842)))

(declare-fun c!118660 () Bool)

(assert (=> b!1207598 (= c!118660 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1207599 () Bool)

(assert (=> b!1207599 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> b!1207599 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38221 _values!996)))))

(assert (=> b!1207599 (= e!685844 (= (apply!1000 lt!547946 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207600 () Bool)

(assert (=> b!1207600 (= e!685847 (= lt!547946 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207601 () Bool)

(assert (=> b!1207601 (= e!685842 call!58990)))

(declare-fun d!133025 () Bool)

(assert (=> d!133025 e!685841))

(declare-fun res!802951 () Bool)

(assert (=> d!133025 (=> (not res!802951) (not e!685841))))

(assert (=> d!133025 (= res!802951 (not (contains!6952 lt!547946 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133025 (= lt!547946 e!685843)))

(declare-fun c!118658 () Bool)

(assert (=> d!133025 (= c!118658 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> d!133025 (validMask!0 mask!1564)))

(assert (=> d!133025 (= (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!547946)))

(declare-fun b!1207595 () Bool)

(assert (=> b!1207595 (= e!685841 e!685845)))

(declare-fun c!118661 () Bool)

(declare-fun e!685846 () Bool)

(assert (=> b!1207595 (= c!118661 e!685846)))

(declare-fun res!802950 () Bool)

(assert (=> b!1207595 (=> (not res!802950) (not e!685846))))

(assert (=> b!1207595 (= res!802950 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207602 () Bool)

(assert (=> b!1207602 (= e!685846 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1207602 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!58987 () Bool)

(assert (=> bm!58987 (= call!58990 (getCurrentListMapNoExtraKeys!5356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133025 c!118658) b!1207593))

(assert (= (and d!133025 (not c!118658)) b!1207598))

(assert (= (and b!1207598 c!118660) b!1207591))

(assert (= (and b!1207598 (not c!118660)) b!1207601))

(assert (= (or b!1207591 b!1207601) bm!58987))

(assert (= (and d!133025 res!802951) b!1207592))

(assert (= (and b!1207592 res!802952) b!1207595))

(assert (= (and b!1207595 res!802950) b!1207602))

(assert (= (and b!1207595 c!118661) b!1207596))

(assert (= (and b!1207595 (not c!118661)) b!1207594))

(assert (= (and b!1207596 res!802949) b!1207599))

(assert (= (and b!1207594 c!118659) b!1207600))

(assert (= (and b!1207594 (not c!118659)) b!1207597))

(declare-fun b_lambda!21473 () Bool)

(assert (=> (not b_lambda!21473) (not b!1207591)))

(assert (=> b!1207591 t!39660))

(declare-fun b_and!42985 () Bool)

(assert (= b_and!42983 (and (=> t!39660 result!22125) b_and!42985)))

(declare-fun b_lambda!21475 () Bool)

(assert (=> (not b_lambda!21475) (not b!1207599)))

(assert (=> b!1207599 t!39660))

(declare-fun b_and!42987 () Bool)

(assert (= b_and!42985 (and (=> t!39660 result!22125) b_and!42987)))

(declare-fun m!1113419 () Bool)

(assert (=> b!1207597 m!1113419))

(assert (=> b!1207591 m!1112787))

(declare-fun m!1113421 () Bool)

(assert (=> b!1207591 m!1113421))

(assert (=> b!1207591 m!1112787))

(declare-fun m!1113423 () Bool)

(assert (=> b!1207591 m!1113423))

(declare-fun m!1113425 () Bool)

(assert (=> b!1207591 m!1113425))

(declare-fun m!1113427 () Bool)

(assert (=> b!1207591 m!1113427))

(assert (=> b!1207591 m!1113427))

(declare-fun m!1113429 () Bool)

(assert (=> b!1207591 m!1113429))

(assert (=> b!1207591 m!1113421))

(declare-fun m!1113431 () Bool)

(assert (=> b!1207591 m!1113431))

(declare-fun m!1113433 () Bool)

(assert (=> b!1207591 m!1113433))

(assert (=> b!1207599 m!1112787))

(assert (=> b!1207599 m!1113421))

(assert (=> b!1207599 m!1112787))

(assert (=> b!1207599 m!1113423))

(assert (=> b!1207599 m!1113425))

(assert (=> b!1207599 m!1113425))

(declare-fun m!1113435 () Bool)

(assert (=> b!1207599 m!1113435))

(assert (=> b!1207599 m!1113421))

(assert (=> b!1207598 m!1113425))

(assert (=> b!1207598 m!1113425))

(declare-fun m!1113437 () Bool)

(assert (=> b!1207598 m!1113437))

(declare-fun m!1113439 () Bool)

(assert (=> b!1207600 m!1113439))

(declare-fun m!1113441 () Bool)

(assert (=> d!133025 m!1113441))

(assert (=> d!133025 m!1112795))

(assert (=> b!1207596 m!1113425))

(assert (=> b!1207596 m!1113425))

(declare-fun m!1113443 () Bool)

(assert (=> b!1207596 m!1113443))

(declare-fun m!1113445 () Bool)

(assert (=> b!1207592 m!1113445))

(assert (=> b!1207602 m!1113425))

(assert (=> b!1207602 m!1113425))

(assert (=> b!1207602 m!1113437))

(assert (=> bm!58987 m!1113439))

(assert (=> b!1207364 d!133025))

(declare-fun d!133027 () Bool)

(assert (=> d!133027 (= (isEmpty!990 lt!547782) (isEmpty!991 (toList!8949 lt!547782)))))

(declare-fun bs!34135 () Bool)

(assert (= bs!34135 d!133027))

(declare-fun m!1113447 () Bool)

(assert (=> bs!34135 m!1113447))

(assert (=> b!1207337 d!133027))

(declare-fun d!133029 () Bool)

(declare-fun lt!547950 () ListLongMap!17867)

(assert (=> d!133029 (not (contains!6952 lt!547950 k0!934))))

(assert (=> d!133029 (= lt!547950 (ListLongMap!17868 (removeStrictlySorted!99 (toList!8949 call!58978) k0!934)))))

(assert (=> d!133029 (= (-!1857 call!58978 k0!934) lt!547950)))

(declare-fun bs!34136 () Bool)

(assert (= bs!34136 d!133029))

(declare-fun m!1113449 () Bool)

(assert (=> bs!34136 m!1113449))

(declare-fun m!1113451 () Bool)

(assert (=> bs!34136 m!1113451))

(assert (=> b!1207435 d!133029))

(declare-fun b!1207603 () Bool)

(declare-fun lt!547956 () Unit!39940)

(declare-fun lt!547951 () Unit!39940)

(assert (=> b!1207603 (= lt!547956 lt!547951)))

(declare-fun lt!547955 () (_ BitVec 64))

(declare-fun lt!547952 () (_ BitVec 64))

(declare-fun lt!547953 () ListLongMap!17867)

(declare-fun lt!547957 () V!46019)

(assert (=> b!1207603 (not (contains!6952 (+!3978 lt!547953 (tuple2!19887 lt!547952 lt!547957)) lt!547955))))

(assert (=> b!1207603 (= lt!547951 (addStillNotContains!295 lt!547953 lt!547952 lt!547957 lt!547955))))

(assert (=> b!1207603 (= lt!547955 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1207603 (= lt!547957 (get!19245 (select (arr!37684 (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1207603 (= lt!547952 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58991 () ListLongMap!17867)

(assert (=> b!1207603 (= lt!547953 call!58991)))

(declare-fun e!685849 () ListLongMap!17867)

(assert (=> b!1207603 (= e!685849 (+!3978 call!58991 (tuple2!19887 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1207604 () Bool)

(declare-fun res!802956 () Bool)

(declare-fun e!685848 () Bool)

(assert (=> b!1207604 (=> (not res!802956) (not e!685848))))

(declare-fun lt!547954 () ListLongMap!17867)

(assert (=> b!1207604 (= res!802956 (not (contains!6952 lt!547954 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207605 () Bool)

(declare-fun e!685850 () ListLongMap!17867)

(assert (=> b!1207605 (= e!685850 (ListLongMap!17868 Nil!26706))))

(declare-fun b!1207606 () Bool)

(declare-fun e!685852 () Bool)

(declare-fun e!685854 () Bool)

(assert (=> b!1207606 (= e!685852 e!685854)))

(declare-fun c!118663 () Bool)

(assert (=> b!1207606 (= c!118663 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))))

(declare-fun b!1207608 () Bool)

(declare-fun e!685851 () Bool)

(assert (=> b!1207608 (= e!685852 e!685851)))

(assert (=> b!1207608 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))))

(declare-fun res!802953 () Bool)

(assert (=> b!1207608 (= res!802953 (contains!6952 lt!547954 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207608 (=> (not res!802953) (not e!685851))))

(declare-fun b!1207609 () Bool)

(assert (=> b!1207609 (= e!685854 (isEmpty!990 lt!547954))))

(declare-fun b!1207610 () Bool)

(assert (=> b!1207610 (= e!685850 e!685849)))

(declare-fun c!118664 () Bool)

(assert (=> b!1207610 (= c!118664 (validKeyInArray!0 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1207611 () Bool)

(assert (=> b!1207611 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))))

(assert (=> b!1207611 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38221 (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)))))))

(assert (=> b!1207611 (= e!685851 (= (apply!1000 lt!547954 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19245 (select (arr!37684 (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1207612 () Bool)

(assert (=> b!1207612 (= e!685854 (= lt!547954 (getCurrentListMapNoExtraKeys!5356 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)) (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1207613 () Bool)

(assert (=> b!1207613 (= e!685849 call!58991)))

(declare-fun d!133031 () Bool)

(assert (=> d!133031 e!685848))

(declare-fun res!802955 () Bool)

(assert (=> d!133031 (=> (not res!802955) (not e!685848))))

(assert (=> d!133031 (= res!802955 (not (contains!6952 lt!547954 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133031 (= lt!547954 e!685850)))

(declare-fun c!118662 () Bool)

(assert (=> d!133031 (= c!118662 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))))

(assert (=> d!133031 (validMask!0 mask!1564)))

(assert (=> d!133031 (= (getCurrentListMapNoExtraKeys!5356 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)) (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547954)))

(declare-fun b!1207607 () Bool)

(assert (=> b!1207607 (= e!685848 e!685852)))

(declare-fun c!118665 () Bool)

(declare-fun e!685853 () Bool)

(assert (=> b!1207607 (= c!118665 e!685853)))

(declare-fun res!802954 () Bool)

(assert (=> b!1207607 (=> (not res!802954) (not e!685853))))

(assert (=> b!1207607 (= res!802954 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38220 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)))))))

(declare-fun b!1207614 () Bool)

(assert (=> b!1207614 (= e!685853 (validKeyInArray!0 (select (arr!37683 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1207614 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!58988 () Bool)

(assert (=> bm!58988 (= call!58991 (getCurrentListMapNoExtraKeys!5356 (array!78095 (store (arr!37683 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38220 _keys!1208)) (array!78097 (store (arr!37684 _values!996) i!673 (ValueCellFull!14625 (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38221 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!133031 c!118662) b!1207605))

(assert (= (and d!133031 (not c!118662)) b!1207610))

(assert (= (and b!1207610 c!118664) b!1207603))

(assert (= (and b!1207610 (not c!118664)) b!1207613))

(assert (= (or b!1207603 b!1207613) bm!58988))

(assert (= (and d!133031 res!802955) b!1207604))

(assert (= (and b!1207604 res!802956) b!1207607))

(assert (= (and b!1207607 res!802954) b!1207614))

(assert (= (and b!1207607 c!118665) b!1207608))

(assert (= (and b!1207607 (not c!118665)) b!1207606))

(assert (= (and b!1207608 res!802953) b!1207611))

(assert (= (and b!1207606 c!118663) b!1207612))

(assert (= (and b!1207606 (not c!118663)) b!1207609))

(declare-fun b_lambda!21477 () Bool)

(assert (=> (not b_lambda!21477) (not b!1207603)))

(assert (=> b!1207603 t!39660))

(declare-fun b_and!42989 () Bool)

(assert (= b_and!42987 (and (=> t!39660 result!22125) b_and!42989)))

(declare-fun b_lambda!21479 () Bool)

(assert (=> (not b_lambda!21479) (not b!1207611)))

(assert (=> b!1207611 t!39660))

(declare-fun b_and!42991 () Bool)

(assert (= b_and!42989 (and (=> t!39660 result!22125) b_and!42991)))

(declare-fun m!1113453 () Bool)

(assert (=> b!1207609 m!1113453))

(assert (=> b!1207603 m!1112787))

(declare-fun m!1113455 () Bool)

(assert (=> b!1207603 m!1113455))

(assert (=> b!1207603 m!1112787))

(declare-fun m!1113457 () Bool)

(assert (=> b!1207603 m!1113457))

(declare-fun m!1113459 () Bool)

(assert (=> b!1207603 m!1113459))

(declare-fun m!1113461 () Bool)

(assert (=> b!1207603 m!1113461))

(assert (=> b!1207603 m!1113461))

(declare-fun m!1113463 () Bool)

(assert (=> b!1207603 m!1113463))

(assert (=> b!1207603 m!1113455))

(declare-fun m!1113465 () Bool)

(assert (=> b!1207603 m!1113465))

(declare-fun m!1113467 () Bool)

(assert (=> b!1207603 m!1113467))

(assert (=> b!1207611 m!1112787))

(assert (=> b!1207611 m!1113455))

(assert (=> b!1207611 m!1112787))

(assert (=> b!1207611 m!1113457))

(assert (=> b!1207611 m!1113459))

(assert (=> b!1207611 m!1113459))

(declare-fun m!1113469 () Bool)

(assert (=> b!1207611 m!1113469))

(assert (=> b!1207611 m!1113455))

(assert (=> b!1207610 m!1113459))

(assert (=> b!1207610 m!1113459))

(declare-fun m!1113471 () Bool)

(assert (=> b!1207610 m!1113471))

(declare-fun m!1113473 () Bool)

(assert (=> b!1207612 m!1113473))

(declare-fun m!1113475 () Bool)

(assert (=> d!133031 m!1113475))

(assert (=> d!133031 m!1112795))

(assert (=> b!1207608 m!1113459))

(assert (=> b!1207608 m!1113459))

(declare-fun m!1113477 () Bool)

(assert (=> b!1207608 m!1113477))

(declare-fun m!1113479 () Bool)

(assert (=> b!1207604 m!1113479))

(assert (=> b!1207614 m!1113459))

(assert (=> b!1207614 m!1113459))

(assert (=> b!1207614 m!1113471))

(assert (=> bm!58988 m!1113473))

(assert (=> bm!58974 d!133031))

(assert (=> d!132895 d!132897))

(assert (=> d!132895 d!132899))

(declare-fun d!133033 () Bool)

(assert (=> d!133033 (contains!6952 (+!3978 lt!547686 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(assert (=> d!133033 true))

(declare-fun _$35!458 () Unit!39940)

(assert (=> d!133033 (= (choose!1808 lt!547686 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) _$35!458)))

(declare-fun bs!34137 () Bool)

(assert (= bs!34137 d!133033))

(assert (=> bs!34137 m!1112837))

(assert (=> bs!34137 m!1112837))

(assert (=> bs!34137 m!1112839))

(assert (=> d!132895 d!133033))

(declare-fun d!133035 () Bool)

(declare-fun e!685856 () Bool)

(assert (=> d!133035 e!685856))

(declare-fun res!802957 () Bool)

(assert (=> d!133035 (=> res!802957 e!685856)))

(declare-fun lt!547961 () Bool)

(assert (=> d!133035 (= res!802957 (not lt!547961))))

(declare-fun lt!547958 () Bool)

(assert (=> d!133035 (= lt!547961 lt!547958)))

(declare-fun lt!547959 () Unit!39940)

(declare-fun e!685855 () Unit!39940)

(assert (=> d!133035 (= lt!547959 e!685855)))

(declare-fun c!118666 () Bool)

(assert (=> d!133035 (= c!118666 lt!547958)))

(assert (=> d!133035 (= lt!547958 (containsKey!593 (toList!8949 lt!547686) k0!934))))

(assert (=> d!133035 (= (contains!6952 lt!547686 k0!934) lt!547961)))

(declare-fun b!1207616 () Bool)

(declare-fun lt!547960 () Unit!39940)

(assert (=> b!1207616 (= e!685855 lt!547960)))

(assert (=> b!1207616 (= lt!547960 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547686) k0!934))))

(assert (=> b!1207616 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547686) k0!934))))

(declare-fun b!1207617 () Bool)

(declare-fun Unit!39958 () Unit!39940)

(assert (=> b!1207617 (= e!685855 Unit!39958)))

(declare-fun b!1207618 () Bool)

(assert (=> b!1207618 (= e!685856 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547686) k0!934)))))

(assert (= (and d!133035 c!118666) b!1207616))

(assert (= (and d!133035 (not c!118666)) b!1207617))

(assert (= (and d!133035 (not res!802957)) b!1207618))

(declare-fun m!1113481 () Bool)

(assert (=> d!133035 m!1113481))

(declare-fun m!1113483 () Bool)

(assert (=> b!1207616 m!1113483))

(declare-fun m!1113485 () Bool)

(assert (=> b!1207616 m!1113485))

(assert (=> b!1207616 m!1113485))

(declare-fun m!1113487 () Bool)

(assert (=> b!1207616 m!1113487))

(assert (=> b!1207618 m!1113485))

(assert (=> b!1207618 m!1113485))

(assert (=> b!1207618 m!1113487))

(assert (=> d!132895 d!133035))

(declare-fun d!133037 () Bool)

(declare-fun e!685858 () Bool)

(assert (=> d!133037 e!685858))

(declare-fun res!802958 () Bool)

(assert (=> d!133037 (=> res!802958 e!685858)))

(declare-fun lt!547965 () Bool)

(assert (=> d!133037 (= res!802958 (not lt!547965))))

(declare-fun lt!547962 () Bool)

(assert (=> d!133037 (= lt!547965 lt!547962)))

(declare-fun lt!547963 () Unit!39940)

(declare-fun e!685857 () Unit!39940)

(assert (=> d!133037 (= lt!547963 e!685857)))

(declare-fun c!118667 () Bool)

(assert (=> d!133037 (= c!118667 lt!547962)))

(assert (=> d!133037 (= lt!547962 (containsKey!593 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133037 (= (contains!6952 lt!547817 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547965)))

(declare-fun b!1207619 () Bool)

(declare-fun lt!547964 () Unit!39940)

(assert (=> b!1207619 (= e!685857 lt!547964)))

(assert (=> b!1207619 (= lt!547964 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> b!1207619 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207620 () Bool)

(declare-fun Unit!39959 () Unit!39940)

(assert (=> b!1207620 (= e!685857 Unit!39959)))

(declare-fun b!1207621 () Bool)

(assert (=> b!1207621 (= e!685858 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!133037 c!118667) b!1207619))

(assert (= (and d!133037 (not c!118667)) b!1207620))

(assert (= (and d!133037 (not res!802958)) b!1207621))

(declare-fun m!1113489 () Bool)

(assert (=> d!133037 m!1113489))

(declare-fun m!1113491 () Bool)

(assert (=> b!1207619 m!1113491))

(assert (=> b!1207619 m!1113061))

(assert (=> b!1207619 m!1113061))

(declare-fun m!1113493 () Bool)

(assert (=> b!1207619 m!1113493))

(assert (=> b!1207621 m!1113061))

(assert (=> b!1207621 m!1113061))

(assert (=> b!1207621 m!1113493))

(assert (=> d!132899 d!133037))

(declare-fun b!1207625 () Bool)

(declare-fun e!685860 () Option!690)

(assert (=> b!1207625 (= e!685860 None!688)))

(declare-fun b!1207623 () Bool)

(declare-fun e!685859 () Option!690)

(assert (=> b!1207623 (= e!685859 e!685860)))

(declare-fun c!118669 () Bool)

(assert (=> b!1207623 (= c!118669 (and ((_ is Cons!26705) lt!547815) (not (= (_1!9953 (h!27914 lt!547815)) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1207624 () Bool)

(assert (=> b!1207624 (= e!685860 (getValueByKey!639 (t!39661 lt!547815) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun d!133039 () Bool)

(declare-fun c!118668 () Bool)

(assert (=> d!133039 (= c!118668 (and ((_ is Cons!26705) lt!547815) (= (_1!9953 (h!27914 lt!547815)) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133039 (= (getValueByKey!639 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) e!685859)))

(declare-fun b!1207622 () Bool)

(assert (=> b!1207622 (= e!685859 (Some!689 (_2!9953 (h!27914 lt!547815))))))

(assert (= (and d!133039 c!118668) b!1207622))

(assert (= (and d!133039 (not c!118668)) b!1207623))

(assert (= (and b!1207623 c!118669) b!1207624))

(assert (= (and b!1207623 (not c!118669)) b!1207625))

(declare-fun m!1113495 () Bool)

(assert (=> b!1207624 m!1113495))

(assert (=> d!132899 d!133039))

(declare-fun d!133041 () Bool)

(assert (=> d!133041 (= (getValueByKey!639 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!689 (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!547968 () Unit!39940)

(declare-fun choose!1813 (List!26709 (_ BitVec 64) V!46019) Unit!39940)

(assert (=> d!133041 (= lt!547968 (choose!1813 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun e!685863 () Bool)

(assert (=> d!133041 e!685863))

(declare-fun res!802963 () Bool)

(assert (=> d!133041 (=> (not res!802963) (not e!685863))))

(assert (=> d!133041 (= res!802963 (isStrictlySorted!725 lt!547815))))

(assert (=> d!133041 (= (lemmaContainsTupThenGetReturnValue!314 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547968)))

(declare-fun b!1207630 () Bool)

(declare-fun res!802964 () Bool)

(assert (=> b!1207630 (=> (not res!802964) (not e!685863))))

(assert (=> b!1207630 (= res!802964 (containsKey!593 lt!547815 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207631 () Bool)

(assert (=> b!1207631 (= e!685863 (contains!6954 lt!547815 (tuple2!19887 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!133041 res!802963) b!1207630))

(assert (= (and b!1207630 res!802964) b!1207631))

(assert (=> d!133041 m!1113055))

(declare-fun m!1113497 () Bool)

(assert (=> d!133041 m!1113497))

(declare-fun m!1113499 () Bool)

(assert (=> d!133041 m!1113499))

(declare-fun m!1113501 () Bool)

(assert (=> b!1207630 m!1113501))

(declare-fun m!1113503 () Bool)

(assert (=> b!1207631 m!1113503))

(assert (=> d!132899 d!133041))

(declare-fun b!1207652 () Bool)

(declare-fun e!685877 () Bool)

(declare-fun lt!547971 () List!26709)

(assert (=> b!1207652 (= e!685877 (contains!6954 lt!547971 (tuple2!19887 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207653 () Bool)

(declare-fun c!118678 () Bool)

(assert (=> b!1207653 (= c!118678 (and ((_ is Cons!26705) (toList!8949 lt!547686)) (bvsgt (_1!9953 (h!27914 (toList!8949 lt!547686))) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!685876 () List!26709)

(declare-fun e!685874 () List!26709)

(assert (=> b!1207653 (= e!685876 e!685874)))

(declare-fun call!58999 () List!26709)

(declare-fun bm!58995 () Bool)

(declare-fun e!685878 () List!26709)

(declare-fun c!118679 () Bool)

(declare-fun $colon$colon!613 (List!26709 tuple2!19886) List!26709)

(assert (=> bm!58995 (= call!58999 ($colon$colon!613 e!685878 (ite c!118679 (h!27914 (toList!8949 lt!547686)) (tuple2!19887 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun c!118680 () Bool)

(assert (=> bm!58995 (= c!118680 c!118679)))

(declare-fun b!1207654 () Bool)

(declare-fun call!58998 () List!26709)

(assert (=> b!1207654 (= e!685874 call!58998)))

(declare-fun b!1207655 () Bool)

(declare-fun call!59000 () List!26709)

(assert (=> b!1207655 (= e!685876 call!59000)))

(declare-fun b!1207656 () Bool)

(assert (=> b!1207656 (= e!685874 call!58998)))

(declare-fun b!1207657 () Bool)

(declare-fun e!685875 () List!26709)

(assert (=> b!1207657 (= e!685875 e!685876)))

(declare-fun c!118681 () Bool)

(assert (=> b!1207657 (= c!118681 (and ((_ is Cons!26705) (toList!8949 lt!547686)) (= (_1!9953 (h!27914 (toList!8949 lt!547686))) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207658 () Bool)

(assert (=> b!1207658 (= e!685878 (insertStrictlySorted!406 (t!39661 (toList!8949 lt!547686)) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun d!133043 () Bool)

(assert (=> d!133043 e!685877))

(declare-fun res!802969 () Bool)

(assert (=> d!133043 (=> (not res!802969) (not e!685877))))

(assert (=> d!133043 (= res!802969 (isStrictlySorted!725 lt!547971))))

(assert (=> d!133043 (= lt!547971 e!685875)))

(assert (=> d!133043 (= c!118679 (and ((_ is Cons!26705) (toList!8949 lt!547686)) (bvslt (_1!9953 (h!27914 (toList!8949 lt!547686))) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133043 (isStrictlySorted!725 (toList!8949 lt!547686))))

(assert (=> d!133043 (= (insertStrictlySorted!406 (toList!8949 lt!547686) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547971)))

(declare-fun b!1207659 () Bool)

(assert (=> b!1207659 (= e!685878 (ite c!118681 (t!39661 (toList!8949 lt!547686)) (ite c!118678 (Cons!26705 (h!27914 (toList!8949 lt!547686)) (t!39661 (toList!8949 lt!547686))) Nil!26706)))))

(declare-fun bm!58996 () Bool)

(assert (=> bm!58996 (= call!58998 call!59000)))

(declare-fun b!1207660 () Bool)

(declare-fun res!802970 () Bool)

(assert (=> b!1207660 (=> (not res!802970) (not e!685877))))

(assert (=> b!1207660 (= res!802970 (containsKey!593 lt!547971 (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207661 () Bool)

(assert (=> b!1207661 (= e!685875 call!58999)))

(declare-fun bm!58997 () Bool)

(assert (=> bm!58997 (= call!59000 call!58999)))

(assert (= (and d!133043 c!118679) b!1207661))

(assert (= (and d!133043 (not c!118679)) b!1207657))

(assert (= (and b!1207657 c!118681) b!1207655))

(assert (= (and b!1207657 (not c!118681)) b!1207653))

(assert (= (and b!1207653 c!118678) b!1207656))

(assert (= (and b!1207653 (not c!118678)) b!1207654))

(assert (= (or b!1207656 b!1207654) bm!58996))

(assert (= (or b!1207655 bm!58996) bm!58997))

(assert (= (or b!1207661 bm!58997) bm!58995))

(assert (= (and bm!58995 c!118680) b!1207658))

(assert (= (and bm!58995 (not c!118680)) b!1207659))

(assert (= (and d!133043 res!802969) b!1207660))

(assert (= (and b!1207660 res!802970) b!1207652))

(declare-fun m!1113505 () Bool)

(assert (=> b!1207660 m!1113505))

(declare-fun m!1113507 () Bool)

(assert (=> bm!58995 m!1113507))

(declare-fun m!1113509 () Bool)

(assert (=> d!133043 m!1113509))

(declare-fun m!1113511 () Bool)

(assert (=> d!133043 m!1113511))

(declare-fun m!1113513 () Bool)

(assert (=> b!1207658 m!1113513))

(declare-fun m!1113515 () Bool)

(assert (=> b!1207652 m!1113515))

(assert (=> d!132899 d!133043))

(assert (=> b!1207448 d!132961))

(declare-fun d!133045 () Bool)

(declare-fun res!802971 () Bool)

(declare-fun e!685879 () Bool)

(assert (=> d!133045 (=> res!802971 e!685879)))

(assert (=> d!133045 (= res!802971 (and ((_ is Cons!26705) (toList!8949 (ite c!118558 lt!547686 call!58928))) (= (_1!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928)))) k0!934)))))

(assert (=> d!133045 (= (containsKey!593 (toList!8949 (ite c!118558 lt!547686 call!58928)) k0!934) e!685879)))

(declare-fun b!1207662 () Bool)

(declare-fun e!685880 () Bool)

(assert (=> b!1207662 (= e!685879 e!685880)))

(declare-fun res!802972 () Bool)

(assert (=> b!1207662 (=> (not res!802972) (not e!685880))))

(assert (=> b!1207662 (= res!802972 (and (or (not ((_ is Cons!26705) (toList!8949 (ite c!118558 lt!547686 call!58928)))) (bvsle (_1!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928)))) k0!934)) ((_ is Cons!26705) (toList!8949 (ite c!118558 lt!547686 call!58928))) (bvslt (_1!9953 (h!27914 (toList!8949 (ite c!118558 lt!547686 call!58928)))) k0!934)))))

(declare-fun b!1207663 () Bool)

(assert (=> b!1207663 (= e!685880 (containsKey!593 (t!39661 (toList!8949 (ite c!118558 lt!547686 call!58928))) k0!934))))

(assert (= (and d!133045 (not res!802971)) b!1207662))

(assert (= (and b!1207662 res!802972) b!1207663))

(declare-fun m!1113517 () Bool)

(assert (=> b!1207663 m!1113517))

(assert (=> d!132911 d!133045))

(declare-fun d!133047 () Bool)

(declare-fun lt!547972 () Bool)

(assert (=> d!133047 (= lt!547972 (select (content!549 Nil!26707) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun e!685881 () Bool)

(assert (=> d!133047 (= lt!547972 e!685881)))

(declare-fun res!802974 () Bool)

(assert (=> d!133047 (=> (not res!802974) (not e!685881))))

(assert (=> d!133047 (= res!802974 ((_ is Cons!26706) Nil!26707))))

(assert (=> d!133047 (= (contains!6955 Nil!26707 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)) lt!547972)))

(declare-fun b!1207664 () Bool)

(declare-fun e!685882 () Bool)

(assert (=> b!1207664 (= e!685881 e!685882)))

(declare-fun res!802973 () Bool)

(assert (=> b!1207664 (=> res!802973 e!685882)))

(assert (=> b!1207664 (= res!802973 (= (h!27915 Nil!26707) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1207665 () Bool)

(assert (=> b!1207665 (= e!685882 (contains!6955 (t!39662 Nil!26707) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133047 res!802974) b!1207664))

(assert (= (and b!1207664 (not res!802973)) b!1207665))

(assert (=> d!133047 m!1113285))

(assert (=> d!133047 m!1113115))

(declare-fun m!1113519 () Bool)

(assert (=> d!133047 m!1113519))

(assert (=> b!1207665 m!1113115))

(declare-fun m!1113521 () Bool)

(assert (=> b!1207665 m!1113521))

(assert (=> b!1207446 d!133047))

(declare-fun d!133049 () Bool)

(assert (=> d!133049 (= (isEmpty!990 lt!547796) (isEmpty!991 (toList!8949 lt!547796)))))

(declare-fun bs!34138 () Bool)

(assert (= bs!34138 d!133049))

(declare-fun m!1113523 () Bool)

(assert (=> bs!34138 m!1113523))

(assert (=> b!1207361 d!133049))

(declare-fun d!133051 () Bool)

(declare-fun e!685884 () Bool)

(assert (=> d!133051 e!685884))

(declare-fun res!802975 () Bool)

(assert (=> d!133051 (=> res!802975 e!685884)))

(declare-fun lt!547976 () Bool)

(assert (=> d!133051 (= res!802975 (not lt!547976))))

(declare-fun lt!547973 () Bool)

(assert (=> d!133051 (= lt!547976 lt!547973)))

(declare-fun lt!547974 () Unit!39940)

(declare-fun e!685883 () Unit!39940)

(assert (=> d!133051 (= lt!547974 e!685883)))

(declare-fun c!118682 () Bool)

(assert (=> d!133051 (= c!118682 lt!547973)))

(assert (=> d!133051 (= lt!547973 (containsKey!593 (toList!8949 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) k0!934))))

(assert (=> d!133051 (= (contains!6952 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) k0!934) lt!547976)))

(declare-fun b!1207666 () Bool)

(declare-fun lt!547975 () Unit!39940)

(assert (=> b!1207666 (= e!685883 lt!547975)))

(assert (=> b!1207666 (= lt!547975 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) k0!934))))

(assert (=> b!1207666 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) k0!934))))

(declare-fun b!1207667 () Bool)

(declare-fun Unit!39960 () Unit!39940)

(assert (=> b!1207667 (= e!685883 Unit!39960)))

(declare-fun b!1207668 () Bool)

(assert (=> b!1207668 (= e!685884 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) k0!934)))))

(assert (= (and d!133051 c!118682) b!1207666))

(assert (= (and d!133051 (not c!118682)) b!1207667))

(assert (= (and d!133051 (not res!802975)) b!1207668))

(declare-fun m!1113525 () Bool)

(assert (=> d!133051 m!1113525))

(declare-fun m!1113527 () Bool)

(assert (=> b!1207666 m!1113527))

(declare-fun m!1113529 () Bool)

(assert (=> b!1207666 m!1113529))

(assert (=> b!1207666 m!1113529))

(declare-fun m!1113531 () Bool)

(assert (=> b!1207666 m!1113531))

(assert (=> b!1207668 m!1113529))

(assert (=> b!1207668 m!1113529))

(assert (=> b!1207668 m!1113531))

(assert (=> d!132913 d!133051))

(declare-fun d!133053 () Bool)

(declare-fun e!685885 () Bool)

(assert (=> d!133053 e!685885))

(declare-fun res!802976 () Bool)

(assert (=> d!133053 (=> (not res!802976) (not e!685885))))

(declare-fun lt!547979 () ListLongMap!17867)

(assert (=> d!133053 (= res!802976 (contains!6952 lt!547979 (_1!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))))))

(declare-fun lt!547977 () List!26709)

(assert (=> d!133053 (= lt!547979 (ListLongMap!17868 lt!547977))))

(declare-fun lt!547978 () Unit!39940)

(declare-fun lt!547980 () Unit!39940)

(assert (=> d!133053 (= lt!547978 lt!547980)))

(assert (=> d!133053 (= (getValueByKey!639 lt!547977 (_1!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) (Some!689 (_2!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))))))

(assert (=> d!133053 (= lt!547980 (lemmaContainsTupThenGetReturnValue!314 lt!547977 (_1!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) (_2!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))))))

(assert (=> d!133053 (= lt!547977 (insertStrictlySorted!406 (toList!8949 lt!547694) (_1!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) (_2!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))))))

(assert (=> d!133053 (= (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) lt!547979)))

(declare-fun b!1207669 () Bool)

(declare-fun res!802977 () Bool)

(assert (=> b!1207669 (=> (not res!802977) (not e!685885))))

(assert (=> b!1207669 (= res!802977 (= (getValueByKey!639 (toList!8949 lt!547979) (_1!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944)))) (Some!689 (_2!9953 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))))))))

(declare-fun b!1207670 () Bool)

(assert (=> b!1207670 (= e!685885 (contains!6954 (toList!8949 lt!547979) (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))))))

(assert (= (and d!133053 res!802976) b!1207669))

(assert (= (and b!1207669 res!802977) b!1207670))

(declare-fun m!1113533 () Bool)

(assert (=> d!133053 m!1113533))

(declare-fun m!1113535 () Bool)

(assert (=> d!133053 m!1113535))

(declare-fun m!1113537 () Bool)

(assert (=> d!133053 m!1113537))

(declare-fun m!1113539 () Bool)

(assert (=> d!133053 m!1113539))

(declare-fun m!1113541 () Bool)

(assert (=> b!1207669 m!1113541))

(declare-fun m!1113543 () Bool)

(assert (=> b!1207670 m!1113543))

(assert (=> d!132913 d!133053))

(declare-fun d!133055 () Bool)

(assert (=> d!133055 (contains!6952 (+!3978 lt!547694 (tuple2!19887 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944))) k0!934)))

(assert (=> d!133055 true))

(declare-fun _$35!459 () Unit!39940)

(assert (=> d!133055 (= (choose!1808 lt!547694 (ite (or c!118558 c!118560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118558 c!118560) zeroValue!944 minValue!944) k0!934) _$35!459)))

(declare-fun bs!34139 () Bool)

(assert (= bs!34139 d!133055))

(assert (=> bs!34139 m!1113093))

(assert (=> bs!34139 m!1113093))

(assert (=> bs!34139 m!1113095))

(assert (=> d!132913 d!133055))

(assert (=> d!132913 d!132921))

(declare-fun d!133057 () Bool)

(assert (=> d!133057 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547694) k0!934))))

(declare-fun lt!547981 () Unit!39940)

(assert (=> d!133057 (= lt!547981 (choose!1812 (toList!8949 lt!547694) k0!934))))

(declare-fun e!685886 () Bool)

(assert (=> d!133057 e!685886))

(declare-fun res!802978 () Bool)

(assert (=> d!133057 (=> (not res!802978) (not e!685886))))

(assert (=> d!133057 (= res!802978 (isStrictlySorted!725 (toList!8949 lt!547694)))))

(assert (=> d!133057 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547694) k0!934) lt!547981)))

(declare-fun b!1207671 () Bool)

(assert (=> b!1207671 (= e!685886 (containsKey!593 (toList!8949 lt!547694) k0!934))))

(assert (= (and d!133057 res!802978) b!1207671))

(assert (=> d!133057 m!1113109))

(assert (=> d!133057 m!1113109))

(assert (=> d!133057 m!1113111))

(declare-fun m!1113545 () Bool)

(assert (=> d!133057 m!1113545))

(declare-fun m!1113547 () Bool)

(assert (=> d!133057 m!1113547))

(assert (=> b!1207671 m!1113105))

(assert (=> b!1207421 d!133057))

(declare-fun d!133059 () Bool)

(assert (=> d!133059 (= (isDefined!462 (getValueByKey!639 (toList!8949 lt!547694) k0!934)) (not (isEmpty!992 (getValueByKey!639 (toList!8949 lt!547694) k0!934))))))

(declare-fun bs!34140 () Bool)

(assert (= bs!34140 d!133059))

(assert (=> bs!34140 m!1113109))

(declare-fun m!1113549 () Bool)

(assert (=> bs!34140 m!1113549))

(assert (=> b!1207421 d!133059))

(declare-fun b!1207675 () Bool)

(declare-fun e!685888 () Option!690)

(assert (=> b!1207675 (= e!685888 None!688)))

(declare-fun b!1207673 () Bool)

(declare-fun e!685887 () Option!690)

(assert (=> b!1207673 (= e!685887 e!685888)))

(declare-fun c!118684 () Bool)

(assert (=> b!1207673 (= c!118684 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (not (= (_1!9953 (h!27914 (toList!8949 lt!547694))) k0!934))))))

(declare-fun b!1207674 () Bool)

(assert (=> b!1207674 (= e!685888 (getValueByKey!639 (t!39661 (toList!8949 lt!547694)) k0!934))))

(declare-fun d!133061 () Bool)

(declare-fun c!118683 () Bool)

(assert (=> d!133061 (= c!118683 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (= (_1!9953 (h!27914 (toList!8949 lt!547694))) k0!934)))))

(assert (=> d!133061 (= (getValueByKey!639 (toList!8949 lt!547694) k0!934) e!685887)))

(declare-fun b!1207672 () Bool)

(assert (=> b!1207672 (= e!685887 (Some!689 (_2!9953 (h!27914 (toList!8949 lt!547694)))))))

(assert (= (and d!133061 c!118683) b!1207672))

(assert (= (and d!133061 (not c!118683)) b!1207673))

(assert (= (and b!1207673 c!118684) b!1207674))

(assert (= (and b!1207673 (not c!118684)) b!1207675))

(declare-fun m!1113551 () Bool)

(assert (=> b!1207674 m!1113551))

(assert (=> b!1207421 d!133061))

(assert (=> b!1207441 d!132967))

(assert (=> bm!58959 d!132963))

(declare-fun d!133063 () Bool)

(declare-fun e!685890 () Bool)

(assert (=> d!133063 e!685890))

(declare-fun res!802979 () Bool)

(assert (=> d!133063 (=> res!802979 e!685890)))

(declare-fun lt!547985 () Bool)

(assert (=> d!133063 (= res!802979 (not lt!547985))))

(declare-fun lt!547982 () Bool)

(assert (=> d!133063 (= lt!547985 lt!547982)))

(declare-fun lt!547983 () Unit!39940)

(declare-fun e!685889 () Unit!39940)

(assert (=> d!133063 (= lt!547983 e!685889)))

(declare-fun c!118685 () Bool)

(assert (=> d!133063 (= c!118685 lt!547982)))

(assert (=> d!133063 (= lt!547982 (containsKey!593 (toList!8949 lt!547782) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133063 (= (contains!6952 lt!547782 #b1000000000000000000000000000000000000000000000000000000000000000) lt!547985)))

(declare-fun b!1207676 () Bool)

(declare-fun lt!547984 () Unit!39940)

(assert (=> b!1207676 (= e!685889 lt!547984)))

(assert (=> b!1207676 (= lt!547984 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547782) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207676 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207677 () Bool)

(declare-fun Unit!39961 () Unit!39940)

(assert (=> b!1207677 (= e!685889 Unit!39961)))

(declare-fun b!1207678 () Bool)

(assert (=> b!1207678 (= e!685890 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133063 c!118685) b!1207676))

(assert (= (and d!133063 (not c!118685)) b!1207677))

(assert (= (and d!133063 (not res!802979)) b!1207678))

(declare-fun m!1113553 () Bool)

(assert (=> d!133063 m!1113553))

(declare-fun m!1113555 () Bool)

(assert (=> b!1207676 m!1113555))

(declare-fun m!1113557 () Bool)

(assert (=> b!1207676 m!1113557))

(assert (=> b!1207676 m!1113557))

(declare-fun m!1113559 () Bool)

(assert (=> b!1207676 m!1113559))

(assert (=> b!1207678 m!1113557))

(assert (=> b!1207678 m!1113557))

(assert (=> b!1207678 m!1113559))

(assert (=> b!1207332 d!133063))

(declare-fun d!133065 () Bool)

(declare-fun lt!547986 () Bool)

(assert (=> d!133065 (= lt!547986 (select (content!549 Nil!26707) (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun e!685891 () Bool)

(assert (=> d!133065 (= lt!547986 e!685891)))

(declare-fun res!802981 () Bool)

(assert (=> d!133065 (=> (not res!802981) (not e!685891))))

(assert (=> d!133065 (= res!802981 ((_ is Cons!26706) Nil!26707))))

(assert (=> d!133065 (= (contains!6955 Nil!26707 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)) lt!547986)))

(declare-fun b!1207679 () Bool)

(declare-fun e!685892 () Bool)

(assert (=> b!1207679 (= e!685891 e!685892)))

(declare-fun res!802980 () Bool)

(assert (=> b!1207679 (=> res!802980 e!685892)))

(assert (=> b!1207679 (= res!802980 (= (h!27915 Nil!26707) (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun b!1207680 () Bool)

(assert (=> b!1207680 (= e!685892 (contains!6955 (t!39662 Nil!26707) (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(assert (= (and d!133065 res!802981) b!1207679))

(assert (= (and b!1207679 (not res!802980)) b!1207680))

(assert (=> d!133065 m!1113285))

(assert (=> d!133065 m!1113067))

(declare-fun m!1113561 () Bool)

(assert (=> d!133065 m!1113561))

(assert (=> b!1207680 m!1113067))

(declare-fun m!1113563 () Bool)

(assert (=> b!1207680 m!1113563))

(assert (=> b!1207439 d!133065))

(assert (=> b!1207354 d!132981))

(declare-fun b!1207681 () Bool)

(declare-fun e!685895 () Bool)

(declare-fun e!685894 () Bool)

(assert (=> b!1207681 (= e!685895 e!685894)))

(declare-fun c!118686 () Bool)

(assert (=> b!1207681 (= c!118686 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!59001 () Bool)

(declare-fun bm!58998 () Bool)

(assert (=> bm!58998 (= call!59001 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!118686 (Cons!26706 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!118620 (Cons!26706 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) Nil!26707) Nil!26707)) (ite c!118620 (Cons!26706 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) Nil!26707) Nil!26707))))))

(declare-fun d!133067 () Bool)

(declare-fun res!802983 () Bool)

(declare-fun e!685896 () Bool)

(assert (=> d!133067 (=> res!802983 e!685896)))

(assert (=> d!133067 (= res!802983 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> d!133067 (= (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118620 (Cons!26706 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) Nil!26707) Nil!26707)) e!685896)))

(declare-fun b!1207682 () Bool)

(assert (=> b!1207682 (= e!685894 call!59001)))

(declare-fun b!1207683 () Bool)

(declare-fun e!685893 () Bool)

(assert (=> b!1207683 (= e!685893 (contains!6955 (ite c!118620 (Cons!26706 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) Nil!26707) Nil!26707) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1207684 () Bool)

(assert (=> b!1207684 (= e!685894 call!59001)))

(declare-fun b!1207685 () Bool)

(assert (=> b!1207685 (= e!685896 e!685895)))

(declare-fun res!802984 () Bool)

(assert (=> b!1207685 (=> (not res!802984) (not e!685895))))

(assert (=> b!1207685 (= res!802984 (not e!685893))))

(declare-fun res!802982 () Bool)

(assert (=> b!1207685 (=> (not res!802982) (not e!685893))))

(assert (=> b!1207685 (= res!802982 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!133067 (not res!802983)) b!1207685))

(assert (= (and b!1207685 res!802982) b!1207683))

(assert (= (and b!1207685 res!802984) b!1207681))

(assert (= (and b!1207681 c!118686) b!1207682))

(assert (= (and b!1207681 (not c!118686)) b!1207684))

(assert (= (or b!1207682 b!1207684) bm!58998))

(declare-fun m!1113565 () Bool)

(assert (=> b!1207681 m!1113565))

(assert (=> b!1207681 m!1113565))

(declare-fun m!1113567 () Bool)

(assert (=> b!1207681 m!1113567))

(assert (=> bm!58998 m!1113565))

(declare-fun m!1113569 () Bool)

(assert (=> bm!58998 m!1113569))

(assert (=> b!1207683 m!1113565))

(assert (=> b!1207683 m!1113565))

(declare-fun m!1113571 () Bool)

(assert (=> b!1207683 m!1113571))

(assert (=> b!1207685 m!1113565))

(assert (=> b!1207685 m!1113565))

(assert (=> b!1207685 m!1113567))

(assert (=> bm!58977 d!133067))

(assert (=> b!1207352 d!132947))

(declare-fun b!1207686 () Bool)

(declare-fun e!685899 () Bool)

(declare-fun e!685898 () Bool)

(assert (=> b!1207686 (= e!685899 e!685898)))

(declare-fun c!118687 () Bool)

(assert (=> b!1207686 (= c!118687 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!59002 () Bool)

(declare-fun bm!58999 () Bool)

(assert (=> bm!58999 (= call!59002 (arrayNoDuplicates!0 lt!547687 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!118687 (Cons!26706 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!118619 (Cons!26706 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) Nil!26707) Nil!26707)) (ite c!118619 (Cons!26706 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) Nil!26707) Nil!26707))))))

(declare-fun d!133069 () Bool)

(declare-fun res!802986 () Bool)

(declare-fun e!685900 () Bool)

(assert (=> d!133069 (=> res!802986 e!685900)))

(assert (=> d!133069 (= res!802986 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> d!133069 (= (arrayNoDuplicates!0 lt!547687 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118619 (Cons!26706 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) Nil!26707) Nil!26707)) e!685900)))

(declare-fun b!1207687 () Bool)

(assert (=> b!1207687 (= e!685898 call!59002)))

(declare-fun b!1207688 () Bool)

(declare-fun e!685897 () Bool)

(assert (=> b!1207688 (= e!685897 (contains!6955 (ite c!118619 (Cons!26706 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) Nil!26707) Nil!26707) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1207689 () Bool)

(assert (=> b!1207689 (= e!685898 call!59002)))

(declare-fun b!1207690 () Bool)

(assert (=> b!1207690 (= e!685900 e!685899)))

(declare-fun res!802987 () Bool)

(assert (=> b!1207690 (=> (not res!802987) (not e!685899))))

(assert (=> b!1207690 (= res!802987 (not e!685897))))

(declare-fun res!802985 () Bool)

(assert (=> b!1207690 (=> (not res!802985) (not e!685897))))

(assert (=> b!1207690 (= res!802985 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!133069 (not res!802986)) b!1207690))

(assert (= (and b!1207690 res!802985) b!1207688))

(assert (= (and b!1207690 res!802987) b!1207686))

(assert (= (and b!1207686 c!118687) b!1207687))

(assert (= (and b!1207686 (not c!118687)) b!1207689))

(assert (= (or b!1207687 b!1207689) bm!58999))

(declare-fun m!1113573 () Bool)

(assert (=> b!1207686 m!1113573))

(assert (=> b!1207686 m!1113573))

(declare-fun m!1113575 () Bool)

(assert (=> b!1207686 m!1113575))

(assert (=> bm!58999 m!1113573))

(declare-fun m!1113577 () Bool)

(assert (=> bm!58999 m!1113577))

(assert (=> b!1207688 m!1113573))

(assert (=> b!1207688 m!1113573))

(declare-fun m!1113579 () Bool)

(assert (=> b!1207688 m!1113579))

(assert (=> b!1207690 m!1113573))

(assert (=> b!1207690 m!1113573))

(assert (=> b!1207690 m!1113575))

(assert (=> bm!58976 d!133069))

(declare-fun d!133071 () Bool)

(assert (=> d!133071 (= (apply!1000 lt!547775 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19248 (getValueByKey!639 (toList!8949 lt!547775) (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!34141 () Bool)

(assert (= bs!34141 d!133071))

(assert (=> bs!34141 m!1112937))

(assert (=> bs!34141 m!1113279))

(assert (=> bs!34141 m!1113279))

(declare-fun m!1113581 () Bool)

(assert (=> bs!34141 m!1113581))

(assert (=> b!1207327 d!133071))

(assert (=> b!1207327 d!133013))

(declare-fun d!133073 () Bool)

(declare-fun e!685902 () Bool)

(assert (=> d!133073 e!685902))

(declare-fun res!802988 () Bool)

(assert (=> d!133073 (=> res!802988 e!685902)))

(declare-fun lt!547990 () Bool)

(assert (=> d!133073 (= res!802988 (not lt!547990))))

(declare-fun lt!547987 () Bool)

(assert (=> d!133073 (= lt!547990 lt!547987)))

(declare-fun lt!547988 () Unit!39940)

(declare-fun e!685901 () Unit!39940)

(assert (=> d!133073 (= lt!547988 e!685901)))

(declare-fun c!118688 () Bool)

(assert (=> d!133073 (= c!118688 lt!547987)))

(assert (=> d!133073 (= lt!547987 (containsKey!593 (toList!8949 lt!547782) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133073 (= (contains!6952 lt!547782 #b0000000000000000000000000000000000000000000000000000000000000000) lt!547990)))

(declare-fun b!1207691 () Bool)

(declare-fun lt!547989 () Unit!39940)

(assert (=> b!1207691 (= e!685901 lt!547989)))

(assert (=> b!1207691 (= lt!547989 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547782) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207691 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207692 () Bool)

(declare-fun Unit!39962 () Unit!39940)

(assert (=> b!1207692 (= e!685901 Unit!39962)))

(declare-fun b!1207693 () Bool)

(assert (=> b!1207693 (= e!685902 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133073 c!118688) b!1207691))

(assert (= (and d!133073 (not c!118688)) b!1207692))

(assert (= (and d!133073 (not res!802988)) b!1207693))

(declare-fun m!1113583 () Bool)

(assert (=> d!133073 m!1113583))

(declare-fun m!1113585 () Bool)

(assert (=> b!1207691 m!1113585))

(declare-fun m!1113587 () Bool)

(assert (=> b!1207691 m!1113587))

(assert (=> b!1207691 m!1113587))

(declare-fun m!1113589 () Bool)

(assert (=> b!1207691 m!1113589))

(assert (=> b!1207693 m!1113587))

(assert (=> b!1207693 m!1113587))

(assert (=> b!1207693 m!1113589))

(assert (=> d!132889 d!133073))

(assert (=> d!132889 d!132917))

(declare-fun d!133075 () Bool)

(declare-fun c!118689 () Bool)

(assert (=> d!133075 (= c!118689 ((_ is ValueCellFull!14625) (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!685903 () V!46019)

(assert (=> d!133075 (= (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!685903)))

(declare-fun b!1207694 () Bool)

(assert (=> b!1207694 (= e!685903 (get!19246 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1207695 () Bool)

(assert (=> b!1207695 (= e!685903 (get!19247 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133075 c!118689) b!1207694))

(assert (= (and d!133075 (not c!118689)) b!1207695))

(assert (=> b!1207694 m!1113015))

(assert (=> b!1207694 m!1112787))

(declare-fun m!1113591 () Bool)

(assert (=> b!1207694 m!1113591))

(assert (=> b!1207695 m!1113015))

(assert (=> b!1207695 m!1112787))

(declare-fun m!1113593 () Bool)

(assert (=> b!1207695 m!1113593))

(assert (=> b!1207355 d!133075))

(declare-fun d!133077 () Bool)

(assert (=> d!133077 (not (contains!6952 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799)) lt!547797))))

(declare-fun lt!547991 () Unit!39940)

(assert (=> d!133077 (= lt!547991 (choose!1811 lt!547795 lt!547794 lt!547799 lt!547797))))

(declare-fun e!685904 () Bool)

(assert (=> d!133077 e!685904))

(declare-fun res!802989 () Bool)

(assert (=> d!133077 (=> (not res!802989) (not e!685904))))

(assert (=> d!133077 (= res!802989 (not (contains!6952 lt!547795 lt!547797)))))

(assert (=> d!133077 (= (addStillNotContains!295 lt!547795 lt!547794 lt!547799 lt!547797) lt!547991)))

(declare-fun b!1207696 () Bool)

(assert (=> b!1207696 (= e!685904 (not (= lt!547794 lt!547797)))))

(assert (= (and d!133077 res!802989) b!1207696))

(assert (=> d!133077 m!1113021))

(assert (=> d!133077 m!1113021))

(assert (=> d!133077 m!1113023))

(declare-fun m!1113595 () Bool)

(assert (=> d!133077 m!1113595))

(declare-fun m!1113597 () Bool)

(assert (=> d!133077 m!1113597))

(assert (=> b!1207355 d!133077))

(declare-fun d!133079 () Bool)

(declare-fun e!685906 () Bool)

(assert (=> d!133079 e!685906))

(declare-fun res!802990 () Bool)

(assert (=> d!133079 (=> res!802990 e!685906)))

(declare-fun lt!547995 () Bool)

(assert (=> d!133079 (= res!802990 (not lt!547995))))

(declare-fun lt!547992 () Bool)

(assert (=> d!133079 (= lt!547995 lt!547992)))

(declare-fun lt!547993 () Unit!39940)

(declare-fun e!685905 () Unit!39940)

(assert (=> d!133079 (= lt!547993 e!685905)))

(declare-fun c!118690 () Bool)

(assert (=> d!133079 (= c!118690 lt!547992)))

(assert (=> d!133079 (= lt!547992 (containsKey!593 (toList!8949 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799))) lt!547797))))

(assert (=> d!133079 (= (contains!6952 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799)) lt!547797) lt!547995)))

(declare-fun b!1207697 () Bool)

(declare-fun lt!547994 () Unit!39940)

(assert (=> b!1207697 (= e!685905 lt!547994)))

(assert (=> b!1207697 (= lt!547994 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799))) lt!547797))))

(assert (=> b!1207697 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799))) lt!547797))))

(declare-fun b!1207698 () Bool)

(declare-fun Unit!39963 () Unit!39940)

(assert (=> b!1207698 (= e!685905 Unit!39963)))

(declare-fun b!1207699 () Bool)

(assert (=> b!1207699 (= e!685906 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799))) lt!547797)))))

(assert (= (and d!133079 c!118690) b!1207697))

(assert (= (and d!133079 (not c!118690)) b!1207698))

(assert (= (and d!133079 (not res!802990)) b!1207699))

(declare-fun m!1113599 () Bool)

(assert (=> d!133079 m!1113599))

(declare-fun m!1113601 () Bool)

(assert (=> b!1207697 m!1113601))

(declare-fun m!1113603 () Bool)

(assert (=> b!1207697 m!1113603))

(assert (=> b!1207697 m!1113603))

(declare-fun m!1113605 () Bool)

(assert (=> b!1207697 m!1113605))

(assert (=> b!1207699 m!1113603))

(assert (=> b!1207699 m!1113603))

(assert (=> b!1207699 m!1113605))

(assert (=> b!1207355 d!133079))

(declare-fun d!133081 () Bool)

(declare-fun e!685907 () Bool)

(assert (=> d!133081 e!685907))

(declare-fun res!802991 () Bool)

(assert (=> d!133081 (=> (not res!802991) (not e!685907))))

(declare-fun lt!547998 () ListLongMap!17867)

(assert (=> d!133081 (= res!802991 (contains!6952 lt!547998 (_1!9953 (tuple2!19887 lt!547794 lt!547799))))))

(declare-fun lt!547996 () List!26709)

(assert (=> d!133081 (= lt!547998 (ListLongMap!17868 lt!547996))))

(declare-fun lt!547997 () Unit!39940)

(declare-fun lt!547999 () Unit!39940)

(assert (=> d!133081 (= lt!547997 lt!547999)))

(assert (=> d!133081 (= (getValueByKey!639 lt!547996 (_1!9953 (tuple2!19887 lt!547794 lt!547799))) (Some!689 (_2!9953 (tuple2!19887 lt!547794 lt!547799))))))

(assert (=> d!133081 (= lt!547999 (lemmaContainsTupThenGetReturnValue!314 lt!547996 (_1!9953 (tuple2!19887 lt!547794 lt!547799)) (_2!9953 (tuple2!19887 lt!547794 lt!547799))))))

(assert (=> d!133081 (= lt!547996 (insertStrictlySorted!406 (toList!8949 lt!547795) (_1!9953 (tuple2!19887 lt!547794 lt!547799)) (_2!9953 (tuple2!19887 lt!547794 lt!547799))))))

(assert (=> d!133081 (= (+!3978 lt!547795 (tuple2!19887 lt!547794 lt!547799)) lt!547998)))

(declare-fun b!1207700 () Bool)

(declare-fun res!802992 () Bool)

(assert (=> b!1207700 (=> (not res!802992) (not e!685907))))

(assert (=> b!1207700 (= res!802992 (= (getValueByKey!639 (toList!8949 lt!547998) (_1!9953 (tuple2!19887 lt!547794 lt!547799))) (Some!689 (_2!9953 (tuple2!19887 lt!547794 lt!547799)))))))

(declare-fun b!1207701 () Bool)

(assert (=> b!1207701 (= e!685907 (contains!6954 (toList!8949 lt!547998) (tuple2!19887 lt!547794 lt!547799)))))

(assert (= (and d!133081 res!802991) b!1207700))

(assert (= (and b!1207700 res!802992) b!1207701))

(declare-fun m!1113607 () Bool)

(assert (=> d!133081 m!1113607))

(declare-fun m!1113609 () Bool)

(assert (=> d!133081 m!1113609))

(declare-fun m!1113611 () Bool)

(assert (=> d!133081 m!1113611))

(declare-fun m!1113613 () Bool)

(assert (=> d!133081 m!1113613))

(declare-fun m!1113615 () Bool)

(assert (=> b!1207700 m!1113615))

(declare-fun m!1113617 () Bool)

(assert (=> b!1207701 m!1113617))

(assert (=> b!1207355 d!133081))

(declare-fun d!133083 () Bool)

(declare-fun e!685908 () Bool)

(assert (=> d!133083 e!685908))

(declare-fun res!802993 () Bool)

(assert (=> d!133083 (=> (not res!802993) (not e!685908))))

(declare-fun lt!548002 () ListLongMap!17867)

(assert (=> d!133083 (= res!802993 (contains!6952 lt!548002 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!548000 () List!26709)

(assert (=> d!133083 (= lt!548002 (ListLongMap!17868 lt!548000))))

(declare-fun lt!548001 () Unit!39940)

(declare-fun lt!548003 () Unit!39940)

(assert (=> d!133083 (= lt!548001 lt!548003)))

(assert (=> d!133083 (= (getValueByKey!639 lt!548000 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133083 (= lt!548003 (lemmaContainsTupThenGetReturnValue!314 lt!548000 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133083 (= lt!548000 (insertStrictlySorted!406 (toList!8949 call!58965) (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133083 (= (+!3978 call!58965 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!548002)))

(declare-fun b!1207702 () Bool)

(declare-fun res!802994 () Bool)

(assert (=> b!1207702 (=> (not res!802994) (not e!685908))))

(assert (=> b!1207702 (= res!802994 (= (getValueByKey!639 (toList!8949 lt!548002) (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1207703 () Bool)

(assert (=> b!1207703 (= e!685908 (contains!6954 (toList!8949 lt!548002) (tuple2!19887 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19245 (select (arr!37684 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133083 res!802993) b!1207702))

(assert (= (and b!1207702 res!802994) b!1207703))

(declare-fun m!1113619 () Bool)

(assert (=> d!133083 m!1113619))

(declare-fun m!1113621 () Bool)

(assert (=> d!133083 m!1113621))

(declare-fun m!1113623 () Bool)

(assert (=> d!133083 m!1113623))

(declare-fun m!1113625 () Bool)

(assert (=> d!133083 m!1113625))

(declare-fun m!1113627 () Bool)

(assert (=> b!1207702 m!1113627))

(declare-fun m!1113629 () Bool)

(assert (=> b!1207703 m!1113629))

(assert (=> b!1207355 d!133083))

(assert (=> b!1207350 d!132981))

(declare-fun b!1207707 () Bool)

(declare-fun e!685910 () Option!690)

(assert (=> b!1207707 (= e!685910 None!688)))

(declare-fun b!1207705 () Bool)

(declare-fun e!685909 () Option!690)

(assert (=> b!1207705 (= e!685909 e!685910)))

(declare-fun c!118692 () Bool)

(assert (=> b!1207705 (= c!118692 (and ((_ is Cons!26705) (toList!8949 lt!547756)) (not (= (_1!9953 (h!27914 (toList!8949 lt!547756))) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1207706 () Bool)

(assert (=> b!1207706 (= e!685910 (getValueByKey!639 (t!39661 (toList!8949 lt!547756)) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun c!118691 () Bool)

(declare-fun d!133085 () Bool)

(assert (=> d!133085 (= c!118691 (and ((_ is Cons!26705) (toList!8949 lt!547756)) (= (_1!9953 (h!27914 (toList!8949 lt!547756))) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!133085 (= (getValueByKey!639 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) e!685909)))

(declare-fun b!1207704 () Bool)

(assert (=> b!1207704 (= e!685909 (Some!689 (_2!9953 (h!27914 (toList!8949 lt!547756)))))))

(assert (= (and d!133085 c!118691) b!1207704))

(assert (= (and d!133085 (not c!118691)) b!1207705))

(assert (= (and b!1207705 c!118692) b!1207706))

(assert (= (and b!1207705 (not c!118692)) b!1207707))

(declare-fun m!1113631 () Bool)

(assert (=> b!1207706 m!1113631))

(assert (=> b!1207293 d!133085))

(declare-fun d!133087 () Bool)

(assert (=> d!133087 (= (isEmpty!990 lt!547775) (isEmpty!991 (toList!8949 lt!547775)))))

(declare-fun bs!34142 () Bool)

(assert (= bs!34142 d!133087))

(declare-fun m!1113633 () Bool)

(assert (=> bs!34142 m!1113633))

(assert (=> b!1207325 d!133087))

(declare-fun d!133089 () Bool)

(declare-fun e!685912 () Bool)

(assert (=> d!133089 e!685912))

(declare-fun res!802995 () Bool)

(assert (=> d!133089 (=> res!802995 e!685912)))

(declare-fun lt!548007 () Bool)

(assert (=> d!133089 (= res!802995 (not lt!548007))))

(declare-fun lt!548004 () Bool)

(assert (=> d!133089 (= lt!548007 lt!548004)))

(declare-fun lt!548005 () Unit!39940)

(declare-fun e!685911 () Unit!39940)

(assert (=> d!133089 (= lt!548005 e!685911)))

(declare-fun c!118693 () Bool)

(assert (=> d!133089 (= c!118693 lt!548004)))

(assert (=> d!133089 (= lt!548004 (containsKey!593 (toList!8949 lt!547789) (select (arr!37683 _keys!1208) from!1455)))))

(assert (=> d!133089 (= (contains!6952 lt!547789 (select (arr!37683 _keys!1208) from!1455)) lt!548007)))

(declare-fun b!1207708 () Bool)

(declare-fun lt!548006 () Unit!39940)

(assert (=> b!1207708 (= e!685911 lt!548006)))

(assert (=> b!1207708 (= lt!548006 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547789) (select (arr!37683 _keys!1208) from!1455)))))

(assert (=> b!1207708 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) (select (arr!37683 _keys!1208) from!1455)))))

(declare-fun b!1207709 () Bool)

(declare-fun Unit!39964 () Unit!39940)

(assert (=> b!1207709 (= e!685911 Unit!39964)))

(declare-fun b!1207710 () Bool)

(assert (=> b!1207710 (= e!685912 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547789) (select (arr!37683 _keys!1208) from!1455))))))

(assert (= (and d!133089 c!118693) b!1207708))

(assert (= (and d!133089 (not c!118693)) b!1207709))

(assert (= (and d!133089 (not res!802995)) b!1207710))

(assert (=> d!133089 m!1112807))

(declare-fun m!1113635 () Bool)

(assert (=> d!133089 m!1113635))

(assert (=> b!1207708 m!1112807))

(declare-fun m!1113637 () Bool)

(assert (=> b!1207708 m!1113637))

(assert (=> b!1207708 m!1112807))

(assert (=> b!1207708 m!1113267))

(assert (=> b!1207708 m!1113267))

(declare-fun m!1113639 () Bool)

(assert (=> b!1207708 m!1113639))

(assert (=> b!1207710 m!1112807))

(assert (=> b!1207710 m!1113267))

(assert (=> b!1207710 m!1113267))

(assert (=> b!1207710 m!1113639))

(assert (=> b!1207348 d!133089))

(declare-fun d!133091 () Bool)

(declare-fun e!685915 () Bool)

(assert (=> d!133091 e!685915))

(declare-fun c!118696 () Bool)

(assert (=> d!133091 (= c!118696 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!133091 true))

(declare-fun _$29!189 () Unit!39940)

(assert (=> d!133091 (= (choose!1809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) _$29!189)))

(declare-fun b!1207715 () Bool)

(assert (=> b!1207715 (= e!685915 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207716 () Bool)

(assert (=> b!1207716 (= e!685915 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!133091 c!118696) b!1207715))

(assert (= (and d!133091 (not c!118696)) b!1207716))

(assert (=> b!1207715 m!1112799))

(assert (=> d!132909 d!133091))

(assert (=> d!132909 d!132917))

(declare-fun d!133093 () Bool)

(declare-fun res!802996 () Bool)

(declare-fun e!685916 () Bool)

(assert (=> d!133093 (=> res!802996 e!685916)))

(assert (=> d!133093 (= res!802996 (= (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!934))))

(assert (=> d!133093 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!685916)))

(declare-fun b!1207717 () Bool)

(declare-fun e!685917 () Bool)

(assert (=> b!1207717 (= e!685916 e!685917)))

(declare-fun res!802997 () Bool)

(assert (=> b!1207717 (=> (not res!802997) (not e!685917))))

(assert (=> b!1207717 (= res!802997 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207718 () Bool)

(assert (=> b!1207718 (= e!685917 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!133093 (not res!802996)) b!1207717))

(assert (= (and b!1207717 res!802997) b!1207718))

(assert (=> d!133093 m!1113565))

(declare-fun m!1113641 () Bool)

(assert (=> b!1207718 m!1113641))

(assert (=> b!1207443 d!133093))

(declare-fun d!133095 () Bool)

(declare-fun e!685919 () Bool)

(assert (=> d!133095 e!685919))

(declare-fun res!802998 () Bool)

(assert (=> d!133095 (=> res!802998 e!685919)))

(declare-fun lt!548011 () Bool)

(assert (=> d!133095 (= res!802998 (not lt!548011))))

(declare-fun lt!548008 () Bool)

(assert (=> d!133095 (= lt!548011 lt!548008)))

(declare-fun lt!548009 () Unit!39940)

(declare-fun e!685918 () Unit!39940)

(assert (=> d!133095 (= lt!548009 e!685918)))

(declare-fun c!118697 () Bool)

(assert (=> d!133095 (= c!118697 lt!548008)))

(assert (=> d!133095 (= lt!548008 (containsKey!593 (toList!8949 lt!547775) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!133095 (= (contains!6952 lt!547775 #b1000000000000000000000000000000000000000000000000000000000000000) lt!548011)))

(declare-fun b!1207719 () Bool)

(declare-fun lt!548010 () Unit!39940)

(assert (=> b!1207719 (= e!685918 lt!548010)))

(assert (=> b!1207719 (= lt!548010 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547775) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1207719 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1207720 () Bool)

(declare-fun Unit!39965 () Unit!39940)

(assert (=> b!1207720 (= e!685918 Unit!39965)))

(declare-fun b!1207721 () Bool)

(assert (=> b!1207721 (= e!685919 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547775) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!133095 c!118697) b!1207719))

(assert (= (and d!133095 (not c!118697)) b!1207720))

(assert (= (and d!133095 (not res!802998)) b!1207721))

(declare-fun m!1113643 () Bool)

(assert (=> d!133095 m!1113643))

(declare-fun m!1113645 () Bool)

(assert (=> b!1207719 m!1113645))

(declare-fun m!1113647 () Bool)

(assert (=> b!1207719 m!1113647))

(assert (=> b!1207719 m!1113647))

(declare-fun m!1113649 () Bool)

(assert (=> b!1207719 m!1113649))

(assert (=> b!1207721 m!1113647))

(assert (=> b!1207721 m!1113647))

(assert (=> b!1207721 m!1113649))

(assert (=> b!1207320 d!133095))

(declare-fun b!1207722 () Bool)

(declare-fun e!685922 () Bool)

(declare-fun e!685921 () Bool)

(assert (=> b!1207722 (= e!685922 e!685921)))

(declare-fun c!118698 () Bool)

(assert (=> b!1207722 (= c!118698 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun call!59003 () Bool)

(declare-fun bm!59000 () Bool)

(assert (=> bm!59000 (= call!59003 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!118698 (Cons!26706 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)) (ite c!118609 (Cons!26706 (select (arr!37683 _keys!1208) from!1455) Nil!26707) Nil!26707)) (ite c!118609 (Cons!26706 (select (arr!37683 _keys!1208) from!1455) Nil!26707) Nil!26707))))))

(declare-fun d!133097 () Bool)

(declare-fun res!803000 () Bool)

(declare-fun e!685923 () Bool)

(assert (=> d!133097 (=> res!803000 e!685923)))

(assert (=> d!133097 (= res!803000 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> d!133097 (= (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!118609 (Cons!26706 (select (arr!37683 _keys!1208) from!1455) Nil!26707) Nil!26707)) e!685923)))

(declare-fun b!1207723 () Bool)

(assert (=> b!1207723 (= e!685921 call!59003)))

(declare-fun b!1207724 () Bool)

(declare-fun e!685920 () Bool)

(assert (=> b!1207724 (= e!685920 (contains!6955 (ite c!118609 (Cons!26706 (select (arr!37683 _keys!1208) from!1455) Nil!26707) Nil!26707) (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(declare-fun b!1207725 () Bool)

(assert (=> b!1207725 (= e!685921 call!59003)))

(declare-fun b!1207726 () Bool)

(assert (=> b!1207726 (= e!685923 e!685922)))

(declare-fun res!803001 () Bool)

(assert (=> b!1207726 (=> (not res!803001) (not e!685922))))

(assert (=> b!1207726 (= res!803001 (not e!685920))))

(declare-fun res!802999 () Bool)

(assert (=> b!1207726 (=> (not res!802999) (not e!685920))))

(assert (=> b!1207726 (= res!802999 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (= (and d!133097 (not res!803000)) b!1207726))

(assert (= (and b!1207726 res!802999) b!1207724))

(assert (= (and b!1207726 res!803001) b!1207722))

(assert (= (and b!1207722 c!118698) b!1207723))

(assert (= (and b!1207722 (not c!118698)) b!1207725))

(assert (= (or b!1207723 b!1207725) bm!59000))

(assert (=> b!1207722 m!1113159))

(assert (=> b!1207722 m!1113159))

(assert (=> b!1207722 m!1113171))

(assert (=> bm!59000 m!1113159))

(declare-fun m!1113651 () Bool)

(assert (=> bm!59000 m!1113651))

(assert (=> b!1207724 m!1113159))

(assert (=> b!1207724 m!1113159))

(declare-fun m!1113653 () Bool)

(assert (=> b!1207724 m!1113653))

(assert (=> b!1207726 m!1113159))

(assert (=> b!1207726 m!1113159))

(assert (=> b!1207726 m!1113171))

(assert (=> bm!58968 d!133097))

(assert (=> b!1207390 d!132967))

(declare-fun d!133099 () Bool)

(declare-fun res!803002 () Bool)

(declare-fun e!685924 () Bool)

(assert (=> d!133099 (=> res!803002 e!685924)))

(assert (=> d!133099 (= res!803002 (= (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) k0!934))))

(assert (=> d!133099 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) e!685924)))

(declare-fun b!1207727 () Bool)

(declare-fun e!685925 () Bool)

(assert (=> b!1207727 (= e!685924 e!685925)))

(declare-fun res!803003 () Bool)

(assert (=> b!1207727 (=> (not res!803003) (not e!685925))))

(assert (=> b!1207727 (= res!803003 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207728 () Bool)

(assert (=> b!1207728 (= e!685925 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!133099 (not res!803002)) b!1207727))

(assert (= (and b!1207727 res!803003) b!1207728))

(assert (=> d!133099 m!1113425))

(declare-fun m!1113655 () Bool)

(assert (=> b!1207728 m!1113655))

(assert (=> b!1207420 d!133099))

(declare-fun d!133101 () Bool)

(assert (=> d!133101 (= (validKeyInArray!0 (select (arr!37683 lt!547687) from!1455)) (and (not (= (select (arr!37683 lt!547687) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37683 lt!547687) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1207342 d!133101))

(declare-fun b!1207732 () Bool)

(declare-fun e!685927 () Option!690)

(assert (=> b!1207732 (= e!685927 None!688)))

(declare-fun b!1207730 () Bool)

(declare-fun e!685926 () Option!690)

(assert (=> b!1207730 (= e!685926 e!685927)))

(declare-fun c!118700 () Bool)

(assert (=> b!1207730 (= c!118700 (and ((_ is Cons!26705) (toList!8949 lt!547817)) (not (= (_1!9953 (h!27914 (toList!8949 lt!547817))) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1207731 () Bool)

(assert (=> b!1207731 (= e!685927 (getValueByKey!639 (t!39661 (toList!8949 lt!547817)) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun d!133103 () Bool)

(declare-fun c!118699 () Bool)

(assert (=> d!133103 (= c!118699 (and ((_ is Cons!26705) (toList!8949 lt!547817)) (= (_1!9953 (h!27914 (toList!8949 lt!547817))) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133103 (= (getValueByKey!639 (toList!8949 lt!547817) (_1!9953 (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) e!685926)))

(declare-fun b!1207729 () Bool)

(assert (=> b!1207729 (= e!685926 (Some!689 (_2!9953 (h!27914 (toList!8949 lt!547817)))))))

(assert (= (and d!133103 c!118699) b!1207729))

(assert (= (and d!133103 (not c!118699)) b!1207730))

(assert (= (and b!1207730 c!118700) b!1207731))

(assert (= (and b!1207730 (not c!118700)) b!1207732))

(declare-fun m!1113657 () Bool)

(assert (=> b!1207731 m!1113657))

(assert (=> b!1207377 d!133103))

(declare-fun d!133105 () Bool)

(declare-fun e!685929 () Bool)

(assert (=> d!133105 e!685929))

(declare-fun res!803004 () Bool)

(assert (=> d!133105 (=> res!803004 e!685929)))

(declare-fun lt!548015 () Bool)

(assert (=> d!133105 (= res!803004 (not lt!548015))))

(declare-fun lt!548012 () Bool)

(assert (=> d!133105 (= lt!548015 lt!548012)))

(declare-fun lt!548013 () Unit!39940)

(declare-fun e!685928 () Unit!39940)

(assert (=> d!133105 (= lt!548013 e!685928)))

(declare-fun c!118701 () Bool)

(assert (=> d!133105 (= c!118701 lt!548012)))

(assert (=> d!133105 (= lt!548012 (containsKey!593 (toList!8949 lt!547841) k0!934))))

(assert (=> d!133105 (= (contains!6952 lt!547841 k0!934) lt!548015)))

(declare-fun b!1207733 () Bool)

(declare-fun lt!548014 () Unit!39940)

(assert (=> b!1207733 (= e!685928 lt!548014)))

(assert (=> b!1207733 (= lt!548014 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547841) k0!934))))

(assert (=> b!1207733 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547841) k0!934))))

(declare-fun b!1207734 () Bool)

(declare-fun Unit!39966 () Unit!39940)

(assert (=> b!1207734 (= e!685928 Unit!39966)))

(declare-fun b!1207735 () Bool)

(assert (=> b!1207735 (= e!685929 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547841) k0!934)))))

(assert (= (and d!133105 c!118701) b!1207733))

(assert (= (and d!133105 (not c!118701)) b!1207734))

(assert (= (and d!133105 (not res!803004)) b!1207735))

(declare-fun m!1113659 () Bool)

(assert (=> d!133105 m!1113659))

(declare-fun m!1113661 () Bool)

(assert (=> b!1207733 m!1113661))

(declare-fun m!1113663 () Bool)

(assert (=> b!1207733 m!1113663))

(assert (=> b!1207733 m!1113663))

(declare-fun m!1113665 () Bool)

(assert (=> b!1207733 m!1113665))

(assert (=> b!1207735 m!1113663))

(assert (=> b!1207735 m!1113663))

(assert (=> b!1207735 m!1113665))

(assert (=> d!132915 d!133105))

(declare-fun b!1207746 () Bool)

(declare-fun e!685936 () Bool)

(declare-fun lt!548018 () List!26709)

(assert (=> b!1207746 (= e!685936 (not (containsKey!593 lt!548018 k0!934)))))

(declare-fun b!1207747 () Bool)

(declare-fun e!685938 () List!26709)

(assert (=> b!1207747 (= e!685938 (t!39661 (toList!8949 call!58930)))))

(declare-fun b!1207748 () Bool)

(declare-fun e!685937 () List!26709)

(assert (=> b!1207748 (= e!685938 e!685937)))

(declare-fun c!118706 () Bool)

(assert (=> b!1207748 (= c!118706 (and ((_ is Cons!26705) (toList!8949 call!58930)) (not (= (_1!9953 (h!27914 (toList!8949 call!58930))) k0!934))))))

(declare-fun d!133107 () Bool)

(assert (=> d!133107 e!685936))

(declare-fun res!803007 () Bool)

(assert (=> d!133107 (=> (not res!803007) (not e!685936))))

(assert (=> d!133107 (= res!803007 (isStrictlySorted!725 lt!548018))))

(assert (=> d!133107 (= lt!548018 e!685938)))

(declare-fun c!118707 () Bool)

(assert (=> d!133107 (= c!118707 (and ((_ is Cons!26705) (toList!8949 call!58930)) (= (_1!9953 (h!27914 (toList!8949 call!58930))) k0!934)))))

(assert (=> d!133107 (isStrictlySorted!725 (toList!8949 call!58930))))

(assert (=> d!133107 (= (removeStrictlySorted!99 (toList!8949 call!58930) k0!934) lt!548018)))

(declare-fun b!1207749 () Bool)

(assert (=> b!1207749 (= e!685937 ($colon$colon!613 (removeStrictlySorted!99 (t!39661 (toList!8949 call!58930)) k0!934) (h!27914 (toList!8949 call!58930))))))

(declare-fun b!1207750 () Bool)

(assert (=> b!1207750 (= e!685937 Nil!26706)))

(assert (= (and d!133107 c!118707) b!1207747))

(assert (= (and d!133107 (not c!118707)) b!1207748))

(assert (= (and b!1207748 c!118706) b!1207749))

(assert (= (and b!1207748 (not c!118706)) b!1207750))

(assert (= (and d!133107 res!803007) b!1207746))

(declare-fun m!1113667 () Bool)

(assert (=> b!1207746 m!1113667))

(declare-fun m!1113669 () Bool)

(assert (=> d!133107 m!1113669))

(declare-fun m!1113671 () Bool)

(assert (=> d!133107 m!1113671))

(declare-fun m!1113673 () Bool)

(assert (=> b!1207749 m!1113673))

(assert (=> b!1207749 m!1113673))

(declare-fun m!1113675 () Bool)

(assert (=> b!1207749 m!1113675))

(assert (=> d!132915 d!133107))

(declare-fun d!133109 () Bool)

(declare-fun e!685939 () Bool)

(assert (=> d!133109 e!685939))

(declare-fun res!803008 () Bool)

(assert (=> d!133109 (=> (not res!803008) (not e!685939))))

(declare-fun lt!548021 () ListLongMap!17867)

(assert (=> d!133109 (= res!803008 (contains!6952 lt!548021 (_1!9953 (tuple2!19887 lt!547787 lt!547792))))))

(declare-fun lt!548019 () List!26709)

(assert (=> d!133109 (= lt!548021 (ListLongMap!17868 lt!548019))))

(declare-fun lt!548020 () Unit!39940)

(declare-fun lt!548022 () Unit!39940)

(assert (=> d!133109 (= lt!548020 lt!548022)))

(assert (=> d!133109 (= (getValueByKey!639 lt!548019 (_1!9953 (tuple2!19887 lt!547787 lt!547792))) (Some!689 (_2!9953 (tuple2!19887 lt!547787 lt!547792))))))

(assert (=> d!133109 (= lt!548022 (lemmaContainsTupThenGetReturnValue!314 lt!548019 (_1!9953 (tuple2!19887 lt!547787 lt!547792)) (_2!9953 (tuple2!19887 lt!547787 lt!547792))))))

(assert (=> d!133109 (= lt!548019 (insertStrictlySorted!406 (toList!8949 lt!547788) (_1!9953 (tuple2!19887 lt!547787 lt!547792)) (_2!9953 (tuple2!19887 lt!547787 lt!547792))))))

(assert (=> d!133109 (= (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792)) lt!548021)))

(declare-fun b!1207751 () Bool)

(declare-fun res!803009 () Bool)

(assert (=> b!1207751 (=> (not res!803009) (not e!685939))))

(assert (=> b!1207751 (= res!803009 (= (getValueByKey!639 (toList!8949 lt!548021) (_1!9953 (tuple2!19887 lt!547787 lt!547792))) (Some!689 (_2!9953 (tuple2!19887 lt!547787 lt!547792)))))))

(declare-fun b!1207752 () Bool)

(assert (=> b!1207752 (= e!685939 (contains!6954 (toList!8949 lt!548021) (tuple2!19887 lt!547787 lt!547792)))))

(assert (= (and d!133109 res!803008) b!1207751))

(assert (= (and b!1207751 res!803009) b!1207752))

(declare-fun m!1113677 () Bool)

(assert (=> d!133109 m!1113677))

(declare-fun m!1113679 () Bool)

(assert (=> d!133109 m!1113679))

(declare-fun m!1113681 () Bool)

(assert (=> d!133109 m!1113681))

(declare-fun m!1113683 () Bool)

(assert (=> d!133109 m!1113683))

(declare-fun m!1113685 () Bool)

(assert (=> b!1207751 m!1113685))

(declare-fun m!1113687 () Bool)

(assert (=> b!1207752 m!1113687))

(assert (=> b!1207343 d!133109))

(assert (=> b!1207343 d!132977))

(declare-fun d!133111 () Bool)

(declare-fun e!685941 () Bool)

(assert (=> d!133111 e!685941))

(declare-fun res!803010 () Bool)

(assert (=> d!133111 (=> res!803010 e!685941)))

(declare-fun lt!548026 () Bool)

(assert (=> d!133111 (= res!803010 (not lt!548026))))

(declare-fun lt!548023 () Bool)

(assert (=> d!133111 (= lt!548026 lt!548023)))

(declare-fun lt!548024 () Unit!39940)

(declare-fun e!685940 () Unit!39940)

(assert (=> d!133111 (= lt!548024 e!685940)))

(declare-fun c!118708 () Bool)

(assert (=> d!133111 (= c!118708 lt!548023)))

(assert (=> d!133111 (= lt!548023 (containsKey!593 (toList!8949 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792))) lt!547790))))

(assert (=> d!133111 (= (contains!6952 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792)) lt!547790) lt!548026)))

(declare-fun b!1207753 () Bool)

(declare-fun lt!548025 () Unit!39940)

(assert (=> b!1207753 (= e!685940 lt!548025)))

(assert (=> b!1207753 (= lt!548025 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792))) lt!547790))))

(assert (=> b!1207753 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792))) lt!547790))))

(declare-fun b!1207754 () Bool)

(declare-fun Unit!39967 () Unit!39940)

(assert (=> b!1207754 (= e!685940 Unit!39967)))

(declare-fun b!1207755 () Bool)

(assert (=> b!1207755 (= e!685941 (isDefined!462 (getValueByKey!639 (toList!8949 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792))) lt!547790)))))

(assert (= (and d!133111 c!118708) b!1207753))

(assert (= (and d!133111 (not c!118708)) b!1207754))

(assert (= (and d!133111 (not res!803010)) b!1207755))

(declare-fun m!1113689 () Bool)

(assert (=> d!133111 m!1113689))

(declare-fun m!1113691 () Bool)

(assert (=> b!1207753 m!1113691))

(declare-fun m!1113693 () Bool)

(assert (=> b!1207753 m!1113693))

(assert (=> b!1207753 m!1113693))

(declare-fun m!1113695 () Bool)

(assert (=> b!1207753 m!1113695))

(assert (=> b!1207755 m!1113693))

(assert (=> b!1207755 m!1113693))

(assert (=> b!1207755 m!1113695))

(assert (=> b!1207343 d!133111))

(declare-fun d!133113 () Bool)

(assert (=> d!133113 (not (contains!6952 (+!3978 lt!547788 (tuple2!19887 lt!547787 lt!547792)) lt!547790))))

(declare-fun lt!548027 () Unit!39940)

(assert (=> d!133113 (= lt!548027 (choose!1811 lt!547788 lt!547787 lt!547792 lt!547790))))

(declare-fun e!685942 () Bool)

(assert (=> d!133113 e!685942))

(declare-fun res!803011 () Bool)

(assert (=> d!133113 (=> (not res!803011) (not e!685942))))

(assert (=> d!133113 (= res!803011 (not (contains!6952 lt!547788 lt!547790)))))

(assert (=> d!133113 (= (addStillNotContains!295 lt!547788 lt!547787 lt!547792 lt!547790) lt!548027)))

(declare-fun b!1207756 () Bool)

(assert (=> b!1207756 (= e!685942 (not (= lt!547787 lt!547790)))))

(assert (= (and d!133113 res!803011) b!1207756))

(assert (=> d!133113 m!1112993))

(assert (=> d!133113 m!1112993))

(assert (=> d!133113 m!1112995))

(declare-fun m!1113697 () Bool)

(assert (=> d!133113 m!1113697))

(declare-fun m!1113699 () Bool)

(assert (=> d!133113 m!1113699))

(assert (=> b!1207343 d!133113))

(declare-fun d!133115 () Bool)

(declare-fun e!685943 () Bool)

(assert (=> d!133115 e!685943))

(declare-fun res!803012 () Bool)

(assert (=> d!133115 (=> (not res!803012) (not e!685943))))

(declare-fun lt!548030 () ListLongMap!17867)

(assert (=> d!133115 (= res!803012 (contains!6952 lt!548030 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!548028 () List!26709)

(assert (=> d!133115 (= lt!548030 (ListLongMap!17868 lt!548028))))

(declare-fun lt!548029 () Unit!39940)

(declare-fun lt!548031 () Unit!39940)

(assert (=> d!133115 (= lt!548029 lt!548031)))

(assert (=> d!133115 (= (getValueByKey!639 lt!548028 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133115 (= lt!548031 (lemmaContainsTupThenGetReturnValue!314 lt!548028 (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133115 (= lt!548028 (insertStrictlySorted!406 (toList!8949 call!58964) (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133115 (= (+!3978 call!58964 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!548030)))

(declare-fun b!1207757 () Bool)

(declare-fun res!803013 () Bool)

(assert (=> b!1207757 (=> (not res!803013) (not e!685943))))

(assert (=> b!1207757 (= res!803013 (= (getValueByKey!639 (toList!8949 lt!548030) (_1!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!689 (_2!9953 (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1207758 () Bool)

(assert (=> b!1207758 (= e!685943 (contains!6954 (toList!8949 lt!548030) (tuple2!19887 (select (arr!37683 _keys!1208) from!1455) (get!19245 (select (arr!37684 _values!996) from!1455) (dynLambda!3275 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133115 res!803012) b!1207757))

(assert (= (and b!1207757 res!803013) b!1207758))

(declare-fun m!1113701 () Bool)

(assert (=> d!133115 m!1113701))

(declare-fun m!1113703 () Bool)

(assert (=> d!133115 m!1113703))

(declare-fun m!1113705 () Bool)

(assert (=> d!133115 m!1113705))

(declare-fun m!1113707 () Bool)

(assert (=> d!133115 m!1113707))

(declare-fun m!1113709 () Bool)

(assert (=> b!1207757 m!1113709))

(declare-fun m!1113711 () Bool)

(assert (=> b!1207758 m!1113711))

(assert (=> b!1207343 d!133115))

(declare-fun d!133117 () Bool)

(assert (=> d!133117 (arrayContainsKey!0 lt!547687 lt!547825 #b00000000000000000000000000000000)))

(declare-fun lt!548032 () Unit!39940)

(assert (=> d!133117 (= lt!548032 (choose!13 lt!547687 lt!547825 #b00000000000000000000000000000000))))

(assert (=> d!133117 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!133117 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!547687 lt!547825 #b00000000000000000000000000000000) lt!548032)))

(declare-fun bs!34143 () Bool)

(assert (= bs!34143 d!133117))

(assert (=> bs!34143 m!1113071))

(declare-fun m!1113713 () Bool)

(assert (=> bs!34143 m!1113713))

(assert (=> b!1207388 d!133117))

(declare-fun d!133119 () Bool)

(declare-fun res!803014 () Bool)

(declare-fun e!685944 () Bool)

(assert (=> d!133119 (=> res!803014 e!685944)))

(assert (=> d!133119 (= res!803014 (= (select (arr!37683 lt!547687) #b00000000000000000000000000000000) lt!547825))))

(assert (=> d!133119 (= (arrayContainsKey!0 lt!547687 lt!547825 #b00000000000000000000000000000000) e!685944)))

(declare-fun b!1207759 () Bool)

(declare-fun e!685945 () Bool)

(assert (=> b!1207759 (= e!685944 e!685945)))

(declare-fun res!803015 () Bool)

(assert (=> b!1207759 (=> (not res!803015) (not e!685945))))

(assert (=> b!1207759 (= res!803015 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(declare-fun b!1207760 () Bool)

(assert (=> b!1207760 (= e!685945 (arrayContainsKey!0 lt!547687 lt!547825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133119 (not res!803014)) b!1207759))

(assert (= (and b!1207759 res!803015) b!1207760))

(assert (=> d!133119 m!1113067))

(declare-fun m!1113715 () Bool)

(assert (=> b!1207760 m!1113715))

(assert (=> b!1207388 d!133119))

(declare-fun b!1207773 () Bool)

(declare-fun e!685954 () SeekEntryResult!9935)

(assert (=> b!1207773 (= e!685954 Undefined!9935)))

(declare-fun b!1207774 () Bool)

(declare-fun c!118717 () Bool)

(declare-fun lt!548041 () (_ BitVec 64))

(assert (=> b!1207774 (= c!118717 (= lt!548041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!685952 () SeekEntryResult!9935)

(declare-fun e!685953 () SeekEntryResult!9935)

(assert (=> b!1207774 (= e!685952 e!685953)))

(declare-fun b!1207775 () Bool)

(assert (=> b!1207775 (= e!685954 e!685952)))

(declare-fun lt!548039 () SeekEntryResult!9935)

(assert (=> b!1207775 (= lt!548041 (select (arr!37683 lt!547687) (index!42112 lt!548039)))))

(declare-fun c!118715 () Bool)

(assert (=> b!1207775 (= c!118715 (= lt!548041 (select (arr!37683 lt!547687) #b00000000000000000000000000000000)))))

(declare-fun b!1207777 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!78094 (_ BitVec 32)) SeekEntryResult!9935)

(assert (=> b!1207777 (= e!685953 (seekKeyOrZeroReturnVacant!0 (x!106572 lt!548039) (index!42112 lt!548039) (index!42112 lt!548039) (select (arr!37683 lt!547687) #b00000000000000000000000000000000) lt!547687 mask!1564))))

(declare-fun b!1207778 () Bool)

(assert (=> b!1207778 (= e!685953 (MissingZero!9935 (index!42112 lt!548039)))))

(declare-fun d!133121 () Bool)

(declare-fun lt!548040 () SeekEntryResult!9935)

(assert (=> d!133121 (and (or ((_ is Undefined!9935) lt!548040) (not ((_ is Found!9935) lt!548040)) (and (bvsge (index!42111 lt!548040) #b00000000000000000000000000000000) (bvslt (index!42111 lt!548040) (size!38220 lt!547687)))) (or ((_ is Undefined!9935) lt!548040) ((_ is Found!9935) lt!548040) (not ((_ is MissingZero!9935) lt!548040)) (and (bvsge (index!42110 lt!548040) #b00000000000000000000000000000000) (bvslt (index!42110 lt!548040) (size!38220 lt!547687)))) (or ((_ is Undefined!9935) lt!548040) ((_ is Found!9935) lt!548040) ((_ is MissingZero!9935) lt!548040) (not ((_ is MissingVacant!9935) lt!548040)) (and (bvsge (index!42113 lt!548040) #b00000000000000000000000000000000) (bvslt (index!42113 lt!548040) (size!38220 lt!547687)))) (or ((_ is Undefined!9935) lt!548040) (ite ((_ is Found!9935) lt!548040) (= (select (arr!37683 lt!547687) (index!42111 lt!548040)) (select (arr!37683 lt!547687) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9935) lt!548040) (= (select (arr!37683 lt!547687) (index!42110 lt!548040)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9935) lt!548040) (= (select (arr!37683 lt!547687) (index!42113 lt!548040)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133121 (= lt!548040 e!685954)))

(declare-fun c!118716 () Bool)

(assert (=> d!133121 (= c!118716 (and ((_ is Intermediate!9935) lt!548039) (undefined!10747 lt!548039)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!78094 (_ BitVec 32)) SeekEntryResult!9935)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!133121 (= lt!548039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) mask!1564) (select (arr!37683 lt!547687) #b00000000000000000000000000000000) lt!547687 mask!1564))))

(assert (=> d!133121 (validMask!0 mask!1564)))

(assert (=> d!133121 (= (seekEntryOrOpen!0 (select (arr!37683 lt!547687) #b00000000000000000000000000000000) lt!547687 mask!1564) lt!548040)))

(declare-fun b!1207776 () Bool)

(assert (=> b!1207776 (= e!685952 (Found!9935 (index!42112 lt!548039)))))

(assert (= (and d!133121 c!118716) b!1207773))

(assert (= (and d!133121 (not c!118716)) b!1207775))

(assert (= (and b!1207775 c!118715) b!1207776))

(assert (= (and b!1207775 (not c!118715)) b!1207774))

(assert (= (and b!1207774 c!118717) b!1207778))

(assert (= (and b!1207774 (not c!118717)) b!1207777))

(declare-fun m!1113717 () Bool)

(assert (=> b!1207775 m!1113717))

(assert (=> b!1207777 m!1113067))

(declare-fun m!1113719 () Bool)

(assert (=> b!1207777 m!1113719))

(declare-fun m!1113721 () Bool)

(assert (=> d!133121 m!1113721))

(assert (=> d!133121 m!1113067))

(declare-fun m!1113723 () Bool)

(assert (=> d!133121 m!1113723))

(assert (=> d!133121 m!1113067))

(assert (=> d!133121 m!1113721))

(declare-fun m!1113725 () Bool)

(assert (=> d!133121 m!1113725))

(assert (=> d!133121 m!1112795))

(declare-fun m!1113727 () Bool)

(assert (=> d!133121 m!1113727))

(declare-fun m!1113729 () Bool)

(assert (=> d!133121 m!1113729))

(assert (=> b!1207388 d!133121))

(assert (=> b!1207340 d!133001))

(assert (=> b!1207427 d!132961))

(declare-fun d!133123 () Bool)

(declare-fun e!685956 () Bool)

(assert (=> d!133123 e!685956))

(declare-fun res!803016 () Bool)

(assert (=> d!133123 (=> res!803016 e!685956)))

(declare-fun lt!548045 () Bool)

(assert (=> d!133123 (= res!803016 (not lt!548045))))

(declare-fun lt!548042 () Bool)

(assert (=> d!133123 (= lt!548045 lt!548042)))

(declare-fun lt!548043 () Unit!39940)

(declare-fun e!685955 () Unit!39940)

(assert (=> d!133123 (= lt!548043 e!685955)))

(declare-fun c!118718 () Bool)

(assert (=> d!133123 (= c!118718 lt!548042)))

(assert (=> d!133123 (= lt!548042 (containsKey!593 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133123 (= (contains!6952 lt!547756 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!548045)))

(declare-fun b!1207779 () Bool)

(declare-fun lt!548044 () Unit!39940)

(assert (=> b!1207779 (= e!685955 lt!548044)))

(assert (=> b!1207779 (= lt!548044 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> b!1207779 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207780 () Bool)

(declare-fun Unit!39968 () Unit!39940)

(assert (=> b!1207780 (= e!685955 Unit!39968)))

(declare-fun b!1207781 () Bool)

(assert (=> b!1207781 (= e!685956 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547756) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (= (and d!133123 c!118718) b!1207779))

(assert (= (and d!133123 (not c!118718)) b!1207780))

(assert (= (and d!133123 (not res!803016)) b!1207781))

(declare-fun m!1113731 () Bool)

(assert (=> d!133123 m!1113731))

(declare-fun m!1113733 () Bool)

(assert (=> b!1207779 m!1113733))

(assert (=> b!1207779 m!1112927))

(assert (=> b!1207779 m!1112927))

(declare-fun m!1113735 () Bool)

(assert (=> b!1207779 m!1113735))

(assert (=> b!1207781 m!1112927))

(assert (=> b!1207781 m!1112927))

(assert (=> b!1207781 m!1113735))

(assert (=> d!132885 d!133123))

(declare-fun b!1207785 () Bool)

(declare-fun e!685958 () Option!690)

(assert (=> b!1207785 (= e!685958 None!688)))

(declare-fun b!1207783 () Bool)

(declare-fun e!685957 () Option!690)

(assert (=> b!1207783 (= e!685957 e!685958)))

(declare-fun c!118720 () Bool)

(assert (=> b!1207783 (= c!118720 (and ((_ is Cons!26705) lt!547754) (not (= (_1!9953 (h!27914 lt!547754)) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1207784 () Bool)

(assert (=> b!1207784 (= e!685958 (getValueByKey!639 (t!39661 lt!547754) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun c!118719 () Bool)

(declare-fun d!133125 () Bool)

(assert (=> d!133125 (= c!118719 (and ((_ is Cons!26705) lt!547754) (= (_1!9953 (h!27914 lt!547754)) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!133125 (= (getValueByKey!639 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) e!685957)))

(declare-fun b!1207782 () Bool)

(assert (=> b!1207782 (= e!685957 (Some!689 (_2!9953 (h!27914 lt!547754))))))

(assert (= (and d!133125 c!118719) b!1207782))

(assert (= (and d!133125 (not c!118719)) b!1207783))

(assert (= (and b!1207783 c!118720) b!1207784))

(assert (= (and b!1207783 (not c!118720)) b!1207785))

(declare-fun m!1113737 () Bool)

(assert (=> b!1207784 m!1113737))

(assert (=> d!132885 d!133125))

(declare-fun d!133127 () Bool)

(assert (=> d!133127 (= (getValueByKey!639 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!689 (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!548046 () Unit!39940)

(assert (=> d!133127 (= lt!548046 (choose!1813 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!685959 () Bool)

(assert (=> d!133127 e!685959))

(declare-fun res!803017 () Bool)

(assert (=> d!133127 (=> (not res!803017) (not e!685959))))

(assert (=> d!133127 (= res!803017 (isStrictlySorted!725 lt!547754))))

(assert (=> d!133127 (= (lemmaContainsTupThenGetReturnValue!314 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!548046)))

(declare-fun b!1207786 () Bool)

(declare-fun res!803018 () Bool)

(assert (=> b!1207786 (=> (not res!803018) (not e!685959))))

(assert (=> b!1207786 (= res!803018 (containsKey!593 lt!547754 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207787 () Bool)

(assert (=> b!1207787 (= e!685959 (contains!6954 lt!547754 (tuple2!19887 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (= (and d!133127 res!803017) b!1207786))

(assert (= (and b!1207786 res!803018) b!1207787))

(assert (=> d!133127 m!1112921))

(declare-fun m!1113739 () Bool)

(assert (=> d!133127 m!1113739))

(declare-fun m!1113741 () Bool)

(assert (=> d!133127 m!1113741))

(declare-fun m!1113743 () Bool)

(assert (=> b!1207786 m!1113743))

(declare-fun m!1113745 () Bool)

(assert (=> b!1207787 m!1113745))

(assert (=> d!132885 d!133127))

(declare-fun lt!548047 () List!26709)

(declare-fun b!1207788 () Bool)

(declare-fun e!685963 () Bool)

(assert (=> b!1207788 (= e!685963 (contains!6954 lt!548047 (tuple2!19887 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun c!118721 () Bool)

(declare-fun b!1207789 () Bool)

(assert (=> b!1207789 (= c!118721 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (bvsgt (_1!9953 (h!27914 (toList!8949 lt!547694))) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun e!685962 () List!26709)

(declare-fun e!685960 () List!26709)

(assert (=> b!1207789 (= e!685962 e!685960)))

(declare-fun bm!59001 () Bool)

(declare-fun c!118722 () Bool)

(declare-fun e!685964 () List!26709)

(declare-fun call!59005 () List!26709)

(assert (=> bm!59001 (= call!59005 ($colon$colon!613 e!685964 (ite c!118722 (h!27914 (toList!8949 lt!547694)) (tuple2!19887 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun c!118723 () Bool)

(assert (=> bm!59001 (= c!118723 c!118722)))

(declare-fun b!1207790 () Bool)

(declare-fun call!59004 () List!26709)

(assert (=> b!1207790 (= e!685960 call!59004)))

(declare-fun b!1207791 () Bool)

(declare-fun call!59006 () List!26709)

(assert (=> b!1207791 (= e!685962 call!59006)))

(declare-fun b!1207792 () Bool)

(assert (=> b!1207792 (= e!685960 call!59004)))

(declare-fun b!1207793 () Bool)

(declare-fun e!685961 () List!26709)

(assert (=> b!1207793 (= e!685961 e!685962)))

(declare-fun c!118724 () Bool)

(assert (=> b!1207793 (= c!118724 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (= (_1!9953 (h!27914 (toList!8949 lt!547694))) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1207794 () Bool)

(assert (=> b!1207794 (= e!685964 (insertStrictlySorted!406 (t!39661 (toList!8949 lt!547694)) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun d!133129 () Bool)

(assert (=> d!133129 e!685963))

(declare-fun res!803019 () Bool)

(assert (=> d!133129 (=> (not res!803019) (not e!685963))))

(assert (=> d!133129 (= res!803019 (isStrictlySorted!725 lt!548047))))

(assert (=> d!133129 (= lt!548047 e!685961)))

(assert (=> d!133129 (= c!118722 (and ((_ is Cons!26705) (toList!8949 lt!547694)) (bvslt (_1!9953 (h!27914 (toList!8949 lt!547694))) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!133129 (isStrictlySorted!725 (toList!8949 lt!547694))))

(assert (=> d!133129 (= (insertStrictlySorted!406 (toList!8949 lt!547694) (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!548047)))

(declare-fun b!1207795 () Bool)

(assert (=> b!1207795 (= e!685964 (ite c!118724 (t!39661 (toList!8949 lt!547694)) (ite c!118721 (Cons!26705 (h!27914 (toList!8949 lt!547694)) (t!39661 (toList!8949 lt!547694))) Nil!26706)))))

(declare-fun bm!59002 () Bool)

(assert (=> bm!59002 (= call!59004 call!59006)))

(declare-fun b!1207796 () Bool)

(declare-fun res!803020 () Bool)

(assert (=> b!1207796 (=> (not res!803020) (not e!685963))))

(assert (=> b!1207796 (= res!803020 (containsKey!593 lt!548047 (_1!9953 (ite (or c!118558 c!118560) (tuple2!19887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1207797 () Bool)

(assert (=> b!1207797 (= e!685961 call!59005)))

(declare-fun bm!59003 () Bool)

(assert (=> bm!59003 (= call!59006 call!59005)))

(assert (= (and d!133129 c!118722) b!1207797))

(assert (= (and d!133129 (not c!118722)) b!1207793))

(assert (= (and b!1207793 c!118724) b!1207791))

(assert (= (and b!1207793 (not c!118724)) b!1207789))

(assert (= (and b!1207789 c!118721) b!1207792))

(assert (= (and b!1207789 (not c!118721)) b!1207790))

(assert (= (or b!1207792 b!1207790) bm!59002))

(assert (= (or b!1207791 bm!59002) bm!59003))

(assert (= (or b!1207797 bm!59003) bm!59001))

(assert (= (and bm!59001 c!118723) b!1207794))

(assert (= (and bm!59001 (not c!118723)) b!1207795))

(assert (= (and d!133129 res!803019) b!1207796))

(assert (= (and b!1207796 res!803020) b!1207788))

(declare-fun m!1113747 () Bool)

(assert (=> b!1207796 m!1113747))

(declare-fun m!1113749 () Bool)

(assert (=> bm!59001 m!1113749))

(declare-fun m!1113751 () Bool)

(assert (=> d!133129 m!1113751))

(assert (=> d!133129 m!1113547))

(declare-fun m!1113753 () Bool)

(assert (=> b!1207794 m!1113753))

(declare-fun m!1113755 () Bool)

(assert (=> b!1207788 m!1113755))

(assert (=> d!132885 d!133129))

(assert (=> bm!58962 d!133025))

(assert (=> bm!58975 d!132893))

(declare-fun bm!59004 () Bool)

(declare-fun call!59007 () Bool)

(assert (=> bm!59004 (= call!59007 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!547687 mask!1564))))

(declare-fun b!1207798 () Bool)

(declare-fun e!685967 () Bool)

(assert (=> b!1207798 (= e!685967 call!59007)))

(declare-fun b!1207799 () Bool)

(declare-fun e!685965 () Bool)

(assert (=> b!1207799 (= e!685965 e!685967)))

(declare-fun lt!548048 () (_ BitVec 64))

(assert (=> b!1207799 (= lt!548048 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!548049 () Unit!39940)

(assert (=> b!1207799 (= lt!548049 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!547687 lt!548048 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1207799 (arrayContainsKey!0 lt!547687 lt!548048 #b00000000000000000000000000000000)))

(declare-fun lt!548050 () Unit!39940)

(assert (=> b!1207799 (= lt!548050 lt!548049)))

(declare-fun res!803022 () Bool)

(assert (=> b!1207799 (= res!803022 (= (seekEntryOrOpen!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!547687 mask!1564) (Found!9935 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1207799 (=> (not res!803022) (not e!685967))))

(declare-fun b!1207800 () Bool)

(assert (=> b!1207800 (= e!685965 call!59007)))

(declare-fun b!1207801 () Bool)

(declare-fun e!685966 () Bool)

(assert (=> b!1207801 (= e!685966 e!685965)))

(declare-fun c!118725 () Bool)

(assert (=> b!1207801 (= c!118725 (validKeyInArray!0 (select (arr!37683 lt!547687) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!133131 () Bool)

(declare-fun res!803021 () Bool)

(assert (=> d!133131 (=> res!803021 e!685966)))

(assert (=> d!133131 (= res!803021 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 lt!547687)))))

(assert (=> d!133131 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!547687 mask!1564) e!685966)))

(assert (= (and d!133131 (not res!803021)) b!1207801))

(assert (= (and b!1207801 c!118725) b!1207799))

(assert (= (and b!1207801 (not c!118725)) b!1207800))

(assert (= (and b!1207799 res!803022) b!1207798))

(assert (= (or b!1207798 b!1207800) bm!59004))

(declare-fun m!1113757 () Bool)

(assert (=> bm!59004 m!1113757))

(assert (=> b!1207799 m!1113573))

(declare-fun m!1113759 () Bool)

(assert (=> b!1207799 m!1113759))

(declare-fun m!1113761 () Bool)

(assert (=> b!1207799 m!1113761))

(assert (=> b!1207799 m!1113573))

(declare-fun m!1113763 () Bool)

(assert (=> b!1207799 m!1113763))

(assert (=> b!1207801 m!1113573))

(assert (=> b!1207801 m!1113573))

(assert (=> b!1207801 m!1113575))

(assert (=> bm!58965 d!133131))

(assert (=> b!1207338 d!133101))

(declare-fun d!133133 () Bool)

(assert (=> d!133133 (arrayContainsKey!0 _keys!1208 lt!547846 #b00000000000000000000000000000000)))

(declare-fun lt!548051 () Unit!39940)

(assert (=> d!133133 (= lt!548051 (choose!13 _keys!1208 lt!547846 #b00000000000000000000000000000000))))

(assert (=> d!133133 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!133133 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!547846 #b00000000000000000000000000000000) lt!548051)))

(declare-fun bs!34144 () Bool)

(assert (= bs!34144 d!133133))

(assert (=> bs!34144 m!1113119))

(declare-fun m!1113765 () Bool)

(assert (=> bs!34144 m!1113765))

(assert (=> b!1207425 d!133133))

(declare-fun d!133135 () Bool)

(declare-fun res!803023 () Bool)

(declare-fun e!685968 () Bool)

(assert (=> d!133135 (=> res!803023 e!685968)))

(assert (=> d!133135 (= res!803023 (= (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) lt!547846))))

(assert (=> d!133135 (= (arrayContainsKey!0 _keys!1208 lt!547846 #b00000000000000000000000000000000) e!685968)))

(declare-fun b!1207802 () Bool)

(declare-fun e!685969 () Bool)

(assert (=> b!1207802 (= e!685968 e!685969)))

(declare-fun res!803024 () Bool)

(assert (=> b!1207802 (=> (not res!803024) (not e!685969))))

(assert (=> b!1207802 (= res!803024 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(declare-fun b!1207803 () Bool)

(assert (=> b!1207803 (= e!685969 (arrayContainsKey!0 _keys!1208 lt!547846 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133135 (not res!803023)) b!1207802))

(assert (= (and b!1207802 res!803024) b!1207803))

(assert (=> d!133135 m!1113115))

(declare-fun m!1113767 () Bool)

(assert (=> b!1207803 m!1113767))

(assert (=> b!1207425 d!133135))

(declare-fun b!1207804 () Bool)

(declare-fun e!685972 () SeekEntryResult!9935)

(assert (=> b!1207804 (= e!685972 Undefined!9935)))

(declare-fun b!1207805 () Bool)

(declare-fun c!118728 () Bool)

(declare-fun lt!548054 () (_ BitVec 64))

(assert (=> b!1207805 (= c!118728 (= lt!548054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!685970 () SeekEntryResult!9935)

(declare-fun e!685971 () SeekEntryResult!9935)

(assert (=> b!1207805 (= e!685970 e!685971)))

(declare-fun b!1207806 () Bool)

(assert (=> b!1207806 (= e!685972 e!685970)))

(declare-fun lt!548052 () SeekEntryResult!9935)

(assert (=> b!1207806 (= lt!548054 (select (arr!37683 _keys!1208) (index!42112 lt!548052)))))

(declare-fun c!118726 () Bool)

(assert (=> b!1207806 (= c!118726 (= lt!548054 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1207808 () Bool)

(assert (=> b!1207808 (= e!685971 (seekKeyOrZeroReturnVacant!0 (x!106572 lt!548052) (index!42112 lt!548052) (index!42112 lt!548052) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(declare-fun b!1207809 () Bool)

(assert (=> b!1207809 (= e!685971 (MissingZero!9935 (index!42112 lt!548052)))))

(declare-fun d!133137 () Bool)

(declare-fun lt!548053 () SeekEntryResult!9935)

(assert (=> d!133137 (and (or ((_ is Undefined!9935) lt!548053) (not ((_ is Found!9935) lt!548053)) (and (bvsge (index!42111 lt!548053) #b00000000000000000000000000000000) (bvslt (index!42111 lt!548053) (size!38220 _keys!1208)))) (or ((_ is Undefined!9935) lt!548053) ((_ is Found!9935) lt!548053) (not ((_ is MissingZero!9935) lt!548053)) (and (bvsge (index!42110 lt!548053) #b00000000000000000000000000000000) (bvslt (index!42110 lt!548053) (size!38220 _keys!1208)))) (or ((_ is Undefined!9935) lt!548053) ((_ is Found!9935) lt!548053) ((_ is MissingZero!9935) lt!548053) (not ((_ is MissingVacant!9935) lt!548053)) (and (bvsge (index!42113 lt!548053) #b00000000000000000000000000000000) (bvslt (index!42113 lt!548053) (size!38220 _keys!1208)))) (or ((_ is Undefined!9935) lt!548053) (ite ((_ is Found!9935) lt!548053) (= (select (arr!37683 _keys!1208) (index!42111 lt!548053)) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9935) lt!548053) (= (select (arr!37683 _keys!1208) (index!42110 lt!548053)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9935) lt!548053) (= (select (arr!37683 _keys!1208) (index!42113 lt!548053)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!133137 (= lt!548053 e!685972)))

(declare-fun c!118727 () Bool)

(assert (=> d!133137 (= c!118727 (and ((_ is Intermediate!9935) lt!548052) (undefined!10747 lt!548052)))))

(assert (=> d!133137 (= lt!548052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) mask!1564) (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(assert (=> d!133137 (validMask!0 mask!1564)))

(assert (=> d!133137 (= (seekEntryOrOpen!0 (select (arr!37683 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) lt!548053)))

(declare-fun b!1207807 () Bool)

(assert (=> b!1207807 (= e!685970 (Found!9935 (index!42112 lt!548052)))))

(assert (= (and d!133137 c!118727) b!1207804))

(assert (= (and d!133137 (not c!118727)) b!1207806))

(assert (= (and b!1207806 c!118726) b!1207807))

(assert (= (and b!1207806 (not c!118726)) b!1207805))

(assert (= (and b!1207805 c!118728) b!1207809))

(assert (= (and b!1207805 (not c!118728)) b!1207808))

(declare-fun m!1113769 () Bool)

(assert (=> b!1207806 m!1113769))

(assert (=> b!1207808 m!1113115))

(declare-fun m!1113771 () Bool)

(assert (=> b!1207808 m!1113771))

(declare-fun m!1113773 () Bool)

(assert (=> d!133137 m!1113773))

(assert (=> d!133137 m!1113115))

(declare-fun m!1113775 () Bool)

(assert (=> d!133137 m!1113775))

(assert (=> d!133137 m!1113115))

(assert (=> d!133137 m!1113773))

(declare-fun m!1113777 () Bool)

(assert (=> d!133137 m!1113777))

(assert (=> d!133137 m!1112795))

(declare-fun m!1113779 () Bool)

(assert (=> d!133137 m!1113779))

(declare-fun m!1113781 () Bool)

(assert (=> d!133137 m!1113781))

(assert (=> b!1207425 d!133137))

(declare-fun d!133139 () Bool)

(declare-fun e!685974 () Bool)

(assert (=> d!133139 e!685974))

(declare-fun res!803025 () Bool)

(assert (=> d!133139 (=> res!803025 e!685974)))

(declare-fun lt!548058 () Bool)

(assert (=> d!133139 (= res!803025 (not lt!548058))))

(declare-fun lt!548055 () Bool)

(assert (=> d!133139 (= lt!548058 lt!548055)))

(declare-fun lt!548056 () Unit!39940)

(declare-fun e!685973 () Unit!39940)

(assert (=> d!133139 (= lt!548056 e!685973)))

(declare-fun c!118729 () Bool)

(assert (=> d!133139 (= c!118729 lt!548055)))

(assert (=> d!133139 (= lt!548055 (containsKey!593 (toList!8949 lt!547782) (select (arr!37683 lt!547687) from!1455)))))

(assert (=> d!133139 (= (contains!6952 lt!547782 (select (arr!37683 lt!547687) from!1455)) lt!548058)))

(declare-fun b!1207810 () Bool)

(declare-fun lt!548057 () Unit!39940)

(assert (=> b!1207810 (= e!685973 lt!548057)))

(assert (=> b!1207810 (= lt!548057 (lemmaContainsKeyImpliesGetValueByKeyDefined!422 (toList!8949 lt!547782) (select (arr!37683 lt!547687) from!1455)))))

(assert (=> b!1207810 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) (select (arr!37683 lt!547687) from!1455)))))

(declare-fun b!1207811 () Bool)

(declare-fun Unit!39969 () Unit!39940)

(assert (=> b!1207811 (= e!685973 Unit!39969)))

(declare-fun b!1207812 () Bool)

(assert (=> b!1207812 (= e!685974 (isDefined!462 (getValueByKey!639 (toList!8949 lt!547782) (select (arr!37683 lt!547687) from!1455))))))

(assert (= (and d!133139 c!118729) b!1207810))

(assert (= (and d!133139 (not c!118729)) b!1207811))

(assert (= (and d!133139 (not res!803025)) b!1207812))

(assert (=> d!133139 m!1112965))

(declare-fun m!1113783 () Bool)

(assert (=> d!133139 m!1113783))

(assert (=> b!1207810 m!1112965))

(declare-fun m!1113785 () Bool)

(assert (=> b!1207810 m!1113785))

(assert (=> b!1207810 m!1112965))

(assert (=> b!1207810 m!1113407))

(assert (=> b!1207810 m!1113407))

(declare-fun m!1113787 () Bool)

(assert (=> b!1207810 m!1113787))

(assert (=> b!1207812 m!1112965))

(assert (=> b!1207812 m!1113407))

(assert (=> b!1207812 m!1113407))

(assert (=> b!1207812 m!1113787))

(assert (=> b!1207336 d!133139))

(assert (=> b!1207423 d!133059))

(assert (=> b!1207423 d!133061))

(declare-fun bm!59005 () Bool)

(declare-fun call!59008 () Bool)

(assert (=> bm!59005 (= call!59008 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1207813 () Bool)

(declare-fun e!685977 () Bool)

(assert (=> b!1207813 (= e!685977 call!59008)))

(declare-fun b!1207814 () Bool)

(declare-fun e!685975 () Bool)

(assert (=> b!1207814 (= e!685975 e!685977)))

(declare-fun lt!548059 () (_ BitVec 64))

(assert (=> b!1207814 (= lt!548059 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!548060 () Unit!39940)

(assert (=> b!1207814 (= lt!548060 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!548059 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1207814 (arrayContainsKey!0 _keys!1208 lt!548059 #b00000000000000000000000000000000)))

(declare-fun lt!548061 () Unit!39940)

(assert (=> b!1207814 (= lt!548061 lt!548060)))

(declare-fun res!803027 () Bool)

(assert (=> b!1207814 (= res!803027 (= (seekEntryOrOpen!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1208 mask!1564) (Found!9935 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1207814 (=> (not res!803027) (not e!685977))))

(declare-fun b!1207815 () Bool)

(assert (=> b!1207815 (= e!685975 call!59008)))

(declare-fun b!1207816 () Bool)

(declare-fun e!685976 () Bool)

(assert (=> b!1207816 (= e!685976 e!685975)))

(declare-fun c!118730 () Bool)

(assert (=> b!1207816 (= c!118730 (validKeyInArray!0 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!133141 () Bool)

(declare-fun res!803026 () Bool)

(assert (=> d!133141 (=> res!803026 e!685976)))

(assert (=> d!133141 (= res!803026 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38220 _keys!1208)))))

(assert (=> d!133141 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564) e!685976)))

(assert (= (and d!133141 (not res!803026)) b!1207816))

(assert (= (and b!1207816 c!118730) b!1207814))

(assert (= (and b!1207816 (not c!118730)) b!1207815))

(assert (= (and b!1207814 res!803027) b!1207813))

(assert (= (or b!1207813 b!1207815) bm!59005))

(declare-fun m!1113789 () Bool)

(assert (=> bm!59005 m!1113789))

(assert (=> b!1207814 m!1113565))

(declare-fun m!1113791 () Bool)

(assert (=> b!1207814 m!1113791))

(declare-fun m!1113793 () Bool)

(assert (=> b!1207814 m!1113793))

(assert (=> b!1207814 m!1113565))

(declare-fun m!1113795 () Bool)

(assert (=> b!1207814 m!1113795))

(assert (=> b!1207816 m!1113565))

(assert (=> b!1207816 m!1113565))

(assert (=> b!1207816 m!1113567))

(assert (=> bm!58969 d!133141))

(declare-fun d!133143 () Bool)

(assert (=> d!133143 (= (apply!1000 lt!547796 (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19248 (getValueByKey!639 (toList!8949 lt!547796) (select (arr!37683 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!34145 () Bool)

(assert (= bs!34145 d!133143))

(assert (=> bs!34145 m!1113019))

(assert (=> bs!34145 m!1113149))

(assert (=> bs!34145 m!1113149))

(declare-fun m!1113797 () Bool)

(assert (=> bs!34145 m!1113797))

(assert (=> b!1207363 d!133143))

(assert (=> b!1207363 d!133075))

(declare-fun mapIsEmpty!47869 () Bool)

(declare-fun mapRes!47869 () Bool)

(assert (=> mapIsEmpty!47869 mapRes!47869))

(declare-fun condMapEmpty!47869 () Bool)

(declare-fun mapDefault!47869 () ValueCell!14625)

(assert (=> mapNonEmpty!47868 (= condMapEmpty!47869 (= mapRest!47868 ((as const (Array (_ BitVec 32) ValueCell!14625)) mapDefault!47869)))))

(declare-fun e!685979 () Bool)

(assert (=> mapNonEmpty!47868 (= tp!90911 (and e!685979 mapRes!47869))))

(declare-fun b!1207817 () Bool)

(declare-fun e!685978 () Bool)

(assert (=> b!1207817 (= e!685978 tp_is_empty!30669)))

(declare-fun mapNonEmpty!47869 () Bool)

(declare-fun tp!90912 () Bool)

(assert (=> mapNonEmpty!47869 (= mapRes!47869 (and tp!90912 e!685978))))

(declare-fun mapKey!47869 () (_ BitVec 32))

(declare-fun mapRest!47869 () (Array (_ BitVec 32) ValueCell!14625))

(declare-fun mapValue!47869 () ValueCell!14625)

(assert (=> mapNonEmpty!47869 (= mapRest!47868 (store mapRest!47869 mapKey!47869 mapValue!47869))))

(declare-fun b!1207818 () Bool)

(assert (=> b!1207818 (= e!685979 tp_is_empty!30669)))

(assert (= (and mapNonEmpty!47868 condMapEmpty!47869) mapIsEmpty!47869))

(assert (= (and mapNonEmpty!47868 (not condMapEmpty!47869)) mapNonEmpty!47869))

(assert (= (and mapNonEmpty!47869 ((_ is ValueCellFull!14625) mapValue!47869)) b!1207817))

(assert (= (and mapNonEmpty!47868 ((_ is ValueCellFull!14625) mapDefault!47869)) b!1207818))

(declare-fun m!1113799 () Bool)

(assert (=> mapNonEmpty!47869 m!1113799))

(declare-fun b_lambda!21481 () Bool)

(assert (= b_lambda!21475 (or (and start!100862 b_free!25965) b_lambda!21481)))

(declare-fun b_lambda!21483 () Bool)

(assert (= b_lambda!21479 (or (and start!100862 b_free!25965) b_lambda!21483)))

(declare-fun b_lambda!21485 () Bool)

(assert (= b_lambda!21459 (or (and start!100862 b_free!25965) b_lambda!21485)))

(declare-fun b_lambda!21487 () Bool)

(assert (= b_lambda!21471 (or (and start!100862 b_free!25965) b_lambda!21487)))

(declare-fun b_lambda!21489 () Bool)

(assert (= b_lambda!21465 (or (and start!100862 b_free!25965) b_lambda!21489)))

(declare-fun b_lambda!21491 () Bool)

(assert (= b_lambda!21469 (or (and start!100862 b_free!25965) b_lambda!21491)))

(declare-fun b_lambda!21493 () Bool)

(assert (= b_lambda!21463 (or (and start!100862 b_free!25965) b_lambda!21493)))

(declare-fun b_lambda!21495 () Bool)

(assert (= b_lambda!21461 (or (and start!100862 b_free!25965) b_lambda!21495)))

(declare-fun b_lambda!21497 () Bool)

(assert (= b_lambda!21477 (or (and start!100862 b_free!25965) b_lambda!21497)))

(declare-fun b_lambda!21499 () Bool)

(assert (= b_lambda!21467 (or (and start!100862 b_free!25965) b_lambda!21499)))

(declare-fun b_lambda!21501 () Bool)

(assert (= b_lambda!21473 (or (and start!100862 b_free!25965) b_lambda!21501)))

(check-sat (not b!1207718) (not b!1207666) (not b!1207700) (not b!1207777) (not d!133031) (not d!133027) (not d!133079) (not d!133029) (not b!1207491) (not b_lambda!21455) (not b!1207710) (not b!1207799) (not d!132985) (not b!1207674) (not b_lambda!21489) (not bm!59000) (not d!133019) (not b!1207751) (not b!1207501) (not d!133015) (not d!132955) (not d!133137) (not b!1207548) (not d!133107) (not b!1207584) (not bm!58984) (not bm!58983) (not b!1207602) (not b!1207488) (not b!1207788) (not d!133105) (not b!1207504) (not b!1207731) (not b!1207801) (not b!1207568) (not b_lambda!21501) (not d!133077) (not b!1207555) (not d!133089) (not b!1207578) (not b_lambda!21493) (not b!1207616) (not b!1207465) (not b!1207676) (not b!1207457) (not b_lambda!21481) (not d!133081) (not b!1207686) (not b!1207552) (not b!1207691) (not b!1207490) (not b!1207467) (not b_lambda!21487) (not b!1207779) (not d!133139) (not d!132975) (not b!1207583) (not b!1207557) (not b!1207630) (not d!133071) (not b!1207757) (not b!1207618) (not b!1207599) (not b!1207702) (not bm!58986) (not b!1207460) (not b!1207749) (not d!133121) (not b!1207708) (not d!133043) (not bm!58999) (not b!1207459) (not b!1207703) (not b!1207685) (not b!1207466) (not b!1207609) (not b!1207588) (not b!1207695) (not b!1207808) (not b!1207816) (not bm!58985) (not b!1207681) (not d!133007) (not d!132969) (not d!133115) (not b!1207796) (not b!1207760) (not d!133123) (not b!1207591) (not b!1207515) (not b!1207571) (not d!133021) (not b!1207581) (not d!132997) (not d!133057) (not d!133129) (not b!1207786) (not b!1207665) (not b_lambda!21457) (not d!133133) (not b!1207688) (not b!1207574) (not b!1207784) (not b!1207706) (not b!1207503) (not b!1207671) (not bm!58988) (not b!1207658) (not d!133005) (not b!1207701) (not d!132973) (not bm!59001) (not b!1207721) (not d!133009) (not d!133049) (not b!1207683) (not b!1207810) (not bm!59005) (not b!1207694) (not b!1207608) (not d!132947) (not b!1207660) (not d!133143) (not d!132951) (not d!132991) (not d!133003) (not d!133073) (not b!1207803) (not b!1207493) (not b!1207715) (not d!133011) (not b!1207812) (not b!1207619) (not b!1207585) (not d!132943) (not b!1207735) (not b!1207537) tp_is_empty!30669 b_and!42991 (not b!1207746) (not b!1207753) (not b!1207486) (not b!1207663) (not d!132989) (not b_lambda!21443) (not b!1207719) (not b!1207524) (not bm!59004) (not b!1207523) (not b!1207610) (not b!1207680) (not b!1207566) (not b_lambda!21441) (not d!133087) (not b!1207494) (not b!1207598) (not b!1207668) (not bm!58995) (not b_lambda!21495) (not b!1207587) (not b!1207476) (not b_lambda!21447) (not b!1207535) (not d!133095) (not d!133047) (not b_lambda!21485) (not d!132979) (not b!1207500) (not d!132963) (not b!1207562) (not d!133033) (not b!1207575) (not d!133053) (not b!1207603) (not b!1207733) (not b_lambda!21445) (not d!133017) (not d!132983) (not b!1207624) (not b!1207579) (not b!1207652) (not b!1207726) (not d!133109) (not b!1207600) (not b!1207565) (not d!133083) (not b!1207492) (not b!1207693) (not b!1207814) (not d!132971) (not b_next!25965) (not b!1207461) (not b_lambda!21491) (not b!1207678) (not b_lambda!21421) (not b!1207468) (not d!133001) (not d!133023) (not b!1207728) (not b!1207512) (not d!132995) (not d!133127) (not b!1207590) (not bm!58998) (not b!1207781) (not d!133117) (not b!1207592) (not d!133051) (not b_lambda!21449) (not b!1207621) (not b!1207570) (not b!1207502) (not b!1207722) (not b!1207495) (not b!1207564) (not b!1207724) (not d!133111) (not b!1207752) (not b!1207755) (not b!1207496) (not d!132941) (not b!1207611) (not bm!58978) (not b!1207487) (not b!1207469) (not d!133037) (not b_lambda!21451) (not d!133063) (not b!1207758) (not b!1207580) (not b!1207631) (not b!1207534) (not b!1207597) (not d!133035) (not b_lambda!21453) (not d!133041) (not b!1207794) (not b!1207596) (not b!1207558) (not b_lambda!21483) (not b!1207471) (not b!1207612) (not b!1207572) (not b!1207697) (not b!1207563) (not b!1207522) (not b!1207699) (not d!133025) (not b!1207526) (not b!1207577) (not b_lambda!21497) (not d!133059) (not mapNonEmpty!47869) (not b!1207513) (not b!1207670) (not b!1207532) (not d!133055) (not d!132957) (not b!1207690) (not b!1207614) (not d!132959) (not b!1207604) (not b!1207506) (not b!1207669) (not d!133113) (not b!1207521) (not bm!58987) (not b_lambda!21499) (not d!133065) (not b!1207787))
(check-sat b_and!42991 (not b_next!25965))
