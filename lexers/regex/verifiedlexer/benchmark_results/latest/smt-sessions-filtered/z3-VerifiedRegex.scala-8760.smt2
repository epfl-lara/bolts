; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467524 () Bool)

(assert start!467524)

(declare-fun b!4645498 () Bool)

(declare-fun e!2897906 () Bool)

(declare-fun e!2897905 () Bool)

(assert (=> b!4645498 (= e!2897906 e!2897905)))

(declare-fun res!1951770 () Bool)

(assert (=> b!4645498 (=> res!1951770 e!2897905)))

(declare-datatypes ((K!13205 0))(
  ( (K!13206 (val!18835 Int)) )
))
(declare-datatypes ((V!13451 0))(
  ( (V!13452 (val!18836 Int)) )
))
(declare-datatypes ((tuple2!52934 0))(
  ( (tuple2!52935 (_1!29761 K!13205) (_2!29761 V!13451)) )
))
(declare-datatypes ((List!51968 0))(
  ( (Nil!51844) (Cons!51844 (h!57972 tuple2!52934) (t!359064 List!51968)) )
))
(declare-fun lt!1809765 () List!51968)

(declare-fun newBucket!224 () List!51968)

(assert (=> b!4645498 (= res!1951770 (not (= lt!1809765 newBucket!224)))))

(declare-fun oldBucket!40 () List!51968)

(declare-fun tail!8237 (List!51968) List!51968)

(assert (=> b!4645498 (= lt!1809765 (tail!8237 oldBucket!40))))

(declare-fun b!4645499 () Bool)

(declare-fun res!1951771 () Bool)

(declare-fun e!2897904 () Bool)

(assert (=> b!4645499 (=> (not res!1951771) (not e!2897904))))

(declare-fun noDuplicateKeys!1622 (List!51968) Bool)

(assert (=> b!4645499 (= res!1951771 (noDuplicateKeys!1622 newBucket!224))))

(declare-fun tp_is_empty!29783 () Bool)

(declare-fun e!2897902 () Bool)

(declare-fun tp!1343115 () Bool)

(declare-fun tp_is_empty!29781 () Bool)

(declare-fun b!4645500 () Bool)

(assert (=> b!4645500 (= e!2897902 (and tp_is_empty!29781 tp_is_empty!29783 tp!1343115))))

(declare-fun b!4645501 () Bool)

(declare-fun res!1951776 () Bool)

(assert (=> b!4645501 (=> res!1951776 e!2897905)))

(assert (=> b!4645501 (= res!1951776 (not (noDuplicateKeys!1622 lt!1809765)))))

(declare-fun b!4645502 () Bool)

(declare-fun res!1951774 () Bool)

(assert (=> b!4645502 (=> (not res!1951774) (not e!2897904))))

(declare-datatypes ((Hashable!6019 0))(
  ( (HashableExt!6018 (__x!31722 Int)) )
))
(declare-fun hashF!1389 () Hashable!6019)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1476 (List!51968 (_ BitVec 64) Hashable!6019) Bool)

(assert (=> b!4645502 (= res!1951774 (allKeysSameHash!1476 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4645503 () Bool)

(declare-fun res!1951773 () Bool)

(assert (=> b!4645503 (=> res!1951773 e!2897905)))

(declare-datatypes ((tuple2!52936 0))(
  ( (tuple2!52937 (_1!29762 (_ BitVec 64)) (_2!29762 List!51968)) )
))
(declare-datatypes ((List!51969 0))(
  ( (Nil!51845) (Cons!51845 (h!57973 tuple2!52936) (t!359065 List!51969)) )
))
(declare-datatypes ((ListMap!4513 0))(
  ( (ListMap!4514 (toList!5178 List!51968)) )
))
(declare-fun extractMap!1678 (List!51969) ListMap!4513)

(assert (=> b!4645503 (= res!1951773 (not (= (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845)) (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845)))))))

(declare-fun e!2897903 () Bool)

(declare-fun b!4645504 () Bool)

(declare-fun tp!1343114 () Bool)

(assert (=> b!4645504 (= e!2897903 (and tp_is_empty!29781 tp_is_empty!29783 tp!1343114))))

(declare-fun res!1951772 () Bool)

(assert (=> start!467524 (=> (not res!1951772) (not e!2897904))))

(assert (=> start!467524 (= res!1951772 (noDuplicateKeys!1622 oldBucket!40))))

(assert (=> start!467524 e!2897904))

(assert (=> start!467524 true))

(assert (=> start!467524 e!2897902))

(assert (=> start!467524 tp_is_empty!29781))

(assert (=> start!467524 e!2897903))

(declare-fun b!4645505 () Bool)

(declare-fun res!1951768 () Bool)

(declare-fun e!2897907 () Bool)

(assert (=> b!4645505 (=> (not res!1951768) (not e!2897907))))

(declare-fun key!4968 () K!13205)

(declare-fun hash!3743 (Hashable!6019 K!13205) (_ BitVec 64))

(assert (=> b!4645505 (= res!1951768 (= (hash!3743 hashF!1389 key!4968) hash!414))))

(declare-fun b!4645506 () Bool)

(declare-fun res!1951767 () Bool)

(assert (=> b!4645506 (=> res!1951767 e!2897905)))

(declare-fun addToMapMapFromBucket!1079 (List!51968 ListMap!4513) ListMap!4513)

(assert (=> b!4645506 (= res!1951767 (not (= (addToMapMapFromBucket!1079 lt!1809765 (ListMap!4514 Nil!51844)) (addToMapMapFromBucket!1079 newBucket!224 (ListMap!4514 Nil!51844)))))))

(declare-fun b!4645507 () Bool)

(declare-fun head!9722 (List!51968) tuple2!52934)

(assert (=> b!4645507 (= e!2897905 (noDuplicateKeys!1622 (Cons!51844 (head!9722 oldBucket!40) lt!1809765)))))

(declare-fun b!4645508 () Bool)

(assert (=> b!4645508 (= e!2897904 e!2897907)))

(declare-fun res!1951775 () Bool)

(assert (=> b!4645508 (=> (not res!1951775) (not e!2897907))))

(declare-fun lt!1809767 () ListMap!4513)

(declare-fun contains!14987 (ListMap!4513 K!13205) Bool)

(assert (=> b!4645508 (= res!1951775 (contains!14987 lt!1809767 key!4968))))

(assert (=> b!4645508 (= lt!1809767 (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845)))))

(declare-fun b!4645509 () Bool)

(declare-fun e!2897908 () Bool)

(declare-fun lt!1809766 () ListMap!4513)

(assert (=> b!4645509 (= e!2897908 (= lt!1809766 (ListMap!4514 Nil!51844)))))

(declare-fun b!4645510 () Bool)

(declare-fun res!1951778 () Bool)

(assert (=> b!4645510 (=> (not res!1951778) (not e!2897904))))

(declare-fun removePairForKey!1245 (List!51968 K!13205) List!51968)

