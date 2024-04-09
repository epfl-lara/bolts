; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16120 () Bool)

(assert start!16120)

(declare-fun b!160152 () Bool)

(declare-fun b_free!3569 () Bool)

(declare-fun b_next!3569 () Bool)

(assert (=> b!160152 (= b_free!3569 (not b_next!3569))))

(declare-fun tp!13277 () Bool)

(declare-fun b_and!10001 () Bool)

(assert (=> b!160152 (= tp!13277 b_and!10001)))

(declare-fun b!160144 () Bool)

(declare-fun res!75800 () Bool)

(declare-fun e!104751 () Bool)

(assert (=> b!160144 (=> (not res!75800) (not e!104751))))

(declare-datatypes ((V!4141 0))(
  ( (V!4142 (val!1730 Int)) )
))
(declare-datatypes ((ValueCell!1342 0))(
  ( (ValueCellFull!1342 (v!3591 V!4141)) (EmptyCell!1342) )
))
(declare-datatypes ((array!5820 0))(
  ( (array!5821 (arr!2754 (Array (_ BitVec 32) (_ BitVec 64))) (size!3038 (_ BitVec 32))) )
))
(declare-datatypes ((array!5822 0))(
  ( (array!5823 (arr!2755 (Array (_ BitVec 32) ValueCell!1342)) (size!3039 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1592 0))(
  ( (LongMapFixedSize!1593 (defaultEntry!3238 Int) (mask!7802 (_ BitVec 32)) (extraKeys!2979 (_ BitVec 32)) (zeroValue!3081 V!4141) (minValue!3081 V!4141) (_size!845 (_ BitVec 32)) (_keys!5039 array!5820) (_values!3221 array!5822) (_vacant!845 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1592)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160144 (= res!75800 (validMask!0 (mask!7802 thiss!1248)))))

(declare-fun b!160145 () Bool)

(declare-fun res!75804 () Bool)

(assert (=> b!160145 (=> (not res!75804) (not e!104751))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160145 (= res!75804 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5744 () Bool)

(declare-fun mapRes!5744 () Bool)

(assert (=> mapIsEmpty!5744 mapRes!5744))

(declare-fun b!160146 () Bool)

(declare-fun res!75806 () Bool)

(assert (=> b!160146 (=> (not res!75806) (not e!104751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5820 (_ BitVec 32)) Bool)

(assert (=> b!160146 (= res!75806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5039 thiss!1248) (mask!7802 thiss!1248)))))

(declare-fun b!160147 () Bool)

(assert (=> b!160147 (= e!104751 false)))

(declare-fun lt!82088 () Bool)

(declare-datatypes ((List!1955 0))(
  ( (Nil!1952) (Cons!1951 (h!2564 (_ BitVec 64)) (t!6765 List!1955)) )
))
(declare-fun arrayNoDuplicates!0 (array!5820 (_ BitVec 32) List!1955) Bool)

(assert (=> b!160147 (= lt!82088 (arrayNoDuplicates!0 (_keys!5039 thiss!1248) #b00000000000000000000000000000000 Nil!1952))))

(declare-fun res!75802 () Bool)

(assert (=> start!16120 (=> (not res!75802) (not e!104751))))

(declare-fun valid!735 (LongMapFixedSize!1592) Bool)

(assert (=> start!16120 (= res!75802 (valid!735 thiss!1248))))

(assert (=> start!16120 e!104751))

(declare-fun e!104748 () Bool)

(assert (=> start!16120 e!104748))

(assert (=> start!16120 true))

(declare-fun b!160148 () Bool)

(declare-fun res!75805 () Bool)

(assert (=> b!160148 (=> (not res!75805) (not e!104751))))

(assert (=> b!160148 (= res!75805 (and (= (size!3039 (_values!3221 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7802 thiss!1248))) (= (size!3038 (_keys!5039 thiss!1248)) (size!3039 (_values!3221 thiss!1248))) (bvsge (mask!7802 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2979 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2979 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160149 () Bool)

(declare-fun e!104750 () Bool)

(declare-fun e!104753 () Bool)

(assert (=> b!160149 (= e!104750 (and e!104753 mapRes!5744))))

(declare-fun condMapEmpty!5744 () Bool)

(declare-fun mapDefault!5744 () ValueCell!1342)

