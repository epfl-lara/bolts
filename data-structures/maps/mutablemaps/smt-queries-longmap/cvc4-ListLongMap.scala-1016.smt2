; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21712 () Bool)

(assert start!21712)

(declare-fun b!217978 () Bool)

(declare-fun b_free!5849 () Bool)

(declare-fun b_next!5849 () Bool)

(assert (=> b!217978 (= b_free!5849 (not b_next!5849))))

(declare-fun tp!20682 () Bool)

(declare-fun b_and!12757 () Bool)

(assert (=> b!217978 (= tp!20682 b_and!12757)))

(declare-fun b!217976 () Bool)

(declare-fun e!141808 () Bool)

(assert (=> b!217976 (= e!141808 false)))

(declare-fun lt!111475 () Bool)

(declare-datatypes ((V!7261 0))(
  ( (V!7262 (val!2900 Int)) )
))
(declare-datatypes ((ValueCell!2512 0))(
  ( (ValueCellFull!2512 (v!4914 V!7261)) (EmptyCell!2512) )
))
(declare-datatypes ((array!10660 0))(
  ( (array!10661 (arr!5051 (Array (_ BitVec 32) ValueCell!2512)) (size!5383 (_ BitVec 32))) )
))
(declare-datatypes ((array!10662 0))(
  ( (array!10663 (arr!5052 (Array (_ BitVec 32) (_ BitVec 64))) (size!5384 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2924 0))(
  ( (LongMapFixedSize!2925 (defaultEntry!4112 Int) (mask!9879 (_ BitVec 32)) (extraKeys!3849 (_ BitVec 32)) (zeroValue!3953 V!7261) (minValue!3953 V!7261) (_size!1511 (_ BitVec 32)) (_keys!6161 array!10662) (_values!4095 array!10660) (_vacant!1511 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2924)

(declare-datatypes ((List!3235 0))(
  ( (Nil!3232) (Cons!3231 (h!3878 (_ BitVec 64)) (t!8198 List!3235)) )
))
(declare-fun arrayNoDuplicates!0 (array!10662 (_ BitVec 32) List!3235) Bool)

(assert (=> b!217976 (= lt!111475 (arrayNoDuplicates!0 (_keys!6161 thiss!1504) #b00000000000000000000000000000000 Nil!3232))))

(declare-fun b!217977 () Bool)

(declare-fun res!106833 () Bool)

(assert (=> b!217977 (=> (not res!106833) (not e!141808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217977 (= res!106833 (validMask!0 (mask!9879 thiss!1504)))))

(declare-fun mapIsEmpty!9729 () Bool)

(declare-fun mapRes!9729 () Bool)

(assert (=> mapIsEmpty!9729 mapRes!9729))

(declare-fun e!141807 () Bool)

(declare-fun e!141806 () Bool)

(declare-fun tp_is_empty!5711 () Bool)

(declare-fun array_inv!3335 (array!10662) Bool)

(declare-fun array_inv!3336 (array!10660) Bool)

(assert (=> b!217978 (= e!141806 (and tp!20682 tp_is_empty!5711 (array_inv!3335 (_keys!6161 thiss!1504)) (array_inv!3336 (_values!4095 thiss!1504)) e!141807))))

(declare-fun b!217979 () Bool)

(declare-fun e!141805 () Bool)

(assert (=> b!217979 (= e!141805 tp_is_empty!5711)))

(declare-fun b!217980 () Bool)

(declare-fun e!141810 () Bool)

(assert (=> b!217980 (= e!141810 e!141808)))

(declare-fun res!106835 () Bool)

(assert (=> b!217980 (=> (not res!106835) (not e!141808))))

(declare-datatypes ((SeekEntryResult!788 0))(
  ( (MissingZero!788 (index!5322 (_ BitVec 32))) (Found!788 (index!5323 (_ BitVec 32))) (Intermediate!788 (undefined!1600 Bool) (index!5324 (_ BitVec 32)) (x!22804 (_ BitVec 32))) (Undefined!788) (MissingVacant!788 (index!5325 (_ BitVec 32))) )
))
(declare-fun lt!111474 () SeekEntryResult!788)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217980 (= res!106835 (or (= lt!111474 (MissingZero!788 index!297)) (= lt!111474 (MissingVacant!788 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10662 (_ BitVec 32)) SeekEntryResult!788)

(assert (=> b!217980 (= lt!111474 (seekEntryOrOpen!0 key!932 (_keys!6161 thiss!1504) (mask!9879 thiss!1504)))))

(declare-fun b!217981 () Bool)

(declare-fun res!106839 () Bool)

(assert (=> b!217981 (=> (not res!106839) (not e!141808))))

(assert (=> b!217981 (= res!106839 (and (= (size!5383 (_values!4095 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9879 thiss!1504))) (= (size!5384 (_keys!6161 thiss!1504)) (size!5383 (_values!4095 thiss!1504))) (bvsge (mask!9879 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3849 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3849 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!106836 () Bool)

(assert (=> start!21712 (=> (not res!106836) (not e!141810))))

(declare-fun valid!1177 (LongMapFixedSize!2924) Bool)

(assert (=> start!21712 (= res!106836 (valid!1177 thiss!1504))))

(assert (=> start!21712 e!141810))

(assert (=> start!21712 e!141806))

(assert (=> start!21712 true))

(declare-fun b!217982 () Bool)

(declare-fun res!106838 () Bool)

(assert (=> b!217982 (=> (not res!106838) (not e!141808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10662 (_ BitVec 32)) Bool)

(assert (=> b!217982 (= res!106838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6161 thiss!1504) (mask!9879 thiss!1504)))))

(declare-fun b!217983 () Bool)

(declare-fun e!141809 () Bool)

(assert (=> b!217983 (= e!141807 (and e!141809 mapRes!9729))))

(declare-fun condMapEmpty!9729 () Bool)

(declare-fun mapDefault!9729 () ValueCell!2512)

