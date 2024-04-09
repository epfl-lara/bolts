; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98226 () Bool)

(assert start!98226)

(declare-fun b_free!23891 () Bool)

(declare-fun b_next!23891 () Bool)

(assert (=> start!98226 (= b_free!23891 (not b_next!23891))))

(declare-fun tp!84377 () Bool)

(declare-fun b_and!38587 () Bool)

(assert (=> start!98226 (= tp!84377 b_and!38587)))

(declare-fun b!1129810 () Bool)

(declare-fun res!755037 () Bool)

(declare-fun e!643031 () Bool)

(assert (=> b!1129810 (=> (not res!755037) (not e!643031))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129810 (= res!755037 (validMask!0 mask!1564))))

(declare-fun b!1129811 () Bool)

(declare-fun e!643035 () Bool)

(declare-fun e!643030 () Bool)

(assert (=> b!1129811 (= e!643035 e!643030)))

(declare-fun res!755029 () Bool)

(assert (=> b!1129811 (=> res!755029 e!643030)))

(declare-datatypes ((array!73660 0))(
  ( (array!73661 (arr!35479 (Array (_ BitVec 32) (_ BitVec 64))) (size!36016 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73660)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1129811 (= res!755029 (not (= (select (arr!35479 _keys!1208) from!1455) k!934)))))

(declare-fun e!643042 () Bool)

(assert (=> b!1129811 e!643042))

(declare-fun c!109894 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129811 (= c!109894 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43021 0))(
  ( (V!43022 (val!14267 Int)) )
))
(declare-fun zeroValue!944 () V!43021)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36962 0))(
  ( (Unit!36963) )
))
(declare-fun lt!501630 () Unit!36962)

