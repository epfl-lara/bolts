; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21846 () Bool)

(assert start!21846)

(declare-fun b!219696 () Bool)

(declare-fun b_free!5901 () Bool)

(declare-fun b_next!5901 () Bool)

(assert (=> b!219696 (= b_free!5901 (not b_next!5901))))

(declare-fun tp!20844 () Bool)

(declare-fun b_and!12817 () Bool)

(assert (=> b!219696 (= tp!20844 b_and!12817)))

(declare-fun b!219686 () Bool)

(declare-fun e!142896 () Bool)

(declare-fun tp_is_empty!5763 () Bool)

(assert (=> b!219686 (= e!142896 tp_is_empty!5763)))

(declare-fun b!219687 () Bool)

(declare-fun c!36567 () Bool)

(declare-datatypes ((SeekEntryResult!811 0))(
  ( (MissingZero!811 (index!5414 (_ BitVec 32))) (Found!811 (index!5415 (_ BitVec 32))) (Intermediate!811 (undefined!1623 Bool) (index!5416 (_ BitVec 32)) (x!22927 (_ BitVec 32))) (Undefined!811) (MissingVacant!811 (index!5417 (_ BitVec 32))) )
))
(declare-fun lt!112043 () SeekEntryResult!811)

(get-info :version)

(assert (=> b!219687 (= c!36567 ((_ is MissingVacant!811) lt!112043))))

(declare-fun e!142893 () Bool)

(declare-fun e!142889 () Bool)

(assert (=> b!219687 (= e!142893 e!142889)))

(declare-fun b!219688 () Bool)

(declare-fun e!142892 () Bool)

(declare-fun call!20536 () Bool)

(assert (=> b!219688 (= e!142892 (not call!20536))))

(declare-fun mapNonEmpty!9814 () Bool)

(declare-fun mapRes!9814 () Bool)

(declare-fun tp!20845 () Bool)

(assert (=> mapNonEmpty!9814 (= mapRes!9814 (and tp!20845 e!142896))))

(declare-datatypes ((V!7331 0))(
  ( (V!7332 (val!2926 Int)) )
))
(declare-datatypes ((ValueCell!2538 0))(
  ( (ValueCellFull!2538 (v!4942 V!7331)) (EmptyCell!2538) )
))
(declare-fun mapValue!9814 () ValueCell!2538)

(declare-fun mapKey!9814 () (_ BitVec 32))

