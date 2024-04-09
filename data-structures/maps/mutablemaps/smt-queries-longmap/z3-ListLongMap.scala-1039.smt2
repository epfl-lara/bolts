; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21930 () Bool)

(assert start!21930)

(declare-fun b!222706 () Bool)

(declare-fun b_free!5985 () Bool)

(declare-fun b_next!5985 () Bool)

(assert (=> b!222706 (= b_free!5985 (not b_next!5985))))

(declare-fun tp!21097 () Bool)

(declare-fun b_and!12901 () Bool)

(assert (=> b!222706 (= tp!21097 b_and!12901)))

(declare-fun b!222704 () Bool)

(declare-fun e!144746 () Bool)

(declare-fun e!144735 () Bool)

(assert (=> b!222704 (= e!144746 e!144735)))

(declare-fun res!109380 () Bool)

(declare-fun call!20788 () Bool)

(assert (=> b!222704 (= res!109380 call!20788)))

(assert (=> b!222704 (=> (not res!109380) (not e!144735))))

(declare-fun b!222705 () Bool)

(declare-datatypes ((Unit!6679 0))(
  ( (Unit!6680) )
))
(declare-fun e!144734 () Unit!6679)

(declare-fun Unit!6681 () Unit!6679)

(assert (=> b!222705 (= e!144734 Unit!6681)))

(declare-fun lt!112756 () Unit!6679)

