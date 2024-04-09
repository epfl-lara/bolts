; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99794 () Bool)

(assert start!99794)

(declare-fun b_free!25337 () Bool)

(declare-fun b_next!25337 () Bool)

(assert (=> start!99794 (= b_free!25337 (not b_next!25337))))

(declare-fun tp!88726 () Bool)

(declare-fun b_and!41555 () Bool)

(assert (=> start!99794 (= tp!88726 b_and!41555)))

(declare-fun b!1184669 () Bool)

(declare-fun e!673605 () Bool)

(assert (=> b!1184669 (= e!673605 true)))

(declare-datatypes ((V!44949 0))(
  ( (V!44950 (val!14990 Int)) )
))
(declare-datatypes ((tuple2!19344 0))(
  ( (tuple2!19345 (_1!9682 (_ BitVec 64)) (_2!9682 V!44949)) )
))
(declare-datatypes ((List!26107 0))(
  ( (Nil!26104) (Cons!26103 (h!27312 tuple2!19344) (t!38443 List!26107)) )
))
(declare-datatypes ((ListLongMap!17325 0))(
  ( (ListLongMap!17326 (toList!8678 List!26107)) )
))
(declare-fun lt!537304 () ListLongMap!17325)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!537311 () ListLongMap!17325)

(declare-fun -!1665 (ListLongMap!17325 (_ BitVec 64)) ListLongMap!17325)

(assert (=> b!1184669 (= (-!1665 lt!537304 k!934) lt!537311)))

(declare-datatypes ((array!76502 0))(
  ( (array!76503 (arr!36897 (Array (_ BitVec 32) (_ BitVec 64))) (size!37434 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76502)

(declare-fun lt!537319 () ListLongMap!17325)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!537307 () V!44949)

(declare-datatypes ((Unit!39157 0))(
  ( (Unit!39158) )
))
(declare-fun lt!537312 () Unit!39157)

(declare-fun addRemoveCommutativeForDiffKeys!178 (ListLongMap!17325 (_ BitVec 64) V!44949 (_ BitVec 64)) Unit!39157)

(assert (=> b!1184669 (= lt!537312 (addRemoveCommutativeForDiffKeys!178 lt!537319 (select (arr!36897 _keys!1208) from!1455) lt!537307 k!934))))

(declare-fun lt!537310 () ListLongMap!17325)

(declare-fun lt!537305 () ListLongMap!17325)

(declare-fun lt!537309 () ListLongMap!17325)

(assert (=> b!1184669 (and (= lt!537310 lt!537304) (= lt!537305 lt!537309))))

(declare-fun lt!537314 () tuple2!19344)

(declare-fun +!3888 (ListLongMap!17325 tuple2!19344) ListLongMap!17325)

(assert (=> b!1184669 (= lt!537304 (+!3888 lt!537319 lt!537314))))

(assert (=> b!1184669 (not (= (select (arr!36897 _keys!1208) from!1455) k!934))))

(declare-fun lt!537303 () Unit!39157)

(declare-fun e!673607 () Unit!39157)

(assert (=> b!1184669 (= lt!537303 e!673607)))

(declare-fun c!117077 () Bool)

(assert (=> b!1184669 (= c!117077 (= (select (arr!36897 _keys!1208) from!1455) k!934))))

(declare-fun e!673603 () Bool)

(assert (=> b!1184669 e!673603))

(declare-fun res!787530 () Bool)

(assert (=> b!1184669 (=> (not res!787530) (not e!673603))))

(declare-fun lt!537321 () ListLongMap!17325)

(assert (=> b!1184669 (= res!787530 (= lt!537321 lt!537311))))

(assert (=> b!1184669 (= lt!537311 (+!3888 lt!537305 lt!537314))))

(assert (=> b!1184669 (= lt!537314 (tuple2!19345 (select (arr!36897 _keys!1208) from!1455) lt!537307))))

(declare-fun lt!537316 () V!44949)

(declare-datatypes ((ValueCell!14224 0))(
  ( (ValueCellFull!14224 (v!17629 V!44949)) (EmptyCell!14224) )
))
(declare-datatypes ((array!76504 0))(
  ( (array!76505 (arr!36898 (Array (_ BitVec 32) ValueCell!14224)) (size!37435 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76504)

(declare-fun get!18922 (ValueCell!14224 V!44949) V!44949)

(assert (=> b!1184669 (= lt!537307 (get!18922 (select (arr!36898 _values!996) from!1455) lt!537316))))

(declare-fun b!1184671 () Bool)

(declare-fun res!787542 () Bool)

(declare-fun e!673604 () Bool)

(assert (=> b!1184671 (=> (not res!787542) (not e!673604))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1184671 (= res!787542 (and (= (size!37435 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37434 _keys!1208) (size!37435 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184672 () Bool)

(declare-fun e!673601 () Bool)

(declare-fun tp_is_empty!29867 () Bool)

(assert (=> b!1184672 (= e!673601 tp_is_empty!29867)))

(declare-fun b!1184673 () Bool)

(declare-fun res!787541 () Bool)

(assert (=> b!1184673 (=> (not res!787541) (not e!673604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184673 (= res!787541 (validMask!0 mask!1564))))

(declare-fun b!1184674 () Bool)

(declare-fun e!673609 () Bool)

(declare-fun e!673606 () Bool)

(assert (=> b!1184674 (= e!673609 (not e!673606))))

(declare-fun res!787537 () Bool)

(assert (=> b!1184674 (=> res!787537 e!673606)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184674 (= res!787537 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184674 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!537313 () Unit!39157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76502 (_ BitVec 64) (_ BitVec 32)) Unit!39157)

(assert (=> b!1184674 (= lt!537313 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184675 () Bool)

(declare-fun e!673599 () Bool)

(assert (=> b!1184675 (= e!673599 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184676 () Bool)

(declare-fun res!787535 () Bool)

(assert (=> b!1184676 (=> (not res!787535) (not e!673604))))

(assert (=> b!1184676 (= res!787535 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37434 _keys!1208))))))

(declare-fun b!1184677 () Bool)

(declare-fun e!673608 () Bool)

(declare-fun mapRes!46628 () Bool)

(assert (=> b!1184677 (= e!673608 (and e!673601 mapRes!46628))))

(declare-fun condMapEmpty!46628 () Bool)

(declare-fun mapDefault!46628 () ValueCell!14224)

