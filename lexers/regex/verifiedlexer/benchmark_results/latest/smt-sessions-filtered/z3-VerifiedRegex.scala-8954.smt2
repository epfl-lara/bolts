; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480492 () Bool)

(assert start!480492)

(declare-fun e!2944238 () Bool)

(declare-fun tp_is_empty!31335 () Bool)

(declare-fun tp_is_empty!31333 () Bool)

(declare-fun b!4720910 () Bool)

(declare-fun tp!1348321 () Bool)

(assert (=> b!4720910 (= e!2944238 (and tp_is_empty!31333 tp_is_empty!31335 tp!1348321))))

(declare-fun b!4720911 () Bool)

(declare-fun e!2944233 () Bool)

(declare-fun e!2944229 () Bool)

(assert (=> b!4720911 (= e!2944233 e!2944229)))

(declare-fun res!1997058 () Bool)

(assert (=> b!4720911 (=> (not res!1997058) (not e!2944229))))

(declare-datatypes ((K!14175 0))(
  ( (K!14176 (val!19611 Int)) )
))
(declare-datatypes ((V!14421 0))(
  ( (V!14422 (val!19612 Int)) )
))
(declare-datatypes ((tuple2!54434 0))(
  ( (tuple2!54435 (_1!30511 K!14175) (_2!30511 V!14421)) )
))
(declare-datatypes ((List!52942 0))(
  ( (Nil!52818) (Cons!52818 (h!59161 tuple2!54434) (t!360202 List!52942)) )
))
(declare-datatypes ((ListMap!5273 0))(
  ( (ListMap!5274 (toList!5909 List!52942)) )
))
(declare-fun lt!1885983 () ListMap!5273)

(declare-fun key!4653 () K!14175)

(declare-fun contains!16162 (ListMap!5273 K!14175) Bool)

(assert (=> b!4720911 (= res!1997058 (contains!16162 lt!1885983 key!4653))))

(declare-datatypes ((tuple2!54436 0))(
  ( (tuple2!54437 (_1!30512 (_ BitVec 64)) (_2!30512 List!52942)) )
))
(declare-datatypes ((List!52943 0))(
  ( (Nil!52819) (Cons!52819 (h!59162 tuple2!54436) (t!360203 List!52943)) )
))
(declare-datatypes ((ListLongMap!4439 0))(
  ( (ListLongMap!4440 (toList!5910 List!52943)) )
))
(declare-fun lm!2023 () ListLongMap!4439)

(declare-fun extractMap!2036 (List!52943) ListMap!5273)

(assert (=> b!4720911 (= lt!1885983 (extractMap!2036 (toList!5910 lm!2023)))))

(declare-fun b!4720912 () Bool)

(declare-fun res!1997059 () Bool)

(declare-fun e!2944237 () Bool)

(assert (=> b!4720912 (=> res!1997059 e!2944237)))

(declare-fun lt!1885982 () ListMap!5273)

(declare-fun lt!1885979 () ListMap!5273)

(assert (=> b!4720912 (= res!1997059 (not (= lt!1885982 lt!1885979)))))

(declare-fun b!4720913 () Bool)

(declare-fun e!2944231 () Bool)

(declare-fun e!2944230 () Bool)

(assert (=> b!4720913 (= e!2944231 e!2944230)))

(declare-fun res!1997050 () Bool)

(assert (=> b!4720913 (=> res!1997050 e!2944230)))

(declare-fun lt!1885981 () List!52942)

(declare-fun newBucket!218 () List!52942)

(assert (=> b!4720913 (= res!1997050 (not (= lt!1885981 newBucket!218)))))

(declare-fun oldBucket!34 () List!52942)

(declare-fun tail!8990 (List!52942) List!52942)

(assert (=> b!4720913 (= lt!1885981 (tail!8990 oldBucket!34))))

(declare-fun b!4720914 () Bool)

(declare-fun e!2944232 () Bool)

(declare-fun e!2944234 () Bool)

(assert (=> b!4720914 (= e!2944232 e!2944234)))

(declare-fun res!1997053 () Bool)

(assert (=> b!4720914 (=> res!1997053 e!2944234)))

(declare-fun lt!1885978 () ListMap!5273)

(declare-fun addToMapMapFromBucket!1440 (List!52942 ListMap!5273) ListMap!5273)

(assert (=> b!4720914 (= res!1997053 (not (= lt!1885982 (addToMapMapFromBucket!1440 newBucket!218 lt!1885978))))))

(assert (=> b!4720914 (= lt!1885982 (addToMapMapFromBucket!1440 lt!1885981 lt!1885978))))

(declare-fun b!4720915 () Bool)

(assert (=> b!4720915 (= e!2944230 e!2944232)))

(declare-fun res!1997048 () Bool)

(assert (=> b!4720915 (=> res!1997048 e!2944232)))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4720915 (= res!1997048 (not (= lt!1885979 (extractMap!2036 (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023)))))))))

(declare-fun lt!1885985 () List!52943)

(assert (=> b!4720915 (= lt!1885979 (extractMap!2036 lt!1885985))))

(assert (=> b!4720915 (= lt!1885985 (Cons!52819 (tuple2!54437 hash!405 lt!1885981) (t!360203 (toList!5910 lm!2023))))))

(declare-fun b!4720916 () Bool)

(assert (=> b!4720916 (= e!2944229 (not e!2944231))))

(declare-fun res!1997046 () Bool)

(assert (=> b!4720916 (=> res!1997046 e!2944231)))

(get-info :version)

(assert (=> b!4720916 (= res!1997046 (or (not ((_ is Cons!52818) oldBucket!34)) (not (= (_1!30511 (h!59161 oldBucket!34)) key!4653))))))

(assert (=> b!4720916 (= lt!1885983 (addToMapMapFromBucket!1440 (_2!30512 (h!59162 (toList!5910 lm!2023))) lt!1885978))))

(assert (=> b!4720916 (= lt!1885978 (extractMap!2036 (t!360203 (toList!5910 lm!2023))))))

(declare-fun tail!8991 (ListLongMap!4439) ListLongMap!4439)

(assert (=> b!4720916 (= (t!360203 (toList!5910 lm!2023)) (toList!5910 (tail!8991 lm!2023)))))

(declare-fun b!4720909 () Bool)

(declare-fun res!1997060 () Bool)

(assert (=> b!4720909 (=> (not res!1997060) (not e!2944233))))

(declare-fun noDuplicateKeys!2010 (List!52942) Bool)

(assert (=> b!4720909 (= res!1997060 (noDuplicateKeys!2010 oldBucket!34))))

(declare-fun res!1997047 () Bool)

(assert (=> start!480492 (=> (not res!1997047) (not e!2944233))))

(declare-fun lambda!215146 () Int)

(declare-fun forall!11578 (List!52943 Int) Bool)

(assert (=> start!480492 (= res!1997047 (forall!11578 (toList!5910 lm!2023) lambda!215146))))

(assert (=> start!480492 e!2944233))

(declare-fun e!2944235 () Bool)

(declare-fun inv!68049 (ListLongMap!4439) Bool)

(assert (=> start!480492 (and (inv!68049 lm!2023) e!2944235)))

(assert (=> start!480492 tp_is_empty!31333))

(declare-fun e!2944236 () Bool)

(assert (=> start!480492 e!2944236))

(assert (=> start!480492 true))

(assert (=> start!480492 e!2944238))

(declare-fun b!4720917 () Bool)

(declare-fun res!1997049 () Bool)

(assert (=> b!4720917 (=> (not res!1997049) (not e!2944229))))

(declare-datatypes ((Hashable!6379 0))(
  ( (HashableExt!6378 (__x!32082 Int)) )
))
(declare-fun hashF!1323 () Hashable!6379)

(declare-fun allKeysSameHashInMap!1924 (ListLongMap!4439 Hashable!6379) Bool)

(assert (=> b!4720917 (= res!1997049 (allKeysSameHashInMap!1924 lm!2023 hashF!1323))))

(declare-fun b!4720918 () Bool)

(declare-fun tp!1348320 () Bool)

(assert (=> b!4720918 (= e!2944235 tp!1348320)))

(declare-fun b!4720919 () Bool)

(assert (=> b!4720919 (= e!2944234 e!2944237)))

(declare-fun res!1997063 () Bool)

(assert (=> b!4720919 (=> res!1997063 e!2944237)))

(declare-fun eq!1127 (ListMap!5273 ListMap!5273) Bool)

(declare-fun +!2265 (ListMap!5273 tuple2!54434) ListMap!5273)

(assert (=> b!4720919 (= res!1997063 (not (eq!1127 (+!2265 lt!1885982 (h!59161 oldBucket!34)) (addToMapMapFromBucket!1440 oldBucket!34 lt!1885978))))))

(declare-fun lt!1885984 () tuple2!54434)

(assert (=> b!4720919 (eq!1127 (addToMapMapFromBucket!1440 (Cons!52818 lt!1885984 lt!1885981) lt!1885978) (+!2265 lt!1885982 lt!1885984))))

(declare-datatypes ((Unit!129632 0))(
  ( (Unit!129633) )
))
(declare-fun lt!1885980 () Unit!129632)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!376 (tuple2!54434 List!52942 ListMap!5273) Unit!129632)

(assert (=> b!4720919 (= lt!1885980 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!376 lt!1885984 lt!1885981 lt!1885978))))

(declare-fun head!10241 (List!52942) tuple2!54434)

(assert (=> b!4720919 (= lt!1885984 (head!10241 oldBucket!34))))

(declare-fun b!4720920 () Bool)

(declare-fun res!1997051 () Bool)

(assert (=> b!4720920 (=> (not res!1997051) (not e!2944233))))

(assert (=> b!4720920 (= res!1997051 (noDuplicateKeys!2010 newBucket!218))))

(declare-fun b!4720921 () Bool)

(declare-fun res!1997056 () Bool)

(assert (=> b!4720921 (=> res!1997056 e!2944237)))

(declare-fun containsKey!3361 (List!52942 K!14175) Bool)

(assert (=> b!4720921 (= res!1997056 (containsKey!3361 lt!1885981 key!4653))))

(declare-fun b!4720922 () Bool)

(declare-fun res!1997057 () Bool)

(assert (=> b!4720922 (=> (not res!1997057) (not e!2944233))))

(declare-fun removePairForKey!1605 (List!52942 K!14175) List!52942)

(assert (=> b!4720922 (= res!1997057 (= (removePairForKey!1605 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4720923 () Bool)

(declare-fun res!1997055 () Bool)

(assert (=> b!4720923 (=> (not res!1997055) (not e!2944229))))

(declare-fun hash!4376 (Hashable!6379 K!14175) (_ BitVec 64))

(assert (=> b!4720923 (= res!1997055 (= (hash!4376 hashF!1323 key!4653) hash!405))))

(declare-fun b!4720924 () Bool)

(declare-fun tp!1348319 () Bool)

(assert (=> b!4720924 (= e!2944236 (and tp_is_empty!31333 tp_is_empty!31335 tp!1348319))))

(declare-fun b!4720925 () Bool)

(declare-fun res!1997061 () Bool)

(assert (=> b!4720925 (=> (not res!1997061) (not e!2944229))))

(declare-fun head!10242 (List!52943) tuple2!54436)

(assert (=> b!4720925 (= res!1997061 (= (head!10242 (toList!5910 lm!2023)) (tuple2!54437 hash!405 oldBucket!34)))))

(declare-fun b!4720926 () Bool)

(declare-fun res!1997054 () Bool)

(assert (=> b!4720926 (=> (not res!1997054) (not e!2944229))))

(declare-fun allKeysSameHash!1836 (List!52942 (_ BitVec 64) Hashable!6379) Bool)

(assert (=> b!4720926 (= res!1997054 (allKeysSameHash!1836 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4720927 () Bool)

(declare-fun res!1997062 () Bool)

(assert (=> b!4720927 (=> (not res!1997062) (not e!2944233))))

(assert (=> b!4720927 (= res!1997062 (allKeysSameHash!1836 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4720928 () Bool)

(assert (=> b!4720928 (= e!2944237 (forall!11578 lt!1885985 lambda!215146))))

(declare-fun b!4720929 () Bool)

(declare-fun res!1997052 () Bool)

(assert (=> b!4720929 (=> (not res!1997052) (not e!2944229))))

(assert (=> b!4720929 (= res!1997052 ((_ is Cons!52819) (toList!5910 lm!2023)))))

(assert (= (and start!480492 res!1997047) b!4720909))

(assert (= (and b!4720909 res!1997060) b!4720920))

(assert (= (and b!4720920 res!1997051) b!4720922))

(assert (= (and b!4720922 res!1997057) b!4720927))

(assert (= (and b!4720927 res!1997062) b!4720911))

(assert (= (and b!4720911 res!1997058) b!4720923))

(assert (= (and b!4720923 res!1997055) b!4720926))

(assert (= (and b!4720926 res!1997054) b!4720917))

(assert (= (and b!4720917 res!1997049) b!4720925))

(assert (= (and b!4720925 res!1997061) b!4720929))

(assert (= (and b!4720929 res!1997052) b!4720916))

(assert (= (and b!4720916 (not res!1997046)) b!4720913))

(assert (= (and b!4720913 (not res!1997050)) b!4720915))

(assert (= (and b!4720915 (not res!1997048)) b!4720914))

(assert (= (and b!4720914 (not res!1997053)) b!4720919))

(assert (= (and b!4720919 (not res!1997063)) b!4720921))

(assert (= (and b!4720921 (not res!1997056)) b!4720912))

(assert (= (and b!4720912 (not res!1997059)) b!4720928))

(assert (= start!480492 b!4720918))

(assert (= (and start!480492 ((_ is Cons!52818) oldBucket!34)) b!4720924))

(assert (= (and start!480492 ((_ is Cons!52818) newBucket!218)) b!4720910))

(declare-fun m!5654663 () Bool)

(assert (=> b!4720920 m!5654663))

(declare-fun m!5654665 () Bool)

(assert (=> b!4720921 m!5654665))

(declare-fun m!5654667 () Bool)

(assert (=> b!4720913 m!5654667))

(declare-fun m!5654669 () Bool)

(assert (=> b!4720915 m!5654669))

(declare-fun m!5654671 () Bool)

(assert (=> b!4720915 m!5654671))

(declare-fun m!5654673 () Bool)

(assert (=> b!4720926 m!5654673))

(declare-fun m!5654675 () Bool)

(assert (=> start!480492 m!5654675))

(declare-fun m!5654677 () Bool)

(assert (=> start!480492 m!5654677))

(declare-fun m!5654679 () Bool)

(assert (=> b!4720916 m!5654679))

(declare-fun m!5654681 () Bool)

(assert (=> b!4720916 m!5654681))

(declare-fun m!5654683 () Bool)

(assert (=> b!4720916 m!5654683))

(declare-fun m!5654685 () Bool)

(assert (=> b!4720922 m!5654685))

(declare-fun m!5654687 () Bool)

(assert (=> b!4720914 m!5654687))

(declare-fun m!5654689 () Bool)

(assert (=> b!4720914 m!5654689))

(declare-fun m!5654691 () Bool)

(assert (=> b!4720917 m!5654691))

(declare-fun m!5654693 () Bool)

(assert (=> b!4720925 m!5654693))

(declare-fun m!5654695 () Bool)

(assert (=> b!4720909 m!5654695))

(declare-fun m!5654697 () Bool)

(assert (=> b!4720923 m!5654697))

(declare-fun m!5654699 () Bool)

(assert (=> b!4720928 m!5654699))

(declare-fun m!5654701 () Bool)

(assert (=> b!4720911 m!5654701))

(declare-fun m!5654703 () Bool)

(assert (=> b!4720911 m!5654703))

(declare-fun m!5654705 () Bool)

(assert (=> b!4720927 m!5654705))

(declare-fun m!5654707 () Bool)

(assert (=> b!4720919 m!5654707))

(declare-fun m!5654709 () Bool)

(assert (=> b!4720919 m!5654709))

(declare-fun m!5654711 () Bool)

(assert (=> b!4720919 m!5654711))

(declare-fun m!5654713 () Bool)

(assert (=> b!4720919 m!5654713))

(declare-fun m!5654715 () Bool)

(assert (=> b!4720919 m!5654715))

(assert (=> b!4720919 m!5654707))

(assert (=> b!4720919 m!5654709))

(declare-fun m!5654717 () Bool)

(assert (=> b!4720919 m!5654717))

(declare-fun m!5654719 () Bool)

(assert (=> b!4720919 m!5654719))

(assert (=> b!4720919 m!5654719))

(assert (=> b!4720919 m!5654715))

(declare-fun m!5654721 () Bool)

(assert (=> b!4720919 m!5654721))

(check-sat (not b!4720926) (not b!4720921) (not b!4720922) (not b!4720914) (not b!4720911) (not b!4720925) (not b!4720918) (not b!4720909) (not b!4720924) tp_is_empty!31335 tp_is_empty!31333 (not b!4720928) (not b!4720916) (not start!480492) (not b!4720910) (not b!4720927) (not b!4720915) (not b!4720917) (not b!4720919) (not b!4720920) (not b!4720923) (not b!4720913))
(check-sat)
(get-model)

(declare-fun b!4721035 () Bool)

(assert (=> b!4721035 true))

(declare-fun bs!1109265 () Bool)

(declare-fun b!4721039 () Bool)

(assert (= bs!1109265 (and b!4721039 b!4721035)))

(declare-fun lambda!215236 () Int)

(declare-fun lambda!215235 () Int)

(assert (=> bs!1109265 (= lambda!215236 lambda!215235)))

(assert (=> b!4721039 true))

(declare-fun lt!1886214 () ListMap!5273)

(declare-fun lambda!215237 () Int)

(assert (=> bs!1109265 (= (= lt!1886214 lt!1885978) (= lambda!215237 lambda!215235))))

(assert (=> b!4721039 (= (= lt!1886214 lt!1885978) (= lambda!215237 lambda!215236))))

(assert (=> b!4721039 true))

(declare-fun bs!1109266 () Bool)

(declare-fun d!1502825 () Bool)

(assert (= bs!1109266 (and d!1502825 b!4721035)))

(declare-fun lt!1886206 () ListMap!5273)

(declare-fun lambda!215238 () Int)

(assert (=> bs!1109266 (= (= lt!1886206 lt!1885978) (= lambda!215238 lambda!215235))))

(declare-fun bs!1109267 () Bool)

(assert (= bs!1109267 (and d!1502825 b!4721039)))

(assert (=> bs!1109267 (= (= lt!1886206 lt!1885978) (= lambda!215238 lambda!215236))))

(assert (=> bs!1109267 (= (= lt!1886206 lt!1886214) (= lambda!215238 lambda!215237))))

(assert (=> d!1502825 true))

(declare-fun bm!330122 () Bool)

(declare-fun c!806246 () Bool)

(declare-fun call!330127 () Bool)

(declare-fun forall!11580 (List!52942 Int) Bool)

(assert (=> bm!330122 (= call!330127 (forall!11580 (toList!5909 lt!1885978) (ite c!806246 lambda!215235 lambda!215237)))))

(declare-fun e!2944305 () ListMap!5273)

(assert (=> b!4721035 (= e!2944305 lt!1885978)))

(declare-fun lt!1886212 () Unit!129632)

(declare-fun call!330128 () Unit!129632)

(assert (=> b!4721035 (= lt!1886212 call!330128)))

(declare-fun call!330129 () Bool)

(assert (=> b!4721035 call!330129))

(declare-fun lt!1886207 () Unit!129632)

(assert (=> b!4721035 (= lt!1886207 lt!1886212)))

(assert (=> b!4721035 call!330127))

(declare-fun lt!1886213 () Unit!129632)

(declare-fun Unit!129656 () Unit!129632)

(assert (=> b!4721035 (= lt!1886213 Unit!129656)))

(declare-fun b!4721036 () Bool)

(declare-fun res!1997121 () Bool)

(declare-fun e!2944303 () Bool)

(assert (=> b!4721036 (=> (not res!1997121) (not e!2944303))))

(assert (=> b!4721036 (= res!1997121 (forall!11580 (toList!5909 lt!1885978) lambda!215238))))

(declare-fun b!4721037 () Bool)

(declare-fun e!2944304 () Bool)

(assert (=> b!4721037 (= e!2944304 (forall!11580 (toList!5909 lt!1885978) lambda!215237))))

(declare-fun b!4721038 () Bool)

(declare-fun invariantList!1507 (List!52942) Bool)

(assert (=> b!4721038 (= e!2944303 (invariantList!1507 (toList!5909 lt!1886206)))))

(declare-fun lt!1886217 () ListMap!5273)

(declare-fun bm!330123 () Bool)

(assert (=> bm!330123 (= call!330129 (forall!11580 (ite c!806246 (toList!5909 lt!1885978) (toList!5909 lt!1886217)) (ite c!806246 lambda!215235 lambda!215237)))))

(assert (=> d!1502825 e!2944303))

(declare-fun res!1997122 () Bool)

(assert (=> d!1502825 (=> (not res!1997122) (not e!2944303))))

(assert (=> d!1502825 (= res!1997122 (forall!11580 (_2!30512 (h!59162 (toList!5910 lm!2023))) lambda!215238))))

(assert (=> d!1502825 (= lt!1886206 e!2944305)))

(assert (=> d!1502825 (= c!806246 ((_ is Nil!52818) (_2!30512 (h!59162 (toList!5910 lm!2023)))))))

(assert (=> d!1502825 (noDuplicateKeys!2010 (_2!30512 (h!59162 (toList!5910 lm!2023))))))

(assert (=> d!1502825 (= (addToMapMapFromBucket!1440 (_2!30512 (h!59162 (toList!5910 lm!2023))) lt!1885978) lt!1886206)))

(assert (=> b!4721039 (= e!2944305 lt!1886214)))

(assert (=> b!4721039 (= lt!1886217 (+!2265 lt!1885978 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023))))))))

(assert (=> b!4721039 (= lt!1886214 (addToMapMapFromBucket!1440 (t!360202 (_2!30512 (h!59162 (toList!5910 lm!2023)))) (+!2265 lt!1885978 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023)))))))))

(declare-fun lt!1886202 () Unit!129632)

(assert (=> b!4721039 (= lt!1886202 call!330128)))

(assert (=> b!4721039 (forall!11580 (toList!5909 lt!1885978) lambda!215236)))

(declare-fun lt!1886216 () Unit!129632)

(assert (=> b!4721039 (= lt!1886216 lt!1886202)))

(assert (=> b!4721039 (forall!11580 (toList!5909 lt!1886217) lambda!215237)))

(declare-fun lt!1886215 () Unit!129632)

(declare-fun Unit!129657 () Unit!129632)

(assert (=> b!4721039 (= lt!1886215 Unit!129657)))

(assert (=> b!4721039 (forall!11580 (t!360202 (_2!30512 (h!59162 (toList!5910 lm!2023)))) lambda!215237)))

(declare-fun lt!1886218 () Unit!129632)

(declare-fun Unit!129658 () Unit!129632)

(assert (=> b!4721039 (= lt!1886218 Unit!129658)))

(declare-fun lt!1886208 () Unit!129632)

(declare-fun Unit!129659 () Unit!129632)

(assert (=> b!4721039 (= lt!1886208 Unit!129659)))

(declare-fun lt!1886219 () Unit!129632)

(declare-fun forallContained!3633 (List!52942 Int tuple2!54434) Unit!129632)

(assert (=> b!4721039 (= lt!1886219 (forallContained!3633 (toList!5909 lt!1886217) lambda!215237 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023))))))))

