; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478284 () Bool)

(assert start!478284)

(declare-fun b!4707965 () Bool)

(declare-fun res!1989087 () Bool)

(declare-fun e!2936691 () Bool)

(assert (=> b!4707965 (=> (not res!1989087) (not e!2936691))))

(declare-datatypes ((K!13960 0))(
  ( (K!13961 (val!19439 Int)) )
))
(declare-datatypes ((V!14206 0))(
  ( (V!14207 (val!19440 Int)) )
))
(declare-datatypes ((tuple2!54090 0))(
  ( (tuple2!54091 (_1!30339 K!13960) (_2!30339 V!14206)) )
))
(declare-datatypes ((List!52729 0))(
  ( (Nil!52605) (Cons!52605 (h!58906 tuple2!54090) (t!359961 List!52729)) )
))
(declare-datatypes ((tuple2!54092 0))(
  ( (tuple2!54093 (_1!30340 (_ BitVec 64)) (_2!30340 List!52729)) )
))
(declare-datatypes ((List!52730 0))(
  ( (Nil!52606) (Cons!52606 (h!58907 tuple2!54092) (t!359962 List!52730)) )
))
(declare-datatypes ((ListLongMap!4267 0))(
  ( (ListLongMap!4268 (toList!5737 List!52730)) )
))
(declare-fun lm!2023 () ListLongMap!4267)

(declare-datatypes ((Hashable!6293 0))(
  ( (HashableExt!6292 (__x!31996 Int)) )
))
(declare-fun hashF!1323 () Hashable!6293)

(declare-fun allKeysSameHashInMap!1838 (ListLongMap!4267 Hashable!6293) Bool)

(assert (=> b!4707965 (= res!1989087 (allKeysSameHashInMap!1838 lm!2023 hashF!1323))))

(declare-fun b!4707966 () Bool)

(declare-fun res!1989084 () Bool)

(declare-fun e!2936690 () Bool)

(assert (=> b!4707966 (=> res!1989084 e!2936690)))

(declare-fun key!4653 () K!13960)

(declare-fun lt!1873247 () (_ BitVec 64))

(declare-fun containsKey!3235 (List!52729 K!13960) Bool)

(declare-fun apply!12407 (ListLongMap!4267 (_ BitVec 64)) List!52729)

(assert (=> b!4707966 (= res!1989084 (containsKey!3235 (apply!12407 lm!2023 lt!1873247) key!4653))))

(declare-fun b!4707968 () Bool)

(declare-fun res!1989090 () Bool)

(assert (=> b!4707968 (=> res!1989090 e!2936690)))

(declare-fun contains!15929 (ListLongMap!4267 (_ BitVec 64)) Bool)

(assert (=> b!4707968 (= res!1989090 (not (contains!15929 lm!2023 lt!1873247)))))

(declare-fun b!4707969 () Bool)

(declare-fun res!1989088 () Bool)

(assert (=> b!4707969 (=> (not res!1989088) (not e!2936691))))

(declare-fun oldBucket!34 () List!52729)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10110 (List!52730) tuple2!54092)

(assert (=> b!4707969 (= res!1989088 (= (head!10110 (toList!5737 lm!2023)) (tuple2!54093 hash!405 oldBucket!34)))))

(declare-fun b!4707970 () Bool)

(declare-fun res!1989092 () Bool)

(assert (=> b!4707970 (=> (not res!1989092) (not e!2936691))))

(get-info :version)

(assert (=> b!4707970 (= res!1989092 ((_ is Cons!52606) (toList!5737 lm!2023)))))

(declare-fun b!4707971 () Bool)

(declare-fun e!2936692 () Bool)

(declare-fun e!2936689 () Bool)

(assert (=> b!4707971 (= e!2936692 e!2936689)))

(declare-fun res!1989080 () Bool)

(assert (=> b!4707971 (=> (not res!1989080) (not e!2936689))))

(declare-datatypes ((ListMap!5101 0))(
  ( (ListMap!5102 (toList!5738 List!52729)) )
))
(declare-fun lt!1873248 () ListMap!5101)

(declare-fun contains!15930 (ListMap!5101 K!13960) Bool)

(assert (=> b!4707971 (= res!1989080 (contains!15930 lt!1873248 key!4653))))

(declare-fun extractMap!1950 (List!52730) ListMap!5101)

(assert (=> b!4707971 (= lt!1873248 (extractMap!1950 (toList!5737 lm!2023)))))

(declare-fun b!4707972 () Bool)

(declare-fun e!2936695 () Bool)

(declare-fun addToMapMapFromBucket!1356 (List!52729 ListMap!5101) ListMap!5101)

