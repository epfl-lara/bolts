; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101064 () Bool)

(assert start!101064)

(declare-fun b_free!26027 () Bool)

(declare-fun b_next!26027 () Bool)

(assert (=> start!101064 (= b_free!26027 (not b_next!26027))))

(declare-fun tp!91098 () Bool)

(declare-fun b_and!43145 () Bool)

(assert (=> start!101064 (= tp!91098 b_and!43145)))

(declare-fun b!1210850 () Bool)

(declare-fun res!804580 () Bool)

(declare-fun e!687700 () Bool)

(assert (=> b!1210850 (=> (not res!804580) (not e!687700))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210850 (= res!804580 (validMask!0 mask!1564))))

(declare-fun bm!59760 () Bool)

(declare-fun call!59767 () Bool)

(declare-fun call!59763 () Bool)

(assert (=> bm!59760 (= call!59767 call!59763)))

(declare-fun b!1210851 () Bool)

(declare-datatypes ((Unit!40061 0))(
  ( (Unit!40062) )
))
(declare-fun e!687695 () Unit!40061)

(declare-fun e!687704 () Unit!40061)

(assert (=> b!1210851 (= e!687695 e!687704)))

(declare-fun c!119299 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!549832 () Bool)

(assert (=> b!1210851 (= c!119299 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549832))))

(declare-fun b!1210853 () Bool)

(declare-fun e!687705 () Bool)

(declare-fun tp_is_empty!30731 () Bool)

(assert (=> b!1210853 (= e!687705 tp_is_empty!30731)))

(declare-datatypes ((V!46101 0))(
  ( (V!46102 (val!15422 Int)) )
))
(declare-fun zeroValue!944 () V!46101)

(declare-fun c!119300 () Bool)

(declare-datatypes ((tuple2!19942 0))(
  ( (tuple2!19943 (_1!9981 (_ BitVec 64)) (_2!9981 V!46101)) )
))
(declare-datatypes ((List!26761 0))(
  ( (Nil!26758) (Cons!26757 (h!27966 tuple2!19942) (t!39775 List!26761)) )
))
(declare-datatypes ((ListLongMap!17923 0))(
  ( (ListLongMap!17924 (toList!8977 List!26761)) )
))
(declare-fun lt!549833 () ListLongMap!17923)

(declare-fun lt!549849 () ListLongMap!17923)

(declare-fun bm!59761 () Bool)

(declare-fun minValue!944 () V!46101)

(declare-fun c!119301 () Bool)

(declare-fun call!59766 () ListLongMap!17923)

(declare-fun +!4004 (ListLongMap!17923 tuple2!19942) ListLongMap!17923)

