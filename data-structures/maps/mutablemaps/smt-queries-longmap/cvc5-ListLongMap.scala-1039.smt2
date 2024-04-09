; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21928 () Bool)

(assert start!21928)

(declare-fun b!222633 () Bool)

(declare-fun b_free!5983 () Bool)

(declare-fun b_next!5983 () Bool)

(assert (=> b!222633 (= b_free!5983 (not b_next!5983))))

(declare-fun tp!21091 () Bool)

(declare-fun b_and!12899 () Bool)

(assert (=> b!222633 (= tp!21091 b_and!12899)))

(declare-fun b!222620 () Bool)

(declare-fun e!144679 () Bool)

(declare-fun e!144688 () Bool)

(assert (=> b!222620 (= e!144679 e!144688)))

(declare-fun res!109334 () Bool)

(assert (=> b!222620 (=> (not res!109334) (not e!144688))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7441 0))(
  ( (V!7442 (val!2967 Int)) )
))
(declare-datatypes ((ValueCell!2579 0))(
  ( (ValueCellFull!2579 (v!4983 V!7441)) (EmptyCell!2579) )
))
(declare-datatypes ((array!10932 0))(
  ( (array!10933 (arr!5185 (Array (_ BitVec 32) ValueCell!2579)) (size!5518 (_ BitVec 32))) )
))
(declare-datatypes ((array!10934 0))(
  ( (array!10935 (arr!5186 (Array (_ BitVec 32) (_ BitVec 64))) (size!5519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3058 0))(
  ( (LongMapFixedSize!3059 (defaultEntry!4188 Int) (mask!10010 (_ BitVec 32)) (extraKeys!3925 (_ BitVec 32)) (zeroValue!4029 V!7441) (minValue!4029 V!7441) (_size!1578 (_ BitVec 32)) (_keys!6242 array!10934) (_values!4171 array!10932) (_vacant!1578 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3058)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!222620 (= res!109334 (inRange!0 index!297 (mask!10010 thiss!1504)))))

(declare-datatypes ((Unit!6675 0))(
  ( (Unit!6676) )
))
(declare-fun lt!112731 () Unit!6675)

(declare-fun e!144691 () Unit!6675)

(assert (=> b!222620 (= lt!112731 e!144691)))

(declare-fun c!36976 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4398 0))(
  ( (tuple2!4399 (_1!2209 (_ BitVec 64)) (_2!2209 V!7441)) )
))
(declare-datatypes ((List!3327 0))(
  ( (Nil!3324) (Cons!3323 (h!3971 tuple2!4398) (t!8294 List!3327)) )
))
(declare-datatypes ((ListLongMap!3325 0))(
  ( (ListLongMap!3326 (toList!1678 List!3327)) )
))
(declare-fun contains!1526 (ListLongMap!3325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1201 (array!10934 array!10932 (_ BitVec 32) (_ BitVec 32) V!7441 V!7441 (_ BitVec 32) Int) ListLongMap!3325)

(assert (=> b!222620 (= c!36976 (contains!1526 (getCurrentListMap!1201 (_keys!6242 thiss!1504) (_values!4171 thiss!1504) (mask!10010 thiss!1504) (extraKeys!3925 thiss!1504) (zeroValue!4029 thiss!1504) (minValue!4029 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4188 thiss!1504)) key!932))))

(declare-fun b!222621 () Bool)

(declare-fun e!144682 () Bool)

(assert (=> b!222621 (= e!144682 false)))

(declare-fun lt!112732 () Bool)

(declare-datatypes ((List!3328 0))(
  ( (Nil!3325) (Cons!3324 (h!3972 (_ BitVec 64)) (t!8295 List!3328)) )
))
(declare-fun arrayNoDuplicates!0 (array!10934 (_ BitVec 32) List!3328) Bool)

(assert (=> b!222621 (= lt!112732 (arrayNoDuplicates!0 (_keys!6242 thiss!1504) #b00000000000000000000000000000000 Nil!3325))))

(declare-fun b!222622 () Bool)

(declare-fun e!144687 () Bool)

(declare-fun call!20782 () Bool)

(assert (=> b!222622 (= e!144687 (not call!20782))))

(declare-fun b!222623 () Bool)

(declare-fun c!36975 () Bool)

(declare-datatypes ((SeekEntryResult!850 0))(
  ( (MissingZero!850 (index!5570 (_ BitVec 32))) (Found!850 (index!5571 (_ BitVec 32))) (Intermediate!850 (undefined!1662 Bool) (index!5572 (_ BitVec 32)) (x!23078 (_ BitVec 32))) (Undefined!850) (MissingVacant!850 (index!5573 (_ BitVec 32))) )
))
(declare-fun lt!112734 () SeekEntryResult!850)

(assert (=> b!222623 (= c!36975 (is-MissingVacant!850 lt!112734))))

(declare-fun e!144693 () Bool)

(declare-fun e!144677 () Bool)

(assert (=> b!222623 (= e!144693 e!144677)))

(declare-fun b!222624 () Bool)

(declare-fun e!144690 () Bool)

(assert (=> b!222624 (= e!144677 e!144690)))

(declare-fun res!109335 () Bool)

(declare-fun call!20781 () Bool)

(assert (=> b!222624 (= res!109335 call!20781)))

(assert (=> b!222624 (=> (not res!109335) (not e!144690))))

(declare-fun b!222625 () Bool)

(declare-fun e!144685 () Bool)

(assert (=> b!222625 (= e!144685 e!144679)))

(declare-fun res!109330 () Bool)

(assert (=> b!222625 (=> (not res!109330) (not e!144679))))

(assert (=> b!222625 (= res!109330 (or (= lt!112734 (MissingZero!850 index!297)) (= lt!112734 (MissingVacant!850 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10934 (_ BitVec 32)) SeekEntryResult!850)

(assert (=> b!222625 (= lt!112734 (seekEntryOrOpen!0 key!932 (_keys!6242 thiss!1504) (mask!10010 thiss!1504)))))

(declare-fun b!222626 () Bool)

(declare-fun e!144680 () Bool)

(declare-fun tp_is_empty!5845 () Bool)

(assert (=> b!222626 (= e!144680 tp_is_empty!5845)))

(declare-fun bm!20778 () Bool)

(declare-fun c!36977 () Bool)

(assert (=> bm!20778 (= call!20781 (inRange!0 (ite c!36977 (index!5570 lt!112734) (index!5573 lt!112734)) (mask!10010 thiss!1504)))))

(declare-fun b!222627 () Bool)

(declare-fun e!144678 () Bool)

(declare-fun contains!1527 (List!3328 (_ BitVec 64)) Bool)

(assert (=> b!222627 (= e!144678 (not (contains!1527 Nil!3325 key!932)))))

(declare-fun mapNonEmpty!9937 () Bool)

(declare-fun mapRes!9937 () Bool)

(declare-fun tp!21090 () Bool)

(declare-fun e!144681 () Bool)

(assert (=> mapNonEmpty!9937 (= mapRes!9937 (and tp!21090 e!144681))))

(declare-fun mapValue!9937 () ValueCell!2579)

(declare-fun mapRest!9937 () (Array (_ BitVec 32) ValueCell!2579))

(declare-fun mapKey!9937 () (_ BitVec 32))

(assert (=> mapNonEmpty!9937 (= (arr!5185 (_values!4171 thiss!1504)) (store mapRest!9937 mapKey!9937 mapValue!9937))))

(declare-fun b!222628 () Bool)

(declare-fun e!144694 () Unit!6675)

(declare-fun Unit!6677 () Unit!6675)

(assert (=> b!222628 (= e!144694 Unit!6677)))

(declare-fun b!222629 () Bool)

(declare-fun res!109332 () Bool)

(assert (=> b!222629 (=> (not res!109332) (not e!144687))))

(assert (=> b!222629 (= res!109332 call!20781)))

(assert (=> b!222629 (= e!144693 e!144687)))

(declare-fun b!222630 () Bool)

(declare-fun Unit!6678 () Unit!6675)

(assert (=> b!222630 (= e!144694 Unit!6678)))

(declare-fun lt!112737 () Unit!6675)

(declare-fun lemmaArrayContainsKeyThenInListMap!63 (array!10934 array!10932 (_ BitVec 32) (_ BitVec 32) V!7441 V!7441 (_ BitVec 64) (_ BitVec 32) Int) Unit!6675)

(assert (=> b!222630 (= lt!112737 (lemmaArrayContainsKeyThenInListMap!63 (_keys!6242 thiss!1504) (_values!4171 thiss!1504) (mask!10010 thiss!1504) (extraKeys!3925 thiss!1504) (zeroValue!4029 thiss!1504) (minValue!4029 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4188 thiss!1504)))))

(assert (=> b!222630 false))

(declare-fun b!222631 () Bool)

(declare-fun res!109325 () Bool)

(assert (=> b!222631 (=> (not res!109325) (not e!144682))))

(declare-fun e!144683 () Bool)

(assert (=> b!222631 (= res!109325 e!144683)))

(declare-fun res!109333 () Bool)

(assert (=> b!222631 (=> res!109333 e!144683)))

(declare-fun e!144692 () Bool)

(assert (=> b!222631 (= res!109333 e!144692)))

(declare-fun res!109336 () Bool)

(assert (=> b!222631 (=> (not res!109336) (not e!144692))))

(assert (=> b!222631 (= res!109336 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222632 () Bool)

(assert (=> b!222632 (= e!144692 (contains!1527 Nil!3325 key!932))))

(declare-fun e!144689 () Bool)

(declare-fun e!144684 () Bool)

(declare-fun array_inv!3423 (array!10934) Bool)

(declare-fun array_inv!3424 (array!10932) Bool)

(assert (=> b!222633 (= e!144689 (and tp!21091 tp_is_empty!5845 (array_inv!3423 (_keys!6242 thiss!1504)) (array_inv!3424 (_values!4171 thiss!1504)) e!144684))))

(declare-fun b!222634 () Bool)

(assert (=> b!222634 (= e!144681 tp_is_empty!5845)))

(declare-fun b!222635 () Bool)

(declare-fun res!109331 () Bool)

(assert (=> b!222635 (=> (not res!109331) (not e!144682))))

(assert (=> b!222635 (= res!109331 (not (contains!1527 Nil!3325 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222636 () Bool)

(declare-fun lt!112735 () Unit!6675)

(assert (=> b!222636 (= e!144691 lt!112735)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!235 (array!10934 array!10932 (_ BitVec 32) (_ BitVec 32) V!7441 V!7441 (_ BitVec 64) Int) Unit!6675)

(assert (=> b!222636 (= lt!112735 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!235 (_keys!6242 thiss!1504) (_values!4171 thiss!1504) (mask!10010 thiss!1504) (extraKeys!3925 thiss!1504) (zeroValue!4029 thiss!1504) (minValue!4029 thiss!1504) key!932 (defaultEntry!4188 thiss!1504)))))

(assert (=> b!222636 (= c!36977 (is-MissingZero!850 lt!112734))))

(assert (=> b!222636 e!144693))

(declare-fun b!222637 () Bool)

(declare-fun res!109326 () Bool)

(assert (=> b!222637 (=> (not res!109326) (not e!144682))))

(assert (=> b!222637 (= res!109326 (not (contains!1527 Nil!3325 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222638 () Bool)

(assert (=> b!222638 (= e!144677 (is-Undefined!850 lt!112734))))

(declare-fun bm!20779 () Bool)

(declare-fun arrayContainsKey!0 (array!10934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20779 (= call!20782 (arrayContainsKey!0 (_keys!6242 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222639 () Bool)

(declare-fun res!109329 () Bool)

(assert (=> b!222639 (=> (not res!109329) (not e!144687))))

(assert (=> b!222639 (= res!109329 (= (select (arr!5186 (_keys!6242 thiss!1504)) (index!5570 lt!112734)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222640 () Bool)

(declare-fun res!109337 () Bool)

(assert (=> b!222640 (=> (not res!109337) (not e!144682))))

(declare-fun noDuplicate!71 (List!3328) Bool)

(assert (=> b!222640 (= res!109337 (noDuplicate!71 Nil!3325))))

(declare-fun b!222641 () Bool)

(declare-fun res!109338 () Bool)

(assert (=> b!222641 (=> (not res!109338) (not e!144685))))

(assert (=> b!222641 (= res!109338 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222642 () Bool)

(declare-fun res!109327 () Bool)

(assert (=> b!222642 (= res!109327 (= (select (arr!5186 (_keys!6242 thiss!1504)) (index!5573 lt!112734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222642 (=> (not res!109327) (not e!144690))))

(declare-fun b!222643 () Bool)

(assert (=> b!222643 (= e!144683 e!144678)))

(declare-fun res!109324 () Bool)

(assert (=> b!222643 (=> (not res!109324) (not e!144678))))

(assert (=> b!222643 (= res!109324 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222644 () Bool)

(assert (=> b!222644 (= e!144684 (and e!144680 mapRes!9937))))

(declare-fun condMapEmpty!9937 () Bool)

(declare-fun mapDefault!9937 () ValueCell!2579)

