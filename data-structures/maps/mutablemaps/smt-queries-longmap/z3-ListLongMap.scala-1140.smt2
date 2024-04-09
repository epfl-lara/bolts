; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23584 () Bool)

(assert start!23584)

(declare-fun b!247644 () Bool)

(declare-fun b_free!6591 () Bool)

(declare-fun b_next!6591 () Bool)

(assert (=> b!247644 (= b_free!6591 (not b_next!6591))))

(declare-fun tp!23021 () Bool)

(declare-fun b_and!13611 () Bool)

(assert (=> b!247644 (= tp!23021 b_and!13611)))

(declare-fun b!247636 () Bool)

(declare-fun res!121387 () Bool)

(declare-fun e!160654 () Bool)

(assert (=> b!247636 (=> (not res!121387) (not e!160654))))

(declare-fun call!23192 () Bool)

(assert (=> b!247636 (= res!121387 call!23192)))

(declare-fun e!160666 () Bool)

(assert (=> b!247636 (= e!160666 e!160654)))

(declare-fun b!247637 () Bool)

(declare-fun e!160667 () Bool)

(declare-fun e!160658 () Bool)

(declare-fun mapRes!10955 () Bool)

(assert (=> b!247637 (= e!160667 (and e!160658 mapRes!10955))))

(declare-fun condMapEmpty!10955 () Bool)

