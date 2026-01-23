; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416456 () Bool)

(assert start!416456)

(declare-fun b!4324918 () Bool)

(declare-fun b_free!129035 () Bool)

(declare-fun b_next!129739 () Bool)

(assert (=> b!4324918 (= b_free!129035 (not b_next!129739))))

(declare-fun tp!1327395 () Bool)

(declare-fun b_and!340613 () Bool)

(assert (=> b!4324918 (= tp!1327395 b_and!340613)))

(declare-fun b!4324925 () Bool)

(declare-fun b_free!129037 () Bool)

(declare-fun b_next!129741 () Bool)

(assert (=> b!4324925 (= b_free!129037 (not b_next!129741))))

(declare-fun tp!1327399 () Bool)

(declare-fun b_and!340615 () Bool)

(assert (=> b!4324925 (= tp!1327399 b_and!340615)))

(declare-fun tp!1327396 () Bool)

(declare-fun tp!1327393 () Bool)

(declare-datatypes ((V!9871 0))(
  ( (V!9872 (val!15993 Int)) )
))
(declare-datatypes ((K!9669 0))(
  ( (K!9670 (val!15994 Int)) )
))
(declare-datatypes ((tuple2!47290 0))(
  ( (tuple2!47291 (_1!26933 K!9669) (_2!26933 V!9871)) )
))
(declare-datatypes ((List!48538 0))(
  ( (Nil!48414) (Cons!48414 (h!53880 tuple2!47290) (t!355436 List!48538)) )
))
(declare-datatypes ((array!17308 0))(
  ( (array!17309 (arr!7723 (Array (_ BitVec 32) (_ BitVec 64))) (size!35762 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4685 0))(
  ( (HashableExt!4684 (__x!30332 Int)) )
))
(declare-datatypes ((array!17310 0))(
  ( (array!17311 (arr!7724 (Array (_ BitVec 32) List!48538)) (size!35763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9538 0))(
  ( (LongMapFixedSize!9539 (defaultEntry!5174 Int) (mask!13416 (_ BitVec 32)) (extraKeys!5034 (_ BitVec 32)) (zeroValue!5046 List!48538) (minValue!5046 List!48538) (_size!9583 (_ BitVec 32)) (_keys!5095 array!17308) (_values!5070 array!17310) (_vacant!4832 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18885 0))(
  ( (Cell!18886 (v!42844 LongMapFixedSize!9538)) )
))
(declare-datatypes ((MutLongMap!4769 0))(
  ( (LongMap!4769 (underlying!9767 Cell!18885)) (MutLongMapExt!4768 (__x!30333 Int)) )
))
(declare-datatypes ((Cell!18887 0))(
  ( (Cell!18888 (v!42845 MutLongMap!4769)) )
))
(declare-datatypes ((MutableMap!4675 0))(
  ( (MutableMapExt!4674 (__x!30334 Int)) (HashMap!4675 (underlying!9768 Cell!18887) (hashF!6979 Hashable!4685) (_size!9584 (_ BitVec 32)) (defaultValue!4846 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4675)

(declare-fun e!2690932 () Bool)

(declare-fun e!2690936 () Bool)

(declare-fun array_inv!5563 (array!17308) Bool)

(declare-fun array_inv!5564 (array!17310) Bool)

(assert (=> b!4324918 (= e!2690936 (and tp!1327395 tp!1327393 tp!1327396 (array_inv!5563 (_keys!5095 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) (array_inv!5564 (_values!5070 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) e!2690932))))

(declare-fun b!4324919 () Bool)

(declare-fun e!2690924 () Bool)

(declare-fun e!2690926 () Bool)

(declare-fun lt!1542188 () MutLongMap!4769)

(get-info :version)

(assert (=> b!4324919 (= e!2690924 (and e!2690926 ((_ is LongMap!4769) lt!1542188)))))

(assert (=> b!4324919 (= lt!1542188 (v!42845 (underlying!9768 thiss!42308)))))

(declare-fun b!4324920 () Bool)

(declare-fun e!2690928 () List!48538)

(assert (=> b!4324920 (= e!2690928 Nil!48414)))

(declare-fun b!4324921 () Bool)

(declare-fun lt!1542189 () (_ BitVec 64))

(declare-fun apply!11165 (MutLongMap!4769 (_ BitVec 64)) List!48538)

(assert (=> b!4324921 (= e!2690928 (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542189))))

(declare-fun mapNonEmpty!21255 () Bool)

(declare-fun mapRes!21255 () Bool)

(declare-fun tp!1327398 () Bool)

(declare-fun tp!1327394 () Bool)

(assert (=> mapNonEmpty!21255 (= mapRes!21255 (and tp!1327398 tp!1327394))))

(declare-fun mapRest!21255 () (Array (_ BitVec 32) List!48538))

(declare-fun mapValue!21255 () List!48538)

(declare-fun mapKey!21255 () (_ BitVec 32))

(assert (=> mapNonEmpty!21255 (= (arr!7724 (_values!5070 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) (store mapRest!21255 mapKey!21255 mapValue!21255))))

(declare-fun b!4324923 () Bool)

(declare-fun e!2690927 () Bool)

(declare-datatypes ((tuple2!47292 0))(
  ( (tuple2!47293 (_1!26934 (_ BitVec 64)) (_2!26934 List!48538)) )
))
(declare-datatypes ((List!48539 0))(
  ( (Nil!48415) (Cons!48415 (h!53881 tuple2!47292) (t!355437 List!48539)) )
))
(declare-datatypes ((ListLongMap!1201 0))(
  ( (ListLongMap!1202 (toList!2584 List!48539)) )
))
(declare-fun lt!1542185 () ListLongMap!1201)

(declare-fun allKeysSameHashInMap!401 (ListLongMap!1201 Hashable!4685) Bool)

(assert (=> b!4324923 (= e!2690927 (allKeysSameHashInMap!401 lt!1542185 (hashF!6979 thiss!42308)))))

(declare-fun b!4324924 () Bool)

(declare-fun tp!1327397 () Bool)

(assert (=> b!4324924 (= e!2690932 (and tp!1327397 mapRes!21255))))

(declare-fun condMapEmpty!21255 () Bool)

(declare-fun mapDefault!21255 () List!48538)

(assert (=> b!4324924 (= condMapEmpty!21255 (= (arr!7724 (_values!5070 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48538)) mapDefault!21255)))))

(declare-fun e!2690934 () Bool)

(assert (=> b!4324925 (= e!2690934 (and e!2690924 tp!1327399))))

(declare-fun e!2690923 () Bool)

(declare-fun b!4324926 () Bool)

(declare-datatypes ((tuple2!47294 0))(
  ( (tuple2!47295 (_1!26935 Bool) (_2!26935 MutLongMap!4769)) )
))
(declare-fun lt!1542192 () tuple2!47294)

(declare-fun lt!1542190 () tuple2!47290)

(declare-datatypes ((ListMap!1861 0))(
  ( (ListMap!1862 (toList!2585 List!48538)) )
))
(declare-fun lt!1542186 () ListMap!1861)

(declare-fun eq!161 (ListMap!1861 ListMap!1861) Bool)

(declare-fun map!10448 (MutableMap!4675) ListMap!1861)

(declare-fun +!354 (ListMap!1861 tuple2!47290) ListMap!1861)

(assert (=> b!4324926 (= e!2690923 (not (eq!161 (map!10448 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308))) (+!354 lt!1542186 lt!1542190))))))

(declare-fun e!2690933 () Bool)

(assert (=> b!4324926 e!2690933))

(declare-fun res!1772438 () Bool)

(assert (=> b!4324926 (=> (not res!1772438) (not e!2690933))))

(declare-fun lt!1542195 () ListLongMap!1201)

(declare-fun lambda!134218 () Int)

(declare-fun forall!8833 (List!48539 Int) Bool)

(assert (=> b!4324926 (= res!1772438 (forall!8833 (toList!2584 lt!1542195) lambda!134218))))

(declare-fun map!10449 (MutLongMap!4769) ListLongMap!1201)

(assert (=> b!4324926 (= lt!1542195 (map!10449 (_2!26935 lt!1542192)))))

(declare-fun lt!1542184 () ListLongMap!1201)

(declare-fun extractMap!381 (List!48539) ListMap!1861)

(assert (=> b!4324926 (eq!161 (extractMap!381 (toList!2584 lt!1542185)) (+!354 (extractMap!381 (toList!2584 lt!1542184)) lt!1542190))))

(declare-datatypes ((Unit!67952 0))(
  ( (Unit!67953) )
))
(declare-fun lt!1542183 () Unit!67952)

(declare-fun lt!1542193 () List!48538)

(declare-fun v!9179 () V!9871)

(declare-fun key!2048 () K!9669)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!66 (ListLongMap!1201 (_ BitVec 64) List!48538 K!9669 V!9871 Hashable!4685) Unit!67952)

(assert (=> b!4324926 (= lt!1542183 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!66 lt!1542184 lt!1542189 lt!1542193 key!2048 v!9179 (hashF!6979 thiss!42308)))))

(assert (=> b!4324926 e!2690927))

(declare-fun res!1772434 () Bool)

(assert (=> b!4324926 (=> (not res!1772434) (not e!2690927))))

(assert (=> b!4324926 (= res!1772434 (forall!8833 (toList!2584 lt!1542185) lambda!134218))))

(declare-fun +!355 (ListLongMap!1201 tuple2!47292) ListLongMap!1201)

(assert (=> b!4324926 (= lt!1542185 (+!355 lt!1542184 (tuple2!47293 lt!1542189 lt!1542193)))))

(declare-fun lt!1542196 () Unit!67952)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!194 (ListLongMap!1201 (_ BitVec 64) List!48538 Hashable!4685) Unit!67952)

(assert (=> b!4324926 (= lt!1542196 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!194 lt!1542184 lt!1542189 lt!1542193 (hashF!6979 thiss!42308)))))

(declare-fun lt!1542197 () Unit!67952)

(declare-fun e!2690930 () Unit!67952)

(assert (=> b!4324926 (= lt!1542197 e!2690930)))

(declare-fun c!735788 () Bool)

(declare-fun lt!1542191 () List!48538)

(declare-fun isEmpty!28138 (List!48538) Bool)

(assert (=> b!4324926 (= c!735788 (not (isEmpty!28138 lt!1542191)))))

(declare-fun b!4324927 () Bool)

(declare-fun res!1772435 () Bool)

(declare-fun e!2690925 () Bool)

(assert (=> b!4324927 (=> (not res!1772435) (not e!2690925))))

(declare-fun valid!3783 (MutableMap!4675) Bool)

(assert (=> b!4324927 (= res!1772435 (valid!3783 thiss!42308))))

(declare-fun b!4324928 () Bool)

(declare-fun e!2690929 () Bool)

(assert (=> b!4324928 (= e!2690926 e!2690929)))

(declare-fun b!4324929 () Bool)

(assert (=> b!4324929 (= e!2690933 (allKeysSameHashInMap!401 lt!1542195 (hashF!6979 thiss!42308)))))

(declare-fun b!4324930 () Bool)

(declare-fun e!2690931 () Bool)

(assert (=> b!4324930 (= e!2690925 e!2690931)))

(declare-fun res!1772436 () Bool)

(assert (=> b!4324930 (=> (not res!1772436) (not e!2690931))))

(declare-fun contains!10483 (MutableMap!4675 K!9669) Bool)

(assert (=> b!4324930 (= res!1772436 (not (contains!10483 thiss!42308 key!2048)))))

(assert (=> b!4324930 (= lt!1542184 (map!10449 (v!42845 (underlying!9768 thiss!42308))))))

(assert (=> b!4324930 (= lt!1542186 (map!10448 thiss!42308))))

(declare-fun res!1772433 () Bool)

(assert (=> start!416456 (=> (not res!1772433) (not e!2690925))))

(assert (=> start!416456 (= res!1772433 ((_ is HashMap!4675) thiss!42308))))

(assert (=> start!416456 e!2690925))

(assert (=> start!416456 e!2690934))

(declare-fun tp_is_empty!24173 () Bool)

(assert (=> start!416456 tp_is_empty!24173))

(declare-fun tp_is_empty!24175 () Bool)

(assert (=> start!416456 tp_is_empty!24175))

(declare-fun b!4324922 () Bool)

(declare-fun Unit!67954 () Unit!67952)

(assert (=> b!4324922 (= e!2690930 Unit!67954)))

(declare-fun mapIsEmpty!21255 () Bool)

(assert (=> mapIsEmpty!21255 mapRes!21255))

(declare-fun b!4324931 () Bool)

(declare-fun lt!1542187 () Unit!67952)

(assert (=> b!4324931 (= e!2690930 lt!1542187)))

(declare-fun lt!1542194 () Unit!67952)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!244 (List!48539 (_ BitVec 64) List!48538 Hashable!4685) Unit!67952)

(assert (=> b!4324931 (= lt!1542194 (lemmaInLongMapAllKeySameHashThenForTuple!244 (toList!2584 lt!1542184) lt!1542189 lt!1542191 (hashF!6979 thiss!42308)))))

(declare-fun allKeysSameHash!259 (List!48538 (_ BitVec 64) Hashable!4685) Bool)

(assert (=> b!4324931 (allKeysSameHash!259 lt!1542191 lt!1542189 (hashF!6979 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!235 (List!48538 K!9669 (_ BitVec 64) Hashable!4685) Unit!67952)

(assert (=> b!4324931 (= lt!1542187 (lemmaRemovePairForKeyPreservesHash!235 lt!1542191 key!2048 lt!1542189 (hashF!6979 thiss!42308)))))

(declare-fun removePairForKey!282 (List!48538 K!9669) List!48538)

(assert (=> b!4324931 (allKeysSameHash!259 (removePairForKey!282 lt!1542191 key!2048) lt!1542189 (hashF!6979 thiss!42308))))

(declare-fun b!4324932 () Bool)

(assert (=> b!4324932 (= e!2690931 e!2690923)))

(declare-fun res!1772437 () Bool)

(assert (=> b!4324932 (=> (not res!1772437) (not e!2690923))))

(assert (=> b!4324932 (= res!1772437 (_1!26935 lt!1542192))))

(declare-fun update!547 (MutLongMap!4769 (_ BitVec 64) List!48538) tuple2!47294)

(assert (=> b!4324932 (= lt!1542192 (update!547 (v!42845 (underlying!9768 thiss!42308)) lt!1542189 lt!1542193))))

(assert (=> b!4324932 (= lt!1542193 (Cons!48414 lt!1542190 lt!1542191))))

(assert (=> b!4324932 (= lt!1542190 (tuple2!47291 key!2048 v!9179))))

(assert (=> b!4324932 (= lt!1542191 e!2690928)))

(declare-fun c!735789 () Bool)

(declare-fun contains!10484 (MutLongMap!4769 (_ BitVec 64)) Bool)

(assert (=> b!4324932 (= c!735789 (contains!10484 (v!42845 (underlying!9768 thiss!42308)) lt!1542189))))

(declare-fun hash!1219 (Hashable!4685 K!9669) (_ BitVec 64))

(assert (=> b!4324932 (= lt!1542189 (hash!1219 (hashF!6979 thiss!42308) key!2048))))

(declare-fun b!4324933 () Bool)

(assert (=> b!4324933 (= e!2690929 e!2690936)))

(assert (= (and start!416456 res!1772433) b!4324927))

(assert (= (and b!4324927 res!1772435) b!4324930))

(assert (= (and b!4324930 res!1772436) b!4324932))

(assert (= (and b!4324932 c!735789) b!4324921))

(assert (= (and b!4324932 (not c!735789)) b!4324920))

(assert (= (and b!4324932 res!1772437) b!4324926))

(assert (= (and b!4324926 c!735788) b!4324931))

(assert (= (and b!4324926 (not c!735788)) b!4324922))

(assert (= (and b!4324926 res!1772434) b!4324923))

(assert (= (and b!4324926 res!1772438) b!4324929))

(assert (= (and b!4324924 condMapEmpty!21255) mapIsEmpty!21255))

(assert (= (and b!4324924 (not condMapEmpty!21255)) mapNonEmpty!21255))

(assert (= b!4324918 b!4324924))

(assert (= b!4324933 b!4324918))

(assert (= b!4324928 b!4324933))

(assert (= (and b!4324919 ((_ is LongMap!4769) (v!42845 (underlying!9768 thiss!42308)))) b!4324928))

(assert (= b!4324925 b!4324919))

(assert (= (and start!416456 ((_ is HashMap!4675) thiss!42308)) b!4324925))

(declare-fun m!4919633 () Bool)

(assert (=> b!4324926 m!4919633))

(declare-fun m!4919635 () Bool)

(assert (=> b!4324926 m!4919635))

(declare-fun m!4919637 () Bool)

(assert (=> b!4324926 m!4919637))

(declare-fun m!4919639 () Bool)

(assert (=> b!4324926 m!4919639))

(declare-fun m!4919641 () Bool)

(assert (=> b!4324926 m!4919641))

(declare-fun m!4919643 () Bool)

(assert (=> b!4324926 m!4919643))

(declare-fun m!4919645 () Bool)

(assert (=> b!4324926 m!4919645))

(declare-fun m!4919647 () Bool)

(assert (=> b!4324926 m!4919647))

(declare-fun m!4919649 () Bool)

(assert (=> b!4324926 m!4919649))

(declare-fun m!4919651 () Bool)

(assert (=> b!4324926 m!4919651))

(declare-fun m!4919653 () Bool)

(assert (=> b!4324926 m!4919653))

(declare-fun m!4919655 () Bool)

(assert (=> b!4324926 m!4919655))

(declare-fun m!4919657 () Bool)

(assert (=> b!4324926 m!4919657))

(declare-fun m!4919659 () Bool)

(assert (=> b!4324926 m!4919659))

(assert (=> b!4324926 m!4919657))

(assert (=> b!4324926 m!4919653))

(assert (=> b!4324926 m!4919649))

(assert (=> b!4324926 m!4919647))

(assert (=> b!4324926 m!4919655))

(declare-fun m!4919661 () Bool)

(assert (=> b!4324929 m!4919661))

(declare-fun m!4919663 () Bool)

(assert (=> b!4324931 m!4919663))

(declare-fun m!4919665 () Bool)

(assert (=> b!4324931 m!4919665))

(declare-fun m!4919667 () Bool)

(assert (=> b!4324931 m!4919667))

(declare-fun m!4919669 () Bool)

(assert (=> b!4324931 m!4919669))

(assert (=> b!4324931 m!4919667))

(declare-fun m!4919671 () Bool)

(assert (=> b!4324931 m!4919671))

(declare-fun m!4919673 () Bool)

(assert (=> b!4324918 m!4919673))

(declare-fun m!4919675 () Bool)

(assert (=> b!4324918 m!4919675))

(declare-fun m!4919677 () Bool)

(assert (=> b!4324923 m!4919677))

(declare-fun m!4919679 () Bool)

(assert (=> mapNonEmpty!21255 m!4919679))

(declare-fun m!4919681 () Bool)

(assert (=> b!4324932 m!4919681))

(declare-fun m!4919683 () Bool)

(assert (=> b!4324932 m!4919683))

(declare-fun m!4919685 () Bool)

(assert (=> b!4324932 m!4919685))

(declare-fun m!4919687 () Bool)

(assert (=> b!4324921 m!4919687))

(declare-fun m!4919689 () Bool)

(assert (=> b!4324927 m!4919689))

(declare-fun m!4919691 () Bool)

(assert (=> b!4324930 m!4919691))

(declare-fun m!4919693 () Bool)

(assert (=> b!4324930 m!4919693))

(declare-fun m!4919695 () Bool)

(assert (=> b!4324930 m!4919695))

(check-sat (not b_next!129741) tp_is_empty!24175 tp_is_empty!24173 (not b!4324931) (not b!4324932) (not b!4324921) b_and!340613 (not b!4324927) (not b!4324924) (not b!4324918) (not b!4324926) (not mapNonEmpty!21255) b_and!340615 (not b!4324930) (not b_next!129739) (not b!4324929) (not b!4324923))
(check-sat b_and!340613 b_and!340615 (not b_next!129741) (not b_next!129739))
(get-model)

(declare-fun bs!607249 () Bool)

(declare-fun d!1271673 () Bool)

(assert (= bs!607249 (and d!1271673 b!4324926)))

(declare-fun lambda!134223 () Int)

(assert (=> bs!607249 (= lambda!134223 lambda!134218)))

(declare-fun e!2690939 () Bool)

(assert (=> d!1271673 e!2690939))

(declare-fun res!1772441 () Bool)

(assert (=> d!1271673 (=> (not res!1772441) (not e!2690939))))

(declare-fun lt!1542203 () ListLongMap!1201)

(assert (=> d!1271673 (= res!1772441 (forall!8833 (toList!2584 lt!1542203) lambda!134223))))

(assert (=> d!1271673 (= lt!1542203 (+!355 lt!1542184 (tuple2!47293 lt!1542189 lt!1542193)))))

(declare-fun lt!1542202 () Unit!67952)

(declare-fun choose!26444 (ListLongMap!1201 (_ BitVec 64) List!48538 Hashable!4685) Unit!67952)

(assert (=> d!1271673 (= lt!1542202 (choose!26444 lt!1542184 lt!1542189 lt!1542193 (hashF!6979 thiss!42308)))))

(assert (=> d!1271673 (forall!8833 (toList!2584 lt!1542184) lambda!134223)))

(assert (=> d!1271673 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!194 lt!1542184 lt!1542189 lt!1542193 (hashF!6979 thiss!42308)) lt!1542202)))

(declare-fun b!4324936 () Bool)

(assert (=> b!4324936 (= e!2690939 (allKeysSameHashInMap!401 lt!1542203 (hashF!6979 thiss!42308)))))

(assert (= (and d!1271673 res!1772441) b!4324936))

(declare-fun m!4919697 () Bool)

(assert (=> d!1271673 m!4919697))

(assert (=> d!1271673 m!4919645))

(declare-fun m!4919699 () Bool)

(assert (=> d!1271673 m!4919699))

(declare-fun m!4919701 () Bool)

(assert (=> d!1271673 m!4919701))

(declare-fun m!4919703 () Bool)

(assert (=> b!4324936 m!4919703))

(assert (=> b!4324926 d!1271673))

(declare-fun d!1271675 () Bool)

(declare-fun e!2690942 () Bool)

(assert (=> d!1271675 e!2690942))

(declare-fun res!1772447 () Bool)

(assert (=> d!1271675 (=> (not res!1772447) (not e!2690942))))

(declare-fun lt!1542213 () ListMap!1861)

(declare-fun contains!10485 (ListMap!1861 K!9669) Bool)

(assert (=> d!1271675 (= res!1772447 (contains!10485 lt!1542213 (_1!26933 lt!1542190)))))

(declare-fun lt!1542214 () List!48538)

(assert (=> d!1271675 (= lt!1542213 (ListMap!1862 lt!1542214))))

(declare-fun lt!1542215 () Unit!67952)

(declare-fun lt!1542212 () Unit!67952)

(assert (=> d!1271675 (= lt!1542215 lt!1542212)))

(declare-datatypes ((Option!10318 0))(
  ( (None!10317) (Some!10317 (v!42850 V!9871)) )
))
(declare-fun getValueByKey!309 (List!48538 K!9669) Option!10318)

(assert (=> d!1271675 (= (getValueByKey!309 lt!1542214 (_1!26933 lt!1542190)) (Some!10317 (_2!26933 lt!1542190)))))

(declare-fun lemmaContainsTupThenGetReturnValue!104 (List!48538 K!9669 V!9871) Unit!67952)

(assert (=> d!1271675 (= lt!1542212 (lemmaContainsTupThenGetReturnValue!104 lt!1542214 (_1!26933 lt!1542190) (_2!26933 lt!1542190)))))

(declare-fun insertNoDuplicatedKeys!51 (List!48538 K!9669 V!9871) List!48538)

(assert (=> d!1271675 (= lt!1542214 (insertNoDuplicatedKeys!51 (toList!2585 lt!1542186) (_1!26933 lt!1542190) (_2!26933 lt!1542190)))))

(assert (=> d!1271675 (= (+!354 lt!1542186 lt!1542190) lt!1542213)))

(declare-fun b!4324941 () Bool)

(declare-fun res!1772446 () Bool)

(assert (=> b!4324941 (=> (not res!1772446) (not e!2690942))))

(assert (=> b!4324941 (= res!1772446 (= (getValueByKey!309 (toList!2585 lt!1542213) (_1!26933 lt!1542190)) (Some!10317 (_2!26933 lt!1542190))))))

(declare-fun b!4324942 () Bool)

(declare-fun contains!10486 (List!48538 tuple2!47290) Bool)

(assert (=> b!4324942 (= e!2690942 (contains!10486 (toList!2585 lt!1542213) lt!1542190))))

(assert (= (and d!1271675 res!1772447) b!4324941))

(assert (= (and b!4324941 res!1772446) b!4324942))

(declare-fun m!4919705 () Bool)

(assert (=> d!1271675 m!4919705))

(declare-fun m!4919707 () Bool)

(assert (=> d!1271675 m!4919707))

(declare-fun m!4919709 () Bool)

(assert (=> d!1271675 m!4919709))

(declare-fun m!4919711 () Bool)

(assert (=> d!1271675 m!4919711))

(declare-fun m!4919713 () Bool)

(assert (=> b!4324941 m!4919713))

(declare-fun m!4919715 () Bool)

(assert (=> b!4324942 m!4919715))

(assert (=> b!4324926 d!1271675))

(declare-fun d!1271677 () Bool)

(declare-fun res!1772452 () Bool)

(declare-fun e!2690947 () Bool)

(assert (=> d!1271677 (=> res!1772452 e!2690947)))

(assert (=> d!1271677 (= res!1772452 ((_ is Nil!48415) (toList!2584 lt!1542185)))))

(assert (=> d!1271677 (= (forall!8833 (toList!2584 lt!1542185) lambda!134218) e!2690947)))

(declare-fun b!4324947 () Bool)

(declare-fun e!2690948 () Bool)

(assert (=> b!4324947 (= e!2690947 e!2690948)))

(declare-fun res!1772453 () Bool)

(assert (=> b!4324947 (=> (not res!1772453) (not e!2690948))))

(declare-fun dynLambda!20520 (Int tuple2!47292) Bool)

(assert (=> b!4324947 (= res!1772453 (dynLambda!20520 lambda!134218 (h!53881 (toList!2584 lt!1542185))))))

(declare-fun b!4324948 () Bool)

(assert (=> b!4324948 (= e!2690948 (forall!8833 (t!355437 (toList!2584 lt!1542185)) lambda!134218))))

(assert (= (and d!1271677 (not res!1772452)) b!4324947))

(assert (= (and b!4324947 res!1772453) b!4324948))

(declare-fun b_lambda!127515 () Bool)

(assert (=> (not b_lambda!127515) (not b!4324947)))

(declare-fun m!4919717 () Bool)

(assert (=> b!4324947 m!4919717))

(declare-fun m!4919719 () Bool)

(assert (=> b!4324948 m!4919719))

(assert (=> b!4324926 d!1271677))

(declare-fun d!1271679 () Bool)

(declare-fun lt!1542218 () ListMap!1861)

(declare-fun invariantList!607 (List!48538) Bool)

(assert (=> d!1271679 (invariantList!607 (toList!2585 lt!1542218))))

(assert (=> d!1271679 (= lt!1542218 (extractMap!381 (toList!2584 (map!10449 (v!42845 (underlying!9768 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308))))))))))

(assert (=> d!1271679 (valid!3783 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308)))))

(assert (=> d!1271679 (= (map!10448 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308))) lt!1542218)))

