; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98018 () Bool)

(assert start!98018)

(declare-fun b_free!23683 () Bool)

(declare-fun b_next!23683 () Bool)

(assert (=> start!98018 (= b_free!23683 (not b_next!23683))))

(declare-fun tp!83754 () Bool)

(declare-fun b_and!38171 () Bool)

(assert (=> start!98018 (= tp!83754 b_and!38171)))

(declare-fun mapIsEmpty!44137 () Bool)

(declare-fun mapRes!44137 () Bool)

(assert (=> mapIsEmpty!44137 mapRes!44137))

(declare-fun b!1123508 () Bool)

(declare-fun res!750701 () Bool)

(declare-fun e!639649 () Bool)

(assert (=> b!1123508 (=> (not res!750701) (not e!639649))))

(declare-datatypes ((array!73252 0))(
  ( (array!73253 (arr!35275 (Array (_ BitVec 32) (_ BitVec 64))) (size!35812 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73252)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1123508 (= res!750701 (= (select (arr!35275 _keys!1208) i!673) k!934))))

(declare-fun b!1123509 () Bool)

(declare-fun e!639646 () Bool)

(assert (=> b!1123509 (= e!639649 e!639646)))

(declare-fun res!750707 () Bool)

(assert (=> b!1123509 (=> (not res!750707) (not e!639646))))

(declare-fun lt!499090 () array!73252)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73252 (_ BitVec 32)) Bool)

(assert (=> b!1123509 (= res!750707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499090 mask!1564))))

(assert (=> b!1123509 (= lt!499090 (array!73253 (store (arr!35275 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35812 _keys!1208)))))

(declare-fun b!1123510 () Bool)

(declare-fun e!639651 () Bool)

(assert (=> b!1123510 (= e!639646 (not e!639651))))

(declare-fun res!750708 () Bool)

(assert (=> b!1123510 (=> res!750708 e!639651)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1123510 (= res!750708 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123510 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36777 0))(
  ( (Unit!36778) )
))
(declare-fun lt!499092 () Unit!36777)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73252 (_ BitVec 64) (_ BitVec 32)) Unit!36777)