(assert (=> b!4707972 (= e!2936695 (= lt!1873248 (addToMapMapFromBucket!1356 (_2!30340 (h!58907 (toList!5737 lm!2023))) (extractMap!1950 (t!359962 (toList!5737 lm!2023))))))))

(declare-fun b!4707973 () Bool)

(declare-fun e!2936696 () Bool)

(declare-fun tp!1347106 () Bool)

(assert (=> b!4707973 (= e!2936696 tp!1347106)))

(declare-fun b!4707974 () Bool)

(declare-fun lambda!212063 () Int)

(declare-fun forall!11447 (List!52730 Int) Bool)

(assert (=> b!4707974 (= e!2936690 (forall!11447 (toList!5737 lm!2023) lambda!212063))))

(declare-fun res!1989091 () Bool)

(assert (=> start!478284 (=> (not res!1989091) (not e!2936692))))

(assert (=> start!478284 (= res!1989091 (forall!11447 (toList!5737 lm!2023) lambda!212063))))

(assert (=> start!478284 e!2936692))

(declare-fun inv!67834 (ListLongMap!4267) Bool)

(assert (=> start!478284 (and (inv!67834 lm!2023) e!2936696)))

(declare-fun tp_is_empty!30989 () Bool)

(assert (=> start!478284 tp_is_empty!30989))

(declare-fun e!2936693 () Bool)

(assert (=> start!478284 e!2936693))

(assert (=> start!478284 true))

(declare-fun e!2936694 () Bool)

(assert (=> start!478284 e!2936694))

(declare-fun b!4707967 () Bool)

(assert (=> b!4707967 (= e!2936689 e!2936691)))

(declare-fun res!1989086 () Bool)

(assert (=> b!4707967 (=> (not res!1989086) (not e!2936691))))

(assert (=> b!4707967 (= res!1989086 (= lt!1873247 hash!405))))

(declare-fun hash!4240 (Hashable!6293 K!13960) (_ BitVec 64))

(assert (=> b!4707967 (= lt!1873247 (hash!4240 hashF!1323 key!4653))))

(declare-fun b!4707975 () Bool)

(declare-fun res!1989081 () Bool)

(assert (=> b!4707975 (=> (not res!1989081) (not e!2936692))))

(declare-fun noDuplicateKeys!1924 (List!52729) Bool)

(assert (=> b!4707975 (= res!1989081 (noDuplicateKeys!1924 oldBucket!34))))

(declare-fun tp!1347105 () Bool)

(declare-fun b!4707976 () Bool)

(declare-fun tp_is_empty!30991 () Bool)

(assert (=> b!4707976 (= e!2936694 (and tp_is_empty!30989 tp_is_empty!30991 tp!1347105))))

(declare-fun b!4707977 () Bool)

(declare-fun res!1989089 () Bool)

(assert (=> b!4707977 (=> (not res!1989089) (not e!2936692))))

(declare-fun newBucket!218 () List!52729)

(declare-fun removePairForKey!1519 (List!52729 K!13960) List!52729)

