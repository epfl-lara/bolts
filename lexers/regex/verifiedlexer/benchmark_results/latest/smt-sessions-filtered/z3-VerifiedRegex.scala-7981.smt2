; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414046 () Bool)

(assert start!414046)

(declare-fun b!4308633 () Bool)

(declare-fun b_free!128531 () Bool)

(declare-fun b_next!129235 () Bool)

(assert (=> b!4308633 (= b_free!128531 (not b_next!129235))))

(declare-fun tp!1324065 () Bool)

(declare-fun b_and!339945 () Bool)

(assert (=> b!4308633 (= tp!1324065 b_and!339945)))

(declare-fun b!4308650 () Bool)

(declare-fun b_free!128533 () Bool)

(declare-fun b_next!129237 () Bool)

(assert (=> b!4308650 (= b_free!128533 (not b_next!129237))))

(declare-fun tp!1324063 () Bool)

(declare-fun b_and!339947 () Bool)

(assert (=> b!4308650 (= tp!1324063 b_and!339947)))

(declare-fun bs!604965 () Bool)

(declare-fun b!4308640 () Bool)

(declare-fun b!4308648 () Bool)

(assert (= bs!604965 (and b!4308640 b!4308648)))

(declare-fun lambda!132824 () Int)

(declare-fun lambda!132823 () Int)

(assert (=> bs!604965 (= lambda!132824 lambda!132823)))

(declare-fun b!4308632 () Bool)

(declare-fun res!1765947 () Bool)

(declare-fun e!2679409 () Bool)

(assert (=> b!4308632 (=> (not res!1765947) (not e!2679409))))

(declare-fun call!297404 () Bool)

(assert (=> b!4308632 (= res!1765947 call!297404)))

(declare-fun e!2679394 () Bool)

(declare-fun tp!1324061 () Bool)

(declare-fun tp!1324062 () Bool)

(declare-fun e!2679411 () Bool)

