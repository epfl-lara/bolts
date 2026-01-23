; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413872 () Bool)

(assert start!413872)

(declare-fun b!4307335 () Bool)

(declare-fun b_free!128467 () Bool)

(declare-fun b_next!129171 () Bool)

(assert (=> b!4307335 (= b_free!128467 (not b_next!129171))))

(declare-fun tp!1323684 () Bool)

(declare-fun b_and!339875 () Bool)

(assert (=> b!4307335 (= tp!1323684 b_and!339875)))

(declare-fun b!4307336 () Bool)

(declare-fun b_free!128469 () Bool)

(declare-fun b_next!129173 () Bool)

(assert (=> b!4307336 (= b_free!128469 (not b_next!129173))))

(declare-fun tp!1323680 () Bool)

(declare-fun b_and!339877 () Bool)

(assert (=> b!4307336 (= tp!1323680 b_and!339877)))

(declare-fun b!4307323 () Bool)

(declare-fun e!2678427 () Bool)

(declare-datatypes ((V!9516 0))(
  ( (V!9517 (val!15709 Int)) )
))
(declare-datatypes ((K!9314 0))(
  ( (K!9315 (val!15710 Int)) )
))
(declare-datatypes ((tuple2!46422 0))(
  ( (tuple2!46423 (_1!26490 K!9314) (_2!26490 V!9516)) )
))
(declare-datatypes ((List!48255 0))(
  ( (Nil!48131) (Cons!48131 (h!53562 tuple2!46422) (t!355048 List!48255)) )
))
(declare-datatypes ((array!16658 0))(
  ( (array!16659 (arr!7439 (Array (_ BitVec 32) (_ BitVec 64))) (size!35478 (_ BitVec 32))) )
))
(declare-datatypes ((array!16660 0))(
  ( (array!16661 (arr!7440 (Array (_ BitVec 32) List!48255)) (size!35479 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9254 0))(
  ( (LongMapFixedSize!9255 (defaultEntry!5012 Int) (mask!13169 (_ BitVec 32)) (extraKeys!4876 (_ BitVec 32)) (zeroValue!4886 List!48255) (minValue!4886 List!48255) (_size!9297 (_ BitVec 32)) (_keys!4927 array!16658) (_values!4908 array!16660) (_vacant!4688 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18317 0))(
  ( (Cell!18318 (v!42218 LongMapFixedSize!9254)) )
))
(declare-datatypes ((MutLongMap!4627 0))(
  ( (LongMap!4627 (underlying!9483 Cell!18317)) (MutLongMapExt!4626 (__x!29906 Int)) )
))
(declare-datatypes ((tuple2!46424 0))(
  ( (tuple2!46425 (_1!26491 Bool) (_2!26491 MutLongMap!4627)) )
))
(declare-fun lt!1528061 () tuple2!46424)

(declare-datatypes ((Hashable!4543 0))(
  ( (HashableExt!4542 (__x!29907 Int)) )
))
(declare-datatypes ((Cell!18319 0))(
  ( (Cell!18320 (v!42219 MutLongMap!4627)) )
))
(declare-datatypes ((MutableMap!4533 0))(
  ( (MutableMapExt!4532 (__x!29908 Int)) (HashMap!4533 (underlying!9484 Cell!18319) (hashF!6641 Hashable!4543) (_size!9298 (_ BitVec 32)) (defaultValue!4704 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4533)

(declare-fun valid!3616 (MutableMap!4533) Bool)

(assert (=> b!4307323 (= e!2678427 (not (valid!3616 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308)))))))

(declare-fun e!2678428 () Bool)

(assert (=> b!4307323 e!2678428))

(declare-fun res!1765448 () Bool)

(assert (=> b!4307323 (=> (not res!1765448) (not e!2678428))))

(declare-datatypes ((tuple2!46426 0))(
  ( (tuple2!46427 (_1!26492 (_ BitVec 64)) (_2!26492 List!48255)) )
))
(declare-datatypes ((List!48256 0))(
  ( (Nil!48132) (Cons!48132 (h!53563 tuple2!46426) (t!355049 List!48256)) )
))
(declare-datatypes ((ListLongMap!959 0))(
  ( (ListLongMap!960 (toList!2347 List!48256)) )
))
(declare-fun lt!1528059 () ListLongMap!959)

(declare-fun lambda!132654 () Int)

(declare-fun forall!8710 (List!48256 Int) Bool)

(assert (=> b!4307323 (= res!1765448 (forall!8710 (toList!2347 lt!1528059) lambda!132654))))

(declare-fun map!10110 (MutLongMap!4627) ListLongMap!959)

(assert (=> b!4307323 (= lt!1528059 (map!10110 (_2!26491 lt!1528061)))))

(declare-fun lt!1528058 () ListLongMap!959)

(declare-fun lt!1528063 () ListLongMap!959)

(declare-fun lt!1528065 () tuple2!46422)

(declare-datatypes ((ListMap!1629 0))(
  ( (ListMap!1630 (toList!2348 List!48255)) )
))
(declare-fun eq!129 (ListMap!1629 ListMap!1629) Bool)

(declare-fun extractMap!313 (List!48256) ListMap!1629)

(declare-fun +!239 (ListMap!1629 tuple2!46422) ListMap!1629)

(assert (=> b!4307323 (eq!129 (extractMap!313 (toList!2347 lt!1528058)) (+!239 (extractMap!313 (toList!2347 lt!1528063)) lt!1528065))))

(declare-datatypes ((Unit!67167 0))(
  ( (Unit!67168) )
))
(declare-fun lt!1528056 () Unit!67167)

(declare-fun v!9179 () V!9516)

(declare-fun lt!1528051 () List!48255)

(declare-fun lt!1528053 () (_ BitVec 64))

(declare-fun key!2048 () K!9314)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!47 (ListLongMap!959 (_ BitVec 64) List!48255 K!9314 V!9516 Hashable!4543) Unit!67167)

(assert (=> b!4307323 (= lt!1528056 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!47 lt!1528063 lt!1528053 lt!1528051 key!2048 v!9179 (hashF!6641 thiss!42308)))))

(declare-fun e!2678430 () Bool)

(assert (=> b!4307323 e!2678430))

(declare-fun res!1765446 () Bool)

(assert (=> b!4307323 (=> (not res!1765446) (not e!2678430))))

(assert (=> b!4307323 (= res!1765446 (forall!8710 (toList!2347 lt!1528058) lambda!132654))))

(declare-fun +!240 (ListLongMap!959 tuple2!46426) ListLongMap!959)

(assert (=> b!4307323 (= lt!1528058 (+!240 lt!1528063 (tuple2!46427 lt!1528053 lt!1528051)))))

(declare-fun lt!1528052 () Unit!67167)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!136 (ListLongMap!959 (_ BitVec 64) List!48255 Hashable!4543) Unit!67167)

(assert (=> b!4307323 (= lt!1528052 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!136 lt!1528063 lt!1528053 lt!1528051 (hashF!6641 thiss!42308)))))

(declare-fun lt!1528060 () Unit!67167)

(declare-fun e!2678432 () Unit!67167)

(assert (=> b!4307323 (= lt!1528060 e!2678432)))

(declare-fun c!732323 () Bool)

(declare-fun lt!1528062 () List!48255)

(declare-fun isEmpty!28073 (List!48255) Bool)

(assert (=> b!4307323 (= c!732323 (not (isEmpty!28073 lt!1528062)))))

(declare-fun b!4307324 () Bool)

(declare-fun e!2678423 () Bool)

(declare-fun e!2678429 () Bool)

(assert (=> b!4307324 (= e!2678423 e!2678429)))

(declare-fun b!4307326 () Bool)

(declare-fun e!2678422 () Bool)

(declare-fun e!2678431 () Bool)

(assert (=> b!4307326 (= e!2678422 e!2678431)))

(declare-fun res!1765445 () Bool)

(assert (=> b!4307326 (=> (not res!1765445) (not e!2678431))))

(declare-fun contains!10089 (MutableMap!4533 K!9314) Bool)

(assert (=> b!4307326 (= res!1765445 (not (contains!10089 thiss!42308 key!2048)))))

(assert (=> b!4307326 (= lt!1528063 (map!10110 (v!42219 (underlying!9484 thiss!42308))))))

(declare-fun lt!1528064 () ListMap!1629)

(declare-fun map!10111 (MutableMap!4533) ListMap!1629)

(assert (=> b!4307326 (= lt!1528064 (map!10111 thiss!42308))))

(declare-fun mapNonEmpty!20695 () Bool)

(declare-fun mapRes!20695 () Bool)

(declare-fun tp!1323685 () Bool)

(declare-fun tp!1323683 () Bool)

(assert (=> mapNonEmpty!20695 (= mapRes!20695 (and tp!1323685 tp!1323683))))

(declare-fun mapRest!20695 () (Array (_ BitVec 32) List!48255))

(declare-fun mapKey!20695 () (_ BitVec 32))

(declare-fun mapValue!20695 () List!48255)

(assert (=> mapNonEmpty!20695 (= (arr!7440 (_values!4908 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) (store mapRest!20695 mapKey!20695 mapValue!20695))))

(declare-fun b!4307327 () Bool)

(declare-fun e!2678426 () Bool)

(declare-fun tp!1323681 () Bool)

(assert (=> b!4307327 (= e!2678426 (and tp!1323681 mapRes!20695))))

(declare-fun condMapEmpty!20695 () Bool)

(declare-fun mapDefault!20695 () List!48255)

(assert (=> b!4307327 (= condMapEmpty!20695 (= (arr!7440 (_values!4908 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48255)) mapDefault!20695)))))

(declare-fun b!4307328 () Bool)

(declare-fun lt!1528055 () Unit!67167)

(assert (=> b!4307328 (= e!2678432 lt!1528055)))

(declare-fun lt!1528057 () Unit!67167)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!159 (List!48256 (_ BitVec 64) List!48255 Hashable!4543) Unit!67167)

(assert (=> b!4307328 (= lt!1528057 (lemmaInLongMapAllKeySameHashThenForTuple!159 (toList!2347 lt!1528063) lt!1528053 lt!1528062 (hashF!6641 thiss!42308)))))

(declare-fun allKeysSameHash!169 (List!48255 (_ BitVec 64) Hashable!4543) Bool)

(assert (=> b!4307328 (allKeysSameHash!169 lt!1528062 lt!1528053 (hashF!6641 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!153 (List!48255 K!9314 (_ BitVec 64) Hashable!4543) Unit!67167)

(assert (=> b!4307328 (= lt!1528055 (lemmaRemovePairForKeyPreservesHash!153 lt!1528062 key!2048 lt!1528053 (hashF!6641 thiss!42308)))))

(declare-fun removePairForKey!193 (List!48255 K!9314) List!48255)

(assert (=> b!4307328 (allKeysSameHash!169 (removePairForKey!193 lt!1528062 key!2048) lt!1528053 (hashF!6641 thiss!42308))))

(declare-fun b!4307329 () Bool)

(declare-fun e!2678424 () List!48255)

(assert (=> b!4307329 (= e!2678424 Nil!48131)))

(declare-fun mapIsEmpty!20695 () Bool)

(assert (=> mapIsEmpty!20695 mapRes!20695))

(declare-fun b!4307330 () Bool)

(declare-fun Unit!67169 () Unit!67167)

(assert (=> b!4307330 (= e!2678432 Unit!67169)))

(declare-fun b!4307331 () Bool)

(declare-fun e!2678425 () Bool)

(assert (=> b!4307331 (= e!2678425 e!2678423)))

(declare-fun b!4307332 () Bool)

(assert (=> b!4307332 (= e!2678431 e!2678427)))

(declare-fun res!1765447 () Bool)

(assert (=> b!4307332 (=> (not res!1765447) (not e!2678427))))

(assert (=> b!4307332 (= res!1765447 (_1!26491 lt!1528061))))

(declare-fun update!407 (MutLongMap!4627 (_ BitVec 64) List!48255) tuple2!46424)

(assert (=> b!4307332 (= lt!1528061 (update!407 (v!42219 (underlying!9484 thiss!42308)) lt!1528053 lt!1528051))))

(assert (=> b!4307332 (= lt!1528051 (Cons!48131 lt!1528065 lt!1528062))))

(assert (=> b!4307332 (= lt!1528065 (tuple2!46423 key!2048 v!9179))))

(assert (=> b!4307332 (= lt!1528062 e!2678424)))

(declare-fun c!732324 () Bool)

(declare-fun contains!10090 (MutLongMap!4627 (_ BitVec 64)) Bool)

(assert (=> b!4307332 (= c!732324 (contains!10090 (v!42219 (underlying!9484 thiss!42308)) lt!1528053))))

(declare-fun hash!963 (Hashable!4543 K!9314) (_ BitVec 64))

(assert (=> b!4307332 (= lt!1528053 (hash!963 (hashF!6641 thiss!42308) key!2048))))

(declare-fun b!4307333 () Bool)

(declare-fun apply!10981 (MutLongMap!4627 (_ BitVec 64)) List!48255)

(assert (=> b!4307333 (= e!2678424 (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528053))))

(declare-fun b!4307334 () Bool)

(declare-fun allKeysSameHashInMap!320 (ListLongMap!959 Hashable!4543) Bool)

(assert (=> b!4307334 (= e!2678430 (allKeysSameHashInMap!320 lt!1528058 (hashF!6641 thiss!42308)))))

(declare-fun b!4307325 () Bool)

(declare-fun res!1765444 () Bool)

(assert (=> b!4307325 (=> (not res!1765444) (not e!2678422))))

(assert (=> b!4307325 (= res!1765444 (valid!3616 thiss!42308))))

(declare-fun res!1765443 () Bool)

(assert (=> start!413872 (=> (not res!1765443) (not e!2678422))))

(get-info :version)

(assert (=> start!413872 (= res!1765443 ((_ is HashMap!4533) thiss!42308))))

(assert (=> start!413872 e!2678422))

(declare-fun e!2678421 () Bool)

(assert (=> start!413872 e!2678421))

(declare-fun tp_is_empty!23629 () Bool)

(assert (=> start!413872 tp_is_empty!23629))

(declare-fun tp_is_empty!23631 () Bool)

(assert (=> start!413872 tp_is_empty!23631))

(declare-fun tp!1323682 () Bool)

(declare-fun tp!1323686 () Bool)

(declare-fun array_inv!5333 (array!16658) Bool)

(declare-fun array_inv!5334 (array!16660) Bool)

(assert (=> b!4307335 (= e!2678429 (and tp!1323684 tp!1323682 tp!1323686 (array_inv!5333 (_keys!4927 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) (array_inv!5334 (_values!4908 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) e!2678426))))

(declare-fun e!2678420 () Bool)

(assert (=> b!4307336 (= e!2678421 (and e!2678420 tp!1323680))))

(declare-fun b!4307337 () Bool)

(declare-fun lt!1528054 () MutLongMap!4627)

(assert (=> b!4307337 (= e!2678420 (and e!2678425 ((_ is LongMap!4627) lt!1528054)))))

(assert (=> b!4307337 (= lt!1528054 (v!42219 (underlying!9484 thiss!42308)))))

(declare-fun b!4307338 () Bool)

(assert (=> b!4307338 (= e!2678428 (allKeysSameHashInMap!320 lt!1528059 (hashF!6641 thiss!42308)))))

(assert (= (and start!413872 res!1765443) b!4307325))

(assert (= (and b!4307325 res!1765444) b!4307326))

(assert (= (and b!4307326 res!1765445) b!4307332))

(assert (= (and b!4307332 c!732324) b!4307333))

(assert (= (and b!4307332 (not c!732324)) b!4307329))

(assert (= (and b!4307332 res!1765447) b!4307323))

(assert (= (and b!4307323 c!732323) b!4307328))

(assert (= (and b!4307323 (not c!732323)) b!4307330))

(assert (= (and b!4307323 res!1765446) b!4307334))

(assert (= (and b!4307323 res!1765448) b!4307338))

(assert (= (and b!4307327 condMapEmpty!20695) mapIsEmpty!20695))

(assert (= (and b!4307327 (not condMapEmpty!20695)) mapNonEmpty!20695))

(assert (= b!4307335 b!4307327))

(assert (= b!4307324 b!4307335))

(assert (= b!4307331 b!4307324))

(assert (= (and b!4307337 ((_ is LongMap!4627) (v!42219 (underlying!9484 thiss!42308)))) b!4307331))

(assert (= b!4307336 b!4307337))

(assert (= (and start!413872 ((_ is HashMap!4533) thiss!42308)) b!4307336))

(declare-fun m!4900159 () Bool)

(assert (=> b!4307333 m!4900159))

(declare-fun m!4900161 () Bool)

(assert (=> b!4307338 m!4900161))

(declare-fun m!4900163 () Bool)

(assert (=> mapNonEmpty!20695 m!4900163))

(declare-fun m!4900165 () Bool)

(assert (=> b!4307335 m!4900165))

(declare-fun m!4900167 () Bool)

(assert (=> b!4307335 m!4900167))

(declare-fun m!4900169 () Bool)

(assert (=> b!4307334 m!4900169))

(declare-fun m!4900171 () Bool)

(assert (=> b!4307323 m!4900171))

(declare-fun m!4900173 () Bool)

(assert (=> b!4307323 m!4900173))

(declare-fun m!4900175 () Bool)

(assert (=> b!4307323 m!4900175))

(declare-fun m!4900177 () Bool)

(assert (=> b!4307323 m!4900177))

(declare-fun m!4900179 () Bool)

(assert (=> b!4307323 m!4900179))

(declare-fun m!4900181 () Bool)

(assert (=> b!4307323 m!4900181))

(declare-fun m!4900183 () Bool)

(assert (=> b!4307323 m!4900183))

(declare-fun m!4900185 () Bool)

(assert (=> b!4307323 m!4900185))

(declare-fun m!4900187 () Bool)

(assert (=> b!4307323 m!4900187))

(declare-fun m!4900189 () Bool)

(assert (=> b!4307323 m!4900189))

(declare-fun m!4900191 () Bool)

(assert (=> b!4307323 m!4900191))

(assert (=> b!4307323 m!4900173))

(assert (=> b!4307323 m!4900191))

(assert (=> b!4307323 m!4900175))

(declare-fun m!4900193 () Bool)

(assert (=> b!4307323 m!4900193))

(declare-fun m!4900195 () Bool)

(assert (=> b!4307325 m!4900195))

(declare-fun m!4900197 () Bool)

(assert (=> b!4307328 m!4900197))

(declare-fun m!4900199 () Bool)

(assert (=> b!4307328 m!4900199))

(assert (=> b!4307328 m!4900199))

(declare-fun m!4900201 () Bool)

(assert (=> b!4307328 m!4900201))

(declare-fun m!4900203 () Bool)

(assert (=> b!4307328 m!4900203))

(declare-fun m!4900205 () Bool)

(assert (=> b!4307328 m!4900205))

(declare-fun m!4900207 () Bool)

(assert (=> b!4307326 m!4900207))

(declare-fun m!4900209 () Bool)

(assert (=> b!4307326 m!4900209))

(declare-fun m!4900211 () Bool)

(assert (=> b!4307326 m!4900211))

(declare-fun m!4900213 () Bool)

(assert (=> b!4307332 m!4900213))

(declare-fun m!4900215 () Bool)

(assert (=> b!4307332 m!4900215))

(declare-fun m!4900217 () Bool)

(assert (=> b!4307332 m!4900217))

(check-sat (not b!4307333) (not b_next!129173) (not b!4307326) (not b!4307325) (not b!4307338) b_and!339875 b_and!339877 (not b!4307327) tp_is_empty!23631 (not b!4307323) (not b!4307328) (not b_next!129171) (not b!4307334) (not b!4307335) tp_is_empty!23629 (not mapNonEmpty!20695) (not b!4307332))
(check-sat b_and!339875 b_and!339877 (not b_next!129173) (not b_next!129171))
(get-model)

(declare-fun d!1267636 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7551 (List!48255) (InoxSet tuple2!46422))

(assert (=> d!1267636 (= (eq!129 (extractMap!313 (toList!2347 lt!1528058)) (+!239 (extractMap!313 (toList!2347 lt!1528063)) lt!1528065)) (= (content!7551 (toList!2348 (extractMap!313 (toList!2347 lt!1528058)))) (content!7551 (toList!2348 (+!239 (extractMap!313 (toList!2347 lt!1528063)) lt!1528065)))))))

(declare-fun bs!604728 () Bool)

(assert (= bs!604728 d!1267636))

(declare-fun m!4900219 () Bool)

(assert (=> bs!604728 m!4900219))

(declare-fun m!4900221 () Bool)

(assert (=> bs!604728 m!4900221))

(assert (=> b!4307323 d!1267636))

(declare-fun d!1267638 () Bool)

(declare-fun res!1765453 () Bool)

(declare-fun e!2678437 () Bool)

(assert (=> d!1267638 (=> res!1765453 e!2678437)))

(assert (=> d!1267638 (= res!1765453 ((_ is Nil!48132) (toList!2347 lt!1528059)))))

(assert (=> d!1267638 (= (forall!8710 (toList!2347 lt!1528059) lambda!132654) e!2678437)))

(declare-fun b!4307343 () Bool)

(declare-fun e!2678438 () Bool)

(assert (=> b!4307343 (= e!2678437 e!2678438)))

(declare-fun res!1765454 () Bool)

(assert (=> b!4307343 (=> (not res!1765454) (not e!2678438))))

(declare-fun dynLambda!20415 (Int tuple2!46426) Bool)

(assert (=> b!4307343 (= res!1765454 (dynLambda!20415 lambda!132654 (h!53563 (toList!2347 lt!1528059))))))

(declare-fun b!4307344 () Bool)

(assert (=> b!4307344 (= e!2678438 (forall!8710 (t!355049 (toList!2347 lt!1528059)) lambda!132654))))

(assert (= (and d!1267638 (not res!1765453)) b!4307343))

(assert (= (and b!4307343 res!1765454) b!4307344))

(declare-fun b_lambda!126547 () Bool)

(assert (=> (not b_lambda!126547) (not b!4307343)))

(declare-fun m!4900223 () Bool)

(assert (=> b!4307343 m!4900223))

(declare-fun m!4900225 () Bool)

(assert (=> b!4307344 m!4900225))

(assert (=> b!4307323 d!1267638))

(declare-fun d!1267640 () Bool)

(declare-fun e!2678441 () Bool)

(assert (=> d!1267640 e!2678441))

(declare-fun res!1765460 () Bool)

(assert (=> d!1267640 (=> (not res!1765460) (not e!2678441))))

(declare-fun lt!1528075 () ListMap!1629)

(declare-fun contains!10091 (ListMap!1629 K!9314) Bool)

(assert (=> d!1267640 (= res!1765460 (contains!10091 lt!1528075 (_1!26490 lt!1528065)))))

(declare-fun lt!1528074 () List!48255)

(assert (=> d!1267640 (= lt!1528075 (ListMap!1630 lt!1528074))))

(declare-fun lt!1528077 () Unit!67167)

(declare-fun lt!1528076 () Unit!67167)

(assert (=> d!1267640 (= lt!1528077 lt!1528076)))

(declare-datatypes ((Option!10213 0))(
  ( (None!10212) (Some!10212 (v!42224 V!9516)) )
))
(declare-fun getValueByKey!245 (List!48255 K!9314) Option!10213)

(assert (=> d!1267640 (= (getValueByKey!245 lt!1528074 (_1!26490 lt!1528065)) (Some!10212 (_2!26490 lt!1528065)))))

(declare-fun lemmaContainsTupThenGetReturnValue!68 (List!48255 K!9314 V!9516) Unit!67167)

(assert (=> d!1267640 (= lt!1528076 (lemmaContainsTupThenGetReturnValue!68 lt!1528074 (_1!26490 lt!1528065) (_2!26490 lt!1528065)))))

(declare-fun insertNoDuplicatedKeys!42 (List!48255 K!9314 V!9516) List!48255)

(assert (=> d!1267640 (= lt!1528074 (insertNoDuplicatedKeys!42 (toList!2348 (extractMap!313 (toList!2347 lt!1528063))) (_1!26490 lt!1528065) (_2!26490 lt!1528065)))))

(assert (=> d!1267640 (= (+!239 (extractMap!313 (toList!2347 lt!1528063)) lt!1528065) lt!1528075)))

(declare-fun b!4307349 () Bool)

(declare-fun res!1765459 () Bool)

(assert (=> b!4307349 (=> (not res!1765459) (not e!2678441))))

(assert (=> b!4307349 (= res!1765459 (= (getValueByKey!245 (toList!2348 lt!1528075) (_1!26490 lt!1528065)) (Some!10212 (_2!26490 lt!1528065))))))

(declare-fun b!4307350 () Bool)

(declare-fun contains!10092 (List!48255 tuple2!46422) Bool)

(assert (=> b!4307350 (= e!2678441 (contains!10092 (toList!2348 lt!1528075) lt!1528065))))

(assert (= (and d!1267640 res!1765460) b!4307349))

(assert (= (and b!4307349 res!1765459) b!4307350))

(declare-fun m!4900227 () Bool)

(assert (=> d!1267640 m!4900227))

(declare-fun m!4900229 () Bool)

(assert (=> d!1267640 m!4900229))

(declare-fun m!4900231 () Bool)

(assert (=> d!1267640 m!4900231))

(declare-fun m!4900233 () Bool)

(assert (=> d!1267640 m!4900233))

(declare-fun m!4900235 () Bool)

(assert (=> b!4307349 m!4900235))

(declare-fun m!4900237 () Bool)

(assert (=> b!4307350 m!4900237))

(assert (=> b!4307323 d!1267640))

(declare-fun bs!604729 () Bool)

(declare-fun b!4307355 () Bool)

(assert (= bs!604729 (and b!4307355 b!4307323)))

(declare-fun lambda!132657 () Int)

(assert (=> bs!604729 (= lambda!132657 lambda!132654)))

(declare-fun d!1267642 () Bool)

(declare-fun res!1765465 () Bool)

(declare-fun e!2678444 () Bool)

(assert (=> d!1267642 (=> (not res!1765465) (not e!2678444))))

(declare-fun valid!3617 (MutLongMap!4627) Bool)

(assert (=> d!1267642 (= res!1765465 (valid!3617 (v!42219 (underlying!9484 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308))))))))

(assert (=> d!1267642 (= (valid!3616 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308))) e!2678444)))

(declare-fun res!1765466 () Bool)

(assert (=> b!4307355 (=> (not res!1765466) (not e!2678444))))

(assert (=> b!4307355 (= res!1765466 (forall!8710 (toList!2347 (map!10110 (v!42219 (underlying!9484 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308)))))) lambda!132657))))

