; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69888 () Bool)

(assert start!69888)

(declare-fun b!812181 () Bool)

(declare-fun e!449851 () Bool)

(declare-fun e!449852 () Bool)

(declare-fun mapRes!22600 () Bool)

(assert (=> b!812181 (= e!449851 (and e!449852 mapRes!22600))))

(declare-fun condMapEmpty!22600 () Bool)

(declare-datatypes ((V!23691 0))(
  ( (V!23692 (val!7056 Int)) )
))
(declare-datatypes ((ValueCell!6593 0))(
  ( (ValueCellFull!6593 (v!9479 V!23691)) (EmptyCell!6593) )
))
(declare-datatypes ((array!44236 0))(
  ( (array!44237 (arr!21176 (Array (_ BitVec 32) ValueCell!6593)) (size!21597 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44236)

(declare-fun mapDefault!22600 () ValueCell!6593)