(assert (=> b!4707977 (= res!1989089 (= (removePairForKey!1519 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4707978 () Bool)

(declare-fun res!1989094 () Bool)

(assert (=> b!4707978 (=> (not res!1989094) (not e!2936692))))

(assert (=> b!4707978 (= res!1989094 (noDuplicateKeys!1924 newBucket!218))))

(declare-fun tp!1347107 () Bool)

(declare-fun b!4707979 () Bool)

(assert (=> b!4707979 (= e!2936693 (and tp_is_empty!30989 tp_is_empty!30991 tp!1347107))))

(declare-fun b!4707980 () Bool)

(assert (=> b!4707980 (= e!2936691 (not e!2936690))))

(declare-fun res!1989083 () Bool)

(assert (=> b!4707980 (=> res!1989083 e!2936690)))

(assert (=> b!4707980 (= res!1989083 (or (and ((_ is Cons!52605) oldBucket!34) (= (_1!30339 (h!58906 oldBucket!34)) key!4653)) (and ((_ is Cons!52605) oldBucket!34) (not (= (_1!30339 (h!58906 oldBucket!34)) key!4653))) (not ((_ is Nil!52605) oldBucket!34))))))

(assert (=> b!4707980 e!2936695))

(declare-fun res!1989093 () Bool)

(assert (=> b!4707980 (=> (not res!1989093) (not e!2936695))))

(declare-fun tail!8795 (ListLongMap!4267) ListLongMap!4267)

(assert (=> b!4707980 (= res!1989093 (= (t!359962 (toList!5737 lm!2023)) (toList!5737 (tail!8795 lm!2023))))))

(declare-fun b!4707981 () Bool)

(declare-fun res!1989082 () Bool)

(assert (=> b!4707981 (=> (not res!1989082) (not e!2936692))))

(declare-fun allKeysSameHash!1750 (List!52729 (_ BitVec 64) Hashable!6293) Bool)

(assert (=> b!4707981 (= res!1989082 (allKeysSameHash!1750 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4707982 () Bool)

(declare-fun res!1989095 () Bool)

(assert (=> b!4707982 (=> res!1989095 e!2936690)))

(assert (=> b!4707982 (= res!1989095 (not (forall!11447 (toList!5737 lm!2023) lambda!212063)))))

(declare-fun b!4707983 () Bool)

(declare-fun res!1989085 () Bool)

(assert (=> b!4707983 (=> (not res!1989085) (not e!2936691))))

(assert (=> b!4707983 (= res!1989085 (allKeysSameHash!1750 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!478284 res!1989091) b!4707975))

(assert (= (and b!4707975 res!1989081) b!4707978))

(assert (= (and b!4707978 res!1989094) b!4707977))

(assert (= (and b!4707977 res!1989089) b!4707981))

(assert (= (and b!4707981 res!1989082) b!4707971))

(assert (= (and b!4707971 res!1989080) b!4707967))

(assert (= (and b!4707967 res!1989086) b!4707983))

(assert (= (and b!4707983 res!1989085) b!4707965))

(assert (= (and b!4707965 res!1989087) b!4707969))

(assert (= (and b!4707969 res!1989088) b!4707970))

(assert (= (and b!4707970 res!1989092) b!4707980))

(assert (= (and b!4707980 res!1989093) b!4707972))

(assert (= (and b!4707980 (not res!1989083)) b!4707982))

(assert (= (and b!4707982 (not res!1989095)) b!4707968))

(assert (= (and b!4707968 (not res!1989090)) b!4707966))

(assert (= (and b!4707966 (not res!1989084)) b!4707974))

(assert (= start!478284 b!4707973))

(assert (= (and start!478284 ((_ is Cons!52605) oldBucket!34)) b!4707979))

(assert (= (and start!478284 ((_ is Cons!52605) newBucket!218)) b!4707976))

(declare-fun m!5632557 () Bool)

(assert (=> b!4707983 m!5632557))

(declare-fun m!5632559 () Bool)

(assert (=> b!4707974 m!5632559))

(declare-fun m!5632561 () Bool)

(assert (=> b!4707972 m!5632561))

(assert (=> b!4707972 m!5632561))

(declare-fun m!5632563 () Bool)

(assert (=> b!4707972 m!5632563))

(declare-fun m!5632565 () Bool)

(assert (=> b!4707969 m!5632565))

(declare-fun m!5632567 () Bool)

(assert (=> b!4707980 m!5632567))

(declare-fun m!5632569 () Bool)

(assert (=> b!4707966 m!5632569))

(assert (=> b!4707966 m!5632569))

(declare-fun m!5632571 () Bool)

(assert (=> b!4707966 m!5632571))

(declare-fun m!5632573 () Bool)

(assert (=> b!4707971 m!5632573))

(declare-fun m!5632575 () Bool)

(assert (=> b!4707971 m!5632575))

(declare-fun m!5632577 () Bool)

(assert (=> b!4707981 m!5632577))

(declare-fun m!5632579 () Bool)

(assert (=> b!4707967 m!5632579))

(declare-fun m!5632581 () Bool)

(assert (=> b!4707977 m!5632581))

(assert (=> b!4707982 m!5632559))

(declare-fun m!5632583 () Bool)

(assert (=> b!4707978 m!5632583))

(declare-fun m!5632585 () Bool)

(assert (=> b!4707968 m!5632585))

(assert (=> start!478284 m!5632559))

(declare-fun m!5632587 () Bool)

(assert (=> start!478284 m!5632587))

(declare-fun m!5632589 () Bool)

(assert (=> b!4707965 m!5632589))

(declare-fun m!5632591 () Bool)

(assert (=> b!4707975 m!5632591))

(check-sat (not b!4707978) (not b!4707974) (not b!4707981) (not b!4707968) (not b!4707980) tp_is_empty!30989 (not b!4707982) (not b!4707967) (not b!4707971) tp_is_empty!30991 (not b!4707973) (not b!4707979) (not b!4707966) (not b!4707975) (not start!478284) (not b!4707969) (not b!4707977) (not b!4707965) (not b!4707983) (not b!4707976) (not b!4707972))
(check-sat)
