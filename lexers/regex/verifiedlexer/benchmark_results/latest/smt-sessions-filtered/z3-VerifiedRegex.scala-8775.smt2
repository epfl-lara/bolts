; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469180 () Bool)

(assert start!469180)

(declare-fun b!4658960 () Bool)

(declare-fun e!2907006 () Bool)

(declare-fun e!2907004 () Bool)

(assert (=> b!4658960 (= e!2907006 e!2907004)))

(declare-fun res!1959467 () Bool)

(assert (=> b!4658960 (=> (not res!1959467) (not e!2907004))))

(declare-datatypes ((K!13280 0))(
  ( (K!13281 (val!18895 Int)) )
))
(declare-datatypes ((V!13526 0))(
  ( (V!13527 (val!18896 Int)) )
))
(declare-datatypes ((tuple2!53054 0))(
  ( (tuple2!53055 (_1!29821 K!13280) (_2!29821 V!13526)) )
))
(declare-datatypes ((List!52052 0))(
  ( (Nil!51928) (Cons!51928 (h!58080 tuple2!53054) (t!359168 List!52052)) )
))
(declare-datatypes ((ListMap!4573 0))(
  ( (ListMap!4574 (toList!5233 List!52052)) )
))
(declare-fun lt!1821138 () ListMap!4573)

(declare-fun key!4968 () K!13280)

(declare-fun contains!15083 (ListMap!4573 K!13280) Bool)

(assert (=> b!4658960 (= res!1959467 (contains!15083 lt!1821138 key!4968))))

(declare-datatypes ((tuple2!53056 0))(
  ( (tuple2!53057 (_1!29822 (_ BitVec 64)) (_2!29822 List!52052)) )
))
(declare-datatypes ((List!52053 0))(
  ( (Nil!51929) (Cons!51929 (h!58081 tuple2!53056) (t!359169 List!52053)) )
))
(declare-fun lt!1821144 () List!52053)

(declare-fun extractMap!1708 (List!52053) ListMap!4573)

(assert (=> b!4658960 (= lt!1821138 (extractMap!1708 lt!1821144))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52052)

(assert (=> b!4658960 (= lt!1821144 (Cons!51929 (tuple2!53057 hash!414 oldBucket!40) Nil!51929))))

(declare-fun b!4658961 () Bool)

(declare-fun e!2907009 () Bool)

(declare-fun lt!1821141 () ListMap!4573)

(assert (=> b!4658961 (= e!2907009 (= lt!1821141 (ListMap!4574 Nil!51928)))))

(declare-fun b!4658962 () Bool)

(declare-fun e!2907008 () Bool)

(declare-fun lt!1821143 () List!52053)

(declare-datatypes ((Hashable!6049 0))(
  ( (HashableExt!6048 (__x!31752 Int)) )
))
(declare-fun hashF!1389 () Hashable!6049)

(declare-datatypes ((ListLongMap!3787 0))(
  ( (ListLongMap!3788 (toList!5234 List!52053)) )
))
(declare-fun allKeysSameHashInMap!1608 (ListLongMap!3787 Hashable!6049) Bool)

(assert (=> b!4658962 (= e!2907008 (allKeysSameHashInMap!1608 (ListLongMap!3788 lt!1821143) hashF!1389))))

(declare-fun b!4658963 () Bool)

(declare-fun res!1959464 () Bool)

(declare-fun e!2907010 () Bool)

(assert (=> b!4658963 (=> res!1959464 e!2907010)))

(declare-fun lt!1821140 () List!52052)

(declare-fun removePairForKey!1275 (List!52052 K!13280) List!52052)

(assert (=> b!4658963 (= res!1959464 (not (= (removePairForKey!1275 (t!359168 oldBucket!40) key!4968) lt!1821140)))))

(declare-fun tp_is_empty!29901 () Bool)

(declare-fun tp!1343431 () Bool)

(declare-fun tp_is_empty!29903 () Bool)

(declare-fun b!4658964 () Bool)

(declare-fun e!2907001 () Bool)

(assert (=> b!4658964 (= e!2907001 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343431))))

(declare-fun b!4658965 () Bool)

(assert (=> b!4658965 (= e!2907010 e!2907008)))

(declare-fun res!1959470 () Bool)

(assert (=> b!4658965 (=> res!1959470 e!2907008)))

(declare-fun lambda!199980 () Int)

(declare-fun forall!11048 (List!52053 Int) Bool)

(assert (=> b!4658965 (= res!1959470 (not (forall!11048 lt!1821143 lambda!199980)))))

(assert (=> b!4658965 (= lt!1821143 (Cons!51929 (tuple2!53057 hash!414 (t!359168 oldBucket!40)) Nil!51929))))

(declare-fun res!1959462 () Bool)

(assert (=> start!469180 (=> (not res!1959462) (not e!2907006))))

(declare-fun noDuplicateKeys!1652 (List!52052) Bool)

(assert (=> start!469180 (= res!1959462 (noDuplicateKeys!1652 oldBucket!40))))

(assert (=> start!469180 e!2907006))

(assert (=> start!469180 true))

(assert (=> start!469180 e!2907001))

(assert (=> start!469180 tp_is_empty!29901))

(declare-fun e!2907002 () Bool)

(assert (=> start!469180 e!2907002))

(declare-fun b!4658966 () Bool)

(declare-fun res!1959469 () Bool)

(assert (=> b!4658966 (=> (not res!1959469) (not e!2907006))))

(declare-fun newBucket!224 () List!52052)

(assert (=> b!4658966 (= res!1959469 (= (removePairForKey!1275 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4658967 () Bool)

(declare-fun res!1959473 () Bool)

(declare-fun e!2907007 () Bool)

(assert (=> b!4658967 (=> (not res!1959473) (not e!2907007))))

(declare-fun allKeysSameHash!1506 (List!52052 (_ BitVec 64) Hashable!6049) Bool)

(assert (=> b!4658967 (= res!1959473 (allKeysSameHash!1506 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4658968 () Bool)

(declare-fun tp!1343430 () Bool)

(assert (=> b!4658968 (= e!2907002 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343430))))

(declare-fun b!4658969 () Bool)

(declare-fun res!1959474 () Bool)

(assert (=> b!4658969 (=> (not res!1959474) (not e!2907006))))

(assert (=> b!4658969 (= res!1959474 (noDuplicateKeys!1652 newBucket!224))))

(declare-fun b!4658970 () Bool)

(declare-fun res!1959471 () Bool)

(assert (=> b!4658970 (=> (not res!1959471) (not e!2907006))))

(assert (=> b!4658970 (= res!1959471 (allKeysSameHash!1506 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4658971 () Bool)

(assert (=> b!4658971 (= e!2907004 e!2907007)))

(declare-fun res!1959472 () Bool)

(assert (=> b!4658971 (=> (not res!1959472) (not e!2907007))))

(declare-fun lt!1821136 () (_ BitVec 64))

(assert (=> b!4658971 (= res!1959472 (= lt!1821136 hash!414))))

(declare-fun hash!3797 (Hashable!6049 K!13280) (_ BitVec 64))

(assert (=> b!4658971 (= lt!1821136 (hash!3797 hashF!1389 key!4968))))

(declare-fun b!4658972 () Bool)

(declare-fun e!2907003 () Bool)

(assert (=> b!4658972 (= e!2907003 e!2907010)))

(declare-fun res!1959463 () Bool)

(assert (=> b!4658972 (=> res!1959463 e!2907010)))

(declare-fun tail!8255 (List!52052) List!52052)

(assert (=> b!4658972 (= res!1959463 (not (= (removePairForKey!1275 (tail!8255 oldBucket!40) key!4968) lt!1821140)))))

(assert (=> b!4658972 (= lt!1821140 (tail!8255 newBucket!224))))

(declare-fun b!4658973 () Bool)

(declare-fun e!2907005 () Bool)

(assert (=> b!4658973 (= e!2907007 (not e!2907005))))

(declare-fun res!1959466 () Bool)

(assert (=> b!4658973 (=> res!1959466 e!2907005)))

(get-info :version)

(assert (=> b!4658973 (= res!1959466 (or (and ((_ is Cons!51928) oldBucket!40) (= (_1!29821 (h!58080 oldBucket!40)) key!4968)) (not ((_ is Cons!51928) oldBucket!40)) (= (_1!29821 (h!58080 oldBucket!40)) key!4968)))))

(assert (=> b!4658973 e!2907009))

(declare-fun res!1959465 () Bool)

(assert (=> b!4658973 (=> (not res!1959465) (not e!2907009))))

(declare-fun addToMapMapFromBucket!1109 (List!52052 ListMap!4573) ListMap!4573)

(assert (=> b!4658973 (= res!1959465 (= lt!1821138 (addToMapMapFromBucket!1109 oldBucket!40 lt!1821141)))))

(assert (=> b!4658973 (= lt!1821141 (extractMap!1708 Nil!51929))))

(assert (=> b!4658973 true))

(declare-fun b!4658974 () Bool)

(assert (=> b!4658974 (= e!2907005 e!2907003)))

(declare-fun res!1959468 () Bool)

(assert (=> b!4658974 (=> res!1959468 e!2907003)))

(declare-fun containsKey!2746 (List!52052 K!13280) Bool)

(assert (=> b!4658974 (= res!1959468 (not (containsKey!2746 (t!359168 oldBucket!40) key!4968)))))

(assert (=> b!4658974 (containsKey!2746 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!118984 0))(
  ( (Unit!118985) )
))
(declare-fun lt!1821135 () Unit!118984)

(declare-fun lemmaGetPairDefinedThenContainsKey!130 (List!52052 K!13280 Hashable!6049) Unit!118984)

(assert (=> b!4658974 (= lt!1821135 (lemmaGetPairDefinedThenContainsKey!130 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1821145 () List!52052)

(declare-datatypes ((Option!11844 0))(
  ( (None!11843) (Some!11843 (v!46137 tuple2!53054)) )
))
(declare-fun isDefined!9109 (Option!11844) Bool)

(declare-fun getPair!380 (List!52052 K!13280) Option!11844)

(assert (=> b!4658974 (isDefined!9109 (getPair!380 lt!1821145 key!4968))))

(declare-fun lt!1821137 () Unit!118984)

(declare-fun lt!1821146 () tuple2!53056)

(declare-fun forallContained!3248 (List!52053 Int tuple2!53056) Unit!118984)

(assert (=> b!4658974 (= lt!1821137 (forallContained!3248 lt!1821144 lambda!199980 lt!1821146))))

(declare-fun contains!15084 (List!52053 tuple2!53056) Bool)

(assert (=> b!4658974 (contains!15084 lt!1821144 lt!1821146)))

(assert (=> b!4658974 (= lt!1821146 (tuple2!53057 lt!1821136 lt!1821145))))

(declare-fun lt!1821147 () ListLongMap!3787)

(declare-fun lt!1821134 () Unit!118984)

(declare-fun lemmaGetValueImpliesTupleContained!185 (ListLongMap!3787 (_ BitVec 64) List!52052) Unit!118984)

(assert (=> b!4658974 (= lt!1821134 (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821136 lt!1821145))))

(declare-fun apply!12255 (ListLongMap!3787 (_ BitVec 64)) List!52052)

(assert (=> b!4658974 (= lt!1821145 (apply!12255 lt!1821147 lt!1821136))))

(declare-fun contains!15085 (ListLongMap!3787 (_ BitVec 64)) Bool)

(assert (=> b!4658974 (contains!15085 lt!1821147 lt!1821136)))

(declare-fun lt!1821142 () Unit!118984)

(declare-fun lemmaInGenMapThenLongMapContainsHash!586 (ListLongMap!3787 K!13280 Hashable!6049) Unit!118984)

(assert (=> b!4658974 (= lt!1821142 (lemmaInGenMapThenLongMapContainsHash!586 lt!1821147 key!4968 hashF!1389))))

(declare-fun lt!1821139 () Unit!118984)

(declare-fun lemmaInGenMapThenGetPairDefined!176 (ListLongMap!3787 K!13280 Hashable!6049) Unit!118984)

(assert (=> b!4658974 (= lt!1821139 (lemmaInGenMapThenGetPairDefined!176 lt!1821147 key!4968 hashF!1389))))

(assert (=> b!4658974 (= lt!1821147 (ListLongMap!3788 lt!1821144))))

(assert (= (and start!469180 res!1959462) b!4658969))

(assert (= (and b!4658969 res!1959474) b!4658966))

(assert (= (and b!4658966 res!1959469) b!4658970))

(assert (= (and b!4658970 res!1959471) b!4658960))

(assert (= (and b!4658960 res!1959467) b!4658971))

(assert (= (and b!4658971 res!1959472) b!4658967))

(assert (= (and b!4658967 res!1959473) b!4658973))

(assert (= (and b!4658973 res!1959465) b!4658961))

(assert (= (and b!4658973 (not res!1959466)) b!4658974))

(assert (= (and b!4658974 (not res!1959468)) b!4658972))

(assert (= (and b!4658972 (not res!1959463)) b!4658963))

(assert (= (and b!4658963 (not res!1959464)) b!4658965))

(assert (= (and b!4658965 (not res!1959470)) b!4658962))

(assert (= (and start!469180 ((_ is Cons!51928) oldBucket!40)) b!4658964))

(assert (= (and start!469180 ((_ is Cons!51928) newBucket!224)) b!4658968))

(declare-fun m!5540419 () Bool)

(assert (=> b!4658974 m!5540419))

(declare-fun m!5540421 () Bool)

(assert (=> b!4658974 m!5540421))

(declare-fun m!5540423 () Bool)

(assert (=> b!4658974 m!5540423))

(declare-fun m!5540425 () Bool)

(assert (=> b!4658974 m!5540425))

(declare-fun m!5540427 () Bool)

(assert (=> b!4658974 m!5540427))

(declare-fun m!5540429 () Bool)

(assert (=> b!4658974 m!5540429))

(declare-fun m!5540431 () Bool)

(assert (=> b!4658974 m!5540431))

(assert (=> b!4658974 m!5540419))

(declare-fun m!5540433 () Bool)

(assert (=> b!4658974 m!5540433))

(declare-fun m!5540435 () Bool)

(assert (=> b!4658974 m!5540435))

(declare-fun m!5540437 () Bool)

(assert (=> b!4658974 m!5540437))

(declare-fun m!5540439 () Bool)

(assert (=> b!4658974 m!5540439))

(declare-fun m!5540441 () Bool)

(assert (=> b!4658974 m!5540441))

(declare-fun m!5540443 () Bool)

(assert (=> b!4658967 m!5540443))

(declare-fun m!5540445 () Bool)

(assert (=> b!4658969 m!5540445))

(declare-fun m!5540447 () Bool)

(assert (=> b!4658965 m!5540447))

(declare-fun m!5540449 () Bool)

(assert (=> b!4658970 m!5540449))

(declare-fun m!5540451 () Bool)

(assert (=> b!4658963 m!5540451))

(declare-fun m!5540453 () Bool)

(assert (=> b!4658971 m!5540453))

(declare-fun m!5540455 () Bool)

(assert (=> b!4658966 m!5540455))

(declare-fun m!5540457 () Bool)

(assert (=> b!4658973 m!5540457))

(declare-fun m!5540459 () Bool)

(assert (=> b!4658973 m!5540459))

(declare-fun m!5540461 () Bool)

(assert (=> b!4658972 m!5540461))

(assert (=> b!4658972 m!5540461))

(declare-fun m!5540463 () Bool)

(assert (=> b!4658972 m!5540463))

(declare-fun m!5540465 () Bool)

(assert (=> b!4658972 m!5540465))

(declare-fun m!5540467 () Bool)

(assert (=> b!4658962 m!5540467))

(declare-fun m!5540469 () Bool)

(assert (=> start!469180 m!5540469))

(declare-fun m!5540471 () Bool)

(assert (=> b!4658960 m!5540471))

(declare-fun m!5540473 () Bool)

(assert (=> b!4658960 m!5540473))

(check-sat tp_is_empty!29901 (not b!4658963) (not b!4658967) tp_is_empty!29903 (not b!4658962) (not b!4658965) (not b!4658968) (not b!4658973) (not b!4658971) (not b!4658960) (not b!4658969) (not start!469180) (not b!4658964) (not b!4658974) (not b!4658972) (not b!4658970) (not b!4658966))
(check-sat)
(get-model)

(declare-fun b!4659005 () Bool)

(declare-fun e!2907027 () List!52052)

(assert (=> b!4659005 (= e!2907027 (t!359168 oldBucket!40))))

(declare-fun b!4659007 () Bool)

(declare-fun e!2907028 () List!52052)

(assert (=> b!4659007 (= e!2907028 (Cons!51928 (h!58080 oldBucket!40) (removePairForKey!1275 (t!359168 oldBucket!40) key!4968)))))

(declare-fun b!4659008 () Bool)

(assert (=> b!4659008 (= e!2907028 Nil!51928)))

(declare-fun b!4659006 () Bool)

(assert (=> b!4659006 (= e!2907027 e!2907028)))

(declare-fun c!797465 () Bool)

(assert (=> b!4659006 (= c!797465 ((_ is Cons!51928) oldBucket!40))))

(declare-fun d!1478762 () Bool)

(declare-fun lt!1821153 () List!52052)

(assert (=> d!1478762 (not (containsKey!2746 lt!1821153 key!4968))))

(assert (=> d!1478762 (= lt!1821153 e!2907027)))

(declare-fun c!797466 () Bool)

(assert (=> d!1478762 (= c!797466 (and ((_ is Cons!51928) oldBucket!40) (= (_1!29821 (h!58080 oldBucket!40)) key!4968)))))

(assert (=> d!1478762 (noDuplicateKeys!1652 oldBucket!40)))

(assert (=> d!1478762 (= (removePairForKey!1275 oldBucket!40 key!4968) lt!1821153)))

(assert (= (and d!1478762 c!797466) b!4659005))

(assert (= (and d!1478762 (not c!797466)) b!4659006))

(assert (= (and b!4659006 c!797465) b!4659007))

(assert (= (and b!4659006 (not c!797465)) b!4659008))

(assert (=> b!4659007 m!5540451))

(declare-fun m!5540483 () Bool)

(assert (=> d!1478762 m!5540483))

(assert (=> d!1478762 m!5540469))

(assert (=> b!4658966 d!1478762))

(declare-fun d!1478764 () Bool)

(declare-fun res!1959485 () Bool)

(declare-fun e!2907033 () Bool)

(assert (=> d!1478764 (=> res!1959485 e!2907033)))

(assert (=> d!1478764 (= res!1959485 (not ((_ is Cons!51928) oldBucket!40)))))

(assert (=> d!1478764 (= (noDuplicateKeys!1652 oldBucket!40) e!2907033)))

(declare-fun b!4659013 () Bool)

(declare-fun e!2907034 () Bool)

(assert (=> b!4659013 (= e!2907033 e!2907034)))

(declare-fun res!1959486 () Bool)

(assert (=> b!4659013 (=> (not res!1959486) (not e!2907034))))

(assert (=> b!4659013 (= res!1959486 (not (containsKey!2746 (t!359168 oldBucket!40) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4659014 () Bool)

(assert (=> b!4659014 (= e!2907034 (noDuplicateKeys!1652 (t!359168 oldBucket!40)))))

(assert (= (and d!1478764 (not res!1959485)) b!4659013))

(assert (= (and b!4659013 res!1959486) b!4659014))

(declare-fun m!5540485 () Bool)

(assert (=> b!4659013 m!5540485))

(declare-fun m!5540487 () Bool)

(assert (=> b!4659014 m!5540487))

(assert (=> start!469180 d!1478764))

(declare-fun d!1478766 () Bool)

(declare-fun res!1959491 () Bool)

(declare-fun e!2907039 () Bool)

(assert (=> d!1478766 (=> res!1959491 e!2907039)))

(assert (=> d!1478766 (= res!1959491 ((_ is Nil!51929) lt!1821143))))

(assert (=> d!1478766 (= (forall!11048 lt!1821143 lambda!199980) e!2907039)))

(declare-fun b!4659019 () Bool)

(declare-fun e!2907040 () Bool)

(assert (=> b!4659019 (= e!2907039 e!2907040)))

(declare-fun res!1959492 () Bool)

(assert (=> b!4659019 (=> (not res!1959492) (not e!2907040))))

(declare-fun dynLambda!21606 (Int tuple2!53056) Bool)

(assert (=> b!4659019 (= res!1959492 (dynLambda!21606 lambda!199980 (h!58081 lt!1821143)))))

(declare-fun b!4659020 () Bool)

(assert (=> b!4659020 (= e!2907040 (forall!11048 (t!359169 lt!1821143) lambda!199980))))

(assert (= (and d!1478766 (not res!1959491)) b!4659019))

(assert (= (and b!4659019 res!1959492) b!4659020))

(declare-fun b_lambda!174647 () Bool)

(assert (=> (not b_lambda!174647) (not b!4659019)))

(declare-fun m!5540489 () Bool)

(assert (=> b!4659019 m!5540489))

(declare-fun m!5540491 () Bool)

(assert (=> b!4659020 m!5540491))

(assert (=> b!4658965 d!1478766))

(declare-fun d!1478768 () Bool)

(assert (=> d!1478768 true))

(assert (=> d!1478768 true))

(declare-fun lambda!199986 () Int)

(declare-fun forall!11050 (List!52052 Int) Bool)

(assert (=> d!1478768 (= (allKeysSameHash!1506 newBucket!224 hash!414 hashF!1389) (forall!11050 newBucket!224 lambda!199986))))

(declare-fun bs!1066602 () Bool)

(assert (= bs!1066602 d!1478768))

(declare-fun m!5540493 () Bool)

(assert (=> bs!1066602 m!5540493))

(assert (=> b!4658967 d!1478768))

(declare-fun d!1478770 () Bool)

(assert (=> d!1478770 (dynLambda!21606 lambda!199980 lt!1821146)))

(declare-fun lt!1821156 () Unit!118984)

(declare-fun choose!32080 (List!52053 Int tuple2!53056) Unit!118984)

(assert (=> d!1478770 (= lt!1821156 (choose!32080 lt!1821144 lambda!199980 lt!1821146))))

(declare-fun e!2907043 () Bool)

(assert (=> d!1478770 e!2907043))

(declare-fun res!1959495 () Bool)

(assert (=> d!1478770 (=> (not res!1959495) (not e!2907043))))

(assert (=> d!1478770 (= res!1959495 (forall!11048 lt!1821144 lambda!199980))))

(assert (=> d!1478770 (= (forallContained!3248 lt!1821144 lambda!199980 lt!1821146) lt!1821156)))

(declare-fun b!4659027 () Bool)

(assert (=> b!4659027 (= e!2907043 (contains!15084 lt!1821144 lt!1821146))))

(assert (= (and d!1478770 res!1959495) b!4659027))

(declare-fun b_lambda!174649 () Bool)

(assert (=> (not b_lambda!174649) (not d!1478770)))

(declare-fun m!5540495 () Bool)

(assert (=> d!1478770 m!5540495))

(declare-fun m!5540497 () Bool)

(assert (=> d!1478770 m!5540497))

(declare-fun m!5540499 () Bool)

(assert (=> d!1478770 m!5540499))

(assert (=> b!4659027 m!5540423))

(assert (=> b!4658974 d!1478770))

(declare-fun bs!1066616 () Bool)

(declare-fun d!1478772 () Bool)

(assert (= bs!1066616 (and d!1478772 b!4658974)))

(declare-fun lambda!200029 () Int)

(assert (=> bs!1066616 (= lambda!200029 lambda!199980)))

(declare-fun b!4659093 () Bool)

(declare-fun e!2907083 () Bool)

(assert (=> b!4659093 (= e!2907083 (isDefined!9109 (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1821250 () Unit!118984)

(assert (=> b!4659093 (= lt!1821250 (forallContained!3248 (toList!5234 lt!1821147) lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun lt!1821249 () Unit!118984)

(declare-fun lt!1821243 () Unit!118984)

(assert (=> b!4659093 (= lt!1821249 lt!1821243)))

(declare-fun lt!1821248 () (_ BitVec 64))

(declare-fun lt!1821245 () List!52052)

(assert (=> b!4659093 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821248 lt!1821245))))

(assert (=> b!4659093 (= lt!1821243 (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821248 lt!1821245))))

(declare-fun e!2907082 () Bool)

(assert (=> b!4659093 e!2907082))

(declare-fun res!1959531 () Bool)

(assert (=> b!4659093 (=> (not res!1959531) (not e!2907082))))

(assert (=> b!4659093 (= res!1959531 (contains!15085 lt!1821147 lt!1821248))))

(assert (=> b!4659093 (= lt!1821245 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))

(assert (=> b!4659093 (= lt!1821248 (hash!3797 hashF!1389 key!4968))))

(declare-fun lt!1821244 () Unit!118984)

(declare-fun lt!1821247 () Unit!118984)

(assert (=> b!4659093 (= lt!1821244 lt!1821247)))

(assert (=> b!4659093 (contains!15085 lt!1821147 (hash!3797 hashF!1389 key!4968))))

(assert (=> b!4659093 (= lt!1821247 (lemmaInGenMapThenLongMapContainsHash!586 lt!1821147 key!4968 hashF!1389))))

(declare-fun b!4659091 () Bool)

(declare-fun res!1959532 () Bool)

(assert (=> b!4659091 (=> (not res!1959532) (not e!2907083))))

(assert (=> b!4659091 (= res!1959532 (allKeysSameHashInMap!1608 lt!1821147 hashF!1389))))

(assert (=> d!1478772 e!2907083))

(declare-fun res!1959529 () Bool)

(assert (=> d!1478772 (=> (not res!1959529) (not e!2907083))))

(assert (=> d!1478772 (= res!1959529 (forall!11048 (toList!5234 lt!1821147) lambda!200029))))

(declare-fun lt!1821246 () Unit!118984)

(declare-fun choose!32081 (ListLongMap!3787 K!13280 Hashable!6049) Unit!118984)

(assert (=> d!1478772 (= lt!1821246 (choose!32081 lt!1821147 key!4968 hashF!1389))))

(assert (=> d!1478772 (forall!11048 (toList!5234 lt!1821147) lambda!200029)))

(assert (=> d!1478772 (= (lemmaInGenMapThenGetPairDefined!176 lt!1821147 key!4968 hashF!1389) lt!1821246)))

(declare-fun b!4659092 () Bool)

(declare-fun res!1959530 () Bool)

(assert (=> b!4659092 (=> (not res!1959530) (not e!2907083))))

(assert (=> b!4659092 (= res!1959530 (contains!15083 (extractMap!1708 (toList!5234 lt!1821147)) key!4968))))

(declare-fun b!4659094 () Bool)

(declare-datatypes ((Option!11847 0))(
  ( (None!11846) (Some!11846 (v!46144 List!52052)) )
))
(declare-fun getValueByKey!1625 (List!52053 (_ BitVec 64)) Option!11847)

(assert (=> b!4659094 (= e!2907082 (= (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248) (Some!11846 lt!1821245)))))

(assert (= (and d!1478772 res!1959529) b!4659091))

(assert (= (and b!4659091 res!1959532) b!4659092))

(assert (= (and b!4659092 res!1959530) b!4659093))

(assert (= (and b!4659093 res!1959531) b!4659094))

(declare-fun m!5540581 () Bool)

(assert (=> b!4659093 m!5540581))

(declare-fun m!5540583 () Bool)

(assert (=> b!4659093 m!5540583))

(assert (=> b!4659093 m!5540453))

(declare-fun m!5540585 () Bool)

(assert (=> b!4659093 m!5540585))

(assert (=> b!4659093 m!5540425))

(declare-fun m!5540587 () Bool)

(assert (=> b!4659093 m!5540587))

(assert (=> b!4659093 m!5540453))

(declare-fun m!5540589 () Bool)

(assert (=> b!4659093 m!5540589))

(declare-fun m!5540591 () Bool)

(assert (=> b!4659093 m!5540591))

(declare-fun m!5540593 () Bool)

(assert (=> b!4659093 m!5540593))

(assert (=> b!4659093 m!5540453))

(declare-fun m!5540595 () Bool)

(assert (=> b!4659093 m!5540595))

(assert (=> b!4659093 m!5540595))

(assert (=> b!4659093 m!5540581))

(declare-fun m!5540597 () Bool)

(assert (=> d!1478772 m!5540597))

(declare-fun m!5540599 () Bool)

(assert (=> d!1478772 m!5540599))

(assert (=> d!1478772 m!5540597))

(declare-fun m!5540601 () Bool)

(assert (=> b!4659091 m!5540601))

(declare-fun m!5540603 () Bool)

(assert (=> b!4659092 m!5540603))

(assert (=> b!4659092 m!5540603))

(declare-fun m!5540605 () Bool)

(assert (=> b!4659092 m!5540605))

(declare-fun m!5540607 () Bool)

(assert (=> b!4659094 m!5540607))

(assert (=> b!4658974 d!1478772))

(declare-fun d!1478798 () Bool)

(declare-fun e!2907109 () Bool)

(assert (=> d!1478798 e!2907109))

(declare-fun res!1959554 () Bool)

(assert (=> d!1478798 (=> res!1959554 e!2907109)))

(declare-fun lt!1821270 () Bool)

(assert (=> d!1478798 (= res!1959554 (not lt!1821270))))

(declare-fun lt!1821269 () Bool)

(assert (=> d!1478798 (= lt!1821270 lt!1821269)))

(declare-fun lt!1821272 () Unit!118984)

(declare-fun e!2907108 () Unit!118984)

(assert (=> d!1478798 (= lt!1821272 e!2907108)))

(declare-fun c!797485 () Bool)

(assert (=> d!1478798 (= c!797485 lt!1821269)))

(declare-fun containsKey!2749 (List!52053 (_ BitVec 64)) Bool)

(assert (=> d!1478798 (= lt!1821269 (containsKey!2749 (toList!5234 lt!1821147) lt!1821136))))

(assert (=> d!1478798 (= (contains!15085 lt!1821147 lt!1821136) lt!1821270)))

(declare-fun b!4659124 () Bool)

(declare-fun lt!1821271 () Unit!118984)

(assert (=> b!4659124 (= e!2907108 lt!1821271)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (List!52053 (_ BitVec 64)) Unit!118984)

(assert (=> b!4659124 (= lt!1821271 (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) lt!1821136))))

(declare-fun isDefined!9112 (Option!11847) Bool)

(assert (=> b!4659124 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136))))

(declare-fun b!4659125 () Bool)

(declare-fun Unit!119000 () Unit!118984)

(assert (=> b!4659125 (= e!2907108 Unit!119000)))

(declare-fun b!4659126 () Bool)

(assert (=> b!4659126 (= e!2907109 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)))))

(assert (= (and d!1478798 c!797485) b!4659124))

(assert (= (and d!1478798 (not c!797485)) b!4659125))

(assert (= (and d!1478798 (not res!1959554)) b!4659126))

(declare-fun m!5540629 () Bool)

(assert (=> d!1478798 m!5540629))

(declare-fun m!5540631 () Bool)

(assert (=> b!4659124 m!5540631))

(declare-fun m!5540633 () Bool)

(assert (=> b!4659124 m!5540633))

(assert (=> b!4659124 m!5540633))

(declare-fun m!5540635 () Bool)

(assert (=> b!4659124 m!5540635))

(assert (=> b!4659126 m!5540633))

(assert (=> b!4659126 m!5540633))

(assert (=> b!4659126 m!5540635))

(assert (=> b!4658974 d!1478798))

(declare-fun d!1478810 () Bool)

(assert (=> d!1478810 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821136 lt!1821145))))

(declare-fun lt!1821287 () Unit!118984)

(declare-fun choose!32082 (ListLongMap!3787 (_ BitVec 64) List!52052) Unit!118984)

(assert (=> d!1478810 (= lt!1821287 (choose!32082 lt!1821147 lt!1821136 lt!1821145))))

(assert (=> d!1478810 (contains!15085 lt!1821147 lt!1821136)))

(assert (=> d!1478810 (= (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821136 lt!1821145) lt!1821287)))

(declare-fun bs!1066620 () Bool)

(assert (= bs!1066620 d!1478810))

(declare-fun m!5540643 () Bool)

(assert (=> bs!1066620 m!5540643))

(declare-fun m!5540645 () Bool)

(assert (=> bs!1066620 m!5540645))

(assert (=> bs!1066620 m!5540429))

(assert (=> b!4658974 d!1478810))

(declare-fun d!1478816 () Bool)

(declare-fun res!1959564 () Bool)

(declare-fun e!2907122 () Bool)

(assert (=> d!1478816 (=> res!1959564 e!2907122)))

(assert (=> d!1478816 (= res!1959564 (and ((_ is Cons!51928) (t!359168 oldBucket!40)) (= (_1!29821 (h!58080 (t!359168 oldBucket!40))) key!4968)))))

(assert (=> d!1478816 (= (containsKey!2746 (t!359168 oldBucket!40) key!4968) e!2907122)))

(declare-fun b!4659143 () Bool)

(declare-fun e!2907123 () Bool)

(assert (=> b!4659143 (= e!2907122 e!2907123)))

(declare-fun res!1959565 () Bool)

(assert (=> b!4659143 (=> (not res!1959565) (not e!2907123))))

(assert (=> b!4659143 (= res!1959565 ((_ is Cons!51928) (t!359168 oldBucket!40)))))

(declare-fun b!4659144 () Bool)

(assert (=> b!4659144 (= e!2907123 (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) key!4968))))

(assert (= (and d!1478816 (not res!1959564)) b!4659143))

(assert (= (and b!4659143 res!1959565) b!4659144))

(declare-fun m!5540653 () Bool)

(assert (=> b!4659144 m!5540653))

(assert (=> b!4658974 d!1478816))

(declare-fun bs!1066625 () Bool)

(declare-fun d!1478820 () Bool)

(assert (= bs!1066625 (and d!1478820 b!4658974)))

(declare-fun lambda!200035 () Int)

(assert (=> bs!1066625 (= lambda!200035 lambda!199980)))

(declare-fun bs!1066626 () Bool)

(assert (= bs!1066626 (and d!1478820 d!1478772)))

(assert (=> bs!1066626 (= lambda!200035 lambda!200029)))

(assert (=> d!1478820 (contains!15085 lt!1821147 (hash!3797 hashF!1389 key!4968))))

(declare-fun lt!1821296 () Unit!118984)

(declare-fun choose!32083 (ListLongMap!3787 K!13280 Hashable!6049) Unit!118984)

(assert (=> d!1478820 (= lt!1821296 (choose!32083 lt!1821147 key!4968 hashF!1389))))

(assert (=> d!1478820 (forall!11048 (toList!5234 lt!1821147) lambda!200035)))

(assert (=> d!1478820 (= (lemmaInGenMapThenLongMapContainsHash!586 lt!1821147 key!4968 hashF!1389) lt!1821296)))

(declare-fun bs!1066627 () Bool)

(assert (= bs!1066627 d!1478820))

(assert (=> bs!1066627 m!5540453))

(assert (=> bs!1066627 m!5540453))

(assert (=> bs!1066627 m!5540585))

(declare-fun m!5540659 () Bool)

(assert (=> bs!1066627 m!5540659))

(declare-fun m!5540661 () Bool)

(assert (=> bs!1066627 m!5540661))

(assert (=> b!4658974 d!1478820))

(declare-fun d!1478824 () Bool)

(declare-fun res!1959566 () Bool)

(declare-fun e!2907124 () Bool)

(assert (=> d!1478824 (=> res!1959566 e!2907124)))

(assert (=> d!1478824 (= res!1959566 (and ((_ is Cons!51928) oldBucket!40) (= (_1!29821 (h!58080 oldBucket!40)) key!4968)))))

(assert (=> d!1478824 (= (containsKey!2746 oldBucket!40 key!4968) e!2907124)))

(declare-fun b!4659146 () Bool)

(declare-fun e!2907125 () Bool)

(assert (=> b!4659146 (= e!2907124 e!2907125)))

(declare-fun res!1959567 () Bool)

(assert (=> b!4659146 (=> (not res!1959567) (not e!2907125))))

(assert (=> b!4659146 (= res!1959567 ((_ is Cons!51928) oldBucket!40))))

(declare-fun b!4659147 () Bool)

(assert (=> b!4659147 (= e!2907125 (containsKey!2746 (t!359168 oldBucket!40) key!4968))))

(assert (= (and d!1478824 (not res!1959566)) b!4659146))

(assert (= (and b!4659146 res!1959567) b!4659147))

(assert (=> b!4659147 m!5540431))

(assert (=> b!4658974 d!1478824))

(declare-fun d!1478826 () Bool)

(declare-fun get!17288 (Option!11847) List!52052)

(assert (=> d!1478826 (= (apply!12255 lt!1821147 lt!1821136) (get!17288 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)))))

(declare-fun bs!1066628 () Bool)

(assert (= bs!1066628 d!1478826))

(assert (=> bs!1066628 m!5540633))

(assert (=> bs!1066628 m!5540633))

(declare-fun m!5540663 () Bool)

(assert (=> bs!1066628 m!5540663))

(assert (=> b!4658974 d!1478826))

(declare-fun d!1478828 () Bool)

(assert (=> d!1478828 (containsKey!2746 oldBucket!40 key!4968)))

(declare-fun lt!1821299 () Unit!118984)

(declare-fun choose!32084 (List!52052 K!13280 Hashable!6049) Unit!118984)

(assert (=> d!1478828 (= lt!1821299 (choose!32084 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1478828 (noDuplicateKeys!1652 oldBucket!40)))

(assert (=> d!1478828 (= (lemmaGetPairDefinedThenContainsKey!130 oldBucket!40 key!4968 hashF!1389) lt!1821299)))

(declare-fun bs!1066629 () Bool)

(assert (= bs!1066629 d!1478828))

(assert (=> bs!1066629 m!5540427))

(declare-fun m!5540665 () Bool)

(assert (=> bs!1066629 m!5540665))

(assert (=> bs!1066629 m!5540469))

(assert (=> b!4658974 d!1478828))

(declare-fun d!1478830 () Bool)

(declare-fun lt!1821302 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9013 (List!52053) (InoxSet tuple2!53056))

(assert (=> d!1478830 (= lt!1821302 (select (content!9013 lt!1821144) lt!1821146))))

(declare-fun e!2907131 () Bool)

(assert (=> d!1478830 (= lt!1821302 e!2907131)))

(declare-fun res!1959573 () Bool)

(assert (=> d!1478830 (=> (not res!1959573) (not e!2907131))))

(assert (=> d!1478830 (= res!1959573 ((_ is Cons!51929) lt!1821144))))

(assert (=> d!1478830 (= (contains!15084 lt!1821144 lt!1821146) lt!1821302)))

(declare-fun b!4659152 () Bool)

(declare-fun e!2907130 () Bool)

(assert (=> b!4659152 (= e!2907131 e!2907130)))

(declare-fun res!1959572 () Bool)

(assert (=> b!4659152 (=> res!1959572 e!2907130)))

(assert (=> b!4659152 (= res!1959572 (= (h!58081 lt!1821144) lt!1821146))))

(declare-fun b!4659153 () Bool)

(assert (=> b!4659153 (= e!2907130 (contains!15084 (t!359169 lt!1821144) lt!1821146))))

(assert (= (and d!1478830 res!1959573) b!4659152))

(assert (= (and b!4659152 (not res!1959572)) b!4659153))

(declare-fun m!5540667 () Bool)

(assert (=> d!1478830 m!5540667))

(declare-fun m!5540669 () Bool)

(assert (=> d!1478830 m!5540669))

(declare-fun m!5540671 () Bool)

(assert (=> b!4659153 m!5540671))

(assert (=> b!4658974 d!1478830))

(declare-fun d!1478832 () Bool)

(declare-fun isEmpty!29021 (Option!11844) Bool)

(assert (=> d!1478832 (= (isDefined!9109 (getPair!380 lt!1821145 key!4968)) (not (isEmpty!29021 (getPair!380 lt!1821145 key!4968))))))

(declare-fun bs!1066630 () Bool)

(assert (= bs!1066630 d!1478832))

(assert (=> bs!1066630 m!5540419))

(declare-fun m!5540673 () Bool)

(assert (=> bs!1066630 m!5540673))

(assert (=> b!4658974 d!1478832))

(declare-fun b!4659170 () Bool)

(declare-fun e!2907145 () Option!11844)

(declare-fun e!2907142 () Option!11844)

(assert (=> b!4659170 (= e!2907145 e!2907142)))

(declare-fun c!797494 () Bool)

(assert (=> b!4659170 (= c!797494 ((_ is Cons!51928) lt!1821145))))

(declare-fun b!4659171 () Bool)

(declare-fun e!2907144 () Bool)

(declare-fun lt!1821305 () Option!11844)

(declare-fun contains!15088 (List!52052 tuple2!53054) Bool)

(declare-fun get!17289 (Option!11844) tuple2!53054)

(assert (=> b!4659171 (= e!2907144 (contains!15088 lt!1821145 (get!17289 lt!1821305)))))

(declare-fun b!4659172 () Bool)

(declare-fun e!2907146 () Bool)

(assert (=> b!4659172 (= e!2907146 (not (containsKey!2746 lt!1821145 key!4968)))))

(declare-fun b!4659173 () Bool)

(declare-fun res!1959582 () Bool)

(assert (=> b!4659173 (=> (not res!1959582) (not e!2907144))))

(assert (=> b!4659173 (= res!1959582 (= (_1!29821 (get!17289 lt!1821305)) key!4968))))

(declare-fun b!4659174 () Bool)

(assert (=> b!4659174 (= e!2907142 None!11843)))

(declare-fun b!4659175 () Bool)

(assert (=> b!4659175 (= e!2907145 (Some!11843 (h!58080 lt!1821145)))))

(declare-fun b!4659176 () Bool)

(assert (=> b!4659176 (= e!2907142 (getPair!380 (t!359168 lt!1821145) key!4968))))

(declare-fun b!4659177 () Bool)

(declare-fun e!2907143 () Bool)

(assert (=> b!4659177 (= e!2907143 e!2907144)))

(declare-fun res!1959583 () Bool)

(assert (=> b!4659177 (=> (not res!1959583) (not e!2907144))))

(assert (=> b!4659177 (= res!1959583 (isDefined!9109 lt!1821305))))

(declare-fun d!1478834 () Bool)

(assert (=> d!1478834 e!2907143))

(declare-fun res!1959585 () Bool)

(assert (=> d!1478834 (=> res!1959585 e!2907143)))

(assert (=> d!1478834 (= res!1959585 e!2907146)))

(declare-fun res!1959584 () Bool)

(assert (=> d!1478834 (=> (not res!1959584) (not e!2907146))))

(assert (=> d!1478834 (= res!1959584 (isEmpty!29021 lt!1821305))))

(assert (=> d!1478834 (= lt!1821305 e!2907145)))

(declare-fun c!797493 () Bool)

(assert (=> d!1478834 (= c!797493 (and ((_ is Cons!51928) lt!1821145) (= (_1!29821 (h!58080 lt!1821145)) key!4968)))))

(assert (=> d!1478834 (noDuplicateKeys!1652 lt!1821145)))

(assert (=> d!1478834 (= (getPair!380 lt!1821145 key!4968) lt!1821305)))

(assert (= (and d!1478834 c!797493) b!4659175))

(assert (= (and d!1478834 (not c!797493)) b!4659170))

(assert (= (and b!4659170 c!797494) b!4659176))

(assert (= (and b!4659170 (not c!797494)) b!4659174))

(assert (= (and d!1478834 res!1959584) b!4659172))

(assert (= (and d!1478834 (not res!1959585)) b!4659177))

(assert (= (and b!4659177 res!1959583) b!4659173))

(assert (= (and b!4659173 res!1959582) b!4659171))

(declare-fun m!5540675 () Bool)

(assert (=> b!4659177 m!5540675))

(declare-fun m!5540677 () Bool)

(assert (=> b!4659173 m!5540677))

(declare-fun m!5540679 () Bool)

(assert (=> b!4659172 m!5540679))

(declare-fun m!5540681 () Bool)

(assert (=> b!4659176 m!5540681))

(declare-fun m!5540683 () Bool)

(assert (=> d!1478834 m!5540683))

(declare-fun m!5540685 () Bool)

(assert (=> d!1478834 m!5540685))

(assert (=> b!4659171 m!5540677))

(assert (=> b!4659171 m!5540677))

(declare-fun m!5540687 () Bool)

(assert (=> b!4659171 m!5540687))

(assert (=> b!4658974 d!1478834))

(declare-fun b!4659178 () Bool)

(declare-fun e!2907147 () List!52052)

(assert (=> b!4659178 (= e!2907147 (t!359168 (t!359168 oldBucket!40)))))

(declare-fun b!4659180 () Bool)

(declare-fun e!2907148 () List!52052)

(assert (=> b!4659180 (= e!2907148 (Cons!51928 (h!58080 (t!359168 oldBucket!40)) (removePairForKey!1275 (t!359168 (t!359168 oldBucket!40)) key!4968)))))

(declare-fun b!4659181 () Bool)

(assert (=> b!4659181 (= e!2907148 Nil!51928)))

(declare-fun b!4659179 () Bool)

(assert (=> b!4659179 (= e!2907147 e!2907148)))

(declare-fun c!797495 () Bool)

(assert (=> b!4659179 (= c!797495 ((_ is Cons!51928) (t!359168 oldBucket!40)))))

(declare-fun d!1478836 () Bool)

(declare-fun lt!1821306 () List!52052)

(assert (=> d!1478836 (not (containsKey!2746 lt!1821306 key!4968))))

(assert (=> d!1478836 (= lt!1821306 e!2907147)))

(declare-fun c!797496 () Bool)

(assert (=> d!1478836 (= c!797496 (and ((_ is Cons!51928) (t!359168 oldBucket!40)) (= (_1!29821 (h!58080 (t!359168 oldBucket!40))) key!4968)))))

(assert (=> d!1478836 (noDuplicateKeys!1652 (t!359168 oldBucket!40))))

(assert (=> d!1478836 (= (removePairForKey!1275 (t!359168 oldBucket!40) key!4968) lt!1821306)))

(assert (= (and d!1478836 c!797496) b!4659178))

(assert (= (and d!1478836 (not c!797496)) b!4659179))

(assert (= (and b!4659179 c!797495) b!4659180))

(assert (= (and b!4659179 (not c!797495)) b!4659181))

(declare-fun m!5540689 () Bool)

(assert (=> b!4659180 m!5540689))

(declare-fun m!5540691 () Bool)

(assert (=> d!1478836 m!5540691))

(assert (=> d!1478836 m!5540487))

(assert (=> b!4658963 d!1478836))

(declare-fun bs!1066646 () Bool)

(declare-fun b!4659243 () Bool)

(assert (= bs!1066646 (and b!4659243 d!1478768)))

(declare-fun lambda!200075 () Int)

(assert (=> bs!1066646 (not (= lambda!200075 lambda!199986))))

(assert (=> b!4659243 true))

(declare-fun bs!1066647 () Bool)

(declare-fun b!4659241 () Bool)

(assert (= bs!1066647 (and b!4659241 d!1478768)))

(declare-fun lambda!200076 () Int)

(assert (=> bs!1066647 (not (= lambda!200076 lambda!199986))))

(declare-fun bs!1066648 () Bool)

(assert (= bs!1066648 (and b!4659241 b!4659243)))

(assert (=> bs!1066648 (= lambda!200076 lambda!200075)))

(assert (=> b!4659241 true))

(declare-fun lambda!200077 () Int)

(assert (=> bs!1066647 (not (= lambda!200077 lambda!199986))))

(declare-fun lt!1821404 () ListMap!4573)

(assert (=> bs!1066648 (= (= lt!1821404 lt!1821141) (= lambda!200077 lambda!200075))))

(assert (=> b!4659241 (= (= lt!1821404 lt!1821141) (= lambda!200077 lambda!200076))))

(assert (=> b!4659241 true))

(declare-fun bs!1066649 () Bool)

(declare-fun d!1478838 () Bool)

(assert (= bs!1066649 (and d!1478838 d!1478768)))

(declare-fun lambda!200078 () Int)

(assert (=> bs!1066649 (not (= lambda!200078 lambda!199986))))

(declare-fun bs!1066650 () Bool)

(assert (= bs!1066650 (and d!1478838 b!4659243)))

(declare-fun lt!1821400 () ListMap!4573)

(assert (=> bs!1066650 (= (= lt!1821400 lt!1821141) (= lambda!200078 lambda!200075))))

(declare-fun bs!1066651 () Bool)

(assert (= bs!1066651 (and d!1478838 b!4659241)))

(assert (=> bs!1066651 (= (= lt!1821400 lt!1821141) (= lambda!200078 lambda!200076))))

(assert (=> bs!1066651 (= (= lt!1821400 lt!1821404) (= lambda!200078 lambda!200077))))

(assert (=> d!1478838 true))

(declare-fun e!2907186 () ListMap!4573)

(assert (=> b!4659241 (= e!2907186 lt!1821404)))

(declare-fun lt!1821412 () ListMap!4573)

(declare-fun +!1992 (ListMap!4573 tuple2!53054) ListMap!4573)

(assert (=> b!4659241 (= lt!1821412 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))

(assert (=> b!4659241 (= lt!1821404 (addToMapMapFromBucket!1109 (t!359168 oldBucket!40) (+!1992 lt!1821141 (h!58080 oldBucket!40))))))

(declare-fun lt!1821416 () Unit!118984)

(declare-fun call!325546 () Unit!118984)

(assert (=> b!4659241 (= lt!1821416 call!325546)))

(assert (=> b!4659241 (forall!11050 (toList!5233 lt!1821141) lambda!200076)))

(declare-fun lt!1821413 () Unit!118984)

(assert (=> b!4659241 (= lt!1821413 lt!1821416)))

(assert (=> b!4659241 (forall!11050 (toList!5233 lt!1821412) lambda!200077)))

(declare-fun lt!1821410 () Unit!118984)

(declare-fun Unit!119001 () Unit!118984)

(assert (=> b!4659241 (= lt!1821410 Unit!119001)))

(assert (=> b!4659241 (forall!11050 (t!359168 oldBucket!40) lambda!200077)))

(declare-fun lt!1821414 () Unit!118984)

(declare-fun Unit!119002 () Unit!118984)

(assert (=> b!4659241 (= lt!1821414 Unit!119002)))

(declare-fun lt!1821399 () Unit!118984)

(declare-fun Unit!119003 () Unit!118984)

(assert (=> b!4659241 (= lt!1821399 Unit!119003)))

(declare-fun lt!1821418 () Unit!118984)

(declare-fun forallContained!3250 (List!52052 Int tuple2!53054) Unit!118984)

(assert (=> b!4659241 (= lt!1821418 (forallContained!3250 (toList!5233 lt!1821412) lambda!200077 (h!58080 oldBucket!40)))))

(assert (=> b!4659241 (contains!15083 lt!1821412 (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1821401 () Unit!118984)

(declare-fun Unit!119004 () Unit!118984)

(assert (=> b!4659241 (= lt!1821401 Unit!119004)))

(assert (=> b!4659241 (contains!15083 lt!1821404 (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1821406 () Unit!118984)

(declare-fun Unit!119005 () Unit!118984)

(assert (=> b!4659241 (= lt!1821406 Unit!119005)))

(assert (=> b!4659241 (forall!11050 oldBucket!40 lambda!200077)))

(declare-fun lt!1821408 () Unit!118984)

(declare-fun Unit!119006 () Unit!118984)

(assert (=> b!4659241 (= lt!1821408 Unit!119006)))

(declare-fun call!325544 () Bool)

(assert (=> b!4659241 call!325544))

(declare-fun lt!1821403 () Unit!118984)

(declare-fun Unit!119007 () Unit!118984)

(assert (=> b!4659241 (= lt!1821403 Unit!119007)))

(declare-fun lt!1821411 () Unit!118984)

(declare-fun Unit!119008 () Unit!118984)

(assert (=> b!4659241 (= lt!1821411 Unit!119008)))

(declare-fun lt!1821415 () Unit!118984)

(declare-fun addForallContainsKeyThenBeforeAdding!605 (ListMap!4573 ListMap!4573 K!13280 V!13526) Unit!118984)

(assert (=> b!4659241 (= lt!1821415 (addForallContainsKeyThenBeforeAdding!605 lt!1821141 lt!1821404 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4659241 (forall!11050 (toList!5233 lt!1821141) lambda!200077)))

(declare-fun lt!1821398 () Unit!118984)

(assert (=> b!4659241 (= lt!1821398 lt!1821415)))

(assert (=> b!4659241 (forall!11050 (toList!5233 lt!1821141) lambda!200077)))

(declare-fun lt!1821405 () Unit!118984)

(declare-fun Unit!119009 () Unit!118984)

(assert (=> b!4659241 (= lt!1821405 Unit!119009)))

(declare-fun res!1959615 () Bool)

(declare-fun call!325545 () Bool)

(assert (=> b!4659241 (= res!1959615 call!325545)))

(declare-fun e!2907185 () Bool)

(assert (=> b!4659241 (=> (not res!1959615) (not e!2907185))))

(assert (=> b!4659241 e!2907185))

(declare-fun lt!1821417 () Unit!118984)

(declare-fun Unit!119010 () Unit!118984)

(assert (=> b!4659241 (= lt!1821417 Unit!119010)))

(declare-fun e!2907184 () Bool)

(assert (=> d!1478838 e!2907184))

(declare-fun res!1959614 () Bool)

(assert (=> d!1478838 (=> (not res!1959614) (not e!2907184))))

(assert (=> d!1478838 (= res!1959614 (forall!11050 oldBucket!40 lambda!200078))))

(assert (=> d!1478838 (= lt!1821400 e!2907186)))

(declare-fun c!797509 () Bool)

(assert (=> d!1478838 (= c!797509 ((_ is Nil!51928) oldBucket!40))))

(assert (=> d!1478838 (noDuplicateKeys!1652 oldBucket!40)))

(assert (=> d!1478838 (= (addToMapMapFromBucket!1109 oldBucket!40 lt!1821141) lt!1821400)))

(declare-fun b!4659242 () Bool)

(declare-fun invariantList!1306 (List!52052) Bool)

(assert (=> b!4659242 (= e!2907184 (invariantList!1306 (toList!5233 lt!1821400)))))

(declare-fun bm!325539 () Bool)

(assert (=> bm!325539 (= call!325544 (forall!11050 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)) (ite c!797509 lambda!200075 lambda!200077)))))

(declare-fun bm!325540 () Bool)

(assert (=> bm!325540 (= call!325545 (forall!11050 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40) (ite c!797509 lambda!200075 lambda!200077)))))

(assert (=> b!4659243 (= e!2907186 lt!1821141)))

(declare-fun lt!1821407 () Unit!118984)

(assert (=> b!4659243 (= lt!1821407 call!325546)))

(assert (=> b!4659243 call!325544))

(declare-fun lt!1821409 () Unit!118984)

(assert (=> b!4659243 (= lt!1821409 lt!1821407)))

(assert (=> b!4659243 call!325545))

(declare-fun lt!1821402 () Unit!118984)

(declare-fun Unit!119011 () Unit!118984)

(assert (=> b!4659243 (= lt!1821402 Unit!119011)))

(declare-fun b!4659244 () Bool)

(assert (=> b!4659244 (= e!2907185 (forall!11050 (toList!5233 lt!1821141) lambda!200077))))

(declare-fun b!4659245 () Bool)

(declare-fun res!1959613 () Bool)

(assert (=> b!4659245 (=> (not res!1959613) (not e!2907184))))

(assert (=> b!4659245 (= res!1959613 (forall!11050 (toList!5233 lt!1821141) lambda!200078))))

(declare-fun bm!325541 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!606 (ListMap!4573) Unit!118984)

(assert (=> bm!325541 (= call!325546 (lemmaContainsAllItsOwnKeys!606 lt!1821141))))

(assert (= (and d!1478838 c!797509) b!4659243))

(assert (= (and d!1478838 (not c!797509)) b!4659241))

(assert (= (and b!4659241 res!1959615) b!4659244))

(assert (= (or b!4659243 b!4659241) bm!325541))

(assert (= (or b!4659243 b!4659241) bm!325540))

(assert (= (or b!4659243 b!4659241) bm!325539))

(assert (= (and d!1478838 res!1959614) b!4659245))

(assert (= (and b!4659245 res!1959613) b!4659242))

(declare-fun m!5540753 () Bool)

(assert (=> bm!325539 m!5540753))

(declare-fun m!5540755 () Bool)

(assert (=> bm!325541 m!5540755))

(declare-fun m!5540757 () Bool)

(assert (=> b!4659241 m!5540757))

(declare-fun m!5540759 () Bool)

(assert (=> b!4659241 m!5540759))

(declare-fun m!5540761 () Bool)

(assert (=> b!4659241 m!5540761))

(declare-fun m!5540763 () Bool)

(assert (=> b!4659241 m!5540763))

(declare-fun m!5540765 () Bool)

(assert (=> b!4659241 m!5540765))

(declare-fun m!5540767 () Bool)

(assert (=> b!4659241 m!5540767))

(declare-fun m!5540769 () Bool)

(assert (=> b!4659241 m!5540769))

(declare-fun m!5540771 () Bool)

(assert (=> b!4659241 m!5540771))

(declare-fun m!5540773 () Bool)

(assert (=> b!4659241 m!5540773))

(declare-fun m!5540775 () Bool)

(assert (=> b!4659241 m!5540775))

(assert (=> b!4659241 m!5540769))

(declare-fun m!5540777 () Bool)

(assert (=> b!4659241 m!5540777))

(assert (=> b!4659241 m!5540773))

(declare-fun m!5540779 () Bool)

(assert (=> d!1478838 m!5540779))

(assert (=> d!1478838 m!5540469))

(assert (=> b!4659244 m!5540773))

(declare-fun m!5540781 () Bool)

(assert (=> bm!325540 m!5540781))

(declare-fun m!5540783 () Bool)

(assert (=> b!4659245 m!5540783))

(declare-fun m!5540785 () Bool)

(assert (=> b!4659242 m!5540785))

(assert (=> b!4658973 d!1478838))

(declare-fun bs!1066652 () Bool)

(declare-fun d!1478850 () Bool)

(assert (= bs!1066652 (and d!1478850 b!4658974)))

(declare-fun lambda!200081 () Int)

(assert (=> bs!1066652 (= lambda!200081 lambda!199980)))

(declare-fun bs!1066653 () Bool)

(assert (= bs!1066653 (and d!1478850 d!1478772)))

(assert (=> bs!1066653 (= lambda!200081 lambda!200029)))

(declare-fun bs!1066654 () Bool)

(assert (= bs!1066654 (and d!1478850 d!1478820)))

(assert (=> bs!1066654 (= lambda!200081 lambda!200035)))

(declare-fun lt!1821421 () ListMap!4573)

(assert (=> d!1478850 (invariantList!1306 (toList!5233 lt!1821421))))

(declare-fun e!2907189 () ListMap!4573)

(assert (=> d!1478850 (= lt!1821421 e!2907189)))

(declare-fun c!797512 () Bool)

(assert (=> d!1478850 (= c!797512 ((_ is Cons!51929) Nil!51929))))

(assert (=> d!1478850 (forall!11048 Nil!51929 lambda!200081)))

(assert (=> d!1478850 (= (extractMap!1708 Nil!51929) lt!1821421)))

(declare-fun b!4659252 () Bool)

(assert (=> b!4659252 (= e!2907189 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 Nil!51929)) (extractMap!1708 (t!359169 Nil!51929))))))

(declare-fun b!4659253 () Bool)

(assert (=> b!4659253 (= e!2907189 (ListMap!4574 Nil!51928))))

(assert (= (and d!1478850 c!797512) b!4659252))

(assert (= (and d!1478850 (not c!797512)) b!4659253))

(declare-fun m!5540787 () Bool)

(assert (=> d!1478850 m!5540787))

(declare-fun m!5540789 () Bool)

(assert (=> d!1478850 m!5540789))

(declare-fun m!5540791 () Bool)

(assert (=> b!4659252 m!5540791))

(assert (=> b!4659252 m!5540791))

(declare-fun m!5540793 () Bool)

(assert (=> b!4659252 m!5540793))

(assert (=> b!4658973 d!1478850))

(declare-fun d!1478852 () Bool)

(declare-fun hash!3799 (Hashable!6049 K!13280) (_ BitVec 64))

(assert (=> d!1478852 (= (hash!3797 hashF!1389 key!4968) (hash!3799 hashF!1389 key!4968))))

(declare-fun bs!1066655 () Bool)

(assert (= bs!1066655 d!1478852))

(declare-fun m!5540795 () Bool)

(assert (=> bs!1066655 m!5540795))

(assert (=> b!4658971 d!1478852))

(declare-fun b!4659272 () Bool)

(declare-datatypes ((List!52055 0))(
  ( (Nil!51931) (Cons!51931 (h!58085 K!13280) (t!359171 List!52055)) )
))
(declare-fun e!2907207 () List!52055)

(declare-fun keys!18406 (ListMap!4573) List!52055)

(assert (=> b!4659272 (= e!2907207 (keys!18406 lt!1821138))))

(declare-fun bm!325544 () Bool)

(declare-fun call!325549 () Bool)

(declare-fun contains!15089 (List!52055 K!13280) Bool)

(assert (=> bm!325544 (= call!325549 (contains!15089 e!2907207 key!4968))))

(declare-fun c!797519 () Bool)

(declare-fun c!797521 () Bool)

(assert (=> bm!325544 (= c!797519 c!797521)))

(declare-fun b!4659273 () Bool)

(assert (=> b!4659273 false))

(declare-fun lt!1821441 () Unit!118984)

(declare-fun lt!1821442 () Unit!118984)

(assert (=> b!4659273 (= lt!1821441 lt!1821442)))

(declare-fun containsKey!2750 (List!52052 K!13280) Bool)

(assert (=> b!4659273 (containsKey!2750 (toList!5233 lt!1821138) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!756 (List!52052 K!13280) Unit!118984)

(assert (=> b!4659273 (= lt!1821442 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821138) key!4968))))

(declare-fun e!2907206 () Unit!118984)

(declare-fun Unit!119012 () Unit!118984)

(assert (=> b!4659273 (= e!2907206 Unit!119012)))

(declare-fun d!1478854 () Bool)

(declare-fun e!2907205 () Bool)

(assert (=> d!1478854 e!2907205))

(declare-fun res!1959622 () Bool)

(assert (=> d!1478854 (=> res!1959622 e!2907205)))

(declare-fun e!2907203 () Bool)

(assert (=> d!1478854 (= res!1959622 e!2907203)))

(declare-fun res!1959623 () Bool)

(assert (=> d!1478854 (=> (not res!1959623) (not e!2907203))))

(declare-fun lt!1821439 () Bool)

(assert (=> d!1478854 (= res!1959623 (not lt!1821439))))

(declare-fun lt!1821443 () Bool)

(assert (=> d!1478854 (= lt!1821439 lt!1821443)))

(declare-fun lt!1821444 () Unit!118984)

(declare-fun e!2907202 () Unit!118984)

(assert (=> d!1478854 (= lt!1821444 e!2907202)))

(assert (=> d!1478854 (= c!797521 lt!1821443)))

(assert (=> d!1478854 (= lt!1821443 (containsKey!2750 (toList!5233 lt!1821138) key!4968))))

(assert (=> d!1478854 (= (contains!15083 lt!1821138 key!4968) lt!1821439)))

(declare-fun b!4659274 () Bool)

(declare-fun Unit!119013 () Unit!118984)

(assert (=> b!4659274 (= e!2907206 Unit!119013)))

(declare-fun b!4659275 () Bool)

(declare-fun getKeysList!757 (List!52052) List!52055)

(assert (=> b!4659275 (= e!2907207 (getKeysList!757 (toList!5233 lt!1821138)))))

(declare-fun b!4659276 () Bool)

(declare-fun e!2907204 () Bool)

(assert (=> b!4659276 (= e!2907205 e!2907204)))

(declare-fun res!1959624 () Bool)

(assert (=> b!4659276 (=> (not res!1959624) (not e!2907204))))

(declare-datatypes ((Option!11848 0))(
  ( (None!11847) (Some!11847 (v!46145 V!13526)) )
))
(declare-fun isDefined!9113 (Option!11848) Bool)

(declare-fun getValueByKey!1626 (List!52052 K!13280) Option!11848)

(assert (=> b!4659276 (= res!1959624 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968)))))

(declare-fun b!4659277 () Bool)

(assert (=> b!4659277 (= e!2907204 (contains!15089 (keys!18406 lt!1821138) key!4968))))

(declare-fun b!4659278 () Bool)

(assert (=> b!4659278 (= e!2907202 e!2907206)))

(declare-fun c!797520 () Bool)

(assert (=> b!4659278 (= c!797520 call!325549)))

(declare-fun b!4659279 () Bool)

(declare-fun lt!1821438 () Unit!118984)

(assert (=> b!4659279 (= e!2907202 lt!1821438)))

(declare-fun lt!1821440 () Unit!118984)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (List!52052 K!13280) Unit!118984)

(assert (=> b!4659279 (= lt!1821440 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821138) key!4968))))

(assert (=> b!4659279 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968))))

(declare-fun lt!1821445 () Unit!118984)

(assert (=> b!4659279 (= lt!1821445 lt!1821440)))

(declare-fun lemmaInListThenGetKeysListContains!752 (List!52052 K!13280) Unit!118984)

(assert (=> b!4659279 (= lt!1821438 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821138) key!4968))))

(assert (=> b!4659279 call!325549))

(declare-fun b!4659280 () Bool)

(assert (=> b!4659280 (= e!2907203 (not (contains!15089 (keys!18406 lt!1821138) key!4968)))))

(assert (= (and d!1478854 c!797521) b!4659279))

(assert (= (and d!1478854 (not c!797521)) b!4659278))

(assert (= (and b!4659278 c!797520) b!4659273))

(assert (= (and b!4659278 (not c!797520)) b!4659274))

(assert (= (or b!4659279 b!4659278) bm!325544))

(assert (= (and bm!325544 c!797519) b!4659275))

(assert (= (and bm!325544 (not c!797519)) b!4659272))

(assert (= (and d!1478854 res!1959623) b!4659280))

(assert (= (and d!1478854 (not res!1959622)) b!4659276))

(assert (= (and b!4659276 res!1959624) b!4659277))

(declare-fun m!5540797 () Bool)

(assert (=> d!1478854 m!5540797))

(assert (=> b!4659273 m!5540797))

(declare-fun m!5540799 () Bool)

(assert (=> b!4659273 m!5540799))

(declare-fun m!5540801 () Bool)

(assert (=> b!4659280 m!5540801))

(assert (=> b!4659280 m!5540801))

(declare-fun m!5540803 () Bool)

(assert (=> b!4659280 m!5540803))

(declare-fun m!5540805 () Bool)

(assert (=> b!4659275 m!5540805))

(assert (=> b!4659272 m!5540801))

(declare-fun m!5540807 () Bool)

(assert (=> b!4659279 m!5540807))

(declare-fun m!5540809 () Bool)

(assert (=> b!4659279 m!5540809))

(assert (=> b!4659279 m!5540809))

(declare-fun m!5540811 () Bool)

(assert (=> b!4659279 m!5540811))

(declare-fun m!5540813 () Bool)

(assert (=> b!4659279 m!5540813))

(assert (=> b!4659277 m!5540801))

(assert (=> b!4659277 m!5540801))

(assert (=> b!4659277 m!5540803))

(assert (=> b!4659276 m!5540809))

(assert (=> b!4659276 m!5540809))

(assert (=> b!4659276 m!5540811))

(declare-fun m!5540815 () Bool)

(assert (=> bm!325544 m!5540815))

(assert (=> b!4658960 d!1478854))

(declare-fun bs!1066656 () Bool)

(declare-fun d!1478856 () Bool)

(assert (= bs!1066656 (and d!1478856 b!4658974)))

(declare-fun lambda!200082 () Int)

(assert (=> bs!1066656 (= lambda!200082 lambda!199980)))

(declare-fun bs!1066657 () Bool)

(assert (= bs!1066657 (and d!1478856 d!1478772)))

(assert (=> bs!1066657 (= lambda!200082 lambda!200029)))

(declare-fun bs!1066658 () Bool)

(assert (= bs!1066658 (and d!1478856 d!1478820)))

(assert (=> bs!1066658 (= lambda!200082 lambda!200035)))

(declare-fun bs!1066659 () Bool)

(assert (= bs!1066659 (and d!1478856 d!1478850)))

(assert (=> bs!1066659 (= lambda!200082 lambda!200081)))

(declare-fun lt!1821446 () ListMap!4573)

(assert (=> d!1478856 (invariantList!1306 (toList!5233 lt!1821446))))

(declare-fun e!2907208 () ListMap!4573)

(assert (=> d!1478856 (= lt!1821446 e!2907208)))

(declare-fun c!797522 () Bool)

(assert (=> d!1478856 (= c!797522 ((_ is Cons!51929) lt!1821144))))

(assert (=> d!1478856 (forall!11048 lt!1821144 lambda!200082)))

(assert (=> d!1478856 (= (extractMap!1708 lt!1821144) lt!1821446)))

(declare-fun b!4659281 () Bool)

(assert (=> b!4659281 (= e!2907208 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 lt!1821144)) (extractMap!1708 (t!359169 lt!1821144))))))

(declare-fun b!4659282 () Bool)

(assert (=> b!4659282 (= e!2907208 (ListMap!4574 Nil!51928))))

(assert (= (and d!1478856 c!797522) b!4659281))

(assert (= (and d!1478856 (not c!797522)) b!4659282))

(declare-fun m!5540817 () Bool)

(assert (=> d!1478856 m!5540817))

(declare-fun m!5540819 () Bool)

(assert (=> d!1478856 m!5540819))

(declare-fun m!5540821 () Bool)

(assert (=> b!4659281 m!5540821))

(assert (=> b!4659281 m!5540821))

(declare-fun m!5540823 () Bool)

(assert (=> b!4659281 m!5540823))

(assert (=> b!4658960 d!1478856))

(declare-fun bs!1066660 () Bool)

(declare-fun d!1478858 () Bool)

(assert (= bs!1066660 (and d!1478858 b!4658974)))

(declare-fun lambda!200085 () Int)

(assert (=> bs!1066660 (not (= lambda!200085 lambda!199980))))

(declare-fun bs!1066661 () Bool)

(assert (= bs!1066661 (and d!1478858 d!1478772)))

(assert (=> bs!1066661 (not (= lambda!200085 lambda!200029))))

(declare-fun bs!1066662 () Bool)

(assert (= bs!1066662 (and d!1478858 d!1478850)))

(assert (=> bs!1066662 (not (= lambda!200085 lambda!200081))))

(declare-fun bs!1066663 () Bool)

(assert (= bs!1066663 (and d!1478858 d!1478856)))

(assert (=> bs!1066663 (not (= lambda!200085 lambda!200082))))

(declare-fun bs!1066664 () Bool)

(assert (= bs!1066664 (and d!1478858 d!1478820)))

(assert (=> bs!1066664 (not (= lambda!200085 lambda!200035))))

(assert (=> d!1478858 true))

(assert (=> d!1478858 (= (allKeysSameHashInMap!1608 (ListLongMap!3788 lt!1821143) hashF!1389) (forall!11048 (toList!5234 (ListLongMap!3788 lt!1821143)) lambda!200085))))

(declare-fun bs!1066665 () Bool)

(assert (= bs!1066665 d!1478858))

(declare-fun m!5540825 () Bool)

(assert (=> bs!1066665 m!5540825))

(assert (=> b!4658962 d!1478858))

(declare-fun b!4659285 () Bool)

(declare-fun e!2907209 () List!52052)

(assert (=> b!4659285 (= e!2907209 (t!359168 (tail!8255 oldBucket!40)))))

(declare-fun b!4659287 () Bool)

(declare-fun e!2907210 () List!52052)

(assert (=> b!4659287 (= e!2907210 (Cons!51928 (h!58080 (tail!8255 oldBucket!40)) (removePairForKey!1275 (t!359168 (tail!8255 oldBucket!40)) key!4968)))))

(declare-fun b!4659288 () Bool)

(assert (=> b!4659288 (= e!2907210 Nil!51928)))

(declare-fun b!4659286 () Bool)

(assert (=> b!4659286 (= e!2907209 e!2907210)))

(declare-fun c!797523 () Bool)

(assert (=> b!4659286 (= c!797523 ((_ is Cons!51928) (tail!8255 oldBucket!40)))))

(declare-fun d!1478860 () Bool)

(declare-fun lt!1821447 () List!52052)

(assert (=> d!1478860 (not (containsKey!2746 lt!1821447 key!4968))))

(assert (=> d!1478860 (= lt!1821447 e!2907209)))

(declare-fun c!797524 () Bool)

(assert (=> d!1478860 (= c!797524 (and ((_ is Cons!51928) (tail!8255 oldBucket!40)) (= (_1!29821 (h!58080 (tail!8255 oldBucket!40))) key!4968)))))

(assert (=> d!1478860 (noDuplicateKeys!1652 (tail!8255 oldBucket!40))))

(assert (=> d!1478860 (= (removePairForKey!1275 (tail!8255 oldBucket!40) key!4968) lt!1821447)))

(assert (= (and d!1478860 c!797524) b!4659285))

(assert (= (and d!1478860 (not c!797524)) b!4659286))

(assert (= (and b!4659286 c!797523) b!4659287))

(assert (= (and b!4659286 (not c!797523)) b!4659288))

(declare-fun m!5540827 () Bool)

(assert (=> b!4659287 m!5540827))

(declare-fun m!5540829 () Bool)

(assert (=> d!1478860 m!5540829))

(assert (=> d!1478860 m!5540461))

(declare-fun m!5540831 () Bool)

(assert (=> d!1478860 m!5540831))

(assert (=> b!4658972 d!1478860))

(declare-fun d!1478862 () Bool)

(assert (=> d!1478862 (= (tail!8255 oldBucket!40) (t!359168 oldBucket!40))))

(assert (=> b!4658972 d!1478862))

(declare-fun d!1478864 () Bool)

(assert (=> d!1478864 (= (tail!8255 newBucket!224) (t!359168 newBucket!224))))

(assert (=> b!4658972 d!1478864))

(declare-fun bs!1066666 () Bool)

(declare-fun d!1478866 () Bool)

(assert (= bs!1066666 (and d!1478866 b!4659243)))

(declare-fun lambda!200086 () Int)

(assert (=> bs!1066666 (not (= lambda!200086 lambda!200075))))

(declare-fun bs!1066667 () Bool)

(assert (= bs!1066667 (and d!1478866 d!1478838)))

(assert (=> bs!1066667 (not (= lambda!200086 lambda!200078))))

(declare-fun bs!1066668 () Bool)

(assert (= bs!1066668 (and d!1478866 b!4659241)))

(assert (=> bs!1066668 (not (= lambda!200086 lambda!200077))))

(declare-fun bs!1066669 () Bool)

(assert (= bs!1066669 (and d!1478866 d!1478768)))

(assert (=> bs!1066669 (= lambda!200086 lambda!199986)))

(assert (=> bs!1066668 (not (= lambda!200086 lambda!200076))))

(assert (=> d!1478866 true))

(assert (=> d!1478866 true))

(assert (=> d!1478866 (= (allKeysSameHash!1506 oldBucket!40 hash!414 hashF!1389) (forall!11050 oldBucket!40 lambda!200086))))

(declare-fun bs!1066670 () Bool)

(assert (= bs!1066670 d!1478866))

(declare-fun m!5540833 () Bool)

(assert (=> bs!1066670 m!5540833))

(assert (=> b!4658970 d!1478866))

(declare-fun d!1478868 () Bool)

(declare-fun res!1959625 () Bool)

(declare-fun e!2907211 () Bool)

(assert (=> d!1478868 (=> res!1959625 e!2907211)))

(assert (=> d!1478868 (= res!1959625 (not ((_ is Cons!51928) newBucket!224)))))

(assert (=> d!1478868 (= (noDuplicateKeys!1652 newBucket!224) e!2907211)))

(declare-fun b!4659289 () Bool)

(declare-fun e!2907212 () Bool)

(assert (=> b!4659289 (= e!2907211 e!2907212)))

(declare-fun res!1959626 () Bool)

(assert (=> b!4659289 (=> (not res!1959626) (not e!2907212))))

(assert (=> b!4659289 (= res!1959626 (not (containsKey!2746 (t!359168 newBucket!224) (_1!29821 (h!58080 newBucket!224)))))))

(declare-fun b!4659290 () Bool)

(assert (=> b!4659290 (= e!2907212 (noDuplicateKeys!1652 (t!359168 newBucket!224)))))

(assert (= (and d!1478868 (not res!1959625)) b!4659289))

(assert (= (and b!4659289 res!1959626) b!4659290))

(declare-fun m!5540835 () Bool)

(assert (=> b!4659289 m!5540835))

(declare-fun m!5540837 () Bool)

(assert (=> b!4659290 m!5540837))

(assert (=> b!4658969 d!1478868))

(declare-fun tp!1343438 () Bool)

(declare-fun b!4659295 () Bool)

(declare-fun e!2907215 () Bool)

(assert (=> b!4659295 (= e!2907215 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343438))))

(assert (=> b!4658968 (= tp!1343430 e!2907215)))

(assert (= (and b!4658968 ((_ is Cons!51928) (t!359168 newBucket!224))) b!4659295))

(declare-fun tp!1343439 () Bool)

(declare-fun e!2907216 () Bool)

(declare-fun b!4659296 () Bool)

(assert (=> b!4659296 (= e!2907216 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343439))))

(assert (=> b!4658964 (= tp!1343431 e!2907216)))

(assert (= (and b!4658964 ((_ is Cons!51928) (t!359168 oldBucket!40))) b!4659296))

(declare-fun b_lambda!174659 () Bool)

(assert (= b_lambda!174647 (or b!4658974 b_lambda!174659)))

(declare-fun bs!1066671 () Bool)

(declare-fun d!1478870 () Bool)

(assert (= bs!1066671 (and d!1478870 b!4658974)))

(assert (=> bs!1066671 (= (dynLambda!21606 lambda!199980 (h!58081 lt!1821143)) (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821143))))))

(declare-fun m!5540839 () Bool)

(assert (=> bs!1066671 m!5540839))

(assert (=> b!4659019 d!1478870))

(declare-fun b_lambda!174661 () Bool)

(assert (= b_lambda!174649 (or b!4658974 b_lambda!174661)))

(declare-fun bs!1066672 () Bool)

(declare-fun d!1478872 () Bool)

(assert (= bs!1066672 (and d!1478872 b!4658974)))

(assert (=> bs!1066672 (= (dynLambda!21606 lambda!199980 lt!1821146) (noDuplicateKeys!1652 (_2!29822 lt!1821146)))))

(declare-fun m!5540841 () Bool)

(assert (=> bs!1066672 m!5540841))

(assert (=> d!1478770 d!1478872))

(check-sat (not d!1478820) (not d!1478828) (not b!4659241) (not b!4659176) tp_is_empty!29901 (not d!1478866) (not d!1478770) (not d!1478830) (not d!1478860) (not d!1478826) (not b!4659180) (not b!4659091) (not bm!325541) (not b!4659094) (not bm!325544) (not d!1478858) (not b!4659007) (not b!4659277) (not b!4659172) (not b!4659126) tp_is_empty!29903 (not b!4659245) (not b!4659147) (not b!4659272) (not b!4659124) (not b!4659013) (not bm!325539) (not b!4659289) (not d!1478768) (not b!4659027) (not b!4659280) (not d!1478762) (not bm!325540) (not d!1478854) (not b!4659020) (not b!4659014) (not b!4659290) (not b!4659252) (not b!4659244) (not b!4659144) (not d!1478834) (not b!4659171) (not d!1478852) (not b!4659273) (not b!4659295) (not b!4659279) (not b!4659242) (not b!4659287) (not d!1478772) (not b!4659093) (not b!4659296) (not d!1478810) (not d!1478798) (not b!4659092) (not d!1478836) (not d!1478838) (not b!4659177) (not b!4659281) (not d!1478832) (not d!1478856) (not d!1478850) (not bs!1066672) (not b!4659153) (not bs!1066671) (not b!4659173) (not b_lambda!174659) (not b!4659276) (not b!4659275) (not b_lambda!174661))
(check-sat)
(get-model)

(declare-fun b!4659557 () Bool)

(declare-fun e!2907408 () List!52055)

(assert (=> b!4659557 (= e!2907408 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147))))))

(declare-fun bm!325554 () Bool)

(declare-fun call!325559 () Bool)

(assert (=> bm!325554 (= call!325559 (contains!15089 e!2907408 key!4968))))

(declare-fun c!797574 () Bool)

(declare-fun c!797576 () Bool)

(assert (=> bm!325554 (= c!797574 c!797576)))

(declare-fun b!4659558 () Bool)

(assert (=> b!4659558 false))

(declare-fun lt!1821621 () Unit!118984)

(declare-fun lt!1821622 () Unit!118984)

(assert (=> b!4659558 (= lt!1821621 lt!1821622)))

(assert (=> b!4659558 (containsKey!2750 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968)))

(assert (=> b!4659558 (= lt!1821622 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(declare-fun e!2907407 () Unit!118984)

(declare-fun Unit!119031 () Unit!118984)

(assert (=> b!4659558 (= e!2907407 Unit!119031)))

(declare-fun d!1479086 () Bool)

(declare-fun e!2907406 () Bool)

(assert (=> d!1479086 e!2907406))

(declare-fun res!1959781 () Bool)

(assert (=> d!1479086 (=> res!1959781 e!2907406)))

(declare-fun e!2907404 () Bool)

(assert (=> d!1479086 (= res!1959781 e!2907404)))

(declare-fun res!1959782 () Bool)

(assert (=> d!1479086 (=> (not res!1959782) (not e!2907404))))

(declare-fun lt!1821619 () Bool)

(assert (=> d!1479086 (= res!1959782 (not lt!1821619))))

(declare-fun lt!1821623 () Bool)

(assert (=> d!1479086 (= lt!1821619 lt!1821623)))

(declare-fun lt!1821624 () Unit!118984)

(declare-fun e!2907403 () Unit!118984)

(assert (=> d!1479086 (= lt!1821624 e!2907403)))

(assert (=> d!1479086 (= c!797576 lt!1821623)))

(assert (=> d!1479086 (= lt!1821623 (containsKey!2750 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> d!1479086 (= (contains!15083 (extractMap!1708 (toList!5234 lt!1821147)) key!4968) lt!1821619)))

(declare-fun b!4659559 () Bool)

(declare-fun Unit!119032 () Unit!118984)

(assert (=> b!4659559 (= e!2907407 Unit!119032)))

(declare-fun b!4659560 () Bool)

(assert (=> b!4659560 (= e!2907408 (getKeysList!757 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))

(declare-fun b!4659561 () Bool)

(declare-fun e!2907405 () Bool)

(assert (=> b!4659561 (= e!2907406 e!2907405)))

(declare-fun res!1959783 () Bool)

(assert (=> b!4659561 (=> (not res!1959783) (not e!2907405))))

(assert (=> b!4659561 (= res!1959783 (isDefined!9113 (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968)))))

(declare-fun b!4659562 () Bool)

(assert (=> b!4659562 (= e!2907405 (contains!15089 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(declare-fun b!4659563 () Bool)

(assert (=> b!4659563 (= e!2907403 e!2907407)))

(declare-fun c!797575 () Bool)

(assert (=> b!4659563 (= c!797575 call!325559)))

(declare-fun b!4659564 () Bool)

(declare-fun lt!1821618 () Unit!118984)

(assert (=> b!4659564 (= e!2907403 lt!1821618)))

(declare-fun lt!1821620 () Unit!118984)

(assert (=> b!4659564 (= lt!1821620 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> b!4659564 (isDefined!9113 (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(declare-fun lt!1821625 () Unit!118984)

(assert (=> b!4659564 (= lt!1821625 lt!1821620)))

(assert (=> b!4659564 (= lt!1821618 (lemmaInListThenGetKeysListContains!752 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> b!4659564 call!325559))

(declare-fun b!4659565 () Bool)

(assert (=> b!4659565 (= e!2907404 (not (contains!15089 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147))) key!4968)))))

(assert (= (and d!1479086 c!797576) b!4659564))

(assert (= (and d!1479086 (not c!797576)) b!4659563))

(assert (= (and b!4659563 c!797575) b!4659558))

(assert (= (and b!4659563 (not c!797575)) b!4659559))

(assert (= (or b!4659564 b!4659563) bm!325554))

(assert (= (and bm!325554 c!797574) b!4659560))

(assert (= (and bm!325554 (not c!797574)) b!4659557))

(assert (= (and d!1479086 res!1959782) b!4659565))

(assert (= (and d!1479086 (not res!1959781)) b!4659561))

(assert (= (and b!4659561 res!1959783) b!4659562))

(declare-fun m!5541327 () Bool)

(assert (=> d!1479086 m!5541327))

(assert (=> b!4659558 m!5541327))

(declare-fun m!5541329 () Bool)

(assert (=> b!4659558 m!5541329))

(assert (=> b!4659565 m!5540603))

(declare-fun m!5541331 () Bool)

(assert (=> b!4659565 m!5541331))

(assert (=> b!4659565 m!5541331))

(declare-fun m!5541333 () Bool)

(assert (=> b!4659565 m!5541333))

(declare-fun m!5541335 () Bool)

(assert (=> b!4659560 m!5541335))

(assert (=> b!4659557 m!5540603))

(assert (=> b!4659557 m!5541331))

(declare-fun m!5541337 () Bool)

(assert (=> b!4659564 m!5541337))

(declare-fun m!5541339 () Bool)

(assert (=> b!4659564 m!5541339))

(assert (=> b!4659564 m!5541339))

(declare-fun m!5541341 () Bool)

(assert (=> b!4659564 m!5541341))

(declare-fun m!5541343 () Bool)

(assert (=> b!4659564 m!5541343))

(assert (=> b!4659562 m!5540603))

(assert (=> b!4659562 m!5541331))

(assert (=> b!4659562 m!5541331))

(assert (=> b!4659562 m!5541333))

(assert (=> b!4659561 m!5541339))

(assert (=> b!4659561 m!5541339))

(assert (=> b!4659561 m!5541341))

(declare-fun m!5541345 () Bool)

(assert (=> bm!325554 m!5541345))

(assert (=> b!4659092 d!1479086))

(declare-fun bs!1066816 () Bool)

(declare-fun d!1479088 () Bool)

(assert (= bs!1066816 (and d!1479088 b!4658974)))

(declare-fun lambda!200127 () Int)

(assert (=> bs!1066816 (= lambda!200127 lambda!199980)))

(declare-fun bs!1066817 () Bool)

(assert (= bs!1066817 (and d!1479088 d!1478772)))

(assert (=> bs!1066817 (= lambda!200127 lambda!200029)))

(declare-fun bs!1066818 () Bool)

(assert (= bs!1066818 (and d!1479088 d!1478850)))

(assert (=> bs!1066818 (= lambda!200127 lambda!200081)))

(declare-fun bs!1066819 () Bool)

(assert (= bs!1066819 (and d!1479088 d!1478858)))

(assert (=> bs!1066819 (not (= lambda!200127 lambda!200085))))

(declare-fun bs!1066820 () Bool)

(assert (= bs!1066820 (and d!1479088 d!1478856)))

(assert (=> bs!1066820 (= lambda!200127 lambda!200082)))

(declare-fun bs!1066821 () Bool)

(assert (= bs!1066821 (and d!1479088 d!1478820)))

(assert (=> bs!1066821 (= lambda!200127 lambda!200035)))

(declare-fun lt!1821626 () ListMap!4573)

(assert (=> d!1479088 (invariantList!1306 (toList!5233 lt!1821626))))

(declare-fun e!2907409 () ListMap!4573)

(assert (=> d!1479088 (= lt!1821626 e!2907409)))

(declare-fun c!797577 () Bool)

(assert (=> d!1479088 (= c!797577 ((_ is Cons!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479088 (forall!11048 (toList!5234 lt!1821147) lambda!200127)))

(assert (=> d!1479088 (= (extractMap!1708 (toList!5234 lt!1821147)) lt!1821626)))

(declare-fun b!4659566 () Bool)

(assert (=> b!4659566 (= e!2907409 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))))))

(declare-fun b!4659567 () Bool)

(assert (=> b!4659567 (= e!2907409 (ListMap!4574 Nil!51928))))

(assert (= (and d!1479088 c!797577) b!4659566))

(assert (= (and d!1479088 (not c!797577)) b!4659567))

(declare-fun m!5541347 () Bool)

(assert (=> d!1479088 m!5541347))

(declare-fun m!5541349 () Bool)

(assert (=> d!1479088 m!5541349))

(declare-fun m!5541351 () Bool)

(assert (=> b!4659566 m!5541351))

(assert (=> b!4659566 m!5541351))

(declare-fun m!5541353 () Bool)

(assert (=> b!4659566 m!5541353))

(assert (=> b!4659092 d!1479088))

(declare-fun d!1479090 () Bool)

(declare-fun lt!1821627 () Bool)

(assert (=> d!1479090 (= lt!1821627 (select (content!9013 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821136 lt!1821145)))))

(declare-fun e!2907411 () Bool)

(assert (=> d!1479090 (= lt!1821627 e!2907411)))

(declare-fun res!1959785 () Bool)

(assert (=> d!1479090 (=> (not res!1959785) (not e!2907411))))

(assert (=> d!1479090 (= res!1959785 ((_ is Cons!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479090 (= (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821136 lt!1821145)) lt!1821627)))

(declare-fun b!4659568 () Bool)

(declare-fun e!2907410 () Bool)

(assert (=> b!4659568 (= e!2907411 e!2907410)))

(declare-fun res!1959784 () Bool)

(assert (=> b!4659568 (=> res!1959784 e!2907410)))

(assert (=> b!4659568 (= res!1959784 (= (h!58081 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821136 lt!1821145)))))

(declare-fun b!4659569 () Bool)

(assert (=> b!4659569 (= e!2907410 (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821136 lt!1821145)))))

(assert (= (and d!1479090 res!1959785) b!4659568))

(assert (= (and b!4659568 (not res!1959784)) b!4659569))

(declare-fun m!5541355 () Bool)

(assert (=> d!1479090 m!5541355))

(declare-fun m!5541357 () Bool)

(assert (=> d!1479090 m!5541357))

(declare-fun m!5541359 () Bool)

(assert (=> b!4659569 m!5541359))

(assert (=> d!1478810 d!1479090))

(declare-fun d!1479092 () Bool)

(assert (=> d!1479092 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821136 lt!1821145))))

(assert (=> d!1479092 true))

(declare-fun _$41!395 () Unit!118984)

(assert (=> d!1479092 (= (choose!32082 lt!1821147 lt!1821136 lt!1821145) _$41!395)))

(declare-fun bs!1066822 () Bool)

(assert (= bs!1066822 d!1479092))

(assert (=> bs!1066822 m!5540643))

(assert (=> d!1478810 d!1479092))

(assert (=> d!1478810 d!1478798))

(declare-fun b!4659579 () Bool)

(declare-fun e!2907416 () Option!11847)

(assert (=> b!4659579 (= e!2907416 (Some!11846 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(declare-fun b!4659582 () Bool)

(declare-fun e!2907417 () Option!11847)

(assert (=> b!4659582 (= e!2907417 None!11846)))

(declare-fun b!4659581 () Bool)

(assert (=> b!4659581 (= e!2907417 (getValueByKey!1625 (t!359169 (toList!5234 lt!1821147)) lt!1821248))))

(declare-fun b!4659580 () Bool)

(assert (=> b!4659580 (= e!2907416 e!2907417)))

(declare-fun c!797583 () Bool)

(assert (=> b!4659580 (= c!797583 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (not (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821248))))))

(declare-fun d!1479094 () Bool)

(declare-fun c!797582 () Bool)

(assert (=> d!1479094 (= c!797582 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821248)))))

(assert (=> d!1479094 (= (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248) e!2907416)))

(assert (= (and d!1479094 c!797582) b!4659579))

(assert (= (and d!1479094 (not c!797582)) b!4659580))

(assert (= (and b!4659580 c!797583) b!4659581))

(assert (= (and b!4659580 (not c!797583)) b!4659582))

(declare-fun m!5541361 () Bool)

(assert (=> b!4659581 m!5541361))

(assert (=> b!4659094 d!1479094))

(declare-fun d!1479096 () Bool)

(declare-fun lt!1821630 () Bool)

(declare-fun content!9016 (List!52055) (InoxSet K!13280))

(assert (=> d!1479096 (= lt!1821630 (select (content!9016 (keys!18406 lt!1821138)) key!4968))))

(declare-fun e!2907423 () Bool)

(assert (=> d!1479096 (= lt!1821630 e!2907423)))

(declare-fun res!1959791 () Bool)

(assert (=> d!1479096 (=> (not res!1959791) (not e!2907423))))

(assert (=> d!1479096 (= res!1959791 ((_ is Cons!51931) (keys!18406 lt!1821138)))))

(assert (=> d!1479096 (= (contains!15089 (keys!18406 lt!1821138) key!4968) lt!1821630)))

(declare-fun b!4659587 () Bool)

(declare-fun e!2907422 () Bool)

(assert (=> b!4659587 (= e!2907423 e!2907422)))

(declare-fun res!1959790 () Bool)

(assert (=> b!4659587 (=> res!1959790 e!2907422)))

(assert (=> b!4659587 (= res!1959790 (= (h!58085 (keys!18406 lt!1821138)) key!4968))))

(declare-fun b!4659588 () Bool)

(assert (=> b!4659588 (= e!2907422 (contains!15089 (t!359171 (keys!18406 lt!1821138)) key!4968))))

(assert (= (and d!1479096 res!1959791) b!4659587))

(assert (= (and b!4659587 (not res!1959790)) b!4659588))

(assert (=> d!1479096 m!5540801))

(declare-fun m!5541363 () Bool)

(assert (=> d!1479096 m!5541363))

(declare-fun m!5541365 () Bool)

(assert (=> d!1479096 m!5541365))

(declare-fun m!5541367 () Bool)

(assert (=> b!4659588 m!5541367))

(assert (=> b!4659277 d!1479096))

(declare-fun b!4659596 () Bool)

(assert (=> b!4659596 true))

(declare-fun d!1479098 () Bool)

(declare-fun e!2907426 () Bool)

(assert (=> d!1479098 e!2907426))

(declare-fun res!1959798 () Bool)

(assert (=> d!1479098 (=> (not res!1959798) (not e!2907426))))

(declare-fun lt!1821633 () List!52055)

(declare-fun noDuplicate!844 (List!52055) Bool)

(assert (=> d!1479098 (= res!1959798 (noDuplicate!844 lt!1821633))))

(assert (=> d!1479098 (= lt!1821633 (getKeysList!757 (toList!5233 lt!1821138)))))

(assert (=> d!1479098 (= (keys!18406 lt!1821138) lt!1821633)))

(declare-fun b!4659595 () Bool)

(declare-fun res!1959799 () Bool)

(assert (=> b!4659595 (=> (not res!1959799) (not e!2907426))))

(declare-fun length!544 (List!52055) Int)

(declare-fun length!545 (List!52052) Int)

(assert (=> b!4659595 (= res!1959799 (= (length!544 lt!1821633) (length!545 (toList!5233 lt!1821138))))))

(declare-fun res!1959800 () Bool)

(assert (=> b!4659596 (=> (not res!1959800) (not e!2907426))))

(declare-fun lambda!200132 () Int)

(declare-fun forall!11052 (List!52055 Int) Bool)

(assert (=> b!4659596 (= res!1959800 (forall!11052 lt!1821633 lambda!200132))))

(declare-fun b!4659597 () Bool)

(declare-fun lambda!200133 () Int)

(declare-fun map!11483 (List!52052 Int) List!52055)

(assert (=> b!4659597 (= e!2907426 (= (content!9016 lt!1821633) (content!9016 (map!11483 (toList!5233 lt!1821138) lambda!200133))))))

(assert (= (and d!1479098 res!1959798) b!4659595))

(assert (= (and b!4659595 res!1959799) b!4659596))

(assert (= (and b!4659596 res!1959800) b!4659597))

(declare-fun m!5541369 () Bool)

(assert (=> d!1479098 m!5541369))

(assert (=> d!1479098 m!5540805))

(declare-fun m!5541371 () Bool)

(assert (=> b!4659595 m!5541371))

(declare-fun m!5541373 () Bool)

(assert (=> b!4659595 m!5541373))

(declare-fun m!5541375 () Bool)

(assert (=> b!4659596 m!5541375))

(declare-fun m!5541377 () Bool)

(assert (=> b!4659597 m!5541377))

(declare-fun m!5541379 () Bool)

(assert (=> b!4659597 m!5541379))

(assert (=> b!4659597 m!5541379))

(declare-fun m!5541381 () Bool)

(assert (=> b!4659597 m!5541381))

(assert (=> b!4659277 d!1479098))

(declare-fun d!1479100 () Bool)

(declare-fun c!797586 () Bool)

(assert (=> d!1479100 (= c!797586 ((_ is Nil!51929) lt!1821144))))

(declare-fun e!2907429 () (InoxSet tuple2!53056))

(assert (=> d!1479100 (= (content!9013 lt!1821144) e!2907429)))

(declare-fun b!4659604 () Bool)

(assert (=> b!4659604 (= e!2907429 ((as const (Array tuple2!53056 Bool)) false))))

(declare-fun b!4659605 () Bool)

(assert (=> b!4659605 (= e!2907429 ((_ map or) (store ((as const (Array tuple2!53056 Bool)) false) (h!58081 lt!1821144) true) (content!9013 (t!359169 lt!1821144))))))

(assert (= (and d!1479100 c!797586) b!4659604))

(assert (= (and d!1479100 (not c!797586)) b!4659605))

(declare-fun m!5541383 () Bool)

(assert (=> b!4659605 m!5541383))

(declare-fun m!5541385 () Bool)

(assert (=> b!4659605 m!5541385))

(assert (=> d!1478830 d!1479100))

(declare-fun d!1479102 () Bool)

(declare-fun res!1959805 () Bool)

(declare-fun e!2907434 () Bool)

(assert (=> d!1479102 (=> res!1959805 e!2907434)))

(assert (=> d!1479102 (= res!1959805 (and ((_ is Cons!51928) (toList!5233 lt!1821138)) (= (_1!29821 (h!58080 (toList!5233 lt!1821138))) key!4968)))))

(assert (=> d!1479102 (= (containsKey!2750 (toList!5233 lt!1821138) key!4968) e!2907434)))

(declare-fun b!4659610 () Bool)

(declare-fun e!2907435 () Bool)

(assert (=> b!4659610 (= e!2907434 e!2907435)))

(declare-fun res!1959806 () Bool)

(assert (=> b!4659610 (=> (not res!1959806) (not e!2907435))))

(assert (=> b!4659610 (= res!1959806 ((_ is Cons!51928) (toList!5233 lt!1821138)))))

(declare-fun b!4659611 () Bool)

(assert (=> b!4659611 (= e!2907435 (containsKey!2750 (t!359168 (toList!5233 lt!1821138)) key!4968))))

(assert (= (and d!1479102 (not res!1959805)) b!4659610))

(assert (= (and b!4659610 res!1959806) b!4659611))

(declare-fun m!5541387 () Bool)

(assert (=> b!4659611 m!5541387))

(assert (=> b!4659273 d!1479102))

(declare-fun d!1479104 () Bool)

(assert (=> d!1479104 (containsKey!2750 (toList!5233 lt!1821138) key!4968)))

(declare-fun lt!1821636 () Unit!118984)

(declare-fun choose!32090 (List!52052 K!13280) Unit!118984)

(assert (=> d!1479104 (= lt!1821636 (choose!32090 (toList!5233 lt!1821138) key!4968))))

(assert (=> d!1479104 (invariantList!1306 (toList!5233 lt!1821138))))

(assert (=> d!1479104 (= (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821138) key!4968) lt!1821636)))

(declare-fun bs!1066823 () Bool)

(assert (= bs!1066823 d!1479104))

(assert (=> bs!1066823 m!5540797))

(declare-fun m!5541389 () Bool)

(assert (=> bs!1066823 m!5541389))

(declare-fun m!5541391 () Bool)

(assert (=> bs!1066823 m!5541391))

(assert (=> b!4659273 d!1479104))

(declare-fun d!1479106 () Bool)

(declare-fun res!1959807 () Bool)

(declare-fun e!2907436 () Bool)

(assert (=> d!1479106 (=> res!1959807 e!2907436)))

(assert (=> d!1479106 (= res!1959807 (not ((_ is Cons!51928) (_2!29822 lt!1821146))))))

(assert (=> d!1479106 (= (noDuplicateKeys!1652 (_2!29822 lt!1821146)) e!2907436)))

(declare-fun b!4659612 () Bool)

(declare-fun e!2907437 () Bool)

(assert (=> b!4659612 (= e!2907436 e!2907437)))

(declare-fun res!1959808 () Bool)

(assert (=> b!4659612 (=> (not res!1959808) (not e!2907437))))

(assert (=> b!4659612 (= res!1959808 (not (containsKey!2746 (t!359168 (_2!29822 lt!1821146)) (_1!29821 (h!58080 (_2!29822 lt!1821146))))))))

(declare-fun b!4659613 () Bool)

(assert (=> b!4659613 (= e!2907437 (noDuplicateKeys!1652 (t!359168 (_2!29822 lt!1821146))))))

(assert (= (and d!1479106 (not res!1959807)) b!4659612))

(assert (= (and b!4659612 res!1959808) b!4659613))

(declare-fun m!5541393 () Bool)

(assert (=> b!4659612 m!5541393))

(declare-fun m!5541395 () Bool)

(assert (=> b!4659613 m!5541395))

(assert (=> bs!1066672 d!1479106))

(declare-fun d!1479108 () Bool)

(declare-fun res!1959809 () Bool)

(declare-fun e!2907438 () Bool)

(assert (=> d!1479108 (=> res!1959809 e!2907438)))

(assert (=> d!1479108 (= res!1959809 (and ((_ is Cons!51928) (t!359168 oldBucket!40)) (= (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (=> d!1479108 (= (containsKey!2746 (t!359168 oldBucket!40) (_1!29821 (h!58080 oldBucket!40))) e!2907438)))

(declare-fun b!4659614 () Bool)

(declare-fun e!2907439 () Bool)

(assert (=> b!4659614 (= e!2907438 e!2907439)))

(declare-fun res!1959810 () Bool)

(assert (=> b!4659614 (=> (not res!1959810) (not e!2907439))))

(assert (=> b!4659614 (= res!1959810 ((_ is Cons!51928) (t!359168 oldBucket!40)))))

(declare-fun b!4659615 () Bool)

(assert (=> b!4659615 (= e!2907439 (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479108 (not res!1959809)) b!4659614))

(assert (= (and b!4659614 res!1959810) b!4659615))

(declare-fun m!5541397 () Bool)

(assert (=> b!4659615 m!5541397))

(assert (=> b!4659013 d!1479108))

(declare-fun d!1479110 () Bool)

(assert (=> d!1479110 (= (isDefined!9109 lt!1821305) (not (isEmpty!29021 lt!1821305)))))

(declare-fun bs!1066824 () Bool)

(assert (= bs!1066824 d!1479110))

(assert (=> bs!1066824 m!5540683))

(assert (=> b!4659177 d!1479110))

(declare-fun bs!1066825 () Bool)

(declare-fun b!4659641 () Bool)

(assert (= bs!1066825 (and b!4659641 b!4659596)))

(declare-fun lambda!200142 () Int)

(assert (=> bs!1066825 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821138)) (= lambda!200142 lambda!200132))))

(assert (=> b!4659641 true))

(declare-fun bs!1066826 () Bool)

(declare-fun b!4659642 () Bool)

(assert (= bs!1066826 (and b!4659642 b!4659596)))

(declare-fun lambda!200143 () Int)

(assert (=> bs!1066826 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821138)) (= lambda!200143 lambda!200132))))

(declare-fun bs!1066827 () Bool)

(assert (= bs!1066827 (and b!4659642 b!4659641)))

(assert (=> bs!1066827 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200143 lambda!200142))))

(assert (=> b!4659642 true))

(declare-fun bs!1066828 () Bool)

(declare-fun b!4659639 () Bool)

(assert (= bs!1066828 (and b!4659639 b!4659596)))

(declare-fun lambda!200144 () Int)

(assert (=> bs!1066828 (= lambda!200144 lambda!200132)))

(declare-fun bs!1066829 () Bool)

(assert (= bs!1066829 (and b!4659639 b!4659641)))

(assert (=> bs!1066829 (= (= (toList!5233 lt!1821138) (t!359168 (toList!5233 lt!1821138))) (= lambda!200144 lambda!200142))))

(declare-fun bs!1066830 () Bool)

(assert (= bs!1066830 (and b!4659639 b!4659642)))

(assert (=> bs!1066830 (= (= (toList!5233 lt!1821138) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200144 lambda!200143))))

(assert (=> b!4659639 true))

(declare-fun bs!1066831 () Bool)

(declare-fun b!4659640 () Bool)

(assert (= bs!1066831 (and b!4659640 b!4659597)))

(declare-fun lambda!200145 () Int)

(assert (=> bs!1066831 (= lambda!200145 lambda!200133)))

(declare-fun b!4659635 () Bool)

(declare-fun e!2907449 () Unit!118984)

(declare-fun Unit!119035 () Unit!118984)

(assert (=> b!4659635 (= e!2907449 Unit!119035)))

(declare-fun b!4659636 () Bool)

(declare-fun e!2907448 () Unit!118984)

(declare-fun Unit!119036 () Unit!118984)

(assert (=> b!4659636 (= e!2907448 Unit!119036)))

(declare-fun b!4659637 () Bool)

(declare-fun res!1959817 () Bool)

(declare-fun e!2907451 () Bool)

(assert (=> b!4659637 (=> (not res!1959817) (not e!2907451))))

(declare-fun lt!1821653 () List!52055)

(assert (=> b!4659637 (= res!1959817 (= (length!544 lt!1821653) (length!545 (toList!5233 lt!1821138))))))

(declare-fun b!4659638 () Bool)

(assert (=> b!4659638 false))

(declare-fun Unit!119037 () Unit!118984)

(assert (=> b!4659638 (= e!2907449 Unit!119037)))

(declare-fun res!1959819 () Bool)

(assert (=> b!4659639 (=> (not res!1959819) (not e!2907451))))

(assert (=> b!4659639 (= res!1959819 (forall!11052 lt!1821653 lambda!200144))))

(assert (=> b!4659640 (= e!2907451 (= (content!9016 lt!1821653) (content!9016 (map!11483 (toList!5233 lt!1821138) lambda!200145))))))

(declare-fun d!1479112 () Bool)

(assert (=> d!1479112 e!2907451))

(declare-fun res!1959818 () Bool)

(assert (=> d!1479112 (=> (not res!1959818) (not e!2907451))))

(assert (=> d!1479112 (= res!1959818 (noDuplicate!844 lt!1821653))))

(declare-fun e!2907450 () List!52055)

(assert (=> d!1479112 (= lt!1821653 e!2907450)))

(declare-fun c!797593 () Bool)

(assert (=> d!1479112 (= c!797593 ((_ is Cons!51928) (toList!5233 lt!1821138)))))

(assert (=> d!1479112 (invariantList!1306 (toList!5233 lt!1821138))))

(assert (=> d!1479112 (= (getKeysList!757 (toList!5233 lt!1821138)) lt!1821653)))

(declare-fun b!4659634 () Bool)

(assert (=> b!4659634 (= e!2907450 Nil!51931)))

(assert (=> b!4659641 false))

(declare-fun lt!1821655 () Unit!118984)

(declare-fun forallContained!3252 (List!52055 Int K!13280) Unit!118984)

(assert (=> b!4659641 (= lt!1821655 (forallContained!3252 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) lambda!200142 (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun Unit!119038 () Unit!118984)

(assert (=> b!4659641 (= e!2907448 Unit!119038)))

(assert (=> b!4659642 (= e!2907450 (Cons!51931 (_1!29821 (h!58080 (toList!5233 lt!1821138))) (getKeysList!757 (t!359168 (toList!5233 lt!1821138)))))))

(declare-fun c!797595 () Bool)

(assert (=> b!4659642 (= c!797595 (containsKey!2750 (t!359168 (toList!5233 lt!1821138)) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun lt!1821654 () Unit!118984)

(assert (=> b!4659642 (= lt!1821654 e!2907449)))

(declare-fun c!797594 () Bool)

(assert (=> b!4659642 (= c!797594 (contains!15089 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun lt!1821651 () Unit!118984)

(assert (=> b!4659642 (= lt!1821651 e!2907448)))

(declare-fun lt!1821652 () List!52055)

(assert (=> b!4659642 (= lt!1821652 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))))))

(declare-fun lt!1821656 () Unit!118984)

(declare-fun lemmaForallContainsAddHeadPreserves!264 (List!52052 List!52055 tuple2!53054) Unit!118984)

(assert (=> b!4659642 (= lt!1821656 (lemmaForallContainsAddHeadPreserves!264 (t!359168 (toList!5233 lt!1821138)) lt!1821652 (h!58080 (toList!5233 lt!1821138))))))

(assert (=> b!4659642 (forall!11052 lt!1821652 lambda!200143)))

(declare-fun lt!1821657 () Unit!118984)

(assert (=> b!4659642 (= lt!1821657 lt!1821656)))

(assert (= (and d!1479112 c!797593) b!4659642))

(assert (= (and d!1479112 (not c!797593)) b!4659634))

(assert (= (and b!4659642 c!797595) b!4659638))

(assert (= (and b!4659642 (not c!797595)) b!4659635))

(assert (= (and b!4659642 c!797594) b!4659641))

(assert (= (and b!4659642 (not c!797594)) b!4659636))

(assert (= (and d!1479112 res!1959818) b!4659637))

(assert (= (and b!4659637 res!1959817) b!4659639))

(assert (= (and b!4659639 res!1959819) b!4659640))

(declare-fun m!5541399 () Bool)

(assert (=> b!4659640 m!5541399))

(declare-fun m!5541401 () Bool)

(assert (=> b!4659640 m!5541401))

(assert (=> b!4659640 m!5541401))

(declare-fun m!5541403 () Bool)

(assert (=> b!4659640 m!5541403))

(declare-fun m!5541405 () Bool)

(assert (=> b!4659641 m!5541405))

(assert (=> b!4659641 m!5541405))

(declare-fun m!5541407 () Bool)

(assert (=> b!4659641 m!5541407))

(declare-fun m!5541409 () Bool)

(assert (=> b!4659639 m!5541409))

(assert (=> b!4659642 m!5541405))

(declare-fun m!5541411 () Bool)

(assert (=> b!4659642 m!5541411))

(declare-fun m!5541413 () Bool)

(assert (=> b!4659642 m!5541413))

(declare-fun m!5541415 () Bool)

(assert (=> b!4659642 m!5541415))

(assert (=> b!4659642 m!5541405))

(declare-fun m!5541417 () Bool)

(assert (=> b!4659642 m!5541417))

(declare-fun m!5541419 () Bool)

(assert (=> d!1479112 m!5541419))

(assert (=> d!1479112 m!5541391))

(declare-fun m!5541421 () Bool)

(assert (=> b!4659637 m!5541421))

(assert (=> b!4659637 m!5541373))

(assert (=> b!4659275 d!1479112))

(declare-fun d!1479114 () Bool)

(assert (=> d!1479114 (= (get!17289 lt!1821305) (v!46137 lt!1821305))))

(assert (=> b!4659173 d!1479114))

(assert (=> b!4659272 d!1479098))

(declare-fun d!1479116 () Bool)

(declare-fun lt!1821660 () Bool)

(declare-fun content!9017 (List!52052) (InoxSet tuple2!53054))

(assert (=> d!1479116 (= lt!1821660 (select (content!9017 lt!1821145) (get!17289 lt!1821305)))))

(declare-fun e!2907457 () Bool)

(assert (=> d!1479116 (= lt!1821660 e!2907457)))

(declare-fun res!1959824 () Bool)

(assert (=> d!1479116 (=> (not res!1959824) (not e!2907457))))

(assert (=> d!1479116 (= res!1959824 ((_ is Cons!51928) lt!1821145))))

(assert (=> d!1479116 (= (contains!15088 lt!1821145 (get!17289 lt!1821305)) lt!1821660)))

(declare-fun b!4659649 () Bool)

(declare-fun e!2907456 () Bool)

(assert (=> b!4659649 (= e!2907457 e!2907456)))

(declare-fun res!1959825 () Bool)

(assert (=> b!4659649 (=> res!1959825 e!2907456)))

(assert (=> b!4659649 (= res!1959825 (= (h!58080 lt!1821145) (get!17289 lt!1821305)))))

(declare-fun b!4659650 () Bool)

(assert (=> b!4659650 (= e!2907456 (contains!15088 (t!359168 lt!1821145) (get!17289 lt!1821305)))))

(assert (= (and d!1479116 res!1959824) b!4659649))

(assert (= (and b!4659649 (not res!1959825)) b!4659650))

(declare-fun m!5541423 () Bool)

(assert (=> d!1479116 m!5541423))

(assert (=> d!1479116 m!5540677))

(declare-fun m!5541425 () Bool)

(assert (=> d!1479116 m!5541425))

(assert (=> b!4659650 m!5540677))

(declare-fun m!5541427 () Bool)

(assert (=> b!4659650 m!5541427))

(assert (=> b!4659171 d!1479116))

(assert (=> b!4659171 d!1479114))

(assert (=> d!1478854 d!1479102))

(assert (=> b!4659007 d!1478836))

(declare-fun d!1479118 () Bool)

(declare-fun res!1959830 () Bool)

(declare-fun e!2907462 () Bool)

(assert (=> d!1479118 (=> res!1959830 e!2907462)))

(assert (=> d!1479118 (= res!1959830 ((_ is Nil!51928) newBucket!224))))

(assert (=> d!1479118 (= (forall!11050 newBucket!224 lambda!199986) e!2907462)))

(declare-fun b!4659655 () Bool)

(declare-fun e!2907463 () Bool)

(assert (=> b!4659655 (= e!2907462 e!2907463)))

(declare-fun res!1959831 () Bool)

(assert (=> b!4659655 (=> (not res!1959831) (not e!2907463))))

(declare-fun dynLambda!21608 (Int tuple2!53054) Bool)

(assert (=> b!4659655 (= res!1959831 (dynLambda!21608 lambda!199986 (h!58080 newBucket!224)))))

(declare-fun b!4659656 () Bool)

(assert (=> b!4659656 (= e!2907463 (forall!11050 (t!359168 newBucket!224) lambda!199986))))

(assert (= (and d!1479118 (not res!1959830)) b!4659655))

(assert (= (and b!4659655 res!1959831) b!4659656))

(declare-fun b_lambda!174743 () Bool)

(assert (=> (not b_lambda!174743) (not b!4659655)))

(declare-fun m!5541429 () Bool)

(assert (=> b!4659655 m!5541429))

(declare-fun m!5541431 () Bool)

(assert (=> b!4659656 m!5541431))

(assert (=> d!1478768 d!1479118))

(declare-fun d!1479120 () Bool)

(assert (=> d!1479120 (= (isEmpty!29021 (getPair!380 lt!1821145 key!4968)) (not ((_ is Some!11843) (getPair!380 lt!1821145 key!4968))))))

(assert (=> d!1478832 d!1479120))

(declare-fun d!1479122 () Bool)

(declare-fun res!1959832 () Bool)

(declare-fun e!2907464 () Bool)

(assert (=> d!1479122 (=> res!1959832 e!2907464)))

(assert (=> d!1479122 (= res!1959832 (and ((_ is Cons!51928) lt!1821447) (= (_1!29821 (h!58080 lt!1821447)) key!4968)))))

(assert (=> d!1479122 (= (containsKey!2746 lt!1821447 key!4968) e!2907464)))

(declare-fun b!4659657 () Bool)

(declare-fun e!2907465 () Bool)

(assert (=> b!4659657 (= e!2907464 e!2907465)))

(declare-fun res!1959833 () Bool)

(assert (=> b!4659657 (=> (not res!1959833) (not e!2907465))))

(assert (=> b!4659657 (= res!1959833 ((_ is Cons!51928) lt!1821447))))

(declare-fun b!4659658 () Bool)

(assert (=> b!4659658 (= e!2907465 (containsKey!2746 (t!359168 lt!1821447) key!4968))))

(assert (= (and d!1479122 (not res!1959832)) b!4659657))

(assert (= (and b!4659657 res!1959833) b!4659658))

(declare-fun m!5541433 () Bool)

(assert (=> b!4659658 m!5541433))

(assert (=> d!1478860 d!1479122))

(declare-fun d!1479124 () Bool)

(declare-fun res!1959834 () Bool)

(declare-fun e!2907466 () Bool)

(assert (=> d!1479124 (=> res!1959834 e!2907466)))

(assert (=> d!1479124 (= res!1959834 (not ((_ is Cons!51928) (tail!8255 oldBucket!40))))))

(assert (=> d!1479124 (= (noDuplicateKeys!1652 (tail!8255 oldBucket!40)) e!2907466)))

(declare-fun b!4659659 () Bool)

(declare-fun e!2907467 () Bool)

(assert (=> b!4659659 (= e!2907466 e!2907467)))

(declare-fun res!1959835 () Bool)

(assert (=> b!4659659 (=> (not res!1959835) (not e!2907467))))

(assert (=> b!4659659 (= res!1959835 (not (containsKey!2746 (t!359168 (tail!8255 oldBucket!40)) (_1!29821 (h!58080 (tail!8255 oldBucket!40))))))))

(declare-fun b!4659660 () Bool)

(assert (=> b!4659660 (= e!2907467 (noDuplicateKeys!1652 (t!359168 (tail!8255 oldBucket!40))))))

(assert (= (and d!1479124 (not res!1959834)) b!4659659))

(assert (= (and b!4659659 res!1959835) b!4659660))

(declare-fun m!5541435 () Bool)

(assert (=> b!4659659 m!5541435))

(declare-fun m!5541437 () Bool)

(assert (=> b!4659660 m!5541437))

(assert (=> d!1478860 d!1479124))

(assert (=> d!1478828 d!1478824))

(declare-fun d!1479126 () Bool)

(assert (=> d!1479126 (containsKey!2746 oldBucket!40 key!4968)))

(assert (=> d!1479126 true))

(declare-fun _$38!353 () Unit!118984)

(assert (=> d!1479126 (= (choose!32084 oldBucket!40 key!4968 hashF!1389) _$38!353)))

(declare-fun bs!1066832 () Bool)

(assert (= bs!1066832 d!1479126))

(assert (=> bs!1066832 m!5540427))

(assert (=> d!1478828 d!1479126))

(assert (=> d!1478828 d!1478764))

(declare-fun d!1479128 () Bool)

(declare-fun res!1959836 () Bool)

(declare-fun e!2907468 () Bool)

(assert (=> d!1479128 (=> res!1959836 e!2907468)))

(assert (=> d!1479128 (= res!1959836 ((_ is Nil!51928) oldBucket!40))))

(assert (=> d!1479128 (= (forall!11050 oldBucket!40 lambda!200078) e!2907468)))

(declare-fun b!4659661 () Bool)

(declare-fun e!2907469 () Bool)

(assert (=> b!4659661 (= e!2907468 e!2907469)))

(declare-fun res!1959837 () Bool)

(assert (=> b!4659661 (=> (not res!1959837) (not e!2907469))))

(assert (=> b!4659661 (= res!1959837 (dynLambda!21608 lambda!200078 (h!58080 oldBucket!40)))))

(declare-fun b!4659662 () Bool)

(assert (=> b!4659662 (= e!2907469 (forall!11050 (t!359168 oldBucket!40) lambda!200078))))

(assert (= (and d!1479128 (not res!1959836)) b!4659661))

(assert (= (and b!4659661 res!1959837) b!4659662))

(declare-fun b_lambda!174745 () Bool)

(assert (=> (not b_lambda!174745) (not b!4659661)))

(declare-fun m!5541439 () Bool)

(assert (=> b!4659661 m!5541439))

(declare-fun m!5541441 () Bool)

(assert (=> b!4659662 m!5541441))

(assert (=> d!1478838 d!1479128))

(assert (=> d!1478838 d!1478764))

(declare-fun d!1479130 () Bool)

(declare-fun res!1959838 () Bool)

(declare-fun e!2907470 () Bool)

(assert (=> d!1479130 (=> res!1959838 e!2907470)))

(assert (=> d!1479130 (= res!1959838 ((_ is Nil!51928) (toList!5233 lt!1821141)))))

(assert (=> d!1479130 (= (forall!11050 (toList!5233 lt!1821141) lambda!200078) e!2907470)))

(declare-fun b!4659663 () Bool)

(declare-fun e!2907471 () Bool)

(assert (=> b!4659663 (= e!2907470 e!2907471)))

(declare-fun res!1959839 () Bool)

(assert (=> b!4659663 (=> (not res!1959839) (not e!2907471))))

(assert (=> b!4659663 (= res!1959839 (dynLambda!21608 lambda!200078 (h!58080 (toList!5233 lt!1821141))))))

(declare-fun b!4659664 () Bool)

(assert (=> b!4659664 (= e!2907471 (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200078))))

(assert (= (and d!1479130 (not res!1959838)) b!4659663))

(assert (= (and b!4659663 res!1959839) b!4659664))

(declare-fun b_lambda!174747 () Bool)

(assert (=> (not b_lambda!174747) (not b!4659663)))

(declare-fun m!5541443 () Bool)

(assert (=> b!4659663 m!5541443))

(declare-fun m!5541445 () Bool)

(assert (=> b!4659664 m!5541445))

(assert (=> b!4659245 d!1479130))

(declare-fun bs!1066833 () Bool)

(declare-fun b!4659667 () Bool)

(assert (= bs!1066833 (and b!4659667 b!4659243)))

(declare-fun lambda!200146 () Int)

(assert (=> bs!1066833 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200146 lambda!200075))))

(declare-fun bs!1066834 () Bool)

(assert (= bs!1066834 (and b!4659667 d!1478838)))

(assert (=> bs!1066834 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821400) (= lambda!200146 lambda!200078))))

(declare-fun bs!1066835 () Bool)

(assert (= bs!1066835 (and b!4659667 b!4659241)))

(assert (=> bs!1066835 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821404) (= lambda!200146 lambda!200077))))

(declare-fun bs!1066836 () Bool)

(assert (= bs!1066836 (and b!4659667 d!1478768)))

(assert (=> bs!1066836 (not (= lambda!200146 lambda!199986))))

(declare-fun bs!1066837 () Bool)

(assert (= bs!1066837 (and b!4659667 d!1478866)))

(assert (=> bs!1066837 (not (= lambda!200146 lambda!200086))))

(assert (=> bs!1066835 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200146 lambda!200076))))

(assert (=> b!4659667 true))

(declare-fun bs!1066838 () Bool)

(declare-fun b!4659665 () Bool)

(assert (= bs!1066838 (and b!4659665 b!4659243)))

(declare-fun lambda!200147 () Int)

(assert (=> bs!1066838 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200147 lambda!200075))))

(declare-fun bs!1066839 () Bool)

(assert (= bs!1066839 (and b!4659665 d!1478838)))

(assert (=> bs!1066839 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821400) (= lambda!200147 lambda!200078))))

(declare-fun bs!1066840 () Bool)

(assert (= bs!1066840 (and b!4659665 b!4659241)))

(assert (=> bs!1066840 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821404) (= lambda!200147 lambda!200077))))

(declare-fun bs!1066841 () Bool)

(assert (= bs!1066841 (and b!4659665 b!4659667)))

(assert (=> bs!1066841 (= lambda!200147 lambda!200146)))

(declare-fun bs!1066842 () Bool)

(assert (= bs!1066842 (and b!4659665 d!1478768)))

(assert (=> bs!1066842 (not (= lambda!200147 lambda!199986))))

(declare-fun bs!1066843 () Bool)

(assert (= bs!1066843 (and b!4659665 d!1478866)))

(assert (=> bs!1066843 (not (= lambda!200147 lambda!200086))))

(assert (=> bs!1066840 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200147 lambda!200076))))

(assert (=> b!4659665 true))

(declare-fun lambda!200148 () Int)

(declare-fun lt!1821667 () ListMap!4573)

(assert (=> bs!1066838 (= (= lt!1821667 lt!1821141) (= lambda!200148 lambda!200075))))

(assert (=> bs!1066839 (= (= lt!1821667 lt!1821400) (= lambda!200148 lambda!200078))))

(assert (=> b!4659665 (= (= lt!1821667 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200148 lambda!200147))))

(assert (=> bs!1066840 (= (= lt!1821667 lt!1821404) (= lambda!200148 lambda!200077))))

(assert (=> bs!1066841 (= (= lt!1821667 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200148 lambda!200146))))

(assert (=> bs!1066842 (not (= lambda!200148 lambda!199986))))

(assert (=> bs!1066843 (not (= lambda!200148 lambda!200086))))

(assert (=> bs!1066840 (= (= lt!1821667 lt!1821141) (= lambda!200148 lambda!200076))))

(assert (=> b!4659665 true))

(declare-fun bs!1066844 () Bool)

(declare-fun d!1479132 () Bool)

(assert (= bs!1066844 (and d!1479132 b!4659243)))

(declare-fun lt!1821663 () ListMap!4573)

(declare-fun lambda!200149 () Int)

(assert (=> bs!1066844 (= (= lt!1821663 lt!1821141) (= lambda!200149 lambda!200075))))

(declare-fun bs!1066845 () Bool)

(assert (= bs!1066845 (and d!1479132 d!1478838)))

(assert (=> bs!1066845 (= (= lt!1821663 lt!1821400) (= lambda!200149 lambda!200078))))

(declare-fun bs!1066846 () Bool)

(assert (= bs!1066846 (and d!1479132 b!4659665)))

(assert (=> bs!1066846 (= (= lt!1821663 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200149 lambda!200147))))

(declare-fun bs!1066847 () Bool)

(assert (= bs!1066847 (and d!1479132 b!4659241)))

(assert (=> bs!1066847 (= (= lt!1821663 lt!1821404) (= lambda!200149 lambda!200077))))

(declare-fun bs!1066848 () Bool)

(assert (= bs!1066848 (and d!1479132 b!4659667)))

(assert (=> bs!1066848 (= (= lt!1821663 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200149 lambda!200146))))

(declare-fun bs!1066849 () Bool)

(assert (= bs!1066849 (and d!1479132 d!1478768)))

(assert (=> bs!1066849 (not (= lambda!200149 lambda!199986))))

(declare-fun bs!1066850 () Bool)

(assert (= bs!1066850 (and d!1479132 d!1478866)))

(assert (=> bs!1066850 (not (= lambda!200149 lambda!200086))))

(assert (=> bs!1066847 (= (= lt!1821663 lt!1821141) (= lambda!200149 lambda!200076))))

(assert (=> bs!1066846 (= (= lt!1821663 lt!1821667) (= lambda!200149 lambda!200148))))

(assert (=> d!1479132 true))

(declare-fun e!2907474 () ListMap!4573)

(assert (=> b!4659665 (= e!2907474 lt!1821667)))

(declare-fun lt!1821675 () ListMap!4573)

(assert (=> b!4659665 (= lt!1821675 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> b!4659665 (= lt!1821667 (addToMapMapFromBucket!1109 (t!359168 (_2!29822 (h!58081 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821679 () Unit!118984)

(declare-fun call!325562 () Unit!118984)

(assert (=> b!4659665 (= lt!1821679 call!325562)))

(assert (=> b!4659665 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200147)))

(declare-fun lt!1821676 () Unit!118984)

(assert (=> b!4659665 (= lt!1821676 lt!1821679)))

(assert (=> b!4659665 (forall!11050 (toList!5233 lt!1821675) lambda!200148)))

(declare-fun lt!1821673 () Unit!118984)

(declare-fun Unit!119051 () Unit!118984)

(assert (=> b!4659665 (= lt!1821673 Unit!119051)))

(assert (=> b!4659665 (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200148)))

(declare-fun lt!1821677 () Unit!118984)

(declare-fun Unit!119052 () Unit!118984)

(assert (=> b!4659665 (= lt!1821677 Unit!119052)))

(declare-fun lt!1821662 () Unit!118984)

(declare-fun Unit!119054 () Unit!118984)

(assert (=> b!4659665 (= lt!1821662 Unit!119054)))

(declare-fun lt!1821681 () Unit!118984)

(assert (=> b!4659665 (= lt!1821681 (forallContained!3250 (toList!5233 lt!1821675) lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> b!4659665 (contains!15083 lt!1821675 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun lt!1821664 () Unit!118984)

(declare-fun Unit!119055 () Unit!118984)

(assert (=> b!4659665 (= lt!1821664 Unit!119055)))

(assert (=> b!4659665 (contains!15083 lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun lt!1821669 () Unit!118984)

(declare-fun Unit!119056 () Unit!118984)

(assert (=> b!4659665 (= lt!1821669 Unit!119056)))

(assert (=> b!4659665 (forall!11050 (_2!29822 (h!58081 lt!1821144)) lambda!200148)))

(declare-fun lt!1821671 () Unit!118984)

(declare-fun Unit!119057 () Unit!118984)

(assert (=> b!4659665 (= lt!1821671 Unit!119057)))

(declare-fun call!325560 () Bool)

(assert (=> b!4659665 call!325560))

(declare-fun lt!1821666 () Unit!118984)

(declare-fun Unit!119058 () Unit!118984)

(assert (=> b!4659665 (= lt!1821666 Unit!119058)))

(declare-fun lt!1821674 () Unit!118984)

(declare-fun Unit!119059 () Unit!118984)

(assert (=> b!4659665 (= lt!1821674 Unit!119059)))

(declare-fun lt!1821678 () Unit!118984)

(assert (=> b!4659665 (= lt!1821678 (addForallContainsKeyThenBeforeAdding!605 (extractMap!1708 (t!359169 lt!1821144)) lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4659665 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200148)))

(declare-fun lt!1821661 () Unit!118984)

(assert (=> b!4659665 (= lt!1821661 lt!1821678)))

(assert (=> b!4659665 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200148)))

(declare-fun lt!1821668 () Unit!118984)

(declare-fun Unit!119060 () Unit!118984)

(assert (=> b!4659665 (= lt!1821668 Unit!119060)))

(declare-fun res!1959842 () Bool)

(declare-fun call!325561 () Bool)

(assert (=> b!4659665 (= res!1959842 call!325561)))

(declare-fun e!2907473 () Bool)

(assert (=> b!4659665 (=> (not res!1959842) (not e!2907473))))

(assert (=> b!4659665 e!2907473))

(declare-fun lt!1821680 () Unit!118984)

(declare-fun Unit!119061 () Unit!118984)

(assert (=> b!4659665 (= lt!1821680 Unit!119061)))

(declare-fun e!2907472 () Bool)

(assert (=> d!1479132 e!2907472))

(declare-fun res!1959841 () Bool)

(assert (=> d!1479132 (=> (not res!1959841) (not e!2907472))))

(assert (=> d!1479132 (= res!1959841 (forall!11050 (_2!29822 (h!58081 lt!1821144)) lambda!200149))))

(assert (=> d!1479132 (= lt!1821663 e!2907474)))

(declare-fun c!797596 () Bool)

(assert (=> d!1479132 (= c!797596 ((_ is Nil!51928) (_2!29822 (h!58081 lt!1821144))))))

(assert (=> d!1479132 (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821144)))))

(assert (=> d!1479132 (= (addToMapMapFromBucket!1109 (_2!29822 (h!58081 lt!1821144)) (extractMap!1708 (t!359169 lt!1821144))) lt!1821663)))

(declare-fun b!4659666 () Bool)

(assert (=> b!4659666 (= e!2907472 (invariantList!1306 (toList!5233 lt!1821663)))))

(declare-fun bm!325555 () Bool)

(assert (=> bm!325555 (= call!325560 (forall!11050 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (toList!5233 lt!1821675)) (ite c!797596 lambda!200146 lambda!200148)))))

(declare-fun bm!325556 () Bool)

(assert (=> bm!325556 (= call!325561 (forall!11050 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_2!29822 (h!58081 lt!1821144))) (ite c!797596 lambda!200146 lambda!200148)))))

(assert (=> b!4659667 (= e!2907474 (extractMap!1708 (t!359169 lt!1821144)))))

(declare-fun lt!1821670 () Unit!118984)

(assert (=> b!4659667 (= lt!1821670 call!325562)))

(assert (=> b!4659667 call!325560))

(declare-fun lt!1821672 () Unit!118984)

(assert (=> b!4659667 (= lt!1821672 lt!1821670)))

(assert (=> b!4659667 call!325561))

(declare-fun lt!1821665 () Unit!118984)

(declare-fun Unit!119062 () Unit!118984)

(assert (=> b!4659667 (= lt!1821665 Unit!119062)))

(declare-fun b!4659668 () Bool)

(assert (=> b!4659668 (= e!2907473 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200148))))

(declare-fun b!4659669 () Bool)

(declare-fun res!1959840 () Bool)

(assert (=> b!4659669 (=> (not res!1959840) (not e!2907472))))

(assert (=> b!4659669 (= res!1959840 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200149))))

(declare-fun bm!325557 () Bool)

(assert (=> bm!325557 (= call!325562 (lemmaContainsAllItsOwnKeys!606 (extractMap!1708 (t!359169 lt!1821144))))))

(assert (= (and d!1479132 c!797596) b!4659667))

(assert (= (and d!1479132 (not c!797596)) b!4659665))

(assert (= (and b!4659665 res!1959842) b!4659668))

(assert (= (or b!4659667 b!4659665) bm!325557))

(assert (= (or b!4659667 b!4659665) bm!325556))

(assert (= (or b!4659667 b!4659665) bm!325555))

(assert (= (and d!1479132 res!1959841) b!4659669))

(assert (= (and b!4659669 res!1959840) b!4659666))

(declare-fun m!5541447 () Bool)

(assert (=> bm!325555 m!5541447))

(assert (=> bm!325557 m!5540821))

(declare-fun m!5541449 () Bool)

(assert (=> bm!325557 m!5541449))

(declare-fun m!5541451 () Bool)

(assert (=> b!4659665 m!5541451))

(declare-fun m!5541453 () Bool)

(assert (=> b!4659665 m!5541453))

(declare-fun m!5541455 () Bool)

(assert (=> b!4659665 m!5541455))

(assert (=> b!4659665 m!5540821))

(declare-fun m!5541457 () Bool)

(assert (=> b!4659665 m!5541457))

(declare-fun m!5541459 () Bool)

(assert (=> b!4659665 m!5541459))

(declare-fun m!5541461 () Bool)

(assert (=> b!4659665 m!5541461))

(declare-fun m!5541463 () Bool)

(assert (=> b!4659665 m!5541463))

(declare-fun m!5541465 () Bool)

(assert (=> b!4659665 m!5541465))

(declare-fun m!5541467 () Bool)

(assert (=> b!4659665 m!5541467))

(declare-fun m!5541469 () Bool)

(assert (=> b!4659665 m!5541469))

(assert (=> b!4659665 m!5540821))

(assert (=> b!4659665 m!5541463))

(declare-fun m!5541471 () Bool)

(assert (=> b!4659665 m!5541471))

(assert (=> b!4659665 m!5541467))

(declare-fun m!5541473 () Bool)

(assert (=> d!1479132 m!5541473))

(declare-fun m!5541475 () Bool)

(assert (=> d!1479132 m!5541475))

(assert (=> b!4659668 m!5541467))

(declare-fun m!5541477 () Bool)

(assert (=> bm!325556 m!5541477))

(declare-fun m!5541479 () Bool)

(assert (=> b!4659669 m!5541479))

(declare-fun m!5541481 () Bool)

(assert (=> b!4659666 m!5541481))

(assert (=> b!4659281 d!1479132))

(declare-fun bs!1066851 () Bool)

(declare-fun d!1479134 () Bool)

(assert (= bs!1066851 (and d!1479134 b!4658974)))

(declare-fun lambda!200150 () Int)

(assert (=> bs!1066851 (= lambda!200150 lambda!199980)))

(declare-fun bs!1066852 () Bool)

(assert (= bs!1066852 (and d!1479134 d!1479088)))

(assert (=> bs!1066852 (= lambda!200150 lambda!200127)))

(declare-fun bs!1066853 () Bool)

(assert (= bs!1066853 (and d!1479134 d!1478772)))

(assert (=> bs!1066853 (= lambda!200150 lambda!200029)))

(declare-fun bs!1066854 () Bool)

(assert (= bs!1066854 (and d!1479134 d!1478850)))

(assert (=> bs!1066854 (= lambda!200150 lambda!200081)))

(declare-fun bs!1066855 () Bool)

(assert (= bs!1066855 (and d!1479134 d!1478858)))

(assert (=> bs!1066855 (not (= lambda!200150 lambda!200085))))

(declare-fun bs!1066856 () Bool)

(assert (= bs!1066856 (and d!1479134 d!1478856)))

(assert (=> bs!1066856 (= lambda!200150 lambda!200082)))

(declare-fun bs!1066857 () Bool)

(assert (= bs!1066857 (and d!1479134 d!1478820)))

(assert (=> bs!1066857 (= lambda!200150 lambda!200035)))

(declare-fun lt!1821682 () ListMap!4573)

(assert (=> d!1479134 (invariantList!1306 (toList!5233 lt!1821682))))

(declare-fun e!2907475 () ListMap!4573)

(assert (=> d!1479134 (= lt!1821682 e!2907475)))

(declare-fun c!797597 () Bool)

(assert (=> d!1479134 (= c!797597 ((_ is Cons!51929) (t!359169 lt!1821144)))))

(assert (=> d!1479134 (forall!11048 (t!359169 lt!1821144) lambda!200150)))

(assert (=> d!1479134 (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821682)))

(declare-fun b!4659670 () Bool)

(assert (=> b!4659670 (= e!2907475 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))))))

(declare-fun b!4659671 () Bool)

(assert (=> b!4659671 (= e!2907475 (ListMap!4574 Nil!51928))))

(assert (= (and d!1479134 c!797597) b!4659670))

(assert (= (and d!1479134 (not c!797597)) b!4659671))

(declare-fun m!5541483 () Bool)

(assert (=> d!1479134 m!5541483))

(declare-fun m!5541485 () Bool)

(assert (=> d!1479134 m!5541485))

(declare-fun m!5541487 () Bool)

(assert (=> b!4659670 m!5541487))

(assert (=> b!4659670 m!5541487))

(declare-fun m!5541489 () Bool)

(assert (=> b!4659670 m!5541489))

(assert (=> b!4659281 d!1479134))

(declare-fun d!1479136 () Bool)

(declare-fun choose!32094 (Hashable!6049 K!13280) (_ BitVec 64))

(assert (=> d!1479136 (= (hash!3799 hashF!1389 key!4968) (choose!32094 hashF!1389 key!4968))))

(declare-fun bs!1066858 () Bool)

(assert (= bs!1066858 d!1479136))

(declare-fun m!5541491 () Bool)

(assert (=> bs!1066858 m!5541491))

(assert (=> d!1478852 d!1479136))

(declare-fun d!1479138 () Bool)

(declare-fun res!1959843 () Bool)

(declare-fun e!2907476 () Bool)

(assert (=> d!1479138 (=> res!1959843 e!2907476)))

(assert (=> d!1479138 (= res!1959843 (and ((_ is Cons!51928) lt!1821153) (= (_1!29821 (h!58080 lt!1821153)) key!4968)))))

(assert (=> d!1479138 (= (containsKey!2746 lt!1821153 key!4968) e!2907476)))

(declare-fun b!4659672 () Bool)

(declare-fun e!2907477 () Bool)

(assert (=> b!4659672 (= e!2907476 e!2907477)))

(declare-fun res!1959844 () Bool)

(assert (=> b!4659672 (=> (not res!1959844) (not e!2907477))))

(assert (=> b!4659672 (= res!1959844 ((_ is Cons!51928) lt!1821153))))

(declare-fun b!4659673 () Bool)

(assert (=> b!4659673 (= e!2907477 (containsKey!2746 (t!359168 lt!1821153) key!4968))))

(assert (= (and d!1479138 (not res!1959843)) b!4659672))

(assert (= (and b!4659672 res!1959844) b!4659673))

(declare-fun m!5541493 () Bool)

(assert (=> b!4659673 m!5541493))

(assert (=> d!1478762 d!1479138))

(assert (=> d!1478762 d!1478764))

(declare-fun d!1479140 () Bool)

(declare-fun noDuplicatedKeys!358 (List!52052) Bool)

(assert (=> d!1479140 (= (invariantList!1306 (toList!5233 lt!1821446)) (noDuplicatedKeys!358 (toList!5233 lt!1821446)))))

(declare-fun bs!1066859 () Bool)

(assert (= bs!1066859 d!1479140))

(declare-fun m!5541495 () Bool)

(assert (=> bs!1066859 m!5541495))

(assert (=> d!1478856 d!1479140))

(declare-fun d!1479142 () Bool)

(declare-fun res!1959845 () Bool)

(declare-fun e!2907478 () Bool)

(assert (=> d!1479142 (=> res!1959845 e!2907478)))

(assert (=> d!1479142 (= res!1959845 ((_ is Nil!51929) lt!1821144))))

(assert (=> d!1479142 (= (forall!11048 lt!1821144 lambda!200082) e!2907478)))

(declare-fun b!4659674 () Bool)

(declare-fun e!2907479 () Bool)

(assert (=> b!4659674 (= e!2907478 e!2907479)))

(declare-fun res!1959846 () Bool)

(assert (=> b!4659674 (=> (not res!1959846) (not e!2907479))))

(assert (=> b!4659674 (= res!1959846 (dynLambda!21606 lambda!200082 (h!58081 lt!1821144)))))

(declare-fun b!4659675 () Bool)

(assert (=> b!4659675 (= e!2907479 (forall!11048 (t!359169 lt!1821144) lambda!200082))))

(assert (= (and d!1479142 (not res!1959845)) b!4659674))

(assert (= (and b!4659674 res!1959846) b!4659675))

(declare-fun b_lambda!174749 () Bool)

(assert (=> (not b_lambda!174749) (not b!4659674)))

(declare-fun m!5541497 () Bool)

(assert (=> b!4659674 m!5541497))

(declare-fun m!5541499 () Bool)

(assert (=> b!4659675 m!5541499))

(assert (=> d!1478856 d!1479142))

(declare-fun d!1479144 () Bool)

(declare-fun res!1959847 () Bool)

(declare-fun e!2907480 () Bool)

(assert (=> d!1479144 (=> res!1959847 e!2907480)))

(assert (=> d!1479144 (= res!1959847 ((_ is Nil!51928) (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))

(assert (=> d!1479144 (= (forall!11050 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)) (ite c!797509 lambda!200075 lambda!200077)) e!2907480)))

(declare-fun b!4659676 () Bool)

(declare-fun e!2907481 () Bool)

(assert (=> b!4659676 (= e!2907480 e!2907481)))

(declare-fun res!1959848 () Bool)

(assert (=> b!4659676 (=> (not res!1959848) (not e!2907481))))

(assert (=> b!4659676 (= res!1959848 (dynLambda!21608 (ite c!797509 lambda!200075 lambda!200077) (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))))))

(declare-fun b!4659677 () Bool)

(assert (=> b!4659677 (= e!2907481 (forall!11050 (t!359168 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))) (ite c!797509 lambda!200075 lambda!200077)))))

(assert (= (and d!1479144 (not res!1959847)) b!4659676))

(assert (= (and b!4659676 res!1959848) b!4659677))

(declare-fun b_lambda!174751 () Bool)

(assert (=> (not b_lambda!174751) (not b!4659676)))

(declare-fun m!5541501 () Bool)

(assert (=> b!4659676 m!5541501))

(declare-fun m!5541503 () Bool)

(assert (=> b!4659677 m!5541503))

(assert (=> bm!325539 d!1479144))

(declare-fun d!1479146 () Bool)

(declare-fun res!1959849 () Bool)

(declare-fun e!2907482 () Bool)

(assert (=> d!1479146 (=> res!1959849 e!2907482)))

(assert (=> d!1479146 (= res!1959849 (not ((_ is Cons!51928) (t!359168 newBucket!224))))))

(assert (=> d!1479146 (= (noDuplicateKeys!1652 (t!359168 newBucket!224)) e!2907482)))

(declare-fun b!4659678 () Bool)

(declare-fun e!2907483 () Bool)

(assert (=> b!4659678 (= e!2907482 e!2907483)))

(declare-fun res!1959850 () Bool)

(assert (=> b!4659678 (=> (not res!1959850) (not e!2907483))))

(assert (=> b!4659678 (= res!1959850 (not (containsKey!2746 (t!359168 (t!359168 newBucket!224)) (_1!29821 (h!58080 (t!359168 newBucket!224))))))))

(declare-fun b!4659679 () Bool)

(assert (=> b!4659679 (= e!2907483 (noDuplicateKeys!1652 (t!359168 (t!359168 newBucket!224))))))

(assert (= (and d!1479146 (not res!1959849)) b!4659678))

(assert (= (and b!4659678 res!1959850) b!4659679))

(declare-fun m!5541505 () Bool)

(assert (=> b!4659678 m!5541505))

(declare-fun m!5541507 () Bool)

(assert (=> b!4659679 m!5541507))

(assert (=> b!4659290 d!1479146))

(declare-fun d!1479148 () Bool)

(assert (=> d!1479148 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968))))

(declare-fun lt!1821685 () Unit!118984)

(declare-fun choose!32095 (List!52052 K!13280) Unit!118984)

(assert (=> d!1479148 (= lt!1821685 (choose!32095 (toList!5233 lt!1821138) key!4968))))

(assert (=> d!1479148 (invariantList!1306 (toList!5233 lt!1821138))))

(assert (=> d!1479148 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821138) key!4968) lt!1821685)))

(declare-fun bs!1066860 () Bool)

(assert (= bs!1066860 d!1479148))

(assert (=> bs!1066860 m!5540809))

(assert (=> bs!1066860 m!5540809))

(assert (=> bs!1066860 m!5540811))

(declare-fun m!5541509 () Bool)

(assert (=> bs!1066860 m!5541509))

(assert (=> bs!1066860 m!5541391))

(assert (=> b!4659279 d!1479148))

(declare-fun d!1479150 () Bool)

(declare-fun isEmpty!29024 (Option!11848) Bool)

(assert (=> d!1479150 (= (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968)) (not (isEmpty!29024 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968))))))

(declare-fun bs!1066861 () Bool)

(assert (= bs!1066861 d!1479150))

(assert (=> bs!1066861 m!5540809))

(declare-fun m!5541511 () Bool)

(assert (=> bs!1066861 m!5541511))

(assert (=> b!4659279 d!1479150))

(declare-fun d!1479152 () Bool)

(declare-fun c!797602 () Bool)

(assert (=> d!1479152 (= c!797602 (and ((_ is Cons!51928) (toList!5233 lt!1821138)) (= (_1!29821 (h!58080 (toList!5233 lt!1821138))) key!4968)))))

(declare-fun e!2907488 () Option!11848)

(assert (=> d!1479152 (= (getValueByKey!1626 (toList!5233 lt!1821138) key!4968) e!2907488)))

(declare-fun b!4659688 () Bool)

(assert (=> b!4659688 (= e!2907488 (Some!11847 (_2!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun b!4659690 () Bool)

(declare-fun e!2907489 () Option!11848)

(assert (=> b!4659690 (= e!2907489 (getValueByKey!1626 (t!359168 (toList!5233 lt!1821138)) key!4968))))

(declare-fun b!4659691 () Bool)

(assert (=> b!4659691 (= e!2907489 None!11847)))

(declare-fun b!4659689 () Bool)

(assert (=> b!4659689 (= e!2907488 e!2907489)))

(declare-fun c!797603 () Bool)

(assert (=> b!4659689 (= c!797603 (and ((_ is Cons!51928) (toList!5233 lt!1821138)) (not (= (_1!29821 (h!58080 (toList!5233 lt!1821138))) key!4968))))))

(assert (= (and d!1479152 c!797602) b!4659688))

(assert (= (and d!1479152 (not c!797602)) b!4659689))

(assert (= (and b!4659689 c!797603) b!4659690))

(assert (= (and b!4659689 (not c!797603)) b!4659691))

(declare-fun m!5541513 () Bool)

(assert (=> b!4659690 m!5541513))

(assert (=> b!4659279 d!1479152))

(declare-fun d!1479154 () Bool)

(assert (=> d!1479154 (contains!15089 (getKeysList!757 (toList!5233 lt!1821138)) key!4968)))

(declare-fun lt!1821688 () Unit!118984)

(declare-fun choose!32096 (List!52052 K!13280) Unit!118984)

(assert (=> d!1479154 (= lt!1821688 (choose!32096 (toList!5233 lt!1821138) key!4968))))

(assert (=> d!1479154 (invariantList!1306 (toList!5233 lt!1821138))))

(assert (=> d!1479154 (= (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821138) key!4968) lt!1821688)))

(declare-fun bs!1066862 () Bool)

(assert (= bs!1066862 d!1479154))

(assert (=> bs!1066862 m!5540805))

(assert (=> bs!1066862 m!5540805))

(declare-fun m!5541515 () Bool)

(assert (=> bs!1066862 m!5541515))

(declare-fun m!5541517 () Bool)

(assert (=> bs!1066862 m!5541517))

(assert (=> bs!1066862 m!5541391))

(assert (=> b!4659279 d!1479154))

(declare-fun d!1479156 () Bool)

(declare-fun res!1959851 () Bool)

(declare-fun e!2907490 () Bool)

(assert (=> d!1479156 (=> res!1959851 e!2907490)))

(assert (=> d!1479156 (= res!1959851 ((_ is Nil!51928) oldBucket!40))))

(assert (=> d!1479156 (= (forall!11050 oldBucket!40 lambda!200077) e!2907490)))

(declare-fun b!4659692 () Bool)

(declare-fun e!2907491 () Bool)

(assert (=> b!4659692 (= e!2907490 e!2907491)))

(declare-fun res!1959852 () Bool)

(assert (=> b!4659692 (=> (not res!1959852) (not e!2907491))))

(assert (=> b!4659692 (= res!1959852 (dynLambda!21608 lambda!200077 (h!58080 oldBucket!40)))))

(declare-fun b!4659693 () Bool)

(assert (=> b!4659693 (= e!2907491 (forall!11050 (t!359168 oldBucket!40) lambda!200077))))

(assert (= (and d!1479156 (not res!1959851)) b!4659692))

(assert (= (and b!4659692 res!1959852) b!4659693))

(declare-fun b_lambda!174753 () Bool)

(assert (=> (not b_lambda!174753) (not b!4659692)))

(declare-fun m!5541519 () Bool)

(assert (=> b!4659692 m!5541519))

(assert (=> b!4659693 m!5540761))

(assert (=> b!4659241 d!1479156))

(declare-fun bs!1066863 () Bool)

(declare-fun d!1479158 () Bool)

(assert (= bs!1066863 (and d!1479158 b!4659243)))

(declare-fun lambda!200155 () Int)

(assert (=> bs!1066863 (= (= lt!1821404 lt!1821141) (= lambda!200155 lambda!200075))))

(declare-fun bs!1066864 () Bool)

(assert (= bs!1066864 (and d!1479158 d!1478838)))

(assert (=> bs!1066864 (= (= lt!1821404 lt!1821400) (= lambda!200155 lambda!200078))))

(declare-fun bs!1066865 () Bool)

(assert (= bs!1066865 (and d!1479158 b!4659241)))

(assert (=> bs!1066865 (= lambda!200155 lambda!200077)))

(declare-fun bs!1066866 () Bool)

(assert (= bs!1066866 (and d!1479158 b!4659667)))

(assert (=> bs!1066866 (= (= lt!1821404 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200155 lambda!200146))))

(declare-fun bs!1066867 () Bool)

(assert (= bs!1066867 (and d!1479158 d!1478768)))

(assert (=> bs!1066867 (not (= lambda!200155 lambda!199986))))

(declare-fun bs!1066868 () Bool)

(assert (= bs!1066868 (and d!1479158 d!1478866)))

(assert (=> bs!1066868 (not (= lambda!200155 lambda!200086))))

(assert (=> bs!1066865 (= (= lt!1821404 lt!1821141) (= lambda!200155 lambda!200076))))

(declare-fun bs!1066869 () Bool)

(assert (= bs!1066869 (and d!1479158 b!4659665)))

(assert (=> bs!1066869 (= (= lt!1821404 lt!1821667) (= lambda!200155 lambda!200148))))

(assert (=> bs!1066869 (= (= lt!1821404 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200155 lambda!200147))))

(declare-fun bs!1066870 () Bool)

(assert (= bs!1066870 (and d!1479158 d!1479132)))

(assert (=> bs!1066870 (= (= lt!1821404 lt!1821663) (= lambda!200155 lambda!200149))))

(assert (=> d!1479158 true))

(assert (=> d!1479158 (forall!11050 (toList!5233 lt!1821141) lambda!200155)))

(declare-fun lt!1821691 () Unit!118984)

(declare-fun choose!32097 (ListMap!4573 ListMap!4573 K!13280 V!13526) Unit!118984)

(assert (=> d!1479158 (= lt!1821691 (choose!32097 lt!1821141 lt!1821404 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479158 (forall!11050 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))) lambda!200155)))

(assert (=> d!1479158 (= (addForallContainsKeyThenBeforeAdding!605 lt!1821141 lt!1821404 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) lt!1821691)))

(declare-fun bs!1066871 () Bool)

(assert (= bs!1066871 d!1479158))

(declare-fun m!5541521 () Bool)

(assert (=> bs!1066871 m!5541521))

(declare-fun m!5541523 () Bool)

(assert (=> bs!1066871 m!5541523))

(declare-fun m!5541525 () Bool)

(assert (=> bs!1066871 m!5541525))

(declare-fun m!5541527 () Bool)

(assert (=> bs!1066871 m!5541527))

(assert (=> b!4659241 d!1479158))

(declare-fun d!1479160 () Bool)

(declare-fun res!1959853 () Bool)

(declare-fun e!2907492 () Bool)

(assert (=> d!1479160 (=> res!1959853 e!2907492)))

(assert (=> d!1479160 (= res!1959853 ((_ is Nil!51928) (toList!5233 lt!1821412)))))

(assert (=> d!1479160 (= (forall!11050 (toList!5233 lt!1821412) lambda!200077) e!2907492)))

(declare-fun b!4659695 () Bool)

(declare-fun e!2907493 () Bool)

(assert (=> b!4659695 (= e!2907492 e!2907493)))

(declare-fun res!1959854 () Bool)

(assert (=> b!4659695 (=> (not res!1959854) (not e!2907493))))

(assert (=> b!4659695 (= res!1959854 (dynLambda!21608 lambda!200077 (h!58080 (toList!5233 lt!1821412))))))

(declare-fun b!4659696 () Bool)

(assert (=> b!4659696 (= e!2907493 (forall!11050 (t!359168 (toList!5233 lt!1821412)) lambda!200077))))

(assert (= (and d!1479160 (not res!1959853)) b!4659695))

(assert (= (and b!4659695 res!1959854) b!4659696))

(declare-fun b_lambda!174755 () Bool)

(assert (=> (not b_lambda!174755) (not b!4659695)))

(declare-fun m!5541529 () Bool)

(assert (=> b!4659695 m!5541529))

(declare-fun m!5541531 () Bool)

(assert (=> b!4659696 m!5541531))

(assert (=> b!4659241 d!1479160))

(declare-fun d!1479162 () Bool)

(declare-fun e!2907496 () Bool)

(assert (=> d!1479162 e!2907496))

(declare-fun res!1959860 () Bool)

(assert (=> d!1479162 (=> (not res!1959860) (not e!2907496))))

(declare-fun lt!1821701 () ListMap!4573)

(assert (=> d!1479162 (= res!1959860 (contains!15083 lt!1821701 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1821703 () List!52052)

(assert (=> d!1479162 (= lt!1821701 (ListMap!4574 lt!1821703))))

(declare-fun lt!1821700 () Unit!118984)

(declare-fun lt!1821702 () Unit!118984)

(assert (=> d!1479162 (= lt!1821700 lt!1821702)))

(assert (=> d!1479162 (= (getValueByKey!1626 lt!1821703 (_1!29821 (h!58080 oldBucket!40))) (Some!11847 (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!930 (List!52052 K!13280 V!13526) Unit!118984)

(assert (=> d!1479162 (= lt!1821702 (lemmaContainsTupThenGetReturnValue!930 lt!1821703 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!438 (List!52052 K!13280 V!13526) List!52052)

(assert (=> d!1479162 (= lt!1821703 (insertNoDuplicatedKeys!438 (toList!5233 lt!1821141) (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479162 (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821701)))

(declare-fun b!4659701 () Bool)

(declare-fun res!1959859 () Bool)

(assert (=> b!4659701 (=> (not res!1959859) (not e!2907496))))

(assert (=> b!4659701 (= res!1959859 (= (getValueByKey!1626 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))) (Some!11847 (_2!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4659702 () Bool)

(assert (=> b!4659702 (= e!2907496 (contains!15088 (toList!5233 lt!1821701) (h!58080 oldBucket!40)))))

(assert (= (and d!1479162 res!1959860) b!4659701))

(assert (= (and b!4659701 res!1959859) b!4659702))

(declare-fun m!5541533 () Bool)

(assert (=> d!1479162 m!5541533))

(declare-fun m!5541535 () Bool)

(assert (=> d!1479162 m!5541535))

(declare-fun m!5541537 () Bool)

(assert (=> d!1479162 m!5541537))

(declare-fun m!5541539 () Bool)

(assert (=> d!1479162 m!5541539))

(declare-fun m!5541541 () Bool)

(assert (=> b!4659701 m!5541541))

(declare-fun m!5541543 () Bool)

(assert (=> b!4659702 m!5541543))

(assert (=> b!4659241 d!1479162))

(declare-fun d!1479164 () Bool)

(declare-fun res!1959861 () Bool)

(declare-fun e!2907497 () Bool)

(assert (=> d!1479164 (=> res!1959861 e!2907497)))

(assert (=> d!1479164 (= res!1959861 ((_ is Nil!51928) (toList!5233 lt!1821141)))))

(assert (=> d!1479164 (= (forall!11050 (toList!5233 lt!1821141) lambda!200077) e!2907497)))

(declare-fun b!4659703 () Bool)

(declare-fun e!2907498 () Bool)

(assert (=> b!4659703 (= e!2907497 e!2907498)))

(declare-fun res!1959862 () Bool)

(assert (=> b!4659703 (=> (not res!1959862) (not e!2907498))))

(assert (=> b!4659703 (= res!1959862 (dynLambda!21608 lambda!200077 (h!58080 (toList!5233 lt!1821141))))))

(declare-fun b!4659704 () Bool)

(assert (=> b!4659704 (= e!2907498 (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200077))))

(assert (= (and d!1479164 (not res!1959861)) b!4659703))

(assert (= (and b!4659703 res!1959862) b!4659704))

(declare-fun b_lambda!174757 () Bool)

(assert (=> (not b_lambda!174757) (not b!4659703)))

(declare-fun m!5541545 () Bool)

(assert (=> b!4659703 m!5541545))

(declare-fun m!5541547 () Bool)

(assert (=> b!4659704 m!5541547))

(assert (=> b!4659241 d!1479164))

(declare-fun b!4659705 () Bool)

(declare-fun e!2907504 () List!52055)

(assert (=> b!4659705 (= e!2907504 (keys!18406 lt!1821404))))

(declare-fun bm!325558 () Bool)

(declare-fun call!325563 () Bool)

(assert (=> bm!325558 (= call!325563 (contains!15089 e!2907504 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun c!797604 () Bool)

(declare-fun c!797606 () Bool)

(assert (=> bm!325558 (= c!797604 c!797606)))

(declare-fun b!4659706 () Bool)

(assert (=> b!4659706 false))

(declare-fun lt!1821707 () Unit!118984)

(declare-fun lt!1821708 () Unit!118984)

(assert (=> b!4659706 (= lt!1821707 lt!1821708)))

(assert (=> b!4659706 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40)))))

(assert (=> b!4659706 (= lt!1821708 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907503 () Unit!118984)

(declare-fun Unit!119065 () Unit!118984)

(assert (=> b!4659706 (= e!2907503 Unit!119065)))

(declare-fun d!1479166 () Bool)

(declare-fun e!2907502 () Bool)

(assert (=> d!1479166 e!2907502))

(declare-fun res!1959863 () Bool)

(assert (=> d!1479166 (=> res!1959863 e!2907502)))

(declare-fun e!2907500 () Bool)

(assert (=> d!1479166 (= res!1959863 e!2907500)))

(declare-fun res!1959864 () Bool)

(assert (=> d!1479166 (=> (not res!1959864) (not e!2907500))))

(declare-fun lt!1821705 () Bool)

(assert (=> d!1479166 (= res!1959864 (not lt!1821705))))

(declare-fun lt!1821709 () Bool)

(assert (=> d!1479166 (= lt!1821705 lt!1821709)))

(declare-fun lt!1821710 () Unit!118984)

(declare-fun e!2907499 () Unit!118984)

(assert (=> d!1479166 (= lt!1821710 e!2907499)))

(assert (=> d!1479166 (= c!797606 lt!1821709)))

(assert (=> d!1479166 (= lt!1821709 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479166 (= (contains!15083 lt!1821404 (_1!29821 (h!58080 oldBucket!40))) lt!1821705)))

(declare-fun b!4659707 () Bool)

(declare-fun Unit!119066 () Unit!118984)

(assert (=> b!4659707 (= e!2907503 Unit!119066)))

(declare-fun b!4659708 () Bool)

(assert (=> b!4659708 (= e!2907504 (getKeysList!757 (toList!5233 lt!1821404)))))

(declare-fun b!4659709 () Bool)

(declare-fun e!2907501 () Bool)

(assert (=> b!4659709 (= e!2907502 e!2907501)))

(declare-fun res!1959865 () Bool)

(assert (=> b!4659709 (=> (not res!1959865) (not e!2907501))))

(assert (=> b!4659709 (= res!1959865 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4659710 () Bool)

(assert (=> b!4659710 (= e!2907501 (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4659711 () Bool)

(assert (=> b!4659711 (= e!2907499 e!2907503)))

(declare-fun c!797605 () Bool)

(assert (=> b!4659711 (= c!797605 call!325563)))

(declare-fun b!4659712 () Bool)

(declare-fun lt!1821704 () Unit!118984)

(assert (=> b!4659712 (= e!2907499 lt!1821704)))

(declare-fun lt!1821706 () Unit!118984)

(assert (=> b!4659712 (= lt!1821706 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4659712 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1821711 () Unit!118984)

(assert (=> b!4659712 (= lt!1821711 lt!1821706)))

(assert (=> b!4659712 (= lt!1821704 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4659712 call!325563))

(declare-fun b!4659713 () Bool)

(assert (=> b!4659713 (= e!2907500 (not (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1479166 c!797606) b!4659712))

(assert (= (and d!1479166 (not c!797606)) b!4659711))

(assert (= (and b!4659711 c!797605) b!4659706))

(assert (= (and b!4659711 (not c!797605)) b!4659707))

(assert (= (or b!4659712 b!4659711) bm!325558))

(assert (= (and bm!325558 c!797604) b!4659708))

(assert (= (and bm!325558 (not c!797604)) b!4659705))

(assert (= (and d!1479166 res!1959864) b!4659713))

(assert (= (and d!1479166 (not res!1959863)) b!4659709))

(assert (= (and b!4659709 res!1959865) b!4659710))

(declare-fun m!5541549 () Bool)

(assert (=> d!1479166 m!5541549))

(assert (=> b!4659706 m!5541549))

(declare-fun m!5541551 () Bool)

(assert (=> b!4659706 m!5541551))

(declare-fun m!5541553 () Bool)

(assert (=> b!4659713 m!5541553))

(assert (=> b!4659713 m!5541553))

(declare-fun m!5541555 () Bool)

(assert (=> b!4659713 m!5541555))

(declare-fun m!5541557 () Bool)

(assert (=> b!4659708 m!5541557))

(assert (=> b!4659705 m!5541553))

(declare-fun m!5541559 () Bool)

(assert (=> b!4659712 m!5541559))

(declare-fun m!5541561 () Bool)

(assert (=> b!4659712 m!5541561))

(assert (=> b!4659712 m!5541561))

(declare-fun m!5541563 () Bool)

(assert (=> b!4659712 m!5541563))

(declare-fun m!5541565 () Bool)

(assert (=> b!4659712 m!5541565))

(assert (=> b!4659710 m!5541553))

(assert (=> b!4659710 m!5541553))

(assert (=> b!4659710 m!5541555))

(assert (=> b!4659709 m!5541561))

(assert (=> b!4659709 m!5541561))

(assert (=> b!4659709 m!5541563))

(declare-fun m!5541567 () Bool)

(assert (=> bm!325558 m!5541567))

(assert (=> b!4659241 d!1479166))

(declare-fun b!4659714 () Bool)

(declare-fun e!2907510 () List!52055)

(assert (=> b!4659714 (= e!2907510 (keys!18406 lt!1821412))))

(declare-fun bm!325559 () Bool)

(declare-fun call!325564 () Bool)

(assert (=> bm!325559 (= call!325564 (contains!15089 e!2907510 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun c!797607 () Bool)

(declare-fun c!797609 () Bool)

(assert (=> bm!325559 (= c!797607 c!797609)))

(declare-fun b!4659715 () Bool)

(assert (=> b!4659715 false))

(declare-fun lt!1821715 () Unit!118984)

(declare-fun lt!1821716 () Unit!118984)

(assert (=> b!4659715 (= lt!1821715 lt!1821716)))

(assert (=> b!4659715 (containsKey!2750 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40)))))

(assert (=> b!4659715 (= lt!1821716 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907509 () Unit!118984)

(declare-fun Unit!119067 () Unit!118984)

(assert (=> b!4659715 (= e!2907509 Unit!119067)))

(declare-fun d!1479168 () Bool)

(declare-fun e!2907508 () Bool)

(assert (=> d!1479168 e!2907508))

(declare-fun res!1959866 () Bool)

(assert (=> d!1479168 (=> res!1959866 e!2907508)))

(declare-fun e!2907506 () Bool)

(assert (=> d!1479168 (= res!1959866 e!2907506)))

(declare-fun res!1959867 () Bool)

(assert (=> d!1479168 (=> (not res!1959867) (not e!2907506))))

(declare-fun lt!1821713 () Bool)

(assert (=> d!1479168 (= res!1959867 (not lt!1821713))))

(declare-fun lt!1821717 () Bool)

(assert (=> d!1479168 (= lt!1821713 lt!1821717)))

(declare-fun lt!1821718 () Unit!118984)

(declare-fun e!2907505 () Unit!118984)

(assert (=> d!1479168 (= lt!1821718 e!2907505)))

(assert (=> d!1479168 (= c!797609 lt!1821717)))

(assert (=> d!1479168 (= lt!1821717 (containsKey!2750 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479168 (= (contains!15083 lt!1821412 (_1!29821 (h!58080 oldBucket!40))) lt!1821713)))

(declare-fun b!4659716 () Bool)

(declare-fun Unit!119068 () Unit!118984)

(assert (=> b!4659716 (= e!2907509 Unit!119068)))

(declare-fun b!4659717 () Bool)

(assert (=> b!4659717 (= e!2907510 (getKeysList!757 (toList!5233 lt!1821412)))))

(declare-fun b!4659718 () Bool)

(declare-fun e!2907507 () Bool)

(assert (=> b!4659718 (= e!2907508 e!2907507)))

(declare-fun res!1959868 () Bool)

(assert (=> b!4659718 (=> (not res!1959868) (not e!2907507))))

(assert (=> b!4659718 (= res!1959868 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4659719 () Bool)

(assert (=> b!4659719 (= e!2907507 (contains!15089 (keys!18406 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4659720 () Bool)

(assert (=> b!4659720 (= e!2907505 e!2907509)))

(declare-fun c!797608 () Bool)

(assert (=> b!4659720 (= c!797608 call!325564)))

(declare-fun b!4659721 () Bool)

(declare-fun lt!1821712 () Unit!118984)

(assert (=> b!4659721 (= e!2907505 lt!1821712)))

(declare-fun lt!1821714 () Unit!118984)

(assert (=> b!4659721 (= lt!1821714 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4659721 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1821719 () Unit!118984)

(assert (=> b!4659721 (= lt!1821719 lt!1821714)))

(assert (=> b!4659721 (= lt!1821712 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4659721 call!325564))

(declare-fun b!4659722 () Bool)

(assert (=> b!4659722 (= e!2907506 (not (contains!15089 (keys!18406 lt!1821412) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1479168 c!797609) b!4659721))

(assert (= (and d!1479168 (not c!797609)) b!4659720))

(assert (= (and b!4659720 c!797608) b!4659715))

(assert (= (and b!4659720 (not c!797608)) b!4659716))

(assert (= (or b!4659721 b!4659720) bm!325559))

(assert (= (and bm!325559 c!797607) b!4659717))

(assert (= (and bm!325559 (not c!797607)) b!4659714))

(assert (= (and d!1479168 res!1959867) b!4659722))

(assert (= (and d!1479168 (not res!1959866)) b!4659718))

(assert (= (and b!4659718 res!1959868) b!4659719))

(declare-fun m!5541569 () Bool)

(assert (=> d!1479168 m!5541569))

(assert (=> b!4659715 m!5541569))

(declare-fun m!5541571 () Bool)

(assert (=> b!4659715 m!5541571))

(declare-fun m!5541573 () Bool)

(assert (=> b!4659722 m!5541573))

(assert (=> b!4659722 m!5541573))

(declare-fun m!5541575 () Bool)

(assert (=> b!4659722 m!5541575))

(declare-fun m!5541577 () Bool)

(assert (=> b!4659717 m!5541577))

(assert (=> b!4659714 m!5541573))

(declare-fun m!5541579 () Bool)

(assert (=> b!4659721 m!5541579))

(declare-fun m!5541581 () Bool)

(assert (=> b!4659721 m!5541581))

(assert (=> b!4659721 m!5541581))

(declare-fun m!5541583 () Bool)

(assert (=> b!4659721 m!5541583))

(declare-fun m!5541585 () Bool)

(assert (=> b!4659721 m!5541585))

(assert (=> b!4659719 m!5541573))

(assert (=> b!4659719 m!5541573))

(assert (=> b!4659719 m!5541575))

(assert (=> b!4659718 m!5541581))

(assert (=> b!4659718 m!5541581))

(assert (=> b!4659718 m!5541583))

(declare-fun m!5541587 () Bool)

(assert (=> bm!325559 m!5541587))

(assert (=> b!4659241 d!1479168))

(declare-fun bs!1066872 () Bool)

(declare-fun b!4659725 () Bool)

(assert (= bs!1066872 (and b!4659725 b!4659243)))

(declare-fun lambda!200156 () Int)

(assert (=> bs!1066872 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200156 lambda!200075))))

(declare-fun bs!1066873 () Bool)

(assert (= bs!1066873 (and b!4659725 d!1478838)))

(assert (=> bs!1066873 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821400) (= lambda!200156 lambda!200078))))

(declare-fun bs!1066874 () Bool)

(assert (= bs!1066874 (and b!4659725 d!1479158)))

(assert (=> bs!1066874 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200156 lambda!200155))))

(declare-fun bs!1066875 () Bool)

(assert (= bs!1066875 (and b!4659725 b!4659241)))

(assert (=> bs!1066875 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200156 lambda!200077))))

(declare-fun bs!1066876 () Bool)

(assert (= bs!1066876 (and b!4659725 b!4659667)))

(assert (=> bs!1066876 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200156 lambda!200146))))

(declare-fun bs!1066877 () Bool)

(assert (= bs!1066877 (and b!4659725 d!1478768)))

(assert (=> bs!1066877 (not (= lambda!200156 lambda!199986))))

(declare-fun bs!1066878 () Bool)

(assert (= bs!1066878 (and b!4659725 d!1478866)))

(assert (=> bs!1066878 (not (= lambda!200156 lambda!200086))))

(assert (=> bs!1066875 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200156 lambda!200076))))

(declare-fun bs!1066879 () Bool)

(assert (= bs!1066879 (and b!4659725 b!4659665)))

(assert (=> bs!1066879 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821667) (= lambda!200156 lambda!200148))))

(assert (=> bs!1066879 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200156 lambda!200147))))

(declare-fun bs!1066880 () Bool)

(assert (= bs!1066880 (and b!4659725 d!1479132)))

(assert (=> bs!1066880 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821663) (= lambda!200156 lambda!200149))))

(assert (=> b!4659725 true))

(declare-fun bs!1066881 () Bool)

(declare-fun b!4659723 () Bool)

(assert (= bs!1066881 (and b!4659723 b!4659243)))

(declare-fun lambda!200157 () Int)

(assert (=> bs!1066881 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200157 lambda!200075))))

(declare-fun bs!1066882 () Bool)

(assert (= bs!1066882 (and b!4659723 d!1478838)))

(assert (=> bs!1066882 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821400) (= lambda!200157 lambda!200078))))

(declare-fun bs!1066883 () Bool)

(assert (= bs!1066883 (and b!4659723 d!1479158)))

(assert (=> bs!1066883 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200157 lambda!200155))))

(declare-fun bs!1066884 () Bool)

(assert (= bs!1066884 (and b!4659723 b!4659725)))

(assert (=> bs!1066884 (= lambda!200157 lambda!200156)))

(declare-fun bs!1066885 () Bool)

(assert (= bs!1066885 (and b!4659723 b!4659241)))

(assert (=> bs!1066885 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200157 lambda!200077))))

(declare-fun bs!1066886 () Bool)

(assert (= bs!1066886 (and b!4659723 b!4659667)))

(assert (=> bs!1066886 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200157 lambda!200146))))

(declare-fun bs!1066887 () Bool)

(assert (= bs!1066887 (and b!4659723 d!1478768)))

(assert (=> bs!1066887 (not (= lambda!200157 lambda!199986))))

(declare-fun bs!1066888 () Bool)

(assert (= bs!1066888 (and b!4659723 d!1478866)))

(assert (=> bs!1066888 (not (= lambda!200157 lambda!200086))))

(assert (=> bs!1066885 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200157 lambda!200076))))

(declare-fun bs!1066889 () Bool)

(assert (= bs!1066889 (and b!4659723 b!4659665)))

(assert (=> bs!1066889 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821667) (= lambda!200157 lambda!200148))))

(assert (=> bs!1066889 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200157 lambda!200147))))

(declare-fun bs!1066890 () Bool)

(assert (= bs!1066890 (and b!4659723 d!1479132)))

(assert (=> bs!1066890 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821663) (= lambda!200157 lambda!200149))))

(assert (=> b!4659723 true))

(declare-fun lambda!200158 () Int)

(declare-fun lt!1821726 () ListMap!4573)

(assert (=> bs!1066881 (= (= lt!1821726 lt!1821141) (= lambda!200158 lambda!200075))))

(assert (=> bs!1066882 (= (= lt!1821726 lt!1821400) (= lambda!200158 lambda!200078))))

(assert (=> bs!1066883 (= (= lt!1821726 lt!1821404) (= lambda!200158 lambda!200155))))

(assert (=> bs!1066884 (= (= lt!1821726 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200158 lambda!200156))))

(assert (=> bs!1066885 (= (= lt!1821726 lt!1821404) (= lambda!200158 lambda!200077))))

(assert (=> b!4659723 (= (= lt!1821726 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200158 lambda!200157))))

(assert (=> bs!1066886 (= (= lt!1821726 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200158 lambda!200146))))

(assert (=> bs!1066887 (not (= lambda!200158 lambda!199986))))

(assert (=> bs!1066888 (not (= lambda!200158 lambda!200086))))

(assert (=> bs!1066885 (= (= lt!1821726 lt!1821141) (= lambda!200158 lambda!200076))))

(assert (=> bs!1066889 (= (= lt!1821726 lt!1821667) (= lambda!200158 lambda!200148))))

(assert (=> bs!1066889 (= (= lt!1821726 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200158 lambda!200147))))

(assert (=> bs!1066890 (= (= lt!1821726 lt!1821663) (= lambda!200158 lambda!200149))))

(assert (=> b!4659723 true))

(declare-fun bs!1066891 () Bool)

(declare-fun d!1479170 () Bool)

(assert (= bs!1066891 (and d!1479170 b!4659243)))

(declare-fun lt!1821722 () ListMap!4573)

(declare-fun lambda!200159 () Int)

(assert (=> bs!1066891 (= (= lt!1821722 lt!1821141) (= lambda!200159 lambda!200075))))

(declare-fun bs!1066892 () Bool)

(assert (= bs!1066892 (and d!1479170 d!1478838)))

(assert (=> bs!1066892 (= (= lt!1821722 lt!1821400) (= lambda!200159 lambda!200078))))

(declare-fun bs!1066893 () Bool)

(assert (= bs!1066893 (and d!1479170 d!1479158)))

(assert (=> bs!1066893 (= (= lt!1821722 lt!1821404) (= lambda!200159 lambda!200155))))

(declare-fun bs!1066894 () Bool)

(assert (= bs!1066894 (and d!1479170 b!4659725)))

(assert (=> bs!1066894 (= (= lt!1821722 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200159 lambda!200156))))

(declare-fun bs!1066895 () Bool)

(assert (= bs!1066895 (and d!1479170 b!4659241)))

(assert (=> bs!1066895 (= (= lt!1821722 lt!1821404) (= lambda!200159 lambda!200077))))

(declare-fun bs!1066896 () Bool)

(assert (= bs!1066896 (and d!1479170 b!4659723)))

(assert (=> bs!1066896 (= (= lt!1821722 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200159 lambda!200157))))

(declare-fun bs!1066897 () Bool)

(assert (= bs!1066897 (and d!1479170 b!4659667)))

(assert (=> bs!1066897 (= (= lt!1821722 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200159 lambda!200146))))

(declare-fun bs!1066898 () Bool)

(assert (= bs!1066898 (and d!1479170 d!1478768)))

(assert (=> bs!1066898 (not (= lambda!200159 lambda!199986))))

(declare-fun bs!1066899 () Bool)

(assert (= bs!1066899 (and d!1479170 d!1478866)))

(assert (=> bs!1066899 (not (= lambda!200159 lambda!200086))))

(assert (=> bs!1066895 (= (= lt!1821722 lt!1821141) (= lambda!200159 lambda!200076))))

(declare-fun bs!1066900 () Bool)

(assert (= bs!1066900 (and d!1479170 b!4659665)))

(assert (=> bs!1066900 (= (= lt!1821722 lt!1821667) (= lambda!200159 lambda!200148))))

(assert (=> bs!1066896 (= (= lt!1821722 lt!1821726) (= lambda!200159 lambda!200158))))

(assert (=> bs!1066900 (= (= lt!1821722 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200159 lambda!200147))))

(declare-fun bs!1066901 () Bool)

(assert (= bs!1066901 (and d!1479170 d!1479132)))

(assert (=> bs!1066901 (= (= lt!1821722 lt!1821663) (= lambda!200159 lambda!200149))))

(assert (=> d!1479170 true))

(declare-fun e!2907513 () ListMap!4573)

(assert (=> b!4659723 (= e!2907513 lt!1821726)))

(declare-fun lt!1821734 () ListMap!4573)

(assert (=> b!4659723 (= lt!1821734 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))))))

(assert (=> b!4659723 (= lt!1821726 (addToMapMapFromBucket!1109 (t!359168 (t!359168 oldBucket!40)) (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun lt!1821738 () Unit!118984)

(declare-fun call!325567 () Unit!118984)

(assert (=> b!4659723 (= lt!1821738 call!325567)))

(assert (=> b!4659723 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200157)))

(declare-fun lt!1821735 () Unit!118984)

(assert (=> b!4659723 (= lt!1821735 lt!1821738)))

(assert (=> b!4659723 (forall!11050 (toList!5233 lt!1821734) lambda!200158)))

(declare-fun lt!1821732 () Unit!118984)

(declare-fun Unit!119069 () Unit!118984)

(assert (=> b!4659723 (= lt!1821732 Unit!119069)))

(assert (=> b!4659723 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200158)))

(declare-fun lt!1821736 () Unit!118984)

(declare-fun Unit!119070 () Unit!118984)

(assert (=> b!4659723 (= lt!1821736 Unit!119070)))

(declare-fun lt!1821721 () Unit!118984)

(declare-fun Unit!119071 () Unit!118984)

(assert (=> b!4659723 (= lt!1821721 Unit!119071)))

(declare-fun lt!1821740 () Unit!118984)

(assert (=> b!4659723 (= lt!1821740 (forallContained!3250 (toList!5233 lt!1821734) lambda!200158 (h!58080 (t!359168 oldBucket!40))))))

(assert (=> b!4659723 (contains!15083 lt!1821734 (_1!29821 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun lt!1821723 () Unit!118984)

(declare-fun Unit!119072 () Unit!118984)

(assert (=> b!4659723 (= lt!1821723 Unit!119072)))

(assert (=> b!4659723 (contains!15083 lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun lt!1821728 () Unit!118984)

(declare-fun Unit!119073 () Unit!118984)

(assert (=> b!4659723 (= lt!1821728 Unit!119073)))

(assert (=> b!4659723 (forall!11050 (t!359168 oldBucket!40) lambda!200158)))

(declare-fun lt!1821730 () Unit!118984)

(declare-fun Unit!119074 () Unit!118984)

(assert (=> b!4659723 (= lt!1821730 Unit!119074)))

(declare-fun call!325565 () Bool)

(assert (=> b!4659723 call!325565))

(declare-fun lt!1821725 () Unit!118984)

(declare-fun Unit!119075 () Unit!118984)

(assert (=> b!4659723 (= lt!1821725 Unit!119075)))

(declare-fun lt!1821733 () Unit!118984)

(declare-fun Unit!119076 () Unit!118984)

(assert (=> b!4659723 (= lt!1821733 Unit!119076)))

(declare-fun lt!1821737 () Unit!118984)

(assert (=> b!4659723 (= lt!1821737 (addForallContainsKeyThenBeforeAdding!605 (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4659723 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200158)))

(declare-fun lt!1821720 () Unit!118984)

(assert (=> b!4659723 (= lt!1821720 lt!1821737)))

(assert (=> b!4659723 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200158)))

(declare-fun lt!1821727 () Unit!118984)

(declare-fun Unit!119077 () Unit!118984)

(assert (=> b!4659723 (= lt!1821727 Unit!119077)))

(declare-fun res!1959871 () Bool)

(declare-fun call!325566 () Bool)

(assert (=> b!4659723 (= res!1959871 call!325566)))

(declare-fun e!2907512 () Bool)

(assert (=> b!4659723 (=> (not res!1959871) (not e!2907512))))

(assert (=> b!4659723 e!2907512))

(declare-fun lt!1821739 () Unit!118984)

(declare-fun Unit!119078 () Unit!118984)

(assert (=> b!4659723 (= lt!1821739 Unit!119078)))

(declare-fun e!2907511 () Bool)

(assert (=> d!1479170 e!2907511))

(declare-fun res!1959870 () Bool)

(assert (=> d!1479170 (=> (not res!1959870) (not e!2907511))))

(assert (=> d!1479170 (= res!1959870 (forall!11050 (t!359168 oldBucket!40) lambda!200159))))

(assert (=> d!1479170 (= lt!1821722 e!2907513)))

(declare-fun c!797610 () Bool)

(assert (=> d!1479170 (= c!797610 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1479170 (noDuplicateKeys!1652 (t!359168 oldBucket!40))))

(assert (=> d!1479170 (= (addToMapMapFromBucket!1109 (t!359168 oldBucket!40) (+!1992 lt!1821141 (h!58080 oldBucket!40))) lt!1821722)))

(declare-fun b!4659724 () Bool)

(assert (=> b!4659724 (= e!2907511 (invariantList!1306 (toList!5233 lt!1821722)))))

(declare-fun bm!325560 () Bool)

(assert (=> bm!325560 (= call!325565 (forall!11050 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (toList!5233 lt!1821734)) (ite c!797610 lambda!200156 lambda!200158)))))

(declare-fun bm!325561 () Bool)

(assert (=> bm!325561 (= call!325566 (forall!11050 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (t!359168 oldBucket!40)) (ite c!797610 lambda!200156 lambda!200158)))))

(assert (=> b!4659725 (= e!2907513 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))

(declare-fun lt!1821729 () Unit!118984)

(assert (=> b!4659725 (= lt!1821729 call!325567)))

(assert (=> b!4659725 call!325565))

(declare-fun lt!1821731 () Unit!118984)

(assert (=> b!4659725 (= lt!1821731 lt!1821729)))

(assert (=> b!4659725 call!325566))

(declare-fun lt!1821724 () Unit!118984)

(declare-fun Unit!119079 () Unit!118984)

(assert (=> b!4659725 (= lt!1821724 Unit!119079)))

(declare-fun b!4659726 () Bool)

(assert (=> b!4659726 (= e!2907512 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200158))))

(declare-fun b!4659727 () Bool)

(declare-fun res!1959869 () Bool)

(assert (=> b!4659727 (=> (not res!1959869) (not e!2907511))))

(assert (=> b!4659727 (= res!1959869 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200159))))

(declare-fun bm!325562 () Bool)

(assert (=> bm!325562 (= call!325567 (lemmaContainsAllItsOwnKeys!606 (+!1992 lt!1821141 (h!58080 oldBucket!40))))))

(assert (= (and d!1479170 c!797610) b!4659725))

(assert (= (and d!1479170 (not c!797610)) b!4659723))

(assert (= (and b!4659723 res!1959871) b!4659726))

(assert (= (or b!4659725 b!4659723) bm!325562))

(assert (= (or b!4659725 b!4659723) bm!325561))

(assert (= (or b!4659725 b!4659723) bm!325560))

(assert (= (and d!1479170 res!1959870) b!4659727))

(assert (= (and b!4659727 res!1959869) b!4659724))

(declare-fun m!5541589 () Bool)

(assert (=> bm!325560 m!5541589))

(assert (=> bm!325562 m!5540769))

(declare-fun m!5541591 () Bool)

(assert (=> bm!325562 m!5541591))

(declare-fun m!5541593 () Bool)

(assert (=> b!4659723 m!5541593))

(declare-fun m!5541595 () Bool)

(assert (=> b!4659723 m!5541595))

(declare-fun m!5541597 () Bool)

(assert (=> b!4659723 m!5541597))

(assert (=> b!4659723 m!5540769))

(declare-fun m!5541599 () Bool)

(assert (=> b!4659723 m!5541599))

(declare-fun m!5541601 () Bool)

(assert (=> b!4659723 m!5541601))

(declare-fun m!5541603 () Bool)

(assert (=> b!4659723 m!5541603))

(declare-fun m!5541605 () Bool)

(assert (=> b!4659723 m!5541605))

(declare-fun m!5541607 () Bool)

(assert (=> b!4659723 m!5541607))

(declare-fun m!5541609 () Bool)

(assert (=> b!4659723 m!5541609))

(declare-fun m!5541611 () Bool)

(assert (=> b!4659723 m!5541611))

(assert (=> b!4659723 m!5540769))

(assert (=> b!4659723 m!5541605))

(declare-fun m!5541613 () Bool)

(assert (=> b!4659723 m!5541613))

(assert (=> b!4659723 m!5541609))

(declare-fun m!5541615 () Bool)

(assert (=> d!1479170 m!5541615))

(assert (=> d!1479170 m!5540487))

(assert (=> b!4659726 m!5541609))

(declare-fun m!5541617 () Bool)

(assert (=> bm!325561 m!5541617))

(declare-fun m!5541619 () Bool)

(assert (=> b!4659727 m!5541619))

(declare-fun m!5541621 () Bool)

(assert (=> b!4659724 m!5541621))

(assert (=> b!4659241 d!1479170))

(declare-fun d!1479172 () Bool)

(declare-fun res!1959872 () Bool)

(declare-fun e!2907514 () Bool)

(assert (=> d!1479172 (=> res!1959872 e!2907514)))

(assert (=> d!1479172 (= res!1959872 ((_ is Nil!51928) (toList!5233 lt!1821141)))))

(assert (=> d!1479172 (= (forall!11050 (toList!5233 lt!1821141) lambda!200076) e!2907514)))

(declare-fun b!4659728 () Bool)

(declare-fun e!2907515 () Bool)

(assert (=> b!4659728 (= e!2907514 e!2907515)))

(declare-fun res!1959873 () Bool)

(assert (=> b!4659728 (=> (not res!1959873) (not e!2907515))))

(assert (=> b!4659728 (= res!1959873 (dynLambda!21608 lambda!200076 (h!58080 (toList!5233 lt!1821141))))))

(declare-fun b!4659729 () Bool)

(assert (=> b!4659729 (= e!2907515 (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200076))))

(assert (= (and d!1479172 (not res!1959872)) b!4659728))

(assert (= (and b!4659728 res!1959873) b!4659729))

(declare-fun b_lambda!174759 () Bool)

(assert (=> (not b_lambda!174759) (not b!4659728)))

(declare-fun m!5541623 () Bool)

(assert (=> b!4659728 m!5541623))

(declare-fun m!5541625 () Bool)

(assert (=> b!4659729 m!5541625))

(assert (=> b!4659241 d!1479172))

(declare-fun d!1479174 () Bool)

(assert (=> d!1479174 (dynLambda!21608 lambda!200077 (h!58080 oldBucket!40))))

(declare-fun lt!1821743 () Unit!118984)

(declare-fun choose!32098 (List!52052 Int tuple2!53054) Unit!118984)

(assert (=> d!1479174 (= lt!1821743 (choose!32098 (toList!5233 lt!1821412) lambda!200077 (h!58080 oldBucket!40)))))

(declare-fun e!2907518 () Bool)

(assert (=> d!1479174 e!2907518))

(declare-fun res!1959876 () Bool)

(assert (=> d!1479174 (=> (not res!1959876) (not e!2907518))))

(assert (=> d!1479174 (= res!1959876 (forall!11050 (toList!5233 lt!1821412) lambda!200077))))

(assert (=> d!1479174 (= (forallContained!3250 (toList!5233 lt!1821412) lambda!200077 (h!58080 oldBucket!40)) lt!1821743)))

(declare-fun b!4659732 () Bool)

(assert (=> b!4659732 (= e!2907518 (contains!15088 (toList!5233 lt!1821412) (h!58080 oldBucket!40)))))

(assert (= (and d!1479174 res!1959876) b!4659732))

(declare-fun b_lambda!174761 () Bool)

(assert (=> (not b_lambda!174761) (not d!1479174)))

(assert (=> d!1479174 m!5541519))

(declare-fun m!5541627 () Bool)

(assert (=> d!1479174 m!5541627))

(assert (=> d!1479174 m!5540777))

(declare-fun m!5541629 () Bool)

(assert (=> b!4659732 m!5541629))

(assert (=> b!4659241 d!1479174))

(declare-fun d!1479176 () Bool)

(declare-fun res!1959877 () Bool)

(declare-fun e!2907519 () Bool)

(assert (=> d!1479176 (=> res!1959877 e!2907519)))

(assert (=> d!1479176 (= res!1959877 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1479176 (= (forall!11050 (t!359168 oldBucket!40) lambda!200077) e!2907519)))

(declare-fun b!4659733 () Bool)

(declare-fun e!2907520 () Bool)

(assert (=> b!4659733 (= e!2907519 e!2907520)))

(declare-fun res!1959878 () Bool)

(assert (=> b!4659733 (=> (not res!1959878) (not e!2907520))))

(assert (=> b!4659733 (= res!1959878 (dynLambda!21608 lambda!200077 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun b!4659734 () Bool)

(assert (=> b!4659734 (= e!2907520 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200077))))

(assert (= (and d!1479176 (not res!1959877)) b!4659733))

(assert (= (and b!4659733 res!1959878) b!4659734))

(declare-fun b_lambda!174763 () Bool)

(assert (=> (not b_lambda!174763) (not b!4659733)))

(declare-fun m!5541631 () Bool)

(assert (=> b!4659733 m!5541631))

(declare-fun m!5541633 () Bool)

(assert (=> b!4659734 m!5541633))

(assert (=> b!4659241 d!1479176))

(declare-fun d!1479178 () Bool)

(declare-fun res!1959879 () Bool)

(declare-fun e!2907521 () Bool)

(assert (=> d!1479178 (=> res!1959879 e!2907521)))

(assert (=> d!1479178 (= res!1959879 ((_ is Nil!51929) (t!359169 lt!1821143)))))

(assert (=> d!1479178 (= (forall!11048 (t!359169 lt!1821143) lambda!199980) e!2907521)))

(declare-fun b!4659735 () Bool)

(declare-fun e!2907522 () Bool)

(assert (=> b!4659735 (= e!2907521 e!2907522)))

(declare-fun res!1959880 () Bool)

(assert (=> b!4659735 (=> (not res!1959880) (not e!2907522))))

(assert (=> b!4659735 (= res!1959880 (dynLambda!21606 lambda!199980 (h!58081 (t!359169 lt!1821143))))))

(declare-fun b!4659736 () Bool)

(assert (=> b!4659736 (= e!2907522 (forall!11048 (t!359169 (t!359169 lt!1821143)) lambda!199980))))

(assert (= (and d!1479178 (not res!1959879)) b!4659735))

(assert (= (and b!4659735 res!1959880) b!4659736))

(declare-fun b_lambda!174765 () Bool)

(assert (=> (not b_lambda!174765) (not b!4659735)))

(declare-fun m!5541635 () Bool)

(assert (=> b!4659735 m!5541635))

(declare-fun m!5541637 () Bool)

(assert (=> b!4659736 m!5541637))

(assert (=> b!4659020 d!1479178))

(declare-fun d!1479180 () Bool)

(declare-fun lt!1821744 () Bool)

(assert (=> d!1479180 (= lt!1821744 (select (content!9013 (t!359169 lt!1821144)) lt!1821146))))

(declare-fun e!2907524 () Bool)

(assert (=> d!1479180 (= lt!1821744 e!2907524)))

(declare-fun res!1959882 () Bool)

(assert (=> d!1479180 (=> (not res!1959882) (not e!2907524))))

(assert (=> d!1479180 (= res!1959882 ((_ is Cons!51929) (t!359169 lt!1821144)))))

(assert (=> d!1479180 (= (contains!15084 (t!359169 lt!1821144) lt!1821146) lt!1821744)))

(declare-fun b!4659737 () Bool)

(declare-fun e!2907523 () Bool)

(assert (=> b!4659737 (= e!2907524 e!2907523)))

(declare-fun res!1959881 () Bool)

(assert (=> b!4659737 (=> res!1959881 e!2907523)))

(assert (=> b!4659737 (= res!1959881 (= (h!58081 (t!359169 lt!1821144)) lt!1821146))))

(declare-fun b!4659738 () Bool)

(assert (=> b!4659738 (= e!2907523 (contains!15084 (t!359169 (t!359169 lt!1821144)) lt!1821146))))

(assert (= (and d!1479180 res!1959882) b!4659737))

(assert (= (and b!4659737 (not res!1959881)) b!4659738))

(assert (=> d!1479180 m!5541385))

(declare-fun m!5541639 () Bool)

(assert (=> d!1479180 m!5541639))

(declare-fun m!5541641 () Bool)

(assert (=> b!4659738 m!5541641))

(assert (=> b!4659153 d!1479180))

(declare-fun lt!1821745 () Bool)

(declare-fun d!1479182 () Bool)

(assert (=> d!1479182 (= lt!1821745 (select (content!9013 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821248 lt!1821245)))))

(declare-fun e!2907526 () Bool)

(assert (=> d!1479182 (= lt!1821745 e!2907526)))

(declare-fun res!1959884 () Bool)

(assert (=> d!1479182 (=> (not res!1959884) (not e!2907526))))

(assert (=> d!1479182 (= res!1959884 ((_ is Cons!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479182 (= (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821248 lt!1821245)) lt!1821745)))

(declare-fun b!4659739 () Bool)

(declare-fun e!2907525 () Bool)

(assert (=> b!4659739 (= e!2907526 e!2907525)))

(declare-fun res!1959883 () Bool)

(assert (=> b!4659739 (=> res!1959883 e!2907525)))

(assert (=> b!4659739 (= res!1959883 (= (h!58081 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821248 lt!1821245)))))

(declare-fun b!4659740 () Bool)

(assert (=> b!4659740 (= e!2907525 (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821248 lt!1821245)))))

(assert (= (and d!1479182 res!1959884) b!4659739))

(assert (= (and b!4659739 (not res!1959883)) b!4659740))

(assert (=> d!1479182 m!5541355))

(declare-fun m!5541643 () Bool)

(assert (=> d!1479182 m!5541643))

(declare-fun m!5541645 () Bool)

(assert (=> b!4659740 m!5541645))

(assert (=> b!4659093 d!1479182))

(declare-fun d!1479184 () Bool)

(assert (=> d!1479184 (= (isDefined!9109 (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968)) (not (isEmpty!29021 (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968))))))

(declare-fun bs!1066902 () Bool)

(assert (= bs!1066902 d!1479184))

(assert (=> bs!1066902 m!5540581))

(declare-fun m!5541647 () Bool)

(assert (=> bs!1066902 m!5541647))

(assert (=> b!4659093 d!1479184))

(declare-fun b!4659741 () Bool)

(declare-fun e!2907530 () Option!11844)

(declare-fun e!2907527 () Option!11844)

(assert (=> b!4659741 (= e!2907530 e!2907527)))

(declare-fun c!797612 () Bool)

(assert (=> b!4659741 (= c!797612 ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(declare-fun lt!1821746 () Option!11844)

(declare-fun e!2907529 () Bool)

(declare-fun b!4659742 () Bool)

(assert (=> b!4659742 (= e!2907529 (contains!15088 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) (get!17289 lt!1821746)))))

(declare-fun b!4659743 () Bool)

(declare-fun e!2907531 () Bool)

(assert (=> b!4659743 (= e!2907531 (not (containsKey!2746 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968)))))

(declare-fun b!4659744 () Bool)

(declare-fun res!1959885 () Bool)

(assert (=> b!4659744 (=> (not res!1959885) (not e!2907529))))

(assert (=> b!4659744 (= res!1959885 (= (_1!29821 (get!17289 lt!1821746)) key!4968))))

(declare-fun b!4659745 () Bool)

(assert (=> b!4659745 (= e!2907527 None!11843)))

(declare-fun b!4659746 () Bool)

(assert (=> b!4659746 (= e!2907530 (Some!11843 (h!58080 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun b!4659747 () Bool)

(assert (=> b!4659747 (= e!2907527 (getPair!380 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) key!4968))))

(declare-fun b!4659748 () Bool)

(declare-fun e!2907528 () Bool)

(assert (=> b!4659748 (= e!2907528 e!2907529)))

(declare-fun res!1959886 () Bool)

(assert (=> b!4659748 (=> (not res!1959886) (not e!2907529))))

(assert (=> b!4659748 (= res!1959886 (isDefined!9109 lt!1821746))))

(declare-fun d!1479186 () Bool)

(assert (=> d!1479186 e!2907528))

(declare-fun res!1959888 () Bool)

(assert (=> d!1479186 (=> res!1959888 e!2907528)))

(assert (=> d!1479186 (= res!1959888 e!2907531)))

(declare-fun res!1959887 () Bool)

(assert (=> d!1479186 (=> (not res!1959887) (not e!2907531))))

(assert (=> d!1479186 (= res!1959887 (isEmpty!29021 lt!1821746))))

(assert (=> d!1479186 (= lt!1821746 e!2907530)))

(declare-fun c!797611 () Bool)

(assert (=> d!1479186 (= c!797611 (and ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (= (_1!29821 (h!58080 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) key!4968)))))

(assert (=> d!1479186 (noDuplicateKeys!1652 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))

(assert (=> d!1479186 (= (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968) lt!1821746)))

(assert (= (and d!1479186 c!797611) b!4659746))

(assert (= (and d!1479186 (not c!797611)) b!4659741))

(assert (= (and b!4659741 c!797612) b!4659747))

(assert (= (and b!4659741 (not c!797612)) b!4659745))

(assert (= (and d!1479186 res!1959887) b!4659743))

(assert (= (and d!1479186 (not res!1959888)) b!4659748))

(assert (= (and b!4659748 res!1959886) b!4659744))

(assert (= (and b!4659744 res!1959885) b!4659742))

(declare-fun m!5541649 () Bool)

(assert (=> b!4659748 m!5541649))

(declare-fun m!5541651 () Bool)

(assert (=> b!4659744 m!5541651))

(assert (=> b!4659743 m!5540595))

(declare-fun m!5541653 () Bool)

(assert (=> b!4659743 m!5541653))

(declare-fun m!5541655 () Bool)

(assert (=> b!4659747 m!5541655))

(declare-fun m!5541657 () Bool)

(assert (=> d!1479186 m!5541657))

(assert (=> d!1479186 m!5540595))

(declare-fun m!5541659 () Bool)

(assert (=> d!1479186 m!5541659))

(assert (=> b!4659742 m!5541651))

(assert (=> b!4659742 m!5540595))

(assert (=> b!4659742 m!5541651))

(declare-fun m!5541661 () Bool)

(assert (=> b!4659742 m!5541661))

(assert (=> b!4659093 d!1479186))

(declare-fun d!1479188 () Bool)

(assert (=> d!1479188 (dynLambda!21606 lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(declare-fun lt!1821747 () Unit!118984)

(assert (=> d!1479188 (= lt!1821747 (choose!32080 (toList!5234 lt!1821147) lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun e!2907532 () Bool)

(assert (=> d!1479188 e!2907532))

(declare-fun res!1959889 () Bool)

(assert (=> d!1479188 (=> (not res!1959889) (not e!2907532))))

(assert (=> d!1479188 (= res!1959889 (forall!11048 (toList!5234 lt!1821147) lambda!200029))))

(assert (=> d!1479188 (= (forallContained!3248 (toList!5234 lt!1821147) lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) lt!1821747)))

(declare-fun b!4659749 () Bool)

(assert (=> b!4659749 (= e!2907532 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(assert (= (and d!1479188 res!1959889) b!4659749))

(declare-fun b_lambda!174767 () Bool)

(assert (=> (not b_lambda!174767) (not d!1479188)))

(declare-fun m!5541663 () Bool)

(assert (=> d!1479188 m!5541663))

(declare-fun m!5541665 () Bool)

(assert (=> d!1479188 m!5541665))

(assert (=> d!1479188 m!5540597))

(declare-fun m!5541667 () Bool)

(assert (=> b!4659749 m!5541667))

(assert (=> b!4659093 d!1479188))

(declare-fun d!1479190 () Bool)

(assert (=> d!1479190 (= (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) (get!17288 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968))))))

(declare-fun bs!1066903 () Bool)

(assert (= bs!1066903 d!1479190))

(assert (=> bs!1066903 m!5540453))

(declare-fun m!5541669 () Bool)

(assert (=> bs!1066903 m!5541669))

(assert (=> bs!1066903 m!5541669))

(declare-fun m!5541671 () Bool)

(assert (=> bs!1066903 m!5541671))

(assert (=> b!4659093 d!1479190))

(declare-fun d!1479192 () Bool)

(declare-fun e!2907534 () Bool)

(assert (=> d!1479192 e!2907534))

(declare-fun res!1959890 () Bool)

(assert (=> d!1479192 (=> res!1959890 e!2907534)))

(declare-fun lt!1821749 () Bool)

(assert (=> d!1479192 (= res!1959890 (not lt!1821749))))

(declare-fun lt!1821748 () Bool)

(assert (=> d!1479192 (= lt!1821749 lt!1821748)))

(declare-fun lt!1821751 () Unit!118984)

(declare-fun e!2907533 () Unit!118984)

(assert (=> d!1479192 (= lt!1821751 e!2907533)))

(declare-fun c!797613 () Bool)

(assert (=> d!1479192 (= c!797613 lt!1821748)))

(assert (=> d!1479192 (= lt!1821748 (containsKey!2749 (toList!5234 lt!1821147) lt!1821248))))

(assert (=> d!1479192 (= (contains!15085 lt!1821147 lt!1821248) lt!1821749)))

(declare-fun b!4659750 () Bool)

(declare-fun lt!1821750 () Unit!118984)

(assert (=> b!4659750 (= e!2907533 lt!1821750)))

(assert (=> b!4659750 (= lt!1821750 (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) lt!1821248))))

(assert (=> b!4659750 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248))))

(declare-fun b!4659751 () Bool)

(declare-fun Unit!119080 () Unit!118984)

(assert (=> b!4659751 (= e!2907533 Unit!119080)))

(declare-fun b!4659752 () Bool)

(assert (=> b!4659752 (= e!2907534 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248)))))

(assert (= (and d!1479192 c!797613) b!4659750))

(assert (= (and d!1479192 (not c!797613)) b!4659751))

(assert (= (and d!1479192 (not res!1959890)) b!4659752))

(declare-fun m!5541673 () Bool)

(assert (=> d!1479192 m!5541673))

(declare-fun m!5541675 () Bool)

(assert (=> b!4659750 m!5541675))

(assert (=> b!4659750 m!5540607))

(assert (=> b!4659750 m!5540607))

(declare-fun m!5541677 () Bool)

(assert (=> b!4659750 m!5541677))

(assert (=> b!4659752 m!5540607))

(assert (=> b!4659752 m!5540607))

(assert (=> b!4659752 m!5541677))

(assert (=> b!4659093 d!1479192))

(assert (=> b!4659093 d!1478820))

(declare-fun d!1479194 () Bool)

(assert (=> d!1479194 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821248 lt!1821245))))

(declare-fun lt!1821752 () Unit!118984)

(assert (=> d!1479194 (= lt!1821752 (choose!32082 lt!1821147 lt!1821248 lt!1821245))))

(assert (=> d!1479194 (contains!15085 lt!1821147 lt!1821248)))

(assert (=> d!1479194 (= (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821248 lt!1821245) lt!1821752)))

(declare-fun bs!1066904 () Bool)

(assert (= bs!1066904 d!1479194))

(assert (=> bs!1066904 m!5540589))

(declare-fun m!5541679 () Bool)

(assert (=> bs!1066904 m!5541679))

(assert (=> bs!1066904 m!5540593))

(assert (=> b!4659093 d!1479194))

(assert (=> b!4659093 d!1478852))

(declare-fun d!1479196 () Bool)

(declare-fun e!2907536 () Bool)

(assert (=> d!1479196 e!2907536))

(declare-fun res!1959891 () Bool)

(assert (=> d!1479196 (=> res!1959891 e!2907536)))

(declare-fun lt!1821754 () Bool)

(assert (=> d!1479196 (= res!1959891 (not lt!1821754))))

(declare-fun lt!1821753 () Bool)

(assert (=> d!1479196 (= lt!1821754 lt!1821753)))

(declare-fun lt!1821756 () Unit!118984)

(declare-fun e!2907535 () Unit!118984)

(assert (=> d!1479196 (= lt!1821756 e!2907535)))

(declare-fun c!797614 () Bool)

(assert (=> d!1479196 (= c!797614 lt!1821753)))

(assert (=> d!1479196 (= lt!1821753 (containsKey!2749 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(assert (=> d!1479196 (= (contains!15085 lt!1821147 (hash!3797 hashF!1389 key!4968)) lt!1821754)))

(declare-fun b!4659753 () Bool)

(declare-fun lt!1821755 () Unit!118984)

(assert (=> b!4659753 (= e!2907535 lt!1821755)))

(assert (=> b!4659753 (= lt!1821755 (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(assert (=> b!4659753 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(declare-fun b!4659754 () Bool)

(declare-fun Unit!119081 () Unit!118984)

(assert (=> b!4659754 (= e!2907535 Unit!119081)))

(declare-fun b!4659755 () Bool)

(assert (=> b!4659755 (= e!2907536 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968))))))

(assert (= (and d!1479196 c!797614) b!4659753))

(assert (= (and d!1479196 (not c!797614)) b!4659754))

(assert (= (and d!1479196 (not res!1959891)) b!4659755))

(assert (=> d!1479196 m!5540453))

(declare-fun m!5541681 () Bool)

(assert (=> d!1479196 m!5541681))

(assert (=> b!4659753 m!5540453))

(declare-fun m!5541683 () Bool)

(assert (=> b!4659753 m!5541683))

(assert (=> b!4659753 m!5540453))

(assert (=> b!4659753 m!5541669))

(assert (=> b!4659753 m!5541669))

(declare-fun m!5541685 () Bool)

(assert (=> b!4659753 m!5541685))

(assert (=> b!4659755 m!5540453))

(assert (=> b!4659755 m!5541669))

(assert (=> b!4659755 m!5541669))

(assert (=> b!4659755 m!5541685))

(assert (=> b!4659093 d!1479196))

(declare-fun d!1479198 () Bool)

(assert (=> d!1479198 (= (get!17288 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)) (v!46144 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)))))

(assert (=> d!1478826 d!1479198))

(declare-fun b!4659756 () Bool)

(declare-fun e!2907537 () Option!11847)

(assert (=> b!4659756 (= e!2907537 (Some!11846 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(declare-fun b!4659759 () Bool)

(declare-fun e!2907538 () Option!11847)

(assert (=> b!4659759 (= e!2907538 None!11846)))

(declare-fun b!4659758 () Bool)

(assert (=> b!4659758 (= e!2907538 (getValueByKey!1625 (t!359169 (toList!5234 lt!1821147)) lt!1821136))))

(declare-fun b!4659757 () Bool)

(assert (=> b!4659757 (= e!2907537 e!2907538)))

(declare-fun c!797616 () Bool)

(assert (=> b!4659757 (= c!797616 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (not (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821136))))))

(declare-fun d!1479200 () Bool)

(declare-fun c!797615 () Bool)

(assert (=> d!1479200 (= c!797615 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821136)))))

(assert (=> d!1479200 (= (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136) e!2907537)))

(assert (= (and d!1479200 c!797615) b!4659756))

(assert (= (and d!1479200 (not c!797615)) b!4659757))

(assert (= (and b!4659757 c!797616) b!4659758))

(assert (= (and b!4659757 (not c!797616)) b!4659759))

(declare-fun m!5541687 () Bool)

(assert (=> b!4659758 m!5541687))

(assert (=> d!1478826 d!1479200))

(assert (=> b!4659276 d!1479150))

(assert (=> b!4659276 d!1479152))

(declare-fun b!4659760 () Bool)

(declare-fun e!2907539 () List!52052)

(assert (=> b!4659760 (= e!2907539 (t!359168 (t!359168 (t!359168 oldBucket!40))))))

(declare-fun b!4659762 () Bool)

(declare-fun e!2907540 () List!52052)

(assert (=> b!4659762 (= e!2907540 (Cons!51928 (h!58080 (t!359168 (t!359168 oldBucket!40))) (removePairForKey!1275 (t!359168 (t!359168 (t!359168 oldBucket!40))) key!4968)))))

(declare-fun b!4659763 () Bool)

(assert (=> b!4659763 (= e!2907540 Nil!51928)))

(declare-fun b!4659761 () Bool)

(assert (=> b!4659761 (= e!2907539 e!2907540)))

(declare-fun c!797617 () Bool)

(assert (=> b!4659761 (= c!797617 ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))))))

(declare-fun d!1479202 () Bool)

(declare-fun lt!1821757 () List!52052)

(assert (=> d!1479202 (not (containsKey!2746 lt!1821757 key!4968))))

(assert (=> d!1479202 (= lt!1821757 e!2907539)))

(declare-fun c!797618 () Bool)

(assert (=> d!1479202 (= c!797618 (and ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))) key!4968)))))

(assert (=> d!1479202 (noDuplicateKeys!1652 (t!359168 (t!359168 oldBucket!40)))))

(assert (=> d!1479202 (= (removePairForKey!1275 (t!359168 (t!359168 oldBucket!40)) key!4968) lt!1821757)))

(assert (= (and d!1479202 c!797618) b!4659760))

(assert (= (and d!1479202 (not c!797618)) b!4659761))

(assert (= (and b!4659761 c!797617) b!4659762))

(assert (= (and b!4659761 (not c!797617)) b!4659763))

(declare-fun m!5541689 () Bool)

(assert (=> b!4659762 m!5541689))

(declare-fun m!5541691 () Bool)

(assert (=> d!1479202 m!5541691))

(declare-fun m!5541693 () Bool)

(assert (=> d!1479202 m!5541693))

(assert (=> b!4659180 d!1479202))

(declare-fun d!1479204 () Bool)

(declare-fun res!1959892 () Bool)

(declare-fun e!2907541 () Bool)

(assert (=> d!1479204 (=> res!1959892 e!2907541)))

(assert (=> d!1479204 (= res!1959892 (not ((_ is Cons!51928) (t!359168 oldBucket!40))))))

(assert (=> d!1479204 (= (noDuplicateKeys!1652 (t!359168 oldBucket!40)) e!2907541)))

(declare-fun b!4659764 () Bool)

(declare-fun e!2907542 () Bool)

(assert (=> b!4659764 (= e!2907541 e!2907542)))

(declare-fun res!1959893 () Bool)

(assert (=> b!4659764 (=> (not res!1959893) (not e!2907542))))

(assert (=> b!4659764 (= res!1959893 (not (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(declare-fun b!4659765 () Bool)

(assert (=> b!4659765 (= e!2907542 (noDuplicateKeys!1652 (t!359168 (t!359168 oldBucket!40))))))

(assert (= (and d!1479204 (not res!1959892)) b!4659764))

(assert (= (and b!4659764 res!1959893) b!4659765))

(declare-fun m!5541695 () Bool)

(assert (=> b!4659764 m!5541695))

(assert (=> b!4659765 m!5541693))

(assert (=> b!4659014 d!1479204))

(assert (=> b!4659147 d!1478816))

(declare-fun b!4659766 () Bool)

(declare-fun e!2907546 () Option!11844)

(declare-fun e!2907543 () Option!11844)

(assert (=> b!4659766 (= e!2907546 e!2907543)))

(declare-fun c!797620 () Bool)

(assert (=> b!4659766 (= c!797620 ((_ is Cons!51928) (t!359168 lt!1821145)))))

(declare-fun b!4659767 () Bool)

(declare-fun e!2907545 () Bool)

(declare-fun lt!1821758 () Option!11844)

(assert (=> b!4659767 (= e!2907545 (contains!15088 (t!359168 lt!1821145) (get!17289 lt!1821758)))))

(declare-fun b!4659768 () Bool)

(declare-fun e!2907547 () Bool)

(assert (=> b!4659768 (= e!2907547 (not (containsKey!2746 (t!359168 lt!1821145) key!4968)))))

(declare-fun b!4659769 () Bool)

(declare-fun res!1959894 () Bool)

(assert (=> b!4659769 (=> (not res!1959894) (not e!2907545))))

(assert (=> b!4659769 (= res!1959894 (= (_1!29821 (get!17289 lt!1821758)) key!4968))))

(declare-fun b!4659770 () Bool)

(assert (=> b!4659770 (= e!2907543 None!11843)))

(declare-fun b!4659771 () Bool)

(assert (=> b!4659771 (= e!2907546 (Some!11843 (h!58080 (t!359168 lt!1821145))))))

(declare-fun b!4659772 () Bool)

(assert (=> b!4659772 (= e!2907543 (getPair!380 (t!359168 (t!359168 lt!1821145)) key!4968))))

(declare-fun b!4659773 () Bool)

(declare-fun e!2907544 () Bool)

(assert (=> b!4659773 (= e!2907544 e!2907545)))

(declare-fun res!1959895 () Bool)

(assert (=> b!4659773 (=> (not res!1959895) (not e!2907545))))

(assert (=> b!4659773 (= res!1959895 (isDefined!9109 lt!1821758))))

(declare-fun d!1479206 () Bool)

(assert (=> d!1479206 e!2907544))

(declare-fun res!1959897 () Bool)

(assert (=> d!1479206 (=> res!1959897 e!2907544)))

(assert (=> d!1479206 (= res!1959897 e!2907547)))

(declare-fun res!1959896 () Bool)

(assert (=> d!1479206 (=> (not res!1959896) (not e!2907547))))

(assert (=> d!1479206 (= res!1959896 (isEmpty!29021 lt!1821758))))

(assert (=> d!1479206 (= lt!1821758 e!2907546)))

(declare-fun c!797619 () Bool)

(assert (=> d!1479206 (= c!797619 (and ((_ is Cons!51928) (t!359168 lt!1821145)) (= (_1!29821 (h!58080 (t!359168 lt!1821145))) key!4968)))))

(assert (=> d!1479206 (noDuplicateKeys!1652 (t!359168 lt!1821145))))

(assert (=> d!1479206 (= (getPair!380 (t!359168 lt!1821145) key!4968) lt!1821758)))

(assert (= (and d!1479206 c!797619) b!4659771))

(assert (= (and d!1479206 (not c!797619)) b!4659766))

(assert (= (and b!4659766 c!797620) b!4659772))

(assert (= (and b!4659766 (not c!797620)) b!4659770))

(assert (= (and d!1479206 res!1959896) b!4659768))

(assert (= (and d!1479206 (not res!1959897)) b!4659773))

(assert (= (and b!4659773 res!1959895) b!4659769))

(assert (= (and b!4659769 res!1959894) b!4659767))

(declare-fun m!5541697 () Bool)

(assert (=> b!4659773 m!5541697))

(declare-fun m!5541699 () Bool)

(assert (=> b!4659769 m!5541699))

(declare-fun m!5541701 () Bool)

(assert (=> b!4659768 m!5541701))

(declare-fun m!5541703 () Bool)

(assert (=> b!4659772 m!5541703))

(declare-fun m!5541705 () Bool)

(assert (=> d!1479206 m!5541705))

(declare-fun m!5541707 () Bool)

(assert (=> d!1479206 m!5541707))

(assert (=> b!4659767 m!5541699))

(assert (=> b!4659767 m!5541699))

(declare-fun m!5541709 () Bool)

(assert (=> b!4659767 m!5541709))

(assert (=> b!4659176 d!1479206))

(declare-fun d!1479208 () Bool)

(assert (=> d!1479208 (= (isEmpty!29021 lt!1821305) (not ((_ is Some!11843) lt!1821305)))))

(assert (=> d!1478834 d!1479208))

(declare-fun d!1479210 () Bool)

(declare-fun res!1959898 () Bool)

(declare-fun e!2907548 () Bool)

(assert (=> d!1479210 (=> res!1959898 e!2907548)))

(assert (=> d!1479210 (= res!1959898 (not ((_ is Cons!51928) lt!1821145)))))

(assert (=> d!1479210 (= (noDuplicateKeys!1652 lt!1821145) e!2907548)))

(declare-fun b!4659774 () Bool)

(declare-fun e!2907549 () Bool)

(assert (=> b!4659774 (= e!2907548 e!2907549)))

(declare-fun res!1959899 () Bool)

(assert (=> b!4659774 (=> (not res!1959899) (not e!2907549))))

(assert (=> b!4659774 (= res!1959899 (not (containsKey!2746 (t!359168 lt!1821145) (_1!29821 (h!58080 lt!1821145)))))))

(declare-fun b!4659775 () Bool)

(assert (=> b!4659775 (= e!2907549 (noDuplicateKeys!1652 (t!359168 lt!1821145)))))

(assert (= (and d!1479210 (not res!1959898)) b!4659774))

(assert (= (and b!4659774 res!1959899) b!4659775))

(declare-fun m!5541711 () Bool)

(assert (=> b!4659774 m!5541711))

(assert (=> b!4659775 m!5541707))

(assert (=> d!1478834 d!1479210))

(declare-fun bs!1066905 () Bool)

(declare-fun d!1479212 () Bool)

(assert (= bs!1066905 (and d!1479212 b!4658974)))

(declare-fun lambda!200160 () Int)

(assert (=> bs!1066905 (not (= lambda!200160 lambda!199980))))

(declare-fun bs!1066906 () Bool)

(assert (= bs!1066906 (and d!1479212 d!1479088)))

(assert (=> bs!1066906 (not (= lambda!200160 lambda!200127))))

(declare-fun bs!1066907 () Bool)

(assert (= bs!1066907 (and d!1479212 d!1478772)))

(assert (=> bs!1066907 (not (= lambda!200160 lambda!200029))))

(declare-fun bs!1066908 () Bool)

(assert (= bs!1066908 (and d!1479212 d!1479134)))

(assert (=> bs!1066908 (not (= lambda!200160 lambda!200150))))

(declare-fun bs!1066909 () Bool)

(assert (= bs!1066909 (and d!1479212 d!1478850)))

(assert (=> bs!1066909 (not (= lambda!200160 lambda!200081))))

(declare-fun bs!1066910 () Bool)

(assert (= bs!1066910 (and d!1479212 d!1478858)))

(assert (=> bs!1066910 (= lambda!200160 lambda!200085)))

(declare-fun bs!1066911 () Bool)

(assert (= bs!1066911 (and d!1479212 d!1478856)))

(assert (=> bs!1066911 (not (= lambda!200160 lambda!200082))))

(declare-fun bs!1066912 () Bool)

(assert (= bs!1066912 (and d!1479212 d!1478820)))

(assert (=> bs!1066912 (not (= lambda!200160 lambda!200035))))

(assert (=> d!1479212 true))

(assert (=> d!1479212 (= (allKeysSameHashInMap!1608 lt!1821147 hashF!1389) (forall!11048 (toList!5234 lt!1821147) lambda!200160))))

(declare-fun bs!1066913 () Bool)

(assert (= bs!1066913 d!1479212))

(declare-fun m!5541713 () Bool)

(assert (=> bs!1066913 m!5541713))

(assert (=> b!4659091 d!1479212))

(declare-fun d!1479214 () Bool)

(declare-fun res!1959900 () Bool)

(declare-fun e!2907550 () Bool)

(assert (=> d!1479214 (=> res!1959900 e!2907550)))

(assert (=> d!1479214 (= res!1959900 (and ((_ is Cons!51928) lt!1821145) (= (_1!29821 (h!58080 lt!1821145)) key!4968)))))

(assert (=> d!1479214 (= (containsKey!2746 lt!1821145 key!4968) e!2907550)))

(declare-fun b!4659776 () Bool)

(declare-fun e!2907551 () Bool)

(assert (=> b!4659776 (= e!2907550 e!2907551)))

(declare-fun res!1959901 () Bool)

(assert (=> b!4659776 (=> (not res!1959901) (not e!2907551))))

(assert (=> b!4659776 (= res!1959901 ((_ is Cons!51928) lt!1821145))))

(declare-fun b!4659777 () Bool)

(assert (=> b!4659777 (= e!2907551 (containsKey!2746 (t!359168 lt!1821145) key!4968))))

(assert (= (and d!1479214 (not res!1959900)) b!4659776))

(assert (= (and b!4659776 res!1959901) b!4659777))

(assert (=> b!4659777 m!5541701))

(assert (=> b!4659172 d!1479214))

(declare-fun b!4659778 () Bool)

(declare-fun e!2907552 () List!52052)

(assert (=> b!4659778 (= e!2907552 (t!359168 (t!359168 (tail!8255 oldBucket!40))))))

(declare-fun b!4659780 () Bool)

(declare-fun e!2907553 () List!52052)

(assert (=> b!4659780 (= e!2907553 (Cons!51928 (h!58080 (t!359168 (tail!8255 oldBucket!40))) (removePairForKey!1275 (t!359168 (t!359168 (tail!8255 oldBucket!40))) key!4968)))))

(declare-fun b!4659781 () Bool)

(assert (=> b!4659781 (= e!2907553 Nil!51928)))

(declare-fun b!4659779 () Bool)

(assert (=> b!4659779 (= e!2907552 e!2907553)))

(declare-fun c!797621 () Bool)

(assert (=> b!4659779 (= c!797621 ((_ is Cons!51928) (t!359168 (tail!8255 oldBucket!40))))))

(declare-fun d!1479216 () Bool)

(declare-fun lt!1821759 () List!52052)

(assert (=> d!1479216 (not (containsKey!2746 lt!1821759 key!4968))))

(assert (=> d!1479216 (= lt!1821759 e!2907552)))

(declare-fun c!797622 () Bool)

(assert (=> d!1479216 (= c!797622 (and ((_ is Cons!51928) (t!359168 (tail!8255 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (tail!8255 oldBucket!40)))) key!4968)))))

(assert (=> d!1479216 (noDuplicateKeys!1652 (t!359168 (tail!8255 oldBucket!40)))))

(assert (=> d!1479216 (= (removePairForKey!1275 (t!359168 (tail!8255 oldBucket!40)) key!4968) lt!1821759)))

(assert (= (and d!1479216 c!797622) b!4659778))

(assert (= (and d!1479216 (not c!797622)) b!4659779))

(assert (= (and b!4659779 c!797621) b!4659780))

(assert (= (and b!4659779 (not c!797621)) b!4659781))

(declare-fun m!5541715 () Bool)

(assert (=> b!4659780 m!5541715))

(declare-fun m!5541717 () Bool)

(assert (=> d!1479216 m!5541717))

(assert (=> d!1479216 m!5541437))

(assert (=> b!4659287 d!1479216))

(declare-fun d!1479218 () Bool)

(declare-fun lt!1821760 () Bool)

(assert (=> d!1479218 (= lt!1821760 (select (content!9016 e!2907207) key!4968))))

(declare-fun e!2907555 () Bool)

(assert (=> d!1479218 (= lt!1821760 e!2907555)))

(declare-fun res!1959903 () Bool)

(assert (=> d!1479218 (=> (not res!1959903) (not e!2907555))))

(assert (=> d!1479218 (= res!1959903 ((_ is Cons!51931) e!2907207))))

(assert (=> d!1479218 (= (contains!15089 e!2907207 key!4968) lt!1821760)))

(declare-fun b!4659782 () Bool)

(declare-fun e!2907554 () Bool)

(assert (=> b!4659782 (= e!2907555 e!2907554)))

(declare-fun res!1959902 () Bool)

(assert (=> b!4659782 (=> res!1959902 e!2907554)))

(assert (=> b!4659782 (= res!1959902 (= (h!58085 e!2907207) key!4968))))

(declare-fun b!4659783 () Bool)

(assert (=> b!4659783 (= e!2907554 (contains!15089 (t!359171 e!2907207) key!4968))))

(assert (= (and d!1479218 res!1959903) b!4659782))

(assert (= (and b!4659782 (not res!1959902)) b!4659783))

(declare-fun m!5541719 () Bool)

(assert (=> d!1479218 m!5541719))

(declare-fun m!5541721 () Bool)

(assert (=> d!1479218 m!5541721))

(declare-fun m!5541723 () Bool)

(assert (=> b!4659783 m!5541723))

(assert (=> bm!325544 d!1479218))

(declare-fun d!1479220 () Bool)

(declare-fun res!1959904 () Bool)

(declare-fun e!2907556 () Bool)

(assert (=> d!1479220 (=> res!1959904 e!2907556)))

(assert (=> d!1479220 (= res!1959904 (not ((_ is Cons!51928) (_2!29822 (h!58081 lt!1821143)))))))

(assert (=> d!1479220 (= (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821143))) e!2907556)))

(declare-fun b!4659784 () Bool)

(declare-fun e!2907557 () Bool)

(assert (=> b!4659784 (= e!2907556 e!2907557)))

(declare-fun res!1959905 () Bool)

(assert (=> b!4659784 (=> (not res!1959905) (not e!2907557))))

(assert (=> b!4659784 (= res!1959905 (not (containsKey!2746 (t!359168 (_2!29822 (h!58081 lt!1821143))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821143)))))))))

(declare-fun b!4659785 () Bool)

(assert (=> b!4659785 (= e!2907557 (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 lt!1821143)))))))

(assert (= (and d!1479220 (not res!1959904)) b!4659784))

(assert (= (and b!4659784 res!1959905) b!4659785))

(declare-fun m!5541725 () Bool)

(assert (=> b!4659784 m!5541725))

(declare-fun m!5541727 () Bool)

(assert (=> b!4659785 m!5541727))

(assert (=> bs!1066671 d!1479220))

(declare-fun d!1479222 () Bool)

(declare-fun res!1959906 () Bool)

(declare-fun e!2907558 () Bool)

(assert (=> d!1479222 (=> res!1959906 e!2907558)))

(assert (=> d!1479222 (= res!1959906 (and ((_ is Cons!51928) lt!1821306) (= (_1!29821 (h!58080 lt!1821306)) key!4968)))))

(assert (=> d!1479222 (= (containsKey!2746 lt!1821306 key!4968) e!2907558)))

(declare-fun b!4659786 () Bool)

(declare-fun e!2907559 () Bool)

(assert (=> b!4659786 (= e!2907558 e!2907559)))

(declare-fun res!1959907 () Bool)

(assert (=> b!4659786 (=> (not res!1959907) (not e!2907559))))

(assert (=> b!4659786 (= res!1959907 ((_ is Cons!51928) lt!1821306))))

(declare-fun b!4659787 () Bool)

(assert (=> b!4659787 (= e!2907559 (containsKey!2746 (t!359168 lt!1821306) key!4968))))

(assert (= (and d!1479222 (not res!1959906)) b!4659786))

(assert (= (and b!4659786 res!1959907) b!4659787))

(declare-fun m!5541729 () Bool)

(assert (=> b!4659787 m!5541729))

(assert (=> d!1478836 d!1479222))

(assert (=> d!1478836 d!1479204))

(declare-fun d!1479224 () Bool)

(assert (not d!1479224))

(assert (=> b!4659252 d!1479224))

(declare-fun d!1479226 () Bool)

(assert (not d!1479226))

(assert (=> b!4659252 d!1479226))

(declare-fun d!1479228 () Bool)

(declare-fun isEmpty!29025 (Option!11847) Bool)

(assert (=> d!1479228 (= (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)) (not (isEmpty!29025 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136))))))

(declare-fun bs!1066914 () Bool)

(assert (= bs!1066914 d!1479228))

(assert (=> bs!1066914 m!5540633))

(declare-fun m!5541731 () Bool)

(assert (=> bs!1066914 m!5541731))

(assert (=> b!4659126 d!1479228))

(assert (=> b!4659126 d!1479200))

(assert (=> d!1478820 d!1479196))

(assert (=> d!1478820 d!1478852))

(declare-fun d!1479230 () Bool)

(assert (=> d!1479230 (contains!15085 lt!1821147 (hash!3797 hashF!1389 key!4968))))

(assert (=> d!1479230 true))

(declare-fun _$27!1500 () Unit!118984)

(assert (=> d!1479230 (= (choose!32083 lt!1821147 key!4968 hashF!1389) _$27!1500)))

(declare-fun bs!1066915 () Bool)

(assert (= bs!1066915 d!1479230))

(assert (=> bs!1066915 m!5540453))

(assert (=> bs!1066915 m!5540453))

(assert (=> bs!1066915 m!5540585))

(assert (=> d!1478820 d!1479230))

(declare-fun d!1479232 () Bool)

(declare-fun res!1959908 () Bool)

(declare-fun e!2907560 () Bool)

(assert (=> d!1479232 (=> res!1959908 e!2907560)))

(assert (=> d!1479232 (= res!1959908 ((_ is Nil!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479232 (= (forall!11048 (toList!5234 lt!1821147) lambda!200035) e!2907560)))

(declare-fun b!4659788 () Bool)

(declare-fun e!2907561 () Bool)

(assert (=> b!4659788 (= e!2907560 e!2907561)))

(declare-fun res!1959909 () Bool)

(assert (=> b!4659788 (=> (not res!1959909) (not e!2907561))))

(assert (=> b!4659788 (= res!1959909 (dynLambda!21606 lambda!200035 (h!58081 (toList!5234 lt!1821147))))))

(declare-fun b!4659789 () Bool)

(assert (=> b!4659789 (= e!2907561 (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200035))))

(assert (= (and d!1479232 (not res!1959908)) b!4659788))

(assert (= (and b!4659788 res!1959909) b!4659789))

(declare-fun b_lambda!174769 () Bool)

(assert (=> (not b_lambda!174769) (not b!4659788)))

(declare-fun m!5541733 () Bool)

(assert (=> b!4659788 m!5541733))

(declare-fun m!5541735 () Bool)

(assert (=> b!4659789 m!5541735))

(assert (=> d!1478820 d!1479232))

(declare-fun d!1479234 () Bool)

(declare-fun res!1959910 () Bool)

(declare-fun e!2907562 () Bool)

(assert (=> d!1479234 (=> res!1959910 e!2907562)))

(assert (=> d!1479234 (= res!1959910 ((_ is Nil!51928) oldBucket!40))))

(assert (=> d!1479234 (= (forall!11050 oldBucket!40 lambda!200086) e!2907562)))

(declare-fun b!4659790 () Bool)

(declare-fun e!2907563 () Bool)

(assert (=> b!4659790 (= e!2907562 e!2907563)))

(declare-fun res!1959911 () Bool)

(assert (=> b!4659790 (=> (not res!1959911) (not e!2907563))))

(assert (=> b!4659790 (= res!1959911 (dynLambda!21608 lambda!200086 (h!58080 oldBucket!40)))))

(declare-fun b!4659791 () Bool)

(assert (=> b!4659791 (= e!2907563 (forall!11050 (t!359168 oldBucket!40) lambda!200086))))

(assert (= (and d!1479234 (not res!1959910)) b!4659790))

(assert (= (and b!4659790 res!1959911) b!4659791))

(declare-fun b_lambda!174771 () Bool)

(assert (=> (not b_lambda!174771) (not b!4659790)))

(declare-fun m!5541737 () Bool)

(assert (=> b!4659790 m!5541737))

(declare-fun m!5541739 () Bool)

(assert (=> b!4659791 m!5541739))

(assert (=> d!1478866 d!1479234))

(declare-fun d!1479236 () Bool)

(declare-fun res!1959912 () Bool)

(declare-fun e!2907564 () Bool)

(assert (=> d!1479236 (=> res!1959912 e!2907564)))

(assert (=> d!1479236 (= res!1959912 ((_ is Nil!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479236 (= (forall!11048 (toList!5234 lt!1821147) lambda!200029) e!2907564)))

(declare-fun b!4659792 () Bool)

(declare-fun e!2907565 () Bool)

(assert (=> b!4659792 (= e!2907564 e!2907565)))

(declare-fun res!1959913 () Bool)

(assert (=> b!4659792 (=> (not res!1959913) (not e!2907565))))

(assert (=> b!4659792 (= res!1959913 (dynLambda!21606 lambda!200029 (h!58081 (toList!5234 lt!1821147))))))

(declare-fun b!4659793 () Bool)

(assert (=> b!4659793 (= e!2907565 (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200029))))

(assert (= (and d!1479236 (not res!1959912)) b!4659792))

(assert (= (and b!4659792 res!1959913) b!4659793))

(declare-fun b_lambda!174773 () Bool)

(assert (=> (not b_lambda!174773) (not b!4659792)))

(declare-fun m!5541741 () Bool)

(assert (=> b!4659792 m!5541741))

(declare-fun m!5541743 () Bool)

(assert (=> b!4659793 m!5541743))

(assert (=> d!1478772 d!1479236))

(declare-fun bs!1066916 () Bool)

(declare-fun d!1479238 () Bool)

(assert (= bs!1066916 (and d!1479238 b!4658974)))

(declare-fun lambda!200163 () Int)

(assert (=> bs!1066916 (= lambda!200163 lambda!199980)))

(declare-fun bs!1066917 () Bool)

(assert (= bs!1066917 (and d!1479238 d!1479088)))

(assert (=> bs!1066917 (= lambda!200163 lambda!200127)))

(declare-fun bs!1066918 () Bool)

(assert (= bs!1066918 (and d!1479238 d!1479212)))

(assert (=> bs!1066918 (not (= lambda!200163 lambda!200160))))

(declare-fun bs!1066919 () Bool)

(assert (= bs!1066919 (and d!1479238 d!1478772)))

(assert (=> bs!1066919 (= lambda!200163 lambda!200029)))

(declare-fun bs!1066920 () Bool)

(assert (= bs!1066920 (and d!1479238 d!1479134)))

(assert (=> bs!1066920 (= lambda!200163 lambda!200150)))

(declare-fun bs!1066921 () Bool)

(assert (= bs!1066921 (and d!1479238 d!1478850)))

(assert (=> bs!1066921 (= lambda!200163 lambda!200081)))

(declare-fun bs!1066922 () Bool)

(assert (= bs!1066922 (and d!1479238 d!1478858)))

(assert (=> bs!1066922 (not (= lambda!200163 lambda!200085))))

(declare-fun bs!1066923 () Bool)

(assert (= bs!1066923 (and d!1479238 d!1478856)))

(assert (=> bs!1066923 (= lambda!200163 lambda!200082)))

(declare-fun bs!1066924 () Bool)

(assert (= bs!1066924 (and d!1479238 d!1478820)))

(assert (=> bs!1066924 (= lambda!200163 lambda!200035)))

(assert (=> d!1479238 (isDefined!9109 (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968))))

(declare-fun lt!1821778 () Unit!118984)

(assert (=> d!1479238 (= lt!1821778 (forallContained!3248 (toList!5234 lt!1821147) lambda!200163 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun lt!1821775 () Unit!118984)

(declare-fun lt!1821776 () Unit!118984)

(assert (=> d!1479238 (= lt!1821775 lt!1821776)))

(declare-fun lt!1821781 () (_ BitVec 64))

(declare-fun lt!1821777 () List!52052)

(assert (=> d!1479238 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821781 lt!1821777))))

(assert (=> d!1479238 (= lt!1821776 (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821781 lt!1821777))))

(assert (=> d!1479238 (= lt!1821777 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))

(assert (=> d!1479238 (= lt!1821781 (hash!3797 hashF!1389 key!4968))))

(declare-fun lt!1821780 () Unit!118984)

(declare-fun lt!1821779 () Unit!118984)

(assert (=> d!1479238 (= lt!1821780 lt!1821779)))

(assert (=> d!1479238 (contains!15085 lt!1821147 (hash!3797 hashF!1389 key!4968))))

(assert (=> d!1479238 (= lt!1821779 (lemmaInGenMapThenLongMapContainsHash!586 lt!1821147 key!4968 hashF!1389))))

(assert (=> d!1479238 true))

(declare-fun _$25!235 () Unit!118984)

(assert (=> d!1479238 (= (choose!32081 lt!1821147 key!4968 hashF!1389) _$25!235)))

(declare-fun bs!1066925 () Bool)

(assert (= bs!1066925 d!1479238))

(assert (=> bs!1066925 m!5540595))

(assert (=> bs!1066925 m!5540581))

(assert (=> bs!1066925 m!5540425))

(declare-fun m!5541745 () Bool)

(assert (=> bs!1066925 m!5541745))

(assert (=> bs!1066925 m!5540453))

(assert (=> bs!1066925 m!5540453))

(assert (=> bs!1066925 m!5540585))

(declare-fun m!5541747 () Bool)

(assert (=> bs!1066925 m!5541747))

(assert (=> bs!1066925 m!5540581))

(assert (=> bs!1066925 m!5540583))

(declare-fun m!5541749 () Bool)

(assert (=> bs!1066925 m!5541749))

(assert (=> bs!1066925 m!5540453))

(assert (=> bs!1066925 m!5540595))

(assert (=> d!1478772 d!1479238))

(assert (=> b!4659244 d!1479164))

(declare-fun bs!1066926 () Bool)

(declare-fun d!1479240 () Bool)

(assert (= bs!1066926 (and d!1479240 b!4659243)))

(declare-fun lambda!200166 () Int)

(assert (=> bs!1066926 (= lambda!200166 lambda!200075)))

(declare-fun bs!1066927 () Bool)

(assert (= bs!1066927 (and d!1479240 d!1478838)))

(assert (=> bs!1066927 (= (= lt!1821141 lt!1821400) (= lambda!200166 lambda!200078))))

(declare-fun bs!1066928 () Bool)

(assert (= bs!1066928 (and d!1479240 d!1479158)))

(assert (=> bs!1066928 (= (= lt!1821141 lt!1821404) (= lambda!200166 lambda!200155))))

(declare-fun bs!1066929 () Bool)

(assert (= bs!1066929 (and d!1479240 b!4659725)))

(assert (=> bs!1066929 (= (= lt!1821141 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200166 lambda!200156))))

(declare-fun bs!1066930 () Bool)

(assert (= bs!1066930 (and d!1479240 b!4659241)))

(assert (=> bs!1066930 (= (= lt!1821141 lt!1821404) (= lambda!200166 lambda!200077))))

(declare-fun bs!1066931 () Bool)

(assert (= bs!1066931 (and d!1479240 b!4659723)))

(assert (=> bs!1066931 (= (= lt!1821141 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200166 lambda!200157))))

(declare-fun bs!1066932 () Bool)

(assert (= bs!1066932 (and d!1479240 b!4659667)))

(assert (=> bs!1066932 (= (= lt!1821141 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200166 lambda!200146))))

(declare-fun bs!1066933 () Bool)

(assert (= bs!1066933 (and d!1479240 d!1478768)))

(assert (=> bs!1066933 (not (= lambda!200166 lambda!199986))))

(declare-fun bs!1066934 () Bool)

(assert (= bs!1066934 (and d!1479240 d!1478866)))

(assert (=> bs!1066934 (not (= lambda!200166 lambda!200086))))

(assert (=> bs!1066930 (= lambda!200166 lambda!200076)))

(declare-fun bs!1066935 () Bool)

(assert (= bs!1066935 (and d!1479240 b!4659665)))

(assert (=> bs!1066935 (= (= lt!1821141 lt!1821667) (= lambda!200166 lambda!200148))))

(assert (=> bs!1066931 (= (= lt!1821141 lt!1821726) (= lambda!200166 lambda!200158))))

(declare-fun bs!1066936 () Bool)

(assert (= bs!1066936 (and d!1479240 d!1479170)))

(assert (=> bs!1066936 (= (= lt!1821141 lt!1821722) (= lambda!200166 lambda!200159))))

(assert (=> bs!1066935 (= (= lt!1821141 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200166 lambda!200147))))

(declare-fun bs!1066937 () Bool)

(assert (= bs!1066937 (and d!1479240 d!1479132)))

(assert (=> bs!1066937 (= (= lt!1821141 lt!1821663) (= lambda!200166 lambda!200149))))

(assert (=> d!1479240 true))

(assert (=> d!1479240 (forall!11050 (toList!5233 lt!1821141) lambda!200166)))

(declare-fun lt!1821784 () Unit!118984)

(declare-fun choose!32099 (ListMap!4573) Unit!118984)

(assert (=> d!1479240 (= lt!1821784 (choose!32099 lt!1821141))))

(assert (=> d!1479240 (= (lemmaContainsAllItsOwnKeys!606 lt!1821141) lt!1821784)))

(declare-fun bs!1066938 () Bool)

(assert (= bs!1066938 d!1479240))

(declare-fun m!5541751 () Bool)

(assert (=> bs!1066938 m!5541751))

(declare-fun m!5541753 () Bool)

(assert (=> bs!1066938 m!5541753))

(assert (=> bm!325541 d!1479240))

(declare-fun d!1479242 () Bool)

(assert (=> d!1479242 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136))))

(declare-fun lt!1821787 () Unit!118984)

(declare-fun choose!32100 (List!52053 (_ BitVec 64)) Unit!118984)

(assert (=> d!1479242 (= lt!1821787 (choose!32100 (toList!5234 lt!1821147) lt!1821136))))

(declare-fun e!2907568 () Bool)

(assert (=> d!1479242 e!2907568))

(declare-fun res!1959916 () Bool)

(assert (=> d!1479242 (=> (not res!1959916) (not e!2907568))))

(declare-fun isStrictlySorted!580 (List!52053) Bool)

(assert (=> d!1479242 (= res!1959916 (isStrictlySorted!580 (toList!5234 lt!1821147)))))

(assert (=> d!1479242 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) lt!1821136) lt!1821787)))

(declare-fun b!4659796 () Bool)

(assert (=> b!4659796 (= e!2907568 (containsKey!2749 (toList!5234 lt!1821147) lt!1821136))))

(assert (= (and d!1479242 res!1959916) b!4659796))

(assert (=> d!1479242 m!5540633))

(assert (=> d!1479242 m!5540633))

(assert (=> d!1479242 m!5540635))

(declare-fun m!5541755 () Bool)

(assert (=> d!1479242 m!5541755))

(declare-fun m!5541757 () Bool)

(assert (=> d!1479242 m!5541757))

(assert (=> b!4659796 m!5540629))

(assert (=> b!4659124 d!1479242))

(assert (=> b!4659124 d!1479228))

(assert (=> b!4659124 d!1479200))

(declare-fun d!1479244 () Bool)

(assert (=> d!1479244 (= (invariantList!1306 (toList!5233 lt!1821421)) (noDuplicatedKeys!358 (toList!5233 lt!1821421)))))

(declare-fun bs!1066939 () Bool)

(assert (= bs!1066939 d!1479244))

(declare-fun m!5541759 () Bool)

(assert (=> bs!1066939 m!5541759))

(assert (=> d!1478850 d!1479244))

(declare-fun d!1479246 () Bool)

(declare-fun res!1959917 () Bool)

(declare-fun e!2907569 () Bool)

(assert (=> d!1479246 (=> res!1959917 e!2907569)))

(assert (=> d!1479246 (= res!1959917 ((_ is Nil!51929) Nil!51929))))

(assert (=> d!1479246 (= (forall!11048 Nil!51929 lambda!200081) e!2907569)))

(declare-fun b!4659797 () Bool)

(declare-fun e!2907570 () Bool)

(assert (=> b!4659797 (= e!2907569 e!2907570)))

(declare-fun res!1959918 () Bool)

(assert (=> b!4659797 (=> (not res!1959918) (not e!2907570))))

(assert (=> b!4659797 (= res!1959918 (dynLambda!21606 lambda!200081 (h!58081 Nil!51929)))))

(declare-fun b!4659798 () Bool)

(assert (=> b!4659798 (= e!2907570 (forall!11048 (t!359169 Nil!51929) lambda!200081))))

(assert (= (and d!1479246 (not res!1959917)) b!4659797))

(assert (= (and b!4659797 res!1959918) b!4659798))

(declare-fun b_lambda!174775 () Bool)

(assert (=> (not b_lambda!174775) (not b!4659797)))

(declare-fun m!5541761 () Bool)

(assert (=> b!4659797 m!5541761))

(declare-fun m!5541763 () Bool)

(assert (=> b!4659798 m!5541763))

(assert (=> d!1478850 d!1479246))

(declare-fun d!1479248 () Bool)

(declare-fun res!1959919 () Bool)

(declare-fun e!2907571 () Bool)

(assert (=> d!1479248 (=> res!1959919 e!2907571)))

(assert (=> d!1479248 (= res!1959919 ((_ is Nil!51928) (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))

(assert (=> d!1479248 (= (forall!11050 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40) (ite c!797509 lambda!200075 lambda!200077)) e!2907571)))

(declare-fun b!4659799 () Bool)

(declare-fun e!2907572 () Bool)

(assert (=> b!4659799 (= e!2907571 e!2907572)))

(declare-fun res!1959920 () Bool)

(assert (=> b!4659799 (=> (not res!1959920) (not e!2907572))))

(assert (=> b!4659799 (= res!1959920 (dynLambda!21608 (ite c!797509 lambda!200075 lambda!200077) (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))))))

(declare-fun b!4659800 () Bool)

(assert (=> b!4659800 (= e!2907572 (forall!11050 (t!359168 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)) (ite c!797509 lambda!200075 lambda!200077)))))

(assert (= (and d!1479248 (not res!1959919)) b!4659799))

(assert (= (and b!4659799 res!1959920) b!4659800))

(declare-fun b_lambda!174777 () Bool)

(assert (=> (not b_lambda!174777) (not b!4659799)))

(declare-fun m!5541765 () Bool)

(assert (=> b!4659799 m!5541765))

(declare-fun m!5541767 () Bool)

(assert (=> b!4659800 m!5541767))

(assert (=> bm!325540 d!1479248))

(declare-fun d!1479250 () Bool)

(declare-fun res!1959925 () Bool)

(declare-fun e!2907577 () Bool)

(assert (=> d!1479250 (=> res!1959925 e!2907577)))

(assert (=> d!1479250 (= res!1959925 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821136)))))

(assert (=> d!1479250 (= (containsKey!2749 (toList!5234 lt!1821147) lt!1821136) e!2907577)))

(declare-fun b!4659805 () Bool)

(declare-fun e!2907578 () Bool)

(assert (=> b!4659805 (= e!2907577 e!2907578)))

(declare-fun res!1959926 () Bool)

(assert (=> b!4659805 (=> (not res!1959926) (not e!2907578))))

(assert (=> b!4659805 (= res!1959926 (and (or (not ((_ is Cons!51929) (toList!5234 lt!1821147))) (bvsle (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821136)) ((_ is Cons!51929) (toList!5234 lt!1821147)) (bvslt (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821136)))))

(declare-fun b!4659806 () Bool)

(assert (=> b!4659806 (= e!2907578 (containsKey!2749 (t!359169 (toList!5234 lt!1821147)) lt!1821136))))

(assert (= (and d!1479250 (not res!1959925)) b!4659805))

(assert (= (and b!4659805 res!1959926) b!4659806))

(declare-fun m!5541769 () Bool)

(assert (=> b!4659806 m!5541769))

(assert (=> d!1478798 d!1479250))

(declare-fun d!1479252 () Bool)

(assert (=> d!1479252 (dynLambda!21606 lambda!199980 lt!1821146)))

(assert (=> d!1479252 true))

(declare-fun _$7!2217 () Unit!118984)

(assert (=> d!1479252 (= (choose!32080 lt!1821144 lambda!199980 lt!1821146) _$7!2217)))

(declare-fun b_lambda!174779 () Bool)

(assert (=> (not b_lambda!174779) (not d!1479252)))

(declare-fun bs!1066940 () Bool)

(assert (= bs!1066940 d!1479252))

(assert (=> bs!1066940 m!5540495))

(assert (=> d!1478770 d!1479252))

(declare-fun d!1479254 () Bool)

(declare-fun res!1959927 () Bool)

(declare-fun e!2907579 () Bool)

(assert (=> d!1479254 (=> res!1959927 e!2907579)))

(assert (=> d!1479254 (= res!1959927 ((_ is Nil!51929) lt!1821144))))

(assert (=> d!1479254 (= (forall!11048 lt!1821144 lambda!199980) e!2907579)))

(declare-fun b!4659807 () Bool)

(declare-fun e!2907580 () Bool)

(assert (=> b!4659807 (= e!2907579 e!2907580)))

(declare-fun res!1959928 () Bool)

(assert (=> b!4659807 (=> (not res!1959928) (not e!2907580))))

(assert (=> b!4659807 (= res!1959928 (dynLambda!21606 lambda!199980 (h!58081 lt!1821144)))))

(declare-fun b!4659808 () Bool)

(assert (=> b!4659808 (= e!2907580 (forall!11048 (t!359169 lt!1821144) lambda!199980))))

(assert (= (and d!1479254 (not res!1959927)) b!4659807))

(assert (= (and b!4659807 res!1959928) b!4659808))

(declare-fun b_lambda!174781 () Bool)

(assert (=> (not b_lambda!174781) (not b!4659807)))

(declare-fun m!5541771 () Bool)

(assert (=> b!4659807 m!5541771))

(declare-fun m!5541773 () Bool)

(assert (=> b!4659808 m!5541773))

(assert (=> d!1478770 d!1479254))

(declare-fun d!1479256 () Bool)

(declare-fun res!1959929 () Bool)

(declare-fun e!2907581 () Bool)

(assert (=> d!1479256 (=> res!1959929 e!2907581)))

(assert (=> d!1479256 (= res!1959929 (and ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))) key!4968)))))

(assert (=> d!1479256 (= (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) key!4968) e!2907581)))

(declare-fun b!4659809 () Bool)

(declare-fun e!2907582 () Bool)

(assert (=> b!4659809 (= e!2907581 e!2907582)))

(declare-fun res!1959930 () Bool)

(assert (=> b!4659809 (=> (not res!1959930) (not e!2907582))))

(assert (=> b!4659809 (= res!1959930 ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))))))

(declare-fun b!4659810 () Bool)

(assert (=> b!4659810 (= e!2907582 (containsKey!2746 (t!359168 (t!359168 (t!359168 oldBucket!40))) key!4968))))

(assert (= (and d!1479256 (not res!1959929)) b!4659809))

(assert (= (and b!4659809 res!1959930) b!4659810))

(declare-fun m!5541775 () Bool)

(assert (=> b!4659810 m!5541775))

(assert (=> b!4659144 d!1479256))

(assert (=> b!4659027 d!1478830))

(declare-fun d!1479258 () Bool)

(assert (=> d!1479258 (= (invariantList!1306 (toList!5233 lt!1821400)) (noDuplicatedKeys!358 (toList!5233 lt!1821400)))))

(declare-fun bs!1066941 () Bool)

(assert (= bs!1066941 d!1479258))

(declare-fun m!5541777 () Bool)

(assert (=> bs!1066941 m!5541777))

(assert (=> b!4659242 d!1479258))

(declare-fun d!1479260 () Bool)

(declare-fun res!1959931 () Bool)

(declare-fun e!2907583 () Bool)

(assert (=> d!1479260 (=> res!1959931 e!2907583)))

(assert (=> d!1479260 (= res!1959931 ((_ is Nil!51929) (toList!5234 (ListLongMap!3788 lt!1821143))))))

(assert (=> d!1479260 (= (forall!11048 (toList!5234 (ListLongMap!3788 lt!1821143)) lambda!200085) e!2907583)))

(declare-fun b!4659811 () Bool)

(declare-fun e!2907584 () Bool)

(assert (=> b!4659811 (= e!2907583 e!2907584)))

(declare-fun res!1959932 () Bool)

(assert (=> b!4659811 (=> (not res!1959932) (not e!2907584))))

(assert (=> b!4659811 (= res!1959932 (dynLambda!21606 lambda!200085 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))))))

(declare-fun b!4659812 () Bool)

(assert (=> b!4659812 (= e!2907584 (forall!11048 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))) lambda!200085))))

(assert (= (and d!1479260 (not res!1959931)) b!4659811))

(assert (= (and b!4659811 res!1959932) b!4659812))

(declare-fun b_lambda!174783 () Bool)

(assert (=> (not b_lambda!174783) (not b!4659811)))

(declare-fun m!5541779 () Bool)

(assert (=> b!4659811 m!5541779))

(declare-fun m!5541781 () Bool)

(assert (=> b!4659812 m!5541781))

(assert (=> d!1478858 d!1479260))

(assert (=> b!4659280 d!1479096))

(assert (=> b!4659280 d!1479098))

(declare-fun d!1479262 () Bool)

(declare-fun res!1959933 () Bool)

(declare-fun e!2907585 () Bool)

(assert (=> d!1479262 (=> res!1959933 e!2907585)))

(assert (=> d!1479262 (= res!1959933 (and ((_ is Cons!51928) (t!359168 newBucket!224)) (= (_1!29821 (h!58080 (t!359168 newBucket!224))) (_1!29821 (h!58080 newBucket!224)))))))

(assert (=> d!1479262 (= (containsKey!2746 (t!359168 newBucket!224) (_1!29821 (h!58080 newBucket!224))) e!2907585)))

(declare-fun b!4659813 () Bool)

(declare-fun e!2907586 () Bool)

(assert (=> b!4659813 (= e!2907585 e!2907586)))

(declare-fun res!1959934 () Bool)

(assert (=> b!4659813 (=> (not res!1959934) (not e!2907586))))

(assert (=> b!4659813 (= res!1959934 ((_ is Cons!51928) (t!359168 newBucket!224)))))

(declare-fun b!4659814 () Bool)

(assert (=> b!4659814 (= e!2907586 (containsKey!2746 (t!359168 (t!359168 newBucket!224)) (_1!29821 (h!58080 newBucket!224))))))

(assert (= (and d!1479262 (not res!1959933)) b!4659813))

(assert (= (and b!4659813 res!1959934) b!4659814))

(declare-fun m!5541783 () Bool)

(assert (=> b!4659814 m!5541783))

(assert (=> b!4659289 d!1479262))

(declare-fun tp!1343442 () Bool)

(declare-fun b!4659815 () Bool)

(declare-fun e!2907587 () Bool)

(assert (=> b!4659815 (= e!2907587 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343442))))

(assert (=> b!4659296 (= tp!1343439 e!2907587)))

(assert (= (and b!4659296 ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40)))) b!4659815))

(declare-fun e!2907588 () Bool)

(declare-fun b!4659816 () Bool)

(declare-fun tp!1343443 () Bool)

(assert (=> b!4659816 (= e!2907588 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343443))))

(assert (=> b!4659295 (= tp!1343438 e!2907588)))

(assert (= (and b!4659295 ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224)))) b!4659816))

(declare-fun b_lambda!174785 () Bool)

(assert (= b_lambda!174775 (or d!1478850 b_lambda!174785)))

(declare-fun bs!1066942 () Bool)

(declare-fun d!1479264 () Bool)

(assert (= bs!1066942 (and d!1479264 d!1478850)))

(assert (=> bs!1066942 (= (dynLambda!21606 lambda!200081 (h!58081 Nil!51929)) (noDuplicateKeys!1652 (_2!29822 (h!58081 Nil!51929))))))

(declare-fun m!5541785 () Bool)

(assert (=> bs!1066942 m!5541785))

(assert (=> b!4659797 d!1479264))

(declare-fun b_lambda!174787 () Bool)

(assert (= b_lambda!174767 (or d!1478772 b_lambda!174787)))

(declare-fun bs!1066943 () Bool)

(declare-fun d!1479266 () Bool)

(assert (= bs!1066943 (and d!1479266 d!1478772)))

(assert (=> bs!1066943 (= (dynLambda!21606 lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) (noDuplicateKeys!1652 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))))

(declare-fun m!5541787 () Bool)

(assert (=> bs!1066943 m!5541787))

(assert (=> d!1479188 d!1479266))

(declare-fun b_lambda!174789 () Bool)

(assert (= b_lambda!174753 (or b!4659241 b_lambda!174789)))

(declare-fun bs!1066944 () Bool)

(declare-fun d!1479268 () Bool)

(assert (= bs!1066944 (and d!1479268 b!4659241)))

(assert (=> bs!1066944 (= (dynLambda!21608 lambda!200077 (h!58080 oldBucket!40)) (contains!15083 lt!1821404 (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> bs!1066944 m!5540775))

(assert (=> b!4659692 d!1479268))

(declare-fun b_lambda!174791 () Bool)

(assert (= b_lambda!174769 (or d!1478820 b_lambda!174791)))

(declare-fun bs!1066945 () Bool)

(declare-fun d!1479270 () Bool)

(assert (= bs!1066945 (and d!1479270 d!1478820)))

(assert (=> bs!1066945 (= (dynLambda!21606 lambda!200035 (h!58081 (toList!5234 lt!1821147))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(declare-fun m!5541789 () Bool)

(assert (=> bs!1066945 m!5541789))

(assert (=> b!4659788 d!1479270))

(declare-fun b_lambda!174793 () Bool)

(assert (= b_lambda!174745 (or d!1478838 b_lambda!174793)))

(declare-fun bs!1066946 () Bool)

(declare-fun d!1479272 () Bool)

(assert (= bs!1066946 (and d!1479272 d!1478838)))

(assert (=> bs!1066946 (= (dynLambda!21608 lambda!200078 (h!58080 oldBucket!40)) (contains!15083 lt!1821400 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun m!5541791 () Bool)

(assert (=> bs!1066946 m!5541791))

(assert (=> b!4659661 d!1479272))

(declare-fun b_lambda!174795 () Bool)

(assert (= b_lambda!174743 (or d!1478768 b_lambda!174795)))

(declare-fun bs!1066947 () Bool)

(declare-fun d!1479274 () Bool)

(assert (= bs!1066947 (and d!1479274 d!1478768)))

(assert (=> bs!1066947 (= (dynLambda!21608 lambda!199986 (h!58080 newBucket!224)) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 newBucket!224))) hash!414))))

(declare-fun m!5541793 () Bool)

(assert (=> bs!1066947 m!5541793))

(assert (=> b!4659655 d!1479274))

(declare-fun b_lambda!174797 () Bool)

(assert (= b_lambda!174747 (or d!1478838 b_lambda!174797)))

(declare-fun bs!1066948 () Bool)

(declare-fun d!1479276 () Bool)

(assert (= bs!1066948 (and d!1479276 d!1478838)))

(assert (=> bs!1066948 (= (dynLambda!21608 lambda!200078 (h!58080 (toList!5233 lt!1821141))) (contains!15083 lt!1821400 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun m!5541795 () Bool)

(assert (=> bs!1066948 m!5541795))

(assert (=> b!4659663 d!1479276))

(declare-fun b_lambda!174799 () Bool)

(assert (= b_lambda!174773 (or d!1478772 b_lambda!174799)))

(declare-fun bs!1066949 () Bool)

(declare-fun d!1479278 () Bool)

(assert (= bs!1066949 (and d!1479278 d!1478772)))

(assert (=> bs!1066949 (= (dynLambda!21606 lambda!200029 (h!58081 (toList!5234 lt!1821147))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(assert (=> bs!1066949 m!5541789))

(assert (=> b!4659792 d!1479278))

(declare-fun b_lambda!174801 () Bool)

(assert (= b_lambda!174761 (or b!4659241 b_lambda!174801)))

(assert (=> d!1479174 d!1479268))

(declare-fun b_lambda!174803 () Bool)

(assert (= b_lambda!174771 (or d!1478866 b_lambda!174803)))

(declare-fun bs!1066950 () Bool)

(declare-fun d!1479280 () Bool)

(assert (= bs!1066950 (and d!1479280 d!1478866)))

(assert (=> bs!1066950 (= (dynLambda!21608 lambda!200086 (h!58080 oldBucket!40)) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 oldBucket!40))) hash!414))))

(declare-fun m!5541797 () Bool)

(assert (=> bs!1066950 m!5541797))

(assert (=> b!4659790 d!1479280))

(declare-fun b_lambda!174805 () Bool)

(assert (= b_lambda!174783 (or d!1478858 b_lambda!174805)))

(declare-fun bs!1066951 () Bool)

(declare-fun d!1479282 () Bool)

(assert (= bs!1066951 (and d!1479282 d!1478858)))

(assert (=> bs!1066951 (= (dynLambda!21606 lambda!200085 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) (allKeysSameHash!1506 (_2!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) hashF!1389))))

(declare-fun m!5541799 () Bool)

(assert (=> bs!1066951 m!5541799))

(assert (=> b!4659811 d!1479282))

(declare-fun b_lambda!174807 () Bool)

(assert (= b_lambda!174755 (or b!4659241 b_lambda!174807)))

(declare-fun bs!1066952 () Bool)

(declare-fun d!1479284 () Bool)

(assert (= bs!1066952 (and d!1479284 b!4659241)))

(assert (=> bs!1066952 (= (dynLambda!21608 lambda!200077 (h!58080 (toList!5233 lt!1821412))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun m!5541801 () Bool)

(assert (=> bs!1066952 m!5541801))

(assert (=> b!4659695 d!1479284))

(declare-fun b_lambda!174809 () Bool)

(assert (= b_lambda!174749 (or d!1478856 b_lambda!174809)))

(declare-fun bs!1066953 () Bool)

(declare-fun d!1479286 () Bool)

(assert (= bs!1066953 (and d!1479286 d!1478856)))

(assert (=> bs!1066953 (= (dynLambda!21606 lambda!200082 (h!58081 lt!1821144)) (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821144))))))

(assert (=> bs!1066953 m!5541475))

(assert (=> b!4659674 d!1479286))

(declare-fun b_lambda!174811 () Bool)

(assert (= b_lambda!174779 (or b!4658974 b_lambda!174811)))

(assert (=> d!1479252 d!1478872))

(declare-fun b_lambda!174813 () Bool)

(assert (= b_lambda!174765 (or b!4658974 b_lambda!174813)))

(declare-fun bs!1066954 () Bool)

(declare-fun d!1479288 () Bool)

(assert (= bs!1066954 (and d!1479288 b!4658974)))

(assert (=> bs!1066954 (= (dynLambda!21606 lambda!199980 (h!58081 (t!359169 lt!1821143))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821143)))))))

(declare-fun m!5541803 () Bool)

(assert (=> bs!1066954 m!5541803))

(assert (=> b!4659735 d!1479288))

(declare-fun b_lambda!174815 () Bool)

(assert (= b_lambda!174757 (or b!4659241 b_lambda!174815)))

(declare-fun bs!1066955 () Bool)

(declare-fun d!1479290 () Bool)

(assert (= bs!1066955 (and d!1479290 b!4659241)))

(assert (=> bs!1066955 (= (dynLambda!21608 lambda!200077 (h!58080 (toList!5233 lt!1821141))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun m!5541805 () Bool)

(assert (=> bs!1066955 m!5541805))

(assert (=> b!4659703 d!1479290))

(declare-fun b_lambda!174817 () Bool)

(assert (= b_lambda!174781 (or b!4658974 b_lambda!174817)))

(declare-fun bs!1066956 () Bool)

(declare-fun d!1479292 () Bool)

(assert (= bs!1066956 (and d!1479292 b!4658974)))

(assert (=> bs!1066956 (= (dynLambda!21606 lambda!199980 (h!58081 lt!1821144)) (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821144))))))

(assert (=> bs!1066956 m!5541475))

(assert (=> b!4659807 d!1479292))

(declare-fun b_lambda!174819 () Bool)

(assert (= b_lambda!174763 (or b!4659241 b_lambda!174819)))

(declare-fun bs!1066957 () Bool)

(declare-fun d!1479294 () Bool)

(assert (= bs!1066957 (and d!1479294 b!4659241)))

(assert (=> bs!1066957 (= (dynLambda!21608 lambda!200077 (h!58080 (t!359168 oldBucket!40))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun m!5541807 () Bool)

(assert (=> bs!1066957 m!5541807))

(assert (=> b!4659733 d!1479294))

(declare-fun b_lambda!174821 () Bool)

(assert (= b_lambda!174759 (or b!4659241 b_lambda!174821)))

(declare-fun bs!1066958 () Bool)

(declare-fun d!1479296 () Bool)

(assert (= bs!1066958 (and d!1479296 b!4659241)))

(assert (=> bs!1066958 (= (dynLambda!21608 lambda!200076 (h!58080 (toList!5233 lt!1821141))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun m!5541809 () Bool)

(assert (=> bs!1066958 m!5541809))

(assert (=> b!4659728 d!1479296))

(check-sat (not bs!1066950) tp_is_empty!29901 (not bs!1066949) (not b!4659660) (not b!4659658) (not b!4659796) (not b!4659816) (not b!4659726) (not b!4659748) (not b!4659753) (not d!1479098) (not d!1479158) (not d!1479182) (not d!1479196) (not b!4659656) (not b!4659718) (not b!4659662) (not b!4659701) (not b!4659690) (not b!4659650) (not d!1479092) (not b_lambda!174791) (not b!4659714) (not b!4659596) (not b!4659758) (not b!4659810) (not d!1479140) (not b!4659669) (not b!4659729) (not bm!325557) (not b!4659717) (not d!1479186) (not bs!1066953) (not d!1479218) (not b!4659597) (not d!1479112) (not b!4659767) (not d!1479228) (not bs!1066951) (not b!4659743) (not b!4659780) (not bm!325558) (not b!4659702) (not bs!1066946) (not bm!325560) (not b!4659713) (not b!4659615) (not b!4659696) (not d!1479206) (not d!1479216) (not b!4659722) (not b!4659815) (not d!1479212) (not b_lambda!174811) (not d!1479110) (not d!1479132) (not b!4659744) (not b!4659814) (not d!1479258) (not b!4659727) (not d!1479166) tp_is_empty!29903 (not d!1479104) (not b!4659670) (not b!4659710) (not b!4659708) (not d!1479096) (not b_lambda!174815) (not b!4659558) (not d!1479184) (not b!4659742) (not b!4659613) (not bs!1066942) (not bm!325556) (not d!1479162) (not bs!1066952) (not b!4659705) (not b_lambda!174797) (not b_lambda!174817) (not b!4659806) (not b!4659665) (not b!4659673) (not b!4659773) (not b!4659749) (not b!4659789) (not b_lambda!174819) (not b!4659709) (not d!1479086) (not d!1479134) (not b!4659565) (not b_lambda!174807) (not b!4659677) (not d!1479242) (not b!4659777) (not d!1479168) (not d!1479116) (not b!4659732) (not d!1479244) (not b!4659666) (not b!4659793) (not b!4659785) (not b!4659693) (not b_lambda!174795) (not bm!325562) (not b_lambda!174803) (not b!4659679) (not bm!325561) (not b!4659808) (not b_lambda!174821) (not b!4659612) (not d!1479136) (not d!1479174) (not bs!1066948) (not b_lambda!174809) (not bs!1066955) (not d!1479230) (not b!4659783) (not d!1479192) (not b!4659715) (not bs!1066947) (not d!1479148) (not b!4659560) (not b!4659642) (not b!4659719) (not b!4659740) (not b!4659724) (not d!1479154) (not b!4659812) (not bs!1066943) (not b!4659764) (not b!4659659) (not b!4659800) (not b!4659678) (not d!1479238) (not d!1479090) (not b!4659723) (not d!1479240) (not b!4659641) (not bs!1066945) (not b!4659588) (not b!4659738) (not b!4659768) (not b!4659668) (not b_lambda!174813) (not b_lambda!174793) (not b!4659566) (not b!4659561) (not b_lambda!174789) (not b!4659762) (not b_lambda!174801) (not d!1479188) (not b!4659637) (not bs!1066958) (not d!1479180) (not b!4659564) (not b!4659772) (not b!4659734) (not b!4659774) (not bm!325555) (not b!4659721) (not b!4659784) (not b!4659639) (not b_lambda!174785) (not b!4659787) (not bm!325559) (not b!4659736) (not b!4659595) (not b_lambda!174805) (not bs!1066957) (not b!4659557) (not b!4659791) (not b!4659562) (not b!4659747) (not b!4659752) (not b!4659765) (not b!4659569) (not b!4659605) (not d!1479126) (not b!4659798) (not b!4659769) (not b!4659664) (not b!4659706) (not b!4659675) (not d!1479194) (not b_lambda!174751) (not b!4659611) (not d!1479170) (not bs!1066956) (not bs!1066944) (not b!4659704) (not d!1479088) (not bm!325554) (not b!4659712) (not b!4659640) (not d!1479150) (not b_lambda!174659) (not b!4659755) (not d!1479190) (not bs!1066954) (not b!4659581) (not b_lambda!174661) (not b!4659750) (not d!1479202) (not b_lambda!174777) (not b_lambda!174799) (not b_lambda!174787) (not b!4659775))
(check-sat)
(get-model)

(declare-fun d!1479358 () Bool)

(declare-fun res!1959990 () Bool)

(declare-fun e!2907662 () Bool)

(assert (=> d!1479358 (=> res!1959990 e!2907662)))

(assert (=> d!1479358 (= res!1959990 (not ((_ is Cons!51928) (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> d!1479358 (= (noDuplicateKeys!1652 (_2!29822 (h!58081 lt!1821144))) e!2907662)))

(declare-fun b!4659936 () Bool)

(declare-fun e!2907663 () Bool)

(assert (=> b!4659936 (= e!2907662 e!2907663)))

(declare-fun res!1959991 () Bool)

(assert (=> b!4659936 (=> (not res!1959991) (not e!2907663))))

(assert (=> b!4659936 (= res!1959991 (not (containsKey!2746 (t!359168 (_2!29822 (h!58081 lt!1821144))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun b!4659937 () Bool)

(assert (=> b!4659937 (= e!2907663 (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 lt!1821144)))))))

(assert (= (and d!1479358 (not res!1959990)) b!4659936))

(assert (= (and b!4659936 res!1959991) b!4659937))

(declare-fun m!5542029 () Bool)

(assert (=> b!4659936 m!5542029))

(declare-fun m!5542031 () Bool)

(assert (=> b!4659937 m!5542031))

(assert (=> bs!1066956 d!1479358))

(declare-fun d!1479362 () Bool)

(declare-fun res!1959992 () Bool)

(declare-fun e!2907664 () Bool)

(assert (=> d!1479362 (=> res!1959992 e!2907664)))

(assert (=> d!1479362 (= res!1959992 ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821141))))))

(assert (=> d!1479362 (= (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200077) e!2907664)))

(declare-fun b!4659938 () Bool)

(declare-fun e!2907665 () Bool)

(assert (=> b!4659938 (= e!2907664 e!2907665)))

(declare-fun res!1959993 () Bool)

(assert (=> b!4659938 (=> (not res!1959993) (not e!2907665))))

(assert (=> b!4659938 (= res!1959993 (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (toList!5233 lt!1821141)))))))

(declare-fun b!4659939 () Bool)

(assert (=> b!4659939 (= e!2907665 (forall!11050 (t!359168 (t!359168 (toList!5233 lt!1821141))) lambda!200077))))

(assert (= (and d!1479362 (not res!1959992)) b!4659938))

(assert (= (and b!4659938 res!1959993) b!4659939))

(declare-fun b_lambda!174835 () Bool)

(assert (=> (not b_lambda!174835) (not b!4659938)))

(declare-fun m!5542039 () Bool)

(assert (=> b!4659938 m!5542039))

(declare-fun m!5542041 () Bool)

(assert (=> b!4659939 m!5542041))

(assert (=> b!4659704 d!1479362))

(declare-fun d!1479370 () Bool)

(declare-fun res!1959997 () Bool)

(declare-fun e!2907672 () Bool)

(assert (=> d!1479370 (=> res!1959997 e!2907672)))

(assert (=> d!1479370 (= res!1959997 ((_ is Nil!51928) (toList!5233 lt!1821141)))))

(assert (=> d!1479370 (= (forall!11050 (toList!5233 lt!1821141) lambda!200166) e!2907672)))

(declare-fun b!4659949 () Bool)

(declare-fun e!2907673 () Bool)

(assert (=> b!4659949 (= e!2907672 e!2907673)))

(declare-fun res!1959998 () Bool)

(assert (=> b!4659949 (=> (not res!1959998) (not e!2907673))))

(assert (=> b!4659949 (= res!1959998 (dynLambda!21608 lambda!200166 (h!58080 (toList!5233 lt!1821141))))))

(declare-fun b!4659950 () Bool)

(assert (=> b!4659950 (= e!2907673 (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200166))))

(assert (= (and d!1479370 (not res!1959997)) b!4659949))

(assert (= (and b!4659949 res!1959998) b!4659950))

(declare-fun b_lambda!174837 () Bool)

(assert (=> (not b_lambda!174837) (not b!4659949)))

(declare-fun m!5542043 () Bool)

(assert (=> b!4659949 m!5542043))

(declare-fun m!5542045 () Bool)

(assert (=> b!4659950 m!5542045))

(assert (=> d!1479240 d!1479370))

(declare-fun bs!1067046 () Bool)

(declare-fun d!1479372 () Bool)

(assert (= bs!1067046 (and d!1479372 b!4659243)))

(declare-fun lambda!200180 () Int)

(assert (=> bs!1067046 (= lambda!200180 lambda!200075)))

(declare-fun bs!1067047 () Bool)

(assert (= bs!1067047 (and d!1479372 d!1478838)))

(assert (=> bs!1067047 (= (= lt!1821141 lt!1821400) (= lambda!200180 lambda!200078))))

(declare-fun bs!1067048 () Bool)

(assert (= bs!1067048 (and d!1479372 d!1479158)))

(assert (=> bs!1067048 (= (= lt!1821141 lt!1821404) (= lambda!200180 lambda!200155))))

(declare-fun bs!1067049 () Bool)

(assert (= bs!1067049 (and d!1479372 b!4659725)))

(assert (=> bs!1067049 (= (= lt!1821141 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200180 lambda!200156))))

(declare-fun bs!1067050 () Bool)

(assert (= bs!1067050 (and d!1479372 b!4659241)))

(assert (=> bs!1067050 (= (= lt!1821141 lt!1821404) (= lambda!200180 lambda!200077))))

(declare-fun bs!1067051 () Bool)

(assert (= bs!1067051 (and d!1479372 b!4659723)))

(assert (=> bs!1067051 (= (= lt!1821141 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200180 lambda!200157))))

(declare-fun bs!1067052 () Bool)

(assert (= bs!1067052 (and d!1479372 b!4659667)))

(assert (=> bs!1067052 (= (= lt!1821141 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200180 lambda!200146))))

(declare-fun bs!1067053 () Bool)

(assert (= bs!1067053 (and d!1479372 d!1478768)))

(assert (=> bs!1067053 (not (= lambda!200180 lambda!199986))))

(declare-fun bs!1067054 () Bool)

(assert (= bs!1067054 (and d!1479372 d!1478866)))

(assert (=> bs!1067054 (not (= lambda!200180 lambda!200086))))

(assert (=> bs!1067050 (= lambda!200180 lambda!200076)))

(assert (=> bs!1067051 (= (= lt!1821141 lt!1821726) (= lambda!200180 lambda!200158))))

(declare-fun bs!1067055 () Bool)

(assert (= bs!1067055 (and d!1479372 d!1479170)))

(assert (=> bs!1067055 (= (= lt!1821141 lt!1821722) (= lambda!200180 lambda!200159))))

(declare-fun bs!1067056 () Bool)

(assert (= bs!1067056 (and d!1479372 b!4659665)))

(assert (=> bs!1067056 (= (= lt!1821141 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200180 lambda!200147))))

(declare-fun bs!1067057 () Bool)

(assert (= bs!1067057 (and d!1479372 d!1479132)))

(assert (=> bs!1067057 (= (= lt!1821141 lt!1821663) (= lambda!200180 lambda!200149))))

(assert (=> bs!1067056 (= (= lt!1821141 lt!1821667) (= lambda!200180 lambda!200148))))

(declare-fun bs!1067058 () Bool)

(assert (= bs!1067058 (and d!1479372 d!1479240)))

(assert (=> bs!1067058 (= lambda!200180 lambda!200166)))

(assert (=> d!1479372 true))

(assert (=> d!1479372 (forall!11050 (toList!5233 lt!1821141) lambda!200180)))

(assert (=> d!1479372 true))

(declare-fun _$58!731 () Unit!118984)

(assert (=> d!1479372 (= (choose!32099 lt!1821141) _$58!731)))

(declare-fun bs!1067059 () Bool)

(assert (= bs!1067059 d!1479372))

(declare-fun m!5542099 () Bool)

(assert (=> bs!1067059 m!5542099))

(assert (=> d!1479240 d!1479372))

(declare-fun d!1479390 () Bool)

(declare-fun c!797660 () Bool)

(assert (=> d!1479390 (= c!797660 (and ((_ is Cons!51928) (toList!5233 lt!1821701)) (= (_1!29821 (h!58080 (toList!5233 lt!1821701))) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun e!2907691 () Option!11848)

(assert (=> d!1479390 (= (getValueByKey!1626 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))) e!2907691)))

(declare-fun b!4659971 () Bool)

(assert (=> b!4659971 (= e!2907691 (Some!11847 (_2!29821 (h!58080 (toList!5233 lt!1821701)))))))

(declare-fun b!4659973 () Bool)

(declare-fun e!2907692 () Option!11848)

(assert (=> b!4659973 (= e!2907692 (getValueByKey!1626 (t!359168 (toList!5233 lt!1821701)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4659974 () Bool)

(assert (=> b!4659974 (= e!2907692 None!11847)))

(declare-fun b!4659972 () Bool)

(assert (=> b!4659972 (= e!2907691 e!2907692)))

(declare-fun c!797661 () Bool)

(assert (=> b!4659972 (= c!797661 (and ((_ is Cons!51928) (toList!5233 lt!1821701)) (not (= (_1!29821 (h!58080 (toList!5233 lt!1821701))) (_1!29821 (h!58080 oldBucket!40))))))))

(assert (= (and d!1479390 c!797660) b!4659971))

(assert (= (and d!1479390 (not c!797660)) b!4659972))

(assert (= (and b!4659972 c!797661) b!4659973))

(assert (= (and b!4659972 (not c!797661)) b!4659974))

(declare-fun m!5542101 () Bool)

(assert (=> b!4659973 m!5542101))

(assert (=> b!4659701 d!1479390))

(declare-fun b!4659975 () Bool)

(declare-fun e!2907696 () Option!11844)

(declare-fun e!2907693 () Option!11844)

(assert (=> b!4659975 (= e!2907696 e!2907693)))

(declare-fun c!797663 () Bool)

(assert (=> b!4659975 (= c!797663 ((_ is Cons!51928) (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun lt!1821880 () Option!11844)

(declare-fun e!2907695 () Bool)

(declare-fun b!4659976 () Bool)

(assert (=> b!4659976 (= e!2907695 (contains!15088 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (get!17289 lt!1821880)))))

(declare-fun b!4659977 () Bool)

(declare-fun e!2907697 () Bool)

(assert (=> b!4659977 (= e!2907697 (not (containsKey!2746 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) key!4968)))))

(declare-fun b!4659978 () Bool)

(declare-fun res!1960015 () Bool)

(assert (=> b!4659978 (=> (not res!1960015) (not e!2907695))))

(assert (=> b!4659978 (= res!1960015 (= (_1!29821 (get!17289 lt!1821880)) key!4968))))

(declare-fun b!4659979 () Bool)

(assert (=> b!4659979 (= e!2907693 None!11843)))

(declare-fun b!4659980 () Bool)

(assert (=> b!4659980 (= e!2907696 (Some!11843 (h!58080 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))))

(declare-fun b!4659981 () Bool)

(assert (=> b!4659981 (= e!2907693 (getPair!380 (t!359168 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) key!4968))))

(declare-fun b!4659982 () Bool)

(declare-fun e!2907694 () Bool)

(assert (=> b!4659982 (= e!2907694 e!2907695)))

(declare-fun res!1960016 () Bool)

(assert (=> b!4659982 (=> (not res!1960016) (not e!2907695))))

(assert (=> b!4659982 (= res!1960016 (isDefined!9109 lt!1821880))))

(declare-fun d!1479392 () Bool)

(assert (=> d!1479392 e!2907694))

(declare-fun res!1960018 () Bool)

(assert (=> d!1479392 (=> res!1960018 e!2907694)))

(assert (=> d!1479392 (= res!1960018 e!2907697)))

(declare-fun res!1960017 () Bool)

(assert (=> d!1479392 (=> (not res!1960017) (not e!2907697))))

(assert (=> d!1479392 (= res!1960017 (isEmpty!29021 lt!1821880))))

(assert (=> d!1479392 (= lt!1821880 e!2907696)))

(declare-fun c!797662 () Bool)

(assert (=> d!1479392 (= c!797662 (and ((_ is Cons!51928) (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) (= (_1!29821 (h!58080 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))) key!4968)))))

(assert (=> d!1479392 (noDuplicateKeys!1652 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1479392 (= (getPair!380 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) key!4968) lt!1821880)))

(assert (= (and d!1479392 c!797662) b!4659980))

(assert (= (and d!1479392 (not c!797662)) b!4659975))

(assert (= (and b!4659975 c!797663) b!4659981))

(assert (= (and b!4659975 (not c!797663)) b!4659979))

(assert (= (and d!1479392 res!1960017) b!4659977))

(assert (= (and d!1479392 (not res!1960018)) b!4659982))

(assert (= (and b!4659982 res!1960016) b!4659978))

(assert (= (and b!4659978 res!1960015) b!4659976))

(declare-fun m!5542107 () Bool)

(assert (=> b!4659982 m!5542107))

(declare-fun m!5542109 () Bool)

(assert (=> b!4659978 m!5542109))

(declare-fun m!5542111 () Bool)

(assert (=> b!4659977 m!5542111))

(declare-fun m!5542113 () Bool)

(assert (=> b!4659981 m!5542113))

(declare-fun m!5542115 () Bool)

(assert (=> d!1479392 m!5542115))

(declare-fun m!5542117 () Bool)

(assert (=> d!1479392 m!5542117))

(assert (=> b!4659976 m!5542109))

(assert (=> b!4659976 m!5542109))

(declare-fun m!5542119 () Bool)

(assert (=> b!4659976 m!5542119))

(assert (=> b!4659747 d!1479392))

(declare-fun d!1479396 () Bool)

(declare-fun lt!1821882 () Bool)

(assert (=> d!1479396 (= lt!1821882 (select (content!9016 e!2907510) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907703 () Bool)

(assert (=> d!1479396 (= lt!1821882 e!2907703)))

(declare-fun res!1960024 () Bool)

(assert (=> d!1479396 (=> (not res!1960024) (not e!2907703))))

(assert (=> d!1479396 (= res!1960024 ((_ is Cons!51931) e!2907510))))

(assert (=> d!1479396 (= (contains!15089 e!2907510 (_1!29821 (h!58080 oldBucket!40))) lt!1821882)))

(declare-fun b!4659987 () Bool)

(declare-fun e!2907702 () Bool)

(assert (=> b!4659987 (= e!2907703 e!2907702)))

(declare-fun res!1960023 () Bool)

(assert (=> b!4659987 (=> res!1960023 e!2907702)))

(assert (=> b!4659987 (= res!1960023 (= (h!58085 e!2907510) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4659988 () Bool)

(assert (=> b!4659988 (= e!2907702 (contains!15089 (t!359171 e!2907510) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479396 res!1960024) b!4659987))

(assert (= (and b!4659987 (not res!1960023)) b!4659988))

(declare-fun m!5542127 () Bool)

(assert (=> d!1479396 m!5542127))

(declare-fun m!5542129 () Bool)

(assert (=> d!1479396 m!5542129))

(declare-fun m!5542131 () Bool)

(assert (=> b!4659988 m!5542131))

(assert (=> bm!325559 d!1479396))

(declare-fun d!1479400 () Bool)

(declare-fun lt!1821884 () Bool)

(assert (=> d!1479400 (= lt!1821884 (select (content!9016 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968))))

(declare-fun e!2907706 () Bool)

(assert (=> d!1479400 (= lt!1821884 e!2907706)))

(declare-fun res!1960029 () Bool)

(assert (=> d!1479400 (=> (not res!1960029) (not e!2907706))))

(assert (=> d!1479400 (= res!1960029 ((_ is Cons!51931) (keys!18406 (extractMap!1708 (toList!5234 lt!1821147)))))))

(assert (=> d!1479400 (= (contains!15089 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) lt!1821884)))

(declare-fun b!4659992 () Bool)

(declare-fun e!2907705 () Bool)

(assert (=> b!4659992 (= e!2907706 e!2907705)))

(declare-fun res!1960028 () Bool)

(assert (=> b!4659992 (=> res!1960028 e!2907705)))

(assert (=> b!4659992 (= res!1960028 (= (h!58085 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968))))

(declare-fun b!4659993 () Bool)

(assert (=> b!4659993 (= e!2907705 (contains!15089 (t!359171 (keys!18406 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968))))

(assert (= (and d!1479400 res!1960029) b!4659992))

(assert (= (and b!4659992 (not res!1960028)) b!4659993))

(assert (=> d!1479400 m!5541331))

(declare-fun m!5542133 () Bool)

(assert (=> d!1479400 m!5542133))

(declare-fun m!5542135 () Bool)

(assert (=> d!1479400 m!5542135))

(declare-fun m!5542137 () Bool)

(assert (=> b!4659993 m!5542137))

(assert (=> b!4659562 d!1479400))

(declare-fun bs!1067068 () Bool)

(declare-fun b!4659995 () Bool)

(assert (= bs!1067068 (and b!4659995 b!4659596)))

(declare-fun lambda!200182 () Int)

(assert (=> bs!1067068 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821138)) (= lambda!200182 lambda!200132))))

(declare-fun bs!1067070 () Bool)

(assert (= bs!1067070 (and b!4659995 b!4659641)))

(assert (=> bs!1067070 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200182 lambda!200142))))

(declare-fun bs!1067073 () Bool)

(assert (= bs!1067073 (and b!4659995 b!4659642)))

(assert (=> bs!1067073 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200182 lambda!200143))))

(declare-fun bs!1067075 () Bool)

(assert (= bs!1067075 (and b!4659995 b!4659639)))

(assert (=> bs!1067075 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821138)) (= lambda!200182 lambda!200144))))

(assert (=> b!4659995 true))

(declare-fun bs!1067076 () Bool)

(declare-fun b!4659996 () Bool)

(assert (= bs!1067076 (and b!4659996 b!4659597)))

(declare-fun lambda!200184 () Int)

(assert (=> bs!1067076 (= lambda!200184 lambda!200133)))

(declare-fun bs!1067077 () Bool)

(assert (= bs!1067077 (and b!4659996 b!4659640)))

(assert (=> bs!1067077 (= lambda!200184 lambda!200145)))

(declare-fun d!1479402 () Bool)

(declare-fun e!2907707 () Bool)

(assert (=> d!1479402 e!2907707))

(declare-fun res!1960030 () Bool)

(assert (=> d!1479402 (=> (not res!1960030) (not e!2907707))))

(declare-fun lt!1821885 () List!52055)

(assert (=> d!1479402 (= res!1960030 (noDuplicate!844 lt!1821885))))

(assert (=> d!1479402 (= lt!1821885 (getKeysList!757 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))

(assert (=> d!1479402 (= (keys!18406 (extractMap!1708 (toList!5234 lt!1821147))) lt!1821885)))

(declare-fun b!4659994 () Bool)

(declare-fun res!1960031 () Bool)

(assert (=> b!4659994 (=> (not res!1960031) (not e!2907707))))

(assert (=> b!4659994 (= res!1960031 (= (length!544 lt!1821885) (length!545 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))))

(declare-fun res!1960032 () Bool)

(assert (=> b!4659995 (=> (not res!1960032) (not e!2907707))))

(assert (=> b!4659995 (= res!1960032 (forall!11052 lt!1821885 lambda!200182))))

(assert (=> b!4659996 (= e!2907707 (= (content!9016 lt!1821885) (content!9016 (map!11483 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) lambda!200184))))))

(assert (= (and d!1479402 res!1960030) b!4659994))

(assert (= (and b!4659994 res!1960031) b!4659995))

(assert (= (and b!4659995 res!1960032) b!4659996))

(declare-fun m!5542153 () Bool)

(assert (=> d!1479402 m!5542153))

(assert (=> d!1479402 m!5541335))

(declare-fun m!5542155 () Bool)

(assert (=> b!4659994 m!5542155))

(declare-fun m!5542157 () Bool)

(assert (=> b!4659994 m!5542157))

(declare-fun m!5542159 () Bool)

(assert (=> b!4659995 m!5542159))

(declare-fun m!5542161 () Bool)

(assert (=> b!4659996 m!5542161))

(declare-fun m!5542163 () Bool)

(assert (=> b!4659996 m!5542163))

(assert (=> b!4659996 m!5542163))

(declare-fun m!5542165 () Bool)

(assert (=> b!4659996 m!5542165))

(assert (=> b!4659562 d!1479402))

(declare-fun d!1479406 () Bool)

(assert (=> d!1479406 (= (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40)))) (not (isEmpty!29024 (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))))

(declare-fun bs!1067078 () Bool)

(assert (= bs!1067078 d!1479406))

(assert (=> bs!1067078 m!5541581))

(declare-fun m!5542167 () Bool)

(assert (=> bs!1067078 m!5542167))

(assert (=> b!4659718 d!1479406))

(declare-fun d!1479408 () Bool)

(declare-fun c!797666 () Bool)

(assert (=> d!1479408 (= c!797666 (and ((_ is Cons!51928) (toList!5233 lt!1821412)) (= (_1!29821 (h!58080 (toList!5233 lt!1821412))) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun e!2907710 () Option!11848)

(assert (=> d!1479408 (= (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) e!2907710)))

(declare-fun b!4660001 () Bool)

(assert (=> b!4660001 (= e!2907710 (Some!11847 (_2!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun b!4660003 () Bool)

(declare-fun e!2907711 () Option!11848)

(assert (=> b!4660003 (= e!2907711 (getValueByKey!1626 (t!359168 (toList!5233 lt!1821412)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660004 () Bool)

(assert (=> b!4660004 (= e!2907711 None!11847)))

(declare-fun b!4660002 () Bool)

(assert (=> b!4660002 (= e!2907710 e!2907711)))

(declare-fun c!797667 () Bool)

(assert (=> b!4660002 (= c!797667 (and ((_ is Cons!51928) (toList!5233 lt!1821412)) (not (= (_1!29821 (h!58080 (toList!5233 lt!1821412))) (_1!29821 (h!58080 oldBucket!40))))))))

(assert (= (and d!1479408 c!797666) b!4660001))

(assert (= (and d!1479408 (not c!797666)) b!4660002))

(assert (= (and b!4660002 c!797667) b!4660003))

(assert (= (and b!4660002 (not c!797667)) b!4660004))

(declare-fun m!5542169 () Bool)

(assert (=> b!4660003 m!5542169))

(assert (=> b!4659718 d!1479408))

(assert (=> d!1479230 d!1479196))

(assert (=> d!1479230 d!1478852))

(declare-fun d!1479410 () Bool)

(assert (=> d!1479410 (= (invariantList!1306 (toList!5233 lt!1821626)) (noDuplicatedKeys!358 (toList!5233 lt!1821626)))))

(declare-fun bs!1067079 () Bool)

(assert (= bs!1067079 d!1479410))

(declare-fun m!5542171 () Bool)

(assert (=> bs!1067079 m!5542171))

(assert (=> d!1479088 d!1479410))

(declare-fun d!1479412 () Bool)

(declare-fun res!1960033 () Bool)

(declare-fun e!2907712 () Bool)

(assert (=> d!1479412 (=> res!1960033 e!2907712)))

(assert (=> d!1479412 (= res!1960033 ((_ is Nil!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479412 (= (forall!11048 (toList!5234 lt!1821147) lambda!200127) e!2907712)))

(declare-fun b!4660005 () Bool)

(declare-fun e!2907713 () Bool)

(assert (=> b!4660005 (= e!2907712 e!2907713)))

(declare-fun res!1960034 () Bool)

(assert (=> b!4660005 (=> (not res!1960034) (not e!2907713))))

(assert (=> b!4660005 (= res!1960034 (dynLambda!21606 lambda!200127 (h!58081 (toList!5234 lt!1821147))))))

(declare-fun b!4660006 () Bool)

(assert (=> b!4660006 (= e!2907713 (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200127))))

(assert (= (and d!1479412 (not res!1960033)) b!4660005))

(assert (= (and b!4660005 res!1960034) b!4660006))

(declare-fun b_lambda!174841 () Bool)

(assert (=> (not b_lambda!174841) (not b!4660005)))

(declare-fun m!5542173 () Bool)

(assert (=> b!4660005 m!5542173))

(declare-fun m!5542175 () Bool)

(assert (=> b!4660006 m!5542175))

(assert (=> d!1479088 d!1479412))

(declare-fun d!1479414 () Bool)

(declare-fun lt!1821886 () Bool)

(assert (=> d!1479414 (= lt!1821886 (select (content!9016 (t!359171 e!2907207)) key!4968))))

(declare-fun e!2907716 () Bool)

(assert (=> d!1479414 (= lt!1821886 e!2907716)))

(declare-fun res!1960036 () Bool)

(assert (=> d!1479414 (=> (not res!1960036) (not e!2907716))))

(assert (=> d!1479414 (= res!1960036 ((_ is Cons!51931) (t!359171 e!2907207)))))

(assert (=> d!1479414 (= (contains!15089 (t!359171 e!2907207) key!4968) lt!1821886)))

(declare-fun b!4660009 () Bool)

(declare-fun e!2907715 () Bool)

(assert (=> b!4660009 (= e!2907716 e!2907715)))

(declare-fun res!1960035 () Bool)

(assert (=> b!4660009 (=> res!1960035 e!2907715)))

(assert (=> b!4660009 (= res!1960035 (= (h!58085 (t!359171 e!2907207)) key!4968))))

(declare-fun b!4660010 () Bool)

(assert (=> b!4660010 (= e!2907715 (contains!15089 (t!359171 (t!359171 e!2907207)) key!4968))))

(assert (= (and d!1479414 res!1960036) b!4660009))

(assert (= (and b!4660009 (not res!1960035)) b!4660010))

(declare-fun m!5542181 () Bool)

(assert (=> d!1479414 m!5542181))

(declare-fun m!5542183 () Bool)

(assert (=> d!1479414 m!5542183))

(declare-fun m!5542185 () Bool)

(assert (=> b!4660010 m!5542185))

(assert (=> b!4659783 d!1479414))

(declare-fun d!1479418 () Bool)

(declare-fun res!1960037 () Bool)

(declare-fun e!2907718 () Bool)

(assert (=> d!1479418 (=> res!1960037 e!2907718)))

(assert (=> d!1479418 (= res!1960037 ((_ is Nil!51928) (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))

(assert (=> d!1479418 (= (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200158) e!2907718)))

(declare-fun b!4660013 () Bool)

(declare-fun e!2907719 () Bool)

(assert (=> b!4660013 (= e!2907718 e!2907719)))

(declare-fun res!1960038 () Bool)

(assert (=> b!4660013 (=> (not res!1960038) (not e!2907719))))

(assert (=> b!4660013 (= res!1960038 (dynLambda!21608 lambda!200158 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))))))

(declare-fun b!4660014 () Bool)

(assert (=> b!4660014 (= e!2907719 (forall!11050 (t!359168 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))) lambda!200158))))

(assert (= (and d!1479418 (not res!1960037)) b!4660013))

(assert (= (and b!4660013 res!1960038) b!4660014))

(declare-fun b_lambda!174843 () Bool)

(assert (=> (not b_lambda!174843) (not b!4660013)))

(declare-fun m!5542191 () Bool)

(assert (=> b!4660013 m!5542191))

(declare-fun m!5542193 () Bool)

(assert (=> b!4660014 m!5542193))

(assert (=> b!4659726 d!1479418))

(declare-fun d!1479422 () Bool)

(declare-fun res!1960039 () Bool)

(declare-fun e!2907720 () Bool)

(assert (=> d!1479422 (=> res!1960039 e!2907720)))

(assert (=> d!1479422 (= res!1960039 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1479422 (= (forall!11050 (t!359168 oldBucket!40) lambda!200078) e!2907720)))

(declare-fun b!4660015 () Bool)

(declare-fun e!2907721 () Bool)

(assert (=> b!4660015 (= e!2907720 e!2907721)))

(declare-fun res!1960040 () Bool)

(assert (=> b!4660015 (=> (not res!1960040) (not e!2907721))))

(assert (=> b!4660015 (= res!1960040 (dynLambda!21608 lambda!200078 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun b!4660016 () Bool)

(assert (=> b!4660016 (= e!2907721 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200078))))

(assert (= (and d!1479422 (not res!1960039)) b!4660015))

(assert (= (and b!4660015 res!1960040) b!4660016))

(declare-fun b_lambda!174845 () Bool)

(assert (=> (not b_lambda!174845) (not b!4660015)))

(declare-fun m!5542195 () Bool)

(assert (=> b!4660015 m!5542195))

(declare-fun m!5542197 () Bool)

(assert (=> b!4660016 m!5542197))

(assert (=> b!4659662 d!1479422))

(declare-fun d!1479424 () Bool)

(declare-fun res!1960041 () Bool)

(declare-fun e!2907722 () Bool)

(assert (=> d!1479424 (=> res!1960041 e!2907722)))

(assert (=> d!1479424 (= res!1960041 (and ((_ is Cons!51928) (t!359168 (_2!29822 (h!58081 lt!1821143)))) (= (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821143))))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821143)))))))))

(assert (=> d!1479424 (= (containsKey!2746 (t!359168 (_2!29822 (h!58081 lt!1821143))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821143))))) e!2907722)))

(declare-fun b!4660017 () Bool)

(declare-fun e!2907723 () Bool)

(assert (=> b!4660017 (= e!2907722 e!2907723)))

(declare-fun res!1960042 () Bool)

(assert (=> b!4660017 (=> (not res!1960042) (not e!2907723))))

(assert (=> b!4660017 (= res!1960042 ((_ is Cons!51928) (t!359168 (_2!29822 (h!58081 lt!1821143)))))))

(declare-fun b!4660018 () Bool)

(assert (=> b!4660018 (= e!2907723 (containsKey!2746 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821143)))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821143))))))))

(assert (= (and d!1479424 (not res!1960041)) b!4660017))

(assert (= (and b!4660017 res!1960042) b!4660018))

(declare-fun m!5542199 () Bool)

(assert (=> b!4660018 m!5542199))

(assert (=> b!4659784 d!1479424))

(declare-fun d!1479426 () Bool)

(declare-fun res!1960043 () Bool)

(declare-fun e!2907724 () Bool)

(assert (=> d!1479426 (=> res!1960043 e!2907724)))

(assert (=> d!1479426 (= res!1960043 (and ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (= (_1!29821 (h!58080 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) key!4968)))))

(assert (=> d!1479426 (= (containsKey!2746 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968) e!2907724)))

(declare-fun b!4660019 () Bool)

(declare-fun e!2907725 () Bool)

(assert (=> b!4660019 (= e!2907724 e!2907725)))

(declare-fun res!1960044 () Bool)

(assert (=> b!4660019 (=> (not res!1960044) (not e!2907725))))

(assert (=> b!4660019 (= res!1960044 ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(declare-fun b!4660020 () Bool)

(assert (=> b!4660020 (= e!2907725 (containsKey!2746 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) key!4968))))

(assert (= (and d!1479426 (not res!1960043)) b!4660019))

(assert (= (and b!4660019 res!1960044) b!4660020))

(assert (=> b!4660020 m!5542111))

(assert (=> b!4659743 d!1479426))

(declare-fun d!1479428 () Bool)

(assert (=> d!1479428 (= (isEmpty!29025 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136)) (not ((_ is Some!11846) (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136))))))

(assert (=> d!1479228 d!1479428))

(declare-fun d!1479430 () Bool)

(declare-fun res!1960045 () Bool)

(declare-fun e!2907728 () Bool)

(assert (=> d!1479430 (=> res!1960045 e!2907728)))

(assert (=> d!1479430 (= res!1960045 (and ((_ is Cons!51928) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) key!4968)))))

(assert (=> d!1479430 (= (containsKey!2750 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) e!2907728)))

(declare-fun b!4660025 () Bool)

(declare-fun e!2907729 () Bool)

(assert (=> b!4660025 (= e!2907728 e!2907729)))

(declare-fun res!1960046 () Bool)

(assert (=> b!4660025 (=> (not res!1960046) (not e!2907729))))

(assert (=> b!4660025 (= res!1960046 ((_ is Cons!51928) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))

(declare-fun b!4660026 () Bool)

(assert (=> b!4660026 (= e!2907729 (containsKey!2750 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968))))

(assert (= (and d!1479430 (not res!1960045)) b!4660025))

(assert (= (and b!4660025 res!1960046) b!4660026))

(declare-fun m!5542201 () Bool)

(assert (=> b!4660026 m!5542201))

(assert (=> b!4659558 d!1479430))

(declare-fun d!1479432 () Bool)

(assert (=> d!1479432 (containsKey!2750 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968)))

(declare-fun lt!1821889 () Unit!118984)

(assert (=> d!1479432 (= lt!1821889 (choose!32090 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> d!1479432 (invariantList!1306 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))

(assert (=> d!1479432 (= (lemmaInGetKeysListThenContainsKey!756 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) lt!1821889)))

(declare-fun bs!1067080 () Bool)

(assert (= bs!1067080 d!1479432))

(assert (=> bs!1067080 m!5541327))

(declare-fun m!5542203 () Bool)

(assert (=> bs!1067080 m!5542203))

(declare-fun m!5542205 () Bool)

(assert (=> bs!1067080 m!5542205))

(assert (=> b!4659558 d!1479432))

(declare-fun d!1479434 () Bool)

(assert (=> d!1479434 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1821890 () Unit!118984)

(assert (=> d!1479434 (= lt!1821890 (choose!32095 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479434 (invariantList!1306 (toList!5233 lt!1821404))))

(assert (=> d!1479434 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) lt!1821890)))

(declare-fun bs!1067081 () Bool)

(assert (= bs!1067081 d!1479434))

(assert (=> bs!1067081 m!5541561))

(assert (=> bs!1067081 m!5541561))

(assert (=> bs!1067081 m!5541563))

(declare-fun m!5542207 () Bool)

(assert (=> bs!1067081 m!5542207))

(declare-fun m!5542209 () Bool)

(assert (=> bs!1067081 m!5542209))

(assert (=> b!4659712 d!1479434))

(declare-fun d!1479436 () Bool)

(assert (=> d!1479436 (= (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40)))) (not (isEmpty!29024 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))))

(declare-fun bs!1067082 () Bool)

(assert (= bs!1067082 d!1479436))

(assert (=> bs!1067082 m!5541561))

(declare-fun m!5542211 () Bool)

(assert (=> bs!1067082 m!5542211))

(assert (=> b!4659712 d!1479436))

(declare-fun d!1479438 () Bool)

(declare-fun c!797673 () Bool)

(assert (=> d!1479438 (= c!797673 (and ((_ is Cons!51928) (toList!5233 lt!1821404)) (= (_1!29821 (h!58080 (toList!5233 lt!1821404))) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun e!2907731 () Option!11848)

(assert (=> d!1479438 (= (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) e!2907731)))

(declare-fun b!4660029 () Bool)

(assert (=> b!4660029 (= e!2907731 (Some!11847 (_2!29821 (h!58080 (toList!5233 lt!1821404)))))))

(declare-fun b!4660031 () Bool)

(declare-fun e!2907732 () Option!11848)

(assert (=> b!4660031 (= e!2907732 (getValueByKey!1626 (t!359168 (toList!5233 lt!1821404)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660032 () Bool)

(assert (=> b!4660032 (= e!2907732 None!11847)))

(declare-fun b!4660030 () Bool)

(assert (=> b!4660030 (= e!2907731 e!2907732)))

(declare-fun c!797674 () Bool)

(assert (=> b!4660030 (= c!797674 (and ((_ is Cons!51928) (toList!5233 lt!1821404)) (not (= (_1!29821 (h!58080 (toList!5233 lt!1821404))) (_1!29821 (h!58080 oldBucket!40))))))))

(assert (= (and d!1479438 c!797673) b!4660029))

(assert (= (and d!1479438 (not c!797673)) b!4660030))

(assert (= (and b!4660030 c!797674) b!4660031))

(assert (= (and b!4660030 (not c!797674)) b!4660032))

(declare-fun m!5542221 () Bool)

(assert (=> b!4660031 m!5542221))

(assert (=> b!4659712 d!1479438))

(declare-fun d!1479440 () Bool)

(assert (=> d!1479440 (contains!15089 (getKeysList!757 (toList!5233 lt!1821404)) (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1821892 () Unit!118984)

(assert (=> d!1479440 (= lt!1821892 (choose!32096 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479440 (invariantList!1306 (toList!5233 lt!1821404))))

(assert (=> d!1479440 (= (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) lt!1821892)))

(declare-fun bs!1067083 () Bool)

(assert (= bs!1067083 d!1479440))

(assert (=> bs!1067083 m!5541557))

(assert (=> bs!1067083 m!5541557))

(declare-fun m!5542225 () Bool)

(assert (=> bs!1067083 m!5542225))

(declare-fun m!5542227 () Bool)

(assert (=> bs!1067083 m!5542227))

(assert (=> bs!1067083 m!5542209))

(assert (=> b!4659712 d!1479440))

(declare-fun b!4660042 () Bool)

(declare-fun e!2907739 () Option!11847)

(assert (=> b!4660042 (= e!2907739 (Some!11846 (_2!29822 (h!58081 (t!359169 (toList!5234 lt!1821147))))))))

(declare-fun b!4660045 () Bool)

(declare-fun e!2907740 () Option!11847)

(assert (=> b!4660045 (= e!2907740 None!11846)))

(declare-fun b!4660044 () Bool)

(assert (=> b!4660044 (= e!2907740 (getValueByKey!1625 (t!359169 (t!359169 (toList!5234 lt!1821147))) lt!1821248))))

(declare-fun b!4660043 () Bool)

(assert (=> b!4660043 (= e!2907739 e!2907740)))

(declare-fun c!797679 () Bool)

(assert (=> b!4660043 (= c!797679 (and ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (not (= (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821248))))))

(declare-fun d!1479444 () Bool)

(declare-fun c!797678 () Bool)

(assert (=> d!1479444 (= c!797678 (and ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (= (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821248)))))

(assert (=> d!1479444 (= (getValueByKey!1625 (t!359169 (toList!5234 lt!1821147)) lt!1821248) e!2907739)))

(assert (= (and d!1479444 c!797678) b!4660042))

(assert (= (and d!1479444 (not c!797678)) b!4660043))

(assert (= (and b!4660043 c!797679) b!4660044))

(assert (= (and b!4660043 (not c!797679)) b!4660045))

(declare-fun m!5542229 () Bool)

(assert (=> b!4660044 m!5542229))

(assert (=> b!4659581 d!1479444))

(declare-fun d!1479446 () Bool)

(assert (=> d!1479446 (= (invariantList!1306 (toList!5233 lt!1821663)) (noDuplicatedKeys!358 (toList!5233 lt!1821663)))))

(declare-fun bs!1067084 () Bool)

(assert (= bs!1067084 d!1479446))

(declare-fun m!5542231 () Bool)

(assert (=> bs!1067084 m!5542231))

(assert (=> b!4659666 d!1479446))

(declare-fun d!1479448 () Bool)

(assert (=> d!1479448 (dynLambda!21606 lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1479448 true))

(declare-fun _$7!2218 () Unit!118984)

(assert (=> d!1479448 (= (choose!32080 (toList!5234 lt!1821147) lambda!200029 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) _$7!2218)))

(declare-fun b_lambda!174849 () Bool)

(assert (=> (not b_lambda!174849) (not d!1479448)))

(declare-fun bs!1067085 () Bool)

(assert (= bs!1067085 d!1479448))

(assert (=> bs!1067085 m!5541663))

(assert (=> d!1479188 d!1479448))

(assert (=> d!1479188 d!1479236))

(declare-fun d!1479450 () Bool)

(declare-fun res!1960050 () Bool)

(declare-fun e!2907741 () Bool)

(assert (=> d!1479450 (=> res!1960050 e!2907741)))

(assert (=> d!1479450 (= res!1960050 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821248)))))

(assert (=> d!1479450 (= (containsKey!2749 (toList!5234 lt!1821147) lt!1821248) e!2907741)))

(declare-fun b!4660046 () Bool)

(declare-fun e!2907742 () Bool)

(assert (=> b!4660046 (= e!2907741 e!2907742)))

(declare-fun res!1960051 () Bool)

(assert (=> b!4660046 (=> (not res!1960051) (not e!2907742))))

(assert (=> b!4660046 (= res!1960051 (and (or (not ((_ is Cons!51929) (toList!5234 lt!1821147))) (bvsle (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821248)) ((_ is Cons!51929) (toList!5234 lt!1821147)) (bvslt (_1!29822 (h!58081 (toList!5234 lt!1821147))) lt!1821248)))))

(declare-fun b!4660047 () Bool)

(assert (=> b!4660047 (= e!2907742 (containsKey!2749 (t!359169 (toList!5234 lt!1821147)) lt!1821248))))

(assert (= (and d!1479450 (not res!1960050)) b!4660046))

(assert (= (and b!4660046 res!1960051) b!4660047))

(declare-fun m!5542249 () Bool)

(assert (=> b!4660047 m!5542249))

(assert (=> d!1479192 d!1479450))

(declare-fun d!1479454 () Bool)

(declare-fun res!1960054 () Bool)

(declare-fun e!2907745 () Bool)

(assert (=> d!1479454 (=> res!1960054 e!2907745)))

(assert (=> d!1479454 (= res!1960054 (and ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224))) (= (_1!29821 (h!58080 (t!359168 (t!359168 newBucket!224)))) (_1!29821 (h!58080 newBucket!224)))))))

(assert (=> d!1479454 (= (containsKey!2746 (t!359168 (t!359168 newBucket!224)) (_1!29821 (h!58080 newBucket!224))) e!2907745)))

(declare-fun b!4660050 () Bool)

(declare-fun e!2907746 () Bool)

(assert (=> b!4660050 (= e!2907745 e!2907746)))

(declare-fun res!1960055 () Bool)

(assert (=> b!4660050 (=> (not res!1960055) (not e!2907746))))

(assert (=> b!4660050 (= res!1960055 ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224))))))

(declare-fun b!4660051 () Bool)

(assert (=> b!4660051 (= e!2907746 (containsKey!2746 (t!359168 (t!359168 (t!359168 newBucket!224))) (_1!29821 (h!58080 newBucket!224))))))

(assert (= (and d!1479454 (not res!1960054)) b!4660050))

(assert (= (and b!4660050 res!1960055) b!4660051))

(declare-fun m!5542251 () Bool)

(assert (=> b!4660051 m!5542251))

(assert (=> b!4659814 d!1479454))

(declare-fun d!1479456 () Bool)

(declare-fun res!1960056 () Bool)

(declare-fun e!2907747 () Bool)

(assert (=> d!1479456 (=> res!1960056 e!2907747)))

(assert (=> d!1479456 (= res!1960056 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1479456 (= (containsKey!2749 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)) e!2907747)))

(declare-fun b!4660052 () Bool)

(declare-fun e!2907748 () Bool)

(assert (=> b!4660052 (= e!2907747 e!2907748)))

(declare-fun res!1960057 () Bool)

(assert (=> b!4660052 (=> (not res!1960057) (not e!2907748))))

(assert (=> b!4660052 (= res!1960057 (and (or (not ((_ is Cons!51929) (toList!5234 lt!1821147))) (bvsle (_1!29822 (h!58081 (toList!5234 lt!1821147))) (hash!3797 hashF!1389 key!4968))) ((_ is Cons!51929) (toList!5234 lt!1821147)) (bvslt (_1!29822 (h!58081 (toList!5234 lt!1821147))) (hash!3797 hashF!1389 key!4968))))))

(declare-fun b!4660053 () Bool)

(assert (=> b!4660053 (= e!2907748 (containsKey!2749 (t!359169 (toList!5234 lt!1821147)) (hash!3797 hashF!1389 key!4968)))))

(assert (= (and d!1479456 (not res!1960056)) b!4660052))

(assert (= (and b!4660052 res!1960057) b!4660053))

(assert (=> b!4660053 m!5540453))

(declare-fun m!5542257 () Bool)

(assert (=> b!4660053 m!5542257))

(assert (=> d!1479196 d!1479456))

(declare-fun d!1479460 () Bool)

(assert (=> d!1479460 (= (invariantList!1306 (toList!5233 lt!1821722)) (noDuplicatedKeys!358 (toList!5233 lt!1821722)))))

(declare-fun bs!1067086 () Bool)

(assert (= bs!1067086 d!1479460))

(declare-fun m!5542261 () Bool)

(assert (=> bs!1067086 m!5542261))

(assert (=> b!4659724 d!1479460))

(declare-fun d!1479464 () Bool)

(declare-fun res!1960060 () Bool)

(declare-fun e!2907751 () Bool)

(assert (=> d!1479464 (=> res!1960060 e!2907751)))

(assert (=> d!1479464 (= res!1960060 ((_ is Nil!51928) (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))

(assert (=> d!1479464 (= (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200148) e!2907751)))

(declare-fun b!4660056 () Bool)

(declare-fun e!2907752 () Bool)

(assert (=> b!4660056 (= e!2907751 e!2907752)))

(declare-fun res!1960061 () Bool)

(assert (=> b!4660056 (=> (not res!1960061) (not e!2907752))))

(assert (=> b!4660056 (= res!1960061 (dynLambda!21608 lambda!200148 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))))))

(declare-fun b!4660057 () Bool)

(assert (=> b!4660057 (= e!2907752 (forall!11050 (t!359168 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))) lambda!200148))))

(assert (= (and d!1479464 (not res!1960060)) b!4660056))

(assert (= (and b!4660056 res!1960061) b!4660057))

(declare-fun b_lambda!174851 () Bool)

(assert (=> (not b_lambda!174851) (not b!4660056)))

(declare-fun m!5542267 () Bool)

(assert (=> b!4660056 m!5542267))

(declare-fun m!5542269 () Bool)

(assert (=> b!4660057 m!5542269))

(assert (=> b!4659668 d!1479464))

(declare-fun d!1479468 () Bool)

(declare-fun lt!1821903 () Bool)

(assert (=> d!1479468 (= lt!1821903 (select (content!9013 (toList!5234 lt!1821147)) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun e!2907756 () Bool)

(assert (=> d!1479468 (= lt!1821903 e!2907756)))

(declare-fun res!1960065 () Bool)

(assert (=> d!1479468 (=> (not res!1960065) (not e!2907756))))

(assert (=> d!1479468 (= res!1960065 ((_ is Cons!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479468 (= (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) lt!1821903)))

(declare-fun b!4660060 () Bool)

(declare-fun e!2907755 () Bool)

(assert (=> b!4660060 (= e!2907756 e!2907755)))

(declare-fun res!1960064 () Bool)

(assert (=> b!4660060 (=> res!1960064 e!2907755)))

(assert (=> b!4660060 (= res!1960064 (= (h!58081 (toList!5234 lt!1821147)) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun b!4660061 () Bool)

(assert (=> b!4660061 (= e!2907755 (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(assert (= (and d!1479468 res!1960065) b!4660060))

(assert (= (and b!4660060 (not res!1960064)) b!4660061))

(assert (=> d!1479468 m!5541355))

(declare-fun m!5542275 () Bool)

(assert (=> d!1479468 m!5542275))

(declare-fun m!5542277 () Bool)

(assert (=> b!4660061 m!5542277))

(assert (=> b!4659749 d!1479468))

(declare-fun d!1479474 () Bool)

(declare-fun res!1960068 () Bool)

(declare-fun e!2907760 () Bool)

(assert (=> d!1479474 (=> res!1960068 e!2907760)))

(assert (=> d!1479474 (= res!1960068 ((_ is Nil!51929) (t!359169 (toList!5234 lt!1821147))))))

(assert (=> d!1479474 (= (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200035) e!2907760)))

(declare-fun b!4660066 () Bool)

(declare-fun e!2907761 () Bool)

(assert (=> b!4660066 (= e!2907760 e!2907761)))

(declare-fun res!1960069 () Bool)

(assert (=> b!4660066 (=> (not res!1960069) (not e!2907761))))

(assert (=> b!4660066 (= res!1960069 (dynLambda!21606 lambda!200035 (h!58081 (t!359169 (toList!5234 lt!1821147)))))))

(declare-fun b!4660067 () Bool)

(assert (=> b!4660067 (= e!2907761 (forall!11048 (t!359169 (t!359169 (toList!5234 lt!1821147))) lambda!200035))))

(assert (= (and d!1479474 (not res!1960068)) b!4660066))

(assert (= (and b!4660066 res!1960069) b!4660067))

(declare-fun b_lambda!174853 () Bool)

(assert (=> (not b_lambda!174853) (not b!4660066)))

(declare-fun m!5542281 () Bool)

(assert (=> b!4660066 m!5542281))

(declare-fun m!5542283 () Bool)

(assert (=> b!4660067 m!5542283))

(assert (=> b!4659789 d!1479474))

(declare-fun b!4660070 () Bool)

(declare-fun e!2907769 () List!52055)

(assert (=> b!4660070 (= e!2907769 (keys!18406 lt!1821400))))

(declare-fun bm!325581 () Bool)

(declare-fun call!325586 () Bool)

(assert (=> bm!325581 (= call!325586 (contains!15089 e!2907769 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun c!797681 () Bool)

(declare-fun c!797683 () Bool)

(assert (=> bm!325581 (= c!797681 c!797683)))

(declare-fun b!4660071 () Bool)

(assert (=> b!4660071 false))

(declare-fun lt!1821907 () Unit!118984)

(declare-fun lt!1821908 () Unit!118984)

(assert (=> b!4660071 (= lt!1821907 lt!1821908)))

(assert (=> b!4660071 (containsKey!2750 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40)))))

(assert (=> b!4660071 (= lt!1821908 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907768 () Unit!118984)

(declare-fun Unit!119098 () Unit!118984)

(assert (=> b!4660071 (= e!2907768 Unit!119098)))

(declare-fun d!1479478 () Bool)

(declare-fun e!2907767 () Bool)

(assert (=> d!1479478 e!2907767))

(declare-fun res!1960072 () Bool)

(assert (=> d!1479478 (=> res!1960072 e!2907767)))

(declare-fun e!2907765 () Bool)

(assert (=> d!1479478 (= res!1960072 e!2907765)))

(declare-fun res!1960073 () Bool)

(assert (=> d!1479478 (=> (not res!1960073) (not e!2907765))))

(declare-fun lt!1821905 () Bool)

(assert (=> d!1479478 (= res!1960073 (not lt!1821905))))

(declare-fun lt!1821909 () Bool)

(assert (=> d!1479478 (= lt!1821905 lt!1821909)))

(declare-fun lt!1821910 () Unit!118984)

(declare-fun e!2907764 () Unit!118984)

(assert (=> d!1479478 (= lt!1821910 e!2907764)))

(assert (=> d!1479478 (= c!797683 lt!1821909)))

(assert (=> d!1479478 (= lt!1821909 (containsKey!2750 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479478 (= (contains!15083 lt!1821400 (_1!29821 (h!58080 oldBucket!40))) lt!1821905)))

(declare-fun b!4660072 () Bool)

(declare-fun Unit!119100 () Unit!118984)

(assert (=> b!4660072 (= e!2907768 Unit!119100)))

(declare-fun b!4660073 () Bool)

(assert (=> b!4660073 (= e!2907769 (getKeysList!757 (toList!5233 lt!1821400)))))

(declare-fun b!4660074 () Bool)

(declare-fun e!2907766 () Bool)

(assert (=> b!4660074 (= e!2907767 e!2907766)))

(declare-fun res!1960074 () Bool)

(assert (=> b!4660074 (=> (not res!1960074) (not e!2907766))))

(assert (=> b!4660074 (= res!1960074 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4660075 () Bool)

(assert (=> b!4660075 (= e!2907766 (contains!15089 (keys!18406 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660076 () Bool)

(assert (=> b!4660076 (= e!2907764 e!2907768)))

(declare-fun c!797682 () Bool)

(assert (=> b!4660076 (= c!797682 call!325586)))

(declare-fun b!4660077 () Bool)

(declare-fun lt!1821904 () Unit!118984)

(assert (=> b!4660077 (= e!2907764 lt!1821904)))

(declare-fun lt!1821906 () Unit!118984)

(assert (=> b!4660077 (= lt!1821906 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4660077 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1821911 () Unit!118984)

(assert (=> b!4660077 (= lt!1821911 lt!1821906)))

(assert (=> b!4660077 (= lt!1821904 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821400) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4660077 call!325586))

(declare-fun b!4660078 () Bool)

(assert (=> b!4660078 (= e!2907765 (not (contains!15089 (keys!18406 lt!1821400) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1479478 c!797683) b!4660077))

(assert (= (and d!1479478 (not c!797683)) b!4660076))

(assert (= (and b!4660076 c!797682) b!4660071))

(assert (= (and b!4660076 (not c!797682)) b!4660072))

(assert (= (or b!4660077 b!4660076) bm!325581))

(assert (= (and bm!325581 c!797681) b!4660073))

(assert (= (and bm!325581 (not c!797681)) b!4660070))

(assert (= (and d!1479478 res!1960073) b!4660078))

(assert (= (and d!1479478 (not res!1960072)) b!4660074))

(assert (= (and b!4660074 res!1960074) b!4660075))

(declare-fun m!5542295 () Bool)

(assert (=> d!1479478 m!5542295))

(assert (=> b!4660071 m!5542295))

(declare-fun m!5542297 () Bool)

(assert (=> b!4660071 m!5542297))

(declare-fun m!5542299 () Bool)

(assert (=> b!4660078 m!5542299))

(assert (=> b!4660078 m!5542299))

(declare-fun m!5542301 () Bool)

(assert (=> b!4660078 m!5542301))

(declare-fun m!5542303 () Bool)

(assert (=> b!4660073 m!5542303))

(assert (=> b!4660070 m!5542299))

(declare-fun m!5542305 () Bool)

(assert (=> b!4660077 m!5542305))

(declare-fun m!5542307 () Bool)

(assert (=> b!4660077 m!5542307))

(assert (=> b!4660077 m!5542307))

(declare-fun m!5542311 () Bool)

(assert (=> b!4660077 m!5542311))

(declare-fun m!5542313 () Bool)

(assert (=> b!4660077 m!5542313))

(assert (=> b!4660075 m!5542299))

(assert (=> b!4660075 m!5542299))

(assert (=> b!4660075 m!5542301))

(assert (=> b!4660074 m!5542307))

(assert (=> b!4660074 m!5542307))

(assert (=> b!4660074 m!5542311))

(declare-fun m!5542319 () Bool)

(assert (=> bm!325581 m!5542319))

(assert (=> bs!1066946 d!1479478))

(declare-fun d!1479492 () Bool)

(assert (=> d!1479492 (= (isEmpty!29021 lt!1821758) (not ((_ is Some!11843) lt!1821758)))))

(assert (=> d!1479206 d!1479492))

(declare-fun d!1479494 () Bool)

(declare-fun res!1960083 () Bool)

(declare-fun e!2907778 () Bool)

(assert (=> d!1479494 (=> res!1960083 e!2907778)))

(assert (=> d!1479494 (= res!1960083 (not ((_ is Cons!51928) (t!359168 lt!1821145))))))

(assert (=> d!1479494 (= (noDuplicateKeys!1652 (t!359168 lt!1821145)) e!2907778)))

(declare-fun b!4660087 () Bool)

(declare-fun e!2907779 () Bool)

(assert (=> b!4660087 (= e!2907778 e!2907779)))

(declare-fun res!1960084 () Bool)

(assert (=> b!4660087 (=> (not res!1960084) (not e!2907779))))

(assert (=> b!4660087 (= res!1960084 (not (containsKey!2746 (t!359168 (t!359168 lt!1821145)) (_1!29821 (h!58080 (t!359168 lt!1821145))))))))

(declare-fun b!4660088 () Bool)

(assert (=> b!4660088 (= e!2907779 (noDuplicateKeys!1652 (t!359168 (t!359168 lt!1821145))))))

(assert (= (and d!1479494 (not res!1960083)) b!4660087))

(assert (= (and b!4660087 res!1960084) b!4660088))

(declare-fun m!5542323 () Bool)

(assert (=> b!4660087 m!5542323))

(declare-fun m!5542327 () Bool)

(assert (=> b!4660088 m!5542327))

(assert (=> d!1479206 d!1479494))

(declare-fun d!1479500 () Bool)

(declare-fun lt!1821913 () Bool)

(assert (=> d!1479500 (= lt!1821913 (select (content!9013 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821248 lt!1821245)))))

(declare-fun e!2907783 () Bool)

(assert (=> d!1479500 (= lt!1821913 e!2907783)))

(declare-fun res!1960086 () Bool)

(assert (=> d!1479500 (=> (not res!1960086) (not e!2907783))))

(assert (=> d!1479500 (= res!1960086 ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))))))

(assert (=> d!1479500 (= (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821248 lt!1821245)) lt!1821913)))

(declare-fun b!4660093 () Bool)

(declare-fun e!2907782 () Bool)

(assert (=> b!4660093 (= e!2907783 e!2907782)))

(declare-fun res!1960085 () Bool)

(assert (=> b!4660093 (=> res!1960085 e!2907782)))

(assert (=> b!4660093 (= res!1960085 (= (h!58081 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821248 lt!1821245)))))

(declare-fun b!4660094 () Bool)

(assert (=> b!4660094 (= e!2907782 (contains!15084 (t!359169 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821248 lt!1821245)))))

(assert (= (and d!1479500 res!1960086) b!4660093))

(assert (= (and b!4660093 (not res!1960085)) b!4660094))

(declare-fun m!5542329 () Bool)

(assert (=> d!1479500 m!5542329))

(declare-fun m!5542333 () Bool)

(assert (=> d!1479500 m!5542333))

(declare-fun m!5542335 () Bool)

(assert (=> b!4660094 m!5542335))

(assert (=> b!4659740 d!1479500))

(declare-fun lt!1821914 () Bool)

(declare-fun d!1479504 () Bool)

(assert (=> d!1479504 (= lt!1821914 (select (content!9013 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821136 lt!1821145)))))

(declare-fun e!2907787 () Bool)

(assert (=> d!1479504 (= lt!1821914 e!2907787)))

(declare-fun res!1960090 () Bool)

(assert (=> d!1479504 (=> (not res!1960090) (not e!2907787))))

(assert (=> d!1479504 (= res!1960090 ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))))))

(assert (=> d!1479504 (= (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821136 lt!1821145)) lt!1821914)))

(declare-fun b!4660097 () Bool)

(declare-fun e!2907786 () Bool)

(assert (=> b!4660097 (= e!2907787 e!2907786)))

(declare-fun res!1960089 () Bool)

(assert (=> b!4660097 (=> res!1960089 e!2907786)))

(assert (=> b!4660097 (= res!1960089 (= (h!58081 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821136 lt!1821145)))))

(declare-fun b!4660098 () Bool)

(assert (=> b!4660098 (= e!2907786 (contains!15084 (t!359169 (t!359169 (toList!5234 lt!1821147))) (tuple2!53057 lt!1821136 lt!1821145)))))

(assert (= (and d!1479504 res!1960090) b!4660097))

(assert (= (and b!4660097 (not res!1960089)) b!4660098))

(assert (=> d!1479504 m!5542329))

(declare-fun m!5542341 () Bool)

(assert (=> d!1479504 m!5542341))

(declare-fun m!5542343 () Bool)

(assert (=> b!4660098 m!5542343))

(assert (=> b!4659569 d!1479504))

(declare-fun d!1479508 () Bool)

(declare-fun res!1960093 () Bool)

(declare-fun e!2907790 () Bool)

(assert (=> d!1479508 (=> res!1960093 e!2907790)))

(assert (=> d!1479508 (= res!1960093 (not ((_ is Cons!51928) (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(assert (=> d!1479508 (= (noDuplicateKeys!1652 (_2!29822 (h!58081 (toList!5234 lt!1821147)))) e!2907790)))

(declare-fun b!4660101 () Bool)

(declare-fun e!2907791 () Bool)

(assert (=> b!4660101 (= e!2907790 e!2907791)))

(declare-fun res!1960094 () Bool)

(assert (=> b!4660101 (=> (not res!1960094) (not e!2907791))))

(assert (=> b!4660101 (= res!1960094 (not (containsKey!2746 (t!359168 (_2!29822 (h!58081 (toList!5234 lt!1821147)))) (_1!29821 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))))

(declare-fun b!4660102 () Bool)

(assert (=> b!4660102 (= e!2907791 (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(assert (= (and d!1479508 (not res!1960093)) b!4660101))

(assert (= (and b!4660101 res!1960094) b!4660102))

(declare-fun m!5542349 () Bool)

(assert (=> b!4660101 m!5542349))

(declare-fun m!5542353 () Bool)

(assert (=> b!4660102 m!5542353))

(assert (=> bs!1066945 d!1479508))

(declare-fun b!4660107 () Bool)

(declare-fun e!2907799 () List!52055)

(assert (=> b!4660107 (= e!2907799 (keys!18406 lt!1821675))))

(declare-fun bm!325582 () Bool)

(declare-fun call!325587 () Bool)

(assert (=> bm!325582 (= call!325587 (contains!15089 e!2907799 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun c!797688 () Bool)

(declare-fun c!797690 () Bool)

(assert (=> bm!325582 (= c!797688 c!797690)))

(declare-fun b!4660108 () Bool)

(assert (=> b!4660108 false))

(declare-fun lt!1821920 () Unit!118984)

(declare-fun lt!1821921 () Unit!118984)

(assert (=> b!4660108 (= lt!1821920 lt!1821921)))

(assert (=> b!4660108 (containsKey!2750 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> b!4660108 (= lt!1821921 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun e!2907798 () Unit!118984)

(declare-fun Unit!119101 () Unit!118984)

(assert (=> b!4660108 (= e!2907798 Unit!119101)))

(declare-fun d!1479512 () Bool)

(declare-fun e!2907797 () Bool)

(assert (=> d!1479512 e!2907797))

(declare-fun res!1960095 () Bool)

(assert (=> d!1479512 (=> res!1960095 e!2907797)))

(declare-fun e!2907795 () Bool)

(assert (=> d!1479512 (= res!1960095 e!2907795)))

(declare-fun res!1960096 () Bool)

(assert (=> d!1479512 (=> (not res!1960096) (not e!2907795))))

(declare-fun lt!1821918 () Bool)

(assert (=> d!1479512 (= res!1960096 (not lt!1821918))))

(declare-fun lt!1821922 () Bool)

(assert (=> d!1479512 (= lt!1821918 lt!1821922)))

(declare-fun lt!1821923 () Unit!118984)

(declare-fun e!2907794 () Unit!118984)

(assert (=> d!1479512 (= lt!1821923 e!2907794)))

(assert (=> d!1479512 (= c!797690 lt!1821922)))

(assert (=> d!1479512 (= lt!1821922 (containsKey!2750 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479512 (= (contains!15083 lt!1821675 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))) lt!1821918)))

(declare-fun b!4660109 () Bool)

(declare-fun Unit!119103 () Unit!118984)

(assert (=> b!4660109 (= e!2907798 Unit!119103)))

(declare-fun b!4660110 () Bool)

(assert (=> b!4660110 (= e!2907799 (getKeysList!757 (toList!5233 lt!1821675)))))

(declare-fun b!4660111 () Bool)

(declare-fun e!2907796 () Bool)

(assert (=> b!4660111 (= e!2907797 e!2907796)))

(declare-fun res!1960097 () Bool)

(assert (=> b!4660111 (=> (not res!1960097) (not e!2907796))))

(assert (=> b!4660111 (= res!1960097 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun b!4660112 () Bool)

(assert (=> b!4660112 (= e!2907796 (contains!15089 (keys!18406 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun b!4660113 () Bool)

(assert (=> b!4660113 (= e!2907794 e!2907798)))

(declare-fun c!797689 () Bool)

(assert (=> b!4660113 (= c!797689 call!325587)))

(declare-fun b!4660114 () Bool)

(declare-fun lt!1821917 () Unit!118984)

(assert (=> b!4660114 (= e!2907794 lt!1821917)))

(declare-fun lt!1821919 () Unit!118984)

(assert (=> b!4660114 (= lt!1821919 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660114 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821924 () Unit!118984)

(assert (=> b!4660114 (= lt!1821924 lt!1821919)))

(assert (=> b!4660114 (= lt!1821917 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660114 call!325587))

(declare-fun b!4660115 () Bool)

(assert (=> b!4660115 (= e!2907795 (not (contains!15089 (keys!18406 lt!1821675) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(assert (= (and d!1479512 c!797690) b!4660114))

(assert (= (and d!1479512 (not c!797690)) b!4660113))

(assert (= (and b!4660113 c!797689) b!4660108))

(assert (= (and b!4660113 (not c!797689)) b!4660109))

(assert (= (or b!4660114 b!4660113) bm!325582))

(assert (= (and bm!325582 c!797688) b!4660110))

(assert (= (and bm!325582 (not c!797688)) b!4660107))

(assert (= (and d!1479512 res!1960096) b!4660115))

(assert (= (and d!1479512 (not res!1960095)) b!4660111))

(assert (= (and b!4660111 res!1960097) b!4660112))

(declare-fun m!5542365 () Bool)

(assert (=> d!1479512 m!5542365))

(assert (=> b!4660108 m!5542365))

(declare-fun m!5542369 () Bool)

(assert (=> b!4660108 m!5542369))

(declare-fun m!5542371 () Bool)

(assert (=> b!4660115 m!5542371))

(assert (=> b!4660115 m!5542371))

(declare-fun m!5542373 () Bool)

(assert (=> b!4660115 m!5542373))

(declare-fun m!5542375 () Bool)

(assert (=> b!4660110 m!5542375))

(assert (=> b!4660107 m!5542371))

(declare-fun m!5542377 () Bool)

(assert (=> b!4660114 m!5542377))

(declare-fun m!5542379 () Bool)

(assert (=> b!4660114 m!5542379))

(assert (=> b!4660114 m!5542379))

(declare-fun m!5542381 () Bool)

(assert (=> b!4660114 m!5542381))

(declare-fun m!5542383 () Bool)

(assert (=> b!4660114 m!5542383))

(assert (=> b!4660112 m!5542371))

(assert (=> b!4660112 m!5542371))

(assert (=> b!4660112 m!5542373))

(assert (=> b!4660111 m!5542379))

(assert (=> b!4660111 m!5542379))

(assert (=> b!4660111 m!5542381))

(declare-fun m!5542389 () Bool)

(assert (=> bm!325582 m!5542389))

(assert (=> b!4659665 d!1479512))

(declare-fun d!1479522 () Bool)

(declare-fun res!1960102 () Bool)

(declare-fun e!2907804 () Bool)

(assert (=> d!1479522 (=> res!1960102 e!2907804)))

(assert (=> d!1479522 (= res!1960102 ((_ is Nil!51928) (_2!29822 (h!58081 lt!1821144))))))

(assert (=> d!1479522 (= (forall!11050 (_2!29822 (h!58081 lt!1821144)) lambda!200148) e!2907804)))

(declare-fun b!4660120 () Bool)

(declare-fun e!2907805 () Bool)

(assert (=> b!4660120 (= e!2907804 e!2907805)))

(declare-fun res!1960103 () Bool)

(assert (=> b!4660120 (=> (not res!1960103) (not e!2907805))))

(assert (=> b!4660120 (= res!1960103 (dynLambda!21608 lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun b!4660121 () Bool)

(assert (=> b!4660121 (= e!2907805 (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200148))))

(assert (= (and d!1479522 (not res!1960102)) b!4660120))

(assert (= (and b!4660120 res!1960103) b!4660121))

(declare-fun b_lambda!174863 () Bool)

(assert (=> (not b_lambda!174863) (not b!4660120)))

(declare-fun m!5542391 () Bool)

(assert (=> b!4660120 m!5542391))

(assert (=> b!4660121 m!5541455))

(assert (=> b!4659665 d!1479522))

(declare-fun d!1479524 () Bool)

(declare-fun e!2907806 () Bool)

(assert (=> d!1479524 e!2907806))

(declare-fun res!1960105 () Bool)

(assert (=> d!1479524 (=> (not res!1960105) (not e!2907806))))

(declare-fun lt!1821927 () ListMap!4573)

(assert (=> d!1479524 (= res!1960105 (contains!15083 lt!1821927 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821929 () List!52052)

(assert (=> d!1479524 (= lt!1821927 (ListMap!4574 lt!1821929))))

(declare-fun lt!1821926 () Unit!118984)

(declare-fun lt!1821928 () Unit!118984)

(assert (=> d!1479524 (= lt!1821926 lt!1821928)))

(assert (=> d!1479524 (= (getValueByKey!1626 lt!1821929 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))) (Some!11847 (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479524 (= lt!1821928 (lemmaContainsTupThenGetReturnValue!930 lt!1821929 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479524 (= lt!1821929 (insertNoDuplicatedKeys!438 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479524 (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821927)))

(declare-fun b!4660122 () Bool)

(declare-fun res!1960104 () Bool)

(assert (=> b!4660122 (=> (not res!1960104) (not e!2907806))))

(assert (=> b!4660122 (= res!1960104 (= (getValueByKey!1626 (toList!5233 lt!1821927) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))) (Some!11847 (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun b!4660123 () Bool)

(assert (=> b!4660123 (= e!2907806 (contains!15088 (toList!5233 lt!1821927) (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (= (and d!1479524 res!1960105) b!4660122))

(assert (= (and b!4660122 res!1960104) b!4660123))

(declare-fun m!5542393 () Bool)

(assert (=> d!1479524 m!5542393))

(declare-fun m!5542395 () Bool)

(assert (=> d!1479524 m!5542395))

(declare-fun m!5542397 () Bool)

(assert (=> d!1479524 m!5542397))

(declare-fun m!5542399 () Bool)

(assert (=> d!1479524 m!5542399))

(declare-fun m!5542401 () Bool)

(assert (=> b!4660122 m!5542401))

(declare-fun m!5542403 () Bool)

(assert (=> b!4660123 m!5542403))

(assert (=> b!4659665 d!1479524))

(declare-fun bs!1067090 () Bool)

(declare-fun d!1479526 () Bool)

(assert (= bs!1067090 (and d!1479526 b!4659243)))

(declare-fun lambda!200185 () Int)

(assert (=> bs!1067090 (= (= lt!1821667 lt!1821141) (= lambda!200185 lambda!200075))))

(declare-fun bs!1067091 () Bool)

(assert (= bs!1067091 (and d!1479526 d!1478838)))

(assert (=> bs!1067091 (= (= lt!1821667 lt!1821400) (= lambda!200185 lambda!200078))))

(declare-fun bs!1067092 () Bool)

(assert (= bs!1067092 (and d!1479526 d!1479158)))

(assert (=> bs!1067092 (= (= lt!1821667 lt!1821404) (= lambda!200185 lambda!200155))))

(declare-fun bs!1067093 () Bool)

(assert (= bs!1067093 (and d!1479526 b!4659725)))

(assert (=> bs!1067093 (= (= lt!1821667 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200185 lambda!200156))))

(declare-fun bs!1067094 () Bool)

(assert (= bs!1067094 (and d!1479526 b!4659241)))

(assert (=> bs!1067094 (= (= lt!1821667 lt!1821404) (= lambda!200185 lambda!200077))))

(declare-fun bs!1067095 () Bool)

(assert (= bs!1067095 (and d!1479526 b!4659723)))

(assert (=> bs!1067095 (= (= lt!1821667 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200185 lambda!200157))))

(declare-fun bs!1067096 () Bool)

(assert (= bs!1067096 (and d!1479526 b!4659667)))

(assert (=> bs!1067096 (= (= lt!1821667 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200185 lambda!200146))))

(declare-fun bs!1067097 () Bool)

(assert (= bs!1067097 (and d!1479526 d!1478768)))

(assert (=> bs!1067097 (not (= lambda!200185 lambda!199986))))

(declare-fun bs!1067098 () Bool)

(assert (= bs!1067098 (and d!1479526 d!1478866)))

(assert (=> bs!1067098 (not (= lambda!200185 lambda!200086))))

(assert (=> bs!1067094 (= (= lt!1821667 lt!1821141) (= lambda!200185 lambda!200076))))

(assert (=> bs!1067095 (= (= lt!1821667 lt!1821726) (= lambda!200185 lambda!200158))))

(declare-fun bs!1067099 () Bool)

(assert (= bs!1067099 (and d!1479526 d!1479170)))

(assert (=> bs!1067099 (= (= lt!1821667 lt!1821722) (= lambda!200185 lambda!200159))))

(declare-fun bs!1067100 () Bool)

(assert (= bs!1067100 (and d!1479526 b!4659665)))

(assert (=> bs!1067100 (= (= lt!1821667 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200185 lambda!200147))))

(declare-fun bs!1067101 () Bool)

(assert (= bs!1067101 (and d!1479526 d!1479132)))

(assert (=> bs!1067101 (= (= lt!1821667 lt!1821663) (= lambda!200185 lambda!200149))))

(declare-fun bs!1067102 () Bool)

(assert (= bs!1067102 (and d!1479526 d!1479372)))

(assert (=> bs!1067102 (= (= lt!1821667 lt!1821141) (= lambda!200185 lambda!200180))))

(assert (=> bs!1067100 (= lambda!200185 lambda!200148)))

(declare-fun bs!1067103 () Bool)

(assert (= bs!1067103 (and d!1479526 d!1479240)))

(assert (=> bs!1067103 (= (= lt!1821667 lt!1821141) (= lambda!200185 lambda!200166))))

(assert (=> d!1479526 true))

(assert (=> d!1479526 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200185)))

(declare-fun lt!1821930 () Unit!118984)

(assert (=> d!1479526 (= lt!1821930 (choose!32097 (extractMap!1708 (t!359169 lt!1821144)) lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479526 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (tuple2!53055 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))) lambda!200185)))

(assert (=> d!1479526 (= (addForallContainsKeyThenBeforeAdding!605 (extractMap!1708 (t!359169 lt!1821144)) lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_2!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))) lt!1821930)))

(declare-fun bs!1067104 () Bool)

(assert (= bs!1067104 d!1479526))

(declare-fun m!5542405 () Bool)

(assert (=> bs!1067104 m!5542405))

(assert (=> bs!1067104 m!5540821))

(declare-fun m!5542407 () Bool)

(assert (=> bs!1067104 m!5542407))

(assert (=> bs!1067104 m!5540821))

(declare-fun m!5542409 () Bool)

(assert (=> bs!1067104 m!5542409))

(declare-fun m!5542411 () Bool)

(assert (=> bs!1067104 m!5542411))

(assert (=> b!4659665 d!1479526))

(declare-fun bs!1067105 () Bool)

(declare-fun b!4660126 () Bool)

(assert (= bs!1067105 (and b!4660126 b!4659243)))

(declare-fun lambda!200188 () Int)

(assert (=> bs!1067105 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200188 lambda!200075))))

(declare-fun bs!1067106 () Bool)

(assert (= bs!1067106 (and b!4660126 d!1478838)))

(assert (=> bs!1067106 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821400) (= lambda!200188 lambda!200078))))

(declare-fun bs!1067107 () Bool)

(assert (= bs!1067107 (and b!4660126 d!1479526)))

(assert (=> bs!1067107 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821667) (= lambda!200188 lambda!200185))))

(declare-fun bs!1067108 () Bool)

(assert (= bs!1067108 (and b!4660126 d!1479158)))

(assert (=> bs!1067108 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821404) (= lambda!200188 lambda!200155))))

(declare-fun bs!1067109 () Bool)

(assert (= bs!1067109 (and b!4660126 b!4659725)))

(assert (=> bs!1067109 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200188 lambda!200156))))

(declare-fun bs!1067111 () Bool)

(assert (= bs!1067111 (and b!4660126 b!4659241)))

(assert (=> bs!1067111 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821404) (= lambda!200188 lambda!200077))))

(declare-fun bs!1067112 () Bool)

(assert (= bs!1067112 (and b!4660126 b!4659723)))

(assert (=> bs!1067112 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200188 lambda!200157))))

(declare-fun bs!1067114 () Bool)

(assert (= bs!1067114 (and b!4660126 b!4659667)))

(assert (=> bs!1067114 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200188 lambda!200146))))

(declare-fun bs!1067116 () Bool)

(assert (= bs!1067116 (and b!4660126 d!1478768)))

(assert (=> bs!1067116 (not (= lambda!200188 lambda!199986))))

(declare-fun bs!1067118 () Bool)

(assert (= bs!1067118 (and b!4660126 d!1478866)))

(assert (=> bs!1067118 (not (= lambda!200188 lambda!200086))))

(assert (=> bs!1067111 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200188 lambda!200076))))

(assert (=> bs!1067112 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821726) (= lambda!200188 lambda!200158))))

(declare-fun bs!1067122 () Bool)

(assert (= bs!1067122 (and b!4660126 d!1479170)))

(assert (=> bs!1067122 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821722) (= lambda!200188 lambda!200159))))

(declare-fun bs!1067124 () Bool)

(assert (= bs!1067124 (and b!4660126 b!4659665)))

(assert (=> bs!1067124 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200188 lambda!200147))))

(declare-fun bs!1067126 () Bool)

(assert (= bs!1067126 (and b!4660126 d!1479132)))

(assert (=> bs!1067126 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821663) (= lambda!200188 lambda!200149))))

(declare-fun bs!1067127 () Bool)

(assert (= bs!1067127 (and b!4660126 d!1479372)))

(assert (=> bs!1067127 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200188 lambda!200180))))

(assert (=> bs!1067124 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821667) (= lambda!200188 lambda!200148))))

(declare-fun bs!1067129 () Bool)

(assert (= bs!1067129 (and b!4660126 d!1479240)))

(assert (=> bs!1067129 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200188 lambda!200166))))

(assert (=> b!4660126 true))

(declare-fun bs!1067136 () Bool)

(declare-fun b!4660124 () Bool)

(assert (= bs!1067136 (and b!4660124 b!4659243)))

(declare-fun lambda!200190 () Int)

(assert (=> bs!1067136 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200190 lambda!200075))))

(declare-fun bs!1067137 () Bool)

(assert (= bs!1067137 (and b!4660124 d!1478838)))

(assert (=> bs!1067137 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821400) (= lambda!200190 lambda!200078))))

(declare-fun bs!1067138 () Bool)

(assert (= bs!1067138 (and b!4660124 d!1479526)))

(assert (=> bs!1067138 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821667) (= lambda!200190 lambda!200185))))

(declare-fun bs!1067139 () Bool)

(assert (= bs!1067139 (and b!4660124 b!4659725)))

(assert (=> bs!1067139 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200190 lambda!200156))))

(declare-fun bs!1067141 () Bool)

(assert (= bs!1067141 (and b!4660124 b!4659241)))

(assert (=> bs!1067141 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821404) (= lambda!200190 lambda!200077))))

(declare-fun bs!1067142 () Bool)

(assert (= bs!1067142 (and b!4660124 b!4659723)))

(assert (=> bs!1067142 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200190 lambda!200157))))

(declare-fun bs!1067143 () Bool)

(assert (= bs!1067143 (and b!4660124 b!4659667)))

(assert (=> bs!1067143 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200190 lambda!200146))))

(declare-fun bs!1067144 () Bool)

(assert (= bs!1067144 (and b!4660124 d!1478768)))

(assert (=> bs!1067144 (not (= lambda!200190 lambda!199986))))

(declare-fun bs!1067145 () Bool)

(assert (= bs!1067145 (and b!4660124 d!1478866)))

(assert (=> bs!1067145 (not (= lambda!200190 lambda!200086))))

(assert (=> bs!1067141 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200190 lambda!200076))))

(assert (=> bs!1067142 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821726) (= lambda!200190 lambda!200158))))

(declare-fun bs!1067146 () Bool)

(assert (= bs!1067146 (and b!4660124 d!1479170)))

(assert (=> bs!1067146 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821722) (= lambda!200190 lambda!200159))))

(declare-fun bs!1067147 () Bool)

(assert (= bs!1067147 (and b!4660124 b!4659665)))

(assert (=> bs!1067147 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200190 lambda!200147))))

(declare-fun bs!1067148 () Bool)

(assert (= bs!1067148 (and b!4660124 d!1479132)))

(assert (=> bs!1067148 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821663) (= lambda!200190 lambda!200149))))

(declare-fun bs!1067149 () Bool)

(assert (= bs!1067149 (and b!4660124 b!4660126)))

(assert (=> bs!1067149 (= lambda!200190 lambda!200188)))

(declare-fun bs!1067150 () Bool)

(assert (= bs!1067150 (and b!4660124 d!1479158)))

(assert (=> bs!1067150 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821404) (= lambda!200190 lambda!200155))))

(declare-fun bs!1067151 () Bool)

(assert (= bs!1067151 (and b!4660124 d!1479372)))

(assert (=> bs!1067151 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200190 lambda!200180))))

(assert (=> bs!1067147 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821667) (= lambda!200190 lambda!200148))))

(declare-fun bs!1067152 () Bool)

(assert (= bs!1067152 (and b!4660124 d!1479240)))

(assert (=> bs!1067152 (= (= (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821141) (= lambda!200190 lambda!200166))))

(assert (=> b!4660124 true))

(declare-fun lambda!200191 () Int)

(declare-fun lt!1821937 () ListMap!4573)

(assert (=> bs!1067136 (= (= lt!1821937 lt!1821141) (= lambda!200191 lambda!200075))))

(assert (=> bs!1067137 (= (= lt!1821937 lt!1821400) (= lambda!200191 lambda!200078))))

(assert (=> bs!1067139 (= (= lt!1821937 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200191 lambda!200156))))

(assert (=> bs!1067141 (= (= lt!1821937 lt!1821404) (= lambda!200191 lambda!200077))))

(assert (=> bs!1067142 (= (= lt!1821937 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200191 lambda!200157))))

(assert (=> bs!1067143 (= (= lt!1821937 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200191 lambda!200146))))

(assert (=> bs!1067144 (not (= lambda!200191 lambda!199986))))

(assert (=> bs!1067145 (not (= lambda!200191 lambda!200086))))

(assert (=> bs!1067141 (= (= lt!1821937 lt!1821141) (= lambda!200191 lambda!200076))))

(assert (=> bs!1067142 (= (= lt!1821937 lt!1821726) (= lambda!200191 lambda!200158))))

(assert (=> bs!1067146 (= (= lt!1821937 lt!1821722) (= lambda!200191 lambda!200159))))

(assert (=> bs!1067147 (= (= lt!1821937 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200191 lambda!200147))))

(assert (=> bs!1067148 (= (= lt!1821937 lt!1821663) (= lambda!200191 lambda!200149))))

(assert (=> b!4660124 (= (= lt!1821937 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200191 lambda!200190))))

(assert (=> bs!1067138 (= (= lt!1821937 lt!1821667) (= lambda!200191 lambda!200185))))

(assert (=> bs!1067149 (= (= lt!1821937 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200191 lambda!200188))))

(assert (=> bs!1067150 (= (= lt!1821937 lt!1821404) (= lambda!200191 lambda!200155))))

(assert (=> bs!1067151 (= (= lt!1821937 lt!1821141) (= lambda!200191 lambda!200180))))

(assert (=> bs!1067147 (= (= lt!1821937 lt!1821667) (= lambda!200191 lambda!200148))))

(assert (=> bs!1067152 (= (= lt!1821937 lt!1821141) (= lambda!200191 lambda!200166))))

(assert (=> b!4660124 true))

(declare-fun bs!1067154 () Bool)

(declare-fun d!1479528 () Bool)

(assert (= bs!1067154 (and d!1479528 d!1478838)))

(declare-fun lambda!200192 () Int)

(declare-fun lt!1821933 () ListMap!4573)

(assert (=> bs!1067154 (= (= lt!1821933 lt!1821400) (= lambda!200192 lambda!200078))))

(declare-fun bs!1067155 () Bool)

(assert (= bs!1067155 (and d!1479528 b!4659725)))

(assert (=> bs!1067155 (= (= lt!1821933 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200192 lambda!200156))))

(declare-fun bs!1067156 () Bool)

(assert (= bs!1067156 (and d!1479528 b!4659241)))

(assert (=> bs!1067156 (= (= lt!1821933 lt!1821404) (= lambda!200192 lambda!200077))))

(declare-fun bs!1067157 () Bool)

(assert (= bs!1067157 (and d!1479528 b!4659723)))

(assert (=> bs!1067157 (= (= lt!1821933 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200192 lambda!200157))))

(declare-fun bs!1067158 () Bool)

(assert (= bs!1067158 (and d!1479528 b!4659667)))

(assert (=> bs!1067158 (= (= lt!1821933 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200192 lambda!200146))))

(declare-fun bs!1067159 () Bool)

(assert (= bs!1067159 (and d!1479528 d!1478768)))

(assert (=> bs!1067159 (not (= lambda!200192 lambda!199986))))

(declare-fun bs!1067160 () Bool)

(assert (= bs!1067160 (and d!1479528 d!1478866)))

(assert (=> bs!1067160 (not (= lambda!200192 lambda!200086))))

(assert (=> bs!1067156 (= (= lt!1821933 lt!1821141) (= lambda!200192 lambda!200076))))

(assert (=> bs!1067157 (= (= lt!1821933 lt!1821726) (= lambda!200192 lambda!200158))))

(declare-fun bs!1067161 () Bool)

(assert (= bs!1067161 (and d!1479528 d!1479170)))

(assert (=> bs!1067161 (= (= lt!1821933 lt!1821722) (= lambda!200192 lambda!200159))))

(declare-fun bs!1067162 () Bool)

(assert (= bs!1067162 (and d!1479528 b!4659243)))

(assert (=> bs!1067162 (= (= lt!1821933 lt!1821141) (= lambda!200192 lambda!200075))))

(declare-fun bs!1067163 () Bool)

(assert (= bs!1067163 (and d!1479528 b!4660124)))

(assert (=> bs!1067163 (= (= lt!1821933 lt!1821937) (= lambda!200192 lambda!200191))))

(declare-fun bs!1067164 () Bool)

(assert (= bs!1067164 (and d!1479528 b!4659665)))

(assert (=> bs!1067164 (= (= lt!1821933 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200192 lambda!200147))))

(declare-fun bs!1067165 () Bool)

(assert (= bs!1067165 (and d!1479528 d!1479132)))

(assert (=> bs!1067165 (= (= lt!1821933 lt!1821663) (= lambda!200192 lambda!200149))))

(assert (=> bs!1067163 (= (= lt!1821933 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200192 lambda!200190))))

(declare-fun bs!1067166 () Bool)

(assert (= bs!1067166 (and d!1479528 d!1479526)))

(assert (=> bs!1067166 (= (= lt!1821933 lt!1821667) (= lambda!200192 lambda!200185))))

(declare-fun bs!1067167 () Bool)

(assert (= bs!1067167 (and d!1479528 b!4660126)))

(assert (=> bs!1067167 (= (= lt!1821933 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200192 lambda!200188))))

(declare-fun bs!1067168 () Bool)

(assert (= bs!1067168 (and d!1479528 d!1479158)))

(assert (=> bs!1067168 (= (= lt!1821933 lt!1821404) (= lambda!200192 lambda!200155))))

(declare-fun bs!1067169 () Bool)

(assert (= bs!1067169 (and d!1479528 d!1479372)))

(assert (=> bs!1067169 (= (= lt!1821933 lt!1821141) (= lambda!200192 lambda!200180))))

(assert (=> bs!1067164 (= (= lt!1821933 lt!1821667) (= lambda!200192 lambda!200148))))

(declare-fun bs!1067170 () Bool)

(assert (= bs!1067170 (and d!1479528 d!1479240)))

(assert (=> bs!1067170 (= (= lt!1821933 lt!1821141) (= lambda!200192 lambda!200166))))

(assert (=> d!1479528 true))

(declare-fun e!2907809 () ListMap!4573)

(assert (=> b!4660124 (= e!2907809 lt!1821937)))

(declare-fun lt!1821945 () ListMap!4573)

(assert (=> b!4660124 (= lt!1821945 (+!1992 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660124 (= lt!1821937 (addToMapMapFromBucket!1109 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821144)))) (+!1992 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun lt!1821949 () Unit!118984)

(declare-fun call!325590 () Unit!118984)

(assert (=> b!4660124 (= lt!1821949 call!325590)))

(assert (=> b!4660124 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lambda!200190)))

(declare-fun lt!1821946 () Unit!118984)

(assert (=> b!4660124 (= lt!1821946 lt!1821949)))

(assert (=> b!4660124 (forall!11050 (toList!5233 lt!1821945) lambda!200191)))

(declare-fun lt!1821943 () Unit!118984)

(declare-fun Unit!119107 () Unit!118984)

(assert (=> b!4660124 (= lt!1821943 Unit!119107)))

(assert (=> b!4660124 (forall!11050 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821144)))) lambda!200191)))

(declare-fun lt!1821947 () Unit!118984)

(declare-fun Unit!119108 () Unit!118984)

(assert (=> b!4660124 (= lt!1821947 Unit!119108)))

(declare-fun lt!1821932 () Unit!118984)

(declare-fun Unit!119109 () Unit!118984)

(assert (=> b!4660124 (= lt!1821932 Unit!119109)))

(declare-fun lt!1821951 () Unit!118984)

(assert (=> b!4660124 (= lt!1821951 (forallContained!3250 (toList!5233 lt!1821945) lambda!200191 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660124 (contains!15083 lt!1821945 (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821934 () Unit!118984)

(declare-fun Unit!119110 () Unit!118984)

(assert (=> b!4660124 (= lt!1821934 Unit!119110)))

(assert (=> b!4660124 (contains!15083 lt!1821937 (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821939 () Unit!118984)

(declare-fun Unit!119111 () Unit!118984)

(assert (=> b!4660124 (= lt!1821939 Unit!119111)))

(assert (=> b!4660124 (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200191)))

(declare-fun lt!1821941 () Unit!118984)

(declare-fun Unit!119112 () Unit!118984)

(assert (=> b!4660124 (= lt!1821941 Unit!119112)))

(declare-fun call!325588 () Bool)

(assert (=> b!4660124 call!325588))

(declare-fun lt!1821936 () Unit!118984)

(declare-fun Unit!119113 () Unit!118984)

(assert (=> b!4660124 (= lt!1821936 Unit!119113)))

(declare-fun lt!1821944 () Unit!118984)

(declare-fun Unit!119114 () Unit!118984)

(assert (=> b!4660124 (= lt!1821944 Unit!119114)))

(declare-fun lt!1821948 () Unit!118984)

(assert (=> b!4660124 (= lt!1821948 (addForallContainsKeyThenBeforeAdding!605 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821937 (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))) (_2!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144)))))))))

(assert (=> b!4660124 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lambda!200191)))

(declare-fun lt!1821931 () Unit!118984)

(assert (=> b!4660124 (= lt!1821931 lt!1821948)))

(assert (=> b!4660124 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lambda!200191)))

(declare-fun lt!1821938 () Unit!118984)

(declare-fun Unit!119115 () Unit!118984)

(assert (=> b!4660124 (= lt!1821938 Unit!119115)))

(declare-fun res!1960108 () Bool)

(declare-fun call!325589 () Bool)

(assert (=> b!4660124 (= res!1960108 call!325589)))

(declare-fun e!2907808 () Bool)

(assert (=> b!4660124 (=> (not res!1960108) (not e!2907808))))

(assert (=> b!4660124 e!2907808))

(declare-fun lt!1821950 () Unit!118984)

(declare-fun Unit!119116 () Unit!118984)

(assert (=> b!4660124 (= lt!1821950 Unit!119116)))

(declare-fun e!2907807 () Bool)

(assert (=> d!1479528 e!2907807))

(declare-fun res!1960107 () Bool)

(assert (=> d!1479528 (=> (not res!1960107) (not e!2907807))))

(assert (=> d!1479528 (= res!1960107 (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200192))))

(assert (=> d!1479528 (= lt!1821933 e!2907809)))

(declare-fun c!797691 () Bool)

(assert (=> d!1479528 (= c!797691 ((_ is Nil!51928) (t!359168 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> d!1479528 (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 lt!1821144))))))

(assert (=> d!1479528 (= (addToMapMapFromBucket!1109 (t!359168 (_2!29822 (h!58081 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lt!1821933)))

(declare-fun b!4660125 () Bool)

(assert (=> b!4660125 (= e!2907807 (invariantList!1306 (toList!5233 lt!1821933)))))

(declare-fun bm!325583 () Bool)

(assert (=> bm!325583 (= call!325588 (forall!11050 (ite c!797691 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (toList!5233 lt!1821945)) (ite c!797691 lambda!200188 lambda!200191)))))

(declare-fun bm!325584 () Bool)

(assert (=> bm!325584 (= call!325589 (forall!11050 (ite c!797691 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (t!359168 (_2!29822 (h!58081 lt!1821144)))) (ite c!797691 lambda!200188 lambda!200191)))))

(assert (=> b!4660126 (= e!2907809 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun lt!1821940 () Unit!118984)

(assert (=> b!4660126 (= lt!1821940 call!325590)))

(assert (=> b!4660126 call!325588))

(declare-fun lt!1821942 () Unit!118984)

(assert (=> b!4660126 (= lt!1821942 lt!1821940)))

(assert (=> b!4660126 call!325589))

(declare-fun lt!1821935 () Unit!118984)

(declare-fun Unit!119117 () Unit!118984)

(assert (=> b!4660126 (= lt!1821935 Unit!119117)))

(declare-fun b!4660127 () Bool)

(assert (=> b!4660127 (= e!2907808 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lambda!200191))))

(declare-fun b!4660128 () Bool)

(declare-fun res!1960106 () Bool)

(assert (=> b!4660128 (=> (not res!1960106) (not e!2907807))))

(assert (=> b!4660128 (= res!1960106 (forall!11050 (toList!5233 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) lambda!200192))))

(declare-fun bm!325585 () Bool)

(assert (=> bm!325585 (= call!325590 (lemmaContainsAllItsOwnKeys!606 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (= (and d!1479528 c!797691) b!4660126))

(assert (= (and d!1479528 (not c!797691)) b!4660124))

(assert (= (and b!4660124 res!1960108) b!4660127))

(assert (= (or b!4660126 b!4660124) bm!325585))

(assert (= (or b!4660126 b!4660124) bm!325584))

(assert (= (or b!4660126 b!4660124) bm!325583))

(assert (= (and d!1479528 res!1960107) b!4660128))

(assert (= (and b!4660128 res!1960106) b!4660125))

(declare-fun m!5542437 () Bool)

(assert (=> bm!325583 m!5542437))

(assert (=> bm!325585 m!5541463))

(declare-fun m!5542439 () Bool)

(assert (=> bm!325585 m!5542439))

(declare-fun m!5542441 () Bool)

(assert (=> b!4660124 m!5542441))

(declare-fun m!5542443 () Bool)

(assert (=> b!4660124 m!5542443))

(declare-fun m!5542445 () Bool)

(assert (=> b!4660124 m!5542445))

(assert (=> b!4660124 m!5541463))

(declare-fun m!5542447 () Bool)

(assert (=> b!4660124 m!5542447))

(declare-fun m!5542449 () Bool)

(assert (=> b!4660124 m!5542449))

(declare-fun m!5542451 () Bool)

(assert (=> b!4660124 m!5542451))

(declare-fun m!5542453 () Bool)

(assert (=> b!4660124 m!5542453))

(declare-fun m!5542455 () Bool)

(assert (=> b!4660124 m!5542455))

(declare-fun m!5542457 () Bool)

(assert (=> b!4660124 m!5542457))

(declare-fun m!5542459 () Bool)

(assert (=> b!4660124 m!5542459))

(assert (=> b!4660124 m!5541463))

(assert (=> b!4660124 m!5542453))

(declare-fun m!5542461 () Bool)

(assert (=> b!4660124 m!5542461))

(assert (=> b!4660124 m!5542457))

(declare-fun m!5542465 () Bool)

(assert (=> d!1479528 m!5542465))

(assert (=> d!1479528 m!5542031))

(assert (=> b!4660127 m!5542457))

(declare-fun m!5542469 () Bool)

(assert (=> bm!325584 m!5542469))

(declare-fun m!5542471 () Bool)

(assert (=> b!4660128 m!5542471))

(declare-fun m!5542473 () Bool)

(assert (=> b!4660125 m!5542473))

(assert (=> b!4659665 d!1479528))

(declare-fun d!1479554 () Bool)

(declare-fun res!1960125 () Bool)

(declare-fun e!2907827 () Bool)

(assert (=> d!1479554 (=> res!1960125 e!2907827)))

(assert (=> d!1479554 (= res!1960125 ((_ is Nil!51928) (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))

(assert (=> d!1479554 (= (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200147) e!2907827)))

(declare-fun b!4660147 () Bool)

(declare-fun e!2907828 () Bool)

(assert (=> b!4660147 (= e!2907827 e!2907828)))

(declare-fun res!1960126 () Bool)

(assert (=> b!4660147 (=> (not res!1960126) (not e!2907828))))

(assert (=> b!4660147 (= res!1960126 (dynLambda!21608 lambda!200147 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))))))

(declare-fun b!4660148 () Bool)

(assert (=> b!4660148 (= e!2907828 (forall!11050 (t!359168 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))) lambda!200147))))

(assert (= (and d!1479554 (not res!1960125)) b!4660147))

(assert (= (and b!4660147 res!1960126) b!4660148))

(declare-fun b_lambda!174873 () Bool)

(assert (=> (not b_lambda!174873) (not b!4660147)))

(declare-fun m!5542475 () Bool)

(assert (=> b!4660147 m!5542475))

(declare-fun m!5542477 () Bool)

(assert (=> b!4660148 m!5542477))

(assert (=> b!4659665 d!1479554))

(assert (=> b!4659665 d!1479464))

(declare-fun d!1479556 () Bool)

(declare-fun res!1960127 () Bool)

(declare-fun e!2907829 () Bool)

(assert (=> d!1479556 (=> res!1960127 e!2907829)))

(assert (=> d!1479556 (= res!1960127 ((_ is Nil!51928) (t!359168 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> d!1479556 (= (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200148) e!2907829)))

(declare-fun b!4660149 () Bool)

(declare-fun e!2907830 () Bool)

(assert (=> b!4660149 (= e!2907829 e!2907830)))

(declare-fun res!1960128 () Bool)

(assert (=> b!4660149 (=> (not res!1960128) (not e!2907830))))

(assert (=> b!4660149 (= res!1960128 (dynLambda!21608 lambda!200148 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun b!4660150 () Bool)

(assert (=> b!4660150 (= e!2907830 (forall!11050 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821144)))) lambda!200148))))

(assert (= (and d!1479556 (not res!1960127)) b!4660149))

(assert (= (and b!4660149 res!1960128) b!4660150))

(declare-fun b_lambda!174875 () Bool)

(assert (=> (not b_lambda!174875) (not b!4660149)))

(declare-fun m!5542483 () Bool)

(assert (=> b!4660149 m!5542483))

(declare-fun m!5542485 () Bool)

(assert (=> b!4660150 m!5542485))

(assert (=> b!4659665 d!1479556))

(declare-fun d!1479560 () Bool)

(assert (=> d!1479560 (dynLambda!21608 lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144))))))

(declare-fun lt!1821953 () Unit!118984)

(assert (=> d!1479560 (= lt!1821953 (choose!32098 (toList!5233 lt!1821675) lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun e!2907833 () Bool)

(assert (=> d!1479560 e!2907833))

(declare-fun res!1960131 () Bool)

(assert (=> d!1479560 (=> (not res!1960131) (not e!2907833))))

(assert (=> d!1479560 (= res!1960131 (forall!11050 (toList!5233 lt!1821675) lambda!200148))))

(assert (=> d!1479560 (= (forallContained!3250 (toList!5233 lt!1821675) lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144)))) lt!1821953)))

(declare-fun b!4660153 () Bool)

(assert (=> b!4660153 (= e!2907833 (contains!15088 (toList!5233 lt!1821675) (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (= (and d!1479560 res!1960131) b!4660153))

(declare-fun b_lambda!174879 () Bool)

(assert (=> (not b_lambda!174879) (not d!1479560)))

(assert (=> d!1479560 m!5542391))

(declare-fun m!5542491 () Bool)

(assert (=> d!1479560 m!5542491))

(assert (=> d!1479560 m!5541471))

(declare-fun m!5542493 () Bool)

(assert (=> b!4660153 m!5542493))

(assert (=> b!4659665 d!1479560))

(declare-fun d!1479564 () Bool)

(declare-fun res!1960132 () Bool)

(declare-fun e!2907834 () Bool)

(assert (=> d!1479564 (=> res!1960132 e!2907834)))

(assert (=> d!1479564 (= res!1960132 ((_ is Nil!51928) (toList!5233 lt!1821675)))))

(assert (=> d!1479564 (= (forall!11050 (toList!5233 lt!1821675) lambda!200148) e!2907834)))

(declare-fun b!4660154 () Bool)

(declare-fun e!2907835 () Bool)

(assert (=> b!4660154 (= e!2907834 e!2907835)))

(declare-fun res!1960133 () Bool)

(assert (=> b!4660154 (=> (not res!1960133) (not e!2907835))))

(assert (=> b!4660154 (= res!1960133 (dynLambda!21608 lambda!200148 (h!58080 (toList!5233 lt!1821675))))))

(declare-fun b!4660155 () Bool)

(assert (=> b!4660155 (= e!2907835 (forall!11050 (t!359168 (toList!5233 lt!1821675)) lambda!200148))))

(assert (= (and d!1479564 (not res!1960132)) b!4660154))

(assert (= (and b!4660154 res!1960133) b!4660155))

(declare-fun b_lambda!174881 () Bool)

(assert (=> (not b_lambda!174881) (not b!4660154)))

(declare-fun m!5542495 () Bool)

(assert (=> b!4660154 m!5542495))

(declare-fun m!5542497 () Bool)

(assert (=> b!4660155 m!5542497))

(assert (=> b!4659665 d!1479564))

(declare-fun b!4660156 () Bool)

(declare-fun e!2907841 () List!52055)

(assert (=> b!4660156 (= e!2907841 (keys!18406 lt!1821667))))

(declare-fun bm!325586 () Bool)

(declare-fun call!325591 () Bool)

(assert (=> bm!325586 (= call!325591 (contains!15089 e!2907841 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun c!797693 () Bool)

(declare-fun c!797695 () Bool)

(assert (=> bm!325586 (= c!797693 c!797695)))

(declare-fun b!4660157 () Bool)

(assert (=> b!4660157 false))

(declare-fun lt!1821957 () Unit!118984)

(declare-fun lt!1821958 () Unit!118984)

(assert (=> b!4660157 (= lt!1821957 lt!1821958)))

(assert (=> b!4660157 (containsKey!2750 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> b!4660157 (= lt!1821958 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun e!2907840 () Unit!118984)

(declare-fun Unit!119118 () Unit!118984)

(assert (=> b!4660157 (= e!2907840 Unit!119118)))

(declare-fun d!1479566 () Bool)

(declare-fun e!2907839 () Bool)

(assert (=> d!1479566 e!2907839))

(declare-fun res!1960134 () Bool)

(assert (=> d!1479566 (=> res!1960134 e!2907839)))

(declare-fun e!2907837 () Bool)

(assert (=> d!1479566 (= res!1960134 e!2907837)))

(declare-fun res!1960135 () Bool)

(assert (=> d!1479566 (=> (not res!1960135) (not e!2907837))))

(declare-fun lt!1821955 () Bool)

(assert (=> d!1479566 (= res!1960135 (not lt!1821955))))

(declare-fun lt!1821959 () Bool)

(assert (=> d!1479566 (= lt!1821955 lt!1821959)))

(declare-fun lt!1821960 () Unit!118984)

(declare-fun e!2907836 () Unit!118984)

(assert (=> d!1479566 (= lt!1821960 e!2907836)))

(assert (=> d!1479566 (= c!797695 lt!1821959)))

(assert (=> d!1479566 (= lt!1821959 (containsKey!2750 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> d!1479566 (= (contains!15083 lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))) lt!1821955)))

(declare-fun b!4660158 () Bool)

(declare-fun Unit!119119 () Unit!118984)

(assert (=> b!4660158 (= e!2907840 Unit!119119)))

(declare-fun b!4660159 () Bool)

(assert (=> b!4660159 (= e!2907841 (getKeysList!757 (toList!5233 lt!1821667)))))

(declare-fun b!4660160 () Bool)

(declare-fun e!2907838 () Bool)

(assert (=> b!4660160 (= e!2907839 e!2907838)))

(declare-fun res!1960136 () Bool)

(assert (=> b!4660160 (=> (not res!1960136) (not e!2907838))))

(assert (=> b!4660160 (= res!1960136 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun b!4660161 () Bool)

(assert (=> b!4660161 (= e!2907838 (contains!15089 (keys!18406 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun b!4660162 () Bool)

(assert (=> b!4660162 (= e!2907836 e!2907840)))

(declare-fun c!797694 () Bool)

(assert (=> b!4660162 (= c!797694 call!325591)))

(declare-fun b!4660163 () Bool)

(declare-fun lt!1821954 () Unit!118984)

(assert (=> b!4660163 (= e!2907836 lt!1821954)))

(declare-fun lt!1821956 () Unit!118984)

(assert (=> b!4660163 (= lt!1821956 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660163 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun lt!1821961 () Unit!118984)

(assert (=> b!4660163 (= lt!1821961 lt!1821956)))

(assert (=> b!4660163 (= lt!1821954 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> b!4660163 call!325591))

(declare-fun b!4660164 () Bool)

(assert (=> b!4660164 (= e!2907837 (not (contains!15089 (keys!18406 lt!1821667) (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))))

(assert (= (and d!1479566 c!797695) b!4660163))

(assert (= (and d!1479566 (not c!797695)) b!4660162))

(assert (= (and b!4660162 c!797694) b!4660157))

(assert (= (and b!4660162 (not c!797694)) b!4660158))

(assert (= (or b!4660163 b!4660162) bm!325586))

(assert (= (and bm!325586 c!797693) b!4660159))

(assert (= (and bm!325586 (not c!797693)) b!4660156))

(assert (= (and d!1479566 res!1960135) b!4660164))

(assert (= (and d!1479566 (not res!1960134)) b!4660160))

(assert (= (and b!4660160 res!1960136) b!4660161))

(declare-fun m!5542499 () Bool)

(assert (=> d!1479566 m!5542499))

(assert (=> b!4660157 m!5542499))

(declare-fun m!5542501 () Bool)

(assert (=> b!4660157 m!5542501))

(declare-fun m!5542503 () Bool)

(assert (=> b!4660164 m!5542503))

(assert (=> b!4660164 m!5542503))

(declare-fun m!5542505 () Bool)

(assert (=> b!4660164 m!5542505))

(declare-fun m!5542507 () Bool)

(assert (=> b!4660159 m!5542507))

(assert (=> b!4660156 m!5542503))

(declare-fun m!5542509 () Bool)

(assert (=> b!4660163 m!5542509))

(declare-fun m!5542511 () Bool)

(assert (=> b!4660163 m!5542511))

(assert (=> b!4660163 m!5542511))

(declare-fun m!5542513 () Bool)

(assert (=> b!4660163 m!5542513))

(declare-fun m!5542515 () Bool)

(assert (=> b!4660163 m!5542515))

(assert (=> b!4660161 m!5542503))

(assert (=> b!4660161 m!5542503))

(assert (=> b!4660161 m!5542505))

(assert (=> b!4660160 m!5542511))

(assert (=> b!4660160 m!5542511))

(assert (=> b!4660160 m!5542513))

(declare-fun m!5542517 () Bool)

(assert (=> bm!325586 m!5542517))

(assert (=> b!4659665 d!1479566))

(declare-fun d!1479568 () Bool)

(declare-fun res!1960137 () Bool)

(declare-fun e!2907842 () Bool)

(assert (=> d!1479568 (=> res!1960137 e!2907842)))

(assert (=> d!1479568 (= res!1960137 ((_ is Nil!51928) (t!359168 (t!359168 oldBucket!40))))))

(assert (=> d!1479568 (= (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200077) e!2907842)))

(declare-fun b!4660165 () Bool)

(declare-fun e!2907843 () Bool)

(assert (=> b!4660165 (= e!2907842 e!2907843)))

(declare-fun res!1960138 () Bool)

(assert (=> b!4660165 (=> (not res!1960138) (not e!2907843))))

(assert (=> b!4660165 (= res!1960138 (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun b!4660166 () Bool)

(assert (=> b!4660166 (= e!2907843 (forall!11050 (t!359168 (t!359168 (t!359168 oldBucket!40))) lambda!200077))))

(assert (= (and d!1479568 (not res!1960137)) b!4660165))

(assert (= (and b!4660165 res!1960138) b!4660166))

(declare-fun b_lambda!174883 () Bool)

(assert (=> (not b_lambda!174883) (not b!4660165)))

(declare-fun m!5542519 () Bool)

(assert (=> b!4660165 m!5542519))

(declare-fun m!5542521 () Bool)

(assert (=> b!4660166 m!5542521))

(assert (=> b!4659734 d!1479568))

(declare-fun d!1479570 () Bool)

(assert (not d!1479570))

(assert (=> b!4659798 d!1479570))

(declare-fun d!1479572 () Bool)

(declare-fun res!1960139 () Bool)

(declare-fun e!2907844 () Bool)

(assert (=> d!1479572 (=> res!1960139 e!2907844)))

(assert (=> d!1479572 (= res!1960139 (and ((_ is Cons!51928) (t!359168 lt!1821153)) (= (_1!29821 (h!58080 (t!359168 lt!1821153))) key!4968)))))

(assert (=> d!1479572 (= (containsKey!2746 (t!359168 lt!1821153) key!4968) e!2907844)))

(declare-fun b!4660168 () Bool)

(declare-fun e!2907845 () Bool)

(assert (=> b!4660168 (= e!2907844 e!2907845)))

(declare-fun res!1960140 () Bool)

(assert (=> b!4660168 (=> (not res!1960140) (not e!2907845))))

(assert (=> b!4660168 (= res!1960140 ((_ is Cons!51928) (t!359168 lt!1821153)))))

(declare-fun b!4660169 () Bool)

(assert (=> b!4660169 (= e!2907845 (containsKey!2746 (t!359168 (t!359168 lt!1821153)) key!4968))))

(assert (= (and d!1479572 (not res!1960139)) b!4660168))

(assert (= (and b!4660168 res!1960140) b!4660169))

(declare-fun m!5542523 () Bool)

(assert (=> b!4660169 m!5542523))

(assert (=> b!4659673 d!1479572))

(declare-fun d!1479574 () Bool)

(declare-fun res!1960141 () Bool)

(declare-fun e!2907846 () Bool)

(assert (=> d!1479574 (=> res!1960141 e!2907846)))

(assert (=> d!1479574 (= res!1960141 (and ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(assert (=> d!1479574 (= (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) (_1!29821 (h!58080 (t!359168 oldBucket!40)))) e!2907846)))

(declare-fun b!4660170 () Bool)

(declare-fun e!2907847 () Bool)

(assert (=> b!4660170 (= e!2907846 e!2907847)))

(declare-fun res!1960142 () Bool)

(assert (=> b!4660170 (=> (not res!1960142) (not e!2907847))))

(assert (=> b!4660170 (= res!1960142 ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))))))

(declare-fun b!4660171 () Bool)

(assert (=> b!4660171 (= e!2907847 (containsKey!2746 (t!359168 (t!359168 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (= (and d!1479574 (not res!1960141)) b!4660170))

(assert (= (and b!4660170 res!1960142) b!4660171))

(declare-fun m!5542525 () Bool)

(assert (=> b!4660171 m!5542525))

(assert (=> b!4659764 d!1479574))

(declare-fun d!1479576 () Bool)

(declare-fun c!797698 () Bool)

(assert (=> d!1479576 (= c!797698 ((_ is Nil!51931) lt!1821633))))

(declare-fun e!2907850 () (InoxSet K!13280))

(assert (=> d!1479576 (= (content!9016 lt!1821633) e!2907850)))

(declare-fun b!4660176 () Bool)

(assert (=> b!4660176 (= e!2907850 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660177 () Bool)

(assert (=> b!4660177 (= e!2907850 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 lt!1821633) true) (content!9016 (t!359171 lt!1821633))))))

(assert (= (and d!1479576 c!797698) b!4660176))

(assert (= (and d!1479576 (not c!797698)) b!4660177))

(declare-fun m!5542527 () Bool)

(assert (=> b!4660177 m!5542527))

(declare-fun m!5542529 () Bool)

(assert (=> b!4660177 m!5542529))

(assert (=> b!4659597 d!1479576))

(declare-fun d!1479578 () Bool)

(declare-fun c!797699 () Bool)

(assert (=> d!1479578 (= c!797699 ((_ is Nil!51931) (map!11483 (toList!5233 lt!1821138) lambda!200133)))))

(declare-fun e!2907851 () (InoxSet K!13280))

(assert (=> d!1479578 (= (content!9016 (map!11483 (toList!5233 lt!1821138) lambda!200133)) e!2907851)))

(declare-fun b!4660178 () Bool)

(assert (=> b!4660178 (= e!2907851 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660179 () Bool)

(assert (=> b!4660179 (= e!2907851 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 (map!11483 (toList!5233 lt!1821138) lambda!200133)) true) (content!9016 (t!359171 (map!11483 (toList!5233 lt!1821138) lambda!200133)))))))

(assert (= (and d!1479578 c!797699) b!4660178))

(assert (= (and d!1479578 (not c!797699)) b!4660179))

(declare-fun m!5542531 () Bool)

(assert (=> b!4660179 m!5542531))

(declare-fun m!5542533 () Bool)

(assert (=> b!4660179 m!5542533))

(assert (=> b!4659597 d!1479578))

(declare-fun d!1479580 () Bool)

(declare-fun lt!1821973 () List!52055)

(declare-fun size!35975 (List!52055) Int)

(declare-fun size!35976 (List!52052) Int)

(assert (=> d!1479580 (= (size!35975 lt!1821973) (size!35976 (toList!5233 lt!1821138)))))

(declare-fun e!2907859 () List!52055)

(assert (=> d!1479580 (= lt!1821973 e!2907859)))

(declare-fun c!797702 () Bool)

(assert (=> d!1479580 (= c!797702 ((_ is Nil!51928) (toList!5233 lt!1821138)))))

(assert (=> d!1479580 (= (map!11483 (toList!5233 lt!1821138) lambda!200133) lt!1821973)))

(declare-fun b!4660191 () Bool)

(assert (=> b!4660191 (= e!2907859 Nil!51931)))

(declare-fun b!4660192 () Bool)

(declare-fun $colon$colon!1067 (List!52055 K!13280) List!52055)

(declare-fun dynLambda!21611 (Int tuple2!53054) K!13280)

(assert (=> b!4660192 (= e!2907859 ($colon$colon!1067 (map!11483 (t!359168 (toList!5233 lt!1821138)) lambda!200133) (dynLambda!21611 lambda!200133 (h!58080 (toList!5233 lt!1821138)))))))

(assert (= (and d!1479580 c!797702) b!4660191))

(assert (= (and d!1479580 (not c!797702)) b!4660192))

(declare-fun b_lambda!174887 () Bool)

(assert (=> (not b_lambda!174887) (not b!4660192)))

(declare-fun m!5542565 () Bool)

(assert (=> d!1479580 m!5542565))

(declare-fun m!5542569 () Bool)

(assert (=> d!1479580 m!5542569))

(declare-fun m!5542573 () Bool)

(assert (=> b!4660192 m!5542573))

(declare-fun m!5542577 () Bool)

(assert (=> b!4660192 m!5542577))

(assert (=> b!4660192 m!5542573))

(assert (=> b!4660192 m!5542577))

(declare-fun m!5542579 () Bool)

(assert (=> b!4660192 m!5542579))

(assert (=> b!4659597 d!1479580))

(declare-fun d!1479596 () Bool)

(assert (=> d!1479596 (= (get!17289 lt!1821758) (v!46137 lt!1821758))))

(assert (=> b!4659769 d!1479596))

(declare-fun d!1479598 () Bool)

(declare-fun c!797706 () Bool)

(assert (=> d!1479598 (= c!797706 (and ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))) (= (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138)))) key!4968)))))

(declare-fun e!2907866 () Option!11848)

(assert (=> d!1479598 (= (getValueByKey!1626 (t!359168 (toList!5233 lt!1821138)) key!4968) e!2907866)))

(declare-fun b!4660202 () Bool)

(assert (=> b!4660202 (= e!2907866 (Some!11847 (_2!29821 (h!58080 (t!359168 (toList!5233 lt!1821138))))))))

(declare-fun b!4660204 () Bool)

(declare-fun e!2907867 () Option!11848)

(assert (=> b!4660204 (= e!2907867 (getValueByKey!1626 (t!359168 (t!359168 (toList!5233 lt!1821138))) key!4968))))

(declare-fun b!4660205 () Bool)

(assert (=> b!4660205 (= e!2907867 None!11847)))

(declare-fun b!4660203 () Bool)

(assert (=> b!4660203 (= e!2907866 e!2907867)))

(declare-fun c!797707 () Bool)

(assert (=> b!4660203 (= c!797707 (and ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))) (not (= (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138)))) key!4968))))))

(assert (= (and d!1479598 c!797706) b!4660202))

(assert (= (and d!1479598 (not c!797706)) b!4660203))

(assert (= (and b!4660203 c!797707) b!4660204))

(assert (= (and b!4660203 (not c!797707)) b!4660205))

(declare-fun m!5542581 () Bool)

(assert (=> b!4660204 m!5542581))

(assert (=> b!4659690 d!1479598))

(declare-fun d!1479600 () Bool)

(declare-fun res!1960153 () Bool)

(declare-fun e!2907868 () Bool)

(assert (=> d!1479600 (=> res!1960153 e!2907868)))

(assert (=> d!1479600 (= res!1960153 (not ((_ is Cons!51928) (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))))

(assert (=> d!1479600 (= (noDuplicateKeys!1652 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))) e!2907868)))

(declare-fun b!4660206 () Bool)

(declare-fun e!2907869 () Bool)

(assert (=> b!4660206 (= e!2907868 e!2907869)))

(declare-fun res!1960154 () Bool)

(assert (=> b!4660206 (=> (not res!1960154) (not e!2907869))))

(assert (=> b!4660206 (= res!1960154 (not (containsKey!2746 (t!359168 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))) (_1!29821 (h!58080 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))))))

(declare-fun b!4660207 () Bool)

(assert (=> b!4660207 (= e!2907869 (noDuplicateKeys!1652 (t!359168 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))))

(assert (= (and d!1479600 (not res!1960153)) b!4660206))

(assert (= (and b!4660206 res!1960154) b!4660207))

(declare-fun m!5542589 () Bool)

(assert (=> b!4660206 m!5542589))

(declare-fun m!5542593 () Bool)

(assert (=> b!4660207 m!5542593))

(assert (=> bs!1066943 d!1479600))

(declare-fun b!4660208 () Bool)

(declare-fun e!2907875 () List!52055)

(assert (=> b!4660208 (= e!2907875 (keys!18406 lt!1821141))))

(declare-fun bm!325588 () Bool)

(declare-fun call!325593 () Bool)

(assert (=> bm!325588 (= call!325593 (contains!15089 e!2907875 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun c!797708 () Bool)

(declare-fun c!797710 () Bool)

(assert (=> bm!325588 (= c!797708 c!797710)))

(declare-fun b!4660209 () Bool)

(assert (=> b!4660209 false))

(declare-fun lt!1821985 () Unit!118984)

(declare-fun lt!1821986 () Unit!118984)

(assert (=> b!4660209 (= lt!1821985 lt!1821986)))

(assert (=> b!4660209 (containsKey!2750 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))

(assert (=> b!4660209 (= lt!1821986 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun e!2907874 () Unit!118984)

(declare-fun Unit!119122 () Unit!118984)

(assert (=> b!4660209 (= e!2907874 Unit!119122)))

(declare-fun d!1479602 () Bool)

(declare-fun e!2907873 () Bool)

(assert (=> d!1479602 e!2907873))

(declare-fun res!1960155 () Bool)

(assert (=> d!1479602 (=> res!1960155 e!2907873)))

(declare-fun e!2907871 () Bool)

(assert (=> d!1479602 (= res!1960155 e!2907871)))

(declare-fun res!1960156 () Bool)

(assert (=> d!1479602 (=> (not res!1960156) (not e!2907871))))

(declare-fun lt!1821983 () Bool)

(assert (=> d!1479602 (= res!1960156 (not lt!1821983))))

(declare-fun lt!1821987 () Bool)

(assert (=> d!1479602 (= lt!1821983 lt!1821987)))

(declare-fun lt!1821988 () Unit!118984)

(declare-fun e!2907870 () Unit!118984)

(assert (=> d!1479602 (= lt!1821988 e!2907870)))

(assert (=> d!1479602 (= c!797710 lt!1821987)))

(assert (=> d!1479602 (= lt!1821987 (containsKey!2750 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> d!1479602 (= (contains!15083 lt!1821141 (_1!29821 (h!58080 (toList!5233 lt!1821141)))) lt!1821983)))

(declare-fun b!4660210 () Bool)

(declare-fun Unit!119123 () Unit!118984)

(assert (=> b!4660210 (= e!2907874 Unit!119123)))

(declare-fun b!4660211 () Bool)

(assert (=> b!4660211 (= e!2907875 (getKeysList!757 (toList!5233 lt!1821141)))))

(declare-fun b!4660212 () Bool)

(declare-fun e!2907872 () Bool)

(assert (=> b!4660212 (= e!2907873 e!2907872)))

(declare-fun res!1960157 () Bool)

(assert (=> b!4660212 (=> (not res!1960157) (not e!2907872))))

(assert (=> b!4660212 (= res!1960157 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(declare-fun b!4660213 () Bool)

(assert (=> b!4660213 (= e!2907872 (contains!15089 (keys!18406 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun b!4660214 () Bool)

(assert (=> b!4660214 (= e!2907870 e!2907874)))

(declare-fun c!797709 () Bool)

(assert (=> b!4660214 (= c!797709 call!325593)))

(declare-fun b!4660215 () Bool)

(declare-fun lt!1821982 () Unit!118984)

(assert (=> b!4660215 (= e!2907870 lt!1821982)))

(declare-fun lt!1821984 () Unit!118984)

(assert (=> b!4660215 (= lt!1821984 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660215 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun lt!1821989 () Unit!118984)

(assert (=> b!4660215 (= lt!1821989 lt!1821984)))

(assert (=> b!4660215 (= lt!1821982 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660215 call!325593))

(declare-fun b!4660216 () Bool)

(assert (=> b!4660216 (= e!2907871 (not (contains!15089 (keys!18406 lt!1821141) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(assert (= (and d!1479602 c!797710) b!4660215))

(assert (= (and d!1479602 (not c!797710)) b!4660214))

(assert (= (and b!4660214 c!797709) b!4660209))

(assert (= (and b!4660214 (not c!797709)) b!4660210))

(assert (= (or b!4660215 b!4660214) bm!325588))

(assert (= (and bm!325588 c!797708) b!4660211))

(assert (= (and bm!325588 (not c!797708)) b!4660208))

(assert (= (and d!1479602 res!1960156) b!4660216))

(assert (= (and d!1479602 (not res!1960155)) b!4660212))

(assert (= (and b!4660212 res!1960157) b!4660213))

(declare-fun m!5542607 () Bool)

(assert (=> d!1479602 m!5542607))

(assert (=> b!4660209 m!5542607))

(declare-fun m!5542609 () Bool)

(assert (=> b!4660209 m!5542609))

(declare-fun m!5542611 () Bool)

(assert (=> b!4660216 m!5542611))

(assert (=> b!4660216 m!5542611))

(declare-fun m!5542613 () Bool)

(assert (=> b!4660216 m!5542613))

(declare-fun m!5542615 () Bool)

(assert (=> b!4660211 m!5542615))

(assert (=> b!4660208 m!5542611))

(declare-fun m!5542617 () Bool)

(assert (=> b!4660215 m!5542617))

(declare-fun m!5542619 () Bool)

(assert (=> b!4660215 m!5542619))

(assert (=> b!4660215 m!5542619))

(declare-fun m!5542621 () Bool)

(assert (=> b!4660215 m!5542621))

(declare-fun m!5542623 () Bool)

(assert (=> b!4660215 m!5542623))

(assert (=> b!4660213 m!5542611))

(assert (=> b!4660213 m!5542611))

(assert (=> b!4660213 m!5542613))

(assert (=> b!4660212 m!5542619))

(assert (=> b!4660212 m!5542619))

(assert (=> b!4660212 m!5542621))

(declare-fun m!5542625 () Bool)

(assert (=> bm!325588 m!5542625))

(assert (=> bs!1066958 d!1479602))

(declare-fun d!1479606 () Bool)

(declare-fun res!1960158 () Bool)

(declare-fun e!2907876 () Bool)

(assert (=> d!1479606 (=> res!1960158 e!2907876)))

(assert (=> d!1479606 (= res!1960158 (and ((_ is Cons!51928) (toList!5233 lt!1821404)) (= (_1!29821 (h!58080 (toList!5233 lt!1821404))) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (=> d!1479606 (= (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) e!2907876)))

(declare-fun b!4660217 () Bool)

(declare-fun e!2907877 () Bool)

(assert (=> b!4660217 (= e!2907876 e!2907877)))

(declare-fun res!1960159 () Bool)

(assert (=> b!4660217 (=> (not res!1960159) (not e!2907877))))

(assert (=> b!4660217 (= res!1960159 ((_ is Cons!51928) (toList!5233 lt!1821404)))))

(declare-fun b!4660218 () Bool)

(assert (=> b!4660218 (= e!2907877 (containsKey!2750 (t!359168 (toList!5233 lt!1821404)) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479606 (not res!1960158)) b!4660217))

(assert (= (and b!4660217 res!1960159) b!4660218))

(declare-fun m!5542627 () Bool)

(assert (=> b!4660218 m!5542627))

(assert (=> d!1479166 d!1479606))

(assert (=> bs!1066953 d!1479358))

(declare-fun d!1479608 () Bool)

(declare-fun lt!1821991 () Bool)

(assert (=> d!1479608 (= lt!1821991 (select (content!9016 (keys!18406 lt!1821412)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907879 () Bool)

(assert (=> d!1479608 (= lt!1821991 e!2907879)))

(declare-fun res!1960161 () Bool)

(assert (=> d!1479608 (=> (not res!1960161) (not e!2907879))))

(assert (=> d!1479608 (= res!1960161 ((_ is Cons!51931) (keys!18406 lt!1821412)))))

(assert (=> d!1479608 (= (contains!15089 (keys!18406 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) lt!1821991)))

(declare-fun b!4660219 () Bool)

(declare-fun e!2907878 () Bool)

(assert (=> b!4660219 (= e!2907879 e!2907878)))

(declare-fun res!1960160 () Bool)

(assert (=> b!4660219 (=> res!1960160 e!2907878)))

(assert (=> b!4660219 (= res!1960160 (= (h!58085 (keys!18406 lt!1821412)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660220 () Bool)

(assert (=> b!4660220 (= e!2907878 (contains!15089 (t!359171 (keys!18406 lt!1821412)) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479608 res!1960161) b!4660219))

(assert (= (and b!4660219 (not res!1960160)) b!4660220))

(assert (=> d!1479608 m!5541573))

(declare-fun m!5542629 () Bool)

(assert (=> d!1479608 m!5542629))

(declare-fun m!5542631 () Bool)

(assert (=> d!1479608 m!5542631))

(declare-fun m!5542633 () Bool)

(assert (=> b!4660220 m!5542633))

(assert (=> b!4659722 d!1479608))

(declare-fun bs!1067213 () Bool)

(declare-fun b!4660222 () Bool)

(assert (= bs!1067213 (and b!4660222 b!4659995)))

(declare-fun lambda!200197 () Int)

(assert (=> bs!1067213 (= (= (toList!5233 lt!1821412) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200197 lambda!200182))))

(declare-fun bs!1067214 () Bool)

(assert (= bs!1067214 (and b!4660222 b!4659596)))

(assert (=> bs!1067214 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821138)) (= lambda!200197 lambda!200132))))

(declare-fun bs!1067215 () Bool)

(assert (= bs!1067215 (and b!4660222 b!4659641)))

(assert (=> bs!1067215 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 lt!1821138))) (= lambda!200197 lambda!200142))))

(declare-fun bs!1067216 () Bool)

(assert (= bs!1067216 (and b!4660222 b!4659639)))

(assert (=> bs!1067216 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821138)) (= lambda!200197 lambda!200144))))

(declare-fun bs!1067217 () Bool)

(assert (= bs!1067217 (and b!4660222 b!4659642)))

(assert (=> bs!1067217 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200197 lambda!200143))))

(assert (=> b!4660222 true))

(declare-fun bs!1067218 () Bool)

(declare-fun b!4660223 () Bool)

(assert (= bs!1067218 (and b!4660223 b!4659597)))

(declare-fun lambda!200198 () Int)

(assert (=> bs!1067218 (= lambda!200198 lambda!200133)))

(declare-fun bs!1067219 () Bool)

(assert (= bs!1067219 (and b!4660223 b!4659640)))

(assert (=> bs!1067219 (= lambda!200198 lambda!200145)))

(declare-fun bs!1067220 () Bool)

(assert (= bs!1067220 (and b!4660223 b!4659996)))

(assert (=> bs!1067220 (= lambda!200198 lambda!200184)))

(declare-fun d!1479610 () Bool)

(declare-fun e!2907880 () Bool)

(assert (=> d!1479610 e!2907880))

(declare-fun res!1960162 () Bool)

(assert (=> d!1479610 (=> (not res!1960162) (not e!2907880))))

(declare-fun lt!1821992 () List!52055)

(assert (=> d!1479610 (= res!1960162 (noDuplicate!844 lt!1821992))))

(assert (=> d!1479610 (= lt!1821992 (getKeysList!757 (toList!5233 lt!1821412)))))

(assert (=> d!1479610 (= (keys!18406 lt!1821412) lt!1821992)))

(declare-fun b!4660221 () Bool)

(declare-fun res!1960163 () Bool)

(assert (=> b!4660221 (=> (not res!1960163) (not e!2907880))))

(assert (=> b!4660221 (= res!1960163 (= (length!544 lt!1821992) (length!545 (toList!5233 lt!1821412))))))

(declare-fun res!1960164 () Bool)

(assert (=> b!4660222 (=> (not res!1960164) (not e!2907880))))

(assert (=> b!4660222 (= res!1960164 (forall!11052 lt!1821992 lambda!200197))))

(assert (=> b!4660223 (= e!2907880 (= (content!9016 lt!1821992) (content!9016 (map!11483 (toList!5233 lt!1821412) lambda!200198))))))

(assert (= (and d!1479610 res!1960162) b!4660221))

(assert (= (and b!4660221 res!1960163) b!4660222))

(assert (= (and b!4660222 res!1960164) b!4660223))

(declare-fun m!5542643 () Bool)

(assert (=> d!1479610 m!5542643))

(assert (=> d!1479610 m!5541577))

(declare-fun m!5542645 () Bool)

(assert (=> b!4660221 m!5542645))

(declare-fun m!5542647 () Bool)

(assert (=> b!4660221 m!5542647))

(declare-fun m!5542649 () Bool)

(assert (=> b!4660222 m!5542649))

(declare-fun m!5542651 () Bool)

(assert (=> b!4660223 m!5542651))

(declare-fun m!5542653 () Bool)

(assert (=> b!4660223 m!5542653))

(assert (=> b!4660223 m!5542653))

(declare-fun m!5542655 () Bool)

(assert (=> b!4660223 m!5542655))

(assert (=> b!4659722 d!1479610))

(declare-fun bs!1067222 () Bool)

(declare-fun b!4660227 () Bool)

(assert (= bs!1067222 (and b!4660227 d!1478838)))

(declare-fun lambda!200199 () Int)

(assert (=> bs!1067222 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821400) (= lambda!200199 lambda!200078))))

(declare-fun bs!1067223 () Bool)

(assert (= bs!1067223 (and b!4660227 b!4659725)))

(assert (=> bs!1067223 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200199 lambda!200156))))

(declare-fun bs!1067224 () Bool)

(assert (= bs!1067224 (and b!4660227 b!4659241)))

(assert (=> bs!1067224 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821404) (= lambda!200199 lambda!200077))))

(declare-fun bs!1067225 () Bool)

(assert (= bs!1067225 (and b!4660227 b!4659723)))

(assert (=> bs!1067225 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200199 lambda!200157))))

(declare-fun bs!1067226 () Bool)

(assert (= bs!1067226 (and b!4660227 b!4659667)))

(assert (=> bs!1067226 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200199 lambda!200146))))

(declare-fun bs!1067227 () Bool)

(assert (= bs!1067227 (and b!4660227 d!1478768)))

(assert (=> bs!1067227 (not (= lambda!200199 lambda!199986))))

(declare-fun bs!1067228 () Bool)

(assert (= bs!1067228 (and b!4660227 d!1478866)))

(assert (=> bs!1067228 (not (= lambda!200199 lambda!200086))))

(assert (=> bs!1067224 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200199 lambda!200076))))

(declare-fun bs!1067229 () Bool)

(assert (= bs!1067229 (and b!4660227 d!1479528)))

(assert (=> bs!1067229 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821933) (= lambda!200199 lambda!200192))))

(assert (=> bs!1067225 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821726) (= lambda!200199 lambda!200158))))

(declare-fun bs!1067232 () Bool)

(assert (= bs!1067232 (and b!4660227 d!1479170)))

(assert (=> bs!1067232 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821722) (= lambda!200199 lambda!200159))))

(declare-fun bs!1067234 () Bool)

(assert (= bs!1067234 (and b!4660227 b!4659243)))

(assert (=> bs!1067234 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200199 lambda!200075))))

(declare-fun bs!1067236 () Bool)

(assert (= bs!1067236 (and b!4660227 b!4660124)))

(assert (=> bs!1067236 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821937) (= lambda!200199 lambda!200191))))

(declare-fun bs!1067238 () Bool)

(assert (= bs!1067238 (and b!4660227 b!4659665)))

(assert (=> bs!1067238 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200199 lambda!200147))))

(declare-fun bs!1067240 () Bool)

(assert (= bs!1067240 (and b!4660227 d!1479132)))

(assert (=> bs!1067240 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821663) (= lambda!200199 lambda!200149))))

(assert (=> bs!1067236 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200199 lambda!200190))))

(declare-fun bs!1067243 () Bool)

(assert (= bs!1067243 (and b!4660227 d!1479526)))

(assert (=> bs!1067243 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821667) (= lambda!200199 lambda!200185))))

(declare-fun bs!1067245 () Bool)

(assert (= bs!1067245 (and b!4660227 b!4660126)))

(assert (=> bs!1067245 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200199 lambda!200188))))

(declare-fun bs!1067246 () Bool)

(assert (= bs!1067246 (and b!4660227 d!1479158)))

(assert (=> bs!1067246 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821404) (= lambda!200199 lambda!200155))))

(declare-fun bs!1067248 () Bool)

(assert (= bs!1067248 (and b!4660227 d!1479372)))

(assert (=> bs!1067248 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200199 lambda!200180))))

(assert (=> bs!1067238 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821667) (= lambda!200199 lambda!200148))))

(declare-fun bs!1067250 () Bool)

(assert (= bs!1067250 (and b!4660227 d!1479240)))

(assert (=> bs!1067250 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200199 lambda!200166))))

(assert (=> b!4660227 true))

(declare-fun bs!1067258 () Bool)

(declare-fun b!4660225 () Bool)

(assert (= bs!1067258 (and b!4660225 d!1478838)))

(declare-fun lambda!200201 () Int)

(assert (=> bs!1067258 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821400) (= lambda!200201 lambda!200078))))

(declare-fun bs!1067260 () Bool)

(assert (= bs!1067260 (and b!4660225 b!4659725)))

(assert (=> bs!1067260 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200201 lambda!200156))))

(declare-fun bs!1067261 () Bool)

(assert (= bs!1067261 (and b!4660225 b!4659241)))

(assert (=> bs!1067261 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821404) (= lambda!200201 lambda!200077))))

(declare-fun bs!1067262 () Bool)

(assert (= bs!1067262 (and b!4660225 b!4659723)))

(assert (=> bs!1067262 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200201 lambda!200157))))

(declare-fun bs!1067263 () Bool)

(assert (= bs!1067263 (and b!4660225 b!4659667)))

(assert (=> bs!1067263 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200201 lambda!200146))))

(declare-fun bs!1067264 () Bool)

(assert (= bs!1067264 (and b!4660225 d!1478768)))

(assert (=> bs!1067264 (not (= lambda!200201 lambda!199986))))

(declare-fun bs!1067265 () Bool)

(assert (= bs!1067265 (and b!4660225 d!1478866)))

(assert (=> bs!1067265 (not (= lambda!200201 lambda!200086))))

(assert (=> bs!1067261 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200201 lambda!200076))))

(declare-fun bs!1067266 () Bool)

(assert (= bs!1067266 (and b!4660225 d!1479528)))

(assert (=> bs!1067266 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821933) (= lambda!200201 lambda!200192))))

(declare-fun bs!1067267 () Bool)

(assert (= bs!1067267 (and b!4660225 b!4660227)))

(assert (=> bs!1067267 (= lambda!200201 lambda!200199)))

(assert (=> bs!1067262 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821726) (= lambda!200201 lambda!200158))))

(declare-fun bs!1067269 () Bool)

(assert (= bs!1067269 (and b!4660225 d!1479170)))

(assert (=> bs!1067269 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821722) (= lambda!200201 lambda!200159))))

(declare-fun bs!1067270 () Bool)

(assert (= bs!1067270 (and b!4660225 b!4659243)))

(assert (=> bs!1067270 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200201 lambda!200075))))

(declare-fun bs!1067272 () Bool)

(assert (= bs!1067272 (and b!4660225 b!4660124)))

(assert (=> bs!1067272 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821937) (= lambda!200201 lambda!200191))))

(declare-fun bs!1067274 () Bool)

(assert (= bs!1067274 (and b!4660225 b!4659665)))

(assert (=> bs!1067274 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200201 lambda!200147))))

(declare-fun bs!1067276 () Bool)

(assert (= bs!1067276 (and b!4660225 d!1479132)))

(assert (=> bs!1067276 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821663) (= lambda!200201 lambda!200149))))

(assert (=> bs!1067272 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200201 lambda!200190))))

(declare-fun bs!1067279 () Bool)

(assert (= bs!1067279 (and b!4660225 d!1479526)))

(assert (=> bs!1067279 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821667) (= lambda!200201 lambda!200185))))

(declare-fun bs!1067281 () Bool)

(assert (= bs!1067281 (and b!4660225 b!4660126)))

(assert (=> bs!1067281 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200201 lambda!200188))))

(declare-fun bs!1067283 () Bool)

(assert (= bs!1067283 (and b!4660225 d!1479158)))

(assert (=> bs!1067283 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821404) (= lambda!200201 lambda!200155))))

(declare-fun bs!1067284 () Bool)

(assert (= bs!1067284 (and b!4660225 d!1479372)))

(assert (=> bs!1067284 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200201 lambda!200180))))

(assert (=> bs!1067274 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821667) (= lambda!200201 lambda!200148))))

(declare-fun bs!1067286 () Bool)

(assert (= bs!1067286 (and b!4660225 d!1479240)))

(assert (=> bs!1067286 (= (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1821141) (= lambda!200201 lambda!200166))))

(assert (=> b!4660225 true))

(declare-fun lambda!200203 () Int)

(declare-fun lt!1822000 () ListMap!4573)

(assert (=> bs!1067258 (= (= lt!1822000 lt!1821400) (= lambda!200203 lambda!200078))))

(assert (=> bs!1067260 (= (= lt!1822000 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200203 lambda!200156))))

(assert (=> bs!1067261 (= (= lt!1822000 lt!1821404) (= lambda!200203 lambda!200077))))

(assert (=> bs!1067262 (= (= lt!1822000 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200203 lambda!200157))))

(assert (=> bs!1067264 (not (= lambda!200203 lambda!199986))))

(assert (=> bs!1067265 (not (= lambda!200203 lambda!200086))))

(assert (=> bs!1067261 (= (= lt!1822000 lt!1821141) (= lambda!200203 lambda!200076))))

(assert (=> bs!1067266 (= (= lt!1822000 lt!1821933) (= lambda!200203 lambda!200192))))

(assert (=> bs!1067267 (= (= lt!1822000 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200203 lambda!200199))))

(assert (=> bs!1067262 (= (= lt!1822000 lt!1821726) (= lambda!200203 lambda!200158))))

(assert (=> bs!1067269 (= (= lt!1822000 lt!1821722) (= lambda!200203 lambda!200159))))

(assert (=> bs!1067270 (= (= lt!1822000 lt!1821141) (= lambda!200203 lambda!200075))))

(assert (=> bs!1067272 (= (= lt!1822000 lt!1821937) (= lambda!200203 lambda!200191))))

(assert (=> bs!1067274 (= (= lt!1822000 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200203 lambda!200147))))

(assert (=> bs!1067276 (= (= lt!1822000 lt!1821663) (= lambda!200203 lambda!200149))))

(assert (=> bs!1067272 (= (= lt!1822000 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200203 lambda!200190))))

(assert (=> bs!1067279 (= (= lt!1822000 lt!1821667) (= lambda!200203 lambda!200185))))

(assert (=> bs!1067281 (= (= lt!1822000 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200203 lambda!200188))))

(assert (=> bs!1067283 (= (= lt!1822000 lt!1821404) (= lambda!200203 lambda!200155))))

(assert (=> bs!1067263 (= (= lt!1822000 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200203 lambda!200146))))

(assert (=> b!4660225 (= (= lt!1822000 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200203 lambda!200201))))

(assert (=> bs!1067284 (= (= lt!1822000 lt!1821141) (= lambda!200203 lambda!200180))))

(assert (=> bs!1067274 (= (= lt!1822000 lt!1821667) (= lambda!200203 lambda!200148))))

(assert (=> bs!1067286 (= (= lt!1822000 lt!1821141) (= lambda!200203 lambda!200166))))

(assert (=> b!4660225 true))

(declare-fun bs!1067298 () Bool)

(declare-fun d!1479614 () Bool)

(assert (= bs!1067298 (and d!1479614 b!4660225)))

(declare-fun lt!1821996 () ListMap!4573)

(declare-fun lambda!200205 () Int)

(assert (=> bs!1067298 (= (= lt!1821996 lt!1822000) (= lambda!200205 lambda!200203))))

(declare-fun bs!1067299 () Bool)

(assert (= bs!1067299 (and d!1479614 d!1478838)))

(assert (=> bs!1067299 (= (= lt!1821996 lt!1821400) (= lambda!200205 lambda!200078))))

(declare-fun bs!1067300 () Bool)

(assert (= bs!1067300 (and d!1479614 b!4659725)))

(assert (=> bs!1067300 (= (= lt!1821996 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200205 lambda!200156))))

(declare-fun bs!1067301 () Bool)

(assert (= bs!1067301 (and d!1479614 b!4659241)))

(assert (=> bs!1067301 (= (= lt!1821996 lt!1821404) (= lambda!200205 lambda!200077))))

(declare-fun bs!1067302 () Bool)

(assert (= bs!1067302 (and d!1479614 b!4659723)))

(assert (=> bs!1067302 (= (= lt!1821996 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200205 lambda!200157))))

(declare-fun bs!1067303 () Bool)

(assert (= bs!1067303 (and d!1479614 d!1478768)))

(assert (=> bs!1067303 (not (= lambda!200205 lambda!199986))))

(declare-fun bs!1067304 () Bool)

(assert (= bs!1067304 (and d!1479614 d!1478866)))

(assert (=> bs!1067304 (not (= lambda!200205 lambda!200086))))

(assert (=> bs!1067301 (= (= lt!1821996 lt!1821141) (= lambda!200205 lambda!200076))))

(declare-fun bs!1067305 () Bool)

(assert (= bs!1067305 (and d!1479614 d!1479528)))

(assert (=> bs!1067305 (= (= lt!1821996 lt!1821933) (= lambda!200205 lambda!200192))))

(declare-fun bs!1067306 () Bool)

(assert (= bs!1067306 (and d!1479614 b!4660227)))

(assert (=> bs!1067306 (= (= lt!1821996 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200205 lambda!200199))))

(assert (=> bs!1067302 (= (= lt!1821996 lt!1821726) (= lambda!200205 lambda!200158))))

(declare-fun bs!1067307 () Bool)

(assert (= bs!1067307 (and d!1479614 d!1479170)))

(assert (=> bs!1067307 (= (= lt!1821996 lt!1821722) (= lambda!200205 lambda!200159))))

(declare-fun bs!1067308 () Bool)

(assert (= bs!1067308 (and d!1479614 b!4659243)))

(assert (=> bs!1067308 (= (= lt!1821996 lt!1821141) (= lambda!200205 lambda!200075))))

(declare-fun bs!1067309 () Bool)

(assert (= bs!1067309 (and d!1479614 b!4660124)))

(assert (=> bs!1067309 (= (= lt!1821996 lt!1821937) (= lambda!200205 lambda!200191))))

(declare-fun bs!1067310 () Bool)

(assert (= bs!1067310 (and d!1479614 b!4659665)))

(assert (=> bs!1067310 (= (= lt!1821996 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200205 lambda!200147))))

(declare-fun bs!1067311 () Bool)

(assert (= bs!1067311 (and d!1479614 d!1479132)))

(assert (=> bs!1067311 (= (= lt!1821996 lt!1821663) (= lambda!200205 lambda!200149))))

(assert (=> bs!1067309 (= (= lt!1821996 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200205 lambda!200190))))

(declare-fun bs!1067314 () Bool)

(assert (= bs!1067314 (and d!1479614 d!1479526)))

(assert (=> bs!1067314 (= (= lt!1821996 lt!1821667) (= lambda!200205 lambda!200185))))

(declare-fun bs!1067316 () Bool)

(assert (= bs!1067316 (and d!1479614 b!4660126)))

(assert (=> bs!1067316 (= (= lt!1821996 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200205 lambda!200188))))

(declare-fun bs!1067317 () Bool)

(assert (= bs!1067317 (and d!1479614 d!1479158)))

(assert (=> bs!1067317 (= (= lt!1821996 lt!1821404) (= lambda!200205 lambda!200155))))

(declare-fun bs!1067318 () Bool)

(assert (= bs!1067318 (and d!1479614 b!4659667)))

(assert (=> bs!1067318 (= (= lt!1821996 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200205 lambda!200146))))

(assert (=> bs!1067298 (= (= lt!1821996 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200205 lambda!200201))))

(declare-fun bs!1067320 () Bool)

(assert (= bs!1067320 (and d!1479614 d!1479372)))

(assert (=> bs!1067320 (= (= lt!1821996 lt!1821141) (= lambda!200205 lambda!200180))))

(assert (=> bs!1067310 (= (= lt!1821996 lt!1821667) (= lambda!200205 lambda!200148))))

(declare-fun bs!1067323 () Bool)

(assert (= bs!1067323 (and d!1479614 d!1479240)))

(assert (=> bs!1067323 (= (= lt!1821996 lt!1821141) (= lambda!200205 lambda!200166))))

(assert (=> d!1479614 true))

(declare-fun e!2907884 () ListMap!4573)

(assert (=> b!4660225 (= e!2907884 lt!1822000)))

(declare-fun lt!1822008 () ListMap!4573)

(assert (=> b!4660225 (= lt!1822008 (+!1992 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(assert (=> b!4660225 (= lt!1822000 (addToMapMapFromBucket!1109 (t!359168 (_2!29822 (h!58081 (toList!5234 lt!1821147)))) (+!1992 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))))

(declare-fun lt!1822012 () Unit!118984)

(declare-fun call!325596 () Unit!118984)

(assert (=> b!4660225 (= lt!1822012 call!325596)))

(assert (=> b!4660225 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lambda!200201)))

(declare-fun lt!1822009 () Unit!118984)

(assert (=> b!4660225 (= lt!1822009 lt!1822012)))

(assert (=> b!4660225 (forall!11050 (toList!5233 lt!1822008) lambda!200203)))

(declare-fun lt!1822006 () Unit!118984)

(declare-fun Unit!119124 () Unit!118984)

(assert (=> b!4660225 (= lt!1822006 Unit!119124)))

(assert (=> b!4660225 (forall!11050 (t!359168 (_2!29822 (h!58081 (toList!5234 lt!1821147)))) lambda!200203)))

(declare-fun lt!1822010 () Unit!118984)

(declare-fun Unit!119125 () Unit!118984)

(assert (=> b!4660225 (= lt!1822010 Unit!119125)))

(declare-fun lt!1821995 () Unit!118984)

(declare-fun Unit!119126 () Unit!118984)

(assert (=> b!4660225 (= lt!1821995 Unit!119126)))

(declare-fun lt!1822014 () Unit!118984)

(assert (=> b!4660225 (= lt!1822014 (forallContained!3250 (toList!5233 lt!1822008) lambda!200203 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(assert (=> b!4660225 (contains!15083 lt!1822008 (_1!29821 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(declare-fun lt!1821997 () Unit!118984)

(declare-fun Unit!119127 () Unit!118984)

(assert (=> b!4660225 (= lt!1821997 Unit!119127)))

(assert (=> b!4660225 (contains!15083 lt!1822000 (_1!29821 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))))

(declare-fun lt!1822002 () Unit!118984)

(declare-fun Unit!119128 () Unit!118984)

(assert (=> b!4660225 (= lt!1822002 Unit!119128)))

(assert (=> b!4660225 (forall!11050 (_2!29822 (h!58081 (toList!5234 lt!1821147))) lambda!200203)))

(declare-fun lt!1822004 () Unit!118984)

(declare-fun Unit!119129 () Unit!118984)

(assert (=> b!4660225 (= lt!1822004 Unit!119129)))

(declare-fun call!325594 () Bool)

(assert (=> b!4660225 call!325594))

(declare-fun lt!1821999 () Unit!118984)

(declare-fun Unit!119130 () Unit!118984)

(assert (=> b!4660225 (= lt!1821999 Unit!119130)))

(declare-fun lt!1822007 () Unit!118984)

(declare-fun Unit!119131 () Unit!118984)

(assert (=> b!4660225 (= lt!1822007 Unit!119131)))

(declare-fun lt!1822011 () Unit!118984)

(assert (=> b!4660225 (= lt!1822011 (addForallContainsKeyThenBeforeAdding!605 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1822000 (_1!29821 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147))))) (_2!29821 (h!58080 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))))

(assert (=> b!4660225 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lambda!200203)))

(declare-fun lt!1821994 () Unit!118984)

(assert (=> b!4660225 (= lt!1821994 lt!1822011)))

(assert (=> b!4660225 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lambda!200203)))

(declare-fun lt!1822001 () Unit!118984)

(declare-fun Unit!119132 () Unit!118984)

(assert (=> b!4660225 (= lt!1822001 Unit!119132)))

(declare-fun res!1960168 () Bool)

(declare-fun call!325595 () Bool)

(assert (=> b!4660225 (= res!1960168 call!325595)))

(declare-fun e!2907883 () Bool)

(assert (=> b!4660225 (=> (not res!1960168) (not e!2907883))))

(assert (=> b!4660225 e!2907883))

(declare-fun lt!1822013 () Unit!118984)

(declare-fun Unit!119133 () Unit!118984)

(assert (=> b!4660225 (= lt!1822013 Unit!119133)))

(declare-fun e!2907882 () Bool)

(assert (=> d!1479614 e!2907882))

(declare-fun res!1960167 () Bool)

(assert (=> d!1479614 (=> (not res!1960167) (not e!2907882))))

(assert (=> d!1479614 (= res!1960167 (forall!11050 (_2!29822 (h!58081 (toList!5234 lt!1821147))) lambda!200205))))

(assert (=> d!1479614 (= lt!1821996 e!2907884)))

(declare-fun c!797711 () Bool)

(assert (=> d!1479614 (= c!797711 ((_ is Nil!51928) (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(assert (=> d!1479614 (noDuplicateKeys!1652 (_2!29822 (h!58081 (toList!5234 lt!1821147))))))

(assert (=> d!1479614 (= (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (toList!5234 lt!1821147))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lt!1821996)))

(declare-fun b!4660226 () Bool)

(assert (=> b!4660226 (= e!2907882 (invariantList!1306 (toList!5233 lt!1821996)))))

(declare-fun bm!325589 () Bool)

(assert (=> bm!325589 (= call!325594 (forall!11050 (ite c!797711 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (toList!5233 lt!1822008)) (ite c!797711 lambda!200199 lambda!200203)))))

(declare-fun bm!325590 () Bool)

(assert (=> bm!325590 (= call!325595 (forall!11050 (ite c!797711 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (_2!29822 (h!58081 (toList!5234 lt!1821147)))) (ite c!797711 lambda!200199 lambda!200203)))))

(assert (=> b!4660227 (= e!2907884 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))))))

(declare-fun lt!1822003 () Unit!118984)

(assert (=> b!4660227 (= lt!1822003 call!325596)))

(assert (=> b!4660227 call!325594))

(declare-fun lt!1822005 () Unit!118984)

(assert (=> b!4660227 (= lt!1822005 lt!1822003)))

(assert (=> b!4660227 call!325595))

(declare-fun lt!1821998 () Unit!118984)

(declare-fun Unit!119134 () Unit!118984)

(assert (=> b!4660227 (= lt!1821998 Unit!119134)))

(declare-fun b!4660228 () Bool)

(assert (=> b!4660228 (= e!2907883 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lambda!200203))))

(declare-fun b!4660229 () Bool)

(declare-fun res!1960166 () Bool)

(assert (=> b!4660229 (=> (not res!1960166) (not e!2907882))))

(assert (=> b!4660229 (= res!1960166 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) lambda!200205))))

(declare-fun bm!325591 () Bool)

(assert (=> bm!325591 (= call!325596 (lemmaContainsAllItsOwnKeys!606 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))))))

(assert (= (and d!1479614 c!797711) b!4660227))

(assert (= (and d!1479614 (not c!797711)) b!4660225))

(assert (= (and b!4660225 res!1960168) b!4660228))

(assert (= (or b!4660227 b!4660225) bm!325591))

(assert (= (or b!4660227 b!4660225) bm!325590))

(assert (= (or b!4660227 b!4660225) bm!325589))

(assert (= (and d!1479614 res!1960167) b!4660229))

(assert (= (and b!4660229 res!1960166) b!4660226))

(declare-fun m!5542663 () Bool)

(assert (=> bm!325589 m!5542663))

(assert (=> bm!325591 m!5541351))

(declare-fun m!5542665 () Bool)

(assert (=> bm!325591 m!5542665))

(declare-fun m!5542667 () Bool)

(assert (=> b!4660225 m!5542667))

(declare-fun m!5542669 () Bool)

(assert (=> b!4660225 m!5542669))

(declare-fun m!5542671 () Bool)

(assert (=> b!4660225 m!5542671))

(assert (=> b!4660225 m!5541351))

(declare-fun m!5542673 () Bool)

(assert (=> b!4660225 m!5542673))

(declare-fun m!5542675 () Bool)

(assert (=> b!4660225 m!5542675))

(declare-fun m!5542677 () Bool)

(assert (=> b!4660225 m!5542677))

(declare-fun m!5542679 () Bool)

(assert (=> b!4660225 m!5542679))

(declare-fun m!5542681 () Bool)

(assert (=> b!4660225 m!5542681))

(declare-fun m!5542683 () Bool)

(assert (=> b!4660225 m!5542683))

(declare-fun m!5542685 () Bool)

(assert (=> b!4660225 m!5542685))

(assert (=> b!4660225 m!5541351))

(assert (=> b!4660225 m!5542679))

(declare-fun m!5542687 () Bool)

(assert (=> b!4660225 m!5542687))

(assert (=> b!4660225 m!5542683))

(declare-fun m!5542689 () Bool)

(assert (=> d!1479614 m!5542689))

(assert (=> d!1479614 m!5541789))

(assert (=> b!4660228 m!5542683))

(declare-fun m!5542691 () Bool)

(assert (=> bm!325590 m!5542691))

(declare-fun m!5542693 () Bool)

(assert (=> b!4660229 m!5542693))

(declare-fun m!5542695 () Bool)

(assert (=> b!4660226 m!5542695))

(assert (=> b!4659566 d!1479614))

(declare-fun bs!1067339 () Bool)

(declare-fun d!1479620 () Bool)

(assert (= bs!1067339 (and d!1479620 b!4658974)))

(declare-fun lambda!200207 () Int)

(assert (=> bs!1067339 (= lambda!200207 lambda!199980)))

(declare-fun bs!1067340 () Bool)

(assert (= bs!1067340 (and d!1479620 d!1479088)))

(assert (=> bs!1067340 (= lambda!200207 lambda!200127)))

(declare-fun bs!1067341 () Bool)

(assert (= bs!1067341 (and d!1479620 d!1479212)))

(assert (=> bs!1067341 (not (= lambda!200207 lambda!200160))))

(declare-fun bs!1067342 () Bool)

(assert (= bs!1067342 (and d!1479620 d!1478772)))

(assert (=> bs!1067342 (= lambda!200207 lambda!200029)))

(declare-fun bs!1067343 () Bool)

(assert (= bs!1067343 (and d!1479620 d!1479134)))

(assert (=> bs!1067343 (= lambda!200207 lambda!200150)))

(declare-fun bs!1067344 () Bool)

(assert (= bs!1067344 (and d!1479620 d!1478850)))

(assert (=> bs!1067344 (= lambda!200207 lambda!200081)))

(declare-fun bs!1067345 () Bool)

(assert (= bs!1067345 (and d!1479620 d!1479238)))

(assert (=> bs!1067345 (= lambda!200207 lambda!200163)))

(declare-fun bs!1067346 () Bool)

(assert (= bs!1067346 (and d!1479620 d!1478858)))

(assert (=> bs!1067346 (not (= lambda!200207 lambda!200085))))

(declare-fun bs!1067347 () Bool)

(assert (= bs!1067347 (and d!1479620 d!1478856)))

(assert (=> bs!1067347 (= lambda!200207 lambda!200082)))

(declare-fun bs!1067348 () Bool)

(assert (= bs!1067348 (and d!1479620 d!1478820)))

(assert (=> bs!1067348 (= lambda!200207 lambda!200035)))

(declare-fun lt!1822036 () ListMap!4573)

(assert (=> d!1479620 (invariantList!1306 (toList!5233 lt!1822036))))

(declare-fun e!2907890 () ListMap!4573)

(assert (=> d!1479620 (= lt!1822036 e!2907890)))

(declare-fun c!797713 () Bool)

(assert (=> d!1479620 (= c!797713 ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))))))

(assert (=> d!1479620 (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200207)))

(assert (=> d!1479620 (= (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) lt!1822036)))

(declare-fun b!4660237 () Bool)

(assert (=> b!4660237 (= e!2907890 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) (extractMap!1708 (t!359169 (t!359169 (toList!5234 lt!1821147))))))))

(declare-fun b!4660238 () Bool)

(assert (=> b!4660238 (= e!2907890 (ListMap!4574 Nil!51928))))

(assert (= (and d!1479620 c!797713) b!4660237))

(assert (= (and d!1479620 (not c!797713)) b!4660238))

(declare-fun m!5542721 () Bool)

(assert (=> d!1479620 m!5542721))

(declare-fun m!5542723 () Bool)

(assert (=> d!1479620 m!5542723))

(declare-fun m!5542727 () Bool)

(assert (=> b!4660237 m!5542727))

(assert (=> b!4660237 m!5542727))

(declare-fun m!5542731 () Bool)

(assert (=> b!4660237 m!5542731))

(assert (=> b!4659566 d!1479620))

(assert (=> d!1479126 d!1478824))

(declare-fun d!1479622 () Bool)

(declare-fun c!797719 () Bool)

(assert (=> d!1479622 (= c!797719 ((_ is Nil!51928) lt!1821145))))

(declare-fun e!2907905 () (InoxSet tuple2!53054))

(assert (=> d!1479622 (= (content!9017 lt!1821145) e!2907905)))

(declare-fun b!4660258 () Bool)

(assert (=> b!4660258 (= e!2907905 ((as const (Array tuple2!53054 Bool)) false))))

(declare-fun b!4660259 () Bool)

(assert (=> b!4660259 (= e!2907905 ((_ map or) (store ((as const (Array tuple2!53054 Bool)) false) (h!58080 lt!1821145) true) (content!9017 (t!359168 lt!1821145))))))

(assert (= (and d!1479622 c!797719) b!4660258))

(assert (= (and d!1479622 (not c!797719)) b!4660259))

(declare-fun m!5542751 () Bool)

(assert (=> b!4660259 m!5542751))

(declare-fun m!5542753 () Bool)

(assert (=> b!4660259 m!5542753))

(assert (=> d!1479116 d!1479622))

(assert (=> d!1479148 d!1479150))

(assert (=> d!1479148 d!1479152))

(declare-fun d!1479632 () Bool)

(assert (=> d!1479632 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968))))

(assert (=> d!1479632 true))

(declare-fun _$29!740 () Unit!118984)

(assert (=> d!1479632 (= (choose!32095 (toList!5233 lt!1821138) key!4968) _$29!740)))

(declare-fun bs!1067349 () Bool)

(assert (= bs!1067349 d!1479632))

(assert (=> bs!1067349 m!5540809))

(assert (=> bs!1067349 m!5540809))

(assert (=> bs!1067349 m!5540811))

(assert (=> d!1479148 d!1479632))

(declare-fun d!1479636 () Bool)

(assert (=> d!1479636 (= (invariantList!1306 (toList!5233 lt!1821138)) (noDuplicatedKeys!358 (toList!5233 lt!1821138)))))

(declare-fun bs!1067350 () Bool)

(assert (= bs!1067350 d!1479636))

(declare-fun m!5542775 () Bool)

(assert (=> bs!1067350 m!5542775))

(assert (=> d!1479148 d!1479636))

(declare-fun d!1479638 () Bool)

(declare-fun res!1960191 () Bool)

(declare-fun e!2907914 () Bool)

(assert (=> d!1479638 (=> res!1960191 e!2907914)))

(assert (=> d!1479638 (= res!1960191 (or ((_ is Nil!51928) (toList!5233 lt!1821421)) ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821421)))))))

(assert (=> d!1479638 (= (noDuplicatedKeys!358 (toList!5233 lt!1821421)) e!2907914)))

(declare-fun b!4660268 () Bool)

(declare-fun e!2907915 () Bool)

(assert (=> b!4660268 (= e!2907914 e!2907915)))

(declare-fun res!1960192 () Bool)

(assert (=> b!4660268 (=> (not res!1960192) (not e!2907915))))

(assert (=> b!4660268 (= res!1960192 (not (containsKey!2750 (t!359168 (toList!5233 lt!1821421)) (_1!29821 (h!58080 (toList!5233 lt!1821421))))))))

(declare-fun b!4660269 () Bool)

(assert (=> b!4660269 (= e!2907915 (noDuplicatedKeys!358 (t!359168 (toList!5233 lt!1821421))))))

(assert (= (and d!1479638 (not res!1960191)) b!4660268))

(assert (= (and b!4660268 res!1960192) b!4660269))

(declare-fun m!5542785 () Bool)

(assert (=> b!4660268 m!5542785))

(declare-fun m!5542787 () Bool)

(assert (=> b!4660269 m!5542787))

(assert (=> d!1479244 d!1479638))

(declare-fun d!1479648 () Bool)

(declare-fun res!1960193 () Bool)

(declare-fun e!2907916 () Bool)

(assert (=> d!1479648 (=> res!1960193 e!2907916)))

(assert (=> d!1479648 (= res!1960193 (and ((_ is Cons!51928) (t!359168 lt!1821145)) (= (_1!29821 (h!58080 (t!359168 lt!1821145))) key!4968)))))

(assert (=> d!1479648 (= (containsKey!2746 (t!359168 lt!1821145) key!4968) e!2907916)))

(declare-fun b!4660270 () Bool)

(declare-fun e!2907917 () Bool)

(assert (=> b!4660270 (= e!2907916 e!2907917)))

(declare-fun res!1960194 () Bool)

(assert (=> b!4660270 (=> (not res!1960194) (not e!2907917))))

(assert (=> b!4660270 (= res!1960194 ((_ is Cons!51928) (t!359168 lt!1821145)))))

(declare-fun b!4660271 () Bool)

(assert (=> b!4660271 (= e!2907917 (containsKey!2746 (t!359168 (t!359168 lt!1821145)) key!4968))))

(assert (= (and d!1479648 (not res!1960193)) b!4660270))

(assert (= (and b!4660270 res!1960194) b!4660271))

(declare-fun m!5542789 () Bool)

(assert (=> b!4660271 m!5542789))

(assert (=> b!4659777 d!1479648))

(declare-fun d!1479650 () Bool)

(declare-fun res!1960195 () Bool)

(declare-fun e!2907918 () Bool)

(assert (=> d!1479650 (=> res!1960195 e!2907918)))

(assert (=> d!1479650 (= res!1960195 (and ((_ is Cons!51928) (t!359168 (tail!8255 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (tail!8255 oldBucket!40)))) (_1!29821 (h!58080 (tail!8255 oldBucket!40))))))))

(assert (=> d!1479650 (= (containsKey!2746 (t!359168 (tail!8255 oldBucket!40)) (_1!29821 (h!58080 (tail!8255 oldBucket!40)))) e!2907918)))

(declare-fun b!4660272 () Bool)

(declare-fun e!2907919 () Bool)

(assert (=> b!4660272 (= e!2907918 e!2907919)))

(declare-fun res!1960196 () Bool)

(assert (=> b!4660272 (=> (not res!1960196) (not e!2907919))))

(assert (=> b!4660272 (= res!1960196 ((_ is Cons!51928) (t!359168 (tail!8255 oldBucket!40))))))

(declare-fun b!4660273 () Bool)

(assert (=> b!4660273 (= e!2907919 (containsKey!2746 (t!359168 (t!359168 (tail!8255 oldBucket!40))) (_1!29821 (h!58080 (tail!8255 oldBucket!40)))))))

(assert (= (and d!1479650 (not res!1960195)) b!4660272))

(assert (= (and b!4660272 res!1960196) b!4660273))

(declare-fun m!5542791 () Bool)

(assert (=> b!4660273 m!5542791))

(assert (=> b!4659659 d!1479650))

(declare-fun d!1479652 () Bool)

(declare-fun res!1960197 () Bool)

(declare-fun e!2907920 () Bool)

(assert (=> d!1479652 (=> res!1960197 e!2907920)))

(assert (=> d!1479652 (= res!1960197 ((_ is Nil!51928) (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (toList!5233 lt!1821734))))))

(assert (=> d!1479652 (= (forall!11050 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (toList!5233 lt!1821734)) (ite c!797610 lambda!200156 lambda!200158)) e!2907920)))

(declare-fun b!4660274 () Bool)

(declare-fun e!2907921 () Bool)

(assert (=> b!4660274 (= e!2907920 e!2907921)))

(declare-fun res!1960198 () Bool)

(assert (=> b!4660274 (=> (not res!1960198) (not e!2907921))))

(assert (=> b!4660274 (= res!1960198 (dynLambda!21608 (ite c!797610 lambda!200156 lambda!200158) (h!58080 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (toList!5233 lt!1821734)))))))

(declare-fun b!4660275 () Bool)

(assert (=> b!4660275 (= e!2907921 (forall!11050 (t!359168 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (toList!5233 lt!1821734))) (ite c!797610 lambda!200156 lambda!200158)))))

(assert (= (and d!1479652 (not res!1960197)) b!4660274))

(assert (= (and b!4660274 res!1960198) b!4660275))

(declare-fun b_lambda!174899 () Bool)

(assert (=> (not b_lambda!174899) (not b!4660274)))

(declare-fun m!5542797 () Bool)

(assert (=> b!4660274 m!5542797))

(declare-fun m!5542799 () Bool)

(assert (=> b!4660275 m!5542799))

(assert (=> bm!325560 d!1479652))

(declare-fun d!1479656 () Bool)

(assert (=> d!1479656 (= (isDefined!9109 lt!1821746) (not (isEmpty!29021 lt!1821746)))))

(declare-fun bs!1067375 () Bool)

(assert (= bs!1067375 d!1479656))

(assert (=> bs!1067375 m!5541657))

(assert (=> b!4659748 d!1479656))

(declare-fun d!1479658 () Bool)

(declare-fun res!1960202 () Bool)

(declare-fun e!2907928 () Bool)

(assert (=> d!1479658 (=> res!1960202 e!2907928)))

(assert (=> d!1479658 (= res!1960202 (and ((_ is Cons!51928) (toList!5233 lt!1821412)) (= (_1!29821 (h!58080 (toList!5233 lt!1821412))) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (=> d!1479658 (= (containsKey!2750 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) e!2907928)))

(declare-fun b!4660285 () Bool)

(declare-fun e!2907929 () Bool)

(assert (=> b!4660285 (= e!2907928 e!2907929)))

(declare-fun res!1960203 () Bool)

(assert (=> b!4660285 (=> (not res!1960203) (not e!2907929))))

(assert (=> b!4660285 (= res!1960203 ((_ is Cons!51928) (toList!5233 lt!1821412)))))

(declare-fun b!4660286 () Bool)

(assert (=> b!4660286 (= e!2907929 (containsKey!2750 (t!359168 (toList!5233 lt!1821412)) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479658 (not res!1960202)) b!4660285))

(assert (= (and b!4660285 res!1960203) b!4660286))

(declare-fun m!5542813 () Bool)

(assert (=> b!4660286 m!5542813))

(assert (=> b!4659715 d!1479658))

(declare-fun d!1479660 () Bool)

(assert (=> d!1479660 (containsKey!2750 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1822055 () Unit!118984)

(assert (=> d!1479660 (= lt!1822055 (choose!32090 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1479660 (invariantList!1306 (toList!5233 lt!1821412))))

(assert (=> d!1479660 (= (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) lt!1822055)))

(declare-fun bs!1067376 () Bool)

(assert (= bs!1067376 d!1479660))

(assert (=> bs!1067376 m!5541569))

(declare-fun m!5542821 () Bool)

(assert (=> bs!1067376 m!5542821))

(declare-fun m!5542823 () Bool)

(assert (=> bs!1067376 m!5542823))

(assert (=> b!4659715 d!1479660))

(declare-fun d!1479664 () Bool)

(declare-fun c!797724 () Bool)

(assert (=> d!1479664 (= c!797724 ((_ is Nil!51929) (toList!5234 lt!1821147)))))

(declare-fun e!2907931 () (InoxSet tuple2!53056))

(assert (=> d!1479664 (= (content!9013 (toList!5234 lt!1821147)) e!2907931)))

(declare-fun b!4660289 () Bool)

(assert (=> b!4660289 (= e!2907931 ((as const (Array tuple2!53056 Bool)) false))))

(declare-fun b!4660290 () Bool)

(assert (=> b!4660290 (= e!2907931 ((_ map or) (store ((as const (Array tuple2!53056 Bool)) false) (h!58081 (toList!5234 lt!1821147)) true) (content!9013 (t!359169 (toList!5234 lt!1821147)))))))

(assert (= (and d!1479664 c!797724) b!4660289))

(assert (= (and d!1479664 (not c!797724)) b!4660290))

(declare-fun m!5542829 () Bool)

(assert (=> b!4660290 m!5542829))

(assert (=> b!4660290 m!5542329))

(assert (=> d!1479090 d!1479664))

(declare-fun d!1479668 () Bool)

(assert (=> d!1479668 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248))))

(declare-fun lt!1822056 () Unit!118984)

(assert (=> d!1479668 (= lt!1822056 (choose!32100 (toList!5234 lt!1821147) lt!1821248))))

(declare-fun e!2907932 () Bool)

(assert (=> d!1479668 e!2907932))

(declare-fun res!1960204 () Bool)

(assert (=> d!1479668 (=> (not res!1960204) (not e!2907932))))

(assert (=> d!1479668 (= res!1960204 (isStrictlySorted!580 (toList!5234 lt!1821147)))))

(assert (=> d!1479668 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) lt!1821248) lt!1822056)))

(declare-fun b!4660291 () Bool)

(assert (=> b!4660291 (= e!2907932 (containsKey!2749 (toList!5234 lt!1821147) lt!1821248))))

(assert (= (and d!1479668 res!1960204) b!4660291))

(assert (=> d!1479668 m!5540607))

(assert (=> d!1479668 m!5540607))

(assert (=> d!1479668 m!5541677))

(declare-fun m!5542833 () Bool)

(assert (=> d!1479668 m!5542833))

(assert (=> d!1479668 m!5541757))

(assert (=> b!4660291 m!5541673))

(assert (=> b!4659750 d!1479668))

(declare-fun d!1479672 () Bool)

(assert (=> d!1479672 (= (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248)) (not (isEmpty!29025 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821248))))))

(declare-fun bs!1067378 () Bool)

(assert (= bs!1067378 d!1479672))

(assert (=> bs!1067378 m!5540607))

(declare-fun m!5542839 () Bool)

(assert (=> bs!1067378 m!5542839))

(assert (=> b!4659750 d!1479672))

(assert (=> b!4659750 d!1479094))

(declare-fun d!1479676 () Bool)

(declare-fun res!1960209 () Bool)

(declare-fun e!2907937 () Bool)

(assert (=> d!1479676 (=> res!1960209 e!2907937)))

(assert (=> d!1479676 (= res!1960209 ((_ is Nil!51928) (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))

(assert (=> d!1479676 (= (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200159) e!2907937)))

(declare-fun b!4660296 () Bool)

(declare-fun e!2907938 () Bool)

(assert (=> b!4660296 (= e!2907937 e!2907938)))

(declare-fun res!1960210 () Bool)

(assert (=> b!4660296 (=> (not res!1960210) (not e!2907938))))

(assert (=> b!4660296 (= res!1960210 (dynLambda!21608 lambda!200159 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))))))

(declare-fun b!4660297 () Bool)

(assert (=> b!4660297 (= e!2907938 (forall!11050 (t!359168 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))) lambda!200159))))

(assert (= (and d!1479676 (not res!1960209)) b!4660296))

(assert (= (and b!4660296 res!1960210) b!4660297))

(declare-fun b_lambda!174905 () Bool)

(assert (=> (not b_lambda!174905) (not b!4660296)))

(declare-fun m!5542845 () Bool)

(assert (=> b!4660296 m!5542845))

(declare-fun m!5542847 () Bool)

(assert (=> b!4660297 m!5542847))

(assert (=> b!4659727 d!1479676))

(assert (=> b!4659719 d!1479608))

(assert (=> b!4659719 d!1479610))

(declare-fun d!1479680 () Bool)

(declare-fun res!1960213 () Bool)

(declare-fun e!2907941 () Bool)

(assert (=> d!1479680 (=> res!1960213 e!2907941)))

(assert (=> d!1479680 (= res!1960213 ((_ is Nil!51928) (_2!29822 (h!58081 lt!1821144))))))

(assert (=> d!1479680 (= (forall!11050 (_2!29822 (h!58081 lt!1821144)) lambda!200149) e!2907941)))

(declare-fun b!4660300 () Bool)

(declare-fun e!2907942 () Bool)

(assert (=> b!4660300 (= e!2907941 e!2907942)))

(declare-fun res!1960214 () Bool)

(assert (=> b!4660300 (=> (not res!1960214) (not e!2907942))))

(assert (=> b!4660300 (= res!1960214 (dynLambda!21608 lambda!200149 (h!58080 (_2!29822 (h!58081 lt!1821144)))))))

(declare-fun b!4660301 () Bool)

(assert (=> b!4660301 (= e!2907942 (forall!11050 (t!359168 (_2!29822 (h!58081 lt!1821144))) lambda!200149))))

(assert (= (and d!1479680 (not res!1960213)) b!4660300))

(assert (= (and b!4660300 res!1960214) b!4660301))

(declare-fun b_lambda!174907 () Bool)

(assert (=> (not b_lambda!174907) (not b!4660300)))

(declare-fun m!5542853 () Bool)

(assert (=> b!4660300 m!5542853))

(declare-fun m!5542855 () Bool)

(assert (=> b!4660301 m!5542855))

(assert (=> d!1479132 d!1479680))

(assert (=> d!1479132 d!1479358))

(declare-fun d!1479686 () Bool)

(declare-fun lt!1822057 () Bool)

(assert (=> d!1479686 (= lt!1822057 (select (content!9017 (toList!5233 lt!1821701)) (h!58080 oldBucket!40)))))

(declare-fun e!2907944 () Bool)

(assert (=> d!1479686 (= lt!1822057 e!2907944)))

(declare-fun res!1960215 () Bool)

(assert (=> d!1479686 (=> (not res!1960215) (not e!2907944))))

(assert (=> d!1479686 (= res!1960215 ((_ is Cons!51928) (toList!5233 lt!1821701)))))

(assert (=> d!1479686 (= (contains!15088 (toList!5233 lt!1821701) (h!58080 oldBucket!40)) lt!1822057)))

(declare-fun b!4660302 () Bool)

(declare-fun e!2907943 () Bool)

(assert (=> b!4660302 (= e!2907944 e!2907943)))

(declare-fun res!1960216 () Bool)

(assert (=> b!4660302 (=> res!1960216 e!2907943)))

(assert (=> b!4660302 (= res!1960216 (= (h!58080 (toList!5233 lt!1821701)) (h!58080 oldBucket!40)))))

(declare-fun b!4660303 () Bool)

(assert (=> b!4660303 (= e!2907943 (contains!15088 (t!359168 (toList!5233 lt!1821701)) (h!58080 oldBucket!40)))))

(assert (= (and d!1479686 res!1960215) b!4660302))

(assert (= (and b!4660302 (not res!1960216)) b!4660303))

(declare-fun m!5542859 () Bool)

(assert (=> d!1479686 m!5542859))

(declare-fun m!5542861 () Bool)

(assert (=> d!1479686 m!5542861))

(declare-fun m!5542863 () Bool)

(assert (=> b!4660303 m!5542863))

(assert (=> b!4659702 d!1479686))

(declare-fun d!1479690 () Bool)

(assert (=> d!1479690 (= (hash!3797 hashF!1389 (_1!29821 (h!58080 newBucket!224))) (hash!3799 hashF!1389 (_1!29821 (h!58080 newBucket!224))))))

(declare-fun bs!1067381 () Bool)

(assert (= bs!1067381 d!1479690))

(declare-fun m!5542867 () Bool)

(assert (=> bs!1067381 m!5542867))

(assert (=> bs!1066947 d!1479690))

(declare-fun d!1479694 () Bool)

(declare-fun res!1960225 () Bool)

(declare-fun e!2907955 () Bool)

(assert (=> d!1479694 (=> res!1960225 e!2907955)))

(assert (=> d!1479694 (= res!1960225 ((_ is Nil!51931) lt!1821653))))

(assert (=> d!1479694 (= (noDuplicate!844 lt!1821653) e!2907955)))

(declare-fun b!4660316 () Bool)

(declare-fun e!2907956 () Bool)

(assert (=> b!4660316 (= e!2907955 e!2907956)))

(declare-fun res!1960226 () Bool)

(assert (=> b!4660316 (=> (not res!1960226) (not e!2907956))))

(assert (=> b!4660316 (= res!1960226 (not (contains!15089 (t!359171 lt!1821653) (h!58085 lt!1821653))))))

(declare-fun b!4660317 () Bool)

(assert (=> b!4660317 (= e!2907956 (noDuplicate!844 (t!359171 lt!1821653)))))

(assert (= (and d!1479694 (not res!1960225)) b!4660316))

(assert (= (and b!4660316 res!1960226) b!4660317))

(declare-fun m!5542869 () Bool)

(assert (=> b!4660316 m!5542869))

(declare-fun m!5542873 () Bool)

(assert (=> b!4660317 m!5542873))

(assert (=> d!1479112 d!1479694))

(assert (=> d!1479112 d!1479636))

(declare-fun d!1479696 () Bool)

(assert (=> d!1479696 (= (get!17289 lt!1821746) (v!46137 lt!1821746))))

(assert (=> b!4659744 d!1479696))

(declare-fun d!1479700 () Bool)

(declare-fun res!1960231 () Bool)

(declare-fun e!2907961 () Bool)

(assert (=> d!1479700 (=> res!1960231 e!2907961)))

(assert (=> d!1479700 (= res!1960231 ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821141))))))

(assert (=> d!1479700 (= (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200078) e!2907961)))

(declare-fun b!4660322 () Bool)

(declare-fun e!2907962 () Bool)

(assert (=> b!4660322 (= e!2907961 e!2907962)))

(declare-fun res!1960232 () Bool)

(assert (=> b!4660322 (=> (not res!1960232) (not e!2907962))))

(assert (=> b!4660322 (= res!1960232 (dynLambda!21608 lambda!200078 (h!58080 (t!359168 (toList!5233 lt!1821141)))))))

(declare-fun b!4660323 () Bool)

(assert (=> b!4660323 (= e!2907962 (forall!11050 (t!359168 (t!359168 (toList!5233 lt!1821141))) lambda!200078))))

(assert (= (and d!1479700 (not res!1960231)) b!4660322))

(assert (= (and b!4660322 res!1960232) b!4660323))

(declare-fun b_lambda!174909 () Bool)

(assert (=> (not b_lambda!174909) (not b!4660322)))

(declare-fun m!5542879 () Bool)

(assert (=> b!4660322 m!5542879))

(declare-fun m!5542881 () Bool)

(assert (=> b!4660323 m!5542881))

(assert (=> b!4659664 d!1479700))

(declare-fun d!1479704 () Bool)

(assert (=> d!1479704 (= (hash!3797 hashF!1389 (_1!29821 (h!58080 oldBucket!40))) (hash!3799 hashF!1389 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun bs!1067382 () Bool)

(assert (= bs!1067382 d!1479704))

(declare-fun m!5542883 () Bool)

(assert (=> bs!1067382 m!5542883))

(assert (=> bs!1066950 d!1479704))

(declare-fun d!1479706 () Bool)

(declare-fun res!1960235 () Bool)

(declare-fun e!2907965 () Bool)

(assert (=> d!1479706 (=> res!1960235 e!2907965)))

(assert (=> d!1479706 (= res!1960235 ((_ is Nil!51928) (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (toList!5233 lt!1821675))))))

(assert (=> d!1479706 (= (forall!11050 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (toList!5233 lt!1821675)) (ite c!797596 lambda!200146 lambda!200148)) e!2907965)))

(declare-fun b!4660326 () Bool)

(declare-fun e!2907966 () Bool)

(assert (=> b!4660326 (= e!2907965 e!2907966)))

(declare-fun res!1960236 () Bool)

(assert (=> b!4660326 (=> (not res!1960236) (not e!2907966))))

(assert (=> b!4660326 (= res!1960236 (dynLambda!21608 (ite c!797596 lambda!200146 lambda!200148) (h!58080 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (toList!5233 lt!1821675)))))))

(declare-fun b!4660327 () Bool)

(assert (=> b!4660327 (= e!2907966 (forall!11050 (t!359168 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (toList!5233 lt!1821675))) (ite c!797596 lambda!200146 lambda!200148)))))

(assert (= (and d!1479706 (not res!1960235)) b!4660326))

(assert (= (and b!4660326 res!1960236) b!4660327))

(declare-fun b_lambda!174911 () Bool)

(assert (=> (not b_lambda!174911) (not b!4660326)))

(declare-fun m!5542891 () Bool)

(assert (=> b!4660326 m!5542891))

(declare-fun m!5542893 () Bool)

(assert (=> b!4660327 m!5542893))

(assert (=> bm!325555 d!1479706))

(declare-fun d!1479710 () Bool)

(declare-fun c!797727 () Bool)

(assert (=> d!1479710 (= c!797727 ((_ is Nil!51931) lt!1821653))))

(declare-fun e!2907968 () (InoxSet K!13280))

(assert (=> d!1479710 (= (content!9016 lt!1821653) e!2907968)))

(declare-fun b!4660331 () Bool)

(assert (=> b!4660331 (= e!2907968 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660332 () Bool)

(assert (=> b!4660332 (= e!2907968 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 lt!1821653) true) (content!9016 (t!359171 lt!1821653))))))

(assert (= (and d!1479710 c!797727) b!4660331))

(assert (= (and d!1479710 (not c!797727)) b!4660332))

(declare-fun m!5542895 () Bool)

(assert (=> b!4660332 m!5542895))

(declare-fun m!5542897 () Bool)

(assert (=> b!4660332 m!5542897))

(assert (=> b!4659640 d!1479710))

(declare-fun d!1479712 () Bool)

(declare-fun c!797728 () Bool)

(assert (=> d!1479712 (= c!797728 ((_ is Nil!51931) (map!11483 (toList!5233 lt!1821138) lambda!200145)))))

(declare-fun e!2907969 () (InoxSet K!13280))

(assert (=> d!1479712 (= (content!9016 (map!11483 (toList!5233 lt!1821138) lambda!200145)) e!2907969)))

(declare-fun b!4660333 () Bool)

(assert (=> b!4660333 (= e!2907969 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660334 () Bool)

(assert (=> b!4660334 (= e!2907969 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 (map!11483 (toList!5233 lt!1821138) lambda!200145)) true) (content!9016 (t!359171 (map!11483 (toList!5233 lt!1821138) lambda!200145)))))))

(assert (= (and d!1479712 c!797728) b!4660333))

(assert (= (and d!1479712 (not c!797728)) b!4660334))

(declare-fun m!5542899 () Bool)

(assert (=> b!4660334 m!5542899))

(declare-fun m!5542901 () Bool)

(assert (=> b!4660334 m!5542901))

(assert (=> b!4659640 d!1479712))

(declare-fun d!1479714 () Bool)

(declare-fun lt!1822060 () List!52055)

(assert (=> d!1479714 (= (size!35975 lt!1822060) (size!35976 (toList!5233 lt!1821138)))))

(declare-fun e!2907970 () List!52055)

(assert (=> d!1479714 (= lt!1822060 e!2907970)))

(declare-fun c!797729 () Bool)

(assert (=> d!1479714 (= c!797729 ((_ is Nil!51928) (toList!5233 lt!1821138)))))

(assert (=> d!1479714 (= (map!11483 (toList!5233 lt!1821138) lambda!200145) lt!1822060)))

(declare-fun b!4660335 () Bool)

(assert (=> b!4660335 (= e!2907970 Nil!51931)))

(declare-fun b!4660336 () Bool)

(assert (=> b!4660336 (= e!2907970 ($colon$colon!1067 (map!11483 (t!359168 (toList!5233 lt!1821138)) lambda!200145) (dynLambda!21611 lambda!200145 (h!58080 (toList!5233 lt!1821138)))))))

(assert (= (and d!1479714 c!797729) b!4660335))

(assert (= (and d!1479714 (not c!797729)) b!4660336))

(declare-fun b_lambda!174913 () Bool)

(assert (=> (not b_lambda!174913) (not b!4660336)))

(declare-fun m!5542913 () Bool)

(assert (=> d!1479714 m!5542913))

(assert (=> d!1479714 m!5542569))

(declare-fun m!5542917 () Bool)

(assert (=> b!4660336 m!5542917))

(declare-fun m!5542921 () Bool)

(assert (=> b!4660336 m!5542921))

(assert (=> b!4660336 m!5542917))

(assert (=> b!4660336 m!5542921))

(declare-fun m!5542923 () Bool)

(assert (=> b!4660336 m!5542923))

(assert (=> b!4659640 d!1479714))

(declare-fun d!1479720 () Bool)

(declare-fun c!797730 () Bool)

(assert (=> d!1479720 (= c!797730 ((_ is Nil!51931) (keys!18406 lt!1821138)))))

(declare-fun e!2907972 () (InoxSet K!13280))

(assert (=> d!1479720 (= (content!9016 (keys!18406 lt!1821138)) e!2907972)))

(declare-fun b!4660337 () Bool)

(assert (=> b!4660337 (= e!2907972 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660338 () Bool)

(assert (=> b!4660338 (= e!2907972 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 (keys!18406 lt!1821138)) true) (content!9016 (t!359171 (keys!18406 lt!1821138)))))))

(assert (= (and d!1479720 c!797730) b!4660337))

(assert (= (and d!1479720 (not c!797730)) b!4660338))

(declare-fun m!5542925 () Bool)

(assert (=> b!4660338 m!5542925))

(declare-fun m!5542927 () Bool)

(assert (=> b!4660338 m!5542927))

(assert (=> d!1479096 d!1479720))

(declare-fun d!1479722 () Bool)

(declare-fun res!1960242 () Bool)

(declare-fun e!2907974 () Bool)

(assert (=> d!1479722 (=> res!1960242 e!2907974)))

(assert (=> d!1479722 (= res!1960242 ((_ is Nil!51928) (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))

(assert (=> d!1479722 (= (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200149) e!2907974)))

(declare-fun b!4660341 () Bool)

(declare-fun e!2907975 () Bool)

(assert (=> b!4660341 (= e!2907974 e!2907975)))

(declare-fun res!1960243 () Bool)

(assert (=> b!4660341 (=> (not res!1960243) (not e!2907975))))

(assert (=> b!4660341 (= res!1960243 (dynLambda!21608 lambda!200149 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))))))

(declare-fun b!4660342 () Bool)

(assert (=> b!4660342 (= e!2907975 (forall!11050 (t!359168 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))) lambda!200149))))

(assert (= (and d!1479722 (not res!1960242)) b!4660341))

(assert (= (and b!4660341 res!1960243) b!4660342))

(declare-fun b_lambda!174915 () Bool)

(assert (=> (not b_lambda!174915) (not b!4660341)))

(declare-fun m!5542933 () Bool)

(assert (=> b!4660341 m!5542933))

(declare-fun m!5542935 () Bool)

(assert (=> b!4660342 m!5542935))

(assert (=> b!4659669 d!1479722))

(declare-fun d!1479728 () Bool)

(declare-fun lt!1822061 () Bool)

(assert (=> d!1479728 (= lt!1822061 (select (content!9016 (keys!18406 lt!1821404)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2907981 () Bool)

(assert (=> d!1479728 (= lt!1822061 e!2907981)))

(declare-fun res!1960249 () Bool)

(assert (=> d!1479728 (=> (not res!1960249) (not e!2907981))))

(assert (=> d!1479728 (= res!1960249 ((_ is Cons!51931) (keys!18406 lt!1821404)))))

(assert (=> d!1479728 (= (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) lt!1822061)))

(declare-fun b!4660347 () Bool)

(declare-fun e!2907980 () Bool)

(assert (=> b!4660347 (= e!2907981 e!2907980)))

(declare-fun res!1960248 () Bool)

(assert (=> b!4660347 (=> res!1960248 e!2907980)))

(assert (=> b!4660347 (= res!1960248 (= (h!58085 (keys!18406 lt!1821404)) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660348 () Bool)

(assert (=> b!4660348 (= e!2907980 (contains!15089 (t!359171 (keys!18406 lt!1821404)) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479728 res!1960249) b!4660347))

(assert (= (and b!4660347 (not res!1960248)) b!4660348))

(assert (=> d!1479728 m!5541553))

(declare-fun m!5542939 () Bool)

(assert (=> d!1479728 m!5542939))

(declare-fun m!5542941 () Bool)

(assert (=> d!1479728 m!5542941))

(declare-fun m!5542943 () Bool)

(assert (=> b!4660348 m!5542943))

(assert (=> b!4659713 d!1479728))

(declare-fun bs!1067398 () Bool)

(declare-fun b!4660350 () Bool)

(assert (= bs!1067398 (and b!4660350 b!4659995)))

(declare-fun lambda!200211 () Int)

(assert (=> bs!1067398 (= (= (toList!5233 lt!1821404) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200211 lambda!200182))))

(declare-fun bs!1067399 () Bool)

(assert (= bs!1067399 (and b!4660350 b!4660222)))

(assert (=> bs!1067399 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821412)) (= lambda!200211 lambda!200197))))

(declare-fun bs!1067400 () Bool)

(assert (= bs!1067400 (and b!4660350 b!4659596)))

(assert (=> bs!1067400 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821138)) (= lambda!200211 lambda!200132))))

(declare-fun bs!1067401 () Bool)

(assert (= bs!1067401 (and b!4660350 b!4659641)))

(assert (=> bs!1067401 (= (= (toList!5233 lt!1821404) (t!359168 (toList!5233 lt!1821138))) (= lambda!200211 lambda!200142))))

(declare-fun bs!1067402 () Bool)

(assert (= bs!1067402 (and b!4660350 b!4659639)))

(assert (=> bs!1067402 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821138)) (= lambda!200211 lambda!200144))))

(declare-fun bs!1067403 () Bool)

(assert (= bs!1067403 (and b!4660350 b!4659642)))

(assert (=> bs!1067403 (= (= (toList!5233 lt!1821404) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200211 lambda!200143))))

(assert (=> b!4660350 true))

(declare-fun bs!1067404 () Bool)

(declare-fun b!4660351 () Bool)

(assert (= bs!1067404 (and b!4660351 b!4659597)))

(declare-fun lambda!200212 () Int)

(assert (=> bs!1067404 (= lambda!200212 lambda!200133)))

(declare-fun bs!1067405 () Bool)

(assert (= bs!1067405 (and b!4660351 b!4659640)))

(assert (=> bs!1067405 (= lambda!200212 lambda!200145)))

(declare-fun bs!1067406 () Bool)

(assert (= bs!1067406 (and b!4660351 b!4659996)))

(assert (=> bs!1067406 (= lambda!200212 lambda!200184)))

(declare-fun bs!1067407 () Bool)

(assert (= bs!1067407 (and b!4660351 b!4660223)))

(assert (=> bs!1067407 (= lambda!200212 lambda!200198)))

(declare-fun d!1479734 () Bool)

(declare-fun e!2907982 () Bool)

(assert (=> d!1479734 e!2907982))

(declare-fun res!1960250 () Bool)

(assert (=> d!1479734 (=> (not res!1960250) (not e!2907982))))

(declare-fun lt!1822062 () List!52055)

(assert (=> d!1479734 (= res!1960250 (noDuplicate!844 lt!1822062))))

(assert (=> d!1479734 (= lt!1822062 (getKeysList!757 (toList!5233 lt!1821404)))))

(assert (=> d!1479734 (= (keys!18406 lt!1821404) lt!1822062)))

(declare-fun b!4660349 () Bool)

(declare-fun res!1960251 () Bool)

(assert (=> b!4660349 (=> (not res!1960251) (not e!2907982))))

(assert (=> b!4660349 (= res!1960251 (= (length!544 lt!1822062) (length!545 (toList!5233 lt!1821404))))))

(declare-fun res!1960252 () Bool)

(assert (=> b!4660350 (=> (not res!1960252) (not e!2907982))))

(assert (=> b!4660350 (= res!1960252 (forall!11052 lt!1822062 lambda!200211))))

(assert (=> b!4660351 (= e!2907982 (= (content!9016 lt!1822062) (content!9016 (map!11483 (toList!5233 lt!1821404) lambda!200212))))))

(assert (= (and d!1479734 res!1960250) b!4660349))

(assert (= (and b!4660349 res!1960251) b!4660350))

(assert (= (and b!4660350 res!1960252) b!4660351))

(declare-fun m!5542961 () Bool)

(assert (=> d!1479734 m!5542961))

(assert (=> d!1479734 m!5541557))

(declare-fun m!5542963 () Bool)

(assert (=> b!4660349 m!5542963))

(declare-fun m!5542965 () Bool)

(assert (=> b!4660349 m!5542965))

(declare-fun m!5542967 () Bool)

(assert (=> b!4660350 m!5542967))

(declare-fun m!5542969 () Bool)

(assert (=> b!4660351 m!5542969))

(declare-fun m!5542971 () Bool)

(assert (=> b!4660351 m!5542971))

(assert (=> b!4660351 m!5542971))

(declare-fun m!5542973 () Bool)

(assert (=> b!4660351 m!5542973))

(assert (=> b!4659713 d!1479734))

(declare-fun d!1479742 () Bool)

(declare-fun c!797733 () Bool)

(assert (=> d!1479742 (= c!797733 ((_ is Nil!51931) e!2907207))))

(declare-fun e!2907992 () (InoxSet K!13280))

(assert (=> d!1479742 (= (content!9016 e!2907207) e!2907992)))

(declare-fun b!4660364 () Bool)

(assert (=> b!4660364 (= e!2907992 ((as const (Array K!13280 Bool)) false))))

(declare-fun b!4660365 () Bool)

(assert (=> b!4660365 (= e!2907992 ((_ map or) (store ((as const (Array K!13280 Bool)) false) (h!58085 e!2907207) true) (content!9016 (t!359171 e!2907207))))))

(assert (= (and d!1479742 c!797733) b!4660364))

(assert (= (and d!1479742 (not c!797733)) b!4660365))

(declare-fun m!5542975 () Bool)

(assert (=> b!4660365 m!5542975))

(assert (=> b!4660365 m!5542181))

(assert (=> d!1479218 d!1479742))

(declare-fun d!1479744 () Bool)

(assert (=> d!1479744 true))

(assert (=> d!1479744 true))

(declare-fun res!1960267 () (_ BitVec 64))

(assert (=> d!1479744 (= (choose!32094 hashF!1389 key!4968) res!1960267)))

(assert (=> d!1479136 d!1479744))

(declare-fun d!1479746 () Bool)

(assert (=> d!1479746 (= (isEmpty!29021 (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968)) (not ((_ is Some!11843) (getPair!380 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) key!4968))))))

(assert (=> d!1479184 d!1479746))

(declare-fun d!1479748 () Bool)

(declare-fun res!1960268 () Bool)

(declare-fun e!2907997 () Bool)

(assert (=> d!1479748 (=> res!1960268 e!2907997)))

(assert (=> d!1479748 (= res!1960268 (not ((_ is Cons!51928) (t!359168 (_2!29822 (h!58081 lt!1821143))))))))

(assert (=> d!1479748 (= (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 lt!1821143)))) e!2907997)))

(declare-fun b!4660370 () Bool)

(declare-fun e!2907998 () Bool)

(assert (=> b!4660370 (= e!2907997 e!2907998)))

(declare-fun res!1960269 () Bool)

(assert (=> b!4660370 (=> (not res!1960269) (not e!2907998))))

(assert (=> b!4660370 (= res!1960269 (not (containsKey!2746 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821143)))) (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821143))))))))))

(declare-fun b!4660371 () Bool)

(assert (=> b!4660371 (= e!2907998 (noDuplicateKeys!1652 (t!359168 (t!359168 (_2!29822 (h!58081 lt!1821143))))))))

(assert (= (and d!1479748 (not res!1960268)) b!4660370))

(assert (= (and b!4660370 res!1960269) b!4660371))

(declare-fun m!5542977 () Bool)

(assert (=> b!4660370 m!5542977))

(declare-fun m!5542979 () Bool)

(assert (=> b!4660371 m!5542979))

(assert (=> b!4659785 d!1479748))

(declare-fun d!1479750 () Bool)

(declare-fun res!1960272 () Bool)

(declare-fun e!2908001 () Bool)

(assert (=> d!1479750 (=> res!1960272 e!2908001)))

(assert (=> d!1479750 (= res!1960272 (and ((_ is Cons!51928) (t!359168 lt!1821145)) (= (_1!29821 (h!58080 (t!359168 lt!1821145))) (_1!29821 (h!58080 lt!1821145)))))))

(assert (=> d!1479750 (= (containsKey!2746 (t!359168 lt!1821145) (_1!29821 (h!58080 lt!1821145))) e!2908001)))

(declare-fun b!4660374 () Bool)

(declare-fun e!2908002 () Bool)

(assert (=> b!4660374 (= e!2908001 e!2908002)))

(declare-fun res!1960273 () Bool)

(assert (=> b!4660374 (=> (not res!1960273) (not e!2908002))))

(assert (=> b!4660374 (= res!1960273 ((_ is Cons!51928) (t!359168 lt!1821145)))))

(declare-fun b!4660375 () Bool)

(assert (=> b!4660375 (= e!2908002 (containsKey!2746 (t!359168 (t!359168 lt!1821145)) (_1!29821 (h!58080 lt!1821145))))))

(assert (= (and d!1479750 (not res!1960272)) b!4660374))

(assert (= (and b!4660374 res!1960273) b!4660375))

(declare-fun m!5542985 () Bool)

(assert (=> b!4660375 m!5542985))

(assert (=> b!4659774 d!1479750))

(declare-fun d!1479754 () Bool)

(declare-fun lt!1822064 () Bool)

(assert (=> d!1479754 (= lt!1822064 (select (content!9016 (getKeysList!757 (toList!5233 lt!1821138))) key!4968))))

(declare-fun e!2908004 () Bool)

(assert (=> d!1479754 (= lt!1822064 e!2908004)))

(declare-fun res!1960275 () Bool)

(assert (=> d!1479754 (=> (not res!1960275) (not e!2908004))))

(assert (=> d!1479754 (= res!1960275 ((_ is Cons!51931) (getKeysList!757 (toList!5233 lt!1821138))))))

(assert (=> d!1479754 (= (contains!15089 (getKeysList!757 (toList!5233 lt!1821138)) key!4968) lt!1822064)))

(declare-fun b!4660376 () Bool)

(declare-fun e!2908003 () Bool)

(assert (=> b!4660376 (= e!2908004 e!2908003)))

(declare-fun res!1960274 () Bool)

(assert (=> b!4660376 (=> res!1960274 e!2908003)))

(assert (=> b!4660376 (= res!1960274 (= (h!58085 (getKeysList!757 (toList!5233 lt!1821138))) key!4968))))

(declare-fun b!4660377 () Bool)

(assert (=> b!4660377 (= e!2908003 (contains!15089 (t!359171 (getKeysList!757 (toList!5233 lt!1821138))) key!4968))))

(assert (= (and d!1479754 res!1960275) b!4660376))

(assert (= (and b!4660376 (not res!1960274)) b!4660377))

(assert (=> d!1479754 m!5540805))

(declare-fun m!5542987 () Bool)

(assert (=> d!1479754 m!5542987))

(declare-fun m!5542989 () Bool)

(assert (=> d!1479754 m!5542989))

(declare-fun m!5542991 () Bool)

(assert (=> b!4660377 m!5542991))

(assert (=> d!1479154 d!1479754))

(assert (=> d!1479154 d!1479112))

(declare-fun d!1479756 () Bool)

(assert (=> d!1479756 (contains!15089 (getKeysList!757 (toList!5233 lt!1821138)) key!4968)))

(assert (=> d!1479756 true))

(declare-fun _$14!1538 () Unit!118984)

(assert (=> d!1479756 (= (choose!32096 (toList!5233 lt!1821138) key!4968) _$14!1538)))

(declare-fun bs!1067408 () Bool)

(assert (= bs!1067408 d!1479756))

(assert (=> bs!1067408 m!5540805))

(assert (=> bs!1067408 m!5540805))

(assert (=> bs!1067408 m!5541515))

(assert (=> d!1479154 d!1479756))

(assert (=> d!1479154 d!1479636))

(declare-fun d!1479758 () Bool)

(declare-fun res!1960276 () Bool)

(declare-fun e!2908005 () Bool)

(assert (=> d!1479758 (=> res!1960276 e!2908005)))

(assert (=> d!1479758 (= res!1960276 (or ((_ is Nil!51928) (toList!5233 lt!1821400)) ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821400)))))))

(assert (=> d!1479758 (= (noDuplicatedKeys!358 (toList!5233 lt!1821400)) e!2908005)))

(declare-fun b!4660378 () Bool)

(declare-fun e!2908006 () Bool)

(assert (=> b!4660378 (= e!2908005 e!2908006)))

(declare-fun res!1960277 () Bool)

(assert (=> b!4660378 (=> (not res!1960277) (not e!2908006))))

(assert (=> b!4660378 (= res!1960277 (not (containsKey!2750 (t!359168 (toList!5233 lt!1821400)) (_1!29821 (h!58080 (toList!5233 lt!1821400))))))))

(declare-fun b!4660379 () Bool)

(assert (=> b!4660379 (= e!2908006 (noDuplicatedKeys!358 (t!359168 (toList!5233 lt!1821400))))))

(assert (= (and d!1479758 (not res!1960276)) b!4660378))

(assert (= (and b!4660378 res!1960277) b!4660379))

(declare-fun m!5542993 () Bool)

(assert (=> b!4660378 m!5542993))

(declare-fun m!5542995 () Bool)

(assert (=> b!4660379 m!5542995))

(assert (=> d!1479258 d!1479758))

(assert (=> b!4659693 d!1479176))

(assert (=> bs!1066944 d!1479166))

(declare-fun d!1479760 () Bool)

(declare-fun res!1960284 () Bool)

(declare-fun e!2908013 () Bool)

(assert (=> d!1479760 (=> res!1960284 e!2908013)))

(assert (=> d!1479760 (= res!1960284 ((_ is Nil!51931) lt!1821653))))

(assert (=> d!1479760 (= (forall!11052 lt!1821653 lambda!200144) e!2908013)))

(declare-fun b!4660388 () Bool)

(declare-fun e!2908014 () Bool)

(assert (=> b!4660388 (= e!2908013 e!2908014)))

(declare-fun res!1960285 () Bool)

(assert (=> b!4660388 (=> (not res!1960285) (not e!2908014))))

(declare-fun dynLambda!21612 (Int K!13280) Bool)

(assert (=> b!4660388 (= res!1960285 (dynLambda!21612 lambda!200144 (h!58085 lt!1821653)))))

(declare-fun b!4660389 () Bool)

(assert (=> b!4660389 (= e!2908014 (forall!11052 (t!359171 lt!1821653) lambda!200144))))

(assert (= (and d!1479760 (not res!1960284)) b!4660388))

(assert (= (and b!4660388 res!1960285) b!4660389))

(declare-fun b_lambda!174919 () Bool)

(assert (=> (not b_lambda!174919) (not b!4660388)))

(declare-fun m!5543007 () Bool)

(assert (=> b!4660388 m!5543007))

(declare-fun m!5543009 () Bool)

(assert (=> b!4660389 m!5543009))

(assert (=> b!4659639 d!1479760))

(declare-fun d!1479766 () Bool)

(declare-fun res!1960288 () Bool)

(declare-fun e!2908017 () Bool)

(assert (=> d!1479766 (=> res!1960288 e!2908017)))

(assert (=> d!1479766 (= res!1960288 (not ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40)))))))

(assert (=> d!1479766 (= (noDuplicateKeys!1652 (t!359168 (t!359168 oldBucket!40))) e!2908017)))

(declare-fun b!4660392 () Bool)

(declare-fun e!2908018 () Bool)

(assert (=> b!4660392 (= e!2908017 e!2908018)))

(declare-fun res!1960289 () Bool)

(assert (=> b!4660392 (=> (not res!1960289) (not e!2908018))))

(assert (=> b!4660392 (= res!1960289 (not (containsKey!2746 (t!359168 (t!359168 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))))

(declare-fun b!4660393 () Bool)

(assert (=> b!4660393 (= e!2908018 (noDuplicateKeys!1652 (t!359168 (t!359168 (t!359168 oldBucket!40)))))))

(assert (= (and d!1479766 (not res!1960288)) b!4660392))

(assert (= (and b!4660392 res!1960289) b!4660393))

(declare-fun m!5543015 () Bool)

(assert (=> b!4660392 m!5543015))

(declare-fun m!5543017 () Bool)

(assert (=> b!4660393 m!5543017))

(assert (=> b!4659765 d!1479766))

(declare-fun d!1479770 () Bool)

(declare-fun res!1960293 () Bool)

(declare-fun e!2908025 () Bool)

(assert (=> d!1479770 (=> res!1960293 e!2908025)))

(assert (=> d!1479770 (= res!1960293 (and ((_ is Cons!51928) (t!359168 lt!1821447)) (= (_1!29821 (h!58080 (t!359168 lt!1821447))) key!4968)))))

(assert (=> d!1479770 (= (containsKey!2746 (t!359168 lt!1821447) key!4968) e!2908025)))

(declare-fun b!4660403 () Bool)

(declare-fun e!2908026 () Bool)

(assert (=> b!4660403 (= e!2908025 e!2908026)))

(declare-fun res!1960294 () Bool)

(assert (=> b!4660403 (=> (not res!1960294) (not e!2908026))))

(assert (=> b!4660403 (= res!1960294 ((_ is Cons!51928) (t!359168 lt!1821447)))))

(declare-fun b!4660404 () Bool)

(assert (=> b!4660404 (= e!2908026 (containsKey!2746 (t!359168 (t!359168 lt!1821447)) key!4968))))

(assert (= (and d!1479770 (not res!1960293)) b!4660403))

(assert (= (and b!4660403 res!1960294) b!4660404))

(declare-fun m!5543019 () Bool)

(assert (=> b!4660404 m!5543019))

(assert (=> b!4659658 d!1479770))

(declare-fun d!1479772 () Bool)

(declare-fun c!797737 () Bool)

(assert (=> d!1479772 (= c!797737 ((_ is Nil!51929) (t!359169 lt!1821144)))))

(declare-fun e!2908027 () (InoxSet tuple2!53056))

(assert (=> d!1479772 (= (content!9013 (t!359169 lt!1821144)) e!2908027)))

(declare-fun b!4660405 () Bool)

(assert (=> b!4660405 (= e!2908027 ((as const (Array tuple2!53056 Bool)) false))))

(declare-fun b!4660406 () Bool)

(assert (=> b!4660406 (= e!2908027 ((_ map or) (store ((as const (Array tuple2!53056 Bool)) false) (h!58081 (t!359169 lt!1821144)) true) (content!9013 (t!359169 (t!359169 lt!1821144)))))))

(assert (= (and d!1479772 c!797737) b!4660405))

(assert (= (and d!1479772 (not c!797737)) b!4660406))

(declare-fun m!5543021 () Bool)

(assert (=> b!4660406 m!5543021))

(declare-fun m!5543023 () Bool)

(assert (=> b!4660406 m!5543023))

(assert (=> d!1479180 d!1479772))

(declare-fun bs!1067420 () Bool)

(declare-fun b!4660414 () Bool)

(assert (= bs!1067420 (and b!4660414 b!4659995)))

(declare-fun lambda!200216 () Int)

(assert (=> bs!1067420 (= (= (t!359168 (toList!5233 lt!1821404)) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200216 lambda!200182))))

(declare-fun bs!1067421 () Bool)

(assert (= bs!1067421 (and b!4660414 b!4660222)))

(assert (=> bs!1067421 (= (= (t!359168 (toList!5233 lt!1821404)) (toList!5233 lt!1821412)) (= lambda!200216 lambda!200197))))

(declare-fun bs!1067422 () Bool)

(assert (= bs!1067422 (and b!4660414 b!4660350)))

(assert (=> bs!1067422 (= (= (t!359168 (toList!5233 lt!1821404)) (toList!5233 lt!1821404)) (= lambda!200216 lambda!200211))))

(declare-fun bs!1067423 () Bool)

(assert (= bs!1067423 (and b!4660414 b!4659596)))

(assert (=> bs!1067423 (= (= (t!359168 (toList!5233 lt!1821404)) (toList!5233 lt!1821138)) (= lambda!200216 lambda!200132))))

(declare-fun bs!1067424 () Bool)

(assert (= bs!1067424 (and b!4660414 b!4659641)))

(assert (=> bs!1067424 (= (= (t!359168 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821138))) (= lambda!200216 lambda!200142))))

(declare-fun bs!1067425 () Bool)

(assert (= bs!1067425 (and b!4660414 b!4659639)))

(assert (=> bs!1067425 (= (= (t!359168 (toList!5233 lt!1821404)) (toList!5233 lt!1821138)) (= lambda!200216 lambda!200144))))

(declare-fun bs!1067426 () Bool)

(assert (= bs!1067426 (and b!4660414 b!4659642)))

(assert (=> bs!1067426 (= (= (t!359168 (toList!5233 lt!1821404)) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200216 lambda!200143))))

(assert (=> b!4660414 true))

(declare-fun bs!1067427 () Bool)

(declare-fun b!4660415 () Bool)

(assert (= bs!1067427 (and b!4660415 b!4659995)))

(declare-fun lambda!200217 () Int)

(assert (=> bs!1067427 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200217 lambda!200182))))

(declare-fun bs!1067428 () Bool)

(assert (= bs!1067428 (and b!4660415 b!4660222)))

(assert (=> bs!1067428 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (toList!5233 lt!1821412)) (= lambda!200217 lambda!200197))))

(declare-fun bs!1067429 () Bool)

(assert (= bs!1067429 (and b!4660415 b!4660350)))

(assert (=> bs!1067429 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (toList!5233 lt!1821404)) (= lambda!200217 lambda!200211))))

(declare-fun bs!1067430 () Bool)

(assert (= bs!1067430 (and b!4660415 b!4659596)))

(assert (=> bs!1067430 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (toList!5233 lt!1821138)) (= lambda!200217 lambda!200132))))

(declare-fun bs!1067431 () Bool)

(assert (= bs!1067431 (and b!4660415 b!4660414)))

(assert (=> bs!1067431 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200217 lambda!200216))))

(declare-fun bs!1067432 () Bool)

(assert (= bs!1067432 (and b!4660415 b!4659641)))

(assert (=> bs!1067432 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200217 lambda!200142))))

(declare-fun bs!1067433 () Bool)

(assert (= bs!1067433 (and b!4660415 b!4659639)))

(assert (=> bs!1067433 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (toList!5233 lt!1821138)) (= lambda!200217 lambda!200144))))

(declare-fun bs!1067434 () Bool)

(assert (= bs!1067434 (and b!4660415 b!4659642)))

(assert (=> bs!1067434 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200217 lambda!200143))))

(assert (=> b!4660415 true))

(declare-fun bs!1067435 () Bool)

(declare-fun b!4660412 () Bool)

(assert (= bs!1067435 (and b!4660412 b!4659995)))

(declare-fun lambda!200218 () Int)

(assert (=> bs!1067435 (= (= (toList!5233 lt!1821404) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200218 lambda!200182))))

(declare-fun bs!1067436 () Bool)

(assert (= bs!1067436 (and b!4660412 b!4660222)))

(assert (=> bs!1067436 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821412)) (= lambda!200218 lambda!200197))))

(declare-fun bs!1067437 () Bool)

(assert (= bs!1067437 (and b!4660412 b!4660350)))

(assert (=> bs!1067437 (= lambda!200218 lambda!200211)))

(declare-fun bs!1067438 () Bool)

(assert (= bs!1067438 (and b!4660412 b!4659596)))

(assert (=> bs!1067438 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821138)) (= lambda!200218 lambda!200132))))

(declare-fun bs!1067439 () Bool)

(assert (= bs!1067439 (and b!4660412 b!4660414)))

(assert (=> bs!1067439 (= (= (toList!5233 lt!1821404) (t!359168 (toList!5233 lt!1821404))) (= lambda!200218 lambda!200216))))

(declare-fun bs!1067441 () Bool)

(assert (= bs!1067441 (and b!4660412 b!4659641)))

(assert (=> bs!1067441 (= (= (toList!5233 lt!1821404) (t!359168 (toList!5233 lt!1821138))) (= lambda!200218 lambda!200142))))

(declare-fun bs!1067442 () Bool)

(assert (= bs!1067442 (and b!4660412 b!4660415)))

(assert (=> bs!1067442 (= (= (toList!5233 lt!1821404) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200218 lambda!200217))))

(declare-fun bs!1067443 () Bool)

(assert (= bs!1067443 (and b!4660412 b!4659639)))

(assert (=> bs!1067443 (= (= (toList!5233 lt!1821404) (toList!5233 lt!1821138)) (= lambda!200218 lambda!200144))))

(declare-fun bs!1067444 () Bool)

(assert (= bs!1067444 (and b!4660412 b!4659642)))

(assert (=> bs!1067444 (= (= (toList!5233 lt!1821404) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200218 lambda!200143))))

(assert (=> b!4660412 true))

(declare-fun bs!1067445 () Bool)

(declare-fun b!4660413 () Bool)

(assert (= bs!1067445 (and b!4660413 b!4659996)))

(declare-fun lambda!200219 () Int)

(assert (=> bs!1067445 (= lambda!200219 lambda!200184)))

(declare-fun bs!1067446 () Bool)

(assert (= bs!1067446 (and b!4660413 b!4660223)))

(assert (=> bs!1067446 (= lambda!200219 lambda!200198)))

(declare-fun bs!1067447 () Bool)

(assert (= bs!1067447 (and b!4660413 b!4659640)))

(assert (=> bs!1067447 (= lambda!200219 lambda!200145)))

(declare-fun bs!1067448 () Bool)

(assert (= bs!1067448 (and b!4660413 b!4660351)))

(assert (=> bs!1067448 (= lambda!200219 lambda!200212)))

(declare-fun bs!1067449 () Bool)

(assert (= bs!1067449 (and b!4660413 b!4659597)))

(assert (=> bs!1067449 (= lambda!200219 lambda!200133)))

(declare-fun b!4660408 () Bool)

(declare-fun e!2908029 () Unit!118984)

(declare-fun Unit!119137 () Unit!118984)

(assert (=> b!4660408 (= e!2908029 Unit!119137)))

(declare-fun b!4660409 () Bool)

(declare-fun e!2908028 () Unit!118984)

(declare-fun Unit!119138 () Unit!118984)

(assert (=> b!4660409 (= e!2908028 Unit!119138)))

(declare-fun b!4660410 () Bool)

(declare-fun res!1960295 () Bool)

(declare-fun e!2908031 () Bool)

(assert (=> b!4660410 (=> (not res!1960295) (not e!2908031))))

(declare-fun lt!1822079 () List!52055)

(assert (=> b!4660410 (= res!1960295 (= (length!544 lt!1822079) (length!545 (toList!5233 lt!1821404))))))

(declare-fun b!4660411 () Bool)

(assert (=> b!4660411 false))

(declare-fun Unit!119139 () Unit!118984)

(assert (=> b!4660411 (= e!2908029 Unit!119139)))

(declare-fun res!1960297 () Bool)

(assert (=> b!4660412 (=> (not res!1960297) (not e!2908031))))

(assert (=> b!4660412 (= res!1960297 (forall!11052 lt!1822079 lambda!200218))))

(assert (=> b!4660413 (= e!2908031 (= (content!9016 lt!1822079) (content!9016 (map!11483 (toList!5233 lt!1821404) lambda!200219))))))

(declare-fun d!1479774 () Bool)

(assert (=> d!1479774 e!2908031))

(declare-fun res!1960296 () Bool)

(assert (=> d!1479774 (=> (not res!1960296) (not e!2908031))))

(assert (=> d!1479774 (= res!1960296 (noDuplicate!844 lt!1822079))))

(declare-fun e!2908030 () List!52055)

(assert (=> d!1479774 (= lt!1822079 e!2908030)))

(declare-fun c!797738 () Bool)

(assert (=> d!1479774 (= c!797738 ((_ is Cons!51928) (toList!5233 lt!1821404)))))

(assert (=> d!1479774 (invariantList!1306 (toList!5233 lt!1821404))))

(assert (=> d!1479774 (= (getKeysList!757 (toList!5233 lt!1821404)) lt!1822079)))

(declare-fun b!4660407 () Bool)

(assert (=> b!4660407 (= e!2908030 Nil!51931)))

(assert (=> b!4660414 false))

(declare-fun lt!1822081 () Unit!118984)

(assert (=> b!4660414 (= lt!1822081 (forallContained!3252 (getKeysList!757 (t!359168 (toList!5233 lt!1821404))) lambda!200216 (_1!29821 (h!58080 (toList!5233 lt!1821404)))))))

(declare-fun Unit!119140 () Unit!118984)

(assert (=> b!4660414 (= e!2908028 Unit!119140)))

(assert (=> b!4660415 (= e!2908030 (Cons!51931 (_1!29821 (h!58080 (toList!5233 lt!1821404))) (getKeysList!757 (t!359168 (toList!5233 lt!1821404)))))))

(declare-fun c!797740 () Bool)

(assert (=> b!4660415 (= c!797740 (containsKey!2750 (t!359168 (toList!5233 lt!1821404)) (_1!29821 (h!58080 (toList!5233 lt!1821404)))))))

(declare-fun lt!1822080 () Unit!118984)

(assert (=> b!4660415 (= lt!1822080 e!2908029)))

(declare-fun c!797739 () Bool)

(assert (=> b!4660415 (= c!797739 (contains!15089 (getKeysList!757 (t!359168 (toList!5233 lt!1821404))) (_1!29821 (h!58080 (toList!5233 lt!1821404)))))))

(declare-fun lt!1822077 () Unit!118984)

(assert (=> b!4660415 (= lt!1822077 e!2908028)))

(declare-fun lt!1822078 () List!52055)

(assert (=> b!4660415 (= lt!1822078 (getKeysList!757 (t!359168 (toList!5233 lt!1821404))))))

(declare-fun lt!1822082 () Unit!118984)

(assert (=> b!4660415 (= lt!1822082 (lemmaForallContainsAddHeadPreserves!264 (t!359168 (toList!5233 lt!1821404)) lt!1822078 (h!58080 (toList!5233 lt!1821404))))))

(assert (=> b!4660415 (forall!11052 lt!1822078 lambda!200217)))

(declare-fun lt!1822083 () Unit!118984)

(assert (=> b!4660415 (= lt!1822083 lt!1822082)))

(assert (= (and d!1479774 c!797738) b!4660415))

(assert (= (and d!1479774 (not c!797738)) b!4660407))

(assert (= (and b!4660415 c!797740) b!4660411))

(assert (= (and b!4660415 (not c!797740)) b!4660408))

(assert (= (and b!4660415 c!797739) b!4660414))

(assert (= (and b!4660415 (not c!797739)) b!4660409))

(assert (= (and d!1479774 res!1960296) b!4660410))

(assert (= (and b!4660410 res!1960295) b!4660412))

(assert (= (and b!4660412 res!1960297) b!4660413))

(declare-fun m!5543071 () Bool)

(assert (=> b!4660413 m!5543071))

(declare-fun m!5543073 () Bool)

(assert (=> b!4660413 m!5543073))

(assert (=> b!4660413 m!5543073))

(declare-fun m!5543075 () Bool)

(assert (=> b!4660413 m!5543075))

(declare-fun m!5543077 () Bool)

(assert (=> b!4660414 m!5543077))

(assert (=> b!4660414 m!5543077))

(declare-fun m!5543079 () Bool)

(assert (=> b!4660414 m!5543079))

(declare-fun m!5543081 () Bool)

(assert (=> b!4660412 m!5543081))

(assert (=> b!4660415 m!5543077))

(declare-fun m!5543083 () Bool)

(assert (=> b!4660415 m!5543083))

(declare-fun m!5543085 () Bool)

(assert (=> b!4660415 m!5543085))

(declare-fun m!5543087 () Bool)

(assert (=> b!4660415 m!5543087))

(assert (=> b!4660415 m!5543077))

(declare-fun m!5543089 () Bool)

(assert (=> b!4660415 m!5543089))

(declare-fun m!5543091 () Bool)

(assert (=> d!1479774 m!5543091))

(assert (=> d!1479774 m!5542209))

(declare-fun m!5543093 () Bool)

(assert (=> b!4660410 m!5543093))

(assert (=> b!4660410 m!5542965))

(assert (=> b!4659708 d!1479774))

(declare-fun d!1479792 () Bool)

(declare-fun lt!1822094 () Bool)

(assert (=> d!1479792 (= lt!1822094 (select (content!9017 (t!359168 lt!1821145)) (get!17289 lt!1821305)))))

(declare-fun e!2908048 () Bool)

(assert (=> d!1479792 (= lt!1822094 e!2908048)))

(declare-fun res!1960312 () Bool)

(assert (=> d!1479792 (=> (not res!1960312) (not e!2908048))))

(assert (=> d!1479792 (= res!1960312 ((_ is Cons!51928) (t!359168 lt!1821145)))))

(assert (=> d!1479792 (= (contains!15088 (t!359168 lt!1821145) (get!17289 lt!1821305)) lt!1822094)))

(declare-fun b!4660436 () Bool)

(declare-fun e!2908047 () Bool)

(assert (=> b!4660436 (= e!2908048 e!2908047)))

(declare-fun res!1960313 () Bool)

(assert (=> b!4660436 (=> res!1960313 e!2908047)))

(assert (=> b!4660436 (= res!1960313 (= (h!58080 (t!359168 lt!1821145)) (get!17289 lt!1821305)))))

(declare-fun b!4660437 () Bool)

(assert (=> b!4660437 (= e!2908047 (contains!15088 (t!359168 (t!359168 lt!1821145)) (get!17289 lt!1821305)))))

(assert (= (and d!1479792 res!1960312) b!4660436))

(assert (= (and b!4660436 (not res!1960313)) b!4660437))

(assert (=> d!1479792 m!5542753))

(assert (=> d!1479792 m!5540677))

(declare-fun m!5543095 () Bool)

(assert (=> d!1479792 m!5543095))

(assert (=> b!4660437 m!5540677))

(declare-fun m!5543097 () Bool)

(assert (=> b!4660437 m!5543097))

(assert (=> b!4659650 d!1479792))

(assert (=> d!1479182 d!1479664))

(declare-fun d!1479794 () Bool)

(declare-fun res!1960314 () Bool)

(declare-fun e!2908049 () Bool)

(assert (=> d!1479794 (=> res!1960314 e!2908049)))

(assert (=> d!1479794 (= res!1960314 ((_ is Nil!51929) (t!359169 (t!359169 lt!1821143))))))

(assert (=> d!1479794 (= (forall!11048 (t!359169 (t!359169 lt!1821143)) lambda!199980) e!2908049)))

(declare-fun b!4660438 () Bool)

(declare-fun e!2908050 () Bool)

(assert (=> b!4660438 (= e!2908049 e!2908050)))

(declare-fun res!1960315 () Bool)

(assert (=> b!4660438 (=> (not res!1960315) (not e!2908050))))

(assert (=> b!4660438 (= res!1960315 (dynLambda!21606 lambda!199980 (h!58081 (t!359169 (t!359169 lt!1821143)))))))

(declare-fun b!4660439 () Bool)

(assert (=> b!4660439 (= e!2908050 (forall!11048 (t!359169 (t!359169 (t!359169 lt!1821143))) lambda!199980))))

(assert (= (and d!1479794 (not res!1960314)) b!4660438))

(assert (= (and b!4660438 res!1960315) b!4660439))

(declare-fun b_lambda!174931 () Bool)

(assert (=> (not b_lambda!174931) (not b!4660438)))

(declare-fun m!5543099 () Bool)

(assert (=> b!4660438 m!5543099))

(declare-fun m!5543101 () Bool)

(assert (=> b!4660439 m!5543101))

(assert (=> b!4659736 d!1479794))

(declare-fun d!1479796 () Bool)

(declare-fun res!1960316 () Bool)

(declare-fun e!2908051 () Bool)

(assert (=> d!1479796 (=> res!1960316 e!2908051)))

(assert (=> d!1479796 (= res!1960316 ((_ is Nil!51928) (t!359168 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))))))

(assert (=> d!1479796 (= (forall!11050 (t!359168 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)) (ite c!797509 lambda!200075 lambda!200077)) e!2908051)))

(declare-fun b!4660440 () Bool)

(declare-fun e!2908052 () Bool)

(assert (=> b!4660440 (= e!2908051 e!2908052)))

(declare-fun res!1960317 () Bool)

(assert (=> b!4660440 (=> (not res!1960317) (not e!2908052))))

(assert (=> b!4660440 (= res!1960317 (dynLambda!21608 (ite c!797509 lambda!200075 lambda!200077) (h!58080 (t!359168 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun b!4660441 () Bool)

(assert (=> b!4660441 (= e!2908052 (forall!11050 (t!359168 (t!359168 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (ite c!797509 lambda!200075 lambda!200077)))))

(assert (= (and d!1479796 (not res!1960316)) b!4660440))

(assert (= (and b!4660440 res!1960317) b!4660441))

(declare-fun b_lambda!174933 () Bool)

(assert (=> (not b_lambda!174933) (not b!4660440)))

(declare-fun m!5543103 () Bool)

(assert (=> b!4660440 m!5543103))

(declare-fun m!5543105 () Bool)

(assert (=> b!4660441 m!5543105))

(assert (=> b!4659800 d!1479796))

(assert (=> b!4659605 d!1479772))

(declare-fun d!1479798 () Bool)

(declare-fun res!1960318 () Bool)

(declare-fun e!2908053 () Bool)

(assert (=> d!1479798 (=> res!1960318 e!2908053)))

(assert (=> d!1479798 (= res!1960318 ((_ is Nil!51929) (t!359169 lt!1821144)))))

(assert (=> d!1479798 (= (forall!11048 (t!359169 lt!1821144) lambda!200082) e!2908053)))

(declare-fun b!4660442 () Bool)

(declare-fun e!2908054 () Bool)

(assert (=> b!4660442 (= e!2908053 e!2908054)))

(declare-fun res!1960319 () Bool)

(assert (=> b!4660442 (=> (not res!1960319) (not e!2908054))))

(assert (=> b!4660442 (= res!1960319 (dynLambda!21606 lambda!200082 (h!58081 (t!359169 lt!1821144))))))

(declare-fun b!4660443 () Bool)

(assert (=> b!4660443 (= e!2908054 (forall!11048 (t!359169 (t!359169 lt!1821144)) lambda!200082))))

(assert (= (and d!1479798 (not res!1960318)) b!4660442))

(assert (= (and b!4660442 res!1960319) b!4660443))

(declare-fun b_lambda!174935 () Bool)

(assert (=> (not b_lambda!174935) (not b!4660442)))

(declare-fun m!5543107 () Bool)

(assert (=> b!4660442 m!5543107))

(declare-fun m!5543109 () Bool)

(assert (=> b!4660443 m!5543109))

(assert (=> b!4659675 d!1479798))

(declare-fun d!1479800 () Bool)

(declare-fun res!1960320 () Bool)

(declare-fun e!2908055 () Bool)

(assert (=> d!1479800 (=> res!1960320 e!2908055)))

(assert (=> d!1479800 (= res!1960320 (and ((_ is Cons!51928) (t!359168 lt!1821306)) (= (_1!29821 (h!58080 (t!359168 lt!1821306))) key!4968)))))

(assert (=> d!1479800 (= (containsKey!2746 (t!359168 lt!1821306) key!4968) e!2908055)))

(declare-fun b!4660444 () Bool)

(declare-fun e!2908056 () Bool)

(assert (=> b!4660444 (= e!2908055 e!2908056)))

(declare-fun res!1960321 () Bool)

(assert (=> b!4660444 (=> (not res!1960321) (not e!2908056))))

(assert (=> b!4660444 (= res!1960321 ((_ is Cons!51928) (t!359168 lt!1821306)))))

(declare-fun b!4660445 () Bool)

(assert (=> b!4660445 (= e!2908056 (containsKey!2746 (t!359168 (t!359168 lt!1821306)) key!4968))))

(assert (= (and d!1479800 (not res!1960320)) b!4660444))

(assert (= (and b!4660444 res!1960321) b!4660445))

(declare-fun m!5543111 () Bool)

(assert (=> b!4660445 m!5543111))

(assert (=> b!4659787 d!1479800))

(assert (=> b!4659705 d!1479734))

(declare-fun d!1479802 () Bool)

(assert (=> d!1479802 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(declare-fun lt!1822095 () Unit!118984)

(assert (=> d!1479802 (= lt!1822095 (choose!32100 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(declare-fun e!2908057 () Bool)

(assert (=> d!1479802 e!2908057))

(declare-fun res!1960322 () Bool)

(assert (=> d!1479802 (=> (not res!1960322) (not e!2908057))))

(assert (=> d!1479802 (= res!1960322 (isStrictlySorted!580 (toList!5234 lt!1821147)))))

(assert (=> d!1479802 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1527 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)) lt!1822095)))

(declare-fun b!4660446 () Bool)

(assert (=> b!4660446 (= e!2908057 (containsKey!2749 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))

(assert (= (and d!1479802 res!1960322) b!4660446))

(assert (=> d!1479802 m!5540453))

(assert (=> d!1479802 m!5541669))

(assert (=> d!1479802 m!5541669))

(assert (=> d!1479802 m!5541685))

(assert (=> d!1479802 m!5540453))

(declare-fun m!5543113 () Bool)

(assert (=> d!1479802 m!5543113))

(assert (=> d!1479802 m!5541757))

(assert (=> b!4660446 m!5540453))

(assert (=> b!4660446 m!5541681))

(assert (=> b!4659753 d!1479802))

(declare-fun d!1479804 () Bool)

(assert (=> d!1479804 (= (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968))) (not (isEmpty!29025 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)))))))

(declare-fun bs!1067492 () Bool)

(assert (= bs!1067492 d!1479804))

(assert (=> bs!1067492 m!5541669))

(declare-fun m!5543115 () Bool)

(assert (=> bs!1067492 m!5543115))

(assert (=> b!4659753 d!1479804))

(declare-fun b!4660447 () Bool)

(declare-fun e!2908058 () Option!11847)

(assert (=> b!4660447 (= e!2908058 (Some!11846 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(declare-fun b!4660450 () Bool)

(declare-fun e!2908059 () Option!11847)

(assert (=> b!4660450 (= e!2908059 None!11846)))

(declare-fun b!4660449 () Bool)

(assert (=> b!4660449 (= e!2908059 (getValueByKey!1625 (t!359169 (toList!5234 lt!1821147)) (hash!3797 hashF!1389 key!4968)))))

(declare-fun b!4660448 () Bool)

(assert (=> b!4660448 (= e!2908058 e!2908059)))

(declare-fun c!797745 () Bool)

(assert (=> b!4660448 (= c!797745 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (not (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) (hash!3797 hashF!1389 key!4968)))))))

(declare-fun c!797744 () Bool)

(declare-fun d!1479806 () Bool)

(assert (=> d!1479806 (= c!797744 (and ((_ is Cons!51929) (toList!5234 lt!1821147)) (= (_1!29822 (h!58081 (toList!5234 lt!1821147))) (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1479806 (= (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968)) e!2908058)))

(assert (= (and d!1479806 c!797744) b!4660447))

(assert (= (and d!1479806 (not c!797744)) b!4660448))

(assert (= (and b!4660448 c!797745) b!4660449))

(assert (= (and b!4660448 (not c!797745)) b!4660450))

(assert (=> b!4660449 m!5540453))

(declare-fun m!5543117 () Bool)

(assert (=> b!4660449 m!5543117))

(assert (=> b!4659753 d!1479806))

(declare-fun d!1479808 () Bool)

(declare-fun res!1960323 () Bool)

(declare-fun e!2908060 () Bool)

(assert (=> d!1479808 (=> res!1960323 e!2908060)))

(assert (=> d!1479808 (= res!1960323 (and ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 oldBucket!40)))) (= (_1!29821 (h!58080 (t!359168 (t!359168 (t!359168 oldBucket!40))))) key!4968)))))

(assert (=> d!1479808 (= (containsKey!2746 (t!359168 (t!359168 (t!359168 oldBucket!40))) key!4968) e!2908060)))

(declare-fun b!4660451 () Bool)

(declare-fun e!2908061 () Bool)

(assert (=> b!4660451 (= e!2908060 e!2908061)))

(declare-fun res!1960324 () Bool)

(assert (=> b!4660451 (=> (not res!1960324) (not e!2908061))))

(assert (=> b!4660451 (= res!1960324 ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun b!4660452 () Bool)

(assert (=> b!4660452 (= e!2908061 (containsKey!2746 (t!359168 (t!359168 (t!359168 (t!359168 oldBucket!40)))) key!4968))))

(assert (= (and d!1479808 (not res!1960323)) b!4660451))

(assert (= (and b!4660451 res!1960324) b!4660452))

(declare-fun m!5543133 () Bool)

(assert (=> b!4660452 m!5543133))

(assert (=> b!4659810 d!1479808))

(declare-fun d!1479810 () Bool)

(declare-fun res!1960325 () Bool)

(declare-fun e!2908062 () Bool)

(assert (=> d!1479810 (=> res!1960325 e!2908062)))

(assert (=> d!1479810 (= res!1960325 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1479810 (= (forall!11050 (t!359168 oldBucket!40) lambda!200159) e!2908062)))

(declare-fun b!4660453 () Bool)

(declare-fun e!2908063 () Bool)

(assert (=> b!4660453 (= e!2908062 e!2908063)))

(declare-fun res!1960326 () Bool)

(assert (=> b!4660453 (=> (not res!1960326) (not e!2908063))))

(assert (=> b!4660453 (= res!1960326 (dynLambda!21608 lambda!200159 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun b!4660454 () Bool)

(assert (=> b!4660454 (= e!2908063 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200159))))

(assert (= (and d!1479810 (not res!1960325)) b!4660453))

(assert (= (and b!4660453 res!1960326) b!4660454))

(declare-fun b_lambda!174937 () Bool)

(assert (=> (not b_lambda!174937) (not b!4660453)))

(declare-fun m!5543145 () Bool)

(assert (=> b!4660453 m!5543145))

(declare-fun m!5543147 () Bool)

(assert (=> b!4660454 m!5543147))

(assert (=> d!1479170 d!1479810))

(assert (=> d!1479170 d!1479204))

(declare-fun d!1479814 () Bool)

(declare-fun res!1960329 () Bool)

(declare-fun e!2908066 () Bool)

(assert (=> d!1479814 (=> res!1960329 e!2908066)))

(assert (=> d!1479814 (= res!1960329 (not ((_ is Cons!51928) (t!359168 (tail!8255 oldBucket!40)))))))

(assert (=> d!1479814 (= (noDuplicateKeys!1652 (t!359168 (tail!8255 oldBucket!40))) e!2908066)))

(declare-fun b!4660457 () Bool)

(declare-fun e!2908067 () Bool)

(assert (=> b!4660457 (= e!2908066 e!2908067)))

(declare-fun res!1960330 () Bool)

(assert (=> b!4660457 (=> (not res!1960330) (not e!2908067))))

(assert (=> b!4660457 (= res!1960330 (not (containsKey!2746 (t!359168 (t!359168 (tail!8255 oldBucket!40))) (_1!29821 (h!58080 (t!359168 (tail!8255 oldBucket!40)))))))))

(declare-fun b!4660458 () Bool)

(assert (=> b!4660458 (= e!2908067 (noDuplicateKeys!1652 (t!359168 (t!359168 (tail!8255 oldBucket!40)))))))

(assert (= (and d!1479814 (not res!1960329)) b!4660457))

(assert (= (and b!4660457 res!1960330) b!4660458))

(declare-fun m!5543151 () Bool)

(assert (=> b!4660457 m!5543151))

(declare-fun m!5543153 () Bool)

(assert (=> b!4660458 m!5543153))

(assert (=> b!4659660 d!1479814))

(declare-fun d!1479818 () Bool)

(assert (=> d!1479818 (isDefined!9113 (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(declare-fun lt!1822100 () Unit!118984)

(assert (=> d!1479818 (= lt!1822100 (choose!32095 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> d!1479818 (invariantList!1306 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))

(assert (=> d!1479818 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) lt!1822100)))

(declare-fun bs!1067493 () Bool)

(assert (= bs!1067493 d!1479818))

(assert (=> bs!1067493 m!5541339))

(assert (=> bs!1067493 m!5541339))

(assert (=> bs!1067493 m!5541341))

(declare-fun m!5543157 () Bool)

(assert (=> bs!1067493 m!5543157))

(assert (=> bs!1067493 m!5542205))

(assert (=> b!4659564 d!1479818))

(declare-fun d!1479820 () Bool)

(assert (=> d!1479820 (= (isDefined!9113 (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968)) (not (isEmpty!29024 (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))))

(declare-fun bs!1067494 () Bool)

(assert (= bs!1067494 d!1479820))

(assert (=> bs!1067494 m!5541339))

(declare-fun m!5543167 () Bool)

(assert (=> bs!1067494 m!5543167))

(assert (=> b!4659564 d!1479820))

(declare-fun d!1479822 () Bool)

(declare-fun c!797746 () Bool)

(assert (=> d!1479822 (= c!797746 (and ((_ is Cons!51928) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) key!4968)))))

(declare-fun e!2908069 () Option!11848)

(assert (=> d!1479822 (= (getValueByKey!1626 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) e!2908069)))

(declare-fun b!4660461 () Bool)

(assert (=> b!4660461 (= e!2908069 (Some!11847 (_2!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))))

(declare-fun b!4660463 () Bool)

(declare-fun e!2908070 () Option!11848)

(assert (=> b!4660463 (= e!2908070 (getValueByKey!1626 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968))))

(declare-fun b!4660464 () Bool)

(assert (=> b!4660464 (= e!2908070 None!11847)))

(declare-fun b!4660462 () Bool)

(assert (=> b!4660462 (= e!2908069 e!2908070)))

(declare-fun c!797747 () Bool)

(assert (=> b!4660462 (= c!797747 (and ((_ is Cons!51928) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (not (= (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) key!4968))))))

(assert (= (and d!1479822 c!797746) b!4660461))

(assert (= (and d!1479822 (not c!797746)) b!4660462))

(assert (= (and b!4660462 c!797747) b!4660463))

(assert (= (and b!4660462 (not c!797747)) b!4660464))

(declare-fun m!5543171 () Bool)

(assert (=> b!4660463 m!5543171))

(assert (=> b!4659564 d!1479822))

(declare-fun d!1479826 () Bool)

(assert (=> d!1479826 (contains!15089 (getKeysList!757 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) key!4968)))

(declare-fun lt!1822109 () Unit!118984)

(assert (=> d!1479826 (= lt!1822109 (choose!32096 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968))))

(assert (=> d!1479826 (invariantList!1306 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))

(assert (=> d!1479826 (= (lemmaInListThenGetKeysListContains!752 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) key!4968) lt!1822109)))

(declare-fun bs!1067495 () Bool)

(assert (= bs!1067495 d!1479826))

(assert (=> bs!1067495 m!5541335))

(assert (=> bs!1067495 m!5541335))

(declare-fun m!5543173 () Bool)

(assert (=> bs!1067495 m!5543173))

(declare-fun m!5543175 () Bool)

(assert (=> bs!1067495 m!5543175))

(assert (=> bs!1067495 m!5542205))

(assert (=> b!4659564 d!1479826))

(declare-fun d!1479828 () Bool)

(assert (=> d!1479828 (= (isEmpty!29021 lt!1821746) (not ((_ is Some!11843) lt!1821746)))))

(assert (=> d!1479186 d!1479828))

(declare-fun d!1479830 () Bool)

(declare-fun res!1960336 () Bool)

(declare-fun e!2908077 () Bool)

(assert (=> d!1479830 (=> res!1960336 e!2908077)))

(assert (=> d!1479830 (= res!1960336 (not ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(assert (=> d!1479830 (= (noDuplicateKeys!1652 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) e!2908077)))

(declare-fun b!4660474 () Bool)

(declare-fun e!2908078 () Bool)

(assert (=> b!4660474 (= e!2908077 e!2908078)))

(declare-fun res!1960337 () Bool)

(assert (=> b!4660474 (=> (not res!1960337) (not e!2908078))))

(assert (=> b!4660474 (= res!1960337 (not (containsKey!2746 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (_1!29821 (h!58080 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))))

(declare-fun b!4660475 () Bool)

(assert (=> b!4660475 (= e!2908078 (noDuplicateKeys!1652 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(assert (= (and d!1479830 (not res!1960336)) b!4660474))

(assert (= (and b!4660474 res!1960337) b!4660475))

(declare-fun m!5543187 () Bool)

(assert (=> b!4660474 m!5543187))

(assert (=> b!4660475 m!5542117))

(assert (=> d!1479186 d!1479830))

(declare-fun bs!1067496 () Bool)

(declare-fun d!1479832 () Bool)

(assert (= bs!1067496 (and d!1479832 b!4660225)))

(declare-fun lambda!200224 () Int)

(assert (=> bs!1067496 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1822000) (= lambda!200224 lambda!200203))))

(declare-fun bs!1067497 () Bool)

(assert (= bs!1067497 (and d!1479832 d!1478838)))

(assert (=> bs!1067497 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821400) (= lambda!200224 lambda!200078))))

(declare-fun bs!1067498 () Bool)

(assert (= bs!1067498 (and d!1479832 b!4659725)))

(assert (=> bs!1067498 (= (= (extractMap!1708 (t!359169 lt!1821144)) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200224 lambda!200156))))

(declare-fun bs!1067499 () Bool)

(assert (= bs!1067499 (and d!1479832 b!4659241)))

(assert (=> bs!1067499 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821404) (= lambda!200224 lambda!200077))))

(declare-fun bs!1067500 () Bool)

(assert (= bs!1067500 (and d!1479832 b!4659723)))

(assert (=> bs!1067500 (= (= (extractMap!1708 (t!359169 lt!1821144)) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200224 lambda!200157))))

(declare-fun bs!1067501 () Bool)

(assert (= bs!1067501 (and d!1479832 d!1478768)))

(assert (=> bs!1067501 (not (= lambda!200224 lambda!199986))))

(declare-fun bs!1067502 () Bool)

(assert (= bs!1067502 (and d!1479832 d!1479614)))

(assert (=> bs!1067502 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821996) (= lambda!200224 lambda!200205))))

(declare-fun bs!1067503 () Bool)

(assert (= bs!1067503 (and d!1479832 d!1478866)))

(assert (=> bs!1067503 (not (= lambda!200224 lambda!200086))))

(assert (=> bs!1067499 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200224 lambda!200076))))

(declare-fun bs!1067504 () Bool)

(assert (= bs!1067504 (and d!1479832 d!1479528)))

(assert (=> bs!1067504 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821933) (= lambda!200224 lambda!200192))))

(declare-fun bs!1067505 () Bool)

(assert (= bs!1067505 (and d!1479832 b!4660227)))

(assert (=> bs!1067505 (= (= (extractMap!1708 (t!359169 lt!1821144)) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200224 lambda!200199))))

(assert (=> bs!1067500 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821726) (= lambda!200224 lambda!200158))))

(declare-fun bs!1067506 () Bool)

(assert (= bs!1067506 (and d!1479832 d!1479170)))

(assert (=> bs!1067506 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821722) (= lambda!200224 lambda!200159))))

(declare-fun bs!1067508 () Bool)

(assert (= bs!1067508 (and d!1479832 b!4659243)))

(assert (=> bs!1067508 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200224 lambda!200075))))

(declare-fun bs!1067509 () Bool)

(assert (= bs!1067509 (and d!1479832 b!4660124)))

(assert (=> bs!1067509 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821937) (= lambda!200224 lambda!200191))))

(declare-fun bs!1067511 () Bool)

(assert (= bs!1067511 (and d!1479832 b!4659665)))

(assert (=> bs!1067511 (= lambda!200224 lambda!200147)))

(declare-fun bs!1067513 () Bool)

(assert (= bs!1067513 (and d!1479832 d!1479132)))

(assert (=> bs!1067513 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821663) (= lambda!200224 lambda!200149))))

(assert (=> bs!1067509 (= (= (extractMap!1708 (t!359169 lt!1821144)) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200224 lambda!200190))))

(declare-fun bs!1067515 () Bool)

(assert (= bs!1067515 (and d!1479832 d!1479526)))

(assert (=> bs!1067515 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821667) (= lambda!200224 lambda!200185))))

(declare-fun bs!1067517 () Bool)

(assert (= bs!1067517 (and d!1479832 b!4660126)))

(assert (=> bs!1067517 (= (= (extractMap!1708 (t!359169 lt!1821144)) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200224 lambda!200188))))

(declare-fun bs!1067519 () Bool)

(assert (= bs!1067519 (and d!1479832 d!1479158)))

(assert (=> bs!1067519 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821404) (= lambda!200224 lambda!200155))))

(declare-fun bs!1067521 () Bool)

(assert (= bs!1067521 (and d!1479832 b!4659667)))

(assert (=> bs!1067521 (= lambda!200224 lambda!200146)))

(assert (=> bs!1067496 (= (= (extractMap!1708 (t!359169 lt!1821144)) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200224 lambda!200201))))

(declare-fun bs!1067524 () Bool)

(assert (= bs!1067524 (and d!1479832 d!1479372)))

(assert (=> bs!1067524 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200224 lambda!200180))))

(assert (=> bs!1067511 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821667) (= lambda!200224 lambda!200148))))

(declare-fun bs!1067526 () Bool)

(assert (= bs!1067526 (and d!1479832 d!1479240)))

(assert (=> bs!1067526 (= (= (extractMap!1708 (t!359169 lt!1821144)) lt!1821141) (= lambda!200224 lambda!200166))))

(assert (=> d!1479832 true))

(assert (=> d!1479832 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) lambda!200224)))

(declare-fun lt!1822110 () Unit!118984)

(assert (=> d!1479832 (= lt!1822110 (choose!32099 (extractMap!1708 (t!359169 lt!1821144))))))

(assert (=> d!1479832 (= (lemmaContainsAllItsOwnKeys!606 (extractMap!1708 (t!359169 lt!1821144))) lt!1822110)))

(declare-fun bs!1067532 () Bool)

(assert (= bs!1067532 d!1479832))

(declare-fun m!5543203 () Bool)

(assert (=> bs!1067532 m!5543203))

(assert (=> bs!1067532 m!5540821))

(declare-fun m!5543205 () Bool)

(assert (=> bs!1067532 m!5543205))

(assert (=> bm!325557 d!1479832))

(declare-fun b!4660483 () Bool)

(declare-fun e!2908084 () List!52052)

(assert (=> b!4660483 (= e!2908084 (t!359168 (t!359168 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun b!4660485 () Bool)

(declare-fun e!2908085 () List!52052)

(assert (=> b!4660485 (= e!2908085 (Cons!51928 (h!58080 (t!359168 (t!359168 (t!359168 oldBucket!40)))) (removePairForKey!1275 (t!359168 (t!359168 (t!359168 (t!359168 oldBucket!40)))) key!4968)))))

(declare-fun b!4660486 () Bool)

(assert (=> b!4660486 (= e!2908085 Nil!51928)))

(declare-fun b!4660484 () Bool)

(assert (=> b!4660484 (= e!2908084 e!2908085)))

(declare-fun c!797752 () Bool)

(assert (=> b!4660484 (= c!797752 ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun d!1479838 () Bool)

(declare-fun lt!1822132 () List!52052)

(assert (=> d!1479838 (not (containsKey!2746 lt!1822132 key!4968))))

(assert (=> d!1479838 (= lt!1822132 e!2908084)))

(declare-fun c!797753 () Bool)

(assert (=> d!1479838 (= c!797753 (and ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 oldBucket!40)))) (= (_1!29821 (h!58080 (t!359168 (t!359168 (t!359168 oldBucket!40))))) key!4968)))))

(assert (=> d!1479838 (noDuplicateKeys!1652 (t!359168 (t!359168 (t!359168 oldBucket!40))))))

(assert (=> d!1479838 (= (removePairForKey!1275 (t!359168 (t!359168 (t!359168 oldBucket!40))) key!4968) lt!1822132)))

(assert (= (and d!1479838 c!797753) b!4660483))

(assert (= (and d!1479838 (not c!797753)) b!4660484))

(assert (= (and b!4660484 c!797752) b!4660485))

(assert (= (and b!4660484 (not c!797752)) b!4660486))

(declare-fun m!5543207 () Bool)

(assert (=> b!4660485 m!5543207))

(declare-fun m!5543209 () Bool)

(assert (=> d!1479838 m!5543209))

(assert (=> d!1479838 m!5543017))

(assert (=> b!4659762 d!1479838))

(declare-fun bs!1067541 () Bool)

(declare-fun d!1479840 () Bool)

(assert (= bs!1067541 (and d!1479840 b!4660225)))

(declare-fun lambda!200226 () Int)

(assert (=> bs!1067541 (not (= lambda!200226 lambda!200203))))

(declare-fun bs!1067542 () Bool)

(assert (= bs!1067542 (and d!1479840 d!1478838)))

(assert (=> bs!1067542 (not (= lambda!200226 lambda!200078))))

(declare-fun bs!1067543 () Bool)

(assert (= bs!1067543 (and d!1479840 b!4659725)))

(assert (=> bs!1067543 (not (= lambda!200226 lambda!200156))))

(declare-fun bs!1067544 () Bool)

(assert (= bs!1067544 (and d!1479840 b!4659241)))

(assert (=> bs!1067544 (not (= lambda!200226 lambda!200077))))

(declare-fun bs!1067545 () Bool)

(assert (= bs!1067545 (and d!1479840 b!4659723)))

(assert (=> bs!1067545 (not (= lambda!200226 lambda!200157))))

(declare-fun bs!1067546 () Bool)

(assert (= bs!1067546 (and d!1479840 d!1478768)))

(assert (=> bs!1067546 (= (= (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) hash!414) (= lambda!200226 lambda!199986))))

(declare-fun bs!1067547 () Bool)

(assert (= bs!1067547 (and d!1479840 d!1479614)))

(assert (=> bs!1067547 (not (= lambda!200226 lambda!200205))))

(declare-fun bs!1067549 () Bool)

(assert (= bs!1067549 (and d!1479840 d!1478866)))

(assert (=> bs!1067549 (= (= (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) hash!414) (= lambda!200226 lambda!200086))))

(assert (=> bs!1067544 (not (= lambda!200226 lambda!200076))))

(declare-fun bs!1067552 () Bool)

(assert (= bs!1067552 (and d!1479840 d!1479528)))

(assert (=> bs!1067552 (not (= lambda!200226 lambda!200192))))

(declare-fun bs!1067554 () Bool)

(assert (= bs!1067554 (and d!1479840 b!4660227)))

(assert (=> bs!1067554 (not (= lambda!200226 lambda!200199))))

(assert (=> bs!1067545 (not (= lambda!200226 lambda!200158))))

(declare-fun bs!1067557 () Bool)

(assert (= bs!1067557 (and d!1479840 d!1479170)))

(assert (=> bs!1067557 (not (= lambda!200226 lambda!200159))))

(declare-fun bs!1067559 () Bool)

(assert (= bs!1067559 (and d!1479840 b!4659243)))

(assert (=> bs!1067559 (not (= lambda!200226 lambda!200075))))

(declare-fun bs!1067561 () Bool)

(assert (= bs!1067561 (and d!1479840 b!4660124)))

(assert (=> bs!1067561 (not (= lambda!200226 lambda!200191))))

(declare-fun bs!1067563 () Bool)

(assert (= bs!1067563 (and d!1479840 b!4659665)))

(assert (=> bs!1067563 (not (= lambda!200226 lambda!200147))))

(declare-fun bs!1067565 () Bool)

(assert (= bs!1067565 (and d!1479840 d!1479132)))

(assert (=> bs!1067565 (not (= lambda!200226 lambda!200149))))

(assert (=> bs!1067561 (not (= lambda!200226 lambda!200190))))

(declare-fun bs!1067567 () Bool)

(assert (= bs!1067567 (and d!1479840 d!1479832)))

(assert (=> bs!1067567 (not (= lambda!200226 lambda!200224))))

(declare-fun bs!1067569 () Bool)

(assert (= bs!1067569 (and d!1479840 d!1479526)))

(assert (=> bs!1067569 (not (= lambda!200226 lambda!200185))))

(declare-fun bs!1067571 () Bool)

(assert (= bs!1067571 (and d!1479840 b!4660126)))

(assert (=> bs!1067571 (not (= lambda!200226 lambda!200188))))

(declare-fun bs!1067573 () Bool)

(assert (= bs!1067573 (and d!1479840 d!1479158)))

(assert (=> bs!1067573 (not (= lambda!200226 lambda!200155))))

(declare-fun bs!1067574 () Bool)

(assert (= bs!1067574 (and d!1479840 b!4659667)))

(assert (=> bs!1067574 (not (= lambda!200226 lambda!200146))))

(assert (=> bs!1067541 (not (= lambda!200226 lambda!200201))))

(declare-fun bs!1067577 () Bool)

(assert (= bs!1067577 (and d!1479840 d!1479372)))

(assert (=> bs!1067577 (not (= lambda!200226 lambda!200180))))

(assert (=> bs!1067563 (not (= lambda!200226 lambda!200148))))

(declare-fun bs!1067580 () Bool)

(assert (= bs!1067580 (and d!1479840 d!1479240)))

(assert (=> bs!1067580 (not (= lambda!200226 lambda!200166))))

(assert (=> d!1479840 true))

(assert (=> d!1479840 true))

(assert (=> d!1479840 (= (allKeysSameHash!1506 (_2!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) hashF!1389) (forall!11050 (_2!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143)))) lambda!200226))))

(declare-fun bs!1067587 () Bool)

(assert (= bs!1067587 d!1479840))

(declare-fun m!5543211 () Bool)

(assert (=> bs!1067587 m!5543211))

(assert (=> bs!1066951 d!1479840))

(declare-fun d!1479842 () Bool)

(declare-fun res!1960343 () Bool)

(declare-fun e!2908086 () Bool)

(assert (=> d!1479842 (=> res!1960343 e!2908086)))

(assert (=> d!1479842 (= res!1960343 ((_ is Nil!51928) (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (t!359168 oldBucket!40))))))

(assert (=> d!1479842 (= (forall!11050 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (t!359168 oldBucket!40)) (ite c!797610 lambda!200156 lambda!200158)) e!2908086)))

(declare-fun b!4660487 () Bool)

(declare-fun e!2908087 () Bool)

(assert (=> b!4660487 (= e!2908086 e!2908087)))

(declare-fun res!1960344 () Bool)

(assert (=> b!4660487 (=> (not res!1960344) (not e!2908087))))

(assert (=> b!4660487 (= res!1960344 (dynLambda!21608 (ite c!797610 lambda!200156 lambda!200158) (h!58080 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (t!359168 oldBucket!40)))))))

(declare-fun b!4660488 () Bool)

(assert (=> b!4660488 (= e!2908087 (forall!11050 (t!359168 (ite c!797610 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (t!359168 oldBucket!40))) (ite c!797610 lambda!200156 lambda!200158)))))

(assert (= (and d!1479842 (not res!1960343)) b!4660487))

(assert (= (and b!4660487 res!1960344) b!4660488))

(declare-fun b_lambda!174941 () Bool)

(assert (=> (not b_lambda!174941) (not b!4660487)))

(declare-fun m!5543213 () Bool)

(assert (=> b!4660487 m!5543213))

(declare-fun m!5543215 () Bool)

(assert (=> b!4660488 m!5543215))

(assert (=> bm!325561 d!1479842))

(declare-fun d!1479844 () Bool)

(declare-fun res!1960345 () Bool)

(declare-fun e!2908088 () Bool)

(assert (=> d!1479844 (=> res!1960345 e!2908088)))

(assert (=> d!1479844 (= res!1960345 ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821412))))))

(assert (=> d!1479844 (= (forall!11050 (t!359168 (toList!5233 lt!1821412)) lambda!200077) e!2908088)))

(declare-fun b!4660489 () Bool)

(declare-fun e!2908089 () Bool)

(assert (=> b!4660489 (= e!2908088 e!2908089)))

(declare-fun res!1960346 () Bool)

(assert (=> b!4660489 (=> (not res!1960346) (not e!2908089))))

(assert (=> b!4660489 (= res!1960346 (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (toList!5233 lt!1821412)))))))

(declare-fun b!4660490 () Bool)

(assert (=> b!4660490 (= e!2908089 (forall!11050 (t!359168 (t!359168 (toList!5233 lt!1821412))) lambda!200077))))

(assert (= (and d!1479844 (not res!1960345)) b!4660489))

(assert (= (and b!4660489 res!1960346) b!4660490))

(declare-fun b_lambda!174943 () Bool)

(assert (=> (not b_lambda!174943) (not b!4660489)))

(declare-fun m!5543217 () Bool)

(assert (=> b!4660489 m!5543217))

(declare-fun m!5543219 () Bool)

(assert (=> b!4660490 m!5543219))

(assert (=> b!4659696 d!1479844))

(declare-fun bs!1067588 () Bool)

(declare-fun d!1479846 () Bool)

(assert (= bs!1067588 (and d!1479846 b!4660225)))

(declare-fun lambda!200229 () Int)

(assert (=> bs!1067588 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1822000) (= lambda!200229 lambda!200203))))

(declare-fun bs!1067589 () Bool)

(assert (= bs!1067589 (and d!1479846 d!1478838)))

(assert (=> bs!1067589 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821400) (= lambda!200229 lambda!200078))))

(declare-fun bs!1067590 () Bool)

(assert (= bs!1067590 (and d!1479846 b!4659725)))

(assert (=> bs!1067590 (= lambda!200229 lambda!200156)))

(declare-fun bs!1067591 () Bool)

(assert (= bs!1067591 (and d!1479846 b!4659241)))

(assert (=> bs!1067591 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200229 lambda!200077))))

(declare-fun bs!1067592 () Bool)

(assert (= bs!1067592 (and d!1479846 b!4659723)))

(assert (=> bs!1067592 (= lambda!200229 lambda!200157)))

(declare-fun bs!1067593 () Bool)

(assert (= bs!1067593 (and d!1479846 d!1478768)))

(assert (=> bs!1067593 (not (= lambda!200229 lambda!199986))))

(declare-fun bs!1067594 () Bool)

(assert (= bs!1067594 (and d!1479846 d!1479614)))

(assert (=> bs!1067594 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821996) (= lambda!200229 lambda!200205))))

(declare-fun bs!1067595 () Bool)

(assert (= bs!1067595 (and d!1479846 d!1478866)))

(assert (=> bs!1067595 (not (= lambda!200229 lambda!200086))))

(assert (=> bs!1067591 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200229 lambda!200076))))

(declare-fun bs!1067596 () Bool)

(assert (= bs!1067596 (and d!1479846 b!4660227)))

(assert (=> bs!1067596 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200229 lambda!200199))))

(assert (=> bs!1067592 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821726) (= lambda!200229 lambda!200158))))

(declare-fun bs!1067597 () Bool)

(assert (= bs!1067597 (and d!1479846 d!1479170)))

(assert (=> bs!1067597 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821722) (= lambda!200229 lambda!200159))))

(declare-fun bs!1067598 () Bool)

(assert (= bs!1067598 (and d!1479846 b!4659243)))

(assert (=> bs!1067598 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200229 lambda!200075))))

(declare-fun bs!1067599 () Bool)

(assert (= bs!1067599 (and d!1479846 b!4660124)))

(assert (=> bs!1067599 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821937) (= lambda!200229 lambda!200191))))

(declare-fun bs!1067600 () Bool)

(assert (= bs!1067600 (and d!1479846 b!4659665)))

(assert (=> bs!1067600 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200229 lambda!200147))))

(declare-fun bs!1067601 () Bool)

(assert (= bs!1067601 (and d!1479846 d!1479132)))

(assert (=> bs!1067601 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821663) (= lambda!200229 lambda!200149))))

(assert (=> bs!1067599 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200229 lambda!200190))))

(declare-fun bs!1067602 () Bool)

(assert (= bs!1067602 (and d!1479846 d!1479832)))

(assert (=> bs!1067602 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200229 lambda!200224))))

(declare-fun bs!1067603 () Bool)

(assert (= bs!1067603 (and d!1479846 d!1479526)))

(assert (=> bs!1067603 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821667) (= lambda!200229 lambda!200185))))

(declare-fun bs!1067604 () Bool)

(assert (= bs!1067604 (and d!1479846 b!4660126)))

(assert (=> bs!1067604 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200229 lambda!200188))))

(declare-fun bs!1067605 () Bool)

(assert (= bs!1067605 (and d!1479846 d!1479158)))

(assert (=> bs!1067605 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821404) (= lambda!200229 lambda!200155))))

(declare-fun bs!1067606 () Bool)

(assert (= bs!1067606 (and d!1479846 b!4659667)))

(assert (=> bs!1067606 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200229 lambda!200146))))

(assert (=> bs!1067588 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200229 lambda!200201))))

(declare-fun bs!1067607 () Bool)

(assert (= bs!1067607 (and d!1479846 d!1479372)))

(assert (=> bs!1067607 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200229 lambda!200180))))

(assert (=> bs!1067600 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821667) (= lambda!200229 lambda!200148))))

(declare-fun bs!1067609 () Bool)

(assert (= bs!1067609 (and d!1479846 d!1479240)))

(assert (=> bs!1067609 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821141) (= lambda!200229 lambda!200166))))

(declare-fun bs!1067611 () Bool)

(assert (= bs!1067611 (and d!1479846 d!1479528)))

(assert (=> bs!1067611 (= (= (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821933) (= lambda!200229 lambda!200192))))

(declare-fun bs!1067613 () Bool)

(assert (= bs!1067613 (and d!1479846 d!1479840)))

(assert (=> bs!1067613 (not (= lambda!200229 lambda!200226))))

(assert (=> d!1479846 true))

(assert (=> d!1479846 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200229)))

(declare-fun lt!1822133 () Unit!118984)

(assert (=> d!1479846 (= lt!1822133 (choose!32099 (+!1992 lt!1821141 (h!58080 oldBucket!40))))))

(assert (=> d!1479846 (= (lemmaContainsAllItsOwnKeys!606 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lt!1822133)))

(declare-fun bs!1067620 () Bool)

(assert (= bs!1067620 d!1479846))

(declare-fun m!5543221 () Bool)

(assert (=> bs!1067620 m!5543221))

(assert (=> bs!1067620 m!5540769))

(declare-fun m!5543223 () Bool)

(assert (=> bs!1067620 m!5543223))

(assert (=> bm!325562 d!1479846))

(declare-fun d!1479848 () Bool)

(declare-fun lt!1822134 () Bool)

(assert (=> d!1479848 (= lt!1822134 (select (content!9016 (t!359171 (keys!18406 lt!1821138))) key!4968))))

(declare-fun e!2908091 () Bool)

(assert (=> d!1479848 (= lt!1822134 e!2908091)))

(declare-fun res!1960348 () Bool)

(assert (=> d!1479848 (=> (not res!1960348) (not e!2908091))))

(assert (=> d!1479848 (= res!1960348 ((_ is Cons!51931) (t!359171 (keys!18406 lt!1821138))))))

(assert (=> d!1479848 (= (contains!15089 (t!359171 (keys!18406 lt!1821138)) key!4968) lt!1822134)))

(declare-fun b!4660491 () Bool)

(declare-fun e!2908090 () Bool)

(assert (=> b!4660491 (= e!2908091 e!2908090)))

(declare-fun res!1960347 () Bool)

(assert (=> b!4660491 (=> res!1960347 e!2908090)))

(assert (=> b!4660491 (= res!1960347 (= (h!58085 (t!359171 (keys!18406 lt!1821138))) key!4968))))

(declare-fun b!4660492 () Bool)

(assert (=> b!4660492 (= e!2908090 (contains!15089 (t!359171 (t!359171 (keys!18406 lt!1821138))) key!4968))))

(assert (= (and d!1479848 res!1960348) b!4660491))

(assert (= (and b!4660491 (not res!1960347)) b!4660492))

(assert (=> d!1479848 m!5542927))

(declare-fun m!5543225 () Bool)

(assert (=> d!1479848 m!5543225))

(declare-fun m!5543227 () Bool)

(assert (=> b!4660492 m!5543227))

(assert (=> b!4659588 d!1479848))

(declare-fun d!1479850 () Bool)

(declare-fun res!1960349 () Bool)

(declare-fun e!2908092 () Bool)

(assert (=> d!1479850 (=> res!1960349 e!2908092)))

(assert (=> d!1479850 (= res!1960349 ((_ is Nil!51928) (t!359168 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))))))

(assert (=> d!1479850 (= (forall!11050 (t!359168 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))) (ite c!797509 lambda!200075 lambda!200077)) e!2908092)))

(declare-fun b!4660493 () Bool)

(declare-fun e!2908093 () Bool)

(assert (=> b!4660493 (= e!2908092 e!2908093)))

(declare-fun res!1960350 () Bool)

(assert (=> b!4660493 (=> (not res!1960350) (not e!2908093))))

(assert (=> b!4660493 (= res!1960350 (dynLambda!21608 (ite c!797509 lambda!200075 lambda!200077) (h!58080 (t!359168 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun b!4660494 () Bool)

(assert (=> b!4660494 (= e!2908093 (forall!11050 (t!359168 (t!359168 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (ite c!797509 lambda!200075 lambda!200077)))))

(assert (= (and d!1479850 (not res!1960349)) b!4660493))

(assert (= (and b!4660493 res!1960350) b!4660494))

(declare-fun b_lambda!174945 () Bool)

(assert (=> (not b_lambda!174945) (not b!4660493)))

(declare-fun m!5543229 () Bool)

(assert (=> b!4660493 m!5543229))

(declare-fun m!5543231 () Bool)

(assert (=> b!4660494 m!5543231))

(assert (=> b!4659677 d!1479850))

(declare-fun d!1479852 () Bool)

(assert (=> d!1479852 (dynLambda!21608 lambda!200077 (h!58080 oldBucket!40))))

(assert (=> d!1479852 true))

(declare-fun _$7!2221 () Unit!118984)

(assert (=> d!1479852 (= (choose!32098 (toList!5233 lt!1821412) lambda!200077 (h!58080 oldBucket!40)) _$7!2221)))

(declare-fun b_lambda!174947 () Bool)

(assert (=> (not b_lambda!174947) (not d!1479852)))

(declare-fun bs!1067637 () Bool)

(assert (= bs!1067637 d!1479852))

(assert (=> bs!1067637 m!5541519))

(assert (=> d!1479174 d!1479852))

(assert (=> d!1479174 d!1479160))

(declare-fun d!1479854 () Bool)

(declare-fun res!1960351 () Bool)

(declare-fun e!2908094 () Bool)

(assert (=> d!1479854 (=> res!1960351 e!2908094)))

(assert (=> d!1479854 (= res!1960351 ((_ is Nil!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1479854 (= (forall!11048 (toList!5234 lt!1821147) lambda!200160) e!2908094)))

(declare-fun b!4660495 () Bool)

(declare-fun e!2908095 () Bool)

(assert (=> b!4660495 (= e!2908094 e!2908095)))

(declare-fun res!1960352 () Bool)

(assert (=> b!4660495 (=> (not res!1960352) (not e!2908095))))

(assert (=> b!4660495 (= res!1960352 (dynLambda!21606 lambda!200160 (h!58081 (toList!5234 lt!1821147))))))

(declare-fun b!4660496 () Bool)

(assert (=> b!4660496 (= e!2908095 (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200160))))

(assert (= (and d!1479854 (not res!1960351)) b!4660495))

(assert (= (and b!4660495 res!1960352) b!4660496))

(declare-fun b_lambda!174949 () Bool)

(assert (=> (not b_lambda!174949) (not b!4660495)))

(declare-fun m!5543233 () Bool)

(assert (=> b!4660495 m!5543233))

(declare-fun m!5543235 () Bool)

(assert (=> b!4660496 m!5543235))

(assert (=> d!1479212 d!1479854))

(declare-fun d!1479856 () Bool)

(declare-fun res!1960353 () Bool)

(declare-fun e!2908096 () Bool)

(assert (=> d!1479856 (=> res!1960353 e!2908096)))

(assert (=> d!1479856 (= res!1960353 ((_ is Nil!51928) (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_2!29822 (h!58081 lt!1821144)))))))

(assert (=> d!1479856 (= (forall!11050 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_2!29822 (h!58081 lt!1821144))) (ite c!797596 lambda!200146 lambda!200148)) e!2908096)))

(declare-fun b!4660497 () Bool)

(declare-fun e!2908097 () Bool)

(assert (=> b!4660497 (= e!2908096 e!2908097)))

(declare-fun res!1960354 () Bool)

(assert (=> b!4660497 (=> (not res!1960354) (not e!2908097))))

(assert (=> b!4660497 (= res!1960354 (dynLambda!21608 (ite c!797596 lambda!200146 lambda!200148) (h!58080 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun b!4660498 () Bool)

(assert (=> b!4660498 (= e!2908097 (forall!11050 (t!359168 (ite c!797596 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))) (_2!29822 (h!58081 lt!1821144)))) (ite c!797596 lambda!200146 lambda!200148)))))

(assert (= (and d!1479856 (not res!1960353)) b!4660497))

(assert (= (and b!4660497 res!1960354) b!4660498))

(declare-fun b_lambda!174951 () Bool)

(assert (=> (not b_lambda!174951) (not b!4660497)))

(declare-fun m!5543271 () Bool)

(assert (=> b!4660497 m!5543271))

(declare-fun m!5543273 () Bool)

(assert (=> b!4660498 m!5543273))

(assert (=> bm!325556 d!1479856))

(declare-fun d!1479860 () Bool)

(declare-fun res!1960355 () Bool)

(declare-fun e!2908098 () Bool)

(assert (=> d!1479860 (=> res!1960355 e!2908098)))

(assert (=> d!1479860 (= res!1960355 ((_ is Nil!51928) (toList!5233 lt!1821141)))))

(assert (=> d!1479860 (= (forall!11050 (toList!5233 lt!1821141) lambda!200155) e!2908098)))

(declare-fun b!4660499 () Bool)

(declare-fun e!2908099 () Bool)

(assert (=> b!4660499 (= e!2908098 e!2908099)))

(declare-fun res!1960356 () Bool)

(assert (=> b!4660499 (=> (not res!1960356) (not e!2908099))))

(assert (=> b!4660499 (= res!1960356 (dynLambda!21608 lambda!200155 (h!58080 (toList!5233 lt!1821141))))))

(declare-fun b!4660500 () Bool)

(assert (=> b!4660500 (= e!2908099 (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200155))))

(assert (= (and d!1479860 (not res!1960355)) b!4660499))

(assert (= (and b!4660499 res!1960356) b!4660500))

(declare-fun b_lambda!174953 () Bool)

(assert (=> (not b_lambda!174953) (not b!4660499)))

(declare-fun m!5543275 () Bool)

(assert (=> b!4660499 m!5543275))

(declare-fun m!5543277 () Bool)

(assert (=> b!4660500 m!5543277))

(assert (=> d!1479158 d!1479860))

(declare-fun bs!1067665 () Bool)

(declare-fun d!1479862 () Bool)

(assert (= bs!1067665 (and d!1479862 b!4660225)))

(declare-fun lambda!200234 () Int)

(assert (=> bs!1067665 (= (= lt!1821404 lt!1822000) (= lambda!200234 lambda!200203))))

(declare-fun bs!1067666 () Bool)

(assert (= bs!1067666 (and d!1479862 d!1478838)))

(assert (=> bs!1067666 (= (= lt!1821404 lt!1821400) (= lambda!200234 lambda!200078))))

(declare-fun bs!1067667 () Bool)

(assert (= bs!1067667 (and d!1479862 b!4659725)))

(assert (=> bs!1067667 (= (= lt!1821404 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200234 lambda!200156))))

(declare-fun bs!1067668 () Bool)

(assert (= bs!1067668 (and d!1479862 b!4659241)))

(assert (=> bs!1067668 (= lambda!200234 lambda!200077)))

(declare-fun bs!1067669 () Bool)

(assert (= bs!1067669 (and d!1479862 b!4659723)))

(assert (=> bs!1067669 (= (= lt!1821404 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200234 lambda!200157))))

(declare-fun bs!1067670 () Bool)

(assert (= bs!1067670 (and d!1479862 d!1478768)))

(assert (=> bs!1067670 (not (= lambda!200234 lambda!199986))))

(declare-fun bs!1067671 () Bool)

(assert (= bs!1067671 (and d!1479862 d!1478866)))

(assert (=> bs!1067671 (not (= lambda!200234 lambda!200086))))

(assert (=> bs!1067668 (= (= lt!1821404 lt!1821141) (= lambda!200234 lambda!200076))))

(declare-fun bs!1067672 () Bool)

(assert (= bs!1067672 (and d!1479862 b!4660227)))

(assert (=> bs!1067672 (= (= lt!1821404 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200234 lambda!200199))))

(assert (=> bs!1067669 (= (= lt!1821404 lt!1821726) (= lambda!200234 lambda!200158))))

(declare-fun bs!1067673 () Bool)

(assert (= bs!1067673 (and d!1479862 d!1479170)))

(assert (=> bs!1067673 (= (= lt!1821404 lt!1821722) (= lambda!200234 lambda!200159))))

(declare-fun bs!1067674 () Bool)

(assert (= bs!1067674 (and d!1479862 b!4659243)))

(assert (=> bs!1067674 (= (= lt!1821404 lt!1821141) (= lambda!200234 lambda!200075))))

(declare-fun bs!1067675 () Bool)

(assert (= bs!1067675 (and d!1479862 b!4660124)))

(assert (=> bs!1067675 (= (= lt!1821404 lt!1821937) (= lambda!200234 lambda!200191))))

(declare-fun bs!1067676 () Bool)

(assert (= bs!1067676 (and d!1479862 b!4659665)))

(assert (=> bs!1067676 (= (= lt!1821404 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200234 lambda!200147))))

(declare-fun bs!1067677 () Bool)

(assert (= bs!1067677 (and d!1479862 d!1479132)))

(assert (=> bs!1067677 (= (= lt!1821404 lt!1821663) (= lambda!200234 lambda!200149))))

(assert (=> bs!1067675 (= (= lt!1821404 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200234 lambda!200190))))

(declare-fun bs!1067678 () Bool)

(assert (= bs!1067678 (and d!1479862 d!1479832)))

(assert (=> bs!1067678 (= (= lt!1821404 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200234 lambda!200224))))

(declare-fun bs!1067679 () Bool)

(assert (= bs!1067679 (and d!1479862 d!1479526)))

(assert (=> bs!1067679 (= (= lt!1821404 lt!1821667) (= lambda!200234 lambda!200185))))

(declare-fun bs!1067680 () Bool)

(assert (= bs!1067680 (and d!1479862 b!4660126)))

(assert (=> bs!1067680 (= (= lt!1821404 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200234 lambda!200188))))

(declare-fun bs!1067681 () Bool)

(assert (= bs!1067681 (and d!1479862 d!1479158)))

(assert (=> bs!1067681 (= lambda!200234 lambda!200155)))

(declare-fun bs!1067682 () Bool)

(assert (= bs!1067682 (and d!1479862 b!4659667)))

(assert (=> bs!1067682 (= (= lt!1821404 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200234 lambda!200146))))

(assert (=> bs!1067665 (= (= lt!1821404 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200234 lambda!200201))))

(declare-fun bs!1067683 () Bool)

(assert (= bs!1067683 (and d!1479862 d!1479614)))

(assert (=> bs!1067683 (= (= lt!1821404 lt!1821996) (= lambda!200234 lambda!200205))))

(declare-fun bs!1067684 () Bool)

(assert (= bs!1067684 (and d!1479862 d!1479846)))

(assert (=> bs!1067684 (= (= lt!1821404 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200234 lambda!200229))))

(declare-fun bs!1067685 () Bool)

(assert (= bs!1067685 (and d!1479862 d!1479372)))

(assert (=> bs!1067685 (= (= lt!1821404 lt!1821141) (= lambda!200234 lambda!200180))))

(assert (=> bs!1067676 (= (= lt!1821404 lt!1821667) (= lambda!200234 lambda!200148))))

(declare-fun bs!1067686 () Bool)

(assert (= bs!1067686 (and d!1479862 d!1479240)))

(assert (=> bs!1067686 (= (= lt!1821404 lt!1821141) (= lambda!200234 lambda!200166))))

(declare-fun bs!1067687 () Bool)

(assert (= bs!1067687 (and d!1479862 d!1479528)))

(assert (=> bs!1067687 (= (= lt!1821404 lt!1821933) (= lambda!200234 lambda!200192))))

(declare-fun bs!1067688 () Bool)

(assert (= bs!1067688 (and d!1479862 d!1479840)))

(assert (=> bs!1067688 (not (= lambda!200234 lambda!200226))))

(assert (=> d!1479862 true))

(assert (=> d!1479862 (forall!11050 (toList!5233 lt!1821141) lambda!200234)))

(assert (=> d!1479862 true))

(declare-fun _$61!497 () Unit!118984)

(assert (=> d!1479862 (= (choose!32097 lt!1821141 lt!1821404 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) _$61!497)))

(declare-fun bs!1067689 () Bool)

(assert (= bs!1067689 d!1479862))

(declare-fun m!5543327 () Bool)

(assert (=> bs!1067689 m!5543327))

(assert (=> d!1479158 d!1479862))

(declare-fun d!1479880 () Bool)

(declare-fun res!1960373 () Bool)

(declare-fun e!2908119 () Bool)

(assert (=> d!1479880 (=> res!1960373 e!2908119)))

(assert (=> d!1479880 (= res!1960373 ((_ is Nil!51928) (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))))

(assert (=> d!1479880 (= (forall!11050 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))) lambda!200155) e!2908119)))

(declare-fun b!4660524 () Bool)

(declare-fun e!2908120 () Bool)

(assert (=> b!4660524 (= e!2908119 e!2908120)))

(declare-fun res!1960374 () Bool)

(assert (=> b!4660524 (=> (not res!1960374) (not e!2908120))))

(assert (=> b!4660524 (= res!1960374 (dynLambda!21608 lambda!200155 (h!58080 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))))))

(declare-fun b!4660525 () Bool)

(assert (=> b!4660525 (= e!2908120 (forall!11050 (t!359168 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))) lambda!200155))))

(assert (= (and d!1479880 (not res!1960373)) b!4660524))

(assert (= (and b!4660524 res!1960374) b!4660525))

(declare-fun b_lambda!174963 () Bool)

(assert (=> (not b_lambda!174963) (not b!4660524)))

(declare-fun m!5543333 () Bool)

(assert (=> b!4660524 m!5543333))

(declare-fun m!5543337 () Bool)

(assert (=> b!4660525 m!5543337))

(assert (=> d!1479158 d!1479880))

(declare-fun d!1479884 () Bool)

(declare-fun e!2908124 () Bool)

(assert (=> d!1479884 e!2908124))

(declare-fun res!1960379 () Bool)

(assert (=> d!1479884 (=> (not res!1960379) (not e!2908124))))

(declare-fun lt!1822148 () ListMap!4573)

(assert (=> d!1479884 (= res!1960379 (contains!15083 lt!1822148 (_1!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))))

(declare-fun lt!1822150 () List!52052)

(assert (=> d!1479884 (= lt!1822148 (ListMap!4574 lt!1822150))))

(declare-fun lt!1822146 () Unit!118984)

(declare-fun lt!1822149 () Unit!118984)

(assert (=> d!1479884 (= lt!1822146 lt!1822149)))

(assert (=> d!1479884 (= (getValueByKey!1626 lt!1822150 (_1!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))) (Some!11847 (_2!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))))

(assert (=> d!1479884 (= lt!1822149 (lemmaContainsTupThenGetReturnValue!930 lt!1822150 (_1!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))) (_2!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))))

(assert (=> d!1479884 (= lt!1822150 (insertNoDuplicatedKeys!438 (toList!5233 lt!1821141) (_1!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))) (_2!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))))

(assert (=> d!1479884 (= (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))) lt!1822148)))

(declare-fun b!4660529 () Bool)

(declare-fun res!1960377 () Bool)

(assert (=> b!4660529 (=> (not res!1960377) (not e!2908124))))

(assert (=> b!4660529 (= res!1960377 (= (getValueByKey!1626 (toList!5233 lt!1822148) (_1!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))) (Some!11847 (_2!29821 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))))

(declare-fun b!4660530 () Bool)

(assert (=> b!4660530 (= e!2908124 (contains!15088 (toList!5233 lt!1822148) (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1479884 res!1960379) b!4660529))

(assert (= (and b!4660529 res!1960377) b!4660530))

(declare-fun m!5543343 () Bool)

(assert (=> d!1479884 m!5543343))

(declare-fun m!5543345 () Bool)

(assert (=> d!1479884 m!5543345))

(declare-fun m!5543347 () Bool)

(assert (=> d!1479884 m!5543347))

(declare-fun m!5543349 () Bool)

(assert (=> d!1479884 m!5543349))

(declare-fun m!5543351 () Bool)

(assert (=> b!4660529 m!5543351))

(declare-fun m!5543353 () Bool)

(assert (=> b!4660530 m!5543353))

(assert (=> d!1479158 d!1479884))

(declare-fun d!1479890 () Bool)

(assert (=> d!1479890 (dynLambda!21612 lambda!200142 (_1!29821 (h!58080 (toList!5233 lt!1821138))))))

(declare-fun lt!1822154 () Unit!118984)

(declare-fun choose!32103 (List!52055 Int K!13280) Unit!118984)

(assert (=> d!1479890 (= lt!1822154 (choose!32103 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) lambda!200142 (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun e!2908139 () Bool)

(assert (=> d!1479890 e!2908139))

(declare-fun res!1960394 () Bool)

(assert (=> d!1479890 (=> (not res!1960394) (not e!2908139))))

(assert (=> d!1479890 (= res!1960394 (forall!11052 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) lambda!200142))))

(assert (=> d!1479890 (= (forallContained!3252 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) lambda!200142 (_1!29821 (h!58080 (toList!5233 lt!1821138)))) lt!1822154)))

(declare-fun b!4660545 () Bool)

(assert (=> b!4660545 (= e!2908139 (contains!15089 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(assert (= (and d!1479890 res!1960394) b!4660545))

(declare-fun b_lambda!174967 () Bool)

(assert (=> (not b_lambda!174967) (not d!1479890)))

(declare-fun m!5543373 () Bool)

(assert (=> d!1479890 m!5543373))

(assert (=> d!1479890 m!5541405))

(declare-fun m!5543379 () Bool)

(assert (=> d!1479890 m!5543379))

(assert (=> d!1479890 m!5541405))

(declare-fun m!5543381 () Bool)

(assert (=> d!1479890 m!5543381))

(assert (=> b!4660545 m!5541405))

(assert (=> b!4660545 m!5541417))

(assert (=> b!4659641 d!1479890))

(declare-fun bs!1067692 () Bool)

(declare-fun b!4660555 () Bool)

(assert (= bs!1067692 (and b!4660555 b!4660412)))

(declare-fun lambda!200235 () Int)

(assert (=> bs!1067692 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821404)) (= lambda!200235 lambda!200218))))

(declare-fun bs!1067693 () Bool)

(assert (= bs!1067693 (and b!4660555 b!4659995)))

(assert (=> bs!1067693 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200235 lambda!200182))))

(declare-fun bs!1067694 () Bool)

(assert (= bs!1067694 (and b!4660555 b!4660222)))

(assert (=> bs!1067694 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821412)) (= lambda!200235 lambda!200197))))

(declare-fun bs!1067695 () Bool)

(assert (= bs!1067695 (and b!4660555 b!4660350)))

(assert (=> bs!1067695 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821404)) (= lambda!200235 lambda!200211))))

(declare-fun bs!1067696 () Bool)

(assert (= bs!1067696 (and b!4660555 b!4659596)))

(assert (=> bs!1067696 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821138)) (= lambda!200235 lambda!200132))))

(declare-fun bs!1067697 () Bool)

(assert (= bs!1067697 (and b!4660555 b!4660414)))

(assert (=> bs!1067697 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200235 lambda!200216))))

(declare-fun bs!1067698 () Bool)

(assert (= bs!1067698 (and b!4660555 b!4659641)))

(assert (=> bs!1067698 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200235 lambda!200142))))

(declare-fun bs!1067699 () Bool)

(assert (= bs!1067699 (and b!4660555 b!4660415)))

(assert (=> bs!1067699 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200235 lambda!200217))))

(declare-fun bs!1067700 () Bool)

(assert (= bs!1067700 (and b!4660555 b!4659639)))

(assert (=> bs!1067700 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821138)) (= lambda!200235 lambda!200144))))

(declare-fun bs!1067701 () Bool)

(assert (= bs!1067701 (and b!4660555 b!4659642)))

(assert (=> bs!1067701 (= (= (t!359168 (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200235 lambda!200143))))

(assert (=> b!4660555 true))

(declare-fun bs!1067702 () Bool)

(declare-fun b!4660556 () Bool)

(assert (= bs!1067702 (and b!4660556 b!4660412)))

(declare-fun lambda!200236 () Int)

(assert (=> bs!1067702 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 lt!1821404)) (= lambda!200236 lambda!200218))))

(declare-fun bs!1067703 () Bool)

(assert (= bs!1067703 (and b!4660556 b!4659995)))

(assert (=> bs!1067703 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200236 lambda!200182))))

(declare-fun bs!1067704 () Bool)

(assert (= bs!1067704 (and b!4660556 b!4660222)))

(assert (=> bs!1067704 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 lt!1821412)) (= lambda!200236 lambda!200197))))

(declare-fun bs!1067705 () Bool)

(assert (= bs!1067705 (and b!4660556 b!4660350)))

(assert (=> bs!1067705 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 lt!1821404)) (= lambda!200236 lambda!200211))))

(declare-fun bs!1067706 () Bool)

(assert (= bs!1067706 (and b!4660556 b!4659596)))

(assert (=> bs!1067706 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 lt!1821138)) (= lambda!200236 lambda!200132))))

(declare-fun bs!1067707 () Bool)

(assert (= bs!1067707 (and b!4660556 b!4660555)))

(assert (=> bs!1067707 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200236 lambda!200235))))

(declare-fun bs!1067708 () Bool)

(assert (= bs!1067708 (and b!4660556 b!4660414)))

(assert (=> bs!1067708 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200236 lambda!200216))))

(declare-fun bs!1067709 () Bool)

(assert (= bs!1067709 (and b!4660556 b!4659641)))

(assert (=> bs!1067709 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200236 lambda!200142))))

(declare-fun bs!1067710 () Bool)

(assert (= bs!1067710 (and b!4660556 b!4660415)))

(assert (=> bs!1067710 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200236 lambda!200217))))

(declare-fun bs!1067712 () Bool)

(assert (= bs!1067712 (and b!4660556 b!4659639)))

(assert (=> bs!1067712 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (toList!5233 lt!1821138)) (= lambda!200236 lambda!200144))))

(declare-fun bs!1067713 () Bool)

(assert (= bs!1067713 (and b!4660556 b!4659642)))

(assert (=> bs!1067713 (= (= (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200236 lambda!200143))))

(assert (=> b!4660556 true))

(declare-fun bs!1067715 () Bool)

(declare-fun b!4660553 () Bool)

(assert (= bs!1067715 (and b!4660553 b!4660412)))

(declare-fun lambda!200237 () Int)

(assert (=> bs!1067715 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821404)) (= lambda!200237 lambda!200218))))

(declare-fun bs!1067716 () Bool)

(assert (= bs!1067716 (and b!4660553 b!4659995)))

(assert (=> bs!1067716 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200237 lambda!200182))))

(declare-fun bs!1067717 () Bool)

(assert (= bs!1067717 (and b!4660553 b!4660222)))

(assert (=> bs!1067717 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821412)) (= lambda!200237 lambda!200197))))

(declare-fun bs!1067718 () Bool)

(assert (= bs!1067718 (and b!4660553 b!4660350)))

(assert (=> bs!1067718 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821404)) (= lambda!200237 lambda!200211))))

(declare-fun bs!1067719 () Bool)

(assert (= bs!1067719 (and b!4660553 b!4659596)))

(assert (=> bs!1067719 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821138)) (= lambda!200237 lambda!200132))))

(declare-fun bs!1067720 () Bool)

(assert (= bs!1067720 (and b!4660553 b!4660555)))

(assert (=> bs!1067720 (= (= (t!359168 (toList!5233 lt!1821138)) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200237 lambda!200235))))

(declare-fun bs!1067721 () Bool)

(assert (= bs!1067721 (and b!4660553 b!4660556)))

(assert (=> bs!1067721 (= (= (t!359168 (toList!5233 lt!1821138)) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200237 lambda!200236))))

(declare-fun bs!1067722 () Bool)

(assert (= bs!1067722 (and b!4660553 b!4660414)))

(assert (=> bs!1067722 (= (= (t!359168 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821404))) (= lambda!200237 lambda!200216))))

(declare-fun bs!1067723 () Bool)

(assert (= bs!1067723 (and b!4660553 b!4659641)))

(assert (=> bs!1067723 (= lambda!200237 lambda!200142)))

(declare-fun bs!1067724 () Bool)

(assert (= bs!1067724 (and b!4660553 b!4660415)))

(assert (=> bs!1067724 (= (= (t!359168 (toList!5233 lt!1821138)) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200237 lambda!200217))))

(declare-fun bs!1067725 () Bool)

(assert (= bs!1067725 (and b!4660553 b!4659639)))

(assert (=> bs!1067725 (= (= (t!359168 (toList!5233 lt!1821138)) (toList!5233 lt!1821138)) (= lambda!200237 lambda!200144))))

(declare-fun bs!1067726 () Bool)

(assert (= bs!1067726 (and b!4660553 b!4659642)))

(assert (=> bs!1067726 (= (= (t!359168 (toList!5233 lt!1821138)) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200237 lambda!200143))))

(assert (=> b!4660553 true))

(declare-fun bs!1067727 () Bool)

(declare-fun b!4660554 () Bool)

(assert (= bs!1067727 (and b!4660554 b!4659996)))

(declare-fun lambda!200238 () Int)

(assert (=> bs!1067727 (= lambda!200238 lambda!200184)))

(declare-fun bs!1067728 () Bool)

(assert (= bs!1067728 (and b!4660554 b!4660223)))

(assert (=> bs!1067728 (= lambda!200238 lambda!200198)))

(declare-fun bs!1067729 () Bool)

(assert (= bs!1067729 (and b!4660554 b!4660351)))

(assert (=> bs!1067729 (= lambda!200238 lambda!200212)))

(declare-fun bs!1067730 () Bool)

(assert (= bs!1067730 (and b!4660554 b!4659597)))

(assert (=> bs!1067730 (= lambda!200238 lambda!200133)))

(declare-fun bs!1067731 () Bool)

(assert (= bs!1067731 (and b!4660554 b!4660413)))

(assert (=> bs!1067731 (= lambda!200238 lambda!200219)))

(declare-fun bs!1067732 () Bool)

(assert (= bs!1067732 (and b!4660554 b!4659640)))

(assert (=> bs!1067732 (= lambda!200238 lambda!200145)))

(declare-fun b!4660549 () Bool)

(declare-fun e!2908143 () Unit!118984)

(declare-fun Unit!119156 () Unit!118984)

(assert (=> b!4660549 (= e!2908143 Unit!119156)))

(declare-fun b!4660550 () Bool)

(declare-fun e!2908142 () Unit!118984)

(declare-fun Unit!119157 () Unit!118984)

(assert (=> b!4660550 (= e!2908142 Unit!119157)))

(declare-fun b!4660551 () Bool)

(declare-fun res!1960397 () Bool)

(declare-fun e!2908145 () Bool)

(assert (=> b!4660551 (=> (not res!1960397) (not e!2908145))))

(declare-fun lt!1822158 () List!52055)

(assert (=> b!4660551 (= res!1960397 (= (length!544 lt!1822158) (length!545 (t!359168 (toList!5233 lt!1821138)))))))

(declare-fun b!4660552 () Bool)

(assert (=> b!4660552 false))

(declare-fun Unit!119158 () Unit!118984)

(assert (=> b!4660552 (= e!2908143 Unit!119158)))

(declare-fun res!1960399 () Bool)

(assert (=> b!4660553 (=> (not res!1960399) (not e!2908145))))

(assert (=> b!4660553 (= res!1960399 (forall!11052 lt!1822158 lambda!200237))))

(assert (=> b!4660554 (= e!2908145 (= (content!9016 lt!1822158) (content!9016 (map!11483 (t!359168 (toList!5233 lt!1821138)) lambda!200238))))))

(declare-fun d!1479910 () Bool)

(assert (=> d!1479910 e!2908145))

(declare-fun res!1960398 () Bool)

(assert (=> d!1479910 (=> (not res!1960398) (not e!2908145))))

(assert (=> d!1479910 (= res!1960398 (noDuplicate!844 lt!1822158))))

(declare-fun e!2908144 () List!52055)

(assert (=> d!1479910 (= lt!1822158 e!2908144)))

(declare-fun c!797757 () Bool)

(assert (=> d!1479910 (= c!797757 ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))))))

(assert (=> d!1479910 (invariantList!1306 (t!359168 (toList!5233 lt!1821138)))))

(assert (=> d!1479910 (= (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) lt!1822158)))

(declare-fun b!4660548 () Bool)

(assert (=> b!4660548 (= e!2908144 Nil!51931)))

(assert (=> b!4660555 false))

(declare-fun lt!1822160 () Unit!118984)

(assert (=> b!4660555 (= lt!1822160 (forallContained!3252 (getKeysList!757 (t!359168 (t!359168 (toList!5233 lt!1821138)))) lambda!200235 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138))))))))

(declare-fun Unit!119159 () Unit!118984)

(assert (=> b!4660555 (= e!2908142 Unit!119159)))

(assert (=> b!4660556 (= e!2908144 (Cons!51931 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138)))) (getKeysList!757 (t!359168 (t!359168 (toList!5233 lt!1821138))))))))

(declare-fun c!797759 () Bool)

(assert (=> b!4660556 (= c!797759 (containsKey!2750 (t!359168 (t!359168 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138))))))))

(declare-fun lt!1822159 () Unit!118984)

(assert (=> b!4660556 (= lt!1822159 e!2908143)))

(declare-fun c!797758 () Bool)

(assert (=> b!4660556 (= c!797758 (contains!15089 (getKeysList!757 (t!359168 (t!359168 (toList!5233 lt!1821138)))) (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138))))))))

(declare-fun lt!1822156 () Unit!118984)

(assert (=> b!4660556 (= lt!1822156 e!2908142)))

(declare-fun lt!1822157 () List!52055)

(assert (=> b!4660556 (= lt!1822157 (getKeysList!757 (t!359168 (t!359168 (toList!5233 lt!1821138)))))))

(declare-fun lt!1822161 () Unit!118984)

(assert (=> b!4660556 (= lt!1822161 (lemmaForallContainsAddHeadPreserves!264 (t!359168 (t!359168 (toList!5233 lt!1821138))) lt!1822157 (h!58080 (t!359168 (toList!5233 lt!1821138)))))))

(assert (=> b!4660556 (forall!11052 lt!1822157 lambda!200236)))

(declare-fun lt!1822162 () Unit!118984)

(assert (=> b!4660556 (= lt!1822162 lt!1822161)))

(assert (= (and d!1479910 c!797757) b!4660556))

(assert (= (and d!1479910 (not c!797757)) b!4660548))

(assert (= (and b!4660556 c!797759) b!4660552))

(assert (= (and b!4660556 (not c!797759)) b!4660549))

(assert (= (and b!4660556 c!797758) b!4660555))

(assert (= (and b!4660556 (not c!797758)) b!4660550))

(assert (= (and d!1479910 res!1960398) b!4660551))

(assert (= (and b!4660551 res!1960397) b!4660553))

(assert (= (and b!4660553 res!1960399) b!4660554))

(declare-fun m!5543415 () Bool)

(assert (=> b!4660554 m!5543415))

(declare-fun m!5543417 () Bool)

(assert (=> b!4660554 m!5543417))

(assert (=> b!4660554 m!5543417))

(declare-fun m!5543419 () Bool)

(assert (=> b!4660554 m!5543419))

(declare-fun m!5543421 () Bool)

(assert (=> b!4660555 m!5543421))

(assert (=> b!4660555 m!5543421))

(declare-fun m!5543423 () Bool)

(assert (=> b!4660555 m!5543423))

(declare-fun m!5543425 () Bool)

(assert (=> b!4660553 m!5543425))

(assert (=> b!4660556 m!5543421))

(declare-fun m!5543427 () Bool)

(assert (=> b!4660556 m!5543427))

(declare-fun m!5543429 () Bool)

(assert (=> b!4660556 m!5543429))

(declare-fun m!5543433 () Bool)

(assert (=> b!4660556 m!5543433))

(assert (=> b!4660556 m!5543421))

(declare-fun m!5543435 () Bool)

(assert (=> b!4660556 m!5543435))

(declare-fun m!5543437 () Bool)

(assert (=> d!1479910 m!5543437))

(declare-fun m!5543439 () Bool)

(assert (=> d!1479910 m!5543439))

(declare-fun m!5543441 () Bool)

(assert (=> b!4660551 m!5543441))

(declare-fun m!5543443 () Bool)

(assert (=> b!4660551 m!5543443))

(assert (=> b!4659641 d!1479910))

(assert (=> b!4659710 d!1479728))

(assert (=> b!4659710 d!1479734))

(declare-fun b!4660575 () Bool)

(declare-fun e!2908165 () Option!11844)

(declare-fun e!2908162 () Option!11844)

(assert (=> b!4660575 (= e!2908165 e!2908162)))

(declare-fun c!797763 () Bool)

(assert (=> b!4660575 (= c!797763 ((_ is Cons!51928) (t!359168 (t!359168 lt!1821145))))))

(declare-fun b!4660576 () Bool)

(declare-fun e!2908164 () Bool)

(declare-fun lt!1822165 () Option!11844)

(assert (=> b!4660576 (= e!2908164 (contains!15088 (t!359168 (t!359168 lt!1821145)) (get!17289 lt!1822165)))))

(declare-fun b!4660577 () Bool)

(declare-fun e!2908166 () Bool)

(assert (=> b!4660577 (= e!2908166 (not (containsKey!2746 (t!359168 (t!359168 lt!1821145)) key!4968)))))

(declare-fun b!4660578 () Bool)

(declare-fun res!1960414 () Bool)

(assert (=> b!4660578 (=> (not res!1960414) (not e!2908164))))

(assert (=> b!4660578 (= res!1960414 (= (_1!29821 (get!17289 lt!1822165)) key!4968))))

(declare-fun b!4660579 () Bool)

(assert (=> b!4660579 (= e!2908162 None!11843)))

(declare-fun b!4660580 () Bool)

(assert (=> b!4660580 (= e!2908165 (Some!11843 (h!58080 (t!359168 (t!359168 lt!1821145)))))))

(declare-fun b!4660581 () Bool)

(assert (=> b!4660581 (= e!2908162 (getPair!380 (t!359168 (t!359168 (t!359168 lt!1821145))) key!4968))))

(declare-fun b!4660582 () Bool)

(declare-fun e!2908163 () Bool)

(assert (=> b!4660582 (= e!2908163 e!2908164)))

(declare-fun res!1960415 () Bool)

(assert (=> b!4660582 (=> (not res!1960415) (not e!2908164))))

(assert (=> b!4660582 (= res!1960415 (isDefined!9109 lt!1822165))))

(declare-fun d!1479936 () Bool)

(assert (=> d!1479936 e!2908163))

(declare-fun res!1960417 () Bool)

(assert (=> d!1479936 (=> res!1960417 e!2908163)))

(assert (=> d!1479936 (= res!1960417 e!2908166)))

(declare-fun res!1960416 () Bool)

(assert (=> d!1479936 (=> (not res!1960416) (not e!2908166))))

(assert (=> d!1479936 (= res!1960416 (isEmpty!29021 lt!1822165))))

(assert (=> d!1479936 (= lt!1822165 e!2908165)))

(declare-fun c!797762 () Bool)

(assert (=> d!1479936 (= c!797762 (and ((_ is Cons!51928) (t!359168 (t!359168 lt!1821145))) (= (_1!29821 (h!58080 (t!359168 (t!359168 lt!1821145)))) key!4968)))))

(assert (=> d!1479936 (noDuplicateKeys!1652 (t!359168 (t!359168 lt!1821145)))))

(assert (=> d!1479936 (= (getPair!380 (t!359168 (t!359168 lt!1821145)) key!4968) lt!1822165)))

(assert (= (and d!1479936 c!797762) b!4660580))

(assert (= (and d!1479936 (not c!797762)) b!4660575))

(assert (= (and b!4660575 c!797763) b!4660581))

(assert (= (and b!4660575 (not c!797763)) b!4660579))

(assert (= (and d!1479936 res!1960416) b!4660577))

(assert (= (and d!1479936 (not res!1960417)) b!4660582))

(assert (= (and b!4660582 res!1960415) b!4660578))

(assert (= (and b!4660578 res!1960414) b!4660576))

(declare-fun m!5543453 () Bool)

(assert (=> b!4660582 m!5543453))

(declare-fun m!5543455 () Bool)

(assert (=> b!4660578 m!5543455))

(assert (=> b!4660577 m!5542789))

(declare-fun m!5543457 () Bool)

(assert (=> b!4660581 m!5543457))

(declare-fun m!5543459 () Bool)

(assert (=> d!1479936 m!5543459))

(assert (=> d!1479936 m!5542327))

(assert (=> b!4660576 m!5543455))

(assert (=> b!4660576 m!5543455))

(declare-fun m!5543461 () Bool)

(assert (=> b!4660576 m!5543461))

(assert (=> b!4659772 d!1479936))

(declare-fun d!1479942 () Bool)

(declare-fun res!1960424 () Bool)

(declare-fun e!2908173 () Bool)

(assert (=> d!1479942 (=> res!1960424 e!2908173)))

(assert (=> d!1479942 (= res!1960424 ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821141))))))

(assert (=> d!1479942 (= (forall!11050 (t!359168 (toList!5233 lt!1821141)) lambda!200076) e!2908173)))

(declare-fun b!4660589 () Bool)

(declare-fun e!2908174 () Bool)

(assert (=> b!4660589 (= e!2908173 e!2908174)))

(declare-fun res!1960425 () Bool)

(assert (=> b!4660589 (=> (not res!1960425) (not e!2908174))))

(assert (=> b!4660589 (= res!1960425 (dynLambda!21608 lambda!200076 (h!58080 (t!359168 (toList!5233 lt!1821141)))))))

(declare-fun b!4660590 () Bool)

(assert (=> b!4660590 (= e!2908174 (forall!11050 (t!359168 (t!359168 (toList!5233 lt!1821141))) lambda!200076))))

(assert (= (and d!1479942 (not res!1960424)) b!4660589))

(assert (= (and b!4660589 res!1960425) b!4660590))

(declare-fun b_lambda!174981 () Bool)

(assert (=> (not b_lambda!174981) (not b!4660589)))

(declare-fun m!5543471 () Bool)

(assert (=> b!4660589 m!5543471))

(declare-fun m!5543473 () Bool)

(assert (=> b!4660590 m!5543473))

(assert (=> b!4659729 d!1479942))

(assert (=> d!1479242 d!1479228))

(assert (=> d!1479242 d!1479200))

(declare-fun d!1479948 () Bool)

(assert (=> d!1479948 (isDefined!9112 (getValueByKey!1625 (toList!5234 lt!1821147) lt!1821136))))

(assert (=> d!1479948 true))

(declare-fun _$13!1603 () Unit!118984)

(assert (=> d!1479948 (= (choose!32100 (toList!5234 lt!1821147) lt!1821136) _$13!1603)))

(declare-fun bs!1067744 () Bool)

(assert (= bs!1067744 d!1479948))

(assert (=> bs!1067744 m!5540633))

(assert (=> bs!1067744 m!5540633))

(assert (=> bs!1067744 m!5540635))

(assert (=> d!1479242 d!1479948))

(declare-fun d!1479950 () Bool)

(declare-fun res!1960433 () Bool)

(declare-fun e!2908183 () Bool)

(assert (=> d!1479950 (=> res!1960433 e!2908183)))

(assert (=> d!1479950 (= res!1960433 (or ((_ is Nil!51929) (toList!5234 lt!1821147)) ((_ is Nil!51929) (t!359169 (toList!5234 lt!1821147)))))))

(assert (=> d!1479950 (= (isStrictlySorted!580 (toList!5234 lt!1821147)) e!2908183)))

(declare-fun b!4660604 () Bool)

(declare-fun e!2908184 () Bool)

(assert (=> b!4660604 (= e!2908183 e!2908184)))

(declare-fun res!1960434 () Bool)

(assert (=> b!4660604 (=> (not res!1960434) (not e!2908184))))

(assert (=> b!4660604 (= res!1960434 (bvslt (_1!29822 (h!58081 (toList!5234 lt!1821147))) (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147))))))))

(declare-fun b!4660605 () Bool)

(assert (=> b!4660605 (= e!2908184 (isStrictlySorted!580 (t!359169 (toList!5234 lt!1821147))))))

(assert (= (and d!1479950 (not res!1960433)) b!4660604))

(assert (= (and b!4660604 res!1960434) b!4660605))

(declare-fun m!5543475 () Bool)

(assert (=> b!4660605 m!5543475))

(assert (=> d!1479242 d!1479950))

(assert (=> b!4659775 d!1479494))

(declare-fun d!1479952 () Bool)

(declare-fun lt!1822174 () Bool)

(assert (=> d!1479952 (= lt!1822174 (select (content!9017 (toList!5233 lt!1821412)) (h!58080 oldBucket!40)))))

(declare-fun e!2908186 () Bool)

(assert (=> d!1479952 (= lt!1822174 e!2908186)))

(declare-fun res!1960435 () Bool)

(assert (=> d!1479952 (=> (not res!1960435) (not e!2908186))))

(assert (=> d!1479952 (= res!1960435 ((_ is Cons!51928) (toList!5233 lt!1821412)))))

(assert (=> d!1479952 (= (contains!15088 (toList!5233 lt!1821412) (h!58080 oldBucket!40)) lt!1822174)))

(declare-fun b!4660606 () Bool)

(declare-fun e!2908185 () Bool)

(assert (=> b!4660606 (= e!2908186 e!2908185)))

(declare-fun res!1960436 () Bool)

(assert (=> b!4660606 (=> res!1960436 e!2908185)))

(assert (=> b!4660606 (= res!1960436 (= (h!58080 (toList!5233 lt!1821412)) (h!58080 oldBucket!40)))))

(declare-fun b!4660607 () Bool)

(assert (=> b!4660607 (= e!2908185 (contains!15088 (t!359168 (toList!5233 lt!1821412)) (h!58080 oldBucket!40)))))

(assert (= (and d!1479952 res!1960435) b!4660606))

(assert (= (and b!4660606 (not res!1960436)) b!4660607))

(declare-fun m!5543477 () Bool)

(assert (=> d!1479952 m!5543477))

(declare-fun m!5543479 () Bool)

(assert (=> d!1479952 m!5543479))

(declare-fun m!5543481 () Bool)

(assert (=> b!4660607 m!5543481))

(assert (=> b!4659732 d!1479952))

(declare-fun d!1479954 () Bool)

(declare-fun res!1960437 () Bool)

(declare-fun e!2908187 () Bool)

(assert (=> d!1479954 (=> res!1960437 e!2908187)))

(assert (=> d!1479954 (= res!1960437 (and ((_ is Cons!51928) (t!359168 (_2!29822 lt!1821146))) (= (_1!29821 (h!58080 (t!359168 (_2!29822 lt!1821146)))) (_1!29821 (h!58080 (_2!29822 lt!1821146))))))))

(assert (=> d!1479954 (= (containsKey!2746 (t!359168 (_2!29822 lt!1821146)) (_1!29821 (h!58080 (_2!29822 lt!1821146)))) e!2908187)))

(declare-fun b!4660608 () Bool)

(declare-fun e!2908188 () Bool)

(assert (=> b!4660608 (= e!2908187 e!2908188)))

(declare-fun res!1960438 () Bool)

(assert (=> b!4660608 (=> (not res!1960438) (not e!2908188))))

(assert (=> b!4660608 (= res!1960438 ((_ is Cons!51928) (t!359168 (_2!29822 lt!1821146))))))

(declare-fun b!4660609 () Bool)

(assert (=> b!4660609 (= e!2908188 (containsKey!2746 (t!359168 (t!359168 (_2!29822 lt!1821146))) (_1!29821 (h!58080 (_2!29822 lt!1821146)))))))

(assert (= (and d!1479954 (not res!1960437)) b!4660608))

(assert (= (and b!4660608 res!1960438) b!4660609))

(declare-fun m!5543483 () Bool)

(assert (=> b!4660609 m!5543483))

(assert (=> b!4659612 d!1479954))

(declare-fun bs!1067788 () Bool)

(declare-fun b!4660617 () Bool)

(assert (= bs!1067788 (and b!4660617 b!4660412)))

(declare-fun lambda!200243 () Int)

(assert (=> bs!1067788 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 lt!1821404)) (= lambda!200243 lambda!200218))))

(declare-fun bs!1067789 () Bool)

(assert (= bs!1067789 (and b!4660617 b!4659995)))

(assert (=> bs!1067789 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200243 lambda!200182))))

(declare-fun bs!1067790 () Bool)

(assert (= bs!1067790 (and b!4660617 b!4660222)))

(assert (=> bs!1067790 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 lt!1821412)) (= lambda!200243 lambda!200197))))

(declare-fun bs!1067791 () Bool)

(assert (= bs!1067791 (and b!4660617 b!4660350)))

(assert (=> bs!1067791 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 lt!1821404)) (= lambda!200243 lambda!200211))))

(declare-fun bs!1067792 () Bool)

(assert (= bs!1067792 (and b!4660617 b!4659596)))

(assert (=> bs!1067792 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 lt!1821138)) (= lambda!200243 lambda!200132))))

(declare-fun bs!1067793 () Bool)

(assert (= bs!1067793 (and b!4660617 b!4660553)))

(assert (=> bs!1067793 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200243 lambda!200237))))

(declare-fun bs!1067794 () Bool)

(assert (= bs!1067794 (and b!4660617 b!4660555)))

(assert (=> bs!1067794 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200243 lambda!200235))))

(declare-fun bs!1067795 () Bool)

(assert (= bs!1067795 (and b!4660617 b!4660556)))

(assert (=> bs!1067795 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200243 lambda!200236))))

(declare-fun bs!1067796 () Bool)

(assert (= bs!1067796 (and b!4660617 b!4660414)))

(assert (=> bs!1067796 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200243 lambda!200216))))

(declare-fun bs!1067797 () Bool)

(assert (= bs!1067797 (and b!4660617 b!4659641)))

(assert (=> bs!1067797 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200243 lambda!200142))))

(declare-fun bs!1067798 () Bool)

(assert (= bs!1067798 (and b!4660617 b!4660415)))

(assert (=> bs!1067798 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200243 lambda!200217))))

(declare-fun bs!1067799 () Bool)

(assert (= bs!1067799 (and b!4660617 b!4659639)))

(assert (=> bs!1067799 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (toList!5233 lt!1821138)) (= lambda!200243 lambda!200144))))

(declare-fun bs!1067800 () Bool)

(assert (= bs!1067800 (and b!4660617 b!4659642)))

(assert (=> bs!1067800 (= (= (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200243 lambda!200143))))

(assert (=> b!4660617 true))

(declare-fun bs!1067801 () Bool)

(declare-fun b!4660618 () Bool)

(assert (= bs!1067801 (and b!4660618 b!4660412)))

(declare-fun lambda!200244 () Int)

(assert (=> bs!1067801 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 lt!1821404)) (= lambda!200244 lambda!200218))))

(declare-fun bs!1067802 () Bool)

(assert (= bs!1067802 (and b!4660618 b!4659995)))

(assert (=> bs!1067802 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200244 lambda!200182))))

(declare-fun bs!1067803 () Bool)

(assert (= bs!1067803 (and b!4660618 b!4660222)))

(assert (=> bs!1067803 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 lt!1821412)) (= lambda!200244 lambda!200197))))

(declare-fun bs!1067804 () Bool)

(assert (= bs!1067804 (and b!4660618 b!4660350)))

(assert (=> bs!1067804 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 lt!1821404)) (= lambda!200244 lambda!200211))))

(declare-fun bs!1067805 () Bool)

(assert (= bs!1067805 (and b!4660618 b!4659596)))

(assert (=> bs!1067805 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 lt!1821138)) (= lambda!200244 lambda!200132))))

(declare-fun bs!1067806 () Bool)

(assert (= bs!1067806 (and b!4660618 b!4660553)))

(assert (=> bs!1067806 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200244 lambda!200237))))

(declare-fun bs!1067807 () Bool)

(assert (= bs!1067807 (and b!4660618 b!4660555)))

(assert (=> bs!1067807 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200244 lambda!200235))))

(declare-fun bs!1067808 () Bool)

(assert (= bs!1067808 (and b!4660618 b!4660556)))

(assert (=> bs!1067808 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200244 lambda!200236))))

(declare-fun bs!1067809 () Bool)

(assert (= bs!1067809 (and b!4660618 b!4660414)))

(assert (=> bs!1067809 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200244 lambda!200216))))

(declare-fun bs!1067810 () Bool)

(assert (= bs!1067810 (and b!4660618 b!4659641)))

(assert (=> bs!1067810 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200244 lambda!200142))))

(declare-fun bs!1067811 () Bool)

(assert (= bs!1067811 (and b!4660618 b!4660415)))

(assert (=> bs!1067811 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200244 lambda!200217))))

(declare-fun bs!1067812 () Bool)

(assert (= bs!1067812 (and b!4660618 b!4660617)))

(assert (=> bs!1067812 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200244 lambda!200243))))

(declare-fun bs!1067813 () Bool)

(assert (= bs!1067813 (and b!4660618 b!4659639)))

(assert (=> bs!1067813 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (toList!5233 lt!1821138)) (= lambda!200244 lambda!200144))))

(declare-fun bs!1067814 () Bool)

(assert (= bs!1067814 (and b!4660618 b!4659642)))

(assert (=> bs!1067814 (= (= (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200244 lambda!200143))))

(assert (=> b!4660618 true))

(declare-fun bs!1067815 () Bool)

(declare-fun b!4660615 () Bool)

(assert (= bs!1067815 (and b!4660615 b!4660412)))

(declare-fun lambda!200245 () Int)

(assert (=> bs!1067815 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821404)) (= lambda!200245 lambda!200218))))

(declare-fun bs!1067816 () Bool)

(assert (= bs!1067816 (and b!4660615 b!4659995)))

(assert (=> bs!1067816 (= lambda!200245 lambda!200182)))

(declare-fun bs!1067817 () Bool)

(assert (= bs!1067817 (and b!4660615 b!4660222)))

(assert (=> bs!1067817 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821412)) (= lambda!200245 lambda!200197))))

(declare-fun bs!1067818 () Bool)

(assert (= bs!1067818 (and b!4660615 b!4660350)))

(assert (=> bs!1067818 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821404)) (= lambda!200245 lambda!200211))))

(declare-fun bs!1067819 () Bool)

(assert (= bs!1067819 (and b!4660615 b!4659596)))

(assert (=> bs!1067819 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821138)) (= lambda!200245 lambda!200132))))

(declare-fun bs!1067820 () Bool)

(assert (= bs!1067820 (and b!4660615 b!4660553)))

(assert (=> bs!1067820 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200245 lambda!200237))))

(declare-fun bs!1067821 () Bool)

(assert (= bs!1067821 (and b!4660615 b!4660618)))

(assert (=> bs!1067821 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))) (= lambda!200245 lambda!200244))))

(declare-fun bs!1067822 () Bool)

(assert (= bs!1067822 (and b!4660615 b!4660555)))

(assert (=> bs!1067822 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200245 lambda!200235))))

(declare-fun bs!1067823 () Bool)

(assert (= bs!1067823 (and b!4660615 b!4660556)))

(assert (=> bs!1067823 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200245 lambda!200236))))

(declare-fun bs!1067824 () Bool)

(assert (= bs!1067824 (and b!4660615 b!4660414)))

(assert (=> bs!1067824 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200245 lambda!200216))))

(declare-fun bs!1067825 () Bool)

(assert (= bs!1067825 (and b!4660615 b!4659641)))

(assert (=> bs!1067825 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200245 lambda!200142))))

(declare-fun bs!1067826 () Bool)

(assert (= bs!1067826 (and b!4660615 b!4660415)))

(assert (=> bs!1067826 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200245 lambda!200217))))

(declare-fun bs!1067827 () Bool)

(assert (= bs!1067827 (and b!4660615 b!4660617)))

(assert (=> bs!1067827 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200245 lambda!200243))))

(declare-fun bs!1067828 () Bool)

(assert (= bs!1067828 (and b!4660615 b!4659639)))

(assert (=> bs!1067828 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (toList!5233 lt!1821138)) (= lambda!200245 lambda!200144))))

(declare-fun bs!1067829 () Bool)

(assert (= bs!1067829 (and b!4660615 b!4659642)))

(assert (=> bs!1067829 (= (= (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200245 lambda!200143))))

(assert (=> b!4660615 true))

(declare-fun bs!1067831 () Bool)

(declare-fun b!4660616 () Bool)

(assert (= bs!1067831 (and b!4660616 b!4659996)))

(declare-fun lambda!200247 () Int)

(assert (=> bs!1067831 (= lambda!200247 lambda!200184)))

(declare-fun bs!1067832 () Bool)

(assert (= bs!1067832 (and b!4660616 b!4660223)))

(assert (=> bs!1067832 (= lambda!200247 lambda!200198)))

(declare-fun bs!1067834 () Bool)

(assert (= bs!1067834 (and b!4660616 b!4660554)))

(assert (=> bs!1067834 (= lambda!200247 lambda!200238)))

(declare-fun bs!1067836 () Bool)

(assert (= bs!1067836 (and b!4660616 b!4660351)))

(assert (=> bs!1067836 (= lambda!200247 lambda!200212)))

(declare-fun bs!1067838 () Bool)

(assert (= bs!1067838 (and b!4660616 b!4659597)))

(assert (=> bs!1067838 (= lambda!200247 lambda!200133)))

(declare-fun bs!1067839 () Bool)

(assert (= bs!1067839 (and b!4660616 b!4660413)))

(assert (=> bs!1067839 (= lambda!200247 lambda!200219)))

(declare-fun bs!1067841 () Bool)

(assert (= bs!1067841 (and b!4660616 b!4659640)))

(assert (=> bs!1067841 (= lambda!200247 lambda!200145)))

(declare-fun b!4660611 () Bool)

(declare-fun e!2908190 () Unit!118984)

(declare-fun Unit!119162 () Unit!118984)

(assert (=> b!4660611 (= e!2908190 Unit!119162)))

(declare-fun b!4660612 () Bool)

(declare-fun e!2908189 () Unit!118984)

(declare-fun Unit!119163 () Unit!118984)

(assert (=> b!4660612 (= e!2908189 Unit!119163)))

(declare-fun b!4660613 () Bool)

(declare-fun res!1960439 () Bool)

(declare-fun e!2908192 () Bool)

(assert (=> b!4660613 (=> (not res!1960439) (not e!2908192))))

(declare-fun lt!1822177 () List!52055)

(assert (=> b!4660613 (= res!1960439 (= (length!544 lt!1822177) (length!545 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))))

(declare-fun b!4660614 () Bool)

(assert (=> b!4660614 false))

(declare-fun Unit!119164 () Unit!118984)

(assert (=> b!4660614 (= e!2908190 Unit!119164)))

(declare-fun res!1960441 () Bool)

(assert (=> b!4660615 (=> (not res!1960441) (not e!2908192))))

(assert (=> b!4660615 (= res!1960441 (forall!11052 lt!1822177 lambda!200245))))

(assert (=> b!4660616 (= e!2908192 (= (content!9016 lt!1822177) (content!9016 (map!11483 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))) lambda!200247))))))

(declare-fun d!1479956 () Bool)

(assert (=> d!1479956 e!2908192))

(declare-fun res!1960440 () Bool)

(assert (=> d!1479956 (=> (not res!1960440) (not e!2908192))))

(assert (=> d!1479956 (= res!1960440 (noDuplicate!844 lt!1822177))))

(declare-fun e!2908191 () List!52055)

(assert (=> d!1479956 (= lt!1822177 e!2908191)))

(declare-fun c!797767 () Bool)

(assert (=> d!1479956 (= c!797767 ((_ is Cons!51928) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))

(assert (=> d!1479956 (invariantList!1306 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))

(assert (=> d!1479956 (= (getKeysList!757 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) lt!1822177)))

(declare-fun b!4660610 () Bool)

(assert (=> b!4660610 (= e!2908191 Nil!51931)))

(assert (=> b!4660617 false))

(declare-fun lt!1822179 () Unit!118984)

(assert (=> b!4660617 (= lt!1822179 (forallContained!3252 (getKeysList!757 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) lambda!200243 (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))))

(declare-fun Unit!119165 () Unit!118984)

(assert (=> b!4660617 (= e!2908189 Unit!119165)))

(assert (=> b!4660618 (= e!2908191 (Cons!51931 (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (getKeysList!757 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))))

(declare-fun c!797769 () Bool)

(assert (=> b!4660618 (= c!797769 (containsKey!2750 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))))

(declare-fun lt!1822178 () Unit!118984)

(assert (=> b!4660618 (= lt!1822178 e!2908190)))

(declare-fun c!797768 () Bool)

(assert (=> b!4660618 (= c!797768 (contains!15089 (getKeysList!757 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))))))

(declare-fun lt!1822175 () Unit!118984)

(assert (=> b!4660618 (= lt!1822175 e!2908189)))

(declare-fun lt!1822176 () List!52055)

(assert (=> b!4660618 (= lt!1822176 (getKeysList!757 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))))

(declare-fun lt!1822180 () Unit!118984)

(assert (=> b!4660618 (= lt!1822180 (lemmaForallContainsAddHeadPreserves!264 (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) lt!1822176 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))))))

(assert (=> b!4660618 (forall!11052 lt!1822176 lambda!200244)))

(declare-fun lt!1822181 () Unit!118984)

(assert (=> b!4660618 (= lt!1822181 lt!1822180)))

(assert (= (and d!1479956 c!797767) b!4660618))

(assert (= (and d!1479956 (not c!797767)) b!4660610))

(assert (= (and b!4660618 c!797769) b!4660614))

(assert (= (and b!4660618 (not c!797769)) b!4660611))

(assert (= (and b!4660618 c!797768) b!4660617))

(assert (= (and b!4660618 (not c!797768)) b!4660612))

(assert (= (and d!1479956 res!1960440) b!4660613))

(assert (= (and b!4660613 res!1960439) b!4660615))

(assert (= (and b!4660615 res!1960441) b!4660616))

(declare-fun m!5543533 () Bool)

(assert (=> b!4660616 m!5543533))

(declare-fun m!5543535 () Bool)

(assert (=> b!4660616 m!5543535))

(assert (=> b!4660616 m!5543535))

(declare-fun m!5543537 () Bool)

(assert (=> b!4660616 m!5543537))

(declare-fun m!5543539 () Bool)

(assert (=> b!4660617 m!5543539))

(assert (=> b!4660617 m!5543539))

(declare-fun m!5543541 () Bool)

(assert (=> b!4660617 m!5543541))

(declare-fun m!5543543 () Bool)

(assert (=> b!4660615 m!5543543))

(assert (=> b!4660618 m!5543539))

(declare-fun m!5543545 () Bool)

(assert (=> b!4660618 m!5543545))

(declare-fun m!5543547 () Bool)

(assert (=> b!4660618 m!5543547))

(declare-fun m!5543549 () Bool)

(assert (=> b!4660618 m!5543549))

(assert (=> b!4660618 m!5543539))

(declare-fun m!5543551 () Bool)

(assert (=> b!4660618 m!5543551))

(declare-fun m!5543553 () Bool)

(assert (=> d!1479956 m!5543553))

(assert (=> d!1479956 m!5542205))

(declare-fun m!5543555 () Bool)

(assert (=> b!4660613 m!5543555))

(assert (=> b!4660613 m!5542157))

(assert (=> b!4659560 d!1479956))

(assert (=> d!1479168 d!1479658))

(declare-fun d!1479964 () Bool)

(declare-fun lt!1822211 () Bool)

(assert (=> d!1479964 (= lt!1822211 (select (content!9017 (t!359168 lt!1821145)) (get!17289 lt!1821758)))))

(declare-fun e!2908205 () Bool)

(assert (=> d!1479964 (= lt!1822211 e!2908205)))

(declare-fun res!1960450 () Bool)

(assert (=> d!1479964 (=> (not res!1960450) (not e!2908205))))

(assert (=> d!1479964 (= res!1960450 ((_ is Cons!51928) (t!359168 lt!1821145)))))

(assert (=> d!1479964 (= (contains!15088 (t!359168 lt!1821145) (get!17289 lt!1821758)) lt!1822211)))

(declare-fun b!4660635 () Bool)

(declare-fun e!2908204 () Bool)

(assert (=> b!4660635 (= e!2908205 e!2908204)))

(declare-fun res!1960451 () Bool)

(assert (=> b!4660635 (=> res!1960451 e!2908204)))

(assert (=> b!4660635 (= res!1960451 (= (h!58080 (t!359168 lt!1821145)) (get!17289 lt!1821758)))))

(declare-fun b!4660636 () Bool)

(assert (=> b!4660636 (= e!2908204 (contains!15088 (t!359168 (t!359168 lt!1821145)) (get!17289 lt!1821758)))))

(assert (= (and d!1479964 res!1960450) b!4660635))

(assert (= (and b!4660635 (not res!1960451)) b!4660636))

(assert (=> d!1479964 m!5542753))

(assert (=> d!1479964 m!5541699))

(declare-fun m!5543557 () Bool)

(assert (=> d!1479964 m!5543557))

(assert (=> b!4660636 m!5541699))

(declare-fun m!5543559 () Bool)

(assert (=> b!4660636 m!5543559))

(assert (=> b!4659767 d!1479964))

(assert (=> b!4659767 d!1479596))

(declare-fun d!1479966 () Bool)

(declare-fun res!1960452 () Bool)

(declare-fun e!2908206 () Bool)

(assert (=> d!1479966 (=> res!1960452 e!2908206)))

(assert (=> d!1479966 (= res!1960452 ((_ is Nil!51931) lt!1821633))))

(assert (=> d!1479966 (= (noDuplicate!844 lt!1821633) e!2908206)))

(declare-fun b!4660637 () Bool)

(declare-fun e!2908207 () Bool)

(assert (=> b!4660637 (= e!2908206 e!2908207)))

(declare-fun res!1960453 () Bool)

(assert (=> b!4660637 (=> (not res!1960453) (not e!2908207))))

(assert (=> b!4660637 (= res!1960453 (not (contains!15089 (t!359171 lt!1821633) (h!58085 lt!1821633))))))

(declare-fun b!4660638 () Bool)

(assert (=> b!4660638 (= e!2908207 (noDuplicate!844 (t!359171 lt!1821633)))))

(assert (= (and d!1479966 (not res!1960452)) b!4660637))

(assert (= (and b!4660637 res!1960453) b!4660638))

(declare-fun m!5543561 () Bool)

(assert (=> b!4660637 m!5543561))

(declare-fun m!5543563 () Bool)

(assert (=> b!4660638 m!5543563))

(assert (=> d!1479098 d!1479966))

(assert (=> d!1479098 d!1479112))

(declare-fun d!1479968 () Bool)

(declare-fun lt!1822212 () Bool)

(assert (=> d!1479968 (= lt!1822212 (select (content!9016 e!2907504) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2908209 () Bool)

(assert (=> d!1479968 (= lt!1822212 e!2908209)))

(declare-fun res!1960455 () Bool)

(assert (=> d!1479968 (=> (not res!1960455) (not e!2908209))))

(assert (=> d!1479968 (= res!1960455 ((_ is Cons!51931) e!2907504))))

(assert (=> d!1479968 (= (contains!15089 e!2907504 (_1!29821 (h!58080 oldBucket!40))) lt!1822212)))

(declare-fun b!4660639 () Bool)

(declare-fun e!2908208 () Bool)

(assert (=> b!4660639 (= e!2908209 e!2908208)))

(declare-fun res!1960454 () Bool)

(assert (=> b!4660639 (=> res!1960454 e!2908208)))

(assert (=> b!4660639 (= res!1960454 (= (h!58085 e!2907504) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660640 () Bool)

(assert (=> b!4660640 (= e!2908208 (contains!15089 (t!359171 e!2907504) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1479968 res!1960455) b!4660639))

(assert (= (and b!4660639 (not res!1960454)) b!4660640))

(declare-fun m!5543565 () Bool)

(assert (=> d!1479968 m!5543565))

(declare-fun m!5543567 () Bool)

(assert (=> d!1479968 m!5543567))

(declare-fun m!5543569 () Bool)

(assert (=> b!4660640 m!5543569))

(assert (=> bm!325558 d!1479968))

(declare-fun d!1479970 () Bool)

(assert (=> d!1479970 (= (length!544 lt!1821633) (size!35975 lt!1821633))))

(declare-fun bs!1067871 () Bool)

(assert (= bs!1067871 d!1479970))

(declare-fun m!5543571 () Bool)

(assert (=> bs!1067871 m!5543571))

(assert (=> b!4659595 d!1479970))

(declare-fun d!1479972 () Bool)

(assert (=> d!1479972 (= (length!545 (toList!5233 lt!1821138)) (size!35976 (toList!5233 lt!1821138)))))

(declare-fun bs!1067879 () Bool)

(assert (= bs!1067879 d!1479972))

(assert (=> bs!1067879 m!5542569))

(assert (=> b!4659595 d!1479972))

(assert (=> b!4659709 d!1479436))

(assert (=> b!4659709 d!1479438))

(declare-fun d!1479974 () Bool)

(declare-fun res!1960456 () Bool)

(declare-fun e!2908210 () Bool)

(assert (=> d!1479974 (=> res!1960456 e!2908210)))

(assert (=> d!1479974 (= res!1960456 (and ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (= (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821136)))))

(assert (=> d!1479974 (= (containsKey!2749 (t!359169 (toList!5234 lt!1821147)) lt!1821136) e!2908210)))

(declare-fun b!4660641 () Bool)

(declare-fun e!2908211 () Bool)

(assert (=> b!4660641 (= e!2908210 e!2908211)))

(declare-fun res!1960457 () Bool)

(assert (=> b!4660641 (=> (not res!1960457) (not e!2908211))))

(assert (=> b!4660641 (= res!1960457 (and (or (not ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147)))) (bvsle (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821136)) ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (bvslt (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821136)))))

(declare-fun b!4660642 () Bool)

(assert (=> b!4660642 (= e!2908211 (containsKey!2749 (t!359169 (t!359169 (toList!5234 lt!1821147))) lt!1821136))))

(assert (= (and d!1479974 (not res!1960456)) b!4660641))

(assert (= (and b!4660641 res!1960457) b!4660642))

(declare-fun m!5543573 () Bool)

(assert (=> b!4660642 m!5543573))

(assert (=> b!4659806 d!1479974))

(declare-fun d!1479976 () Bool)

(declare-fun res!1960458 () Bool)

(declare-fun e!2908212 () Bool)

(assert (=> d!1479976 (=> res!1960458 e!2908212)))

(assert (=> d!1479976 (= res!1960458 ((_ is Nil!51928) (t!359168 newBucket!224)))))

(assert (=> d!1479976 (= (forall!11050 (t!359168 newBucket!224) lambda!199986) e!2908212)))

(declare-fun b!4660643 () Bool)

(declare-fun e!2908213 () Bool)

(assert (=> b!4660643 (= e!2908212 e!2908213)))

(declare-fun res!1960459 () Bool)

(assert (=> b!4660643 (=> (not res!1960459) (not e!2908213))))

(assert (=> b!4660643 (= res!1960459 (dynLambda!21608 lambda!199986 (h!58080 (t!359168 newBucket!224))))))

(declare-fun b!4660644 () Bool)

(assert (=> b!4660644 (= e!2908213 (forall!11050 (t!359168 (t!359168 newBucket!224)) lambda!199986))))

(assert (= (and d!1479976 (not res!1960458)) b!4660643))

(assert (= (and b!4660643 res!1960459) b!4660644))

(declare-fun b_lambda!174985 () Bool)

(assert (=> (not b_lambda!174985) (not b!4660643)))

(declare-fun m!5543575 () Bool)

(assert (=> b!4660643 m!5543575))

(declare-fun m!5543577 () Bool)

(assert (=> b!4660644 m!5543577))

(assert (=> b!4659656 d!1479976))

(assert (=> d!1479086 d!1479430))

(declare-fun d!1479978 () Bool)

(declare-fun res!1960460 () Bool)

(declare-fun e!2908214 () Bool)

(assert (=> d!1479978 (=> res!1960460 e!2908214)))

(assert (=> d!1479978 (= res!1960460 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1479978 (= (forall!11050 (t!359168 oldBucket!40) lambda!200086) e!2908214)))

(declare-fun b!4660645 () Bool)

(declare-fun e!2908215 () Bool)

(assert (=> b!4660645 (= e!2908214 e!2908215)))

(declare-fun res!1960461 () Bool)

(assert (=> b!4660645 (=> (not res!1960461) (not e!2908215))))

(assert (=> b!4660645 (= res!1960461 (dynLambda!21608 lambda!200086 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun b!4660646 () Bool)

(assert (=> b!4660646 (= e!2908215 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200086))))

(assert (= (and d!1479978 (not res!1960460)) b!4660645))

(assert (= (and b!4660645 res!1960461) b!4660646))

(declare-fun b_lambda!174987 () Bool)

(assert (=> (not b_lambda!174987) (not b!4660645)))

(declare-fun m!5543579 () Bool)

(assert (=> b!4660645 m!5543579))

(declare-fun m!5543581 () Bool)

(assert (=> b!4660646 m!5543581))

(assert (=> b!4659791 d!1479978))

(declare-fun d!1479980 () Bool)

(assert (=> d!1479980 (= (isEmpty!29024 (getValueByKey!1626 (toList!5233 lt!1821138) key!4968)) (not ((_ is Some!11847) (getValueByKey!1626 (toList!5233 lt!1821138) key!4968))))))

(assert (=> d!1479150 d!1479980))

(declare-fun d!1479982 () Bool)

(assert (=> d!1479982 (= (get!17288 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968))) (v!46144 (getValueByKey!1625 (toList!5234 lt!1821147) (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1479190 d!1479982))

(assert (=> d!1479190 d!1479806))

(declare-fun b!4660647 () Bool)

(declare-fun e!2908221 () List!52055)

(assert (=> b!4660647 (= e!2908221 (keys!18406 lt!1821400))))

(declare-fun bm!325607 () Bool)

(declare-fun call!325612 () Bool)

(assert (=> bm!325607 (= call!325612 (contains!15089 e!2908221 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun c!797774 () Bool)

(declare-fun c!797776 () Bool)

(assert (=> bm!325607 (= c!797774 c!797776)))

(declare-fun b!4660648 () Bool)

(assert (=> b!4660648 false))

(declare-fun lt!1822216 () Unit!118984)

(declare-fun lt!1822217 () Unit!118984)

(assert (=> b!4660648 (= lt!1822216 lt!1822217)))

(assert (=> b!4660648 (containsKey!2750 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))

(assert (=> b!4660648 (= lt!1822217 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun e!2908220 () Unit!118984)

(declare-fun Unit!119169 () Unit!118984)

(assert (=> b!4660648 (= e!2908220 Unit!119169)))

(declare-fun d!1479984 () Bool)

(declare-fun e!2908219 () Bool)

(assert (=> d!1479984 e!2908219))

(declare-fun res!1960462 () Bool)

(assert (=> d!1479984 (=> res!1960462 e!2908219)))

(declare-fun e!2908217 () Bool)

(assert (=> d!1479984 (= res!1960462 e!2908217)))

(declare-fun res!1960463 () Bool)

(assert (=> d!1479984 (=> (not res!1960463) (not e!2908217))))

(declare-fun lt!1822214 () Bool)

(assert (=> d!1479984 (= res!1960463 (not lt!1822214))))

(declare-fun lt!1822218 () Bool)

(assert (=> d!1479984 (= lt!1822214 lt!1822218)))

(declare-fun lt!1822219 () Unit!118984)

(declare-fun e!2908216 () Unit!118984)

(assert (=> d!1479984 (= lt!1822219 e!2908216)))

(assert (=> d!1479984 (= c!797776 lt!1822218)))

(assert (=> d!1479984 (= lt!1822218 (containsKey!2750 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> d!1479984 (= (contains!15083 lt!1821400 (_1!29821 (h!58080 (toList!5233 lt!1821141)))) lt!1822214)))

(declare-fun b!4660649 () Bool)

(declare-fun Unit!119170 () Unit!118984)

(assert (=> b!4660649 (= e!2908220 Unit!119170)))

(declare-fun b!4660650 () Bool)

(assert (=> b!4660650 (= e!2908221 (getKeysList!757 (toList!5233 lt!1821400)))))

(declare-fun b!4660651 () Bool)

(declare-fun e!2908218 () Bool)

(assert (=> b!4660651 (= e!2908219 e!2908218)))

(declare-fun res!1960464 () Bool)

(assert (=> b!4660651 (=> (not res!1960464) (not e!2908218))))

(assert (=> b!4660651 (= res!1960464 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(declare-fun b!4660652 () Bool)

(assert (=> b!4660652 (= e!2908218 (contains!15089 (keys!18406 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun b!4660653 () Bool)

(assert (=> b!4660653 (= e!2908216 e!2908220)))

(declare-fun c!797775 () Bool)

(assert (=> b!4660653 (= c!797775 call!325612)))

(declare-fun b!4660654 () Bool)

(declare-fun lt!1822213 () Unit!118984)

(assert (=> b!4660654 (= e!2908216 lt!1822213)))

(declare-fun lt!1822215 () Unit!118984)

(assert (=> b!4660654 (= lt!1822215 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660654 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun lt!1822220 () Unit!118984)

(assert (=> b!4660654 (= lt!1822220 lt!1822215)))

(assert (=> b!4660654 (= lt!1822213 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660654 call!325612))

(declare-fun b!4660655 () Bool)

(assert (=> b!4660655 (= e!2908217 (not (contains!15089 (keys!18406 lt!1821400) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(assert (= (and d!1479984 c!797776) b!4660654))

(assert (= (and d!1479984 (not c!797776)) b!4660653))

(assert (= (and b!4660653 c!797775) b!4660648))

(assert (= (and b!4660653 (not c!797775)) b!4660649))

(assert (= (or b!4660654 b!4660653) bm!325607))

(assert (= (and bm!325607 c!797774) b!4660650))

(assert (= (and bm!325607 (not c!797774)) b!4660647))

(assert (= (and d!1479984 res!1960463) b!4660655))

(assert (= (and d!1479984 (not res!1960462)) b!4660651))

(assert (= (and b!4660651 res!1960464) b!4660652))

(declare-fun m!5543583 () Bool)

(assert (=> d!1479984 m!5543583))

(assert (=> b!4660648 m!5543583))

(declare-fun m!5543585 () Bool)

(assert (=> b!4660648 m!5543585))

(assert (=> b!4660655 m!5542299))

(assert (=> b!4660655 m!5542299))

(declare-fun m!5543587 () Bool)

(assert (=> b!4660655 m!5543587))

(assert (=> b!4660650 m!5542303))

(assert (=> b!4660647 m!5542299))

(declare-fun m!5543589 () Bool)

(assert (=> b!4660654 m!5543589))

(declare-fun m!5543591 () Bool)

(assert (=> b!4660654 m!5543591))

(assert (=> b!4660654 m!5543591))

(declare-fun m!5543593 () Bool)

(assert (=> b!4660654 m!5543593))

(declare-fun m!5543595 () Bool)

(assert (=> b!4660654 m!5543595))

(assert (=> b!4660652 m!5542299))

(assert (=> b!4660652 m!5542299))

(assert (=> b!4660652 m!5543587))

(assert (=> b!4660651 m!5543591))

(assert (=> b!4660651 m!5543591))

(assert (=> b!4660651 m!5543593))

(declare-fun m!5543597 () Bool)

(assert (=> bm!325607 m!5543597))

(assert (=> bs!1066948 d!1479984))

(declare-fun b!4660656 () Bool)

(declare-fun e!2908222 () Option!11847)

(assert (=> b!4660656 (= e!2908222 (Some!11846 (_2!29822 (h!58081 (t!359169 (toList!5234 lt!1821147))))))))

(declare-fun b!4660659 () Bool)

(declare-fun e!2908223 () Option!11847)

(assert (=> b!4660659 (= e!2908223 None!11846)))

(declare-fun b!4660658 () Bool)

(assert (=> b!4660658 (= e!2908223 (getValueByKey!1625 (t!359169 (t!359169 (toList!5234 lt!1821147))) lt!1821136))))

(declare-fun b!4660657 () Bool)

(assert (=> b!4660657 (= e!2908222 e!2908223)))

(declare-fun c!797778 () Bool)

(assert (=> b!4660657 (= c!797778 (and ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (not (= (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821136))))))

(declare-fun d!1479986 () Bool)

(declare-fun c!797777 () Bool)

(assert (=> d!1479986 (= c!797777 (and ((_ is Cons!51929) (t!359169 (toList!5234 lt!1821147))) (= (_1!29822 (h!58081 (t!359169 (toList!5234 lt!1821147)))) lt!1821136)))))

(assert (=> d!1479986 (= (getValueByKey!1625 (t!359169 (toList!5234 lt!1821147)) lt!1821136) e!2908222)))

(assert (= (and d!1479986 c!797777) b!4660656))

(assert (= (and d!1479986 (not c!797777)) b!4660657))

(assert (= (and b!4660657 c!797778) b!4660658))

(assert (= (and b!4660657 (not c!797778)) b!4660659))

(declare-fun m!5543599 () Bool)

(assert (=> b!4660658 m!5543599))

(assert (=> b!4659758 d!1479986))

(declare-fun d!1479988 () Bool)

(assert (not d!1479988))

(assert (=> bs!1066942 d!1479988))

(declare-fun bs!1067894 () Bool)

(declare-fun b!4660662 () Bool)

(assert (= bs!1067894 (and b!4660662 b!4660225)))

(declare-fun lambda!200250 () Int)

(assert (=> bs!1067894 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1822000) (= lambda!200250 lambda!200203))))

(declare-fun bs!1067895 () Bool)

(assert (= bs!1067895 (and b!4660662 d!1478838)))

(assert (=> bs!1067895 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821400) (= lambda!200250 lambda!200078))))

(declare-fun bs!1067896 () Bool)

(assert (= bs!1067896 (and b!4660662 b!4659725)))

(assert (=> bs!1067896 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200250 lambda!200156))))

(declare-fun bs!1067897 () Bool)

(assert (= bs!1067897 (and b!4660662 b!4659241)))

(assert (=> bs!1067897 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200250 lambda!200077))))

(declare-fun bs!1067898 () Bool)

(assert (= bs!1067898 (and b!4660662 b!4659723)))

(assert (=> bs!1067898 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200250 lambda!200157))))

(declare-fun bs!1067899 () Bool)

(assert (= bs!1067899 (and b!4660662 d!1478768)))

(assert (=> bs!1067899 (not (= lambda!200250 lambda!199986))))

(assert (=> bs!1067897 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200250 lambda!200076))))

(declare-fun bs!1067901 () Bool)

(assert (= bs!1067901 (and b!4660662 b!4660227)))

(assert (=> bs!1067901 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200250 lambda!200199))))

(assert (=> bs!1067898 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821726) (= lambda!200250 lambda!200158))))

(declare-fun bs!1067903 () Bool)

(assert (= bs!1067903 (and b!4660662 d!1479170)))

(assert (=> bs!1067903 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821722) (= lambda!200250 lambda!200159))))

(declare-fun bs!1067905 () Bool)

(assert (= bs!1067905 (and b!4660662 b!4659243)))

(assert (=> bs!1067905 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200250 lambda!200075))))

(declare-fun bs!1067907 () Bool)

(assert (= bs!1067907 (and b!4660662 b!4660124)))

(assert (=> bs!1067907 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821937) (= lambda!200250 lambda!200191))))

(declare-fun bs!1067909 () Bool)

(assert (= bs!1067909 (and b!4660662 b!4659665)))

(assert (=> bs!1067909 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200250 lambda!200147))))

(declare-fun bs!1067911 () Bool)

(assert (= bs!1067911 (and b!4660662 d!1479132)))

(assert (=> bs!1067911 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821663) (= lambda!200250 lambda!200149))))

(assert (=> bs!1067907 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200250 lambda!200190))))

(declare-fun bs!1067914 () Bool)

(assert (= bs!1067914 (and b!4660662 d!1479832)))

(assert (=> bs!1067914 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200250 lambda!200224))))

(declare-fun bs!1067916 () Bool)

(assert (= bs!1067916 (and b!4660662 d!1479526)))

(assert (=> bs!1067916 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821667) (= lambda!200250 lambda!200185))))

(declare-fun bs!1067918 () Bool)

(assert (= bs!1067918 (and b!4660662 b!4660126)))

(assert (=> bs!1067918 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200250 lambda!200188))))

(declare-fun bs!1067920 () Bool)

(assert (= bs!1067920 (and b!4660662 d!1479158)))

(assert (=> bs!1067920 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200250 lambda!200155))))

(declare-fun bs!1067922 () Bool)

(assert (= bs!1067922 (and b!4660662 b!4659667)))

(assert (=> bs!1067922 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200250 lambda!200146))))

(assert (=> bs!1067894 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200250 lambda!200201))))

(declare-fun bs!1067925 () Bool)

(assert (= bs!1067925 (and b!4660662 d!1479614)))

(assert (=> bs!1067925 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821996) (= lambda!200250 lambda!200205))))

(declare-fun bs!1067927 () Bool)

(assert (= bs!1067927 (and b!4660662 d!1479846)))

(assert (=> bs!1067927 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200250 lambda!200229))))

(declare-fun bs!1067929 () Bool)

(assert (= bs!1067929 (and b!4660662 d!1479862)))

(assert (=> bs!1067929 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200250 lambda!200234))))

(declare-fun bs!1067931 () Bool)

(assert (= bs!1067931 (and b!4660662 d!1478866)))

(assert (=> bs!1067931 (not (= lambda!200250 lambda!200086))))

(declare-fun bs!1067933 () Bool)

(assert (= bs!1067933 (and b!4660662 d!1479372)))

(assert (=> bs!1067933 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200250 lambda!200180))))

(assert (=> bs!1067909 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821667) (= lambda!200250 lambda!200148))))

(declare-fun bs!1067936 () Bool)

(assert (= bs!1067936 (and b!4660662 d!1479240)))

(assert (=> bs!1067936 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200250 lambda!200166))))

(declare-fun bs!1067938 () Bool)

(assert (= bs!1067938 (and b!4660662 d!1479528)))

(assert (=> bs!1067938 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821933) (= lambda!200250 lambda!200192))))

(declare-fun bs!1067940 () Bool)

(assert (= bs!1067940 (and b!4660662 d!1479840)))

(assert (=> bs!1067940 (not (= lambda!200250 lambda!200226))))

(assert (=> b!4660662 true))

(declare-fun bs!1067947 () Bool)

(declare-fun b!4660660 () Bool)

(assert (= bs!1067947 (and b!4660660 b!4660225)))

(declare-fun lambda!200252 () Int)

(assert (=> bs!1067947 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1822000) (= lambda!200252 lambda!200203))))

(declare-fun bs!1067949 () Bool)

(assert (= bs!1067949 (and b!4660660 d!1478838)))

(assert (=> bs!1067949 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821400) (= lambda!200252 lambda!200078))))

(declare-fun bs!1067950 () Bool)

(assert (= bs!1067950 (and b!4660660 b!4659725)))

(assert (=> bs!1067950 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200252 lambda!200156))))

(declare-fun bs!1067951 () Bool)

(assert (= bs!1067951 (and b!4660660 b!4659241)))

(assert (=> bs!1067951 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200252 lambda!200077))))

(declare-fun bs!1067952 () Bool)

(assert (= bs!1067952 (and b!4660660 b!4659723)))

(assert (=> bs!1067952 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200252 lambda!200157))))

(declare-fun bs!1067953 () Bool)

(assert (= bs!1067953 (and b!4660660 d!1478768)))

(assert (=> bs!1067953 (not (= lambda!200252 lambda!199986))))

(declare-fun bs!1067954 () Bool)

(assert (= bs!1067954 (and b!4660660 b!4660662)))

(assert (=> bs!1067954 (= lambda!200252 lambda!200250)))

(assert (=> bs!1067951 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200252 lambda!200076))))

(declare-fun bs!1067955 () Bool)

(assert (= bs!1067955 (and b!4660660 b!4660227)))

(assert (=> bs!1067955 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200252 lambda!200199))))

(assert (=> bs!1067952 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821726) (= lambda!200252 lambda!200158))))

(declare-fun bs!1067956 () Bool)

(assert (= bs!1067956 (and b!4660660 d!1479170)))

(assert (=> bs!1067956 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821722) (= lambda!200252 lambda!200159))))

(declare-fun bs!1067957 () Bool)

(assert (= bs!1067957 (and b!4660660 b!4659243)))

(assert (=> bs!1067957 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200252 lambda!200075))))

(declare-fun bs!1067958 () Bool)

(assert (= bs!1067958 (and b!4660660 b!4660124)))

(assert (=> bs!1067958 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821937) (= lambda!200252 lambda!200191))))

(declare-fun bs!1067959 () Bool)

(assert (= bs!1067959 (and b!4660660 b!4659665)))

(assert (=> bs!1067959 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200252 lambda!200147))))

(declare-fun bs!1067960 () Bool)

(assert (= bs!1067960 (and b!4660660 d!1479132)))

(assert (=> bs!1067960 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821663) (= lambda!200252 lambda!200149))))

(assert (=> bs!1067958 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200252 lambda!200190))))

(declare-fun bs!1067961 () Bool)

(assert (= bs!1067961 (and b!4660660 d!1479832)))

(assert (=> bs!1067961 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200252 lambda!200224))))

(declare-fun bs!1067962 () Bool)

(assert (= bs!1067962 (and b!4660660 d!1479526)))

(assert (=> bs!1067962 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821667) (= lambda!200252 lambda!200185))))

(declare-fun bs!1067963 () Bool)

(assert (= bs!1067963 (and b!4660660 b!4660126)))

(assert (=> bs!1067963 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200252 lambda!200188))))

(declare-fun bs!1067964 () Bool)

(assert (= bs!1067964 (and b!4660660 d!1479158)))

(assert (=> bs!1067964 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200252 lambda!200155))))

(declare-fun bs!1067965 () Bool)

(assert (= bs!1067965 (and b!4660660 b!4659667)))

(assert (=> bs!1067965 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200252 lambda!200146))))

(assert (=> bs!1067947 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200252 lambda!200201))))

(declare-fun bs!1067966 () Bool)

(assert (= bs!1067966 (and b!4660660 d!1479614)))

(assert (=> bs!1067966 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821996) (= lambda!200252 lambda!200205))))

(declare-fun bs!1067967 () Bool)

(assert (= bs!1067967 (and b!4660660 d!1479846)))

(assert (=> bs!1067967 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200252 lambda!200229))))

(declare-fun bs!1067968 () Bool)

(assert (= bs!1067968 (and b!4660660 d!1479862)))

(assert (=> bs!1067968 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821404) (= lambda!200252 lambda!200234))))

(declare-fun bs!1067969 () Bool)

(assert (= bs!1067969 (and b!4660660 d!1478866)))

(assert (=> bs!1067969 (not (= lambda!200252 lambda!200086))))

(declare-fun bs!1067970 () Bool)

(assert (= bs!1067970 (and b!4660660 d!1479372)))

(assert (=> bs!1067970 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200252 lambda!200180))))

(assert (=> bs!1067959 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821667) (= lambda!200252 lambda!200148))))

(declare-fun bs!1067971 () Bool)

(assert (= bs!1067971 (and b!4660660 d!1479240)))

(assert (=> bs!1067971 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821141) (= lambda!200252 lambda!200166))))

(declare-fun bs!1067972 () Bool)

(assert (= bs!1067972 (and b!4660660 d!1479528)))

(assert (=> bs!1067972 (= (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1821933) (= lambda!200252 lambda!200192))))

(declare-fun bs!1067973 () Bool)

(assert (= bs!1067973 (and b!4660660 d!1479840)))

(assert (=> bs!1067973 (not (= lambda!200252 lambda!200226))))

(assert (=> b!4660660 true))

(declare-fun lt!1822227 () ListMap!4573)

(declare-fun lambda!200253 () Int)

(assert (=> bs!1067947 (= (= lt!1822227 lt!1822000) (= lambda!200253 lambda!200203))))

(assert (=> bs!1067949 (= (= lt!1822227 lt!1821400) (= lambda!200253 lambda!200078))))

(assert (=> bs!1067950 (= (= lt!1822227 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200253 lambda!200156))))

(assert (=> bs!1067951 (= (= lt!1822227 lt!1821404) (= lambda!200253 lambda!200077))))

(assert (=> bs!1067952 (= (= lt!1822227 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200253 lambda!200157))))

(assert (=> bs!1067953 (not (= lambda!200253 lambda!199986))))

(assert (=> bs!1067954 (= (= lt!1822227 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200253 lambda!200250))))

(assert (=> bs!1067951 (= (= lt!1822227 lt!1821141) (= lambda!200253 lambda!200076))))

(assert (=> b!4660660 (= (= lt!1822227 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200253 lambda!200252))))

(assert (=> bs!1067955 (= (= lt!1822227 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200253 lambda!200199))))

(assert (=> bs!1067952 (= (= lt!1822227 lt!1821726) (= lambda!200253 lambda!200158))))

(assert (=> bs!1067956 (= (= lt!1822227 lt!1821722) (= lambda!200253 lambda!200159))))

(assert (=> bs!1067957 (= (= lt!1822227 lt!1821141) (= lambda!200253 lambda!200075))))

(assert (=> bs!1067958 (= (= lt!1822227 lt!1821937) (= lambda!200253 lambda!200191))))

(assert (=> bs!1067959 (= (= lt!1822227 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200253 lambda!200147))))

(assert (=> bs!1067960 (= (= lt!1822227 lt!1821663) (= lambda!200253 lambda!200149))))

(assert (=> bs!1067958 (= (= lt!1822227 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200253 lambda!200190))))

(assert (=> bs!1067961 (= (= lt!1822227 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200253 lambda!200224))))

(assert (=> bs!1067962 (= (= lt!1822227 lt!1821667) (= lambda!200253 lambda!200185))))

(assert (=> bs!1067963 (= (= lt!1822227 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200253 lambda!200188))))

(assert (=> bs!1067964 (= (= lt!1822227 lt!1821404) (= lambda!200253 lambda!200155))))

(assert (=> bs!1067965 (= (= lt!1822227 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200253 lambda!200146))))

(assert (=> bs!1067947 (= (= lt!1822227 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200253 lambda!200201))))

(assert (=> bs!1067966 (= (= lt!1822227 lt!1821996) (= lambda!200253 lambda!200205))))

(assert (=> bs!1067967 (= (= lt!1822227 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200253 lambda!200229))))

(assert (=> bs!1067968 (= (= lt!1822227 lt!1821404) (= lambda!200253 lambda!200234))))

(assert (=> bs!1067969 (not (= lambda!200253 lambda!200086))))

(assert (=> bs!1067970 (= (= lt!1822227 lt!1821141) (= lambda!200253 lambda!200180))))

(assert (=> bs!1067959 (= (= lt!1822227 lt!1821667) (= lambda!200253 lambda!200148))))

(assert (=> bs!1067971 (= (= lt!1822227 lt!1821141) (= lambda!200253 lambda!200166))))

(assert (=> bs!1067972 (= (= lt!1822227 lt!1821933) (= lambda!200253 lambda!200192))))

(assert (=> bs!1067973 (not (= lambda!200253 lambda!200226))))

(assert (=> b!4660660 true))

(declare-fun bs!1067985 () Bool)

(declare-fun d!1479990 () Bool)

(assert (= bs!1067985 (and d!1479990 b!4660225)))

(declare-fun lt!1822223 () ListMap!4573)

(declare-fun lambda!200255 () Int)

(assert (=> bs!1067985 (= (= lt!1822223 lt!1822000) (= lambda!200255 lambda!200203))))

(declare-fun bs!1067986 () Bool)

(assert (= bs!1067986 (and d!1479990 d!1478838)))

(assert (=> bs!1067986 (= (= lt!1822223 lt!1821400) (= lambda!200255 lambda!200078))))

(declare-fun bs!1067987 () Bool)

(assert (= bs!1067987 (and d!1479990 b!4659725)))

(assert (=> bs!1067987 (= (= lt!1822223 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200255 lambda!200156))))

(declare-fun bs!1067988 () Bool)

(assert (= bs!1067988 (and d!1479990 b!4660660)))

(assert (=> bs!1067988 (= (= lt!1822223 lt!1822227) (= lambda!200255 lambda!200253))))

(declare-fun bs!1067989 () Bool)

(assert (= bs!1067989 (and d!1479990 b!4659241)))

(assert (=> bs!1067989 (= (= lt!1822223 lt!1821404) (= lambda!200255 lambda!200077))))

(declare-fun bs!1067990 () Bool)

(assert (= bs!1067990 (and d!1479990 b!4659723)))

(assert (=> bs!1067990 (= (= lt!1822223 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200255 lambda!200157))))

(declare-fun bs!1067991 () Bool)

(assert (= bs!1067991 (and d!1479990 d!1478768)))

(assert (=> bs!1067991 (not (= lambda!200255 lambda!199986))))

(declare-fun bs!1067992 () Bool)

(assert (= bs!1067992 (and d!1479990 b!4660662)))

(assert (=> bs!1067992 (= (= lt!1822223 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200255 lambda!200250))))

(assert (=> bs!1067989 (= (= lt!1822223 lt!1821141) (= lambda!200255 lambda!200076))))

(assert (=> bs!1067988 (= (= lt!1822223 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200255 lambda!200252))))

(declare-fun bs!1067993 () Bool)

(assert (= bs!1067993 (and d!1479990 b!4660227)))

(assert (=> bs!1067993 (= (= lt!1822223 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200255 lambda!200199))))

(assert (=> bs!1067990 (= (= lt!1822223 lt!1821726) (= lambda!200255 lambda!200158))))

(declare-fun bs!1067994 () Bool)

(assert (= bs!1067994 (and d!1479990 d!1479170)))

(assert (=> bs!1067994 (= (= lt!1822223 lt!1821722) (= lambda!200255 lambda!200159))))

(declare-fun bs!1067995 () Bool)

(assert (= bs!1067995 (and d!1479990 b!4659243)))

(assert (=> bs!1067995 (= (= lt!1822223 lt!1821141) (= lambda!200255 lambda!200075))))

(declare-fun bs!1067996 () Bool)

(assert (= bs!1067996 (and d!1479990 b!4660124)))

(assert (=> bs!1067996 (= (= lt!1822223 lt!1821937) (= lambda!200255 lambda!200191))))

(declare-fun bs!1067997 () Bool)

(assert (= bs!1067997 (and d!1479990 b!4659665)))

(assert (=> bs!1067997 (= (= lt!1822223 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200255 lambda!200147))))

(declare-fun bs!1067998 () Bool)

(assert (= bs!1067998 (and d!1479990 d!1479132)))

(assert (=> bs!1067998 (= (= lt!1822223 lt!1821663) (= lambda!200255 lambda!200149))))

(assert (=> bs!1067996 (= (= lt!1822223 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200255 lambda!200190))))

(declare-fun bs!1067999 () Bool)

(assert (= bs!1067999 (and d!1479990 d!1479832)))

(assert (=> bs!1067999 (= (= lt!1822223 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200255 lambda!200224))))

(declare-fun bs!1068000 () Bool)

(assert (= bs!1068000 (and d!1479990 d!1479526)))

(assert (=> bs!1068000 (= (= lt!1822223 lt!1821667) (= lambda!200255 lambda!200185))))

(declare-fun bs!1068001 () Bool)

(assert (= bs!1068001 (and d!1479990 b!4660126)))

(assert (=> bs!1068001 (= (= lt!1822223 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200255 lambda!200188))))

(declare-fun bs!1068002 () Bool)

(assert (= bs!1068002 (and d!1479990 d!1479158)))

(assert (=> bs!1068002 (= (= lt!1822223 lt!1821404) (= lambda!200255 lambda!200155))))

(declare-fun bs!1068003 () Bool)

(assert (= bs!1068003 (and d!1479990 b!4659667)))

(assert (=> bs!1068003 (= (= lt!1822223 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200255 lambda!200146))))

(assert (=> bs!1067985 (= (= lt!1822223 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200255 lambda!200201))))

(declare-fun bs!1068004 () Bool)

(assert (= bs!1068004 (and d!1479990 d!1479614)))

(assert (=> bs!1068004 (= (= lt!1822223 lt!1821996) (= lambda!200255 lambda!200205))))

(declare-fun bs!1068005 () Bool)

(assert (= bs!1068005 (and d!1479990 d!1479846)))

(assert (=> bs!1068005 (= (= lt!1822223 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200255 lambda!200229))))

(declare-fun bs!1068006 () Bool)

(assert (= bs!1068006 (and d!1479990 d!1479862)))

(assert (=> bs!1068006 (= (= lt!1822223 lt!1821404) (= lambda!200255 lambda!200234))))

(declare-fun bs!1068007 () Bool)

(assert (= bs!1068007 (and d!1479990 d!1478866)))

(assert (=> bs!1068007 (not (= lambda!200255 lambda!200086))))

(declare-fun bs!1068008 () Bool)

(assert (= bs!1068008 (and d!1479990 d!1479372)))

(assert (=> bs!1068008 (= (= lt!1822223 lt!1821141) (= lambda!200255 lambda!200180))))

(assert (=> bs!1067997 (= (= lt!1822223 lt!1821667) (= lambda!200255 lambda!200148))))

(declare-fun bs!1068009 () Bool)

(assert (= bs!1068009 (and d!1479990 d!1479240)))

(assert (=> bs!1068009 (= (= lt!1822223 lt!1821141) (= lambda!200255 lambda!200166))))

(declare-fun bs!1068010 () Bool)

(assert (= bs!1068010 (and d!1479990 d!1479528)))

(assert (=> bs!1068010 (= (= lt!1822223 lt!1821933) (= lambda!200255 lambda!200192))))

(declare-fun bs!1068011 () Bool)

(assert (= bs!1068011 (and d!1479990 d!1479840)))

(assert (=> bs!1068011 (not (= lambda!200255 lambda!200226))))

(assert (=> d!1479990 true))

(declare-fun e!2908226 () ListMap!4573)

(assert (=> b!4660660 (= e!2908226 lt!1822227)))

(declare-fun lt!1822235 () ListMap!4573)

(assert (=> b!4660660 (= lt!1822235 (+!1992 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144))))))))

(assert (=> b!4660660 (= lt!1822227 (addToMapMapFromBucket!1109 (t!359168 (_2!29822 (h!58081 (t!359169 lt!1821144)))) (+!1992 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144)))))))))

(declare-fun lt!1822239 () Unit!118984)

(declare-fun call!325615 () Unit!118984)

(assert (=> b!4660660 (= lt!1822239 call!325615)))

(assert (=> b!4660660 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lambda!200252)))

(declare-fun lt!1822236 () Unit!118984)

(assert (=> b!4660660 (= lt!1822236 lt!1822239)))

(assert (=> b!4660660 (forall!11050 (toList!5233 lt!1822235) lambda!200253)))

(declare-fun lt!1822233 () Unit!118984)

(declare-fun Unit!119174 () Unit!118984)

(assert (=> b!4660660 (= lt!1822233 Unit!119174)))

(assert (=> b!4660660 (forall!11050 (t!359168 (_2!29822 (h!58081 (t!359169 lt!1821144)))) lambda!200253)))

(declare-fun lt!1822237 () Unit!118984)

(declare-fun Unit!119175 () Unit!118984)

(assert (=> b!4660660 (= lt!1822237 Unit!119175)))

(declare-fun lt!1822222 () Unit!118984)

(declare-fun Unit!119176 () Unit!118984)

(assert (=> b!4660660 (= lt!1822222 Unit!119176)))

(declare-fun lt!1822241 () Unit!118984)

(assert (=> b!4660660 (= lt!1822241 (forallContained!3250 (toList!5233 lt!1822235) lambda!200253 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144))))))))

(assert (=> b!4660660 (contains!15083 lt!1822235 (_1!29821 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144))))))))

(declare-fun lt!1822224 () Unit!118984)

(declare-fun Unit!119177 () Unit!118984)

(assert (=> b!4660660 (= lt!1822224 Unit!119177)))

(assert (=> b!4660660 (contains!15083 lt!1822227 (_1!29821 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144))))))))

(declare-fun lt!1822229 () Unit!118984)

(declare-fun Unit!119178 () Unit!118984)

(assert (=> b!4660660 (= lt!1822229 Unit!119178)))

(assert (=> b!4660660 (forall!11050 (_2!29822 (h!58081 (t!359169 lt!1821144))) lambda!200253)))

(declare-fun lt!1822231 () Unit!118984)

(declare-fun Unit!119179 () Unit!118984)

(assert (=> b!4660660 (= lt!1822231 Unit!119179)))

(declare-fun call!325613 () Bool)

(assert (=> b!4660660 call!325613))

(declare-fun lt!1822226 () Unit!118984)

(declare-fun Unit!119180 () Unit!118984)

(assert (=> b!4660660 (= lt!1822226 Unit!119180)))

(declare-fun lt!1822234 () Unit!118984)

(declare-fun Unit!119181 () Unit!118984)

(assert (=> b!4660660 (= lt!1822234 Unit!119181)))

(declare-fun lt!1822238 () Unit!118984)

(assert (=> b!4660660 (= lt!1822238 (addForallContainsKeyThenBeforeAdding!605 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1822227 (_1!29821 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144))))) (_2!29821 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821144)))))))))

(assert (=> b!4660660 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lambda!200253)))

(declare-fun lt!1822221 () Unit!118984)

(assert (=> b!4660660 (= lt!1822221 lt!1822238)))

(assert (=> b!4660660 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lambda!200253)))

(declare-fun lt!1822228 () Unit!118984)

(declare-fun Unit!119182 () Unit!118984)

(assert (=> b!4660660 (= lt!1822228 Unit!119182)))

(declare-fun res!1960467 () Bool)

(declare-fun call!325614 () Bool)

(assert (=> b!4660660 (= res!1960467 call!325614)))

(declare-fun e!2908225 () Bool)

(assert (=> b!4660660 (=> (not res!1960467) (not e!2908225))))

(assert (=> b!4660660 e!2908225))

(declare-fun lt!1822240 () Unit!118984)

(declare-fun Unit!119183 () Unit!118984)

(assert (=> b!4660660 (= lt!1822240 Unit!119183)))

(declare-fun e!2908224 () Bool)

(assert (=> d!1479990 e!2908224))

(declare-fun res!1960466 () Bool)

(assert (=> d!1479990 (=> (not res!1960466) (not e!2908224))))

(assert (=> d!1479990 (= res!1960466 (forall!11050 (_2!29822 (h!58081 (t!359169 lt!1821144))) lambda!200255))))

(assert (=> d!1479990 (= lt!1822223 e!2908226)))

(declare-fun c!797779 () Bool)

(assert (=> d!1479990 (= c!797779 ((_ is Nil!51928) (_2!29822 (h!58081 (t!359169 lt!1821144)))))))

(assert (=> d!1479990 (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821144))))))

(assert (=> d!1479990 (= (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (t!359169 lt!1821144))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lt!1822223)))

(declare-fun b!4660661 () Bool)

(assert (=> b!4660661 (= e!2908224 (invariantList!1306 (toList!5233 lt!1822223)))))

(declare-fun bm!325608 () Bool)

(assert (=> bm!325608 (= call!325613 (forall!11050 (ite c!797779 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (toList!5233 lt!1822235)) (ite c!797779 lambda!200250 lambda!200253)))))

(declare-fun bm!325609 () Bool)

(assert (=> bm!325609 (= call!325614 (forall!11050 (ite c!797779 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (_2!29822 (h!58081 (t!359169 lt!1821144)))) (ite c!797779 lambda!200250 lambda!200253)))))

(assert (=> b!4660662 (= e!2908226 (extractMap!1708 (t!359169 (t!359169 lt!1821144))))))

(declare-fun lt!1822230 () Unit!118984)

(assert (=> b!4660662 (= lt!1822230 call!325615)))

(assert (=> b!4660662 call!325613))

(declare-fun lt!1822232 () Unit!118984)

(assert (=> b!4660662 (= lt!1822232 lt!1822230)))

(assert (=> b!4660662 call!325614))

(declare-fun lt!1822225 () Unit!118984)

(declare-fun Unit!119184 () Unit!118984)

(assert (=> b!4660662 (= lt!1822225 Unit!119184)))

(declare-fun b!4660663 () Bool)

(assert (=> b!4660663 (= e!2908225 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lambda!200253))))

(declare-fun b!4660664 () Bool)

(declare-fun res!1960465 () Bool)

(assert (=> b!4660664 (=> (not res!1960465) (not e!2908224))))

(assert (=> b!4660664 (= res!1960465 (forall!11050 (toList!5233 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) lambda!200255))))

(declare-fun bm!325610 () Bool)

(assert (=> bm!325610 (= call!325615 (lemmaContainsAllItsOwnKeys!606 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))))))

(assert (= (and d!1479990 c!797779) b!4660662))

(assert (= (and d!1479990 (not c!797779)) b!4660660))

(assert (= (and b!4660660 res!1960467) b!4660663))

(assert (= (or b!4660662 b!4660660) bm!325610))

(assert (= (or b!4660662 b!4660660) bm!325609))

(assert (= (or b!4660662 b!4660660) bm!325608))

(assert (= (and d!1479990 res!1960466) b!4660664))

(assert (= (and b!4660664 res!1960465) b!4660661))

(declare-fun m!5543665 () Bool)

(assert (=> bm!325608 m!5543665))

(assert (=> bm!325610 m!5541487))

(declare-fun m!5543667 () Bool)

(assert (=> bm!325610 m!5543667))

(declare-fun m!5543669 () Bool)

(assert (=> b!4660660 m!5543669))

(declare-fun m!5543671 () Bool)

(assert (=> b!4660660 m!5543671))

(declare-fun m!5543673 () Bool)

(assert (=> b!4660660 m!5543673))

(assert (=> b!4660660 m!5541487))

(declare-fun m!5543675 () Bool)

(assert (=> b!4660660 m!5543675))

(declare-fun m!5543677 () Bool)

(assert (=> b!4660660 m!5543677))

(declare-fun m!5543679 () Bool)

(assert (=> b!4660660 m!5543679))

(declare-fun m!5543681 () Bool)

(assert (=> b!4660660 m!5543681))

(declare-fun m!5543683 () Bool)

(assert (=> b!4660660 m!5543683))

(declare-fun m!5543685 () Bool)

(assert (=> b!4660660 m!5543685))

(declare-fun m!5543687 () Bool)

(assert (=> b!4660660 m!5543687))

(assert (=> b!4660660 m!5541487))

(assert (=> b!4660660 m!5543681))

(declare-fun m!5543689 () Bool)

(assert (=> b!4660660 m!5543689))

(assert (=> b!4660660 m!5543685))

(declare-fun m!5543691 () Bool)

(assert (=> d!1479990 m!5543691))

(declare-fun m!5543693 () Bool)

(assert (=> d!1479990 m!5543693))

(assert (=> b!4660663 m!5543685))

(declare-fun m!5543695 () Bool)

(assert (=> bm!325609 m!5543695))

(declare-fun m!5543697 () Bool)

(assert (=> b!4660664 m!5543697))

(declare-fun m!5543699 () Bool)

(assert (=> b!4660661 m!5543699))

(assert (=> b!4659670 d!1479990))

(declare-fun bs!1068014 () Bool)

(declare-fun d!1480012 () Bool)

(assert (= bs!1068014 (and d!1480012 b!4658974)))

(declare-fun lambda!200256 () Int)

(assert (=> bs!1068014 (= lambda!200256 lambda!199980)))

(declare-fun bs!1068015 () Bool)

(assert (= bs!1068015 (and d!1480012 d!1479088)))

(assert (=> bs!1068015 (= lambda!200256 lambda!200127)))

(declare-fun bs!1068016 () Bool)

(assert (= bs!1068016 (and d!1480012 d!1479212)))

(assert (=> bs!1068016 (not (= lambda!200256 lambda!200160))))

(declare-fun bs!1068017 () Bool)

(assert (= bs!1068017 (and d!1480012 d!1478772)))

(assert (=> bs!1068017 (= lambda!200256 lambda!200029)))

(declare-fun bs!1068018 () Bool)

(assert (= bs!1068018 (and d!1480012 d!1479134)))

(assert (=> bs!1068018 (= lambda!200256 lambda!200150)))

(declare-fun bs!1068019 () Bool)

(assert (= bs!1068019 (and d!1480012 d!1478850)))

(assert (=> bs!1068019 (= lambda!200256 lambda!200081)))

(declare-fun bs!1068020 () Bool)

(assert (= bs!1068020 (and d!1480012 d!1479620)))

(assert (=> bs!1068020 (= lambda!200256 lambda!200207)))

(declare-fun bs!1068021 () Bool)

(assert (= bs!1068021 (and d!1480012 d!1479238)))

(assert (=> bs!1068021 (= lambda!200256 lambda!200163)))

(declare-fun bs!1068022 () Bool)

(assert (= bs!1068022 (and d!1480012 d!1478858)))

(assert (=> bs!1068022 (not (= lambda!200256 lambda!200085))))

(declare-fun bs!1068023 () Bool)

(assert (= bs!1068023 (and d!1480012 d!1478856)))

(assert (=> bs!1068023 (= lambda!200256 lambda!200082)))

(declare-fun bs!1068024 () Bool)

(assert (= bs!1068024 (and d!1480012 d!1478820)))

(assert (=> bs!1068024 (= lambda!200256 lambda!200035)))

(declare-fun lt!1822245 () ListMap!4573)

(assert (=> d!1480012 (invariantList!1306 (toList!5233 lt!1822245))))

(declare-fun e!2908241 () ListMap!4573)

(assert (=> d!1480012 (= lt!1822245 e!2908241)))

(declare-fun c!797784 () Bool)

(assert (=> d!1480012 (= c!797784 ((_ is Cons!51929) (t!359169 (t!359169 lt!1821144))))))

(assert (=> d!1480012 (forall!11048 (t!359169 (t!359169 lt!1821144)) lambda!200256)))

(assert (=> d!1480012 (= (extractMap!1708 (t!359169 (t!359169 lt!1821144))) lt!1822245)))

(declare-fun b!4660683 () Bool)

(assert (=> b!4660683 (= e!2908241 (addToMapMapFromBucket!1109 (_2!29822 (h!58081 (t!359169 (t!359169 lt!1821144)))) (extractMap!1708 (t!359169 (t!359169 (t!359169 lt!1821144))))))))

(declare-fun b!4660684 () Bool)

(assert (=> b!4660684 (= e!2908241 (ListMap!4574 Nil!51928))))

(assert (= (and d!1480012 c!797784) b!4660683))

(assert (= (and d!1480012 (not c!797784)) b!4660684))

(declare-fun m!5543705 () Bool)

(assert (=> d!1480012 m!5543705))

(declare-fun m!5543709 () Bool)

(assert (=> d!1480012 m!5543709))

(declare-fun m!5543711 () Bool)

(assert (=> b!4660683 m!5543711))

(assert (=> b!4660683 m!5543711))

(declare-fun m!5543713 () Bool)

(assert (=> b!4660683 m!5543713))

(assert (=> b!4659670 d!1480012))

(declare-fun d!1480018 () Bool)

(declare-fun res!1960482 () Bool)

(declare-fun e!2908246 () Bool)

(assert (=> d!1480018 (=> res!1960482 e!2908246)))

(assert (=> d!1480018 (= res!1960482 (and ((_ is Cons!51928) lt!1821759) (= (_1!29821 (h!58080 lt!1821759)) key!4968)))))

(assert (=> d!1480018 (= (containsKey!2746 lt!1821759 key!4968) e!2908246)))

(declare-fun b!4660689 () Bool)

(declare-fun e!2908247 () Bool)

(assert (=> b!4660689 (= e!2908246 e!2908247)))

(declare-fun res!1960483 () Bool)

(assert (=> b!4660689 (=> (not res!1960483) (not e!2908247))))

(assert (=> b!4660689 (= res!1960483 ((_ is Cons!51928) lt!1821759))))

(declare-fun b!4660690 () Bool)

(assert (=> b!4660690 (= e!2908247 (containsKey!2746 (t!359168 lt!1821759) key!4968))))

(assert (= (and d!1480018 (not res!1960482)) b!4660689))

(assert (= (and b!4660689 res!1960483) b!4660690))

(declare-fun m!5543717 () Bool)

(assert (=> b!4660690 m!5543717))

(assert (=> d!1479216 d!1480018))

(assert (=> d!1479216 d!1479814))

(declare-fun b!4660700 () Bool)

(declare-fun e!2908257 () List!52055)

(assert (=> b!4660700 (= e!2908257 (keys!18406 lt!1821404))))

(declare-fun bm!325611 () Bool)

(declare-fun call!325616 () Bool)

(assert (=> bm!325611 (= call!325616 (contains!15089 e!2908257 (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun c!797788 () Bool)

(declare-fun c!797790 () Bool)

(assert (=> bm!325611 (= c!797788 c!797790)))

(declare-fun b!4660701 () Bool)

(assert (=> b!4660701 false))

(declare-fun lt!1822256 () Unit!118984)

(declare-fun lt!1822257 () Unit!118984)

(assert (=> b!4660701 (= lt!1822256 lt!1822257)))

(assert (=> b!4660701 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412))))))

(assert (=> b!4660701 (= lt!1822257 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun e!2908256 () Unit!118984)

(declare-fun Unit!119185 () Unit!118984)

(assert (=> b!4660701 (= e!2908256 Unit!119185)))

(declare-fun d!1480022 () Bool)

(declare-fun e!2908255 () Bool)

(assert (=> d!1480022 e!2908255))

(declare-fun res!1960487 () Bool)

(assert (=> d!1480022 (=> res!1960487 e!2908255)))

(declare-fun e!2908253 () Bool)

(assert (=> d!1480022 (= res!1960487 e!2908253)))

(declare-fun res!1960488 () Bool)

(assert (=> d!1480022 (=> (not res!1960488) (not e!2908253))))

(declare-fun lt!1822254 () Bool)

(assert (=> d!1480022 (= res!1960488 (not lt!1822254))))

(declare-fun lt!1822258 () Bool)

(assert (=> d!1480022 (= lt!1822254 lt!1822258)))

(declare-fun lt!1822259 () Unit!118984)

(declare-fun e!2908252 () Unit!118984)

(assert (=> d!1480022 (= lt!1822259 e!2908252)))

(assert (=> d!1480022 (= c!797790 lt!1822258)))

(assert (=> d!1480022 (= lt!1822258 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(assert (=> d!1480022 (= (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 lt!1821412)))) lt!1822254)))

(declare-fun b!4660702 () Bool)

(declare-fun Unit!119187 () Unit!118984)

(assert (=> b!4660702 (= e!2908256 Unit!119187)))

(declare-fun b!4660703 () Bool)

(assert (=> b!4660703 (= e!2908257 (getKeysList!757 (toList!5233 lt!1821404)))))

(declare-fun b!4660704 () Bool)

(declare-fun e!2908254 () Bool)

(assert (=> b!4660704 (= e!2908255 e!2908254)))

(declare-fun res!1960489 () Bool)

(assert (=> b!4660704 (=> (not res!1960489) (not e!2908254))))

(assert (=> b!4660704 (= res!1960489 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412))))))))

(declare-fun b!4660705 () Bool)

(assert (=> b!4660705 (= e!2908254 (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun b!4660706 () Bool)

(assert (=> b!4660706 (= e!2908252 e!2908256)))

(declare-fun c!797789 () Bool)

(assert (=> b!4660706 (= c!797789 call!325616)))

(declare-fun b!4660707 () Bool)

(declare-fun lt!1822253 () Unit!118984)

(assert (=> b!4660707 (= e!2908252 lt!1822253)))

(declare-fun lt!1822255 () Unit!118984)

(assert (=> b!4660707 (= lt!1822255 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(assert (=> b!4660707 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun lt!1822260 () Unit!118984)

(assert (=> b!4660707 (= lt!1822260 lt!1822255)))

(assert (=> b!4660707 (= lt!1822253 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(assert (=> b!4660707 call!325616))

(declare-fun b!4660708 () Bool)

(assert (=> b!4660708 (= e!2908253 (not (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821412))))))))

(assert (= (and d!1480022 c!797790) b!4660707))

(assert (= (and d!1480022 (not c!797790)) b!4660706))

(assert (= (and b!4660706 c!797789) b!4660701))

(assert (= (and b!4660706 (not c!797789)) b!4660702))

(assert (= (or b!4660707 b!4660706) bm!325611))

(assert (= (and bm!325611 c!797788) b!4660703))

(assert (= (and bm!325611 (not c!797788)) b!4660700))

(assert (= (and d!1480022 res!1960488) b!4660708))

(assert (= (and d!1480022 (not res!1960487)) b!4660704))

(assert (= (and b!4660704 res!1960489) b!4660705))

(declare-fun m!5543719 () Bool)

(assert (=> d!1480022 m!5543719))

(assert (=> b!4660701 m!5543719))

(declare-fun m!5543721 () Bool)

(assert (=> b!4660701 m!5543721))

(assert (=> b!4660708 m!5541553))

(assert (=> b!4660708 m!5541553))

(declare-fun m!5543723 () Bool)

(assert (=> b!4660708 m!5543723))

(assert (=> b!4660703 m!5541557))

(assert (=> b!4660700 m!5541553))

(declare-fun m!5543725 () Bool)

(assert (=> b!4660707 m!5543725))

(declare-fun m!5543727 () Bool)

(assert (=> b!4660707 m!5543727))

(assert (=> b!4660707 m!5543727))

(declare-fun m!5543729 () Bool)

(assert (=> b!4660707 m!5543729))

(declare-fun m!5543731 () Bool)

(assert (=> b!4660707 m!5543731))

(assert (=> b!4660705 m!5541553))

(assert (=> b!4660705 m!5541553))

(assert (=> b!4660705 m!5543723))

(assert (=> b!4660704 m!5543727))

(assert (=> b!4660704 m!5543727))

(assert (=> b!4660704 m!5543729))

(declare-fun m!5543733 () Bool)

(assert (=> bm!325611 m!5543733))

(assert (=> bs!1066952 d!1480022))

(declare-fun b!4660709 () Bool)

(declare-fun e!2908263 () List!52055)

(assert (=> b!4660709 (= e!2908263 (keys!18406 lt!1821404))))

(declare-fun bm!325612 () Bool)

(declare-fun call!325617 () Bool)

(assert (=> bm!325612 (= call!325617 (contains!15089 e!2908263 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun c!797791 () Bool)

(declare-fun c!797793 () Bool)

(assert (=> bm!325612 (= c!797791 c!797793)))

(declare-fun b!4660710 () Bool)

(assert (=> b!4660710 false))

(declare-fun lt!1822264 () Unit!118984)

(declare-fun lt!1822265 () Unit!118984)

(assert (=> b!4660710 (= lt!1822264 lt!1822265)))

(assert (=> b!4660710 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))

(assert (=> b!4660710 (= lt!1822265 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun e!2908262 () Unit!118984)

(declare-fun Unit!119198 () Unit!118984)

(assert (=> b!4660710 (= e!2908262 Unit!119198)))

(declare-fun d!1480024 () Bool)

(declare-fun e!2908261 () Bool)

(assert (=> d!1480024 e!2908261))

(declare-fun res!1960490 () Bool)

(assert (=> d!1480024 (=> res!1960490 e!2908261)))

(declare-fun e!2908259 () Bool)

(assert (=> d!1480024 (= res!1960490 e!2908259)))

(declare-fun res!1960491 () Bool)

(assert (=> d!1480024 (=> (not res!1960491) (not e!2908259))))

(declare-fun lt!1822262 () Bool)

(assert (=> d!1480024 (= res!1960491 (not lt!1822262))))

(declare-fun lt!1822266 () Bool)

(assert (=> d!1480024 (= lt!1822262 lt!1822266)))

(declare-fun lt!1822267 () Unit!118984)

(declare-fun e!2908258 () Unit!118984)

(assert (=> d!1480024 (= lt!1822267 e!2908258)))

(assert (=> d!1480024 (= c!797793 lt!1822266)))

(assert (=> d!1480024 (= lt!1822266 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480024 (= (contains!15083 lt!1821404 (_1!29821 (h!58080 (t!359168 oldBucket!40)))) lt!1822262)))

(declare-fun b!4660711 () Bool)

(declare-fun Unit!119199 () Unit!118984)

(assert (=> b!4660711 (= e!2908262 Unit!119199)))

(declare-fun b!4660712 () Bool)

(assert (=> b!4660712 (= e!2908263 (getKeysList!757 (toList!5233 lt!1821404)))))

(declare-fun b!4660713 () Bool)

(declare-fun e!2908260 () Bool)

(assert (=> b!4660713 (= e!2908261 e!2908260)))

(declare-fun res!1960492 () Bool)

(assert (=> b!4660713 (=> (not res!1960492) (not e!2908260))))

(assert (=> b!4660713 (= res!1960492 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(declare-fun b!4660714 () Bool)

(assert (=> b!4660714 (= e!2908260 (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun b!4660715 () Bool)

(assert (=> b!4660715 (= e!2908258 e!2908262)))

(declare-fun c!797792 () Bool)

(assert (=> b!4660715 (= c!797792 call!325617)))

(declare-fun b!4660716 () Bool)

(declare-fun lt!1822261 () Unit!118984)

(assert (=> b!4660716 (= e!2908258 lt!1822261)))

(declare-fun lt!1822263 () Unit!118984)

(assert (=> b!4660716 (= lt!1822263 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660716 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822268 () Unit!118984)

(assert (=> b!4660716 (= lt!1822268 lt!1822263)))

(assert (=> b!4660716 (= lt!1822261 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660716 call!325617))

(declare-fun b!4660717 () Bool)

(assert (=> b!4660717 (= e!2908259 (not (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(assert (= (and d!1480024 c!797793) b!4660716))

(assert (= (and d!1480024 (not c!797793)) b!4660715))

(assert (= (and b!4660715 c!797792) b!4660710))

(assert (= (and b!4660715 (not c!797792)) b!4660711))

(assert (= (or b!4660716 b!4660715) bm!325612))

(assert (= (and bm!325612 c!797791) b!4660712))

(assert (= (and bm!325612 (not c!797791)) b!4660709))

(assert (= (and d!1480024 res!1960491) b!4660717))

(assert (= (and d!1480024 (not res!1960490)) b!4660713))

(assert (= (and b!4660713 res!1960492) b!4660714))

(declare-fun m!5543735 () Bool)

(assert (=> d!1480024 m!5543735))

(assert (=> b!4660710 m!5543735))

(declare-fun m!5543737 () Bool)

(assert (=> b!4660710 m!5543737))

(assert (=> b!4660717 m!5541553))

(assert (=> b!4660717 m!5541553))

(declare-fun m!5543739 () Bool)

(assert (=> b!4660717 m!5543739))

(assert (=> b!4660712 m!5541557))

(assert (=> b!4660709 m!5541553))

(declare-fun m!5543741 () Bool)

(assert (=> b!4660716 m!5543741))

(declare-fun m!5543743 () Bool)

(assert (=> b!4660716 m!5543743))

(assert (=> b!4660716 m!5543743))

(declare-fun m!5543745 () Bool)

(assert (=> b!4660716 m!5543745))

(declare-fun m!5543747 () Bool)

(assert (=> b!4660716 m!5543747))

(assert (=> b!4660714 m!5541553))

(assert (=> b!4660714 m!5541553))

(assert (=> b!4660714 m!5543739))

(assert (=> b!4660713 m!5543743))

(assert (=> b!4660713 m!5543743))

(assert (=> b!4660713 m!5543745))

(declare-fun m!5543749 () Bool)

(assert (=> bm!325612 m!5543749))

(assert (=> bs!1066957 d!1480024))

(assert (=> b!4659565 d!1479400))

(assert (=> b!4659565 d!1479402))

(declare-fun bs!1068053 () Bool)

(declare-fun b!4660725 () Bool)

(assert (= bs!1068053 (and b!4660725 b!4660412)))

(declare-fun lambda!200259 () Int)

(assert (=> bs!1068053 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 lt!1821404)) (= lambda!200259 lambda!200218))))

(declare-fun bs!1068055 () Bool)

(assert (= bs!1068055 (and b!4660725 b!4659995)))

(assert (=> bs!1068055 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200259 lambda!200182))))

(declare-fun bs!1068057 () Bool)

(assert (= bs!1068057 (and b!4660725 b!4660222)))

(assert (=> bs!1068057 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 lt!1821412)) (= lambda!200259 lambda!200197))))

(declare-fun bs!1068059 () Bool)

(assert (= bs!1068059 (and b!4660725 b!4660350)))

(assert (=> bs!1068059 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 lt!1821404)) (= lambda!200259 lambda!200211))))

(declare-fun bs!1068061 () Bool)

(assert (= bs!1068061 (and b!4660725 b!4659596)))

(assert (=> bs!1068061 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 lt!1821138)) (= lambda!200259 lambda!200132))))

(declare-fun bs!1068063 () Bool)

(assert (= bs!1068063 (and b!4660725 b!4660618)))

(assert (=> bs!1068063 (= (= (t!359168 (toList!5233 lt!1821412)) (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))) (= lambda!200259 lambda!200244))))

(declare-fun bs!1068065 () Bool)

(assert (= bs!1068065 (and b!4660725 b!4660555)))

(assert (=> bs!1068065 (= (= (t!359168 (toList!5233 lt!1821412)) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200259 lambda!200235))))

(declare-fun bs!1068067 () Bool)

(assert (= bs!1068067 (and b!4660725 b!4660556)))

(assert (=> bs!1068067 (= (= (t!359168 (toList!5233 lt!1821412)) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200259 lambda!200236))))

(declare-fun bs!1068068 () Bool)

(assert (= bs!1068068 (and b!4660725 b!4660414)))

(assert (=> bs!1068068 (= (= (t!359168 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821404))) (= lambda!200259 lambda!200216))))

(declare-fun bs!1068069 () Bool)

(assert (= bs!1068069 (and b!4660725 b!4659641)))

(assert (=> bs!1068069 (= (= (t!359168 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821138))) (= lambda!200259 lambda!200142))))

(declare-fun bs!1068070 () Bool)

(assert (= bs!1068070 (and b!4660725 b!4660415)))

(assert (=> bs!1068070 (= (= (t!359168 (toList!5233 lt!1821412)) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200259 lambda!200217))))

(declare-fun bs!1068072 () Bool)

(assert (= bs!1068072 (and b!4660725 b!4660617)))

(assert (=> bs!1068072 (= (= (t!359168 (toList!5233 lt!1821412)) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200259 lambda!200243))))

(declare-fun bs!1068074 () Bool)

(assert (= bs!1068074 (and b!4660725 b!4659639)))

(assert (=> bs!1068074 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 lt!1821138)) (= lambda!200259 lambda!200144))))

(declare-fun bs!1068076 () Bool)

(assert (= bs!1068076 (and b!4660725 b!4659642)))

(assert (=> bs!1068076 (= (= (t!359168 (toList!5233 lt!1821412)) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200259 lambda!200143))))

(declare-fun bs!1068079 () Bool)

(assert (= bs!1068079 (and b!4660725 b!4660553)))

(assert (=> bs!1068079 (= (= (t!359168 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821138))) (= lambda!200259 lambda!200237))))

(declare-fun bs!1068081 () Bool)

(assert (= bs!1068081 (and b!4660725 b!4660615)))

(assert (=> bs!1068081 (= (= (t!359168 (toList!5233 lt!1821412)) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200259 lambda!200245))))

(assert (=> b!4660725 true))

(declare-fun bs!1068087 () Bool)

(declare-fun b!4660726 () Bool)

(assert (= bs!1068087 (and b!4660726 b!4659995)))

(declare-fun lambda!200261 () Int)

(assert (=> bs!1068087 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200261 lambda!200182))))

(declare-fun bs!1068089 () Bool)

(assert (= bs!1068089 (and b!4660726 b!4660222)))

(assert (=> bs!1068089 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 lt!1821412)) (= lambda!200261 lambda!200197))))

(declare-fun bs!1068091 () Bool)

(assert (= bs!1068091 (and b!4660726 b!4660350)))

(assert (=> bs!1068091 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 lt!1821404)) (= lambda!200261 lambda!200211))))

(declare-fun bs!1068093 () Bool)

(assert (= bs!1068093 (and b!4660726 b!4659596)))

(assert (=> bs!1068093 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 lt!1821138)) (= lambda!200261 lambda!200132))))

(declare-fun bs!1068096 () Bool)

(assert (= bs!1068096 (and b!4660726 b!4660618)))

(assert (=> bs!1068096 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))) (= lambda!200261 lambda!200244))))

(declare-fun bs!1068098 () Bool)

(assert (= bs!1068098 (and b!4660726 b!4660555)))

(assert (=> bs!1068098 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200261 lambda!200235))))

(declare-fun bs!1068100 () Bool)

(assert (= bs!1068100 (and b!4660726 b!4660556)))

(assert (=> bs!1068100 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200261 lambda!200236))))

(declare-fun bs!1068102 () Bool)

(assert (= bs!1068102 (and b!4660726 b!4660414)))

(assert (=> bs!1068102 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200261 lambda!200216))))

(declare-fun bs!1068103 () Bool)

(assert (= bs!1068103 (and b!4660726 b!4659641)))

(assert (=> bs!1068103 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200261 lambda!200142))))

(declare-fun bs!1068104 () Bool)

(assert (= bs!1068104 (and b!4660726 b!4660415)))

(assert (=> bs!1068104 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200261 lambda!200217))))

(declare-fun bs!1068105 () Bool)

(assert (= bs!1068105 (and b!4660726 b!4660617)))

(assert (=> bs!1068105 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200261 lambda!200243))))

(declare-fun bs!1068107 () Bool)

(assert (= bs!1068107 (and b!4660726 b!4660412)))

(assert (=> bs!1068107 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 lt!1821404)) (= lambda!200261 lambda!200218))))

(declare-fun bs!1068109 () Bool)

(assert (= bs!1068109 (and b!4660726 b!4660725)))

(assert (=> bs!1068109 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (toList!5233 lt!1821412))) (= lambda!200261 lambda!200259))))

(declare-fun bs!1068111 () Bool)

(assert (= bs!1068111 (and b!4660726 b!4659639)))

(assert (=> bs!1068111 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 lt!1821138)) (= lambda!200261 lambda!200144))))

(declare-fun bs!1068113 () Bool)

(assert (= bs!1068113 (and b!4660726 b!4659642)))

(assert (=> bs!1068113 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200261 lambda!200143))))

(declare-fun bs!1068115 () Bool)

(assert (= bs!1068115 (and b!4660726 b!4660553)))

(assert (=> bs!1068115 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200261 lambda!200237))))

(declare-fun bs!1068117 () Bool)

(assert (= bs!1068117 (and b!4660726 b!4660615)))

(assert (=> bs!1068117 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200261 lambda!200245))))

(assert (=> b!4660726 true))

(declare-fun bs!1068120 () Bool)

(declare-fun b!4660723 () Bool)

(assert (= bs!1068120 (and b!4660723 b!4659995)))

(declare-fun lambda!200263 () Int)

(assert (=> bs!1068120 (= (= (toList!5233 lt!1821412) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200263 lambda!200182))))

(declare-fun bs!1068121 () Bool)

(assert (= bs!1068121 (and b!4660723 b!4660222)))

(assert (=> bs!1068121 (= lambda!200263 lambda!200197)))

(declare-fun bs!1068122 () Bool)

(assert (= bs!1068122 (and b!4660723 b!4660350)))

(assert (=> bs!1068122 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821404)) (= lambda!200263 lambda!200211))))

(declare-fun bs!1068123 () Bool)

(assert (= bs!1068123 (and b!4660723 b!4659596)))

(assert (=> bs!1068123 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821138)) (= lambda!200263 lambda!200132))))

(declare-fun bs!1068124 () Bool)

(assert (= bs!1068124 (and b!4660723 b!4660618)))

(assert (=> bs!1068124 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))) (= lambda!200263 lambda!200244))))

(declare-fun bs!1068125 () Bool)

(assert (= bs!1068125 (and b!4660723 b!4660555)))

(assert (=> bs!1068125 (= (= (toList!5233 lt!1821412) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200263 lambda!200235))))

(declare-fun bs!1068126 () Bool)

(assert (= bs!1068126 (and b!4660723 b!4660556)))

(assert (=> bs!1068126 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200263 lambda!200236))))

(declare-fun bs!1068127 () Bool)

(assert (= bs!1068127 (and b!4660723 b!4660414)))

(assert (=> bs!1068127 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 lt!1821404))) (= lambda!200263 lambda!200216))))

(declare-fun bs!1068128 () Bool)

(assert (= bs!1068128 (and b!4660723 b!4659641)))

(assert (=> bs!1068128 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 lt!1821138))) (= lambda!200263 lambda!200142))))

(declare-fun bs!1068129 () Bool)

(assert (= bs!1068129 (and b!4660723 b!4660415)))

(assert (=> bs!1068129 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200263 lambda!200217))))

(declare-fun bs!1068130 () Bool)

(assert (= bs!1068130 (and b!4660723 b!4660617)))

(assert (=> bs!1068130 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200263 lambda!200243))))

(declare-fun bs!1068131 () Bool)

(assert (= bs!1068131 (and b!4660723 b!4660412)))

(assert (=> bs!1068131 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821404)) (= lambda!200263 lambda!200218))))

(declare-fun bs!1068132 () Bool)

(assert (= bs!1068132 (and b!4660723 b!4660725)))

(assert (=> bs!1068132 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 lt!1821412))) (= lambda!200263 lambda!200259))))

(declare-fun bs!1068133 () Bool)

(assert (= bs!1068133 (and b!4660723 b!4659639)))

(assert (=> bs!1068133 (= (= (toList!5233 lt!1821412) (toList!5233 lt!1821138)) (= lambda!200263 lambda!200144))))

(declare-fun bs!1068134 () Bool)

(assert (= bs!1068134 (and b!4660723 b!4659642)))

(assert (=> bs!1068134 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138)))) (= lambda!200263 lambda!200143))))

(declare-fun bs!1068135 () Bool)

(assert (= bs!1068135 (and b!4660723 b!4660553)))

(assert (=> bs!1068135 (= (= (toList!5233 lt!1821412) (t!359168 (toList!5233 lt!1821138))) (= lambda!200263 lambda!200237))))

(declare-fun bs!1068136 () Bool)

(assert (= bs!1068136 (and b!4660723 b!4660726)))

(assert (=> bs!1068136 (= (= (toList!5233 lt!1821412) (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412)))) (= lambda!200263 lambda!200261))))

(declare-fun bs!1068137 () Bool)

(assert (= bs!1068137 (and b!4660723 b!4660615)))

(assert (=> bs!1068137 (= (= (toList!5233 lt!1821412) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200263 lambda!200245))))

(assert (=> b!4660723 true))

(declare-fun bs!1068138 () Bool)

(declare-fun b!4660724 () Bool)

(assert (= bs!1068138 (and b!4660724 b!4660616)))

(declare-fun lambda!200264 () Int)

(assert (=> bs!1068138 (= lambda!200264 lambda!200247)))

(declare-fun bs!1068139 () Bool)

(assert (= bs!1068139 (and b!4660724 b!4659996)))

(assert (=> bs!1068139 (= lambda!200264 lambda!200184)))

(declare-fun bs!1068140 () Bool)

(assert (= bs!1068140 (and b!4660724 b!4660223)))

(assert (=> bs!1068140 (= lambda!200264 lambda!200198)))

(declare-fun bs!1068141 () Bool)

(assert (= bs!1068141 (and b!4660724 b!4660554)))

(assert (=> bs!1068141 (= lambda!200264 lambda!200238)))

(declare-fun bs!1068142 () Bool)

(assert (= bs!1068142 (and b!4660724 b!4660351)))

(assert (=> bs!1068142 (= lambda!200264 lambda!200212)))

(declare-fun bs!1068143 () Bool)

(assert (= bs!1068143 (and b!4660724 b!4659597)))

(assert (=> bs!1068143 (= lambda!200264 lambda!200133)))

(declare-fun bs!1068144 () Bool)

(assert (= bs!1068144 (and b!4660724 b!4660413)))

(assert (=> bs!1068144 (= lambda!200264 lambda!200219)))

(declare-fun bs!1068145 () Bool)

(assert (= bs!1068145 (and b!4660724 b!4659640)))

(assert (=> bs!1068145 (= lambda!200264 lambda!200145)))

(declare-fun b!4660719 () Bool)

(declare-fun e!2908265 () Unit!118984)

(declare-fun Unit!119202 () Unit!118984)

(assert (=> b!4660719 (= e!2908265 Unit!119202)))

(declare-fun b!4660720 () Bool)

(declare-fun e!2908264 () Unit!118984)

(declare-fun Unit!119203 () Unit!118984)

(assert (=> b!4660720 (= e!2908264 Unit!119203)))

(declare-fun b!4660721 () Bool)

(declare-fun res!1960493 () Bool)

(declare-fun e!2908267 () Bool)

(assert (=> b!4660721 (=> (not res!1960493) (not e!2908267))))

(declare-fun lt!1822271 () List!52055)

(assert (=> b!4660721 (= res!1960493 (= (length!544 lt!1822271) (length!545 (toList!5233 lt!1821412))))))

(declare-fun b!4660722 () Bool)

(assert (=> b!4660722 false))

(declare-fun Unit!119204 () Unit!118984)

(assert (=> b!4660722 (= e!2908265 Unit!119204)))

(declare-fun res!1960495 () Bool)

(assert (=> b!4660723 (=> (not res!1960495) (not e!2908267))))

(assert (=> b!4660723 (= res!1960495 (forall!11052 lt!1822271 lambda!200263))))

(assert (=> b!4660724 (= e!2908267 (= (content!9016 lt!1822271) (content!9016 (map!11483 (toList!5233 lt!1821412) lambda!200264))))))

(declare-fun d!1480026 () Bool)

(assert (=> d!1480026 e!2908267))

(declare-fun res!1960494 () Bool)

(assert (=> d!1480026 (=> (not res!1960494) (not e!2908267))))

(assert (=> d!1480026 (= res!1960494 (noDuplicate!844 lt!1822271))))

(declare-fun e!2908266 () List!52055)

(assert (=> d!1480026 (= lt!1822271 e!2908266)))

(declare-fun c!797794 () Bool)

(assert (=> d!1480026 (= c!797794 ((_ is Cons!51928) (toList!5233 lt!1821412)))))

(assert (=> d!1480026 (invariantList!1306 (toList!5233 lt!1821412))))

(assert (=> d!1480026 (= (getKeysList!757 (toList!5233 lt!1821412)) lt!1822271)))

(declare-fun b!4660718 () Bool)

(assert (=> b!4660718 (= e!2908266 Nil!51931)))

(assert (=> b!4660725 false))

(declare-fun lt!1822273 () Unit!118984)

(assert (=> b!4660725 (= lt!1822273 (forallContained!3252 (getKeysList!757 (t!359168 (toList!5233 lt!1821412))) lambda!200259 (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun Unit!119205 () Unit!118984)

(assert (=> b!4660725 (= e!2908264 Unit!119205)))

(assert (=> b!4660726 (= e!2908266 (Cons!51931 (_1!29821 (h!58080 (toList!5233 lt!1821412))) (getKeysList!757 (t!359168 (toList!5233 lt!1821412)))))))

(declare-fun c!797796 () Bool)

(assert (=> b!4660726 (= c!797796 (containsKey!2750 (t!359168 (toList!5233 lt!1821412)) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun lt!1822272 () Unit!118984)

(assert (=> b!4660726 (= lt!1822272 e!2908265)))

(declare-fun c!797795 () Bool)

(assert (=> b!4660726 (= c!797795 (contains!15089 (getKeysList!757 (t!359168 (toList!5233 lt!1821412))) (_1!29821 (h!58080 (toList!5233 lt!1821412)))))))

(declare-fun lt!1822269 () Unit!118984)

(assert (=> b!4660726 (= lt!1822269 e!2908264)))

(declare-fun lt!1822270 () List!52055)

(assert (=> b!4660726 (= lt!1822270 (getKeysList!757 (t!359168 (toList!5233 lt!1821412))))))

(declare-fun lt!1822274 () Unit!118984)

(assert (=> b!4660726 (= lt!1822274 (lemmaForallContainsAddHeadPreserves!264 (t!359168 (toList!5233 lt!1821412)) lt!1822270 (h!58080 (toList!5233 lt!1821412))))))

(assert (=> b!4660726 (forall!11052 lt!1822270 lambda!200261)))

(declare-fun lt!1822275 () Unit!118984)

(assert (=> b!4660726 (= lt!1822275 lt!1822274)))

(assert (= (and d!1480026 c!797794) b!4660726))

(assert (= (and d!1480026 (not c!797794)) b!4660718))

(assert (= (and b!4660726 c!797796) b!4660722))

(assert (= (and b!4660726 (not c!797796)) b!4660719))

(assert (= (and b!4660726 c!797795) b!4660725))

(assert (= (and b!4660726 (not c!797795)) b!4660720))

(assert (= (and d!1480026 res!1960494) b!4660721))

(assert (= (and b!4660721 res!1960493) b!4660723))

(assert (= (and b!4660723 res!1960495) b!4660724))

(declare-fun m!5543785 () Bool)

(assert (=> b!4660724 m!5543785))

(declare-fun m!5543787 () Bool)

(assert (=> b!4660724 m!5543787))

(assert (=> b!4660724 m!5543787))

(declare-fun m!5543789 () Bool)

(assert (=> b!4660724 m!5543789))

(declare-fun m!5543791 () Bool)

(assert (=> b!4660725 m!5543791))

(assert (=> b!4660725 m!5543791))

(declare-fun m!5543793 () Bool)

(assert (=> b!4660725 m!5543793))

(declare-fun m!5543795 () Bool)

(assert (=> b!4660723 m!5543795))

(assert (=> b!4660726 m!5543791))

(declare-fun m!5543797 () Bool)

(assert (=> b!4660726 m!5543797))

(declare-fun m!5543799 () Bool)

(assert (=> b!4660726 m!5543799))

(declare-fun m!5543801 () Bool)

(assert (=> b!4660726 m!5543801))

(assert (=> b!4660726 m!5543791))

(declare-fun m!5543803 () Bool)

(assert (=> b!4660726 m!5543803))

(declare-fun m!5543805 () Bool)

(assert (=> d!1480026 m!5543805))

(assert (=> d!1480026 m!5542823))

(declare-fun m!5543807 () Bool)

(assert (=> b!4660721 m!5543807))

(assert (=> b!4660721 m!5542647))

(assert (=> b!4659717 d!1480026))

(declare-fun d!1480034 () Bool)

(declare-fun res!1960500 () Bool)

(declare-fun e!2908272 () Bool)

(assert (=> d!1480034 (=> res!1960500 e!2908272)))

(assert (=> d!1480034 (= res!1960500 ((_ is Nil!51929) (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143)))))))

(assert (=> d!1480034 (= (forall!11048 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))) lambda!200085) e!2908272)))

(declare-fun b!4660731 () Bool)

(declare-fun e!2908273 () Bool)

(assert (=> b!4660731 (= e!2908272 e!2908273)))

(declare-fun res!1960501 () Bool)

(assert (=> b!4660731 (=> (not res!1960501) (not e!2908273))))

(assert (=> b!4660731 (= res!1960501 (dynLambda!21606 lambda!200085 (h!58081 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))))))))

(declare-fun b!4660732 () Bool)

(assert (=> b!4660732 (= e!2908273 (forall!11048 (t!359169 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143)))) lambda!200085))))

(assert (= (and d!1480034 (not res!1960500)) b!4660731))

(assert (= (and b!4660731 res!1960501) b!4660732))

(declare-fun b_lambda!174997 () Bool)

(assert (=> (not b_lambda!174997) (not b!4660731)))

(declare-fun m!5543809 () Bool)

(assert (=> b!4660731 m!5543809))

(declare-fun m!5543811 () Bool)

(assert (=> b!4660732 m!5543811))

(assert (=> b!4659812 d!1480034))

(declare-fun d!1480036 () Bool)

(assert (=> d!1480036 (= (invariantList!1306 (toList!5233 lt!1821682)) (noDuplicatedKeys!358 (toList!5233 lt!1821682)))))

(declare-fun bs!1068164 () Bool)

(assert (= bs!1068164 d!1480036))

(declare-fun m!5543813 () Bool)

(assert (=> bs!1068164 m!5543813))

(assert (=> d!1479134 d!1480036))

(declare-fun d!1480038 () Bool)

(declare-fun res!1960502 () Bool)

(declare-fun e!2908274 () Bool)

(assert (=> d!1480038 (=> res!1960502 e!2908274)))

(assert (=> d!1480038 (= res!1960502 ((_ is Nil!51929) (t!359169 lt!1821144)))))

(assert (=> d!1480038 (= (forall!11048 (t!359169 lt!1821144) lambda!200150) e!2908274)))

(declare-fun b!4660733 () Bool)

(declare-fun e!2908275 () Bool)

(assert (=> b!4660733 (= e!2908274 e!2908275)))

(declare-fun res!1960503 () Bool)

(assert (=> b!4660733 (=> (not res!1960503) (not e!2908275))))

(assert (=> b!4660733 (= res!1960503 (dynLambda!21606 lambda!200150 (h!58081 (t!359169 lt!1821144))))))

(declare-fun b!4660734 () Bool)

(assert (=> b!4660734 (= e!2908275 (forall!11048 (t!359169 (t!359169 lt!1821144)) lambda!200150))))

(assert (= (and d!1480038 (not res!1960502)) b!4660733))

(assert (= (and b!4660733 res!1960503) b!4660734))

(declare-fun b_lambda!174999 () Bool)

(assert (=> (not b_lambda!174999) (not b!4660733)))

(declare-fun m!5543815 () Bool)

(assert (=> b!4660733 m!5543815))

(declare-fun m!5543817 () Bool)

(assert (=> b!4660734 m!5543817))

(assert (=> d!1479134 d!1480038))

(assert (=> b!4659796 d!1479250))

(declare-fun bs!1068178 () Bool)

(declare-fun d!1480040 () Bool)

(assert (= bs!1068178 (and d!1480040 b!4659995)))

(declare-fun lambda!200268 () Int)

(assert (=> bs!1068178 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200268 lambda!200182))))

(declare-fun bs!1068179 () Bool)

(assert (= bs!1068179 (and d!1480040 b!4660222)))

(assert (=> bs!1068179 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821412)) (= lambda!200268 lambda!200197))))

(declare-fun bs!1068180 () Bool)

(assert (= bs!1068180 (and d!1480040 b!4660350)))

(assert (=> bs!1068180 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821404)) (= lambda!200268 lambda!200211))))

(declare-fun bs!1068181 () Bool)

(assert (= bs!1068181 (and d!1480040 b!4659596)))

(assert (=> bs!1068181 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821138)) (= lambda!200268 lambda!200132))))

(declare-fun bs!1068182 () Bool)

(assert (= bs!1068182 (and d!1480040 b!4660618)))

(assert (=> bs!1068182 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))))) (= lambda!200268 lambda!200244))))

(declare-fun bs!1068183 () Bool)

(assert (= bs!1068183 (and d!1480040 b!4660555)))

(assert (=> bs!1068183 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138)))) (= lambda!200268 lambda!200235))))

(declare-fun bs!1068184 () Bool)

(assert (= bs!1068184 (and d!1480040 b!4660556)))

(assert (=> bs!1068184 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (t!359168 (toList!5233 lt!1821138))) (t!359168 (t!359168 (toList!5233 lt!1821138))))) (= lambda!200268 lambda!200236))))

(declare-fun bs!1068185 () Bool)

(assert (= bs!1068185 (and d!1480040 b!4660414)))

(assert (=> bs!1068185 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821404))) (= lambda!200268 lambda!200216))))

(declare-fun bs!1068186 () Bool)

(assert (= bs!1068186 (and d!1480040 b!4659641)))

(assert (=> bs!1068186 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200268 lambda!200142))))

(declare-fun bs!1068187 () Bool)

(assert (= bs!1068187 (and d!1480040 b!4660415)))

(assert (=> bs!1068187 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (toList!5233 lt!1821404)) (t!359168 (toList!5233 lt!1821404)))) (= lambda!200268 lambda!200217))))

(declare-fun bs!1068188 () Bool)

(assert (= bs!1068188 (and d!1480040 b!4660617)))

(assert (=> bs!1068188 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 (extractMap!1708 (toList!5234 lt!1821147))))) (= lambda!200268 lambda!200243))))

(declare-fun bs!1068189 () Bool)

(assert (= bs!1068189 (and d!1480040 b!4660412)))

(assert (=> bs!1068189 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821404)) (= lambda!200268 lambda!200218))))

(declare-fun bs!1068190 () Bool)

(assert (= bs!1068190 (and d!1480040 b!4660725)))

(assert (=> bs!1068190 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821412))) (= lambda!200268 lambda!200259))))

(declare-fun bs!1068191 () Bool)

(assert (= bs!1068191 (and d!1480040 b!4660723)))

(assert (=> bs!1068191 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821412)) (= lambda!200268 lambda!200263))))

(declare-fun bs!1068192 () Bool)

(assert (= bs!1068192 (and d!1480040 b!4659639)))

(assert (=> bs!1068192 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 lt!1821138)) (= lambda!200268 lambda!200144))))

(declare-fun bs!1068193 () Bool)

(assert (= bs!1068193 (and d!1480040 b!4659642)))

(assert (=> bs!1068193 (= lambda!200268 lambda!200143)))

(declare-fun bs!1068194 () Bool)

(assert (= bs!1068194 (and d!1480040 b!4660553)))

(assert (=> bs!1068194 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (t!359168 (toList!5233 lt!1821138))) (= lambda!200268 lambda!200237))))

(declare-fun bs!1068195 () Bool)

(assert (= bs!1068195 (and d!1480040 b!4660726)))

(assert (=> bs!1068195 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (Cons!51928 (h!58080 (toList!5233 lt!1821412)) (t!359168 (toList!5233 lt!1821412)))) (= lambda!200268 lambda!200261))))

(declare-fun bs!1068196 () Bool)

(assert (= bs!1068196 (and d!1480040 b!4660615)))

(assert (=> bs!1068196 (= (= (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (toList!5233 (extractMap!1708 (toList!5234 lt!1821147)))) (= lambda!200268 lambda!200245))))

(assert (=> d!1480040 true))

(assert (=> d!1480040 true))

(assert (=> d!1480040 (forall!11052 lt!1821652 lambda!200268)))

(declare-fun lt!1822281 () Unit!118984)

(declare-fun choose!32105 (List!52052 List!52055 tuple2!53054) Unit!118984)

(assert (=> d!1480040 (= lt!1822281 (choose!32105 (t!359168 (toList!5233 lt!1821138)) lt!1821652 (h!58080 (toList!5233 lt!1821138))))))

(assert (=> d!1480040 (invariantList!1306 (t!359168 (toList!5233 lt!1821138)))))

(assert (=> d!1480040 (= (lemmaForallContainsAddHeadPreserves!264 (t!359168 (toList!5233 lt!1821138)) lt!1821652 (h!58080 (toList!5233 lt!1821138))) lt!1822281)))

(declare-fun bs!1068197 () Bool)

(assert (= bs!1068197 d!1480040))

(declare-fun m!5543853 () Bool)

(assert (=> bs!1068197 m!5543853))

(declare-fun m!5543855 () Bool)

(assert (=> bs!1068197 m!5543855))

(assert (=> bs!1068197 m!5543439))

(assert (=> b!4659642 d!1480040))

(declare-fun d!1480058 () Bool)

(declare-fun res!1960510 () Bool)

(declare-fun e!2908289 () Bool)

(assert (=> d!1480058 (=> res!1960510 e!2908289)))

(assert (=> d!1480058 (= res!1960510 (and ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))) (= (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138)))) (_1!29821 (h!58080 (toList!5233 lt!1821138))))))))

(assert (=> d!1480058 (= (containsKey!2750 (t!359168 (toList!5233 lt!1821138)) (_1!29821 (h!58080 (toList!5233 lt!1821138)))) e!2908289)))

(declare-fun b!4660757 () Bool)

(declare-fun e!2908290 () Bool)

(assert (=> b!4660757 (= e!2908289 e!2908290)))

(declare-fun res!1960511 () Bool)

(assert (=> b!4660757 (=> (not res!1960511) (not e!2908290))))

(assert (=> b!4660757 (= res!1960511 ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))))))

(declare-fun b!4660758 () Bool)

(assert (=> b!4660758 (= e!2908290 (containsKey!2750 (t!359168 (t!359168 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(assert (= (and d!1480058 (not res!1960510)) b!4660757))

(assert (= (and b!4660757 res!1960511) b!4660758))

(declare-fun m!5543859 () Bool)

(assert (=> b!4660758 m!5543859))

(assert (=> b!4659642 d!1480058))

(declare-fun d!1480062 () Bool)

(declare-fun res!1960512 () Bool)

(declare-fun e!2908293 () Bool)

(assert (=> d!1480062 (=> res!1960512 e!2908293)))

(assert (=> d!1480062 (= res!1960512 ((_ is Nil!51931) lt!1821652))))

(assert (=> d!1480062 (= (forall!11052 lt!1821652 lambda!200143) e!2908293)))

(declare-fun b!4660763 () Bool)

(declare-fun e!2908294 () Bool)

(assert (=> b!4660763 (= e!2908293 e!2908294)))

(declare-fun res!1960513 () Bool)

(assert (=> b!4660763 (=> (not res!1960513) (not e!2908294))))

(assert (=> b!4660763 (= res!1960513 (dynLambda!21612 lambda!200143 (h!58085 lt!1821652)))))

(declare-fun b!4660764 () Bool)

(assert (=> b!4660764 (= e!2908294 (forall!11052 (t!359171 lt!1821652) lambda!200143))))

(assert (= (and d!1480062 (not res!1960512)) b!4660763))

(assert (= (and b!4660763 res!1960513) b!4660764))

(declare-fun b_lambda!175007 () Bool)

(assert (=> (not b_lambda!175007) (not b!4660763)))

(declare-fun m!5543861 () Bool)

(assert (=> b!4660763 m!5543861))

(declare-fun m!5543863 () Bool)

(assert (=> b!4660764 m!5543863))

(assert (=> b!4659642 d!1480062))

(declare-fun d!1480064 () Bool)

(declare-fun lt!1822284 () Bool)

(assert (=> d!1480064 (= lt!1822284 (select (content!9016 (getKeysList!757 (t!359168 (toList!5233 lt!1821138)))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun e!2908296 () Bool)

(assert (=> d!1480064 (= lt!1822284 e!2908296)))

(declare-fun res!1960515 () Bool)

(assert (=> d!1480064 (=> (not res!1960515) (not e!2908296))))

(assert (=> d!1480064 (= res!1960515 ((_ is Cons!51931) (getKeysList!757 (t!359168 (toList!5233 lt!1821138)))))))

(assert (=> d!1480064 (= (contains!15089 (getKeysList!757 (t!359168 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))) lt!1822284)))

(declare-fun b!4660765 () Bool)

(declare-fun e!2908295 () Bool)

(assert (=> b!4660765 (= e!2908296 e!2908295)))

(declare-fun res!1960514 () Bool)

(assert (=> b!4660765 (=> res!1960514 e!2908295)))

(assert (=> b!4660765 (= res!1960514 (= (h!58085 (getKeysList!757 (t!359168 (toList!5233 lt!1821138)))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(declare-fun b!4660766 () Bool)

(assert (=> b!4660766 (= e!2908295 (contains!15089 (t!359171 (getKeysList!757 (t!359168 (toList!5233 lt!1821138)))) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(assert (= (and d!1480064 res!1960515) b!4660765))

(assert (= (and b!4660765 (not res!1960514)) b!4660766))

(assert (=> d!1480064 m!5541405))

(declare-fun m!5543869 () Bool)

(assert (=> d!1480064 m!5543869))

(declare-fun m!5543871 () Bool)

(assert (=> d!1480064 m!5543871))

(declare-fun m!5543875 () Bool)

(assert (=> b!4660766 m!5543875))

(assert (=> b!4659642 d!1480064))

(assert (=> b!4659642 d!1479910))

(declare-fun d!1480070 () Bool)

(declare-fun res!1960518 () Bool)

(declare-fun e!2908299 () Bool)

(assert (=> d!1480070 (=> res!1960518 e!2908299)))

(assert (=> d!1480070 (= res!1960518 (or ((_ is Nil!51928) (toList!5233 lt!1821446)) ((_ is Nil!51928) (t!359168 (toList!5233 lt!1821446)))))))

(assert (=> d!1480070 (= (noDuplicatedKeys!358 (toList!5233 lt!1821446)) e!2908299)))

(declare-fun b!4660769 () Bool)

(declare-fun e!2908300 () Bool)

(assert (=> b!4660769 (= e!2908299 e!2908300)))

(declare-fun res!1960519 () Bool)

(assert (=> b!4660769 (=> (not res!1960519) (not e!2908300))))

(assert (=> b!4660769 (= res!1960519 (not (containsKey!2750 (t!359168 (toList!5233 lt!1821446)) (_1!29821 (h!58080 (toList!5233 lt!1821446))))))))

(declare-fun b!4660770 () Bool)

(assert (=> b!4660770 (= e!2908300 (noDuplicatedKeys!358 (t!359168 (toList!5233 lt!1821446))))))

(assert (= (and d!1480070 (not res!1960518)) b!4660769))

(assert (= (and b!4660769 res!1960519) b!4660770))

(declare-fun m!5543879 () Bool)

(assert (=> b!4660769 m!5543879))

(declare-fun m!5543881 () Bool)

(assert (=> b!4660770 m!5543881))

(assert (=> d!1479140 d!1480070))

(declare-fun d!1480072 () Bool)

(assert (=> d!1480072 (= (isDefined!9109 lt!1821758) (not (isEmpty!29021 lt!1821758)))))

(declare-fun bs!1068198 () Bool)

(assert (= bs!1068198 d!1480072))

(assert (=> bs!1068198 m!5541705))

(assert (=> b!4659773 d!1480072))

(declare-fun b!4660771 () Bool)

(declare-fun e!2908306 () List!52055)

(assert (=> b!4660771 (= e!2908306 (keys!18406 lt!1821404))))

(declare-fun bm!325613 () Bool)

(declare-fun call!325618 () Bool)

(assert (=> bm!325613 (= call!325618 (contains!15089 e!2908306 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun c!797806 () Bool)

(declare-fun c!797808 () Bool)

(assert (=> bm!325613 (= c!797806 c!797808)))

(declare-fun b!4660772 () Bool)

(assert (=> b!4660772 false))

(declare-fun lt!1822288 () Unit!118984)

(declare-fun lt!1822289 () Unit!118984)

(assert (=> b!4660772 (= lt!1822288 lt!1822289)))

(assert (=> b!4660772 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))

(assert (=> b!4660772 (= lt!1822289 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun e!2908305 () Unit!118984)

(declare-fun Unit!119206 () Unit!118984)

(assert (=> b!4660772 (= e!2908305 Unit!119206)))

(declare-fun d!1480074 () Bool)

(declare-fun e!2908304 () Bool)

(assert (=> d!1480074 e!2908304))

(declare-fun res!1960520 () Bool)

(assert (=> d!1480074 (=> res!1960520 e!2908304)))

(declare-fun e!2908302 () Bool)

(assert (=> d!1480074 (= res!1960520 e!2908302)))

(declare-fun res!1960521 () Bool)

(assert (=> d!1480074 (=> (not res!1960521) (not e!2908302))))

(declare-fun lt!1822286 () Bool)

(assert (=> d!1480074 (= res!1960521 (not lt!1822286))))

(declare-fun lt!1822290 () Bool)

(assert (=> d!1480074 (= lt!1822286 lt!1822290)))

(declare-fun lt!1822291 () Unit!118984)

(declare-fun e!2908301 () Unit!118984)

(assert (=> d!1480074 (= lt!1822291 e!2908301)))

(assert (=> d!1480074 (= c!797808 lt!1822290)))

(assert (=> d!1480074 (= lt!1822290 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> d!1480074 (= (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 lt!1821141)))) lt!1822286)))

(declare-fun b!4660773 () Bool)

(declare-fun Unit!119207 () Unit!118984)

(assert (=> b!4660773 (= e!2908305 Unit!119207)))

(declare-fun b!4660774 () Bool)

(assert (=> b!4660774 (= e!2908306 (getKeysList!757 (toList!5233 lt!1821404)))))

(declare-fun b!4660775 () Bool)

(declare-fun e!2908303 () Bool)

(assert (=> b!4660775 (= e!2908304 e!2908303)))

(declare-fun res!1960522 () Bool)

(assert (=> b!4660775 (=> (not res!1960522) (not e!2908303))))

(assert (=> b!4660775 (= res!1960522 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(declare-fun b!4660776 () Bool)

(assert (=> b!4660776 (= e!2908303 (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun b!4660777 () Bool)

(assert (=> b!4660777 (= e!2908301 e!2908305)))

(declare-fun c!797807 () Bool)

(assert (=> b!4660777 (= c!797807 call!325618)))

(declare-fun b!4660778 () Bool)

(declare-fun lt!1822285 () Unit!118984)

(assert (=> b!4660778 (= e!2908301 lt!1822285)))

(declare-fun lt!1822287 () Unit!118984)

(assert (=> b!4660778 (= lt!1822287 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660778 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun lt!1822292 () Unit!118984)

(assert (=> b!4660778 (= lt!1822292 lt!1822287)))

(assert (=> b!4660778 (= lt!1822285 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660778 call!325618))

(declare-fun b!4660779 () Bool)

(assert (=> b!4660779 (= e!2908302 (not (contains!15089 (keys!18406 lt!1821404) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))))

(assert (= (and d!1480074 c!797808) b!4660778))

(assert (= (and d!1480074 (not c!797808)) b!4660777))

(assert (= (and b!4660777 c!797807) b!4660772))

(assert (= (and b!4660777 (not c!797807)) b!4660773))

(assert (= (or b!4660778 b!4660777) bm!325613))

(assert (= (and bm!325613 c!797806) b!4660774))

(assert (= (and bm!325613 (not c!797806)) b!4660771))

(assert (= (and d!1480074 res!1960521) b!4660779))

(assert (= (and d!1480074 (not res!1960520)) b!4660775))

(assert (= (and b!4660775 res!1960522) b!4660776))

(declare-fun m!5543883 () Bool)

(assert (=> d!1480074 m!5543883))

(assert (=> b!4660772 m!5543883))

(declare-fun m!5543885 () Bool)

(assert (=> b!4660772 m!5543885))

(assert (=> b!4660779 m!5541553))

(assert (=> b!4660779 m!5541553))

(declare-fun m!5543887 () Bool)

(assert (=> b!4660779 m!5543887))

(assert (=> b!4660774 m!5541557))

(assert (=> b!4660771 m!5541553))

(declare-fun m!5543889 () Bool)

(assert (=> b!4660778 m!5543889))

(declare-fun m!5543891 () Bool)

(assert (=> b!4660778 m!5543891))

(assert (=> b!4660778 m!5543891))

(declare-fun m!5543893 () Bool)

(assert (=> b!4660778 m!5543893))

(declare-fun m!5543895 () Bool)

(assert (=> b!4660778 m!5543895))

(assert (=> b!4660776 m!5541553))

(assert (=> b!4660776 m!5541553))

(assert (=> b!4660776 m!5543887))

(assert (=> b!4660775 m!5543891))

(assert (=> b!4660775 m!5543891))

(assert (=> b!4660775 m!5543893))

(declare-fun m!5543899 () Bool)

(assert (=> bm!325613 m!5543899))

(assert (=> bs!1066955 d!1480074))

(declare-fun d!1480082 () Bool)

(declare-fun res!1960528 () Bool)

(declare-fun e!2908311 () Bool)

(assert (=> d!1480082 (=> res!1960528 e!2908311)))

(assert (=> d!1480082 (= res!1960528 (and ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))) (= (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821138)))) key!4968)))))

(assert (=> d!1480082 (= (containsKey!2750 (t!359168 (toList!5233 lt!1821138)) key!4968) e!2908311)))

(declare-fun b!4660782 () Bool)

(declare-fun e!2908312 () Bool)

(assert (=> b!4660782 (= e!2908311 e!2908312)))

(declare-fun res!1960529 () Bool)

(assert (=> b!4660782 (=> (not res!1960529) (not e!2908312))))

(assert (=> b!4660782 (= res!1960529 ((_ is Cons!51928) (t!359168 (toList!5233 lt!1821138))))))

(declare-fun b!4660783 () Bool)

(assert (=> b!4660783 (= e!2908312 (containsKey!2750 (t!359168 (t!359168 (toList!5233 lt!1821138))) key!4968))))

(assert (= (and d!1480082 (not res!1960528)) b!4660782))

(assert (= (and b!4660782 res!1960529) b!4660783))

(declare-fun m!5543901 () Bool)

(assert (=> b!4660783 m!5543901))

(assert (=> b!4659611 d!1480082))

(declare-fun d!1480084 () Bool)

(declare-fun lt!1822301 () Bool)

(assert (=> d!1480084 (= lt!1822301 (select (content!9016 e!2907408) key!4968))))

(declare-fun e!2908318 () Bool)

(assert (=> d!1480084 (= lt!1822301 e!2908318)))

(declare-fun res!1960534 () Bool)

(assert (=> d!1480084 (=> (not res!1960534) (not e!2908318))))

(assert (=> d!1480084 (= res!1960534 ((_ is Cons!51931) e!2907408))))

(assert (=> d!1480084 (= (contains!15089 e!2907408 key!4968) lt!1822301)))

(declare-fun b!4660793 () Bool)

(declare-fun e!2908317 () Bool)

(assert (=> b!4660793 (= e!2908318 e!2908317)))

(declare-fun res!1960533 () Bool)

(assert (=> b!4660793 (=> res!1960533 e!2908317)))

(assert (=> b!4660793 (= res!1960533 (= (h!58085 e!2907408) key!4968))))

(declare-fun b!4660794 () Bool)

(assert (=> b!4660794 (= e!2908317 (contains!15089 (t!359171 e!2907408) key!4968))))

(assert (= (and d!1480084 res!1960534) b!4660793))

(assert (= (and b!4660793 (not res!1960533)) b!4660794))

(declare-fun m!5543903 () Bool)

(assert (=> d!1480084 m!5543903))

(declare-fun m!5543905 () Bool)

(assert (=> d!1480084 m!5543905))

(declare-fun m!5543907 () Bool)

(assert (=> b!4660794 m!5543907))

(assert (=> bm!325554 d!1480084))

(declare-fun d!1480086 () Bool)

(declare-fun res!1960535 () Bool)

(declare-fun e!2908319 () Bool)

(assert (=> d!1480086 (=> res!1960535 e!2908319)))

(assert (=> d!1480086 (= res!1960535 (not ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224)))))))

(assert (=> d!1480086 (= (noDuplicateKeys!1652 (t!359168 (t!359168 newBucket!224))) e!2908319)))

(declare-fun b!4660795 () Bool)

(declare-fun e!2908320 () Bool)

(assert (=> b!4660795 (= e!2908319 e!2908320)))

(declare-fun res!1960536 () Bool)

(assert (=> b!4660795 (=> (not res!1960536) (not e!2908320))))

(assert (=> b!4660795 (= res!1960536 (not (containsKey!2746 (t!359168 (t!359168 (t!359168 newBucket!224))) (_1!29821 (h!58080 (t!359168 (t!359168 newBucket!224)))))))))

(declare-fun b!4660796 () Bool)

(assert (=> b!4660796 (= e!2908320 (noDuplicateKeys!1652 (t!359168 (t!359168 (t!359168 newBucket!224)))))))

(assert (= (and d!1480086 (not res!1960535)) b!4660795))

(assert (= (and b!4660795 res!1960536) b!4660796))

(declare-fun m!5543909 () Bool)

(assert (=> b!4660795 m!5543909))

(declare-fun m!5543911 () Bool)

(assert (=> b!4660796 m!5543911))

(assert (=> b!4659679 d!1480086))

(declare-fun lt!1822302 () Bool)

(declare-fun d!1480088 () Bool)

(assert (=> d!1480088 (= lt!1822302 (select (content!9017 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (get!17289 lt!1821746)))))

(declare-fun e!2908322 () Bool)

(assert (=> d!1480088 (= lt!1822302 e!2908322)))

(declare-fun res!1960537 () Bool)

(assert (=> d!1480088 (=> (not res!1960537) (not e!2908322))))

(assert (=> d!1480088 (= res!1960537 ((_ is Cons!51928) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(assert (=> d!1480088 (= (contains!15088 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)) (get!17289 lt!1821746)) lt!1822302)))

(declare-fun b!4660797 () Bool)

(declare-fun e!2908321 () Bool)

(assert (=> b!4660797 (= e!2908322 e!2908321)))

(declare-fun res!1960538 () Bool)

(assert (=> b!4660797 (=> res!1960538 e!2908321)))

(assert (=> b!4660797 (= res!1960538 (= (h!58080 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (get!17289 lt!1821746)))))

(declare-fun b!4660798 () Bool)

(assert (=> b!4660798 (= e!2908321 (contains!15088 (t!359168 (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))) (get!17289 lt!1821746)))))

(assert (= (and d!1480088 res!1960537) b!4660797))

(assert (= (and b!4660797 (not res!1960538)) b!4660798))

(assert (=> d!1480088 m!5540595))

(declare-fun m!5543923 () Bool)

(assert (=> d!1480088 m!5543923))

(assert (=> d!1480088 m!5541651))

(declare-fun m!5543927 () Bool)

(assert (=> d!1480088 m!5543927))

(assert (=> b!4660798 m!5541651))

(declare-fun m!5543931 () Bool)

(assert (=> b!4660798 m!5543931))

(assert (=> b!4659742 d!1480088))

(assert (=> b!4659742 d!1479696))

(declare-fun d!1480090 () Bool)

(declare-fun res!1960539 () Bool)

(declare-fun e!2908323 () Bool)

(assert (=> d!1480090 (=> res!1960539 e!2908323)))

(assert (=> d!1480090 (= res!1960539 ((_ is Nil!51929) (t!359169 lt!1821144)))))

(assert (=> d!1480090 (= (forall!11048 (t!359169 lt!1821144) lambda!199980) e!2908323)))

(declare-fun b!4660799 () Bool)

(declare-fun e!2908324 () Bool)

(assert (=> b!4660799 (= e!2908323 e!2908324)))

(declare-fun res!1960540 () Bool)

(assert (=> b!4660799 (=> (not res!1960540) (not e!2908324))))

(assert (=> b!4660799 (= res!1960540 (dynLambda!21606 lambda!199980 (h!58081 (t!359169 lt!1821144))))))

(declare-fun b!4660800 () Bool)

(assert (=> b!4660800 (= e!2908324 (forall!11048 (t!359169 (t!359169 lt!1821144)) lambda!199980))))

(assert (= (and d!1480090 (not res!1960539)) b!4660799))

(assert (= (and b!4660799 res!1960540) b!4660800))

(declare-fun b_lambda!175009 () Bool)

(assert (=> (not b_lambda!175009) (not b!4660799)))

(declare-fun m!5543937 () Bool)

(assert (=> b!4660799 m!5543937))

(declare-fun m!5543939 () Bool)

(assert (=> b!4660800 m!5543939))

(assert (=> b!4659808 d!1480090))

(assert (=> d!1479104 d!1479102))

(declare-fun d!1480096 () Bool)

(assert (=> d!1480096 (containsKey!2750 (toList!5233 lt!1821138) key!4968)))

(assert (=> d!1480096 true))

(declare-fun _$15!831 () Unit!118984)

(assert (=> d!1480096 (= (choose!32090 (toList!5233 lt!1821138) key!4968) _$15!831)))

(declare-fun bs!1068205 () Bool)

(assert (= bs!1068205 d!1480096))

(assert (=> bs!1068205 m!5540797))

(assert (=> d!1479104 d!1480096))

(assert (=> d!1479104 d!1479636))

(assert (=> b!4659561 d!1479820))

(assert (=> b!4659561 d!1479822))

(assert (=> b!4659714 d!1479610))

(declare-fun d!1480100 () Bool)

(declare-fun lt!1822305 () Bool)

(assert (=> d!1480100 (= lt!1822305 (select (content!9013 (t!359169 (t!359169 lt!1821144))) lt!1821146))))

(declare-fun e!2908326 () Bool)

(assert (=> d!1480100 (= lt!1822305 e!2908326)))

(declare-fun res!1960542 () Bool)

(assert (=> d!1480100 (=> (not res!1960542) (not e!2908326))))

(assert (=> d!1480100 (= res!1960542 ((_ is Cons!51929) (t!359169 (t!359169 lt!1821144))))))

(assert (=> d!1480100 (= (contains!15084 (t!359169 (t!359169 lt!1821144)) lt!1821146) lt!1822305)))

(declare-fun b!4660801 () Bool)

(declare-fun e!2908325 () Bool)

(assert (=> b!4660801 (= e!2908326 e!2908325)))

(declare-fun res!1960541 () Bool)

(assert (=> b!4660801 (=> res!1960541 e!2908325)))

(assert (=> b!4660801 (= res!1960541 (= (h!58081 (t!359169 (t!359169 lt!1821144))) lt!1821146))))

(declare-fun b!4660802 () Bool)

(assert (=> b!4660802 (= e!2908325 (contains!15084 (t!359169 (t!359169 (t!359169 lt!1821144))) lt!1821146))))

(assert (= (and d!1480100 res!1960542) b!4660801))

(assert (= (and b!4660801 (not res!1960541)) b!4660802))

(assert (=> d!1480100 m!5543023))

(declare-fun m!5543945 () Bool)

(assert (=> d!1480100 m!5543945))

(declare-fun m!5543947 () Bool)

(assert (=> b!4660802 m!5543947))

(assert (=> b!4659738 d!1480100))

(declare-fun d!1480102 () Bool)

(declare-fun res!1960543 () Bool)

(declare-fun e!2908327 () Bool)

(assert (=> d!1480102 (=> res!1960543 e!2908327)))

(assert (=> d!1480102 (= res!1960543 (not ((_ is Cons!51928) (t!359168 (_2!29822 lt!1821146)))))))

(assert (=> d!1480102 (= (noDuplicateKeys!1652 (t!359168 (_2!29822 lt!1821146))) e!2908327)))

(declare-fun b!4660803 () Bool)

(declare-fun e!2908328 () Bool)

(assert (=> b!4660803 (= e!2908327 e!2908328)))

(declare-fun res!1960544 () Bool)

(assert (=> b!4660803 (=> (not res!1960544) (not e!2908328))))

(assert (=> b!4660803 (= res!1960544 (not (containsKey!2746 (t!359168 (t!359168 (_2!29822 lt!1821146))) (_1!29821 (h!58080 (t!359168 (_2!29822 lt!1821146)))))))))

(declare-fun b!4660804 () Bool)

(assert (=> b!4660804 (= e!2908328 (noDuplicateKeys!1652 (t!359168 (t!359168 (_2!29822 lt!1821146)))))))

(assert (= (and d!1480102 (not res!1960543)) b!4660803))

(assert (= (and b!4660803 res!1960544) b!4660804))

(declare-fun m!5543949 () Bool)

(assert (=> b!4660803 m!5543949))

(declare-fun m!5543951 () Bool)

(assert (=> b!4660804 m!5543951))

(assert (=> b!4659613 d!1480102))

(assert (=> d!1479092 d!1479090))

(declare-fun b!4660805 () Bool)

(declare-fun e!2908334 () List!52055)

(assert (=> b!4660805 (= e!2908334 (keys!18406 lt!1821734))))

(declare-fun bm!325615 () Bool)

(declare-fun call!325620 () Bool)

(assert (=> bm!325615 (= call!325620 (contains!15089 e!2908334 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun c!797812 () Bool)

(declare-fun c!797814 () Bool)

(assert (=> bm!325615 (= c!797812 c!797814)))

(declare-fun b!4660806 () Bool)

(assert (=> b!4660806 false))

(declare-fun lt!1822309 () Unit!118984)

(declare-fun lt!1822310 () Unit!118984)

(assert (=> b!4660806 (= lt!1822309 lt!1822310)))

(assert (=> b!4660806 (containsKey!2750 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))

(assert (=> b!4660806 (= lt!1822310 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun e!2908333 () Unit!118984)

(declare-fun Unit!119208 () Unit!118984)

(assert (=> b!4660806 (= e!2908333 Unit!119208)))

(declare-fun d!1480104 () Bool)

(declare-fun e!2908332 () Bool)

(assert (=> d!1480104 e!2908332))

(declare-fun res!1960545 () Bool)

(assert (=> d!1480104 (=> res!1960545 e!2908332)))

(declare-fun e!2908330 () Bool)

(assert (=> d!1480104 (= res!1960545 e!2908330)))

(declare-fun res!1960546 () Bool)

(assert (=> d!1480104 (=> (not res!1960546) (not e!2908330))))

(declare-fun lt!1822307 () Bool)

(assert (=> d!1480104 (= res!1960546 (not lt!1822307))))

(declare-fun lt!1822311 () Bool)

(assert (=> d!1480104 (= lt!1822307 lt!1822311)))

(declare-fun lt!1822312 () Unit!118984)

(declare-fun e!2908329 () Unit!118984)

(assert (=> d!1480104 (= lt!1822312 e!2908329)))

(assert (=> d!1480104 (= c!797814 lt!1822311)))

(assert (=> d!1480104 (= lt!1822311 (containsKey!2750 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480104 (= (contains!15083 lt!1821734 (_1!29821 (h!58080 (t!359168 oldBucket!40)))) lt!1822307)))

(declare-fun b!4660807 () Bool)

(declare-fun Unit!119209 () Unit!118984)

(assert (=> b!4660807 (= e!2908333 Unit!119209)))

(declare-fun b!4660808 () Bool)

(assert (=> b!4660808 (= e!2908334 (getKeysList!757 (toList!5233 lt!1821734)))))

(declare-fun b!4660809 () Bool)

(declare-fun e!2908331 () Bool)

(assert (=> b!4660809 (= e!2908332 e!2908331)))

(declare-fun res!1960547 () Bool)

(assert (=> b!4660809 (=> (not res!1960547) (not e!2908331))))

(assert (=> b!4660809 (= res!1960547 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(declare-fun b!4660810 () Bool)

(assert (=> b!4660810 (= e!2908331 (contains!15089 (keys!18406 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun b!4660811 () Bool)

(assert (=> b!4660811 (= e!2908329 e!2908333)))

(declare-fun c!797813 () Bool)

(assert (=> b!4660811 (= c!797813 call!325620)))

(declare-fun b!4660812 () Bool)

(declare-fun lt!1822306 () Unit!118984)

(assert (=> b!4660812 (= e!2908329 lt!1822306)))

(declare-fun lt!1822308 () Unit!118984)

(assert (=> b!4660812 (= lt!1822308 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660812 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822313 () Unit!118984)

(assert (=> b!4660812 (= lt!1822313 lt!1822308)))

(assert (=> b!4660812 (= lt!1822306 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660812 call!325620))

(declare-fun b!4660813 () Bool)

(assert (=> b!4660813 (= e!2908330 (not (contains!15089 (keys!18406 lt!1821734) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(assert (= (and d!1480104 c!797814) b!4660812))

(assert (= (and d!1480104 (not c!797814)) b!4660811))

(assert (= (and b!4660811 c!797813) b!4660806))

(assert (= (and b!4660811 (not c!797813)) b!4660807))

(assert (= (or b!4660812 b!4660811) bm!325615))

(assert (= (and bm!325615 c!797812) b!4660808))

(assert (= (and bm!325615 (not c!797812)) b!4660805))

(assert (= (and d!1480104 res!1960546) b!4660813))

(assert (= (and d!1480104 (not res!1960545)) b!4660809))

(assert (= (and b!4660809 res!1960547) b!4660810))

(declare-fun m!5543953 () Bool)

(assert (=> d!1480104 m!5543953))

(assert (=> b!4660806 m!5543953))

(declare-fun m!5543955 () Bool)

(assert (=> b!4660806 m!5543955))

(declare-fun m!5543957 () Bool)

(assert (=> b!4660813 m!5543957))

(assert (=> b!4660813 m!5543957))

(declare-fun m!5543959 () Bool)

(assert (=> b!4660813 m!5543959))

(declare-fun m!5543961 () Bool)

(assert (=> b!4660808 m!5543961))

(assert (=> b!4660805 m!5543957))

(declare-fun m!5543963 () Bool)

(assert (=> b!4660812 m!5543963))

(declare-fun m!5543965 () Bool)

(assert (=> b!4660812 m!5543965))

(assert (=> b!4660812 m!5543965))

(declare-fun m!5543967 () Bool)

(assert (=> b!4660812 m!5543967))

(declare-fun m!5543969 () Bool)

(assert (=> b!4660812 m!5543969))

(assert (=> b!4660810 m!5543957))

(assert (=> b!4660810 m!5543957))

(assert (=> b!4660810 m!5543959))

(assert (=> b!4660809 m!5543965))

(assert (=> b!4660809 m!5543965))

(assert (=> b!4660809 m!5543967))

(declare-fun m!5543971 () Bool)

(assert (=> bm!325615 m!5543971))

(assert (=> b!4659723 d!1480104))

(assert (=> b!4659723 d!1479418))

(declare-fun d!1480106 () Bool)

(declare-fun e!2908335 () Bool)

(assert (=> d!1480106 e!2908335))

(declare-fun res!1960549 () Bool)

(assert (=> d!1480106 (=> (not res!1960549) (not e!2908335))))

(declare-fun lt!1822315 () ListMap!4573)

(assert (=> d!1480106 (= res!1960549 (contains!15083 lt!1822315 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822317 () List!52052)

(assert (=> d!1480106 (= lt!1822315 (ListMap!4574 lt!1822317))))

(declare-fun lt!1822314 () Unit!118984)

(declare-fun lt!1822316 () Unit!118984)

(assert (=> d!1480106 (= lt!1822314 lt!1822316)))

(assert (=> d!1480106 (= (getValueByKey!1626 lt!1822317 (_1!29821 (h!58080 (t!359168 oldBucket!40)))) (Some!11847 (_2!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480106 (= lt!1822316 (lemmaContainsTupThenGetReturnValue!930 lt!1822317 (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480106 (= lt!1822317 (insertNoDuplicatedKeys!438 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480106 (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822315)))

(declare-fun b!4660814 () Bool)

(declare-fun res!1960548 () Bool)

(assert (=> b!4660814 (=> (not res!1960548) (not e!2908335))))

(assert (=> b!4660814 (= res!1960548 (= (getValueByKey!1626 (toList!5233 lt!1822315) (_1!29821 (h!58080 (t!359168 oldBucket!40)))) (Some!11847 (_2!29821 (h!58080 (t!359168 oldBucket!40))))))))

(declare-fun b!4660815 () Bool)

(assert (=> b!4660815 (= e!2908335 (contains!15088 (toList!5233 lt!1822315) (h!58080 (t!359168 oldBucket!40))))))

(assert (= (and d!1480106 res!1960549) b!4660814))

(assert (= (and b!4660814 res!1960548) b!4660815))

(declare-fun m!5543973 () Bool)

(assert (=> d!1480106 m!5543973))

(declare-fun m!5543975 () Bool)

(assert (=> d!1480106 m!5543975))

(declare-fun m!5543977 () Bool)

(assert (=> d!1480106 m!5543977))

(declare-fun m!5543979 () Bool)

(assert (=> d!1480106 m!5543979))

(declare-fun m!5543981 () Bool)

(assert (=> b!4660814 m!5543981))

(declare-fun m!5543983 () Bool)

(assert (=> b!4660815 m!5543983))

(assert (=> b!4659723 d!1480106))

(declare-fun bs!1068234 () Bool)

(declare-fun d!1480108 () Bool)

(assert (= bs!1068234 (and d!1480108 b!4660225)))

(declare-fun lambda!200270 () Int)

(assert (=> bs!1068234 (= (= lt!1821726 lt!1822000) (= lambda!200270 lambda!200203))))

(declare-fun bs!1068235 () Bool)

(assert (= bs!1068235 (and d!1480108 d!1478838)))

(assert (=> bs!1068235 (= (= lt!1821726 lt!1821400) (= lambda!200270 lambda!200078))))

(declare-fun bs!1068236 () Bool)

(assert (= bs!1068236 (and d!1480108 b!4659725)))

(assert (=> bs!1068236 (= (= lt!1821726 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200270 lambda!200156))))

(declare-fun bs!1068237 () Bool)

(assert (= bs!1068237 (and d!1480108 b!4660660)))

(assert (=> bs!1068237 (= (= lt!1821726 lt!1822227) (= lambda!200270 lambda!200253))))

(declare-fun bs!1068238 () Bool)

(assert (= bs!1068238 (and d!1480108 b!4659241)))

(assert (=> bs!1068238 (= (= lt!1821726 lt!1821404) (= lambda!200270 lambda!200077))))

(declare-fun bs!1068239 () Bool)

(assert (= bs!1068239 (and d!1480108 b!4659723)))

(assert (=> bs!1068239 (= (= lt!1821726 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200270 lambda!200157))))

(declare-fun bs!1068240 () Bool)

(assert (= bs!1068240 (and d!1480108 d!1478768)))

(assert (=> bs!1068240 (not (= lambda!200270 lambda!199986))))

(declare-fun bs!1068241 () Bool)

(assert (= bs!1068241 (and d!1480108 b!4660662)))

(assert (=> bs!1068241 (= (= lt!1821726 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200270 lambda!200250))))

(assert (=> bs!1068238 (= (= lt!1821726 lt!1821141) (= lambda!200270 lambda!200076))))

(declare-fun bs!1068242 () Bool)

(assert (= bs!1068242 (and d!1480108 d!1479990)))

(assert (=> bs!1068242 (= (= lt!1821726 lt!1822223) (= lambda!200270 lambda!200255))))

(assert (=> bs!1068237 (= (= lt!1821726 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200270 lambda!200252))))

(declare-fun bs!1068243 () Bool)

(assert (= bs!1068243 (and d!1480108 b!4660227)))

(assert (=> bs!1068243 (= (= lt!1821726 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200270 lambda!200199))))

(assert (=> bs!1068239 (= lambda!200270 lambda!200158)))

(declare-fun bs!1068244 () Bool)

(assert (= bs!1068244 (and d!1480108 d!1479170)))

(assert (=> bs!1068244 (= (= lt!1821726 lt!1821722) (= lambda!200270 lambda!200159))))

(declare-fun bs!1068245 () Bool)

(assert (= bs!1068245 (and d!1480108 b!4659243)))

(assert (=> bs!1068245 (= (= lt!1821726 lt!1821141) (= lambda!200270 lambda!200075))))

(declare-fun bs!1068246 () Bool)

(assert (= bs!1068246 (and d!1480108 b!4660124)))

(assert (=> bs!1068246 (= (= lt!1821726 lt!1821937) (= lambda!200270 lambda!200191))))

(declare-fun bs!1068247 () Bool)

(assert (= bs!1068247 (and d!1480108 b!4659665)))

(assert (=> bs!1068247 (= (= lt!1821726 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200270 lambda!200147))))

(declare-fun bs!1068248 () Bool)

(assert (= bs!1068248 (and d!1480108 d!1479132)))

(assert (=> bs!1068248 (= (= lt!1821726 lt!1821663) (= lambda!200270 lambda!200149))))

(assert (=> bs!1068246 (= (= lt!1821726 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200270 lambda!200190))))

(declare-fun bs!1068249 () Bool)

(assert (= bs!1068249 (and d!1480108 d!1479832)))

(assert (=> bs!1068249 (= (= lt!1821726 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200270 lambda!200224))))

(declare-fun bs!1068250 () Bool)

(assert (= bs!1068250 (and d!1480108 d!1479526)))

(assert (=> bs!1068250 (= (= lt!1821726 lt!1821667) (= lambda!200270 lambda!200185))))

(declare-fun bs!1068251 () Bool)

(assert (= bs!1068251 (and d!1480108 b!4660126)))

(assert (=> bs!1068251 (= (= lt!1821726 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200270 lambda!200188))))

(declare-fun bs!1068252 () Bool)

(assert (= bs!1068252 (and d!1480108 d!1479158)))

(assert (=> bs!1068252 (= (= lt!1821726 lt!1821404) (= lambda!200270 lambda!200155))))

(declare-fun bs!1068253 () Bool)

(assert (= bs!1068253 (and d!1480108 b!4659667)))

(assert (=> bs!1068253 (= (= lt!1821726 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200270 lambda!200146))))

(assert (=> bs!1068234 (= (= lt!1821726 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200270 lambda!200201))))

(declare-fun bs!1068254 () Bool)

(assert (= bs!1068254 (and d!1480108 d!1479614)))

(assert (=> bs!1068254 (= (= lt!1821726 lt!1821996) (= lambda!200270 lambda!200205))))

(declare-fun bs!1068255 () Bool)

(assert (= bs!1068255 (and d!1480108 d!1479846)))

(assert (=> bs!1068255 (= (= lt!1821726 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200270 lambda!200229))))

(declare-fun bs!1068256 () Bool)

(assert (= bs!1068256 (and d!1480108 d!1479862)))

(assert (=> bs!1068256 (= (= lt!1821726 lt!1821404) (= lambda!200270 lambda!200234))))

(declare-fun bs!1068257 () Bool)

(assert (= bs!1068257 (and d!1480108 d!1478866)))

(assert (=> bs!1068257 (not (= lambda!200270 lambda!200086))))

(declare-fun bs!1068258 () Bool)

(assert (= bs!1068258 (and d!1480108 d!1479372)))

(assert (=> bs!1068258 (= (= lt!1821726 lt!1821141) (= lambda!200270 lambda!200180))))

(assert (=> bs!1068247 (= (= lt!1821726 lt!1821667) (= lambda!200270 lambda!200148))))

(declare-fun bs!1068259 () Bool)

(assert (= bs!1068259 (and d!1480108 d!1479240)))

(assert (=> bs!1068259 (= (= lt!1821726 lt!1821141) (= lambda!200270 lambda!200166))))

(declare-fun bs!1068260 () Bool)

(assert (= bs!1068260 (and d!1480108 d!1479528)))

(assert (=> bs!1068260 (= (= lt!1821726 lt!1821933) (= lambda!200270 lambda!200192))))

(declare-fun bs!1068261 () Bool)

(assert (= bs!1068261 (and d!1480108 d!1479840)))

(assert (=> bs!1068261 (not (= lambda!200270 lambda!200226))))

(assert (=> d!1480108 true))

(assert (=> d!1480108 (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200270)))

(declare-fun lt!1822318 () Unit!118984)

(assert (=> d!1480108 (= lt!1822318 (choose!32097 (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480108 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (tuple2!53055 (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))))) lambda!200270)))

(assert (=> d!1480108 (= (addForallContainsKeyThenBeforeAdding!605 (+!1992 lt!1821141 (h!58080 oldBucket!40)) lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40))) (_2!29821 (h!58080 (t!359168 oldBucket!40)))) lt!1822318)))

(declare-fun bs!1068267 () Bool)

(assert (= bs!1068267 d!1480108))

(declare-fun m!5543995 () Bool)

(assert (=> bs!1068267 m!5543995))

(assert (=> bs!1068267 m!5540769))

(declare-fun m!5543999 () Bool)

(assert (=> bs!1068267 m!5543999))

(assert (=> bs!1068267 m!5540769))

(declare-fun m!5544001 () Bool)

(assert (=> bs!1068267 m!5544001))

(declare-fun m!5544003 () Bool)

(assert (=> bs!1068267 m!5544003))

(assert (=> b!4659723 d!1480108))

(declare-fun b!4660818 () Bool)

(declare-fun e!2908343 () List!52055)

(assert (=> b!4660818 (= e!2908343 (keys!18406 lt!1821726))))

(declare-fun bm!325616 () Bool)

(declare-fun call!325621 () Bool)

(assert (=> bm!325616 (= call!325621 (contains!15089 e!2908343 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun c!797815 () Bool)

(declare-fun c!797817 () Bool)

(assert (=> bm!325616 (= c!797815 c!797817)))

(declare-fun b!4660819 () Bool)

(assert (=> b!4660819 false))

(declare-fun lt!1822322 () Unit!118984)

(declare-fun lt!1822323 () Unit!118984)

(assert (=> b!4660819 (= lt!1822322 lt!1822323)))

(assert (=> b!4660819 (containsKey!2750 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))

(assert (=> b!4660819 (= lt!1822323 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun e!2908342 () Unit!118984)

(declare-fun Unit!119210 () Unit!118984)

(assert (=> b!4660819 (= e!2908342 Unit!119210)))

(declare-fun d!1480126 () Bool)

(declare-fun e!2908341 () Bool)

(assert (=> d!1480126 e!2908341))

(declare-fun res!1960550 () Bool)

(assert (=> d!1480126 (=> res!1960550 e!2908341)))

(declare-fun e!2908339 () Bool)

(assert (=> d!1480126 (= res!1960550 e!2908339)))

(declare-fun res!1960551 () Bool)

(assert (=> d!1480126 (=> (not res!1960551) (not e!2908339))))

(declare-fun lt!1822320 () Bool)

(assert (=> d!1480126 (= res!1960551 (not lt!1822320))))

(declare-fun lt!1822324 () Bool)

(assert (=> d!1480126 (= lt!1822320 lt!1822324)))

(declare-fun lt!1822325 () Unit!118984)

(declare-fun e!2908338 () Unit!118984)

(assert (=> d!1480126 (= lt!1822325 e!2908338)))

(assert (=> d!1480126 (= c!797817 lt!1822324)))

(assert (=> d!1480126 (= lt!1822324 (containsKey!2750 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> d!1480126 (= (contains!15083 lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40)))) lt!1822320)))

(declare-fun b!4660820 () Bool)

(declare-fun Unit!119211 () Unit!118984)

(assert (=> b!4660820 (= e!2908342 Unit!119211)))

(declare-fun b!4660821 () Bool)

(assert (=> b!4660821 (= e!2908343 (getKeysList!757 (toList!5233 lt!1821726)))))

(declare-fun b!4660822 () Bool)

(declare-fun e!2908340 () Bool)

(assert (=> b!4660822 (= e!2908341 e!2908340)))

(declare-fun res!1960552 () Bool)

(assert (=> b!4660822 (=> (not res!1960552) (not e!2908340))))

(assert (=> b!4660822 (= res!1960552 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(declare-fun b!4660823 () Bool)

(assert (=> b!4660823 (= e!2908340 (contains!15089 (keys!18406 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun b!4660824 () Bool)

(assert (=> b!4660824 (= e!2908338 e!2908342)))

(declare-fun c!797816 () Bool)

(assert (=> b!4660824 (= c!797816 call!325621)))

(declare-fun b!4660825 () Bool)

(declare-fun lt!1822319 () Unit!118984)

(assert (=> b!4660825 (= e!2908338 lt!1822319)))

(declare-fun lt!1822321 () Unit!118984)

(assert (=> b!4660825 (= lt!1822321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660825 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822326 () Unit!118984)

(assert (=> b!4660825 (= lt!1822326 lt!1822321)))

(assert (=> b!4660825 (= lt!1822319 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> b!4660825 call!325621))

(declare-fun b!4660826 () Bool)

(assert (=> b!4660826 (= e!2908339 (not (contains!15089 (keys!18406 lt!1821726) (_1!29821 (h!58080 (t!359168 oldBucket!40))))))))

(assert (= (and d!1480126 c!797817) b!4660825))

(assert (= (and d!1480126 (not c!797817)) b!4660824))

(assert (= (and b!4660824 c!797816) b!4660819))

(assert (= (and b!4660824 (not c!797816)) b!4660820))

(assert (= (or b!4660825 b!4660824) bm!325616))

(assert (= (and bm!325616 c!797815) b!4660821))

(assert (= (and bm!325616 (not c!797815)) b!4660818))

(assert (= (and d!1480126 res!1960551) b!4660826))

(assert (= (and d!1480126 (not res!1960550)) b!4660822))

(assert (= (and b!4660822 res!1960552) b!4660823))

(declare-fun m!5544019 () Bool)

(assert (=> d!1480126 m!5544019))

(assert (=> b!4660819 m!5544019))

(declare-fun m!5544023 () Bool)

(assert (=> b!4660819 m!5544023))

(declare-fun m!5544025 () Bool)

(assert (=> b!4660826 m!5544025))

(assert (=> b!4660826 m!5544025))

(declare-fun m!5544027 () Bool)

(assert (=> b!4660826 m!5544027))

(declare-fun m!5544029 () Bool)

(assert (=> b!4660821 m!5544029))

(assert (=> b!4660818 m!5544025))

(declare-fun m!5544031 () Bool)

(assert (=> b!4660825 m!5544031))

(declare-fun m!5544033 () Bool)

(assert (=> b!4660825 m!5544033))

(assert (=> b!4660825 m!5544033))

(declare-fun m!5544035 () Bool)

(assert (=> b!4660825 m!5544035))

(declare-fun m!5544037 () Bool)

(assert (=> b!4660825 m!5544037))

(assert (=> b!4660823 m!5544025))

(assert (=> b!4660823 m!5544025))

(assert (=> b!4660823 m!5544027))

(assert (=> b!4660822 m!5544033))

(assert (=> b!4660822 m!5544033))

(assert (=> b!4660822 m!5544035))

(declare-fun m!5544041 () Bool)

(assert (=> bm!325616 m!5544041))

(assert (=> b!4659723 d!1480126))

(declare-fun bs!1068291 () Bool)

(declare-fun b!4660829 () Bool)

(assert (= bs!1068291 (and b!4660829 b!4660225)))

(declare-fun lambda!200271 () Int)

(assert (=> bs!1068291 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822000) (= lambda!200271 lambda!200203))))

(declare-fun bs!1068293 () Bool)

(assert (= bs!1068293 (and b!4660829 d!1478838)))

(assert (=> bs!1068293 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821400) (= lambda!200271 lambda!200078))))

(declare-fun bs!1068295 () Bool)

(assert (= bs!1068295 (and b!4660829 b!4659725)))

(assert (=> bs!1068295 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200271 lambda!200156))))

(declare-fun bs!1068297 () Bool)

(assert (= bs!1068297 (and b!4660829 b!4660660)))

(assert (=> bs!1068297 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822227) (= lambda!200271 lambda!200253))))

(declare-fun bs!1068299 () Bool)

(assert (= bs!1068299 (and b!4660829 b!4659241)))

(assert (=> bs!1068299 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200271 lambda!200077))))

(declare-fun bs!1068300 () Bool)

(assert (= bs!1068300 (and b!4660829 b!4659723)))

(assert (=> bs!1068300 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200271 lambda!200157))))

(declare-fun bs!1068302 () Bool)

(assert (= bs!1068302 (and b!4660829 d!1478768)))

(assert (=> bs!1068302 (not (= lambda!200271 lambda!199986))))

(declare-fun bs!1068304 () Bool)

(assert (= bs!1068304 (and b!4660829 b!4660662)))

(assert (=> bs!1068304 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200271 lambda!200250))))

(assert (=> bs!1068299 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200271 lambda!200076))))

(declare-fun bs!1068305 () Bool)

(assert (= bs!1068305 (and b!4660829 d!1479990)))

(assert (=> bs!1068305 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822223) (= lambda!200271 lambda!200255))))

(declare-fun bs!1068307 () Bool)

(assert (= bs!1068307 (and b!4660829 b!4660227)))

(assert (=> bs!1068307 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200271 lambda!200199))))

(assert (=> bs!1068300 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821726) (= lambda!200271 lambda!200158))))

(declare-fun bs!1068309 () Bool)

(assert (= bs!1068309 (and b!4660829 d!1479170)))

(assert (=> bs!1068309 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821722) (= lambda!200271 lambda!200159))))

(declare-fun bs!1068311 () Bool)

(assert (= bs!1068311 (and b!4660829 b!4659243)))

(assert (=> bs!1068311 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200271 lambda!200075))))

(declare-fun bs!1068312 () Bool)

(assert (= bs!1068312 (and b!4660829 b!4660124)))

(assert (=> bs!1068312 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821937) (= lambda!200271 lambda!200191))))

(declare-fun bs!1068314 () Bool)

(assert (= bs!1068314 (and b!4660829 b!4659665)))

(assert (=> bs!1068314 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200271 lambda!200147))))

(declare-fun bs!1068316 () Bool)

(assert (= bs!1068316 (and b!4660829 d!1479132)))

(assert (=> bs!1068316 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821663) (= lambda!200271 lambda!200149))))

(assert (=> bs!1068312 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200271 lambda!200190))))

(declare-fun bs!1068318 () Bool)

(assert (= bs!1068318 (and b!4660829 d!1479832)))

(assert (=> bs!1068318 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200271 lambda!200224))))

(declare-fun bs!1068319 () Bool)

(assert (= bs!1068319 (and b!4660829 d!1479526)))

(assert (=> bs!1068319 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821667) (= lambda!200271 lambda!200185))))

(declare-fun bs!1068321 () Bool)

(assert (= bs!1068321 (and b!4660829 b!4660126)))

(assert (=> bs!1068321 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200271 lambda!200188))))

(declare-fun bs!1068322 () Bool)

(assert (= bs!1068322 (and b!4660829 d!1479158)))

(assert (=> bs!1068322 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200271 lambda!200155))))

(declare-fun bs!1068324 () Bool)

(assert (= bs!1068324 (and b!4660829 b!4659667)))

(assert (=> bs!1068324 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200271 lambda!200146))))

(assert (=> bs!1068291 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200271 lambda!200201))))

(declare-fun bs!1068327 () Bool)

(assert (= bs!1068327 (and b!4660829 d!1479614)))

(assert (=> bs!1068327 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821996) (= lambda!200271 lambda!200205))))

(declare-fun bs!1068329 () Bool)

(assert (= bs!1068329 (and b!4660829 d!1479846)))

(assert (=> bs!1068329 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200271 lambda!200229))))

(declare-fun bs!1068331 () Bool)

(assert (= bs!1068331 (and b!4660829 d!1479862)))

(assert (=> bs!1068331 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200271 lambda!200234))))

(declare-fun bs!1068332 () Bool)

(assert (= bs!1068332 (and b!4660829 d!1478866)))

(assert (=> bs!1068332 (not (= lambda!200271 lambda!200086))))

(declare-fun bs!1068335 () Bool)

(assert (= bs!1068335 (and b!4660829 d!1480108)))

(assert (=> bs!1068335 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821726) (= lambda!200271 lambda!200270))))

(assert (=> bs!1068297 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200271 lambda!200252))))

(declare-fun bs!1068337 () Bool)

(assert (= bs!1068337 (and b!4660829 d!1479372)))

(assert (=> bs!1068337 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200271 lambda!200180))))

(assert (=> bs!1068314 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821667) (= lambda!200271 lambda!200148))))

(declare-fun bs!1068340 () Bool)

(assert (= bs!1068340 (and b!4660829 d!1479240)))

(assert (=> bs!1068340 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200271 lambda!200166))))

(declare-fun bs!1068342 () Bool)

(assert (= bs!1068342 (and b!4660829 d!1479528)))

(assert (=> bs!1068342 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821933) (= lambda!200271 lambda!200192))))

(declare-fun bs!1068343 () Bool)

(assert (= bs!1068343 (and b!4660829 d!1479840)))

(assert (=> bs!1068343 (not (= lambda!200271 lambda!200226))))

(assert (=> b!4660829 true))

(declare-fun bs!1068352 () Bool)

(declare-fun b!4660827 () Bool)

(assert (= bs!1068352 (and b!4660827 b!4660225)))

(declare-fun lambda!200272 () Int)

(assert (=> bs!1068352 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822000) (= lambda!200272 lambda!200203))))

(declare-fun bs!1068354 () Bool)

(assert (= bs!1068354 (and b!4660827 d!1478838)))

(assert (=> bs!1068354 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821400) (= lambda!200272 lambda!200078))))

(declare-fun bs!1068355 () Bool)

(assert (= bs!1068355 (and b!4660827 b!4659725)))

(assert (=> bs!1068355 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200272 lambda!200156))))

(declare-fun bs!1068356 () Bool)

(assert (= bs!1068356 (and b!4660827 b!4660660)))

(assert (=> bs!1068356 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822227) (= lambda!200272 lambda!200253))))

(declare-fun bs!1068357 () Bool)

(assert (= bs!1068357 (and b!4660827 b!4659241)))

(assert (=> bs!1068357 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200272 lambda!200077))))

(declare-fun bs!1068358 () Bool)

(assert (= bs!1068358 (and b!4660827 b!4659723)))

(assert (=> bs!1068358 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200272 lambda!200157))))

(declare-fun bs!1068359 () Bool)

(assert (= bs!1068359 (and b!4660827 d!1478768)))

(assert (=> bs!1068359 (not (= lambda!200272 lambda!199986))))

(assert (=> bs!1068357 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200272 lambda!200076))))

(declare-fun bs!1068360 () Bool)

(assert (= bs!1068360 (and b!4660827 d!1479990)))

(assert (=> bs!1068360 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822223) (= lambda!200272 lambda!200255))))

(declare-fun bs!1068362 () Bool)

(assert (= bs!1068362 (and b!4660827 b!4660227)))

(assert (=> bs!1068362 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200272 lambda!200199))))

(assert (=> bs!1068358 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821726) (= lambda!200272 lambda!200158))))

(declare-fun bs!1068364 () Bool)

(assert (= bs!1068364 (and b!4660827 d!1479170)))

(assert (=> bs!1068364 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821722) (= lambda!200272 lambda!200159))))

(declare-fun bs!1068366 () Bool)

(assert (= bs!1068366 (and b!4660827 b!4659243)))

(assert (=> bs!1068366 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200272 lambda!200075))))

(declare-fun bs!1068367 () Bool)

(assert (= bs!1068367 (and b!4660827 b!4660124)))

(assert (=> bs!1068367 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821937) (= lambda!200272 lambda!200191))))

(declare-fun bs!1068369 () Bool)

(assert (= bs!1068369 (and b!4660827 b!4659665)))

(assert (=> bs!1068369 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200272 lambda!200147))))

(declare-fun bs!1068371 () Bool)

(assert (= bs!1068371 (and b!4660827 d!1479132)))

(assert (=> bs!1068371 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821663) (= lambda!200272 lambda!200149))))

(assert (=> bs!1068367 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200272 lambda!200190))))

(declare-fun bs!1068373 () Bool)

(assert (= bs!1068373 (and b!4660827 d!1479832)))

(assert (=> bs!1068373 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200272 lambda!200224))))

(declare-fun bs!1068375 () Bool)

(assert (= bs!1068375 (and b!4660827 d!1479526)))

(assert (=> bs!1068375 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821667) (= lambda!200272 lambda!200185))))

(declare-fun bs!1068377 () Bool)

(assert (= bs!1068377 (and b!4660827 b!4660126)))

(assert (=> bs!1068377 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200272 lambda!200188))))

(declare-fun bs!1068379 () Bool)

(assert (= bs!1068379 (and b!4660827 d!1479158)))

(assert (=> bs!1068379 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200272 lambda!200155))))

(declare-fun bs!1068381 () Bool)

(assert (= bs!1068381 (and b!4660827 b!4659667)))

(assert (=> bs!1068381 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200272 lambda!200146))))

(assert (=> bs!1068352 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200272 lambda!200201))))

(declare-fun bs!1068383 () Bool)

(assert (= bs!1068383 (and b!4660827 b!4660829)))

(assert (=> bs!1068383 (= lambda!200272 lambda!200271)))

(declare-fun bs!1068385 () Bool)

(assert (= bs!1068385 (and b!4660827 b!4660662)))

(assert (=> bs!1068385 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200272 lambda!200250))))

(declare-fun bs!1068387 () Bool)

(assert (= bs!1068387 (and b!4660827 d!1479614)))

(assert (=> bs!1068387 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821996) (= lambda!200272 lambda!200205))))

(declare-fun bs!1068389 () Bool)

(assert (= bs!1068389 (and b!4660827 d!1479846)))

(assert (=> bs!1068389 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200272 lambda!200229))))

(declare-fun bs!1068391 () Bool)

(assert (= bs!1068391 (and b!4660827 d!1479862)))

(assert (=> bs!1068391 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821404) (= lambda!200272 lambda!200234))))

(declare-fun bs!1068393 () Bool)

(assert (= bs!1068393 (and b!4660827 d!1478866)))

(assert (=> bs!1068393 (not (= lambda!200272 lambda!200086))))

(declare-fun bs!1068394 () Bool)

(assert (= bs!1068394 (and b!4660827 d!1480108)))

(assert (=> bs!1068394 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821726) (= lambda!200272 lambda!200270))))

(assert (=> bs!1068356 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200272 lambda!200252))))

(declare-fun bs!1068397 () Bool)

(assert (= bs!1068397 (and b!4660827 d!1479372)))

(assert (=> bs!1068397 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200272 lambda!200180))))

(assert (=> bs!1068369 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821667) (= lambda!200272 lambda!200148))))

(declare-fun bs!1068400 () Bool)

(assert (= bs!1068400 (and b!4660827 d!1479240)))

(assert (=> bs!1068400 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821141) (= lambda!200272 lambda!200166))))

(declare-fun bs!1068401 () Bool)

(assert (= bs!1068401 (and b!4660827 d!1479528)))

(assert (=> bs!1068401 (= (= (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1821933) (= lambda!200272 lambda!200192))))

(declare-fun bs!1068403 () Bool)

(assert (= bs!1068403 (and b!4660827 d!1479840)))

(assert (=> bs!1068403 (not (= lambda!200272 lambda!200226))))

(assert (=> b!4660827 true))

(declare-fun lt!1822333 () ListMap!4573)

(declare-fun lambda!200273 () Int)

(assert (=> bs!1068352 (= (= lt!1822333 lt!1822000) (= lambda!200273 lambda!200203))))

(assert (=> bs!1068354 (= (= lt!1822333 lt!1821400) (= lambda!200273 lambda!200078))))

(assert (=> bs!1068355 (= (= lt!1822333 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200273 lambda!200156))))

(assert (=> bs!1068356 (= (= lt!1822333 lt!1822227) (= lambda!200273 lambda!200253))))

(assert (=> bs!1068357 (= (= lt!1822333 lt!1821404) (= lambda!200273 lambda!200077))))

(assert (=> bs!1068358 (= (= lt!1822333 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200273 lambda!200157))))

(assert (=> bs!1068359 (not (= lambda!200273 lambda!199986))))

(assert (=> b!4660827 (= (= lt!1822333 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (= lambda!200273 lambda!200272))))

(assert (=> bs!1068357 (= (= lt!1822333 lt!1821141) (= lambda!200273 lambda!200076))))

(assert (=> bs!1068360 (= (= lt!1822333 lt!1822223) (= lambda!200273 lambda!200255))))

(assert (=> bs!1068362 (= (= lt!1822333 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200273 lambda!200199))))

(assert (=> bs!1068358 (= (= lt!1822333 lt!1821726) (= lambda!200273 lambda!200158))))

(assert (=> bs!1068364 (= (= lt!1822333 lt!1821722) (= lambda!200273 lambda!200159))))

(assert (=> bs!1068366 (= (= lt!1822333 lt!1821141) (= lambda!200273 lambda!200075))))

(assert (=> bs!1068367 (= (= lt!1822333 lt!1821937) (= lambda!200273 lambda!200191))))

(assert (=> bs!1068369 (= (= lt!1822333 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200273 lambda!200147))))

(assert (=> bs!1068371 (= (= lt!1822333 lt!1821663) (= lambda!200273 lambda!200149))))

(assert (=> bs!1068367 (= (= lt!1822333 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200273 lambda!200190))))

(assert (=> bs!1068373 (= (= lt!1822333 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200273 lambda!200224))))

(assert (=> bs!1068375 (= (= lt!1822333 lt!1821667) (= lambda!200273 lambda!200185))))

(assert (=> bs!1068377 (= (= lt!1822333 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200273 lambda!200188))))

(assert (=> bs!1068379 (= (= lt!1822333 lt!1821404) (= lambda!200273 lambda!200155))))

(assert (=> bs!1068381 (= (= lt!1822333 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200273 lambda!200146))))

(assert (=> bs!1068352 (= (= lt!1822333 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200273 lambda!200201))))

(assert (=> bs!1068383 (= (= lt!1822333 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (= lambda!200273 lambda!200271))))

(assert (=> bs!1068385 (= (= lt!1822333 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200273 lambda!200250))))

(assert (=> bs!1068387 (= (= lt!1822333 lt!1821996) (= lambda!200273 lambda!200205))))

(assert (=> bs!1068389 (= (= lt!1822333 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200273 lambda!200229))))

(assert (=> bs!1068391 (= (= lt!1822333 lt!1821404) (= lambda!200273 lambda!200234))))

(assert (=> bs!1068393 (not (= lambda!200273 lambda!200086))))

(assert (=> bs!1068394 (= (= lt!1822333 lt!1821726) (= lambda!200273 lambda!200270))))

(assert (=> bs!1068356 (= (= lt!1822333 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200273 lambda!200252))))

(assert (=> bs!1068397 (= (= lt!1822333 lt!1821141) (= lambda!200273 lambda!200180))))

(assert (=> bs!1068369 (= (= lt!1822333 lt!1821667) (= lambda!200273 lambda!200148))))

(assert (=> bs!1068400 (= (= lt!1822333 lt!1821141) (= lambda!200273 lambda!200166))))

(assert (=> bs!1068401 (= (= lt!1822333 lt!1821933) (= lambda!200273 lambda!200192))))

(assert (=> bs!1068403 (not (= lambda!200273 lambda!200226))))

(assert (=> b!4660827 true))

(declare-fun bs!1068441 () Bool)

(declare-fun d!1480156 () Bool)

(assert (= bs!1068441 (and d!1480156 b!4660225)))

(declare-fun lt!1822329 () ListMap!4573)

(declare-fun lambda!200274 () Int)

(assert (=> bs!1068441 (= (= lt!1822329 lt!1822000) (= lambda!200274 lambda!200203))))

(declare-fun bs!1068442 () Bool)

(assert (= bs!1068442 (and d!1480156 b!4659725)))

(assert (=> bs!1068442 (= (= lt!1822329 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200274 lambda!200156))))

(declare-fun bs!1068443 () Bool)

(assert (= bs!1068443 (and d!1480156 b!4660660)))

(assert (=> bs!1068443 (= (= lt!1822329 lt!1822227) (= lambda!200274 lambda!200253))))

(declare-fun bs!1068444 () Bool)

(assert (= bs!1068444 (and d!1480156 b!4659241)))

(assert (=> bs!1068444 (= (= lt!1822329 lt!1821404) (= lambda!200274 lambda!200077))))

(declare-fun bs!1068445 () Bool)

(assert (= bs!1068445 (and d!1480156 b!4659723)))

(assert (=> bs!1068445 (= (= lt!1822329 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200274 lambda!200157))))

(declare-fun bs!1068446 () Bool)

(assert (= bs!1068446 (and d!1480156 d!1478768)))

(assert (=> bs!1068446 (not (= lambda!200274 lambda!199986))))

(declare-fun bs!1068447 () Bool)

(assert (= bs!1068447 (and d!1480156 b!4660827)))

(assert (=> bs!1068447 (= (= lt!1822329 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (= lambda!200274 lambda!200272))))

(assert (=> bs!1068444 (= (= lt!1822329 lt!1821141) (= lambda!200274 lambda!200076))))

(declare-fun bs!1068448 () Bool)

(assert (= bs!1068448 (and d!1480156 d!1479990)))

(assert (=> bs!1068448 (= (= lt!1822329 lt!1822223) (= lambda!200274 lambda!200255))))

(declare-fun bs!1068449 () Bool)

(assert (= bs!1068449 (and d!1480156 b!4660227)))

(assert (=> bs!1068449 (= (= lt!1822329 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200274 lambda!200199))))

(assert (=> bs!1068445 (= (= lt!1822329 lt!1821726) (= lambda!200274 lambda!200158))))

(declare-fun bs!1068450 () Bool)

(assert (= bs!1068450 (and d!1480156 d!1479170)))

(assert (=> bs!1068450 (= (= lt!1822329 lt!1821722) (= lambda!200274 lambda!200159))))

(declare-fun bs!1068451 () Bool)

(assert (= bs!1068451 (and d!1480156 b!4659243)))

(assert (=> bs!1068451 (= (= lt!1822329 lt!1821141) (= lambda!200274 lambda!200075))))

(declare-fun bs!1068452 () Bool)

(assert (= bs!1068452 (and d!1480156 b!4660124)))

(assert (=> bs!1068452 (= (= lt!1822329 lt!1821937) (= lambda!200274 lambda!200191))))

(declare-fun bs!1068453 () Bool)

(assert (= bs!1068453 (and d!1480156 d!1478838)))

(assert (=> bs!1068453 (= (= lt!1822329 lt!1821400) (= lambda!200274 lambda!200078))))

(assert (=> bs!1068447 (= (= lt!1822329 lt!1822333) (= lambda!200274 lambda!200273))))

(declare-fun bs!1068454 () Bool)

(assert (= bs!1068454 (and d!1480156 b!4659665)))

(assert (=> bs!1068454 (= (= lt!1822329 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200274 lambda!200147))))

(declare-fun bs!1068455 () Bool)

(assert (= bs!1068455 (and d!1480156 d!1479132)))

(assert (=> bs!1068455 (= (= lt!1822329 lt!1821663) (= lambda!200274 lambda!200149))))

(assert (=> bs!1068452 (= (= lt!1822329 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200274 lambda!200190))))

(declare-fun bs!1068456 () Bool)

(assert (= bs!1068456 (and d!1480156 d!1479832)))

(assert (=> bs!1068456 (= (= lt!1822329 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200274 lambda!200224))))

(declare-fun bs!1068457 () Bool)

(assert (= bs!1068457 (and d!1480156 d!1479526)))

(assert (=> bs!1068457 (= (= lt!1822329 lt!1821667) (= lambda!200274 lambda!200185))))

(declare-fun bs!1068458 () Bool)

(assert (= bs!1068458 (and d!1480156 b!4660126)))

(assert (=> bs!1068458 (= (= lt!1822329 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144))))) (= lambda!200274 lambda!200188))))

(declare-fun bs!1068459 () Bool)

(assert (= bs!1068459 (and d!1480156 d!1479158)))

(assert (=> bs!1068459 (= (= lt!1822329 lt!1821404) (= lambda!200274 lambda!200155))))

(declare-fun bs!1068460 () Bool)

(assert (= bs!1068460 (and d!1480156 b!4659667)))

(assert (=> bs!1068460 (= (= lt!1822329 (extractMap!1708 (t!359169 lt!1821144))) (= lambda!200274 lambda!200146))))

(assert (=> bs!1068441 (= (= lt!1822329 (extractMap!1708 (t!359169 (toList!5234 lt!1821147)))) (= lambda!200274 lambda!200201))))

(declare-fun bs!1068461 () Bool)

(assert (= bs!1068461 (and d!1480156 b!4660829)))

(assert (=> bs!1068461 (= (= lt!1822329 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (= lambda!200274 lambda!200271))))

(declare-fun bs!1068462 () Bool)

(assert (= bs!1068462 (and d!1480156 b!4660662)))

(assert (=> bs!1068462 (= (= lt!1822329 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200274 lambda!200250))))

(declare-fun bs!1068463 () Bool)

(assert (= bs!1068463 (and d!1480156 d!1479614)))

(assert (=> bs!1068463 (= (= lt!1822329 lt!1821996) (= lambda!200274 lambda!200205))))

(declare-fun bs!1068464 () Bool)

(assert (= bs!1068464 (and d!1480156 d!1479846)))

(assert (=> bs!1068464 (= (= lt!1822329 (+!1992 lt!1821141 (h!58080 oldBucket!40))) (= lambda!200274 lambda!200229))))

(declare-fun bs!1068465 () Bool)

(assert (= bs!1068465 (and d!1480156 d!1479862)))

(assert (=> bs!1068465 (= (= lt!1822329 lt!1821404) (= lambda!200274 lambda!200234))))

(declare-fun bs!1068466 () Bool)

(assert (= bs!1068466 (and d!1480156 d!1478866)))

(assert (=> bs!1068466 (not (= lambda!200274 lambda!200086))))

(declare-fun bs!1068467 () Bool)

(assert (= bs!1068467 (and d!1480156 d!1480108)))

(assert (=> bs!1068467 (= (= lt!1822329 lt!1821726) (= lambda!200274 lambda!200270))))

(assert (=> bs!1068443 (= (= lt!1822329 (extractMap!1708 (t!359169 (t!359169 lt!1821144)))) (= lambda!200274 lambda!200252))))

(declare-fun bs!1068468 () Bool)

(assert (= bs!1068468 (and d!1480156 d!1479372)))

(assert (=> bs!1068468 (= (= lt!1822329 lt!1821141) (= lambda!200274 lambda!200180))))

(assert (=> bs!1068454 (= (= lt!1822329 lt!1821667) (= lambda!200274 lambda!200148))))

(declare-fun bs!1068469 () Bool)

(assert (= bs!1068469 (and d!1480156 d!1479240)))

(assert (=> bs!1068469 (= (= lt!1822329 lt!1821141) (= lambda!200274 lambda!200166))))

(declare-fun bs!1068470 () Bool)

(assert (= bs!1068470 (and d!1480156 d!1479528)))

(assert (=> bs!1068470 (= (= lt!1822329 lt!1821933) (= lambda!200274 lambda!200192))))

(declare-fun bs!1068471 () Bool)

(assert (= bs!1068471 (and d!1480156 d!1479840)))

(assert (=> bs!1068471 (not (= lambda!200274 lambda!200226))))

(assert (=> d!1480156 true))

(declare-fun e!2908346 () ListMap!4573)

(assert (=> b!4660827 (= e!2908346 lt!1822333)))

(declare-fun lt!1822341 () ListMap!4573)

(assert (=> b!4660827 (= lt!1822341 (+!1992 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(assert (=> b!4660827 (= lt!1822333 (addToMapMapFromBucket!1109 (t!359168 (t!359168 (t!359168 oldBucket!40))) (+!1992 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (h!58080 (t!359168 (t!359168 oldBucket!40))))))))

(declare-fun lt!1822345 () Unit!118984)

(declare-fun call!325624 () Unit!118984)

(assert (=> b!4660827 (= lt!1822345 call!325624)))

(assert (=> b!4660827 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lambda!200272)))

(declare-fun lt!1822342 () Unit!118984)

(assert (=> b!4660827 (= lt!1822342 lt!1822345)))

(assert (=> b!4660827 (forall!11050 (toList!5233 lt!1822341) lambda!200273)))

(declare-fun lt!1822339 () Unit!118984)

(declare-fun Unit!119218 () Unit!118984)

(assert (=> b!4660827 (= lt!1822339 Unit!119218)))

(assert (=> b!4660827 (forall!11050 (t!359168 (t!359168 (t!359168 oldBucket!40))) lambda!200273)))

(declare-fun lt!1822343 () Unit!118984)

(declare-fun Unit!119219 () Unit!118984)

(assert (=> b!4660827 (= lt!1822343 Unit!119219)))

(declare-fun lt!1822328 () Unit!118984)

(declare-fun Unit!119220 () Unit!118984)

(assert (=> b!4660827 (= lt!1822328 Unit!119220)))

(declare-fun lt!1822347 () Unit!118984)

(assert (=> b!4660827 (= lt!1822347 (forallContained!3250 (toList!5233 lt!1822341) lambda!200273 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(assert (=> b!4660827 (contains!15083 lt!1822341 (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822330 () Unit!118984)

(declare-fun Unit!119221 () Unit!118984)

(assert (=> b!4660827 (= lt!1822330 Unit!119221)))

(assert (=> b!4660827 (contains!15083 lt!1822333 (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun lt!1822335 () Unit!118984)

(declare-fun Unit!119222 () Unit!118984)

(assert (=> b!4660827 (= lt!1822335 Unit!119222)))

(assert (=> b!4660827 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200273)))

(declare-fun lt!1822337 () Unit!118984)

(declare-fun Unit!119223 () Unit!118984)

(assert (=> b!4660827 (= lt!1822337 Unit!119223)))

(declare-fun call!325622 () Bool)

(assert (=> b!4660827 call!325622))

(declare-fun lt!1822332 () Unit!118984)

(declare-fun Unit!119224 () Unit!118984)

(assert (=> b!4660827 (= lt!1822332 Unit!119224)))

(declare-fun lt!1822340 () Unit!118984)

(declare-fun Unit!119225 () Unit!118984)

(assert (=> b!4660827 (= lt!1822340 Unit!119225)))

(declare-fun lt!1822344 () Unit!118984)

(assert (=> b!4660827 (= lt!1822344 (addForallContainsKeyThenBeforeAdding!605 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) lt!1822333 (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))) (_2!29821 (h!58080 (t!359168 (t!359168 oldBucket!40))))))))

(assert (=> b!4660827 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lambda!200273)))

(declare-fun lt!1822327 () Unit!118984)

(assert (=> b!4660827 (= lt!1822327 lt!1822344)))

(assert (=> b!4660827 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lambda!200273)))

(declare-fun lt!1822334 () Unit!118984)

(declare-fun Unit!119226 () Unit!118984)

(assert (=> b!4660827 (= lt!1822334 Unit!119226)))

(declare-fun res!1960555 () Bool)

(declare-fun call!325623 () Bool)

(assert (=> b!4660827 (= res!1960555 call!325623)))

(declare-fun e!2908345 () Bool)

(assert (=> b!4660827 (=> (not res!1960555) (not e!2908345))))

(assert (=> b!4660827 e!2908345))

(declare-fun lt!1822346 () Unit!118984)

(declare-fun Unit!119227 () Unit!118984)

(assert (=> b!4660827 (= lt!1822346 Unit!119227)))

(declare-fun e!2908344 () Bool)

(assert (=> d!1480156 e!2908344))

(declare-fun res!1960554 () Bool)

(assert (=> d!1480156 (=> (not res!1960554) (not e!2908344))))

(assert (=> d!1480156 (= res!1960554 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200274))))

(assert (=> d!1480156 (= lt!1822329 e!2908346)))

(declare-fun c!797818 () Bool)

(assert (=> d!1480156 (= c!797818 ((_ is Nil!51928) (t!359168 (t!359168 oldBucket!40))))))

(assert (=> d!1480156 (noDuplicateKeys!1652 (t!359168 (t!359168 oldBucket!40)))))

(assert (=> d!1480156 (= (addToMapMapFromBucket!1109 (t!359168 (t!359168 oldBucket!40)) (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lt!1822329)))

(declare-fun b!4660828 () Bool)

(assert (=> b!4660828 (= e!2908344 (invariantList!1306 (toList!5233 lt!1822329)))))

(declare-fun bm!325617 () Bool)

(assert (=> bm!325617 (= call!325622 (forall!11050 (ite c!797818 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (toList!5233 lt!1822341)) (ite c!797818 lambda!200271 lambda!200273)))))

(declare-fun bm!325618 () Bool)

(assert (=> bm!325618 (= call!325623 (forall!11050 (ite c!797818 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) (t!359168 (t!359168 oldBucket!40))) (ite c!797818 lambda!200271 lambda!200273)))))

(assert (=> b!4660829 (= e!2908346 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))))))

(declare-fun lt!1822336 () Unit!118984)

(assert (=> b!4660829 (= lt!1822336 call!325624)))

(assert (=> b!4660829 call!325622))

(declare-fun lt!1822338 () Unit!118984)

(assert (=> b!4660829 (= lt!1822338 lt!1822336)))

(assert (=> b!4660829 call!325623))

(declare-fun lt!1822331 () Unit!118984)

(declare-fun Unit!119228 () Unit!118984)

(assert (=> b!4660829 (= lt!1822331 Unit!119228)))

(declare-fun b!4660830 () Bool)

(assert (=> b!4660830 (= e!2908345 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lambda!200273))))

(declare-fun b!4660831 () Bool)

(declare-fun res!1960553 () Bool)

(assert (=> b!4660831 (=> (not res!1960553) (not e!2908344))))

(assert (=> b!4660831 (= res!1960553 (forall!11050 (toList!5233 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))) lambda!200274))))

(declare-fun bm!325619 () Bool)

(assert (=> bm!325619 (= call!325624 (lemmaContainsAllItsOwnKeys!606 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40)))))))

(assert (= (and d!1480156 c!797818) b!4660829))

(assert (= (and d!1480156 (not c!797818)) b!4660827))

(assert (= (and b!4660827 res!1960555) b!4660830))

(assert (= (or b!4660829 b!4660827) bm!325619))

(assert (= (or b!4660829 b!4660827) bm!325618))

(assert (= (or b!4660829 b!4660827) bm!325617))

(assert (= (and d!1480156 res!1960554) b!4660831))

(assert (= (and b!4660831 res!1960553) b!4660828))

(declare-fun m!5544153 () Bool)

(assert (=> bm!325617 m!5544153))

(assert (=> bm!325619 m!5541605))

(declare-fun m!5544155 () Bool)

(assert (=> bm!325619 m!5544155))

(declare-fun m!5544157 () Bool)

(assert (=> b!4660827 m!5544157))

(declare-fun m!5544159 () Bool)

(assert (=> b!4660827 m!5544159))

(declare-fun m!5544161 () Bool)

(assert (=> b!4660827 m!5544161))

(assert (=> b!4660827 m!5541605))

(declare-fun m!5544163 () Bool)

(assert (=> b!4660827 m!5544163))

(declare-fun m!5544165 () Bool)

(assert (=> b!4660827 m!5544165))

(declare-fun m!5544167 () Bool)

(assert (=> b!4660827 m!5544167))

(declare-fun m!5544169 () Bool)

(assert (=> b!4660827 m!5544169))

(declare-fun m!5544171 () Bool)

(assert (=> b!4660827 m!5544171))

(declare-fun m!5544173 () Bool)

(assert (=> b!4660827 m!5544173))

(declare-fun m!5544175 () Bool)

(assert (=> b!4660827 m!5544175))

(assert (=> b!4660827 m!5541605))

(assert (=> b!4660827 m!5544169))

(declare-fun m!5544177 () Bool)

(assert (=> b!4660827 m!5544177))

(assert (=> b!4660827 m!5544173))

(declare-fun m!5544179 () Bool)

(assert (=> d!1480156 m!5544179))

(assert (=> d!1480156 m!5541693))

(assert (=> b!4660830 m!5544173))

(declare-fun m!5544181 () Bool)

(assert (=> bm!325618 m!5544181))

(declare-fun m!5544183 () Bool)

(assert (=> b!4660831 m!5544183))

(declare-fun m!5544185 () Bool)

(assert (=> b!4660828 m!5544185))

(assert (=> b!4659723 d!1480156))

(declare-fun d!1480352 () Bool)

(assert (=> d!1480352 (dynLambda!21608 lambda!200158 (h!58080 (t!359168 oldBucket!40)))))

(declare-fun lt!1822348 () Unit!118984)

(assert (=> d!1480352 (= lt!1822348 (choose!32098 (toList!5233 lt!1821734) lambda!200158 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun e!2908347 () Bool)

(assert (=> d!1480352 e!2908347))

(declare-fun res!1960556 () Bool)

(assert (=> d!1480352 (=> (not res!1960556) (not e!2908347))))

(assert (=> d!1480352 (= res!1960556 (forall!11050 (toList!5233 lt!1821734) lambda!200158))))

(assert (=> d!1480352 (= (forallContained!3250 (toList!5233 lt!1821734) lambda!200158 (h!58080 (t!359168 oldBucket!40))) lt!1822348)))

(declare-fun b!4660832 () Bool)

(assert (=> b!4660832 (= e!2908347 (contains!15088 (toList!5233 lt!1821734) (h!58080 (t!359168 oldBucket!40))))))

(assert (= (and d!1480352 res!1960556) b!4660832))

(declare-fun b_lambda!175105 () Bool)

(assert (=> (not b_lambda!175105) (not d!1480352)))

(declare-fun m!5544187 () Bool)

(assert (=> d!1480352 m!5544187))

(declare-fun m!5544189 () Bool)

(assert (=> d!1480352 m!5544189))

(assert (=> d!1480352 m!5541613))

(declare-fun m!5544191 () Bool)

(assert (=> b!4660832 m!5544191))

(assert (=> b!4659723 d!1480352))

(declare-fun d!1480354 () Bool)

(declare-fun res!1960557 () Bool)

(declare-fun e!2908348 () Bool)

(assert (=> d!1480354 (=> res!1960557 e!2908348)))

(assert (=> d!1480354 (= res!1960557 ((_ is Nil!51928) (t!359168 oldBucket!40)))))

(assert (=> d!1480354 (= (forall!11050 (t!359168 oldBucket!40) lambda!200158) e!2908348)))

(declare-fun b!4660833 () Bool)

(declare-fun e!2908349 () Bool)

(assert (=> b!4660833 (= e!2908348 e!2908349)))

(declare-fun res!1960558 () Bool)

(assert (=> b!4660833 (=> (not res!1960558) (not e!2908349))))

(assert (=> b!4660833 (= res!1960558 (dynLambda!21608 lambda!200158 (h!58080 (t!359168 oldBucket!40))))))

(declare-fun b!4660834 () Bool)

(assert (=> b!4660834 (= e!2908349 (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200158))))

(assert (= (and d!1480354 (not res!1960557)) b!4660833))

(assert (= (and b!4660833 res!1960558) b!4660834))

(declare-fun b_lambda!175107 () Bool)

(assert (=> (not b_lambda!175107) (not b!4660833)))

(assert (=> b!4660833 m!5544187))

(assert (=> b!4660834 m!5541597))

(assert (=> b!4659723 d!1480354))

(declare-fun d!1480356 () Bool)

(declare-fun res!1960559 () Bool)

(declare-fun e!2908350 () Bool)

(assert (=> d!1480356 (=> res!1960559 e!2908350)))

(assert (=> d!1480356 (= res!1960559 ((_ is Nil!51928) (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))

(assert (=> d!1480356 (= (forall!11050 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))) lambda!200157) e!2908350)))

(declare-fun b!4660835 () Bool)

(declare-fun e!2908351 () Bool)

(assert (=> b!4660835 (= e!2908350 e!2908351)))

(declare-fun res!1960560 () Bool)

(assert (=> b!4660835 (=> (not res!1960560) (not e!2908351))))

(assert (=> b!4660835 (= res!1960560 (dynLambda!21608 lambda!200157 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))))))

(declare-fun b!4660836 () Bool)

(assert (=> b!4660836 (= e!2908351 (forall!11050 (t!359168 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))) lambda!200157))))

(assert (= (and d!1480356 (not res!1960559)) b!4660835))

(assert (= (and b!4660835 res!1960560) b!4660836))

(declare-fun b_lambda!175109 () Bool)

(assert (=> (not b_lambda!175109) (not b!4660835)))

(declare-fun m!5544193 () Bool)

(assert (=> b!4660835 m!5544193))

(declare-fun m!5544195 () Bool)

(assert (=> b!4660836 m!5544195))

(assert (=> b!4659723 d!1480356))

(declare-fun d!1480358 () Bool)

(declare-fun res!1960561 () Bool)

(declare-fun e!2908352 () Bool)

(assert (=> d!1480358 (=> res!1960561 e!2908352)))

(assert (=> d!1480358 (= res!1960561 ((_ is Nil!51928) (t!359168 (t!359168 oldBucket!40))))))

(assert (=> d!1480358 (= (forall!11050 (t!359168 (t!359168 oldBucket!40)) lambda!200158) e!2908352)))

(declare-fun b!4660837 () Bool)

(declare-fun e!2908353 () Bool)

(assert (=> b!4660837 (= e!2908352 e!2908353)))

(declare-fun res!1960562 () Bool)

(assert (=> b!4660837 (=> (not res!1960562) (not e!2908353))))

(assert (=> b!4660837 (= res!1960562 (dynLambda!21608 lambda!200158 (h!58080 (t!359168 (t!359168 oldBucket!40)))))))

(declare-fun b!4660838 () Bool)

(assert (=> b!4660838 (= e!2908353 (forall!11050 (t!359168 (t!359168 (t!359168 oldBucket!40))) lambda!200158))))

(assert (= (and d!1480358 (not res!1960561)) b!4660837))

(assert (= (and b!4660837 res!1960562) b!4660838))

(declare-fun b_lambda!175111 () Bool)

(assert (=> (not b_lambda!175111) (not b!4660837)))

(declare-fun m!5544197 () Bool)

(assert (=> b!4660837 m!5544197))

(declare-fun m!5544199 () Bool)

(assert (=> b!4660838 m!5544199))

(assert (=> b!4659723 d!1480358))

(declare-fun d!1480360 () Bool)

(declare-fun res!1960563 () Bool)

(declare-fun e!2908354 () Bool)

(assert (=> d!1480360 (=> res!1960563 e!2908354)))

(assert (=> d!1480360 (= res!1960563 ((_ is Nil!51928) (toList!5233 lt!1821734)))))

(assert (=> d!1480360 (= (forall!11050 (toList!5233 lt!1821734) lambda!200158) e!2908354)))

(declare-fun b!4660839 () Bool)

(declare-fun e!2908355 () Bool)

(assert (=> b!4660839 (= e!2908354 e!2908355)))

(declare-fun res!1960564 () Bool)

(assert (=> b!4660839 (=> (not res!1960564) (not e!2908355))))

(assert (=> b!4660839 (= res!1960564 (dynLambda!21608 lambda!200158 (h!58080 (toList!5233 lt!1821734))))))

(declare-fun b!4660840 () Bool)

(assert (=> b!4660840 (= e!2908355 (forall!11050 (t!359168 (toList!5233 lt!1821734)) lambda!200158))))

(assert (= (and d!1480360 (not res!1960563)) b!4660839))

(assert (= (and b!4660839 res!1960564) b!4660840))

(declare-fun b_lambda!175113 () Bool)

(assert (=> (not b_lambda!175113) (not b!4660839)))

(declare-fun m!5544201 () Bool)

(assert (=> b!4660839 m!5544201))

(declare-fun m!5544203 () Bool)

(assert (=> b!4660840 m!5544203))

(assert (=> b!4659723 d!1480360))

(declare-fun d!1480362 () Bool)

(declare-fun res!1960565 () Bool)

(declare-fun e!2908356 () Bool)

(assert (=> d!1480362 (=> res!1960565 e!2908356)))

(assert (=> d!1480362 (= res!1960565 ((_ is Nil!51931) lt!1821633))))

(assert (=> d!1480362 (= (forall!11052 lt!1821633 lambda!200132) e!2908356)))

(declare-fun b!4660841 () Bool)

(declare-fun e!2908357 () Bool)

(assert (=> b!4660841 (= e!2908356 e!2908357)))

(declare-fun res!1960566 () Bool)

(assert (=> b!4660841 (=> (not res!1960566) (not e!2908357))))

(assert (=> b!4660841 (= res!1960566 (dynLambda!21612 lambda!200132 (h!58085 lt!1821633)))))

(declare-fun b!4660842 () Bool)

(assert (=> b!4660842 (= e!2908357 (forall!11052 (t!359171 lt!1821633) lambda!200132))))

(assert (= (and d!1480362 (not res!1960565)) b!4660841))

(assert (= (and b!4660841 res!1960566) b!4660842))

(declare-fun b_lambda!175115 () Bool)

(assert (=> (not b_lambda!175115) (not b!4660841)))

(declare-fun m!5544205 () Bool)

(assert (=> b!4660841 m!5544205))

(declare-fun m!5544207 () Bool)

(assert (=> b!4660842 m!5544207))

(assert (=> b!4659596 d!1480362))

(assert (=> b!4659706 d!1479606))

(declare-fun d!1480364 () Bool)

(assert (=> d!1480364 (containsKey!2750 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1822349 () Unit!118984)

(assert (=> d!1480364 (= lt!1822349 (choose!32090 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1480364 (invariantList!1306 (toList!5233 lt!1821404))))

(assert (=> d!1480364 (= (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821404) (_1!29821 (h!58080 oldBucket!40))) lt!1822349)))

(declare-fun bs!1068472 () Bool)

(assert (= bs!1068472 d!1480364))

(assert (=> bs!1068472 m!5541549))

(declare-fun m!5544209 () Bool)

(assert (=> bs!1068472 m!5544209))

(assert (=> bs!1068472 m!5542209))

(assert (=> b!4659706 d!1480364))

(declare-fun b!4660843 () Bool)

(declare-fun e!2908358 () List!52052)

(assert (=> b!4660843 (= e!2908358 (t!359168 (t!359168 (t!359168 (tail!8255 oldBucket!40)))))))

(declare-fun b!4660845 () Bool)

(declare-fun e!2908359 () List!52052)

(assert (=> b!4660845 (= e!2908359 (Cons!51928 (h!58080 (t!359168 (t!359168 (tail!8255 oldBucket!40)))) (removePairForKey!1275 (t!359168 (t!359168 (t!359168 (tail!8255 oldBucket!40)))) key!4968)))))

(declare-fun b!4660846 () Bool)

(assert (=> b!4660846 (= e!2908359 Nil!51928)))

(declare-fun b!4660844 () Bool)

(assert (=> b!4660844 (= e!2908358 e!2908359)))

(declare-fun c!797819 () Bool)

(assert (=> b!4660844 (= c!797819 ((_ is Cons!51928) (t!359168 (t!359168 (tail!8255 oldBucket!40)))))))

(declare-fun d!1480366 () Bool)

(declare-fun lt!1822350 () List!52052)

(assert (=> d!1480366 (not (containsKey!2746 lt!1822350 key!4968))))

(assert (=> d!1480366 (= lt!1822350 e!2908358)))

(declare-fun c!797820 () Bool)

(assert (=> d!1480366 (= c!797820 (and ((_ is Cons!51928) (t!359168 (t!359168 (tail!8255 oldBucket!40)))) (= (_1!29821 (h!58080 (t!359168 (t!359168 (tail!8255 oldBucket!40))))) key!4968)))))

(assert (=> d!1480366 (noDuplicateKeys!1652 (t!359168 (t!359168 (tail!8255 oldBucket!40))))))

(assert (=> d!1480366 (= (removePairForKey!1275 (t!359168 (t!359168 (tail!8255 oldBucket!40))) key!4968) lt!1822350)))

(assert (= (and d!1480366 c!797820) b!4660843))

(assert (= (and d!1480366 (not c!797820)) b!4660844))

(assert (= (and b!4660844 c!797819) b!4660845))

(assert (= (and b!4660844 (not c!797819)) b!4660846))

(declare-fun m!5544211 () Bool)

(assert (=> b!4660845 m!5544211))

(declare-fun m!5544213 () Bool)

(assert (=> d!1480366 m!5544213))

(assert (=> d!1480366 m!5543153))

(assert (=> b!4659780 d!1480366))

(assert (=> b!4659768 d!1479648))

(declare-fun d!1480368 () Bool)

(declare-fun res!1960567 () Bool)

(declare-fun e!2908360 () Bool)

(assert (=> d!1480368 (=> res!1960567 e!2908360)))

(assert (=> d!1480368 (= res!1960567 (not ((_ is Cons!51928) (_2!29822 (h!58081 (t!359169 lt!1821143))))))))

(assert (=> d!1480368 (= (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821143)))) e!2908360)))

(declare-fun b!4660847 () Bool)

(declare-fun e!2908361 () Bool)

(assert (=> b!4660847 (= e!2908360 e!2908361)))

(declare-fun res!1960568 () Bool)

(assert (=> b!4660847 (=> (not res!1960568) (not e!2908361))))

(assert (=> b!4660847 (= res!1960568 (not (containsKey!2746 (t!359168 (_2!29822 (h!58081 (t!359169 lt!1821143)))) (_1!29821 (h!58080 (_2!29822 (h!58081 (t!359169 lt!1821143))))))))))

(declare-fun b!4660848 () Bool)

(assert (=> b!4660848 (= e!2908361 (noDuplicateKeys!1652 (t!359168 (_2!29822 (h!58081 (t!359169 lt!1821143))))))))

(assert (= (and d!1480368 (not res!1960567)) b!4660847))

(assert (= (and b!4660847 res!1960568) b!4660848))

(declare-fun m!5544215 () Bool)

(assert (=> b!4660847 m!5544215))

(declare-fun m!5544217 () Bool)

(assert (=> b!4660848 m!5544217))

(assert (=> bs!1066954 d!1480368))

(declare-fun d!1480370 () Bool)

(declare-fun res!1960569 () Bool)

(declare-fun e!2908362 () Bool)

(assert (=> d!1480370 (=> res!1960569 e!2908362)))

(assert (=> d!1480370 (= res!1960569 (and ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))) (= (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40)))) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (=> d!1480370 (= (containsKey!2746 (t!359168 (t!359168 oldBucket!40)) (_1!29821 (h!58080 oldBucket!40))) e!2908362)))

(declare-fun b!4660849 () Bool)

(declare-fun e!2908363 () Bool)

(assert (=> b!4660849 (= e!2908362 e!2908363)))

(declare-fun res!1960570 () Bool)

(assert (=> b!4660849 (=> (not res!1960570) (not e!2908363))))

(assert (=> b!4660849 (= res!1960570 ((_ is Cons!51928) (t!359168 (t!359168 oldBucket!40))))))

(declare-fun b!4660850 () Bool)

(assert (=> b!4660850 (= e!2908363 (containsKey!2746 (t!359168 (t!359168 (t!359168 oldBucket!40))) (_1!29821 (h!58080 oldBucket!40))))))

(assert (= (and d!1480370 (not res!1960569)) b!4660849))

(assert (= (and b!4660849 res!1960570) b!4660850))

(declare-fun m!5544219 () Bool)

(assert (=> b!4660850 m!5544219))

(assert (=> b!4659615 d!1480370))

(assert (=> b!4659557 d!1479402))

(declare-fun d!1480372 () Bool)

(declare-fun res!1960571 () Bool)

(declare-fun e!2908364 () Bool)

(assert (=> d!1480372 (=> res!1960571 e!2908364)))

(assert (=> d!1480372 (= res!1960571 (and ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224))) (= (_1!29821 (h!58080 (t!359168 (t!359168 newBucket!224)))) (_1!29821 (h!58080 (t!359168 newBucket!224))))))))

(assert (=> d!1480372 (= (containsKey!2746 (t!359168 (t!359168 newBucket!224)) (_1!29821 (h!58080 (t!359168 newBucket!224)))) e!2908364)))

(declare-fun b!4660851 () Bool)

(declare-fun e!2908365 () Bool)

(assert (=> b!4660851 (= e!2908364 e!2908365)))

(declare-fun res!1960572 () Bool)

(assert (=> b!4660851 (=> (not res!1960572) (not e!2908365))))

(assert (=> b!4660851 (= res!1960572 ((_ is Cons!51928) (t!359168 (t!359168 newBucket!224))))))

(declare-fun b!4660852 () Bool)

(assert (=> b!4660852 (= e!2908365 (containsKey!2746 (t!359168 (t!359168 (t!359168 newBucket!224))) (_1!29821 (h!58080 (t!359168 newBucket!224)))))))

(assert (= (and d!1480372 (not res!1960571)) b!4660851))

(assert (= (and b!4660851 res!1960572) b!4660852))

(declare-fun m!5544221 () Bool)

(assert (=> b!4660852 m!5544221))

(assert (=> b!4659678 d!1480372))

(assert (=> d!1479110 d!1479208))

(declare-fun d!1480374 () Bool)

(declare-fun res!1960573 () Bool)

(declare-fun e!2908366 () Bool)

(assert (=> d!1480374 (=> res!1960573 e!2908366)))

(assert (=> d!1480374 (= res!1960573 (and ((_ is Cons!51928) lt!1821757) (= (_1!29821 (h!58080 lt!1821757)) key!4968)))))

(assert (=> d!1480374 (= (containsKey!2746 lt!1821757 key!4968) e!2908366)))

(declare-fun b!4660853 () Bool)

(declare-fun e!2908367 () Bool)

(assert (=> b!4660853 (= e!2908366 e!2908367)))

(declare-fun res!1960574 () Bool)

(assert (=> b!4660853 (=> (not res!1960574) (not e!2908367))))

(assert (=> b!4660853 (= res!1960574 ((_ is Cons!51928) lt!1821757))))

(declare-fun b!4660854 () Bool)

(assert (=> b!4660854 (= e!2908367 (containsKey!2746 (t!359168 lt!1821757) key!4968))))

(assert (= (and d!1480374 (not res!1960573)) b!4660853))

(assert (= (and b!4660853 res!1960574) b!4660854))

(declare-fun m!5544223 () Bool)

(assert (=> b!4660854 m!5544223))

(assert (=> d!1479202 d!1480374))

(assert (=> d!1479202 d!1479766))

(assert (=> bs!1066949 d!1479508))

(declare-fun d!1480376 () Bool)

(assert (=> d!1480376 (= (length!544 lt!1821653) (size!35975 lt!1821653))))

(declare-fun bs!1068473 () Bool)

(assert (= bs!1068473 d!1480376))

(declare-fun m!5544225 () Bool)

(assert (=> bs!1068473 m!5544225))

(assert (=> b!4659637 d!1480376))

(assert (=> b!4659637 d!1479972))

(assert (=> d!1479194 d!1479182))

(declare-fun d!1480378 () Bool)

(assert (=> d!1480378 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821248 lt!1821245))))

(assert (=> d!1480378 true))

(declare-fun _$41!397 () Unit!118984)

(assert (=> d!1480378 (= (choose!32082 lt!1821147 lt!1821248 lt!1821245) _$41!397)))

(declare-fun bs!1068474 () Bool)

(assert (= bs!1068474 d!1480378))

(assert (=> bs!1068474 m!5540589))

(assert (=> d!1479194 d!1480378))

(assert (=> d!1479194 d!1479192))

(assert (=> d!1479238 d!1479184))

(declare-fun lt!1822351 () Bool)

(declare-fun d!1480380 () Bool)

(assert (=> d!1480380 (= lt!1822351 (select (content!9013 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821781 lt!1821777)))))

(declare-fun e!2908369 () Bool)

(assert (=> d!1480380 (= lt!1822351 e!2908369)))

(declare-fun res!1960576 () Bool)

(assert (=> d!1480380 (=> (not res!1960576) (not e!2908369))))

(assert (=> d!1480380 (= res!1960576 ((_ is Cons!51929) (toList!5234 lt!1821147)))))

(assert (=> d!1480380 (= (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821781 lt!1821777)) lt!1822351)))

(declare-fun b!4660855 () Bool)

(declare-fun e!2908368 () Bool)

(assert (=> b!4660855 (= e!2908369 e!2908368)))

(declare-fun res!1960575 () Bool)

(assert (=> b!4660855 (=> res!1960575 e!2908368)))

(assert (=> b!4660855 (= res!1960575 (= (h!58081 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821781 lt!1821777)))))

(declare-fun b!4660856 () Bool)

(assert (=> b!4660856 (= e!2908368 (contains!15084 (t!359169 (toList!5234 lt!1821147)) (tuple2!53057 lt!1821781 lt!1821777)))))

(assert (= (and d!1480380 res!1960576) b!4660855))

(assert (= (and b!4660855 (not res!1960575)) b!4660856))

(assert (=> d!1480380 m!5541355))

(declare-fun m!5544227 () Bool)

(assert (=> d!1480380 m!5544227))

(declare-fun m!5544229 () Bool)

(assert (=> b!4660856 m!5544229))

(assert (=> d!1479238 d!1480380))

(assert (=> d!1479238 d!1479190))

(declare-fun d!1480382 () Bool)

(assert (=> d!1480382 (dynLambda!21606 lambda!200163 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))

(declare-fun lt!1822352 () Unit!118984)

(assert (=> d!1480382 (= lt!1822352 (choose!32080 (toList!5234 lt!1821147) lambda!200163 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(declare-fun e!2908370 () Bool)

(assert (=> d!1480382 e!2908370))

(declare-fun res!1960577 () Bool)

(assert (=> d!1480382 (=> (not res!1960577) (not e!2908370))))

(assert (=> d!1480382 (= res!1960577 (forall!11048 (toList!5234 lt!1821147) lambda!200163))))

(assert (=> d!1480382 (= (forallContained!3248 (toList!5234 lt!1821147) lambda!200163 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) lt!1822352)))

(declare-fun b!4660857 () Bool)

(assert (=> b!4660857 (= e!2908370 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))))))

(assert (= (and d!1480382 res!1960577) b!4660857))

(declare-fun b_lambda!175117 () Bool)

(assert (=> (not b_lambda!175117) (not d!1480382)))

(declare-fun m!5544231 () Bool)

(assert (=> d!1480382 m!5544231))

(declare-fun m!5544233 () Bool)

(assert (=> d!1480382 m!5544233))

(declare-fun m!5544235 () Bool)

(assert (=> d!1480382 m!5544235))

(assert (=> b!4660857 m!5541667))

(assert (=> d!1479238 d!1480382))

(assert (=> d!1479238 d!1478820))

(assert (=> d!1479238 d!1479186))

(declare-fun d!1480384 () Bool)

(assert (=> d!1480384 (contains!15084 (toList!5234 lt!1821147) (tuple2!53057 lt!1821781 lt!1821777))))

(declare-fun lt!1822353 () Unit!118984)

(assert (=> d!1480384 (= lt!1822353 (choose!32082 lt!1821147 lt!1821781 lt!1821777))))

(assert (=> d!1480384 (contains!15085 lt!1821147 lt!1821781)))

(assert (=> d!1480384 (= (lemmaGetValueImpliesTupleContained!185 lt!1821147 lt!1821781 lt!1821777) lt!1822353)))

(declare-fun bs!1068475 () Bool)

(assert (= bs!1068475 d!1480384))

(assert (=> bs!1068475 m!5541749))

(declare-fun m!5544237 () Bool)

(assert (=> bs!1068475 m!5544237))

(declare-fun m!5544239 () Bool)

(assert (=> bs!1068475 m!5544239))

(assert (=> d!1479238 d!1480384))

(assert (=> d!1479238 d!1478852))

(assert (=> d!1479238 d!1479196))

(declare-fun d!1480386 () Bool)

(assert (=> d!1480386 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1822354 () Unit!118984)

(assert (=> d!1480386 (= lt!1822354 (choose!32095 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1480386 (invariantList!1306 (toList!5233 lt!1821412))))

(assert (=> d!1480386 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) lt!1822354)))

(declare-fun bs!1068476 () Bool)

(assert (= bs!1068476 d!1480386))

(assert (=> bs!1068476 m!5541581))

(assert (=> bs!1068476 m!5541581))

(assert (=> bs!1068476 m!5541583))

(declare-fun m!5544241 () Bool)

(assert (=> bs!1068476 m!5544241))

(assert (=> bs!1068476 m!5542823))

(assert (=> b!4659721 d!1480386))

(assert (=> b!4659721 d!1479406))

(assert (=> b!4659721 d!1479408))

(declare-fun d!1480388 () Bool)

(assert (=> d!1480388 (contains!15089 (getKeysList!757 (toList!5233 lt!1821412)) (_1!29821 (h!58080 oldBucket!40)))))

(declare-fun lt!1822355 () Unit!118984)

(assert (=> d!1480388 (= lt!1822355 (choose!32096 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1480388 (invariantList!1306 (toList!5233 lt!1821412))))

(assert (=> d!1480388 (= (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821412) (_1!29821 (h!58080 oldBucket!40))) lt!1822355)))

(declare-fun bs!1068477 () Bool)

(assert (= bs!1068477 d!1480388))

(assert (=> bs!1068477 m!5541577))

(assert (=> bs!1068477 m!5541577))

(declare-fun m!5544243 () Bool)

(assert (=> bs!1068477 m!5544243))

(declare-fun m!5544245 () Bool)

(assert (=> bs!1068477 m!5544245))

(assert (=> bs!1068477 m!5542823))

(assert (=> b!4659721 d!1480388))

(assert (=> b!4659752 d!1479672))

(assert (=> b!4659752 d!1479094))

(declare-fun d!1480390 () Bool)

(declare-fun res!1960578 () Bool)

(declare-fun e!2908371 () Bool)

(assert (=> d!1480390 (=> res!1960578 e!2908371)))

(assert (=> d!1480390 (= res!1960578 ((_ is Nil!51929) (t!359169 (toList!5234 lt!1821147))))))

(assert (=> d!1480390 (= (forall!11048 (t!359169 (toList!5234 lt!1821147)) lambda!200029) e!2908371)))

(declare-fun b!4660858 () Bool)

(declare-fun e!2908372 () Bool)

(assert (=> b!4660858 (= e!2908371 e!2908372)))

(declare-fun res!1960579 () Bool)

(assert (=> b!4660858 (=> (not res!1960579) (not e!2908372))))

(assert (=> b!4660858 (= res!1960579 (dynLambda!21606 lambda!200029 (h!58081 (t!359169 (toList!5234 lt!1821147)))))))

(declare-fun b!4660859 () Bool)

(assert (=> b!4660859 (= e!2908372 (forall!11048 (t!359169 (t!359169 (toList!5234 lt!1821147))) lambda!200029))))

(assert (= (and d!1480390 (not res!1960578)) b!4660858))

(assert (= (and b!4660858 res!1960579) b!4660859))

(declare-fun b_lambda!175119 () Bool)

(assert (=> (not b_lambda!175119) (not b!4660858)))

(declare-fun m!5544247 () Bool)

(assert (=> b!4660858 m!5544247))

(declare-fun m!5544249 () Bool)

(assert (=> b!4660859 m!5544249))

(assert (=> b!4659793 d!1480390))

(declare-fun b!4660860 () Bool)

(declare-fun e!2908378 () List!52055)

(assert (=> b!4660860 (= e!2908378 (keys!18406 lt!1821701))))

(declare-fun bm!325620 () Bool)

(declare-fun call!325625 () Bool)

(assert (=> bm!325620 (= call!325625 (contains!15089 e!2908378 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun c!797821 () Bool)

(declare-fun c!797823 () Bool)

(assert (=> bm!325620 (= c!797821 c!797823)))

(declare-fun b!4660861 () Bool)

(assert (=> b!4660861 false))

(declare-fun lt!1822359 () Unit!118984)

(declare-fun lt!1822360 () Unit!118984)

(assert (=> b!4660861 (= lt!1822359 lt!1822360)))

(assert (=> b!4660861 (containsKey!2750 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40)))))

(assert (=> b!4660861 (= lt!1822360 (lemmaInGetKeysListThenContainsKey!756 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2908377 () Unit!118984)

(declare-fun Unit!119240 () Unit!118984)

(assert (=> b!4660861 (= e!2908377 Unit!119240)))

(declare-fun d!1480392 () Bool)

(declare-fun e!2908376 () Bool)

(assert (=> d!1480392 e!2908376))

(declare-fun res!1960580 () Bool)

(assert (=> d!1480392 (=> res!1960580 e!2908376)))

(declare-fun e!2908374 () Bool)

(assert (=> d!1480392 (= res!1960580 e!2908374)))

(declare-fun res!1960581 () Bool)

(assert (=> d!1480392 (=> (not res!1960581) (not e!2908374))))

(declare-fun lt!1822357 () Bool)

(assert (=> d!1480392 (= res!1960581 (not lt!1822357))))

(declare-fun lt!1822361 () Bool)

(assert (=> d!1480392 (= lt!1822357 lt!1822361)))

(declare-fun lt!1822362 () Unit!118984)

(declare-fun e!2908373 () Unit!118984)

(assert (=> d!1480392 (= lt!1822362 e!2908373)))

(assert (=> d!1480392 (= c!797823 lt!1822361)))

(assert (=> d!1480392 (= lt!1822361 (containsKey!2750 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> d!1480392 (= (contains!15083 lt!1821701 (_1!29821 (h!58080 oldBucket!40))) lt!1822357)))

(declare-fun b!4660862 () Bool)

(declare-fun Unit!119241 () Unit!118984)

(assert (=> b!4660862 (= e!2908377 Unit!119241)))

(declare-fun b!4660863 () Bool)

(assert (=> b!4660863 (= e!2908378 (getKeysList!757 (toList!5233 lt!1821701)))))

(declare-fun b!4660864 () Bool)

(declare-fun e!2908375 () Bool)

(assert (=> b!4660864 (= e!2908376 e!2908375)))

(declare-fun res!1960582 () Bool)

(assert (=> b!4660864 (=> (not res!1960582) (not e!2908375))))

(assert (=> b!4660864 (= res!1960582 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4660865 () Bool)

(assert (=> b!4660865 (= e!2908375 (contains!15089 (keys!18406 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660866 () Bool)

(assert (=> b!4660866 (= e!2908373 e!2908377)))

(declare-fun c!797822 () Bool)

(assert (=> b!4660866 (= c!797822 call!325625)))

(declare-fun b!4660867 () Bool)

(declare-fun lt!1822356 () Unit!118984)

(assert (=> b!4660867 (= e!2908373 lt!1822356)))

(declare-fun lt!1822358 () Unit!118984)

(assert (=> b!4660867 (= lt!1822358 (lemmaContainsKeyImpliesGetValueByKeyDefined!1528 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4660867 (isDefined!9113 (getValueByKey!1626 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1822363 () Unit!118984)

(assert (=> b!4660867 (= lt!1822363 lt!1822358)))

(assert (=> b!4660867 (= lt!1822356 (lemmaInListThenGetKeysListContains!752 (toList!5233 lt!1821701) (_1!29821 (h!58080 oldBucket!40))))))

(assert (=> b!4660867 call!325625))

(declare-fun b!4660868 () Bool)

(assert (=> b!4660868 (= e!2908374 (not (contains!15089 (keys!18406 lt!1821701) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1480392 c!797823) b!4660867))

(assert (= (and d!1480392 (not c!797823)) b!4660866))

(assert (= (and b!4660866 c!797822) b!4660861))

(assert (= (and b!4660866 (not c!797822)) b!4660862))

(assert (= (or b!4660867 b!4660866) bm!325620))

(assert (= (and bm!325620 c!797821) b!4660863))

(assert (= (and bm!325620 (not c!797821)) b!4660860))

(assert (= (and d!1480392 res!1960581) b!4660868))

(assert (= (and d!1480392 (not res!1960580)) b!4660864))

(assert (= (and b!4660864 res!1960582) b!4660865))

(declare-fun m!5544251 () Bool)

(assert (=> d!1480392 m!5544251))

(assert (=> b!4660861 m!5544251))

(declare-fun m!5544253 () Bool)

(assert (=> b!4660861 m!5544253))

(declare-fun m!5544255 () Bool)

(assert (=> b!4660868 m!5544255))

(assert (=> b!4660868 m!5544255))

(declare-fun m!5544257 () Bool)

(assert (=> b!4660868 m!5544257))

(declare-fun m!5544259 () Bool)

(assert (=> b!4660863 m!5544259))

(assert (=> b!4660860 m!5544255))

(declare-fun m!5544261 () Bool)

(assert (=> b!4660867 m!5544261))

(assert (=> b!4660867 m!5541541))

(assert (=> b!4660867 m!5541541))

(declare-fun m!5544263 () Bool)

(assert (=> b!4660867 m!5544263))

(declare-fun m!5544265 () Bool)

(assert (=> b!4660867 m!5544265))

(assert (=> b!4660865 m!5544255))

(assert (=> b!4660865 m!5544255))

(assert (=> b!4660865 m!5544257))

(assert (=> b!4660864 m!5541541))

(assert (=> b!4660864 m!5541541))

(assert (=> b!4660864 m!5544263))

(declare-fun m!5544267 () Bool)

(assert (=> bm!325620 m!5544267))

(assert (=> d!1479162 d!1480392))

(declare-fun d!1480394 () Bool)

(declare-fun c!797824 () Bool)

(assert (=> d!1480394 (= c!797824 (and ((_ is Cons!51928) lt!1821703) (= (_1!29821 (h!58080 lt!1821703)) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun e!2908379 () Option!11848)

(assert (=> d!1480394 (= (getValueByKey!1626 lt!1821703 (_1!29821 (h!58080 oldBucket!40))) e!2908379)))

(declare-fun b!4660869 () Bool)

(assert (=> b!4660869 (= e!2908379 (Some!11847 (_2!29821 (h!58080 lt!1821703))))))

(declare-fun b!4660871 () Bool)

(declare-fun e!2908380 () Option!11848)

(assert (=> b!4660871 (= e!2908380 (getValueByKey!1626 (t!359168 lt!1821703) (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660872 () Bool)

(assert (=> b!4660872 (= e!2908380 None!11847)))

(declare-fun b!4660870 () Bool)

(assert (=> b!4660870 (= e!2908379 e!2908380)))

(declare-fun c!797825 () Bool)

(assert (=> b!4660870 (= c!797825 (and ((_ is Cons!51928) lt!1821703) (not (= (_1!29821 (h!58080 lt!1821703)) (_1!29821 (h!58080 oldBucket!40))))))))

(assert (= (and d!1480394 c!797824) b!4660869))

(assert (= (and d!1480394 (not c!797824)) b!4660870))

(assert (= (and b!4660870 c!797825) b!4660871))

(assert (= (and b!4660870 (not c!797825)) b!4660872))

(declare-fun m!5544269 () Bool)

(assert (=> b!4660871 m!5544269))

(assert (=> d!1479162 d!1480394))

(declare-fun d!1480396 () Bool)

(assert (=> d!1480396 (= (getValueByKey!1626 lt!1821703 (_1!29821 (h!58080 oldBucket!40))) (Some!11847 (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun lt!1822366 () Unit!118984)

(declare-fun choose!32106 (List!52052 K!13280 V!13526) Unit!118984)

(assert (=> d!1480396 (= lt!1822366 (choose!32106 lt!1821703 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2908383 () Bool)

(assert (=> d!1480396 e!2908383))

(declare-fun res!1960587 () Bool)

(assert (=> d!1480396 (=> (not res!1960587) (not e!2908383))))

(assert (=> d!1480396 (= res!1960587 (invariantList!1306 lt!1821703))))

(assert (=> d!1480396 (= (lemmaContainsTupThenGetReturnValue!930 lt!1821703 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) lt!1822366)))

(declare-fun b!4660877 () Bool)

(declare-fun res!1960588 () Bool)

(assert (=> b!4660877 (=> (not res!1960588) (not e!2908383))))

(assert (=> b!4660877 (= res!1960588 (containsKey!2750 lt!1821703 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660878 () Bool)

(assert (=> b!4660878 (= e!2908383 (contains!15088 lt!1821703 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))

(assert (= (and d!1480396 res!1960587) b!4660877))

(assert (= (and b!4660877 res!1960588) b!4660878))

(assert (=> d!1480396 m!5541535))

(declare-fun m!5544271 () Bool)

(assert (=> d!1480396 m!5544271))

(declare-fun m!5544273 () Bool)

(assert (=> d!1480396 m!5544273))

(declare-fun m!5544275 () Bool)

(assert (=> b!4660877 m!5544275))

(declare-fun m!5544277 () Bool)

(assert (=> b!4660878 m!5544277))

(assert (=> d!1479162 d!1480396))

(declare-fun d!1480398 () Bool)

(declare-fun e!2908401 () Bool)

(assert (=> d!1480398 e!2908401))

(declare-fun res!1960600 () Bool)

(assert (=> d!1480398 (=> (not res!1960600) (not e!2908401))))

(declare-fun lt!1822398 () List!52052)

(assert (=> d!1480398 (= res!1960600 (invariantList!1306 lt!1822398))))

(declare-fun e!2908402 () List!52052)

(assert (=> d!1480398 (= lt!1822398 e!2908402)))

(declare-fun c!797837 () Bool)

(assert (=> d!1480398 (= c!797837 (and ((_ is Cons!51928) (toList!5233 lt!1821141)) (= (_1!29821 (h!58080 (toList!5233 lt!1821141))) (_1!29821 (h!58080 oldBucket!40)))))))

(assert (=> d!1480398 (invariantList!1306 (toList!5233 lt!1821141))))

(assert (=> d!1480398 (= (insertNoDuplicatedKeys!438 (toList!5233 lt!1821141) (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) lt!1822398)))

(declare-fun b!4660907 () Bool)

(declare-fun e!2908403 () List!52052)

(assert (=> b!4660907 (= e!2908403 (insertNoDuplicatedKeys!438 (t!359168 (toList!5233 lt!1821141)) (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660908 () Bool)

(declare-fun c!797839 () Bool)

(assert (=> b!4660908 (= c!797839 ((_ is Cons!51928) (toList!5233 lt!1821141)))))

(declare-fun e!2908399 () List!52052)

(declare-fun e!2908404 () List!52052)

(assert (=> b!4660908 (= e!2908399 e!2908404)))

(declare-fun b!4660909 () Bool)

(declare-fun res!1960599 () Bool)

(assert (=> b!4660909 (=> (not res!1960599) (not e!2908401))))

(assert (=> b!4660909 (= res!1960599 (containsKey!2750 lt!1822398 (_1!29821 (h!58080 oldBucket!40))))))

(declare-fun b!4660910 () Bool)

(declare-fun call!325636 () List!52052)

(assert (=> b!4660910 (= e!2908404 call!325636)))

(declare-fun b!4660911 () Bool)

(assert (=> b!4660911 (= e!2908403 Nil!51928)))

(declare-fun bm!325629 () Bool)

(declare-fun call!325637 () List!52052)

(declare-fun call!325635 () List!52052)

(assert (=> bm!325629 (= call!325637 call!325635)))

(declare-fun b!4660912 () Bool)

(declare-fun e!2908400 () Bool)

(assert (=> b!4660912 (= e!2908400 (not (containsKey!2750 (toList!5233 lt!1821141) (_1!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4660913 () Bool)

(assert (=> b!4660913 (= e!2908401 (= (content!9016 (getKeysList!757 lt!1822398)) ((_ map or) (content!9016 (getKeysList!757 (toList!5233 lt!1821141))) (store ((as const (Array K!13280 Bool)) false) (_1!29821 (h!58080 oldBucket!40)) true))))))

(declare-fun b!4660914 () Bool)

(assert (=> b!4660914 (= e!2908402 call!325635)))

(declare-fun lt!1822397 () List!52055)

(declare-fun call!325634 () List!52055)

(assert (=> b!4660914 (= lt!1822397 call!325634)))

(declare-fun lt!1822391 () Unit!118984)

(declare-fun lemmaSubseqRefl!133 (List!52055) Unit!118984)

(assert (=> b!4660914 (= lt!1822391 (lemmaSubseqRefl!133 lt!1822397))))

(declare-fun subseq!649 (List!52055 List!52055) Bool)

(assert (=> b!4660914 (subseq!649 lt!1822397 lt!1822397)))

(declare-fun lt!1822392 () Unit!118984)

(assert (=> b!4660914 (= lt!1822392 lt!1822391)))

(declare-fun b!4660915 () Bool)

(declare-fun res!1960597 () Bool)

(assert (=> b!4660915 (=> (not res!1960597) (not e!2908401))))

(assert (=> b!4660915 (= res!1960597 (contains!15088 lt!1822398 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))

(declare-fun b!4660916 () Bool)

(assert (=> b!4660916 (= e!2908399 call!325637)))

(declare-fun bm!325630 () Bool)

(declare-fun lt!1822394 () List!52052)

(assert (=> bm!325630 (= call!325634 (getKeysList!757 (ite c!797837 (toList!5233 lt!1821141) lt!1822394)))))

(declare-fun b!4660917 () Bool)

(assert (=> b!4660917 false))

(declare-fun lt!1822390 () Unit!118984)

(declare-fun lt!1822399 () Unit!118984)

(assert (=> b!4660917 (= lt!1822390 lt!1822399)))

(assert (=> b!4660917 (containsKey!2750 (t!359168 (toList!5233 lt!1821141)) (_1!29821 (h!58080 (toList!5233 lt!1821141))))))

(assert (=> b!4660917 (= lt!1822399 (lemmaInGetKeysListThenContainsKey!756 (t!359168 (toList!5233 lt!1821141)) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun lt!1822396 () Unit!118984)

(declare-fun lt!1822393 () Unit!118984)

(assert (=> b!4660917 (= lt!1822396 lt!1822393)))

(assert (=> b!4660917 (contains!15089 call!325634 (_1!29821 (h!58080 (toList!5233 lt!1821141))))))

(assert (=> b!4660917 (= lt!1822393 (lemmaInListThenGetKeysListContains!752 lt!1822394 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> b!4660917 (= lt!1822394 (insertNoDuplicatedKeys!438 (t!359168 (toList!5233 lt!1821141)) (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))

(declare-fun e!2908398 () Unit!118984)

(declare-fun Unit!119242 () Unit!118984)

(assert (=> b!4660917 (= e!2908398 Unit!119242)))

(declare-fun c!797836 () Bool)

(declare-fun bm!325631 () Bool)

(declare-fun $colon$colon!1068 (List!52052 tuple2!53054) List!52052)

(assert (=> bm!325631 (= call!325635 ($colon$colon!1068 (ite c!797837 (t!359168 (toList!5233 lt!1821141)) (ite c!797836 (toList!5233 lt!1821141) e!2908403)) (ite (or c!797837 c!797836) (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) (ite c!797839 (h!58080 (toList!5233 lt!1821141)) (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))))

(declare-fun b!4660918 () Bool)

(declare-fun Unit!119243 () Unit!118984)

(assert (=> b!4660918 (= e!2908398 Unit!119243)))

(declare-fun b!4660919 () Bool)

(declare-fun lt!1822389 () List!52052)

(assert (=> b!4660919 (= e!2908404 lt!1822389)))

(assert (=> b!4660919 (= lt!1822389 call!325636)))

(declare-fun c!797838 () Bool)

(assert (=> b!4660919 (= c!797838 (containsKey!2750 (insertNoDuplicatedKeys!438 (t!359168 (toList!5233 lt!1821141)) (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))) (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(declare-fun lt!1822395 () Unit!118984)

(assert (=> b!4660919 (= lt!1822395 e!2908398)))

(declare-fun bm!325632 () Bool)

(assert (=> bm!325632 (= call!325636 call!325637)))

(declare-fun c!797840 () Bool)

(assert (=> bm!325632 (= c!797840 c!797839)))

(declare-fun b!4660920 () Bool)

(assert (=> b!4660920 (= e!2908402 e!2908399)))

(declare-fun res!1960598 () Bool)

(assert (=> b!4660920 (= res!1960598 ((_ is Cons!51928) (toList!5233 lt!1821141)))))

(assert (=> b!4660920 (=> (not res!1960598) (not e!2908400))))

(assert (=> b!4660920 (= c!797836 e!2908400)))

(assert (= (and d!1480398 c!797837) b!4660914))

(assert (= (and d!1480398 (not c!797837)) b!4660920))

(assert (= (and b!4660920 res!1960598) b!4660912))

(assert (= (and b!4660920 c!797836) b!4660916))

(assert (= (and b!4660920 (not c!797836)) b!4660908))

(assert (= (and b!4660908 c!797839) b!4660919))

(assert (= (and b!4660908 (not c!797839)) b!4660910))

(assert (= (and b!4660919 c!797838) b!4660917))

(assert (= (and b!4660919 (not c!797838)) b!4660918))

(assert (= (or b!4660919 b!4660910) bm!325632))

(assert (= (and bm!325632 c!797840) b!4660907))

(assert (= (and bm!325632 (not c!797840)) b!4660911))

(assert (= (or b!4660916 bm!325632) bm!325629))

(assert (= (or b!4660914 b!4660917) bm!325630))

(assert (= (or b!4660914 bm!325629) bm!325631))

(assert (= (and d!1480398 res!1960600) b!4660909))

(assert (= (and b!4660909 res!1960599) b!4660915))

(assert (= (and b!4660915 res!1960597) b!4660913))

(declare-fun m!5544279 () Bool)

(assert (=> b!4660917 m!5544279))

(declare-fun m!5544281 () Bool)

(assert (=> b!4660917 m!5544281))

(declare-fun m!5544283 () Bool)

(assert (=> b!4660917 m!5544283))

(declare-fun m!5544285 () Bool)

(assert (=> b!4660917 m!5544285))

(declare-fun m!5544287 () Bool)

(assert (=> b!4660917 m!5544287))

(declare-fun m!5544289 () Bool)

(assert (=> d!1480398 m!5544289))

(declare-fun m!5544291 () Bool)

(assert (=> d!1480398 m!5544291))

(declare-fun m!5544293 () Bool)

(assert (=> b!4660915 m!5544293))

(declare-fun m!5544295 () Bool)

(assert (=> b!4660909 m!5544295))

(assert (=> b!4660919 m!5544285))

(assert (=> b!4660919 m!5544285))

(declare-fun m!5544297 () Bool)

(assert (=> b!4660919 m!5544297))

(declare-fun m!5544299 () Bool)

(assert (=> bm!325630 m!5544299))

(declare-fun m!5544301 () Bool)

(assert (=> bm!325631 m!5544301))

(declare-fun m!5544303 () Bool)

(assert (=> b!4660914 m!5544303))

(declare-fun m!5544305 () Bool)

(assert (=> b!4660914 m!5544305))

(assert (=> b!4660907 m!5544285))

(declare-fun m!5544307 () Bool)

(assert (=> b!4660912 m!5544307))

(declare-fun m!5544309 () Bool)

(assert (=> b!4660913 m!5544309))

(assert (=> b!4660913 m!5542615))

(declare-fun m!5544311 () Bool)

(assert (=> b!4660913 m!5544311))

(assert (=> b!4660913 m!5542615))

(declare-fun m!5544313 () Bool)

(assert (=> b!4660913 m!5544313))

(declare-fun m!5544315 () Bool)

(assert (=> b!4660913 m!5544315))

(assert (=> b!4660913 m!5544313))

(assert (=> d!1479162 d!1480398))

(assert (=> b!4659755 d!1479804))

(assert (=> b!4659755 d!1479806))

(declare-fun tp!1343446 () Bool)

(declare-fun e!2908405 () Bool)

(declare-fun b!4660921 () Bool)

(assert (=> b!4660921 (= e!2908405 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343446))))

(assert (=> b!4659815 (= tp!1343442 e!2908405)))

(assert (= (and b!4659815 ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 oldBucket!40))))) b!4660921))

(declare-fun e!2908406 () Bool)

(declare-fun b!4660922 () Bool)

(declare-fun tp!1343447 () Bool)

(assert (=> b!4660922 (= e!2908406 (and tp_is_empty!29901 tp_is_empty!29903 tp!1343447))))

(assert (=> b!4659816 (= tp!1343443 e!2908406)))

(assert (= (and b!4659816 ((_ is Cons!51928) (t!359168 (t!359168 (t!359168 newBucket!224))))) b!4660922))

(declare-fun b_lambda!175121 () Bool)

(assert (= b_lambda!174987 (or d!1478866 b_lambda!175121)))

(declare-fun bs!1068478 () Bool)

(declare-fun d!1480400 () Bool)

(assert (= bs!1068478 (and d!1480400 d!1478866)))

(assert (=> bs!1068478 (= (dynLambda!21608 lambda!200086 (h!58080 (t!359168 oldBucket!40))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (t!359168 oldBucket!40)))) hash!414))))

(declare-fun m!5544317 () Bool)

(assert (=> bs!1068478 m!5544317))

(assert (=> b!4660645 d!1480400))

(declare-fun b_lambda!175123 () Bool)

(assert (= b_lambda!174887 (or b!4659597 b_lambda!175123)))

(declare-fun bs!1068479 () Bool)

(declare-fun d!1480402 () Bool)

(assert (= bs!1068479 (and d!1480402 b!4659597)))

(assert (=> bs!1068479 (= (dynLambda!21611 lambda!200133 (h!58080 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138))))))

(assert (=> b!4660192 d!1480402))

(declare-fun b_lambda!175125 () Bool)

(assert (= b_lambda!175105 (or b!4659723 b_lambda!175125)))

(declare-fun bs!1068480 () Bool)

(declare-fun d!1480404 () Bool)

(assert (= bs!1068480 (and d!1480404 b!4659723)))

(assert (=> bs!1068480 (= (dynLambda!21608 lambda!200158 (h!58080 (t!359168 oldBucket!40))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(assert (=> bs!1068480 m!5541611))

(assert (=> d!1480352 d!1480404))

(declare-fun b_lambda!175127 () Bool)

(assert (= b_lambda!175007 (or b!4659642 b_lambda!175127)))

(declare-fun bs!1068481 () Bool)

(declare-fun d!1480406 () Bool)

(assert (= bs!1068481 (and d!1480406 b!4659642)))

(assert (=> bs!1068481 (= (dynLambda!21612 lambda!200143 (h!58085 lt!1821652)) (containsKey!2750 (Cons!51928 (h!58080 (toList!5233 lt!1821138)) (t!359168 (toList!5233 lt!1821138))) (h!58085 lt!1821652)))))

(declare-fun m!5544319 () Bool)

(assert (=> bs!1068481 m!5544319))

(assert (=> b!4660763 d!1480406))

(declare-fun b_lambda!175129 () Bool)

(assert (= b_lambda!174919 (or b!4659639 b_lambda!175129)))

(declare-fun bs!1068482 () Bool)

(declare-fun d!1480408 () Bool)

(assert (= bs!1068482 (and d!1480408 b!4659639)))

(assert (=> bs!1068482 (= (dynLambda!21612 lambda!200144 (h!58085 lt!1821653)) (containsKey!2750 (toList!5233 lt!1821138) (h!58085 lt!1821653)))))

(declare-fun m!5544321 () Bool)

(assert (=> bs!1068482 m!5544321))

(assert (=> b!4660388 d!1480408))

(declare-fun b_lambda!175131 () Bool)

(assert (= b_lambda!174985 (or d!1478768 b_lambda!175131)))

(declare-fun bs!1068483 () Bool)

(declare-fun d!1480410 () Bool)

(assert (= bs!1068483 (and d!1480410 d!1478768)))

(assert (=> bs!1068483 (= (dynLambda!21608 lambda!199986 (h!58080 (t!359168 newBucket!224))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (t!359168 newBucket!224)))) hash!414))))

(declare-fun m!5544323 () Bool)

(assert (=> bs!1068483 m!5544323))

(assert (=> b!4660643 d!1480410))

(declare-fun b_lambda!175133 () Bool)

(assert (= b_lambda!174997 (or d!1478858 b_lambda!175133)))

(declare-fun bs!1068484 () Bool)

(declare-fun d!1480412 () Bool)

(assert (= bs!1068484 (and d!1480412 d!1478858)))

(assert (=> bs!1068484 (= (dynLambda!21606 lambda!200085 (h!58081 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))))) (allKeysSameHash!1506 (_2!29822 (h!58081 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))))) (_1!29822 (h!58081 (t!359169 (toList!5234 (ListLongMap!3788 lt!1821143))))) hashF!1389))))

(declare-fun m!5544325 () Bool)

(assert (=> bs!1068484 m!5544325))

(assert (=> b!4660731 d!1480412))

(declare-fun b_lambda!175135 () Bool)

(assert (= b_lambda!175115 (or b!4659596 b_lambda!175135)))

(declare-fun bs!1068485 () Bool)

(declare-fun d!1480414 () Bool)

(assert (= bs!1068485 (and d!1480414 b!4659596)))

(assert (=> bs!1068485 (= (dynLambda!21612 lambda!200132 (h!58085 lt!1821633)) (containsKey!2750 (toList!5233 lt!1821138) (h!58085 lt!1821633)))))

(declare-fun m!5544327 () Bool)

(assert (=> bs!1068485 m!5544327))

(assert (=> b!4660841 d!1480414))

(declare-fun b_lambda!175137 () Bool)

(assert (= b_lambda!174931 (or b!4658974 b_lambda!175137)))

(declare-fun bs!1068486 () Bool)

(declare-fun d!1480416 () Bool)

(assert (= bs!1068486 (and d!1480416 b!4658974)))

(assert (=> bs!1068486 (= (dynLambda!21606 lambda!199980 (h!58081 (t!359169 (t!359169 lt!1821143)))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 (t!359169 lt!1821143))))))))

(declare-fun m!5544329 () Bool)

(assert (=> bs!1068486 m!5544329))

(assert (=> b!4660438 d!1480416))

(declare-fun b_lambda!175139 () Bool)

(assert (= b_lambda!175117 (or d!1479238 b_lambda!175139)))

(declare-fun bs!1068487 () Bool)

(declare-fun d!1480418 () Bool)

(assert (= bs!1068487 (and d!1480418 d!1479238)))

(assert (=> bs!1068487 (= (dynLambda!21606 lambda!200163 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968)))) (noDuplicateKeys!1652 (_2!29822 (tuple2!53057 (hash!3797 hashF!1389 key!4968) (apply!12255 lt!1821147 (hash!3797 hashF!1389 key!4968))))))))

(assert (=> bs!1068487 m!5541787))

(assert (=> d!1480382 d!1480418))

(declare-fun b_lambda!175141 () Bool)

(assert (= b_lambda!174843 (or b!4659723 b_lambda!175141)))

(declare-fun bs!1068488 () Bool)

(declare-fun d!1480420 () Bool)

(assert (= bs!1068488 (and d!1480420 b!4659723)))

(assert (=> bs!1068488 (= (dynLambda!21608 lambda!200158 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))))

(declare-fun m!5544331 () Bool)

(assert (=> bs!1068488 m!5544331))

(assert (=> b!4660013 d!1480420))

(declare-fun b_lambda!175143 () Bool)

(assert (= b_lambda!174879 (or b!4659665 b_lambda!175143)))

(declare-fun bs!1068489 () Bool)

(declare-fun d!1480422 () Bool)

(assert (= bs!1068489 (and d!1480422 b!4659665)))

(assert (=> bs!1068489 (= (dynLambda!21608 lambda!200148 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(assert (=> bs!1068489 m!5541469))

(assert (=> d!1479560 d!1480422))

(declare-fun b_lambda!175145 () Bool)

(assert (= b_lambda!174853 (or d!1478820 b_lambda!175145)))

(declare-fun bs!1068490 () Bool)

(declare-fun d!1480424 () Bool)

(assert (= bs!1068490 (and d!1480424 d!1478820)))

(assert (=> bs!1068490 (= (dynLambda!21606 lambda!200035 (h!58081 (t!359169 (toList!5234 lt!1821147)))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 (toList!5234 lt!1821147))))))))

(declare-fun m!5544333 () Bool)

(assert (=> bs!1068490 m!5544333))

(assert (=> b!4660066 d!1480424))

(declare-fun b_lambda!175147 () Bool)

(assert (= b_lambda!175119 (or d!1478772 b_lambda!175147)))

(declare-fun bs!1068491 () Bool)

(declare-fun d!1480426 () Bool)

(assert (= bs!1068491 (and d!1480426 d!1478772)))

(assert (=> bs!1068491 (= (dynLambda!21606 lambda!200029 (h!58081 (t!359169 (toList!5234 lt!1821147)))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 (toList!5234 lt!1821147))))))))

(assert (=> bs!1068491 m!5544333))

(assert (=> b!4660858 d!1480426))

(declare-fun b_lambda!175149 () Bool)

(assert (= b_lambda!174875 (or b!4659665 b_lambda!175149)))

(declare-fun bs!1068492 () Bool)

(declare-fun d!1480428 () Bool)

(assert (= bs!1068492 (and d!1480428 b!4659665)))

(assert (=> bs!1068492 (= (dynLambda!21608 lambda!200148 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144))))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (t!359168 (_2!29822 (h!58081 lt!1821144)))))))))

(declare-fun m!5544335 () Bool)

(assert (=> bs!1068492 m!5544335))

(assert (=> b!4660149 d!1480428))

(declare-fun b_lambda!175151 () Bool)

(assert (= b_lambda!174845 (or d!1478838 b_lambda!175151)))

(declare-fun bs!1068493 () Bool)

(declare-fun d!1480430 () Bool)

(assert (= bs!1068493 (and d!1480430 d!1478838)))

(assert (=> bs!1068493 (= (dynLambda!21608 lambda!200078 (h!58080 (t!359168 oldBucket!40))) (contains!15083 lt!1821400 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun m!5544337 () Bool)

(assert (=> bs!1068493 m!5544337))

(assert (=> b!4660015 d!1480430))

(declare-fun b_lambda!175153 () Bool)

(assert (= b_lambda!174949 (or d!1479212 b_lambda!175153)))

(declare-fun bs!1068494 () Bool)

(declare-fun d!1480432 () Bool)

(assert (= bs!1068494 (and d!1480432 d!1479212)))

(assert (=> bs!1068494 (= (dynLambda!21606 lambda!200160 (h!58081 (toList!5234 lt!1821147))) (allKeysSameHash!1506 (_2!29822 (h!58081 (toList!5234 lt!1821147))) (_1!29822 (h!58081 (toList!5234 lt!1821147))) hashF!1389))))

(declare-fun m!5544339 () Bool)

(assert (=> bs!1068494 m!5544339))

(assert (=> b!4660495 d!1480432))

(declare-fun b_lambda!175155 () Bool)

(assert (= b_lambda!174913 (or b!4659640 b_lambda!175155)))

(declare-fun bs!1068495 () Bool)

(declare-fun d!1480434 () Bool)

(assert (= bs!1068495 (and d!1480434 b!4659640)))

(assert (=> bs!1068495 (= (dynLambda!21611 lambda!200145 (h!58080 (toList!5233 lt!1821138))) (_1!29821 (h!58080 (toList!5233 lt!1821138))))))

(assert (=> b!4660336 d!1480434))

(declare-fun b_lambda!175157 () Bool)

(assert (= b_lambda!174943 (or b!4659241 b_lambda!175157)))

(declare-fun bs!1068496 () Bool)

(declare-fun d!1480436 () Bool)

(assert (= bs!1068496 (and d!1480436 b!4659241)))

(assert (=> bs!1068496 (= (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (toList!5233 lt!1821412)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821412))))))))

(declare-fun m!5544341 () Bool)

(assert (=> bs!1068496 m!5544341))

(assert (=> b!4660489 d!1480436))

(declare-fun b_lambda!175159 () Bool)

(assert (= b_lambda!174915 (or d!1479132 b_lambda!175159)))

(declare-fun bs!1068497 () Bool)

(declare-fun d!1480438 () Bool)

(assert (= bs!1068497 (and d!1480438 d!1479132)))

(assert (=> bs!1068497 (= (dynLambda!21608 lambda!200149 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))) (contains!15083 lt!1821663 (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))))

(declare-fun m!5544343 () Bool)

(assert (=> bs!1068497 m!5544343))

(assert (=> b!4660341 d!1480438))

(declare-fun b_lambda!175161 () Bool)

(assert (= b_lambda!174937 (or d!1479170 b_lambda!175161)))

(declare-fun bs!1068498 () Bool)

(declare-fun d!1480440 () Bool)

(assert (= bs!1068498 (and d!1480440 d!1479170)))

(assert (=> bs!1068498 (= (dynLambda!21608 lambda!200159 (h!58080 (t!359168 oldBucket!40))) (contains!15083 lt!1821722 (_1!29821 (h!58080 (t!359168 oldBucket!40)))))))

(declare-fun m!5544345 () Bool)

(assert (=> bs!1068498 m!5544345))

(assert (=> b!4660453 d!1480440))

(declare-fun b_lambda!175163 () Bool)

(assert (= b_lambda!174967 (or b!4659641 b_lambda!175163)))

(declare-fun bs!1068499 () Bool)

(declare-fun d!1480442 () Bool)

(assert (= bs!1068499 (and d!1480442 b!4659641)))

(assert (=> bs!1068499 (= (dynLambda!21612 lambda!200142 (_1!29821 (h!58080 (toList!5233 lt!1821138)))) (containsKey!2750 (t!359168 (toList!5233 lt!1821138)) (_1!29821 (h!58080 (toList!5233 lt!1821138)))))))

(assert (=> bs!1068499 m!5541415))

(assert (=> d!1479890 d!1480442))

(declare-fun b_lambda!175165 () Bool)

(assert (= b_lambda!175111 (or b!4659723 b_lambda!175165)))

(declare-fun bs!1068500 () Bool)

(declare-fun d!1480444 () Bool)

(assert (= bs!1068500 (and d!1480444 b!4659723)))

(assert (=> bs!1068500 (= (dynLambda!21608 lambda!200158 (h!58080 (t!359168 (t!359168 oldBucket!40)))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40))))))))

(declare-fun m!5544347 () Bool)

(assert (=> bs!1068500 m!5544347))

(assert (=> b!4660837 d!1480444))

(declare-fun b_lambda!175167 () Bool)

(assert (= b_lambda!174907 (or d!1479132 b_lambda!175167)))

(declare-fun bs!1068501 () Bool)

(declare-fun d!1480446 () Bool)

(assert (= bs!1068501 (and d!1480446 d!1479132)))

(assert (=> bs!1068501 (= (dynLambda!21608 lambda!200149 (h!58080 (_2!29822 (h!58081 lt!1821144)))) (contains!15083 lt!1821663 (_1!29821 (h!58080 (_2!29822 (h!58081 lt!1821144))))))))

(declare-fun m!5544349 () Bool)

(assert (=> bs!1068501 m!5544349))

(assert (=> b!4660300 d!1480446))

(declare-fun b_lambda!175169 () Bool)

(assert (= b_lambda!174777 (or (and b!4660660 (= lambda!200253 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660225 (= lambda!200203 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659723 (= lambda!200158 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479614 (= lambda!200205 (ite c!797509 lambda!200075 lambda!200077))) (and d!1480108 (= lambda!200270 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479840 (= lambda!200226 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479372 (= lambda!200180 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479132 (= lambda!200149 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659665 (= lambda!200147 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479846 (= lambda!200229 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660227 (= lambda!200199 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660827 (= lambda!200273 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479862 (= lambda!200234 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479990 (= lambda!200255 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660662 (= lambda!200250 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659243 (= lambda!200075 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659241 (= lambda!200076 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660829 (= lambda!200271 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479158 (= lambda!200155 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659723 (= lambda!200157 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660660 (= lambda!200252 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478866 (= lambda!200086 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479526 (= lambda!200185 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479170 (= lambda!200159 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479240 (= lambda!200166 (ite c!797509 lambda!200075 lambda!200077))) (and d!1480156 (= lambda!200274 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478838 (= lambda!200078 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659725 (= lambda!200156 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660126 (= lambda!200188 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660124 (= lambda!200190 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660124 (= lambda!200191 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478768 (= lambda!199986 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479528 (= lambda!200192 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659241 (= lambda!200077 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660827 (= lambda!200272 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659667 (= lambda!200146 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479832 (= lambda!200224 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659665 (= lambda!200148 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660225 (= lambda!200201 (ite c!797509 lambda!200075 lambda!200077))) b_lambda!175169)))

(declare-fun bs!1068502 () Bool)

(declare-fun d!1480448 () Bool)

(assert (= bs!1068502 (and d!1480448 d!1479862)))

(assert (=> bs!1068502 (= (dynLambda!21608 lambda!200234 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544351 () Bool)

(assert (=> bs!1068502 m!5544351))

(assert (=> (and d!1479862 (= lambda!200234 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480448))

(declare-fun bs!1068503 () Bool)

(declare-fun d!1480450 () Bool)

(assert (= bs!1068503 (and d!1480450 b!4660660)))

(assert (=> bs!1068503 (= (dynLambda!21608 lambda!200252 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068503 m!5541487))

(declare-fun m!5544353 () Bool)

(assert (=> bs!1068503 m!5544353))

(assert (=> (and b!4660660 (= lambda!200252 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480450))

(declare-fun bs!1068504 () Bool)

(declare-fun d!1480452 () Bool)

(assert (= bs!1068504 (and d!1480452 d!1480156)))

(assert (=> bs!1068504 (= (dynLambda!21608 lambda!200274 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1822329 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544355 () Bool)

(assert (=> bs!1068504 m!5544355))

(assert (=> (and d!1480156 (= lambda!200274 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480452))

(declare-fun bs!1068505 () Bool)

(declare-fun d!1480454 () Bool)

(assert (= bs!1068505 (and d!1480454 b!4660126)))

(assert (=> bs!1068505 (= (dynLambda!21608 lambda!200188 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068505 m!5541463))

(declare-fun m!5544357 () Bool)

(assert (=> bs!1068505 m!5544357))

(assert (=> (and b!4660126 (= lambda!200188 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480454))

(declare-fun bs!1068506 () Bool)

(declare-fun d!1480456 () Bool)

(assert (= bs!1068506 (and d!1480456 d!1478838)))

(assert (=> bs!1068506 (= (dynLambda!21608 lambda!200078 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821400 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544359 () Bool)

(assert (=> bs!1068506 m!5544359))

(assert (=> (and d!1478838 (= lambda!200078 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480456))

(declare-fun bs!1068507 () Bool)

(declare-fun d!1480458 () Bool)

(assert (= bs!1068507 (and d!1480458 b!4660827)))

(assert (=> bs!1068507 (= (dynLambda!21608 lambda!200272 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068507 m!5541605))

(declare-fun m!5544361 () Bool)

(assert (=> bs!1068507 m!5544361))

(assert (=> (and b!4660827 (= lambda!200272 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480458))

(declare-fun bs!1068508 () Bool)

(declare-fun d!1480460 () Bool)

(assert (= bs!1068508 (and d!1480460 d!1479132)))

(assert (=> bs!1068508 (= (dynLambda!21608 lambda!200149 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821663 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544363 () Bool)

(assert (=> bs!1068508 m!5544363))

(assert (=> (and d!1479132 (= lambda!200149 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480460))

(declare-fun bs!1068509 () Bool)

(declare-fun d!1480462 () Bool)

(assert (= bs!1068509 (and d!1480462 d!1479158)))

(assert (=> bs!1068509 (= (dynLambda!21608 lambda!200155 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068509 m!5544351))

(assert (=> (and d!1479158 (= lambda!200155 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480462))

(declare-fun bs!1068510 () Bool)

(declare-fun d!1480464 () Bool)

(assert (= bs!1068510 (and d!1480464 d!1479832)))

(assert (=> bs!1068510 (= (dynLambda!21608 lambda!200224 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068510 m!5540821))

(declare-fun m!5544365 () Bool)

(assert (=> bs!1068510 m!5544365))

(assert (=> (and d!1479832 (= lambda!200224 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480464))

(declare-fun bs!1068511 () Bool)

(declare-fun d!1480466 () Bool)

(assert (= bs!1068511 (and d!1480466 b!4660829)))

(assert (=> bs!1068511 (= (dynLambda!21608 lambda!200271 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068511 m!5541605))

(assert (=> bs!1068511 m!5544361))

(assert (=> (and b!4660829 (= lambda!200271 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480466))

(declare-fun bs!1068512 () Bool)

(declare-fun d!1480468 () Bool)

(assert (= bs!1068512 (and d!1480468 b!4660662)))

(assert (=> bs!1068512 (= (dynLambda!21608 lambda!200250 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068512 m!5541487))

(assert (=> bs!1068512 m!5544353))

(assert (=> (and b!4660662 (= lambda!200250 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480468))

(declare-fun bs!1068513 () Bool)

(declare-fun d!1480470 () Bool)

(assert (= bs!1068513 (and d!1480470 b!4660124)))

(assert (=> bs!1068513 (= (dynLambda!21608 lambda!200191 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821937 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544367 () Bool)

(assert (=> bs!1068513 m!5544367))

(assert (=> (and b!4660124 (= lambda!200191 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480470))

(declare-fun bs!1068514 () Bool)

(declare-fun d!1480472 () Bool)

(assert (= bs!1068514 (and d!1480472 d!1479528)))

(assert (=> bs!1068514 (= (dynLambda!21608 lambda!200192 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821933 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544369 () Bool)

(assert (=> bs!1068514 m!5544369))

(assert (=> (and d!1479528 (= lambda!200192 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480472))

(declare-fun bs!1068515 () Bool)

(declare-fun d!1480474 () Bool)

(assert (= bs!1068515 (and d!1480474 b!4660827)))

(assert (=> bs!1068515 (= (dynLambda!21608 lambda!200273 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1822333 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544371 () Bool)

(assert (=> bs!1068515 m!5544371))

(assert (=> (and b!4660827 (= lambda!200273 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480474))

(declare-fun bs!1068516 () Bool)

(declare-fun d!1480476 () Bool)

(assert (= bs!1068516 (and d!1480476 b!4659723)))

(assert (=> bs!1068516 (= (dynLambda!21608 lambda!200157 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068516 m!5540769))

(declare-fun m!5544373 () Bool)

(assert (=> bs!1068516 m!5544373))

(assert (=> (and b!4659723 (= lambda!200157 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480476))

(declare-fun bs!1068517 () Bool)

(declare-fun d!1480478 () Bool)

(assert (= bs!1068517 (and d!1480478 d!1479846)))

(assert (=> bs!1068517 (= (dynLambda!21608 lambda!200229 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068517 m!5540769))

(assert (=> bs!1068517 m!5544373))

(assert (=> (and d!1479846 (= lambda!200229 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480478))

(declare-fun bs!1068518 () Bool)

(declare-fun d!1480480 () Bool)

(assert (= bs!1068518 (and d!1480480 d!1479526)))

(assert (=> bs!1068518 (= (dynLambda!21608 lambda!200185 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544375 () Bool)

(assert (=> bs!1068518 m!5544375))

(assert (=> (and d!1479526 (= lambda!200185 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480480))

(declare-fun bs!1068519 () Bool)

(declare-fun d!1480482 () Bool)

(assert (= bs!1068519 (and d!1480482 d!1479170)))

(assert (=> bs!1068519 (= (dynLambda!21608 lambda!200159 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821722 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544377 () Bool)

(assert (=> bs!1068519 m!5544377))

(assert (=> (and d!1479170 (= lambda!200159 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480482))

(declare-fun bs!1068520 () Bool)

(declare-fun d!1480484 () Bool)

(assert (= bs!1068520 (and d!1480484 d!1478768)))

(assert (=> bs!1068520 (= (dynLambda!21608 lambda!199986 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))) hash!414))))

(declare-fun m!5544379 () Bool)

(assert (=> bs!1068520 m!5544379))

(assert (=> (and d!1478768 (= lambda!199986 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480484))

(declare-fun bs!1068521 () Bool)

(declare-fun d!1480486 () Bool)

(assert (= bs!1068521 (and d!1480486 b!4659723)))

(assert (=> bs!1068521 (= (dynLambda!21608 lambda!200158 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544381 () Bool)

(assert (=> bs!1068521 m!5544381))

(assert (=> (and b!4659723 (= lambda!200158 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480486))

(declare-fun bs!1068522 () Bool)

(declare-fun d!1480488 () Bool)

(assert (= bs!1068522 (and d!1480488 b!4660225)))

(assert (=> bs!1068522 (= (dynLambda!21608 lambda!200203 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1822000 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544383 () Bool)

(assert (=> bs!1068522 m!5544383))

(assert (=> (and b!4660225 (= lambda!200203 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480488))

(declare-fun bs!1068523 () Bool)

(declare-fun d!1480490 () Bool)

(assert (= bs!1068523 (and d!1480490 b!4659243)))

(assert (=> bs!1068523 (= (dynLambda!21608 lambda!200075 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544385 () Bool)

(assert (=> bs!1068523 m!5544385))

(assert (=> (and b!4659243 (= lambda!200075 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480490))

(declare-fun bs!1068524 () Bool)

(declare-fun d!1480492 () Bool)

(assert (= bs!1068524 (and d!1480492 b!4659665)))

(assert (=> bs!1068524 (= (dynLambda!21608 lambda!200148 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068524 m!5544375))

(assert (=> (and b!4659665 (= lambda!200148 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480492))

(declare-fun bs!1068525 () Bool)

(declare-fun d!1480494 () Bool)

(assert (= bs!1068525 (and d!1480494 b!4659725)))

(assert (=> bs!1068525 (= (dynLambda!21608 lambda!200156 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068525 m!5540769))

(assert (=> bs!1068525 m!5544373))

(assert (=> (and b!4659725 (= lambda!200156 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480494))

(declare-fun bs!1068526 () Bool)

(declare-fun d!1480496 () Bool)

(assert (= bs!1068526 (and d!1480496 b!4660225)))

(assert (=> bs!1068526 (= (dynLambda!21608 lambda!200201 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068526 m!5541351))

(declare-fun m!5544387 () Bool)

(assert (=> bs!1068526 m!5544387))

(assert (=> (and b!4660225 (= lambda!200201 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480496))

(declare-fun bs!1068527 () Bool)

(declare-fun d!1480498 () Bool)

(assert (= bs!1068527 (and d!1480498 b!4659665)))

(assert (=> bs!1068527 (= (dynLambda!21608 lambda!200147 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068527 m!5540821))

(assert (=> bs!1068527 m!5544365))

(assert (=> (and b!4659665 (= lambda!200147 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480498))

(declare-fun bs!1068528 () Bool)

(declare-fun d!1480500 () Bool)

(assert (= bs!1068528 (and d!1480500 b!4659241)))

(assert (=> bs!1068528 (= (dynLambda!21608 lambda!200077 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068528 m!5544351))

(assert (=> (and b!4659241 (= lambda!200077 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480500))

(declare-fun bs!1068529 () Bool)

(declare-fun d!1480502 () Bool)

(assert (= bs!1068529 (and d!1480502 d!1479990)))

(assert (=> bs!1068529 (= (dynLambda!21608 lambda!200255 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1822223 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544389 () Bool)

(assert (=> bs!1068529 m!5544389))

(assert (=> (and d!1479990 (= lambda!200255 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480502))

(declare-fun bs!1068530 () Bool)

(declare-fun d!1480504 () Bool)

(assert (= bs!1068530 (and d!1480504 d!1478866)))

(assert (=> bs!1068530 (= (dynLambda!21608 lambda!200086 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))) hash!414))))

(assert (=> bs!1068530 m!5544379))

(assert (=> (and d!1478866 (= lambda!200086 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480504))

(declare-fun bs!1068531 () Bool)

(declare-fun d!1480506 () Bool)

(assert (= bs!1068531 (and d!1480506 b!4660124)))

(assert (=> bs!1068531 (= (dynLambda!21608 lambda!200190 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068531 m!5541463))

(assert (=> bs!1068531 m!5544357))

(assert (=> (and b!4660124 (= lambda!200190 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480506))

(declare-fun bs!1068532 () Bool)

(declare-fun d!1480508 () Bool)

(assert (= bs!1068532 (and d!1480508 d!1480108)))

(assert (=> bs!1068532 (= (dynLambda!21608 lambda!200270 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068532 m!5544381))

(assert (=> (and d!1480108 (= lambda!200270 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480508))

(declare-fun bs!1068533 () Bool)

(declare-fun d!1480510 () Bool)

(assert (= bs!1068533 (and d!1480510 b!4660660)))

(assert (=> bs!1068533 (= (dynLambda!21608 lambda!200253 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1822227 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544391 () Bool)

(assert (=> bs!1068533 m!5544391))

(assert (=> (and b!4660660 (= lambda!200253 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480510))

(declare-fun bs!1068534 () Bool)

(declare-fun d!1480512 () Bool)

(assert (= bs!1068534 (and d!1480512 b!4660227)))

(assert (=> bs!1068534 (= (dynLambda!21608 lambda!200199 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068534 m!5541351))

(assert (=> bs!1068534 m!5544387))

(assert (=> (and b!4660227 (= lambda!200199 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480512))

(declare-fun bs!1068535 () Bool)

(declare-fun d!1480514 () Bool)

(assert (= bs!1068535 (and d!1480514 b!4659667)))

(assert (=> bs!1068535 (= (dynLambda!21608 lambda!200146 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068535 m!5540821))

(assert (=> bs!1068535 m!5544365))

(assert (=> (and b!4659667 (= lambda!200146 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480514))

(declare-fun bs!1068536 () Bool)

(declare-fun d!1480516 () Bool)

(assert (= bs!1068536 (and d!1480516 b!4659241)))

(assert (=> bs!1068536 (= (dynLambda!21608 lambda!200076 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068536 m!5544385))

(assert (=> (and b!4659241 (= lambda!200076 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480516))

(declare-fun bs!1068537 () Bool)

(declare-fun d!1480518 () Bool)

(assert (= bs!1068537 (and d!1480518 d!1479240)))

(assert (=> bs!1068537 (= (dynLambda!21608 lambda!200166 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068537 m!5544385))

(assert (=> (and d!1479240 (= lambda!200166 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480518))

(declare-fun bs!1068538 () Bool)

(declare-fun d!1480520 () Bool)

(assert (= bs!1068538 (and d!1480520 d!1479372)))

(assert (=> bs!1068538 (= (dynLambda!21608 lambda!200180 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(assert (=> bs!1068538 m!5544385))

(assert (=> (and d!1479372 (= lambda!200180 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480520))

(declare-fun bs!1068539 () Bool)

(declare-fun d!1480522 () Bool)

(assert (= bs!1068539 (and d!1480522 d!1479840)))

(assert (=> bs!1068539 (= (dynLambda!21608 lambda!200226 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))) (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143))))))))

(assert (=> bs!1068539 m!5544379))

(assert (=> (and d!1479840 (= lambda!200226 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480522))

(declare-fun bs!1068540 () Bool)

(declare-fun d!1480524 () Bool)

(assert (= bs!1068540 (and d!1480524 d!1479614)))

(assert (=> bs!1068540 (= (dynLambda!21608 lambda!200205 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40))) (contains!15083 lt!1821996 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) oldBucket!40)))))))

(declare-fun m!5544393 () Bool)

(assert (=> bs!1068540 m!5544393))

(assert (=> (and d!1479614 (= lambda!200205 (ite c!797509 lambda!200075 lambda!200077)) b!4659799) d!1480524))

(declare-fun b_lambda!175171 () Bool)

(assert (= b_lambda!174835 (or b!4659241 b_lambda!175171)))

(declare-fun bs!1068541 () Bool)

(declare-fun d!1480526 () Bool)

(assert (= bs!1068541 (and d!1480526 b!4659241)))

(assert (=> bs!1068541 (= (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (toList!5233 lt!1821141)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821141))))))))

(declare-fun m!5544395 () Bool)

(assert (=> bs!1068541 m!5544395))

(assert (=> b!4659938 d!1480526))

(declare-fun b_lambda!175173 () Bool)

(assert (= b_lambda!174935 (or d!1478856 b_lambda!175173)))

(declare-fun bs!1068542 () Bool)

(declare-fun d!1480528 () Bool)

(assert (= bs!1068542 (and d!1480528 d!1478856)))

(assert (=> bs!1068542 (= (dynLambda!21606 lambda!200082 (h!58081 (t!359169 lt!1821144))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821144)))))))

(assert (=> bs!1068542 m!5543693))

(assert (=> b!4660442 d!1480528))

(declare-fun b_lambda!175175 () Bool)

(assert (= b_lambda!174981 (or b!4659241 b_lambda!175175)))

(declare-fun bs!1068543 () Bool)

(declare-fun d!1480530 () Bool)

(assert (= bs!1068543 (and d!1480530 b!4659241)))

(assert (=> bs!1068543 (= (dynLambda!21608 lambda!200076 (h!58080 (t!359168 (toList!5233 lt!1821141)))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821141))))))))

(declare-fun m!5544397 () Bool)

(assert (=> bs!1068543 m!5544397))

(assert (=> b!4660589 d!1480530))

(declare-fun b_lambda!175177 () Bool)

(assert (= b_lambda!174873 (or b!4659665 b_lambda!175177)))

(declare-fun bs!1068544 () Bool)

(declare-fun d!1480532 () Bool)

(assert (= bs!1068544 (and d!1480532 b!4659665)))

(assert (=> bs!1068544 (= (dynLambda!21608 lambda!200147 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))))

(assert (=> bs!1068544 m!5540821))

(declare-fun m!5544399 () Bool)

(assert (=> bs!1068544 m!5544399))

(assert (=> b!4660147 d!1480532))

(declare-fun b_lambda!175179 () Bool)

(assert (= b_lambda!175109 (or b!4659723 b_lambda!175179)))

(declare-fun bs!1068545 () Bool)

(declare-fun d!1480534 () Bool)

(assert (= bs!1068545 (and d!1480534 b!4659723)))

(assert (=> bs!1068545 (= (dynLambda!21608 lambda!200157 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))))

(assert (=> bs!1068545 m!5540769))

(declare-fun m!5544401 () Bool)

(assert (=> bs!1068545 m!5544401))

(assert (=> b!4660835 d!1480534))

(declare-fun b_lambda!175181 () Bool)

(assert (= b_lambda!174883 (or b!4659241 b_lambda!175181)))

(declare-fun bs!1068546 () Bool)

(declare-fun d!1480536 () Bool)

(assert (= bs!1068546 (and d!1480536 b!4659241)))

(assert (=> bs!1068546 (= (dynLambda!21608 lambda!200077 (h!58080 (t!359168 (t!359168 oldBucket!40)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (t!359168 (t!359168 oldBucket!40))))))))

(declare-fun m!5544403 () Bool)

(assert (=> bs!1068546 m!5544403))

(assert (=> b!4660165 d!1480536))

(declare-fun b_lambda!175183 () Bool)

(assert (= b_lambda!174999 (or d!1479134 b_lambda!175183)))

(declare-fun bs!1068547 () Bool)

(declare-fun d!1480538 () Bool)

(assert (= bs!1068547 (and d!1480538 d!1479134)))

(assert (=> bs!1068547 (= (dynLambda!21606 lambda!200150 (h!58081 (t!359169 lt!1821144))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821144)))))))

(assert (=> bs!1068547 m!5543693))

(assert (=> b!4660733 d!1480538))

(declare-fun b_lambda!175185 () Bool)

(assert (= b_lambda!175113 (or b!4659723 b_lambda!175185)))

(declare-fun bs!1068548 () Bool)

(declare-fun d!1480540 () Bool)

(assert (= bs!1068548 (and d!1480540 b!4659723)))

(assert (=> bs!1068548 (= (dynLambda!21608 lambda!200158 (h!58080 (toList!5233 lt!1821734))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (toList!5233 lt!1821734)))))))

(declare-fun m!5544405 () Bool)

(assert (=> bs!1068548 m!5544405))

(assert (=> b!4660839 d!1480540))

(declare-fun b_lambda!175187 () Bool)

(assert (= b_lambda!174841 (or d!1479088 b_lambda!175187)))

(declare-fun bs!1068549 () Bool)

(declare-fun d!1480542 () Bool)

(assert (= bs!1068549 (and d!1480542 d!1479088)))

(assert (=> bs!1068549 (= (dynLambda!21606 lambda!200127 (h!58081 (toList!5234 lt!1821147))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (toList!5234 lt!1821147)))))))

(assert (=> bs!1068549 m!5541789))

(assert (=> b!4660005 d!1480542))

(declare-fun b_lambda!175189 () Bool)

(assert (= b_lambda!174905 (or d!1479170 b_lambda!175189)))

(declare-fun bs!1068550 () Bool)

(declare-fun d!1480544 () Bool)

(assert (= bs!1068550 (and d!1480544 d!1479170)))

(assert (=> bs!1068550 (= (dynLambda!21608 lambda!200159 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40))))) (contains!15083 lt!1821722 (_1!29821 (h!58080 (toList!5233 (+!1992 lt!1821141 (h!58080 oldBucket!40)))))))))

(declare-fun m!5544407 () Bool)

(assert (=> bs!1068550 m!5544407))

(assert (=> b!4660296 d!1480544))

(declare-fun b_lambda!175191 () Bool)

(assert (= b_lambda!175009 (or b!4658974 b_lambda!175191)))

(declare-fun bs!1068551 () Bool)

(declare-fun d!1480546 () Bool)

(assert (= bs!1068551 (and d!1480546 b!4658974)))

(assert (=> bs!1068551 (= (dynLambda!21606 lambda!199980 (h!58081 (t!359169 lt!1821144))) (noDuplicateKeys!1652 (_2!29822 (h!58081 (t!359169 lt!1821144)))))))

(assert (=> bs!1068551 m!5543693))

(assert (=> b!4660799 d!1480546))

(declare-fun b_lambda!175193 () Bool)

(assert (= b_lambda!174909 (or d!1478838 b_lambda!175193)))

(declare-fun bs!1068552 () Bool)

(declare-fun d!1480548 () Bool)

(assert (= bs!1068552 (and d!1480548 d!1478838)))

(assert (=> bs!1068552 (= (dynLambda!21608 lambda!200078 (h!58080 (t!359168 (toList!5233 lt!1821141)))) (contains!15083 lt!1821400 (_1!29821 (h!58080 (t!359168 (toList!5233 lt!1821141))))))))

(declare-fun m!5544409 () Bool)

(assert (=> bs!1068552 m!5544409))

(assert (=> b!4660322 d!1480548))

(declare-fun b_lambda!175195 () Bool)

(assert (= b_lambda!174849 (or d!1478772 b_lambda!175195)))

(assert (=> d!1479448 d!1479266))

(declare-fun b_lambda!175197 () Bool)

(assert (= b_lambda!174751 (or (and b!4660660 (= lambda!200253 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660225 (= lambda!200203 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659723 (= lambda!200158 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479614 (= lambda!200205 (ite c!797509 lambda!200075 lambda!200077))) (and d!1480108 (= lambda!200270 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479840 (= lambda!200226 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479372 (= lambda!200180 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479132 (= lambda!200149 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659665 (= lambda!200147 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479846 (= lambda!200229 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660227 (= lambda!200199 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660827 (= lambda!200273 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479862 (= lambda!200234 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479990 (= lambda!200255 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660662 (= lambda!200250 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659243 (= lambda!200075 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659241 (= lambda!200076 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660829 (= lambda!200271 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479158 (= lambda!200155 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659723 (= lambda!200157 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660660 (= lambda!200252 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478866 (= lambda!200086 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479526 (= lambda!200185 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479170 (= lambda!200159 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479240 (= lambda!200166 (ite c!797509 lambda!200075 lambda!200077))) (and d!1480156 (= lambda!200274 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478838 (= lambda!200078 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659725 (= lambda!200156 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660126 (= lambda!200188 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660124 (= lambda!200190 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660124 (= lambda!200191 (ite c!797509 lambda!200075 lambda!200077))) (and d!1478768 (= lambda!199986 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479528 (= lambda!200192 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659241 (= lambda!200077 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660827 (= lambda!200272 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659667 (= lambda!200146 (ite c!797509 lambda!200075 lambda!200077))) (and d!1479832 (= lambda!200224 (ite c!797509 lambda!200075 lambda!200077))) (and b!4659665 (= lambda!200148 (ite c!797509 lambda!200075 lambda!200077))) (and b!4660225 (= lambda!200201 (ite c!797509 lambda!200075 lambda!200077))) b_lambda!175197)))

(declare-fun bs!1068553 () Bool)

(declare-fun d!1480550 () Bool)

(assert (= bs!1068553 (and d!1480550 b!4660225)))

(assert (=> bs!1068553 (= (dynLambda!21608 lambda!200203 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1822000 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544411 () Bool)

(assert (=> bs!1068553 m!5544411))

(assert (=> (and b!4660225 (= lambda!200203 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480550))

(declare-fun bs!1068554 () Bool)

(declare-fun d!1480552 () Bool)

(assert (= bs!1068554 (and d!1480552 b!4660662)))

(assert (=> bs!1068554 (= (dynLambda!21608 lambda!200250 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068554 m!5541487))

(declare-fun m!5544413 () Bool)

(assert (=> bs!1068554 m!5544413))

(assert (=> (and b!4660662 (= lambda!200250 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480552))

(declare-fun bs!1068555 () Bool)

(declare-fun d!1480554 () Bool)

(assert (= bs!1068555 (and d!1480554 d!1478838)))

(assert (=> bs!1068555 (= (dynLambda!21608 lambda!200078 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821400 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544415 () Bool)

(assert (=> bs!1068555 m!5544415))

(assert (=> (and d!1478838 (= lambda!200078 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480554))

(declare-fun bs!1068556 () Bool)

(declare-fun d!1480556 () Bool)

(assert (= bs!1068556 (and d!1480556 d!1479132)))

(assert (=> bs!1068556 (= (dynLambda!21608 lambda!200149 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821663 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544417 () Bool)

(assert (=> bs!1068556 m!5544417))

(assert (=> (and d!1479132 (= lambda!200149 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480556))

(declare-fun bs!1068557 () Bool)

(declare-fun d!1480558 () Bool)

(assert (= bs!1068557 (and d!1480558 b!4660124)))

(assert (=> bs!1068557 (= (dynLambda!21608 lambda!200190 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068557 m!5541463))

(declare-fun m!5544419 () Bool)

(assert (=> bs!1068557 m!5544419))

(assert (=> (and b!4660124 (= lambda!200190 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480558))

(declare-fun bs!1068558 () Bool)

(declare-fun d!1480560 () Bool)

(assert (= bs!1068558 (and d!1480560 b!4659241)))

(assert (=> bs!1068558 (= (dynLambda!21608 lambda!200076 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544421 () Bool)

(assert (=> bs!1068558 m!5544421))

(assert (=> (and b!4659241 (= lambda!200076 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480560))

(declare-fun bs!1068559 () Bool)

(declare-fun d!1480562 () Bool)

(assert (= bs!1068559 (and d!1480562 b!4659665)))

(assert (=> bs!1068559 (= (dynLambda!21608 lambda!200147 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068559 m!5540821))

(declare-fun m!5544423 () Bool)

(assert (=> bs!1068559 m!5544423))

(assert (=> (and b!4659665 (= lambda!200147 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480562))

(declare-fun bs!1068560 () Bool)

(declare-fun d!1480564 () Bool)

(assert (= bs!1068560 (and d!1480564 d!1479832)))

(assert (=> bs!1068560 (= (dynLambda!21608 lambda!200224 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068560 m!5540821))

(assert (=> bs!1068560 m!5544423))

(assert (=> (and d!1479832 (= lambda!200224 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480564))

(declare-fun bs!1068561 () Bool)

(declare-fun d!1480566 () Bool)

(assert (= bs!1068561 (and d!1480566 d!1480108)))

(assert (=> bs!1068561 (= (dynLambda!21608 lambda!200270 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544425 () Bool)

(assert (=> bs!1068561 m!5544425))

(assert (=> (and d!1480108 (= lambda!200270 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480566))

(declare-fun bs!1068562 () Bool)

(declare-fun d!1480568 () Bool)

(assert (= bs!1068562 (and d!1480568 d!1479158)))

(assert (=> bs!1068562 (= (dynLambda!21608 lambda!200155 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544427 () Bool)

(assert (=> bs!1068562 m!5544427))

(assert (=> (and d!1479158 (= lambda!200155 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480568))

(declare-fun bs!1068563 () Bool)

(declare-fun d!1480570 () Bool)

(assert (= bs!1068563 (and d!1480570 b!4660827)))

(assert (=> bs!1068563 (= (dynLambda!21608 lambda!200273 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1822333 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544429 () Bool)

(assert (=> bs!1068563 m!5544429))

(assert (=> (and b!4660827 (= lambda!200273 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480570))

(declare-fun bs!1068564 () Bool)

(declare-fun d!1480572 () Bool)

(assert (= bs!1068564 (and d!1480572 b!4659243)))

(assert (=> bs!1068564 (= (dynLambda!21608 lambda!200075 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068564 m!5544421))

(assert (=> (and b!4659243 (= lambda!200075 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480572))

(declare-fun bs!1068565 () Bool)

(declare-fun d!1480574 () Bool)

(assert (= bs!1068565 (and d!1480574 b!4659667)))

(assert (=> bs!1068565 (= (dynLambda!21608 lambda!200146 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 lt!1821144)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068565 m!5540821))

(assert (=> bs!1068565 m!5544423))

(assert (=> (and b!4659667 (= lambda!200146 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480574))

(declare-fun bs!1068566 () Bool)

(declare-fun d!1480576 () Bool)

(assert (= bs!1068566 (and d!1480576 d!1479170)))

(assert (=> bs!1068566 (= (dynLambda!21608 lambda!200159 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821722 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544431 () Bool)

(assert (=> bs!1068566 m!5544431))

(assert (=> (and d!1479170 (= lambda!200159 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480576))

(declare-fun bs!1068567 () Bool)

(declare-fun d!1480578 () Bool)

(assert (= bs!1068567 (and d!1480578 b!4659241)))

(assert (=> bs!1068567 (= (dynLambda!21608 lambda!200077 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068567 m!5544427))

(assert (=> (and b!4659241 (= lambda!200077 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480578))

(declare-fun bs!1068568 () Bool)

(declare-fun d!1480580 () Bool)

(assert (= bs!1068568 (and d!1480580 d!1479240)))

(assert (=> bs!1068568 (= (dynLambda!21608 lambda!200166 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068568 m!5544421))

(assert (=> (and d!1479240 (= lambda!200166 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480580))

(declare-fun bs!1068569 () Bool)

(declare-fun d!1480582 () Bool)

(assert (= bs!1068569 (and d!1480582 d!1480156)))

(assert (=> bs!1068569 (= (dynLambda!21608 lambda!200274 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1822329 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544433 () Bool)

(assert (=> bs!1068569 m!5544433))

(assert (=> (and d!1480156 (= lambda!200274 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480582))

(declare-fun bs!1068570 () Bool)

(declare-fun d!1480584 () Bool)

(assert (= bs!1068570 (and d!1480584 d!1479528)))

(assert (=> bs!1068570 (= (dynLambda!21608 lambda!200192 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821933 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544435 () Bool)

(assert (=> bs!1068570 m!5544435))

(assert (=> (and d!1479528 (= lambda!200192 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480584))

(declare-fun bs!1068571 () Bool)

(declare-fun d!1480586 () Bool)

(assert (= bs!1068571 (and d!1480586 d!1479372)))

(assert (=> bs!1068571 (= (dynLambda!21608 lambda!200180 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068571 m!5544421))

(assert (=> (and d!1479372 (= lambda!200180 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480586))

(declare-fun bs!1068572 () Bool)

(declare-fun d!1480588 () Bool)

(assert (= bs!1068572 (and d!1480588 b!4660225)))

(assert (=> bs!1068572 (= (dynLambda!21608 lambda!200201 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068572 m!5541351))

(declare-fun m!5544437 () Bool)

(assert (=> bs!1068572 m!5544437))

(assert (=> (and b!4660225 (= lambda!200201 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480588))

(declare-fun bs!1068573 () Bool)

(declare-fun d!1480590 () Bool)

(assert (= bs!1068573 (and d!1480590 b!4660660)))

(assert (=> bs!1068573 (= (dynLambda!21608 lambda!200253 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1822227 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544439 () Bool)

(assert (=> bs!1068573 m!5544439))

(assert (=> (and b!4660660 (= lambda!200253 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480590))

(declare-fun bs!1068574 () Bool)

(declare-fun d!1480592 () Bool)

(assert (= bs!1068574 (and d!1480592 d!1478866)))

(assert (=> bs!1068574 (= (dynLambda!21608 lambda!200086 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))) hash!414))))

(declare-fun m!5544441 () Bool)

(assert (=> bs!1068574 m!5544441))

(assert (=> (and d!1478866 (= lambda!200086 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480592))

(declare-fun bs!1068575 () Bool)

(declare-fun d!1480594 () Bool)

(assert (= bs!1068575 (and d!1480594 d!1479614)))

(assert (=> bs!1068575 (= (dynLambda!21608 lambda!200205 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821996 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544443 () Bool)

(assert (=> bs!1068575 m!5544443))

(assert (=> (and d!1479614 (= lambda!200205 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480594))

(declare-fun bs!1068576 () Bool)

(declare-fun d!1480596 () Bool)

(assert (= bs!1068576 (and d!1480596 b!4659723)))

(assert (=> bs!1068576 (= (dynLambda!21608 lambda!200158 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821726 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068576 m!5544425))

(assert (=> (and b!4659723 (= lambda!200158 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480596))

(declare-fun bs!1068577 () Bool)

(declare-fun d!1480598 () Bool)

(assert (= bs!1068577 (and d!1480598 b!4660829)))

(assert (=> bs!1068577 (= (dynLambda!21608 lambda!200271 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068577 m!5541605))

(declare-fun m!5544445 () Bool)

(assert (=> bs!1068577 m!5544445))

(assert (=> (and b!4660829 (= lambda!200271 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480598))

(declare-fun bs!1068578 () Bool)

(declare-fun d!1480600 () Bool)

(assert (= bs!1068578 (and d!1480600 d!1479840)))

(assert (=> bs!1068578 (= (dynLambda!21608 lambda!200226 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))) (_1!29822 (h!58081 (toList!5234 (ListLongMap!3788 lt!1821143))))))))

(assert (=> bs!1068578 m!5544441))

(assert (=> (and d!1479840 (= lambda!200226 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480600))

(declare-fun bs!1068579 () Bool)

(declare-fun d!1480602 () Bool)

(assert (= bs!1068579 (and d!1480602 b!4659665)))

(assert (=> bs!1068579 (= (dynLambda!21608 lambda!200148 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544447 () Bool)

(assert (=> bs!1068579 m!5544447))

(assert (=> (and b!4659665 (= lambda!200148 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480602))

(declare-fun bs!1068580 () Bool)

(declare-fun d!1480604 () Bool)

(assert (= bs!1068580 (and d!1480604 b!4660827)))

(assert (=> bs!1068580 (= (dynLambda!21608 lambda!200272 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (h!58080 (t!359168 oldBucket!40))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068580 m!5541605))

(assert (=> bs!1068580 m!5544445))

(assert (=> (and b!4660827 (= lambda!200272 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480604))

(declare-fun bs!1068581 () Bool)

(declare-fun d!1480606 () Bool)

(assert (= bs!1068581 (and d!1480606 d!1478768)))

(assert (=> bs!1068581 (= (dynLambda!21608 lambda!199986 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (= (hash!3797 hashF!1389 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))) hash!414))))

(assert (=> bs!1068581 m!5544441))

(assert (=> (and d!1478768 (= lambda!199986 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480606))

(declare-fun bs!1068582 () Bool)

(declare-fun d!1480608 () Bool)

(assert (= bs!1068582 (and d!1480608 b!4660124)))

(assert (=> bs!1068582 (= (dynLambda!21608 lambda!200191 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821937 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544449 () Bool)

(assert (=> bs!1068582 m!5544449))

(assert (=> (and b!4660124 (= lambda!200191 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480608))

(declare-fun bs!1068583 () Bool)

(declare-fun d!1480610 () Bool)

(assert (= bs!1068583 (and d!1480610 d!1479846)))

(assert (=> bs!1068583 (= (dynLambda!21608 lambda!200229 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068583 m!5540769))

(declare-fun m!5544451 () Bool)

(assert (=> bs!1068583 m!5544451))

(assert (=> (and d!1479846 (= lambda!200229 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480610))

(declare-fun bs!1068584 () Bool)

(declare-fun d!1480612 () Bool)

(assert (= bs!1068584 (and d!1480612 b!4659725)))

(assert (=> bs!1068584 (= (dynLambda!21608 lambda!200156 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068584 m!5540769))

(assert (=> bs!1068584 m!5544451))

(assert (=> (and b!4659725 (= lambda!200156 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480612))

(declare-fun bs!1068585 () Bool)

(declare-fun d!1480614 () Bool)

(assert (= bs!1068585 (and d!1480614 b!4660126)))

(assert (=> bs!1068585 (= (dynLambda!21608 lambda!200188 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 (extractMap!1708 (t!359169 lt!1821144)) (h!58080 (_2!29822 (h!58081 lt!1821144)))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068585 m!5541463))

(assert (=> bs!1068585 m!5544419))

(assert (=> (and b!4660126 (= lambda!200188 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480614))

(declare-fun bs!1068586 () Bool)

(declare-fun d!1480616 () Bool)

(assert (= bs!1068586 (and d!1480616 b!4660227)))

(assert (=> bs!1068586 (= (dynLambda!21608 lambda!200199 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 (toList!5234 lt!1821147))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068586 m!5541351))

(assert (=> bs!1068586 m!5544437))

(assert (=> (and b!4660227 (= lambda!200199 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480616))

(declare-fun bs!1068587 () Bool)

(declare-fun d!1480618 () Bool)

(assert (= bs!1068587 (and d!1480618 d!1479990)))

(assert (=> bs!1068587 (= (dynLambda!21608 lambda!200255 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1822223 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(declare-fun m!5544453 () Bool)

(assert (=> bs!1068587 m!5544453))

(assert (=> (and d!1479990 (= lambda!200255 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480618))

(declare-fun bs!1068588 () Bool)

(declare-fun d!1480620 () Bool)

(assert (= bs!1068588 (and d!1480620 b!4659723)))

(assert (=> bs!1068588 (= (dynLambda!21608 lambda!200157 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (+!1992 lt!1821141 (h!58080 oldBucket!40)) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068588 m!5540769))

(assert (=> bs!1068588 m!5544451))

(assert (=> (and b!4659723 (= lambda!200157 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480620))

(declare-fun bs!1068589 () Bool)

(declare-fun d!1480622 () Bool)

(assert (= bs!1068589 (and d!1480622 d!1479862)))

(assert (=> bs!1068589 (= (dynLambda!21608 lambda!200234 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068589 m!5544427))

(assert (=> (and d!1479862 (= lambda!200234 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480622))

(declare-fun bs!1068590 () Bool)

(declare-fun d!1480624 () Bool)

(assert (= bs!1068590 (and d!1480624 d!1479526)))

(assert (=> bs!1068590 (= (dynLambda!21608 lambda!200185 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068590 m!5544447))

(assert (=> (and d!1479526 (= lambda!200185 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480624))

(declare-fun bs!1068591 () Bool)

(declare-fun d!1480626 () Bool)

(assert (= bs!1068591 (and d!1480626 b!4660660)))

(assert (=> bs!1068591 (= (dynLambda!21608 lambda!200252 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412)))) (contains!15083 (extractMap!1708 (t!359169 (t!359169 lt!1821144))) (_1!29821 (h!58080 (ite c!797509 (toList!5233 lt!1821141) (toList!5233 lt!1821412))))))))

(assert (=> bs!1068591 m!5541487))

(assert (=> bs!1068591 m!5544413))

(assert (=> (and b!4660660 (= lambda!200252 (ite c!797509 lambda!200075 lambda!200077)) b!4659676) d!1480626))

(declare-fun b_lambda!175199 () Bool)

(assert (= b_lambda!174953 (or d!1479158 b_lambda!175199)))

(declare-fun bs!1068592 () Bool)

(declare-fun d!1480628 () Bool)

(assert (= bs!1068592 (and d!1480628 d!1479158)))

(assert (=> bs!1068592 (= (dynLambda!21608 lambda!200155 (h!58080 (toList!5233 lt!1821141))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> bs!1068592 m!5541805))

(assert (=> b!4660499 d!1480628))

(declare-fun b_lambda!175201 () Bool)

(assert (= b_lambda!174881 (or b!4659665 b_lambda!175201)))

(declare-fun bs!1068593 () Bool)

(declare-fun d!1480630 () Bool)

(assert (= bs!1068593 (and d!1480630 b!4659665)))

(assert (=> bs!1068593 (= (dynLambda!21608 lambda!200148 (h!58080 (toList!5233 lt!1821675))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (toList!5233 lt!1821675)))))))

(declare-fun m!5544455 () Bool)

(assert (=> bs!1068593 m!5544455))

(assert (=> b!4660154 d!1480630))

(declare-fun b_lambda!175203 () Bool)

(assert (= b_lambda!175107 (or b!4659723 b_lambda!175203)))

(assert (=> b!4660833 d!1480404))

(declare-fun b_lambda!175205 () Bool)

(assert (= b_lambda!174851 (or b!4659665 b_lambda!175205)))

(declare-fun bs!1068594 () Bool)

(declare-fun d!1480632 () Bool)

(assert (= bs!1068594 (and d!1480632 b!4659665)))

(assert (=> bs!1068594 (= (dynLambda!21608 lambda!200148 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144))))) (contains!15083 lt!1821667 (_1!29821 (h!58080 (toList!5233 (extractMap!1708 (t!359169 lt!1821144)))))))))

(declare-fun m!5544457 () Bool)

(assert (=> bs!1068594 m!5544457))

(assert (=> b!4660056 d!1480632))

(declare-fun b_lambda!175207 () Bool)

(assert (= b_lambda!174837 (or d!1479240 b_lambda!175207)))

(declare-fun bs!1068595 () Bool)

(declare-fun d!1480634 () Bool)

(assert (= bs!1068595 (and d!1480634 d!1479240)))

(assert (=> bs!1068595 (= (dynLambda!21608 lambda!200166 (h!58080 (toList!5233 lt!1821141))) (contains!15083 lt!1821141 (_1!29821 (h!58080 (toList!5233 lt!1821141)))))))

(assert (=> bs!1068595 m!5541809))

(assert (=> b!4659949 d!1480634))

(declare-fun b_lambda!175209 () Bool)

(assert (= b_lambda!174963 (or d!1479158 b_lambda!175209)))

(declare-fun bs!1068596 () Bool)

(declare-fun d!1480636 () Bool)

(assert (= bs!1068596 (and d!1480636 d!1479158)))

(assert (=> bs!1068596 (= (dynLambda!21608 lambda!200155 (h!58080 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40))))))) (contains!15083 lt!1821404 (_1!29821 (h!58080 (toList!5233 (+!1992 lt!1821141 (tuple2!53055 (_1!29821 (h!58080 oldBucket!40)) (_2!29821 (h!58080 oldBucket!40)))))))))))

(declare-fun m!5544459 () Bool)

(assert (=> bs!1068596 m!5544459))

(assert (=> b!4660524 d!1480636))

(declare-fun b_lambda!175211 () Bool)

(assert (= b_lambda!174863 (or b!4659665 b_lambda!175211)))

(assert (=> b!4660120 d!1480422))

(declare-fun b_lambda!175213 () Bool)

(assert (= b_lambda!174947 (or b!4659241 b_lambda!175213)))

(assert (=> d!1479852 d!1479268))

(check-sat tp_is_empty!29901 (not d!1479968) (not b!4660115) (not b!4660208) (not bs!1068574) (not b!4660819) (not b!4660410) (not bs!1068525) (not bs!1068556) (not b!4660725) (not b!4660683) (not b!4660878) (not b!4660724) (not b!4660336) (not b_lambda!175169) (not b!4660259) (not d!1479526) (not bs!1068553) (not b!4660831) (not b_lambda!175187) (not d!1479414) (not b!4660047) (not bs!1068568) (not d!1479936) (not d!1480384) (not b_lambda!175149) (not b!4660094) (not b!4660868) (not b!4660708) (not d!1479964) (not b_lambda!175213) (not bs!1068491) (not b!4659973) (not b_lambda!174945) (not b!4660827) (not bs!1068485) (not b_lambda!175159) (not bs!1068555) (not b!4660651) (not d!1479632) (not bs!1068482) (not b!4660771) (not b!4660160) (not b!4660218) (not b!4660490) (not b!4660664) (not bm!325612) (not b!4660700) (not b!4660269) (not b!4660808) (not b!4660848) (not d!1479460) (not b!4660349) (not b!4660157) (not b!4660815) (not d!1479820) (not bs!1068518) (not b!4660922) (not d!1480156) (not b_lambda!175191) (not bs!1068583) (not b!4660492) (not b_lambda!174791) (not b!4660723) (not b!4660121) (not b!4660525) (not b!4660867) (not bm!325610) (not bs!1068571) (not b_lambda!175171) (not b!4660179) (not b!4660220) (not b!4660286) (not b!4660721) (not bs!1068492) (not b_lambda!175195) (not b!4660794) (not b!4660607) (not bs!1068596) (not b_lambda!175151) (not b!4660912) (not bs!1068490) (not bs!1068500) (not b!4660268) (not bs!1068570) (not b!4660655) (not b!4660838) (not b!4660171) (not bm!325609) (not b_lambda!175147) (not bs!1068506) (not d!1480352) (not b!4660834) (not bs!1068496) (not bs!1068528) (not b_lambda!175131) (not b_lambda!175143) (not b!4660125) (not b_lambda!175183) (not bm!325616) (not b!4660018) (not b_lambda!175157) (not b!4660414) (not b_lambda!174899) (not bs!1068489) (not b!4660871) (not d!1479754) (not b!4659988) (not b!4660317) (not b!4660404) (not b!4660485) (not b!4660660) (not b!4660581) (not d!1479686) (not b!4660646) (not bm!325588) (not b!4659978) (not d!1479434) (not b!4660590) (not bs!1068523) (not b!4660098) (not b!4660644) (not bs!1068537) (not d!1480392) (not b!4660389) (not bm!325613) (not b_lambda!175137) (not bs!1068589) (not b!4660842) (not b!4660830) (not bs!1068529) (not b!4660237) (not b!4660221) (not bs!1068499) (not bs!1068532) (not d!1479528) (not b!4660804) (not b!4660290) (not b!4660488) (not b!4660732) (not bs!1068593) (not bs!1068554) (not b!4660917) (not b_lambda!175211) (not bs!1068484) (not b!4660774) (not d!1479756) (not b!4660365) (not d!1480104) (not d!1479478) (not b!4660454) (not d!1480396) (not b_lambda!174941) (not b_lambda!174811) (not b_lambda!175123) (not bs!1068563) (not b!4660291) (not bs!1068510) (not b!4660647) (not b!4660769) (not d!1480022) (not bs!1068526) (not d!1479446) (not bs!1068575) (not b!4660150) (not b_lambda!175141) tp_is_empty!29903 (not b!4660825) (not bs!1068581) (not bs!1068494) (not b!4660582) (not b!4660088) (not bs!1068480) (not d!1479636) (not b!4660127) (not b!4660351) (not bs!1068550) (not d!1479704) (not bm!325581) (not bs!1068591) (not bm!325619) (not bm!325607) (not bs!1068515) (not b!4660814) (not b!4660654) (not bs!1068487) (not b!4660107) (not bs!1068481) (not b_lambda!175165) (not d!1479400) (not b!4660690) (not d!1479500) (not b_lambda!175203) (not bs!1068512) (not d!1480088) (not b_lambda!175155) (not b!4660071) (not d!1479660) (not b!4660204) (not bs!1068578) (not b!4660169) (not b_lambda!175189) (not b_lambda!174815) (not bs!1068549) (not b!4660554) (not b!4660078) (not b!4660578) (not bs!1068511) (not b!4660642) (not b!4660406) (not b!4660704) (not d!1479972) (not b!4660061) (not bs!1068524) (not b!4660031) (not bs!1068587) (not bs!1068530) (not b!4659981) (not bm!325583) (not b!4660710) (not b!4660128) (not b!4660020) (not bm!325591) (not bs!1068519) (not b!4660812) (not b!4660845) (not b!4660545) (not d!1479566) (not b_lambda!174797) (not bs!1068564) (not b_lambda!174817) (not b!4660070) (not d!1480108) (not bs!1068508) (not bs!1068569) (not b!4660496) (not b!4660618) (not b!4660613) (not b!4660865) (not d!1480026) (not d!1479818) (not bm!325611) (not b!4660192) (not bs!1068545) (not b!4660334) (not b!4660717) (not b!4660225) (not b!4660153) (not bm!325631) (not b!4660457) (not bs!1068531) (not d!1479956) (not d!1479838) (not bs!1068478) (not d!1479608) (not b_lambda!174819) (not b!4660822) (not b!4660779) (not b!4660854) (not bs!1068547) (not b!4660375) (not b_lambda!175127) (not b_lambda!174951) (not b_lambda!174807) (not d!1480378) (not d!1480398) (not b_lambda!174933) (not b!4660449) (not bm!325630) (not bs!1068544) (not bs!1068486) (not b!4660530) (not b_lambda!175153) (not bs!1068594) (not b!4660705) (not b!4660223) (not b!4660813) (not bs!1068592) (not b!4660770) (not b!4660316) (not b!4660577) (not b!4660850) (not bm!325582) (not b!4660156) (not bs!1068514) (not bs!1068576) (not b!4660832) (not b!4660475) (not d!1479890) (not b!4660211) (not d!1479990) (not d!1479826) (not d!1479524) (not b!4660800) (not b!4659936) (not b!4660273) (not bs!1068562) (not d!1480106) (not bs!1068585) (not bs!1068507) (not bs!1068566) (not b!4660216) (not d!1480064) (not b!4660703) (not bs!1068536) (not b!4660348) (not d!1480040) (not d!1479440) (not b!4660350) (not b!4660215) (not b!4660856) (not b!4660860) (not d!1479728) (not b!4660006) (not d!1480382) (not b!4660057) (not b!4660758) (not b!4660206) (not b_lambda!174795) (not b!4660714) (not bs!1068538) (not bs!1068501) (not b_lambda!174803) (not bs!1068573) (not bs!1068522) (not b_lambda!175199) (not b!4660859) (not b!4660863) (not b!4660163) (not b!4660102) (not b!4660338) (not b!4660914) (not d!1479672) (not b!4660857) (not b!4660003) (not b!4660044) (not bs!1068509) (not b!4660077) (not b!4660805) (not b!4660222) (not d!1479620) (not bs!1068579) (not b_lambda!174809) (not b!4660415) (not b_lambda!174821) (not b_lambda!175161) (not d!1479792) (not b!4660112) (not b_lambda!175129) (not d!1479970) (not b!4660443) (not bs!1068584) (not b!4660802) (not b!4660303) (not d!1479372) (not b!4660713) (not b!4660803) (not b!4660909) (not b!4660500) (not b!4660026) (not b!4660648) (not b!4659977) (not d!1479774) (not d!1480126) (not b!4660915) (not d!1479862) (not b!4660650) (not b!4660370) (not bs!1068541) (not b!4660207) (not b!4660828) (not b!4660852) (not b!4660271) (not b!4660921) (not b_lambda!175173) (not b!4660010) (not d!1479610) (not b!4659996) (not b!4660806) (not bm!325590) (not b!4660111) (not b!4660075) (not d!1479734) (not bs!1068577) (not bs!1068586) (not b!4660441) (not b_lambda!175133) (not bm!325620) (not b!4660074) (not d!1479846) (not bs!1068504) (not b!4660014) (not b!4660553) (not b_lambda!175181) (not b!4660498) (not b!4659993) (not b!4660907) (not b!4659939) (not b!4660836) (not b!4660775) (not b!4660821) (not d!1480074) (not b!4660446) (not d!1480036) (not b!4660087) (not d!1480364) (not b!4660371) (not b!4660212) (not bs!1068543) (not b!4660377) (not b!4660110) (not bs!1068561) (not b!4659995) (not b_lambda!175205) (not bs!1068539) (not b!4660393) (not b!4660161) (not b!4660053) (not b!4660640) (not b!4660108) (not b!4660378) (not d!1479802) (not b!4660159) (not b!4660776) (not bm!325615) (not b_lambda!175207) (not b_lambda!175185) (not b!4660226) (not b!4660616) (not d!1479580) (not d!1479504) (not d!1479602) (not bm!325618) (not bs!1068542) (not bs!1068552) (not b!4660494) (not bs!1068533) (not b_lambda!174793) (not bs!1068513) (not b!4660716) (not bs!1068488) (not b_lambda!174813) (not b!4660228) (not b!4660342) (not bm!325589) (not b!4660177) (not b_lambda!175145) (not b!4660919) (not bm!325586) (not b_lambda!175201) (not d!1480072) (not b_lambda!174789) (not bs!1068540) (not b!4660617) (not b_lambda!174801) (not b_lambda!175135) (not d!1479840) (not bm!325585) (not b!4660652) (not bs!1068517) (not b_lambda!175175) (not b!4660913) (not bs!1068497) (not b_lambda!175125) (not bs!1068559) (not b!4660701) (not b!4660301) (not bs!1068565) (not bs!1068535) (not bs!1068557) (not b!4660332) (not d!1479714) (not b!4660213) (not b!4660877) (not b!4660783) (not bs!1068588) (not b!4660795) (not d!1480024) (not b_lambda!175121) (not d!1479952) (not bs!1068516) (not b!4660605) (not b_lambda!175163) (not b!4660823) (not b!4660555) (not bs!1068580) (not d!1479406) (not b!4660122) (not bs!1068493) (not b!4660637) (not bs!1068502) (not b!4660073) (not b!4660148) (not b!4660734) (not b!4660709) (not b!4660726) (not b!4660661) (not b!4660615) (not b!4660452) (not b_lambda!175139) (not d!1479804) (not b!4660638) (not d!1479848) (not b!4660707) (not b_lambda!174785) (not b!4660439) (not bm!325617) (not d!1479436) (not b!4660826) (not b!4659950) (not b!4660124) (not d!1479668) (not b_lambda!175177) (not b!4660764) (not b!4660412) (not b!4660861) (not b!4659994) (not b_lambda!174805) (not d!1479396) (not b!4660209) (not bs!1068505) (not b!4660658) (not d!1480366) (not d!1480388) (not d!1480084) (not d!1479392) (not b!4660101) (not bs!1068567) (not bs!1068534) (not b_lambda!175167) (not b!4660840) (not b!4660663) (not d!1479402) (not b!4660609) (not d!1479410) (not b!4660051) (not b!4660772) (not b!4660123) (not b!4660166) (not b!4660297) (not b!4660164) (not b!4660016) (not d!1479656) (not bs!1068546) (not d!1480380) (not b!4660529) (not b!4660810) (not bs!1068527) (not bs!1068582) (not b!4660437) (not bs!1068595) (not d!1480100) (not b_lambda!175209) (not b!4660847) (not bs!1068483) (not b!4659982) (not d!1479690) (not d!1480386) (not d!1479560) (not d!1479832) (not b_lambda!175179) (not b!4660413) (not b!4660458) (not b_lambda!174659) (not d!1479884) (not bm!325608) (not d!1480012) (not d!1480376) (not b_lambda!174911) (not d!1479614) (not b!4660327) (not bs!1068560) (not d!1479984) (not b!4660798) (not bs!1068558) (not bs!1068551) (not b_lambda!174661) (not bm!325584) (not bs!1068503) (not b!4660229) (not b_lambda!175197) (not b!4659976) (not b!4660275) (not b!4660392) (not d!1479910) (not bs!1068498) (not bs!1068548) (not bs!1068520) (not bs!1068590) (not d!1480096) (not b!4660864) (not b!4660796) (not b!4660818) (not b!4660379) (not b!4660155) (not b!4660576) (not b!4660067) (not bs!1068521) (not b!4659937) (not b!4660114) (not b_lambda!174799) (not b!4660778) (not bs!1068572) (not b_lambda!174787) (not b!4660636) (not b!4660712) (not b_lambda!175193) (not b!4660474) (not d!1479468) (not b!4660551) (not d!1479432) (not d!1479512) (not b!4660766) (not b!4660323) (not b!4660463) (not b!4660556) (not d!1479948) (not b!4660445) (not b!4660809))
(check-sat)
