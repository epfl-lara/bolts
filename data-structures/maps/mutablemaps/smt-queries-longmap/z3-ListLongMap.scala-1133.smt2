; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23308 () Bool)

(assert start!23308)

(declare-fun b!244943 () Bool)

(declare-fun b_free!6549 () Bool)

(declare-fun b_next!6549 () Bool)

(assert (=> b!244943 (= b_free!6549 (not b_next!6549))))

(declare-fun tp!22875 () Bool)

(declare-fun b_and!13553 () Bool)

(assert (=> b!244943 (= tp!22875 b_and!13553)))

(declare-fun mapNonEmpty!10873 () Bool)

(declare-fun mapRes!10873 () Bool)

(declare-fun tp!22876 () Bool)

(declare-fun e!158921 () Bool)

(assert (=> mapNonEmpty!10873 (= mapRes!10873 (and tp!22876 e!158921))))

(declare-datatypes ((V!8195 0))(
  ( (V!8196 (val!3250 Int)) )
))
(declare-datatypes ((ValueCell!2862 0))(
  ( (ValueCellFull!2862 (v!5297 V!8195)) (EmptyCell!2862) )
))
(declare-fun mapRest!10873 () (Array (_ BitVec 32) ValueCell!2862))

(declare-fun mapKey!10873 () (_ BitVec 32))

(declare-datatypes ((array!12116 0))(
  ( (array!12117 (arr!5751 (Array (_ BitVec 32) ValueCell!2862)) (size!6093 (_ BitVec 32))) )
))
(declare-datatypes ((array!12118 0))(
  ( (array!12119 (arr!5752 (Array (_ BitVec 32) (_ BitVec 64))) (size!6094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3624 0))(
  ( (LongMapFixedSize!3625 (defaultEntry!4533 Int) (mask!10638 (_ BitVec 32)) (extraKeys!4270 (_ BitVec 32)) (zeroValue!4374 V!8195) (minValue!4374 V!8195) (_size!1861 (_ BitVec 32)) (_keys!6646 array!12118) (_values!4516 array!12116) (_vacant!1861 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3624)

(declare-fun mapValue!10873 () ValueCell!2862)

(assert (=> mapNonEmpty!10873 (= (arr!5751 (_values!4516 thiss!1504)) (store mapRest!10873 mapKey!10873 mapValue!10873))))

(declare-fun b!244940 () Bool)

(declare-fun e!158933 () Bool)

(declare-fun call!22848 () Bool)

(assert (=> b!244940 (= e!158933 (not call!22848))))

(declare-fun c!40866 () Bool)

(declare-datatypes ((SeekEntryResult!1095 0))(
  ( (MissingZero!1095 (index!6550 (_ BitVec 32))) (Found!1095 (index!6551 (_ BitVec 32))) (Intermediate!1095 (undefined!1907 Bool) (index!6552 (_ BitVec 32)) (x!24407 (_ BitVec 32))) (Undefined!1095) (MissingVacant!1095 (index!6553 (_ BitVec 32))) )
))
(declare-fun lt!122712 () SeekEntryResult!1095)

(declare-fun bm!22845 () Bool)

(declare-fun call!22849 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22845 (= call!22849 (inRange!0 (ite c!40866 (index!6550 lt!122712) (index!6553 lt!122712)) (mask!10638 thiss!1504)))))

(declare-fun b!244941 () Bool)

(declare-fun res!120180 () Bool)

(declare-fun e!158923 () Bool)

(assert (=> b!244941 (=> (not res!120180) (not e!158923))))

(assert (=> b!244941 (= res!120180 (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6550 lt!122712)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244942 () Bool)

(declare-fun e!158929 () Bool)

(declare-fun tp_is_empty!6411 () Bool)

(assert (=> b!244942 (= e!158929 tp_is_empty!6411)))

(declare-fun e!158927 () Bool)

(declare-fun e!158934 () Bool)

(declare-fun array_inv!3791 (array!12118) Bool)

(declare-fun array_inv!3792 (array!12116) Bool)

(assert (=> b!244943 (= e!158927 (and tp!22875 tp_is_empty!6411 (array_inv!3791 (_keys!6646 thiss!1504)) (array_inv!3792 (_values!4516 thiss!1504)) e!158934))))

(declare-fun b!244944 () Bool)

(declare-fun res!120181 () Bool)

(assert (=> b!244944 (= res!120181 (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6553 lt!122712)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244944 (=> (not res!120181) (not e!158933))))

(declare-fun b!244945 () Bool)

(assert (=> b!244945 (= e!158923 (not call!22848))))

(declare-fun b!244946 () Bool)

(declare-datatypes ((Unit!7561 0))(
  ( (Unit!7562) )
))
(declare-fun e!158924 () Unit!7561)

(declare-fun Unit!7563 () Unit!7561)

(assert (=> b!244946 (= e!158924 Unit!7563)))

(declare-fun lt!122710 () Unit!7561)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!370 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) Int) Unit!7561)

(assert (=> b!244946 (= lt!122710 (lemmaInListMapThenSeekEntryOrOpenFindsIt!370 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)))))

(assert (=> b!244946 false))

(declare-fun b!244947 () Bool)

(declare-fun res!120188 () Bool)

(declare-fun e!158920 () Bool)

(assert (=> b!244947 (=> (not res!120188) (not e!158920))))

(assert (=> b!244947 (= res!120188 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!244948 () Bool)

(declare-fun c!40865 () Bool)

(get-info :version)

(assert (=> b!244948 (= c!40865 ((_ is MissingVacant!1095) lt!122712))))

(declare-fun e!158930 () Bool)

(declare-fun e!158931 () Bool)

(assert (=> b!244948 (= e!158930 e!158931)))

(declare-fun b!244949 () Bool)

(declare-fun e!158922 () Bool)

(declare-fun e!158926 () Bool)

(assert (=> b!244949 (= e!158922 (not e!158926))))

(declare-fun res!120185 () Bool)

(assert (=> b!244949 (=> (not res!120185) (not e!158926))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!244949 (= res!120185 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6094 (_keys!6646 thiss!1504)))))))

(declare-datatypes ((List!3684 0))(
  ( (Nil!3681) (Cons!3680 (h!4337 (_ BitVec 64)) (t!8703 List!3684)) )
))
(declare-fun arrayNoDuplicates!0 (array!12118 (_ BitVec 32) List!3684) Bool)

(assert (=> b!244949 (arrayNoDuplicates!0 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504))) #b00000000000000000000000000000000 Nil!3681)))

(declare-fun lt!122707 () Unit!7561)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12118 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3684) Unit!7561)

(assert (=> b!244949 (= lt!122707 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6646 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3681))))

(declare-fun lt!122709 () Unit!7561)

(declare-fun e!158928 () Unit!7561)

(assert (=> b!244949 (= lt!122709 e!158928)))

(declare-fun c!40868 () Bool)

