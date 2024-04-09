; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72336 () Bool)

(assert start!72336)

(declare-fun b!837605 () Bool)

(declare-fun res!569741 () Bool)

(declare-fun e!467554 () Bool)

(assert (=> b!837605 (=> (not res!569741) (not e!467554))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837605 (= res!569741 (validMask!0 mask!1196))))

(declare-fun b!837606 () Bool)

(assert (=> b!837606 (= e!467554 false)))

(declare-fun lt!380550 () Bool)

(declare-datatypes ((array!46978 0))(
  ( (array!46979 (arr!22516 (Array (_ BitVec 32) (_ BitVec 64))) (size!22957 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46978)

(declare-datatypes ((List!16090 0))(
  ( (Nil!16087) (Cons!16086 (h!17217 (_ BitVec 64)) (t!22469 List!16090)) )
))
(declare-fun arrayNoDuplicates!0 (array!46978 (_ BitVec 32) List!16090) Bool)

(assert (=> b!837606 (= lt!380550 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16087))))

(declare-fun mapIsEmpty!24638 () Bool)

(declare-fun mapRes!24638 () Bool)

(assert (=> mapIsEmpty!24638 mapRes!24638))

(declare-fun b!837607 () Bool)

(declare-fun e!467552 () Bool)

(declare-fun e!467556 () Bool)

(assert (=> b!837607 (= e!467552 (and e!467556 mapRes!24638))))

(declare-fun condMapEmpty!24638 () Bool)

(declare-datatypes ((V!25525 0))(
  ( (V!25526 (val!7727 Int)) )
))
(declare-datatypes ((ValueCell!7240 0))(
  ( (ValueCellFull!7240 (v!10148 V!25525)) (EmptyCell!7240) )
))
(declare-datatypes ((array!46980 0))(
  ( (array!46981 (arr!22517 (Array (_ BitVec 32) ValueCell!7240)) (size!22958 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46980)

(declare-fun mapDefault!24638 () ValueCell!7240)

