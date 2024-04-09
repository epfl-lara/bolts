; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99802 () Bool)

(assert start!99802)

(declare-fun b_free!25345 () Bool)

(declare-fun b_next!25345 () Bool)

(assert (=> start!99802 (= b_free!25345 (not b_next!25345))))

(declare-fun tp!88749 () Bool)

(declare-fun b_and!41571 () Bool)

(assert (=> start!99802 (= tp!88749 b_and!41571)))

(declare-fun b!1184917 () Bool)

(declare-fun e!673746 () Bool)

(declare-fun e!673752 () Bool)

(assert (=> b!1184917 (= e!673746 e!673752)))

(declare-fun res!787723 () Bool)

(assert (=> b!1184917 (=> res!787723 e!673752)))

(declare-datatypes ((array!76518 0))(
  ( (array!76519 (arr!36905 (Array (_ BitVec 32) (_ BitVec 64))) (size!37442 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76518)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184917 (= res!787723 (not (validKeyInArray!0 (select (arr!36905 _keys!1208) from!1455))))))

(declare-datatypes ((V!44961 0))(
  ( (V!44962 (val!14994 Int)) )
))
(declare-datatypes ((tuple2!19352 0))(
  ( (tuple2!19353 (_1!9686 (_ BitVec 64)) (_2!9686 V!44961)) )
))
(declare-datatypes ((List!26114 0))(
  ( (Nil!26111) (Cons!26110 (h!27319 tuple2!19352) (t!38458 List!26114)) )
))
(declare-datatypes ((ListLongMap!17333 0))(
  ( (ListLongMap!17334 (toList!8682 List!26114)) )
))
(declare-fun lt!537543 () ListLongMap!17333)

(declare-fun lt!537546 () ListLongMap!17333)

(assert (=> b!1184917 (= lt!537543 lt!537546)))

(declare-fun lt!537536 () ListLongMap!17333)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1669 (ListLongMap!17333 (_ BitVec 64)) ListLongMap!17333)

(assert (=> b!1184917 (= lt!537546 (-!1669 lt!537536 k!934))))

(declare-fun zeroValue!944 () V!44961)

(declare-fun lt!537540 () array!76518)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14228 0))(
  ( (ValueCellFull!14228 (v!17633 V!44961)) (EmptyCell!14228) )
))
(declare-datatypes ((array!76520 0))(
  ( (array!76521 (arr!36906 (Array (_ BitVec 32) ValueCell!14228)) (size!37443 (_ BitVec 32))) )
))
(declare-fun lt!537548 () array!76520)

(declare-fun minValue!944 () V!44961)

(declare-fun getCurrentListMapNoExtraKeys!5101 (array!76518 array!76520 (_ BitVec 32) (_ BitVec 32) V!44961 V!44961 (_ BitVec 32) Int) ListLongMap!17333)

(assert (=> b!1184917 (= lt!537543 (getCurrentListMapNoExtraKeys!5101 lt!537540 lt!537548 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76520)

(assert (=> b!1184917 (= lt!537536 (getCurrentListMapNoExtraKeys!5101 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39169 0))(
  ( (Unit!39170) )
))
(declare-fun lt!537537 () Unit!39169)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!884 (array!76518 array!76520 (_ BitVec 32) (_ BitVec 32) V!44961 V!44961 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39169)

(assert (=> b!1184917 (= lt!537537 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!884 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184918 () Bool)

(declare-fun e!673744 () Bool)

(declare-fun e!673751 () Bool)

(declare-fun mapRes!46640 () Bool)

(assert (=> b!1184918 (= e!673744 (and e!673751 mapRes!46640))))

(declare-fun condMapEmpty!46640 () Bool)

(declare-fun mapDefault!46640 () ValueCell!14228)

