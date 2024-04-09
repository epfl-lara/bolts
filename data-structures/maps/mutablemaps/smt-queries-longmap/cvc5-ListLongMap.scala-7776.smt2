; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97436 () Bool)

(assert start!97436)

(declare-fun b_free!23371 () Bool)

(declare-fun b_next!23371 () Bool)

(assert (=> start!97436 (= b_free!23371 (not b_next!23371))))

(declare-fun tp!82412 () Bool)

(declare-fun b_and!37599 () Bool)

(assert (=> start!97436 (= tp!82412 b_and!37599)))

(declare-fun b!1110643 () Bool)

(declare-fun res!741253 () Bool)

(declare-fun e!633424 () Bool)

(assert (=> b!1110643 (=> (not res!741253) (not e!633424))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110643 (= res!741253 (validMask!0 mask!1564))))

(declare-fun b!1110644 () Bool)

(declare-fun res!741251 () Bool)

(assert (=> b!1110644 (=> (not res!741251) (not e!633424))))

(declare-datatypes ((array!72128 0))(
  ( (array!72129 (arr!34713 (Array (_ BitVec 32) (_ BitVec 64))) (size!35250 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72128)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72128 (_ BitVec 32)) Bool)

(assert (=> b!1110644 (= res!741251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!741252 () Bool)

(assert (=> start!97436 (=> (not res!741252) (not e!633424))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97436 (= res!741252 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35250 _keys!1208))))))

(assert (=> start!97436 e!633424))

(declare-fun tp_is_empty!27631 () Bool)

(assert (=> start!97436 tp_is_empty!27631))

(declare-fun array_inv!26574 (array!72128) Bool)

(assert (=> start!97436 (array_inv!26574 _keys!1208)))

(assert (=> start!97436 true))

(assert (=> start!97436 tp!82412))

(declare-datatypes ((V!41969 0))(
  ( (V!41970 (val!13872 Int)) )
))
(declare-datatypes ((ValueCell!13106 0))(
  ( (ValueCellFull!13106 (v!16506 V!41969)) (EmptyCell!13106) )
))
(declare-datatypes ((array!72130 0))(
  ( (array!72131 (arr!34714 (Array (_ BitVec 32) ValueCell!13106)) (size!35251 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72130)

(declare-fun e!633427 () Bool)

(declare-fun array_inv!26575 (array!72130) Bool)

(assert (=> start!97436 (and (array_inv!26575 _values!996) e!633427)))

(declare-fun b!1110645 () Bool)

(declare-fun res!741245 () Bool)

(assert (=> b!1110645 (=> (not res!741245) (not e!633424))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110645 (= res!741245 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35250 _keys!1208))))))

(declare-fun b!1110646 () Bool)

(declare-fun res!741255 () Bool)

(assert (=> b!1110646 (=> (not res!741255) (not e!633424))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110646 (= res!741255 (validKeyInArray!0 k!934))))

(declare-fun b!1110647 () Bool)

(declare-fun e!633431 () Bool)

(assert (=> b!1110647 (= e!633431 true)))

(declare-fun e!633426 () Bool)

(assert (=> b!1110647 e!633426))

(declare-fun c!109208 () Bool)

(assert (=> b!1110647 (= c!109208 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41969)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41969)

(declare-datatypes ((Unit!36367 0))(
  ( (Unit!36368) )
))
(declare-fun lt!496184 () Unit!36367)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!290 (array!72128 array!72130 (_ BitVec 32) (_ BitVec 32) V!41969 V!41969 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36367)

(assert (=> b!1110647 (= lt!496184 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!290 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110648 () Bool)

(declare-fun e!633425 () Bool)

(assert (=> b!1110648 (= e!633425 tp_is_empty!27631)))

(declare-fun mapIsEmpty!43264 () Bool)

(declare-fun mapRes!43264 () Bool)

(assert (=> mapIsEmpty!43264 mapRes!43264))

(declare-fun b!1110649 () Bool)

(declare-fun res!741254 () Bool)

(assert (=> b!1110649 (=> (not res!741254) (not e!633424))))

(assert (=> b!1110649 (= res!741254 (and (= (size!35251 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35250 _keys!1208) (size!35251 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1110650 () Bool)

(declare-fun e!633429 () Bool)

(assert (=> b!1110650 (= e!633429 (not e!633431))))

(declare-fun res!741249 () Bool)

(assert (=> b!1110650 (=> res!741249 e!633431)))

(assert (=> b!1110650 (= res!741249 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35250 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110650 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496185 () Unit!36367)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72128 (_ BitVec 64) (_ BitVec 32)) Unit!36367)

(assert (=> b!1110650 (= lt!496185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43264 () Bool)

(declare-fun tp!82413 () Bool)

(assert (=> mapNonEmpty!43264 (= mapRes!43264 (and tp!82413 e!633425))))

(declare-fun mapRest!43264 () (Array (_ BitVec 32) ValueCell!13106))

(declare-fun mapValue!43264 () ValueCell!13106)

(declare-fun mapKey!43264 () (_ BitVec 32))

(assert (=> mapNonEmpty!43264 (= (arr!34714 _values!996) (store mapRest!43264 mapKey!43264 mapValue!43264))))

(declare-datatypes ((tuple2!17612 0))(
  ( (tuple2!17613 (_1!8816 (_ BitVec 64)) (_2!8816 V!41969)) )
))
(declare-datatypes ((List!24348 0))(
  ( (Nil!24345) (Cons!24344 (h!25553 tuple2!17612) (t!34772 List!24348)) )
))
(declare-datatypes ((ListLongMap!15593 0))(
  ( (ListLongMap!15594 (toList!7812 List!24348)) )
))
(declare-fun call!46810 () ListLongMap!15593)

(declare-fun call!46811 () ListLongMap!15593)

(declare-fun b!1110651 () Bool)

(declare-fun -!1036 (ListLongMap!15593 (_ BitVec 64)) ListLongMap!15593)

(assert (=> b!1110651 (= e!633426 (= call!46811 (-!1036 call!46810 k!934)))))

(declare-fun b!1110652 () Bool)

(assert (=> b!1110652 (= e!633424 e!633429)))

(declare-fun res!741248 () Bool)

(assert (=> b!1110652 (=> (not res!741248) (not e!633429))))

(declare-fun lt!496183 () array!72128)

(assert (=> b!1110652 (= res!741248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496183 mask!1564))))

(assert (=> b!1110652 (= lt!496183 (array!72129 (store (arr!34713 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35250 _keys!1208)))))

(declare-fun bm!46807 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4275 (array!72128 array!72130 (_ BitVec 32) (_ BitVec 32) V!41969 V!41969 (_ BitVec 32) Int) ListLongMap!15593)

(assert (=> bm!46807 (= call!46810 (getCurrentListMapNoExtraKeys!4275 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110653 () Bool)

(declare-fun e!633430 () Bool)

(assert (=> b!1110653 (= e!633430 tp_is_empty!27631)))

(declare-fun bm!46808 () Bool)

(declare-fun dynLambda!2397 (Int (_ BitVec 64)) V!41969)

(assert (=> bm!46808 (= call!46811 (getCurrentListMapNoExtraKeys!4275 lt!496183 (array!72131 (store (arr!34714 _values!996) i!673 (ValueCellFull!13106 (dynLambda!2397 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35251 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110654 () Bool)

(declare-fun res!741250 () Bool)

(assert (=> b!1110654 (=> (not res!741250) (not e!633424))))

(assert (=> b!1110654 (= res!741250 (= (select (arr!34713 _keys!1208) i!673) k!934))))

(declare-fun b!1110655 () Bool)

(declare-fun res!741247 () Bool)

(assert (=> b!1110655 (=> (not res!741247) (not e!633429))))

(declare-datatypes ((List!24349 0))(
  ( (Nil!24346) (Cons!24345 (h!25554 (_ BitVec 64)) (t!34773 List!24349)) )
))
(declare-fun arrayNoDuplicates!0 (array!72128 (_ BitVec 32) List!24349) Bool)

(assert (=> b!1110655 (= res!741247 (arrayNoDuplicates!0 lt!496183 #b00000000000000000000000000000000 Nil!24346))))

(declare-fun b!1110656 () Bool)

(assert (=> b!1110656 (= e!633426 (= call!46811 call!46810))))

(declare-fun b!1110657 () Bool)

(assert (=> b!1110657 (= e!633427 (and e!633430 mapRes!43264))))

(declare-fun condMapEmpty!43264 () Bool)

(declare-fun mapDefault!43264 () ValueCell!13106)

