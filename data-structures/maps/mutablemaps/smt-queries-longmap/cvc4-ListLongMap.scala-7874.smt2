; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98028 () Bool)

(assert start!98028)

(declare-fun b_free!23693 () Bool)

(declare-fun b_next!23693 () Bool)

(assert (=> start!98028 (= b_free!23693 (not b_next!23693))))

(declare-fun tp!83784 () Bool)

(declare-fun b_and!38191 () Bool)

(assert (=> start!98028 (= tp!83784 b_and!38191)))

(declare-fun b!1123804 () Bool)

(declare-fun e!639804 () Bool)

(declare-datatypes ((V!42757 0))(
  ( (V!42758 (val!14168 Int)) )
))
(declare-datatypes ((tuple2!17872 0))(
  ( (tuple2!17873 (_1!8946 (_ BitVec 64)) (_2!8946 V!42757)) )
))
(declare-datatypes ((List!24706 0))(
  ( (Nil!24703) (Cons!24702 (h!25911 tuple2!17872) (t!35398 List!24706)) )
))
(declare-datatypes ((ListLongMap!15853 0))(
  ( (ListLongMap!15854 (toList!7942 List!24706)) )
))
(declare-fun call!47363 () ListLongMap!15853)

(declare-fun call!47362 () ListLongMap!15853)

(assert (=> b!1123804 (= e!639804 (= call!47363 call!47362))))

(declare-fun b!1123805 () Bool)

(declare-fun e!639802 () Bool)

(declare-fun e!639803 () Bool)

(assert (=> b!1123805 (= e!639802 e!639803)))

(declare-fun res!750921 () Bool)