(assert (=> b!4721039 (contains!16162 lt!1886217 (_1!30511 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023))))))))

(declare-fun lt!1886220 () Unit!129632)

(declare-fun Unit!129660 () Unit!129632)

(assert (=> b!4721039 (= lt!1886220 Unit!129660)))

(assert (=> b!4721039 (contains!16162 lt!1886214 (_1!30511 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023))))))))

(declare-fun lt!1886221 () Unit!129632)

(declare-fun Unit!129661 () Unit!129632)

(assert (=> b!4721039 (= lt!1886221 Unit!129661)))

(assert (=> b!4721039 (forall!11580 (_2!30512 (h!59162 (toList!5910 lm!2023))) lambda!215237)))

(declare-fun lt!1886209 () Unit!129632)

(declare-fun Unit!129662 () Unit!129632)

(assert (=> b!4721039 (= lt!1886209 Unit!129662)))

(assert (=> b!4721039 call!330129))

(declare-fun lt!1886205 () Unit!129632)

(declare-fun Unit!129663 () Unit!129632)

(assert (=> b!4721039 (= lt!1886205 Unit!129663)))

(declare-fun lt!1886210 () Unit!129632)

(declare-fun Unit!129664 () Unit!129632)

(assert (=> b!4721039 (= lt!1886210 Unit!129664)))

(declare-fun lt!1886211 () Unit!129632)

(declare-fun addForallContainsKeyThenBeforeAdding!792 (ListMap!5273 ListMap!5273 K!14175 V!14421) Unit!129632)

(assert (=> b!4721039 (= lt!1886211 (addForallContainsKeyThenBeforeAdding!792 lt!1885978 lt!1886214 (_1!30511 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023))))) (_2!30511 (h!59161 (_2!30512 (h!59162 (toList!5910 lm!2023)))))))))

(assert (=> b!4721039 (forall!11580 (toList!5909 lt!1885978) lambda!215237)))

(declare-fun lt!1886204 () Unit!129632)

(assert (=> b!4721039 (= lt!1886204 lt!1886211)))

(assert (=> b!4721039 call!330127))

(declare-fun lt!1886203 () Unit!129632)

(declare-fun Unit!129665 () Unit!129632)

(assert (=> b!4721039 (= lt!1886203 Unit!129665)))

(declare-fun res!1997123 () Bool)

(assert (=> b!4721039 (= res!1997123 (forall!11580 (_2!30512 (h!59162 (toList!5910 lm!2023))) lambda!215237))))

(assert (=> b!4721039 (=> (not res!1997123) (not e!2944304))))

(assert (=> b!4721039 e!2944304))

(declare-fun lt!1886222 () Unit!129632)

(declare-fun Unit!129666 () Unit!129632)

(assert (=> b!4721039 (= lt!1886222 Unit!129666)))

(declare-fun bm!330124 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!793 (ListMap!5273) Unit!129632)

(assert (=> bm!330124 (= call!330128 (lemmaContainsAllItsOwnKeys!793 lt!1885978))))

(assert (= (and d!1502825 c!806246) b!4721035))

(assert (= (and d!1502825 (not c!806246)) b!4721039))

(assert (= (and b!4721039 res!1997123) b!4721037))

(assert (= (or b!4721035 b!4721039) bm!330124))

(assert (= (or b!4721035 b!4721039) bm!330123))

(assert (= (or b!4721035 b!4721039) bm!330122))

(assert (= (and d!1502825 res!1997122) b!4721036))

(assert (= (and b!4721036 res!1997121) b!4721038))

(declare-fun m!5654987 () Bool)

(assert (=> b!4721037 m!5654987))

(declare-fun m!5654989 () Bool)

(assert (=> b!4721038 m!5654989))

(declare-fun m!5654991 () Bool)

(assert (=> d!1502825 m!5654991))

(declare-fun m!5654993 () Bool)

(assert (=> d!1502825 m!5654993))

(declare-fun m!5654995 () Bool)

(assert (=> bm!330124 m!5654995))

(declare-fun m!5654997 () Bool)

(assert (=> b!4721036 m!5654997))

(declare-fun m!5654999 () Bool)

(assert (=> bm!330123 m!5654999))

(declare-fun m!5655001 () Bool)

(assert (=> b!4721039 m!5655001))

(declare-fun m!5655003 () Bool)

(assert (=> b!4721039 m!5655003))

(declare-fun m!5655005 () Bool)

(assert (=> b!4721039 m!5655005))

(declare-fun m!5655007 () Bool)

(assert (=> b!4721039 m!5655007))

(declare-fun m!5655009 () Bool)

(assert (=> b!4721039 m!5655009))

(assert (=> b!4721039 m!5654987))

(declare-fun m!5655011 () Bool)

(assert (=> b!4721039 m!5655011))

(declare-fun m!5655013 () Bool)

(assert (=> b!4721039 m!5655013))

(declare-fun m!5655015 () Bool)

(assert (=> b!4721039 m!5655015))

(assert (=> b!4721039 m!5655001))

(assert (=> b!4721039 m!5655003))

(declare-fun m!5655017 () Bool)

(assert (=> b!4721039 m!5655017))

(declare-fun m!5655019 () Bool)

(assert (=> b!4721039 m!5655019))

(declare-fun m!5655021 () Bool)

(assert (=> bm!330122 m!5655021))

(assert (=> b!4720916 d!1502825))

(declare-fun bs!1109274 () Bool)

(declare-fun d!1502861 () Bool)

(assert (= bs!1109274 (and d!1502861 start!480492)))

(declare-fun lambda!215242 () Int)

(assert (=> bs!1109274 (= lambda!215242 lambda!215146)))

(declare-fun lt!1886250 () ListMap!5273)

(assert (=> d!1502861 (invariantList!1507 (toList!5909 lt!1886250))))

(declare-fun e!2944334 () ListMap!5273)

(assert (=> d!1502861 (= lt!1886250 e!2944334)))

(declare-fun c!806259 () Bool)

(assert (=> d!1502861 (= c!806259 ((_ is Cons!52819) (t!360203 (toList!5910 lm!2023))))))

(assert (=> d!1502861 (forall!11578 (t!360203 (toList!5910 lm!2023)) lambda!215242)))

(assert (=> d!1502861 (= (extractMap!2036 (t!360203 (toList!5910 lm!2023))) lt!1886250)))

(declare-fun b!4721086 () Bool)

(assert (=> b!4721086 (= e!2944334 (addToMapMapFromBucket!1440 (_2!30512 (h!59162 (t!360203 (toList!5910 lm!2023)))) (extractMap!2036 (t!360203 (t!360203 (toList!5910 lm!2023))))))))

(declare-fun b!4721087 () Bool)

(assert (=> b!4721087 (= e!2944334 (ListMap!5274 Nil!52818))))

(assert (= (and d!1502861 c!806259) b!4721086))

(assert (= (and d!1502861 (not c!806259)) b!4721087))

(declare-fun m!5655051 () Bool)

(assert (=> d!1502861 m!5655051))

(declare-fun m!5655053 () Bool)

(assert (=> d!1502861 m!5655053))

(declare-fun m!5655055 () Bool)

(assert (=> b!4721086 m!5655055))

(assert (=> b!4721086 m!5655055))

(declare-fun m!5655057 () Bool)

(assert (=> b!4721086 m!5655057))

(assert (=> b!4720916 d!1502861))

(declare-fun d!1502869 () Bool)

(declare-fun tail!8992 (List!52943) List!52943)

(assert (=> d!1502869 (= (tail!8991 lm!2023) (ListLongMap!4440 (tail!8992 (toList!5910 lm!2023))))))

(declare-fun bs!1109276 () Bool)

(assert (= bs!1109276 d!1502869))

(declare-fun m!5655059 () Bool)

(assert (=> bs!1109276 m!5655059))

(assert (=> b!4720916 d!1502869))

(declare-fun bs!1109277 () Bool)

(declare-fun d!1502871 () Bool)

(assert (= bs!1109277 (and d!1502871 b!4721035)))

(declare-fun lambda!215245 () Int)

(assert (=> bs!1109277 (not (= lambda!215245 lambda!215235))))

(declare-fun bs!1109278 () Bool)

(assert (= bs!1109278 (and d!1502871 b!4721039)))

(assert (=> bs!1109278 (not (= lambda!215245 lambda!215236))))

(assert (=> bs!1109278 (not (= lambda!215245 lambda!215237))))

(declare-fun bs!1109279 () Bool)

(assert (= bs!1109279 (and d!1502871 d!1502825)))

(assert (=> bs!1109279 (not (= lambda!215245 lambda!215238))))

(assert (=> d!1502871 true))

(assert (=> d!1502871 true))

(assert (=> d!1502871 (= (allKeysSameHash!1836 oldBucket!34 hash!405 hashF!1323) (forall!11580 oldBucket!34 lambda!215245))))

(declare-fun bs!1109280 () Bool)

(assert (= bs!1109280 d!1502871))

(declare-fun m!5655061 () Bool)

(assert (=> bs!1109280 m!5655061))

(assert (=> b!4720927 d!1502871))

(declare-fun bs!1109281 () Bool)

(declare-fun d!1502873 () Bool)

(assert (= bs!1109281 (and d!1502873 start!480492)))

(declare-fun lambda!215248 () Int)

(assert (=> bs!1109281 (not (= lambda!215248 lambda!215146))))

(declare-fun bs!1109282 () Bool)

(assert (= bs!1109282 (and d!1502873 d!1502861)))

(assert (=> bs!1109282 (not (= lambda!215248 lambda!215242))))

(assert (=> d!1502873 true))

(assert (=> d!1502873 (= (allKeysSameHashInMap!1924 lm!2023 hashF!1323) (forall!11578 (toList!5910 lm!2023) lambda!215248))))

(declare-fun bs!1109283 () Bool)

(assert (= bs!1109283 d!1502873))

(declare-fun m!5655063 () Bool)

(assert (=> bs!1109283 m!5655063))

(assert (=> b!4720917 d!1502873))

(declare-fun d!1502875 () Bool)

(declare-fun res!1997137 () Bool)

(declare-fun e!2944339 () Bool)

(assert (=> d!1502875 (=> res!1997137 e!2944339)))

(assert (=> d!1502875 (= res!1997137 ((_ is Nil!52819) lt!1885985))))

(assert (=> d!1502875 (= (forall!11578 lt!1885985 lambda!215146) e!2944339)))

(declare-fun b!4721098 () Bool)

(declare-fun e!2944340 () Bool)

(assert (=> b!4721098 (= e!2944339 e!2944340)))

(declare-fun res!1997138 () Bool)

(assert (=> b!4721098 (=> (not res!1997138) (not e!2944340))))

(declare-fun dynLambda!21814 (Int tuple2!54436) Bool)

(assert (=> b!4721098 (= res!1997138 (dynLambda!21814 lambda!215146 (h!59162 lt!1885985)))))

(declare-fun b!4721099 () Bool)

(assert (=> b!4721099 (= e!2944340 (forall!11578 (t!360203 lt!1885985) lambda!215146))))

(assert (= (and d!1502875 (not res!1997137)) b!4721098))

(assert (= (and b!4721098 res!1997138) b!4721099))

(declare-fun b_lambda!178313 () Bool)

(assert (=> (not b_lambda!178313) (not b!4721098)))

(declare-fun m!5655065 () Bool)

(assert (=> b!4721098 m!5655065))

(declare-fun m!5655067 () Bool)

(assert (=> b!4721099 m!5655067))

(assert (=> b!4720928 d!1502875))

(declare-fun d!1502877 () Bool)

(declare-fun e!2944343 () Bool)

(assert (=> d!1502877 e!2944343))

(declare-fun res!1997144 () Bool)

(assert (=> d!1502877 (=> (not res!1997144) (not e!2944343))))

(declare-fun lt!1886262 () ListMap!5273)

(assert (=> d!1502877 (= res!1997144 (contains!16162 lt!1886262 (_1!30511 lt!1885984)))))

(declare-fun lt!1886259 () List!52942)

(assert (=> d!1502877 (= lt!1886262 (ListMap!5274 lt!1886259))))

(declare-fun lt!1886260 () Unit!129632)

(declare-fun lt!1886261 () Unit!129632)

(assert (=> d!1502877 (= lt!1886260 lt!1886261)))

(declare-datatypes ((Option!12354 0))(
  ( (None!12353) (Some!12353 (v!46926 V!14421)) )
))
(declare-fun getValueByKey!1950 (List!52942 K!14175) Option!12354)

