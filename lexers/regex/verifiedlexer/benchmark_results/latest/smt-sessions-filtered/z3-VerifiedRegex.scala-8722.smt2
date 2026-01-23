; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465688 () Bool)

(assert start!465688)

(declare-fun b!4635301 () Bool)

(declare-fun e!2891625 () Bool)

(declare-fun e!2891630 () Bool)

(assert (=> b!4635301 (= e!2891625 e!2891630)))

(declare-fun res!1945602 () Bool)

(assert (=> b!4635301 (=> res!1945602 e!2891630)))

(declare-datatypes ((K!13015 0))(
  ( (K!13016 (val!18683 Int)) )
))
(declare-datatypes ((V!13261 0))(
  ( (V!13262 (val!18684 Int)) )
))
(declare-datatypes ((tuple2!52630 0))(
  ( (tuple2!52631 (_1!29609 K!13015) (_2!29609 V!13261)) )
))
(declare-datatypes ((List!51774 0))(
  ( (Nil!51650) (Cons!51650 (h!57736 tuple2!52630) (t!358842 List!51774)) )
))
(declare-datatypes ((ListMap!4361 0))(
  ( (ListMap!4362 (toList!5057 List!51774)) )
))
(declare-fun lt!1797506 () ListMap!4361)

(declare-fun lt!1797518 () ListMap!4361)

(declare-fun eq!861 (ListMap!4361 ListMap!4361) Bool)

(assert (=> b!4635301 (= res!1945602 (not (eq!861 lt!1797506 lt!1797518)))))

(declare-fun lt!1797514 () ListMap!4361)

(declare-fun lt!1797500 () ListMap!4361)

(declare-fun oldBucket!40 () List!51774)

(declare-fun +!1912 (ListMap!4361 tuple2!52630) ListMap!4361)

(assert (=> b!4635301 (eq!861 lt!1797514 (+!1912 lt!1797500 (h!57736 oldBucket!40)))))

(declare-fun lt!1797515 () ListMap!4361)

(declare-datatypes ((Unit!114251 0))(
  ( (Unit!114252) )
))
(declare-fun lt!1797503 () Unit!114251)

(declare-fun lemmaAddToEqMapsPreservesEq!58 (ListMap!4361 ListMap!4361 K!13015 V!13261) Unit!114251)

(assert (=> b!4635301 (= lt!1797503 (lemmaAddToEqMapsPreservesEq!58 lt!1797515 lt!1797500 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(declare-fun b!4635302 () Bool)

(declare-fun e!2891628 () Bool)

(assert (=> b!4635302 (= e!2891628 e!2891625)))

(declare-fun res!1945607 () Bool)

(assert (=> b!4635302 (=> res!1945607 e!2891625)))

(declare-fun lt!1797497 () ListMap!4361)

(assert (=> b!4635302 (= res!1945607 (not (eq!861 lt!1797497 lt!1797518)))))

(declare-fun lt!1797498 () ListMap!4361)

(assert (=> b!4635302 (eq!861 lt!1797498 lt!1797497)))

(declare-fun lt!1797516 () ListMap!4361)

(declare-fun key!4968 () K!13015)

(declare-fun -!586 (ListMap!4361 K!13015) ListMap!4361)

(assert (=> b!4635302 (= lt!1797497 (-!586 lt!1797516 key!4968))))

(declare-fun lt!1797502 () Unit!114251)

(declare-fun lt!1797513 () ListMap!4361)

(declare-fun lemmaRemovePreservesEq!42 (ListMap!4361 ListMap!4361 K!13015) Unit!114251)

(assert (=> b!4635302 (= lt!1797502 (lemmaRemovePreservesEq!42 lt!1797513 lt!1797516 key!4968))))

(declare-fun b!4635303 () Bool)

(declare-fun res!1945608 () Bool)

(assert (=> b!4635303 (=> res!1945608 e!2891630)))

(assert (=> b!4635303 (= res!1945608 (not (eq!861 lt!1797516 lt!1797513)))))

(declare-fun b!4635304 () Bool)

(declare-fun e!2891620 () Bool)

(declare-fun e!2891622 () Bool)

(assert (=> b!4635304 (= e!2891620 e!2891622)))

(declare-fun res!1945616 () Bool)

(assert (=> b!4635304 (=> res!1945616 e!2891622)))

(declare-fun containsKey!2558 (List!51774 K!13015) Bool)

(assert (=> b!4635304 (= res!1945616 (not (containsKey!2558 (t!358842 oldBucket!40) key!4968)))))

(assert (=> b!4635304 (containsKey!2558 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5943 0))(
  ( (HashableExt!5942 (__x!31646 Int)) )
))
(declare-fun hashF!1389 () Hashable!5943)

(declare-fun lt!1797492 () Unit!114251)

(declare-fun lemmaGetPairDefinedThenContainsKey!92 (List!51774 K!13015 Hashable!5943) Unit!114251)

(assert (=> b!4635304 (= lt!1797492 (lemmaGetPairDefinedThenContainsKey!92 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1797501 () List!51774)

(declare-datatypes ((Option!11700 0))(
  ( (None!11699) (Some!11699 (v!45897 tuple2!52630)) )
))
(declare-fun isDefined!8965 (Option!11700) Bool)

(declare-fun getPair!338 (List!51774 K!13015) Option!11700)

(assert (=> b!4635304 (isDefined!8965 (getPair!338 lt!1797501 key!4968))))

(declare-datatypes ((tuple2!52632 0))(
  ( (tuple2!52633 (_1!29610 (_ BitVec 64)) (_2!29610 List!51774)) )
))
(declare-datatypes ((List!51775 0))(
  ( (Nil!51651) (Cons!51651 (h!57737 tuple2!52632) (t!358843 List!51775)) )
))
(declare-fun lt!1797499 () List!51775)

(declare-fun lambda!194790 () Int)

(declare-fun lt!1797523 () tuple2!52632)

(declare-fun lt!1797522 () Unit!114251)

(declare-fun forallContained!3126 (List!51775 Int tuple2!52632) Unit!114251)

(assert (=> b!4635304 (= lt!1797522 (forallContained!3126 lt!1797499 lambda!194790 lt!1797523))))

(declare-fun contains!14769 (List!51775 tuple2!52632) Bool)

(assert (=> b!4635304 (contains!14769 lt!1797499 lt!1797523)))

(declare-fun lt!1797512 () (_ BitVec 64))

(assert (=> b!4635304 (= lt!1797523 (tuple2!52633 lt!1797512 lt!1797501))))

(declare-datatypes ((ListLongMap!3647 0))(
  ( (ListLongMap!3648 (toList!5058 List!51775)) )
))
(declare-fun lt!1797505 () ListLongMap!3647)

(declare-fun lt!1797524 () Unit!114251)

(declare-fun lemmaGetValueImpliesTupleContained!143 (ListLongMap!3647 (_ BitVec 64) List!51774) Unit!114251)

(assert (=> b!4635304 (= lt!1797524 (lemmaGetValueImpliesTupleContained!143 lt!1797505 lt!1797512 lt!1797501))))

(declare-fun apply!12211 (ListLongMap!3647 (_ BitVec 64)) List!51774)

(assert (=> b!4635304 (= lt!1797501 (apply!12211 lt!1797505 lt!1797512))))

(declare-fun contains!14770 (ListLongMap!3647 (_ BitVec 64)) Bool)

(assert (=> b!4635304 (contains!14770 lt!1797505 lt!1797512)))

(declare-fun lt!1797504 () Unit!114251)

(declare-fun lemmaInGenMapThenLongMapContainsHash!544 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> b!4635304 (= lt!1797504 (lemmaInGenMapThenLongMapContainsHash!544 lt!1797505 key!4968 hashF!1389))))

(declare-fun lt!1797520 () Unit!114251)

(declare-fun lemmaInGenMapThenGetPairDefined!134 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> b!4635304 (= lt!1797520 (lemmaInGenMapThenGetPairDefined!134 lt!1797505 key!4968 hashF!1389))))

(assert (=> b!4635304 (= lt!1797505 (ListLongMap!3648 lt!1797499))))

(declare-fun b!4635305 () Bool)

(declare-fun res!1945603 () Bool)

(assert (=> b!4635305 (=> res!1945603 e!2891625)))

(declare-fun lt!1797510 () tuple2!52630)

(assert (=> b!4635305 (= res!1945603 (not (= lt!1797510 (h!57736 oldBucket!40))))))

(declare-fun tp!1342490 () Bool)

(declare-fun e!2891618 () Bool)

(declare-fun b!4635307 () Bool)

(declare-fun tp_is_empty!29477 () Bool)

(declare-fun tp_is_empty!29479 () Bool)

(assert (=> b!4635307 (= e!2891618 (and tp_is_empty!29477 tp_is_empty!29479 tp!1342490))))

(declare-fun b!4635308 () Bool)

(declare-fun e!2891621 () Bool)

(assert (=> b!4635308 (= e!2891621 (not e!2891620))))

(declare-fun res!1945611 () Bool)

(assert (=> b!4635308 (=> res!1945611 e!2891620)))

(get-info :version)

(assert (=> b!4635308 (= res!1945611 (or (and ((_ is Cons!51650) oldBucket!40) (= (_1!29609 (h!57736 oldBucket!40)) key!4968)) (not ((_ is Cons!51650) oldBucket!40)) (= (_1!29609 (h!57736 oldBucket!40)) key!4968)))))

(declare-fun e!2891624 () Bool)

(assert (=> b!4635308 e!2891624))

(declare-fun res!1945600 () Bool)

(assert (=> b!4635308 (=> (not res!1945600) (not e!2891624))))

(declare-fun lt!1797511 () ListMap!4361)

(declare-fun addToMapMapFromBucket!1007 (List!51774 ListMap!4361) ListMap!4361)

(assert (=> b!4635308 (= res!1945600 (= lt!1797516 (addToMapMapFromBucket!1007 oldBucket!40 lt!1797511)))))

(declare-fun extractMap!1602 (List!51775) ListMap!4361)

(assert (=> b!4635308 (= lt!1797511 (extractMap!1602 Nil!51651))))

(assert (=> b!4635308 true))

(declare-fun b!4635309 () Bool)

(declare-fun e!2891623 () Bool)

(declare-fun e!2891626 () Bool)

(assert (=> b!4635309 (= e!2891623 e!2891626)))

(declare-fun res!1945614 () Bool)

(assert (=> b!4635309 (=> res!1945614 e!2891626)))

(declare-fun lt!1797508 () List!51774)

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4635309 (= res!1945614 (not (eq!861 lt!1797516 (+!1912 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)) (h!57736 oldBucket!40)))))))

(declare-fun lt!1797525 () List!51774)

(assert (=> b!4635309 (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797510 lt!1797525) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1797510))))

(declare-fun lt!1797519 () Unit!114251)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!112 (tuple2!52630 List!51774 ListMap!4361) Unit!114251)

(assert (=> b!4635309 (= lt!1797519 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!112 lt!1797510 lt!1797525 (ListMap!4362 Nil!51650)))))

(declare-fun newBucket!224 () List!51774)

(declare-fun head!9680 (List!51774) tuple2!52630)

(assert (=> b!4635309 (= lt!1797510 (head!9680 newBucket!224))))

(declare-fun lt!1797494 () tuple2!52630)

(assert (=> b!4635309 (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797494 lt!1797508) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1797494))))

(declare-fun lt!1797507 () Unit!114251)

(assert (=> b!4635309 (= lt!1797507 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!112 lt!1797494 lt!1797508 (ListMap!4362 Nil!51650)))))

(assert (=> b!4635309 (= lt!1797494 (head!9680 oldBucket!40))))

(declare-fun lt!1797517 () ListMap!4361)

(declare-fun contains!14771 (ListMap!4361 K!13015) Bool)

(assert (=> b!4635309 (contains!14771 lt!1797517 key!4968)))

(declare-fun lt!1797521 () List!51775)

(assert (=> b!4635309 (= lt!1797517 (extractMap!1602 lt!1797521))))

(declare-fun lt!1797493 () Unit!114251)

(declare-fun lemmaListContainsThenExtractedMapContains!364 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> b!4635309 (= lt!1797493 (lemmaListContainsThenExtractedMapContains!364 (ListLongMap!3648 lt!1797521) key!4968 hashF!1389))))

(assert (=> b!4635309 (= lt!1797521 (Cons!51651 (tuple2!52633 hash!414 (t!358842 oldBucket!40)) Nil!51651))))

(declare-fun b!4635310 () Bool)

(declare-fun e!2891629 () Bool)

(declare-fun tp!1342491 () Bool)

(assert (=> b!4635310 (= e!2891629 (and tp_is_empty!29477 tp_is_empty!29479 tp!1342491))))

(declare-fun b!4635311 () Bool)

(declare-fun forall!10894 (List!51775 Int) Bool)

(assert (=> b!4635311 (= e!2891630 (forall!10894 lt!1797499 lambda!194790))))

(declare-fun b!4635312 () Bool)

(declare-fun e!2891617 () Bool)

(assert (=> b!4635312 (= e!2891617 e!2891628)))

(declare-fun res!1945604 () Bool)

(assert (=> b!4635312 (=> res!1945604 e!2891628)))

(assert (=> b!4635312 (= res!1945604 (not (= lt!1797498 lt!1797518)))))

(assert (=> b!4635312 (= lt!1797518 (+!1912 lt!1797515 (h!57736 oldBucket!40)))))

(assert (=> b!4635312 (= lt!1797498 (-!586 lt!1797513 key!4968))))

(assert (=> b!4635312 (= lt!1797513 (+!1912 lt!1797517 (h!57736 oldBucket!40)))))

(declare-fun lt!1797495 () ListMap!4361)

(assert (=> b!4635312 (= lt!1797495 lt!1797514)))

(assert (=> b!4635312 (= lt!1797514 (+!1912 lt!1797515 (h!57736 oldBucket!40)))))

(assert (=> b!4635312 (= lt!1797495 (-!586 (+!1912 lt!1797517 (h!57736 oldBucket!40)) key!4968))))

(declare-fun lt!1797496 () Unit!114251)

(declare-fun addRemoveCommutativeForDiffKeys!41 (ListMap!4361 K!13015 V!13261 K!13015) Unit!114251)

(assert (=> b!4635312 (= lt!1797496 (addRemoveCommutativeForDiffKeys!41 lt!1797517 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)) key!4968))))

(assert (=> b!4635312 (eq!861 lt!1797500 lt!1797515)))

(assert (=> b!4635312 (= lt!1797515 (-!586 lt!1797517 key!4968))))

(declare-fun lt!1797509 () Unit!114251)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!148 ((_ BitVec 64) List!51774 List!51774 K!13015 Hashable!5943) Unit!114251)

(assert (=> b!4635312 (= lt!1797509 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!148 hash!414 (t!358842 oldBucket!40) lt!1797525 key!4968 hashF!1389))))

(declare-fun b!4635313 () Bool)

(declare-fun res!1945599 () Bool)

(assert (=> b!4635313 (=> res!1945599 e!2891625)))

(assert (=> b!4635313 (= res!1945599 (not (eq!861 lt!1797506 (+!1912 lt!1797500 (h!57736 oldBucket!40)))))))

(declare-fun b!4635314 () Bool)

(declare-fun res!1945609 () Bool)

(declare-fun e!2891619 () Bool)

(assert (=> b!4635314 (=> (not res!1945609) (not e!2891619))))

(declare-fun allKeysSameHash!1400 (List!51774 (_ BitVec 64) Hashable!5943) Bool)

(assert (=> b!4635314 (= res!1945609 (allKeysSameHash!1400 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4635315 () Bool)

(assert (=> b!4635315 (= e!2891622 e!2891623)))

(declare-fun res!1945601 () Bool)

(assert (=> b!4635315 (=> res!1945601 e!2891623)))

(declare-fun removePairForKey!1169 (List!51774 K!13015) List!51774)

(assert (=> b!4635315 (= res!1945601 (not (= (removePairForKey!1169 lt!1797508 key!4968) lt!1797525)))))

(declare-fun tail!8181 (List!51774) List!51774)

(assert (=> b!4635315 (= lt!1797525 (tail!8181 newBucket!224))))

(assert (=> b!4635315 (= lt!1797508 (tail!8181 oldBucket!40))))

(declare-fun b!4635316 () Bool)

(assert (=> b!4635316 (= e!2891626 e!2891617)))

(declare-fun res!1945618 () Bool)

(assert (=> b!4635316 (=> res!1945618 e!2891617)))

(assert (=> b!4635316 (= res!1945618 (not (eq!861 lt!1797506 (+!1912 lt!1797500 lt!1797510))))))

(assert (=> b!4635316 (= lt!1797500 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651)))))

(assert (=> b!4635316 (= lt!1797506 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651)))))

(declare-fun b!4635317 () Bool)

(declare-fun e!2891627 () Bool)

(assert (=> b!4635317 (= e!2891619 e!2891627)))

(declare-fun res!1945605 () Bool)

(assert (=> b!4635317 (=> (not res!1945605) (not e!2891627))))

(assert (=> b!4635317 (= res!1945605 (contains!14771 lt!1797516 key!4968))))

(assert (=> b!4635317 (= lt!1797516 (extractMap!1602 lt!1797499))))

(assert (=> b!4635317 (= lt!1797499 (Cons!51651 (tuple2!52633 hash!414 oldBucket!40) Nil!51651))))

(declare-fun b!4635318 () Bool)

(assert (=> b!4635318 (= e!2891627 e!2891621)))

(declare-fun res!1945612 () Bool)

(assert (=> b!4635318 (=> (not res!1945612) (not e!2891621))))

(assert (=> b!4635318 (= res!1945612 (= lt!1797512 hash!414))))

(declare-fun hash!3610 (Hashable!5943 K!13015) (_ BitVec 64))

(assert (=> b!4635318 (= lt!1797512 (hash!3610 hashF!1389 key!4968))))

(declare-fun b!4635319 () Bool)

(assert (=> b!4635319 (= e!2891624 (= lt!1797511 (ListMap!4362 Nil!51650)))))

(declare-fun b!4635320 () Bool)

(declare-fun res!1945610 () Bool)

(assert (=> b!4635320 (=> res!1945610 e!2891623)))

(assert (=> b!4635320 (= res!1945610 (not (= (removePairForKey!1169 (t!358842 oldBucket!40) key!4968) lt!1797525)))))

(declare-fun res!1945613 () Bool)

(assert (=> start!465688 (=> (not res!1945613) (not e!2891619))))

(declare-fun noDuplicateKeys!1546 (List!51774) Bool)

(assert (=> start!465688 (= res!1945613 (noDuplicateKeys!1546 oldBucket!40))))

(assert (=> start!465688 e!2891619))

(assert (=> start!465688 true))

(assert (=> start!465688 e!2891629))

(assert (=> start!465688 tp_is_empty!29477))

(assert (=> start!465688 e!2891618))

(declare-fun b!4635306 () Bool)

(declare-fun res!1945615 () Bool)

(assert (=> b!4635306 (=> (not res!1945615) (not e!2891619))))

(assert (=> b!4635306 (= res!1945615 (noDuplicateKeys!1546 newBucket!224))))

(declare-fun b!4635321 () Bool)

(declare-fun res!1945606 () Bool)

(assert (=> b!4635321 (=> (not res!1945606) (not e!2891621))))

