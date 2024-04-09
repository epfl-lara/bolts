; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71454 () Bool)

(assert start!71454)

(declare-fun b_free!13475 () Bool)

(declare-fun b_next!13475 () Bool)

(assert (=> start!71454 (= b_free!13475 (not b_next!13475))))

(declare-fun tp!47206 () Bool)

(declare-fun b_and!22499 () Bool)

(assert (=> start!71454 (= tp!47206 b_and!22499)))

(declare-fun mapIsEmpty!24424 () Bool)

(declare-fun mapRes!24424 () Bool)

(assert (=> mapIsEmpty!24424 mapRes!24424))

(declare-fun b!829394 () Bool)

(declare-fun e!462354 () Bool)

(declare-fun e!462353 () Bool)

(assert (=> b!829394 (= e!462354 (and e!462353 mapRes!24424))))

(declare-fun condMapEmpty!24424 () Bool)

(declare-datatypes ((V!25247 0))(
  ( (V!25248 (val!7640 Int)) )
))
(declare-datatypes ((ValueCell!7177 0))(
  ( (ValueCellFull!7177 (v!10076 V!25247)) (EmptyCell!7177) )
))
(declare-datatypes ((array!46514 0))(
  ( (array!46515 (arr!22291 (Array (_ BitVec 32) ValueCell!7177)) (size!22712 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46514)

(declare-fun mapDefault!24424 () ValueCell!7177)

