; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35022 () Bool)

(assert start!35022)

(declare-fun b_free!7703 () Bool)

(declare-fun b_next!7703 () Bool)

(assert (=> start!35022 (= b_free!7703 (not b_next!7703))))

(declare-fun tp!26688 () Bool)

(declare-fun b_and!14951 () Bool)

(assert (=> start!35022 (= tp!26688 b_and!14951)))

(declare-fun b!350640 () Bool)

(declare-fun e!214770 () Bool)

(declare-fun tp_is_empty!7655 () Bool)

(assert (=> b!350640 (= e!214770 tp_is_empty!7655)))

(declare-fun b!350641 () Bool)

(declare-fun e!214769 () Bool)

(declare-fun e!214773 () Bool)

(assert (=> b!350641 (= e!214769 e!214773)))

(declare-fun res!194450 () Bool)

(assert (=> b!350641 (=> (not res!194450) (not e!214773))))

(declare-datatypes ((SeekEntryResult!3439 0))(
  ( (MissingZero!3439 (index!15935 (_ BitVec 32))) (Found!3439 (index!15936 (_ BitVec 32))) (Intermediate!3439 (undefined!4251 Bool) (index!15937 (_ BitVec 32)) (x!34906 (_ BitVec 32))) (Undefined!3439) (MissingVacant!3439 (index!15938 (_ BitVec 32))) )
))
(declare-fun lt!164615 () SeekEntryResult!3439)

(assert (=> b!350641 (= res!194450 (and (not (is-Found!3439 lt!164615)) (not (is-MissingZero!3439 lt!164615)) (is-MissingVacant!3439 lt!164615)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18859 0))(
  ( (array!18860 (arr!8932 (Array (_ BitVec 32) (_ BitVec 64))) (size!9284 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18859)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18859 (_ BitVec 32)) SeekEntryResult!3439)

(assert (=> b!350641 (= lt!164615 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!194445 () Bool)

(assert (=> start!35022 (=> (not res!194445) (not e!214769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35022 (= res!194445 (validMask!0 mask!2385))))

(assert (=> start!35022 e!214769))

(assert (=> start!35022 true))

(assert (=> start!35022 tp_is_empty!7655))

(assert (=> start!35022 tp!26688))

(declare-datatypes ((V!11183 0))(
  ( (V!11184 (val!3872 Int)) )
))
(declare-datatypes ((ValueCell!3484 0))(
  ( (ValueCellFull!3484 (v!6055 V!11183)) (EmptyCell!3484) )
))
(declare-datatypes ((array!18861 0))(
  ( (array!18862 (arr!8933 (Array (_ BitVec 32) ValueCell!3484)) (size!9285 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18861)

(declare-fun e!214772 () Bool)

(declare-fun array_inv!6584 (array!18861) Bool)

(assert (=> start!35022 (and (array_inv!6584 _values!1525) e!214772)))

(declare-fun array_inv!6585 (array!18859) Bool)

(assert (=> start!35022 (array_inv!6585 _keys!1895)))

(declare-fun b!350642 () Bool)

(declare-fun res!194451 () Bool)

(assert (=> b!350642 (=> (not res!194451) (not e!214769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18859 (_ BitVec 32)) Bool)

(assert (=> b!350642 (= res!194451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350643 () Bool)

(declare-fun res!194446 () Bool)

(assert (=> b!350643 (=> (not res!194446) (not e!214769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350643 (= res!194446 (validKeyInArray!0 k!1348))))

(declare-fun b!350644 () Bool)

(declare-fun res!194448 () Bool)

(assert (=> b!350644 (=> (not res!194448) (not e!214769))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350644 (= res!194448 (and (= (size!9285 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9284 _keys!1895) (size!9285 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350645 () Bool)

(assert (=> b!350645 (= e!214773 false)))

(declare-fun lt!164616 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18859 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350645 (= lt!164616 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12954 () Bool)

(declare-fun mapRes!12954 () Bool)

(declare-fun tp!26687 () Bool)

(assert (=> mapNonEmpty!12954 (= mapRes!12954 (and tp!26687 e!214770))))

(declare-fun mapKey!12954 () (_ BitVec 32))

(declare-fun mapRest!12954 () (Array (_ BitVec 32) ValueCell!3484))

(declare-fun mapValue!12954 () ValueCell!3484)

(assert (=> mapNonEmpty!12954 (= (arr!8933 _values!1525) (store mapRest!12954 mapKey!12954 mapValue!12954))))

(declare-fun mapIsEmpty!12954 () Bool)

(assert (=> mapIsEmpty!12954 mapRes!12954))

(declare-fun b!350646 () Bool)

(declare-fun e!214774 () Bool)

(assert (=> b!350646 (= e!214774 tp_is_empty!7655)))

(declare-fun b!350647 () Bool)

(declare-fun res!194449 () Bool)

(assert (=> b!350647 (=> (not res!194449) (not e!214769))))

(declare-fun zeroValue!1467 () V!11183)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11183)

(declare-datatypes ((tuple2!5582 0))(
  ( (tuple2!5583 (_1!2801 (_ BitVec 64)) (_2!2801 V!11183)) )
))
(declare-datatypes ((List!5221 0))(
  ( (Nil!5218) (Cons!5217 (h!6073 tuple2!5582) (t!10367 List!5221)) )
))
(declare-datatypes ((ListLongMap!4509 0))(
  ( (ListLongMap!4510 (toList!2270 List!5221)) )
))
(declare-fun contains!2335 (ListLongMap!4509 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1787 (array!18859 array!18861 (_ BitVec 32) (_ BitVec 32) V!11183 V!11183 (_ BitVec 32) Int) ListLongMap!4509)

(assert (=> b!350647 (= res!194449 (not (contains!2335 (getCurrentListMap!1787 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!350648 () Bool)

(assert (=> b!350648 (= e!214772 (and e!214774 mapRes!12954))))

(declare-fun condMapEmpty!12954 () Bool)

(declare-fun mapDefault!12954 () ValueCell!3484)

