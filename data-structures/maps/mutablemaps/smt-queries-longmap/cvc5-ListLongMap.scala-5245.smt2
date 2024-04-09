; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70594 () Bool)

(assert start!70594)

(declare-fun b_free!12877 () Bool)

(declare-fun b_next!12877 () Bool)

(assert (=> start!70594 (= b_free!12877 (not b_next!12877))))

(declare-fun tp!45367 () Bool)

(declare-fun b_and!21737 () Bool)

(assert (=> start!70594 (= tp!45367 b_and!21737)))

(declare-fun b!819632 () Bool)

(declare-fun e!455273 () Bool)

(declare-fun e!455269 () Bool)

(declare-fun mapRes!23482 () Bool)

(assert (=> b!819632 (= e!455273 (and e!455269 mapRes!23482))))

(declare-fun condMapEmpty!23482 () Bool)

(declare-datatypes ((V!24451 0))(
  ( (V!24452 (val!7341 Int)) )
))
(declare-datatypes ((ValueCell!6878 0))(
  ( (ValueCellFull!6878 (v!9767 V!24451)) (EmptyCell!6878) )
))
(declare-datatypes ((array!45340 0))(
  ( (array!45341 (arr!21719 (Array (_ BitVec 32) ValueCell!6878)) (size!22140 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45340)

(declare-fun mapDefault!23482 () ValueCell!6878)

