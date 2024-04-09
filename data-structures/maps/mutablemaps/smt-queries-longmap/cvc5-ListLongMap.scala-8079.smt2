; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99376 () Bool)

(assert start!99376)

(declare-fun b_free!24919 () Bool)

(declare-fun b_next!24919 () Bool)

(assert (=> start!99376 (= b_free!24919 (not b_next!24919))))

(declare-fun tp!87471 () Bool)

(declare-fun b_and!40719 () Bool)

(assert (=> start!99376 (= tp!87471 b_and!40719)))

(declare-fun res!777544 () Bool)

(declare-fun e!665761 () Bool)

(assert (=> start!99376 (=> (not res!777544) (not e!665761))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75674 0))(
  ( (array!75675 (arr!36483 (Array (_ BitVec 32) (_ BitVec 64))) (size!37020 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75674)

(assert (=> start!99376 (= res!777544 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37020 _keys!1208))))))

(assert (=> start!99376 e!665761))

(declare-fun tp_is_empty!29449 () Bool)

(assert (=> start!99376 tp_is_empty!29449))

(declare-fun array_inv!27764 (array!75674) Bool)

(assert (=> start!99376 (array_inv!27764 _keys!1208)))

(assert (=> start!99376 true))

(assert (=> start!99376 tp!87471))

(declare-datatypes ((V!44393 0))(
  ( (V!44394 (val!14781 Int)) )
))
(declare-datatypes ((ValueCell!14015 0))(
  ( (ValueCellFull!14015 (v!17420 V!44393)) (EmptyCell!14015) )
))
(declare-datatypes ((array!75676 0))(
  ( (array!75677 (arr!36484 (Array (_ BitVec 32) ValueCell!14015)) (size!37021 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75676)

(declare-fun e!665768 () Bool)

(declare-fun array_inv!27765 (array!75676) Bool)

(assert (=> start!99376 (and (array_inv!27765 _values!996) e!665768)))

(declare-fun b!1171247 () Bool)

(declare-fun res!777548 () Bool)

(assert (=> b!1171247 (=> (not res!777548) (not e!665761))))

(declare-datatypes ((List!25744 0))(
  ( (Nil!25741) (Cons!25740 (h!26949 (_ BitVec 64)) (t!37662 List!25744)) )
))
(declare-fun arrayNoDuplicates!0 (array!75674 (_ BitVec 32) List!25744) Bool)

(assert (=> b!1171247 (= res!777548 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25741))))

(declare-fun b!1171248 () Bool)

(declare-fun res!777556 () Bool)

(assert (=> b!1171248 (=> (not res!777556) (not e!665761))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171248 (= res!777556 (validKeyInArray!0 k!934))))

(declare-fun b!1171249 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!665769 () Bool)

(declare-fun arrayContainsKey!0 (array!75674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171249 (= e!665769 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!46001 () Bool)

(declare-fun mapRes!46001 () Bool)

(declare-fun tp!87472 () Bool)

(declare-fun e!665770 () Bool)

(assert (=> mapNonEmpty!46001 (= mapRes!46001 (and tp!87472 e!665770))))

(declare-fun mapKey!46001 () (_ BitVec 32))

(declare-fun mapValue!46001 () ValueCell!14015)

(declare-fun mapRest!46001 () (Array (_ BitVec 32) ValueCell!14015))

(assert (=> mapNonEmpty!46001 (= (arr!36484 _values!996) (store mapRest!46001 mapKey!46001 mapValue!46001))))

(declare-fun b!1171250 () Bool)

(declare-fun res!777541 () Bool)

(assert (=> b!1171250 (=> (not res!777541) (not e!665761))))

(assert (=> b!1171250 (= res!777541 (= (select (arr!36483 _keys!1208) i!673) k!934))))

(declare-fun b!1171251 () Bool)

(declare-fun res!777550 () Bool)

(assert (=> b!1171251 (=> (not res!777550) (not e!665761))))

(assert (=> b!1171251 (= res!777550 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37020 _keys!1208))))))

(declare-fun b!1171252 () Bool)

(declare-fun res!777545 () Bool)

(declare-fun e!665767 () Bool)

(assert (=> b!1171252 (=> res!777545 e!665767)))

(declare-fun noDuplicate!1628 (List!25744) Bool)

(assert (=> b!1171252 (= res!777545 (not (noDuplicate!1628 Nil!25741)))))

(declare-fun b!1171253 () Bool)

(declare-fun e!665766 () Bool)

(declare-fun e!665771 () Bool)

(assert (=> b!1171253 (= e!665766 (not e!665771))))

(declare-fun res!777542 () Bool)

(assert (=> b!1171253 (=> res!777542 e!665771)))

(assert (=> b!1171253 (= res!777542 (bvsgt from!1455 i!673))))

(assert (=> b!1171253 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38530 0))(
  ( (Unit!38531) )
))
(declare-fun lt!527585 () Unit!38530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75674 (_ BitVec 64) (_ BitVec 32)) Unit!38530)

