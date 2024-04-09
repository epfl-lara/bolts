; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19270 () Bool)

(assert start!19270)

(declare-fun b!189455 () Bool)

(declare-fun b_free!4649 () Bool)

(declare-fun b_next!4649 () Bool)

(assert (=> b!189455 (= b_free!4649 (not b_next!4649))))

(declare-fun tp!16779 () Bool)

(declare-fun b_and!11305 () Bool)

(assert (=> b!189455 (= tp!16779 b_and!11305)))

(declare-fun b!189453 () Bool)

(declare-fun e!124676 () Bool)

(declare-fun tp_is_empty!4421 () Bool)

(assert (=> b!189453 (= e!124676 tp_is_empty!4421)))

(declare-fun mapIsEmpty!7627 () Bool)

(declare-fun mapRes!7627 () Bool)

(assert (=> mapIsEmpty!7627 mapRes!7627))

(declare-fun b!189454 () Bool)

(declare-datatypes ((Unit!5714 0))(
  ( (Unit!5715) )
))
(declare-fun e!124678 () Unit!5714)

(declare-fun lt!93792 () Unit!5714)

(assert (=> b!189454 (= e!124678 lt!93792)))

(declare-datatypes ((V!5541 0))(
  ( (V!5542 (val!2255 Int)) )
))
(declare-datatypes ((ValueCell!1867 0))(
  ( (ValueCellFull!1867 (v!4172 V!5541)) (EmptyCell!1867) )
))
(declare-datatypes ((array!8070 0))(
  ( (array!8071 (arr!3804 (Array (_ BitVec 32) (_ BitVec 64))) (size!4124 (_ BitVec 32))) )
))
(declare-datatypes ((array!8072 0))(
  ( (array!8073 (arr!3805 (Array (_ BitVec 32) ValueCell!1867)) (size!4125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2642 0))(
  ( (LongMapFixedSize!2643 (defaultEntry!3865 Int) (mask!9052 (_ BitVec 32)) (extraKeys!3602 (_ BitVec 32)) (zeroValue!3706 V!5541) (minValue!3706 V!5541) (_size!1370 (_ BitVec 32)) (_keys!5832 array!8070) (_values!3848 array!8072) (_vacant!1370 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2642)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!165 (array!8070 array!8072 (_ BitVec 32) (_ BitVec 32) V!5541 V!5541 (_ BitVec 64) Int) Unit!5714)

(assert (=> b!189454 (= lt!93792 (lemmaInListMapThenSeekEntryOrOpenFindsIt!165 (_keys!5832 thiss!1248) (_values!3848 thiss!1248) (mask!9052 thiss!1248) (extraKeys!3602 thiss!1248) (zeroValue!3706 thiss!1248) (minValue!3706 thiss!1248) key!828 (defaultEntry!3865 thiss!1248)))))

(declare-fun res!89613 () Bool)

(declare-datatypes ((SeekEntryResult!674 0))(
  ( (MissingZero!674 (index!4866 (_ BitVec 32))) (Found!674 (index!4867 (_ BitVec 32))) (Intermediate!674 (undefined!1486 Bool) (index!4868 (_ BitVec 32)) (x!20432 (_ BitVec 32))) (Undefined!674) (MissingVacant!674 (index!4869 (_ BitVec 32))) )
))
(declare-fun lt!93794 () SeekEntryResult!674)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189454 (= res!89613 (inRange!0 (index!4867 lt!93794) (mask!9052 thiss!1248)))))

(declare-fun e!124675 () Bool)

(assert (=> b!189454 (=> (not res!89613) (not e!124675))))

(assert (=> b!189454 e!124675))

(declare-fun e!124679 () Bool)

(declare-fun e!124677 () Bool)

(declare-fun array_inv!2457 (array!8070) Bool)

(declare-fun array_inv!2458 (array!8072) Bool)

(assert (=> b!189455 (= e!124677 (and tp!16779 tp_is_empty!4421 (array_inv!2457 (_keys!5832 thiss!1248)) (array_inv!2458 (_values!3848 thiss!1248)) e!124679))))

(declare-fun b!189456 () Bool)

(declare-fun res!89607 () Bool)

(declare-fun e!124673 () Bool)

(assert (=> b!189456 (=> (not res!89607) (not e!124673))))

(assert (=> b!189456 (= res!89607 (not (= key!828 (bvneg key!828))))))

(declare-fun b!189458 () Bool)

(declare-fun e!124674 () Bool)

(assert (=> b!189458 (= e!124679 (and e!124674 mapRes!7627))))

(declare-fun condMapEmpty!7627 () Bool)

(declare-fun mapDefault!7627 () ValueCell!1867)

