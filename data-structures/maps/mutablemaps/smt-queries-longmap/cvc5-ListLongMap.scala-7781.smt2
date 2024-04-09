; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97466 () Bool)

(assert start!97466)

(declare-fun b_free!23401 () Bool)

(declare-fun b_next!23401 () Bool)

(assert (=> start!97466 (= b_free!23401 (not b_next!23401))))

(declare-fun tp!82503 () Bool)

(declare-fun b_and!37659 () Bool)

(assert (=> start!97466 (= tp!82503 b_and!37659)))

(declare-fun b!1111393 () Bool)

(declare-fun res!741749 () Bool)

(declare-fun e!633785 () Bool)

(assert (=> b!1111393 (=> (not res!741749) (not e!633785))))

(declare-datatypes ((array!72186 0))(
  ( (array!72187 (arr!34742 (Array (_ BitVec 32) (_ BitVec 64))) (size!35279 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72186)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42009 0))(
  ( (V!42010 (val!13887 Int)) )
))
(declare-datatypes ((ValueCell!13121 0))(
  ( (ValueCellFull!13121 (v!16521 V!42009)) (EmptyCell!13121) )
))
(declare-datatypes ((array!72188 0))(
  ( (array!72189 (arr!34743 (Array (_ BitVec 32) ValueCell!13121)) (size!35280 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72188)

(assert (=> b!1111393 (= res!741749 (and (= (size!35280 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35279 _keys!1208) (size!35280 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!741747 () Bool)

(assert (=> start!97466 (=> (not res!741747) (not e!633785))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97466 (= res!741747 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35279 _keys!1208))))))

(assert (=> start!97466 e!633785))

(declare-fun tp_is_empty!27661 () Bool)

(assert (=> start!97466 tp_is_empty!27661))

(declare-fun array_inv!26590 (array!72186) Bool)

(assert (=> start!97466 (array_inv!26590 _keys!1208)))

(assert (=> start!97466 true))

(assert (=> start!97466 tp!82503))

(declare-fun e!633789 () Bool)

(declare-fun array_inv!26591 (array!72188) Bool)

(assert (=> start!97466 (and (array_inv!26591 _values!996) e!633789)))

(declare-fun b!1111394 () Bool)

(declare-fun res!741748 () Bool)

(declare-fun e!633787 () Bool)

(assert (=> b!1111394 (=> (not res!741748) (not e!633787))))

(declare-fun lt!496319 () array!72186)

(declare-datatypes ((List!24371 0))(
  ( (Nil!24368) (Cons!24367 (h!25576 (_ BitVec 64)) (t!34825 List!24371)) )
))
(declare-fun arrayNoDuplicates!0 (array!72186 (_ BitVec 32) List!24371) Bool)

(assert (=> b!1111394 (= res!741748 (arrayNoDuplicates!0 lt!496319 #b00000000000000000000000000000000 Nil!24368))))

(declare-fun b!1111395 () Bool)

(declare-fun res!741741 () Bool)

(assert (=> b!1111395 (=> (not res!741741) (not e!633785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72186 (_ BitVec 32)) Bool)

(assert (=> b!1111395 (= res!741741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111396 () Bool)

(declare-fun res!741740 () Bool)

(assert (=> b!1111396 (=> (not res!741740) (not e!633785))))

(assert (=> b!1111396 (= res!741740 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24368))))

(declare-fun mapIsEmpty!43309 () Bool)

(declare-fun mapRes!43309 () Bool)

(assert (=> mapIsEmpty!43309 mapRes!43309))

(declare-fun b!1111397 () Bool)

(declare-fun res!741745 () Bool)

(assert (=> b!1111397 (=> (not res!741745) (not e!633785))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1111397 (= res!741745 (= (select (arr!34742 _keys!1208) i!673) k!934))))

(declare-fun e!633791 () Bool)

(declare-fun b!1111398 () Bool)

(declare-datatypes ((tuple2!17636 0))(
  ( (tuple2!17637 (_1!8828 (_ BitVec 64)) (_2!8828 V!42009)) )
))
(declare-datatypes ((List!24372 0))(
  ( (Nil!24369) (Cons!24368 (h!25577 tuple2!17636) (t!34826 List!24372)) )
))
(declare-datatypes ((ListLongMap!15617 0))(
  ( (ListLongMap!15618 (toList!7824 List!24372)) )
))
(declare-fun call!46900 () ListLongMap!15617)

(declare-fun call!46901 () ListLongMap!15617)

(declare-fun -!1045 (ListLongMap!15617 (_ BitVec 64)) ListLongMap!15617)

(assert (=> b!1111398 (= e!633791 (= call!46901 (-!1045 call!46900 k!934)))))

(declare-fun b!1111399 () Bool)

(declare-fun e!633790 () Bool)

(assert (=> b!1111399 (= e!633787 (not e!633790))))

(declare-fun res!741744 () Bool)

(assert (=> b!1111399 (=> res!741744 e!633790)))

(assert (=> b!1111399 (= res!741744 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35279 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111399 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36387 0))(
  ( (Unit!36388) )
))
(declare-fun lt!496320 () Unit!36387)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72186 (_ BitVec 64) (_ BitVec 32)) Unit!36387)

(assert (=> b!1111399 (= lt!496320 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1111400 () Bool)

(assert (=> b!1111400 (= e!633790 true)))

(assert (=> b!1111400 e!633791))

(declare-fun c!109253 () Bool)

(assert (=> b!1111400 (= c!109253 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42009)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42009)

(declare-fun lt!496318 () Unit!36387)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!299 (array!72186 array!72188 (_ BitVec 32) (_ BitVec 32) V!42009 V!42009 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36387)

(assert (=> b!1111400 (= lt!496318 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!299 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46897 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4285 (array!72186 array!72188 (_ BitVec 32) (_ BitVec 32) V!42009 V!42009 (_ BitVec 32) Int) ListLongMap!15617)

(assert (=> bm!46897 (= call!46900 (getCurrentListMapNoExtraKeys!4285 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46898 () Bool)

(declare-fun dynLambda!2407 (Int (_ BitVec 64)) V!42009)

(assert (=> bm!46898 (= call!46901 (getCurrentListMapNoExtraKeys!4285 lt!496319 (array!72189 (store (arr!34743 _values!996) i!673 (ValueCellFull!13121 (dynLambda!2407 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35280 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43309 () Bool)

(declare-fun tp!82502 () Bool)

(declare-fun e!633788 () Bool)

(assert (=> mapNonEmpty!43309 (= mapRes!43309 (and tp!82502 e!633788))))

(declare-fun mapKey!43309 () (_ BitVec 32))

(declare-fun mapValue!43309 () ValueCell!13121)

(declare-fun mapRest!43309 () (Array (_ BitVec 32) ValueCell!13121))

(assert (=> mapNonEmpty!43309 (= (arr!34743 _values!996) (store mapRest!43309 mapKey!43309 mapValue!43309))))

(declare-fun b!1111401 () Bool)

(assert (=> b!1111401 (= e!633791 (= call!46901 call!46900))))

(declare-fun b!1111402 () Bool)

(declare-fun e!633784 () Bool)

(assert (=> b!1111402 (= e!633784 tp_is_empty!27661)))

(declare-fun b!1111403 () Bool)

(assert (=> b!1111403 (= e!633785 e!633787)))

(declare-fun res!741742 () Bool)

(assert (=> b!1111403 (=> (not res!741742) (not e!633787))))

(assert (=> b!1111403 (= res!741742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496319 mask!1564))))

(assert (=> b!1111403 (= lt!496319 (array!72187 (store (arr!34742 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35279 _keys!1208)))))

(declare-fun b!1111404 () Bool)

(declare-fun res!741750 () Bool)

(assert (=> b!1111404 (=> (not res!741750) (not e!633785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111404 (= res!741750 (validMask!0 mask!1564))))

(declare-fun b!1111405 () Bool)

(assert (=> b!1111405 (= e!633788 tp_is_empty!27661)))

(declare-fun b!1111406 () Bool)

(assert (=> b!1111406 (= e!633789 (and e!633784 mapRes!43309))))

(declare-fun condMapEmpty!43309 () Bool)

(declare-fun mapDefault!43309 () ValueCell!13121)

