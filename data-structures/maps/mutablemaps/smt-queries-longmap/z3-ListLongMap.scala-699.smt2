; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16712 () Bool)

(assert start!16712)

(declare-fun b!167366 () Bool)

(declare-fun b_free!4005 () Bool)

(declare-fun b_next!4005 () Bool)

(assert (=> b!167366 (= b_free!4005 (not b_next!4005))))

(declare-fun tp!14615 () Bool)

(declare-fun b_and!10437 () Bool)

(assert (=> b!167366 (= tp!14615 b_and!10437)))

(declare-datatypes ((SeekEntryResult!489 0))(
  ( (MissingZero!489 (index!4124 (_ BitVec 32))) (Found!489 (index!4125 (_ BitVec 32))) (Intermediate!489 (undefined!1301 Bool) (index!4126 (_ BitVec 32)) (x!18533 (_ BitVec 32))) (Undefined!489) (MissingVacant!489 (index!4127 (_ BitVec 32))) )
))
(declare-fun lt!83701 () SeekEntryResult!489)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!109925 () Bool)

(declare-fun b!167365 () Bool)

(declare-datatypes ((V!4723 0))(
  ( (V!4724 (val!1948 Int)) )
))
(declare-datatypes ((ValueCell!1560 0))(
  ( (ValueCellFull!1560 (v!3809 V!4723)) (EmptyCell!1560) )
))
(declare-datatypes ((array!6710 0))(
  ( (array!6711 (arr!3190 (Array (_ BitVec 32) (_ BitVec 64))) (size!3478 (_ BitVec 32))) )
))
(declare-datatypes ((array!6712 0))(
  ( (array!6713 (arr!3191 (Array (_ BitVec 32) ValueCell!1560)) (size!3479 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2028 0))(
  ( (LongMapFixedSize!2029 (defaultEntry!3456 Int) (mask!8203 (_ BitVec 32)) (extraKeys!3197 (_ BitVec 32)) (zeroValue!3299 V!4723) (minValue!3299 V!4723) (_size!1063 (_ BitVec 32)) (_keys!5281 array!6710) (_values!3439 array!6712) (_vacant!1063 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2028)

(assert (=> b!167365 (= e!109925 (= (select (arr!3190 (_keys!5281 thiss!1248)) (index!4125 lt!83701)) key!828))))

(declare-fun res!79623 () Bool)

(declare-fun e!109928 () Bool)

(assert (=> start!16712 (=> (not res!79623) (not e!109928))))

(declare-fun valid!878 (LongMapFixedSize!2028) Bool)

(assert (=> start!16712 (= res!79623 (valid!878 thiss!1248))))

(assert (=> start!16712 e!109928))

(declare-fun e!109924 () Bool)

(assert (=> start!16712 e!109924))

(assert (=> start!16712 true))

(declare-fun e!109923 () Bool)

(declare-fun tp_is_empty!3807 () Bool)

(declare-fun array_inv!2047 (array!6710) Bool)

(declare-fun array_inv!2048 (array!6712) Bool)

(assert (=> b!167366 (= e!109924 (and tp!14615 tp_is_empty!3807 (array_inv!2047 (_keys!5281 thiss!1248)) (array_inv!2048 (_values!3439 thiss!1248)) e!109923))))

(declare-fun b!167367 () Bool)

(declare-datatypes ((Unit!5123 0))(
  ( (Unit!5124) )
))
(declare-fun e!109929 () Unit!5123)

(declare-fun Unit!5125 () Unit!5123)

(assert (=> b!167367 (= e!109929 Unit!5125)))

(declare-fun lt!83702 () Unit!5123)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!105 (array!6710 array!6712 (_ BitVec 32) (_ BitVec 32) V!4723 V!4723 (_ BitVec 64) Int) Unit!5123)

(assert (=> b!167367 (= lt!83702 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!105 (_keys!5281 thiss!1248) (_values!3439 thiss!1248) (mask!8203 thiss!1248) (extraKeys!3197 thiss!1248) (zeroValue!3299 thiss!1248) (minValue!3299 thiss!1248) key!828 (defaultEntry!3456 thiss!1248)))))

(assert (=> b!167367 false))

(declare-fun mapIsEmpty!6429 () Bool)

(declare-fun mapRes!6429 () Bool)

(assert (=> mapIsEmpty!6429 mapRes!6429))

(declare-fun b!167368 () Bool)

(declare-fun res!79620 () Bool)

(declare-fun e!109921 () Bool)

(assert (=> b!167368 (=> (not res!79620) (not e!109921))))

(assert (=> b!167368 (= res!79620 (and (= (size!3479 (_values!3439 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8203 thiss!1248))) (= (size!3478 (_keys!5281 thiss!1248)) (size!3479 (_values!3439 thiss!1248))) (bvsge (mask!8203 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3197 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3197 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167369 () Bool)

(declare-fun e!109927 () Bool)

(assert (=> b!167369 (= e!109927 e!109921)))

(declare-fun res!79618 () Bool)

(assert (=> b!167369 (=> (not res!79618) (not e!109921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167369 (= res!79618 (validMask!0 (mask!8203 thiss!1248)))))

(declare-fun lt!83705 () Unit!5123)

(assert (=> b!167369 (= lt!83705 e!109929)))

(declare-fun c!30270 () Bool)

(declare-datatypes ((tuple2!3138 0))(
  ( (tuple2!3139 (_1!1579 (_ BitVec 64)) (_2!1579 V!4723)) )
))
(declare-datatypes ((List!2149 0))(
  ( (Nil!2146) (Cons!2145 (h!2762 tuple2!3138) (t!6959 List!2149)) )
))
(declare-datatypes ((ListLongMap!2107 0))(
  ( (ListLongMap!2108 (toList!1069 List!2149)) )
))
(declare-fun contains!1105 (ListLongMap!2107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!722 (array!6710 array!6712 (_ BitVec 32) (_ BitVec 32) V!4723 V!4723 (_ BitVec 32) Int) ListLongMap!2107)

(assert (=> b!167369 (= c!30270 (contains!1105 (getCurrentListMap!722 (_keys!5281 thiss!1248) (_values!3439 thiss!1248) (mask!8203 thiss!1248) (extraKeys!3197 thiss!1248) (zeroValue!3299 thiss!1248) (minValue!3299 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3456 thiss!1248)) key!828))))

(declare-fun b!167370 () Bool)

(declare-fun lt!83703 () Unit!5123)

(assert (=> b!167370 (= e!109929 lt!83703)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!107 (array!6710 array!6712 (_ BitVec 32) (_ BitVec 32) V!4723 V!4723 (_ BitVec 64) Int) Unit!5123)

(assert (=> b!167370 (= lt!83703 (lemmaInListMapThenSeekEntryOrOpenFindsIt!107 (_keys!5281 thiss!1248) (_values!3439 thiss!1248) (mask!8203 thiss!1248) (extraKeys!3197 thiss!1248) (zeroValue!3299 thiss!1248) (minValue!3299 thiss!1248) key!828 (defaultEntry!3456 thiss!1248)))))

(declare-fun res!79617 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167370 (= res!79617 (inRange!0 (index!4125 lt!83701) (mask!8203 thiss!1248)))))

(assert (=> b!167370 (=> (not res!79617) (not e!109925))))

(assert (=> b!167370 e!109925))

(declare-fun b!167371 () Bool)

(assert (=> b!167371 (= e!109921 false)))

(declare-fun lt!83704 () Bool)

(declare-datatypes ((List!2150 0))(
  ( (Nil!2147) (Cons!2146 (h!2763 (_ BitVec 64)) (t!6960 List!2150)) )
))
(declare-fun arrayNoDuplicates!0 (array!6710 (_ BitVec 32) List!2150) Bool)

(assert (=> b!167371 (= lt!83704 (arrayNoDuplicates!0 (_keys!5281 thiss!1248) #b00000000000000000000000000000000 Nil!2147))))

(declare-fun b!167372 () Bool)

(declare-fun e!109926 () Bool)

(assert (=> b!167372 (= e!109926 tp_is_empty!3807)))

(declare-fun b!167373 () Bool)

(assert (=> b!167373 (= e!109928 e!109927)))

(declare-fun res!79619 () Bool)

(assert (=> b!167373 (=> (not res!79619) (not e!109927))))

(get-info :version)

(assert (=> b!167373 (= res!79619 (and (not ((_ is Undefined!489) lt!83701)) (not ((_ is MissingVacant!489) lt!83701)) (not ((_ is MissingZero!489) lt!83701)) ((_ is Found!489) lt!83701)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6710 (_ BitVec 32)) SeekEntryResult!489)

(assert (=> b!167373 (= lt!83701 (seekEntryOrOpen!0 key!828 (_keys!5281 thiss!1248) (mask!8203 thiss!1248)))))

(declare-fun b!167374 () Bool)

(declare-fun e!109922 () Bool)

(assert (=> b!167374 (= e!109922 tp_is_empty!3807)))

(declare-fun mapNonEmpty!6429 () Bool)

(declare-fun tp!14616 () Bool)

(assert (=> mapNonEmpty!6429 (= mapRes!6429 (and tp!14616 e!109926))))

(declare-fun mapValue!6429 () ValueCell!1560)

(declare-fun mapKey!6429 () (_ BitVec 32))

(declare-fun mapRest!6429 () (Array (_ BitVec 32) ValueCell!1560))

(assert (=> mapNonEmpty!6429 (= (arr!3191 (_values!3439 thiss!1248)) (store mapRest!6429 mapKey!6429 mapValue!6429))))

(declare-fun b!167375 () Bool)

(declare-fun res!79621 () Bool)

(assert (=> b!167375 (=> (not res!79621) (not e!109928))))

(assert (=> b!167375 (= res!79621 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167376 () Bool)

(assert (=> b!167376 (= e!109923 (and e!109922 mapRes!6429))))

(declare-fun condMapEmpty!6429 () Bool)

(declare-fun mapDefault!6429 () ValueCell!1560)

(assert (=> b!167376 (= condMapEmpty!6429 (= (arr!3191 (_values!3439 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1560)) mapDefault!6429)))))

(declare-fun b!167377 () Bool)

(declare-fun res!79622 () Bool)

(assert (=> b!167377 (=> (not res!79622) (not e!109921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6710 (_ BitVec 32)) Bool)

(assert (=> b!167377 (= res!79622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5281 thiss!1248) (mask!8203 thiss!1248)))))

(assert (= (and start!16712 res!79623) b!167375))

(assert (= (and b!167375 res!79621) b!167373))

(assert (= (and b!167373 res!79619) b!167369))

(assert (= (and b!167369 c!30270) b!167370))

(assert (= (and b!167369 (not c!30270)) b!167367))

(assert (= (and b!167370 res!79617) b!167365))

(assert (= (and b!167369 res!79618) b!167368))

(assert (= (and b!167368 res!79620) b!167377))

(assert (= (and b!167377 res!79622) b!167371))

(assert (= (and b!167376 condMapEmpty!6429) mapIsEmpty!6429))

(assert (= (and b!167376 (not condMapEmpty!6429)) mapNonEmpty!6429))

(assert (= (and mapNonEmpty!6429 ((_ is ValueCellFull!1560) mapValue!6429)) b!167372))

(assert (= (and b!167376 ((_ is ValueCellFull!1560) mapDefault!6429)) b!167374))

(assert (= b!167366 b!167376))

(assert (= start!16712 b!167366))

(declare-fun m!196557 () Bool)

(assert (=> b!167366 m!196557))

(declare-fun m!196559 () Bool)

(assert (=> b!167366 m!196559))

(declare-fun m!196561 () Bool)

(assert (=> b!167367 m!196561))

(declare-fun m!196563 () Bool)

(assert (=> b!167371 m!196563))

(declare-fun m!196565 () Bool)

(assert (=> b!167365 m!196565))

(declare-fun m!196567 () Bool)

(assert (=> b!167370 m!196567))

(declare-fun m!196569 () Bool)

(assert (=> b!167370 m!196569))

(declare-fun m!196571 () Bool)

(assert (=> start!16712 m!196571))

(declare-fun m!196573 () Bool)

(assert (=> b!167377 m!196573))

(declare-fun m!196575 () Bool)

(assert (=> b!167373 m!196575))

(declare-fun m!196577 () Bool)

(assert (=> mapNonEmpty!6429 m!196577))

(declare-fun m!196579 () Bool)

(assert (=> b!167369 m!196579))

(declare-fun m!196581 () Bool)

(assert (=> b!167369 m!196581))

(assert (=> b!167369 m!196581))

(declare-fun m!196583 () Bool)

(assert (=> b!167369 m!196583))

(check-sat (not b!167367) (not b!167377) (not b!167371) (not b!167369) tp_is_empty!3807 (not mapNonEmpty!6429) (not b!167373) (not b!167370) b_and!10437 (not b!167366) (not start!16712) (not b_next!4005))
(check-sat b_and!10437 (not b_next!4005))