(declare-fun b!4307356 () Bool)

(assert (=> b!4307356 (= e!2678444 (allKeysSameHashInMap!320 (map!10110 (v!42219 (underlying!9484 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308))))) (hashF!6641 (HashMap!4533 (Cell!18320 (_2!26491 lt!1528061)) (hashF!6641 thiss!42308) (_size!9298 thiss!42308) (defaultValue!4704 thiss!42308)))))))

(assert (= (and d!1267642 res!1765465) b!4307355))

(assert (= (and b!4307355 res!1765466) b!4307356))

(declare-fun m!4900239 () Bool)

(assert (=> d!1267642 m!4900239))

(declare-fun m!4900241 () Bool)

(assert (=> b!4307355 m!4900241))

(declare-fun m!4900243 () Bool)

(assert (=> b!4307355 m!4900243))

(assert (=> b!4307356 m!4900241))

(assert (=> b!4307356 m!4900241))

(declare-fun m!4900245 () Bool)

(assert (=> b!4307356 m!4900245))

(assert (=> b!4307323 d!1267642))

(declare-fun bs!604730 () Bool)

(declare-fun d!1267644 () Bool)

(assert (= bs!604730 (and d!1267644 b!4307323)))

(declare-fun lambda!132660 () Int)

(assert (=> bs!604730 (= lambda!132660 lambda!132654)))

