; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97440 () Bool)

(assert start!97440)

(declare-fun b_free!23375 () Bool)

(declare-fun b_next!23375 () Bool)

(assert (=> start!97440 (= b_free!23375 (not b_next!23375))))

(declare-fun tp!82425 () Bool)

(declare-fun b_and!37607 () Bool)

(assert (=> start!97440 (= tp!82425 b_and!37607)))

(declare-fun b!1110743 () Bool)

(declare-fun e!633473 () Bool)

(declare-fun e!633478 () Bool)

(assert (=> b!1110743 (= e!633473 e!633478)))

(declare-fun res!741316 () Bool)

(assert (=> b!1110743 (=> (not res!741316) (not e!633478))))

(declare-datatypes ((array!72136 0))(
  ( (array!72137 (arr!34717 (Array (_ BitVec 32) (_ BitVec 64))) (size!35254 (_ BitVec 32))) )
))
(declare-fun lt!496201 () array!72136)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72136 (_ BitVec 32)) Bool)

(assert (=> b!1110743 (= res!741316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496201 mask!1564))))

(declare-fun _keys!1208 () array!72136)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110743 (= lt!496201 (array!72137 (store (arr!34717 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35254 _keys!1208)))))

(declare-datatypes ((V!41973 0))(
  ( (V!41974 (val!13874 Int)) )
))
(declare-fun zeroValue!944 () V!41973)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13108 0))(
  ( (ValueCellFull!13108 (v!16508 V!41973)) (EmptyCell!13108) )
))
(declare-datatypes ((array!72138 0))(
  ( (array!72139 (arr!34718 (Array (_ BitVec 32) ValueCell!13108)) (size!35255 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72138)

(declare-fun minValue!944 () V!41973)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46819 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17616 0))(
  ( (tuple2!17617 (_1!8818 (_ BitVec 64)) (_2!8818 V!41973)) )
))
(declare-datatypes ((List!24352 0))(
  ( (Nil!24349) (Cons!24348 (h!25557 tuple2!17616) (t!34780 List!24352)) )
))
(declare-datatypes ((ListLongMap!15597 0))(
  ( (ListLongMap!15598 (toList!7814 List!24352)) )
))
(declare-fun call!46823 () ListLongMap!15597)

(declare-fun getCurrentListMapNoExtraKeys!4277 (array!72136 array!72138 (_ BitVec 32) (_ BitVec 32) V!41973 V!41973 (_ BitVec 32) Int) ListLongMap!15597)

(declare-fun dynLambda!2399 (Int (_ BitVec 64)) V!41973)

(assert (=> bm!46819 (= call!46823 (getCurrentListMapNoExtraKeys!4277 lt!496201 (array!72139 (store (arr!34718 _values!996) i!673 (ValueCellFull!13108 (dynLambda!2399 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35255 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!741319 () Bool)

(assert (=> start!97440 (=> (not res!741319) (not e!633473))))

(assert (=> start!97440 (= res!741319 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35254 _keys!1208))))))

(assert (=> start!97440 e!633473))

(declare-fun tp_is_empty!27635 () Bool)

(assert (=> start!97440 tp_is_empty!27635))

(declare-fun array_inv!26578 (array!72136) Bool)

(assert (=> start!97440 (array_inv!26578 _keys!1208)))

(assert (=> start!97440 true))

(assert (=> start!97440 tp!82425))

(declare-fun e!633475 () Bool)

(declare-fun array_inv!26579 (array!72138) Bool)

(assert (=> start!97440 (and (array_inv!26579 _values!996) e!633475)))

(declare-fun e!633479 () Bool)

(declare-fun call!46822 () ListLongMap!15597)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1110744 () Bool)

(declare-fun -!1038 (ListLongMap!15597 (_ BitVec 64)) ListLongMap!15597)

(assert (=> b!1110744 (= e!633479 (= call!46823 (-!1038 call!46822 k!934)))))

(declare-fun b!1110745 () Bool)

(declare-fun res!741321 () Bool)

(assert (=> b!1110745 (=> (not res!741321) (not e!633473))))

(assert (=> b!1110745 (= res!741321 (= (select (arr!34717 _keys!1208) i!673) k!934))))

(declare-fun b!1110746 () Bool)

(declare-fun e!633474 () Bool)

(declare-fun mapRes!43270 () Bool)

(assert (=> b!1110746 (= e!633475 (and e!633474 mapRes!43270))))

(declare-fun condMapEmpty!43270 () Bool)

(declare-fun mapDefault!43270 () ValueCell!13108)

