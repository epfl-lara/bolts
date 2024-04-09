; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97380 () Bool)

(assert start!97380)

(declare-fun b_free!23315 () Bool)

(declare-fun b_next!23315 () Bool)

(assert (=> start!97380 (= b_free!23315 (not b_next!23315))))

(declare-fun tp!82245 () Bool)

(declare-fun b_and!37483 () Bool)

(assert (=> start!97380 (= tp!82245 b_and!37483)))

(declare-fun b!1109219 () Bool)

(declare-fun e!632743 () Bool)

(declare-fun e!632741 () Bool)

(assert (=> b!1109219 (= e!632743 e!632741)))

(declare-fun res!740330 () Bool)

(assert (=> b!1109219 (=> (not res!740330) (not e!632741))))

(declare-datatypes ((array!72018 0))(
  ( (array!72019 (arr!34658 (Array (_ BitVec 32) (_ BitVec 64))) (size!35195 (_ BitVec 32))) )
))
(declare-fun lt!495932 () array!72018)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72018 (_ BitVec 32)) Bool)

(assert (=> b!1109219 (= res!740330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495932 mask!1564))))

(declare-fun _keys!1208 () array!72018)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109219 (= lt!495932 (array!72019 (store (arr!34658 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35195 _keys!1208)))))

(declare-fun b!1109220 () Bool)

(declare-fun e!632744 () Bool)

(declare-datatypes ((V!41893 0))(
  ( (V!41894 (val!13844 Int)) )
))
(declare-datatypes ((tuple2!17568 0))(
  ( (tuple2!17569 (_1!8794 (_ BitVec 64)) (_2!8794 V!41893)) )
))
(declare-datatypes ((List!24305 0))(
  ( (Nil!24302) (Cons!24301 (h!25510 tuple2!17568) (t!34673 List!24305)) )
))
(declare-datatypes ((ListLongMap!15549 0))(
  ( (ListLongMap!15550 (toList!7790 List!24305)) )
))
(declare-fun call!46642 () ListLongMap!15549)

(declare-fun call!46643 () ListLongMap!15549)

(assert (=> b!1109220 (= e!632744 (= call!46642 call!46643))))

