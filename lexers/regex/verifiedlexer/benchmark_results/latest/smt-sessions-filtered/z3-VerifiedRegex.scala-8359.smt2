; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435008 () Bool)

(assert start!435008)

(declare-fun b!4443800 () Bool)

(declare-fun e!2766876 () Bool)

(declare-fun e!2766879 () Bool)

(assert (=> b!4443800 (= e!2766876 (not e!2766879))))

(declare-fun res!1840407 () Bool)

(assert (=> b!4443800 (=> res!1840407 e!2766879)))

(declare-datatypes ((V!11446 0))(
  ( (V!11447 (val!17231 Int)) )
))
(declare-datatypes ((K!11200 0))(
  ( (K!11201 (val!17232 Int)) )
))
(declare-datatypes ((tuple2!49782 0))(
  ( (tuple2!49783 (_1!28185 K!11200) (_2!28185 V!11446)) )
))
(declare-datatypes ((List!49956 0))(
  ( (Nil!49832) (Cons!49832 (h!55567 tuple2!49782) (t!356898 List!49956)) )
))
(declare-datatypes ((tuple2!49784 0))(
  ( (tuple2!49785 (_1!28186 (_ BitVec 64)) (_2!28186 List!49956)) )
))
(declare-datatypes ((List!49957 0))(
  ( (Nil!49833) (Cons!49833 (h!55568 tuple2!49784) (t!356899 List!49957)) )
))
(declare-datatypes ((ListLongMap!2339 0))(
  ( (ListLongMap!2340 (toList!3689 List!49957)) )
))
(declare-fun lt!1638381 () ListLongMap!2339)

(declare-fun lambda!157822 () Int)

(declare-fun forall!9730 (List!49957 Int) Bool)

(assert (=> b!4443800 (= res!1840407 (not (forall!9730 (toList!3689 lt!1638381) lambda!157822)))))

(assert (=> b!4443800 (forall!9730 (toList!3689 lt!1638381) lambda!157822)))

(declare-fun lm!1616 () ListLongMap!2339)

(declare-fun lt!1638380 () tuple2!49784)

(declare-fun +!1239 (ListLongMap!2339 tuple2!49784) ListLongMap!2339)

(assert (=> b!4443800 (= lt!1638381 (+!1239 lm!1616 lt!1638380))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49956)

(assert (=> b!4443800 (= lt!1638380 (tuple2!49785 hash!366 newBucket!194))))

(declare-datatypes ((Unit!84136 0))(
  ( (Unit!84137) )
))
(declare-fun lt!1638387 () Unit!84136)

(declare-fun addValidProp!489 (ListLongMap!2339 Int (_ BitVec 64) List!49956) Unit!84136)

(assert (=> b!4443800 (= lt!1638387 (addValidProp!489 lm!1616 lambda!157822 hash!366 newBucket!194))))

(declare-fun b!4443801 () Bool)

(declare-fun e!2766878 () Unit!84136)

(declare-fun Unit!84138 () Unit!84136)

(assert (=> b!4443801 (= e!2766878 Unit!84138)))

(declare-fun key!3717 () K!11200)

(declare-fun lt!1638385 () Unit!84136)

(declare-datatypes ((Hashable!5245 0))(
  ( (HashableExt!5244 (__x!30948 Int)) )
))
(declare-fun hashF!1220 () Hashable!5245)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!88 (ListLongMap!2339 K!11200 Hashable!5245) Unit!84136)

