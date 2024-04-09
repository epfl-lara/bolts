; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98024 () Bool)

(assert start!98024)

(declare-fun b_free!23689 () Bool)

(declare-fun b_next!23689 () Bool)

(assert (=> start!98024 (= b_free!23689 (not b_next!23689))))

(declare-fun tp!83772 () Bool)

(declare-fun b_and!38183 () Bool)

(assert (=> start!98024 (= tp!83772 b_and!38183)))

(declare-fun b!1123680 () Bool)

(declare-fun res!750832 () Bool)

(declare-fun e!639745 () Bool)

(assert (=> b!1123680 (=> (not res!750832) (not e!639745))))

(declare-datatypes ((array!73264 0))(
  ( (array!73265 (arr!35281 (Array (_ BitVec 32) (_ BitVec 64))) (size!35818 (_ BitVec 32))) )
))
(declare-fun lt!499157 () array!73264)

(declare-datatypes ((List!24702 0))(
  ( (Nil!24699) (Cons!24698 (h!25907 (_ BitVec 64)) (t!35390 List!24702)) )
))
(declare-fun arrayNoDuplicates!0 (array!73264 (_ BitVec 32) List!24702) Bool)

(assert (=> b!1123680 (= res!750832 (arrayNoDuplicates!0 lt!499157 #b00000000000000000000000000000000 Nil!24699))))

(declare-fun b!1123681 () Bool)

(declare-fun res!750826 () Bool)

(declare-fun e!639746 () Bool)

(assert (=> b!1123681 (=> (not res!750826) (not e!639746))))

(declare-fun _keys!1208 () array!73264)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42753 0))(
  ( (V!42754 (val!14166 Int)) )
))
(declare-datatypes ((ValueCell!13400 0))(
  ( (ValueCellFull!13400 (v!16800 V!42753)) (EmptyCell!13400) )
))
(declare-datatypes ((array!73266 0))(
  ( (array!73267 (arr!35282 (Array (_ BitVec 32) ValueCell!13400)) (size!35819 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73266)

(assert (=> b!1123681 (= res!750826 (and (= (size!35819 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35818 _keys!1208) (size!35819 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123682 () Bool)

(declare-fun e!639739 () Bool)

(assert (=> b!1123682 (= e!639739 true)))

(declare-datatypes ((tuple2!17868 0))(
  ( (tuple2!17869 (_1!8944 (_ BitVec 64)) (_2!8944 V!42753)) )
))
(declare-datatypes ((List!24703 0))(
  ( (Nil!24700) (Cons!24699 (h!25908 tuple2!17868) (t!35391 List!24703)) )
))
(declare-datatypes ((ListLongMap!15849 0))(
  ( (ListLongMap!15850 (toList!7940 List!24703)) )
))
(declare-fun lt!499161 () ListLongMap!15849)

(declare-fun zeroValue!944 () V!42753)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6455 (ListLongMap!15849 (_ BitVec 64)) Bool)

(declare-fun +!3373 (ListLongMap!15849 tuple2!17868) ListLongMap!15849)

(assert (=> b!1123682 (contains!6455 (+!3373 lt!499161 (tuple2!17869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-datatypes ((Unit!36783 0))(
  ( (Unit!36784) )
))
(declare-fun lt!499160 () Unit!36783)

(declare-fun addStillContains!672 (ListLongMap!15849 (_ BitVec 64) V!42753 (_ BitVec 64)) Unit!36783)

(assert (=> b!1123682 (= lt!499160 (addStillContains!672 lt!499161 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1123683 () Bool)

(declare-fun res!750822 () Bool)

(assert (=> b!1123683 (=> (not res!750822) (not e!639746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73264 (_ BitVec 32)) Bool)

(assert (=> b!1123683 (= res!750822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123684 () Bool)

(declare-fun e!639737 () Bool)

(declare-fun e!639740 () Bool)

(assert (=> b!1123684 (= e!639737 e!639740)))

(declare-fun res!750829 () Bool)

(assert (=> b!1123684 (=> res!750829 e!639740)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123684 (= res!750829 (not (= from!1455 i!673)))))

(declare-fun lt!499156 () array!73266)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!499154 () ListLongMap!15849)

(declare-fun minValue!944 () V!42753)

(declare-fun getCurrentListMapNoExtraKeys!4400 (array!73264 array!73266 (_ BitVec 32) (_ BitVec 32) V!42753 V!42753 (_ BitVec 32) Int) ListLongMap!15849)

(assert (=> b!1123684 (= lt!499154 (getCurrentListMapNoExtraKeys!4400 lt!499157 lt!499156 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2492 (Int (_ BitVec 64)) V!42753)

(assert (=> b!1123684 (= lt!499156 (array!73267 (store (arr!35282 _values!996) i!673 (ValueCellFull!13400 (dynLambda!2492 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35819 _values!996)))))

(declare-fun lt!499155 () ListLongMap!15849)

(assert (=> b!1123684 (= lt!499155 (getCurrentListMapNoExtraKeys!4400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44146 () Bool)

(declare-fun mapRes!44146 () Bool)

(declare-fun tp!83771 () Bool)

(declare-fun e!639742 () Bool)

(assert (=> mapNonEmpty!44146 (= mapRes!44146 (and tp!83771 e!639742))))

(declare-fun mapValue!44146 () ValueCell!13400)

(declare-fun mapKey!44146 () (_ BitVec 32))

(declare-fun mapRest!44146 () (Array (_ BitVec 32) ValueCell!13400))

(assert (=> mapNonEmpty!44146 (= (arr!35282 _values!996) (store mapRest!44146 mapKey!44146 mapValue!44146))))

(declare-fun b!1123685 () Bool)

(declare-fun res!750833 () Bool)

(assert (=> b!1123685 (=> (not res!750833) (not e!639746))))

(assert (=> b!1123685 (= res!750833 (= (select (arr!35281 _keys!1208) i!673) k!934))))

(declare-fun b!1123686 () Bool)

(declare-fun res!750823 () Bool)

(assert (=> b!1123686 (=> (not res!750823) (not e!639746))))

(assert (=> b!1123686 (= res!750823 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35818 _keys!1208))))))

(declare-fun call!47350 () ListLongMap!15849)

(declare-fun bm!47347 () Bool)

(assert (=> bm!47347 (= call!47350 (getCurrentListMapNoExtraKeys!4400 lt!499157 lt!499156 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123687 () Bool)

(declare-fun res!750821 () Bool)

(assert (=> b!1123687 (=> (not res!750821) (not e!639746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123687 (= res!750821 (validKeyInArray!0 k!934))))

(declare-fun b!1123688 () Bool)

(declare-fun e!639738 () Bool)

(assert (=> b!1123688 (= e!639738 e!639739)))

(declare-fun res!750828 () Bool)

(assert (=> b!1123688 (=> res!750828 e!639739)))

(assert (=> b!1123688 (= res!750828 (not (contains!6455 lt!499161 k!934)))))

(assert (=> b!1123688 (= lt!499161 (getCurrentListMapNoExtraKeys!4400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123689 () Bool)

(declare-fun e!639743 () Bool)

(declare-fun e!639736 () Bool)

(assert (=> b!1123689 (= e!639743 (and e!639736 mapRes!44146))))

(declare-fun condMapEmpty!44146 () Bool)

(declare-fun mapDefault!44146 () ValueCell!13400)

