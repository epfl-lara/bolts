; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470640 () Bool)

(assert start!470640)

(declare-fun res!1964755 () Bool)

(declare-fun e!2913177 () Bool)

(assert (=> start!470640 (=> (not res!1964755) (not e!2913177))))

(declare-datatypes ((K!13340 0))(
  ( (K!13341 (val!18943 Int)) )
))
(declare-datatypes ((V!13586 0))(
  ( (V!13587 (val!18944 Int)) )
))
(declare-datatypes ((tuple2!53150 0))(
  ( (tuple2!53151 (_1!29869 K!13340) (_2!29869 V!13586)) )
))
(declare-datatypes ((List!52120 0))(
  ( (Nil!51996) (Cons!51996 (h!58168 tuple2!53150) (t!359252 List!52120)) )
))
(declare-fun oldBucket!40 () List!52120)

(declare-fun noDuplicateKeys!1676 (List!52120) Bool)

(assert (=> start!470640 (= res!1964755 (noDuplicateKeys!1676 oldBucket!40))))

(assert (=> start!470640 e!2913177))

(assert (=> start!470640 true))

(declare-fun e!2913180 () Bool)

(assert (=> start!470640 e!2913180))

(declare-fun tp_is_empty!29997 () Bool)

(assert (=> start!470640 tp_is_empty!29997))

(declare-fun e!2913184 () Bool)

(assert (=> start!470640 e!2913184))

(declare-fun b!4668293 () Bool)

(declare-fun res!1964748 () Bool)

(declare-fun e!2913181 () Bool)

(assert (=> b!4668293 (=> res!1964748 e!2913181)))

(declare-fun lt!1829976 () List!52120)

(declare-datatypes ((Hashable!6073 0))(
  ( (HashableExt!6072 (__x!31776 Int)) )
))
(declare-fun hashF!1389 () Hashable!6073)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1530 (List!52120 (_ BitVec 64) Hashable!6073) Bool)

(assert (=> b!4668293 (= res!1964748 (not (allKeysSameHash!1530 lt!1829976 hash!414 hashF!1389)))))

(declare-fun tp!1343670 () Bool)

(declare-fun tp_is_empty!29999 () Bool)

(declare-fun b!4668294 () Bool)

(assert (=> b!4668294 (= e!2913180 (and tp_is_empty!29997 tp_is_empty!29999 tp!1343670))))

(declare-fun b!4668295 () Bool)

(declare-fun res!1964740 () Bool)

(assert (=> b!4668295 (=> (not res!1964740) (not e!2913177))))

(declare-fun key!4968 () K!13340)

(declare-fun newBucket!224 () List!52120)

(declare-fun removePairForKey!1299 (List!52120 K!13340) List!52120)

(assert (=> b!4668295 (= res!1964740 (= (removePairForKey!1299 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4668296 () Bool)

(declare-fun e!2913186 () Bool)

(declare-datatypes ((ListMap!4621 0))(
  ( (ListMap!4622 (toList!5281 List!52120)) )
))
(declare-fun lt!1829979 () ListMap!4621)

(assert (=> b!4668296 (= e!2913186 (= lt!1829979 (ListMap!4622 Nil!51996)))))

(declare-fun b!4668297 () Bool)

(declare-fun res!1964746 () Bool)

(assert (=> b!4668297 (=> (not res!1964746) (not e!2913177))))

(assert (=> b!4668297 (= res!1964746 (noDuplicateKeys!1676 newBucket!224))))

(declare-fun b!4668298 () Bool)

(declare-fun e!2913179 () Bool)

(assert (=> b!4668298 (= e!2913179 e!2913181)))

(declare-fun res!1964749 () Bool)

(assert (=> b!4668298 (=> res!1964749 e!2913181)))

(declare-fun lt!1829973 () List!52120)

(declare-fun lt!1829972 () ListMap!4621)

(declare-fun eq!931 (ListMap!4621 ListMap!4621) Bool)

(declare-fun +!2016 (ListMap!4621 tuple2!53150) ListMap!4621)

(declare-datatypes ((tuple2!53152 0))(
  ( (tuple2!53153 (_1!29870 (_ BitVec 64)) (_2!29870 List!52120)) )
))
(declare-datatypes ((List!52121 0))(
  ( (Nil!51997) (Cons!51997 (h!58169 tuple2!53152) (t!359253 List!52121)) )
))
(declare-fun extractMap!1732 (List!52121) ListMap!4621)

(assert (=> b!4668298 (= res!1964749 (not (eq!931 lt!1829972 (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)) (h!58168 oldBucket!40)))))))

(declare-fun lt!1829988 () tuple2!53150)

(declare-fun addToMapMapFromBucket!1133 (List!52120 ListMap!4621) ListMap!4621)

(assert (=> b!4668298 (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829988 lt!1829976) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1829988))))

(declare-datatypes ((Unit!120660 0))(
  ( (Unit!120661) )
))
(declare-fun lt!1829983 () Unit!120660)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!182 (tuple2!53150 List!52120 ListMap!4621) Unit!120660)

(assert (=> b!4668298 (= lt!1829983 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!182 lt!1829988 lt!1829976 (ListMap!4622 Nil!51996)))))

(declare-fun head!9754 (List!52120) tuple2!53150)

(assert (=> b!4668298 (= lt!1829988 (head!9754 newBucket!224))))

(declare-fun lt!1829984 () tuple2!53150)

(assert (=> b!4668298 (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829984 lt!1829973) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1829984))))

(declare-fun lt!1829989 () Unit!120660)

(assert (=> b!4668298 (= lt!1829989 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!182 lt!1829984 lt!1829973 (ListMap!4622 Nil!51996)))))

(assert (=> b!4668298 (= lt!1829984 (head!9754 oldBucket!40))))

(declare-fun lt!1829974 () List!52121)

(declare-fun contains!15195 (ListMap!4621 K!13340) Bool)

(assert (=> b!4668298 (contains!15195 (extractMap!1732 lt!1829974) key!4968)))

(declare-fun lt!1829981 () Unit!120660)