(assert (=> b!4635321 (= res!1945606 (allKeysSameHash!1400 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4635322 () Bool)

(declare-fun res!1945617 () Bool)

(assert (=> b!4635322 (=> (not res!1945617) (not e!2891619))))

(assert (=> b!4635322 (= res!1945617 (= (removePairForKey!1169 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!465688 res!1945613) b!4635306))

(assert (= (and b!4635306 res!1945615) b!4635322))

(assert (= (and b!4635322 res!1945617) b!4635314))

(assert (= (and b!4635314 res!1945609) b!4635317))

(assert (= (and b!4635317 res!1945605) b!4635318))

(assert (= (and b!4635318 res!1945612) b!4635321))

(assert (= (and b!4635321 res!1945606) b!4635308))

(assert (= (and b!4635308 res!1945600) b!4635319))

(assert (= (and b!4635308 (not res!1945611)) b!4635304))

(assert (= (and b!4635304 (not res!1945616)) b!4635315))

(assert (= (and b!4635315 (not res!1945601)) b!4635320))

(assert (= (and b!4635320 (not res!1945610)) b!4635309))

(assert (= (and b!4635309 (not res!1945614)) b!4635316))

(assert (= (and b!4635316 (not res!1945618)) b!4635312))

(assert (= (and b!4635312 (not res!1945604)) b!4635302))

(assert (= (and b!4635302 (not res!1945607)) b!4635305))

(assert (= (and b!4635305 (not res!1945603)) b!4635313))

(assert (= (and b!4635313 (not res!1945599)) b!4635301))

(assert (= (and b!4635301 (not res!1945602)) b!4635303))

(assert (= (and b!4635303 (not res!1945608)) b!4635311))

(assert (= (and start!465688 ((_ is Cons!51650) oldBucket!40)) b!4635310))

(assert (= (and start!465688 ((_ is Cons!51650) newBucket!224)) b!4635307))

(declare-fun m!5490867 () Bool)

(assert (=> b!4635318 m!5490867))

(declare-fun m!5490869 () Bool)

(assert (=> start!465688 m!5490869))

(declare-fun m!5490871 () Bool)

(assert (=> b!4635302 m!5490871))

(declare-fun m!5490873 () Bool)

(assert (=> b!4635302 m!5490873))

(declare-fun m!5490875 () Bool)

(assert (=> b!4635302 m!5490875))

(declare-fun m!5490877 () Bool)

(assert (=> b!4635302 m!5490877))

(declare-fun m!5490879 () Bool)

(assert (=> b!4635321 m!5490879))

(declare-fun m!5490881 () Bool)

(assert (=> b!4635308 m!5490881))

(declare-fun m!5490883 () Bool)

(assert (=> b!4635308 m!5490883))

(declare-fun m!5490885 () Bool)

(assert (=> b!4635301 m!5490885))

(declare-fun m!5490887 () Bool)

(assert (=> b!4635301 m!5490887))

(assert (=> b!4635301 m!5490887))

(declare-fun m!5490889 () Bool)

(assert (=> b!4635301 m!5490889))

(declare-fun m!5490891 () Bool)

(assert (=> b!4635301 m!5490891))

(declare-fun m!5490893 () Bool)

(assert (=> b!4635306 m!5490893))

(declare-fun m!5490895 () Bool)

(assert (=> b!4635314 m!5490895))

(assert (=> b!4635313 m!5490887))

(assert (=> b!4635313 m!5490887))

(declare-fun m!5490897 () Bool)

(assert (=> b!4635313 m!5490897))

(declare-fun m!5490899 () Bool)

(assert (=> b!4635315 m!5490899))

(declare-fun m!5490901 () Bool)

(assert (=> b!4635315 m!5490901))

(declare-fun m!5490903 () Bool)

(assert (=> b!4635315 m!5490903))

(declare-fun m!5490905 () Bool)

(assert (=> b!4635322 m!5490905))

(declare-fun m!5490907 () Bool)

(assert (=> b!4635312 m!5490907))

(declare-fun m!5490909 () Bool)

(assert (=> b!4635312 m!5490909))

(declare-fun m!5490911 () Bool)

(assert (=> b!4635312 m!5490911))

(declare-fun m!5490913 () Bool)

(assert (=> b!4635312 m!5490913))

(declare-fun m!5490915 () Bool)

(assert (=> b!4635312 m!5490915))

(declare-fun m!5490917 () Bool)

(assert (=> b!4635312 m!5490917))

(declare-fun m!5490919 () Bool)

(assert (=> b!4635312 m!5490919))

(assert (=> b!4635312 m!5490909))

(declare-fun m!5490921 () Bool)

(assert (=> b!4635312 m!5490921))

(declare-fun m!5490923 () Bool)

(assert (=> b!4635317 m!5490923))

(declare-fun m!5490925 () Bool)

(assert (=> b!4635317 m!5490925))

(declare-fun m!5490927 () Bool)

(assert (=> b!4635311 m!5490927))

(declare-fun m!5490929 () Bool)

(assert (=> b!4635303 m!5490929))

(declare-fun m!5490931 () Bool)

(assert (=> b!4635316 m!5490931))

(assert (=> b!4635316 m!5490931))

(declare-fun m!5490933 () Bool)

(assert (=> b!4635316 m!5490933))

(declare-fun m!5490935 () Bool)

(assert (=> b!4635316 m!5490935))

(declare-fun m!5490937 () Bool)

(assert (=> b!4635316 m!5490937))

(declare-fun m!5490939 () Bool)

(assert (=> b!4635304 m!5490939))

(declare-fun m!5490941 () Bool)

(assert (=> b!4635304 m!5490941))

(declare-fun m!5490943 () Bool)

(assert (=> b!4635304 m!5490943))

(declare-fun m!5490945 () Bool)

(assert (=> b!4635304 m!5490945))

(declare-fun m!5490947 () Bool)

(assert (=> b!4635304 m!5490947))

(declare-fun m!5490949 () Bool)

(assert (=> b!4635304 m!5490949))

(assert (=> b!4635304 m!5490939))

(declare-fun m!5490951 () Bool)

(assert (=> b!4635304 m!5490951))

(declare-fun m!5490953 () Bool)

(assert (=> b!4635304 m!5490953))

(declare-fun m!5490955 () Bool)

(assert (=> b!4635304 m!5490955))

(declare-fun m!5490957 () Bool)

(assert (=> b!4635304 m!5490957))

(declare-fun m!5490959 () Bool)

(assert (=> b!4635304 m!5490959))

(declare-fun m!5490961 () Bool)

(assert (=> b!4635304 m!5490961))

(declare-fun m!5490963 () Bool)

(assert (=> b!4635309 m!5490963))

(declare-fun m!5490965 () Bool)

(assert (=> b!4635309 m!5490965))

(declare-fun m!5490967 () Bool)

(assert (=> b!4635309 m!5490967))

(assert (=> b!4635309 m!5490963))

(declare-fun m!5490969 () Bool)

(assert (=> b!4635309 m!5490969))

(declare-fun m!5490971 () Bool)

(assert (=> b!4635309 m!5490971))

(declare-fun m!5490973 () Bool)

(assert (=> b!4635309 m!5490973))

(declare-fun m!5490975 () Bool)

(assert (=> b!4635309 m!5490975))

(declare-fun m!5490977 () Bool)

(assert (=> b!4635309 m!5490977))

(assert (=> b!4635309 m!5490969))

(declare-fun m!5490979 () Bool)

(assert (=> b!4635309 m!5490979))

(declare-fun m!5490981 () Bool)

(assert (=> b!4635309 m!5490981))

(declare-fun m!5490983 () Bool)

(assert (=> b!4635309 m!5490983))

(assert (=> b!4635309 m!5490973))

(assert (=> b!4635309 m!5490971))

(declare-fun m!5490985 () Bool)

(assert (=> b!4635309 m!5490985))

(declare-fun m!5490987 () Bool)

(assert (=> b!4635309 m!5490987))

(declare-fun m!5490989 () Bool)

(assert (=> b!4635309 m!5490989))

(declare-fun m!5490991 () Bool)

(assert (=> b!4635309 m!5490991))

(assert (=> b!4635309 m!5490965))

(declare-fun m!5490993 () Bool)

(assert (=> b!4635309 m!5490993))

(declare-fun m!5490995 () Bool)

(assert (=> b!4635309 m!5490995))

(declare-fun m!5490997 () Bool)

(assert (=> b!4635309 m!5490997))

(assert (=> b!4635309 m!5490995))

(assert (=> b!4635309 m!5490987))

(assert (=> b!4635309 m!5490991))

(declare-fun m!5490999 () Bool)

(assert (=> b!4635320 m!5490999))

(check-sat (not b!4635306) (not b!4635310) (not b!4635302) (not b!4635316) (not b!4635322) (not b!4635301) (not b!4635315) (not b!4635304) (not b!4635307) (not b!4635318) (not b!4635309) (not start!465688) (not b!4635320) (not b!4635312) (not b!4635321) (not b!4635313) (not b!4635311) (not b!4635308) (not b!4635303) (not b!4635317) (not b!4635314) tp_is_empty!29477 tp_is_empty!29479)
(check-sat)
(get-model)

(declare-fun d!1461419 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8904 (List!51774) (InoxSet tuple2!52630))

(assert (=> d!1461419 (= (eq!861 lt!1797516 lt!1797513) (= (content!8904 (toList!5057 lt!1797516)) (content!8904 (toList!5057 lt!1797513))))))

(declare-fun bs!1030513 () Bool)

(assert (= bs!1030513 d!1461419))

(declare-fun m!5491005 () Bool)

(assert (=> bs!1030513 m!5491005))

(declare-fun m!5491007 () Bool)

(assert (=> bs!1030513 m!5491007))

(assert (=> b!4635303 d!1461419))

(declare-fun d!1461421 () Bool)

(assert (=> d!1461421 (= (eq!861 lt!1797497 lt!1797518) (= (content!8904 (toList!5057 lt!1797497)) (content!8904 (toList!5057 lt!1797518))))))

(declare-fun bs!1030514 () Bool)

(assert (= bs!1030514 d!1461421))

(declare-fun m!5491009 () Bool)

(assert (=> bs!1030514 m!5491009))

(declare-fun m!5491011 () Bool)

(assert (=> bs!1030514 m!5491011))

(assert (=> b!4635302 d!1461421))

(declare-fun d!1461423 () Bool)

(assert (=> d!1461423 (= (eq!861 lt!1797498 lt!1797497) (= (content!8904 (toList!5057 lt!1797498)) (content!8904 (toList!5057 lt!1797497))))))

(declare-fun bs!1030515 () Bool)

(assert (= bs!1030515 d!1461423))

(declare-fun m!5491013 () Bool)

(assert (=> bs!1030515 m!5491013))

(assert (=> bs!1030515 m!5491009))

(assert (=> b!4635302 d!1461423))

(declare-fun d!1461425 () Bool)

(declare-fun e!2891657 () Bool)

(assert (=> d!1461425 e!2891657))

(declare-fun res!1945642 () Bool)

(assert (=> d!1461425 (=> (not res!1945642) (not e!2891657))))

(declare-fun lt!1797552 () ListMap!4361)

(assert (=> d!1461425 (= res!1945642 (not (contains!14771 lt!1797552 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!288 (List!51774 K!13015) List!51774)

(assert (=> d!1461425 (= lt!1797552 (ListMap!4362 (removePresrvNoDuplicatedKeys!288 (toList!5057 lt!1797516) key!4968)))))

(assert (=> d!1461425 (= (-!586 lt!1797516 key!4968) lt!1797552)))

(declare-fun b!4635358 () Bool)

(declare-datatypes ((List!51777 0))(
  ( (Nil!51653) (Cons!51653 (h!57741 K!13015) (t!358847 List!51777)) )
))
(declare-fun content!8905 (List!51777) (InoxSet K!13015))

(declare-fun keys!18230 (ListMap!4361) List!51777)

(assert (=> b!4635358 (= e!2891657 (= ((_ map and) (content!8905 (keys!18230 lt!1797516)) ((_ map not) (store ((as const (Array K!13015 Bool)) false) key!4968 true))) (content!8905 (keys!18230 lt!1797552))))))

(assert (= (and d!1461425 res!1945642) b!4635358))

(declare-fun m!5491051 () Bool)

(assert (=> d!1461425 m!5491051))

(declare-fun m!5491053 () Bool)

(assert (=> d!1461425 m!5491053))

(declare-fun m!5491055 () Bool)

(assert (=> b!4635358 m!5491055))

(assert (=> b!4635358 m!5491055))

(declare-fun m!5491057 () Bool)

(assert (=> b!4635358 m!5491057))

(declare-fun m!5491059 () Bool)

(assert (=> b!4635358 m!5491059))

(assert (=> b!4635358 m!5491059))

(declare-fun m!5491061 () Bool)

(assert (=> b!4635358 m!5491061))

(declare-fun m!5491063 () Bool)

(assert (=> b!4635358 m!5491063))

(assert (=> b!4635302 d!1461425))

(declare-fun d!1461441 () Bool)

(assert (=> d!1461441 (eq!861 (-!586 lt!1797513 key!4968) (-!586 lt!1797516 key!4968))))

(declare-fun lt!1797561 () Unit!114251)

(declare-fun choose!31660 (ListMap!4361 ListMap!4361 K!13015) Unit!114251)

(assert (=> d!1461441 (= lt!1797561 (choose!31660 lt!1797513 lt!1797516 key!4968))))

(assert (=> d!1461441 (eq!861 lt!1797513 lt!1797516)))

(assert (=> d!1461441 (= (lemmaRemovePreservesEq!42 lt!1797513 lt!1797516 key!4968) lt!1797561)))

(declare-fun bs!1030520 () Bool)

(assert (= bs!1030520 d!1461441))

(assert (=> bs!1030520 m!5490915))

(assert (=> bs!1030520 m!5490915))

(assert (=> bs!1030520 m!5490875))

(declare-fun m!5491085 () Bool)

(assert (=> bs!1030520 m!5491085))

(assert (=> bs!1030520 m!5490875))

(declare-fun m!5491087 () Bool)

(assert (=> bs!1030520 m!5491087))

(declare-fun m!5491089 () Bool)

(assert (=> bs!1030520 m!5491089))

(assert (=> b!4635302 d!1461441))

(declare-fun d!1461449 () Bool)

(assert (=> d!1461449 (= (eq!861 lt!1797506 (+!1912 lt!1797500 (h!57736 oldBucket!40))) (= (content!8904 (toList!5057 lt!1797506)) (content!8904 (toList!5057 (+!1912 lt!1797500 (h!57736 oldBucket!40))))))))

(declare-fun bs!1030521 () Bool)

(assert (= bs!1030521 d!1461449))

(declare-fun m!5491091 () Bool)

(assert (=> bs!1030521 m!5491091))

(declare-fun m!5491093 () Bool)

(assert (=> bs!1030521 m!5491093))

(assert (=> b!4635313 d!1461449))

(declare-fun d!1461451 () Bool)

(declare-fun e!2891679 () Bool)

(assert (=> d!1461451 e!2891679))

(declare-fun res!1945667 () Bool)

(assert (=> d!1461451 (=> (not res!1945667) (not e!2891679))))

(declare-fun lt!1797586 () ListMap!4361)

(assert (=> d!1461451 (= res!1945667 (contains!14771 lt!1797586 (_1!29609 (h!57736 oldBucket!40))))))

(declare-fun lt!1797588 () List!51774)

(assert (=> d!1461451 (= lt!1797586 (ListMap!4362 lt!1797588))))

(declare-fun lt!1797589 () Unit!114251)

(declare-fun lt!1797587 () Unit!114251)

(assert (=> d!1461451 (= lt!1797589 lt!1797587)))

(declare-datatypes ((Option!11703 0))(
  ( (None!11702) (Some!11702 (v!45904 V!13261)) )
))
(declare-fun getValueByKey!1523 (List!51774 K!13015) Option!11703)

(assert (=> d!1461451 (= (getValueByKey!1523 lt!1797588 (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!884 (List!51774 K!13015 V!13261) Unit!114251)

(assert (=> d!1461451 (= lt!1797587 (lemmaContainsTupThenGetReturnValue!884 lt!1797588 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!392 (List!51774 K!13015 V!13261) List!51774)

(assert (=> d!1461451 (= lt!1797588 (insertNoDuplicatedKeys!392 (toList!5057 lt!1797500) (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461451 (= (+!1912 lt!1797500 (h!57736 oldBucket!40)) lt!1797586)))

(declare-fun b!4635396 () Bool)

(declare-fun res!1945668 () Bool)

(assert (=> b!4635396 (=> (not res!1945668) (not e!2891679))))

(assert (=> b!4635396 (= res!1945668 (= (getValueByKey!1523 (toList!5057 lt!1797586) (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun b!4635397 () Bool)

(declare-fun contains!14774 (List!51774 tuple2!52630) Bool)

(assert (=> b!4635397 (= e!2891679 (contains!14774 (toList!5057 lt!1797586) (h!57736 oldBucket!40)))))

(assert (= (and d!1461451 res!1945667) b!4635396))

(assert (= (and b!4635396 res!1945668) b!4635397))

(declare-fun m!5491095 () Bool)

(assert (=> d!1461451 m!5491095))

(declare-fun m!5491097 () Bool)

(assert (=> d!1461451 m!5491097))

(declare-fun m!5491099 () Bool)

(assert (=> d!1461451 m!5491099))

(declare-fun m!5491101 () Bool)

(assert (=> d!1461451 m!5491101))

(declare-fun m!5491103 () Bool)

(assert (=> b!4635396 m!5491103))

(declare-fun m!5491105 () Bool)

(assert (=> b!4635397 m!5491105))

(assert (=> b!4635313 d!1461451))

(declare-fun bs!1030526 () Bool)

(declare-fun d!1461453 () Bool)

(assert (= bs!1030526 (and d!1461453 b!4635304)))

(declare-fun lambda!194803 () Int)

(assert (=> bs!1030526 (= lambda!194803 lambda!194790)))

(assert (=> d!1461453 (contains!14770 lt!1797505 (hash!3610 hashF!1389 key!4968))))

(declare-fun lt!1797603 () Unit!114251)

(declare-fun choose!31661 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> d!1461453 (= lt!1797603 (choose!31661 lt!1797505 key!4968 hashF!1389))))

(assert (=> d!1461453 (forall!10894 (toList!5058 lt!1797505) lambda!194803)))

(assert (=> d!1461453 (= (lemmaInGenMapThenLongMapContainsHash!544 lt!1797505 key!4968 hashF!1389) lt!1797603)))

(declare-fun bs!1030527 () Bool)

(assert (= bs!1030527 d!1461453))

(assert (=> bs!1030527 m!5490867))

(assert (=> bs!1030527 m!5490867))

(declare-fun m!5491139 () Bool)

(assert (=> bs!1030527 m!5491139))

(declare-fun m!5491141 () Bool)

(assert (=> bs!1030527 m!5491141))

(declare-fun m!5491143 () Bool)

(assert (=> bs!1030527 m!5491143))

(assert (=> b!4635304 d!1461453))

(declare-fun b!4635443 () Bool)

(declare-fun e!2891709 () Option!11700)

(assert (=> b!4635443 (= e!2891709 (Some!11699 (h!57736 lt!1797501)))))

(declare-fun b!4635444 () Bool)

(declare-fun res!1945695 () Bool)

(declare-fun e!2891711 () Bool)

(assert (=> b!4635444 (=> (not res!1945695) (not e!2891711))))

(declare-fun lt!1797619 () Option!11700)

(declare-fun get!17169 (Option!11700) tuple2!52630)

(assert (=> b!4635444 (= res!1945695 (= (_1!29609 (get!17169 lt!1797619)) key!4968))))

(declare-fun d!1461461 () Bool)

(declare-fun e!2891708 () Bool)

(assert (=> d!1461461 e!2891708))

(declare-fun res!1945694 () Bool)

(assert (=> d!1461461 (=> res!1945694 e!2891708)))

(declare-fun e!2891710 () Bool)

(assert (=> d!1461461 (= res!1945694 e!2891710)))

(declare-fun res!1945692 () Bool)

(assert (=> d!1461461 (=> (not res!1945692) (not e!2891710))))

(declare-fun isEmpty!28966 (Option!11700) Bool)

(assert (=> d!1461461 (= res!1945692 (isEmpty!28966 lt!1797619))))

(assert (=> d!1461461 (= lt!1797619 e!2891709)))

(declare-fun c!793381 () Bool)

(assert (=> d!1461461 (= c!793381 (and ((_ is Cons!51650) lt!1797501) (= (_1!29609 (h!57736 lt!1797501)) key!4968)))))

(assert (=> d!1461461 (noDuplicateKeys!1546 lt!1797501)))

(assert (=> d!1461461 (= (getPair!338 lt!1797501 key!4968) lt!1797619)))

(declare-fun b!4635445 () Bool)

(declare-fun e!2891712 () Option!11700)

(assert (=> b!4635445 (= e!2891709 e!2891712)))

(declare-fun c!793380 () Bool)

(assert (=> b!4635445 (= c!793380 ((_ is Cons!51650) lt!1797501))))

(declare-fun b!4635446 () Bool)

(assert (=> b!4635446 (= e!2891711 (contains!14774 lt!1797501 (get!17169 lt!1797619)))))

(declare-fun b!4635447 () Bool)

(assert (=> b!4635447 (= e!2891710 (not (containsKey!2558 lt!1797501 key!4968)))))

(declare-fun b!4635448 () Bool)

(assert (=> b!4635448 (= e!2891708 e!2891711)))

(declare-fun res!1945693 () Bool)

(assert (=> b!4635448 (=> (not res!1945693) (not e!2891711))))

(assert (=> b!4635448 (= res!1945693 (isDefined!8965 lt!1797619))))

(declare-fun b!4635449 () Bool)

(assert (=> b!4635449 (= e!2891712 None!11699)))

(declare-fun b!4635450 () Bool)

(assert (=> b!4635450 (= e!2891712 (getPair!338 (t!358842 lt!1797501) key!4968))))

(assert (= (and d!1461461 c!793381) b!4635443))

(assert (= (and d!1461461 (not c!793381)) b!4635445))

(assert (= (and b!4635445 c!793380) b!4635450))

(assert (= (and b!4635445 (not c!793380)) b!4635449))

(assert (= (and d!1461461 res!1945692) b!4635447))

(assert (= (and d!1461461 (not res!1945694)) b!4635448))

(assert (= (and b!4635448 res!1945693) b!4635444))

(assert (= (and b!4635444 res!1945695) b!4635446))

(declare-fun m!5491159 () Bool)

(assert (=> b!4635450 m!5491159))

(declare-fun m!5491161 () Bool)

(assert (=> d!1461461 m!5491161))

(declare-fun m!5491163 () Bool)

(assert (=> d!1461461 m!5491163))

(declare-fun m!5491165 () Bool)

(assert (=> b!4635446 m!5491165))

(assert (=> b!4635446 m!5491165))

(declare-fun m!5491167 () Bool)

(assert (=> b!4635446 m!5491167))

(declare-fun m!5491169 () Bool)

(assert (=> b!4635448 m!5491169))

(declare-fun m!5491171 () Bool)

(assert (=> b!4635447 m!5491171))

(assert (=> b!4635444 m!5491165))

(assert (=> b!4635304 d!1461461))

(declare-fun d!1461471 () Bool)

(assert (=> d!1461471 (containsKey!2558 oldBucket!40 key!4968)))

(declare-fun lt!1797638 () Unit!114251)

(declare-fun choose!31662 (List!51774 K!13015 Hashable!5943) Unit!114251)

(assert (=> d!1461471 (= lt!1797638 (choose!31662 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1461471 (noDuplicateKeys!1546 oldBucket!40)))

(assert (=> d!1461471 (= (lemmaGetPairDefinedThenContainsKey!92 oldBucket!40 key!4968 hashF!1389) lt!1797638)))

(declare-fun bs!1030529 () Bool)

(assert (= bs!1030529 d!1461471))

(assert (=> bs!1030529 m!5490945))

(declare-fun m!5491173 () Bool)

(assert (=> bs!1030529 m!5491173))

(assert (=> bs!1030529 m!5490869))

(assert (=> b!4635304 d!1461471))

(declare-fun d!1461473 () Bool)

(assert (=> d!1461473 (contains!14769 (toList!5058 lt!1797505) (tuple2!52633 lt!1797512 lt!1797501))))

(declare-fun lt!1797649 () Unit!114251)

(declare-fun choose!31663 (ListLongMap!3647 (_ BitVec 64) List!51774) Unit!114251)

(assert (=> d!1461473 (= lt!1797649 (choose!31663 lt!1797505 lt!1797512 lt!1797501))))

(assert (=> d!1461473 (contains!14770 lt!1797505 lt!1797512)))

(assert (=> d!1461473 (= (lemmaGetValueImpliesTupleContained!143 lt!1797505 lt!1797512 lt!1797501) lt!1797649)))

(declare-fun bs!1030530 () Bool)

(assert (= bs!1030530 d!1461473))

(declare-fun m!5491195 () Bool)

(assert (=> bs!1030530 m!5491195))

(declare-fun m!5491197 () Bool)

(assert (=> bs!1030530 m!5491197))

(assert (=> bs!1030530 m!5490947))

(assert (=> b!4635304 d!1461473))

(declare-fun d!1461477 () Bool)

(declare-fun res!1945709 () Bool)

(declare-fun e!2891737 () Bool)

(assert (=> d!1461477 (=> res!1945709 e!2891737)))

(assert (=> d!1461477 (= res!1945709 (and ((_ is Cons!51650) oldBucket!40) (= (_1!29609 (h!57736 oldBucket!40)) key!4968)))))

(assert (=> d!1461477 (= (containsKey!2558 oldBucket!40 key!4968) e!2891737)))

(declare-fun b!4635487 () Bool)

(declare-fun e!2891738 () Bool)

(assert (=> b!4635487 (= e!2891737 e!2891738)))

(declare-fun res!1945710 () Bool)

(assert (=> b!4635487 (=> (not res!1945710) (not e!2891738))))

(assert (=> b!4635487 (= res!1945710 ((_ is Cons!51650) oldBucket!40))))

(declare-fun b!4635488 () Bool)

(assert (=> b!4635488 (= e!2891738 (containsKey!2558 (t!358842 oldBucket!40) key!4968))))

(assert (= (and d!1461477 (not res!1945709)) b!4635487))

(assert (= (and b!4635487 res!1945710) b!4635488))

(assert (=> b!4635488 m!5490961))

(assert (=> b!4635304 d!1461477))

(declare-fun d!1461479 () Bool)

(declare-fun lt!1797655 () Bool)

(declare-fun content!8906 (List!51775) (InoxSet tuple2!52632))

(assert (=> d!1461479 (= lt!1797655 (select (content!8906 lt!1797499) lt!1797523))))

(declare-fun e!2891744 () Bool)

(assert (=> d!1461479 (= lt!1797655 e!2891744)))

(declare-fun res!1945715 () Bool)

(assert (=> d!1461479 (=> (not res!1945715) (not e!2891744))))

(assert (=> d!1461479 (= res!1945715 ((_ is Cons!51651) lt!1797499))))

(assert (=> d!1461479 (= (contains!14769 lt!1797499 lt!1797523) lt!1797655)))

(declare-fun b!4635495 () Bool)

(declare-fun e!2891745 () Bool)

(assert (=> b!4635495 (= e!2891744 e!2891745)))

(declare-fun res!1945716 () Bool)

(assert (=> b!4635495 (=> res!1945716 e!2891745)))

(assert (=> b!4635495 (= res!1945716 (= (h!57737 lt!1797499) lt!1797523))))

(declare-fun b!4635496 () Bool)

(assert (=> b!4635496 (= e!2891745 (contains!14769 (t!358843 lt!1797499) lt!1797523))))

(assert (= (and d!1461479 res!1945715) b!4635495))

(assert (= (and b!4635495 (not res!1945716)) b!4635496))

(declare-fun m!5491207 () Bool)

(assert (=> d!1461479 m!5491207))

(declare-fun m!5491209 () Bool)

(assert (=> d!1461479 m!5491209))

(declare-fun m!5491211 () Bool)

(assert (=> b!4635496 m!5491211))

(assert (=> b!4635304 d!1461479))

(declare-fun bs!1030534 () Bool)

(declare-fun d!1461483 () Bool)

(assert (= bs!1030534 (and d!1461483 b!4635304)))

(declare-fun lambda!194816 () Int)

(assert (=> bs!1030534 (= lambda!194816 lambda!194790)))

(declare-fun bs!1030535 () Bool)

(assert (= bs!1030535 (and d!1461483 d!1461453)))

(assert (=> bs!1030535 (= lambda!194816 lambda!194803)))

(declare-fun lt!1797674 () List!51774)

(declare-fun b!4635508 () Bool)

(declare-fun lt!1797677 () (_ BitVec 64))

(declare-fun e!2891751 () Bool)

(declare-datatypes ((Option!11704 0))(
  ( (None!11703) (Some!11703 (v!45905 List!51774)) )
))
(declare-fun getValueByKey!1524 (List!51775 (_ BitVec 64)) Option!11704)

(assert (=> b!4635508 (= e!2891751 (= (getValueByKey!1524 (toList!5058 lt!1797505) lt!1797677) (Some!11703 lt!1797674)))))

(declare-fun b!4635506 () Bool)

(declare-fun res!1945726 () Bool)

(declare-fun e!2891750 () Bool)

(assert (=> b!4635506 (=> (not res!1945726) (not e!2891750))))

(assert (=> b!4635506 (= res!1945726 (contains!14771 (extractMap!1602 (toList!5058 lt!1797505)) key!4968))))

(declare-fun b!4635507 () Bool)

(assert (=> b!4635507 (= e!2891750 (isDefined!8965 (getPair!338 (apply!12211 lt!1797505 (hash!3610 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1797679 () Unit!114251)

(assert (=> b!4635507 (= lt!1797679 (forallContained!3126 (toList!5058 lt!1797505) lambda!194816 (tuple2!52633 (hash!3610 hashF!1389 key!4968) (apply!12211 lt!1797505 (hash!3610 hashF!1389 key!4968)))))))

(declare-fun lt!1797678 () Unit!114251)

(declare-fun lt!1797672 () Unit!114251)

(assert (=> b!4635507 (= lt!1797678 lt!1797672)))

(assert (=> b!4635507 (contains!14769 (toList!5058 lt!1797505) (tuple2!52633 lt!1797677 lt!1797674))))

(assert (=> b!4635507 (= lt!1797672 (lemmaGetValueImpliesTupleContained!143 lt!1797505 lt!1797677 lt!1797674))))

(assert (=> b!4635507 e!2891751))

(declare-fun res!1945725 () Bool)

(assert (=> b!4635507 (=> (not res!1945725) (not e!2891751))))

(assert (=> b!4635507 (= res!1945725 (contains!14770 lt!1797505 lt!1797677))))

(assert (=> b!4635507 (= lt!1797674 (apply!12211 lt!1797505 (hash!3610 hashF!1389 key!4968)))))

(assert (=> b!4635507 (= lt!1797677 (hash!3610 hashF!1389 key!4968))))

(declare-fun lt!1797673 () Unit!114251)

(declare-fun lt!1797676 () Unit!114251)

(assert (=> b!4635507 (= lt!1797673 lt!1797676)))

(assert (=> b!4635507 (contains!14770 lt!1797505 (hash!3610 hashF!1389 key!4968))))

(assert (=> b!4635507 (= lt!1797676 (lemmaInGenMapThenLongMapContainsHash!544 lt!1797505 key!4968 hashF!1389))))

(assert (=> d!1461483 e!2891750))

(declare-fun res!1945728 () Bool)

(assert (=> d!1461483 (=> (not res!1945728) (not e!2891750))))

(assert (=> d!1461483 (= res!1945728 (forall!10894 (toList!5058 lt!1797505) lambda!194816))))

(declare-fun lt!1797675 () Unit!114251)

(declare-fun choose!31664 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> d!1461483 (= lt!1797675 (choose!31664 lt!1797505 key!4968 hashF!1389))))

(assert (=> d!1461483 (forall!10894 (toList!5058 lt!1797505) lambda!194816)))

(assert (=> d!1461483 (= (lemmaInGenMapThenGetPairDefined!134 lt!1797505 key!4968 hashF!1389) lt!1797675)))

(declare-fun b!4635505 () Bool)

(declare-fun res!1945727 () Bool)

(assert (=> b!4635505 (=> (not res!1945727) (not e!2891750))))

(declare-fun allKeysSameHashInMap!1566 (ListLongMap!3647 Hashable!5943) Bool)

(assert (=> b!4635505 (= res!1945727 (allKeysSameHashInMap!1566 lt!1797505 hashF!1389))))

(assert (= (and d!1461483 res!1945728) b!4635505))

(assert (= (and b!4635505 res!1945727) b!4635506))

(assert (= (and b!4635506 res!1945726) b!4635507))

(assert (= (and b!4635507 res!1945725) b!4635508))

(declare-fun m!5491213 () Bool)

(assert (=> b!4635505 m!5491213))

(declare-fun m!5491215 () Bool)

(assert (=> b!4635508 m!5491215))

(declare-fun m!5491217 () Bool)

(assert (=> d!1461483 m!5491217))

(declare-fun m!5491219 () Bool)

(assert (=> d!1461483 m!5491219))

(assert (=> d!1461483 m!5491217))

(declare-fun m!5491221 () Bool)

(assert (=> b!4635506 m!5491221))

(assert (=> b!4635506 m!5491221))

(declare-fun m!5491223 () Bool)

(assert (=> b!4635506 m!5491223))

(declare-fun m!5491225 () Bool)

(assert (=> b!4635507 m!5491225))

(declare-fun m!5491227 () Bool)

(assert (=> b!4635507 m!5491227))

(declare-fun m!5491229 () Bool)

(assert (=> b!4635507 m!5491229))

(declare-fun m!5491231 () Bool)

(assert (=> b!4635507 m!5491231))

(assert (=> b!4635507 m!5491229))

(declare-fun m!5491233 () Bool)

(assert (=> b!4635507 m!5491233))

(declare-fun m!5491235 () Bool)

(assert (=> b!4635507 m!5491235))

(declare-fun m!5491237 () Bool)

(assert (=> b!4635507 m!5491237))

(assert (=> b!4635507 m!5490951))

(assert (=> b!4635507 m!5490867))

(assert (=> b!4635507 m!5490867))

(assert (=> b!4635507 m!5491139))

(assert (=> b!4635507 m!5490867))

(assert (=> b!4635507 m!5491227))

(assert (=> b!4635304 d!1461483))

(declare-fun d!1461485 () Bool)

(declare-fun get!17170 (Option!11704) List!51774)

(assert (=> d!1461485 (= (apply!12211 lt!1797505 lt!1797512) (get!17170 (getValueByKey!1524 (toList!5058 lt!1797505) lt!1797512)))))

(declare-fun bs!1030536 () Bool)

(assert (= bs!1030536 d!1461485))

(declare-fun m!5491239 () Bool)

(assert (=> bs!1030536 m!5491239))

(assert (=> bs!1030536 m!5491239))

(declare-fun m!5491241 () Bool)

(assert (=> bs!1030536 m!5491241))

(assert (=> b!4635304 d!1461485))

(declare-fun d!1461487 () Bool)

(assert (=> d!1461487 (= (isDefined!8965 (getPair!338 lt!1797501 key!4968)) (not (isEmpty!28966 (getPair!338 lt!1797501 key!4968))))))

(declare-fun bs!1030537 () Bool)

(assert (= bs!1030537 d!1461487))

(assert (=> bs!1030537 m!5490939))

(declare-fun m!5491243 () Bool)

(assert (=> bs!1030537 m!5491243))

(assert (=> b!4635304 d!1461487))

(declare-fun d!1461489 () Bool)

(declare-fun res!1945729 () Bool)

(declare-fun e!2891752 () Bool)

(assert (=> d!1461489 (=> res!1945729 e!2891752)))

(assert (=> d!1461489 (= res!1945729 (and ((_ is Cons!51650) (t!358842 oldBucket!40)) (= (_1!29609 (h!57736 (t!358842 oldBucket!40))) key!4968)))))

(assert (=> d!1461489 (= (containsKey!2558 (t!358842 oldBucket!40) key!4968) e!2891752)))

(declare-fun b!4635509 () Bool)

(declare-fun e!2891753 () Bool)

(assert (=> b!4635509 (= e!2891752 e!2891753)))

(declare-fun res!1945730 () Bool)

(assert (=> b!4635509 (=> (not res!1945730) (not e!2891753))))

(assert (=> b!4635509 (= res!1945730 ((_ is Cons!51650) (t!358842 oldBucket!40)))))

(declare-fun b!4635510 () Bool)

(assert (=> b!4635510 (= e!2891753 (containsKey!2558 (t!358842 (t!358842 oldBucket!40)) key!4968))))

(assert (= (and d!1461489 (not res!1945729)) b!4635509))

(assert (= (and b!4635509 res!1945730) b!4635510))

(declare-fun m!5491245 () Bool)

(assert (=> b!4635510 m!5491245))

(assert (=> b!4635304 d!1461489))

(declare-fun d!1461491 () Bool)

(declare-fun e!2891758 () Bool)

(assert (=> d!1461491 e!2891758))

(declare-fun res!1945733 () Bool)

(assert (=> d!1461491 (=> res!1945733 e!2891758)))

(declare-fun lt!1797689 () Bool)

(assert (=> d!1461491 (= res!1945733 (not lt!1797689))))

(declare-fun lt!1797691 () Bool)

(assert (=> d!1461491 (= lt!1797689 lt!1797691)))

(declare-fun lt!1797690 () Unit!114251)

(declare-fun e!2891759 () Unit!114251)

(assert (=> d!1461491 (= lt!1797690 e!2891759)))

(declare-fun c!793396 () Bool)

(assert (=> d!1461491 (= c!793396 lt!1797691)))

(declare-fun containsKey!2561 (List!51775 (_ BitVec 64)) Bool)

(assert (=> d!1461491 (= lt!1797691 (containsKey!2561 (toList!5058 lt!1797505) lt!1797512))))

(assert (=> d!1461491 (= (contains!14770 lt!1797505 lt!1797512) lt!1797689)))

(declare-fun b!4635517 () Bool)

(declare-fun lt!1797688 () Unit!114251)

(assert (=> b!4635517 (= e!2891759 lt!1797688)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1425 (List!51775 (_ BitVec 64)) Unit!114251)

(assert (=> b!4635517 (= lt!1797688 (lemmaContainsKeyImpliesGetValueByKeyDefined!1425 (toList!5058 lt!1797505) lt!1797512))))

(declare-fun isDefined!8968 (Option!11704) Bool)

(assert (=> b!4635517 (isDefined!8968 (getValueByKey!1524 (toList!5058 lt!1797505) lt!1797512))))

(declare-fun b!4635518 () Bool)

(declare-fun Unit!114277 () Unit!114251)

(assert (=> b!4635518 (= e!2891759 Unit!114277)))

(declare-fun b!4635519 () Bool)

(assert (=> b!4635519 (= e!2891758 (isDefined!8968 (getValueByKey!1524 (toList!5058 lt!1797505) lt!1797512)))))

(assert (= (and d!1461491 c!793396) b!4635517))

(assert (= (and d!1461491 (not c!793396)) b!4635518))

(assert (= (and d!1461491 (not res!1945733)) b!4635519))

(declare-fun m!5491247 () Bool)

(assert (=> d!1461491 m!5491247))

(declare-fun m!5491249 () Bool)

(assert (=> b!4635517 m!5491249))

(assert (=> b!4635517 m!5491239))

(assert (=> b!4635517 m!5491239))

(declare-fun m!5491251 () Bool)

(assert (=> b!4635517 m!5491251))

(assert (=> b!4635519 m!5491239))

(assert (=> b!4635519 m!5491239))

(assert (=> b!4635519 m!5491251))

(assert (=> b!4635304 d!1461491))

(declare-fun d!1461493 () Bool)

(declare-fun dynLambda!21534 (Int tuple2!52632) Bool)

(assert (=> d!1461493 (dynLambda!21534 lambda!194790 lt!1797523)))

(declare-fun lt!1797694 () Unit!114251)

(declare-fun choose!31665 (List!51775 Int tuple2!52632) Unit!114251)

(assert (=> d!1461493 (= lt!1797694 (choose!31665 lt!1797499 lambda!194790 lt!1797523))))

(declare-fun e!2891762 () Bool)

(assert (=> d!1461493 e!2891762))

(declare-fun res!1945736 () Bool)

(assert (=> d!1461493 (=> (not res!1945736) (not e!2891762))))

(assert (=> d!1461493 (= res!1945736 (forall!10894 lt!1797499 lambda!194790))))

(assert (=> d!1461493 (= (forallContained!3126 lt!1797499 lambda!194790 lt!1797523) lt!1797694)))

(declare-fun b!4635522 () Bool)

(assert (=> b!4635522 (= e!2891762 (contains!14769 lt!1797499 lt!1797523))))

(assert (= (and d!1461493 res!1945736) b!4635522))

(declare-fun b_lambda!170991 () Bool)

(assert (=> (not b_lambda!170991) (not d!1461493)))

(declare-fun m!5491253 () Bool)

(assert (=> d!1461493 m!5491253))

(declare-fun m!5491255 () Bool)

(assert (=> d!1461493 m!5491255))

(assert (=> d!1461493 m!5490927))

(assert (=> b!4635522 m!5490943))

(assert (=> b!4635304 d!1461493))

(declare-fun b!4635532 () Bool)

(declare-fun e!2891767 () List!51774)

(declare-fun e!2891768 () List!51774)

(assert (=> b!4635532 (= e!2891767 e!2891768)))

(declare-fun c!793402 () Bool)

(assert (=> b!4635532 (= c!793402 ((_ is Cons!51650) lt!1797508))))

(declare-fun b!4635533 () Bool)

(assert (=> b!4635533 (= e!2891768 (Cons!51650 (h!57736 lt!1797508) (removePairForKey!1169 (t!358842 lt!1797508) key!4968)))))

(declare-fun b!4635534 () Bool)

(assert (=> b!4635534 (= e!2891768 Nil!51650)))

(declare-fun b!4635531 () Bool)

(assert (=> b!4635531 (= e!2891767 (t!358842 lt!1797508))))

(declare-fun d!1461495 () Bool)

(declare-fun lt!1797697 () List!51774)

(assert (=> d!1461495 (not (containsKey!2558 lt!1797697 key!4968))))

(assert (=> d!1461495 (= lt!1797697 e!2891767)))

(declare-fun c!793401 () Bool)

(assert (=> d!1461495 (= c!793401 (and ((_ is Cons!51650) lt!1797508) (= (_1!29609 (h!57736 lt!1797508)) key!4968)))))

(assert (=> d!1461495 (noDuplicateKeys!1546 lt!1797508)))

(assert (=> d!1461495 (= (removePairForKey!1169 lt!1797508 key!4968) lt!1797697)))

(assert (= (and d!1461495 c!793401) b!4635531))

(assert (= (and d!1461495 (not c!793401)) b!4635532))

(assert (= (and b!4635532 c!793402) b!4635533))

(assert (= (and b!4635532 (not c!793402)) b!4635534))

(declare-fun m!5491257 () Bool)

(assert (=> b!4635533 m!5491257))

(declare-fun m!5491259 () Bool)

(assert (=> d!1461495 m!5491259))

(declare-fun m!5491261 () Bool)

(assert (=> d!1461495 m!5491261))

(assert (=> b!4635315 d!1461495))

(declare-fun d!1461497 () Bool)

(assert (=> d!1461497 (= (tail!8181 newBucket!224) (t!358842 newBucket!224))))

(assert (=> b!4635315 d!1461497))

(declare-fun d!1461499 () Bool)

(assert (=> d!1461499 (= (tail!8181 oldBucket!40) (t!358842 oldBucket!40))))

(assert (=> b!4635315 d!1461499))

(declare-fun d!1461501 () Bool)

(assert (=> d!1461501 true))

(assert (=> d!1461501 true))

(declare-fun lambda!194819 () Int)

(declare-fun forall!10896 (List!51774 Int) Bool)

(assert (=> d!1461501 (= (allKeysSameHash!1400 oldBucket!40 hash!414 hashF!1389) (forall!10896 oldBucket!40 lambda!194819))))

(declare-fun bs!1030538 () Bool)

(assert (= bs!1030538 d!1461501))

(declare-fun m!5491263 () Bool)

(assert (=> bs!1030538 m!5491263))

(assert (=> b!4635314 d!1461501))

(declare-fun d!1461503 () Bool)

(assert (=> d!1461503 (= (eq!861 lt!1797506 (+!1912 lt!1797500 lt!1797510)) (= (content!8904 (toList!5057 lt!1797506)) (content!8904 (toList!5057 (+!1912 lt!1797500 lt!1797510)))))))

(declare-fun bs!1030539 () Bool)

(assert (= bs!1030539 d!1461503))

(assert (=> bs!1030539 m!5491091))

(declare-fun m!5491265 () Bool)

(assert (=> bs!1030539 m!5491265))

(assert (=> b!4635316 d!1461503))

(declare-fun d!1461505 () Bool)

(declare-fun e!2891769 () Bool)

(assert (=> d!1461505 e!2891769))

(declare-fun res!1945737 () Bool)

(assert (=> d!1461505 (=> (not res!1945737) (not e!2891769))))

(declare-fun lt!1797698 () ListMap!4361)

(assert (=> d!1461505 (= res!1945737 (contains!14771 lt!1797698 (_1!29609 lt!1797510)))))

(declare-fun lt!1797700 () List!51774)

(assert (=> d!1461505 (= lt!1797698 (ListMap!4362 lt!1797700))))

(declare-fun lt!1797701 () Unit!114251)

(declare-fun lt!1797699 () Unit!114251)

(assert (=> d!1461505 (= lt!1797701 lt!1797699)))

(assert (=> d!1461505 (= (getValueByKey!1523 lt!1797700 (_1!29609 lt!1797510)) (Some!11702 (_2!29609 lt!1797510)))))

(assert (=> d!1461505 (= lt!1797699 (lemmaContainsTupThenGetReturnValue!884 lt!1797700 (_1!29609 lt!1797510) (_2!29609 lt!1797510)))))

(assert (=> d!1461505 (= lt!1797700 (insertNoDuplicatedKeys!392 (toList!5057 lt!1797500) (_1!29609 lt!1797510) (_2!29609 lt!1797510)))))

(assert (=> d!1461505 (= (+!1912 lt!1797500 lt!1797510) lt!1797698)))

(declare-fun b!4635539 () Bool)

(declare-fun res!1945738 () Bool)

(assert (=> b!4635539 (=> (not res!1945738) (not e!2891769))))

(assert (=> b!4635539 (= res!1945738 (= (getValueByKey!1523 (toList!5057 lt!1797698) (_1!29609 lt!1797510)) (Some!11702 (_2!29609 lt!1797510))))))

(declare-fun b!4635540 () Bool)

(assert (=> b!4635540 (= e!2891769 (contains!14774 (toList!5057 lt!1797698) lt!1797510))))

(assert (= (and d!1461505 res!1945737) b!4635539))

(assert (= (and b!4635539 res!1945738) b!4635540))

(declare-fun m!5491267 () Bool)

(assert (=> d!1461505 m!5491267))

(declare-fun m!5491269 () Bool)

(assert (=> d!1461505 m!5491269))

(declare-fun m!5491271 () Bool)

(assert (=> d!1461505 m!5491271))

(declare-fun m!5491273 () Bool)

(assert (=> d!1461505 m!5491273))

(declare-fun m!5491275 () Bool)

(assert (=> b!4635539 m!5491275))

(declare-fun m!5491277 () Bool)

(assert (=> b!4635540 m!5491277))

(assert (=> b!4635316 d!1461505))

(declare-fun bs!1030540 () Bool)

(declare-fun d!1461507 () Bool)

(assert (= bs!1030540 (and d!1461507 b!4635304)))

(declare-fun lambda!194844 () Int)

(assert (=> bs!1030540 (= lambda!194844 lambda!194790)))

(declare-fun bs!1030541 () Bool)

(assert (= bs!1030541 (and d!1461507 d!1461453)))

(assert (=> bs!1030541 (= lambda!194844 lambda!194803)))

(declare-fun bs!1030542 () Bool)

(assert (= bs!1030542 (and d!1461507 d!1461483)))

(assert (=> bs!1030542 (= lambda!194844 lambda!194816)))

(declare-fun lt!1797746 () ListMap!4361)

(declare-fun invariantList!1240 (List!51774) Bool)

(assert (=> d!1461507 (invariantList!1240 (toList!5057 lt!1797746))))

(declare-fun e!2891776 () ListMap!4361)

(assert (=> d!1461507 (= lt!1797746 e!2891776)))

(declare-fun c!793407 () Bool)

(assert (=> d!1461507 (= c!793407 ((_ is Cons!51651) (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651)))))

(assert (=> d!1461507 (forall!10894 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651) lambda!194844)))

(assert (=> d!1461507 (= (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651)) lt!1797746)))

(declare-fun b!4635549 () Bool)

(assert (=> b!4635549 (= e!2891776 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651))) (extractMap!1602 (t!358843 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651)))))))

(declare-fun b!4635550 () Bool)

(assert (=> b!4635550 (= e!2891776 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461507 c!793407) b!4635549))

(assert (= (and d!1461507 (not c!793407)) b!4635550))

(declare-fun m!5491279 () Bool)

(assert (=> d!1461507 m!5491279))

(declare-fun m!5491281 () Bool)

(assert (=> d!1461507 m!5491281))

(declare-fun m!5491283 () Bool)

(assert (=> b!4635549 m!5491283))

(assert (=> b!4635549 m!5491283))

(declare-fun m!5491285 () Bool)

(assert (=> b!4635549 m!5491285))

(assert (=> b!4635316 d!1461507))

(declare-fun bs!1030543 () Bool)

(declare-fun d!1461509 () Bool)

(assert (= bs!1030543 (and d!1461509 b!4635304)))

(declare-fun lambda!194847 () Int)

(assert (=> bs!1030543 (= lambda!194847 lambda!194790)))

(declare-fun bs!1030544 () Bool)

(assert (= bs!1030544 (and d!1461509 d!1461453)))

(assert (=> bs!1030544 (= lambda!194847 lambda!194803)))

(declare-fun bs!1030545 () Bool)

(assert (= bs!1030545 (and d!1461509 d!1461483)))

(assert (=> bs!1030545 (= lambda!194847 lambda!194816)))

(declare-fun bs!1030546 () Bool)

(assert (= bs!1030546 (and d!1461509 d!1461507)))

(assert (=> bs!1030546 (= lambda!194847 lambda!194844)))

(declare-fun lt!1797747 () ListMap!4361)

(assert (=> d!1461509 (invariantList!1240 (toList!5057 lt!1797747))))

(declare-fun e!2891777 () ListMap!4361)

(assert (=> d!1461509 (= lt!1797747 e!2891777)))

(declare-fun c!793408 () Bool)

(assert (=> d!1461509 (= c!793408 ((_ is Cons!51651) (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651)))))

(assert (=> d!1461509 (forall!10894 (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651) lambda!194847)))

(assert (=> d!1461509 (= (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651)) lt!1797747)))

(declare-fun b!4635553 () Bool)

(assert (=> b!4635553 (= e!2891777 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651))) (extractMap!1602 (t!358843 (Cons!51651 (tuple2!52633 hash!414 newBucket!224) Nil!51651)))))))

(declare-fun b!4635554 () Bool)

(assert (=> b!4635554 (= e!2891777 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461509 c!793408) b!4635553))

(assert (= (and d!1461509 (not c!793408)) b!4635554))

(declare-fun m!5491287 () Bool)

(assert (=> d!1461509 m!5491287))

(declare-fun m!5491289 () Bool)

(assert (=> d!1461509 m!5491289))

(declare-fun m!5491291 () Bool)

(assert (=> b!4635553 m!5491291))

(assert (=> b!4635553 m!5491291))

(declare-fun m!5491293 () Bool)

(assert (=> b!4635553 m!5491293))

(assert (=> b!4635316 d!1461509))

(declare-fun d!1461511 () Bool)

(declare-fun res!1945749 () Bool)

(declare-fun e!2891784 () Bool)

(assert (=> d!1461511 (=> res!1945749 e!2891784)))

(assert (=> d!1461511 (= res!1945749 (not ((_ is Cons!51650) newBucket!224)))))

(assert (=> d!1461511 (= (noDuplicateKeys!1546 newBucket!224) e!2891784)))

(declare-fun b!4635561 () Bool)

(declare-fun e!2891785 () Bool)

(assert (=> b!4635561 (= e!2891784 e!2891785)))

(declare-fun res!1945750 () Bool)

(assert (=> b!4635561 (=> (not res!1945750) (not e!2891785))))

(assert (=> b!4635561 (= res!1945750 (not (containsKey!2558 (t!358842 newBucket!224) (_1!29609 (h!57736 newBucket!224)))))))

(declare-fun b!4635562 () Bool)

(assert (=> b!4635562 (= e!2891785 (noDuplicateKeys!1546 (t!358842 newBucket!224)))))

(assert (= (and d!1461511 (not res!1945749)) b!4635561))

(assert (= (and b!4635561 res!1945750) b!4635562))

(declare-fun m!5491295 () Bool)

(assert (=> b!4635561 m!5491295))

(declare-fun m!5491297 () Bool)

(assert (=> b!4635562 m!5491297))

(assert (=> b!4635306 d!1461511))

(declare-fun b!4635605 () Bool)

(declare-fun e!2891816 () Bool)

(declare-fun e!2891813 () Bool)

(assert (=> b!4635605 (= e!2891816 e!2891813)))

(declare-fun res!1945769 () Bool)

(assert (=> b!4635605 (=> (not res!1945769) (not e!2891813))))

(declare-fun isDefined!8969 (Option!11703) Bool)

(assert (=> b!4635605 (= res!1945769 (isDefined!8969 (getValueByKey!1523 (toList!5057 lt!1797516) key!4968)))))

(declare-fun bm!323514 () Bool)

(declare-fun call!323519 () Bool)

(declare-fun e!2891814 () List!51777)

(declare-fun contains!14775 (List!51777 K!13015) Bool)

(assert (=> bm!323514 (= call!323519 (contains!14775 e!2891814 key!4968))))

(declare-fun c!793420 () Bool)

(declare-fun c!793421 () Bool)

(assert (=> bm!323514 (= c!793420 c!793421)))

(declare-fun d!1461513 () Bool)

(assert (=> d!1461513 e!2891816))

(declare-fun res!1945770 () Bool)

(assert (=> d!1461513 (=> res!1945770 e!2891816)))

(declare-fun e!2891812 () Bool)

(assert (=> d!1461513 (= res!1945770 e!2891812)))

(declare-fun res!1945771 () Bool)

(assert (=> d!1461513 (=> (not res!1945771) (not e!2891812))))

(declare-fun lt!1797811 () Bool)

(assert (=> d!1461513 (= res!1945771 (not lt!1797811))))

(declare-fun lt!1797812 () Bool)

(assert (=> d!1461513 (= lt!1797811 lt!1797812)))

(declare-fun lt!1797813 () Unit!114251)

(declare-fun e!2891817 () Unit!114251)

(assert (=> d!1461513 (= lt!1797813 e!2891817)))

(assert (=> d!1461513 (= c!793421 lt!1797812)))

(declare-fun containsKey!2562 (List!51774 K!13015) Bool)

(assert (=> d!1461513 (= lt!1797812 (containsKey!2562 (toList!5057 lt!1797516) key!4968))))

(assert (=> d!1461513 (= (contains!14771 lt!1797516 key!4968) lt!1797811)))

(declare-fun b!4635606 () Bool)

(declare-fun e!2891815 () Unit!114251)

(assert (=> b!4635606 (= e!2891817 e!2891815)))

(declare-fun c!793419 () Bool)

(assert (=> b!4635606 (= c!793419 call!323519)))

(declare-fun b!4635607 () Bool)

(assert (=> b!4635607 (= e!2891812 (not (contains!14775 (keys!18230 lt!1797516) key!4968)))))

(declare-fun b!4635608 () Bool)

(assert (=> b!4635608 (= e!2891813 (contains!14775 (keys!18230 lt!1797516) key!4968))))

(declare-fun b!4635609 () Bool)

(declare-fun lt!1797815 () Unit!114251)

(assert (=> b!4635609 (= e!2891817 lt!1797815)))

(declare-fun lt!1797814 () Unit!114251)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1426 (List!51774 K!13015) Unit!114251)

(assert (=> b!4635609 (= lt!1797814 (lemmaContainsKeyImpliesGetValueByKeyDefined!1426 (toList!5057 lt!1797516) key!4968))))

(assert (=> b!4635609 (isDefined!8969 (getValueByKey!1523 (toList!5057 lt!1797516) key!4968))))

(declare-fun lt!1797810 () Unit!114251)

(assert (=> b!4635609 (= lt!1797810 lt!1797814)))

(declare-fun lemmaInListThenGetKeysListContains!686 (List!51774 K!13015) Unit!114251)

(assert (=> b!4635609 (= lt!1797815 (lemmaInListThenGetKeysListContains!686 (toList!5057 lt!1797516) key!4968))))

(assert (=> b!4635609 call!323519))

(declare-fun b!4635610 () Bool)

(assert (=> b!4635610 (= e!2891814 (keys!18230 lt!1797516))))

(declare-fun b!4635611 () Bool)

(declare-fun Unit!114279 () Unit!114251)

(assert (=> b!4635611 (= e!2891815 Unit!114279)))

(declare-fun b!4635612 () Bool)

(assert (=> b!4635612 false))

(declare-fun lt!1797808 () Unit!114251)

(declare-fun lt!1797809 () Unit!114251)

(assert (=> b!4635612 (= lt!1797808 lt!1797809)))

(assert (=> b!4635612 (containsKey!2562 (toList!5057 lt!1797516) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!690 (List!51774 K!13015) Unit!114251)

(assert (=> b!4635612 (= lt!1797809 (lemmaInGetKeysListThenContainsKey!690 (toList!5057 lt!1797516) key!4968))))

(declare-fun Unit!114280 () Unit!114251)

(assert (=> b!4635612 (= e!2891815 Unit!114280)))

(declare-fun b!4635613 () Bool)

(declare-fun getKeysList!691 (List!51774) List!51777)

(assert (=> b!4635613 (= e!2891814 (getKeysList!691 (toList!5057 lt!1797516)))))

(assert (= (and d!1461513 c!793421) b!4635609))

(assert (= (and d!1461513 (not c!793421)) b!4635606))

(assert (= (and b!4635606 c!793419) b!4635612))

(assert (= (and b!4635606 (not c!793419)) b!4635611))

(assert (= (or b!4635609 b!4635606) bm!323514))

(assert (= (and bm!323514 c!793420) b!4635613))

(assert (= (and bm!323514 (not c!793420)) b!4635610))

(assert (= (and d!1461513 res!1945771) b!4635607))

(assert (= (and d!1461513 (not res!1945770)) b!4635605))

(assert (= (and b!4635605 res!1945769) b!4635608))

(declare-fun m!5491351 () Bool)

(assert (=> bm!323514 m!5491351))

(assert (=> b!4635607 m!5491055))

(assert (=> b!4635607 m!5491055))

(declare-fun m!5491353 () Bool)

(assert (=> b!4635607 m!5491353))

(declare-fun m!5491355 () Bool)

(assert (=> b!4635605 m!5491355))

(assert (=> b!4635605 m!5491355))

(declare-fun m!5491357 () Bool)

(assert (=> b!4635605 m!5491357))

(declare-fun m!5491359 () Bool)

(assert (=> d!1461513 m!5491359))

(assert (=> b!4635612 m!5491359))

(declare-fun m!5491361 () Bool)

(assert (=> b!4635612 m!5491361))

(assert (=> b!4635610 m!5491055))

(declare-fun m!5491363 () Bool)

(assert (=> b!4635613 m!5491363))

(declare-fun m!5491365 () Bool)

(assert (=> b!4635609 m!5491365))

(assert (=> b!4635609 m!5491355))

(assert (=> b!4635609 m!5491355))

(assert (=> b!4635609 m!5491357))

(declare-fun m!5491367 () Bool)

(assert (=> b!4635609 m!5491367))

(assert (=> b!4635608 m!5491055))

(assert (=> b!4635608 m!5491055))

(assert (=> b!4635608 m!5491353))

(assert (=> b!4635317 d!1461513))

(declare-fun bs!1030571 () Bool)

(declare-fun d!1461523 () Bool)

(assert (= bs!1030571 (and d!1461523 d!1461483)))

(declare-fun lambda!194861 () Int)

(assert (=> bs!1030571 (= lambda!194861 lambda!194816)))

(declare-fun bs!1030572 () Bool)

(assert (= bs!1030572 (and d!1461523 b!4635304)))

(assert (=> bs!1030572 (= lambda!194861 lambda!194790)))

(declare-fun bs!1030573 () Bool)

(assert (= bs!1030573 (and d!1461523 d!1461453)))

(assert (=> bs!1030573 (= lambda!194861 lambda!194803)))

(declare-fun bs!1030575 () Bool)

(assert (= bs!1030575 (and d!1461523 d!1461507)))

(assert (=> bs!1030575 (= lambda!194861 lambda!194844)))

(declare-fun bs!1030576 () Bool)

(assert (= bs!1030576 (and d!1461523 d!1461509)))

(assert (=> bs!1030576 (= lambda!194861 lambda!194847)))

(declare-fun lt!1797816 () ListMap!4361)

(assert (=> d!1461523 (invariantList!1240 (toList!5057 lt!1797816))))

(declare-fun e!2891818 () ListMap!4361)

(assert (=> d!1461523 (= lt!1797816 e!2891818)))

(declare-fun c!793422 () Bool)

(assert (=> d!1461523 (= c!793422 ((_ is Cons!51651) lt!1797499))))

(assert (=> d!1461523 (forall!10894 lt!1797499 lambda!194861)))

(assert (=> d!1461523 (= (extractMap!1602 lt!1797499) lt!1797816)))

(declare-fun b!4635614 () Bool)

(assert (=> b!4635614 (= e!2891818 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 lt!1797499)) (extractMap!1602 (t!358843 lt!1797499))))))

(declare-fun b!4635615 () Bool)

(assert (=> b!4635615 (= e!2891818 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461523 c!793422) b!4635614))

(assert (= (and d!1461523 (not c!793422)) b!4635615))

(declare-fun m!5491369 () Bool)

(assert (=> d!1461523 m!5491369))

(declare-fun m!5491371 () Bool)

(assert (=> d!1461523 m!5491371))

(declare-fun m!5491373 () Bool)

(assert (=> b!4635614 m!5491373))

(assert (=> b!4635614 m!5491373))

(declare-fun m!5491375 () Bool)

(assert (=> b!4635614 m!5491375))

(assert (=> b!4635317 d!1461523))

(declare-fun bs!1030725 () Bool)

(declare-fun b!4635680 () Bool)

(assert (= bs!1030725 (and b!4635680 d!1461501)))

(declare-fun lambda!194909 () Int)

(assert (=> bs!1030725 (not (= lambda!194909 lambda!194819))))

(assert (=> b!4635680 true))

(declare-fun bs!1030727 () Bool)

(declare-fun b!4635678 () Bool)

(assert (= bs!1030727 (and b!4635678 d!1461501)))

(declare-fun lambda!194911 () Int)

(assert (=> bs!1030727 (not (= lambda!194911 lambda!194819))))

(declare-fun bs!1030729 () Bool)

(assert (= bs!1030729 (and b!4635678 b!4635680)))

(assert (=> bs!1030729 (= lambda!194911 lambda!194909)))

(assert (=> b!4635678 true))

(declare-fun lambda!194912 () Int)

(assert (=> bs!1030727 (not (= lambda!194912 lambda!194819))))

(declare-fun lt!1797985 () ListMap!4361)

(assert (=> bs!1030729 (= (= lt!1797985 lt!1797511) (= lambda!194912 lambda!194909))))

(assert (=> b!4635678 (= (= lt!1797985 lt!1797511) (= lambda!194912 lambda!194911))))

(assert (=> b!4635678 true))

(declare-fun bs!1030745 () Bool)

(declare-fun d!1461525 () Bool)

(assert (= bs!1030745 (and d!1461525 d!1461501)))

(declare-fun lambda!194913 () Int)

(assert (=> bs!1030745 (not (= lambda!194913 lambda!194819))))

(declare-fun bs!1030747 () Bool)

(assert (= bs!1030747 (and d!1461525 b!4635680)))

(declare-fun lt!1797984 () ListMap!4361)

(assert (=> bs!1030747 (= (= lt!1797984 lt!1797511) (= lambda!194913 lambda!194909))))

(declare-fun bs!1030748 () Bool)

(assert (= bs!1030748 (and d!1461525 b!4635678)))

(assert (=> bs!1030748 (= (= lt!1797984 lt!1797511) (= lambda!194913 lambda!194911))))

(assert (=> bs!1030748 (= (= lt!1797984 lt!1797985) (= lambda!194913 lambda!194912))))

(assert (=> d!1461525 true))

(declare-fun b!4635676 () Bool)

(declare-fun res!1945812 () Bool)

(declare-fun e!2891859 () Bool)

(assert (=> b!4635676 (=> (not res!1945812) (not e!2891859))))

(assert (=> b!4635676 (= res!1945812 (forall!10896 (toList!5057 lt!1797511) lambda!194913))))

(declare-fun bm!323531 () Bool)

(declare-fun call!323537 () Unit!114251)

(declare-fun lemmaContainsAllItsOwnKeys!542 (ListMap!4361) Unit!114251)

(assert (=> bm!323531 (= call!323537 (lemmaContainsAllItsOwnKeys!542 lt!1797511))))

(declare-fun b!4635677 () Bool)

(assert (=> b!4635677 (= e!2891859 (invariantList!1240 (toList!5057 lt!1797984)))))

(declare-fun b!4635679 () Bool)

(declare-fun e!2891857 () Bool)

(declare-fun call!323538 () Bool)

(assert (=> b!4635679 (= e!2891857 call!323538)))

(declare-fun bm!323532 () Bool)

(declare-fun c!793434 () Bool)

(assert (=> bm!323532 (= call!323538 (forall!10896 (toList!5057 lt!1797511) (ite c!793434 lambda!194909 lambda!194912)))))

(declare-fun bm!323533 () Bool)

(declare-fun call!323536 () Bool)

(assert (=> bm!323533 (= call!323536 (forall!10896 (ite c!793434 (toList!5057 lt!1797511) oldBucket!40) (ite c!793434 lambda!194909 lambda!194912)))))

(declare-fun e!2891858 () ListMap!4361)

(assert (=> b!4635680 (= e!2891858 lt!1797511)))

(declare-fun lt!1797998 () Unit!114251)

(assert (=> b!4635680 (= lt!1797998 call!323537)))

(assert (=> b!4635680 call!323538))

(declare-fun lt!1797981 () Unit!114251)

(assert (=> b!4635680 (= lt!1797981 lt!1797998)))

(assert (=> b!4635680 call!323536))

(declare-fun lt!1797993 () Unit!114251)

(declare-fun Unit!114287 () Unit!114251)

(assert (=> b!4635680 (= lt!1797993 Unit!114287)))

(assert (=> b!4635678 (= e!2891858 lt!1797985)))

(declare-fun lt!1797987 () ListMap!4361)

(assert (=> b!4635678 (= lt!1797987 (+!1912 lt!1797511 (h!57736 oldBucket!40)))))

(assert (=> b!4635678 (= lt!1797985 (addToMapMapFromBucket!1007 (t!358842 oldBucket!40) (+!1912 lt!1797511 (h!57736 oldBucket!40))))))

(declare-fun lt!1797983 () Unit!114251)

(assert (=> b!4635678 (= lt!1797983 call!323537)))

(assert (=> b!4635678 (forall!10896 (toList!5057 lt!1797511) lambda!194911)))

(declare-fun lt!1797980 () Unit!114251)

(assert (=> b!4635678 (= lt!1797980 lt!1797983)))

(assert (=> b!4635678 (forall!10896 (toList!5057 lt!1797987) lambda!194912)))

(declare-fun lt!1797989 () Unit!114251)

(declare-fun Unit!114290 () Unit!114251)

(assert (=> b!4635678 (= lt!1797989 Unit!114290)))

(assert (=> b!4635678 (forall!10896 (t!358842 oldBucket!40) lambda!194912)))

(declare-fun lt!1797990 () Unit!114251)

(declare-fun Unit!114292 () Unit!114251)

(assert (=> b!4635678 (= lt!1797990 Unit!114292)))

(declare-fun lt!1797982 () Unit!114251)

(declare-fun Unit!114293 () Unit!114251)

(assert (=> b!4635678 (= lt!1797982 Unit!114293)))

(declare-fun lt!1797999 () Unit!114251)

(declare-fun forallContained!3128 (List!51774 Int tuple2!52630) Unit!114251)

(assert (=> b!4635678 (= lt!1797999 (forallContained!3128 (toList!5057 lt!1797987) lambda!194912 (h!57736 oldBucket!40)))))

(assert (=> b!4635678 (contains!14771 lt!1797987 (_1!29609 (h!57736 oldBucket!40)))))

(declare-fun lt!1797988 () Unit!114251)

(declare-fun Unit!114295 () Unit!114251)

(assert (=> b!4635678 (= lt!1797988 Unit!114295)))

(assert (=> b!4635678 (contains!14771 lt!1797985 (_1!29609 (h!57736 oldBucket!40)))))

(declare-fun lt!1797996 () Unit!114251)

(declare-fun Unit!114296 () Unit!114251)

(assert (=> b!4635678 (= lt!1797996 Unit!114296)))

(assert (=> b!4635678 (forall!10896 oldBucket!40 lambda!194912)))

(declare-fun lt!1797991 () Unit!114251)

(declare-fun Unit!114298 () Unit!114251)

(assert (=> b!4635678 (= lt!1797991 Unit!114298)))

(assert (=> b!4635678 (forall!10896 (toList!5057 lt!1797987) lambda!194912)))

(declare-fun lt!1797992 () Unit!114251)

(declare-fun Unit!114299 () Unit!114251)

(assert (=> b!4635678 (= lt!1797992 Unit!114299)))

(declare-fun lt!1797979 () Unit!114251)

(declare-fun Unit!114300 () Unit!114251)

(assert (=> b!4635678 (= lt!1797979 Unit!114300)))

(declare-fun lt!1797986 () Unit!114251)

(declare-fun addForallContainsKeyThenBeforeAdding!541 (ListMap!4361 ListMap!4361 K!13015 V!13261) Unit!114251)

(assert (=> b!4635678 (= lt!1797986 (addForallContainsKeyThenBeforeAdding!541 lt!1797511 lt!1797985 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> b!4635678 (forall!10896 (toList!5057 lt!1797511) lambda!194912)))

(declare-fun lt!1797995 () Unit!114251)

(assert (=> b!4635678 (= lt!1797995 lt!1797986)))

(assert (=> b!4635678 (forall!10896 (toList!5057 lt!1797511) lambda!194912)))

(declare-fun lt!1797994 () Unit!114251)

(declare-fun Unit!114301 () Unit!114251)

(assert (=> b!4635678 (= lt!1797994 Unit!114301)))

(declare-fun res!1945811 () Bool)

(assert (=> b!4635678 (= res!1945811 call!323536)))

(assert (=> b!4635678 (=> (not res!1945811) (not e!2891857))))

(assert (=> b!4635678 e!2891857))

(declare-fun lt!1797997 () Unit!114251)

(declare-fun Unit!114302 () Unit!114251)

(assert (=> b!4635678 (= lt!1797997 Unit!114302)))

(assert (=> d!1461525 e!2891859))

(declare-fun res!1945810 () Bool)

(assert (=> d!1461525 (=> (not res!1945810) (not e!2891859))))

(assert (=> d!1461525 (= res!1945810 (forall!10896 oldBucket!40 lambda!194913))))

(assert (=> d!1461525 (= lt!1797984 e!2891858)))

(assert (=> d!1461525 (= c!793434 ((_ is Nil!51650) oldBucket!40))))

(assert (=> d!1461525 (noDuplicateKeys!1546 oldBucket!40)))

(assert (=> d!1461525 (= (addToMapMapFromBucket!1007 oldBucket!40 lt!1797511) lt!1797984)))

(assert (= (and d!1461525 c!793434) b!4635680))

(assert (= (and d!1461525 (not c!793434)) b!4635678))

(assert (= (and b!4635678 res!1945811) b!4635679))

(assert (= (or b!4635680 b!4635678) bm!323531))

(assert (= (or b!4635680 b!4635678) bm!323533))

(assert (= (or b!4635680 b!4635679) bm!323532))

(assert (= (and d!1461525 res!1945810) b!4635676))

(assert (= (and b!4635676 res!1945812) b!4635677))

(declare-fun m!5491735 () Bool)

(assert (=> d!1461525 m!5491735))

(assert (=> d!1461525 m!5490869))

(declare-fun m!5491737 () Bool)

(assert (=> b!4635677 m!5491737))

(declare-fun m!5491739 () Bool)

(assert (=> bm!323532 m!5491739))

(declare-fun m!5491741 () Bool)

(assert (=> b!4635676 m!5491741))

(declare-fun m!5491743 () Bool)

(assert (=> bm!323533 m!5491743))

(declare-fun m!5491745 () Bool)

(assert (=> b!4635678 m!5491745))

(declare-fun m!5491747 () Bool)

(assert (=> b!4635678 m!5491747))

(declare-fun m!5491749 () Bool)

(assert (=> b!4635678 m!5491749))

(declare-fun m!5491751 () Bool)

(assert (=> b!4635678 m!5491751))

(assert (=> b!4635678 m!5491751))

(declare-fun m!5491753 () Bool)

(assert (=> b!4635678 m!5491753))

(declare-fun m!5491755 () Bool)

(assert (=> b!4635678 m!5491755))

(declare-fun m!5491757 () Bool)

(assert (=> b!4635678 m!5491757))

(declare-fun m!5491759 () Bool)

(assert (=> b!4635678 m!5491759))

(assert (=> b!4635678 m!5491745))

(declare-fun m!5491761 () Bool)

(assert (=> b!4635678 m!5491761))

(declare-fun m!5491763 () Bool)

(assert (=> b!4635678 m!5491763))

(declare-fun m!5491765 () Bool)

(assert (=> b!4635678 m!5491765))

(assert (=> b!4635678 m!5491757))

(declare-fun m!5491767 () Bool)

(assert (=> bm!323531 m!5491767))

(assert (=> b!4635308 d!1461525))

(declare-fun bs!1030750 () Bool)

(declare-fun d!1461603 () Bool)

(assert (= bs!1030750 (and d!1461603 d!1461483)))

(declare-fun lambda!194914 () Int)

(assert (=> bs!1030750 (= lambda!194914 lambda!194816)))

(declare-fun bs!1030751 () Bool)

(assert (= bs!1030751 (and d!1461603 d!1461523)))

(assert (=> bs!1030751 (= lambda!194914 lambda!194861)))

(declare-fun bs!1030752 () Bool)

(assert (= bs!1030752 (and d!1461603 b!4635304)))

(assert (=> bs!1030752 (= lambda!194914 lambda!194790)))

(declare-fun bs!1030753 () Bool)

(assert (= bs!1030753 (and d!1461603 d!1461453)))

(assert (=> bs!1030753 (= lambda!194914 lambda!194803)))

(declare-fun bs!1030754 () Bool)

(assert (= bs!1030754 (and d!1461603 d!1461507)))

(assert (=> bs!1030754 (= lambda!194914 lambda!194844)))

(declare-fun bs!1030755 () Bool)

(assert (= bs!1030755 (and d!1461603 d!1461509)))

(assert (=> bs!1030755 (= lambda!194914 lambda!194847)))

(declare-fun lt!1798000 () ListMap!4361)

(assert (=> d!1461603 (invariantList!1240 (toList!5057 lt!1798000))))

(declare-fun e!2891860 () ListMap!4361)

(assert (=> d!1461603 (= lt!1798000 e!2891860)))

(declare-fun c!793435 () Bool)

(assert (=> d!1461603 (= c!793435 ((_ is Cons!51651) Nil!51651))))

(assert (=> d!1461603 (forall!10894 Nil!51651 lambda!194914)))

(assert (=> d!1461603 (= (extractMap!1602 Nil!51651) lt!1798000)))

(declare-fun b!4635683 () Bool)

(assert (=> b!4635683 (= e!2891860 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 Nil!51651)) (extractMap!1602 (t!358843 Nil!51651))))))

(declare-fun b!4635684 () Bool)

(assert (=> b!4635684 (= e!2891860 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461603 c!793435) b!4635683))

(assert (= (and d!1461603 (not c!793435)) b!4635684))

(declare-fun m!5491769 () Bool)

(assert (=> d!1461603 m!5491769))

(declare-fun m!5491771 () Bool)

(assert (=> d!1461603 m!5491771))

(declare-fun m!5491773 () Bool)

(assert (=> b!4635683 m!5491773))

(assert (=> b!4635683 m!5491773))

(declare-fun m!5491775 () Bool)

(assert (=> b!4635683 m!5491775))

(assert (=> b!4635308 d!1461603))

(declare-fun d!1461605 () Bool)

(declare-fun hash!3613 (Hashable!5943 K!13015) (_ BitVec 64))

(assert (=> d!1461605 (= (hash!3610 hashF!1389 key!4968) (hash!3613 hashF!1389 key!4968))))

(declare-fun bs!1030756 () Bool)

(assert (= bs!1030756 d!1461605))

(declare-fun m!5491777 () Bool)

(assert (=> bs!1030756 m!5491777))

(assert (=> b!4635318 d!1461605))

(declare-fun b!4635686 () Bool)

(declare-fun e!2891861 () List!51774)

(declare-fun e!2891862 () List!51774)

(assert (=> b!4635686 (= e!2891861 e!2891862)))

(declare-fun c!793437 () Bool)

(assert (=> b!4635686 (= c!793437 ((_ is Cons!51650) (t!358842 oldBucket!40)))))

(declare-fun b!4635687 () Bool)

(assert (=> b!4635687 (= e!2891862 (Cons!51650 (h!57736 (t!358842 oldBucket!40)) (removePairForKey!1169 (t!358842 (t!358842 oldBucket!40)) key!4968)))))

(declare-fun b!4635688 () Bool)

(assert (=> b!4635688 (= e!2891862 Nil!51650)))

(declare-fun b!4635685 () Bool)

(assert (=> b!4635685 (= e!2891861 (t!358842 (t!358842 oldBucket!40)))))

(declare-fun d!1461607 () Bool)

(declare-fun lt!1798001 () List!51774)

(assert (=> d!1461607 (not (containsKey!2558 lt!1798001 key!4968))))

(assert (=> d!1461607 (= lt!1798001 e!2891861)))

(declare-fun c!793436 () Bool)

(assert (=> d!1461607 (= c!793436 (and ((_ is Cons!51650) (t!358842 oldBucket!40)) (= (_1!29609 (h!57736 (t!358842 oldBucket!40))) key!4968)))))

(assert (=> d!1461607 (noDuplicateKeys!1546 (t!358842 oldBucket!40))))

(assert (=> d!1461607 (= (removePairForKey!1169 (t!358842 oldBucket!40) key!4968) lt!1798001)))

(assert (= (and d!1461607 c!793436) b!4635685))

(assert (= (and d!1461607 (not c!793436)) b!4635686))

(assert (= (and b!4635686 c!793437) b!4635687))

(assert (= (and b!4635686 (not c!793437)) b!4635688))

(declare-fun m!5491779 () Bool)

(assert (=> b!4635687 m!5491779))

(declare-fun m!5491781 () Bool)

(assert (=> d!1461607 m!5491781))

(declare-fun m!5491783 () Bool)

(assert (=> d!1461607 m!5491783))

(assert (=> b!4635320 d!1461607))

(declare-fun bs!1030757 () Bool)

(declare-fun b!4635693 () Bool)

(assert (= bs!1030757 (and b!4635693 b!4635680)))

(declare-fun lambda!194915 () Int)

(assert (=> bs!1030757 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194915 lambda!194909))))

(declare-fun bs!1030758 () Bool)

(assert (= bs!1030758 (and b!4635693 b!4635678)))

(assert (=> bs!1030758 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194915 lambda!194912))))

(declare-fun bs!1030759 () Bool)

(assert (= bs!1030759 (and b!4635693 d!1461501)))

(assert (=> bs!1030759 (not (= lambda!194915 lambda!194819))))

(declare-fun bs!1030760 () Bool)

(assert (= bs!1030760 (and b!4635693 d!1461525)))

(assert (=> bs!1030760 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194915 lambda!194913))))

(assert (=> bs!1030758 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194915 lambda!194911))))

(assert (=> b!4635693 true))

(declare-fun bs!1030761 () Bool)

(declare-fun b!4635691 () Bool)

(assert (= bs!1030761 (and b!4635691 b!4635680)))

(declare-fun lambda!194916 () Int)

(assert (=> bs!1030761 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194916 lambda!194909))))

(declare-fun bs!1030762 () Bool)

(assert (= bs!1030762 (and b!4635691 b!4635678)))

(assert (=> bs!1030762 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194916 lambda!194912))))

(declare-fun bs!1030763 () Bool)

(assert (= bs!1030763 (and b!4635691 d!1461501)))

(assert (=> bs!1030763 (not (= lambda!194916 lambda!194819))))

(declare-fun bs!1030764 () Bool)

(assert (= bs!1030764 (and b!4635691 b!4635693)))

(assert (=> bs!1030764 (= lambda!194916 lambda!194915)))

(declare-fun bs!1030765 () Bool)

(assert (= bs!1030765 (and b!4635691 d!1461525)))

(assert (=> bs!1030765 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194916 lambda!194913))))

(assert (=> bs!1030762 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194916 lambda!194911))))

