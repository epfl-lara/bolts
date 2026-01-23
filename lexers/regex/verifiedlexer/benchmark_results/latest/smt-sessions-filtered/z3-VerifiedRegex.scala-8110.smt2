; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417652 () Bool)

(assert start!417652)

(declare-fun b!4332774 () Bool)

(declare-fun e!2696127 () Bool)

(declare-fun e!2696131 () Bool)

(assert (=> b!4332774 (= e!2696127 (not e!2696131))))

(declare-fun res!1776452 () Bool)

(assert (=> b!4332774 (=> res!1776452 e!2696131)))

(declare-datatypes ((K!9955 0))(
  ( (K!9956 (val!16235 Int)) )
))
(declare-datatypes ((V!10201 0))(
  ( (V!10202 (val!16236 Int)) )
))
(declare-datatypes ((tuple2!47790 0))(
  ( (tuple2!47791 (_1!27189 K!9955) (_2!27189 V!10201)) )
))
(declare-datatypes ((List!48725 0))(
  ( (Nil!48601) (Cons!48601 (h!54088 tuple2!47790) (t!355641 List!48725)) )
))
(declare-fun newBucket!200 () List!48725)

(declare-fun lt!1546216 () List!48725)

(declare-fun key!3918 () K!9955)

(declare-fun newValue!99 () V!10201)

(declare-fun removePairForKey!325 (List!48725 K!9955) List!48725)

(assert (=> b!4332774 (= res!1776452 (not (= newBucket!200 (Cons!48601 (tuple2!47791 key!3918 newValue!99) (removePairForKey!325 lt!1546216 key!3918)))))))

(declare-datatypes ((Unit!68198 0))(
  ( (Unit!68199) )
))
(declare-fun lt!1546211 () Unit!68198)

(declare-datatypes ((tuple2!47792 0))(
  ( (tuple2!47793 (_1!27190 (_ BitVec 64)) (_2!27190 List!48725)) )
))
(declare-fun lt!1546213 () tuple2!47792)

(declare-fun lambda!134851 () Int)

(declare-datatypes ((List!48726 0))(
  ( (Nil!48602) (Cons!48602 (h!54089 tuple2!47792) (t!355642 List!48726)) )
))
(declare-datatypes ((ListLongMap!1343 0))(
  ( (ListLongMap!1344 (toList!2693 List!48726)) )
))
(declare-fun lm!1707 () ListLongMap!1343)

(declare-fun forallContained!1560 (List!48726 Int tuple2!47792) Unit!68198)

(assert (=> b!4332774 (= lt!1546211 (forallContained!1560 (toList!2693 lm!1707) lambda!134851 lt!1546213))))

(declare-fun contains!10624 (List!48726 tuple2!47792) Bool)

(assert (=> b!4332774 (contains!10624 (toList!2693 lm!1707) lt!1546213)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4332774 (= lt!1546213 (tuple2!47793 hash!377 lt!1546216))))

(declare-fun lt!1546215 () Unit!68198)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!202 (List!48726 (_ BitVec 64) List!48725) Unit!68198)

(assert (=> b!4332774 (= lt!1546215 (lemmaGetValueByKeyImpliesContainsTuple!202 (toList!2693 lm!1707) hash!377 lt!1546216))))

(declare-fun apply!11207 (ListLongMap!1343 (_ BitVec 64)) List!48725)

(assert (=> b!4332774 (= lt!1546216 (apply!11207 lm!1707 hash!377))))

(declare-fun b!4332775 () Bool)

(declare-fun e!2696134 () Bool)

(declare-fun lt!1546212 () ListLongMap!1343)

(declare-datatypes ((ListMap!1937 0))(
  ( (ListMap!1938 (toList!2694 List!48725)) )
))
(declare-fun extractMap!414 (List!48726) ListMap!1937)

(declare-fun addToMapMapFromBucket!63 (List!48725 ListMap!1937) ListMap!1937)

(assert (=> b!4332775 (= e!2696134 (= (extractMap!414 (toList!2693 lt!1546212)) (addToMapMapFromBucket!63 newBucket!200 (extractMap!414 (t!355642 (toList!2693 lm!1707))))))))

(declare-fun b!4332776 () Bool)

(declare-fun res!1776460 () Bool)

(assert (=> b!4332776 (=> res!1776460 e!2696131)))

(declare-fun noDuplicateKeys!355 (List!48725) Bool)

(assert (=> b!4332776 (= res!1776460 (not (noDuplicateKeys!355 newBucket!200)))))

(declare-fun b!4332777 () Bool)

(declare-fun res!1776450 () Bool)

(assert (=> b!4332777 (=> (not res!1776450) (not e!2696127))))

(declare-fun contains!10625 (ListLongMap!1343 (_ BitVec 64)) Bool)