(declare-datatypes ((ListLongMap!3835 0))(
  ( (ListLongMap!3836 (toList!5282 List!52121)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!410 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> b!4668298 (= lt!1829981 (lemmaListContainsThenExtractedMapContains!410 (ListLongMap!3836 lt!1829974) key!4968 hashF!1389))))

(assert (=> b!4668298 (= lt!1829974 (Cons!51997 (tuple2!53153 hash!414 (t!359252 oldBucket!40)) Nil!51997))))

(declare-fun b!4668299 () Bool)

(declare-fun res!1964752 () Bool)

(assert (=> b!4668299 (=> (not res!1964752) (not e!2913177))))

(assert (=> b!4668299 (= res!1964752 (allKeysSameHash!1530 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4668300 () Bool)

(declare-fun res!1964754 () Bool)

(assert (=> b!4668300 (=> res!1964754 e!2913181)))

(assert (=> b!4668300 (= res!1964754 (not (allKeysSameHash!1530 (t!359252 oldBucket!40) hash!414 hashF!1389)))))

(declare-fun b!4668301 () Bool)

(declare-fun res!1964742 () Bool)

(assert (=> b!4668301 (=> res!1964742 e!2913181)))

(assert (=> b!4668301 (= res!1964742 (not (noDuplicateKeys!1676 lt!1829976)))))

(declare-fun b!4668302 () Bool)

(declare-fun e!2913182 () Bool)

(assert (=> b!4668302 (= e!2913182 e!2913179)))

(declare-fun res!1964751 () Bool)

(assert (=> b!4668302 (=> res!1964751 e!2913179)))

(assert (=> b!4668302 (= res!1964751 (not (= (removePairForKey!1299 lt!1829973 key!4968) lt!1829976)))))

(declare-fun tail!8279 (List!52120) List!52120)

(assert (=> b!4668302 (= lt!1829976 (tail!8279 newBucket!224))))

(assert (=> b!4668302 (= lt!1829973 (tail!8279 oldBucket!40))))

(declare-fun b!4668303 () Bool)

(declare-fun e!2913178 () Bool)

(declare-fun e!2913185 () Bool)

(assert (=> b!4668303 (= e!2913178 e!2913185)))

(declare-fun res!1964756 () Bool)

(assert (=> b!4668303 (=> (not res!1964756) (not e!2913185))))

(declare-fun lt!1829986 () (_ BitVec 64))

(assert (=> b!4668303 (= res!1964756 (= lt!1829986 hash!414))))

(declare-fun hash!3841 (Hashable!6073 K!13340) (_ BitVec 64))

(assert (=> b!4668303 (= lt!1829986 (hash!3841 hashF!1389 key!4968))))

(declare-fun b!4668304 () Bool)

(assert (=> b!4668304 (= e!2913177 e!2913178)))

(declare-fun res!1964741 () Bool)

(assert (=> b!4668304 (=> (not res!1964741) (not e!2913178))))

(assert (=> b!4668304 (= res!1964741 (contains!15195 lt!1829972 key!4968))))

(declare-fun lt!1829985 () List!52121)

(assert (=> b!4668304 (= lt!1829972 (extractMap!1732 lt!1829985))))

(assert (=> b!4668304 (= lt!1829985 (Cons!51997 (tuple2!53153 hash!414 oldBucket!40) Nil!51997))))

(declare-fun b!4668305 () Bool)

(declare-fun res!1964747 () Bool)

(assert (=> b!4668305 (=> res!1964747 e!2913181)))

(assert (=> b!4668305 (= res!1964747 (not (noDuplicateKeys!1676 (t!359252 oldBucket!40))))))

(declare-fun b!4668306 () Bool)

(declare-fun e!2913183 () Bool)

(assert (=> b!4668306 (= e!2913185 (not e!2913183))))

(declare-fun res!1964753 () Bool)

(assert (=> b!4668306 (=> res!1964753 e!2913183)))

(get-info :version)

(assert (=> b!4668306 (= res!1964753 (or (and ((_ is Cons!51996) oldBucket!40) (= (_1!29869 (h!58168 oldBucket!40)) key!4968)) (not ((_ is Cons!51996) oldBucket!40)) (= (_1!29869 (h!58168 oldBucket!40)) key!4968)))))

(assert (=> b!4668306 e!2913186))

(declare-fun res!1964739 () Bool)

(assert (=> b!4668306 (=> (not res!1964739) (not e!2913186))))

(assert (=> b!4668306 (= res!1964739 (= lt!1829972 (addToMapMapFromBucket!1133 oldBucket!40 lt!1829979)))))

(assert (=> b!4668306 (= lt!1829979 (extractMap!1732 Nil!51997))))

(assert (=> b!4668306 true))

(declare-fun tp!1343671 () Bool)

(declare-fun b!4668307 () Bool)

(assert (=> b!4668307 (= e!2913184 (and tp_is_empty!29997 tp_is_empty!29999 tp!1343671))))

(declare-fun b!4668308 () Bool)

(assert (=> b!4668308 (= e!2913183 e!2913182)))

(declare-fun res!1964745 () Bool)

(assert (=> b!4668308 (=> res!1964745 e!2913182)))

(declare-fun containsKey!2810 (List!52120 K!13340) Bool)

(assert (=> b!4668308 (= res!1964745 (not (containsKey!2810 (t!359252 oldBucket!40) key!4968)))))

(assert (=> b!4668308 (containsKey!2810 oldBucket!40 key!4968)))

(declare-fun lt!1829970 () Unit!120660)

(declare-fun lemmaGetPairDefinedThenContainsKey!154 (List!52120 K!13340 Hashable!6073) Unit!120660)

(assert (=> b!4668308 (= lt!1829970 (lemmaGetPairDefinedThenContainsKey!154 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1829982 () List!52120)

(declare-datatypes ((Option!11908 0))(
  ( (None!11907) (Some!11907 (v!46253 tuple2!53150)) )
))
(declare-fun isDefined!9173 (Option!11908) Bool)

(declare-fun getPair!404 (List!52120 K!13340) Option!11908)

(assert (=> b!4668308 (isDefined!9173 (getPair!404 lt!1829982 key!4968))))

(declare-fun lt!1829978 () tuple2!53152)

(declare-fun lt!1829987 () Unit!120660)

(declare-fun lambda!201870 () Int)

(declare-fun forallContained!3298 (List!52121 Int tuple2!53152) Unit!120660)

(assert (=> b!4668308 (= lt!1829987 (forallContained!3298 lt!1829985 lambda!201870 lt!1829978))))

(declare-fun contains!15196 (List!52121 tuple2!53152) Bool)

(assert (=> b!4668308 (contains!15196 lt!1829985 lt!1829978)))

(assert (=> b!4668308 (= lt!1829978 (tuple2!53153 lt!1829986 lt!1829982))))

(declare-fun lt!1829980 () ListLongMap!3835)

(declare-fun lt!1829975 () Unit!120660)

(declare-fun lemmaGetValueImpliesTupleContained!209 (ListLongMap!3835 (_ BitVec 64) List!52120) Unit!120660)

(assert (=> b!4668308 (= lt!1829975 (lemmaGetValueImpliesTupleContained!209 lt!1829980 lt!1829986 lt!1829982))))

(declare-fun apply!12279 (ListLongMap!3835 (_ BitVec 64)) List!52120)

(assert (=> b!4668308 (= lt!1829982 (apply!12279 lt!1829980 lt!1829986))))

(declare-fun contains!15197 (ListLongMap!3835 (_ BitVec 64)) Bool)

(assert (=> b!4668308 (contains!15197 lt!1829980 lt!1829986)))

(declare-fun lt!1829971 () Unit!120660)

(declare-fun lemmaInGenMapThenLongMapContainsHash!610 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> b!4668308 (= lt!1829971 (lemmaInGenMapThenLongMapContainsHash!610 lt!1829980 key!4968 hashF!1389))))

(declare-fun lt!1829977 () Unit!120660)

(declare-fun lemmaInGenMapThenGetPairDefined!200 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> b!4668308 (= lt!1829977 (lemmaInGenMapThenGetPairDefined!200 lt!1829980 key!4968 hashF!1389))))

(assert (=> b!4668308 (= lt!1829980 (ListLongMap!3836 lt!1829985))))

(declare-fun b!4668309 () Bool)

(declare-fun size!35978 (List!52120) Int)

(assert (=> b!4668309 (= e!2913181 (< (size!35978 (t!359252 oldBucket!40)) (size!35978 oldBucket!40)))))

(declare-fun b!4668310 () Bool)

(declare-fun res!1964750 () Bool)

(assert (=> b!4668310 (=> res!1964750 e!2913179)))

(assert (=> b!4668310 (= res!1964750 (not (= (removePairForKey!1299 (t!359252 oldBucket!40) key!4968) lt!1829976)))))

(declare-fun b!4668311 () Bool)

(declare-fun res!1964744 () Bool)

(assert (=> b!4668311 (=> (not res!1964744) (not e!2913185))))

(assert (=> b!4668311 (= res!1964744 (allKeysSameHash!1530 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4668312 () Bool)

(declare-fun res!1964743 () Bool)

(assert (=> b!4668312 (=> res!1964743 e!2913181)))

(assert (=> b!4668312 (= res!1964743 (not (eq!931 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)) (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)) lt!1829988))))))

(assert (= (and start!470640 res!1964755) b!4668297))

(assert (= (and b!4668297 res!1964746) b!4668295))

(assert (= (and b!4668295 res!1964740) b!4668299))

(assert (= (and b!4668299 res!1964752) b!4668304))

(assert (= (and b!4668304 res!1964741) b!4668303))

(assert (= (and b!4668303 res!1964756) b!4668311))

(assert (= (and b!4668311 res!1964744) b!4668306))

(assert (= (and b!4668306 res!1964739) b!4668296))

(assert (= (and b!4668306 (not res!1964753)) b!4668308))

(assert (= (and b!4668308 (not res!1964745)) b!4668302))

(assert (= (and b!4668302 (not res!1964751)) b!4668310))

(assert (= (and b!4668310 (not res!1964750)) b!4668298))

(assert (= (and b!4668298 (not res!1964749)) b!4668312))

(assert (= (and b!4668312 (not res!1964743)) b!4668305))

(assert (= (and b!4668305 (not res!1964747)) b!4668301))

(assert (= (and b!4668301 (not res!1964742)) b!4668300))

(assert (= (and b!4668300 (not res!1964754)) b!4668293))

(assert (= (and b!4668293 (not res!1964748)) b!4668309))

(assert (= (and start!470640 ((_ is Cons!51996) oldBucket!40)) b!4668294))

(assert (= (and start!470640 ((_ is Cons!51996) newBucket!224)) b!4668307))

(declare-fun m!5559149 () Bool)

(assert (=> b!4668312 m!5559149))

(declare-fun m!5559151 () Bool)

(assert (=> b!4668312 m!5559151))

(assert (=> b!4668312 m!5559151))

(declare-fun m!5559153 () Bool)

(assert (=> b!4668312 m!5559153))

(assert (=> b!4668312 m!5559149))

(assert (=> b!4668312 m!5559153))

(declare-fun m!5559155 () Bool)

(assert (=> b!4668312 m!5559155))

(declare-fun m!5559157 () Bool)

(assert (=> b!4668306 m!5559157))

(declare-fun m!5559159 () Bool)

(assert (=> b!4668306 m!5559159))

(declare-fun m!5559161 () Bool)

(assert (=> b!4668300 m!5559161))

(declare-fun m!5559163 () Bool)

(assert (=> b!4668308 m!5559163))

(declare-fun m!5559165 () Bool)

(assert (=> b!4668308 m!5559165))

(declare-fun m!5559167 () Bool)

(assert (=> b!4668308 m!5559167))

(declare-fun m!5559169 () Bool)

(assert (=> b!4668308 m!5559169))

(declare-fun m!5559171 () Bool)

(assert (=> b!4668308 m!5559171))

(declare-fun m!5559173 () Bool)

(assert (=> b!4668308 m!5559173))

(declare-fun m!5559175 () Bool)

(assert (=> b!4668308 m!5559175))

(declare-fun m!5559177 () Bool)

(assert (=> b!4668308 m!5559177))

(declare-fun m!5559179 () Bool)

(assert (=> b!4668308 m!5559179))

(declare-fun m!5559181 () Bool)

(assert (=> b!4668308 m!5559181))

(assert (=> b!4668308 m!5559173))

(declare-fun m!5559183 () Bool)

(assert (=> b!4668308 m!5559183))

(declare-fun m!5559185 () Bool)

(assert (=> b!4668308 m!5559185))

(declare-fun m!5559187 () Bool)

(assert (=> b!4668302 m!5559187))

(declare-fun m!5559189 () Bool)

(assert (=> b!4668302 m!5559189))

(declare-fun m!5559191 () Bool)

(assert (=> b!4668302 m!5559191))

(declare-fun m!5559193 () Bool)

(assert (=> start!470640 m!5559193))

(declare-fun m!5559195 () Bool)

(assert (=> b!4668301 m!5559195))

(declare-fun m!5559197 () Bool)

(assert (=> b!4668305 m!5559197))

(declare-fun m!5559199 () Bool)

(assert (=> b!4668303 m!5559199))

(declare-fun m!5559201 () Bool)

(assert (=> b!4668297 m!5559201))

(declare-fun m!5559203 () Bool)

(assert (=> b!4668298 m!5559203))

(declare-fun m!5559205 () Bool)

(assert (=> b!4668298 m!5559205))

(declare-fun m!5559207 () Bool)

(assert (=> b!4668298 m!5559207))

(declare-fun m!5559209 () Bool)

(assert (=> b!4668298 m!5559209))

(declare-fun m!5559211 () Bool)

(assert (=> b!4668298 m!5559211))

(declare-fun m!5559213 () Bool)

(assert (=> b!4668298 m!5559213))

(assert (=> b!4668298 m!5559211))

(assert (=> b!4668298 m!5559209))

(declare-fun m!5559215 () Bool)

(assert (=> b!4668298 m!5559215))

(declare-fun m!5559217 () Bool)

(assert (=> b!4668298 m!5559217))

(declare-fun m!5559219 () Bool)

(assert (=> b!4668298 m!5559219))

(declare-fun m!5559221 () Bool)

(assert (=> b!4668298 m!5559221))

(declare-fun m!5559223 () Bool)

(assert (=> b!4668298 m!5559223))

(assert (=> b!4668298 m!5559221))

(declare-fun m!5559225 () Bool)

(assert (=> b!4668298 m!5559225))

(declare-fun m!5559227 () Bool)

(assert (=> b!4668298 m!5559227))

(assert (=> b!4668298 m!5559227))

(declare-fun m!5559229 () Bool)

(assert (=> b!4668298 m!5559229))

(assert (=> b!4668298 m!5559207))

(assert (=> b!4668298 m!5559223))

(declare-fun m!5559231 () Bool)

(assert (=> b!4668298 m!5559231))

(assert (=> b!4668298 m!5559229))

(declare-fun m!5559233 () Bool)

(assert (=> b!4668298 m!5559233))

(declare-fun m!5559235 () Bool)

(assert (=> b!4668298 m!5559235))

(declare-fun m!5559237 () Bool)

(assert (=> b!4668298 m!5559237))

(assert (=> b!4668298 m!5559203))

(assert (=> b!4668298 m!5559215))

(declare-fun m!5559239 () Bool)

(assert (=> b!4668295 m!5559239))

(declare-fun m!5559241 () Bool)

(assert (=> b!4668293 m!5559241))

(declare-fun m!5559243 () Bool)

(assert (=> b!4668299 m!5559243))

(declare-fun m!5559245 () Bool)

(assert (=> b!4668304 m!5559245))

(declare-fun m!5559247 () Bool)

(assert (=> b!4668304 m!5559247))

(declare-fun m!5559249 () Bool)

(assert (=> b!4668309 m!5559249))

(declare-fun m!5559251 () Bool)

(assert (=> b!4668309 m!5559251))

(declare-fun m!5559253 () Bool)

(assert (=> b!4668311 m!5559253))

(declare-fun m!5559255 () Bool)

(assert (=> b!4668310 m!5559255))

(check-sat (not b!4668300) (not b!4668310) (not b!4668295) (not b!4668305) (not b!4668304) (not b!4668312) (not b!4668299) (not b!4668301) tp_is_empty!29999 (not b!4668309) (not b!4668298) (not b!4668308) (not b!4668302) (not b!4668307) (not b!4668303) (not b!4668311) (not start!470640) (not b!4668297) (not b!4668294) tp_is_empty!29997 (not b!4668306) (not b!4668293))
(check-sat)
(get-model)

(declare-fun d!1484314 () Bool)

(declare-fun res!1964770 () Bool)

(declare-fun e!2913213 () Bool)

(assert (=> d!1484314 (=> res!1964770 e!2913213)))

(assert (=> d!1484314 (= res!1964770 (not ((_ is Cons!51996) oldBucket!40)))))

(assert (=> d!1484314 (= (noDuplicateKeys!1676 oldBucket!40) e!2913213)))

(declare-fun b!4668356 () Bool)

(declare-fun e!2913214 () Bool)

(assert (=> b!4668356 (= e!2913213 e!2913214)))

(declare-fun res!1964771 () Bool)

(assert (=> b!4668356 (=> (not res!1964771) (not e!2913214))))

(assert (=> b!4668356 (= res!1964771 (not (containsKey!2810 (t!359252 oldBucket!40) (_1!29869 (h!58168 oldBucket!40)))))))

(declare-fun b!4668357 () Bool)

(assert (=> b!4668357 (= e!2913214 (noDuplicateKeys!1676 (t!359252 oldBucket!40)))))

(assert (= (and d!1484314 (not res!1964770)) b!4668356))

(assert (= (and b!4668356 res!1964771) b!4668357))

(declare-fun m!5559281 () Bool)

(assert (=> b!4668356 m!5559281))

(assert (=> b!4668357 m!5559197))

(assert (=> start!470640 d!1484314))

(declare-fun d!1484318 () Bool)

(declare-fun isEmpty!29052 (Option!11908) Bool)

(assert (=> d!1484318 (= (isDefined!9173 (getPair!404 lt!1829982 key!4968)) (not (isEmpty!29052 (getPair!404 lt!1829982 key!4968))))))

(declare-fun bs!1077300 () Bool)

(assert (= bs!1077300 d!1484318))

(assert (=> bs!1077300 m!5559173))

(declare-fun m!5559283 () Bool)

(assert (=> bs!1077300 m!5559283))

(assert (=> b!4668308 d!1484318))

(declare-fun bs!1077302 () Bool)

(declare-fun d!1484320 () Bool)

(assert (= bs!1077302 (and d!1484320 b!4668308)))

(declare-fun lambda!201898 () Int)

(assert (=> bs!1077302 (= lambda!201898 lambda!201870)))

(declare-fun b!4668376 () Bool)

(declare-fun res!1964782 () Bool)

(declare-fun e!2913224 () Bool)

(assert (=> b!4668376 (=> (not res!1964782) (not e!2913224))))

(declare-fun allKeysSameHashInMap!1627 (ListLongMap!3835 Hashable!6073) Bool)

(assert (=> b!4668376 (= res!1964782 (allKeysSameHashInMap!1627 lt!1829980 hashF!1389))))

(declare-fun b!4668377 () Bool)

(declare-fun res!1964781 () Bool)

(assert (=> b!4668377 (=> (not res!1964781) (not e!2913224))))

(assert (=> b!4668377 (= res!1964781 (contains!15195 (extractMap!1732 (toList!5282 lt!1829980)) key!4968))))

(declare-fun b!4668378 () Bool)

(assert (=> b!4668378 (= e!2913224 (isDefined!9173 (getPair!404 (apply!12279 lt!1829980 (hash!3841 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1830069 () Unit!120660)

(assert (=> b!4668378 (= lt!1830069 (forallContained!3298 (toList!5282 lt!1829980) lambda!201898 (tuple2!53153 (hash!3841 hashF!1389 key!4968) (apply!12279 lt!1829980 (hash!3841 hashF!1389 key!4968)))))))

(declare-fun lt!1830071 () Unit!120660)

(declare-fun lt!1830070 () Unit!120660)

(assert (=> b!4668378 (= lt!1830071 lt!1830070)))

(declare-fun lt!1830072 () (_ BitVec 64))

(declare-fun lt!1830067 () List!52120)

(assert (=> b!4668378 (contains!15196 (toList!5282 lt!1829980) (tuple2!53153 lt!1830072 lt!1830067))))

(assert (=> b!4668378 (= lt!1830070 (lemmaGetValueImpliesTupleContained!209 lt!1829980 lt!1830072 lt!1830067))))

(declare-fun e!2913225 () Bool)

(assert (=> b!4668378 e!2913225))

(declare-fun res!1964780 () Bool)

(assert (=> b!4668378 (=> (not res!1964780) (not e!2913225))))

(assert (=> b!4668378 (= res!1964780 (contains!15197 lt!1829980 lt!1830072))))

(assert (=> b!4668378 (= lt!1830067 (apply!12279 lt!1829980 (hash!3841 hashF!1389 key!4968)))))

(assert (=> b!4668378 (= lt!1830072 (hash!3841 hashF!1389 key!4968))))

(declare-fun lt!1830074 () Unit!120660)

(declare-fun lt!1830068 () Unit!120660)

(assert (=> b!4668378 (= lt!1830074 lt!1830068)))

(assert (=> b!4668378 (contains!15197 lt!1829980 (hash!3841 hashF!1389 key!4968))))

(assert (=> b!4668378 (= lt!1830068 (lemmaInGenMapThenLongMapContainsHash!610 lt!1829980 key!4968 hashF!1389))))

(declare-fun b!4668379 () Bool)

(declare-datatypes ((Option!11910 0))(
  ( (None!11909) (Some!11909 (v!46259 List!52120)) )
))
(declare-fun getValueByKey!1664 (List!52121 (_ BitVec 64)) Option!11910)

(assert (=> b!4668379 (= e!2913225 (= (getValueByKey!1664 (toList!5282 lt!1829980) lt!1830072) (Some!11909 lt!1830067)))))

(assert (=> d!1484320 e!2913224))

(declare-fun res!1964783 () Bool)

(assert (=> d!1484320 (=> (not res!1964783) (not e!2913224))))

(declare-fun forall!11095 (List!52121 Int) Bool)

(assert (=> d!1484320 (= res!1964783 (forall!11095 (toList!5282 lt!1829980) lambda!201898))))

(declare-fun lt!1830073 () Unit!120660)

(declare-fun choose!32261 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> d!1484320 (= lt!1830073 (choose!32261 lt!1829980 key!4968 hashF!1389))))

(assert (=> d!1484320 (forall!11095 (toList!5282 lt!1829980) lambda!201898)))

(assert (=> d!1484320 (= (lemmaInGenMapThenGetPairDefined!200 lt!1829980 key!4968 hashF!1389) lt!1830073)))

(assert (= (and d!1484320 res!1964783) b!4668376))

(assert (= (and b!4668376 res!1964782) b!4668377))

(assert (= (and b!4668377 res!1964781) b!4668378))

(assert (= (and b!4668378 res!1964780) b!4668379))

(assert (=> b!4668378 m!5559199))

(declare-fun m!5559293 () Bool)

(assert (=> b!4668378 m!5559293))

(assert (=> b!4668378 m!5559179))

(declare-fun m!5559295 () Bool)

(assert (=> b!4668378 m!5559295))

(declare-fun m!5559297 () Bool)

(assert (=> b!4668378 m!5559297))

(declare-fun m!5559299 () Bool)

(assert (=> b!4668378 m!5559299))

(declare-fun m!5559301 () Bool)

(assert (=> b!4668378 m!5559301))

(assert (=> b!4668378 m!5559199))

(declare-fun m!5559303 () Bool)

(assert (=> b!4668378 m!5559303))

(assert (=> b!4668378 m!5559199))

(declare-fun m!5559305 () Bool)

(assert (=> b!4668378 m!5559305))

(assert (=> b!4668378 m!5559293))

(assert (=> b!4668378 m!5559295))

(declare-fun m!5559307 () Bool)

(assert (=> b!4668378 m!5559307))

(declare-fun m!5559309 () Bool)

(assert (=> b!4668377 m!5559309))

(assert (=> b!4668377 m!5559309))

(declare-fun m!5559311 () Bool)

(assert (=> b!4668377 m!5559311))

(declare-fun m!5559313 () Bool)

(assert (=> b!4668376 m!5559313))

(declare-fun m!5559315 () Bool)

(assert (=> b!4668379 m!5559315))

(declare-fun m!5559317 () Bool)

(assert (=> d!1484320 m!5559317))

(declare-fun m!5559319 () Bool)

(assert (=> d!1484320 m!5559319))

(assert (=> d!1484320 m!5559317))

(assert (=> b!4668308 d!1484320))

(declare-fun d!1484324 () Bool)

(assert (=> d!1484324 (contains!15196 (toList!5282 lt!1829980) (tuple2!53153 lt!1829986 lt!1829982))))

(declare-fun lt!1830089 () Unit!120660)

(declare-fun choose!32262 (ListLongMap!3835 (_ BitVec 64) List!52120) Unit!120660)

(assert (=> d!1484324 (= lt!1830089 (choose!32262 lt!1829980 lt!1829986 lt!1829982))))

(assert (=> d!1484324 (contains!15197 lt!1829980 lt!1829986)))

(assert (=> d!1484324 (= (lemmaGetValueImpliesTupleContained!209 lt!1829980 lt!1829986 lt!1829982) lt!1830089)))

(declare-fun bs!1077303 () Bool)

(assert (= bs!1077303 d!1484324))

(declare-fun m!5559321 () Bool)

(assert (=> bs!1077303 m!5559321))

(declare-fun m!5559323 () Bool)

(assert (=> bs!1077303 m!5559323))

(assert (=> bs!1077303 m!5559169))

(assert (=> b!4668308 d!1484324))

(declare-fun d!1484326 () Bool)

(declare-fun e!2913240 () Bool)

(assert (=> d!1484326 e!2913240))

(declare-fun res!1964798 () Bool)

(assert (=> d!1484326 (=> res!1964798 e!2913240)))

(declare-fun lt!1830140 () Bool)

(assert (=> d!1484326 (= res!1964798 (not lt!1830140))))

(declare-fun lt!1830142 () Bool)

(assert (=> d!1484326 (= lt!1830140 lt!1830142)))

(declare-fun lt!1830141 () Unit!120660)

(declare-fun e!2913241 () Unit!120660)

(assert (=> d!1484326 (= lt!1830141 e!2913241)))

(declare-fun c!799269 () Bool)

(assert (=> d!1484326 (= c!799269 lt!1830142)))

(declare-fun containsKey!2812 (List!52121 (_ BitVec 64)) Bool)

(assert (=> d!1484326 (= lt!1830142 (containsKey!2812 (toList!5282 lt!1829980) lt!1829986))))

(assert (=> d!1484326 (= (contains!15197 lt!1829980 lt!1829986) lt!1830140)))

(declare-fun b!4668405 () Bool)

(declare-fun lt!1830143 () Unit!120660)

(assert (=> b!4668405 (= e!2913241 lt!1830143)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1566 (List!52121 (_ BitVec 64)) Unit!120660)

(assert (=> b!4668405 (= lt!1830143 (lemmaContainsKeyImpliesGetValueByKeyDefined!1566 (toList!5282 lt!1829980) lt!1829986))))

(declare-fun isDefined!9175 (Option!11910) Bool)

(assert (=> b!4668405 (isDefined!9175 (getValueByKey!1664 (toList!5282 lt!1829980) lt!1829986))))

(declare-fun b!4668406 () Bool)

(declare-fun Unit!120695 () Unit!120660)

(assert (=> b!4668406 (= e!2913241 Unit!120695)))

(declare-fun b!4668407 () Bool)

(assert (=> b!4668407 (= e!2913240 (isDefined!9175 (getValueByKey!1664 (toList!5282 lt!1829980) lt!1829986)))))

(assert (= (and d!1484326 c!799269) b!4668405))

(assert (= (and d!1484326 (not c!799269)) b!4668406))

(assert (= (and d!1484326 (not res!1964798)) b!4668407))

(declare-fun m!5559359 () Bool)

(assert (=> d!1484326 m!5559359))

(declare-fun m!5559361 () Bool)

(assert (=> b!4668405 m!5559361))

(declare-fun m!5559363 () Bool)

(assert (=> b!4668405 m!5559363))

(assert (=> b!4668405 m!5559363))

(declare-fun m!5559365 () Bool)

(assert (=> b!4668405 m!5559365))

(assert (=> b!4668407 m!5559363))

(assert (=> b!4668407 m!5559363))

(assert (=> b!4668407 m!5559365))

(assert (=> b!4668308 d!1484326))

(declare-fun bs!1077326 () Bool)

(declare-fun d!1484330 () Bool)

(assert (= bs!1077326 (and d!1484330 b!4668308)))

(declare-fun lambda!201922 () Int)

(assert (=> bs!1077326 (= lambda!201922 lambda!201870)))

(declare-fun bs!1077327 () Bool)

(assert (= bs!1077327 (and d!1484330 d!1484320)))

(assert (=> bs!1077327 (= lambda!201922 lambda!201898)))

(assert (=> d!1484330 (contains!15197 lt!1829980 (hash!3841 hashF!1389 key!4968))))

(declare-fun lt!1830146 () Unit!120660)

(declare-fun choose!32263 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> d!1484330 (= lt!1830146 (choose!32263 lt!1829980 key!4968 hashF!1389))))

(assert (=> d!1484330 (forall!11095 (toList!5282 lt!1829980) lambda!201922)))

(assert (=> d!1484330 (= (lemmaInGenMapThenLongMapContainsHash!610 lt!1829980 key!4968 hashF!1389) lt!1830146)))

(declare-fun bs!1077328 () Bool)

(assert (= bs!1077328 d!1484330))

(assert (=> bs!1077328 m!5559199))

(assert (=> bs!1077328 m!5559199))

(assert (=> bs!1077328 m!5559303))

(declare-fun m!5559401 () Bool)

(assert (=> bs!1077328 m!5559401))

(declare-fun m!5559403 () Bool)

(assert (=> bs!1077328 m!5559403))

(assert (=> b!4668308 d!1484330))

(declare-fun d!1484338 () Bool)

(declare-fun e!2913261 () Bool)

(assert (=> d!1484338 e!2913261))

(declare-fun res!1964819 () Bool)

(assert (=> d!1484338 (=> res!1964819 e!2913261)))

(declare-fun e!2913263 () Bool)

(assert (=> d!1484338 (= res!1964819 e!2913263)))

(declare-fun res!1964820 () Bool)

(assert (=> d!1484338 (=> (not res!1964820) (not e!2913263))))

(declare-fun lt!1830186 () Option!11908)

(assert (=> d!1484338 (= res!1964820 (isEmpty!29052 lt!1830186))))

(declare-fun e!2913260 () Option!11908)

(assert (=> d!1484338 (= lt!1830186 e!2913260)))

(declare-fun c!799275 () Bool)

(assert (=> d!1484338 (= c!799275 (and ((_ is Cons!51996) lt!1829982) (= (_1!29869 (h!58168 lt!1829982)) key!4968)))))

(assert (=> d!1484338 (noDuplicateKeys!1676 lt!1829982)))

(assert (=> d!1484338 (= (getPair!404 lt!1829982 key!4968) lt!1830186)))

(declare-fun b!4668437 () Bool)

(declare-fun e!2913259 () Bool)

(declare-fun contains!15200 (List!52120 tuple2!53150) Bool)

(declare-fun get!17338 (Option!11908) tuple2!53150)

(assert (=> b!4668437 (= e!2913259 (contains!15200 lt!1829982 (get!17338 lt!1830186)))))

(declare-fun b!4668438 () Bool)

(assert (=> b!4668438 (= e!2913261 e!2913259)))

(declare-fun res!1964818 () Bool)

(assert (=> b!4668438 (=> (not res!1964818) (not e!2913259))))

(assert (=> b!4668438 (= res!1964818 (isDefined!9173 lt!1830186))))

(declare-fun b!4668439 () Bool)

(declare-fun res!1964821 () Bool)

(assert (=> b!4668439 (=> (not res!1964821) (not e!2913259))))

(assert (=> b!4668439 (= res!1964821 (= (_1!29869 (get!17338 lt!1830186)) key!4968))))

(declare-fun b!4668440 () Bool)

(assert (=> b!4668440 (= e!2913263 (not (containsKey!2810 lt!1829982 key!4968)))))

(declare-fun b!4668441 () Bool)

(declare-fun e!2913262 () Option!11908)

(assert (=> b!4668441 (= e!2913260 e!2913262)))

(declare-fun c!799276 () Bool)

(assert (=> b!4668441 (= c!799276 ((_ is Cons!51996) lt!1829982))))

(declare-fun b!4668442 () Bool)

(assert (=> b!4668442 (= e!2913260 (Some!11907 (h!58168 lt!1829982)))))

(declare-fun b!4668443 () Bool)

(assert (=> b!4668443 (= e!2913262 None!11907)))

(declare-fun b!4668444 () Bool)

(assert (=> b!4668444 (= e!2913262 (getPair!404 (t!359252 lt!1829982) key!4968))))

(assert (= (and d!1484338 c!799275) b!4668442))

(assert (= (and d!1484338 (not c!799275)) b!4668441))

(assert (= (and b!4668441 c!799276) b!4668444))

(assert (= (and b!4668441 (not c!799276)) b!4668443))

(assert (= (and d!1484338 res!1964820) b!4668440))

(assert (= (and d!1484338 (not res!1964819)) b!4668438))

(assert (= (and b!4668438 res!1964818) b!4668439))

(assert (= (and b!4668439 res!1964821) b!4668437))

(declare-fun m!5559429 () Bool)

(assert (=> d!1484338 m!5559429))

(declare-fun m!5559431 () Bool)

(assert (=> d!1484338 m!5559431))

(declare-fun m!5559433 () Bool)

(assert (=> b!4668444 m!5559433))

(declare-fun m!5559435 () Bool)

(assert (=> b!4668438 m!5559435))

(declare-fun m!5559437 () Bool)

(assert (=> b!4668439 m!5559437))

(assert (=> b!4668437 m!5559437))

(assert (=> b!4668437 m!5559437))

(declare-fun m!5559439 () Bool)

(assert (=> b!4668437 m!5559439))

(declare-fun m!5559441 () Bool)

(assert (=> b!4668440 m!5559441))

(assert (=> b!4668308 d!1484338))

(declare-fun d!1484344 () Bool)

(assert (=> d!1484344 (containsKey!2810 oldBucket!40 key!4968)))

(declare-fun lt!1830189 () Unit!120660)

(declare-fun choose!32265 (List!52120 K!13340 Hashable!6073) Unit!120660)

(assert (=> d!1484344 (= lt!1830189 (choose!32265 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1484344 (noDuplicateKeys!1676 oldBucket!40)))

(assert (=> d!1484344 (= (lemmaGetPairDefinedThenContainsKey!154 oldBucket!40 key!4968 hashF!1389) lt!1830189)))

(declare-fun bs!1077353 () Bool)

(assert (= bs!1077353 d!1484344))

(assert (=> bs!1077353 m!5559171))

(declare-fun m!5559475 () Bool)

(assert (=> bs!1077353 m!5559475))

(assert (=> bs!1077353 m!5559193))

(assert (=> b!4668308 d!1484344))

(declare-fun d!1484348 () Bool)

(declare-fun get!17339 (Option!11910) List!52120)

(assert (=> d!1484348 (= (apply!12279 lt!1829980 lt!1829986) (get!17339 (getValueByKey!1664 (toList!5282 lt!1829980) lt!1829986)))))

(declare-fun bs!1077354 () Bool)

(assert (= bs!1077354 d!1484348))

(assert (=> bs!1077354 m!5559363))

(assert (=> bs!1077354 m!5559363))

(declare-fun m!5559477 () Bool)

(assert (=> bs!1077354 m!5559477))

(assert (=> b!4668308 d!1484348))

(declare-fun d!1484350 () Bool)

(declare-fun res!1964826 () Bool)

(declare-fun e!2913268 () Bool)

(assert (=> d!1484350 (=> res!1964826 e!2913268)))

(assert (=> d!1484350 (= res!1964826 (and ((_ is Cons!51996) (t!359252 oldBucket!40)) (= (_1!29869 (h!58168 (t!359252 oldBucket!40))) key!4968)))))

(assert (=> d!1484350 (= (containsKey!2810 (t!359252 oldBucket!40) key!4968) e!2913268)))

(declare-fun b!4668449 () Bool)

(declare-fun e!2913269 () Bool)

(assert (=> b!4668449 (= e!2913268 e!2913269)))

(declare-fun res!1964827 () Bool)

(assert (=> b!4668449 (=> (not res!1964827) (not e!2913269))))

(assert (=> b!4668449 (= res!1964827 ((_ is Cons!51996) (t!359252 oldBucket!40)))))

(declare-fun b!4668450 () Bool)

(assert (=> b!4668450 (= e!2913269 (containsKey!2810 (t!359252 (t!359252 oldBucket!40)) key!4968))))

(assert (= (and d!1484350 (not res!1964826)) b!4668449))

(assert (= (and b!4668449 res!1964827) b!4668450))

(declare-fun m!5559479 () Bool)

(assert (=> b!4668450 m!5559479))

(assert (=> b!4668308 d!1484350))

(declare-fun d!1484352 () Bool)

(declare-fun dynLambda!21635 (Int tuple2!53152) Bool)

(assert (=> d!1484352 (dynLambda!21635 lambda!201870 lt!1829978)))

(declare-fun lt!1830192 () Unit!120660)

(declare-fun choose!32267 (List!52121 Int tuple2!53152) Unit!120660)

(assert (=> d!1484352 (= lt!1830192 (choose!32267 lt!1829985 lambda!201870 lt!1829978))))

(declare-fun e!2913272 () Bool)

(assert (=> d!1484352 e!2913272))

(declare-fun res!1964830 () Bool)

(assert (=> d!1484352 (=> (not res!1964830) (not e!2913272))))

(assert (=> d!1484352 (= res!1964830 (forall!11095 lt!1829985 lambda!201870))))

(assert (=> d!1484352 (= (forallContained!3298 lt!1829985 lambda!201870 lt!1829978) lt!1830192)))

(declare-fun b!4668453 () Bool)

(assert (=> b!4668453 (= e!2913272 (contains!15196 lt!1829985 lt!1829978))))

(assert (= (and d!1484352 res!1964830) b!4668453))

(declare-fun b_lambda!176233 () Bool)

(assert (=> (not b_lambda!176233) (not d!1484352)))

(declare-fun m!5559481 () Bool)

(assert (=> d!1484352 m!5559481))

(declare-fun m!5559483 () Bool)

(assert (=> d!1484352 m!5559483))

(declare-fun m!5559485 () Bool)

(assert (=> d!1484352 m!5559485))

(assert (=> b!4668453 m!5559185))

(assert (=> b!4668308 d!1484352))

(declare-fun d!1484354 () Bool)

(declare-fun res!1964831 () Bool)

(declare-fun e!2913273 () Bool)

(assert (=> d!1484354 (=> res!1964831 e!2913273)))

(assert (=> d!1484354 (= res!1964831 (and ((_ is Cons!51996) oldBucket!40) (= (_1!29869 (h!58168 oldBucket!40)) key!4968)))))

(assert (=> d!1484354 (= (containsKey!2810 oldBucket!40 key!4968) e!2913273)))

(declare-fun b!4668454 () Bool)

(declare-fun e!2913274 () Bool)

(assert (=> b!4668454 (= e!2913273 e!2913274)))

(declare-fun res!1964832 () Bool)

(assert (=> b!4668454 (=> (not res!1964832) (not e!2913274))))

(assert (=> b!4668454 (= res!1964832 ((_ is Cons!51996) oldBucket!40))))

(declare-fun b!4668455 () Bool)

(assert (=> b!4668455 (= e!2913274 (containsKey!2810 (t!359252 oldBucket!40) key!4968))))

(assert (= (and d!1484354 (not res!1964831)) b!4668454))

(assert (= (and b!4668454 res!1964832) b!4668455))

(assert (=> b!4668455 m!5559167))

(assert (=> b!4668308 d!1484354))

(declare-fun d!1484356 () Bool)

(declare-fun lt!1830198 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9053 (List!52121) (InoxSet tuple2!53152))

(assert (=> d!1484356 (= lt!1830198 (select (content!9053 lt!1829985) lt!1829978))))

(declare-fun e!2913280 () Bool)

(assert (=> d!1484356 (= lt!1830198 e!2913280)))

(declare-fun res!1964837 () Bool)

(assert (=> d!1484356 (=> (not res!1964837) (not e!2913280))))

(assert (=> d!1484356 (= res!1964837 ((_ is Cons!51997) lt!1829985))))

(assert (=> d!1484356 (= (contains!15196 lt!1829985 lt!1829978) lt!1830198)))

(declare-fun b!4668460 () Bool)

(declare-fun e!2913279 () Bool)

(assert (=> b!4668460 (= e!2913280 e!2913279)))

(declare-fun res!1964838 () Bool)

(assert (=> b!4668460 (=> res!1964838 e!2913279)))

(assert (=> b!4668460 (= res!1964838 (= (h!58169 lt!1829985) lt!1829978))))

(declare-fun b!4668461 () Bool)

(assert (=> b!4668461 (= e!2913279 (contains!15196 (t!359253 lt!1829985) lt!1829978))))

(assert (= (and d!1484356 res!1964837) b!4668460))

(assert (= (and b!4668460 (not res!1964838)) b!4668461))

(declare-fun m!5559493 () Bool)

(assert (=> d!1484356 m!5559493))

(declare-fun m!5559495 () Bool)

(assert (=> d!1484356 m!5559495))

(declare-fun m!5559497 () Bool)

(assert (=> b!4668461 m!5559497))

(assert (=> b!4668308 d!1484356))

(declare-fun d!1484362 () Bool)

(declare-fun res!1964839 () Bool)

(declare-fun e!2913281 () Bool)

(assert (=> d!1484362 (=> res!1964839 e!2913281)))

(assert (=> d!1484362 (= res!1964839 (not ((_ is Cons!51996) newBucket!224)))))

(assert (=> d!1484362 (= (noDuplicateKeys!1676 newBucket!224) e!2913281)))

(declare-fun b!4668462 () Bool)

(declare-fun e!2913282 () Bool)

(assert (=> b!4668462 (= e!2913281 e!2913282)))

(declare-fun res!1964840 () Bool)

(assert (=> b!4668462 (=> (not res!1964840) (not e!2913282))))

(assert (=> b!4668462 (= res!1964840 (not (containsKey!2810 (t!359252 newBucket!224) (_1!29869 (h!58168 newBucket!224)))))))

(declare-fun b!4668463 () Bool)

(assert (=> b!4668463 (= e!2913282 (noDuplicateKeys!1676 (t!359252 newBucket!224)))))

(assert (= (and d!1484362 (not res!1964839)) b!4668462))

(assert (= (and b!4668462 res!1964840) b!4668463))

(declare-fun m!5559499 () Bool)

(assert (=> b!4668462 m!5559499))

(declare-fun m!5559501 () Bool)

(assert (=> b!4668463 m!5559501))

(assert (=> b!4668297 d!1484362))

(declare-fun b!4668568 () Bool)

(assert (=> b!4668568 true))

(declare-fun bs!1077433 () Bool)

(declare-fun b!4668567 () Bool)

(assert (= bs!1077433 (and b!4668567 b!4668568)))

(declare-fun lambda!201976 () Int)

(declare-fun lambda!201975 () Int)

(assert (=> bs!1077433 (= lambda!201976 lambda!201975)))

(assert (=> b!4668567 true))

(declare-fun lambda!201977 () Int)

(declare-fun lt!1830338 () ListMap!4621)

(assert (=> bs!1077433 (= (= lt!1830338 lt!1829979) (= lambda!201977 lambda!201975))))

(assert (=> b!4668567 (= (= lt!1830338 lt!1829979) (= lambda!201977 lambda!201976))))

(assert (=> b!4668567 true))

(declare-fun bs!1077434 () Bool)

(declare-fun d!1484364 () Bool)

(assert (= bs!1077434 (and d!1484364 b!4668568)))

(declare-fun lambda!201978 () Int)

(declare-fun lt!1830346 () ListMap!4621)

(assert (=> bs!1077434 (= (= lt!1830346 lt!1829979) (= lambda!201978 lambda!201975))))

(declare-fun bs!1077435 () Bool)

(assert (= bs!1077435 (and d!1484364 b!4668567)))

(assert (=> bs!1077435 (= (= lt!1830346 lt!1829979) (= lambda!201978 lambda!201976))))

(assert (=> bs!1077435 (= (= lt!1830346 lt!1830338) (= lambda!201978 lambda!201977))))

(assert (=> d!1484364 true))

(declare-fun e!2913353 () Bool)

(assert (=> d!1484364 e!2913353))

(declare-fun res!1964908 () Bool)

(assert (=> d!1484364 (=> (not res!1964908) (not e!2913353))))

(declare-fun forall!11096 (List!52120 Int) Bool)

(assert (=> d!1484364 (= res!1964908 (forall!11096 oldBucket!40 lambda!201978))))

(declare-fun e!2913354 () ListMap!4621)

(assert (=> d!1484364 (= lt!1830346 e!2913354)))

(declare-fun c!799294 () Bool)

(assert (=> d!1484364 (= c!799294 ((_ is Nil!51996) oldBucket!40))))

(assert (=> d!1484364 (noDuplicateKeys!1676 oldBucket!40)))

(assert (=> d!1484364 (= (addToMapMapFromBucket!1133 oldBucket!40 lt!1829979) lt!1830346)))

(declare-fun lt!1830354 () ListMap!4621)

(declare-fun bm!326293 () Bool)

(declare-fun call!326298 () Bool)

(assert (=> bm!326293 (= call!326298 (forall!11096 (ite c!799294 (toList!5281 lt!1829979) (toList!5281 lt!1830354)) (ite c!799294 lambda!201975 lambda!201977)))))

(declare-fun b!4668565 () Bool)

(declare-fun invariantList!1326 (List!52120) Bool)

(assert (=> b!4668565 (= e!2913353 (invariantList!1326 (toList!5281 lt!1830346)))))

(declare-fun bm!326294 () Bool)

(declare-fun call!326299 () Unit!120660)

(declare-fun lemmaContainsAllItsOwnKeys!626 (ListMap!4621) Unit!120660)

(assert (=> bm!326294 (= call!326299 (lemmaContainsAllItsOwnKeys!626 lt!1829979))))

(declare-fun b!4668566 () Bool)

(declare-fun res!1964907 () Bool)

(assert (=> b!4668566 (=> (not res!1964907) (not e!2913353))))

(assert (=> b!4668566 (= res!1964907 (forall!11096 (toList!5281 lt!1829979) lambda!201978))))

(assert (=> b!4668567 (= e!2913354 lt!1830338)))

(assert (=> b!4668567 (= lt!1830354 (+!2016 lt!1829979 (h!58168 oldBucket!40)))))

(assert (=> b!4668567 (= lt!1830338 (addToMapMapFromBucket!1133 (t!359252 oldBucket!40) (+!2016 lt!1829979 (h!58168 oldBucket!40))))))

(declare-fun lt!1830335 () Unit!120660)

(assert (=> b!4668567 (= lt!1830335 call!326299)))

(assert (=> b!4668567 (forall!11096 (toList!5281 lt!1829979) lambda!201976)))

(declare-fun lt!1830349 () Unit!120660)

(assert (=> b!4668567 (= lt!1830349 lt!1830335)))

(assert (=> b!4668567 call!326298))

(declare-fun lt!1830347 () Unit!120660)

(declare-fun Unit!120698 () Unit!120660)

(assert (=> b!4668567 (= lt!1830347 Unit!120698)))

(assert (=> b!4668567 (forall!11096 (t!359252 oldBucket!40) lambda!201977)))

(declare-fun lt!1830350 () Unit!120660)

(declare-fun Unit!120699 () Unit!120660)

(assert (=> b!4668567 (= lt!1830350 Unit!120699)))

(declare-fun lt!1830345 () Unit!120660)

(declare-fun Unit!120700 () Unit!120660)

(assert (=> b!4668567 (= lt!1830345 Unit!120700)))

(declare-fun lt!1830343 () Unit!120660)

(declare-fun forallContained!3300 (List!52120 Int tuple2!53150) Unit!120660)

(assert (=> b!4668567 (= lt!1830343 (forallContained!3300 (toList!5281 lt!1830354) lambda!201977 (h!58168 oldBucket!40)))))

(assert (=> b!4668567 (contains!15195 lt!1830354 (_1!29869 (h!58168 oldBucket!40)))))

(declare-fun lt!1830344 () Unit!120660)

(declare-fun Unit!120701 () Unit!120660)

(assert (=> b!4668567 (= lt!1830344 Unit!120701)))

(assert (=> b!4668567 (contains!15195 lt!1830338 (_1!29869 (h!58168 oldBucket!40)))))

(declare-fun lt!1830339 () Unit!120660)

(declare-fun Unit!120702 () Unit!120660)

(assert (=> b!4668567 (= lt!1830339 Unit!120702)))

(assert (=> b!4668567 (forall!11096 oldBucket!40 lambda!201977)))

(declare-fun lt!1830342 () Unit!120660)

(declare-fun Unit!120703 () Unit!120660)

(assert (=> b!4668567 (= lt!1830342 Unit!120703)))

(assert (=> b!4668567 (forall!11096 (toList!5281 lt!1830354) lambda!201977)))

(declare-fun lt!1830340 () Unit!120660)

(declare-fun Unit!120704 () Unit!120660)

(assert (=> b!4668567 (= lt!1830340 Unit!120704)))

(declare-fun lt!1830353 () Unit!120660)

(declare-fun Unit!120705 () Unit!120660)

(assert (=> b!4668567 (= lt!1830353 Unit!120705)))

(declare-fun lt!1830351 () Unit!120660)

(declare-fun addForallContainsKeyThenBeforeAdding!625 (ListMap!4621 ListMap!4621 K!13340 V!13586) Unit!120660)

(assert (=> b!4668567 (= lt!1830351 (addForallContainsKeyThenBeforeAdding!625 lt!1829979 lt!1830338 (_1!29869 (h!58168 oldBucket!40)) (_2!29869 (h!58168 oldBucket!40))))))

(declare-fun call!326300 () Bool)

(assert (=> b!4668567 call!326300))

(declare-fun lt!1830348 () Unit!120660)

(assert (=> b!4668567 (= lt!1830348 lt!1830351)))

(assert (=> b!4668567 (forall!11096 (toList!5281 lt!1829979) lambda!201977)))

(declare-fun lt!1830334 () Unit!120660)

(declare-fun Unit!120706 () Unit!120660)

(assert (=> b!4668567 (= lt!1830334 Unit!120706)))

(declare-fun res!1964909 () Bool)

(assert (=> b!4668567 (= res!1964909 (forall!11096 oldBucket!40 lambda!201977))))

(declare-fun e!2913355 () Bool)

(assert (=> b!4668567 (=> (not res!1964909) (not e!2913355))))

(assert (=> b!4668567 e!2913355))

(declare-fun lt!1830341 () Unit!120660)

(declare-fun Unit!120707 () Unit!120660)

(assert (=> b!4668567 (= lt!1830341 Unit!120707)))

(assert (=> b!4668568 (= e!2913354 lt!1829979)))

(declare-fun lt!1830337 () Unit!120660)

(assert (=> b!4668568 (= lt!1830337 call!326299)))

(assert (=> b!4668568 call!326298))

(declare-fun lt!1830336 () Unit!120660)

(assert (=> b!4668568 (= lt!1830336 lt!1830337)))

(assert (=> b!4668568 call!326300))

(declare-fun lt!1830352 () Unit!120660)

(declare-fun Unit!120708 () Unit!120660)

(assert (=> b!4668568 (= lt!1830352 Unit!120708)))

(declare-fun bm!326295 () Bool)

(assert (=> bm!326295 (= call!326300 (forall!11096 (toList!5281 lt!1829979) (ite c!799294 lambda!201975 lambda!201977)))))

(declare-fun b!4668569 () Bool)

(assert (=> b!4668569 (= e!2913355 (forall!11096 (toList!5281 lt!1829979) lambda!201977))))

(assert (= (and d!1484364 c!799294) b!4668568))

(assert (= (and d!1484364 (not c!799294)) b!4668567))

(assert (= (and b!4668567 res!1964909) b!4668569))

(assert (= (or b!4668568 b!4668567) bm!326294))

(assert (= (or b!4668568 b!4668567) bm!326293))

(assert (= (or b!4668568 b!4668567) bm!326295))

(assert (= (and d!1484364 res!1964908) b!4668566))

(assert (= (and b!4668566 res!1964907) b!4668565))

(declare-fun m!5559689 () Bool)

(assert (=> b!4668569 m!5559689))

(declare-fun m!5559691 () Bool)

(assert (=> b!4668566 m!5559691))

(declare-fun m!5559693 () Bool)

(assert (=> b!4668565 m!5559693))

(declare-fun m!5559695 () Bool)

(assert (=> bm!326294 m!5559695))

(declare-fun m!5559697 () Bool)

(assert (=> bm!326295 m!5559697))

(declare-fun m!5559699 () Bool)

(assert (=> b!4668567 m!5559699))

(declare-fun m!5559701 () Bool)

(assert (=> b!4668567 m!5559701))

(declare-fun m!5559703 () Bool)

(assert (=> b!4668567 m!5559703))

(declare-fun m!5559705 () Bool)

(assert (=> b!4668567 m!5559705))

(declare-fun m!5559707 () Bool)

(assert (=> b!4668567 m!5559707))

(declare-fun m!5559709 () Bool)

(assert (=> b!4668567 m!5559709))

(declare-fun m!5559711 () Bool)

(assert (=> b!4668567 m!5559711))

(assert (=> b!4668567 m!5559707))

(declare-fun m!5559713 () Bool)

(assert (=> b!4668567 m!5559713))

(assert (=> b!4668567 m!5559689))

(assert (=> b!4668567 m!5559701))

(declare-fun m!5559715 () Bool)

(assert (=> b!4668567 m!5559715))

(declare-fun m!5559717 () Bool)

(assert (=> b!4668567 m!5559717))

(declare-fun m!5559719 () Bool)

(assert (=> d!1484364 m!5559719))

(assert (=> d!1484364 m!5559193))

(declare-fun m!5559721 () Bool)

(assert (=> bm!326293 m!5559721))

(assert (=> b!4668306 d!1484364))

(declare-fun bs!1077517 () Bool)

(declare-fun d!1484418 () Bool)

(assert (= bs!1077517 (and d!1484418 b!4668308)))

(declare-fun lambda!201987 () Int)

(assert (=> bs!1077517 (= lambda!201987 lambda!201870)))

(declare-fun bs!1077519 () Bool)

(assert (= bs!1077519 (and d!1484418 d!1484320)))

(assert (=> bs!1077519 (= lambda!201987 lambda!201898)))

(declare-fun bs!1077520 () Bool)

(assert (= bs!1077520 (and d!1484418 d!1484330)))

(assert (=> bs!1077520 (= lambda!201987 lambda!201922)))

(declare-fun lt!1830381 () ListMap!4621)

(assert (=> d!1484418 (invariantList!1326 (toList!5281 lt!1830381))))

(declare-fun e!2913369 () ListMap!4621)

(assert (=> d!1484418 (= lt!1830381 e!2913369)))

(declare-fun c!799304 () Bool)

(assert (=> d!1484418 (= c!799304 ((_ is Cons!51997) Nil!51997))))

(assert (=> d!1484418 (forall!11095 Nil!51997 lambda!201987)))

(assert (=> d!1484418 (= (extractMap!1732 Nil!51997) lt!1830381)))

(declare-fun b!4668595 () Bool)

(assert (=> b!4668595 (= e!2913369 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 Nil!51997)) (extractMap!1732 (t!359253 Nil!51997))))))

(declare-fun b!4668596 () Bool)

(assert (=> b!4668596 (= e!2913369 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484418 c!799304) b!4668595))

(assert (= (and d!1484418 (not c!799304)) b!4668596))

(declare-fun m!5559731 () Bool)

(assert (=> d!1484418 m!5559731))

(declare-fun m!5559733 () Bool)

(assert (=> d!1484418 m!5559733))

(declare-fun m!5559735 () Bool)

(assert (=> b!4668595 m!5559735))

(assert (=> b!4668595 m!5559735))

(declare-fun m!5559737 () Bool)

(assert (=> b!4668595 m!5559737))

(assert (=> b!4668306 d!1484418))

(declare-fun b!4668615 () Bool)

(declare-fun e!2913379 () List!52120)

(assert (=> b!4668615 (= e!2913379 (Cons!51996 (h!58168 oldBucket!40) (removePairForKey!1299 (t!359252 oldBucket!40) key!4968)))))

(declare-fun b!4668613 () Bool)

(declare-fun e!2913380 () List!52120)

(assert (=> b!4668613 (= e!2913380 (t!359252 oldBucket!40))))

(declare-fun b!4668616 () Bool)

(assert (=> b!4668616 (= e!2913379 Nil!51996)))

(declare-fun d!1484426 () Bool)

(declare-fun lt!1830386 () List!52120)

(assert (=> d!1484426 (not (containsKey!2810 lt!1830386 key!4968))))

(assert (=> d!1484426 (= lt!1830386 e!2913380)))

(declare-fun c!799313 () Bool)

(assert (=> d!1484426 (= c!799313 (and ((_ is Cons!51996) oldBucket!40) (= (_1!29869 (h!58168 oldBucket!40)) key!4968)))))

(assert (=> d!1484426 (noDuplicateKeys!1676 oldBucket!40)))

(assert (=> d!1484426 (= (removePairForKey!1299 oldBucket!40 key!4968) lt!1830386)))

(declare-fun b!4668614 () Bool)

(assert (=> b!4668614 (= e!2913380 e!2913379)))

(declare-fun c!799312 () Bool)

(assert (=> b!4668614 (= c!799312 ((_ is Cons!51996) oldBucket!40))))

(assert (= (and d!1484426 c!799313) b!4668613))

(assert (= (and d!1484426 (not c!799313)) b!4668614))

(assert (= (and b!4668614 c!799312) b!4668615))

(assert (= (and b!4668614 (not c!799312)) b!4668616))

(assert (=> b!4668615 m!5559255))

(declare-fun m!5559785 () Bool)

(assert (=> d!1484426 m!5559785))

(assert (=> d!1484426 m!5559193))

(assert (=> b!4668295 d!1484426))

(declare-fun d!1484440 () Bool)

(declare-fun res!1964917 () Bool)

(declare-fun e!2913383 () Bool)

(assert (=> d!1484440 (=> res!1964917 e!2913383)))

(assert (=> d!1484440 (= res!1964917 (not ((_ is Cons!51996) (t!359252 oldBucket!40))))))

(assert (=> d!1484440 (= (noDuplicateKeys!1676 (t!359252 oldBucket!40)) e!2913383)))

(declare-fun b!4668621 () Bool)

(declare-fun e!2913384 () Bool)

(assert (=> b!4668621 (= e!2913383 e!2913384)))

(declare-fun res!1964918 () Bool)

(assert (=> b!4668621 (=> (not res!1964918) (not e!2913384))))

(assert (=> b!4668621 (= res!1964918 (not (containsKey!2810 (t!359252 (t!359252 oldBucket!40)) (_1!29869 (h!58168 (t!359252 oldBucket!40))))))))

(declare-fun b!4668622 () Bool)

(assert (=> b!4668622 (= e!2913384 (noDuplicateKeys!1676 (t!359252 (t!359252 oldBucket!40))))))

(assert (= (and d!1484440 (not res!1964917)) b!4668621))

(assert (= (and b!4668621 res!1964918) b!4668622))

(declare-fun m!5559791 () Bool)

(assert (=> b!4668621 m!5559791))

(declare-fun m!5559793 () Bool)

(assert (=> b!4668622 m!5559793))

(assert (=> b!4668305 d!1484440))

(declare-fun d!1484444 () Bool)

(declare-fun hash!3842 (Hashable!6073 K!13340) (_ BitVec 64))

(assert (=> d!1484444 (= (hash!3841 hashF!1389 key!4968) (hash!3842 hashF!1389 key!4968))))

(declare-fun bs!1077531 () Bool)

(assert (= bs!1077531 d!1484444))

(declare-fun m!5559799 () Bool)

(assert (=> bs!1077531 m!5559799))

(assert (=> b!4668303 d!1484444))

(declare-fun b!4668653 () Bool)

(declare-datatypes ((List!52123 0))(
  ( (Nil!51999) (Cons!51999 (h!58173 K!13340) (t!359257 List!52123)) )
))
(declare-fun e!2913404 () List!52123)

(declare-fun getKeysList!777 (List!52120) List!52123)

(assert (=> b!4668653 (= e!2913404 (getKeysList!777 (toList!5281 lt!1829972)))))

(declare-fun b!4668654 () Bool)

(declare-fun e!2913406 () Bool)

(declare-fun contains!15201 (List!52123 K!13340) Bool)

(declare-fun keys!18452 (ListMap!4621) List!52123)

(assert (=> b!4668654 (= e!2913406 (contains!15201 (keys!18452 lt!1829972) key!4968))))

(declare-fun b!4668655 () Bool)

(declare-fun e!2913407 () Unit!120660)

(declare-fun e!2913408 () Unit!120660)

(assert (=> b!4668655 (= e!2913407 e!2913408)))

(declare-fun c!799324 () Bool)

(declare-fun call!326306 () Bool)

(assert (=> b!4668655 (= c!799324 call!326306)))

(declare-fun bm!326301 () Bool)

(assert (=> bm!326301 (= call!326306 (contains!15201 e!2913404 key!4968))))

(declare-fun c!799325 () Bool)

(declare-fun c!799326 () Bool)

(assert (=> bm!326301 (= c!799325 c!799326)))

(declare-fun b!4668656 () Bool)

(declare-fun e!2913405 () Bool)

(assert (=> b!4668656 (= e!2913405 e!2913406)))

(declare-fun res!1964929 () Bool)

(assert (=> b!4668656 (=> (not res!1964929) (not e!2913406))))

(declare-datatypes ((Option!11911 0))(
  ( (None!11910) (Some!11910 (v!46260 V!13586)) )
))
(declare-fun isDefined!9176 (Option!11911) Bool)

(declare-fun getValueByKey!1665 (List!52120 K!13340) Option!11911)

(assert (=> b!4668656 (= res!1964929 (isDefined!9176 (getValueByKey!1665 (toList!5281 lt!1829972) key!4968)))))

(declare-fun d!1484448 () Bool)

(assert (=> d!1484448 e!2913405))

(declare-fun res!1964928 () Bool)

(assert (=> d!1484448 (=> res!1964928 e!2913405)))

(declare-fun e!2913409 () Bool)

(assert (=> d!1484448 (= res!1964928 e!2913409)))

(declare-fun res!1964927 () Bool)

(assert (=> d!1484448 (=> (not res!1964927) (not e!2913409))))

(declare-fun lt!1830410 () Bool)

(assert (=> d!1484448 (= res!1964927 (not lt!1830410))))

(declare-fun lt!1830414 () Bool)

(assert (=> d!1484448 (= lt!1830410 lt!1830414)))

(declare-fun lt!1830411 () Unit!120660)

(assert (=> d!1484448 (= lt!1830411 e!2913407)))

(assert (=> d!1484448 (= c!799326 lt!1830414)))

(declare-fun containsKey!2813 (List!52120 K!13340) Bool)

(assert (=> d!1484448 (= lt!1830414 (containsKey!2813 (toList!5281 lt!1829972) key!4968))))

(assert (=> d!1484448 (= (contains!15195 lt!1829972 key!4968) lt!1830410)))

(declare-fun b!4668657 () Bool)

(assert (=> b!4668657 false))

(declare-fun lt!1830415 () Unit!120660)

(declare-fun lt!1830413 () Unit!120660)

(assert (=> b!4668657 (= lt!1830415 lt!1830413)))

(assert (=> b!4668657 (containsKey!2813 (toList!5281 lt!1829972) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!776 (List!52120 K!13340) Unit!120660)

(assert (=> b!4668657 (= lt!1830413 (lemmaInGetKeysListThenContainsKey!776 (toList!5281 lt!1829972) key!4968))))

(declare-fun Unit!120720 () Unit!120660)

(assert (=> b!4668657 (= e!2913408 Unit!120720)))

(declare-fun b!4668658 () Bool)

(assert (=> b!4668658 (= e!2913404 (keys!18452 lt!1829972))))

(declare-fun b!4668659 () Bool)

(declare-fun lt!1830416 () Unit!120660)

(assert (=> b!4668659 (= e!2913407 lt!1830416)))

(declare-fun lt!1830417 () Unit!120660)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1567 (List!52120 K!13340) Unit!120660)

(assert (=> b!4668659 (= lt!1830417 (lemmaContainsKeyImpliesGetValueByKeyDefined!1567 (toList!5281 lt!1829972) key!4968))))

(assert (=> b!4668659 (isDefined!9176 (getValueByKey!1665 (toList!5281 lt!1829972) key!4968))))

(declare-fun lt!1830412 () Unit!120660)

(assert (=> b!4668659 (= lt!1830412 lt!1830417)))

(declare-fun lemmaInListThenGetKeysListContains!772 (List!52120 K!13340) Unit!120660)

(assert (=> b!4668659 (= lt!1830416 (lemmaInListThenGetKeysListContains!772 (toList!5281 lt!1829972) key!4968))))

(assert (=> b!4668659 call!326306))

(declare-fun b!4668660 () Bool)

(declare-fun Unit!120721 () Unit!120660)

(assert (=> b!4668660 (= e!2913408 Unit!120721)))

(declare-fun b!4668661 () Bool)

(assert (=> b!4668661 (= e!2913409 (not (contains!15201 (keys!18452 lt!1829972) key!4968)))))

(assert (= (and d!1484448 c!799326) b!4668659))

(assert (= (and d!1484448 (not c!799326)) b!4668655))

(assert (= (and b!4668655 c!799324) b!4668657))

(assert (= (and b!4668655 (not c!799324)) b!4668660))

(assert (= (or b!4668659 b!4668655) bm!326301))

(assert (= (and bm!326301 c!799325) b!4668653))

(assert (= (and bm!326301 (not c!799325)) b!4668658))

(assert (= (and d!1484448 res!1964927) b!4668661))

(assert (= (and d!1484448 (not res!1964928)) b!4668656))

(assert (= (and b!4668656 res!1964929) b!4668654))

(declare-fun m!5559831 () Bool)

(assert (=> b!4668659 m!5559831))

(declare-fun m!5559833 () Bool)

(assert (=> b!4668659 m!5559833))

(assert (=> b!4668659 m!5559833))

(declare-fun m!5559835 () Bool)

(assert (=> b!4668659 m!5559835))

(declare-fun m!5559837 () Bool)

(assert (=> b!4668659 m!5559837))

(assert (=> b!4668656 m!5559833))

(assert (=> b!4668656 m!5559833))

(assert (=> b!4668656 m!5559835))

(declare-fun m!5559839 () Bool)

(assert (=> bm!326301 m!5559839))

(declare-fun m!5559841 () Bool)

(assert (=> b!4668654 m!5559841))

(assert (=> b!4668654 m!5559841))

(declare-fun m!5559843 () Bool)

(assert (=> b!4668654 m!5559843))

(declare-fun m!5559845 () Bool)

(assert (=> b!4668653 m!5559845))

(declare-fun m!5559847 () Bool)

(assert (=> d!1484448 m!5559847))

(assert (=> b!4668658 m!5559841))

(assert (=> b!4668661 m!5559841))

(assert (=> b!4668661 m!5559841))

(assert (=> b!4668661 m!5559843))

(assert (=> b!4668657 m!5559847))

(declare-fun m!5559849 () Bool)

(assert (=> b!4668657 m!5559849))

(assert (=> b!4668304 d!1484448))

(declare-fun bs!1077548 () Bool)

(declare-fun d!1484456 () Bool)

(assert (= bs!1077548 (and d!1484456 b!4668308)))

(declare-fun lambda!201991 () Int)

(assert (=> bs!1077548 (= lambda!201991 lambda!201870)))

(declare-fun bs!1077549 () Bool)

(assert (= bs!1077549 (and d!1484456 d!1484320)))

(assert (=> bs!1077549 (= lambda!201991 lambda!201898)))

(declare-fun bs!1077550 () Bool)

(assert (= bs!1077550 (and d!1484456 d!1484330)))

(assert (=> bs!1077550 (= lambda!201991 lambda!201922)))

(declare-fun bs!1077551 () Bool)

(assert (= bs!1077551 (and d!1484456 d!1484418)))

(assert (=> bs!1077551 (= lambda!201991 lambda!201987)))

(declare-fun lt!1830418 () ListMap!4621)

(assert (=> d!1484456 (invariantList!1326 (toList!5281 lt!1830418))))

(declare-fun e!2913410 () ListMap!4621)

(assert (=> d!1484456 (= lt!1830418 e!2913410)))

(declare-fun c!799327 () Bool)

(assert (=> d!1484456 (= c!799327 ((_ is Cons!51997) lt!1829985))))

(assert (=> d!1484456 (forall!11095 lt!1829985 lambda!201991)))

(assert (=> d!1484456 (= (extractMap!1732 lt!1829985) lt!1830418)))

(declare-fun b!4668662 () Bool)

(assert (=> b!4668662 (= e!2913410 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 lt!1829985)) (extractMap!1732 (t!359253 lt!1829985))))))

(declare-fun b!4668663 () Bool)

(assert (=> b!4668663 (= e!2913410 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484456 c!799327) b!4668662))

(assert (= (and d!1484456 (not c!799327)) b!4668663))

(declare-fun m!5559851 () Bool)

(assert (=> d!1484456 m!5559851))

(declare-fun m!5559853 () Bool)

(assert (=> d!1484456 m!5559853))

(declare-fun m!5559855 () Bool)

(assert (=> b!4668662 m!5559855))

(assert (=> b!4668662 m!5559855))

(declare-fun m!5559857 () Bool)

(assert (=> b!4668662 m!5559857))

(assert (=> b!4668304 d!1484456))

(declare-fun bs!1077552 () Bool)

(declare-fun d!1484458 () Bool)

(assert (= bs!1077552 (and d!1484458 b!4668568)))

(declare-fun lambda!201994 () Int)

(assert (=> bs!1077552 (not (= lambda!201994 lambda!201975))))

(declare-fun bs!1077553 () Bool)

(assert (= bs!1077553 (and d!1484458 b!4668567)))

(assert (=> bs!1077553 (not (= lambda!201994 lambda!201976))))

(assert (=> bs!1077553 (not (= lambda!201994 lambda!201977))))

(declare-fun bs!1077554 () Bool)

(assert (= bs!1077554 (and d!1484458 d!1484364)))

(assert (=> bs!1077554 (not (= lambda!201994 lambda!201978))))

(assert (=> d!1484458 true))

(assert (=> d!1484458 true))

(assert (=> d!1484458 (= (allKeysSameHash!1530 lt!1829976 hash!414 hashF!1389) (forall!11096 lt!1829976 lambda!201994))))

(declare-fun bs!1077555 () Bool)

(assert (= bs!1077555 d!1484458))

(declare-fun m!5559859 () Bool)

(assert (=> bs!1077555 m!5559859))

(assert (=> b!4668293 d!1484458))

(declare-fun b!4668670 () Bool)

(declare-fun e!2913411 () List!52120)

(assert (=> b!4668670 (= e!2913411 (Cons!51996 (h!58168 lt!1829973) (removePairForKey!1299 (t!359252 lt!1829973) key!4968)))))

(declare-fun b!4668668 () Bool)

(declare-fun e!2913412 () List!52120)

(assert (=> b!4668668 (= e!2913412 (t!359252 lt!1829973))))

(declare-fun b!4668671 () Bool)

(assert (=> b!4668671 (= e!2913411 Nil!51996)))

(declare-fun d!1484460 () Bool)

(declare-fun lt!1830419 () List!52120)

(assert (=> d!1484460 (not (containsKey!2810 lt!1830419 key!4968))))

(assert (=> d!1484460 (= lt!1830419 e!2913412)))

(declare-fun c!799329 () Bool)

(assert (=> d!1484460 (= c!799329 (and ((_ is Cons!51996) lt!1829973) (= (_1!29869 (h!58168 lt!1829973)) key!4968)))))

(assert (=> d!1484460 (noDuplicateKeys!1676 lt!1829973)))

(assert (=> d!1484460 (= (removePairForKey!1299 lt!1829973 key!4968) lt!1830419)))

(declare-fun b!4668669 () Bool)

(assert (=> b!4668669 (= e!2913412 e!2913411)))

(declare-fun c!799328 () Bool)

(assert (=> b!4668669 (= c!799328 ((_ is Cons!51996) lt!1829973))))

(assert (= (and d!1484460 c!799329) b!4668668))

(assert (= (and d!1484460 (not c!799329)) b!4668669))

(assert (= (and b!4668669 c!799328) b!4668670))

(assert (= (and b!4668669 (not c!799328)) b!4668671))

(declare-fun m!5559861 () Bool)

(assert (=> b!4668670 m!5559861))

(declare-fun m!5559863 () Bool)

(assert (=> d!1484460 m!5559863))

(declare-fun m!5559865 () Bool)

(assert (=> d!1484460 m!5559865))

(assert (=> b!4668302 d!1484460))

(declare-fun d!1484462 () Bool)

(assert (=> d!1484462 (= (tail!8279 newBucket!224) (t!359252 newBucket!224))))

(assert (=> b!4668302 d!1484462))

(declare-fun d!1484464 () Bool)

(assert (=> d!1484464 (= (tail!8279 oldBucket!40) (t!359252 oldBucket!40))))

(assert (=> b!4668302 d!1484464))

(declare-fun bs!1077556 () Bool)

(declare-fun d!1484466 () Bool)

(assert (= bs!1077556 (and d!1484466 b!4668568)))

(declare-fun lambda!201995 () Int)

(assert (=> bs!1077556 (not (= lambda!201995 lambda!201975))))

(declare-fun bs!1077557 () Bool)

(assert (= bs!1077557 (and d!1484466 b!4668567)))

(assert (=> bs!1077557 (not (= lambda!201995 lambda!201976))))

(assert (=> bs!1077557 (not (= lambda!201995 lambda!201977))))

(declare-fun bs!1077558 () Bool)

(assert (= bs!1077558 (and d!1484466 d!1484364)))

(assert (=> bs!1077558 (not (= lambda!201995 lambda!201978))))

(declare-fun bs!1077559 () Bool)

(assert (= bs!1077559 (and d!1484466 d!1484458)))

(assert (=> bs!1077559 (= lambda!201995 lambda!201994)))

(assert (=> d!1484466 true))

(assert (=> d!1484466 true))

(assert (=> d!1484466 (= (allKeysSameHash!1530 newBucket!224 hash!414 hashF!1389) (forall!11096 newBucket!224 lambda!201995))))

(declare-fun bs!1077560 () Bool)

(assert (= bs!1077560 d!1484466))

(declare-fun m!5559867 () Bool)

(assert (=> bs!1077560 m!5559867))

(assert (=> b!4668311 d!1484466))

(declare-fun d!1484468 () Bool)

(declare-fun content!9055 (List!52120) (InoxSet tuple2!53150))

(assert (=> d!1484468 (= (eq!931 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)) (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)) lt!1829988)) (= (content!9055 (toList!5281 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)))) (content!9055 (toList!5281 (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)) lt!1829988)))))))

