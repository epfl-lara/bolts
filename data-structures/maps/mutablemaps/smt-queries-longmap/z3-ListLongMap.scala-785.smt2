; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18684 () Bool)

(assert start!18684)

(declare-fun b!184647 () Bool)

(declare-fun b_free!4551 () Bool)

(declare-fun b_next!4551 () Bool)

(assert (=> b!184647 (= b_free!4551 (not b_next!4551))))

(declare-fun tp!16439 () Bool)

(declare-fun b_and!11159 () Bool)

(assert (=> b!184647 (= tp!16439 b_and!11159)))

(declare-fun b!184641 () Bool)

(declare-fun res!87366 () Bool)

(declare-fun e!121546 () Bool)

(assert (=> b!184641 (=> (not res!87366) (not e!121546))))

(declare-datatypes ((V!5411 0))(
  ( (V!5412 (val!2206 Int)) )
))
(declare-datatypes ((ValueCell!1818 0))(
  ( (ValueCellFull!1818 (v!4109 V!5411)) (EmptyCell!1818) )
))
(declare-datatypes ((array!7846 0))(
  ( (array!7847 (arr!3706 (Array (_ BitVec 32) (_ BitVec 64))) (size!4021 (_ BitVec 32))) )
))
(declare-datatypes ((array!7848 0))(
  ( (array!7849 (arr!3707 (Array (_ BitVec 32) ValueCell!1818)) (size!4022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2544 0))(
  ( (LongMapFixedSize!2545 (defaultEntry!3769 Int) (mask!8859 (_ BitVec 32)) (extraKeys!3506 (_ BitVec 32)) (zeroValue!3610 V!5411) (minValue!3610 V!5411) (_size!1321 (_ BitVec 32)) (_keys!5700 array!7846) (_values!3752 array!7848) (_vacant!1321 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2544)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3430 0))(
  ( (tuple2!3431 (_1!1725 (_ BitVec 64)) (_2!1725 V!5411)) )
))
(declare-datatypes ((List!2368 0))(
  ( (Nil!2365) (Cons!2364 (h!2996 tuple2!3430) (t!7252 List!2368)) )
))
(declare-datatypes ((ListLongMap!2361 0))(
  ( (ListLongMap!2362 (toList!1196 List!2368)) )
))
(declare-fun contains!1282 (ListLongMap!2361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!839 (array!7846 array!7848 (_ BitVec 32) (_ BitVec 32) V!5411 V!5411 (_ BitVec 32) Int) ListLongMap!2361)

(assert (=> b!184641 (= res!87366 (not (contains!1282 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)) key!828)))))

(declare-fun b!184642 () Bool)

(assert (=> b!184642 (= e!121546 (and (= (size!4022 (_values!3752 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8859 thiss!1248))) (= (size!4021 (_keys!5700 thiss!1248)) (size!4022 (_values!3752 thiss!1248))) (bvsge (mask!8859 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3506 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3506 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!184643 () Bool)

(declare-fun res!87362 () Bool)

(assert (=> b!184643 (=> (not res!87362) (not e!121546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184643 (= res!87362 (validMask!0 (mask!8859 thiss!1248)))))

(declare-fun b!184644 () Bool)

(declare-fun res!87365 () Bool)

(declare-fun e!121540 () Bool)

(assert (=> b!184644 (=> (not res!87365) (not e!121540))))

(assert (=> b!184644 (= res!87365 (not (= key!828 (bvneg key!828))))))

(declare-fun b!184645 () Bool)

(declare-fun e!121542 () Bool)

(declare-fun tp_is_empty!4323 () Bool)

(assert (=> b!184645 (= e!121542 tp_is_empty!4323)))

(declare-fun mapIsEmpty!7433 () Bool)

(declare-fun mapRes!7433 () Bool)

(assert (=> mapIsEmpty!7433 mapRes!7433))

(declare-fun mapNonEmpty!7433 () Bool)

(declare-fun tp!16438 () Bool)

(declare-fun e!121544 () Bool)

(assert (=> mapNonEmpty!7433 (= mapRes!7433 (and tp!16438 e!121544))))

(declare-fun mapValue!7433 () ValueCell!1818)

(declare-fun mapRest!7433 () (Array (_ BitVec 32) ValueCell!1818))

(declare-fun mapKey!7433 () (_ BitVec 32))

(assert (=> mapNonEmpty!7433 (= (arr!3707 (_values!3752 thiss!1248)) (store mapRest!7433 mapKey!7433 mapValue!7433))))

(declare-fun b!184646 () Bool)

(assert (=> b!184646 (= e!121540 e!121546)))

(declare-fun res!87364 () Bool)

(assert (=> b!184646 (=> (not res!87364) (not e!121546))))

(declare-datatypes ((SeekEntryResult!638 0))(
  ( (MissingZero!638 (index!4722 (_ BitVec 32))) (Found!638 (index!4723 (_ BitVec 32))) (Intermediate!638 (undefined!1450 Bool) (index!4724 (_ BitVec 32)) (x!20088 (_ BitVec 32))) (Undefined!638) (MissingVacant!638 (index!4725 (_ BitVec 32))) )
))
(declare-fun lt!91358 () SeekEntryResult!638)

(get-info :version)

(assert (=> b!184646 (= res!87364 (and (not ((_ is Undefined!638) lt!91358)) (not ((_ is MissingVacant!638) lt!91358)) (not ((_ is MissingZero!638) lt!91358)) ((_ is Found!638) lt!91358)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7846 (_ BitVec 32)) SeekEntryResult!638)

(assert (=> b!184646 (= lt!91358 (seekEntryOrOpen!0 key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun e!121545 () Bool)

(declare-fun e!121543 () Bool)

(declare-fun array_inv!2387 (array!7846) Bool)

(declare-fun array_inv!2388 (array!7848) Bool)

(assert (=> b!184647 (= e!121543 (and tp!16439 tp_is_empty!4323 (array_inv!2387 (_keys!5700 thiss!1248)) (array_inv!2388 (_values!3752 thiss!1248)) e!121545))))

(declare-fun res!87363 () Bool)

(assert (=> start!18684 (=> (not res!87363) (not e!121540))))

(declare-fun valid!1042 (LongMapFixedSize!2544) Bool)

(assert (=> start!18684 (= res!87363 (valid!1042 thiss!1248))))

(assert (=> start!18684 e!121540))

(assert (=> start!18684 e!121543))

(assert (=> start!18684 true))

(declare-fun b!184648 () Bool)

(assert (=> b!184648 (= e!121544 tp_is_empty!4323)))

(declare-fun b!184649 () Bool)

(assert (=> b!184649 (= e!121545 (and e!121542 mapRes!7433))))

(declare-fun condMapEmpty!7433 () Bool)

(declare-fun mapDefault!7433 () ValueCell!1818)

(assert (=> b!184649 (= condMapEmpty!7433 (= (arr!3707 (_values!3752 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1818)) mapDefault!7433)))))

(assert (= (and start!18684 res!87363) b!184644))

(assert (= (and b!184644 res!87365) b!184646))

(assert (= (and b!184646 res!87364) b!184641))

(assert (= (and b!184641 res!87366) b!184643))

(assert (= (and b!184643 res!87362) b!184642))

(assert (= (and b!184649 condMapEmpty!7433) mapIsEmpty!7433))

(assert (= (and b!184649 (not condMapEmpty!7433)) mapNonEmpty!7433))

(assert (= (and mapNonEmpty!7433 ((_ is ValueCellFull!1818) mapValue!7433)) b!184648))

(assert (= (and b!184649 ((_ is ValueCellFull!1818) mapDefault!7433)) b!184645))

(assert (= b!184647 b!184649))

(assert (= start!18684 b!184647))

(declare-fun m!212031 () Bool)

(assert (=> mapNonEmpty!7433 m!212031))

(declare-fun m!212033 () Bool)

(assert (=> start!18684 m!212033))

(declare-fun m!212035 () Bool)

(assert (=> b!184643 m!212035))

(declare-fun m!212037 () Bool)

(assert (=> b!184641 m!212037))

(assert (=> b!184641 m!212037))

(declare-fun m!212039 () Bool)

(assert (=> b!184641 m!212039))

(declare-fun m!212041 () Bool)

(assert (=> b!184647 m!212041))

(declare-fun m!212043 () Bool)

(assert (=> b!184647 m!212043))

(declare-fun m!212045 () Bool)

(assert (=> b!184646 m!212045))

(check-sat (not b!184643) (not b!184641) (not b_next!4551) b_and!11159 (not mapNonEmpty!7433) (not b!184646) (not start!18684) tp_is_empty!4323 (not b!184647))
(check-sat b_and!11159 (not b_next!4551))
(get-model)

(declare-fun d!54905 () Bool)

(declare-fun e!121572 () Bool)

(assert (=> d!54905 e!121572))

(declare-fun res!87384 () Bool)

(assert (=> d!54905 (=> res!87384 e!121572)))

(declare-fun lt!91371 () Bool)

(assert (=> d!54905 (= res!87384 (not lt!91371))))

(declare-fun lt!91372 () Bool)

(assert (=> d!54905 (= lt!91371 lt!91372)))

(declare-datatypes ((Unit!5573 0))(
  ( (Unit!5574) )
))
(declare-fun lt!91370 () Unit!5573)

(declare-fun e!121573 () Unit!5573)

(assert (=> d!54905 (= lt!91370 e!121573)))

(declare-fun c!33116 () Bool)

(assert (=> d!54905 (= c!33116 lt!91372)))

(declare-fun containsKey!223 (List!2368 (_ BitVec 64)) Bool)

(assert (=> d!54905 (= lt!91372 (containsKey!223 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(assert (=> d!54905 (= (contains!1282 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)) key!828) lt!91371)))

(declare-fun b!184683 () Bool)

(declare-fun lt!91373 () Unit!5573)

(assert (=> b!184683 (= e!121573 lt!91373)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!172 (List!2368 (_ BitVec 64)) Unit!5573)

(assert (=> b!184683 (= lt!91373 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(declare-datatypes ((Option!225 0))(
  ( (Some!224 (v!4111 V!5411)) (None!223) )
))
(declare-fun isDefined!173 (Option!225) Bool)

(declare-fun getValueByKey!219 (List!2368 (_ BitVec 64)) Option!225)

(assert (=> b!184683 (isDefined!173 (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(declare-fun b!184684 () Bool)

(declare-fun Unit!5575 () Unit!5573)

(assert (=> b!184684 (= e!121573 Unit!5575)))

(declare-fun b!184685 () Bool)

(assert (=> b!184685 (= e!121572 (isDefined!173 (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828)))))

(assert (= (and d!54905 c!33116) b!184683))

(assert (= (and d!54905 (not c!33116)) b!184684))

(assert (= (and d!54905 (not res!87384)) b!184685))

(declare-fun m!212063 () Bool)

(assert (=> d!54905 m!212063))

(declare-fun m!212065 () Bool)

(assert (=> b!184683 m!212065))

(declare-fun m!212067 () Bool)

(assert (=> b!184683 m!212067))

(assert (=> b!184683 m!212067))

(declare-fun m!212069 () Bool)

(assert (=> b!184683 m!212069))

(assert (=> b!184685 m!212067))

(assert (=> b!184685 m!212067))

(assert (=> b!184685 m!212069))

(assert (=> b!184641 d!54905))

(declare-fun bm!18638 () Bool)

(declare-fun call!18643 () Bool)

(declare-fun lt!91420 () ListLongMap!2361)

(assert (=> bm!18638 (= call!18643 (contains!1282 lt!91420 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184728 () Bool)

(declare-fun e!121610 () ListLongMap!2361)

(declare-fun call!18641 () ListLongMap!2361)

(assert (=> b!184728 (= e!121610 call!18641)))

(declare-fun b!184729 () Bool)

(declare-fun e!121606 () Bool)

(declare-fun apply!163 (ListLongMap!2361 (_ BitVec 64)) V!5411)

(assert (=> b!184729 (= e!121606 (= (apply!163 lt!91420 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3610 thiss!1248)))))

(declare-fun call!18646 () ListLongMap!2361)

(declare-fun call!18645 () ListLongMap!2361)

(declare-fun c!33129 () Bool)

(declare-fun c!33130 () Bool)

(declare-fun bm!18639 () Bool)

(declare-fun call!18644 () ListLongMap!2361)

(declare-fun +!278 (ListLongMap!2361 tuple2!3430) ListLongMap!2361)

(assert (=> bm!18639 (= call!18644 (+!278 (ite c!33130 call!18645 (ite c!33129 call!18646 call!18641)) (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(declare-fun b!184730 () Bool)

(declare-fun e!121609 () Bool)

(declare-fun call!18642 () Bool)

(assert (=> b!184730 (= e!121609 (not call!18642))))

(declare-fun b!184731 () Bool)

(declare-fun e!121611 () Bool)

(declare-fun e!121601 () Bool)

(assert (=> b!184731 (= e!121611 e!121601)))

(declare-fun res!87407 () Bool)

(assert (=> b!184731 (=> (not res!87407) (not e!121601))))

(assert (=> b!184731 (= res!87407 (contains!1282 lt!91420 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184731 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun b!184732 () Bool)

(declare-fun call!18647 () ListLongMap!2361)

(assert (=> b!184732 (= e!121610 call!18647)))

(declare-fun b!184733 () Bool)

(declare-fun e!121604 () Bool)

(declare-fun e!121612 () Bool)

(assert (=> b!184733 (= e!121604 e!121612)))

(declare-fun c!33134 () Bool)

(assert (=> b!184733 (= c!33134 (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!184734 () Bool)

(declare-fun e!121607 () Unit!5573)

(declare-fun Unit!5576 () Unit!5573)

(assert (=> b!184734 (= e!121607 Unit!5576)))

(declare-fun b!184735 () Bool)

(declare-fun e!121605 () ListLongMap!2361)

(assert (=> b!184735 (= e!121605 call!18647)))

(declare-fun b!184736 () Bool)

(declare-fun e!121600 () ListLongMap!2361)

(assert (=> b!184736 (= e!121600 e!121605)))

(assert (=> b!184736 (= c!33129 (and (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!184737 () Bool)

(declare-fun c!33133 () Bool)

(assert (=> b!184737 (= c!33133 (and (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!184737 (= e!121605 e!121610)))

(declare-fun bm!18640 () Bool)

(assert (=> bm!18640 (= call!18647 call!18644)))

(declare-fun b!184738 () Bool)

(declare-fun e!121602 () Bool)

(assert (=> b!184738 (= e!121612 e!121602)))

(declare-fun res!87409 () Bool)

(assert (=> b!184738 (= res!87409 call!18643)))

(assert (=> b!184738 (=> (not res!87409) (not e!121602))))

(declare-fun b!184739 () Bool)

(declare-fun res!87405 () Bool)

(assert (=> b!184739 (=> (not res!87405) (not e!121604))))

(assert (=> b!184739 (= res!87405 e!121609)))

(declare-fun c!33131 () Bool)

(assert (=> b!184739 (= c!33131 (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18641 () Bool)

(assert (=> bm!18641 (= call!18642 (contains!1282 lt!91420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!54907 () Bool)

(assert (=> d!54907 e!121604))

(declare-fun res!87403 () Bool)

(assert (=> d!54907 (=> (not res!87403) (not e!121604))))

(assert (=> d!54907 (= res!87403 (or (bvsge #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))))

(declare-fun lt!91431 () ListLongMap!2361)

(assert (=> d!54907 (= lt!91420 lt!91431)))

(declare-fun lt!91439 () Unit!5573)

(assert (=> d!54907 (= lt!91439 e!121607)))

(declare-fun c!33132 () Bool)

(declare-fun e!121603 () Bool)

(assert (=> d!54907 (= c!33132 e!121603)))

(declare-fun res!87411 () Bool)

(assert (=> d!54907 (=> (not res!87411) (not e!121603))))

(assert (=> d!54907 (= res!87411 (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54907 (= lt!91431 e!121600)))

(assert (=> d!54907 (= c!33130 (and (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3506 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54907 (validMask!0 (mask!8859 thiss!1248))))

(assert (=> d!54907 (= (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)) lt!91420)))

(declare-fun b!184740 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!184740 (= e!121603 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184741 () Bool)

(assert (=> b!184741 (= e!121600 (+!278 call!18644 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))

(declare-fun b!184742 () Bool)

(declare-fun res!87408 () Bool)

(assert (=> b!184742 (=> (not res!87408) (not e!121604))))

(assert (=> b!184742 (= res!87408 e!121611)))

(declare-fun res!87410 () Bool)

(assert (=> b!184742 (=> res!87410 e!121611)))

(declare-fun e!121608 () Bool)

(assert (=> b!184742 (= res!87410 (not e!121608))))

(declare-fun res!87406 () Bool)

(assert (=> b!184742 (=> (not res!87406) (not e!121608))))

(assert (=> b!184742 (= res!87406 (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun b!184743 () Bool)

(assert (=> b!184743 (= e!121609 e!121606)))

(declare-fun res!87404 () Bool)

(assert (=> b!184743 (= res!87404 call!18642)))

(assert (=> b!184743 (=> (not res!87404) (not e!121606))))

(declare-fun b!184744 () Bool)

(declare-fun lt!91426 () Unit!5573)

(assert (=> b!184744 (= e!121607 lt!91426)))

(declare-fun lt!91423 () ListLongMap!2361)

(declare-fun getCurrentListMapNoExtraKeys!193 (array!7846 array!7848 (_ BitVec 32) (_ BitVec 32) V!5411 V!5411 (_ BitVec 32) Int) ListLongMap!2361)

(assert (=> b!184744 (= lt!91423 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))

(declare-fun lt!91432 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91432 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91433 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91433 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91427 () Unit!5573)

(declare-fun addStillContains!139 (ListLongMap!2361 (_ BitVec 64) V!5411 (_ BitVec 64)) Unit!5573)

(assert (=> b!184744 (= lt!91427 (addStillContains!139 lt!91423 lt!91432 (zeroValue!3610 thiss!1248) lt!91433))))

(assert (=> b!184744 (contains!1282 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) lt!91433)))

(declare-fun lt!91438 () Unit!5573)

(assert (=> b!184744 (= lt!91438 lt!91427)))

(declare-fun lt!91418 () ListLongMap!2361)

(assert (=> b!184744 (= lt!91418 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))

(declare-fun lt!91421 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91421 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91434 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91434 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91419 () Unit!5573)

(declare-fun addApplyDifferent!139 (ListLongMap!2361 (_ BitVec 64) V!5411 (_ BitVec 64)) Unit!5573)

(assert (=> b!184744 (= lt!91419 (addApplyDifferent!139 lt!91418 lt!91421 (minValue!3610 thiss!1248) lt!91434))))

(assert (=> b!184744 (= (apply!163 (+!278 lt!91418 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) lt!91434) (apply!163 lt!91418 lt!91434))))

(declare-fun lt!91428 () Unit!5573)

(assert (=> b!184744 (= lt!91428 lt!91419)))

(declare-fun lt!91436 () ListLongMap!2361)

(assert (=> b!184744 (= lt!91436 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))

(declare-fun lt!91422 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91422 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91424 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91424 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91430 () Unit!5573)

(assert (=> b!184744 (= lt!91430 (addApplyDifferent!139 lt!91436 lt!91422 (zeroValue!3610 thiss!1248) lt!91424))))

(assert (=> b!184744 (= (apply!163 (+!278 lt!91436 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) lt!91424) (apply!163 lt!91436 lt!91424))))

(declare-fun lt!91425 () Unit!5573)

(assert (=> b!184744 (= lt!91425 lt!91430)))

(declare-fun lt!91435 () ListLongMap!2361)

(assert (=> b!184744 (= lt!91435 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))

(declare-fun lt!91429 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91429 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91437 () (_ BitVec 64))

(assert (=> b!184744 (= lt!91437 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184744 (= lt!91426 (addApplyDifferent!139 lt!91435 lt!91429 (minValue!3610 thiss!1248) lt!91437))))

(assert (=> b!184744 (= (apply!163 (+!278 lt!91435 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) lt!91437) (apply!163 lt!91435 lt!91437))))

(declare-fun b!184745 () Bool)

(assert (=> b!184745 (= e!121602 (= (apply!163 lt!91420 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3610 thiss!1248)))))

(declare-fun b!184746 () Bool)

(declare-fun get!2130 (ValueCell!1818 V!5411) V!5411)

(declare-fun dynLambda!501 (Int (_ BitVec 64)) V!5411)

(assert (=> b!184746 (= e!121601 (= (apply!163 lt!91420 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)) (get!2130 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!184746 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4022 (_values!3752 thiss!1248))))))

(assert (=> b!184746 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun bm!18642 () Bool)

(assert (=> bm!18642 (= call!18641 call!18646)))

(declare-fun bm!18643 () Bool)

(assert (=> bm!18643 (= call!18646 call!18645)))

(declare-fun bm!18644 () Bool)

(assert (=> bm!18644 (= call!18645 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))

(declare-fun b!184747 () Bool)

(assert (=> b!184747 (= e!121608 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184748 () Bool)

(assert (=> b!184748 (= e!121612 (not call!18643))))

(assert (= (and d!54907 c!33130) b!184741))

(assert (= (and d!54907 (not c!33130)) b!184736))

(assert (= (and b!184736 c!33129) b!184735))

(assert (= (and b!184736 (not c!33129)) b!184737))

(assert (= (and b!184737 c!33133) b!184732))

(assert (= (and b!184737 (not c!33133)) b!184728))

(assert (= (or b!184732 b!184728) bm!18642))

(assert (= (or b!184735 bm!18642) bm!18643))

(assert (= (or b!184735 b!184732) bm!18640))

(assert (= (or b!184741 bm!18643) bm!18644))

(assert (= (or b!184741 bm!18640) bm!18639))

(assert (= (and d!54907 res!87411) b!184740))

(assert (= (and d!54907 c!33132) b!184744))

(assert (= (and d!54907 (not c!33132)) b!184734))

(assert (= (and d!54907 res!87403) b!184742))

(assert (= (and b!184742 res!87406) b!184747))

(assert (= (and b!184742 (not res!87410)) b!184731))

(assert (= (and b!184731 res!87407) b!184746))

(assert (= (and b!184742 res!87408) b!184739))

(assert (= (and b!184739 c!33131) b!184743))

(assert (= (and b!184739 (not c!33131)) b!184730))

(assert (= (and b!184743 res!87404) b!184729))

(assert (= (or b!184743 b!184730) bm!18641))

(assert (= (and b!184739 res!87405) b!184733))

(assert (= (and b!184733 c!33134) b!184738))

(assert (= (and b!184733 (not c!33134)) b!184748))

(assert (= (and b!184738 res!87409) b!184745))

(assert (= (or b!184738 b!184748) bm!18638))

(declare-fun b_lambda!7261 () Bool)

(assert (=> (not b_lambda!7261) (not b!184746)))

(declare-fun t!7255 () Bool)

(declare-fun tb!2845 () Bool)

(assert (=> (and b!184647 (= (defaultEntry!3769 thiss!1248) (defaultEntry!3769 thiss!1248)) t!7255) tb!2845))

(declare-fun result!4797 () Bool)

(assert (=> tb!2845 (= result!4797 tp_is_empty!4323)))

(assert (=> b!184746 t!7255))

(declare-fun b_and!11163 () Bool)

(assert (= b_and!11159 (and (=> t!7255 result!4797) b_and!11163)))

(declare-fun m!212071 () Bool)

(assert (=> b!184729 m!212071))

(declare-fun m!212073 () Bool)

(assert (=> b!184740 m!212073))

(assert (=> b!184740 m!212073))

(declare-fun m!212075 () Bool)

(assert (=> b!184740 m!212075))

(declare-fun m!212077 () Bool)

(assert (=> b!184746 m!212077))

(assert (=> b!184746 m!212073))

(declare-fun m!212079 () Bool)

(assert (=> b!184746 m!212079))

(assert (=> b!184746 m!212077))

(declare-fun m!212081 () Bool)

(assert (=> b!184746 m!212081))

(assert (=> b!184746 m!212073))

(declare-fun m!212083 () Bool)

(assert (=> b!184746 m!212083))

(assert (=> b!184746 m!212079))

(assert (=> b!184731 m!212073))

(assert (=> b!184731 m!212073))

(declare-fun m!212085 () Bool)

(assert (=> b!184731 m!212085))

(declare-fun m!212087 () Bool)

(assert (=> bm!18644 m!212087))

(declare-fun m!212089 () Bool)

(assert (=> b!184745 m!212089))

(declare-fun m!212091 () Bool)

(assert (=> b!184741 m!212091))

(declare-fun m!212093 () Bool)

(assert (=> bm!18638 m!212093))

(declare-fun m!212095 () Bool)

(assert (=> bm!18641 m!212095))

(assert (=> d!54907 m!212035))

(declare-fun m!212097 () Bool)

(assert (=> bm!18639 m!212097))

(assert (=> b!184747 m!212073))

(assert (=> b!184747 m!212073))

(assert (=> b!184747 m!212075))

(declare-fun m!212099 () Bool)

(assert (=> b!184744 m!212099))

(declare-fun m!212101 () Bool)

(assert (=> b!184744 m!212101))

(declare-fun m!212103 () Bool)

(assert (=> b!184744 m!212103))

(assert (=> b!184744 m!212073))

(declare-fun m!212105 () Bool)

(assert (=> b!184744 m!212105))

(declare-fun m!212107 () Bool)

(assert (=> b!184744 m!212107))

(declare-fun m!212109 () Bool)

(assert (=> b!184744 m!212109))

(declare-fun m!212111 () Bool)

(assert (=> b!184744 m!212111))

(assert (=> b!184744 m!212103))

(declare-fun m!212113 () Bool)

(assert (=> b!184744 m!212113))

(declare-fun m!212115 () Bool)

(assert (=> b!184744 m!212115))

(declare-fun m!212117 () Bool)

(assert (=> b!184744 m!212117))

(declare-fun m!212119 () Bool)

(assert (=> b!184744 m!212119))

(assert (=> b!184744 m!212099))

(declare-fun m!212121 () Bool)

(assert (=> b!184744 m!212121))

(assert (=> b!184744 m!212087))

(declare-fun m!212123 () Bool)

(assert (=> b!184744 m!212123))

(assert (=> b!184744 m!212107))

(declare-fun m!212125 () Bool)

(assert (=> b!184744 m!212125))

(assert (=> b!184744 m!212117))

(declare-fun m!212127 () Bool)

(assert (=> b!184744 m!212127))

(assert (=> b!184641 d!54907))

(declare-fun b!184763 () Bool)

(declare-fun e!121621 () SeekEntryResult!638)

(assert (=> b!184763 (= e!121621 Undefined!638)))

(declare-fun b!184764 () Bool)

(declare-fun e!121619 () SeekEntryResult!638)

(assert (=> b!184764 (= e!121621 e!121619)))

(declare-fun lt!91446 () (_ BitVec 64))

(declare-fun lt!91448 () SeekEntryResult!638)

(assert (=> b!184764 (= lt!91446 (select (arr!3706 (_keys!5700 thiss!1248)) (index!4724 lt!91448)))))

(declare-fun c!33141 () Bool)

(assert (=> b!184764 (= c!33141 (= lt!91446 key!828))))

(declare-fun b!184765 () Bool)

(assert (=> b!184765 (= e!121619 (Found!638 (index!4724 lt!91448)))))

(declare-fun b!184766 () Bool)

(declare-fun e!121620 () SeekEntryResult!638)

(assert (=> b!184766 (= e!121620 (MissingZero!638 (index!4724 lt!91448)))))

(declare-fun b!184767 () Bool)

(declare-fun c!33142 () Bool)

(assert (=> b!184767 (= c!33142 (= lt!91446 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184767 (= e!121619 e!121620)))

(declare-fun b!184768 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7846 (_ BitVec 32)) SeekEntryResult!638)

(assert (=> b!184768 (= e!121620 (seekKeyOrZeroReturnVacant!0 (x!20088 lt!91448) (index!4724 lt!91448) (index!4724 lt!91448) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun d!54909 () Bool)

(declare-fun lt!91447 () SeekEntryResult!638)

(assert (=> d!54909 (and (or ((_ is Undefined!638) lt!91447) (not ((_ is Found!638) lt!91447)) (and (bvsge (index!4723 lt!91447) #b00000000000000000000000000000000) (bvslt (index!4723 lt!91447) (size!4021 (_keys!5700 thiss!1248))))) (or ((_ is Undefined!638) lt!91447) ((_ is Found!638) lt!91447) (not ((_ is MissingZero!638) lt!91447)) (and (bvsge (index!4722 lt!91447) #b00000000000000000000000000000000) (bvslt (index!4722 lt!91447) (size!4021 (_keys!5700 thiss!1248))))) (or ((_ is Undefined!638) lt!91447) ((_ is Found!638) lt!91447) ((_ is MissingZero!638) lt!91447) (not ((_ is MissingVacant!638) lt!91447)) (and (bvsge (index!4725 lt!91447) #b00000000000000000000000000000000) (bvslt (index!4725 lt!91447) (size!4021 (_keys!5700 thiss!1248))))) (or ((_ is Undefined!638) lt!91447) (ite ((_ is Found!638) lt!91447) (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4723 lt!91447)) key!828) (ite ((_ is MissingZero!638) lt!91447) (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4722 lt!91447)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!638) lt!91447) (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4725 lt!91447)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54909 (= lt!91447 e!121621)))

(declare-fun c!33143 () Bool)

(assert (=> d!54909 (= c!33143 (and ((_ is Intermediate!638) lt!91448) (undefined!1450 lt!91448)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7846 (_ BitVec 32)) SeekEntryResult!638)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54909 (= lt!91448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8859 thiss!1248)) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(assert (=> d!54909 (validMask!0 (mask!8859 thiss!1248))))

(assert (=> d!54909 (= (seekEntryOrOpen!0 key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)) lt!91447)))

(assert (= (and d!54909 c!33143) b!184763))

(assert (= (and d!54909 (not c!33143)) b!184764))

(assert (= (and b!184764 c!33141) b!184765))

(assert (= (and b!184764 (not c!33141)) b!184767))

(assert (= (and b!184767 c!33142) b!184766))

(assert (= (and b!184767 (not c!33142)) b!184768))

(declare-fun m!212129 () Bool)

(assert (=> b!184764 m!212129))

(declare-fun m!212131 () Bool)

(assert (=> b!184768 m!212131))

(assert (=> d!54909 m!212035))

(declare-fun m!212133 () Bool)

(assert (=> d!54909 m!212133))

(declare-fun m!212135 () Bool)

(assert (=> d!54909 m!212135))

(declare-fun m!212137 () Bool)

(assert (=> d!54909 m!212137))

(assert (=> d!54909 m!212133))

(declare-fun m!212139 () Bool)

(assert (=> d!54909 m!212139))

(declare-fun m!212141 () Bool)

(assert (=> d!54909 m!212141))

(assert (=> b!184646 d!54909))

(declare-fun d!54911 () Bool)

(assert (=> d!54911 (= (validMask!0 (mask!8859 thiss!1248)) (and (or (= (mask!8859 thiss!1248) #b00000000000000000000000000000111) (= (mask!8859 thiss!1248) #b00000000000000000000000000001111) (= (mask!8859 thiss!1248) #b00000000000000000000000000011111) (= (mask!8859 thiss!1248) #b00000000000000000000000000111111) (= (mask!8859 thiss!1248) #b00000000000000000000000001111111) (= (mask!8859 thiss!1248) #b00000000000000000000000011111111) (= (mask!8859 thiss!1248) #b00000000000000000000000111111111) (= (mask!8859 thiss!1248) #b00000000000000000000001111111111) (= (mask!8859 thiss!1248) #b00000000000000000000011111111111) (= (mask!8859 thiss!1248) #b00000000000000000000111111111111) (= (mask!8859 thiss!1248) #b00000000000000000001111111111111) (= (mask!8859 thiss!1248) #b00000000000000000011111111111111) (= (mask!8859 thiss!1248) #b00000000000000000111111111111111) (= (mask!8859 thiss!1248) #b00000000000000001111111111111111) (= (mask!8859 thiss!1248) #b00000000000000011111111111111111) (= (mask!8859 thiss!1248) #b00000000000000111111111111111111) (= (mask!8859 thiss!1248) #b00000000000001111111111111111111) (= (mask!8859 thiss!1248) #b00000000000011111111111111111111) (= (mask!8859 thiss!1248) #b00000000000111111111111111111111) (= (mask!8859 thiss!1248) #b00000000001111111111111111111111) (= (mask!8859 thiss!1248) #b00000000011111111111111111111111) (= (mask!8859 thiss!1248) #b00000000111111111111111111111111) (= (mask!8859 thiss!1248) #b00000001111111111111111111111111) (= (mask!8859 thiss!1248) #b00000011111111111111111111111111) (= (mask!8859 thiss!1248) #b00000111111111111111111111111111) (= (mask!8859 thiss!1248) #b00001111111111111111111111111111) (= (mask!8859 thiss!1248) #b00011111111111111111111111111111) (= (mask!8859 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8859 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!184643 d!54911))

(declare-fun d!54913 () Bool)

(assert (=> d!54913 (= (array_inv!2387 (_keys!5700 thiss!1248)) (bvsge (size!4021 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184647 d!54913))

(declare-fun d!54915 () Bool)

(assert (=> d!54915 (= (array_inv!2388 (_values!3752 thiss!1248)) (bvsge (size!4022 (_values!3752 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184647 d!54915))

(declare-fun d!54917 () Bool)

(declare-fun res!87418 () Bool)

(declare-fun e!121624 () Bool)

(assert (=> d!54917 (=> (not res!87418) (not e!121624))))

(declare-fun simpleValid!178 (LongMapFixedSize!2544) Bool)

(assert (=> d!54917 (= res!87418 (simpleValid!178 thiss!1248))))

(assert (=> d!54917 (= (valid!1042 thiss!1248) e!121624)))

(declare-fun b!184775 () Bool)

(declare-fun res!87419 () Bool)

(assert (=> b!184775 (=> (not res!87419) (not e!121624))))

(declare-fun arrayCountValidKeys!0 (array!7846 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!184775 (= res!87419 (= (arrayCountValidKeys!0 (_keys!5700 thiss!1248) #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))) (_size!1321 thiss!1248)))))

(declare-fun b!184776 () Bool)

(declare-fun res!87420 () Bool)

(assert (=> b!184776 (=> (not res!87420) (not e!121624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7846 (_ BitVec 32)) Bool)

(assert (=> b!184776 (= res!87420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun b!184777 () Bool)

(declare-datatypes ((List!2370 0))(
  ( (Nil!2367) (Cons!2366 (h!2998 (_ BitVec 64)) (t!7256 List!2370)) )
))
(declare-fun arrayNoDuplicates!0 (array!7846 (_ BitVec 32) List!2370) Bool)

(assert (=> b!184777 (= e!121624 (arrayNoDuplicates!0 (_keys!5700 thiss!1248) #b00000000000000000000000000000000 Nil!2367))))

(assert (= (and d!54917 res!87418) b!184775))

(assert (= (and b!184775 res!87419) b!184776))

(assert (= (and b!184776 res!87420) b!184777))

(declare-fun m!212143 () Bool)

(assert (=> d!54917 m!212143))

(declare-fun m!212145 () Bool)

(assert (=> b!184775 m!212145))

(declare-fun m!212147 () Bool)

(assert (=> b!184776 m!212147))

(declare-fun m!212149 () Bool)

(assert (=> b!184777 m!212149))

(assert (=> start!18684 d!54917))

(declare-fun b!184785 () Bool)

(declare-fun e!121630 () Bool)

(assert (=> b!184785 (= e!121630 tp_is_empty!4323)))

(declare-fun condMapEmpty!7439 () Bool)

(declare-fun mapDefault!7439 () ValueCell!1818)

(assert (=> mapNonEmpty!7433 (= condMapEmpty!7439 (= mapRest!7433 ((as const (Array (_ BitVec 32) ValueCell!1818)) mapDefault!7439)))))

(declare-fun mapRes!7439 () Bool)

(assert (=> mapNonEmpty!7433 (= tp!16438 (and e!121630 mapRes!7439))))

(declare-fun b!184784 () Bool)

(declare-fun e!121629 () Bool)

(assert (=> b!184784 (= e!121629 tp_is_empty!4323)))

(declare-fun mapIsEmpty!7439 () Bool)

(assert (=> mapIsEmpty!7439 mapRes!7439))

(declare-fun mapNonEmpty!7439 () Bool)

(declare-fun tp!16448 () Bool)

(assert (=> mapNonEmpty!7439 (= mapRes!7439 (and tp!16448 e!121629))))

(declare-fun mapRest!7439 () (Array (_ BitVec 32) ValueCell!1818))

(declare-fun mapKey!7439 () (_ BitVec 32))

(declare-fun mapValue!7439 () ValueCell!1818)

(assert (=> mapNonEmpty!7439 (= mapRest!7433 (store mapRest!7439 mapKey!7439 mapValue!7439))))

(assert (= (and mapNonEmpty!7433 condMapEmpty!7439) mapIsEmpty!7439))

(assert (= (and mapNonEmpty!7433 (not condMapEmpty!7439)) mapNonEmpty!7439))

(assert (= (and mapNonEmpty!7439 ((_ is ValueCellFull!1818) mapValue!7439)) b!184784))

(assert (= (and mapNonEmpty!7433 ((_ is ValueCellFull!1818) mapDefault!7439)) b!184785))

(declare-fun m!212151 () Bool)

(assert (=> mapNonEmpty!7439 m!212151))

(declare-fun b_lambda!7263 () Bool)

(assert (= b_lambda!7261 (or (and b!184647 b_free!4551) b_lambda!7263)))

(check-sat (not b!184744) (not b!184685) (not b_next!4551) (not b!184745) (not b!184683) (not d!54905) (not b!184729) (not bm!18638) (not b!184777) (not b!184775) (not b!184747) (not b!184746) (not b!184776) (not mapNonEmpty!7439) (not b!184741) (not d!54917) (not d!54909) b_and!11163 (not b!184740) (not bm!18641) (not b_lambda!7263) (not b!184768) (not b!184731) (not d!54907) tp_is_empty!4323 (not bm!18644) (not bm!18639))
(check-sat b_and!11163 (not b_next!4551))
(get-model)

(declare-fun d!54919 () Bool)

(declare-fun get!2131 (Option!225) V!5411)

(assert (=> d!54919 (= (apply!163 lt!91420 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2131 (getValueByKey!219 (toList!1196 lt!91420) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7500 () Bool)

(assert (= bs!7500 d!54919))

(declare-fun m!212153 () Bool)

(assert (=> bs!7500 m!212153))

(assert (=> bs!7500 m!212153))

(declare-fun m!212155 () Bool)

(assert (=> bs!7500 m!212155))

(assert (=> b!184729 d!54919))

(declare-fun d!54921 () Bool)

(declare-fun e!121633 () Bool)

(assert (=> d!54921 e!121633))

(declare-fun res!87426 () Bool)

(assert (=> d!54921 (=> (not res!87426) (not e!121633))))

(declare-fun lt!91458 () ListLongMap!2361)

(assert (=> d!54921 (= res!87426 (contains!1282 lt!91458 (_1!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))))

(declare-fun lt!91459 () List!2368)

(assert (=> d!54921 (= lt!91458 (ListLongMap!2362 lt!91459))))

(declare-fun lt!91460 () Unit!5573)

(declare-fun lt!91457 () Unit!5573)

(assert (=> d!54921 (= lt!91460 lt!91457)))

(assert (=> d!54921 (= (getValueByKey!219 lt!91459 (_1!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))) (Some!224 (_2!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!117 (List!2368 (_ BitVec 64) V!5411) Unit!5573)

(assert (=> d!54921 (= lt!91457 (lemmaContainsTupThenGetReturnValue!117 lt!91459 (_1!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))) (_2!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))))

(declare-fun insertStrictlySorted!119 (List!2368 (_ BitVec 64) V!5411) List!2368)

(assert (=> d!54921 (= lt!91459 (insertStrictlySorted!119 (toList!1196 (ite c!33130 call!18645 (ite c!33129 call!18646 call!18641))) (_1!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))) (_2!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))))

(assert (=> d!54921 (= (+!278 (ite c!33130 call!18645 (ite c!33129 call!18646 call!18641)) (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))) lt!91458)))

(declare-fun b!184790 () Bool)

(declare-fun res!87425 () Bool)

(assert (=> b!184790 (=> (not res!87425) (not e!121633))))

(assert (=> b!184790 (= res!87425 (= (getValueByKey!219 (toList!1196 lt!91458) (_1!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))) (Some!224 (_2!1725 (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))))

(declare-fun b!184791 () Bool)

(declare-fun contains!1284 (List!2368 tuple2!3430) Bool)

(assert (=> b!184791 (= e!121633 (contains!1284 (toList!1196 lt!91458) (ite (or c!33130 c!33129) (tuple2!3431 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3610 thiss!1248)) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(assert (= (and d!54921 res!87426) b!184790))

(assert (= (and b!184790 res!87425) b!184791))

(declare-fun m!212157 () Bool)

(assert (=> d!54921 m!212157))

(declare-fun m!212159 () Bool)

(assert (=> d!54921 m!212159))

(declare-fun m!212161 () Bool)

(assert (=> d!54921 m!212161))

(declare-fun m!212163 () Bool)

(assert (=> d!54921 m!212163))

(declare-fun m!212165 () Bool)

(assert (=> b!184790 m!212165))

(declare-fun m!212167 () Bool)

(assert (=> b!184791 m!212167))

(assert (=> bm!18639 d!54921))

(declare-fun d!54923 () Bool)

(declare-fun res!87431 () Bool)

(declare-fun e!121638 () Bool)

(assert (=> d!54923 (=> res!87431 e!121638)))

(assert (=> d!54923 (= res!87431 (and ((_ is Cons!2364) (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) (= (_1!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) key!828)))))

(assert (=> d!54923 (= (containsKey!223 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828) e!121638)))

(declare-fun b!184796 () Bool)

(declare-fun e!121639 () Bool)

(assert (=> b!184796 (= e!121638 e!121639)))

(declare-fun res!87432 () Bool)

(assert (=> b!184796 (=> (not res!87432) (not e!121639))))

(assert (=> b!184796 (= res!87432 (and (or (not ((_ is Cons!2364) (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) (bvsle (_1!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) key!828)) ((_ is Cons!2364) (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) (bvslt (_1!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) key!828)))))

(declare-fun b!184797 () Bool)

(assert (=> b!184797 (= e!121639 (containsKey!223 (t!7252 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) key!828))))

(assert (= (and d!54923 (not res!87431)) b!184796))

(assert (= (and b!184796 res!87432) b!184797))

(declare-fun m!212169 () Bool)

(assert (=> b!184797 m!212169))

(assert (=> d!54905 d!54923))

(declare-fun b!184822 () Bool)

(declare-fun e!121656 () Bool)

(declare-fun e!121655 () Bool)

(assert (=> b!184822 (= e!121656 e!121655)))

(assert (=> b!184822 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun res!87443 () Bool)

(declare-fun lt!91475 () ListLongMap!2361)

(assert (=> b!184822 (= res!87443 (contains!1282 lt!91475 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184822 (=> (not res!87443) (not e!121655))))

(declare-fun bm!18647 () Bool)

(declare-fun call!18650 () ListLongMap!2361)

(assert (=> bm!18647 (= call!18650 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3769 thiss!1248)))))

(declare-fun b!184823 () Bool)

(declare-fun e!121659 () Bool)

(assert (=> b!184823 (= e!121656 e!121659)))

(declare-fun c!33155 () Bool)

(assert (=> b!184823 (= c!33155 (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun b!184824 () Bool)

(declare-fun e!121657 () Bool)

(assert (=> b!184824 (= e!121657 e!121656)))

(declare-fun c!33153 () Bool)

(declare-fun e!121660 () Bool)

(assert (=> b!184824 (= c!33153 e!121660)))

(declare-fun res!87441 () Bool)

(assert (=> b!184824 (=> (not res!87441) (not e!121660))))

(assert (=> b!184824 (= res!87441 (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun d!54925 () Bool)

(assert (=> d!54925 e!121657))

(declare-fun res!87442 () Bool)

(assert (=> d!54925 (=> (not res!87442) (not e!121657))))

(assert (=> d!54925 (= res!87442 (not (contains!1282 lt!91475 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!121658 () ListLongMap!2361)

(assert (=> d!54925 (= lt!91475 e!121658)))

(declare-fun c!33152 () Bool)

(assert (=> d!54925 (= c!33152 (bvsge #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54925 (validMask!0 (mask!8859 thiss!1248))))

(assert (=> d!54925 (= (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)) lt!91475)))

(declare-fun b!184825 () Bool)

(assert (=> b!184825 (= e!121658 (ListLongMap!2362 Nil!2365))))

(declare-fun b!184826 () Bool)

(declare-fun e!121654 () ListLongMap!2361)

(assert (=> b!184826 (= e!121654 call!18650)))

(declare-fun b!184827 () Bool)

(assert (=> b!184827 (= e!121658 e!121654)))

(declare-fun c!33154 () Bool)

(assert (=> b!184827 (= c!33154 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184828 () Bool)

(assert (=> b!184828 (= e!121660 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184828 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!184829 () Bool)

(declare-fun lt!91479 () Unit!5573)

(declare-fun lt!91481 () Unit!5573)

(assert (=> b!184829 (= lt!91479 lt!91481)))

(declare-fun lt!91477 () ListLongMap!2361)

(declare-fun lt!91476 () (_ BitVec 64))

(declare-fun lt!91480 () V!5411)

(declare-fun lt!91478 () (_ BitVec 64))

(assert (=> b!184829 (not (contains!1282 (+!278 lt!91477 (tuple2!3431 lt!91478 lt!91480)) lt!91476))))

(declare-fun addStillNotContains!90 (ListLongMap!2361 (_ BitVec 64) V!5411 (_ BitVec 64)) Unit!5573)

(assert (=> b!184829 (= lt!91481 (addStillNotContains!90 lt!91477 lt!91478 lt!91480 lt!91476))))

(assert (=> b!184829 (= lt!91476 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!184829 (= lt!91480 (get!2130 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!184829 (= lt!91478 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184829 (= lt!91477 call!18650)))

(assert (=> b!184829 (= e!121654 (+!278 call!18650 (tuple2!3431 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000) (get!2130 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!184830 () Bool)

(assert (=> b!184830 (= e!121659 (= lt!91475 (getCurrentListMapNoExtraKeys!193 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3769 thiss!1248))))))

(declare-fun b!184831 () Bool)

(declare-fun res!87444 () Bool)

(assert (=> b!184831 (=> (not res!87444) (not e!121657))))

(assert (=> b!184831 (= res!87444 (not (contains!1282 lt!91475 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184832 () Bool)

(assert (=> b!184832 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> b!184832 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4022 (_values!3752 thiss!1248))))))

(assert (=> b!184832 (= e!121655 (= (apply!163 lt!91475 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)) (get!2130 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!184833 () Bool)

(declare-fun isEmpty!474 (ListLongMap!2361) Bool)

(assert (=> b!184833 (= e!121659 (isEmpty!474 lt!91475))))

(assert (= (and d!54925 c!33152) b!184825))

(assert (= (and d!54925 (not c!33152)) b!184827))

(assert (= (and b!184827 c!33154) b!184829))

(assert (= (and b!184827 (not c!33154)) b!184826))

(assert (= (or b!184829 b!184826) bm!18647))

(assert (= (and d!54925 res!87442) b!184831))

(assert (= (and b!184831 res!87444) b!184824))

(assert (= (and b!184824 res!87441) b!184828))

(assert (= (and b!184824 c!33153) b!184822))

(assert (= (and b!184824 (not c!33153)) b!184823))

(assert (= (and b!184822 res!87443) b!184832))

(assert (= (and b!184823 c!33155) b!184830))

(assert (= (and b!184823 (not c!33155)) b!184833))

(declare-fun b_lambda!7265 () Bool)

(assert (=> (not b_lambda!7265) (not b!184829)))

(assert (=> b!184829 t!7255))

(declare-fun b_and!11165 () Bool)

(assert (= b_and!11163 (and (=> t!7255 result!4797) b_and!11165)))

(declare-fun b_lambda!7267 () Bool)

(assert (=> (not b_lambda!7267) (not b!184832)))

(assert (=> b!184832 t!7255))

(declare-fun b_and!11167 () Bool)

(assert (= b_and!11165 (and (=> t!7255 result!4797) b_and!11167)))

(assert (=> b!184828 m!212073))

(assert (=> b!184828 m!212073))

(assert (=> b!184828 m!212075))

(declare-fun m!212171 () Bool)

(assert (=> b!184830 m!212171))

(declare-fun m!212173 () Bool)

(assert (=> b!184829 m!212173))

(declare-fun m!212175 () Bool)

(assert (=> b!184829 m!212175))

(declare-fun m!212177 () Bool)

(assert (=> b!184829 m!212177))

(assert (=> b!184829 m!212079))

(assert (=> b!184829 m!212077))

(assert (=> b!184829 m!212081))

(assert (=> b!184829 m!212175))

(assert (=> b!184829 m!212077))

(assert (=> b!184829 m!212079))

(assert (=> b!184829 m!212073))

(declare-fun m!212179 () Bool)

(assert (=> b!184829 m!212179))

(assert (=> b!184822 m!212073))

(assert (=> b!184822 m!212073))

(declare-fun m!212181 () Bool)

(assert (=> b!184822 m!212181))

(assert (=> bm!18647 m!212171))

(declare-fun m!212183 () Bool)

(assert (=> d!54925 m!212183))

(assert (=> d!54925 m!212035))

(assert (=> b!184832 m!212079))

(assert (=> b!184832 m!212077))

(assert (=> b!184832 m!212081))

(assert (=> b!184832 m!212073))

(declare-fun m!212185 () Bool)

(assert (=> b!184832 m!212185))

(assert (=> b!184832 m!212077))

(assert (=> b!184832 m!212079))

(assert (=> b!184832 m!212073))

(assert (=> b!184827 m!212073))

(assert (=> b!184827 m!212073))

(assert (=> b!184827 m!212075))

(declare-fun m!212187 () Bool)

(assert (=> b!184831 m!212187))

(declare-fun m!212189 () Bool)

(assert (=> b!184833 m!212189))

(assert (=> bm!18644 d!54925))

(declare-fun d!54927 () Bool)

(assert (=> d!54927 (= (apply!163 (+!278 lt!91418 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) lt!91434) (get!2131 (getValueByKey!219 (toList!1196 (+!278 lt!91418 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))) lt!91434)))))

(declare-fun bs!7501 () Bool)

(assert (= bs!7501 d!54927))

(declare-fun m!212191 () Bool)

(assert (=> bs!7501 m!212191))

(assert (=> bs!7501 m!212191))

(declare-fun m!212193 () Bool)

(assert (=> bs!7501 m!212193))

(assert (=> b!184744 d!54927))

(declare-fun d!54929 () Bool)

(assert (=> d!54929 (= (apply!163 (+!278 lt!91436 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) lt!91424) (get!2131 (getValueByKey!219 (toList!1196 (+!278 lt!91436 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))) lt!91424)))))

(declare-fun bs!7502 () Bool)

(assert (= bs!7502 d!54929))

(declare-fun m!212195 () Bool)

(assert (=> bs!7502 m!212195))

(assert (=> bs!7502 m!212195))

(declare-fun m!212197 () Bool)

(assert (=> bs!7502 m!212197))

(assert (=> b!184744 d!54929))

(declare-fun d!54931 () Bool)

(declare-fun e!121661 () Bool)

(assert (=> d!54931 e!121661))

(declare-fun res!87446 () Bool)

(assert (=> d!54931 (=> (not res!87446) (not e!121661))))

(declare-fun lt!91483 () ListLongMap!2361)

(assert (=> d!54931 (= res!87446 (contains!1282 lt!91483 (_1!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))))))

(declare-fun lt!91484 () List!2368)

(assert (=> d!54931 (= lt!91483 (ListLongMap!2362 lt!91484))))

(declare-fun lt!91485 () Unit!5573)

(declare-fun lt!91482 () Unit!5573)

(assert (=> d!54931 (= lt!91485 lt!91482)))

(assert (=> d!54931 (= (getValueByKey!219 lt!91484 (_1!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54931 (= lt!91482 (lemmaContainsTupThenGetReturnValue!117 lt!91484 (_1!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54931 (= lt!91484 (insertStrictlySorted!119 (toList!1196 lt!91423) (_1!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54931 (= (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) lt!91483)))

(declare-fun b!184834 () Bool)

(declare-fun res!87445 () Bool)

(assert (=> b!184834 (=> (not res!87445) (not e!121661))))

(assert (=> b!184834 (= res!87445 (= (getValueByKey!219 (toList!1196 lt!91483) (_1!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))))))))

(declare-fun b!184835 () Bool)

(assert (=> b!184835 (= e!121661 (contains!1284 (toList!1196 lt!91483) (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))))))

(assert (= (and d!54931 res!87446) b!184834))

(assert (= (and b!184834 res!87445) b!184835))

(declare-fun m!212199 () Bool)

(assert (=> d!54931 m!212199))

(declare-fun m!212201 () Bool)

(assert (=> d!54931 m!212201))

(declare-fun m!212203 () Bool)

(assert (=> d!54931 m!212203))

(declare-fun m!212205 () Bool)

(assert (=> d!54931 m!212205))

(declare-fun m!212207 () Bool)

(assert (=> b!184834 m!212207))

(declare-fun m!212209 () Bool)

(assert (=> b!184835 m!212209))

(assert (=> b!184744 d!54931))

(declare-fun d!54933 () Bool)

(assert (=> d!54933 (= (apply!163 lt!91436 lt!91424) (get!2131 (getValueByKey!219 (toList!1196 lt!91436) lt!91424)))))

(declare-fun bs!7503 () Bool)

(assert (= bs!7503 d!54933))

(declare-fun m!212211 () Bool)

(assert (=> bs!7503 m!212211))

(assert (=> bs!7503 m!212211))

(declare-fun m!212213 () Bool)

(assert (=> bs!7503 m!212213))

(assert (=> b!184744 d!54933))

(declare-fun d!54935 () Bool)

(assert (=> d!54935 (contains!1282 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) lt!91433)))

(declare-fun lt!91488 () Unit!5573)

(declare-fun choose!987 (ListLongMap!2361 (_ BitVec 64) V!5411 (_ BitVec 64)) Unit!5573)

(assert (=> d!54935 (= lt!91488 (choose!987 lt!91423 lt!91432 (zeroValue!3610 thiss!1248) lt!91433))))

(assert (=> d!54935 (contains!1282 lt!91423 lt!91433)))

(assert (=> d!54935 (= (addStillContains!139 lt!91423 lt!91432 (zeroValue!3610 thiss!1248) lt!91433) lt!91488)))

(declare-fun bs!7504 () Bool)

(assert (= bs!7504 d!54935))

(assert (=> bs!7504 m!212117))

(assert (=> bs!7504 m!212117))

(assert (=> bs!7504 m!212127))

(declare-fun m!212215 () Bool)

(assert (=> bs!7504 m!212215))

(declare-fun m!212217 () Bool)

(assert (=> bs!7504 m!212217))

(assert (=> b!184744 d!54935))

(declare-fun d!54937 () Bool)

(assert (=> d!54937 (= (apply!163 (+!278 lt!91436 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) lt!91424) (apply!163 lt!91436 lt!91424))))

(declare-fun lt!91491 () Unit!5573)

(declare-fun choose!988 (ListLongMap!2361 (_ BitVec 64) V!5411 (_ BitVec 64)) Unit!5573)

(assert (=> d!54937 (= lt!91491 (choose!988 lt!91436 lt!91422 (zeroValue!3610 thiss!1248) lt!91424))))

(declare-fun e!121664 () Bool)

(assert (=> d!54937 e!121664))

(declare-fun res!87449 () Bool)

(assert (=> d!54937 (=> (not res!87449) (not e!121664))))

(assert (=> d!54937 (= res!87449 (contains!1282 lt!91436 lt!91424))))

(assert (=> d!54937 (= (addApplyDifferent!139 lt!91436 lt!91422 (zeroValue!3610 thiss!1248) lt!91424) lt!91491)))

(declare-fun b!184840 () Bool)

(assert (=> b!184840 (= e!121664 (not (= lt!91424 lt!91422)))))

(assert (= (and d!54937 res!87449) b!184840))

(assert (=> d!54937 m!212103))

(assert (=> d!54937 m!212113))

(assert (=> d!54937 m!212103))

(declare-fun m!212219 () Bool)

(assert (=> d!54937 m!212219))

(assert (=> d!54937 m!212111))

(declare-fun m!212221 () Bool)

(assert (=> d!54937 m!212221))

(assert (=> b!184744 d!54937))

(declare-fun d!54939 () Bool)

(assert (=> d!54939 (= (apply!163 lt!91435 lt!91437) (get!2131 (getValueByKey!219 (toList!1196 lt!91435) lt!91437)))))

(declare-fun bs!7505 () Bool)

(assert (= bs!7505 d!54939))

(declare-fun m!212223 () Bool)

(assert (=> bs!7505 m!212223))

(assert (=> bs!7505 m!212223))

(declare-fun m!212225 () Bool)

(assert (=> bs!7505 m!212225))

(assert (=> b!184744 d!54939))

(declare-fun d!54941 () Bool)

(declare-fun e!121665 () Bool)

(assert (=> d!54941 e!121665))

(declare-fun res!87450 () Bool)

(assert (=> d!54941 (=> res!87450 e!121665)))

(declare-fun lt!91493 () Bool)

(assert (=> d!54941 (= res!87450 (not lt!91493))))

(declare-fun lt!91494 () Bool)

(assert (=> d!54941 (= lt!91493 lt!91494)))

(declare-fun lt!91492 () Unit!5573)

(declare-fun e!121666 () Unit!5573)

(assert (=> d!54941 (= lt!91492 e!121666)))

(declare-fun c!33156 () Bool)

(assert (=> d!54941 (= c!33156 lt!91494)))

(assert (=> d!54941 (= lt!91494 (containsKey!223 (toList!1196 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) lt!91433))))

(assert (=> d!54941 (= (contains!1282 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248))) lt!91433) lt!91493)))

(declare-fun b!184841 () Bool)

(declare-fun lt!91495 () Unit!5573)

(assert (=> b!184841 (= e!121666 lt!91495)))

(assert (=> b!184841 (= lt!91495 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) lt!91433))))

(assert (=> b!184841 (isDefined!173 (getValueByKey!219 (toList!1196 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) lt!91433))))

(declare-fun b!184842 () Bool)

(declare-fun Unit!5577 () Unit!5573)

(assert (=> b!184842 (= e!121666 Unit!5577)))

(declare-fun b!184843 () Bool)

(assert (=> b!184843 (= e!121665 (isDefined!173 (getValueByKey!219 (toList!1196 (+!278 lt!91423 (tuple2!3431 lt!91432 (zeroValue!3610 thiss!1248)))) lt!91433)))))

(assert (= (and d!54941 c!33156) b!184841))

(assert (= (and d!54941 (not c!33156)) b!184842))

(assert (= (and d!54941 (not res!87450)) b!184843))

(declare-fun m!212227 () Bool)

(assert (=> d!54941 m!212227))

(declare-fun m!212229 () Bool)

(assert (=> b!184841 m!212229))

(declare-fun m!212231 () Bool)

(assert (=> b!184841 m!212231))

(assert (=> b!184841 m!212231))

(declare-fun m!212233 () Bool)

(assert (=> b!184841 m!212233))

(assert (=> b!184843 m!212231))

(assert (=> b!184843 m!212231))

(assert (=> b!184843 m!212233))

(assert (=> b!184744 d!54941))

(declare-fun d!54943 () Bool)

(assert (=> d!54943 (= (apply!163 (+!278 lt!91435 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) lt!91437) (get!2131 (getValueByKey!219 (toList!1196 (+!278 lt!91435 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))) lt!91437)))))

(declare-fun bs!7506 () Bool)

(assert (= bs!7506 d!54943))

(declare-fun m!212235 () Bool)

(assert (=> bs!7506 m!212235))

(assert (=> bs!7506 m!212235))

(declare-fun m!212237 () Bool)

(assert (=> bs!7506 m!212237))

(assert (=> b!184744 d!54943))

(declare-fun d!54945 () Bool)

(assert (=> d!54945 (= (apply!163 (+!278 lt!91435 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) lt!91437) (apply!163 lt!91435 lt!91437))))

(declare-fun lt!91496 () Unit!5573)

(assert (=> d!54945 (= lt!91496 (choose!988 lt!91435 lt!91429 (minValue!3610 thiss!1248) lt!91437))))

(declare-fun e!121667 () Bool)

(assert (=> d!54945 e!121667))

(declare-fun res!87451 () Bool)

(assert (=> d!54945 (=> (not res!87451) (not e!121667))))

(assert (=> d!54945 (= res!87451 (contains!1282 lt!91435 lt!91437))))

(assert (=> d!54945 (= (addApplyDifferent!139 lt!91435 lt!91429 (minValue!3610 thiss!1248) lt!91437) lt!91496)))

(declare-fun b!184844 () Bool)

(assert (=> b!184844 (= e!121667 (not (= lt!91437 lt!91429)))))

(assert (= (and d!54945 res!87451) b!184844))

(assert (=> d!54945 m!212107))

(assert (=> d!54945 m!212109))

(assert (=> d!54945 m!212107))

(declare-fun m!212239 () Bool)

(assert (=> d!54945 m!212239))

(assert (=> d!54945 m!212123))

(declare-fun m!212241 () Bool)

(assert (=> d!54945 m!212241))

(assert (=> b!184744 d!54945))

(assert (=> b!184744 d!54925))

(declare-fun d!54947 () Bool)

(assert (=> d!54947 (= (apply!163 lt!91418 lt!91434) (get!2131 (getValueByKey!219 (toList!1196 lt!91418) lt!91434)))))

(declare-fun bs!7507 () Bool)

(assert (= bs!7507 d!54947))

(declare-fun m!212243 () Bool)

(assert (=> bs!7507 m!212243))

(assert (=> bs!7507 m!212243))

(declare-fun m!212245 () Bool)

(assert (=> bs!7507 m!212245))

(assert (=> b!184744 d!54947))

(declare-fun d!54949 () Bool)

(declare-fun e!121668 () Bool)

(assert (=> d!54949 e!121668))

(declare-fun res!87453 () Bool)

(assert (=> d!54949 (=> (not res!87453) (not e!121668))))

(declare-fun lt!91498 () ListLongMap!2361)

(assert (=> d!54949 (= res!87453 (contains!1282 lt!91498 (_1!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))))))

(declare-fun lt!91499 () List!2368)

(assert (=> d!54949 (= lt!91498 (ListLongMap!2362 lt!91499))))

(declare-fun lt!91500 () Unit!5573)

(declare-fun lt!91497 () Unit!5573)

(assert (=> d!54949 (= lt!91500 lt!91497)))

(assert (=> d!54949 (= (getValueByKey!219 lt!91499 (_1!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))))))

(assert (=> d!54949 (= lt!91497 (lemmaContainsTupThenGetReturnValue!117 lt!91499 (_1!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))))))

(assert (=> d!54949 (= lt!91499 (insertStrictlySorted!119 (toList!1196 lt!91435) (_1!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))))))

(assert (=> d!54949 (= (+!278 lt!91435 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))) lt!91498)))

(declare-fun b!184845 () Bool)

(declare-fun res!87452 () Bool)

(assert (=> b!184845 (=> (not res!87452) (not e!121668))))

(assert (=> b!184845 (= res!87452 (= (getValueByKey!219 (toList!1196 lt!91498) (_1!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))))))))

(declare-fun b!184846 () Bool)

(assert (=> b!184846 (= e!121668 (contains!1284 (toList!1196 lt!91498) (tuple2!3431 lt!91429 (minValue!3610 thiss!1248))))))

(assert (= (and d!54949 res!87453) b!184845))

(assert (= (and b!184845 res!87452) b!184846))

(declare-fun m!212247 () Bool)

(assert (=> d!54949 m!212247))

(declare-fun m!212249 () Bool)

(assert (=> d!54949 m!212249))

(declare-fun m!212251 () Bool)

(assert (=> d!54949 m!212251))

(declare-fun m!212253 () Bool)

(assert (=> d!54949 m!212253))

(declare-fun m!212255 () Bool)

(assert (=> b!184845 m!212255))

(declare-fun m!212257 () Bool)

(assert (=> b!184846 m!212257))

(assert (=> b!184744 d!54949))

(declare-fun d!54951 () Bool)

(declare-fun e!121669 () Bool)

(assert (=> d!54951 e!121669))

(declare-fun res!87455 () Bool)

(assert (=> d!54951 (=> (not res!87455) (not e!121669))))

(declare-fun lt!91502 () ListLongMap!2361)

(assert (=> d!54951 (= res!87455 (contains!1282 lt!91502 (_1!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))))))

(declare-fun lt!91503 () List!2368)

(assert (=> d!54951 (= lt!91502 (ListLongMap!2362 lt!91503))))

(declare-fun lt!91504 () Unit!5573)

(declare-fun lt!91501 () Unit!5573)

(assert (=> d!54951 (= lt!91504 lt!91501)))

(assert (=> d!54951 (= (getValueByKey!219 lt!91503 (_1!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54951 (= lt!91501 (lemmaContainsTupThenGetReturnValue!117 lt!91503 (_1!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54951 (= lt!91503 (insertStrictlySorted!119 (toList!1196 lt!91436) (_1!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))))))

(assert (=> d!54951 (= (+!278 lt!91436 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))) lt!91502)))

(declare-fun b!184847 () Bool)

(declare-fun res!87454 () Bool)

(assert (=> b!184847 (=> (not res!87454) (not e!121669))))

(assert (=> b!184847 (= res!87454 (= (getValueByKey!219 (toList!1196 lt!91502) (_1!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))))))))

(declare-fun b!184848 () Bool)

(assert (=> b!184848 (= e!121669 (contains!1284 (toList!1196 lt!91502) (tuple2!3431 lt!91422 (zeroValue!3610 thiss!1248))))))

(assert (= (and d!54951 res!87455) b!184847))

(assert (= (and b!184847 res!87454) b!184848))

(declare-fun m!212259 () Bool)

(assert (=> d!54951 m!212259))

(declare-fun m!212261 () Bool)

(assert (=> d!54951 m!212261))

(declare-fun m!212263 () Bool)

(assert (=> d!54951 m!212263))

(declare-fun m!212265 () Bool)

(assert (=> d!54951 m!212265))

(declare-fun m!212267 () Bool)

(assert (=> b!184847 m!212267))

(declare-fun m!212269 () Bool)

(assert (=> b!184848 m!212269))

(assert (=> b!184744 d!54951))

(declare-fun d!54953 () Bool)

(assert (=> d!54953 (= (apply!163 (+!278 lt!91418 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) lt!91434) (apply!163 lt!91418 lt!91434))))

(declare-fun lt!91505 () Unit!5573)

(assert (=> d!54953 (= lt!91505 (choose!988 lt!91418 lt!91421 (minValue!3610 thiss!1248) lt!91434))))

(declare-fun e!121670 () Bool)

(assert (=> d!54953 e!121670))

(declare-fun res!87456 () Bool)

(assert (=> d!54953 (=> (not res!87456) (not e!121670))))

(assert (=> d!54953 (= res!87456 (contains!1282 lt!91418 lt!91434))))

(assert (=> d!54953 (= (addApplyDifferent!139 lt!91418 lt!91421 (minValue!3610 thiss!1248) lt!91434) lt!91505)))

(declare-fun b!184849 () Bool)

(assert (=> b!184849 (= e!121670 (not (= lt!91434 lt!91421)))))

(assert (= (and d!54953 res!87456) b!184849))

(assert (=> d!54953 m!212099))

(assert (=> d!54953 m!212121))

(assert (=> d!54953 m!212099))

(declare-fun m!212271 () Bool)

(assert (=> d!54953 m!212271))

(assert (=> d!54953 m!212125))

(declare-fun m!212273 () Bool)

(assert (=> d!54953 m!212273))

(assert (=> b!184744 d!54953))

(declare-fun d!54955 () Bool)

(declare-fun e!121671 () Bool)

(assert (=> d!54955 e!121671))

(declare-fun res!87458 () Bool)

(assert (=> d!54955 (=> (not res!87458) (not e!121671))))

(declare-fun lt!91507 () ListLongMap!2361)

(assert (=> d!54955 (= res!87458 (contains!1282 lt!91507 (_1!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))))))

(declare-fun lt!91508 () List!2368)

(assert (=> d!54955 (= lt!91507 (ListLongMap!2362 lt!91508))))

(declare-fun lt!91509 () Unit!5573)

(declare-fun lt!91506 () Unit!5573)

(assert (=> d!54955 (= lt!91509 lt!91506)))

(assert (=> d!54955 (= (getValueByKey!219 lt!91508 (_1!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))))))

(assert (=> d!54955 (= lt!91506 (lemmaContainsTupThenGetReturnValue!117 lt!91508 (_1!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))))))

(assert (=> d!54955 (= lt!91508 (insertStrictlySorted!119 (toList!1196 lt!91418) (_1!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))))))

(assert (=> d!54955 (= (+!278 lt!91418 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))) lt!91507)))

(declare-fun b!184850 () Bool)

(declare-fun res!87457 () Bool)

(assert (=> b!184850 (=> (not res!87457) (not e!121671))))

(assert (=> b!184850 (= res!87457 (= (getValueByKey!219 (toList!1196 lt!91507) (_1!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))))))))

(declare-fun b!184851 () Bool)

(assert (=> b!184851 (= e!121671 (contains!1284 (toList!1196 lt!91507) (tuple2!3431 lt!91421 (minValue!3610 thiss!1248))))))

(assert (= (and d!54955 res!87458) b!184850))

(assert (= (and b!184850 res!87457) b!184851))

(declare-fun m!212275 () Bool)

(assert (=> d!54955 m!212275))

(declare-fun m!212277 () Bool)

(assert (=> d!54955 m!212277))

(declare-fun m!212279 () Bool)

(assert (=> d!54955 m!212279))

(declare-fun m!212281 () Bool)

(assert (=> d!54955 m!212281))

(declare-fun m!212283 () Bool)

(assert (=> b!184850 m!212283))

(declare-fun m!212285 () Bool)

(assert (=> b!184851 m!212285))

(assert (=> b!184744 d!54955))

(declare-fun d!54957 () Bool)

(assert (=> d!54957 (= (apply!163 lt!91420 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2131 (getValueByKey!219 (toList!1196 lt!91420) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7508 () Bool)

(assert (= bs!7508 d!54957))

(declare-fun m!212287 () Bool)

(assert (=> bs!7508 m!212287))

(assert (=> bs!7508 m!212287))

(declare-fun m!212289 () Bool)

(assert (=> bs!7508 m!212289))

(assert (=> b!184745 d!54957))

(declare-fun d!54959 () Bool)

(declare-fun e!121672 () Bool)

(assert (=> d!54959 e!121672))

(declare-fun res!87459 () Bool)

(assert (=> d!54959 (=> res!87459 e!121672)))

(declare-fun lt!91511 () Bool)

(assert (=> d!54959 (= res!87459 (not lt!91511))))

(declare-fun lt!91512 () Bool)

(assert (=> d!54959 (= lt!91511 lt!91512)))

(declare-fun lt!91510 () Unit!5573)

(declare-fun e!121673 () Unit!5573)

(assert (=> d!54959 (= lt!91510 e!121673)))

(declare-fun c!33157 () Bool)

(assert (=> d!54959 (= c!33157 lt!91512)))

(assert (=> d!54959 (= lt!91512 (containsKey!223 (toList!1196 lt!91420) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54959 (= (contains!1282 lt!91420 #b1000000000000000000000000000000000000000000000000000000000000000) lt!91511)))

(declare-fun b!184852 () Bool)

(declare-fun lt!91513 () Unit!5573)

(assert (=> b!184852 (= e!121673 lt!91513)))

(assert (=> b!184852 (= lt!91513 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 lt!91420) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184852 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184853 () Bool)

(declare-fun Unit!5578 () Unit!5573)

(assert (=> b!184853 (= e!121673 Unit!5578)))

(declare-fun b!184854 () Bool)

(assert (=> b!184854 (= e!121672 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54959 c!33157) b!184852))

(assert (= (and d!54959 (not c!33157)) b!184853))

(assert (= (and d!54959 (not res!87459)) b!184854))

(declare-fun m!212291 () Bool)

(assert (=> d!54959 m!212291))

(declare-fun m!212293 () Bool)

(assert (=> b!184852 m!212293))

(assert (=> b!184852 m!212287))

(assert (=> b!184852 m!212287))

(declare-fun m!212295 () Bool)

(assert (=> b!184852 m!212295))

(assert (=> b!184854 m!212287))

(assert (=> b!184854 m!212287))

(assert (=> b!184854 m!212295))

(assert (=> bm!18638 d!54959))

(declare-fun d!54961 () Bool)

(assert (=> d!54961 (= (apply!163 lt!91420 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)) (get!2131 (getValueByKey!219 (toList!1196 lt!91420) (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7509 () Bool)

(assert (= bs!7509 d!54961))

(assert (=> bs!7509 m!212073))

(declare-fun m!212297 () Bool)

(assert (=> bs!7509 m!212297))

(assert (=> bs!7509 m!212297))

(declare-fun m!212299 () Bool)

(assert (=> bs!7509 m!212299))

(assert (=> b!184746 d!54961))

(declare-fun d!54963 () Bool)

(declare-fun c!33160 () Bool)

(assert (=> d!54963 (= c!33160 ((_ is ValueCellFull!1818) (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121676 () V!5411)

(assert (=> d!54963 (= (get!2130 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!121676)))

(declare-fun b!184859 () Bool)

(declare-fun get!2132 (ValueCell!1818 V!5411) V!5411)

(assert (=> b!184859 (= e!121676 (get!2132 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184860 () Bool)

(declare-fun get!2133 (ValueCell!1818 V!5411) V!5411)

(assert (=> b!184860 (= e!121676 (get!2133 (select (arr!3707 (_values!3752 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!501 (defaultEntry!3769 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54963 c!33160) b!184859))

(assert (= (and d!54963 (not c!33160)) b!184860))

(assert (=> b!184859 m!212079))

(assert (=> b!184859 m!212077))

(declare-fun m!212301 () Bool)

(assert (=> b!184859 m!212301))

(assert (=> b!184860 m!212079))

(assert (=> b!184860 m!212077))

(declare-fun m!212303 () Bool)

(assert (=> b!184860 m!212303))

(assert (=> b!184746 d!54963))

(declare-fun b!184873 () Bool)

(declare-fun e!121684 () SeekEntryResult!638)

(assert (=> b!184873 (= e!121684 (Found!638 (index!4724 lt!91448)))))

(declare-fun b!184874 () Bool)

(declare-fun c!33167 () Bool)

(declare-fun lt!91518 () (_ BitVec 64))

(assert (=> b!184874 (= c!33167 (= lt!91518 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!121683 () SeekEntryResult!638)

(assert (=> b!184874 (= e!121684 e!121683)))

(declare-fun b!184875 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!184875 (= e!121683 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20088 lt!91448) #b00000000000000000000000000000001) (nextIndex!0 (index!4724 lt!91448) (x!20088 lt!91448) (mask!8859 thiss!1248)) (index!4724 lt!91448) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun b!184877 () Bool)

(declare-fun e!121685 () SeekEntryResult!638)

(assert (=> b!184877 (= e!121685 Undefined!638)))

(declare-fun b!184878 () Bool)

(assert (=> b!184878 (= e!121683 (MissingVacant!638 (index!4724 lt!91448)))))

(declare-fun lt!91519 () SeekEntryResult!638)

(declare-fun d!54965 () Bool)

(assert (=> d!54965 (and (or ((_ is Undefined!638) lt!91519) (not ((_ is Found!638) lt!91519)) (and (bvsge (index!4723 lt!91519) #b00000000000000000000000000000000) (bvslt (index!4723 lt!91519) (size!4021 (_keys!5700 thiss!1248))))) (or ((_ is Undefined!638) lt!91519) ((_ is Found!638) lt!91519) (not ((_ is MissingVacant!638) lt!91519)) (not (= (index!4725 lt!91519) (index!4724 lt!91448))) (and (bvsge (index!4725 lt!91519) #b00000000000000000000000000000000) (bvslt (index!4725 lt!91519) (size!4021 (_keys!5700 thiss!1248))))) (or ((_ is Undefined!638) lt!91519) (ite ((_ is Found!638) lt!91519) (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4723 lt!91519)) key!828) (and ((_ is MissingVacant!638) lt!91519) (= (index!4725 lt!91519) (index!4724 lt!91448)) (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4725 lt!91519)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!54965 (= lt!91519 e!121685)))

(declare-fun c!33168 () Bool)

(assert (=> d!54965 (= c!33168 (bvsge (x!20088 lt!91448) #b01111111111111111111111111111110))))

(assert (=> d!54965 (= lt!91518 (select (arr!3706 (_keys!5700 thiss!1248)) (index!4724 lt!91448)))))

(assert (=> d!54965 (validMask!0 (mask!8859 thiss!1248))))

(assert (=> d!54965 (= (seekKeyOrZeroReturnVacant!0 (x!20088 lt!91448) (index!4724 lt!91448) (index!4724 lt!91448) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)) lt!91519)))

(declare-fun b!184876 () Bool)

(assert (=> b!184876 (= e!121685 e!121684)))

(declare-fun c!33169 () Bool)

(assert (=> b!184876 (= c!33169 (= lt!91518 key!828))))

(assert (= (and d!54965 c!33168) b!184877))

(assert (= (and d!54965 (not c!33168)) b!184876))

(assert (= (and b!184876 c!33169) b!184873))

(assert (= (and b!184876 (not c!33169)) b!184874))

(assert (= (and b!184874 c!33167) b!184878))

(assert (= (and b!184874 (not c!33167)) b!184875))

(declare-fun m!212305 () Bool)

(assert (=> b!184875 m!212305))

(assert (=> b!184875 m!212305))

(declare-fun m!212307 () Bool)

(assert (=> b!184875 m!212307))

(declare-fun m!212309 () Bool)

(assert (=> d!54965 m!212309))

(declare-fun m!212311 () Bool)

(assert (=> d!54965 m!212311))

(assert (=> d!54965 m!212129))

(assert (=> d!54965 m!212035))

(assert (=> b!184768 d!54965))

(declare-fun b!184897 () Bool)

(declare-fun e!121698 () SeekEntryResult!638)

(declare-fun e!121699 () SeekEntryResult!638)

(assert (=> b!184897 (= e!121698 e!121699)))

(declare-fun c!33177 () Bool)

(declare-fun lt!91525 () (_ BitVec 64))

(assert (=> b!184897 (= c!33177 (or (= lt!91525 key!828) (= (bvadd lt!91525 lt!91525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184898 () Bool)

(declare-fun lt!91524 () SeekEntryResult!638)

(assert (=> b!184898 (and (bvsge (index!4724 lt!91524) #b00000000000000000000000000000000) (bvslt (index!4724 lt!91524) (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun e!121697 () Bool)

(assert (=> b!184898 (= e!121697 (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4724 lt!91524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184899 () Bool)

(assert (=> b!184899 (= e!121698 (Intermediate!638 true (toIndex!0 key!828 (mask!8859 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!184900 () Bool)

(assert (=> b!184900 (and (bvsge (index!4724 lt!91524) #b00000000000000000000000000000000) (bvslt (index!4724 lt!91524) (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun res!87466 () Bool)

(assert (=> b!184900 (= res!87466 (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4724 lt!91524)) key!828))))

(assert (=> b!184900 (=> res!87466 e!121697)))

(declare-fun e!121696 () Bool)

(assert (=> b!184900 (= e!121696 e!121697)))

(declare-fun b!184901 () Bool)

(assert (=> b!184901 (and (bvsge (index!4724 lt!91524) #b00000000000000000000000000000000) (bvslt (index!4724 lt!91524) (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun res!87467 () Bool)

(assert (=> b!184901 (= res!87467 (= (select (arr!3706 (_keys!5700 thiss!1248)) (index!4724 lt!91524)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184901 (=> res!87467 e!121697)))

(declare-fun b!184903 () Bool)

(declare-fun e!121700 () Bool)

(assert (=> b!184903 (= e!121700 e!121696)))

(declare-fun res!87468 () Bool)

(assert (=> b!184903 (= res!87468 (and ((_ is Intermediate!638) lt!91524) (not (undefined!1450 lt!91524)) (bvslt (x!20088 lt!91524) #b01111111111111111111111111111110) (bvsge (x!20088 lt!91524) #b00000000000000000000000000000000) (bvsge (x!20088 lt!91524) #b00000000000000000000000000000000)))))

(assert (=> b!184903 (=> (not res!87468) (not e!121696))))

(declare-fun b!184904 () Bool)

(assert (=> b!184904 (= e!121699 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8859 thiss!1248)) #b00000000000000000000000000000000 (mask!8859 thiss!1248)) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun b!184905 () Bool)

(assert (=> b!184905 (= e!121699 (Intermediate!638 false (toIndex!0 key!828 (mask!8859 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun d!54967 () Bool)

(assert (=> d!54967 e!121700))

(declare-fun c!33176 () Bool)

(assert (=> d!54967 (= c!33176 (and ((_ is Intermediate!638) lt!91524) (undefined!1450 lt!91524)))))

(assert (=> d!54967 (= lt!91524 e!121698)))

(declare-fun c!33178 () Bool)

(assert (=> d!54967 (= c!33178 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!54967 (= lt!91525 (select (arr!3706 (_keys!5700 thiss!1248)) (toIndex!0 key!828 (mask!8859 thiss!1248))))))

(assert (=> d!54967 (validMask!0 (mask!8859 thiss!1248))))

(assert (=> d!54967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8859 thiss!1248)) key!828 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)) lt!91524)))

(declare-fun b!184902 () Bool)

(assert (=> b!184902 (= e!121700 (bvsge (x!20088 lt!91524) #b01111111111111111111111111111110))))

(assert (= (and d!54967 c!33178) b!184899))

(assert (= (and d!54967 (not c!33178)) b!184897))

(assert (= (and b!184897 c!33177) b!184905))

(assert (= (and b!184897 (not c!33177)) b!184904))

(assert (= (and d!54967 c!33176) b!184902))

(assert (= (and d!54967 (not c!33176)) b!184903))

(assert (= (and b!184903 res!87468) b!184900))

(assert (= (and b!184900 (not res!87466)) b!184901))

(assert (= (and b!184901 (not res!87467)) b!184898))

(declare-fun m!212313 () Bool)

(assert (=> b!184898 m!212313))

(assert (=> b!184901 m!212313))

(assert (=> d!54967 m!212133))

(declare-fun m!212315 () Bool)

(assert (=> d!54967 m!212315))

(assert (=> d!54967 m!212035))

(assert (=> b!184900 m!212313))

(assert (=> b!184904 m!212133))

(declare-fun m!212317 () Bool)

(assert (=> b!184904 m!212317))

(assert (=> b!184904 m!212317))

(declare-fun m!212319 () Bool)

(assert (=> b!184904 m!212319))

(assert (=> d!54909 d!54967))

(declare-fun d!54969 () Bool)

(declare-fun lt!91531 () (_ BitVec 32))

(declare-fun lt!91530 () (_ BitVec 32))

(assert (=> d!54969 (= lt!91531 (bvmul (bvxor lt!91530 (bvlshr lt!91530 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54969 (= lt!91530 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54969 (and (bvsge (mask!8859 thiss!1248) #b00000000000000000000000000000000) (let ((res!87469 (let ((h!2999 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20106 (bvmul (bvxor h!2999 (bvlshr h!2999 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20106 (bvlshr x!20106 #b00000000000000000000000000001101)) (mask!8859 thiss!1248)))))) (and (bvslt res!87469 (bvadd (mask!8859 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!87469 #b00000000000000000000000000000000))))))

(assert (=> d!54969 (= (toIndex!0 key!828 (mask!8859 thiss!1248)) (bvand (bvxor lt!91531 (bvlshr lt!91531 #b00000000000000000000000000001101)) (mask!8859 thiss!1248)))))

(assert (=> d!54909 d!54969))

(assert (=> d!54909 d!54911))

(declare-fun b!184914 () Bool)

(declare-fun e!121707 () Bool)

(declare-fun e!121709 () Bool)

(assert (=> b!184914 (= e!121707 e!121709)))

(declare-fun lt!91540 () (_ BitVec 64))

(assert (=> b!184914 (= lt!91540 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91539 () Unit!5573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7846 (_ BitVec 64) (_ BitVec 32)) Unit!5573)

(assert (=> b!184914 (= lt!91539 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5700 thiss!1248) lt!91540 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!184914 (arrayContainsKey!0 (_keys!5700 thiss!1248) lt!91540 #b00000000000000000000000000000000)))

(declare-fun lt!91538 () Unit!5573)

(assert (=> b!184914 (= lt!91538 lt!91539)))

(declare-fun res!87475 () Bool)

(assert (=> b!184914 (= res!87475 (= (seekEntryOrOpen!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000) (_keys!5700 thiss!1248) (mask!8859 thiss!1248)) (Found!638 #b00000000000000000000000000000000)))))

(assert (=> b!184914 (=> (not res!87475) (not e!121709))))

(declare-fun b!184915 () Bool)

(declare-fun e!121708 () Bool)

(assert (=> b!184915 (= e!121708 e!121707)))

(declare-fun c!33181 () Bool)

(assert (=> b!184915 (= c!33181 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184916 () Bool)

(declare-fun call!18653 () Bool)

(assert (=> b!184916 (= e!121707 call!18653)))

(declare-fun bm!18650 () Bool)

(assert (=> bm!18650 (= call!18653 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5700 thiss!1248) (mask!8859 thiss!1248)))))

(declare-fun b!184917 () Bool)

(assert (=> b!184917 (= e!121709 call!18653)))

(declare-fun d!54971 () Bool)

(declare-fun res!87474 () Bool)

(assert (=> d!54971 (=> res!87474 e!121708)))

(assert (=> d!54971 (= res!87474 (bvsge #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54971 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5700 thiss!1248) (mask!8859 thiss!1248)) e!121708)))

(assert (= (and d!54971 (not res!87474)) b!184915))

(assert (= (and b!184915 c!33181) b!184914))

(assert (= (and b!184915 (not c!33181)) b!184916))

(assert (= (and b!184914 res!87475) b!184917))

(assert (= (or b!184917 b!184916) bm!18650))

(assert (=> b!184914 m!212073))

(declare-fun m!212321 () Bool)

(assert (=> b!184914 m!212321))

(declare-fun m!212323 () Bool)

(assert (=> b!184914 m!212323))

(assert (=> b!184914 m!212073))

(declare-fun m!212325 () Bool)

(assert (=> b!184914 m!212325))

(assert (=> b!184915 m!212073))

(assert (=> b!184915 m!212073))

(assert (=> b!184915 m!212075))

(declare-fun m!212327 () Bool)

(assert (=> bm!18650 m!212327))

(assert (=> b!184776 d!54971))

(assert (=> d!54907 d!54911))

(declare-fun d!54973 () Bool)

(declare-fun isEmpty!475 (Option!225) Bool)

(assert (=> d!54973 (= (isDefined!173 (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828)) (not (isEmpty!475 (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))))

(declare-fun bs!7510 () Bool)

(assert (= bs!7510 d!54973))

(assert (=> bs!7510 m!212067))

(declare-fun m!212329 () Bool)

(assert (=> bs!7510 m!212329))

(assert (=> b!184685 d!54973))

(declare-fun d!54975 () Bool)

(declare-fun c!33186 () Bool)

(assert (=> d!54975 (= c!33186 (and ((_ is Cons!2364) (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) (= (_1!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) key!828)))))

(declare-fun e!121714 () Option!225)

(assert (=> d!54975 (= (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828) e!121714)))

(declare-fun b!184926 () Bool)

(assert (=> b!184926 (= e!121714 (Some!224 (_2!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))))))

(declare-fun b!184927 () Bool)

(declare-fun e!121715 () Option!225)

(assert (=> b!184927 (= e!121714 e!121715)))

(declare-fun c!33187 () Bool)

(assert (=> b!184927 (= c!33187 (and ((_ is Cons!2364) (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) (not (= (_1!1725 (h!2996 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))))) key!828))))))

(declare-fun b!184928 () Bool)

(assert (=> b!184928 (= e!121715 (getValueByKey!219 (t!7252 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))) key!828))))

(declare-fun b!184929 () Bool)

(assert (=> b!184929 (= e!121715 None!223)))

(assert (= (and d!54975 c!33186) b!184926))

(assert (= (and d!54975 (not c!33186)) b!184927))

(assert (= (and b!184927 c!33187) b!184928))

(assert (= (and b!184927 (not c!33187)) b!184929))

(declare-fun m!212331 () Bool)

(assert (=> b!184928 m!212331))

(assert (=> b!184685 d!54975))

(declare-fun b!184940 () Bool)

(declare-fun e!121727 () Bool)

(declare-fun e!121725 () Bool)

(assert (=> b!184940 (= e!121727 e!121725)))

(declare-fun c!33190 () Bool)

(assert (=> b!184940 (= c!33190 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184941 () Bool)

(declare-fun e!121724 () Bool)

(assert (=> b!184941 (= e!121724 e!121727)))

(declare-fun res!87484 () Bool)

(assert (=> b!184941 (=> (not res!87484) (not e!121727))))

(declare-fun e!121726 () Bool)

(assert (=> b!184941 (= res!87484 (not e!121726))))

(declare-fun res!87482 () Bool)

(assert (=> b!184941 (=> (not res!87482) (not e!121726))))

(assert (=> b!184941 (= res!87482 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184942 () Bool)

(declare-fun contains!1285 (List!2370 (_ BitVec 64)) Bool)

(assert (=> b!184942 (= e!121726 (contains!1285 Nil!2367 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54977 () Bool)

(declare-fun res!87483 () Bool)

(assert (=> d!54977 (=> res!87483 e!121724)))

(assert (=> d!54977 (= res!87483 (bvsge #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54977 (= (arrayNoDuplicates!0 (_keys!5700 thiss!1248) #b00000000000000000000000000000000 Nil!2367) e!121724)))

(declare-fun b!184943 () Bool)

(declare-fun call!18656 () Bool)

(assert (=> b!184943 (= e!121725 call!18656)))

(declare-fun b!184944 () Bool)

(assert (=> b!184944 (= e!121725 call!18656)))

(declare-fun bm!18653 () Bool)

(assert (=> bm!18653 (= call!18656 (arrayNoDuplicates!0 (_keys!5700 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33190 (Cons!2366 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000) Nil!2367) Nil!2367)))))

(assert (= (and d!54977 (not res!87483)) b!184941))

(assert (= (and b!184941 res!87482) b!184942))

(assert (= (and b!184941 res!87484) b!184940))

(assert (= (and b!184940 c!33190) b!184944))

(assert (= (and b!184940 (not c!33190)) b!184943))

(assert (= (or b!184944 b!184943) bm!18653))

(assert (=> b!184940 m!212073))

(assert (=> b!184940 m!212073))

(assert (=> b!184940 m!212075))

(assert (=> b!184941 m!212073))

(assert (=> b!184941 m!212073))

(assert (=> b!184941 m!212075))

(assert (=> b!184942 m!212073))

(assert (=> b!184942 m!212073))

(declare-fun m!212333 () Bool)

(assert (=> b!184942 m!212333))

(assert (=> bm!18653 m!212073))

(declare-fun m!212335 () Bool)

(assert (=> bm!18653 m!212335))

(assert (=> b!184777 d!54977))

(declare-fun d!54979 () Bool)

(declare-fun e!121728 () Bool)

(assert (=> d!54979 e!121728))

(declare-fun res!87485 () Bool)

(assert (=> d!54979 (=> res!87485 e!121728)))

(declare-fun lt!91542 () Bool)

(assert (=> d!54979 (= res!87485 (not lt!91542))))

(declare-fun lt!91543 () Bool)

(assert (=> d!54979 (= lt!91542 lt!91543)))

(declare-fun lt!91541 () Unit!5573)

(declare-fun e!121729 () Unit!5573)

(assert (=> d!54979 (= lt!91541 e!121729)))

(declare-fun c!33191 () Bool)

(assert (=> d!54979 (= c!33191 lt!91543)))

(assert (=> d!54979 (= lt!91543 (containsKey!223 (toList!1196 lt!91420) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54979 (= (contains!1282 lt!91420 #b0000000000000000000000000000000000000000000000000000000000000000) lt!91542)))

(declare-fun b!184945 () Bool)

(declare-fun lt!91544 () Unit!5573)

(assert (=> b!184945 (= e!121729 lt!91544)))

(assert (=> b!184945 (= lt!91544 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 lt!91420) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184945 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184946 () Bool)

(declare-fun Unit!5579 () Unit!5573)

(assert (=> b!184946 (= e!121729 Unit!5579)))

(declare-fun b!184947 () Bool)

(assert (=> b!184947 (= e!121728 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54979 c!33191) b!184945))

(assert (= (and d!54979 (not c!33191)) b!184946))

(assert (= (and d!54979 (not res!87485)) b!184947))

(declare-fun m!212337 () Bool)

(assert (=> d!54979 m!212337))

(declare-fun m!212339 () Bool)

(assert (=> b!184945 m!212339))

(assert (=> b!184945 m!212153))

(assert (=> b!184945 m!212153))

(declare-fun m!212341 () Bool)

(assert (=> b!184945 m!212341))

(assert (=> b!184947 m!212153))

(assert (=> b!184947 m!212153))

(assert (=> b!184947 m!212341))

(assert (=> bm!18641 d!54979))

(declare-fun d!54981 () Bool)

(assert (=> d!54981 (= (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!184747 d!54981))

(declare-fun d!54983 () Bool)

(declare-fun e!121730 () Bool)

(assert (=> d!54983 e!121730))

(declare-fun res!87486 () Bool)

(assert (=> d!54983 (=> res!87486 e!121730)))

(declare-fun lt!91546 () Bool)

(assert (=> d!54983 (= res!87486 (not lt!91546))))

(declare-fun lt!91547 () Bool)

(assert (=> d!54983 (= lt!91546 lt!91547)))

(declare-fun lt!91545 () Unit!5573)

(declare-fun e!121731 () Unit!5573)

(assert (=> d!54983 (= lt!91545 e!121731)))

(declare-fun c!33192 () Bool)

(assert (=> d!54983 (= c!33192 lt!91547)))

(assert (=> d!54983 (= lt!91547 (containsKey!223 (toList!1196 lt!91420) (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54983 (= (contains!1282 lt!91420 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)) lt!91546)))

(declare-fun b!184948 () Bool)

(declare-fun lt!91548 () Unit!5573)

(assert (=> b!184948 (= e!121731 lt!91548)))

(assert (=> b!184948 (= lt!91548 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 lt!91420) (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184948 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184949 () Bool)

(declare-fun Unit!5580 () Unit!5573)

(assert (=> b!184949 (= e!121731 Unit!5580)))

(declare-fun b!184950 () Bool)

(assert (=> b!184950 (= e!121730 (isDefined!173 (getValueByKey!219 (toList!1196 lt!91420) (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54983 c!33192) b!184948))

(assert (= (and d!54983 (not c!33192)) b!184949))

(assert (= (and d!54983 (not res!87486)) b!184950))

(assert (=> d!54983 m!212073))

(declare-fun m!212343 () Bool)

(assert (=> d!54983 m!212343))

(assert (=> b!184948 m!212073))

(declare-fun m!212345 () Bool)

(assert (=> b!184948 m!212345))

(assert (=> b!184948 m!212073))

(assert (=> b!184948 m!212297))

(assert (=> b!184948 m!212297))

(declare-fun m!212347 () Bool)

(assert (=> b!184948 m!212347))

(assert (=> b!184950 m!212073))

(assert (=> b!184950 m!212297))

(assert (=> b!184950 m!212297))

(assert (=> b!184950 m!212347))

(assert (=> b!184731 d!54983))

(assert (=> b!184740 d!54981))

(declare-fun b!184962 () Bool)

(declare-fun e!121734 () Bool)

(assert (=> b!184962 (= e!121734 (and (bvsge (extraKeys!3506 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3506 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1321 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!184961 () Bool)

(declare-fun res!87497 () Bool)

(assert (=> b!184961 (=> (not res!87497) (not e!121734))))

(declare-fun size!4025 (LongMapFixedSize!2544) (_ BitVec 32))

(assert (=> b!184961 (= res!87497 (= (size!4025 thiss!1248) (bvadd (_size!1321 thiss!1248) (bvsdiv (bvadd (extraKeys!3506 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!54985 () Bool)

(declare-fun res!87495 () Bool)

(assert (=> d!54985 (=> (not res!87495) (not e!121734))))

(assert (=> d!54985 (= res!87495 (validMask!0 (mask!8859 thiss!1248)))))

(assert (=> d!54985 (= (simpleValid!178 thiss!1248) e!121734)))

(declare-fun b!184959 () Bool)

(declare-fun res!87496 () Bool)

(assert (=> b!184959 (=> (not res!87496) (not e!121734))))

(assert (=> b!184959 (= res!87496 (and (= (size!4022 (_values!3752 thiss!1248)) (bvadd (mask!8859 thiss!1248) #b00000000000000000000000000000001)) (= (size!4021 (_keys!5700 thiss!1248)) (size!4022 (_values!3752 thiss!1248))) (bvsge (_size!1321 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1321 thiss!1248) (bvadd (mask!8859 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!184960 () Bool)

(declare-fun res!87498 () Bool)

(assert (=> b!184960 (=> (not res!87498) (not e!121734))))

(assert (=> b!184960 (= res!87498 (bvsge (size!4025 thiss!1248) (_size!1321 thiss!1248)))))

(assert (= (and d!54985 res!87495) b!184959))

(assert (= (and b!184959 res!87496) b!184960))

(assert (= (and b!184960 res!87498) b!184961))

(assert (= (and b!184961 res!87497) b!184962))

(declare-fun m!212349 () Bool)

(assert (=> b!184961 m!212349))

(assert (=> d!54985 m!212035))

(assert (=> b!184960 m!212349))

(assert (=> d!54917 d!54985))

(declare-fun d!54987 () Bool)

(assert (=> d!54987 (isDefined!173 (getValueByKey!219 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(declare-fun lt!91551 () Unit!5573)

(declare-fun choose!989 (List!2368 (_ BitVec 64)) Unit!5573)

(assert (=> d!54987 (= lt!91551 (choose!989 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(declare-fun e!121737 () Bool)

(assert (=> d!54987 e!121737))

(declare-fun res!87501 () Bool)

(assert (=> d!54987 (=> (not res!87501) (not e!121737))))

(declare-fun isStrictlySorted!343 (List!2368) Bool)

(assert (=> d!54987 (= res!87501 (isStrictlySorted!343 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248)))))))

(assert (=> d!54987 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828) lt!91551)))

(declare-fun b!184965 () Bool)

(assert (=> b!184965 (= e!121737 (containsKey!223 (toList!1196 (getCurrentListMap!839 (_keys!5700 thiss!1248) (_values!3752 thiss!1248) (mask!8859 thiss!1248) (extraKeys!3506 thiss!1248) (zeroValue!3610 thiss!1248) (minValue!3610 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3769 thiss!1248))) key!828))))

(assert (= (and d!54987 res!87501) b!184965))

(assert (=> d!54987 m!212067))

(assert (=> d!54987 m!212067))

(assert (=> d!54987 m!212069))

(declare-fun m!212351 () Bool)

(assert (=> d!54987 m!212351))

(declare-fun m!212353 () Bool)

(assert (=> d!54987 m!212353))

(assert (=> b!184965 m!212063))

(assert (=> b!184683 d!54987))

(assert (=> b!184683 d!54973))

(assert (=> b!184683 d!54975))

(declare-fun d!54989 () Bool)

(declare-fun lt!91554 () (_ BitVec 32))

(assert (=> d!54989 (and (bvsge lt!91554 #b00000000000000000000000000000000) (bvsle lt!91554 (bvsub (size!4021 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121743 () (_ BitVec 32))

(assert (=> d!54989 (= lt!91554 e!121743)))

(declare-fun c!33197 () Bool)

(assert (=> d!54989 (= c!33197 (bvsge #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54989 (and (bvsle #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4021 (_keys!5700 thiss!1248)) (size!4021 (_keys!5700 thiss!1248))))))

(assert (=> d!54989 (= (arrayCountValidKeys!0 (_keys!5700 thiss!1248) #b00000000000000000000000000000000 (size!4021 (_keys!5700 thiss!1248))) lt!91554)))

(declare-fun b!184974 () Bool)

(assert (=> b!184974 (= e!121743 #b00000000000000000000000000000000)))

(declare-fun b!184975 () Bool)

(declare-fun e!121742 () (_ BitVec 32))

(declare-fun call!18659 () (_ BitVec 32))

(assert (=> b!184975 (= e!121742 call!18659)))

(declare-fun bm!18656 () Bool)

(assert (=> bm!18656 (= call!18659 (arrayCountValidKeys!0 (_keys!5700 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4021 (_keys!5700 thiss!1248))))))

(declare-fun b!184976 () Bool)

(assert (=> b!184976 (= e!121743 e!121742)))

(declare-fun c!33198 () Bool)

(assert (=> b!184976 (= c!33198 (validKeyInArray!0 (select (arr!3706 (_keys!5700 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184977 () Bool)

(assert (=> b!184977 (= e!121742 (bvadd #b00000000000000000000000000000001 call!18659))))

(assert (= (and d!54989 c!33197) b!184974))

(assert (= (and d!54989 (not c!33197)) b!184976))

(assert (= (and b!184976 c!33198) b!184977))

(assert (= (and b!184976 (not c!33198)) b!184975))

(assert (= (or b!184977 b!184975) bm!18656))

(declare-fun m!212355 () Bool)

(assert (=> bm!18656 m!212355))

(assert (=> b!184976 m!212073))

(assert (=> b!184976 m!212073))

(assert (=> b!184976 m!212075))

(assert (=> b!184775 d!54989))

(declare-fun d!54991 () Bool)

(declare-fun e!121744 () Bool)

(assert (=> d!54991 e!121744))

(declare-fun res!87503 () Bool)

(assert (=> d!54991 (=> (not res!87503) (not e!121744))))

(declare-fun lt!91556 () ListLongMap!2361)

(assert (=> d!54991 (= res!87503 (contains!1282 lt!91556 (_1!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(declare-fun lt!91557 () List!2368)

(assert (=> d!54991 (= lt!91556 (ListLongMap!2362 lt!91557))))

(declare-fun lt!91558 () Unit!5573)

(declare-fun lt!91555 () Unit!5573)

(assert (=> d!54991 (= lt!91558 lt!91555)))

(assert (=> d!54991 (= (getValueByKey!219 lt!91557 (_1!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(assert (=> d!54991 (= lt!91555 (lemmaContainsTupThenGetReturnValue!117 lt!91557 (_1!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(assert (=> d!54991 (= lt!91557 (insertStrictlySorted!119 (toList!1196 call!18644) (_1!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))) (_2!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))))))

(assert (=> d!54991 (= (+!278 call!18644 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))) lt!91556)))

(declare-fun b!184978 () Bool)

(declare-fun res!87502 () Bool)

(assert (=> b!184978 (=> (not res!87502) (not e!121744))))

(assert (=> b!184978 (= res!87502 (= (getValueByKey!219 (toList!1196 lt!91556) (_1!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248)))) (Some!224 (_2!1725 (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))))

(declare-fun b!184979 () Bool)

(assert (=> b!184979 (= e!121744 (contains!1284 (toList!1196 lt!91556) (tuple2!3431 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3610 thiss!1248))))))

(assert (= (and d!54991 res!87503) b!184978))

(assert (= (and b!184978 res!87502) b!184979))

(declare-fun m!212357 () Bool)

(assert (=> d!54991 m!212357))

(declare-fun m!212359 () Bool)

(assert (=> d!54991 m!212359))

(declare-fun m!212361 () Bool)

(assert (=> d!54991 m!212361))

(declare-fun m!212363 () Bool)

(assert (=> d!54991 m!212363))

(declare-fun m!212365 () Bool)

(assert (=> b!184978 m!212365))

(declare-fun m!212367 () Bool)

(assert (=> b!184979 m!212367))

(assert (=> b!184741 d!54991))

(declare-fun b!184981 () Bool)

(declare-fun e!121746 () Bool)

(assert (=> b!184981 (= e!121746 tp_is_empty!4323)))

(declare-fun condMapEmpty!7440 () Bool)

(declare-fun mapDefault!7440 () ValueCell!1818)

(assert (=> mapNonEmpty!7439 (= condMapEmpty!7440 (= mapRest!7439 ((as const (Array (_ BitVec 32) ValueCell!1818)) mapDefault!7440)))))

(declare-fun mapRes!7440 () Bool)

(assert (=> mapNonEmpty!7439 (= tp!16448 (and e!121746 mapRes!7440))))

(declare-fun b!184980 () Bool)

(declare-fun e!121745 () Bool)

(assert (=> b!184980 (= e!121745 tp_is_empty!4323)))

(declare-fun mapIsEmpty!7440 () Bool)

(assert (=> mapIsEmpty!7440 mapRes!7440))

(declare-fun mapNonEmpty!7440 () Bool)

(declare-fun tp!16449 () Bool)

(assert (=> mapNonEmpty!7440 (= mapRes!7440 (and tp!16449 e!121745))))

(declare-fun mapKey!7440 () (_ BitVec 32))

(declare-fun mapRest!7440 () (Array (_ BitVec 32) ValueCell!1818))

(declare-fun mapValue!7440 () ValueCell!1818)

(assert (=> mapNonEmpty!7440 (= mapRest!7439 (store mapRest!7440 mapKey!7440 mapValue!7440))))

(assert (= (and mapNonEmpty!7439 condMapEmpty!7440) mapIsEmpty!7440))

(assert (= (and mapNonEmpty!7439 (not condMapEmpty!7440)) mapNonEmpty!7440))

(assert (= (and mapNonEmpty!7440 ((_ is ValueCellFull!1818) mapValue!7440)) b!184980))

(assert (= (and mapNonEmpty!7439 ((_ is ValueCellFull!1818) mapDefault!7440)) b!184981))

(declare-fun m!212369 () Bool)

(assert (=> mapNonEmpty!7440 m!212369))

(declare-fun b_lambda!7269 () Bool)

(assert (= b_lambda!7267 (or (and b!184647 b_free!4551) b_lambda!7269)))

(declare-fun b_lambda!7271 () Bool)

(assert (= b_lambda!7265 (or (and b!184647 b_free!4551) b_lambda!7271)))

(check-sat (not b_lambda!7269) (not b!184976) (not d!54979) (not d!54965) (not b!184832) tp_is_empty!4323 (not b!184961) (not d!54951) (not b_lambda!7271) (not mapNonEmpty!7440) (not b!184846) (not d!54941) (not d!54991) (not b!184797) (not b!184979) (not b!184965) (not d!54947) (not b!184843) (not d!54943) (not b!184950) (not b!184860) (not b!184928) (not d!54959) (not b!184831) (not b!184827) (not b!184914) (not b!184828) (not b!184948) (not d!54935) (not b!184978) (not b!184830) (not b!184945) (not b!184834) (not b_next!4551) (not bm!18647) b_and!11167 (not d!54949) (not b!184915) (not b!184790) (not d!54967) (not d!54919) (not d!54937) (not d!54945) (not d!54957) (not d!54955) (not b!184854) (not b!184941) (not bm!18650) (not d!54953) (not b!184845) (not b!184859) (not b!184904) (not b!184822) (not d!54983) (not b!184940) (not b!184875) (not b!184833) (not d!54973) (not b!184850) (not b!184835) (not b_lambda!7263) (not bm!18656) (not d!54927) (not d!54961) (not b!184851) (not b!184947) (not d!54987) (not b!184841) (not bm!18653) (not d!54931) (not d!54929) (not d!54925) (not b!184791) (not d!54921) (not b!184829) (not d!54939) (not b!184960) (not b!184852) (not b!184847) (not d!54985) (not b!184848) (not d!54933) (not b!184942))
(check-sat b_and!11167 (not b_next!4551))