(assert (=> b!4645510 (= res!1951778 (= (removePairForKey!1245 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4645511 () Bool)

(declare-fun res!1951766 () Bool)

(assert (=> b!4645511 (=> (not res!1951766) (not e!2897907))))

(assert (=> b!4645511 (= res!1951766 (allKeysSameHash!1476 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4645512 () Bool)

(assert (=> b!4645512 (= e!2897907 (not e!2897906))))

(declare-fun res!1951777 () Bool)

(assert (=> b!4645512 (=> res!1951777 e!2897906)))

(get-info :version)

(assert (=> b!4645512 (= res!1951777 (or (not ((_ is Cons!51844) oldBucket!40)) (not (= (_1!29761 (h!57972 oldBucket!40)) key!4968))))))

(assert (=> b!4645512 e!2897908))

(declare-fun res!1951769 () Bool)

(assert (=> b!4645512 (=> (not res!1951769) (not e!2897908))))

(assert (=> b!4645512 (= res!1951769 (= lt!1809767 (addToMapMapFromBucket!1079 oldBucket!40 lt!1809766)))))

(assert (=> b!4645512 (= lt!1809766 (extractMap!1678 Nil!51845))))

(assert (=> b!4645512 true))

(assert (= (and start!467524 res!1951772) b!4645499))

(assert (= (and b!4645499 res!1951771) b!4645510))

(assert (= (and b!4645510 res!1951778) b!4645502))

(assert (= (and b!4645502 res!1951774) b!4645508))

(assert (= (and b!4645508 res!1951775) b!4645505))

(assert (= (and b!4645505 res!1951768) b!4645511))

(assert (= (and b!4645511 res!1951766) b!4645512))

(assert (= (and b!4645512 res!1951769) b!4645509))

(assert (= (and b!4645512 (not res!1951777)) b!4645498))

(assert (= (and b!4645498 (not res!1951770)) b!4645503))

(assert (= (and b!4645503 (not res!1951773)) b!4645506))

(assert (= (and b!4645506 (not res!1951767)) b!4645501))

(assert (= (and b!4645501 (not res!1951776)) b!4645507))

(assert (= (and start!467524 ((_ is Cons!51844) oldBucket!40)) b!4645500))

(assert (= (and start!467524 ((_ is Cons!51844) newBucket!224)) b!4645504))

(declare-fun m!5510411 () Bool)

(assert (=> b!4645502 m!5510411))

(declare-fun m!5510413 () Bool)

(assert (=> start!467524 m!5510413))

(declare-fun m!5510415 () Bool)

(assert (=> b!4645510 m!5510415))

(declare-fun m!5510417 () Bool)

(assert (=> b!4645506 m!5510417))

(declare-fun m!5510419 () Bool)

(assert (=> b!4645506 m!5510419))

(declare-fun m!5510421 () Bool)

(assert (=> b!4645501 m!5510421))

(declare-fun m!5510423 () Bool)

(assert (=> b!4645505 m!5510423))

(declare-fun m!5510425 () Bool)

(assert (=> b!4645508 m!5510425))

(declare-fun m!5510427 () Bool)

(assert (=> b!4645508 m!5510427))

(declare-fun m!5510429 () Bool)

(assert (=> b!4645511 m!5510429))

(declare-fun m!5510431 () Bool)

(assert (=> b!4645499 m!5510431))

(declare-fun m!5510433 () Bool)

(assert (=> b!4645512 m!5510433))

(declare-fun m!5510435 () Bool)

(assert (=> b!4645512 m!5510435))

(declare-fun m!5510437 () Bool)

(assert (=> b!4645498 m!5510437))

(declare-fun m!5510439 () Bool)

(assert (=> b!4645507 m!5510439))

(declare-fun m!5510441 () Bool)

(assert (=> b!4645507 m!5510441))

(declare-fun m!5510443 () Bool)

(assert (=> b!4645503 m!5510443))

(declare-fun m!5510445 () Bool)

(assert (=> b!4645503 m!5510445))

(check-sat (not b!4645504) (not b!4645503) tp_is_empty!29783 (not b!4645500) (not b!4645508) (not b!4645511) (not b!4645510) (not b!4645498) (not b!4645507) (not b!4645512) (not b!4645499) (not b!4645506) (not b!4645502) (not start!467524) (not b!4645501) tp_is_empty!29781 (not b!4645505))
(check-sat)
(get-model)

(declare-fun b!4645531 () Bool)

(declare-datatypes ((Unit!116214 0))(
  ( (Unit!116215) )
))
(declare-fun e!2897924 () Unit!116214)

(declare-fun e!2897923 () Unit!116214)

(assert (=> b!4645531 (= e!2897924 e!2897923)))

(declare-fun c!794891 () Bool)

(declare-fun call!324350 () Bool)

(assert (=> b!4645531 (= c!794891 call!324350)))

(declare-fun d!1464851 () Bool)

(declare-fun e!2897925 () Bool)

(assert (=> d!1464851 e!2897925))

(declare-fun res!1951787 () Bool)

(assert (=> d!1464851 (=> res!1951787 e!2897925)))

(declare-fun e!2897922 () Bool)

(assert (=> d!1464851 (= res!1951787 e!2897922)))

(declare-fun res!1951785 () Bool)

(assert (=> d!1464851 (=> (not res!1951785) (not e!2897922))))

(declare-fun lt!1809790 () Bool)

(assert (=> d!1464851 (= res!1951785 (not lt!1809790))))

(declare-fun lt!1809786 () Bool)

(assert (=> d!1464851 (= lt!1809790 lt!1809786)))

(declare-fun lt!1809791 () Unit!116214)

(assert (=> d!1464851 (= lt!1809791 e!2897924)))

(declare-fun c!794890 () Bool)

(assert (=> d!1464851 (= c!794890 lt!1809786)))

(declare-fun containsKey!2686 (List!51968 K!13205) Bool)

(assert (=> d!1464851 (= lt!1809786 (containsKey!2686 (toList!5178 lt!1809767) key!4968))))

(assert (=> d!1464851 (= (contains!14987 lt!1809767 key!4968) lt!1809790)))

(declare-fun b!4645532 () Bool)

(declare-datatypes ((List!51971 0))(
  ( (Nil!51847) (Cons!51847 (h!57977 K!13205) (t!359067 List!51971)) )
))
(declare-fun e!2897921 () List!51971)

(declare-fun getKeysList!733 (List!51968) List!51971)

(assert (=> b!4645532 (= e!2897921 (getKeysList!733 (toList!5178 lt!1809767)))))

(declare-fun b!4645533 () Bool)

(declare-fun lt!1809788 () Unit!116214)

(assert (=> b!4645533 (= e!2897924 lt!1809788)))

(declare-fun lt!1809784 () Unit!116214)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1492 (List!51968 K!13205) Unit!116214)

(assert (=> b!4645533 (= lt!1809784 (lemmaContainsKeyImpliesGetValueByKeyDefined!1492 (toList!5178 lt!1809767) key!4968))))

(declare-datatypes ((Option!11802 0))(
  ( (None!11801) (Some!11801 (v!46053 V!13451)) )
))
(declare-fun isDefined!9067 (Option!11802) Bool)

(declare-fun getValueByKey!1590 (List!51968 K!13205) Option!11802)

(assert (=> b!4645533 (isDefined!9067 (getValueByKey!1590 (toList!5178 lt!1809767) key!4968))))

(declare-fun lt!1809785 () Unit!116214)

(assert (=> b!4645533 (= lt!1809785 lt!1809784)))

(declare-fun lemmaInListThenGetKeysListContains!728 (List!51968 K!13205) Unit!116214)

(assert (=> b!4645533 (= lt!1809788 (lemmaInListThenGetKeysListContains!728 (toList!5178 lt!1809767) key!4968))))

(assert (=> b!4645533 call!324350))

(declare-fun b!4645534 () Bool)

(assert (=> b!4645534 false))

(declare-fun lt!1809787 () Unit!116214)

(declare-fun lt!1809789 () Unit!116214)

(assert (=> b!4645534 (= lt!1809787 lt!1809789)))

(assert (=> b!4645534 (containsKey!2686 (toList!5178 lt!1809767) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!732 (List!51968 K!13205) Unit!116214)

(assert (=> b!4645534 (= lt!1809789 (lemmaInGetKeysListThenContainsKey!732 (toList!5178 lt!1809767) key!4968))))

(declare-fun Unit!116216 () Unit!116214)

(assert (=> b!4645534 (= e!2897923 Unit!116216)))

(declare-fun bm!324345 () Bool)

(declare-fun contains!14989 (List!51971 K!13205) Bool)

(assert (=> bm!324345 (= call!324350 (contains!14989 e!2897921 key!4968))))

(declare-fun c!794889 () Bool)

(assert (=> bm!324345 (= c!794889 c!794890)))

(declare-fun b!4645535 () Bool)

(declare-fun e!2897926 () Bool)

(declare-fun keys!18348 (ListMap!4513) List!51971)

(assert (=> b!4645535 (= e!2897926 (contains!14989 (keys!18348 lt!1809767) key!4968))))

(declare-fun b!4645536 () Bool)

(assert (=> b!4645536 (= e!2897922 (not (contains!14989 (keys!18348 lt!1809767) key!4968)))))

(declare-fun b!4645537 () Bool)

(declare-fun Unit!116218 () Unit!116214)

(assert (=> b!4645537 (= e!2897923 Unit!116218)))

(declare-fun b!4645538 () Bool)

(assert (=> b!4645538 (= e!2897921 (keys!18348 lt!1809767))))

(declare-fun b!4645539 () Bool)

(assert (=> b!4645539 (= e!2897925 e!2897926)))

(declare-fun res!1951786 () Bool)

(assert (=> b!4645539 (=> (not res!1951786) (not e!2897926))))

(assert (=> b!4645539 (= res!1951786 (isDefined!9067 (getValueByKey!1590 (toList!5178 lt!1809767) key!4968)))))

(assert (= (and d!1464851 c!794890) b!4645533))

(assert (= (and d!1464851 (not c!794890)) b!4645531))

(assert (= (and b!4645531 c!794891) b!4645534))

(assert (= (and b!4645531 (not c!794891)) b!4645537))

(assert (= (or b!4645533 b!4645531) bm!324345))

(assert (= (and bm!324345 c!794889) b!4645532))

(assert (= (and bm!324345 (not c!794889)) b!4645538))

(assert (= (and d!1464851 res!1951785) b!4645536))

(assert (= (and d!1464851 (not res!1951787)) b!4645539))

(assert (= (and b!4645539 res!1951786) b!4645535))

(declare-fun m!5510447 () Bool)

(assert (=> b!4645534 m!5510447))

(declare-fun m!5510449 () Bool)

(assert (=> b!4645534 m!5510449))

(declare-fun m!5510451 () Bool)

(assert (=> b!4645536 m!5510451))

(assert (=> b!4645536 m!5510451))

(declare-fun m!5510453 () Bool)

(assert (=> b!4645536 m!5510453))

(declare-fun m!5510455 () Bool)

(assert (=> bm!324345 m!5510455))

(assert (=> b!4645538 m!5510451))

(declare-fun m!5510457 () Bool)

(assert (=> b!4645532 m!5510457))

(assert (=> b!4645535 m!5510451))

(assert (=> b!4645535 m!5510451))

(assert (=> b!4645535 m!5510453))

(assert (=> d!1464851 m!5510447))

(declare-fun m!5510459 () Bool)

(assert (=> b!4645539 m!5510459))

(assert (=> b!4645539 m!5510459))

(declare-fun m!5510461 () Bool)

(assert (=> b!4645539 m!5510461))

(declare-fun m!5510463 () Bool)

(assert (=> b!4645533 m!5510463))

(assert (=> b!4645533 m!5510459))

(assert (=> b!4645533 m!5510459))

(assert (=> b!4645533 m!5510461))

(declare-fun m!5510465 () Bool)

(assert (=> b!4645533 m!5510465))

(assert (=> b!4645508 d!1464851))

(declare-fun d!1464853 () Bool)

(declare-fun lt!1809821 () ListMap!4513)

(declare-fun invariantList!1282 (List!51968) Bool)

(assert (=> d!1464853 (invariantList!1282 (toList!5178 lt!1809821))))

(declare-fun e!2897950 () ListMap!4513)

(assert (=> d!1464853 (= lt!1809821 e!2897950)))

(declare-fun c!794906 () Bool)

(assert (=> d!1464853 (= c!794906 ((_ is Cons!51845) (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845)))))

(declare-fun lambda!197396 () Int)

(declare-fun forall!10983 (List!51969 Int) Bool)

(assert (=> d!1464853 (forall!10983 (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845) lambda!197396)))

(assert (=> d!1464853 (= (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845)) lt!1809821)))

(declare-fun b!4645581 () Bool)

(assert (=> b!4645581 (= e!2897950 (addToMapMapFromBucket!1079 (_2!29762 (h!57973 (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845))) (extractMap!1678 (t!359065 (Cons!51845 (tuple2!52937 hash!414 oldBucket!40) Nil!51845)))))))

(declare-fun b!4645582 () Bool)

(assert (=> b!4645582 (= e!2897950 (ListMap!4514 Nil!51844))))

(assert (= (and d!1464853 c!794906) b!4645581))

(assert (= (and d!1464853 (not c!794906)) b!4645582))

(declare-fun m!5510501 () Bool)

(assert (=> d!1464853 m!5510501))

(declare-fun m!5510503 () Bool)

(assert (=> d!1464853 m!5510503))

(declare-fun m!5510505 () Bool)

(assert (=> b!4645581 m!5510505))

(assert (=> b!4645581 m!5510505))

(declare-fun m!5510507 () Bool)

(assert (=> b!4645581 m!5510507))

(assert (=> b!4645508 d!1464853))

(declare-fun d!1464865 () Bool)

(declare-fun res!1951801 () Bool)

(declare-fun e!2897955 () Bool)

(assert (=> d!1464865 (=> res!1951801 e!2897955)))

(assert (=> d!1464865 (= res!1951801 (not ((_ is Cons!51844) (Cons!51844 (head!9722 oldBucket!40) lt!1809765))))))

(assert (=> d!1464865 (= (noDuplicateKeys!1622 (Cons!51844 (head!9722 oldBucket!40) lt!1809765)) e!2897955)))

(declare-fun b!4645587 () Bool)

(declare-fun e!2897956 () Bool)

(assert (=> b!4645587 (= e!2897955 e!2897956)))

(declare-fun res!1951802 () Bool)

(assert (=> b!4645587 (=> (not res!1951802) (not e!2897956))))

(declare-fun containsKey!2687 (List!51968 K!13205) Bool)

(assert (=> b!4645587 (= res!1951802 (not (containsKey!2687 (t!359064 (Cons!51844 (head!9722 oldBucket!40) lt!1809765)) (_1!29761 (h!57972 (Cons!51844 (head!9722 oldBucket!40) lt!1809765))))))))

(declare-fun b!4645588 () Bool)

(assert (=> b!4645588 (= e!2897956 (noDuplicateKeys!1622 (t!359064 (Cons!51844 (head!9722 oldBucket!40) lt!1809765))))))

(assert (= (and d!1464865 (not res!1951801)) b!4645587))

(assert (= (and b!4645587 res!1951802) b!4645588))

(declare-fun m!5510509 () Bool)

(assert (=> b!4645587 m!5510509))

(declare-fun m!5510511 () Bool)

(assert (=> b!4645588 m!5510511))

(assert (=> b!4645507 d!1464865))

(declare-fun d!1464867 () Bool)

(assert (=> d!1464867 (= (head!9722 oldBucket!40) (h!57972 oldBucket!40))))

(assert (=> b!4645507 d!1464867))

(declare-fun b!4645664 () Bool)

(assert (=> b!4645664 true))

(declare-fun bs!1036192 () Bool)

(declare-fun b!4645665 () Bool)

(assert (= bs!1036192 (and b!4645665 b!4645664)))

(declare-fun lambda!197469 () Int)

(declare-fun lambda!197468 () Int)

(assert (=> bs!1036192 (= lambda!197469 lambda!197468)))

(assert (=> b!4645665 true))

(declare-fun lt!1809986 () ListMap!4513)

(declare-fun lambda!197470 () Int)

(assert (=> bs!1036192 (= (= lt!1809986 (ListMap!4514 Nil!51844)) (= lambda!197470 lambda!197468))))

(assert (=> b!4645665 (= (= lt!1809986 (ListMap!4514 Nil!51844)) (= lambda!197470 lambda!197469))))

(assert (=> b!4645665 true))

(declare-fun bs!1036193 () Bool)

(declare-fun d!1464869 () Bool)

(assert (= bs!1036193 (and d!1464869 b!4645664)))

(declare-fun lt!1809991 () ListMap!4513)

(declare-fun lambda!197471 () Int)

(assert (=> bs!1036193 (= (= lt!1809991 (ListMap!4514 Nil!51844)) (= lambda!197471 lambda!197468))))

(declare-fun bs!1036194 () Bool)

(assert (= bs!1036194 (and d!1464869 b!4645665)))

(assert (=> bs!1036194 (= (= lt!1809991 (ListMap!4514 Nil!51844)) (= lambda!197471 lambda!197469))))

(assert (=> bs!1036194 (= (= lt!1809991 lt!1809986) (= lambda!197471 lambda!197470))))

(assert (=> d!1464869 true))

(declare-fun bm!324370 () Bool)

(declare-fun call!324377 () Unit!116214)

(declare-fun lemmaContainsAllItsOwnKeys!582 (ListMap!4513) Unit!116214)

(assert (=> bm!324370 (= call!324377 (lemmaContainsAllItsOwnKeys!582 (ListMap!4514 Nil!51844)))))

(declare-fun b!4645662 () Bool)

(declare-fun res!1951838 () Bool)

(declare-fun e!2898004 () Bool)

(assert (=> b!4645662 (=> (not res!1951838) (not e!2898004))))

(declare-fun forall!10984 (List!51968 Int) Bool)

(assert (=> b!4645662 (= res!1951838 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197471))))

(declare-fun c!794923 () Bool)

(declare-fun bm!324371 () Bool)

(declare-fun call!324376 () Bool)

(assert (=> bm!324371 (= call!324376 (forall!10984 (ite c!794923 (toList!5178 (ListMap!4514 Nil!51844)) (t!359064 lt!1809765)) (ite c!794923 lambda!197468 lambda!197470)))))

(declare-fun b!4645663 () Bool)

(declare-fun e!2898003 () Bool)

(declare-fun call!324375 () Bool)

(assert (=> b!4645663 (= e!2898003 call!324375)))

(declare-fun bm!324372 () Bool)

(assert (=> bm!324372 (= call!324375 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) (ite c!794923 lambda!197468 lambda!197470)))))

(declare-fun e!2898005 () ListMap!4513)

(assert (=> b!4645665 (= e!2898005 lt!1809986)))

(declare-fun lt!1809982 () ListMap!4513)

(declare-fun +!1966 (ListMap!4513 tuple2!52934) ListMap!4513)

(assert (=> b!4645665 (= lt!1809982 (+!1966 (ListMap!4514 Nil!51844) (h!57972 lt!1809765)))))

(assert (=> b!4645665 (= lt!1809986 (addToMapMapFromBucket!1079 (t!359064 lt!1809765) (+!1966 (ListMap!4514 Nil!51844) (h!57972 lt!1809765))))))

(declare-fun lt!1809985 () Unit!116214)

(assert (=> b!4645665 (= lt!1809985 call!324377)))

(assert (=> b!4645665 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197469)))

(declare-fun lt!1809994 () Unit!116214)

(assert (=> b!4645665 (= lt!1809994 lt!1809985)))

(assert (=> b!4645665 (forall!10984 (toList!5178 lt!1809982) lambda!197470)))

(declare-fun lt!1809992 () Unit!116214)

(declare-fun Unit!116229 () Unit!116214)

(assert (=> b!4645665 (= lt!1809992 Unit!116229)))

(assert (=> b!4645665 call!324376))

(declare-fun lt!1809981 () Unit!116214)

(declare-fun Unit!116230 () Unit!116214)

(assert (=> b!4645665 (= lt!1809981 Unit!116230)))

(declare-fun lt!1809980 () Unit!116214)

(declare-fun Unit!116231 () Unit!116214)

(assert (=> b!4645665 (= lt!1809980 Unit!116231)))

(declare-fun lt!1809993 () Unit!116214)

(declare-fun forallContained!3200 (List!51968 Int tuple2!52934) Unit!116214)

(assert (=> b!4645665 (= lt!1809993 (forallContained!3200 (toList!5178 lt!1809982) lambda!197470 (h!57972 lt!1809765)))))

(assert (=> b!4645665 (contains!14987 lt!1809982 (_1!29761 (h!57972 lt!1809765)))))

(declare-fun lt!1809979 () Unit!116214)

(declare-fun Unit!116232 () Unit!116214)

(assert (=> b!4645665 (= lt!1809979 Unit!116232)))

(assert (=> b!4645665 (contains!14987 lt!1809986 (_1!29761 (h!57972 lt!1809765)))))

(declare-fun lt!1809990 () Unit!116214)

(declare-fun Unit!116233 () Unit!116214)

(assert (=> b!4645665 (= lt!1809990 Unit!116233)))

(assert (=> b!4645665 (forall!10984 lt!1809765 lambda!197470)))

(declare-fun lt!1809989 () Unit!116214)

(declare-fun Unit!116234 () Unit!116214)

(assert (=> b!4645665 (= lt!1809989 Unit!116234)))

(assert (=> b!4645665 (forall!10984 (toList!5178 lt!1809982) lambda!197470)))

(declare-fun lt!1809975 () Unit!116214)

(declare-fun Unit!116235 () Unit!116214)

(assert (=> b!4645665 (= lt!1809975 Unit!116235)))

(declare-fun lt!1809976 () Unit!116214)

(declare-fun Unit!116236 () Unit!116214)

(assert (=> b!4645665 (= lt!1809976 Unit!116236)))

(declare-fun lt!1809988 () Unit!116214)

(declare-fun addForallContainsKeyThenBeforeAdding!581 (ListMap!4513 ListMap!4513 K!13205 V!13451) Unit!116214)

(assert (=> b!4645665 (= lt!1809988 (addForallContainsKeyThenBeforeAdding!581 (ListMap!4514 Nil!51844) lt!1809986 (_1!29761 (h!57972 lt!1809765)) (_2!29761 (h!57972 lt!1809765))))))

(assert (=> b!4645665 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197470)))

(declare-fun lt!1809995 () Unit!116214)

(assert (=> b!4645665 (= lt!1809995 lt!1809988)))

(assert (=> b!4645665 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197470)))

(declare-fun lt!1809987 () Unit!116214)

(declare-fun Unit!116237 () Unit!116214)

(assert (=> b!4645665 (= lt!1809987 Unit!116237)))

(declare-fun res!1951836 () Bool)

(assert (=> b!4645665 (= res!1951836 (forall!10984 lt!1809765 lambda!197470))))

(assert (=> b!4645665 (=> (not res!1951836) (not e!2898003))))

(assert (=> b!4645665 e!2898003))

(declare-fun lt!1809978 () Unit!116214)

(declare-fun Unit!116238 () Unit!116214)

(assert (=> b!4645665 (= lt!1809978 Unit!116238)))

(declare-fun b!4645666 () Bool)

(assert (=> b!4645666 (= e!2898004 (invariantList!1282 (toList!5178 lt!1809991)))))

(assert (=> b!4645664 (= e!2898005 (ListMap!4514 Nil!51844))))

(declare-fun lt!1809983 () Unit!116214)

(assert (=> b!4645664 (= lt!1809983 call!324377)))

(assert (=> b!4645664 call!324376))

(declare-fun lt!1809977 () Unit!116214)

(assert (=> b!4645664 (= lt!1809977 lt!1809983)))

(assert (=> b!4645664 call!324375))

(declare-fun lt!1809984 () Unit!116214)

(declare-fun Unit!116239 () Unit!116214)

(assert (=> b!4645664 (= lt!1809984 Unit!116239)))

(assert (=> d!1464869 e!2898004))

(declare-fun res!1951837 () Bool)

(assert (=> d!1464869 (=> (not res!1951837) (not e!2898004))))

(assert (=> d!1464869 (= res!1951837 (forall!10984 lt!1809765 lambda!197471))))

(assert (=> d!1464869 (= lt!1809991 e!2898005)))

(assert (=> d!1464869 (= c!794923 ((_ is Nil!51844) lt!1809765))))

(assert (=> d!1464869 (noDuplicateKeys!1622 lt!1809765)))

(assert (=> d!1464869 (= (addToMapMapFromBucket!1079 lt!1809765 (ListMap!4514 Nil!51844)) lt!1809991)))

(assert (= (and d!1464869 c!794923) b!4645664))

(assert (= (and d!1464869 (not c!794923)) b!4645665))

(assert (= (and b!4645665 res!1951836) b!4645663))

(assert (= (or b!4645664 b!4645665) bm!324370))

(assert (= (or b!4645664 b!4645665) bm!324371))

(assert (= (or b!4645664 b!4645663) bm!324372))

(assert (= (and d!1464869 res!1951837) b!4645662))

(assert (= (and b!4645662 res!1951838) b!4645666))

(declare-fun m!5510651 () Bool)

(assert (=> b!4645666 m!5510651))

(declare-fun m!5510653 () Bool)

(assert (=> bm!324370 m!5510653))

(declare-fun m!5510655 () Bool)

(assert (=> bm!324372 m!5510655))

(declare-fun m!5510657 () Bool)

(assert (=> d!1464869 m!5510657))

(assert (=> d!1464869 m!5510421))

(declare-fun m!5510659 () Bool)

(assert (=> b!4645665 m!5510659))

(declare-fun m!5510661 () Bool)

(assert (=> b!4645665 m!5510661))

(assert (=> b!4645665 m!5510659))

(declare-fun m!5510663 () Bool)

(assert (=> b!4645665 m!5510663))

(assert (=> b!4645665 m!5510661))

(declare-fun m!5510665 () Bool)

(assert (=> b!4645665 m!5510665))

(declare-fun m!5510667 () Bool)

(assert (=> b!4645665 m!5510667))

(declare-fun m!5510669 () Bool)

(assert (=> b!4645665 m!5510669))

(declare-fun m!5510671 () Bool)

(assert (=> b!4645665 m!5510671))

(declare-fun m!5510673 () Bool)

(assert (=> b!4645665 m!5510673))

(declare-fun m!5510675 () Bool)

(assert (=> b!4645665 m!5510675))

(assert (=> b!4645665 m!5510675))

(assert (=> b!4645665 m!5510671))

(declare-fun m!5510677 () Bool)

(assert (=> b!4645665 m!5510677))

(declare-fun m!5510679 () Bool)

(assert (=> b!4645662 m!5510679))

(declare-fun m!5510681 () Bool)

(assert (=> bm!324371 m!5510681))

(assert (=> b!4645506 d!1464869))

(declare-fun bs!1036195 () Bool)

(declare-fun b!4645671 () Bool)

(assert (= bs!1036195 (and b!4645671 b!4645664)))

(declare-fun lambda!197472 () Int)

(assert (=> bs!1036195 (= lambda!197472 lambda!197468)))

(declare-fun bs!1036196 () Bool)

(assert (= bs!1036196 (and b!4645671 b!4645665)))

(assert (=> bs!1036196 (= lambda!197472 lambda!197469)))

(assert (=> bs!1036196 (= (= (ListMap!4514 Nil!51844) lt!1809986) (= lambda!197472 lambda!197470))))

(declare-fun bs!1036197 () Bool)

(assert (= bs!1036197 (and b!4645671 d!1464869)))

(assert (=> bs!1036197 (= (= (ListMap!4514 Nil!51844) lt!1809991) (= lambda!197472 lambda!197471))))

(assert (=> b!4645671 true))

(declare-fun bs!1036198 () Bool)

(declare-fun b!4645672 () Bool)

(assert (= bs!1036198 (and b!4645672 b!4645665)))

(declare-fun lambda!197473 () Int)

(assert (=> bs!1036198 (= (= (ListMap!4514 Nil!51844) lt!1809986) (= lambda!197473 lambda!197470))))

(assert (=> bs!1036198 (= lambda!197473 lambda!197469)))

(declare-fun bs!1036199 () Bool)

(assert (= bs!1036199 (and b!4645672 b!4645671)))

(assert (=> bs!1036199 (= lambda!197473 lambda!197472)))

(declare-fun bs!1036200 () Bool)

(assert (= bs!1036200 (and b!4645672 b!4645664)))

(assert (=> bs!1036200 (= lambda!197473 lambda!197468)))

(declare-fun bs!1036201 () Bool)

(assert (= bs!1036201 (and b!4645672 d!1464869)))

(assert (=> bs!1036201 (= (= (ListMap!4514 Nil!51844) lt!1809991) (= lambda!197473 lambda!197471))))

(assert (=> b!4645672 true))

(declare-fun lambda!197474 () Int)

(declare-fun lt!1810007 () ListMap!4513)

(assert (=> bs!1036198 (= (= lt!1810007 lt!1809986) (= lambda!197474 lambda!197470))))

(assert (=> bs!1036198 (= (= lt!1810007 (ListMap!4514 Nil!51844)) (= lambda!197474 lambda!197469))))

(assert (=> bs!1036199 (= (= lt!1810007 (ListMap!4514 Nil!51844)) (= lambda!197474 lambda!197472))))

(assert (=> b!4645672 (= (= lt!1810007 (ListMap!4514 Nil!51844)) (= lambda!197474 lambda!197473))))

(assert (=> bs!1036200 (= (= lt!1810007 (ListMap!4514 Nil!51844)) (= lambda!197474 lambda!197468))))

(assert (=> bs!1036201 (= (= lt!1810007 lt!1809991) (= lambda!197474 lambda!197471))))

(assert (=> b!4645672 true))

(declare-fun bs!1036202 () Bool)

(declare-fun d!1464895 () Bool)

(assert (= bs!1036202 (and d!1464895 b!4645665)))

(declare-fun lt!1810012 () ListMap!4513)

(declare-fun lambda!197475 () Int)

(assert (=> bs!1036202 (= (= lt!1810012 lt!1809986) (= lambda!197475 lambda!197470))))

(assert (=> bs!1036202 (= (= lt!1810012 (ListMap!4514 Nil!51844)) (= lambda!197475 lambda!197469))))

(declare-fun bs!1036203 () Bool)

(assert (= bs!1036203 (and d!1464895 b!4645672)))

(assert (=> bs!1036203 (= (= lt!1810012 lt!1810007) (= lambda!197475 lambda!197474))))

(declare-fun bs!1036204 () Bool)

(assert (= bs!1036204 (and d!1464895 b!4645671)))

(assert (=> bs!1036204 (= (= lt!1810012 (ListMap!4514 Nil!51844)) (= lambda!197475 lambda!197472))))

(assert (=> bs!1036203 (= (= lt!1810012 (ListMap!4514 Nil!51844)) (= lambda!197475 lambda!197473))))

(declare-fun bs!1036205 () Bool)

(assert (= bs!1036205 (and d!1464895 b!4645664)))

(assert (=> bs!1036205 (= (= lt!1810012 (ListMap!4514 Nil!51844)) (= lambda!197475 lambda!197468))))

(declare-fun bs!1036206 () Bool)

(assert (= bs!1036206 (and d!1464895 d!1464869)))

(assert (=> bs!1036206 (= (= lt!1810012 lt!1809991) (= lambda!197475 lambda!197471))))

(assert (=> d!1464895 true))

(declare-fun bm!324373 () Bool)

(declare-fun call!324380 () Unit!116214)

(assert (=> bm!324373 (= call!324380 (lemmaContainsAllItsOwnKeys!582 (ListMap!4514 Nil!51844)))))

(declare-fun b!4645669 () Bool)

(declare-fun res!1951841 () Bool)

(declare-fun e!2898007 () Bool)

(assert (=> b!4645669 (=> (not res!1951841) (not e!2898007))))

(assert (=> b!4645669 (= res!1951841 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197475))))

