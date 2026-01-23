; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493208 () Bool)

(assert start!493208)

(declare-fun res!2036006 () Bool)

(declare-fun e!2991357 () Bool)

(assert (=> start!493208 (=> (not res!2036006) (not e!2991357))))

(declare-datatypes ((K!15732 0))(
  ( (K!15733 (val!20891 Int)) )
))
(declare-datatypes ((V!15978 0))(
  ( (V!15979 (val!20892 Int)) )
))
(declare-datatypes ((tuple2!56756 0))(
  ( (tuple2!56757 (_1!31672 K!15732) (_2!31672 V!15978)) )
))
(declare-datatypes ((List!54287 0))(
  ( (Nil!54163) (Cons!54163 (h!60587 tuple2!56756) (t!361737 List!54287)) )
))
(declare-datatypes ((tuple2!56758 0))(
  ( (tuple2!56759 (_1!31673 (_ BitVec 64)) (_2!31673 List!54287)) )
))
(declare-datatypes ((List!54288 0))(
  ( (Nil!54164) (Cons!54164 (h!60588 tuple2!56758) (t!361738 List!54288)) )
))
(declare-datatypes ((ListLongMap!5295 0))(
  ( (ListLongMap!5296 (toList!6873 List!54288)) )
))
(declare-fun lm!2473 () ListLongMap!5295)

(declare-fun lambda!230292 () Int)

(declare-fun forall!12222 (List!54288 Int) Bool)

(assert (=> start!493208 (= res!2036006 (forall!12222 (toList!6873 lm!2473) lambda!230292))))

(assert (=> start!493208 e!2991357))

(declare-fun e!2991351 () Bool)

(declare-fun inv!69759 (ListLongMap!5295) Bool)

(assert (=> start!493208 (and (inv!69759 lm!2473) e!2991351)))

(assert (=> start!493208 true))

(declare-fun tp_is_empty!33469 () Bool)

(assert (=> start!493208 tp_is_empty!33469))

(declare-fun tp_is_empty!33471 () Bool)

(assert (=> start!493208 tp_is_empty!33471))

(declare-fun b!4790909 () Bool)

(declare-datatypes ((Unit!139844 0))(
  ( (Unit!139845) )
))
(declare-fun e!2991353 () Unit!139844)

(declare-fun Unit!139846 () Unit!139844)

(assert (=> b!4790909 (= e!2991353 Unit!139846)))

(declare-fun b!4790910 () Bool)

(declare-fun e!2991354 () Bool)

(declare-fun e!2991352 () Bool)

(assert (=> b!4790910 (= e!2991354 e!2991352)))

(declare-fun res!2036002 () Bool)

(assert (=> b!4790910 (=> res!2036002 e!2991352)))

(declare-fun lt!1950257 () ListLongMap!5295)

(declare-fun value!3111 () V!15978)

(declare-fun key!5896 () K!15732)

(declare-fun getValue!93 (List!54288 K!15732) V!15978)

