; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98000 () Bool)

(assert start!98000)

(declare-fun b_free!23665 () Bool)

(declare-fun b_next!23665 () Bool)

(assert (=> start!98000 (= b_free!23665 (not b_next!23665))))

(declare-fun tp!83700 () Bool)

(declare-fun b_and!38135 () Bool)

(assert (=> start!98000 (= tp!83700 b_and!38135)))

(declare-fun b!1122995 () Bool)

(declare-fun res!750344 () Bool)

(declare-fun e!639375 () Bool)

(assert (=> b!1122995 (=> (not res!750344) (not e!639375))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73216 0))(
  ( (array!73217 (arr!35257 (Array (_ BitVec 32) (_ BitVec 64))) (size!35794 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73216)

(assert (=> b!1122995 (= res!750344 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35794 _keys!1208))))))

(declare-fun mapIsEmpty!44110 () Bool)

(declare-fun mapRes!44110 () Bool)

(assert (=> mapIsEmpty!44110 mapRes!44110))

(declare-fun b!1122996 () Bool)

(declare-fun res!750351 () Bool)

(assert (=> b!1122996 (=> (not res!750351) (not e!639375))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122996 (= res!750351 (validKeyInArray!0 k!934))))

(declare-fun res!750342 () Bool)

(assert (=> start!98000 (=> (not res!750342) (not e!639375))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98000 (= res!750342 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35794 _keys!1208))))))

(assert (=> start!98000 e!639375))

(declare-fun tp_is_empty!28195 () Bool)

(assert (=> start!98000 tp_is_empty!28195))

(declare-fun array_inv!26944 (array!73216) Bool)

(assert (=> start!98000 (array_inv!26944 _keys!1208)))

(assert (=> start!98000 true))

(assert (=> start!98000 tp!83700))

(declare-datatypes ((V!42721 0))(
  ( (V!42722 (val!14154 Int)) )
))
(declare-datatypes ((ValueCell!13388 0))(
  ( (ValueCellFull!13388 (v!16788 V!42721)) (EmptyCell!13388) )
))
(declare-datatypes ((array!73218 0))(
  ( (array!73219 (arr!35258 (Array (_ BitVec 32) ValueCell!13388)) (size!35795 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73218)

(declare-fun e!639383 () Bool)

(declare-fun array_inv!26945 (array!73218) Bool)

(assert (=> start!98000 (and (array_inv!26945 _values!996) e!639383)))

(declare-fun b!1122997 () Bool)

(declare-fun res!750343 () Bool)

(declare-fun e!639376 () Bool)

(assert (=> b!1122997 (=> (not res!750343) (not e!639376))))

(declare-fun lt!498913 () array!73216)

(declare-datatypes ((List!24680 0))(
  ( (Nil!24677) (Cons!24676 (h!25885 (_ BitVec 64)) (t!35344 List!24680)) )
))
(declare-fun arrayNoDuplicates!0 (array!73216 (_ BitVec 32) List!24680) Bool)

(assert (=> b!1122997 (= res!750343 (arrayNoDuplicates!0 lt!498913 #b00000000000000000000000000000000 Nil!24677))))

(declare-fun b!1122998 () Bool)

(declare-fun e!639378 () Bool)

(declare-datatypes ((tuple2!17846 0))(
  ( (tuple2!17847 (_1!8933 (_ BitVec 64)) (_2!8933 V!42721)) )
))
(declare-datatypes ((List!24681 0))(
  ( (Nil!24678) (Cons!24677 (h!25886 tuple2!17846) (t!35345 List!24681)) )
))
(declare-datatypes ((ListLongMap!15827 0))(
  ( (ListLongMap!15828 (toList!7929 List!24681)) )
))
(declare-fun call!47279 () ListLongMap!15827)

(declare-fun call!47278 () ListLongMap!15827)

(assert (=> b!1122998 (= e!639378 (= call!47279 call!47278))))

(declare-fun b!1122999 () Bool)

(declare-fun e!639377 () Bool)

(declare-fun e!639382 () Bool)

(assert (=> b!1122999 (= e!639377 e!639382)))

(declare-fun res!750339 () Bool)

(assert (=> b!1122999 (=> res!750339 e!639382)))

(assert (=> b!1122999 (= res!750339 (not (= (select (arr!35257 _keys!1208) from!1455) k!934)))))

(assert (=> b!1122999 e!639378))

(declare-fun c!109448 () Bool)

(assert (=> b!1122999 (= c!109448 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42721)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42721)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36765 0))(
  ( (Unit!36766) )
))
(declare-fun lt!498914 () Unit!36765)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!342 (array!73216 array!73218 (_ BitVec 32) (_ BitVec 32) V!42721 V!42721 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36765)

(assert (=> b!1122999 (= lt!498914 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!342 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123000 () Bool)

(assert (=> b!1123000 (= e!639382 true)))

(declare-fun lt!498910 () Bool)

(declare-fun contains!6446 (ListLongMap!15827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4389 (array!73216 array!73218 (_ BitVec 32) (_ BitVec 32) V!42721 V!42721 (_ BitVec 32) Int) ListLongMap!15827)

(assert (=> b!1123000 (= lt!498910 (contains!6446 (getCurrentListMapNoExtraKeys!4389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1123001 () Bool)

(declare-fun e!639379 () Bool)

(assert (=> b!1123001 (= e!639379 e!639377)))

(declare-fun res!750346 () Bool)

(assert (=> b!1123001 (=> res!750346 e!639377)))

(assert (=> b!1123001 (= res!750346 (not (= from!1455 i!673)))))

(declare-fun lt!498915 () ListLongMap!15827)

(declare-fun lt!498911 () array!73218)

(assert (=> b!1123001 (= lt!498915 (getCurrentListMapNoExtraKeys!4389 lt!498913 lt!498911 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2483 (Int (_ BitVec 64)) V!42721)

(assert (=> b!1123001 (= lt!498911 (array!73219 (store (arr!35258 _values!996) i!673 (ValueCellFull!13388 (dynLambda!2483 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35795 _values!996)))))

(declare-fun lt!498912 () ListLongMap!15827)

(assert (=> b!1123001 (= lt!498912 (getCurrentListMapNoExtraKeys!4389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47275 () Bool)

(assert (=> bm!47275 (= call!47278 (getCurrentListMapNoExtraKeys!4389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123002 () Bool)

(declare-fun res!750341 () Bool)

(assert (=> b!1123002 (=> (not res!750341) (not e!639375))))

(assert (=> b!1123002 (= res!750341 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24677))))

(declare-fun b!1123003 () Bool)

(declare-fun e!639380 () Bool)

(assert (=> b!1123003 (= e!639383 (and e!639380 mapRes!44110))))

(declare-fun condMapEmpty!44110 () Bool)

(declare-fun mapDefault!44110 () ValueCell!13388)