(declare-fun bm!324374 () Bool)

(declare-fun c!794924 () Bool)

(declare-fun call!324379 () Bool)

(assert (=> bm!324374 (= call!324379 (forall!10984 (ite c!794924 (toList!5178 (ListMap!4514 Nil!51844)) (t!359064 newBucket!224)) (ite c!794924 lambda!197472 lambda!197474)))))

(declare-fun b!4645670 () Bool)

(declare-fun e!2898006 () Bool)

(declare-fun call!324378 () Bool)

(assert (=> b!4645670 (= e!2898006 call!324378)))

(declare-fun bm!324375 () Bool)

(assert (=> bm!324375 (= call!324378 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) (ite c!794924 lambda!197472 lambda!197474)))))

(declare-fun e!2898008 () ListMap!4513)

(assert (=> b!4645672 (= e!2898008 lt!1810007)))

(declare-fun lt!1810003 () ListMap!4513)

(assert (=> b!4645672 (= lt!1810003 (+!1966 (ListMap!4514 Nil!51844) (h!57972 newBucket!224)))))

(assert (=> b!4645672 (= lt!1810007 (addToMapMapFromBucket!1079 (t!359064 newBucket!224) (+!1966 (ListMap!4514 Nil!51844) (h!57972 newBucket!224))))))