(declare-fun bs!604731 () Bool)

(assert (= bs!604731 (and d!1267644 b!4307355)))

(assert (=> bs!604731 (= lambda!132660 lambda!132657)))

(assert (=> d!1267644 (eq!129 (extractMap!313 (toList!2347 (+!240 lt!1528063 (tuple2!46427 lt!1528053 lt!1528051)))) (+!239 (extractMap!313 (toList!2347 lt!1528063)) (tuple2!46423 key!2048 v!9179)))))

(declare-fun lt!1528080 () Unit!67167)

(declare-fun choose!26235 (ListLongMap!959 (_ BitVec 64) List!48255 K!9314 V!9516 Hashable!4543) Unit!67167)

(assert (=> d!1267644 (= lt!1528080 (choose!26235 lt!1528063 lt!1528053 lt!1528051 key!2048 v!9179 (hashF!6641 thiss!42308)))))

(assert (=> d!1267644 (forall!8710 (toList!2347 lt!1528063) lambda!132660)))

(assert (=> d!1267644 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!47 lt!1528063 lt!1528053 lt!1528051 key!2048 v!9179 (hashF!6641 thiss!42308)) lt!1528080)))

(declare-fun bs!604732 () Bool)

(assert (= bs!604732 d!1267644))

(assert (=> bs!604732 m!4900181))

(declare-fun m!4900247 () Bool)

(assert (=> bs!604732 m!4900247))

(declare-fun m!4900249 () Bool)

(assert (=> bs!604732 m!4900249))

(declare-fun m!4900251 () Bool)

(assert (=> bs!604732 m!4900251))

(declare-fun m!4900253 () Bool)

(assert (=> bs!604732 m!4900253))

(assert (=> bs!604732 m!4900173))

(declare-fun m!4900255 () Bool)

(assert (=> bs!604732 m!4900255))

(assert (=> bs!604732 m!4900173))

(assert (=> bs!604732 m!4900251))

(assert (=> bs!604732 m!4900249))

(assert (=> b!4307323 d!1267644))

(declare-fun bs!604733 () Bool)

(declare-fun d!1267646 () Bool)

(assert (= bs!604733 (and d!1267646 b!4307323)))

(declare-fun lambda!132663 () Int)

(assert (=> bs!604733 (= lambda!132663 lambda!132654)))

(declare-fun bs!604734 () Bool)

(assert (= bs!604734 (and d!1267646 b!4307355)))

(assert (=> bs!604734 (= lambda!132663 lambda!132657)))

(declare-fun bs!604735 () Bool)

(assert (= bs!604735 (and d!1267646 d!1267644)))

(assert (=> bs!604735 (= lambda!132663 lambda!132660)))

(declare-fun lt!1528083 () ListMap!1629)

(declare-fun invariantList!566 (List!48255) Bool)

(assert (=> d!1267646 (invariantList!566 (toList!2348 lt!1528083))))

(declare-fun e!2678447 () ListMap!1629)

(assert (=> d!1267646 (= lt!1528083 e!2678447)))

(declare-fun c!732327 () Bool)

(assert (=> d!1267646 (= c!732327 ((_ is Cons!48132) (toList!2347 lt!1528058)))))

(assert (=> d!1267646 (forall!8710 (toList!2347 lt!1528058) lambda!132663)))

(assert (=> d!1267646 (= (extractMap!313 (toList!2347 lt!1528058)) lt!1528083)))

(declare-fun b!4307361 () Bool)

(declare-fun addToMapMapFromBucket!34 (List!48255 ListMap!1629) ListMap!1629)

(assert (=> b!4307361 (= e!2678447 (addToMapMapFromBucket!34 (_2!26492 (h!53563 (toList!2347 lt!1528058))) (extractMap!313 (t!355049 (toList!2347 lt!1528058)))))))

(declare-fun b!4307362 () Bool)

(assert (=> b!4307362 (= e!2678447 (ListMap!1630 Nil!48131))))

(assert (= (and d!1267646 c!732327) b!4307361))

(assert (= (and d!1267646 (not c!732327)) b!4307362))

(declare-fun m!4900257 () Bool)

(assert (=> d!1267646 m!4900257))

(declare-fun m!4900259 () Bool)

(assert (=> d!1267646 m!4900259))

(declare-fun m!4900261 () Bool)

(assert (=> b!4307361 m!4900261))

(assert (=> b!4307361 m!4900261))

(declare-fun m!4900263 () Bool)

(assert (=> b!4307361 m!4900263))

(assert (=> b!4307323 d!1267646))

(declare-fun bs!604736 () Bool)

(declare-fun d!1267648 () Bool)

(assert (= bs!604736 (and d!1267648 b!4307323)))

(declare-fun lambda!132668 () Int)

(assert (=> bs!604736 (= lambda!132668 lambda!132654)))

(declare-fun bs!604737 () Bool)

(assert (= bs!604737 (and d!1267648 b!4307355)))

(assert (=> bs!604737 (= lambda!132668 lambda!132657)))

(declare-fun bs!604738 () Bool)

(assert (= bs!604738 (and d!1267648 d!1267644)))

(assert (=> bs!604738 (= lambda!132668 lambda!132660)))

(declare-fun bs!604739 () Bool)

(assert (= bs!604739 (and d!1267648 d!1267646)))

(assert (=> bs!604739 (= lambda!132668 lambda!132663)))

(declare-fun e!2678450 () Bool)

(assert (=> d!1267648 e!2678450))

(declare-fun res!1765469 () Bool)

(assert (=> d!1267648 (=> (not res!1765469) (not e!2678450))))

(declare-fun lt!1528089 () ListLongMap!959)

(assert (=> d!1267648 (= res!1765469 (forall!8710 (toList!2347 lt!1528089) lambda!132668))))

(assert (=> d!1267648 (= lt!1528089 (+!240 lt!1528063 (tuple2!46427 lt!1528053 lt!1528051)))))

(declare-fun lt!1528088 () Unit!67167)

(declare-fun choose!26236 (ListLongMap!959 (_ BitVec 64) List!48255 Hashable!4543) Unit!67167)

(assert (=> d!1267648 (= lt!1528088 (choose!26236 lt!1528063 lt!1528053 lt!1528051 (hashF!6641 thiss!42308)))))

(assert (=> d!1267648 (forall!8710 (toList!2347 lt!1528063) lambda!132668)))

(assert (=> d!1267648 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!136 lt!1528063 lt!1528053 lt!1528051 (hashF!6641 thiss!42308)) lt!1528088)))

(declare-fun b!4307365 () Bool)

(assert (=> b!4307365 (= e!2678450 (allKeysSameHashInMap!320 lt!1528089 (hashF!6641 thiss!42308)))))

(assert (= (and d!1267648 res!1765469) b!4307365))

(declare-fun m!4900265 () Bool)

(assert (=> d!1267648 m!4900265))

(assert (=> d!1267648 m!4900181))

