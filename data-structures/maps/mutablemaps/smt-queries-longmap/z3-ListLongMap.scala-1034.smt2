; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21900 () Bool)

(assert start!21900)

(declare-fun b!221475 () Bool)

(declare-fun b_free!5955 () Bool)

(declare-fun b_next!5955 () Bool)

(assert (=> b!221475 (= b_free!5955 (not b_next!5955))))

(declare-fun tp!21006 () Bool)

(declare-fun b_and!12871 () Bool)

(assert (=> b!221475 (= tp!21006 b_and!12871)))

(declare-fun b!221468 () Bool)

(declare-fun e!143941 () Bool)

(declare-fun call!20697 () Bool)

(assert (=> b!221468 (= e!143941 (not call!20697))))

(declare-fun res!108675 () Bool)

(declare-fun e!143943 () Bool)

(assert (=> start!21900 (=> (not res!108675) (not e!143943))))

(declare-datatypes ((V!7403 0))(
  ( (V!7404 (val!2953 Int)) )
))
(declare-datatypes ((ValueCell!2565 0))(
  ( (ValueCellFull!2565 (v!4969 V!7403)) (EmptyCell!2565) )
))
(declare-datatypes ((array!10876 0))(
  ( (array!10877 (arr!5157 (Array (_ BitVec 32) ValueCell!2565)) (size!5490 (_ BitVec 32))) )
))
(declare-datatypes ((array!10878 0))(
  ( (array!10879 (arr!5158 (Array (_ BitVec 32) (_ BitVec 64))) (size!5491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3030 0))(
  ( (LongMapFixedSize!3031 (defaultEntry!4174 Int) (mask!9986 (_ BitVec 32)) (extraKeys!3911 (_ BitVec 32)) (zeroValue!4015 V!7403) (minValue!4015 V!7403) (_size!1564 (_ BitVec 32)) (_keys!6228 array!10878) (_values!4157 array!10876) (_vacant!1564 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3030)

(declare-fun valid!1215 (LongMapFixedSize!3030) Bool)

(assert (=> start!21900 (= res!108675 (valid!1215 thiss!1504))))

(assert (=> start!21900 e!143943))

(declare-fun e!143947 () Bool)

(assert (=> start!21900 e!143947))

(assert (=> start!21900 true))

(declare-fun b!221469 () Bool)

(declare-fun res!108670 () Bool)

(declare-fun e!143946 () Bool)

(assert (=> b!221469 (=> (not res!108670) (not e!143946))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221469 (= res!108670 (arrayContainsKey!0 (_keys!6228 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221470 () Bool)

(declare-fun e!143945 () Bool)

(declare-datatypes ((SeekEntryResult!836 0))(
  ( (MissingZero!836 (index!5514 (_ BitVec 32))) (Found!836 (index!5515 (_ BitVec 32))) (Intermediate!836 (undefined!1648 Bool) (index!5516 (_ BitVec 32)) (x!23024 (_ BitVec 32))) (Undefined!836) (MissingVacant!836 (index!5517 (_ BitVec 32))) )
))
(declare-fun lt!112448 () SeekEntryResult!836)

(get-info :version)

(assert (=> b!221470 (= e!143945 ((_ is Undefined!836) lt!112448))))

(declare-fun b!221471 () Bool)

(declare-fun res!108671 () Bool)

(assert (=> b!221471 (=> (not res!108671) (not e!143941))))

(assert (=> b!221471 (= res!108671 (= (select (arr!5158 (_keys!6228 thiss!1504)) (index!5514 lt!112448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!221472 () Bool)

(declare-fun e!143942 () Bool)

(assert (=> b!221472 (= e!143945 e!143942)))

(declare-fun res!108669 () Bool)

(declare-fun call!20698 () Bool)

(assert (=> b!221472 (= res!108669 call!20698)))

(assert (=> b!221472 (=> (not res!108669) (not e!143942))))

(declare-fun b!221473 () Bool)

(declare-fun res!108672 () Bool)

(assert (=> b!221473 (=> (not res!108672) (not e!143943))))

(assert (=> b!221473 (= res!108672 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221474 () Bool)

(assert (=> b!221474 (= e!143946 false)))

(declare-fun lt!112449 () Bool)

(declare-datatypes ((List!3304 0))(
  ( (Nil!3301) (Cons!3300 (h!3948 (_ BitVec 64)) (t!8271 List!3304)) )
))
(declare-fun arrayNoDuplicates!0 (array!10878 (_ BitVec 32) List!3304) Bool)

(assert (=> b!221474 (= lt!112449 (arrayNoDuplicates!0 (_keys!6228 thiss!1504) #b00000000000000000000000000000000 Nil!3301))))

(declare-fun tp_is_empty!5817 () Bool)

(declare-fun e!143951 () Bool)

(declare-fun array_inv!3405 (array!10878) Bool)

(declare-fun array_inv!3406 (array!10876) Bool)

(assert (=> b!221475 (= e!143947 (and tp!21006 tp_is_empty!5817 (array_inv!3405 (_keys!6228 thiss!1504)) (array_inv!3406 (_values!4157 thiss!1504)) e!143951))))

(declare-fun b!221476 () Bool)

(declare-fun res!108677 () Bool)

(assert (=> b!221476 (=> (not res!108677) (not e!143946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221476 (= res!108677 (validMask!0 (mask!9986 thiss!1504)))))

(declare-fun b!221477 () Bool)

(declare-fun res!108676 () Bool)

(assert (=> b!221477 (=> (not res!108676) (not e!143946))))

(assert (=> b!221477 (= res!108676 (and (= (size!5490 (_values!4157 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9986 thiss!1504))) (= (size!5491 (_keys!6228 thiss!1504)) (size!5490 (_values!4157 thiss!1504))) (bvsge (mask!9986 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3911 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3911 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221478 () Bool)

(declare-datatypes ((Unit!6617 0))(
  ( (Unit!6618) )
))
(declare-fun e!143948 () Unit!6617)

(declare-fun lt!112446 () Unit!6617)

(assert (=> b!221478 (= e!143948 lt!112446)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!226 (array!10878 array!10876 (_ BitVec 32) (_ BitVec 32) V!7403 V!7403 (_ BitVec 64) Int) Unit!6617)

(assert (=> b!221478 (= lt!112446 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!226 (_keys!6228 thiss!1504) (_values!4157 thiss!1504) (mask!9986 thiss!1504) (extraKeys!3911 thiss!1504) (zeroValue!4015 thiss!1504) (minValue!4015 thiss!1504) key!932 (defaultEntry!4174 thiss!1504)))))

(declare-fun c!36812 () Bool)

(assert (=> b!221478 (= c!36812 ((_ is MissingZero!836) lt!112448))))

(declare-fun e!143953 () Bool)

(assert (=> b!221478 e!143953))

(declare-fun b!221479 () Bool)

(declare-fun res!108668 () Bool)

(assert (=> b!221479 (= res!108668 (= (select (arr!5158 (_keys!6228 thiss!1504)) (index!5517 lt!112448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!221479 (=> (not res!108668) (not e!143942))))

(declare-fun b!221480 () Bool)

(declare-fun res!108673 () Bool)

(assert (=> b!221480 (=> (not res!108673) (not e!143946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10878 (_ BitVec 32)) Bool)

(assert (=> b!221480 (= res!108673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6228 thiss!1504) (mask!9986 thiss!1504)))))

(declare-fun b!221481 () Bool)

(declare-fun e!143949 () Bool)

(assert (=> b!221481 (= e!143949 e!143946)))

(declare-fun res!108674 () Bool)

(assert (=> b!221481 (=> (not res!108674) (not e!143946))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!221481 (= res!108674 (inRange!0 index!297 (mask!9986 thiss!1504)))))

(declare-fun lt!112445 () Unit!6617)

(assert (=> b!221481 (= lt!112445 e!143948)))

(declare-fun c!36810 () Bool)

(declare-datatypes ((tuple2!4378 0))(
  ( (tuple2!4379 (_1!2199 (_ BitVec 64)) (_2!2199 V!7403)) )
))
(declare-datatypes ((List!3305 0))(
  ( (Nil!3302) (Cons!3301 (h!3949 tuple2!4378) (t!8272 List!3305)) )
))
(declare-datatypes ((ListLongMap!3305 0))(
  ( (ListLongMap!3306 (toList!1668 List!3305)) )
))
(declare-fun contains!1505 (ListLongMap!3305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1191 (array!10878 array!10876 (_ BitVec 32) (_ BitVec 32) V!7403 V!7403 (_ BitVec 32) Int) ListLongMap!3305)

(assert (=> b!221481 (= c!36810 (contains!1505 (getCurrentListMap!1191 (_keys!6228 thiss!1504) (_values!4157 thiss!1504) (mask!9986 thiss!1504) (extraKeys!3911 thiss!1504) (zeroValue!4015 thiss!1504) (minValue!4015 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4174 thiss!1504)) key!932))))

(declare-fun b!221482 () Bool)

(assert (=> b!221482 (= e!143942 (not call!20697))))

(declare-fun b!221483 () Bool)

(declare-fun e!143952 () Bool)

(declare-fun mapRes!9895 () Bool)

(assert (=> b!221483 (= e!143951 (and e!143952 mapRes!9895))))

(declare-fun condMapEmpty!9895 () Bool)

(declare-fun mapDefault!9895 () ValueCell!2565)

(assert (=> b!221483 (= condMapEmpty!9895 (= (arr!5157 (_values!4157 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2565)) mapDefault!9895)))))

(declare-fun b!221484 () Bool)

(assert (=> b!221484 (= e!143943 e!143949)))

(declare-fun res!108678 () Bool)

(assert (=> b!221484 (=> (not res!108678) (not e!143949))))

(assert (=> b!221484 (= res!108678 (or (= lt!112448 (MissingZero!836 index!297)) (= lt!112448 (MissingVacant!836 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10878 (_ BitVec 32)) SeekEntryResult!836)

(assert (=> b!221484 (= lt!112448 (seekEntryOrOpen!0 key!932 (_keys!6228 thiss!1504) (mask!9986 thiss!1504)))))

(declare-fun b!221485 () Bool)

(declare-fun c!36811 () Bool)

(assert (=> b!221485 (= c!36811 ((_ is MissingVacant!836) lt!112448))))

(assert (=> b!221485 (= e!143953 e!143945)))

(declare-fun b!221486 () Bool)

(declare-fun Unit!6619 () Unit!6617)

(assert (=> b!221486 (= e!143948 Unit!6619)))

(declare-fun lt!112447 () Unit!6617)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!218 (array!10878 array!10876 (_ BitVec 32) (_ BitVec 32) V!7403 V!7403 (_ BitVec 64) Int) Unit!6617)

(assert (=> b!221486 (= lt!112447 (lemmaInListMapThenSeekEntryOrOpenFindsIt!218 (_keys!6228 thiss!1504) (_values!4157 thiss!1504) (mask!9986 thiss!1504) (extraKeys!3911 thiss!1504) (zeroValue!4015 thiss!1504) (minValue!4015 thiss!1504) key!932 (defaultEntry!4174 thiss!1504)))))

(assert (=> b!221486 false))

(declare-fun bm!20694 () Bool)

(assert (=> bm!20694 (= call!20697 (arrayContainsKey!0 (_keys!6228 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221487 () Bool)

(declare-fun res!108679 () Bool)

(assert (=> b!221487 (=> (not res!108679) (not e!143941))))

(assert (=> b!221487 (= res!108679 call!20698)))

(assert (=> b!221487 (= e!143953 e!143941)))

(declare-fun mapNonEmpty!9895 () Bool)

(declare-fun tp!21007 () Bool)

(declare-fun e!143950 () Bool)

(assert (=> mapNonEmpty!9895 (= mapRes!9895 (and tp!21007 e!143950))))

(declare-fun mapValue!9895 () ValueCell!2565)

(declare-fun mapKey!9895 () (_ BitVec 32))

(declare-fun mapRest!9895 () (Array (_ BitVec 32) ValueCell!2565))

(assert (=> mapNonEmpty!9895 (= (arr!5157 (_values!4157 thiss!1504)) (store mapRest!9895 mapKey!9895 mapValue!9895))))

(declare-fun b!221488 () Bool)

(assert (=> b!221488 (= e!143952 tp_is_empty!5817)))

(declare-fun b!221489 () Bool)

(assert (=> b!221489 (= e!143950 tp_is_empty!5817)))

(declare-fun bm!20695 () Bool)

(assert (=> bm!20695 (= call!20698 (inRange!0 (ite c!36812 (index!5514 lt!112448) (index!5517 lt!112448)) (mask!9986 thiss!1504)))))

(declare-fun mapIsEmpty!9895 () Bool)

(assert (=> mapIsEmpty!9895 mapRes!9895))

(assert (= (and start!21900 res!108675) b!221473))

(assert (= (and b!221473 res!108672) b!221484))

(assert (= (and b!221484 res!108678) b!221481))

(assert (= (and b!221481 c!36810) b!221486))

(assert (= (and b!221481 (not c!36810)) b!221478))

(assert (= (and b!221478 c!36812) b!221487))

(assert (= (and b!221478 (not c!36812)) b!221485))

(assert (= (and b!221487 res!108679) b!221471))

(assert (= (and b!221471 res!108671) b!221468))

(assert (= (and b!221485 c!36811) b!221472))

(assert (= (and b!221485 (not c!36811)) b!221470))

(assert (= (and b!221472 res!108669) b!221479))

(assert (= (and b!221479 res!108668) b!221482))

(assert (= (or b!221487 b!221472) bm!20695))

(assert (= (or b!221468 b!221482) bm!20694))

(assert (= (and b!221481 res!108674) b!221469))

(assert (= (and b!221469 res!108670) b!221476))

(assert (= (and b!221476 res!108677) b!221477))

(assert (= (and b!221477 res!108676) b!221480))

(assert (= (and b!221480 res!108673) b!221474))

(assert (= (and b!221483 condMapEmpty!9895) mapIsEmpty!9895))

(assert (= (and b!221483 (not condMapEmpty!9895)) mapNonEmpty!9895))

(assert (= (and mapNonEmpty!9895 ((_ is ValueCellFull!2565) mapValue!9895)) b!221489))

(assert (= (and b!221483 ((_ is ValueCellFull!2565) mapDefault!9895)) b!221488))

(assert (= b!221475 b!221483))

(assert (= start!21900 b!221475))

(declare-fun m!246095 () Bool)

(assert (=> b!221481 m!246095))

(declare-fun m!246097 () Bool)

(assert (=> b!221481 m!246097))

(assert (=> b!221481 m!246097))

(declare-fun m!246099 () Bool)

(assert (=> b!221481 m!246099))

(declare-fun m!246101 () Bool)

(assert (=> mapNonEmpty!9895 m!246101))

(declare-fun m!246103 () Bool)

(assert (=> bm!20694 m!246103))

(declare-fun m!246105 () Bool)

(assert (=> b!221471 m!246105))

(declare-fun m!246107 () Bool)

(assert (=> b!221484 m!246107))

(declare-fun m!246109 () Bool)

(assert (=> b!221478 m!246109))

(declare-fun m!246111 () Bool)

(assert (=> bm!20695 m!246111))

(declare-fun m!246113 () Bool)

(assert (=> b!221480 m!246113))

(declare-fun m!246115 () Bool)

(assert (=> b!221474 m!246115))

(declare-fun m!246117 () Bool)

(assert (=> b!221479 m!246117))

(declare-fun m!246119 () Bool)

(assert (=> b!221476 m!246119))

(declare-fun m!246121 () Bool)

(assert (=> b!221475 m!246121))

(declare-fun m!246123 () Bool)

(assert (=> b!221475 m!246123))

(declare-fun m!246125 () Bool)

(assert (=> start!21900 m!246125))

(assert (=> b!221469 m!246103))

(declare-fun m!246127 () Bool)

(assert (=> b!221486 m!246127))

(check-sat tp_is_empty!5817 (not b!221476) (not b!221484) (not b!221474) (not b!221480) (not b!221469) b_and!12871 (not b!221486) (not b!221475) (not b!221478) (not bm!20694) (not b!221481) (not mapNonEmpty!9895) (not start!21900) (not b_next!5955) (not bm!20695))
(check-sat b_and!12871 (not b_next!5955))