(assert (=> b!4635691 true))

(declare-fun lambda!194917 () Int)

(declare-fun lt!1798008 () ListMap!4361)

(assert (=> bs!1030761 (= (= lt!1798008 lt!1797511) (= lambda!194917 lambda!194909))))

(assert (=> bs!1030762 (= (= lt!1798008 lt!1797985) (= lambda!194917 lambda!194912))))

(assert (=> bs!1030764 (= (= lt!1798008 (ListMap!4362 Nil!51650)) (= lambda!194917 lambda!194915))))

(assert (=> bs!1030765 (= (= lt!1798008 lt!1797984) (= lambda!194917 lambda!194913))))

(assert (=> bs!1030762 (= (= lt!1798008 lt!1797511) (= lambda!194917 lambda!194911))))

(assert (=> b!4635691 (= (= lt!1798008 (ListMap!4362 Nil!51650)) (= lambda!194917 lambda!194916))))

(assert (=> bs!1030763 (not (= lambda!194917 lambda!194819))))

(assert (=> b!4635691 true))

(declare-fun bs!1030767 () Bool)

(declare-fun d!1461609 () Bool)

(assert (= bs!1030767 (and d!1461609 b!4635680)))

(declare-fun lambda!194918 () Int)

(declare-fun lt!1798007 () ListMap!4361)

