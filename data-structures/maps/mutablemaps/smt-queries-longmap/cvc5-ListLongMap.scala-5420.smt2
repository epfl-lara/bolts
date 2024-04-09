; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72332 () Bool)

(assert start!72332)

(declare-fun b!837563 () Bool)

(declare-fun e!467522 () Bool)

(assert (=> b!837563 (= e!467522 false)))

(declare-fun lt!380544 () Bool)

(declare-datatypes ((array!46970 0))(
  ( (array!46971 (arr!22512 (Array (_ BitVec 32) (_ BitVec 64))) (size!22953 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46970)

(declare-datatypes ((List!16088 0))(
  ( (Nil!16085) (Cons!16084 (h!17215 (_ BitVec 64)) (t!22467 List!16088)) )
))
(declare-fun arrayNoDuplicates!0 (array!46970 (_ BitVec 32) List!16088) Bool)

(assert (=> b!837563 (= lt!380544 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16085))))

(declare-fun b!837564 () Bool)

(declare-fun e!467523 () Bool)

(declare-fun e!467526 () Bool)

(declare-fun mapRes!24632 () Bool)

(assert (=> b!837564 (= e!467523 (and e!467526 mapRes!24632))))

(declare-fun condMapEmpty!24632 () Bool)

(declare-datatypes ((V!25521 0))(
  ( (V!25522 (val!7725 Int)) )
))
(declare-datatypes ((ValueCell!7238 0))(
  ( (ValueCellFull!7238 (v!10146 V!25521)) (EmptyCell!7238) )
))
(declare-datatypes ((array!46972 0))(
  ( (array!46973 (arr!22513 (Array (_ BitVec 32) ValueCell!7238)) (size!22954 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46972)

(declare-fun mapDefault!24632 () ValueCell!7238)

