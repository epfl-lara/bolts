; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!482392 () Bool)

(assert start!482392)

(declare-fun b!4732214 () Bool)

(declare-fun res!2003639 () Bool)

(declare-fun e!2951670 () Bool)

(assert (=> b!4732214 (=> (not res!2003639) (not e!2951670))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6409 0))(
  ( (HashableExt!6408 (__x!32112 Int)) )
))
(declare-fun hashF!1323 () Hashable!6409)

(declare-datatypes ((K!14250 0))(
  ( (K!14251 (val!19671 Int)) )
))
(declare-datatypes ((V!14496 0))(
  ( (V!14497 (val!19672 Int)) )
))
(declare-datatypes ((tuple2!54554 0))(
  ( (tuple2!54555 (_1!30571 K!14250) (_2!30571 V!14496)) )
))
(declare-datatypes ((List!53025 0))(
  ( (Nil!52901) (Cons!52901 (h!59268 tuple2!54554) (t!360301 List!53025)) )
))
(declare-fun newBucket!218 () List!53025)

(declare-fun allKeysSameHash!1866 (List!53025 (_ BitVec 64) Hashable!6409) Bool)

(assert (=> b!4732214 (= res!2003639 (allKeysSameHash!1866 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4732215 () Bool)

(declare-fun res!2003635 () Bool)

(assert (=> b!4732215 (=> (not res!2003635) (not e!2951670))))

(declare-datatypes ((tuple2!54556 0))(
  ( (tuple2!54557 (_1!30572 (_ BitVec 64)) (_2!30572 List!53025)) )
))
(declare-datatypes ((List!53026 0))(
  ( (Nil!52902) (Cons!52902 (h!59269 tuple2!54556) (t!360302 List!53026)) )
))
(declare-datatypes ((ListLongMap!4499 0))(
  ( (ListLongMap!4500 (toList!5969 List!53026)) )
))
(declare-fun lm!2023 () ListLongMap!4499)

(declare-fun oldBucket!34 () List!53025)

(declare-fun head!10283 (List!53026) tuple2!54556)

(assert (=> b!4732215 (= res!2003635 (= (head!10283 (toList!5969 lm!2023)) (tuple2!54557 hash!405 oldBucket!34)))))

(declare-fun b!4732216 () Bool)

(declare-fun e!2951675 () Bool)

(declare-fun e!2951678 () Bool)

(assert (=> b!4732216 (= e!2951675 e!2951678)))

(declare-fun res!2003638 () Bool)

(assert (=> b!4732216 (=> res!2003638 e!2951678)))

(declare-fun key!4653 () K!14250)

(declare-fun containsKey!3425 (List!53025 K!14250) Bool)

(assert (=> b!4732216 (= res!2003638 (not (containsKey!3425 (t!360301 oldBucket!34) key!4653)))))

(assert (=> b!4732216 (containsKey!3425 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!131575 0))(
  ( (Unit!131576) )
))
(declare-fun lt!1895228 () Unit!131575)

(declare-fun lemmaGetPairDefinedThenContainsKey!324 (List!53025 K!14250 Hashable!6409) Unit!131575)

(assert (=> b!4732216 (= lt!1895228 (lemmaGetPairDefinedThenContainsKey!324 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1895243 () List!53025)

(declare-datatypes ((Option!12411 0))(
  ( (None!12410) (Some!12410 (v!47035 tuple2!54554)) )
))
(declare-fun isDefined!9665 (Option!12411) Bool)

(declare-fun getPair!580 (List!53025 K!14250) Option!12411)

(assert (=> b!4732216 (isDefined!9665 (getPair!580 lt!1895243 key!4653))))

(declare-fun lt!1895239 () tuple2!54556)

(declare-fun lt!1895230 () Unit!131575)

(declare-fun lambda!217432 () Int)

(declare-fun forallContained!3683 (List!53026 Int tuple2!54556) Unit!131575)

(assert (=> b!4732216 (= lt!1895230 (forallContained!3683 (toList!5969 lm!2023) lambda!217432 lt!1895239))))

(declare-fun contains!16276 (List!53026 tuple2!54556) Bool)

(assert (=> b!4732216 (contains!16276 (toList!5969 lm!2023) lt!1895239)))

(declare-fun lt!1895232 () (_ BitVec 64))

(assert (=> b!4732216 (= lt!1895239 (tuple2!54557 lt!1895232 lt!1895243))))

(declare-fun lt!1895241 () Unit!131575)

(declare-fun lemmaGetValueImpliesTupleContained!385 (ListLongMap!4499 (_ BitVec 64) List!53025) Unit!131575)

(assert (=> b!4732216 (= lt!1895241 (lemmaGetValueImpliesTupleContained!385 lm!2023 lt!1895232 lt!1895243))))

(declare-fun apply!12465 (ListLongMap!4499 (_ BitVec 64)) List!53025)

(assert (=> b!4732216 (= lt!1895243 (apply!12465 lm!2023 lt!1895232))))

(declare-fun contains!16277 (ListLongMap!4499 (_ BitVec 64)) Bool)

(assert (=> b!4732216 (contains!16277 lm!2023 lt!1895232)))

(declare-fun lt!1895236 () Unit!131575)

(declare-fun lemmaInGenMapThenLongMapContainsHash!786 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> b!4732216 (= lt!1895236 (lemmaInGenMapThenLongMapContainsHash!786 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1895235 () Unit!131575)

(declare-fun lemmaInGenMapThenGetPairDefined!376 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> b!4732216 (= lt!1895235 (lemmaInGenMapThenGetPairDefined!376 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4732217 () Bool)

(declare-fun res!2003634 () Bool)

(assert (=> b!4732217 (=> (not res!2003634) (not e!2951670))))

(get-info :version)

(assert (=> b!4732217 (= res!2003634 ((_ is Cons!52902) (toList!5969 lm!2023)))))

(declare-fun b!4732218 () Bool)

(declare-fun res!2003631 () Bool)

(declare-fun e!2951677 () Bool)

(assert (=> b!4732218 (=> (not res!2003631) (not e!2951677))))

(declare-fun removePairForKey!1635 (List!53025 K!14250) List!53025)

(assert (=> b!4732218 (= res!2003631 (= (removePairForKey!1635 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4732219 () Bool)

(assert (=> b!4732219 (= e!2951670 (not e!2951675))))

(declare-fun res!2003628 () Bool)

(assert (=> b!4732219 (=> res!2003628 e!2951675)))

(assert (=> b!4732219 (= res!2003628 (or (and ((_ is Cons!52901) oldBucket!34) (= (_1!30571 (h!59268 oldBucket!34)) key!4653)) (not ((_ is Cons!52901) oldBucket!34)) (= (_1!30571 (h!59268 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5333 0))(
  ( (ListMap!5334 (toList!5970 List!53025)) )
))
(declare-fun lt!1895233 () ListMap!5333)

(declare-fun lt!1895240 () ListMap!5333)

(declare-fun addToMapMapFromBucket!1470 (List!53025 ListMap!5333) ListMap!5333)

(assert (=> b!4732219 (= lt!1895233 (addToMapMapFromBucket!1470 (_2!30572 (h!59269 (toList!5969 lm!2023))) lt!1895240))))

(declare-fun extractMap!2066 (List!53026) ListMap!5333)

(assert (=> b!4732219 (= lt!1895240 (extractMap!2066 (t!360302 (toList!5969 lm!2023))))))

(declare-fun tail!9064 (ListLongMap!4499) ListLongMap!4499)

(assert (=> b!4732219 (= (t!360302 (toList!5969 lm!2023)) (toList!5969 (tail!9064 lm!2023)))))

(declare-fun b!4732220 () Bool)

(declare-fun e!2951672 () Bool)

(assert (=> b!4732220 (= e!2951677 e!2951672)))

(declare-fun res!2003632 () Bool)

(assert (=> b!4732220 (=> (not res!2003632) (not e!2951672))))

(declare-fun contains!16278 (ListMap!5333 K!14250) Bool)

(assert (=> b!4732220 (= res!2003632 (contains!16278 lt!1895233 key!4653))))

(assert (=> b!4732220 (= lt!1895233 (extractMap!2066 (toList!5969 lm!2023)))))

(declare-fun res!2003627 () Bool)

(assert (=> start!482392 (=> (not res!2003627) (not e!2951677))))

(declare-fun forall!11643 (List!53026 Int) Bool)

(assert (=> start!482392 (= res!2003627 (forall!11643 (toList!5969 lm!2023) lambda!217432))))

(assert (=> start!482392 e!2951677))

(declare-fun e!2951671 () Bool)

(declare-fun inv!68124 (ListLongMap!4499) Bool)

(assert (=> start!482392 (and (inv!68124 lm!2023) e!2951671)))

(declare-fun tp_is_empty!31453 () Bool)

(assert (=> start!482392 tp_is_empty!31453))

(declare-fun e!2951674 () Bool)

(assert (=> start!482392 e!2951674))

(assert (=> start!482392 true))

(declare-fun e!2951676 () Bool)

(assert (=> start!482392 e!2951676))

(declare-fun b!4732221 () Bool)

(declare-fun res!2003641 () Bool)

(assert (=> b!4732221 (=> (not res!2003641) (not e!2951677))))

(declare-fun noDuplicateKeys!2040 (List!53025) Bool)

(assert (=> b!4732221 (= res!2003641 (noDuplicateKeys!2040 oldBucket!34))))

(declare-fun b!4732222 () Bool)

(declare-fun tp!1348901 () Bool)

(assert (=> b!4732222 (= e!2951671 tp!1348901)))

(declare-fun b!4732223 () Bool)

(declare-fun res!2003633 () Bool)

(declare-fun e!2951673 () Bool)

(assert (=> b!4732223 (=> res!2003633 e!2951673)))

(declare-fun lt!1895237 () List!53025)

(assert (=> b!4732223 (= res!2003633 (not (= (removePairForKey!1635 (t!360301 oldBucket!34) key!4653) lt!1895237)))))

(declare-fun b!4732224 () Bool)

(declare-fun res!2003629 () Bool)

(assert (=> b!4732224 (=> (not res!2003629) (not e!2951670))))

(declare-fun allKeysSameHashInMap!1954 (ListLongMap!4499 Hashable!6409) Bool)

(assert (=> b!4732224 (= res!2003629 (allKeysSameHashInMap!1954 lm!2023 hashF!1323))))

(declare-fun b!4732225 () Bool)

(declare-fun res!2003636 () Bool)

(assert (=> b!4732225 (=> (not res!2003636) (not e!2951677))))

(assert (=> b!4732225 (= res!2003636 (allKeysSameHash!1866 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4732226 () Bool)

(declare-fun res!2003630 () Bool)

(assert (=> b!4732226 (=> (not res!2003630) (not e!2951677))))

(assert (=> b!4732226 (= res!2003630 (noDuplicateKeys!2040 newBucket!218))))

(declare-fun tp_is_empty!31455 () Bool)

(declare-fun tp!1348903 () Bool)

(declare-fun b!4732227 () Bool)

(assert (=> b!4732227 (= e!2951674 (and tp_is_empty!31453 tp_is_empty!31455 tp!1348903))))

(declare-fun b!4732228 () Bool)

(assert (=> b!4732228 (= e!2951673 (noDuplicateKeys!2040 lt!1895237))))

(declare-fun lt!1895242 () tuple2!54554)

(declare-fun lt!1895234 () List!53025)

(declare-fun eq!1137 (ListMap!5333 ListMap!5333) Bool)

(declare-fun +!2288 (ListMap!5333 tuple2!54554) ListMap!5333)

(assert (=> b!4732228 (eq!1137 (addToMapMapFromBucket!1470 (Cons!52901 lt!1895242 lt!1895234) lt!1895240) (+!2288 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895242))))

(declare-fun lt!1895229 () Unit!131575)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!386 (tuple2!54554 List!53025 ListMap!5333) Unit!131575)

(assert (=> b!4732228 (= lt!1895229 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!386 lt!1895242 lt!1895234 lt!1895240))))

(declare-fun head!10284 (List!53025) tuple2!54554)

(assert (=> b!4732228 (= lt!1895242 (head!10284 oldBucket!34))))

(declare-fun lt!1895231 () List!53026)

(assert (=> b!4732228 (contains!16278 (extractMap!2066 lt!1895231) key!4653)))

(declare-fun lt!1895238 () Unit!131575)

(declare-fun lemmaListContainsThenExtractedMapContains!548 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> b!4732228 (= lt!1895238 (lemmaListContainsThenExtractedMapContains!548 (ListLongMap!4500 lt!1895231) key!4653 hashF!1323))))

(assert (=> b!4732228 (= lt!1895231 (Cons!52902 (tuple2!54557 hash!405 (t!360301 oldBucket!34)) (t!360302 (toList!5969 lm!2023))))))

(declare-fun b!4732229 () Bool)

(assert (=> b!4732229 (= e!2951678 e!2951673)))

(declare-fun res!2003637 () Bool)

(assert (=> b!4732229 (=> res!2003637 e!2951673)))

(assert (=> b!4732229 (= res!2003637 (not (= (removePairForKey!1635 lt!1895234 key!4653) lt!1895237)))))

(declare-fun tail!9065 (List!53025) List!53025)

(assert (=> b!4732229 (= lt!1895237 (tail!9065 newBucket!218))))

(assert (=> b!4732229 (= lt!1895234 (tail!9065 oldBucket!34))))

(declare-fun b!4732230 () Bool)

(assert (=> b!4732230 (= e!2951672 e!2951670)))

(declare-fun res!2003640 () Bool)

(assert (=> b!4732230 (=> (not res!2003640) (not e!2951670))))

(assert (=> b!4732230 (= res!2003640 (= lt!1895232 hash!405))))

(declare-fun hash!4428 (Hashable!6409 K!14250) (_ BitVec 64))

(assert (=> b!4732230 (= lt!1895232 (hash!4428 hashF!1323 key!4653))))

(declare-fun tp!1348902 () Bool)

(declare-fun b!4732231 () Bool)

(assert (=> b!4732231 (= e!2951676 (and tp_is_empty!31453 tp_is_empty!31455 tp!1348902))))

(assert (= (and start!482392 res!2003627) b!4732221))

(assert (= (and b!4732221 res!2003641) b!4732226))

(assert (= (and b!4732226 res!2003630) b!4732218))

(assert (= (and b!4732218 res!2003631) b!4732225))

(assert (= (and b!4732225 res!2003636) b!4732220))

(assert (= (and b!4732220 res!2003632) b!4732230))

(assert (= (and b!4732230 res!2003640) b!4732214))

(assert (= (and b!4732214 res!2003639) b!4732224))

(assert (= (and b!4732224 res!2003629) b!4732215))

(assert (= (and b!4732215 res!2003635) b!4732217))

(assert (= (and b!4732217 res!2003634) b!4732219))

(assert (= (and b!4732219 (not res!2003628)) b!4732216))

(assert (= (and b!4732216 (not res!2003638)) b!4732229))

(assert (= (and b!4732229 (not res!2003637)) b!4732223))

(assert (= (and b!4732223 (not res!2003633)) b!4732228))

(assert (= start!482392 b!4732222))

(assert (= (and start!482392 ((_ is Cons!52901) oldBucket!34)) b!4732227))

(assert (= (and start!482392 ((_ is Cons!52901) newBucket!218)) b!4732231))

(declare-fun m!5674961 () Bool)

(assert (=> b!4732216 m!5674961))

(declare-fun m!5674963 () Bool)

(assert (=> b!4732216 m!5674963))

(declare-fun m!5674965 () Bool)

(assert (=> b!4732216 m!5674965))

(declare-fun m!5674967 () Bool)

(assert (=> b!4732216 m!5674967))

(declare-fun m!5674969 () Bool)

(assert (=> b!4732216 m!5674969))

(assert (=> b!4732216 m!5674965))

(declare-fun m!5674971 () Bool)

(assert (=> b!4732216 m!5674971))

(declare-fun m!5674973 () Bool)

(assert (=> b!4732216 m!5674973))

(declare-fun m!5674975 () Bool)

(assert (=> b!4732216 m!5674975))

(declare-fun m!5674977 () Bool)

(assert (=> b!4732216 m!5674977))

(declare-fun m!5674979 () Bool)

(assert (=> b!4732216 m!5674979))

(declare-fun m!5674981 () Bool)

(assert (=> b!4732216 m!5674981))

(declare-fun m!5674983 () Bool)

(assert (=> b!4732216 m!5674983))

(declare-fun m!5674985 () Bool)

(assert (=> start!482392 m!5674985))

(declare-fun m!5674987 () Bool)

(assert (=> start!482392 m!5674987))

(declare-fun m!5674989 () Bool)

(assert (=> b!4732230 m!5674989))

(declare-fun m!5674991 () Bool)

(assert (=> b!4732223 m!5674991))

(declare-fun m!5674993 () Bool)

(assert (=> b!4732228 m!5674993))

(declare-fun m!5674995 () Bool)

(assert (=> b!4732228 m!5674995))

(declare-fun m!5674997 () Bool)

(assert (=> b!4732228 m!5674997))

(assert (=> b!4732228 m!5674997))

(declare-fun m!5674999 () Bool)

(assert (=> b!4732228 m!5674999))

(declare-fun m!5675001 () Bool)

(assert (=> b!4732228 m!5675001))

(assert (=> b!4732228 m!5674995))

(declare-fun m!5675003 () Bool)

(assert (=> b!4732228 m!5675003))

(declare-fun m!5675005 () Bool)

(assert (=> b!4732228 m!5675005))

(declare-fun m!5675007 () Bool)

(assert (=> b!4732228 m!5675007))

(assert (=> b!4732228 m!5675005))

(assert (=> b!4732228 m!5675003))

(declare-fun m!5675009 () Bool)

(assert (=> b!4732228 m!5675009))

(declare-fun m!5675011 () Bool)

(assert (=> b!4732228 m!5675011))

(declare-fun m!5675013 () Bool)

(assert (=> b!4732220 m!5675013))

(declare-fun m!5675015 () Bool)

(assert (=> b!4732220 m!5675015))

(declare-fun m!5675017 () Bool)

(assert (=> b!4732218 m!5675017))

(declare-fun m!5675019 () Bool)

(assert (=> b!4732225 m!5675019))

(declare-fun m!5675021 () Bool)

(assert (=> b!4732226 m!5675021))

(declare-fun m!5675023 () Bool)

(assert (=> b!4732219 m!5675023))

(declare-fun m!5675025 () Bool)

(assert (=> b!4732219 m!5675025))

(declare-fun m!5675027 () Bool)

(assert (=> b!4732219 m!5675027))

(declare-fun m!5675029 () Bool)

(assert (=> b!4732215 m!5675029))

(declare-fun m!5675031 () Bool)

(assert (=> b!4732224 m!5675031))

(declare-fun m!5675033 () Bool)

(assert (=> b!4732214 m!5675033))

(declare-fun m!5675035 () Bool)

(assert (=> b!4732229 m!5675035))

(declare-fun m!5675037 () Bool)

(assert (=> b!4732229 m!5675037))

(declare-fun m!5675039 () Bool)

(assert (=> b!4732229 m!5675039))

(declare-fun m!5675041 () Bool)

(assert (=> b!4732221 m!5675041))

(check-sat (not b!4732228) (not b!4732229) (not b!4732227) (not b!4732230) (not b!4732221) tp_is_empty!31453 (not b!4732223) tp_is_empty!31455 (not b!4732214) (not b!4732216) (not b!4732231) (not b!4732222) (not b!4732218) (not b!4732219) (not start!482392) (not b!4732224) (not b!4732215) (not b!4732225) (not b!4732220) (not b!4732226))
(check-sat)
(get-model)

(declare-fun d!1509318 () Bool)

(declare-fun lt!1895275 () List!53025)

(assert (=> d!1509318 (not (containsKey!3425 lt!1895275 key!4653))))

(declare-fun e!2951715 () List!53025)

(assert (=> d!1509318 (= lt!1895275 e!2951715)))

(declare-fun c!808177 () Bool)

(assert (=> d!1509318 (= c!808177 (and ((_ is Cons!52901) (t!360301 oldBucket!34)) (= (_1!30571 (h!59268 (t!360301 oldBucket!34))) key!4653)))))

(assert (=> d!1509318 (noDuplicateKeys!2040 (t!360301 oldBucket!34))))

(assert (=> d!1509318 (= (removePairForKey!1635 (t!360301 oldBucket!34) key!4653) lt!1895275)))

(declare-fun b!4732292 () Bool)

(declare-fun e!2951714 () List!53025)

(assert (=> b!4732292 (= e!2951715 e!2951714)))

(declare-fun c!808176 () Bool)

(assert (=> b!4732292 (= c!808176 ((_ is Cons!52901) (t!360301 oldBucket!34)))))

(declare-fun b!4732291 () Bool)

(assert (=> b!4732291 (= e!2951715 (t!360301 (t!360301 oldBucket!34)))))

(declare-fun b!4732293 () Bool)

(assert (=> b!4732293 (= e!2951714 (Cons!52901 (h!59268 (t!360301 oldBucket!34)) (removePairForKey!1635 (t!360301 (t!360301 oldBucket!34)) key!4653)))))

(declare-fun b!4732294 () Bool)

(assert (=> b!4732294 (= e!2951714 Nil!52901)))

(assert (= (and d!1509318 c!808177) b!4732291))

(assert (= (and d!1509318 (not c!808177)) b!4732292))

(assert (= (and b!4732292 c!808176) b!4732293))

(assert (= (and b!4732292 (not c!808176)) b!4732294))

(declare-fun m!5675083 () Bool)

(assert (=> d!1509318 m!5675083))

(declare-fun m!5675085 () Bool)

(assert (=> d!1509318 m!5675085))

(declare-fun m!5675087 () Bool)

(assert (=> b!4732293 m!5675087))

(assert (=> b!4732223 d!1509318))

(declare-fun d!1509328 () Bool)

(declare-fun res!2003669 () Bool)

(declare-fun e!2951732 () Bool)

(assert (=> d!1509328 (=> res!2003669 e!2951732)))

(assert (=> d!1509328 (= res!2003669 (not ((_ is Cons!52901) oldBucket!34)))))

(assert (=> d!1509328 (= (noDuplicateKeys!2040 oldBucket!34) e!2951732)))

(declare-fun b!4732315 () Bool)

(declare-fun e!2951733 () Bool)

(assert (=> b!4732315 (= e!2951732 e!2951733)))

(declare-fun res!2003670 () Bool)

(assert (=> b!4732315 (=> (not res!2003670) (not e!2951733))))

(assert (=> b!4732315 (= res!2003670 (not (containsKey!3425 (t!360301 oldBucket!34) (_1!30571 (h!59268 oldBucket!34)))))))

(declare-fun b!4732316 () Bool)

(assert (=> b!4732316 (= e!2951733 (noDuplicateKeys!2040 (t!360301 oldBucket!34)))))

(assert (= (and d!1509328 (not res!2003669)) b!4732315))

(assert (= (and b!4732315 res!2003670) b!4732316))

(declare-fun m!5675103 () Bool)

(assert (=> b!4732315 m!5675103))

(assert (=> b!4732316 m!5675085))

(assert (=> b!4732221 d!1509328))

(declare-fun d!1509342 () Bool)

(assert (=> d!1509342 (= (head!10283 (toList!5969 lm!2023)) (h!59269 (toList!5969 lm!2023)))))

(assert (=> b!4732215 d!1509342))

(declare-fun d!1509344 () Bool)

(assert (=> d!1509344 true))

(assert (=> d!1509344 true))

(declare-fun lambda!217441 () Int)

(declare-fun forall!11645 (List!53025 Int) Bool)

(assert (=> d!1509344 (= (allKeysSameHash!1866 oldBucket!34 hash!405 hashF!1323) (forall!11645 oldBucket!34 lambda!217441))))

(declare-fun bs!1120840 () Bool)

(assert (= bs!1120840 d!1509344))

(declare-fun m!5675109 () Bool)

(assert (=> bs!1120840 m!5675109))

(assert (=> b!4732225 d!1509344))

(declare-fun bs!1120841 () Bool)

(declare-fun d!1509348 () Bool)

(assert (= bs!1120841 (and d!1509348 d!1509344)))

(declare-fun lambda!217442 () Int)

(assert (=> bs!1120841 (= lambda!217442 lambda!217441)))

(assert (=> d!1509348 true))

(assert (=> d!1509348 true))

(assert (=> d!1509348 (= (allKeysSameHash!1866 newBucket!218 hash!405 hashF!1323) (forall!11645 newBucket!218 lambda!217442))))

(declare-fun bs!1120842 () Bool)

(assert (= bs!1120842 d!1509348))

(declare-fun m!5675111 () Bool)

(assert (=> bs!1120842 m!5675111))

(assert (=> b!4732214 d!1509348))

(declare-fun bs!1120843 () Bool)

(declare-fun d!1509350 () Bool)

(assert (= bs!1120843 (and d!1509350 start!482392)))

(declare-fun lambda!217445 () Int)

(assert (=> bs!1120843 (not (= lambda!217445 lambda!217432))))

(assert (=> d!1509350 true))

(assert (=> d!1509350 (= (allKeysSameHashInMap!1954 lm!2023 hashF!1323) (forall!11643 (toList!5969 lm!2023) lambda!217445))))

(declare-fun bs!1120845 () Bool)

(assert (= bs!1120845 d!1509350))

(declare-fun m!5675135 () Bool)

(assert (=> bs!1120845 m!5675135))

(assert (=> b!4732224 d!1509350))

(declare-fun d!1509358 () Bool)

(declare-fun res!2003704 () Bool)

(declare-fun e!2951770 () Bool)

(assert (=> d!1509358 (=> res!2003704 e!2951770)))

(assert (=> d!1509358 (= res!2003704 ((_ is Nil!52902) (toList!5969 lm!2023)))))

(assert (=> d!1509358 (= (forall!11643 (toList!5969 lm!2023) lambda!217432) e!2951770)))

(declare-fun b!4732369 () Bool)

(declare-fun e!2951771 () Bool)

(assert (=> b!4732369 (= e!2951770 e!2951771)))

(declare-fun res!2003705 () Bool)

(assert (=> b!4732369 (=> (not res!2003705) (not e!2951771))))

(declare-fun dynLambda!21853 (Int tuple2!54556) Bool)

(assert (=> b!4732369 (= res!2003705 (dynLambda!21853 lambda!217432 (h!59269 (toList!5969 lm!2023))))))

(declare-fun b!4732370 () Bool)

(assert (=> b!4732370 (= e!2951771 (forall!11643 (t!360302 (toList!5969 lm!2023)) lambda!217432))))

(assert (= (and d!1509358 (not res!2003704)) b!4732369))

(assert (= (and b!4732369 res!2003705) b!4732370))

(declare-fun b_lambda!180601 () Bool)

(assert (=> (not b_lambda!180601) (not b!4732369)))

(declare-fun m!5675143 () Bool)

(assert (=> b!4732369 m!5675143))

(declare-fun m!5675145 () Bool)

(assert (=> b!4732370 m!5675145))

(assert (=> start!482392 d!1509358))

(declare-fun d!1509366 () Bool)

(declare-fun isStrictlySorted!768 (List!53026) Bool)

(assert (=> d!1509366 (= (inv!68124 lm!2023) (isStrictlySorted!768 (toList!5969 lm!2023)))))

(declare-fun bs!1120850 () Bool)

(assert (= bs!1120850 d!1509366))

(declare-fun m!5675153 () Bool)

(assert (=> bs!1120850 m!5675153))

(assert (=> start!482392 d!1509366))

(declare-fun d!1509370 () Bool)

(declare-fun e!2951774 () Bool)

(assert (=> d!1509370 e!2951774))

(declare-fun res!2003710 () Bool)

(assert (=> d!1509370 (=> (not res!2003710) (not e!2951774))))

(declare-fun lt!1895304 () ListMap!5333)

(assert (=> d!1509370 (= res!2003710 (contains!16278 lt!1895304 (_1!30571 lt!1895242)))))

(declare-fun lt!1895305 () List!53025)

(assert (=> d!1509370 (= lt!1895304 (ListMap!5334 lt!1895305))))

(declare-fun lt!1895307 () Unit!131575)

(declare-fun lt!1895306 () Unit!131575)

(assert (=> d!1509370 (= lt!1895307 lt!1895306)))

(declare-datatypes ((Option!12414 0))(
  ( (None!12413) (Some!12413 (v!47042 V!14496)) )
))
(declare-fun getValueByKey!1992 (List!53025 K!14250) Option!12414)

(assert (=> d!1509370 (= (getValueByKey!1992 lt!1895305 (_1!30571 lt!1895242)) (Some!12413 (_2!30571 lt!1895242)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1097 (List!53025 K!14250 V!14496) Unit!131575)

(assert (=> d!1509370 (= lt!1895306 (lemmaContainsTupThenGetReturnValue!1097 lt!1895305 (_1!30571 lt!1895242) (_2!30571 lt!1895242)))))

(declare-fun insertNoDuplicatedKeys!605 (List!53025 K!14250 V!14496) List!53025)

(assert (=> d!1509370 (= lt!1895305 (insertNoDuplicatedKeys!605 (toList!5970 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240)) (_1!30571 lt!1895242) (_2!30571 lt!1895242)))))

(assert (=> d!1509370 (= (+!2288 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895242) lt!1895304)))

(declare-fun b!4732375 () Bool)

(declare-fun res!2003711 () Bool)

(assert (=> b!4732375 (=> (not res!2003711) (not e!2951774))))

(assert (=> b!4732375 (= res!2003711 (= (getValueByKey!1992 (toList!5970 lt!1895304) (_1!30571 lt!1895242)) (Some!12413 (_2!30571 lt!1895242))))))

(declare-fun b!4732376 () Bool)

(declare-fun contains!16281 (List!53025 tuple2!54554) Bool)

(assert (=> b!4732376 (= e!2951774 (contains!16281 (toList!5970 lt!1895304) lt!1895242))))

(assert (= (and d!1509370 res!2003710) b!4732375))

(assert (= (and b!4732375 res!2003711) b!4732376))

(declare-fun m!5675159 () Bool)

(assert (=> d!1509370 m!5675159))

(declare-fun m!5675161 () Bool)

(assert (=> d!1509370 m!5675161))

(declare-fun m!5675163 () Bool)

(assert (=> d!1509370 m!5675163))

(declare-fun m!5675165 () Bool)

(assert (=> d!1509370 m!5675165))

(declare-fun m!5675167 () Bool)

(assert (=> b!4732375 m!5675167))

(declare-fun m!5675169 () Bool)

(assert (=> b!4732376 m!5675169))

(assert (=> b!4732228 d!1509370))

(declare-fun d!1509374 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9431 (List!53025) (InoxSet tuple2!54554))

(assert (=> d!1509374 (= (eq!1137 (addToMapMapFromBucket!1470 (Cons!52901 lt!1895242 lt!1895234) lt!1895240) (+!2288 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895242)) (= (content!9431 (toList!5970 (addToMapMapFromBucket!1470 (Cons!52901 lt!1895242 lt!1895234) lt!1895240))) (content!9431 (toList!5970 (+!2288 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895242)))))))

(declare-fun bs!1120852 () Bool)

(assert (= bs!1120852 d!1509374))

(declare-fun m!5675171 () Bool)

(assert (=> bs!1120852 m!5675171))

(declare-fun m!5675173 () Bool)

(assert (=> bs!1120852 m!5675173))

(assert (=> b!4732228 d!1509374))

(declare-fun d!1509376 () Bool)

(declare-fun res!2003712 () Bool)

(declare-fun e!2951775 () Bool)

(assert (=> d!1509376 (=> res!2003712 e!2951775)))

(assert (=> d!1509376 (= res!2003712 (not ((_ is Cons!52901) lt!1895237)))))

(assert (=> d!1509376 (= (noDuplicateKeys!2040 lt!1895237) e!2951775)))

(declare-fun b!4732377 () Bool)

(declare-fun e!2951776 () Bool)

(assert (=> b!4732377 (= e!2951775 e!2951776)))

(declare-fun res!2003713 () Bool)

(assert (=> b!4732377 (=> (not res!2003713) (not e!2951776))))

(assert (=> b!4732377 (= res!2003713 (not (containsKey!3425 (t!360301 lt!1895237) (_1!30571 (h!59268 lt!1895237)))))))

(declare-fun b!4732378 () Bool)

(assert (=> b!4732378 (= e!2951776 (noDuplicateKeys!2040 (t!360301 lt!1895237)))))

(assert (= (and d!1509376 (not res!2003712)) b!4732377))

(assert (= (and b!4732377 res!2003713) b!4732378))

(declare-fun m!5675175 () Bool)

(assert (=> b!4732377 m!5675175))

(declare-fun m!5675177 () Bool)

(assert (=> b!4732378 m!5675177))

(assert (=> b!4732228 d!1509376))

(declare-fun bs!1120896 () Bool)

(declare-fun b!4732445 () Bool)

(assert (= bs!1120896 (and b!4732445 d!1509344)))

(declare-fun lambda!217525 () Int)

(assert (=> bs!1120896 (not (= lambda!217525 lambda!217441))))

(declare-fun bs!1120897 () Bool)

(assert (= bs!1120897 (and b!4732445 d!1509348)))

(assert (=> bs!1120897 (not (= lambda!217525 lambda!217442))))

(assert (=> b!4732445 true))

(declare-fun bs!1120898 () Bool)

(declare-fun b!4732447 () Bool)

(assert (= bs!1120898 (and b!4732447 d!1509344)))

(declare-fun lambda!217526 () Int)

(assert (=> bs!1120898 (not (= lambda!217526 lambda!217441))))

(declare-fun bs!1120899 () Bool)

(assert (= bs!1120899 (and b!4732447 d!1509348)))

(assert (=> bs!1120899 (not (= lambda!217526 lambda!217442))))

(declare-fun bs!1120900 () Bool)

(assert (= bs!1120900 (and b!4732447 b!4732445)))

(assert (=> bs!1120900 (= lambda!217526 lambda!217525)))

(assert (=> b!4732447 true))

(declare-fun lambda!217527 () Int)

(assert (=> bs!1120898 (not (= lambda!217527 lambda!217441))))

(assert (=> bs!1120899 (not (= lambda!217527 lambda!217442))))

(declare-fun lt!1895497 () ListMap!5333)

(assert (=> bs!1120900 (= (= lt!1895497 lt!1895240) (= lambda!217527 lambda!217525))))

(assert (=> b!4732447 (= (= lt!1895497 lt!1895240) (= lambda!217527 lambda!217526))))

(assert (=> b!4732447 true))

(declare-fun bs!1120901 () Bool)

(declare-fun d!1509378 () Bool)

(assert (= bs!1120901 (and d!1509378 b!4732445)))

(declare-fun lambda!217528 () Int)

(declare-fun lt!1895495 () ListMap!5333)

(assert (=> bs!1120901 (= (= lt!1895495 lt!1895240) (= lambda!217528 lambda!217525))))

(declare-fun bs!1120902 () Bool)

(assert (= bs!1120902 (and d!1509378 d!1509344)))

(assert (=> bs!1120902 (not (= lambda!217528 lambda!217441))))

(declare-fun bs!1120903 () Bool)

(assert (= bs!1120903 (and d!1509378 b!4732447)))

(assert (=> bs!1120903 (= (= lt!1895495 lt!1895497) (= lambda!217528 lambda!217527))))

(assert (=> bs!1120903 (= (= lt!1895495 lt!1895240) (= lambda!217528 lambda!217526))))

(declare-fun bs!1120904 () Bool)

(assert (= bs!1120904 (and d!1509378 d!1509348)))

(assert (=> bs!1120904 (not (= lambda!217528 lambda!217442))))

(assert (=> d!1509378 true))

(declare-fun e!2951816 () ListMap!5333)

(assert (=> b!4732445 (= e!2951816 lt!1895240)))

(declare-fun lt!1895493 () Unit!131575)

(declare-fun call!330988 () Unit!131575)

(assert (=> b!4732445 (= lt!1895493 call!330988)))

(declare-fun call!330986 () Bool)

(assert (=> b!4732445 call!330986))

(declare-fun lt!1895479 () Unit!131575)

(assert (=> b!4732445 (= lt!1895479 lt!1895493)))

(declare-fun call!330987 () Bool)

(assert (=> b!4732445 call!330987))

(declare-fun lt!1895488 () Unit!131575)

(declare-fun Unit!131591 () Unit!131575)

(assert (=> b!4732445 (= lt!1895488 Unit!131591)))

(declare-fun e!2951815 () Bool)

(assert (=> d!1509378 e!2951815))

(declare-fun res!2003752 () Bool)

(assert (=> d!1509378 (=> (not res!2003752) (not e!2951815))))

(assert (=> d!1509378 (= res!2003752 (forall!11645 lt!1895234 lambda!217528))))

(assert (=> d!1509378 (= lt!1895495 e!2951816)))

(declare-fun c!808201 () Bool)

(assert (=> d!1509378 (= c!808201 ((_ is Nil!52901) lt!1895234))))

(assert (=> d!1509378 (noDuplicateKeys!2040 lt!1895234)))

(assert (=> d!1509378 (= (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895495)))

(declare-fun bm!330981 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!816 (ListMap!5333) Unit!131575)

(assert (=> bm!330981 (= call!330988 (lemmaContainsAllItsOwnKeys!816 lt!1895240))))

(declare-fun bm!330982 () Bool)

(assert (=> bm!330982 (= call!330987 (forall!11645 (ite c!808201 (toList!5970 lt!1895240) lt!1895234) (ite c!808201 lambda!217525 lambda!217527)))))

(declare-fun b!4732446 () Bool)

(declare-fun res!2003751 () Bool)

(assert (=> b!4732446 (=> (not res!2003751) (not e!2951815))))

(assert (=> b!4732446 (= res!2003751 (forall!11645 (toList!5970 lt!1895240) lambda!217528))))

(assert (=> b!4732447 (= e!2951816 lt!1895497)))

(declare-fun lt!1895487 () ListMap!5333)

(assert (=> b!4732447 (= lt!1895487 (+!2288 lt!1895240 (h!59268 lt!1895234)))))

(assert (=> b!4732447 (= lt!1895497 (addToMapMapFromBucket!1470 (t!360301 lt!1895234) (+!2288 lt!1895240 (h!59268 lt!1895234))))))

(declare-fun lt!1895492 () Unit!131575)

(assert (=> b!4732447 (= lt!1895492 call!330988)))

(assert (=> b!4732447 (forall!11645 (toList!5970 lt!1895240) lambda!217526)))

(declare-fun lt!1895490 () Unit!131575)

(assert (=> b!4732447 (= lt!1895490 lt!1895492)))

(assert (=> b!4732447 (forall!11645 (toList!5970 lt!1895487) lambda!217527)))

(declare-fun lt!1895482 () Unit!131575)

(declare-fun Unit!131595 () Unit!131575)

(assert (=> b!4732447 (= lt!1895482 Unit!131595)))

(assert (=> b!4732447 (forall!11645 (t!360301 lt!1895234) lambda!217527)))

(declare-fun lt!1895494 () Unit!131575)

(declare-fun Unit!131596 () Unit!131575)

(assert (=> b!4732447 (= lt!1895494 Unit!131596)))

(declare-fun lt!1895498 () Unit!131575)

(declare-fun Unit!131598 () Unit!131575)

(assert (=> b!4732447 (= lt!1895498 Unit!131598)))

(declare-fun lt!1895481 () Unit!131575)

(declare-fun forallContained!3685 (List!53025 Int tuple2!54554) Unit!131575)

(assert (=> b!4732447 (= lt!1895481 (forallContained!3685 (toList!5970 lt!1895487) lambda!217527 (h!59268 lt!1895234)))))

(assert (=> b!4732447 (contains!16278 lt!1895487 (_1!30571 (h!59268 lt!1895234)))))

(declare-fun lt!1895484 () Unit!131575)

(declare-fun Unit!131600 () Unit!131575)

(assert (=> b!4732447 (= lt!1895484 Unit!131600)))

(assert (=> b!4732447 (contains!16278 lt!1895497 (_1!30571 (h!59268 lt!1895234)))))

(declare-fun lt!1895499 () Unit!131575)

(declare-fun Unit!131602 () Unit!131575)

(assert (=> b!4732447 (= lt!1895499 Unit!131602)))

(assert (=> b!4732447 (forall!11645 lt!1895234 lambda!217527)))

(declare-fun lt!1895485 () Unit!131575)

(declare-fun Unit!131605 () Unit!131575)

(assert (=> b!4732447 (= lt!1895485 Unit!131605)))

(assert (=> b!4732447 call!330986))

(declare-fun lt!1895489 () Unit!131575)

(declare-fun Unit!131606 () Unit!131575)

(assert (=> b!4732447 (= lt!1895489 Unit!131606)))

(declare-fun lt!1895491 () Unit!131575)

(declare-fun Unit!131607 () Unit!131575)

(assert (=> b!4732447 (= lt!1895491 Unit!131607)))

(declare-fun lt!1895496 () Unit!131575)

(declare-fun addForallContainsKeyThenBeforeAdding!815 (ListMap!5333 ListMap!5333 K!14250 V!14496) Unit!131575)

(assert (=> b!4732447 (= lt!1895496 (addForallContainsKeyThenBeforeAdding!815 lt!1895240 lt!1895497 (_1!30571 (h!59268 lt!1895234)) (_2!30571 (h!59268 lt!1895234))))))

(assert (=> b!4732447 (forall!11645 (toList!5970 lt!1895240) lambda!217527)))

(declare-fun lt!1895486 () Unit!131575)

(assert (=> b!4732447 (= lt!1895486 lt!1895496)))

(assert (=> b!4732447 (forall!11645 (toList!5970 lt!1895240) lambda!217527)))

(declare-fun lt!1895480 () Unit!131575)

(declare-fun Unit!131609 () Unit!131575)

(assert (=> b!4732447 (= lt!1895480 Unit!131609)))

(declare-fun res!2003750 () Bool)

(assert (=> b!4732447 (= res!2003750 call!330987)))

(declare-fun e!2951814 () Bool)

(assert (=> b!4732447 (=> (not res!2003750) (not e!2951814))))

(assert (=> b!4732447 e!2951814))

(declare-fun lt!1895483 () Unit!131575)

(declare-fun Unit!131611 () Unit!131575)

(assert (=> b!4732447 (= lt!1895483 Unit!131611)))

(declare-fun b!4732448 () Bool)

(declare-fun invariantList!1531 (List!53025) Bool)

(assert (=> b!4732448 (= e!2951815 (invariantList!1531 (toList!5970 lt!1895495)))))

(declare-fun b!4732449 () Bool)

(assert (=> b!4732449 (= e!2951814 (forall!11645 (toList!5970 lt!1895240) lambda!217527))))

(declare-fun bm!330983 () Bool)

(assert (=> bm!330983 (= call!330986 (forall!11645 (ite c!808201 (toList!5970 lt!1895240) (toList!5970 lt!1895487)) (ite c!808201 lambda!217525 lambda!217527)))))

(assert (= (and d!1509378 c!808201) b!4732445))

(assert (= (and d!1509378 (not c!808201)) b!4732447))

(assert (= (and b!4732447 res!2003750) b!4732449))

(assert (= (or b!4732445 b!4732447) bm!330981))

(assert (= (or b!4732445 b!4732447) bm!330983))

(assert (= (or b!4732445 b!4732447) bm!330982))

(assert (= (and d!1509378 res!2003752) b!4732446))

(assert (= (and b!4732446 res!2003751) b!4732448))

(declare-fun m!5675305 () Bool)

(assert (=> bm!330981 m!5675305))

(declare-fun m!5675307 () Bool)

(assert (=> b!4732446 m!5675307))

(declare-fun m!5675309 () Bool)

(assert (=> bm!330983 m!5675309))

(declare-fun m!5675311 () Bool)

(assert (=> b!4732448 m!5675311))

(declare-fun m!5675313 () Bool)

(assert (=> bm!330982 m!5675313))

(declare-fun m!5675315 () Bool)

(assert (=> d!1509378 m!5675315))

(declare-fun m!5675317 () Bool)

(assert (=> d!1509378 m!5675317))

(declare-fun m!5675319 () Bool)

(assert (=> b!4732449 m!5675319))

(assert (=> b!4732447 m!5675319))

(declare-fun m!5675321 () Bool)

(assert (=> b!4732447 m!5675321))

(declare-fun m!5675323 () Bool)

(assert (=> b!4732447 m!5675323))

(declare-fun m!5675325 () Bool)

(assert (=> b!4732447 m!5675325))

(declare-fun m!5675327 () Bool)

(assert (=> b!4732447 m!5675327))

(declare-fun m!5675329 () Bool)

(assert (=> b!4732447 m!5675329))

(assert (=> b!4732447 m!5675323))

(declare-fun m!5675331 () Bool)

(assert (=> b!4732447 m!5675331))

(assert (=> b!4732447 m!5675319))

(declare-fun m!5675333 () Bool)

(assert (=> b!4732447 m!5675333))

(declare-fun m!5675335 () Bool)

(assert (=> b!4732447 m!5675335))

(declare-fun m!5675337 () Bool)

(assert (=> b!4732447 m!5675337))

(declare-fun m!5675339 () Bool)

(assert (=> b!4732447 m!5675339))

(assert (=> b!4732228 d!1509378))

(declare-fun bs!1120905 () Bool)

(declare-fun b!4732452 () Bool)

(assert (= bs!1120905 (and b!4732452 b!4732445)))

(declare-fun lambda!217529 () Int)

(assert (=> bs!1120905 (= lambda!217529 lambda!217525)))

(declare-fun bs!1120906 () Bool)

(assert (= bs!1120906 (and b!4732452 d!1509344)))

(assert (=> bs!1120906 (not (= lambda!217529 lambda!217441))))

(declare-fun bs!1120907 () Bool)

(assert (= bs!1120907 (and b!4732452 b!4732447)))

(assert (=> bs!1120907 (= (= lt!1895240 lt!1895497) (= lambda!217529 lambda!217527))))

(assert (=> bs!1120907 (= lambda!217529 lambda!217526)))

(declare-fun bs!1120908 () Bool)

(assert (= bs!1120908 (and b!4732452 d!1509348)))

(assert (=> bs!1120908 (not (= lambda!217529 lambda!217442))))

(declare-fun bs!1120909 () Bool)

(assert (= bs!1120909 (and b!4732452 d!1509378)))

(assert (=> bs!1120909 (= (= lt!1895240 lt!1895495) (= lambda!217529 lambda!217528))))

(assert (=> b!4732452 true))

(declare-fun bs!1120910 () Bool)

(declare-fun b!4732454 () Bool)

(assert (= bs!1120910 (and b!4732454 b!4732445)))

(declare-fun lambda!217530 () Int)

(assert (=> bs!1120910 (= lambda!217530 lambda!217525)))

(declare-fun bs!1120911 () Bool)

(assert (= bs!1120911 (and b!4732454 d!1509344)))

(assert (=> bs!1120911 (not (= lambda!217530 lambda!217441))))

(declare-fun bs!1120912 () Bool)

(assert (= bs!1120912 (and b!4732454 b!4732447)))

(assert (=> bs!1120912 (= (= lt!1895240 lt!1895497) (= lambda!217530 lambda!217527))))

(assert (=> bs!1120912 (= lambda!217530 lambda!217526)))

(declare-fun bs!1120913 () Bool)

(assert (= bs!1120913 (and b!4732454 d!1509378)))

(assert (=> bs!1120913 (= (= lt!1895240 lt!1895495) (= lambda!217530 lambda!217528))))

(declare-fun bs!1120914 () Bool)

(assert (= bs!1120914 (and b!4732454 d!1509348)))

(assert (=> bs!1120914 (not (= lambda!217530 lambda!217442))))

(declare-fun bs!1120915 () Bool)

(assert (= bs!1120915 (and b!4732454 b!4732452)))

(assert (=> bs!1120915 (= lambda!217530 lambda!217529)))

(assert (=> b!4732454 true))

(declare-fun lambda!217531 () Int)

(declare-fun lt!1895518 () ListMap!5333)

(assert (=> bs!1120910 (= (= lt!1895518 lt!1895240) (= lambda!217531 lambda!217525))))

(assert (=> bs!1120911 (not (= lambda!217531 lambda!217441))))

(assert (=> bs!1120912 (= (= lt!1895518 lt!1895497) (= lambda!217531 lambda!217527))))

(assert (=> b!4732454 (= (= lt!1895518 lt!1895240) (= lambda!217531 lambda!217530))))

(assert (=> bs!1120912 (= (= lt!1895518 lt!1895240) (= lambda!217531 lambda!217526))))

(assert (=> bs!1120913 (= (= lt!1895518 lt!1895495) (= lambda!217531 lambda!217528))))

(assert (=> bs!1120914 (not (= lambda!217531 lambda!217442))))

(assert (=> bs!1120915 (= (= lt!1895518 lt!1895240) (= lambda!217531 lambda!217529))))

(assert (=> b!4732454 true))

(declare-fun bs!1120916 () Bool)

(declare-fun d!1509398 () Bool)

(assert (= bs!1120916 (and d!1509398 b!4732445)))

(declare-fun lambda!217532 () Int)

(declare-fun lt!1895516 () ListMap!5333)

(assert (=> bs!1120916 (= (= lt!1895516 lt!1895240) (= lambda!217532 lambda!217525))))

(declare-fun bs!1120917 () Bool)

(assert (= bs!1120917 (and d!1509398 d!1509344)))

(assert (=> bs!1120917 (not (= lambda!217532 lambda!217441))))

(declare-fun bs!1120918 () Bool)

(assert (= bs!1120918 (and d!1509398 b!4732447)))

(assert (=> bs!1120918 (= (= lt!1895516 lt!1895497) (= lambda!217532 lambda!217527))))

(declare-fun bs!1120919 () Bool)

(assert (= bs!1120919 (and d!1509398 b!4732454)))

(assert (=> bs!1120919 (= (= lt!1895516 lt!1895240) (= lambda!217532 lambda!217530))))

(assert (=> bs!1120918 (= (= lt!1895516 lt!1895240) (= lambda!217532 lambda!217526))))

(assert (=> bs!1120919 (= (= lt!1895516 lt!1895518) (= lambda!217532 lambda!217531))))

(declare-fun bs!1120920 () Bool)

(assert (= bs!1120920 (and d!1509398 d!1509378)))

(assert (=> bs!1120920 (= (= lt!1895516 lt!1895495) (= lambda!217532 lambda!217528))))

(declare-fun bs!1120921 () Bool)

(assert (= bs!1120921 (and d!1509398 d!1509348)))

(assert (=> bs!1120921 (not (= lambda!217532 lambda!217442))))

(declare-fun bs!1120922 () Bool)

(assert (= bs!1120922 (and d!1509398 b!4732452)))

(assert (=> bs!1120922 (= (= lt!1895516 lt!1895240) (= lambda!217532 lambda!217529))))

(assert (=> d!1509398 true))

(declare-fun e!2951819 () ListMap!5333)

(assert (=> b!4732452 (= e!2951819 lt!1895240)))

(declare-fun lt!1895514 () Unit!131575)

(declare-fun call!330991 () Unit!131575)

(assert (=> b!4732452 (= lt!1895514 call!330991)))

(declare-fun call!330989 () Bool)

(assert (=> b!4732452 call!330989))

(declare-fun lt!1895500 () Unit!131575)

(assert (=> b!4732452 (= lt!1895500 lt!1895514)))

(declare-fun call!330990 () Bool)

(assert (=> b!4732452 call!330990))

(declare-fun lt!1895509 () Unit!131575)

(declare-fun Unit!131615 () Unit!131575)

(assert (=> b!4732452 (= lt!1895509 Unit!131615)))

(declare-fun e!2951818 () Bool)

(assert (=> d!1509398 e!2951818))

(declare-fun res!2003755 () Bool)

(assert (=> d!1509398 (=> (not res!2003755) (not e!2951818))))

(assert (=> d!1509398 (= res!2003755 (forall!11645 (Cons!52901 lt!1895242 lt!1895234) lambda!217532))))

(assert (=> d!1509398 (= lt!1895516 e!2951819)))

(declare-fun c!808202 () Bool)

(assert (=> d!1509398 (= c!808202 ((_ is Nil!52901) (Cons!52901 lt!1895242 lt!1895234)))))

(assert (=> d!1509398 (noDuplicateKeys!2040 (Cons!52901 lt!1895242 lt!1895234))))

(assert (=> d!1509398 (= (addToMapMapFromBucket!1470 (Cons!52901 lt!1895242 lt!1895234) lt!1895240) lt!1895516)))

(declare-fun bm!330984 () Bool)

(assert (=> bm!330984 (= call!330991 (lemmaContainsAllItsOwnKeys!816 lt!1895240))))

(declare-fun bm!330985 () Bool)

(assert (=> bm!330985 (= call!330990 (forall!11645 (ite c!808202 (toList!5970 lt!1895240) (Cons!52901 lt!1895242 lt!1895234)) (ite c!808202 lambda!217529 lambda!217531)))))

(declare-fun b!4732453 () Bool)

(declare-fun res!2003754 () Bool)

(assert (=> b!4732453 (=> (not res!2003754) (not e!2951818))))

(assert (=> b!4732453 (= res!2003754 (forall!11645 (toList!5970 lt!1895240) lambda!217532))))

(assert (=> b!4732454 (= e!2951819 lt!1895518)))

(declare-fun lt!1895508 () ListMap!5333)

(assert (=> b!4732454 (= lt!1895508 (+!2288 lt!1895240 (h!59268 (Cons!52901 lt!1895242 lt!1895234))))))

(assert (=> b!4732454 (= lt!1895518 (addToMapMapFromBucket!1470 (t!360301 (Cons!52901 lt!1895242 lt!1895234)) (+!2288 lt!1895240 (h!59268 (Cons!52901 lt!1895242 lt!1895234)))))))

(declare-fun lt!1895513 () Unit!131575)

(assert (=> b!4732454 (= lt!1895513 call!330991)))

(assert (=> b!4732454 (forall!11645 (toList!5970 lt!1895240) lambda!217530)))

(declare-fun lt!1895511 () Unit!131575)

(assert (=> b!4732454 (= lt!1895511 lt!1895513)))

(assert (=> b!4732454 (forall!11645 (toList!5970 lt!1895508) lambda!217531)))

(declare-fun lt!1895503 () Unit!131575)

(declare-fun Unit!131616 () Unit!131575)

(assert (=> b!4732454 (= lt!1895503 Unit!131616)))

(assert (=> b!4732454 (forall!11645 (t!360301 (Cons!52901 lt!1895242 lt!1895234)) lambda!217531)))

(declare-fun lt!1895515 () Unit!131575)

(declare-fun Unit!131617 () Unit!131575)

(assert (=> b!4732454 (= lt!1895515 Unit!131617)))

(declare-fun lt!1895519 () Unit!131575)

(declare-fun Unit!131618 () Unit!131575)

(assert (=> b!4732454 (= lt!1895519 Unit!131618)))

(declare-fun lt!1895502 () Unit!131575)

(assert (=> b!4732454 (= lt!1895502 (forallContained!3685 (toList!5970 lt!1895508) lambda!217531 (h!59268 (Cons!52901 lt!1895242 lt!1895234))))))

(assert (=> b!4732454 (contains!16278 lt!1895508 (_1!30571 (h!59268 (Cons!52901 lt!1895242 lt!1895234))))))

(declare-fun lt!1895505 () Unit!131575)

(declare-fun Unit!131619 () Unit!131575)

(assert (=> b!4732454 (= lt!1895505 Unit!131619)))

(assert (=> b!4732454 (contains!16278 lt!1895518 (_1!30571 (h!59268 (Cons!52901 lt!1895242 lt!1895234))))))

(declare-fun lt!1895520 () Unit!131575)

(declare-fun Unit!131620 () Unit!131575)

(assert (=> b!4732454 (= lt!1895520 Unit!131620)))

(assert (=> b!4732454 (forall!11645 (Cons!52901 lt!1895242 lt!1895234) lambda!217531)))

(declare-fun lt!1895506 () Unit!131575)

(declare-fun Unit!131621 () Unit!131575)

(assert (=> b!4732454 (= lt!1895506 Unit!131621)))

(assert (=> b!4732454 call!330989))

(declare-fun lt!1895510 () Unit!131575)

(declare-fun Unit!131622 () Unit!131575)

(assert (=> b!4732454 (= lt!1895510 Unit!131622)))

(declare-fun lt!1895512 () Unit!131575)

(declare-fun Unit!131623 () Unit!131575)

(assert (=> b!4732454 (= lt!1895512 Unit!131623)))

(declare-fun lt!1895517 () Unit!131575)

(assert (=> b!4732454 (= lt!1895517 (addForallContainsKeyThenBeforeAdding!815 lt!1895240 lt!1895518 (_1!30571 (h!59268 (Cons!52901 lt!1895242 lt!1895234))) (_2!30571 (h!59268 (Cons!52901 lt!1895242 lt!1895234)))))))

(assert (=> b!4732454 (forall!11645 (toList!5970 lt!1895240) lambda!217531)))

(declare-fun lt!1895507 () Unit!131575)

(assert (=> b!4732454 (= lt!1895507 lt!1895517)))

(assert (=> b!4732454 (forall!11645 (toList!5970 lt!1895240) lambda!217531)))

(declare-fun lt!1895501 () Unit!131575)

(declare-fun Unit!131624 () Unit!131575)

(assert (=> b!4732454 (= lt!1895501 Unit!131624)))

(declare-fun res!2003753 () Bool)

(assert (=> b!4732454 (= res!2003753 call!330990)))

(declare-fun e!2951817 () Bool)

(assert (=> b!4732454 (=> (not res!2003753) (not e!2951817))))

(assert (=> b!4732454 e!2951817))

(declare-fun lt!1895504 () Unit!131575)

(declare-fun Unit!131625 () Unit!131575)

(assert (=> b!4732454 (= lt!1895504 Unit!131625)))

(declare-fun b!4732455 () Bool)

(assert (=> b!4732455 (= e!2951818 (invariantList!1531 (toList!5970 lt!1895516)))))

(declare-fun b!4732456 () Bool)

(assert (=> b!4732456 (= e!2951817 (forall!11645 (toList!5970 lt!1895240) lambda!217531))))

(declare-fun bm!330986 () Bool)

(assert (=> bm!330986 (= call!330989 (forall!11645 (ite c!808202 (toList!5970 lt!1895240) (toList!5970 lt!1895508)) (ite c!808202 lambda!217529 lambda!217531)))))

(assert (= (and d!1509398 c!808202) b!4732452))

(assert (= (and d!1509398 (not c!808202)) b!4732454))

(assert (= (and b!4732454 res!2003753) b!4732456))

(assert (= (or b!4732452 b!4732454) bm!330984))

(assert (= (or b!4732452 b!4732454) bm!330986))

(assert (= (or b!4732452 b!4732454) bm!330985))

(assert (= (and d!1509398 res!2003755) b!4732453))

(assert (= (and b!4732453 res!2003754) b!4732455))

(assert (=> bm!330984 m!5675305))

(declare-fun m!5675343 () Bool)

(assert (=> b!4732453 m!5675343))

(declare-fun m!5675345 () Bool)

(assert (=> bm!330986 m!5675345))

(declare-fun m!5675347 () Bool)

(assert (=> b!4732455 m!5675347))

(declare-fun m!5675349 () Bool)

(assert (=> bm!330985 m!5675349))

(declare-fun m!5675351 () Bool)

(assert (=> d!1509398 m!5675351))

(declare-fun m!5675353 () Bool)

(assert (=> d!1509398 m!5675353))

(declare-fun m!5675357 () Bool)

(assert (=> b!4732456 m!5675357))

(assert (=> b!4732454 m!5675357))

(declare-fun m!5675361 () Bool)

(assert (=> b!4732454 m!5675361))

(declare-fun m!5675363 () Bool)

(assert (=> b!4732454 m!5675363))

(declare-fun m!5675365 () Bool)

(assert (=> b!4732454 m!5675365))

(declare-fun m!5675367 () Bool)

(assert (=> b!4732454 m!5675367))

(declare-fun m!5675369 () Bool)

(assert (=> b!4732454 m!5675369))

(assert (=> b!4732454 m!5675363))

(declare-fun m!5675371 () Bool)

(assert (=> b!4732454 m!5675371))

(assert (=> b!4732454 m!5675357))

(declare-fun m!5675373 () Bool)

(assert (=> b!4732454 m!5675373))

(declare-fun m!5675375 () Bool)

(assert (=> b!4732454 m!5675375))

(declare-fun m!5675377 () Bool)

(assert (=> b!4732454 m!5675377))

(declare-fun m!5675379 () Bool)

(assert (=> b!4732454 m!5675379))

(assert (=> b!4732228 d!1509398))

(declare-fun d!1509406 () Bool)

(assert (=> d!1509406 (eq!1137 (addToMapMapFromBucket!1470 (Cons!52901 lt!1895242 lt!1895234) lt!1895240) (+!2288 (addToMapMapFromBucket!1470 lt!1895234 lt!1895240) lt!1895242))))

(declare-fun lt!1895548 () Unit!131575)

(declare-fun choose!33491 (tuple2!54554 List!53025 ListMap!5333) Unit!131575)

(assert (=> d!1509406 (= lt!1895548 (choose!33491 lt!1895242 lt!1895234 lt!1895240))))

(assert (=> d!1509406 (noDuplicateKeys!2040 lt!1895234)))

(assert (=> d!1509406 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!386 lt!1895242 lt!1895234 lt!1895240) lt!1895548)))

(declare-fun bs!1120958 () Bool)

(assert (= bs!1120958 d!1509406))

(assert (=> bs!1120958 m!5674995))

(assert (=> bs!1120958 m!5675005))

(assert (=> bs!1120958 m!5675003))

(assert (=> bs!1120958 m!5675009))

(declare-fun m!5675425 () Bool)

(assert (=> bs!1120958 m!5675425))

(assert (=> bs!1120958 m!5675005))

(assert (=> bs!1120958 m!5675317))

(assert (=> bs!1120958 m!5674995))

(assert (=> bs!1120958 m!5675003))

(assert (=> b!4732228 d!1509406))

(declare-fun b!4732484 () Bool)

(declare-fun e!2951839 () Bool)

(declare-fun e!2951838 () Bool)

(assert (=> b!4732484 (= e!2951839 e!2951838)))

(declare-fun res!2003767 () Bool)

(assert (=> b!4732484 (=> (not res!2003767) (not e!2951838))))

(declare-fun isDefined!9668 (Option!12414) Bool)

(assert (=> b!4732484 (= res!2003767 (isDefined!9668 (getValueByKey!1992 (toList!5970 (extractMap!2066 lt!1895231)) key!4653)))))

(declare-fun d!1509414 () Bool)

(assert (=> d!1509414 e!2951839))

(declare-fun res!2003769 () Bool)

(assert (=> d!1509414 (=> res!2003769 e!2951839)))

(declare-fun e!2951843 () Bool)

(assert (=> d!1509414 (= res!2003769 e!2951843)))

(declare-fun res!2003768 () Bool)

(assert (=> d!1509414 (=> (not res!2003768) (not e!2951843))))

(declare-fun lt!1895570 () Bool)

(assert (=> d!1509414 (= res!2003768 (not lt!1895570))))

(declare-fun lt!1895572 () Bool)

(assert (=> d!1509414 (= lt!1895570 lt!1895572)))

(declare-fun lt!1895571 () Unit!131575)

(declare-fun e!2951840 () Unit!131575)

(assert (=> d!1509414 (= lt!1895571 e!2951840)))

(declare-fun c!808211 () Bool)

(assert (=> d!1509414 (= c!808211 lt!1895572)))

(declare-fun containsKey!3428 (List!53025 K!14250) Bool)

(assert (=> d!1509414 (= lt!1895572 (containsKey!3428 (toList!5970 (extractMap!2066 lt!1895231)) key!4653))))

(assert (=> d!1509414 (= (contains!16278 (extractMap!2066 lt!1895231) key!4653) lt!1895570)))

(declare-fun b!4732485 () Bool)

(declare-fun lt!1895568 () Unit!131575)

(assert (=> b!4732485 (= e!2951840 lt!1895568)))

(declare-fun lt!1895575 () Unit!131575)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1883 (List!53025 K!14250) Unit!131575)

(assert (=> b!4732485 (= lt!1895575 (lemmaContainsKeyImpliesGetValueByKeyDefined!1883 (toList!5970 (extractMap!2066 lt!1895231)) key!4653))))

(assert (=> b!4732485 (isDefined!9668 (getValueByKey!1992 (toList!5970 (extractMap!2066 lt!1895231)) key!4653))))

(declare-fun lt!1895573 () Unit!131575)

(assert (=> b!4732485 (= lt!1895573 lt!1895575)))

(declare-fun lemmaInListThenGetKeysListContains!965 (List!53025 K!14250) Unit!131575)

(assert (=> b!4732485 (= lt!1895568 (lemmaInListThenGetKeysListContains!965 (toList!5970 (extractMap!2066 lt!1895231)) key!4653))))

(declare-fun call!330997 () Bool)

(assert (=> b!4732485 call!330997))

(declare-fun b!4732486 () Bool)

(declare-datatypes ((List!53028 0))(
  ( (Nil!52904) (Cons!52904 (h!59273 K!14250) (t!360306 List!53028)) )
))
(declare-fun contains!16282 (List!53028 K!14250) Bool)

(declare-fun keys!19021 (ListMap!5333) List!53028)

(assert (=> b!4732486 (= e!2951838 (contains!16282 (keys!19021 (extractMap!2066 lt!1895231)) key!4653))))

(declare-fun b!4732487 () Bool)

(assert (=> b!4732487 (= e!2951843 (not (contains!16282 (keys!19021 (extractMap!2066 lt!1895231)) key!4653)))))

(declare-fun b!4732488 () Bool)

(declare-fun e!2951842 () Unit!131575)

(declare-fun Unit!131626 () Unit!131575)

(assert (=> b!4732488 (= e!2951842 Unit!131626)))

(declare-fun b!4732489 () Bool)

(declare-fun e!2951841 () List!53028)

(declare-fun getKeysList!970 (List!53025) List!53028)

(assert (=> b!4732489 (= e!2951841 (getKeysList!970 (toList!5970 (extractMap!2066 lt!1895231))))))

(declare-fun b!4732490 () Bool)

(assert (=> b!4732490 (= e!2951841 (keys!19021 (extractMap!2066 lt!1895231)))))

(declare-fun bm!330992 () Bool)

(assert (=> bm!330992 (= call!330997 (contains!16282 e!2951841 key!4653))))

(declare-fun c!808213 () Bool)

(assert (=> bm!330992 (= c!808213 c!808211)))

(declare-fun b!4732491 () Bool)

(assert (=> b!4732491 false))

(declare-fun lt!1895569 () Unit!131575)

(declare-fun lt!1895574 () Unit!131575)

(assert (=> b!4732491 (= lt!1895569 lt!1895574)))

(assert (=> b!4732491 (containsKey!3428 (toList!5970 (extractMap!2066 lt!1895231)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!969 (List!53025 K!14250) Unit!131575)

(assert (=> b!4732491 (= lt!1895574 (lemmaInGetKeysListThenContainsKey!969 (toList!5970 (extractMap!2066 lt!1895231)) key!4653))))

(declare-fun Unit!131627 () Unit!131575)

(assert (=> b!4732491 (= e!2951842 Unit!131627)))

(declare-fun b!4732492 () Bool)

(assert (=> b!4732492 (= e!2951840 e!2951842)))

(declare-fun c!808212 () Bool)

(assert (=> b!4732492 (= c!808212 call!330997)))

(assert (= (and d!1509414 c!808211) b!4732485))

(assert (= (and d!1509414 (not c!808211)) b!4732492))

(assert (= (and b!4732492 c!808212) b!4732491))

(assert (= (and b!4732492 (not c!808212)) b!4732488))

(assert (= (or b!4732485 b!4732492) bm!330992))

(assert (= (and bm!330992 c!808213) b!4732489))

(assert (= (and bm!330992 (not c!808213)) b!4732490))

(assert (= (and d!1509414 res!2003768) b!4732487))

(assert (= (and d!1509414 (not res!2003769)) b!4732484))

(assert (= (and b!4732484 res!2003767) b!4732486))

(declare-fun m!5675435 () Bool)

(assert (=> b!4732484 m!5675435))

(assert (=> b!4732484 m!5675435))

(declare-fun m!5675437 () Bool)

(assert (=> b!4732484 m!5675437))

(declare-fun m!5675439 () Bool)

(assert (=> bm!330992 m!5675439))

(declare-fun m!5675441 () Bool)

(assert (=> b!4732489 m!5675441))

(declare-fun m!5675443 () Bool)

(assert (=> b!4732491 m!5675443))

(declare-fun m!5675445 () Bool)

(assert (=> b!4732491 m!5675445))

(declare-fun m!5675447 () Bool)

(assert (=> b!4732485 m!5675447))

(assert (=> b!4732485 m!5675435))

(assert (=> b!4732485 m!5675435))

(assert (=> b!4732485 m!5675437))

(declare-fun m!5675449 () Bool)

(assert (=> b!4732485 m!5675449))

(assert (=> b!4732490 m!5674997))

(declare-fun m!5675451 () Bool)

(assert (=> b!4732490 m!5675451))

(assert (=> b!4732487 m!5674997))

(assert (=> b!4732487 m!5675451))

(assert (=> b!4732487 m!5675451))

(declare-fun m!5675453 () Bool)

(assert (=> b!4732487 m!5675453))

(assert (=> b!4732486 m!5674997))

(assert (=> b!4732486 m!5675451))

(assert (=> b!4732486 m!5675451))

(assert (=> b!4732486 m!5675453))

(assert (=> d!1509414 m!5675443))

(assert (=> b!4732228 d!1509414))

(declare-fun d!1509418 () Bool)

(assert (=> d!1509418 (= (head!10284 oldBucket!34) (h!59268 oldBucket!34))))

(assert (=> b!4732228 d!1509418))

(declare-fun bs!1120969 () Bool)

(declare-fun d!1509420 () Bool)

(assert (= bs!1120969 (and d!1509420 start!482392)))

(declare-fun lambda!217543 () Int)

(assert (=> bs!1120969 (= lambda!217543 lambda!217432)))

(declare-fun bs!1120970 () Bool)

(assert (= bs!1120970 (and d!1509420 d!1509350)))

(assert (=> bs!1120970 (not (= lambda!217543 lambda!217445))))

(assert (=> d!1509420 (contains!16278 (extractMap!2066 (toList!5969 (ListLongMap!4500 lt!1895231))) key!4653)))

(declare-fun lt!1895591 () Unit!131575)

(declare-fun choose!33492 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> d!1509420 (= lt!1895591 (choose!33492 (ListLongMap!4500 lt!1895231) key!4653 hashF!1323))))

(assert (=> d!1509420 (forall!11643 (toList!5969 (ListLongMap!4500 lt!1895231)) lambda!217543)))

(assert (=> d!1509420 (= (lemmaListContainsThenExtractedMapContains!548 (ListLongMap!4500 lt!1895231) key!4653 hashF!1323) lt!1895591)))

(declare-fun bs!1120971 () Bool)

(assert (= bs!1120971 d!1509420))

(declare-fun m!5675473 () Bool)

(assert (=> bs!1120971 m!5675473))

(assert (=> bs!1120971 m!5675473))

(declare-fun m!5675475 () Bool)

(assert (=> bs!1120971 m!5675475))

(declare-fun m!5675477 () Bool)

(assert (=> bs!1120971 m!5675477))

(declare-fun m!5675479 () Bool)

(assert (=> bs!1120971 m!5675479))

(assert (=> b!4732228 d!1509420))

(declare-fun bs!1120972 () Bool)

(declare-fun d!1509428 () Bool)

(assert (= bs!1120972 (and d!1509428 start!482392)))

(declare-fun lambda!217546 () Int)

(assert (=> bs!1120972 (= lambda!217546 lambda!217432)))

(declare-fun bs!1120973 () Bool)

(assert (= bs!1120973 (and d!1509428 d!1509350)))

(assert (=> bs!1120973 (not (= lambda!217546 lambda!217445))))

(declare-fun bs!1120974 () Bool)

(assert (= bs!1120974 (and d!1509428 d!1509420)))

(assert (=> bs!1120974 (= lambda!217546 lambda!217543)))

(declare-fun lt!1895594 () ListMap!5333)

(assert (=> d!1509428 (invariantList!1531 (toList!5970 lt!1895594))))

(declare-fun e!2951858 () ListMap!5333)

(assert (=> d!1509428 (= lt!1895594 e!2951858)))

(declare-fun c!808218 () Bool)

(assert (=> d!1509428 (= c!808218 ((_ is Cons!52902) lt!1895231))))

(assert (=> d!1509428 (forall!11643 lt!1895231 lambda!217546)))

(assert (=> d!1509428 (= (extractMap!2066 lt!1895231) lt!1895594)))

(declare-fun b!4732518 () Bool)

(assert (=> b!4732518 (= e!2951858 (addToMapMapFromBucket!1470 (_2!30572 (h!59269 lt!1895231)) (extractMap!2066 (t!360302 lt!1895231))))))

(declare-fun b!4732519 () Bool)

(assert (=> b!4732519 (= e!2951858 (ListMap!5334 Nil!52901))))

(assert (= (and d!1509428 c!808218) b!4732518))

(assert (= (and d!1509428 (not c!808218)) b!4732519))

(declare-fun m!5675481 () Bool)

(assert (=> d!1509428 m!5675481))

(declare-fun m!5675483 () Bool)

(assert (=> d!1509428 m!5675483))

(declare-fun m!5675485 () Bool)

(assert (=> b!4732518 m!5675485))

(assert (=> b!4732518 m!5675485))

(declare-fun m!5675487 () Bool)

(assert (=> b!4732518 m!5675487))

(assert (=> b!4732228 d!1509428))

(declare-fun d!1509430 () Bool)

(declare-fun e!2951864 () Bool)

(assert (=> d!1509430 e!2951864))

(declare-fun res!2003778 () Bool)

(assert (=> d!1509430 (=> res!2003778 e!2951864)))

(declare-fun lt!1895606 () Bool)

(assert (=> d!1509430 (= res!2003778 (not lt!1895606))))

(declare-fun lt!1895603 () Bool)

(assert (=> d!1509430 (= lt!1895606 lt!1895603)))

(declare-fun lt!1895605 () Unit!131575)

(declare-fun e!2951863 () Unit!131575)

(assert (=> d!1509430 (= lt!1895605 e!2951863)))

(declare-fun c!808221 () Bool)

(assert (=> d!1509430 (= c!808221 lt!1895603)))

(declare-fun containsKey!3429 (List!53026 (_ BitVec 64)) Bool)

(assert (=> d!1509430 (= lt!1895603 (containsKey!3429 (toList!5969 lm!2023) lt!1895232))))

(assert (=> d!1509430 (= (contains!16277 lm!2023 lt!1895232) lt!1895606)))

(declare-fun b!4732526 () Bool)

(declare-fun lt!1895604 () Unit!131575)

(assert (=> b!4732526 (= e!2951863 lt!1895604)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1884 (List!53026 (_ BitVec 64)) Unit!131575)

(assert (=> b!4732526 (= lt!1895604 (lemmaContainsKeyImpliesGetValueByKeyDefined!1884 (toList!5969 lm!2023) lt!1895232))))

(declare-datatypes ((Option!12415 0))(
  ( (None!12414) (Some!12414 (v!47043 List!53025)) )
))
(declare-fun isDefined!9669 (Option!12415) Bool)

(declare-fun getValueByKey!1993 (List!53026 (_ BitVec 64)) Option!12415)

(assert (=> b!4732526 (isDefined!9669 (getValueByKey!1993 (toList!5969 lm!2023) lt!1895232))))

(declare-fun b!4732527 () Bool)

(declare-fun Unit!131638 () Unit!131575)

(assert (=> b!4732527 (= e!2951863 Unit!131638)))

(declare-fun b!4732528 () Bool)

(assert (=> b!4732528 (= e!2951864 (isDefined!9669 (getValueByKey!1993 (toList!5969 lm!2023) lt!1895232)))))

(assert (= (and d!1509430 c!808221) b!4732526))

(assert (= (and d!1509430 (not c!808221)) b!4732527))

(assert (= (and d!1509430 (not res!2003778)) b!4732528))

(declare-fun m!5675489 () Bool)

(assert (=> d!1509430 m!5675489))

(declare-fun m!5675491 () Bool)

(assert (=> b!4732526 m!5675491))

(declare-fun m!5675493 () Bool)

(assert (=> b!4732526 m!5675493))

(assert (=> b!4732526 m!5675493))

(declare-fun m!5675495 () Bool)

(assert (=> b!4732526 m!5675495))

(assert (=> b!4732528 m!5675493))

(assert (=> b!4732528 m!5675493))

(assert (=> b!4732528 m!5675495))

(assert (=> b!4732216 d!1509430))

(declare-fun d!1509432 () Bool)

(declare-fun get!17764 (Option!12415) List!53025)

(assert (=> d!1509432 (= (apply!12465 lm!2023 lt!1895232) (get!17764 (getValueByKey!1993 (toList!5969 lm!2023) lt!1895232)))))

(declare-fun bs!1120975 () Bool)

(assert (= bs!1120975 d!1509432))

(assert (=> bs!1120975 m!5675493))

(assert (=> bs!1120975 m!5675493))

(declare-fun m!5675497 () Bool)

(assert (=> bs!1120975 m!5675497))

(assert (=> b!4732216 d!1509432))

(declare-fun d!1509434 () Bool)

(declare-fun lt!1895609 () Bool)

(declare-fun content!9433 (List!53026) (InoxSet tuple2!54556))

(assert (=> d!1509434 (= lt!1895609 (select (content!9433 (toList!5969 lm!2023)) lt!1895239))))

(declare-fun e!2951869 () Bool)

(assert (=> d!1509434 (= lt!1895609 e!2951869)))

(declare-fun res!2003784 () Bool)

(assert (=> d!1509434 (=> (not res!2003784) (not e!2951869))))

(assert (=> d!1509434 (= res!2003784 ((_ is Cons!52902) (toList!5969 lm!2023)))))

(assert (=> d!1509434 (= (contains!16276 (toList!5969 lm!2023) lt!1895239) lt!1895609)))

(declare-fun b!4732533 () Bool)

(declare-fun e!2951870 () Bool)

(assert (=> b!4732533 (= e!2951869 e!2951870)))

(declare-fun res!2003783 () Bool)

(assert (=> b!4732533 (=> res!2003783 e!2951870)))

(assert (=> b!4732533 (= res!2003783 (= (h!59269 (toList!5969 lm!2023)) lt!1895239))))

(declare-fun b!4732534 () Bool)

(assert (=> b!4732534 (= e!2951870 (contains!16276 (t!360302 (toList!5969 lm!2023)) lt!1895239))))

(assert (= (and d!1509434 res!2003784) b!4732533))

(assert (= (and b!4732533 (not res!2003783)) b!4732534))

(declare-fun m!5675499 () Bool)

(assert (=> d!1509434 m!5675499))

(declare-fun m!5675501 () Bool)

(assert (=> d!1509434 m!5675501))

(declare-fun m!5675503 () Bool)

(assert (=> b!4732534 m!5675503))

(assert (=> b!4732216 d!1509434))

(declare-fun d!1509436 () Bool)

(assert (=> d!1509436 (dynLambda!21853 lambda!217432 lt!1895239)))

(declare-fun lt!1895612 () Unit!131575)

(declare-fun choose!33493 (List!53026 Int tuple2!54556) Unit!131575)

(assert (=> d!1509436 (= lt!1895612 (choose!33493 (toList!5969 lm!2023) lambda!217432 lt!1895239))))

(declare-fun e!2951873 () Bool)

(assert (=> d!1509436 e!2951873))

(declare-fun res!2003787 () Bool)

(assert (=> d!1509436 (=> (not res!2003787) (not e!2951873))))

(assert (=> d!1509436 (= res!2003787 (forall!11643 (toList!5969 lm!2023) lambda!217432))))

(assert (=> d!1509436 (= (forallContained!3683 (toList!5969 lm!2023) lambda!217432 lt!1895239) lt!1895612)))

(declare-fun b!4732537 () Bool)

(assert (=> b!4732537 (= e!2951873 (contains!16276 (toList!5969 lm!2023) lt!1895239))))

(assert (= (and d!1509436 res!2003787) b!4732537))

(declare-fun b_lambda!180607 () Bool)

(assert (=> (not b_lambda!180607) (not d!1509436)))

(declare-fun m!5675505 () Bool)

(assert (=> d!1509436 m!5675505))

(declare-fun m!5675507 () Bool)

(assert (=> d!1509436 m!5675507))

(assert (=> d!1509436 m!5674985))

(assert (=> b!4732537 m!5674963))

(assert (=> b!4732216 d!1509436))

(declare-fun b!4732554 () Bool)

(declare-fun e!2951886 () Option!12411)

(assert (=> b!4732554 (= e!2951886 (getPair!580 (t!360301 lt!1895243) key!4653))))

(declare-fun b!4732555 () Bool)

(declare-fun res!2003799 () Bool)

(declare-fun e!2951884 () Bool)

(assert (=> b!4732555 (=> (not res!2003799) (not e!2951884))))

(declare-fun lt!1895615 () Option!12411)

(declare-fun get!17765 (Option!12411) tuple2!54554)

(assert (=> b!4732555 (= res!2003799 (= (_1!30571 (get!17765 lt!1895615)) key!4653))))

(declare-fun d!1509438 () Bool)

(declare-fun e!2951888 () Bool)

(assert (=> d!1509438 e!2951888))

(declare-fun res!2003798 () Bool)

(assert (=> d!1509438 (=> res!2003798 e!2951888)))

(declare-fun e!2951885 () Bool)

(assert (=> d!1509438 (= res!2003798 e!2951885)))

(declare-fun res!2003797 () Bool)

(assert (=> d!1509438 (=> (not res!2003797) (not e!2951885))))

(declare-fun isEmpty!29207 (Option!12411) Bool)

(assert (=> d!1509438 (= res!2003797 (isEmpty!29207 lt!1895615))))

(declare-fun e!2951887 () Option!12411)

(assert (=> d!1509438 (= lt!1895615 e!2951887)))

(declare-fun c!808226 () Bool)

(assert (=> d!1509438 (= c!808226 (and ((_ is Cons!52901) lt!1895243) (= (_1!30571 (h!59268 lt!1895243)) key!4653)))))

(assert (=> d!1509438 (noDuplicateKeys!2040 lt!1895243)))

(assert (=> d!1509438 (= (getPair!580 lt!1895243 key!4653) lt!1895615)))

(declare-fun b!4732556 () Bool)

(assert (=> b!4732556 (= e!2951888 e!2951884)))

(declare-fun res!2003796 () Bool)

(assert (=> b!4732556 (=> (not res!2003796) (not e!2951884))))

(assert (=> b!4732556 (= res!2003796 (isDefined!9665 lt!1895615))))

(declare-fun b!4732557 () Bool)

(assert (=> b!4732557 (= e!2951887 e!2951886)))

(declare-fun c!808227 () Bool)

(assert (=> b!4732557 (= c!808227 ((_ is Cons!52901) lt!1895243))))

(declare-fun b!4732558 () Bool)

(assert (=> b!4732558 (= e!2951886 None!12410)))

(declare-fun b!4732559 () Bool)

(assert (=> b!4732559 (= e!2951885 (not (containsKey!3425 lt!1895243 key!4653)))))

(declare-fun b!4732560 () Bool)

(assert (=> b!4732560 (= e!2951887 (Some!12410 (h!59268 lt!1895243)))))

(declare-fun b!4732561 () Bool)

(assert (=> b!4732561 (= e!2951884 (contains!16281 lt!1895243 (get!17765 lt!1895615)))))

(assert (= (and d!1509438 c!808226) b!4732560))

(assert (= (and d!1509438 (not c!808226)) b!4732557))

(assert (= (and b!4732557 c!808227) b!4732554))

(assert (= (and b!4732557 (not c!808227)) b!4732558))

(assert (= (and d!1509438 res!2003797) b!4732559))

(assert (= (and d!1509438 (not res!2003798)) b!4732556))

(assert (= (and b!4732556 res!2003796) b!4732555))

(assert (= (and b!4732555 res!2003799) b!4732561))

(declare-fun m!5675509 () Bool)

(assert (=> d!1509438 m!5675509))

(declare-fun m!5675511 () Bool)

(assert (=> d!1509438 m!5675511))

(declare-fun m!5675513 () Bool)

(assert (=> b!4732559 m!5675513))

(declare-fun m!5675515 () Bool)

(assert (=> b!4732561 m!5675515))

(assert (=> b!4732561 m!5675515))

(declare-fun m!5675517 () Bool)

(assert (=> b!4732561 m!5675517))

(assert (=> b!4732555 m!5675515))

(declare-fun m!5675519 () Bool)

(assert (=> b!4732554 m!5675519))

(declare-fun m!5675521 () Bool)

(assert (=> b!4732556 m!5675521))

(assert (=> b!4732216 d!1509438))

(declare-fun bs!1120976 () Bool)

(declare-fun d!1509440 () Bool)

(assert (= bs!1120976 (and d!1509440 start!482392)))

(declare-fun lambda!217549 () Int)

(assert (=> bs!1120976 (= lambda!217549 lambda!217432)))

(declare-fun bs!1120977 () Bool)

(assert (= bs!1120977 (and d!1509440 d!1509350)))

(assert (=> bs!1120977 (not (= lambda!217549 lambda!217445))))

(declare-fun bs!1120978 () Bool)

(assert (= bs!1120978 (and d!1509440 d!1509420)))

(assert (=> bs!1120978 (= lambda!217549 lambda!217543)))

(declare-fun bs!1120979 () Bool)

(assert (= bs!1120979 (and d!1509440 d!1509428)))

(assert (=> bs!1120979 (= lambda!217549 lambda!217546)))

(assert (=> d!1509440 (contains!16277 lm!2023 (hash!4428 hashF!1323 key!4653))))

(declare-fun lt!1895618 () Unit!131575)

(declare-fun choose!33495 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> d!1509440 (= lt!1895618 (choose!33495 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509440 (forall!11643 (toList!5969 lm!2023) lambda!217549)))

(assert (=> d!1509440 (= (lemmaInGenMapThenLongMapContainsHash!786 lm!2023 key!4653 hashF!1323) lt!1895618)))

(declare-fun bs!1120980 () Bool)

(assert (= bs!1120980 d!1509440))

(assert (=> bs!1120980 m!5674989))

(assert (=> bs!1120980 m!5674989))

(declare-fun m!5675523 () Bool)

(assert (=> bs!1120980 m!5675523))

(declare-fun m!5675525 () Bool)

(assert (=> bs!1120980 m!5675525))

(declare-fun m!5675527 () Bool)

(assert (=> bs!1120980 m!5675527))

(assert (=> b!4732216 d!1509440))

(declare-fun bs!1120981 () Bool)

(declare-fun d!1509442 () Bool)

(assert (= bs!1120981 (and d!1509442 d!1509440)))

(declare-fun lambda!217556 () Int)

(assert (=> bs!1120981 (= lambda!217556 lambda!217549)))

(declare-fun bs!1120982 () Bool)

(assert (= bs!1120982 (and d!1509442 start!482392)))

(assert (=> bs!1120982 (= lambda!217556 lambda!217432)))

(declare-fun bs!1120983 () Bool)

(assert (= bs!1120983 (and d!1509442 d!1509428)))

(assert (=> bs!1120983 (= lambda!217556 lambda!217546)))

(declare-fun bs!1120984 () Bool)

(assert (= bs!1120984 (and d!1509442 d!1509350)))

(assert (=> bs!1120984 (not (= lambda!217556 lambda!217445))))

(declare-fun bs!1120985 () Bool)

(assert (= bs!1120985 (and d!1509442 d!1509420)))

(assert (=> bs!1120985 (= lambda!217556 lambda!217543)))

(declare-fun e!2951894 () Bool)

(declare-fun b!4732572 () Bool)

(assert (=> b!4732572 (= e!2951894 (isDefined!9665 (getPair!580 (apply!12465 lm!2023 (hash!4428 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1895638 () Unit!131575)

(assert (=> b!4732572 (= lt!1895638 (forallContained!3683 (toList!5969 lm!2023) lambda!217556 (tuple2!54557 (hash!4428 hashF!1323 key!4653) (apply!12465 lm!2023 (hash!4428 hashF!1323 key!4653)))))))

(declare-fun lt!1895642 () Unit!131575)

(declare-fun lt!1895636 () Unit!131575)

(assert (=> b!4732572 (= lt!1895642 lt!1895636)))

(declare-fun lt!1895640 () (_ BitVec 64))

(declare-fun lt!1895637 () List!53025)

(assert (=> b!4732572 (contains!16276 (toList!5969 lm!2023) (tuple2!54557 lt!1895640 lt!1895637))))

(assert (=> b!4732572 (= lt!1895636 (lemmaGetValueImpliesTupleContained!385 lm!2023 lt!1895640 lt!1895637))))

(declare-fun e!2951893 () Bool)

(assert (=> b!4732572 e!2951893))

(declare-fun res!2003810 () Bool)

(assert (=> b!4732572 (=> (not res!2003810) (not e!2951893))))

(assert (=> b!4732572 (= res!2003810 (contains!16277 lm!2023 lt!1895640))))

(assert (=> b!4732572 (= lt!1895637 (apply!12465 lm!2023 (hash!4428 hashF!1323 key!4653)))))

(assert (=> b!4732572 (= lt!1895640 (hash!4428 hashF!1323 key!4653))))

(declare-fun lt!1895641 () Unit!131575)

(declare-fun lt!1895639 () Unit!131575)

(assert (=> b!4732572 (= lt!1895641 lt!1895639)))

(assert (=> b!4732572 (contains!16277 lm!2023 (hash!4428 hashF!1323 key!4653))))

(assert (=> b!4732572 (= lt!1895639 (lemmaInGenMapThenLongMapContainsHash!786 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4732570 () Bool)

(declare-fun res!2003808 () Bool)

(assert (=> b!4732570 (=> (not res!2003808) (not e!2951894))))

(assert (=> b!4732570 (= res!2003808 (allKeysSameHashInMap!1954 lm!2023 hashF!1323))))

(declare-fun b!4732571 () Bool)

(declare-fun res!2003811 () Bool)

(assert (=> b!4732571 (=> (not res!2003811) (not e!2951894))))

(assert (=> b!4732571 (= res!2003811 (contains!16278 (extractMap!2066 (toList!5969 lm!2023)) key!4653))))

(assert (=> d!1509442 e!2951894))

(declare-fun res!2003809 () Bool)

(assert (=> d!1509442 (=> (not res!2003809) (not e!2951894))))

(assert (=> d!1509442 (= res!2003809 (forall!11643 (toList!5969 lm!2023) lambda!217556))))

(declare-fun lt!1895635 () Unit!131575)

(declare-fun choose!33496 (ListLongMap!4499 K!14250 Hashable!6409) Unit!131575)

(assert (=> d!1509442 (= lt!1895635 (choose!33496 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509442 (forall!11643 (toList!5969 lm!2023) lambda!217556)))

(assert (=> d!1509442 (= (lemmaInGenMapThenGetPairDefined!376 lm!2023 key!4653 hashF!1323) lt!1895635)))

(declare-fun b!4732573 () Bool)

(assert (=> b!4732573 (= e!2951893 (= (getValueByKey!1993 (toList!5969 lm!2023) lt!1895640) (Some!12414 lt!1895637)))))

(assert (= (and d!1509442 res!2003809) b!4732570))

(assert (= (and b!4732570 res!2003808) b!4732571))

(assert (= (and b!4732571 res!2003811) b!4732572))

(assert (= (and b!4732572 res!2003810) b!4732573))

(assert (=> b!4732570 m!5675031))

(declare-fun m!5675529 () Bool)

(assert (=> b!4732572 m!5675529))

(declare-fun m!5675531 () Bool)

(assert (=> b!4732572 m!5675531))

(declare-fun m!5675533 () Bool)

(assert (=> b!4732572 m!5675533))

(declare-fun m!5675535 () Bool)

(assert (=> b!4732572 m!5675535))

(declare-fun m!5675537 () Bool)

(assert (=> b!4732572 m!5675537))

(assert (=> b!4732572 m!5674989))

(assert (=> b!4732572 m!5675523))

(assert (=> b!4732572 m!5674989))

(assert (=> b!4732572 m!5675533))

(assert (=> b!4732572 m!5674989))

(declare-fun m!5675539 () Bool)

(assert (=> b!4732572 m!5675539))

(assert (=> b!4732572 m!5674961))

(assert (=> b!4732572 m!5675535))

(declare-fun m!5675541 () Bool)

(assert (=> b!4732572 m!5675541))

(declare-fun m!5675543 () Bool)

(assert (=> d!1509442 m!5675543))

(declare-fun m!5675545 () Bool)

(assert (=> d!1509442 m!5675545))

(assert (=> d!1509442 m!5675543))

(assert (=> b!4732571 m!5675015))

(assert (=> b!4732571 m!5675015))

(declare-fun m!5675547 () Bool)

(assert (=> b!4732571 m!5675547))

(declare-fun m!5675549 () Bool)

(assert (=> b!4732573 m!5675549))

(assert (=> b!4732216 d!1509442))

(declare-fun d!1509444 () Bool)

(assert (=> d!1509444 (contains!16276 (toList!5969 lm!2023) (tuple2!54557 lt!1895232 lt!1895243))))

(declare-fun lt!1895645 () Unit!131575)

(declare-fun choose!33497 (ListLongMap!4499 (_ BitVec 64) List!53025) Unit!131575)

(assert (=> d!1509444 (= lt!1895645 (choose!33497 lm!2023 lt!1895232 lt!1895243))))

(assert (=> d!1509444 (contains!16277 lm!2023 lt!1895232)))

(assert (=> d!1509444 (= (lemmaGetValueImpliesTupleContained!385 lm!2023 lt!1895232 lt!1895243) lt!1895645)))

(declare-fun bs!1120986 () Bool)

(assert (= bs!1120986 d!1509444))

(declare-fun m!5675551 () Bool)

(assert (=> bs!1120986 m!5675551))

(declare-fun m!5675553 () Bool)

(assert (=> bs!1120986 m!5675553))

(assert (=> bs!1120986 m!5674975))

(assert (=> b!4732216 d!1509444))

(declare-fun d!1509446 () Bool)

(assert (=> d!1509446 (containsKey!3425 oldBucket!34 key!4653)))

(declare-fun lt!1895648 () Unit!131575)

(declare-fun choose!33498 (List!53025 K!14250 Hashable!6409) Unit!131575)

(assert (=> d!1509446 (= lt!1895648 (choose!33498 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1509446 (noDuplicateKeys!2040 oldBucket!34)))

(assert (=> d!1509446 (= (lemmaGetPairDefinedThenContainsKey!324 oldBucket!34 key!4653 hashF!1323) lt!1895648)))

(declare-fun bs!1120987 () Bool)

(assert (= bs!1120987 d!1509446))

(assert (=> bs!1120987 m!5674971))

(declare-fun m!5675555 () Bool)

(assert (=> bs!1120987 m!5675555))

(assert (=> bs!1120987 m!5675041))

(assert (=> b!4732216 d!1509446))

(declare-fun d!1509448 () Bool)

(declare-fun res!2003816 () Bool)

(declare-fun e!2951899 () Bool)

(assert (=> d!1509448 (=> res!2003816 e!2951899)))

(assert (=> d!1509448 (= res!2003816 (and ((_ is Cons!52901) (t!360301 oldBucket!34)) (= (_1!30571 (h!59268 (t!360301 oldBucket!34))) key!4653)))))

(assert (=> d!1509448 (= (containsKey!3425 (t!360301 oldBucket!34) key!4653) e!2951899)))

(declare-fun b!4732579 () Bool)

(declare-fun e!2951900 () Bool)

(assert (=> b!4732579 (= e!2951899 e!2951900)))

(declare-fun res!2003817 () Bool)

(assert (=> b!4732579 (=> (not res!2003817) (not e!2951900))))

(assert (=> b!4732579 (= res!2003817 ((_ is Cons!52901) (t!360301 oldBucket!34)))))

(declare-fun b!4732580 () Bool)

(assert (=> b!4732580 (= e!2951900 (containsKey!3425 (t!360301 (t!360301 oldBucket!34)) key!4653))))

(assert (= (and d!1509448 (not res!2003816)) b!4732579))

(assert (= (and b!4732579 res!2003817) b!4732580))

(declare-fun m!5675557 () Bool)

(assert (=> b!4732580 m!5675557))

(assert (=> b!4732216 d!1509448))

(declare-fun d!1509450 () Bool)

(assert (=> d!1509450 (= (isDefined!9665 (getPair!580 lt!1895243 key!4653)) (not (isEmpty!29207 (getPair!580 lt!1895243 key!4653))))))

(declare-fun bs!1120988 () Bool)

(assert (= bs!1120988 d!1509450))

(assert (=> bs!1120988 m!5674965))

(declare-fun m!5675559 () Bool)

(assert (=> bs!1120988 m!5675559))

(assert (=> b!4732216 d!1509450))

(declare-fun d!1509452 () Bool)

(declare-fun res!2003818 () Bool)

(declare-fun e!2951901 () Bool)

(assert (=> d!1509452 (=> res!2003818 e!2951901)))

(assert (=> d!1509452 (= res!2003818 (and ((_ is Cons!52901) oldBucket!34) (= (_1!30571 (h!59268 oldBucket!34)) key!4653)))))

(assert (=> d!1509452 (= (containsKey!3425 oldBucket!34 key!4653) e!2951901)))

(declare-fun b!4732581 () Bool)

(declare-fun e!2951902 () Bool)

(assert (=> b!4732581 (= e!2951901 e!2951902)))

(declare-fun res!2003819 () Bool)

(assert (=> b!4732581 (=> (not res!2003819) (not e!2951902))))

(assert (=> b!4732581 (= res!2003819 ((_ is Cons!52901) oldBucket!34))))

(declare-fun b!4732582 () Bool)

(assert (=> b!4732582 (= e!2951902 (containsKey!3425 (t!360301 oldBucket!34) key!4653))))

(assert (= (and d!1509452 (not res!2003818)) b!4732581))

(assert (= (and b!4732581 res!2003819) b!4732582))

(assert (=> b!4732582 m!5674969))

(assert (=> b!4732216 d!1509452))

(declare-fun d!1509454 () Bool)

(declare-fun res!2003820 () Bool)

(declare-fun e!2951903 () Bool)

(assert (=> d!1509454 (=> res!2003820 e!2951903)))

(assert (=> d!1509454 (= res!2003820 (not ((_ is Cons!52901) newBucket!218)))))

(assert (=> d!1509454 (= (noDuplicateKeys!2040 newBucket!218) e!2951903)))

(declare-fun b!4732583 () Bool)

(declare-fun e!2951904 () Bool)

(assert (=> b!4732583 (= e!2951903 e!2951904)))

(declare-fun res!2003821 () Bool)

(assert (=> b!4732583 (=> (not res!2003821) (not e!2951904))))

(assert (=> b!4732583 (= res!2003821 (not (containsKey!3425 (t!360301 newBucket!218) (_1!30571 (h!59268 newBucket!218)))))))

(declare-fun b!4732584 () Bool)

(assert (=> b!4732584 (= e!2951904 (noDuplicateKeys!2040 (t!360301 newBucket!218)))))

(assert (= (and d!1509454 (not res!2003820)) b!4732583))

(assert (= (and b!4732583 res!2003821) b!4732584))

(declare-fun m!5675561 () Bool)

(assert (=> b!4732583 m!5675561))

(declare-fun m!5675563 () Bool)

(assert (=> b!4732584 m!5675563))

(assert (=> b!4732226 d!1509454))

(declare-fun b!4732585 () Bool)

(declare-fun e!2951906 () Bool)

(declare-fun e!2951905 () Bool)

(assert (=> b!4732585 (= e!2951906 e!2951905)))

(declare-fun res!2003822 () Bool)

(assert (=> b!4732585 (=> (not res!2003822) (not e!2951905))))

(assert (=> b!4732585 (= res!2003822 (isDefined!9668 (getValueByKey!1992 (toList!5970 lt!1895233) key!4653)))))

(declare-fun d!1509456 () Bool)

(assert (=> d!1509456 e!2951906))

(declare-fun res!2003824 () Bool)

(assert (=> d!1509456 (=> res!2003824 e!2951906)))

(declare-fun e!2951910 () Bool)

(assert (=> d!1509456 (= res!2003824 e!2951910)))

(declare-fun res!2003823 () Bool)

(assert (=> d!1509456 (=> (not res!2003823) (not e!2951910))))

(declare-fun lt!1895651 () Bool)

(assert (=> d!1509456 (= res!2003823 (not lt!1895651))))

(declare-fun lt!1895653 () Bool)

(assert (=> d!1509456 (= lt!1895651 lt!1895653)))

(declare-fun lt!1895652 () Unit!131575)

(declare-fun e!2951907 () Unit!131575)

(assert (=> d!1509456 (= lt!1895652 e!2951907)))

(declare-fun c!808228 () Bool)

(assert (=> d!1509456 (= c!808228 lt!1895653)))

(assert (=> d!1509456 (= lt!1895653 (containsKey!3428 (toList!5970 lt!1895233) key!4653))))

(assert (=> d!1509456 (= (contains!16278 lt!1895233 key!4653) lt!1895651)))

(declare-fun b!4732586 () Bool)

(declare-fun lt!1895649 () Unit!131575)

(assert (=> b!4732586 (= e!2951907 lt!1895649)))

(declare-fun lt!1895656 () Unit!131575)

(assert (=> b!4732586 (= lt!1895656 (lemmaContainsKeyImpliesGetValueByKeyDefined!1883 (toList!5970 lt!1895233) key!4653))))

(assert (=> b!4732586 (isDefined!9668 (getValueByKey!1992 (toList!5970 lt!1895233) key!4653))))

(declare-fun lt!1895654 () Unit!131575)

(assert (=> b!4732586 (= lt!1895654 lt!1895656)))

(assert (=> b!4732586 (= lt!1895649 (lemmaInListThenGetKeysListContains!965 (toList!5970 lt!1895233) key!4653))))

(declare-fun call!330998 () Bool)

(assert (=> b!4732586 call!330998))

(declare-fun b!4732587 () Bool)

(assert (=> b!4732587 (= e!2951905 (contains!16282 (keys!19021 lt!1895233) key!4653))))

(declare-fun b!4732588 () Bool)

(assert (=> b!4732588 (= e!2951910 (not (contains!16282 (keys!19021 lt!1895233) key!4653)))))

(declare-fun b!4732589 () Bool)

(declare-fun e!2951909 () Unit!131575)

(declare-fun Unit!131640 () Unit!131575)

(assert (=> b!4732589 (= e!2951909 Unit!131640)))

(declare-fun b!4732590 () Bool)

(declare-fun e!2951908 () List!53028)

(assert (=> b!4732590 (= e!2951908 (getKeysList!970 (toList!5970 lt!1895233)))))

(declare-fun b!4732591 () Bool)

(assert (=> b!4732591 (= e!2951908 (keys!19021 lt!1895233))))

(declare-fun bm!330993 () Bool)

(assert (=> bm!330993 (= call!330998 (contains!16282 e!2951908 key!4653))))

(declare-fun c!808230 () Bool)

(assert (=> bm!330993 (= c!808230 c!808228)))

(declare-fun b!4732592 () Bool)

(assert (=> b!4732592 false))

(declare-fun lt!1895650 () Unit!131575)

(declare-fun lt!1895655 () Unit!131575)

(assert (=> b!4732592 (= lt!1895650 lt!1895655)))

(assert (=> b!4732592 (containsKey!3428 (toList!5970 lt!1895233) key!4653)))

(assert (=> b!4732592 (= lt!1895655 (lemmaInGetKeysListThenContainsKey!969 (toList!5970 lt!1895233) key!4653))))

(declare-fun Unit!131641 () Unit!131575)

(assert (=> b!4732592 (= e!2951909 Unit!131641)))

(declare-fun b!4732593 () Bool)

(assert (=> b!4732593 (= e!2951907 e!2951909)))

(declare-fun c!808229 () Bool)

(assert (=> b!4732593 (= c!808229 call!330998)))

(assert (= (and d!1509456 c!808228) b!4732586))

(assert (= (and d!1509456 (not c!808228)) b!4732593))

(assert (= (and b!4732593 c!808229) b!4732592))

(assert (= (and b!4732593 (not c!808229)) b!4732589))

(assert (= (or b!4732586 b!4732593) bm!330993))

(assert (= (and bm!330993 c!808230) b!4732590))

(assert (= (and bm!330993 (not c!808230)) b!4732591))

(assert (= (and d!1509456 res!2003823) b!4732588))

(assert (= (and d!1509456 (not res!2003824)) b!4732585))

(assert (= (and b!4732585 res!2003822) b!4732587))

(declare-fun m!5675565 () Bool)

(assert (=> b!4732585 m!5675565))

(assert (=> b!4732585 m!5675565))

(declare-fun m!5675567 () Bool)

(assert (=> b!4732585 m!5675567))

(declare-fun m!5675569 () Bool)

(assert (=> bm!330993 m!5675569))

(declare-fun m!5675571 () Bool)

(assert (=> b!4732590 m!5675571))

(declare-fun m!5675573 () Bool)

(assert (=> b!4732592 m!5675573))

(declare-fun m!5675575 () Bool)

(assert (=> b!4732592 m!5675575))

(declare-fun m!5675577 () Bool)

(assert (=> b!4732586 m!5675577))

(assert (=> b!4732586 m!5675565))

(assert (=> b!4732586 m!5675565))

(assert (=> b!4732586 m!5675567))

(declare-fun m!5675579 () Bool)

(assert (=> b!4732586 m!5675579))

(declare-fun m!5675581 () Bool)

(assert (=> b!4732591 m!5675581))

(assert (=> b!4732588 m!5675581))

(assert (=> b!4732588 m!5675581))

(declare-fun m!5675583 () Bool)

(assert (=> b!4732588 m!5675583))

(assert (=> b!4732587 m!5675581))

(assert (=> b!4732587 m!5675581))

(assert (=> b!4732587 m!5675583))

(assert (=> d!1509456 m!5675573))

(assert (=> b!4732220 d!1509456))

(declare-fun bs!1120989 () Bool)

(declare-fun d!1509458 () Bool)

(assert (= bs!1120989 (and d!1509458 d!1509440)))

(declare-fun lambda!217557 () Int)

(assert (=> bs!1120989 (= lambda!217557 lambda!217549)))

(declare-fun bs!1120990 () Bool)

(assert (= bs!1120990 (and d!1509458 start!482392)))

(assert (=> bs!1120990 (= lambda!217557 lambda!217432)))

(declare-fun bs!1120991 () Bool)

(assert (= bs!1120991 (and d!1509458 d!1509428)))

(assert (=> bs!1120991 (= lambda!217557 lambda!217546)))

(declare-fun bs!1120992 () Bool)

(assert (= bs!1120992 (and d!1509458 d!1509442)))

(assert (=> bs!1120992 (= lambda!217557 lambda!217556)))

(declare-fun bs!1120993 () Bool)

(assert (= bs!1120993 (and d!1509458 d!1509350)))

(assert (=> bs!1120993 (not (= lambda!217557 lambda!217445))))

(declare-fun bs!1120994 () Bool)

(assert (= bs!1120994 (and d!1509458 d!1509420)))

(assert (=> bs!1120994 (= lambda!217557 lambda!217543)))

(declare-fun lt!1895657 () ListMap!5333)

(assert (=> d!1509458 (invariantList!1531 (toList!5970 lt!1895657))))

(declare-fun e!2951911 () ListMap!5333)

(assert (=> d!1509458 (= lt!1895657 e!2951911)))

(declare-fun c!808231 () Bool)

(assert (=> d!1509458 (= c!808231 ((_ is Cons!52902) (toList!5969 lm!2023)))))

(assert (=> d!1509458 (forall!11643 (toList!5969 lm!2023) lambda!217557)))

(assert (=> d!1509458 (= (extractMap!2066 (toList!5969 lm!2023)) lt!1895657)))

(declare-fun b!4732594 () Bool)

(assert (=> b!4732594 (= e!2951911 (addToMapMapFromBucket!1470 (_2!30572 (h!59269 (toList!5969 lm!2023))) (extractMap!2066 (t!360302 (toList!5969 lm!2023)))))))

(declare-fun b!4732595 () Bool)

(assert (=> b!4732595 (= e!2951911 (ListMap!5334 Nil!52901))))

(assert (= (and d!1509458 c!808231) b!4732594))

(assert (= (and d!1509458 (not c!808231)) b!4732595))

(declare-fun m!5675585 () Bool)

(assert (=> d!1509458 m!5675585))

(declare-fun m!5675587 () Bool)

(assert (=> d!1509458 m!5675587))

(assert (=> b!4732594 m!5675025))

(assert (=> b!4732594 m!5675025))

(declare-fun m!5675589 () Bool)

(assert (=> b!4732594 m!5675589))

(assert (=> b!4732220 d!1509458))

(declare-fun d!1509460 () Bool)

(declare-fun hash!4430 (Hashable!6409 K!14250) (_ BitVec 64))

(assert (=> d!1509460 (= (hash!4428 hashF!1323 key!4653) (hash!4430 hashF!1323 key!4653))))

(declare-fun bs!1120995 () Bool)

(assert (= bs!1120995 d!1509460))

(declare-fun m!5675591 () Bool)

(assert (=> bs!1120995 m!5675591))

(assert (=> b!4732230 d!1509460))

(declare-fun bs!1120996 () Bool)

(declare-fun b!4732596 () Bool)

(assert (= bs!1120996 (and b!4732596 b!4732445)))

(declare-fun lambda!217558 () Int)

(assert (=> bs!1120996 (= lambda!217558 lambda!217525)))

(declare-fun bs!1120997 () Bool)

(assert (= bs!1120997 (and b!4732596 d!1509344)))

(assert (=> bs!1120997 (not (= lambda!217558 lambda!217441))))

(declare-fun bs!1120998 () Bool)

(assert (= bs!1120998 (and b!4732596 b!4732454)))

(assert (=> bs!1120998 (= lambda!217558 lambda!217530)))

(declare-fun bs!1120999 () Bool)

(assert (= bs!1120999 (and b!4732596 b!4732447)))

(assert (=> bs!1120999 (= lambda!217558 lambda!217526)))

(assert (=> bs!1120998 (= (= lt!1895240 lt!1895518) (= lambda!217558 lambda!217531))))

(declare-fun bs!1121000 () Bool)

(assert (= bs!1121000 (and b!4732596 d!1509378)))

(assert (=> bs!1121000 (= (= lt!1895240 lt!1895495) (= lambda!217558 lambda!217528))))

(declare-fun bs!1121001 () Bool)

(assert (= bs!1121001 (and b!4732596 d!1509398)))

(assert (=> bs!1121001 (= (= lt!1895240 lt!1895516) (= lambda!217558 lambda!217532))))

(assert (=> bs!1120999 (= (= lt!1895240 lt!1895497) (= lambda!217558 lambda!217527))))

(declare-fun bs!1121002 () Bool)

(assert (= bs!1121002 (and b!4732596 d!1509348)))

(assert (=> bs!1121002 (not (= lambda!217558 lambda!217442))))

(declare-fun bs!1121003 () Bool)

(assert (= bs!1121003 (and b!4732596 b!4732452)))

(assert (=> bs!1121003 (= lambda!217558 lambda!217529)))

(assert (=> b!4732596 true))

(declare-fun bs!1121004 () Bool)

(declare-fun b!4732598 () Bool)

(assert (= bs!1121004 (and b!4732598 b!4732445)))

(declare-fun lambda!217559 () Int)

(assert (=> bs!1121004 (= lambda!217559 lambda!217525)))

(declare-fun bs!1121005 () Bool)

(assert (= bs!1121005 (and b!4732598 d!1509344)))

(assert (=> bs!1121005 (not (= lambda!217559 lambda!217441))))

(declare-fun bs!1121006 () Bool)

(assert (= bs!1121006 (and b!4732598 b!4732454)))

(assert (=> bs!1121006 (= lambda!217559 lambda!217530)))

(declare-fun bs!1121007 () Bool)

(assert (= bs!1121007 (and b!4732598 b!4732447)))

(assert (=> bs!1121007 (= lambda!217559 lambda!217526)))

(declare-fun bs!1121008 () Bool)

(assert (= bs!1121008 (and b!4732598 d!1509378)))

(assert (=> bs!1121008 (= (= lt!1895240 lt!1895495) (= lambda!217559 lambda!217528))))

(declare-fun bs!1121009 () Bool)

(assert (= bs!1121009 (and b!4732598 d!1509398)))

(assert (=> bs!1121009 (= (= lt!1895240 lt!1895516) (= lambda!217559 lambda!217532))))

(assert (=> bs!1121007 (= (= lt!1895240 lt!1895497) (= lambda!217559 lambda!217527))))

(declare-fun bs!1121010 () Bool)

(assert (= bs!1121010 (and b!4732598 b!4732596)))

(assert (=> bs!1121010 (= lambda!217559 lambda!217558)))

(assert (=> bs!1121006 (= (= lt!1895240 lt!1895518) (= lambda!217559 lambda!217531))))

(declare-fun bs!1121011 () Bool)

(assert (= bs!1121011 (and b!4732598 d!1509348)))

(assert (=> bs!1121011 (not (= lambda!217559 lambda!217442))))

(declare-fun bs!1121012 () Bool)

(assert (= bs!1121012 (and b!4732598 b!4732452)))

(assert (=> bs!1121012 (= lambda!217559 lambda!217529)))

(assert (=> b!4732598 true))

(declare-fun lambda!217560 () Int)

(declare-fun lt!1895676 () ListMap!5333)

(assert (=> bs!1121004 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217525))))

(assert (=> bs!1121005 (not (= lambda!217560 lambda!217441))))

(assert (=> bs!1121006 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217530))))

(assert (=> bs!1121007 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217526))))

(assert (=> b!4732598 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217559))))

(assert (=> bs!1121008 (= (= lt!1895676 lt!1895495) (= lambda!217560 lambda!217528))))

(assert (=> bs!1121009 (= (= lt!1895676 lt!1895516) (= lambda!217560 lambda!217532))))

(assert (=> bs!1121007 (= (= lt!1895676 lt!1895497) (= lambda!217560 lambda!217527))))

(assert (=> bs!1121010 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217558))))

(assert (=> bs!1121006 (= (= lt!1895676 lt!1895518) (= lambda!217560 lambda!217531))))

(assert (=> bs!1121011 (not (= lambda!217560 lambda!217442))))

(assert (=> bs!1121012 (= (= lt!1895676 lt!1895240) (= lambda!217560 lambda!217529))))

(assert (=> b!4732598 true))

(declare-fun bs!1121013 () Bool)

(declare-fun d!1509462 () Bool)

(assert (= bs!1121013 (and d!1509462 b!4732445)))

(declare-fun lt!1895674 () ListMap!5333)

(declare-fun lambda!217561 () Int)

(assert (=> bs!1121013 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217525))))

(declare-fun bs!1121014 () Bool)

(assert (= bs!1121014 (and d!1509462 d!1509344)))

(assert (=> bs!1121014 (not (= lambda!217561 lambda!217441))))

(declare-fun bs!1121015 () Bool)

(assert (= bs!1121015 (and d!1509462 b!4732454)))

(assert (=> bs!1121015 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217530))))

(declare-fun bs!1121016 () Bool)

(assert (= bs!1121016 (and d!1509462 b!4732447)))

(assert (=> bs!1121016 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217526))))

(declare-fun bs!1121017 () Bool)

(assert (= bs!1121017 (and d!1509462 b!4732598)))

(assert (=> bs!1121017 (= (= lt!1895674 lt!1895676) (= lambda!217561 lambda!217560))))

(assert (=> bs!1121017 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217559))))

(declare-fun bs!1121018 () Bool)

(assert (= bs!1121018 (and d!1509462 d!1509378)))

(assert (=> bs!1121018 (= (= lt!1895674 lt!1895495) (= lambda!217561 lambda!217528))))

(declare-fun bs!1121019 () Bool)

(assert (= bs!1121019 (and d!1509462 d!1509398)))

(assert (=> bs!1121019 (= (= lt!1895674 lt!1895516) (= lambda!217561 lambda!217532))))

(assert (=> bs!1121016 (= (= lt!1895674 lt!1895497) (= lambda!217561 lambda!217527))))

(declare-fun bs!1121020 () Bool)

(assert (= bs!1121020 (and d!1509462 b!4732596)))

(assert (=> bs!1121020 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217558))))

(assert (=> bs!1121015 (= (= lt!1895674 lt!1895518) (= lambda!217561 lambda!217531))))

(declare-fun bs!1121021 () Bool)

(assert (= bs!1121021 (and d!1509462 d!1509348)))

(assert (=> bs!1121021 (not (= lambda!217561 lambda!217442))))

(declare-fun bs!1121022 () Bool)

(assert (= bs!1121022 (and d!1509462 b!4732452)))

(assert (=> bs!1121022 (= (= lt!1895674 lt!1895240) (= lambda!217561 lambda!217529))))

(assert (=> d!1509462 true))

(declare-fun e!2951914 () ListMap!5333)

(assert (=> b!4732596 (= e!2951914 lt!1895240)))

(declare-fun lt!1895672 () Unit!131575)

(declare-fun call!331001 () Unit!131575)

(assert (=> b!4732596 (= lt!1895672 call!331001)))

(declare-fun call!330999 () Bool)

(assert (=> b!4732596 call!330999))

(declare-fun lt!1895658 () Unit!131575)

(assert (=> b!4732596 (= lt!1895658 lt!1895672)))

(declare-fun call!331000 () Bool)

(assert (=> b!4732596 call!331000))

(declare-fun lt!1895667 () Unit!131575)

(declare-fun Unit!131642 () Unit!131575)

(assert (=> b!4732596 (= lt!1895667 Unit!131642)))

(declare-fun e!2951913 () Bool)

(assert (=> d!1509462 e!2951913))

(declare-fun res!2003827 () Bool)

(assert (=> d!1509462 (=> (not res!2003827) (not e!2951913))))

(assert (=> d!1509462 (= res!2003827 (forall!11645 (_2!30572 (h!59269 (toList!5969 lm!2023))) lambda!217561))))

(assert (=> d!1509462 (= lt!1895674 e!2951914)))

(declare-fun c!808232 () Bool)

(assert (=> d!1509462 (= c!808232 ((_ is Nil!52901) (_2!30572 (h!59269 (toList!5969 lm!2023)))))))

(assert (=> d!1509462 (noDuplicateKeys!2040 (_2!30572 (h!59269 (toList!5969 lm!2023))))))

(assert (=> d!1509462 (= (addToMapMapFromBucket!1470 (_2!30572 (h!59269 (toList!5969 lm!2023))) lt!1895240) lt!1895674)))

(declare-fun bm!330994 () Bool)

(assert (=> bm!330994 (= call!331001 (lemmaContainsAllItsOwnKeys!816 lt!1895240))))

(declare-fun bm!330995 () Bool)

(assert (=> bm!330995 (= call!331000 (forall!11645 (ite c!808232 (toList!5970 lt!1895240) (_2!30572 (h!59269 (toList!5969 lm!2023)))) (ite c!808232 lambda!217558 lambda!217560)))))

(declare-fun b!4732597 () Bool)

(declare-fun res!2003826 () Bool)

(assert (=> b!4732597 (=> (not res!2003826) (not e!2951913))))

(assert (=> b!4732597 (= res!2003826 (forall!11645 (toList!5970 lt!1895240) lambda!217561))))

(assert (=> b!4732598 (= e!2951914 lt!1895676)))

(declare-fun lt!1895666 () ListMap!5333)

(assert (=> b!4732598 (= lt!1895666 (+!2288 lt!1895240 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023))))))))

(assert (=> b!4732598 (= lt!1895676 (addToMapMapFromBucket!1470 (t!360301 (_2!30572 (h!59269 (toList!5969 lm!2023)))) (+!2288 lt!1895240 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023)))))))))

(declare-fun lt!1895671 () Unit!131575)

(assert (=> b!4732598 (= lt!1895671 call!331001)))

(assert (=> b!4732598 (forall!11645 (toList!5970 lt!1895240) lambda!217559)))

(declare-fun lt!1895669 () Unit!131575)

(assert (=> b!4732598 (= lt!1895669 lt!1895671)))

(assert (=> b!4732598 (forall!11645 (toList!5970 lt!1895666) lambda!217560)))

(declare-fun lt!1895661 () Unit!131575)

(declare-fun Unit!131643 () Unit!131575)

(assert (=> b!4732598 (= lt!1895661 Unit!131643)))

(assert (=> b!4732598 (forall!11645 (t!360301 (_2!30572 (h!59269 (toList!5969 lm!2023)))) lambda!217560)))

(declare-fun lt!1895673 () Unit!131575)

(declare-fun Unit!131644 () Unit!131575)

(assert (=> b!4732598 (= lt!1895673 Unit!131644)))

(declare-fun lt!1895677 () Unit!131575)

(declare-fun Unit!131645 () Unit!131575)

(assert (=> b!4732598 (= lt!1895677 Unit!131645)))

(declare-fun lt!1895660 () Unit!131575)

(assert (=> b!4732598 (= lt!1895660 (forallContained!3685 (toList!5970 lt!1895666) lambda!217560 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023))))))))

(assert (=> b!4732598 (contains!16278 lt!1895666 (_1!30571 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023))))))))

