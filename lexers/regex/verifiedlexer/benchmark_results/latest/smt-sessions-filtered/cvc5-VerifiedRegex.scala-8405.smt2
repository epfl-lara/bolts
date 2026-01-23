; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436894 () Bool)

(assert start!436894)

(declare-fun b!4457264 () Bool)

(declare-fun e!2775532 () Bool)

(declare-fun e!2775534 () Bool)

(assert (=> b!4457264 (= e!2775532 e!2775534)))

(declare-fun res!1847902 () Bool)

(assert (=> b!4457264 (=> (not res!1847902) (not e!2775534))))

(declare-datatypes ((K!11428 0))(
  ( (K!11429 (val!17413 Int)) )
))
(declare-datatypes ((V!11674 0))(
  ( (V!11675 (val!17414 Int)) )
))
(declare-datatypes ((tuple2!50146 0))(
  ( (tuple2!50147 (_1!28367 K!11428) (_2!28367 V!11674)) )
))
(declare-datatypes ((List!50171 0))(
  ( (Nil!50047) (Cons!50047 (h!55792 tuple2!50146) (t!357121 List!50171)) )
))
(declare-datatypes ((ListMap!3103 0))(
  ( (ListMap!3104 (toList!3865 List!50171)) )
))
(declare-fun lt!1648756 () ListMap!3103)

(declare-fun key!4412 () K!11428)

(declare-fun contains!12579 (ListMap!3103 K!11428) Bool)

(assert (=> b!4457264 (= res!1847902 (contains!12579 lt!1648756 key!4412))))

(declare-datatypes ((tuple2!50148 0))(
  ( (tuple2!50149 (_1!28368 (_ BitVec 64)) (_2!28368 List!50171)) )
))
(declare-datatypes ((List!50172 0))(
  ( (Nil!50048) (Cons!50048 (h!55793 tuple2!50148) (t!357122 List!50172)) )
))
(declare-datatypes ((ListLongMap!2521 0))(
  ( (ListLongMap!2522 (toList!3866 List!50172)) )
))
(declare-fun lm!1853 () ListLongMap!2521)

(declare-fun extractMap!997 (List!50172) ListMap!3103)

(assert (=> b!4457264 (= lt!1648756 (extractMap!997 (toList!3866 lm!1853)))))

(declare-fun b!4457265 () Bool)

(declare-fun e!2775536 () Bool)

(declare-fun tp!1335174 () Bool)

(assert (=> b!4457265 (= e!2775536 tp!1335174)))

(declare-fun b!4457266 () Bool)

(declare-fun res!1847904 () Bool)

(assert (=> b!4457266 (=> (not res!1847904) (not e!2775534))))

(declare-fun l!12858 () List!50171)

(assert (=> b!4457266 (= res!1847904 (is-Cons!50047 l!12858))))

(declare-fun b!4457267 () Bool)

(declare-fun e!2775535 () Bool)

(declare-fun lambda!160710 () Int)

(declare-fun forall!9858 (List!50172 Int) Bool)

(assert (=> b!4457267 (= e!2775535 (forall!9858 (toList!3866 lm!1853) lambda!160710))))

(declare-fun lt!1648758 () ListMap!3103)

(assert (=> b!4457267 (contains!12579 lt!1648758 key!4412)))

(declare-datatypes ((Unit!86278 0))(
  ( (Unit!86279) )
))
(declare-fun lt!1648761 () Unit!86278)

(declare-fun lt!1648760 () ListMap!3103)

(declare-fun lemmaEquivalentThenSameContains!121 (ListMap!3103 ListMap!3103 K!11428) Unit!86278)

(assert (=> b!4457267 (= lt!1648761 (lemmaEquivalentThenSameContains!121 lt!1648758 lt!1648760 key!4412))))

(declare-fun b!4457268 () Bool)

(declare-fun res!1847903 () Bool)

(assert (=> b!4457268 (=> (not res!1847903) (not e!2775532))))

(declare-fun noDuplicateKeys!929 (List!50171) Bool)

(assert (=> b!4457268 (= res!1847903 (noDuplicateKeys!929 l!12858))))

(declare-fun e!2775533 () Bool)

(declare-fun tp_is_empty!26937 () Bool)

(declare-fun b!4457269 () Bool)

(declare-fun tp_is_empty!26939 () Bool)

(declare-fun tp!1335175 () Bool)

(assert (=> b!4457269 (= e!2775533 (and tp_is_empty!26937 tp_is_empty!26939 tp!1335175))))

(declare-fun res!1847900 () Bool)

(assert (=> start!436894 (=> (not res!1847900) (not e!2775532))))

(assert (=> start!436894 (= res!1847900 (forall!9858 (toList!3866 lm!1853) lambda!160710))))

(assert (=> start!436894 e!2775532))

(declare-fun inv!65615 (ListLongMap!2521) Bool)

(assert (=> start!436894 (and (inv!65615 lm!1853) e!2775536)))

(assert (=> start!436894 true))

(assert (=> start!436894 e!2775533))

(assert (=> start!436894 tp_is_empty!26937))

(declare-fun b!4457270 () Bool)

(assert (=> b!4457270 (= e!2775534 (not e!2775535))))

(declare-fun res!1847905 () Bool)

(assert (=> b!4457270 (=> res!1847905 e!2775535)))

(assert (=> b!4457270 (= res!1847905 (not (contains!12579 lt!1648760 key!4412)))))

(declare-fun lt!1648754 () ListMap!3103)

(assert (=> b!4457270 (contains!12579 lt!1648754 key!4412)))

(declare-fun lt!1648755 () Unit!86278)

(declare-fun lt!1648753 () ListMap!3103)

(declare-fun addStillContains!11 (ListMap!3103 K!11428 V!11674 K!11428) Unit!86278)