(declare-fun bs!1077561 () Bool)

(assert (= bs!1077561 d!1484468))

(declare-fun m!5559869 () Bool)

(assert (=> bs!1077561 m!5559869))

(declare-fun m!5559871 () Bool)

(assert (=> bs!1077561 m!5559871))

(assert (=> b!4668312 d!1484468))

(declare-fun bs!1077562 () Bool)

(declare-fun d!1484470 () Bool)

(assert (= bs!1077562 (and d!1484470 d!1484456)))

(declare-fun lambda!201996 () Int)

(assert (=> bs!1077562 (= lambda!201996 lambda!201991)))

(declare-fun bs!1077563 () Bool)

(assert (= bs!1077563 (and d!1484470 d!1484330)))

(assert (=> bs!1077563 (= lambda!201996 lambda!201922)))

(declare-fun bs!1077564 () Bool)

(assert (= bs!1077564 (and d!1484470 d!1484320)))

(assert (=> bs!1077564 (= lambda!201996 lambda!201898)))

(declare-fun bs!1077565 () Bool)

(assert (= bs!1077565 (and d!1484470 b!4668308)))

(assert (=> bs!1077565 (= lambda!201996 lambda!201870)))

(declare-fun bs!1077566 () Bool)

(assert (= bs!1077566 (and d!1484470 d!1484418)))