(declare-fun lt!1895663 () Unit!131575)

(declare-fun Unit!131646 () Unit!131575)

(assert (=> b!4732598 (= lt!1895663 Unit!131646)))

(assert (=> b!4732598 (contains!16278 lt!1895676 (_1!30571 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023))))))))

(declare-fun lt!1895678 () Unit!131575)

(declare-fun Unit!131647 () Unit!131575)

(assert (=> b!4732598 (= lt!1895678 Unit!131647)))

(assert (=> b!4732598 (forall!11645 (_2!30572 (h!59269 (toList!5969 lm!2023))) lambda!217560)))

(declare-fun lt!1895664 () Unit!131575)

(declare-fun Unit!131648 () Unit!131575)

(assert (=> b!4732598 (= lt!1895664 Unit!131648)))

(assert (=> b!4732598 call!330999))

(declare-fun lt!1895668 () Unit!131575)

(declare-fun Unit!131649 () Unit!131575)

(assert (=> b!4732598 (= lt!1895668 Unit!131649)))

(declare-fun lt!1895670 () Unit!131575)

(declare-fun Unit!131650 () Unit!131575)

(assert (=> b!4732598 (= lt!1895670 Unit!131650)))

(declare-fun lt!1895675 () Unit!131575)

(assert (=> b!4732598 (= lt!1895675 (addForallContainsKeyThenBeforeAdding!815 lt!1895240 lt!1895676 (_1!30571 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023))))) (_2!30571 (h!59268 (_2!30572 (h!59269 (toList!5969 lm!2023)))))))))

