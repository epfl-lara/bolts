; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97986 () Bool)

(assert start!97986)

(declare-fun b_free!23651 () Bool)

(declare-fun b_next!23651 () Bool)

(assert (=> start!97986 (= b_free!23651 (not b_next!23651))))

(declare-fun tp!83658 () Bool)

(declare-fun b_and!38107 () Bool)

(assert (=> start!97986 (= tp!83658 b_and!38107)))

(declare-datatypes ((V!42701 0))(
  ( (V!42702 (val!14147 Int)) )
))
(declare-fun zeroValue!944 () V!42701)

(declare-datatypes ((tuple2!17834 0))(
  ( (tuple2!17835 (_1!8927 (_ BitVec 64)) (_2!8927 V!42701)) )
))
(declare-datatypes ((List!24670 0))(
  ( (Nil!24667) (Cons!24666 (h!25875 tuple2!17834) (t!35320 List!24670)) )
))
(declare-datatypes ((ListLongMap!15815 0))(
  ( (ListLongMap!15816 (toList!7923 List!24670)) )
))
(declare-fun call!47236 () ListLongMap!15815)

(declare-datatypes ((array!73188 0))(
  ( (array!73189 (arr!35243 (Array (_ BitVec 32) (_ BitVec 64))) (size!35780 (_ BitVec 32))) )
))
(declare-fun lt!498764 () array!73188)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!47233 () Bool)

(declare-fun minValue!944 () V!42701)

(declare-datatypes ((ValueCell!13381 0))(
  ( (ValueCellFull!13381 (v!16781 V!42701)) (EmptyCell!13381) )
))
(declare-datatypes ((array!73190 0))(
  ( (array!73191 (arr!35244 (Array (_ BitVec 32) ValueCell!13381)) (size!35781 (_ BitVec 32))) )
))
(declare-fun lt!498765 () array!73190)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4383 (array!73188 array!73190 (_ BitVec 32) (_ BitVec 32) V!42701 V!42701 (_ BitVec 32) Int) ListLongMap!15815)

(assert (=> bm!47233 (= call!47236 (getCurrentListMapNoExtraKeys!4383 lt!498764 lt!498765 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!639173 () Bool)

(declare-fun call!47237 () ListLongMap!15815)

(declare-fun b!1122603 () Bool)

(declare-fun -!1085 (ListLongMap!15815 (_ BitVec 64)) ListLongMap!15815)

(assert (=> b!1122603 (= e!639173 (= call!47236 (-!1085 call!47237 k!934)))))

(declare-fun b!1122604 () Bool)

(declare-fun res!750067 () Bool)

(declare-fun e!639170 () Bool)

(assert (=> b!1122604 (=> (not res!750067) (not e!639170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122604 (= res!750067 (validMask!0 mask!1564))))

(declare-fun res!750073 () Bool)

(assert (=> start!97986 (=> (not res!750073) (not e!639170))))

(declare-fun _keys!1208 () array!73188)

(assert (=> start!97986 (= res!750073 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35780 _keys!1208))))))

(assert (=> start!97986 e!639170))

(declare-fun tp_is_empty!28181 () Bool)

(assert (=> start!97986 tp_is_empty!28181))

(declare-fun array_inv!26934 (array!73188) Bool)

(assert (=> start!97986 (array_inv!26934 _keys!1208)))

(assert (=> start!97986 true))

(assert (=> start!97986 tp!83658))

(declare-fun _values!996 () array!73190)

(declare-fun e!639164 () Bool)

(declare-fun array_inv!26935 (array!73190) Bool)

(assert (=> start!97986 (and (array_inv!26935 _values!996) e!639164)))

(declare-fun b!1122605 () Bool)

(declare-fun e!639167 () Bool)

(assert (=> b!1122605 (= e!639167 true)))

(declare-fun lt!498762 () Bool)

(declare-fun contains!6441 (ListLongMap!15815 (_ BitVec 64)) Bool)

(assert (=> b!1122605 (= lt!498762 (contains!6441 (getCurrentListMapNoExtraKeys!4383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1122606 () Bool)

(declare-fun e!639169 () Bool)

(assert (=> b!1122606 (= e!639169 tp_is_empty!28181)))

(declare-fun b!1122607 () Bool)

(declare-fun res!750075 () Bool)

(assert (=> b!1122607 (=> (not res!750075) (not e!639170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122607 (= res!750075 (validKeyInArray!0 k!934))))

(declare-fun b!1122608 () Bool)

(declare-fun e!639166 () Bool)

(assert (=> b!1122608 (= e!639166 tp_is_empty!28181)))

(declare-fun b!1122609 () Bool)

(declare-fun e!639171 () Bool)

(assert (=> b!1122609 (= e!639171 e!639167)))

(declare-fun res!750068 () Bool)

(assert (=> b!1122609 (=> res!750068 e!639167)))

(assert (=> b!1122609 (= res!750068 (not (= (select (arr!35243 _keys!1208) from!1455) k!934)))))

(assert (=> b!1122609 e!639173))

(declare-fun c!109427 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122609 (= c!109427 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36753 0))(
  ( (Unit!36754) )
))
(declare-fun lt!498766 () Unit!36753)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!336 (array!73188 array!73190 (_ BitVec 32) (_ BitVec 32) V!42701 V!42701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36753)

(assert (=> b!1122609 (= lt!498766 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122610 () Bool)

(declare-fun res!750076 () Bool)

(assert (=> b!1122610 (=> (not res!750076) (not e!639170))))

(assert (=> b!1122610 (= res!750076 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35780 _keys!1208))))))

(declare-fun b!1122611 () Bool)

(declare-fun e!639168 () Bool)

(declare-fun e!639172 () Bool)

(assert (=> b!1122611 (= e!639168 (not e!639172))))

(declare-fun res!750077 () Bool)

(assert (=> b!1122611 (=> res!750077 e!639172)))

(assert (=> b!1122611 (= res!750077 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122611 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!498767 () Unit!36753)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73188 (_ BitVec 64) (_ BitVec 32)) Unit!36753)

(assert (=> b!1122611 (= lt!498767 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!44089 () Bool)

(declare-fun mapRes!44089 () Bool)

(declare-fun tp!83657 () Bool)

(assert (=> mapNonEmpty!44089 (= mapRes!44089 (and tp!83657 e!639166))))

(declare-fun mapRest!44089 () (Array (_ BitVec 32) ValueCell!13381))

(declare-fun mapKey!44089 () (_ BitVec 32))

(declare-fun mapValue!44089 () ValueCell!13381)

(assert (=> mapNonEmpty!44089 (= (arr!35244 _values!996) (store mapRest!44089 mapKey!44089 mapValue!44089))))

(declare-fun b!1122612 () Bool)

(declare-fun res!750072 () Bool)

(assert (=> b!1122612 (=> (not res!750072) (not e!639170))))

(assert (=> b!1122612 (= res!750072 (and (= (size!35781 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35780 _keys!1208) (size!35781 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122613 () Bool)

(assert (=> b!1122613 (= e!639164 (and e!639169 mapRes!44089))))

(declare-fun condMapEmpty!44089 () Bool)

(declare-fun mapDefault!44089 () ValueCell!13381)

