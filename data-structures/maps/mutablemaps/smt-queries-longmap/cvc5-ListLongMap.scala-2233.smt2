; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36868 () Bool)

(assert start!36868)

(declare-fun b_free!7987 () Bool)

(declare-fun b_next!7987 () Bool)

(assert (=> start!36868 (= b_free!7987 (not b_next!7987))))

(declare-fun tp!28677 () Bool)

(declare-fun b_and!15247 () Bool)

(assert (=> start!36868 (= tp!28677 b_and!15247)))

(declare-fun b!368591 () Bool)

(declare-fun e!225386 () Bool)

(declare-fun e!225388 () Bool)

(declare-fun mapRes!14517 () Bool)

(assert (=> b!368591 (= e!225386 (and e!225388 mapRes!14517))))

(declare-fun condMapEmpty!14517 () Bool)

(declare-datatypes ((V!12619 0))(
  ( (V!12620 (val!4362 Int)) )
))
(declare-datatypes ((ValueCell!3974 0))(
  ( (ValueCellFull!3974 (v!6555 V!12619)) (EmptyCell!3974) )
))
(declare-datatypes ((array!21195 0))(
  ( (array!21196 (arr!10063 (Array (_ BitVec 32) ValueCell!3974)) (size!10415 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21195)

(declare-fun mapDefault!14517 () ValueCell!3974)