(assert (=> b!4732598 (forall!11645 (toList!5970 lt!1895240) lambda!217560)))

(declare-fun lt!1895665 () Unit!131575)

(assert (=> b!4732598 (= lt!1895665 lt!1895675)))

(assert (=> b!4732598 (forall!11645 (toList!5970 lt!1895240) lambda!217560)))

(declare-fun lt!1895659 () Unit!131575)

(declare-fun Unit!131651 () Unit!131575)

(assert (=> b!4732598 (= lt!1895659 Unit!131651)))

(declare-fun res!2003825 () Bool)

(assert (=> b!4732598 (= res!2003825 call!331000)))

(declare-fun e!2951912 () Bool)

(assert (=> b!4732598 (=> (not res!2003825) (not e!2951912))))

(assert (=> b!4732598 e!2951912))

(declare-fun lt!1895662 () Unit!131575)

(declare-fun Unit!131652 () Unit!131575)

(assert (=> b!4732598 (= lt!1895662 Unit!131652)))

(declare-fun b!4732599 () Bool)

(assert (=> b!4732599 (= e!2951913 (invariantList!1531 (toList!5970 lt!1895674)))))

(declare-fun b!4732600 () Bool)

(assert (=> b!4732600 (= e!2951912 (forall!11645 (toList!5970 lt!1895240) lambda!217560))))