(assert (=> bs!1030767 (= (= lt!1798007 lt!1797511) (= lambda!194918 lambda!194909))))

(declare-fun bs!1030768 () Bool)

(assert (= bs!1030768 (and d!1461609 b!4635691)))

(assert (=> bs!1030768 (= (= lt!1798007 lt!1798008) (= lambda!194918 lambda!194917))))

(declare-fun bs!1030769 () Bool)

(assert (= bs!1030769 (and d!1461609 b!4635678)))

(assert (=> bs!1030769 (= (= lt!1798007 lt!1797985) (= lambda!194918 lambda!194912))))

(declare-fun bs!1030770 () Bool)

(assert (= bs!1030770 (and d!1461609 b!4635693)))

(assert (=> bs!1030770 (= (= lt!1798007 (ListMap!4362 Nil!51650)) (= lambda!194918 lambda!194915))))

(declare-fun bs!1030771 () Bool)

(assert (= bs!1030771 (and d!1461609 d!1461525)))

(assert (=> bs!1030771 (= (= lt!1798007 lt!1797984) (= lambda!194918 lambda!194913))))

(assert (=> bs!1030769 (= (= lt!1798007 lt!1797511) (= lambda!194918 lambda!194911))))

(assert (=> bs!1030768 (= (= lt!1798007 (ListMap!4362 Nil!51650)) (= lambda!194918 lambda!194916))))

(declare-fun bs!1030773 () Bool)

(assert (= bs!1030773 (and d!1461609 d!1461501)))

(assert (=> bs!1030773 (not (= lambda!194918 lambda!194819))))

(assert (=> d!1461609 true))

(declare-fun b!4635689 () Bool)

(declare-fun res!1945815 () Bool)

(declare-fun e!2891865 () Bool)

(assert (=> b!4635689 (=> (not res!1945815) (not e!2891865))))

(assert (=> b!4635689 (= res!1945815 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194918))))

(declare-fun bm!323534 () Bool)

(declare-fun call!323540 () Unit!114251)

(assert (=> bm!323534 (= call!323540 (lemmaContainsAllItsOwnKeys!542 (ListMap!4362 Nil!51650)))))

(declare-fun b!4635690 () Bool)

(assert (=> b!4635690 (= e!2891865 (invariantList!1240 (toList!5057 lt!1798007)))))

(declare-fun b!4635692 () Bool)

(declare-fun e!2891863 () Bool)

(declare-fun call!323541 () Bool)

(assert (=> b!4635692 (= e!2891863 call!323541)))

(declare-fun c!793438 () Bool)

(declare-fun bm!323535 () Bool)

(assert (=> bm!323535 (= call!323541 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) (ite c!793438 lambda!194915 lambda!194917)))))

(declare-fun bm!323536 () Bool)

(declare-fun call!323539 () Bool)

(assert (=> bm!323536 (= call!323539 (forall!10896 (ite c!793438 (toList!5057 (ListMap!4362 Nil!51650)) lt!1797508) (ite c!793438 lambda!194915 lambda!194917)))))

(declare-fun e!2891864 () ListMap!4361)

(assert (=> b!4635693 (= e!2891864 (ListMap!4362 Nil!51650))))

(declare-fun lt!1798021 () Unit!114251)

(assert (=> b!4635693 (= lt!1798021 call!323540)))

(assert (=> b!4635693 call!323541))

(declare-fun lt!1798004 () Unit!114251)

(assert (=> b!4635693 (= lt!1798004 lt!1798021)))

(assert (=> b!4635693 call!323539))

(declare-fun lt!1798016 () Unit!114251)

(declare-fun Unit!114306 () Unit!114251)

(assert (=> b!4635693 (= lt!1798016 Unit!114306)))

(assert (=> b!4635691 (= e!2891864 lt!1798008)))

(declare-fun lt!1798010 () ListMap!4361)

(assert (=> b!4635691 (= lt!1798010 (+!1912 (ListMap!4362 Nil!51650) (h!57736 lt!1797508)))))

(assert (=> b!4635691 (= lt!1798008 (addToMapMapFromBucket!1007 (t!358842 lt!1797508) (+!1912 (ListMap!4362 Nil!51650) (h!57736 lt!1797508))))))

(declare-fun lt!1798006 () Unit!114251)

(assert (=> b!4635691 (= lt!1798006 call!323540)))

(assert (=> b!4635691 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194916)))

(declare-fun lt!1798003 () Unit!114251)

(assert (=> b!4635691 (= lt!1798003 lt!1798006)))

(assert (=> b!4635691 (forall!10896 (toList!5057 lt!1798010) lambda!194917)))

(declare-fun lt!1798012 () Unit!114251)

(declare-fun Unit!114311 () Unit!114251)

(assert (=> b!4635691 (= lt!1798012 Unit!114311)))

(assert (=> b!4635691 (forall!10896 (t!358842 lt!1797508) lambda!194917)))

(declare-fun lt!1798013 () Unit!114251)

(declare-fun Unit!114313 () Unit!114251)

(assert (=> b!4635691 (= lt!1798013 Unit!114313)))

(declare-fun lt!1798005 () Unit!114251)

(declare-fun Unit!114314 () Unit!114251)

(assert (=> b!4635691 (= lt!1798005 Unit!114314)))

(declare-fun lt!1798022 () Unit!114251)

(assert (=> b!4635691 (= lt!1798022 (forallContained!3128 (toList!5057 lt!1798010) lambda!194917 (h!57736 lt!1797508)))))

(assert (=> b!4635691 (contains!14771 lt!1798010 (_1!29609 (h!57736 lt!1797508)))))

(declare-fun lt!1798011 () Unit!114251)

(declare-fun Unit!114316 () Unit!114251)

(assert (=> b!4635691 (= lt!1798011 Unit!114316)))

(assert (=> b!4635691 (contains!14771 lt!1798008 (_1!29609 (h!57736 lt!1797508)))))

(declare-fun lt!1798019 () Unit!114251)

(declare-fun Unit!114317 () Unit!114251)

(assert (=> b!4635691 (= lt!1798019 Unit!114317)))

(assert (=> b!4635691 (forall!10896 lt!1797508 lambda!194917)))

(declare-fun lt!1798014 () Unit!114251)

(declare-fun Unit!114319 () Unit!114251)

(assert (=> b!4635691 (= lt!1798014 Unit!114319)))

(assert (=> b!4635691 (forall!10896 (toList!5057 lt!1798010) lambda!194917)))

(declare-fun lt!1798015 () Unit!114251)

(declare-fun Unit!114320 () Unit!114251)

(assert (=> b!4635691 (= lt!1798015 Unit!114320)))

(declare-fun lt!1798002 () Unit!114251)

(declare-fun Unit!114321 () Unit!114251)

(assert (=> b!4635691 (= lt!1798002 Unit!114321)))

(declare-fun lt!1798009 () Unit!114251)

(assert (=> b!4635691 (= lt!1798009 (addForallContainsKeyThenBeforeAdding!541 (ListMap!4362 Nil!51650) lt!1798008 (_1!29609 (h!57736 lt!1797508)) (_2!29609 (h!57736 lt!1797508))))))

(assert (=> b!4635691 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194917)))

(declare-fun lt!1798018 () Unit!114251)

(assert (=> b!4635691 (= lt!1798018 lt!1798009)))

(assert (=> b!4635691 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194917)))

(declare-fun lt!1798017 () Unit!114251)

(declare-fun Unit!114323 () Unit!114251)

(assert (=> b!4635691 (= lt!1798017 Unit!114323)))

(declare-fun res!1945814 () Bool)

(assert (=> b!4635691 (= res!1945814 call!323539)))

(assert (=> b!4635691 (=> (not res!1945814) (not e!2891863))))

(assert (=> b!4635691 e!2891863))

(declare-fun lt!1798020 () Unit!114251)

(declare-fun Unit!114324 () Unit!114251)

(assert (=> b!4635691 (= lt!1798020 Unit!114324)))

(assert (=> d!1461609 e!2891865))

(declare-fun res!1945813 () Bool)

(assert (=> d!1461609 (=> (not res!1945813) (not e!2891865))))

(assert (=> d!1461609 (= res!1945813 (forall!10896 lt!1797508 lambda!194918))))

(assert (=> d!1461609 (= lt!1798007 e!2891864)))

(assert (=> d!1461609 (= c!793438 ((_ is Nil!51650) lt!1797508))))

(assert (=> d!1461609 (noDuplicateKeys!1546 lt!1797508)))

(assert (=> d!1461609 (= (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1798007)))

(assert (= (and d!1461609 c!793438) b!4635693))

(assert (= (and d!1461609 (not c!793438)) b!4635691))

(assert (= (and b!4635691 res!1945814) b!4635692))

(assert (= (or b!4635693 b!4635691) bm!323534))

(assert (= (or b!4635693 b!4635691) bm!323536))

(assert (= (or b!4635693 b!4635692) bm!323535))

(assert (= (and d!1461609 res!1945813) b!4635689))

(assert (= (and b!4635689 res!1945815) b!4635690))

(declare-fun m!5491805 () Bool)

(assert (=> d!1461609 m!5491805))

(assert (=> d!1461609 m!5491261))

(declare-fun m!5491807 () Bool)

(assert (=> b!4635690 m!5491807))

(declare-fun m!5491809 () Bool)

(assert (=> bm!323535 m!5491809))

(declare-fun m!5491811 () Bool)

(assert (=> b!4635689 m!5491811))

(declare-fun m!5491813 () Bool)

(assert (=> bm!323536 m!5491813))

(declare-fun m!5491815 () Bool)

(assert (=> b!4635691 m!5491815))

(declare-fun m!5491817 () Bool)

(assert (=> b!4635691 m!5491817))

(declare-fun m!5491819 () Bool)

(assert (=> b!4635691 m!5491819))

(declare-fun m!5491821 () Bool)

(assert (=> b!4635691 m!5491821))

(assert (=> b!4635691 m!5491821))

(declare-fun m!5491823 () Bool)

(assert (=> b!4635691 m!5491823))

(declare-fun m!5491825 () Bool)

(assert (=> b!4635691 m!5491825))

(declare-fun m!5491827 () Bool)

(assert (=> b!4635691 m!5491827))

(declare-fun m!5491829 () Bool)

(assert (=> b!4635691 m!5491829))

(assert (=> b!4635691 m!5491815))

(declare-fun m!5491831 () Bool)

(assert (=> b!4635691 m!5491831))

(declare-fun m!5491833 () Bool)

(assert (=> b!4635691 m!5491833))

(declare-fun m!5491835 () Bool)

(assert (=> b!4635691 m!5491835))

(assert (=> b!4635691 m!5491827))

(declare-fun m!5491837 () Bool)

(assert (=> bm!323534 m!5491837))

(assert (=> b!4635309 d!1461609))

(declare-fun bs!1030776 () Bool)

(declare-fun d!1461623 () Bool)

(assert (= bs!1030776 (and d!1461623 d!1461483)))

(declare-fun lambda!194919 () Int)

(assert (=> bs!1030776 (= lambda!194919 lambda!194816)))

(declare-fun bs!1030777 () Bool)

(assert (= bs!1030777 (and d!1461623 d!1461523)))

(assert (=> bs!1030777 (= lambda!194919 lambda!194861)))

(declare-fun bs!1030778 () Bool)

(assert (= bs!1030778 (and d!1461623 b!4635304)))

(assert (=> bs!1030778 (= lambda!194919 lambda!194790)))

(declare-fun bs!1030779 () Bool)

(assert (= bs!1030779 (and d!1461623 d!1461507)))

(assert (=> bs!1030779 (= lambda!194919 lambda!194844)))

(declare-fun bs!1030780 () Bool)

(assert (= bs!1030780 (and d!1461623 d!1461509)))

(assert (=> bs!1030780 (= lambda!194919 lambda!194847)))

(declare-fun bs!1030781 () Bool)

(assert (= bs!1030781 (and d!1461623 d!1461453)))

(assert (=> bs!1030781 (= lambda!194919 lambda!194803)))

(declare-fun bs!1030782 () Bool)

(assert (= bs!1030782 (and d!1461623 d!1461603)))

(assert (=> bs!1030782 (= lambda!194919 lambda!194914)))

(declare-fun lt!1798027 () ListMap!4361)

(assert (=> d!1461623 (invariantList!1240 (toList!5057 lt!1798027))))

(declare-fun e!2891872 () ListMap!4361)

(assert (=> d!1461623 (= lt!1798027 e!2891872)))

(declare-fun c!793441 () Bool)

(assert (=> d!1461623 (= c!793441 ((_ is Cons!51651) (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)))))

(assert (=> d!1461623 (forall!10894 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651) lambda!194919)))

