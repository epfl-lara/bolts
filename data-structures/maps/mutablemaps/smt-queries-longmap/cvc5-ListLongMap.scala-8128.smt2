; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99670 () Bool)

(assert start!99670)

(declare-fun b_free!25213 () Bool)

(declare-fun b_next!25213 () Bool)

(assert (=> start!99670 (= b_free!25213 (not b_next!25213))))

(declare-fun tp!88354 () Bool)

(declare-fun b_and!41307 () Bool)

(assert (=> start!99670 (= tp!88354 b_and!41307)))

(declare-fun b!1180757 () Bool)

(declare-fun e!671332 () Bool)

(declare-fun tp_is_empty!29743 () Bool)

(assert (=> b!1180757 (= e!671332 tp_is_empty!29743)))

(declare-fun b!1180759 () Bool)

(declare-fun e!671337 () Bool)

(declare-fun e!671333 () Bool)

(assert (=> b!1180759 (= e!671337 (not e!671333))))

(declare-fun res!784676 () Bool)

(assert (=> b!1180759 (=> res!784676 e!671333)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180759 (= res!784676 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76254 0))(
  ( (array!76255 (arr!36773 (Array (_ BitVec 32) (_ BitVec 64))) (size!37310 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76254)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180759 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38962 0))(
  ( (Unit!38963) )
))
(declare-fun lt!533905 () Unit!38962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76254 (_ BitVec 64) (_ BitVec 32)) Unit!38962)

(assert (=> b!1180759 (= lt!533905 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180760 () Bool)

(declare-fun e!671341 () Bool)

(declare-fun e!671339 () Bool)

(assert (=> b!1180760 (= e!671341 e!671339)))

(declare-fun res!784672 () Bool)

(assert (=> b!1180760 (=> res!784672 e!671339)))

(assert (=> b!1180760 (= res!784672 (not (= (select (arr!36773 _keys!1208) from!1455) k!934)))))

(declare-fun b!1180761 () Bool)

(declare-fun e!671336 () Bool)

(assert (=> b!1180761 (= e!671336 tp_is_empty!29743)))

(declare-fun b!1180762 () Bool)

(declare-fun e!671338 () Bool)

(declare-fun e!671340 () Bool)

(assert (=> b!1180762 (= e!671338 e!671340)))

(declare-fun res!784677 () Bool)

(assert (=> b!1180762 (=> res!784677 e!671340)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180762 (= res!784677 (not (validKeyInArray!0 (select (arr!36773 _keys!1208) from!1455))))))

(declare-datatypes ((V!44785 0))(
  ( (V!44786 (val!14928 Int)) )
))
(declare-datatypes ((tuple2!19240 0))(
  ( (tuple2!19241 (_1!9630 (_ BitVec 64)) (_2!9630 V!44785)) )
))
(declare-datatypes ((List!26001 0))(
  ( (Nil!25998) (Cons!25997 (h!27206 tuple2!19240) (t!38213 List!26001)) )
))
(declare-datatypes ((ListLongMap!17221 0))(
  ( (ListLongMap!17222 (toList!8626 List!26001)) )
))
(declare-fun lt!533910 () ListLongMap!17221)

(declare-fun lt!533909 () ListLongMap!17221)

(assert (=> b!1180762 (= lt!533910 lt!533909)))

(declare-fun lt!533915 () ListLongMap!17221)

(declare-fun -!1616 (ListLongMap!17221 (_ BitVec 64)) ListLongMap!17221)

(assert (=> b!1180762 (= lt!533909 (-!1616 lt!533915 k!934))))

(declare-fun zeroValue!944 () V!44785)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44785)

(declare-fun lt!533911 () array!76254)

(declare-datatypes ((ValueCell!14162 0))(
  ( (ValueCellFull!14162 (v!17567 V!44785)) (EmptyCell!14162) )
))
(declare-datatypes ((array!76256 0))(
  ( (array!76257 (arr!36774 (Array (_ BitVec 32) ValueCell!14162)) (size!37311 (_ BitVec 32))) )
))
(declare-fun lt!533917 () array!76256)

(declare-fun getCurrentListMapNoExtraKeys!5051 (array!76254 array!76256 (_ BitVec 32) (_ BitVec 32) V!44785 V!44785 (_ BitVec 32) Int) ListLongMap!17221)

(assert (=> b!1180762 (= lt!533910 (getCurrentListMapNoExtraKeys!5051 lt!533911 lt!533917 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76256)

(assert (=> b!1180762 (= lt!533915 (getCurrentListMapNoExtraKeys!5051 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533913 () Unit!38962)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!840 (array!76254 array!76256 (_ BitVec 32) (_ BitVec 32) V!44785 V!44785 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38962)

(assert (=> b!1180762 (= lt!533913 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!840 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180763 () Bool)

(declare-fun res!784674 () Bool)

(declare-fun e!671343 () Bool)

(assert (=> b!1180763 (=> (not res!784674) (not e!671343))))

(declare-fun lt!533912 () tuple2!19240)

(declare-fun lt!533918 () ListLongMap!17221)

(declare-fun +!3845 (ListLongMap!17221 tuple2!19240) ListLongMap!17221)

(assert (=> b!1180763 (= res!784674 (= lt!533918 (+!3845 lt!533915 lt!533912)))))

(declare-fun b!1180764 () Bool)

(declare-fun res!784684 () Bool)

(declare-fun e!671334 () Bool)

(assert (=> b!1180764 (=> (not res!784684) (not e!671334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180764 (= res!784684 (validMask!0 mask!1564))))

(declare-fun b!1180765 () Bool)

(declare-fun res!784683 () Bool)

(assert (=> b!1180765 (=> (not res!784683) (not e!671334))))

(declare-datatypes ((List!26002 0))(
  ( (Nil!25999) (Cons!25998 (h!27207 (_ BitVec 64)) (t!38214 List!26002)) )
))
(declare-fun arrayNoDuplicates!0 (array!76254 (_ BitVec 32) List!26002) Bool)

(assert (=> b!1180765 (= res!784683 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25999))))

(declare-fun b!1180766 () Bool)

(declare-fun e!671342 () Bool)

(declare-fun mapRes!46442 () Bool)

(assert (=> b!1180766 (= e!671342 (and e!671336 mapRes!46442))))

(declare-fun condMapEmpty!46442 () Bool)

(declare-fun mapDefault!46442 () ValueCell!14162)