(declare-fun bm!330996 () Bool)

(assert (=> bm!330996 (= call!330999 (forall!11645 (ite c!808232 (toList!5970 lt!1895240) (toList!5970 lt!1895666)) (ite c!808232 lambda!217558 lambda!217560)))))

(assert (= (and d!1509462 c!808232) b!4732596))

(assert (= (and d!1509462 (not c!808232)) b!4732598))

(assert (= (and b!4732598 res!2003825) b!4732600))

(assert (= (or b!4732596 b!4732598) bm!330994))

(assert (= (or b!4732596 b!4732598) bm!330996))

(assert (= (or b!4732596 b!4732598) bm!330995))

(assert (= (and d!1509462 res!2003827) b!4732597))

(assert (= (and b!4732597 res!2003826) b!4732599))

(assert (=> bm!330994 m!5675305))

(declare-fun m!5675593 () Bool)

(assert (=> b!4732597 m!5675593))

(declare-fun m!5675595 () Bool)

(assert (=> bm!330996 m!5675595))

(declare-fun m!5675597 () Bool)

(assert (=> b!4732599 m!5675597))

(declare-fun m!5675599 () Bool)

(assert (=> bm!330995 m!5675599))

(declare-fun m!5675601 () Bool)

(assert (=> d!1509462 m!5675601))