(declare-datatypes ((V!7443 0))(
  ( (V!7444 (val!2968 Int)) )
))
(declare-datatypes ((ValueCell!2580 0))(
  ( (ValueCellFull!2580 (v!4984 V!7443)) (EmptyCell!2580) )
))
(declare-datatypes ((array!10936 0))(
  ( (array!10937 (arr!5187 (Array (_ BitVec 32) ValueCell!2580)) (size!5520 (_ BitVec 32))) )
))
(declare-datatypes ((array!10938 0))(
  ( (array!10939 (arr!5188 (Array (_ BitVec 32) (_ BitVec 64))) (size!5521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3060 0))(
  ( (LongMapFixedSize!3061 (defaultEntry!4189 Int) (mask!10011 (_ BitVec 32)) (extraKeys!3926 (_ BitVec 32)) (zeroValue!4030 V!7443) (minValue!4030 V!7443) (_size!1579 (_ BitVec 32)) (_keys!6243 array!10938) (_values!4172 array!10936) (_vacant!1579 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3060)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!64 (array!10938 array!10936 (_ BitVec 32) (_ BitVec 32) V!7443 V!7443 (_ BitVec 64) (_ BitVec 32) Int) Unit!6679)

(assert (=> b!222705 (= lt!112756 (lemmaArrayContainsKeyThenInListMap!64 (_keys!6243 thiss!1504) (_values!4172 thiss!1504) (mask!10011 thiss!1504) (extraKeys!3926 thiss!1504) (zeroValue!4030 thiss!1504) (minValue!4030 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4189 thiss!1504)))))

(assert (=> b!222705 false))

(declare-fun e!144738 () Bool)

(declare-fun tp_is_empty!5847 () Bool)

(declare-fun e!144743 () Bool)

(declare-fun array_inv!3425 (array!10938) Bool)

(declare-fun array_inv!3426 (array!10936) Bool)

(assert (=> b!222706 (= e!144743 (and tp!21097 tp_is_empty!5847 (array_inv!3425 (_keys!6243 thiss!1504)) (array_inv!3426 (_values!4172 thiss!1504)) e!144738))))

(declare-fun b!222707 () Bool)

(declare-fun e!144733 () Bool)

(assert (=> b!222707 (= e!144733 tp_is_empty!5847)))

(declare-fun b!222708 () Bool)

(declare-datatypes ((SeekEntryResult!851 0))(
  ( (MissingZero!851 (index!5574 (_ BitVec 32))) (Found!851 (index!5575 (_ BitVec 32))) (Intermediate!851 (undefined!1663 Bool) (index!5576 (_ BitVec 32)) (x!23079 (_ BitVec 32))) (Undefined!851) (MissingVacant!851 (index!5577 (_ BitVec 32))) )
))
(declare-fun lt!112754 () SeekEntryResult!851)

(get-info :version)

(assert (=> b!222708 (= e!144746 ((_ is Undefined!851) lt!112754))))

(declare-fun b!222709 () Bool)

(declare-fun res!109375 () Bool)

(declare-fun e!144748 () Bool)

(assert (=> b!222709 (=> (not res!109375) (not e!144748))))

(declare-datatypes ((List!3329 0))(
  ( (Nil!3326) (Cons!3325 (h!3973 (_ BitVec 64)) (t!8296 List!3329)) )
))
(declare-fun noDuplicate!72 (List!3329) Bool)

(assert (=> b!222709 (= res!109375 (noDuplicate!72 Nil!3326))))

(declare-fun b!222710 () Bool)

(declare-fun e!144739 () Bool)

(declare-fun contains!1528 (List!3329 (_ BitVec 64)) Bool)

(assert (=> b!222710 (= e!144739 (contains!1528 Nil!3326 key!932))))

(declare-fun b!222711 () Bool)

(declare-fun call!20787 () Bool)

(assert (=> b!222711 (= e!144735 (not call!20787))))

(declare-fun b!222712 () Bool)

(declare-fun e!144731 () Bool)

(declare-fun e!144732 () Bool)

(assert (=> b!222712 (= e!144731 e!144732)))

(declare-fun res!109384 () Bool)

(assert (=> b!222712 (=> (not res!109384) (not e!144732))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222712 (= res!109384 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222713 () Bool)

(declare-fun mapRes!9940 () Bool)

(assert (=> b!222713 (= e!144738 (and e!144733 mapRes!9940))))

(declare-fun condMapEmpty!9940 () Bool)

(declare-fun mapDefault!9940 () ValueCell!2580)

(assert (=> b!222713 (= condMapEmpty!9940 (= (arr!5187 (_values!4172 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2580)) mapDefault!9940)))))

(declare-fun b!222714 () Bool)

(declare-fun e!144742 () Unit!6679)

(declare-fun lt!112753 () Unit!6679)

(assert (=> b!222714 (= e!144742 lt!112753)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!236 (array!10938 array!10936 (_ BitVec 32) (_ BitVec 32) V!7443 V!7443 (_ BitVec 64) Int) Unit!6679)

(assert (=> b!222714 (= lt!112753 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!236 (_keys!6243 thiss!1504) (_values!4172 thiss!1504) (mask!10011 thiss!1504) (extraKeys!3926 thiss!1504) (zeroValue!4030 thiss!1504) (minValue!4030 thiss!1504) key!932 (defaultEntry!4189 thiss!1504)))))

(declare-fun c!36987 () Bool)

(assert (=> b!222714 (= c!36987 ((_ is MissingZero!851) lt!112754))))

(declare-fun e!144745 () Bool)

(assert (=> b!222714 e!144745))

(declare-fun b!222715 () Bool)

(declare-fun res!109378 () Bool)

(assert (=> b!222715 (= res!109378 (= (select (arr!5188 (_keys!6243 thiss!1504)) (index!5577 lt!112754)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222715 (=> (not res!109378) (not e!144735))))

(declare-fun b!222716 () Bool)

(declare-fun res!109374 () Bool)

(assert (=> b!222716 (=> (not res!109374) (not e!144748))))

(assert (=> b!222716 (= res!109374 e!144731)))

(declare-fun res!109383 () Bool)

(assert (=> b!222716 (=> res!109383 e!144731)))

(assert (=> b!222716 (= res!109383 e!144739)))

(declare-fun res!109385 () Bool)

(assert (=> b!222716 (=> (not res!109385) (not e!144739))))

(assert (=> b!222716 (= res!109385 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222717 () Bool)

(declare-fun Unit!6682 () Unit!6679)

(assert (=> b!222717 (= e!144734 Unit!6682)))

(declare-fun b!222718 () Bool)

(declare-fun res!109387 () Bool)

(assert (=> b!222718 (=> (not res!109387) (not e!144748))))

(assert (=> b!222718 (= res!109387 (not (contains!1528 Nil!3326 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!20784 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20784 (= call!20788 (inRange!0 (ite c!36987 (index!5574 lt!112754) (index!5577 lt!112754)) (mask!10011 thiss!1504)))))

(declare-fun b!222719 () Bool)

(declare-fun res!109376 () Bool)

(assert (=> b!222719 (=> (not res!109376) (not e!144748))))

(assert (=> b!222719 (= res!109376 (not (contains!1528 Nil!3326 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222720 () Bool)

(assert (=> b!222720 (= e!144732 (not (contains!1528 Nil!3326 key!932)))))

(declare-fun b!222721 () Bool)

(declare-fun e!144737 () Bool)

(assert (=> b!222721 (= e!144737 tp_is_empty!5847)))

(declare-fun b!222722 () Bool)

(declare-fun res!109386 () Bool)

(declare-fun e!144736 () Bool)

(assert (=> b!222722 (=> (not res!109386) (not e!144736))))

(assert (=> b!222722 (= res!109386 (= (select (arr!5188 (_keys!6243 thiss!1504)) (index!5574 lt!112754)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222723 () Bool)

(declare-fun e!144747 () Bool)

(assert (=> b!222723 (= e!144747 e!144748)))

(declare-fun res!109379 () Bool)

(assert (=> b!222723 (=> (not res!109379) (not e!144748))))

(assert (=> b!222723 (= res!109379 (and (bvslt (size!5521 (_keys!6243 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5521 (_keys!6243 thiss!1504)))))))

(declare-fun lt!112755 () Unit!6679)

(assert (=> b!222723 (= lt!112755 e!144734)))

(declare-fun c!36988 () Bool)

(declare-fun arrayContainsKey!0 (array!10938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222723 (= c!36988 (arrayContainsKey!0 (_keys!6243 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222724 () Bool)

(assert (=> b!222724 (= e!144748 false)))

(declare-fun lt!112758 () Bool)

(declare-fun arrayNoDuplicates!0 (array!10938 (_ BitVec 32) List!3329) Bool)

(assert (=> b!222724 (= lt!112758 (arrayNoDuplicates!0 (_keys!6243 thiss!1504) #b00000000000000000000000000000000 Nil!3326))))

(declare-fun b!222725 () Bool)

(declare-fun e!144740 () Bool)

(assert (=> b!222725 (= e!144740 e!144747)))

(declare-fun res!109382 () Bool)

(assert (=> b!222725 (=> (not res!109382) (not e!144747))))

(assert (=> b!222725 (= res!109382 (inRange!0 index!297 (mask!10011 thiss!1504)))))

(declare-fun lt!112752 () Unit!6679)

(assert (=> b!222725 (= lt!112752 e!144742)))

(declare-fun c!36989 () Bool)

(declare-datatypes ((tuple2!4400 0))(
  ( (tuple2!4401 (_1!2210 (_ BitVec 64)) (_2!2210 V!7443)) )
))
(declare-datatypes ((List!3330 0))(
  ( (Nil!3327) (Cons!3326 (h!3974 tuple2!4400) (t!8297 List!3330)) )
))
(declare-datatypes ((ListLongMap!3327 0))(
  ( (ListLongMap!3328 (toList!1679 List!3330)) )
))
(declare-fun contains!1529 (ListLongMap!3327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1202 (array!10938 array!10936 (_ BitVec 32) (_ BitVec 32) V!7443 V!7443 (_ BitVec 32) Int) ListLongMap!3327)

(assert (=> b!222725 (= c!36989 (contains!1529 (getCurrentListMap!1202 (_keys!6243 thiss!1504) (_values!4172 thiss!1504) (mask!10011 thiss!1504) (extraKeys!3926 thiss!1504) (zeroValue!4030 thiss!1504) (minValue!4030 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4189 thiss!1504)) key!932))))

(declare-fun b!222726 () Bool)

(declare-fun c!36986 () Bool)

(assert (=> b!222726 (= c!36986 ((_ is MissingVacant!851) lt!112754))))

(assert (=> b!222726 (= e!144745 e!144746)))

(declare-fun bm!20785 () Bool)

(assert (=> bm!20785 (= call!20787 (arrayContainsKey!0 (_keys!6243 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222727 () Bool)

(declare-fun res!109373 () Bool)

(assert (=> b!222727 (=> (not res!109373) (not e!144736))))

(assert (=> b!222727 (= res!109373 call!20788)))

(assert (=> b!222727 (= e!144745 e!144736)))

(declare-fun b!222728 () Bool)

(declare-fun Unit!6683 () Unit!6679)

(assert (=> b!222728 (= e!144742 Unit!6683)))

(declare-fun lt!112757 () Unit!6679)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!228 (array!10938 array!10936 (_ BitVec 32) (_ BitVec 32) V!7443 V!7443 (_ BitVec 64) Int) Unit!6679)

(assert (=> b!222728 (= lt!112757 (lemmaInListMapThenSeekEntryOrOpenFindsIt!228 (_keys!6243 thiss!1504) (_values!4172 thiss!1504) (mask!10011 thiss!1504) (extraKeys!3926 thiss!1504) (zeroValue!4030 thiss!1504) (minValue!4030 thiss!1504) key!932 (defaultEntry!4189 thiss!1504)))))

(assert (=> b!222728 false))

(declare-fun b!222729 () Bool)

(assert (=> b!222729 (= e!144736 (not call!20787))))

(declare-fun mapIsEmpty!9940 () Bool)

(assert (=> mapIsEmpty!9940 mapRes!9940))

(declare-fun b!222730 () Bool)

(declare-fun res!109377 () Bool)

(declare-fun e!144744 () Bool)

(assert (=> b!222730 (=> (not res!109377) (not e!144744))))

(assert (=> b!222730 (= res!109377 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222731 () Bool)

(assert (=> b!222731 (= e!144744 e!144740)))

(declare-fun res!109372 () Bool)

(assert (=> b!222731 (=> (not res!109372) (not e!144740))))

(assert (=> b!222731 (= res!109372 (or (= lt!112754 (MissingZero!851 index!297)) (= lt!112754 (MissingVacant!851 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10938 (_ BitVec 32)) SeekEntryResult!851)

(assert (=> b!222731 (= lt!112754 (seekEntryOrOpen!0 key!932 (_keys!6243 thiss!1504) (mask!10011 thiss!1504)))))

(declare-fun mapNonEmpty!9940 () Bool)

(declare-fun tp!21096 () Bool)

(assert (=> mapNonEmpty!9940 (= mapRes!9940 (and tp!21096 e!144737))))

(declare-fun mapKey!9940 () (_ BitVec 32))

(declare-fun mapRest!9940 () (Array (_ BitVec 32) ValueCell!2580))

(declare-fun mapValue!9940 () ValueCell!2580)

(assert (=> mapNonEmpty!9940 (= (arr!5187 (_values!4172 thiss!1504)) (store mapRest!9940 mapKey!9940 mapValue!9940))))

(declare-fun res!109381 () Bool)

(assert (=> start!21930 (=> (not res!109381) (not e!144744))))

(declare-fun valid!1225 (LongMapFixedSize!3060) Bool)

(assert (=> start!21930 (= res!109381 (valid!1225 thiss!1504))))

(assert (=> start!21930 e!144744))

(assert (=> start!21930 e!144743))

(assert (=> start!21930 true))

(assert (= (and start!21930 res!109381) b!222730))

(assert (= (and b!222730 res!109377) b!222731))

(assert (= (and b!222731 res!109372) b!222725))

(assert (= (and b!222725 c!36989) b!222728))

(assert (= (and b!222725 (not c!36989)) b!222714))

(assert (= (and b!222714 c!36987) b!222727))

(assert (= (and b!222714 (not c!36987)) b!222726))

(assert (= (and b!222727 res!109373) b!222722))

(assert (= (and b!222722 res!109386) b!222729))

(assert (= (and b!222726 c!36986) b!222704))

(assert (= (and b!222726 (not c!36986)) b!222708))

(assert (= (and b!222704 res!109380) b!222715))

(assert (= (and b!222715 res!109378) b!222711))

(assert (= (or b!222727 b!222704) bm!20784))

(assert (= (or b!222729 b!222711) bm!20785))

(assert (= (and b!222725 res!109382) b!222723))

(assert (= (and b!222723 c!36988) b!222705))

(assert (= (and b!222723 (not c!36988)) b!222717))

(assert (= (and b!222723 res!109379) b!222709))

(assert (= (and b!222709 res!109375) b!222719))

(assert (= (and b!222719 res!109376) b!222718))

(assert (= (and b!222718 res!109387) b!222716))

(assert (= (and b!222716 res!109385) b!222710))

(assert (= (and b!222716 (not res!109383)) b!222712))

(assert (= (and b!222712 res!109384) b!222720))

(assert (= (and b!222716 res!109374) b!222724))

(assert (= (and b!222713 condMapEmpty!9940) mapIsEmpty!9940))

(assert (= (and b!222713 (not condMapEmpty!9940)) mapNonEmpty!9940))

(assert (= (and mapNonEmpty!9940 ((_ is ValueCellFull!2580) mapValue!9940)) b!222721))

(assert (= (and b!222713 ((_ is ValueCellFull!2580) mapDefault!9940)) b!222707))

(assert (= b!222706 b!222713))

(assert (= start!21930 b!222706))

(declare-fun m!246683 () Bool)

(assert (=> mapNonEmpty!9940 m!246683))

(declare-fun m!246685 () Bool)

(assert (=> b!222714 m!246685))

(declare-fun m!246687 () Bool)

(assert (=> b!222723 m!246687))

(declare-fun m!246689 () Bool)

(assert (=> b!222710 m!246689))

(declare-fun m!246691 () Bool)

(assert (=> b!222719 m!246691))

(declare-fun m!246693 () Bool)

(assert (=> b!222725 m!246693))

(declare-fun m!246695 () Bool)

(assert (=> b!222725 m!246695))

(assert (=> b!222725 m!246695))

(declare-fun m!246697 () Bool)

(assert (=> b!222725 m!246697))

(declare-fun m!246699 () Bool)

(assert (=> b!222722 m!246699))

(declare-fun m!246701 () Bool)

(assert (=> b!222728 m!246701))

(declare-fun m!246703 () Bool)

(assert (=> bm!20784 m!246703))

(declare-fun m!246705 () Bool)

(assert (=> b!222706 m!246705))

(declare-fun m!246707 () Bool)

(assert (=> b!222706 m!246707))

(declare-fun m!246709 () Bool)

(assert (=> start!21930 m!246709))

(assert (=> b!222720 m!246689))

(declare-fun m!246711 () Bool)

(assert (=> b!222724 m!246711))

(assert (=> bm!20785 m!246687))

(declare-fun m!246713 () Bool)

(assert (=> b!222705 m!246713))

(declare-fun m!246715 () Bool)

(assert (=> b!222718 m!246715))

(declare-fun m!246717 () Bool)

(assert (=> b!222731 m!246717))

(declare-fun m!246719 () Bool)

(assert (=> b!222709 m!246719))

(declare-fun m!246721 () Bool)

(assert (=> b!222715 m!246721))

(check-sat (not b!222723) (not start!21930) (not b!222719) (not b!222706) (not b!222720) (not b!222714) tp_is_empty!5847 (not b_next!5985) (not b!222728) (not bm!20785) (not b!222724) (not b!222731) (not b!222710) (not mapNonEmpty!9940) (not b!222725) (not b!222718) b_and!12901 (not b!222705) (not b!222709) (not bm!20784))
(check-sat b_and!12901 (not b_next!5985))
