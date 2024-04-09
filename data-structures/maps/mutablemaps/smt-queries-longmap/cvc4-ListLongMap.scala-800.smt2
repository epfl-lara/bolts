; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19238 () Bool)

(assert start!19238)

(declare-fun b!189158 () Bool)

(declare-fun b_free!4643 () Bool)

(declare-fun b_next!4643 () Bool)

(assert (=> b!189158 (= b_free!4643 (not b_next!4643))))

(declare-fun tp!16759 () Bool)

(declare-fun b_and!11297 () Bool)

(assert (=> b!189158 (= tp!16759 b_and!11297)))

(declare-fun b!189144 () Bool)

(declare-fun res!89449 () Bool)

(declare-fun e!124492 () Bool)

(assert (=> b!189144 (=> (not res!89449) (not e!124492))))

(declare-datatypes ((V!5533 0))(
  ( (V!5534 (val!2252 Int)) )
))
(declare-datatypes ((ValueCell!1864 0))(
  ( (ValueCellFull!1864 (v!4168 V!5533)) (EmptyCell!1864) )
))
(declare-datatypes ((array!8056 0))(
  ( (array!8057 (arr!3798 (Array (_ BitVec 32) (_ BitVec 64))) (size!4118 (_ BitVec 32))) )
))
(declare-datatypes ((array!8058 0))(
  ( (array!8059 (arr!3799 (Array (_ BitVec 32) ValueCell!1864)) (size!4119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2636 0))(
  ( (LongMapFixedSize!2637 (defaultEntry!3859 Int) (mask!9040 (_ BitVec 32)) (extraKeys!3596 (_ BitVec 32)) (zeroValue!3700 V!5533) (minValue!3700 V!5533) (_size!1367 (_ BitVec 32)) (_keys!5824 array!8056) (_values!3842 array!8058) (_vacant!1367 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2636)

(declare-datatypes ((List!2425 0))(
  ( (Nil!2422) (Cons!2421 (h!3058 (_ BitVec 64)) (t!7335 List!2425)) )
))
(declare-fun arrayNoDuplicates!0 (array!8056 (_ BitVec 32) List!2425) Bool)

(assert (=> b!189144 (= res!89449 (arrayNoDuplicates!0 (_keys!5824 thiss!1248) #b00000000000000000000000000000000 Nil!2422))))

(declare-fun b!189145 () Bool)

(declare-datatypes ((Unit!5703 0))(
  ( (Unit!5704) )
))
(declare-fun e!124491 () Unit!5703)

(declare-fun Unit!5705 () Unit!5703)

(assert (=> b!189145 (= e!124491 Unit!5705)))

(declare-fun lt!93648 () Unit!5703)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!163 (array!8056 array!8058 (_ BitVec 32) (_ BitVec 32) V!5533 V!5533 (_ BitVec 64) Int) Unit!5703)

(assert (=> b!189145 (= lt!93648 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!163 (_keys!5824 thiss!1248) (_values!3842 thiss!1248) (mask!9040 thiss!1248) (extraKeys!3596 thiss!1248) (zeroValue!3700 thiss!1248) (minValue!3700 thiss!1248) key!828 (defaultEntry!3859 thiss!1248)))))

(assert (=> b!189145 false))

(declare-fun mapIsEmpty!7615 () Bool)

(declare-fun mapRes!7615 () Bool)

(assert (=> mapIsEmpty!7615 mapRes!7615))

(declare-fun b!189146 () Bool)

(declare-fun res!89446 () Bool)

(assert (=> b!189146 (=> (not res!89446) (not e!124492))))

(declare-datatypes ((SeekEntryResult!671 0))(
  ( (MissingZero!671 (index!4854 (_ BitVec 32))) (Found!671 (index!4855 (_ BitVec 32))) (Intermediate!671 (undefined!1483 Bool) (index!4856 (_ BitVec 32)) (x!20411 (_ BitVec 32))) (Undefined!671) (MissingVacant!671 (index!4857 (_ BitVec 32))) )
))
(declare-fun lt!93651 () SeekEntryResult!671)

(assert (=> b!189146 (= res!89446 (and (bvsge (index!4855 lt!93651) #b00000000000000000000000000000000) (bvslt (index!4855 lt!93651) (size!4118 (_keys!5824 thiss!1248)))))))

(declare-fun b!189147 () Bool)

(declare-fun e!124488 () Bool)

(declare-fun e!124490 () Bool)

(assert (=> b!189147 (= e!124488 (and e!124490 mapRes!7615))))

(declare-fun condMapEmpty!7615 () Bool)

(declare-fun mapDefault!7615 () ValueCell!1864)

