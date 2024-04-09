; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39006 () Bool)

(assert start!39006)

(declare-fun b!408458 () Bool)

(declare-fun res!236433 () Bool)

(declare-fun e!245155 () Bool)

(assert (=> b!408458 (=> (not res!236433) (not e!245155))))

(declare-datatypes ((array!24689 0))(
  ( (array!24690 (arr!11791 (Array (_ BitVec 32) (_ BitVec 64))) (size!12143 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24689)

(declare-datatypes ((List!6811 0))(
  ( (Nil!6808) (Cons!6807 (h!7663 (_ BitVec 64)) (t!11993 List!6811)) )
))
(declare-fun arrayNoDuplicates!0 (array!24689 (_ BitVec 32) List!6811) Bool)

(assert (=> b!408458 (= res!236433 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6808))))

(declare-fun b!408459 () Bool)

(declare-fun res!236442 () Bool)

(assert (=> b!408459 (=> (not res!236442) (not e!245155))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408459 (= res!236442 (validKeyInArray!0 k!794))))

(declare-fun b!408460 () Bool)

(declare-fun e!245154 () Bool)

(declare-fun tp_is_empty!10417 () Bool)

(assert (=> b!408460 (= e!245154 tp_is_empty!10417)))

(declare-fun mapIsEmpty!17247 () Bool)

(declare-fun mapRes!17247 () Bool)

(assert (=> mapIsEmpty!17247 mapRes!17247))

(declare-fun b!408461 () Bool)

(declare-fun e!245151 () Bool)

(assert (=> b!408461 (= e!245151 false)))

(declare-fun lt!188792 () Bool)

(declare-fun lt!188793 () array!24689)

(assert (=> b!408461 (= lt!188792 (arrayNoDuplicates!0 lt!188793 #b00000000000000000000000000000000 Nil!6808))))

(declare-fun b!408462 () Bool)

(declare-fun res!236441 () Bool)

(assert (=> b!408462 (=> (not res!236441) (not e!245155))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24689 (_ BitVec 32)) Bool)

(assert (=> b!408462 (= res!236441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408463 () Bool)

(declare-fun res!236439 () Bool)

(assert (=> b!408463 (=> (not res!236439) (not e!245155))))

(declare-fun arrayContainsKey!0 (array!24689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408463 (= res!236439 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!408464 () Bool)

(declare-fun res!236436 () Bool)

(assert (=> b!408464 (=> (not res!236436) (not e!245155))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408464 (= res!236436 (or (= (select (arr!11791 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11791 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408465 () Bool)

(declare-fun res!236440 () Bool)

(assert (=> b!408465 (=> (not res!236440) (not e!245155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408465 (= res!236440 (validMask!0 mask!1025))))

(declare-fun b!408466 () Bool)

(declare-fun e!245153 () Bool)

(assert (=> b!408466 (= e!245153 tp_is_empty!10417)))

(declare-fun b!408467 () Bool)

(assert (=> b!408467 (= e!245155 e!245151)))

(declare-fun res!236438 () Bool)

(assert (=> b!408467 (=> (not res!236438) (not e!245151))))

(assert (=> b!408467 (= res!236438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188793 mask!1025))))

(assert (=> b!408467 (= lt!188793 (array!24690 (store (arr!11791 _keys!709) i!563 k!794) (size!12143 _keys!709)))))

(declare-fun b!408468 () Bool)

(declare-fun e!245152 () Bool)

(assert (=> b!408468 (= e!245152 (and e!245154 mapRes!17247))))

(declare-fun condMapEmpty!17247 () Bool)

(declare-datatypes ((V!14995 0))(
  ( (V!14996 (val!5253 Int)) )
))
(declare-datatypes ((ValueCell!4865 0))(
  ( (ValueCellFull!4865 (v!7496 V!14995)) (EmptyCell!4865) )
))
(declare-datatypes ((array!24691 0))(
  ( (array!24692 (arr!11792 (Array (_ BitVec 32) ValueCell!4865)) (size!12144 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24691)

(declare-fun mapDefault!17247 () ValueCell!4865)

