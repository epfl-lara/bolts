; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38896 () Bool)

(assert start!38896)

(declare-fun b!406313 () Bool)

(declare-fun res!234792 () Bool)

(declare-fun e!244163 () Bool)

(assert (=> b!406313 (=> (not res!234792) (not e!244163))))

(declare-datatypes ((array!24471 0))(
  ( (array!24472 (arr!11682 (Array (_ BitVec 32) (_ BitVec 64))) (size!12034 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24471)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406313 (= res!234792 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406314 () Bool)

(declare-fun e!244161 () Bool)

(assert (=> b!406314 (= e!244163 e!244161)))

(declare-fun res!234788 () Bool)

(assert (=> b!406314 (=> (not res!234788) (not e!244161))))

(declare-fun lt!188463 () array!24471)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24471 (_ BitVec 32)) Bool)

(assert (=> b!406314 (= res!234788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188463 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406314 (= lt!188463 (array!24472 (store (arr!11682 _keys!709) i!563 k!794) (size!12034 _keys!709)))))

(declare-fun b!406315 () Bool)

(declare-fun res!234785 () Bool)

(assert (=> b!406315 (=> (not res!234785) (not e!244163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406315 (= res!234785 (validKeyInArray!0 k!794))))

(declare-fun b!406316 () Bool)

(declare-fun e!244165 () Bool)

(declare-fun e!244164 () Bool)

(declare-fun mapRes!17082 () Bool)

(assert (=> b!406316 (= e!244165 (and e!244164 mapRes!17082))))

(declare-fun condMapEmpty!17082 () Bool)

(declare-datatypes ((V!14847 0))(
  ( (V!14848 (val!5198 Int)) )
))
(declare-datatypes ((ValueCell!4810 0))(
  ( (ValueCellFull!4810 (v!7441 V!14847)) (EmptyCell!4810) )
))
(declare-datatypes ((array!24473 0))(
  ( (array!24474 (arr!11683 (Array (_ BitVec 32) ValueCell!4810)) (size!12035 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24473)

(declare-fun mapDefault!17082 () ValueCell!4810)

