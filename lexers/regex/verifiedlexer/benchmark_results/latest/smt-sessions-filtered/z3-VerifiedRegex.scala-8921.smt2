; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478376 () Bool)

(assert start!478376)

(declare-fun b!4709111 () Bool)

(declare-fun e!2937220 () Bool)

(declare-fun tp!1347306 () Bool)

(assert (=> b!4709111 (= e!2937220 tp!1347306)))

(declare-fun b!4709112 () Bool)

(declare-fun res!1989927 () Bool)

(declare-fun e!2937222 () Bool)

(assert (=> b!4709112 (=> res!1989927 e!2937222)))

(declare-datatypes ((K!14010 0))(
  ( (K!14011 (val!19479 Int)) )
))
(declare-datatypes ((V!14256 0))(
  ( (V!14257 (val!19480 Int)) )
))
(declare-datatypes ((tuple2!54170 0))(
  ( (tuple2!54171 (_1!30379 K!14010) (_2!30379 V!14256)) )
))
(declare-datatypes ((List!52771 0))(
  ( (Nil!52647) (Cons!52647 (h!58950 tuple2!54170) (t!360003 List!52771)) )
))
(declare-datatypes ((tuple2!54172 0))(
  ( (tuple2!54173 (_1!30380 (_ BitVec 64)) (_2!30380 List!52771)) )
))
(declare-datatypes ((List!52772 0))(
  ( (Nil!52648) (Cons!52648 (h!58951 tuple2!54172) (t!360004 List!52772)) )
))
(declare-datatypes ((ListLongMap!4307 0))(
  ( (ListLongMap!4308 (toList!5777 List!52772)) )
))
(declare-fun lm!2023 () ListLongMap!4307)

(declare-fun newBucket!218 () List!52771)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1873549 () List!52771)

(declare-datatypes ((ListMap!5141 0))(
  ( (ListMap!5142 (toList!5778 List!52771)) )
))
(declare-fun extractMap!1970 (List!52772) ListMap!5141)

(assert (=> b!4709112 (= res!1989927 (not (= (extractMap!1970 (Cons!52648 (tuple2!54173 hash!405 lt!1873549) (t!360004 (toList!5777 lm!2023)))) (extractMap!1970 (Cons!52648 (tuple2!54173 hash!405 newBucket!218) (t!360004 (toList!5777 lm!2023)))))))))

(declare-fun b!4709113 () Bool)

(declare-fun res!1989930 () Bool)

(declare-fun e!2937221 () Bool)

(assert (=> b!4709113 (=> (not res!1989930) (not e!2937221))))

(declare-datatypes ((Hashable!6313 0))(
  ( (HashableExt!6312 (__x!32016 Int)) )
))
(declare-fun hashF!1323 () Hashable!6313)

(declare-fun allKeysSameHashInMap!1858 (ListLongMap!4307 Hashable!6313) Bool)

(assert (=> b!4709113 (= res!1989930 (allKeysSameHashInMap!1858 lm!2023 hashF!1323))))

(declare-fun res!1989933 () Bool)

(declare-fun e!2937225 () Bool)

(assert (=> start!478376 (=> (not res!1989933) (not e!2937225))))

(declare-fun lambda!212221 () Int)

(declare-fun forall!11469 (List!52772 Int) Bool)

(assert (=> start!478376 (= res!1989933 (forall!11469 (toList!5777 lm!2023) lambda!212221))))

(assert (=> start!478376 e!2937225))

(declare-fun inv!67884 (ListLongMap!4307) Bool)

(assert (=> start!478376 (and (inv!67884 lm!2023) e!2937220)))

(declare-fun tp_is_empty!31069 () Bool)

(assert (=> start!478376 tp_is_empty!31069))

(declare-fun e!2937224 () Bool)

(assert (=> start!478376 e!2937224))

(assert (=> start!478376 true))

(declare-fun e!2937226 () Bool)

(assert (=> start!478376 e!2937226))

(declare-fun b!4709114 () Bool)

(declare-fun e!2937223 () Bool)

(assert (=> b!4709114 (= e!2937221 (not e!2937223))))

(declare-fun res!1989923 () Bool)

(assert (=> b!4709114 (=> res!1989923 e!2937223)))

(declare-fun oldBucket!34 () List!52771)

(declare-fun key!4653 () K!14010)

(get-info :version)

