; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414050 () Bool)

(assert start!414050)

(declare-fun b!4308826 () Bool)

(declare-fun b_free!128539 () Bool)

(declare-fun b_next!129243 () Bool)

(assert (=> b!4308826 (= b_free!128539 (not b_next!129243))))

(declare-fun tp!1324103 () Bool)

(declare-fun b_and!339953 () Bool)

(assert (=> b!4308826 (= tp!1324103 b_and!339953)))

(declare-fun b!4308837 () Bool)

(declare-fun b_free!128541 () Bool)

(declare-fun b_next!129245 () Bool)

(assert (=> b!4308837 (= b_free!128541 (not b_next!129245))))

(declare-fun tp!1324109 () Bool)

(declare-fun b_and!339955 () Bool)

(assert (=> b!4308837 (= tp!1324109 b_and!339955)))

(declare-fun bs!604969 () Bool)

(declare-fun b!4308814 () Bool)

(declare-fun b!4308831 () Bool)

(assert (= bs!604969 (and b!4308814 b!4308831)))

(declare-fun lambda!132844 () Int)

(declare-fun lambda!132843 () Int)

(assert (=> bs!604969 (= lambda!132844 lambda!132843)))

(declare-fun b!4308810 () Bool)

(declare-datatypes ((K!9359 0))(
  ( (K!9360 (val!15745 Int)) )
))
(declare-datatypes ((V!9561 0))(
  ( (V!9562 (val!15746 Int)) )
))
(declare-datatypes ((tuple2!46546 0))(
  ( (tuple2!46547 (_1!26552 K!9359) (_2!26552 V!9561)) )
))
(declare-datatypes ((List!48290 0))(
  ( (Nil!48166) (Cons!48166 (h!53600 tuple2!46546) (t!355089 List!48290)) )
))
(declare-fun e!2679529 () List!48290)

(declare-fun call!297563 () List!48290)

(assert (=> b!4308810 (= e!2679529 call!297563)))

