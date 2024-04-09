; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98112 () Bool)

(assert start!98112)

(declare-fun b_free!23777 () Bool)

(declare-fun b_next!23777 () Bool)

(assert (=> start!98112 (= b_free!23777 (not b_next!23777))))

(declare-fun tp!84035 () Bool)

(declare-fun b_and!38359 () Bool)

(assert (=> start!98112 (= tp!84035 b_and!38359)))

(declare-fun b!1126320 () Bool)

(declare-fun res!752715 () Bool)

(declare-fun e!641147 () Bool)

(assert (=> b!1126320 (=> (not res!752715) (not e!641147))))

(declare-datatypes ((array!73436 0))(
  ( (array!73437 (arr!35367 (Array (_ BitVec 32) (_ BitVec 64))) (size!35904 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73436)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1126320 (= res!752715 (= (select (arr!35367 _keys!1208) i!673) k!934))))

(declare-fun b!1126321 () Bool)

(declare-fun res!752717 () Bool)

(assert (=> b!1126321 (=> (not res!752717) (not e!641147))))

(assert (=> b!1126321 (= res!752717 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35904 _keys!1208))))))

(declare-fun b!1126322 () Bool)

(declare-fun e!641151 () Bool)

(assert (=> b!1126322 (= e!641151 true)))

(declare-datatypes ((V!42869 0))(
  ( (V!42870 (val!14210 Int)) )
))
(declare-fun zeroValue!944 () V!42869)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!500167 () Bool)