(declare-fun m!4900267 () Bool)

(assert (=> d!1267648 m!4900267))

(declare-fun m!4900269 () Bool)

(assert (=> d!1267648 m!4900269))

(declare-fun m!4900271 () Bool)

(assert (=> b!4307365 m!4900271))

(assert (=> b!4307323 d!1267648))

(declare-fun d!1267650 () Bool)

(declare-fun map!10112 (LongMapFixedSize!9254) ListLongMap!959)

(assert (=> d!1267650 (= (map!10110 (_2!26491 lt!1528061)) (map!10112 (v!42218 (underlying!9483 (_2!26491 lt!1528061)))))))

(declare-fun bs!604740 () Bool)

(assert (= bs!604740 d!1267650))

(declare-fun m!4900273 () Bool)

(assert (=> bs!604740 m!4900273))

(assert (=> b!4307323 d!1267650))

(declare-fun bs!604741 () Bool)

(declare-fun d!1267652 () Bool)

(assert (= bs!604741 (and d!1267652 b!4307355)))

(declare-fun lambda!132669 () Int)

(assert (=> bs!604741 (= lambda!132669 lambda!132657)))

(declare-fun bs!604742 () Bool)

(assert (= bs!604742 (and d!1267652 d!1267646)))

(assert (=> bs!604742 (= lambda!132669 lambda!132663)))

(declare-fun bs!604743 () Bool)

(assert (= bs!604743 (and d!1267652 b!4307323)))

(assert (=> bs!604743 (= lambda!132669 lambda!132654)))

(declare-fun bs!604744 () Bool)

(assert (= bs!604744 (and d!1267652 d!1267644)))

(assert (=> bs!604744 (= lambda!132669 lambda!132660)))

(declare-fun bs!604745 () Bool)

(assert (= bs!604745 (and d!1267652 d!1267648)))

(assert (=> bs!604745 (= lambda!132669 lambda!132668)))

(declare-fun lt!1528090 () ListMap!1629)

(assert (=> d!1267652 (invariantList!566 (toList!2348 lt!1528090))))

(declare-fun e!2678451 () ListMap!1629)

(assert (=> d!1267652 (= lt!1528090 e!2678451)))

(declare-fun c!732328 () Bool)

(assert (=> d!1267652 (= c!732328 ((_ is Cons!48132) (toList!2347 lt!1528063)))))

(assert (=> d!1267652 (forall!8710 (toList!2347 lt!1528063) lambda!132669)))

(assert (=> d!1267652 (= (extractMap!313 (toList!2347 lt!1528063)) lt!1528090)))

(declare-fun b!4307366 () Bool)

(assert (=> b!4307366 (= e!2678451 (addToMapMapFromBucket!34 (_2!26492 (h!53563 (toList!2347 lt!1528063))) (extractMap!313 (t!355049 (toList!2347 lt!1528063)))))))

(declare-fun b!4307367 () Bool)

(assert (=> b!4307367 (= e!2678451 (ListMap!1630 Nil!48131))))

(assert (= (and d!1267652 c!732328) b!4307366))

(assert (= (and d!1267652 (not c!732328)) b!4307367))

(declare-fun m!4900275 () Bool)

(assert (=> d!1267652 m!4900275))

(declare-fun m!4900277 () Bool)

(assert (=> d!1267652 m!4900277))

(declare-fun m!4900279 () Bool)

(assert (=> b!4307366 m!4900279))

(assert (=> b!4307366 m!4900279))

(declare-fun m!4900281 () Bool)

(assert (=> b!4307366 m!4900281))

(assert (=> b!4307323 d!1267652))

(declare-fun d!1267654 () Bool)

(declare-fun res!1765470 () Bool)

(declare-fun e!2678452 () Bool)

(assert (=> d!1267654 (=> res!1765470 e!2678452)))

(assert (=> d!1267654 (= res!1765470 ((_ is Nil!48132) (toList!2347 lt!1528058)))))

(assert (=> d!1267654 (= (forall!8710 (toList!2347 lt!1528058) lambda!132654) e!2678452)))

(declare-fun b!4307368 () Bool)

(declare-fun e!2678453 () Bool)

(assert (=> b!4307368 (= e!2678452 e!2678453)))

(declare-fun res!1765471 () Bool)

(assert (=> b!4307368 (=> (not res!1765471) (not e!2678453))))

(assert (=> b!4307368 (= res!1765471 (dynLambda!20415 lambda!132654 (h!53563 (toList!2347 lt!1528058))))))

(declare-fun b!4307369 () Bool)

(assert (=> b!4307369 (= e!2678453 (forall!8710 (t!355049 (toList!2347 lt!1528058)) lambda!132654))))

(assert (= (and d!1267654 (not res!1765470)) b!4307368))

(assert (= (and b!4307368 res!1765471) b!4307369))

(declare-fun b_lambda!126549 () Bool)

(assert (=> (not b_lambda!126549) (not b!4307368)))

(declare-fun m!4900283 () Bool)

(assert (=> b!4307368 m!4900283))

(declare-fun m!4900285 () Bool)

(assert (=> b!4307369 m!4900285))

(assert (=> b!4307323 d!1267654))

(declare-fun d!1267656 () Bool)

(declare-fun e!2678456 () Bool)

(assert (=> d!1267656 e!2678456))

(declare-fun res!1765477 () Bool)

(assert (=> d!1267656 (=> (not res!1765477) (not e!2678456))))

(declare-fun lt!1528100 () ListLongMap!959)

(declare-fun contains!10093 (ListLongMap!959 (_ BitVec 64)) Bool)

(assert (=> d!1267656 (= res!1765477 (contains!10093 lt!1528100 (_1!26492 (tuple2!46427 lt!1528053 lt!1528051))))))

(declare-fun lt!1528102 () List!48256)

(assert (=> d!1267656 (= lt!1528100 (ListLongMap!960 lt!1528102))))

(declare-fun lt!1528101 () Unit!67167)

(declare-fun lt!1528099 () Unit!67167)

(assert (=> d!1267656 (= lt!1528101 lt!1528099)))

(declare-datatypes ((Option!10214 0))(
  ( (None!10213) (Some!10213 (v!42225 List!48255)) )
))
(declare-fun getValueByKey!246 (List!48256 (_ BitVec 64)) Option!10214)

(assert (=> d!1267656 (= (getValueByKey!246 lt!1528102 (_1!26492 (tuple2!46427 lt!1528053 lt!1528051))) (Some!10213 (_2!26492 (tuple2!46427 lt!1528053 lt!1528051))))))

(declare-fun lemmaContainsTupThenGetReturnValue!69 (List!48256 (_ BitVec 64) List!48255) Unit!67167)

(assert (=> d!1267656 (= lt!1528099 (lemmaContainsTupThenGetReturnValue!69 lt!1528102 (_1!26492 (tuple2!46427 lt!1528053 lt!1528051)) (_2!26492 (tuple2!46427 lt!1528053 lt!1528051))))))

(declare-fun insertStrictlySorted!35 (List!48256 (_ BitVec 64) List!48255) List!48256)

(assert (=> d!1267656 (= lt!1528102 (insertStrictlySorted!35 (toList!2347 lt!1528063) (_1!26492 (tuple2!46427 lt!1528053 lt!1528051)) (_2!26492 (tuple2!46427 lt!1528053 lt!1528051))))))

(assert (=> d!1267656 (= (+!240 lt!1528063 (tuple2!46427 lt!1528053 lt!1528051)) lt!1528100)))

(declare-fun b!4307374 () Bool)

(declare-fun res!1765476 () Bool)

(assert (=> b!4307374 (=> (not res!1765476) (not e!2678456))))

(assert (=> b!4307374 (= res!1765476 (= (getValueByKey!246 (toList!2347 lt!1528100) (_1!26492 (tuple2!46427 lt!1528053 lt!1528051))) (Some!10213 (_2!26492 (tuple2!46427 lt!1528053 lt!1528051)))))))

(declare-fun b!4307375 () Bool)

(declare-fun contains!10094 (List!48256 tuple2!46426) Bool)

(assert (=> b!4307375 (= e!2678456 (contains!10094 (toList!2347 lt!1528100) (tuple2!46427 lt!1528053 lt!1528051)))))

(assert (= (and d!1267656 res!1765477) b!4307374))

(assert (= (and b!4307374 res!1765476) b!4307375))

(declare-fun m!4900287 () Bool)

(assert (=> d!1267656 m!4900287))

(declare-fun m!4900289 () Bool)

(assert (=> d!1267656 m!4900289))

(declare-fun m!4900291 () Bool)

(assert (=> d!1267656 m!4900291))

(declare-fun m!4900293 () Bool)

(assert (=> d!1267656 m!4900293))

(declare-fun m!4900295 () Bool)

(assert (=> b!4307374 m!4900295))

(declare-fun m!4900297 () Bool)

(assert (=> b!4307375 m!4900297))

(assert (=> b!4307323 d!1267656))

(declare-fun d!1267658 () Bool)

(assert (=> d!1267658 (= (isEmpty!28073 lt!1528062) ((_ is Nil!48131) lt!1528062))))

(assert (=> b!4307323 d!1267658))

(declare-fun d!1267660 () Bool)

(declare-fun e!2678469 () Bool)

(assert (=> d!1267660 e!2678469))

(declare-fun res!1765484 () Bool)

(assert (=> d!1267660 (=> (not res!1765484) (not e!2678469))))

(declare-fun lt!1528111 () tuple2!46424)

(assert (=> d!1267660 (= res!1765484 ((_ is LongMap!4627) (_2!26491 lt!1528111)))))

(declare-fun e!2678468 () tuple2!46424)

(assert (=> d!1267660 (= lt!1528111 e!2678468)))

(declare-fun c!732337 () Bool)

(declare-fun lt!1528112 () tuple2!46424)

(assert (=> d!1267660 (= c!732337 (_1!26491 lt!1528112))))

(declare-fun e!2678470 () tuple2!46424)

(assert (=> d!1267660 (= lt!1528112 e!2678470)))

(declare-fun c!732335 () Bool)

(declare-fun imbalanced!45 (MutLongMap!4627) Bool)

(assert (=> d!1267660 (= c!732335 (imbalanced!45 (v!42219 (underlying!9484 thiss!42308))))))

(assert (=> d!1267660 (valid!3617 (v!42219 (underlying!9484 thiss!42308)))))

(assert (=> d!1267660 (= (update!407 (v!42219 (underlying!9484 thiss!42308)) lt!1528053 lt!1528051) lt!1528111)))

(declare-fun bm!297001 () Bool)

(declare-fun call!297007 () ListLongMap!959)

(assert (=> bm!297001 (= call!297007 (map!10110 (v!42219 (underlying!9484 thiss!42308))))))

(declare-fun b!4307394 () Bool)

(declare-fun lt!1528113 () tuple2!46424)

(assert (=> b!4307394 (= e!2678470 (tuple2!46425 (_1!26491 lt!1528113) (_2!26491 lt!1528113)))))

(declare-fun repack!49 (MutLongMap!4627) tuple2!46424)

(assert (=> b!4307394 (= lt!1528113 (repack!49 (v!42219 (underlying!9484 thiss!42308))))))

(declare-fun b!4307395 () Bool)

(declare-fun e!2678471 () Bool)

(declare-fun call!297006 () ListLongMap!959)

(assert (=> b!4307395 (= e!2678471 (= call!297006 call!297007))))

(declare-fun b!4307396 () Bool)

(declare-fun e!2678467 () Bool)

(assert (=> b!4307396 (= e!2678471 e!2678467)))

(declare-fun res!1765486 () Bool)

(assert (=> b!4307396 (= res!1765486 (contains!10093 call!297006 lt!1528053))))

