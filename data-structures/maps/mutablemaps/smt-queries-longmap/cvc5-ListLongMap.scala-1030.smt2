; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21874 () Bool)

(assert start!21874)

(declare-fun b!220623 () Bool)

(declare-fun b_free!5929 () Bool)

(declare-fun b_next!5929 () Bool)

(assert (=> b!220623 (= b_free!5929 (not b_next!5929))))

(declare-fun tp!20929 () Bool)

(declare-fun b_and!12845 () Bool)

(assert (=> b!220623 (= tp!20929 b_and!12845)))

(declare-fun b!220610 () Bool)

(declare-fun res!108209 () Bool)

(declare-fun e!143440 () Bool)

(assert (=> b!220610 (=> (not res!108209) (not e!143440))))

(declare-datatypes ((V!7369 0))(
  ( (V!7370 (val!2940 Int)) )
))
(declare-datatypes ((ValueCell!2552 0))(
  ( (ValueCellFull!2552 (v!4956 V!7369)) (EmptyCell!2552) )
))
(declare-datatypes ((array!10824 0))(
  ( (array!10825 (arr!5131 (Array (_ BitVec 32) ValueCell!2552)) (size!5464 (_ BitVec 32))) )
))
(declare-datatypes ((array!10826 0))(
  ( (array!10827 (arr!5132 (Array (_ BitVec 32) (_ BitVec 64))) (size!5465 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3004 0))(
  ( (LongMapFixedSize!3005 (defaultEntry!4161 Int) (mask!9965 (_ BitVec 32)) (extraKeys!3898 (_ BitVec 32)) (zeroValue!4002 V!7369) (minValue!4002 V!7369) (_size!1551 (_ BitVec 32)) (_keys!6215 array!10826) (_values!4144 array!10824) (_vacant!1551 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3004)

(assert (=> b!220610 (= res!108209 (and (= (size!5464 (_values!4144 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9965 thiss!1504))) (= (size!5465 (_keys!6215 thiss!1504)) (size!5464 (_values!4144 thiss!1504))) (bvsge (mask!9965 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3898 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3898 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220611 () Bool)

(assert (=> b!220611 (= e!143440 false)))

(declare-fun lt!112254 () Bool)

(declare-datatypes ((List!3284 0))(
  ( (Nil!3281) (Cons!3280 (h!3928 (_ BitVec 64)) (t!8251 List!3284)) )
))
(declare-fun arrayNoDuplicates!0 (array!10826 (_ BitVec 32) List!3284) Bool)

(assert (=> b!220611 (= lt!112254 (arrayNoDuplicates!0 (_keys!6215 thiss!1504) #b00000000000000000000000000000000 Nil!3281))))

(declare-fun b!220612 () Bool)

(declare-fun res!108208 () Bool)

(declare-fun e!143446 () Bool)

(assert (=> b!220612 (=> (not res!108208) (not e!143446))))

(declare-datatypes ((SeekEntryResult!824 0))(
  ( (MissingZero!824 (index!5466 (_ BitVec 32))) (Found!824 (index!5467 (_ BitVec 32))) (Intermediate!824 (undefined!1636 Bool) (index!5468 (_ BitVec 32)) (x!22980 (_ BitVec 32))) (Undefined!824) (MissingVacant!824 (index!5469 (_ BitVec 32))) )
))
(declare-fun lt!112251 () SeekEntryResult!824)

(assert (=> b!220612 (= res!108208 (= (select (arr!5132 (_keys!6215 thiss!1504)) (index!5466 lt!112251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220613 () Bool)

(declare-fun call!20619 () Bool)

(assert (=> b!220613 (= e!143446 (not call!20619))))

(declare-fun b!220614 () Bool)

(declare-fun res!108201 () Bool)

(assert (=> b!220614 (=> (not res!108201) (not e!143440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10826 (_ BitVec 32)) Bool)

(assert (=> b!220614 (= res!108201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6215 thiss!1504) (mask!9965 thiss!1504)))))

(declare-fun b!220615 () Bool)

(declare-fun res!108203 () Bool)

(assert (=> b!220615 (=> (not res!108203) (not e!143440))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220615 (= res!108203 (arrayContainsKey!0 (_keys!6215 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220616 () Bool)

(declare-fun e!143436 () Bool)

(declare-fun e!143445 () Bool)

(assert (=> b!220616 (= e!143436 e!143445)))

(declare-fun res!108206 () Bool)

(assert (=> b!220616 (=> (not res!108206) (not e!143445))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220616 (= res!108206 (or (= lt!112251 (MissingZero!824 index!297)) (= lt!112251 (MissingVacant!824 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10826 (_ BitVec 32)) SeekEntryResult!824)

(assert (=> b!220616 (= lt!112251 (seekEntryOrOpen!0 key!932 (_keys!6215 thiss!1504) (mask!9965 thiss!1504)))))

(declare-fun b!220617 () Bool)

(declare-datatypes ((Unit!6579 0))(
  ( (Unit!6580) )
))
(declare-fun e!143443 () Unit!6579)

(declare-fun Unit!6581 () Unit!6579)

(assert (=> b!220617 (= e!143443 Unit!6581)))

(declare-fun lt!112252 () Unit!6579)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!206 (array!10826 array!10824 (_ BitVec 32) (_ BitVec 32) V!7369 V!7369 (_ BitVec 64) Int) Unit!6579)

(assert (=> b!220617 (= lt!112252 (lemmaInListMapThenSeekEntryOrOpenFindsIt!206 (_keys!6215 thiss!1504) (_values!4144 thiss!1504) (mask!9965 thiss!1504) (extraKeys!3898 thiss!1504) (zeroValue!4002 thiss!1504) (minValue!4002 thiss!1504) key!932 (defaultEntry!4161 thiss!1504)))))

(assert (=> b!220617 false))

(declare-fun b!220618 () Bool)

(declare-fun res!108205 () Bool)

(assert (=> b!220618 (=> (not res!108205) (not e!143440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220618 (= res!108205 (validMask!0 (mask!9965 thiss!1504)))))

(declare-fun b!220619 () Bool)

(declare-fun res!108202 () Bool)

(assert (=> b!220619 (=> (not res!108202) (not e!143436))))

(assert (=> b!220619 (= res!108202 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220620 () Bool)

(declare-fun e!143442 () Bool)

(declare-fun tp_is_empty!5791 () Bool)

(assert (=> b!220620 (= e!143442 tp_is_empty!5791)))

(declare-fun b!220621 () Bool)

(declare-fun c!36694 () Bool)

(assert (=> b!220621 (= c!36694 (is-MissingVacant!824 lt!112251))))

(declare-fun e!143439 () Bool)

(declare-fun e!143438 () Bool)

(assert (=> b!220621 (= e!143439 e!143438)))

(declare-fun b!220622 () Bool)

(declare-fun lt!112250 () Unit!6579)

(assert (=> b!220622 (= e!143443 lt!112250)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!215 (array!10826 array!10824 (_ BitVec 32) (_ BitVec 32) V!7369 V!7369 (_ BitVec 64) Int) Unit!6579)

(assert (=> b!220622 (= lt!112250 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!215 (_keys!6215 thiss!1504) (_values!4144 thiss!1504) (mask!9965 thiss!1504) (extraKeys!3898 thiss!1504) (zeroValue!4002 thiss!1504) (minValue!4002 thiss!1504) key!932 (defaultEntry!4161 thiss!1504)))))

(declare-fun c!36693 () Bool)

(assert (=> b!220622 (= c!36693 (is-MissingZero!824 lt!112251))))

(assert (=> b!220622 e!143439))

(declare-fun e!143435 () Bool)

(declare-fun e!143434 () Bool)

(declare-fun array_inv!3385 (array!10826) Bool)

(declare-fun array_inv!3386 (array!10824) Bool)

(assert (=> b!220623 (= e!143435 (and tp!20929 tp_is_empty!5791 (array_inv!3385 (_keys!6215 thiss!1504)) (array_inv!3386 (_values!4144 thiss!1504)) e!143434))))

(declare-fun mapNonEmpty!9856 () Bool)

(declare-fun mapRes!9856 () Bool)

(declare-fun tp!20928 () Bool)

(assert (=> mapNonEmpty!9856 (= mapRes!9856 (and tp!20928 e!143442))))

(declare-fun mapRest!9856 () (Array (_ BitVec 32) ValueCell!2552))

(declare-fun mapValue!9856 () ValueCell!2552)

(declare-fun mapKey!9856 () (_ BitVec 32))

(assert (=> mapNonEmpty!9856 (= (arr!5131 (_values!4144 thiss!1504)) (store mapRest!9856 mapKey!9856 mapValue!9856))))

(declare-fun mapIsEmpty!9856 () Bool)

(assert (=> mapIsEmpty!9856 mapRes!9856))

(declare-fun res!108211 () Bool)

(assert (=> start!21874 (=> (not res!108211) (not e!143436))))

(declare-fun valid!1203 (LongMapFixedSize!3004) Bool)

(assert (=> start!21874 (= res!108211 (valid!1203 thiss!1504))))

(assert (=> start!21874 e!143436))

(assert (=> start!21874 e!143435))

(assert (=> start!21874 true))

(declare-fun bm!20616 () Bool)

(assert (=> bm!20616 (= call!20619 (arrayContainsKey!0 (_keys!6215 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220624 () Bool)

(declare-fun e!143437 () Bool)

(assert (=> b!220624 (= e!143434 (and e!143437 mapRes!9856))))

(declare-fun condMapEmpty!9856 () Bool)

(declare-fun mapDefault!9856 () ValueCell!2552)