(assert (=> d!1461623 (= (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)) lt!1798027)))

(declare-fun b!4635704 () Bool)

(assert (=> b!4635704 (= e!2891872 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651))) (extractMap!1602 (t!358843 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)))))))

(declare-fun b!4635705 () Bool)

(assert (=> b!4635705 (= e!2891872 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461623 c!793441) b!4635704))

(assert (= (and d!1461623 (not c!793441)) b!4635705))

(declare-fun m!5491839 () Bool)

(assert (=> d!1461623 m!5491839))

(declare-fun m!5491841 () Bool)

(assert (=> d!1461623 m!5491841))

(declare-fun m!5491843 () Bool)

(assert (=> b!4635704 m!5491843))

(assert (=> b!4635704 m!5491843))

(declare-fun m!5491845 () Bool)

(assert (=> b!4635704 m!5491845))

(assert (=> b!4635309 d!1461623))

(declare-fun bs!1030783 () Bool)

(declare-fun b!4635710 () Bool)

(assert (= bs!1030783 (and b!4635710 b!4635680)))

(declare-fun lambda!194920 () Int)

(assert (=> bs!1030783 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194920 lambda!194909))))

(declare-fun bs!1030784 () Bool)

(assert (= bs!1030784 (and b!4635710 b!4635691)))

(assert (=> bs!1030784 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194920 lambda!194917))))

(declare-fun bs!1030785 () Bool)

(assert (= bs!1030785 (and b!4635710 b!4635678)))

(assert (=> bs!1030785 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194920 lambda!194912))))

(declare-fun bs!1030786 () Bool)

(assert (= bs!1030786 (and b!4635710 d!1461609)))

(assert (=> bs!1030786 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194920 lambda!194918))))

(declare-fun bs!1030787 () Bool)

(assert (= bs!1030787 (and b!4635710 b!4635693)))

(assert (=> bs!1030787 (= lambda!194920 lambda!194915)))

(declare-fun bs!1030788 () Bool)

(assert (= bs!1030788 (and b!4635710 d!1461525)))

(assert (=> bs!1030788 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194920 lambda!194913))))

(assert (=> bs!1030785 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194920 lambda!194911))))

(assert (=> bs!1030784 (= lambda!194920 lambda!194916)))

(declare-fun bs!1030789 () Bool)

(assert (= bs!1030789 (and b!4635710 d!1461501)))

(assert (=> bs!1030789 (not (= lambda!194920 lambda!194819))))

(assert (=> b!4635710 true))

(declare-fun bs!1030790 () Bool)

(declare-fun b!4635708 () Bool)

(assert (= bs!1030790 (and b!4635708 b!4635691)))

(declare-fun lambda!194921 () Int)

(assert (=> bs!1030790 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194921 lambda!194917))))

(declare-fun bs!1030791 () Bool)

(assert (= bs!1030791 (and b!4635708 b!4635678)))

(assert (=> bs!1030791 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194921 lambda!194912))))

(declare-fun bs!1030792 () Bool)

(assert (= bs!1030792 (and b!4635708 d!1461609)))

(assert (=> bs!1030792 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194921 lambda!194918))))

(declare-fun bs!1030793 () Bool)

(assert (= bs!1030793 (and b!4635708 b!4635693)))

(assert (=> bs!1030793 (= lambda!194921 lambda!194915)))

(declare-fun bs!1030794 () Bool)

(assert (= bs!1030794 (and b!4635708 b!4635680)))

(assert (=> bs!1030794 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194921 lambda!194909))))

(declare-fun bs!1030795 () Bool)

(assert (= bs!1030795 (and b!4635708 b!4635710)))

(assert (=> bs!1030795 (= lambda!194921 lambda!194920)))

(declare-fun bs!1030796 () Bool)

(assert (= bs!1030796 (and b!4635708 d!1461525)))

(assert (=> bs!1030796 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194921 lambda!194913))))

(assert (=> bs!1030791 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194921 lambda!194911))))

(assert (=> bs!1030790 (= lambda!194921 lambda!194916)))

(declare-fun bs!1030797 () Bool)

(assert (= bs!1030797 (and b!4635708 d!1461501)))

(assert (=> bs!1030797 (not (= lambda!194921 lambda!194819))))

(assert (=> b!4635708 true))

(declare-fun lt!1798034 () ListMap!4361)

(declare-fun lambda!194922 () Int)

(assert (=> b!4635708 (= (= lt!1798034 (ListMap!4362 Nil!51650)) (= lambda!194922 lambda!194921))))

(assert (=> bs!1030790 (= (= lt!1798034 lt!1798008) (= lambda!194922 lambda!194917))))

(assert (=> bs!1030791 (= (= lt!1798034 lt!1797985) (= lambda!194922 lambda!194912))))

(assert (=> bs!1030792 (= (= lt!1798034 lt!1798007) (= lambda!194922 lambda!194918))))

(assert (=> bs!1030793 (= (= lt!1798034 (ListMap!4362 Nil!51650)) (= lambda!194922 lambda!194915))))

(assert (=> bs!1030794 (= (= lt!1798034 lt!1797511) (= lambda!194922 lambda!194909))))

(assert (=> bs!1030795 (= (= lt!1798034 (ListMap!4362 Nil!51650)) (= lambda!194922 lambda!194920))))

(assert (=> bs!1030796 (= (= lt!1798034 lt!1797984) (= lambda!194922 lambda!194913))))

(assert (=> bs!1030791 (= (= lt!1798034 lt!1797511) (= lambda!194922 lambda!194911))))

(assert (=> bs!1030790 (= (= lt!1798034 (ListMap!4362 Nil!51650)) (= lambda!194922 lambda!194916))))

(assert (=> bs!1030797 (not (= lambda!194922 lambda!194819))))

(assert (=> b!4635708 true))

(declare-fun bs!1030798 () Bool)

(declare-fun d!1461625 () Bool)

(assert (= bs!1030798 (and d!1461625 b!4635708)))

(declare-fun lt!1798033 () ListMap!4361)

(declare-fun lambda!194923 () Int)

(assert (=> bs!1030798 (= (= lt!1798033 (ListMap!4362 Nil!51650)) (= lambda!194923 lambda!194921))))

(declare-fun bs!1030799 () Bool)

(assert (= bs!1030799 (and d!1461625 b!4635691)))

(assert (=> bs!1030799 (= (= lt!1798033 lt!1798008) (= lambda!194923 lambda!194917))))

(declare-fun bs!1030800 () Bool)

(assert (= bs!1030800 (and d!1461625 b!4635678)))

(assert (=> bs!1030800 (= (= lt!1798033 lt!1797985) (= lambda!194923 lambda!194912))))

(declare-fun bs!1030801 () Bool)

(assert (= bs!1030801 (and d!1461625 d!1461609)))

(assert (=> bs!1030801 (= (= lt!1798033 lt!1798007) (= lambda!194923 lambda!194918))))

(assert (=> bs!1030798 (= (= lt!1798033 lt!1798034) (= lambda!194923 lambda!194922))))

(declare-fun bs!1030802 () Bool)

(assert (= bs!1030802 (and d!1461625 b!4635693)))

(assert (=> bs!1030802 (= (= lt!1798033 (ListMap!4362 Nil!51650)) (= lambda!194923 lambda!194915))))

(declare-fun bs!1030803 () Bool)

(assert (= bs!1030803 (and d!1461625 b!4635680)))

(assert (=> bs!1030803 (= (= lt!1798033 lt!1797511) (= lambda!194923 lambda!194909))))

(declare-fun bs!1030804 () Bool)

(assert (= bs!1030804 (and d!1461625 b!4635710)))

(assert (=> bs!1030804 (= (= lt!1798033 (ListMap!4362 Nil!51650)) (= lambda!194923 lambda!194920))))

(declare-fun bs!1030805 () Bool)

(assert (= bs!1030805 (and d!1461625 d!1461525)))

(assert (=> bs!1030805 (= (= lt!1798033 lt!1797984) (= lambda!194923 lambda!194913))))

(assert (=> bs!1030800 (= (= lt!1798033 lt!1797511) (= lambda!194923 lambda!194911))))

(assert (=> bs!1030799 (= (= lt!1798033 (ListMap!4362 Nil!51650)) (= lambda!194923 lambda!194916))))

(declare-fun bs!1030806 () Bool)

(assert (= bs!1030806 (and d!1461625 d!1461501)))

(assert (=> bs!1030806 (not (= lambda!194923 lambda!194819))))

(assert (=> d!1461625 true))

(declare-fun b!4635706 () Bool)

(declare-fun res!1945818 () Bool)

(declare-fun e!2891875 () Bool)

(assert (=> b!4635706 (=> (not res!1945818) (not e!2891875))))

(assert (=> b!4635706 (= res!1945818 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194923))))

(declare-fun bm!323537 () Bool)

(declare-fun call!323543 () Unit!114251)

(assert (=> bm!323537 (= call!323543 (lemmaContainsAllItsOwnKeys!542 (ListMap!4362 Nil!51650)))))

(declare-fun b!4635707 () Bool)

(assert (=> b!4635707 (= e!2891875 (invariantList!1240 (toList!5057 lt!1798033)))))

(declare-fun b!4635709 () Bool)

(declare-fun e!2891873 () Bool)

(declare-fun call!323544 () Bool)

(assert (=> b!4635709 (= e!2891873 call!323544)))

(declare-fun c!793442 () Bool)

(declare-fun bm!323538 () Bool)

(assert (=> bm!323538 (= call!323544 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) (ite c!793442 lambda!194920 lambda!194922)))))

(declare-fun call!323542 () Bool)

(declare-fun bm!323539 () Bool)

(assert (=> bm!323539 (= call!323542 (forall!10896 (ite c!793442 (toList!5057 (ListMap!4362 Nil!51650)) (Cons!51650 lt!1797510 lt!1797525)) (ite c!793442 lambda!194920 lambda!194922)))))

(declare-fun e!2891874 () ListMap!4361)

(assert (=> b!4635710 (= e!2891874 (ListMap!4362 Nil!51650))))

(declare-fun lt!1798047 () Unit!114251)

(assert (=> b!4635710 (= lt!1798047 call!323543)))

(assert (=> b!4635710 call!323544))

(declare-fun lt!1798030 () Unit!114251)

(assert (=> b!4635710 (= lt!1798030 lt!1798047)))

(assert (=> b!4635710 call!323542))

(declare-fun lt!1798042 () Unit!114251)

(declare-fun Unit!114327 () Unit!114251)

(assert (=> b!4635710 (= lt!1798042 Unit!114327)))

(assert (=> b!4635708 (= e!2891874 lt!1798034)))

(declare-fun lt!1798036 () ListMap!4361)

(assert (=> b!4635708 (= lt!1798036 (+!1912 (ListMap!4362 Nil!51650) (h!57736 (Cons!51650 lt!1797510 lt!1797525))))))

(assert (=> b!4635708 (= lt!1798034 (addToMapMapFromBucket!1007 (t!358842 (Cons!51650 lt!1797510 lt!1797525)) (+!1912 (ListMap!4362 Nil!51650) (h!57736 (Cons!51650 lt!1797510 lt!1797525)))))))

(declare-fun lt!1798032 () Unit!114251)

(assert (=> b!4635708 (= lt!1798032 call!323543)))

(assert (=> b!4635708 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194921)))

(declare-fun lt!1798029 () Unit!114251)

(assert (=> b!4635708 (= lt!1798029 lt!1798032)))

(assert (=> b!4635708 (forall!10896 (toList!5057 lt!1798036) lambda!194922)))

(declare-fun lt!1798038 () Unit!114251)

(declare-fun Unit!114328 () Unit!114251)

(assert (=> b!4635708 (= lt!1798038 Unit!114328)))

(assert (=> b!4635708 (forall!10896 (t!358842 (Cons!51650 lt!1797510 lt!1797525)) lambda!194922)))

(declare-fun lt!1798039 () Unit!114251)

(declare-fun Unit!114329 () Unit!114251)

(assert (=> b!4635708 (= lt!1798039 Unit!114329)))

(declare-fun lt!1798031 () Unit!114251)

(declare-fun Unit!114330 () Unit!114251)

(assert (=> b!4635708 (= lt!1798031 Unit!114330)))

(declare-fun lt!1798048 () Unit!114251)

(assert (=> b!4635708 (= lt!1798048 (forallContained!3128 (toList!5057 lt!1798036) lambda!194922 (h!57736 (Cons!51650 lt!1797510 lt!1797525))))))

(assert (=> b!4635708 (contains!14771 lt!1798036 (_1!29609 (h!57736 (Cons!51650 lt!1797510 lt!1797525))))))

(declare-fun lt!1798037 () Unit!114251)

(declare-fun Unit!114331 () Unit!114251)

(assert (=> b!4635708 (= lt!1798037 Unit!114331)))

(assert (=> b!4635708 (contains!14771 lt!1798034 (_1!29609 (h!57736 (Cons!51650 lt!1797510 lt!1797525))))))

(declare-fun lt!1798045 () Unit!114251)

(declare-fun Unit!114332 () Unit!114251)

(assert (=> b!4635708 (= lt!1798045 Unit!114332)))

(assert (=> b!4635708 (forall!10896 (Cons!51650 lt!1797510 lt!1797525) lambda!194922)))

(declare-fun lt!1798040 () Unit!114251)

(declare-fun Unit!114333 () Unit!114251)

(assert (=> b!4635708 (= lt!1798040 Unit!114333)))

(assert (=> b!4635708 (forall!10896 (toList!5057 lt!1798036) lambda!194922)))

(declare-fun lt!1798041 () Unit!114251)

(declare-fun Unit!114334 () Unit!114251)

(assert (=> b!4635708 (= lt!1798041 Unit!114334)))

(declare-fun lt!1798028 () Unit!114251)

(declare-fun Unit!114335 () Unit!114251)

(assert (=> b!4635708 (= lt!1798028 Unit!114335)))

(declare-fun lt!1798035 () Unit!114251)

(assert (=> b!4635708 (= lt!1798035 (addForallContainsKeyThenBeforeAdding!541 (ListMap!4362 Nil!51650) lt!1798034 (_1!29609 (h!57736 (Cons!51650 lt!1797510 lt!1797525))) (_2!29609 (h!57736 (Cons!51650 lt!1797510 lt!1797525)))))))

(assert (=> b!4635708 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194922)))

(declare-fun lt!1798044 () Unit!114251)

(assert (=> b!4635708 (= lt!1798044 lt!1798035)))

(assert (=> b!4635708 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194922)))

(declare-fun lt!1798043 () Unit!114251)

(declare-fun Unit!114336 () Unit!114251)

(assert (=> b!4635708 (= lt!1798043 Unit!114336)))

(declare-fun res!1945817 () Bool)

(assert (=> b!4635708 (= res!1945817 call!323542)))

(assert (=> b!4635708 (=> (not res!1945817) (not e!2891873))))

(assert (=> b!4635708 e!2891873))

(declare-fun lt!1798046 () Unit!114251)

(declare-fun Unit!114337 () Unit!114251)

(assert (=> b!4635708 (= lt!1798046 Unit!114337)))

(assert (=> d!1461625 e!2891875))

(declare-fun res!1945816 () Bool)

(assert (=> d!1461625 (=> (not res!1945816) (not e!2891875))))

(assert (=> d!1461625 (= res!1945816 (forall!10896 (Cons!51650 lt!1797510 lt!1797525) lambda!194923))))

(assert (=> d!1461625 (= lt!1798033 e!2891874)))

(assert (=> d!1461625 (= c!793442 ((_ is Nil!51650) (Cons!51650 lt!1797510 lt!1797525)))))

(assert (=> d!1461625 (noDuplicateKeys!1546 (Cons!51650 lt!1797510 lt!1797525))))

(assert (=> d!1461625 (= (addToMapMapFromBucket!1007 (Cons!51650 lt!1797510 lt!1797525) (ListMap!4362 Nil!51650)) lt!1798033)))

(assert (= (and d!1461625 c!793442) b!4635710))

(assert (= (and d!1461625 (not c!793442)) b!4635708))

(assert (= (and b!4635708 res!1945817) b!4635709))

(assert (= (or b!4635710 b!4635708) bm!323537))

(assert (= (or b!4635710 b!4635708) bm!323539))

(assert (= (or b!4635710 b!4635709) bm!323538))

(assert (= (and d!1461625 res!1945816) b!4635706))

(assert (= (and b!4635706 res!1945818) b!4635707))

(declare-fun m!5491847 () Bool)

(assert (=> d!1461625 m!5491847))

(declare-fun m!5491849 () Bool)

(assert (=> d!1461625 m!5491849))

(declare-fun m!5491851 () Bool)

(assert (=> b!4635707 m!5491851))

(declare-fun m!5491853 () Bool)

(assert (=> bm!323538 m!5491853))

(declare-fun m!5491855 () Bool)

(assert (=> b!4635706 m!5491855))

(declare-fun m!5491857 () Bool)

(assert (=> bm!323539 m!5491857))

(declare-fun m!5491859 () Bool)

(assert (=> b!4635708 m!5491859))

(declare-fun m!5491861 () Bool)

(assert (=> b!4635708 m!5491861))

(declare-fun m!5491863 () Bool)

(assert (=> b!4635708 m!5491863))

(declare-fun m!5491865 () Bool)

(assert (=> b!4635708 m!5491865))

(assert (=> b!4635708 m!5491865))

(declare-fun m!5491867 () Bool)

(assert (=> b!4635708 m!5491867))

(declare-fun m!5491869 () Bool)

(assert (=> b!4635708 m!5491869))

(declare-fun m!5491871 () Bool)

(assert (=> b!4635708 m!5491871))

(declare-fun m!5491873 () Bool)

(assert (=> b!4635708 m!5491873))

(assert (=> b!4635708 m!5491859))

(declare-fun m!5491875 () Bool)

(assert (=> b!4635708 m!5491875))

(declare-fun m!5491877 () Bool)

(assert (=> b!4635708 m!5491877))

(declare-fun m!5491879 () Bool)

(assert (=> b!4635708 m!5491879))

(assert (=> b!4635708 m!5491871))

(assert (=> bm!323537 m!5491837))

(assert (=> b!4635309 d!1461625))

(declare-fun d!1461627 () Bool)

(declare-fun e!2891876 () Bool)

(assert (=> d!1461627 e!2891876))

(declare-fun res!1945819 () Bool)

(assert (=> d!1461627 (=> (not res!1945819) (not e!2891876))))

(declare-fun lt!1798049 () ListMap!4361)

(assert (=> d!1461627 (= res!1945819 (contains!14771 lt!1798049 (_1!29609 lt!1797494)))))

(declare-fun lt!1798051 () List!51774)

(assert (=> d!1461627 (= lt!1798049 (ListMap!4362 lt!1798051))))

(declare-fun lt!1798052 () Unit!114251)

(declare-fun lt!1798050 () Unit!114251)

(assert (=> d!1461627 (= lt!1798052 lt!1798050)))

(assert (=> d!1461627 (= (getValueByKey!1523 lt!1798051 (_1!29609 lt!1797494)) (Some!11702 (_2!29609 lt!1797494)))))

(assert (=> d!1461627 (= lt!1798050 (lemmaContainsTupThenGetReturnValue!884 lt!1798051 (_1!29609 lt!1797494) (_2!29609 lt!1797494)))))

(assert (=> d!1461627 (= lt!1798051 (insertNoDuplicatedKeys!392 (toList!5057 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650))) (_1!29609 lt!1797494) (_2!29609 lt!1797494)))))

(assert (=> d!1461627 (= (+!1912 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1797494) lt!1798049)))

(declare-fun b!4635711 () Bool)

(declare-fun res!1945820 () Bool)

(assert (=> b!4635711 (=> (not res!1945820) (not e!2891876))))

(assert (=> b!4635711 (= res!1945820 (= (getValueByKey!1523 (toList!5057 lt!1798049) (_1!29609 lt!1797494)) (Some!11702 (_2!29609 lt!1797494))))))

(declare-fun b!4635712 () Bool)

(assert (=> b!4635712 (= e!2891876 (contains!14774 (toList!5057 lt!1798049) lt!1797494))))

(assert (= (and d!1461627 res!1945819) b!4635711))

(assert (= (and b!4635711 res!1945820) b!4635712))

(declare-fun m!5491881 () Bool)

(assert (=> d!1461627 m!5491881))

(declare-fun m!5491883 () Bool)

(assert (=> d!1461627 m!5491883))

(declare-fun m!5491885 () Bool)

(assert (=> d!1461627 m!5491885))

(declare-fun m!5491887 () Bool)

(assert (=> d!1461627 m!5491887))

(declare-fun m!5491889 () Bool)

(assert (=> b!4635711 m!5491889))

(declare-fun m!5491891 () Bool)

(assert (=> b!4635712 m!5491891))

(assert (=> b!4635309 d!1461627))

(declare-fun d!1461629 () Bool)

(assert (=> d!1461629 (= (head!9680 oldBucket!40) (h!57736 oldBucket!40))))

(assert (=> b!4635309 d!1461629))

(declare-fun b!4635713 () Bool)

(declare-fun e!2891881 () Bool)

(declare-fun e!2891878 () Bool)

(assert (=> b!4635713 (= e!2891881 e!2891878)))

(declare-fun res!1945821 () Bool)

(assert (=> b!4635713 (=> (not res!1945821) (not e!2891878))))

(assert (=> b!4635713 (= res!1945821 (isDefined!8969 (getValueByKey!1523 (toList!5057 lt!1797517) key!4968)))))

(declare-fun bm!323540 () Bool)

(declare-fun call!323545 () Bool)

(declare-fun e!2891879 () List!51777)

(assert (=> bm!323540 (= call!323545 (contains!14775 e!2891879 key!4968))))

(declare-fun c!793444 () Bool)

(declare-fun c!793445 () Bool)

(assert (=> bm!323540 (= c!793444 c!793445)))

(declare-fun d!1461631 () Bool)

(assert (=> d!1461631 e!2891881))

(declare-fun res!1945822 () Bool)

(assert (=> d!1461631 (=> res!1945822 e!2891881)))

(declare-fun e!2891877 () Bool)

(assert (=> d!1461631 (= res!1945822 e!2891877)))

(declare-fun res!1945823 () Bool)

(assert (=> d!1461631 (=> (not res!1945823) (not e!2891877))))

(declare-fun lt!1798056 () Bool)

(assert (=> d!1461631 (= res!1945823 (not lt!1798056))))

(declare-fun lt!1798057 () Bool)

(assert (=> d!1461631 (= lt!1798056 lt!1798057)))

(declare-fun lt!1798058 () Unit!114251)

(declare-fun e!2891882 () Unit!114251)

(assert (=> d!1461631 (= lt!1798058 e!2891882)))

(assert (=> d!1461631 (= c!793445 lt!1798057)))

(assert (=> d!1461631 (= lt!1798057 (containsKey!2562 (toList!5057 lt!1797517) key!4968))))

(assert (=> d!1461631 (= (contains!14771 lt!1797517 key!4968) lt!1798056)))

(declare-fun b!4635714 () Bool)

(declare-fun e!2891880 () Unit!114251)

(assert (=> b!4635714 (= e!2891882 e!2891880)))

(declare-fun c!793443 () Bool)

(assert (=> b!4635714 (= c!793443 call!323545)))

(declare-fun b!4635715 () Bool)

(assert (=> b!4635715 (= e!2891877 (not (contains!14775 (keys!18230 lt!1797517) key!4968)))))

(declare-fun b!4635716 () Bool)

(assert (=> b!4635716 (= e!2891878 (contains!14775 (keys!18230 lt!1797517) key!4968))))

(declare-fun b!4635717 () Bool)

(declare-fun lt!1798060 () Unit!114251)

(assert (=> b!4635717 (= e!2891882 lt!1798060)))

(declare-fun lt!1798059 () Unit!114251)

(assert (=> b!4635717 (= lt!1798059 (lemmaContainsKeyImpliesGetValueByKeyDefined!1426 (toList!5057 lt!1797517) key!4968))))

(assert (=> b!4635717 (isDefined!8969 (getValueByKey!1523 (toList!5057 lt!1797517) key!4968))))

(declare-fun lt!1798055 () Unit!114251)

(assert (=> b!4635717 (= lt!1798055 lt!1798059)))

(assert (=> b!4635717 (= lt!1798060 (lemmaInListThenGetKeysListContains!686 (toList!5057 lt!1797517) key!4968))))

(assert (=> b!4635717 call!323545))

(declare-fun b!4635718 () Bool)

(assert (=> b!4635718 (= e!2891879 (keys!18230 lt!1797517))))

(declare-fun b!4635719 () Bool)

(declare-fun Unit!114338 () Unit!114251)

(assert (=> b!4635719 (= e!2891880 Unit!114338)))

(declare-fun b!4635720 () Bool)

(assert (=> b!4635720 false))

(declare-fun lt!1798053 () Unit!114251)

(declare-fun lt!1798054 () Unit!114251)

(assert (=> b!4635720 (= lt!1798053 lt!1798054)))

(assert (=> b!4635720 (containsKey!2562 (toList!5057 lt!1797517) key!4968)))

(assert (=> b!4635720 (= lt!1798054 (lemmaInGetKeysListThenContainsKey!690 (toList!5057 lt!1797517) key!4968))))

(declare-fun Unit!114339 () Unit!114251)

(assert (=> b!4635720 (= e!2891880 Unit!114339)))

(declare-fun b!4635721 () Bool)

(assert (=> b!4635721 (= e!2891879 (getKeysList!691 (toList!5057 lt!1797517)))))

(assert (= (and d!1461631 c!793445) b!4635717))

(assert (= (and d!1461631 (not c!793445)) b!4635714))

(assert (= (and b!4635714 c!793443) b!4635720))

(assert (= (and b!4635714 (not c!793443)) b!4635719))

(assert (= (or b!4635717 b!4635714) bm!323540))

(assert (= (and bm!323540 c!793444) b!4635721))

(assert (= (and bm!323540 (not c!793444)) b!4635718))

(assert (= (and d!1461631 res!1945823) b!4635715))

(assert (= (and d!1461631 (not res!1945822)) b!4635713))

(assert (= (and b!4635713 res!1945821) b!4635716))

(declare-fun m!5491893 () Bool)

(assert (=> bm!323540 m!5491893))

(declare-fun m!5491895 () Bool)

(assert (=> b!4635715 m!5491895))

(assert (=> b!4635715 m!5491895))

(declare-fun m!5491897 () Bool)

(assert (=> b!4635715 m!5491897))

(declare-fun m!5491899 () Bool)

(assert (=> b!4635713 m!5491899))

(assert (=> b!4635713 m!5491899))

(declare-fun m!5491901 () Bool)

(assert (=> b!4635713 m!5491901))

(declare-fun m!5491903 () Bool)

(assert (=> d!1461631 m!5491903))

(assert (=> b!4635720 m!5491903))

(declare-fun m!5491905 () Bool)

(assert (=> b!4635720 m!5491905))

(assert (=> b!4635718 m!5491895))

(declare-fun m!5491907 () Bool)

(assert (=> b!4635721 m!5491907))

(declare-fun m!5491909 () Bool)

(assert (=> b!4635717 m!5491909))

(assert (=> b!4635717 m!5491899))

(assert (=> b!4635717 m!5491899))

(assert (=> b!4635717 m!5491901))

(declare-fun m!5491911 () Bool)

(assert (=> b!4635717 m!5491911))

(assert (=> b!4635716 m!5491895))

(assert (=> b!4635716 m!5491895))

(assert (=> b!4635716 m!5491897))

(assert (=> b!4635309 d!1461631))

(declare-fun d!1461633 () Bool)

(assert (=> d!1461633 (= (head!9680 newBucket!224) (h!57736 newBucket!224))))

(assert (=> b!4635309 d!1461633))

(declare-fun d!1461635 () Bool)

(declare-fun e!2891883 () Bool)

(assert (=> d!1461635 e!2891883))

(declare-fun res!1945824 () Bool)

(assert (=> d!1461635 (=> (not res!1945824) (not e!2891883))))

(declare-fun lt!1798061 () ListMap!4361)

(assert (=> d!1461635 (= res!1945824 (contains!14771 lt!1798061 (_1!29609 lt!1797510)))))

(declare-fun lt!1798063 () List!51774)

(assert (=> d!1461635 (= lt!1798061 (ListMap!4362 lt!1798063))))

(declare-fun lt!1798064 () Unit!114251)

(declare-fun lt!1798062 () Unit!114251)

(assert (=> d!1461635 (= lt!1798064 lt!1798062)))

(assert (=> d!1461635 (= (getValueByKey!1523 lt!1798063 (_1!29609 lt!1797510)) (Some!11702 (_2!29609 lt!1797510)))))

