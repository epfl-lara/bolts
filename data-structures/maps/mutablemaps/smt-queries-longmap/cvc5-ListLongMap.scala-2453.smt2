; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38544 () Bool)

(assert start!38544)

(declare-fun b!398153 () Bool)

(declare-fun e!240671 () Bool)

(declare-fun e!240668 () Bool)

(declare-fun mapRes!16554 () Bool)

(assert (=> b!398153 (= e!240671 (and e!240668 mapRes!16554))))

(declare-fun condMapEmpty!16554 () Bool)

(declare-datatypes ((V!14379 0))(
  ( (V!14380 (val!5022 Int)) )
))
(declare-datatypes ((ValueCell!4634 0))(
  ( (ValueCellFull!4634 (v!7265 V!14379)) (EmptyCell!4634) )
))
(declare-datatypes ((array!23791 0))(
  ( (array!23792 (arr!11342 (Array (_ BitVec 32) ValueCell!4634)) (size!11694 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23791)

(declare-fun mapDefault!16554 () ValueCell!4634)