(assert (=> b!4307396 (=> (not res!1765486) (not e!2678467))))

(declare-fun b!4307397 () Bool)

(declare-datatypes ((tuple2!46428 0))(
  ( (tuple2!46429 (_1!26493 Bool) (_2!26493 LongMapFixedSize!9254)) )
))
(declare-fun lt!1528114 () tuple2!46428)

(assert (=> b!4307397 (= e!2678468 (tuple2!46425 (_1!26493 lt!1528114) (LongMap!4627 (Cell!18318 (_2!26493 lt!1528114)))))))

(declare-fun update!408 (LongMapFixedSize!9254 (_ BitVec 64) List!48255) tuple2!46428)

(assert (=> b!4307397 (= lt!1528114 (update!408 (v!42218 (underlying!9483 (_2!26491 lt!1528112))) lt!1528053 lt!1528051))))

(declare-fun b!4307398 () Bool)

(assert (=> b!4307398 (= e!2678468 (tuple2!46425 false (_2!26491 lt!1528112)))))

(declare-fun b!4307399 () Bool)

(assert (=> b!4307399 (= e!2678467 (= call!297006 (+!240 call!297007 (tuple2!46427 lt!1528053 lt!1528051))))))

(declare-fun b!4307400 () Bool)

(assert (=> b!4307400 (= e!2678469 e!2678471)))

(declare-fun c!732336 () Bool)

(assert (=> b!4307400 (= c!732336 (_1!26491 lt!1528111))))

(declare-fun bm!297002 () Bool)

(assert (=> bm!297002 (= call!297006 (map!10110 (_2!26491 lt!1528111)))))

(declare-fun b!4307401 () Bool)

(assert (=> b!4307401 (= e!2678470 (tuple2!46425 true (v!42219 (underlying!9484 thiss!42308))))))

(declare-fun b!4307402 () Bool)

(declare-fun res!1765485 () Bool)

(assert (=> b!4307402 (=> (not res!1765485) (not e!2678469))))

(assert (=> b!4307402 (= res!1765485 (valid!3617 (_2!26491 lt!1528111)))))

(assert (= (and d!1267660 c!732335) b!4307394))

(assert (= (and d!1267660 (not c!732335)) b!4307401))

(assert (= (and d!1267660 c!732337) b!4307397))

(assert (= (and d!1267660 (not c!732337)) b!4307398))

(assert (= (and d!1267660 res!1765484) b!4307402))

(assert (= (and b!4307402 res!1765485) b!4307400))

(assert (= (and b!4307400 c!732336) b!4307396))

(assert (= (and b!4307400 (not c!732336)) b!4307395))

(assert (= (and b!4307396 res!1765486) b!4307399))

(assert (= (or b!4307399 b!4307395) bm!297001))

(assert (= (or b!4307396 b!4307399 b!4307395) bm!297002))

(declare-fun m!4900299 () Bool)

(assert (=> b!4307399 m!4900299))

(declare-fun m!4900301 () Bool)

(assert (=> b!4307396 m!4900301))

(declare-fun m!4900303 () Bool)

(assert (=> b!4307394 m!4900303))

(declare-fun m!4900305 () Bool)

(assert (=> bm!297002 m!4900305))

(declare-fun m!4900307 () Bool)

(assert (=> b!4307397 m!4900307))

(assert (=> bm!297001 m!4900209))

(declare-fun m!4900309 () Bool)

(assert (=> b!4307402 m!4900309))

(declare-fun m!4900311 () Bool)

(assert (=> d!1267660 m!4900311))

(declare-fun m!4900313 () Bool)

(assert (=> d!1267660 m!4900313))

(assert (=> b!4307332 d!1267660))

(declare-fun d!1267662 () Bool)

(declare-fun lt!1528117 () Bool)

(assert (=> d!1267662 (= lt!1528117 (contains!10093 (map!10110 (v!42219 (underlying!9484 thiss!42308))) lt!1528053))))

(declare-fun contains!10095 (LongMapFixedSize!9254 (_ BitVec 64)) Bool)

(assert (=> d!1267662 (= lt!1528117 (contains!10095 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))) lt!1528053))))

(assert (=> d!1267662 (valid!3617 (v!42219 (underlying!9484 thiss!42308)))))

(assert (=> d!1267662 (= (contains!10090 (v!42219 (underlying!9484 thiss!42308)) lt!1528053) lt!1528117)))

(declare-fun bs!604746 () Bool)

(assert (= bs!604746 d!1267662))

(assert (=> bs!604746 m!4900209))

(assert (=> bs!604746 m!4900209))

(declare-fun m!4900315 () Bool)

(assert (=> bs!604746 m!4900315))

(declare-fun m!4900317 () Bool)

(assert (=> bs!604746 m!4900317))

(assert (=> bs!604746 m!4900313))

(assert (=> b!4307332 d!1267662))

(declare-fun d!1267664 () Bool)

(declare-fun hash!968 (Hashable!4543 K!9314) (_ BitVec 64))

(assert (=> d!1267664 (= (hash!963 (hashF!6641 thiss!42308) key!2048) (hash!968 (hashF!6641 thiss!42308) key!2048))))

(declare-fun bs!604747 () Bool)

(assert (= bs!604747 d!1267664))

(declare-fun m!4900319 () Bool)

(assert (=> bs!604747 m!4900319))

(assert (=> b!4307332 d!1267664))

(declare-fun d!1267666 () Bool)

(declare-fun e!2678474 () Bool)

(assert (=> d!1267666 e!2678474))

(declare-fun c!732340 () Bool)

(assert (=> d!1267666 (= c!732340 (contains!10090 (v!42219 (underlying!9484 thiss!42308)) lt!1528053))))

(declare-fun lt!1528120 () List!48255)

(declare-fun apply!10982 (LongMapFixedSize!9254 (_ BitVec 64)) List!48255)

(assert (=> d!1267666 (= lt!1528120 (apply!10982 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))) lt!1528053))))

(assert (=> d!1267666 (valid!3617 (v!42219 (underlying!9484 thiss!42308)))))

(assert (=> d!1267666 (= (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528053) lt!1528120)))

(declare-fun b!4307407 () Bool)

(declare-fun get!15570 (Option!10214) List!48255)

(assert (=> b!4307407 (= e!2678474 (= lt!1528120 (get!15570 (getValueByKey!246 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))) lt!1528053))))))

(declare-fun b!4307408 () Bool)

(declare-fun dynLambda!20416 (Int (_ BitVec 64)) List!48255)

(assert (=> b!4307408 (= e!2678474 (= lt!1528120 (dynLambda!20416 (defaultEntry!5012 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308))))) lt!1528053)))))

(assert (=> b!4307408 ((_ is LongMap!4627) (v!42219 (underlying!9484 thiss!42308)))))

(assert (= (and d!1267666 c!732340) b!4307407))

(assert (= (and d!1267666 (not c!732340)) b!4307408))

(declare-fun b_lambda!126551 () Bool)

(assert (=> (not b_lambda!126551) (not b!4307408)))

(declare-fun t!355051 () Bool)

(declare-fun tb!257279 () Bool)

(assert (=> (and b!4307335 (= (defaultEntry!5012 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308))))) (defaultEntry!5012 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) t!355051) tb!257279))

(assert (=> b!4307408 t!355051))

(declare-fun result!314652 () Bool)

(declare-fun b_and!339879 () Bool)

(assert (= b_and!339875 (and (=> t!355051 result!314652) b_and!339879)))

(assert (=> d!1267666 m!4900215))

(declare-fun m!4900321 () Bool)

(assert (=> d!1267666 m!4900321))

(assert (=> d!1267666 m!4900313))

(assert (=> b!4307407 m!4900209))

(declare-fun m!4900323 () Bool)

(assert (=> b!4307407 m!4900323))

(assert (=> b!4307407 m!4900323))

(declare-fun m!4900325 () Bool)

(assert (=> b!4307407 m!4900325))

(declare-fun m!4900327 () Bool)

(assert (=> b!4307408 m!4900327))

(assert (=> b!4307333 d!1267666))

(declare-fun d!1267668 () Bool)

(assert (=> d!1267668 (allKeysSameHash!169 (removePairForKey!193 lt!1528062 key!2048) lt!1528053 (hashF!6641 thiss!42308))))

(declare-fun lt!1528123 () Unit!67167)

(declare-fun choose!26237 (List!48255 K!9314 (_ BitVec 64) Hashable!4543) Unit!67167)

(assert (=> d!1267668 (= lt!1528123 (choose!26237 lt!1528062 key!2048 lt!1528053 (hashF!6641 thiss!42308)))))

(declare-fun noDuplicateKeys!197 (List!48255) Bool)

(assert (=> d!1267668 (noDuplicateKeys!197 lt!1528062)))

(assert (=> d!1267668 (= (lemmaRemovePairForKeyPreservesHash!153 lt!1528062 key!2048 lt!1528053 (hashF!6641 thiss!42308)) lt!1528123)))

(declare-fun bs!604748 () Bool)

(assert (= bs!604748 d!1267668))

(assert (=> bs!604748 m!4900199))

(assert (=> bs!604748 m!4900199))

(assert (=> bs!604748 m!4900201))

(declare-fun m!4900329 () Bool)

(assert (=> bs!604748 m!4900329))

(declare-fun m!4900331 () Bool)

(assert (=> bs!604748 m!4900331))

(assert (=> b!4307328 d!1267668))

(declare-fun d!1267670 () Bool)

(assert (=> d!1267670 true))

(assert (=> d!1267670 true))

(declare-fun lambda!132672 () Int)

(declare-fun forall!8711 (List!48255 Int) Bool)

(assert (=> d!1267670 (= (allKeysSameHash!169 (removePairForKey!193 lt!1528062 key!2048) lt!1528053 (hashF!6641 thiss!42308)) (forall!8711 (removePairForKey!193 lt!1528062 key!2048) lambda!132672))))

(declare-fun bs!604749 () Bool)

(assert (= bs!604749 d!1267670))

(assert (=> bs!604749 m!4900199))

(declare-fun m!4900333 () Bool)

(assert (=> bs!604749 m!4900333))

(assert (=> b!4307328 d!1267670))

(declare-fun bs!604750 () Bool)

(declare-fun d!1267672 () Bool)

(assert (= bs!604750 (and d!1267672 d!1267670)))

(declare-fun lambda!132673 () Int)

(assert (=> bs!604750 (= lambda!132673 lambda!132672)))

(assert (=> d!1267672 true))

(assert (=> d!1267672 true))

(assert (=> d!1267672 (= (allKeysSameHash!169 lt!1528062 lt!1528053 (hashF!6641 thiss!42308)) (forall!8711 lt!1528062 lambda!132673))))

(declare-fun bs!604751 () Bool)

(assert (= bs!604751 d!1267672))

(declare-fun m!4900335 () Bool)

(assert (=> bs!604751 m!4900335))

(assert (=> b!4307328 d!1267672))

(declare-fun bs!604752 () Bool)

(declare-fun d!1267674 () Bool)

(assert (= bs!604752 (and d!1267674 b!4307355)))

(declare-fun lambda!132676 () Int)

(assert (=> bs!604752 (not (= lambda!132676 lambda!132657))))

(declare-fun bs!604753 () Bool)

(assert (= bs!604753 (and d!1267674 d!1267652)))

(assert (=> bs!604753 (not (= lambda!132676 lambda!132669))))

(declare-fun bs!604754 () Bool)

(assert (= bs!604754 (and d!1267674 d!1267646)))

(assert (=> bs!604754 (not (= lambda!132676 lambda!132663))))

(declare-fun bs!604755 () Bool)

(assert (= bs!604755 (and d!1267674 b!4307323)))