(assert (=> d!1461635 (= lt!1798062 (lemmaContainsTupThenGetReturnValue!884 lt!1798063 (_1!29609 lt!1797510) (_2!29609 lt!1797510)))))

(assert (=> d!1461635 (= lt!1798063 (insertNoDuplicatedKeys!392 (toList!5057 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650))) (_1!29609 lt!1797510) (_2!29609 lt!1797510)))))

(assert (=> d!1461635 (= (+!1912 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1797510) lt!1798061)))

(declare-fun b!4635722 () Bool)

(declare-fun res!1945825 () Bool)

(assert (=> b!4635722 (=> (not res!1945825) (not e!2891883))))

(assert (=> b!4635722 (= res!1945825 (= (getValueByKey!1523 (toList!5057 lt!1798061) (_1!29609 lt!1797510)) (Some!11702 (_2!29609 lt!1797510))))))

(declare-fun b!4635723 () Bool)

(assert (=> b!4635723 (= e!2891883 (contains!14774 (toList!5057 lt!1798061) lt!1797510))))

(assert (= (and d!1461635 res!1945824) b!4635722))

(assert (= (and b!4635722 res!1945825) b!4635723))

(declare-fun m!5491913 () Bool)

(assert (=> d!1461635 m!5491913))

(declare-fun m!5491915 () Bool)

(assert (=> d!1461635 m!5491915))

(declare-fun m!5491917 () Bool)

(assert (=> d!1461635 m!5491917))

(declare-fun m!5491919 () Bool)

(assert (=> d!1461635 m!5491919))

(declare-fun m!5491921 () Bool)

(assert (=> b!4635722 m!5491921))

(declare-fun m!5491923 () Bool)

(assert (=> b!4635723 m!5491923))

(assert (=> b!4635309 d!1461635))

(declare-fun d!1461637 () Bool)

(declare-fun e!2891884 () Bool)

(assert (=> d!1461637 e!2891884))

(declare-fun res!1945826 () Bool)

(assert (=> d!1461637 (=> (not res!1945826) (not e!2891884))))

(declare-fun lt!1798065 () ListMap!4361)

(assert (=> d!1461637 (= res!1945826 (contains!14771 lt!1798065 (_1!29609 (h!57736 oldBucket!40))))))

(declare-fun lt!1798067 () List!51774)

(assert (=> d!1461637 (= lt!1798065 (ListMap!4362 lt!1798067))))

(declare-fun lt!1798068 () Unit!114251)

(declare-fun lt!1798066 () Unit!114251)

(assert (=> d!1461637 (= lt!1798068 lt!1798066)))

(assert (=> d!1461637 (= (getValueByKey!1523 lt!1798067 (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461637 (= lt!1798066 (lemmaContainsTupThenGetReturnValue!884 lt!1798067 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461637 (= lt!1798067 (insertNoDuplicatedKeys!392 (toList!5057 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651))) (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461637 (= (+!1912 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)) (h!57736 oldBucket!40)) lt!1798065)))

(declare-fun b!4635724 () Bool)

(declare-fun res!1945827 () Bool)

(assert (=> b!4635724 (=> (not res!1945827) (not e!2891884))))

(assert (=> b!4635724 (= res!1945827 (= (getValueByKey!1523 (toList!5057 lt!1798065) (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun b!4635725 () Bool)

(assert (=> b!4635725 (= e!2891884 (contains!14774 (toList!5057 lt!1798065) (h!57736 oldBucket!40)))))

(assert (= (and d!1461637 res!1945826) b!4635724))

(assert (= (and b!4635724 res!1945827) b!4635725))

(declare-fun m!5491925 () Bool)

(assert (=> d!1461637 m!5491925))

(declare-fun m!5491927 () Bool)

(assert (=> d!1461637 m!5491927))

(declare-fun m!5491929 () Bool)

(assert (=> d!1461637 m!5491929))

(declare-fun m!5491931 () Bool)

(assert (=> d!1461637 m!5491931))

(declare-fun m!5491933 () Bool)

(assert (=> b!4635724 m!5491933))

(declare-fun m!5491935 () Bool)

(assert (=> b!4635725 m!5491935))

(assert (=> b!4635309 d!1461637))

(declare-fun d!1461639 () Bool)

(assert (=> d!1461639 (= (eq!861 lt!1797516 (+!1912 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)) (h!57736 oldBucket!40))) (= (content!8904 (toList!5057 lt!1797516)) (content!8904 (toList!5057 (+!1912 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797508) Nil!51651)) (h!57736 oldBucket!40))))))))

(declare-fun bs!1030807 () Bool)

(assert (= bs!1030807 d!1461639))

(assert (=> bs!1030807 m!5491005))

(declare-fun m!5491937 () Bool)

(assert (=> bs!1030807 m!5491937))

(assert (=> b!4635309 d!1461639))

(declare-fun bs!1030808 () Bool)

(declare-fun d!1461641 () Bool)

(assert (= bs!1030808 (and d!1461641 d!1461483)))

(declare-fun lambda!194926 () Int)

(assert (=> bs!1030808 (= lambda!194926 lambda!194816)))

(declare-fun bs!1030809 () Bool)

(assert (= bs!1030809 (and d!1461641 d!1461523)))

(assert (=> bs!1030809 (= lambda!194926 lambda!194861)))

(declare-fun bs!1030810 () Bool)

(assert (= bs!1030810 (and d!1461641 d!1461507)))

(assert (=> bs!1030810 (= lambda!194926 lambda!194844)))

(declare-fun bs!1030811 () Bool)

(assert (= bs!1030811 (and d!1461641 d!1461509)))

(assert (=> bs!1030811 (= lambda!194926 lambda!194847)))

(declare-fun bs!1030812 () Bool)

(assert (= bs!1030812 (and d!1461641 b!4635304)))

(assert (=> bs!1030812 (= lambda!194926 lambda!194790)))

(declare-fun bs!1030813 () Bool)

(assert (= bs!1030813 (and d!1461641 d!1461623)))

(assert (=> bs!1030813 (= lambda!194926 lambda!194919)))

(declare-fun bs!1030814 () Bool)

(assert (= bs!1030814 (and d!1461641 d!1461453)))

(assert (=> bs!1030814 (= lambda!194926 lambda!194803)))

(declare-fun bs!1030815 () Bool)

(assert (= bs!1030815 (and d!1461641 d!1461603)))

(assert (=> bs!1030815 (= lambda!194926 lambda!194914)))

(assert (=> d!1461641 (contains!14771 (extractMap!1602 (toList!5058 (ListLongMap!3648 lt!1797521))) key!4968)))

(declare-fun lt!1798071 () Unit!114251)

(declare-fun choose!31668 (ListLongMap!3647 K!13015 Hashable!5943) Unit!114251)

(assert (=> d!1461641 (= lt!1798071 (choose!31668 (ListLongMap!3648 lt!1797521) key!4968 hashF!1389))))

(assert (=> d!1461641 (forall!10894 (toList!5058 (ListLongMap!3648 lt!1797521)) lambda!194926)))

(assert (=> d!1461641 (= (lemmaListContainsThenExtractedMapContains!364 (ListLongMap!3648 lt!1797521) key!4968 hashF!1389) lt!1798071)))

(declare-fun bs!1030816 () Bool)

(assert (= bs!1030816 d!1461641))

(declare-fun m!5491939 () Bool)

(assert (=> bs!1030816 m!5491939))

(assert (=> bs!1030816 m!5491939))

(declare-fun m!5491941 () Bool)

(assert (=> bs!1030816 m!5491941))

(declare-fun m!5491943 () Bool)

(assert (=> bs!1030816 m!5491943))

(declare-fun m!5491945 () Bool)

(assert (=> bs!1030816 m!5491945))

(assert (=> b!4635309 d!1461641))

(declare-fun d!1461643 () Bool)

(assert (=> d!1461643 (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797494 lt!1797508) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1797494))))

(declare-fun lt!1798074 () Unit!114251)

(declare-fun choose!31669 (tuple2!52630 List!51774 ListMap!4361) Unit!114251)

(assert (=> d!1461643 (= lt!1798074 (choose!31669 lt!1797494 lt!1797508 (ListMap!4362 Nil!51650)))))

(assert (=> d!1461643 (noDuplicateKeys!1546 lt!1797508)))

(assert (=> d!1461643 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!112 lt!1797494 lt!1797508 (ListMap!4362 Nil!51650)) lt!1798074)))

(declare-fun bs!1030817 () Bool)

(assert (= bs!1030817 d!1461643))

(assert (=> bs!1030817 m!5490973))

(assert (=> bs!1030817 m!5491261))

(assert (=> bs!1030817 m!5490969))

(assert (=> bs!1030817 m!5490973))

(assert (=> bs!1030817 m!5490971))

(assert (=> bs!1030817 m!5490985))

(declare-fun m!5491947 () Bool)

(assert (=> bs!1030817 m!5491947))

(assert (=> bs!1030817 m!5490969))

(assert (=> bs!1030817 m!5490971))

(assert (=> b!4635309 d!1461643))

(declare-fun bs!1030818 () Bool)

(declare-fun b!4635730 () Bool)

(assert (= bs!1030818 (and b!4635730 d!1461625)))

(declare-fun lambda!194927 () Int)

(assert (=> bs!1030818 (= (= (ListMap!4362 Nil!51650) lt!1798033) (= lambda!194927 lambda!194923))))

(declare-fun bs!1030819 () Bool)

(assert (= bs!1030819 (and b!4635730 b!4635708)))

(assert (=> bs!1030819 (= lambda!194927 lambda!194921)))

(declare-fun bs!1030820 () Bool)

(assert (= bs!1030820 (and b!4635730 b!4635691)))

(assert (=> bs!1030820 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194927 lambda!194917))))

(declare-fun bs!1030821 () Bool)

(assert (= bs!1030821 (and b!4635730 b!4635678)))

(assert (=> bs!1030821 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194927 lambda!194912))))

(declare-fun bs!1030822 () Bool)

(assert (= bs!1030822 (and b!4635730 d!1461609)))

(assert (=> bs!1030822 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194927 lambda!194918))))

(assert (=> bs!1030819 (= (= (ListMap!4362 Nil!51650) lt!1798034) (= lambda!194927 lambda!194922))))

(declare-fun bs!1030823 () Bool)

(assert (= bs!1030823 (and b!4635730 b!4635693)))

(assert (=> bs!1030823 (= lambda!194927 lambda!194915)))

(declare-fun bs!1030824 () Bool)

(assert (= bs!1030824 (and b!4635730 b!4635680)))

(assert (=> bs!1030824 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194927 lambda!194909))))

(declare-fun bs!1030825 () Bool)

(assert (= bs!1030825 (and b!4635730 b!4635710)))

(assert (=> bs!1030825 (= lambda!194927 lambda!194920)))

(declare-fun bs!1030826 () Bool)

(assert (= bs!1030826 (and b!4635730 d!1461525)))

(assert (=> bs!1030826 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194927 lambda!194913))))

(assert (=> bs!1030821 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194927 lambda!194911))))

(assert (=> bs!1030820 (= lambda!194927 lambda!194916)))

(declare-fun bs!1030827 () Bool)

(assert (= bs!1030827 (and b!4635730 d!1461501)))

(assert (=> bs!1030827 (not (= lambda!194927 lambda!194819))))

(assert (=> b!4635730 true))

(declare-fun bs!1030828 () Bool)

(declare-fun b!4635728 () Bool)

(assert (= bs!1030828 (and b!4635728 d!1461625)))

(declare-fun lambda!194928 () Int)

(assert (=> bs!1030828 (= (= (ListMap!4362 Nil!51650) lt!1798033) (= lambda!194928 lambda!194923))))

(declare-fun bs!1030829 () Bool)

(assert (= bs!1030829 (and b!4635728 b!4635691)))

(assert (=> bs!1030829 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194928 lambda!194917))))

(declare-fun bs!1030830 () Bool)

(assert (= bs!1030830 (and b!4635728 b!4635678)))

(assert (=> bs!1030830 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194928 lambda!194912))))

(declare-fun bs!1030831 () Bool)

(assert (= bs!1030831 (and b!4635728 d!1461609)))

(assert (=> bs!1030831 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194928 lambda!194918))))

(declare-fun bs!1030832 () Bool)

(assert (= bs!1030832 (and b!4635728 b!4635708)))

(assert (=> bs!1030832 (= (= (ListMap!4362 Nil!51650) lt!1798034) (= lambda!194928 lambda!194922))))

(declare-fun bs!1030833 () Bool)

(assert (= bs!1030833 (and b!4635728 b!4635693)))

(assert (=> bs!1030833 (= lambda!194928 lambda!194915)))

(declare-fun bs!1030834 () Bool)

(assert (= bs!1030834 (and b!4635728 b!4635680)))

(assert (=> bs!1030834 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194928 lambda!194909))))

(declare-fun bs!1030835 () Bool)

(assert (= bs!1030835 (and b!4635728 b!4635710)))

(assert (=> bs!1030835 (= lambda!194928 lambda!194920)))

(declare-fun bs!1030836 () Bool)

(assert (= bs!1030836 (and b!4635728 b!4635730)))

(assert (=> bs!1030836 (= lambda!194928 lambda!194927)))

(assert (=> bs!1030832 (= lambda!194928 lambda!194921)))

(declare-fun bs!1030837 () Bool)

(assert (= bs!1030837 (and b!4635728 d!1461525)))

(assert (=> bs!1030837 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194928 lambda!194913))))

(assert (=> bs!1030830 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194928 lambda!194911))))

(assert (=> bs!1030829 (= lambda!194928 lambda!194916)))

(declare-fun bs!1030838 () Bool)

(assert (= bs!1030838 (and b!4635728 d!1461501)))

(assert (=> bs!1030838 (not (= lambda!194928 lambda!194819))))

(assert (=> b!4635728 true))

(declare-fun lambda!194929 () Int)

(declare-fun lt!1798081 () ListMap!4361)

(assert (=> bs!1030828 (= (= lt!1798081 lt!1798033) (= lambda!194929 lambda!194923))))

(assert (=> bs!1030829 (= (= lt!1798081 lt!1798008) (= lambda!194929 lambda!194917))))

(assert (=> bs!1030830 (= (= lt!1798081 lt!1797985) (= lambda!194929 lambda!194912))))

(assert (=> bs!1030831 (= (= lt!1798081 lt!1798007) (= lambda!194929 lambda!194918))))

(assert (=> bs!1030832 (= (= lt!1798081 lt!1798034) (= lambda!194929 lambda!194922))))

(assert (=> bs!1030833 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194915))))

(assert (=> bs!1030834 (= (= lt!1798081 lt!1797511) (= lambda!194929 lambda!194909))))

(assert (=> bs!1030835 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194920))))

(assert (=> bs!1030836 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194927))))

(assert (=> bs!1030832 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194921))))

(assert (=> b!4635728 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194928))))

(assert (=> bs!1030837 (= (= lt!1798081 lt!1797984) (= lambda!194929 lambda!194913))))

(assert (=> bs!1030830 (= (= lt!1798081 lt!1797511) (= lambda!194929 lambda!194911))))

(assert (=> bs!1030829 (= (= lt!1798081 (ListMap!4362 Nil!51650)) (= lambda!194929 lambda!194916))))

(assert (=> bs!1030838 (not (= lambda!194929 lambda!194819))))

(assert (=> b!4635728 true))

(declare-fun bs!1030839 () Bool)

(declare-fun d!1461645 () Bool)

(assert (= bs!1030839 (and d!1461645 d!1461625)))

(declare-fun lt!1798080 () ListMap!4361)

(declare-fun lambda!194930 () Int)

(assert (=> bs!1030839 (= (= lt!1798080 lt!1798033) (= lambda!194930 lambda!194923))))

(declare-fun bs!1030840 () Bool)

(assert (= bs!1030840 (and d!1461645 b!4635691)))

(assert (=> bs!1030840 (= (= lt!1798080 lt!1798008) (= lambda!194930 lambda!194917))))

(declare-fun bs!1030841 () Bool)

(assert (= bs!1030841 (and d!1461645 b!4635678)))

(assert (=> bs!1030841 (= (= lt!1798080 lt!1797985) (= lambda!194930 lambda!194912))))

(declare-fun bs!1030842 () Bool)

(assert (= bs!1030842 (and d!1461645 d!1461609)))

(assert (=> bs!1030842 (= (= lt!1798080 lt!1798007) (= lambda!194930 lambda!194918))))

(declare-fun bs!1030843 () Bool)

(assert (= bs!1030843 (and d!1461645 b!4635728)))

(assert (=> bs!1030843 (= (= lt!1798080 lt!1798081) (= lambda!194930 lambda!194929))))

(declare-fun bs!1030844 () Bool)

(assert (= bs!1030844 (and d!1461645 b!4635708)))

(assert (=> bs!1030844 (= (= lt!1798080 lt!1798034) (= lambda!194930 lambda!194922))))

(declare-fun bs!1030845 () Bool)

(assert (= bs!1030845 (and d!1461645 b!4635693)))

(assert (=> bs!1030845 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194915))))

(declare-fun bs!1030846 () Bool)

(assert (= bs!1030846 (and d!1461645 b!4635680)))

(assert (=> bs!1030846 (= (= lt!1798080 lt!1797511) (= lambda!194930 lambda!194909))))

(declare-fun bs!1030847 () Bool)

(assert (= bs!1030847 (and d!1461645 b!4635710)))

(assert (=> bs!1030847 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194920))))

(declare-fun bs!1030848 () Bool)

(assert (= bs!1030848 (and d!1461645 b!4635730)))

(assert (=> bs!1030848 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194927))))

(assert (=> bs!1030844 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194921))))

(assert (=> bs!1030843 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194928))))

(declare-fun bs!1030849 () Bool)

(assert (= bs!1030849 (and d!1461645 d!1461525)))

(assert (=> bs!1030849 (= (= lt!1798080 lt!1797984) (= lambda!194930 lambda!194913))))

(assert (=> bs!1030841 (= (= lt!1798080 lt!1797511) (= lambda!194930 lambda!194911))))

(assert (=> bs!1030840 (= (= lt!1798080 (ListMap!4362 Nil!51650)) (= lambda!194930 lambda!194916))))

(declare-fun bs!1030850 () Bool)

(assert (= bs!1030850 (and d!1461645 d!1461501)))

(assert (=> bs!1030850 (not (= lambda!194930 lambda!194819))))

(assert (=> d!1461645 true))

(declare-fun b!4635726 () Bool)

(declare-fun res!1945830 () Bool)

(declare-fun e!2891887 () Bool)

(assert (=> b!4635726 (=> (not res!1945830) (not e!2891887))))

(assert (=> b!4635726 (= res!1945830 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194930))))

(declare-fun bm!323541 () Bool)

(declare-fun call!323547 () Unit!114251)

(assert (=> bm!323541 (= call!323547 (lemmaContainsAllItsOwnKeys!542 (ListMap!4362 Nil!51650)))))

(declare-fun b!4635727 () Bool)

(assert (=> b!4635727 (= e!2891887 (invariantList!1240 (toList!5057 lt!1798080)))))

(declare-fun b!4635729 () Bool)

(declare-fun e!2891885 () Bool)

(declare-fun call!323548 () Bool)

(assert (=> b!4635729 (= e!2891885 call!323548)))

(declare-fun c!793446 () Bool)

(declare-fun bm!323542 () Bool)

(assert (=> bm!323542 (= call!323548 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) (ite c!793446 lambda!194927 lambda!194929)))))

(declare-fun bm!323543 () Bool)

(declare-fun call!323546 () Bool)

(assert (=> bm!323543 (= call!323546 (forall!10896 (ite c!793446 (toList!5057 (ListMap!4362 Nil!51650)) (Cons!51650 lt!1797494 lt!1797508)) (ite c!793446 lambda!194927 lambda!194929)))))

(declare-fun e!2891886 () ListMap!4361)

(assert (=> b!4635730 (= e!2891886 (ListMap!4362 Nil!51650))))

(declare-fun lt!1798094 () Unit!114251)

(assert (=> b!4635730 (= lt!1798094 call!323547)))

(assert (=> b!4635730 call!323548))

(declare-fun lt!1798077 () Unit!114251)

(assert (=> b!4635730 (= lt!1798077 lt!1798094)))

(assert (=> b!4635730 call!323546))

(declare-fun lt!1798089 () Unit!114251)

(declare-fun Unit!114351 () Unit!114251)

(assert (=> b!4635730 (= lt!1798089 Unit!114351)))

(assert (=> b!4635728 (= e!2891886 lt!1798081)))

(declare-fun lt!1798083 () ListMap!4361)

(assert (=> b!4635728 (= lt!1798083 (+!1912 (ListMap!4362 Nil!51650) (h!57736 (Cons!51650 lt!1797494 lt!1797508))))))

(assert (=> b!4635728 (= lt!1798081 (addToMapMapFromBucket!1007 (t!358842 (Cons!51650 lt!1797494 lt!1797508)) (+!1912 (ListMap!4362 Nil!51650) (h!57736 (Cons!51650 lt!1797494 lt!1797508)))))))

(declare-fun lt!1798079 () Unit!114251)

(assert (=> b!4635728 (= lt!1798079 call!323547)))

(assert (=> b!4635728 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194928)))

(declare-fun lt!1798076 () Unit!114251)

(assert (=> b!4635728 (= lt!1798076 lt!1798079)))

(assert (=> b!4635728 (forall!10896 (toList!5057 lt!1798083) lambda!194929)))

(declare-fun lt!1798085 () Unit!114251)

(declare-fun Unit!114352 () Unit!114251)

(assert (=> b!4635728 (= lt!1798085 Unit!114352)))

(assert (=> b!4635728 (forall!10896 (t!358842 (Cons!51650 lt!1797494 lt!1797508)) lambda!194929)))

(declare-fun lt!1798086 () Unit!114251)

(declare-fun Unit!114353 () Unit!114251)

(assert (=> b!4635728 (= lt!1798086 Unit!114353)))

(declare-fun lt!1798078 () Unit!114251)

(declare-fun Unit!114354 () Unit!114251)

(assert (=> b!4635728 (= lt!1798078 Unit!114354)))

(declare-fun lt!1798095 () Unit!114251)

(assert (=> b!4635728 (= lt!1798095 (forallContained!3128 (toList!5057 lt!1798083) lambda!194929 (h!57736 (Cons!51650 lt!1797494 lt!1797508))))))

(assert (=> b!4635728 (contains!14771 lt!1798083 (_1!29609 (h!57736 (Cons!51650 lt!1797494 lt!1797508))))))

(declare-fun lt!1798084 () Unit!114251)

(declare-fun Unit!114355 () Unit!114251)

(assert (=> b!4635728 (= lt!1798084 Unit!114355)))

(assert (=> b!4635728 (contains!14771 lt!1798081 (_1!29609 (h!57736 (Cons!51650 lt!1797494 lt!1797508))))))

(declare-fun lt!1798092 () Unit!114251)

(declare-fun Unit!114356 () Unit!114251)

(assert (=> b!4635728 (= lt!1798092 Unit!114356)))

(assert (=> b!4635728 (forall!10896 (Cons!51650 lt!1797494 lt!1797508) lambda!194929)))

(declare-fun lt!1798087 () Unit!114251)

(declare-fun Unit!114357 () Unit!114251)

(assert (=> b!4635728 (= lt!1798087 Unit!114357)))

(assert (=> b!4635728 (forall!10896 (toList!5057 lt!1798083) lambda!194929)))

(declare-fun lt!1798088 () Unit!114251)

(declare-fun Unit!114358 () Unit!114251)

(assert (=> b!4635728 (= lt!1798088 Unit!114358)))

(declare-fun lt!1798075 () Unit!114251)

(declare-fun Unit!114359 () Unit!114251)

(assert (=> b!4635728 (= lt!1798075 Unit!114359)))

(declare-fun lt!1798082 () Unit!114251)

(assert (=> b!4635728 (= lt!1798082 (addForallContainsKeyThenBeforeAdding!541 (ListMap!4362 Nil!51650) lt!1798081 (_1!29609 (h!57736 (Cons!51650 lt!1797494 lt!1797508))) (_2!29609 (h!57736 (Cons!51650 lt!1797494 lt!1797508)))))))

(assert (=> b!4635728 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194929)))

(declare-fun lt!1798091 () Unit!114251)

(assert (=> b!4635728 (= lt!1798091 lt!1798082)))

(assert (=> b!4635728 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194929)))

(declare-fun lt!1798090 () Unit!114251)

(declare-fun Unit!114360 () Unit!114251)

(assert (=> b!4635728 (= lt!1798090 Unit!114360)))

(declare-fun res!1945829 () Bool)

(assert (=> b!4635728 (= res!1945829 call!323546)))

(assert (=> b!4635728 (=> (not res!1945829) (not e!2891885))))

(assert (=> b!4635728 e!2891885))

(declare-fun lt!1798093 () Unit!114251)

(declare-fun Unit!114361 () Unit!114251)

(assert (=> b!4635728 (= lt!1798093 Unit!114361)))

(assert (=> d!1461645 e!2891887))

(declare-fun res!1945828 () Bool)

(assert (=> d!1461645 (=> (not res!1945828) (not e!2891887))))

(assert (=> d!1461645 (= res!1945828 (forall!10896 (Cons!51650 lt!1797494 lt!1797508) lambda!194930))))

(assert (=> d!1461645 (= lt!1798080 e!2891886)))

(assert (=> d!1461645 (= c!793446 ((_ is Nil!51650) (Cons!51650 lt!1797494 lt!1797508)))))

(assert (=> d!1461645 (noDuplicateKeys!1546 (Cons!51650 lt!1797494 lt!1797508))))

(assert (=> d!1461645 (= (addToMapMapFromBucket!1007 (Cons!51650 lt!1797494 lt!1797508) (ListMap!4362 Nil!51650)) lt!1798080)))

(assert (= (and d!1461645 c!793446) b!4635730))

(assert (= (and d!1461645 (not c!793446)) b!4635728))

(assert (= (and b!4635728 res!1945829) b!4635729))

(assert (= (or b!4635730 b!4635728) bm!323541))

(assert (= (or b!4635730 b!4635728) bm!323543))

(assert (= (or b!4635730 b!4635729) bm!323542))

(assert (= (and d!1461645 res!1945828) b!4635726))

(assert (= (and b!4635726 res!1945830) b!4635727))

(declare-fun m!5491949 () Bool)

(assert (=> d!1461645 m!5491949))

(declare-fun m!5491951 () Bool)

(assert (=> d!1461645 m!5491951))

(declare-fun m!5491953 () Bool)

(assert (=> b!4635727 m!5491953))

(declare-fun m!5491955 () Bool)

(assert (=> bm!323542 m!5491955))

(declare-fun m!5491957 () Bool)

(assert (=> b!4635726 m!5491957))

(declare-fun m!5491959 () Bool)

(assert (=> bm!323543 m!5491959))

(declare-fun m!5491961 () Bool)

(assert (=> b!4635728 m!5491961))

(declare-fun m!5491963 () Bool)

(assert (=> b!4635728 m!5491963))

(declare-fun m!5491965 () Bool)

(assert (=> b!4635728 m!5491965))

(declare-fun m!5491967 () Bool)

(assert (=> b!4635728 m!5491967))

(assert (=> b!4635728 m!5491967))

(declare-fun m!5491969 () Bool)

(assert (=> b!4635728 m!5491969))

(declare-fun m!5491971 () Bool)

(assert (=> b!4635728 m!5491971))

(declare-fun m!5491973 () Bool)

(assert (=> b!4635728 m!5491973))

(declare-fun m!5491975 () Bool)

(assert (=> b!4635728 m!5491975))

(assert (=> b!4635728 m!5491961))

(declare-fun m!5491977 () Bool)

(assert (=> b!4635728 m!5491977))

(declare-fun m!5491979 () Bool)

(assert (=> b!4635728 m!5491979))

(declare-fun m!5491981 () Bool)

(assert (=> b!4635728 m!5491981))

(assert (=> b!4635728 m!5491973))

(assert (=> bm!323541 m!5491837))

(assert (=> b!4635309 d!1461645))

(declare-fun bs!1030851 () Bool)

(declare-fun b!4635735 () Bool)

(assert (= bs!1030851 (and b!4635735 d!1461645)))

(declare-fun lambda!194931 () Int)

(assert (=> bs!1030851 (= (= (ListMap!4362 Nil!51650) lt!1798080) (= lambda!194931 lambda!194930))))

(declare-fun bs!1030852 () Bool)

(assert (= bs!1030852 (and b!4635735 d!1461625)))

(assert (=> bs!1030852 (= (= (ListMap!4362 Nil!51650) lt!1798033) (= lambda!194931 lambda!194923))))

(declare-fun bs!1030853 () Bool)

(assert (= bs!1030853 (and b!4635735 b!4635691)))

