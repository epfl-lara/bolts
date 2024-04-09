; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16216 () Bool)

(assert start!16216)

(declare-fun b!161599 () Bool)

(declare-fun b_free!3665 () Bool)

(declare-fun b_next!3665 () Bool)

(assert (=> b!161599 (= b_free!3665 (not b_next!3665))))

(declare-fun tp!13565 () Bool)

(declare-fun b_and!10097 () Bool)

(assert (=> b!161599 (= tp!13565 b_and!10097)))

(declare-fun b!161598 () Bool)

(declare-fun res!76588 () Bool)

(declare-fun e!105660 () Bool)

(assert (=> b!161598 (=> (not res!76588) (not e!105660))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161598 (= res!76588 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3467 () Bool)

(declare-datatypes ((V!4269 0))(
  ( (V!4270 (val!1778 Int)) )
))
(declare-datatypes ((ValueCell!1390 0))(
  ( (ValueCellFull!1390 (v!3639 V!4269)) (EmptyCell!1390) )
))
(declare-datatypes ((array!6012 0))(
  ( (array!6013 (arr!2850 (Array (_ BitVec 32) (_ BitVec 64))) (size!3134 (_ BitVec 32))) )
))
(declare-datatypes ((array!6014 0))(
  ( (array!6015 (arr!2851 (Array (_ BitVec 32) ValueCell!1390)) (size!3135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1688 0))(
  ( (LongMapFixedSize!1689 (defaultEntry!3286 Int) (mask!7882 (_ BitVec 32)) (extraKeys!3027 (_ BitVec 32)) (zeroValue!3129 V!4269) (minValue!3129 V!4269) (_size!893 (_ BitVec 32)) (_keys!5087 array!6012) (_values!3269 array!6014) (_vacant!893 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1688)

(declare-fun e!105661 () Bool)

(declare-fun e!105657 () Bool)

(declare-fun array_inv!1809 (array!6012) Bool)

(declare-fun array_inv!1810 (array!6014) Bool)

(assert (=> b!161599 (= e!105661 (and tp!13565 tp_is_empty!3467 (array_inv!1809 (_keys!5087 thiss!1248)) (array_inv!1810 (_values!3269 thiss!1248)) e!105657))))

(declare-fun b!161600 () Bool)

(declare-fun e!105658 () Bool)

(assert (=> b!161600 (= e!105658 tp_is_empty!3467)))

(declare-fun b!161601 () Bool)

(declare-fun e!105662 () Bool)

(assert (=> b!161601 (= e!105662 tp_is_empty!3467)))

(declare-fun mapNonEmpty!5888 () Bool)

(declare-fun mapRes!5888 () Bool)

(declare-fun tp!13564 () Bool)

(assert (=> mapNonEmpty!5888 (= mapRes!5888 (and tp!13564 e!105658))))

(declare-fun mapRest!5888 () (Array (_ BitVec 32) ValueCell!1390))

(declare-fun mapKey!5888 () (_ BitVec 32))

(declare-fun mapValue!5888 () ValueCell!1390)

(assert (=> mapNonEmpty!5888 (= (arr!2851 (_values!3269 thiss!1248)) (store mapRest!5888 mapKey!5888 mapValue!5888))))

(declare-fun res!76589 () Bool)

(assert (=> start!16216 (=> (not res!76589) (not e!105660))))

(declare-fun valid!764 (LongMapFixedSize!1688) Bool)

(assert (=> start!16216 (= res!76589 (valid!764 thiss!1248))))

(assert (=> start!16216 e!105660))

(assert (=> start!16216 e!105661))

(assert (=> start!16216 true))

(declare-fun mapIsEmpty!5888 () Bool)

(assert (=> mapIsEmpty!5888 mapRes!5888))

(declare-fun b!161602 () Bool)

(assert (=> b!161602 (= e!105660 false)))

(declare-datatypes ((SeekEntryResult!365 0))(
  ( (MissingZero!365 (index!3628 (_ BitVec 32))) (Found!365 (index!3629 (_ BitVec 32))) (Intermediate!365 (undefined!1177 Bool) (index!3630 (_ BitVec 32)) (x!17845 (_ BitVec 32))) (Undefined!365) (MissingVacant!365 (index!3631 (_ BitVec 32))) )
))
(declare-fun lt!82277 () SeekEntryResult!365)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6012 (_ BitVec 32)) SeekEntryResult!365)

(assert (=> b!161602 (= lt!82277 (seekEntryOrOpen!0 key!828 (_keys!5087 thiss!1248) (mask!7882 thiss!1248)))))

(declare-fun b!161603 () Bool)

(assert (=> b!161603 (= e!105657 (and e!105662 mapRes!5888))))

(declare-fun condMapEmpty!5888 () Bool)

(declare-fun mapDefault!5888 () ValueCell!1390)

