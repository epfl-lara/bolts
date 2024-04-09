; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33438 () Bool)

(assert start!33438)

(declare-fun b!331725 () Bool)

(declare-fun e!203608 () Bool)

(declare-fun e!203606 () Bool)

(declare-fun mapRes!11424 () Bool)

(assert (=> b!331725 (= e!203608 (and e!203606 mapRes!11424))))

(declare-fun condMapEmpty!11424 () Bool)

(declare-datatypes ((V!9903 0))(
  ( (V!9904 (val!3392 Int)) )
))
(declare-datatypes ((ValueCell!3004 0))(
  ( (ValueCellFull!3004 (v!5546 V!9903)) (EmptyCell!3004) )
))
(declare-datatypes ((array!16987 0))(
  ( (array!16988 (arr!8026 (Array (_ BitVec 32) ValueCell!3004)) (size!8378 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16987)

(declare-fun mapDefault!11424 () ValueCell!3004)