(assert (=> bs!1077566 (= lambda!201996 lambda!201987)))

(declare-fun lt!1830420 () ListMap!4621)

(assert (=> d!1484470 (invariantList!1326 (toList!5281 lt!1830420))))

(declare-fun e!2913413 () ListMap!4621)

(assert (=> d!1484470 (= lt!1830420 e!2913413)))

(declare-fun c!799330 () Bool)

(assert (=> d!1484470 (= c!799330 ((_ is Cons!51997) (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)))))

(assert (=> d!1484470 (forall!11095 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997) lambda!201996)))

(assert (=> d!1484470 (= (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)) lt!1830420)))

(declare-fun b!4668672 () Bool)

(assert (=> b!4668672 (= e!2913413 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997))) (extractMap!1732 (t!359253 (Cons!51997 (tuple2!53153 hash!414 newBucket!224) Nil!51997)))))))

(declare-fun b!4668673 () Bool)

(assert (=> b!4668673 (= e!2913413 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484470 c!799330) b!4668672))

(assert (= (and d!1484470 (not c!799330)) b!4668673))

(declare-fun m!5559873 () Bool)

(assert (=> d!1484470 m!5559873))

(declare-fun m!5559875 () Bool)

(assert (=> d!1484470 m!5559875))

(declare-fun m!5559877 () Bool)

(assert (=> b!4668672 m!5559877))

(assert (=> b!4668672 m!5559877))

(declare-fun m!5559879 () Bool)

(assert (=> b!4668672 m!5559879))

(assert (=> b!4668312 d!1484470))

(declare-fun d!1484472 () Bool)

(declare-fun e!2913416 () Bool)

(assert (=> d!1484472 e!2913416))

(declare-fun res!1964934 () Bool)

(assert (=> d!1484472 (=> (not res!1964934) (not e!2913416))))

(declare-fun lt!1830432 () ListMap!4621)

(assert (=> d!1484472 (= res!1964934 (contains!15195 lt!1830432 (_1!29869 lt!1829988)))))

(declare-fun lt!1830430 () List!52120)

(assert (=> d!1484472 (= lt!1830432 (ListMap!4622 lt!1830430))))

(declare-fun lt!1830431 () Unit!120660)

(declare-fun lt!1830429 () Unit!120660)

(assert (=> d!1484472 (= lt!1830431 lt!1830429)))

(assert (=> d!1484472 (= (getValueByKey!1665 lt!1830430 (_1!29869 lt!1829988)) (Some!11910 (_2!29869 lt!1829988)))))

(declare-fun lemmaContainsTupThenGetReturnValue!944 (List!52120 K!13340 V!13586) Unit!120660)

(assert (=> d!1484472 (= lt!1830429 (lemmaContainsTupThenGetReturnValue!944 lt!1830430 (_1!29869 lt!1829988) (_2!29869 lt!1829988)))))

(declare-fun insertNoDuplicatedKeys!452 (List!52120 K!13340 V!13586) List!52120)

(assert (=> d!1484472 (= lt!1830430 (insertNoDuplicatedKeys!452 (toList!5281 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997))) (_1!29869 lt!1829988) (_2!29869 lt!1829988)))))

(assert (=> d!1484472 (= (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)) lt!1829988) lt!1830432)))

(declare-fun b!4668678 () Bool)

(declare-fun res!1964935 () Bool)

(assert (=> b!4668678 (=> (not res!1964935) (not e!2913416))))

(assert (=> b!4668678 (= res!1964935 (= (getValueByKey!1665 (toList!5281 lt!1830432) (_1!29869 lt!1829988)) (Some!11910 (_2!29869 lt!1829988))))))

(declare-fun b!4668679 () Bool)

(assert (=> b!4668679 (= e!2913416 (contains!15200 (toList!5281 lt!1830432) lt!1829988))))

(assert (= (and d!1484472 res!1964934) b!4668678))

(assert (= (and b!4668678 res!1964935) b!4668679))

(declare-fun m!5559881 () Bool)

(assert (=> d!1484472 m!5559881))

(declare-fun m!5559883 () Bool)

(assert (=> d!1484472 m!5559883))

(declare-fun m!5559885 () Bool)

(assert (=> d!1484472 m!5559885))

(declare-fun m!5559887 () Bool)

(assert (=> d!1484472 m!5559887))

(declare-fun m!5559889 () Bool)

(assert (=> b!4668678 m!5559889))

(declare-fun m!5559891 () Bool)

(assert (=> b!4668679 m!5559891))

(assert (=> b!4668312 d!1484472))

(declare-fun bs!1077567 () Bool)

(declare-fun d!1484474 () Bool)

(assert (= bs!1077567 (and d!1484474 d!1484456)))

(declare-fun lambda!201997 () Int)

(assert (=> bs!1077567 (= lambda!201997 lambda!201991)))

(declare-fun bs!1077568 () Bool)

(assert (= bs!1077568 (and d!1484474 d!1484330)))

(assert (=> bs!1077568 (= lambda!201997 lambda!201922)))

(declare-fun bs!1077569 () Bool)

(assert (= bs!1077569 (and d!1484474 d!1484320)))

(assert (=> bs!1077569 (= lambda!201997 lambda!201898)))

(declare-fun bs!1077570 () Bool)

(assert (= bs!1077570 (and d!1484474 b!4668308)))

(assert (=> bs!1077570 (= lambda!201997 lambda!201870)))

(declare-fun bs!1077571 () Bool)

(assert (= bs!1077571 (and d!1484474 d!1484470)))

(assert (=> bs!1077571 (= lambda!201997 lambda!201996)))

(declare-fun bs!1077572 () Bool)

(assert (= bs!1077572 (and d!1484474 d!1484418)))

(assert (=> bs!1077572 (= lambda!201997 lambda!201987)))

(declare-fun lt!1830433 () ListMap!4621)

(assert (=> d!1484474 (invariantList!1326 (toList!5281 lt!1830433))))

(declare-fun e!2913417 () ListMap!4621)

(assert (=> d!1484474 (= lt!1830433 e!2913417)))

(declare-fun c!799331 () Bool)

(assert (=> d!1484474 (= c!799331 ((_ is Cons!51997) (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)))))

(assert (=> d!1484474 (forall!11095 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997) lambda!201997)))

(assert (=> d!1484474 (= (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)) lt!1830433)))

(declare-fun b!4668680 () Bool)

(assert (=> b!4668680 (= e!2913417 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997))) (extractMap!1732 (t!359253 (Cons!51997 (tuple2!53153 hash!414 lt!1829976) Nil!51997)))))))

(declare-fun b!4668681 () Bool)

(assert (=> b!4668681 (= e!2913417 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484474 c!799331) b!4668680))

(assert (= (and d!1484474 (not c!799331)) b!4668681))

(declare-fun m!5559893 () Bool)

(assert (=> d!1484474 m!5559893))

(declare-fun m!5559895 () Bool)

(assert (=> d!1484474 m!5559895))

(declare-fun m!5559897 () Bool)

(assert (=> b!4668680 m!5559897))

(assert (=> b!4668680 m!5559897))

(declare-fun m!5559899 () Bool)

(assert (=> b!4668680 m!5559899))

(assert (=> b!4668312 d!1484474))

(declare-fun d!1484476 () Bool)

(declare-fun res!1964936 () Bool)

(declare-fun e!2913418 () Bool)

(assert (=> d!1484476 (=> res!1964936 e!2913418)))

(assert (=> d!1484476 (= res!1964936 (not ((_ is Cons!51996) lt!1829976)))))

(assert (=> d!1484476 (= (noDuplicateKeys!1676 lt!1829976) e!2913418)))

(declare-fun b!4668682 () Bool)

(declare-fun e!2913419 () Bool)

(assert (=> b!4668682 (= e!2913418 e!2913419)))

(declare-fun res!1964937 () Bool)

(assert (=> b!4668682 (=> (not res!1964937) (not e!2913419))))

(assert (=> b!4668682 (= res!1964937 (not (containsKey!2810 (t!359252 lt!1829976) (_1!29869 (h!58168 lt!1829976)))))))

(declare-fun b!4668683 () Bool)

(assert (=> b!4668683 (= e!2913419 (noDuplicateKeys!1676 (t!359252 lt!1829976)))))

(assert (= (and d!1484476 (not res!1964936)) b!4668682))

(assert (= (and b!4668682 res!1964937) b!4668683))

(declare-fun m!5559901 () Bool)

(assert (=> b!4668682 m!5559901))

(declare-fun m!5559903 () Bool)

(assert (=> b!4668683 m!5559903))

(assert (=> b!4668301 d!1484476))

(declare-fun b!4668686 () Bool)

(declare-fun e!2913420 () List!52120)

(assert (=> b!4668686 (= e!2913420 (Cons!51996 (h!58168 (t!359252 oldBucket!40)) (removePairForKey!1299 (t!359252 (t!359252 oldBucket!40)) key!4968)))))

(declare-fun b!4668684 () Bool)

(declare-fun e!2913421 () List!52120)

(assert (=> b!4668684 (= e!2913421 (t!359252 (t!359252 oldBucket!40)))))

(declare-fun b!4668687 () Bool)

(assert (=> b!4668687 (= e!2913420 Nil!51996)))

(declare-fun d!1484478 () Bool)

(declare-fun lt!1830434 () List!52120)

(assert (=> d!1484478 (not (containsKey!2810 lt!1830434 key!4968))))

(assert (=> d!1484478 (= lt!1830434 e!2913421)))

(declare-fun c!799333 () Bool)

(assert (=> d!1484478 (= c!799333 (and ((_ is Cons!51996) (t!359252 oldBucket!40)) (= (_1!29869 (h!58168 (t!359252 oldBucket!40))) key!4968)))))

(assert (=> d!1484478 (noDuplicateKeys!1676 (t!359252 oldBucket!40))))

(assert (=> d!1484478 (= (removePairForKey!1299 (t!359252 oldBucket!40) key!4968) lt!1830434)))

(declare-fun b!4668685 () Bool)

(assert (=> b!4668685 (= e!2913421 e!2913420)))

(declare-fun c!799332 () Bool)

(assert (=> b!4668685 (= c!799332 ((_ is Cons!51996) (t!359252 oldBucket!40)))))

(assert (= (and d!1484478 c!799333) b!4668684))

(assert (= (and d!1484478 (not c!799333)) b!4668685))

(assert (= (and b!4668685 c!799332) b!4668686))

(assert (= (and b!4668685 (not c!799332)) b!4668687))

(declare-fun m!5559905 () Bool)

(assert (=> b!4668686 m!5559905))

(declare-fun m!5559907 () Bool)

(assert (=> d!1484478 m!5559907))

(assert (=> d!1484478 m!5559197))

(assert (=> b!4668310 d!1484478))

(declare-fun bs!1077573 () Bool)

(declare-fun d!1484480 () Bool)

(assert (= bs!1077573 (and d!1484480 b!4668568)))

(declare-fun lambda!201998 () Int)

(assert (=> bs!1077573 (not (= lambda!201998 lambda!201975))))

(declare-fun bs!1077574 () Bool)

(assert (= bs!1077574 (and d!1484480 b!4668567)))

(assert (=> bs!1077574 (not (= lambda!201998 lambda!201976))))

(assert (=> bs!1077574 (not (= lambda!201998 lambda!201977))))

(declare-fun bs!1077575 () Bool)

(assert (= bs!1077575 (and d!1484480 d!1484364)))

(assert (=> bs!1077575 (not (= lambda!201998 lambda!201978))))

(declare-fun bs!1077576 () Bool)

(assert (= bs!1077576 (and d!1484480 d!1484466)))

(assert (=> bs!1077576 (= lambda!201998 lambda!201995)))

(declare-fun bs!1077577 () Bool)

(assert (= bs!1077577 (and d!1484480 d!1484458)))

(assert (=> bs!1077577 (= lambda!201998 lambda!201994)))

(assert (=> d!1484480 true))

(assert (=> d!1484480 true))

(assert (=> d!1484480 (= (allKeysSameHash!1530 oldBucket!40 hash!414 hashF!1389) (forall!11096 oldBucket!40 lambda!201998))))

(declare-fun bs!1077578 () Bool)

(assert (= bs!1077578 d!1484480))

(declare-fun m!5559909 () Bool)

(assert (=> bs!1077578 m!5559909))

(assert (=> b!4668299 d!1484480))

(declare-fun bs!1077579 () Bool)

(declare-fun d!1484482 () Bool)

(assert (= bs!1077579 (and d!1484482 d!1484480)))

(declare-fun lambda!201999 () Int)

(assert (=> bs!1077579 (= lambda!201999 lambda!201998)))

(declare-fun bs!1077580 () Bool)

(assert (= bs!1077580 (and d!1484482 b!4668568)))

(assert (=> bs!1077580 (not (= lambda!201999 lambda!201975))))

(declare-fun bs!1077581 () Bool)

(assert (= bs!1077581 (and d!1484482 b!4668567)))

(assert (=> bs!1077581 (not (= lambda!201999 lambda!201976))))

(assert (=> bs!1077581 (not (= lambda!201999 lambda!201977))))

(declare-fun bs!1077582 () Bool)

(assert (= bs!1077582 (and d!1484482 d!1484364)))

(assert (=> bs!1077582 (not (= lambda!201999 lambda!201978))))

(declare-fun bs!1077583 () Bool)

(assert (= bs!1077583 (and d!1484482 d!1484466)))

(assert (=> bs!1077583 (= lambda!201999 lambda!201995)))

(declare-fun bs!1077584 () Bool)

(assert (= bs!1077584 (and d!1484482 d!1484458)))

(assert (=> bs!1077584 (= lambda!201999 lambda!201994)))

(assert (=> d!1484482 true))

(assert (=> d!1484482 true))

(assert (=> d!1484482 (= (allKeysSameHash!1530 (t!359252 oldBucket!40) hash!414 hashF!1389) (forall!11096 (t!359252 oldBucket!40) lambda!201999))))

(declare-fun bs!1077585 () Bool)

(assert (= bs!1077585 d!1484482))

(declare-fun m!5559911 () Bool)

(assert (=> bs!1077585 m!5559911))

(assert (=> b!4668300 d!1484482))

(declare-fun d!1484484 () Bool)

(assert (=> d!1484484 (= (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829988 lt!1829976) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1829988)) (= (content!9055 (toList!5281 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829988 lt!1829976) (ListMap!4622 Nil!51996)))) (content!9055 (toList!5281 (+!2016 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1829988)))))))

(declare-fun bs!1077586 () Bool)

(assert (= bs!1077586 d!1484484))

(declare-fun m!5559913 () Bool)

(assert (=> bs!1077586 m!5559913))

(declare-fun m!5559915 () Bool)

(assert (=> bs!1077586 m!5559915))

(assert (=> b!4668298 d!1484484))

(declare-fun bs!1077587 () Bool)

(declare-fun b!4668691 () Bool)

(assert (= bs!1077587 (and b!4668691 d!1484480)))

(declare-fun lambda!202000 () Int)

(assert (=> bs!1077587 (not (= lambda!202000 lambda!201998))))

(declare-fun bs!1077588 () Bool)

(assert (= bs!1077588 (and b!4668691 b!4668568)))

(assert (=> bs!1077588 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202000 lambda!201975))))

(declare-fun bs!1077589 () Bool)

(assert (= bs!1077589 (and b!4668691 d!1484482)))

(assert (=> bs!1077589 (not (= lambda!202000 lambda!201999))))

(declare-fun bs!1077590 () Bool)

(assert (= bs!1077590 (and b!4668691 b!4668567)))

(assert (=> bs!1077590 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202000 lambda!201976))))

(assert (=> bs!1077590 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202000 lambda!201977))))

(declare-fun bs!1077591 () Bool)

(assert (= bs!1077591 (and b!4668691 d!1484364)))

(assert (=> bs!1077591 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202000 lambda!201978))))

(declare-fun bs!1077592 () Bool)

(assert (= bs!1077592 (and b!4668691 d!1484466)))

(assert (=> bs!1077592 (not (= lambda!202000 lambda!201995))))

(declare-fun bs!1077593 () Bool)

(assert (= bs!1077593 (and b!4668691 d!1484458)))

(assert (=> bs!1077593 (not (= lambda!202000 lambda!201994))))

(assert (=> b!4668691 true))

(declare-fun bs!1077594 () Bool)

(declare-fun b!4668690 () Bool)

(assert (= bs!1077594 (and b!4668690 d!1484480)))

(declare-fun lambda!202001 () Int)

(assert (=> bs!1077594 (not (= lambda!202001 lambda!201998))))

(declare-fun bs!1077595 () Bool)

(assert (= bs!1077595 (and b!4668690 b!4668568)))

(assert (=> bs!1077595 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202001 lambda!201975))))

(declare-fun bs!1077596 () Bool)

(assert (= bs!1077596 (and b!4668690 d!1484482)))

(assert (=> bs!1077596 (not (= lambda!202001 lambda!201999))))

(declare-fun bs!1077597 () Bool)

(assert (= bs!1077597 (and b!4668690 b!4668567)))

(assert (=> bs!1077597 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202001 lambda!201976))))

(assert (=> bs!1077597 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202001 lambda!201977))))

(declare-fun bs!1077598 () Bool)

(assert (= bs!1077598 (and b!4668690 d!1484364)))

(assert (=> bs!1077598 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202001 lambda!201978))))

(declare-fun bs!1077599 () Bool)

(assert (= bs!1077599 (and b!4668690 b!4668691)))

(assert (=> bs!1077599 (= lambda!202001 lambda!202000)))

(declare-fun bs!1077600 () Bool)

(assert (= bs!1077600 (and b!4668690 d!1484466)))

(assert (=> bs!1077600 (not (= lambda!202001 lambda!201995))))

(declare-fun bs!1077601 () Bool)

(assert (= bs!1077601 (and b!4668690 d!1484458)))

(assert (=> bs!1077601 (not (= lambda!202001 lambda!201994))))

(assert (=> b!4668690 true))

(declare-fun lambda!202002 () Int)

(assert (=> bs!1077594 (not (= lambda!202002 lambda!201998))))

(declare-fun lt!1830439 () ListMap!4621)

(assert (=> bs!1077595 (= (= lt!1830439 lt!1829979) (= lambda!202002 lambda!201975))))

(assert (=> bs!1077596 (not (= lambda!202002 lambda!201999))))

(assert (=> bs!1077597 (= (= lt!1830439 lt!1829979) (= lambda!202002 lambda!201976))))

(assert (=> bs!1077597 (= (= lt!1830439 lt!1830338) (= lambda!202002 lambda!201977))))

(assert (=> bs!1077598 (= (= lt!1830439 lt!1830346) (= lambda!202002 lambda!201978))))

(assert (=> bs!1077599 (= (= lt!1830439 (ListMap!4622 Nil!51996)) (= lambda!202002 lambda!202000))))

(assert (=> bs!1077600 (not (= lambda!202002 lambda!201995))))

(assert (=> b!4668690 (= (= lt!1830439 (ListMap!4622 Nil!51996)) (= lambda!202002 lambda!202001))))

(assert (=> bs!1077601 (not (= lambda!202002 lambda!201994))))

(assert (=> b!4668690 true))

(declare-fun bs!1077602 () Bool)

(declare-fun d!1484486 () Bool)

(assert (= bs!1077602 (and d!1484486 b!4668690)))

(declare-fun lambda!202003 () Int)

(declare-fun lt!1830447 () ListMap!4621)

(assert (=> bs!1077602 (= (= lt!1830447 lt!1830439) (= lambda!202003 lambda!202002))))

(declare-fun bs!1077603 () Bool)

(assert (= bs!1077603 (and d!1484486 d!1484480)))

(assert (=> bs!1077603 (not (= lambda!202003 lambda!201998))))

(declare-fun bs!1077604 () Bool)

(assert (= bs!1077604 (and d!1484486 b!4668568)))

(assert (=> bs!1077604 (= (= lt!1830447 lt!1829979) (= lambda!202003 lambda!201975))))

(declare-fun bs!1077605 () Bool)

(assert (= bs!1077605 (and d!1484486 d!1484482)))

(assert (=> bs!1077605 (not (= lambda!202003 lambda!201999))))

(declare-fun bs!1077606 () Bool)

(assert (= bs!1077606 (and d!1484486 b!4668567)))

(assert (=> bs!1077606 (= (= lt!1830447 lt!1829979) (= lambda!202003 lambda!201976))))

(assert (=> bs!1077606 (= (= lt!1830447 lt!1830338) (= lambda!202003 lambda!201977))))

(declare-fun bs!1077607 () Bool)

(assert (= bs!1077607 (and d!1484486 d!1484364)))

(assert (=> bs!1077607 (= (= lt!1830447 lt!1830346) (= lambda!202003 lambda!201978))))

(declare-fun bs!1077608 () Bool)

(assert (= bs!1077608 (and d!1484486 b!4668691)))

(assert (=> bs!1077608 (= (= lt!1830447 (ListMap!4622 Nil!51996)) (= lambda!202003 lambda!202000))))

(declare-fun bs!1077609 () Bool)

(assert (= bs!1077609 (and d!1484486 d!1484466)))

(assert (=> bs!1077609 (not (= lambda!202003 lambda!201995))))

(assert (=> bs!1077602 (= (= lt!1830447 (ListMap!4622 Nil!51996)) (= lambda!202003 lambda!202001))))

(declare-fun bs!1077610 () Bool)

(assert (= bs!1077610 (and d!1484486 d!1484458)))

(assert (=> bs!1077610 (not (= lambda!202003 lambda!201994))))

(assert (=> d!1484486 true))

(declare-fun e!2913422 () Bool)

(assert (=> d!1484486 e!2913422))

(declare-fun res!1964939 () Bool)

(assert (=> d!1484486 (=> (not res!1964939) (not e!2913422))))

(assert (=> d!1484486 (= res!1964939 (forall!11096 lt!1829973 lambda!202003))))

(declare-fun e!2913423 () ListMap!4621)

(assert (=> d!1484486 (= lt!1830447 e!2913423)))

(declare-fun c!799334 () Bool)

(assert (=> d!1484486 (= c!799334 ((_ is Nil!51996) lt!1829973))))

(assert (=> d!1484486 (noDuplicateKeys!1676 lt!1829973)))

(assert (=> d!1484486 (= (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1830447)))

(declare-fun lt!1830455 () ListMap!4621)

(declare-fun bm!326302 () Bool)

(declare-fun call!326307 () Bool)

(assert (=> bm!326302 (= call!326307 (forall!11096 (ite c!799334 (toList!5281 (ListMap!4622 Nil!51996)) (toList!5281 lt!1830455)) (ite c!799334 lambda!202000 lambda!202002)))))

(declare-fun b!4668688 () Bool)

(assert (=> b!4668688 (= e!2913422 (invariantList!1326 (toList!5281 lt!1830447)))))

(declare-fun bm!326303 () Bool)

(declare-fun call!326308 () Unit!120660)

(assert (=> bm!326303 (= call!326308 (lemmaContainsAllItsOwnKeys!626 (ListMap!4622 Nil!51996)))))

(declare-fun b!4668689 () Bool)

(declare-fun res!1964938 () Bool)

(assert (=> b!4668689 (=> (not res!1964938) (not e!2913422))))

(assert (=> b!4668689 (= res!1964938 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202003))))

