; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21716 () Bool)

(assert start!21716)

(declare-fun b!218050 () Bool)

(declare-fun b_free!5853 () Bool)

(declare-fun b_next!5853 () Bool)

(assert (=> b!218050 (= b_free!5853 (not b_next!5853))))

(declare-fun tp!20694 () Bool)

(declare-fun b_and!12761 () Bool)

(assert (=> b!218050 (= tp!20694 b_and!12761)))

(declare-fun b!218042 () Bool)

(declare-fun res!106881 () Bool)

(declare-fun e!141846 () Bool)

(assert (=> b!218042 (=> (not res!106881) (not e!141846))))

(declare-datatypes ((V!7267 0))(
  ( (V!7268 (val!2902 Int)) )
))
(declare-datatypes ((ValueCell!2514 0))(
  ( (ValueCellFull!2514 (v!4916 V!7267)) (EmptyCell!2514) )
))
(declare-datatypes ((array!10668 0))(
  ( (array!10669 (arr!5055 (Array (_ BitVec 32) ValueCell!2514)) (size!5387 (_ BitVec 32))) )
))
(declare-datatypes ((array!10670 0))(
  ( (array!10671 (arr!5056 (Array (_ BitVec 32) (_ BitVec 64))) (size!5388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2928 0))(
  ( (LongMapFixedSize!2929 (defaultEntry!4114 Int) (mask!9883 (_ BitVec 32)) (extraKeys!3851 (_ BitVec 32)) (zeroValue!3955 V!7267) (minValue!3955 V!7267) (_size!1513 (_ BitVec 32)) (_keys!6163 array!10670) (_values!4097 array!10668) (_vacant!1513 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2928)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218042 (= res!106881 (validMask!0 (mask!9883 thiss!1504)))))

(declare-fun b!218043 () Bool)

(declare-fun res!106876 () Bool)

(assert (=> b!218043 (=> (not res!106876) (not e!141846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10670 (_ BitVec 32)) Bool)

(assert (=> b!218043 (= res!106876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6163 thiss!1504) (mask!9883 thiss!1504)))))

(declare-fun b!218044 () Bool)

(assert (=> b!218044 (= e!141846 false)))

(declare-fun lt!111486 () Bool)

(declare-datatypes ((List!3238 0))(
  ( (Nil!3235) (Cons!3234 (h!3881 (_ BitVec 64)) (t!8201 List!3238)) )
))
(declare-fun arrayNoDuplicates!0 (array!10670 (_ BitVec 32) List!3238) Bool)

(assert (=> b!218044 (= lt!111486 (arrayNoDuplicates!0 (_keys!6163 thiss!1504) #b00000000000000000000000000000000 Nil!3235))))

(declare-fun b!218045 () Bool)

(declare-fun res!106879 () Bool)

(declare-fun e!141851 () Bool)

(assert (=> b!218045 (=> (not res!106879) (not e!141851))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!218045 (= res!106879 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!106875 () Bool)

(assert (=> start!21716 (=> (not res!106875) (not e!141851))))

(declare-fun valid!1179 (LongMapFixedSize!2928) Bool)

(assert (=> start!21716 (= res!106875 (valid!1179 thiss!1504))))

(assert (=> start!21716 e!141851))

(declare-fun e!141848 () Bool)

(assert (=> start!21716 e!141848))

(assert (=> start!21716 true))

(declare-fun b!218046 () Bool)

(declare-fun e!141852 () Bool)

(declare-fun tp_is_empty!5715 () Bool)

(assert (=> b!218046 (= e!141852 tp_is_empty!5715)))

(declare-fun b!218047 () Bool)

(declare-fun res!106878 () Bool)

(assert (=> b!218047 (=> (not res!106878) (not e!141846))))

(declare-datatypes ((tuple2!4308 0))(
  ( (tuple2!4309 (_1!2164 (_ BitVec 64)) (_2!2164 V!7267)) )
))
(declare-datatypes ((List!3239 0))(
  ( (Nil!3236) (Cons!3235 (h!3882 tuple2!4308) (t!8202 List!3239)) )
))
(declare-datatypes ((ListLongMap!3235 0))(
  ( (ListLongMap!3236 (toList!1633 List!3239)) )
))
(declare-fun contains!1468 (ListLongMap!3235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1156 (array!10670 array!10668 (_ BitVec 32) (_ BitVec 32) V!7267 V!7267 (_ BitVec 32) Int) ListLongMap!3235)

(assert (=> b!218047 (= res!106878 (not (contains!1468 (getCurrentListMap!1156 (_keys!6163 thiss!1504) (_values!4097 thiss!1504) (mask!9883 thiss!1504) (extraKeys!3851 thiss!1504) (zeroValue!3955 thiss!1504) (minValue!3955 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4114 thiss!1504)) key!932)))))

(declare-fun b!218048 () Bool)

(assert (=> b!218048 (= e!141851 e!141846)))

(declare-fun res!106877 () Bool)

(assert (=> b!218048 (=> (not res!106877) (not e!141846))))

(declare-datatypes ((SeekEntryResult!790 0))(
  ( (MissingZero!790 (index!5330 (_ BitVec 32))) (Found!790 (index!5331 (_ BitVec 32))) (Intermediate!790 (undefined!1602 Bool) (index!5332 (_ BitVec 32)) (x!22814 (_ BitVec 32))) (Undefined!790) (MissingVacant!790 (index!5333 (_ BitVec 32))) )
))
(declare-fun lt!111487 () SeekEntryResult!790)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218048 (= res!106877 (or (= lt!111487 (MissingZero!790 index!297)) (= lt!111487 (MissingVacant!790 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10670 (_ BitVec 32)) SeekEntryResult!790)

(assert (=> b!218048 (= lt!111487 (seekEntryOrOpen!0 key!932 (_keys!6163 thiss!1504) (mask!9883 thiss!1504)))))

(declare-fun b!218049 () Bool)

(declare-fun e!141849 () Bool)

(declare-fun e!141847 () Bool)

(declare-fun mapRes!9735 () Bool)

(assert (=> b!218049 (= e!141849 (and e!141847 mapRes!9735))))

(declare-fun condMapEmpty!9735 () Bool)

(declare-fun mapDefault!9735 () ValueCell!2514)

(assert (=> b!218049 (= condMapEmpty!9735 (= (arr!5055 (_values!4097 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2514)) mapDefault!9735)))))

(declare-fun array_inv!3339 (array!10670) Bool)

(declare-fun array_inv!3340 (array!10668) Bool)

(assert (=> b!218050 (= e!141848 (and tp!20694 tp_is_empty!5715 (array_inv!3339 (_keys!6163 thiss!1504)) (array_inv!3340 (_values!4097 thiss!1504)) e!141849))))

(declare-fun b!218051 () Bool)

(declare-fun res!106880 () Bool)

(assert (=> b!218051 (=> (not res!106880) (not e!141846))))

(assert (=> b!218051 (= res!106880 (and (= (size!5387 (_values!4097 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9883 thiss!1504))) (= (size!5388 (_keys!6163 thiss!1504)) (size!5387 (_values!4097 thiss!1504))) (bvsge (mask!9883 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3851 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3851 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9735 () Bool)

(assert (=> mapIsEmpty!9735 mapRes!9735))

(declare-fun mapNonEmpty!9735 () Bool)

(declare-fun tp!20693 () Bool)

(assert (=> mapNonEmpty!9735 (= mapRes!9735 (and tp!20693 e!141852))))

(declare-fun mapRest!9735 () (Array (_ BitVec 32) ValueCell!2514))

(declare-fun mapValue!9735 () ValueCell!2514)

(declare-fun mapKey!9735 () (_ BitVec 32))

(assert (=> mapNonEmpty!9735 (= (arr!5055 (_values!4097 thiss!1504)) (store mapRest!9735 mapKey!9735 mapValue!9735))))

(declare-fun b!218052 () Bool)

(assert (=> b!218052 (= e!141847 tp_is_empty!5715)))

(assert (= (and start!21716 res!106875) b!218045))

(assert (= (and b!218045 res!106879) b!218048))

(assert (= (and b!218048 res!106877) b!218047))

(assert (= (and b!218047 res!106878) b!218042))

(assert (= (and b!218042 res!106881) b!218051))

(assert (= (and b!218051 res!106880) b!218043))

(assert (= (and b!218043 res!106876) b!218044))

(assert (= (and b!218049 condMapEmpty!9735) mapIsEmpty!9735))

(assert (= (and b!218049 (not condMapEmpty!9735)) mapNonEmpty!9735))

(get-info :version)

(assert (= (and mapNonEmpty!9735 ((_ is ValueCellFull!2514) mapValue!9735)) b!218046))

(assert (= (and b!218049 ((_ is ValueCellFull!2514) mapDefault!9735)) b!218052))

(assert (= b!218050 b!218049))

(assert (= start!21716 b!218050))

(declare-fun m!244127 () Bool)

(assert (=> start!21716 m!244127))

(declare-fun m!244129 () Bool)

(assert (=> b!218044 m!244129))

(declare-fun m!244131 () Bool)

(assert (=> b!218043 m!244131))

(declare-fun m!244133 () Bool)

(assert (=> b!218042 m!244133))

(declare-fun m!244135 () Bool)

(assert (=> b!218050 m!244135))

(declare-fun m!244137 () Bool)

(assert (=> b!218050 m!244137))

(declare-fun m!244139 () Bool)

(assert (=> b!218047 m!244139))

(assert (=> b!218047 m!244139))

(declare-fun m!244141 () Bool)

(assert (=> b!218047 m!244141))

(declare-fun m!244143 () Bool)

(assert (=> b!218048 m!244143))

(declare-fun m!244145 () Bool)

(assert (=> mapNonEmpty!9735 m!244145))

(check-sat (not b!218048) (not b!218042) (not b!218050) (not mapNonEmpty!9735) b_and!12761 (not b!218044) (not start!21716) (not b!218043) tp_is_empty!5715 (not b_next!5853) (not b!218047))
(check-sat b_and!12761 (not b_next!5853))