(assert (=> bm!59761 (= call!59766 (+!4004 (ite c!119301 lt!549833 lt!549849) (ite c!119301 (tuple2!19943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119300 (tuple2!19943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!549840 () ListLongMap!17923)

(declare-fun b!1210854 () Bool)

(declare-fun e!687706 () Bool)

(declare-fun -!1875 (ListLongMap!17923 (_ BitVec 64)) ListLongMap!17923)

(assert (=> b!1210854 (= e!687706 (= (-!1875 lt!549840 k!934) lt!549849))))

(declare-datatypes ((array!78218 0))(
  ( (array!78219 (arr!37742 (Array (_ BitVec 32) (_ BitVec 64))) (size!38279 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78218)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!549836 () V!46101)

(assert (=> b!1210854 (= (-!1875 (+!4004 lt!549849 (tuple2!19943 (select (arr!37742 _keys!1208) from!1455) lt!549836)) (select (arr!37742 _keys!1208) from!1455)) lt!549849)))

(declare-fun lt!549838 () Unit!40061)

(declare-fun addThenRemoveForNewKeyIsSame!277 (ListLongMap!17923 (_ BitVec 64) V!46101) Unit!40061)

(assert (=> b!1210854 (= lt!549838 (addThenRemoveForNewKeyIsSame!277 lt!549849 (select (arr!37742 _keys!1208) from!1455) lt!549836))))

(declare-fun lt!549830 () V!46101)

(declare-datatypes ((ValueCell!14656 0))(
  ( (ValueCellFull!14656 (v!18074 V!46101)) (EmptyCell!14656) )
))
(declare-datatypes ((array!78220 0))(
  ( (array!78221 (arr!37743 (Array (_ BitVec 32) ValueCell!14656)) (size!38280 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78220)

(declare-fun get!19273 (ValueCell!14656 V!46101) V!46101)

(assert (=> b!1210854 (= lt!549836 (get!19273 (select (arr!37743 _values!996) from!1455) lt!549830))))

(declare-fun lt!549829 () Unit!40061)

(declare-fun e!687703 () Unit!40061)

(assert (=> b!1210854 (= lt!549829 e!687703)))

(declare-fun c!119303 () Bool)

(declare-fun contains!6990 (ListLongMap!17923 (_ BitVec 64)) Bool)

(assert (=> b!1210854 (= c!119303 (contains!6990 lt!549849 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5382 (array!78218 array!78220 (_ BitVec 32) (_ BitVec 32) V!46101 V!46101 (_ BitVec 32) Int) ListLongMap!17923)

(assert (=> b!1210854 (= lt!549849 (getCurrentListMapNoExtraKeys!5382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210855 () Bool)

(declare-fun res!804587 () Bool)

(assert (=> b!1210855 (=> (not res!804587) (not e!687700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78218 (_ BitVec 32)) Bool)

(assert (=> b!1210855 (= res!804587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210856 () Bool)

(declare-fun res!804585 () Bool)

(assert (=> b!1210856 (=> (not res!804585) (not e!687700))))

(assert (=> b!1210856 (= res!804585 (and (= (size!38280 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38279 _keys!1208) (size!38280 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47965 () Bool)

(declare-fun mapRes!47965 () Bool)

(declare-fun tp!91097 () Bool)

(assert (=> mapNonEmpty!47965 (= mapRes!47965 (and tp!91097 e!687705))))

(declare-fun mapRest!47965 () (Array (_ BitVec 32) ValueCell!14656))

(declare-fun mapValue!47965 () ValueCell!14656)

(declare-fun mapKey!47965 () (_ BitVec 32))

(assert (=> mapNonEmpty!47965 (= (arr!37743 _values!996) (store mapRest!47965 mapKey!47965 mapValue!47965))))

(declare-fun bm!59762 () Bool)

(declare-fun call!59768 () ListLongMap!17923)

(declare-fun lt!549835 () array!78220)

(declare-fun lt!549844 () array!78218)

(assert (=> bm!59762 (= call!59768 (getCurrentListMapNoExtraKeys!5382 lt!549844 lt!549835 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210857 () Bool)

(declare-fun res!804581 () Bool)

(declare-fun e!687702 () Bool)

(assert (=> b!1210857 (=> (not res!804581) (not e!687702))))

(declare-datatypes ((List!26762 0))(
  ( (Nil!26759) (Cons!26758 (h!27967 (_ BitVec 64)) (t!39776 List!26762)) )
))
(declare-fun arrayNoDuplicates!0 (array!78218 (_ BitVec 32) List!26762) Bool)

(assert (=> b!1210857 (= res!804581 (arrayNoDuplicates!0 lt!549844 #b00000000000000000000000000000000 Nil!26759))))

(declare-fun bm!59763 () Bool)

(declare-fun call!59770 () ListLongMap!17923)

(assert (=> bm!59763 (= call!59770 call!59766)))

(declare-fun b!1210858 () Bool)

(declare-fun e!687692 () Bool)

(declare-fun e!687693 () Bool)

(assert (=> b!1210858 (= e!687692 e!687693)))

(declare-fun res!804591 () Bool)

(assert (=> b!1210858 (=> res!804591 e!687693)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210858 (= res!804591 (not (= from!1455 i!673)))))

(declare-fun lt!549842 () ListLongMap!17923)

(assert (=> b!1210858 (= lt!549842 (getCurrentListMapNoExtraKeys!5382 lt!549844 lt!549835 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1210858 (= lt!549835 (array!78221 (store (arr!37743 _values!996) i!673 (ValueCellFull!14656 lt!549830)) (size!38280 _values!996)))))

(declare-fun dynLambda!3297 (Int (_ BitVec 64)) V!46101)

(assert (=> b!1210858 (= lt!549830 (dynLambda!3297 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1210858 (= lt!549840 (getCurrentListMapNoExtraKeys!5382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1210859 () Bool)

(assert (=> b!1210859 (= e!687693 e!687706)))

(declare-fun res!804583 () Bool)

(assert (=> b!1210859 (=> res!804583 e!687706)))

(assert (=> b!1210859 (= res!804583 (not (= (select (arr!37742 _keys!1208) from!1455) k!934)))))

(declare-fun e!687701 () Bool)

(assert (=> b!1210859 e!687701))

(declare-fun c!119302 () Bool)

(assert (=> b!1210859 (= c!119302 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549834 () Unit!40061)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1083 (array!78218 array!78220 (_ BitVec 32) (_ BitVec 32) V!46101 V!46101 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40061)

(assert (=> b!1210859 (= lt!549834 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1083 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210860 () Bool)

(declare-fun e!687698 () Bool)

(assert (=> b!1210860 (= e!687698 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549832) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!47965 () Bool)

(assert (=> mapIsEmpty!47965 mapRes!47965))

(declare-fun b!1210861 () Bool)

(declare-fun res!804589 () Bool)

(assert (=> b!1210861 (=> (not res!804589) (not e!687700))))

(assert (=> b!1210861 (= res!804589 (= (select (arr!37742 _keys!1208) i!673) k!934))))

(declare-fun b!1210862 () Bool)

(declare-fun Unit!40063 () Unit!40061)

(assert (=> b!1210862 (= e!687704 Unit!40063)))

(declare-fun b!1210863 () Bool)

(declare-fun lt!549843 () Unit!40061)

(assert (=> b!1210863 (= e!687695 lt!549843)))

(declare-fun call!59764 () Unit!40061)

(assert (=> b!1210863 (= lt!549843 call!59764)))

(assert (=> b!1210863 call!59767))

(declare-fun e!687694 () Bool)

(declare-fun b!1210864 () Bool)

(declare-fun arrayContainsKey!0 (array!78218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210864 (= e!687694 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59764 () Bool)

(assert (=> bm!59764 (= call!59763 (contains!6990 (ite c!119301 lt!549833 call!59770) k!934))))

(declare-fun b!1210865 () Bool)

(assert (=> b!1210865 (= e!687702 (not e!687692))))

(declare-fun res!804586 () Bool)

(assert (=> b!1210865 (=> res!804586 e!687692)))

(assert (=> b!1210865 (= res!804586 (bvsgt from!1455 i!673))))

(assert (=> b!1210865 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!549846 () Unit!40061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78218 (_ BitVec 64) (_ BitVec 32)) Unit!40061)

(assert (=> b!1210865 (= lt!549846 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1210866 () Bool)

(declare-fun e!687699 () Bool)

(assert (=> b!1210866 (= e!687699 tp_is_empty!30731)))

(declare-fun b!1210867 () Bool)

(declare-fun call!59765 () ListLongMap!17923)

(assert (=> b!1210867 (= e!687701 (= call!59768 call!59765))))

(declare-fun b!1210868 () Bool)

(declare-fun e!687697 () Bool)

(assert (=> b!1210868 (= e!687697 (and e!687699 mapRes!47965))))

(declare-fun condMapEmpty!47965 () Bool)

(declare-fun mapDefault!47965 () ValueCell!14656)

