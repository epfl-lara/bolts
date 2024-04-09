; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23588 () Bool)

(assert start!23588)

(declare-fun b!247766 () Bool)

(declare-fun b_free!6595 () Bool)

(declare-fun b_next!6595 () Bool)

(assert (=> b!247766 (= b_free!6595 (not b_next!6595))))

(declare-fun tp!23032 () Bool)

(declare-fun b_and!13615 () Bool)

(assert (=> b!247766 (= tp!23032 b_and!13615)))

(declare-fun b!247764 () Bool)

(declare-fun res!121448 () Bool)

(declare-fun e!160745 () Bool)

(assert (=> b!247764 (=> res!121448 e!160745)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247764 (= res!121448 (not (validKeyInArray!0 key!932)))))

(declare-fun res!121445 () Bool)

(declare-fun e!160749 () Bool)

(assert (=> start!23588 (=> (not res!121445) (not e!160749))))

(declare-datatypes ((V!8257 0))(
  ( (V!8258 (val!3273 Int)) )
))
(declare-datatypes ((ValueCell!2885 0))(
  ( (ValueCellFull!2885 (v!5327 V!8257)) (EmptyCell!2885) )
))
(declare-datatypes ((array!12220 0))(
  ( (array!12221 (arr!5797 (Array (_ BitVec 32) ValueCell!2885)) (size!6140 (_ BitVec 32))) )
))
(declare-datatypes ((array!12222 0))(
  ( (array!12223 (arr!5798 (Array (_ BitVec 32) (_ BitVec 64))) (size!6141 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3670 0))(
  ( (LongMapFixedSize!3671 (defaultEntry!4584 Int) (mask!10726 (_ BitVec 32)) (extraKeys!4321 (_ BitVec 32)) (zeroValue!4425 V!8257) (minValue!4425 V!8257) (_size!1884 (_ BitVec 32)) (_keys!6706 array!12222) (_values!4567 array!12220) (_vacant!1884 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3670)

(declare-fun valid!1428 (LongMapFixedSize!3670) Bool)

(assert (=> start!23588 (= res!121445 (valid!1428 thiss!1504))))

(assert (=> start!23588 e!160749))

(declare-fun e!160754 () Bool)

(assert (=> start!23588 e!160754))

(assert (=> start!23588 true))

(declare-fun b!247765 () Bool)

(declare-fun e!160743 () Bool)

(assert (=> b!247765 (= e!160743 (not e!160745))))

(declare-fun res!121450 () Bool)

(assert (=> b!247765 (=> res!121450 e!160745)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247765 (= res!121450 (not (validMask!0 (mask!10726 thiss!1504))))))

(declare-fun lt!124121 () array!12222)

(declare-fun arrayCountValidKeys!0 (array!12222 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247765 (= (arrayCountValidKeys!0 lt!124121 #b00000000000000000000000000000000 (size!6141 (_keys!6706 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6706 thiss!1504) #b00000000000000000000000000000000 (size!6141 (_keys!6706 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7667 0))(
  ( (Unit!7668) )
))
(declare-fun lt!124123 () Unit!7667)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12222 (_ BitVec 32) (_ BitVec 64)) Unit!7667)

(assert (=> b!247765 (= lt!124123 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6706 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3720 0))(
  ( (Nil!3717) (Cons!3716 (h!4374 (_ BitVec 64)) (t!8751 List!3720)) )
))
(declare-fun arrayNoDuplicates!0 (array!12222 (_ BitVec 32) List!3720) Bool)

(assert (=> b!247765 (arrayNoDuplicates!0 lt!124121 #b00000000000000000000000000000000 Nil!3717)))

(assert (=> b!247765 (= lt!124121 (array!12223 (store (arr!5798 (_keys!6706 thiss!1504)) index!297 key!932) (size!6141 (_keys!6706 thiss!1504))))))

(declare-fun lt!124118 () Unit!7667)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12222 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3720) Unit!7667)

(assert (=> b!247765 (= lt!124118 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6706 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3717))))

(declare-fun lt!124120 () Unit!7667)

(declare-fun e!160740 () Unit!7667)

(assert (=> b!247765 (= lt!124120 e!160740)))

(declare-fun c!41479 () Bool)

(declare-fun lt!124116 () Bool)

(assert (=> b!247765 (= c!41479 lt!124116)))

(declare-fun arrayContainsKey!0 (array!12222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247765 (= lt!124116 (arrayContainsKey!0 (_keys!6706 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun tp_is_empty!6457 () Bool)

(declare-fun e!160753 () Bool)

(declare-fun array_inv!3819 (array!12222) Bool)

(declare-fun array_inv!3820 (array!12220) Bool)

(assert (=> b!247766 (= e!160754 (and tp!23032 tp_is_empty!6457 (array_inv!3819 (_keys!6706 thiss!1504)) (array_inv!3820 (_values!4567 thiss!1504)) e!160753))))

(declare-fun b!247767 () Bool)

(declare-fun e!160741 () Bool)

(declare-fun call!23205 () Bool)

(assert (=> b!247767 (= e!160741 (not call!23205))))

(declare-fun b!247768 () Bool)

(declare-fun e!160750 () Bool)

(assert (=> b!247768 (= e!160749 e!160750)))

(declare-fun res!121453 () Bool)

(assert (=> b!247768 (=> (not res!121453) (not e!160750))))

(declare-datatypes ((SeekEntryResult!1116 0))(
  ( (MissingZero!1116 (index!6634 (_ BitVec 32))) (Found!1116 (index!6635 (_ BitVec 32))) (Intermediate!1116 (undefined!1928 Bool) (index!6636 (_ BitVec 32)) (x!24560 (_ BitVec 32))) (Undefined!1116) (MissingVacant!1116 (index!6637 (_ BitVec 32))) )
))
(declare-fun lt!124114 () SeekEntryResult!1116)

(assert (=> b!247768 (= res!121453 (or (= lt!124114 (MissingZero!1116 index!297)) (= lt!124114 (MissingVacant!1116 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12222 (_ BitVec 32)) SeekEntryResult!1116)

(assert (=> b!247768 (= lt!124114 (seekEntryOrOpen!0 key!932 (_keys!6706 thiss!1504) (mask!10726 thiss!1504)))))

(declare-fun b!247769 () Bool)

(declare-fun res!121451 () Bool)

(assert (=> b!247769 (= res!121451 (= (select (arr!5798 (_keys!6706 thiss!1504)) (index!6637 lt!124114)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247769 (=> (not res!121451) (not e!160741))))

(declare-fun b!247770 () Bool)

(declare-fun res!121447 () Bool)

(declare-fun e!160747 () Bool)

(assert (=> b!247770 (=> (not res!121447) (not e!160747))))

(declare-fun call!23204 () Bool)

(assert (=> b!247770 (= res!121447 call!23204)))

(declare-fun e!160744 () Bool)

(assert (=> b!247770 (= e!160744 e!160747)))

(declare-fun b!247771 () Bool)

(declare-fun e!160746 () Bool)

(assert (=> b!247771 (= e!160746 tp_is_empty!6457)))

(declare-fun b!247772 () Bool)

(declare-fun res!121449 () Bool)

(assert (=> b!247772 (=> (not res!121449) (not e!160749))))

(assert (=> b!247772 (= res!121449 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247773 () Bool)

(declare-fun e!160752 () Bool)

(assert (=> b!247773 (= e!160752 e!160741)))

(declare-fun res!121452 () Bool)

(assert (=> b!247773 (= res!121452 call!23204)))

(assert (=> b!247773 (=> (not res!121452) (not e!160741))))

(declare-fun bm!23201 () Bool)

(assert (=> bm!23201 (= call!23205 (arrayContainsKey!0 (_keys!6706 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247774 () Bool)

(declare-fun res!121446 () Bool)

(assert (=> b!247774 (=> res!121446 e!160745)))

(assert (=> b!247774 (= res!121446 (or (not (= (size!6141 (_keys!6706 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10726 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6141 (_keys!6706 thiss!1504)))))))

(declare-fun b!247775 () Bool)

(declare-fun res!121443 () Bool)

(assert (=> b!247775 (=> res!121443 e!160745)))

(assert (=> b!247775 (= res!121443 lt!124116)))

(declare-fun b!247776 () Bool)

(declare-fun Unit!7669 () Unit!7667)

(assert (=> b!247776 (= e!160740 Unit!7669)))

(declare-fun lt!124122 () Unit!7667)

(declare-fun lemmaArrayContainsKeyThenInListMap!189 (array!12222 array!12220 (_ BitVec 32) (_ BitVec 32) V!8257 V!8257 (_ BitVec 64) (_ BitVec 32) Int) Unit!7667)

(assert (=> b!247776 (= lt!124122 (lemmaArrayContainsKeyThenInListMap!189 (_keys!6706 thiss!1504) (_values!4567 thiss!1504) (mask!10726 thiss!1504) (extraKeys!4321 thiss!1504) (zeroValue!4425 thiss!1504) (minValue!4425 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4584 thiss!1504)))))

(assert (=> b!247776 false))

(declare-fun b!247777 () Bool)

(declare-fun res!121444 () Bool)

(assert (=> b!247777 (=> (not res!121444) (not e!160747))))

(assert (=> b!247777 (= res!121444 (= (select (arr!5798 (_keys!6706 thiss!1504)) (index!6634 lt!124114)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!10961 () Bool)

(declare-fun mapRes!10961 () Bool)

(assert (=> mapIsEmpty!10961 mapRes!10961))

(declare-fun b!247778 () Bool)

(declare-fun e!160748 () Bool)

(assert (=> b!247778 (= e!160753 (and e!160748 mapRes!10961))))

(declare-fun condMapEmpty!10961 () Bool)

(declare-fun mapDefault!10961 () ValueCell!2885)