(declare-fun lt!1810006 () Unit!116214)

(assert (=> b!4645672 (= lt!1810006 call!324380)))

(assert (=> b!4645672 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197473)))

(declare-fun lt!1810015 () Unit!116214)

(assert (=> b!4645672 (= lt!1810015 lt!1810006)))

(assert (=> b!4645672 (forall!10984 (toList!5178 lt!1810003) lambda!197474)))

(declare-fun lt!1810013 () Unit!116214)

(declare-fun Unit!116251 () Unit!116214)

(assert (=> b!4645672 (= lt!1810013 Unit!116251)))

(assert (=> b!4645672 call!324379))

(declare-fun lt!1810002 () Unit!116214)

(declare-fun Unit!116252 () Unit!116214)

(assert (=> b!4645672 (= lt!1810002 Unit!116252)))

(declare-fun lt!1810001 () Unit!116214)

(declare-fun Unit!116253 () Unit!116214)

(assert (=> b!4645672 (= lt!1810001 Unit!116253)))

(declare-fun lt!1810014 () Unit!116214)

(assert (=> b!4645672 (= lt!1810014 (forallContained!3200 (toList!5178 lt!1810003) lambda!197474 (h!57972 newBucket!224)))))

(assert (=> b!4645672 (contains!14987 lt!1810003 (_1!29761 (h!57972 newBucket!224)))))

(declare-fun lt!1810000 () Unit!116214)

(declare-fun Unit!116254 () Unit!116214)

(assert (=> b!4645672 (= lt!1810000 Unit!116254)))

(assert (=> b!4645672 (contains!14987 lt!1810007 (_1!29761 (h!57972 newBucket!224)))))

(declare-fun lt!1810011 () Unit!116214)

(declare-fun Unit!116255 () Unit!116214)

(assert (=> b!4645672 (= lt!1810011 Unit!116255)))

(assert (=> b!4645672 (forall!10984 newBucket!224 lambda!197474)))

(declare-fun lt!1810010 () Unit!116214)

(declare-fun Unit!116256 () Unit!116214)

(assert (=> b!4645672 (= lt!1810010 Unit!116256)))

(assert (=> b!4645672 (forall!10984 (toList!5178 lt!1810003) lambda!197474)))

