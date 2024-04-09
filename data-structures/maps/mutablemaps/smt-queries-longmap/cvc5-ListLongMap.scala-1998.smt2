; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34924 () Bool)

(assert start!34924)

(declare-fun b_free!7657 () Bool)

(declare-fun b_next!7657 () Bool)

(assert (=> start!34924 (= b_free!7657 (not b_next!7657))))

(declare-fun tp!26543 () Bool)

(declare-fun b_and!14901 () Bool)

(assert (=> start!34924 (= tp!26543 b_and!14901)))

(declare-fun b!349501 () Bool)

(declare-fun res!193776 () Bool)

(declare-fun e!214105 () Bool)

(assert (=> b!349501 (=> (not res!193776) (not e!214105))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349501 (= res!193776 (validKeyInArray!0 k!1348))))

(declare-fun b!349502 () Bool)

(declare-fun e!214098 () Bool)

(declare-fun tp_is_empty!7609 () Bool)

(assert (=> b!349502 (= e!214098 tp_is_empty!7609)))

(declare-fun b!349503 () Bool)

(declare-fun e!214100 () Bool)

(assert (=> b!349503 (= e!214100 tp_is_empty!7609)))

(declare-fun b!349504 () Bool)

(declare-fun e!214102 () Bool)

(assert (=> b!349504 (= e!214105 e!214102)))

(declare-fun res!193775 () Bool)

(assert (=> b!349504 (=> (not res!193775) (not e!214102))))

(declare-datatypes ((SeekEntryResult!3423 0))(
  ( (MissingZero!3423 (index!15871 (_ BitVec 32))) (Found!3423 (index!15872 (_ BitVec 32))) (Intermediate!3423 (undefined!4235 Bool) (index!15873 (_ BitVec 32)) (x!34814 (_ BitVec 32))) (Undefined!3423) (MissingVacant!3423 (index!15874 (_ BitVec 32))) )
))
(declare-fun lt!164234 () SeekEntryResult!3423)

(assert (=> b!349504 (= res!193775 (and (not (is-Found!3423 lt!164234)) (is-MissingZero!3423 lt!164234)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18771 0))(
  ( (array!18772 (arr!8890 (Array (_ BitVec 32) (_ BitVec 64))) (size!9242 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18771)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18771 (_ BitVec 32)) SeekEntryResult!3423)

(assert (=> b!349504 (= lt!164234 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!349505 () Bool)

(declare-fun res!193782 () Bool)

(assert (=> b!349505 (=> (not res!193782) (not e!214105))))

(declare-datatypes ((V!11123 0))(
  ( (V!11124 (val!3849 Int)) )
))
(declare-fun zeroValue!1467 () V!11123)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3461 0))(
  ( (ValueCellFull!3461 (v!6030 V!11123)) (EmptyCell!3461) )
))
(declare-datatypes ((array!18773 0))(
  ( (array!18774 (arr!8891 (Array (_ BitVec 32) ValueCell!3461)) (size!9243 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18773)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11123)

(declare-datatypes ((tuple2!5556 0))(
  ( (tuple2!5557 (_1!2788 (_ BitVec 64)) (_2!2788 V!11123)) )
))
(declare-datatypes ((List!5195 0))(
  ( (Nil!5192) (Cons!5191 (h!6047 tuple2!5556) (t!10337 List!5195)) )
))
(declare-datatypes ((ListLongMap!4483 0))(
  ( (ListLongMap!4484 (toList!2257 List!5195)) )
))
(declare-fun contains!2320 (ListLongMap!4483 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1774 (array!18771 array!18773 (_ BitVec 32) (_ BitVec 32) V!11123 V!11123 (_ BitVec 32) Int) ListLongMap!4483)

(assert (=> b!349505 (= res!193782 (not (contains!2320 (getCurrentListMap!1774 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!349506 () Bool)

(declare-datatypes ((Unit!10826 0))(
  ( (Unit!10827) )
))
(declare-fun e!214099 () Unit!10826)

(declare-fun Unit!10828 () Unit!10826)

(assert (=> b!349506 (= e!214099 Unit!10828)))

(declare-fun lt!164233 () Unit!10826)

(declare-fun lemmaArrayContainsKeyThenInListMap!320 (array!18771 array!18773 (_ BitVec 32) (_ BitVec 32) V!11123 V!11123 (_ BitVec 64) (_ BitVec 32) Int) Unit!10826)

(declare-fun arrayScanForKey!0 (array!18771 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349506 (= lt!164233 (lemmaArrayContainsKeyThenInListMap!320 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349506 false))

(declare-fun b!349507 () Bool)

(declare-fun res!193779 () Bool)

(assert (=> b!349507 (=> (not res!193779) (not e!214105))))

(assert (=> b!349507 (= res!193779 (and (= (size!9243 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9242 _keys!1895) (size!9243 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349508 () Bool)

(declare-fun res!193778 () Bool)

(assert (=> b!349508 (=> (not res!193778) (not e!214105))))

(declare-datatypes ((List!5196 0))(
  ( (Nil!5193) (Cons!5192 (h!6048 (_ BitVec 64)) (t!10338 List!5196)) )
))
(declare-fun arrayNoDuplicates!0 (array!18771 (_ BitVec 32) List!5196) Bool)

(assert (=> b!349508 (= res!193778 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5193))))

(declare-fun mapNonEmpty!12879 () Bool)

(declare-fun mapRes!12879 () Bool)

(declare-fun tp!26544 () Bool)

(assert (=> mapNonEmpty!12879 (= mapRes!12879 (and tp!26544 e!214100))))

(declare-fun mapRest!12879 () (Array (_ BitVec 32) ValueCell!3461))

(declare-fun mapValue!12879 () ValueCell!3461)

(declare-fun mapKey!12879 () (_ BitVec 32))

(assert (=> mapNonEmpty!12879 (= (arr!8891 _values!1525) (store mapRest!12879 mapKey!12879 mapValue!12879))))

(declare-fun b!349509 () Bool)

(declare-fun e!214104 () Bool)

(assert (=> b!349509 (= e!214104 (and e!214098 mapRes!12879))))

(declare-fun condMapEmpty!12879 () Bool)

(declare-fun mapDefault!12879 () ValueCell!3461)

