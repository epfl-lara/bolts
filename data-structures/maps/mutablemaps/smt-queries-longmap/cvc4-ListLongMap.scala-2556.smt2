; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39166 () Bool)

(assert start!39166)

(declare-fun b_free!9425 () Bool)

(declare-fun b_next!9425 () Bool)

(assert (=> start!39166 (= b_free!9425 (not b_next!9425))))

(declare-fun tp!33803 () Bool)

(declare-fun b_and!16829 () Bool)

(assert (=> start!39166 (= tp!33803 b_and!16829)))

(declare-fun b!411972 () Bool)

(declare-fun e!246594 () Bool)

(declare-fun e!246595 () Bool)

(assert (=> b!411972 (= e!246594 e!246595)))

(declare-fun res!239236 () Bool)

(assert (=> b!411972 (=> (not res!239236) (not e!246595))))

(declare-datatypes ((array!24995 0))(
  ( (array!24996 (arr!11944 (Array (_ BitVec 32) (_ BitVec 64))) (size!12296 (_ BitVec 32))) )
))
(declare-fun lt!189390 () array!24995)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24995 (_ BitVec 32)) Bool)

(assert (=> b!411972 (= res!239236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189390 mask!1025))))

(declare-fun _keys!709 () array!24995)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411972 (= lt!189390 (array!24996 (store (arr!11944 _keys!709) i!563 k!794) (size!12296 _keys!709)))))

(declare-fun b!411973 () Bool)

(declare-fun e!246593 () Bool)

(declare-fun e!246590 () Bool)

(declare-fun mapRes!17487 () Bool)

(assert (=> b!411973 (= e!246593 (and e!246590 mapRes!17487))))

(declare-fun condMapEmpty!17487 () Bool)

(declare-datatypes ((V!15207 0))(
  ( (V!15208 (val!5333 Int)) )
))
(declare-datatypes ((ValueCell!4945 0))(
  ( (ValueCellFull!4945 (v!7576 V!15207)) (EmptyCell!4945) )
))
(declare-datatypes ((array!24997 0))(
  ( (array!24998 (arr!11945 (Array (_ BitVec 32) ValueCell!4945)) (size!12297 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24997)

(declare-fun mapDefault!17487 () ValueCell!4945)

