; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101500 () Bool)

(assert start!101500)

(declare-fun b_free!26281 () Bool)

(declare-fun b_next!26281 () Bool)

(assert (=> start!101500 (= b_free!26281 (not b_next!26281))))

(declare-fun tp!91877 () Bool)

(declare-fun b_and!43761 () Bool)

(assert (=> start!101500 (= tp!91877 b_and!43761)))

(declare-fun b!1219411 () Bool)

(declare-fun e!692414 () Bool)

(declare-fun e!692415 () Bool)

(assert (=> b!1219411 (= e!692414 e!692415)))

(declare-fun res!810014 () Bool)

(assert (=> b!1219411 (=> res!810014 e!692415)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219411 (= res!810014 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46441 0))(
  ( (V!46442 (val!15549 Int)) )
))
(declare-fun zeroValue!944 () V!46441)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14783 0))(
  ( (ValueCellFull!14783 (v!18207 V!46441)) (EmptyCell!14783) )
))
(declare-datatypes ((array!78722 0))(
  ( (array!78723 (arr!37988 (Array (_ BitVec 32) ValueCell!14783)) (size!38525 (_ BitVec 32))) )
))
(declare-fun lt!554403 () array!78722)

(declare-datatypes ((tuple2!20142 0))(
  ( (tuple2!20143 (_1!10081 (_ BitVec 64)) (_2!10081 V!46441)) )
))
(declare-datatypes ((List!26961 0))(
  ( (Nil!26958) (Cons!26957 (h!28166 tuple2!20142) (t!40229 List!26961)) )
))
(declare-datatypes ((ListLongMap!18123 0))(
  ( (ListLongMap!18124 (toList!9077 List!26961)) )
))
(declare-fun lt!554397 () ListLongMap!18123)

(declare-datatypes ((array!78724 0))(
  ( (array!78725 (arr!37989 (Array (_ BitVec 32) (_ BitVec 64))) (size!38526 (_ BitVec 32))) )
))
(declare-fun lt!554405 () array!78724)

(declare-fun minValue!944 () V!46441)

(declare-fun getCurrentListMapNoExtraKeys!5478 (array!78724 array!78722 (_ BitVec 32) (_ BitVec 32) V!46441 V!46441 (_ BitVec 32) Int) ListLongMap!18123)

(assert (=> b!1219411 (= lt!554397 (getCurrentListMapNoExtraKeys!5478 lt!554405 lt!554403 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78722)

(declare-fun lt!554399 () V!46441)

(assert (=> b!1219411 (= lt!554403 (array!78723 (store (arr!37988 _values!996) i!673 (ValueCellFull!14783 lt!554399)) (size!38525 _values!996)))))

(declare-fun dynLambda!3381 (Int (_ BitVec 64)) V!46441)

(assert (=> b!1219411 (= lt!554399 (dynLambda!3381 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78724)

(declare-fun lt!554396 () ListLongMap!18123)

(assert (=> b!1219411 (= lt!554396 (getCurrentListMapNoExtraKeys!5478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219412 () Bool)

(declare-fun res!810006 () Bool)

(declare-fun e!692416 () Bool)

(assert (=> b!1219412 (=> (not res!810006) (not e!692416))))

(declare-datatypes ((List!26962 0))(
  ( (Nil!26959) (Cons!26958 (h!28167 (_ BitVec 64)) (t!40230 List!26962)) )
))
(declare-fun arrayNoDuplicates!0 (array!78724 (_ BitVec 32) List!26962) Bool)

(assert (=> b!1219412 (= res!810006 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26959))))

(declare-fun mapIsEmpty!48364 () Bool)

(declare-fun mapRes!48364 () Bool)

(assert (=> mapIsEmpty!48364 mapRes!48364))

(declare-fun b!1219413 () Bool)

(declare-fun res!810011 () Bool)

(assert (=> b!1219413 (=> (not res!810011) (not e!692416))))

(assert (=> b!1219413 (= res!810011 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38526 _keys!1208))))))

(declare-fun b!1219414 () Bool)

(declare-fun res!810004 () Bool)

(declare-fun e!692424 () Bool)

(assert (=> b!1219414 (=> (not res!810004) (not e!692424))))

(assert (=> b!1219414 (= res!810004 (arrayNoDuplicates!0 lt!554405 #b00000000000000000000000000000000 Nil!26959))))

(declare-fun b!1219415 () Bool)

(declare-fun res!810010 () Bool)

(assert (=> b!1219415 (=> (not res!810010) (not e!692416))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1219415 (= res!810010 (= (select (arr!37989 _keys!1208) i!673) k!934))))

(declare-fun b!1219416 () Bool)

(declare-fun e!692420 () Bool)

(declare-fun e!692413 () Bool)

(assert (=> b!1219416 (= e!692420 (and e!692413 mapRes!48364))))

(declare-fun condMapEmpty!48364 () Bool)

(declare-fun mapDefault!48364 () ValueCell!14783)

