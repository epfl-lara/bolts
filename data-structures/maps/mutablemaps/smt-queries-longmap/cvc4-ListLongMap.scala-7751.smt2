; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97290 () Bool)

(assert start!97290)

(declare-fun b_free!23225 () Bool)

(declare-fun b_next!23225 () Bool)

(assert (=> start!97290 (= b_free!23225 (not b_next!23225))))

(declare-fun tp!81975 () Bool)

(declare-fun b_and!37299 () Bool)

(assert (=> start!97290 (= tp!81975 b_and!37299)))

(declare-fun b!1106945 () Bool)

(declare-fun e!631648 () Bool)

(declare-fun tp_is_empty!27485 () Bool)

(assert (=> b!1106945 (= e!631648 tp_is_empty!27485)))

(declare-fun b!1106946 () Bool)

(declare-fun res!738842 () Bool)

(declare-fun e!631652 () Bool)

(assert (=> b!1106946 (=> (not res!738842) (not e!631652))))

(declare-datatypes ((array!71840 0))(
  ( (array!71841 (arr!34569 (Array (_ BitVec 32) (_ BitVec 64))) (size!35106 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71840)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1106946 (= res!738842 (= (select (arr!34569 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!41773 0))(
  ( (V!41774 (val!13799 Int)) )
))
(declare-fun zeroValue!944 () V!41773)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46369 () Bool)

(declare-datatypes ((ValueCell!13033 0))(
  ( (ValueCellFull!13033 (v!16433 V!41773)) (EmptyCell!13033) )
))
(declare-datatypes ((array!71842 0))(
  ( (array!71843 (arr!34570 (Array (_ BitVec 32) ValueCell!13033)) (size!35107 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71842)

(declare-datatypes ((tuple2!17490 0))(
  ( (tuple2!17491 (_1!8755 (_ BitVec 64)) (_2!8755 V!41773)) )
))
(declare-datatypes ((List!24228 0))(
  ( (Nil!24225) (Cons!24224 (h!25433 tuple2!17490) (t!34506 List!24228)) )
))
(declare-datatypes ((ListLongMap!15471 0))(
  ( (ListLongMap!15472 (toList!7751 List!24228)) )
))
(declare-fun call!46372 () ListLongMap!15471)

(declare-fun minValue!944 () V!41773)

(declare-fun getCurrentListMapNoExtraKeys!4220 (array!71840 array!71842 (_ BitVec 32) (_ BitVec 32) V!41773 V!41773 (_ BitVec 32) Int) ListLongMap!15471)

(assert (=> bm!46369 (= call!46372 (getCurrentListMapNoExtraKeys!4220 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1106947 () Bool)

(declare-fun res!738837 () Bool)

(assert (=> b!1106947 (=> (not res!738837) (not e!631652))))

(assert (=> b!1106947 (= res!738837 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35106 _keys!1208))))))

(declare-fun b!1106948 () Bool)

(declare-fun e!631653 () Bool)

(assert (=> b!1106948 (= e!631653 tp_is_empty!27485)))

(declare-fun e!631651 () Bool)

(declare-fun b!1106949 () Bool)

(declare-fun call!46373 () ListLongMap!15471)

(declare-fun -!987 (ListLongMap!15471 (_ BitVec 64)) ListLongMap!15471)

(assert (=> b!1106949 (= e!631651 (= call!46373 (-!987 call!46372 k!934)))))

(declare-fun mapIsEmpty!43045 () Bool)

(declare-fun mapRes!43045 () Bool)

(assert (=> mapIsEmpty!43045 mapRes!43045))

(declare-fun b!1106950 () Bool)

(declare-fun res!738845 () Bool)

(assert (=> b!1106950 (=> (not res!738845) (not e!631652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106950 (= res!738845 (validMask!0 mask!1564))))

(declare-fun b!1106951 () Bool)

(declare-fun res!738843 () Bool)

(declare-fun e!631655 () Bool)

(assert (=> b!1106951 (=> (not res!738843) (not e!631655))))

(declare-fun lt!495527 () array!71840)

(declare-datatypes ((List!24229 0))(
  ( (Nil!24226) (Cons!24225 (h!25434 (_ BitVec 64)) (t!34507 List!24229)) )
))
(declare-fun arrayNoDuplicates!0 (array!71840 (_ BitVec 32) List!24229) Bool)

(assert (=> b!1106951 (= res!738843 (arrayNoDuplicates!0 lt!495527 #b00000000000000000000000000000000 Nil!24226))))

(declare-fun b!1106952 () Bool)

(declare-fun res!738836 () Bool)

(assert (=> b!1106952 (=> (not res!738836) (not e!631652))))

(assert (=> b!1106952 (= res!738836 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24226))))

(declare-fun b!1106953 () Bool)

(declare-fun res!738839 () Bool)

(assert (=> b!1106953 (=> (not res!738839) (not e!631652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71840 (_ BitVec 32)) Bool)

(assert (=> b!1106953 (= res!738839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106954 () Bool)

(declare-fun res!738840 () Bool)

(assert (=> b!1106954 (=> (not res!738840) (not e!631652))))

(assert (=> b!1106954 (= res!738840 (and (= (size!35107 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35106 _keys!1208) (size!35107 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106955 () Bool)

(assert (=> b!1106955 (= e!631651 (= call!46373 call!46372))))

(declare-fun b!1106956 () Bool)

(declare-fun res!738838 () Bool)

(assert (=> b!1106956 (=> (not res!738838) (not e!631652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106956 (= res!738838 (validKeyInArray!0 k!934))))

(declare-fun b!1106957 () Bool)

(declare-fun e!631649 () Bool)

(assert (=> b!1106957 (= e!631649 true)))

(assert (=> b!1106957 e!631651))

(declare-fun c!108965 () Bool)

(assert (=> b!1106957 (= c!108965 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36265 0))(
  ( (Unit!36266) )
))
(declare-fun lt!495526 () Unit!36265)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!244 (array!71840 array!71842 (_ BitVec 32) (_ BitVec 32) V!41773 V!41773 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36265)

(assert (=> b!1106957 (= lt!495526 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!244 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1106958 () Bool)

(assert (=> b!1106958 (= e!631652 e!631655)))

(declare-fun res!738841 () Bool)

(assert (=> b!1106958 (=> (not res!738841) (not e!631655))))

(assert (=> b!1106958 (= res!738841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495527 mask!1564))))

(assert (=> b!1106958 (= lt!495527 (array!71841 (store (arr!34569 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35106 _keys!1208)))))

(declare-fun bm!46370 () Bool)

(declare-fun dynLambda!2351 (Int (_ BitVec 64)) V!41773)

(assert (=> bm!46370 (= call!46373 (getCurrentListMapNoExtraKeys!4220 lt!495527 (array!71843 (store (arr!34570 _values!996) i!673 (ValueCellFull!13033 (dynLambda!2351 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35107 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43045 () Bool)

(declare-fun tp!81974 () Bool)

(assert (=> mapNonEmpty!43045 (= mapRes!43045 (and tp!81974 e!631653))))

(declare-fun mapValue!43045 () ValueCell!13033)

(declare-fun mapKey!43045 () (_ BitVec 32))

(declare-fun mapRest!43045 () (Array (_ BitVec 32) ValueCell!13033))

(assert (=> mapNonEmpty!43045 (= (arr!34570 _values!996) (store mapRest!43045 mapKey!43045 mapValue!43045))))

(declare-fun res!738844 () Bool)

(assert (=> start!97290 (=> (not res!738844) (not e!631652))))

(assert (=> start!97290 (= res!738844 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35106 _keys!1208))))))

(assert (=> start!97290 e!631652))

(assert (=> start!97290 tp_is_empty!27485))

(declare-fun array_inv!26466 (array!71840) Bool)

(assert (=> start!97290 (array_inv!26466 _keys!1208)))

(assert (=> start!97290 true))

(assert (=> start!97290 tp!81975))

(declare-fun e!631654 () Bool)

(declare-fun array_inv!26467 (array!71842) Bool)

(assert (=> start!97290 (and (array_inv!26467 _values!996) e!631654)))

(declare-fun b!1106959 () Bool)

(assert (=> b!1106959 (= e!631654 (and e!631648 mapRes!43045))))

(declare-fun condMapEmpty!43045 () Bool)

(declare-fun mapDefault!43045 () ValueCell!13033)

