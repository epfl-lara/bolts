; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461316 () Bool)

(assert start!461316)

(declare-fun b!4611900 () Bool)

(declare-fun res!1931124 () Bool)

(declare-fun e!2876808 () Bool)

(assert (=> b!4611900 (=> res!1931124 e!2876808)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12645 0))(
  ( (K!12646 (val!18387 Int)) )
))
(declare-datatypes ((V!12891 0))(
  ( (V!12892 (val!18388 Int)) )
))
(declare-datatypes ((tuple2!52038 0))(
  ( (tuple2!52039 (_1!29313 K!12645) (_2!29313 V!12891)) )
))
(declare-datatypes ((List!51395 0))(
  ( (Nil!51271) (Cons!51271 (h!57273 tuple2!52038) (t!358389 List!51395)) )
))
(declare-fun lt!1767640 () List!51395)

(declare-fun newBucket!224 () List!51395)

(declare-datatypes ((tuple2!52040 0))(
  ( (tuple2!52041 (_1!29314 (_ BitVec 64)) (_2!29314 List!51395)) )
))
(declare-datatypes ((List!51396 0))(
  ( (Nil!51272) (Cons!51272 (h!57274 tuple2!52040) (t!358390 List!51396)) )
))
(declare-datatypes ((ListMap!4065 0))(
  ( (ListMap!4066 (toList!4786 List!51395)) )
))
(declare-fun extractMap!1454 (List!51396) ListMap!4065)

(assert (=> b!4611900 (= res!1931124 (not (= (extractMap!1454 (Cons!51272 (tuple2!52041 hash!414 lt!1767640) Nil!51272)) (extractMap!1454 (Cons!51272 (tuple2!52041 hash!414 newBucket!224) Nil!51272)))))))

(declare-fun b!4611901 () Bool)

(declare-fun oldBucket!40 () List!51395)

(assert (=> b!4611901 (= e!2876808 (not (= oldBucket!40 Nil!51271)))))

(declare-fun tp!1341266 () Bool)

(declare-fun b!4611902 () Bool)

(declare-fun e!2876809 () Bool)

(declare-fun tp_is_empty!28885 () Bool)

(declare-fun tp_is_empty!28887 () Bool)

(assert (=> b!4611902 (= e!2876809 (and tp_is_empty!28885 tp_is_empty!28887 tp!1341266))))

(declare-fun b!4611903 () Bool)

(declare-fun e!2876810 () Bool)

(declare-fun e!2876805 () Bool)

(assert (=> b!4611903 (= e!2876810 e!2876805)))

(declare-fun res!1931120 () Bool)

(assert (=> b!4611903 (=> (not res!1931120) (not e!2876805))))

(declare-fun lt!1767639 () ListMap!4065)

(declare-fun key!4968 () K!12645)

(declare-fun contains!14264 (ListMap!4065 K!12645) Bool)

(assert (=> b!4611903 (= res!1931120 (contains!14264 lt!1767639 key!4968))))

(assert (=> b!4611903 (= lt!1767639 (extractMap!1454 (Cons!51272 (tuple2!52041 hash!414 oldBucket!40) Nil!51272)))))

(declare-fun b!4611904 () Bool)

(declare-fun e!2876807 () Bool)

(assert (=> b!4611904 (= e!2876807 e!2876808)))

(declare-fun res!1931128 () Bool)

(assert (=> b!4611904 (=> res!1931128 e!2876808)))

(assert (=> b!4611904 (= res!1931128 (not (= lt!1767640 newBucket!224)))))

(declare-fun tail!8045 (List!51395) List!51395)

(assert (=> b!4611904 (= lt!1767640 (tail!8045 oldBucket!40))))

(declare-fun b!4611905 () Bool)

(declare-fun e!2876804 () Bool)

(declare-fun lt!1767641 () ListMap!4065)

(assert (=> b!4611905 (= e!2876804 (= lt!1767641 (ListMap!4066 Nil!51271)))))

(declare-fun b!4611906 () Bool)

(declare-fun res!1931129 () Bool)

(assert (=> b!4611906 (=> (not res!1931129) (not e!2876805))))

(declare-datatypes ((Hashable!5795 0))(
  ( (HashableExt!5794 (__x!31498 Int)) )
))
(declare-fun hashF!1389 () Hashable!5795)

(declare-fun allKeysSameHash!1252 (List!51395 (_ BitVec 64) Hashable!5795) Bool)