(assert (=> d!1502877 (= (getValueByKey!1950 lt!1886259 (_1!30511 lt!1885984)) (Some!12353 (_2!30511 lt!1885984)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1081 (List!52942 K!14175 V!14421) Unit!129632)

(assert (=> d!1502877 (= lt!1886261 (lemmaContainsTupThenGetReturnValue!1081 lt!1886259 (_1!30511 lt!1885984) (_2!30511 lt!1885984)))))

(declare-fun insertNoDuplicatedKeys!589 (List!52942 K!14175 V!14421) List!52942)

(assert (=> d!1502877 (= lt!1886259 (insertNoDuplicatedKeys!589 (toList!5909 lt!1885982) (_1!30511 lt!1885984) (_2!30511 lt!1885984)))))

(assert (=> d!1502877 (= (+!2265 lt!1885982 lt!1885984) lt!1886262)))

(declare-fun b!4721104 () Bool)

(declare-fun res!1997143 () Bool)

(assert (=> b!4721104 (=> (not res!1997143) (not e!2944343))))

(assert (=> b!4721104 (= res!1997143 (= (getValueByKey!1950 (toList!5909 lt!1886262) (_1!30511 lt!1885984)) (Some!12353 (_2!30511 lt!1885984))))))

(declare-fun b!4721105 () Bool)

(declare-fun contains!16163 (List!52942 tuple2!54434) Bool)

(assert (=> b!4721105 (= e!2944343 (contains!16163 (toList!5909 lt!1886262) lt!1885984))))

(assert (= (and d!1502877 res!1997144) b!4721104))

(assert (= (and b!4721104 res!1997143) b!4721105))

(declare-fun m!5655069 () Bool)

(assert (=> d!1502877 m!5655069))

(declare-fun m!5655071 () Bool)

(assert (=> d!1502877 m!5655071))

(declare-fun m!5655073 () Bool)

(assert (=> d!1502877 m!5655073))

(declare-fun m!5655075 () Bool)

(assert (=> d!1502877 m!5655075))

(declare-fun m!5655077 () Bool)

(assert (=> b!4721104 m!5655077))

(declare-fun m!5655079 () Bool)

(assert (=> b!4721105 m!5655079))

(assert (=> b!4720919 d!1502877))

(declare-fun d!1502879 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9388 (List!52942) (InoxSet tuple2!54434))

(assert (=> d!1502879 (= (eq!1127 (+!2265 lt!1885982 (h!59161 oldBucket!34)) (addToMapMapFromBucket!1440 oldBucket!34 lt!1885978)) (= (content!9388 (toList!5909 (+!2265 lt!1885982 (h!59161 oldBucket!34)))) (content!9388 (toList!5909 (addToMapMapFromBucket!1440 oldBucket!34 lt!1885978)))))))

(declare-fun bs!1109284 () Bool)

(assert (= bs!1109284 d!1502879))

(declare-fun m!5655081 () Bool)

(assert (=> bs!1109284 m!5655081))

(declare-fun m!5655083 () Bool)

(assert (=> bs!1109284 m!5655083))

(assert (=> b!4720919 d!1502879))

(declare-fun d!1502881 () Bool)

(assert (=> d!1502881 (= (head!10241 oldBucket!34) (h!59161 oldBucket!34))))

(assert (=> b!4720919 d!1502881))

(declare-fun d!1502883 () Bool)

(assert (=> d!1502883 (eq!1127 (addToMapMapFromBucket!1440 (Cons!52818 lt!1885984 lt!1885981) lt!1885978) (+!2265 (addToMapMapFromBucket!1440 lt!1885981 lt!1885978) lt!1885984))))

(declare-fun lt!1886265 () Unit!129632)

(declare-fun choose!33301 (tuple2!54434 List!52942 ListMap!5273) Unit!129632)

(assert (=> d!1502883 (= lt!1886265 (choose!33301 lt!1885984 lt!1885981 lt!1885978))))

(assert (=> d!1502883 (noDuplicateKeys!2010 lt!1885981)))

(assert (=> d!1502883 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!376 lt!1885984 lt!1885981 lt!1885978) lt!1886265)))

(declare-fun bs!1109285 () Bool)

(assert (= bs!1109285 d!1502883))

(assert (=> bs!1109285 m!5654719))

(declare-fun m!5655085 () Bool)

(assert (=> bs!1109285 m!5655085))

(declare-fun m!5655087 () Bool)

(assert (=> bs!1109285 m!5655087))

(assert (=> bs!1109285 m!5654689))

(assert (=> bs!1109285 m!5655085))

(declare-fun m!5655089 () Bool)

(assert (=> bs!1109285 m!5655089))

(assert (=> bs!1109285 m!5654719))

(declare-fun m!5655091 () Bool)

(assert (=> bs!1109285 m!5655091))

(assert (=> bs!1109285 m!5654689))

(assert (=> b!4720919 d!1502883))

(declare-fun bs!1109286 () Bool)

(declare-fun b!4721106 () Bool)

(assert (= bs!1109286 (and b!4721106 d!1502871)))

(declare-fun lambda!215249 () Int)

(assert (=> bs!1109286 (not (= lambda!215249 lambda!215245))))

(declare-fun bs!1109287 () Bool)

(assert (= bs!1109287 (and b!4721106 b!4721039)))

(assert (=> bs!1109287 (= (= lt!1885978 lt!1886214) (= lambda!215249 lambda!215237))))

(declare-fun bs!1109288 () Bool)

(assert (= bs!1109288 (and b!4721106 b!4721035)))

(assert (=> bs!1109288 (= lambda!215249 lambda!215235)))

(declare-fun bs!1109289 () Bool)

(assert (= bs!1109289 (and b!4721106 d!1502825)))

(assert (=> bs!1109289 (= (= lt!1885978 lt!1886206) (= lambda!215249 lambda!215238))))

(assert (=> bs!1109287 (= lambda!215249 lambda!215236)))

(assert (=> b!4721106 true))

(declare-fun bs!1109290 () Bool)

(declare-fun b!4721110 () Bool)

(assert (= bs!1109290 (and b!4721110 d!1502871)))

(declare-fun lambda!215250 () Int)

(assert (=> bs!1109290 (not (= lambda!215250 lambda!215245))))

(declare-fun bs!1109291 () Bool)

(assert (= bs!1109291 (and b!4721110 b!4721106)))

(assert (=> bs!1109291 (= lambda!215250 lambda!215249)))

(declare-fun bs!1109292 () Bool)

(assert (= bs!1109292 (and b!4721110 b!4721039)))

(assert (=> bs!1109292 (= (= lt!1885978 lt!1886214) (= lambda!215250 lambda!215237))))

(declare-fun bs!1109293 () Bool)

(assert (= bs!1109293 (and b!4721110 b!4721035)))

(assert (=> bs!1109293 (= lambda!215250 lambda!215235)))

(declare-fun bs!1109294 () Bool)

(assert (= bs!1109294 (and b!4721110 d!1502825)))

(assert (=> bs!1109294 (= (= lt!1885978 lt!1886206) (= lambda!215250 lambda!215238))))

(assert (=> bs!1109292 (= lambda!215250 lambda!215236)))

(assert (=> b!4721110 true))

(declare-fun lt!1886278 () ListMap!5273)

(declare-fun lambda!215251 () Int)

(assert (=> bs!1109291 (= (= lt!1886278 lt!1885978) (= lambda!215251 lambda!215249))))

(assert (=> bs!1109292 (= (= lt!1886278 lt!1886214) (= lambda!215251 lambda!215237))))

(assert (=> bs!1109293 (= (= lt!1886278 lt!1885978) (= lambda!215251 lambda!215235))))

(assert (=> bs!1109294 (= (= lt!1886278 lt!1886206) (= lambda!215251 lambda!215238))))

(assert (=> bs!1109292 (= (= lt!1886278 lt!1885978) (= lambda!215251 lambda!215236))))

(assert (=> b!4721110 (= (= lt!1886278 lt!1885978) (= lambda!215251 lambda!215250))))

(assert (=> bs!1109290 (not (= lambda!215251 lambda!215245))))

(assert (=> b!4721110 true))

(declare-fun bs!1109295 () Bool)

(declare-fun d!1502885 () Bool)

(assert (= bs!1109295 (and d!1502885 b!4721110)))

(declare-fun lambda!215252 () Int)

(declare-fun lt!1886270 () ListMap!5273)

(assert (=> bs!1109295 (= (= lt!1886270 lt!1886278) (= lambda!215252 lambda!215251))))

(declare-fun bs!1109296 () Bool)

(assert (= bs!1109296 (and d!1502885 b!4721106)))

(assert (=> bs!1109296 (= (= lt!1886270 lt!1885978) (= lambda!215252 lambda!215249))))

(declare-fun bs!1109297 () Bool)

(assert (= bs!1109297 (and d!1502885 b!4721039)))

(assert (=> bs!1109297 (= (= lt!1886270 lt!1886214) (= lambda!215252 lambda!215237))))

(declare-fun bs!1109298 () Bool)

(assert (= bs!1109298 (and d!1502885 b!4721035)))

(assert (=> bs!1109298 (= (= lt!1886270 lt!1885978) (= lambda!215252 lambda!215235))))

(declare-fun bs!1109299 () Bool)

(assert (= bs!1109299 (and d!1502885 d!1502825)))

(assert (=> bs!1109299 (= (= lt!1886270 lt!1886206) (= lambda!215252 lambda!215238))))

(assert (=> bs!1109297 (= (= lt!1886270 lt!1885978) (= lambda!215252 lambda!215236))))

(assert (=> bs!1109295 (= (= lt!1886270 lt!1885978) (= lambda!215252 lambda!215250))))

(declare-fun bs!1109300 () Bool)

(assert (= bs!1109300 (and d!1502885 d!1502871)))

(assert (=> bs!1109300 (not (= lambda!215252 lambda!215245))))

(assert (=> d!1502885 true))

(declare-fun call!330133 () Bool)

(declare-fun c!806260 () Bool)

(declare-fun bm!330128 () Bool)

(assert (=> bm!330128 (= call!330133 (forall!11580 (toList!5909 lt!1885978) (ite c!806260 lambda!215249 lambda!215251)))))

(declare-fun e!2944346 () ListMap!5273)

(assert (=> b!4721106 (= e!2944346 lt!1885978)))

(declare-fun lt!1886276 () Unit!129632)

(declare-fun call!330134 () Unit!129632)

(assert (=> b!4721106 (= lt!1886276 call!330134)))

(declare-fun call!330135 () Bool)

(assert (=> b!4721106 call!330135))

(declare-fun lt!1886271 () Unit!129632)

(assert (=> b!4721106 (= lt!1886271 lt!1886276)))

(assert (=> b!4721106 call!330133))

(declare-fun lt!1886277 () Unit!129632)

(declare-fun Unit!129678 () Unit!129632)

(assert (=> b!4721106 (= lt!1886277 Unit!129678)))

(declare-fun b!4721107 () Bool)

(declare-fun res!1997145 () Bool)

(declare-fun e!2944344 () Bool)

(assert (=> b!4721107 (=> (not res!1997145) (not e!2944344))))

(assert (=> b!4721107 (= res!1997145 (forall!11580 (toList!5909 lt!1885978) lambda!215252))))

(declare-fun b!4721108 () Bool)

(declare-fun e!2944345 () Bool)

(assert (=> b!4721108 (= e!2944345 (forall!11580 (toList!5909 lt!1885978) lambda!215251))))

(declare-fun b!4721109 () Bool)

(assert (=> b!4721109 (= e!2944344 (invariantList!1507 (toList!5909 lt!1886270)))))

(declare-fun bm!330129 () Bool)

(declare-fun lt!1886281 () ListMap!5273)

(assert (=> bm!330129 (= call!330135 (forall!11580 (ite c!806260 (toList!5909 lt!1885978) (toList!5909 lt!1886281)) (ite c!806260 lambda!215249 lambda!215251)))))

(assert (=> d!1502885 e!2944344))

(declare-fun res!1997146 () Bool)

(assert (=> d!1502885 (=> (not res!1997146) (not e!2944344))))

(assert (=> d!1502885 (= res!1997146 (forall!11580 oldBucket!34 lambda!215252))))

(assert (=> d!1502885 (= lt!1886270 e!2944346)))

(assert (=> d!1502885 (= c!806260 ((_ is Nil!52818) oldBucket!34))))

(assert (=> d!1502885 (noDuplicateKeys!2010 oldBucket!34)))

(assert (=> d!1502885 (= (addToMapMapFromBucket!1440 oldBucket!34 lt!1885978) lt!1886270)))

(assert (=> b!4721110 (= e!2944346 lt!1886278)))

(assert (=> b!4721110 (= lt!1886281 (+!2265 lt!1885978 (h!59161 oldBucket!34)))))

(assert (=> b!4721110 (= lt!1886278 (addToMapMapFromBucket!1440 (t!360202 oldBucket!34) (+!2265 lt!1885978 (h!59161 oldBucket!34))))))

(declare-fun lt!1886266 () Unit!129632)

(assert (=> b!4721110 (= lt!1886266 call!330134)))

(assert (=> b!4721110 (forall!11580 (toList!5909 lt!1885978) lambda!215250)))

(declare-fun lt!1886280 () Unit!129632)

(assert (=> b!4721110 (= lt!1886280 lt!1886266)))

(assert (=> b!4721110 (forall!11580 (toList!5909 lt!1886281) lambda!215251)))

(declare-fun lt!1886279 () Unit!129632)

(declare-fun Unit!129679 () Unit!129632)

(assert (=> b!4721110 (= lt!1886279 Unit!129679)))

(assert (=> b!4721110 (forall!11580 (t!360202 oldBucket!34) lambda!215251)))

(declare-fun lt!1886282 () Unit!129632)

(declare-fun Unit!129680 () Unit!129632)

(assert (=> b!4721110 (= lt!1886282 Unit!129680)))

(declare-fun lt!1886272 () Unit!129632)

(declare-fun Unit!129681 () Unit!129632)

(assert (=> b!4721110 (= lt!1886272 Unit!129681)))

(declare-fun lt!1886283 () Unit!129632)

(assert (=> b!4721110 (= lt!1886283 (forallContained!3633 (toList!5909 lt!1886281) lambda!215251 (h!59161 oldBucket!34)))))

(assert (=> b!4721110 (contains!16162 lt!1886281 (_1!30511 (h!59161 oldBucket!34)))))

(declare-fun lt!1886284 () Unit!129632)

(declare-fun Unit!129682 () Unit!129632)

(assert (=> b!4721110 (= lt!1886284 Unit!129682)))

(assert (=> b!4721110 (contains!16162 lt!1886278 (_1!30511 (h!59161 oldBucket!34)))))

(declare-fun lt!1886285 () Unit!129632)

(declare-fun Unit!129683 () Unit!129632)

(assert (=> b!4721110 (= lt!1886285 Unit!129683)))

(assert (=> b!4721110 (forall!11580 oldBucket!34 lambda!215251)))

(declare-fun lt!1886273 () Unit!129632)

(declare-fun Unit!129684 () Unit!129632)

(assert (=> b!4721110 (= lt!1886273 Unit!129684)))

(assert (=> b!4721110 call!330135))

(declare-fun lt!1886269 () Unit!129632)

(declare-fun Unit!129685 () Unit!129632)

(assert (=> b!4721110 (= lt!1886269 Unit!129685)))

(declare-fun lt!1886274 () Unit!129632)

(declare-fun Unit!129686 () Unit!129632)

(assert (=> b!4721110 (= lt!1886274 Unit!129686)))

(declare-fun lt!1886275 () Unit!129632)

(assert (=> b!4721110 (= lt!1886275 (addForallContainsKeyThenBeforeAdding!792 lt!1885978 lt!1886278 (_1!30511 (h!59161 oldBucket!34)) (_2!30511 (h!59161 oldBucket!34))))))

(assert (=> b!4721110 (forall!11580 (toList!5909 lt!1885978) lambda!215251)))

(declare-fun lt!1886268 () Unit!129632)

(assert (=> b!4721110 (= lt!1886268 lt!1886275)))

(assert (=> b!4721110 call!330133))

(declare-fun lt!1886267 () Unit!129632)

(declare-fun Unit!129687 () Unit!129632)

(assert (=> b!4721110 (= lt!1886267 Unit!129687)))

(declare-fun res!1997147 () Bool)

(assert (=> b!4721110 (= res!1997147 (forall!11580 oldBucket!34 lambda!215251))))

(assert (=> b!4721110 (=> (not res!1997147) (not e!2944345))))

(assert (=> b!4721110 e!2944345))

(declare-fun lt!1886286 () Unit!129632)

(declare-fun Unit!129688 () Unit!129632)

(assert (=> b!4721110 (= lt!1886286 Unit!129688)))

(declare-fun bm!330130 () Bool)

(assert (=> bm!330130 (= call!330134 (lemmaContainsAllItsOwnKeys!793 lt!1885978))))

(assert (= (and d!1502885 c!806260) b!4721106))

(assert (= (and d!1502885 (not c!806260)) b!4721110))

(assert (= (and b!4721110 res!1997147) b!4721108))

(assert (= (or b!4721106 b!4721110) bm!330130))

(assert (= (or b!4721106 b!4721110) bm!330129))

(assert (= (or b!4721106 b!4721110) bm!330128))

(assert (= (and d!1502885 res!1997146) b!4721107))

(assert (= (and b!4721107 res!1997145) b!4721109))

(declare-fun m!5655093 () Bool)

(assert (=> b!4721108 m!5655093))

(declare-fun m!5655095 () Bool)

(assert (=> b!4721109 m!5655095))

(declare-fun m!5655097 () Bool)

(assert (=> d!1502885 m!5655097))

(assert (=> d!1502885 m!5654695))

(assert (=> bm!330130 m!5654995))

(declare-fun m!5655099 () Bool)

(assert (=> b!4721107 m!5655099))

(declare-fun m!5655101 () Bool)

(assert (=> bm!330129 m!5655101))

(declare-fun m!5655103 () Bool)

(assert (=> b!4721110 m!5655103))

(declare-fun m!5655105 () Bool)

(assert (=> b!4721110 m!5655105))

(declare-fun m!5655107 () Bool)

(assert (=> b!4721110 m!5655107))

(declare-fun m!5655109 () Bool)

(assert (=> b!4721110 m!5655109))

(declare-fun m!5655111 () Bool)

(assert (=> b!4721110 m!5655111))

(assert (=> b!4721110 m!5655093))

(declare-fun m!5655113 () Bool)

(assert (=> b!4721110 m!5655113))

(declare-fun m!5655115 () Bool)

(assert (=> b!4721110 m!5655115))

(declare-fun m!5655117 () Bool)

(assert (=> b!4721110 m!5655117))

(assert (=> b!4721110 m!5655103))

(assert (=> b!4721110 m!5655105))

(declare-fun m!5655119 () Bool)

(assert (=> b!4721110 m!5655119))

(declare-fun m!5655121 () Bool)

(assert (=> b!4721110 m!5655121))

(declare-fun m!5655123 () Bool)

(assert (=> bm!330128 m!5655123))

(assert (=> b!4720919 d!1502885))

(declare-fun d!1502887 () Bool)

(assert (=> d!1502887 (= (eq!1127 (addToMapMapFromBucket!1440 (Cons!52818 lt!1885984 lt!1885981) lt!1885978) (+!2265 lt!1885982 lt!1885984)) (= (content!9388 (toList!5909 (addToMapMapFromBucket!1440 (Cons!52818 lt!1885984 lt!1885981) lt!1885978))) (content!9388 (toList!5909 (+!2265 lt!1885982 lt!1885984)))))))

(declare-fun bs!1109301 () Bool)

(assert (= bs!1109301 d!1502887))

(declare-fun m!5655125 () Bool)

(assert (=> bs!1109301 m!5655125))

(declare-fun m!5655127 () Bool)

(assert (=> bs!1109301 m!5655127))

(assert (=> b!4720919 d!1502887))

(declare-fun bs!1109302 () Bool)

(declare-fun b!4721111 () Bool)

(assert (= bs!1109302 (and b!4721111 b!4721110)))

(declare-fun lambda!215253 () Int)

(assert (=> bs!1109302 (= (= lt!1885978 lt!1886278) (= lambda!215253 lambda!215251))))

(declare-fun bs!1109303 () Bool)

(assert (= bs!1109303 (and b!4721111 b!4721106)))

(assert (=> bs!1109303 (= lambda!215253 lambda!215249)))

(declare-fun bs!1109304 () Bool)

(assert (= bs!1109304 (and b!4721111 d!1502885)))

(assert (=> bs!1109304 (= (= lt!1885978 lt!1886270) (= lambda!215253 lambda!215252))))

(declare-fun bs!1109305 () Bool)

(assert (= bs!1109305 (and b!4721111 b!4721039)))

(assert (=> bs!1109305 (= (= lt!1885978 lt!1886214) (= lambda!215253 lambda!215237))))

(declare-fun bs!1109306 () Bool)

(assert (= bs!1109306 (and b!4721111 b!4721035)))

(assert (=> bs!1109306 (= lambda!215253 lambda!215235)))

(declare-fun bs!1109307 () Bool)

(assert (= bs!1109307 (and b!4721111 d!1502825)))

(assert (=> bs!1109307 (= (= lt!1885978 lt!1886206) (= lambda!215253 lambda!215238))))

(assert (=> bs!1109305 (= lambda!215253 lambda!215236)))

(assert (=> bs!1109302 (= lambda!215253 lambda!215250)))

(declare-fun bs!1109308 () Bool)

(assert (= bs!1109308 (and b!4721111 d!1502871)))

(assert (=> bs!1109308 (not (= lambda!215253 lambda!215245))))

(assert (=> b!4721111 true))

(declare-fun bs!1109309 () Bool)

(declare-fun b!4721115 () Bool)

(assert (= bs!1109309 (and b!4721115 b!4721110)))

(declare-fun lambda!215254 () Int)

(assert (=> bs!1109309 (= (= lt!1885978 lt!1886278) (= lambda!215254 lambda!215251))))

(declare-fun bs!1109310 () Bool)

(assert (= bs!1109310 (and b!4721115 d!1502885)))

(assert (=> bs!1109310 (= (= lt!1885978 lt!1886270) (= lambda!215254 lambda!215252))))

(declare-fun bs!1109311 () Bool)

(assert (= bs!1109311 (and b!4721115 b!4721039)))

(assert (=> bs!1109311 (= (= lt!1885978 lt!1886214) (= lambda!215254 lambda!215237))))

(declare-fun bs!1109312 () Bool)

(assert (= bs!1109312 (and b!4721115 b!4721035)))

(assert (=> bs!1109312 (= lambda!215254 lambda!215235)))

(declare-fun bs!1109313 () Bool)

(assert (= bs!1109313 (and b!4721115 d!1502825)))

(assert (=> bs!1109313 (= (= lt!1885978 lt!1886206) (= lambda!215254 lambda!215238))))

(assert (=> bs!1109311 (= lambda!215254 lambda!215236)))

(assert (=> bs!1109309 (= lambda!215254 lambda!215250)))

(declare-fun bs!1109314 () Bool)

(assert (= bs!1109314 (and b!4721115 d!1502871)))

(assert (=> bs!1109314 (not (= lambda!215254 lambda!215245))))

(declare-fun bs!1109315 () Bool)

(assert (= bs!1109315 (and b!4721115 b!4721111)))

(assert (=> bs!1109315 (= lambda!215254 lambda!215253)))

(declare-fun bs!1109316 () Bool)

(assert (= bs!1109316 (and b!4721115 b!4721106)))

(assert (=> bs!1109316 (= lambda!215254 lambda!215249)))

(assert (=> b!4721115 true))

(declare-fun lt!1886299 () ListMap!5273)

(declare-fun lambda!215255 () Int)

(assert (=> b!4721115 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215254))))