(declare-datatypes ((ValueCell!13501 0))(
  ( (ValueCellFull!13501 (v!16901 V!43021)) (EmptyCell!13501) )
))
(declare-datatypes ((array!73662 0))(
  ( (array!73663 (arr!35480 (Array (_ BitVec 32) ValueCell!13501)) (size!36017 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73662)

(declare-fun minValue!944 () V!43021)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!418 (array!73660 array!73662 (_ BitVec 32) (_ BitVec 32) V!43021 V!43021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36962)

(assert (=> b!1129811 (= lt!501630 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!418 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44449 () Bool)

(declare-fun mapRes!44449 () Bool)

(assert (=> mapIsEmpty!44449 mapRes!44449))

(declare-fun b!1129812 () Bool)

(declare-fun res!755023 () Bool)

(declare-fun e!643043 () Bool)

(assert (=> b!1129812 (=> (not res!755023) (not e!643043))))

(declare-fun lt!501629 () array!73660)

(declare-datatypes ((List!24877 0))(
  ( (Nil!24874) (Cons!24873 (h!26082 (_ BitVec 64)) (t!35767 List!24877)) )
))
(declare-fun arrayNoDuplicates!0 (array!73660 (_ BitVec 32) List!24877) Bool)

(assert (=> b!1129812 (= res!755023 (arrayNoDuplicates!0 lt!501629 #b00000000000000000000000000000000 Nil!24874))))

(declare-fun b!1129813 () Bool)

(declare-fun e!643029 () Bool)

(declare-fun e!643037 () Bool)

(assert (=> b!1129813 (= e!643029 e!643037)))

(declare-fun res!755025 () Bool)

(assert (=> b!1129813 (=> res!755025 e!643037)))

(assert (=> b!1129813 (= res!755025 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36016 _keys!1208))))))

(declare-fun lt!501636 () Unit!36962)

(declare-fun e!643032 () Unit!36962)

(assert (=> b!1129813 (= lt!501636 e!643032)))

(declare-fun c!109895 () Bool)

(declare-fun lt!501634 () Bool)

(assert (=> b!1129813 (= c!109895 (and (not lt!501634) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129813 (= lt!501634 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!18058 0))(
  ( (tuple2!18059 (_1!9039 (_ BitVec 64)) (_2!9039 V!43021)) )
))
(declare-datatypes ((List!24878 0))(
  ( (Nil!24875) (Cons!24874 (h!26083 tuple2!18058) (t!35768 List!24878)) )
))
(declare-datatypes ((ListLongMap!16039 0))(
  ( (ListLongMap!16040 (toList!8035 List!24878)) )
))
(declare-fun lt!501635 () ListLongMap!16039)

(declare-fun call!48172 () ListLongMap!16039)

(declare-fun bm!48163 () Bool)

(declare-fun call!48171 () Bool)

(declare-fun contains!6529 (ListLongMap!16039 (_ BitVec 64)) Bool)

(assert (=> bm!48163 (= call!48171 (contains!6529 (ite c!109895 lt!501635 call!48172) k!934))))

(declare-fun bm!48164 () Bool)

(declare-fun call!48173 () Bool)

(assert (=> bm!48164 (= call!48173 call!48171)))

(declare-fun b!1129815 () Bool)

(declare-fun e!643038 () Unit!36962)

(assert (=> b!1129815 (= e!643032 e!643038)))

(declare-fun c!109893 () Bool)

(assert (=> b!1129815 (= c!109893 (and (not lt!501634) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48165 () Bool)

(declare-fun call!48168 () Unit!36962)

(declare-fun lt!501633 () ListLongMap!16039)

(declare-fun addStillContains!702 (ListLongMap!16039 (_ BitVec 64) V!43021 (_ BitVec 64)) Unit!36962)

(assert (=> bm!48165 (= call!48168 (addStillContains!702 lt!501633 (ite (or c!109895 c!109893) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109895 c!109893) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!48166 () Bool)

(declare-fun call!48169 () Unit!36962)

(assert (=> bm!48166 (= call!48169 call!48168)))

(declare-fun bm!48167 () Bool)

(declare-fun call!48170 () ListLongMap!16039)

(assert (=> bm!48167 (= call!48172 call!48170)))

(declare-fun b!1129816 () Bool)

(declare-fun res!755035 () Bool)

(assert (=> b!1129816 (=> (not res!755035) (not e!643031))))

(assert (=> b!1129816 (= res!755035 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24874))))

(declare-fun call!48167 () ListLongMap!16039)

(declare-fun call!48166 () ListLongMap!16039)

(declare-fun b!1129817 () Bool)

(declare-fun -!1164 (ListLongMap!16039 (_ BitVec 64)) ListLongMap!16039)

(assert (=> b!1129817 (= e!643042 (= call!48166 (-!1164 call!48167 k!934)))))

(declare-fun b!1129818 () Bool)

(declare-fun lt!501631 () Unit!36962)

(assert (=> b!1129818 (= e!643032 lt!501631)))

(declare-fun lt!501628 () Unit!36962)

(assert (=> b!1129818 (= lt!501628 call!48168)))

(declare-fun +!3402 (ListLongMap!16039 tuple2!18058) ListLongMap!16039)

(assert (=> b!1129818 (= lt!501635 (+!3402 lt!501633 (tuple2!18059 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1129818 call!48171))

(assert (=> b!1129818 (= lt!501631 (addStillContains!702 lt!501635 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1129818 (contains!6529 call!48170 k!934)))

(declare-fun b!1129819 () Bool)

(declare-fun e!643041 () Bool)

(declare-fun tp_is_empty!28421 () Bool)

(assert (=> b!1129819 (= e!643041 tp_is_empty!28421)))

(declare-fun b!1129820 () Bool)

(declare-fun res!755032 () Bool)

(assert (=> b!1129820 (=> (not res!755032) (not e!643031))))

(assert (=> b!1129820 (= res!755032 (and (= (size!36017 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36016 _keys!1208) (size!36017 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129814 () Bool)

(assert (=> b!1129814 (= e!643031 e!643043)))

(declare-fun res!755030 () Bool)

(assert (=> b!1129814 (=> (not res!755030) (not e!643043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73660 (_ BitVec 32)) Bool)

(assert (=> b!1129814 (= res!755030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501629 mask!1564))))

(assert (=> b!1129814 (= lt!501629 (array!73661 (store (arr!35479 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36016 _keys!1208)))))

(declare-fun res!755028 () Bool)

(assert (=> start!98226 (=> (not res!755028) (not e!643031))))

(assert (=> start!98226 (= res!755028 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36016 _keys!1208))))))

(assert (=> start!98226 e!643031))

(assert (=> start!98226 tp_is_empty!28421))

(declare-fun array_inv!27084 (array!73660) Bool)

(assert (=> start!98226 (array_inv!27084 _keys!1208)))

(assert (=> start!98226 true))

(assert (=> start!98226 tp!84377))

(declare-fun e!643040 () Bool)

(declare-fun array_inv!27085 (array!73662) Bool)

(assert (=> start!98226 (and (array_inv!27085 _values!996) e!643040)))

(declare-fun b!1129821 () Bool)

(declare-fun e!643033 () Bool)

(assert (=> b!1129821 (= e!643043 (not e!643033))))

(declare-fun res!755034 () Bool)

(assert (=> b!1129821 (=> res!755034 e!643033)))

(assert (=> b!1129821 (= res!755034 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129821 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501625 () Unit!36962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73660 (_ BitVec 64) (_ BitVec 32)) Unit!36962)

(assert (=> b!1129821 (= lt!501625 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1129822 () Bool)

(assert (=> b!1129822 (= e!643030 e!643029)))

(declare-fun res!755036 () Bool)

(assert (=> b!1129822 (=> res!755036 e!643029)))

(assert (=> b!1129822 (= res!755036 (not (contains!6529 lt!501633 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4488 (array!73660 array!73662 (_ BitVec 32) (_ BitVec 32) V!43021 V!43021 (_ BitVec 32) Int) ListLongMap!16039)

(assert (=> b!1129822 (= lt!501633 (getCurrentListMapNoExtraKeys!4488 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48168 () Bool)

(assert (=> bm!48168 (= call!48167 (getCurrentListMapNoExtraKeys!4488 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129823 () Bool)

(declare-fun c!109892 () Bool)

(assert (=> b!1129823 (= c!109892 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501634))))

(declare-fun e!643039 () Unit!36962)

(assert (=> b!1129823 (= e!643038 e!643039)))

(declare-fun b!1129824 () Bool)

(assert (=> b!1129824 (= e!643037 true)))

(declare-fun lt!501637 () Bool)

(declare-fun getCurrentListMap!4439 (array!73660 array!73662 (_ BitVec 32) (_ BitVec 32) V!43021 V!43021 (_ BitVec 32) Int) ListLongMap!16039)

(assert (=> b!1129824 (= lt!501637 (contains!6529 (getCurrentListMap!4439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1129825 () Bool)

(declare-fun Unit!36964 () Unit!36962)

(assert (=> b!1129825 (= e!643039 Unit!36964)))

(declare-fun b!1129826 () Bool)

(declare-fun res!755033 () Bool)

(assert (=> b!1129826 (=> (not res!755033) (not e!643031))))

(assert (=> b!1129826 (= res!755033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129827 () Bool)

(declare-fun res!755026 () Bool)

(assert (=> b!1129827 (=> (not res!755026) (not e!643031))))

(assert (=> b!1129827 (= res!755026 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36016 _keys!1208))))))

(declare-fun b!1129828 () Bool)

(declare-fun e!643034 () Bool)

(assert (=> b!1129828 (= e!643034 tp_is_empty!28421)))

(declare-fun b!1129829 () Bool)

(assert (=> b!1129829 (= e!643040 (and e!643041 mapRes!44449))))

(declare-fun condMapEmpty!44449 () Bool)

(declare-fun mapDefault!44449 () ValueCell!13501)