(declare-fun zeroValue!944 () V!41893)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13078 0))(
  ( (ValueCellFull!13078 (v!16478 V!41893)) (EmptyCell!13078) )
))
(declare-datatypes ((array!72020 0))(
  ( (array!72021 (arr!34659 (Array (_ BitVec 32) ValueCell!13078)) (size!35196 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72020)

(declare-fun bm!46639 () Bool)

(declare-fun minValue!944 () V!41893)

(declare-fun getCurrentListMapNoExtraKeys!4255 (array!72018 array!72020 (_ BitVec 32) (_ BitVec 32) V!41893 V!41893 (_ BitVec 32) Int) ListLongMap!15549)

(declare-fun dynLambda!2379 (Int (_ BitVec 64)) V!41893)

(assert (=> bm!46639 (= call!46642 (getCurrentListMapNoExtraKeys!4255 lt!495932 (array!72021 (store (arr!34659 _values!996) i!673 (ValueCellFull!13078 (dynLambda!2379 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35196 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43180 () Bool)

(declare-fun mapRes!43180 () Bool)

(assert (=> mapIsEmpty!43180 mapRes!43180))

(declare-fun b!1109221 () Bool)

(declare-fun res!740323 () Bool)

(assert (=> b!1109221 (=> (not res!740323) (not e!632743))))

(assert (=> b!1109221 (= res!740323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109222 () Bool)

(declare-fun e!632740 () Bool)

(assert (=> b!1109222 (= e!632740 true)))

(assert (=> b!1109222 e!632744))

(declare-fun c!109112 () Bool)

(assert (=> b!1109222 (= c!109112 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36327 0))(
  ( (Unit!36328) )
))
(declare-fun lt!495931 () Unit!36327)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!271 (array!72018 array!72020 (_ BitVec 32) (_ BitVec 32) V!41893 V!41893 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36327)

(assert (=> b!1109222 (= lt!495931 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!271 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109223 () Bool)

(declare-fun res!740331 () Bool)

(assert (=> b!1109223 (=> (not res!740331) (not e!632743))))

(declare-datatypes ((List!24306 0))(
  ( (Nil!24303) (Cons!24302 (h!25511 (_ BitVec 64)) (t!34674 List!24306)) )
))
(declare-fun arrayNoDuplicates!0 (array!72018 (_ BitVec 32) List!24306) Bool)

(assert (=> b!1109223 (= res!740331 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24303))))

(declare-fun b!1109224 () Bool)

(declare-fun res!740326 () Bool)

(assert (=> b!1109224 (=> (not res!740326) (not e!632743))))

(assert (=> b!1109224 (= res!740326 (and (= (size!35196 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35195 _keys!1208) (size!35196 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109225 () Bool)

(declare-fun -!1019 (ListLongMap!15549 (_ BitVec 64)) ListLongMap!15549)

(assert (=> b!1109225 (= e!632744 (= call!46642 (-!1019 call!46643 k!934)))))

(declare-fun res!740324 () Bool)

(assert (=> start!97380 (=> (not res!740324) (not e!632743))))

(assert (=> start!97380 (= res!740324 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35195 _keys!1208))))))

(assert (=> start!97380 e!632743))

(declare-fun tp_is_empty!27575 () Bool)

(assert (=> start!97380 tp_is_empty!27575))

(declare-fun array_inv!26538 (array!72018) Bool)

(assert (=> start!97380 (array_inv!26538 _keys!1208)))

(assert (=> start!97380 true))

(assert (=> start!97380 tp!82245))

(declare-fun e!632746 () Bool)

(declare-fun array_inv!26539 (array!72020) Bool)

(assert (=> start!97380 (and (array_inv!26539 _values!996) e!632746)))

(declare-fun b!1109226 () Bool)

(declare-fun e!632747 () Bool)

(assert (=> b!1109226 (= e!632747 tp_is_empty!27575)))

(declare-fun bm!46640 () Bool)

(assert (=> bm!46640 (= call!46643 (getCurrentListMapNoExtraKeys!4255 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109227 () Bool)

(declare-fun res!740322 () Bool)

(assert (=> b!1109227 (=> (not res!740322) (not e!632743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109227 (= res!740322 (validKeyInArray!0 k!934))))

(declare-fun b!1109228 () Bool)

(declare-fun res!740321 () Bool)

(assert (=> b!1109228 (=> (not res!740321) (not e!632743))))

(assert (=> b!1109228 (= res!740321 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35195 _keys!1208))))))

(declare-fun b!1109229 () Bool)

(assert (=> b!1109229 (= e!632741 (not e!632740))))

(declare-fun res!740328 () Bool)

(assert (=> b!1109229 (=> res!740328 e!632740)))

(assert (=> b!1109229 (= res!740328 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35195 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109229 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!495933 () Unit!36327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72018 (_ BitVec 64) (_ BitVec 32)) Unit!36327)

(assert (=> b!1109229 (= lt!495933 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1109230 () Bool)

(declare-fun res!740327 () Bool)

(assert (=> b!1109230 (=> (not res!740327) (not e!632741))))

(assert (=> b!1109230 (= res!740327 (arrayNoDuplicates!0 lt!495932 #b00000000000000000000000000000000 Nil!24303))))

(declare-fun b!1109231 () Bool)

(declare-fun res!740325 () Bool)

(assert (=> b!1109231 (=> (not res!740325) (not e!632743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109231 (= res!740325 (validMask!0 mask!1564))))

(declare-fun b!1109232 () Bool)

(declare-fun e!632745 () Bool)

(assert (=> b!1109232 (= e!632745 tp_is_empty!27575)))

(declare-fun mapNonEmpty!43180 () Bool)

(declare-fun tp!82244 () Bool)

(assert (=> mapNonEmpty!43180 (= mapRes!43180 (and tp!82244 e!632747))))

(declare-fun mapRest!43180 () (Array (_ BitVec 32) ValueCell!13078))

(declare-fun mapValue!43180 () ValueCell!13078)

(declare-fun mapKey!43180 () (_ BitVec 32))

(assert (=> mapNonEmpty!43180 (= (arr!34659 _values!996) (store mapRest!43180 mapKey!43180 mapValue!43180))))

(declare-fun b!1109233 () Bool)

(declare-fun res!740329 () Bool)

(assert (=> b!1109233 (=> (not res!740329) (not e!632743))))

(assert (=> b!1109233 (= res!740329 (= (select (arr!34658 _keys!1208) i!673) k!934))))

(declare-fun b!1109234 () Bool)

(assert (=> b!1109234 (= e!632746 (and e!632745 mapRes!43180))))

(declare-fun condMapEmpty!43180 () Bool)

(declare-fun mapDefault!43180 () ValueCell!13078)

