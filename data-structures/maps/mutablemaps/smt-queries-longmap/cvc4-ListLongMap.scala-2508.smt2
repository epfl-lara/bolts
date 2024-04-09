; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38878 () Bool)

(assert start!38878)

(declare-fun mapNonEmpty!17055 () Bool)

(declare-fun mapRes!17055 () Bool)

(declare-fun tp!33174 () Bool)

(declare-fun e!244000 () Bool)

(assert (=> mapNonEmpty!17055 (= mapRes!17055 (and tp!33174 e!244000))))

(declare-fun mapKey!17055 () (_ BitVec 32))

(declare-datatypes ((V!14823 0))(
  ( (V!14824 (val!5189 Int)) )
))
(declare-datatypes ((ValueCell!4801 0))(
  ( (ValueCellFull!4801 (v!7432 V!14823)) (EmptyCell!4801) )
))
(declare-datatypes ((array!24435 0))(
  ( (array!24436 (arr!11664 (Array (_ BitVec 32) ValueCell!4801)) (size!12016 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24435)

(declare-fun mapRest!17055 () (Array (_ BitVec 32) ValueCell!4801))

(declare-fun mapValue!17055 () ValueCell!4801)

(assert (=> mapNonEmpty!17055 (= (arr!11664 _values!549) (store mapRest!17055 mapKey!17055 mapValue!17055))))

(declare-fun b!405962 () Bool)

(declare-fun res!234516 () Bool)

(declare-fun e!243998 () Bool)

(assert (=> b!405962 (=> (not res!234516) (not e!243998))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24437 0))(
  ( (array!24438 (arr!11665 (Array (_ BitVec 32) (_ BitVec 64))) (size!12017 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24437)

(assert (=> b!405962 (= res!234516 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12017 _keys!709))))))

(declare-fun b!405963 () Bool)

(declare-fun e!244001 () Bool)

(declare-fun e!244003 () Bool)

(assert (=> b!405963 (= e!244001 (and e!244003 mapRes!17055))))

(declare-fun condMapEmpty!17055 () Bool)

(declare-fun mapDefault!17055 () ValueCell!4801)