(assert (=> bs!1109309 (= (= lt!1886299 lt!1886278) (= lambda!215255 lambda!215251))))

(assert (=> bs!1109310 (= (= lt!1886299 lt!1886270) (= lambda!215255 lambda!215252))))

(assert (=> bs!1109311 (= (= lt!1886299 lt!1886214) (= lambda!215255 lambda!215237))))

(assert (=> bs!1109312 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215235))))

(assert (=> bs!1109313 (= (= lt!1886299 lt!1886206) (= lambda!215255 lambda!215238))))

(assert (=> bs!1109311 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215236))))

(assert (=> bs!1109309 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215250))))

(assert (=> bs!1109314 (not (= lambda!215255 lambda!215245))))

(assert (=> bs!1109315 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215253))))

(assert (=> bs!1109316 (= (= lt!1886299 lt!1885978) (= lambda!215255 lambda!215249))))

(assert (=> b!4721115 true))

(declare-fun bs!1109317 () Bool)

(declare-fun d!1502889 () Bool)

(assert (= bs!1109317 (and d!1502889 b!4721115)))

(declare-fun lambda!215256 () Int)

(declare-fun lt!1886291 () ListMap!5273)

(assert (=> bs!1109317 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215254))))

(declare-fun bs!1109318 () Bool)

(assert (= bs!1109318 (and d!1502889 b!4721110)))

(assert (=> bs!1109318 (= (= lt!1886291 lt!1886278) (= lambda!215256 lambda!215251))))

(assert (=> bs!1109317 (= (= lt!1886291 lt!1886299) (= lambda!215256 lambda!215255))))

(declare-fun bs!1109319 () Bool)

(assert (= bs!1109319 (and d!1502889 d!1502885)))

(assert (=> bs!1109319 (= (= lt!1886291 lt!1886270) (= lambda!215256 lambda!215252))))

(declare-fun bs!1109320 () Bool)

(assert (= bs!1109320 (and d!1502889 b!4721039)))

(assert (=> bs!1109320 (= (= lt!1886291 lt!1886214) (= lambda!215256 lambda!215237))))

(declare-fun bs!1109321 () Bool)

(assert (= bs!1109321 (and d!1502889 b!4721035)))

(assert (=> bs!1109321 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215235))))

(declare-fun bs!1109322 () Bool)

(assert (= bs!1109322 (and d!1502889 d!1502825)))

(assert (=> bs!1109322 (= (= lt!1886291 lt!1886206) (= lambda!215256 lambda!215238))))

(assert (=> bs!1109320 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215236))))

(assert (=> bs!1109318 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215250))))

(declare-fun bs!1109323 () Bool)

(assert (= bs!1109323 (and d!1502889 d!1502871)))

(assert (=> bs!1109323 (not (= lambda!215256 lambda!215245))))

(declare-fun bs!1109324 () Bool)

(assert (= bs!1109324 (and d!1502889 b!4721111)))

(assert (=> bs!1109324 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215253))))

(declare-fun bs!1109325 () Bool)

(assert (= bs!1109325 (and d!1502889 b!4721106)))

(assert (=> bs!1109325 (= (= lt!1886291 lt!1885978) (= lambda!215256 lambda!215249))))

(assert (=> d!1502889 true))

(declare-fun bm!330131 () Bool)

(declare-fun c!806261 () Bool)

(declare-fun call!330136 () Bool)

(assert (=> bm!330131 (= call!330136 (forall!11580 (toList!5909 lt!1885978) (ite c!806261 lambda!215253 lambda!215255)))))

(declare-fun e!2944349 () ListMap!5273)

(assert (=> b!4721111 (= e!2944349 lt!1885978)))

(declare-fun lt!1886297 () Unit!129632)

(declare-fun call!330137 () Unit!129632)

(assert (=> b!4721111 (= lt!1886297 call!330137)))

(declare-fun call!330138 () Bool)

(assert (=> b!4721111 call!330138))

(declare-fun lt!1886292 () Unit!129632)

(assert (=> b!4721111 (= lt!1886292 lt!1886297)))

(assert (=> b!4721111 call!330136))

(declare-fun lt!1886298 () Unit!129632)

(declare-fun Unit!129698 () Unit!129632)

(assert (=> b!4721111 (= lt!1886298 Unit!129698)))

(declare-fun b!4721112 () Bool)

(declare-fun res!1997148 () Bool)

(declare-fun e!2944347 () Bool)

(assert (=> b!4721112 (=> (not res!1997148) (not e!2944347))))

(assert (=> b!4721112 (= res!1997148 (forall!11580 (toList!5909 lt!1885978) lambda!215256))))

(declare-fun b!4721113 () Bool)

(declare-fun e!2944348 () Bool)

(assert (=> b!4721113 (= e!2944348 (forall!11580 (toList!5909 lt!1885978) lambda!215255))))

(declare-fun b!4721114 () Bool)

(assert (=> b!4721114 (= e!2944347 (invariantList!1507 (toList!5909 lt!1886291)))))

(declare-fun lt!1886302 () ListMap!5273)

(declare-fun bm!330132 () Bool)

(assert (=> bm!330132 (= call!330138 (forall!11580 (ite c!806261 (toList!5909 lt!1885978) (toList!5909 lt!1886302)) (ite c!806261 lambda!215253 lambda!215255)))))

(assert (=> d!1502889 e!2944347))

(declare-fun res!1997149 () Bool)

(assert (=> d!1502889 (=> (not res!1997149) (not e!2944347))))

(assert (=> d!1502889 (= res!1997149 (forall!11580 (Cons!52818 lt!1885984 lt!1885981) lambda!215256))))

(assert (=> d!1502889 (= lt!1886291 e!2944349)))

(assert (=> d!1502889 (= c!806261 ((_ is Nil!52818) (Cons!52818 lt!1885984 lt!1885981)))))

(assert (=> d!1502889 (noDuplicateKeys!2010 (Cons!52818 lt!1885984 lt!1885981))))

(assert (=> d!1502889 (= (addToMapMapFromBucket!1440 (Cons!52818 lt!1885984 lt!1885981) lt!1885978) lt!1886291)))

(assert (=> b!4721115 (= e!2944349 lt!1886299)))

(assert (=> b!4721115 (= lt!1886302 (+!2265 lt!1885978 (h!59161 (Cons!52818 lt!1885984 lt!1885981))))))

(assert (=> b!4721115 (= lt!1886299 (addToMapMapFromBucket!1440 (t!360202 (Cons!52818 lt!1885984 lt!1885981)) (+!2265 lt!1885978 (h!59161 (Cons!52818 lt!1885984 lt!1885981)))))))

(declare-fun lt!1886287 () Unit!129632)

(assert (=> b!4721115 (= lt!1886287 call!330137)))

(assert (=> b!4721115 (forall!11580 (toList!5909 lt!1885978) lambda!215254)))

(declare-fun lt!1886301 () Unit!129632)

(assert (=> b!4721115 (= lt!1886301 lt!1886287)))

(assert (=> b!4721115 (forall!11580 (toList!5909 lt!1886302) lambda!215255)))

(declare-fun lt!1886300 () Unit!129632)

(declare-fun Unit!129701 () Unit!129632)

(assert (=> b!4721115 (= lt!1886300 Unit!129701)))

(assert (=> b!4721115 (forall!11580 (t!360202 (Cons!52818 lt!1885984 lt!1885981)) lambda!215255)))

(declare-fun lt!1886303 () Unit!129632)

(declare-fun Unit!129702 () Unit!129632)

(assert (=> b!4721115 (= lt!1886303 Unit!129702)))

(declare-fun lt!1886293 () Unit!129632)

(declare-fun Unit!129703 () Unit!129632)

(assert (=> b!4721115 (= lt!1886293 Unit!129703)))

(declare-fun lt!1886304 () Unit!129632)

(assert (=> b!4721115 (= lt!1886304 (forallContained!3633 (toList!5909 lt!1886302) lambda!215255 (h!59161 (Cons!52818 lt!1885984 lt!1885981))))))

(assert (=> b!4721115 (contains!16162 lt!1886302 (_1!30511 (h!59161 (Cons!52818 lt!1885984 lt!1885981))))))

(declare-fun lt!1886305 () Unit!129632)

(declare-fun Unit!129704 () Unit!129632)

(assert (=> b!4721115 (= lt!1886305 Unit!129704)))

(assert (=> b!4721115 (contains!16162 lt!1886299 (_1!30511 (h!59161 (Cons!52818 lt!1885984 lt!1885981))))))

(declare-fun lt!1886306 () Unit!129632)

(declare-fun Unit!129705 () Unit!129632)

(assert (=> b!4721115 (= lt!1886306 Unit!129705)))

(assert (=> b!4721115 (forall!11580 (Cons!52818 lt!1885984 lt!1885981) lambda!215255)))

(declare-fun lt!1886294 () Unit!129632)

(declare-fun Unit!129706 () Unit!129632)

(assert (=> b!4721115 (= lt!1886294 Unit!129706)))

(assert (=> b!4721115 call!330138))

(declare-fun lt!1886290 () Unit!129632)

(declare-fun Unit!129707 () Unit!129632)

(assert (=> b!4721115 (= lt!1886290 Unit!129707)))

(declare-fun lt!1886295 () Unit!129632)

(declare-fun Unit!129708 () Unit!129632)

(assert (=> b!4721115 (= lt!1886295 Unit!129708)))

(declare-fun lt!1886296 () Unit!129632)

(assert (=> b!4721115 (= lt!1886296 (addForallContainsKeyThenBeforeAdding!792 lt!1885978 lt!1886299 (_1!30511 (h!59161 (Cons!52818 lt!1885984 lt!1885981))) (_2!30511 (h!59161 (Cons!52818 lt!1885984 lt!1885981)))))))

(assert (=> b!4721115 (forall!11580 (toList!5909 lt!1885978) lambda!215255)))

(declare-fun lt!1886289 () Unit!129632)

(assert (=> b!4721115 (= lt!1886289 lt!1886296)))

(assert (=> b!4721115 call!330136))

(declare-fun lt!1886288 () Unit!129632)

(declare-fun Unit!129709 () Unit!129632)

(assert (=> b!4721115 (= lt!1886288 Unit!129709)))

(declare-fun res!1997150 () Bool)

(assert (=> b!4721115 (= res!1997150 (forall!11580 (Cons!52818 lt!1885984 lt!1885981) lambda!215255))))

(assert (=> b!4721115 (=> (not res!1997150) (not e!2944348))))

(assert (=> b!4721115 e!2944348))

(declare-fun lt!1886307 () Unit!129632)

(declare-fun Unit!129710 () Unit!129632)

(assert (=> b!4721115 (= lt!1886307 Unit!129710)))

(declare-fun bm!330133 () Bool)

(assert (=> bm!330133 (= call!330137 (lemmaContainsAllItsOwnKeys!793 lt!1885978))))

(assert (= (and d!1502889 c!806261) b!4721111))

(assert (= (and d!1502889 (not c!806261)) b!4721115))

(assert (= (and b!4721115 res!1997150) b!4721113))

(assert (= (or b!4721111 b!4721115) bm!330133))

(assert (= (or b!4721111 b!4721115) bm!330132))

(assert (= (or b!4721111 b!4721115) bm!330131))

(assert (= (and d!1502889 res!1997149) b!4721112))

(assert (= (and b!4721112 res!1997148) b!4721114))

(declare-fun m!5655129 () Bool)

(assert (=> b!4721113 m!5655129))

(declare-fun m!5655131 () Bool)

(assert (=> b!4721114 m!5655131))

(declare-fun m!5655133 () Bool)

(assert (=> d!1502889 m!5655133))

(declare-fun m!5655135 () Bool)

(assert (=> d!1502889 m!5655135))

(assert (=> bm!330133 m!5654995))

(declare-fun m!5655137 () Bool)

(assert (=> b!4721112 m!5655137))

(declare-fun m!5655139 () Bool)

(assert (=> bm!330132 m!5655139))

(declare-fun m!5655141 () Bool)

(assert (=> b!4721115 m!5655141))

(declare-fun m!5655143 () Bool)

(assert (=> b!4721115 m!5655143))

(declare-fun m!5655145 () Bool)

(assert (=> b!4721115 m!5655145))

(declare-fun m!5655147 () Bool)

(assert (=> b!4721115 m!5655147))

(declare-fun m!5655149 () Bool)

(assert (=> b!4721115 m!5655149))

(assert (=> b!4721115 m!5655129))

(declare-fun m!5655151 () Bool)

(assert (=> b!4721115 m!5655151))

(declare-fun m!5655153 () Bool)

(assert (=> b!4721115 m!5655153))

(declare-fun m!5655155 () Bool)

(assert (=> b!4721115 m!5655155))

(assert (=> b!4721115 m!5655141))

(assert (=> b!4721115 m!5655143))

(declare-fun m!5655157 () Bool)

(assert (=> b!4721115 m!5655157))

(declare-fun m!5655159 () Bool)

(assert (=> b!4721115 m!5655159))

(declare-fun m!5655161 () Bool)

(assert (=> bm!330131 m!5655161))

(assert (=> b!4720919 d!1502889))

(declare-fun d!1502891 () Bool)

(declare-fun e!2944350 () Bool)

(assert (=> d!1502891 e!2944350))

(declare-fun res!1997152 () Bool)

(assert (=> d!1502891 (=> (not res!1997152) (not e!2944350))))

(declare-fun lt!1886311 () ListMap!5273)

(assert (=> d!1502891 (= res!1997152 (contains!16162 lt!1886311 (_1!30511 (h!59161 oldBucket!34))))))

(declare-fun lt!1886308 () List!52942)

(assert (=> d!1502891 (= lt!1886311 (ListMap!5274 lt!1886308))))

(declare-fun lt!1886309 () Unit!129632)

(declare-fun lt!1886310 () Unit!129632)

(assert (=> d!1502891 (= lt!1886309 lt!1886310)))

(assert (=> d!1502891 (= (getValueByKey!1950 lt!1886308 (_1!30511 (h!59161 oldBucket!34))) (Some!12353 (_2!30511 (h!59161 oldBucket!34))))))

(assert (=> d!1502891 (= lt!1886310 (lemmaContainsTupThenGetReturnValue!1081 lt!1886308 (_1!30511 (h!59161 oldBucket!34)) (_2!30511 (h!59161 oldBucket!34))))))