(assert (=> bs!604755 (not (= lambda!132676 lambda!132654))))

(declare-fun bs!604756 () Bool)

(assert (= bs!604756 (and d!1267674 d!1267644)))

(assert (=> bs!604756 (not (= lambda!132676 lambda!132660))))

(declare-fun bs!604757 () Bool)

(assert (= bs!604757 (and d!1267674 d!1267648)))

(assert (=> bs!604757 (not (= lambda!132676 lambda!132668))))

(assert (=> d!1267674 true))

(assert (=> d!1267674 (allKeysSameHash!169 lt!1528062 lt!1528053 (hashF!6641 thiss!42308))))

(declare-fun lt!1528126 () Unit!67167)

(declare-fun choose!26238 (List!48256 (_ BitVec 64) List!48255 Hashable!4543) Unit!67167)

(assert (=> d!1267674 (= lt!1528126 (choose!26238 (toList!2347 lt!1528063) lt!1528053 lt!1528062 (hashF!6641 thiss!42308)))))

(assert (=> d!1267674 (forall!8710 (toList!2347 lt!1528063) lambda!132676)))

(assert (=> d!1267674 (= (lemmaInLongMapAllKeySameHashThenForTuple!159 (toList!2347 lt!1528063) lt!1528053 lt!1528062 (hashF!6641 thiss!42308)) lt!1528126)))

(declare-fun bs!604758 () Bool)

(assert (= bs!604758 d!1267674))

(assert (=> bs!604758 m!4900205))

(declare-fun m!4900337 () Bool)

(assert (=> bs!604758 m!4900337))

(declare-fun m!4900339 () Bool)

(assert (=> bs!604758 m!4900339))

(assert (=> b!4307328 d!1267674))

(declare-fun b!4307426 () Bool)

(declare-fun e!2678479 () List!48255)

(assert (=> b!4307426 (= e!2678479 Nil!48131)))

(declare-fun b!4307425 () Bool)

(assert (=> b!4307425 (= e!2678479 (Cons!48131 (h!53562 lt!1528062) (removePairForKey!193 (t!355048 lt!1528062) key!2048)))))

(declare-fun b!4307424 () Bool)

(declare-fun e!2678480 () List!48255)

(assert (=> b!4307424 (= e!2678480 e!2678479)))

(declare-fun c!732346 () Bool)

(assert (=> b!4307424 (= c!732346 ((_ is Cons!48131) lt!1528062))))

(declare-fun b!4307423 () Bool)

(assert (=> b!4307423 (= e!2678480 (t!355048 lt!1528062))))

(declare-fun d!1267676 () Bool)

(declare-fun lt!1528129 () List!48255)

(declare-fun containsKey!292 (List!48255 K!9314) Bool)

(assert (=> d!1267676 (not (containsKey!292 lt!1528129 key!2048))))

(assert (=> d!1267676 (= lt!1528129 e!2678480)))

(declare-fun c!732345 () Bool)

(assert (=> d!1267676 (= c!732345 (and ((_ is Cons!48131) lt!1528062) (= (_1!26490 (h!53562 lt!1528062)) key!2048)))))

(assert (=> d!1267676 (noDuplicateKeys!197 lt!1528062)))

(assert (=> d!1267676 (= (removePairForKey!193 lt!1528062 key!2048) lt!1528129)))

(assert (= (and d!1267676 c!732345) b!4307423))

(assert (= (and d!1267676 (not c!732345)) b!4307424))

(assert (= (and b!4307424 c!732346) b!4307425))

(assert (= (and b!4307424 (not c!732346)) b!4307426))

(declare-fun m!4900341 () Bool)

(assert (=> b!4307425 m!4900341))

(declare-fun m!4900343 () Bool)

(assert (=> d!1267676 m!4900343))

(assert (=> d!1267676 m!4900331))

(assert (=> b!4307328 d!1267676))

(declare-fun bs!604759 () Bool)

(declare-fun d!1267678 () Bool)

(assert (= bs!604759 (and d!1267678 d!1267674)))

(declare-fun lambda!132679 () Int)

(assert (=> bs!604759 (= lambda!132679 lambda!132676)))

(declare-fun bs!604760 () Bool)

(assert (= bs!604760 (and d!1267678 b!4307355)))

(assert (=> bs!604760 (not (= lambda!132679 lambda!132657))))

(declare-fun bs!604761 () Bool)

(assert (= bs!604761 (and d!1267678 d!1267652)))

(assert (=> bs!604761 (not (= lambda!132679 lambda!132669))))

(declare-fun bs!604762 () Bool)

(assert (= bs!604762 (and d!1267678 d!1267646)))

(assert (=> bs!604762 (not (= lambda!132679 lambda!132663))))

(declare-fun bs!604763 () Bool)

(assert (= bs!604763 (and d!1267678 b!4307323)))

(assert (=> bs!604763 (not (= lambda!132679 lambda!132654))))

(declare-fun bs!604764 () Bool)

(assert (= bs!604764 (and d!1267678 d!1267644)))

(assert (=> bs!604764 (not (= lambda!132679 lambda!132660))))

(declare-fun bs!604765 () Bool)

(assert (= bs!604765 (and d!1267678 d!1267648)))

(assert (=> bs!604765 (not (= lambda!132679 lambda!132668))))

(assert (=> d!1267678 true))

(assert (=> d!1267678 (= (allKeysSameHashInMap!320 lt!1528059 (hashF!6641 thiss!42308)) (forall!8710 (toList!2347 lt!1528059) lambda!132679))))

(declare-fun bs!604766 () Bool)

(assert (= bs!604766 d!1267678))

(declare-fun m!4900345 () Bool)

(assert (=> bs!604766 m!4900345))

(assert (=> b!4307338 d!1267678))

(declare-fun bs!604767 () Bool)

(declare-fun b!4307456 () Bool)

(assert (= bs!604767 (and b!4307456 d!1267674)))

(declare-fun lambda!132682 () Int)

(assert (=> bs!604767 (not (= lambda!132682 lambda!132676))))

(declare-fun bs!604768 () Bool)

(assert (= bs!604768 (and b!4307456 b!4307355)))

(assert (=> bs!604768 (= lambda!132682 lambda!132657)))

(declare-fun bs!604769 () Bool)

(assert (= bs!604769 (and b!4307456 d!1267652)))

(assert (=> bs!604769 (= lambda!132682 lambda!132669)))

(declare-fun bs!604770 () Bool)

(assert (= bs!604770 (and b!4307456 d!1267678)))

(assert (=> bs!604770 (not (= lambda!132682 lambda!132679))))

(declare-fun bs!604771 () Bool)

(assert (= bs!604771 (and b!4307456 d!1267646)))

(assert (=> bs!604771 (= lambda!132682 lambda!132663)))

(declare-fun bs!604772 () Bool)

(assert (= bs!604772 (and b!4307456 b!4307323)))

(assert (=> bs!604772 (= lambda!132682 lambda!132654)))

(declare-fun bs!604773 () Bool)

(assert (= bs!604773 (and b!4307456 d!1267644)))

(assert (=> bs!604773 (= lambda!132682 lambda!132660)))

(declare-fun bs!604774 () Bool)

(assert (= bs!604774 (and b!4307456 d!1267648)))

(assert (=> bs!604774 (= lambda!132682 lambda!132668)))

(declare-fun b!4307449 () Bool)

(declare-fun e!2678495 () Unit!67167)

(declare-fun e!2678496 () Unit!67167)

(assert (=> b!4307449 (= e!2678495 e!2678496)))

(declare-fun res!1765495 () Bool)

(declare-fun call!297025 () Bool)

(assert (=> b!4307449 (= res!1765495 call!297025)))

(declare-fun e!2678498 () Bool)

(assert (=> b!4307449 (=> (not res!1765495) (not e!2678498))))

(declare-fun c!732356 () Bool)

(assert (=> b!4307449 (= c!732356 e!2678498)))

(declare-fun b!4307450 () Bool)

(declare-fun lt!1528171 () Unit!67167)

(assert (=> b!4307450 (= e!2678495 lt!1528171)))

(declare-fun lt!1528185 () ListLongMap!959)

(declare-fun call!297021 () ListLongMap!959)

(assert (=> b!4307450 (= lt!1528185 call!297021)))

(declare-fun lemmaInGenericMapThenInLongMap!127 (ListLongMap!959 K!9314 Hashable!4543) Unit!67167)

(assert (=> b!4307450 (= lt!1528171 (lemmaInGenericMapThenInLongMap!127 lt!1528185 key!2048 (hashF!6641 thiss!42308)))))

(declare-fun res!1765494 () Bool)

(assert (=> b!4307450 (= res!1765494 call!297025)))

(declare-fun e!2678497 () Bool)

(assert (=> b!4307450 (=> (not res!1765494) (not e!2678497))))

(assert (=> b!4307450 e!2678497))

(declare-fun b!4307451 () Bool)

(declare-fun e!2678500 () Unit!67167)

(declare-fun Unit!67170 () Unit!67167)

(assert (=> b!4307451 (= e!2678500 Unit!67170)))

(declare-fun bm!297015 () Bool)

(declare-fun call!297024 () Bool)

(declare-datatypes ((Option!10215 0))(
  ( (None!10214) (Some!10214 (v!42226 tuple2!46422)) )
))
(declare-fun call!297020 () Option!10215)

(declare-fun isDefined!7517 (Option!10215) Bool)

(assert (=> bm!297015 (= call!297024 (isDefined!7517 call!297020))))

(declare-fun d!1267680 () Bool)

(declare-fun lt!1528184 () Bool)

(assert (=> d!1267680 (= lt!1528184 (contains!10091 (map!10111 thiss!42308) key!2048))))

(declare-fun e!2678499 () Bool)

(assert (=> d!1267680 (= lt!1528184 e!2678499)))

(declare-fun res!1765493 () Bool)

(assert (=> d!1267680 (=> (not res!1765493) (not e!2678499))))

(declare-fun lt!1528179 () (_ BitVec 64))

(assert (=> d!1267680 (= res!1765493 (contains!10090 (v!42219 (underlying!9484 thiss!42308)) lt!1528179))))

(declare-fun lt!1528174 () Unit!67167)

(assert (=> d!1267680 (= lt!1528174 e!2678495)))

(declare-fun c!732357 () Bool)

(assert (=> d!1267680 (= c!732357 (contains!10091 (extractMap!313 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308))))) key!2048))))

(declare-fun lt!1528180 () Unit!67167)

(declare-fun e!2678501 () Unit!67167)

(assert (=> d!1267680 (= lt!1528180 e!2678501)))

(declare-fun c!732355 () Bool)

(assert (=> d!1267680 (= c!732355 (contains!10090 (v!42219 (underlying!9484 thiss!42308)) lt!1528179))))

(assert (=> d!1267680 (= lt!1528179 (hash!963 (hashF!6641 thiss!42308) key!2048))))

(assert (=> d!1267680 (valid!3616 thiss!42308)))

(assert (=> d!1267680 (= (contains!10089 thiss!42308 key!2048) lt!1528184)))

(declare-fun bm!297016 () Bool)

(assert (=> bm!297016 (= call!297021 (map!10110 (v!42219 (underlying!9484 thiss!42308))))))

(declare-fun bm!297017 () Bool)

(declare-fun call!297022 () List!48255)

(declare-fun getPair!127 (List!48255 K!9314) Option!10215)

(assert (=> bm!297017 (= call!297020 (getPair!127 call!297022 key!2048))))

(declare-fun call!297023 () (_ BitVec 64))

(declare-fun bm!297018 () Bool)

(declare-fun apply!10983 (ListLongMap!959 (_ BitVec 64)) List!48255)

(assert (=> bm!297018 (= call!297022 (apply!10983 (ite c!732357 lt!1528185 call!297021) call!297023))))

