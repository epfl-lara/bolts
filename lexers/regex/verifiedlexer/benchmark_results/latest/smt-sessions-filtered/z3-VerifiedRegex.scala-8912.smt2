; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478288 () Bool)

(assert start!478288)

(declare-fun b!4708079 () Bool)

(declare-fun res!1989182 () Bool)

(declare-fun e!2936739 () Bool)

(assert (=> b!4708079 (=> res!1989182 e!2936739)))

(declare-datatypes ((K!13965 0))(
  ( (K!13966 (val!19443 Int)) )
))
(declare-datatypes ((V!14211 0))(
  ( (V!14212 (val!19444 Int)) )
))
(declare-datatypes ((tuple2!54098 0))(
  ( (tuple2!54099 (_1!30343 K!13965) (_2!30343 V!14211)) )
))
(declare-datatypes ((List!52733 0))(
  ( (Nil!52609) (Cons!52609 (h!58910 tuple2!54098) (t!359965 List!52733)) )
))
(declare-datatypes ((tuple2!54100 0))(
  ( (tuple2!54101 (_1!30344 (_ BitVec 64)) (_2!30344 List!52733)) )
))
(declare-datatypes ((List!52734 0))(
  ( (Nil!52610) (Cons!52610 (h!58911 tuple2!54100) (t!359966 List!52734)) )
))
(declare-datatypes ((ListLongMap!4271 0))(
  ( (ListLongMap!4272 (toList!5741 List!52734)) )
))
(declare-fun lm!2023 () ListLongMap!4271)

(declare-fun lt!1873260 () (_ BitVec 64))

(declare-fun contains!15933 (ListLongMap!4271 (_ BitVec 64)) Bool)

(assert (=> b!4708079 (= res!1989182 (not (contains!15933 lm!2023 lt!1873260)))))

(declare-fun b!4708080 () Bool)

(declare-fun tp_is_empty!30999 () Bool)

(declare-fun e!2936738 () Bool)

(declare-fun tp_is_empty!30997 () Bool)

(declare-fun tp!1347123 () Bool)

(assert (=> b!4708080 (= e!2936738 (and tp_is_empty!30997 tp_is_empty!30999 tp!1347123))))

(declare-fun b!4708081 () Bool)

(declare-fun res!1989187 () Bool)

(declare-fun e!2936740 () Bool)

(assert (=> b!4708081 (=> (not res!1989187) (not e!2936740))))

(get-info :version)

(assert (=> b!4708081 (= res!1989187 ((_ is Cons!52610) (toList!5741 lm!2023)))))

(declare-fun b!4708082 () Bool)

(declare-fun res!1989185 () Bool)

(assert (=> b!4708082 (=> res!1989185 e!2936739)))

(declare-fun lambda!212073 () Int)

(declare-fun forall!11449 (List!52734 Int) Bool)

(assert (=> b!4708082 (= res!1989185 (not (forall!11449 (toList!5741 lm!2023) lambda!212073)))))

(declare-fun b!4708083 () Bool)

(assert (=> b!4708083 (= e!2936739 true)))

(declare-fun b!4708084 () Bool)

(declare-fun res!1989186 () Bool)

(assert (=> b!4708084 (=> (not res!1989186) (not e!2936740))))

(declare-fun oldBucket!34 () List!52733)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10112 (List!52734) tuple2!54100)

(assert (=> b!4708084 (= res!1989186 (= (head!10112 (toList!5741 lm!2023)) (tuple2!54101 hash!405 oldBucket!34)))))

(declare-fun b!4708085 () Bool)

(declare-fun e!2936741 () Bool)

(assert (=> b!4708085 (= e!2936741 e!2936740)))

(declare-fun res!1989183 () Bool)

(assert (=> b!4708085 (=> (not res!1989183) (not e!2936740))))

(assert (=> b!4708085 (= res!1989183 (= lt!1873260 hash!405))))

(declare-datatypes ((Hashable!6295 0))(
  ( (HashableExt!6294 (__x!31998 Int)) )
))
(declare-fun hashF!1323 () Hashable!6295)

(declare-fun key!4653 () K!13965)

(declare-fun hash!4242 (Hashable!6295 K!13965) (_ BitVec 64))

(assert (=> b!4708085 (= lt!1873260 (hash!4242 hashF!1323 key!4653))))

(declare-fun b!4708087 () Bool)

(declare-fun res!1989190 () Bool)

(assert (=> b!4708087 (=> (not res!1989190) (not e!2936740))))

(declare-fun newBucket!218 () List!52733)

(declare-fun allKeysSameHash!1752 (List!52733 (_ BitVec 64) Hashable!6295) Bool)

