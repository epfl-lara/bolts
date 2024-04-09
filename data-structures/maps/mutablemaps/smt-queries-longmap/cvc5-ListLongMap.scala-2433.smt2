; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38376 () Bool)

(assert start!38376)

(declare-fun b!395622 () Bool)

(declare-fun e!239477 () Bool)

(declare-fun e!239479 () Bool)

(declare-fun mapRes!16365 () Bool)

(assert (=> b!395622 (= e!239477 (and e!239479 mapRes!16365))))

(declare-fun condMapEmpty!16365 () Bool)

(declare-datatypes ((V!14219 0))(
  ( (V!14220 (val!4962 Int)) )
))
(declare-datatypes ((ValueCell!4574 0))(
  ( (ValueCellFull!4574 (v!7204 V!14219)) (EmptyCell!4574) )
))
(declare-datatypes ((array!23555 0))(
  ( (array!23556 (arr!11227 (Array (_ BitVec 32) ValueCell!4574)) (size!11579 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23555)

(declare-fun mapDefault!16365 () ValueCell!4574)

