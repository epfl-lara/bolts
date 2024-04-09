; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98452 () Bool)

(assert start!98452)

(declare-fun b_free!24021 () Bool)

(declare-fun b_next!24021 () Bool)

(assert (=> start!98452 (= b_free!24021 (not b_next!24021))))

(declare-fun tp!84774 () Bool)

(declare-fun b_and!38905 () Bool)

(assert (=> start!98452 (= tp!84774 b_and!38905)))

(declare-fun bm!49790 () Bool)

(declare-datatypes ((Unit!37159 0))(
  ( (Unit!37160) )
))
(declare-fun call!49796 () Unit!37159)

(declare-fun call!49797 () Unit!37159)

(assert (=> bm!49790 (= call!49796 call!49797)))

(declare-fun bm!49791 () Bool)

(declare-fun call!49794 () Bool)

(declare-fun call!49800 () Bool)

(assert (=> bm!49791 (= call!49794 call!49800)))

(declare-fun b!1136153 () Bool)

(declare-fun e!646584 () Bool)

(declare-datatypes ((V!43195 0))(
  ( (V!43196 (val!14332 Int)) )
))
(declare-datatypes ((tuple2!18186 0))(
  ( (tuple2!18187 (_1!9103 (_ BitVec 64)) (_2!9103 V!43195)) )
))
(declare-datatypes ((List!24996 0))(
  ( (Nil!24993) (Cons!24992 (h!26201 tuple2!18186) (t!36016 List!24996)) )
))
(declare-datatypes ((ListLongMap!16167 0))(
  ( (ListLongMap!16168 (toList!8099 List!24996)) )
))
(declare-fun call!49795 () ListLongMap!16167)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!49793 () ListLongMap!16167)

(declare-fun -!1210 (ListLongMap!16167 (_ BitVec 64)) ListLongMap!16167)

(assert (=> b!1136153 (= e!646584 (= call!49795 (-!1210 call!49793 k0!934)))))

(declare-fun b!1136154 () Bool)

(declare-fun c!111008 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!505124 () Bool)

(assert (=> b!1136154 (= c!111008 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505124))))

(declare-fun e!646585 () Unit!37159)

(declare-fun e!646583 () Unit!37159)

(assert (=> b!1136154 (= e!646585 e!646583)))

(declare-fun b!1136155 () Bool)

(declare-fun res!758402 () Bool)

(declare-fun e!646587 () Bool)