(declare-fun m!5675603 () Bool)

(assert (=> d!1509462 m!5675603))

(declare-fun m!5675605 () Bool)

(assert (=> b!4732600 m!5675605))

(assert (=> b!4732598 m!5675605))

(declare-fun m!5675607 () Bool)

(assert (=> b!4732598 m!5675607))

(declare-fun m!5675609 () Bool)

(assert (=> b!4732598 m!5675609))

(declare-fun m!5675611 () Bool)

(assert (=> b!4732598 m!5675611))

(declare-fun m!5675613 () Bool)

(assert (=> b!4732598 m!5675613))

(declare-fun m!5675615 () Bool)

(assert (=> b!4732598 m!5675615))

(assert (=> b!4732598 m!5675609))

(declare-fun m!5675617 () Bool)

(assert (=> b!4732598 m!5675617))

(assert (=> b!4732598 m!5675605))

(declare-fun m!5675619 () Bool)

(assert (=> b!4732598 m!5675619))

(declare-fun m!5675621 () Bool)

(assert (=> b!4732598 m!5675621))

(declare-fun m!5675623 () Bool)

(assert (=> b!4732598 m!5675623))

(declare-fun m!5675625 () Bool)

(assert (=> b!4732598 m!5675625))

(assert (=> b!4732219 d!1509462))