(assert (=> b!4332777 (= res!1776450 (contains!10625 lm!1707 hash!377))))

(declare-fun b!4332778 () Bool)

(declare-fun res!1776449 () Bool)

(assert (=> b!4332778 (=> (not res!1776449) (not e!2696127))))

(declare-datatypes ((Hashable!4747 0))(
  ( (HashableExt!4746 (__x!30450 Int)) )
))
(declare-fun hashF!1247 () Hashable!4747)

(declare-fun allKeysSameHashInMap!459 (ListLongMap!1343 Hashable!4747) Bool)

(assert (=> b!4332778 (= res!1776449 (allKeysSameHashInMap!459 lm!1707 hashF!1247))))

(declare-fun b!4332779 () Bool)

(declare-fun res!1776455 () Bool)

(assert (=> b!4332779 (=> (not res!1776455) (not e!2696127))))

(declare-fun contains!10626 (ListMap!1937 K!9955) Bool)

(assert (=> b!4332779 (= res!1776455 (contains!10626 (extractMap!414 (toList!2693 lm!1707)) key!3918))))

(declare-fun b!4332780 () Bool)

(declare-fun res!1776457 () Bool)

(assert (=> b!4332780 (=> (not res!1776457) (not e!2696127))))

(declare-fun hash!1291 (Hashable!4747 K!9955) (_ BitVec 64))

(assert (=> b!4332780 (= res!1776457 (= (hash!1291 hashF!1247 key!3918) hash!377))))

(declare-fun b!4332781 () Bool)

(declare-fun e!2696130 () Bool)

(declare-fun tp!1328685 () Bool)

(assert (=> b!4332781 (= e!2696130 tp!1328685)))

(declare-fun b!4332782 () Bool)

(declare-fun e!2696132 () Bool)

(declare-fun e!2696133 () Bool)

(assert (=> b!4332782 (= e!2696132 e!2696133)))

(declare-fun res!1776454 () Bool)

(assert (=> b!4332782 (=> res!1776454 e!2696133)))

(get-info :version)

(assert (=> b!4332782 (= res!1776454 (or (not ((_ is Cons!48602) (toList!2693 lm!1707))) (not (= (_1!27190 (h!54089 (toList!2693 lm!1707))) hash!377))))))

(declare-fun e!2696128 () Bool)

(declare-fun tp_is_empty!24659 () Bool)

(declare-fun tp_is_empty!24657 () Bool)

(declare-fun b!4332783 () Bool)

(declare-fun tp!1328686 () Bool)

(assert (=> b!4332783 (= e!2696128 (and tp_is_empty!24657 tp_is_empty!24659 tp!1328686))))

(declare-fun b!4332784 () Bool)

(declare-fun e!2696129 () Bool)

(assert (=> b!4332784 (= e!2696131 e!2696129)))

(declare-fun res!1776456 () Bool)

(assert (=> b!4332784 (=> res!1776456 e!2696129)))

(assert (=> b!4332784 (= res!1776456 (or (not ((_ is Cons!48602) (toList!2693 lm!1707))) (not (= (_1!27190 (h!54089 (toList!2693 lm!1707))) hash!377))))))

(assert (=> b!4332784 e!2696132))

(declare-fun res!1776453 () Bool)

(assert (=> b!4332784 (=> (not res!1776453) (not e!2696132))))

(declare-fun forall!8909 (List!48726 Int) Bool)

(assert (=> b!4332784 (= res!1776453 (forall!8909 (toList!2693 lt!1546212) lambda!134851))))

(declare-fun lt!1546210 () tuple2!47792)

(declare-fun +!391 (ListLongMap!1343 tuple2!47792) ListLongMap!1343)

(assert (=> b!4332784 (= lt!1546212 (+!391 lm!1707 lt!1546210))))

(assert (=> b!4332784 (= lt!1546210 (tuple2!47793 hash!377 newBucket!200))))

(declare-fun lt!1546214 () Unit!68198)

(declare-fun addValidProp!9 (ListLongMap!1343 Int (_ BitVec 64) List!48725) Unit!68198)

(assert (=> b!4332784 (= lt!1546214 (addValidProp!9 lm!1707 lambda!134851 hash!377 newBucket!200))))

(assert (=> b!4332784 (forall!8909 (toList!2693 lm!1707) lambda!134851)))

(declare-fun b!4332785 () Bool)

(assert (=> b!4332785 (= e!2696129 (forall!8909 (toList!2693 lt!1546212) lambda!134851))))

(declare-fun b!4332786 () Bool)

(assert (=> b!4332786 (= e!2696133 e!2696134)))

(declare-fun res!1776451 () Bool)

(assert (=> b!4332786 (=> (not res!1776451) (not e!2696134))))

(assert (=> b!4332786 (= res!1776451 (= lt!1546212 (ListLongMap!1344 (Cons!48602 lt!1546210 (t!355642 (toList!2693 lm!1707))))))))

