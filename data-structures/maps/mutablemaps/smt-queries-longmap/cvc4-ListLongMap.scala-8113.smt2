; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99584 () Bool)

(assert start!99584)

(declare-fun b_free!25127 () Bool)

(declare-fun b_next!25127 () Bool)

(assert (=> start!99584 (= b_free!25127 (not b_next!25127))))

(declare-fun tp!88095 () Bool)

(declare-fun b_and!41135 () Bool)

(assert (=> start!99584 (= tp!88095 b_and!41135)))

(declare-fun b!1177906 () Bool)

(declare-fun res!782560 () Bool)

(declare-fun e!669664 () Bool)

(assert (=> b!1177906 (=> (not res!782560) (not e!669664))))

(declare-datatypes ((array!76086 0))(
  ( (array!76087 (arr!36689 (Array (_ BitVec 32) (_ BitVec 64))) (size!37226 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76086)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44669 0))(
  ( (V!44670 (val!14885 Int)) )
))
(declare-datatypes ((ValueCell!14119 0))(
  ( (ValueCellFull!14119 (v!17524 V!44669)) (EmptyCell!14119) )
))
(declare-datatypes ((array!76088 0))(
  ( (array!76089 (arr!36690 (Array (_ BitVec 32) ValueCell!14119)) (size!37227 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76088)

(assert (=> b!1177906 (= res!782560 (and (= (size!37227 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37226 _keys!1208) (size!37227 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177907 () Bool)

(declare-fun res!782556 () Bool)

(declare-fun e!669667 () Bool)

(assert (=> b!1177907 (=> (not res!782556) (not e!669667))))

(declare-fun lt!531972 () array!76086)

(declare-datatypes ((List!25931 0))(
  ( (Nil!25928) (Cons!25927 (h!27136 (_ BitVec 64)) (t!38057 List!25931)) )
))
(declare-fun arrayNoDuplicates!0 (array!76086 (_ BitVec 32) List!25931) Bool)

(assert (=> b!1177907 (= res!782556 (arrayNoDuplicates!0 lt!531972 #b00000000000000000000000000000000 Nil!25928))))

(declare-fun b!1177908 () Bool)

(declare-fun e!669655 () Bool)

(declare-fun e!669666 () Bool)

(assert (=> b!1177908 (= e!669655 e!669666)))

(declare-fun res!782566 () Bool)

(assert (=> b!1177908 (=> res!782566 e!669666)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177908 (= res!782566 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44669)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531979 () array!76088)

(declare-datatypes ((tuple2!19166 0))(
  ( (tuple2!19167 (_1!9593 (_ BitVec 64)) (_2!9593 V!44669)) )
))
(declare-datatypes ((List!25932 0))(
  ( (Nil!25929) (Cons!25928 (h!27137 tuple2!19166) (t!38058 List!25932)) )
))
(declare-datatypes ((ListLongMap!17147 0))(
  ( (ListLongMap!17148 (toList!8589 List!25932)) )
))
(declare-fun lt!531983 () ListLongMap!17147)

(declare-fun minValue!944 () V!44669)

(declare-fun getCurrentListMapNoExtraKeys!5019 (array!76086 array!76088 (_ BitVec 32) (_ BitVec 32) V!44669 V!44669 (_ BitVec 32) Int) ListLongMap!17147)

(assert (=> b!1177908 (= lt!531983 (getCurrentListMapNoExtraKeys!5019 lt!531972 lt!531979 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531970 () V!44669)

(assert (=> b!1177908 (= lt!531979 (array!76089 (store (arr!36690 _values!996) i!673 (ValueCellFull!14119 lt!531970)) (size!37227 _values!996)))))

(declare-fun dynLambda!2994 (Int (_ BitVec 64)) V!44669)

(assert (=> b!1177908 (= lt!531970 (dynLambda!2994 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531980 () ListLongMap!17147)

(assert (=> b!1177908 (= lt!531980 (getCurrentListMapNoExtraKeys!5019 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177909 () Bool)

(declare-fun res!782555 () Bool)

(assert (=> b!1177909 (=> (not res!782555) (not e!669664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76086 (_ BitVec 32)) Bool)

(assert (=> b!1177909 (= res!782555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177910 () Bool)

(declare-fun e!669660 () Bool)

(assert (=> b!1177910 (= e!669666 e!669660)))

(declare-fun res!782551 () Bool)

(assert (=> b!1177910 (=> res!782551 e!669660)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177910 (= res!782551 (not (validKeyInArray!0 (select (arr!36689 _keys!1208) from!1455))))))

(declare-fun lt!531974 () ListLongMap!17147)

(declare-fun lt!531977 () ListLongMap!17147)

(assert (=> b!1177910 (= lt!531974 lt!531977)))

(declare-fun lt!531973 () ListLongMap!17147)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1589 (ListLongMap!17147 (_ BitVec 64)) ListLongMap!17147)

(assert (=> b!1177910 (= lt!531977 (-!1589 lt!531973 k!934))))

(assert (=> b!1177910 (= lt!531974 (getCurrentListMapNoExtraKeys!5019 lt!531972 lt!531979 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177910 (= lt!531973 (getCurrentListMapNoExtraKeys!5019 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38841 0))(
  ( (Unit!38842) )
))
(declare-fun lt!531976 () Unit!38841)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!813 (array!76086 array!76088 (_ BitVec 32) (_ BitVec 32) V!44669 V!44669 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38841)

(assert (=> b!1177910 (= lt!531976 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!813 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177911 () Bool)

(declare-fun e!669661 () Bool)

(declare-fun tp_is_empty!29657 () Bool)

(assert (=> b!1177911 (= e!669661 tp_is_empty!29657)))

(declare-fun b!1177912 () Bool)

(declare-fun res!782559 () Bool)

(assert (=> b!1177912 (=> (not res!782559) (not e!669664))))

(assert (=> b!1177912 (= res!782559 (= (select (arr!36689 _keys!1208) i!673) k!934))))

(declare-fun b!1177914 () Bool)

(declare-fun e!669656 () Bool)

(declare-fun e!669663 () Bool)

(declare-fun mapRes!46313 () Bool)

(assert (=> b!1177914 (= e!669656 (and e!669663 mapRes!46313))))

(declare-fun condMapEmpty!46313 () Bool)

(declare-fun mapDefault!46313 () ValueCell!14119)

