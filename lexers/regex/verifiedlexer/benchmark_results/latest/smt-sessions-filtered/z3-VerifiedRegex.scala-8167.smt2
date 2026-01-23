; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420400 () Bool)

(assert start!420400)

(declare-fun b!4350710 () Bool)

(declare-fun res!1787417 () Bool)

(declare-fun e!2707423 () Bool)

(assert (=> b!4350710 (=> res!1787417 e!2707423)))

(declare-datatypes ((V!10486 0))(
  ( (V!10487 (val!16463 Int)) )
))
(declare-datatypes ((K!10240 0))(
  ( (K!10241 (val!16464 Int)) )
))
(declare-datatypes ((tuple2!48246 0))(
  ( (tuple2!48247 (_1!27417 K!10240) (_2!27417 V!10486)) )
))
(declare-datatypes ((List!48999 0))(
  ( (Nil!48875) (Cons!48875 (h!54410 tuple2!48246) (t!355919 List!48999)) )
))
(declare-datatypes ((tuple2!48248 0))(
  ( (tuple2!48249 (_1!27418 (_ BitVec 64)) (_2!27418 List!48999)) )
))
(declare-datatypes ((List!49000 0))(
  ( (Nil!48876) (Cons!48876 (h!54411 tuple2!48248) (t!355920 List!49000)) )
))
(declare-datatypes ((ListLongMap!1571 0))(
  ( (ListLongMap!1572 (toList!2921 List!49000)) )
))
(declare-fun lt!1564440 () ListLongMap!1571)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11044 (ListLongMap!1571 (_ BitVec 64)) Bool)

(assert (=> b!4350710 (= res!1787417 (not (contains!11044 lt!1564440 hash!377)))))

(declare-fun b!4350711 () Bool)

(declare-fun res!1787414 () Bool)

(declare-fun e!2707416 () Bool)

(assert (=> b!4350711 (=> (not res!1787414) (not e!2707416))))

(declare-fun lm!1707 () ListLongMap!1571)

(declare-fun key!3918 () K!10240)

(declare-datatypes ((ListMap!2165 0))(
  ( (ListMap!2166 (toList!2922 List!48999)) )
))
(declare-fun contains!11045 (ListMap!2165 K!10240) Bool)

(declare-fun extractMap!528 (List!49000) ListMap!2165)

(assert (=> b!4350711 (= res!1787414 (contains!11045 (extractMap!528 (toList!2921 lm!1707)) key!3918))))

(declare-fun b!4350712 () Bool)

(declare-fun res!1787410 () Bool)

(assert (=> b!4350712 (=> res!1787410 e!2707423)))

(declare-datatypes ((Hashable!4861 0))(
  ( (HashableExt!4860 (__x!30564 Int)) )
))
(declare-fun hashF!1247 () Hashable!4861)

(declare-fun allKeysSameHashInMap!573 (ListLongMap!1571 Hashable!4861) Bool)

(assert (=> b!4350712 (= res!1787410 (not (allKeysSameHashInMap!573 lt!1564440 hashF!1247)))))

(declare-fun b!4350713 () Bool)

(declare-fun e!2707424 () Bool)

(assert (=> b!4350713 (= e!2707416 (not e!2707424))))

(declare-fun res!1787408 () Bool)

(assert (=> b!4350713 (=> res!1787408 e!2707424)))

(declare-fun newBucket!200 () List!48999)

(declare-fun lt!1564432 () tuple2!48246)

(declare-fun lt!1564444 () List!48999)

(declare-fun removePairForKey!439 (List!48999 K!10240) List!48999)

(assert (=> b!4350713 (= res!1787408 (not (= newBucket!200 (Cons!48875 lt!1564432 (removePairForKey!439 lt!1564444 key!3918)))))))

(declare-fun newValue!99 () V!10486)

(assert (=> b!4350713 (= lt!1564432 (tuple2!48247 key!3918 newValue!99))))

(declare-fun lambda!139365 () Int)