(declare-fun res!1776461 () Bool)

(assert (=> start!417652 (=> (not res!1776461) (not e!2696127))))

(assert (=> start!417652 (= res!1776461 (forall!8909 (toList!2693 lm!1707) lambda!134851))))

(assert (=> start!417652 e!2696127))

(assert (=> start!417652 e!2696128))

(assert (=> start!417652 true))

(declare-fun inv!64141 (ListLongMap!1343) Bool)

(assert (=> start!417652 (and (inv!64141 lm!1707) e!2696130)))

(assert (=> start!417652 tp_is_empty!24657))

(assert (=> start!417652 tp_is_empty!24659))

(declare-fun b!4332787 () Bool)

(declare-fun res!1776458 () Bool)

(assert (=> b!4332787 (=> (not res!1776458) (not e!2696127))))

(declare-fun allKeysSameHash!313 (List!48725 (_ BitVec 64) Hashable!4747) Bool)

(assert (=> b!4332787 (= res!1776458 (allKeysSameHash!313 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4332788 () Bool)

(declare-fun res!1776459 () Bool)

(assert (=> b!4332788 (=> (not res!1776459) (not e!2696132))))

(assert (=> b!4332788 (= res!1776459 (forall!8909 (toList!2693 lt!1546212) lambda!134851))))

(assert (= (and start!417652 res!1776461) b!4332778))

(assert (= (and b!4332778 res!1776449) b!4332780))

(assert (= (and b!4332780 res!1776457) b!4332787))

(assert (= (and b!4332787 res!1776458) b!4332779))

(assert (= (and b!4332779 res!1776455) b!4332777))

(assert (= (and b!4332777 res!1776450) b!4332774))

(assert (= (and b!4332774 (not res!1776452)) b!4332776))

(assert (= (and b!4332776 (not res!1776460)) b!4332784))

(assert (= (and b!4332784 res!1776453) b!4332788))

(assert (= (and b!4332788 res!1776459) b!4332782))

(assert (= (and b!4332782 (not res!1776454)) b!4332786))

(assert (= (and b!4332786 res!1776451) b!4332775))

(assert (= (and b!4332784 (not res!1776456)) b!4332785))

(assert (= (and start!417652 ((_ is Cons!48601) newBucket!200)) b!4332783))

(assert (= start!417652 b!4332781))

(declare-fun m!4926981 () Bool)

(assert (=> b!4332788 m!4926981))

(declare-fun m!4926983 () Bool)

(assert (=> b!4332777 m!4926983))

(declare-fun m!4926985 () Bool)

(assert (=> b!4332774 m!4926985))

(declare-fun m!4926987 () Bool)

(assert (=> b!4332774 m!4926987))

(declare-fun m!4926989 () Bool)

(assert (=> b!4332774 m!4926989))

(declare-fun m!4926991 () Bool)

(assert (=> b!4332774 m!4926991))

(declare-fun m!4926993 () Bool)

(assert (=> b!4332774 m!4926993))

(declare-fun m!4926995 () Bool)

(assert (=> start!417652 m!4926995))

(declare-fun m!4926997 () Bool)

(assert (=> start!417652 m!4926997))

(declare-fun m!4926999 () Bool)

(assert (=> b!4332778 m!4926999))

(declare-fun m!4927001 () Bool)

(assert (=> b!4332776 m!4927001))

(assert (=> b!4332784 m!4926981))

(declare-fun m!4927003 () Bool)

(assert (=> b!4332784 m!4927003))

(declare-fun m!4927005 () Bool)

(assert (=> b!4332784 m!4927005))

(assert (=> b!4332784 m!4926995))

(assert (=> b!4332785 m!4926981))

(declare-fun m!4927007 () Bool)

(assert (=> b!4332780 m!4927007))

(declare-fun m!4927009 () Bool)

(assert (=> b!4332787 m!4927009))

(declare-fun m!4927011 () Bool)

(assert (=> b!4332779 m!4927011))

(assert (=> b!4332779 m!4927011))

(declare-fun m!4927013 () Bool)

(assert (=> b!4332779 m!4927013))

(declare-fun m!4927015 () Bool)

(assert (=> b!4332775 m!4927015))

(declare-fun m!4927017 () Bool)

(assert (=> b!4332775 m!4927017))

(assert (=> b!4332775 m!4927017))

(declare-fun m!4927019 () Bool)

(assert (=> b!4332775 m!4927019))

(check-sat (not b!4332784) (not b!4332779) (not b!4332780) (not b!4332778) (not b!4332785) (not b!4332777) tp_is_empty!24659 tp_is_empty!24657 (not b!4332788) (not b!4332775) (not b!4332774) (not b!4332783) (not start!417652) (not b!4332781) (not b!4332787) (not b!4332776))
(check-sat)
