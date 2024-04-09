; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21674 () Bool)

(assert start!21674)

(declare-fun b!217356 () Bool)

(declare-fun b_free!5811 () Bool)

(declare-fun b_next!5811 () Bool)

(assert (=> b!217356 (= b_free!5811 (not b_next!5811))))

(declare-fun tp!20568 () Bool)

(declare-fun b_and!12719 () Bool)

(assert (=> b!217356 (= tp!20568 b_and!12719)))

(declare-fun b!217349 () Bool)

(declare-fun res!106439 () Bool)

(declare-fun e!141411 () Bool)

(assert (=> b!217349 (=> (not res!106439) (not e!141411))))

(declare-datatypes ((V!7211 0))(
  ( (V!7212 (val!2881 Int)) )
))
(declare-datatypes ((ValueCell!2493 0))(
  ( (ValueCellFull!2493 (v!4895 V!7211)) (EmptyCell!2493) )
))
(declare-datatypes ((array!10584 0))(
  ( (array!10585 (arr!5013 (Array (_ BitVec 32) ValueCell!2493)) (size!5345 (_ BitVec 32))) )
))
(declare-datatypes ((array!10586 0))(
  ( (array!10587 (arr!5014 (Array (_ BitVec 32) (_ BitVec 64))) (size!5346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2886 0))(
  ( (LongMapFixedSize!2887 (defaultEntry!4093 Int) (mask!9848 (_ BitVec 32)) (extraKeys!3830 (_ BitVec 32)) (zeroValue!3934 V!7211) (minValue!3934 V!7211) (_size!1492 (_ BitVec 32)) (_keys!6142 array!10586) (_values!4076 array!10584) (_vacant!1492 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2886)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217349 (= res!106439 (validMask!0 (mask!9848 thiss!1504)))))

(declare-fun b!217350 () Bool)

(declare-fun res!106438 () Bool)

(assert (=> b!217350 (=> (not res!106438) (not e!141411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10586 (_ BitVec 32)) Bool)

(assert (=> b!217350 (= res!106438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6142 thiss!1504) (mask!9848 thiss!1504)))))

(declare-fun mapNonEmpty!9672 () Bool)

(declare-fun mapRes!9672 () Bool)

(declare-fun tp!20567 () Bool)

(declare-fun e!141409 () Bool)

(assert (=> mapNonEmpty!9672 (= mapRes!9672 (and tp!20567 e!141409))))

(declare-fun mapRest!9672 () (Array (_ BitVec 32) ValueCell!2493))

(declare-fun mapKey!9672 () (_ BitVec 32))

(declare-fun mapValue!9672 () ValueCell!2493)

(assert (=> mapNonEmpty!9672 (= (arr!5013 (_values!4076 thiss!1504)) (store mapRest!9672 mapKey!9672 mapValue!9672))))

(declare-fun b!217351 () Bool)

(declare-fun res!106434 () Bool)

(declare-fun e!141405 () Bool)

(assert (=> b!217351 (=> (not res!106434) (not e!141405))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217351 (= res!106434 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217352 () Bool)

(declare-fun e!141407 () Bool)

(declare-fun tp_is_empty!5673 () Bool)

(assert (=> b!217352 (= e!141407 tp_is_empty!5673)))

(declare-fun b!217353 () Bool)

(declare-fun res!106436 () Bool)

(assert (=> b!217353 (=> (not res!106436) (not e!141411))))

(assert (=> b!217353 (= res!106436 (and (= (size!5345 (_values!4076 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9848 thiss!1504))) (= (size!5346 (_keys!6142 thiss!1504)) (size!5345 (_values!4076 thiss!1504))) (bvsge (mask!9848 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3830 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3830 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217354 () Bool)

(assert (=> b!217354 (= e!141409 tp_is_empty!5673)))

(declare-fun b!217355 () Bool)

(declare-fun res!106437 () Bool)

(assert (=> b!217355 (=> (not res!106437) (not e!141411))))

(declare-datatypes ((tuple2!4282 0))(
  ( (tuple2!4283 (_1!2151 (_ BitVec 64)) (_2!2151 V!7211)) )
))
(declare-datatypes ((List!3210 0))(
  ( (Nil!3207) (Cons!3206 (h!3853 tuple2!4282) (t!8173 List!3210)) )
))
(declare-datatypes ((ListLongMap!3209 0))(
  ( (ListLongMap!3210 (toList!1620 List!3210)) )
))
(declare-fun contains!1455 (ListLongMap!3209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1143 (array!10586 array!10584 (_ BitVec 32) (_ BitVec 32) V!7211 V!7211 (_ BitVec 32) Int) ListLongMap!3209)

(assert (=> b!217355 (= res!106437 (contains!1455 (getCurrentListMap!1143 (_keys!6142 thiss!1504) (_values!4076 thiss!1504) (mask!9848 thiss!1504) (extraKeys!3830 thiss!1504) (zeroValue!3934 thiss!1504) (minValue!3934 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4093 thiss!1504)) key!932))))

(declare-fun e!141408 () Bool)

(declare-fun e!141406 () Bool)

(declare-fun array_inv!3311 (array!10586) Bool)

(declare-fun array_inv!3312 (array!10584) Bool)

(assert (=> b!217356 (= e!141406 (and tp!20568 tp_is_empty!5673 (array_inv!3311 (_keys!6142 thiss!1504)) (array_inv!3312 (_values!4076 thiss!1504)) e!141408))))

(declare-fun b!217357 () Bool)

(assert (=> b!217357 (= e!141405 e!141411)))

(declare-fun res!106440 () Bool)

(assert (=> b!217357 (=> (not res!106440) (not e!141411))))

(declare-datatypes ((SeekEntryResult!777 0))(
  ( (MissingZero!777 (index!5278 (_ BitVec 32))) (Found!777 (index!5279 (_ BitVec 32))) (Intermediate!777 (undefined!1589 Bool) (index!5280 (_ BitVec 32)) (x!22745 (_ BitVec 32))) (Undefined!777) (MissingVacant!777 (index!5281 (_ BitVec 32))) )
))
(declare-fun lt!111361 () SeekEntryResult!777)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217357 (= res!106440 (or (= lt!111361 (MissingZero!777 index!297)) (= lt!111361 (MissingVacant!777 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10586 (_ BitVec 32)) SeekEntryResult!777)

(assert (=> b!217357 (= lt!111361 (seekEntryOrOpen!0 key!932 (_keys!6142 thiss!1504) (mask!9848 thiss!1504)))))

(declare-fun b!217358 () Bool)

(assert (=> b!217358 (= e!141408 (and e!141407 mapRes!9672))))

(declare-fun condMapEmpty!9672 () Bool)

(declare-fun mapDefault!9672 () ValueCell!2493)

(assert (=> b!217358 (= condMapEmpty!9672 (= (arr!5013 (_values!4076 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2493)) mapDefault!9672)))))

(declare-fun b!217359 () Bool)

(assert (=> b!217359 (= e!141411 false)))

(declare-fun lt!111360 () Bool)

(declare-datatypes ((List!3211 0))(
  ( (Nil!3208) (Cons!3207 (h!3854 (_ BitVec 64)) (t!8174 List!3211)) )
))
(declare-fun arrayNoDuplicates!0 (array!10586 (_ BitVec 32) List!3211) Bool)

(assert (=> b!217359 (= lt!111360 (arrayNoDuplicates!0 (_keys!6142 thiss!1504) #b00000000000000000000000000000000 Nil!3208))))

(declare-fun mapIsEmpty!9672 () Bool)

(assert (=> mapIsEmpty!9672 mapRes!9672))

(declare-fun res!106435 () Bool)

(assert (=> start!21674 (=> (not res!106435) (not e!141405))))

(declare-fun valid!1165 (LongMapFixedSize!2886) Bool)

(assert (=> start!21674 (= res!106435 (valid!1165 thiss!1504))))

(assert (=> start!21674 e!141405))

(assert (=> start!21674 e!141406))

(assert (=> start!21674 true))

(assert (= (and start!21674 res!106435) b!217351))

(assert (= (and b!217351 res!106434) b!217357))

(assert (= (and b!217357 res!106440) b!217355))

(assert (= (and b!217355 res!106437) b!217349))

(assert (= (and b!217349 res!106439) b!217353))

(assert (= (and b!217353 res!106436) b!217350))

(assert (= (and b!217350 res!106438) b!217359))

(assert (= (and b!217358 condMapEmpty!9672) mapIsEmpty!9672))

(assert (= (and b!217358 (not condMapEmpty!9672)) mapNonEmpty!9672))

(get-info :version)

(assert (= (and mapNonEmpty!9672 ((_ is ValueCellFull!2493) mapValue!9672)) b!217354))

(assert (= (and b!217358 ((_ is ValueCellFull!2493) mapDefault!9672)) b!217352))

(assert (= b!217356 b!217358))

(assert (= start!21674 b!217356))

(declare-fun m!243707 () Bool)

(assert (=> b!217357 m!243707))

(declare-fun m!243709 () Bool)

(assert (=> b!217350 m!243709))

(declare-fun m!243711 () Bool)

(assert (=> b!217355 m!243711))

(assert (=> b!217355 m!243711))

(declare-fun m!243713 () Bool)

(assert (=> b!217355 m!243713))

(declare-fun m!243715 () Bool)

(assert (=> start!21674 m!243715))

(declare-fun m!243717 () Bool)

(assert (=> b!217359 m!243717))

(declare-fun m!243719 () Bool)

(assert (=> b!217349 m!243719))

(declare-fun m!243721 () Bool)

(assert (=> b!217356 m!243721))

(declare-fun m!243723 () Bool)

(assert (=> b!217356 m!243723))

(declare-fun m!243725 () Bool)

(assert (=> mapNonEmpty!9672 m!243725))

(check-sat b_and!12719 (not start!21674) (not b_next!5811) (not mapNonEmpty!9672) (not b!217356) (not b!217359) tp_is_empty!5673 (not b!217350) (not b!217357) (not b!217349) (not b!217355))
(check-sat b_and!12719 (not b_next!5811))