(assert (=> b!4457270 (= lt!1648755 (addStillContains!11 lt!1648753 (_1!28367 (h!55792 l!12858)) (_2!28367 (h!55792 l!12858)) key!4412))))

(declare-fun eq!488 (ListMap!3103 ListMap!3103) Bool)

(assert (=> b!4457270 (eq!488 lt!1648758 lt!1648760)))

(declare-fun +!1304 (ListMap!3103 tuple2!50146) ListMap!3103)

(assert (=> b!4457270 (= lt!1648760 (+!1304 lt!1648753 (h!55792 l!12858)))))

(declare-fun addToMapMapFromBucket!523 (List!50171 ListMap!3103) ListMap!3103)

(assert (=> b!4457270 (= lt!1648758 (addToMapMapFromBucket!523 (t!357121 l!12858) (+!1304 lt!1648756 (h!55792 l!12858))))))

(declare-fun lt!1648762 () ListMap!3103)

(assert (=> b!4457270 (eq!488 lt!1648762 lt!1648754)))

(assert (=> b!4457270 (= lt!1648754 (+!1304 lt!1648753 (h!55792 l!12858)))))

(assert (=> b!4457270 (= lt!1648762 (addToMapMapFromBucket!523 (t!357121 l!12858) (+!1304 lt!1648756 (h!55792 l!12858))))))

(declare-fun lt!1648759 () Unit!86278)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!235 (ListMap!3103 K!11428 V!11674 List!50171) Unit!86278)

(assert (=> b!4457270 (= lt!1648759 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!235 lt!1648756 (_1!28367 (h!55792 l!12858)) (_2!28367 (h!55792 l!12858)) (t!357121 l!12858)))))

(assert (=> b!4457270 (contains!12579 lt!1648753 key!4412)))

(assert (=> b!4457270 (= lt!1648753 (addToMapMapFromBucket!523 (t!357121 l!12858) lt!1648756))))

(declare-datatypes ((Hashable!5336 0))(
  ( (HashableExt!5335 (__x!31039 Int)) )
))
(declare-fun hashF!1313 () Hashable!5336)

(declare-fun lt!1648757 () Unit!86278)

(declare-fun lemmaAddToMapMaintainsContains!31 (ListLongMap!2521 K!11428 List!50171 Hashable!5336) Unit!86278)

(assert (=> b!4457270 (= lt!1648757 (lemmaAddToMapMaintainsContains!31 lm!1853 key!4412 (t!357121 l!12858) hashF!1313))))

(declare-fun b!4457271 () Bool)

(declare-fun res!1847901 () Bool)

(assert (=> b!4457271 (=> (not res!1847901) (not e!2775532))))

(declare-fun allKeysSameHashInMap!1048 (ListLongMap!2521 Hashable!5336) Bool)

(assert (=> b!4457271 (= res!1847901 (allKeysSameHashInMap!1048 lm!1853 hashF!1313))))

(assert (= (and start!436894 res!1847900) b!4457271))

(assert (= (and b!4457271 res!1847901) b!4457268))

(assert (= (and b!4457268 res!1847903) b!4457264))

(assert (= (and b!4457264 res!1847902) b!4457266))

(assert (= (and b!4457266 res!1847904) b!4457270))

(assert (= (and b!4457270 (not res!1847905)) b!4457267))

(assert (= start!436894 b!4457265))

(assert (= (and start!436894 (is-Cons!50047 l!12858)) b!4457269))

(declare-fun m!5159637 () Bool)

(assert (=> b!4457270 m!5159637))

(declare-fun m!5159639 () Bool)

(assert (=> b!4457270 m!5159639))

(declare-fun m!5159641 () Bool)

(assert (=> b!4457270 m!5159641))

(declare-fun m!5159643 () Bool)

(assert (=> b!4457270 m!5159643))

(declare-fun m!5159645 () Bool)

(assert (=> b!4457270 m!5159645))

(declare-fun m!5159647 () Bool)

(assert (=> b!4457270 m!5159647))

(declare-fun m!5159649 () Bool)

(assert (=> b!4457270 m!5159649))

(declare-fun m!5159651 () Bool)

(assert (=> b!4457270 m!5159651))

(declare-fun m!5159653 () Bool)

(assert (=> b!4457270 m!5159653))

(declare-fun m!5159655 () Bool)

(assert (=> b!4457270 m!5159655))

(declare-fun m!5159657 () Bool)

(assert (=> b!4457270 m!5159657))

(declare-fun m!5159659 () Bool)

(assert (=> b!4457270 m!5159659))

(assert (=> b!4457270 m!5159649))

(declare-fun m!5159661 () Bool)

(assert (=> start!436894 m!5159661))

(declare-fun m!5159663 () Bool)

(assert (=> start!436894 m!5159663))

(assert (=> b!4457267 m!5159661))

(declare-fun m!5159665 () Bool)

(assert (=> b!4457267 m!5159665))

(declare-fun m!5159667 () Bool)

(assert (=> b!4457267 m!5159667))

(declare-fun m!5159669 () Bool)

(assert (=> b!4457271 m!5159669))

(declare-fun m!5159671 () Bool)

(assert (=> b!4457268 m!5159671))

(declare-fun m!5159673 () Bool)

(assert (=> b!4457264 m!5159673))

(declare-fun m!5159675 () Bool)

(assert (=> b!4457264 m!5159675))

(push 1)

(assert (not b!4457270))

(assert (not b!4457271))

(assert (not b!4457264))

(assert (not start!436894))

(assert tp_is_empty!26939)

(assert (not b!4457269))

(assert (not b!4457265))

(assert (not b!4457267))

(assert tp_is_empty!26937)

(assert (not b!4457268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

