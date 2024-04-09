; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16726 () Bool)

(assert start!16726)

(declare-fun b!167647 () Bool)

(declare-fun b_free!4019 () Bool)

(declare-fun b_next!4019 () Bool)

(assert (=> b!167647 (= b_free!4019 (not b_next!4019))))

(declare-fun tp!14658 () Bool)

(declare-fun b_and!10451 () Bool)

(assert (=> b!167647 (= tp!14658 b_and!10451)))

(declare-fun b!167638 () Bool)

(declare-fun e!110136 () Bool)

(declare-fun e!110140 () Bool)

(assert (=> b!167638 (= e!110136 e!110140)))

(declare-fun res!79768 () Bool)

(assert (=> b!167638 (=> (not res!79768) (not e!110140))))

(declare-datatypes ((SeekEntryResult!494 0))(
  ( (MissingZero!494 (index!4144 (_ BitVec 32))) (Found!494 (index!4145 (_ BitVec 32))) (Intermediate!494 (undefined!1306 Bool) (index!4146 (_ BitVec 32)) (x!18554 (_ BitVec 32))) (Undefined!494) (MissingVacant!494 (index!4147 (_ BitVec 32))) )
))
(declare-fun lt!83842 () SeekEntryResult!494)

(assert (=> b!167638 (= res!79768 (and (not (is-Undefined!494 lt!83842)) (not (is-MissingVacant!494 lt!83842)) (not (is-MissingZero!494 lt!83842)) (is-Found!494 lt!83842)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4741 0))(
  ( (V!4742 (val!1955 Int)) )
))
(declare-datatypes ((ValueCell!1567 0))(
  ( (ValueCellFull!1567 (v!3816 V!4741)) (EmptyCell!1567) )
))
(declare-datatypes ((array!6738 0))(
  ( (array!6739 (arr!3204 (Array (_ BitVec 32) (_ BitVec 64))) (size!3492 (_ BitVec 32))) )
))
(declare-datatypes ((array!6740 0))(
  ( (array!6741 (arr!3205 (Array (_ BitVec 32) ValueCell!1567)) (size!3493 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2042 0))(
  ( (LongMapFixedSize!2043 (defaultEntry!3463 Int) (mask!8214 (_ BitVec 32)) (extraKeys!3204 (_ BitVec 32)) (zeroValue!3306 V!4741) (minValue!3306 V!4741) (_size!1070 (_ BitVec 32)) (_keys!5288 array!6738) (_values!3446 array!6740) (_vacant!1070 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2042)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6738 (_ BitVec 32)) SeekEntryResult!494)

(assert (=> b!167638 (= lt!83842 (seekEntryOrOpen!0 key!828 (_keys!5288 thiss!1248) (mask!8214 thiss!1248)))))

(declare-fun b!167639 () Bool)

(declare-datatypes ((Unit!5137 0))(
  ( (Unit!5138) )
))
(declare-fun e!110138 () Unit!5137)

(declare-fun lt!83846 () Unit!5137)

(assert (=> b!167639 (= e!110138 lt!83846)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!111 (array!6738 array!6740 (_ BitVec 32) (_ BitVec 32) V!4741 V!4741 (_ BitVec 64) Int) Unit!5137)

(assert (=> b!167639 (= lt!83846 (lemmaInListMapThenSeekEntryOrOpenFindsIt!111 (_keys!5288 thiss!1248) (_values!3446 thiss!1248) (mask!8214 thiss!1248) (extraKeys!3204 thiss!1248) (zeroValue!3306 thiss!1248) (minValue!3306 thiss!1248) key!828 (defaultEntry!3463 thiss!1248)))))

(declare-fun res!79767 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167639 (= res!79767 (inRange!0 (index!4145 lt!83842) (mask!8214 thiss!1248)))))

(declare-fun e!110135 () Bool)

(assert (=> b!167639 (=> (not res!79767) (not e!110135))))

(assert (=> b!167639 e!110135))

(declare-fun b!167640 () Bool)

(declare-fun res!79765 () Bool)

(assert (=> b!167640 (=> (not res!79765) (not e!110136))))

(assert (=> b!167640 (= res!79765 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6450 () Bool)

(declare-fun mapRes!6450 () Bool)

(declare-fun tp!14657 () Bool)

(declare-fun e!110137 () Bool)

(assert (=> mapNonEmpty!6450 (= mapRes!6450 (and tp!14657 e!110137))))

(declare-fun mapRest!6450 () (Array (_ BitVec 32) ValueCell!1567))

(declare-fun mapValue!6450 () ValueCell!1567)

(declare-fun mapKey!6450 () (_ BitVec 32))

(assert (=> mapNonEmpty!6450 (= (arr!3205 (_values!3446 thiss!1248)) (store mapRest!6450 mapKey!6450 mapValue!6450))))

(declare-fun res!79769 () Bool)

(assert (=> start!16726 (=> (not res!79769) (not e!110136))))

(declare-fun valid!882 (LongMapFixedSize!2042) Bool)

(assert (=> start!16726 (= res!79769 (valid!882 thiss!1248))))

(assert (=> start!16726 e!110136))

(declare-fun e!110134 () Bool)

(assert (=> start!16726 e!110134))

(assert (=> start!16726 true))

(declare-fun tp_is_empty!3821 () Bool)

(assert (=> start!16726 tp_is_empty!3821))

(declare-fun b!167641 () Bool)

(declare-fun e!110131 () Bool)

(assert (=> b!167641 (= e!110131 tp_is_empty!3821)))

(declare-fun b!167642 () Bool)

(assert (=> b!167642 (= e!110137 tp_is_empty!3821)))

(declare-fun b!167643 () Bool)

(declare-fun e!110133 () Bool)

(assert (=> b!167643 (= e!110133 (and e!110131 mapRes!6450))))

(declare-fun condMapEmpty!6450 () Bool)

(declare-fun mapDefault!6450 () ValueCell!1567)