(assert (=> b!1123510 (= lt!499092 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1123512 () Bool)

(declare-fun res!750700 () Bool)

(assert (=> b!1123512 (=> (not res!750700) (not e!639649))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42745 0))(
  ( (V!42746 (val!14163 Int)) )
))
(declare-datatypes ((ValueCell!13397 0))(
  ( (ValueCellFull!13397 (v!16797 V!42745)) (EmptyCell!13397) )
))
(declare-datatypes ((array!73254 0))(
  ( (array!73255 (arr!35276 (Array (_ BitVec 32) ValueCell!13397)) (size!35813 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73254)

(assert (=> b!1123512 (= res!750700 (and (= (size!35813 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35812 _keys!1208) (size!35813 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!42745)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47329 () Bool)

(declare-fun minValue!944 () V!42745)

(declare-datatypes ((tuple2!17862 0))(
  ( (tuple2!17863 (_1!8941 (_ BitVec 64)) (_2!8941 V!42745)) )
))
(declare-datatypes ((List!24696 0))(
  ( (Nil!24693) (Cons!24692 (h!25901 tuple2!17862) (t!35378 List!24696)) )
))
(declare-datatypes ((ListLongMap!15843 0))(
  ( (ListLongMap!15844 (toList!7937 List!24696)) )
))
(declare-fun call!47333 () ListLongMap!15843)

(declare-fun getCurrentListMapNoExtraKeys!4397 (array!73252 array!73254 (_ BitVec 32) (_ BitVec 32) V!42745 V!42745 (_ BitVec 32) Int) ListLongMap!15843)

(assert (=> bm!47329 (= call!47333 (getCurrentListMapNoExtraKeys!4397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123513 () Bool)

(declare-fun res!750706 () Bool)

(assert (=> b!1123513 (=> (not res!750706) (not e!639649))))

(assert (=> b!1123513 (= res!750706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123514 () Bool)

(declare-fun res!750709 () Bool)

(assert (=> b!1123514 (=> (not res!750709) (not e!639649))))

(declare-datatypes ((List!24697 0))(
  ( (Nil!24694) (Cons!24693 (h!25902 (_ BitVec 64)) (t!35379 List!24697)) )
))
(declare-fun arrayNoDuplicates!0 (array!73252 (_ BitVec 32) List!24697) Bool)

(assert (=> b!1123514 (= res!750709 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24694))))

(declare-fun b!1123515 () Bool)

(declare-fun e!639648 () Bool)

(declare-fun call!47332 () ListLongMap!15843)

(assert (=> b!1123515 (= e!639648 (= call!47332 call!47333))))

(declare-fun b!1123516 () Bool)

(declare-fun e!639644 () Bool)

(declare-fun e!639645 () Bool)

(assert (=> b!1123516 (= e!639644 e!639645)))

(declare-fun res!750704 () Bool)

(assert (=> b!1123516 (=> res!750704 e!639645)))

(assert (=> b!1123516 (= res!750704 (not (= (select (arr!35275 _keys!1208) from!1455) k!934)))))

(assert (=> b!1123516 e!639648))

(declare-fun c!109475 () Bool)

(assert (=> b!1123516 (= c!109475 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499093 () Unit!36777)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!346 (array!73252 array!73254 (_ BitVec 32) (_ BitVec 32) V!42745 V!42745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36777)

(assert (=> b!1123516 (= lt!499093 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123517 () Bool)

(declare-fun res!750711 () Bool)

(assert (=> b!1123517 (=> (not res!750711) (not e!639649))))

(assert (=> b!1123517 (= res!750711 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35812 _keys!1208))))))

(declare-fun b!1123518 () Bool)

(declare-fun e!639652 () Bool)

(declare-fun tp_is_empty!28213 () Bool)

(assert (=> b!1123518 (= e!639652 tp_is_empty!28213)))

(declare-fun mapNonEmpty!44137 () Bool)

(declare-fun tp!83753 () Bool)

(assert (=> mapNonEmpty!44137 (= mapRes!44137 (and tp!83753 e!639652))))

(declare-fun mapValue!44137 () ValueCell!13397)

(declare-fun mapKey!44137 () (_ BitVec 32))

(declare-fun mapRest!44137 () (Array (_ BitVec 32) ValueCell!13397))

(assert (=> mapNonEmpty!44137 (= (arr!35276 _values!996) (store mapRest!44137 mapKey!44137 mapValue!44137))))

(declare-fun b!1123519 () Bool)

(assert (=> b!1123519 (= e!639651 e!639644)))

(declare-fun res!750702 () Bool)

(assert (=> b!1123519 (=> res!750702 e!639644)))

(assert (=> b!1123519 (= res!750702 (not (= from!1455 i!673)))))

(declare-fun lt!499095 () array!73254)

(declare-fun lt!499094 () ListLongMap!15843)

(assert (=> b!1123519 (= lt!499094 (getCurrentListMapNoExtraKeys!4397 lt!499090 lt!499095 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2489 (Int (_ BitVec 64)) V!42745)

(assert (=> b!1123519 (= lt!499095 (array!73255 (store (arr!35276 _values!996) i!673 (ValueCellFull!13397 (dynLambda!2489 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35813 _values!996)))))

(declare-fun lt!499089 () ListLongMap!15843)

(assert (=> b!1123519 (= lt!499089 (getCurrentListMapNoExtraKeys!4397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123511 () Bool)

(declare-fun e!639653 () Bool)

(declare-fun e!639650 () Bool)

(assert (=> b!1123511 (= e!639653 (and e!639650 mapRes!44137))))

(declare-fun condMapEmpty!44137 () Bool)

(declare-fun mapDefault!44137 () ValueCell!13397)

