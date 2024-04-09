; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101370 () Bool)

(assert start!101370)

(declare-fun b_free!26231 () Bool)

(declare-fun b_next!26231 () Bool)

(assert (=> start!101370 (= b_free!26231 (not b_next!26231))))

(declare-fun tp!91718 () Bool)

(declare-fun b_and!43607 () Bool)

(assert (=> start!101370 (= tp!91718 b_and!43607)))

(declare-fun b!1217555 () Bool)

(declare-fun e!691284 () Bool)

(declare-fun tp_is_empty!30935 () Bool)

(assert (=> b!1217555 (= e!691284 tp_is_empty!30935)))

(declare-fun b!1217556 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((array!78618 0))(
  ( (array!78619 (arr!37939 (Array (_ BitVec 32) (_ BitVec 64))) (size!38476 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78618)

(declare-fun e!691281 () Bool)

(declare-fun arrayContainsKey!0 (array!78618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217556 (= e!691281 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217557 () Bool)

(declare-fun res!808674 () Bool)

(declare-fun e!691279 () Bool)

(assert (=> b!1217557 (=> (not res!808674) (not e!691279))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217557 (= res!808674 (validMask!0 mask!1564))))

(declare-fun b!1217558 () Bool)

(declare-fun res!808683 () Bool)

(assert (=> b!1217558 (=> (not res!808683) (not e!691279))))

(declare-datatypes ((List!26921 0))(
  ( (Nil!26918) (Cons!26917 (h!28126 (_ BitVec 64)) (t!40139 List!26921)) )
))
(declare-fun arrayNoDuplicates!0 (array!78618 (_ BitVec 32) List!26921) Bool)

(assert (=> b!1217558 (= res!808683 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26918))))

(declare-fun b!1217559 () Bool)

(declare-fun res!808685 () Bool)

(declare-fun e!691283 () Bool)

(assert (=> b!1217559 (=> (not res!808685) (not e!691283))))

(declare-fun lt!553404 () array!78618)

(assert (=> b!1217559 (= res!808685 (arrayNoDuplicates!0 lt!553404 #b00000000000000000000000000000000 Nil!26918))))

(declare-fun mapIsEmpty!48280 () Bool)

(declare-fun mapRes!48280 () Bool)

(assert (=> mapIsEmpty!48280 mapRes!48280))

(declare-fun b!1217560 () Bool)

(declare-fun e!691286 () Bool)

(assert (=> b!1217560 (= e!691286 tp_is_empty!30935)))

(declare-fun mapNonEmpty!48280 () Bool)

(declare-fun tp!91719 () Bool)

(assert (=> mapNonEmpty!48280 (= mapRes!48280 (and tp!91719 e!691286))))

(declare-datatypes ((V!46373 0))(
  ( (V!46374 (val!15524 Int)) )
))
(declare-datatypes ((ValueCell!14758 0))(
  ( (ValueCellFull!14758 (v!18179 V!46373)) (EmptyCell!14758) )
))
(declare-fun mapValue!48280 () ValueCell!14758)

(declare-fun mapRest!48280 () (Array (_ BitVec 32) ValueCell!14758))

(declare-fun mapKey!48280 () (_ BitVec 32))

(declare-datatypes ((array!78620 0))(
  ( (array!78621 (arr!37940 (Array (_ BitVec 32) ValueCell!14758)) (size!38477 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78620)

(assert (=> mapNonEmpty!48280 (= (arr!37940 _values!996) (store mapRest!48280 mapKey!48280 mapValue!48280))))

(declare-fun b!1217561 () Bool)

(declare-fun e!691282 () Bool)

(declare-fun e!691288 () Bool)

(assert (=> b!1217561 (= e!691282 e!691288)))

(declare-fun res!808677 () Bool)

(assert (=> b!1217561 (=> res!808677 e!691288)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217561 (= res!808677 (not (validKeyInArray!0 (select (arr!37939 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20100 0))(
  ( (tuple2!20101 (_1!10060 (_ BitVec 64)) (_2!10060 V!46373)) )
))
(declare-datatypes ((List!26922 0))(
  ( (Nil!26919) (Cons!26918 (h!28127 tuple2!20100) (t!40140 List!26922)) )
))
(declare-datatypes ((ListLongMap!18081 0))(
  ( (ListLongMap!18082 (toList!9056 List!26922)) )
))
(declare-fun lt!553399 () ListLongMap!18081)

(declare-fun lt!553400 () ListLongMap!18081)

(assert (=> b!1217561 (= lt!553399 lt!553400)))

(declare-fun lt!553397 () ListLongMap!18081)

(declare-fun -!1917 (ListLongMap!18081 (_ BitVec 64)) ListLongMap!18081)

(assert (=> b!1217561 (= lt!553400 (-!1917 lt!553397 k!934))))

(declare-fun zeroValue!944 () V!46373)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!46373)

(declare-fun lt!553402 () array!78620)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5460 (array!78618 array!78620 (_ BitVec 32) (_ BitVec 32) V!46373 V!46373 (_ BitVec 32) Int) ListLongMap!18081)

(assert (=> b!1217561 (= lt!553399 (getCurrentListMapNoExtraKeys!5460 lt!553404 lt!553402 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217561 (= lt!553397 (getCurrentListMapNoExtraKeys!5460 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40298 0))(
  ( (Unit!40299) )
))
(declare-fun lt!553398 () Unit!40298)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1119 (array!78618 array!78620 (_ BitVec 32) (_ BitVec 32) V!46373 V!46373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40298)

(assert (=> b!1217561 (= lt!553398 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1119 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217562 () Bool)

(assert (=> b!1217562 (= e!691279 e!691283)))

(declare-fun res!808673 () Bool)

(assert (=> b!1217562 (=> (not res!808673) (not e!691283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78618 (_ BitVec 32)) Bool)

(assert (=> b!1217562 (= res!808673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553404 mask!1564))))

(assert (=> b!1217562 (= lt!553404 (array!78619 (store (arr!37939 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38476 _keys!1208)))))

(declare-fun b!1217563 () Bool)

(declare-fun res!808680 () Bool)

(assert (=> b!1217563 (=> (not res!808680) (not e!691279))))

(assert (=> b!1217563 (= res!808680 (= (select (arr!37939 _keys!1208) i!673) k!934))))

(declare-fun res!808675 () Bool)

(assert (=> start!101370 (=> (not res!808675) (not e!691279))))

(assert (=> start!101370 (= res!808675 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38476 _keys!1208))))))

(assert (=> start!101370 e!691279))

(assert (=> start!101370 tp_is_empty!30935))

(declare-fun array_inv!28790 (array!78618) Bool)

(assert (=> start!101370 (array_inv!28790 _keys!1208)))

(assert (=> start!101370 true))

(assert (=> start!101370 tp!91718))

(declare-fun e!691280 () Bool)

(declare-fun array_inv!28791 (array!78620) Bool)

(assert (=> start!101370 (and (array_inv!28791 _values!996) e!691280)))

(declare-fun b!1217564 () Bool)

(declare-fun res!808678 () Bool)

(assert (=> b!1217564 (=> (not res!808678) (not e!691279))))

(assert (=> b!1217564 (= res!808678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217565 () Bool)

(assert (=> b!1217565 (= e!691280 (and e!691284 mapRes!48280))))

(declare-fun condMapEmpty!48280 () Bool)

(declare-fun mapDefault!48280 () ValueCell!14758)