(declare-fun arrayContainsKey!0 (array!12118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!244949 (= c!40868 (arrayContainsKey!0 (_keys!6646 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244950 () Bool)

(assert (=> b!244950 (= e!158931 e!158933)))

(declare-fun res!120184 () Bool)

(assert (=> b!244950 (= res!120184 call!22849)))

(assert (=> b!244950 (=> (not res!120184) (not e!158933))))

(declare-fun b!244951 () Bool)

(declare-fun res!120189 () Bool)

(assert (=> b!244951 (=> (not res!120189) (not e!158923))))

(assert (=> b!244951 (= res!120189 call!22849)))

(assert (=> b!244951 (= e!158930 e!158923)))

(declare-fun b!244952 () Bool)

(declare-fun e!158925 () Bool)

(assert (=> b!244952 (= e!158920 e!158925)))

(declare-fun res!120187 () Bool)

(assert (=> b!244952 (=> (not res!120187) (not e!158925))))

(assert (=> b!244952 (= res!120187 (or (= lt!122712 (MissingZero!1095 index!297)) (= lt!122712 (MissingVacant!1095 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12118 (_ BitVec 32)) SeekEntryResult!1095)

(assert (=> b!244952 (= lt!122712 (seekEntryOrOpen!0 key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(declare-fun b!244953 () Bool)

(assert (=> b!244953 (= e!158931 ((_ is Undefined!1095) lt!122712))))

(declare-fun b!244954 () Bool)

(assert (=> b!244954 (= e!158934 (and e!158929 mapRes!10873))))

(declare-fun condMapEmpty!10873 () Bool)

(declare-fun mapDefault!10873 () ValueCell!2862)

(assert (=> b!244954 (= condMapEmpty!10873 (= (arr!5751 (_values!4516 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2862)) mapDefault!10873)))))

(declare-fun b!244955 () Bool)

(declare-fun res!120183 () Bool)

(assert (=> b!244955 (=> (not res!120183) (not e!158926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244955 (= res!120183 (validKeyInArray!0 key!932))))

(declare-fun b!244956 () Bool)

(assert (=> b!244956 (= e!158926 (bvslt (size!6094 (_keys!6646 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!244957 () Bool)

(declare-fun Unit!7564 () Unit!7561)

(assert (=> b!244957 (= e!158928 Unit!7564)))

(declare-fun b!244958 () Bool)

(assert (=> b!244958 (= e!158925 e!158922)))

(declare-fun res!120182 () Bool)

(assert (=> b!244958 (=> (not res!120182) (not e!158922))))

(assert (=> b!244958 (= res!120182 (inRange!0 index!297 (mask!10638 thiss!1504)))))

(declare-fun lt!122708 () Unit!7561)

(assert (=> b!244958 (= lt!122708 e!158924)))

(declare-fun c!40867 () Bool)

(declare-datatypes ((tuple2!4778 0))(
  ( (tuple2!4779 (_1!2399 (_ BitVec 64)) (_2!2399 V!8195)) )
))
(declare-datatypes ((List!3685 0))(
  ( (Nil!3682) (Cons!3681 (h!4338 tuple2!4778) (t!8704 List!3685)) )
))
(declare-datatypes ((ListLongMap!3705 0))(
  ( (ListLongMap!3706 (toList!1868 List!3685)) )
))
(declare-fun contains!1769 (ListLongMap!3705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1391 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 32) Int) ListLongMap!3705)

(assert (=> b!244958 (= c!40867 (contains!1769 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)) key!932))))

(declare-fun b!244959 () Bool)

(declare-fun Unit!7565 () Unit!7561)

(assert (=> b!244959 (= e!158928 Unit!7565)))

(declare-fun lt!122711 () Unit!7561)

(declare-fun lemmaArrayContainsKeyThenInListMap!173 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) (_ BitVec 32) Int) Unit!7561)

(assert (=> b!244959 (= lt!122711 (lemmaArrayContainsKeyThenInListMap!173 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(assert (=> b!244959 false))

(declare-fun b!244960 () Bool)

(declare-fun lt!122706 () Unit!7561)

(assert (=> b!244960 (= e!158924 lt!122706)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!373 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) Int) Unit!7561)

(assert (=> b!244960 (= lt!122706 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!373 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)))))

(assert (=> b!244960 (= c!40866 ((_ is MissingZero!1095) lt!122712))))

(assert (=> b!244960 e!158930))

(declare-fun mapIsEmpty!10873 () Bool)

(assert (=> mapIsEmpty!10873 mapRes!10873))

(declare-fun b!244961 () Bool)

(declare-fun res!120186 () Bool)

(assert (=> b!244961 (=> (not res!120186) (not e!158926))))

(assert (=> b!244961 (= res!120186 (not (validKeyInArray!0 (select (arr!5752 (_keys!6646 thiss!1504)) index!297))))))

(declare-fun b!244962 () Bool)

(assert (=> b!244962 (= e!158921 tp_is_empty!6411)))

(declare-fun res!120179 () Bool)

(assert (=> start!23308 (=> (not res!120179) (not e!158920))))

(declare-fun valid!1411 (LongMapFixedSize!3624) Bool)

(assert (=> start!23308 (= res!120179 (valid!1411 thiss!1504))))

(assert (=> start!23308 e!158920))

(assert (=> start!23308 e!158927))

(assert (=> start!23308 true))

(declare-fun bm!22846 () Bool)

(assert (=> bm!22846 (= call!22848 (arrayContainsKey!0 (_keys!6646 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!23308 res!120179) b!244947))

(assert (= (and b!244947 res!120188) b!244952))

(assert (= (and b!244952 res!120187) b!244958))

(assert (= (and b!244958 c!40867) b!244946))

(assert (= (and b!244958 (not c!40867)) b!244960))

(assert (= (and b!244960 c!40866) b!244951))

(assert (= (and b!244960 (not c!40866)) b!244948))

(assert (= (and b!244951 res!120189) b!244941))

(assert (= (and b!244941 res!120180) b!244945))

(assert (= (and b!244948 c!40865) b!244950))

(assert (= (and b!244948 (not c!40865)) b!244953))

(assert (= (and b!244950 res!120184) b!244944))

(assert (= (and b!244944 res!120181) b!244940))

(assert (= (or b!244951 b!244950) bm!22845))

(assert (= (or b!244945 b!244940) bm!22846))

(assert (= (and b!244958 res!120182) b!244949))

(assert (= (and b!244949 c!40868) b!244959))

(assert (= (and b!244949 (not c!40868)) b!244957))

(assert (= (and b!244949 res!120185) b!244961))

(assert (= (and b!244961 res!120186) b!244955))

(assert (= (and b!244955 res!120183) b!244956))

(assert (= (and b!244954 condMapEmpty!10873) mapIsEmpty!10873))

(assert (= (and b!244954 (not condMapEmpty!10873)) mapNonEmpty!10873))

(assert (= (and mapNonEmpty!10873 ((_ is ValueCellFull!2862) mapValue!10873)) b!244962))

(assert (= (and b!244954 ((_ is ValueCellFull!2862) mapDefault!10873)) b!244942))

(assert (= b!244943 b!244954))

(assert (= start!23308 b!244943))

(declare-fun m!262683 () Bool)

(assert (=> b!244941 m!262683))

(declare-fun m!262685 () Bool)

(assert (=> b!244946 m!262685))

(declare-fun m!262687 () Bool)

(assert (=> b!244960 m!262687))

(declare-fun m!262689 () Bool)

(assert (=> b!244944 m!262689))

(declare-fun m!262691 () Bool)

(assert (=> b!244959 m!262691))

(declare-fun m!262693 () Bool)

(assert (=> b!244955 m!262693))

(declare-fun m!262695 () Bool)

(assert (=> b!244943 m!262695))

(declare-fun m!262697 () Bool)

(assert (=> b!244943 m!262697))

(declare-fun m!262699 () Bool)

(assert (=> mapNonEmpty!10873 m!262699))

(declare-fun m!262701 () Bool)

(assert (=> b!244949 m!262701))

(declare-fun m!262703 () Bool)

(assert (=> b!244949 m!262703))

(declare-fun m!262705 () Bool)

(assert (=> b!244949 m!262705))

(declare-fun m!262707 () Bool)

(assert (=> b!244949 m!262707))

(declare-fun m!262709 () Bool)

(assert (=> start!23308 m!262709))

(declare-fun m!262711 () Bool)

(assert (=> b!244952 m!262711))

(declare-fun m!262713 () Bool)

(assert (=> bm!22845 m!262713))

(declare-fun m!262715 () Bool)

(assert (=> b!244958 m!262715))

(declare-fun m!262717 () Bool)

(assert (=> b!244958 m!262717))

(assert (=> b!244958 m!262717))

(declare-fun m!262719 () Bool)

(assert (=> b!244958 m!262719))

(declare-fun m!262721 () Bool)

(assert (=> b!244961 m!262721))

(assert (=> b!244961 m!262721))

(declare-fun m!262723 () Bool)

(assert (=> b!244961 m!262723))

(assert (=> bm!22846 m!262707))

(check-sat (not b!244943) (not bm!22846) (not bm!22845) tp_is_empty!6411 (not b_next!6549) (not b!244946) (not b!244952) (not b!244961) (not b!244959) (not start!23308) b_and!13553 (not b!244949) (not b!244960) (not mapNonEmpty!10873) (not b!244955) (not b!244958))
(check-sat b_and!13553 (not b_next!6549))
(get-model)

(declare-fun d!60063 () Bool)

(assert (=> d!60063 (= (inRange!0 (ite c!40866 (index!6550 lt!122712) (index!6553 lt!122712)) (mask!10638 thiss!1504)) (and (bvsge (ite c!40866 (index!6550 lt!122712) (index!6553 lt!122712)) #b00000000000000000000000000000000) (bvslt (ite c!40866 (index!6550 lt!122712) (index!6553 lt!122712)) (bvadd (mask!10638 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22845 d!60063))

(declare-fun b!245042 () Bool)

(declare-fun e!158988 () Bool)

(declare-fun call!22858 () Bool)

(assert (=> b!245042 (= e!158988 call!22858)))

(declare-fun d!60065 () Bool)

(declare-fun res!120231 () Bool)

(declare-fun e!158989 () Bool)

(assert (=> d!60065 (=> res!120231 e!158989)))

(assert (=> d!60065 (= res!120231 (bvsge #b00000000000000000000000000000000 (size!6094 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504))))))))

(assert (=> d!60065 (= (arrayNoDuplicates!0 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504))) #b00000000000000000000000000000000 Nil!3681) e!158989)))

(declare-fun bm!22855 () Bool)

(declare-fun c!40883 () Bool)

(assert (=> bm!22855 (= call!22858 (arrayNoDuplicates!0 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!40883 (Cons!3680 (select (arr!5752 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504)))) #b00000000000000000000000000000000) Nil!3681) Nil!3681)))))

(declare-fun b!245043 () Bool)

(declare-fun e!158991 () Bool)

(assert (=> b!245043 (= e!158991 e!158988)))

(assert (=> b!245043 (= c!40883 (validKeyInArray!0 (select (arr!5752 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!245044 () Bool)

(assert (=> b!245044 (= e!158989 e!158991)))

(declare-fun res!120229 () Bool)

(assert (=> b!245044 (=> (not res!120229) (not e!158991))))

(declare-fun e!158990 () Bool)

(assert (=> b!245044 (= res!120229 (not e!158990))))

(declare-fun res!120230 () Bool)

(assert (=> b!245044 (=> (not res!120230) (not e!158990))))

(assert (=> b!245044 (= res!120230 (validKeyInArray!0 (select (arr!5752 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!245045 () Bool)

(assert (=> b!245045 (= e!158988 call!22858)))

(declare-fun b!245046 () Bool)

(declare-fun contains!1770 (List!3684 (_ BitVec 64)) Bool)

(assert (=> b!245046 (= e!158990 (contains!1770 Nil!3681 (select (arr!5752 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!60065 (not res!120231)) b!245044))

(assert (= (and b!245044 res!120230) b!245046))

(assert (= (and b!245044 res!120229) b!245043))

(assert (= (and b!245043 c!40883) b!245042))

(assert (= (and b!245043 (not c!40883)) b!245045))

(assert (= (or b!245042 b!245045) bm!22855))

(declare-fun m!262767 () Bool)

(assert (=> bm!22855 m!262767))

(declare-fun m!262769 () Bool)

(assert (=> bm!22855 m!262769))

(assert (=> b!245043 m!262767))

(assert (=> b!245043 m!262767))

(declare-fun m!262771 () Bool)

(assert (=> b!245043 m!262771))

(assert (=> b!245044 m!262767))

(assert (=> b!245044 m!262767))

(assert (=> b!245044 m!262771))

(assert (=> b!245046 m!262767))

(assert (=> b!245046 m!262767))

(declare-fun m!262773 () Bool)

(assert (=> b!245046 m!262773))

(assert (=> b!244949 d!60065))

(declare-fun d!60067 () Bool)

(declare-fun e!158994 () Bool)

(assert (=> d!60067 e!158994))

(declare-fun res!120234 () Bool)

(assert (=> d!60067 (=> (not res!120234) (not e!158994))))

(assert (=> d!60067 (= res!120234 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6094 (_keys!6646 thiss!1504)))))))

(declare-fun lt!122736 () Unit!7561)

(declare-fun choose!41 (array!12118 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3684) Unit!7561)

(assert (=> d!60067 (= lt!122736 (choose!41 (_keys!6646 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3681))))

(assert (=> d!60067 (bvslt (size!6094 (_keys!6646 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60067 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6646 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3681) lt!122736)))

(declare-fun b!245049 () Bool)

(assert (=> b!245049 (= e!158994 (arrayNoDuplicates!0 (array!12119 (store (arr!5752 (_keys!6646 thiss!1504)) index!297 key!932) (size!6094 (_keys!6646 thiss!1504))) #b00000000000000000000000000000000 Nil!3681))))

(assert (= (and d!60067 res!120234) b!245049))

(declare-fun m!262775 () Bool)

(assert (=> d!60067 m!262775))

(assert (=> b!245049 m!262701))

(assert (=> b!245049 m!262703))

(assert (=> b!244949 d!60067))

(declare-fun d!60069 () Bool)

(declare-fun res!120239 () Bool)

(declare-fun e!158999 () Bool)

(assert (=> d!60069 (=> res!120239 e!158999)))

(assert (=> d!60069 (= res!120239 (= (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60069 (= (arrayContainsKey!0 (_keys!6646 thiss!1504) key!932 #b00000000000000000000000000000000) e!158999)))

(declare-fun b!245054 () Bool)

(declare-fun e!159000 () Bool)

(assert (=> b!245054 (= e!158999 e!159000)))

(declare-fun res!120240 () Bool)

(assert (=> b!245054 (=> (not res!120240) (not e!159000))))

(assert (=> b!245054 (= res!120240 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun b!245055 () Bool)

(assert (=> b!245055 (= e!159000 (arrayContainsKey!0 (_keys!6646 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60069 (not res!120239)) b!245054))

(assert (= (and b!245054 res!120240) b!245055))

(declare-fun m!262777 () Bool)

(assert (=> d!60069 m!262777))

(declare-fun m!262779 () Bool)

(assert (=> b!245055 m!262779))

(assert (=> b!244949 d!60069))

(declare-fun b!245072 () Bool)

(declare-fun e!159011 () Bool)

(declare-fun call!22863 () Bool)

(assert (=> b!245072 (= e!159011 (not call!22863))))

(declare-fun b!245073 () Bool)

(declare-fun e!159012 () Bool)

(declare-fun e!159010 () Bool)

(assert (=> b!245073 (= e!159012 e!159010)))

(declare-fun c!40888 () Bool)

(declare-fun lt!122742 () SeekEntryResult!1095)

(assert (=> b!245073 (= c!40888 ((_ is MissingVacant!1095) lt!122742))))

(declare-fun b!245074 () Bool)

(assert (=> b!245074 (= e!159010 ((_ is Undefined!1095) lt!122742))))

(declare-fun d!60071 () Bool)

(assert (=> d!60071 e!159012))

(declare-fun c!40889 () Bool)

(assert (=> d!60071 (= c!40889 ((_ is MissingZero!1095) lt!122742))))

(assert (=> d!60071 (= lt!122742 (seekEntryOrOpen!0 key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(declare-fun lt!122741 () Unit!7561)

(declare-fun choose!1151 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) Int) Unit!7561)

(assert (=> d!60071 (= lt!122741 (choose!1151 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!60071 (validMask!0 (mask!10638 thiss!1504))))

(assert (=> d!60071 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!373 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)) lt!122741)))

(declare-fun call!22864 () Bool)

(declare-fun bm!22860 () Bool)

(assert (=> bm!22860 (= call!22864 (inRange!0 (ite c!40889 (index!6550 lt!122742) (index!6553 lt!122742)) (mask!10638 thiss!1504)))))

(declare-fun b!245075 () Bool)

(declare-fun e!159009 () Bool)

(assert (=> b!245075 (= e!159012 e!159009)))

(declare-fun res!120250 () Bool)

(assert (=> b!245075 (= res!120250 call!22864)))

(assert (=> b!245075 (=> (not res!120250) (not e!159009))))

(declare-fun b!245076 () Bool)

(declare-fun res!120252 () Bool)

(assert (=> b!245076 (=> (not res!120252) (not e!159011))))

(assert (=> b!245076 (= res!120252 (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6553 lt!122742)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245076 (and (bvsge (index!6553 lt!122742) #b00000000000000000000000000000000) (bvslt (index!6553 lt!122742) (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun b!245077 () Bool)

(assert (=> b!245077 (and (bvsge (index!6550 lt!122742) #b00000000000000000000000000000000) (bvslt (index!6550 lt!122742) (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun res!120251 () Bool)

(assert (=> b!245077 (= res!120251 (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6550 lt!122742)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245077 (=> (not res!120251) (not e!159009))))

(declare-fun bm!22861 () Bool)

(assert (=> bm!22861 (= call!22863 (arrayContainsKey!0 (_keys!6646 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245078 () Bool)

(assert (=> b!245078 (= e!159009 (not call!22863))))

(declare-fun b!245079 () Bool)

(declare-fun res!120249 () Bool)

(assert (=> b!245079 (=> (not res!120249) (not e!159011))))

(assert (=> b!245079 (= res!120249 call!22864)))

(assert (=> b!245079 (= e!159010 e!159011)))

(assert (= (and d!60071 c!40889) b!245075))

(assert (= (and d!60071 (not c!40889)) b!245073))

(assert (= (and b!245075 res!120250) b!245077))

(assert (= (and b!245077 res!120251) b!245078))

(assert (= (and b!245073 c!40888) b!245079))

(assert (= (and b!245073 (not c!40888)) b!245074))

(assert (= (and b!245079 res!120249) b!245076))

(assert (= (and b!245076 res!120252) b!245072))

(assert (= (or b!245075 b!245079) bm!22860))

(assert (= (or b!245078 b!245072) bm!22861))

(declare-fun m!262781 () Bool)

(assert (=> bm!22860 m!262781))

(assert (=> bm!22861 m!262707))

(declare-fun m!262783 () Bool)

(assert (=> b!245076 m!262783))

(assert (=> d!60071 m!262711))

(declare-fun m!262785 () Bool)

(assert (=> d!60071 m!262785))

(declare-fun m!262787 () Bool)

(assert (=> d!60071 m!262787))

(declare-fun m!262789 () Bool)

(assert (=> b!245077 m!262789))

(assert (=> b!244960 d!60071))

(declare-fun d!60073 () Bool)

(assert (=> d!60073 (= (validKeyInArray!0 (select (arr!5752 (_keys!6646 thiss!1504)) index!297)) (and (not (= (select (arr!5752 (_keys!6646 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5752 (_keys!6646 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!244961 d!60073))

(declare-fun d!60075 () Bool)

(declare-fun res!120259 () Bool)

(declare-fun e!159015 () Bool)

(assert (=> d!60075 (=> (not res!120259) (not e!159015))))

(declare-fun simpleValid!251 (LongMapFixedSize!3624) Bool)

(assert (=> d!60075 (= res!120259 (simpleValid!251 thiss!1504))))

(assert (=> d!60075 (= (valid!1411 thiss!1504) e!159015)))

(declare-fun b!245086 () Bool)

(declare-fun res!120260 () Bool)

(assert (=> b!245086 (=> (not res!120260) (not e!159015))))

(declare-fun arrayCountValidKeys!0 (array!12118 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245086 (= res!120260 (= (arrayCountValidKeys!0 (_keys!6646 thiss!1504) #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))) (_size!1861 thiss!1504)))))

(declare-fun b!245087 () Bool)

(declare-fun res!120261 () Bool)

(assert (=> b!245087 (=> (not res!120261) (not e!159015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12118 (_ BitVec 32)) Bool)

(assert (=> b!245087 (= res!120261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(declare-fun b!245088 () Bool)

(assert (=> b!245088 (= e!159015 (arrayNoDuplicates!0 (_keys!6646 thiss!1504) #b00000000000000000000000000000000 Nil!3681))))

(assert (= (and d!60075 res!120259) b!245086))

(assert (= (and b!245086 res!120260) b!245087))

(assert (= (and b!245087 res!120261) b!245088))

(declare-fun m!262791 () Bool)

(assert (=> d!60075 m!262791))

(declare-fun m!262793 () Bool)

(assert (=> b!245086 m!262793))

(declare-fun m!262795 () Bool)

(assert (=> b!245087 m!262795))

(declare-fun m!262797 () Bool)

(assert (=> b!245088 m!262797))

(assert (=> start!23308 d!60075))

(declare-fun d!60077 () Bool)

(assert (=> d!60077 (= (array_inv!3791 (_keys!6646 thiss!1504)) (bvsge (size!6094 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244943 d!60077))

(declare-fun d!60079 () Bool)

(assert (=> d!60079 (= (array_inv!3792 (_values!4516 thiss!1504)) (bvsge (size!6093 (_values!4516 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244943 d!60079))

(declare-fun d!60081 () Bool)

(declare-fun lt!122750 () SeekEntryResult!1095)

(assert (=> d!60081 (and (or ((_ is Undefined!1095) lt!122750) (not ((_ is Found!1095) lt!122750)) (and (bvsge (index!6551 lt!122750) #b00000000000000000000000000000000) (bvslt (index!6551 lt!122750) (size!6094 (_keys!6646 thiss!1504))))) (or ((_ is Undefined!1095) lt!122750) ((_ is Found!1095) lt!122750) (not ((_ is MissingZero!1095) lt!122750)) (and (bvsge (index!6550 lt!122750) #b00000000000000000000000000000000) (bvslt (index!6550 lt!122750) (size!6094 (_keys!6646 thiss!1504))))) (or ((_ is Undefined!1095) lt!122750) ((_ is Found!1095) lt!122750) ((_ is MissingZero!1095) lt!122750) (not ((_ is MissingVacant!1095) lt!122750)) (and (bvsge (index!6553 lt!122750) #b00000000000000000000000000000000) (bvslt (index!6553 lt!122750) (size!6094 (_keys!6646 thiss!1504))))) (or ((_ is Undefined!1095) lt!122750) (ite ((_ is Found!1095) lt!122750) (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6551 lt!122750)) key!932) (ite ((_ is MissingZero!1095) lt!122750) (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6550 lt!122750)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1095) lt!122750) (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6553 lt!122750)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!159023 () SeekEntryResult!1095)

(assert (=> d!60081 (= lt!122750 e!159023)))

(declare-fun c!40897 () Bool)

(declare-fun lt!122751 () SeekEntryResult!1095)

(assert (=> d!60081 (= c!40897 (and ((_ is Intermediate!1095) lt!122751) (undefined!1907 lt!122751)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12118 (_ BitVec 32)) SeekEntryResult!1095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60081 (= lt!122751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10638 thiss!1504)) key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(assert (=> d!60081 (validMask!0 (mask!10638 thiss!1504))))

(assert (=> d!60081 (= (seekEntryOrOpen!0 key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)) lt!122750)))

(declare-fun b!245101 () Bool)

(declare-fun c!40896 () Bool)

(declare-fun lt!122749 () (_ BitVec 64))

(assert (=> b!245101 (= c!40896 (= lt!122749 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159024 () SeekEntryResult!1095)

(declare-fun e!159022 () SeekEntryResult!1095)

(assert (=> b!245101 (= e!159024 e!159022)))

(declare-fun b!245102 () Bool)

(assert (=> b!245102 (= e!159023 Undefined!1095)))

(declare-fun b!245103 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12118 (_ BitVec 32)) SeekEntryResult!1095)

(assert (=> b!245103 (= e!159022 (seekKeyOrZeroReturnVacant!0 (x!24407 lt!122751) (index!6552 lt!122751) (index!6552 lt!122751) key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(declare-fun b!245104 () Bool)

(assert (=> b!245104 (= e!159024 (Found!1095 (index!6552 lt!122751)))))

(declare-fun b!245105 () Bool)

(assert (=> b!245105 (= e!159023 e!159024)))

(assert (=> b!245105 (= lt!122749 (select (arr!5752 (_keys!6646 thiss!1504)) (index!6552 lt!122751)))))

(declare-fun c!40898 () Bool)

(assert (=> b!245105 (= c!40898 (= lt!122749 key!932))))

(declare-fun b!245106 () Bool)

(assert (=> b!245106 (= e!159022 (MissingZero!1095 (index!6552 lt!122751)))))

(assert (= (and d!60081 c!40897) b!245102))

(assert (= (and d!60081 (not c!40897)) b!245105))

(assert (= (and b!245105 c!40898) b!245104))

(assert (= (and b!245105 (not c!40898)) b!245101))

(assert (= (and b!245101 c!40896) b!245106))

(assert (= (and b!245101 (not c!40896)) b!245103))

(declare-fun m!262799 () Bool)

(assert (=> d!60081 m!262799))

(declare-fun m!262801 () Bool)

(assert (=> d!60081 m!262801))

(declare-fun m!262803 () Bool)

(assert (=> d!60081 m!262803))

(assert (=> d!60081 m!262787))

(declare-fun m!262805 () Bool)

(assert (=> d!60081 m!262805))

(assert (=> d!60081 m!262803))

(declare-fun m!262807 () Bool)

(assert (=> d!60081 m!262807))

(declare-fun m!262809 () Bool)

(assert (=> b!245103 m!262809))

(declare-fun m!262811 () Bool)

(assert (=> b!245105 m!262811))

(assert (=> b!244952 d!60081))

(declare-fun d!60083 () Bool)

(assert (=> d!60083 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!244955 d!60083))

(assert (=> bm!22846 d!60069))

(declare-fun d!60085 () Bool)

(declare-fun e!159027 () Bool)

(assert (=> d!60085 e!159027))

(declare-fun res!120267 () Bool)

(assert (=> d!60085 (=> (not res!120267) (not e!159027))))

(declare-fun lt!122757 () SeekEntryResult!1095)

(assert (=> d!60085 (= res!120267 ((_ is Found!1095) lt!122757))))

(assert (=> d!60085 (= lt!122757 (seekEntryOrOpen!0 key!932 (_keys!6646 thiss!1504) (mask!10638 thiss!1504)))))

(declare-fun lt!122756 () Unit!7561)

(declare-fun choose!1152 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) Int) Unit!7561)

(assert (=> d!60085 (= lt!122756 (choose!1152 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)))))

(assert (=> d!60085 (validMask!0 (mask!10638 thiss!1504))))

(assert (=> d!60085 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!370 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 (defaultEntry!4533 thiss!1504)) lt!122756)))

(declare-fun b!245111 () Bool)

(declare-fun res!120266 () Bool)

(assert (=> b!245111 (=> (not res!120266) (not e!159027))))

(assert (=> b!245111 (= res!120266 (inRange!0 (index!6551 lt!122757) (mask!10638 thiss!1504)))))

(declare-fun b!245112 () Bool)

(assert (=> b!245112 (= e!159027 (= (select (arr!5752 (_keys!6646 thiss!1504)) (index!6551 lt!122757)) key!932))))

(assert (=> b!245112 (and (bvsge (index!6551 lt!122757) #b00000000000000000000000000000000) (bvslt (index!6551 lt!122757) (size!6094 (_keys!6646 thiss!1504))))))

(assert (= (and d!60085 res!120267) b!245111))

(assert (= (and b!245111 res!120266) b!245112))

(assert (=> d!60085 m!262711))

(declare-fun m!262813 () Bool)

(assert (=> d!60085 m!262813))

(assert (=> d!60085 m!262787))

(declare-fun m!262815 () Bool)

(assert (=> b!245111 m!262815))

(declare-fun m!262817 () Bool)

(assert (=> b!245112 m!262817))

(assert (=> b!244946 d!60085))

(declare-fun d!60087 () Bool)

(assert (=> d!60087 (= (inRange!0 index!297 (mask!10638 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10638 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!244958 d!60087))

(declare-fun d!60089 () Bool)

(declare-fun e!159033 () Bool)

(assert (=> d!60089 e!159033))

(declare-fun res!120270 () Bool)

(assert (=> d!60089 (=> res!120270 e!159033)))

(declare-fun lt!122767 () Bool)

(assert (=> d!60089 (= res!120270 (not lt!122767))))

(declare-fun lt!122769 () Bool)

(assert (=> d!60089 (= lt!122767 lt!122769)))

(declare-fun lt!122768 () Unit!7561)

(declare-fun e!159032 () Unit!7561)

(assert (=> d!60089 (= lt!122768 e!159032)))

(declare-fun c!40901 () Bool)

(assert (=> d!60089 (= c!40901 lt!122769)))

(declare-fun containsKey!278 (List!3685 (_ BitVec 64)) Bool)

(assert (=> d!60089 (= lt!122769 (containsKey!278 (toList!1868 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504))) key!932))))

(assert (=> d!60089 (= (contains!1769 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)) key!932) lt!122767)))

(declare-fun b!245119 () Bool)

(declare-fun lt!122766 () Unit!7561)

(assert (=> b!245119 (= e!159032 lt!122766)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!227 (List!3685 (_ BitVec 64)) Unit!7561)

(assert (=> b!245119 (= lt!122766 (lemmaContainsKeyImpliesGetValueByKeyDefined!227 (toList!1868 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504))) key!932))))

(declare-datatypes ((Option!292 0))(
  ( (Some!291 (v!5299 V!8195)) (None!290) )
))
(declare-fun isDefined!228 (Option!292) Bool)

(declare-fun getValueByKey!286 (List!3685 (_ BitVec 64)) Option!292)

(assert (=> b!245119 (isDefined!228 (getValueByKey!286 (toList!1868 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504))) key!932))))

(declare-fun b!245120 () Bool)

(declare-fun Unit!7566 () Unit!7561)

(assert (=> b!245120 (= e!159032 Unit!7566)))

(declare-fun b!245121 () Bool)

(assert (=> b!245121 (= e!159033 (isDefined!228 (getValueByKey!286 (toList!1868 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504))) key!932)))))

(assert (= (and d!60089 c!40901) b!245119))

(assert (= (and d!60089 (not c!40901)) b!245120))

(assert (= (and d!60089 (not res!120270)) b!245121))

(declare-fun m!262819 () Bool)

(assert (=> d!60089 m!262819))

(declare-fun m!262821 () Bool)

(assert (=> b!245119 m!262821))

(declare-fun m!262823 () Bool)

(assert (=> b!245119 m!262823))

(assert (=> b!245119 m!262823))

(declare-fun m!262825 () Bool)

(assert (=> b!245119 m!262825))

(assert (=> b!245121 m!262823))

(assert (=> b!245121 m!262823))

(assert (=> b!245121 m!262825))

(assert (=> b!244958 d!60089))

(declare-fun b!245164 () Bool)

(declare-fun e!159063 () Bool)

(declare-fun lt!122830 () ListLongMap!3705)

(declare-fun apply!229 (ListLongMap!3705 (_ BitVec 64)) V!8195)

(declare-fun get!2952 (ValueCell!2862 V!8195) V!8195)

(declare-fun dynLambda!567 (Int (_ BitVec 64)) V!8195)

(assert (=> b!245164 (= e!159063 (= (apply!229 lt!122830 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000)) (get!2952 (select (arr!5751 (_values!4516 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!567 (defaultEntry!4533 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6093 (_values!4516 thiss!1504))))))

(assert (=> b!245164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun b!245165 () Bool)

(declare-fun e!159065 () Bool)

(declare-fun e!159060 () Bool)

(assert (=> b!245165 (= e!159065 e!159060)))

(declare-fun res!120291 () Bool)

(declare-fun call!22881 () Bool)

(assert (=> b!245165 (= res!120291 call!22881)))

(assert (=> b!245165 (=> (not res!120291) (not e!159060))))

(declare-fun b!245166 () Bool)

(declare-fun res!120295 () Bool)

(declare-fun e!159067 () Bool)

(assert (=> b!245166 (=> (not res!120295) (not e!159067))))

(assert (=> b!245166 (= res!120295 e!159065)))

(declare-fun c!40918 () Bool)

(assert (=> b!245166 (= c!40918 (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!22876 () Bool)

(declare-fun call!22884 () ListLongMap!3705)

(declare-fun call!22882 () ListLongMap!3705)

(assert (=> bm!22876 (= call!22884 call!22882)))

(declare-fun b!245167 () Bool)

(declare-fun e!159068 () ListLongMap!3705)

(declare-fun e!159070 () ListLongMap!3705)

(assert (=> b!245167 (= e!159068 e!159070)))

(declare-fun c!40914 () Bool)

(assert (=> b!245167 (= c!40914 (and (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!245168 () Bool)

(assert (=> b!245168 (= e!159060 (= (apply!229 lt!122830 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4374 thiss!1504)))))

(declare-fun b!245169 () Bool)

(declare-fun e!159069 () Bool)

(declare-fun e!159062 () Bool)

(assert (=> b!245169 (= e!159069 e!159062)))

(declare-fun res!120297 () Bool)

(declare-fun call!22880 () Bool)

(assert (=> b!245169 (= res!120297 call!22880)))

(assert (=> b!245169 (=> (not res!120297) (not e!159062))))

(declare-fun bm!22877 () Bool)

(declare-fun call!22885 () ListLongMap!3705)

(declare-fun call!22883 () ListLongMap!3705)

(assert (=> bm!22877 (= call!22885 call!22883)))

(declare-fun bm!22878 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!548 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 32) Int) ListLongMap!3705)

(assert (=> bm!22878 (= call!22883 (getCurrentListMapNoExtraKeys!548 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(declare-fun bm!22879 () Bool)

(assert (=> bm!22879 (= call!22881 (contains!1769 lt!122830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245170 () Bool)

(declare-fun res!120289 () Bool)

(assert (=> b!245170 (=> (not res!120289) (not e!159067))))

(declare-fun e!159061 () Bool)

(assert (=> b!245170 (= res!120289 e!159061)))

(declare-fun res!120293 () Bool)

(assert (=> b!245170 (=> res!120293 e!159061)))

(declare-fun e!159071 () Bool)

(assert (=> b!245170 (= res!120293 (not e!159071))))

(declare-fun res!120290 () Bool)

(assert (=> b!245170 (=> (not res!120290) (not e!159071))))

(assert (=> b!245170 (= res!120290 (bvslt #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun b!245171 () Bool)

(declare-fun +!651 (ListLongMap!3705 tuple2!4778) ListLongMap!3705)

(assert (=> b!245171 (= e!159068 (+!651 call!22882 (tuple2!4779 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4374 thiss!1504))))))

(declare-fun b!245172 () Bool)

(declare-fun e!159072 () ListLongMap!3705)

(declare-fun call!22879 () ListLongMap!3705)

(assert (=> b!245172 (= e!159072 call!22879)))

(declare-fun bm!22880 () Bool)

(assert (=> bm!22880 (= call!22879 call!22885)))

(declare-fun b!245173 () Bool)

(declare-fun e!159066 () Bool)

(assert (=> b!245173 (= e!159066 (validKeyInArray!0 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!245174 () Bool)

(assert (=> b!245174 (= e!159062 (= (apply!229 lt!122830 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4374 thiss!1504)))))

(declare-fun b!245175 () Bool)

(declare-fun e!159064 () Unit!7561)

(declare-fun Unit!7567 () Unit!7561)

(assert (=> b!245175 (= e!159064 Unit!7567)))

(declare-fun d!60091 () Bool)

(assert (=> d!60091 e!159067))

(declare-fun res!120294 () Bool)

(assert (=> d!60091 (=> (not res!120294) (not e!159067))))

(assert (=> d!60091 (= res!120294 (or (bvsge #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))))))))

(declare-fun lt!122822 () ListLongMap!3705)

(assert (=> d!60091 (= lt!122830 lt!122822)))

(declare-fun lt!122832 () Unit!7561)

(assert (=> d!60091 (= lt!122832 e!159064)))

(declare-fun c!40915 () Bool)

(assert (=> d!60091 (= c!40915 e!159066)))

(declare-fun res!120292 () Bool)

(assert (=> d!60091 (=> (not res!120292) (not e!159066))))

(assert (=> d!60091 (= res!120292 (bvslt #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))))))

(assert (=> d!60091 (= lt!122822 e!159068)))

(declare-fun c!40917 () Bool)

(assert (=> d!60091 (= c!40917 (and (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60091 (validMask!0 (mask!10638 thiss!1504))))

(assert (=> d!60091 (= (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)) lt!122830)))

(declare-fun bm!22881 () Bool)

(assert (=> bm!22881 (= call!22882 (+!651 (ite c!40917 call!22883 (ite c!40914 call!22885 call!22879)) (ite (or c!40917 c!40914) (tuple2!4779 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4374 thiss!1504)) (tuple2!4779 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4374 thiss!1504)))))))

(declare-fun bm!22882 () Bool)

(assert (=> bm!22882 (= call!22880 (contains!1769 lt!122830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245176 () Bool)

(declare-fun c!40916 () Bool)

(assert (=> b!245176 (= c!40916 (and (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!245176 (= e!159070 e!159072)))

(declare-fun b!245177 () Bool)

(assert (=> b!245177 (= e!159071 (validKeyInArray!0 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!245178 () Bool)

(assert (=> b!245178 (= e!159069 (not call!22880))))

(declare-fun b!245179 () Bool)

(assert (=> b!245179 (= e!159067 e!159069)))

(declare-fun c!40919 () Bool)

(assert (=> b!245179 (= c!40919 (not (= (bvand (extraKeys!4270 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!245180 () Bool)

(assert (=> b!245180 (= e!159061 e!159063)))

(declare-fun res!120296 () Bool)

(assert (=> b!245180 (=> (not res!120296) (not e!159063))))

(assert (=> b!245180 (= res!120296 (contains!1769 lt!122830 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!245180 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6094 (_keys!6646 thiss!1504))))))

(declare-fun b!245181 () Bool)

(assert (=> b!245181 (= e!159070 call!22884)))

(declare-fun b!245182 () Bool)

(assert (=> b!245182 (= e!159072 call!22884)))

(declare-fun b!245183 () Bool)

(assert (=> b!245183 (= e!159065 (not call!22881))))

(declare-fun b!245184 () Bool)

(declare-fun lt!122823 () Unit!7561)

(assert (=> b!245184 (= e!159064 lt!122823)))

(declare-fun lt!122824 () ListLongMap!3705)

(assert (=> b!245184 (= lt!122824 (getCurrentListMapNoExtraKeys!548 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(declare-fun lt!122835 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122835 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122815 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122815 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122828 () Unit!7561)

(declare-fun addStillContains!205 (ListLongMap!3705 (_ BitVec 64) V!8195 (_ BitVec 64)) Unit!7561)

(assert (=> b!245184 (= lt!122828 (addStillContains!205 lt!122824 lt!122835 (zeroValue!4374 thiss!1504) lt!122815))))

(assert (=> b!245184 (contains!1769 (+!651 lt!122824 (tuple2!4779 lt!122835 (zeroValue!4374 thiss!1504))) lt!122815)))

(declare-fun lt!122818 () Unit!7561)

(assert (=> b!245184 (= lt!122818 lt!122828)))

(declare-fun lt!122814 () ListLongMap!3705)

(assert (=> b!245184 (= lt!122814 (getCurrentListMapNoExtraKeys!548 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(declare-fun lt!122816 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122816 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122821 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122821 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122829 () Unit!7561)

(declare-fun addApplyDifferent!205 (ListLongMap!3705 (_ BitVec 64) V!8195 (_ BitVec 64)) Unit!7561)

(assert (=> b!245184 (= lt!122829 (addApplyDifferent!205 lt!122814 lt!122816 (minValue!4374 thiss!1504) lt!122821))))

(assert (=> b!245184 (= (apply!229 (+!651 lt!122814 (tuple2!4779 lt!122816 (minValue!4374 thiss!1504))) lt!122821) (apply!229 lt!122814 lt!122821))))

(declare-fun lt!122826 () Unit!7561)

(assert (=> b!245184 (= lt!122826 lt!122829)))

(declare-fun lt!122820 () ListLongMap!3705)

(assert (=> b!245184 (= lt!122820 (getCurrentListMapNoExtraKeys!548 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(declare-fun lt!122833 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122831 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122831 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122825 () Unit!7561)

(assert (=> b!245184 (= lt!122825 (addApplyDifferent!205 lt!122820 lt!122833 (zeroValue!4374 thiss!1504) lt!122831))))

(assert (=> b!245184 (= (apply!229 (+!651 lt!122820 (tuple2!4779 lt!122833 (zeroValue!4374 thiss!1504))) lt!122831) (apply!229 lt!122820 lt!122831))))

(declare-fun lt!122827 () Unit!7561)

(assert (=> b!245184 (= lt!122827 lt!122825)))

(declare-fun lt!122834 () ListLongMap!3705)

(assert (=> b!245184 (= lt!122834 (getCurrentListMapNoExtraKeys!548 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(declare-fun lt!122819 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122819 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122817 () (_ BitVec 64))

(assert (=> b!245184 (= lt!122817 (select (arr!5752 (_keys!6646 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245184 (= lt!122823 (addApplyDifferent!205 lt!122834 lt!122819 (minValue!4374 thiss!1504) lt!122817))))

(assert (=> b!245184 (= (apply!229 (+!651 lt!122834 (tuple2!4779 lt!122819 (minValue!4374 thiss!1504))) lt!122817) (apply!229 lt!122834 lt!122817))))

(assert (= (and d!60091 c!40917) b!245171))

(assert (= (and d!60091 (not c!40917)) b!245167))

(assert (= (and b!245167 c!40914) b!245181))

(assert (= (and b!245167 (not c!40914)) b!245176))

(assert (= (and b!245176 c!40916) b!245182))

(assert (= (and b!245176 (not c!40916)) b!245172))

(assert (= (or b!245182 b!245172) bm!22880))

(assert (= (or b!245181 bm!22880) bm!22877))

(assert (= (or b!245181 b!245182) bm!22876))

(assert (= (or b!245171 bm!22877) bm!22878))

(assert (= (or b!245171 bm!22876) bm!22881))

(assert (= (and d!60091 res!120292) b!245173))

(assert (= (and d!60091 c!40915) b!245184))

(assert (= (and d!60091 (not c!40915)) b!245175))

(assert (= (and d!60091 res!120294) b!245170))

(assert (= (and b!245170 res!120290) b!245177))

(assert (= (and b!245170 (not res!120293)) b!245180))

(assert (= (and b!245180 res!120296) b!245164))

(assert (= (and b!245170 res!120289) b!245166))

(assert (= (and b!245166 c!40918) b!245165))

(assert (= (and b!245166 (not c!40918)) b!245183))

(assert (= (and b!245165 res!120291) b!245168))

(assert (= (or b!245165 b!245183) bm!22879))

(assert (= (and b!245166 res!120295) b!245179))

(assert (= (and b!245179 c!40919) b!245169))

(assert (= (and b!245179 (not c!40919)) b!245178))

(assert (= (and b!245169 res!120297) b!245174))

(assert (= (or b!245169 b!245178) bm!22882))

(declare-fun b_lambda!8049 () Bool)

(assert (=> (not b_lambda!8049) (not b!245164)))

(declare-fun t!8706 () Bool)

(declare-fun tb!2979 () Bool)

(assert (=> (and b!244943 (= (defaultEntry!4533 thiss!1504) (defaultEntry!4533 thiss!1504)) t!8706) tb!2979))

(declare-fun result!5243 () Bool)

(assert (=> tb!2979 (= result!5243 tp_is_empty!6411)))

(assert (=> b!245164 t!8706))

(declare-fun b_and!13557 () Bool)

(assert (= b_and!13553 (and (=> t!8706 result!5243) b_and!13557)))

(assert (=> b!245177 m!262777))

(assert (=> b!245177 m!262777))

(declare-fun m!262827 () Bool)

(assert (=> b!245177 m!262827))

(declare-fun m!262829 () Bool)

(assert (=> b!245174 m!262829))

(declare-fun m!262831 () Bool)

(assert (=> bm!22881 m!262831))

(declare-fun m!262833 () Bool)

(assert (=> b!245164 m!262833))

(declare-fun m!262835 () Bool)

(assert (=> b!245164 m!262835))

(declare-fun m!262837 () Bool)

(assert (=> b!245164 m!262837))

(assert (=> b!245164 m!262835))

(assert (=> b!245164 m!262777))

(assert (=> b!245164 m!262777))

(declare-fun m!262839 () Bool)

(assert (=> b!245164 m!262839))

(assert (=> b!245164 m!262833))

(assert (=> b!245173 m!262777))

(assert (=> b!245173 m!262777))

(assert (=> b!245173 m!262827))

(declare-fun m!262841 () Bool)

(assert (=> bm!22879 m!262841))

(declare-fun m!262843 () Bool)

(assert (=> bm!22878 m!262843))

(declare-fun m!262845 () Bool)

(assert (=> b!245171 m!262845))

(assert (=> b!245180 m!262777))

(assert (=> b!245180 m!262777))

(declare-fun m!262847 () Bool)

(assert (=> b!245180 m!262847))

(assert (=> d!60091 m!262787))

(declare-fun m!262849 () Bool)

(assert (=> bm!22882 m!262849))

(declare-fun m!262851 () Bool)

(assert (=> b!245184 m!262851))

(declare-fun m!262853 () Bool)

(assert (=> b!245184 m!262853))

(assert (=> b!245184 m!262777))

(declare-fun m!262855 () Bool)

(assert (=> b!245184 m!262855))

(declare-fun m!262857 () Bool)

(assert (=> b!245184 m!262857))

(assert (=> b!245184 m!262851))

(declare-fun m!262859 () Bool)

(assert (=> b!245184 m!262859))

(declare-fun m!262861 () Bool)

(assert (=> b!245184 m!262861))

(declare-fun m!262863 () Bool)

(assert (=> b!245184 m!262863))

(declare-fun m!262865 () Bool)

(assert (=> b!245184 m!262865))

(declare-fun m!262867 () Bool)

(assert (=> b!245184 m!262867))

(declare-fun m!262869 () Bool)

(assert (=> b!245184 m!262869))

(assert (=> b!245184 m!262843))

(assert (=> b!245184 m!262857))

(declare-fun m!262871 () Bool)

(assert (=> b!245184 m!262871))

(assert (=> b!245184 m!262863))

(assert (=> b!245184 m!262859))

(declare-fun m!262873 () Bool)

(assert (=> b!245184 m!262873))

(declare-fun m!262875 () Bool)

(assert (=> b!245184 m!262875))

(declare-fun m!262877 () Bool)

(assert (=> b!245184 m!262877))

(declare-fun m!262879 () Bool)

(assert (=> b!245184 m!262879))

(declare-fun m!262881 () Bool)

(assert (=> b!245168 m!262881))

(assert (=> b!244958 d!60091))

(declare-fun d!60093 () Bool)

(assert (=> d!60093 (contains!1769 (getCurrentListMap!1391 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)) key!932)))

(declare-fun lt!122838 () Unit!7561)

(declare-fun choose!1153 (array!12118 array!12116 (_ BitVec 32) (_ BitVec 32) V!8195 V!8195 (_ BitVec 64) (_ BitVec 32) Int) Unit!7561)

(assert (=> d!60093 (= lt!122838 (choose!1153 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)))))

(assert (=> d!60093 (validMask!0 (mask!10638 thiss!1504))))

(assert (=> d!60093 (= (lemmaArrayContainsKeyThenInListMap!173 (_keys!6646 thiss!1504) (_values!4516 thiss!1504) (mask!10638 thiss!1504) (extraKeys!4270 thiss!1504) (zeroValue!4374 thiss!1504) (minValue!4374 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4533 thiss!1504)) lt!122838)))

(declare-fun bs!8888 () Bool)

(assert (= bs!8888 d!60093))

(assert (=> bs!8888 m!262717))

(assert (=> bs!8888 m!262717))

(assert (=> bs!8888 m!262719))

(declare-fun m!262883 () Bool)

(assert (=> bs!8888 m!262883))

(assert (=> bs!8888 m!262787))

(assert (=> b!244959 d!60093))

(declare-fun mapNonEmpty!10879 () Bool)

(declare-fun mapRes!10879 () Bool)

(declare-fun tp!22885 () Bool)

(declare-fun e!159077 () Bool)

(assert (=> mapNonEmpty!10879 (= mapRes!10879 (and tp!22885 e!159077))))

(declare-fun mapKey!10879 () (_ BitVec 32))

(declare-fun mapRest!10879 () (Array (_ BitVec 32) ValueCell!2862))

(declare-fun mapValue!10879 () ValueCell!2862)

(assert (=> mapNonEmpty!10879 (= mapRest!10873 (store mapRest!10879 mapKey!10879 mapValue!10879))))

(declare-fun condMapEmpty!10879 () Bool)

(declare-fun mapDefault!10879 () ValueCell!2862)

(assert (=> mapNonEmpty!10873 (= condMapEmpty!10879 (= mapRest!10873 ((as const (Array (_ BitVec 32) ValueCell!2862)) mapDefault!10879)))))

(declare-fun e!159078 () Bool)

(assert (=> mapNonEmpty!10873 (= tp!22876 (and e!159078 mapRes!10879))))

(declare-fun b!245193 () Bool)

(assert (=> b!245193 (= e!159077 tp_is_empty!6411)))

(declare-fun b!245194 () Bool)

(assert (=> b!245194 (= e!159078 tp_is_empty!6411)))

(declare-fun mapIsEmpty!10879 () Bool)

(assert (=> mapIsEmpty!10879 mapRes!10879))

(assert (= (and mapNonEmpty!10873 condMapEmpty!10879) mapIsEmpty!10879))

(assert (= (and mapNonEmpty!10873 (not condMapEmpty!10879)) mapNonEmpty!10879))

(assert (= (and mapNonEmpty!10879 ((_ is ValueCellFull!2862) mapValue!10879)) b!245193))

(assert (= (and mapNonEmpty!10873 ((_ is ValueCellFull!2862) mapDefault!10879)) b!245194))

(declare-fun m!262885 () Bool)

(assert (=> mapNonEmpty!10879 m!262885))

(declare-fun b_lambda!8051 () Bool)

(assert (= b_lambda!8049 (or (and b!244943 b_free!6549) b_lambda!8051)))

(check-sat (not d!60075) (not b!245043) (not bm!22855) (not d!60093) (not d!60067) (not bm!22879) (not b!245119) (not b!245103) (not d!60085) (not b!245046) (not b!245174) (not b!245086) (not mapNonEmpty!10879) (not b!245121) (not bm!22882) (not b!245049) (not bm!22881) tp_is_empty!6411 (not b!245184) (not bm!22860) (not b!245180) (not d!60081) (not b!245055) (not b!245164) (not b_next!6549) (not b!245087) (not d!60089) (not b!245168) b_and!13557 (not d!60071) (not b!245044) (not b!245111) (not b!245177) (not b!245173) (not d!60091) (not b!245171) (not b_lambda!8051) (not b!245088) (not bm!22878) (not bm!22861))
(check-sat b_and!13557 (not b_next!6549))