(assert (=> b!4709114 (= res!1989923 (or (not ((_ is Cons!52647) oldBucket!34)) (not (= (_1!30379 (h!58950 oldBucket!34)) key!4653))))))

(declare-fun lt!1873550 () ListMap!5141)

(declare-fun lt!1873548 () ListMap!5141)

(declare-fun addToMapMapFromBucket!1374 (List!52771 ListMap!5141) ListMap!5141)

(assert (=> b!4709114 (= lt!1873550 (addToMapMapFromBucket!1374 (_2!30380 (h!58951 (toList!5777 lm!2023))) lt!1873548))))

(assert (=> b!4709114 (= lt!1873548 (extractMap!1970 (t!360004 (toList!5777 lm!2023))))))

(declare-fun tail!8826 (ListLongMap!4307) ListLongMap!4307)

(assert (=> b!4709114 (= (t!360004 (toList!5777 lm!2023)) (toList!5777 (tail!8826 lm!2023)))))

(declare-fun tp!1347305 () Bool)

(declare-fun b!4709115 () Bool)

(declare-fun tp_is_empty!31071 () Bool)

(assert (=> b!4709115 (= e!2937224 (and tp_is_empty!31069 tp_is_empty!31071 tp!1347305))))

(declare-fun b!4709116 () Bool)

(declare-fun res!1989921 () Bool)

(assert (=> b!4709116 (=> (not res!1989921) (not e!2937225))))

(declare-fun noDuplicateKeys!1944 (List!52771) Bool)

(assert (=> b!4709116 (= res!1989921 (noDuplicateKeys!1944 oldBucket!34))))

(declare-fun b!4709117 () Bool)

(assert (=> b!4709117 (= e!2937222 (= (addToMapMapFromBucket!1374 lt!1873549 lt!1873548) (addToMapMapFromBucket!1374 newBucket!218 lt!1873548)))))

(declare-fun b!4709118 () Bool)

(declare-fun res!1989925 () Bool)

(assert (=> b!4709118 (=> (not res!1989925) (not e!2937225))))

(assert (=> b!4709118 (= res!1989925 (noDuplicateKeys!1944 newBucket!218))))

(declare-fun b!4709119 () Bool)

(declare-fun res!1989931 () Bool)

(assert (=> b!4709119 (=> (not res!1989931) (not e!2937221))))

(declare-fun hash!4262 (Hashable!6313 K!14010) (_ BitVec 64))

(assert (=> b!4709119 (= res!1989931 (= (hash!4262 hashF!1323 key!4653) hash!405))))

(declare-fun b!4709120 () Bool)

(assert (=> b!4709120 (= e!2937223 e!2937222)))

(declare-fun res!1989928 () Bool)

(assert (=> b!4709120 (=> res!1989928 e!2937222)))

(assert (=> b!4709120 (= res!1989928 (not (= lt!1873549 newBucket!218)))))

(declare-fun tail!8827 (List!52771) List!52771)

(assert (=> b!4709120 (= lt!1873549 (tail!8827 oldBucket!34))))

(declare-fun b!4709121 () Bool)

(declare-fun res!1989932 () Bool)

(assert (=> b!4709121 (=> (not res!1989932) (not e!2937221))))

(declare-fun head!10128 (List!52772) tuple2!54172)

(assert (=> b!4709121 (= res!1989932 (= (head!10128 (toList!5777 lm!2023)) (tuple2!54173 hash!405 oldBucket!34)))))

(declare-fun b!4709122 () Bool)

(assert (=> b!4709122 (= e!2937225 e!2937221)))

(declare-fun res!1989929 () Bool)

(assert (=> b!4709122 (=> (not res!1989929) (not e!2937221))))

(declare-fun contains!15954 (ListMap!5141 K!14010) Bool)

(assert (=> b!4709122 (= res!1989929 (contains!15954 lt!1873550 key!4653))))

(assert (=> b!4709122 (= lt!1873550 (extractMap!1970 (toList!5777 lm!2023)))))

(declare-fun b!4709123 () Bool)

(declare-fun res!1989922 () Bool)

(assert (=> b!4709123 (=> (not res!1989922) (not e!2937225))))

(declare-fun removePairForKey!1539 (List!52771 K!14010) List!52771)