(declare-fun lt!1564441 () tuple2!48248)

(declare-datatypes ((Unit!71041 0))(
  ( (Unit!71042) )
))
(declare-fun lt!1564433 () Unit!71041)

(declare-fun forallContained!1727 (List!49000 Int tuple2!48248) Unit!71041)

(assert (=> b!4350713 (= lt!1564433 (forallContained!1727 (toList!2921 lm!1707) lambda!139365 lt!1564441))))

(declare-fun contains!11046 (List!49000 tuple2!48248) Bool)

(assert (=> b!4350713 (contains!11046 (toList!2921 lm!1707) lt!1564441)))

(assert (=> b!4350713 (= lt!1564441 (tuple2!48249 hash!377 lt!1564444))))

(declare-fun lt!1564443 () Unit!71041)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!316 (List!49000 (_ BitVec 64) List!48999) Unit!71041)

(assert (=> b!4350713 (= lt!1564443 (lemmaGetValueByKeyImpliesContainsTuple!316 (toList!2921 lm!1707) hash!377 lt!1564444))))

(declare-fun apply!11321 (ListLongMap!1571 (_ BitVec 64)) List!48999)

(assert (=> b!4350713 (= lt!1564444 (apply!11321 lm!1707 hash!377))))

(declare-fun b!4350714 () Bool)

(declare-fun e!2707420 () Bool)

(declare-fun tp!1329843 () Bool)

(assert (=> b!4350714 (= e!2707420 tp!1329843)))

(declare-fun b!4350715 () Bool)

(declare-fun e!2707419 () Bool)

(assert (=> b!4350715 (= e!2707419 true)))

(declare-fun lt!1564437 () Unit!71041)

(declare-fun lt!1564431 () tuple2!48248)

(assert (=> b!4350715 (= lt!1564437 (forallContained!1727 (toList!2921 lt!1564440) lambda!139365 lt!1564431))))

(declare-fun b!4350716 () Bool)

(declare-fun e!2707418 () Bool)

(assert (=> b!4350716 (= e!2707418 e!2707423)))

(declare-fun res!1787404 () Bool)

(assert (=> b!4350716 (=> res!1787404 e!2707423)))

(declare-fun forall!9079 (List!49000 Int) Bool)

(assert (=> b!4350716 (= res!1787404 (not (forall!9079 (toList!2921 lt!1564440) lambda!139365)))))

(assert (=> b!4350716 (contains!11045 (extractMap!528 (toList!2921 lt!1564440)) key!3918)))

(declare-fun tail!6961 (ListLongMap!1571) ListLongMap!1571)

(assert (=> b!4350716 (= lt!1564440 (tail!6961 lm!1707))))

(declare-fun lt!1564436 () ListMap!2165)

(assert (=> b!4350716 (contains!11045 lt!1564436 key!3918)))

(declare-fun lt!1564438 () Unit!71041)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!12 (List!48999 K!10240 V!10486 ListMap!2165) Unit!71041)

(assert (=> b!4350716 (= lt!1564438 (lemmaAddToMapContainsAndNotInListThenInAcc!12 (_2!27418 (h!54411 (toList!2921 lm!1707))) key!3918 newValue!99 lt!1564436))))

(assert (=> b!4350716 (= lt!1564436 (extractMap!528 (t!355920 (toList!2921 lm!1707))))))

(declare-fun e!2707422 () Bool)

(assert (=> b!4350716 e!2707422))

(declare-fun res!1787413 () Bool)

(assert (=> b!4350716 (=> (not res!1787413) (not e!2707422))))

(declare-fun containsKey!640 (List!48999 K!10240) Bool)

(assert (=> b!4350716 (= res!1787413 (not (containsKey!640 (apply!11321 lm!1707 (_1!27418 (h!54411 (toList!2921 lm!1707)))) key!3918)))))

(declare-fun lt!1564434 () Unit!71041)

(declare-fun lemmaNotSameHashThenCannotContainKey!16 (ListLongMap!1571 K!10240 (_ BitVec 64) Hashable!4861) Unit!71041)

