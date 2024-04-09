; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101698 () Bool)

(assert start!101698)

(declare-fun b_free!26383 () Bool)

(declare-fun b_next!26383 () Bool)

(assert (=> start!101698 (= b_free!26383 (not b_next!26383))))

(declare-fun tp!92193 () Bool)

(declare-fun b_and!44019 () Bool)

(assert (=> start!101698 (= tp!92193 b_and!44019)))

(declare-fun b!1223024 () Bool)

(declare-fun e!694624 () Bool)

(declare-fun e!694622 () Bool)

(assert (=> b!1223024 (= e!694624 e!694622)))

(declare-fun res!812724 () Bool)

(assert (=> b!1223024 (=> res!812724 e!694622)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223024 (= res!812724 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46577 0))(
  ( (V!46578 (val!15600 Int)) )
))
(declare-fun zeroValue!944 () V!46577)

(declare-datatypes ((tuple2!20240 0))(
  ( (tuple2!20241 (_1!10130 (_ BitVec 64)) (_2!10130 V!46577)) )
))
(declare-datatypes ((List!27053 0))(
  ( (Nil!27050) (Cons!27049 (h!28258 tuple2!20240) (t!40423 List!27053)) )
))
(declare-datatypes ((ListLongMap!18221 0))(
  ( (ListLongMap!18222 (toList!9126 List!27053)) )
))
(declare-fun lt!556567 () ListLongMap!18221)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14834 0))(
  ( (ValueCellFull!14834 (v!18262 V!46577)) (EmptyCell!14834) )
))
(declare-datatypes ((array!78932 0))(
  ( (array!78933 (arr!38090 (Array (_ BitVec 32) ValueCell!14834)) (size!38627 (_ BitVec 32))) )
))
(declare-fun lt!556566 () array!78932)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46577)

(declare-datatypes ((array!78934 0))(
  ( (array!78935 (arr!38091 (Array (_ BitVec 32) (_ BitVec 64))) (size!38628 (_ BitVec 32))) )
))
(declare-fun lt!556562 () array!78934)

(declare-fun getCurrentListMapNoExtraKeys!5524 (array!78934 array!78932 (_ BitVec 32) (_ BitVec 32) V!46577 V!46577 (_ BitVec 32) Int) ListLongMap!18221)

(assert (=> b!1223024 (= lt!556567 (getCurrentListMapNoExtraKeys!5524 lt!556562 lt!556566 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78932)

(declare-fun lt!556559 () V!46577)

(assert (=> b!1223024 (= lt!556566 (array!78933 (store (arr!38090 _values!996) i!673 (ValueCellFull!14834 lt!556559)) (size!38627 _values!996)))))

(declare-fun dynLambda!3420 (Int (_ BitVec 64)) V!46577)

(assert (=> b!1223024 (= lt!556559 (dynLambda!3420 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556561 () ListLongMap!18221)

(declare-fun _keys!1208 () array!78934)

(assert (=> b!1223024 (= lt!556561 (getCurrentListMapNoExtraKeys!5524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223025 () Bool)

(declare-fun res!812720 () Bool)

(declare-fun e!694627 () Bool)

(assert (=> b!1223025 (=> (not res!812720) (not e!694627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223025 (= res!812720 (validMask!0 mask!1564))))

(declare-fun b!1223026 () Bool)

(declare-fun e!694631 () Bool)

(declare-fun e!694623 () Bool)

(declare-fun mapRes!48526 () Bool)

(assert (=> b!1223026 (= e!694631 (and e!694623 mapRes!48526))))

(declare-fun condMapEmpty!48526 () Bool)

(declare-fun mapDefault!48526 () ValueCell!14834)

