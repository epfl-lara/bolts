; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98096 () Bool)

(assert start!98096)

(declare-fun b_free!23761 () Bool)

(declare-fun b_next!23761 () Bool)

(assert (=> start!98096 (= b_free!23761 (not b_next!23761))))

(declare-fun tp!83987 () Bool)

(declare-fun b_and!38327 () Bool)

(assert (=> start!98096 (= tp!83987 b_and!38327)))

(declare-fun b!1125872 () Bool)

(declare-fun res!752400 () Bool)

(declare-fun e!640905 () Bool)

(assert (=> b!1125872 (=> (not res!752400) (not e!640905))))

(declare-datatypes ((array!73404 0))(
  ( (array!73405 (arr!35351 (Array (_ BitVec 32) (_ BitVec 64))) (size!35888 (_ BitVec 32))) )
))
(declare-fun lt!499998 () array!73404)

(declare-datatypes ((List!24763 0))(
  ( (Nil!24760) (Cons!24759 (h!25968 (_ BitVec 64)) (t!35523 List!24763)) )
))
(declare-fun arrayNoDuplicates!0 (array!73404 (_ BitVec 32) List!24763) Bool)

(assert (=> b!1125872 (= res!752400 (arrayNoDuplicates!0 lt!499998 #b00000000000000000000000000000000 Nil!24760))))

(declare-fun mapIsEmpty!44254 () Bool)

(declare-fun mapRes!44254 () Bool)

(assert (=> mapIsEmpty!44254 mapRes!44254))

(declare-fun b!1125873 () Bool)

(declare-fun e!640904 () Bool)

(assert (=> b!1125873 (= e!640904 e!640905)))

(declare-fun res!752409 () Bool)

(assert (=> b!1125873 (=> (not res!752409) (not e!640905))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73404 (_ BitVec 32)) Bool)

(assert (=> b!1125873 (= res!752409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499998 mask!1564))))

(declare-fun _keys!1208 () array!73404)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125873 (= lt!499998 (array!73405 (store (arr!35351 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35888 _keys!1208)))))

(declare-fun b!1125874 () Bool)

(declare-fun res!752404 () Bool)

(assert (=> b!1125874 (=> (not res!752404) (not e!640904))))

(assert (=> b!1125874 (= res!752404 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35888 _keys!1208))))))

(declare-fun b!1125875 () Bool)

(declare-fun e!640913 () Bool)

(declare-fun e!640911 () Bool)

(assert (=> b!1125875 (= e!640913 e!640911)))

(declare-fun res!752412 () Bool)

(assert (=> b!1125875 (=> res!752412 e!640911)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1125875 (= res!752412 (not (= (select (arr!35351 _keys!1208) from!1455) k!934)))))

(declare-fun e!640909 () Bool)

(assert (=> b!1125875 e!640909))

(declare-fun c!109592 () Bool)

(assert (=> b!1125875 (= c!109592 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42849 0))(
  ( (V!42850 (val!14202 Int)) )
))
(declare-fun zeroValue!944 () V!42849)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36841 0))(
  ( (Unit!36842) )
))
(declare-fun lt!500002 () Unit!36841)

