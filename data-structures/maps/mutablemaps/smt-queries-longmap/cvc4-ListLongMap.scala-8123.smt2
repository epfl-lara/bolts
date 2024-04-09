; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99644 () Bool)

(assert start!99644)

(declare-fun b_free!25187 () Bool)

(declare-fun b_next!25187 () Bool)

(assert (=> start!99644 (= b_free!25187 (not b_next!25187))))

(declare-fun tp!88275 () Bool)

(declare-fun b_and!41255 () Bool)

(assert (=> start!99644 (= tp!88275 b_and!41255)))

(declare-fun b!1179873 () Bool)

(declare-datatypes ((Unit!38931 0))(
  ( (Unit!38932) )
))
(declare-fun e!670831 () Unit!38931)

(declare-fun Unit!38933 () Unit!38931)

(assert (=> b!1179873 (= e!670831 Unit!38933)))

(declare-fun b!1179874 () Bool)

(declare-fun res!784010 () Bool)

(declare-fun e!670834 () Bool)

(assert (=> b!1179874 (=> (not res!784010) (not e!670834))))

(declare-datatypes ((V!44749 0))(
  ( (V!44750 (val!14915 Int)) )
))
(declare-datatypes ((tuple2!19220 0))(
  ( (tuple2!19221 (_1!9620 (_ BitVec 64)) (_2!9620 V!44749)) )
))
(declare-fun lt!533333 () tuple2!19220)

(declare-datatypes ((List!25984 0))(
  ( (Nil!25981) (Cons!25980 (h!27189 tuple2!19220) (t!38170 List!25984)) )
))
(declare-datatypes ((ListLongMap!17201 0))(
  ( (ListLongMap!17202 (toList!8616 List!25984)) )
))
(declare-fun lt!533334 () ListLongMap!17201)

(declare-fun lt!533321 () ListLongMap!17201)

(declare-fun +!3836 (ListLongMap!17201 tuple2!19220) ListLongMap!17201)

(assert (=> b!1179874 (= res!784010 (= lt!533334 (+!3836 lt!533321 lt!533333)))))

(declare-fun b!1179875 () Bool)

(declare-fun e!670836 () Bool)

(assert (=> b!1179875 (= e!670836 true)))

(assert (=> b!1179875 e!670834))

(declare-fun res!784021 () Bool)

(assert (=> b!1179875 (=> (not res!784021) (not e!670834))))

(declare-datatypes ((array!76206 0))(
  ( (array!76207 (arr!36749 (Array (_ BitVec 32) (_ BitVec 64))) (size!37286 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76206)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179875 (= res!784021 (not (= (select (arr!36749 _keys!1208) from!1455) k!934)))))

(declare-fun lt!533322 () Unit!38931)

(assert (=> b!1179875 (= lt!533322 e!670831)))

(declare-fun c!116852 () Bool)

(assert (=> b!1179875 (= c!116852 (= (select (arr!36749 _keys!1208) from!1455) k!934))))

(declare-fun e!670830 () Bool)

(assert (=> b!1179875 e!670830))

(declare-fun res!784011 () Bool)

(assert (=> b!1179875 (=> (not res!784011) (not e!670830))))

(declare-fun lt!533332 () ListLongMap!17201)

(declare-fun lt!533325 () ListLongMap!17201)

(assert (=> b!1179875 (= res!784011 (= lt!533332 (+!3836 lt!533325 lt!533333)))))

(declare-datatypes ((ValueCell!14149 0))(
  ( (ValueCellFull!14149 (v!17554 V!44749)) (EmptyCell!14149) )
))
(declare-datatypes ((array!76208 0))(
  ( (array!76209 (arr!36750 (Array (_ BitVec 32) ValueCell!14149)) (size!37287 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76208)

(declare-fun lt!533323 () V!44749)

(declare-fun get!18823 (ValueCell!14149 V!44749) V!44749)

(assert (=> b!1179875 (= lt!533333 (tuple2!19221 (select (arr!36749 _keys!1208) from!1455) (get!18823 (select (arr!36750 _values!996) from!1455) lt!533323)))))

(declare-fun mapIsEmpty!46403 () Bool)

(declare-fun mapRes!46403 () Bool)

(assert (=> mapIsEmpty!46403 mapRes!46403))

(declare-fun b!1179876 () Bool)

(declare-fun e!670828 () Bool)

(assert (=> b!1179876 (= e!670830 e!670828)))

(declare-fun res!784022 () Bool)

(assert (=> b!1179876 (=> res!784022 e!670828)))

(assert (=> b!1179876 (= res!784022 (not (= (select (arr!36749 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179877 () Bool)

(declare-fun e!670827 () Bool)

(declare-fun e!670837 () Bool)

(assert (=> b!1179877 (= e!670827 e!670837)))

(declare-fun res!784024 () Bool)

(assert (=> b!1179877 (=> res!784024 e!670837)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179877 (= res!784024 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44749)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533320 () array!76206)

(declare-fun lt!533326 () array!76208)

(declare-fun minValue!944 () V!44749)

(declare-fun getCurrentListMapNoExtraKeys!5044 (array!76206 array!76208 (_ BitVec 32) (_ BitVec 32) V!44749 V!44749 (_ BitVec 32) Int) ListLongMap!17201)

(assert (=> b!1179877 (= lt!533332 (getCurrentListMapNoExtraKeys!5044 lt!533320 lt!533326 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179877 (= lt!533326 (array!76209 (store (arr!36750 _values!996) i!673 (ValueCellFull!14149 lt!533323)) (size!37287 _values!996)))))

(declare-fun dynLambda!3016 (Int (_ BitVec 64)) V!44749)

(assert (=> b!1179877 (= lt!533323 (dynLambda!3016 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179877 (= lt!533334 (getCurrentListMapNoExtraKeys!5044 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!784020 () Bool)

(declare-fun e!670826 () Bool)

(assert (=> start!99644 (=> (not res!784020) (not e!670826))))

(assert (=> start!99644 (= res!784020 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37286 _keys!1208))))))

(assert (=> start!99644 e!670826))

(declare-fun tp_is_empty!29717 () Bool)

(assert (=> start!99644 tp_is_empty!29717))

(declare-fun array_inv!27946 (array!76206) Bool)

(assert (=> start!99644 (array_inv!27946 _keys!1208)))

(assert (=> start!99644 true))

(assert (=> start!99644 tp!88275))

(declare-fun e!670835 () Bool)

(declare-fun array_inv!27947 (array!76208) Bool)

(assert (=> start!99644 (and (array_inv!27947 _values!996) e!670835)))

(declare-fun b!1179878 () Bool)

(declare-fun res!784009 () Bool)

(assert (=> b!1179878 (=> (not res!784009) (not e!670826))))

(assert (=> b!1179878 (= res!784009 (and (= (size!37287 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37286 _keys!1208) (size!37287 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179879 () Bool)

(declare-fun e!670825 () Bool)

(assert (=> b!1179879 (= e!670825 tp_is_empty!29717)))

(declare-fun b!1179880 () Bool)

(assert (=> b!1179880 (= e!670835 (and e!670825 mapRes!46403))))

(declare-fun condMapEmpty!46403 () Bool)

(declare-fun mapDefault!46403 () ValueCell!14149)

