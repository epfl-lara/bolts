; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97358 () Bool)

(assert start!97358)

(declare-fun b_free!23293 () Bool)

(declare-fun b_next!23293 () Bool)

(assert (=> start!97358 (= b_free!23293 (not b_next!23293))))

(declare-fun tp!82179 () Bool)

(declare-fun b_and!37439 () Bool)

(assert (=> start!97358 (= tp!82179 b_and!37439)))

(declare-fun b!1108669 () Bool)

(declare-fun e!632482 () Bool)

(assert (=> b!1108669 (= e!632482 true)))

(declare-fun e!632477 () Bool)

(assert (=> b!1108669 e!632477))

(declare-fun c!109079 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108669 (= c!109079 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41865 0))(
  ( (V!41866 (val!13833 Int)) )
))
(declare-fun zeroValue!944 () V!41865)

(declare-datatypes ((array!71974 0))(
  ( (array!71975 (arr!34636 (Array (_ BitVec 32) (_ BitVec 64))) (size!35173 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71974)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13067 0))(
  ( (ValueCellFull!13067 (v!16467 V!41865)) (EmptyCell!13067) )
))
(declare-datatypes ((array!71976 0))(
  ( (array!71977 (arr!34637 (Array (_ BitVec 32) ValueCell!13067)) (size!35174 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71976)

(declare-fun minValue!944 () V!41865)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((Unit!36313 0))(
  ( (Unit!36314) )
))
(declare-fun lt!495832 () Unit!36313)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!265 (array!71974 array!71976 (_ BitVec 32) (_ BitVec 32) V!41865 V!41865 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36313)

(assert (=> b!1108669 (= lt!495832 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!265 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108670 () Bool)

(declare-datatypes ((tuple2!17550 0))(
  ( (tuple2!17551 (_1!8785 (_ BitVec 64)) (_2!8785 V!41865)) )
))
(declare-datatypes ((List!24286 0))(
  ( (Nil!24283) (Cons!24282 (h!25491 tuple2!17550) (t!34632 List!24286)) )
))
(declare-datatypes ((ListLongMap!15531 0))(
  ( (ListLongMap!15532 (toList!7781 List!24286)) )
))
(declare-fun call!46577 () ListLongMap!15531)

(declare-fun call!46576 () ListLongMap!15531)

(declare-fun -!1012 (ListLongMap!15531 (_ BitVec 64)) ListLongMap!15531)

(assert (=> b!1108670 (= e!632477 (= call!46577 (-!1012 call!46576 k!934)))))

(declare-fun res!739967 () Bool)

(declare-fun e!632476 () Bool)

(assert (=> start!97358 (=> (not res!739967) (not e!632476))))

(assert (=> start!97358 (= res!739967 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35173 _keys!1208))))))

(assert (=> start!97358 e!632476))

(declare-fun tp_is_empty!27553 () Bool)

(assert (=> start!97358 tp_is_empty!27553))

(declare-fun array_inv!26518 (array!71974) Bool)

(assert (=> start!97358 (array_inv!26518 _keys!1208)))

(assert (=> start!97358 true))

(assert (=> start!97358 tp!82179))

(declare-fun e!632481 () Bool)

(declare-fun array_inv!26519 (array!71976) Bool)

(assert (=> start!97358 (and (array_inv!26519 _values!996) e!632481)))

(declare-fun b!1108671 () Bool)

(declare-fun res!739966 () Bool)

(assert (=> b!1108671 (=> (not res!739966) (not e!632476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108671 (= res!739966 (validMask!0 mask!1564))))

(declare-fun lt!495834 () array!71974)

(declare-fun bm!46573 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4247 (array!71974 array!71976 (_ BitVec 32) (_ BitVec 32) V!41865 V!41865 (_ BitVec 32) Int) ListLongMap!15531)

(declare-fun dynLambda!2371 (Int (_ BitVec 64)) V!41865)

(assert (=> bm!46573 (= call!46577 (getCurrentListMapNoExtraKeys!4247 lt!495834 (array!71977 (store (arr!34637 _values!996) i!673 (ValueCellFull!13067 (dynLambda!2371 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35174 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108672 () Bool)

(declare-fun res!739964 () Bool)

(assert (=> b!1108672 (=> (not res!739964) (not e!632476))))

(declare-datatypes ((List!24287 0))(
  ( (Nil!24284) (Cons!24283 (h!25492 (_ BitVec 64)) (t!34633 List!24287)) )
))
(declare-fun arrayNoDuplicates!0 (array!71974 (_ BitVec 32) List!24287) Bool)

(assert (=> b!1108672 (= res!739964 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24284))))

(declare-fun mapIsEmpty!43147 () Bool)

(declare-fun mapRes!43147 () Bool)

(assert (=> mapIsEmpty!43147 mapRes!43147))

(declare-fun bm!46574 () Bool)

(assert (=> bm!46574 (= call!46576 (getCurrentListMapNoExtraKeys!4247 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108673 () Bool)

(declare-fun res!739965 () Bool)

(assert (=> b!1108673 (=> (not res!739965) (not e!632476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108673 (= res!739965 (validKeyInArray!0 k!934))))

(declare-fun b!1108674 () Bool)

(declare-fun res!739959 () Bool)

(assert (=> b!1108674 (=> (not res!739959) (not e!632476))))

(assert (=> b!1108674 (= res!739959 (= (select (arr!34636 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43147 () Bool)

(declare-fun tp!82178 () Bool)

(declare-fun e!632480 () Bool)

(assert (=> mapNonEmpty!43147 (= mapRes!43147 (and tp!82178 e!632480))))

(declare-fun mapKey!43147 () (_ BitVec 32))

(declare-fun mapValue!43147 () ValueCell!13067)

(declare-fun mapRest!43147 () (Array (_ BitVec 32) ValueCell!13067))

(assert (=> mapNonEmpty!43147 (= (arr!34637 _values!996) (store mapRest!43147 mapKey!43147 mapValue!43147))))

(declare-fun b!1108675 () Bool)

(declare-fun res!739963 () Bool)

(assert (=> b!1108675 (=> (not res!739963) (not e!632476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71974 (_ BitVec 32)) Bool)

(assert (=> b!1108675 (= res!739963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108676 () Bool)

(assert (=> b!1108676 (= e!632477 (= call!46577 call!46576))))

(declare-fun b!1108677 () Bool)

(declare-fun e!632483 () Bool)

(assert (=> b!1108677 (= e!632483 (not e!632482))))

(declare-fun res!739958 () Bool)

(assert (=> b!1108677 (=> res!739958 e!632482)))

(assert (=> b!1108677 (= res!739958 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35173 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108677 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!495833 () Unit!36313)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71974 (_ BitVec 64) (_ BitVec 32)) Unit!36313)

(assert (=> b!1108677 (= lt!495833 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108678 () Bool)

(assert (=> b!1108678 (= e!632476 e!632483)))

(declare-fun res!739960 () Bool)

(assert (=> b!1108678 (=> (not res!739960) (not e!632483))))

(assert (=> b!1108678 (= res!739960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495834 mask!1564))))

(assert (=> b!1108678 (= lt!495834 (array!71975 (store (arr!34636 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35173 _keys!1208)))))

(declare-fun b!1108679 () Bool)

(declare-fun e!632478 () Bool)

(assert (=> b!1108679 (= e!632481 (and e!632478 mapRes!43147))))

(declare-fun condMapEmpty!43147 () Bool)

(declare-fun mapDefault!43147 () ValueCell!13067)