(assert (=> b!4443801 (= lt!1638385 (lemmaExtractTailMapContainsThenExtractMapDoes!88 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4443801 false))

(declare-fun res!1840408 () Bool)

(declare-fun e!2766881 () Bool)

(assert (=> start!435008 (=> (not res!1840408) (not e!2766881))))

(assert (=> start!435008 (= res!1840408 (forall!9730 (toList!3689 lm!1616) lambda!157822))))

(assert (=> start!435008 e!2766881))

(declare-fun tp_is_empty!26649 () Bool)

(assert (=> start!435008 tp_is_empty!26649))

(declare-fun tp_is_empty!26651 () Bool)

(assert (=> start!435008 tp_is_empty!26651))

(declare-fun e!2766877 () Bool)

(assert (=> start!435008 e!2766877))

(declare-fun e!2766873 () Bool)

(declare-fun inv!65386 (ListLongMap!2339) Bool)

(assert (=> start!435008 (and (inv!65386 lm!1616) e!2766873)))

(assert (=> start!435008 true))

(declare-fun b!4443802 () Bool)

(declare-fun res!1840405 () Bool)

(assert (=> b!4443802 (=> (not res!1840405) (not e!2766881))))

(declare-fun allKeysSameHashInMap!957 (ListLongMap!2339 Hashable!5245) Bool)

(assert (=> b!4443802 (= res!1840405 (allKeysSameHashInMap!957 lm!1616 hashF!1220))))

(declare-fun b!4443803 () Bool)

(declare-fun res!1840412 () Bool)

(assert (=> b!4443803 (=> (not res!1840412) (not e!2766876))))

(declare-fun noDuplicateKeys!851 (List!49956) Bool)

(assert (=> b!4443803 (= res!1840412 (noDuplicateKeys!851 newBucket!194))))

(declare-fun b!4443804 () Bool)

(declare-fun res!1840415 () Bool)

(assert (=> b!4443804 (=> (not res!1840415) (not e!2766881))))

(declare-fun allKeysSameHash!811 (List!49956 (_ BitVec 64) Hashable!5245) Bool)

(assert (=> b!4443804 (= res!1840415 (allKeysSameHash!811 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4443805 () Bool)

(declare-fun e!2766875 () Bool)

(assert (=> b!4443805 (= e!2766875 e!2766876)))

(declare-fun res!1840411 () Bool)

(assert (=> b!4443805 (=> (not res!1840411) (not e!2766876))))

(declare-fun e!2766880 () Bool)

(assert (=> b!4443805 (= res!1840411 e!2766880)))

(declare-fun res!1840404 () Bool)

(assert (=> b!4443805 (=> res!1840404 e!2766880)))

(declare-fun e!2766874 () Bool)

(assert (=> b!4443805 (= res!1840404 e!2766874)))

(declare-fun res!1840414 () Bool)

(assert (=> b!4443805 (=> (not res!1840414) (not e!2766874))))

(declare-fun lt!1638386 () Bool)

(assert (=> b!4443805 (= res!1840414 lt!1638386)))

(declare-fun contains!12410 (ListLongMap!2339 (_ BitVec 64)) Bool)

(assert (=> b!4443805 (= lt!1638386 (contains!12410 lm!1616 hash!366))))

(declare-fun b!4443806 () Bool)

(declare-fun e!2766882 () Bool)

(assert (=> b!4443806 (= e!2766879 e!2766882)))

(declare-fun res!1840402 () Bool)

(assert (=> b!4443806 (=> res!1840402 e!2766882)))

(declare-fun head!9290 (ListLongMap!2339) tuple2!49784)

(assert (=> b!4443806 (= res!1840402 (= (head!9290 lm!1616) lt!1638380))))

(declare-fun newValue!93 () V!11446)

(declare-datatypes ((ListMap!2933 0))(
  ( (ListMap!2934 (toList!3690 List!49956)) )
))
(declare-fun lt!1638379 () ListMap!2933)

(declare-fun lt!1638389 () ListMap!2933)

(declare-fun eq!451 (ListMap!2933 ListMap!2933) Bool)

(declare-fun +!1240 (ListMap!2933 tuple2!49782) ListMap!2933)

(assert (=> b!4443806 (eq!451 lt!1638389 (+!1240 lt!1638379 (tuple2!49783 key!3717 newValue!93)))))

(declare-fun lt!1638383 () ListLongMap!2339)

(declare-fun extractMap!912 (List!49957) ListMap!2933)

(assert (=> b!4443806 (= lt!1638379 (extractMap!912 (toList!3689 lt!1638383)))))

(assert (=> b!4443806 (= lt!1638389 (extractMap!912 (toList!3689 (+!1239 lt!1638383 lt!1638380))))))

(declare-fun lt!1638384 () Unit!84136)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!159 (ListLongMap!2339 (_ BitVec 64) List!49956 K!11200 V!11446 Hashable!5245) Unit!84136)

(assert (=> b!4443806 (= lt!1638384 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!159 lt!1638383 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7402 (ListLongMap!2339) ListLongMap!2339)

(assert (=> b!4443806 (= lt!1638383 (tail!7402 lm!1616))))

(declare-fun lt!1638382 () Unit!84136)

(assert (=> b!4443806 (= lt!1638382 e!2766878)))

(declare-fun c!756243 () Bool)

(declare-fun contains!12411 (ListMap!2933 K!11200) Bool)

(declare-fun tail!7403 (List!49957) List!49957)

(assert (=> b!4443806 (= c!756243 (contains!12411 (extractMap!912 (tail!7403 (toList!3689 lm!1616))) key!3717))))

(declare-fun b!4443807 () Bool)

(assert (=> b!4443807 (= e!2766882 true)))

(declare-fun b!4443808 () Bool)

(declare-fun res!1840410 () Bool)

(assert (=> b!4443808 (=> (not res!1840410) (not e!2766876))))

(assert (=> b!4443808 (= res!1840410 (forall!9730 (toList!3689 lm!1616) lambda!157822))))

(declare-fun b!4443809 () Bool)

(declare-fun res!1840409 () Bool)

(assert (=> b!4443809 (=> res!1840409 e!2766879)))

(get-info :version)

(assert (=> b!4443809 (= res!1840409 (or (and ((_ is Cons!49833) (toList!3689 lm!1616)) (= (_1!28186 (h!55568 (toList!3689 lm!1616))) hash!366)) (not ((_ is Cons!49833) (toList!3689 lm!1616))) (= (_1!28186 (h!55568 (toList!3689 lm!1616))) hash!366)))))

(declare-fun b!4443810 () Bool)

(declare-fun apply!11703 (ListLongMap!2339 (_ BitVec 64)) List!49956)

(assert (=> b!4443810 (= e!2766874 (= newBucket!194 (Cons!49832 (tuple2!49783 key!3717 newValue!93) (apply!11703 lm!1616 hash!366))))))

(declare-fun b!4443811 () Bool)

(declare-fun res!1840403 () Bool)

(assert (=> b!4443811 (=> res!1840403 e!2766882)))

(declare-fun lt!1638388 () ListMap!2933)

(declare-fun addToMapMapFromBucket!457 (List!49956 ListMap!2933) ListMap!2933)

(assert (=> b!4443811 (= res!1840403 (not (eq!451 lt!1638388 (addToMapMapFromBucket!457 (_2!28186 (h!55568 (toList!3689 lm!1616))) lt!1638379))))))

(declare-fun b!4443812 () Bool)

(declare-fun tp!1334356 () Bool)

(assert (=> b!4443812 (= e!2766877 (and tp_is_empty!26651 tp_is_empty!26649 tp!1334356))))

(declare-fun b!4443813 () Bool)

(assert (=> b!4443813 (= e!2766881 e!2766875)))

(declare-fun res!1840413 () Bool)

(assert (=> b!4443813 (=> (not res!1840413) (not e!2766875))))

(assert (=> b!4443813 (= res!1840413 (not (contains!12411 lt!1638388 key!3717)))))

(assert (=> b!4443813 (= lt!1638388 (extractMap!912 (toList!3689 lm!1616)))))

(declare-fun b!4443814 () Bool)

(assert (=> b!4443814 (= e!2766880 (and (not lt!1638386) (= newBucket!194 (Cons!49832 (tuple2!49783 key!3717 newValue!93) Nil!49832))))))

(declare-fun b!4443815 () Bool)

(declare-fun tp!1334355 () Bool)

(assert (=> b!4443815 (= e!2766873 tp!1334355)))

(declare-fun b!4443816 () Bool)

(declare-fun Unit!84139 () Unit!84136)

(assert (=> b!4443816 (= e!2766878 Unit!84139)))

(declare-fun b!4443817 () Bool)

(declare-fun res!1840406 () Bool)

(assert (=> b!4443817 (=> (not res!1840406) (not e!2766881))))

(declare-fun hash!2313 (Hashable!5245 K!11200) (_ BitVec 64))

(assert (=> b!4443817 (= res!1840406 (= (hash!2313 hashF!1220 key!3717) hash!366))))

(assert (= (and start!435008 res!1840408) b!4443802))

(assert (= (and b!4443802 res!1840405) b!4443817))

(assert (= (and b!4443817 res!1840406) b!4443804))

(assert (= (and b!4443804 res!1840415) b!4443813))

(assert (= (and b!4443813 res!1840413) b!4443805))

(assert (= (and b!4443805 res!1840414) b!4443810))

(assert (= (and b!4443805 (not res!1840404)) b!4443814))

(assert (= (and b!4443805 res!1840411) b!4443803))

(assert (= (and b!4443803 res!1840412) b!4443808))

(assert (= (and b!4443808 res!1840410) b!4443800))

(assert (= (and b!4443800 (not res!1840407)) b!4443809))

(assert (= (and b!4443809 (not res!1840409)) b!4443806))

(assert (= (and b!4443806 c!756243) b!4443801))

(assert (= (and b!4443806 (not c!756243)) b!4443816))

(assert (= (and b!4443806 (not res!1840402)) b!4443811))

(assert (= (and b!4443811 (not res!1840403)) b!4443807))

(assert (= (and start!435008 ((_ is Cons!49832) newBucket!194)) b!4443812))

(assert (= start!435008 b!4443815))

(declare-fun m!5133185 () Bool)

(assert (=> b!4443803 m!5133185))

(declare-fun m!5133187 () Bool)

(assert (=> b!4443813 m!5133187))

(declare-fun m!5133189 () Bool)

(assert (=> b!4443813 m!5133189))

(declare-fun m!5133191 () Bool)

(assert (=> b!4443811 m!5133191))

(assert (=> b!4443811 m!5133191))

(declare-fun m!5133193 () Bool)

(assert (=> b!4443811 m!5133193))

(declare-fun m!5133195 () Bool)

(assert (=> b!4443801 m!5133195))

(declare-fun m!5133197 () Bool)

(assert (=> b!4443802 m!5133197))

(declare-fun m!5133199 () Bool)

(assert (=> b!4443804 m!5133199))

(declare-fun m!5133201 () Bool)

(assert (=> b!4443810 m!5133201))

(declare-fun m!5133203 () Bool)

(assert (=> b!4443805 m!5133203))

(declare-fun m!5133205 () Bool)

(assert (=> b!4443808 m!5133205))

(declare-fun m!5133207 () Bool)

(assert (=> b!4443800 m!5133207))

(assert (=> b!4443800 m!5133207))

(declare-fun m!5133209 () Bool)

(assert (=> b!4443800 m!5133209))

(declare-fun m!5133211 () Bool)

(assert (=> b!4443800 m!5133211))

(declare-fun m!5133213 () Bool)

(assert (=> b!4443817 m!5133213))

(assert (=> start!435008 m!5133205))

(declare-fun m!5133215 () Bool)

(assert (=> start!435008 m!5133215))

(declare-fun m!5133217 () Bool)

(assert (=> b!4443806 m!5133217))

(declare-fun m!5133219 () Bool)

(assert (=> b!4443806 m!5133219))

(assert (=> b!4443806 m!5133217))

(declare-fun m!5133221 () Bool)

(assert (=> b!4443806 m!5133221))

(assert (=> b!4443806 m!5133219))

(declare-fun m!5133223 () Bool)

(assert (=> b!4443806 m!5133223))

(declare-fun m!5133225 () Bool)

(assert (=> b!4443806 m!5133225))

(declare-fun m!5133227 () Bool)

(assert (=> b!4443806 m!5133227))

(declare-fun m!5133229 () Bool)

(assert (=> b!4443806 m!5133229))

(declare-fun m!5133231 () Bool)

(assert (=> b!4443806 m!5133231))

(declare-fun m!5133233 () Bool)

(assert (=> b!4443806 m!5133233))

(declare-fun m!5133235 () Bool)

(assert (=> b!4443806 m!5133235))

(assert (=> b!4443806 m!5133225))

(declare-fun m!5133237 () Bool)

(assert (=> b!4443806 m!5133237))

(check-sat (not b!4443801) (not b!4443800) (not b!4443805) (not b!4443808) (not start!435008) tp_is_empty!26649 (not b!4443812) (not b!4443810) (not b!4443802) (not b!4443813) (not b!4443804) (not b!4443811) (not b!4443806) tp_is_empty!26651 (not b!4443815) (not b!4443803) (not b!4443817))
(check-sat)
