; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101680 () Bool)

(assert start!101680)

(declare-fun b_free!26365 () Bool)

(declare-fun b_next!26365 () Bool)

(assert (=> start!101680 (= b_free!26365 (not b_next!26365))))

(declare-fun tp!92138 () Bool)

(declare-fun b_and!43983 () Bool)

(assert (=> start!101680 (= tp!92138 b_and!43983)))

(declare-fun b!1222466 () Bool)

(declare-fun e!694299 () Bool)

(declare-fun e!694307 () Bool)

(assert (=> b!1222466 (= e!694299 e!694307)))

(declare-fun res!812329 () Bool)

(assert (=> b!1222466 (=> res!812329 e!694307)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222466 (= res!812329 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46553 0))(
  ( (V!46554 (val!15591 Int)) )
))
(declare-fun zeroValue!944 () V!46553)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14825 0))(
  ( (ValueCellFull!14825 (v!18253 V!46553)) (EmptyCell!14825) )
))
(declare-datatypes ((array!78896 0))(
  ( (array!78897 (arr!38072 (Array (_ BitVec 32) ValueCell!14825)) (size!38609 (_ BitVec 32))) )
))
(declare-fun lt!556191 () array!78896)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!78898 0))(
  ( (array!78899 (arr!38073 (Array (_ BitVec 32) (_ BitVec 64))) (size!38610 (_ BitVec 32))) )
))
(declare-fun lt!556179 () array!78898)

(declare-datatypes ((tuple2!20222 0))(
  ( (tuple2!20223 (_1!10121 (_ BitVec 64)) (_2!10121 V!46553)) )
))
(declare-datatypes ((List!27035 0))(
  ( (Nil!27032) (Cons!27031 (h!28240 tuple2!20222) (t!40387 List!27035)) )
))
(declare-datatypes ((ListLongMap!18203 0))(
  ( (ListLongMap!18204 (toList!9117 List!27035)) )
))
(declare-fun lt!556178 () ListLongMap!18203)

(declare-fun minValue!944 () V!46553)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5515 (array!78898 array!78896 (_ BitVec 32) (_ BitVec 32) V!46553 V!46553 (_ BitVec 32) Int) ListLongMap!18203)

(assert (=> b!1222466 (= lt!556178 (getCurrentListMapNoExtraKeys!5515 lt!556179 lt!556191 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556180 () V!46553)

(declare-fun _values!996 () array!78896)

(assert (=> b!1222466 (= lt!556191 (array!78897 (store (arr!38072 _values!996) i!673 (ValueCellFull!14825 lt!556180)) (size!38609 _values!996)))))

(declare-fun dynLambda!3412 (Int (_ BitVec 64)) V!46553)

(assert (=> b!1222466 (= lt!556180 (dynLambda!3412 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78898)

(declare-fun lt!556184 () ListLongMap!18203)

(assert (=> b!1222466 (= lt!556184 (getCurrentListMapNoExtraKeys!5515 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222467 () Bool)

(declare-fun e!694302 () Bool)

(assert (=> b!1222467 (= e!694302 (not e!694299))))

(declare-fun res!812320 () Bool)

(assert (=> b!1222467 (=> res!812320 e!694299)))

(assert (=> b!1222467 (= res!812320 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222467 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40408 0))(
  ( (Unit!40409) )
))
(declare-fun lt!556189 () Unit!40408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78898 (_ BitVec 64) (_ BitVec 32)) Unit!40408)

(assert (=> b!1222467 (= lt!556189 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222469 () Bool)

(declare-fun res!812327 () Bool)

(declare-fun e!694305 () Bool)

(assert (=> b!1222469 (=> (not res!812327) (not e!694305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222469 (= res!812327 (validMask!0 mask!1564))))

(declare-fun b!1222470 () Bool)

(declare-fun e!694304 () Bool)

(declare-fun e!694298 () Bool)

(assert (=> b!1222470 (= e!694304 e!694298)))

(declare-fun res!812323 () Bool)

(assert (=> b!1222470 (=> res!812323 e!694298)))

(assert (=> b!1222470 (= res!812323 (not (= (select (arr!38073 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!48499 () Bool)

(declare-fun mapRes!48499 () Bool)

(assert (=> mapIsEmpty!48499 mapRes!48499))

(declare-fun b!1222471 () Bool)

(declare-fun e!694301 () Unit!40408)

(declare-fun Unit!40410 () Unit!40408)

(assert (=> b!1222471 (= e!694301 Unit!40410)))

(declare-fun b!1222472 () Bool)

(declare-fun Unit!40411 () Unit!40408)

(assert (=> b!1222472 (= e!694301 Unit!40411)))

(declare-fun lt!556188 () Unit!40408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78898 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40408)

(assert (=> b!1222472 (= lt!556188 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1222472 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556183 () Unit!40408)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78898 (_ BitVec 32) (_ BitVec 32)) Unit!40408)

(assert (=> b!1222472 (= lt!556183 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27036 0))(
  ( (Nil!27033) (Cons!27032 (h!28241 (_ BitVec 64)) (t!40388 List!27036)) )
))
(declare-fun arrayNoDuplicates!0 (array!78898 (_ BitVec 32) List!27036) Bool)

(assert (=> b!1222472 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27033)))

(declare-fun lt!556185 () Unit!40408)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78898 (_ BitVec 64) (_ BitVec 32) List!27036) Unit!40408)

(assert (=> b!1222472 (= lt!556185 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27033))))

(assert (=> b!1222472 false))

(declare-fun b!1222473 () Bool)

(declare-fun res!812317 () Bool)

(assert (=> b!1222473 (=> (not res!812317) (not e!694302))))

(assert (=> b!1222473 (= res!812317 (arrayNoDuplicates!0 lt!556179 #b00000000000000000000000000000000 Nil!27033))))

(declare-fun b!1222474 () Bool)

(declare-fun res!812318 () Bool)

(assert (=> b!1222474 (=> (not res!812318) (not e!694305))))

(assert (=> b!1222474 (= res!812318 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27033))))

(declare-fun b!1222475 () Bool)

(declare-fun res!812324 () Bool)

(assert (=> b!1222475 (=> (not res!812324) (not e!694305))))

(assert (=> b!1222475 (= res!812324 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38610 _keys!1208))))))

(declare-fun b!1222476 () Bool)

(declare-fun e!694296 () Bool)

(declare-fun e!694306 () Bool)

(assert (=> b!1222476 (= e!694296 (and e!694306 mapRes!48499))))

(declare-fun condMapEmpty!48499 () Bool)

(declare-fun mapDefault!48499 () ValueCell!14825)

