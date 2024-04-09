; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80332 () Bool)

(assert start!80332)

(declare-fun b!943285 () Bool)

(declare-fun b_free!18003 () Bool)

(declare-fun b_next!18003 () Bool)

(assert (=> b!943285 (= b_free!18003 (not b_next!18003))))

(declare-fun tp!62515 () Bool)

(declare-fun b_and!29433 () Bool)

(assert (=> b!943285 (= tp!62515 b_and!29433)))

(declare-fun b!943283 () Bool)

(declare-fun res!633937 () Bool)

(declare-fun e!530385 () Bool)

(assert (=> b!943283 (=> (not res!633937) (not e!530385))))

(declare-datatypes ((V!32313 0))(
  ( (V!32314 (val!10306 Int)) )
))
(declare-datatypes ((ValueCell!9774 0))(
  ( (ValueCellFull!9774 (v!12837 V!32313)) (EmptyCell!9774) )
))
(declare-datatypes ((array!57010 0))(
  ( (array!57011 (arr!27427 (Array (_ BitVec 32) ValueCell!9774)) (size!27893 (_ BitVec 32))) )
))
(declare-datatypes ((array!57012 0))(
  ( (array!57013 (arr!27428 (Array (_ BitVec 32) (_ BitVec 64))) (size!27894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4698 0))(
  ( (LongMapFixedSize!4699 (defaultEntry!5640 Int) (mask!27261 (_ BitVec 32)) (extraKeys!5372 (_ BitVec 32)) (zeroValue!5476 V!32313) (minValue!5476 V!32313) (_size!2404 (_ BitVec 32)) (_keys!10510 array!57012) (_values!5663 array!57010) (_vacant!2404 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4698)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943283 (= res!633937 (validMask!0 (mask!27261 thiss!1141)))))

(declare-fun b!943284 () Bool)

(declare-fun res!633933 () Bool)

(assert (=> b!943284 (=> (not res!633933) (not e!530385))))

(assert (=> b!943284 (= res!633933 (and (= (size!27893 (_values!5663 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27261 thiss!1141))) (= (size!27894 (_keys!10510 thiss!1141)) (size!27893 (_values!5663 thiss!1141))) (bvsge (mask!27261 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5372 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5372 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun e!530388 () Bool)

(declare-fun tp_is_empty!20511 () Bool)

(declare-fun e!530387 () Bool)

(declare-fun array_inv!21264 (array!57012) Bool)

(declare-fun array_inv!21265 (array!57010) Bool)

(assert (=> b!943285 (= e!530388 (and tp!62515 tp_is_empty!20511 (array_inv!21264 (_keys!10510 thiss!1141)) (array_inv!21265 (_values!5663 thiss!1141)) e!530387))))

(declare-fun b!943286 () Bool)

(declare-fun e!530386 () Bool)

(declare-fun mapRes!32588 () Bool)

(assert (=> b!943286 (= e!530387 (and e!530386 mapRes!32588))))

(declare-fun condMapEmpty!32588 () Bool)

(declare-fun mapDefault!32588 () ValueCell!9774)

(assert (=> b!943286 (= condMapEmpty!32588 (= (arr!27427 (_values!5663 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9774)) mapDefault!32588)))))

(declare-fun b!943287 () Bool)

(assert (=> b!943287 (= e!530386 tp_is_empty!20511)))

(declare-fun mapIsEmpty!32588 () Bool)

(assert (=> mapIsEmpty!32588 mapRes!32588))

(declare-fun mapNonEmpty!32588 () Bool)

(declare-fun tp!62516 () Bool)

(declare-fun e!530389 () Bool)

(assert (=> mapNonEmpty!32588 (= mapRes!32588 (and tp!62516 e!530389))))

(declare-fun mapRest!32588 () (Array (_ BitVec 32) ValueCell!9774))

(declare-fun mapKey!32588 () (_ BitVec 32))

(declare-fun mapValue!32588 () ValueCell!9774)

(assert (=> mapNonEmpty!32588 (= (arr!27427 (_values!5663 thiss!1141)) (store mapRest!32588 mapKey!32588 mapValue!32588))))

(declare-fun b!943288 () Bool)

(declare-fun res!633935 () Bool)

(assert (=> b!943288 (=> (not res!633935) (not e!530385))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943288 (= res!633935 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943289 () Bool)

(assert (=> b!943289 (= e!530385 false)))

(declare-fun lt!425199 () Bool)

(declare-datatypes ((List!19384 0))(
  ( (Nil!19381) (Cons!19380 (h!20530 (_ BitVec 64)) (t!27707 List!19384)) )
))
(declare-fun arrayNoDuplicates!0 (array!57012 (_ BitVec 32) List!19384) Bool)

(assert (=> b!943289 (= lt!425199 (arrayNoDuplicates!0 (_keys!10510 thiss!1141) #b00000000000000000000000000000000 Nil!19381))))

(declare-fun b!943290 () Bool)

(declare-fun res!633939 () Bool)

(assert (=> b!943290 (=> (not res!633939) (not e!530385))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9042 0))(
  ( (MissingZero!9042 (index!38538 (_ BitVec 32))) (Found!9042 (index!38539 (_ BitVec 32))) (Intermediate!9042 (undefined!9854 Bool) (index!38540 (_ BitVec 32)) (x!81004 (_ BitVec 32))) (Undefined!9042) (MissingVacant!9042 (index!38541 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57012 (_ BitVec 32)) SeekEntryResult!9042)

(assert (=> b!943290 (= res!633939 (not ((_ is Found!9042) (seekEntry!0 key!756 (_keys!10510 thiss!1141) (mask!27261 thiss!1141)))))))

(declare-fun b!943291 () Bool)

(declare-fun res!633936 () Bool)

(assert (=> b!943291 (=> (not res!633936) (not e!530385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57012 (_ BitVec 32)) Bool)

(assert (=> b!943291 (= res!633936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10510 thiss!1141) (mask!27261 thiss!1141)))))

(declare-fun b!943292 () Bool)

(declare-fun res!633934 () Bool)

(assert (=> b!943292 (=> (not res!633934) (not e!530385))))

(declare-datatypes ((tuple2!13546 0))(
  ( (tuple2!13547 (_1!6783 (_ BitVec 64)) (_2!6783 V!32313)) )
))
(declare-datatypes ((List!19385 0))(
  ( (Nil!19382) (Cons!19381 (h!20531 tuple2!13546) (t!27708 List!19385)) )
))
(declare-datatypes ((ListLongMap!12257 0))(
  ( (ListLongMap!12258 (toList!6144 List!19385)) )
))
(declare-fun contains!5165 (ListLongMap!12257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3332 (array!57012 array!57010 (_ BitVec 32) (_ BitVec 32) V!32313 V!32313 (_ BitVec 32) Int) ListLongMap!12257)

(assert (=> b!943292 (= res!633934 (contains!5165 (getCurrentListMap!3332 (_keys!10510 thiss!1141) (_values!5663 thiss!1141) (mask!27261 thiss!1141) (extraKeys!5372 thiss!1141) (zeroValue!5476 thiss!1141) (minValue!5476 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5640 thiss!1141)) key!756))))

(declare-fun b!943282 () Bool)

(assert (=> b!943282 (= e!530389 tp_is_empty!20511)))

(declare-fun res!633938 () Bool)

(assert (=> start!80332 (=> (not res!633938) (not e!530385))))

(declare-fun valid!1776 (LongMapFixedSize!4698) Bool)

(assert (=> start!80332 (= res!633938 (valid!1776 thiss!1141))))

(assert (=> start!80332 e!530385))

(assert (=> start!80332 e!530388))

(assert (=> start!80332 true))

(assert (= (and start!80332 res!633938) b!943288))

(assert (= (and b!943288 res!633935) b!943290))

(assert (= (and b!943290 res!633939) b!943292))

(assert (= (and b!943292 res!633934) b!943283))

(assert (= (and b!943283 res!633937) b!943284))

(assert (= (and b!943284 res!633933) b!943291))

(assert (= (and b!943291 res!633936) b!943289))

(assert (= (and b!943286 condMapEmpty!32588) mapIsEmpty!32588))

(assert (= (and b!943286 (not condMapEmpty!32588)) mapNonEmpty!32588))

(assert (= (and mapNonEmpty!32588 ((_ is ValueCellFull!9774) mapValue!32588)) b!943282))

(assert (= (and b!943286 ((_ is ValueCellFull!9774) mapDefault!32588)) b!943287))

(assert (= b!943285 b!943286))

(assert (= start!80332 b!943285))

(declare-fun m!877555 () Bool)

(assert (=> b!943283 m!877555))

(declare-fun m!877557 () Bool)

(assert (=> b!943289 m!877557))

(declare-fun m!877559 () Bool)

(assert (=> start!80332 m!877559))

(declare-fun m!877561 () Bool)

(assert (=> b!943292 m!877561))

(assert (=> b!943292 m!877561))

(declare-fun m!877563 () Bool)

(assert (=> b!943292 m!877563))

(declare-fun m!877565 () Bool)

(assert (=> b!943285 m!877565))

(declare-fun m!877567 () Bool)

(assert (=> b!943285 m!877567))

(declare-fun m!877569 () Bool)

(assert (=> b!943290 m!877569))

(declare-fun m!877571 () Bool)

(assert (=> b!943291 m!877571))

(declare-fun m!877573 () Bool)

(assert (=> mapNonEmpty!32588 m!877573))

(check-sat (not mapNonEmpty!32588) (not b!943289) (not b!943291) (not b!943292) (not b_next!18003) b_and!29433 (not start!80332) tp_is_empty!20511 (not b!943290) (not b!943285) (not b!943283))
(check-sat b_and!29433 (not b_next!18003))