(assert (=> b!4708087 (= res!1989190 (allKeysSameHash!1752 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708088 () Bool)

(declare-fun res!1989189 () Bool)

(declare-fun e!2936743 () Bool)

(assert (=> b!4708088 (=> (not res!1989189) (not e!2936743))))

(assert (=> b!4708088 (= res!1989189 (allKeysSameHash!1752 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708089 () Bool)

(declare-fun res!1989178 () Bool)

(assert (=> b!4708089 (=> (not res!1989178) (not e!2936743))))

(declare-fun noDuplicateKeys!1926 (List!52733) Bool)

(assert (=> b!4708089 (= res!1989178 (noDuplicateKeys!1926 newBucket!218))))

(declare-fun b!4708090 () Bool)

(declare-fun e!2936742 () Bool)

(declare-fun tp!1347125 () Bool)

(assert (=> b!4708090 (= e!2936742 tp!1347125)))

(declare-fun b!4708091 () Bool)

(declare-fun res!1989176 () Bool)

(assert (=> b!4708091 (=> (not res!1989176) (not e!2936740))))

(declare-fun allKeysSameHashInMap!1840 (ListLongMap!4271 Hashable!6295) Bool)

(assert (=> b!4708091 (= res!1989176 (allKeysSameHashInMap!1840 lm!2023 hashF!1323))))

(declare-fun b!4708092 () Bool)

(assert (=> b!4708092 (= e!2936740 (not e!2936739))))

(declare-fun res!1989184 () Bool)

(assert (=> b!4708092 (=> res!1989184 e!2936739)))

(assert (=> b!4708092 (= res!1989184 (or (and ((_ is Cons!52609) oldBucket!34) (= (_1!30343 (h!58910 oldBucket!34)) key!4653)) (and ((_ is Cons!52609) oldBucket!34) (not (= (_1!30343 (h!58910 oldBucket!34)) key!4653))) (not ((_ is Nil!52609) oldBucket!34))))))

(declare-fun e!2936744 () Bool)

(assert (=> b!4708092 e!2936744))

(declare-fun res!1989179 () Bool)

(assert (=> b!4708092 (=> (not res!1989179) (not e!2936744))))

(declare-fun tail!8797 (ListLongMap!4271) ListLongMap!4271)

(assert (=> b!4708092 (= res!1989179 (= (t!359966 (toList!5741 lm!2023)) (toList!5741 (tail!8797 lm!2023))))))

(declare-fun b!4708093 () Bool)

(declare-fun res!1989181 () Bool)

(assert (=> b!4708093 (=> res!1989181 e!2936739)))

(declare-fun containsKey!3237 (List!52733 K!13965) Bool)

(declare-fun apply!12409 (ListLongMap!4271 (_ BitVec 64)) List!52733)

(assert (=> b!4708093 (= res!1989181 (containsKey!3237 (apply!12409 lm!2023 lt!1873260) key!4653))))

(declare-fun b!4708094 () Bool)

(declare-fun res!1989177 () Bool)

(assert (=> b!4708094 (=> (not res!1989177) (not e!2936743))))

(declare-fun removePairForKey!1521 (List!52733 K!13965) List!52733)

(assert (=> b!4708094 (= res!1989177 (= (removePairForKey!1521 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708095 () Bool)

(assert (=> b!4708095 (= e!2936743 e!2936741)))

(declare-fun res!1989188 () Bool)

(assert (=> b!4708095 (=> (not res!1989188) (not e!2936741))))

(declare-datatypes ((ListMap!5105 0))(
  ( (ListMap!5106 (toList!5742 List!52733)) )
))
(declare-fun lt!1873259 () ListMap!5105)

(declare-fun contains!15934 (ListMap!5105 K!13965) Bool)

(assert (=> b!4708095 (= res!1989188 (contains!15934 lt!1873259 key!4653))))

(declare-fun extractMap!1952 (List!52734) ListMap!5105)

(assert (=> b!4708095 (= lt!1873259 (extractMap!1952 (toList!5741 lm!2023)))))

(declare-fun b!4708086 () Bool)

(declare-fun res!1989191 () Bool)

(assert (=> b!4708086 (=> (not res!1989191) (not e!2936743))))

(assert (=> b!4708086 (= res!1989191 (noDuplicateKeys!1926 oldBucket!34))))

(declare-fun res!1989180 () Bool)

(assert (=> start!478288 (=> (not res!1989180) (not e!2936743))))

(assert (=> start!478288 (= res!1989180 (forall!11449 (toList!5741 lm!2023) lambda!212073))))

(assert (=> start!478288 e!2936743))

(declare-fun inv!67839 (ListLongMap!4271) Bool)

(assert (=> start!478288 (and (inv!67839 lm!2023) e!2936742)))

(assert (=> start!478288 tp_is_empty!30997))

(declare-fun e!2936737 () Bool)

(assert (=> start!478288 e!2936737))

(assert (=> start!478288 true))

(assert (=> start!478288 e!2936738))

(declare-fun b!4708096 () Bool)

(declare-fun tp!1347124 () Bool)

(assert (=> b!4708096 (= e!2936737 (and tp_is_empty!30997 tp_is_empty!30999 tp!1347124))))

(declare-fun b!4708097 () Bool)

(declare-fun addToMapMapFromBucket!1358 (List!52733 ListMap!5105) ListMap!5105)

(assert (=> b!4708097 (= e!2936744 (= lt!1873259 (addToMapMapFromBucket!1358 (_2!30344 (h!58911 (toList!5741 lm!2023))) (extractMap!1952 (t!359966 (toList!5741 lm!2023))))))))

(assert (= (and start!478288 res!1989180) b!4708086))

(assert (= (and b!4708086 res!1989191) b!4708089))

(assert (= (and b!4708089 res!1989178) b!4708094))

(assert (= (and b!4708094 res!1989177) b!4708088))

(assert (= (and b!4708088 res!1989189) b!4708095))

(assert (= (and b!4708095 res!1989188) b!4708085))

(assert (= (and b!4708085 res!1989183) b!4708087))

(assert (= (and b!4708087 res!1989190) b!4708091))

(assert (= (and b!4708091 res!1989176) b!4708084))

(assert (= (and b!4708084 res!1989186) b!4708081))

(assert (= (and b!4708081 res!1989187) b!4708092))

(assert (= (and b!4708092 res!1989179) b!4708097))

(assert (= (and b!4708092 (not res!1989184)) b!4708082))

(assert (= (and b!4708082 (not res!1989185)) b!4708079))

(assert (= (and b!4708079 (not res!1989182)) b!4708093))

(assert (= (and b!4708093 (not res!1989181)) b!4708083))

(assert (= start!478288 b!4708090))

(assert (= (and start!478288 ((_ is Cons!52609) oldBucket!34)) b!4708096))

(assert (= (and start!478288 ((_ is Cons!52609) newBucket!218)) b!4708080))

(declare-fun m!5632629 () Bool)

(assert (=> b!4708085 m!5632629))

(declare-fun m!5632631 () Bool)

(assert (=> b!4708094 m!5632631))

(declare-fun m!5632633 () Bool)

(assert (=> b!4708082 m!5632633))

(declare-fun m!5632635 () Bool)

(assert (=> b!4708087 m!5632635))

(declare-fun m!5632637 () Bool)

(assert (=> b!4708086 m!5632637))

(declare-fun m!5632639 () Bool)

(assert (=> b!4708097 m!5632639))

(assert (=> b!4708097 m!5632639))

(declare-fun m!5632641 () Bool)

(assert (=> b!4708097 m!5632641))

(declare-fun m!5632643 () Bool)

(assert (=> b!4708089 m!5632643))

(declare-fun m!5632645 () Bool)

(assert (=> b!4708095 m!5632645))

(declare-fun m!5632647 () Bool)

(assert (=> b!4708095 m!5632647))

(declare-fun m!5632649 () Bool)

(assert (=> b!4708079 m!5632649))

(declare-fun m!5632651 () Bool)

(assert (=> b!4708084 m!5632651))

(assert (=> start!478288 m!5632633))

(declare-fun m!5632653 () Bool)

(assert (=> start!478288 m!5632653))

(declare-fun m!5632655 () Bool)

(assert (=> b!4708091 m!5632655))

(declare-fun m!5632657 () Bool)

(assert (=> b!4708092 m!5632657))

(declare-fun m!5632659 () Bool)

(assert (=> b!4708093 m!5632659))

(assert (=> b!4708093 m!5632659))

(declare-fun m!5632661 () Bool)

(assert (=> b!4708093 m!5632661))

(declare-fun m!5632663 () Bool)

(assert (=> b!4708088 m!5632663))

(check-sat (not b!4708084) (not b!4708088) (not b!4708085) (not b!4708094) (not b!4708079) tp_is_empty!30999 (not b!4708090) (not b!4708087) (not b!4708092) (not start!478288) (not b!4708086) (not b!4708097) (not b!4708096) (not b!4708089) (not b!4708080) (not b!4708093) tp_is_empty!30997 (not b!4708091) (not b!4708095) (not b!4708082))
(check-sat)
