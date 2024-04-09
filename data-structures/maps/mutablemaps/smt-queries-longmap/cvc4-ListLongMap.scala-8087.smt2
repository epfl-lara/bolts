; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99428 () Bool)

(assert start!99428)

(declare-fun b_free!24971 () Bool)

(declare-fun b_next!24971 () Bool)

(assert (=> start!99428 (= b_free!24971 (not b_next!24971))))

(declare-fun tp!87628 () Bool)

(declare-fun b_and!40823 () Bool)

(assert (=> start!99428 (= tp!87628 b_and!40823)))

(declare-fun b!1172981 () Bool)

(declare-fun res!778966 () Bool)

(declare-fun e!666764 () Bool)

(assert (=> b!1172981 (=> (not res!778966) (not e!666764))))

(declare-datatypes ((array!75778 0))(
  ( (array!75779 (arr!36535 (Array (_ BitVec 32) (_ BitVec 64))) (size!37072 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75778)

(declare-datatypes ((List!25793 0))(
  ( (Nil!25790) (Cons!25789 (h!26998 (_ BitVec 64)) (t!37763 List!25793)) )
))
(declare-fun arrayNoDuplicates!0 (array!75778 (_ BitVec 32) List!25793) Bool)

(assert (=> b!1172981 (= res!778966 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25790))))

(declare-fun mapNonEmpty!46079 () Bool)

(declare-fun mapRes!46079 () Bool)

(declare-fun tp!87627 () Bool)

(declare-fun e!666758 () Bool)

(assert (=> mapNonEmpty!46079 (= mapRes!46079 (and tp!87627 e!666758))))

(declare-datatypes ((V!44461 0))(
  ( (V!44462 (val!14807 Int)) )
))
(declare-datatypes ((ValueCell!14041 0))(
  ( (ValueCellFull!14041 (v!17446 V!44461)) (EmptyCell!14041) )
))
(declare-fun mapRest!46079 () (Array (_ BitVec 32) ValueCell!14041))

(declare-fun mapKey!46079 () (_ BitVec 32))

(declare-datatypes ((array!75780 0))(
  ( (array!75781 (arr!36536 (Array (_ BitVec 32) ValueCell!14041)) (size!37073 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75780)

(declare-fun mapValue!46079 () ValueCell!14041)

(assert (=> mapNonEmpty!46079 (= (arr!36536 _values!996) (store mapRest!46079 mapKey!46079 mapValue!46079))))

(declare-fun b!1172982 () Bool)

(declare-datatypes ((Unit!38585 0))(
  ( (Unit!38586) )
))
(declare-fun e!666765 () Unit!38585)

(declare-fun Unit!38587 () Unit!38585)

(assert (=> b!1172982 (= e!666765 Unit!38587)))

(declare-fun b!1172983 () Bool)

(declare-fun e!666761 () Bool)

(declare-fun e!666759 () Bool)

(assert (=> b!1172983 (= e!666761 (not e!666759))))

(declare-fun res!778961 () Bool)

(assert (=> b!1172983 (=> res!778961 e!666759)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172983 (= res!778961 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172983 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528609 () Unit!38585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75778 (_ BitVec 64) (_ BitVec 32)) Unit!38585)

(assert (=> b!1172983 (= lt!528609 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172984 () Bool)

(declare-fun res!778962 () Bool)

(assert (=> b!1172984 (=> (not res!778962) (not e!666764))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172984 (= res!778962 (validMask!0 mask!1564))))

(declare-fun b!1172985 () Bool)

(assert (=> b!1172985 (= e!666764 e!666761)))

(declare-fun res!778964 () Bool)

(assert (=> b!1172985 (=> (not res!778964) (not e!666761))))

(declare-fun lt!528606 () array!75778)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75778 (_ BitVec 32)) Bool)

(assert (=> b!1172985 (= res!778964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528606 mask!1564))))

(assert (=> b!1172985 (= lt!528606 (array!75779 (store (arr!36535 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37072 _keys!1208)))))

(declare-fun b!1172986 () Bool)

(declare-fun e!666763 () Bool)

(declare-fun e!666769 () Bool)

(assert (=> b!1172986 (= e!666763 e!666769)))

(declare-fun res!778960 () Bool)

(assert (=> b!1172986 (=> res!778960 e!666769)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172986 (= res!778960 (not (validKeyInArray!0 (select (arr!36535 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19020 0))(
  ( (tuple2!19021 (_1!9520 (_ BitVec 64)) (_2!9520 V!44461)) )
))
(declare-datatypes ((List!25794 0))(
  ( (Nil!25791) (Cons!25790 (h!26999 tuple2!19020) (t!37764 List!25794)) )
))
(declare-datatypes ((ListLongMap!17001 0))(
  ( (ListLongMap!17002 (toList!8516 List!25794)) )
))
(declare-fun lt!528618 () ListLongMap!17001)

(declare-fun lt!528612 () ListLongMap!17001)

(assert (=> b!1172986 (= lt!528618 lt!528612)))

(declare-fun lt!528616 () ListLongMap!17001)

(declare-fun -!1529 (ListLongMap!17001 (_ BitVec 64)) ListLongMap!17001)

(assert (=> b!1172986 (= lt!528612 (-!1529 lt!528616 k!934))))

(declare-fun zeroValue!944 () V!44461)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44461)

(declare-fun lt!528607 () array!75780)

(declare-fun getCurrentListMapNoExtraKeys!4948 (array!75778 array!75780 (_ BitVec 32) (_ BitVec 32) V!44461 V!44461 (_ BitVec 32) Int) ListLongMap!17001)

(assert (=> b!1172986 (= lt!528618 (getCurrentListMapNoExtraKeys!4948 lt!528606 lt!528607 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172986 (= lt!528616 (getCurrentListMapNoExtraKeys!4948 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528611 () Unit!38585)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!753 (array!75778 array!75780 (_ BitVec 32) (_ BitVec 32) V!44461 V!44461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38585)

(assert (=> b!1172986 (= lt!528611 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!753 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172987 () Bool)

(assert (=> b!1172987 (= e!666769 true)))

(assert (=> b!1172987 (not (= (select (arr!36535 _keys!1208) from!1455) k!934))))

(declare-fun lt!528615 () Unit!38585)

(assert (=> b!1172987 (= lt!528615 e!666765)))

(declare-fun c!116528 () Bool)

(assert (=> b!1172987 (= c!116528 (= (select (arr!36535 _keys!1208) from!1455) k!934))))

(declare-fun e!666766 () Bool)

(assert (=> b!1172987 e!666766))

(declare-fun res!778965 () Bool)

(assert (=> b!1172987 (=> (not res!778965) (not e!666766))))

(declare-fun lt!528610 () ListLongMap!17001)

(declare-fun lt!528605 () V!44461)

(declare-fun +!3751 (ListLongMap!17001 tuple2!19020) ListLongMap!17001)

(declare-fun get!18674 (ValueCell!14041 V!44461) V!44461)

(assert (=> b!1172987 (= res!778965 (= lt!528610 (+!3751 lt!528612 (tuple2!19021 (select (arr!36535 _keys!1208) from!1455) (get!18674 (select (arr!36536 _values!996) from!1455) lt!528605)))))))

(declare-fun b!1172988 () Bool)

(declare-fun tp_is_empty!29501 () Bool)

(assert (=> b!1172988 (= e!666758 tp_is_empty!29501)))

(declare-fun b!1172989 () Bool)

(declare-fun e!666760 () Bool)

(assert (=> b!1172989 (= e!666760 tp_is_empty!29501)))

(declare-fun b!1172990 () Bool)

(declare-fun res!778955 () Bool)

(assert (=> b!1172990 (=> (not res!778955) (not e!666764))))

(assert (=> b!1172990 (= res!778955 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37072 _keys!1208))))))

(declare-fun b!1172991 () Bool)

(declare-fun e!666768 () Bool)

(assert (=> b!1172991 (= e!666766 e!666768)))

(declare-fun res!778957 () Bool)

(assert (=> b!1172991 (=> res!778957 e!666768)))

(assert (=> b!1172991 (= res!778957 (not (= (select (arr!36535 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46079 () Bool)

(assert (=> mapIsEmpty!46079 mapRes!46079))

(declare-fun b!1172993 () Bool)

(declare-fun e!666767 () Bool)

(assert (=> b!1172993 (= e!666767 (and e!666760 mapRes!46079))))

(declare-fun condMapEmpty!46079 () Bool)

(declare-fun mapDefault!46079 () ValueCell!14041)

