; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98444 () Bool)

(assert start!98444)

(declare-fun b_free!24013 () Bool)

(declare-fun b_next!24013 () Bool)

(assert (=> start!98444 (= b_free!24013 (not b_next!24013))))

(declare-fun tp!84750 () Bool)

(declare-fun b_and!38889 () Bool)

(assert (=> start!98444 (= tp!84750 b_and!38889)))

(declare-fun b!1135773 () Bool)

(declare-fun res!758191 () Bool)

(declare-fun e!646378 () Bool)

(assert (=> b!1135773 (=> (not res!758191) (not e!646378))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73908 0))(
  ( (array!73909 (arr!35601 (Array (_ BitVec 32) (_ BitVec 64))) (size!36138 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73908)

(assert (=> b!1135773 (= res!758191 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36138 _keys!1208))))))

(declare-fun b!1135774 () Bool)

(declare-fun e!646376 () Bool)

(assert (=> b!1135774 (= e!646376 true)))

(declare-fun lt!504923 () Bool)

(declare-datatypes ((List!24988 0))(
  ( (Nil!24985) (Cons!24984 (h!26193 (_ BitVec 64)) (t!36000 List!24988)) )
))
(declare-fun contains!6599 (List!24988 (_ BitVec 64)) Bool)

(assert (=> b!1135774 (= lt!504923 (contains!6599 Nil!24985 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!49694 () Bool)

(declare-datatypes ((V!43185 0))(
  ( (V!43186 (val!14328 Int)) )
))
(declare-datatypes ((tuple2!18178 0))(
  ( (tuple2!18179 (_1!9099 (_ BitVec 64)) (_2!9099 V!43185)) )
))
(declare-datatypes ((List!24989 0))(
  ( (Nil!24986) (Cons!24985 (h!26194 tuple2!18178) (t!36001 List!24989)) )
))
(declare-datatypes ((ListLongMap!16159 0))(
  ( (ListLongMap!16160 (toList!8095 List!24989)) )
))
(declare-fun call!49704 () ListLongMap!16159)

(declare-fun call!49703 () ListLongMap!16159)

(assert (=> bm!49694 (= call!49704 call!49703)))

(declare-fun b!1135775 () Bool)

(declare-fun e!646375 () Bool)

(declare-fun e!646373 () Bool)

(assert (=> b!1135775 (= e!646375 e!646373)))

(declare-fun res!758196 () Bool)

(assert (=> b!1135775 (=> res!758196 e!646373)))

(declare-fun lt!504917 () ListLongMap!16159)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6600 (ListLongMap!16159 (_ BitVec 64)) Bool)

(assert (=> b!1135775 (= res!758196 (not (contains!6600 lt!504917 k!934)))))

(declare-fun zeroValue!944 () V!43185)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13562 0))(
  ( (ValueCellFull!13562 (v!16966 V!43185)) (EmptyCell!13562) )
))
(declare-datatypes ((array!73910 0))(
  ( (array!73911 (arr!35602 (Array (_ BitVec 32) ValueCell!13562)) (size!36139 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73910)

(declare-fun minValue!944 () V!43185)

(declare-fun getCurrentListMapNoExtraKeys!4543 (array!73908 array!73910 (_ BitVec 32) (_ BitVec 32) V!43185 V!43185 (_ BitVec 32) Int) ListLongMap!16159)

(assert (=> b!1135775 (= lt!504917 (getCurrentListMapNoExtraKeys!4543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135776 () Bool)

(declare-fun e!646379 () Bool)

(declare-fun arrayContainsKey!0 (array!73908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135776 (= e!646379 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135777 () Bool)

(declare-fun res!758190 () Bool)

(assert (=> b!1135777 (=> (not res!758190) (not e!646378))))

(assert (=> b!1135777 (= res!758190 (= (select (arr!35601 _keys!1208) i!673) k!934))))

(declare-fun b!1135778 () Bool)

(declare-fun e!646374 () Bool)

(declare-fun e!646377 () Bool)

(assert (=> b!1135778 (= e!646374 e!646377)))

(declare-fun res!758192 () Bool)

(assert (=> b!1135778 (=> res!758192 e!646377)))

(assert (=> b!1135778 (= res!758192 (not (= from!1455 i!673)))))

(declare-fun lt!504909 () array!73908)

(declare-fun lt!504912 () ListLongMap!16159)

(declare-fun lt!504913 () array!73910)

(assert (=> b!1135778 (= lt!504912 (getCurrentListMapNoExtraKeys!4543 lt!504909 lt!504913 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2608 (Int (_ BitVec 64)) V!43185)

(assert (=> b!1135778 (= lt!504913 (array!73911 (store (arr!35602 _values!996) i!673 (ValueCellFull!13562 (dynLambda!2608 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36139 _values!996)))))

(declare-fun lt!504919 () ListLongMap!16159)

(assert (=> b!1135778 (= lt!504919 (getCurrentListMapNoExtraKeys!4543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135779 () Bool)

(declare-fun lt!504918 () Bool)

(declare-fun e!646383 () Bool)

(assert (=> b!1135779 (= e!646383 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504918) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135780 () Bool)

(declare-fun e!646382 () Bool)

(declare-fun tp_is_empty!28543 () Bool)

(assert (=> b!1135780 (= e!646382 tp_is_empty!28543)))

(declare-fun bm!49695 () Bool)

(declare-datatypes ((Unit!37147 0))(
  ( (Unit!37148) )
))
(declare-fun call!49699 () Unit!37147)

(declare-fun call!49698 () Unit!37147)

(assert (=> bm!49695 (= call!49699 call!49698)))

(declare-fun call!49700 () Bool)

(declare-fun c!110952 () Bool)

(declare-fun lt!504916 () ListLongMap!16159)

(declare-fun bm!49696 () Bool)

(assert (=> bm!49696 (= call!49700 (contains!6600 (ite c!110952 lt!504916 call!49704) k!934))))

(declare-fun b!1135781 () Bool)

(declare-fun e!646372 () Unit!37147)

(declare-fun lt!504920 () Unit!37147)

(assert (=> b!1135781 (= e!646372 lt!504920)))

(assert (=> b!1135781 (= lt!504920 call!49699)))

(declare-fun call!49702 () Bool)

(assert (=> b!1135781 call!49702))

(declare-fun b!1135782 () Bool)

(declare-fun e!646381 () Unit!37147)

(declare-fun e!646386 () Unit!37147)

(assert (=> b!1135782 (= e!646381 e!646386)))

(declare-fun c!110948 () Bool)

(assert (=> b!1135782 (= c!110948 (and (not lt!504918) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1135783 () Bool)

(assert (=> b!1135783 (= e!646373 e!646376)))

(declare-fun res!758183 () Bool)

(assert (=> b!1135783 (=> res!758183 e!646376)))

(assert (=> b!1135783 (= res!758183 (or (bvsge (size!36138 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36138 _keys!1208)) (bvsge from!1455 (size!36138 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!73908 (_ BitVec 32) List!24988) Bool)

(assert (=> b!1135783 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24985)))

(declare-fun lt!504924 () Unit!37147)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73908 (_ BitVec 32) (_ BitVec 32)) Unit!37147)

(assert (=> b!1135783 (= lt!504924 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1135783 e!646379))

(declare-fun res!758193 () Bool)

(assert (=> b!1135783 (=> (not res!758193) (not e!646379))))

(assert (=> b!1135783 (= res!758193 e!646383)))

(declare-fun c!110950 () Bool)

(assert (=> b!1135783 (= c!110950 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504910 () Unit!37147)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!357 (array!73908 array!73910 (_ BitVec 32) (_ BitVec 32) V!43185 V!43185 (_ BitVec 64) (_ BitVec 32) Int) Unit!37147)

(assert (=> b!1135783 (= lt!504910 (lemmaListMapContainsThenArrayContainsFrom!357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504922 () Unit!37147)

(assert (=> b!1135783 (= lt!504922 e!646381)))

(assert (=> b!1135783 (= c!110952 (and (not lt!504918) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135783 (= lt!504918 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135784 () Bool)

(declare-fun Unit!37149 () Unit!37147)

(assert (=> b!1135784 (= e!646372 Unit!37149)))

(declare-fun b!1135785 () Bool)

(declare-fun e!646370 () Bool)

(declare-fun call!49701 () ListLongMap!16159)

(declare-fun call!49697 () ListLongMap!16159)

(assert (=> b!1135785 (= e!646370 (= call!49701 call!49697))))

(declare-fun b!1135786 () Bool)

(declare-fun lt!504908 () Unit!37147)

(assert (=> b!1135786 (= e!646381 lt!504908)))

(declare-fun lt!504915 () Unit!37147)

(declare-fun addStillContains!750 (ListLongMap!16159 (_ BitVec 64) V!43185 (_ BitVec 64)) Unit!37147)

(assert (=> b!1135786 (= lt!504915 (addStillContains!750 lt!504917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun +!3450 (ListLongMap!16159 tuple2!18178) ListLongMap!16159)

(assert (=> b!1135786 (= lt!504916 (+!3450 lt!504917 (tuple2!18179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1135786 call!49700))

(assert (=> b!1135786 (= lt!504908 call!49698)))

(assert (=> b!1135786 (contains!6600 call!49703 k!934)))

(declare-fun mapNonEmpty!44639 () Bool)

(declare-fun mapRes!44639 () Bool)

(declare-fun tp!84751 () Bool)

(declare-fun e!646371 () Bool)

(assert (=> mapNonEmpty!44639 (= mapRes!44639 (and tp!84751 e!646371))))

(declare-fun mapValue!44639 () ValueCell!13562)

(declare-fun mapKey!44639 () (_ BitVec 32))

(declare-fun mapRest!44639 () (Array (_ BitVec 32) ValueCell!13562))

(assert (=> mapNonEmpty!44639 (= (arr!35602 _values!996) (store mapRest!44639 mapKey!44639 mapValue!44639))))

(declare-fun b!1135787 () Bool)

(declare-fun -!1206 (ListLongMap!16159 (_ BitVec 64)) ListLongMap!16159)

(assert (=> b!1135787 (= e!646370 (= call!49701 (-!1206 call!49697 k!934)))))

(declare-fun b!1135788 () Bool)

(assert (=> b!1135788 (= e!646383 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135789 () Bool)

(assert (=> b!1135789 call!49702))

(declare-fun lt!504921 () Unit!37147)

(assert (=> b!1135789 (= lt!504921 call!49699)))

(assert (=> b!1135789 (= e!646386 lt!504921)))

(declare-fun b!1135790 () Bool)

(declare-fun e!646384 () Bool)

(assert (=> b!1135790 (= e!646378 e!646384)))

(declare-fun res!758182 () Bool)

(assert (=> b!1135790 (=> (not res!758182) (not e!646384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73908 (_ BitVec 32)) Bool)

(assert (=> b!1135790 (= res!758182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504909 mask!1564))))

(assert (=> b!1135790 (= lt!504909 (array!73909 (store (arr!35601 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36138 _keys!1208)))))

(declare-fun b!1135791 () Bool)

(declare-fun res!758186 () Bool)

(assert (=> b!1135791 (=> (not res!758186) (not e!646378))))

(assert (=> b!1135791 (= res!758186 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24985))))

(declare-fun b!1135792 () Bool)

(assert (=> b!1135792 (= e!646377 e!646375)))

(declare-fun res!758181 () Bool)

(assert (=> b!1135792 (=> res!758181 e!646375)))

(assert (=> b!1135792 (= res!758181 (not (= (select (arr!35601 _keys!1208) from!1455) k!934)))))

(assert (=> b!1135792 e!646370))

(declare-fun c!110949 () Bool)

(assert (=> b!1135792 (= c!110949 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504914 () Unit!37147)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!463 (array!73908 array!73910 (_ BitVec 32) (_ BitVec 32) V!43185 V!43185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37147)

(assert (=> b!1135792 (= lt!504914 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49697 () Bool)

(assert (=> bm!49697 (= call!49697 (getCurrentListMapNoExtraKeys!4543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135793 () Bool)

(declare-fun res!758195 () Bool)

(assert (=> b!1135793 (=> (not res!758195) (not e!646378))))

(assert (=> b!1135793 (= res!758195 (and (= (size!36139 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36138 _keys!1208) (size!36139 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44639 () Bool)

(assert (=> mapIsEmpty!44639 mapRes!44639))

(declare-fun b!1135794 () Bool)

(declare-fun res!758187 () Bool)

(assert (=> b!1135794 (=> (not res!758187) (not e!646378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135794 (= res!758187 (validKeyInArray!0 k!934))))

(declare-fun res!758184 () Bool)

(assert (=> start!98444 (=> (not res!758184) (not e!646378))))

(assert (=> start!98444 (= res!758184 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36138 _keys!1208))))))

(assert (=> start!98444 e!646378))

(assert (=> start!98444 tp_is_empty!28543))

(declare-fun array_inv!27170 (array!73908) Bool)

(assert (=> start!98444 (array_inv!27170 _keys!1208)))

(assert (=> start!98444 true))

(assert (=> start!98444 tp!84750))

(declare-fun e!646385 () Bool)

(declare-fun array_inv!27171 (array!73910) Bool)

(assert (=> start!98444 (and (array_inv!27171 _values!996) e!646385)))

(declare-fun b!1135795 () Bool)

(declare-fun c!110951 () Bool)

(assert (=> b!1135795 (= c!110951 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504918))))

(assert (=> b!1135795 (= e!646386 e!646372)))

(declare-fun b!1135796 () Bool)

(assert (=> b!1135796 (= e!646371 tp_is_empty!28543)))

(declare-fun bm!49698 () Bool)

(assert (=> bm!49698 (= call!49698 (addStillContains!750 (ite c!110952 lt!504916 lt!504917) (ite c!110952 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110948 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110952 minValue!944 (ite c!110948 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1135797 () Bool)

(declare-fun res!758189 () Bool)

(assert (=> b!1135797 (=> res!758189 e!646376)))

(assert (=> b!1135797 (= res!758189 (contains!6599 Nil!24985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135798 () Bool)

(assert (=> b!1135798 (= e!646384 (not e!646374))))

(declare-fun res!758185 () Bool)

(assert (=> b!1135798 (=> res!758185 e!646374)))

(assert (=> b!1135798 (= res!758185 (bvsgt from!1455 i!673))))

(assert (=> b!1135798 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504911 () Unit!37147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73908 (_ BitVec 64) (_ BitVec 32)) Unit!37147)

(assert (=> b!1135798 (= lt!504911 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1135799 () Bool)

(declare-fun res!758197 () Bool)

(assert (=> b!1135799 (=> (not res!758197) (not e!646384))))

(assert (=> b!1135799 (= res!758197 (arrayNoDuplicates!0 lt!504909 #b00000000000000000000000000000000 Nil!24985))))

(declare-fun bm!49699 () Bool)

(assert (=> bm!49699 (= call!49703 (+!3450 (ite c!110952 lt!504916 lt!504917) (ite c!110952 (tuple2!18179 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110948 (tuple2!18179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18179 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1135800 () Bool)

(declare-fun res!758198 () Bool)

(assert (=> b!1135800 (=> (not res!758198) (not e!646378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135800 (= res!758198 (validMask!0 mask!1564))))

(declare-fun b!1135801 () Bool)

(declare-fun res!758194 () Bool)

(assert (=> b!1135801 (=> res!758194 e!646376)))

(declare-fun noDuplicate!1618 (List!24988) Bool)

(assert (=> b!1135801 (= res!758194 (not (noDuplicate!1618 Nil!24985)))))

(declare-fun bm!49700 () Bool)

(assert (=> bm!49700 (= call!49701 (getCurrentListMapNoExtraKeys!4543 lt!504909 lt!504913 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135802 () Bool)

(declare-fun res!758188 () Bool)

(assert (=> b!1135802 (=> (not res!758188) (not e!646378))))

(assert (=> b!1135802 (= res!758188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49701 () Bool)

(assert (=> bm!49701 (= call!49702 call!49700)))

(declare-fun b!1135803 () Bool)

(assert (=> b!1135803 (= e!646385 (and e!646382 mapRes!44639))))

(declare-fun condMapEmpty!44639 () Bool)

(declare-fun mapDefault!44639 () ValueCell!13562)