(declare-fun b!4307452 () Bool)

(assert (=> b!4307452 false))

(declare-fun lt!1528182 () Unit!67167)

(declare-fun lt!1528183 () Unit!67167)

(assert (=> b!4307452 (= lt!1528182 lt!1528183)))

(declare-fun lt!1528186 () List!48256)

(declare-fun lt!1528177 () List!48255)

(assert (=> b!4307452 (contains!10094 lt!1528186 (tuple2!46427 lt!1528179 lt!1528177))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!138 (List!48256 (_ BitVec 64) List!48255) Unit!67167)

(assert (=> b!4307452 (= lt!1528183 (lemmaGetValueByKeyImpliesContainsTuple!138 lt!1528186 lt!1528179 lt!1528177))))

(assert (=> b!4307452 (= lt!1528177 (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528179))))

(assert (=> b!4307452 (= lt!1528186 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))))))

(declare-fun lt!1528188 () Unit!67167)

(declare-fun lt!1528173 () Unit!67167)

(assert (=> b!4307452 (= lt!1528188 lt!1528173)))

(declare-fun lt!1528176 () List!48256)

(declare-fun isDefined!7518 (Option!10214) Bool)

(assert (=> b!4307452 (isDefined!7518 (getValueByKey!246 lt!1528176 lt!1528179))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!167 (List!48256 (_ BitVec 64)) Unit!67167)

(assert (=> b!4307452 (= lt!1528173 (lemmaContainsKeyImpliesGetValueByKeyDefined!167 lt!1528176 lt!1528179))))

(assert (=> b!4307452 (= lt!1528176 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))))))

(declare-fun lt!1528170 () Unit!67167)

(declare-fun lt!1528189 () Unit!67167)

(assert (=> b!4307452 (= lt!1528170 lt!1528189)))

(declare-fun lt!1528172 () List!48256)

(declare-fun containsKey!293 (List!48256 (_ BitVec 64)) Bool)

(assert (=> b!4307452 (containsKey!293 lt!1528172 lt!1528179)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!128 (List!48256 (_ BitVec 64)) Unit!67167)

(assert (=> b!4307452 (= lt!1528189 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!128 lt!1528172 lt!1528179))))

(assert (=> b!4307452 (= lt!1528172 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))))))

(declare-fun Unit!67171 () Unit!67167)

(assert (=> b!4307452 (= e!2678500 Unit!67171)))

(declare-fun b!4307453 () Bool)

(assert (=> b!4307453 (= e!2678497 call!297024)))

(declare-fun b!4307454 () Bool)

(assert (=> b!4307454 (= e!2678498 call!297024)))

(declare-fun b!4307455 () Bool)

(assert (=> b!4307455 (= e!2678499 (isDefined!7517 (getPair!127 (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528179) key!2048)))))

(declare-fun forallContained!1494 (List!48256 Int tuple2!46426) Unit!67167)

(assert (=> b!4307456 (= e!2678501 (forallContained!1494 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))) lambda!132682 (tuple2!46427 lt!1528179 (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528179))))))

(declare-fun c!732358 () Bool)

(assert (=> b!4307456 (= c!732358 (not (contains!10094 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))) (tuple2!46427 lt!1528179 (apply!10981 (v!42219 (underlying!9484 thiss!42308)) lt!1528179)))))))

(declare-fun lt!1528178 () Unit!67167)

(assert (=> b!4307456 (= lt!1528178 e!2678500)))

(declare-fun b!4307457 () Bool)

(declare-fun Unit!67172 () Unit!67167)

(assert (=> b!4307457 (= e!2678496 Unit!67172)))

(declare-fun bm!297019 () Bool)

(assert (=> bm!297019 (= call!297023 (hash!963 (hashF!6641 thiss!42308) key!2048))))

(declare-fun b!4307458 () Bool)

(declare-fun Unit!67173 () Unit!67167)

(assert (=> b!4307458 (= e!2678501 Unit!67173)))

(declare-fun bm!297020 () Bool)

(assert (=> bm!297020 (= call!297025 (contains!10093 (ite c!732357 lt!1528185 call!297021) call!297023))))

(declare-fun b!4307459 () Bool)

(assert (=> b!4307459 false))

(declare-fun lt!1528175 () Unit!67167)

(declare-fun lt!1528187 () Unit!67167)

(assert (=> b!4307459 (= lt!1528175 lt!1528187)))

(declare-fun lt!1528181 () ListLongMap!959)

(assert (=> b!4307459 (contains!10091 (extractMap!313 (toList!2347 lt!1528181)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!127 (ListLongMap!959 K!9314 Hashable!4543) Unit!67167)

(assert (=> b!4307459 (= lt!1528187 (lemmaInLongMapThenInGenericMap!127 lt!1528181 key!2048 (hashF!6641 thiss!42308)))))

(assert (=> b!4307459 (= lt!1528181 call!297021)))

(declare-fun Unit!67174 () Unit!67167)

(assert (=> b!4307459 (= e!2678496 Unit!67174)))

(assert (= (and d!1267680 c!732355) b!4307456))

(assert (= (and d!1267680 (not c!732355)) b!4307458))

(assert (= (and b!4307456 c!732358) b!4307452))

(assert (= (and b!4307456 (not c!732358)) b!4307451))

(assert (= (and d!1267680 c!732357) b!4307450))

(assert (= (and d!1267680 (not c!732357)) b!4307449))

(assert (= (and b!4307450 res!1765494) b!4307453))

(assert (= (and b!4307449 res!1765495) b!4307454))

(assert (= (and b!4307449 c!732356) b!4307459))

(assert (= (and b!4307449 (not c!732356)) b!4307457))

(assert (= (or b!4307450 b!4307449 b!4307454 b!4307459) bm!297016))

(assert (= (or b!4307450 b!4307453 b!4307449 b!4307454) bm!297019))

(assert (= (or b!4307453 b!4307454) bm!297018))

(assert (= (or b!4307450 b!4307449) bm!297020))

(assert (= (or b!4307453 b!4307454) bm!297017))

(assert (= (or b!4307453 b!4307454) bm!297015))

(assert (= (and d!1267680 res!1765493) b!4307455))

(assert (=> d!1267680 m!4900209))

(assert (=> d!1267680 m!4900217))

(assert (=> d!1267680 m!4900211))

(declare-fun m!4900347 () Bool)

(assert (=> d!1267680 m!4900347))

(declare-fun m!4900349 () Bool)

(assert (=> d!1267680 m!4900349))

(declare-fun m!4900351 () Bool)

(assert (=> d!1267680 m!4900351))

(assert (=> d!1267680 m!4900211))

(assert (=> d!1267680 m!4900195))

(assert (=> d!1267680 m!4900349))

(declare-fun m!4900353 () Bool)

(assert (=> d!1267680 m!4900353))

(assert (=> b!4307456 m!4900209))

(declare-fun m!4900355 () Bool)

(assert (=> b!4307456 m!4900355))

(declare-fun m!4900357 () Bool)

(assert (=> b!4307456 m!4900357))

(declare-fun m!4900359 () Bool)

(assert (=> b!4307456 m!4900359))

(assert (=> bm!297019 m!4900217))

(declare-fun m!4900361 () Bool)

(assert (=> bm!297017 m!4900361))

(assert (=> bm!297016 m!4900209))

(declare-fun m!4900363 () Bool)

(assert (=> bm!297020 m!4900363))

(declare-fun m!4900365 () Bool)

(assert (=> b!4307450 m!4900365))

(declare-fun m!4900367 () Bool)

(assert (=> bm!297018 m!4900367))

(declare-fun m!4900369 () Bool)

(assert (=> b!4307459 m!4900369))

(assert (=> b!4307459 m!4900369))

(declare-fun m!4900371 () Bool)

(assert (=> b!4307459 m!4900371))

(declare-fun m!4900373 () Bool)

(assert (=> b!4307459 m!4900373))

(declare-fun m!4900375 () Bool)

(assert (=> bm!297015 m!4900375))

(assert (=> b!4307455 m!4900355))

(assert (=> b!4307455 m!4900355))

(declare-fun m!4900377 () Bool)

(assert (=> b!4307455 m!4900377))

(assert (=> b!4307455 m!4900377))

(declare-fun m!4900379 () Bool)

(assert (=> b!4307455 m!4900379))

(assert (=> b!4307452 m!4900209))

(declare-fun m!4900381 () Bool)

(assert (=> b!4307452 m!4900381))

(declare-fun m!4900383 () Bool)

(assert (=> b!4307452 m!4900383))

(declare-fun m!4900385 () Bool)

(assert (=> b!4307452 m!4900385))

(declare-fun m!4900387 () Bool)

(assert (=> b!4307452 m!4900387))

(declare-fun m!4900389 () Bool)

(assert (=> b!4307452 m!4900389))

(assert (=> b!4307452 m!4900355))

(declare-fun m!4900391 () Bool)

(assert (=> b!4307452 m!4900391))

(assert (=> b!4307452 m!4900383))

(declare-fun m!4900393 () Bool)

(assert (=> b!4307452 m!4900393))

(assert (=> b!4307326 d!1267680))

(declare-fun d!1267682 () Bool)

(assert (=> d!1267682 (= (map!10110 (v!42219 (underlying!9484 thiss!42308))) (map!10112 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308))))))))

(declare-fun bs!604775 () Bool)

(assert (= bs!604775 d!1267682))

(declare-fun m!4900395 () Bool)

(assert (=> bs!604775 m!4900395))

(assert (=> b!4307326 d!1267682))

(declare-fun d!1267684 () Bool)

(declare-fun lt!1528192 () ListMap!1629)

(assert (=> d!1267684 (invariantList!566 (toList!2348 lt!1528192))))

(assert (=> d!1267684 (= lt!1528192 (extractMap!313 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308))))))))

(assert (=> d!1267684 (valid!3616 thiss!42308)))

(assert (=> d!1267684 (= (map!10111 thiss!42308) lt!1528192)))

(declare-fun bs!604776 () Bool)

(assert (= bs!604776 d!1267684))

(declare-fun m!4900397 () Bool)

(assert (=> bs!604776 m!4900397))

(assert (=> bs!604776 m!4900209))

(assert (=> bs!604776 m!4900349))

(assert (=> bs!604776 m!4900195))

(assert (=> b!4307326 d!1267684))

(declare-fun bs!604777 () Bool)

(declare-fun b!4307460 () Bool)

(assert (= bs!604777 (and b!4307460 d!1267674)))

(declare-fun lambda!132683 () Int)

(assert (=> bs!604777 (not (= lambda!132683 lambda!132676))))

(declare-fun bs!604778 () Bool)

(assert (= bs!604778 (and b!4307460 b!4307355)))

(assert (=> bs!604778 (= lambda!132683 lambda!132657)))

(declare-fun bs!604779 () Bool)

(assert (= bs!604779 (and b!4307460 d!1267652)))

(assert (=> bs!604779 (= lambda!132683 lambda!132669)))

(declare-fun bs!604780 () Bool)

(assert (= bs!604780 (and b!4307460 d!1267678)))

(assert (=> bs!604780 (not (= lambda!132683 lambda!132679))))

(declare-fun bs!604781 () Bool)

(assert (= bs!604781 (and b!4307460 b!4307456)))

(assert (=> bs!604781 (= lambda!132683 lambda!132682)))

(declare-fun bs!604782 () Bool)

(assert (= bs!604782 (and b!4307460 d!1267646)))

(assert (=> bs!604782 (= lambda!132683 lambda!132663)))

(declare-fun bs!604783 () Bool)

(assert (= bs!604783 (and b!4307460 b!4307323)))

(assert (=> bs!604783 (= lambda!132683 lambda!132654)))

