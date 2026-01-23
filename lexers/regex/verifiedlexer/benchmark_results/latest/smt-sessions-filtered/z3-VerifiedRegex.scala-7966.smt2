; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413656 () Bool)

(assert start!413656)

(declare-fun b!4306070 () Bool)

(declare-fun b_free!128411 () Bool)

(declare-fun b_next!129115 () Bool)

(assert (=> b!4306070 (= b_free!128411 (not b_next!129115))))

(declare-fun tp!1323328 () Bool)

(declare-fun b_and!339811 () Bool)

(assert (=> b!4306070 (= tp!1323328 b_and!339811)))

(declare-fun b!4306064 () Bool)

(declare-fun b_free!128413 () Bool)

(declare-fun b_next!129117 () Bool)

(assert (=> b!4306064 (= b_free!128413 (not b_next!129117))))

(declare-fun tp!1323330 () Bool)

(declare-fun b_and!339813 () Bool)

(assert (=> b!4306064 (= tp!1323330 b_and!339813)))

(declare-fun b!4306052 () Bool)

(declare-fun e!2677501 () Bool)

(declare-fun e!2677505 () Bool)

(assert (=> b!4306052 (= e!2677501 e!2677505)))

(declare-fun res!1764961 () Bool)

(assert (=> b!4306052 (=> res!1764961 e!2677505)))

(declare-fun e!2677504 () Bool)

(assert (=> b!4306052 (= res!1764961 e!2677504)))

(declare-fun res!1764958 () Bool)

(assert (=> b!4306052 (=> (not res!1764958) (not e!2677504))))

(declare-fun e!2677490 () Bool)

(assert (=> b!4306052 (= res!1764958 e!2677490)))

(declare-fun res!1764953 () Bool)

(assert (=> b!4306052 (=> res!1764953 e!2677490)))

(declare-fun lt!1526957 () Bool)

(assert (=> b!4306052 (= res!1764953 (not lt!1526957))))

(declare-datatypes ((V!9481 0))(
  ( (V!9482 (val!15681 Int)) )
))
(declare-datatypes ((K!9279 0))(
  ( (K!9280 (val!15682 Int)) )
))
(declare-datatypes ((tuple2!46342 0))(
  ( (tuple2!46343 (_1!26450 K!9279) (_2!26450 V!9481)) )
))
(declare-datatypes ((List!48229 0))(
  ( (Nil!48105) (Cons!48105 (h!53532 tuple2!46342) (t!355014 List!48229)) )
))
(declare-datatypes ((tuple2!46344 0))(
  ( (tuple2!46345 (_1!26451 (_ BitVec 64)) (_2!26451 List!48229)) )
))
(declare-datatypes ((List!48230 0))(
  ( (Nil!48106) (Cons!48106 (h!53533 tuple2!46344) (t!355015 List!48230)) )
))
(declare-datatypes ((ListLongMap!935 0))(
  ( (ListLongMap!936 (toList!2324 List!48230)) )
))
(declare-fun lt!1526955 () ListLongMap!935)

(declare-fun lt!1526961 () (_ BitVec 64))

(declare-fun contains!10044 (ListLongMap!935 (_ BitVec 64)) Bool)

(assert (=> b!4306052 (= lt!1526957 (contains!10044 lt!1526955 lt!1526961))))

(declare-fun b!4306053 () Bool)

(declare-fun e!2677502 () Bool)

(assert (=> b!4306053 (= e!2677502 (not e!2677501))))

(declare-fun res!1764959 () Bool)

(assert (=> b!4306053 (=> res!1764959 e!2677501)))

(declare-fun lambda!132476 () Int)

(declare-fun forall!8696 (List!48230 Int) Bool)

(assert (=> b!4306053 (= res!1764959 (not (forall!8696 (toList!2324 lt!1526955) lambda!132476)))))

(declare-fun e!2677506 () Bool)

(assert (=> b!4306053 e!2677506))

(declare-fun res!1764954 () Bool)

(assert (=> b!4306053 (=> (not res!1764954) (not e!2677506))))

(declare-fun lt!1526954 () ListLongMap!935)

(assert (=> b!4306053 (= res!1764954 (forall!8696 (toList!2324 lt!1526954) lambda!132476))))

(declare-fun lt!1526958 () List!48229)

(declare-fun +!223 (ListLongMap!935 tuple2!46344) ListLongMap!935)

(assert (=> b!4306053 (= lt!1526954 (+!223 lt!1526955 (tuple2!46345 lt!1526961 lt!1526958)))))