(assert (=> b!4350716 (= lt!1564434 (lemmaNotSameHashThenCannotContainKey!16 lm!1707 key!3918 (_1!27418 (h!54411 (toList!2921 lm!1707))) hashF!1247))))

(declare-fun tp_is_empty!25113 () Bool)

(declare-fun tp_is_empty!25115 () Bool)

(declare-fun b!4350717 () Bool)

(declare-fun e!2707421 () Bool)

(declare-fun tp!1329844 () Bool)

(assert (=> b!4350717 (= e!2707421 (and tp_is_empty!25113 tp_is_empty!25115 tp!1329844))))

(declare-fun b!4350718 () Bool)

(assert (=> b!4350718 (= e!2707424 e!2707418)))

(declare-fun res!1787403 () Bool)

(assert (=> b!4350718 (=> res!1787403 e!2707418)))

(get-info :version)

(assert (=> b!4350718 (= res!1787403 (or (and ((_ is Cons!48876) (toList!2921 lm!1707)) (= (_1!27418 (h!54411 (toList!2921 lm!1707))) hash!377)) (not ((_ is Cons!48876) (toList!2921 lm!1707))) (= (_1!27418 (h!54411 (toList!2921 lm!1707))) hash!377)))))

(declare-fun e!2707417 () Bool)

(assert (=> b!4350718 e!2707417))

(declare-fun res!1787415 () Bool)

(assert (=> b!4350718 (=> (not res!1787415) (not e!2707417))))

(declare-fun lt!1564442 () ListLongMap!1571)

(assert (=> b!4350718 (= res!1787415 (forall!9079 (toList!2921 lt!1564442) lambda!139365))))

(declare-fun +!596 (ListLongMap!1571 tuple2!48248) ListLongMap!1571)

(assert (=> b!4350718 (= lt!1564442 (+!596 lm!1707 (tuple2!48249 hash!377 newBucket!200)))))

(declare-fun lt!1564445 () Unit!71041)

(declare-fun addValidProp!123 (ListLongMap!1571 Int (_ BitVec 64) List!48999) Unit!71041)

(assert (=> b!4350718 (= lt!1564445 (addValidProp!123 lm!1707 lambda!139365 hash!377 newBucket!200))))

(assert (=> b!4350718 (forall!9079 (toList!2921 lm!1707) lambda!139365)))

(declare-fun b!4350709 () Bool)

(assert (=> b!4350709 (= e!2707422 (not (containsKey!640 (_2!27418 (h!54411 (toList!2921 lm!1707))) key!3918)))))

(declare-fun res!1787402 () Bool)

(assert (=> start!420400 (=> (not res!1787402) (not e!2707416))))

(assert (=> start!420400 (= res!1787402 (forall!9079 (toList!2921 lm!1707) lambda!139365))))

(assert (=> start!420400 e!2707416))

(assert (=> start!420400 e!2707421))

(assert (=> start!420400 true))

(declare-fun inv!64426 (ListLongMap!1571) Bool)

(assert (=> start!420400 (and (inv!64426 lm!1707) e!2707420)))

(assert (=> start!420400 tp_is_empty!25113))

(assert (=> start!420400 tp_is_empty!25115))

(declare-fun b!4350719 () Bool)

(declare-fun res!1787409 () Bool)

(assert (=> b!4350719 (=> res!1787409 e!2707419)))

(assert (=> b!4350719 (= res!1787409 (not (forall!9079 (toList!2921 lt!1564440) lambda!139365)))))

(declare-fun b!4350720 () Bool)

(declare-fun res!1787405 () Bool)

(assert (=> b!4350720 (=> (not res!1787405) (not e!2707416))))

(assert (=> b!4350720 (= res!1787405 (allKeysSameHashInMap!573 lm!1707 hashF!1247))))

(declare-fun b!4350721 () Bool)

(assert (=> b!4350721 (= e!2707417 (forall!9079 (toList!2921 lt!1564442) lambda!139365))))

