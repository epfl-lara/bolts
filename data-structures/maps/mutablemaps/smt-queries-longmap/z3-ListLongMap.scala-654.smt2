; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16286 () Bool)

(assert start!16286)

(declare-fun b!162314 () Bool)

(declare-fun b_free!3735 () Bool)

(declare-fun b_next!3735 () Bool)

(assert (=> b!162314 (= b_free!3735 (not b_next!3735))))

(declare-fun tp!13775 () Bool)

(declare-fun b_and!10167 () Bool)

(assert (=> b!162314 (= tp!13775 b_and!10167)))

(declare-fun mapIsEmpty!5993 () Bool)

(declare-fun mapRes!5993 () Bool)

(assert (=> mapIsEmpty!5993 mapRes!5993))

(declare-fun b!162309 () Bool)

(declare-fun e!106350 () Bool)

(declare-datatypes ((SeekEntryResult!391 0))(
  ( (MissingZero!391 (index!3732 (_ BitVec 32))) (Found!391 (index!3733 (_ BitVec 32))) (Intermediate!391 (undefined!1203 Bool) (index!3734 (_ BitVec 32)) (x!17967 (_ BitVec 32))) (Undefined!391) (MissingVacant!391 (index!3735 (_ BitVec 32))) )
))
(declare-fun lt!82445 () SeekEntryResult!391)

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(assert (=> b!162309 (= e!106350 (and (not ((_ is Undefined!391) lt!82445)) (not ((_ is MissingVacant!391) lt!82445)) ((_ is MissingZero!391) lt!82445) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!82445 (MissingZero!391 (index!3732 lt!82445)))) (not (= lt!82445 (MissingVacant!391 (index!3732 lt!82445))))))))

(declare-datatypes ((V!4363 0))(
  ( (V!4364 (val!1813 Int)) )
))
(declare-datatypes ((ValueCell!1425 0))(
  ( (ValueCellFull!1425 (v!3674 V!4363)) (EmptyCell!1425) )
))
(declare-datatypes ((array!6152 0))(
  ( (array!6153 (arr!2920 (Array (_ BitVec 32) (_ BitVec 64))) (size!3204 (_ BitVec 32))) )
))
(declare-datatypes ((array!6154 0))(
  ( (array!6155 (arr!2921 (Array (_ BitVec 32) ValueCell!1425)) (size!3205 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1758 0))(
  ( (LongMapFixedSize!1759 (defaultEntry!3321 Int) (mask!7941 (_ BitVec 32)) (extraKeys!3062 (_ BitVec 32)) (zeroValue!3164 V!4363) (minValue!3164 V!4363) (_size!928 (_ BitVec 32)) (_keys!5122 array!6152) (_values!3304 array!6154) (_vacant!928 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1758)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6152 (_ BitVec 32)) SeekEntryResult!391)

(assert (=> b!162309 (= lt!82445 (seekEntryOrOpen!0 key!828 (_keys!5122 thiss!1248) (mask!7941 thiss!1248)))))

(declare-fun b!162310 () Bool)

(declare-fun res!76879 () Bool)

(assert (=> b!162310 (=> (not res!76879) (not e!106350))))

(assert (=> b!162310 (= res!76879 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162311 () Bool)

(declare-fun e!106354 () Bool)

(declare-fun e!106355 () Bool)

(assert (=> b!162311 (= e!106354 (and e!106355 mapRes!5993))))

(declare-fun condMapEmpty!5993 () Bool)

(declare-fun mapDefault!5993 () ValueCell!1425)

(assert (=> b!162311 (= condMapEmpty!5993 (= (arr!2921 (_values!3304 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1425)) mapDefault!5993)))))

(declare-fun res!76880 () Bool)

(assert (=> start!16286 (=> (not res!76880) (not e!106350))))

(declare-fun valid!787 (LongMapFixedSize!1758) Bool)

(assert (=> start!16286 (= res!76880 (valid!787 thiss!1248))))

(assert (=> start!16286 e!106350))

(declare-fun e!106352 () Bool)

(assert (=> start!16286 e!106352))

(assert (=> start!16286 true))

(declare-fun b!162312 () Bool)

(declare-fun e!106353 () Bool)

(declare-fun tp_is_empty!3537 () Bool)

(assert (=> b!162312 (= e!106353 tp_is_empty!3537)))

(declare-fun mapNonEmpty!5993 () Bool)

(declare-fun tp!13774 () Bool)

(assert (=> mapNonEmpty!5993 (= mapRes!5993 (and tp!13774 e!106353))))

(declare-fun mapValue!5993 () ValueCell!1425)

(declare-fun mapKey!5993 () (_ BitVec 32))

(declare-fun mapRest!5993 () (Array (_ BitVec 32) ValueCell!1425))

(assert (=> mapNonEmpty!5993 (= (arr!2921 (_values!3304 thiss!1248)) (store mapRest!5993 mapKey!5993 mapValue!5993))))

(declare-fun b!162313 () Bool)

(assert (=> b!162313 (= e!106355 tp_is_empty!3537)))

(declare-fun array_inv!1861 (array!6152) Bool)

(declare-fun array_inv!1862 (array!6154) Bool)

(assert (=> b!162314 (= e!106352 (and tp!13775 tp_is_empty!3537 (array_inv!1861 (_keys!5122 thiss!1248)) (array_inv!1862 (_values!3304 thiss!1248)) e!106354))))

(assert (= (and start!16286 res!76880) b!162310))

(assert (= (and b!162310 res!76879) b!162309))

(assert (= (and b!162311 condMapEmpty!5993) mapIsEmpty!5993))

(assert (= (and b!162311 (not condMapEmpty!5993)) mapNonEmpty!5993))

(assert (= (and mapNonEmpty!5993 ((_ is ValueCellFull!1425) mapValue!5993)) b!162312))

(assert (= (and b!162311 ((_ is ValueCellFull!1425) mapDefault!5993)) b!162313))

(assert (= b!162314 b!162311))

(assert (= start!16286 b!162314))

(declare-fun m!193479 () Bool)

(assert (=> b!162309 m!193479))

(declare-fun m!193481 () Bool)

(assert (=> start!16286 m!193481))

(declare-fun m!193483 () Bool)

(assert (=> mapNonEmpty!5993 m!193483))

(declare-fun m!193485 () Bool)

(assert (=> b!162314 m!193485))

(declare-fun m!193487 () Bool)

(assert (=> b!162314 m!193487))

(check-sat tp_is_empty!3537 b_and!10167 (not b!162314) (not start!16286) (not b!162309) (not mapNonEmpty!5993) (not b_next!3735))
(check-sat b_and!10167 (not b_next!3735))
