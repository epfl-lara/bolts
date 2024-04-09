; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21626 () Bool)

(assert start!21626)

(declare-fun b!216567 () Bool)

(declare-fun b_free!5763 () Bool)

(declare-fun b_next!5763 () Bool)

(assert (=> b!216567 (= b_free!5763 (not b_next!5763))))

(declare-fun tp!20424 () Bool)

(declare-fun b_and!12671 () Bool)

(assert (=> b!216567 (= tp!20424 b_and!12671)))

(declare-fun res!105931 () Bool)

(declare-fun e!140904 () Bool)

(assert (=> start!21626 (=> (not res!105931) (not e!140904))))

(declare-datatypes ((V!7147 0))(
  ( (V!7148 (val!2857 Int)) )
))
(declare-datatypes ((ValueCell!2469 0))(
  ( (ValueCellFull!2469 (v!4871 V!7147)) (EmptyCell!2469) )
))
(declare-datatypes ((array!10488 0))(
  ( (array!10489 (arr!4965 (Array (_ BitVec 32) ValueCell!2469)) (size!5297 (_ BitVec 32))) )
))
(declare-datatypes ((array!10490 0))(
  ( (array!10491 (arr!4966 (Array (_ BitVec 32) (_ BitVec 64))) (size!5298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2838 0))(
  ( (LongMapFixedSize!2839 (defaultEntry!4069 Int) (mask!9808 (_ BitVec 32)) (extraKeys!3806 (_ BitVec 32)) (zeroValue!3910 V!7147) (minValue!3910 V!7147) (_size!1468 (_ BitVec 32)) (_keys!6118 array!10490) (_values!4052 array!10488) (_vacant!1468 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2838)

(declare-fun valid!1146 (LongMapFixedSize!2838) Bool)

(assert (=> start!21626 (= res!105931 (valid!1146 thiss!1504))))

(assert (=> start!21626 e!140904))

(declare-fun e!140902 () Bool)

(assert (=> start!21626 e!140902))

(assert (=> start!21626 true))

(declare-fun b!216557 () Bool)

(declare-fun res!105936 () Bool)

(declare-fun e!140905 () Bool)

(assert (=> b!216557 (=> (not res!105936) (not e!140905))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4246 0))(
  ( (tuple2!4247 (_1!2133 (_ BitVec 64)) (_2!2133 V!7147)) )
))
(declare-datatypes ((List!3175 0))(
  ( (Nil!3172) (Cons!3171 (h!3818 tuple2!4246) (t!8138 List!3175)) )
))
(declare-datatypes ((ListLongMap!3173 0))(
  ( (ListLongMap!3174 (toList!1602 List!3175)) )
))
(declare-fun contains!1437 (ListLongMap!3173 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1125 (array!10490 array!10488 (_ BitVec 32) (_ BitVec 32) V!7147 V!7147 (_ BitVec 32) Int) ListLongMap!3173)

(assert (=> b!216557 (= res!105936 (contains!1437 (getCurrentListMap!1125 (_keys!6118 thiss!1504) (_values!4052 thiss!1504) (mask!9808 thiss!1504) (extraKeys!3806 thiss!1504) (zeroValue!3910 thiss!1504) (minValue!3910 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4069 thiss!1504)) key!932))))

(declare-fun b!216558 () Bool)

(declare-fun res!105930 () Bool)

(assert (=> b!216558 (=> (not res!105930) (not e!140904))))

(assert (=> b!216558 (= res!105930 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216559 () Bool)

(assert (=> b!216559 (= e!140904 e!140905)))

(declare-fun res!105935 () Bool)

(assert (=> b!216559 (=> (not res!105935) (not e!140905))))

(declare-datatypes ((SeekEntryResult!758 0))(
  ( (MissingZero!758 (index!5202 (_ BitVec 32))) (Found!758 (index!5203 (_ BitVec 32))) (Intermediate!758 (undefined!1570 Bool) (index!5204 (_ BitVec 32)) (x!22662 (_ BitVec 32))) (Undefined!758) (MissingVacant!758 (index!5205 (_ BitVec 32))) )
))
(declare-fun lt!111217 () SeekEntryResult!758)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216559 (= res!105935 (or (= lt!111217 (MissingZero!758 index!297)) (= lt!111217 (MissingVacant!758 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10490 (_ BitVec 32)) SeekEntryResult!758)

(assert (=> b!216559 (= lt!111217 (seekEntryOrOpen!0 key!932 (_keys!6118 thiss!1504) (mask!9808 thiss!1504)))))

(declare-fun b!216560 () Bool)

(declare-fun e!140907 () Bool)

(declare-fun tp_is_empty!5625 () Bool)

(assert (=> b!216560 (= e!140907 tp_is_empty!5625)))

(declare-fun b!216561 () Bool)

(declare-fun e!140906 () Bool)

(declare-fun e!140903 () Bool)

(declare-fun mapRes!9600 () Bool)

(assert (=> b!216561 (= e!140906 (and e!140903 mapRes!9600))))

(declare-fun condMapEmpty!9600 () Bool)

(declare-fun mapDefault!9600 () ValueCell!2469)

(assert (=> b!216561 (= condMapEmpty!9600 (= (arr!4965 (_values!4052 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2469)) mapDefault!9600)))))

(declare-fun mapIsEmpty!9600 () Bool)

(assert (=> mapIsEmpty!9600 mapRes!9600))

(declare-fun b!216562 () Bool)

(declare-fun res!105933 () Bool)

(assert (=> b!216562 (=> (not res!105933) (not e!140905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10490 (_ BitVec 32)) Bool)

(assert (=> b!216562 (= res!105933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6118 thiss!1504) (mask!9808 thiss!1504)))))

(declare-fun b!216563 () Bool)

(declare-fun res!105932 () Bool)

(assert (=> b!216563 (=> (not res!105932) (not e!140905))))

(assert (=> b!216563 (= res!105932 (and (= (size!5297 (_values!4052 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9808 thiss!1504))) (= (size!5298 (_keys!6118 thiss!1504)) (size!5297 (_values!4052 thiss!1504))) (bvsge (mask!9808 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3806 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3806 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216564 () Bool)

(declare-fun res!105934 () Bool)

(assert (=> b!216564 (=> (not res!105934) (not e!140905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216564 (= res!105934 (validMask!0 (mask!9808 thiss!1504)))))

(declare-fun b!216565 () Bool)

(assert (=> b!216565 (= e!140903 tp_is_empty!5625)))

(declare-fun b!216566 () Bool)

(assert (=> b!216566 (= e!140905 false)))

(declare-fun lt!111216 () Bool)

(declare-datatypes ((List!3176 0))(
  ( (Nil!3173) (Cons!3172 (h!3819 (_ BitVec 64)) (t!8139 List!3176)) )
))
(declare-fun arrayNoDuplicates!0 (array!10490 (_ BitVec 32) List!3176) Bool)

(assert (=> b!216566 (= lt!111216 (arrayNoDuplicates!0 (_keys!6118 thiss!1504) #b00000000000000000000000000000000 Nil!3173))))

(declare-fun mapNonEmpty!9600 () Bool)

(declare-fun tp!20423 () Bool)

(assert (=> mapNonEmpty!9600 (= mapRes!9600 (and tp!20423 e!140907))))

(declare-fun mapRest!9600 () (Array (_ BitVec 32) ValueCell!2469))

(declare-fun mapKey!9600 () (_ BitVec 32))

(declare-fun mapValue!9600 () ValueCell!2469)

(assert (=> mapNonEmpty!9600 (= (arr!4965 (_values!4052 thiss!1504)) (store mapRest!9600 mapKey!9600 mapValue!9600))))

(declare-fun array_inv!3277 (array!10490) Bool)

(declare-fun array_inv!3278 (array!10488) Bool)

(assert (=> b!216567 (= e!140902 (and tp!20424 tp_is_empty!5625 (array_inv!3277 (_keys!6118 thiss!1504)) (array_inv!3278 (_values!4052 thiss!1504)) e!140906))))

(assert (= (and start!21626 res!105931) b!216558))

(assert (= (and b!216558 res!105930) b!216559))

(assert (= (and b!216559 res!105935) b!216557))

(assert (= (and b!216557 res!105936) b!216564))

(assert (= (and b!216564 res!105934) b!216563))

(assert (= (and b!216563 res!105932) b!216562))

(assert (= (and b!216562 res!105933) b!216566))

(assert (= (and b!216561 condMapEmpty!9600) mapIsEmpty!9600))

(assert (= (and b!216561 (not condMapEmpty!9600)) mapNonEmpty!9600))

(get-info :version)

(assert (= (and mapNonEmpty!9600 ((_ is ValueCellFull!2469) mapValue!9600)) b!216560))

(assert (= (and b!216561 ((_ is ValueCellFull!2469) mapDefault!9600)) b!216565))

(assert (= b!216567 b!216561))

(assert (= start!21626 b!216567))

(declare-fun m!243227 () Bool)

(assert (=> b!216562 m!243227))

(declare-fun m!243229 () Bool)

(assert (=> b!216557 m!243229))

(assert (=> b!216557 m!243229))

(declare-fun m!243231 () Bool)

(assert (=> b!216557 m!243231))

(declare-fun m!243233 () Bool)

(assert (=> b!216566 m!243233))

(declare-fun m!243235 () Bool)

(assert (=> b!216567 m!243235))

(declare-fun m!243237 () Bool)

(assert (=> b!216567 m!243237))

(declare-fun m!243239 () Bool)

(assert (=> b!216564 m!243239))

(declare-fun m!243241 () Bool)

(assert (=> b!216559 m!243241))

(declare-fun m!243243 () Bool)

(assert (=> mapNonEmpty!9600 m!243243))

(declare-fun m!243245 () Bool)

(assert (=> start!21626 m!243245))

(check-sat b_and!12671 (not b!216564) (not b_next!5763) (not start!21626) (not b!216567) (not b!216566) (not b!216559) tp_is_empty!5625 (not mapNonEmpty!9600) (not b!216562) (not b!216557))
(check-sat b_and!12671 (not b_next!5763))