(declare-fun bs!1121023 () Bool)

(declare-fun d!1509464 () Bool)

(assert (= bs!1121023 (and d!1509464 d!1509440)))

(declare-fun lambda!217562 () Int)

(assert (=> bs!1121023 (= lambda!217562 lambda!217549)))

(declare-fun bs!1121024 () Bool)

(assert (= bs!1121024 (and d!1509464 start!482392)))

(assert (=> bs!1121024 (= lambda!217562 lambda!217432)))

(declare-fun bs!1121025 () Bool)

(assert (= bs!1121025 (and d!1509464 d!1509428)))

(assert (=> bs!1121025 (= lambda!217562 lambda!217546)))

(declare-fun bs!1121026 () Bool)

(assert (= bs!1121026 (and d!1509464 d!1509458)))

(assert (=> bs!1121026 (= lambda!217562 lambda!217557)))

(declare-fun bs!1121027 () Bool)

(assert (= bs!1121027 (and d!1509464 d!1509442)))

(assert (=> bs!1121027 (= lambda!217562 lambda!217556)))

(declare-fun bs!1121028 () Bool)

(assert (= bs!1121028 (and d!1509464 d!1509350)))

(assert (=> bs!1121028 (not (= lambda!217562 lambda!217445))))

(declare-fun bs!1121029 () Bool)