(assert (=> d!1502891 (= lt!1886308 (insertNoDuplicatedKeys!589 (toList!5909 lt!1885982) (_1!30511 (h!59161 oldBucket!34)) (_2!30511 (h!59161 oldBucket!34))))))

(assert (=> d!1502891 (= (+!2265 lt!1885982 (h!59161 oldBucket!34)) lt!1886311)))

(declare-fun b!4721116 () Bool)

(declare-fun res!1997151 () Bool)

(assert (=> b!4721116 (=> (not res!1997151) (not e!2944350))))

(assert (=> b!4721116 (= res!1997151 (= (getValueByKey!1950 (toList!5909 lt!1886311) (_1!30511 (h!59161 oldBucket!34))) (Some!12353 (_2!30511 (h!59161 oldBucket!34)))))))

(declare-fun b!4721117 () Bool)

(assert (=> b!4721117 (= e!2944350 (contains!16163 (toList!5909 lt!1886311) (h!59161 oldBucket!34)))))

(assert (= (and d!1502891 res!1997152) b!4721116))

(assert (= (and b!4721116 res!1997151) b!4721117))

(declare-fun m!5655163 () Bool)

(assert (=> d!1502891 m!5655163))

(declare-fun m!5655165 () Bool)

(assert (=> d!1502891 m!5655165))

(declare-fun m!5655167 () Bool)

(assert (=> d!1502891 m!5655167))

(declare-fun m!5655169 () Bool)

(assert (=> d!1502891 m!5655169))

(declare-fun m!5655171 () Bool)

(assert (=> b!4721116 m!5655171))

(declare-fun m!5655173 () Bool)

(assert (=> b!4721117 m!5655173))

(assert (=> b!4720919 d!1502891))

(declare-fun d!1502893 () Bool)

(declare-fun res!1997157 () Bool)

(declare-fun e!2944355 () Bool)

(assert (=> d!1502893 (=> res!1997157 e!2944355)))

(assert (=> d!1502893 (= res!1997157 (not ((_ is Cons!52818) oldBucket!34)))))

(assert (=> d!1502893 (= (noDuplicateKeys!2010 oldBucket!34) e!2944355)))

(declare-fun b!4721122 () Bool)

(declare-fun e!2944356 () Bool)

(assert (=> b!4721122 (= e!2944355 e!2944356)))

(declare-fun res!1997158 () Bool)

(assert (=> b!4721122 (=> (not res!1997158) (not e!2944356))))

(assert (=> b!4721122 (= res!1997158 (not (containsKey!3361 (t!360202 oldBucket!34) (_1!30511 (h!59161 oldBucket!34)))))))

(declare-fun b!4721123 () Bool)

(assert (=> b!4721123 (= e!2944356 (noDuplicateKeys!2010 (t!360202 oldBucket!34)))))

(assert (= (and d!1502893 (not res!1997157)) b!4721122))

(assert (= (and b!4721122 res!1997158) b!4721123))

(declare-fun m!5655175 () Bool)

(assert (=> b!4721122 m!5655175))

(declare-fun m!5655177 () Bool)

(assert (=> b!4721123 m!5655177))

(assert (=> b!4720909 d!1502893))

(declare-fun d!1502895 () Bool)

(declare-fun res!1997159 () Bool)

(declare-fun e!2944357 () Bool)

(assert (=> d!1502895 (=> res!1997159 e!2944357)))

(assert (=> d!1502895 (= res!1997159 (not ((_ is Cons!52818) newBucket!218)))))

(assert (=> d!1502895 (= (noDuplicateKeys!2010 newBucket!218) e!2944357)))

(declare-fun b!4721124 () Bool)

(declare-fun e!2944358 () Bool)

(assert (=> b!4721124 (= e!2944357 e!2944358)))

(declare-fun res!1997160 () Bool)

(assert (=> b!4721124 (=> (not res!1997160) (not e!2944358))))

(assert (=> b!4721124 (= res!1997160 (not (containsKey!3361 (t!360202 newBucket!218) (_1!30511 (h!59161 newBucket!218)))))))

(declare-fun b!4721125 () Bool)

(assert (=> b!4721125 (= e!2944358 (noDuplicateKeys!2010 (t!360202 newBucket!218)))))

(assert (= (and d!1502895 (not res!1997159)) b!4721124))

(assert (= (and b!4721124 res!1997160) b!4721125))

(declare-fun m!5655179 () Bool)

(assert (=> b!4721124 m!5655179))

(declare-fun m!5655181 () Bool)

(assert (=> b!4721125 m!5655181))

(assert (=> b!4720920 d!1502895))

(declare-fun d!1502897 () Bool)

(declare-fun res!1997165 () Bool)

(declare-fun e!2944363 () Bool)

(assert (=> d!1502897 (=> res!1997165 e!2944363)))

(assert (=> d!1502897 (= res!1997165 (and ((_ is Cons!52818) lt!1885981) (= (_1!30511 (h!59161 lt!1885981)) key!4653)))))

(assert (=> d!1502897 (= (containsKey!3361 lt!1885981 key!4653) e!2944363)))

(declare-fun b!4721130 () Bool)

(declare-fun e!2944364 () Bool)

(assert (=> b!4721130 (= e!2944363 e!2944364)))

(declare-fun res!1997166 () Bool)

(assert (=> b!4721130 (=> (not res!1997166) (not e!2944364))))

(assert (=> b!4721130 (= res!1997166 ((_ is Cons!52818) lt!1885981))))

(declare-fun b!4721131 () Bool)

(assert (=> b!4721131 (= e!2944364 (containsKey!3361 (t!360202 lt!1885981) key!4653))))

(assert (= (and d!1502897 (not res!1997165)) b!4721130))

(assert (= (and b!4721130 res!1997166) b!4721131))

(declare-fun m!5655183 () Bool)

(assert (=> b!4721131 m!5655183))

(assert (=> b!4720921 d!1502897))

(declare-fun b!4721150 () Bool)

(declare-fun e!2944380 () Bool)

(declare-datatypes ((List!52944 0))(
  ( (Nil!52820) (Cons!52820 (h!59165 K!14175) (t!360206 List!52944)) )
))
(declare-fun contains!16164 (List!52944 K!14175) Bool)

(declare-fun keys!18965 (ListMap!5273) List!52944)

(assert (=> b!4721150 (= e!2944380 (contains!16164 (keys!18965 lt!1885983) key!4653))))

(declare-fun bm!330136 () Bool)

(declare-fun call!330141 () Bool)

(declare-fun e!2944379 () List!52944)

(assert (=> bm!330136 (= call!330141 (contains!16164 e!2944379 key!4653))))

(declare-fun c!806268 () Bool)

(declare-fun c!806270 () Bool)

(assert (=> bm!330136 (= c!806268 c!806270)))

(declare-fun b!4721151 () Bool)

(assert (=> b!4721151 (= e!2944379 (keys!18965 lt!1885983))))

(declare-fun b!4721152 () Bool)

(declare-fun e!2944381 () Unit!129632)

(declare-fun lt!1886335 () Unit!129632)

(assert (=> b!4721152 (= e!2944381 lt!1886335)))

(declare-fun lt!1886330 () Unit!129632)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1841 (List!52942 K!14175) Unit!129632)

(assert (=> b!4721152 (= lt!1886330 (lemmaContainsKeyImpliesGetValueByKeyDefined!1841 (toList!5909 lt!1885983) key!4653))))

(declare-fun isDefined!9608 (Option!12354) Bool)

(assert (=> b!4721152 (isDefined!9608 (getValueByKey!1950 (toList!5909 lt!1885983) key!4653))))

(declare-fun lt!1886332 () Unit!129632)

(assert (=> b!4721152 (= lt!1886332 lt!1886330)))

(declare-fun lemmaInListThenGetKeysListContains!941 (List!52942 K!14175) Unit!129632)

(assert (=> b!4721152 (= lt!1886335 (lemmaInListThenGetKeysListContains!941 (toList!5909 lt!1885983) key!4653))))

(assert (=> b!4721152 call!330141))

(declare-fun b!4721153 () Bool)

(assert (=> b!4721153 false))

(declare-fun lt!1886333 () Unit!129632)

(declare-fun lt!1886334 () Unit!129632)

(assert (=> b!4721153 (= lt!1886333 lt!1886334)))

(declare-fun containsKey!3362 (List!52942 K!14175) Bool)

(assert (=> b!4721153 (containsKey!3362 (toList!5909 lt!1885983) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!945 (List!52942 K!14175) Unit!129632)

(assert (=> b!4721153 (= lt!1886334 (lemmaInGetKeysListThenContainsKey!945 (toList!5909 lt!1885983) key!4653))))

(declare-fun e!2944378 () Unit!129632)

(declare-fun Unit!129711 () Unit!129632)

(assert (=> b!4721153 (= e!2944378 Unit!129711)))

(declare-fun b!4721154 () Bool)

(declare-fun e!2944382 () Bool)

(assert (=> b!4721154 (= e!2944382 e!2944380)))

(declare-fun res!1997175 () Bool)

(assert (=> b!4721154 (=> (not res!1997175) (not e!2944380))))

(assert (=> b!4721154 (= res!1997175 (isDefined!9608 (getValueByKey!1950 (toList!5909 lt!1885983) key!4653)))))

(declare-fun b!4721155 () Bool)

(declare-fun e!2944377 () Bool)

(assert (=> b!4721155 (= e!2944377 (not (contains!16164 (keys!18965 lt!1885983) key!4653)))))

(declare-fun d!1502899 () Bool)

(assert (=> d!1502899 e!2944382))

(declare-fun res!1997173 () Bool)

(assert (=> d!1502899 (=> res!1997173 e!2944382)))

(assert (=> d!1502899 (= res!1997173 e!2944377)))

(declare-fun res!1997174 () Bool)

(assert (=> d!1502899 (=> (not res!1997174) (not e!2944377))))

(declare-fun lt!1886329 () Bool)

(assert (=> d!1502899 (= res!1997174 (not lt!1886329))))

(declare-fun lt!1886328 () Bool)

(assert (=> d!1502899 (= lt!1886329 lt!1886328)))

(declare-fun lt!1886331 () Unit!129632)

(assert (=> d!1502899 (= lt!1886331 e!2944381)))

(assert (=> d!1502899 (= c!806270 lt!1886328)))

(assert (=> d!1502899 (= lt!1886328 (containsKey!3362 (toList!5909 lt!1885983) key!4653))))

(assert (=> d!1502899 (= (contains!16162 lt!1885983 key!4653) lt!1886329)))

(declare-fun b!4721156 () Bool)

(declare-fun Unit!129713 () Unit!129632)

(assert (=> b!4721156 (= e!2944378 Unit!129713)))

(declare-fun b!4721157 () Bool)

(declare-fun getKeysList!946 (List!52942) List!52944)

(assert (=> b!4721157 (= e!2944379 (getKeysList!946 (toList!5909 lt!1885983)))))

(declare-fun b!4721158 () Bool)

(assert (=> b!4721158 (= e!2944381 e!2944378)))

(declare-fun c!806269 () Bool)

(assert (=> b!4721158 (= c!806269 call!330141)))

(assert (= (and d!1502899 c!806270) b!4721152))

(assert (= (and d!1502899 (not c!806270)) b!4721158))

(assert (= (and b!4721158 c!806269) b!4721153))

(assert (= (and b!4721158 (not c!806269)) b!4721156))

(assert (= (or b!4721152 b!4721158) bm!330136))

(assert (= (and bm!330136 c!806268) b!4721157))

(assert (= (and bm!330136 (not c!806268)) b!4721151))

(assert (= (and d!1502899 res!1997174) b!4721155))

(assert (= (and d!1502899 (not res!1997173)) b!4721154))

(assert (= (and b!4721154 res!1997175) b!4721150))

(declare-fun m!5655185 () Bool)

(assert (=> bm!330136 m!5655185))

(declare-fun m!5655187 () Bool)

(assert (=> b!4721152 m!5655187))

(declare-fun m!5655189 () Bool)

(assert (=> b!4721152 m!5655189))

(assert (=> b!4721152 m!5655189))

(declare-fun m!5655191 () Bool)

(assert (=> b!4721152 m!5655191))

(declare-fun m!5655193 () Bool)

(assert (=> b!4721152 m!5655193))

(declare-fun m!5655195 () Bool)

(assert (=> b!4721153 m!5655195))

(declare-fun m!5655197 () Bool)

(assert (=> b!4721153 m!5655197))

(assert (=> b!4721154 m!5655189))

(assert (=> b!4721154 m!5655189))

(assert (=> b!4721154 m!5655191))

(assert (=> d!1502899 m!5655195))

(declare-fun m!5655199 () Bool)

(assert (=> b!4721157 m!5655199))

(declare-fun m!5655201 () Bool)

(assert (=> b!4721155 m!5655201))

(assert (=> b!4721155 m!5655201))

(declare-fun m!5655203 () Bool)

(assert (=> b!4721155 m!5655203))

(assert (=> b!4721151 m!5655201))

(assert (=> b!4721150 m!5655201))

(assert (=> b!4721150 m!5655201))

(assert (=> b!4721150 m!5655203))

(assert (=> b!4720911 d!1502899))

(declare-fun bs!1109326 () Bool)

(declare-fun d!1502901 () Bool)

(assert (= bs!1109326 (and d!1502901 start!480492)))

(declare-fun lambda!215257 () Int)

(assert (=> bs!1109326 (= lambda!215257 lambda!215146)))

(declare-fun bs!1109327 () Bool)

(assert (= bs!1109327 (and d!1502901 d!1502861)))

(assert (=> bs!1109327 (= lambda!215257 lambda!215242)))

(declare-fun bs!1109328 () Bool)

(assert (= bs!1109328 (and d!1502901 d!1502873)))

(assert (=> bs!1109328 (not (= lambda!215257 lambda!215248))))

(declare-fun lt!1886336 () ListMap!5273)

(assert (=> d!1502901 (invariantList!1507 (toList!5909 lt!1886336))))

(declare-fun e!2944383 () ListMap!5273)

(assert (=> d!1502901 (= lt!1886336 e!2944383)))

(declare-fun c!806271 () Bool)

(assert (=> d!1502901 (= c!806271 ((_ is Cons!52819) (toList!5910 lm!2023)))))

(assert (=> d!1502901 (forall!11578 (toList!5910 lm!2023) lambda!215257)))

(assert (=> d!1502901 (= (extractMap!2036 (toList!5910 lm!2023)) lt!1886336)))

(declare-fun b!4721159 () Bool)

(assert (=> b!4721159 (= e!2944383 (addToMapMapFromBucket!1440 (_2!30512 (h!59162 (toList!5910 lm!2023))) (extractMap!2036 (t!360203 (toList!5910 lm!2023)))))))

(declare-fun b!4721160 () Bool)

(assert (=> b!4721160 (= e!2944383 (ListMap!5274 Nil!52818))))

(assert (= (and d!1502901 c!806271) b!4721159))

(assert (= (and d!1502901 (not c!806271)) b!4721160))

(declare-fun m!5655205 () Bool)

(assert (=> d!1502901 m!5655205))

(declare-fun m!5655207 () Bool)

(assert (=> d!1502901 m!5655207))

(assert (=> b!4721159 m!5654681))

(assert (=> b!4721159 m!5654681))

(declare-fun m!5655209 () Bool)

(assert (=> b!4721159 m!5655209))

(assert (=> b!4720911 d!1502901))

(declare-fun d!1502903 () Bool)

(declare-fun lt!1886339 () List!52942)

(assert (=> d!1502903 (not (containsKey!3361 lt!1886339 key!4653))))

(declare-fun e!2944388 () List!52942)

(assert (=> d!1502903 (= lt!1886339 e!2944388)))

(declare-fun c!806276 () Bool)

(assert (=> d!1502903 (= c!806276 (and ((_ is Cons!52818) oldBucket!34) (= (_1!30511 (h!59161 oldBucket!34)) key!4653)))))

(assert (=> d!1502903 (noDuplicateKeys!2010 oldBucket!34)))

(assert (=> d!1502903 (= (removePairForKey!1605 oldBucket!34 key!4653) lt!1886339)))

(declare-fun b!4721170 () Bool)

(declare-fun e!2944389 () List!52942)

(assert (=> b!4721170 (= e!2944388 e!2944389)))

(declare-fun c!806277 () Bool)

(assert (=> b!4721170 (= c!806277 ((_ is Cons!52818) oldBucket!34))))

(declare-fun b!4721172 () Bool)

(assert (=> b!4721172 (= e!2944389 Nil!52818)))

(declare-fun b!4721169 () Bool)

(assert (=> b!4721169 (= e!2944388 (t!360202 oldBucket!34))))

(declare-fun b!4721171 () Bool)

(assert (=> b!4721171 (= e!2944389 (Cons!52818 (h!59161 oldBucket!34) (removePairForKey!1605 (t!360202 oldBucket!34) key!4653)))))

(assert (= (and d!1502903 c!806276) b!4721169))

(assert (= (and d!1502903 (not c!806276)) b!4721170))

(assert (= (and b!4721170 c!806277) b!4721171))

(assert (= (and b!4721170 (not c!806277)) b!4721172))

(declare-fun m!5655211 () Bool)

(assert (=> d!1502903 m!5655211))

(assert (=> d!1502903 m!5654695))

(declare-fun m!5655213 () Bool)

(assert (=> b!4721171 m!5655213))

(assert (=> b!4720922 d!1502903))

(declare-fun d!1502905 () Bool)

(declare-fun hash!4378 (Hashable!6379 K!14175) (_ BitVec 64))

(assert (=> d!1502905 (= (hash!4376 hashF!1323 key!4653) (hash!4378 hashF!1323 key!4653))))

(declare-fun bs!1109329 () Bool)

(assert (= bs!1109329 d!1502905))

(declare-fun m!5655215 () Bool)

(assert (=> bs!1109329 m!5655215))

(assert (=> b!4720923 d!1502905))

(declare-fun d!1502907 () Bool)

(assert (=> d!1502907 (= (tail!8990 oldBucket!34) (t!360202 oldBucket!34))))

(assert (=> b!4720913 d!1502907))

(declare-fun bs!1109330 () Bool)

(declare-fun b!4721173 () Bool)

(assert (= bs!1109330 (and b!4721173 b!4721115)))

(declare-fun lambda!215258 () Int)

(assert (=> bs!1109330 (= lambda!215258 lambda!215254)))

(declare-fun bs!1109331 () Bool)

(assert (= bs!1109331 (and b!4721173 d!1502889)))

(assert (=> bs!1109331 (= (= lt!1885978 lt!1886291) (= lambda!215258 lambda!215256))))

(declare-fun bs!1109332 () Bool)

(assert (= bs!1109332 (and b!4721173 b!4721110)))

(assert (=> bs!1109332 (= (= lt!1885978 lt!1886278) (= lambda!215258 lambda!215251))))

(assert (=> bs!1109330 (= (= lt!1885978 lt!1886299) (= lambda!215258 lambda!215255))))

(declare-fun bs!1109333 () Bool)

(assert (= bs!1109333 (and b!4721173 d!1502885)))

(assert (=> bs!1109333 (= (= lt!1885978 lt!1886270) (= lambda!215258 lambda!215252))))

(declare-fun bs!1109334 () Bool)

(assert (= bs!1109334 (and b!4721173 b!4721039)))

(assert (=> bs!1109334 (= (= lt!1885978 lt!1886214) (= lambda!215258 lambda!215237))))

(declare-fun bs!1109335 () Bool)

(assert (= bs!1109335 (and b!4721173 b!4721035)))

(assert (=> bs!1109335 (= lambda!215258 lambda!215235)))

(declare-fun bs!1109336 () Bool)

(assert (= bs!1109336 (and b!4721173 d!1502825)))

(assert (=> bs!1109336 (= (= lt!1885978 lt!1886206) (= lambda!215258 lambda!215238))))

(assert (=> bs!1109334 (= lambda!215258 lambda!215236)))

(assert (=> bs!1109332 (= lambda!215258 lambda!215250)))

(declare-fun bs!1109337 () Bool)

(assert (= bs!1109337 (and b!4721173 d!1502871)))

(assert (=> bs!1109337 (not (= lambda!215258 lambda!215245))))

(declare-fun bs!1109338 () Bool)

(assert (= bs!1109338 (and b!4721173 b!4721111)))

(assert (=> bs!1109338 (= lambda!215258 lambda!215253)))

(declare-fun bs!1109339 () Bool)

(assert (= bs!1109339 (and b!4721173 b!4721106)))

(assert (=> bs!1109339 (= lambda!215258 lambda!215249)))

(assert (=> b!4721173 true))

(declare-fun bs!1109340 () Bool)

(declare-fun b!4721177 () Bool)

(assert (= bs!1109340 (and b!4721177 b!4721115)))

(declare-fun lambda!215259 () Int)

(assert (=> bs!1109340 (= lambda!215259 lambda!215254)))

(declare-fun bs!1109341 () Bool)

(assert (= bs!1109341 (and b!4721177 d!1502889)))

(assert (=> bs!1109341 (= (= lt!1885978 lt!1886291) (= lambda!215259 lambda!215256))))

(declare-fun bs!1109342 () Bool)

(assert (= bs!1109342 (and b!4721177 b!4721110)))

(assert (=> bs!1109342 (= (= lt!1885978 lt!1886278) (= lambda!215259 lambda!215251))))

(assert (=> bs!1109340 (= (= lt!1885978 lt!1886299) (= lambda!215259 lambda!215255))))

(declare-fun bs!1109343 () Bool)

(assert (= bs!1109343 (and b!4721177 b!4721173)))

(assert (=> bs!1109343 (= lambda!215259 lambda!215258)))

(declare-fun bs!1109344 () Bool)

(assert (= bs!1109344 (and b!4721177 d!1502885)))

(assert (=> bs!1109344 (= (= lt!1885978 lt!1886270) (= lambda!215259 lambda!215252))))

(declare-fun bs!1109345 () Bool)

(assert (= bs!1109345 (and b!4721177 b!4721039)))

(assert (=> bs!1109345 (= (= lt!1885978 lt!1886214) (= lambda!215259 lambda!215237))))

(declare-fun bs!1109346 () Bool)

(assert (= bs!1109346 (and b!4721177 b!4721035)))

(assert (=> bs!1109346 (= lambda!215259 lambda!215235)))

(declare-fun bs!1109347 () Bool)

(assert (= bs!1109347 (and b!4721177 d!1502825)))

(assert (=> bs!1109347 (= (= lt!1885978 lt!1886206) (= lambda!215259 lambda!215238))))

(assert (=> bs!1109345 (= lambda!215259 lambda!215236)))

(assert (=> bs!1109342 (= lambda!215259 lambda!215250)))

(declare-fun bs!1109348 () Bool)

(assert (= bs!1109348 (and b!4721177 d!1502871)))

(assert (=> bs!1109348 (not (= lambda!215259 lambda!215245))))

(declare-fun bs!1109349 () Bool)

(assert (= bs!1109349 (and b!4721177 b!4721111)))

(assert (=> bs!1109349 (= lambda!215259 lambda!215253)))

(declare-fun bs!1109350 () Bool)

(assert (= bs!1109350 (and b!4721177 b!4721106)))

(assert (=> bs!1109350 (= lambda!215259 lambda!215249)))

(assert (=> b!4721177 true))

(declare-fun lambda!215260 () Int)

(declare-fun lt!1886352 () ListMap!5273)

(assert (=> bs!1109340 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215254))))

