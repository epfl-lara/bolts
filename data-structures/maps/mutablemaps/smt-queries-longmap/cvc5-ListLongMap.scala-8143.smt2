; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99760 () Bool)

(assert start!99760)

(declare-fun b_free!25303 () Bool)

(declare-fun b_next!25303 () Bool)

(assert (=> start!99760 (= b_free!25303 (not b_next!25303))))

(declare-fun tp!88624 () Bool)

(declare-fun b_and!41487 () Bool)

(assert (=> start!99760 (= tp!88624 b_and!41487)))

(declare-fun b!1183615 () Bool)

(declare-fun res!786777 () Bool)

(declare-fun e!672986 () Bool)

(assert (=> b!1183615 (=> (not res!786777) (not e!672986))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76434 0))(
  ( (array!76435 (arr!36863 (Array (_ BitVec 32) (_ BitVec 64))) (size!37400 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76434)

(assert (=> b!1183615 (= res!786777 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37400 _keys!1208))))))

(declare-fun mapIsEmpty!46577 () Bool)

(declare-fun mapRes!46577 () Bool)

(assert (=> mapIsEmpty!46577 mapRes!46577))

(declare-fun b!1183616 () Bool)

(declare-fun res!786773 () Bool)

(assert (=> b!1183616 (=> (not res!786773) (not e!672986))))

(declare-datatypes ((List!26077 0))(
  ( (Nil!26074) (Cons!26073 (h!27282 (_ BitVec 64)) (t!38379 List!26077)) )
))
(declare-fun arrayNoDuplicates!0 (array!76434 (_ BitVec 32) List!26077) Bool)

(assert (=> b!1183616 (= res!786773 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26074))))

(declare-fun b!1183617 () Bool)

(declare-fun e!672988 () Bool)

(declare-fun tp_is_empty!29833 () Bool)

(assert (=> b!1183617 (= e!672988 tp_is_empty!29833)))

(declare-fun b!1183618 () Bool)

(declare-fun res!786778 () Bool)

(assert (=> b!1183618 (=> (not res!786778) (not e!672986))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1183618 (= res!786778 (= (select (arr!36863 _keys!1208) i!673) k!934))))

(declare-fun b!1183619 () Bool)

(declare-fun e!672990 () Bool)

(declare-fun e!672995 () Bool)

(assert (=> b!1183619 (= e!672990 e!672995)))

(declare-fun res!786775 () Bool)

(assert (=> b!1183619 (=> res!786775 e!672995)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1183619 (= res!786775 (not (= (select (arr!36863 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183620 () Bool)

(declare-fun e!672997 () Bool)

(declare-fun e!672994 () Bool)

(assert (=> b!1183620 (= e!672997 e!672994)))

(declare-fun res!786772 () Bool)

(assert (=> b!1183620 (=> res!786772 e!672994)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183620 (= res!786772 (not (validKeyInArray!0 (select (arr!36863 _keys!1208) from!1455))))))

(declare-datatypes ((V!44905 0))(
  ( (V!44906 (val!14973 Int)) )
))
(declare-datatypes ((tuple2!19314 0))(
  ( (tuple2!19315 (_1!9667 (_ BitVec 64)) (_2!9667 V!44905)) )
))
(declare-datatypes ((List!26078 0))(
  ( (Nil!26075) (Cons!26074 (h!27283 tuple2!19314) (t!38380 List!26078)) )
))
(declare-datatypes ((ListLongMap!17295 0))(
  ( (ListLongMap!17296 (toList!8663 List!26078)) )
))
(declare-fun lt!536342 () ListLongMap!17295)

(declare-fun lt!536339 () ListLongMap!17295)

(assert (=> b!1183620 (= lt!536342 lt!536339)))

(declare-fun lt!536352 () ListLongMap!17295)

(declare-fun -!1651 (ListLongMap!17295 (_ BitVec 64)) ListLongMap!17295)

(assert (=> b!1183620 (= lt!536339 (-!1651 lt!536352 k!934))))

(declare-fun zeroValue!944 () V!44905)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14207 0))(
  ( (ValueCellFull!14207 (v!17612 V!44905)) (EmptyCell!14207) )
))
(declare-datatypes ((array!76436 0))(
  ( (array!76437 (arr!36864 (Array (_ BitVec 32) ValueCell!14207)) (size!37401 (_ BitVec 32))) )
))
(declare-fun lt!536344 () array!76436)

(declare-fun minValue!944 () V!44905)

(declare-fun lt!536346 () array!76434)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5084 (array!76434 array!76436 (_ BitVec 32) (_ BitVec 32) V!44905 V!44905 (_ BitVec 32) Int) ListLongMap!17295)

(assert (=> b!1183620 (= lt!536342 (getCurrentListMapNoExtraKeys!5084 lt!536346 lt!536344 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76436)

(assert (=> b!1183620 (= lt!536352 (getCurrentListMapNoExtraKeys!5084 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39103 0))(
  ( (Unit!39104) )
))
(declare-fun lt!536348 () Unit!39103)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!868 (array!76434 array!76436 (_ BitVec 32) (_ BitVec 32) V!44905 V!44905 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39103)

(assert (=> b!1183620 (= lt!536348 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!868 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183621 () Bool)

(declare-fun e!672992 () Bool)

(assert (=> b!1183621 (= e!672986 e!672992)))

(declare-fun res!786770 () Bool)

(assert (=> b!1183621 (=> (not res!786770) (not e!672992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76434 (_ BitVec 32)) Bool)

(assert (=> b!1183621 (= res!786770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536346 mask!1564))))

(assert (=> b!1183621 (= lt!536346 (array!76435 (store (arr!36863 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37400 _keys!1208)))))

(declare-fun b!1183623 () Bool)

(declare-fun e!672993 () Bool)

(assert (=> b!1183623 (= e!672993 (and e!672988 mapRes!46577))))

(declare-fun condMapEmpty!46577 () Bool)

(declare-fun mapDefault!46577 () ValueCell!14207)