(assert (= bs!1121029 (and d!1509464 d!1509420)))

(assert (=> bs!1121029 (= lambda!217562 lambda!217543)))

(declare-fun lt!1895679 () ListMap!5333)

(assert (=> d!1509464 (invariantList!1531 (toList!5970 lt!1895679))))

(declare-fun e!2951915 () ListMap!5333)

(assert (=> d!1509464 (= lt!1895679 e!2951915)))

(declare-fun c!808233 () Bool)

(assert (=> d!1509464 (= c!808233 ((_ is Cons!52902) (t!360302 (toList!5969 lm!2023))))))

(assert (=> d!1509464 (forall!11643 (t!360302 (toList!5969 lm!2023)) lambda!217562)))

(assert (=> d!1509464 (= (extractMap!2066 (t!360302 (toList!5969 lm!2023))) lt!1895679)))

(declare-fun b!4732601 () Bool)

(assert (=> b!4732601 (= e!2951915 (addToMapMapFromBucket!1470 (_2!30572 (h!59269 (t!360302 (toList!5969 lm!2023)))) (extractMap!2066 (t!360302 (t!360302 (toList!5969 lm!2023))))))))

(declare-fun b!4732602 () Bool)

(assert (=> b!4732602 (= e!2951915 (ListMap!5334 Nil!52901))))

