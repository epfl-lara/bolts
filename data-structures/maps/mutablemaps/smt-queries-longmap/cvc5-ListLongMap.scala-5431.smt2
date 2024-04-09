; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72398 () Bool)

(assert start!72398)

(declare-fun b_free!13555 () Bool)

(declare-fun b_next!13555 () Bool)

(assert (=> start!72398 (= b_free!13555 (not b_next!13555))))

(declare-fun tp!47765 () Bool)

(declare-fun b_and!22659 () Bool)

(assert (=> start!72398 (= tp!47765 b_and!22659)))

(declare-fun res!570270 () Bool)

(declare-fun e!468057 () Bool)

(assert (=> start!72398 (=> (not res!570270) (not e!468057))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47094 0))(
  ( (array!47095 (arr!22574 (Array (_ BitVec 32) (_ BitVec 64))) (size!23015 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47094)

(assert (=> start!72398 (= res!570270 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23015 _keys!868))))))

(assert (=> start!72398 e!468057))

(declare-fun tp_is_empty!15421 () Bool)

(assert (=> start!72398 tp_is_empty!15421))

(assert (=> start!72398 true))

(assert (=> start!72398 tp!47765))

(declare-fun array_inv!17960 (array!47094) Bool)

(assert (=> start!72398 (array_inv!17960 _keys!868)))

(declare-datatypes ((V!25609 0))(
  ( (V!25610 (val!7758 Int)) )
))
(declare-datatypes ((ValueCell!7271 0))(
  ( (ValueCellFull!7271 (v!10179 V!25609)) (EmptyCell!7271) )
))
(declare-datatypes ((array!47096 0))(
  ( (array!47097 (arr!22575 (Array (_ BitVec 32) ValueCell!7271)) (size!23016 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47096)

(declare-fun e!468055 () Bool)

(declare-fun array_inv!17961 (array!47096) Bool)

(assert (=> start!72398 (and (array_inv!17961 _values!688) e!468055)))

(declare-fun b!838484 () Bool)

(declare-fun e!468056 () Bool)

(declare-fun mapRes!24731 () Bool)

(assert (=> b!838484 (= e!468055 (and e!468056 mapRes!24731))))

(declare-fun condMapEmpty!24731 () Bool)

(declare-fun mapDefault!24731 () ValueCell!7271)

