; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34520 () Bool)

(assert start!34520)

(declare-fun b_free!7435 () Bool)

(declare-fun b_next!7435 () Bool)

(assert (=> start!34520 (= b_free!7435 (not b_next!7435))))

(declare-fun tp!25850 () Bool)

(declare-fun b_and!14661 () Bool)

(assert (=> start!34520 (= tp!25850 b_and!14661)))

(declare-fun b!344717 () Bool)

(declare-fun res!190763 () Bool)

(declare-fun e!211308 () Bool)

(assert (=> b!344717 (=> (not res!190763) (not e!211308))))

(declare-datatypes ((array!18329 0))(
  ( (array!18330 (arr!8678 (Array (_ BitVec 32) (_ BitVec 64))) (size!9030 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18329)

(declare-datatypes ((List!5043 0))(
  ( (Nil!5040) (Cons!5039 (h!5895 (_ BitVec 64)) (t!10167 List!5043)) )
))
(declare-fun arrayNoDuplicates!0 (array!18329 (_ BitVec 32) List!5043) Bool)

(assert (=> b!344717 (= res!190763 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5040))))

(declare-fun b!344718 () Bool)

(assert (=> b!344718 (= e!211308 false)))

(declare-datatypes ((SeekEntryResult!3342 0))(
  ( (MissingZero!3342 (index!15547 (_ BitVec 32))) (Found!3342 (index!15548 (_ BitVec 32))) (Intermediate!3342 (undefined!4154 Bool) (index!15549 (_ BitVec 32)) (x!34347 (_ BitVec 32))) (Undefined!3342) (MissingVacant!3342 (index!15550 (_ BitVec 32))) )
))
(declare-fun lt!162687 () SeekEntryResult!3342)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18329 (_ BitVec 32)) SeekEntryResult!3342)

(assert (=> b!344718 (= lt!162687 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344719 () Bool)

(declare-fun e!211307 () Bool)

(declare-fun tp_is_empty!7387 () Bool)

(assert (=> b!344719 (= e!211307 tp_is_empty!7387)))

(declare-fun b!344720 () Bool)

(declare-fun res!190762 () Bool)

(assert (=> b!344720 (=> (not res!190762) (not e!211308))))

(declare-datatypes ((V!10827 0))(
  ( (V!10828 (val!3738 Int)) )
))
(declare-fun zeroValue!1467 () V!10827)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3350 0))(
  ( (ValueCellFull!3350 (v!5910 V!10827)) (EmptyCell!3350) )
))
(declare-datatypes ((array!18331 0))(
  ( (array!18332 (arr!8679 (Array (_ BitVec 32) ValueCell!3350)) (size!9031 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18331)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10827)

(declare-datatypes ((tuple2!5396 0))(
  ( (tuple2!5397 (_1!2708 (_ BitVec 64)) (_2!2708 V!10827)) )
))
(declare-datatypes ((List!5044 0))(
  ( (Nil!5041) (Cons!5040 (h!5896 tuple2!5396) (t!10168 List!5044)) )
))
(declare-datatypes ((ListLongMap!4323 0))(
  ( (ListLongMap!4324 (toList!2177 List!5044)) )
))
(declare-fun contains!2231 (ListLongMap!4323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1697 (array!18329 array!18331 (_ BitVec 32) (_ BitVec 32) V!10827 V!10827 (_ BitVec 32) Int) ListLongMap!4323)

(assert (=> b!344720 (= res!190762 (not (contains!2231 (getCurrentListMap!1697 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12519 () Bool)

(declare-fun mapRes!12519 () Bool)

(assert (=> mapIsEmpty!12519 mapRes!12519))

(declare-fun b!344721 () Bool)

(declare-fun res!190764 () Bool)

(assert (=> b!344721 (=> (not res!190764) (not e!211308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18329 (_ BitVec 32)) Bool)

(assert (=> b!344721 (= res!190764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!190761 () Bool)

(assert (=> start!34520 (=> (not res!190761) (not e!211308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34520 (= res!190761 (validMask!0 mask!2385))))

(assert (=> start!34520 e!211308))

(assert (=> start!34520 true))

(assert (=> start!34520 tp_is_empty!7387))

(assert (=> start!34520 tp!25850))

(declare-fun e!211304 () Bool)

(declare-fun array_inv!6418 (array!18331) Bool)

(assert (=> start!34520 (and (array_inv!6418 _values!1525) e!211304)))

(declare-fun array_inv!6419 (array!18329) Bool)

(assert (=> start!34520 (array_inv!6419 _keys!1895)))

(declare-fun b!344722 () Bool)

(declare-fun res!190765 () Bool)

(assert (=> b!344722 (=> (not res!190765) (not e!211308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344722 (= res!190765 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12519 () Bool)

(declare-fun tp!25851 () Bool)

(assert (=> mapNonEmpty!12519 (= mapRes!12519 (and tp!25851 e!211307))))

(declare-fun mapValue!12519 () ValueCell!3350)

(declare-fun mapRest!12519 () (Array (_ BitVec 32) ValueCell!3350))

(declare-fun mapKey!12519 () (_ BitVec 32))

(assert (=> mapNonEmpty!12519 (= (arr!8679 _values!1525) (store mapRest!12519 mapKey!12519 mapValue!12519))))

(declare-fun b!344723 () Bool)

(declare-fun e!211306 () Bool)

(assert (=> b!344723 (= e!211304 (and e!211306 mapRes!12519))))

(declare-fun condMapEmpty!12519 () Bool)

(declare-fun mapDefault!12519 () ValueCell!3350)

