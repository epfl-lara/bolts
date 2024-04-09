; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38530 () Bool)

(assert start!38530)

(declare-fun b!397880 () Bool)

(declare-fun res!228654 () Bool)

(declare-fun e!240544 () Bool)

(assert (=> b!397880 (=> (not res!228654) (not e!240544))))

(declare-datatypes ((array!23765 0))(
  ( (array!23766 (arr!11329 (Array (_ BitVec 32) (_ BitVec 64))) (size!11681 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23765)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23765 (_ BitVec 32)) Bool)

(assert (=> b!397880 (= res!228654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397881 () Bool)

(declare-fun res!228646 () Bool)

(assert (=> b!397881 (=> (not res!228646) (not e!240544))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397881 (= res!228646 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397882 () Bool)

(declare-fun res!228650 () Bool)

(assert (=> b!397882 (=> (not res!228650) (not e!240544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397882 (= res!228650 (validKeyInArray!0 k!794))))

(declare-fun b!397883 () Bool)

(declare-fun e!240546 () Bool)

(declare-fun e!240542 () Bool)

(declare-fun mapRes!16533 () Bool)

(assert (=> b!397883 (= e!240546 (and e!240542 mapRes!16533))))

(declare-fun condMapEmpty!16533 () Bool)

(declare-datatypes ((V!14359 0))(
  ( (V!14360 (val!5015 Int)) )
))
(declare-datatypes ((ValueCell!4627 0))(
  ( (ValueCellFull!4627 (v!7258 V!14359)) (EmptyCell!4627) )
))
(declare-datatypes ((array!23767 0))(
  ( (array!23768 (arr!11330 (Array (_ BitVec 32) ValueCell!4627)) (size!11682 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23767)

(declare-fun mapDefault!16533 () ValueCell!4627)

