; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461220 () Bool)

(assert start!461220)

(declare-fun b!4611138 () Bool)

(declare-fun e!2876374 () Bool)

(assert (=> b!4611138 (= e!2876374 (not true))))

(declare-datatypes ((K!12615 0))(
  ( (K!12616 (val!18363 Int)) )
))
(declare-datatypes ((V!12861 0))(
  ( (V!12862 (val!18364 Int)) )
))
(declare-datatypes ((tuple2!51990 0))(
  ( (tuple2!51991 (_1!29289 K!12615) (_2!29289 V!12861)) )
))
(declare-datatypes ((List!51367 0))(
  ( (Nil!51243) (Cons!51243 (h!57241 tuple2!51990) (t!358361 List!51367)) )
))
(declare-datatypes ((ListMap!4041 0))(
  ( (ListMap!4042 (toList!4774 List!51367)) )
))
(declare-fun lt!1767187 () ListMap!4041)

(declare-datatypes ((tuple2!51992 0))(
  ( (tuple2!51993 (_1!29290 (_ BitVec 64)) (_2!29290 List!51367)) )
))
(declare-datatypes ((List!51368 0))(
  ( (Nil!51244) (Cons!51244 (h!57242 tuple2!51992) (t!358362 List!51368)) )
))
(declare-fun extractMap!1442 (List!51368) ListMap!4041)

(assert (=> b!4611138 (= lt!1767187 (extractMap!1442 Nil!51244))))

(assert (=> b!4611138 true))

(declare-fun b!4611139 () Bool)

(declare-fun res!1930654 () Bool)

(assert (=> b!4611139 (=> (not res!1930654) (not e!2876374))))

(declare-datatypes ((Hashable!5783 0))(
  ( (HashableExt!5782 (__x!31486 Int)) )
))
(declare-fun hashF!1389 () Hashable!5783)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51367)

(declare-fun allKeysSameHash!1240 (List!51367 (_ BitVec 64) Hashable!5783) Bool)

(assert (=> b!4611139 (= res!1930654 (allKeysSameHash!1240 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1930658 () Bool)

(assert (=> start!461220 (=> (not res!1930658) (not e!2876374))))

(declare-fun oldBucket!40 () List!51367)

(declare-fun noDuplicateKeys!1386 (List!51367) Bool)

(assert (=> start!461220 (= res!1930658 (noDuplicateKeys!1386 oldBucket!40))))

(assert (=> start!461220 e!2876374))

(assert (=> start!461220 true))

(declare-fun e!2876372 () Bool)

(assert (=> start!461220 e!2876372))

(declare-fun tp_is_empty!28837 () Bool)

(assert (=> start!461220 tp_is_empty!28837))

(declare-fun e!2876373 () Bool)

(assert (=> start!461220 e!2876373))

(declare-fun b!4611140 () Bool)

(declare-fun res!1930660 () Bool)

(assert (=> b!4611140 (=> (not res!1930660) (not e!2876374))))

(declare-fun key!4968 () K!12615)

(declare-fun contains!14248 (ListMap!4041 K!12615) Bool)

(assert (=> b!4611140 (= res!1930660 (contains!14248 (extractMap!1442 (Cons!51244 (tuple2!51993 hash!414 oldBucket!40) Nil!51244)) key!4968))))

(declare-fun b!4611141 () Bool)

(declare-fun tp_is_empty!28839 () Bool)

(declare-fun tp!1341179 () Bool)

(assert (=> b!4611141 (= e!2876372 (and tp_is_empty!28837 tp_is_empty!28839 tp!1341179))))

(declare-fun b!4611142 () Bool)

(declare-fun res!1930657 () Bool)

(assert (=> b!4611142 (=> (not res!1930657) (not e!2876374))))

(assert (=> b!4611142 (= res!1930657 (allKeysSameHash!1240 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611143 () Bool)

(declare-fun res!1930655 () Bool)

(assert (=> b!4611143 (=> (not res!1930655) (not e!2876374))))

(declare-fun hash!3327 (Hashable!5783 K!12615) (_ BitVec 64))

(assert (=> b!4611143 (= res!1930655 (= (hash!3327 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611144 () Bool)

(declare-fun tp!1341178 () Bool)

(assert (=> b!4611144 (= e!2876373 (and tp_is_empty!28837 tp_is_empty!28839 tp!1341178))))

(declare-fun b!4611145 () Bool)

(declare-fun res!1930656 () Bool)

(assert (=> b!4611145 (=> (not res!1930656) (not e!2876374))))

(declare-fun removePairForKey!1009 (List!51367 K!12615) List!51367)

(assert (=> b!4611145 (= res!1930656 (= (removePairForKey!1009 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611146 () Bool)

(declare-fun res!1930659 () Bool)

(assert (=> b!4611146 (=> (not res!1930659) (not e!2876374))))

(assert (=> b!4611146 (= res!1930659 (noDuplicateKeys!1386 newBucket!224))))

(assert (= (and start!461220 res!1930658) b!4611146))

(assert (= (and b!4611146 res!1930659) b!4611145))

(assert (= (and b!4611145 res!1930656) b!4611142))

(assert (= (and b!4611142 res!1930657) b!4611140))

(assert (= (and b!4611140 res!1930660) b!4611143))

(assert (= (and b!4611143 res!1930655) b!4611139))

(assert (= (and b!4611139 res!1930654) b!4611138))

(get-info :version)

(assert (= (and start!461220 ((_ is Cons!51243) oldBucket!40)) b!4611141))

(assert (= (and start!461220 ((_ is Cons!51243) newBucket!224)) b!4611144))

(declare-fun m!5442653 () Bool)

(assert (=> b!4611139 m!5442653))

(declare-fun m!5442655 () Bool)

(assert (=> b!4611146 m!5442655))

(declare-fun m!5442657 () Bool)

(assert (=> b!4611140 m!5442657))

(assert (=> b!4611140 m!5442657))

(declare-fun m!5442659 () Bool)

(assert (=> b!4611140 m!5442659))

(declare-fun m!5442661 () Bool)

(assert (=> b!4611143 m!5442661))

(declare-fun m!5442663 () Bool)

(assert (=> start!461220 m!5442663))

(declare-fun m!5442665 () Bool)

(assert (=> b!4611138 m!5442665))

(declare-fun m!5442667 () Bool)

(assert (=> b!4611142 m!5442667))

(declare-fun m!5442669 () Bool)

(assert (=> b!4611145 m!5442669))

(check-sat tp_is_empty!28837 (not start!461220) (not b!4611142) (not b!4611145) (not b!4611140) (not b!4611139) (not b!4611143) (not b!4611146) (not b!4611144) (not b!4611141) tp_is_empty!28839 (not b!4611138))
(check-sat)
