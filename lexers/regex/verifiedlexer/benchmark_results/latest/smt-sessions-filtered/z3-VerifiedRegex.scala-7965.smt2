; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413652 () Bool)

(assert start!413652)

(declare-fun b!4305932 () Bool)

(declare-fun b_free!128403 () Bool)

(declare-fun b_next!129107 () Bool)

(assert (=> b!4305932 (= b_free!128403 (not b_next!129107))))

(declare-fun tp!1323284 () Bool)

(declare-fun b_and!339803 () Bool)

(assert (=> b!4305932 (= tp!1323284 b_and!339803)))

(declare-fun b!4305926 () Bool)

(declare-fun b_free!128405 () Bool)

(declare-fun b_next!129109 () Bool)

(assert (=> b!4305926 (= b_free!128405 (not b_next!129109))))

(declare-fun tp!1323288 () Bool)

(declare-fun b_and!339805 () Bool)

(assert (=> b!4305926 (= tp!1323288 b_and!339805)))

(declare-fun b!4305914 () Bool)

(declare-fun e!2677389 () Bool)

(declare-fun e!2677393 () Bool)

(assert (=> b!4305914 (= e!2677389 e!2677393)))

(declare-fun b!4305915 () Bool)

(declare-fun e!2677390 () Bool)

(declare-fun e!2677392 () Bool)

(assert (=> b!4305915 (= e!2677390 e!2677392)))

(declare-fun res!1764884 () Bool)

(assert (=> b!4305915 (=> res!1764884 e!2677392)))

(declare-fun e!2677394 () Bool)

(assert (=> b!4305915 (= res!1764884 e!2677394)))

(declare-fun res!1764882 () Bool)

(assert (=> b!4305915 (=> (not res!1764882) (not e!2677394))))

(declare-fun e!2677402 () Bool)

(assert (=> b!4305915 (= res!1764882 e!2677402)))

(declare-fun res!1764879 () Bool)

(assert (=> b!4305915 (=> res!1764879 e!2677402)))

(declare-fun lt!1526886 () Bool)

(assert (=> b!4305915 (= res!1764879 (not lt!1526886))))

(declare-datatypes ((V!9476 0))(
  ( (V!9477 (val!15677 Int)) )
))
(declare-datatypes ((K!9274 0))(
  ( (K!9275 (val!15678 Int)) )
))
(declare-datatypes ((tuple2!46330 0))(
  ( (tuple2!46331 (_1!26444 K!9274) (_2!26444 V!9476)) )
))
(declare-datatypes ((List!48225 0))(
  ( (Nil!48101) (Cons!48101 (h!53528 tuple2!46330) (t!355010 List!48225)) )
))
(declare-datatypes ((tuple2!46332 0))(
  ( (tuple2!46333 (_1!26445 (_ BitVec 64)) (_2!26445 List!48225)) )
))
(declare-datatypes ((List!48226 0))(
  ( (Nil!48102) (Cons!48102 (h!53529 tuple2!46332) (t!355011 List!48226)) )
))
(declare-datatypes ((ListLongMap!931 0))(
  ( (ListLongMap!932 (toList!2320 List!48226)) )
))
(declare-fun lt!1526881 () ListLongMap!931)

(declare-fun lt!1526885 () (_ BitVec 64))

(declare-fun contains!10036 (ListLongMap!931 (_ BitVec 64)) Bool)

(assert (=> b!4305915 (= lt!1526886 (contains!10036 lt!1526881 lt!1526885))))

(declare-fun b!4305916 () Bool)

(declare-fun lambda!132466 () Int)

(declare-fun forall!8694 (List!48226 Int) Bool)

(assert (=> b!4305916 (= e!2677392 (forall!8694 (toList!2320 lt!1526881) lambda!132466))))

(declare-fun b!4305917 () Bool)

(declare-fun res!1764885 () Bool)

(assert (=> b!4305917 (=> res!1764885 e!2677390)))

(declare-fun lt!1526880 () List!48225)