(declare-datatypes ((ValueCell!13436 0))(
  ( (ValueCellFull!13436 (v!16836 V!42849)) (EmptyCell!13436) )
))
(declare-datatypes ((array!73406 0))(
  ( (array!73407 (arr!35352 (Array (_ BitVec 32) ValueCell!13436)) (size!35889 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73406)

(declare-fun minValue!944 () V!42849)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!372 (array!73404 array!73406 (_ BitVec 32) (_ BitVec 32) V!42849 V!42849 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36841)

(assert (=> b!1125875 (= lt!500002 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125876 () Bool)

(declare-fun e!640910 () Bool)

(declare-fun tp_is_empty!28291 () Bool)

(assert (=> b!1125876 (= e!640910 tp_is_empty!28291)))

(declare-fun b!1125877 () Bool)

(declare-fun res!752402 () Bool)

(assert (=> b!1125877 (=> (not res!752402) (not e!640904))))

(assert (=> b!1125877 (= res!752402 (and (= (size!35889 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35888 _keys!1208) (size!35889 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44254 () Bool)

(declare-fun tp!83988 () Bool)

(assert (=> mapNonEmpty!44254 (= mapRes!44254 (and tp!83988 e!640910))))

(declare-fun mapRest!44254 () (Array (_ BitVec 32) ValueCell!13436))

(declare-fun mapValue!44254 () ValueCell!13436)

(declare-fun mapKey!44254 () (_ BitVec 32))

(assert (=> mapNonEmpty!44254 (= (arr!35352 _values!996) (store mapRest!44254 mapKey!44254 mapValue!44254))))

(declare-fun b!1125879 () Bool)

(declare-fun res!752403 () Bool)

(assert (=> b!1125879 (=> (not res!752403) (not e!640904))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125879 (= res!752403 (validKeyInArray!0 k!934))))

(declare-fun b!1125880 () Bool)

(declare-fun res!752407 () Bool)

(assert (=> b!1125880 (=> (not res!752407) (not e!640904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125880 (= res!752407 (validMask!0 mask!1564))))

(declare-fun b!1125881 () Bool)

(declare-datatypes ((tuple2!17936 0))(
  ( (tuple2!17937 (_1!8978 (_ BitVec 64)) (_2!8978 V!42849)) )
))
(declare-datatypes ((List!24764 0))(
  ( (Nil!24761) (Cons!24760 (h!25969 tuple2!17936) (t!35524 List!24764)) )
))
(declare-datatypes ((ListLongMap!15917 0))(
  ( (ListLongMap!15918 (toList!7974 List!24764)) )
))
(declare-fun call!47566 () ListLongMap!15917)

(declare-fun call!47567 () ListLongMap!15917)

(declare-fun -!1118 (ListLongMap!15917 (_ BitVec 64)) ListLongMap!15917)

(assert (=> b!1125881 (= e!640909 (= call!47566 (-!1118 call!47567 k!934)))))

(declare-fun b!1125882 () Bool)

(declare-fun e!640906 () Bool)

(assert (=> b!1125882 (= e!640905 (not e!640906))))

(declare-fun res!752410 () Bool)

(assert (=> b!1125882 (=> res!752410 e!640906)))

(assert (=> b!1125882 (= res!752410 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125882 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500001 () Unit!36841)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73404 (_ BitVec 64) (_ BitVec 32)) Unit!36841)

(assert (=> b!1125882 (= lt!500001 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125883 () Bool)

(declare-fun res!752411 () Bool)

(assert (=> b!1125883 (=> (not res!752411) (not e!640904))))

(assert (=> b!1125883 (= res!752411 (= (select (arr!35351 _keys!1208) i!673) k!934))))

(declare-fun b!1125884 () Bool)

(declare-fun res!752406 () Bool)

(assert (=> b!1125884 (=> (not res!752406) (not e!640904))))

(assert (=> b!1125884 (= res!752406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125885 () Bool)

(assert (=> b!1125885 (= e!640911 true)))

(declare-fun lt!499999 () Bool)

(declare-fun contains!6483 (ListLongMap!15917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4433 (array!73404 array!73406 (_ BitVec 32) (_ BitVec 32) V!42849 V!42849 (_ BitVec 32) Int) ListLongMap!15917)

(assert (=> b!1125885 (= lt!499999 (contains!6483 (getCurrentListMapNoExtraKeys!4433 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1125886 () Bool)

(declare-fun e!640912 () Bool)

(assert (=> b!1125886 (= e!640912 tp_is_empty!28291)))

(declare-fun b!1125878 () Bool)

(declare-fun res!752408 () Bool)

(assert (=> b!1125878 (=> (not res!752408) (not e!640904))))

(assert (=> b!1125878 (= res!752408 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24760))))

(declare-fun res!752401 () Bool)

(assert (=> start!98096 (=> (not res!752401) (not e!640904))))

(assert (=> start!98096 (= res!752401 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35888 _keys!1208))))))

(assert (=> start!98096 e!640904))

(assert (=> start!98096 tp_is_empty!28291))

(declare-fun array_inv!27004 (array!73404) Bool)

(assert (=> start!98096 (array_inv!27004 _keys!1208)))

(assert (=> start!98096 true))

(assert (=> start!98096 tp!83987))

(declare-fun e!640907 () Bool)

(declare-fun array_inv!27005 (array!73406) Bool)

(assert (=> start!98096 (and (array_inv!27005 _values!996) e!640907)))

(declare-fun b!1125887 () Bool)

(assert (=> b!1125887 (= e!640909 (= call!47566 call!47567))))

(declare-fun lt!500004 () array!73406)

(declare-fun bm!47563 () Bool)

(assert (=> bm!47563 (= call!47566 (getCurrentListMapNoExtraKeys!4433 lt!499998 lt!500004 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125888 () Bool)

(assert (=> b!1125888 (= e!640907 (and e!640912 mapRes!44254))))

(declare-fun condMapEmpty!44254 () Bool)

(declare-fun mapDefault!44254 () ValueCell!13436)

