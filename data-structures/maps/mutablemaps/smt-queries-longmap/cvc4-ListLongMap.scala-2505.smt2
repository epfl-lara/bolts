; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38860 () Bool)

(assert start!38860)

(declare-fun b!405611 () Bool)

(declare-fun res!234244 () Bool)

(declare-fun e!243837 () Bool)

(assert (=> b!405611 (=> (not res!234244) (not e!243837))))

(declare-datatypes ((array!24399 0))(
  ( (array!24400 (arr!11646 (Array (_ BitVec 32) (_ BitVec 64))) (size!11998 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24399)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24399 (_ BitVec 32)) Bool)

(assert (=> b!405611 (= res!234244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405612 () Bool)

(declare-fun e!243840 () Bool)

(declare-fun e!243836 () Bool)

(declare-fun mapRes!17028 () Bool)

(assert (=> b!405612 (= e!243840 (and e!243836 mapRes!17028))))

(declare-fun condMapEmpty!17028 () Bool)

(declare-datatypes ((V!14799 0))(
  ( (V!14800 (val!5180 Int)) )
))
(declare-datatypes ((ValueCell!4792 0))(
  ( (ValueCellFull!4792 (v!7423 V!14799)) (EmptyCell!4792) )
))
(declare-datatypes ((array!24401 0))(
  ( (array!24402 (arr!11647 (Array (_ BitVec 32) ValueCell!4792)) (size!11999 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24401)

(declare-fun mapDefault!17028 () ValueCell!4792)

