; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!481204 () Bool)

(assert start!481204)

(declare-fun b!4726036 () Bool)

(declare-fun e!2947601 () Bool)

(declare-fun tp!1348539 () Bool)

(assert (=> b!4726036 (= e!2947601 tp!1348539)))

(declare-fun b!4726038 () Bool)

(declare-fun e!2947604 () Bool)

(declare-fun e!2947606 () Bool)

(assert (=> b!4726038 (= e!2947604 (not e!2947606))))

(declare-fun res!1999992 () Bool)

(assert (=> b!4726038 (=> res!1999992 e!2947606)))

(declare-datatypes ((K!14200 0))(
  ( (K!14201 (val!19631 Int)) )
))
(declare-datatypes ((V!14446 0))(
  ( (V!14447 (val!19632 Int)) )
))
(declare-datatypes ((tuple2!54474 0))(
  ( (tuple2!54475 (_1!30531 K!14200) (_2!30531 V!14446)) )
))
(declare-datatypes ((List!52972 0))(
  ( (Nil!52848) (Cons!52848 (h!59201 tuple2!54474) (t!360248 List!52972)) )
))
(declare-fun oldBucket!34 () List!52972)

(declare-fun key!4653 () K!14200)

(get-info :version)

(assert (=> b!4726038 (= res!1999992 (or (and ((_ is Cons!52848) oldBucket!34) (= (_1!30531 (h!59201 oldBucket!34)) key!4653)) (not ((_ is Cons!52848) oldBucket!34)) (= (_1!30531 (h!59201 oldBucket!34)) key!4653)))))

(declare-fun e!2947603 () Bool)

(assert (=> b!4726038 e!2947603))

(declare-fun res!1999988 () Bool)

(assert (=> b!4726038 (=> (not res!1999988) (not e!2947603))))

(declare-datatypes ((tuple2!54476 0))(
  ( (tuple2!54477 (_1!30532 (_ BitVec 64)) (_2!30532 List!52972)) )
))
(declare-datatypes ((List!52973 0))(
  ( (Nil!52849) (Cons!52849 (h!59202 tuple2!54476) (t!360249 List!52973)) )
))
(declare-datatypes ((ListLongMap!4459 0))(
  ( (ListLongMap!4460 (toList!5929 List!52973)) )
))
(declare-fun lm!2023 () ListLongMap!4459)

(declare-fun tail!9019 (ListLongMap!4459) ListLongMap!4459)

(assert (=> b!4726038 (= res!1999988 (= (t!360249 (toList!5929 lm!2023)) (toList!5929 (tail!9019 lm!2023))))))

(declare-fun b!4726039 () Bool)

(declare-fun lambda!216234 () Int)

(declare-fun forall!11604 (List!52973 Int) Bool)

(assert (=> b!4726039 (= e!2947606 (forall!11604 (toList!5929 lm!2023) lambda!216234))))

(declare-fun tp_is_empty!31375 () Bool)

(declare-fun e!2947605 () Bool)

(declare-fun b!4726040 () Bool)

(declare-fun tp_is_empty!31373 () Bool)

(declare-fun tp!1348541 () Bool)

(assert (=> b!4726040 (= e!2947605 (and tp_is_empty!31373 tp_is_empty!31375 tp!1348541))))

(declare-fun b!4726041 () Bool)

(declare-fun res!1999990 () Bool)

(declare-fun e!2947600 () Bool)

(assert (=> b!4726041 (=> (not res!1999990) (not e!2947600))))

(declare-fun newBucket!218 () List!52972)

(declare-fun noDuplicateKeys!2020 (List!52972) Bool)

(assert (=> b!4726041 (= res!1999990 (noDuplicateKeys!2020 newBucket!218))))

(declare-fun b!4726042 () Bool)

(declare-fun res!1999987 () Bool)

(assert (=> b!4726042 (=> (not res!1999987) (not e!2947604))))