(assert (=> b!4668690 (= e!2913423 lt!1830439)))

(assert (=> b!4668690 (= lt!1830455 (+!2016 (ListMap!4622 Nil!51996) (h!58168 lt!1829973)))))

(assert (=> b!4668690 (= lt!1830439 (addToMapMapFromBucket!1133 (t!359252 lt!1829973) (+!2016 (ListMap!4622 Nil!51996) (h!58168 lt!1829973))))))

(declare-fun lt!1830436 () Unit!120660)

(assert (=> b!4668690 (= lt!1830436 call!326308)))

(assert (=> b!4668690 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202001)))

(declare-fun lt!1830450 () Unit!120660)

(assert (=> b!4668690 (= lt!1830450 lt!1830436)))

(assert (=> b!4668690 call!326307))

(declare-fun lt!1830448 () Unit!120660)

(declare-fun Unit!120725 () Unit!120660)

(assert (=> b!4668690 (= lt!1830448 Unit!120725)))

(assert (=> b!4668690 (forall!11096 (t!359252 lt!1829973) lambda!202002)))

(declare-fun lt!1830451 () Unit!120660)

(declare-fun Unit!120726 () Unit!120660)

(assert (=> b!4668690 (= lt!1830451 Unit!120726)))

(declare-fun lt!1830446 () Unit!120660)

(declare-fun Unit!120727 () Unit!120660)

(assert (=> b!4668690 (= lt!1830446 Unit!120727)))

(declare-fun lt!1830444 () Unit!120660)

(assert (=> b!4668690 (= lt!1830444 (forallContained!3300 (toList!5281 lt!1830455) lambda!202002 (h!58168 lt!1829973)))))

(assert (=> b!4668690 (contains!15195 lt!1830455 (_1!29869 (h!58168 lt!1829973)))))

(declare-fun lt!1830445 () Unit!120660)

(declare-fun Unit!120728 () Unit!120660)

(assert (=> b!4668690 (= lt!1830445 Unit!120728)))

(assert (=> b!4668690 (contains!15195 lt!1830439 (_1!29869 (h!58168 lt!1829973)))))

(declare-fun lt!1830440 () Unit!120660)

(declare-fun Unit!120729 () Unit!120660)

(assert (=> b!4668690 (= lt!1830440 Unit!120729)))

(assert (=> b!4668690 (forall!11096 lt!1829973 lambda!202002)))

(declare-fun lt!1830443 () Unit!120660)

(declare-fun Unit!120730 () Unit!120660)

(assert (=> b!4668690 (= lt!1830443 Unit!120730)))

(assert (=> b!4668690 (forall!11096 (toList!5281 lt!1830455) lambda!202002)))

(declare-fun lt!1830441 () Unit!120660)

(declare-fun Unit!120731 () Unit!120660)

(assert (=> b!4668690 (= lt!1830441 Unit!120731)))

(declare-fun lt!1830454 () Unit!120660)

(declare-fun Unit!120732 () Unit!120660)

(assert (=> b!4668690 (= lt!1830454 Unit!120732)))

(declare-fun lt!1830452 () Unit!120660)

(assert (=> b!4668690 (= lt!1830452 (addForallContainsKeyThenBeforeAdding!625 (ListMap!4622 Nil!51996) lt!1830439 (_1!29869 (h!58168 lt!1829973)) (_2!29869 (h!58168 lt!1829973))))))

(declare-fun call!326309 () Bool)

(assert (=> b!4668690 call!326309))

(declare-fun lt!1830449 () Unit!120660)

(assert (=> b!4668690 (= lt!1830449 lt!1830452)))

(assert (=> b!4668690 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202002)))

(declare-fun lt!1830435 () Unit!120660)

(declare-fun Unit!120733 () Unit!120660)

(assert (=> b!4668690 (= lt!1830435 Unit!120733)))

(declare-fun res!1964940 () Bool)

(assert (=> b!4668690 (= res!1964940 (forall!11096 lt!1829973 lambda!202002))))

(declare-fun e!2913424 () Bool)

(assert (=> b!4668690 (=> (not res!1964940) (not e!2913424))))

(assert (=> b!4668690 e!2913424))

(declare-fun lt!1830442 () Unit!120660)

(declare-fun Unit!120734 () Unit!120660)

(assert (=> b!4668690 (= lt!1830442 Unit!120734)))

(assert (=> b!4668691 (= e!2913423 (ListMap!4622 Nil!51996))))

(declare-fun lt!1830438 () Unit!120660)

(assert (=> b!4668691 (= lt!1830438 call!326308)))

(assert (=> b!4668691 call!326307))

(declare-fun lt!1830437 () Unit!120660)

(assert (=> b!4668691 (= lt!1830437 lt!1830438)))

(assert (=> b!4668691 call!326309))

(declare-fun lt!1830453 () Unit!120660)

(declare-fun Unit!120735 () Unit!120660)

(assert (=> b!4668691 (= lt!1830453 Unit!120735)))

(declare-fun bm!326304 () Bool)

(assert (=> bm!326304 (= call!326309 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) (ite c!799334 lambda!202000 lambda!202002)))))

(declare-fun b!4668692 () Bool)

(assert (=> b!4668692 (= e!2913424 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202002))))

(assert (= (and d!1484486 c!799334) b!4668691))

(assert (= (and d!1484486 (not c!799334)) b!4668690))

(assert (= (and b!4668690 res!1964940) b!4668692))

(assert (= (or b!4668691 b!4668690) bm!326303))

(assert (= (or b!4668691 b!4668690) bm!326302))

(assert (= (or b!4668691 b!4668690) bm!326304))

(assert (= (and d!1484486 res!1964939) b!4668689))

(assert (= (and b!4668689 res!1964938) b!4668688))

(declare-fun m!5559917 () Bool)

(assert (=> b!4668692 m!5559917))

(declare-fun m!5559919 () Bool)

(assert (=> b!4668689 m!5559919))

(declare-fun m!5559921 () Bool)

(assert (=> b!4668688 m!5559921))

(declare-fun m!5559923 () Bool)

(assert (=> bm!326303 m!5559923))

(declare-fun m!5559925 () Bool)

(assert (=> bm!326304 m!5559925))

(declare-fun m!5559927 () Bool)

(assert (=> b!4668690 m!5559927))

(declare-fun m!5559929 () Bool)

(assert (=> b!4668690 m!5559929))

(declare-fun m!5559931 () Bool)

(assert (=> b!4668690 m!5559931))

(declare-fun m!5559933 () Bool)

(assert (=> b!4668690 m!5559933))

(declare-fun m!5559935 () Bool)

(assert (=> b!4668690 m!5559935))

(declare-fun m!5559937 () Bool)

(assert (=> b!4668690 m!5559937))

(declare-fun m!5559939 () Bool)

(assert (=> b!4668690 m!5559939))

(assert (=> b!4668690 m!5559935))

(declare-fun m!5559941 () Bool)

(assert (=> b!4668690 m!5559941))

(assert (=> b!4668690 m!5559917))

(assert (=> b!4668690 m!5559929))

(declare-fun m!5559943 () Bool)

(assert (=> b!4668690 m!5559943))

(declare-fun m!5559945 () Bool)

(assert (=> b!4668690 m!5559945))

(declare-fun m!5559947 () Bool)

(assert (=> d!1484486 m!5559947))

(assert (=> d!1484486 m!5559865))

(declare-fun m!5559949 () Bool)

(assert (=> bm!326302 m!5559949))

(assert (=> b!4668298 d!1484486))

(declare-fun d!1484488 () Bool)

(assert (=> d!1484488 (= (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829984 lt!1829973) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1829984)) (= (content!9055 (toList!5281 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829984 lt!1829973) (ListMap!4622 Nil!51996)))) (content!9055 (toList!5281 (+!2016 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1829984)))))))

(declare-fun bs!1077611 () Bool)

(assert (= bs!1077611 d!1484488))

(declare-fun m!5559951 () Bool)

(assert (=> bs!1077611 m!5559951))

(declare-fun m!5559953 () Bool)

(assert (=> bs!1077611 m!5559953))

(assert (=> b!4668298 d!1484488))

(declare-fun d!1484490 () Bool)

(assert (=> d!1484490 (= (head!9754 oldBucket!40) (h!58168 oldBucket!40))))

(assert (=> b!4668298 d!1484490))

(declare-fun bs!1077612 () Bool)

(declare-fun d!1484492 () Bool)

(assert (= bs!1077612 (and d!1484492 d!1484474)))

(declare-fun lambda!202004 () Int)

(assert (=> bs!1077612 (= lambda!202004 lambda!201997)))

(declare-fun bs!1077613 () Bool)

(assert (= bs!1077613 (and d!1484492 d!1484456)))

(assert (=> bs!1077613 (= lambda!202004 lambda!201991)))

(declare-fun bs!1077614 () Bool)

(assert (= bs!1077614 (and d!1484492 d!1484330)))

(assert (=> bs!1077614 (= lambda!202004 lambda!201922)))

(declare-fun bs!1077615 () Bool)

(assert (= bs!1077615 (and d!1484492 d!1484320)))

(assert (=> bs!1077615 (= lambda!202004 lambda!201898)))

(declare-fun bs!1077616 () Bool)

(assert (= bs!1077616 (and d!1484492 b!4668308)))

(assert (=> bs!1077616 (= lambda!202004 lambda!201870)))

(declare-fun bs!1077617 () Bool)

(assert (= bs!1077617 (and d!1484492 d!1484470)))

(assert (=> bs!1077617 (= lambda!202004 lambda!201996)))

(declare-fun bs!1077618 () Bool)

(assert (= bs!1077618 (and d!1484492 d!1484418)))

(assert (=> bs!1077618 (= lambda!202004 lambda!201987)))

(declare-fun lt!1830456 () ListMap!4621)

(assert (=> d!1484492 (invariantList!1326 (toList!5281 lt!1830456))))

(declare-fun e!2913425 () ListMap!4621)

(assert (=> d!1484492 (= lt!1830456 e!2913425)))

(declare-fun c!799335 () Bool)

(assert (=> d!1484492 (= c!799335 ((_ is Cons!51997) lt!1829974))))

(assert (=> d!1484492 (forall!11095 lt!1829974 lambda!202004)))

(assert (=> d!1484492 (= (extractMap!1732 lt!1829974) lt!1830456)))

(declare-fun b!4668693 () Bool)

(assert (=> b!4668693 (= e!2913425 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 lt!1829974)) (extractMap!1732 (t!359253 lt!1829974))))))

(declare-fun b!4668694 () Bool)

(assert (=> b!4668694 (= e!2913425 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484492 c!799335) b!4668693))

(assert (= (and d!1484492 (not c!799335)) b!4668694))

(declare-fun m!5559955 () Bool)

(assert (=> d!1484492 m!5559955))

(declare-fun m!5559957 () Bool)

(assert (=> d!1484492 m!5559957))

(declare-fun m!5559959 () Bool)

(assert (=> b!4668693 m!5559959))

(assert (=> b!4668693 m!5559959))

(declare-fun m!5559961 () Bool)

(assert (=> b!4668693 m!5559961))

(assert (=> b!4668298 d!1484492))

(declare-fun d!1484494 () Bool)

(assert (=> d!1484494 (= (head!9754 newBucket!224) (h!58168 newBucket!224))))

(assert (=> b!4668298 d!1484494))

(declare-fun bs!1077619 () Bool)

(declare-fun b!4668698 () Bool)

(assert (= bs!1077619 (and b!4668698 b!4668690)))

(declare-fun lambda!202005 () Int)

(assert (=> bs!1077619 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202005 lambda!202002))))

(declare-fun bs!1077620 () Bool)

(assert (= bs!1077620 (and b!4668698 d!1484480)))

(assert (=> bs!1077620 (not (= lambda!202005 lambda!201998))))

(declare-fun bs!1077621 () Bool)

(assert (= bs!1077621 (and b!4668698 b!4668568)))

(assert (=> bs!1077621 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202005 lambda!201975))))

(declare-fun bs!1077622 () Bool)

(assert (= bs!1077622 (and b!4668698 d!1484482)))

(assert (=> bs!1077622 (not (= lambda!202005 lambda!201999))))

(declare-fun bs!1077623 () Bool)

(assert (= bs!1077623 (and b!4668698 b!4668567)))

(assert (=> bs!1077623 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202005 lambda!201976))))

(assert (=> bs!1077623 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202005 lambda!201977))))

(declare-fun bs!1077624 () Bool)

(assert (= bs!1077624 (and b!4668698 d!1484364)))

(assert (=> bs!1077624 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202005 lambda!201978))))

(declare-fun bs!1077625 () Bool)

(assert (= bs!1077625 (and b!4668698 b!4668691)))

(assert (=> bs!1077625 (= lambda!202005 lambda!202000)))

(declare-fun bs!1077626 () Bool)

(assert (= bs!1077626 (and b!4668698 d!1484466)))

(assert (=> bs!1077626 (not (= lambda!202005 lambda!201995))))

(assert (=> bs!1077619 (= lambda!202005 lambda!202001)))

(declare-fun bs!1077627 () Bool)

(assert (= bs!1077627 (and b!4668698 d!1484458)))

(assert (=> bs!1077627 (not (= lambda!202005 lambda!201994))))

(declare-fun bs!1077628 () Bool)

(assert (= bs!1077628 (and b!4668698 d!1484486)))

(assert (=> bs!1077628 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202005 lambda!202003))))

(assert (=> b!4668698 true))

(declare-fun bs!1077629 () Bool)

(declare-fun b!4668697 () Bool)

(assert (= bs!1077629 (and b!4668697 b!4668690)))

(declare-fun lambda!202006 () Int)

(assert (=> bs!1077629 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202006 lambda!202002))))

(declare-fun bs!1077630 () Bool)

(assert (= bs!1077630 (and b!4668697 d!1484480)))

(assert (=> bs!1077630 (not (= lambda!202006 lambda!201998))))

(declare-fun bs!1077631 () Bool)

(assert (= bs!1077631 (and b!4668697 b!4668568)))

(assert (=> bs!1077631 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202006 lambda!201975))))

(declare-fun bs!1077632 () Bool)

(assert (= bs!1077632 (and b!4668697 d!1484482)))

(assert (=> bs!1077632 (not (= lambda!202006 lambda!201999))))

(declare-fun bs!1077633 () Bool)

(assert (= bs!1077633 (and b!4668697 b!4668567)))

(assert (=> bs!1077633 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202006 lambda!201976))))

(assert (=> bs!1077633 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202006 lambda!201977))))

(declare-fun bs!1077634 () Bool)

(assert (= bs!1077634 (and b!4668697 d!1484364)))

(assert (=> bs!1077634 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202006 lambda!201978))))

(declare-fun bs!1077635 () Bool)

(assert (= bs!1077635 (and b!4668697 b!4668691)))

(assert (=> bs!1077635 (= lambda!202006 lambda!202000)))

(declare-fun bs!1077636 () Bool)

(assert (= bs!1077636 (and b!4668697 b!4668698)))

(assert (=> bs!1077636 (= lambda!202006 lambda!202005)))

(declare-fun bs!1077637 () Bool)

(assert (= bs!1077637 (and b!4668697 d!1484466)))

(assert (=> bs!1077637 (not (= lambda!202006 lambda!201995))))

(assert (=> bs!1077629 (= lambda!202006 lambda!202001)))

(declare-fun bs!1077638 () Bool)

(assert (= bs!1077638 (and b!4668697 d!1484458)))

(assert (=> bs!1077638 (not (= lambda!202006 lambda!201994))))

(declare-fun bs!1077639 () Bool)

(assert (= bs!1077639 (and b!4668697 d!1484486)))

(assert (=> bs!1077639 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202006 lambda!202003))))

(assert (=> b!4668697 true))

(declare-fun lambda!202007 () Int)

(declare-fun lt!1830461 () ListMap!4621)

(assert (=> bs!1077629 (= (= lt!1830461 lt!1830439) (= lambda!202007 lambda!202002))))

(assert (=> bs!1077630 (not (= lambda!202007 lambda!201998))))

(assert (=> bs!1077631 (= (= lt!1830461 lt!1829979) (= lambda!202007 lambda!201975))))

(assert (=> bs!1077632 (not (= lambda!202007 lambda!201999))))

(assert (=> bs!1077633 (= (= lt!1830461 lt!1829979) (= lambda!202007 lambda!201976))))

(assert (=> bs!1077633 (= (= lt!1830461 lt!1830338) (= lambda!202007 lambda!201977))))

(assert (=> bs!1077634 (= (= lt!1830461 lt!1830346) (= lambda!202007 lambda!201978))))

(assert (=> bs!1077635 (= (= lt!1830461 (ListMap!4622 Nil!51996)) (= lambda!202007 lambda!202000))))

(assert (=> bs!1077637 (not (= lambda!202007 lambda!201995))))

(assert (=> bs!1077629 (= (= lt!1830461 (ListMap!4622 Nil!51996)) (= lambda!202007 lambda!202001))))

(assert (=> bs!1077638 (not (= lambda!202007 lambda!201994))))

(assert (=> bs!1077639 (= (= lt!1830461 lt!1830447) (= lambda!202007 lambda!202003))))

(assert (=> b!4668697 (= (= lt!1830461 (ListMap!4622 Nil!51996)) (= lambda!202007 lambda!202006))))

(assert (=> bs!1077636 (= (= lt!1830461 (ListMap!4622 Nil!51996)) (= lambda!202007 lambda!202005))))

(assert (=> b!4668697 true))

(declare-fun bs!1077640 () Bool)

(declare-fun d!1484496 () Bool)

(assert (= bs!1077640 (and d!1484496 d!1484480)))

(declare-fun lambda!202008 () Int)

(assert (=> bs!1077640 (not (= lambda!202008 lambda!201998))))

(declare-fun bs!1077641 () Bool)

(assert (= bs!1077641 (and d!1484496 b!4668568)))

(declare-fun lt!1830469 () ListMap!4621)

(assert (=> bs!1077641 (= (= lt!1830469 lt!1829979) (= lambda!202008 lambda!201975))))

(declare-fun bs!1077642 () Bool)

(assert (= bs!1077642 (and d!1484496 d!1484482)))

(assert (=> bs!1077642 (not (= lambda!202008 lambda!201999))))

(declare-fun bs!1077643 () Bool)

(assert (= bs!1077643 (and d!1484496 b!4668567)))

(assert (=> bs!1077643 (= (= lt!1830469 lt!1829979) (= lambda!202008 lambda!201976))))

(assert (=> bs!1077643 (= (= lt!1830469 lt!1830338) (= lambda!202008 lambda!201977))))

(declare-fun bs!1077644 () Bool)

(assert (= bs!1077644 (and d!1484496 d!1484364)))

(assert (=> bs!1077644 (= (= lt!1830469 lt!1830346) (= lambda!202008 lambda!201978))))

(declare-fun bs!1077645 () Bool)

(assert (= bs!1077645 (and d!1484496 b!4668691)))

(assert (=> bs!1077645 (= (= lt!1830469 (ListMap!4622 Nil!51996)) (= lambda!202008 lambda!202000))))

(declare-fun bs!1077646 () Bool)

(assert (= bs!1077646 (and d!1484496 d!1484466)))

(assert (=> bs!1077646 (not (= lambda!202008 lambda!201995))))

(declare-fun bs!1077647 () Bool)

(assert (= bs!1077647 (and d!1484496 b!4668690)))

(assert (=> bs!1077647 (= (= lt!1830469 (ListMap!4622 Nil!51996)) (= lambda!202008 lambda!202001))))

(declare-fun bs!1077648 () Bool)

(assert (= bs!1077648 (and d!1484496 d!1484458)))

(assert (=> bs!1077648 (not (= lambda!202008 lambda!201994))))

(declare-fun bs!1077649 () Bool)

(assert (= bs!1077649 (and d!1484496 d!1484486)))

(assert (=> bs!1077649 (= (= lt!1830469 lt!1830447) (= lambda!202008 lambda!202003))))

(assert (=> bs!1077647 (= (= lt!1830469 lt!1830439) (= lambda!202008 lambda!202002))))

(declare-fun bs!1077650 () Bool)

(assert (= bs!1077650 (and d!1484496 b!4668697)))

(assert (=> bs!1077650 (= (= lt!1830469 lt!1830461) (= lambda!202008 lambda!202007))))

(assert (=> bs!1077650 (= (= lt!1830469 (ListMap!4622 Nil!51996)) (= lambda!202008 lambda!202006))))

(declare-fun bs!1077651 () Bool)

(assert (= bs!1077651 (and d!1484496 b!4668698)))

(assert (=> bs!1077651 (= (= lt!1830469 (ListMap!4622 Nil!51996)) (= lambda!202008 lambda!202005))))

(assert (=> d!1484496 true))

(declare-fun e!2913426 () Bool)

(assert (=> d!1484496 e!2913426))

(declare-fun res!1964942 () Bool)

(assert (=> d!1484496 (=> (not res!1964942) (not e!2913426))))

(assert (=> d!1484496 (= res!1964942 (forall!11096 (Cons!51996 lt!1829984 lt!1829973) lambda!202008))))

(declare-fun e!2913427 () ListMap!4621)

(assert (=> d!1484496 (= lt!1830469 e!2913427)))

(declare-fun c!799336 () Bool)

(assert (=> d!1484496 (= c!799336 ((_ is Nil!51996) (Cons!51996 lt!1829984 lt!1829973)))))

(assert (=> d!1484496 (noDuplicateKeys!1676 (Cons!51996 lt!1829984 lt!1829973))))

(assert (=> d!1484496 (= (addToMapMapFromBucket!1133 (Cons!51996 lt!1829984 lt!1829973) (ListMap!4622 Nil!51996)) lt!1830469)))

(declare-fun call!326310 () Bool)

(declare-fun lt!1830477 () ListMap!4621)

(declare-fun bm!326305 () Bool)

(assert (=> bm!326305 (= call!326310 (forall!11096 (ite c!799336 (toList!5281 (ListMap!4622 Nil!51996)) (toList!5281 lt!1830477)) (ite c!799336 lambda!202005 lambda!202007)))))

(declare-fun b!4668695 () Bool)

(assert (=> b!4668695 (= e!2913426 (invariantList!1326 (toList!5281 lt!1830469)))))

(declare-fun bm!326306 () Bool)

(declare-fun call!326311 () Unit!120660)

(assert (=> bm!326306 (= call!326311 (lemmaContainsAllItsOwnKeys!626 (ListMap!4622 Nil!51996)))))

(declare-fun b!4668696 () Bool)

(declare-fun res!1964941 () Bool)

(assert (=> b!4668696 (=> (not res!1964941) (not e!2913426))))

(assert (=> b!4668696 (= res!1964941 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202008))))

(assert (=> b!4668697 (= e!2913427 lt!1830461)))

(assert (=> b!4668697 (= lt!1830477 (+!2016 (ListMap!4622 Nil!51996) (h!58168 (Cons!51996 lt!1829984 lt!1829973))))))

(assert (=> b!4668697 (= lt!1830461 (addToMapMapFromBucket!1133 (t!359252 (Cons!51996 lt!1829984 lt!1829973)) (+!2016 (ListMap!4622 Nil!51996) (h!58168 (Cons!51996 lt!1829984 lt!1829973)))))))

(declare-fun lt!1830458 () Unit!120660)

(assert (=> b!4668697 (= lt!1830458 call!326311)))

(assert (=> b!4668697 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202006)))

(declare-fun lt!1830472 () Unit!120660)

(assert (=> b!4668697 (= lt!1830472 lt!1830458)))

(assert (=> b!4668697 call!326310))

(declare-fun lt!1830470 () Unit!120660)

(declare-fun Unit!120736 () Unit!120660)

(assert (=> b!4668697 (= lt!1830470 Unit!120736)))

(assert (=> b!4668697 (forall!11096 (t!359252 (Cons!51996 lt!1829984 lt!1829973)) lambda!202007)))

(declare-fun lt!1830473 () Unit!120660)

(declare-fun Unit!120737 () Unit!120660)

(assert (=> b!4668697 (= lt!1830473 Unit!120737)))

(declare-fun lt!1830468 () Unit!120660)

(declare-fun Unit!120738 () Unit!120660)

(assert (=> b!4668697 (= lt!1830468 Unit!120738)))

(declare-fun lt!1830466 () Unit!120660)

(assert (=> b!4668697 (= lt!1830466 (forallContained!3300 (toList!5281 lt!1830477) lambda!202007 (h!58168 (Cons!51996 lt!1829984 lt!1829973))))))

(assert (=> b!4668697 (contains!15195 lt!1830477 (_1!29869 (h!58168 (Cons!51996 lt!1829984 lt!1829973))))))

(declare-fun lt!1830467 () Unit!120660)

(declare-fun Unit!120739 () Unit!120660)

(assert (=> b!4668697 (= lt!1830467 Unit!120739)))

(assert (=> b!4668697 (contains!15195 lt!1830461 (_1!29869 (h!58168 (Cons!51996 lt!1829984 lt!1829973))))))

(declare-fun lt!1830462 () Unit!120660)

(declare-fun Unit!120740 () Unit!120660)

(assert (=> b!4668697 (= lt!1830462 Unit!120740)))

(assert (=> b!4668697 (forall!11096 (Cons!51996 lt!1829984 lt!1829973) lambda!202007)))

(declare-fun lt!1830465 () Unit!120660)

(declare-fun Unit!120741 () Unit!120660)

(assert (=> b!4668697 (= lt!1830465 Unit!120741)))

(assert (=> b!4668697 (forall!11096 (toList!5281 lt!1830477) lambda!202007)))

(declare-fun lt!1830463 () Unit!120660)

(declare-fun Unit!120742 () Unit!120660)

(assert (=> b!4668697 (= lt!1830463 Unit!120742)))

(declare-fun lt!1830476 () Unit!120660)

(declare-fun Unit!120743 () Unit!120660)

(assert (=> b!4668697 (= lt!1830476 Unit!120743)))

(declare-fun lt!1830474 () Unit!120660)

(assert (=> b!4668697 (= lt!1830474 (addForallContainsKeyThenBeforeAdding!625 (ListMap!4622 Nil!51996) lt!1830461 (_1!29869 (h!58168 (Cons!51996 lt!1829984 lt!1829973))) (_2!29869 (h!58168 (Cons!51996 lt!1829984 lt!1829973)))))))

(declare-fun call!326312 () Bool)

(assert (=> b!4668697 call!326312))

(declare-fun lt!1830471 () Unit!120660)

(assert (=> b!4668697 (= lt!1830471 lt!1830474)))

(assert (=> b!4668697 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202007)))

(declare-fun lt!1830457 () Unit!120660)