(declare-datatypes ((ValueCell!13444 0))(
  ( (ValueCellFull!13444 (v!16844 V!42869)) (EmptyCell!13444) )
))
(declare-datatypes ((array!73438 0))(
  ( (array!73439 (arr!35368 (Array (_ BitVec 32) ValueCell!13444)) (size!35905 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73438)

(declare-fun minValue!944 () V!42869)

(declare-datatypes ((tuple2!17952 0))(
  ( (tuple2!17953 (_1!8986 (_ BitVec 64)) (_2!8986 V!42869)) )
))
(declare-datatypes ((List!24779 0))(
  ( (Nil!24776) (Cons!24775 (h!25984 tuple2!17952) (t!35555 List!24779)) )
))
(declare-datatypes ((ListLongMap!15933 0))(
  ( (ListLongMap!15934 (toList!7982 List!24779)) )
))
(declare-fun contains!6490 (ListLongMap!15933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4441 (array!73436 array!73438 (_ BitVec 32) (_ BitVec 32) V!42869 V!42869 (_ BitVec 32) Int) ListLongMap!15933)

(assert (=> b!1126322 (= lt!500167 (contains!6490 (getCurrentListMapNoExtraKeys!4441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1126323 () Bool)

(declare-fun e!641146 () Bool)

(declare-fun tp_is_empty!28307 () Bool)

(assert (=> b!1126323 (= e!641146 tp_is_empty!28307)))

(declare-fun b!1126324 () Bool)

(declare-fun e!641148 () Bool)

(assert (=> b!1126324 (= e!641148 e!641151)))

(declare-fun res!752716 () Bool)

(assert (=> b!1126324 (=> res!752716 e!641151)))

(assert (=> b!1126324 (= res!752716 (not (= (select (arr!35367 _keys!1208) from!1455) k!934)))))

(declare-fun e!641152 () Bool)

(assert (=> b!1126324 e!641152))

(declare-fun c!109616 () Bool)

(assert (=> b!1126324 (= c!109616 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36857 0))(
  ( (Unit!36858) )
))
(declare-fun lt!500166 () Unit!36857)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!378 (array!73436 array!73438 (_ BitVec 32) (_ BitVec 32) V!42869 V!42869 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36857)

(assert (=> b!1126324 (= lt!500166 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44278 () Bool)

(declare-fun mapRes!44278 () Bool)

(assert (=> mapIsEmpty!44278 mapRes!44278))

(declare-fun mapNonEmpty!44278 () Bool)

(declare-fun tp!84036 () Bool)

(declare-fun e!641150 () Bool)

(assert (=> mapNonEmpty!44278 (= mapRes!44278 (and tp!84036 e!641150))))

(declare-fun mapRest!44278 () (Array (_ BitVec 32) ValueCell!13444))

(declare-fun mapKey!44278 () (_ BitVec 32))

(declare-fun mapValue!44278 () ValueCell!13444)

(assert (=> mapNonEmpty!44278 (= (arr!35368 _values!996) (store mapRest!44278 mapKey!44278 mapValue!44278))))

(declare-fun b!1126325 () Bool)

(declare-fun res!752719 () Bool)

(assert (=> b!1126325 (=> (not res!752719) (not e!641147))))

(declare-datatypes ((List!24780 0))(
  ( (Nil!24777) (Cons!24776 (h!25985 (_ BitVec 64)) (t!35556 List!24780)) )
))
(declare-fun arrayNoDuplicates!0 (array!73436 (_ BitVec 32) List!24780) Bool)

(assert (=> b!1126325 (= res!752719 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24777))))

(declare-fun b!1126326 () Bool)

(declare-fun call!47615 () ListLongMap!15933)

(declare-fun call!47614 () ListLongMap!15933)

(assert (=> b!1126326 (= e!641152 (= call!47615 call!47614))))

(declare-fun b!1126327 () Bool)

(declare-fun e!641153 () Bool)

(declare-fun e!641144 () Bool)

(assert (=> b!1126327 (= e!641153 (not e!641144))))

(declare-fun res!752721 () Bool)

(assert (=> b!1126327 (=> res!752721 e!641144)))

(assert (=> b!1126327 (= res!752721 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126327 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500172 () Unit!36857)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73436 (_ BitVec 64) (_ BitVec 32)) Unit!36857)

(assert (=> b!1126327 (= lt!500172 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!752724 () Bool)

(assert (=> start!98112 (=> (not res!752724) (not e!641147))))

(assert (=> start!98112 (= res!752724 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35904 _keys!1208))))))

(assert (=> start!98112 e!641147))

(assert (=> start!98112 tp_is_empty!28307))

(declare-fun array_inv!27014 (array!73436) Bool)

(assert (=> start!98112 (array_inv!27014 _keys!1208)))

(assert (=> start!98112 true))

(assert (=> start!98112 tp!84035))

(declare-fun e!641149 () Bool)

(declare-fun array_inv!27015 (array!73438) Bool)

(assert (=> start!98112 (and (array_inv!27015 _values!996) e!641149)))

(declare-fun b!1126328 () Bool)

(assert (=> b!1126328 (= e!641144 e!641148)))

(declare-fun res!752720 () Bool)

(assert (=> b!1126328 (=> res!752720 e!641148)))

(assert (=> b!1126328 (= res!752720 (not (= from!1455 i!673)))))

(declare-fun lt!500168 () array!73436)

(declare-fun lt!500169 () ListLongMap!15933)

(declare-fun lt!500171 () array!73438)

(assert (=> b!1126328 (= lt!500169 (getCurrentListMapNoExtraKeys!4441 lt!500168 lt!500171 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2522 (Int (_ BitVec 64)) V!42869)

(assert (=> b!1126328 (= lt!500171 (array!73439 (store (arr!35368 _values!996) i!673 (ValueCellFull!13444 (dynLambda!2522 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35905 _values!996)))))

(declare-fun lt!500170 () ListLongMap!15933)

(assert (=> b!1126328 (= lt!500170 (getCurrentListMapNoExtraKeys!4441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126329 () Bool)

(assert (=> b!1126329 (= e!641147 e!641153)))

(declare-fun res!752723 () Bool)

(assert (=> b!1126329 (=> (not res!752723) (not e!641153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73436 (_ BitVec 32)) Bool)

(assert (=> b!1126329 (= res!752723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500168 mask!1564))))

(assert (=> b!1126329 (= lt!500168 (array!73437 (store (arr!35367 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35904 _keys!1208)))))

(declare-fun b!1126330 () Bool)

(declare-fun res!752713 () Bool)

(assert (=> b!1126330 (=> (not res!752713) (not e!641147))))

(assert (=> b!1126330 (= res!752713 (and (= (size!35905 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35904 _keys!1208) (size!35905 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126331 () Bool)

(assert (=> b!1126331 (= e!641149 (and e!641146 mapRes!44278))))

(declare-fun condMapEmpty!44278 () Bool)

(declare-fun mapDefault!44278 () ValueCell!13444)

