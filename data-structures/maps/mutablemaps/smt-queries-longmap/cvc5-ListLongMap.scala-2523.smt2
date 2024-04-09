; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38964 () Bool)

(assert start!38964)

(declare-fun mapIsEmpty!17184 () Bool)

(declare-fun mapRes!17184 () Bool)

(assert (=> mapIsEmpty!17184 mapRes!17184))

(declare-fun b!407639 () Bool)

(declare-fun res!235808 () Bool)

(declare-fun e!244773 () Bool)

(assert (=> b!407639 (=> (not res!235808) (not e!244773))))

(declare-datatypes ((array!24605 0))(
  ( (array!24606 (arr!11749 (Array (_ BitVec 32) (_ BitVec 64))) (size!12101 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24605)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407639 (= res!235808 (or (= (select (arr!11749 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11749 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407640 () Bool)

(declare-fun e!244777 () Bool)

(declare-fun e!244775 () Bool)

(assert (=> b!407640 (= e!244777 (and e!244775 mapRes!17184))))

(declare-fun condMapEmpty!17184 () Bool)

(declare-datatypes ((V!14939 0))(
  ( (V!14940 (val!5232 Int)) )
))
(declare-datatypes ((ValueCell!4844 0))(
  ( (ValueCellFull!4844 (v!7475 V!14939)) (EmptyCell!4844) )
))
(declare-datatypes ((array!24607 0))(
  ( (array!24608 (arr!11750 (Array (_ BitVec 32) ValueCell!4844)) (size!12102 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24607)

(declare-fun mapDefault!17184 () ValueCell!4844)

