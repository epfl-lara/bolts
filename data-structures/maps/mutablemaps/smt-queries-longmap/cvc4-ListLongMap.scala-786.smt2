; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18742 () Bool)

(assert start!18742)

(declare-fun b!185064 () Bool)

(declare-fun b_free!4559 () Bool)

(declare-fun b_next!4559 () Bool)

(assert (=> b!185064 (= b_free!4559 (not b_next!4559))))

(declare-fun tp!16467 () Bool)

(declare-fun b_and!11173 () Bool)

(assert (=> b!185064 (= tp!16467 b_and!11173)))

(declare-fun b!185062 () Bool)

(declare-fun e!121808 () Bool)

(declare-fun tp_is_empty!4331 () Bool)

(assert (=> b!185062 (= e!121808 tp_is_empty!4331)))

(declare-fun b!185063 () Bool)

(declare-fun res!87552 () Bool)

(declare-fun e!121807 () Bool)

(assert (=> b!185063 (=> (not res!87552) (not e!121807))))

(declare-datatypes ((V!5421 0))(
  ( (V!5422 (val!2210 Int)) )
))
(declare-datatypes ((ValueCell!1822 0))(
  ( (ValueCellFull!1822 (v!4114 V!5421)) (EmptyCell!1822) )
))
(declare-datatypes ((array!7864 0))(
  ( (array!7865 (arr!3714 (Array (_ BitVec 32) (_ BitVec 64))) (size!4030 (_ BitVec 32))) )
))
(declare-datatypes ((array!7866 0))(
  ( (array!7867 (arr!3715 (Array (_ BitVec 32) ValueCell!1822)) (size!4031 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2552 0))(
  ( (LongMapFixedSize!2553 (defaultEntry!3775 Int) (mask!8873 (_ BitVec 32)) (extraKeys!3512 (_ BitVec 32)) (zeroValue!3616 V!5421) (minValue!3616 V!5421) (_size!1325 (_ BitVec 32)) (_keys!5710 array!7864) (_values!3758 array!7866) (_vacant!1325 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2552)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3438 0))(
  ( (tuple2!3439 (_1!1729 (_ BitVec 64)) (_2!1729 V!5421)) )
))
(declare-datatypes ((List!2373 0))(
  ( (Nil!2370) (Cons!2369 (h!3002 tuple2!3438) (t!7259 List!2373)) )
))
(declare-datatypes ((ListLongMap!2369 0))(
  ( (ListLongMap!2370 (toList!1200 List!2373)) )
))
(declare-fun contains!1288 (ListLongMap!2369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!843 (array!7864 array!7866 (_ BitVec 32) (_ BitVec 32) V!5421 V!5421 (_ BitVec 32) Int) ListLongMap!2369)

(assert (=> b!185063 (= res!87552 (not (contains!1288 (getCurrentListMap!843 (_keys!5710 thiss!1248) (_values!3758 thiss!1248) (mask!8873 thiss!1248) (extraKeys!3512 thiss!1248) (zeroValue!3616 thiss!1248) (minValue!3616 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3775 thiss!1248)) key!828)))))

(declare-fun e!121804 () Bool)

(declare-fun e!121803 () Bool)

(declare-fun array_inv!2393 (array!7864) Bool)

(declare-fun array_inv!2394 (array!7866) Bool)

(assert (=> b!185064 (= e!121803 (and tp!16467 tp_is_empty!4331 (array_inv!2393 (_keys!5710 thiss!1248)) (array_inv!2394 (_values!3758 thiss!1248)) e!121804))))

(declare-fun b!185065 () Bool)

(declare-fun res!87556 () Bool)

(assert (=> b!185065 (=> (not res!87556) (not e!121807))))

(assert (=> b!185065 (= res!87556 (and (= (size!4031 (_values!3758 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8873 thiss!1248))) (= (size!4030 (_keys!5710 thiss!1248)) (size!4031 (_values!3758 thiss!1248))) (bvsge (mask!8873 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3512 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3512 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185066 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7864 (_ BitVec 32)) Bool)

(assert (=> b!185066 (= e!121807 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5710 thiss!1248) (mask!8873 thiss!1248))))))

(declare-fun b!185067 () Bool)

(declare-fun res!87555 () Bool)

(assert (=> b!185067 (=> (not res!87555) (not e!121807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185067 (= res!87555 (validMask!0 (mask!8873 thiss!1248)))))

(declare-fun b!185068 () Bool)

(declare-fun e!121809 () Bool)

(assert (=> b!185068 (= e!121809 e!121807)))

(declare-fun res!87557 () Bool)

(assert (=> b!185068 (=> (not res!87557) (not e!121807))))

(declare-datatypes ((SeekEntryResult!640 0))(
  ( (MissingZero!640 (index!4730 (_ BitVec 32))) (Found!640 (index!4731 (_ BitVec 32))) (Intermediate!640 (undefined!1452 Bool) (index!4732 (_ BitVec 32)) (x!20116 (_ BitVec 32))) (Undefined!640) (MissingVacant!640 (index!4733 (_ BitVec 32))) )
))
(declare-fun lt!91567 () SeekEntryResult!640)

(assert (=> b!185068 (= res!87557 (and (not (is-Undefined!640 lt!91567)) (not (is-MissingVacant!640 lt!91567)) (not (is-MissingZero!640 lt!91567)) (is-Found!640 lt!91567)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7864 (_ BitVec 32)) SeekEntryResult!640)

(assert (=> b!185068 (= lt!91567 (seekEntryOrOpen!0 key!828 (_keys!5710 thiss!1248) (mask!8873 thiss!1248)))))

(declare-fun b!185069 () Bool)

(declare-fun res!87554 () Bool)

(assert (=> b!185069 (=> (not res!87554) (not e!121809))))

(assert (=> b!185069 (= res!87554 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185070 () Bool)

(declare-fun e!121805 () Bool)

(declare-fun mapRes!7449 () Bool)

(assert (=> b!185070 (= e!121804 (and e!121805 mapRes!7449))))

(declare-fun condMapEmpty!7449 () Bool)

(declare-fun mapDefault!7449 () ValueCell!1822)

