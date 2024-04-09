; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100040 () Bool)

(assert start!100040)

(declare-fun b_free!25583 () Bool)

(declare-fun b_next!25583 () Bool)

(assert (=> start!100040 (= b_free!25583 (not b_next!25583))))

(declare-fun tp!89463 () Bool)

(declare-fun b_and!42047 () Bool)

(assert (=> start!100040 (= tp!89463 b_and!42047)))

(declare-fun b!1191310 () Bool)

(declare-fun res!792473 () Bool)

(declare-fun e!677238 () Bool)

(assert (=> b!1191310 (=> (not res!792473) (not e!677238))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76992 0))(
  ( (array!76993 (arr!37142 (Array (_ BitVec 32) (_ BitVec 64))) (size!37679 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76992)

(assert (=> b!1191310 (= res!792473 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37679 _keys!1208))))))

(declare-fun b!1191311 () Bool)

(declare-fun e!677240 () Bool)

(declare-fun e!677241 () Bool)

(assert (=> b!1191311 (= e!677240 (not e!677241))))

(declare-fun res!792479 () Bool)

(assert (=> b!1191311 (=> res!792479 e!677241)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1191311 (= res!792479 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191311 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39466 0))(
  ( (Unit!39467) )
))
(declare-fun lt!541754 () Unit!39466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76992 (_ BitVec 64) (_ BitVec 32)) Unit!39466)

(assert (=> b!1191311 (= lt!541754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1191312 () Bool)

(declare-fun e!677243 () Bool)

(declare-fun tp_is_empty!30113 () Bool)

(assert (=> b!1191312 (= e!677243 tp_is_empty!30113)))

(declare-fun res!792475 () Bool)

(assert (=> start!100040 (=> (not res!792475) (not e!677238))))

(assert (=> start!100040 (= res!792475 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37679 _keys!1208))))))

(assert (=> start!100040 e!677238))

(assert (=> start!100040 tp_is_empty!30113))

(declare-fun array_inv!28224 (array!76992) Bool)

(assert (=> start!100040 (array_inv!28224 _keys!1208)))

(assert (=> start!100040 true))

(assert (=> start!100040 tp!89463))

(declare-datatypes ((V!45277 0))(
  ( (V!45278 (val!15113 Int)) )
))
(declare-datatypes ((ValueCell!14347 0))(
  ( (ValueCellFull!14347 (v!17752 V!45277)) (EmptyCell!14347) )
))
(declare-datatypes ((array!76994 0))(
  ( (array!76995 (arr!37143 (Array (_ BitVec 32) ValueCell!14347)) (size!37680 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76994)

(declare-fun e!677244 () Bool)

(declare-fun array_inv!28225 (array!76994) Bool)

(assert (=> start!100040 (and (array_inv!28225 _values!996) e!677244)))

(declare-fun b!1191313 () Bool)

(assert (=> b!1191313 (= e!677238 e!677240)))

(declare-fun res!792474 () Bool)

(assert (=> b!1191313 (=> (not res!792474) (not e!677240))))

(declare-fun lt!541756 () array!76992)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76992 (_ BitVec 32)) Bool)

(assert (=> b!1191313 (= res!792474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541756 mask!1564))))

(assert (=> b!1191313 (= lt!541756 (array!76993 (store (arr!37142 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37679 _keys!1208)))))

(declare-fun b!1191314 () Bool)

(declare-fun res!792480 () Bool)

(assert (=> b!1191314 (=> (not res!792480) (not e!677238))))

(assert (=> b!1191314 (= res!792480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191315 () Bool)

(declare-fun e!677239 () Bool)

(assert (=> b!1191315 (= e!677241 e!677239)))

(declare-fun res!792477 () Bool)

(assert (=> b!1191315 (=> res!792477 e!677239)))

(assert (=> b!1191315 (= res!792477 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45277)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19560 0))(
  ( (tuple2!19561 (_1!9790 (_ BitVec 64)) (_2!9790 V!45277)) )
))
(declare-datatypes ((List!26322 0))(
  ( (Nil!26319) (Cons!26318 (h!27527 tuple2!19560) (t!38904 List!26322)) )
))
(declare-datatypes ((ListLongMap!17541 0))(
  ( (ListLongMap!17542 (toList!8786 List!26322)) )
))
(declare-fun lt!541757 () ListLongMap!17541)

(declare-fun minValue!944 () V!45277)

(declare-fun lt!541755 () array!76994)

(declare-fun getCurrentListMapNoExtraKeys!5200 (array!76992 array!76994 (_ BitVec 32) (_ BitVec 32) V!45277 V!45277 (_ BitVec 32) Int) ListLongMap!17541)

(assert (=> b!1191315 (= lt!541757 (getCurrentListMapNoExtraKeys!5200 lt!541756 lt!541755 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3145 (Int (_ BitVec 64)) V!45277)

(assert (=> b!1191315 (= lt!541755 (array!76995 (store (arr!37143 _values!996) i!673 (ValueCellFull!14347 (dynLambda!3145 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37680 _values!996)))))

(declare-fun lt!541753 () ListLongMap!17541)

(assert (=> b!1191315 (= lt!541753 (getCurrentListMapNoExtraKeys!5200 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191316 () Bool)

(declare-fun mapRes!46997 () Bool)

(assert (=> b!1191316 (= e!677244 (and e!677243 mapRes!46997))))

(declare-fun condMapEmpty!46997 () Bool)

(declare-fun mapDefault!46997 () ValueCell!14347)

