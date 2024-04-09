; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38938 () Bool)

(assert start!38938)

(declare-fun b!407132 () Bool)

(declare-fun res!235413 () Bool)

(declare-fun e!244539 () Bool)

(assert (=> b!407132 (=> (not res!235413) (not e!244539))))

(declare-datatypes ((array!24553 0))(
  ( (array!24554 (arr!11723 (Array (_ BitVec 32) (_ BitVec 64))) (size!12075 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24553)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407132 (= res!235413 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407133 () Bool)

(declare-fun e!244541 () Bool)

(declare-fun tp_is_empty!10349 () Bool)

(assert (=> b!407133 (= e!244541 tp_is_empty!10349)))

(declare-fun b!407134 () Bool)

(declare-fun e!244540 () Bool)

(assert (=> b!407134 (= e!244539 e!244540)))

(declare-fun res!235417 () Bool)

(assert (=> b!407134 (=> (not res!235417) (not e!244540))))

(declare-fun lt!188589 () array!24553)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24553 (_ BitVec 32)) Bool)

(assert (=> b!407134 (= res!235417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188589 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407134 (= lt!188589 (array!24554 (store (arr!11723 _keys!709) i!563 k!794) (size!12075 _keys!709)))))

(declare-fun b!407135 () Bool)

(declare-fun res!235420 () Bool)

(assert (=> b!407135 (=> (not res!235420) (not e!244539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407135 (= res!235420 (validMask!0 mask!1025))))

(declare-fun b!407136 () Bool)

(declare-fun e!244542 () Bool)

(assert (=> b!407136 (= e!244542 tp_is_empty!10349)))

(declare-fun b!407138 () Bool)

(declare-fun res!235415 () Bool)

(assert (=> b!407138 (=> (not res!235415) (not e!244539))))

(assert (=> b!407138 (= res!235415 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12075 _keys!709))))))

(declare-fun mapIsEmpty!17145 () Bool)

(declare-fun mapRes!17145 () Bool)

(assert (=> mapIsEmpty!17145 mapRes!17145))

(declare-fun b!407139 () Bool)

(declare-fun res!235421 () Bool)

(assert (=> b!407139 (=> (not res!235421) (not e!244539))))

(assert (=> b!407139 (= res!235421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407140 () Bool)

(declare-fun e!244543 () Bool)

(assert (=> b!407140 (= e!244543 (and e!244541 mapRes!17145))))

(declare-fun condMapEmpty!17145 () Bool)

(declare-datatypes ((V!14903 0))(
  ( (V!14904 (val!5219 Int)) )
))
(declare-datatypes ((ValueCell!4831 0))(
  ( (ValueCellFull!4831 (v!7462 V!14903)) (EmptyCell!4831) )
))
(declare-datatypes ((array!24555 0))(
  ( (array!24556 (arr!11724 (Array (_ BitVec 32) ValueCell!4831)) (size!12076 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24555)

(declare-fun mapDefault!17145 () ValueCell!4831)