(declare-fun bs!607250 () Bool)

(assert (= bs!607250 d!1271679))

(declare-fun m!4919721 () Bool)

(assert (=> bs!607250 m!4919721))

(declare-fun m!4919723 () Bool)

(assert (=> bs!607250 m!4919723))

(declare-fun m!4919725 () Bool)

(assert (=> bs!607250 m!4919725))

(declare-fun m!4919727 () Bool)

(assert (=> bs!607250 m!4919727))

(assert (=> b!4324926 d!1271679))

(declare-fun d!1271681 () Bool)

(declare-fun res!1772454 () Bool)

(declare-fun e!2690949 () Bool)

(assert (=> d!1271681 (=> res!1772454 e!2690949)))

(assert (=> d!1271681 (= res!1772454 ((_ is Nil!48415) (toList!2584 lt!1542195)))))

(assert (=> d!1271681 (= (forall!8833 (toList!2584 lt!1542195) lambda!134218) e!2690949)))

(declare-fun b!4324949 () Bool)

(declare-fun e!2690950 () Bool)

(assert (=> b!4324949 (= e!2690949 e!2690950)))

(declare-fun res!1772455 () Bool)

(assert (=> b!4324949 (=> (not res!1772455) (not e!2690950))))

(assert (=> b!4324949 (= res!1772455 (dynLambda!20520 lambda!134218 (h!53881 (toList!2584 lt!1542195))))))