(declare-datatypes ((array!16736 0))(
  ( (array!16737 (arr!7475 (Array (_ BitVec 32) (_ BitVec 64))) (size!35514 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4561 0))(
  ( (HashableExt!4560 (__x!29960 Int)) )
))
(declare-datatypes ((array!16738 0))(
  ( (array!16739 (arr!7476 (Array (_ BitVec 32) List!48290)) (size!35515 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9290 0))(
  ( (LongMapFixedSize!9291 (defaultEntry!5030 Int) (mask!13196 (_ BitVec 32)) (extraKeys!4894 (_ BitVec 32)) (zeroValue!4904 List!48290) (minValue!4904 List!48290) (_size!9333 (_ BitVec 32)) (_keys!4945 array!16736) (_values!4926 array!16738) (_vacant!4706 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18389 0))(
  ( (Cell!18390 (v!42279 LongMapFixedSize!9290)) )
))
(declare-datatypes ((MutLongMap!4645 0))(
  ( (LongMap!4645 (underlying!9519 Cell!18389)) (MutLongMapExt!4644 (__x!29961 Int)) )
))
(declare-datatypes ((Cell!18391 0))(
  ( (Cell!18392 (v!42280 MutLongMap!4645)) )
))
(declare-datatypes ((MutableMap!4551 0))(
  ( (MutableMapExt!4550 (__x!29962 Int)) (HashMap!4551 (underlying!9520 Cell!18391) (hashF!6677 Hashable!4561) (_size!9334 (_ BitVec 32)) (defaultValue!4722 Int)) )
))
(declare-fun lt!1529786 () MutableMap!4551)

(declare-fun lt!1529747 () Cell!18391)

(declare-datatypes ((tuple2!46548 0))(
  ( (tuple2!46549 (_1!26553 Bool) (_2!26553 MutLongMap!4645)) )
))
(declare-fun lt!1529743 () tuple2!46548)

(declare-fun b!4308811 () Bool)

(declare-datatypes ((tuple2!46550 0))(
  ( (tuple2!46551 (_1!26554 Bool) (_2!26554 MutableMap!4551)) )
))
(declare-fun e!2679522 () tuple2!46550)

(declare-fun lt!1529751 () Bool)

(declare-fun thiss!42308 () MutableMap!4551)

(declare-datatypes ((Unit!67251 0))(
  ( (Unit!67252) )
))
(declare-datatypes ((tuple2!46552 0))(
  ( (tuple2!46553 (_1!26555 Unit!67251) (_2!26555 MutableMap!4551)) )
))
(declare-fun Unit!67253 () Unit!67251)

(declare-fun Unit!67254 () Unit!67251)

(assert (=> b!4308811 (= e!2679522 (tuple2!46551 (_1!26553 lt!1529743) (_2!26555 (ite (and (_1!26553 lt!1529743) (not lt!1529751)) (tuple2!46553 Unit!67253 (HashMap!4551 lt!1529747 (hashF!6677 thiss!42308) (bvadd (_size!9334 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4722 thiss!42308))) (tuple2!46553 Unit!67254 lt!1529786)))))))

(declare-fun lt!1529783 () (_ BitVec 64))

(declare-fun call!297569 () (_ BitVec 64))

(assert (=> b!4308811 (= lt!1529783 call!297569)))

(declare-fun lt!1529782 () List!48290)

(assert (=> b!4308811 (= lt!1529782 call!297563)))

(declare-fun lt!1529763 () tuple2!46546)

(declare-fun key!2048 () K!9359)

(declare-fun v!9179 () V!9561)

(assert (=> b!4308811 (= lt!1529763 (tuple2!46547 key!2048 v!9179))))

(declare-fun lt!1529752 () List!48290)

(declare-fun call!297567 () List!48290)

(assert (=> b!4308811 (= lt!1529752 call!297567)))

(declare-fun lt!1529767 () List!48290)

(assert (=> b!4308811 (= lt!1529767 (Cons!48166 lt!1529763 lt!1529752))))

(declare-fun call!297560 () tuple2!46548)

(assert (=> b!4308811 (= lt!1529743 call!297560)))

(assert (=> b!4308811 (= lt!1529747 (Cell!18392 (_2!26553 lt!1529743)))))

(assert (=> b!4308811 (= lt!1529786 (HashMap!4551 lt!1529747 (hashF!6677 thiss!42308) (_size!9334 thiss!42308) (defaultValue!4722 thiss!42308)))))

(declare-fun c!732584 () Bool)

(assert (=> b!4308811 (= c!732584 (_1!26553 lt!1529743))))

(declare-fun lt!1529746 () Unit!67251)

(declare-fun e!2679519 () Unit!67251)

(assert (=> b!4308811 (= lt!1529746 e!2679519)))

(declare-fun bm!297549 () Bool)

(declare-fun c!732585 () Bool)

(declare-fun lt!1529771 () (_ BitVec 64))

(declare-fun apply!10999 (MutLongMap!4645 (_ BitVec 64)) List!48290)

(assert (=> bm!297549 (= call!297563 (apply!10999 (v!42280 (underlying!9520 thiss!42308)) (ite c!732585 lt!1529783 lt!1529771)))))

(declare-fun lt!1529781 () List!48290)

(declare-fun bm!297550 () Bool)

(declare-fun removePairForKey!202 (List!48290 K!9359) List!48290)

(assert (=> bm!297550 (= call!297567 (removePairForKey!202 (ite c!732585 lt!1529782 lt!1529781) key!2048))))

(declare-fun b!4308812 () Bool)

(declare-fun lt!1529777 () tuple2!46548)

(declare-fun lt!1529766 () Cell!18391)

(declare-fun lt!1529749 () MutableMap!4551)

(declare-fun Unit!67255 () Unit!67251)

(declare-fun Unit!67256 () Unit!67251)

(assert (=> b!4308812 (= e!2679522 (tuple2!46551 (_1!26553 lt!1529777) (_2!26555 (ite (and (_1!26553 lt!1529777) (not lt!1529751)) (tuple2!46553 Unit!67255 (HashMap!4551 lt!1529766 (hashF!6677 thiss!42308) (bvadd (_size!9334 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4722 thiss!42308))) (tuple2!46553 Unit!67256 lt!1529749)))))))

(assert (=> b!4308812 (= lt!1529771 call!297569)))

(declare-fun c!732586 () Bool)

(declare-fun contains!10137 (MutLongMap!4645 (_ BitVec 64)) Bool)

(assert (=> b!4308812 (= c!732586 (contains!10137 (v!42280 (underlying!9520 thiss!42308)) lt!1529771))))

(assert (=> b!4308812 (= lt!1529781 e!2679529)))

(declare-fun lt!1529775 () tuple2!46546)

(assert (=> b!4308812 (= lt!1529775 (tuple2!46547 key!2048 v!9179))))

(declare-fun lt!1529758 () List!48290)

(assert (=> b!4308812 (= lt!1529758 (Cons!48166 lt!1529775 lt!1529781))))

(assert (=> b!4308812 (= lt!1529777 call!297560)))

(assert (=> b!4308812 (= lt!1529766 (Cell!18392 (_2!26553 lt!1529777)))))

(assert (=> b!4308812 (= lt!1529749 (HashMap!4551 lt!1529766 (hashF!6677 thiss!42308) (_size!9334 thiss!42308) (defaultValue!4722 thiss!42308)))))

(declare-fun c!732587 () Bool)

(assert (=> b!4308812 (= c!732587 (_1!26553 lt!1529777))))

(declare-fun lt!1529761 () Unit!67251)

(declare-fun e!2679521 () Unit!67251)

(assert (=> b!4308812 (= lt!1529761 e!2679521)))

(declare-fun b!4308813 () Bool)

(declare-fun res!1766022 () Bool)

(declare-fun e!2679528 () Bool)

(assert (=> b!4308813 (=> (not res!1766022) (not e!2679528))))

(declare-fun call!297565 () Bool)

(assert (=> b!4308813 (= res!1766022 call!297565)))

(declare-fun mapIsEmpty!20758 () Bool)

(declare-fun mapRes!20758 () Bool)

(assert (=> mapIsEmpty!20758 mapRes!20758))

(declare-fun call!297581 () Unit!67251)

(declare-datatypes ((tuple2!46554 0))(
  ( (tuple2!46555 (_1!26556 (_ BitVec 64)) (_2!26556 List!48290)) )
))
(declare-datatypes ((List!48291 0))(
  ( (Nil!48167) (Cons!48167 (h!53601 tuple2!46554) (t!355090 List!48291)) )
))
(declare-datatypes ((ListLongMap!991 0))(
  ( (ListLongMap!992 (toList!2378 List!48291)) )
))
(declare-fun lt!1529787 () ListLongMap!991)

(declare-fun bm!297551 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!169 (List!48291 (_ BitVec 64) List!48290 Hashable!4561) Unit!67251)

(assert (=> bm!297551 (= call!297581 (lemmaInLongMapAllKeySameHashThenForTuple!169 (toList!2378 lt!1529787) (ite c!732585 lt!1529783 lt!1529771) (ite c!732585 lt!1529782 lt!1529781) (hashF!6677 thiss!42308)))))

(declare-fun bm!297552 () Bool)

(declare-fun hash!993 (Hashable!4561 K!9359) (_ BitVec 64))

(assert (=> bm!297552 (= call!297569 (hash!993 (hashF!6677 thiss!42308) key!2048))))

(declare-fun lt!1529772 () Bool)

(declare-fun lt!1529774 () Bool)

(assert (=> b!4308814 (and (= lt!1529772 lt!1529774) lt!1529774 lt!1529772)))

(declare-fun call!297578 () Bool)

(assert (=> b!4308814 (= lt!1529774 call!297578)))

(declare-fun call!297573 () Bool)

(assert (=> b!4308814 (= lt!1529772 call!297573)))

(declare-fun lt!1529779 () Unit!67251)

(declare-fun call!297575 () Unit!67251)

(assert (=> b!4308814 (= lt!1529779 call!297575)))

(declare-fun call!297561 () Bool)

(assert (=> b!4308814 call!297561))

(declare-datatypes ((ListMap!1659 0))(
  ( (ListMap!1660 (toList!2379 List!48290)) )
))
(declare-fun lt!1529757 () ListMap!1659)

(declare-fun call!297574 () ListMap!1659)

(assert (=> b!4308814 (= lt!1529757 call!297574)))

(declare-fun lt!1529778 () ListMap!1659)

(declare-fun call!297555 () ListMap!1659)

(assert (=> b!4308814 (= lt!1529778 call!297555)))

(declare-fun e!2679525 () Bool)

(assert (=> b!4308814 e!2679525))

(declare-fun res!1766019 () Bool)

(assert (=> b!4308814 (=> (not res!1766019) (not e!2679525))))

(declare-fun call!297564 () Bool)

(assert (=> b!4308814 (= res!1766019 call!297564)))

(declare-fun lt!1529754 () ListLongMap!991)

(declare-fun call!297558 () ListLongMap!991)

(assert (=> b!4308814 (= lt!1529754 call!297558)))

(declare-fun call!297562 () Bool)

(assert (=> b!4308814 call!297562))

(declare-fun lt!1529770 () Unit!67251)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!56 (ListLongMap!991 (_ BitVec 64) List!48290 K!9359 V!9561 Hashable!4561) Unit!67251)

(assert (=> b!4308814 (= lt!1529770 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!56 lt!1529787 lt!1529771 lt!1529758 key!2048 v!9179 (hashF!6677 thiss!42308)))))

(declare-fun e!2679531 () Bool)

(assert (=> b!4308814 e!2679531))

(declare-fun res!1766018 () Bool)

(assert (=> b!4308814 (=> (not res!1766018) (not e!2679531))))

(declare-fun call!297568 () Bool)

(assert (=> b!4308814 (= res!1766018 call!297568)))

(declare-fun lt!1529765 () ListLongMap!991)

(declare-fun call!297570 () ListLongMap!991)

(assert (=> b!4308814 (= lt!1529765 call!297570)))

(declare-fun lt!1529780 () Unit!67251)

(declare-fun call!297566 () Unit!67251)

(assert (=> b!4308814 (= lt!1529780 call!297566)))

(declare-fun lt!1529764 () Unit!67251)

(declare-fun e!2679537 () Unit!67251)

(assert (=> b!4308814 (= lt!1529764 e!2679537)))

(declare-fun c!732588 () Bool)

(declare-fun isEmpty!28082 (List!48290) Bool)

(assert (=> b!4308814 (= c!732588 (not (isEmpty!28082 lt!1529781)))))

(declare-fun Unit!67257 () Unit!67251)

(assert (=> b!4308814 (= e!2679521 Unit!67257)))

(declare-fun b!4308815 () Bool)

(declare-fun e!2679534 () Bool)

(declare-fun call!297576 () Bool)

(assert (=> b!4308815 (= e!2679534 call!297576)))

(declare-fun b!4308816 () Bool)

(declare-fun res!1766020 () Bool)

(declare-fun e!2679530 () Bool)

(assert (=> b!4308816 (=> (not res!1766020) (not e!2679530))))

(declare-fun containsKey!302 (List!48290 K!9359) Bool)

(assert (=> b!4308816 (= res!1766020 (not (containsKey!302 lt!1529752 key!2048)))))

(declare-fun call!297579 () Unit!67251)

(declare-fun bm!297553 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!164 (List!48290 K!9359 (_ BitVec 64) Hashable!4561) Unit!67251)

(assert (=> bm!297553 (= call!297579 (lemmaRemovePairForKeyPreservesHash!164 (ite c!732585 lt!1529782 lt!1529781) key!2048 (ite c!732585 lt!1529783 lt!1529771) (hashF!6677 thiss!42308)))))

(declare-fun b!4308817 () Bool)

(assert (=> b!4308817 (= e!2679528 call!297561)))

(declare-fun b!4308818 () Bool)

(declare-fun lt!1529773 () Unit!67251)

(assert (=> b!4308818 (= e!2679537 lt!1529773)))

(declare-fun lt!1529750 () Unit!67251)

(assert (=> b!4308818 (= lt!1529750 call!297581)))

(declare-fun call!297557 () Bool)

(assert (=> b!4308818 call!297557))

(assert (=> b!4308818 (= lt!1529773 call!297579)))

(declare-fun call!297572 () Bool)

(assert (=> b!4308818 call!297572))

(declare-fun b!4308819 () Bool)

(declare-fun e!2679523 () Bool)

(assert (=> b!4308819 (= e!2679523 false)))

(declare-fun lt!1529769 () Bool)

(declare-fun lt!1529748 () tuple2!46550)

(declare-fun contains!10138 (ListMap!1659 K!9359) Bool)

(declare-fun map!10150 (MutableMap!4551) ListMap!1659)

(assert (=> b!4308819 (= lt!1529769 (contains!10138 (map!10150 (_2!26554 lt!1529748)) key!2048))))

(declare-fun lt!1529785 () ListLongMap!991)

(declare-fun bm!297554 () Bool)

(declare-fun allKeysSameHashInMap!330 (ListLongMap!991 Hashable!4561) Bool)

(assert (=> bm!297554 (= call!297576 (allKeysSameHashInMap!330 (ite c!732585 lt!1529785 lt!1529765) (hashF!6677 thiss!42308)))))

(declare-fun b!4308820 () Bool)

(declare-fun Unit!67258 () Unit!67251)

(assert (=> b!4308820 (= e!2679537 Unit!67258)))

(declare-fun b!4308821 () Bool)

(declare-fun e!2679527 () Bool)

(assert (=> b!4308821 (= e!2679527 e!2679523)))

(declare-fun res!1766028 () Bool)

(assert (=> b!4308821 (=> (not res!1766028) (not e!2679523))))

(get-info :version)

(assert (=> b!4308821 (= res!1766028 ((_ is HashMap!4551) (_2!26554 lt!1529748)))))

(assert (=> b!4308821 (= lt!1529748 e!2679522)))

(assert (=> b!4308821 (= c!732585 lt!1529751)))

(declare-fun contains!10139 (MutableMap!4551 K!9359) Bool)

(assert (=> b!4308821 (= lt!1529751 (contains!10139 thiss!42308 key!2048))))

(declare-fun map!10151 (MutLongMap!4645) ListLongMap!991)

(assert (=> b!4308821 (= lt!1529787 (map!10151 (v!42280 (underlying!9520 thiss!42308))))))

(declare-fun lt!1529759 () ListMap!1659)

(assert (=> b!4308821 (= lt!1529759 (map!10150 thiss!42308))))

(declare-fun b!4308822 () Bool)

(declare-fun res!1766023 () Bool)

(assert (=> b!4308822 (=> (not res!1766023) (not e!2679523))))

(declare-fun valid!3633 (MutableMap!4551) Bool)

(assert (=> b!4308822 (= res!1766023 (valid!3633 (_2!26554 lt!1529748)))))

(declare-fun b!4308823 () Bool)

(declare-fun res!1766027 () Bool)

(assert (=> b!4308823 (=> (not res!1766027) (not e!2679523))))

(assert (=> b!4308823 (= res!1766027 (_1!26554 lt!1529748))))

(declare-fun bm!297555 () Bool)

(declare-fun call!297580 () ListMap!1659)

(declare-fun extractMap!322 (List!48291) ListMap!1659)

(assert (=> bm!297555 (= call!297580 (extractMap!322 (ite c!732585 (toList!2378 lt!1529785) (toList!2378 lt!1529787))))))

(declare-fun bm!297556 () Bool)

(declare-fun forall!8722 (List!48291 Int) Bool)

(assert (=> bm!297556 (= call!297568 (forall!8722 (ite c!732585 (toList!2378 lt!1529785) (toList!2378 lt!1529765)) (ite c!732585 lambda!132843 lambda!132844)))))

(declare-fun b!4308824 () Bool)

(assert (=> b!4308824 (= e!2679529 Nil!48166)))

(declare-fun bm!297557 () Bool)

(declare-fun update!425 (MutLongMap!4645 (_ BitVec 64) List!48290) tuple2!46548)

(assert (=> bm!297557 (= call!297560 (update!425 (v!42280 (underlying!9520 thiss!42308)) (ite c!732585 lt!1529783 lt!1529771) (ite c!732585 lt!1529767 lt!1529758)))))

(declare-fun call!297571 () ListMap!1659)

(declare-fun bm!297558 () Bool)

(assert (=> bm!297558 (= call!297571 (map!10150 (ite c!732585 lt!1529786 lt!1529749)))))

(declare-fun b!4308825 () Bool)

(declare-fun res!1766031 () Bool)

(assert (=> b!4308825 (=> (not res!1766031) (not e!2679527))))

(assert (=> b!4308825 (= res!1766031 (valid!3633 thiss!42308))))

(declare-fun res!1766029 () Bool)

(assert (=> start!414050 (=> (not res!1766029) (not e!2679527))))

(assert (=> start!414050 (= res!1766029 ((_ is HashMap!4551) thiss!42308))))

(assert (=> start!414050 e!2679527))

(declare-fun e!2679533 () Bool)

(assert (=> start!414050 e!2679533))

(declare-fun tp_is_empty!23701 () Bool)

(assert (=> start!414050 tp_is_empty!23701))

(declare-fun tp_is_empty!23703 () Bool)

(assert (=> start!414050 tp_is_empty!23703))

(declare-fun call!297577 () ListMap!1659)

(declare-fun bm!297559 () Bool)

(declare-fun call!297556 () ListMap!1659)

(declare-fun eq!139 (ListMap!1659 ListMap!1659) Bool)

(assert (=> bm!297559 (= call!297562 (eq!139 (ite c!732585 call!297580 call!297556) call!297577))))

(declare-fun e!2679535 () Bool)

(declare-fun tp!1324105 () Bool)

(declare-fun e!2679532 () Bool)

(declare-fun tp!1324107 () Bool)

(declare-fun array_inv!5363 (array!16736) Bool)

(declare-fun array_inv!5364 (array!16738) Bool)

(assert (=> b!4308826 (= e!2679535 (and tp!1324103 tp!1324105 tp!1324107 (array_inv!5363 (_keys!4945 (v!42279 (underlying!9519 (v!42280 (underlying!9520 thiss!42308)))))) (array_inv!5364 (_values!4926 (v!42279 (underlying!9519 (v!42280 (underlying!9520 thiss!42308)))))) e!2679532))))

(declare-fun bm!297560 () Bool)

(assert (=> bm!297560 (= call!297558 (map!10151 (ite c!732585 (_2!26553 lt!1529743) (_2!26553 lt!1529777))))))

(declare-fun b!4308827 () Bool)

(declare-fun e!2679536 () Bool)

(assert (=> b!4308827 (= e!2679536 e!2679535)))

(declare-fun lt!1529753 () ListMap!1659)

(declare-fun bm!297561 () Bool)

(assert (=> bm!297561 (= call!297578 (contains!10138 (ite c!732585 lt!1529753 lt!1529757) key!2048))))

(declare-fun bm!297562 () Bool)

(declare-fun call!297554 () ListMap!1659)

(assert (=> bm!297562 (= call!297554 call!297571)))

(declare-fun b!4308828 () Bool)

(assert (=> b!4308828 (= e!2679525 call!297565)))

(declare-fun bm!297563 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!144 (ListLongMap!991 (_ BitVec 64) List!48290 Hashable!4561) Unit!67251)

(assert (=> bm!297563 (= call!297566 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!144 lt!1529787 (ite c!732585 lt!1529783 lt!1529771) (ite c!732585 lt!1529767 lt!1529758) (hashF!6677 thiss!42308)))))

(declare-fun b!4308829 () Bool)

(declare-fun tp!1324106 () Bool)

(assert (=> b!4308829 (= e!2679532 (and tp!1324106 mapRes!20758))))

(declare-fun condMapEmpty!20758 () Bool)

(declare-fun mapDefault!20758 () List!48290)

(assert (=> b!4308829 (= condMapEmpty!20758 (= (arr!7476 (_values!4926 (v!42279 (underlying!9519 (v!42280 (underlying!9520 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48290)) mapDefault!20758)))))

(declare-fun bm!297564 () Bool)

(declare-fun +!259 (ListMap!1659 tuple2!46546) ListMap!1659)

(assert (=> bm!297564 (= call!297574 (+!259 lt!1529759 (ite c!732585 lt!1529763 lt!1529775)))))

(declare-fun b!4308830 () Bool)

(declare-fun e!2679526 () Bool)

(assert (=> b!4308830 (= e!2679526 e!2679536)))

(declare-fun bm!297565 () Bool)

(assert (=> bm!297565 (= call!297577 (+!259 (ite c!732585 call!297556 call!297580) (ite c!732585 lt!1529763 lt!1529775)))))

(declare-fun lt!1529745 () ListLongMap!991)

(declare-fun bm!297566 () Bool)

(assert (=> bm!297566 (= call!297565 (allKeysSameHashInMap!330 (ite c!732585 lt!1529745 lt!1529754) (hashF!6677 thiss!42308)))))

(declare-fun bm!297567 () Bool)

(assert (=> bm!297567 (= call!297556 (extractMap!322 (ite c!732585 (toList!2378 lt!1529787) (toList!2378 lt!1529765))))))

(assert (=> b!4308831 e!2679528))

(declare-fun res!1766024 () Bool)

(assert (=> b!4308831 (=> (not res!1766024) (not e!2679528))))

(assert (=> b!4308831 (= res!1766024 call!297564)))

(assert (=> b!4308831 (= lt!1529745 call!297558)))

(assert (=> b!4308831 (= call!297578 call!297573)))

(declare-fun lt!1529762 () Unit!67251)

(assert (=> b!4308831 (= lt!1529762 call!297575)))

(declare-fun lt!1529768 () ListMap!1659)

(assert (=> b!4308831 (= lt!1529768 call!297574)))

(assert (=> b!4308831 (= lt!1529753 call!297554)))

(assert (=> b!4308831 call!297562))

(declare-fun lt!1529784 () Unit!67251)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!58 (ListLongMap!991 (_ BitVec 64) List!48290 K!9359 V!9561 Hashable!4561) Unit!67251)

(assert (=> b!4308831 (= lt!1529784 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!58 lt!1529787 lt!1529783 lt!1529767 key!2048 v!9179 (hashF!6677 thiss!42308)))))

(assert (=> b!4308831 e!2679534))

(declare-fun res!1766021 () Bool)

(assert (=> b!4308831 (=> (not res!1766021) (not e!2679534))))

(assert (=> b!4308831 (= res!1766021 call!297568)))

(assert (=> b!4308831 (= lt!1529785 call!297570)))

(declare-fun lt!1529744 () Unit!67251)

(assert (=> b!4308831 (= lt!1529744 call!297566)))

(assert (=> b!4308831 e!2679530))

(declare-fun res!1766030 () Bool)

(assert (=> b!4308831 (=> (not res!1766030) (not e!2679530))))

(declare-fun noDuplicateKeys!204 (List!48290) Bool)

(assert (=> b!4308831 (= res!1766030 (noDuplicateKeys!204 lt!1529752))))

(declare-fun lt!1529776 () Unit!67251)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!161 (List!48290 K!9359) Unit!67251)

(assert (=> b!4308831 (= lt!1529776 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!161 lt!1529782 key!2048))))

(assert (=> b!4308831 call!297557))

(declare-fun lt!1529760 () Unit!67251)

(assert (=> b!4308831 (= lt!1529760 call!297579)))

(assert (=> b!4308831 call!297572))

(declare-fun lt!1529755 () Unit!67251)

(assert (=> b!4308831 (= lt!1529755 call!297581)))

(declare-fun Unit!67259 () Unit!67251)

(assert (=> b!4308831 (= e!2679519 Unit!67259)))

(declare-fun bm!297568 () Bool)

(assert (=> bm!297568 (= call!297561 (eq!139 (ite c!732585 lt!1529753 lt!1529778) (ite c!732585 lt!1529768 lt!1529757)))))

(declare-fun bm!297569 () Bool)

(declare-fun allKeysSameHash!180 (List!48290 (_ BitVec 64) Hashable!4561) Bool)

(assert (=> bm!297569 (= call!297557 (allKeysSameHash!180 (ite c!732585 lt!1529752 lt!1529781) (ite c!732585 lt!1529783 lt!1529771) (hashF!6677 thiss!42308)))))

(declare-fun b!4308832 () Bool)

(assert (=> b!4308832 (= e!2679531 call!297576)))

(declare-fun bm!297570 () Bool)

(assert (=> bm!297570 (= call!297555 call!297571)))

(declare-fun b!4308833 () Bool)

(declare-fun e!2679538 () Bool)

(assert (=> b!4308833 (= e!2679538 (= call!297555 lt!1529759))))

(declare-fun bm!297571 () Bool)

(declare-fun +!260 (ListLongMap!991 tuple2!46554) ListLongMap!991)

(assert (=> bm!297571 (= call!297570 (+!260 lt!1529787 (ite c!732585 (tuple2!46555 lt!1529783 lt!1529767) (tuple2!46555 lt!1529771 lt!1529758))))))

(declare-fun mapNonEmpty!20758 () Bool)

(declare-fun tp!1324104 () Bool)

(declare-fun tp!1324108 () Bool)

(assert (=> mapNonEmpty!20758 (= mapRes!20758 (and tp!1324104 tp!1324108))))

(declare-fun mapRest!20758 () (Array (_ BitVec 32) List!48290))

(declare-fun mapValue!20758 () List!48290)

(declare-fun mapKey!20758 () (_ BitVec 32))

(assert (=> mapNonEmpty!20758 (= (arr!7476 (_values!4926 (v!42279 (underlying!9519 (v!42280 (underlying!9520 thiss!42308)))))) (store mapRest!20758 mapKey!20758 mapValue!20758))))

(declare-fun b!4308834 () Bool)

(assert (=> b!4308834 e!2679538))

(declare-fun res!1766025 () Bool)

(assert (=> b!4308834 (=> (not res!1766025) (not e!2679538))))

(declare-fun call!297559 () Bool)

(assert (=> b!4308834 (= res!1766025 call!297559)))

(declare-fun Unit!67260 () Unit!67251)

(assert (=> b!4308834 (= e!2679521 Unit!67260)))

(declare-fun b!4308835 () Bool)

(declare-fun e!2679518 () Bool)

(declare-fun lt!1529756 () MutLongMap!4645)

(assert (=> b!4308835 (= e!2679518 (and e!2679526 ((_ is LongMap!4645) lt!1529756)))))

(assert (=> b!4308835 (= lt!1529756 (v!42280 (underlying!9520 thiss!42308)))))

(declare-fun bm!297572 () Bool)

(assert (=> bm!297572 (= call!297564 (forall!8722 (ite c!732585 (toList!2378 lt!1529745) (toList!2378 lt!1529754)) (ite c!732585 lambda!132843 lambda!132844)))))

(declare-fun bm!297573 () Bool)

(declare-fun lemmaEquivalentThenSameContains!55 (ListMap!1659 ListMap!1659 K!9359) Unit!67251)

(assert (=> bm!297573 (= call!297575 (lemmaEquivalentThenSameContains!55 (ite c!732585 lt!1529753 lt!1529778) (ite c!732585 lt!1529768 lt!1529757) key!2048))))

(declare-fun b!4308836 () Bool)

(declare-fun e!2679524 () Bool)

(assert (=> b!4308836 (= e!2679524 (= call!297554 lt!1529759))))

(assert (=> b!4308837 (= e!2679533 (and e!2679518 tp!1324109))))

(declare-fun bm!297574 () Bool)

(assert (=> bm!297574 (= call!297572 (allKeysSameHash!180 (ite c!732585 lt!1529782 call!297567) (ite c!732585 lt!1529783 lt!1529771) (hashF!6677 thiss!42308)))))

(declare-fun bm!297575 () Bool)

(assert (=> bm!297575 (= call!297573 (contains!10138 (ite c!732585 lt!1529768 lt!1529778) key!2048))))

(declare-fun b!4308838 () Bool)

(assert (=> b!4308838 (= e!2679530 (noDuplicateKeys!204 lt!1529767))))

(declare-fun bm!297576 () Bool)

(assert (=> bm!297576 (= call!297559 (valid!3633 (ite c!732585 lt!1529786 lt!1529749)))))

(declare-fun b!4308839 () Bool)

(assert (=> b!4308839 e!2679524))

(declare-fun res!1766026 () Bool)

(assert (=> b!4308839 (=> (not res!1766026) (not e!2679524))))

(assert (=> b!4308839 (= res!1766026 call!297559)))

(declare-fun Unit!67261 () Unit!67251)

(assert (=> b!4308839 (= e!2679519 Unit!67261)))

(assert (= (and start!414050 res!1766029) b!4308825))

(assert (= (and b!4308825 res!1766031) b!4308821))

(assert (= (and b!4308821 c!732585) b!4308811))

(assert (= (and b!4308821 (not c!732585)) b!4308812))

(assert (= (and b!4308811 c!732584) b!4308831))

(assert (= (and b!4308811 (not c!732584)) b!4308839))

(assert (= (and b!4308831 res!1766030) b!4308816))

(assert (= (and b!4308816 res!1766020) b!4308838))

(assert (= (and b!4308831 res!1766021) b!4308815))

(assert (= (and b!4308831 res!1766024) b!4308813))

(assert (= (and b!4308813 res!1766022) b!4308817))

(assert (= (and b!4308839 res!1766026) b!4308836))

(assert (= (or b!4308831 b!4308836) bm!297562))

(assert (= (and b!4308812 c!732586) b!4308810))

(assert (= (and b!4308812 (not c!732586)) b!4308824))

(assert (= (and b!4308812 c!732587) b!4308814))

(assert (= (and b!4308812 (not c!732587)) b!4308834))

(assert (= (and b!4308814 c!732588) b!4308818))

(assert (= (and b!4308814 (not c!732588)) b!4308820))

(assert (= (and b!4308814 res!1766018) b!4308832))

(assert (= (and b!4308814 res!1766019) b!4308828))

(assert (= (and b!4308834 res!1766025) b!4308833))

(assert (= (or b!4308814 b!4308833) bm!297570))

(assert (= (or b!4308811 b!4308812) bm!297557))

(assert (= (or b!4308831 b!4308814) bm!297571))

(assert (= (or b!4308831 b!4308814) bm!297560))

(assert (= (or b!4308815 b!4308832) bm!297554))

(assert (= (or b!4308817 b!4308814) bm!297568))

(assert (= (or b!4308831 b!4308814) bm!297556))

(assert (= (or b!4308831 b!4308814) bm!297572))

(assert (= (or b!4308839 b!4308834) bm!297576))

(assert (= (or b!4308811 b!4308818) bm!297550))

(assert (= (or b!4308831 b!4308814) bm!297573))

(assert (= (or b!4308831 b!4308818) bm!297569))

(assert (= (or b!4308811 b!4308812) bm!297552))

(assert (= (or b!4308813 b!4308828) bm!297566))

(assert (= (or b!4308831 b!4308818) bm!297551))

(assert (= (or b!4308831 b!4308814) bm!297561))

(assert (= (or b!4308811 b!4308810) bm!297549))

(assert (= (or b!4308831 b!4308814) bm!297563))

(assert (= (or bm!297562 bm!297570) bm!297558))

(assert (= (or b!4308831 b!4308814) bm!297567))

(assert (= (or b!4308831 b!4308818) bm!297553))

(assert (= (or b!4308831 b!4308814) bm!297555))

(assert (= (or b!4308831 b!4308814) bm!297564))

(assert (= (or b!4308831 b!4308814) bm!297575))

(assert (= (or b!4308831 b!4308818) bm!297574))

(assert (= (or b!4308831 b!4308814) bm!297565))

(assert (= (or b!4308831 b!4308814) bm!297559))

(assert (= (and b!4308821 res!1766028) b!4308822))

(assert (= (and b!4308822 res!1766023) b!4308823))

(assert (= (and b!4308823 res!1766027) b!4308819))

(assert (= (and b!4308829 condMapEmpty!20758) mapIsEmpty!20758))

(assert (= (and b!4308829 (not condMapEmpty!20758)) mapNonEmpty!20758))

(assert (= b!4308826 b!4308829))

(assert (= b!4308827 b!4308826))

(assert (= b!4308830 b!4308827))

(assert (= (and b!4308835 ((_ is LongMap!4645) (v!42280 (underlying!9520 thiss!42308)))) b!4308830))

(assert (= b!4308837 b!4308835))

(assert (= (and start!414050 ((_ is HashMap!4551) thiss!42308)) b!4308837))

(declare-fun m!4901933 () Bool)

(assert (=> bm!297565 m!4901933))

(declare-fun m!4901935 () Bool)

(assert (=> bm!297568 m!4901935))

(declare-fun m!4901937 () Bool)

(assert (=> b!4308821 m!4901937))

(declare-fun m!4901939 () Bool)

(assert (=> b!4308821 m!4901939))

(declare-fun m!4901941 () Bool)

(assert (=> b!4308821 m!4901941))

(declare-fun m!4901943 () Bool)

(assert (=> bm!297560 m!4901943))

(declare-fun m!4901945 () Bool)

(assert (=> bm!297569 m!4901945))

(declare-fun m!4901947 () Bool)

(assert (=> bm!297558 m!4901947))

(declare-fun m!4901949 () Bool)

(assert (=> bm!297551 m!4901949))

(declare-fun m!4901951 () Bool)

(assert (=> bm!297549 m!4901951))

(declare-fun m!4901953 () Bool)

(assert (=> bm!297573 m!4901953))

(declare-fun m!4901955 () Bool)

(assert (=> bm!297553 m!4901955))

(declare-fun m!4901957 () Bool)

(assert (=> bm!297556 m!4901957))

(declare-fun m!4901959 () Bool)

(assert (=> b!4308814 m!4901959))

(declare-fun m!4901961 () Bool)

(assert (=> b!4308814 m!4901961))

(declare-fun m!4901963 () Bool)

(assert (=> bm!297574 m!4901963))

(declare-fun m!4901965 () Bool)

(assert (=> bm!297557 m!4901965))

(declare-fun m!4901967 () Bool)

(assert (=> bm!297561 m!4901967))

(declare-fun m!4901969 () Bool)

(assert (=> b!4308819 m!4901969))

(assert (=> b!4308819 m!4901969))

(declare-fun m!4901971 () Bool)

(assert (=> b!4308819 m!4901971))

(declare-fun m!4901973 () Bool)

(assert (=> bm!297564 m!4901973))

(declare-fun m!4901975 () Bool)

(assert (=> b!4308825 m!4901975))

(declare-fun m!4901977 () Bool)

(assert (=> bm!297559 m!4901977))

(declare-fun m!4901979 () Bool)

(assert (=> mapNonEmpty!20758 m!4901979))

(declare-fun m!4901981 () Bool)

(assert (=> bm!297550 m!4901981))

(declare-fun m!4901983 () Bool)

(assert (=> bm!297572 m!4901983))

(declare-fun m!4901985 () Bool)

(assert (=> bm!297576 m!4901985))

(declare-fun m!4901987 () Bool)

(assert (=> bm!297567 m!4901987))

(declare-fun m!4901989 () Bool)

(assert (=> b!4308826 m!4901989))

(declare-fun m!4901991 () Bool)

(assert (=> b!4308826 m!4901991))

(declare-fun m!4901993 () Bool)

(assert (=> b!4308812 m!4901993))

(declare-fun m!4901995 () Bool)

(assert (=> bm!297566 m!4901995))

(declare-fun m!4901997 () Bool)

(assert (=> b!4308816 m!4901997))

(declare-fun m!4901999 () Bool)

(assert (=> bm!297571 m!4901999))

(declare-fun m!4902001 () Bool)

(assert (=> bm!297563 m!4902001))

(declare-fun m!4902003 () Bool)

(assert (=> b!4308831 m!4902003))

(declare-fun m!4902005 () Bool)

(assert (=> b!4308831 m!4902005))

(declare-fun m!4902007 () Bool)

(assert (=> b!4308831 m!4902007))

(declare-fun m!4902009 () Bool)

(assert (=> b!4308838 m!4902009))

(declare-fun m!4902011 () Bool)

(assert (=> bm!297555 m!4902011))

(declare-fun m!4902013 () Bool)

(assert (=> bm!297575 m!4902013))

(declare-fun m!4902015 () Bool)

(assert (=> b!4308822 m!4902015))

(declare-fun m!4902017 () Bool)

(assert (=> bm!297554 m!4902017))

(declare-fun m!4902019 () Bool)

(assert (=> bm!297552 m!4902019))

(check-sat (not bm!297569) (not b_next!129243) (not bm!297558) (not bm!297554) (not bm!297574) (not b!4308819) (not bm!297565) (not b_next!129245) (not bm!297550) (not mapNonEmpty!20758) (not bm!297560) (not bm!297568) (not b!4308822) tp_is_empty!23703 b_and!339953 (not b!4308814) (not bm!297561) (not b!4308838) (not bm!297556) (not b!4308826) (not b!4308831) (not bm!297563) b_and!339955 (not bm!297575) (not bm!297549) (not bm!297564) (not bm!297557) (not bm!297572) (not bm!297571) (not bm!297555) (not bm!297559) (not b!4308816) (not bm!297566) (not b!4308821) (not b!4308825) tp_is_empty!23701 (not bm!297553) (not bm!297551) (not b!4308812) (not bm!297576) (not b!4308829) (not bm!297552) (not bm!297573) (not bm!297567))
(check-sat b_and!339953 b_and!339955 (not b_next!129245) (not b_next!129243))