(declare-fun lt!1809996 () Unit!116214)

(declare-fun Unit!116257 () Unit!116214)

(assert (=> b!4645672 (= lt!1809996 Unit!116257)))

(declare-fun lt!1809997 () Unit!116214)

(declare-fun Unit!116258 () Unit!116214)

(assert (=> b!4645672 (= lt!1809997 Unit!116258)))

(declare-fun lt!1810009 () Unit!116214)

(assert (=> b!4645672 (= lt!1810009 (addForallContainsKeyThenBeforeAdding!581 (ListMap!4514 Nil!51844) lt!1810007 (_1!29761 (h!57972 newBucket!224)) (_2!29761 (h!57972 newBucket!224))))))

(assert (=> b!4645672 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197474)))

(declare-fun lt!1810016 () Unit!116214)

(assert (=> b!4645672 (= lt!1810016 lt!1810009)))

(assert (=> b!4645672 (forall!10984 (toList!5178 (ListMap!4514 Nil!51844)) lambda!197474)))

(declare-fun lt!1810008 () Unit!116214)

(declare-fun Unit!116259 () Unit!116214)

(assert (=> b!4645672 (= lt!1810008 Unit!116259)))

(declare-fun res!1951839 () Bool)

(assert (=> b!4645672 (= res!1951839 (forall!10984 newBucket!224 lambda!197474))))

(assert (=> b!4645672 (=> (not res!1951839) (not e!2898006))))

(assert (=> b!4645672 e!2898006))

(declare-fun lt!1809999 () Unit!116214)

(declare-fun Unit!116260 () Unit!116214)

(assert (=> b!4645672 (= lt!1809999 Unit!116260)))

(declare-fun b!4645673 () Bool)

(assert (=> b!4645673 (= e!2898007 (invariantList!1282 (toList!5178 lt!1810012)))))

(assert (=> b!4645671 (= e!2898008 (ListMap!4514 Nil!51844))))

(declare-fun lt!1810004 () Unit!116214)

(assert (=> b!4645671 (= lt!1810004 call!324380)))

(assert (=> b!4645671 call!324379))

(declare-fun lt!1809998 () Unit!116214)

(assert (=> b!4645671 (= lt!1809998 lt!1810004)))

(assert (=> b!4645671 call!324378))

(declare-fun lt!1810005 () Unit!116214)

(declare-fun Unit!116261 () Unit!116214)

(assert (=> b!4645671 (= lt!1810005 Unit!116261)))

(assert (=> d!1464895 e!2898007))

(declare-fun res!1951840 () Bool)

(assert (=> d!1464895 (=> (not res!1951840) (not e!2898007))))

(assert (=> d!1464895 (= res!1951840 (forall!10984 newBucket!224 lambda!197475))))

(assert (=> d!1464895 (= lt!1810012 e!2898008)))

(assert (=> d!1464895 (= c!794924 ((_ is Nil!51844) newBucket!224))))

(assert (=> d!1464895 (noDuplicateKeys!1622 newBucket!224)))

(assert (=> d!1464895 (= (addToMapMapFromBucket!1079 newBucket!224 (ListMap!4514 Nil!51844)) lt!1810012)))

(assert (= (and d!1464895 c!794924) b!4645671))

(assert (= (and d!1464895 (not c!794924)) b!4645672))

(assert (= (and b!4645672 res!1951839) b!4645670))

(assert (= (or b!4645671 b!4645672) bm!324373))

(assert (= (or b!4645671 b!4645672) bm!324374))

(assert (= (or b!4645671 b!4645670) bm!324375))

(assert (= (and d!1464895 res!1951840) b!4645669))

(assert (= (and b!4645669 res!1951841) b!4645673))

(declare-fun m!5510683 () Bool)

(assert (=> b!4645673 m!5510683))

(assert (=> bm!324373 m!5510653))

(declare-fun m!5510685 () Bool)

(assert (=> bm!324375 m!5510685))

(declare-fun m!5510687 () Bool)

(assert (=> d!1464895 m!5510687))

(assert (=> d!1464895 m!5510431))

(declare-fun m!5510689 () Bool)

(assert (=> b!4645672 m!5510689))

(declare-fun m!5510691 () Bool)

(assert (=> b!4645672 m!5510691))

(assert (=> b!4645672 m!5510689))

(declare-fun m!5510693 () Bool)

(assert (=> b!4645672 m!5510693))

(assert (=> b!4645672 m!5510691))

(declare-fun m!5510695 () Bool)

(assert (=> b!4645672 m!5510695))

(declare-fun m!5510697 () Bool)

(assert (=> b!4645672 m!5510697))

(declare-fun m!5510699 () Bool)

(assert (=> b!4645672 m!5510699))

(declare-fun m!5510701 () Bool)

(assert (=> b!4645672 m!5510701))

(declare-fun m!5510703 () Bool)

(assert (=> b!4645672 m!5510703))

(declare-fun m!5510705 () Bool)

(assert (=> b!4645672 m!5510705))

(assert (=> b!4645672 m!5510705))

(assert (=> b!4645672 m!5510701))

(declare-fun m!5510707 () Bool)

(assert (=> b!4645672 m!5510707))

(declare-fun m!5510709 () Bool)

(assert (=> b!4645669 m!5510709))

(declare-fun m!5510711 () Bool)

(assert (=> bm!324374 m!5510711))

(assert (=> b!4645506 d!1464895))

(declare-fun d!1464897 () Bool)

(declare-fun hash!3745 (Hashable!6019 K!13205) (_ BitVec 64))

(assert (=> d!1464897 (= (hash!3743 hashF!1389 key!4968) (hash!3745 hashF!1389 key!4968))))

(declare-fun bs!1036207 () Bool)

(assert (= bs!1036207 d!1464897))

(declare-fun m!5510713 () Bool)

(assert (=> bs!1036207 m!5510713))

(assert (=> b!4645505 d!1464897))

(declare-fun bs!1036208 () Bool)

(declare-fun d!1464899 () Bool)

(assert (= bs!1036208 (and d!1464899 d!1464853)))

(declare-fun lambda!197476 () Int)

(assert (=> bs!1036208 (= lambda!197476 lambda!197396)))

(declare-fun lt!1810017 () ListMap!4513)

(assert (=> d!1464899 (invariantList!1282 (toList!5178 lt!1810017))))

(declare-fun e!2898009 () ListMap!4513)

(assert (=> d!1464899 (= lt!1810017 e!2898009)))

(declare-fun c!794925 () Bool)

(assert (=> d!1464899 (= c!794925 ((_ is Cons!51845) (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845)))))

(assert (=> d!1464899 (forall!10983 (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845) lambda!197476)))

(assert (=> d!1464899 (= (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845)) lt!1810017)))

(declare-fun b!4645674 () Bool)

(assert (=> b!4645674 (= e!2898009 (addToMapMapFromBucket!1079 (_2!29762 (h!57973 (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845))) (extractMap!1678 (t!359065 (Cons!51845 (tuple2!52937 hash!414 lt!1809765) Nil!51845)))))))

(declare-fun b!4645675 () Bool)

(assert (=> b!4645675 (= e!2898009 (ListMap!4514 Nil!51844))))

(assert (= (and d!1464899 c!794925) b!4645674))

(assert (= (and d!1464899 (not c!794925)) b!4645675))

(declare-fun m!5510715 () Bool)

(assert (=> d!1464899 m!5510715))

(declare-fun m!5510717 () Bool)

(assert (=> d!1464899 m!5510717))

(declare-fun m!5510719 () Bool)

(assert (=> b!4645674 m!5510719))

(assert (=> b!4645674 m!5510719))

(declare-fun m!5510721 () Bool)

(assert (=> b!4645674 m!5510721))

(assert (=> b!4645503 d!1464899))

(declare-fun bs!1036209 () Bool)

(declare-fun d!1464901 () Bool)

(assert (= bs!1036209 (and d!1464901 d!1464853)))

(declare-fun lambda!197477 () Int)

(assert (=> bs!1036209 (= lambda!197477 lambda!197396)))

(declare-fun bs!1036210 () Bool)

(assert (= bs!1036210 (and d!1464901 d!1464899)))

(assert (=> bs!1036210 (= lambda!197477 lambda!197476)))

(declare-fun lt!1810018 () ListMap!4513)

(assert (=> d!1464901 (invariantList!1282 (toList!5178 lt!1810018))))

(declare-fun e!2898010 () ListMap!4513)

(assert (=> d!1464901 (= lt!1810018 e!2898010)))

(declare-fun c!794926 () Bool)

(assert (=> d!1464901 (= c!794926 ((_ is Cons!51845) (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845)))))

(assert (=> d!1464901 (forall!10983 (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845) lambda!197477)))

(assert (=> d!1464901 (= (extractMap!1678 (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845)) lt!1810018)))

(declare-fun b!4645676 () Bool)

(assert (=> b!4645676 (= e!2898010 (addToMapMapFromBucket!1079 (_2!29762 (h!57973 (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845))) (extractMap!1678 (t!359065 (Cons!51845 (tuple2!52937 hash!414 newBucket!224) Nil!51845)))))))

(declare-fun b!4645677 () Bool)

(assert (=> b!4645677 (= e!2898010 (ListMap!4514 Nil!51844))))

(assert (= (and d!1464901 c!794926) b!4645676))

(assert (= (and d!1464901 (not c!794926)) b!4645677))

(declare-fun m!5510723 () Bool)

(assert (=> d!1464901 m!5510723))

(declare-fun m!5510725 () Bool)

(assert (=> d!1464901 m!5510725))

(declare-fun m!5510727 () Bool)

(assert (=> b!4645676 m!5510727))

(assert (=> b!4645676 m!5510727))

(declare-fun m!5510729 () Bool)

(assert (=> b!4645676 m!5510729))

(assert (=> b!4645503 d!1464901))

(declare-fun d!1464903 () Bool)

(declare-fun res!1951842 () Bool)

(declare-fun e!2898011 () Bool)

(assert (=> d!1464903 (=> res!1951842 e!2898011)))

(assert (=> d!1464903 (= res!1951842 (not ((_ is Cons!51844) oldBucket!40)))))

(assert (=> d!1464903 (= (noDuplicateKeys!1622 oldBucket!40) e!2898011)))

(declare-fun b!4645678 () Bool)

(declare-fun e!2898012 () Bool)

(assert (=> b!4645678 (= e!2898011 e!2898012)))

(declare-fun res!1951843 () Bool)

(assert (=> b!4645678 (=> (not res!1951843) (not e!2898012))))

(assert (=> b!4645678 (= res!1951843 (not (containsKey!2687 (t!359064 oldBucket!40) (_1!29761 (h!57972 oldBucket!40)))))))