(declare-fun b!4324950 () Bool)

(assert (=> b!4324950 (= e!2690950 (forall!8833 (t!355437 (toList!2584 lt!1542195)) lambda!134218))))

(assert (= (and d!1271681 (not res!1772454)) b!4324949))

(assert (= (and b!4324949 res!1772455) b!4324950))

(declare-fun b_lambda!127517 () Bool)

(assert (=> (not b_lambda!127517) (not b!4324949)))

(declare-fun m!4919729 () Bool)

(assert (=> b!4324949 m!4919729))

(declare-fun m!4919731 () Bool)

(assert (=> b!4324950 m!4919731))

(assert (=> b!4324926 d!1271681))

(declare-fun d!1271683 () Bool)

(declare-fun e!2690951 () Bool)

(assert (=> d!1271683 e!2690951))

(declare-fun res!1772457 () Bool)

(assert (=> d!1271683 (=> (not res!1772457) (not e!2690951))))

(declare-fun lt!1542220 () ListMap!1861)

(assert (=> d!1271683 (= res!1772457 (contains!10485 lt!1542220 (_1!26933 lt!1542190)))))

(declare-fun lt!1542221 () List!48538)

(assert (=> d!1271683 (= lt!1542220 (ListMap!1862 lt!1542221))))

(declare-fun lt!1542222 () Unit!67952)

(declare-fun lt!1542219 () Unit!67952)

(assert (=> d!1271683 (= lt!1542222 lt!1542219)))

(assert (=> d!1271683 (= (getValueByKey!309 lt!1542221 (_1!26933 lt!1542190)) (Some!10317 (_2!26933 lt!1542190)))))

(assert (=> d!1271683 (= lt!1542219 (lemmaContainsTupThenGetReturnValue!104 lt!1542221 (_1!26933 lt!1542190) (_2!26933 lt!1542190)))))

(assert (=> d!1271683 (= lt!1542221 (insertNoDuplicatedKeys!51 (toList!2585 (extractMap!381 (toList!2584 lt!1542184))) (_1!26933 lt!1542190) (_2!26933 lt!1542190)))))

(assert (=> d!1271683 (= (+!354 (extractMap!381 (toList!2584 lt!1542184)) lt!1542190) lt!1542220)))

(declare-fun b!4324951 () Bool)

(declare-fun res!1772456 () Bool)

(assert (=> b!4324951 (=> (not res!1772456) (not e!2690951))))

(assert (=> b!4324951 (= res!1772456 (= (getValueByKey!309 (toList!2585 lt!1542220) (_1!26933 lt!1542190)) (Some!10317 (_2!26933 lt!1542190))))))

(declare-fun b!4324952 () Bool)

(assert (=> b!4324952 (= e!2690951 (contains!10486 (toList!2585 lt!1542220) lt!1542190))))

(assert (= (and d!1271683 res!1772457) b!4324951))

(assert (= (and b!4324951 res!1772456) b!4324952))

(declare-fun m!4919733 () Bool)

(assert (=> d!1271683 m!4919733))

(declare-fun m!4919735 () Bool)

(assert (=> d!1271683 m!4919735))

(declare-fun m!4919737 () Bool)

(assert (=> d!1271683 m!4919737))

(declare-fun m!4919739 () Bool)

(assert (=> d!1271683 m!4919739))

(declare-fun m!4919741 () Bool)

(assert (=> b!4324951 m!4919741))

(declare-fun m!4919743 () Bool)

(assert (=> b!4324952 m!4919743))

(assert (=> b!4324926 d!1271683))

(declare-fun d!1271685 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7577 (List!48538) (InoxSet tuple2!47290))

(assert (=> d!1271685 (= (eq!161 (extractMap!381 (toList!2584 lt!1542185)) (+!354 (extractMap!381 (toList!2584 lt!1542184)) lt!1542190)) (= (content!7577 (toList!2585 (extractMap!381 (toList!2584 lt!1542185)))) (content!7577 (toList!2585 (+!354 (extractMap!381 (toList!2584 lt!1542184)) lt!1542190)))))))

(declare-fun bs!607251 () Bool)

(assert (= bs!607251 d!1271685))

(declare-fun m!4919745 () Bool)

(assert (=> bs!607251 m!4919745))

(declare-fun m!4919747 () Bool)

(assert (=> bs!607251 m!4919747))

(assert (=> b!4324926 d!1271685))

(declare-fun bs!607252 () Bool)

(declare-fun d!1271687 () Bool)

(assert (= bs!607252 (and d!1271687 b!4324926)))

(declare-fun lambda!134226 () Int)

(assert (=> bs!607252 (= lambda!134226 lambda!134218)))

(declare-fun bs!607253 () Bool)

(assert (= bs!607253 (and d!1271687 d!1271673)))

(assert (=> bs!607253 (= lambda!134226 lambda!134223)))

(declare-fun lt!1542225 () ListMap!1861)

(assert (=> d!1271687 (invariantList!607 (toList!2585 lt!1542225))))

(declare-fun e!2690954 () ListMap!1861)

(assert (=> d!1271687 (= lt!1542225 e!2690954)))

(declare-fun c!735792 () Bool)

(assert (=> d!1271687 (= c!735792 ((_ is Cons!48415) (toList!2584 lt!1542184)))))

(assert (=> d!1271687 (forall!8833 (toList!2584 lt!1542184) lambda!134226)))

(assert (=> d!1271687 (= (extractMap!381 (toList!2584 lt!1542184)) lt!1542225)))

(declare-fun b!4324957 () Bool)

(declare-fun addToMapMapFromBucket!57 (List!48538 ListMap!1861) ListMap!1861)

(assert (=> b!4324957 (= e!2690954 (addToMapMapFromBucket!57 (_2!26934 (h!53881 (toList!2584 lt!1542184))) (extractMap!381 (t!355437 (toList!2584 lt!1542184)))))))

(declare-fun b!4324958 () Bool)

(assert (=> b!4324958 (= e!2690954 (ListMap!1862 Nil!48414))))

(assert (= (and d!1271687 c!735792) b!4324957))

(assert (= (and d!1271687 (not c!735792)) b!4324958))

(declare-fun m!4919749 () Bool)

(assert (=> d!1271687 m!4919749))

(declare-fun m!4919751 () Bool)