(assert (=> b!4709123 (= res!1989922 (= (removePairForKey!1539 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4709124 () Bool)

(declare-fun tp!1347307 () Bool)

(assert (=> b!4709124 (= e!2937226 (and tp_is_empty!31069 tp_is_empty!31071 tp!1347307))))

(declare-fun b!4709125 () Bool)

(declare-fun res!1989924 () Bool)

(assert (=> b!4709125 (=> (not res!1989924) (not e!2937225))))

(declare-fun allKeysSameHash!1770 (List!52771 (_ BitVec 64) Hashable!6313) Bool)

(assert (=> b!4709125 (= res!1989924 (allKeysSameHash!1770 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4709126 () Bool)

(declare-fun res!1989920 () Bool)

(assert (=> b!4709126 (=> (not res!1989920) (not e!2937221))))

(assert (=> b!4709126 (= res!1989920 (allKeysSameHash!1770 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4709127 () Bool)

(declare-fun res!1989926 () Bool)

(assert (=> b!4709127 (=> (not res!1989926) (not e!2937221))))

(assert (=> b!4709127 (= res!1989926 ((_ is Cons!52648) (toList!5777 lm!2023)))))

(assert (= (and start!478376 res!1989933) b!4709116))

(assert (= (and b!4709116 res!1989921) b!4709118))

(assert (= (and b!4709118 res!1989925) b!4709123))

(assert (= (and b!4709123 res!1989922) b!4709125))

(assert (= (and b!4709125 res!1989924) b!4709122))

(assert (= (and b!4709122 res!1989929) b!4709119))

(assert (= (and b!4709119 res!1989931) b!4709126))

(assert (= (and b!4709126 res!1989920) b!4709113))

(assert (= (and b!4709113 res!1989930) b!4709121))

(assert (= (and b!4709121 res!1989932) b!4709127))

(assert (= (and b!4709127 res!1989926) b!4709114))

(assert (= (and b!4709114 (not res!1989923)) b!4709120))

(assert (= (and b!4709120 (not res!1989928)) b!4709112))

(assert (= (and b!4709112 (not res!1989927)) b!4709117))

(assert (= start!478376 b!4709111))

(assert (= (and start!478376 ((_ is Cons!52647) oldBucket!34)) b!4709115))

(assert (= (and start!478376 ((_ is Cons!52647) newBucket!218)) b!4709124))

(declare-fun m!5633407 () Bool)

(assert (=> b!4709120 m!5633407))

(declare-fun m!5633409 () Bool)

(assert (=> b!4709117 m!5633409))

(declare-fun m!5633411 () Bool)

(assert (=> b!4709117 m!5633411))

(declare-fun m!5633413 () Bool)

(assert (=> b!4709121 m!5633413))

(declare-fun m!5633415 () Bool)

(assert (=> b!4709118 m!5633415))

(declare-fun m!5633417 () Bool)

(assert (=> b!4709116 m!5633417))

(declare-fun m!5633419 () Bool)

(assert (=> start!478376 m!5633419))

(declare-fun m!5633421 () Bool)

(assert (=> start!478376 m!5633421))

(declare-fun m!5633423 () Bool)

(assert (=> b!4709125 m!5633423))

(declare-fun m!5633425 () Bool)

(assert (=> b!4709119 m!5633425))

(declare-fun m!5633427 () Bool)

(assert (=> b!4709122 m!5633427))

(declare-fun m!5633429 () Bool)

(assert (=> b!4709122 m!5633429))

(declare-fun m!5633431 () Bool)

(assert (=> b!4709112 m!5633431))

(declare-fun m!5633433 () Bool)

(assert (=> b!4709112 m!5633433))

(declare-fun m!5633435 () Bool)

(assert (=> b!4709113 m!5633435))

(declare-fun m!5633437 () Bool)

(assert (=> b!4709123 m!5633437))

(declare-fun m!5633439 () Bool)

(assert (=> b!4709114 m!5633439))

(declare-fun m!5633441 () Bool)

(assert (=> b!4709114 m!5633441))

(declare-fun m!5633443 () Bool)

(assert (=> b!4709114 m!5633443))

(declare-fun m!5633445 () Bool)

(assert (=> b!4709126 m!5633445))

(check-sat (not b!4709114) (not b!4709113) (not b!4709111) (not b!4709117) (not b!4709123) (not b!4709126) tp_is_empty!31069 (not b!4709115) (not start!478376) (not b!4709119) (not b!4709112) (not b!4709118) (not b!4709116) (not b!4709121) (not b!4709125) (not b!4709120) tp_is_empty!31071 (not b!4709122) (not b!4709124))
(check-sat)