(assert (=> b!1123805 (=> res!750921 e!639803)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123805 (= res!750921 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42757)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!499209 () ListLongMap!15853)

(declare-datatypes ((ValueCell!13402 0))(
  ( (ValueCellFull!13402 (v!16802 V!42757)) (EmptyCell!13402) )
))
(declare-datatypes ((array!73272 0))(
  ( (array!73273 (arr!35285 (Array (_ BitVec 32) ValueCell!13402)) (size!35822 (_ BitVec 32))) )
))
(declare-fun lt!499207 () array!73272)

(declare-datatypes ((array!73274 0))(
  ( (array!73275 (arr!35286 (Array (_ BitVec 32) (_ BitVec 64))) (size!35823 (_ BitVec 32))) )
))
(declare-fun lt!499206 () array!73274)

(declare-fun minValue!944 () V!42757)

(declare-fun getCurrentListMapNoExtraKeys!4402 (array!73274 array!73272 (_ BitVec 32) (_ BitVec 32) V!42757 V!42757 (_ BitVec 32) Int) ListLongMap!15853)

(assert (=> b!1123805 (= lt!499209 (getCurrentListMapNoExtraKeys!4402 lt!499206 lt!499207 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73272)

(declare-fun dynLambda!2494 (Int (_ BitVec 64)) V!42757)

(assert (=> b!1123805 (= lt!499207 (array!73273 (store (arr!35285 _values!996) i!673 (ValueCellFull!13402 (dynLambda!2494 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35822 _values!996)))))

(declare-fun _keys!1208 () array!73274)

(declare-fun lt!499204 () ListLongMap!15853)

(assert (=> b!1123805 (= lt!499204 (getCurrentListMapNoExtraKeys!4402 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44152 () Bool)

(declare-fun mapRes!44152 () Bool)

(declare-fun tp!83783 () Bool)

(declare-fun e!639805 () Bool)

(assert (=> mapNonEmpty!44152 (= mapRes!44152 (and tp!83783 e!639805))))

(declare-fun mapRest!44152 () (Array (_ BitVec 32) ValueCell!13402))

(declare-fun mapValue!44152 () ValueCell!13402)

(declare-fun mapKey!44152 () (_ BitVec 32))

(assert (=> mapNonEmpty!44152 (= (arr!35285 _values!996) (store mapRest!44152 mapKey!44152 mapValue!44152))))

(declare-fun b!1123806 () Bool)

(declare-fun res!750910 () Bool)

(declare-fun e!639806 () Bool)

(assert (=> b!1123806 (=> (not res!750910) (not e!639806))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123806 (= res!750910 (validKeyInArray!0 k!934))))

(declare-fun bm!47359 () Bool)

(assert (=> bm!47359 (= call!47363 (getCurrentListMapNoExtraKeys!4402 lt!499206 lt!499207 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123807 () Bool)

(declare-fun res!750924 () Bool)

(declare-fun e!639811 () Bool)

(assert (=> b!1123807 (=> (not res!750924) (not e!639811))))

(declare-datatypes ((List!24707 0))(
  ( (Nil!24704) (Cons!24703 (h!25912 (_ BitVec 64)) (t!35399 List!24707)) )
))
(declare-fun arrayNoDuplicates!0 (array!73274 (_ BitVec 32) List!24707) Bool)

(assert (=> b!1123807 (= res!750924 (arrayNoDuplicates!0 lt!499206 #b00000000000000000000000000000000 Nil!24704))))

(declare-fun b!1123808 () Bool)

(declare-fun e!639808 () Bool)

(assert (=> b!1123808 (= e!639803 e!639808)))

(declare-fun res!750918 () Bool)

(assert (=> b!1123808 (=> res!750918 e!639808)))

(assert (=> b!1123808 (= res!750918 (not (= (select (arr!35286 _keys!1208) from!1455) k!934)))))

(assert (=> b!1123808 e!639804))

(declare-fun c!109490 () Bool)

(assert (=> b!1123808 (= c!109490 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36787 0))(
  ( (Unit!36788) )
))
(declare-fun lt!499202 () Unit!36787)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!350 (array!73274 array!73272 (_ BitVec 32) (_ BitVec 32) V!42757 V!42757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36787)

(assert (=> b!1123808 (= lt!499202 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!350 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123809 () Bool)

(declare-fun e!639809 () Bool)

(assert (=> b!1123809 (= e!639808 e!639809)))

(declare-fun res!750917 () Bool)

(assert (=> b!1123809 (=> res!750917 e!639809)))

(declare-fun lt!499205 () ListLongMap!15853)

(declare-fun contains!6457 (ListLongMap!15853 (_ BitVec 64)) Bool)

(assert (=> b!1123809 (= res!750917 (not (contains!6457 lt!499205 k!934)))))

(assert (=> b!1123809 (= lt!499205 (getCurrentListMapNoExtraKeys!4402 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123810 () Bool)

(assert (=> b!1123810 (= e!639809 true)))

(declare-fun +!3375 (ListLongMap!15853 tuple2!17872) ListLongMap!15853)

(assert (=> b!1123810 (contains!6457 (+!3375 lt!499205 (tuple2!17873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-fun lt!499203 () Unit!36787)

(declare-fun addStillContains!674 (ListLongMap!15853 (_ BitVec 64) V!42757 (_ BitVec 64)) Unit!36787)

(assert (=> b!1123810 (= lt!499203 (addStillContains!674 lt!499205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun mapIsEmpty!44152 () Bool)

(assert (=> mapIsEmpty!44152 mapRes!44152))

(declare-fun b!1123811 () Bool)

(declare-fun res!750919 () Bool)

(assert (=> b!1123811 (=> (not res!750919) (not e!639806))))

(assert (=> b!1123811 (= res!750919 (and (= (size!35822 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35823 _keys!1208) (size!35822 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123812 () Bool)

(declare-fun res!750916 () Bool)

(assert (=> b!1123812 (=> (not res!750916) (not e!639806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73274 (_ BitVec 32)) Bool)

(assert (=> b!1123812 (= res!750916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123813 () Bool)

(assert (=> b!1123813 (= e!639811 (not e!639802))))

(declare-fun res!750913 () Bool)

(assert (=> b!1123813 (=> res!750913 e!639802)))

(assert (=> b!1123813 (= res!750913 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123813 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499208 () Unit!36787)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73274 (_ BitVec 64) (_ BitVec 32)) Unit!36787)

(assert (=> b!1123813 (= lt!499208 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!47360 () Bool)

(assert (=> bm!47360 (= call!47362 (getCurrentListMapNoExtraKeys!4402 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123814 () Bool)

(declare-fun res!750912 () Bool)

(assert (=> b!1123814 (=> (not res!750912) (not e!639806))))

(assert (=> b!1123814 (= res!750912 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24704))))

(declare-fun b!1123815 () Bool)

(declare-fun e!639807 () Bool)

(declare-fun tp_is_empty!28223 () Bool)

(assert (=> b!1123815 (= e!639807 tp_is_empty!28223)))

(declare-fun b!1123816 () Bool)

(declare-fun res!750914 () Bool)

(assert (=> b!1123816 (=> res!750914 e!639809)))

(assert (=> b!1123816 (= res!750914 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1123817 () Bool)

(declare-fun res!750915 () Bool)

(assert (=> b!1123817 (=> (not res!750915) (not e!639806))))

(assert (=> b!1123817 (= res!750915 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35823 _keys!1208))))))

(declare-fun b!1123818 () Bool)

(declare-fun e!639812 () Bool)

(assert (=> b!1123818 (= e!639812 (and e!639807 mapRes!44152))))

(declare-fun condMapEmpty!44152 () Bool)

(declare-fun mapDefault!44152 () ValueCell!13402)

