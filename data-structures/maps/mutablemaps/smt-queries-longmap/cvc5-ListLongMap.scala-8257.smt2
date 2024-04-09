; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100526 () Bool)

(assert start!100526)

(declare-fun b_free!25813 () Bool)

(declare-fun b_next!25813 () Bool)

(assert (=> start!100526 (= b_free!25813 (not b_next!25813))))

(declare-fun tp!90430 () Bool)

(declare-fun b_and!42527 () Bool)

(assert (=> start!100526 (= tp!90430 b_and!42527)))

(declare-fun b!1200224 () Bool)

(declare-fun res!799044 () Bool)

(declare-fun e!681654 () Bool)

(assert (=> b!1200224 (=> (not res!799044) (not e!681654))))

(declare-datatypes ((array!77788 0))(
  ( (array!77789 (arr!37535 (Array (_ BitVec 32) (_ BitVec 64))) (size!38072 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77788)

(declare-datatypes ((List!26577 0))(
  ( (Nil!26574) (Cons!26573 (h!27782 (_ BitVec 64)) (t!39377 List!26577)) )
))
(declare-fun arrayNoDuplicates!0 (array!77788 (_ BitVec 32) List!26577) Bool)

(assert (=> b!1200224 (= res!799044 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26574))))

(declare-fun b!1200225 () Bool)

(declare-fun e!681652 () Bool)

(declare-fun tp_is_empty!30517 () Bool)

(assert (=> b!1200225 (= e!681652 tp_is_empty!30517)))

(declare-fun b!1200226 () Bool)

(declare-fun res!799037 () Bool)

(assert (=> b!1200226 (=> (not res!799037) (not e!681654))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200226 (= res!799037 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38072 _keys!1208))))))

(declare-fun b!1200227 () Bool)

(declare-fun res!799045 () Bool)

(assert (=> b!1200227 (=> (not res!799045) (not e!681654))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1200227 (= res!799045 (= (select (arr!37535 _keys!1208) i!673) k!934))))

(declare-fun b!1200228 () Bool)

(declare-fun e!681657 () Bool)

(declare-fun e!681655 () Bool)

(declare-fun mapRes!47618 () Bool)

(assert (=> b!1200228 (= e!681657 (and e!681655 mapRes!47618))))

(declare-fun condMapEmpty!47618 () Bool)

(declare-datatypes ((V!45817 0))(
  ( (V!45818 (val!15315 Int)) )
))
(declare-datatypes ((ValueCell!14549 0))(
  ( (ValueCellFull!14549 (v!17954 V!45817)) (EmptyCell!14549) )
))
(declare-datatypes ((array!77790 0))(
  ( (array!77791 (arr!37536 (Array (_ BitVec 32) ValueCell!14549)) (size!38073 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77790)

(declare-fun mapDefault!47618 () ValueCell!14549)