(assert (=> d!1271687 m!4919751))

(declare-fun m!4919753 () Bool)

(assert (=> b!4324957 m!4919753))

(assert (=> b!4324957 m!4919753))

(declare-fun m!4919755 () Bool)

(assert (=> b!4324957 m!4919755))

(assert (=> b!4324926 d!1271687))

(declare-fun d!1271689 () Bool)

(declare-fun map!10450 (LongMapFixedSize!9538) ListLongMap!1201)

(assert (=> d!1271689 (= (map!10449 (_2!26935 lt!1542192)) (map!10450 (v!42844 (underlying!9767 (_2!26935 lt!1542192)))))))

(declare-fun bs!607254 () Bool)

(assert (= bs!607254 d!1271689))

(declare-fun m!4919757 () Bool)

(assert (=> bs!607254 m!4919757))

(assert (=> b!4324926 d!1271689))

(declare-fun bs!607255 () Bool)

(declare-fun d!1271691 () Bool)

(assert (= bs!607255 (and d!1271691 b!4324926)))

(declare-fun lambda!134227 () Int)

(assert (=> bs!607255 (= lambda!134227 lambda!134218)))

(declare-fun bs!607256 () Bool)

(assert (= bs!607256 (and d!1271691 d!1271673)))

(assert (=> bs!607256 (= lambda!134227 lambda!134223)))

(declare-fun bs!607257 () Bool)

(assert (= bs!607257 (and d!1271691 d!1271687)))

(assert (=> bs!607257 (= lambda!134227 lambda!134226)))

(declare-fun lt!1542226 () ListMap!1861)

(assert (=> d!1271691 (invariantList!607 (toList!2585 lt!1542226))))

(declare-fun e!2690955 () ListMap!1861)

(assert (=> d!1271691 (= lt!1542226 e!2690955)))

(declare-fun c!735793 () Bool)

(assert (=> d!1271691 (= c!735793 ((_ is Cons!48415) (toList!2584 lt!1542185)))))

(assert (=> d!1271691 (forall!8833 (toList!2584 lt!1542185) lambda!134227)))

(assert (=> d!1271691 (= (extractMap!381 (toList!2584 lt!1542185)) lt!1542226)))

(declare-fun b!4324959 () Bool)

(assert (=> b!4324959 (= e!2690955 (addToMapMapFromBucket!57 (_2!26934 (h!53881 (toList!2584 lt!1542185))) (extractMap!381 (t!355437 (toList!2584 lt!1542185)))))))

(declare-fun b!4324960 () Bool)

(assert (=> b!4324960 (= e!2690955 (ListMap!1862 Nil!48414))))

(assert (= (and d!1271691 c!735793) b!4324959))

(assert (= (and d!1271691 (not c!735793)) b!4324960))

(declare-fun m!4919759 () Bool)

(assert (=> d!1271691 m!4919759))

(declare-fun m!4919761 () Bool)

(assert (=> d!1271691 m!4919761))

(declare-fun m!4919763 () Bool)

(assert (=> b!4324959 m!4919763))

(assert (=> b!4324959 m!4919763))

(declare-fun m!4919765 () Bool)

(assert (=> b!4324959 m!4919765))

(assert (=> b!4324926 d!1271691))

(declare-fun bs!607258 () Bool)

(declare-fun d!1271693 () Bool)

(assert (= bs!607258 (and d!1271693 b!4324926)))

(declare-fun lambda!134230 () Int)

(assert (=> bs!607258 (= lambda!134230 lambda!134218)))

(declare-fun bs!607259 () Bool)

(assert (= bs!607259 (and d!1271693 d!1271673)))

(assert (=> bs!607259 (= lambda!134230 lambda!134223)))

(declare-fun bs!607260 () Bool)

(assert (= bs!607260 (and d!1271693 d!1271687)))

(assert (=> bs!607260 (= lambda!134230 lambda!134226)))

(declare-fun bs!607261 () Bool)

(assert (= bs!607261 (and d!1271693 d!1271691)))

(assert (=> bs!607261 (= lambda!134230 lambda!134227)))

(assert (=> d!1271693 (eq!161 (extractMap!381 (toList!2584 (+!355 lt!1542184 (tuple2!47293 lt!1542189 lt!1542193)))) (+!354 (extractMap!381 (toList!2584 lt!1542184)) (tuple2!47291 key!2048 v!9179)))))

(declare-fun lt!1542229 () Unit!67952)

(declare-fun choose!26445 (ListLongMap!1201 (_ BitVec 64) List!48538 K!9669 V!9871 Hashable!4685) Unit!67952)

(assert (=> d!1271693 (= lt!1542229 (choose!26445 lt!1542184 lt!1542189 lt!1542193 key!2048 v!9179 (hashF!6979 thiss!42308)))))

(assert (=> d!1271693 (forall!8833 (toList!2584 lt!1542184) lambda!134230)))

(assert (=> d!1271693 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!66 lt!1542184 lt!1542189 lt!1542193 key!2048 v!9179 (hashF!6979 thiss!42308)) lt!1542229)))

(declare-fun bs!607262 () Bool)

(assert (= bs!607262 d!1271693))

(assert (=> bs!607262 m!4919653))

(declare-fun m!4919767 () Bool)

(assert (=> bs!607262 m!4919767))

(assert (=> bs!607262 m!4919653))

(declare-fun m!4919769 () Bool)

(assert (=> bs!607262 m!4919769))

(declare-fun m!4919771 () Bool)

(assert (=> bs!607262 m!4919771))

(assert (=> bs!607262 m!4919645))

(assert (=> bs!607262 m!4919771))

(assert (=> bs!607262 m!4919769))

(declare-fun m!4919773 () Bool)

(assert (=> bs!607262 m!4919773))

(declare-fun m!4919775 () Bool)

(assert (=> bs!607262 m!4919775))

(assert (=> b!4324926 d!1271693))

(declare-fun d!1271695 () Bool)

(assert (=> d!1271695 (= (isEmpty!28138 lt!1542191) ((_ is Nil!48414) lt!1542191))))

(assert (=> b!4324926 d!1271695))

(declare-fun d!1271697 () Bool)

(assert (=> d!1271697 (= (eq!161 (map!10448 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308))) (+!354 lt!1542186 lt!1542190)) (= (content!7577 (toList!2585 (map!10448 (HashMap!4675 (Cell!18888 (_2!26935 lt!1542192)) (hashF!6979 thiss!42308) (_size!9584 thiss!42308) (defaultValue!4846 thiss!42308))))) (content!7577 (toList!2585 (+!354 lt!1542186 lt!1542190)))))))

(declare-fun bs!607263 () Bool)

(assert (= bs!607263 d!1271697))

(declare-fun m!4919777 () Bool)

(assert (=> bs!607263 m!4919777))

(declare-fun m!4919779 () Bool)

(assert (=> bs!607263 m!4919779))

(assert (=> b!4324926 d!1271697))

(declare-fun d!1271699 () Bool)

(declare-fun e!2690958 () Bool)

(assert (=> d!1271699 e!2690958))

(declare-fun res!1772463 () Bool)

(assert (=> d!1271699 (=> (not res!1772463) (not e!2690958))))

(declare-fun lt!1542241 () ListLongMap!1201)

(declare-fun contains!10487 (ListLongMap!1201 (_ BitVec 64)) Bool)

(assert (=> d!1271699 (= res!1772463 (contains!10487 lt!1542241 (_1!26934 (tuple2!47293 lt!1542189 lt!1542193))))))

(declare-fun lt!1542238 () List!48539)

(assert (=> d!1271699 (= lt!1542241 (ListLongMap!1202 lt!1542238))))

(declare-fun lt!1542240 () Unit!67952)

(declare-fun lt!1542239 () Unit!67952)

(assert (=> d!1271699 (= lt!1542240 lt!1542239)))

(declare-datatypes ((Option!10319 0))(
  ( (None!10318) (Some!10318 (v!42851 List!48538)) )
))
(declare-fun getValueByKey!310 (List!48539 (_ BitVec 64)) Option!10319)

(assert (=> d!1271699 (= (getValueByKey!310 lt!1542238 (_1!26934 (tuple2!47293 lt!1542189 lt!1542193))) (Some!10318 (_2!26934 (tuple2!47293 lt!1542189 lt!1542193))))))

(declare-fun lemmaContainsTupThenGetReturnValue!105 (List!48539 (_ BitVec 64) List!48538) Unit!67952)

(assert (=> d!1271699 (= lt!1542239 (lemmaContainsTupThenGetReturnValue!105 lt!1542238 (_1!26934 (tuple2!47293 lt!1542189 lt!1542193)) (_2!26934 (tuple2!47293 lt!1542189 lt!1542193))))))

(declare-fun insertStrictlySorted!62 (List!48539 (_ BitVec 64) List!48538) List!48539)

(assert (=> d!1271699 (= lt!1542238 (insertStrictlySorted!62 (toList!2584 lt!1542184) (_1!26934 (tuple2!47293 lt!1542189 lt!1542193)) (_2!26934 (tuple2!47293 lt!1542189 lt!1542193))))))

(assert (=> d!1271699 (= (+!355 lt!1542184 (tuple2!47293 lt!1542189 lt!1542193)) lt!1542241)))

(declare-fun b!4324965 () Bool)

(declare-fun res!1772462 () Bool)

(assert (=> b!4324965 (=> (not res!1772462) (not e!2690958))))

(assert (=> b!4324965 (= res!1772462 (= (getValueByKey!310 (toList!2584 lt!1542241) (_1!26934 (tuple2!47293 lt!1542189 lt!1542193))) (Some!10318 (_2!26934 (tuple2!47293 lt!1542189 lt!1542193)))))))

(declare-fun b!4324966 () Bool)

(declare-fun contains!10488 (List!48539 tuple2!47292) Bool)

(assert (=> b!4324966 (= e!2690958 (contains!10488 (toList!2584 lt!1542241) (tuple2!47293 lt!1542189 lt!1542193)))))

(assert (= (and d!1271699 res!1772463) b!4324965))

(assert (= (and b!4324965 res!1772462) b!4324966))

(declare-fun m!4919781 () Bool)

(assert (=> d!1271699 m!4919781))

(declare-fun m!4919783 () Bool)

(assert (=> d!1271699 m!4919783))

(declare-fun m!4919785 () Bool)

(assert (=> d!1271699 m!4919785))

(declare-fun m!4919787 () Bool)

(assert (=> d!1271699 m!4919787))

(declare-fun m!4919789 () Bool)

(assert (=> b!4324965 m!4919789))

(declare-fun m!4919791 () Bool)

(assert (=> b!4324966 m!4919791))

(assert (=> b!4324926 d!1271699))

(declare-fun bs!607264 () Bool)

(declare-fun b!4324971 () Bool)

(assert (= bs!607264 (and b!4324971 b!4324926)))

(declare-fun lambda!134233 () Int)

(assert (=> bs!607264 (= lambda!134233 lambda!134218)))

(declare-fun bs!607265 () Bool)

(assert (= bs!607265 (and b!4324971 d!1271673)))

(assert (=> bs!607265 (= lambda!134233 lambda!134223)))

(declare-fun bs!607266 () Bool)

(assert (= bs!607266 (and b!4324971 d!1271687)))

(assert (=> bs!607266 (= lambda!134233 lambda!134226)))

(declare-fun bs!607267 () Bool)

(assert (= bs!607267 (and b!4324971 d!1271693)))

(assert (=> bs!607267 (= lambda!134233 lambda!134230)))

(declare-fun bs!607268 () Bool)

(assert (= bs!607268 (and b!4324971 d!1271691)))

(assert (=> bs!607268 (= lambda!134233 lambda!134227)))

(declare-fun d!1271701 () Bool)

(declare-fun res!1772468 () Bool)

(declare-fun e!2690961 () Bool)

(assert (=> d!1271701 (=> (not res!1772468) (not e!2690961))))

