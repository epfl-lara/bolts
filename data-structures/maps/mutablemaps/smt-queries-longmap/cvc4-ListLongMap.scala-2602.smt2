; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39442 () Bool)

(assert start!39442)

(declare-fun b_free!9701 () Bool)

(declare-fun b_next!9701 () Bool)

(assert (=> start!39442 (= b_free!9701 (not b_next!9701))))

(declare-fun tp!34631 () Bool)

(declare-fun b_and!17295 () Bool)

(assert (=> start!39442 (= tp!34631 b_and!17295)))

(declare-fun b!419772 () Bool)

(declare-fun e!250113 () Bool)

(declare-fun e!250114 () Bool)

(assert (=> b!419772 (= e!250113 e!250114)))

(declare-fun res!244860 () Bool)

(assert (=> b!419772 (=> (not res!244860) (not e!250114))))

(declare-datatypes ((array!25537 0))(
  ( (array!25538 (arr!12215 (Array (_ BitVec 32) (_ BitVec 64))) (size!12567 (_ BitVec 32))) )
))
(declare-fun lt!192605 () array!25537)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25537 (_ BitVec 32)) Bool)

(assert (=> b!419772 (= res!244860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192605 mask!1025))))

(declare-fun _keys!709 () array!25537)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419772 (= lt!192605 (array!25538 (store (arr!12215 _keys!709) i!563 k!794) (size!12567 _keys!709)))))

(declare-fun b!419773 () Bool)

(declare-fun e!250107 () Bool)

(declare-fun e!250106 () Bool)

(declare-fun mapRes!17901 () Bool)

(assert (=> b!419773 (= e!250107 (and e!250106 mapRes!17901))))

(declare-fun condMapEmpty!17901 () Bool)

(declare-datatypes ((V!15575 0))(
  ( (V!15576 (val!5471 Int)) )
))
(declare-datatypes ((ValueCell!5083 0))(
  ( (ValueCellFull!5083 (v!7714 V!15575)) (EmptyCell!5083) )
))
(declare-datatypes ((array!25539 0))(
  ( (array!25540 (arr!12216 (Array (_ BitVec 32) ValueCell!5083)) (size!12568 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25539)

(declare-fun mapDefault!17901 () ValueCell!5083)