(assert (=> b!4721177 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215259))))

(assert (=> bs!1109341 (= (= lt!1886352 lt!1886291) (= lambda!215260 lambda!215256))))

(assert (=> bs!1109342 (= (= lt!1886352 lt!1886278) (= lambda!215260 lambda!215251))))

(assert (=> bs!1109340 (= (= lt!1886352 lt!1886299) (= lambda!215260 lambda!215255))))

(assert (=> bs!1109343 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215258))))

(assert (=> bs!1109344 (= (= lt!1886352 lt!1886270) (= lambda!215260 lambda!215252))))

(assert (=> bs!1109345 (= (= lt!1886352 lt!1886214) (= lambda!215260 lambda!215237))))

(assert (=> bs!1109346 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215235))))

(assert (=> bs!1109347 (= (= lt!1886352 lt!1886206) (= lambda!215260 lambda!215238))))

(assert (=> bs!1109345 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215236))))

(assert (=> bs!1109342 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215250))))

(assert (=> bs!1109348 (not (= lambda!215260 lambda!215245))))

(assert (=> bs!1109349 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215253))))

(assert (=> bs!1109350 (= (= lt!1886352 lt!1885978) (= lambda!215260 lambda!215249))))

(assert (=> b!4721177 true))

(declare-fun bs!1109351 () Bool)

(declare-fun d!1502909 () Bool)

(assert (= bs!1109351 (and d!1502909 b!4721177)))

(declare-fun lambda!215261 () Int)

(declare-fun lt!1886344 () ListMap!5273)

(assert (=> bs!1109351 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215259))))

(declare-fun bs!1109352 () Bool)

(assert (= bs!1109352 (and d!1502909 d!1502889)))

(assert (=> bs!1109352 (= (= lt!1886344 lt!1886291) (= lambda!215261 lambda!215256))))

(declare-fun bs!1109353 () Bool)

(assert (= bs!1109353 (and d!1502909 b!4721110)))

(assert (=> bs!1109353 (= (= lt!1886344 lt!1886278) (= lambda!215261 lambda!215251))))

(declare-fun bs!1109354 () Bool)

(assert (= bs!1109354 (and d!1502909 b!4721115)))

(assert (=> bs!1109354 (= (= lt!1886344 lt!1886299) (= lambda!215261 lambda!215255))))

(declare-fun bs!1109355 () Bool)

(assert (= bs!1109355 (and d!1502909 b!4721173)))

(assert (=> bs!1109355 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215258))))

(declare-fun bs!1109356 () Bool)

(assert (= bs!1109356 (and d!1502909 d!1502885)))

(assert (=> bs!1109356 (= (= lt!1886344 lt!1886270) (= lambda!215261 lambda!215252))))

(assert (=> bs!1109351 (= (= lt!1886344 lt!1886352) (= lambda!215261 lambda!215260))))

(assert (=> bs!1109354 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215254))))

(declare-fun bs!1109357 () Bool)

(assert (= bs!1109357 (and d!1502909 b!4721039)))

(assert (=> bs!1109357 (= (= lt!1886344 lt!1886214) (= lambda!215261 lambda!215237))))

(declare-fun bs!1109358 () Bool)

(assert (= bs!1109358 (and d!1502909 b!4721035)))

(assert (=> bs!1109358 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215235))))

(declare-fun bs!1109359 () Bool)

(assert (= bs!1109359 (and d!1502909 d!1502825)))

(assert (=> bs!1109359 (= (= lt!1886344 lt!1886206) (= lambda!215261 lambda!215238))))

(assert (=> bs!1109357 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215236))))

(assert (=> bs!1109353 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215250))))

(declare-fun bs!1109360 () Bool)

(assert (= bs!1109360 (and d!1502909 d!1502871)))

(assert (=> bs!1109360 (not (= lambda!215261 lambda!215245))))

(declare-fun bs!1109361 () Bool)

(assert (= bs!1109361 (and d!1502909 b!4721111)))

(assert (=> bs!1109361 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215253))))

(declare-fun bs!1109362 () Bool)

(assert (= bs!1109362 (and d!1502909 b!4721106)))

(assert (=> bs!1109362 (= (= lt!1886344 lt!1885978) (= lambda!215261 lambda!215249))))

(assert (=> d!1502909 true))

(declare-fun bm!330137 () Bool)

(declare-fun c!806278 () Bool)

(declare-fun call!330142 () Bool)

(assert (=> bm!330137 (= call!330142 (forall!11580 (toList!5909 lt!1885978) (ite c!806278 lambda!215258 lambda!215260)))))

(declare-fun e!2944392 () ListMap!5273)

(assert (=> b!4721173 (= e!2944392 lt!1885978)))

(declare-fun lt!1886350 () Unit!129632)

(declare-fun call!330143 () Unit!129632)

(assert (=> b!4721173 (= lt!1886350 call!330143)))

(declare-fun call!330144 () Bool)

(assert (=> b!4721173 call!330144))

(declare-fun lt!1886345 () Unit!129632)

(assert (=> b!4721173 (= lt!1886345 lt!1886350)))

(assert (=> b!4721173 call!330142))

(declare-fun lt!1886351 () Unit!129632)

(declare-fun Unit!129724 () Unit!129632)

(assert (=> b!4721173 (= lt!1886351 Unit!129724)))

(declare-fun b!4721174 () Bool)

(declare-fun res!1997176 () Bool)

(declare-fun e!2944390 () Bool)

(assert (=> b!4721174 (=> (not res!1997176) (not e!2944390))))

(assert (=> b!4721174 (= res!1997176 (forall!11580 (toList!5909 lt!1885978) lambda!215261))))

(declare-fun b!4721175 () Bool)

(declare-fun e!2944391 () Bool)

(assert (=> b!4721175 (= e!2944391 (forall!11580 (toList!5909 lt!1885978) lambda!215260))))

(declare-fun b!4721176 () Bool)

(assert (=> b!4721176 (= e!2944390 (invariantList!1507 (toList!5909 lt!1886344)))))

(declare-fun lt!1886355 () ListMap!5273)

(declare-fun bm!330138 () Bool)

(assert (=> bm!330138 (= call!330144 (forall!11580 (ite c!806278 (toList!5909 lt!1885978) (toList!5909 lt!1886355)) (ite c!806278 lambda!215258 lambda!215260)))))

(assert (=> d!1502909 e!2944390))

(declare-fun res!1997177 () Bool)

(assert (=> d!1502909 (=> (not res!1997177) (not e!2944390))))

(assert (=> d!1502909 (= res!1997177 (forall!11580 newBucket!218 lambda!215261))))

(assert (=> d!1502909 (= lt!1886344 e!2944392)))

(assert (=> d!1502909 (= c!806278 ((_ is Nil!52818) newBucket!218))))

(assert (=> d!1502909 (noDuplicateKeys!2010 newBucket!218)))

(assert (=> d!1502909 (= (addToMapMapFromBucket!1440 newBucket!218 lt!1885978) lt!1886344)))

(assert (=> b!4721177 (= e!2944392 lt!1886352)))

(assert (=> b!4721177 (= lt!1886355 (+!2265 lt!1885978 (h!59161 newBucket!218)))))

(assert (=> b!4721177 (= lt!1886352 (addToMapMapFromBucket!1440 (t!360202 newBucket!218) (+!2265 lt!1885978 (h!59161 newBucket!218))))))

(declare-fun lt!1886340 () Unit!129632)

(assert (=> b!4721177 (= lt!1886340 call!330143)))

(assert (=> b!4721177 (forall!11580 (toList!5909 lt!1885978) lambda!215259)))

(declare-fun lt!1886354 () Unit!129632)

(assert (=> b!4721177 (= lt!1886354 lt!1886340)))

(assert (=> b!4721177 (forall!11580 (toList!5909 lt!1886355) lambda!215260)))

(declare-fun lt!1886353 () Unit!129632)

(declare-fun Unit!129725 () Unit!129632)

(assert (=> b!4721177 (= lt!1886353 Unit!129725)))

(assert (=> b!4721177 (forall!11580 (t!360202 newBucket!218) lambda!215260)))

(declare-fun lt!1886356 () Unit!129632)

(declare-fun Unit!129726 () Unit!129632)

(assert (=> b!4721177 (= lt!1886356 Unit!129726)))

(declare-fun lt!1886346 () Unit!129632)

(declare-fun Unit!129727 () Unit!129632)

(assert (=> b!4721177 (= lt!1886346 Unit!129727)))

(declare-fun lt!1886357 () Unit!129632)

(assert (=> b!4721177 (= lt!1886357 (forallContained!3633 (toList!5909 lt!1886355) lambda!215260 (h!59161 newBucket!218)))))

(assert (=> b!4721177 (contains!16162 lt!1886355 (_1!30511 (h!59161 newBucket!218)))))

(declare-fun lt!1886358 () Unit!129632)

(declare-fun Unit!129728 () Unit!129632)

(assert (=> b!4721177 (= lt!1886358 Unit!129728)))

(assert (=> b!4721177 (contains!16162 lt!1886352 (_1!30511 (h!59161 newBucket!218)))))

(declare-fun lt!1886359 () Unit!129632)

(declare-fun Unit!129729 () Unit!129632)

(assert (=> b!4721177 (= lt!1886359 Unit!129729)))

(assert (=> b!4721177 (forall!11580 newBucket!218 lambda!215260)))

(declare-fun lt!1886347 () Unit!129632)

(declare-fun Unit!129730 () Unit!129632)

(assert (=> b!4721177 (= lt!1886347 Unit!129730)))

(assert (=> b!4721177 call!330144))

(declare-fun lt!1886343 () Unit!129632)

(declare-fun Unit!129731 () Unit!129632)

(assert (=> b!4721177 (= lt!1886343 Unit!129731)))

(declare-fun lt!1886348 () Unit!129632)

(declare-fun Unit!129733 () Unit!129632)

(assert (=> b!4721177 (= lt!1886348 Unit!129733)))

(declare-fun lt!1886349 () Unit!129632)

(assert (=> b!4721177 (= lt!1886349 (addForallContainsKeyThenBeforeAdding!792 lt!1885978 lt!1886352 (_1!30511 (h!59161 newBucket!218)) (_2!30511 (h!59161 newBucket!218))))))

(assert (=> b!4721177 (forall!11580 (toList!5909 lt!1885978) lambda!215260)))

(declare-fun lt!1886342 () Unit!129632)

(assert (=> b!4721177 (= lt!1886342 lt!1886349)))

(assert (=> b!4721177 call!330142))

(declare-fun lt!1886341 () Unit!129632)

(declare-fun Unit!129735 () Unit!129632)

(assert (=> b!4721177 (= lt!1886341 Unit!129735)))

(declare-fun res!1997178 () Bool)

(assert (=> b!4721177 (= res!1997178 (forall!11580 newBucket!218 lambda!215260))))

(assert (=> b!4721177 (=> (not res!1997178) (not e!2944391))))

(assert (=> b!4721177 e!2944391))

(declare-fun lt!1886360 () Unit!129632)

(declare-fun Unit!129736 () Unit!129632)

(assert (=> b!4721177 (= lt!1886360 Unit!129736)))

(declare-fun bm!330139 () Bool)

(assert (=> bm!330139 (= call!330143 (lemmaContainsAllItsOwnKeys!793 lt!1885978))))

(assert (= (and d!1502909 c!806278) b!4721173))

(assert (= (and d!1502909 (not c!806278)) b!4721177))

(assert (= (and b!4721177 res!1997178) b!4721175))

(assert (= (or b!4721173 b!4721177) bm!330139))

(assert (= (or b!4721173 b!4721177) bm!330138))

(assert (= (or b!4721173 b!4721177) bm!330137))

(assert (= (and d!1502909 res!1997177) b!4721174))

(assert (= (and b!4721174 res!1997176) b!4721176))

(declare-fun m!5655217 () Bool)

(assert (=> b!4721175 m!5655217))

(declare-fun m!5655219 () Bool)

(assert (=> b!4721176 m!5655219))

(declare-fun m!5655221 () Bool)

(assert (=> d!1502909 m!5655221))

(assert (=> d!1502909 m!5654663))

(assert (=> bm!330139 m!5654995))

(declare-fun m!5655223 () Bool)

(assert (=> b!4721174 m!5655223))

(declare-fun m!5655225 () Bool)

(assert (=> bm!330138 m!5655225))

(declare-fun m!5655227 () Bool)

(assert (=> b!4721177 m!5655227))

(declare-fun m!5655229 () Bool)

(assert (=> b!4721177 m!5655229))

(declare-fun m!5655231 () Bool)

(assert (=> b!4721177 m!5655231))

(declare-fun m!5655233 () Bool)

(assert (=> b!4721177 m!5655233))

(declare-fun m!5655235 () Bool)

(assert (=> b!4721177 m!5655235))

(assert (=> b!4721177 m!5655217))

(declare-fun m!5655237 () Bool)

(assert (=> b!4721177 m!5655237))

(declare-fun m!5655239 () Bool)

(assert (=> b!4721177 m!5655239))

(declare-fun m!5655241 () Bool)

(assert (=> b!4721177 m!5655241))

(assert (=> b!4721177 m!5655227))

(assert (=> b!4721177 m!5655229))

(declare-fun m!5655243 () Bool)

(assert (=> b!4721177 m!5655243))

(declare-fun m!5655245 () Bool)

(assert (=> b!4721177 m!5655245))

(declare-fun m!5655247 () Bool)

(assert (=> bm!330137 m!5655247))

(assert (=> b!4720914 d!1502909))

(declare-fun bs!1109363 () Bool)

(declare-fun b!4721178 () Bool)

