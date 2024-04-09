; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98178 () Bool)

(assert start!98178)

(declare-fun b_free!23843 () Bool)

(declare-fun b_next!23843 () Bool)

(assert (=> start!98178 (= b_free!23843 (not b_next!23843))))

(declare-fun tp!84233 () Bool)

(declare-fun b_and!38491 () Bool)

(assert (=> start!98178 (= tp!84233 b_and!38491)))

(declare-fun b!1128178 () Bool)

(declare-fun res!754016 () Bool)

(declare-fun e!642141 () Bool)

(assert (=> b!1128178 (=> (not res!754016) (not e!642141))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128178 (= res!754016 (validMask!0 mask!1564))))

(declare-fun b!1128179 () Bool)

(declare-fun e!642140 () Bool)

(declare-fun e!642136 () Bool)

(assert (=> b!1128179 (= e!642140 (not e!642136))))

(declare-fun res!754011 () Bool)

(assert (=> b!1128179 (=> res!754011 e!642136)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128179 (= res!754011 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73566 0))(
  ( (array!73567 (arr!35432 (Array (_ BitVec 32) (_ BitVec 64))) (size!35969 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73566)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128179 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36911 0))(
  ( (Unit!36912) )
))
(declare-fun lt!500855 () Unit!36911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73566 (_ BitVec 64) (_ BitVec 32)) Unit!36911)

(assert (=> b!1128179 (= lt!500855 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128180 () Bool)

(declare-fun res!754015 () Bool)

(assert (=> b!1128180 (=> (not res!754015) (not e!642141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73566 (_ BitVec 32)) Bool)

(assert (=> b!1128180 (= res!754015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128181 () Bool)

(declare-fun e!642143 () Bool)

(declare-datatypes ((V!42957 0))(
  ( (V!42958 (val!14243 Int)) )
))
(declare-datatypes ((tuple2!18012 0))(
  ( (tuple2!18013 (_1!9016 (_ BitVec 64)) (_2!9016 V!42957)) )
))
(declare-datatypes ((List!24835 0))(
  ( (Nil!24832) (Cons!24831 (h!26040 tuple2!18012) (t!35677 List!24835)) )
))
(declare-datatypes ((ListLongMap!15993 0))(
  ( (ListLongMap!15994 (toList!8012 List!24835)) )
))
(declare-fun call!47812 () ListLongMap!15993)

(declare-fun call!47813 () ListLongMap!15993)

(assert (=> b!1128181 (= e!642143 (= call!47812 call!47813))))

(declare-fun b!1128182 () Bool)

(declare-fun -!1147 (ListLongMap!15993 (_ BitVec 64)) ListLongMap!15993)

(assert (=> b!1128182 (= e!642143 (= call!47812 (-!1147 call!47813 k!934)))))

(declare-fun b!1128183 () Bool)

(declare-fun res!754017 () Bool)

(assert (=> b!1128183 (=> (not res!754017) (not e!642141))))

(assert (=> b!1128183 (= res!754017 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35969 _keys!1208))))))

(declare-fun b!1128184 () Bool)

(declare-fun e!642139 () Bool)

(declare-fun tp_is_empty!28373 () Bool)

(assert (=> b!1128184 (= e!642139 tp_is_empty!28373)))

(declare-fun b!1128185 () Bool)

(declare-fun e!642137 () Bool)

(declare-fun e!642135 () Bool)

(assert (=> b!1128185 (= e!642137 e!642135)))

(declare-fun res!754009 () Bool)

(assert (=> b!1128185 (=> res!754009 e!642135)))

(assert (=> b!1128185 (= res!754009 (not (= (select (arr!35432 _keys!1208) from!1455) k!934)))))

(assert (=> b!1128185 e!642143))

(declare-fun c!109715 () Bool)

(assert (=> b!1128185 (= c!109715 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42957)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!500854 () Unit!36911)

(declare-datatypes ((ValueCell!13477 0))(
  ( (ValueCellFull!13477 (v!16877 V!42957)) (EmptyCell!13477) )
))
(declare-datatypes ((array!73568 0))(
  ( (array!73569 (arr!35433 (Array (_ BitVec 32) ValueCell!13477)) (size!35970 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73568)

(declare-fun minValue!944 () V!42957)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!402 (array!73566 array!73568 (_ BitVec 32) (_ BitVec 32) V!42957 V!42957 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36911)

(assert (=> b!1128185 (= lt!500854 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!402 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128186 () Bool)

(declare-fun res!754008 () Bool)

(assert (=> b!1128186 (=> (not res!754008) (not e!642141))))

(assert (=> b!1128186 (= res!754008 (and (= (size!35970 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35969 _keys!1208) (size!35970 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128187 () Bool)

(assert (=> b!1128187 (= e!642141 e!642140)))

(declare-fun res!754014 () Bool)

(assert (=> b!1128187 (=> (not res!754014) (not e!642140))))

(declare-fun lt!500850 () array!73566)

(assert (=> b!1128187 (= res!754014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500850 mask!1564))))

(assert (=> b!1128187 (= lt!500850 (array!73567 (store (arr!35432 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35969 _keys!1208)))))

(declare-fun b!1128188 () Bool)

(declare-fun e!642134 () Bool)

(declare-fun e!642138 () Bool)

(declare-fun mapRes!44377 () Bool)

(assert (=> b!1128188 (= e!642134 (and e!642138 mapRes!44377))))

(declare-fun condMapEmpty!44377 () Bool)

(declare-fun mapDefault!44377 () ValueCell!13477)

