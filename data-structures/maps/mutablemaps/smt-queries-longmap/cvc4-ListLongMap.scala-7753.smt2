; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97302 () Bool)

(assert start!97302)

(declare-fun b_free!23237 () Bool)

(declare-fun b_next!23237 () Bool)

(assert (=> start!97302 (= b_free!23237 (not b_next!23237))))

(declare-fun tp!82011 () Bool)

(declare-fun b_and!37323 () Bool)

(assert (=> start!97302 (= tp!82011 b_and!37323)))

(declare-fun res!739035 () Bool)

(declare-fun e!631792 () Bool)

(assert (=> start!97302 (=> (not res!739035) (not e!631792))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71864 0))(
  ( (array!71865 (arr!34581 (Array (_ BitVec 32) (_ BitVec 64))) (size!35118 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71864)

(assert (=> start!97302 (= res!739035 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35118 _keys!1208))))))

(assert (=> start!97302 e!631792))

(declare-fun tp_is_empty!27497 () Bool)

(assert (=> start!97302 tp_is_empty!27497))

(declare-fun array_inv!26478 (array!71864) Bool)

(assert (=> start!97302 (array_inv!26478 _keys!1208)))

(assert (=> start!97302 true))

(assert (=> start!97302 tp!82011))

(declare-datatypes ((V!41789 0))(
  ( (V!41790 (val!13805 Int)) )
))
(declare-datatypes ((ValueCell!13039 0))(
  ( (ValueCellFull!13039 (v!16439 V!41789)) (EmptyCell!13039) )
))
(declare-datatypes ((array!71866 0))(
  ( (array!71867 (arr!34582 (Array (_ BitVec 32) ValueCell!13039)) (size!35119 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71866)

(declare-fun e!631798 () Bool)

(declare-fun array_inv!26479 (array!71866) Bool)

(assert (=> start!97302 (and (array_inv!26479 _values!996) e!631798)))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!17502 0))(
  ( (tuple2!17503 (_1!8761 (_ BitVec 64)) (_2!8761 V!41789)) )
))
(declare-datatypes ((List!24240 0))(
  ( (Nil!24237) (Cons!24236 (h!25445 tuple2!17502) (t!34530 List!24240)) )
))
(declare-datatypes ((ListLongMap!15483 0))(
  ( (ListLongMap!15484 (toList!7757 List!24240)) )
))
(declare-fun call!46409 () ListLongMap!15483)

(declare-fun b!1107245 () Bool)

(declare-fun e!631793 () Bool)

(declare-fun call!46408 () ListLongMap!15483)

(declare-fun -!992 (ListLongMap!15483 (_ BitVec 64)) ListLongMap!15483)

(assert (=> b!1107245 (= e!631793 (= call!46409 (-!992 call!46408 k!934)))))

(declare-fun b!1107246 () Bool)

(declare-fun res!739037 () Bool)

(assert (=> b!1107246 (=> (not res!739037) (not e!631792))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71864 (_ BitVec 32)) Bool)

(assert (=> b!1107246 (= res!739037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107247 () Bool)

(declare-fun e!631797 () Bool)

(declare-fun e!631799 () Bool)

(assert (=> b!1107247 (= e!631797 (not e!631799))))

(declare-fun res!739041 () Bool)

(assert (=> b!1107247 (=> res!739041 e!631799)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107247 (= res!739041 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35118 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107247 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36277 0))(
  ( (Unit!36278) )
))
(declare-fun lt!495581 () Unit!36277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71864 (_ BitVec 64) (_ BitVec 32)) Unit!36277)

(assert (=> b!1107247 (= lt!495581 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!41789)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41789)

(declare-fun bm!46405 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4226 (array!71864 array!71866 (_ BitVec 32) (_ BitVec 32) V!41789 V!41789 (_ BitVec 32) Int) ListLongMap!15483)

(assert (=> bm!46405 (= call!46408 (getCurrentListMapNoExtraKeys!4226 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107248 () Bool)

(declare-fun res!739039 () Bool)

(assert (=> b!1107248 (=> (not res!739039) (not e!631797))))

(declare-fun lt!495580 () array!71864)

(declare-datatypes ((List!24241 0))(
  ( (Nil!24238) (Cons!24237 (h!25446 (_ BitVec 64)) (t!34531 List!24241)) )
))
(declare-fun arrayNoDuplicates!0 (array!71864 (_ BitVec 32) List!24241) Bool)

(assert (=> b!1107248 (= res!739039 (arrayNoDuplicates!0 lt!495580 #b00000000000000000000000000000000 Nil!24238))))

(declare-fun b!1107249 () Bool)

(assert (=> b!1107249 (= e!631793 (= call!46409 call!46408))))

(declare-fun b!1107250 () Bool)

(assert (=> b!1107250 (= e!631792 e!631797)))

(declare-fun res!739040 () Bool)

(assert (=> b!1107250 (=> (not res!739040) (not e!631797))))

(assert (=> b!1107250 (= res!739040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495580 mask!1564))))

(assert (=> b!1107250 (= lt!495580 (array!71865 (store (arr!34581 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35118 _keys!1208)))))

(declare-fun mapNonEmpty!43063 () Bool)

(declare-fun mapRes!43063 () Bool)

(declare-fun tp!82010 () Bool)

(declare-fun e!631796 () Bool)

(assert (=> mapNonEmpty!43063 (= mapRes!43063 (and tp!82010 e!631796))))

(declare-fun mapValue!43063 () ValueCell!13039)

(declare-fun mapKey!43063 () (_ BitVec 32))

(declare-fun mapRest!43063 () (Array (_ BitVec 32) ValueCell!13039))

(assert (=> mapNonEmpty!43063 (= (arr!34582 _values!996) (store mapRest!43063 mapKey!43063 mapValue!43063))))

(declare-fun b!1107251 () Bool)

(declare-fun res!739034 () Bool)

(assert (=> b!1107251 (=> (not res!739034) (not e!631792))))

(assert (=> b!1107251 (= res!739034 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35118 _keys!1208))))))

(declare-fun b!1107252 () Bool)

(assert (=> b!1107252 (= e!631799 true)))

(assert (=> b!1107252 e!631793))

(declare-fun c!108983 () Bool)

(assert (=> b!1107252 (= c!108983 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495582 () Unit!36277)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!249 (array!71864 array!71866 (_ BitVec 32) (_ BitVec 32) V!41789 V!41789 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36277)

(assert (=> b!1107252 (= lt!495582 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!249 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107253 () Bool)

(declare-fun res!739036 () Bool)

(assert (=> b!1107253 (=> (not res!739036) (not e!631792))))

(assert (=> b!1107253 (= res!739036 (and (= (size!35119 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35118 _keys!1208) (size!35119 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107254 () Bool)

(declare-fun res!739042 () Bool)

(assert (=> b!1107254 (=> (not res!739042) (not e!631792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107254 (= res!739042 (validKeyInArray!0 k!934))))

(declare-fun b!1107255 () Bool)

(declare-fun e!631794 () Bool)

(assert (=> b!1107255 (= e!631798 (and e!631794 mapRes!43063))))

(declare-fun condMapEmpty!43063 () Bool)

(declare-fun mapDefault!43063 () ValueCell!13039)

