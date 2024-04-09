; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34860 () Bool)

(assert start!34860)

(declare-fun b_free!7637 () Bool)

(declare-fun b_next!7637 () Bool)

(assert (=> start!34860 (= b_free!7637 (not b_next!7637))))

(declare-fun tp!26477 () Bool)

(declare-fun b_and!14877 () Bool)

(assert (=> start!34860 (= tp!26477 b_and!14877)))

(declare-fun mapIsEmpty!12843 () Bool)

(declare-fun mapRes!12843 () Bool)

(assert (=> mapIsEmpty!12843 mapRes!12843))

(declare-fun b!348867 () Bool)

(declare-fun res!193431 () Bool)

(declare-fun e!213716 () Bool)

(assert (=> b!348867 (=> (not res!193431) (not e!213716))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11095 0))(
  ( (V!11096 (val!3839 Int)) )
))
(declare-datatypes ((ValueCell!3451 0))(
  ( (ValueCellFull!3451 (v!6018 V!11095)) (EmptyCell!3451) )
))
(declare-datatypes ((array!18731 0))(
  ( (array!18732 (arr!8872 (Array (_ BitVec 32) ValueCell!3451)) (size!9224 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18731)

(declare-datatypes ((array!18733 0))(
  ( (array!18734 (arr!8873 (Array (_ BitVec 32) (_ BitVec 64))) (size!9225 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18733)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348867 (= res!193431 (and (= (size!9224 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9225 _keys!1895) (size!9224 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348868 () Bool)

(declare-fun res!193435 () Bool)

(assert (=> b!348868 (=> (not res!193435) (not e!213716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18733 (_ BitVec 32)) Bool)

(assert (=> b!348868 (= res!193435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12843 () Bool)

(declare-fun tp!26478 () Bool)

(declare-fun e!213715 () Bool)

(assert (=> mapNonEmpty!12843 (= mapRes!12843 (and tp!26478 e!213715))))

(declare-fun mapRest!12843 () (Array (_ BitVec 32) ValueCell!3451))

(declare-fun mapValue!12843 () ValueCell!3451)

(declare-fun mapKey!12843 () (_ BitVec 32))

(assert (=> mapNonEmpty!12843 (= (arr!8872 _values!1525) (store mapRest!12843 mapKey!12843 mapValue!12843))))

(declare-fun res!193429 () Bool)

(assert (=> start!34860 (=> (not res!193429) (not e!213716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34860 (= res!193429 (validMask!0 mask!2385))))

(assert (=> start!34860 e!213716))

(assert (=> start!34860 true))

(declare-fun tp_is_empty!7589 () Bool)

(assert (=> start!34860 tp_is_empty!7589))

(assert (=> start!34860 tp!26477))

(declare-fun e!213714 () Bool)

(declare-fun array_inv!6546 (array!18731) Bool)

(assert (=> start!34860 (and (array_inv!6546 _values!1525) e!213714)))

(declare-fun array_inv!6547 (array!18733) Bool)

(assert (=> start!34860 (array_inv!6547 _keys!1895)))

(declare-fun b!348869 () Bool)

(declare-fun e!213719 () Bool)

(assert (=> b!348869 (= e!213716 e!213719)))

(declare-fun res!193434 () Bool)

(assert (=> b!348869 (=> (not res!193434) (not e!213719))))

(declare-datatypes ((SeekEntryResult!3417 0))(
  ( (MissingZero!3417 (index!15847 (_ BitVec 32))) (Found!3417 (index!15848 (_ BitVec 32))) (Intermediate!3417 (undefined!4229 Bool) (index!15849 (_ BitVec 32)) (x!34756 (_ BitVec 32))) (Undefined!3417) (MissingVacant!3417 (index!15850 (_ BitVec 32))) )
))
(declare-fun lt!163952 () SeekEntryResult!3417)

(assert (=> b!348869 (= res!193434 (and (not (is-Found!3417 lt!163952)) (is-MissingZero!3417 lt!163952)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18733 (_ BitVec 32)) SeekEntryResult!3417)

(assert (=> b!348869 (= lt!163952 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348870 () Bool)

(declare-fun res!193433 () Bool)

(assert (=> b!348870 (=> (not res!193433) (not e!213719))))

(declare-fun arrayContainsKey!0 (array!18733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348870 (= res!193433 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348871 () Bool)

(declare-fun res!193432 () Bool)

(assert (=> b!348871 (=> (not res!193432) (not e!213716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348871 (= res!193432 (validKeyInArray!0 k!1348))))

(declare-fun b!348872 () Bool)

(declare-fun e!213717 () Bool)

(assert (=> b!348872 (= e!213714 (and e!213717 mapRes!12843))))

(declare-fun condMapEmpty!12843 () Bool)

(declare-fun mapDefault!12843 () ValueCell!3451)