(declare-fun valid!3784 (MutLongMap!4769) Bool)

(assert (=> d!1271701 (= res!1772468 (valid!3784 (v!42845 (underlying!9768 thiss!42308))))))

(assert (=> d!1271701 (= (valid!3783 thiss!42308) e!2690961)))

(declare-fun res!1772469 () Bool)

(assert (=> b!4324971 (=> (not res!1772469) (not e!2690961))))

(assert (=> b!4324971 (= res!1772469 (forall!8833 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))) lambda!134233))))

(declare-fun b!4324972 () Bool)

(assert (=> b!4324972 (= e!2690961 (allKeysSameHashInMap!401 (map!10449 (v!42845 (underlying!9768 thiss!42308))) (hashF!6979 thiss!42308)))))

(assert (= (and d!1271701 res!1772468) b!4324971))

(assert (= (and b!4324971 res!1772469) b!4324972))

(declare-fun m!4919793 () Bool)

(assert (=> d!1271701 m!4919793))

(assert (=> b!4324971 m!4919693))

(declare-fun m!4919795 () Bool)

(assert (=> b!4324971 m!4919795))

(assert (=> b!4324972 m!4919693))

(assert (=> b!4324972 m!4919693))

(declare-fun m!4919797 () Bool)

(assert (=> b!4324972 m!4919797))

(assert (=> b!4324927 d!1271701))

(declare-fun b!4324982 () Bool)

(declare-fun e!2690967 () List!48538)

(declare-fun e!2690966 () List!48538)

(assert (=> b!4324982 (= e!2690967 e!2690966)))

(declare-fun c!735798 () Bool)

(assert (=> b!4324982 (= c!735798 ((_ is Cons!48414) lt!1542191))))

(declare-fun b!4324983 () Bool)

(assert (=> b!4324983 (= e!2690966 (Cons!48414 (h!53880 lt!1542191) (removePairForKey!282 (t!355436 lt!1542191) key!2048)))))

(declare-fun b!4324984 () Bool)

(assert (=> b!4324984 (= e!2690966 Nil!48414)))

(declare-fun b!4324981 () Bool)

(assert (=> b!4324981 (= e!2690967 (t!355436 lt!1542191))))

(declare-fun d!1271703 () Bool)

(declare-fun lt!1542244 () List!48538)

(declare-fun containsKey!416 (List!48538 K!9669) Bool)

(assert (=> d!1271703 (not (containsKey!416 lt!1542244 key!2048))))

(assert (=> d!1271703 (= lt!1542244 e!2690967)))

(declare-fun c!735799 () Bool)

(assert (=> d!1271703 (= c!735799 (and ((_ is Cons!48414) lt!1542191) (= (_1!26933 (h!53880 lt!1542191)) key!2048)))))

(declare-fun noDuplicateKeys!268 (List!48538) Bool)

(assert (=> d!1271703 (noDuplicateKeys!268 lt!1542191)))

(assert (=> d!1271703 (= (removePairForKey!282 lt!1542191 key!2048) lt!1542244)))

(assert (= (and d!1271703 c!735799) b!4324981))

(assert (= (and d!1271703 (not c!735799)) b!4324982))

(assert (= (and b!4324982 c!735798) b!4324983))

(assert (= (and b!4324982 (not c!735798)) b!4324984))

(declare-fun m!4919799 () Bool)

(assert (=> b!4324983 m!4919799))

(declare-fun m!4919801 () Bool)

(assert (=> d!1271703 m!4919801))

(declare-fun m!4919803 () Bool)

(assert (=> d!1271703 m!4919803))

(assert (=> b!4324931 d!1271703))

(declare-fun bs!607269 () Bool)

(declare-fun d!1271705 () Bool)

(assert (= bs!607269 (and d!1271705 b!4324926)))

(declare-fun lambda!134236 () Int)

(assert (=> bs!607269 (not (= lambda!134236 lambda!134218))))

(declare-fun bs!607270 () Bool)

(assert (= bs!607270 (and d!1271705 d!1271673)))

(assert (=> bs!607270 (not (= lambda!134236 lambda!134223))))

(declare-fun bs!607271 () Bool)

(assert (= bs!607271 (and d!1271705 d!1271687)))

(assert (=> bs!607271 (not (= lambda!134236 lambda!134226))))

(declare-fun bs!607272 () Bool)

(assert (= bs!607272 (and d!1271705 d!1271693)))

(assert (=> bs!607272 (not (= lambda!134236 lambda!134230))))

(declare-fun bs!607273 () Bool)

(assert (= bs!607273 (and d!1271705 b!4324971)))

(assert (=> bs!607273 (not (= lambda!134236 lambda!134233))))

(declare-fun bs!607274 () Bool)

(assert (= bs!607274 (and d!1271705 d!1271691)))

(assert (=> bs!607274 (not (= lambda!134236 lambda!134227))))

(assert (=> d!1271705 true))

(assert (=> d!1271705 (allKeysSameHash!259 lt!1542191 lt!1542189 (hashF!6979 thiss!42308))))

(declare-fun lt!1542247 () Unit!67952)

(declare-fun choose!26446 (List!48539 (_ BitVec 64) List!48538 Hashable!4685) Unit!67952)

(assert (=> d!1271705 (= lt!1542247 (choose!26446 (toList!2584 lt!1542184) lt!1542189 lt!1542191 (hashF!6979 thiss!42308)))))

(assert (=> d!1271705 (forall!8833 (toList!2584 lt!1542184) lambda!134236)))

(assert (=> d!1271705 (= (lemmaInLongMapAllKeySameHashThenForTuple!244 (toList!2584 lt!1542184) lt!1542189 lt!1542191 (hashF!6979 thiss!42308)) lt!1542247)))

(declare-fun bs!607275 () Bool)

(assert (= bs!607275 d!1271705))

(assert (=> bs!607275 m!4919663))

(declare-fun m!4919805 () Bool)

(assert (=> bs!607275 m!4919805))

(declare-fun m!4919807 () Bool)

(assert (=> bs!607275 m!4919807))

(assert (=> b!4324931 d!1271705))

(declare-fun d!1271707 () Bool)

(assert (=> d!1271707 true))

(assert (=> d!1271707 true))

(declare-fun lambda!134239 () Int)

(declare-fun forall!8834 (List!48538 Int) Bool)

(assert (=> d!1271707 (= (allKeysSameHash!259 (removePairForKey!282 lt!1542191 key!2048) lt!1542189 (hashF!6979 thiss!42308)) (forall!8834 (removePairForKey!282 lt!1542191 key!2048) lambda!134239))))

(declare-fun bs!607276 () Bool)

(assert (= bs!607276 d!1271707))

(assert (=> bs!607276 m!4919667))

(declare-fun m!4919809 () Bool)

(assert (=> bs!607276 m!4919809))

(assert (=> b!4324931 d!1271707))

(declare-fun d!1271709 () Bool)

(assert (=> d!1271709 (allKeysSameHash!259 (removePairForKey!282 lt!1542191 key!2048) lt!1542189 (hashF!6979 thiss!42308))))

(declare-fun lt!1542250 () Unit!67952)

(declare-fun choose!26447 (List!48538 K!9669 (_ BitVec 64) Hashable!4685) Unit!67952)

(assert (=> d!1271709 (= lt!1542250 (choose!26447 lt!1542191 key!2048 lt!1542189 (hashF!6979 thiss!42308)))))

(assert (=> d!1271709 (noDuplicateKeys!268 lt!1542191)))

(assert (=> d!1271709 (= (lemmaRemovePairForKeyPreservesHash!235 lt!1542191 key!2048 lt!1542189 (hashF!6979 thiss!42308)) lt!1542250)))

(declare-fun bs!607277 () Bool)

(assert (= bs!607277 d!1271709))

(assert (=> bs!607277 m!4919667))

(assert (=> bs!607277 m!4919667))

(assert (=> bs!607277 m!4919671))

(declare-fun m!4919811 () Bool)

(assert (=> bs!607277 m!4919811))

(assert (=> bs!607277 m!4919803))

(assert (=> b!4324931 d!1271709))

(declare-fun bs!607278 () Bool)

(declare-fun d!1271711 () Bool)

(assert (= bs!607278 (and d!1271711 d!1271707)))

(declare-fun lambda!134240 () Int)

(assert (=> bs!607278 (= lambda!134240 lambda!134239)))

(assert (=> d!1271711 true))

(assert (=> d!1271711 true))

(assert (=> d!1271711 (= (allKeysSameHash!259 lt!1542191 lt!1542189 (hashF!6979 thiss!42308)) (forall!8834 lt!1542191 lambda!134240))))

(declare-fun bs!607279 () Bool)

(assert (= bs!607279 d!1271711))

(declare-fun m!4919813 () Bool)

(assert (=> bs!607279 m!4919813))

(assert (=> b!4324931 d!1271711))

(declare-fun bs!607280 () Bool)

(declare-fun b!4325013 () Bool)

(assert (= bs!607280 (and b!4325013 b!4324926)))

(declare-fun lambda!134243 () Int)

(assert (=> bs!607280 (= lambda!134243 lambda!134218)))

(declare-fun bs!607281 () Bool)

(assert (= bs!607281 (and b!4325013 d!1271705)))

(assert (=> bs!607281 (not (= lambda!134243 lambda!134236))))

(declare-fun bs!607282 () Bool)

(assert (= bs!607282 (and b!4325013 d!1271673)))

(assert (=> bs!607282 (= lambda!134243 lambda!134223)))

(declare-fun bs!607283 () Bool)

(assert (= bs!607283 (and b!4325013 d!1271687)))

(assert (=> bs!607283 (= lambda!134243 lambda!134226)))

(declare-fun bs!607284 () Bool)

(assert (= bs!607284 (and b!4325013 d!1271693)))

(assert (=> bs!607284 (= lambda!134243 lambda!134230)))

(declare-fun bs!607285 () Bool)

(assert (= bs!607285 (and b!4325013 b!4324971)))

(assert (=> bs!607285 (= lambda!134243 lambda!134233)))

(declare-fun bs!607286 () Bool)

(assert (= bs!607286 (and b!4325013 d!1271691)))

(assert (=> bs!607286 (= lambda!134243 lambda!134227)))

(declare-fun bm!300085 () Bool)

(declare-fun call!300090 () Bool)

(declare-datatypes ((Option!10320 0))(
  ( (None!10319) (Some!10319 (v!42852 tuple2!47290)) )
))
(declare-fun call!300091 () Option!10320)

(declare-fun isDefined!7617 (Option!10320) Bool)

(assert (=> bm!300085 (= call!300090 (isDefined!7617 call!300091))))

(declare-fun lt!1542292 () (_ BitVec 64))

(declare-fun e!2690987 () Unit!67952)

(declare-fun forallContained!1542 (List!48539 Int tuple2!47292) Unit!67952)

(assert (=> b!4325013 (= e!2690987 (forallContained!1542 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))) lambda!134243 (tuple2!47293 lt!1542292 (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542292))))))

(declare-fun c!735808 () Bool)

(assert (=> b!4325013 (= c!735808 (not (contains!10488 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))) (tuple2!47293 lt!1542292 (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542292)))))))

(declare-fun lt!1542309 () Unit!67952)

(declare-fun e!2690982 () Unit!67952)

(assert (=> b!4325013 (= lt!1542309 e!2690982)))

(declare-fun b!4325014 () Bool)

(assert (=> b!4325014 false))

(declare-fun lt!1542296 () Unit!67952)

(declare-fun lt!1542305 () Unit!67952)

(assert (=> b!4325014 (= lt!1542296 lt!1542305)))

(declare-fun lt!1542307 () ListLongMap!1201)