(declare-fun b!4645679 () Bool)

(assert (=> b!4645679 (= e!2898012 (noDuplicateKeys!1622 (t!359064 oldBucket!40)))))

(assert (= (and d!1464903 (not res!1951842)) b!4645678))

(assert (= (and b!4645678 res!1951843) b!4645679))

(declare-fun m!5510731 () Bool)

(assert (=> b!4645678 m!5510731))

(declare-fun m!5510733 () Bool)

(assert (=> b!4645679 m!5510733))

(assert (=> start!467524 d!1464903))

(declare-fun bs!1036211 () Bool)

(declare-fun d!1464905 () Bool)

(assert (= bs!1036211 (and d!1464905 b!4645665)))

(declare-fun lambda!197480 () Int)

(assert (=> bs!1036211 (not (= lambda!197480 lambda!197470))))

(assert (=> bs!1036211 (not (= lambda!197480 lambda!197469))))

(declare-fun bs!1036212 () Bool)

(assert (= bs!1036212 (and d!1464905 b!4645672)))

(assert (=> bs!1036212 (not (= lambda!197480 lambda!197474))))

(declare-fun bs!1036213 () Bool)

(assert (= bs!1036213 (and d!1464905 b!4645671)))

(assert (=> bs!1036213 (not (= lambda!197480 lambda!197472))))

(assert (=> bs!1036212 (not (= lambda!197480 lambda!197473))))

(declare-fun bs!1036214 () Bool)

(assert (= bs!1036214 (and d!1464905 b!4645664)))

(assert (=> bs!1036214 (not (= lambda!197480 lambda!197468))))

(declare-fun bs!1036215 () Bool)

(assert (= bs!1036215 (and d!1464905 d!1464869)))

(assert (=> bs!1036215 (not (= lambda!197480 lambda!197471))))

(declare-fun bs!1036216 () Bool)

(assert (= bs!1036216 (and d!1464905 d!1464895)))

(assert (=> bs!1036216 (not (= lambda!197480 lambda!197475))))

(assert (=> d!1464905 true))

(assert (=> d!1464905 true))

(assert (=> d!1464905 (= (allKeysSameHash!1476 oldBucket!40 hash!414 hashF!1389) (forall!10984 oldBucket!40 lambda!197480))))

(declare-fun bs!1036217 () Bool)

(assert (= bs!1036217 d!1464905))

(declare-fun m!5510735 () Bool)

(assert (=> bs!1036217 m!5510735))

(assert (=> b!4645502 d!1464905))

(declare-fun bs!1036218 () Bool)

(declare-fun b!4645686 () Bool)

(assert (= bs!1036218 (and b!4645686 b!4645665)))

(declare-fun lambda!197481 () Int)

(assert (=> bs!1036218 (= (= lt!1809766 lt!1809986) (= lambda!197481 lambda!197470))))

(assert (=> bs!1036218 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197481 lambda!197469))))

(declare-fun bs!1036219 () Bool)

(assert (= bs!1036219 (and b!4645686 b!4645672)))

(assert (=> bs!1036219 (= (= lt!1809766 lt!1810007) (= lambda!197481 lambda!197474))))

(declare-fun bs!1036220 () Bool)

(assert (= bs!1036220 (and b!4645686 b!4645671)))

(assert (=> bs!1036220 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197481 lambda!197472))))

(assert (=> bs!1036219 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197481 lambda!197473))))

(declare-fun bs!1036221 () Bool)

(assert (= bs!1036221 (and b!4645686 b!4645664)))

(assert (=> bs!1036221 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197481 lambda!197468))))

(declare-fun bs!1036222 () Bool)

(assert (= bs!1036222 (and b!4645686 d!1464869)))

(assert (=> bs!1036222 (= (= lt!1809766 lt!1809991) (= lambda!197481 lambda!197471))))

(declare-fun bs!1036223 () Bool)

(assert (= bs!1036223 (and b!4645686 d!1464905)))

(assert (=> bs!1036223 (not (= lambda!197481 lambda!197480))))

(declare-fun bs!1036224 () Bool)

(assert (= bs!1036224 (and b!4645686 d!1464895)))

(assert (=> bs!1036224 (= (= lt!1809766 lt!1810012) (= lambda!197481 lambda!197475))))

(assert (=> b!4645686 true))

(declare-fun bs!1036225 () Bool)

(declare-fun b!4645687 () Bool)

(assert (= bs!1036225 (and b!4645687 b!4645665)))

(declare-fun lambda!197482 () Int)

(assert (=> bs!1036225 (= (= lt!1809766 lt!1809986) (= lambda!197482 lambda!197470))))

(assert (=> bs!1036225 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197482 lambda!197469))))

(declare-fun bs!1036226 () Bool)

(assert (= bs!1036226 (and b!4645687 b!4645672)))

(assert (=> bs!1036226 (= (= lt!1809766 lt!1810007) (= lambda!197482 lambda!197474))))

(declare-fun bs!1036227 () Bool)

(assert (= bs!1036227 (and b!4645687 b!4645671)))

(assert (=> bs!1036227 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197482 lambda!197472))))

(assert (=> bs!1036226 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197482 lambda!197473))))

(declare-fun bs!1036228 () Bool)

(assert (= bs!1036228 (and b!4645687 b!4645664)))

(assert (=> bs!1036228 (= (= lt!1809766 (ListMap!4514 Nil!51844)) (= lambda!197482 lambda!197468))))

(declare-fun bs!1036229 () Bool)

(assert (= bs!1036229 (and b!4645687 d!1464869)))

(assert (=> bs!1036229 (= (= lt!1809766 lt!1809991) (= lambda!197482 lambda!197471))))

(declare-fun bs!1036230 () Bool)

(assert (= bs!1036230 (and b!4645687 d!1464905)))

(assert (=> bs!1036230 (not (= lambda!197482 lambda!197480))))

(declare-fun bs!1036231 () Bool)

(assert (= bs!1036231 (and b!4645687 d!1464895)))

(assert (=> bs!1036231 (= (= lt!1809766 lt!1810012) (= lambda!197482 lambda!197475))))

(declare-fun bs!1036232 () Bool)

(assert (= bs!1036232 (and b!4645687 b!4645686)))

(assert (=> bs!1036232 (= lambda!197482 lambda!197481)))

(assert (=> b!4645687 true))

(declare-fun lambda!197483 () Int)

(declare-fun lt!1810030 () ListMap!4513)

(assert (=> bs!1036225 (= (= lt!1810030 lt!1809986) (= lambda!197483 lambda!197470))))

(assert (=> bs!1036225 (= (= lt!1810030 (ListMap!4514 Nil!51844)) (= lambda!197483 lambda!197469))))

(assert (=> bs!1036226 (= (= lt!1810030 lt!1810007) (= lambda!197483 lambda!197474))))

(assert (=> bs!1036227 (= (= lt!1810030 (ListMap!4514 Nil!51844)) (= lambda!197483 lambda!197472))))

(assert (=> bs!1036226 (= (= lt!1810030 (ListMap!4514 Nil!51844)) (= lambda!197483 lambda!197473))))

(assert (=> bs!1036228 (= (= lt!1810030 (ListMap!4514 Nil!51844)) (= lambda!197483 lambda!197468))))

(assert (=> bs!1036229 (= (= lt!1810030 lt!1809991) (= lambda!197483 lambda!197471))))

(assert (=> bs!1036230 (not (= lambda!197483 lambda!197480))))

(assert (=> b!4645687 (= (= lt!1810030 lt!1809766) (= lambda!197483 lambda!197482))))

(assert (=> bs!1036231 (= (= lt!1810030 lt!1810012) (= lambda!197483 lambda!197475))))

(assert (=> bs!1036232 (= (= lt!1810030 lt!1809766) (= lambda!197483 lambda!197481))))

(assert (=> b!4645687 true))

(declare-fun bs!1036233 () Bool)

(declare-fun d!1464907 () Bool)

(assert (= bs!1036233 (and d!1464907 b!4645665)))

(declare-fun lambda!197484 () Int)

(declare-fun lt!1810035 () ListMap!4513)

(assert (=> bs!1036233 (= (= lt!1810035 lt!1809986) (= lambda!197484 lambda!197470))))

(assert (=> bs!1036233 (= (= lt!1810035 (ListMap!4514 Nil!51844)) (= lambda!197484 lambda!197469))))

(declare-fun bs!1036234 () Bool)

(assert (= bs!1036234 (and d!1464907 b!4645672)))

(assert (=> bs!1036234 (= (= lt!1810035 lt!1810007) (= lambda!197484 lambda!197474))))

(declare-fun bs!1036235 () Bool)

(assert (= bs!1036235 (and d!1464907 b!4645671)))

(assert (=> bs!1036235 (= (= lt!1810035 (ListMap!4514 Nil!51844)) (= lambda!197484 lambda!197472))))

(assert (=> bs!1036234 (= (= lt!1810035 (ListMap!4514 Nil!51844)) (= lambda!197484 lambda!197473))))

(declare-fun bs!1036236 () Bool)

(assert (= bs!1036236 (and d!1464907 b!4645664)))

(assert (=> bs!1036236 (= (= lt!1810035 (ListMap!4514 Nil!51844)) (= lambda!197484 lambda!197468))))

(declare-fun bs!1036237 () Bool)

(assert (= bs!1036237 (and d!1464907 d!1464869)))

(assert (=> bs!1036237 (= (= lt!1810035 lt!1809991) (= lambda!197484 lambda!197471))))

(declare-fun bs!1036238 () Bool)

(assert (= bs!1036238 (and d!1464907 d!1464905)))

(assert (=> bs!1036238 (not (= lambda!197484 lambda!197480))))

(declare-fun bs!1036239 () Bool)

(assert (= bs!1036239 (and d!1464907 b!4645687)))

(assert (=> bs!1036239 (= (= lt!1810035 lt!1810030) (= lambda!197484 lambda!197483))))

(assert (=> bs!1036239 (= (= lt!1810035 lt!1809766) (= lambda!197484 lambda!197482))))

(declare-fun bs!1036240 () Bool)

(assert (= bs!1036240 (and d!1464907 d!1464895)))

(assert (=> bs!1036240 (= (= lt!1810035 lt!1810012) (= lambda!197484 lambda!197475))))

(declare-fun bs!1036241 () Bool)

(assert (= bs!1036241 (and d!1464907 b!4645686)))

(assert (=> bs!1036241 (= (= lt!1810035 lt!1809766) (= lambda!197484 lambda!197481))))

(assert (=> d!1464907 true))

(declare-fun bm!324376 () Bool)

(declare-fun call!324383 () Unit!116214)

(assert (=> bm!324376 (= call!324383 (lemmaContainsAllItsOwnKeys!582 lt!1809766))))