(declare-fun Unit!120744 () Unit!120660)

(assert (=> b!4668697 (= lt!1830457 Unit!120744)))

(declare-fun res!1964943 () Bool)

(assert (=> b!4668697 (= res!1964943 (forall!11096 (Cons!51996 lt!1829984 lt!1829973) lambda!202007))))

(declare-fun e!2913428 () Bool)

(assert (=> b!4668697 (=> (not res!1964943) (not e!2913428))))

(assert (=> b!4668697 e!2913428))

(declare-fun lt!1830464 () Unit!120660)

(declare-fun Unit!120745 () Unit!120660)

(assert (=> b!4668697 (= lt!1830464 Unit!120745)))

(assert (=> b!4668698 (= e!2913427 (ListMap!4622 Nil!51996))))

(declare-fun lt!1830460 () Unit!120660)

(assert (=> b!4668698 (= lt!1830460 call!326311)))

(assert (=> b!4668698 call!326310))

(declare-fun lt!1830459 () Unit!120660)

(assert (=> b!4668698 (= lt!1830459 lt!1830460)))

(assert (=> b!4668698 call!326312))

(declare-fun lt!1830475 () Unit!120660)

(declare-fun Unit!120746 () Unit!120660)

(assert (=> b!4668698 (= lt!1830475 Unit!120746)))

(declare-fun bm!326307 () Bool)

(assert (=> bm!326307 (= call!326312 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) (ite c!799336 lambda!202005 lambda!202007)))))

(declare-fun b!4668699 () Bool)

(assert (=> b!4668699 (= e!2913428 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202007))))

(assert (= (and d!1484496 c!799336) b!4668698))

(assert (= (and d!1484496 (not c!799336)) b!4668697))

(assert (= (and b!4668697 res!1964943) b!4668699))

(assert (= (or b!4668698 b!4668697) bm!326306))

(assert (= (or b!4668698 b!4668697) bm!326305))

(assert (= (or b!4668698 b!4668697) bm!326307))

(assert (= (and d!1484496 res!1964942) b!4668696))

(assert (= (and b!4668696 res!1964941) b!4668695))

(declare-fun m!5559963 () Bool)

(assert (=> b!4668699 m!5559963))

(declare-fun m!5559965 () Bool)

(assert (=> b!4668696 m!5559965))

(declare-fun m!5559967 () Bool)

(assert (=> b!4668695 m!5559967))

(assert (=> bm!326306 m!5559923))

(declare-fun m!5559969 () Bool)

(assert (=> bm!326307 m!5559969))

(declare-fun m!5559971 () Bool)

(assert (=> b!4668697 m!5559971))

(declare-fun m!5559973 () Bool)

(assert (=> b!4668697 m!5559973))

(declare-fun m!5559975 () Bool)

(assert (=> b!4668697 m!5559975))

(declare-fun m!5559977 () Bool)

(assert (=> b!4668697 m!5559977))

(declare-fun m!5559979 () Bool)

(assert (=> b!4668697 m!5559979))

(declare-fun m!5559981 () Bool)

(assert (=> b!4668697 m!5559981))

(declare-fun m!5559983 () Bool)

(assert (=> b!4668697 m!5559983))

(assert (=> b!4668697 m!5559979))

(declare-fun m!5559985 () Bool)

(assert (=> b!4668697 m!5559985))

(assert (=> b!4668697 m!5559963))

(assert (=> b!4668697 m!5559973))

(declare-fun m!5559987 () Bool)

(assert (=> b!4668697 m!5559987))

(declare-fun m!5559989 () Bool)

(assert (=> b!4668697 m!5559989))

(declare-fun m!5559991 () Bool)

(assert (=> d!1484496 m!5559991))

(declare-fun m!5559993 () Bool)

(assert (=> d!1484496 m!5559993))

(declare-fun m!5559995 () Bool)

(assert (=> bm!326305 m!5559995))

(assert (=> b!4668298 d!1484496))

(declare-fun d!1484498 () Bool)

(declare-fun e!2913429 () Bool)

(assert (=> d!1484498 e!2913429))

(declare-fun res!1964944 () Bool)

(assert (=> d!1484498 (=> (not res!1964944) (not e!2913429))))

(declare-fun lt!1830481 () ListMap!4621)

(assert (=> d!1484498 (= res!1964944 (contains!15195 lt!1830481 (_1!29869 lt!1829984)))))

(declare-fun lt!1830479 () List!52120)

(assert (=> d!1484498 (= lt!1830481 (ListMap!4622 lt!1830479))))

(declare-fun lt!1830480 () Unit!120660)

(declare-fun lt!1830478 () Unit!120660)

(assert (=> d!1484498 (= lt!1830480 lt!1830478)))

(assert (=> d!1484498 (= (getValueByKey!1665 lt!1830479 (_1!29869 lt!1829984)) (Some!11910 (_2!29869 lt!1829984)))))

(assert (=> d!1484498 (= lt!1830478 (lemmaContainsTupThenGetReturnValue!944 lt!1830479 (_1!29869 lt!1829984) (_2!29869 lt!1829984)))))

(assert (=> d!1484498 (= lt!1830479 (insertNoDuplicatedKeys!452 (toList!5281 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996))) (_1!29869 lt!1829984) (_2!29869 lt!1829984)))))

(assert (=> d!1484498 (= (+!2016 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1829984) lt!1830481)))

(declare-fun b!4668700 () Bool)

(declare-fun res!1964945 () Bool)

(assert (=> b!4668700 (=> (not res!1964945) (not e!2913429))))

(assert (=> b!4668700 (= res!1964945 (= (getValueByKey!1665 (toList!5281 lt!1830481) (_1!29869 lt!1829984)) (Some!11910 (_2!29869 lt!1829984))))))

(declare-fun b!4668701 () Bool)

(assert (=> b!4668701 (= e!2913429 (contains!15200 (toList!5281 lt!1830481) lt!1829984))))

(assert (= (and d!1484498 res!1964944) b!4668700))

(assert (= (and b!4668700 res!1964945) b!4668701))

(declare-fun m!5559997 () Bool)

(assert (=> d!1484498 m!5559997))

(declare-fun m!5559999 () Bool)

(assert (=> d!1484498 m!5559999))

(declare-fun m!5560001 () Bool)

(assert (=> d!1484498 m!5560001))

(declare-fun m!5560003 () Bool)

(assert (=> d!1484498 m!5560003))

(declare-fun m!5560005 () Bool)

(assert (=> b!4668700 m!5560005))

(declare-fun m!5560007 () Bool)

(assert (=> b!4668701 m!5560007))

(assert (=> b!4668298 d!1484498))

(declare-fun bs!1077652 () Bool)

(declare-fun d!1484500 () Bool)

(assert (= bs!1077652 (and d!1484500 d!1484474)))

(declare-fun lambda!202011 () Int)

(assert (=> bs!1077652 (= lambda!202011 lambda!201997)))

(declare-fun bs!1077653 () Bool)

(assert (= bs!1077653 (and d!1484500 d!1484456)))

(assert (=> bs!1077653 (= lambda!202011 lambda!201991)))

(declare-fun bs!1077654 () Bool)

(assert (= bs!1077654 (and d!1484500 d!1484330)))

(assert (=> bs!1077654 (= lambda!202011 lambda!201922)))

(declare-fun bs!1077655 () Bool)

(assert (= bs!1077655 (and d!1484500 d!1484320)))

(assert (=> bs!1077655 (= lambda!202011 lambda!201898)))

(declare-fun bs!1077656 () Bool)

(assert (= bs!1077656 (and d!1484500 d!1484492)))

(assert (=> bs!1077656 (= lambda!202011 lambda!202004)))

(declare-fun bs!1077657 () Bool)

(assert (= bs!1077657 (and d!1484500 b!4668308)))

(assert (=> bs!1077657 (= lambda!202011 lambda!201870)))

(declare-fun bs!1077658 () Bool)

(assert (= bs!1077658 (and d!1484500 d!1484470)))

(assert (=> bs!1077658 (= lambda!202011 lambda!201996)))

(declare-fun bs!1077659 () Bool)

(assert (= bs!1077659 (and d!1484500 d!1484418)))

(assert (=> bs!1077659 (= lambda!202011 lambda!201987)))

(assert (=> d!1484500 (contains!15195 (extractMap!1732 (toList!5282 (ListLongMap!3836 lt!1829974))) key!4968)))

(declare-fun lt!1830484 () Unit!120660)

(declare-fun choose!32273 (ListLongMap!3835 K!13340 Hashable!6073) Unit!120660)

(assert (=> d!1484500 (= lt!1830484 (choose!32273 (ListLongMap!3836 lt!1829974) key!4968 hashF!1389))))

(assert (=> d!1484500 (forall!11095 (toList!5282 (ListLongMap!3836 lt!1829974)) lambda!202011)))

(assert (=> d!1484500 (= (lemmaListContainsThenExtractedMapContains!410 (ListLongMap!3836 lt!1829974) key!4968 hashF!1389) lt!1830484)))

(declare-fun bs!1077660 () Bool)

(assert (= bs!1077660 d!1484500))

(declare-fun m!5560009 () Bool)

(assert (=> bs!1077660 m!5560009))

(assert (=> bs!1077660 m!5560009))

(declare-fun m!5560011 () Bool)

(assert (=> bs!1077660 m!5560011))

(declare-fun m!5560013 () Bool)

(assert (=> bs!1077660 m!5560013))

(declare-fun m!5560015 () Bool)

(assert (=> bs!1077660 m!5560015))

(assert (=> b!4668298 d!1484500))

(declare-fun bs!1077661 () Bool)

(declare-fun d!1484502 () Bool)

(assert (= bs!1077661 (and d!1484502 d!1484474)))

(declare-fun lambda!202012 () Int)

(assert (=> bs!1077661 (= lambda!202012 lambda!201997)))

(declare-fun bs!1077662 () Bool)

(assert (= bs!1077662 (and d!1484502 d!1484456)))

(assert (=> bs!1077662 (= lambda!202012 lambda!201991)))

(declare-fun bs!1077663 () Bool)

(assert (= bs!1077663 (and d!1484502 d!1484330)))

(assert (=> bs!1077663 (= lambda!202012 lambda!201922)))

(declare-fun bs!1077664 () Bool)

(assert (= bs!1077664 (and d!1484502 d!1484500)))

(assert (=> bs!1077664 (= lambda!202012 lambda!202011)))

(declare-fun bs!1077665 () Bool)

(assert (= bs!1077665 (and d!1484502 d!1484320)))

(assert (=> bs!1077665 (= lambda!202012 lambda!201898)))

(declare-fun bs!1077666 () Bool)

(assert (= bs!1077666 (and d!1484502 d!1484492)))

(assert (=> bs!1077666 (= lambda!202012 lambda!202004)))

(declare-fun bs!1077667 () Bool)

(assert (= bs!1077667 (and d!1484502 b!4668308)))

(assert (=> bs!1077667 (= lambda!202012 lambda!201870)))

(declare-fun bs!1077668 () Bool)

(assert (= bs!1077668 (and d!1484502 d!1484470)))

(assert (=> bs!1077668 (= lambda!202012 lambda!201996)))

(declare-fun bs!1077669 () Bool)

(assert (= bs!1077669 (and d!1484502 d!1484418)))

(assert (=> bs!1077669 (= lambda!202012 lambda!201987)))

(declare-fun lt!1830485 () ListMap!4621)

(assert (=> d!1484502 (invariantList!1326 (toList!5281 lt!1830485))))

(declare-fun e!2913430 () ListMap!4621)

(assert (=> d!1484502 (= lt!1830485 e!2913430)))

(declare-fun c!799337 () Bool)

(assert (=> d!1484502 (= c!799337 ((_ is Cons!51997) (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)))))

(assert (=> d!1484502 (forall!11095 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997) lambda!202012)))

(assert (=> d!1484502 (= (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)) lt!1830485)))

(declare-fun b!4668702 () Bool)

(assert (=> b!4668702 (= e!2913430 (addToMapMapFromBucket!1133 (_2!29870 (h!58169 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997))) (extractMap!1732 (t!359253 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)))))))

(declare-fun b!4668703 () Bool)

(assert (=> b!4668703 (= e!2913430 (ListMap!4622 Nil!51996))))

(assert (= (and d!1484502 c!799337) b!4668702))

(assert (= (and d!1484502 (not c!799337)) b!4668703))

(declare-fun m!5560017 () Bool)

(assert (=> d!1484502 m!5560017))

(declare-fun m!5560019 () Bool)

(assert (=> d!1484502 m!5560019))

(declare-fun m!5560021 () Bool)

(assert (=> b!4668702 m!5560021))

(assert (=> b!4668702 m!5560021))

(declare-fun m!5560023 () Bool)

(assert (=> b!4668702 m!5560023))

(assert (=> b!4668298 d!1484502))

(declare-fun d!1484504 () Bool)

(assert (=> d!1484504 (= (eq!931 lt!1829972 (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)) (h!58168 oldBucket!40))) (= (content!9055 (toList!5281 lt!1829972)) (content!9055 (toList!5281 (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)) (h!58168 oldBucket!40))))))))

(declare-fun bs!1077670 () Bool)

(assert (= bs!1077670 d!1484504))

(declare-fun m!5560025 () Bool)

(assert (=> bs!1077670 m!5560025))

(declare-fun m!5560027 () Bool)

(assert (=> bs!1077670 m!5560027))

(assert (=> b!4668298 d!1484504))

(declare-fun bs!1077671 () Bool)

(declare-fun b!4668707 () Bool)

(assert (= bs!1077671 (and b!4668707 b!4668568)))

(declare-fun lambda!202013 () Int)

(assert (=> bs!1077671 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202013 lambda!201975))))

(declare-fun bs!1077672 () Bool)

(assert (= bs!1077672 (and b!4668707 d!1484482)))

(assert (=> bs!1077672 (not (= lambda!202013 lambda!201999))))

(declare-fun bs!1077673 () Bool)

(assert (= bs!1077673 (and b!4668707 b!4668567)))

(assert (=> bs!1077673 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202013 lambda!201976))))

(assert (=> bs!1077673 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202013 lambda!201977))))

(declare-fun bs!1077674 () Bool)

(assert (= bs!1077674 (and b!4668707 d!1484364)))

(assert (=> bs!1077674 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202013 lambda!201978))))

(declare-fun bs!1077675 () Bool)

(assert (= bs!1077675 (and b!4668707 b!4668691)))

(assert (=> bs!1077675 (= lambda!202013 lambda!202000)))

(declare-fun bs!1077676 () Bool)

(assert (= bs!1077676 (and b!4668707 d!1484466)))

(assert (=> bs!1077676 (not (= lambda!202013 lambda!201995))))

(declare-fun bs!1077677 () Bool)

(assert (= bs!1077677 (and b!4668707 b!4668690)))

(assert (=> bs!1077677 (= lambda!202013 lambda!202001)))

(declare-fun bs!1077678 () Bool)

(assert (= bs!1077678 (and b!4668707 d!1484458)))

(assert (=> bs!1077678 (not (= lambda!202013 lambda!201994))))

(declare-fun bs!1077679 () Bool)

(assert (= bs!1077679 (and b!4668707 d!1484486)))

(assert (=> bs!1077679 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202013 lambda!202003))))

(assert (=> bs!1077677 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202013 lambda!202002))))

(declare-fun bs!1077680 () Bool)

(assert (= bs!1077680 (and b!4668707 b!4668697)))

(assert (=> bs!1077680 (= (= (ListMap!4622 Nil!51996) lt!1830461) (= lambda!202013 lambda!202007))))

(declare-fun bs!1077681 () Bool)

(assert (= bs!1077681 (and b!4668707 d!1484480)))

(assert (=> bs!1077681 (not (= lambda!202013 lambda!201998))))

(declare-fun bs!1077682 () Bool)

(assert (= bs!1077682 (and b!4668707 d!1484496)))

(assert (=> bs!1077682 (= (= (ListMap!4622 Nil!51996) lt!1830469) (= lambda!202013 lambda!202008))))

(assert (=> bs!1077680 (= lambda!202013 lambda!202006)))

(declare-fun bs!1077683 () Bool)

(assert (= bs!1077683 (and b!4668707 b!4668698)))

(assert (=> bs!1077683 (= lambda!202013 lambda!202005)))

(assert (=> b!4668707 true))

(declare-fun bs!1077684 () Bool)

(declare-fun b!4668706 () Bool)

(assert (= bs!1077684 (and b!4668706 b!4668568)))

(declare-fun lambda!202014 () Int)

(assert (=> bs!1077684 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202014 lambda!201975))))

(declare-fun bs!1077685 () Bool)

(assert (= bs!1077685 (and b!4668706 d!1484482)))

(assert (=> bs!1077685 (not (= lambda!202014 lambda!201999))))

(declare-fun bs!1077686 () Bool)

(assert (= bs!1077686 (and b!4668706 b!4668567)))

(assert (=> bs!1077686 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202014 lambda!201976))))

(assert (=> bs!1077686 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202014 lambda!201977))))

(declare-fun bs!1077687 () Bool)

(assert (= bs!1077687 (and b!4668706 b!4668707)))

(assert (=> bs!1077687 (= lambda!202014 lambda!202013)))

(declare-fun bs!1077688 () Bool)

(assert (= bs!1077688 (and b!4668706 d!1484364)))

(assert (=> bs!1077688 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202014 lambda!201978))))

(declare-fun bs!1077689 () Bool)

(assert (= bs!1077689 (and b!4668706 b!4668691)))

(assert (=> bs!1077689 (= lambda!202014 lambda!202000)))

(declare-fun bs!1077690 () Bool)

(assert (= bs!1077690 (and b!4668706 d!1484466)))

(assert (=> bs!1077690 (not (= lambda!202014 lambda!201995))))

(declare-fun bs!1077691 () Bool)

(assert (= bs!1077691 (and b!4668706 b!4668690)))

(assert (=> bs!1077691 (= lambda!202014 lambda!202001)))

(declare-fun bs!1077692 () Bool)

(assert (= bs!1077692 (and b!4668706 d!1484458)))

(assert (=> bs!1077692 (not (= lambda!202014 lambda!201994))))

(declare-fun bs!1077693 () Bool)

(assert (= bs!1077693 (and b!4668706 d!1484486)))

(assert (=> bs!1077693 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202014 lambda!202003))))

(assert (=> bs!1077691 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202014 lambda!202002))))

(declare-fun bs!1077694 () Bool)

(assert (= bs!1077694 (and b!4668706 b!4668697)))

(assert (=> bs!1077694 (= (= (ListMap!4622 Nil!51996) lt!1830461) (= lambda!202014 lambda!202007))))

(declare-fun bs!1077695 () Bool)

(assert (= bs!1077695 (and b!4668706 d!1484480)))

(assert (=> bs!1077695 (not (= lambda!202014 lambda!201998))))

(declare-fun bs!1077696 () Bool)

(assert (= bs!1077696 (and b!4668706 d!1484496)))

(assert (=> bs!1077696 (= (= (ListMap!4622 Nil!51996) lt!1830469) (= lambda!202014 lambda!202008))))

(assert (=> bs!1077694 (= lambda!202014 lambda!202006)))

(declare-fun bs!1077697 () Bool)

(assert (= bs!1077697 (and b!4668706 b!4668698)))

(assert (=> bs!1077697 (= lambda!202014 lambda!202005)))

(assert (=> b!4668706 true))

(declare-fun lt!1830490 () ListMap!4621)

(declare-fun lambda!202015 () Int)

(assert (=> b!4668706 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202014))))

(assert (=> bs!1077684 (= (= lt!1830490 lt!1829979) (= lambda!202015 lambda!201975))))

(assert (=> bs!1077685 (not (= lambda!202015 lambda!201999))))

(assert (=> bs!1077686 (= (= lt!1830490 lt!1829979) (= lambda!202015 lambda!201976))))

(assert (=> bs!1077686 (= (= lt!1830490 lt!1830338) (= lambda!202015 lambda!201977))))

(assert (=> bs!1077687 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202013))))

(assert (=> bs!1077688 (= (= lt!1830490 lt!1830346) (= lambda!202015 lambda!201978))))

(assert (=> bs!1077689 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202000))))

(assert (=> bs!1077690 (not (= lambda!202015 lambda!201995))))

(assert (=> bs!1077691 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202001))))

(assert (=> bs!1077692 (not (= lambda!202015 lambda!201994))))

(assert (=> bs!1077693 (= (= lt!1830490 lt!1830447) (= lambda!202015 lambda!202003))))

(assert (=> bs!1077691 (= (= lt!1830490 lt!1830439) (= lambda!202015 lambda!202002))))

(assert (=> bs!1077694 (= (= lt!1830490 lt!1830461) (= lambda!202015 lambda!202007))))

(assert (=> bs!1077695 (not (= lambda!202015 lambda!201998))))

(assert (=> bs!1077696 (= (= lt!1830490 lt!1830469) (= lambda!202015 lambda!202008))))

(assert (=> bs!1077694 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202006))))

(assert (=> bs!1077697 (= (= lt!1830490 (ListMap!4622 Nil!51996)) (= lambda!202015 lambda!202005))))

(assert (=> b!4668706 true))

(declare-fun bs!1077698 () Bool)

(declare-fun d!1484506 () Bool)

(assert (= bs!1077698 (and d!1484506 b!4668706)))

(declare-fun lt!1830498 () ListMap!4621)

(declare-fun lambda!202016 () Int)

(assert (=> bs!1077698 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202014))))

(declare-fun bs!1077699 () Bool)

(assert (= bs!1077699 (and d!1484506 b!4668568)))

(assert (=> bs!1077699 (= (= lt!1830498 lt!1829979) (= lambda!202016 lambda!201975))))

(declare-fun bs!1077700 () Bool)

(assert (= bs!1077700 (and d!1484506 d!1484482)))

(assert (=> bs!1077700 (not (= lambda!202016 lambda!201999))))

(declare-fun bs!1077701 () Bool)

(assert (= bs!1077701 (and d!1484506 b!4668567)))

(assert (=> bs!1077701 (= (= lt!1830498 lt!1829979) (= lambda!202016 lambda!201976))))

(assert (=> bs!1077701 (= (= lt!1830498 lt!1830338) (= lambda!202016 lambda!201977))))

(declare-fun bs!1077702 () Bool)

(assert (= bs!1077702 (and d!1484506 d!1484364)))

(assert (=> bs!1077702 (= (= lt!1830498 lt!1830346) (= lambda!202016 lambda!201978))))

(declare-fun bs!1077703 () Bool)

(assert (= bs!1077703 (and d!1484506 b!4668691)))

(assert (=> bs!1077703 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202000))))

(declare-fun bs!1077704 () Bool)

(assert (= bs!1077704 (and d!1484506 d!1484466)))

(assert (=> bs!1077704 (not (= lambda!202016 lambda!201995))))

(declare-fun bs!1077705 () Bool)

(assert (= bs!1077705 (and d!1484506 b!4668690)))

(assert (=> bs!1077705 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202001))))

(declare-fun bs!1077706 () Bool)

(assert (= bs!1077706 (and d!1484506 d!1484458)))

(assert (=> bs!1077706 (not (= lambda!202016 lambda!201994))))

(declare-fun bs!1077707 () Bool)

(assert (= bs!1077707 (and d!1484506 d!1484486)))

(assert (=> bs!1077707 (= (= lt!1830498 lt!1830447) (= lambda!202016 lambda!202003))))

(assert (=> bs!1077705 (= (= lt!1830498 lt!1830439) (= lambda!202016 lambda!202002))))

(declare-fun bs!1077708 () Bool)

(assert (= bs!1077708 (and d!1484506 b!4668697)))

(assert (=> bs!1077708 (= (= lt!1830498 lt!1830461) (= lambda!202016 lambda!202007))))

(declare-fun bs!1077709 () Bool)

(assert (= bs!1077709 (and d!1484506 d!1484480)))

(assert (=> bs!1077709 (not (= lambda!202016 lambda!201998))))

(declare-fun bs!1077710 () Bool)

(assert (= bs!1077710 (and d!1484506 d!1484496)))

(assert (=> bs!1077710 (= (= lt!1830498 lt!1830469) (= lambda!202016 lambda!202008))))

(assert (=> bs!1077698 (= (= lt!1830498 lt!1830490) (= lambda!202016 lambda!202015))))

(declare-fun bs!1077711 () Bool)

(assert (= bs!1077711 (and d!1484506 b!4668707)))

(assert (=> bs!1077711 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202013))))

(assert (=> bs!1077708 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202006))))

(declare-fun bs!1077712 () Bool)

(assert (= bs!1077712 (and d!1484506 b!4668698)))

(assert (=> bs!1077712 (= (= lt!1830498 (ListMap!4622 Nil!51996)) (= lambda!202016 lambda!202005))))

(assert (=> d!1484506 true))

(declare-fun e!2913431 () Bool)

(assert (=> d!1484506 e!2913431))

(declare-fun res!1964947 () Bool)

(assert (=> d!1484506 (=> (not res!1964947) (not e!2913431))))

(assert (=> d!1484506 (= res!1964947 (forall!11096 (Cons!51996 lt!1829988 lt!1829976) lambda!202016))))

(declare-fun e!2913432 () ListMap!4621)

(assert (=> d!1484506 (= lt!1830498 e!2913432)))

(declare-fun c!799338 () Bool)

(assert (=> d!1484506 (= c!799338 ((_ is Nil!51996) (Cons!51996 lt!1829988 lt!1829976)))))

(assert (=> d!1484506 (noDuplicateKeys!1676 (Cons!51996 lt!1829988 lt!1829976))))

(assert (=> d!1484506 (= (addToMapMapFromBucket!1133 (Cons!51996 lt!1829988 lt!1829976) (ListMap!4622 Nil!51996)) lt!1830498)))

(declare-fun call!326313 () Bool)

(declare-fun bm!326308 () Bool)

(declare-fun lt!1830506 () ListMap!4621)

(assert (=> bm!326308 (= call!326313 (forall!11096 (ite c!799338 (toList!5281 (ListMap!4622 Nil!51996)) (toList!5281 lt!1830506)) (ite c!799338 lambda!202013 lambda!202015)))))

(declare-fun b!4668704 () Bool)

(assert (=> b!4668704 (= e!2913431 (invariantList!1326 (toList!5281 lt!1830498)))))

(declare-fun bm!326309 () Bool)

(declare-fun call!326314 () Unit!120660)

(assert (=> bm!326309 (= call!326314 (lemmaContainsAllItsOwnKeys!626 (ListMap!4622 Nil!51996)))))

(declare-fun b!4668705 () Bool)

(declare-fun res!1964946 () Bool)