(declare-datatypes ((Unit!67115 0))(
  ( (Unit!67116) )
))
(declare-fun lt!1526963 () Unit!67115)

(declare-datatypes ((array!16594 0))(
  ( (array!16595 (arr!7411 (Array (_ BitVec 32) (_ BitVec 64))) (size!35450 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4529 0))(
  ( (HashableExt!4528 (__x!29864 Int)) )
))
(declare-datatypes ((array!16596 0))(
  ( (array!16597 (arr!7412 (Array (_ BitVec 32) List!48229)) (size!35451 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9226 0))(
  ( (LongMapFixedSize!9227 (defaultEntry!4998 Int) (mask!13148 (_ BitVec 32)) (extraKeys!4862 (_ BitVec 32)) (zeroValue!4872 List!48229) (minValue!4872 List!48229) (_size!9269 (_ BitVec 32)) (_keys!4913 array!16594) (_values!4894 array!16596) (_vacant!4674 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18261 0))(
  ( (Cell!18262 (v!42162 LongMapFixedSize!9226)) )
))
(declare-datatypes ((MutLongMap!4613 0))(
  ( (LongMap!4613 (underlying!9455 Cell!18261)) (MutLongMapExt!4612 (__x!29865 Int)) )
))
(declare-datatypes ((Cell!18263 0))(
  ( (Cell!18264 (v!42163 MutLongMap!4613)) )
))
(declare-datatypes ((MutableMap!4519 0))(
  ( (MutableMapExt!4518 (__x!29866 Int)) (HashMap!4519 (underlying!9456 Cell!18263) (hashF!6603 Hashable!4529) (_size!9270 (_ BitVec 32)) (defaultValue!4690 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4519)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!127 (ListLongMap!935 (_ BitVec 64) List!48229 Hashable!4529) Unit!67115)

(assert (=> b!4306053 (= lt!1526963 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!127 lt!1526955 lt!1526961 lt!1526958 (hashF!6603 thiss!42308)))))

(declare-fun lt!1526962 () Unit!67115)

(declare-fun e!2677500 () Unit!67115)

(assert (=> b!4306053 (= lt!1526962 e!2677500)))

(declare-fun c!732103 () Bool)

(declare-fun lt!1526952 () List!48229)

(declare-fun isEmpty!28064 (List!48229) Bool)

(assert (=> b!4306053 (= c!732103 (not (isEmpty!28064 lt!1526952)))))

(declare-fun b!4306054 () Bool)

(declare-fun res!1764962 () Bool)

(assert (=> b!4306054 (=> res!1764962 e!2677501)))

(declare-fun key!2048 () K!9279)

(declare-datatypes ((ListMap!1607 0))(
  ( (ListMap!1608 (toList!2325 List!48229)) )
))
(declare-fun contains!10045 (ListMap!1607 K!9279) Bool)

(declare-fun extractMap!303 (List!48230) ListMap!1607)

(assert (=> b!4306054 (= res!1764962 (contains!10045 (extractMap!303 (toList!2324 lt!1526955)) key!2048))))

(declare-fun b!4306055 () Bool)

(declare-fun e!2677495 () Bool)

(declare-fun e!2677496 () Bool)

(declare-fun lt!1526956 () MutLongMap!4613)

(get-info :version)

(assert (=> b!4306055 (= e!2677495 (and e!2677496 ((_ is LongMap!4613) lt!1526956)))))

(assert (=> b!4306055 (= lt!1526956 (v!42163 (underlying!9456 thiss!42308)))))

(declare-fun mapNonEmpty!20641 () Bool)

(declare-fun mapRes!20641 () Bool)

(declare-fun tp!1323326 () Bool)

(declare-fun tp!1323331 () Bool)

(assert (=> mapNonEmpty!20641 (= mapRes!20641 (and tp!1323326 tp!1323331))))

(declare-fun mapRest!20641 () (Array (_ BitVec 32) List!48229))

(declare-fun mapKey!20641 () (_ BitVec 32))

(declare-fun mapValue!20641 () List!48229)

(assert (=> mapNonEmpty!20641 (= (arr!7412 (_values!4894 (v!42162 (underlying!9455 (v!42163 (underlying!9456 thiss!42308)))))) (store mapRest!20641 mapKey!20641 mapValue!20641))))

(declare-fun b!4306056 () Bool)

(declare-fun e!2677492 () Bool)

(assert (=> b!4306056 (= e!2677492 e!2677502)))

(declare-fun res!1764960 () Bool)

(assert (=> b!4306056 (=> (not res!1764960) (not e!2677502))))

(declare-datatypes ((tuple2!46346 0))(
  ( (tuple2!46347 (_1!26452 Bool) (_2!26452 MutLongMap!4613)) )
))
(declare-fun update!393 (MutLongMap!4613 (_ BitVec 64) List!48229) tuple2!46346)

(assert (=> b!4306056 (= res!1764960 (_1!26452 (update!393 (v!42163 (underlying!9456 thiss!42308)) lt!1526961 lt!1526958)))))

(declare-fun v!9179 () V!9481)

(assert (=> b!4306056 (= lt!1526958 (Cons!48105 (tuple2!46343 key!2048 v!9179) lt!1526952))))

(declare-fun e!2677493 () List!48229)

(assert (=> b!4306056 (= lt!1526952 e!2677493)))

(declare-fun c!732104 () Bool)

(declare-fun contains!10046 (MutLongMap!4613 (_ BitVec 64)) Bool)

(assert (=> b!4306056 (= c!732104 (contains!10046 (v!42163 (underlying!9456 thiss!42308)) lt!1526961))))

(declare-fun hash!933 (Hashable!4529 K!9279) (_ BitVec 64))

(assert (=> b!4306056 (= lt!1526961 (hash!933 (hashF!6603 thiss!42308) key!2048))))

(declare-fun b!4306057 () Bool)

(declare-fun res!1764952 () Bool)

(assert (=> b!4306057 (=> res!1764952 e!2677501)))

(declare-fun allKeysSameHash!160 (List!48229 (_ BitVec 64) Hashable!4529) Bool)

(assert (=> b!4306057 (= res!1764952 (not (allKeysSameHash!160 lt!1526958 lt!1526961 (hashF!6603 thiss!42308))))))

(declare-fun b!4306058 () Bool)

(declare-fun apply!10961 (MutLongMap!4613 (_ BitVec 64)) List!48229)

(assert (=> b!4306058 (= e!2677493 (apply!10961 (v!42163 (underlying!9456 thiss!42308)) lt!1526961))))

(declare-fun b!4306059 () Bool)

(assert (=> b!4306059 (= e!2677505 true)))

(declare-fun b!4306060 () Bool)

(declare-fun allKeysSameHashInMap!310 (ListLongMap!935 Hashable!4529) Bool)

(assert (=> b!4306060 (= e!2677506 (allKeysSameHashInMap!310 lt!1526954 (hashF!6603 thiss!42308)))))

(declare-fun b!4306061 () Bool)

(assert (=> b!4306061 (= e!2677493 Nil!48105)))

(declare-fun b!4306062 () Bool)

(declare-fun e!2677497 () Bool)

(assert (=> b!4306062 (= e!2677497 e!2677492)))

(declare-fun res!1764956 () Bool)

(assert (=> b!4306062 (=> (not res!1764956) (not e!2677492))))

(declare-fun contains!10047 (MutableMap!4519 K!9279) Bool)

(assert (=> b!4306062 (= res!1764956 (not (contains!10047 thiss!42308 key!2048)))))

(declare-fun map!10079 (MutLongMap!4613) ListLongMap!935)

(assert (=> b!4306062 (= lt!1526955 (map!10079 (v!42163 (underlying!9456 thiss!42308))))))

(declare-fun lt!1526960 () ListMap!1607)

(declare-fun map!10080 (MutableMap!4519) ListMap!1607)

(assert (=> b!4306062 (= lt!1526960 (map!10080 thiss!42308))))

(declare-fun b!4306063 () Bool)

(declare-fun e!2677491 () Bool)

(declare-fun tp!1323329 () Bool)

(assert (=> b!4306063 (= e!2677491 (and tp!1323329 mapRes!20641))))

(declare-fun condMapEmpty!20641 () Bool)

(declare-fun mapDefault!20641 () List!48229)

(assert (=> b!4306063 (= condMapEmpty!20641 (= (arr!7412 (_values!4894 (v!42162 (underlying!9455 (v!42163 (underlying!9456 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48229)) mapDefault!20641)))))

(declare-fun e!2677494 () Bool)

(assert (=> b!4306064 (= e!2677494 (and e!2677495 tp!1323330))))

(declare-fun b!4306065 () Bool)

(declare-fun e!2677503 () Bool)

(assert (=> b!4306065 (= e!2677496 e!2677503)))

(declare-fun b!4306066 () Bool)

(declare-fun lt!1526959 () Unit!67115)

(assert (=> b!4306066 (= e!2677500 lt!1526959)))

(declare-fun lt!1526953 () Unit!67115)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!151 (List!48230 (_ BitVec 64) List!48229 Hashable!4529) Unit!67115)

(assert (=> b!4306066 (= lt!1526953 (lemmaInLongMapAllKeySameHashThenForTuple!151 (toList!2324 lt!1526955) lt!1526961 lt!1526952 (hashF!6603 thiss!42308)))))

(assert (=> b!4306066 (allKeysSameHash!160 lt!1526952 lt!1526961 (hashF!6603 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!145 (List!48229 K!9279 (_ BitVec 64) Hashable!4529) Unit!67115)

(assert (=> b!4306066 (= lt!1526959 (lemmaRemovePairForKeyPreservesHash!145 lt!1526952 key!2048 lt!1526961 (hashF!6603 thiss!42308)))))

(declare-fun removePairForKey!185 (List!48229 K!9279) List!48229)

(assert (=> b!4306066 (allKeysSameHash!160 (removePairForKey!185 lt!1526952 key!2048) lt!1526961 (hashF!6603 thiss!42308))))

(declare-fun b!4306067 () Bool)

(declare-fun e!2677498 () Bool)

(assert (=> b!4306067 (= e!2677503 e!2677498)))

(declare-fun b!4306068 () Bool)

(declare-fun res!1764955 () Bool)

(assert (=> b!4306068 (=> res!1764955 e!2677505)))

(declare-fun noDuplicateKeys!191 (List!48229) Bool)

(assert (=> b!4306068 (= res!1764955 (not (noDuplicateKeys!191 lt!1526958)))))

(declare-fun res!1764957 () Bool)

(assert (=> start!413656 (=> (not res!1764957) (not e!2677497))))

(assert (=> start!413656 (= res!1764957 ((_ is HashMap!4519) thiss!42308))))

(assert (=> start!413656 e!2677497))

(assert (=> start!413656 e!2677494))

(declare-fun tp_is_empty!23573 () Bool)

(assert (=> start!413656 tp_is_empty!23573))

(declare-fun tp_is_empty!23575 () Bool)

(assert (=> start!413656 tp_is_empty!23575))

(declare-fun b!4306069 () Bool)

(assert (=> b!4306069 (= e!2677504 (or lt!1526957 (not (= lt!1526952 Nil!48105))))))

(declare-fun tp!1323327 () Bool)

(declare-fun tp!1323332 () Bool)

(declare-fun array_inv!5317 (array!16594) Bool)

(declare-fun array_inv!5318 (array!16596) Bool)

(assert (=> b!4306070 (= e!2677498 (and tp!1323328 tp!1323327 tp!1323332 (array_inv!5317 (_keys!4913 (v!42162 (underlying!9455 (v!42163 (underlying!9456 thiss!42308)))))) (array_inv!5318 (_values!4894 (v!42162 (underlying!9455 (v!42163 (underlying!9456 thiss!42308)))))) e!2677491))))

(declare-fun mapIsEmpty!20641 () Bool)

(assert (=> mapIsEmpty!20641 mapRes!20641))

(declare-fun b!4306071 () Bool)

(declare-fun apply!10962 (ListLongMap!935 (_ BitVec 64)) List!48229)

(assert (=> b!4306071 (= e!2677490 (not (= lt!1526952 (apply!10962 lt!1526955 lt!1526961))))))

(declare-fun b!4306072 () Bool)

(declare-fun res!1764963 () Bool)

(assert (=> b!4306072 (=> res!1764963 e!2677501)))

(assert (=> b!4306072 (= res!1764963 (not (allKeysSameHashInMap!310 lt!1526955 (hashF!6603 thiss!42308))))))

(declare-fun b!4306073 () Bool)

(declare-fun Unit!67117 () Unit!67115)

(assert (=> b!4306073 (= e!2677500 Unit!67117)))

(declare-fun b!4306074 () Bool)

(declare-fun res!1764964 () Bool)

(assert (=> b!4306074 (=> (not res!1764964) (not e!2677497))))

(declare-fun valid!3599 (MutableMap!4519) Bool)

(assert (=> b!4306074 (= res!1764964 (valid!3599 thiss!42308))))

(assert (= (and start!413656 res!1764957) b!4306074))

(assert (= (and b!4306074 res!1764964) b!4306062))

(assert (= (and b!4306062 res!1764956) b!4306056))

(assert (= (and b!4306056 c!732104) b!4306058))

(assert (= (and b!4306056 (not c!732104)) b!4306061))

(assert (= (and b!4306056 res!1764960) b!4306053))

(assert (= (and b!4306053 c!732103) b!4306066))

(assert (= (and b!4306053 (not c!732103)) b!4306073))

(assert (= (and b!4306053 res!1764954) b!4306060))

(assert (= (and b!4306053 (not res!1764959)) b!4306072))

(assert (= (and b!4306072 (not res!1764963)) b!4306057))

(assert (= (and b!4306057 (not res!1764952)) b!4306054))

(assert (= (and b!4306054 (not res!1764962)) b!4306052))

(assert (= (and b!4306052 (not res!1764953)) b!4306071))

(assert (= (and b!4306052 res!1764958) b!4306069))

(assert (= (and b!4306052 (not res!1764961)) b!4306068))

(assert (= (and b!4306068 (not res!1764955)) b!4306059))

(assert (= (and b!4306063 condMapEmpty!20641) mapIsEmpty!20641))

(assert (= (and b!4306063 (not condMapEmpty!20641)) mapNonEmpty!20641))

(assert (= b!4306070 b!4306063))

(assert (= b!4306067 b!4306070))

(assert (= b!4306065 b!4306067))

(assert (= (and b!4306055 ((_ is LongMap!4613) (v!42163 (underlying!9456 thiss!42308)))) b!4306065))

(assert (= b!4306064 b!4306055))

(assert (= (and start!413656 ((_ is HashMap!4519) thiss!42308)) b!4306064))

(declare-fun m!4898653 () Bool)

(assert (=> b!4306074 m!4898653))

(declare-fun m!4898655 () Bool)

(assert (=> b!4306070 m!4898655))

(declare-fun m!4898657 () Bool)

(assert (=> b!4306070 m!4898657))

(declare-fun m!4898659 () Bool)

(assert (=> b!4306062 m!4898659))

(declare-fun m!4898661 () Bool)

(assert (=> b!4306062 m!4898661))

(declare-fun m!4898663 () Bool)

(assert (=> b!4306062 m!4898663))

(declare-fun m!4898665 () Bool)

(assert (=> b!4306052 m!4898665))

(declare-fun m!4898667 () Bool)

(assert (=> b!4306057 m!4898667))

(declare-fun m!4898669 () Bool)

(assert (=> b!4306072 m!4898669))

(declare-fun m!4898671 () Bool)

(assert (=> b!4306060 m!4898671))

(declare-fun m!4898673 () Bool)

(assert (=> b!4306058 m!4898673))

(declare-fun m!4898675 () Bool)

(assert (=> b!4306066 m!4898675))

(declare-fun m!4898677 () Bool)

(assert (=> b!4306066 m!4898677))

(declare-fun m!4898679 () Bool)

(assert (=> b!4306066 m!4898679))

(assert (=> b!4306066 m!4898675))

(declare-fun m!4898681 () Bool)

(assert (=> b!4306066 m!4898681))

(declare-fun m!4898683 () Bool)

(assert (=> b!4306066 m!4898683))

(declare-fun m!4898685 () Bool)

(assert (=> b!4306068 m!4898685))

(declare-fun m!4898687 () Bool)

(assert (=> mapNonEmpty!20641 m!4898687))

(declare-fun m!4898689 () Bool)

(assert (=> b!4306054 m!4898689))

(assert (=> b!4306054 m!4898689))

(declare-fun m!4898691 () Bool)

(assert (=> b!4306054 m!4898691))

(declare-fun m!4898693 () Bool)

(assert (=> b!4306056 m!4898693))

(declare-fun m!4898695 () Bool)

(assert (=> b!4306056 m!4898695))

(declare-fun m!4898697 () Bool)

(assert (=> b!4306056 m!4898697))

(declare-fun m!4898699 () Bool)

(assert (=> b!4306071 m!4898699))

(declare-fun m!4898701 () Bool)

(assert (=> b!4306053 m!4898701))

(declare-fun m!4898703 () Bool)

(assert (=> b!4306053 m!4898703))

(declare-fun m!4898705 () Bool)

(assert (=> b!4306053 m!4898705))

(declare-fun m!4898707 () Bool)

(assert (=> b!4306053 m!4898707))

(declare-fun m!4898709 () Bool)

(assert (=> b!4306053 m!4898709))

(check-sat (not b_next!129115) (not b!4306052) (not b!4306057) (not b!4306071) (not b!4306054) (not b!4306066) (not b_next!129117) (not b!4306058) (not b!4306053) (not b!4306063) tp_is_empty!23573 (not b!4306072) (not b!4306068) (not b!4306062) (not b!4306060) tp_is_empty!23575 b_and!339813 (not b!4306070) (not b!4306074) (not b!4306056) (not mapNonEmpty!20641) b_and!339811)
(check-sat b_and!339811 b_and!339813 (not b_next!129117) (not b_next!129115))