(declare-fun b!4645684 () Bool)

(declare-fun res!1951846 () Bool)

(declare-fun e!2898014 () Bool)

(assert (=> b!4645684 (=> (not res!1951846) (not e!2898014))))

(assert (=> b!4645684 (= res!1951846 (forall!10984 (toList!5178 lt!1809766) lambda!197484))))

(declare-fun call!324382 () Bool)

(declare-fun bm!324377 () Bool)

(declare-fun c!794927 () Bool)

(assert (=> bm!324377 (= call!324382 (forall!10984 (ite c!794927 (toList!5178 lt!1809766) (t!359064 oldBucket!40)) (ite c!794927 lambda!197481 lambda!197483)))))

(declare-fun b!4645685 () Bool)

(declare-fun e!2898013 () Bool)

(declare-fun call!324381 () Bool)

(assert (=> b!4645685 (= e!2898013 call!324381)))

(declare-fun bm!324378 () Bool)

(assert (=> bm!324378 (= call!324381 (forall!10984 (toList!5178 lt!1809766) (ite c!794927 lambda!197481 lambda!197483)))))

(declare-fun e!2898015 () ListMap!4513)

(assert (=> b!4645687 (= e!2898015 lt!1810030)))

(declare-fun lt!1810026 () ListMap!4513)

(assert (=> b!4645687 (= lt!1810026 (+!1966 lt!1809766 (h!57972 oldBucket!40)))))

(assert (=> b!4645687 (= lt!1810030 (addToMapMapFromBucket!1079 (t!359064 oldBucket!40) (+!1966 lt!1809766 (h!57972 oldBucket!40))))))

(declare-fun lt!1810029 () Unit!116214)

(assert (=> b!4645687 (= lt!1810029 call!324383)))

(assert (=> b!4645687 (forall!10984 (toList!5178 lt!1809766) lambda!197482)))

(declare-fun lt!1810038 () Unit!116214)

(assert (=> b!4645687 (= lt!1810038 lt!1810029)))

(assert (=> b!4645687 (forall!10984 (toList!5178 lt!1810026) lambda!197483)))

(declare-fun lt!1810036 () Unit!116214)

(declare-fun Unit!116262 () Unit!116214)

(assert (=> b!4645687 (= lt!1810036 Unit!116262)))

(assert (=> b!4645687 call!324382))

(declare-fun lt!1810025 () Unit!116214)

(declare-fun Unit!116263 () Unit!116214)

(assert (=> b!4645687 (= lt!1810025 Unit!116263)))

(declare-fun lt!1810024 () Unit!116214)

(declare-fun Unit!116264 () Unit!116214)

(assert (=> b!4645687 (= lt!1810024 Unit!116264)))

(declare-fun lt!1810037 () Unit!116214)

(assert (=> b!4645687 (= lt!1810037 (forallContained!3200 (toList!5178 lt!1810026) lambda!197483 (h!57972 oldBucket!40)))))

(assert (=> b!4645687 (contains!14987 lt!1810026 (_1!29761 (h!57972 oldBucket!40)))))

(declare-fun lt!1810023 () Unit!116214)

(declare-fun Unit!116265 () Unit!116214)

(assert (=> b!4645687 (= lt!1810023 Unit!116265)))

(assert (=> b!4645687 (contains!14987 lt!1810030 (_1!29761 (h!57972 oldBucket!40)))))

(declare-fun lt!1810034 () Unit!116214)

(declare-fun Unit!116266 () Unit!116214)

(assert (=> b!4645687 (= lt!1810034 Unit!116266)))

(assert (=> b!4645687 (forall!10984 oldBucket!40 lambda!197483)))

(declare-fun lt!1810033 () Unit!116214)

(declare-fun Unit!116267 () Unit!116214)

(assert (=> b!4645687 (= lt!1810033 Unit!116267)))

(assert (=> b!4645687 (forall!10984 (toList!5178 lt!1810026) lambda!197483)))

(declare-fun lt!1810019 () Unit!116214)

(declare-fun Unit!116268 () Unit!116214)

(assert (=> b!4645687 (= lt!1810019 Unit!116268)))

(declare-fun lt!1810020 () Unit!116214)

(declare-fun Unit!116269 () Unit!116214)

(assert (=> b!4645687 (= lt!1810020 Unit!116269)))

(declare-fun lt!1810032 () Unit!116214)

(assert (=> b!4645687 (= lt!1810032 (addForallContainsKeyThenBeforeAdding!581 lt!1809766 lt!1810030 (_1!29761 (h!57972 oldBucket!40)) (_2!29761 (h!57972 oldBucket!40))))))

(assert (=> b!4645687 (forall!10984 (toList!5178 lt!1809766) lambda!197483)))

(declare-fun lt!1810039 () Unit!116214)

(assert (=> b!4645687 (= lt!1810039 lt!1810032)))

(assert (=> b!4645687 (forall!10984 (toList!5178 lt!1809766) lambda!197483)))

(declare-fun lt!1810031 () Unit!116214)

(declare-fun Unit!116270 () Unit!116214)

(assert (=> b!4645687 (= lt!1810031 Unit!116270)))

(declare-fun res!1951844 () Bool)

(assert (=> b!4645687 (= res!1951844 (forall!10984 oldBucket!40 lambda!197483))))

(assert (=> b!4645687 (=> (not res!1951844) (not e!2898013))))

(assert (=> b!4645687 e!2898013))

(declare-fun lt!1810022 () Unit!116214)

(declare-fun Unit!116271 () Unit!116214)

(assert (=> b!4645687 (= lt!1810022 Unit!116271)))

(declare-fun b!4645688 () Bool)

(assert (=> b!4645688 (= e!2898014 (invariantList!1282 (toList!5178 lt!1810035)))))

(assert (=> b!4645686 (= e!2898015 lt!1809766)))

(declare-fun lt!1810027 () Unit!116214)

(assert (=> b!4645686 (= lt!1810027 call!324383)))

(assert (=> b!4645686 call!324382))

(declare-fun lt!1810021 () Unit!116214)

(assert (=> b!4645686 (= lt!1810021 lt!1810027)))

(assert (=> b!4645686 call!324381))

(declare-fun lt!1810028 () Unit!116214)

(declare-fun Unit!116272 () Unit!116214)

(assert (=> b!4645686 (= lt!1810028 Unit!116272)))

(assert (=> d!1464907 e!2898014))

(declare-fun res!1951845 () Bool)

(assert (=> d!1464907 (=> (not res!1951845) (not e!2898014))))

(assert (=> d!1464907 (= res!1951845 (forall!10984 oldBucket!40 lambda!197484))))

(assert (=> d!1464907 (= lt!1810035 e!2898015)))

(assert (=> d!1464907 (= c!794927 ((_ is Nil!51844) oldBucket!40))))

(assert (=> d!1464907 (noDuplicateKeys!1622 oldBucket!40)))

(assert (=> d!1464907 (= (addToMapMapFromBucket!1079 oldBucket!40 lt!1809766) lt!1810035)))

(assert (= (and d!1464907 c!794927) b!4645686))

(assert (= (and d!1464907 (not c!794927)) b!4645687))

(assert (= (and b!4645687 res!1951844) b!4645685))

(assert (= (or b!4645686 b!4645687) bm!324376))

(assert (= (or b!4645686 b!4645687) bm!324377))

(assert (= (or b!4645686 b!4645685) bm!324378))

(assert (= (and d!1464907 res!1951845) b!4645684))

(assert (= (and b!4645684 res!1951846) b!4645688))

(declare-fun m!5510737 () Bool)

(assert (=> b!4645688 m!5510737))

(declare-fun m!5510739 () Bool)

(assert (=> bm!324376 m!5510739))

(declare-fun m!5510741 () Bool)

(assert (=> bm!324378 m!5510741))

(declare-fun m!5510743 () Bool)

(assert (=> d!1464907 m!5510743))

(assert (=> d!1464907 m!5510413))

(declare-fun m!5510745 () Bool)

(assert (=> b!4645687 m!5510745))

(declare-fun m!5510747 () Bool)

(assert (=> b!4645687 m!5510747))

(assert (=> b!4645687 m!5510745))

(declare-fun m!5510749 () Bool)

(assert (=> b!4645687 m!5510749))

(assert (=> b!4645687 m!5510747))

(declare-fun m!5510751 () Bool)

(assert (=> b!4645687 m!5510751))

(declare-fun m!5510753 () Bool)

(assert (=> b!4645687 m!5510753))

(declare-fun m!5510755 () Bool)

(assert (=> b!4645687 m!5510755))

(declare-fun m!5510757 () Bool)

(assert (=> b!4645687 m!5510757))

(declare-fun m!5510759 () Bool)

(assert (=> b!4645687 m!5510759))

(declare-fun m!5510761 () Bool)

(assert (=> b!4645687 m!5510761))

(assert (=> b!4645687 m!5510761))

(assert (=> b!4645687 m!5510757))

(declare-fun m!5510763 () Bool)

(assert (=> b!4645687 m!5510763))

(declare-fun m!5510765 () Bool)

(assert (=> b!4645684 m!5510765))

(declare-fun m!5510767 () Bool)

(assert (=> bm!324377 m!5510767))

(assert (=> b!4645512 d!1464907))

(declare-fun bs!1036242 () Bool)

(declare-fun d!1464909 () Bool)

(assert (= bs!1036242 (and d!1464909 d!1464853)))

(declare-fun lambda!197485 () Int)

(assert (=> bs!1036242 (= lambda!197485 lambda!197396)))

(declare-fun bs!1036243 () Bool)

(assert (= bs!1036243 (and d!1464909 d!1464899)))

(assert (=> bs!1036243 (= lambda!197485 lambda!197476)))

(declare-fun bs!1036244 () Bool)

(assert (= bs!1036244 (and d!1464909 d!1464901)))

(assert (=> bs!1036244 (= lambda!197485 lambda!197477)))

(declare-fun lt!1810040 () ListMap!4513)

(assert (=> d!1464909 (invariantList!1282 (toList!5178 lt!1810040))))

(declare-fun e!2898016 () ListMap!4513)

(assert (=> d!1464909 (= lt!1810040 e!2898016)))

(declare-fun c!794928 () Bool)

(assert (=> d!1464909 (= c!794928 ((_ is Cons!51845) Nil!51845))))

(assert (=> d!1464909 (forall!10983 Nil!51845 lambda!197485)))

(assert (=> d!1464909 (= (extractMap!1678 Nil!51845) lt!1810040)))

(declare-fun b!4645689 () Bool)

(assert (=> b!4645689 (= e!2898016 (addToMapMapFromBucket!1079 (_2!29762 (h!57973 Nil!51845)) (extractMap!1678 (t!359065 Nil!51845))))))