(declare-datatypes ((Hashable!6389 0))(
  ( (HashableExt!6388 (__x!32092 Int)) )
))
(declare-fun hashF!1323 () Hashable!6389)

(declare-fun allKeysSameHashInMap!1934 (ListLongMap!4459 Hashable!6389) Bool)

(assert (=> b!4726042 (= res!1999987 (allKeysSameHashInMap!1934 lm!2023 hashF!1323))))

(declare-fun b!4726043 () Bool)

(declare-fun res!1999985 () Bool)

(assert (=> b!4726043 (=> (not res!1999985) (not e!2947604))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4396 (Hashable!6389 K!14200) (_ BitVec 64))

(assert (=> b!4726043 (= res!1999985 (= (hash!4396 hashF!1323 key!4653) hash!405))))

(declare-fun b!4726044 () Bool)

(assert (=> b!4726044 (= e!2947600 e!2947604)))

(declare-fun res!1999984 () Bool)

(assert (=> b!4726044 (=> (not res!1999984) (not e!2947604))))

(declare-datatypes ((ListMap!5293 0))(
  ( (ListMap!5294 (toList!5930 List!52972)) )
))
(declare-fun lt!1890913 () ListMap!5293)

(declare-fun contains!16196 (ListMap!5293 K!14200) Bool)

(assert (=> b!4726044 (= res!1999984 (contains!16196 lt!1890913 key!4653))))

(declare-fun extractMap!2046 (List!52973) ListMap!5293)

(assert (=> b!4726044 (= lt!1890913 (extractMap!2046 (toList!5929 lm!2023)))))

(declare-fun b!4726045 () Bool)

(declare-fun res!1999989 () Bool)

(assert (=> b!4726045 (=> (not res!1999989) (not e!2947600))))

(assert (=> b!4726045 (= res!1999989 (noDuplicateKeys!2020 oldBucket!34))))

(declare-fun b!4726046 () Bool)

(declare-fun res!1999983 () Bool)

(assert (=> b!4726046 (=> (not res!1999983) (not e!2947600))))

(declare-fun allKeysSameHash!1846 (List!52972 (_ BitVec 64) Hashable!6389) Bool)

(assert (=> b!4726046 (= res!1999983 (allKeysSameHash!1846 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4726047 () Bool)

(declare-fun res!1999994 () Bool)

(assert (=> b!4726047 (=> (not res!1999994) (not e!2947604))))

(assert (=> b!4726047 (= res!1999994 ((_ is Cons!52849) (toList!5929 lm!2023)))))

(declare-fun b!4726037 () Bool)

(declare-fun addToMapMapFromBucket!1450 (List!52972 ListMap!5293) ListMap!5293)

(assert (=> b!4726037 (= e!2947603 (= lt!1890913 (addToMapMapFromBucket!1450 (_2!30532 (h!59202 (toList!5929 lm!2023))) (extractMap!2046 (t!360249 (toList!5929 lm!2023))))))))

(declare-fun res!1999991 () Bool)

(assert (=> start!481204 (=> (not res!1999991) (not e!2947600))))

(assert (=> start!481204 (= res!1999991 (forall!11604 (toList!5929 lm!2023) lambda!216234))))

(assert (=> start!481204 e!2947600))

(declare-fun inv!68074 (ListLongMap!4459) Bool)

(assert (=> start!481204 (and (inv!68074 lm!2023) e!2947601)))

(assert (=> start!481204 tp_is_empty!31373))

(declare-fun e!2947602 () Bool)

(assert (=> start!481204 e!2947602))

(assert (=> start!481204 true))

(assert (=> start!481204 e!2947605))

(declare-fun b!4726048 () Bool)

(declare-fun tp!1348540 () Bool)

(assert (=> b!4726048 (= e!2947602 (and tp_is_empty!31373 tp_is_empty!31375 tp!1348540))))

(declare-fun b!4726049 () Bool)

(declare-fun res!1999986 () Bool)

(assert (=> b!4726049 (=> (not res!1999986) (not e!2947600))))

(declare-fun removePairForKey!1615 (List!52972 K!14200) List!52972)

(assert (=> b!4726049 (= res!1999986 (= (removePairForKey!1615 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4726050 () Bool)

(declare-fun res!1999995 () Bool)

(assert (=> b!4726050 (=> (not res!1999995) (not e!2947604))))

(assert (=> b!4726050 (= res!1999995 (allKeysSameHash!1846 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4726051 () Bool)

(declare-fun res!1999993 () Bool)

(assert (=> b!4726051 (=> (not res!1999993) (not e!2947604))))

(declare-fun head!10260 (List!52973) tuple2!54476)

(assert (=> b!4726051 (= res!1999993 (= (head!10260 (toList!5929 lm!2023)) (tuple2!54477 hash!405 oldBucket!34)))))

(assert (= (and start!481204 res!1999991) b!4726045))

(assert (= (and b!4726045 res!1999989) b!4726041))

(assert (= (and b!4726041 res!1999990) b!4726049))

(assert (= (and b!4726049 res!1999986) b!4726046))

(assert (= (and b!4726046 res!1999983) b!4726044))

(assert (= (and b!4726044 res!1999984) b!4726043))

(assert (= (and b!4726043 res!1999985) b!4726050))

(assert (= (and b!4726050 res!1999995) b!4726042))

(assert (= (and b!4726042 res!1999987) b!4726051))

(assert (= (and b!4726051 res!1999993) b!4726047))

(assert (= (and b!4726047 res!1999994) b!4726038))

(assert (= (and b!4726038 res!1999988) b!4726037))

(assert (= (and b!4726038 (not res!1999992)) b!4726039))

(assert (= start!481204 b!4726036))

(assert (= (and start!481204 ((_ is Cons!52848) oldBucket!34)) b!4726048))

(assert (= (and start!481204 ((_ is Cons!52848) newBucket!218)) b!4726040))

(declare-fun m!5665791 () Bool)

(assert (=> b!4726043 m!5665791))

(declare-fun m!5665793 () Bool)

(assert (=> b!4726037 m!5665793))

(assert (=> b!4726037 m!5665793))

(declare-fun m!5665795 () Bool)

(assert (=> b!4726037 m!5665795))

(declare-fun m!5665797 () Bool)

(assert (=> b!4726042 m!5665797))

(declare-fun m!5665799 () Bool)

(assert (=> b!4726044 m!5665799))

(declare-fun m!5665801 () Bool)

(assert (=> b!4726044 m!5665801))

(declare-fun m!5665803 () Bool)

(assert (=> b!4726046 m!5665803))

(declare-fun m!5665805 () Bool)

(assert (=> b!4726045 m!5665805))

(declare-fun m!5665807 () Bool)

(assert (=> b!4726039 m!5665807))

(declare-fun m!5665809 () Bool)

(assert (=> b!4726049 m!5665809))

(assert (=> start!481204 m!5665807))

(declare-fun m!5665811 () Bool)

(assert (=> start!481204 m!5665811))

(declare-fun m!5665813 () Bool)

(assert (=> b!4726041 m!5665813))

(declare-fun m!5665815 () Bool)

(assert (=> b!4726051 m!5665815))

(declare-fun m!5665817 () Bool)

(assert (=> b!4726038 m!5665817))

(declare-fun m!5665819 () Bool)

(assert (=> b!4726050 m!5665819))

(check-sat (not b!4726041) (not start!481204) (not b!4726042) (not b!4726040) (not b!4726044) tp_is_empty!31375 (not b!4726048) (not b!4726039) (not b!4726037) (not b!4726050) (not b!4726036) (not b!4726045) (not b!4726046) (not b!4726043) (not b!4726051) (not b!4726038) (not b!4726049) tp_is_empty!31373)
(check-sat)
