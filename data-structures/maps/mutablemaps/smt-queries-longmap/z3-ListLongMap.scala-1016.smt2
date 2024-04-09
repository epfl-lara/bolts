; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21710 () Bool)

(assert start!21710)

(declare-fun b!217948 () Bool)

(declare-fun b_free!5847 () Bool)

(declare-fun b_next!5847 () Bool)

(assert (=> b!217948 (= b_free!5847 (not b_next!5847))))

(declare-fun tp!20676 () Bool)

(declare-fun b_and!12755 () Bool)

(assert (=> b!217948 (= tp!20676 b_and!12755)))

(declare-fun b!217943 () Bool)

(declare-fun res!106816 () Bool)

(declare-fun e!141787 () Bool)

(assert (=> b!217943 (=> (not res!106816) (not e!141787))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217943 (= res!106816 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217944 () Bool)

(declare-fun res!106815 () Bool)

(declare-fun e!141784 () Bool)

(assert (=> b!217944 (=> (not res!106815) (not e!141784))))

(declare-datatypes ((V!7259 0))(
  ( (V!7260 (val!2899 Int)) )
))
(declare-datatypes ((ValueCell!2511 0))(
  ( (ValueCellFull!2511 (v!4913 V!7259)) (EmptyCell!2511) )
))
(declare-datatypes ((array!10656 0))(
  ( (array!10657 (arr!5049 (Array (_ BitVec 32) ValueCell!2511)) (size!5381 (_ BitVec 32))) )
))
(declare-datatypes ((array!10658 0))(
  ( (array!10659 (arr!5050 (Array (_ BitVec 32) (_ BitVec 64))) (size!5382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2922 0))(
  ( (LongMapFixedSize!2923 (defaultEntry!4111 Int) (mask!9878 (_ BitVec 32)) (extraKeys!3848 (_ BitVec 32)) (zeroValue!3952 V!7259) (minValue!3952 V!7259) (_size!1510 (_ BitVec 32)) (_keys!6160 array!10658) (_values!4094 array!10656) (_vacant!1510 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2922)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10658 (_ BitVec 32)) Bool)

(assert (=> b!217944 (= res!106815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6160 thiss!1504) (mask!9878 thiss!1504)))))

(declare-fun b!217945 () Bool)

(declare-fun res!106817 () Bool)

(assert (=> b!217945 (=> (not res!106817) (not e!141784))))

(declare-datatypes ((tuple2!4304 0))(
  ( (tuple2!4305 (_1!2162 (_ BitVec 64)) (_2!2162 V!7259)) )
))
(declare-datatypes ((List!3233 0))(
  ( (Nil!3230) (Cons!3229 (h!3876 tuple2!4304) (t!8196 List!3233)) )
))
(declare-datatypes ((ListLongMap!3231 0))(
  ( (ListLongMap!3232 (toList!1631 List!3233)) )
))
(declare-fun contains!1466 (ListLongMap!3231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1154 (array!10658 array!10656 (_ BitVec 32) (_ BitVec 32) V!7259 V!7259 (_ BitVec 32) Int) ListLongMap!3231)

(assert (=> b!217945 (= res!106817 (not (contains!1466 (getCurrentListMap!1154 (_keys!6160 thiss!1504) (_values!4094 thiss!1504) (mask!9878 thiss!1504) (extraKeys!3848 thiss!1504) (zeroValue!3952 thiss!1504) (minValue!3952 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4111 thiss!1504)) key!932)))))

(declare-fun b!217946 () Bool)

(declare-fun e!141786 () Bool)

(declare-fun e!141783 () Bool)

(declare-fun mapRes!9726 () Bool)

(assert (=> b!217946 (= e!141786 (and e!141783 mapRes!9726))))

(declare-fun condMapEmpty!9726 () Bool)

(declare-fun mapDefault!9726 () ValueCell!2511)

(assert (=> b!217946 (= condMapEmpty!9726 (= (arr!5049 (_values!4094 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2511)) mapDefault!9726)))))

(declare-fun tp_is_empty!5709 () Bool)

(declare-fun e!141789 () Bool)

(declare-fun array_inv!3333 (array!10658) Bool)

(declare-fun array_inv!3334 (array!10656) Bool)

(assert (=> b!217948 (= e!141789 (and tp!20676 tp_is_empty!5709 (array_inv!3333 (_keys!6160 thiss!1504)) (array_inv!3334 (_values!4094 thiss!1504)) e!141786))))

(declare-fun b!217949 () Bool)

(declare-fun e!141785 () Bool)

(assert (=> b!217949 (= e!141785 tp_is_empty!5709)))

(declare-fun mapIsEmpty!9726 () Bool)

(assert (=> mapIsEmpty!9726 mapRes!9726))

(declare-fun b!217950 () Bool)

(declare-fun res!106813 () Bool)

(assert (=> b!217950 (=> (not res!106813) (not e!141784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217950 (= res!106813 (validMask!0 (mask!9878 thiss!1504)))))

(declare-fun b!217951 () Bool)

(assert (=> b!217951 (= e!141784 false)))

(declare-fun lt!111469 () Bool)

(declare-datatypes ((List!3234 0))(
  ( (Nil!3231) (Cons!3230 (h!3877 (_ BitVec 64)) (t!8197 List!3234)) )
))
(declare-fun arrayNoDuplicates!0 (array!10658 (_ BitVec 32) List!3234) Bool)

(assert (=> b!217951 (= lt!111469 (arrayNoDuplicates!0 (_keys!6160 thiss!1504) #b00000000000000000000000000000000 Nil!3231))))

(declare-fun b!217952 () Bool)

(assert (=> b!217952 (= e!141787 e!141784)))

(declare-fun res!106814 () Bool)

(assert (=> b!217952 (=> (not res!106814) (not e!141784))))

(declare-datatypes ((SeekEntryResult!787 0))(
  ( (MissingZero!787 (index!5318 (_ BitVec 32))) (Found!787 (index!5319 (_ BitVec 32))) (Intermediate!787 (undefined!1599 Bool) (index!5320 (_ BitVec 32)) (x!22803 (_ BitVec 32))) (Undefined!787) (MissingVacant!787 (index!5321 (_ BitVec 32))) )
))
(declare-fun lt!111468 () SeekEntryResult!787)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217952 (= res!106814 (or (= lt!111468 (MissingZero!787 index!297)) (= lt!111468 (MissingVacant!787 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10658 (_ BitVec 32)) SeekEntryResult!787)

(assert (=> b!217952 (= lt!111468 (seekEntryOrOpen!0 key!932 (_keys!6160 thiss!1504) (mask!9878 thiss!1504)))))

(declare-fun b!217947 () Bool)

(declare-fun res!106818 () Bool)

(assert (=> b!217947 (=> (not res!106818) (not e!141784))))

(assert (=> b!217947 (= res!106818 (and (= (size!5381 (_values!4094 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9878 thiss!1504))) (= (size!5382 (_keys!6160 thiss!1504)) (size!5381 (_values!4094 thiss!1504))) (bvsge (mask!9878 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3848 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3848 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!106812 () Bool)

(assert (=> start!21710 (=> (not res!106812) (not e!141787))))

(declare-fun valid!1176 (LongMapFixedSize!2922) Bool)

(assert (=> start!21710 (= res!106812 (valid!1176 thiss!1504))))

(assert (=> start!21710 e!141787))

(assert (=> start!21710 e!141789))

(assert (=> start!21710 true))

(declare-fun b!217953 () Bool)

(assert (=> b!217953 (= e!141783 tp_is_empty!5709)))

(declare-fun mapNonEmpty!9726 () Bool)

(declare-fun tp!20675 () Bool)

(assert (=> mapNonEmpty!9726 (= mapRes!9726 (and tp!20675 e!141785))))

(declare-fun mapRest!9726 () (Array (_ BitVec 32) ValueCell!2511))

(declare-fun mapValue!9726 () ValueCell!2511)

(declare-fun mapKey!9726 () (_ BitVec 32))

(assert (=> mapNonEmpty!9726 (= (arr!5049 (_values!4094 thiss!1504)) (store mapRest!9726 mapKey!9726 mapValue!9726))))

(assert (= (and start!21710 res!106812) b!217943))

(assert (= (and b!217943 res!106816) b!217952))

(assert (= (and b!217952 res!106814) b!217945))

(assert (= (and b!217945 res!106817) b!217950))

(assert (= (and b!217950 res!106813) b!217947))

(assert (= (and b!217947 res!106818) b!217944))

(assert (= (and b!217944 res!106815) b!217951))

(assert (= (and b!217946 condMapEmpty!9726) mapIsEmpty!9726))

(assert (= (and b!217946 (not condMapEmpty!9726)) mapNonEmpty!9726))

(get-info :version)

(assert (= (and mapNonEmpty!9726 ((_ is ValueCellFull!2511) mapValue!9726)) b!217949))

(assert (= (and b!217946 ((_ is ValueCellFull!2511) mapDefault!9726)) b!217953))

(assert (= b!217948 b!217946))

(assert (= start!21710 b!217948))

(declare-fun m!244067 () Bool)

(assert (=> b!217944 m!244067))

(declare-fun m!244069 () Bool)

(assert (=> b!217948 m!244069))

(declare-fun m!244071 () Bool)

(assert (=> b!217948 m!244071))

(declare-fun m!244073 () Bool)

(assert (=> b!217951 m!244073))

(declare-fun m!244075 () Bool)

(assert (=> start!21710 m!244075))

(declare-fun m!244077 () Bool)

(assert (=> b!217952 m!244077))

(declare-fun m!244079 () Bool)

(assert (=> b!217945 m!244079))

(assert (=> b!217945 m!244079))

(declare-fun m!244081 () Bool)

(assert (=> b!217945 m!244081))

(declare-fun m!244083 () Bool)

(assert (=> mapNonEmpty!9726 m!244083))

(declare-fun m!244085 () Bool)

(assert (=> b!217950 m!244085))

(check-sat (not b!217950) (not b!217948) (not start!21710) (not b!217951) (not b!217952) (not b!217945) (not b!217944) (not mapNonEmpty!9726) (not b_next!5847) tp_is_empty!5709 b_and!12755)
(check-sat b_and!12755 (not b_next!5847))