(declare-datatypes ((array!16586 0))(
  ( (array!16587 (arr!7407 (Array (_ BitVec 32) (_ BitVec 64))) (size!35446 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4527 0))(
  ( (HashableExt!4526 (__x!29858 Int)) )
))
(declare-datatypes ((array!16588 0))(
  ( (array!16589 (arr!7408 (Array (_ BitVec 32) List!48225)) (size!35447 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9222 0))(
  ( (LongMapFixedSize!9223 (defaultEntry!4996 Int) (mask!13145 (_ BitVec 32)) (extraKeys!4860 (_ BitVec 32)) (zeroValue!4870 List!48225) (minValue!4870 List!48225) (_size!9265 (_ BitVec 32)) (_keys!4911 array!16586) (_values!4892 array!16588) (_vacant!4672 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18253 0))(
  ( (Cell!18254 (v!42158 LongMapFixedSize!9222)) )
))
(declare-datatypes ((MutLongMap!4611 0))(
  ( (LongMap!4611 (underlying!9451 Cell!18253)) (MutLongMapExt!4610 (__x!29859 Int)) )
))
(declare-datatypes ((Cell!18255 0))(
  ( (Cell!18256 (v!42159 MutLongMap!4611)) )
))
(declare-datatypes ((MutableMap!4517 0))(
  ( (MutableMapExt!4516 (__x!29860 Int)) (HashMap!4517 (underlying!9452 Cell!18255) (hashF!6601 Hashable!4527) (_size!9266 (_ BitVec 32)) (defaultValue!4688 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4517)

(declare-fun allKeysSameHash!158 (List!48225 (_ BitVec 64) Hashable!4527) Bool)

(assert (=> b!4305917 (= res!1764885 (not (allKeysSameHash!158 lt!1526880 lt!1526885 (hashF!6601 thiss!42308))))))

(declare-fun b!4305918 () Bool)

(declare-fun e!2677388 () Bool)

(declare-fun e!2677403 () Bool)

(declare-fun lt!1526891 () MutLongMap!4611)

(get-info :version)

(assert (=> b!4305918 (= e!2677388 (and e!2677403 ((_ is LongMap!4611) lt!1526891)))))

(assert (=> b!4305918 (= lt!1526891 (v!42159 (underlying!9452 thiss!42308)))))

(declare-fun b!4305919 () Bool)

(declare-fun e!2677401 () Bool)

(assert (=> b!4305919 (= e!2677401 (not e!2677390))))

(declare-fun res!1764883 () Bool)

(assert (=> b!4305919 (=> res!1764883 e!2677390)))

(assert (=> b!4305919 (= res!1764883 (not (forall!8694 (toList!2320 lt!1526881) lambda!132466)))))

(declare-fun e!2677399 () Bool)

(assert (=> b!4305919 e!2677399))

(declare-fun res!1764876 () Bool)

(assert (=> b!4305919 (=> (not res!1764876) (not e!2677399))))

(declare-fun lt!1526889 () ListLongMap!931)

(assert (=> b!4305919 (= res!1764876 (forall!8694 (toList!2320 lt!1526889) lambda!132466))))

(declare-fun +!221 (ListLongMap!931 tuple2!46332) ListLongMap!931)

(assert (=> b!4305919 (= lt!1526889 (+!221 lt!1526881 (tuple2!46333 lt!1526885 lt!1526880)))))

(declare-datatypes ((Unit!67109 0))(
  ( (Unit!67110) )
))
(declare-fun lt!1526882 () Unit!67109)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!125 (ListLongMap!931 (_ BitVec 64) List!48225 Hashable!4527) Unit!67109)

(assert (=> b!4305919 (= lt!1526882 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!125 lt!1526881 lt!1526885 lt!1526880 (hashF!6601 thiss!42308)))))

(declare-fun lt!1526884 () Unit!67109)

(declare-fun e!2677391 () Unit!67109)

(assert (=> b!4305919 (= lt!1526884 e!2677391)))

(declare-fun c!732092 () Bool)

(declare-fun lt!1526887 () List!48225)

(declare-fun isEmpty!28062 (List!48225) Bool)

(assert (=> b!4305919 (= c!732092 (not (isEmpty!28062 lt!1526887)))))

(declare-fun b!4305920 () Bool)

(declare-fun res!1764880 () Bool)

(assert (=> b!4305920 (=> res!1764880 e!2677392)))

(declare-fun noDuplicateKeys!189 (List!48225) Bool)

(assert (=> b!4305920 (= res!1764880 (not (noDuplicateKeys!189 lt!1526880)))))

(declare-fun b!4305921 () Bool)

(declare-fun res!1764874 () Bool)

(assert (=> b!4305921 (=> res!1764874 e!2677390)))

(declare-fun key!2048 () K!9274)

(declare-datatypes ((ListMap!1603 0))(
  ( (ListMap!1604 (toList!2321 List!48225)) )
))
(declare-fun contains!10037 (ListMap!1603 K!9274) Bool)

(declare-fun extractMap!301 (List!48226) ListMap!1603)

(assert (=> b!4305921 (= res!1764874 (contains!10037 (extractMap!301 (toList!2320 lt!1526881)) key!2048))))

(declare-fun b!4305922 () Bool)

(declare-fun e!2677396 () Bool)

(declare-fun e!2677395 () Bool)

(assert (=> b!4305922 (= e!2677396 e!2677395)))

(declare-fun res!1764875 () Bool)

(assert (=> b!4305922 (=> (not res!1764875) (not e!2677395))))

(declare-fun contains!10038 (MutableMap!4517 K!9274) Bool)

(assert (=> b!4305922 (= res!1764875 (not (contains!10038 thiss!42308 key!2048)))))

(declare-fun map!10074 (MutLongMap!4611) ListLongMap!931)

(assert (=> b!4305922 (= lt!1526881 (map!10074 (v!42159 (underlying!9452 thiss!42308))))))

(declare-fun lt!1526883 () ListMap!1603)

(declare-fun map!10075 (MutableMap!4517) ListMap!1603)

(assert (=> b!4305922 (= lt!1526883 (map!10075 thiss!42308))))

(declare-fun res!1764881 () Bool)

(assert (=> start!413652 (=> (not res!1764881) (not e!2677396))))

(assert (=> start!413652 (= res!1764881 ((_ is HashMap!4517) thiss!42308))))

(assert (=> start!413652 e!2677396))

(declare-fun e!2677397 () Bool)

(assert (=> start!413652 e!2677397))

(declare-fun tp_is_empty!23565 () Bool)

(assert (=> start!413652 tp_is_empty!23565))

(declare-fun tp_is_empty!23567 () Bool)

(assert (=> start!413652 tp_is_empty!23567))

(declare-fun b!4305923 () Bool)

(declare-fun apply!10957 (ListLongMap!931 (_ BitVec 64)) List!48225)

(assert (=> b!4305923 (= e!2677402 (not (= lt!1526887 (apply!10957 lt!1526881 lt!1526885))))))

(declare-fun b!4305924 () Bool)

(declare-fun res!1764877 () Bool)

(assert (=> b!4305924 (=> res!1764877 e!2677390)))

(declare-fun allKeysSameHashInMap!308 (ListLongMap!931 Hashable!4527) Bool)

(assert (=> b!4305924 (= res!1764877 (not (allKeysSameHashInMap!308 lt!1526881 (hashF!6601 thiss!42308))))))

(declare-fun b!4305925 () Bool)

(declare-fun lt!1526890 () Unit!67109)

(assert (=> b!4305925 (= e!2677391 lt!1526890)))

(declare-fun lt!1526888 () Unit!67109)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!149 (List!48226 (_ BitVec 64) List!48225 Hashable!4527) Unit!67109)

(assert (=> b!4305925 (= lt!1526888 (lemmaInLongMapAllKeySameHashThenForTuple!149 (toList!2320 lt!1526881) lt!1526885 lt!1526887 (hashF!6601 thiss!42308)))))

(assert (=> b!4305925 (allKeysSameHash!158 lt!1526887 lt!1526885 (hashF!6601 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!143 (List!48225 K!9274 (_ BitVec 64) Hashable!4527) Unit!67109)

(assert (=> b!4305925 (= lt!1526890 (lemmaRemovePairForKeyPreservesHash!143 lt!1526887 key!2048 lt!1526885 (hashF!6601 thiss!42308)))))

(declare-fun removePairForKey!183 (List!48225 K!9274) List!48225)

(assert (=> b!4305925 (allKeysSameHash!158 (removePairForKey!183 lt!1526887 key!2048) lt!1526885 (hashF!6601 thiss!42308))))

(assert (=> b!4305926 (= e!2677397 (and e!2677388 tp!1323288))))

(declare-fun mapNonEmpty!20635 () Bool)

(declare-fun mapRes!20635 () Bool)

(declare-fun tp!1323285 () Bool)

(declare-fun tp!1323286 () Bool)

(assert (=> mapNonEmpty!20635 (= mapRes!20635 (and tp!1323285 tp!1323286))))

(declare-fun mapKey!20635 () (_ BitVec 32))

(declare-fun mapRest!20635 () (Array (_ BitVec 32) List!48225))

(declare-fun mapValue!20635 () List!48225)

(assert (=> mapNonEmpty!20635 (= (arr!7408 (_values!4892 (v!42158 (underlying!9451 (v!42159 (underlying!9452 thiss!42308)))))) (store mapRest!20635 mapKey!20635 mapValue!20635))))

(declare-fun b!4305927 () Bool)

(declare-fun e!2677398 () Bool)

(declare-fun tp!1323290 () Bool)

(assert (=> b!4305927 (= e!2677398 (and tp!1323290 mapRes!20635))))

(declare-fun condMapEmpty!20635 () Bool)

(declare-fun mapDefault!20635 () List!48225)

(assert (=> b!4305927 (= condMapEmpty!20635 (= (arr!7408 (_values!4892 (v!42158 (underlying!9451 (v!42159 (underlying!9452 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48225)) mapDefault!20635)))))

(declare-fun b!4305928 () Bool)

(assert (=> b!4305928 (= e!2677403 e!2677389)))

(declare-fun b!4305929 () Bool)

(assert (=> b!4305929 (= e!2677399 (allKeysSameHashInMap!308 lt!1526889 (hashF!6601 thiss!42308)))))

(declare-fun b!4305930 () Bool)

(declare-fun Unit!67111 () Unit!67109)

(assert (=> b!4305930 (= e!2677391 Unit!67111)))

(declare-fun b!4305931 () Bool)

(declare-fun e!2677404 () List!48225)

(declare-fun apply!10958 (MutLongMap!4611 (_ BitVec 64)) List!48225)

(assert (=> b!4305931 (= e!2677404 (apply!10958 (v!42159 (underlying!9452 thiss!42308)) lt!1526885))))

(declare-fun mapIsEmpty!20635 () Bool)

(assert (=> mapIsEmpty!20635 mapRes!20635))

(declare-fun tp!1323287 () Bool)

(declare-fun tp!1323289 () Bool)

(declare-fun array_inv!5313 (array!16586) Bool)

(declare-fun array_inv!5314 (array!16588) Bool)

(assert (=> b!4305932 (= e!2677393 (and tp!1323284 tp!1323287 tp!1323289 (array_inv!5313 (_keys!4911 (v!42158 (underlying!9451 (v!42159 (underlying!9452 thiss!42308)))))) (array_inv!5314 (_values!4892 (v!42158 (underlying!9451 (v!42159 (underlying!9452 thiss!42308)))))) e!2677398))))

(declare-fun b!4305933 () Bool)

(assert (=> b!4305933 (= e!2677404 Nil!48101)))

(declare-fun b!4305934 () Bool)

(assert (=> b!4305934 (= e!2677394 (or lt!1526886 (not (= lt!1526887 Nil!48101))))))

(declare-fun b!4305935 () Bool)

(declare-fun res!1764878 () Bool)

(assert (=> b!4305935 (=> (not res!1764878) (not e!2677396))))

(declare-fun valid!3597 (MutableMap!4517) Bool)

(assert (=> b!4305935 (= res!1764878 (valid!3597 thiss!42308))))

(declare-fun b!4305936 () Bool)

(assert (=> b!4305936 (= e!2677395 e!2677401)))

(declare-fun res!1764886 () Bool)

(assert (=> b!4305936 (=> (not res!1764886) (not e!2677401))))

(declare-datatypes ((tuple2!46334 0))(
  ( (tuple2!46335 (_1!26446 Bool) (_2!26446 MutLongMap!4611)) )
))
(declare-fun update!391 (MutLongMap!4611 (_ BitVec 64) List!48225) tuple2!46334)

(assert (=> b!4305936 (= res!1764886 (_1!26446 (update!391 (v!42159 (underlying!9452 thiss!42308)) lt!1526885 lt!1526880)))))

(declare-fun v!9179 () V!9476)

(assert (=> b!4305936 (= lt!1526880 (Cons!48101 (tuple2!46331 key!2048 v!9179) lt!1526887))))

(assert (=> b!4305936 (= lt!1526887 e!2677404)))

(declare-fun c!732091 () Bool)

(declare-fun contains!10039 (MutLongMap!4611 (_ BitVec 64)) Bool)

(assert (=> b!4305936 (= c!732091 (contains!10039 (v!42159 (underlying!9452 thiss!42308)) lt!1526885))))

(declare-fun hash!931 (Hashable!4527 K!9274) (_ BitVec 64))

(assert (=> b!4305936 (= lt!1526885 (hash!931 (hashF!6601 thiss!42308) key!2048))))

(assert (= (and start!413652 res!1764881) b!4305935))

(assert (= (and b!4305935 res!1764878) b!4305922))

(assert (= (and b!4305922 res!1764875) b!4305936))

(assert (= (and b!4305936 c!732091) b!4305931))

(assert (= (and b!4305936 (not c!732091)) b!4305933))

(assert (= (and b!4305936 res!1764886) b!4305919))

(assert (= (and b!4305919 c!732092) b!4305925))

(assert (= (and b!4305919 (not c!732092)) b!4305930))

(assert (= (and b!4305919 res!1764876) b!4305929))

(assert (= (and b!4305919 (not res!1764883)) b!4305924))

(assert (= (and b!4305924 (not res!1764877)) b!4305917))

(assert (= (and b!4305917 (not res!1764885)) b!4305921))

(assert (= (and b!4305921 (not res!1764874)) b!4305915))

(assert (= (and b!4305915 (not res!1764879)) b!4305923))

(assert (= (and b!4305915 res!1764882) b!4305934))

(assert (= (and b!4305915 (not res!1764884)) b!4305920))

(assert (= (and b!4305920 (not res!1764880)) b!4305916))

(assert (= (and b!4305927 condMapEmpty!20635) mapIsEmpty!20635))

(assert (= (and b!4305927 (not condMapEmpty!20635)) mapNonEmpty!20635))

(assert (= b!4305932 b!4305927))

(assert (= b!4305914 b!4305932))

(assert (= b!4305928 b!4305914))

(assert (= (and b!4305918 ((_ is LongMap!4611) (v!42159 (underlying!9452 thiss!42308)))) b!4305928))

(assert (= b!4305926 b!4305918))

(assert (= (and start!413652 ((_ is HashMap!4517) thiss!42308)) b!4305926))

(declare-fun m!4898537 () Bool)

(assert (=> b!4305921 m!4898537))

(assert (=> b!4305921 m!4898537))

(declare-fun m!4898539 () Bool)

(assert (=> b!4305921 m!4898539))

(declare-fun m!4898541 () Bool)

(assert (=> b!4305920 m!4898541))

(declare-fun m!4898543 () Bool)

(assert (=> b!4305915 m!4898543))

(declare-fun m!4898545 () Bool)

(assert (=> b!4305916 m!4898545))

(declare-fun m!4898547 () Bool)

(assert (=> b!4305922 m!4898547))

(declare-fun m!4898549 () Bool)

(assert (=> b!4305922 m!4898549))

(declare-fun m!4898551 () Bool)

(assert (=> b!4305922 m!4898551))

(declare-fun m!4898553 () Bool)

(assert (=> b!4305932 m!4898553))

(declare-fun m!4898555 () Bool)

(assert (=> b!4305932 m!4898555))

(declare-fun m!4898557 () Bool)

(assert (=> mapNonEmpty!20635 m!4898557))

(declare-fun m!4898559 () Bool)

(assert (=> b!4305936 m!4898559))

(declare-fun m!4898561 () Bool)

(assert (=> b!4305936 m!4898561))

(declare-fun m!4898563 () Bool)

(assert (=> b!4305936 m!4898563))

(declare-fun m!4898565 () Bool)

(assert (=> b!4305917 m!4898565))

(declare-fun m!4898567 () Bool)

(assert (=> b!4305919 m!4898567))

(declare-fun m!4898569 () Bool)

(assert (=> b!4305919 m!4898569))

(assert (=> b!4305919 m!4898545))

(declare-fun m!4898571 () Bool)

(assert (=> b!4305919 m!4898571))

(declare-fun m!4898573 () Bool)

(assert (=> b!4305919 m!4898573))

(declare-fun m!4898575 () Bool)

(assert (=> b!4305924 m!4898575))

(declare-fun m!4898577 () Bool)

(assert (=> b!4305923 m!4898577))

(declare-fun m!4898579 () Bool)

(assert (=> b!4305925 m!4898579))

(declare-fun m!4898581 () Bool)

(assert (=> b!4305925 m!4898581))

(declare-fun m!4898583 () Bool)

(assert (=> b!4305925 m!4898583))

(declare-fun m!4898585 () Bool)

(assert (=> b!4305925 m!4898585))

(assert (=> b!4305925 m!4898583))

(declare-fun m!4898587 () Bool)

(assert (=> b!4305925 m!4898587))

(declare-fun m!4898589 () Bool)

(assert (=> b!4305931 m!4898589))

(declare-fun m!4898591 () Bool)

(assert (=> b!4305929 m!4898591))

(declare-fun m!4898593 () Bool)

(assert (=> b!4305935 m!4898593))

(check-sat (not b!4305916) (not b!4305917) tp_is_empty!23567 (not b!4305923) (not b!4305915) (not b!4305922) (not b!4305924) (not b!4305931) (not b!4305935) (not b!4305927) (not b!4305921) (not b!4305932) tp_is_empty!23565 b_and!339805 (not b!4305920) (not b!4305925) (not mapNonEmpty!20635) b_and!339803 (not b!4305929) (not b_next!129107) (not b!4305919) (not b!4305936) (not b_next!129109))
(check-sat b_and!339803 b_and!339805 (not b_next!129109) (not b_next!129107))