(assert (=> b!4668705 (=> (not res!1964946) (not e!2913431))))

(assert (=> b!4668705 (= res!1964946 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202016))))

(assert (=> b!4668706 (= e!2913432 lt!1830490)))

(assert (=> b!4668706 (= lt!1830506 (+!2016 (ListMap!4622 Nil!51996) (h!58168 (Cons!51996 lt!1829988 lt!1829976))))))

(assert (=> b!4668706 (= lt!1830490 (addToMapMapFromBucket!1133 (t!359252 (Cons!51996 lt!1829988 lt!1829976)) (+!2016 (ListMap!4622 Nil!51996) (h!58168 (Cons!51996 lt!1829988 lt!1829976)))))))

(declare-fun lt!1830487 () Unit!120660)

(assert (=> b!4668706 (= lt!1830487 call!326314)))

(assert (=> b!4668706 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202014)))

(declare-fun lt!1830501 () Unit!120660)

(assert (=> b!4668706 (= lt!1830501 lt!1830487)))

(assert (=> b!4668706 call!326313))

(declare-fun lt!1830499 () Unit!120660)

(declare-fun Unit!120758 () Unit!120660)

(assert (=> b!4668706 (= lt!1830499 Unit!120758)))

(assert (=> b!4668706 (forall!11096 (t!359252 (Cons!51996 lt!1829988 lt!1829976)) lambda!202015)))

(declare-fun lt!1830502 () Unit!120660)

(declare-fun Unit!120759 () Unit!120660)

(assert (=> b!4668706 (= lt!1830502 Unit!120759)))

(declare-fun lt!1830497 () Unit!120660)

(declare-fun Unit!120760 () Unit!120660)

(assert (=> b!4668706 (= lt!1830497 Unit!120760)))

(declare-fun lt!1830495 () Unit!120660)

(assert (=> b!4668706 (= lt!1830495 (forallContained!3300 (toList!5281 lt!1830506) lambda!202015 (h!58168 (Cons!51996 lt!1829988 lt!1829976))))))

(assert (=> b!4668706 (contains!15195 lt!1830506 (_1!29869 (h!58168 (Cons!51996 lt!1829988 lt!1829976))))))

(declare-fun lt!1830496 () Unit!120660)

(declare-fun Unit!120761 () Unit!120660)

(assert (=> b!4668706 (= lt!1830496 Unit!120761)))

(assert (=> b!4668706 (contains!15195 lt!1830490 (_1!29869 (h!58168 (Cons!51996 lt!1829988 lt!1829976))))))

(declare-fun lt!1830491 () Unit!120660)

(declare-fun Unit!120762 () Unit!120660)

(assert (=> b!4668706 (= lt!1830491 Unit!120762)))

(assert (=> b!4668706 (forall!11096 (Cons!51996 lt!1829988 lt!1829976) lambda!202015)))

(declare-fun lt!1830494 () Unit!120660)

(declare-fun Unit!120763 () Unit!120660)

(assert (=> b!4668706 (= lt!1830494 Unit!120763)))

(assert (=> b!4668706 (forall!11096 (toList!5281 lt!1830506) lambda!202015)))

(declare-fun lt!1830492 () Unit!120660)

(declare-fun Unit!120764 () Unit!120660)

(assert (=> b!4668706 (= lt!1830492 Unit!120764)))

(declare-fun lt!1830505 () Unit!120660)

(declare-fun Unit!120765 () Unit!120660)

(assert (=> b!4668706 (= lt!1830505 Unit!120765)))

(declare-fun lt!1830503 () Unit!120660)

(assert (=> b!4668706 (= lt!1830503 (addForallContainsKeyThenBeforeAdding!625 (ListMap!4622 Nil!51996) lt!1830490 (_1!29869 (h!58168 (Cons!51996 lt!1829988 lt!1829976))) (_2!29869 (h!58168 (Cons!51996 lt!1829988 lt!1829976)))))))

(declare-fun call!326315 () Bool)

(assert (=> b!4668706 call!326315))

(declare-fun lt!1830500 () Unit!120660)

(assert (=> b!4668706 (= lt!1830500 lt!1830503)))

(assert (=> b!4668706 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202015)))

(declare-fun lt!1830486 () Unit!120660)

(declare-fun Unit!120766 () Unit!120660)

(assert (=> b!4668706 (= lt!1830486 Unit!120766)))

(declare-fun res!1964948 () Bool)

(assert (=> b!4668706 (= res!1964948 (forall!11096 (Cons!51996 lt!1829988 lt!1829976) lambda!202015))))

(declare-fun e!2913433 () Bool)

(assert (=> b!4668706 (=> (not res!1964948) (not e!2913433))))

(assert (=> b!4668706 e!2913433))

(declare-fun lt!1830493 () Unit!120660)

(declare-fun Unit!120767 () Unit!120660)

(assert (=> b!4668706 (= lt!1830493 Unit!120767)))

(assert (=> b!4668707 (= e!2913432 (ListMap!4622 Nil!51996))))

(declare-fun lt!1830489 () Unit!120660)

(assert (=> b!4668707 (= lt!1830489 call!326314)))

(assert (=> b!4668707 call!326313))

(declare-fun lt!1830488 () Unit!120660)

(assert (=> b!4668707 (= lt!1830488 lt!1830489)))

(assert (=> b!4668707 call!326315))

(declare-fun lt!1830504 () Unit!120660)

(declare-fun Unit!120768 () Unit!120660)

(assert (=> b!4668707 (= lt!1830504 Unit!120768)))

(declare-fun bm!326310 () Bool)

(assert (=> bm!326310 (= call!326315 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) (ite c!799338 lambda!202013 lambda!202015)))))

(declare-fun b!4668708 () Bool)

(assert (=> b!4668708 (= e!2913433 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202015))))

(assert (= (and d!1484506 c!799338) b!4668707))

(assert (= (and d!1484506 (not c!799338)) b!4668706))

(assert (= (and b!4668706 res!1964948) b!4668708))

(assert (= (or b!4668707 b!4668706) bm!326309))

(assert (= (or b!4668707 b!4668706) bm!326308))

(assert (= (or b!4668707 b!4668706) bm!326310))

(assert (= (and d!1484506 res!1964947) b!4668705))

(assert (= (and b!4668705 res!1964946) b!4668704))

(declare-fun m!5560029 () Bool)

(assert (=> b!4668708 m!5560029))

(declare-fun m!5560031 () Bool)

(assert (=> b!4668705 m!5560031))

(declare-fun m!5560033 () Bool)

(assert (=> b!4668704 m!5560033))

(assert (=> bm!326309 m!5559923))

(declare-fun m!5560035 () Bool)

(assert (=> bm!326310 m!5560035))

(declare-fun m!5560037 () Bool)

(assert (=> b!4668706 m!5560037))

(declare-fun m!5560039 () Bool)

(assert (=> b!4668706 m!5560039))

(declare-fun m!5560041 () Bool)

(assert (=> b!4668706 m!5560041))

(declare-fun m!5560043 () Bool)

(assert (=> b!4668706 m!5560043))

(declare-fun m!5560045 () Bool)

(assert (=> b!4668706 m!5560045))

(declare-fun m!5560047 () Bool)

(assert (=> b!4668706 m!5560047))

(declare-fun m!5560049 () Bool)

(assert (=> b!4668706 m!5560049))

(assert (=> b!4668706 m!5560045))

(declare-fun m!5560051 () Bool)

(assert (=> b!4668706 m!5560051))

(assert (=> b!4668706 m!5560029))

(assert (=> b!4668706 m!5560039))

(declare-fun m!5560053 () Bool)

(assert (=> b!4668706 m!5560053))

(declare-fun m!5560055 () Bool)

(assert (=> b!4668706 m!5560055))

(declare-fun m!5560057 () Bool)

(assert (=> d!1484506 m!5560057))

(declare-fun m!5560059 () Bool)

(assert (=> d!1484506 m!5560059))

(declare-fun m!5560061 () Bool)

(assert (=> bm!326308 m!5560061))

(assert (=> b!4668298 d!1484506))

(declare-fun d!1484508 () Bool)

(declare-fun e!2913434 () Bool)

(assert (=> d!1484508 e!2913434))

(declare-fun res!1964949 () Bool)

(assert (=> d!1484508 (=> (not res!1964949) (not e!2913434))))

(declare-fun lt!1830510 () ListMap!4621)

(assert (=> d!1484508 (= res!1964949 (contains!15195 lt!1830510 (_1!29869 (h!58168 oldBucket!40))))))

(declare-fun lt!1830508 () List!52120)

(assert (=> d!1484508 (= lt!1830510 (ListMap!4622 lt!1830508))))

(declare-fun lt!1830509 () Unit!120660)

(declare-fun lt!1830507 () Unit!120660)

(assert (=> d!1484508 (= lt!1830509 lt!1830507)))

(assert (=> d!1484508 (= (getValueByKey!1665 lt!1830508 (_1!29869 (h!58168 oldBucket!40))) (Some!11910 (_2!29869 (h!58168 oldBucket!40))))))

(assert (=> d!1484508 (= lt!1830507 (lemmaContainsTupThenGetReturnValue!944 lt!1830508 (_1!29869 (h!58168 oldBucket!40)) (_2!29869 (h!58168 oldBucket!40))))))

(assert (=> d!1484508 (= lt!1830508 (insertNoDuplicatedKeys!452 (toList!5281 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997))) (_1!29869 (h!58168 oldBucket!40)) (_2!29869 (h!58168 oldBucket!40))))))

(assert (=> d!1484508 (= (+!2016 (extractMap!1732 (Cons!51997 (tuple2!53153 hash!414 lt!1829973) Nil!51997)) (h!58168 oldBucket!40)) lt!1830510)))

(declare-fun b!4668709 () Bool)

(declare-fun res!1964950 () Bool)

(assert (=> b!4668709 (=> (not res!1964950) (not e!2913434))))

(assert (=> b!4668709 (= res!1964950 (= (getValueByKey!1665 (toList!5281 lt!1830510) (_1!29869 (h!58168 oldBucket!40))) (Some!11910 (_2!29869 (h!58168 oldBucket!40)))))))

(declare-fun b!4668710 () Bool)

(assert (=> b!4668710 (= e!2913434 (contains!15200 (toList!5281 lt!1830510) (h!58168 oldBucket!40)))))

(assert (= (and d!1484508 res!1964949) b!4668709))

(assert (= (and b!4668709 res!1964950) b!4668710))

(declare-fun m!5560063 () Bool)

(assert (=> d!1484508 m!5560063))

(declare-fun m!5560065 () Bool)

(assert (=> d!1484508 m!5560065))

(declare-fun m!5560067 () Bool)

(assert (=> d!1484508 m!5560067))

(declare-fun m!5560069 () Bool)

(assert (=> d!1484508 m!5560069))

(declare-fun m!5560071 () Bool)

(assert (=> b!4668709 m!5560071))

(declare-fun m!5560073 () Bool)

(assert (=> b!4668710 m!5560073))

(assert (=> b!4668298 d!1484508))

(declare-fun d!1484510 () Bool)

(declare-fun e!2913435 () Bool)

(assert (=> d!1484510 e!2913435))

(declare-fun res!1964951 () Bool)

(assert (=> d!1484510 (=> (not res!1964951) (not e!2913435))))

(declare-fun lt!1830514 () ListMap!4621)

(assert (=> d!1484510 (= res!1964951 (contains!15195 lt!1830514 (_1!29869 lt!1829988)))))

(declare-fun lt!1830512 () List!52120)

(assert (=> d!1484510 (= lt!1830514 (ListMap!4622 lt!1830512))))

(declare-fun lt!1830513 () Unit!120660)

(declare-fun lt!1830511 () Unit!120660)

(assert (=> d!1484510 (= lt!1830513 lt!1830511)))

(assert (=> d!1484510 (= (getValueByKey!1665 lt!1830512 (_1!29869 lt!1829988)) (Some!11910 (_2!29869 lt!1829988)))))

(assert (=> d!1484510 (= lt!1830511 (lemmaContainsTupThenGetReturnValue!944 lt!1830512 (_1!29869 lt!1829988) (_2!29869 lt!1829988)))))

(assert (=> d!1484510 (= lt!1830512 (insertNoDuplicatedKeys!452 (toList!5281 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996))) (_1!29869 lt!1829988) (_2!29869 lt!1829988)))))

(assert (=> d!1484510 (= (+!2016 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1829988) lt!1830514)))

(declare-fun b!4668711 () Bool)

(declare-fun res!1964952 () Bool)

(assert (=> b!4668711 (=> (not res!1964952) (not e!2913435))))

(assert (=> b!4668711 (= res!1964952 (= (getValueByKey!1665 (toList!5281 lt!1830514) (_1!29869 lt!1829988)) (Some!11910 (_2!29869 lt!1829988))))))

(declare-fun b!4668712 () Bool)

(assert (=> b!4668712 (= e!2913435 (contains!15200 (toList!5281 lt!1830514) lt!1829988))))

(assert (= (and d!1484510 res!1964951) b!4668711))

(assert (= (and b!4668711 res!1964952) b!4668712))

(declare-fun m!5560075 () Bool)

(assert (=> d!1484510 m!5560075))

(declare-fun m!5560077 () Bool)

(assert (=> d!1484510 m!5560077))

(declare-fun m!5560079 () Bool)

(assert (=> d!1484510 m!5560079))

(declare-fun m!5560081 () Bool)

(assert (=> d!1484510 m!5560081))

(declare-fun m!5560083 () Bool)

(assert (=> b!4668711 m!5560083))

(declare-fun m!5560085 () Bool)

(assert (=> b!4668712 m!5560085))

(assert (=> b!4668298 d!1484510))

(declare-fun d!1484512 () Bool)

(assert (=> d!1484512 (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829988 lt!1829976) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1829988))))

(declare-fun lt!1830517 () Unit!120660)

(declare-fun choose!32274 (tuple2!53150 List!52120 ListMap!4621) Unit!120660)

(assert (=> d!1484512 (= lt!1830517 (choose!32274 lt!1829988 lt!1829976 (ListMap!4622 Nil!51996)))))

(assert (=> d!1484512 (noDuplicateKeys!1676 lt!1829976)))

(assert (=> d!1484512 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!182 lt!1829988 lt!1829976 (ListMap!4622 Nil!51996)) lt!1830517)))

(declare-fun bs!1077713 () Bool)

(assert (= bs!1077713 d!1484512))

(assert (=> bs!1077713 m!5559209))

(assert (=> bs!1077713 m!5559195))

(assert (=> bs!1077713 m!5559203))

(assert (=> bs!1077713 m!5559209))

(assert (=> bs!1077713 m!5559215))

(assert (=> bs!1077713 m!5559217))

(declare-fun m!5560087 () Bool)

(assert (=> bs!1077713 m!5560087))

(assert (=> bs!1077713 m!5559203))

(assert (=> bs!1077713 m!5559215))

(assert (=> b!4668298 d!1484512))

(declare-fun bs!1077714 () Bool)

(declare-fun b!4668716 () Bool)

(assert (= bs!1077714 (and b!4668716 b!4668706)))

(declare-fun lambda!202017 () Int)

(assert (=> bs!1077714 (= lambda!202017 lambda!202014)))

(declare-fun bs!1077715 () Bool)

(assert (= bs!1077715 (and b!4668716 b!4668568)))

(assert (=> bs!1077715 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202017 lambda!201975))))

(declare-fun bs!1077716 () Bool)

(assert (= bs!1077716 (and b!4668716 d!1484482)))

(assert (=> bs!1077716 (not (= lambda!202017 lambda!201999))))

(declare-fun bs!1077717 () Bool)

(assert (= bs!1077717 (and b!4668716 b!4668567)))

(assert (=> bs!1077717 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202017 lambda!201976))))

(assert (=> bs!1077717 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202017 lambda!201977))))

(declare-fun bs!1077718 () Bool)

(assert (= bs!1077718 (and b!4668716 d!1484364)))

(assert (=> bs!1077718 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202017 lambda!201978))))

(declare-fun bs!1077719 () Bool)

(assert (= bs!1077719 (and b!4668716 d!1484466)))

(assert (=> bs!1077719 (not (= lambda!202017 lambda!201995))))

(declare-fun bs!1077720 () Bool)

(assert (= bs!1077720 (and b!4668716 b!4668690)))

(assert (=> bs!1077720 (= lambda!202017 lambda!202001)))

(declare-fun bs!1077721 () Bool)

(assert (= bs!1077721 (and b!4668716 d!1484458)))

(assert (=> bs!1077721 (not (= lambda!202017 lambda!201994))))

(declare-fun bs!1077722 () Bool)

(assert (= bs!1077722 (and b!4668716 d!1484486)))

(assert (=> bs!1077722 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202017 lambda!202003))))

(assert (=> bs!1077720 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202017 lambda!202002))))

(declare-fun bs!1077723 () Bool)

(assert (= bs!1077723 (and b!4668716 b!4668697)))

(assert (=> bs!1077723 (= (= (ListMap!4622 Nil!51996) lt!1830461) (= lambda!202017 lambda!202007))))

(declare-fun bs!1077724 () Bool)

(assert (= bs!1077724 (and b!4668716 d!1484480)))

(assert (=> bs!1077724 (not (= lambda!202017 lambda!201998))))

(declare-fun bs!1077725 () Bool)

(assert (= bs!1077725 (and b!4668716 d!1484496)))

(assert (=> bs!1077725 (= (= (ListMap!4622 Nil!51996) lt!1830469) (= lambda!202017 lambda!202008))))

(assert (=> bs!1077714 (= (= (ListMap!4622 Nil!51996) lt!1830490) (= lambda!202017 lambda!202015))))

(declare-fun bs!1077726 () Bool)

(assert (= bs!1077726 (and b!4668716 b!4668707)))

(assert (=> bs!1077726 (= lambda!202017 lambda!202013)))

(declare-fun bs!1077727 () Bool)

(assert (= bs!1077727 (and b!4668716 d!1484506)))

(assert (=> bs!1077727 (= (= (ListMap!4622 Nil!51996) lt!1830498) (= lambda!202017 lambda!202016))))

(declare-fun bs!1077728 () Bool)

(assert (= bs!1077728 (and b!4668716 b!4668691)))

(assert (=> bs!1077728 (= lambda!202017 lambda!202000)))

(assert (=> bs!1077723 (= lambda!202017 lambda!202006)))

(declare-fun bs!1077729 () Bool)

(assert (= bs!1077729 (and b!4668716 b!4668698)))

(assert (=> bs!1077729 (= lambda!202017 lambda!202005)))

(assert (=> b!4668716 true))

(declare-fun bs!1077730 () Bool)

(declare-fun b!4668715 () Bool)

(assert (= bs!1077730 (and b!4668715 b!4668706)))

(declare-fun lambda!202018 () Int)

(assert (=> bs!1077730 (= lambda!202018 lambda!202014)))

(declare-fun bs!1077731 () Bool)

(assert (= bs!1077731 (and b!4668715 b!4668568)))

(assert (=> bs!1077731 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202018 lambda!201975))))

(declare-fun bs!1077732 () Bool)

(assert (= bs!1077732 (and b!4668715 d!1484482)))

(assert (=> bs!1077732 (not (= lambda!202018 lambda!201999))))

(declare-fun bs!1077733 () Bool)

(assert (= bs!1077733 (and b!4668715 b!4668567)))

(assert (=> bs!1077733 (= (= (ListMap!4622 Nil!51996) lt!1829979) (= lambda!202018 lambda!201976))))

(declare-fun bs!1077734 () Bool)

(assert (= bs!1077734 (and b!4668715 b!4668716)))

(assert (=> bs!1077734 (= lambda!202018 lambda!202017)))

(assert (=> bs!1077733 (= (= (ListMap!4622 Nil!51996) lt!1830338) (= lambda!202018 lambda!201977))))

(declare-fun bs!1077735 () Bool)

(assert (= bs!1077735 (and b!4668715 d!1484364)))

(assert (=> bs!1077735 (= (= (ListMap!4622 Nil!51996) lt!1830346) (= lambda!202018 lambda!201978))))

(declare-fun bs!1077736 () Bool)

(assert (= bs!1077736 (and b!4668715 d!1484466)))

(assert (=> bs!1077736 (not (= lambda!202018 lambda!201995))))

(declare-fun bs!1077737 () Bool)

(assert (= bs!1077737 (and b!4668715 b!4668690)))

(assert (=> bs!1077737 (= lambda!202018 lambda!202001)))

(declare-fun bs!1077738 () Bool)

(assert (= bs!1077738 (and b!4668715 d!1484458)))

(assert (=> bs!1077738 (not (= lambda!202018 lambda!201994))))

(declare-fun bs!1077739 () Bool)

(assert (= bs!1077739 (and b!4668715 d!1484486)))

(assert (=> bs!1077739 (= (= (ListMap!4622 Nil!51996) lt!1830447) (= lambda!202018 lambda!202003))))

(assert (=> bs!1077737 (= (= (ListMap!4622 Nil!51996) lt!1830439) (= lambda!202018 lambda!202002))))

(declare-fun bs!1077740 () Bool)

(assert (= bs!1077740 (and b!4668715 b!4668697)))

(assert (=> bs!1077740 (= (= (ListMap!4622 Nil!51996) lt!1830461) (= lambda!202018 lambda!202007))))

(declare-fun bs!1077741 () Bool)

(assert (= bs!1077741 (and b!4668715 d!1484480)))

(assert (=> bs!1077741 (not (= lambda!202018 lambda!201998))))

(declare-fun bs!1077742 () Bool)

(assert (= bs!1077742 (and b!4668715 d!1484496)))

(assert (=> bs!1077742 (= (= (ListMap!4622 Nil!51996) lt!1830469) (= lambda!202018 lambda!202008))))

(assert (=> bs!1077730 (= (= (ListMap!4622 Nil!51996) lt!1830490) (= lambda!202018 lambda!202015))))

(declare-fun bs!1077743 () Bool)

(assert (= bs!1077743 (and b!4668715 b!4668707)))

(assert (=> bs!1077743 (= lambda!202018 lambda!202013)))

(declare-fun bs!1077744 () Bool)

(assert (= bs!1077744 (and b!4668715 d!1484506)))

(assert (=> bs!1077744 (= (= (ListMap!4622 Nil!51996) lt!1830498) (= lambda!202018 lambda!202016))))

(declare-fun bs!1077745 () Bool)

(assert (= bs!1077745 (and b!4668715 b!4668691)))

(assert (=> bs!1077745 (= lambda!202018 lambda!202000)))

(assert (=> bs!1077740 (= lambda!202018 lambda!202006)))

(declare-fun bs!1077746 () Bool)

(assert (= bs!1077746 (and b!4668715 b!4668698)))

(assert (=> bs!1077746 (= lambda!202018 lambda!202005)))

(assert (=> b!4668715 true))

(declare-fun lt!1830522 () ListMap!4621)

(declare-fun lambda!202019 () Int)

(assert (=> bs!1077730 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202014))))

(assert (=> bs!1077731 (= (= lt!1830522 lt!1829979) (= lambda!202019 lambda!201975))))

(assert (=> bs!1077732 (not (= lambda!202019 lambda!201999))))

(assert (=> bs!1077733 (= (= lt!1830522 lt!1829979) (= lambda!202019 lambda!201976))))

(assert (=> bs!1077734 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202017))))

(assert (=> bs!1077733 (= (= lt!1830522 lt!1830338) (= lambda!202019 lambda!201977))))

(assert (=> b!4668715 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202018))))

(assert (=> bs!1077735 (= (= lt!1830522 lt!1830346) (= lambda!202019 lambda!201978))))

(assert (=> bs!1077736 (not (= lambda!202019 lambda!201995))))

(assert (=> bs!1077737 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202001))))

(assert (=> bs!1077738 (not (= lambda!202019 lambda!201994))))

(assert (=> bs!1077739 (= (= lt!1830522 lt!1830447) (= lambda!202019 lambda!202003))))

(assert (=> bs!1077737 (= (= lt!1830522 lt!1830439) (= lambda!202019 lambda!202002))))

(assert (=> bs!1077740 (= (= lt!1830522 lt!1830461) (= lambda!202019 lambda!202007))))

(assert (=> bs!1077741 (not (= lambda!202019 lambda!201998))))

(assert (=> bs!1077742 (= (= lt!1830522 lt!1830469) (= lambda!202019 lambda!202008))))

(assert (=> bs!1077730 (= (= lt!1830522 lt!1830490) (= lambda!202019 lambda!202015))))

(assert (=> bs!1077743 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202013))))

(assert (=> bs!1077744 (= (= lt!1830522 lt!1830498) (= lambda!202019 lambda!202016))))

(assert (=> bs!1077745 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202000))))

(assert (=> bs!1077740 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202006))))

(assert (=> bs!1077746 (= (= lt!1830522 (ListMap!4622 Nil!51996)) (= lambda!202019 lambda!202005))))

(assert (=> b!4668715 true))

(declare-fun bs!1077747 () Bool)

(declare-fun d!1484514 () Bool)

(assert (= bs!1077747 (and d!1484514 b!4668706)))

(declare-fun lt!1830530 () ListMap!4621)

(declare-fun lambda!202020 () Int)

(assert (=> bs!1077747 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202014))))

(declare-fun bs!1077748 () Bool)

(assert (= bs!1077748 (and d!1484514 b!4668568)))

(assert (=> bs!1077748 (= (= lt!1830530 lt!1829979) (= lambda!202020 lambda!201975))))

(declare-fun bs!1077749 () Bool)

(assert (= bs!1077749 (and d!1484514 d!1484482)))

(assert (=> bs!1077749 (not (= lambda!202020 lambda!201999))))

(declare-fun bs!1077750 () Bool)

(assert (= bs!1077750 (and d!1484514 b!4668567)))

(assert (=> bs!1077750 (= (= lt!1830530 lt!1829979) (= lambda!202020 lambda!201976))))

(declare-fun bs!1077751 () Bool)

(assert (= bs!1077751 (and d!1484514 b!4668715)))

(assert (=> bs!1077751 (= (= lt!1830530 lt!1830522) (= lambda!202020 lambda!202019))))

(declare-fun bs!1077752 () Bool)

(assert (= bs!1077752 (and d!1484514 b!4668716)))

(assert (=> bs!1077752 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202017))))

(assert (=> bs!1077750 (= (= lt!1830530 lt!1830338) (= lambda!202020 lambda!201977))))

(assert (=> bs!1077751 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202018))))

(declare-fun bs!1077753 () Bool)

(assert (= bs!1077753 (and d!1484514 d!1484364)))

(assert (=> bs!1077753 (= (= lt!1830530 lt!1830346) (= lambda!202020 lambda!201978))))

