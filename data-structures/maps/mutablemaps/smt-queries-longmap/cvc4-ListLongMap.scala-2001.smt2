; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34998 () Bool)

(assert start!34998)

(declare-fun b_free!7679 () Bool)

(declare-fun b_next!7679 () Bool)

(assert (=> start!34998 (= b_free!7679 (not b_next!7679))))

(declare-fun tp!26616 () Bool)

(declare-fun b_and!14927 () Bool)

(assert (=> start!34998 (= tp!26616 b_and!14927)))

(declare-fun b!350244 () Bool)

(declare-fun e!214554 () Bool)

(declare-fun tp_is_empty!7631 () Bool)

(assert (=> b!350244 (= e!214554 tp_is_empty!7631)))

(declare-fun b!350245 () Bool)

(declare-fun res!194160 () Bool)

(declare-fun e!214556 () Bool)

(assert (=> b!350245 (=> (not res!194160) (not e!214556))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350245 (= res!194160 (validKeyInArray!0 k!1348))))

(declare-fun b!350246 () Bool)

(declare-fun res!194163 () Bool)

(assert (=> b!350246 (=> (not res!194163) (not e!214556))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11151 0))(
  ( (V!11152 (val!3860 Int)) )
))
(declare-datatypes ((ValueCell!3472 0))(
  ( (ValueCellFull!3472 (v!6043 V!11151)) (EmptyCell!3472) )
))
(declare-datatypes ((array!18817 0))(
  ( (array!18818 (arr!8911 (Array (_ BitVec 32) ValueCell!3472)) (size!9263 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18817)

(declare-datatypes ((array!18819 0))(
  ( (array!18820 (arr!8912 (Array (_ BitVec 32) (_ BitVec 64))) (size!9264 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18819)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350246 (= res!194163 (and (= (size!9263 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9264 _keys!1895) (size!9263 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350247 () Bool)

(declare-fun e!214553 () Bool)

(assert (=> b!350247 (= e!214553 false)))

(declare-fun lt!164543 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18819 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350247 (= lt!164543 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350248 () Bool)

(assert (=> b!350248 (= e!214556 e!214553)))

(declare-fun res!194161 () Bool)

(assert (=> b!350248 (=> (not res!194161) (not e!214553))))

(declare-datatypes ((SeekEntryResult!3431 0))(
  ( (MissingZero!3431 (index!15903 (_ BitVec 32))) (Found!3431 (index!15904 (_ BitVec 32))) (Intermediate!3431 (undefined!4243 Bool) (index!15905 (_ BitVec 32)) (x!34866 (_ BitVec 32))) (Undefined!3431) (MissingVacant!3431 (index!15906 (_ BitVec 32))) )
))
(declare-fun lt!164544 () SeekEntryResult!3431)

(assert (=> b!350248 (= res!194161 (and (not (is-Found!3431 lt!164544)) (not (is-MissingZero!3431 lt!164544)) (is-MissingVacant!3431 lt!164544)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18819 (_ BitVec 32)) SeekEntryResult!3431)

(assert (=> b!350248 (= lt!164544 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!350249 () Bool)

(declare-fun res!194159 () Bool)

(assert (=> b!350249 (=> (not res!194159) (not e!214553))))

(declare-fun arrayContainsKey!0 (array!18819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350249 (= res!194159 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350250 () Bool)

(declare-fun res!194158 () Bool)

(assert (=> b!350250 (=> (not res!194158) (not e!214556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18819 (_ BitVec 32)) Bool)

(assert (=> b!350250 (= res!194158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12918 () Bool)

(declare-fun mapRes!12918 () Bool)

(declare-fun tp!26615 () Bool)

(assert (=> mapNonEmpty!12918 (= mapRes!12918 (and tp!26615 e!214554))))

(declare-fun mapRest!12918 () (Array (_ BitVec 32) ValueCell!3472))

(declare-fun mapValue!12918 () ValueCell!3472)

(declare-fun mapKey!12918 () (_ BitVec 32))

(assert (=> mapNonEmpty!12918 (= (arr!8911 _values!1525) (store mapRest!12918 mapKey!12918 mapValue!12918))))

(declare-fun res!194157 () Bool)

(assert (=> start!34998 (=> (not res!194157) (not e!214556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34998 (= res!194157 (validMask!0 mask!2385))))

(assert (=> start!34998 e!214556))

(assert (=> start!34998 true))

(assert (=> start!34998 tp_is_empty!7631))

(assert (=> start!34998 tp!26616))

(declare-fun e!214558 () Bool)

(declare-fun array_inv!6566 (array!18817) Bool)

(assert (=> start!34998 (and (array_inv!6566 _values!1525) e!214558)))

(declare-fun array_inv!6567 (array!18819) Bool)

(assert (=> start!34998 (array_inv!6567 _keys!1895)))

(declare-fun mapIsEmpty!12918 () Bool)

(assert (=> mapIsEmpty!12918 mapRes!12918))

(declare-fun b!350251 () Bool)

(declare-fun res!194162 () Bool)

(assert (=> b!350251 (=> (not res!194162) (not e!214556))))

(declare-fun zeroValue!1467 () V!11151)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11151)

(declare-datatypes ((tuple2!5568 0))(
  ( (tuple2!5569 (_1!2794 (_ BitVec 64)) (_2!2794 V!11151)) )
))
(declare-datatypes ((List!5208 0))(
  ( (Nil!5205) (Cons!5204 (h!6060 tuple2!5568) (t!10354 List!5208)) )
))
(declare-datatypes ((ListLongMap!4495 0))(
  ( (ListLongMap!4496 (toList!2263 List!5208)) )
))
(declare-fun contains!2328 (ListLongMap!4495 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1780 (array!18819 array!18817 (_ BitVec 32) (_ BitVec 32) V!11151 V!11151 (_ BitVec 32) Int) ListLongMap!4495)

(assert (=> b!350251 (= res!194162 (not (contains!2328 (getCurrentListMap!1780 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!350252 () Bool)

(declare-fun e!214555 () Bool)

(assert (=> b!350252 (= e!214558 (and e!214555 mapRes!12918))))

(declare-fun condMapEmpty!12918 () Bool)

(declare-fun mapDefault!12918 () ValueCell!3472)