(assert (= bs!1109363 (and b!4721178 d!1502909)))

(declare-fun lambda!215262 () Int)

(assert (=> bs!1109363 (= (= lt!1885978 lt!1886344) (= lambda!215262 lambda!215261))))

(declare-fun bs!1109364 () Bool)

(assert (= bs!1109364 (and b!4721178 b!4721177)))

(assert (=> bs!1109364 (= lambda!215262 lambda!215259)))

(declare-fun bs!1109365 () Bool)

(assert (= bs!1109365 (and b!4721178 d!1502889)))

(assert (=> bs!1109365 (= (= lt!1885978 lt!1886291) (= lambda!215262 lambda!215256))))

(declare-fun bs!1109366 () Bool)

(assert (= bs!1109366 (and b!4721178 b!4721110)))

(assert (=> bs!1109366 (= (= lt!1885978 lt!1886278) (= lambda!215262 lambda!215251))))

(declare-fun bs!1109367 () Bool)

(assert (= bs!1109367 (and b!4721178 b!4721115)))

(assert (=> bs!1109367 (= (= lt!1885978 lt!1886299) (= lambda!215262 lambda!215255))))

(declare-fun bs!1109368 () Bool)

(assert (= bs!1109368 (and b!4721178 b!4721173)))

(assert (=> bs!1109368 (= lambda!215262 lambda!215258)))

(declare-fun bs!1109369 () Bool)

(assert (= bs!1109369 (and b!4721178 d!1502885)))

(assert (=> bs!1109369 (= (= lt!1885978 lt!1886270) (= lambda!215262 lambda!215252))))

(assert (=> bs!1109364 (= (= lt!1885978 lt!1886352) (= lambda!215262 lambda!215260))))

(assert (=> bs!1109367 (= lambda!215262 lambda!215254)))

(declare-fun bs!1109370 () Bool)

(assert (= bs!1109370 (and b!4721178 b!4721039)))

(assert (=> bs!1109370 (= (= lt!1885978 lt!1886214) (= lambda!215262 lambda!215237))))

(declare-fun bs!1109371 () Bool)

(assert (= bs!1109371 (and b!4721178 b!4721035)))

(assert (=> bs!1109371 (= lambda!215262 lambda!215235)))

(declare-fun bs!1109372 () Bool)

(assert (= bs!1109372 (and b!4721178 d!1502825)))

(assert (=> bs!1109372 (= (= lt!1885978 lt!1886206) (= lambda!215262 lambda!215238))))

(assert (=> bs!1109370 (= lambda!215262 lambda!215236)))

(assert (=> bs!1109366 (= lambda!215262 lambda!215250)))

(declare-fun bs!1109373 () Bool)

(assert (= bs!1109373 (and b!4721178 d!1502871)))

(assert (=> bs!1109373 (not (= lambda!215262 lambda!215245))))

(declare-fun bs!1109374 () Bool)

(assert (= bs!1109374 (and b!4721178 b!4721111)))

(assert (=> bs!1109374 (= lambda!215262 lambda!215253)))

(declare-fun bs!1109375 () Bool)

(assert (= bs!1109375 (and b!4721178 b!4721106)))

(assert (=> bs!1109375 (= lambda!215262 lambda!215249)))

(assert (=> b!4721178 true))

(declare-fun bs!1109376 () Bool)

(declare-fun b!4721182 () Bool)

(assert (= bs!1109376 (and b!4721182 d!1502909)))

(declare-fun lambda!215263 () Int)

(assert (=> bs!1109376 (= (= lt!1885978 lt!1886344) (= lambda!215263 lambda!215261))))

(declare-fun bs!1109377 () Bool)

(assert (= bs!1109377 (and b!4721182 b!4721177)))

(assert (=> bs!1109377 (= lambda!215263 lambda!215259)))

(declare-fun bs!1109378 () Bool)

(assert (= bs!1109378 (and b!4721182 d!1502889)))

(assert (=> bs!1109378 (= (= lt!1885978 lt!1886291) (= lambda!215263 lambda!215256))))

(declare-fun bs!1109379 () Bool)

(assert (= bs!1109379 (and b!4721182 b!4721110)))

(assert (=> bs!1109379 (= (= lt!1885978 lt!1886278) (= lambda!215263 lambda!215251))))

(declare-fun bs!1109380 () Bool)

(assert (= bs!1109380 (and b!4721182 b!4721115)))

(assert (=> bs!1109380 (= (= lt!1885978 lt!1886299) (= lambda!215263 lambda!215255))))

(declare-fun bs!1109381 () Bool)

(assert (= bs!1109381 (and b!4721182 b!4721178)))

(assert (=> bs!1109381 (= lambda!215263 lambda!215262)))

(declare-fun bs!1109382 () Bool)

(assert (= bs!1109382 (and b!4721182 b!4721173)))

(assert (=> bs!1109382 (= lambda!215263 lambda!215258)))

(declare-fun bs!1109383 () Bool)

(assert (= bs!1109383 (and b!4721182 d!1502885)))

(assert (=> bs!1109383 (= (= lt!1885978 lt!1886270) (= lambda!215263 lambda!215252))))

(assert (=> bs!1109377 (= (= lt!1885978 lt!1886352) (= lambda!215263 lambda!215260))))

(assert (=> bs!1109380 (= lambda!215263 lambda!215254)))

(declare-fun bs!1109384 () Bool)

(assert (= bs!1109384 (and b!4721182 b!4721039)))

(assert (=> bs!1109384 (= (= lt!1885978 lt!1886214) (= lambda!215263 lambda!215237))))

(declare-fun bs!1109385 () Bool)

(assert (= bs!1109385 (and b!4721182 b!4721035)))

(assert (=> bs!1109385 (= lambda!215263 lambda!215235)))

(declare-fun bs!1109386 () Bool)

(assert (= bs!1109386 (and b!4721182 d!1502825)))

(assert (=> bs!1109386 (= (= lt!1885978 lt!1886206) (= lambda!215263 lambda!215238))))

(assert (=> bs!1109384 (= lambda!215263 lambda!215236)))

(assert (=> bs!1109379 (= lambda!215263 lambda!215250)))

(declare-fun bs!1109387 () Bool)

(assert (= bs!1109387 (and b!4721182 d!1502871)))

(assert (=> bs!1109387 (not (= lambda!215263 lambda!215245))))

(declare-fun bs!1109388 () Bool)

(assert (= bs!1109388 (and b!4721182 b!4721111)))

(assert (=> bs!1109388 (= lambda!215263 lambda!215253)))

(declare-fun bs!1109389 () Bool)

(assert (= bs!1109389 (and b!4721182 b!4721106)))

(assert (=> bs!1109389 (= lambda!215263 lambda!215249)))

(assert (=> b!4721182 true))

(declare-fun lambda!215264 () Int)

(declare-fun lt!1886373 () ListMap!5273)

(assert (=> bs!1109376 (= (= lt!1886373 lt!1886344) (= lambda!215264 lambda!215261))))

(assert (=> bs!1109377 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215259))))

(assert (=> bs!1109378 (= (= lt!1886373 lt!1886291) (= lambda!215264 lambda!215256))))

(assert (=> bs!1109379 (= (= lt!1886373 lt!1886278) (= lambda!215264 lambda!215251))))

(assert (=> bs!1109380 (= (= lt!1886373 lt!1886299) (= lambda!215264 lambda!215255))))

(assert (=> bs!1109381 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215262))))

(assert (=> b!4721182 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215263))))

(assert (=> bs!1109382 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215258))))

(assert (=> bs!1109383 (= (= lt!1886373 lt!1886270) (= lambda!215264 lambda!215252))))

(assert (=> bs!1109377 (= (= lt!1886373 lt!1886352) (= lambda!215264 lambda!215260))))

(assert (=> bs!1109380 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215254))))

(assert (=> bs!1109384 (= (= lt!1886373 lt!1886214) (= lambda!215264 lambda!215237))))

(assert (=> bs!1109385 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215235))))

(assert (=> bs!1109386 (= (= lt!1886373 lt!1886206) (= lambda!215264 lambda!215238))))

(assert (=> bs!1109384 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215236))))

(assert (=> bs!1109379 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215250))))

(assert (=> bs!1109387 (not (= lambda!215264 lambda!215245))))

(assert (=> bs!1109388 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215253))))

(assert (=> bs!1109389 (= (= lt!1886373 lt!1885978) (= lambda!215264 lambda!215249))))

(assert (=> b!4721182 true))

(declare-fun bs!1109390 () Bool)

(declare-fun d!1502911 () Bool)

(assert (= bs!1109390 (and d!1502911 b!4721177)))

(declare-fun lambda!215265 () Int)

(declare-fun lt!1886365 () ListMap!5273)

(assert (=> bs!1109390 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215259))))

(declare-fun bs!1109391 () Bool)

(assert (= bs!1109391 (and d!1502911 d!1502889)))

(assert (=> bs!1109391 (= (= lt!1886365 lt!1886291) (= lambda!215265 lambda!215256))))

(declare-fun bs!1109392 () Bool)

(assert (= bs!1109392 (and d!1502911 b!4721110)))

(assert (=> bs!1109392 (= (= lt!1886365 lt!1886278) (= lambda!215265 lambda!215251))))

(declare-fun bs!1109393 () Bool)

(assert (= bs!1109393 (and d!1502911 b!4721115)))

(assert (=> bs!1109393 (= (= lt!1886365 lt!1886299) (= lambda!215265 lambda!215255))))

(declare-fun bs!1109394 () Bool)

(assert (= bs!1109394 (and d!1502911 b!4721178)))

(assert (=> bs!1109394 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215262))))

(declare-fun bs!1109395 () Bool)

(assert (= bs!1109395 (and d!1502911 b!4721182)))

(assert (=> bs!1109395 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215263))))

(declare-fun bs!1109396 () Bool)

(assert (= bs!1109396 (and d!1502911 b!4721173)))

(assert (=> bs!1109396 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215258))))

(declare-fun bs!1109397 () Bool)

(assert (= bs!1109397 (and d!1502911 d!1502885)))

(assert (=> bs!1109397 (= (= lt!1886365 lt!1886270) (= lambda!215265 lambda!215252))))

(assert (=> bs!1109390 (= (= lt!1886365 lt!1886352) (= lambda!215265 lambda!215260))))

(assert (=> bs!1109393 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215254))))

(declare-fun bs!1109398 () Bool)

(assert (= bs!1109398 (and d!1502911 b!4721039)))

(assert (=> bs!1109398 (= (= lt!1886365 lt!1886214) (= lambda!215265 lambda!215237))))

(declare-fun bs!1109399 () Bool)

(assert (= bs!1109399 (and d!1502911 b!4721035)))

(assert (=> bs!1109399 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215235))))

(declare-fun bs!1109400 () Bool)

(assert (= bs!1109400 (and d!1502911 d!1502825)))

(assert (=> bs!1109400 (= (= lt!1886365 lt!1886206) (= lambda!215265 lambda!215238))))

(assert (=> bs!1109398 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215236))))

(assert (=> bs!1109395 (= (= lt!1886365 lt!1886373) (= lambda!215265 lambda!215264))))

(declare-fun bs!1109401 () Bool)

(assert (= bs!1109401 (and d!1502911 d!1502909)))

(assert (=> bs!1109401 (= (= lt!1886365 lt!1886344) (= lambda!215265 lambda!215261))))

(assert (=> bs!1109392 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215250))))

(declare-fun bs!1109402 () Bool)

(assert (= bs!1109402 (and d!1502911 d!1502871)))

(assert (=> bs!1109402 (not (= lambda!215265 lambda!215245))))

(declare-fun bs!1109403 () Bool)

(assert (= bs!1109403 (and d!1502911 b!4721111)))

(assert (=> bs!1109403 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215253))))

(declare-fun bs!1109404 () Bool)

(assert (= bs!1109404 (and d!1502911 b!4721106)))

(assert (=> bs!1109404 (= (= lt!1886365 lt!1885978) (= lambda!215265 lambda!215249))))

(assert (=> d!1502911 true))

(declare-fun call!330145 () Bool)

(declare-fun c!806279 () Bool)

(declare-fun bm!330140 () Bool)

(assert (=> bm!330140 (= call!330145 (forall!11580 (toList!5909 lt!1885978) (ite c!806279 lambda!215262 lambda!215264)))))

(declare-fun e!2944395 () ListMap!5273)

(assert (=> b!4721178 (= e!2944395 lt!1885978)))

(declare-fun lt!1886371 () Unit!129632)

(declare-fun call!330146 () Unit!129632)

(assert (=> b!4721178 (= lt!1886371 call!330146)))

(declare-fun call!330147 () Bool)

(assert (=> b!4721178 call!330147))

(declare-fun lt!1886366 () Unit!129632)

(assert (=> b!4721178 (= lt!1886366 lt!1886371)))

(assert (=> b!4721178 call!330145))

(declare-fun lt!1886372 () Unit!129632)

(declare-fun Unit!129737 () Unit!129632)

(assert (=> b!4721178 (= lt!1886372 Unit!129737)))

(declare-fun b!4721179 () Bool)

(declare-fun res!1997179 () Bool)

(declare-fun e!2944393 () Bool)

(assert (=> b!4721179 (=> (not res!1997179) (not e!2944393))))

(assert (=> b!4721179 (= res!1997179 (forall!11580 (toList!5909 lt!1885978) lambda!215265))))

(declare-fun b!4721180 () Bool)

(declare-fun e!2944394 () Bool)

(assert (=> b!4721180 (= e!2944394 (forall!11580 (toList!5909 lt!1885978) lambda!215264))))

(declare-fun b!4721181 () Bool)

(assert (=> b!4721181 (= e!2944393 (invariantList!1507 (toList!5909 lt!1886365)))))

(declare-fun bm!330141 () Bool)

(declare-fun lt!1886376 () ListMap!5273)

(assert (=> bm!330141 (= call!330147 (forall!11580 (ite c!806279 (toList!5909 lt!1885978) (toList!5909 lt!1886376)) (ite c!806279 lambda!215262 lambda!215264)))))

(assert (=> d!1502911 e!2944393))

(declare-fun res!1997180 () Bool)

(assert (=> d!1502911 (=> (not res!1997180) (not e!2944393))))

(assert (=> d!1502911 (= res!1997180 (forall!11580 lt!1885981 lambda!215265))))

(assert (=> d!1502911 (= lt!1886365 e!2944395)))

(assert (=> d!1502911 (= c!806279 ((_ is Nil!52818) lt!1885981))))

(assert (=> d!1502911 (noDuplicateKeys!2010 lt!1885981)))

(assert (=> d!1502911 (= (addToMapMapFromBucket!1440 lt!1885981 lt!1885978) lt!1886365)))

(assert (=> b!4721182 (= e!2944395 lt!1886373)))

(assert (=> b!4721182 (= lt!1886376 (+!2265 lt!1885978 (h!59161 lt!1885981)))))

(assert (=> b!4721182 (= lt!1886373 (addToMapMapFromBucket!1440 (t!360202 lt!1885981) (+!2265 lt!1885978 (h!59161 lt!1885981))))))

(declare-fun lt!1886361 () Unit!129632)

(assert (=> b!4721182 (= lt!1886361 call!330146)))

(assert (=> b!4721182 (forall!11580 (toList!5909 lt!1885978) lambda!215263)))

(declare-fun lt!1886375 () Unit!129632)

(assert (=> b!4721182 (= lt!1886375 lt!1886361)))

(assert (=> b!4721182 (forall!11580 (toList!5909 lt!1886376) lambda!215264)))

(declare-fun lt!1886374 () Unit!129632)

(declare-fun Unit!129738 () Unit!129632)

(assert (=> b!4721182 (= lt!1886374 Unit!129738)))

(assert (=> b!4721182 (forall!11580 (t!360202 lt!1885981) lambda!215264)))

(declare-fun lt!1886377 () Unit!129632)

(declare-fun Unit!129739 () Unit!129632)

(assert (=> b!4721182 (= lt!1886377 Unit!129739)))

(declare-fun lt!1886367 () Unit!129632)

(declare-fun Unit!129740 () Unit!129632)

(assert (=> b!4721182 (= lt!1886367 Unit!129740)))

(declare-fun lt!1886378 () Unit!129632)

(assert (=> b!4721182 (= lt!1886378 (forallContained!3633 (toList!5909 lt!1886376) lambda!215264 (h!59161 lt!1885981)))))

(assert (=> b!4721182 (contains!16162 lt!1886376 (_1!30511 (h!59161 lt!1885981)))))

(declare-fun lt!1886379 () Unit!129632)

(declare-fun Unit!129741 () Unit!129632)

(assert (=> b!4721182 (= lt!1886379 Unit!129741)))

(assert (=> b!4721182 (contains!16162 lt!1886373 (_1!30511 (h!59161 lt!1885981)))))

(declare-fun lt!1886380 () Unit!129632)

(declare-fun Unit!129742 () Unit!129632)

(assert (=> b!4721182 (= lt!1886380 Unit!129742)))

(assert (=> b!4721182 (forall!11580 lt!1885981 lambda!215264)))

(declare-fun lt!1886368 () Unit!129632)

(declare-fun Unit!129743 () Unit!129632)

(assert (=> b!4721182 (= lt!1886368 Unit!129743)))

(assert (=> b!4721182 call!330147))

(declare-fun lt!1886364 () Unit!129632)

(declare-fun Unit!129744 () Unit!129632)

(assert (=> b!4721182 (= lt!1886364 Unit!129744)))

(declare-fun lt!1886369 () Unit!129632)

(declare-fun Unit!129745 () Unit!129632)

(assert (=> b!4721182 (= lt!1886369 Unit!129745)))

(declare-fun lt!1886370 () Unit!129632)

(assert (=> b!4721182 (= lt!1886370 (addForallContainsKeyThenBeforeAdding!792 lt!1885978 lt!1886373 (_1!30511 (h!59161 lt!1885981)) (_2!30511 (h!59161 lt!1885981))))))

(assert (=> b!4721182 (forall!11580 (toList!5909 lt!1885978) lambda!215264)))

(declare-fun lt!1886363 () Unit!129632)

(assert (=> b!4721182 (= lt!1886363 lt!1886370)))

(assert (=> b!4721182 call!330145))

(declare-fun lt!1886362 () Unit!129632)

(declare-fun Unit!129746 () Unit!129632)

(assert (=> b!4721182 (= lt!1886362 Unit!129746)))

(declare-fun res!1997181 () Bool)

(assert (=> b!4721182 (= res!1997181 (forall!11580 lt!1885981 lambda!215264))))

