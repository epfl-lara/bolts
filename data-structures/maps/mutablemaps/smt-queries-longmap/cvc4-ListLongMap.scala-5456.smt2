; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72552 () Bool)

(assert start!72552)

(declare-fun b_free!13709 () Bool)

(declare-fun b_next!13709 () Bool)

(assert (=> start!72552 (= b_free!13709 (not b_next!13709))))

(declare-fun tp!48227 () Bool)

(declare-fun b_and!22813 () Bool)

(assert (=> start!72552 (= tp!48227 b_and!22813)))

(declare-fun b!841487 () Bool)

(declare-fun e!469443 () Bool)

(declare-fun e!469446 () Bool)

(declare-fun mapRes!24962 () Bool)

(assert (=> b!841487 (= e!469443 (and e!469446 mapRes!24962))))

(declare-fun condMapEmpty!24962 () Bool)

(declare-datatypes ((V!25813 0))(
  ( (V!25814 (val!7835 Int)) )
))
(declare-datatypes ((ValueCell!7348 0))(
  ( (ValueCellFull!7348 (v!10256 V!25813)) (EmptyCell!7348) )
))
(declare-datatypes ((array!47396 0))(
  ( (array!47397 (arr!22725 (Array (_ BitVec 32) ValueCell!7348)) (size!23166 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47396)

(declare-fun mapDefault!24962 () ValueCell!7348)

