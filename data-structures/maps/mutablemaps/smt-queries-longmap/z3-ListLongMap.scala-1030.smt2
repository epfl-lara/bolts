; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21876 () Bool)

(assert start!21876)

(declare-fun b!220684 () Bool)

(declare-fun b_free!5931 () Bool)

(declare-fun b_next!5931 () Bool)

(assert (=> b!220684 (= b_free!5931 (not b_next!5931))))

(declare-fun tp!20935 () Bool)

(declare-fun b_and!12847 () Bool)

(assert (=> b!220684 (= tp!20935 b_and!12847)))

(declare-fun res!108247 () Bool)

(declare-fun e!143473 () Bool)

(assert (=> start!21876 (=> (not res!108247) (not e!143473))))

(declare-datatypes ((V!7371 0))(
  ( (V!7372 (val!2941 Int)) )
))
(declare-datatypes ((ValueCell!2553 0))(
  ( (ValueCellFull!2553 (v!4957 V!7371)) (EmptyCell!2553) )
))
(declare-datatypes ((array!10828 0))(
  ( (array!10829 (arr!5133 (Array (_ BitVec 32) ValueCell!2553)) (size!5466 (_ BitVec 32))) )
))
(declare-datatypes ((array!10830 0))(
  ( (array!10831 (arr!5134 (Array (_ BitVec 32) (_ BitVec 64))) (size!5467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3006 0))(
  ( (LongMapFixedSize!3007 (defaultEntry!4162 Int) (mask!9966 (_ BitVec 32)) (extraKeys!3899 (_ BitVec 32)) (zeroValue!4003 V!7371) (minValue!4003 V!7371) (_size!1552 (_ BitVec 32)) (_keys!6216 array!10830) (_values!4145 array!10828) (_vacant!1552 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3006)

(declare-fun valid!1204 (LongMapFixedSize!3006) Bool)

(assert (=> start!21876 (= res!108247 (valid!1204 thiss!1504))))

(assert (=> start!21876 e!143473))

(declare-fun e!143485 () Bool)

(assert (=> start!21876 e!143485))

(assert (=> start!21876 true))

(declare-fun b!220676 () Bool)

(declare-fun e!143480 () Bool)

(declare-fun tp_is_empty!5793 () Bool)

(assert (=> b!220676 (= e!143480 tp_is_empty!5793)))

(declare-fun b!220677 () Bool)

(declare-fun res!108240 () Bool)

(assert (=> b!220677 (=> (not res!108240) (not e!143473))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!220677 (= res!108240 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220678 () Bool)

(declare-fun res!108246 () Bool)

(declare-fun e!143477 () Bool)

(assert (=> b!220678 (=> (not res!108246) (not e!143477))))

(declare-fun call!20625 () Bool)

(assert (=> b!220678 (= res!108246 call!20625)))

(declare-fun e!143474 () Bool)

(assert (=> b!220678 (= e!143474 e!143477)))

(declare-fun b!220679 () Bool)

(declare-datatypes ((Unit!6582 0))(
  ( (Unit!6583) )
))
(declare-fun e!143483 () Unit!6582)

(declare-fun Unit!6584 () Unit!6582)

(assert (=> b!220679 (= e!143483 Unit!6584)))

(declare-fun lt!112266 () Unit!6582)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!207 (array!10830 array!10828 (_ BitVec 32) (_ BitVec 32) V!7371 V!7371 (_ BitVec 64) Int) Unit!6582)

(assert (=> b!220679 (= lt!112266 (lemmaInListMapThenSeekEntryOrOpenFindsIt!207 (_keys!6216 thiss!1504) (_values!4145 thiss!1504) (mask!9966 thiss!1504) (extraKeys!3899 thiss!1504) (zeroValue!4003 thiss!1504) (minValue!4003 thiss!1504) key!932 (defaultEntry!4162 thiss!1504)))))

(assert (=> b!220679 false))

(declare-fun b!220680 () Bool)

(declare-fun res!108244 () Bool)

(declare-fun e!143482 () Bool)

(assert (=> b!220680 (=> (not res!108244) (not e!143482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220680 (= res!108244 (validMask!0 (mask!9966 thiss!1504)))))

(declare-fun b!220681 () Bool)

(declare-fun c!36703 () Bool)

(declare-datatypes ((SeekEntryResult!825 0))(
  ( (MissingZero!825 (index!5470 (_ BitVec 32))) (Found!825 (index!5471 (_ BitVec 32))) (Intermediate!825 (undefined!1637 Bool) (index!5472 (_ BitVec 32)) (x!22981 (_ BitVec 32))) (Undefined!825) (MissingVacant!825 (index!5473 (_ BitVec 32))) )
))
(declare-fun lt!112267 () SeekEntryResult!825)

(get-info :version)

(assert (=> b!220681 (= c!36703 ((_ is MissingVacant!825) lt!112267))))

(declare-fun e!143475 () Bool)

(assert (=> b!220681 (= e!143474 e!143475)))

(declare-fun b!220682 () Bool)

(declare-fun res!108241 () Bool)

(assert (=> b!220682 (= res!108241 (= (select (arr!5134 (_keys!6216 thiss!1504)) (index!5473 lt!112267)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143481 () Bool)

(assert (=> b!220682 (=> (not res!108241) (not e!143481))))

(declare-fun b!220683 () Bool)

(declare-fun lt!112268 () Unit!6582)

(assert (=> b!220683 (= e!143483 lt!112268)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!216 (array!10830 array!10828 (_ BitVec 32) (_ BitVec 32) V!7371 V!7371 (_ BitVec 64) Int) Unit!6582)

(assert (=> b!220683 (= lt!112268 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!216 (_keys!6216 thiss!1504) (_values!4145 thiss!1504) (mask!9966 thiss!1504) (extraKeys!3899 thiss!1504) (zeroValue!4003 thiss!1504) (minValue!4003 thiss!1504) key!932 (defaultEntry!4162 thiss!1504)))))

(declare-fun c!36702 () Bool)

(assert (=> b!220683 (= c!36702 ((_ is MissingZero!825) lt!112267))))

(assert (=> b!220683 e!143474))

(declare-fun e!143476 () Bool)

(declare-fun array_inv!3387 (array!10830) Bool)

(declare-fun array_inv!3388 (array!10828) Bool)

(assert (=> b!220684 (= e!143485 (and tp!20935 tp_is_empty!5793 (array_inv!3387 (_keys!6216 thiss!1504)) (array_inv!3388 (_values!4145 thiss!1504)) e!143476))))

(declare-fun b!220685 () Bool)

(assert (=> b!220685 (= e!143475 e!143481)))

(declare-fun res!108243 () Bool)

(assert (=> b!220685 (= res!108243 call!20625)))

(assert (=> b!220685 (=> (not res!108243) (not e!143481))))

(declare-fun bm!20622 () Bool)

(declare-fun call!20626 () Bool)

(declare-fun arrayContainsKey!0 (array!10830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20622 (= call!20626 (arrayContainsKey!0 (_keys!6216 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220686 () Bool)

(assert (=> b!220686 (= e!143477 (not call!20626))))

(declare-fun b!220687 () Bool)

(declare-fun res!108245 () Bool)

(assert (=> b!220687 (=> (not res!108245) (not e!143482))))

(assert (=> b!220687 (= res!108245 (arrayContainsKey!0 (_keys!6216 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220688 () Bool)

(declare-fun e!143478 () Bool)

(assert (=> b!220688 (= e!143473 e!143478)))

(declare-fun res!108239 () Bool)

(assert (=> b!220688 (=> (not res!108239) (not e!143478))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220688 (= res!108239 (or (= lt!112267 (MissingZero!825 index!297)) (= lt!112267 (MissingVacant!825 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10830 (_ BitVec 32)) SeekEntryResult!825)

(assert (=> b!220688 (= lt!112267 (seekEntryOrOpen!0 key!932 (_keys!6216 thiss!1504) (mask!9966 thiss!1504)))))

(declare-fun bm!20623 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20623 (= call!20625 (inRange!0 (ite c!36702 (index!5470 lt!112267) (index!5473 lt!112267)) (mask!9966 thiss!1504)))))

(declare-fun mapNonEmpty!9859 () Bool)

(declare-fun mapRes!9859 () Bool)

(declare-fun tp!20934 () Bool)

(declare-fun e!143484 () Bool)

(assert (=> mapNonEmpty!9859 (= mapRes!9859 (and tp!20934 e!143484))))

(declare-fun mapKey!9859 () (_ BitVec 32))

(declare-fun mapRest!9859 () (Array (_ BitVec 32) ValueCell!2553))

(declare-fun mapValue!9859 () ValueCell!2553)

(assert (=> mapNonEmpty!9859 (= (arr!5133 (_values!4145 thiss!1504)) (store mapRest!9859 mapKey!9859 mapValue!9859))))

(declare-fun b!220689 () Bool)

(assert (=> b!220689 (= e!143476 (and e!143480 mapRes!9859))))

(declare-fun condMapEmpty!9859 () Bool)

(declare-fun mapDefault!9859 () ValueCell!2553)

(assert (=> b!220689 (= condMapEmpty!9859 (= (arr!5133 (_values!4145 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2553)) mapDefault!9859)))))

(declare-fun b!220690 () Bool)

(assert (=> b!220690 (= e!143482 false)))

(declare-fun lt!112265 () Bool)

(declare-datatypes ((List!3285 0))(
  ( (Nil!3282) (Cons!3281 (h!3929 (_ BitVec 64)) (t!8252 List!3285)) )
))
(declare-fun arrayNoDuplicates!0 (array!10830 (_ BitVec 32) List!3285) Bool)

(assert (=> b!220690 (= lt!112265 (arrayNoDuplicates!0 (_keys!6216 thiss!1504) #b00000000000000000000000000000000 Nil!3282))))

(declare-fun b!220691 () Bool)

(assert (=> b!220691 (= e!143484 tp_is_empty!5793)))

(declare-fun b!220692 () Bool)

(assert (=> b!220692 (= e!143481 (not call!20626))))

(declare-fun b!220693 () Bool)

(declare-fun res!108238 () Bool)

(assert (=> b!220693 (=> (not res!108238) (not e!143482))))

(assert (=> b!220693 (= res!108238 (and (= (size!5466 (_values!4145 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9966 thiss!1504))) (= (size!5467 (_keys!6216 thiss!1504)) (size!5466 (_values!4145 thiss!1504))) (bvsge (mask!9966 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3899 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3899 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220694 () Bool)

(declare-fun res!108242 () Bool)

(assert (=> b!220694 (=> (not res!108242) (not e!143482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10830 (_ BitVec 32)) Bool)

(assert (=> b!220694 (= res!108242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6216 thiss!1504) (mask!9966 thiss!1504)))))

(declare-fun b!220695 () Bool)

(assert (=> b!220695 (= e!143475 ((_ is Undefined!825) lt!112267))))

(declare-fun b!220696 () Bool)

(declare-fun res!108237 () Bool)

(assert (=> b!220696 (=> (not res!108237) (not e!143477))))

(assert (=> b!220696 (= res!108237 (= (select (arr!5134 (_keys!6216 thiss!1504)) (index!5470 lt!112267)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220697 () Bool)

(assert (=> b!220697 (= e!143478 e!143482)))

(declare-fun res!108236 () Bool)

(assert (=> b!220697 (=> (not res!108236) (not e!143482))))

(assert (=> b!220697 (= res!108236 (inRange!0 index!297 (mask!9966 thiss!1504)))))

(declare-fun lt!112269 () Unit!6582)

(assert (=> b!220697 (= lt!112269 e!143483)))

(declare-fun c!36704 () Bool)

(declare-datatypes ((tuple2!4358 0))(
  ( (tuple2!4359 (_1!2189 (_ BitVec 64)) (_2!2189 V!7371)) )
))
(declare-datatypes ((List!3286 0))(
  ( (Nil!3283) (Cons!3282 (h!3930 tuple2!4358) (t!8253 List!3286)) )
))
(declare-datatypes ((ListLongMap!3285 0))(
  ( (ListLongMap!3286 (toList!1658 List!3286)) )
))
(declare-fun contains!1495 (ListLongMap!3285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1181 (array!10830 array!10828 (_ BitVec 32) (_ BitVec 32) V!7371 V!7371 (_ BitVec 32) Int) ListLongMap!3285)

(assert (=> b!220697 (= c!36704 (contains!1495 (getCurrentListMap!1181 (_keys!6216 thiss!1504) (_values!4145 thiss!1504) (mask!9966 thiss!1504) (extraKeys!3899 thiss!1504) (zeroValue!4003 thiss!1504) (minValue!4003 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4162 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9859 () Bool)

(assert (=> mapIsEmpty!9859 mapRes!9859))

(assert (= (and start!21876 res!108247) b!220677))

(assert (= (and b!220677 res!108240) b!220688))

(assert (= (and b!220688 res!108239) b!220697))

(assert (= (and b!220697 c!36704) b!220679))

(assert (= (and b!220697 (not c!36704)) b!220683))

(assert (= (and b!220683 c!36702) b!220678))

(assert (= (and b!220683 (not c!36702)) b!220681))

(assert (= (and b!220678 res!108246) b!220696))

(assert (= (and b!220696 res!108237) b!220686))

(assert (= (and b!220681 c!36703) b!220685))

(assert (= (and b!220681 (not c!36703)) b!220695))

(assert (= (and b!220685 res!108243) b!220682))

(assert (= (and b!220682 res!108241) b!220692))

(assert (= (or b!220678 b!220685) bm!20623))

(assert (= (or b!220686 b!220692) bm!20622))

(assert (= (and b!220697 res!108236) b!220687))

(assert (= (and b!220687 res!108245) b!220680))

(assert (= (and b!220680 res!108244) b!220693))

(assert (= (and b!220693 res!108238) b!220694))

(assert (= (and b!220694 res!108242) b!220690))

(assert (= (and b!220689 condMapEmpty!9859) mapIsEmpty!9859))

(assert (= (and b!220689 (not condMapEmpty!9859)) mapNonEmpty!9859))

(assert (= (and mapNonEmpty!9859 ((_ is ValueCellFull!2553) mapValue!9859)) b!220691))

(assert (= (and b!220689 ((_ is ValueCellFull!2553) mapDefault!9859)) b!220676))

(assert (= b!220684 b!220689))

(assert (= start!21876 b!220684))

(declare-fun m!245687 () Bool)

(assert (=> start!21876 m!245687))

(declare-fun m!245689 () Bool)

(assert (=> b!220683 m!245689))

(declare-fun m!245691 () Bool)

(assert (=> b!220682 m!245691))

(declare-fun m!245693 () Bool)

(assert (=> b!220690 m!245693))

(declare-fun m!245695 () Bool)

(assert (=> mapNonEmpty!9859 m!245695))

(declare-fun m!245697 () Bool)

(assert (=> b!220679 m!245697))

(declare-fun m!245699 () Bool)

(assert (=> bm!20623 m!245699))

(declare-fun m!245701 () Bool)

(assert (=> b!220680 m!245701))

(declare-fun m!245703 () Bool)

(assert (=> b!220696 m!245703))

(declare-fun m!245705 () Bool)

(assert (=> b!220688 m!245705))

(declare-fun m!245707 () Bool)

(assert (=> b!220697 m!245707))

(declare-fun m!245709 () Bool)

(assert (=> b!220697 m!245709))

(assert (=> b!220697 m!245709))

(declare-fun m!245711 () Bool)

(assert (=> b!220697 m!245711))

(declare-fun m!245713 () Bool)

(assert (=> b!220684 m!245713))

(declare-fun m!245715 () Bool)

(assert (=> b!220684 m!245715))

(declare-fun m!245717 () Bool)

(assert (=> bm!20622 m!245717))

(declare-fun m!245719 () Bool)

(assert (=> b!220694 m!245719))

(assert (=> b!220687 m!245717))

(check-sat (not b_next!5931) (not b!220679) b_and!12847 (not b!220694) (not start!21876) (not b!220697) (not b!220687) (not b!220684) (not b!220690) (not b!220688) (not b!220680) tp_is_empty!5793 (not bm!20622) (not bm!20623) (not b!220683) (not mapNonEmpty!9859))
(check-sat b_and!12847 (not b_next!5931))
