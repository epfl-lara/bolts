; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37202 () Bool)

(assert start!37202)

(declare-fun b_free!8321 () Bool)

(declare-fun b_next!8321 () Bool)

(assert (=> start!37202 (= b_free!8321 (not b_next!8321))))

(declare-fun tp!29679 () Bool)

(declare-fun b_and!15581 () Bool)

(assert (=> start!37202 (= tp!29679 b_and!15581)))

(declare-fun res!212078 () Bool)

(declare-fun e!228746 () Bool)

(assert (=> start!37202 (=> (not res!212078) (not e!228746))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37202 (= res!212078 (validMask!0 mask!970))))

(assert (=> start!37202 e!228746))

(declare-datatypes ((V!13063 0))(
  ( (V!13064 (val!4529 Int)) )
))
(declare-datatypes ((ValueCell!4141 0))(
  ( (ValueCellFull!4141 (v!6722 V!13063)) (EmptyCell!4141) )
))
(declare-datatypes ((array!21837 0))(
  ( (array!21838 (arr!10384 (Array (_ BitVec 32) ValueCell!4141)) (size!10736 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21837)

(declare-fun e!228744 () Bool)

(declare-fun array_inv!7650 (array!21837) Bool)

(assert (=> start!37202 (and (array_inv!7650 _values!506) e!228744)))

(assert (=> start!37202 tp!29679))

(assert (=> start!37202 true))

(declare-fun tp_is_empty!8969 () Bool)

(assert (=> start!37202 tp_is_empty!8969))

(declare-datatypes ((array!21839 0))(
  ( (array!21840 (arr!10385 (Array (_ BitVec 32) (_ BitVec 64))) (size!10737 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21839)

(declare-fun array_inv!7651 (array!21839) Bool)

(assert (=> start!37202 (array_inv!7651 _keys!658)))

(declare-fun b!375462 () Bool)

(declare-fun e!228742 () Bool)

(declare-fun mapRes!15018 () Bool)

(assert (=> b!375462 (= e!228744 (and e!228742 mapRes!15018))))

(declare-fun condMapEmpty!15018 () Bool)

(declare-fun mapDefault!15018 () ValueCell!4141)