(declare-datatypes ((array!10768 0))(
  ( (array!10769 (arr!5103 (Array (_ BitVec 32) ValueCell!2538)) (size!5436 (_ BitVec 32))) )
))
(declare-datatypes ((array!10770 0))(
  ( (array!10771 (arr!5104 (Array (_ BitVec 32) (_ BitVec 64))) (size!5437 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2976 0))(
  ( (LongMapFixedSize!2977 (defaultEntry!4147 Int) (mask!9941 (_ BitVec 32)) (extraKeys!3884 (_ BitVec 32)) (zeroValue!3988 V!7331) (minValue!3988 V!7331) (_size!1537 (_ BitVec 32)) (_keys!6201 array!10770) (_values!4130 array!10768) (_vacant!1537 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2976)

(declare-fun mapRest!9814 () (Array (_ BitVec 32) ValueCell!2538))

(assert (=> mapNonEmpty!9814 (= (arr!5103 (_values!4130 thiss!1504)) (store mapRest!9814 mapKey!9814 mapValue!9814))))

(declare-fun b!219689 () Bool)

(declare-fun e!142890 () Bool)

(declare-fun e!142899 () Bool)

(assert (=> b!219689 (= e!142890 e!142899)))

(declare-fun res!107701 () Bool)

(assert (=> b!219689 (=> (not res!107701) (not e!142899))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!219689 (= res!107701 (inRange!0 index!297 (mask!9941 thiss!1504)))))

(declare-datatypes ((Unit!6549 0))(
  ( (Unit!6550) )
))
(declare-fun lt!112040 () Unit!6549)

(declare-fun e!142900 () Unit!6549)

(assert (=> b!219689 (= lt!112040 e!142900)))

(declare-fun c!36569 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4340 0))(
  ( (tuple2!4341 (_1!2180 (_ BitVec 64)) (_2!2180 V!7331)) )
))
(declare-datatypes ((List!3266 0))(
  ( (Nil!3263) (Cons!3262 (h!3910 tuple2!4340) (t!8233 List!3266)) )
))
(declare-datatypes ((ListLongMap!3267 0))(
  ( (ListLongMap!3268 (toList!1649 List!3266)) )
))
(declare-fun contains!1486 (ListLongMap!3267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1172 (array!10770 array!10768 (_ BitVec 32) (_ BitVec 32) V!7331 V!7331 (_ BitVec 32) Int) ListLongMap!3267)

(assert (=> b!219689 (= c!36569 (contains!1486 (getCurrentListMap!1172 (_keys!6201 thiss!1504) (_values!4130 thiss!1504) (mask!9941 thiss!1504) (extraKeys!3884 thiss!1504) (zeroValue!3988 thiss!1504) (minValue!3988 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4147 thiss!1504)) key!932))))

(declare-fun b!219690 () Bool)

(declare-fun res!107707 () Bool)

(assert (=> b!219690 (=> (not res!107707) (not e!142899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10770 (_ BitVec 32)) Bool)

(assert (=> b!219690 (= res!107707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6201 thiss!1504) (mask!9941 thiss!1504)))))

(declare-fun b!219691 () Bool)

(declare-fun e!142894 () Bool)

(assert (=> b!219691 (= e!142894 (not call!20536))))

(declare-fun b!219692 () Bool)

(declare-fun res!107700 () Bool)

(assert (=> b!219692 (=> (not res!107700) (not e!142894))))

(assert (=> b!219692 (= res!107700 (= (select (arr!5104 (_keys!6201 thiss!1504)) (index!5414 lt!112043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!107703 () Bool)

(declare-fun e!142891 () Bool)

(assert (=> start!21846 (=> (not res!107703) (not e!142891))))

(declare-fun valid!1196 (LongMapFixedSize!2976) Bool)

(assert (=> start!21846 (= res!107703 (valid!1196 thiss!1504))))

(assert (=> start!21846 e!142891))

(declare-fun e!142897 () Bool)

(assert (=> start!21846 e!142897))

(assert (=> start!21846 true))

(declare-fun b!219693 () Bool)

(declare-fun res!107706 () Bool)

(assert (=> b!219693 (=> (not res!107706) (not e!142899))))

(declare-fun arrayContainsKey!0 (array!10770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!219693 (= res!107706 (arrayContainsKey!0 (_keys!6201 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219694 () Bool)

(declare-fun lt!112041 () Unit!6549)

(assert (=> b!219694 (= e!142900 lt!112041)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!207 (array!10770 array!10768 (_ BitVec 32) (_ BitVec 32) V!7331 V!7331 (_ BitVec 64) Int) Unit!6549)

(assert (=> b!219694 (= lt!112041 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!207 (_keys!6201 thiss!1504) (_values!4130 thiss!1504) (mask!9941 thiss!1504) (extraKeys!3884 thiss!1504) (zeroValue!3988 thiss!1504) (minValue!3988 thiss!1504) key!932 (defaultEntry!4147 thiss!1504)))))

(declare-fun c!36568 () Bool)

(assert (=> b!219694 (= c!36568 ((_ is MissingZero!811) lt!112043))))

(assert (=> b!219694 e!142893))

(declare-fun b!219695 () Bool)

(declare-fun Unit!6551 () Unit!6549)

(assert (=> b!219695 (= e!142900 Unit!6551)))

(declare-fun lt!112042 () Unit!6549)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!198 (array!10770 array!10768 (_ BitVec 32) (_ BitVec 32) V!7331 V!7331 (_ BitVec 64) Int) Unit!6549)

(assert (=> b!219695 (= lt!112042 (lemmaInListMapThenSeekEntryOrOpenFindsIt!198 (_keys!6201 thiss!1504) (_values!4130 thiss!1504) (mask!9941 thiss!1504) (extraKeys!3884 thiss!1504) (zeroValue!3988 thiss!1504) (minValue!3988 thiss!1504) key!932 (defaultEntry!4147 thiss!1504)))))

(assert (=> b!219695 false))

(declare-fun e!142898 () Bool)

(declare-fun array_inv!3369 (array!10770) Bool)

(declare-fun array_inv!3370 (array!10768) Bool)

(assert (=> b!219696 (= e!142897 (and tp!20844 tp_is_empty!5763 (array_inv!3369 (_keys!6201 thiss!1504)) (array_inv!3370 (_values!4130 thiss!1504)) e!142898))))

(declare-fun b!219697 () Bool)

(declare-fun e!142895 () Bool)

(assert (=> b!219697 (= e!142895 tp_is_empty!5763)))

(declare-fun b!219698 () Bool)

(declare-fun res!107698 () Bool)

(assert (=> b!219698 (=> (not res!107698) (not e!142891))))

(assert (=> b!219698 (= res!107698 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20532 () Bool)

(assert (=> bm!20532 (= call!20536 (arrayContainsKey!0 (_keys!6201 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun call!20535 () Bool)

(declare-fun bm!20533 () Bool)

(assert (=> bm!20533 (= call!20535 (inRange!0 (ite c!36568 (index!5414 lt!112043) (index!5417 lt!112043)) (mask!9941 thiss!1504)))))

(declare-fun b!219699 () Bool)

(assert (=> b!219699 (= e!142889 ((_ is Undefined!811) lt!112043))))

(declare-fun b!219700 () Bool)

(assert (=> b!219700 (= e!142891 e!142890)))

(declare-fun res!107699 () Bool)

(assert (=> b!219700 (=> (not res!107699) (not e!142890))))

(assert (=> b!219700 (= res!107699 (or (= lt!112043 (MissingZero!811 index!297)) (= lt!112043 (MissingVacant!811 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10770 (_ BitVec 32)) SeekEntryResult!811)

(assert (=> b!219700 (= lt!112043 (seekEntryOrOpen!0 key!932 (_keys!6201 thiss!1504) (mask!9941 thiss!1504)))))

(declare-fun b!219701 () Bool)

(assert (=> b!219701 (= e!142898 (and e!142895 mapRes!9814))))

(declare-fun condMapEmpty!9814 () Bool)

(declare-fun mapDefault!9814 () ValueCell!2538)

(assert (=> b!219701 (= condMapEmpty!9814 (= (arr!5103 (_values!4130 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2538)) mapDefault!9814)))))

(declare-fun b!219702 () Bool)

(assert (=> b!219702 (= e!142889 e!142892)))

(declare-fun res!107704 () Bool)

(assert (=> b!219702 (= res!107704 call!20535)))

(assert (=> b!219702 (=> (not res!107704) (not e!142892))))

(declare-fun b!219703 () Bool)

(declare-fun res!107702 () Bool)

(assert (=> b!219703 (= res!107702 (= (select (arr!5104 (_keys!6201 thiss!1504)) (index!5417 lt!112043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219703 (=> (not res!107702) (not e!142892))))

(declare-fun b!219704 () Bool)

(declare-fun res!107697 () Bool)

(assert (=> b!219704 (=> (not res!107697) (not e!142899))))

(assert (=> b!219704 (= res!107697 (and (= (size!5436 (_values!4130 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9941 thiss!1504))) (= (size!5437 (_keys!6201 thiss!1504)) (size!5436 (_values!4130 thiss!1504))) (bvsge (mask!9941 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3884 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3884 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!219705 () Bool)

(declare-fun res!107696 () Bool)

(assert (=> b!219705 (=> (not res!107696) (not e!142894))))

(assert (=> b!219705 (= res!107696 call!20535)))

(assert (=> b!219705 (= e!142893 e!142894)))

(declare-fun b!219706 () Bool)

(assert (=> b!219706 (= e!142899 false)))

(declare-fun lt!112044 () Bool)

(declare-datatypes ((List!3267 0))(
  ( (Nil!3264) (Cons!3263 (h!3911 (_ BitVec 64)) (t!8234 List!3267)) )
))
(declare-fun arrayNoDuplicates!0 (array!10770 (_ BitVec 32) List!3267) Bool)

(assert (=> b!219706 (= lt!112044 (arrayNoDuplicates!0 (_keys!6201 thiss!1504) #b00000000000000000000000000000000 Nil!3264))))

(declare-fun mapIsEmpty!9814 () Bool)

(assert (=> mapIsEmpty!9814 mapRes!9814))

(declare-fun b!219707 () Bool)

(declare-fun res!107705 () Bool)

(assert (=> b!219707 (=> (not res!107705) (not e!142899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219707 (= res!107705 (validMask!0 (mask!9941 thiss!1504)))))

(assert (= (and start!21846 res!107703) b!219698))

(assert (= (and b!219698 res!107698) b!219700))

(assert (= (and b!219700 res!107699) b!219689))

(assert (= (and b!219689 c!36569) b!219695))

(assert (= (and b!219689 (not c!36569)) b!219694))

(assert (= (and b!219694 c!36568) b!219705))

(assert (= (and b!219694 (not c!36568)) b!219687))

(assert (= (and b!219705 res!107696) b!219692))

(assert (= (and b!219692 res!107700) b!219691))

(assert (= (and b!219687 c!36567) b!219702))

(assert (= (and b!219687 (not c!36567)) b!219699))

(assert (= (and b!219702 res!107704) b!219703))

(assert (= (and b!219703 res!107702) b!219688))

(assert (= (or b!219705 b!219702) bm!20533))

(assert (= (or b!219691 b!219688) bm!20532))

(assert (= (and b!219689 res!107701) b!219693))

(assert (= (and b!219693 res!107706) b!219707))

(assert (= (and b!219707 res!107705) b!219704))

(assert (= (and b!219704 res!107697) b!219690))

(assert (= (and b!219690 res!107707) b!219706))

(assert (= (and b!219701 condMapEmpty!9814) mapIsEmpty!9814))

(assert (= (and b!219701 (not condMapEmpty!9814)) mapNonEmpty!9814))

(assert (= (and mapNonEmpty!9814 ((_ is ValueCellFull!2538) mapValue!9814)) b!219686))

(assert (= (and b!219701 ((_ is ValueCellFull!2538) mapDefault!9814)) b!219697))

(assert (= b!219696 b!219701))

(assert (= start!21846 b!219696))

(declare-fun m!245177 () Bool)

(assert (=> b!219694 m!245177))

(declare-fun m!245179 () Bool)

(assert (=> b!219693 m!245179))

(declare-fun m!245181 () Bool)

(assert (=> start!21846 m!245181))

(declare-fun m!245183 () Bool)

(assert (=> b!219689 m!245183))

(declare-fun m!245185 () Bool)

(assert (=> b!219689 m!245185))

(assert (=> b!219689 m!245185))

(declare-fun m!245187 () Bool)

(assert (=> b!219689 m!245187))

(assert (=> bm!20532 m!245179))

(declare-fun m!245189 () Bool)

(assert (=> b!219692 m!245189))

(declare-fun m!245191 () Bool)

(assert (=> b!219700 m!245191))

(declare-fun m!245193 () Bool)

(assert (=> b!219706 m!245193))

(declare-fun m!245195 () Bool)

(assert (=> bm!20533 m!245195))

(declare-fun m!245197 () Bool)

(assert (=> b!219690 m!245197))

(declare-fun m!245199 () Bool)

(assert (=> b!219707 m!245199))

(declare-fun m!245201 () Bool)

(assert (=> b!219703 m!245201))

(declare-fun m!245203 () Bool)

(assert (=> mapNonEmpty!9814 m!245203))

(declare-fun m!245205 () Bool)

(assert (=> b!219696 m!245205))

(declare-fun m!245207 () Bool)

(assert (=> b!219696 m!245207))

(declare-fun m!245209 () Bool)

(assert (=> b!219695 m!245209))

(check-sat (not b!219695) (not b!219690) b_and!12817 tp_is_empty!5763 (not b!219700) (not b_next!5901) (not bm!20533) (not start!21846) (not b!219707) (not bm!20532) (not mapNonEmpty!9814) (not b!219706) (not b!219689) (not b!219696) (not b!219693) (not b!219694))
(check-sat b_and!12817 (not b_next!5901))
