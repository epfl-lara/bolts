; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38946 () Bool)

(assert start!38946)

(declare-fun b!407288 () Bool)

(declare-fun e!244610 () Bool)

(assert (=> b!407288 (= e!244610 false)))

(declare-fun lt!188612 () Bool)

(declare-datatypes ((array!24569 0))(
  ( (array!24570 (arr!11731 (Array (_ BitVec 32) (_ BitVec 64))) (size!12083 (_ BitVec 32))) )
))
(declare-fun lt!188613 () array!24569)

(declare-datatypes ((List!6783 0))(
  ( (Nil!6780) (Cons!6779 (h!7635 (_ BitVec 64)) (t!11965 List!6783)) )
))
(declare-fun arrayNoDuplicates!0 (array!24569 (_ BitVec 32) List!6783) Bool)

(assert (=> b!407288 (= lt!188612 (arrayNoDuplicates!0 lt!188613 #b00000000000000000000000000000000 Nil!6780))))

(declare-fun mapNonEmpty!17157 () Bool)

(declare-fun mapRes!17157 () Bool)

(declare-fun tp!33276 () Bool)

(declare-fun e!244615 () Bool)

(assert (=> mapNonEmpty!17157 (= mapRes!17157 (and tp!33276 e!244615))))

(declare-datatypes ((V!14915 0))(
  ( (V!14916 (val!5223 Int)) )
))
(declare-datatypes ((ValueCell!4835 0))(
  ( (ValueCellFull!4835 (v!7466 V!14915)) (EmptyCell!4835) )
))
(declare-fun mapValue!17157 () ValueCell!4835)

(declare-fun mapKey!17157 () (_ BitVec 32))

(declare-datatypes ((array!24571 0))(
  ( (array!24572 (arr!11732 (Array (_ BitVec 32) ValueCell!4835)) (size!12084 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24571)

(declare-fun mapRest!17157 () (Array (_ BitVec 32) ValueCell!4835))

(assert (=> mapNonEmpty!17157 (= (arr!11732 _values!549) (store mapRest!17157 mapKey!17157 mapValue!17157))))

(declare-fun b!407290 () Bool)

(declare-fun e!244613 () Bool)

(assert (=> b!407290 (= e!244613 e!244610)))

(declare-fun res!235541 () Bool)

(assert (=> b!407290 (=> (not res!235541) (not e!244610))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24569 (_ BitVec 32)) Bool)

(assert (=> b!407290 (= res!235541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188613 mask!1025))))

(declare-fun _keys!709 () array!24569)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407290 (= lt!188613 (array!24570 (store (arr!11731 _keys!709) i!563 k!794) (size!12083 _keys!709)))))

(declare-fun b!407291 () Bool)

(declare-fun e!244614 () Bool)

(declare-fun e!244611 () Bool)

(assert (=> b!407291 (= e!244614 (and e!244611 mapRes!17157))))

(declare-fun condMapEmpty!17157 () Bool)

(declare-fun mapDefault!17157 () ValueCell!4835)

