; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99650 () Bool)

(assert start!99650)

(declare-fun b_free!25193 () Bool)

(declare-fun b_next!25193 () Bool)

(assert (=> start!99650 (= b_free!25193 (not b_next!25193))))

(declare-fun tp!88293 () Bool)

(declare-fun b_and!41267 () Bool)

(assert (=> start!99650 (= tp!88293 b_and!41267)))

(declare-fun b!1180077 () Bool)

(declare-fun e!670947 () Bool)

(declare-fun e!670953 () Bool)

(assert (=> b!1180077 (= e!670947 e!670953)))

(declare-fun res!784169 () Bool)

(assert (=> b!1180077 (=> res!784169 e!670953)))

(declare-datatypes ((array!76218 0))(
  ( (array!76219 (arr!36755 (Array (_ BitVec 32) (_ BitVec 64))) (size!37292 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76218)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180077 (= res!784169 (not (validKeyInArray!0 (select (arr!36755 _keys!1208) from!1455))))))

(declare-datatypes ((V!44757 0))(
  ( (V!44758 (val!14918 Int)) )
))
(declare-datatypes ((tuple2!19224 0))(
  ( (tuple2!19225 (_1!9622 (_ BitVec 64)) (_2!9622 V!44757)) )
))
(declare-datatypes ((List!25987 0))(
  ( (Nil!25984) (Cons!25983 (h!27192 tuple2!19224) (t!38179 List!25987)) )
))
(declare-datatypes ((ListLongMap!17205 0))(
  ( (ListLongMap!17206 (toList!8618 List!25987)) )
))
(declare-fun lt!533457 () ListLongMap!17205)

(declare-fun lt!533458 () ListLongMap!17205)

(assert (=> b!1180077 (= lt!533457 lt!533458)))

(declare-fun lt!533460 () ListLongMap!17205)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1611 (ListLongMap!17205 (_ BitVec 64)) ListLongMap!17205)

(assert (=> b!1180077 (= lt!533458 (-!1611 lt!533460 k!934))))

(declare-fun zeroValue!944 () V!44757)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!533455 () array!76218)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14152 0))(
  ( (ValueCellFull!14152 (v!17557 V!44757)) (EmptyCell!14152) )
))
(declare-datatypes ((array!76220 0))(
  ( (array!76221 (arr!36756 (Array (_ BitVec 32) ValueCell!14152)) (size!37293 (_ BitVec 32))) )
))
(declare-fun lt!533464 () array!76220)

(declare-fun minValue!944 () V!44757)

(declare-fun getCurrentListMapNoExtraKeys!5046 (array!76218 array!76220 (_ BitVec 32) (_ BitVec 32) V!44757 V!44757 (_ BitVec 32) Int) ListLongMap!17205)

(assert (=> b!1180077 (= lt!533457 (getCurrentListMapNoExtraKeys!5046 lt!533455 lt!533464 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76220)

(assert (=> b!1180077 (= lt!533460 (getCurrentListMapNoExtraKeys!5046 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38938 0))(
  ( (Unit!38939) )
))
(declare-fun lt!533469 () Unit!38938)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!835 (array!76218 array!76220 (_ BitVec 32) (_ BitVec 32) V!44757 V!44757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38938)

(assert (=> b!1180077 (= lt!533469 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!835 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180078 () Bool)

(declare-fun e!670942 () Bool)

(declare-fun arrayContainsKey!0 (array!76218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180078 (= e!670942 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180079 () Bool)

(declare-fun e!670951 () Bool)

(declare-fun e!670944 () Bool)

(declare-fun mapRes!46412 () Bool)

(assert (=> b!1180079 (= e!670951 (and e!670944 mapRes!46412))))

(declare-fun condMapEmpty!46412 () Bool)

(declare-fun mapDefault!46412 () ValueCell!14152)