(assert (=> bs!1030853 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194931 lambda!194917))))

(declare-fun bs!1030854 () Bool)

(assert (= bs!1030854 (and b!4635735 b!4635678)))

(assert (=> bs!1030854 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194931 lambda!194912))))

(declare-fun bs!1030855 () Bool)

(assert (= bs!1030855 (and b!4635735 d!1461609)))

(assert (=> bs!1030855 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194931 lambda!194918))))

(declare-fun bs!1030856 () Bool)

(assert (= bs!1030856 (and b!4635735 b!4635728)))

(assert (=> bs!1030856 (= (= (ListMap!4362 Nil!51650) lt!1798081) (= lambda!194931 lambda!194929))))

(declare-fun bs!1030857 () Bool)

(assert (= bs!1030857 (and b!4635735 b!4635708)))

(assert (=> bs!1030857 (= (= (ListMap!4362 Nil!51650) lt!1798034) (= lambda!194931 lambda!194922))))

(declare-fun bs!1030858 () Bool)

(assert (= bs!1030858 (and b!4635735 b!4635693)))

(assert (=> bs!1030858 (= lambda!194931 lambda!194915)))

(declare-fun bs!1030859 () Bool)

(assert (= bs!1030859 (and b!4635735 b!4635680)))

(assert (=> bs!1030859 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194931 lambda!194909))))

(declare-fun bs!1030860 () Bool)

(assert (= bs!1030860 (and b!4635735 b!4635710)))

(assert (=> bs!1030860 (= lambda!194931 lambda!194920)))

(declare-fun bs!1030861 () Bool)

(assert (= bs!1030861 (and b!4635735 b!4635730)))

(assert (=> bs!1030861 (= lambda!194931 lambda!194927)))

(assert (=> bs!1030857 (= lambda!194931 lambda!194921)))

(assert (=> bs!1030856 (= lambda!194931 lambda!194928)))

(declare-fun bs!1030862 () Bool)

(assert (= bs!1030862 (and b!4635735 d!1461525)))

(assert (=> bs!1030862 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194931 lambda!194913))))

(assert (=> bs!1030854 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194931 lambda!194911))))

(assert (=> bs!1030853 (= lambda!194931 lambda!194916)))

(declare-fun bs!1030863 () Bool)

(assert (= bs!1030863 (and b!4635735 d!1461501)))

(assert (=> bs!1030863 (not (= lambda!194931 lambda!194819))))

(assert (=> b!4635735 true))

(declare-fun bs!1030864 () Bool)

(declare-fun b!4635733 () Bool)

(assert (= bs!1030864 (and b!4635733 d!1461645)))

(declare-fun lambda!194932 () Int)

(assert (=> bs!1030864 (= (= (ListMap!4362 Nil!51650) lt!1798080) (= lambda!194932 lambda!194930))))

(declare-fun bs!1030865 () Bool)

(assert (= bs!1030865 (and b!4635733 d!1461625)))

(assert (=> bs!1030865 (= (= (ListMap!4362 Nil!51650) lt!1798033) (= lambda!194932 lambda!194923))))

(declare-fun bs!1030866 () Bool)

(assert (= bs!1030866 (and b!4635733 b!4635678)))

(assert (=> bs!1030866 (= (= (ListMap!4362 Nil!51650) lt!1797985) (= lambda!194932 lambda!194912))))

(declare-fun bs!1030867 () Bool)

(assert (= bs!1030867 (and b!4635733 d!1461609)))

(assert (=> bs!1030867 (= (= (ListMap!4362 Nil!51650) lt!1798007) (= lambda!194932 lambda!194918))))

(declare-fun bs!1030868 () Bool)

(assert (= bs!1030868 (and b!4635733 b!4635728)))

(assert (=> bs!1030868 (= (= (ListMap!4362 Nil!51650) lt!1798081) (= lambda!194932 lambda!194929))))

(declare-fun bs!1030869 () Bool)

(assert (= bs!1030869 (and b!4635733 b!4635708)))

(assert (=> bs!1030869 (= (= (ListMap!4362 Nil!51650) lt!1798034) (= lambda!194932 lambda!194922))))

(declare-fun bs!1030870 () Bool)

(assert (= bs!1030870 (and b!4635733 b!4635693)))

(assert (=> bs!1030870 (= lambda!194932 lambda!194915)))

(declare-fun bs!1030871 () Bool)

(assert (= bs!1030871 (and b!4635733 b!4635680)))

(assert (=> bs!1030871 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194932 lambda!194909))))

(declare-fun bs!1030872 () Bool)

(assert (= bs!1030872 (and b!4635733 b!4635710)))

(assert (=> bs!1030872 (= lambda!194932 lambda!194920)))

(declare-fun bs!1030873 () Bool)

(assert (= bs!1030873 (and b!4635733 b!4635730)))

(assert (=> bs!1030873 (= lambda!194932 lambda!194927)))

(assert (=> bs!1030869 (= lambda!194932 lambda!194921)))

(declare-fun bs!1030874 () Bool)

(assert (= bs!1030874 (and b!4635733 b!4635735)))

(assert (=> bs!1030874 (= lambda!194932 lambda!194931)))

(declare-fun bs!1030875 () Bool)

(assert (= bs!1030875 (and b!4635733 b!4635691)))

(assert (=> bs!1030875 (= (= (ListMap!4362 Nil!51650) lt!1798008) (= lambda!194932 lambda!194917))))

(assert (=> bs!1030868 (= lambda!194932 lambda!194928)))

(declare-fun bs!1030876 () Bool)

(assert (= bs!1030876 (and b!4635733 d!1461525)))

(assert (=> bs!1030876 (= (= (ListMap!4362 Nil!51650) lt!1797984) (= lambda!194932 lambda!194913))))

(assert (=> bs!1030866 (= (= (ListMap!4362 Nil!51650) lt!1797511) (= lambda!194932 lambda!194911))))

(assert (=> bs!1030875 (= lambda!194932 lambda!194916)))

(declare-fun bs!1030877 () Bool)

(assert (= bs!1030877 (and b!4635733 d!1461501)))

(assert (=> bs!1030877 (not (= lambda!194932 lambda!194819))))

(assert (=> b!4635733 true))

(declare-fun lambda!194933 () Int)

(declare-fun lt!1798102 () ListMap!4361)

(assert (=> bs!1030865 (= (= lt!1798102 lt!1798033) (= lambda!194933 lambda!194923))))

(assert (=> bs!1030866 (= (= lt!1798102 lt!1797985) (= lambda!194933 lambda!194912))))

(assert (=> bs!1030867 (= (= lt!1798102 lt!1798007) (= lambda!194933 lambda!194918))))

(assert (=> bs!1030868 (= (= lt!1798102 lt!1798081) (= lambda!194933 lambda!194929))))

(assert (=> bs!1030869 (= (= lt!1798102 lt!1798034) (= lambda!194933 lambda!194922))))

(assert (=> bs!1030870 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194915))))

(assert (=> bs!1030871 (= (= lt!1798102 lt!1797511) (= lambda!194933 lambda!194909))))

(assert (=> bs!1030872 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194920))))

(assert (=> bs!1030864 (= (= lt!1798102 lt!1798080) (= lambda!194933 lambda!194930))))

(assert (=> b!4635733 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194932))))

(assert (=> bs!1030873 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194927))))

(assert (=> bs!1030869 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194921))))

(assert (=> bs!1030874 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194931))))

(assert (=> bs!1030875 (= (= lt!1798102 lt!1798008) (= lambda!194933 lambda!194917))))

(assert (=> bs!1030868 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194928))))

(assert (=> bs!1030876 (= (= lt!1798102 lt!1797984) (= lambda!194933 lambda!194913))))

(assert (=> bs!1030866 (= (= lt!1798102 lt!1797511) (= lambda!194933 lambda!194911))))

(assert (=> bs!1030875 (= (= lt!1798102 (ListMap!4362 Nil!51650)) (= lambda!194933 lambda!194916))))

(assert (=> bs!1030877 (not (= lambda!194933 lambda!194819))))

(assert (=> b!4635733 true))

(declare-fun bs!1030878 () Bool)

(declare-fun d!1461647 () Bool)

(assert (= bs!1030878 (and d!1461647 b!4635733)))

(declare-fun lambda!194934 () Int)

(declare-fun lt!1798101 () ListMap!4361)

(assert (=> bs!1030878 (= (= lt!1798101 lt!1798102) (= lambda!194934 lambda!194933))))

(declare-fun bs!1030879 () Bool)

(assert (= bs!1030879 (and d!1461647 d!1461625)))

(assert (=> bs!1030879 (= (= lt!1798101 lt!1798033) (= lambda!194934 lambda!194923))))

(declare-fun bs!1030880 () Bool)

(assert (= bs!1030880 (and d!1461647 b!4635678)))

(assert (=> bs!1030880 (= (= lt!1798101 lt!1797985) (= lambda!194934 lambda!194912))))

(declare-fun bs!1030881 () Bool)

(assert (= bs!1030881 (and d!1461647 d!1461609)))

(assert (=> bs!1030881 (= (= lt!1798101 lt!1798007) (= lambda!194934 lambda!194918))))

(declare-fun bs!1030882 () Bool)

(assert (= bs!1030882 (and d!1461647 b!4635728)))

(assert (=> bs!1030882 (= (= lt!1798101 lt!1798081) (= lambda!194934 lambda!194929))))

(declare-fun bs!1030883 () Bool)

(assert (= bs!1030883 (and d!1461647 b!4635708)))

(assert (=> bs!1030883 (= (= lt!1798101 lt!1798034) (= lambda!194934 lambda!194922))))

(declare-fun bs!1030884 () Bool)

(assert (= bs!1030884 (and d!1461647 b!4635693)))

(assert (=> bs!1030884 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194915))))

(declare-fun bs!1030885 () Bool)

(assert (= bs!1030885 (and d!1461647 b!4635680)))

(assert (=> bs!1030885 (= (= lt!1798101 lt!1797511) (= lambda!194934 lambda!194909))))

(declare-fun bs!1030886 () Bool)

(assert (= bs!1030886 (and d!1461647 b!4635710)))

(assert (=> bs!1030886 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194920))))

(declare-fun bs!1030887 () Bool)

(assert (= bs!1030887 (and d!1461647 d!1461645)))

(assert (=> bs!1030887 (= (= lt!1798101 lt!1798080) (= lambda!194934 lambda!194930))))

(assert (=> bs!1030878 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194932))))

(declare-fun bs!1030888 () Bool)

(assert (= bs!1030888 (and d!1461647 b!4635730)))

(assert (=> bs!1030888 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194927))))

(assert (=> bs!1030883 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194921))))

(declare-fun bs!1030889 () Bool)

(assert (= bs!1030889 (and d!1461647 b!4635735)))

(assert (=> bs!1030889 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194931))))

(declare-fun bs!1030890 () Bool)

(assert (= bs!1030890 (and d!1461647 b!4635691)))

(assert (=> bs!1030890 (= (= lt!1798101 lt!1798008) (= lambda!194934 lambda!194917))))

(assert (=> bs!1030882 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194928))))

(declare-fun bs!1030891 () Bool)

(assert (= bs!1030891 (and d!1461647 d!1461525)))

(assert (=> bs!1030891 (= (= lt!1798101 lt!1797984) (= lambda!194934 lambda!194913))))

(assert (=> bs!1030880 (= (= lt!1798101 lt!1797511) (= lambda!194934 lambda!194911))))

(assert (=> bs!1030890 (= (= lt!1798101 (ListMap!4362 Nil!51650)) (= lambda!194934 lambda!194916))))

(declare-fun bs!1030892 () Bool)

(assert (= bs!1030892 (and d!1461647 d!1461501)))

(assert (=> bs!1030892 (not (= lambda!194934 lambda!194819))))

(assert (=> d!1461647 true))

(declare-fun b!4635731 () Bool)

(declare-fun res!1945833 () Bool)

(declare-fun e!2891890 () Bool)

(assert (=> b!4635731 (=> (not res!1945833) (not e!2891890))))

(assert (=> b!4635731 (= res!1945833 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194934))))

(declare-fun bm!323544 () Bool)

(declare-fun call!323550 () Unit!114251)

(assert (=> bm!323544 (= call!323550 (lemmaContainsAllItsOwnKeys!542 (ListMap!4362 Nil!51650)))))

(declare-fun b!4635732 () Bool)

(assert (=> b!4635732 (= e!2891890 (invariantList!1240 (toList!5057 lt!1798101)))))

(declare-fun b!4635734 () Bool)

(declare-fun e!2891888 () Bool)

(declare-fun call!323551 () Bool)

(assert (=> b!4635734 (= e!2891888 call!323551)))

(declare-fun c!793447 () Bool)

(declare-fun bm!323545 () Bool)

(assert (=> bm!323545 (= call!323551 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) (ite c!793447 lambda!194931 lambda!194933)))))

(declare-fun call!323549 () Bool)

(declare-fun bm!323546 () Bool)

(assert (=> bm!323546 (= call!323549 (forall!10896 (ite c!793447 (toList!5057 (ListMap!4362 Nil!51650)) lt!1797525) (ite c!793447 lambda!194931 lambda!194933)))))

(declare-fun e!2891889 () ListMap!4361)

(assert (=> b!4635735 (= e!2891889 (ListMap!4362 Nil!51650))))

(declare-fun lt!1798115 () Unit!114251)

(assert (=> b!4635735 (= lt!1798115 call!323550)))

(assert (=> b!4635735 call!323551))

(declare-fun lt!1798098 () Unit!114251)

(assert (=> b!4635735 (= lt!1798098 lt!1798115)))

(assert (=> b!4635735 call!323549))

(declare-fun lt!1798110 () Unit!114251)

(declare-fun Unit!114362 () Unit!114251)

(assert (=> b!4635735 (= lt!1798110 Unit!114362)))

(assert (=> b!4635733 (= e!2891889 lt!1798102)))

(declare-fun lt!1798104 () ListMap!4361)

(assert (=> b!4635733 (= lt!1798104 (+!1912 (ListMap!4362 Nil!51650) (h!57736 lt!1797525)))))

(assert (=> b!4635733 (= lt!1798102 (addToMapMapFromBucket!1007 (t!358842 lt!1797525) (+!1912 (ListMap!4362 Nil!51650) (h!57736 lt!1797525))))))

(declare-fun lt!1798100 () Unit!114251)

(assert (=> b!4635733 (= lt!1798100 call!323550)))

(assert (=> b!4635733 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194932)))

(declare-fun lt!1798097 () Unit!114251)

(assert (=> b!4635733 (= lt!1798097 lt!1798100)))

(assert (=> b!4635733 (forall!10896 (toList!5057 lt!1798104) lambda!194933)))

(declare-fun lt!1798106 () Unit!114251)

(declare-fun Unit!114363 () Unit!114251)

(assert (=> b!4635733 (= lt!1798106 Unit!114363)))

(assert (=> b!4635733 (forall!10896 (t!358842 lt!1797525) lambda!194933)))

(declare-fun lt!1798107 () Unit!114251)

(declare-fun Unit!114364 () Unit!114251)

(assert (=> b!4635733 (= lt!1798107 Unit!114364)))

(declare-fun lt!1798099 () Unit!114251)

(declare-fun Unit!114365 () Unit!114251)

(assert (=> b!4635733 (= lt!1798099 Unit!114365)))

(declare-fun lt!1798116 () Unit!114251)

(assert (=> b!4635733 (= lt!1798116 (forallContained!3128 (toList!5057 lt!1798104) lambda!194933 (h!57736 lt!1797525)))))

(assert (=> b!4635733 (contains!14771 lt!1798104 (_1!29609 (h!57736 lt!1797525)))))

(declare-fun lt!1798105 () Unit!114251)

(declare-fun Unit!114366 () Unit!114251)

(assert (=> b!4635733 (= lt!1798105 Unit!114366)))

(assert (=> b!4635733 (contains!14771 lt!1798102 (_1!29609 (h!57736 lt!1797525)))))

(declare-fun lt!1798113 () Unit!114251)

(declare-fun Unit!114367 () Unit!114251)

(assert (=> b!4635733 (= lt!1798113 Unit!114367)))

(assert (=> b!4635733 (forall!10896 lt!1797525 lambda!194933)))

(declare-fun lt!1798108 () Unit!114251)

(declare-fun Unit!114368 () Unit!114251)

(assert (=> b!4635733 (= lt!1798108 Unit!114368)))

(assert (=> b!4635733 (forall!10896 (toList!5057 lt!1798104) lambda!194933)))

(declare-fun lt!1798109 () Unit!114251)

(declare-fun Unit!114369 () Unit!114251)

(assert (=> b!4635733 (= lt!1798109 Unit!114369)))

(declare-fun lt!1798096 () Unit!114251)

(declare-fun Unit!114370 () Unit!114251)

(assert (=> b!4635733 (= lt!1798096 Unit!114370)))

(declare-fun lt!1798103 () Unit!114251)

(assert (=> b!4635733 (= lt!1798103 (addForallContainsKeyThenBeforeAdding!541 (ListMap!4362 Nil!51650) lt!1798102 (_1!29609 (h!57736 lt!1797525)) (_2!29609 (h!57736 lt!1797525))))))

(assert (=> b!4635733 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194933)))

(declare-fun lt!1798112 () Unit!114251)

(assert (=> b!4635733 (= lt!1798112 lt!1798103)))

(assert (=> b!4635733 (forall!10896 (toList!5057 (ListMap!4362 Nil!51650)) lambda!194933)))

(declare-fun lt!1798111 () Unit!114251)

(declare-fun Unit!114371 () Unit!114251)

(assert (=> b!4635733 (= lt!1798111 Unit!114371)))

(declare-fun res!1945832 () Bool)

(assert (=> b!4635733 (= res!1945832 call!323549)))

(assert (=> b!4635733 (=> (not res!1945832) (not e!2891888))))

(assert (=> b!4635733 e!2891888))

(declare-fun lt!1798114 () Unit!114251)

(declare-fun Unit!114372 () Unit!114251)

(assert (=> b!4635733 (= lt!1798114 Unit!114372)))

(assert (=> d!1461647 e!2891890))

(declare-fun res!1945831 () Bool)

(assert (=> d!1461647 (=> (not res!1945831) (not e!2891890))))

(assert (=> d!1461647 (= res!1945831 (forall!10896 lt!1797525 lambda!194934))))

(assert (=> d!1461647 (= lt!1798101 e!2891889)))

(assert (=> d!1461647 (= c!793447 ((_ is Nil!51650) lt!1797525))))

(assert (=> d!1461647 (noDuplicateKeys!1546 lt!1797525)))

(assert (=> d!1461647 (= (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1798101)))

(assert (= (and d!1461647 c!793447) b!4635735))

(assert (= (and d!1461647 (not c!793447)) b!4635733))

(assert (= (and b!4635733 res!1945832) b!4635734))

(assert (= (or b!4635735 b!4635733) bm!323544))

(assert (= (or b!4635735 b!4635733) bm!323546))

(assert (= (or b!4635735 b!4635734) bm!323545))

(assert (= (and d!1461647 res!1945831) b!4635731))

(assert (= (and b!4635731 res!1945833) b!4635732))

(declare-fun m!5491983 () Bool)

(assert (=> d!1461647 m!5491983))

(declare-fun m!5491985 () Bool)

(assert (=> d!1461647 m!5491985))

(declare-fun m!5491987 () Bool)

(assert (=> b!4635732 m!5491987))

(declare-fun m!5491989 () Bool)

(assert (=> bm!323545 m!5491989))

(declare-fun m!5491991 () Bool)

(assert (=> b!4635731 m!5491991))

(declare-fun m!5491993 () Bool)

(assert (=> bm!323546 m!5491993))

(declare-fun m!5491995 () Bool)

(assert (=> b!4635733 m!5491995))

(declare-fun m!5491997 () Bool)

(assert (=> b!4635733 m!5491997))

(declare-fun m!5491999 () Bool)

(assert (=> b!4635733 m!5491999))

(declare-fun m!5492001 () Bool)

(assert (=> b!4635733 m!5492001))

(assert (=> b!4635733 m!5492001))

(declare-fun m!5492003 () Bool)

(assert (=> b!4635733 m!5492003))

(declare-fun m!5492005 () Bool)

(assert (=> b!4635733 m!5492005))

(declare-fun m!5492007 () Bool)

(assert (=> b!4635733 m!5492007))

(declare-fun m!5492009 () Bool)

(assert (=> b!4635733 m!5492009))

(assert (=> b!4635733 m!5491995))

(declare-fun m!5492011 () Bool)

(assert (=> b!4635733 m!5492011))

(declare-fun m!5492013 () Bool)

(assert (=> b!4635733 m!5492013))

(declare-fun m!5492015 () Bool)

(assert (=> b!4635733 m!5492015))

(assert (=> b!4635733 m!5492007))

(assert (=> bm!323544 m!5491837))

(assert (=> b!4635309 d!1461647))

(declare-fun bs!1030893 () Bool)

(declare-fun d!1461649 () Bool)

(assert (= bs!1030893 (and d!1461649 d!1461523)))

(declare-fun lambda!194935 () Int)

(assert (=> bs!1030893 (= lambda!194935 lambda!194861)))

(declare-fun bs!1030894 () Bool)

(assert (= bs!1030894 (and d!1461649 d!1461641)))

(assert (=> bs!1030894 (= lambda!194935 lambda!194926)))

(declare-fun bs!1030895 () Bool)

(assert (= bs!1030895 (and d!1461649 d!1461483)))

(assert (=> bs!1030895 (= lambda!194935 lambda!194816)))

(declare-fun bs!1030896 () Bool)

(assert (= bs!1030896 (and d!1461649 d!1461507)))

(assert (=> bs!1030896 (= lambda!194935 lambda!194844)))

(declare-fun bs!1030897 () Bool)

(assert (= bs!1030897 (and d!1461649 d!1461509)))

(assert (=> bs!1030897 (= lambda!194935 lambda!194847)))

(declare-fun bs!1030898 () Bool)

(assert (= bs!1030898 (and d!1461649 b!4635304)))

(assert (=> bs!1030898 (= lambda!194935 lambda!194790)))

(declare-fun bs!1030899 () Bool)

(assert (= bs!1030899 (and d!1461649 d!1461623)))

(assert (=> bs!1030899 (= lambda!194935 lambda!194919)))

(declare-fun bs!1030900 () Bool)

(assert (= bs!1030900 (and d!1461649 d!1461453)))

(assert (=> bs!1030900 (= lambda!194935 lambda!194803)))

(declare-fun bs!1030901 () Bool)

(assert (= bs!1030901 (and d!1461649 d!1461603)))

(assert (=> bs!1030901 (= lambda!194935 lambda!194914)))

(declare-fun lt!1798117 () ListMap!4361)

(assert (=> d!1461649 (invariantList!1240 (toList!5057 lt!1798117))))

(declare-fun e!2891891 () ListMap!4361)

(assert (=> d!1461649 (= lt!1798117 e!2891891)))

(declare-fun c!793448 () Bool)

(assert (=> d!1461649 (= c!793448 ((_ is Cons!51651) lt!1797521))))

(assert (=> d!1461649 (forall!10894 lt!1797521 lambda!194935)))

(assert (=> d!1461649 (= (extractMap!1602 lt!1797521) lt!1798117)))

(declare-fun b!4635736 () Bool)

(assert (=> b!4635736 (= e!2891891 (addToMapMapFromBucket!1007 (_2!29610 (h!57737 lt!1797521)) (extractMap!1602 (t!358843 lt!1797521))))))

(declare-fun b!4635737 () Bool)

(assert (=> b!4635737 (= e!2891891 (ListMap!4362 Nil!51650))))

(assert (= (and d!1461649 c!793448) b!4635736))

(assert (= (and d!1461649 (not c!793448)) b!4635737))

(declare-fun m!5492017 () Bool)

(assert (=> d!1461649 m!5492017))

(declare-fun m!5492019 () Bool)

(assert (=> d!1461649 m!5492019))

(declare-fun m!5492021 () Bool)

(assert (=> b!4635736 m!5492021))

(assert (=> b!4635736 m!5492021))

(declare-fun m!5492023 () Bool)

(assert (=> b!4635736 m!5492023))

(assert (=> b!4635309 d!1461649))

(declare-fun d!1461651 () Bool)

(assert (=> d!1461651 (= (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797494 lt!1797508) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1797494)) (= (content!8904 (toList!5057 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797494 lt!1797508) (ListMap!4362 Nil!51650)))) (content!8904 (toList!5057 (+!1912 (addToMapMapFromBucket!1007 lt!1797508 (ListMap!4362 Nil!51650)) lt!1797494)))))))

(declare-fun bs!1030902 () Bool)

(assert (= bs!1030902 d!1461651))

(declare-fun m!5492025 () Bool)

(assert (=> bs!1030902 m!5492025))

(declare-fun m!5492027 () Bool)

(assert (=> bs!1030902 m!5492027))

(assert (=> b!4635309 d!1461651))

(declare-fun d!1461653 () Bool)

(assert (=> d!1461653 (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797510 lt!1797525) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1797510))))

(declare-fun lt!1798118 () Unit!114251)

(assert (=> d!1461653 (= lt!1798118 (choose!31669 lt!1797510 lt!1797525 (ListMap!4362 Nil!51650)))))

(assert (=> d!1461653 (noDuplicateKeys!1546 lt!1797525)))

(assert (=> d!1461653 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!112 lt!1797510 lt!1797525 (ListMap!4362 Nil!51650)) lt!1798118)))

(declare-fun bs!1030903 () Bool)

(assert (= bs!1030903 d!1461653))

(assert (=> bs!1030903 m!5490963))

(assert (=> bs!1030903 m!5491985))

(assert (=> bs!1030903 m!5490991))

(assert (=> bs!1030903 m!5490963))

(assert (=> bs!1030903 m!5490965))

(assert (=> bs!1030903 m!5490967))

(declare-fun m!5492029 () Bool)

(assert (=> bs!1030903 m!5492029))

(assert (=> bs!1030903 m!5490991))

(assert (=> bs!1030903 m!5490965))

(assert (=> b!4635309 d!1461653))

(declare-fun d!1461655 () Bool)

(assert (=> d!1461655 (= (eq!861 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797510 lt!1797525) (ListMap!4362 Nil!51650)) (+!1912 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1797510)) (= (content!8904 (toList!5057 (addToMapMapFromBucket!1007 (Cons!51650 lt!1797510 lt!1797525) (ListMap!4362 Nil!51650)))) (content!8904 (toList!5057 (+!1912 (addToMapMapFromBucket!1007 lt!1797525 (ListMap!4362 Nil!51650)) lt!1797510)))))))

(declare-fun bs!1030904 () Bool)

(assert (= bs!1030904 d!1461655))

(declare-fun m!5492031 () Bool)

(assert (=> bs!1030904 m!5492031))

(declare-fun m!5492033 () Bool)

(assert (=> bs!1030904 m!5492033))

(assert (=> b!4635309 d!1461655))

(declare-fun d!1461657 () Bool)

(declare-fun res!1945838 () Bool)

(declare-fun e!2891896 () Bool)

(assert (=> d!1461657 (=> res!1945838 e!2891896)))

(assert (=> d!1461657 (= res!1945838 ((_ is Nil!51651) lt!1797499))))

(assert (=> d!1461657 (= (forall!10894 lt!1797499 lambda!194790) e!2891896)))

(declare-fun b!4635742 () Bool)

(declare-fun e!2891897 () Bool)

(assert (=> b!4635742 (= e!2891896 e!2891897)))

(declare-fun res!1945839 () Bool)

(assert (=> b!4635742 (=> (not res!1945839) (not e!2891897))))

(assert (=> b!4635742 (= res!1945839 (dynLambda!21534 lambda!194790 (h!57737 lt!1797499)))))

(declare-fun b!4635743 () Bool)

(assert (=> b!4635743 (= e!2891897 (forall!10894 (t!358843 lt!1797499) lambda!194790))))

(assert (= (and d!1461657 (not res!1945838)) b!4635742))

(assert (= (and b!4635742 res!1945839) b!4635743))

(declare-fun b_lambda!170999 () Bool)

(assert (=> (not b_lambda!170999) (not b!4635742)))

(declare-fun m!5492035 () Bool)

(assert (=> b!4635742 m!5492035))

(declare-fun m!5492037 () Bool)

(assert (=> b!4635743 m!5492037))

(assert (=> b!4635311 d!1461657))

(declare-fun d!1461659 () Bool)

(declare-fun res!1945840 () Bool)

(declare-fun e!2891898 () Bool)

(assert (=> d!1461659 (=> res!1945840 e!2891898)))

(assert (=> d!1461659 (= res!1945840 (not ((_ is Cons!51650) oldBucket!40)))))

(assert (=> d!1461659 (= (noDuplicateKeys!1546 oldBucket!40) e!2891898)))