(assert (=> b!1171253 (= lt!527585 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171254 () Bool)

(declare-fun res!777549 () Bool)

(assert (=> b!1171254 (=> (not res!777549) (not e!665761))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171254 (= res!777549 (validMask!0 mask!1564))))

(declare-fun b!1171255 () Bool)

(assert (=> b!1171255 (= e!665761 e!665766)))

(declare-fun res!777538 () Bool)

(assert (=> b!1171255 (=> (not res!777538) (not e!665766))))

(declare-fun lt!527581 () array!75674)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75674 (_ BitVec 32)) Bool)

(assert (=> b!1171255 (= res!777538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527581 mask!1564))))

(assert (=> b!1171255 (= lt!527581 (array!75675 (store (arr!36483 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37020 _keys!1208)))))

(declare-fun mapIsEmpty!46001 () Bool)

(assert (=> mapIsEmpty!46001 mapRes!46001))

(declare-fun b!1171256 () Bool)

(assert (=> b!1171256 (= e!665767 true)))

(declare-fun lt!527586 () Bool)

(declare-fun contains!6863 (List!25744 (_ BitVec 64)) Bool)

(assert (=> b!1171256 (= lt!527586 (contains!6863 Nil!25741 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171257 () Bool)

(declare-fun e!665764 () Bool)

(declare-fun e!665772 () Bool)

(assert (=> b!1171257 (= e!665764 e!665772)))

(declare-fun res!777547 () Bool)

(assert (=> b!1171257 (=> res!777547 e!665772)))

(assert (=> b!1171257 (= res!777547 (not (validKeyInArray!0 (select (arr!36483 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18972 0))(
  ( (tuple2!18973 (_1!9496 (_ BitVec 64)) (_2!9496 V!44393)) )
))
(declare-datatypes ((List!25745 0))(
  ( (Nil!25742) (Cons!25741 (h!26950 tuple2!18972) (t!37663 List!25745)) )
))
(declare-datatypes ((ListLongMap!16953 0))(
  ( (ListLongMap!16954 (toList!8492 List!25745)) )
))
(declare-fun lt!527579 () ListLongMap!16953)

(declare-fun lt!527582 () ListLongMap!16953)

(assert (=> b!1171257 (= lt!527579 lt!527582)))

(declare-fun lt!527584 () ListLongMap!16953)

(declare-fun -!1509 (ListLongMap!16953 (_ BitVec 64)) ListLongMap!16953)

(assert (=> b!1171257 (= lt!527582 (-!1509 lt!527584 k!934))))

(declare-fun zeroValue!944 () V!44393)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44393)

(declare-fun lt!527583 () array!75676)

(declare-fun getCurrentListMapNoExtraKeys!4924 (array!75674 array!75676 (_ BitVec 32) (_ BitVec 32) V!44393 V!44393 (_ BitVec 32) Int) ListLongMap!16953)

(assert (=> b!1171257 (= lt!527579 (getCurrentListMapNoExtraKeys!4924 lt!527581 lt!527583 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171257 (= lt!527584 (getCurrentListMapNoExtraKeys!4924 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527575 () Unit!38530)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!733 (array!75674 array!75676 (_ BitVec 32) (_ BitVec 32) V!44393 V!44393 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38530)

(assert (=> b!1171257 (= lt!527575 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!733 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171258 () Bool)

(declare-fun e!665765 () Bool)

(assert (=> b!1171258 (= e!665772 e!665765)))

(declare-fun res!777552 () Bool)

(assert (=> b!1171258 (=> res!777552 e!665765)))

(assert (=> b!1171258 (= res!777552 (not (= (select (arr!36483 _keys!1208) from!1455) k!934)))))

(declare-fun e!665762 () Bool)

(assert (=> b!1171258 e!665762))

(declare-fun res!777546 () Bool)

(assert (=> b!1171258 (=> (not res!777546) (not e!665762))))

(declare-fun lt!527577 () V!44393)

(declare-fun lt!527580 () ListLongMap!16953)

(declare-fun +!3732 (ListLongMap!16953 tuple2!18972) ListLongMap!16953)

(declare-fun get!18639 (ValueCell!14015 V!44393) V!44393)

(assert (=> b!1171258 (= res!777546 (= lt!527580 (+!3732 lt!527582 (tuple2!18973 (select (arr!36483 _keys!1208) from!1455) (get!18639 (select (arr!36484 _values!996) from!1455) lt!527577)))))))

(declare-fun b!1171259 () Bool)

(declare-fun e!665763 () Bool)

(assert (=> b!1171259 (= e!665768 (and e!665763 mapRes!46001))))

(declare-fun condMapEmpty!46001 () Bool)

(declare-fun mapDefault!46001 () ValueCell!14015)