(assert (=> b!4325014 (contains!10485 (extractMap!381 (toList!2584 lt!1542307)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!168 (ListLongMap!1201 K!9669 Hashable!4685) Unit!67952)

(assert (=> b!4325014 (= lt!1542305 (lemmaInLongMapThenInGenericMap!168 lt!1542307 key!2048 (hashF!6979 thiss!42308)))))

(declare-fun call!300094 () ListLongMap!1201)

(assert (=> b!4325014 (= lt!1542307 call!300094)))

(declare-fun e!2690988 () Unit!67952)

(declare-fun Unit!67955 () Unit!67952)

(assert (=> b!4325014 (= e!2690988 Unit!67955)))

(declare-fun bm!300086 () Bool)

(declare-fun call!300092 () (_ BitVec 64))

(assert (=> bm!300086 (= call!300092 (hash!1219 (hashF!6979 thiss!42308) key!2048))))

(declare-fun b!4325015 () Bool)

(declare-fun Unit!67956 () Unit!67952)

(assert (=> b!4325015 (= e!2690988 Unit!67956)))

(declare-fun d!1271713 () Bool)

(declare-fun lt!1542310 () Bool)

(assert (=> d!1271713 (= lt!1542310 (contains!10485 (map!10448 thiss!42308) key!2048))))

(declare-fun e!2690983 () Bool)

(assert (=> d!1271713 (= lt!1542310 e!2690983)))

(declare-fun res!1772477 () Bool)

(assert (=> d!1271713 (=> (not res!1772477) (not e!2690983))))

(assert (=> d!1271713 (= res!1772477 (contains!10484 (v!42845 (underlying!9768 thiss!42308)) lt!1542292))))

(declare-fun lt!1542306 () Unit!67952)

(declare-fun e!2690986 () Unit!67952)

(assert (=> d!1271713 (= lt!1542306 e!2690986)))

(declare-fun c!735809 () Bool)

(assert (=> d!1271713 (= c!735809 (contains!10485 (extractMap!381 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308))))) key!2048))))

(declare-fun lt!1542294 () Unit!67952)

(assert (=> d!1271713 (= lt!1542294 e!2690987)))

(declare-fun c!735810 () Bool)

(assert (=> d!1271713 (= c!735810 (contains!10484 (v!42845 (underlying!9768 thiss!42308)) lt!1542292))))

(assert (=> d!1271713 (= lt!1542292 (hash!1219 (hashF!6979 thiss!42308) key!2048))))

(assert (=> d!1271713 (valid!3783 thiss!42308)))

(assert (=> d!1271713 (= (contains!10483 thiss!42308 key!2048) lt!1542310)))

(declare-fun bm!300087 () Bool)

(assert (=> bm!300087 (= call!300094 (map!10449 (v!42845 (underlying!9768 thiss!42308))))))

(declare-fun lt!1542293 () ListLongMap!1201)

(declare-fun call!300093 () Bool)

(declare-fun bm!300088 () Bool)

(assert (=> bm!300088 (= call!300093 (contains!10487 (ite c!735809 lt!1542293 call!300094) call!300092))))

(declare-fun bm!300089 () Bool)

(declare-fun call!300095 () List!48538)

(declare-fun apply!11166 (ListLongMap!1201 (_ BitVec 64)) List!48538)

(assert (=> bm!300089 (= call!300095 (apply!11166 (ite c!735809 lt!1542293 call!300094) call!300092))))

(declare-fun b!4325016 () Bool)

(assert (=> b!4325016 (= e!2690986 e!2690988)))

(declare-fun res!1772478 () Bool)

(assert (=> b!4325016 (= res!1772478 call!300093)))

(declare-fun e!2690985 () Bool)

(assert (=> b!4325016 (=> (not res!1772478) (not e!2690985))))

(declare-fun c!735811 () Bool)

(assert (=> b!4325016 (= c!735811 e!2690985)))

(declare-fun b!4325017 () Bool)

(declare-fun Unit!67957 () Unit!67952)

(assert (=> b!4325017 (= e!2690982 Unit!67957)))

(declare-fun b!4325018 () Bool)

(declare-fun e!2690984 () Bool)

(assert (=> b!4325018 (= e!2690984 call!300090)))

(declare-fun b!4325019 () Bool)

(declare-fun getPair!168 (List!48538 K!9669) Option!10320)

(assert (=> b!4325019 (= e!2690983 (isDefined!7617 (getPair!168 (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542292) key!2048)))))

(declare-fun b!4325020 () Bool)

(declare-fun Unit!67958 () Unit!67952)

(assert (=> b!4325020 (= e!2690987 Unit!67958)))

(declare-fun b!4325021 () Bool)

(declare-fun lt!1542304 () Unit!67952)

(assert (=> b!4325021 (= e!2690986 lt!1542304)))

(assert (=> b!4325021 (= lt!1542293 call!300094)))

(declare-fun lemmaInGenericMapThenInLongMap!168 (ListLongMap!1201 K!9669 Hashable!4685) Unit!67952)

(assert (=> b!4325021 (= lt!1542304 (lemmaInGenericMapThenInLongMap!168 lt!1542293 key!2048 (hashF!6979 thiss!42308)))))

(declare-fun res!1772476 () Bool)

(assert (=> b!4325021 (= res!1772476 call!300093)))

(assert (=> b!4325021 (=> (not res!1772476) (not e!2690984))))

(assert (=> b!4325021 e!2690984))

(declare-fun b!4325022 () Bool)

(assert (=> b!4325022 false))

(declare-fun lt!1542299 () Unit!67952)

(declare-fun lt!1542308 () Unit!67952)

(assert (=> b!4325022 (= lt!1542299 lt!1542308)))

(declare-fun lt!1542291 () List!48539)

(declare-fun lt!1542295 () List!48538)

(assert (=> b!4325022 (contains!10488 lt!1542291 (tuple2!47293 lt!1542292 lt!1542295))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!180 (List!48539 (_ BitVec 64) List!48538) Unit!67952)

(assert (=> b!4325022 (= lt!1542308 (lemmaGetValueByKeyImpliesContainsTuple!180 lt!1542291 lt!1542292 lt!1542295))))

(assert (=> b!4325022 (= lt!1542295 (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542292))))

(assert (=> b!4325022 (= lt!1542291 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))))))

(declare-fun lt!1542298 () Unit!67952)

(declare-fun lt!1542300 () Unit!67952)

(assert (=> b!4325022 (= lt!1542298 lt!1542300)))

(declare-fun lt!1542303 () List!48539)

(declare-fun isDefined!7618 (Option!10319) Bool)

(assert (=> b!4325022 (isDefined!7618 (getValueByKey!310 lt!1542303 lt!1542292))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!226 (List!48539 (_ BitVec 64)) Unit!67952)

(assert (=> b!4325022 (= lt!1542300 (lemmaContainsKeyImpliesGetValueByKeyDefined!226 lt!1542303 lt!1542292))))

(assert (=> b!4325022 (= lt!1542303 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))))))

(declare-fun lt!1542297 () Unit!67952)

(declare-fun lt!1542301 () Unit!67952)

(assert (=> b!4325022 (= lt!1542297 lt!1542301)))

(declare-fun lt!1542302 () List!48539)

(declare-fun containsKey!417 (List!48539 (_ BitVec 64)) Bool)

(assert (=> b!4325022 (containsKey!417 lt!1542302 lt!1542292)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!169 (List!48539 (_ BitVec 64)) Unit!67952)

(assert (=> b!4325022 (= lt!1542301 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!169 lt!1542302 lt!1542292))))

(assert (=> b!4325022 (= lt!1542302 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))))))

(declare-fun Unit!67959 () Unit!67952)

(assert (=> b!4325022 (= e!2690982 Unit!67959)))

(declare-fun bm!300090 () Bool)

(assert (=> bm!300090 (= call!300091 (getPair!168 call!300095 key!2048))))

(declare-fun b!4325023 () Bool)

(assert (=> b!4325023 (= e!2690985 call!300090)))

(assert (= (and d!1271713 c!735810) b!4325013))

(assert (= (and d!1271713 (not c!735810)) b!4325020))

(assert (= (and b!4325013 c!735808) b!4325022))

(assert (= (and b!4325013 (not c!735808)) b!4325017))

(assert (= (and d!1271713 c!735809) b!4325021))

(assert (= (and d!1271713 (not c!735809)) b!4325016))

(assert (= (and b!4325021 res!1772476) b!4325018))

(assert (= (and b!4325016 res!1772478) b!4325023))

(assert (= (and b!4325016 c!735811) b!4325014))

(assert (= (and b!4325016 (not c!735811)) b!4325015))

(assert (= (or b!4325021 b!4325016 b!4325023 b!4325014) bm!300087))

(assert (= (or b!4325021 b!4325018 b!4325016 b!4325023) bm!300086))

(assert (= (or b!4325021 b!4325016) bm!300088))

(assert (= (or b!4325018 b!4325023) bm!300089))

(assert (= (or b!4325018 b!4325023) bm!300090))

(assert (= (or b!4325018 b!4325023) bm!300085))

(assert (= (and d!1271713 res!1772477) b!4325019))

(assert (=> b!4325013 m!4919693))

(declare-fun m!4919815 () Bool)

(assert (=> b!4325013 m!4919815))

(declare-fun m!4919817 () Bool)

(assert (=> b!4325013 m!4919817))

(declare-fun m!4919819 () Bool)

(assert (=> b!4325013 m!4919819))

(assert (=> b!4325019 m!4919815))

(assert (=> b!4325019 m!4919815))

(declare-fun m!4919821 () Bool)

(assert (=> b!4325019 m!4919821))

(assert (=> b!4325019 m!4919821))

(declare-fun m!4919823 () Bool)

(assert (=> b!4325019 m!4919823))

(declare-fun m!4919825 () Bool)

(assert (=> bm!300089 m!4919825))

(assert (=> bm!300087 m!4919693))

(declare-fun m!4919827 () Bool)

(assert (=> b!4325014 m!4919827))

(assert (=> b!4325014 m!4919827))

(declare-fun m!4919829 () Bool)

(assert (=> b!4325014 m!4919829))

(declare-fun m!4919831 () Bool)

(assert (=> b!4325014 m!4919831))

(assert (=> d!1271713 m!4919695))

(declare-fun m!4919833 () Bool)

(assert (=> d!1271713 m!4919833))

(assert (=> d!1271713 m!4919693))

(assert (=> d!1271713 m!4919689))

(declare-fun m!4919835 () Bool)

(assert (=> d!1271713 m!4919835))

(assert (=> d!1271713 m!4919685))

(assert (=> d!1271713 m!4919695))

(assert (=> d!1271713 m!4919835))

(declare-fun m!4919837 () Bool)

(assert (=> d!1271713 m!4919837))

(declare-fun m!4919839 () Bool)

(assert (=> d!1271713 m!4919839))

(declare-fun m!4919841 () Bool)

(assert (=> bm!300088 m!4919841))

(declare-fun m!4919843 () Bool)

(assert (=> bm!300090 m!4919843))

(declare-fun m!4919845 () Bool)

(assert (=> b!4325022 m!4919845))

(declare-fun m!4919847 () Bool)

(assert (=> b!4325022 m!4919847))

(assert (=> b!4325022 m!4919845))

(declare-fun m!4919849 () Bool)

(assert (=> b!4325022 m!4919849))

(declare-fun m!4919851 () Bool)

(assert (=> b!4325022 m!4919851))

(declare-fun m!4919853 () Bool)

(assert (=> b!4325022 m!4919853))

(assert (=> b!4325022 m!4919693))

(assert (=> b!4325022 m!4919815))

(declare-fun m!4919855 () Bool)

(assert (=> b!4325022 m!4919855))

(declare-fun m!4919857 () Bool)

(assert (=> b!4325022 m!4919857))

(declare-fun m!4919859 () Bool)

(assert (=> b!4325021 m!4919859))

(assert (=> bm!300086 m!4919685))

(declare-fun m!4919861 () Bool)