(assert (=> b!4611906 (= res!1931129 (allKeysSameHash!1252 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4611907 () Bool)

(declare-fun res!1931127 () Bool)

(assert (=> b!4611907 (=> (not res!1931127) (not e!2876805))))

(declare-fun hash!3341 (Hashable!5795 K!12645) (_ BitVec 64))

(assert (=> b!4611907 (= res!1931127 (= (hash!3341 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611908 () Bool)

(declare-fun res!1931123 () Bool)

(assert (=> b!4611908 (=> (not res!1931123) (not e!2876810))))

(declare-fun removePairForKey!1021 (List!51395 K!12645) List!51395)

(assert (=> b!4611908 (= res!1931123 (= (removePairForKey!1021 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611909 () Bool)

(declare-fun res!1931130 () Bool)

(assert (=> b!4611909 (=> (not res!1931130) (not e!2876810))))

(declare-fun noDuplicateKeys!1398 (List!51395) Bool)

(assert (=> b!4611909 (= res!1931130 (noDuplicateKeys!1398 newBucket!224))))

(declare-fun b!4611910 () Bool)

(assert (=> b!4611910 (= e!2876805 (not e!2876807))))

(declare-fun res!1931122 () Bool)

(assert (=> b!4611910 (=> res!1931122 e!2876807)))

(get-info :version)

(assert (=> b!4611910 (= res!1931122 (or (not ((_ is Cons!51271) oldBucket!40)) (not (= (_1!29313 (h!57273 oldBucket!40)) key!4968))))))

(assert (=> b!4611910 e!2876804))

(declare-fun res!1931121 () Bool)

(assert (=> b!4611910 (=> (not res!1931121) (not e!2876804))))

(declare-fun addToMapMapFromBucket!859 (List!51395 ListMap!4065) ListMap!4065)

(assert (=> b!4611910 (= res!1931121 (= lt!1767639 (addToMapMapFromBucket!859 oldBucket!40 lt!1767641)))))

(assert (=> b!4611910 (= lt!1767641 (extractMap!1454 Nil!51272))))

(assert (=> b!4611910 true))

(declare-fun res!1931125 () Bool)

(assert (=> start!461316 (=> (not res!1931125) (not e!2876810))))

(assert (=> start!461316 (= res!1931125 (noDuplicateKeys!1398 oldBucket!40))))

(assert (=> start!461316 e!2876810))

(assert (=> start!461316 true))

(declare-fun e!2876806 () Bool)

(assert (=> start!461316 e!2876806))

(assert (=> start!461316 tp_is_empty!28885))

(assert (=> start!461316 e!2876809))

(declare-fun b!4611911 () Bool)

(declare-fun res!1931126 () Bool)

(assert (=> b!4611911 (=> (not res!1931126) (not e!2876810))))

(assert (=> b!4611911 (= res!1931126 (allKeysSameHash!1252 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611912 () Bool)

(declare-fun tp!1341267 () Bool)

(assert (=> b!4611912 (= e!2876806 (and tp_is_empty!28885 tp_is_empty!28887 tp!1341267))))

(assert (= (and start!461316 res!1931125) b!4611909))

(assert (= (and b!4611909 res!1931130) b!4611908))

(assert (= (and b!4611908 res!1931123) b!4611911))

(assert (= (and b!4611911 res!1931126) b!4611903))

(assert (= (and b!4611903 res!1931120) b!4611907))

(assert (= (and b!4611907 res!1931127) b!4611906))

(assert (= (and b!4611906 res!1931129) b!4611910))

(assert (= (and b!4611910 res!1931121) b!4611905))

(assert (= (and b!4611910 (not res!1931122)) b!4611904))

(assert (= (and b!4611904 (not res!1931128)) b!4611900))

(assert (= (and b!4611900 (not res!1931124)) b!4611901))

(assert (= (and start!461316 ((_ is Cons!51271) oldBucket!40)) b!4611912))

(assert (= (and start!461316 ((_ is Cons!51271) newBucket!224)) b!4611902))

(declare-fun m!5443291 () Bool)

(assert (=> b!4611906 m!5443291))

(declare-fun m!5443293 () Bool)

(assert (=> b!4611911 m!5443293))

(declare-fun m!5443295 () Bool)

(assert (=> b!4611900 m!5443295))

(declare-fun m!5443297 () Bool)

(assert (=> b!4611900 m!5443297))

(declare-fun m!5443299 () Bool)

(assert (=> start!461316 m!5443299))

(declare-fun m!5443301 () Bool)

(assert (=> b!4611907 m!5443301))

(declare-fun m!5443303 () Bool)

(assert (=> b!4611904 m!5443303))

(declare-fun m!5443305 () Bool)

(assert (=> b!4611910 m!5443305))

(declare-fun m!5443307 () Bool)

(assert (=> b!4611910 m!5443307))

(declare-fun m!5443309 () Bool)

(assert (=> b!4611909 m!5443309))

(declare-fun m!5443311 () Bool)

(assert (=> b!4611908 m!5443311))

(declare-fun m!5443313 () Bool)

(assert (=> b!4611903 m!5443313))

(declare-fun m!5443315 () Bool)

(assert (=> b!4611903 m!5443315))

(check-sat (not b!4611912) (not b!4611903) (not b!4611902) (not b!4611910) (not b!4611908) tp_is_empty!28885 tp_is_empty!28887 (not b!4611907) (not b!4611906) (not b!4611911) (not b!4611900) (not b!4611909) (not start!461316) (not b!4611904))
(check-sat)
