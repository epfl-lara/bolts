; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100270 () Bool)

(assert start!100270)

(declare-fun b!1195373 () Bool)

(declare-fun res!795510 () Bool)

(declare-fun e!679312 () Bool)

(assert (=> b!1195373 (=> (not res!795510) (not e!679312))))

(declare-datatypes ((array!77366 0))(
  ( (array!77367 (arr!37326 (Array (_ BitVec 32) (_ BitVec 64))) (size!37863 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77366)

(declare-datatypes ((List!26440 0))(
  ( (Nil!26437) (Cons!26436 (h!27645 (_ BitVec 64)) (t!39118 List!26440)) )
))
(declare-fun arrayNoDuplicates!0 (array!77366 (_ BitVec 32) List!26440) Bool)

(assert (=> b!1195373 (= res!795510 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26437))))

(declare-fun b!1195374 () Bool)

(declare-fun res!795511 () Bool)

(declare-fun e!679307 () Bool)

(assert (=> b!1195374 (=> (not res!795511) (not e!679307))))

(declare-fun lt!542874 () array!77366)

(assert (=> b!1195374 (= res!795511 (arrayNoDuplicates!0 lt!542874 #b00000000000000000000000000000000 Nil!26437))))

(declare-fun b!1195375 () Bool)

(declare-fun res!795507 () Bool)

(assert (=> b!1195375 (=> (not res!795507) (not e!679312))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195375 (= res!795507 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37863 _keys!1208))))))

(declare-fun b!1195376 () Bool)

(declare-fun e!679308 () Bool)

(declare-fun tp_is_empty!30301 () Bool)

(assert (=> b!1195376 (= e!679308 tp_is_empty!30301)))

(declare-fun b!1195377 () Bool)

(declare-fun e!679309 () Bool)

(assert (=> b!1195377 (= e!679309 tp_is_empty!30301)))

(declare-fun b!1195378 () Bool)

(assert (=> b!1195378 (= e!679312 e!679307)))

(declare-fun res!795504 () Bool)

(assert (=> b!1195378 (=> (not res!795504) (not e!679307))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77366 (_ BitVec 32)) Bool)

(assert (=> b!1195378 (= res!795504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542874 mask!1564))))

(assert (=> b!1195378 (= lt!542874 (array!77367 (store (arr!37326 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37863 _keys!1208)))))

(declare-fun res!795509 () Bool)

(assert (=> start!100270 (=> (not res!795509) (not e!679312))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100270 (= res!795509 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37863 _keys!1208))))))

(assert (=> start!100270 e!679312))

(declare-fun array_inv!28352 (array!77366) Bool)

(assert (=> start!100270 (array_inv!28352 _keys!1208)))

(assert (=> start!100270 true))

(declare-datatypes ((V!45529 0))(
  ( (V!45530 (val!15207 Int)) )
))
(declare-datatypes ((ValueCell!14441 0))(
  ( (ValueCellFull!14441 (v!17846 V!45529)) (EmptyCell!14441) )
))
(declare-datatypes ((array!77368 0))(
  ( (array!77369 (arr!37327 (Array (_ BitVec 32) ValueCell!14441)) (size!37864 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77368)

(declare-fun e!679311 () Bool)

(declare-fun array_inv!28353 (array!77368) Bool)

(assert (=> start!100270 (and (array_inv!28353 _values!996) e!679311)))

(declare-fun b!1195379 () Bool)

(declare-fun res!795508 () Bool)

(assert (=> b!1195379 (=> (not res!795508) (not e!679312))))

(assert (=> b!1195379 (= res!795508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195380 () Bool)

(declare-fun res!795506 () Bool)

(assert (=> b!1195380 (=> (not res!795506) (not e!679312))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1195380 (= res!795506 (= (select (arr!37326 _keys!1208) i!673) k!934))))

(declare-fun b!1195381 () Bool)

(declare-fun res!795503 () Bool)

(assert (=> b!1195381 (=> (not res!795503) (not e!679312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195381 (= res!795503 (validKeyInArray!0 k!934))))

(declare-fun b!1195382 () Bool)

(assert (=> b!1195382 (= e!679307 (not true))))

(declare-fun arrayContainsKey!0 (array!77366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195382 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39576 0))(
  ( (Unit!39577) )
))
(declare-fun lt!542873 () Unit!39576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77366 (_ BitVec 64) (_ BitVec 32)) Unit!39576)

(assert (=> b!1195382 (= lt!542873 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195383 () Bool)

(declare-fun mapRes!47288 () Bool)

(assert (=> b!1195383 (= e!679311 (and e!679309 mapRes!47288))))

(declare-fun condMapEmpty!47288 () Bool)

(declare-fun mapDefault!47288 () ValueCell!14441)

