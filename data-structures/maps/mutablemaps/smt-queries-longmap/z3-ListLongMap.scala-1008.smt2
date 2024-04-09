; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21662 () Bool)

(assert start!21662)

(declare-fun b!217151 () Bool)

(declare-fun b_free!5799 () Bool)

(declare-fun b_next!5799 () Bool)

(assert (=> b!217151 (= b_free!5799 (not b_next!5799))))

(declare-fun tp!20532 () Bool)

(declare-fun b_and!12707 () Bool)

(assert (=> b!217151 (= tp!20532 b_and!12707)))

(declare-fun tp_is_empty!5661 () Bool)

(declare-datatypes ((V!7195 0))(
  ( (V!7196 (val!2875 Int)) )
))
(declare-datatypes ((ValueCell!2487 0))(
  ( (ValueCellFull!2487 (v!4889 V!7195)) (EmptyCell!2487) )
))
(declare-datatypes ((array!10560 0))(
  ( (array!10561 (arr!5001 (Array (_ BitVec 32) ValueCell!2487)) (size!5333 (_ BitVec 32))) )
))
(declare-datatypes ((array!10562 0))(
  ( (array!10563 (arr!5002 (Array (_ BitVec 32) (_ BitVec 64))) (size!5334 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2874 0))(
  ( (LongMapFixedSize!2875 (defaultEntry!4087 Int) (mask!9838 (_ BitVec 32)) (extraKeys!3824 (_ BitVec 32)) (zeroValue!3928 V!7195) (minValue!3928 V!7195) (_size!1486 (_ BitVec 32)) (_keys!6136 array!10562) (_values!4070 array!10560) (_vacant!1486 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2874)

(declare-fun e!141284 () Bool)

(declare-fun e!141279 () Bool)

(declare-fun array_inv!3303 (array!10562) Bool)

(declare-fun array_inv!3304 (array!10560) Bool)

(assert (=> b!217151 (= e!141284 (and tp!20532 tp_is_empty!5661 (array_inv!3303 (_keys!6136 thiss!1504)) (array_inv!3304 (_values!4070 thiss!1504)) e!141279))))

(declare-fun b!217152 () Bool)

(declare-fun res!106310 () Bool)

(declare-fun e!141285 () Bool)

(assert (=> b!217152 (=> (not res!106310) (not e!141285))))

(assert (=> b!217152 (= res!106310 (and (= (size!5333 (_values!4070 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9838 thiss!1504))) (= (size!5334 (_keys!6136 thiss!1504)) (size!5333 (_values!4070 thiss!1504))) (bvsge (mask!9838 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3824 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3824 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217153 () Bool)

(declare-fun res!106313 () Bool)

(assert (=> b!217153 (=> (not res!106313) (not e!141285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217153 (= res!106313 (validMask!0 (mask!9838 thiss!1504)))))

(declare-fun mapIsEmpty!9654 () Bool)

(declare-fun mapRes!9654 () Bool)

(assert (=> mapIsEmpty!9654 mapRes!9654))

(declare-fun b!217154 () Bool)

(declare-fun e!141280 () Bool)

(assert (=> b!217154 (= e!141280 tp_is_empty!5661)))

(declare-fun b!217155 () Bool)

(declare-fun res!106312 () Bool)

(assert (=> b!217155 (=> (not res!106312) (not e!141285))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4274 0))(
  ( (tuple2!4275 (_1!2147 (_ BitVec 64)) (_2!2147 V!7195)) )
))
(declare-datatypes ((List!3201 0))(
  ( (Nil!3198) (Cons!3197 (h!3844 tuple2!4274) (t!8164 List!3201)) )
))
(declare-datatypes ((ListLongMap!3201 0))(
  ( (ListLongMap!3202 (toList!1616 List!3201)) )
))
(declare-fun contains!1451 (ListLongMap!3201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1139 (array!10562 array!10560 (_ BitVec 32) (_ BitVec 32) V!7195 V!7195 (_ BitVec 32) Int) ListLongMap!3201)

(assert (=> b!217155 (= res!106312 (contains!1451 (getCurrentListMap!1139 (_keys!6136 thiss!1504) (_values!4070 thiss!1504) (mask!9838 thiss!1504) (extraKeys!3824 thiss!1504) (zeroValue!3928 thiss!1504) (minValue!3928 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4087 thiss!1504)) key!932))))

(declare-fun b!217156 () Bool)

(assert (=> b!217156 (= e!141279 (and e!141280 mapRes!9654))))

(declare-fun condMapEmpty!9654 () Bool)

(declare-fun mapDefault!9654 () ValueCell!2487)

(assert (=> b!217156 (= condMapEmpty!9654 (= (arr!5001 (_values!4070 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2487)) mapDefault!9654)))))

(declare-fun b!217157 () Bool)

(declare-fun e!141282 () Bool)

(assert (=> b!217157 (= e!141282 e!141285)))

(declare-fun res!106309 () Bool)

(assert (=> b!217157 (=> (not res!106309) (not e!141285))))

(declare-datatypes ((SeekEntryResult!773 0))(
  ( (MissingZero!773 (index!5262 (_ BitVec 32))) (Found!773 (index!5263 (_ BitVec 32))) (Intermediate!773 (undefined!1585 Bool) (index!5264 (_ BitVec 32)) (x!22725 (_ BitVec 32))) (Undefined!773) (MissingVacant!773 (index!5265 (_ BitVec 32))) )
))
(declare-fun lt!111325 () SeekEntryResult!773)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217157 (= res!106309 (or (= lt!111325 (MissingZero!773 index!297)) (= lt!111325 (MissingVacant!773 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10562 (_ BitVec 32)) SeekEntryResult!773)

(assert (=> b!217157 (= lt!111325 (seekEntryOrOpen!0 key!932 (_keys!6136 thiss!1504) (mask!9838 thiss!1504)))))

(declare-fun b!217158 () Bool)

(declare-fun res!106308 () Bool)

(assert (=> b!217158 (=> (not res!106308) (not e!141282))))

(assert (=> b!217158 (= res!106308 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217159 () Bool)

(declare-fun e!141281 () Bool)

(assert (=> b!217159 (= e!141281 tp_is_empty!5661)))

(declare-fun res!106314 () Bool)

(assert (=> start!21662 (=> (not res!106314) (not e!141282))))

(declare-fun valid!1160 (LongMapFixedSize!2874) Bool)

(assert (=> start!21662 (= res!106314 (valid!1160 thiss!1504))))

(assert (=> start!21662 e!141282))

(assert (=> start!21662 e!141284))

(assert (=> start!21662 true))

(declare-fun b!217160 () Bool)

(declare-fun res!106311 () Bool)

(assert (=> b!217160 (=> (not res!106311) (not e!141285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10562 (_ BitVec 32)) Bool)

(assert (=> b!217160 (= res!106311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6136 thiss!1504) (mask!9838 thiss!1504)))))

(declare-fun b!217161 () Bool)

(assert (=> b!217161 (= e!141285 false)))

(declare-fun lt!111324 () Bool)

(declare-datatypes ((List!3202 0))(
  ( (Nil!3199) (Cons!3198 (h!3845 (_ BitVec 64)) (t!8165 List!3202)) )
))
(declare-fun arrayNoDuplicates!0 (array!10562 (_ BitVec 32) List!3202) Bool)

(assert (=> b!217161 (= lt!111324 (arrayNoDuplicates!0 (_keys!6136 thiss!1504) #b00000000000000000000000000000000 Nil!3199))))

(declare-fun mapNonEmpty!9654 () Bool)

(declare-fun tp!20531 () Bool)

(assert (=> mapNonEmpty!9654 (= mapRes!9654 (and tp!20531 e!141281))))

(declare-fun mapKey!9654 () (_ BitVec 32))

(declare-fun mapRest!9654 () (Array (_ BitVec 32) ValueCell!2487))

(declare-fun mapValue!9654 () ValueCell!2487)

(assert (=> mapNonEmpty!9654 (= (arr!5001 (_values!4070 thiss!1504)) (store mapRest!9654 mapKey!9654 mapValue!9654))))

(assert (= (and start!21662 res!106314) b!217158))

(assert (= (and b!217158 res!106308) b!217157))

(assert (= (and b!217157 res!106309) b!217155))

(assert (= (and b!217155 res!106312) b!217153))

(assert (= (and b!217153 res!106313) b!217152))

(assert (= (and b!217152 res!106310) b!217160))

(assert (= (and b!217160 res!106311) b!217161))

(assert (= (and b!217156 condMapEmpty!9654) mapIsEmpty!9654))

(assert (= (and b!217156 (not condMapEmpty!9654)) mapNonEmpty!9654))

(get-info :version)

(assert (= (and mapNonEmpty!9654 ((_ is ValueCellFull!2487) mapValue!9654)) b!217159))

(assert (= (and b!217156 ((_ is ValueCellFull!2487) mapDefault!9654)) b!217154))

(assert (= b!217151 b!217156))

(assert (= start!21662 b!217151))

(declare-fun m!243587 () Bool)

(assert (=> b!217157 m!243587))

(declare-fun m!243589 () Bool)

(assert (=> b!217161 m!243589))

(declare-fun m!243591 () Bool)

(assert (=> b!217153 m!243591))

(declare-fun m!243593 () Bool)

(assert (=> b!217160 m!243593))

(declare-fun m!243595 () Bool)

(assert (=> mapNonEmpty!9654 m!243595))

(declare-fun m!243597 () Bool)

(assert (=> start!21662 m!243597))

(declare-fun m!243599 () Bool)

(assert (=> b!217155 m!243599))

(assert (=> b!217155 m!243599))

(declare-fun m!243601 () Bool)

(assert (=> b!217155 m!243601))

(declare-fun m!243603 () Bool)

(assert (=> b!217151 m!243603))

(declare-fun m!243605 () Bool)

(assert (=> b!217151 m!243605))

(check-sat tp_is_empty!5661 (not start!21662) (not b!217161) b_and!12707 (not b!217157) (not mapNonEmpty!9654) (not b!217160) (not b_next!5799) (not b!217153) (not b!217155) (not b!217151))
(check-sat b_and!12707 (not b_next!5799))