(declare-datatypes ((V!9556 0))(
  ( (V!9557 (val!15741 Int)) )
))
(declare-datatypes ((K!9354 0))(
  ( (K!9355 (val!15742 Int)) )
))
(declare-datatypes ((tuple2!46526 0))(
  ( (tuple2!46527 (_1!26542 K!9354) (_2!26542 V!9556)) )
))
(declare-datatypes ((List!48286 0))(
  ( (Nil!48162) (Cons!48162 (h!53596 tuple2!46526) (t!355085 List!48286)) )
))
(declare-datatypes ((array!16728 0))(
  ( (array!16729 (arr!7471 (Array (_ BitVec 32) (_ BitVec 64))) (size!35510 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4559 0))(
  ( (HashableExt!4558 (__x!29954 Int)) )
))
(declare-datatypes ((array!16730 0))(
  ( (array!16731 (arr!7472 (Array (_ BitVec 32) List!48286)) (size!35511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9286 0))(
  ( (LongMapFixedSize!9287 (defaultEntry!5028 Int) (mask!13193 (_ BitVec 32)) (extraKeys!4892 (_ BitVec 32)) (zeroValue!4902 List!48286) (minValue!4902 List!48286) (_size!9329 (_ BitVec 32)) (_keys!4943 array!16728) (_values!4924 array!16730) (_vacant!4704 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18381 0))(
  ( (Cell!18382 (v!42275 LongMapFixedSize!9286)) )
))
(declare-datatypes ((MutLongMap!4643 0))(
  ( (LongMap!4643 (underlying!9515 Cell!18381)) (MutLongMapExt!4642 (__x!29955 Int)) )
))
(declare-datatypes ((Cell!18383 0))(
  ( (Cell!18384 (v!42276 MutLongMap!4643)) )
))
(declare-datatypes ((MutableMap!4549 0))(
  ( (MutableMapExt!4548 (__x!29956 Int)) (HashMap!4549 (underlying!9516 Cell!18383) (hashF!6675 Hashable!4559) (_size!9330 (_ BitVec 32)) (defaultValue!4720 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4549)

(declare-fun array_inv!5359 (array!16728) Bool)

(declare-fun array_inv!5360 (array!16730) Bool)

(assert (=> b!4308633 (= e!2679411 (and tp!1324065 tp!1324062 tp!1324061 (array_inv!5359 (_keys!4943 (v!42275 (underlying!9515 (v!42276 (underlying!9516 thiss!42308)))))) (array_inv!5360 (_values!4924 (v!42275 (underlying!9515 (v!42276 (underlying!9516 thiss!42308)))))) e!2679394))))

(declare-fun lt!1529495 () List!48286)

(declare-fun lt!1529500 () (_ BitVec 64))

(declare-fun bm!297381 () Bool)

(declare-datatypes ((tuple2!46528 0))(
  ( (tuple2!46529 (_1!26543 Bool) (_2!26543 MutLongMap!4643)) )
))
(declare-fun call!297406 () tuple2!46528)

(declare-fun lt!1529473 () List!48286)

(declare-fun lt!1529479 () (_ BitVec 64))

(declare-fun c!732557 () Bool)

(declare-fun update!423 (MutLongMap!4643 (_ BitVec 64) List!48286) tuple2!46528)

(assert (=> bm!297381 (= call!297406 (update!423 (v!42276 (underlying!9516 thiss!42308)) (ite c!732557 lt!1529500 lt!1529479) (ite c!732557 lt!1529473 lt!1529495)))))

(declare-fun lt!1529516 () List!48286)

(declare-fun call!297412 () Bool)

(declare-fun bm!297382 () Bool)

(declare-fun lt!1529511 () List!48286)

(declare-fun allKeysSameHash!178 (List!48286 (_ BitVec 64) Hashable!4559) Bool)

(assert (=> bm!297382 (= call!297412 (allKeysSameHash!178 (ite c!732557 lt!1529511 lt!1529516) (ite c!732557 lt!1529500 lt!1529479) (hashF!6675 thiss!42308)))))

(declare-fun bm!297383 () Bool)

(declare-datatypes ((tuple2!46530 0))(
  ( (tuple2!46531 (_1!26544 (_ BitVec 64)) (_2!26544 List!48286)) )
))
(declare-datatypes ((List!48287 0))(
  ( (Nil!48163) (Cons!48163 (h!53597 tuple2!46530) (t!355086 List!48287)) )
))
(declare-datatypes ((ListLongMap!987 0))(
  ( (ListLongMap!988 (toList!2374 List!48287)) )
))
(declare-fun lt!1529498 () ListLongMap!987)

(declare-datatypes ((Unit!67232 0))(
  ( (Unit!67233) )
))
(declare-fun call!297391 () Unit!67232)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!143 (ListLongMap!987 (_ BitVec 64) List!48286 Hashable!4559) Unit!67232)

(assert (=> bm!297383 (= call!297391 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!143 lt!1529498 (ite c!732557 lt!1529500 lt!1529479) (ite c!732557 lt!1529473 lt!1529495) (hashF!6675 thiss!42308)))))

(declare-fun bm!297384 () Bool)

(declare-fun call!297386 () Bool)

(declare-datatypes ((ListMap!1655 0))(
  ( (ListMap!1656 (toList!2375 List!48286)) )
))
(declare-fun call!297389 () ListMap!1655)

(declare-fun call!297397 () ListMap!1655)

(declare-fun eq!137 (ListMap!1655 ListMap!1655) Bool)

(assert (=> bm!297384 (= call!297386 (eq!137 call!297389 call!297397))))

(declare-fun b!4308635 () Bool)

(declare-fun e!2679392 () List!48286)

(declare-fun call!297395 () List!48286)

(assert (=> b!4308635 (= e!2679392 call!297395)))

(declare-fun bm!297385 () Bool)

(declare-fun apply!10998 (MutLongMap!4643 (_ BitVec 64)) List!48286)

(assert (=> bm!297385 (= call!297395 (apply!10998 (v!42276 (underlying!9516 thiss!42308)) (ite c!732557 lt!1529500 lt!1529479)))))

(declare-fun lt!1529504 () MutableMap!4549)

(declare-fun bm!297386 () Bool)

(declare-fun call!297413 () ListMap!1655)

(declare-fun lt!1529480 () MutableMap!4549)

(declare-fun map!10145 (MutableMap!4549) ListMap!1655)

(assert (=> bm!297386 (= call!297413 (map!10145 (ite c!732557 lt!1529480 lt!1529504)))))

(declare-fun b!4308636 () Bool)

(declare-fun e!2679398 () Bool)

(assert (=> b!4308636 (= e!2679398 false)))

(declare-fun lt!1529482 () Bool)

(declare-datatypes ((tuple2!46532 0))(
  ( (tuple2!46533 (_1!26545 Bool) (_2!26545 MutableMap!4549)) )
))
(declare-fun lt!1529490 () tuple2!46532)

(declare-fun valid!3631 (MutableMap!4549) Bool)

(assert (=> b!4308636 (= lt!1529482 (valid!3631 (_2!26545 lt!1529490)))))

(declare-fun b!4308637 () Bool)

(declare-fun tp!1324066 () Bool)

(declare-fun mapRes!20752 () Bool)

(assert (=> b!4308637 (= e!2679394 (and tp!1324066 mapRes!20752))))

(declare-fun condMapEmpty!20752 () Bool)

(declare-fun mapDefault!20752 () List!48286)

(assert (=> b!4308637 (= condMapEmpty!20752 (= (arr!7472 (_values!4924 (v!42275 (underlying!9515 (v!42276 (underlying!9516 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48286)) mapDefault!20752)))))

(declare-fun b!4308638 () Bool)

(declare-fun e!2679410 () Bool)

(declare-fun call!297410 () ListMap!1655)

(declare-fun lt!1529509 () ListMap!1655)

(assert (=> b!4308638 (= e!2679410 (= call!297410 lt!1529509))))

(declare-fun bm!297387 () Bool)

(declare-fun call!297407 () Bool)

(assert (=> bm!297387 (= call!297407 (valid!3631 (ite c!732557 lt!1529480 lt!1529504)))))

(declare-fun b!4308639 () Bool)

(declare-fun e!2679407 () Bool)

(declare-fun noDuplicateKeys!202 (List!48286) Bool)

(assert (=> b!4308639 (= e!2679407 (noDuplicateKeys!202 lt!1529473))))

(declare-fun lt!1529499 () ListLongMap!987)

(declare-fun bm!297388 () Bool)

(declare-fun lt!1529507 () ListLongMap!987)

(declare-fun allKeysSameHashInMap!329 (ListLongMap!987 Hashable!4559) Bool)

(assert (=> bm!297388 (= call!297404 (allKeysSameHashInMap!329 (ite c!732557 lt!1529507 lt!1529499) (hashF!6675 thiss!42308)))))

(declare-fun lt!1529515 () Bool)

(declare-fun lt!1529494 () Bool)

(assert (=> b!4308640 (and (= lt!1529515 lt!1529494) lt!1529494 lt!1529515)))

(declare-fun call!297401 () Bool)

(assert (=> b!4308640 (= lt!1529494 call!297401)))

(declare-fun call!297409 () Bool)

(assert (=> b!4308640 (= lt!1529515 call!297409)))

(declare-fun lt!1529514 () Unit!67232)

(declare-fun call!297396 () Unit!67232)

(assert (=> b!4308640 (= lt!1529514 call!297396)))

(declare-fun call!297405 () Bool)

(assert (=> b!4308640 call!297405))

(declare-fun lt!1529491 () ListMap!1655)

(declare-fun call!297387 () ListMap!1655)

(assert (=> b!4308640 (= lt!1529491 call!297387)))

(declare-fun lt!1529488 () ListMap!1655)

(assert (=> b!4308640 (= lt!1529488 call!297410)))

(declare-fun e!2679412 () Bool)

(assert (=> b!4308640 e!2679412))

(declare-fun res!1765941 () Bool)

(assert (=> b!4308640 (=> (not res!1765941) (not e!2679412))))

(declare-fun call!297408 () Bool)

(assert (=> b!4308640 (= res!1765941 call!297408)))

(declare-fun lt!1529478 () ListLongMap!987)

(declare-fun call!297398 () ListLongMap!987)

(assert (=> b!4308640 (= lt!1529478 call!297398)))

(assert (=> b!4308640 call!297386))

(declare-fun v!9179 () V!9556)

(declare-fun lt!1529501 () Unit!67232)

(declare-fun key!2048 () K!9354)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!54 (ListLongMap!987 (_ BitVec 64) List!48286 K!9354 V!9556 Hashable!4559) Unit!67232)

(assert (=> b!4308640 (= lt!1529501 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!54 lt!1529498 lt!1529479 lt!1529495 key!2048 v!9179 (hashF!6675 thiss!42308)))))

(declare-fun e!2679404 () Bool)

(assert (=> b!4308640 e!2679404))

(declare-fun res!1765942 () Bool)

(assert (=> b!4308640 (=> (not res!1765942) (not e!2679404))))

(declare-fun call!297393 () Bool)

(assert (=> b!4308640 (= res!1765942 call!297393)))

(declare-fun call!297403 () ListLongMap!987)

(assert (=> b!4308640 (= lt!1529499 call!297403)))

(declare-fun lt!1529512 () Unit!67232)

(assert (=> b!4308640 (= lt!1529512 call!297391)))

(declare-fun lt!1529476 () Unit!67232)

(declare-fun e!2679397 () Unit!67232)

(assert (=> b!4308640 (= lt!1529476 e!2679397)))

(declare-fun c!732558 () Bool)

(declare-fun isEmpty!28080 (List!48286) Bool)

(assert (=> b!4308640 (= c!732558 (not (isEmpty!28080 lt!1529516)))))

(declare-fun e!2679399 () Unit!67232)

(declare-fun Unit!67234 () Unit!67232)

(assert (=> b!4308640 (= e!2679399 Unit!67234)))

(declare-fun lt!1529485 () ListMap!1655)

(declare-fun bm!297389 () Bool)

(declare-fun contains!10131 (ListMap!1655 K!9354) Bool)

(assert (=> bm!297389 (= call!297401 (contains!10131 (ite c!732557 lt!1529485 lt!1529491) key!2048))))

(declare-fun b!4308641 () Bool)

(declare-fun e!2679393 () Bool)

(declare-fun call!297399 () Bool)

(assert (=> b!4308641 (= e!2679393 call!297399)))

(declare-fun mapIsEmpty!20752 () Bool)

(assert (=> mapIsEmpty!20752 mapRes!20752))

(declare-fun call!297411 () Unit!67232)

(declare-fun bm!297390 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!162 (List!48286 K!9354 (_ BitVec 64) Hashable!4559) Unit!67232)

(assert (=> bm!297390 (= call!297411 (lemmaRemovePairForKeyPreservesHash!162 (ite c!732557 lt!1529511 lt!1529516) key!2048 (ite c!732557 lt!1529500 lt!1529479) (hashF!6675 thiss!42308)))))

(declare-fun bm!297391 () Bool)

(declare-fun lt!1529517 () ListMap!1655)

(declare-fun lemmaEquivalentThenSameContains!53 (ListMap!1655 ListMap!1655 K!9354) Unit!67232)

(assert (=> bm!297391 (= call!297396 (lemmaEquivalentThenSameContains!53 (ite c!732557 lt!1529517 lt!1529488) (ite c!732557 lt!1529485 lt!1529491) key!2048))))

(declare-fun b!4308642 () Bool)

(assert (=> b!4308642 (= e!2679392 Nil!48162)))

(declare-fun bm!297392 () Bool)

(assert (=> bm!297392 (= call!297405 (eq!137 (ite c!732557 lt!1529517 lt!1529488) (ite c!732557 lt!1529485 lt!1529491)))))

(declare-fun bm!297393 () Bool)

(declare-fun lt!1529505 () ListLongMap!987)

(declare-fun forall!8720 (List!48287 Int) Bool)

(assert (=> bm!297393 (= call!297393 (forall!8720 (ite c!732557 (toList!2374 lt!1529505) (toList!2374 lt!1529499)) (ite c!732557 lambda!132823 lambda!132824)))))

(declare-fun call!297394 () List!48286)

(declare-fun bm!297394 () Bool)

(declare-fun removePairForKey!201 (List!48286 K!9354) List!48286)

(assert (=> bm!297394 (= call!297394 (removePairForKey!201 (ite c!732557 lt!1529511 lt!1529516) key!2048))))

(declare-fun b!4308643 () Bool)

(assert (=> b!4308643 (= e!2679404 call!297404)))

(declare-fun bm!297395 () Bool)

(declare-fun call!297390 () (_ BitVec 64))

(declare-fun hash!991 (Hashable!4559 K!9354) (_ BitVec 64))

(assert (=> bm!297395 (= call!297390 (hash!991 (hashF!6675 thiss!42308) key!2048))))

(declare-fun b!4308644 () Bool)

(assert (=> b!4308644 (= e!2679412 call!297399)))

(declare-fun b!4308645 () Bool)

(declare-fun lt!1529487 () Unit!67232)

(assert (=> b!4308645 (= e!2679397 lt!1529487)))

(declare-fun lt!1529506 () Unit!67232)

(declare-fun call!297400 () Unit!67232)

(assert (=> b!4308645 (= lt!1529506 call!297400)))

(assert (=> b!4308645 call!297412))

(assert (=> b!4308645 (= lt!1529487 call!297411)))

(declare-fun call!297402 () Bool)

(assert (=> b!4308645 call!297402))

(declare-fun bm!297396 () Bool)

(declare-fun call!297388 () ListMap!1655)

(declare-fun extractMap!321 (List!48287) ListMap!1655)

(assert (=> bm!297396 (= call!297388 (extractMap!321 (toList!2374 lt!1529498)))))

(declare-fun lt!1529474 () Bool)

(declare-fun b!4308646 () Bool)

(declare-fun e!2679403 () tuple2!46532)

(declare-fun lt!1529492 () Cell!18383)

(declare-fun lt!1529503 () tuple2!46528)

(declare-datatypes ((tuple2!46534 0))(
  ( (tuple2!46535 (_1!26546 Unit!67232) (_2!26546 MutableMap!4549)) )
))
(declare-fun Unit!67235 () Unit!67232)

(declare-fun Unit!67236 () Unit!67232)

(assert (=> b!4308646 (= e!2679403 (tuple2!46533 (_1!26543 lt!1529503) (_2!26546 (ite (and (_1!26543 lt!1529503) (not lt!1529474)) (tuple2!46535 Unit!67235 (HashMap!4549 lt!1529492 (hashF!6675 thiss!42308) (bvadd (_size!9330 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4720 thiss!42308))) (tuple2!46535 Unit!67236 lt!1529504)))))))

(assert (=> b!4308646 (= lt!1529479 call!297390)))

(declare-fun c!732556 () Bool)

(declare-fun contains!10132 (MutLongMap!4643 (_ BitVec 64)) Bool)

(assert (=> b!4308646 (= c!732556 (contains!10132 (v!42276 (underlying!9516 thiss!42308)) lt!1529479))))

(assert (=> b!4308646 (= lt!1529516 e!2679392)))

(declare-fun lt!1529496 () tuple2!46526)

(assert (=> b!4308646 (= lt!1529496 (tuple2!46527 key!2048 v!9179))))

(assert (=> b!4308646 (= lt!1529495 (Cons!48162 lt!1529496 lt!1529516))))

(assert (=> b!4308646 (= lt!1529503 call!297406)))

(assert (=> b!4308646 (= lt!1529492 (Cell!18384 (_2!26543 lt!1529503)))))

(assert (=> b!4308646 (= lt!1529504 (HashMap!4549 lt!1529492 (hashF!6675 thiss!42308) (_size!9330 thiss!42308) (defaultValue!4720 thiss!42308)))))

(declare-fun c!732555 () Bool)

(assert (=> b!4308646 (= c!732555 (_1!26543 lt!1529503))))

(declare-fun lt!1529508 () Unit!67232)

(assert (=> b!4308646 (= lt!1529508 e!2679399)))

(declare-fun bm!297397 () Bool)

(declare-fun +!256 (ListLongMap!987 tuple2!46530) ListLongMap!987)

(assert (=> bm!297397 (= call!297403 (+!256 lt!1529498 (ite c!732557 (tuple2!46531 lt!1529500 lt!1529473) (tuple2!46531 lt!1529479 lt!1529495))))))

(declare-fun b!4308647 () Bool)

(declare-fun Unit!67237 () Unit!67232)

(assert (=> b!4308647 (= e!2679397 Unit!67237)))

(assert (=> b!4308648 e!2679409))

(declare-fun res!1765937 () Bool)

(assert (=> b!4308648 (=> (not res!1765937) (not e!2679409))))

(assert (=> b!4308648 (= res!1765937 call!297408)))

(assert (=> b!4308648 (= lt!1529507 call!297398)))

(assert (=> b!4308648 (= call!297409 call!297401)))

(declare-fun lt!1529477 () Unit!67232)

(assert (=> b!4308648 (= lt!1529477 call!297396)))

(assert (=> b!4308648 (= lt!1529485 call!297387)))

(declare-fun call!297392 () ListMap!1655)

(assert (=> b!4308648 (= lt!1529517 call!297392)))

(assert (=> b!4308648 call!297386))

(declare-fun lt!1529489 () Unit!67232)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!56 (ListLongMap!987 (_ BitVec 64) List!48286 K!9354 V!9556 Hashable!4559) Unit!67232)

(assert (=> b!4308648 (= lt!1529489 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!56 lt!1529498 lt!1529500 lt!1529473 key!2048 v!9179 (hashF!6675 thiss!42308)))))

(assert (=> b!4308648 e!2679393))

(declare-fun res!1765946 () Bool)

(assert (=> b!4308648 (=> (not res!1765946) (not e!2679393))))

(assert (=> b!4308648 (= res!1765946 call!297393)))

(assert (=> b!4308648 (= lt!1529505 call!297403)))

(declare-fun lt!1529483 () Unit!67232)

(assert (=> b!4308648 (= lt!1529483 call!297391)))

(assert (=> b!4308648 e!2679407))

(declare-fun res!1765936 () Bool)

(assert (=> b!4308648 (=> (not res!1765936) (not e!2679407))))

(declare-fun lt!1529502 () List!48286)

(assert (=> b!4308648 (= res!1765936 (noDuplicateKeys!202 lt!1529502))))

(declare-fun lt!1529513 () Unit!67232)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!159 (List!48286 K!9354) Unit!67232)

(assert (=> b!4308648 (= lt!1529513 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!159 lt!1529511 key!2048))))

(assert (=> b!4308648 call!297402))

(declare-fun lt!1529493 () Unit!67232)

(assert (=> b!4308648 (= lt!1529493 call!297411)))

(assert (=> b!4308648 call!297412))

(declare-fun lt!1529510 () Unit!67232)

(assert (=> b!4308648 (= lt!1529510 call!297400)))

(declare-fun e!2679405 () Unit!67232)

(declare-fun Unit!67238 () Unit!67232)

(assert (=> b!4308648 (= e!2679405 Unit!67238)))

(declare-fun bm!297398 () Bool)

(declare-fun lt!1529497 () tuple2!46526)

(declare-fun +!257 (ListMap!1655 tuple2!46526) ListMap!1655)

(assert (=> bm!297398 (= call!297397 (+!257 call!297388 (ite c!732557 lt!1529497 lt!1529496)))))

(declare-fun b!4308649 () Bool)

(declare-fun e!2679396 () Bool)

(assert (=> b!4308649 e!2679396))

(declare-fun res!1765943 () Bool)

(assert (=> b!4308649 (=> (not res!1765943) (not e!2679396))))

(assert (=> b!4308649 (= res!1765943 call!297407)))

(declare-fun Unit!67239 () Unit!67232)

(assert (=> b!4308649 (= e!2679405 Unit!67239)))

(declare-fun bm!297399 () Bool)

(assert (=> bm!297399 (= call!297392 call!297413)))

(declare-fun res!1765939 () Bool)

(declare-fun e!2679402 () Bool)

(assert (=> start!414046 (=> (not res!1765939) (not e!2679402))))

(get-info :version)

(assert (=> start!414046 (= res!1765939 ((_ is HashMap!4549) thiss!42308))))

(assert (=> start!414046 e!2679402))

(declare-fun e!2679401 () Bool)

(assert (=> start!414046 e!2679401))

(declare-fun tp_is_empty!23693 () Bool)

(assert (=> start!414046 tp_is_empty!23693))

(declare-fun tp_is_empty!23695 () Bool)

(assert (=> start!414046 tp_is_empty!23695))

(declare-fun b!4308634 () Bool)

(declare-fun e!2679406 () Bool)

(declare-fun e!2679395 () Bool)

(assert (=> b!4308634 (= e!2679406 e!2679395)))

(declare-fun e!2679408 () Bool)

(assert (=> b!4308650 (= e!2679401 (and e!2679408 tp!1324063))))

(declare-fun b!4308651 () Bool)

(declare-fun res!1765938 () Bool)

(assert (=> b!4308651 (=> (not res!1765938) (not e!2679402))))

(assert (=> b!4308651 (= res!1765938 (valid!3631 thiss!42308))))

(declare-fun bm!297400 () Bool)

(assert (=> bm!297400 (= call!297389 (extractMap!321 (ite c!732557 (toList!2374 lt!1529505) (toList!2374 lt!1529499))))))

(declare-fun b!4308652 () Bool)

(assert (=> b!4308652 (= e!2679396 (= call!297392 lt!1529509))))

(declare-fun bm!297401 () Bool)

(assert (=> bm!297401 (= call!297408 (forall!8720 (ite c!732557 (toList!2374 lt!1529507) (toList!2374 lt!1529478)) (ite c!732557 lambda!132823 lambda!132824)))))

(declare-fun b!4308653 () Bool)

(declare-fun lt!1529481 () MutLongMap!4643)

(assert (=> b!4308653 (= e!2679408 (and e!2679406 ((_ is LongMap!4643) lt!1529481)))))

(assert (=> b!4308653 (= lt!1529481 (v!42276 (underlying!9516 thiss!42308)))))

(declare-fun b!4308654 () Bool)

(declare-fun res!1765944 () Bool)

(assert (=> b!4308654 (=> (not res!1765944) (not e!2679407))))

(declare-fun containsKey!300 (List!48286 K!9354) Bool)

(assert (=> b!4308654 (= res!1765944 (not (containsKey!300 lt!1529502 key!2048)))))

(declare-fun bm!297402 () Bool)

(assert (=> bm!297402 (= call!297387 (+!257 lt!1529509 (ite c!732557 lt!1529497 lt!1529496)))))

(declare-fun b!4308655 () Bool)

(assert (=> b!4308655 e!2679410))

(declare-fun res!1765945 () Bool)

(assert (=> b!4308655 (=> (not res!1765945) (not e!2679410))))

(assert (=> b!4308655 (= res!1765945 call!297407)))

(declare-fun Unit!67240 () Unit!67232)

(assert (=> b!4308655 (= e!2679399 Unit!67240)))

(declare-fun bm!297403 () Bool)

(assert (=> bm!297403 (= call!297410 call!297413)))

(declare-fun bm!297404 () Bool)

(assert (=> bm!297404 (= call!297402 (allKeysSameHash!178 (ite c!732557 lt!1529502 call!297394) (ite c!732557 lt!1529500 lt!1529479) (hashF!6675 thiss!42308)))))

(declare-fun b!4308656 () Bool)

(assert (=> b!4308656 (= e!2679402 e!2679398)))

(declare-fun res!1765940 () Bool)

(assert (=> b!4308656 (=> (not res!1765940) (not e!2679398))))

(assert (=> b!4308656 (= res!1765940 ((_ is HashMap!4549) (_2!26545 lt!1529490)))))

(assert (=> b!4308656 (= lt!1529490 e!2679403)))

(assert (=> b!4308656 (= c!732557 lt!1529474)))

(declare-fun contains!10133 (MutableMap!4549 K!9354) Bool)

(assert (=> b!4308656 (= lt!1529474 (contains!10133 thiss!42308 key!2048))))

(declare-fun map!10146 (MutLongMap!4643) ListLongMap!987)

(assert (=> b!4308656 (= lt!1529498 (map!10146 (v!42276 (underlying!9516 thiss!42308))))))

(assert (=> b!4308656 (= lt!1529509 (map!10145 thiss!42308))))

(declare-fun mapNonEmpty!20752 () Bool)

(declare-fun tp!1324067 () Bool)

(declare-fun tp!1324064 () Bool)

(assert (=> mapNonEmpty!20752 (= mapRes!20752 (and tp!1324067 tp!1324064))))

(declare-fun mapKey!20752 () (_ BitVec 32))

(declare-fun mapRest!20752 () (Array (_ BitVec 32) List!48286))

(declare-fun mapValue!20752 () List!48286)

(assert (=> mapNonEmpty!20752 (= (arr!7472 (_values!4924 (v!42275 (underlying!9515 (v!42276 (underlying!9516 thiss!42308)))))) (store mapRest!20752 mapKey!20752 mapValue!20752))))

(declare-fun lt!1529486 () Cell!18383)

(declare-fun lt!1529475 () tuple2!46528)

(declare-fun b!4308657 () Bool)

(declare-fun Unit!67241 () Unit!67232)

(declare-fun Unit!67242 () Unit!67232)

(assert (=> b!4308657 (= e!2679403 (tuple2!46533 (_1!26543 lt!1529475) (_2!26546 (ite (and (_1!26543 lt!1529475) (not lt!1529474)) (tuple2!46535 Unit!67241 (HashMap!4549 lt!1529486 (hashF!6675 thiss!42308) (bvadd (_size!9330 thiss!42308) #b00000000000000000000000000000001) (defaultValue!4720 thiss!42308))) (tuple2!46535 Unit!67242 lt!1529480)))))))

(assert (=> b!4308657 (= lt!1529500 call!297390)))

(assert (=> b!4308657 (= lt!1529511 call!297395)))

(assert (=> b!4308657 (= lt!1529497 (tuple2!46527 key!2048 v!9179))))

(assert (=> b!4308657 (= lt!1529502 call!297394)))

(assert (=> b!4308657 (= lt!1529473 (Cons!48162 lt!1529497 lt!1529502))))

(assert (=> b!4308657 (= lt!1529475 call!297406)))

(assert (=> b!4308657 (= lt!1529486 (Cell!18384 (_2!26543 lt!1529475)))))

(assert (=> b!4308657 (= lt!1529480 (HashMap!4549 lt!1529486 (hashF!6675 thiss!42308) (_size!9330 thiss!42308) (defaultValue!4720 thiss!42308)))))

(declare-fun c!732554 () Bool)

(assert (=> b!4308657 (= c!732554 (_1!26543 lt!1529475))))

(declare-fun lt!1529484 () Unit!67232)

(assert (=> b!4308657 (= lt!1529484 e!2679405)))

(declare-fun b!4308658 () Bool)

(assert (=> b!4308658 (= e!2679409 call!297405)))

(declare-fun b!4308659 () Bool)

(assert (=> b!4308659 (= e!2679395 e!2679411)))

(declare-fun bm!297405 () Bool)

(assert (=> bm!297405 (= call!297409 (contains!10131 (ite c!732557 lt!1529517 lt!1529488) key!2048))))

(declare-fun bm!297406 () Bool)

(assert (=> bm!297406 (= call!297398 (map!10146 (ite c!732557 (_2!26543 lt!1529475) (_2!26543 lt!1529503))))))

(declare-fun bm!297407 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!168 (List!48287 (_ BitVec 64) List!48286 Hashable!4559) Unit!67232)

(assert (=> bm!297407 (= call!297400 (lemmaInLongMapAllKeySameHashThenForTuple!168 (toList!2374 lt!1529498) (ite c!732557 lt!1529500 lt!1529479) (ite c!732557 lt!1529511 lt!1529516) (hashF!6675 thiss!42308)))))

(declare-fun bm!297408 () Bool)

(assert (=> bm!297408 (= call!297399 (allKeysSameHashInMap!329 (ite c!732557 lt!1529505 lt!1529478) (hashF!6675 thiss!42308)))))

(assert (= (and start!414046 res!1765939) b!4308651))

(assert (= (and b!4308651 res!1765938) b!4308656))

(assert (= (and b!4308656 c!732557) b!4308657))

(assert (= (and b!4308656 (not c!732557)) b!4308646))

(assert (= (and b!4308657 c!732554) b!4308648))

(assert (= (and b!4308657 (not c!732554)) b!4308649))

(assert (= (and b!4308648 res!1765936) b!4308654))

(assert (= (and b!4308654 res!1765944) b!4308639))

(assert (= (and b!4308648 res!1765946) b!4308641))

(assert (= (and b!4308648 res!1765937) b!4308632))

(assert (= (and b!4308632 res!1765947) b!4308658))

(assert (= (and b!4308649 res!1765943) b!4308652))

(assert (= (or b!4308648 b!4308652) bm!297399))

(assert (= (and b!4308646 c!732556) b!4308635))

(assert (= (and b!4308646 (not c!732556)) b!4308642))

(assert (= (and b!4308646 c!732555) b!4308640))

(assert (= (and b!4308646 (not c!732555)) b!4308655))

(assert (= (and b!4308640 c!732558) b!4308645))

(assert (= (and b!4308640 (not c!732558)) b!4308647))

(assert (= (and b!4308640 res!1765942) b!4308643))

(assert (= (and b!4308640 res!1765941) b!4308644))

(assert (= (and b!4308655 res!1765945) b!4308638))

(assert (= (or b!4308640 b!4308638) bm!297403))

(assert (= (or b!4308648 b!4308645) bm!297390))

(assert (= (or b!4308641 b!4308644) bm!297408))

(assert (= (or b!4308657 b!4308646) bm!297381))

(assert (= (or b!4308648 b!4308640) bm!297389))

(assert (= (or b!4308648 b!4308640) bm!297383))

(assert (= (or b!4308648 b!4308645) bm!297407))

(assert (= (or b!4308648 b!4308645) bm!297382))

(assert (= (or bm!297399 bm!297403) bm!297386))

(assert (= (or b!4308649 b!4308655) bm!297387))

(assert (= (or b!4308657 b!4308635) bm!297385))

(assert (= (or b!4308648 b!4308640) bm!297397))

(assert (= (or b!4308657 b!4308646) bm!297395))

(assert (= (or b!4308657 b!4308645) bm!297394))

(assert (= (or b!4308648 b!4308640) bm!297402))

(assert (= (or b!4308658 b!4308640) bm!297392))

(assert (= (or b!4308632 b!4308643) bm!297388))

(assert (= (or b!4308648 b!4308640) bm!297393))

(assert (= (or b!4308648 b!4308640) bm!297405))

(assert (= (or b!4308648 b!4308640) bm!297396))

(assert (= (or b!4308648 b!4308640) bm!297401))

(assert (= (or b!4308648 b!4308640) bm!297400))

(assert (= (or b!4308648 b!4308640) bm!297406))

(assert (= (or b!4308648 b!4308640) bm!297391))

(assert (= (or b!4308648 b!4308645) bm!297404))

(assert (= (or b!4308648 b!4308640) bm!297398))

(assert (= (or b!4308648 b!4308640) bm!297384))

(assert (= (and b!4308656 res!1765940) b!4308636))

(assert (= (and b!4308637 condMapEmpty!20752) mapIsEmpty!20752))

(assert (= (and b!4308637 (not condMapEmpty!20752)) mapNonEmpty!20752))

(assert (= b!4308633 b!4308637))

(assert (= b!4308659 b!4308633))

(assert (= b!4308634 b!4308659))

(assert (= (and b!4308653 ((_ is LongMap!4643) (v!42276 (underlying!9516 thiss!42308)))) b!4308634))

(assert (= b!4308650 b!4308653))

(assert (= (and start!414046 ((_ is HashMap!4549) thiss!42308)) b!4308650))

(declare-fun m!4901761 () Bool)

(assert (=> bm!297382 m!4901761))

(declare-fun m!4901763 () Bool)

(assert (=> bm!297390 m!4901763))

(declare-fun m!4901765 () Bool)

(assert (=> bm!297407 m!4901765))

(declare-fun m!4901767 () Bool)

(assert (=> b!4308636 m!4901767))

(declare-fun m!4901769 () Bool)

(assert (=> bm!297389 m!4901769))

(declare-fun m!4901771 () Bool)

(assert (=> bm!297394 m!4901771))

(declare-fun m!4901773 () Bool)

(assert (=> b!4308654 m!4901773))

(declare-fun m!4901775 () Bool)

(assert (=> mapNonEmpty!20752 m!4901775))

(declare-fun m!4901777 () Bool)

(assert (=> bm!297387 m!4901777))

(declare-fun m!4901779 () Bool)

(assert (=> bm!297401 m!4901779))

(declare-fun m!4901781 () Bool)

(assert (=> bm!297385 m!4901781))

(declare-fun m!4901783 () Bool)

(assert (=> bm!297393 m!4901783))

(declare-fun m!4901785 () Bool)

(assert (=> b!4308640 m!4901785))

(declare-fun m!4901787 () Bool)

(assert (=> b!4308640 m!4901787))

(declare-fun m!4901789 () Bool)

(assert (=> b!4308639 m!4901789))

(declare-fun m!4901791 () Bool)

(assert (=> bm!297404 m!4901791))

(declare-fun m!4901793 () Bool)

(assert (=> bm!297408 m!4901793))

(declare-fun m!4901795 () Bool)

(assert (=> bm!297383 m!4901795))

(declare-fun m!4901797 () Bool)

(assert (=> b!4308648 m!4901797))

(declare-fun m!4901799 () Bool)

(assert (=> b!4308648 m!4901799))

(declare-fun m!4901801 () Bool)

(assert (=> b!4308648 m!4901801))

(declare-fun m!4901803 () Bool)

(assert (=> bm!297405 m!4901803))

(declare-fun m!4901805 () Bool)

(assert (=> bm!297384 m!4901805))

(declare-fun m!4901807 () Bool)

(assert (=> b!4308651 m!4901807))

(declare-fun m!4901809 () Bool)

(assert (=> bm!297406 m!4901809))

(declare-fun m!4901811 () Bool)

(assert (=> bm!297388 m!4901811))

(declare-fun m!4901813 () Bool)

(assert (=> bm!297391 m!4901813))

(declare-fun m!4901815 () Bool)

(assert (=> b!4308633 m!4901815))

(declare-fun m!4901817 () Bool)

(assert (=> b!4308633 m!4901817))

(declare-fun m!4901819 () Bool)

(assert (=> b!4308646 m!4901819))

(declare-fun m!4901821 () Bool)

(assert (=> bm!297396 m!4901821))

(declare-fun m!4901823 () Bool)

(assert (=> bm!297397 m!4901823))

(declare-fun m!4901825 () Bool)

(assert (=> bm!297402 m!4901825))

(declare-fun m!4901827 () Bool)

(assert (=> bm!297381 m!4901827))

(declare-fun m!4901829 () Bool)

(assert (=> b!4308656 m!4901829))

(declare-fun m!4901831 () Bool)

(assert (=> b!4308656 m!4901831))

(declare-fun m!4901833 () Bool)

(assert (=> b!4308656 m!4901833))

(declare-fun m!4901835 () Bool)

(assert (=> bm!297395 m!4901835))

(declare-fun m!4901837 () Bool)

(assert (=> bm!297392 m!4901837))

(declare-fun m!4901839 () Bool)

(assert (=> bm!297386 m!4901839))

(declare-fun m!4901841 () Bool)

(assert (=> bm!297398 m!4901841))

(declare-fun m!4901843 () Bool)

(assert (=> bm!297400 m!4901843))

(check-sat (not bm!297394) (not bm!297381) (not b!4308633) (not bm!297389) (not bm!297404) (not bm!297391) (not bm!297398) (not bm!297397) (not bm!297384) (not b!4308637) (not mapNonEmpty!20752) (not b!4308646) b_and!339945 (not b!4308639) (not bm!297393) (not bm!297402) (not b!4308640) (not bm!297395) (not bm!297401) (not bm!297392) (not b!4308654) (not bm!297407) b_and!339947 (not b!4308656) tp_is_empty!23693 (not b!4308648) (not b!4308651) (not bm!297406) (not bm!297405) (not bm!297388) (not bm!297408) (not b!4308636) (not bm!297390) (not bm!297385) (not bm!297386) (not bm!297383) (not bm!297400) tp_is_empty!23695 (not bm!297382) (not b_next!129237) (not bm!297396) (not b_next!129235) (not bm!297387))
(check-sat b_and!339945 b_and!339947 (not b_next!129237) (not b_next!129235))