(declare-fun b!4635744 () Bool)

(declare-fun e!2891899 () Bool)

(assert (=> b!4635744 (= e!2891898 e!2891899)))

(declare-fun res!1945841 () Bool)

(assert (=> b!4635744 (=> (not res!1945841) (not e!2891899))))

(assert (=> b!4635744 (= res!1945841 (not (containsKey!2558 (t!358842 oldBucket!40) (_1!29609 (h!57736 oldBucket!40)))))))

(declare-fun b!4635745 () Bool)

(assert (=> b!4635745 (= e!2891899 (noDuplicateKeys!1546 (t!358842 oldBucket!40)))))

(assert (= (and d!1461659 (not res!1945840)) b!4635744))

(assert (= (and b!4635744 res!1945841) b!4635745))

(declare-fun m!5492039 () Bool)

(assert (=> b!4635744 m!5492039))

(assert (=> b!4635745 m!5491783))

(assert (=> start!465688 d!1461659))

(declare-fun bs!1030905 () Bool)

(declare-fun d!1461661 () Bool)

(assert (= bs!1030905 (and d!1461661 b!4635733)))

(declare-fun lambda!194936 () Int)

(assert (=> bs!1030905 (not (= lambda!194936 lambda!194933))))

(declare-fun bs!1030906 () Bool)

(assert (= bs!1030906 (and d!1461661 d!1461647)))

(assert (=> bs!1030906 (not (= lambda!194936 lambda!194934))))

(declare-fun bs!1030907 () Bool)

(assert (= bs!1030907 (and d!1461661 d!1461625)))

(assert (=> bs!1030907 (not (= lambda!194936 lambda!194923))))

(declare-fun bs!1030908 () Bool)

(assert (= bs!1030908 (and d!1461661 b!4635678)))

(assert (=> bs!1030908 (not (= lambda!194936 lambda!194912))))

(declare-fun bs!1030909 () Bool)

(assert (= bs!1030909 (and d!1461661 d!1461609)))

(assert (=> bs!1030909 (not (= lambda!194936 lambda!194918))))

(declare-fun bs!1030910 () Bool)

(assert (= bs!1030910 (and d!1461661 b!4635728)))

(assert (=> bs!1030910 (not (= lambda!194936 lambda!194929))))

(declare-fun bs!1030911 () Bool)

(assert (= bs!1030911 (and d!1461661 b!4635708)))

(assert (=> bs!1030911 (not (= lambda!194936 lambda!194922))))

(declare-fun bs!1030912 () Bool)

(assert (= bs!1030912 (and d!1461661 b!4635693)))

(assert (=> bs!1030912 (not (= lambda!194936 lambda!194915))))

(declare-fun bs!1030913 () Bool)

(assert (= bs!1030913 (and d!1461661 b!4635680)))

(assert (=> bs!1030913 (not (= lambda!194936 lambda!194909))))

(declare-fun bs!1030914 () Bool)

(assert (= bs!1030914 (and d!1461661 b!4635710)))

(assert (=> bs!1030914 (not (= lambda!194936 lambda!194920))))

(declare-fun bs!1030915 () Bool)

(assert (= bs!1030915 (and d!1461661 d!1461645)))

(assert (=> bs!1030915 (not (= lambda!194936 lambda!194930))))

(assert (=> bs!1030905 (not (= lambda!194936 lambda!194932))))

(declare-fun bs!1030916 () Bool)

(assert (= bs!1030916 (and d!1461661 b!4635730)))

(assert (=> bs!1030916 (not (= lambda!194936 lambda!194927))))

(assert (=> bs!1030911 (not (= lambda!194936 lambda!194921))))

(declare-fun bs!1030917 () Bool)

(assert (= bs!1030917 (and d!1461661 b!4635735)))

(assert (=> bs!1030917 (not (= lambda!194936 lambda!194931))))

(declare-fun bs!1030918 () Bool)

(assert (= bs!1030918 (and d!1461661 b!4635691)))

(assert (=> bs!1030918 (not (= lambda!194936 lambda!194917))))

(assert (=> bs!1030910 (not (= lambda!194936 lambda!194928))))

(declare-fun bs!1030919 () Bool)

(assert (= bs!1030919 (and d!1461661 d!1461525)))

(assert (=> bs!1030919 (not (= lambda!194936 lambda!194913))))

(assert (=> bs!1030908 (not (= lambda!194936 lambda!194911))))

(assert (=> bs!1030918 (not (= lambda!194936 lambda!194916))))

(declare-fun bs!1030920 () Bool)

(assert (= bs!1030920 (and d!1461661 d!1461501)))

(assert (=> bs!1030920 (= lambda!194936 lambda!194819)))

(assert (=> d!1461661 true))

(assert (=> d!1461661 true))

(assert (=> d!1461661 (= (allKeysSameHash!1400 newBucket!224 hash!414 hashF!1389) (forall!10896 newBucket!224 lambda!194936))))

(declare-fun bs!1030921 () Bool)

(assert (= bs!1030921 d!1461661))

(declare-fun m!5492041 () Bool)

(assert (=> bs!1030921 m!5492041))

(assert (=> b!4635321 d!1461661))

(declare-fun d!1461663 () Bool)

(declare-fun e!2891900 () Bool)

(assert (=> d!1461663 e!2891900))

(declare-fun res!1945842 () Bool)

(assert (=> d!1461663 (=> (not res!1945842) (not e!2891900))))

(declare-fun lt!1798119 () ListMap!4361)

(assert (=> d!1461663 (= res!1945842 (not (contains!14771 lt!1798119 key!4968)))))

(assert (=> d!1461663 (= lt!1798119 (ListMap!4362 (removePresrvNoDuplicatedKeys!288 (toList!5057 lt!1797517) key!4968)))))

(assert (=> d!1461663 (= (-!586 lt!1797517 key!4968) lt!1798119)))

(declare-fun b!4635746 () Bool)

(assert (=> b!4635746 (= e!2891900 (= ((_ map and) (content!8905 (keys!18230 lt!1797517)) ((_ map not) (store ((as const (Array K!13015 Bool)) false) key!4968 true))) (content!8905 (keys!18230 lt!1798119))))))

(assert (= (and d!1461663 res!1945842) b!4635746))

(declare-fun m!5492043 () Bool)

(assert (=> d!1461663 m!5492043))

(declare-fun m!5492045 () Bool)

(assert (=> d!1461663 m!5492045))

(assert (=> b!4635746 m!5491895))

(assert (=> b!4635746 m!5491895))

(declare-fun m!5492047 () Bool)

(assert (=> b!4635746 m!5492047))

(declare-fun m!5492049 () Bool)

(assert (=> b!4635746 m!5492049))

(assert (=> b!4635746 m!5492049))

(declare-fun m!5492051 () Bool)

(assert (=> b!4635746 m!5492051))

(assert (=> b!4635746 m!5491063))

(assert (=> b!4635312 d!1461663))

(declare-fun d!1461665 () Bool)

(declare-fun e!2891901 () Bool)

(assert (=> d!1461665 e!2891901))

(declare-fun res!1945843 () Bool)

(assert (=> d!1461665 (=> (not res!1945843) (not e!2891901))))

(declare-fun lt!1798120 () ListMap!4361)

(assert (=> d!1461665 (= res!1945843 (contains!14771 lt!1798120 (_1!29609 (h!57736 oldBucket!40))))))

(declare-fun lt!1798122 () List!51774)

(assert (=> d!1461665 (= lt!1798120 (ListMap!4362 lt!1798122))))

(declare-fun lt!1798123 () Unit!114251)

(declare-fun lt!1798121 () Unit!114251)

(assert (=> d!1461665 (= lt!1798123 lt!1798121)))

(assert (=> d!1461665 (= (getValueByKey!1523 lt!1798122 (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461665 (= lt!1798121 (lemmaContainsTupThenGetReturnValue!884 lt!1798122 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461665 (= lt!1798122 (insertNoDuplicatedKeys!392 (toList!5057 lt!1797517) (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461665 (= (+!1912 lt!1797517 (h!57736 oldBucket!40)) lt!1798120)))

(declare-fun b!4635747 () Bool)

(declare-fun res!1945844 () Bool)

(assert (=> b!4635747 (=> (not res!1945844) (not e!2891901))))

(assert (=> b!4635747 (= res!1945844 (= (getValueByKey!1523 (toList!5057 lt!1798120) (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun b!4635748 () Bool)

(assert (=> b!4635748 (= e!2891901 (contains!14774 (toList!5057 lt!1798120) (h!57736 oldBucket!40)))))

(assert (= (and d!1461665 res!1945843) b!4635747))

(assert (= (and b!4635747 res!1945844) b!4635748))

(declare-fun m!5492053 () Bool)

(assert (=> d!1461665 m!5492053))

(declare-fun m!5492055 () Bool)

(assert (=> d!1461665 m!5492055))

(declare-fun m!5492057 () Bool)

(assert (=> d!1461665 m!5492057))

(declare-fun m!5492059 () Bool)

(assert (=> d!1461665 m!5492059))

(declare-fun m!5492061 () Bool)

(assert (=> b!4635747 m!5492061))

(declare-fun m!5492063 () Bool)

(assert (=> b!4635748 m!5492063))

(assert (=> b!4635312 d!1461665))

(declare-fun d!1461667 () Bool)

(declare-fun e!2891902 () Bool)

(assert (=> d!1461667 e!2891902))

(declare-fun res!1945845 () Bool)

(assert (=> d!1461667 (=> (not res!1945845) (not e!2891902))))

(declare-fun lt!1798124 () ListMap!4361)

(assert (=> d!1461667 (= res!1945845 (not (contains!14771 lt!1798124 key!4968)))))

(assert (=> d!1461667 (= lt!1798124 (ListMap!4362 (removePresrvNoDuplicatedKeys!288 (toList!5057 lt!1797513) key!4968)))))

(assert (=> d!1461667 (= (-!586 lt!1797513 key!4968) lt!1798124)))

(declare-fun b!4635749 () Bool)

(assert (=> b!4635749 (= e!2891902 (= ((_ map and) (content!8905 (keys!18230 lt!1797513)) ((_ map not) (store ((as const (Array K!13015 Bool)) false) key!4968 true))) (content!8905 (keys!18230 lt!1798124))))))

(assert (= (and d!1461667 res!1945845) b!4635749))

(declare-fun m!5492065 () Bool)

(assert (=> d!1461667 m!5492065))

(declare-fun m!5492067 () Bool)

(assert (=> d!1461667 m!5492067))

(declare-fun m!5492069 () Bool)

(assert (=> b!4635749 m!5492069))

(assert (=> b!4635749 m!5492069))

(declare-fun m!5492071 () Bool)

(assert (=> b!4635749 m!5492071))

(declare-fun m!5492073 () Bool)

(assert (=> b!4635749 m!5492073))

(assert (=> b!4635749 m!5492073))

(declare-fun m!5492075 () Bool)

(assert (=> b!4635749 m!5492075))

(assert (=> b!4635749 m!5491063))

(assert (=> b!4635312 d!1461667))

(declare-fun d!1461669 () Bool)

(assert (=> d!1461669 (= (eq!861 lt!1797500 lt!1797515) (= (content!8904 (toList!5057 lt!1797500)) (content!8904 (toList!5057 lt!1797515))))))

(declare-fun bs!1030922 () Bool)

(assert (= bs!1030922 d!1461669))

(declare-fun m!5492077 () Bool)

(assert (=> bs!1030922 m!5492077))

(declare-fun m!5492079 () Bool)

(assert (=> bs!1030922 m!5492079))

(assert (=> b!4635312 d!1461669))

(declare-fun d!1461671 () Bool)

(declare-fun e!2891903 () Bool)

(assert (=> d!1461671 e!2891903))

(declare-fun res!1945846 () Bool)

(assert (=> d!1461671 (=> (not res!1945846) (not e!2891903))))

(declare-fun lt!1798125 () ListMap!4361)

(assert (=> d!1461671 (= res!1945846 (contains!14771 lt!1798125 (_1!29609 (h!57736 oldBucket!40))))))

(declare-fun lt!1798127 () List!51774)

(assert (=> d!1461671 (= lt!1798125 (ListMap!4362 lt!1798127))))

(declare-fun lt!1798128 () Unit!114251)

(declare-fun lt!1798126 () Unit!114251)

(assert (=> d!1461671 (= lt!1798128 lt!1798126)))

(assert (=> d!1461671 (= (getValueByKey!1523 lt!1798127 (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461671 (= lt!1798126 (lemmaContainsTupThenGetReturnValue!884 lt!1798127 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461671 (= lt!1798127 (insertNoDuplicatedKeys!392 (toList!5057 lt!1797515) (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461671 (= (+!1912 lt!1797515 (h!57736 oldBucket!40)) lt!1798125)))

(declare-fun b!4635750 () Bool)

(declare-fun res!1945847 () Bool)

(assert (=> b!4635750 (=> (not res!1945847) (not e!2891903))))

(assert (=> b!4635750 (= res!1945847 (= (getValueByKey!1523 (toList!5057 lt!1798125) (_1!29609 (h!57736 oldBucket!40))) (Some!11702 (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun b!4635751 () Bool)

(assert (=> b!4635751 (= e!2891903 (contains!14774 (toList!5057 lt!1798125) (h!57736 oldBucket!40)))))

(assert (= (and d!1461671 res!1945846) b!4635750))

(assert (= (and b!4635750 res!1945847) b!4635751))

(declare-fun m!5492081 () Bool)

(assert (=> d!1461671 m!5492081))

(declare-fun m!5492083 () Bool)

(assert (=> d!1461671 m!5492083))

(declare-fun m!5492085 () Bool)

(assert (=> d!1461671 m!5492085))

(declare-fun m!5492087 () Bool)

(assert (=> d!1461671 m!5492087))

(declare-fun m!5492089 () Bool)

(assert (=> b!4635750 m!5492089))

(declare-fun m!5492091 () Bool)

(assert (=> b!4635751 m!5492091))

(assert (=> b!4635312 d!1461671))

(declare-fun d!1461673 () Bool)

(declare-fun e!2891904 () Bool)

(assert (=> d!1461673 e!2891904))

(declare-fun res!1945848 () Bool)

(assert (=> d!1461673 (=> (not res!1945848) (not e!2891904))))

(declare-fun lt!1798129 () ListMap!4361)

(assert (=> d!1461673 (= res!1945848 (not (contains!14771 lt!1798129 key!4968)))))

(assert (=> d!1461673 (= lt!1798129 (ListMap!4362 (removePresrvNoDuplicatedKeys!288 (toList!5057 (+!1912 lt!1797517 (h!57736 oldBucket!40))) key!4968)))))

(assert (=> d!1461673 (= (-!586 (+!1912 lt!1797517 (h!57736 oldBucket!40)) key!4968) lt!1798129)))

(declare-fun b!4635752 () Bool)

(assert (=> b!4635752 (= e!2891904 (= ((_ map and) (content!8905 (keys!18230 (+!1912 lt!1797517 (h!57736 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13015 Bool)) false) key!4968 true))) (content!8905 (keys!18230 lt!1798129))))))

(assert (= (and d!1461673 res!1945848) b!4635752))

(declare-fun m!5492093 () Bool)

(assert (=> d!1461673 m!5492093))

(declare-fun m!5492095 () Bool)

(assert (=> d!1461673 m!5492095))

(assert (=> b!4635752 m!5490909))

(declare-fun m!5492097 () Bool)

(assert (=> b!4635752 m!5492097))

(assert (=> b!4635752 m!5492097))

(declare-fun m!5492099 () Bool)

(assert (=> b!4635752 m!5492099))

(declare-fun m!5492101 () Bool)

(assert (=> b!4635752 m!5492101))

(assert (=> b!4635752 m!5492101))

(declare-fun m!5492103 () Bool)

(assert (=> b!4635752 m!5492103))

(assert (=> b!4635752 m!5491063))

(assert (=> b!4635312 d!1461673))

(declare-fun d!1461675 () Bool)

(assert (=> d!1461675 (= (-!586 (+!1912 lt!1797517 (tuple2!52631 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)))) key!4968) (+!1912 (-!586 lt!1797517 key!4968) (tuple2!52631 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun lt!1798132 () Unit!114251)

(declare-fun choose!31674 (ListMap!4361 K!13015 V!13261 K!13015) Unit!114251)

(assert (=> d!1461675 (= lt!1798132 (choose!31674 lt!1797517 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)) key!4968))))

(assert (=> d!1461675 (not (= (_1!29609 (h!57736 oldBucket!40)) key!4968))))

(assert (=> d!1461675 (= (addRemoveCommutativeForDiffKeys!41 lt!1797517 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)) key!4968) lt!1798132)))

(declare-fun bs!1030923 () Bool)

(assert (= bs!1030923 d!1461675))

(declare-fun m!5492105 () Bool)

(assert (=> bs!1030923 m!5492105))

(assert (=> bs!1030923 m!5490919))

(declare-fun m!5492107 () Bool)

(assert (=> bs!1030923 m!5492107))

(declare-fun m!5492109 () Bool)

(assert (=> bs!1030923 m!5492109))

(assert (=> bs!1030923 m!5490919))

(assert (=> bs!1030923 m!5492109))

(declare-fun m!5492111 () Bool)

(assert (=> bs!1030923 m!5492111))

(assert (=> b!4635312 d!1461675))

(declare-fun d!1461677 () Bool)

(assert (=> d!1461677 (eq!861 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 lt!1797525) Nil!51651)) (-!586 (extractMap!1602 (Cons!51651 (tuple2!52633 hash!414 (t!358842 oldBucket!40)) Nil!51651)) key!4968))))

(declare-fun lt!1798135 () Unit!114251)

(declare-fun choose!31675 ((_ BitVec 64) List!51774 List!51774 K!13015 Hashable!5943) Unit!114251)

(assert (=> d!1461677 (= lt!1798135 (choose!31675 hash!414 (t!358842 oldBucket!40) lt!1797525 key!4968 hashF!1389))))

(assert (=> d!1461677 (noDuplicateKeys!1546 (t!358842 oldBucket!40))))

(assert (=> d!1461677 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!148 hash!414 (t!358842 oldBucket!40) lt!1797525 key!4968 hashF!1389) lt!1798135)))

(declare-fun bs!1030924 () Bool)

(assert (= bs!1030924 d!1461677))

(assert (=> bs!1030924 m!5490935))

(declare-fun m!5492113 () Bool)

(assert (=> bs!1030924 m!5492113))

(declare-fun m!5492115 () Bool)

(assert (=> bs!1030924 m!5492115))

(assert (=> bs!1030924 m!5491783))

(declare-fun m!5492117 () Bool)

(assert (=> bs!1030924 m!5492117))

(assert (=> bs!1030924 m!5490935))

(declare-fun m!5492119 () Bool)

(assert (=> bs!1030924 m!5492119))

(assert (=> bs!1030924 m!5492117))

(assert (=> bs!1030924 m!5492113))

(assert (=> b!4635312 d!1461677))

(declare-fun b!4635754 () Bool)

(declare-fun e!2891905 () List!51774)

(declare-fun e!2891906 () List!51774)

(assert (=> b!4635754 (= e!2891905 e!2891906)))

(declare-fun c!793450 () Bool)

(assert (=> b!4635754 (= c!793450 ((_ is Cons!51650) oldBucket!40))))

(declare-fun b!4635755 () Bool)

(assert (=> b!4635755 (= e!2891906 (Cons!51650 (h!57736 oldBucket!40) (removePairForKey!1169 (t!358842 oldBucket!40) key!4968)))))

(declare-fun b!4635756 () Bool)

(assert (=> b!4635756 (= e!2891906 Nil!51650)))

(declare-fun b!4635753 () Bool)

(assert (=> b!4635753 (= e!2891905 (t!358842 oldBucket!40))))

(declare-fun d!1461679 () Bool)

(declare-fun lt!1798136 () List!51774)

(assert (=> d!1461679 (not (containsKey!2558 lt!1798136 key!4968))))

(assert (=> d!1461679 (= lt!1798136 e!2891905)))

(declare-fun c!793449 () Bool)

(assert (=> d!1461679 (= c!793449 (and ((_ is Cons!51650) oldBucket!40) (= (_1!29609 (h!57736 oldBucket!40)) key!4968)))))

(assert (=> d!1461679 (noDuplicateKeys!1546 oldBucket!40)))

(assert (=> d!1461679 (= (removePairForKey!1169 oldBucket!40 key!4968) lt!1798136)))

(assert (= (and d!1461679 c!793449) b!4635753))

(assert (= (and d!1461679 (not c!793449)) b!4635754))

(assert (= (and b!4635754 c!793450) b!4635755))

(assert (= (and b!4635754 (not c!793450)) b!4635756))

(assert (=> b!4635755 m!5490999))

(declare-fun m!5492121 () Bool)

(assert (=> d!1461679 m!5492121))

(assert (=> d!1461679 m!5490869))

(assert (=> b!4635322 d!1461679))

(declare-fun d!1461681 () Bool)

(assert (=> d!1461681 (= (eq!861 lt!1797506 lt!1797518) (= (content!8904 (toList!5057 lt!1797506)) (content!8904 (toList!5057 lt!1797518))))))

(declare-fun bs!1030925 () Bool)

(assert (= bs!1030925 d!1461681))

(assert (=> bs!1030925 m!5491091))

(assert (=> bs!1030925 m!5491011))

(assert (=> b!4635301 d!1461681))

(declare-fun d!1461683 () Bool)

(assert (=> d!1461683 (= (eq!861 lt!1797514 (+!1912 lt!1797500 (h!57736 oldBucket!40))) (= (content!8904 (toList!5057 lt!1797514)) (content!8904 (toList!5057 (+!1912 lt!1797500 (h!57736 oldBucket!40))))))))

(declare-fun bs!1030926 () Bool)

(assert (= bs!1030926 d!1461683))

(declare-fun m!5492123 () Bool)

(assert (=> bs!1030926 m!5492123))

(assert (=> bs!1030926 m!5491093))

(assert (=> b!4635301 d!1461683))

(assert (=> b!4635301 d!1461451))

(declare-fun d!1461685 () Bool)

(assert (=> d!1461685 (eq!861 (+!1912 lt!1797515 (tuple2!52631 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)))) (+!1912 lt!1797500 (tuple2!52631 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40)))))))

(declare-fun lt!1798139 () Unit!114251)

(declare-fun choose!31676 (ListMap!4361 ListMap!4361 K!13015 V!13261) Unit!114251)

(assert (=> d!1461685 (= lt!1798139 (choose!31676 lt!1797515 lt!1797500 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))))))

(assert (=> d!1461685 (eq!861 lt!1797515 lt!1797500)))

(assert (=> d!1461685 (= (lemmaAddToEqMapsPreservesEq!58 lt!1797515 lt!1797500 (_1!29609 (h!57736 oldBucket!40)) (_2!29609 (h!57736 oldBucket!40))) lt!1798139)))

(declare-fun bs!1030927 () Bool)

(assert (= bs!1030927 d!1461685))

(declare-fun m!5492125 () Bool)

(assert (=> bs!1030927 m!5492125))

(assert (=> bs!1030927 m!5492125))

(declare-fun m!5492127 () Bool)

(assert (=> bs!1030927 m!5492127))

(declare-fun m!5492129 () Bool)

(assert (=> bs!1030927 m!5492129))

(declare-fun m!5492131 () Bool)

(assert (=> bs!1030927 m!5492131))

(assert (=> bs!1030927 m!5492127))

(declare-fun m!5492133 () Bool)

(assert (=> bs!1030927 m!5492133))

(assert (=> b!4635301 d!1461685))

(declare-fun e!2891909 () Bool)

(declare-fun b!4635761 () Bool)

(declare-fun tp!1342498 () Bool)

(assert (=> b!4635761 (= e!2891909 (and tp_is_empty!29477 tp_is_empty!29479 tp!1342498))))

(assert (=> b!4635310 (= tp!1342491 e!2891909)))

(assert (= (and b!4635310 ((_ is Cons!51650) (t!358842 oldBucket!40))) b!4635761))

(declare-fun tp!1342499 () Bool)

(declare-fun b!4635762 () Bool)

(declare-fun e!2891910 () Bool)

(assert (=> b!4635762 (= e!2891910 (and tp_is_empty!29477 tp_is_empty!29479 tp!1342499))))

(assert (=> b!4635307 (= tp!1342490 e!2891910)))

(assert (= (and b!4635307 ((_ is Cons!51650) (t!358842 newBucket!224))) b!4635762))

(declare-fun b_lambda!171001 () Bool)

(assert (= b_lambda!170999 (or b!4635304 b_lambda!171001)))

(declare-fun bs!1030928 () Bool)

(declare-fun d!1461687 () Bool)

(assert (= bs!1030928 (and d!1461687 b!4635304)))

(assert (=> bs!1030928 (= (dynLambda!21534 lambda!194790 (h!57737 lt!1797499)) (noDuplicateKeys!1546 (_2!29610 (h!57737 lt!1797499))))))

(declare-fun m!5492135 () Bool)

(assert (=> bs!1030928 m!5492135))

(assert (=> b!4635742 d!1461687))

(declare-fun b_lambda!171003 () Bool)

(assert (= b_lambda!170991 (or b!4635304 b_lambda!171003)))

(declare-fun bs!1030929 () Bool)

(declare-fun d!1461689 () Bool)

(assert (= bs!1030929 (and d!1461689 b!4635304)))

(assert (=> bs!1030929 (= (dynLambda!21534 lambda!194790 lt!1797523) (noDuplicateKeys!1546 (_2!29610 lt!1797523)))))

(declare-fun m!5492137 () Bool)

(assert (=> bs!1030929 m!5492137))

(assert (=> d!1461493 d!1461689))

(check-sat (not d!1461423) (not b!4635725) (not bm!323534) (not b!4635519) (not d!1461679) (not bm!323543) (not b!4635711) (not bm!323542) (not d!1461663) (not b!4635723) (not bm!323541) (not b!4635715) (not d!1461677) (not d!1461683) (not d!1461669) (not b!4635533) (not d!1461421) (not bm!323532) (not d!1461487) (not b!4635713) (not b!4635744) (not b!4635610) (not d!1461479) (not b!4635607) (not d!1461661) (not d!1461525) (not d!1461491) (not b!4635488) (not b!4635708) (not d!1461513) (not d!1461493) (not b!4635562) (not b!4635446) (not b!4635736) (not b!4635676) (not d!1461603) (not b!4635678) (not b!4635605) (not b!4635614) (not b!4635761) (not bm!323536) (not d!1461419) (not d!1461505) (not b!4635689) (not bm!323545) (not b!4635752) (not b!4635690) (not b!4635677) (not b!4635496) (not bm!323546) (not b!4635609) (not bm!323539) (not d!1461607) (not d!1461625) (not b!4635612) (not d!1461483) (not b!4635396) (not d!1461685) (not d!1461609) (not b!4635608) (not b!4635683) (not d!1461665) (not b!4635749) (not d!1461471) (not b!4635717) (not d!1461635) (not b!4635755) (not b!4635553) (not d!1461449) (not b!4635748) (not b!4635561) (not d!1461645) (not b!4635706) (not bm!323537) (not bm!323540) (not b_lambda!171001) (not b!4635745) (not b_lambda!171003) (not d!1461605) (not b!4635746) (not b!4635720) (not b!4635691) (not b!4635762) (not d!1461653) (not b!4635751) (not d!1461667) (not d!1461649) (not b!4635732) (not d!1461495) (not b!4635505) (not d!1461461) (not b!4635704) (not d!1461675) (not b!4635448) (not b!4635731) (not bm!323531) (not d!1461631) (not b!4635687) (not b!4635712) (not d!1461641) (not b!4635522) (not d!1461451) (not b!4635517) (not b!4635727) (not b!4635508) (not d!1461509) (not b!4635733) (not b!4635718) (not bm!323538) (not d!1461639) (not b!4635716) (not b!4635613) (not b!4635743) (not d!1461627) (not d!1461643) (not b!4635724) (not d!1461655) (not b!4635510) (not b!4635540) (not b!4635747) (not d!1461425) (not d!1461501) (not d!1461681) (not b!4635539) (not d!1461453) (not d!1461523) (not d!1461671) (not b!4635507) (not bm!323533) (not d!1461485) tp_is_empty!29477 (not bm!323544) tp_is_empty!29479 (not d!1461503) (not b!4635707) (not b!4635750) (not b!4635726) (not d!1461647) (not bm!323535) (not bs!1030929) (not b!4635450) (not b!4635397) (not b!4635728) (not d!1461637) (not d!1461673) (not d!1461507) (not bs!1030928) (not d!1461441) (not b!4635721) (not b!4635549) (not d!1461651) (not b!4635447) (not b!4635444) (not b!4635506) (not d!1461623) (not bm!323514) (not b!4635722) (not b!4635358) (not d!1461473))
(check-sat)