(declare-fun bs!1077754 () Bool)

(assert (= bs!1077754 (and d!1484514 d!1484466)))

(assert (=> bs!1077754 (not (= lambda!202020 lambda!201995))))

(declare-fun bs!1077755 () Bool)

(assert (= bs!1077755 (and d!1484514 b!4668690)))

(assert (=> bs!1077755 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202001))))

(declare-fun bs!1077756 () Bool)

(assert (= bs!1077756 (and d!1484514 d!1484458)))

(assert (=> bs!1077756 (not (= lambda!202020 lambda!201994))))

(declare-fun bs!1077757 () Bool)

(assert (= bs!1077757 (and d!1484514 d!1484486)))

(assert (=> bs!1077757 (= (= lt!1830530 lt!1830447) (= lambda!202020 lambda!202003))))

(assert (=> bs!1077755 (= (= lt!1830530 lt!1830439) (= lambda!202020 lambda!202002))))

(declare-fun bs!1077758 () Bool)

(assert (= bs!1077758 (and d!1484514 b!4668697)))

(assert (=> bs!1077758 (= (= lt!1830530 lt!1830461) (= lambda!202020 lambda!202007))))

(declare-fun bs!1077759 () Bool)

(assert (= bs!1077759 (and d!1484514 d!1484480)))

(assert (=> bs!1077759 (not (= lambda!202020 lambda!201998))))

(declare-fun bs!1077760 () Bool)

(assert (= bs!1077760 (and d!1484514 d!1484496)))

(assert (=> bs!1077760 (= (= lt!1830530 lt!1830469) (= lambda!202020 lambda!202008))))

(assert (=> bs!1077747 (= (= lt!1830530 lt!1830490) (= lambda!202020 lambda!202015))))

(declare-fun bs!1077761 () Bool)

(assert (= bs!1077761 (and d!1484514 b!4668707)))

(assert (=> bs!1077761 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202013))))

(declare-fun bs!1077762 () Bool)

(assert (= bs!1077762 (and d!1484514 d!1484506)))

(assert (=> bs!1077762 (= (= lt!1830530 lt!1830498) (= lambda!202020 lambda!202016))))

(declare-fun bs!1077763 () Bool)

(assert (= bs!1077763 (and d!1484514 b!4668691)))

(assert (=> bs!1077763 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202000))))

(assert (=> bs!1077758 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202006))))

(declare-fun bs!1077764 () Bool)

(assert (= bs!1077764 (and d!1484514 b!4668698)))

(assert (=> bs!1077764 (= (= lt!1830530 (ListMap!4622 Nil!51996)) (= lambda!202020 lambda!202005))))

(assert (=> d!1484514 true))

(declare-fun e!2913436 () Bool)

(assert (=> d!1484514 e!2913436))

(declare-fun res!1964954 () Bool)

(assert (=> d!1484514 (=> (not res!1964954) (not e!2913436))))

(assert (=> d!1484514 (= res!1964954 (forall!11096 lt!1829976 lambda!202020))))

(declare-fun e!2913437 () ListMap!4621)

(assert (=> d!1484514 (= lt!1830530 e!2913437)))

(declare-fun c!799339 () Bool)

(assert (=> d!1484514 (= c!799339 ((_ is Nil!51996) lt!1829976))))

(assert (=> d!1484514 (noDuplicateKeys!1676 lt!1829976)))

(assert (=> d!1484514 (= (addToMapMapFromBucket!1133 lt!1829976 (ListMap!4622 Nil!51996)) lt!1830530)))

(declare-fun call!326316 () Bool)

(declare-fun bm!326311 () Bool)

(declare-fun lt!1830538 () ListMap!4621)

(assert (=> bm!326311 (= call!326316 (forall!11096 (ite c!799339 (toList!5281 (ListMap!4622 Nil!51996)) (toList!5281 lt!1830538)) (ite c!799339 lambda!202017 lambda!202019)))))

(declare-fun b!4668713 () Bool)

(assert (=> b!4668713 (= e!2913436 (invariantList!1326 (toList!5281 lt!1830530)))))

(declare-fun bm!326312 () Bool)

(declare-fun call!326317 () Unit!120660)

(assert (=> bm!326312 (= call!326317 (lemmaContainsAllItsOwnKeys!626 (ListMap!4622 Nil!51996)))))

(declare-fun b!4668714 () Bool)

(declare-fun res!1964953 () Bool)

(assert (=> b!4668714 (=> (not res!1964953) (not e!2913436))))

(assert (=> b!4668714 (= res!1964953 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202020))))

(assert (=> b!4668715 (= e!2913437 lt!1830522)))

(assert (=> b!4668715 (= lt!1830538 (+!2016 (ListMap!4622 Nil!51996) (h!58168 lt!1829976)))))

(assert (=> b!4668715 (= lt!1830522 (addToMapMapFromBucket!1133 (t!359252 lt!1829976) (+!2016 (ListMap!4622 Nil!51996) (h!58168 lt!1829976))))))

(declare-fun lt!1830519 () Unit!120660)

(assert (=> b!4668715 (= lt!1830519 call!326317)))

(assert (=> b!4668715 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202018)))

(declare-fun lt!1830533 () Unit!120660)

(assert (=> b!4668715 (= lt!1830533 lt!1830519)))

(assert (=> b!4668715 call!326316))

(declare-fun lt!1830531 () Unit!120660)

(declare-fun Unit!120769 () Unit!120660)

(assert (=> b!4668715 (= lt!1830531 Unit!120769)))

(assert (=> b!4668715 (forall!11096 (t!359252 lt!1829976) lambda!202019)))

(declare-fun lt!1830534 () Unit!120660)

(declare-fun Unit!120770 () Unit!120660)

(assert (=> b!4668715 (= lt!1830534 Unit!120770)))

(declare-fun lt!1830529 () Unit!120660)

(declare-fun Unit!120771 () Unit!120660)

(assert (=> b!4668715 (= lt!1830529 Unit!120771)))

(declare-fun lt!1830527 () Unit!120660)

(assert (=> b!4668715 (= lt!1830527 (forallContained!3300 (toList!5281 lt!1830538) lambda!202019 (h!58168 lt!1829976)))))

(assert (=> b!4668715 (contains!15195 lt!1830538 (_1!29869 (h!58168 lt!1829976)))))

(declare-fun lt!1830528 () Unit!120660)

(declare-fun Unit!120772 () Unit!120660)

(assert (=> b!4668715 (= lt!1830528 Unit!120772)))

(assert (=> b!4668715 (contains!15195 lt!1830522 (_1!29869 (h!58168 lt!1829976)))))

(declare-fun lt!1830523 () Unit!120660)

(declare-fun Unit!120773 () Unit!120660)

(assert (=> b!4668715 (= lt!1830523 Unit!120773)))

(assert (=> b!4668715 (forall!11096 lt!1829976 lambda!202019)))

(declare-fun lt!1830526 () Unit!120660)

(declare-fun Unit!120774 () Unit!120660)

(assert (=> b!4668715 (= lt!1830526 Unit!120774)))

(assert (=> b!4668715 (forall!11096 (toList!5281 lt!1830538) lambda!202019)))

(declare-fun lt!1830524 () Unit!120660)

(declare-fun Unit!120775 () Unit!120660)

(assert (=> b!4668715 (= lt!1830524 Unit!120775)))

(declare-fun lt!1830537 () Unit!120660)

(declare-fun Unit!120776 () Unit!120660)

(assert (=> b!4668715 (= lt!1830537 Unit!120776)))

(declare-fun lt!1830535 () Unit!120660)

(assert (=> b!4668715 (= lt!1830535 (addForallContainsKeyThenBeforeAdding!625 (ListMap!4622 Nil!51996) lt!1830522 (_1!29869 (h!58168 lt!1829976)) (_2!29869 (h!58168 lt!1829976))))))

(declare-fun call!326318 () Bool)

(assert (=> b!4668715 call!326318))

(declare-fun lt!1830532 () Unit!120660)

(assert (=> b!4668715 (= lt!1830532 lt!1830535)))

(assert (=> b!4668715 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202019)))

(declare-fun lt!1830518 () Unit!120660)

(declare-fun Unit!120777 () Unit!120660)

(assert (=> b!4668715 (= lt!1830518 Unit!120777)))

(declare-fun res!1964955 () Bool)

(assert (=> b!4668715 (= res!1964955 (forall!11096 lt!1829976 lambda!202019))))

(declare-fun e!2913438 () Bool)

(assert (=> b!4668715 (=> (not res!1964955) (not e!2913438))))

(assert (=> b!4668715 e!2913438))

(declare-fun lt!1830525 () Unit!120660)

(declare-fun Unit!120778 () Unit!120660)

(assert (=> b!4668715 (= lt!1830525 Unit!120778)))

(assert (=> b!4668716 (= e!2913437 (ListMap!4622 Nil!51996))))

(declare-fun lt!1830521 () Unit!120660)

(assert (=> b!4668716 (= lt!1830521 call!326317)))

(assert (=> b!4668716 call!326316))

(declare-fun lt!1830520 () Unit!120660)

(assert (=> b!4668716 (= lt!1830520 lt!1830521)))

(assert (=> b!4668716 call!326318))

(declare-fun lt!1830536 () Unit!120660)

(declare-fun Unit!120779 () Unit!120660)

(assert (=> b!4668716 (= lt!1830536 Unit!120779)))

(declare-fun bm!326313 () Bool)

(assert (=> bm!326313 (= call!326318 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) (ite c!799339 lambda!202017 lambda!202019)))))

(declare-fun b!4668717 () Bool)

(assert (=> b!4668717 (= e!2913438 (forall!11096 (toList!5281 (ListMap!4622 Nil!51996)) lambda!202019))))

(assert (= (and d!1484514 c!799339) b!4668716))

(assert (= (and d!1484514 (not c!799339)) b!4668715))

(assert (= (and b!4668715 res!1964955) b!4668717))

(assert (= (or b!4668716 b!4668715) bm!326312))

(assert (= (or b!4668716 b!4668715) bm!326311))

(assert (= (or b!4668716 b!4668715) bm!326313))

(assert (= (and d!1484514 res!1964954) b!4668714))

(assert (= (and b!4668714 res!1964953) b!4668713))

(declare-fun m!5560089 () Bool)

(assert (=> b!4668717 m!5560089))

(declare-fun m!5560091 () Bool)

(assert (=> b!4668714 m!5560091))

(declare-fun m!5560093 () Bool)

(assert (=> b!4668713 m!5560093))

(assert (=> bm!326312 m!5559923))

(declare-fun m!5560095 () Bool)

(assert (=> bm!326313 m!5560095))

(declare-fun m!5560097 () Bool)

(assert (=> b!4668715 m!5560097))

(declare-fun m!5560099 () Bool)

(assert (=> b!4668715 m!5560099))

(declare-fun m!5560101 () Bool)

(assert (=> b!4668715 m!5560101))

(declare-fun m!5560103 () Bool)

(assert (=> b!4668715 m!5560103))

(declare-fun m!5560105 () Bool)

(assert (=> b!4668715 m!5560105))

(declare-fun m!5560107 () Bool)

(assert (=> b!4668715 m!5560107))

(declare-fun m!5560109 () Bool)

(assert (=> b!4668715 m!5560109))

(assert (=> b!4668715 m!5560105))

(declare-fun m!5560111 () Bool)

(assert (=> b!4668715 m!5560111))

(assert (=> b!4668715 m!5560089))

(assert (=> b!4668715 m!5560099))

(declare-fun m!5560113 () Bool)

(assert (=> b!4668715 m!5560113))

(declare-fun m!5560115 () Bool)

(assert (=> b!4668715 m!5560115))

(declare-fun m!5560117 () Bool)

(assert (=> d!1484514 m!5560117))

(assert (=> d!1484514 m!5559195))

(declare-fun m!5560119 () Bool)

(assert (=> bm!326311 m!5560119))

(assert (=> b!4668298 d!1484514))

(declare-fun b!4668718 () Bool)

(declare-fun e!2913439 () List!52123)

(assert (=> b!4668718 (= e!2913439 (getKeysList!777 (toList!5281 (extractMap!1732 lt!1829974))))))

(declare-fun b!4668719 () Bool)

(declare-fun e!2913441 () Bool)

(assert (=> b!4668719 (= e!2913441 (contains!15201 (keys!18452 (extractMap!1732 lt!1829974)) key!4968))))

(declare-fun b!4668720 () Bool)

(declare-fun e!2913442 () Unit!120660)

(declare-fun e!2913443 () Unit!120660)

(assert (=> b!4668720 (= e!2913442 e!2913443)))

(declare-fun c!799340 () Bool)

(declare-fun call!326319 () Bool)

(assert (=> b!4668720 (= c!799340 call!326319)))

(declare-fun bm!326314 () Bool)

(assert (=> bm!326314 (= call!326319 (contains!15201 e!2913439 key!4968))))

(declare-fun c!799341 () Bool)

(declare-fun c!799342 () Bool)

(assert (=> bm!326314 (= c!799341 c!799342)))

(declare-fun b!4668721 () Bool)

(declare-fun e!2913440 () Bool)

(assert (=> b!4668721 (= e!2913440 e!2913441)))

(declare-fun res!1964958 () Bool)

(assert (=> b!4668721 (=> (not res!1964958) (not e!2913441))))

(assert (=> b!4668721 (= res!1964958 (isDefined!9176 (getValueByKey!1665 (toList!5281 (extractMap!1732 lt!1829974)) key!4968)))))

(declare-fun d!1484516 () Bool)

(assert (=> d!1484516 e!2913440))

(declare-fun res!1964957 () Bool)

(assert (=> d!1484516 (=> res!1964957 e!2913440)))

(declare-fun e!2913444 () Bool)

(assert (=> d!1484516 (= res!1964957 e!2913444)))

(declare-fun res!1964956 () Bool)

(assert (=> d!1484516 (=> (not res!1964956) (not e!2913444))))

(declare-fun lt!1830539 () Bool)

(assert (=> d!1484516 (= res!1964956 (not lt!1830539))))

(declare-fun lt!1830543 () Bool)

(assert (=> d!1484516 (= lt!1830539 lt!1830543)))

(declare-fun lt!1830540 () Unit!120660)

(assert (=> d!1484516 (= lt!1830540 e!2913442)))

(assert (=> d!1484516 (= c!799342 lt!1830543)))

(assert (=> d!1484516 (= lt!1830543 (containsKey!2813 (toList!5281 (extractMap!1732 lt!1829974)) key!4968))))

(assert (=> d!1484516 (= (contains!15195 (extractMap!1732 lt!1829974) key!4968) lt!1830539)))

(declare-fun b!4668722 () Bool)

(assert (=> b!4668722 false))

(declare-fun lt!1830544 () Unit!120660)

(declare-fun lt!1830542 () Unit!120660)

(assert (=> b!4668722 (= lt!1830544 lt!1830542)))

(assert (=> b!4668722 (containsKey!2813 (toList!5281 (extractMap!1732 lt!1829974)) key!4968)))

(assert (=> b!4668722 (= lt!1830542 (lemmaInGetKeysListThenContainsKey!776 (toList!5281 (extractMap!1732 lt!1829974)) key!4968))))

(declare-fun Unit!120780 () Unit!120660)

(assert (=> b!4668722 (= e!2913443 Unit!120780)))

(declare-fun b!4668723 () Bool)

(assert (=> b!4668723 (= e!2913439 (keys!18452 (extractMap!1732 lt!1829974)))))

(declare-fun b!4668724 () Bool)

(declare-fun lt!1830545 () Unit!120660)

(assert (=> b!4668724 (= e!2913442 lt!1830545)))

(declare-fun lt!1830546 () Unit!120660)

(assert (=> b!4668724 (= lt!1830546 (lemmaContainsKeyImpliesGetValueByKeyDefined!1567 (toList!5281 (extractMap!1732 lt!1829974)) key!4968))))

(assert (=> b!4668724 (isDefined!9176 (getValueByKey!1665 (toList!5281 (extractMap!1732 lt!1829974)) key!4968))))

(declare-fun lt!1830541 () Unit!120660)

(assert (=> b!4668724 (= lt!1830541 lt!1830546)))

(assert (=> b!4668724 (= lt!1830545 (lemmaInListThenGetKeysListContains!772 (toList!5281 (extractMap!1732 lt!1829974)) key!4968))))

(assert (=> b!4668724 call!326319))

(declare-fun b!4668725 () Bool)

(declare-fun Unit!120781 () Unit!120660)

(assert (=> b!4668725 (= e!2913443 Unit!120781)))

(declare-fun b!4668726 () Bool)

(assert (=> b!4668726 (= e!2913444 (not (contains!15201 (keys!18452 (extractMap!1732 lt!1829974)) key!4968)))))

(assert (= (and d!1484516 c!799342) b!4668724))

(assert (= (and d!1484516 (not c!799342)) b!4668720))

(assert (= (and b!4668720 c!799340) b!4668722))

(assert (= (and b!4668720 (not c!799340)) b!4668725))

(assert (= (or b!4668724 b!4668720) bm!326314))

(assert (= (and bm!326314 c!799341) b!4668718))

(assert (= (and bm!326314 (not c!799341)) b!4668723))

(assert (= (and d!1484516 res!1964956) b!4668726))

(assert (= (and d!1484516 (not res!1964957)) b!4668721))

(assert (= (and b!4668721 res!1964958) b!4668719))

(declare-fun m!5560121 () Bool)

(assert (=> b!4668724 m!5560121))

(declare-fun m!5560123 () Bool)

(assert (=> b!4668724 m!5560123))

(assert (=> b!4668724 m!5560123))

(declare-fun m!5560125 () Bool)

(assert (=> b!4668724 m!5560125))

(declare-fun m!5560127 () Bool)

(assert (=> b!4668724 m!5560127))

(assert (=> b!4668721 m!5560123))

(assert (=> b!4668721 m!5560123))

(assert (=> b!4668721 m!5560125))

(declare-fun m!5560129 () Bool)

(assert (=> bm!326314 m!5560129))

(assert (=> b!4668719 m!5559211))

(declare-fun m!5560131 () Bool)

(assert (=> b!4668719 m!5560131))

(assert (=> b!4668719 m!5560131))

(declare-fun m!5560133 () Bool)

(assert (=> b!4668719 m!5560133))

(declare-fun m!5560135 () Bool)

(assert (=> b!4668718 m!5560135))

(declare-fun m!5560137 () Bool)

(assert (=> d!1484516 m!5560137))

(assert (=> b!4668723 m!5559211))

(assert (=> b!4668723 m!5560131))

(assert (=> b!4668726 m!5559211))

(assert (=> b!4668726 m!5560131))

(assert (=> b!4668726 m!5560131))

(assert (=> b!4668726 m!5560133))

(assert (=> b!4668722 m!5560137))

(declare-fun m!5560139 () Bool)

(assert (=> b!4668722 m!5560139))

(assert (=> b!4668298 d!1484516))

(declare-fun d!1484518 () Bool)

(assert (=> d!1484518 (eq!931 (addToMapMapFromBucket!1133 (Cons!51996 lt!1829984 lt!1829973) (ListMap!4622 Nil!51996)) (+!2016 (addToMapMapFromBucket!1133 lt!1829973 (ListMap!4622 Nil!51996)) lt!1829984))))

(declare-fun lt!1830547 () Unit!120660)

(assert (=> d!1484518 (= lt!1830547 (choose!32274 lt!1829984 lt!1829973 (ListMap!4622 Nil!51996)))))

(assert (=> d!1484518 (noDuplicateKeys!1676 lt!1829973)))

(assert (=> d!1484518 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!182 lt!1829984 lt!1829973 (ListMap!4622 Nil!51996)) lt!1830547)))

(declare-fun bs!1077765 () Bool)

(assert (= bs!1077765 d!1484518))

(assert (=> bs!1077765 m!5559207))

(assert (=> bs!1077765 m!5559865))

(assert (=> bs!1077765 m!5559221))

(assert (=> bs!1077765 m!5559207))

(assert (=> bs!1077765 m!5559223))

(assert (=> bs!1077765 m!5559231))

(declare-fun m!5560141 () Bool)

(assert (=> bs!1077765 m!5560141))

(assert (=> bs!1077765 m!5559221))

(assert (=> bs!1077765 m!5559223))

(assert (=> b!4668298 d!1484518))

(declare-fun d!1484520 () Bool)

(declare-fun lt!1830550 () Int)

(assert (=> d!1484520 (>= lt!1830550 0)))

(declare-fun e!2913447 () Int)

(assert (=> d!1484520 (= lt!1830550 e!2913447)))

(declare-fun c!799345 () Bool)

(assert (=> d!1484520 (= c!799345 ((_ is Nil!51996) (t!359252 oldBucket!40)))))

(assert (=> d!1484520 (= (size!35978 (t!359252 oldBucket!40)) lt!1830550)))

(declare-fun b!4668731 () Bool)

(assert (=> b!4668731 (= e!2913447 0)))

(declare-fun b!4668732 () Bool)

(assert (=> b!4668732 (= e!2913447 (+ 1 (size!35978 (t!359252 (t!359252 oldBucket!40)))))))

(assert (= (and d!1484520 c!799345) b!4668731))

(assert (= (and d!1484520 (not c!799345)) b!4668732))

(declare-fun m!5560143 () Bool)

(assert (=> b!4668732 m!5560143))

(assert (=> b!4668309 d!1484520))

(declare-fun d!1484522 () Bool)

(declare-fun lt!1830551 () Int)

(assert (=> d!1484522 (>= lt!1830551 0)))

(declare-fun e!2913448 () Int)

(assert (=> d!1484522 (= lt!1830551 e!2913448)))

(declare-fun c!799346 () Bool)

(assert (=> d!1484522 (= c!799346 ((_ is Nil!51996) oldBucket!40))))

(assert (=> d!1484522 (= (size!35978 oldBucket!40) lt!1830551)))

(declare-fun b!4668733 () Bool)

(assert (=> b!4668733 (= e!2913448 0)))

(declare-fun b!4668734 () Bool)

(assert (=> b!4668734 (= e!2913448 (+ 1 (size!35978 (t!359252 oldBucket!40))))))

(assert (= (and d!1484522 c!799346) b!4668733))

(assert (= (and d!1484522 (not c!799346)) b!4668734))

(assert (=> b!4668734 m!5559249))

(assert (=> b!4668309 d!1484522))

(declare-fun e!2913451 () Bool)

(declare-fun tp!1343678 () Bool)

(declare-fun b!4668739 () Bool)

(assert (=> b!4668739 (= e!2913451 (and tp_is_empty!29997 tp_is_empty!29999 tp!1343678))))

(assert (=> b!4668307 (= tp!1343671 e!2913451)))

(assert (= (and b!4668307 ((_ is Cons!51996) (t!359252 newBucket!224))) b!4668739))

(declare-fun e!2913452 () Bool)

(declare-fun tp!1343679 () Bool)

(declare-fun b!4668740 () Bool)

(assert (=> b!4668740 (= e!2913452 (and tp_is_empty!29997 tp_is_empty!29999 tp!1343679))))

(assert (=> b!4668294 (= tp!1343670 e!2913452)))

(assert (= (and b!4668294 ((_ is Cons!51996) (t!359252 oldBucket!40))) b!4668740))

(declare-fun b_lambda!176239 () Bool)

(assert (= b_lambda!176233 (or b!4668308 b_lambda!176239)))

(declare-fun bs!1077766 () Bool)

(declare-fun d!1484524 () Bool)

(assert (= bs!1077766 (and d!1484524 b!4668308)))

(assert (=> bs!1077766 (= (dynLambda!21635 lambda!201870 lt!1829978) (noDuplicateKeys!1676 (_2!29870 lt!1829978)))))

(declare-fun m!5560145 () Bool)

(assert (=> bs!1077766 m!5560145))

(assert (=> d!1484352 d!1484524))

(check-sat (not d!1484474) (not b!4668701) (not d!1484472) (not b!4668682) (not b!4668690) (not b!4668444) (not bm!326303) (not b!4668463) (not d!1484330) (not b!4668376) (not b!4668732) (not b!4668717) (not b!4668662) (not bm!326309) (not d!1484458) (not b!4668700) (not b!4668657) (not bm!326311) (not b!4668679) (not b!4668734) (not b!4668615) (not b!4668656) (not d!1484518) (not bm!326295) (not b!4668692) (not d!1484352) (not b!4668453) (not b!4668595) (not b!4668724) (not b!4668461) (not b!4668658) (not d!1484506) (not bm!326301) (not b!4668680) (not b!4668379) (not d!1484508) (not d!1484512) (not b!4668654) (not b!4668697) (not b!4668678) (not d!1484504) (not bm!326293) (not d!1484418) (not bm!326314) (not bm!326313) (not b!4668699) (not b!4668739) (not b!4668672) (not bs!1077766) (not d!1484326) (not b!4668723) (not b!4668706) (not d!1484502) (not b!4668670) (not b!4668712) (not d!1484486) (not b!4668462) (not b!4668378) (not b!4668440) (not b!4668455) (not bm!326308) (not b!4668357) (not d!1484484) (not b!4668714) (not d!1484364) (not b!4668566) (not d!1484510) (not bm!326302) (not b!4668695) (not d!1484498) (not b!4668708) (not b!4668683) (not b!4668659) (not b!4668721) (not bm!326307) (not d!1484500) (not d!1484348) (not b!4668704) tp_is_empty!29997 (not d!1484514) (not d!1484324) (not b!4668450) (not d!1484338) (not b!4668715) (not d!1484344) (not d!1484444) (not bm!326304) (not d!1484466) (not b!4668439) (not b!4668688) (not d!1484488) (not d!1484468) (not b_lambda!176239) (not b!4668696) (not d!1484456) (not b!4668686) (not b!4668565) (not b!4668653) (not b!4668702) (not b!4668719) (not bm!326306) (not d!1484482) (not d!1484320) (not b!4668407) (not b!4668377) (not b!4668569) (not b!4668726) (not b!4668622) (not b!4668621) (not d!1484516) (not b!4668711) (not d!1484478) (not b!4668405) (not b!4668356) (not b!4668437) (not bm!326305) (not b!4668689) (not b!4668710) (not d!1484356) tp_is_empty!29999 (not d!1484492) (not b!4668705) (not b!4668438) (not b!4668722) (not d!1484448) (not bm!326310) (not bm!326294) (not bm!326312) (not b!4668567) (not d!1484426) (not b!4668718) (not d!1484460) (not b!4668709) (not d!1484496) (not d!1484470) (not b!4668713) (not b!4668661) (not b!4668693) (not b!4668740) (not d!1484480) (not d!1484318))
(check-sat)