(assert (=> b!4790910 (= res!2036002 (not (= (getValue!93 (toList!6873 lt!1950257) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!547 (List!54288 K!15732) Bool)

(assert (=> b!4790910 (containsKeyBiggerList!547 (toList!6873 lt!1950257) key!5896)))

(declare-datatypes ((Hashable!6897 0))(
  ( (HashableExt!6896 (__x!32920 Int)) )
))
(declare-fun hashF!1559 () Hashable!6897)

(declare-fun lt!1950256 () Unit!139844)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!287 (ListLongMap!5295 K!15732 Hashable!6897) Unit!139844)

(assert (=> b!4790910 (= lt!1950256 (lemmaInLongMapThenContainsKeyBiggerList!287 lt!1950257 key!5896 hashF!1559))))

(declare-fun e!2991356 () Bool)

(assert (=> b!4790910 e!2991356))

(declare-fun res!2036011 () Bool)

(assert (=> b!4790910 (=> (not res!2036011) (not e!2991356))))

(declare-fun lt!1950250 () Bool)

(assert (=> b!4790910 (= res!2036011 (not lt!1950250))))

(declare-fun lt!1950255 () Unit!139844)

(declare-fun lemmaInGenericMapThenInLongMap!301 (ListLongMap!5295 K!15732 Hashable!6897) Unit!139844)

(assert (=> b!4790910 (= lt!1950255 (lemmaInGenericMapThenInLongMap!301 lt!1950257 key!5896 hashF!1559))))

(declare-fun b!4790911 () Bool)

(declare-fun e!2991355 () Bool)

(assert (=> b!4790911 (= e!2991357 (not e!2991355))))

(declare-fun res!2036008 () Bool)

(assert (=> b!4790911 (=> res!2036008 e!2991355)))

(assert (=> b!4790911 (= res!2036008 (not (= (getValue!93 (toList!6873 lm!2473) key!5896) value!3111)))))

(assert (=> b!4790911 (containsKeyBiggerList!547 (toList!6873 lm!2473) key!5896)))

(declare-fun lt!1950254 () Unit!139844)

(assert (=> b!4790911 (= lt!1950254 (lemmaInLongMapThenContainsKeyBiggerList!287 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991358 () Bool)

(assert (=> b!4790911 e!2991358))

(declare-fun res!2036003 () Bool)

(assert (=> b!4790911 (=> (not res!2036003) (not e!2991358))))

(declare-fun lt!1950258 () (_ BitVec 64))

(declare-fun contains!17768 (ListLongMap!5295 (_ BitVec 64)) Bool)

(assert (=> b!4790911 (= res!2036003 (contains!17768 lm!2473 lt!1950258))))

(declare-fun hash!4927 (Hashable!6897 K!15732) (_ BitVec 64))

(assert (=> b!4790911 (= lt!1950258 (hash!4927 hashF!1559 key!5896))))

(declare-fun lt!1950259 () Unit!139844)

(assert (=> b!4790911 (= lt!1950259 (lemmaInGenericMapThenInLongMap!301 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4790912 () Bool)

(declare-datatypes ((Option!13060 0))(
  ( (None!13059) (Some!13059 (v!48338 tuple2!56756)) )
))
(declare-fun isDefined!10202 (Option!13060) Bool)

(declare-fun getPair!869 (List!54287 K!15732) Option!13060)

(declare-fun apply!12958 (ListLongMap!5295 (_ BitVec 64)) List!54287)

(assert (=> b!4790912 (= e!2991358 (isDefined!10202 (getPair!869 (apply!12958 lm!2473 lt!1950258) key!5896)))))

(declare-fun b!4790913 () Bool)

(assert (=> b!4790913 (= e!2991352 (forall!12222 (toList!6873 lt!1950257) lambda!230292))))

(declare-fun b!4790914 () Bool)

(declare-fun res!2036005 () Bool)

(assert (=> b!4790914 (=> (not res!2036005) (not e!2991357))))

(declare-fun allKeysSameHashInMap!2302 (ListLongMap!5295 Hashable!6897) Bool)

(assert (=> b!4790914 (= res!2036005 (allKeysSameHashInMap!2302 lm!2473 hashF!1559))))

(declare-fun b!4790915 () Bool)

(assert (=> b!4790915 (= e!2991355 e!2991354)))

(declare-fun res!2036004 () Bool)

(assert (=> b!4790915 (=> res!2036004 e!2991354)))

(assert (=> b!4790915 (= res!2036004 (not (forall!12222 (toList!6873 lt!1950257) lambda!230292)))))

(declare-datatypes ((ListMap!6345 0))(
  ( (ListMap!6346 (toList!6874 List!54287)) )
))
(declare-fun contains!17769 (ListMap!6345 K!15732) Bool)

(declare-fun extractMap!2424 (List!54288) ListMap!6345)

(assert (=> b!4790915 (contains!17769 (extractMap!2424 (toList!6873 lt!1950257)) key!5896)))

(declare-fun lt!1950253 () Unit!139844)

(declare-fun lemmaListContainsThenExtractedMapContains!697 (ListLongMap!5295 K!15732 Hashable!6897) Unit!139844)

(assert (=> b!4790915 (= lt!1950253 (lemmaListContainsThenExtractedMapContains!697 lt!1950257 key!5896 hashF!1559))))

(declare-fun lt!1950251 () Unit!139844)

(assert (=> b!4790915 (= lt!1950251 e!2991353)))

(declare-fun c!816594 () Bool)

(assert (=> b!4790915 (= c!816594 lt!1950250)))

(assert (=> b!4790915 (= lt!1950250 (not (contains!17768 lt!1950257 lt!1950258)))))

(declare-fun tail!9250 (ListLongMap!5295) ListLongMap!5295)

(assert (=> b!4790915 (= lt!1950257 (tail!9250 lm!2473))))

(declare-fun b!4790916 () Bool)

(declare-fun lt!1950252 () Unit!139844)

(assert (=> b!4790916 (= e!2991353 lt!1950252)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!23 (ListLongMap!5295 K!15732 Hashable!6897) Unit!139844)

(assert (=> b!4790916 (= lt!1950252 (lemmaHashNotInLongMapThenNotInGenerated!23 lt!1950257 key!5896 hashF!1559))))

(assert (=> b!4790916 (not (contains!17769 (extractMap!2424 (toList!6873 lt!1950257)) key!5896))))

(declare-fun b!4790917 () Bool)

(declare-fun tp!1357909 () Bool)

(assert (=> b!4790917 (= e!2991351 tp!1357909)))

(declare-fun b!4790918 () Bool)

(declare-fun res!2036007 () Bool)

(assert (=> b!4790918 (=> res!2036007 e!2991354)))

(assert (=> b!4790918 (= res!2036007 (not (allKeysSameHashInMap!2302 lt!1950257 hashF!1559)))))

(declare-fun b!4790919 () Bool)

(declare-fun res!2036009 () Bool)

(assert (=> b!4790919 (=> (not res!2036009) (not e!2991357))))

(assert (=> b!4790919 (= res!2036009 (contains!17769 (extractMap!2424 (toList!6873 lm!2473)) key!5896))))

(declare-fun b!4790920 () Bool)

(assert (=> b!4790920 (= e!2991356 (isDefined!10202 (getPair!869 (apply!12958 lt!1950257 lt!1950258) key!5896)))))

(declare-fun b!4790921 () Bool)

(declare-fun res!2036001 () Bool)

(assert (=> b!4790921 (=> res!2036001 e!2991355)))

(declare-fun containsKey!3923 (List!54287 K!15732) Bool)

(assert (=> b!4790921 (= res!2036001 (containsKey!3923 (_2!31673 (h!60588 (toList!6873 lm!2473))) key!5896))))

(declare-fun b!4790922 () Bool)

(declare-fun res!2036010 () Bool)

(assert (=> b!4790922 (=> res!2036010 e!2991355)))

(assert (=> b!4790922 (= res!2036010 (not (is-Cons!54164 (toList!6873 lm!2473))))))

(assert (= (and start!493208 res!2036006) b!4790914))

(assert (= (and b!4790914 res!2036005) b!4790919))

(assert (= (and b!4790919 res!2036009) b!4790911))

(assert (= (and b!4790911 res!2036003) b!4790912))

(assert (= (and b!4790911 (not res!2036008)) b!4790922))

(assert (= (and b!4790922 (not res!2036010)) b!4790921))

(assert (= (and b!4790921 (not res!2036001)) b!4790915))

(assert (= (and b!4790915 c!816594) b!4790916))

(assert (= (and b!4790915 (not c!816594)) b!4790909))

(assert (= (and b!4790915 (not res!2036004)) b!4790918))

(assert (= (and b!4790918 (not res!2036007)) b!4790910))

(assert (= (and b!4790910 res!2036011) b!4790920))

(assert (= (and b!4790910 (not res!2036002)) b!4790913))

(assert (= start!493208 b!4790917))

(declare-fun m!5771150 () Bool)

(assert (=> b!4790913 m!5771150))

(declare-fun m!5771152 () Bool)

(assert (=> b!4790920 m!5771152))

(assert (=> b!4790920 m!5771152))

(declare-fun m!5771154 () Bool)

(assert (=> b!4790920 m!5771154))

(assert (=> b!4790920 m!5771154))

(declare-fun m!5771156 () Bool)

(assert (=> b!4790920 m!5771156))

(declare-fun m!5771158 () Bool)

(assert (=> b!4790919 m!5771158))

(assert (=> b!4790919 m!5771158))

(declare-fun m!5771160 () Bool)

(assert (=> b!4790919 m!5771160))

(declare-fun m!5771162 () Bool)

(assert (=> b!4790915 m!5771162))

(assert (=> b!4790915 m!5771162))

(declare-fun m!5771164 () Bool)

(assert (=> b!4790915 m!5771164))

(declare-fun m!5771166 () Bool)

(assert (=> b!4790915 m!5771166))

(assert (=> b!4790915 m!5771150))

(declare-fun m!5771168 () Bool)

(assert (=> b!4790915 m!5771168))

(declare-fun m!5771170 () Bool)

(assert (=> b!4790915 m!5771170))

(declare-fun m!5771172 () Bool)

(assert (=> b!4790921 m!5771172))

(declare-fun m!5771174 () Bool)

(assert (=> b!4790911 m!5771174))

(declare-fun m!5771176 () Bool)

(assert (=> b!4790911 m!5771176))

(declare-fun m!5771178 () Bool)

(assert (=> b!4790911 m!5771178))

(declare-fun m!5771180 () Bool)

(assert (=> b!4790911 m!5771180))

(declare-fun m!5771182 () Bool)

(assert (=> b!4790911 m!5771182))

(declare-fun m!5771184 () Bool)

(assert (=> b!4790911 m!5771184))

(declare-fun m!5771186 () Bool)

(assert (=> b!4790910 m!5771186))

(declare-fun m!5771188 () Bool)

(assert (=> b!4790910 m!5771188))

(declare-fun m!5771190 () Bool)

(assert (=> b!4790910 m!5771190))

(declare-fun m!5771192 () Bool)

(assert (=> b!4790910 m!5771192))

(declare-fun m!5771194 () Bool)

(assert (=> start!493208 m!5771194))

(declare-fun m!5771196 () Bool)

(assert (=> start!493208 m!5771196))

(declare-fun m!5771198 () Bool)

(assert (=> b!4790914 m!5771198))

(declare-fun m!5771200 () Bool)

(assert (=> b!4790916 m!5771200))

(assert (=> b!4790916 m!5771162))

(assert (=> b!4790916 m!5771162))

(assert (=> b!4790916 m!5771164))

(declare-fun m!5771202 () Bool)

(assert (=> b!4790912 m!5771202))

(assert (=> b!4790912 m!5771202))

(declare-fun m!5771204 () Bool)

(assert (=> b!4790912 m!5771204))

(assert (=> b!4790912 m!5771204))

(declare-fun m!5771206 () Bool)

(assert (=> b!4790912 m!5771206))

(declare-fun m!5771208 () Bool)

(assert (=> b!4790918 m!5771208))

(push 1)

(assert (not b!4790918))

(assert tp_is_empty!33469)

(assert (not b!4790915))

(assert (not b!4790913))

(assert (not b!4790910))

(assert (not b!4790916))

(assert (not b!4790912))

(assert (not b!4790920))

(assert (not b!4790921))

(assert (not b!4790919))

(assert (not start!493208))

(assert (not b!4790917))

(assert tp_is_empty!33471)

(assert (not b!4790911))

(assert (not b!4790914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

