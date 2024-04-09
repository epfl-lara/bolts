; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34888 () Bool)

(assert start!34888)

(declare-fun b_free!7643 () Bool)

(declare-fun b_next!7643 () Bool)

(assert (=> start!34888 (= b_free!7643 (not b_next!7643))))

(declare-fun tp!26499 () Bool)

(declare-fun b_and!14885 () Bool)

(assert (=> start!34888 (= tp!26499 b_and!14885)))

(declare-fun b!349113 () Bool)

(declare-fun e!213868 () Bool)

(declare-fun e!213872 () Bool)

(assert (=> b!349113 (= e!213868 e!213872)))

(declare-fun res!193565 () Bool)

(assert (=> b!349113 (=> (not res!193565) (not e!213872))))

(declare-fun lt!164070 () (_ BitVec 32))

(declare-datatypes ((array!18745 0))(
  ( (array!18746 (arr!8878 (Array (_ BitVec 32) (_ BitVec 64))) (size!9230 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18745)

(assert (=> b!349113 (= res!193565 (and (bvsge lt!164070 #b00000000000000000000000000000000) (bvslt lt!164070 (size!9230 _keys!1895))))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18745 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349113 (= lt!164070 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!349115 () Bool)

(declare-fun e!213866 () Bool)

(declare-fun tp_is_empty!7595 () Bool)

(assert (=> b!349115 (= e!213866 tp_is_empty!7595)))

(declare-fun b!349116 () Bool)

(declare-fun res!193561 () Bool)

(declare-fun e!213867 () Bool)

(assert (=> b!349116 (=> (not res!193561) (not e!213867))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11103 0))(
  ( (V!11104 (val!3842 Int)) )
))
(declare-fun zeroValue!1467 () V!11103)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3454 0))(
  ( (ValueCellFull!3454 (v!6022 V!11103)) (EmptyCell!3454) )
))
(declare-datatypes ((array!18747 0))(
  ( (array!18748 (arr!8879 (Array (_ BitVec 32) ValueCell!3454)) (size!9231 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18747)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11103)

(declare-datatypes ((tuple2!5548 0))(
  ( (tuple2!5549 (_1!2784 (_ BitVec 64)) (_2!2784 V!11103)) )
))
(declare-datatypes ((List!5188 0))(
  ( (Nil!5185) (Cons!5184 (h!6040 tuple2!5548) (t!10328 List!5188)) )
))
(declare-datatypes ((ListLongMap!4475 0))(
  ( (ListLongMap!4476 (toList!2253 List!5188)) )
))
(declare-fun contains!2315 (ListLongMap!4475 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1770 (array!18745 array!18747 (_ BitVec 32) (_ BitVec 32) V!11103 V!11103 (_ BitVec 32) Int) ListLongMap!4475)

(assert (=> b!349116 (= res!193561 (not (contains!2315 (getCurrentListMap!1770 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!349117 () Bool)

(declare-fun res!193562 () Bool)

(assert (=> b!349117 (=> (not res!193562) (not e!213867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349117 (= res!193562 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12855 () Bool)

(declare-fun mapRes!12855 () Bool)

(declare-fun tp!26498 () Bool)

(declare-fun e!213869 () Bool)

(assert (=> mapNonEmpty!12855 (= mapRes!12855 (and tp!26498 e!213869))))

(declare-fun mapRest!12855 () (Array (_ BitVec 32) ValueCell!3454))

(declare-fun mapKey!12855 () (_ BitVec 32))

(declare-fun mapValue!12855 () ValueCell!3454)

(assert (=> mapNonEmpty!12855 (= (arr!8879 _values!1525) (store mapRest!12855 mapKey!12855 mapValue!12855))))

(declare-fun b!349118 () Bool)

(declare-fun arrayContainsKey!0 (array!18745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349118 (= e!213872 (not (arrayContainsKey!0 _keys!1895 k!1348 lt!164070)))))

(declare-fun b!349119 () Bool)

(declare-fun res!193559 () Bool)

(assert (=> b!349119 (=> (not res!193559) (not e!213868))))

(assert (=> b!349119 (= res!193559 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!349120 () Bool)

(assert (=> b!349120 (= e!213867 e!213868)))

(declare-fun res!193563 () Bool)

(assert (=> b!349120 (=> (not res!193563) (not e!213868))))

(declare-datatypes ((SeekEntryResult!3419 0))(
  ( (MissingZero!3419 (index!15855 (_ BitVec 32))) (Found!3419 (index!15856 (_ BitVec 32))) (Intermediate!3419 (undefined!4231 Bool) (index!15857 (_ BitVec 32)) (x!34776 (_ BitVec 32))) (Undefined!3419) (MissingVacant!3419 (index!15858 (_ BitVec 32))) )
))
(declare-fun lt!164069 () SeekEntryResult!3419)

(assert (=> b!349120 (= res!193563 (and (not (is-Found!3419 lt!164069)) (is-MissingZero!3419 lt!164069)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18745 (_ BitVec 32)) SeekEntryResult!3419)

(assert (=> b!349120 (= lt!164069 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!349121 () Bool)

(declare-fun res!193567 () Bool)

(assert (=> b!349121 (=> (not res!193567) (not e!213867))))

(assert (=> b!349121 (= res!193567 (and (= (size!9231 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9230 _keys!1895) (size!9231 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349122 () Bool)

(declare-fun e!213870 () Bool)

(assert (=> b!349122 (= e!213870 (and e!213866 mapRes!12855))))

(declare-fun condMapEmpty!12855 () Bool)

(declare-fun mapDefault!12855 () ValueCell!3454)