(assert (=> b!4721182 (=> (not res!1997181) (not e!2944394))))

(assert (=> b!4721182 e!2944394))

(declare-fun lt!1886381 () Unit!129632)

(declare-fun Unit!129747 () Unit!129632)

(assert (=> b!4721182 (= lt!1886381 Unit!129747)))

(declare-fun bm!330142 () Bool)

(assert (=> bm!330142 (= call!330146 (lemmaContainsAllItsOwnKeys!793 lt!1885978))))

(assert (= (and d!1502911 c!806279) b!4721178))

(assert (= (and d!1502911 (not c!806279)) b!4721182))

(assert (= (and b!4721182 res!1997181) b!4721180))

(assert (= (or b!4721178 b!4721182) bm!330142))

(assert (= (or b!4721178 b!4721182) bm!330141))

(assert (= (or b!4721178 b!4721182) bm!330140))

(assert (= (and d!1502911 res!1997180) b!4721179))

(assert (= (and b!4721179 res!1997179) b!4721181))

(declare-fun m!5655249 () Bool)

(assert (=> b!4721180 m!5655249))

(declare-fun m!5655251 () Bool)

(assert (=> b!4721181 m!5655251))

(declare-fun m!5655253 () Bool)

(assert (=> d!1502911 m!5655253))

(assert (=> d!1502911 m!5655089))

(assert (=> bm!330142 m!5654995))

(declare-fun m!5655255 () Bool)

(assert (=> b!4721179 m!5655255))

(declare-fun m!5655257 () Bool)

(assert (=> bm!330141 m!5655257))

(declare-fun m!5655259 () Bool)

(assert (=> b!4721182 m!5655259))

(declare-fun m!5655261 () Bool)

(assert (=> b!4721182 m!5655261))

(declare-fun m!5655263 () Bool)

(assert (=> b!4721182 m!5655263))

(declare-fun m!5655265 () Bool)

(assert (=> b!4721182 m!5655265))

(declare-fun m!5655267 () Bool)

(assert (=> b!4721182 m!5655267))

(assert (=> b!4721182 m!5655249))

(declare-fun m!5655269 () Bool)

(assert (=> b!4721182 m!5655269))

(declare-fun m!5655271 () Bool)

(assert (=> b!4721182 m!5655271))

(declare-fun m!5655273 () Bool)

(assert (=> b!4721182 m!5655273))

(assert (=> b!4721182 m!5655259))

(assert (=> b!4721182 m!5655261))

(declare-fun m!5655275 () Bool)

(assert (=> b!4721182 m!5655275))

(declare-fun m!5655277 () Bool)

(assert (=> b!4721182 m!5655277))

(declare-fun m!5655279 () Bool)

(assert (=> bm!330140 m!5655279))

(assert (=> b!4720914 d!1502911))

(declare-fun d!1502913 () Bool)

(assert (=> d!1502913 (= (head!10242 (toList!5910 lm!2023)) (h!59162 (toList!5910 lm!2023)))))

(assert (=> b!4720925 d!1502913))

(declare-fun d!1502915 () Bool)

(declare-fun res!1997182 () Bool)

(declare-fun e!2944396 () Bool)

(assert (=> d!1502915 (=> res!1997182 e!2944396)))

(assert (=> d!1502915 (= res!1997182 ((_ is Nil!52819) (toList!5910 lm!2023)))))

(assert (=> d!1502915 (= (forall!11578 (toList!5910 lm!2023) lambda!215146) e!2944396)))

(declare-fun b!4721183 () Bool)

(declare-fun e!2944397 () Bool)

(assert (=> b!4721183 (= e!2944396 e!2944397)))

(declare-fun res!1997183 () Bool)

(assert (=> b!4721183 (=> (not res!1997183) (not e!2944397))))

(assert (=> b!4721183 (= res!1997183 (dynLambda!21814 lambda!215146 (h!59162 (toList!5910 lm!2023))))))

(declare-fun b!4721184 () Bool)

(assert (=> b!4721184 (= e!2944397 (forall!11578 (t!360203 (toList!5910 lm!2023)) lambda!215146))))

(assert (= (and d!1502915 (not res!1997182)) b!4721183))

(assert (= (and b!4721183 res!1997183) b!4721184))

(declare-fun b_lambda!178315 () Bool)

(assert (=> (not b_lambda!178315) (not b!4721183)))

(declare-fun m!5655281 () Bool)

(assert (=> b!4721183 m!5655281))

(declare-fun m!5655283 () Bool)

(assert (=> b!4721184 m!5655283))

(assert (=> start!480492 d!1502915))

(declare-fun d!1502917 () Bool)

(declare-fun isStrictlySorted!746 (List!52943) Bool)

(assert (=> d!1502917 (= (inv!68049 lm!2023) (isStrictlySorted!746 (toList!5910 lm!2023)))))

(declare-fun bs!1109405 () Bool)

(assert (= bs!1109405 d!1502917))

(declare-fun m!5655285 () Bool)

(assert (=> bs!1109405 m!5655285))

(assert (=> start!480492 d!1502917))

(declare-fun bs!1109406 () Bool)

(declare-fun d!1502919 () Bool)

(assert (= bs!1109406 (and d!1502919 start!480492)))

(declare-fun lambda!215266 () Int)

(assert (=> bs!1109406 (= lambda!215266 lambda!215146)))

(declare-fun bs!1109407 () Bool)

(assert (= bs!1109407 (and d!1502919 d!1502861)))

(assert (=> bs!1109407 (= lambda!215266 lambda!215242)))

(declare-fun bs!1109408 () Bool)

(assert (= bs!1109408 (and d!1502919 d!1502873)))

(assert (=> bs!1109408 (not (= lambda!215266 lambda!215248))))

(declare-fun bs!1109409 () Bool)

(assert (= bs!1109409 (and d!1502919 d!1502901)))

(assert (=> bs!1109409 (= lambda!215266 lambda!215257)))

(declare-fun lt!1886382 () ListMap!5273)

(assert (=> d!1502919 (invariantList!1507 (toList!5909 lt!1886382))))

(declare-fun e!2944398 () ListMap!5273)

(assert (=> d!1502919 (= lt!1886382 e!2944398)))

(declare-fun c!806280 () Bool)

(assert (=> d!1502919 (= c!806280 ((_ is Cons!52819) (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023)))))))

(assert (=> d!1502919 (forall!11578 (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023))) lambda!215266)))

(assert (=> d!1502919 (= (extractMap!2036 (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023)))) lt!1886382)))

(declare-fun b!4721185 () Bool)

(assert (=> b!4721185 (= e!2944398 (addToMapMapFromBucket!1440 (_2!30512 (h!59162 (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023))))) (extractMap!2036 (t!360203 (Cons!52819 (tuple2!54437 hash!405 newBucket!218) (t!360203 (toList!5910 lm!2023)))))))))

(declare-fun b!4721186 () Bool)

(assert (=> b!4721186 (= e!2944398 (ListMap!5274 Nil!52818))))

(assert (= (and d!1502919 c!806280) b!4721185))

(assert (= (and d!1502919 (not c!806280)) b!4721186))

(declare-fun m!5655287 () Bool)

(assert (=> d!1502919 m!5655287))

(declare-fun m!5655289 () Bool)

(assert (=> d!1502919 m!5655289))

(declare-fun m!5655291 () Bool)

(assert (=> b!4721185 m!5655291))

(assert (=> b!4721185 m!5655291))

(declare-fun m!5655293 () Bool)

(assert (=> b!4721185 m!5655293))

(assert (=> b!4720915 d!1502919))

(declare-fun bs!1109410 () Bool)

(declare-fun d!1502921 () Bool)

(assert (= bs!1109410 (and d!1502921 d!1502873)))

(declare-fun lambda!215267 () Int)

(assert (=> bs!1109410 (not (= lambda!215267 lambda!215248))))

(declare-fun bs!1109411 () Bool)

(assert (= bs!1109411 (and d!1502921 d!1502901)))

(assert (=> bs!1109411 (= lambda!215267 lambda!215257)))

(declare-fun bs!1109412 () Bool)

(assert (= bs!1109412 (and d!1502921 d!1502919)))

(assert (=> bs!1109412 (= lambda!215267 lambda!215266)))

(declare-fun bs!1109413 () Bool)

(assert (= bs!1109413 (and d!1502921 d!1502861)))

(assert (=> bs!1109413 (= lambda!215267 lambda!215242)))

(declare-fun bs!1109414 () Bool)

(assert (= bs!1109414 (and d!1502921 start!480492)))

(assert (=> bs!1109414 (= lambda!215267 lambda!215146)))

(declare-fun lt!1886383 () ListMap!5273)

(assert (=> d!1502921 (invariantList!1507 (toList!5909 lt!1886383))))

(declare-fun e!2944399 () ListMap!5273)

(assert (=> d!1502921 (= lt!1886383 e!2944399)))

(declare-fun c!806281 () Bool)

(assert (=> d!1502921 (= c!806281 ((_ is Cons!52819) lt!1885985))))

(assert (=> d!1502921 (forall!11578 lt!1885985 lambda!215267)))

(assert (=> d!1502921 (= (extractMap!2036 lt!1885985) lt!1886383)))

(declare-fun b!4721187 () Bool)

(assert (=> b!4721187 (= e!2944399 (addToMapMapFromBucket!1440 (_2!30512 (h!59162 lt!1885985)) (extractMap!2036 (t!360203 lt!1885985))))))

(declare-fun b!4721188 () Bool)

(assert (=> b!4721188 (= e!2944399 (ListMap!5274 Nil!52818))))

(assert (= (and d!1502921 c!806281) b!4721187))

(assert (= (and d!1502921 (not c!806281)) b!4721188))

(declare-fun m!5655295 () Bool)

(assert (=> d!1502921 m!5655295))

(declare-fun m!5655297 () Bool)

(assert (=> d!1502921 m!5655297))

(declare-fun m!5655299 () Bool)

(assert (=> b!4721187 m!5655299))

(assert (=> b!4721187 m!5655299))

(declare-fun m!5655301 () Bool)

(assert (=> b!4721187 m!5655301))

(assert (=> b!4720915 d!1502921))

(declare-fun bs!1109415 () Bool)

(declare-fun d!1502923 () Bool)

(assert (= bs!1109415 (and d!1502923 b!4721177)))

(declare-fun lambda!215268 () Int)

(assert (=> bs!1109415 (not (= lambda!215268 lambda!215259))))

(declare-fun bs!1109416 () Bool)

(assert (= bs!1109416 (and d!1502923 d!1502889)))

(assert (=> bs!1109416 (not (= lambda!215268 lambda!215256))))

(declare-fun bs!1109417 () Bool)

(assert (= bs!1109417 (and d!1502923 b!4721110)))

(assert (=> bs!1109417 (not (= lambda!215268 lambda!215251))))

(declare-fun bs!1109418 () Bool)

(assert (= bs!1109418 (and d!1502923 b!4721115)))

(assert (=> bs!1109418 (not (= lambda!215268 lambda!215255))))

(declare-fun bs!1109419 () Bool)

(assert (= bs!1109419 (and d!1502923 b!4721178)))

(assert (=> bs!1109419 (not (= lambda!215268 lambda!215262))))

(declare-fun bs!1109420 () Bool)

(assert (= bs!1109420 (and d!1502923 b!4721182)))

(assert (=> bs!1109420 (not (= lambda!215268 lambda!215263))))

(declare-fun bs!1109421 () Bool)

(assert (= bs!1109421 (and d!1502923 b!4721173)))

(assert (=> bs!1109421 (not (= lambda!215268 lambda!215258))))

(declare-fun bs!1109422 () Bool)

(assert (= bs!1109422 (and d!1502923 d!1502885)))

(assert (=> bs!1109422 (not (= lambda!215268 lambda!215252))))

(assert (=> bs!1109415 (not (= lambda!215268 lambda!215260))))

(assert (=> bs!1109418 (not (= lambda!215268 lambda!215254))))

(declare-fun bs!1109423 () Bool)

(assert (= bs!1109423 (and d!1502923 b!4721039)))

(assert (=> bs!1109423 (not (= lambda!215268 lambda!215237))))

(declare-fun bs!1109424 () Bool)

(assert (= bs!1109424 (and d!1502923 b!4721035)))

(assert (=> bs!1109424 (not (= lambda!215268 lambda!215235))))

(declare-fun bs!1109425 () Bool)

(assert (= bs!1109425 (and d!1502923 d!1502825)))

(assert (=> bs!1109425 (not (= lambda!215268 lambda!215238))))

(assert (=> bs!1109423 (not (= lambda!215268 lambda!215236))))

(assert (=> bs!1109420 (not (= lambda!215268 lambda!215264))))

(declare-fun bs!1109426 () Bool)

(assert (= bs!1109426 (and d!1502923 d!1502909)))

(assert (=> bs!1109426 (not (= lambda!215268 lambda!215261))))

(assert (=> bs!1109417 (not (= lambda!215268 lambda!215250))))

(declare-fun bs!1109427 () Bool)

(assert (= bs!1109427 (and d!1502923 d!1502911)))

(assert (=> bs!1109427 (not (= lambda!215268 lambda!215265))))

(declare-fun bs!1109428 () Bool)

(assert (= bs!1109428 (and d!1502923 d!1502871)))

(assert (=> bs!1109428 (= lambda!215268 lambda!215245)))

(declare-fun bs!1109429 () Bool)

(assert (= bs!1109429 (and d!1502923 b!4721111)))

(assert (=> bs!1109429 (not (= lambda!215268 lambda!215253))))

(declare-fun bs!1109430 () Bool)

(assert (= bs!1109430 (and d!1502923 b!4721106)))

(assert (=> bs!1109430 (not (= lambda!215268 lambda!215249))))

(assert (=> d!1502923 true))

(assert (=> d!1502923 true))

(assert (=> d!1502923 (= (allKeysSameHash!1836 newBucket!218 hash!405 hashF!1323) (forall!11580 newBucket!218 lambda!215268))))

(declare-fun bs!1109431 () Bool)

(assert (= bs!1109431 d!1502923))

(declare-fun m!5655303 () Bool)

(assert (=> bs!1109431 m!5655303))

(assert (=> b!4720926 d!1502923))

(declare-fun b!4721193 () Bool)

(declare-fun e!2944402 () Bool)

(declare-fun tp!1348336 () Bool)

(declare-fun tp!1348337 () Bool)

(assert (=> b!4721193 (= e!2944402 (and tp!1348336 tp!1348337))))

(assert (=> b!4720918 (= tp!1348320 e!2944402)))

(assert (= (and b!4720918 ((_ is Cons!52819) (toList!5910 lm!2023))) b!4721193))

(declare-fun b!4721198 () Bool)

(declare-fun e!2944405 () Bool)

(declare-fun tp!1348340 () Bool)

(assert (=> b!4721198 (= e!2944405 (and tp_is_empty!31333 tp_is_empty!31335 tp!1348340))))

(assert (=> b!4720924 (= tp!1348319 e!2944405)))

(assert (= (and b!4720924 ((_ is Cons!52818) (t!360202 oldBucket!34))) b!4721198))

(declare-fun b!4721199 () Bool)

(declare-fun tp!1348341 () Bool)

(declare-fun e!2944406 () Bool)

(assert (=> b!4721199 (= e!2944406 (and tp_is_empty!31333 tp_is_empty!31335 tp!1348341))))

(assert (=> b!4720910 (= tp!1348321 e!2944406)))

(assert (= (and b!4720910 ((_ is Cons!52818) (t!360202 newBucket!218))) b!4721199))

(declare-fun b_lambda!178317 () Bool)

(assert (= b_lambda!178313 (or start!480492 b_lambda!178317)))

(declare-fun bs!1109432 () Bool)

(declare-fun d!1502925 () Bool)

(assert (= bs!1109432 (and d!1502925 start!480492)))

(assert (=> bs!1109432 (= (dynLambda!21814 lambda!215146 (h!59162 lt!1885985)) (noDuplicateKeys!2010 (_2!30512 (h!59162 lt!1885985))))))

(declare-fun m!5655305 () Bool)

(assert (=> bs!1109432 m!5655305))

(assert (=> b!4721098 d!1502925))

(declare-fun b_lambda!178319 () Bool)

(assert (= b_lambda!178315 (or start!480492 b_lambda!178319)))

(declare-fun bs!1109433 () Bool)

(declare-fun d!1502927 () Bool)

(assert (= bs!1109433 (and d!1502927 start!480492)))

(assert (=> bs!1109433 (= (dynLambda!21814 lambda!215146 (h!59162 (toList!5910 lm!2023))) (noDuplicateKeys!2010 (_2!30512 (h!59162 (toList!5910 lm!2023)))))))

(assert (=> bs!1109433 m!5654993))

(assert (=> b!4721183 d!1502927))

(check-sat (not b!4721114) (not b!4721157) (not b!4721036) tp_is_empty!31333 (not b!4721187) (not d!1502873) (not d!1502919) (not b!4721110) (not b!4721159) (not b!4721175) (not b_lambda!178317) (not bs!1109433) (not b!4721038) (not b!4721108) (not d!1502887) (not b!4721125) (not bm!330132) (not d!1502885) (not b!4721122) (not d!1502861) (not bm!330137) (not b!4721181) (not b!4721109) (not d!1502903) (not d!1502917) (not d!1502923) (not d!1502879) (not b!4721176) (not b!4721116) (not b!4721171) (not bm!330140) (not b!4721150) (not bs!1109432) (not b!4721104) (not b!4721131) (not bm!330136) (not d!1502921) (not d!1502869) (not b!4721198) (not b!4721151) (not bm!330141) tp_is_empty!31335 (not bm!330124) (not d!1502877) (not b!4721199) (not b!4721086) (not d!1502891) (not b!4721099) (not b!4721153) (not bm!330122) (not d!1502901) (not b!4721039) (not bm!330130) (not b!4721174) (not bm!330133) (not bm!330123) (not b!4721123) (not d!1502899) (not b!4721180) (not b!4721105) (not b!4721185) (not b!4721154) (not b!4721152) (not d!1502889) (not bm!330138) (not bm!330128) (not b!4721112) (not b!4721179) (not bm!330129) (not d!1502825) (not d!1502911) (not bm!330131) (not d!1502871) (not b!4721182) (not bm!330142) (not b!4721113) (not b!4721177) (not b!4721037) (not b!4721193) (not b!4721107) (not b!4721124) (not b!4721184) (not b!4721115) (not b!4721155) (not d!1502905) (not d!1502883) (not b!4721117) (not bm!330139) (not d!1502909) (not b_lambda!178319))
(check-sat)