(assert (=> bm!300085 m!4919861))

(assert (=> b!4324930 d!1271713))

(declare-fun d!1271715 () Bool)

(assert (=> d!1271715 (= (map!10449 (v!42845 (underlying!9768 thiss!42308))) (map!10450 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308))))))))

(declare-fun bs!607287 () Bool)

(assert (= bs!607287 d!1271715))

(declare-fun m!4919863 () Bool)

(assert (=> bs!607287 m!4919863))

(assert (=> b!4324930 d!1271715))

(declare-fun d!1271717 () Bool)

(declare-fun lt!1542311 () ListMap!1861)

(assert (=> d!1271717 (invariantList!607 (toList!2585 lt!1542311))))

(assert (=> d!1271717 (= lt!1542311 (extractMap!381 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308))))))))

(assert (=> d!1271717 (valid!3783 thiss!42308)))

(assert (=> d!1271717 (= (map!10448 thiss!42308) lt!1542311)))

(declare-fun bs!607288 () Bool)

(assert (= bs!607288 d!1271717))

(declare-fun m!4919865 () Bool)

(assert (=> bs!607288 m!4919865))

(assert (=> bs!607288 m!4919693))

(assert (=> bs!607288 m!4919835))

(assert (=> bs!607288 m!4919689))

(assert (=> b!4324930 d!1271717))

(declare-fun d!1271719 () Bool)

(declare-fun e!2690991 () Bool)

(assert (=> d!1271719 e!2690991))

(declare-fun c!735814 () Bool)

(assert (=> d!1271719 (= c!735814 (contains!10484 (v!42845 (underlying!9768 thiss!42308)) lt!1542189))))

(declare-fun lt!1542314 () List!48538)

(declare-fun apply!11167 (LongMapFixedSize!9538 (_ BitVec 64)) List!48538)

(assert (=> d!1271719 (= lt!1542314 (apply!11167 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))) lt!1542189))))

(assert (=> d!1271719 (valid!3784 (v!42845 (underlying!9768 thiss!42308)))))

(assert (=> d!1271719 (= (apply!11165 (v!42845 (underlying!9768 thiss!42308)) lt!1542189) lt!1542314)))

(declare-fun b!4325028 () Bool)

(declare-fun get!15691 (Option!10319) List!48538)

(assert (=> b!4325028 (= e!2690991 (= lt!1542314 (get!15691 (getValueByKey!310 (toList!2584 (map!10449 (v!42845 (underlying!9768 thiss!42308)))) lt!1542189))))))

(declare-fun b!4325029 () Bool)

(declare-fun dynLambda!20521 (Int (_ BitVec 64)) List!48538)

(assert (=> b!4325029 (= e!2690991 (= lt!1542314 (dynLambda!20521 (defaultEntry!5174 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308))))) lt!1542189)))))

(assert (=> b!4325029 ((_ is LongMap!4769) (v!42845 (underlying!9768 thiss!42308)))))

(assert (= (and d!1271719 c!735814) b!4325028))

(assert (= (and d!1271719 (not c!735814)) b!4325029))

(declare-fun b_lambda!127519 () Bool)

(assert (=> (not b_lambda!127519) (not b!4325029)))

(declare-fun t!355439 () Bool)

(declare-fun tb!257383 () Bool)

(assert (=> (and b!4324918 (= (defaultEntry!5174 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308))))) (defaultEntry!5174 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) t!355439) tb!257383))

(assert (=> b!4325029 t!355439))

(declare-fun result!314920 () Bool)

(declare-fun b_and!340617 () Bool)

(assert (= b_and!340613 (and (=> t!355439 result!314920) b_and!340617)))

(assert (=> d!1271719 m!4919683))

(declare-fun m!4919867 () Bool)

(assert (=> d!1271719 m!4919867))

(assert (=> d!1271719 m!4919793))

(assert (=> b!4325028 m!4919693))

(declare-fun m!4919869 () Bool)

(assert (=> b!4325028 m!4919869))

(assert (=> b!4325028 m!4919869))

(declare-fun m!4919871 () Bool)

(assert (=> b!4325028 m!4919871))

(declare-fun m!4919873 () Bool)

(assert (=> b!4325029 m!4919873))

(assert (=> b!4324921 d!1271719))

(declare-fun bs!607289 () Bool)

(declare-fun d!1271721 () Bool)

(assert (= bs!607289 (and d!1271721 b!4324926)))

(declare-fun lambda!134246 () Int)

(assert (=> bs!607289 (not (= lambda!134246 lambda!134218))))

(declare-fun bs!607290 () Bool)

(assert (= bs!607290 (and d!1271721 d!1271705)))

(assert (=> bs!607290 (= lambda!134246 lambda!134236)))

(declare-fun bs!607291 () Bool)

(assert (= bs!607291 (and d!1271721 d!1271673)))

(assert (=> bs!607291 (not (= lambda!134246 lambda!134223))))

(declare-fun bs!607292 () Bool)

(assert (= bs!607292 (and d!1271721 d!1271687)))

(assert (=> bs!607292 (not (= lambda!134246 lambda!134226))))

(declare-fun bs!607293 () Bool)

(assert (= bs!607293 (and d!1271721 d!1271693)))

(assert (=> bs!607293 (not (= lambda!134246 lambda!134230))))

(declare-fun bs!607294 () Bool)

(assert (= bs!607294 (and d!1271721 b!4324971)))

(assert (=> bs!607294 (not (= lambda!134246 lambda!134233))))

(declare-fun bs!607295 () Bool)

(assert (= bs!607295 (and d!1271721 d!1271691)))

(assert (=> bs!607295 (not (= lambda!134246 lambda!134227))))

(declare-fun bs!607296 () Bool)

(assert (= bs!607296 (and d!1271721 b!4325013)))

(assert (=> bs!607296 (not (= lambda!134246 lambda!134243))))

(assert (=> d!1271721 true))

(assert (=> d!1271721 (= (allKeysSameHashInMap!401 lt!1542195 (hashF!6979 thiss!42308)) (forall!8833 (toList!2584 lt!1542195) lambda!134246))))

(declare-fun bs!607297 () Bool)

(assert (= bs!607297 d!1271721))

(declare-fun m!4919875 () Bool)

(assert (=> bs!607297 m!4919875))

(assert (=> b!4324929 d!1271721))

(declare-fun b!4325048 () Bool)

(declare-fun e!2691006 () tuple2!47294)

(declare-datatypes ((tuple2!47296 0))(
  ( (tuple2!47297 (_1!26936 Bool) (_2!26936 LongMapFixedSize!9538)) )
))
(declare-fun lt!1542325 () tuple2!47296)

(assert (=> b!4325048 (= e!2691006 (tuple2!47295 (_1!26936 lt!1542325) (LongMap!4769 (Cell!18886 (_2!26936 lt!1542325)))))))

(declare-fun lt!1542324 () tuple2!47294)

(declare-fun update!548 (LongMapFixedSize!9538 (_ BitVec 64) List!48538) tuple2!47296)

(assert (=> b!4325048 (= lt!1542325 (update!548 (v!42844 (underlying!9767 (_2!26935 lt!1542324))) lt!1542189 lt!1542193))))

(declare-fun bm!300095 () Bool)

(declare-fun call!300100 () ListLongMap!1201)

(assert (=> bm!300095 (= call!300100 (map!10449 (v!42845 (underlying!9768 thiss!42308))))))

(declare-fun b!4325049 () Bool)

(declare-fun e!2691005 () Bool)

(declare-fun e!2691003 () Bool)

(assert (=> b!4325049 (= e!2691005 e!2691003)))

(declare-fun res!1772487 () Bool)

(declare-fun call!300101 () ListLongMap!1201)

(assert (=> b!4325049 (= res!1772487 (contains!10487 call!300101 lt!1542189))))

(assert (=> b!4325049 (=> (not res!1772487) (not e!2691003))))

(declare-fun b!4325050 () Bool)

(declare-fun res!1772486 () Bool)

(declare-fun e!2691002 () Bool)

(assert (=> b!4325050 (=> (not res!1772486) (not e!2691002))))

(declare-fun lt!1542326 () tuple2!47294)

(assert (=> b!4325050 (= res!1772486 (valid!3784 (_2!26935 lt!1542326)))))

(declare-fun d!1271723 () Bool)

(assert (=> d!1271723 e!2691002))

(declare-fun res!1772485 () Bool)

(assert (=> d!1271723 (=> (not res!1772485) (not e!2691002))))

(assert (=> d!1271723 (= res!1772485 ((_ is LongMap!4769) (_2!26935 lt!1542326)))))

(assert (=> d!1271723 (= lt!1542326 e!2691006)))

(declare-fun c!735823 () Bool)

(assert (=> d!1271723 (= c!735823 (_1!26935 lt!1542324))))

(declare-fun e!2691004 () tuple2!47294)

(assert (=> d!1271723 (= lt!1542324 e!2691004)))

(declare-fun c!735821 () Bool)

(declare-fun imbalanced!86 (MutLongMap!4769) Bool)

(assert (=> d!1271723 (= c!735821 (imbalanced!86 (v!42845 (underlying!9768 thiss!42308))))))

(assert (=> d!1271723 (valid!3784 (v!42845 (underlying!9768 thiss!42308)))))

(assert (=> d!1271723 (= (update!547 (v!42845 (underlying!9768 thiss!42308)) lt!1542189 lt!1542193) lt!1542326)))

(declare-fun b!4325051 () Bool)

(assert (=> b!4325051 (= e!2691002 e!2691005)))

(declare-fun c!735822 () Bool)

(assert (=> b!4325051 (= c!735822 (_1!26935 lt!1542326))))

(declare-fun b!4325052 () Bool)

(assert (=> b!4325052 (= e!2691005 (= call!300101 call!300100))))

(declare-fun b!4325053 () Bool)

(assert (=> b!4325053 (= e!2691003 (= call!300101 (+!355 call!300100 (tuple2!47293 lt!1542189 lt!1542193))))))

(declare-fun b!4325054 () Bool)

(declare-fun lt!1542323 () tuple2!47294)

(assert (=> b!4325054 (= e!2691004 (tuple2!47295 (_1!26935 lt!1542323) (_2!26935 lt!1542323)))))

(declare-fun repack!90 (MutLongMap!4769) tuple2!47294)

(assert (=> b!4325054 (= lt!1542323 (repack!90 (v!42845 (underlying!9768 thiss!42308))))))

(declare-fun bm!300096 () Bool)

(assert (=> bm!300096 (= call!300101 (map!10449 (_2!26935 lt!1542326)))))

(declare-fun b!4325055 () Bool)

(assert (=> b!4325055 (= e!2691006 (tuple2!47295 false (_2!26935 lt!1542324)))))

(declare-fun b!4325056 () Bool)

(assert (=> b!4325056 (= e!2691004 (tuple2!47295 true (v!42845 (underlying!9768 thiss!42308))))))

(assert (= (and d!1271723 c!735821) b!4325054))

(assert (= (and d!1271723 (not c!735821)) b!4325056))

(assert (= (and d!1271723 c!735823) b!4325048))

(assert (= (and d!1271723 (not c!735823)) b!4325055))

(assert (= (and d!1271723 res!1772485) b!4325050))

(assert (= (and b!4325050 res!1772486) b!4325051))

(assert (= (and b!4325051 c!735822) b!4325049))

(assert (= (and b!4325051 (not c!735822)) b!4325052))

(assert (= (and b!4325049 res!1772487) b!4325053))

(assert (= (or b!4325053 b!4325052) bm!300095))

(assert (= (or b!4325049 b!4325053 b!4325052) bm!300096))

(declare-fun m!4919877 () Bool)

(assert (=> bm!300096 m!4919877))

(declare-fun m!4919879 () Bool)

(assert (=> b!4325050 m!4919879))

(declare-fun m!4919881 () Bool)

(assert (=> b!4325049 m!4919881))

