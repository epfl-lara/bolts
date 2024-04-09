; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99880 () Bool)

(assert start!99880)

(declare-fun b_free!25423 () Bool)

(declare-fun b_next!25423 () Bool)

(assert (=> start!99880 (= b_free!25423 (not b_next!25423))))

(declare-fun tp!88984 () Bool)

(declare-fun b_and!41727 () Bool)

(assert (=> start!99880 (= tp!88984 b_and!41727)))

(declare-fun b!1187335 () Bool)

(declare-datatypes ((Unit!39301 0))(
  ( (Unit!39302) )
))
(declare-fun e!675149 () Unit!39301)

(declare-fun Unit!39303 () Unit!39301)

(assert (=> b!1187335 (= e!675149 Unit!39303)))

(declare-datatypes ((array!76674 0))(
  ( (array!76675 (arr!36983 (Array (_ BitVec 32) (_ BitVec 64))) (size!37520 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76674)

(declare-fun lt!539756 () Unit!39301)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76674 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39301)

(assert (=> b!1187335 (= lt!539756 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187335 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539764 () Unit!39301)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76674 (_ BitVec 32) (_ BitVec 32)) Unit!39301)

(assert (=> b!1187335 (= lt!539764 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26186 0))(
  ( (Nil!26183) (Cons!26182 (h!27391 (_ BitVec 64)) (t!38608 List!26186)) )
))
(declare-fun arrayNoDuplicates!0 (array!76674 (_ BitVec 32) List!26186) Bool)

(assert (=> b!1187335 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26183)))

(declare-fun lt!539767 () Unit!39301)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76674 (_ BitVec 64) (_ BitVec 32) List!26186) Unit!39301)

(assert (=> b!1187335 (= lt!539767 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26183))))

(assert (=> b!1187335 false))

(declare-fun mapIsEmpty!46757 () Bool)

(declare-fun mapRes!46757 () Bool)

(assert (=> mapIsEmpty!46757 mapRes!46757))

(declare-fun b!1187336 () Bool)

(declare-fun e!675150 () Bool)

(declare-fun e!675153 () Bool)

(assert (=> b!1187336 (= e!675150 (not e!675153))))

(declare-fun res!789465 () Bool)

(assert (=> b!1187336 (=> res!789465 e!675153)))

(assert (=> b!1187336 (= res!789465 (bvsgt from!1455 i!673))))

(assert (=> b!1187336 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539760 () Unit!39301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76674 (_ BitVec 64) (_ BitVec 32)) Unit!39301)

(assert (=> b!1187336 (= lt!539760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187337 () Bool)

(declare-fun res!789474 () Bool)

(declare-fun e!675156 () Bool)

(assert (=> b!1187337 (=> (not res!789474) (not e!675156))))

(assert (=> b!1187337 (= res!789474 (= (select (arr!36983 _keys!1208) i!673) k!934))))

(declare-fun b!1187338 () Bool)

(declare-fun res!789469 () Bool)

(assert (=> b!1187338 (=> (not res!789469) (not e!675156))))

(assert (=> b!1187338 (= res!789469 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37520 _keys!1208))))))

(declare-fun b!1187339 () Bool)

(declare-fun e!675155 () Bool)

(declare-fun e!675148 () Bool)

(assert (=> b!1187339 (= e!675155 e!675148)))

(declare-fun res!789473 () Bool)

(assert (=> b!1187339 (=> res!789473 e!675148)))

(assert (=> b!1187339 (= res!789473 (not (= (select (arr!36983 _keys!1208) from!1455) k!934)))))

(declare-fun b!1187340 () Bool)

(declare-fun e!675152 () Bool)

(declare-fun e!675146 () Bool)

(assert (=> b!1187340 (= e!675152 (and e!675146 mapRes!46757))))

(declare-fun condMapEmpty!46757 () Bool)

(declare-datatypes ((V!45065 0))(
  ( (V!45066 (val!15033 Int)) )
))
(declare-datatypes ((ValueCell!14267 0))(
  ( (ValueCellFull!14267 (v!17672 V!45065)) (EmptyCell!14267) )
))
(declare-datatypes ((array!76676 0))(
  ( (array!76677 (arr!36984 (Array (_ BitVec 32) ValueCell!14267)) (size!37521 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76676)

(declare-fun mapDefault!46757 () ValueCell!14267)

