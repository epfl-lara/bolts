; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16688 () Bool)

(assert start!16688)

(declare-fun b!166909 () Bool)

(declare-fun b_free!3981 () Bool)

(declare-fun b_next!3981 () Bool)

(assert (=> b!166909 (= b_free!3981 (not b_next!3981))))

(declare-fun tp!14544 () Bool)

(declare-fun b_and!10413 () Bool)

(assert (=> b!166909 (= tp!14544 b_and!10413)))

(declare-fun mapIsEmpty!6393 () Bool)

(declare-fun mapRes!6393 () Bool)

(assert (=> mapIsEmpty!6393 mapRes!6393))

(declare-fun b!166897 () Bool)

(declare-datatypes ((Unit!5090 0))(
  ( (Unit!5091) )
))
(declare-fun e!109561 () Unit!5090)

(declare-fun Unit!5092 () Unit!5090)

(assert (=> b!166897 (= e!109561 Unit!5092)))

(declare-fun lt!83525 () Unit!5090)

(declare-datatypes ((V!4691 0))(
  ( (V!4692 (val!1936 Int)) )
))
(declare-datatypes ((ValueCell!1548 0))(
  ( (ValueCellFull!1548 (v!3797 V!4691)) (EmptyCell!1548) )
))
(declare-datatypes ((array!6662 0))(
  ( (array!6663 (arr!3166 (Array (_ BitVec 32) (_ BitVec 64))) (size!3454 (_ BitVec 32))) )
))
(declare-datatypes ((array!6664 0))(
  ( (array!6665 (arr!3167 (Array (_ BitVec 32) ValueCell!1548)) (size!3455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2004 0))(
  ( (LongMapFixedSize!2005 (defaultEntry!3444 Int) (mask!8183 (_ BitVec 32)) (extraKeys!3185 (_ BitVec 32)) (zeroValue!3287 V!4691) (minValue!3287 V!4691) (_size!1051 (_ BitVec 32)) (_keys!5269 array!6662) (_values!3427 array!6664) (_vacant!1051 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2004)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!96 (array!6662 array!6664 (_ BitVec 32) (_ BitVec 32) V!4691 V!4691 (_ BitVec 64) Int) Unit!5090)

(assert (=> b!166897 (= lt!83525 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!96 (_keys!5269 thiss!1248) (_values!3427 thiss!1248) (mask!8183 thiss!1248) (extraKeys!3185 thiss!1248) (zeroValue!3287 thiss!1248) (minValue!3287 thiss!1248) key!828 (defaultEntry!3444 thiss!1248)))))

(assert (=> b!166897 false))

(declare-fun res!79368 () Bool)

(declare-fun e!109569 () Bool)

(assert (=> start!16688 (=> (not res!79368) (not e!109569))))

(declare-fun valid!870 (LongMapFixedSize!2004) Bool)

(assert (=> start!16688 (= res!79368 (valid!870 thiss!1248))))

(assert (=> start!16688 e!109569))

(declare-fun e!109570 () Bool)

(assert (=> start!16688 e!109570))

(assert (=> start!16688 true))

(declare-fun b!166898 () Bool)

(declare-fun res!79366 () Bool)

(declare-fun e!109562 () Bool)

(assert (=> b!166898 (=> (not res!79366) (not e!109562))))

(assert (=> b!166898 (= res!79366 (and (= (size!3455 (_values!3427 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8183 thiss!1248))) (= (size!3454 (_keys!5269 thiss!1248)) (size!3455 (_values!3427 thiss!1248))) (bvsge (mask!8183 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3185 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3185 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166899 () Bool)

(declare-fun e!109566 () Bool)

(assert (=> b!166899 (= e!109566 e!109562)))

(declare-fun res!79369 () Bool)

(assert (=> b!166899 (=> (not res!79369) (not e!109562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166899 (= res!79369 (validMask!0 (mask!8183 thiss!1248)))))

(declare-fun lt!83521 () Unit!5090)

(assert (=> b!166899 (= lt!83521 e!109561)))

(declare-fun c!30234 () Bool)

(declare-datatypes ((tuple2!3118 0))(
  ( (tuple2!3119 (_1!1569 (_ BitVec 64)) (_2!1569 V!4691)) )
))
(declare-datatypes ((List!2129 0))(
  ( (Nil!2126) (Cons!2125 (h!2742 tuple2!3118) (t!6939 List!2129)) )
))
(declare-datatypes ((ListLongMap!2087 0))(
  ( (ListLongMap!2088 (toList!1059 List!2129)) )
))
(declare-fun contains!1095 (ListLongMap!2087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!712 (array!6662 array!6664 (_ BitVec 32) (_ BitVec 32) V!4691 V!4691 (_ BitVec 32) Int) ListLongMap!2087)

(assert (=> b!166899 (= c!30234 (contains!1095 (getCurrentListMap!712 (_keys!5269 thiss!1248) (_values!3427 thiss!1248) (mask!8183 thiss!1248) (extraKeys!3185 thiss!1248) (zeroValue!3287 thiss!1248) (minValue!3287 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3444 thiss!1248)) key!828))))

(declare-fun b!166900 () Bool)

(assert (=> b!166900 (= e!109569 e!109566)))

(declare-fun res!79370 () Bool)

(assert (=> b!166900 (=> (not res!79370) (not e!109566))))

(declare-datatypes ((SeekEntryResult!477 0))(
  ( (MissingZero!477 (index!4076 (_ BitVec 32))) (Found!477 (index!4077 (_ BitVec 32))) (Intermediate!477 (undefined!1289 Bool) (index!4078 (_ BitVec 32)) (x!18489 (_ BitVec 32))) (Undefined!477) (MissingVacant!477 (index!4079 (_ BitVec 32))) )
))
(declare-fun lt!83522 () SeekEntryResult!477)

(get-info :version)

(assert (=> b!166900 (= res!79370 (and (not ((_ is Undefined!477) lt!83522)) (not ((_ is MissingVacant!477) lt!83522)) (not ((_ is MissingZero!477) lt!83522)) ((_ is Found!477) lt!83522)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6662 (_ BitVec 32)) SeekEntryResult!477)

(assert (=> b!166900 (= lt!83522 (seekEntryOrOpen!0 key!828 (_keys!5269 thiss!1248) (mask!8183 thiss!1248)))))

(declare-fun b!166901 () Bool)

(declare-fun e!109563 () Bool)

(declare-fun e!109568 () Bool)

(assert (=> b!166901 (= e!109563 (and e!109568 mapRes!6393))))

(declare-fun condMapEmpty!6393 () Bool)

(declare-fun mapDefault!6393 () ValueCell!1548)

(assert (=> b!166901 (= condMapEmpty!6393 (= (arr!3167 (_values!3427 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1548)) mapDefault!6393)))))

(declare-fun b!166902 () Bool)

(declare-fun tp_is_empty!3783 () Bool)

(assert (=> b!166902 (= e!109568 tp_is_empty!3783)))

(declare-fun b!166903 () Bool)

(declare-fun e!109567 () Bool)

(assert (=> b!166903 (= e!109567 tp_is_empty!3783)))

(declare-fun b!166904 () Bool)

(assert (=> b!166904 (= e!109562 false)))

(declare-fun lt!83524 () Bool)

(declare-datatypes ((List!2130 0))(
  ( (Nil!2127) (Cons!2126 (h!2743 (_ BitVec 64)) (t!6940 List!2130)) )
))
(declare-fun arrayNoDuplicates!0 (array!6662 (_ BitVec 32) List!2130) Bool)

(assert (=> b!166904 (= lt!83524 (arrayNoDuplicates!0 (_keys!5269 thiss!1248) #b00000000000000000000000000000000 Nil!2127))))

(declare-fun b!166905 () Bool)

(declare-fun res!79367 () Bool)

(assert (=> b!166905 (=> (not res!79367) (not e!109569))))

(assert (=> b!166905 (= res!79367 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6393 () Bool)

(declare-fun tp!14543 () Bool)

(assert (=> mapNonEmpty!6393 (= mapRes!6393 (and tp!14543 e!109567))))

(declare-fun mapKey!6393 () (_ BitVec 32))

(declare-fun mapRest!6393 () (Array (_ BitVec 32) ValueCell!1548))

(declare-fun mapValue!6393 () ValueCell!1548)

(assert (=> mapNonEmpty!6393 (= (arr!3167 (_values!3427 thiss!1248)) (store mapRest!6393 mapKey!6393 mapValue!6393))))

(declare-fun b!166906 () Bool)

(declare-fun res!79365 () Bool)

(assert (=> b!166906 (=> (not res!79365) (not e!109562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6662 (_ BitVec 32)) Bool)

(assert (=> b!166906 (= res!79365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5269 thiss!1248) (mask!8183 thiss!1248)))))

(declare-fun e!109565 () Bool)

(declare-fun b!166907 () Bool)

(assert (=> b!166907 (= e!109565 (= (select (arr!3166 (_keys!5269 thiss!1248)) (index!4077 lt!83522)) key!828))))

(declare-fun b!166908 () Bool)

(declare-fun lt!83523 () Unit!5090)

(assert (=> b!166908 (= e!109561 lt!83523)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!96 (array!6662 array!6664 (_ BitVec 32) (_ BitVec 32) V!4691 V!4691 (_ BitVec 64) Int) Unit!5090)

(assert (=> b!166908 (= lt!83523 (lemmaInListMapThenSeekEntryOrOpenFindsIt!96 (_keys!5269 thiss!1248) (_values!3427 thiss!1248) (mask!8183 thiss!1248) (extraKeys!3185 thiss!1248) (zeroValue!3287 thiss!1248) (minValue!3287 thiss!1248) key!828 (defaultEntry!3444 thiss!1248)))))

(declare-fun res!79371 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166908 (= res!79371 (inRange!0 (index!4077 lt!83522) (mask!8183 thiss!1248)))))

(assert (=> b!166908 (=> (not res!79371) (not e!109565))))

(assert (=> b!166908 e!109565))

(declare-fun array_inv!2023 (array!6662) Bool)

(declare-fun array_inv!2024 (array!6664) Bool)

(assert (=> b!166909 (= e!109570 (and tp!14544 tp_is_empty!3783 (array_inv!2023 (_keys!5269 thiss!1248)) (array_inv!2024 (_values!3427 thiss!1248)) e!109563))))

(assert (= (and start!16688 res!79368) b!166905))

(assert (= (and b!166905 res!79367) b!166900))

(assert (= (and b!166900 res!79370) b!166899))

(assert (= (and b!166899 c!30234) b!166908))

(assert (= (and b!166899 (not c!30234)) b!166897))

(assert (= (and b!166908 res!79371) b!166907))

(assert (= (and b!166899 res!79369) b!166898))

(assert (= (and b!166898 res!79366) b!166906))

(assert (= (and b!166906 res!79365) b!166904))

(assert (= (and b!166901 condMapEmpty!6393) mapIsEmpty!6393))

(assert (= (and b!166901 (not condMapEmpty!6393)) mapNonEmpty!6393))

(assert (= (and mapNonEmpty!6393 ((_ is ValueCellFull!1548) mapValue!6393)) b!166903))

(assert (= (and b!166901 ((_ is ValueCellFull!1548) mapDefault!6393)) b!166902))

(assert (= b!166909 b!166901))

(assert (= start!16688 b!166909))

(declare-fun m!196221 () Bool)

(assert (=> b!166907 m!196221))

(declare-fun m!196223 () Bool)

(assert (=> b!166897 m!196223))

(declare-fun m!196225 () Bool)

(assert (=> b!166909 m!196225))

(declare-fun m!196227 () Bool)

(assert (=> b!166909 m!196227))

(declare-fun m!196229 () Bool)

(assert (=> mapNonEmpty!6393 m!196229))

(declare-fun m!196231 () Bool)

(assert (=> b!166908 m!196231))

(declare-fun m!196233 () Bool)

(assert (=> b!166908 m!196233))

(declare-fun m!196235 () Bool)

(assert (=> b!166900 m!196235))

(declare-fun m!196237 () Bool)

(assert (=> start!16688 m!196237))

(declare-fun m!196239 () Bool)

(assert (=> b!166906 m!196239))

(declare-fun m!196241 () Bool)

(assert (=> b!166904 m!196241))

(declare-fun m!196243 () Bool)

(assert (=> b!166899 m!196243))

(declare-fun m!196245 () Bool)

(assert (=> b!166899 m!196245))

(assert (=> b!166899 m!196245))

(declare-fun m!196247 () Bool)

(assert (=> b!166899 m!196247))

(check-sat (not b!166904) (not b!166906) (not b!166900) (not b!166908) (not b_next!3981) (not start!16688) (not mapNonEmpty!6393) (not b!166909) b_and!10413 (not b!166897) tp_is_empty!3783 (not b!166899))
(check-sat b_and!10413 (not b_next!3981))
