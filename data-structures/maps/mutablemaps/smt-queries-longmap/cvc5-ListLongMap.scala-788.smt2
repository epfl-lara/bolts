; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18784 () Bool)

(assert start!18784)

(declare-fun b!185458 () Bool)

(declare-fun b_free!4567 () Bool)

(declare-fun b_next!4567 () Bool)

(assert (=> b!185458 (= b_free!4567 (not b_next!4567))))

(declare-fun tp!16496 () Bool)

(declare-fun b_and!11185 () Bool)

(assert (=> b!185458 (= tp!16496 b_and!11185)))

(declare-fun b!185452 () Bool)

(declare-fun e!122046 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!185452 (= e!122046 (not (validKeyInArray!0 key!828)))))

(declare-fun b!185453 () Bool)

(declare-fun res!87737 () Bool)

(assert (=> b!185453 (=> (not res!87737) (not e!122046))))

(declare-datatypes ((V!5433 0))(
  ( (V!5434 (val!2214 Int)) )
))
(declare-datatypes ((ValueCell!1826 0))(
  ( (ValueCellFull!1826 (v!4120 V!5433)) (EmptyCell!1826) )
))
(declare-datatypes ((array!7884 0))(
  ( (array!7885 (arr!3722 (Array (_ BitVec 32) (_ BitVec 64))) (size!4038 (_ BitVec 32))) )
))
(declare-datatypes ((array!7886 0))(
  ( (array!7887 (arr!3723 (Array (_ BitVec 32) ValueCell!1826)) (size!4039 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2560 0))(
  ( (LongMapFixedSize!2561 (defaultEntry!3781 Int) (mask!8889 (_ BitVec 32)) (extraKeys!3518 (_ BitVec 32)) (zeroValue!3622 V!5433) (minValue!3622 V!5433) (_size!1329 (_ BitVec 32)) (_keys!5720 array!7884) (_values!3764 array!7886) (_vacant!1329 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2560)

(declare-datatypes ((List!2380 0))(
  ( (Nil!2377) (Cons!2376 (h!3009 (_ BitVec 64)) (t!7270 List!2380)) )
))
(declare-fun arrayNoDuplicates!0 (array!7884 (_ BitVec 32) List!2380) Bool)

(assert (=> b!185453 (= res!87737 (arrayNoDuplicates!0 (_keys!5720 thiss!1248) #b00000000000000000000000000000000 Nil!2377))))

(declare-fun mapIsEmpty!7467 () Bool)

(declare-fun mapRes!7467 () Bool)

(assert (=> mapIsEmpty!7467 mapRes!7467))

(declare-fun b!185454 () Bool)

(declare-fun res!87740 () Bool)

(assert (=> b!185454 (=> (not res!87740) (not e!122046))))

(assert (=> b!185454 (= res!87740 (and (= (size!4039 (_values!3764 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8889 thiss!1248))) (= (size!4038 (_keys!5720 thiss!1248)) (size!4039 (_values!3764 thiss!1248))) (bvsge (mask!8889 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3518 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3518 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185455 () Bool)

(declare-fun e!122048 () Bool)

(declare-fun tp_is_empty!4339 () Bool)

(assert (=> b!185455 (= e!122048 tp_is_empty!4339)))

(declare-fun res!87743 () Bool)

(declare-fun e!122045 () Bool)

(assert (=> start!18784 (=> (not res!87743) (not e!122045))))

(declare-fun valid!1048 (LongMapFixedSize!2560) Bool)

(assert (=> start!18784 (= res!87743 (valid!1048 thiss!1248))))

(assert (=> start!18784 e!122045))

(declare-fun e!122044 () Bool)

(assert (=> start!18784 e!122044))

(assert (=> start!18784 true))

(declare-fun b!185456 () Bool)

(declare-fun res!87739 () Bool)

(assert (=> b!185456 (=> (not res!87739) (not e!122046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7884 (_ BitVec 32)) Bool)

(assert (=> b!185456 (= res!87739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5720 thiss!1248) (mask!8889 thiss!1248)))))

(declare-fun mapNonEmpty!7467 () Bool)

(declare-fun tp!16497 () Bool)

(assert (=> mapNonEmpty!7467 (= mapRes!7467 (and tp!16497 e!122048))))

(declare-fun mapValue!7467 () ValueCell!1826)

(declare-fun mapKey!7467 () (_ BitVec 32))

(declare-fun mapRest!7467 () (Array (_ BitVec 32) ValueCell!1826))

(assert (=> mapNonEmpty!7467 (= (arr!3723 (_values!3764 thiss!1248)) (store mapRest!7467 mapKey!7467 mapValue!7467))))

(declare-fun b!185457 () Bool)

(declare-fun e!122043 () Bool)

(assert (=> b!185457 (= e!122043 tp_is_empty!4339)))

(declare-fun e!122047 () Bool)

(declare-fun array_inv!2399 (array!7884) Bool)

(declare-fun array_inv!2400 (array!7886) Bool)

(assert (=> b!185458 (= e!122044 (and tp!16496 tp_is_empty!4339 (array_inv!2399 (_keys!5720 thiss!1248)) (array_inv!2400 (_values!3764 thiss!1248)) e!122047))))

(declare-fun b!185459 () Bool)

(assert (=> b!185459 (= e!122045 e!122046)))

(declare-fun res!87741 () Bool)

(assert (=> b!185459 (=> (not res!87741) (not e!122046))))

(declare-datatypes ((SeekEntryResult!643 0))(
  ( (MissingZero!643 (index!4742 (_ BitVec 32))) (Found!643 (index!4743 (_ BitVec 32))) (Intermediate!643 (undefined!1455 Bool) (index!4744 (_ BitVec 32)) (x!20155 (_ BitVec 32))) (Undefined!643) (MissingVacant!643 (index!4745 (_ BitVec 32))) )
))
(declare-fun lt!91771 () SeekEntryResult!643)

(assert (=> b!185459 (= res!87741 (and (not (is-Undefined!643 lt!91771)) (not (is-MissingVacant!643 lt!91771)) (not (is-MissingZero!643 lt!91771)) (is-Found!643 lt!91771)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7884 (_ BitVec 32)) SeekEntryResult!643)

(assert (=> b!185459 (= lt!91771 (seekEntryOrOpen!0 key!828 (_keys!5720 thiss!1248) (mask!8889 thiss!1248)))))

(declare-fun b!185460 () Bool)

(declare-fun res!87742 () Bool)

(assert (=> b!185460 (=> (not res!87742) (not e!122046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185460 (= res!87742 (validMask!0 (mask!8889 thiss!1248)))))

(declare-fun b!185461 () Bool)

(assert (=> b!185461 (= e!122047 (and e!122043 mapRes!7467))))

(declare-fun condMapEmpty!7467 () Bool)

(declare-fun mapDefault!7467 () ValueCell!1826)

