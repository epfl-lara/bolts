; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99778 () Bool)

(assert start!99778)

(declare-fun b_free!25321 () Bool)

(declare-fun b_next!25321 () Bool)

(assert (=> start!99778 (= b_free!25321 (not b_next!25321))))

(declare-fun tp!88678 () Bool)

(declare-fun b_and!41523 () Bool)

(assert (=> start!99778 (= tp!88678 b_and!41523)))

(declare-fun b!1184173 () Bool)

(declare-fun e!673317 () Bool)

(declare-fun tp_is_empty!29851 () Bool)

(assert (=> b!1184173 (= e!673317 tp_is_empty!29851)))

(declare-fun b!1184174 () Bool)

(declare-fun e!673321 () Bool)

(declare-fun e!673319 () Bool)

(assert (=> b!1184174 (= e!673321 e!673319)))

(declare-fun res!787177 () Bool)

(assert (=> b!1184174 (=> res!787177 e!673319)))

(declare-datatypes ((array!76470 0))(
  ( (array!76471 (arr!36881 (Array (_ BitVec 32) (_ BitVec 64))) (size!37418 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76470)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1184174 (= res!787177 (not (= (select (arr!36881 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184175 () Bool)

(declare-fun res!787173 () Bool)

(declare-fun e!673318 () Bool)

(assert (=> b!1184175 (=> (not res!787173) (not e!673318))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184175 (= res!787173 (= (select (arr!36881 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46604 () Bool)

(declare-fun mapRes!46604 () Bool)

(declare-fun tp!88677 () Bool)

(assert (=> mapNonEmpty!46604 (= mapRes!46604 (and tp!88677 e!673317))))

(declare-fun mapKey!46604 () (_ BitVec 32))

(declare-datatypes ((V!44929 0))(
  ( (V!44930 (val!14982 Int)) )
))
(declare-datatypes ((ValueCell!14216 0))(
  ( (ValueCellFull!14216 (v!17621 V!44929)) (EmptyCell!14216) )
))
(declare-fun mapValue!46604 () ValueCell!14216)

(declare-datatypes ((array!76472 0))(
  ( (array!76473 (arr!36882 (Array (_ BitVec 32) ValueCell!14216)) (size!37419 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76472)

(declare-fun mapRest!46604 () (Array (_ BitVec 32) ValueCell!14216))

(assert (=> mapNonEmpty!46604 (= (arr!36882 _values!996) (store mapRest!46604 mapKey!46604 mapValue!46604))))

(declare-fun b!1184176 () Bool)

(declare-fun res!787181 () Bool)

(declare-fun e!673314 () Bool)

(assert (=> b!1184176 (=> (not res!787181) (not e!673314))))

(declare-fun lt!536860 () array!76470)

(declare-datatypes ((List!26095 0))(
  ( (Nil!26092) (Cons!26091 (h!27300 (_ BitVec 64)) (t!38415 List!26095)) )
))
(declare-fun arrayNoDuplicates!0 (array!76470 (_ BitVec 32) List!26095) Bool)

(assert (=> b!1184176 (= res!787181 (arrayNoDuplicates!0 lt!536860 #b00000000000000000000000000000000 Nil!26092))))

(declare-fun b!1184177 () Bool)

(declare-fun e!673310 () Bool)

(declare-fun e!673312 () Bool)

(assert (=> b!1184177 (= e!673310 e!673312)))

(declare-fun res!787178 () Bool)

(assert (=> b!1184177 (=> res!787178 e!673312)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184177 (= res!787178 (not (validKeyInArray!0 (select (arr!36881 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19332 0))(
  ( (tuple2!19333 (_1!9676 (_ BitVec 64)) (_2!9676 V!44929)) )
))
(declare-datatypes ((List!26096 0))(
  ( (Nil!26093) (Cons!26092 (h!27301 tuple2!19332) (t!38416 List!26096)) )
))
(declare-datatypes ((ListLongMap!17313 0))(
  ( (ListLongMap!17314 (toList!8672 List!26096)) )
))
(declare-fun lt!536859 () ListLongMap!17313)

(declare-fun lt!536849 () ListLongMap!17313)

(assert (=> b!1184177 (= lt!536859 lt!536849)))

(declare-fun lt!536850 () ListLongMap!17313)

(declare-fun -!1660 (ListLongMap!17313 (_ BitVec 64)) ListLongMap!17313)

(assert (=> b!1184177 (= lt!536849 (-!1660 lt!536850 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!44929)

(declare-fun zeroValue!944 () V!44929)

(declare-fun lt!536857 () array!76472)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5092 (array!76470 array!76472 (_ BitVec 32) (_ BitVec 32) V!44929 V!44929 (_ BitVec 32) Int) ListLongMap!17313)

(assert (=> b!1184177 (= lt!536859 (getCurrentListMapNoExtraKeys!5092 lt!536860 lt!536857 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184177 (= lt!536850 (getCurrentListMapNoExtraKeys!5092 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39136 0))(
  ( (Unit!39137) )
))
(declare-fun lt!536862 () Unit!39136)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!876 (array!76470 array!76472 (_ BitVec 32) (_ BitVec 32) V!44929 V!44929 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39136)

(assert (=> b!1184177 (= lt!536862 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!876 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184179 () Bool)

(declare-fun e!673320 () Bool)

(declare-fun e!673311 () Bool)

(assert (=> b!1184179 (= e!673320 (and e!673311 mapRes!46604))))

(declare-fun condMapEmpty!46604 () Bool)

(declare-fun mapDefault!46604 () ValueCell!14216)

