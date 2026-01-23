; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461428 () Bool)

(assert start!461428)

(declare-fun b!4613446 () Bool)

(declare-fun e!2877702 () Bool)

(declare-fun e!2877703 () Bool)

(assert (=> b!4613446 (= e!2877702 e!2877703)))

(declare-fun res!1932367 () Bool)

(assert (=> b!4613446 (=> (not res!1932367) (not e!2877703))))

(declare-datatypes ((K!12715 0))(
  ( (K!12716 (val!18443 Int)) )
))
(declare-datatypes ((V!12961 0))(
  ( (V!12962 (val!18444 Int)) )
))
(declare-datatypes ((tuple2!52150 0))(
  ( (tuple2!52151 (_1!29369 K!12715) (_2!29369 V!12961)) )
))
(declare-datatypes ((List!51453 0))(
  ( (Nil!51329) (Cons!51329 (h!57333 tuple2!52150) (t!358449 List!51453)) )
))
(declare-datatypes ((ListMap!4121 0))(
  ( (ListMap!4122 (toList!4817 List!51453)) )
))
(declare-fun lt!1768551 () ListMap!4121)

(declare-fun key!4968 () K!12715)

(declare-fun contains!14299 (ListMap!4121 K!12715) Bool)

(assert (=> b!4613446 (= res!1932367 (contains!14299 lt!1768551 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51453)

(declare-datatypes ((tuple2!52152 0))(
  ( (tuple2!52153 (_1!29370 (_ BitVec 64)) (_2!29370 List!51453)) )
))
(declare-datatypes ((List!51454 0))(
  ( (Nil!51330) (Cons!51330 (h!57334 tuple2!52152) (t!358450 List!51454)) )
))
(declare-fun extractMap!1482 (List!51454) ListMap!4121)

(assert (=> b!4613446 (= lt!1768551 (extractMap!1482 (Cons!51330 (tuple2!52153 hash!414 oldBucket!40) Nil!51330)))))

(declare-fun b!4613447 () Bool)

(declare-fun res!1932368 () Bool)

(declare-fun e!2877699 () Bool)

(assert (=> b!4613447 (=> res!1932368 e!2877699)))

(declare-datatypes ((ListLongMap!3407 0))(
  ( (ListLongMap!3408 (toList!4818 List!51454)) )
))
(declare-fun lt!1768554 () ListLongMap!3407)

(declare-fun lt!1768549 () (_ BitVec 64))

(declare-fun containsKey!2298 (List!51453 K!12715) Bool)

(declare-fun apply!12117 (ListLongMap!3407 (_ BitVec 64)) List!51453)

(assert (=> b!4613447 (= res!1932368 (containsKey!2298 (apply!12117 lt!1768554 lt!1768549) key!4968))))

(declare-fun b!4613448 () Bool)

(declare-fun res!1932378 () Bool)

(assert (=> b!4613448 (=> res!1932378 e!2877699)))

(declare-datatypes ((Hashable!5823 0))(
  ( (HashableExt!5822 (__x!31526 Int)) )
))
(declare-fun hashF!1389 () Hashable!5823)

(declare-fun allKeysSameHashInMap!1491 (ListLongMap!3407 Hashable!5823) Bool)

(assert (=> b!4613448 (= res!1932378 (not (allKeysSameHashInMap!1491 lt!1768554 hashF!1389)))))

(declare-fun b!4613449 () Bool)

(declare-fun res!1932379 () Bool)

(declare-fun e!2877697 () Bool)

(assert (=> b!4613449 (=> res!1932379 e!2877697)))

(declare-fun lt!1768552 () ListMap!4121)

(declare-fun lt!1768546 () ListMap!4121)

(assert (=> b!4613449 (= res!1932379 (not (= lt!1768552 lt!1768546)))))

(declare-fun tp!1341442 () Bool)

(declare-fun tp_is_empty!28997 () Bool)

(declare-fun tp_is_empty!28999 () Bool)

(declare-fun e!2877706 () Bool)

(declare-fun b!4613450 () Bool)

(assert (=> b!4613450 (= e!2877706 (and tp_is_empty!28997 tp_is_empty!28999 tp!1341442))))

(declare-fun b!4613451 () Bool)

(assert (=> b!4613451 (= e!2877697 e!2877699)))

(declare-fun res!1932371 () Bool)

(assert (=> b!4613451 (=> res!1932371 e!2877699)))

(declare-fun lt!1768548 () List!51454)

(declare-fun lambda!188814 () Int)

(declare-fun forall!10722 (List!51454 Int) Bool)

(assert (=> b!4613451 (= res!1932371 (not (forall!10722 lt!1768548 lambda!188814)))))

(assert (=> b!4613451 (= lt!1768554 (ListLongMap!3408 lt!1768548))))

(declare-fun res!1932373 () Bool)

(assert (=> start!461428 (=> (not res!1932373) (not e!2877702))))

(declare-fun noDuplicateKeys!1426 (List!51453) Bool)

(assert (=> start!461428 (= res!1932373 (noDuplicateKeys!1426 oldBucket!40))))

(assert (=> start!461428 e!2877702))

(assert (=> start!461428 true))

(declare-fun e!2877704 () Bool)

(assert (=> start!461428 e!2877704))

(assert (=> start!461428 tp_is_empty!28997))

(assert (=> start!461428 e!2877706))

(declare-fun b!4613452 () Bool)

(declare-fun e!2877698 () Bool)

(declare-fun e!2877701 () Bool)

(assert (=> b!4613452 (= e!2877698 e!2877701)))

(declare-fun res!1932363 () Bool)

(assert (=> b!4613452 (=> res!1932363 e!2877701)))

(declare-fun newBucket!224 () List!51453)

(declare-fun addToMapMapFromBucket!887 (List!51453 ListMap!4121) ListMap!4121)

(assert (=> b!4613452 (= res!1932363 (not (= lt!1768552 (addToMapMapFromBucket!887 newBucket!224 (ListMap!4122 Nil!51329)))))))

(declare-fun lt!1768550 () List!51453)

(assert (=> b!4613452 (= lt!1768552 (addToMapMapFromBucket!887 lt!1768550 (ListMap!4122 Nil!51329)))))

(declare-fun b!4613453 () Bool)

(declare-fun tp!1341443 () Bool)

(assert (=> b!4613453 (= e!2877704 (and tp_is_empty!28997 tp_is_empty!28999 tp!1341443))))

(declare-fun b!4613454 () Bool)

(declare-fun e!2877695 () Bool)

(declare-fun lt!1768553 () ListMap!4121)

(assert (=> b!4613454 (= e!2877695 (= lt!1768553 (ListMap!4122 Nil!51329)))))

(declare-fun b!4613455 () Bool)

(declare-fun res!1932362 () Bool)

(assert (=> b!4613455 (=> (not res!1932362) (not e!2877702))))

(declare-fun allKeysSameHash!1280 (List!51453 (_ BitVec 64) Hashable!5823) Bool)

(assert (=> b!4613455 (= res!1932362 (allKeysSameHash!1280 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4613456 () Bool)

(declare-fun e!2877705 () Bool)

(declare-fun e!2877696 () Bool)

(assert (=> b!4613456 (= e!2877705 e!2877696)))

(declare-fun res!1932370 () Bool)

(assert (=> b!4613456 (=> res!1932370 e!2877696)))

(assert (=> b!4613456 (= res!1932370 (not (= lt!1768550 newBucket!224)))))

(declare-fun tail!8073 (List!51453) List!51453)

(assert (=> b!4613456 (= lt!1768550 (tail!8073 oldBucket!40))))

(declare-fun b!4613457 () Bool)

(declare-fun res!1932374 () Bool)

(assert (=> b!4613457 (=> res!1932374 e!2877699)))

(declare-fun contains!14300 (ListLongMap!3407 (_ BitVec 64)) Bool)

(assert (=> b!4613457 (= res!1932374 (not (contains!14300 lt!1768554 lt!1768549)))))

(declare-fun b!4613458 () Bool)

(declare-fun res!1932364 () Bool)

(assert (=> b!4613458 (=> (not res!1932364) (not e!2877702))))

(declare-fun removePairForKey!1049 (List!51453 K!12715) List!51453)

(assert (=> b!4613458 (= res!1932364 (= (removePairForKey!1049 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4613459 () Bool)

(assert (=> b!4613459 (= e!2877696 e!2877698)))

(declare-fun res!1932380 () Bool)

(assert (=> b!4613459 (=> res!1932380 e!2877698)))

(assert (=> b!4613459 (= res!1932380 (not (= lt!1768546 (extractMap!1482 (Cons!51330 (tuple2!52153 hash!414 newBucket!224) Nil!51330)))))))

(assert (=> b!4613459 (= lt!1768546 (extractMap!1482 lt!1768548))))

(assert (=> b!4613459 (= lt!1768548 (Cons!51330 (tuple2!52153 hash!414 lt!1768550) Nil!51330))))

(declare-fun b!4613460 () Bool)

(declare-fun res!1932366 () Bool)

(assert (=> b!4613460 (=> res!1932366 e!2877697)))

(assert (=> b!4613460 (= res!1932366 (containsKey!2298 lt!1768550 key!4968))))

(declare-fun b!4613461 () Bool)

(declare-fun e!2877700 () Bool)

(assert (=> b!4613461 (= e!2877703 e!2877700)))

(declare-fun res!1932376 () Bool)

(assert (=> b!4613461 (=> (not res!1932376) (not e!2877700))))

(assert (=> b!4613461 (= res!1932376 (= lt!1768549 hash!414))))

(declare-fun hash!3371 (Hashable!5823 K!12715) (_ BitVec 64))

(assert (=> b!4613461 (= lt!1768549 (hash!3371 hashF!1389 key!4968))))

(declare-fun b!4613462 () Bool)

(assert (=> b!4613462 (= e!2877700 (not e!2877705))))

(declare-fun res!1932375 () Bool)

(assert (=> b!4613462 (=> res!1932375 e!2877705)))

(get-info :version)

(assert (=> b!4613462 (= res!1932375 (or (not ((_ is Cons!51329) oldBucket!40)) (not (= (_1!29369 (h!57333 oldBucket!40)) key!4968))))))

(assert (=> b!4613462 e!2877695))

(declare-fun res!1932369 () Bool)

(assert (=> b!4613462 (=> (not res!1932369) (not e!2877695))))

(assert (=> b!4613462 (= res!1932369 (= lt!1768551 (addToMapMapFromBucket!887 oldBucket!40 lt!1768553)))))

(assert (=> b!4613462 (= lt!1768553 (extractMap!1482 Nil!51330))))

(assert (=> b!4613462 true))

(declare-fun b!4613463 () Bool)

(assert (=> b!4613463 (= e!2877699 true)))

(declare-fun b!4613464 () Bool)

(declare-fun res!1932377 () Bool)

(assert (=> b!4613464 (=> (not res!1932377) (not e!2877702))))

(assert (=> b!4613464 (= res!1932377 (noDuplicateKeys!1426 newBucket!224))))

(declare-fun b!4613465 () Bool)

(declare-fun res!1932372 () Bool)

(assert (=> b!4613465 (=> (not res!1932372) (not e!2877700))))

(assert (=> b!4613465 (= res!1932372 (allKeysSameHash!1280 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4613466 () Bool)

(assert (=> b!4613466 (= e!2877701 e!2877697)))

(declare-fun res!1932365 () Bool)

(assert (=> b!4613466 (=> res!1932365 e!2877697)))

(declare-fun eq!769 (ListMap!4121 ListMap!4121) Bool)

(declare-fun +!1811 (ListMap!4121 tuple2!52150) ListMap!4121)

(assert (=> b!4613466 (= res!1932365 (not (eq!769 (+!1811 lt!1768552 (h!57333 oldBucket!40)) (addToMapMapFromBucket!887 oldBucket!40 (ListMap!4122 Nil!51329)))))))

(declare-fun lt!1768555 () tuple2!52150)

(assert (=> b!4613466 (eq!769 (addToMapMapFromBucket!887 (Cons!51329 lt!1768555 lt!1768550) (ListMap!4122 Nil!51329)) (+!1811 lt!1768552 lt!1768555))))

(declare-datatypes ((Unit!109622 0))(
  ( (Unit!109623) )
))
(declare-fun lt!1768547 () Unit!109622)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!20 (tuple2!52150 List!51453 ListMap!4121) Unit!109622)

(assert (=> b!4613466 (= lt!1768547 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!20 lt!1768555 lt!1768550 (ListMap!4122 Nil!51329)))))

(declare-fun head!9586 (List!51453) tuple2!52150)

(assert (=> b!4613466 (= lt!1768555 (head!9586 oldBucket!40))))

(assert (= (and start!461428 res!1932373) b!4613464))

(assert (= (and b!4613464 res!1932377) b!4613458))

(assert (= (and b!4613458 res!1932364) b!4613455))

(assert (= (and b!4613455 res!1932362) b!4613446))

(assert (= (and b!4613446 res!1932367) b!4613461))

(assert (= (and b!4613461 res!1932376) b!4613465))

(assert (= (and b!4613465 res!1932372) b!4613462))

(assert (= (and b!4613462 res!1932369) b!4613454))

(assert (= (and b!4613462 (not res!1932375)) b!4613456))

(assert (= (and b!4613456 (not res!1932370)) b!4613459))

(assert (= (and b!4613459 (not res!1932380)) b!4613452))

(assert (= (and b!4613452 (not res!1932363)) b!4613466))

(assert (= (and b!4613466 (not res!1932365)) b!4613460))

(assert (= (and b!4613460 (not res!1932366)) b!4613449))

(assert (= (and b!4613449 (not res!1932379)) b!4613451))

(assert (= (and b!4613451 (not res!1932371)) b!4613448))

(assert (= (and b!4613448 (not res!1932378)) b!4613457))

(assert (= (and b!4613457 (not res!1932374)) b!4613447))

(assert (= (and b!4613447 (not res!1932368)) b!4613463))

(assert (= (and start!461428 ((_ is Cons!51329) oldBucket!40)) b!4613453))

(assert (= (and start!461428 ((_ is Cons!51329) newBucket!224)) b!4613450))

(declare-fun m!5445001 () Bool)

(assert (=> b!4613448 m!5445001))

(declare-fun m!5445003 () Bool)

(assert (=> b!4613465 m!5445003))

(declare-fun m!5445005 () Bool)

(assert (=> b!4613461 m!5445005))

(declare-fun m!5445007 () Bool)

(assert (=> b!4613447 m!5445007))

(assert (=> b!4613447 m!5445007))

(declare-fun m!5445009 () Bool)

(assert (=> b!4613447 m!5445009))

(declare-fun m!5445011 () Bool)

(assert (=> b!4613459 m!5445011))

(declare-fun m!5445013 () Bool)

(assert (=> b!4613459 m!5445013))

(declare-fun m!5445015 () Bool)

(assert (=> b!4613458 m!5445015))

(declare-fun m!5445017 () Bool)

(assert (=> b!4613451 m!5445017))

(declare-fun m!5445019 () Bool)

(assert (=> b!4613455 m!5445019))

(declare-fun m!5445021 () Bool)

(assert (=> b!4613464 m!5445021))

(declare-fun m!5445023 () Bool)

(assert (=> b!4613452 m!5445023))

(declare-fun m!5445025 () Bool)

(assert (=> b!4613452 m!5445025))

(declare-fun m!5445027 () Bool)

(assert (=> start!461428 m!5445027))

(declare-fun m!5445029 () Bool)

(assert (=> b!4613456 m!5445029))

(declare-fun m!5445031 () Bool)

(assert (=> b!4613460 m!5445031))

(declare-fun m!5445033 () Bool)

(assert (=> b!4613466 m!5445033))

(declare-fun m!5445035 () Bool)

(assert (=> b!4613466 m!5445035))

(declare-fun m!5445037 () Bool)

(assert (=> b!4613466 m!5445037))

(declare-fun m!5445039 () Bool)

(assert (=> b!4613466 m!5445039))

(assert (=> b!4613466 m!5445037))

(declare-fun m!5445041 () Bool)

(assert (=> b!4613466 m!5445041))

(declare-fun m!5445043 () Bool)

(assert (=> b!4613466 m!5445043))

(assert (=> b!4613466 m!5445041))

(declare-fun m!5445045 () Bool)

(assert (=> b!4613466 m!5445045))

(assert (=> b!4613466 m!5445033))

(assert (=> b!4613466 m!5445045))

(declare-fun m!5445047 () Bool)

(assert (=> b!4613466 m!5445047))

(declare-fun m!5445049 () Bool)

(assert (=> b!4613457 m!5445049))

(declare-fun m!5445051 () Bool)

(assert (=> b!4613446 m!5445051))

(declare-fun m!5445053 () Bool)

(assert (=> b!4613446 m!5445053))

(declare-fun m!5445055 () Bool)

(assert (=> b!4613462 m!5445055))

(declare-fun m!5445057 () Bool)

(assert (=> b!4613462 m!5445057))

(check-sat (not b!4613459) tp_is_empty!28997 (not b!4613457) (not b!4613446) (not b!4613447) (not b!4613453) (not b!4613455) (not start!461428) (not b!4613464) (not b!4613461) (not b!4613450) tp_is_empty!28999 (not b!4613460) (not b!4613465) (not b!4613451) (not b!4613452) (not b!4613458) (not b!4613462) (not b!4613466) (not b!4613448) (not b!4613456))
(check-sat)
