; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99862 () Bool)

(assert start!99862)

(declare-fun b_free!25405 () Bool)

(declare-fun b_next!25405 () Bool)

(assert (=> start!99862 (= b_free!25405 (not b_next!25405))))

(declare-fun tp!88930 () Bool)

(declare-fun b_and!41691 () Bool)

(assert (=> start!99862 (= tp!88930 b_and!41691)))

(declare-fun res!789068 () Bool)

(declare-fun e!674822 () Bool)

(assert (=> start!99862 (=> (not res!789068) (not e!674822))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76638 0))(
  ( (array!76639 (arr!36965 (Array (_ BitVec 32) (_ BitVec 64))) (size!37502 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76638)

(assert (=> start!99862 (= res!789068 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37502 _keys!1208))))))

(assert (=> start!99862 e!674822))

(declare-fun tp_is_empty!29935 () Bool)

(assert (=> start!99862 tp_is_empty!29935))

(declare-fun array_inv!28088 (array!76638) Bool)

(assert (=> start!99862 (array_inv!28088 _keys!1208)))

(assert (=> start!99862 true))

(assert (=> start!99862 tp!88930))

(declare-datatypes ((V!45041 0))(
  ( (V!45042 (val!15024 Int)) )
))
(declare-datatypes ((ValueCell!14258 0))(
  ( (ValueCellFull!14258 (v!17663 V!45041)) (EmptyCell!14258) )
))
(declare-datatypes ((array!76640 0))(
  ( (array!76641 (arr!36966 (Array (_ BitVec 32) ValueCell!14258)) (size!37503 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76640)

(declare-fun e!674830 () Bool)

(declare-fun array_inv!28089 (array!76640) Bool)

(assert (=> start!99862 (and (array_inv!28089 _values!996) e!674830)))

(declare-fun b!1186777 () Bool)

(declare-fun res!789066 () Bool)

(assert (=> b!1186777 (=> (not res!789066) (not e!674822))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186777 (= res!789066 (validMask!0 mask!1564))))

(declare-fun b!1186778 () Bool)

(declare-datatypes ((Unit!39270 0))(
  ( (Unit!39271) )
))
(declare-fun e!674831 () Unit!39270)

(declare-fun Unit!39272 () Unit!39270)

(assert (=> b!1186778 (= e!674831 Unit!39272)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!539253 () Unit!39270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76638 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39270)

(assert (=> b!1186778 (= lt!539253 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186778 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539252 () Unit!39270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76638 (_ BitVec 32) (_ BitVec 32)) Unit!39270)

(assert (=> b!1186778 (= lt!539252 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26170 0))(
  ( (Nil!26167) (Cons!26166 (h!27375 (_ BitVec 64)) (t!38574 List!26170)) )
))
(declare-fun arrayNoDuplicates!0 (array!76638 (_ BitVec 32) List!26170) Bool)

(assert (=> b!1186778 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26167)))

(declare-fun lt!539247 () Unit!39270)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76638 (_ BitVec 64) (_ BitVec 32) List!26170) Unit!39270)

(assert (=> b!1186778 (= lt!539247 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26167))))

(assert (=> b!1186778 false))

(declare-fun b!1186779 () Bool)

(declare-fun e!674825 () Bool)

(declare-fun e!674829 () Bool)

(assert (=> b!1186779 (= e!674825 (not e!674829))))

(declare-fun res!789069 () Bool)

(assert (=> b!1186779 (=> res!789069 e!674829)))

(assert (=> b!1186779 (= res!789069 (bvsgt from!1455 i!673))))

(assert (=> b!1186779 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539245 () Unit!39270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76638 (_ BitVec 64) (_ BitVec 32)) Unit!39270)

(assert (=> b!1186779 (= lt!539245 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186780 () Bool)

(declare-fun e!674833 () Bool)

(declare-fun mapRes!46730 () Bool)

(assert (=> b!1186780 (= e!674830 (and e!674833 mapRes!46730))))

(declare-fun condMapEmpty!46730 () Bool)

(declare-fun mapDefault!46730 () ValueCell!14258)

