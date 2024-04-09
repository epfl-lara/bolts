; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38962 () Bool)

(assert start!38962)

(declare-fun b!407600 () Bool)

(declare-fun res!235776 () Bool)

(declare-fun e!244757 () Bool)

(assert (=> b!407600 (=> (not res!235776) (not e!244757))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24601 0))(
  ( (array!24602 (arr!11747 (Array (_ BitVec 32) (_ BitVec 64))) (size!12099 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24601)

(assert (=> b!407600 (= res!235776 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12099 _keys!709))))))

(declare-fun b!407601 () Bool)

(declare-fun res!235781 () Bool)

(assert (=> b!407601 (=> (not res!235781) (not e!244757))))

(declare-datatypes ((List!6791 0))(
  ( (Nil!6788) (Cons!6787 (h!7643 (_ BitVec 64)) (t!11973 List!6791)) )
))
(declare-fun arrayNoDuplicates!0 (array!24601 (_ BitVec 32) List!6791) Bool)

(assert (=> b!407601 (= res!235781 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6788))))

(declare-fun b!407602 () Bool)

(declare-fun res!235774 () Bool)

(assert (=> b!407602 (=> (not res!235774) (not e!244757))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407602 (= res!235774 (validMask!0 mask!1025))))

(declare-fun b!407603 () Bool)

(declare-fun e!244756 () Bool)

(declare-fun tp_is_empty!10373 () Bool)

(assert (=> b!407603 (= e!244756 tp_is_empty!10373)))

(declare-fun b!407604 () Bool)

(declare-fun res!235778 () Bool)

(assert (=> b!407604 (=> (not res!235778) (not e!244757))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407604 (= res!235778 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407605 () Bool)

(declare-fun e!244754 () Bool)

(assert (=> b!407605 (= e!244757 e!244754)))

(declare-fun res!235773 () Bool)

(assert (=> b!407605 (=> (not res!235773) (not e!244754))))

(declare-fun lt!188661 () array!24601)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24601 (_ BitVec 32)) Bool)

(assert (=> b!407605 (= res!235773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188661 mask!1025))))

(assert (=> b!407605 (= lt!188661 (array!24602 (store (arr!11747 _keys!709) i!563 k!794) (size!12099 _keys!709)))))

(declare-fun res!235782 () Bool)

(assert (=> start!38962 (=> (not res!235782) (not e!244757))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38962 (= res!235782 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12099 _keys!709))))))

(assert (=> start!38962 e!244757))

(assert (=> start!38962 true))

(declare-datatypes ((V!14935 0))(
  ( (V!14936 (val!5231 Int)) )
))
(declare-datatypes ((ValueCell!4843 0))(
  ( (ValueCellFull!4843 (v!7474 V!14935)) (EmptyCell!4843) )
))
(declare-datatypes ((array!24603 0))(
  ( (array!24604 (arr!11748 (Array (_ BitVec 32) ValueCell!4843)) (size!12100 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24603)

(declare-fun e!244758 () Bool)

(declare-fun array_inv!8580 (array!24603) Bool)

(assert (=> start!38962 (and (array_inv!8580 _values!549) e!244758)))

(declare-fun array_inv!8581 (array!24601) Bool)

(assert (=> start!38962 (array_inv!8581 _keys!709)))

(declare-fun b!407606 () Bool)

(assert (=> b!407606 (= e!244754 false)))

(declare-fun lt!188660 () Bool)

(assert (=> b!407606 (= lt!188660 (arrayNoDuplicates!0 lt!188661 #b00000000000000000000000000000000 Nil!6788))))

(declare-fun b!407607 () Bool)

(declare-fun res!235779 () Bool)

(assert (=> b!407607 (=> (not res!235779) (not e!244757))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407607 (= res!235779 (and (= (size!12100 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12099 _keys!709) (size!12100 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407608 () Bool)

(declare-fun mapRes!17181 () Bool)

(assert (=> b!407608 (= e!244758 (and e!244756 mapRes!17181))))

(declare-fun condMapEmpty!17181 () Bool)

(declare-fun mapDefault!17181 () ValueCell!4843)