(declare-fun m!4919883 () Bool)

(assert (=> b!4325054 m!4919883))

(declare-fun m!4919885 () Bool)

(assert (=> b!4325048 m!4919885))

(assert (=> bm!300095 m!4919693))

(declare-fun m!4919887 () Bool)

(assert (=> b!4325053 m!4919887))

(declare-fun m!4919889 () Bool)

(assert (=> d!1271723 m!4919889))

(assert (=> d!1271723 m!4919793))

(assert (=> b!4324932 d!1271723))

(declare-fun d!1271725 () Bool)

(declare-fun lt!1542329 () Bool)

(assert (=> d!1271725 (= lt!1542329 (contains!10487 (map!10449 (v!42845 (underlying!9768 thiss!42308))) lt!1542189))))

(declare-fun contains!10489 (LongMapFixedSize!9538 (_ BitVec 64)) Bool)

(assert (=> d!1271725 (= lt!1542329 (contains!10489 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))) lt!1542189))))

(assert (=> d!1271725 (valid!3784 (v!42845 (underlying!9768 thiss!42308)))))

(assert (=> d!1271725 (= (contains!10484 (v!42845 (underlying!9768 thiss!42308)) lt!1542189) lt!1542329)))

(declare-fun bs!607298 () Bool)

(assert (= bs!607298 d!1271725))

(assert (=> bs!607298 m!4919693))

(assert (=> bs!607298 m!4919693))

(declare-fun m!4919891 () Bool)

(assert (=> bs!607298 m!4919891))

(declare-fun m!4919893 () Bool)

(assert (=> bs!607298 m!4919893))

(assert (=> bs!607298 m!4919793))

(assert (=> b!4324932 d!1271725))

(declare-fun d!1271727 () Bool)

(declare-fun hash!1224 (Hashable!4685 K!9669) (_ BitVec 64))

(assert (=> d!1271727 (= (hash!1219 (hashF!6979 thiss!42308) key!2048) (hash!1224 (hashF!6979 thiss!42308) key!2048))))

(declare-fun bs!607299 () Bool)

(assert (= bs!607299 d!1271727))

(declare-fun m!4919895 () Bool)

(assert (=> bs!607299 m!4919895))

(assert (=> b!4324932 d!1271727))

(declare-fun d!1271729 () Bool)

(assert (=> d!1271729 (= (array_inv!5563 (_keys!5095 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) (bvsge (size!35762 (_keys!5095 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324918 d!1271729))

(declare-fun d!1271731 () Bool)

(assert (=> d!1271731 (= (array_inv!5564 (_values!5070 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) (bvsge (size!35763 (_values!5070 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324918 d!1271731))

(declare-fun bs!607300 () Bool)

(declare-fun d!1271733 () Bool)

(assert (= bs!607300 (and d!1271733 b!4324926)))

(declare-fun lambda!134247 () Int)

(assert (=> bs!607300 (not (= lambda!134247 lambda!134218))))

(declare-fun bs!607301 () Bool)

(assert (= bs!607301 (and d!1271733 d!1271705)))

(assert (=> bs!607301 (= lambda!134247 lambda!134236)))

(declare-fun bs!607302 () Bool)

(assert (= bs!607302 (and d!1271733 d!1271673)))

(assert (=> bs!607302 (not (= lambda!134247 lambda!134223))))

(declare-fun bs!607303 () Bool)

(assert (= bs!607303 (and d!1271733 d!1271693)))

(assert (=> bs!607303 (not (= lambda!134247 lambda!134230))))

(declare-fun bs!607304 () Bool)

(assert (= bs!607304 (and d!1271733 b!4324971)))

(assert (=> bs!607304 (not (= lambda!134247 lambda!134233))))

(declare-fun bs!607305 () Bool)

(assert (= bs!607305 (and d!1271733 d!1271691)))

(assert (=> bs!607305 (not (= lambda!134247 lambda!134227))))

(declare-fun bs!607306 () Bool)

(assert (= bs!607306 (and d!1271733 b!4325013)))

(assert (=> bs!607306 (not (= lambda!134247 lambda!134243))))

(declare-fun bs!607307 () Bool)

(assert (= bs!607307 (and d!1271733 d!1271687)))

(assert (=> bs!607307 (not (= lambda!134247 lambda!134226))))

(declare-fun bs!607308 () Bool)

(assert (= bs!607308 (and d!1271733 d!1271721)))

(assert (=> bs!607308 (= lambda!134247 lambda!134246)))

(assert (=> d!1271733 true))

(assert (=> d!1271733 (= (allKeysSameHashInMap!401 lt!1542185 (hashF!6979 thiss!42308)) (forall!8833 (toList!2584 lt!1542185) lambda!134247))))

(declare-fun bs!607309 () Bool)

(assert (= bs!607309 d!1271733))

(declare-fun m!4919897 () Bool)

(assert (=> bs!607309 m!4919897))

(assert (=> b!4324923 d!1271733))

(declare-fun e!2691009 () Bool)

(declare-fun tp!1327402 () Bool)

(declare-fun b!4325061 () Bool)

(assert (=> b!4325061 (= e!2691009 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327402))))

(assert (=> b!4324924 (= tp!1327397 e!2691009)))

(assert (= (and b!4324924 ((_ is Cons!48414) mapDefault!21255)) b!4325061))

(declare-fun b!4325062 () Bool)

(declare-fun e!2691010 () Bool)

(declare-fun tp!1327403 () Bool)

(assert (=> b!4325062 (= e!2691010 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327403))))

(assert (=> b!4324918 (= tp!1327393 e!2691010)))

(assert (= (and b!4324918 ((_ is Cons!48414) (zeroValue!5046 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308))))))) b!4325062))

(declare-fun b!4325063 () Bool)

(declare-fun tp!1327404 () Bool)

(declare-fun e!2691011 () Bool)

(assert (=> b!4325063 (= e!2691011 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327404))))

(assert (=> b!4324918 (= tp!1327396 e!2691011)))

(assert (= (and b!4324918 ((_ is Cons!48414) (minValue!5046 (v!42844 (underlying!9767 (v!42845 (underlying!9768 thiss!42308))))))) b!4325063))

(declare-fun mapNonEmpty!21258 () Bool)

(declare-fun mapRes!21258 () Bool)

(declare-fun tp!1327413 () Bool)

(declare-fun e!2691017 () Bool)

(assert (=> mapNonEmpty!21258 (= mapRes!21258 (and tp!1327413 e!2691017))))

(declare-fun mapKey!21258 () (_ BitVec 32))

(declare-fun mapRest!21258 () (Array (_ BitVec 32) List!48538))

(declare-fun mapValue!21258 () List!48538)

(assert (=> mapNonEmpty!21258 (= mapRest!21255 (store mapRest!21258 mapKey!21258 mapValue!21258))))

(declare-fun b!4325070 () Bool)

(declare-fun tp!1327412 () Bool)

(assert (=> b!4325070 (= e!2691017 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327412))))

(declare-fun condMapEmpty!21258 () Bool)

(declare-fun mapDefault!21258 () List!48538)

(assert (=> mapNonEmpty!21255 (= condMapEmpty!21258 (= mapRest!21255 ((as const (Array (_ BitVec 32) List!48538)) mapDefault!21258)))))

(declare-fun e!2691016 () Bool)

(assert (=> mapNonEmpty!21255 (= tp!1327398 (and e!2691016 mapRes!21258))))

(declare-fun tp!1327411 () Bool)

(declare-fun b!4325071 () Bool)

(assert (=> b!4325071 (= e!2691016 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327411))))

(declare-fun mapIsEmpty!21258 () Bool)

(assert (=> mapIsEmpty!21258 mapRes!21258))

(assert (= (and mapNonEmpty!21255 condMapEmpty!21258) mapIsEmpty!21258))

(assert (= (and mapNonEmpty!21255 (not condMapEmpty!21258)) mapNonEmpty!21258))

(assert (= (and mapNonEmpty!21258 ((_ is Cons!48414) mapValue!21258)) b!4325070))

(assert (= (and mapNonEmpty!21255 ((_ is Cons!48414) mapDefault!21258)) b!4325071))

(declare-fun m!4919899 () Bool)

(assert (=> mapNonEmpty!21258 m!4919899))

(declare-fun tp!1327414 () Bool)

(declare-fun b!4325072 () Bool)

(declare-fun e!2691018 () Bool)

(assert (=> b!4325072 (= e!2691018 (and tp_is_empty!24175 tp_is_empty!24173 tp!1327414))))

(assert (=> mapNonEmpty!21255 (= tp!1327394 e!2691018)))

(assert (= (and mapNonEmpty!21255 ((_ is Cons!48414) mapValue!21255)) b!4325072))

(declare-fun b_lambda!127521 () Bool)

(assert (= b_lambda!127519 (or (and b!4324918 b_free!129035) b_lambda!127521)))

(declare-fun b_lambda!127523 () Bool)

(assert (= b_lambda!127517 (or b!4324926 b_lambda!127523)))

(declare-fun bs!607310 () Bool)

(declare-fun d!1271735 () Bool)

(assert (= bs!607310 (and d!1271735 b!4324926)))

(assert (=> bs!607310 (= (dynLambda!20520 lambda!134218 (h!53881 (toList!2584 lt!1542195))) (noDuplicateKeys!268 (_2!26934 (h!53881 (toList!2584 lt!1542195)))))))

(declare-fun m!4919901 () Bool)

(assert (=> bs!607310 m!4919901))

(assert (=> b!4324949 d!1271735))

(declare-fun b_lambda!127525 () Bool)

(assert (= b_lambda!127515 (or b!4324926 b_lambda!127525)))

(declare-fun bs!607311 () Bool)

(declare-fun d!1271737 () Bool)

(assert (= bs!607311 (and d!1271737 b!4324926)))

(assert (=> bs!607311 (= (dynLambda!20520 lambda!134218 (h!53881 (toList!2584 lt!1542185))) (noDuplicateKeys!268 (_2!26934 (h!53881 (toList!2584 lt!1542185)))))))

(declare-fun m!4919903 () Bool)

(assert (=> bs!607311 m!4919903))

(assert (=> b!4324947 d!1271737))

(check-sat (not b!4324952) (not bs!607311) (not b!4324959) (not b!4325050) (not d!1271689) (not d!1271715) (not d!1271721) (not b!4324951) (not b!4324966) (not b!4325053) (not d!1271683) (not b_next!129741) (not d!1271709) (not bm!300086) (not d!1271675) (not b!4325063) tp_is_empty!24175 (not bm!300085) tp_is_empty!24173 (not d!1271697) (not d!1271727) (not d!1271723) (not b!4325072) (not b!4325021) (not b!4324965) (not b!4324971) (not b!4324936) (not d!1271705) (not b!4325028) (not b!4325022) (not b!4325019) (not d!1271725) (not bm!300096) b_and!340615 (not mapNonEmpty!21258) (not b!4325062) (not d!1271691) (not b!4324948) (not d!1271703) (not d!1271733) (not d!1271685) (not d!1271711) (not b!4325071) (not b!4325054) (not b_lambda!127525) (not b!4325049) (not b_next!129739) (not d!1271719) (not bs!607310) b_and!340617 (not bm!300090) (not b!4325048) (not b_lambda!127523) (not d!1271673) (not b!4325013) (not d!1271717) (not b!4325070) (not bm!300089) (not d!1271693) (not d!1271699) (not b_lambda!127521) (not b!4324950) (not bm!300088) (not d!1271713) (not b!4324957) (not tb!257383) (not d!1271701) (not b!4324941) (not b!4324972) (not d!1271707) (not bm!300095) (not b!4324942) (not b!4325014) (not d!1271687) (not d!1271679) (not bm!300087) (not b!4325061) (not b!4324983))
(check-sat b_and!340617 b_and!340615 (not b_next!129741) (not b_next!129739))