(declare-fun b!4645690 () Bool)

(assert (=> b!4645690 (= e!2898016 (ListMap!4514 Nil!51844))))

(assert (= (and d!1464909 c!794928) b!4645689))

(assert (= (and d!1464909 (not c!794928)) b!4645690))

(declare-fun m!5510769 () Bool)

(assert (=> d!1464909 m!5510769))

(declare-fun m!5510771 () Bool)

(assert (=> d!1464909 m!5510771))

(declare-fun m!5510773 () Bool)

(assert (=> b!4645689 m!5510773))

(assert (=> b!4645689 m!5510773))

(declare-fun m!5510775 () Bool)

(assert (=> b!4645689 m!5510775))

(assert (=> b!4645512 d!1464909))

(declare-fun d!1464911 () Bool)

(declare-fun res!1951847 () Bool)

(declare-fun e!2898017 () Bool)

(assert (=> d!1464911 (=> res!1951847 e!2898017)))

(assert (=> d!1464911 (= res!1951847 (not ((_ is Cons!51844) lt!1809765)))))

(assert (=> d!1464911 (= (noDuplicateKeys!1622 lt!1809765) e!2898017)))

(declare-fun b!4645691 () Bool)

(declare-fun e!2898018 () Bool)

(assert (=> b!4645691 (= e!2898017 e!2898018)))

(declare-fun res!1951848 () Bool)

(assert (=> b!4645691 (=> (not res!1951848) (not e!2898018))))

(assert (=> b!4645691 (= res!1951848 (not (containsKey!2687 (t!359064 lt!1809765) (_1!29761 (h!57972 lt!1809765)))))))

(declare-fun b!4645692 () Bool)

(assert (=> b!4645692 (= e!2898018 (noDuplicateKeys!1622 (t!359064 lt!1809765)))))

(assert (= (and d!1464911 (not res!1951847)) b!4645691))

(assert (= (and b!4645691 res!1951848) b!4645692))

(declare-fun m!5510777 () Bool)

(assert (=> b!4645691 m!5510777))

(declare-fun m!5510779 () Bool)

(assert (=> b!4645692 m!5510779))

(assert (=> b!4645501 d!1464911))

(declare-fun bs!1036245 () Bool)

(declare-fun d!1464913 () Bool)

(assert (= bs!1036245 (and d!1464913 b!4645665)))

(declare-fun lambda!197486 () Int)

(assert (=> bs!1036245 (not (= lambda!197486 lambda!197470))))

(assert (=> bs!1036245 (not (= lambda!197486 lambda!197469))))

(declare-fun bs!1036246 () Bool)

(assert (= bs!1036246 (and d!1464913 b!4645672)))

(assert (=> bs!1036246 (not (= lambda!197486 lambda!197474))))

(declare-fun bs!1036247 () Bool)

(assert (= bs!1036247 (and d!1464913 d!1464907)))

(assert (=> bs!1036247 (not (= lambda!197486 lambda!197484))))

(declare-fun bs!1036248 () Bool)

(assert (= bs!1036248 (and d!1464913 b!4645671)))

(assert (=> bs!1036248 (not (= lambda!197486 lambda!197472))))

(assert (=> bs!1036246 (not (= lambda!197486 lambda!197473))))

(declare-fun bs!1036249 () Bool)

(assert (= bs!1036249 (and d!1464913 b!4645664)))

(assert (=> bs!1036249 (not (= lambda!197486 lambda!197468))))

(declare-fun bs!1036250 () Bool)

(assert (= bs!1036250 (and d!1464913 d!1464869)))

(assert (=> bs!1036250 (not (= lambda!197486 lambda!197471))))

(declare-fun bs!1036251 () Bool)

(assert (= bs!1036251 (and d!1464913 d!1464905)))

(assert (=> bs!1036251 (= lambda!197486 lambda!197480)))

(declare-fun bs!1036252 () Bool)

(assert (= bs!1036252 (and d!1464913 b!4645687)))

(assert (=> bs!1036252 (not (= lambda!197486 lambda!197483))))

(assert (=> bs!1036252 (not (= lambda!197486 lambda!197482))))

(declare-fun bs!1036253 () Bool)

(assert (= bs!1036253 (and d!1464913 d!1464895)))

(assert (=> bs!1036253 (not (= lambda!197486 lambda!197475))))

(declare-fun bs!1036254 () Bool)

(assert (= bs!1036254 (and d!1464913 b!4645686)))

(assert (=> bs!1036254 (not (= lambda!197486 lambda!197481))))

(assert (=> d!1464913 true))

(assert (=> d!1464913 true))

(assert (=> d!1464913 (= (allKeysSameHash!1476 newBucket!224 hash!414 hashF!1389) (forall!10984 newBucket!224 lambda!197486))))

(declare-fun bs!1036255 () Bool)

(assert (= bs!1036255 d!1464913))

(declare-fun m!5510781 () Bool)

(assert (=> bs!1036255 m!5510781))

(assert (=> b!4645511 d!1464913))

(declare-fun d!1464915 () Bool)

(declare-fun lt!1810043 () List!51968)

(assert (=> d!1464915 (not (containsKey!2687 lt!1810043 key!4968))))

(declare-fun e!2898023 () List!51968)

(assert (=> d!1464915 (= lt!1810043 e!2898023)))

(declare-fun c!794934 () Bool)

(assert (=> d!1464915 (= c!794934 (and ((_ is Cons!51844) oldBucket!40) (= (_1!29761 (h!57972 oldBucket!40)) key!4968)))))

(assert (=> d!1464915 (noDuplicateKeys!1622 oldBucket!40)))

(assert (=> d!1464915 (= (removePairForKey!1245 oldBucket!40 key!4968) lt!1810043)))

(declare-fun b!4645703 () Bool)

(declare-fun e!2898024 () List!51968)

(assert (=> b!4645703 (= e!2898024 (Cons!51844 (h!57972 oldBucket!40) (removePairForKey!1245 (t!359064 oldBucket!40) key!4968)))))

(declare-fun b!4645701 () Bool)

(assert (=> b!4645701 (= e!2898023 (t!359064 oldBucket!40))))

(declare-fun b!4645704 () Bool)

(assert (=> b!4645704 (= e!2898024 Nil!51844)))

(declare-fun b!4645702 () Bool)

(assert (=> b!4645702 (= e!2898023 e!2898024)))

(declare-fun c!794933 () Bool)

(assert (=> b!4645702 (= c!794933 ((_ is Cons!51844) oldBucket!40))))

(assert (= (and d!1464915 c!794934) b!4645701))

(assert (= (and d!1464915 (not c!794934)) b!4645702))

(assert (= (and b!4645702 c!794933) b!4645703))

(assert (= (and b!4645702 (not c!794933)) b!4645704))

(declare-fun m!5510783 () Bool)

(assert (=> d!1464915 m!5510783))

(assert (=> d!1464915 m!5510413))

(declare-fun m!5510785 () Bool)

(assert (=> b!4645703 m!5510785))

(assert (=> b!4645510 d!1464915))

(declare-fun d!1464917 () Bool)

(declare-fun res!1951849 () Bool)

(declare-fun e!2898025 () Bool)

(assert (=> d!1464917 (=> res!1951849 e!2898025)))

(assert (=> d!1464917 (= res!1951849 (not ((_ is Cons!51844) newBucket!224)))))

(assert (=> d!1464917 (= (noDuplicateKeys!1622 newBucket!224) e!2898025)))

(declare-fun b!4645705 () Bool)

(declare-fun e!2898026 () Bool)

(assert (=> b!4645705 (= e!2898025 e!2898026)))

(declare-fun res!1951850 () Bool)

(assert (=> b!4645705 (=> (not res!1951850) (not e!2898026))))

(assert (=> b!4645705 (= res!1951850 (not (containsKey!2687 (t!359064 newBucket!224) (_1!29761 (h!57972 newBucket!224)))))))

(declare-fun b!4645706 () Bool)

(assert (=> b!4645706 (= e!2898026 (noDuplicateKeys!1622 (t!359064 newBucket!224)))))

(assert (= (and d!1464917 (not res!1951849)) b!4645705))

(assert (= (and b!4645705 res!1951850) b!4645706))

(declare-fun m!5510787 () Bool)

(assert (=> b!4645705 m!5510787))

(declare-fun m!5510789 () Bool)

(assert (=> b!4645706 m!5510789))

(assert (=> b!4645499 d!1464917))

(declare-fun d!1464919 () Bool)

(assert (=> d!1464919 (= (tail!8237 oldBucket!40) (t!359064 oldBucket!40))))

(assert (=> b!4645498 d!1464919))

(declare-fun e!2898029 () Bool)

(declare-fun b!4645711 () Bool)

(declare-fun tp!1343122 () Bool)

(assert (=> b!4645711 (= e!2898029 (and tp_is_empty!29781 tp_is_empty!29783 tp!1343122))))

(assert (=> b!4645500 (= tp!1343115 e!2898029)))

(assert (= (and b!4645500 ((_ is Cons!51844) (t!359064 oldBucket!40))) b!4645711))

(declare-fun tp!1343123 () Bool)

(declare-fun e!2898030 () Bool)

(declare-fun b!4645712 () Bool)

(assert (=> b!4645712 (= e!2898030 (and tp_is_empty!29781 tp_is_empty!29783 tp!1343123))))

(assert (=> b!4645504 (= tp!1343114 e!2898030)))

(assert (= (and b!4645504 ((_ is Cons!51844) (t!359064 newBucket!224))) b!4645712))

(check-sat (not b!4645665) (not bm!324374) (not b!4645581) (not bm!324375) (not bm!324372) (not d!1464869) (not d!1464895) (not d!1464853) (not b!4645712) (not b!4645674) (not b!4645587) (not b!4645679) (not d!1464915) (not b!4645689) (not b!4645532) (not b!4645678) (not d!1464851) tp_is_empty!29783 (not d!1464913) (not bm!324377) (not b!4645705) (not b!4645666) (not b!4645535) (not d!1464901) (not b!4645692) (not d!1464899) (not b!4645703) (not d!1464909) (not b!4645688) (not bm!324370) (not b!4645533) (not b!4645534) (not b!4645538) (not bm!324373) (not b!4645539) (not bm!324378) (not b!4645536) (not b!4645706) (not b!4645684) (not b!4645669) (not bm!324345) (not b!4645676) (not d!1464897) (not b!4645711) tp_is_empty!29781 (not d!1464907) (not d!1464905) (not b!4645691) (not b!4645588) (not b!4645672) (not bm!324376) (not bm!324371) (not b!4645662) (not b!4645687) (not b!4645673))
(check-sat)