(assert (=> b!1136155 (=> (not res!758402) (not e!646587))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136155 (= res!758402 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!43195)

(declare-datatypes ((array!73924 0))(
  ( (array!73925 (arr!35609 (Array (_ BitVec 32) (_ BitVec 64))) (size!36146 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73924)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13566 0))(
  ( (ValueCellFull!13566 (v!16970 V!43195)) (EmptyCell!13566) )
))
(declare-datatypes ((array!73926 0))(
  ( (array!73927 (arr!35610 (Array (_ BitVec 32) ValueCell!13566)) (size!36147 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73926)

(declare-fun minValue!944 () V!43195)

(declare-fun bm!49792 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4547 (array!73924 array!73926 (_ BitVec 32) (_ BitVec 32) V!43195 V!43195 (_ BitVec 32) Int) ListLongMap!16167)

(assert (=> bm!49792 (= call!49793 (getCurrentListMapNoExtraKeys!4547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136156 () Bool)

(declare-fun e!646574 () Bool)

(declare-fun e!646590 () Bool)

(assert (=> b!1136156 (= e!646574 e!646590)))

(declare-fun res!758414 () Bool)

(assert (=> b!1136156 (=> res!758414 e!646590)))

(assert (=> b!1136156 (= res!758414 (not (= (select (arr!35609 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1136156 e!646584))

(declare-fun c!111011 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136156 (= c!111011 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505116 () Unit!37159)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!466 (array!73924 array!73926 (_ BitVec 32) (_ BitVec 32) V!43195 V!43195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37159)

(assert (=> b!1136156 (= lt!505116 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!466 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136157 () Bool)

(declare-fun res!758408 () Bool)

(declare-fun e!646579 () Bool)

(assert (=> b!1136157 (=> (not res!758408) (not e!646579))))

(declare-fun lt!505112 () array!73924)

(declare-datatypes ((List!24997 0))(
  ( (Nil!24994) (Cons!24993 (h!26202 (_ BitVec 64)) (t!36017 List!24997)) )
))
(declare-fun arrayNoDuplicates!0 (array!73924 (_ BitVec 32) List!24997) Bool)

(assert (=> b!1136157 (= res!758408 (arrayNoDuplicates!0 lt!505112 #b00000000000000000000000000000000 Nil!24994))))

(declare-fun b!1136158 () Bool)

(declare-fun res!758403 () Bool)

(declare-fun e!646582 () Bool)

(assert (=> b!1136158 (=> res!758403 e!646582)))

(declare-fun contains!6607 (List!24997 (_ BitVec 64)) Bool)

(assert (=> b!1136158 (= res!758403 (contains!6607 Nil!24994 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1136159 () Bool)

(declare-fun e!646576 () Bool)

(assert (=> b!1136159 (= e!646579 (not e!646576))))

(declare-fun res!758406 () Bool)

(assert (=> b!1136159 (=> res!758406 e!646576)))

(assert (=> b!1136159 (= res!758406 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136159 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505114 () Unit!37159)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73924 (_ BitVec 64) (_ BitVec 32)) Unit!37159)

(assert (=> b!1136159 (= lt!505114 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1136160 () Bool)

(declare-fun e!646575 () Bool)

(declare-fun tp_is_empty!28551 () Bool)

(assert (=> b!1136160 (= e!646575 tp_is_empty!28551)))

(declare-fun b!1136161 () Bool)

(declare-fun res!758413 () Bool)

(assert (=> b!1136161 (=> (not res!758413) (not e!646587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136161 (= res!758413 (validKeyInArray!0 k0!934))))

(declare-fun bm!49793 () Bool)

(declare-fun call!49799 () ListLongMap!16167)

(declare-fun call!49798 () ListLongMap!16167)

(assert (=> bm!49793 (= call!49799 call!49798)))

(declare-fun b!1136162 () Bool)

(assert (=> b!1136162 (= e!646576 e!646574)))

(declare-fun res!758405 () Bool)

(assert (=> b!1136162 (=> res!758405 e!646574)))

(assert (=> b!1136162 (= res!758405 (not (= from!1455 i!673)))))

(declare-fun lt!505128 () array!73926)

(declare-fun lt!505115 () ListLongMap!16167)

(assert (=> b!1136162 (= lt!505115 (getCurrentListMapNoExtraKeys!4547 lt!505112 lt!505128 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2611 (Int (_ BitVec 64)) V!43195)

(assert (=> b!1136162 (= lt!505128 (array!73927 (store (arr!35610 _values!996) i!673 (ValueCellFull!13566 (dynLambda!2611 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36147 _values!996)))))

(declare-fun lt!505127 () ListLongMap!16167)

(assert (=> b!1136162 (= lt!505127 (getCurrentListMapNoExtraKeys!4547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1136163 () Bool)

(declare-fun e!646580 () Bool)

(assert (=> b!1136163 (= e!646580 tp_is_empty!28551)))

(declare-fun res!758399 () Bool)

(assert (=> start!98452 (=> (not res!758399) (not e!646587))))

(assert (=> start!98452 (= res!758399 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36146 _keys!1208))))))

(assert (=> start!98452 e!646587))

(assert (=> start!98452 tp_is_empty!28551))

(declare-fun array_inv!27178 (array!73924) Bool)

(assert (=> start!98452 (array_inv!27178 _keys!1208)))

(assert (=> start!98452 true))

(assert (=> start!98452 tp!84774))

(declare-fun e!646586 () Bool)

(declare-fun array_inv!27179 (array!73926) Bool)

(assert (=> start!98452 (and (array_inv!27179 _values!996) e!646586)))

(declare-fun b!1136164 () Bool)

(declare-fun lt!505125 () Unit!37159)

(assert (=> b!1136164 (= e!646583 lt!505125)))

(assert (=> b!1136164 (= lt!505125 call!49796)))

(assert (=> b!1136164 call!49794))

(declare-fun b!1136165 () Bool)

(declare-fun mapRes!44651 () Bool)

(assert (=> b!1136165 (= e!646586 (and e!646580 mapRes!44651))))

(declare-fun condMapEmpty!44651 () Bool)

(declare-fun mapDefault!44651 () ValueCell!13566)

(assert (=> b!1136165 (= condMapEmpty!44651 (= (arr!35610 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13566)) mapDefault!44651)))))

(declare-fun b!1136166 () Bool)

(declare-fun res!758398 () Bool)

(assert (=> b!1136166 (=> (not res!758398) (not e!646587))))

(assert (=> b!1136166 (= res!758398 (= (select (arr!35609 _keys!1208) i!673) k0!934))))

(declare-fun b!1136167 () Bool)

(assert (=> b!1136167 call!49794))

(declare-fun lt!505123 () Unit!37159)

(assert (=> b!1136167 (= lt!505123 call!49796)))

(assert (=> b!1136167 (= e!646585 lt!505123)))

(declare-fun b!1136168 () Bool)

(declare-fun e!646589 () Bool)

(assert (=> b!1136168 (= e!646589 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505124) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136169 () Bool)

(assert (=> b!1136169 (= e!646589 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136170 () Bool)

(declare-fun e!646581 () Bool)

(assert (=> b!1136170 (= e!646581 e!646582)))

(declare-fun res!758409 () Bool)

(assert (=> b!1136170 (=> res!758409 e!646582)))

(assert (=> b!1136170 (= res!758409 (or (bvsge (size!36146 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36146 _keys!1208)) (bvsge from!1455 (size!36146 _keys!1208))))))

(assert (=> b!1136170 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24994)))

(declare-fun lt!505118 () Unit!37159)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73924 (_ BitVec 32) (_ BitVec 32)) Unit!37159)

(assert (=> b!1136170 (= lt!505118 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646577 () Bool)

(assert (=> b!1136170 e!646577))

(declare-fun res!758407 () Bool)

(assert (=> b!1136170 (=> (not res!758407) (not e!646577))))

(assert (=> b!1136170 (= res!758407 e!646589)))

(declare-fun c!111010 () Bool)

(assert (=> b!1136170 (= c!111010 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!505120 () Unit!37159)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!360 (array!73924 array!73926 (_ BitVec 32) (_ BitVec 32) V!43195 V!43195 (_ BitVec 64) (_ BitVec 32) Int) Unit!37159)

(assert (=> b!1136170 (= lt!505120 (lemmaListMapContainsThenArrayContainsFrom!360 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!505122 () Unit!37159)

(declare-fun e!646588 () Unit!37159)

(assert (=> b!1136170 (= lt!505122 e!646588)))

(declare-fun c!111012 () Bool)

(assert (=> b!1136170 (= c!111012 (and (not lt!505124) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1136170 (= lt!505124 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!505119 () ListLongMap!16167)

(declare-fun lt!505113 () ListLongMap!16167)

(declare-fun c!111009 () Bool)

(declare-fun bm!49794 () Bool)

(declare-fun +!3454 (ListLongMap!16167 tuple2!18186) ListLongMap!16167)

(assert (=> bm!49794 (= call!49798 (+!3454 (ite c!111012 lt!505113 lt!505119) (ite c!111012 (tuple2!18187 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111009 (tuple2!18187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18187 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1136171 () Bool)

(assert (=> b!1136171 (= e!646587 e!646579)))

(declare-fun res!758404 () Bool)

(assert (=> b!1136171 (=> (not res!758404) (not e!646579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73924 (_ BitVec 32)) Bool)

(assert (=> b!1136171 (= res!758404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505112 mask!1564))))

(assert (=> b!1136171 (= lt!505112 (array!73925 (store (arr!35609 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36146 _keys!1208)))))

(declare-fun bm!49795 () Bool)

(declare-fun contains!6608 (ListLongMap!16167 (_ BitVec 64)) Bool)

(assert (=> bm!49795 (= call!49800 (contains!6608 (ite c!111012 lt!505113 call!49799) k0!934))))

(declare-fun bm!49796 () Bool)

(assert (=> bm!49796 (= call!49795 (getCurrentListMapNoExtraKeys!4547 lt!505112 lt!505128 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136172 () Bool)

(declare-fun lt!505117 () Unit!37159)

(assert (=> b!1136172 (= e!646588 lt!505117)))

(declare-fun lt!505126 () Unit!37159)

(declare-fun addStillContains!754 (ListLongMap!16167 (_ BitVec 64) V!43195 (_ BitVec 64)) Unit!37159)

(assert (=> b!1136172 (= lt!505126 (addStillContains!754 lt!505119 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1136172 (= lt!505113 (+!3454 lt!505119 (tuple2!18187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1136172 call!49800))

(assert (=> b!1136172 (= lt!505117 call!49797)))

(assert (=> b!1136172 (contains!6608 call!49798 k0!934)))

(declare-fun b!1136173 () Bool)

(declare-fun Unit!37161 () Unit!37159)

(assert (=> b!1136173 (= e!646583 Unit!37161)))

(declare-fun mapIsEmpty!44651 () Bool)

(assert (=> mapIsEmpty!44651 mapRes!44651))

(declare-fun b!1136174 () Bool)

(declare-fun res!758412 () Bool)

(assert (=> b!1136174 (=> (not res!758412) (not e!646587))))

(assert (=> b!1136174 (= res!758412 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24994))))

(declare-fun b!1136175 () Bool)

(assert (=> b!1136175 (= e!646582 true)))

(declare-fun lt!505121 () Bool)

(assert (=> b!1136175 (= lt!505121 (contains!6607 Nil!24994 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1136176 () Bool)

(declare-fun res!758400 () Bool)

(assert (=> b!1136176 (=> (not res!758400) (not e!646587))))

(assert (=> b!1136176 (= res!758400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1136177 () Bool)

(assert (=> b!1136177 (= e!646590 e!646581)))

(declare-fun res!758397 () Bool)

(assert (=> b!1136177 (=> res!758397 e!646581)))

(assert (=> b!1136177 (= res!758397 (not (contains!6608 lt!505119 k0!934)))))

(assert (=> b!1136177 (= lt!505119 (getCurrentListMapNoExtraKeys!4547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136178 () Bool)

(declare-fun res!758411 () Bool)

(assert (=> b!1136178 (=> (not res!758411) (not e!646587))))

(assert (=> b!1136178 (= res!758411 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36146 _keys!1208))))))

(declare-fun b!1136179 () Bool)

(declare-fun res!758410 () Bool)

(assert (=> b!1136179 (=> res!758410 e!646582)))

(declare-fun noDuplicate!1621 (List!24997) Bool)

(assert (=> b!1136179 (= res!758410 (not (noDuplicate!1621 Nil!24994)))))

(declare-fun b!1136180 () Bool)

(assert (=> b!1136180 (= e!646584 (= call!49795 call!49793))))

(declare-fun mapNonEmpty!44651 () Bool)

(declare-fun tp!84775 () Bool)

(assert (=> mapNonEmpty!44651 (= mapRes!44651 (and tp!84775 e!646575))))

(declare-fun mapRest!44651 () (Array (_ BitVec 32) ValueCell!13566))

(declare-fun mapValue!44651 () ValueCell!13566)

(declare-fun mapKey!44651 () (_ BitVec 32))

(assert (=> mapNonEmpty!44651 (= (arr!35610 _values!996) (store mapRest!44651 mapKey!44651 mapValue!44651))))

(declare-fun b!1136181 () Bool)

(assert (=> b!1136181 (= e!646588 e!646585)))

(assert (=> b!1136181 (= c!111009 (and (not lt!505124) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!49797 () Bool)

(assert (=> bm!49797 (= call!49797 (addStillContains!754 (ite c!111012 lt!505113 lt!505119) (ite c!111012 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111009 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111012 minValue!944 (ite c!111009 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1136182 () Bool)

(declare-fun res!758401 () Bool)

(assert (=> b!1136182 (=> (not res!758401) (not e!646587))))

(assert (=> b!1136182 (= res!758401 (and (= (size!36147 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36146 _keys!1208) (size!36147 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136183 () Bool)

(assert (=> b!1136183 (= e!646577 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98452 res!758399) b!1136155))

(assert (= (and b!1136155 res!758402) b!1136182))

(assert (= (and b!1136182 res!758401) b!1136176))

(assert (= (and b!1136176 res!758400) b!1136174))

(assert (= (and b!1136174 res!758412) b!1136178))

(assert (= (and b!1136178 res!758411) b!1136161))

(assert (= (and b!1136161 res!758413) b!1136166))

(assert (= (and b!1136166 res!758398) b!1136171))

(assert (= (and b!1136171 res!758404) b!1136157))

(assert (= (and b!1136157 res!758408) b!1136159))

(assert (= (and b!1136159 (not res!758406)) b!1136162))

(assert (= (and b!1136162 (not res!758405)) b!1136156))

(assert (= (and b!1136156 c!111011) b!1136153))

(assert (= (and b!1136156 (not c!111011)) b!1136180))

(assert (= (or b!1136153 b!1136180) bm!49796))

(assert (= (or b!1136153 b!1136180) bm!49792))

(assert (= (and b!1136156 (not res!758414)) b!1136177))

(assert (= (and b!1136177 (not res!758397)) b!1136170))

(assert (= (and b!1136170 c!111012) b!1136172))

(assert (= (and b!1136170 (not c!111012)) b!1136181))

(assert (= (and b!1136181 c!111009) b!1136167))

(assert (= (and b!1136181 (not c!111009)) b!1136154))

(assert (= (and b!1136154 c!111008) b!1136164))

(assert (= (and b!1136154 (not c!111008)) b!1136173))

(assert (= (or b!1136167 b!1136164) bm!49790))

(assert (= (or b!1136167 b!1136164) bm!49793))

(assert (= (or b!1136167 b!1136164) bm!49791))

(assert (= (or b!1136172 bm!49791) bm!49795))

(assert (= (or b!1136172 bm!49790) bm!49797))

(assert (= (or b!1136172 bm!49793) bm!49794))

(assert (= (and b!1136170 c!111010) b!1136169))

(assert (= (and b!1136170 (not c!111010)) b!1136168))

(assert (= (and b!1136170 res!758407) b!1136183))

(assert (= (and b!1136170 (not res!758409)) b!1136179))

(assert (= (and b!1136179 (not res!758410)) b!1136158))

(assert (= (and b!1136158 (not res!758403)) b!1136175))

(assert (= (and b!1136165 condMapEmpty!44651) mapIsEmpty!44651))

(assert (= (and b!1136165 (not condMapEmpty!44651)) mapNonEmpty!44651))

(get-info :version)

(assert (= (and mapNonEmpty!44651 ((_ is ValueCellFull!13566) mapValue!44651)) b!1136160))

(assert (= (and b!1136165 ((_ is ValueCellFull!13566) mapDefault!44651)) b!1136163))

(assert (= start!98452 b!1136165))

(declare-fun b_lambda!19145 () Bool)

(assert (=> (not b_lambda!19145) (not b!1136162)))

(declare-fun t!36015 () Bool)

(declare-fun tb!8841 () Bool)

(assert (=> (and start!98452 (= defaultEntry!1004 defaultEntry!1004) t!36015) tb!8841))

(declare-fun result!18239 () Bool)

(assert (=> tb!8841 (= result!18239 tp_is_empty!28551)))

(assert (=> b!1136162 t!36015))

(declare-fun b_and!38907 () Bool)

(assert (= b_and!38905 (and (=> t!36015 result!18239) b_and!38907)))

(declare-fun m!1048587 () Bool)

(assert (=> b!1136155 m!1048587))

(declare-fun m!1048589 () Bool)

(assert (=> mapNonEmpty!44651 m!1048589))

(declare-fun m!1048591 () Bool)

(assert (=> bm!49792 m!1048591))

(declare-fun m!1048593 () Bool)

(assert (=> bm!49795 m!1048593))

(declare-fun m!1048595 () Bool)

(assert (=> b!1136169 m!1048595))

(assert (=> b!1136183 m!1048595))

(declare-fun m!1048597 () Bool)

(assert (=> b!1136170 m!1048597))

(declare-fun m!1048599 () Bool)

(assert (=> b!1136170 m!1048599))

(declare-fun m!1048601 () Bool)

(assert (=> b!1136170 m!1048601))

(declare-fun m!1048603 () Bool)

(assert (=> start!98452 m!1048603))

(declare-fun m!1048605 () Bool)

(assert (=> start!98452 m!1048605))

(declare-fun m!1048607 () Bool)

(assert (=> b!1136171 m!1048607))

(declare-fun m!1048609 () Bool)

(assert (=> b!1136171 m!1048609))

(declare-fun m!1048611 () Bool)

(assert (=> b!1136156 m!1048611))

(declare-fun m!1048613 () Bool)

(assert (=> b!1136156 m!1048613))

(declare-fun m!1048615 () Bool)

(assert (=> b!1136176 m!1048615))

(declare-fun m!1048617 () Bool)

(assert (=> b!1136159 m!1048617))

(declare-fun m!1048619 () Bool)

(assert (=> b!1136159 m!1048619))

(declare-fun m!1048621 () Bool)

(assert (=> b!1136153 m!1048621))

(declare-fun m!1048623 () Bool)

(assert (=> b!1136177 m!1048623))

(assert (=> b!1136177 m!1048591))

(declare-fun m!1048625 () Bool)

(assert (=> bm!49797 m!1048625))

(declare-fun m!1048627 () Bool)

(assert (=> bm!49794 m!1048627))

(declare-fun m!1048629 () Bool)

(assert (=> bm!49796 m!1048629))

(declare-fun m!1048631 () Bool)

(assert (=> b!1136161 m!1048631))

(declare-fun m!1048633 () Bool)

(assert (=> b!1136175 m!1048633))

(declare-fun m!1048635 () Bool)

(assert (=> b!1136157 m!1048635))

(declare-fun m!1048637 () Bool)

(assert (=> b!1136172 m!1048637))

(declare-fun m!1048639 () Bool)

(assert (=> b!1136172 m!1048639))

(declare-fun m!1048641 () Bool)

(assert (=> b!1136172 m!1048641))

(declare-fun m!1048643 () Bool)

(assert (=> b!1136158 m!1048643))

(declare-fun m!1048645 () Bool)

(assert (=> b!1136162 m!1048645))

(declare-fun m!1048647 () Bool)

(assert (=> b!1136162 m!1048647))

(declare-fun m!1048649 () Bool)

(assert (=> b!1136162 m!1048649))

(declare-fun m!1048651 () Bool)

(assert (=> b!1136162 m!1048651))

(declare-fun m!1048653 () Bool)

(assert (=> b!1136174 m!1048653))

(declare-fun m!1048655 () Bool)

(assert (=> b!1136179 m!1048655))

(declare-fun m!1048657 () Bool)

(assert (=> b!1136166 m!1048657))

(check-sat (not b!1136174) (not b!1136177) (not b!1136171) (not bm!49797) (not b!1136183) (not b!1136175) (not b!1136169) (not b!1136161) (not b!1136170) b_and!38907 (not b_lambda!19145) (not b!1136179) tp_is_empty!28551 (not bm!49792) (not b_next!24021) (not mapNonEmpty!44651) (not b!1136162) (not b!1136159) (not b!1136157) (not b!1136176) (not bm!49796) (not bm!49794) (not b!1136172) (not b!1136155) (not b!1136158) (not b!1136153) (not bm!49795) (not b!1136156) (not start!98452))
(check-sat b_and!38907 (not b_next!24021))
