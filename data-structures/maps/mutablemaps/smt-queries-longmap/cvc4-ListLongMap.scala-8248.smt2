; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100476 () Bool)

(assert start!100476)

(declare-fun b_free!25763 () Bool)

(declare-fun b_next!25763 () Bool)

(assert (=> start!100476 (= b_free!25763 (not b_next!25763))))

(declare-fun tp!90279 () Bool)

(declare-fun b_and!42427 () Bool)

(assert (=> start!100476 (= tp!90279 b_and!42427)))

(declare-fun mapNonEmpty!47543 () Bool)

(declare-fun mapRes!47543 () Bool)

(declare-fun tp!90280 () Bool)

(declare-fun e!681133 () Bool)

(assert (=> mapNonEmpty!47543 (= mapRes!47543 (and tp!90280 e!681133))))

(declare-datatypes ((V!45749 0))(
  ( (V!45750 (val!15290 Int)) )
))
(declare-datatypes ((ValueCell!14524 0))(
  ( (ValueCellFull!14524 (v!17929 V!45749)) (EmptyCell!14524) )
))
(declare-fun mapValue!47543 () ValueCell!14524)

(declare-fun mapRest!47543 () (Array (_ BitVec 32) ValueCell!14524))

(declare-datatypes ((array!77692 0))(
  ( (array!77693 (arr!37487 (Array (_ BitVec 32) ValueCell!14524)) (size!38024 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77692)

(declare-fun mapKey!47543 () (_ BitVec 32))

(assert (=> mapNonEmpty!47543 (= (arr!37487 _values!996) (store mapRest!47543 mapKey!47543 mapValue!47543))))

(declare-fun b!1199124 () Bool)

(declare-fun res!798216 () Bool)

(declare-fun e!681130 () Bool)

(assert (=> b!1199124 (=> (not res!798216) (not e!681130))))

(declare-datatypes ((array!77694 0))(
  ( (array!77695 (arr!37488 (Array (_ BitVec 32) (_ BitVec 64))) (size!38025 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77694)

(declare-datatypes ((List!26543 0))(
  ( (Nil!26540) (Cons!26539 (h!27748 (_ BitVec 64)) (t!39293 List!26543)) )
))
(declare-fun arrayNoDuplicates!0 (array!77694 (_ BitVec 32) List!26543) Bool)

(assert (=> b!1199124 (= res!798216 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26540))))

(declare-fun b!1199125 () Bool)

(declare-fun e!681128 () Bool)

(declare-fun e!681129 () Bool)

(assert (=> b!1199125 (= e!681128 (not e!681129))))

(declare-fun res!798212 () Bool)

(assert (=> b!1199125 (=> res!798212 e!681129)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199125 (= res!798212 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199125 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39696 0))(
  ( (Unit!39697) )
))
(declare-fun lt!543648 () Unit!39696)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77694 (_ BitVec 64) (_ BitVec 32)) Unit!39696)

(assert (=> b!1199125 (= lt!543648 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1199126 () Bool)

(declare-fun e!681132 () Bool)

(declare-fun e!681131 () Bool)

(assert (=> b!1199126 (= e!681132 (and e!681131 mapRes!47543))))

(declare-fun condMapEmpty!47543 () Bool)

(declare-fun mapDefault!47543 () ValueCell!14524)