(declare-datatypes ((V!8251 0))(
  ( (V!8252 (val!3271 Int)) )
))
(declare-datatypes ((ValueCell!2883 0))(
  ( (ValueCellFull!2883 (v!5325 V!8251)) (EmptyCell!2883) )
))
(declare-datatypes ((array!12212 0))(
  ( (array!12213 (arr!5793 (Array (_ BitVec 32) ValueCell!2883)) (size!6136 (_ BitVec 32))) )
))
(declare-datatypes ((array!12214 0))(
  ( (array!12215 (arr!5794 (Array (_ BitVec 32) (_ BitVec 64))) (size!6137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3666 0))(
  ( (LongMapFixedSize!3667 (defaultEntry!4582 Int) (mask!10722 (_ BitVec 32)) (extraKeys!4319 (_ BitVec 32)) (zeroValue!4423 V!8251) (minValue!4423 V!8251) (_size!1882 (_ BitVec 32)) (_keys!6704 array!12214) (_values!4565 array!12212) (_vacant!1882 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3666)

(declare-fun mapDefault!10955 () ValueCell!2883)

(assert (=> b!247637 (= condMapEmpty!10955 (= (arr!5793 (_values!4565 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2883)) mapDefault!10955)))))

(declare-fun b!247638 () Bool)

(declare-fun res!121389 () Bool)

(declare-datatypes ((SeekEntryResult!1114 0))(
  ( (MissingZero!1114 (index!6626 (_ BitVec 32))) (Found!1114 (index!6627 (_ BitVec 32))) (Intermediate!1114 (undefined!1926 Bool) (index!6628 (_ BitVec 32)) (x!24550 (_ BitVec 32))) (Undefined!1114) (MissingVacant!1114 (index!6629 (_ BitVec 32))) )
))
(declare-fun lt!124063 () SeekEntryResult!1114)

(assert (=> b!247638 (= res!121389 (= (select (arr!5794 (_keys!6704 thiss!1504)) (index!6629 lt!124063)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160656 () Bool)

(assert (=> b!247638 (=> (not res!121389) (not e!160656))))

(declare-fun b!247639 () Bool)

(declare-fun call!23193 () Bool)

(assert (=> b!247639 (= e!160654 (not call!23193))))

(declare-fun b!247640 () Bool)

(declare-fun e!160661 () Bool)

(declare-fun e!160663 () Bool)

(assert (=> b!247640 (= e!160661 e!160663)))

(declare-fun res!121386 () Bool)

(assert (=> b!247640 (=> (not res!121386) (not e!160663))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247640 (= res!121386 (or (= lt!124063 (MissingZero!1114 index!297)) (= lt!124063 (MissingVacant!1114 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12214 (_ BitVec 32)) SeekEntryResult!1114)

(assert (=> b!247640 (= lt!124063 (seekEntryOrOpen!0 key!932 (_keys!6704 thiss!1504) (mask!10722 thiss!1504)))))

(declare-fun b!247641 () Bool)

(declare-fun e!160665 () Bool)

(assert (=> b!247641 (= e!160665 (not true))))

(declare-fun lt!124058 () array!12214)

(declare-fun arrayCountValidKeys!0 (array!12214 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247641 (= (arrayCountValidKeys!0 lt!124058 #b00000000000000000000000000000000 (size!6137 (_keys!6704 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6704 thiss!1504) #b00000000000000000000000000000000 (size!6137 (_keys!6704 thiss!1504)))))))

(declare-datatypes ((Unit!7658 0))(
  ( (Unit!7659) )
))
(declare-fun lt!124060 () Unit!7658)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12214 (_ BitVec 32) (_ BitVec 64)) Unit!7658)

(assert (=> b!247641 (= lt!124060 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6704 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3717 0))(
  ( (Nil!3714) (Cons!3713 (h!4371 (_ BitVec 64)) (t!8748 List!3717)) )
))
(declare-fun arrayNoDuplicates!0 (array!12214 (_ BitVec 32) List!3717) Bool)

(assert (=> b!247641 (arrayNoDuplicates!0 lt!124058 #b00000000000000000000000000000000 Nil!3714)))

(assert (=> b!247641 (= lt!124058 (array!12215 (store (arr!5794 (_keys!6704 thiss!1504)) index!297 key!932) (size!6137 (_keys!6704 thiss!1504))))))

(declare-fun lt!124061 () Unit!7658)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12214 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3717) Unit!7658)

(assert (=> b!247641 (= lt!124061 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6704 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3714))))

(declare-fun lt!124065 () Unit!7658)

(declare-fun e!160659 () Unit!7658)

(assert (=> b!247641 (= lt!124065 e!160659)))

(declare-fun c!41454 () Bool)

(declare-fun arrayContainsKey!0 (array!12214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247641 (= c!41454 (arrayContainsKey!0 (_keys!6704 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247642 () Bool)

(declare-fun res!121393 () Bool)

(assert (=> b!247642 (=> (not res!121393) (not e!160661))))

(assert (=> b!247642 (= res!121393 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247643 () Bool)

(declare-fun e!160664 () Unit!7658)

(declare-fun Unit!7660 () Unit!7658)

(assert (=> b!247643 (= e!160664 Unit!7660)))

(declare-fun lt!124066 () Unit!7658)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!386 (array!12214 array!12212 (_ BitVec 32) (_ BitVec 32) V!8251 V!8251 (_ BitVec 64) Int) Unit!7658)

(assert (=> b!247643 (= lt!124066 (lemmaInListMapThenSeekEntryOrOpenFindsIt!386 (_keys!6704 thiss!1504) (_values!4565 thiss!1504) (mask!10722 thiss!1504) (extraKeys!4319 thiss!1504) (zeroValue!4423 thiss!1504) (minValue!4423 thiss!1504) key!932 (defaultEntry!4582 thiss!1504)))))

(assert (=> b!247643 false))

(declare-fun mapIsEmpty!10955 () Bool)

(assert (=> mapIsEmpty!10955 mapRes!10955))

(declare-fun e!160657 () Bool)

(declare-fun tp_is_empty!6453 () Bool)

(declare-fun array_inv!3817 (array!12214) Bool)

(declare-fun array_inv!3818 (array!12212) Bool)

(assert (=> b!247644 (= e!160657 (and tp!23021 tp_is_empty!6453 (array_inv!3817 (_keys!6704 thiss!1504)) (array_inv!3818 (_values!4565 thiss!1504)) e!160667))))

(declare-fun b!247645 () Bool)

(declare-fun Unit!7661 () Unit!7658)

(assert (=> b!247645 (= e!160659 Unit!7661)))

(declare-fun lt!124062 () Unit!7658)

(declare-fun lemmaArrayContainsKeyThenInListMap!187 (array!12214 array!12212 (_ BitVec 32) (_ BitVec 32) V!8251 V!8251 (_ BitVec 64) (_ BitVec 32) Int) Unit!7658)

(assert (=> b!247645 (= lt!124062 (lemmaArrayContainsKeyThenInListMap!187 (_keys!6704 thiss!1504) (_values!4565 thiss!1504) (mask!10722 thiss!1504) (extraKeys!4319 thiss!1504) (zeroValue!4423 thiss!1504) (minValue!4423 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4582 thiss!1504)))))

(assert (=> b!247645 false))

(declare-fun b!247646 () Bool)

(assert (=> b!247646 (= e!160663 e!160665)))

(declare-fun res!121388 () Bool)

(assert (=> b!247646 (=> (not res!121388) (not e!160665))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!247646 (= res!121388 (inRange!0 index!297 (mask!10722 thiss!1504)))))

(declare-fun lt!124064 () Unit!7658)

(assert (=> b!247646 (= lt!124064 e!160664)))

(declare-fun c!41453 () Bool)

(declare-datatypes ((tuple2!4812 0))(
  ( (tuple2!4813 (_1!2416 (_ BitVec 64)) (_2!2416 V!8251)) )
))
(declare-datatypes ((List!3718 0))(
  ( (Nil!3715) (Cons!3714 (h!4372 tuple2!4812) (t!8749 List!3718)) )
))
(declare-datatypes ((ListLongMap!3739 0))(
  ( (ListLongMap!3740 (toList!1885 List!3718)) )
))
(declare-fun contains!1793 (ListLongMap!3739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1408 (array!12214 array!12212 (_ BitVec 32) (_ BitVec 32) V!8251 V!8251 (_ BitVec 32) Int) ListLongMap!3739)

(assert (=> b!247646 (= c!41453 (contains!1793 (getCurrentListMap!1408 (_keys!6704 thiss!1504) (_values!4565 thiss!1504) (mask!10722 thiss!1504) (extraKeys!4319 thiss!1504) (zeroValue!4423 thiss!1504) (minValue!4423 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4582 thiss!1504)) key!932))))

(declare-fun b!247647 () Bool)

(assert (=> b!247647 (= e!160658 tp_is_empty!6453)))

(declare-fun b!247648 () Bool)

(declare-fun e!160662 () Bool)

(get-info :version)

(assert (=> b!247648 (= e!160662 ((_ is Undefined!1114) lt!124063))))

(declare-fun b!247649 () Bool)

(declare-fun lt!124059 () Unit!7658)

(assert (=> b!247649 (= e!160664 lt!124059)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!387 (array!12214 array!12212 (_ BitVec 32) (_ BitVec 32) V!8251 V!8251 (_ BitVec 64) Int) Unit!7658)

(assert (=> b!247649 (= lt!124059 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!387 (_keys!6704 thiss!1504) (_values!4565 thiss!1504) (mask!10722 thiss!1504) (extraKeys!4319 thiss!1504) (zeroValue!4423 thiss!1504) (minValue!4423 thiss!1504) key!932 (defaultEntry!4582 thiss!1504)))))

(declare-fun c!41452 () Bool)

(assert (=> b!247649 (= c!41452 ((_ is MissingZero!1114) lt!124063))))

(assert (=> b!247649 e!160666))

(declare-fun b!247650 () Bool)

(assert (=> b!247650 (= e!160662 e!160656)))

(declare-fun res!121392 () Bool)

(assert (=> b!247650 (= res!121392 call!23192)))

(assert (=> b!247650 (=> (not res!121392) (not e!160656))))

(declare-fun bm!23189 () Bool)

(assert (=> bm!23189 (= call!23192 (inRange!0 (ite c!41452 (index!6626 lt!124063) (index!6629 lt!124063)) (mask!10722 thiss!1504)))))

(declare-fun b!247651 () Bool)

(declare-fun res!121391 () Bool)

(assert (=> b!247651 (=> (not res!121391) (not e!160654))))

(assert (=> b!247651 (= res!121391 (= (select (arr!5794 (_keys!6704 thiss!1504)) (index!6626 lt!124063)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247652 () Bool)

(assert (=> b!247652 (= e!160656 (not call!23193))))

(declare-fun mapNonEmpty!10955 () Bool)

(declare-fun tp!23020 () Bool)

(declare-fun e!160660 () Bool)

(assert (=> mapNonEmpty!10955 (= mapRes!10955 (and tp!23020 e!160660))))

(declare-fun mapRest!10955 () (Array (_ BitVec 32) ValueCell!2883))

(declare-fun mapValue!10955 () ValueCell!2883)

(declare-fun mapKey!10955 () (_ BitVec 32))

(assert (=> mapNonEmpty!10955 (= (arr!5793 (_values!4565 thiss!1504)) (store mapRest!10955 mapKey!10955 mapValue!10955))))

(declare-fun res!121390 () Bool)

(assert (=> start!23584 (=> (not res!121390) (not e!160661))))

(declare-fun valid!1426 (LongMapFixedSize!3666) Bool)

(assert (=> start!23584 (= res!121390 (valid!1426 thiss!1504))))

(assert (=> start!23584 e!160661))

(assert (=> start!23584 e!160657))

(assert (=> start!23584 true))

(declare-fun b!247653 () Bool)

(declare-fun c!41455 () Bool)

(assert (=> b!247653 (= c!41455 ((_ is MissingVacant!1114) lt!124063))))

(assert (=> b!247653 (= e!160666 e!160662)))

(declare-fun b!247654 () Bool)

(assert (=> b!247654 (= e!160660 tp_is_empty!6453)))

(declare-fun bm!23190 () Bool)

(assert (=> bm!23190 (= call!23193 (arrayContainsKey!0 (_keys!6704 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247655 () Bool)

(declare-fun Unit!7662 () Unit!7658)

(assert (=> b!247655 (= e!160659 Unit!7662)))

(assert (= (and start!23584 res!121390) b!247642))

(assert (= (and b!247642 res!121393) b!247640))

(assert (= (and b!247640 res!121386) b!247646))

(assert (= (and b!247646 c!41453) b!247643))

(assert (= (and b!247646 (not c!41453)) b!247649))

(assert (= (and b!247649 c!41452) b!247636))

(assert (= (and b!247649 (not c!41452)) b!247653))

(assert (= (and b!247636 res!121387) b!247651))

(assert (= (and b!247651 res!121391) b!247639))

(assert (= (and b!247653 c!41455) b!247650))

(assert (= (and b!247653 (not c!41455)) b!247648))

(assert (= (and b!247650 res!121392) b!247638))

(assert (= (and b!247638 res!121389) b!247652))

(assert (= (or b!247636 b!247650) bm!23189))

(assert (= (or b!247639 b!247652) bm!23190))

(assert (= (and b!247646 res!121388) b!247641))

(assert (= (and b!247641 c!41454) b!247645))

(assert (= (and b!247641 (not c!41454)) b!247655))

(assert (= (and b!247637 condMapEmpty!10955) mapIsEmpty!10955))

(assert (= (and b!247637 (not condMapEmpty!10955)) mapNonEmpty!10955))

(assert (= (and mapNonEmpty!10955 ((_ is ValueCellFull!2883) mapValue!10955)) b!247654))

(assert (= (and b!247637 ((_ is ValueCellFull!2883) mapDefault!10955)) b!247647))

(assert (= b!247644 b!247637))

(assert (= start!23584 b!247644))

(declare-fun m!264651 () Bool)

(assert (=> start!23584 m!264651))

(declare-fun m!264653 () Bool)

(assert (=> b!247649 m!264653))

(declare-fun m!264655 () Bool)

(assert (=> bm!23190 m!264655))

(declare-fun m!264657 () Bool)

(assert (=> b!247646 m!264657))

(declare-fun m!264659 () Bool)

(assert (=> b!247646 m!264659))

(assert (=> b!247646 m!264659))

(declare-fun m!264661 () Bool)

(assert (=> b!247646 m!264661))

(declare-fun m!264663 () Bool)

(assert (=> b!247651 m!264663))

(declare-fun m!264665 () Bool)

(assert (=> b!247644 m!264665))

(declare-fun m!264667 () Bool)

(assert (=> b!247644 m!264667))

(declare-fun m!264669 () Bool)

(assert (=> b!247643 m!264669))

(declare-fun m!264671 () Bool)

(assert (=> bm!23189 m!264671))

(declare-fun m!264673 () Bool)

(assert (=> b!247640 m!264673))

(assert (=> b!247641 m!264655))

(declare-fun m!264675 () Bool)

(assert (=> b!247641 m!264675))

(declare-fun m!264677 () Bool)

(assert (=> b!247641 m!264677))

(declare-fun m!264679 () Bool)

(assert (=> b!247641 m!264679))

(declare-fun m!264681 () Bool)

(assert (=> b!247641 m!264681))

(declare-fun m!264683 () Bool)

(assert (=> b!247641 m!264683))

(declare-fun m!264685 () Bool)

(assert (=> b!247641 m!264685))

(declare-fun m!264687 () Bool)

(assert (=> mapNonEmpty!10955 m!264687))

(declare-fun m!264689 () Bool)

(assert (=> b!247638 m!264689))

(declare-fun m!264691 () Bool)

(assert (=> b!247645 m!264691))

(check-sat (not b!247646) (not b!247643) (not b!247640) (not b!247641) (not b_next!6591) tp_is_empty!6453 (not b!247644) (not bm!23189) (not start!23584) (not b!247649) b_and!13611 (not mapNonEmpty!10955) (not bm!23190) (not b!247645))
(check-sat b_and!13611 (not b_next!6591))