(assert (= (and d!1509464 c!808233) b!4732601))

(assert (= (and d!1509464 (not c!808233)) b!4732602))

(declare-fun m!5675627 () Bool)

(assert (=> d!1509464 m!5675627))

(declare-fun m!5675629 () Bool)

(assert (=> d!1509464 m!5675629))

(declare-fun m!5675631 () Bool)

(assert (=> b!4732601 m!5675631))

(assert (=> b!4732601 m!5675631))

(declare-fun m!5675633 () Bool)

(assert (=> b!4732601 m!5675633))

(assert (=> b!4732219 d!1509464))

(declare-fun d!1509466 () Bool)

(declare-fun tail!9067 (List!53026) List!53026)

(assert (=> d!1509466 (= (tail!9064 lm!2023) (ListLongMap!4500 (tail!9067 (toList!5969 lm!2023))))))

(declare-fun bs!1121030 () Bool)

(assert (= bs!1121030 d!1509466))

(declare-fun m!5675635 () Bool)

(assert (=> bs!1121030 m!5675635))

(assert (=> b!4732219 d!1509466))

(declare-fun d!1509468 () Bool)

(declare-fun lt!1895680 () List!53025)

(assert (=> d!1509468 (not (containsKey!3425 lt!1895680 key!4653))))

(declare-fun e!2951917 () List!53025)

(assert (=> d!1509468 (= lt!1895680 e!2951917)))

(declare-fun c!808235 () Bool)

(assert (=> d!1509468 (= c!808235 (and ((_ is Cons!52901) lt!1895234) (= (_1!30571 (h!59268 lt!1895234)) key!4653)))))

(assert (=> d!1509468 (noDuplicateKeys!2040 lt!1895234)))

(assert (=> d!1509468 (= (removePairForKey!1635 lt!1895234 key!4653) lt!1895680)))

(declare-fun b!4732604 () Bool)

(declare-fun e!2951916 () List!53025)

(assert (=> b!4732604 (= e!2951917 e!2951916)))

(declare-fun c!808234 () Bool)

(assert (=> b!4732604 (= c!808234 ((_ is Cons!52901) lt!1895234))))

(declare-fun b!4732603 () Bool)

(assert (=> b!4732603 (= e!2951917 (t!360301 lt!1895234))))

(declare-fun b!4732605 () Bool)

(assert (=> b!4732605 (= e!2951916 (Cons!52901 (h!59268 lt!1895234) (removePairForKey!1635 (t!360301 lt!1895234) key!4653)))))

(declare-fun b!4732606 () Bool)

(assert (=> b!4732606 (= e!2951916 Nil!52901)))

(assert (= (and d!1509468 c!808235) b!4732603))

(assert (= (and d!1509468 (not c!808235)) b!4732604))

(assert (= (and b!4732604 c!808234) b!4732605))

(assert (= (and b!4732604 (not c!808234)) b!4732606))

(declare-fun m!5675637 () Bool)

(assert (=> d!1509468 m!5675637))

(assert (=> d!1509468 m!5675317))

(declare-fun m!5675639 () Bool)

(assert (=> b!4732605 m!5675639))

(assert (=> b!4732229 d!1509468))

(declare-fun d!1509470 () Bool)

(assert (=> d!1509470 (= (tail!9065 newBucket!218) (t!360301 newBucket!218))))

(assert (=> b!4732229 d!1509470))

(declare-fun d!1509472 () Bool)

(assert (=> d!1509472 (= (tail!9065 oldBucket!34) (t!360301 oldBucket!34))))

(assert (=> b!4732229 d!1509472))

(declare-fun d!1509474 () Bool)

(declare-fun lt!1895681 () List!53025)

(assert (=> d!1509474 (not (containsKey!3425 lt!1895681 key!4653))))

(declare-fun e!2951919 () List!53025)

(assert (=> d!1509474 (= lt!1895681 e!2951919)))

(declare-fun c!808237 () Bool)

(assert (=> d!1509474 (= c!808237 (and ((_ is Cons!52901) oldBucket!34) (= (_1!30571 (h!59268 oldBucket!34)) key!4653)))))

(assert (=> d!1509474 (noDuplicateKeys!2040 oldBucket!34)))

(assert (=> d!1509474 (= (removePairForKey!1635 oldBucket!34 key!4653) lt!1895681)))

(declare-fun b!4732608 () Bool)

(declare-fun e!2951918 () List!53025)

(assert (=> b!4732608 (= e!2951919 e!2951918)))

(declare-fun c!808236 () Bool)

(assert (=> b!4732608 (= c!808236 ((_ is Cons!52901) oldBucket!34))))

(declare-fun b!4732607 () Bool)

(assert (=> b!4732607 (= e!2951919 (t!360301 oldBucket!34))))

(declare-fun b!4732609 () Bool)

(assert (=> b!4732609 (= e!2951918 (Cons!52901 (h!59268 oldBucket!34) (removePairForKey!1635 (t!360301 oldBucket!34) key!4653)))))

(declare-fun b!4732610 () Bool)

(assert (=> b!4732610 (= e!2951918 Nil!52901)))

(assert (= (and d!1509474 c!808237) b!4732607))

(assert (= (and d!1509474 (not c!808237)) b!4732608))

(assert (= (and b!4732608 c!808236) b!4732609))

(assert (= (and b!4732608 (not c!808236)) b!4732610))

(declare-fun m!5675641 () Bool)

(assert (=> d!1509474 m!5675641))

(assert (=> d!1509474 m!5675041))

(assert (=> b!4732609 m!5674991))

(assert (=> b!4732218 d!1509474))

(declare-fun b!4732615 () Bool)

(declare-fun e!2951922 () Bool)

(declare-fun tp!1348918 () Bool)

(declare-fun tp!1348919 () Bool)

(assert (=> b!4732615 (= e!2951922 (and tp!1348918 tp!1348919))))

(assert (=> b!4732222 (= tp!1348901 e!2951922)))

(assert (= (and b!4732222 ((_ is Cons!52902) (toList!5969 lm!2023))) b!4732615))

(declare-fun e!2951925 () Bool)

(declare-fun tp!1348922 () Bool)

(declare-fun b!4732620 () Bool)

(assert (=> b!4732620 (= e!2951925 (and tp_is_empty!31453 tp_is_empty!31455 tp!1348922))))

(assert (=> b!4732227 (= tp!1348903 e!2951925)))

(assert (= (and b!4732227 ((_ is Cons!52901) (t!360301 oldBucket!34))) b!4732620))

(declare-fun tp!1348923 () Bool)

(declare-fun e!2951926 () Bool)

(declare-fun b!4732621 () Bool)

(assert (=> b!4732621 (= e!2951926 (and tp_is_empty!31453 tp_is_empty!31455 tp!1348923))))

(assert (=> b!4732231 (= tp!1348902 e!2951926)))

(assert (= (and b!4732231 ((_ is Cons!52901) (t!360301 newBucket!218))) b!4732621))

(declare-fun b_lambda!180609 () Bool)

(assert (= b_lambda!180607 (or start!482392 b_lambda!180609)))

(declare-fun bs!1121031 () Bool)

(declare-fun d!1509476 () Bool)

(assert (= bs!1121031 (and d!1509476 start!482392)))

(assert (=> bs!1121031 (= (dynLambda!21853 lambda!217432 lt!1895239) (noDuplicateKeys!2040 (_2!30572 lt!1895239)))))

(declare-fun m!5675643 () Bool)

(assert (=> bs!1121031 m!5675643))

(assert (=> d!1509436 d!1509476))

(declare-fun b_lambda!180611 () Bool)

(assert (= b_lambda!180601 (or start!482392 b_lambda!180611)))

(declare-fun bs!1121032 () Bool)

(declare-fun d!1509478 () Bool)

(assert (= bs!1121032 (and d!1509478 start!482392)))

(assert (=> bs!1121032 (= (dynLambda!21853 lambda!217432 (h!59269 (toList!5969 lm!2023))) (noDuplicateKeys!2040 (_2!30572 (h!59269 (toList!5969 lm!2023)))))))

(assert (=> bs!1121032 m!5675603))

(assert (=> b!4732369 d!1509478))

(check-sat (not bm!330993) (not d!1509464) (not b!4732448) (not b!4732528) (not b!4732587) (not b!4732453) (not bm!330986) (not b!4732571) (not d!1509444) (not b!4732570) (not b!4732293) (not d!1509348) (not d!1509458) (not d!1509438) (not d!1509446) (not b!4732591) (not b!4732489) (not b!4732487) (not b!4732615) (not b!4732447) (not d!1509378) (not d!1509450) (not b!4732599) (not b!4732582) (not b!4732370) (not d!1509442) (not d!1509414) (not bm!330985) (not b!4732556) (not b!4732377) (not bm!330982) (not b!4732580) (not bm!330995) (not bs!1121032) (not b!4732554) (not b!4732586) (not b!4732561) (not b!4732590) (not d!1509468) (not bm!330994) (not b!4732585) (not d!1509406) (not b!4732592) (not b!4732490) (not d!1509456) tp_is_empty!31453 (not b!4732605) (not d!1509350) (not b!4732378) (not d!1509434) (not b!4732456) (not b!4732597) (not b!4732534) (not d!1509344) (not b!4732600) tp_is_empty!31455 (not b!4732621) (not b!4732315) (not b!4732454) (not b!4732572) (not d!1509420) (not b!4732486) (not b!4732601) (not b!4732446) (not b!4732518) (not d!1509428) (not d!1509462) (not b!4732555) (not b!4732375) (not b!4732316) (not d!1509460) (not b!4732588) (not d!1509374) (not d!1509436) (not bm!330983) (not b!4732559) (not d!1509370) (not b!4732376) (not d!1509466) (not b!4732594) (not b!4732609) (not b_lambda!180609) (not bm!330984) (not b!4732449) (not b!4732485) (not b!4732537) (not b!4732484) (not b!4732583) (not bm!330981) (not b_lambda!180611) (not b!4732620) (not b!4732584) (not bm!330996) (not b!4732598) (not bs!1121031) (not d!1509474) (not d!1509432) (not d!1509366) (not d!1509398) (not b!4732573) (not b!4732455) (not d!1509430) (not b!4732491) (not d!1509440) (not b!4732526) (not bm!330992) (not d!1509318))
(check-sat)