(declare-fun b!4350722 () Bool)

(declare-fun res!1787416 () Bool)

(assert (=> b!4350722 (=> (not res!1787416) (not e!2707416))))

(declare-fun allKeysSameHash!427 (List!48999 (_ BitVec 64) Hashable!4861) Bool)

(assert (=> b!4350722 (= res!1787416 (allKeysSameHash!427 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4350723 () Bool)

(declare-fun res!1787406 () Bool)

(assert (=> b!4350723 (=> (not res!1787406) (not e!2707416))))

(declare-fun hash!1478 (Hashable!4861 K!10240) (_ BitVec 64))

(assert (=> b!4350723 (= res!1787406 (= (hash!1478 hashF!1247 key!3918) hash!377))))

(declare-fun b!4350724 () Bool)

(declare-fun res!1787412 () Bool)

(assert (=> b!4350724 (=> (not res!1787412) (not e!2707416))))

(assert (=> b!4350724 (= res!1787412 (contains!11044 lm!1707 hash!377))))

(declare-fun b!4350725 () Bool)

(assert (=> b!4350725 (= e!2707423 e!2707419)))

(declare-fun res!1787407 () Bool)

(assert (=> b!4350725 (=> res!1787407 e!2707419)))

(declare-fun lt!1564439 () List!48999)

(assert (=> b!4350725 (= res!1787407 (not (= newBucket!200 (Cons!48875 lt!1564432 (removePairForKey!439 lt!1564439 key!3918)))))))

(declare-fun lt!1564435 () Unit!71041)

(assert (=> b!4350725 (= lt!1564435 (forallContained!1727 (toList!2921 lt!1564440) lambda!139365 lt!1564431))))

(assert (=> b!4350725 (contains!11046 (toList!2921 lt!1564440) lt!1564431)))

(assert (=> b!4350725 (= lt!1564431 (tuple2!48249 hash!377 lt!1564439))))

(declare-fun lt!1564446 () Unit!71041)

(assert (=> b!4350725 (= lt!1564446 (lemmaGetValueByKeyImpliesContainsTuple!316 (toList!2921 lt!1564440) hash!377 lt!1564439))))

(assert (=> b!4350725 (= lt!1564439 (apply!11321 lt!1564440 hash!377))))

(declare-fun b!4350726 () Bool)

(declare-fun res!1787411 () Bool)

(assert (=> b!4350726 (=> res!1787411 e!2707424)))

(declare-fun noDuplicateKeys!469 (List!48999) Bool)

(assert (=> b!4350726 (= res!1787411 (not (noDuplicateKeys!469 newBucket!200)))))

(assert (= (and start!420400 res!1787402) b!4350720))

(assert (= (and b!4350720 res!1787405) b!4350723))

(assert (= (and b!4350723 res!1787406) b!4350722))

(assert (= (and b!4350722 res!1787416) b!4350711))

(assert (= (and b!4350711 res!1787414) b!4350724))

(assert (= (and b!4350724 res!1787412) b!4350713))

(assert (= (and b!4350713 (not res!1787408)) b!4350726))

(assert (= (and b!4350726 (not res!1787411)) b!4350718))

(assert (= (and b!4350718 res!1787415) b!4350721))

(assert (= (and b!4350718 (not res!1787403)) b!4350716))

(assert (= (and b!4350716 res!1787413) b!4350709))

(assert (= (and b!4350716 (not res!1787404)) b!4350712))

(assert (= (and b!4350712 (not res!1787410)) b!4350710))

(assert (= (and b!4350710 (not res!1787417)) b!4350725))

(assert (= (and b!4350725 (not res!1787407)) b!4350719))

(assert (= (and b!4350719 (not res!1787409)) b!4350715))

(assert (= (and start!420400 ((_ is Cons!48875) newBucket!200)) b!4350717))

(assert (= start!420400 b!4350714))

(declare-fun m!4960883 () Bool)

(assert (=> b!4350719 m!4960883))

(declare-fun m!4960885 () Bool)

(assert (=> b!4350712 m!4960885))

(declare-fun m!4960887 () Bool)

(assert (=> b!4350715 m!4960887))

(declare-fun m!4960889 () Bool)

(assert (=> b!4350713 m!4960889))

(declare-fun m!4960891 () Bool)

(assert (=> b!4350713 m!4960891))

(declare-fun m!4960893 () Bool)

(assert (=> b!4350713 m!4960893))

(declare-fun m!4960895 () Bool)

(assert (=> b!4350713 m!4960895))

(declare-fun m!4960897 () Bool)

(assert (=> b!4350713 m!4960897))

(declare-fun m!4960899 () Bool)

(assert (=> b!4350725 m!4960899))

(declare-fun m!4960901 () Bool)

(assert (=> b!4350725 m!4960901))

(declare-fun m!4960903 () Bool)

(assert (=> b!4350725 m!4960903))

(declare-fun m!4960905 () Bool)

(assert (=> b!4350725 m!4960905))

(assert (=> b!4350725 m!4960887))

(declare-fun m!4960907 () Bool)

(assert (=> b!4350726 m!4960907))

(declare-fun m!4960909 () Bool)

(assert (=> b!4350723 m!4960909))

(declare-fun m!4960911 () Bool)

(assert (=> b!4350709 m!4960911))

(declare-fun m!4960913 () Bool)

(assert (=> b!4350724 m!4960913))

(declare-fun m!4960915 () Bool)

(assert (=> b!4350722 m!4960915))

(declare-fun m!4960917 () Bool)

(assert (=> b!4350711 m!4960917))

(assert (=> b!4350711 m!4960917))

(declare-fun m!4960919 () Bool)

(assert (=> b!4350711 m!4960919))

(declare-fun m!4960921 () Bool)

(assert (=> b!4350716 m!4960921))

(declare-fun m!4960923 () Bool)

(assert (=> b!4350716 m!4960923))

(declare-fun m!4960925 () Bool)

(assert (=> b!4350716 m!4960925))

(assert (=> b!4350716 m!4960925))

(declare-fun m!4960927 () Bool)

(assert (=> b!4350716 m!4960927))

(declare-fun m!4960929 () Bool)

(assert (=> b!4350716 m!4960929))

(declare-fun m!4960931 () Bool)

(assert (=> b!4350716 m!4960931))

(declare-fun m!4960933 () Bool)

(assert (=> b!4350716 m!4960933))

(assert (=> b!4350716 m!4960933))

(declare-fun m!4960935 () Bool)

(assert (=> b!4350716 m!4960935))

(assert (=> b!4350716 m!4960883))

(declare-fun m!4960937 () Bool)

(assert (=> b!4350716 m!4960937))

(declare-fun m!4960939 () Bool)

(assert (=> start!420400 m!4960939))

(declare-fun m!4960941 () Bool)

(assert (=> start!420400 m!4960941))

(declare-fun m!4960943 () Bool)

(assert (=> b!4350721 m!4960943))

(declare-fun m!4960945 () Bool)

(assert (=> b!4350720 m!4960945))

(declare-fun m!4960947 () Bool)

(assert (=> b!4350710 m!4960947))

(assert (=> b!4350718 m!4960943))

(declare-fun m!4960949 () Bool)

(assert (=> b!4350718 m!4960949))

(declare-fun m!4960951 () Bool)

(assert (=> b!4350718 m!4960951))

(assert (=> b!4350718 m!4960939))

(check-sat tp_is_empty!25113 (not b!4350724) (not b!4350721) (not b!4350717) (not b!4350718) tp_is_empty!25115 (not b!4350719) (not b!4350709) (not start!420400) (not b!4350722) (not b!4350716) (not b!4350710) (not b!4350720) (not b!4350714) (not b!4350711) (not b!4350726) (not b!4350725) (not b!4350712) (not b!4350723) (not b!4350713) (not b!4350715))
(check-sat)
