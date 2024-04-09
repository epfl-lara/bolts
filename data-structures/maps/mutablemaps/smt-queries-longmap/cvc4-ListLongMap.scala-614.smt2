; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16008 () Bool)

(assert start!16008)

(declare-fun b!158798 () Bool)

(declare-fun b_free!3497 () Bool)

(declare-fun b_next!3497 () Bool)

(assert (=> b!158798 (= b_free!3497 (not b_next!3497))))

(declare-fun tp!13052 () Bool)

(declare-fun b_and!9929 () Bool)

(assert (=> b!158798 (= tp!13052 b_and!9929)))

(declare-fun b!158796 () Bool)

(declare-fun res!74994 () Bool)

(declare-fun e!103998 () Bool)

(assert (=> b!158796 (=> (not res!74994) (not e!103998))))

(declare-datatypes ((V!4045 0))(
  ( (V!4046 (val!1694 Int)) )
))
(declare-datatypes ((ValueCell!1306 0))(
  ( (ValueCellFull!1306 (v!3555 V!4045)) (EmptyCell!1306) )
))
(declare-datatypes ((array!5670 0))(
  ( (array!5671 (arr!2682 (Array (_ BitVec 32) (_ BitVec 64))) (size!2966 (_ BitVec 32))) )
))
(declare-datatypes ((array!5672 0))(
  ( (array!5673 (arr!2683 (Array (_ BitVec 32) ValueCell!1306)) (size!2967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1520 0))(
  ( (LongMapFixedSize!1521 (defaultEntry!3202 Int) (mask!7733 (_ BitVec 32)) (extraKeys!2943 (_ BitVec 32)) (zeroValue!3045 V!4045) (minValue!3045 V!4045) (_size!809 (_ BitVec 32)) (_keys!4997 array!5670) (_values!3185 array!5672) (_vacant!809 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1520)

(assert (=> b!158796 (= res!74994 (and (= (size!2967 (_values!3185 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7733 thiss!1248))) (= (size!2966 (_keys!4997 thiss!1248)) (size!2967 (_values!3185 thiss!1248))) (bvsge (mask!7733 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2943 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2943 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!158797 () Bool)

(declare-fun e!103995 () Bool)

(declare-fun tp_is_empty!3299 () Bool)

(assert (=> b!158797 (= e!103995 tp_is_empty!3299)))

(declare-fun e!104000 () Bool)

(declare-fun e!103997 () Bool)

(declare-fun array_inv!1699 (array!5670) Bool)

(declare-fun array_inv!1700 (array!5672) Bool)

(assert (=> b!158798 (= e!103997 (and tp!13052 tp_is_empty!3299 (array_inv!1699 (_keys!4997 thiss!1248)) (array_inv!1700 (_values!3185 thiss!1248)) e!104000))))

(declare-fun b!158799 () Bool)

(declare-fun e!103996 () Bool)

(assert (=> b!158799 (= e!103996 tp_is_empty!3299)))

(declare-fun mapNonEmpty!5627 () Bool)

(declare-fun mapRes!5627 () Bool)

(declare-fun tp!13051 () Bool)

(assert (=> mapNonEmpty!5627 (= mapRes!5627 (and tp!13051 e!103995))))

(declare-fun mapValue!5627 () ValueCell!1306)

(declare-fun mapRest!5627 () (Array (_ BitVec 32) ValueCell!1306))

(declare-fun mapKey!5627 () (_ BitVec 32))

(assert (=> mapNonEmpty!5627 (= (arr!2683 (_values!3185 thiss!1248)) (store mapRest!5627 mapKey!5627 mapValue!5627))))

(declare-fun b!158800 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5670 (_ BitVec 32)) Bool)

(assert (=> b!158800 (= e!103998 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4997 thiss!1248) (mask!7733 thiss!1248))))))

(declare-fun b!158801 () Bool)

(declare-fun res!74993 () Bool)

(assert (=> b!158801 (=> (not res!74993) (not e!103998))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!314 0))(
  ( (MissingZero!314 (index!3424 (_ BitVec 32))) (Found!314 (index!3425 (_ BitVec 32))) (Intermediate!314 (undefined!1126 Bool) (index!3426 (_ BitVec 32)) (x!17546 (_ BitVec 32))) (Undefined!314) (MissingVacant!314 (index!3427 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5670 (_ BitVec 32)) SeekEntryResult!314)

(assert (=> b!158801 (= res!74993 (is-Undefined!314 (seekEntryOrOpen!0 key!828 (_keys!4997 thiss!1248) (mask!7733 thiss!1248))))))

(declare-fun b!158803 () Bool)

(declare-fun res!74992 () Bool)

(assert (=> b!158803 (=> (not res!74992) (not e!103998))))

(assert (=> b!158803 (= res!74992 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158804 () Bool)

(declare-fun res!74996 () Bool)

(assert (=> b!158804 (=> (not res!74996) (not e!103998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158804 (= res!74996 (validMask!0 (mask!7733 thiss!1248)))))

(declare-fun mapIsEmpty!5627 () Bool)

(assert (=> mapIsEmpty!5627 mapRes!5627))

(declare-fun res!74995 () Bool)

(assert (=> start!16008 (=> (not res!74995) (not e!103998))))

(declare-fun valid!712 (LongMapFixedSize!1520) Bool)

(assert (=> start!16008 (= res!74995 (valid!712 thiss!1248))))

(assert (=> start!16008 e!103998))

(assert (=> start!16008 e!103997))

(assert (=> start!16008 true))

(declare-fun b!158802 () Bool)

(assert (=> b!158802 (= e!104000 (and e!103996 mapRes!5627))))

(declare-fun condMapEmpty!5627 () Bool)

(declare-fun mapDefault!5627 () ValueCell!1306)