(declare-fun bs!604784 () Bool)

(assert (= bs!604784 (and b!4307460 d!1267644)))

(assert (=> bs!604784 (= lambda!132683 lambda!132660)))

(declare-fun bs!604785 () Bool)

(assert (= bs!604785 (and b!4307460 d!1267648)))

(assert (=> bs!604785 (= lambda!132683 lambda!132668)))

(declare-fun d!1267686 () Bool)

(declare-fun res!1765496 () Bool)

(declare-fun e!2678502 () Bool)

(assert (=> d!1267686 (=> (not res!1765496) (not e!2678502))))

(assert (=> d!1267686 (= res!1765496 (valid!3617 (v!42219 (underlying!9484 thiss!42308))))))

(assert (=> d!1267686 (= (valid!3616 thiss!42308) e!2678502)))

(declare-fun res!1765497 () Bool)

(assert (=> b!4307460 (=> (not res!1765497) (not e!2678502))))

(assert (=> b!4307460 (= res!1765497 (forall!8710 (toList!2347 (map!10110 (v!42219 (underlying!9484 thiss!42308)))) lambda!132683))))

(declare-fun b!4307461 () Bool)

(assert (=> b!4307461 (= e!2678502 (allKeysSameHashInMap!320 (map!10110 (v!42219 (underlying!9484 thiss!42308))) (hashF!6641 thiss!42308)))))

(assert (= (and d!1267686 res!1765496) b!4307460))

(assert (= (and b!4307460 res!1765497) b!4307461))

(assert (=> d!1267686 m!4900313))

(assert (=> b!4307460 m!4900209))

(declare-fun m!4900399 () Bool)

(assert (=> b!4307460 m!4900399))

(assert (=> b!4307461 m!4900209))

(assert (=> b!4307461 m!4900209))

(declare-fun m!4900401 () Bool)

(assert (=> b!4307461 m!4900401))

(assert (=> b!4307325 d!1267686))

(declare-fun bs!604786 () Bool)

(declare-fun d!1267688 () Bool)

(assert (= bs!604786 (and d!1267688 d!1267674)))

(declare-fun lambda!132684 () Int)

(assert (=> bs!604786 (= lambda!132684 lambda!132676)))

(declare-fun bs!604787 () Bool)

(assert (= bs!604787 (and d!1267688 b!4307355)))

(assert (=> bs!604787 (not (= lambda!132684 lambda!132657))))

(declare-fun bs!604788 () Bool)

(assert (= bs!604788 (and d!1267688 d!1267652)))

(assert (=> bs!604788 (not (= lambda!132684 lambda!132669))))

(declare-fun bs!604789 () Bool)

(assert (= bs!604789 (and d!1267688 d!1267678)))

(assert (=> bs!604789 (= lambda!132684 lambda!132679)))

(declare-fun bs!604790 () Bool)

(assert (= bs!604790 (and d!1267688 b!4307456)))

(assert (=> bs!604790 (not (= lambda!132684 lambda!132682))))

(declare-fun bs!604791 () Bool)

(assert (= bs!604791 (and d!1267688 d!1267646)))

(assert (=> bs!604791 (not (= lambda!132684 lambda!132663))))

(declare-fun bs!604792 () Bool)

(assert (= bs!604792 (and d!1267688 b!4307460)))

(assert (=> bs!604792 (not (= lambda!132684 lambda!132683))))

(declare-fun bs!604793 () Bool)

(assert (= bs!604793 (and d!1267688 b!4307323)))

(assert (=> bs!604793 (not (= lambda!132684 lambda!132654))))

(declare-fun bs!604794 () Bool)

(assert (= bs!604794 (and d!1267688 d!1267644)))

(assert (=> bs!604794 (not (= lambda!132684 lambda!132660))))

(declare-fun bs!604795 () Bool)

(assert (= bs!604795 (and d!1267688 d!1267648)))

(assert (=> bs!604795 (not (= lambda!132684 lambda!132668))))

(assert (=> d!1267688 true))

(assert (=> d!1267688 (= (allKeysSameHashInMap!320 lt!1528058 (hashF!6641 thiss!42308)) (forall!8710 (toList!2347 lt!1528058) lambda!132684))))

(declare-fun bs!604796 () Bool)

(assert (= bs!604796 d!1267688))

(declare-fun m!4900403 () Bool)

(assert (=> bs!604796 m!4900403))

(assert (=> b!4307334 d!1267688))

(declare-fun d!1267690 () Bool)

(assert (=> d!1267690 (= (array_inv!5333 (_keys!4927 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) (bvsge (size!35478 (_keys!4927 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4307335 d!1267690))

(declare-fun d!1267692 () Bool)

(assert (=> d!1267692 (= (array_inv!5334 (_values!4908 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) (bvsge (size!35479 (_values!4908 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4307335 d!1267692))

(declare-fun e!2678505 () Bool)

(declare-fun b!4307466 () Bool)

(declare-fun tp!1323689 () Bool)

(assert (=> b!4307466 (= e!2678505 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323689))))

(assert (=> b!4307327 (= tp!1323681 e!2678505)))

(assert (= (and b!4307327 ((_ is Cons!48131) mapDefault!20695)) b!4307466))

(declare-fun e!2678510 () Bool)

(declare-fun b!4307473 () Bool)

(declare-fun tp!1323698 () Bool)

(assert (=> b!4307473 (= e!2678510 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323698))))

(declare-fun mapIsEmpty!20698 () Bool)

(declare-fun mapRes!20698 () Bool)

(assert (=> mapIsEmpty!20698 mapRes!20698))

(declare-fun b!4307474 () Bool)

(declare-fun tp!1323697 () Bool)

(declare-fun e!2678511 () Bool)

(assert (=> b!4307474 (= e!2678511 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323697))))

(declare-fun mapNonEmpty!20698 () Bool)

(declare-fun tp!1323696 () Bool)

(assert (=> mapNonEmpty!20698 (= mapRes!20698 (and tp!1323696 e!2678510))))

(declare-fun mapKey!20698 () (_ BitVec 32))

(declare-fun mapValue!20698 () List!48255)

(declare-fun mapRest!20698 () (Array (_ BitVec 32) List!48255))

(assert (=> mapNonEmpty!20698 (= mapRest!20695 (store mapRest!20698 mapKey!20698 mapValue!20698))))

(declare-fun condMapEmpty!20698 () Bool)

(declare-fun mapDefault!20698 () List!48255)

(assert (=> mapNonEmpty!20695 (= condMapEmpty!20698 (= mapRest!20695 ((as const (Array (_ BitVec 32) List!48255)) mapDefault!20698)))))

(assert (=> mapNonEmpty!20695 (= tp!1323685 (and e!2678511 mapRes!20698))))

(assert (= (and mapNonEmpty!20695 condMapEmpty!20698) mapIsEmpty!20698))

(assert (= (and mapNonEmpty!20695 (not condMapEmpty!20698)) mapNonEmpty!20698))

(assert (= (and mapNonEmpty!20698 ((_ is Cons!48131) mapValue!20698)) b!4307473))

(assert (= (and mapNonEmpty!20695 ((_ is Cons!48131) mapDefault!20698)) b!4307474))

(declare-fun m!4900405 () Bool)

(assert (=> mapNonEmpty!20698 m!4900405))

(declare-fun tp!1323699 () Bool)

(declare-fun e!2678512 () Bool)

(declare-fun b!4307475 () Bool)

(assert (=> b!4307475 (= e!2678512 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323699))))

(assert (=> mapNonEmpty!20695 (= tp!1323683 e!2678512)))

(assert (= (and mapNonEmpty!20695 ((_ is Cons!48131) mapValue!20695)) b!4307475))

(declare-fun b!4307476 () Bool)

(declare-fun tp!1323700 () Bool)

(declare-fun e!2678513 () Bool)

(assert (=> b!4307476 (= e!2678513 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323700))))

(assert (=> b!4307335 (= tp!1323682 e!2678513)))

(assert (= (and b!4307335 ((_ is Cons!48131) (zeroValue!4886 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308))))))) b!4307476))

(declare-fun e!2678514 () Bool)

(declare-fun b!4307477 () Bool)

(declare-fun tp!1323701 () Bool)

(assert (=> b!4307477 (= e!2678514 (and tp_is_empty!23629 tp_is_empty!23631 tp!1323701))))

(assert (=> b!4307335 (= tp!1323686 e!2678514)))

(assert (= (and b!4307335 ((_ is Cons!48131) (minValue!4886 (v!42218 (underlying!9483 (v!42219 (underlying!9484 thiss!42308))))))) b!4307477))

(declare-fun b_lambda!126553 () Bool)

(assert (= b_lambda!126551 (or (and b!4307335 b_free!128467) b_lambda!126553)))

(declare-fun b_lambda!126555 () Bool)

(assert (= b_lambda!126549 (or b!4307323 b_lambda!126555)))

(declare-fun bs!604797 () Bool)

(declare-fun d!1267694 () Bool)

(assert (= bs!604797 (and d!1267694 b!4307323)))

(assert (=> bs!604797 (= (dynLambda!20415 lambda!132654 (h!53563 (toList!2347 lt!1528058))) (noDuplicateKeys!197 (_2!26492 (h!53563 (toList!2347 lt!1528058)))))))

(declare-fun m!4900407 () Bool)

(assert (=> bs!604797 m!4900407))

(assert (=> b!4307368 d!1267694))

(declare-fun b_lambda!126557 () Bool)

(assert (= b_lambda!126547 (or b!4307323 b_lambda!126557)))

(declare-fun bs!604798 () Bool)

(declare-fun d!1267696 () Bool)

(assert (= bs!604798 (and d!1267696 b!4307323)))

(assert (=> bs!604798 (= (dynLambda!20415 lambda!132654 (h!53563 (toList!2347 lt!1528059))) (noDuplicateKeys!197 (_2!26492 (h!53563 (toList!2347 lt!1528059)))))))

(declare-fun m!4900409 () Bool)

(assert (=> bs!604798 m!4900409))

(assert (=> b!4307343 d!1267696))

(check-sat (not b_lambda!126557) (not bm!297019) (not b_lambda!126553) (not tb!257279) (not b!4307461) (not d!1267680) (not b!4307476) (not b!4307374) (not b!4307407) (not b!4307466) (not b!4307349) (not bm!297002) (not b_lambda!126555) (not b!4307450) (not d!1267688) (not d!1267646) b_and!339879 (not b!4307365) (not d!1267686) (not bm!297001) (not b!4307455) (not b!4307394) (not b!4307456) (not bs!604798) (not d!1267672) (not b!4307369) (not d!1267650) (not b!4307375) (not d!1267644) (not b!4307366) (not d!1267684) (not bm!297018) (not d!1267666) (not b!4307399) (not b_next!129173) (not d!1267676) (not d!1267664) (not b!4307350) (not d!1267660) (not d!1267636) (not b!4307344) (not b!4307397) (not d!1267678) (not b_next!129171) (not d!1267682) (not d!1267674) (not d!1267668) (not mapNonEmpty!20698) (not b!4307477) (not d!1267656) (not d!1267648) (not bs!604797) (not bm!297020) (not b!4307474) (not b!4307473) (not b!4307459) (not b!4307402) (not b!4307361) (not b!4307460) (not b!4307356) (not d!1267640) (not d!1267642) b_and!339877 (not d!1267670) (not b!4307475) (not b!4307396) (not d!1267662) (not b!4307425) (not bm!297016) (not b!4307355) (not bm!297017) tp_is_empty!23629 (not d!1267652) (not bm!297015) tp_is_empty!23631 (not b!4307452))
(check-sat b_and!339879 b_and!339877 (not b_next!129173) (not b_next!129171))
