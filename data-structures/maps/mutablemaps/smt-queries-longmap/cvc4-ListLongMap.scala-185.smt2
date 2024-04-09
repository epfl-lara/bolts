; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3694 () Bool)

(assert start!3694)

(declare-fun mapIsEmpty!1087 () Bool)

(declare-fun mapRes!1087 () Bool)

(assert (=> mapIsEmpty!1087 mapRes!1087))

(declare-fun b!25893 () Bool)

(declare-fun e!16784 () Bool)

(declare-fun e!16786 () Bool)

(assert (=> b!25893 (= e!16784 (and e!16786 mapRes!1087))))

(declare-fun condMapEmpty!1087 () Bool)

(declare-datatypes ((V!1231 0))(
  ( (V!1232 (val!554 Int)) )
))
(declare-datatypes ((ValueCell!328 0))(
  ( (ValueCellFull!328 (v!1639 V!1231)) (EmptyCell!328) )
))
(declare-datatypes ((array!1345 0))(
  ( (array!1346 (arr!634 (Array (_ BitVec 32) ValueCell!328)) (size!735 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1345)

(declare-fun mapDefault!1087 () ValueCell!328)

